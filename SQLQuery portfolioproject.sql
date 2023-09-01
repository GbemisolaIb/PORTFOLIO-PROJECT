--select *
--from [PORTFOLIO PROJECT]..CovidDeaths$

--select location, date, total_cases, total_deaths
--from [PORTFOLIO PROJECT]..CovidDeaths

--alter table coviddeaths$
--alter column total_cases bigint

--alter table coviddeaths$
--alter column total_deaths bigint 

select *
from CovidDeaths$

select location, date, total_cases, total_deaths, 
(cast(total_deaths as float))/ (cast(total_cases as float)) * 100 as percentageInPop
from [PORTFOLIO PROJECT]..CovidDeaths$ 
--where location like 'nig%ia%'
order by 1,2 


select location, max(total_cases) as HighestCaseCount, population, 
max(cast(total_cases as float))/ (cast(population as float)) * 100 as maxPercentageInPop
from [PORTFOLIO PROJECT]..CovidDeaths$ 
--where location like 'nig%ia%'
group by location, population
order by 4 desc

select sum(new_cases) Total_newcases, sum(new_deaths) Total_newdeaths, 
sum(cast(new_deaths as float))/ sum(cast(new_cases as float)) * 100 as DeathPercentage
--CASE 
--	WHEN new_deaths > 0 THEN ''
--	else 'null'
--	END 
from [PORTFOLIO PROJECT]..CovidDeaths$ 
where new_cases > 0 and new_deaths > 0
--group by date
--order by 1
 
 with PopVsVac (continent, location, date, population, new_vaccinations, RollingPeopleVacciated) 
 as 
 (
 select dts.continent, dts.location, dts.date, dts.population, vac.new_vaccinations,
 sum(cast ( vac.new_vaccinations as bigint))
 over (partition by vac.location order by vac.location, dts.date) as RollingPeopleVaccinated
 from CovidDeaths$ DTS join covidvaccinations Vac
 on dts.location = Vac.location and dts.date = Vac.date
 )

 select * -- (RollingPeopleVacciated/population) * 100 as newroll
 from PopVsVac

 create table #newtableforvac
 (continent nvarchar (255),
 location nvarchar(255),
 population numeric,
 new_vaccinations numeric,
 rollingpeoplevaccinated numeric)

 insert into #newtableforvac 
 select dts.continent, dts.location, dts.population, vac.new_vaccinations,
 sum(cast ( vac.new_vaccinations as bigint))
 over (partition by vac.location order by vac.location, dts.date) as RollingPeopleVaccinated
 from CovidDeaths$ DTS join covidvaccinations Vac
 on dts.location = Vac.location

 create view RollingPeopleVaccinated 
 as 
 select location, max(total_cases) as HighestCaseCount, population, 
max(cast(total_cases as float))/ (cast(population as float)) * 100 as maxPercentageInPop
from [PORTFOLIO PROJECT]..CovidDeaths$ 
--where location like 'nig%ia%'
group by location, population
--order by 4 desc


 --select vac.location, dts.date, vac.new_vaccinations, sum(cast ( vac.new_vaccinations as bigint)) Newsum
 --from CovidDeaths$ DTS join covidvaccinations Vac
 --on dts.location = Vac.location and dts.date = Vac.date
 --group by vac.location, dts.date, vac.new_vaccinations



