-- Data cleaning is a critical first step in the data analysis process, to ensure that the data is accurate, 
-- consistent, and reliable for further analysis or decision-making. In this project, we will focus on cleaning 
-- a dataset with various issues such as missing values, duplicates, inconsistent formats, and invalid entries. 
select *
from dirty;
-- create a copy of the table to preserve the original data.
create table dirty_copy
like dirty;

insert into dirty_copy
select *
from dirty;

-- Identify and remove duplicates that could skew analysis results.
with double_cte  as (select *, 
	row_number() over (partition by first_name,
		Last_name,
		age,
		gender,
		career,
		employment_date,
		total_earnings,
		address
	order by first_name) as row_num
from dirty_copy)

select *
from double_cte
where row_num > 1;

select *
from dirty_copy
where first_name = "Chika Nwosu";

-- delete duplicates 
CREATE TABLE `dirty_copy2` (
  `ID_number` int DEFAULT NULL,
  `First_Name` text,
  `Last_Name` text,
  `Age` int DEFAULT NULL,
  `Gender` text,
  `Career` text,
  `Employment_Date` text,
  `Total_earnings` text,
  `Address` text,
  `MyUnknownColumn` text,
   `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

insert into dirty_copy2
select *, 
	row_number() over (partition by first_name,
		Last_name,
		age,
		gender,
		career,
		employment_date,
		total_earnings,
		address
	order by first_name) as row_num
from dirty_copy;

delete 
from dirty_copy2
where row_num > 1;

-- Correct invalid or erroneous data entries (such as incorrect codes, typos, or outliers). by screening the each 
-- columns in the dataset individually.
select distinct(first_name), trim(both '/' from first_name)
from dirty_copy2
order by first_name;

update dirty_copy2
set first_name = trim(both '/' from first_name);

select distinct(first_name), replace(first_name, ',', ''),replace(first_name, '.', '')
from dirty_copy2
order by first_name;

update dirty_copy2
set first_name = replace(first_name, ',', '');

update dirty_copy2
set first_name = replace(first_name, '.', '');

select distinct(first_name), trim(first_name)
from dirty_copy2
order by first_name;

update dirty_copy2
set first_name = trim(first_name);

select distinct(last_name), replace(last_name, '.',''), replace(last_name, '/','')
from dirty_copy2
order by last_name;

update dirty_copy2
set last_name = replace(last_name, '.','');

update dirty_copy2
set last_name = replace(last_name, '/','');

update dirty_copy2
set last_name = trim(last_name);

select distinct (career)
from dirty_copy2;

update dirty_copy2
set career = trim(career);

select last_name, replace (last_name, 'Mi+c67ller','Miller')
from dirty_copy2
where last_name like '%mi%er%';

update dirty_copy2
set last_name = replace (last_name, 'Mi+c67ller','Miller');

-- remove unnecessary column
alter table dirty_copy2
drop myunknowncolumn;

-- standardize data
select concat(upper(substring(last_name,1,1)),lower(substring(last_name,2))),
concat(upper(substring(first_name,1,1)), lower(substring(first_name,2)))
from dirty_copy2;

update dirty_copy2
set first_name = concat(upper(substring(first_name,1,1)), lower(substring(first_name,2))),
last_name = concat(upper(substring(last_name,1,1)),lower(substring(last_name,2)));

select first_name, last_name, concat(first_name, ' ', last_name) fullname 
from dirty_copy2;

alter table dirty_copy2
add column fullname varchar(50);

update dirty_copy2
set fullname = concat(first_name, ' ', last_name);

-- breakdown the address column into street, city and country for easy retrieval
select address,
substring(address, 1, instr(address, ',')-1) streetname,
substring(address, instr(address, ',')+1)
from dirty_copy2;

alter table dirty_copy2
add column Street_name varchar(50);

alter table dirty_copy2
add column City_country varchar(50);

update dirty_copy2
set Street_name = substring(address, 1, instr(address, ',')-1);

update dirty_copy2
set City_country = substring(address, instr(address, ',')+1);

select city_country, trim(city_country)
from dirty_copy2;

select city_country, substring(city_country,1,instr(city_country,',')-1),
substring(city_country, instr(city_country,',')+1)
from dirty_copy2;

update dirty_copy2
set Gender = trim(Gender);

select distinct(Gender)
from dirty_copy2;

-- standardize the gender column. remove irregularities.
select distinct(Gender),
	case when Gender = 'M 21' then "M"
		when Gender = 'M 20' then "M"
		when Gender = 'M 25' then "M"
		when Gender = 'F 24' then "F"
		else Gender 
	end as Gender
from dirty_copy2;

update dirty_copy2
set Gender = case when Gender = 'M 21' then "M"
		when Gender = 'M 20' then "M"
		when Gender = 'M 25' then "M"
		when Gender = 'F 24' then "F"
		else Gender 
	end;

select distinct(Last_name)
from dirty_copy2;
-- where Last_Name like '%mi%er%';

-- correct irregularities in career column 
select distinct(career)
from dirty_copy2;

select distinct(career),
case when career = 'Web Developmet' then 'Web Development'
	when career = 'Web Develpment' then 'Web Development'
	when career = 'Web Developmen' then 'Web Development'
	when career = 'Machine Learnin' then 'Machine Learning'
	when career = 'Web Develpment' then 'Web Development'
	when career = 4 then ''
	else career
	end as new
from dirty_copy2;

update dirty_copy2
set career = case when career = 'Web Developmet' then 'Web Development'
	when career = 'Web Develpment' then 'Web Development'
	when career = 'Web Developmen' then 'Web Development'
	when career = 'Machine Learnin' then 'Machine Learning'
	when career = 'Web Develpment' then 'Web Development'
	when career = 4 then ''
	else career
	end;
-- standardize employmentdate. This column has a lot of inconsistencies and different formats hence, the many steps
select Employment_Date-- , trim(Employment_Date)
from dirty_copy2;

update dirty_copy2
set employment_date = trim(Employment_Date);

select employment_date, 
case 
	when employment_date like '%-%-%' and length(employment_date) =8 then str_to_date(employment_date,'%m-%d-%Y')
	else employment_date
	end as frdate
from dirty_copy2;

update dirty_copy2
set employment_date = case 
	when employment_date like '%-%-%' and length(employment_date) =8 then str_to_date(employment_date,'%m-%d-%Y')
	else employment_date
	end;
    
select
substring(employment_date, 1, instr(employment_date, '-') -1) as Emp_year, 
substring(employment_date, instr(employment_date, '-')+1,3) as Emp_month,
substring(employment_date, instr(employment_date, '-')+4) as Emp_day
from dirty_copy2;

alter table dirty_copy2
add column emp_year varchar(20);

alter table dirty_copy2
add column emp_month varchar(20);

alter table dirty_copy2
add column emp_day varchar(20);

update dirty_copy2
set emp_year = substring(employment_date, 1, instr(employment_date, '-') -1);

update dirty_copy2
set emp_month = substring(employment_date, instr(employment_date, '-')+1,3);

update dirty_copy2
set emp_day = substring(employment_date, instr(employment_date, '-')+4);

select emp_year, emp_month, emp_day
from dirty_copy2;

select distinct(emp_month),
	case when emp_month = 'Jan' then '01'
	 when emp_month = 'Feb' then '02'
	 when emp_month = 'Mar' then '03'
	 when emp_month = 'Apr' then '04'
	 when emp_month = 'May' then '05'
	 when emp_month = 'Jun' then '06'
	 when emp_month = 'Jul' then '07'
	 when emp_month = 'Aug' then '08'
	 when emp_month = 'Sep' then '09'
	 when emp_month = 'Oct' then '10'
	 when emp_month = 'Nov' then '11'
	 when emp_month = 'Dec' then '12'
	else emp_month
	end as new
from dirty_copy2;

update dirty_copy2
set emp_month = case when emp_month = 'Jan' then '01'
	 when emp_month = 'Feb' then '02'
	 when emp_month = 'Mar' then '03'
	 when emp_month = 'Apr' then '04'
	 when emp_month = 'May' then '05'
	 when emp_month = 'Jun' then '06'
	 when emp_month = 'Jul' then '07'
	 when emp_month = 'Aug' then '08'
	 when emp_month = 'Sep' then '09'
	 when emp_month = 'Oct' then '10'
	 when emp_month = 'Nov' then '11'
	 when emp_month = 'Dec' then '12'
	else emp_month
	end;
    
select distinct(emp_day), replace(emp_day, '-','')
from dirty_copy2;

update dirty_copy2
set emp_month = replace(emp_month, '-','');

update dirty_copy2
set emp_day = replace(emp_day, '-','');
 
-- select emp_year, trim(emp_year), trim(emp_month), trim(emp_day)
-- from dirty_copy2;

select concat(emp_year, '-', emp_month,'-', emp_day)as Newemployment_date
from dirty_copy2;

alter table dirty_copy2
add column RvsdEmployment_date varchar(20);

update dirty_copy2
set RvsdEmployment_date = concat(emp_year, '-', emp_month,'-', emp_day);

select RvsdEmployment_date, replace(RvsdEmployment_date,'--', '')
from dirty_copy2;

update dirty_copy2
set RvsdEmployment_date =replace(RvsdEmployment_date,'--', '');

-- select rvsdemployment_date,
	-- case when rvsdemployment_date = '' then NULL
	-- else str_to_date(rvsdemployment_date, '%Y-%m-%d')
	-- end as converted_date
-- from dirty_copy2;

select rvsdemployment_date, str_to_date(rvsdemployment_date, '%Y-%m-%d')
from dirty_copy2
where rvsdemployment_date <> '';

update dirty_copy2
set rvsdemployment_date = str_to_date(rvsdemployment_date, '%Y-%m-%d')
where rvsdemployment_date <> '';

-- standardize the total_earnings column
select Total_earnings, replace(trim(Total_earnings),'? ','$')
from dirty_copy2;

update dirty_copy2
set total_earnings = replace(trim(Total_earnings),'? ','$');

-- while going through the table i noticed more duplicates hence the following steps over again
with doublecte as 
(SELECT *, row_number() over (partition  by first_name, last_name, Age, Gender, career, employment_date, 
total_earnings order by first_name) as row_num1
FROM dirty_copy2)
select *
from doublecte
where row_num1 >1;

CREATE TABLE `clean_data` (
  `ID_number` int DEFAULT NULL,
  `First_Name` text,
  `Last_Name` text,
  `Age` int DEFAULT NULL,
  `Gender` text,
  `Career` text,
  `Employment_Date` text,
  `Total_earnings` text,
  `Address` text,
  `row_num` int DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `Street_name` varchar(50) DEFAULT NULL,
  `City_country` varchar(50) DEFAULT NULL,
  `emp_year` varchar(20) DEFAULT NULL,
  `emp_month` varchar(20) DEFAULT NULL,
  `emp_day` varchar(20) DEFAULT NULL,
  `RvsdEmployment_date` varchar(20) DEFAULT NULL,
  `row_num1` int 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

insert into clean_data
SELECT *, row_number() over (partition  by first_name, last_name, Age, Gender, career, employment_date, 
total_earnings order by first_name) as row_num1
FROM dirty_copy2;

delete 
from clean_data
where row_num1 >1;
 
 -- drop unneccesary columns
alter table clean_data
drop column row_num1;

alter table clean_data
drop column employment_date;

select *
from clean_data
order by id_number
-- THE END.
