-- Data cleaning is the first step in analysis in sql
-- The first thing we'll be doing is to create a copy of the original data for preservation

select *
from company_layoffs.layoffs;

create table layoffs_copy
like layoffs;

insert layoffs_copy
select *
from layoffs;

select *
from layoffs_copy;

-- Identify duplicates and delete them

with duplicate_cte as (select *,
	row_number() over (partition by
		company,
		location,
		industry,
		total_laid_off,
		percentage_laid_off,
		date,
		stage,
		country,
		funds_raised_millions
	order by company) as row_num 
from layoffs_copy)
select *
from duplicate_cte
where row_num >1;

CREATE TABLE `layoffs_copy2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  row_num int 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

insert layoffs_copy2
select *,
	row_number() over (partition by
		company,
		location,
		industry,
		total_laid_off,
		percentage_laid_off,
		date,
		stage,
		country,
		funds_raised_millions
	order by company) as row_num 
from layoffs_copy;

delete 
from layoffs_copy2
where row_num > 1;

-- standardizing data by looking at each columns distinctly and fixing anomalies

select distinct(company),trim(company) companyname
from layoffs_copy2;

update layoffs_copy2
set company =trim(company);

select *
from layoffs_copy2;

select distinct(location)
from layoffs_copy2;

select distinct(country), trim(trailing '.' from country)
from layoffs_copy2
order by country asc;

select date, str_to_date(date, '%m/%d/%Y')
from layoffs_copy2;

update layoffs_copy2
set date = str_to_date(date, '%m/%d/%Y');

alter table layoffs_copy2
modify column date date;

-- null vales
select *
from layoffs_copy2
where industry is null or industry = '';

select *
from layoffs_copy2
where company = 'carvana';

update layoffs_copy2
set industry = null where industry = '';

select *
from layoffs_copy2 a1 join layoffs_copy2 a2 
on a1.company = a2.company 
and a1.location = a2.location
where a1.industry is null and a2.industry is not null;

update layoffs_copy2 a1 join layoffs_copy2 a2 
on a1.company = a2.company 
and a1.location = a2.location
set a1.industry = a2. industry
where a1.industry is null and a2.industry is not null;

select *
from layoffs_copy2
where company = "Bally's Interactive";
 
alter table layoffs_copy2
drop column row_num;

-- section 2: Analysis

select *
from layoffs_copy2;

-- To determine which country has the highest rate of job loss

select country, sum(total_laid_off) totaljobloss
from layoffs_copy2
group by country
order by sum(total_laid_off) desc;

-- view total job loss in nigeria 

select country, sum(total_laid_off) totaljobloss
from layoffs_copy2
where country like '%nig%'
group by country
order by sum(total_laid_off) desc;

-- number of years unemployed
select curdate();

select *
from layoffs_copy2;

-- total sum of people umemployed on a yearly basis 
select year(`date`), sum(total_laid_off)
from layoffs_copy2
group by year(`date`) 
order by year(`date`) desc;

-- to determine umployement rates per month and which month has the highest job loss 
SELECT 
    MONTH(`date`), SUM(total_laid_off)
FROM
    layoffs_copy2
GROUP BY MONTH(`date`)
ORDER BY SUM(total_laid_off) DESC;

select substring(`date`, 1,7) as 'monthyear', sum(total_laid_off)
from layoffs_copy2
group by monthyear
order by sum(total_laid_off) desc;

-- to determine 
select company, total_laid_off, country, date, datediff(curdate(), `date`)
from layoffs_copy2
where total_laid_off is not null;

-- to determine total loss, total revenue made despite the layoffs and calculate the percentage revenue made
--  due to job loss
with cte as 
(select company, sum(total_laid_off) as totallaidoff, sum(funds_raised_millions) as fundsraised
from layoffs_copy2
group by company
order by sum(total_laid_off) desc)
select sum(totallaidoff) as jobloss, sum(fundsraised) as revenue, 
		round((sum(totallaidoff)/sum(fundsraised)) * 100,2) as rev_percentage
from cte;

select company, sum(funds_raised_millions) funds, sum(total_laid_off)
from layoffs_copy2
where funds_raised_millions is not null
group by company
having sum(funds_raised_millions) > 1000 and sum(total_laid_off) <100
order by sum(funds_raised_millions) desc;

select company, max(total_laid_off), min(total_laid_off), sum(total_laid_off)
from layoffs_copy2
where total_laid_off is not null
group by company
