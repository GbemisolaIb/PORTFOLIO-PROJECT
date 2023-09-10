select *
from [portfolio project]..nashvillehousing 

select saledate, convert(date, saledate)
from [portfolio project]..nashvillehousing

--update [portfolio project]..nashvillehousing 
--set saledate = convert(date, saledate) 

alter table [portfolio project]..nashvillehousing
alter column saledate date 

select saledateconverted
from nashvillehousing

alter table [portfolio project]..nashvillehousing
add saledateconverted DATE

UPDATE Nashvillehousing
set saledateconverted = convert(date, saledate) 
  
select *
from [portfolio project]..nashvillehousing
--where propertyaddress is null
order by parcelID

select *
from [portfolio project]..nashvillehousing a
join [portfolio project]..nashvillehousing b
on a.parcelID = b.Parcelid
and A.uniqueID <> B.uniqueid
order by 1

select a.parcelID, a.propertyaddress, b.parcelID, b.propertyaddress, 
isnull(a.propertyaddress, b.propertyaddress)
from [portfolio project]..nashvillehousing a
join [portfolio project]..nashvillehousing b
on a.parcelID = b.Parcelid
and a.[uniqueID] <> B.[uniqueid]
--where a.propertyaddress is null

update a 
set propertyaddress = isnull(a.propertyaddress, b.propertyaddress)
from [portfolio project]..nashvillehousing a
join [portfolio project]..nashvillehousing b
on a.parcelID = b.Parcelid
and a.[uniqueID] <> B.[uniqueid]
where a.propertyaddress is null

select 
substring (propertyaddress, 1, charindex(',', propertyaddress)-1) as address,
substring (propertyaddress, charindex(',', propertyaddress) +1, len(propertyaddress)) as address

from [portfolio project]..nashvillehousing

alter table [portfolio project]..nashvillehousing
add PropertySplitAddress nvarchar (255) 

UPDATE Nashvillehousing
set PropertySplitAddress = substring (propertyaddress, 1, charindex(',', propertyaddress)-1)

alter table [portfolio project]..nashvillehousing
add PropertySplitCity nvarchar (255) 

UPDATE Nashvillehousing
set PropertySplitCity = substring (propertyaddress, charindex(',', propertyaddress) +1, 
len(propertyaddress))

select *
from nashvillehousing

--select
--substring(owneraddress, 1, charindex(',', owneraddress) -1) as address,
--substring (owneraddress, charindex(',', owneraddress) +1, len(owneraddress)) as address,
--substring (owneraddress, charindex(',', owneraddress) +2 len(owneraddress)) as address

--from nashvillehousing

select 
parsename(replace (owneraddress, ',', '.'), 3),
parsename(replace (owneraddress, ',', '.'), 2),
parsename(replace (owneraddress, ',', '.'), 1)
from nashvillehousing

alter table [portfolio project]..nashvillehousing
add OwnerSplitAddress nvarchar (255) 

UPDATE Nashvillehousing
set OwnerSplitAddress = parsename(replace (owneraddress, ',', '.'), 3)

alter table [portfolio project]..nashvillehousing
add OwnerSplitCity nvarchar (255) 

UPDATE Nashvillehousing
set OwnerSplitCity = parsename(replace (owneraddress, ',', '.'), 2)

alter table [portfolio project]..nashvillehousing
add OwnerSplitState nvarchar (255) 

UPDATE Nashvillehousing
set OwnerSplitState = parsename(replace (owneraddress, ',', '.'), 1)


select distinct(soldasvacant), count(soldasvacant)
from nashvillehousing
group by soldasvacant
order by 2

select soldasvacant,
case when soldasvacant = 'N' then 'NO'
	when soldasvacant = 'Y' then 'YES' 
	else soldasvacant 
	end
from nashvillehousing  

update nashvillehousing
set soldasvacant = case when soldasvacant = 'N' then 'NO'
	when soldasvacant = 'Y' then 'YES' 
	else soldasvacant 
	end

--deleting duplicates

WITH ROWNUMCTE AS 
(
select *,
	ROW_NUMBER() over (partition by 
	parcelid,
	propertyaddress,
	saleprice,
	saledate,
	legalreference order by uniqueID) ROW_NUM 

	FROM NASHVILLEHOUSING)

SELECT *
FROM ROWNUMCTE
WHERE ROW_num > 1 

SELECT *
FROM [PORTFOLIO PROJECT]..NashvilleHousing

ALTER TABLE [PORTFOLIO PROJECT]..Nashvillehousing 
drop column landuse, saledate, owneraddress, taxdistrict, propertyaddress

 