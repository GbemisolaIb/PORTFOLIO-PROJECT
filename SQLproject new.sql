select *
from [PORTFOLIO PROJECT]..employeesampledata
--where FullName = 'Raelynn Ma'

Alter table [PORTFOLIO PROJECT]..employeesampledata
add HiredateNew date

update [PORTFOLIO PROJECT]..employeesampledata
set HiredateNew = convert (date, hiredate)

ALter table [PORTFOLIO PROJECT]..employeesampledata
Drop column Hiredate

Select ExitDate, Convert (date, Exitdate)
from EmployeeSampleData

Alter table EmployeeSampleData 
Add ExitDate1 date

Update EmployeeSampleData 
Set ExitDate1 = Convert (date, Exitdate)

Alter table [PORTFOLIO PROJECT]..employeesampledata
Drop column Exitdate

--select *
--from employeesampledata a join 
--employeesampledata b on 
--a.employeeid = b.employeeid

select *
from EmployeeSampleData
order by 2

select [bonus %]
from EmployeeSampleData
where  [Bonus %] = 0

select [Bonus %], convert (varchar (50), [bonus %])
from EmployeeSampleData

update EmployeeSampleData
set [Bonus %] = convert (varchar (50), [bonus %])

select nullif ([bonus %], 0) as NewBonus
from EmployeeSampleData 

alter table employeesampledata
add Newbonus varchar(50)

update EmployeeSampleData
set Newbonus = nullif ([bonus %], 0) 

Alter table  employeesampledata
drop column [bonus %]

select *
from EmployeeSampleData a join EmployeeSampleData b 
on a.FullName = b.FullName
where a.[Bonus %] is not null

select *,
row_number () over 
	(partition by Jobtitle, 
			department, 
			BusinessUnit,
			Annualsalary,
			HiredateNew
	order by Fullname)
	row_num
from EmployeeSampleData
order by EmployeeID

select EmployeeId, Jobtitle, Gender, Age, Annualsalary
From employeesampledata
where Fullname = (select fullname 
	from EmployeeSampleData
	where FullName = 'Mila Allen')

select EmployeeID, Jobtitle, Department, Gender, Age, Annualsalary, count (Department)
over (partition by Department) NoOfStaffPerDepartment
from EmployeeSampleData
order by 7

select EmployeeID, Jobtitle, Department, Gender, Age, Annualsalary, avg(AnnualSalary)
over (partition by Age) AvgSalary
from EmployeeSampleData
order by 5

select a.Fullname, a.Jobtitle, b.Department, a.Gender, b.Age,
a.Annualsalary, (a.Annualsalary/b.age) AverageSalPerAge,
count(a.gender) UniqueGender
from EmployeeSampleData a join EmployeeSampleData b 
on a.FullName = b.FullName
group by a.gender, a.fullname, a.Jobtitle, b.Department, b.Age,a.Annualsalary
order by 1,5
 
select a.Fullname, a.Jobtitle, b.Department, a.Gender, b.Age,
a.Annualsalary, (a.Annualsalary/b.age) AverageSalPerAge,
count(a.gender) UniqueGender
from EmployeeSampleData a join EmployeeSampleData b 
on a.FullName = b.FullName
group by a.gender, a.fullname, a.Jobtitle, b.Department, b.Age,a.Annualsalary
order by 1,5

with AvgsalXbonus
(Fullname, Jobtitle, Department, NewBonus, Gender, Age, AnnualSalary, AverageSalPerAge)
as 
(select a.Fullname, a.Jobtitle, b.Department, a.newbonus, a.Gender, b.Age,
a.Annualsalary, (a.Annualsalary/b.age) AverageSalPerAge
from EmployeeSampleData a join EmployeeSampleData b 
on a.FullName = b.FullName
group by a.gender, a.fullname, a.Jobtitle, b.Department, b.Age,a.Annualsalary, a.newbonus
)

 select AverageSalPerAge * NewBonus
 From AvgsalXbonus

 select a.EmployeeID, a.fullname, b.jobtitle, b.country,a.AnnualSalary, 
 count (b.Country) over (partition by b.country) 
 from EmployeeSampleData a join EmployeeSampleData b 
 on a.FullName = b.FullName
 group by a.EmployeeID, a.fullname, b.jobtitle, b.country,a.AnnualSalary
 order by 5 desc