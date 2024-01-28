--THIS PROJECT IS A SURVEY TO SEE HOW MARKETERS PERFORM IN SW2 REGION OF ZENITH BANK

Create table ZegaBankEmployees
(StaffID int primary key not null,
FirstName varchar(30),
Lastname varchar(30),
Department varchar(50),
Branchname varchar(30),
Gender varchar(10) check (Gender In ('Male', 'Female')),
Age int,
AnnualSalary int,
StateOfOrigin varchar (50), 
StateOfResidence varchar(50),
HireDate date,
ExitDate date)

Create table Customer
(AccountNumber int primary key,
FirstName varchar(30),
LastName varchar(30),
Gender char(10) check (Gender In ('Male', 'Female')), 
CustomerAddress varchar (50),
Occupation varchar (50),
PEPstatus char(5) check (PEPstatus IN ('Yes', 'No')),
PhoneNumber int,
DateOfBirth date)

Create table AccountInfo
(AccountNumber int not null,
OpenDate date not null,
CloseDate date,
AccountStatus varchar(20),
AccountBalance int,
AccountName varchar(50))

Select *
from ZegaBankEmployeeData

Alter table Customer 
Add AccountOfficer varchar (50)

Select *
from Customer

Alter table ZegaBankEmployeeData
Add StaffLevel varchar (20)

Insert into ZegaBankEmployeeData values
(0101,'Adams','Johnson','Marketing','Dugbe','Male',35,4200000,'Imo','Oyo','2018-07-18',NULL, 'ABO')

Insert into ZegaBankEmployeeData values
(0205,'Jumoke','Olatunde','Marketing','Mokola','Female',47,5748000,'Ondo','Oyo','2015-10-21',NULL, 'BO')

Insert into ZegaBankEmployeeData values
(0516,'Felicia','Nwogwu','Marketing','Ojoo','Female',32,3720000,'Abia','Oyo','2019-11-01',NULL, 'EA'),
(0106,'Fehintola','Adisa','Marketing','Dugbe','Female',27,2400000,'Ogun','Oyo','2020-02-13',NULL,'ET'),
(0320,'Saliu','Aderonmu','Marketing','Saki','Male',56,9792000,'Ogun','Oyo','2007-09-27','2023-11-16','AM'),
(0817,'Israel','Igboekwe','Marketing','Oyo Town','Male',38,4200000,'Calabar','Oyo','2017-03-28',NULL,'ABO')

Insert into ZegaBankEmployeeData values
(0287,'Saheed','Adigun','Marketing','Mokola','Male',39,4200000,'Osun','Oyo','2018-09-19',NULL,'ABO'),
(0478,'Temitope','Adewale','Marketing','Iwo road','Male',22,2100000,'Ondo','Oyo','2022-10-13',NULL,'GA'),
(0431,'Chinwe','Chukwudi','Marketing','Iwo road','Female',27,2400000,'Bayelsa','Oyo','2020-06-30','2023-10-31','ET'),
(0276,'King','Umar','Marketing','Mokola','Male', 36,5748000,'Kaduna','Oyo','2018-01-05', NULL,'BO'),
(0790,'Shade','Ayinde','Marketing','Oluyole','Female',27,2400000,'Osun','Oyo','2022-03-19',NULL,'ET'),
(0118,'Godwin','Omerekpe','Marketing','Dugbe','Male',48,15300000,'Enugu','Oyo','2005-12-03', NULL,'DM'),
(0135,'Glory','Akinsanya','Marketing','Dugbe','Female',51,20570000,'Ogun','Oyo','2004-02-28',NULL,'MGR'),
(0377,'Peter','Badejo','Marketing','Saki','Male',45,8700000,'Ondo','Oyo','2010-08-18',NULL,'SBO'),
(0578,'Ada','Kayode','Marketing','Ojoo','Male',36,3720000,'Benue','Oyo','2019-11-01',' 2022-09-27','SEA'),
(0513,'Akeem','Adisa','Marketing','Ojoo','Male',29,2100000,'Lagos','Oyo','2022-10-13',NULL,'GA'),
(0371,'Fatimah','Mohammed','Marketing','Saki','Female', 25,2400000,'Lagos','Oyo','2022-05-27', NULL,'ET'),
(0498,'Alimah','Aliko','Marketing','Iwo road','Female',28,4200000,'Kwara','Oyo','2017-08-03',NULL,'ABO'),
(0808,'Kolapo','Ademoye','Marketing','Oyo Town','Male',27,2100000,'Oyo','Oyo','2022-04-09',NULL,'GA'),
(0610,'Chiomah','Benson','Marketing','Challenge','Female',32,2100000,'Uyo','Oyo','2020-12-18',NULL,'GA'),
(0172,'Kareem','Suleiman','Marketing','Dugbe','Male',40, 5748000,'Kano','Oyo','2016-10-10','2022-10-17','BO')

select *
from ZegaBankEmployeeData
order by 5 asc

Insert into ZegaBankEmployeeData values
(0924,'Jemimah','Alagbe','Marketing','Bodija','Female',38,3720000,'Kwara','Oyo','2018-08-08',NULL,'SEA'),
(0993,'Matthew','Durojaye','Marketing','Bodija','Male',39,5748000,'Osun','Oyo','2015-08-08',NULL,'BO'),
(0921,'Fathia','Aliyu','Marketing','Bodija','Female',35,3720000,'Ekiti','Oyo','2018-09-19','2023-10-20','SEA')

Insert into ZegaBankEmployeeData values
(0124,'Jumoke','Adamu','Marketing','Dugbe','Female',26,3720000,'Ekiti','Oyo','2020-02-19','2023-01-31','EA')

Insert into ZegaBankEmployeeData values
(0345,'Azeez','Adediran','Marketing','Saki','Male',30,2100000,'Ekiti','Oyo','2022-03-22',NULL,'GA')

Insert into ZegaBankEmployeeData values
(0767,'Godwin','Okonkwo','Marketing','Oluyole','Male',33,4200000,'Delta','Oyo','2018-09-19',NULL,'ABO'),
(0156,'Precious','Alayande','Marketing','Dugbe','Female',45,5748000,'Ogun','Oyo','2017-01-19',NULL,'BO'),
(0622,'Fadeke','Akinsanya','Marketing','Challenge','Female',41,5748000,'Kwara','Oyo','2016-03-26',NULL,'BO'),
(0432,'Yemisi','Onigbinde','Marketing','Iwo road','Female',47,9792000,'Lagos','Oyo','2010-07-01',NULL,'AM'),
(0977,'Rosemary','Elvis','Marketing','Bodija','Female',28,2400000,'Ogun','Oyo','2021-01-31',NULL,'ET'),
(1021,'Arinze','Paul','Marketing','Ogbomosho','Male',31,2100000,'Edo','Oyo','2022-01-19',NULL,'GA'),
(0178,'Dimeji','Bankole','Marketing','Dugbe','Male',43,9792000,'Lagos','Oyo','2009-04-15',NULL,'AM')

Insert into ZegaBankEmployeeData values
(0177,'Tobi','Gabriel','Marketing','Dugbe','Female',26,3720000,'Ekiti','Oyo','2019-05-30',NULL,'EA'),
(0699,'Abraham','Akinsanya','Marketing','Challenge','Male',57,15300000,'Abuja','Oyo','2003-10-23',NULL,'DM'),
(0811,'Bolu','Fatunbi','Marketing','Oyo Town','Male',51,9792000,'Ogun','Oyo','2005-05-22',NULL,'AM'),
(0242,'Katherine','Ozo','Marketung','Mokola','Female',43,9000000,'Ondo','Oyo','2008-12-01','2023-09-11','SAM'),
(1190,'Anu','Baderin','Marketing','Ogbomosho','Female',35,3720000,'Osun','Oyo','2016-09-19',NULL,'SEA'),
(0254,'Yinka','Amos','Marketing','Mokola','Male',47,9792000,'Lagos','Oyo','2005-10-21',NULL, 'AM'),
(0292,'Aishat','Mohammed','Marketing','Mokola','Female',54,15300000,'Ekiti','Oyo','2002-07-01',NULL,'DM'),
(0123,'Faith','Lukman','Marketing','Dugbe','Male',57,20570000,'Ondo','Oyo','2004-12-21',NULL, 'MGR'),
(0302,'Rita','Williams','Marketing','Saki','Female',26,2100000,'Benue','Oyo','2022-04-20','2023-10-03','GA'),
(0531,'Patience','Audu','Marketing','Ojoo','Female',23,2100000,'Imo','Oyo','2022-10-13',NULL,'GA')

Insert into ZegaBankEmployeeData values
(0525,'Aminat','Yusuf','Marketing','Ojoo','Female',44,5748000,'Bauchi','Oyo','2015-01-25',NULL,'BO'),
(0442,'Uche','Emeka','Marketing','Iwo road','Female',51 ,9792000,'Rivers','Oyo','2009-04-30',NULL,'AM'),
(0601,'Israel','Olatunde','Marketing','Challenge','Male',51,9000000,'Kwara','Oyo','2007-02-14',NULL,'SAM'),
(0974,'Bukola','Oni-Alfred','Marketing','Bodija','Female',50,9792000,'Osun','Oyo','2004-05-25',NULL,'AM'),
(0707,'Adura','Akinyemi','Marketing','Oluyole','Female',27,3720000,'Niger','Oyo','2022-03-19',NULL,'SEA'),
(1051,'Peter','Ejike','Marketing','Ogbomosho','Male',33,2400000,'Abia','Oyo','2021-05-01','2023-07-31','ET'),
(0833,'Esther','Emmanuel','Marketing','Oyo Town','Female',39,4200000,'Ogun','Oyo','2013-10-10',NULL,'ABO'),
(0490,'Pascal','Ebube','Marketing','Iwo road','Male',38 ,4200000,'Cross River','Oyo','2014-10-31',NULL,'ABO'),
(0429,'Opeyemi','Solanke','Marketing','Iwo road','Male',27 ,3720000,'Lagos','Oyo','2017-07-30',NULL,'SEA'),
(0670,'Felicia','Baron','Marketing','Challenge','Female',36,3720000,'Ondo','Oyo','2016-01-31','2023-02-15','SEA'),
(0685,'Alimat','Danjuma','Marketing','Challenge','Female',46,5748000,'Kaduna','Oyo','2006-05-09',NULL,'BO'),
(0791,'Fatimah','Dauda','Marketing','Oluyole','Female',29,2400000,'Jigawa','Oyo','2021-04-28',NULL,'ET'),
(0700,'Daniel','Omotayo','Marketing','Oluyole','Male',30,2100000,'Niger','Oyo','2022-03-19',NULL,'GA'),
(0957,'Bukola','Davies','Marketing','Bodija','Female',47,9000000,'Kogi','Oyo','2005-02-28',NULL,'SAM'),
(0910,'Annie','Albert','Marketing','Bodija','Female',33,2400000,'Osun','Oyo','2019-11-01',NULL,'ET')

select *
from ZegaBankEmployeeData 

Select *
from Customer

Alter table Customer
drop column dateofbirth

Alter table Customer
Add Age int

Insert into Customer Values
(202010,'Oreoluwa','Adesanya','Female','3,Ladigbolu street,Adams way Bodija,Ibadan','Teacher','No',081508,
'Chinwe Chukwudi',57),
(202018,'Okoye','Kingsley','Male','21,Tafawa Balewa square,Agodi,Ibadan','Secretary','Yes',092925,'Adams 
Johnson',36),
(204029,'Anu','Peters','Female','19,Ibape street,Idi Arere,Ibadan','Entrepreneur','Yes',090293,'Precious
Alayande',29),
(261890,'Joy','Baderin','Female','09, Apata Plaza,Ibadan','Entrepreneur','Yes',080202,'Israel Olatunde',22),
(100293,'Chukwudi','Martins','Male','1,Green gate,Oluyole,Ibadan','Banker','Yes',070644,'Precious Alayande',73),
(223902,'Reason','Paul','Male','34, Green house, Olodo ,Ibadan','Plumber','No',081782,'Fehintola Adisa',34),
(292201,'Peter','Kehinde','Male','20,Ganni Adams road,VI,Lagos','Student','Yes',081292,'Ada Kayode',25),
(103229,'Kafayat','Sanyaolu','Female','39,Albert Estate,Abuja','Lawyer','Yes',080183,'Tobi Gabriel',45),
(430229,'Chioma','Godwin','Female','87,Oladipo way,Lekki,Lagos','Engineer','No',070394,'Dimeji Bankole',49),
(203656,'Quadri','Rahmon','Male','117,Uyo Secretariat,Uyo','Carpenter','No',090372,'Bukola Davies',51),
(210854,'Precious','Adeokun','Female','190,Ebenezer Estate,Bashorun,Ibadan','Student','No',080627,'Jemimah 
Alagbe',27),
(401930,'Gbenga','Akeem','Male','14,Oladokun street,Akure','Sales Manager','No',080182,'Bolu Fatunbi',67),
(229890,'Aliyu','Mohammed','Male','57,Gowon estate,Lokoja','Entrepreneur','No',091827,'Abraham Akinsanya',40),
(104738,'Fola','Olorode','Female','UI,Ibadan','Student','Yes',080283,'Annie Albert',23),
(220684,'Faith','John','Female','39,Coords close,Jericho,Ibadan','IT Manager','Yes',090895,'Glory Akinsanya',39),
(210294,'Ayeesha','Dagunro','Female','67,Purple gate,Oluyole,Ibadan','Sales Rep','No',070385,'Fatimah Dauda',36),
(247890,'Bonny','Igwe','Male','29,Red gate,Oluyole,Ibadan','Realtor','Yes',080288,'Adura Akinyemi',40),
(439298,'Rita','Festus','Female','55,Coords close,Jericho,Ibadan','Web developer','No',090029,'Uche Emeka',49),
(203021,'Anthony','Adeyemi','Male','1,Yipee street,VI,Lagos','Accountant','Yes',080474,'Aminat Yusuf',35),
(227550,'Vicoria','Oseni','Female','10,Oladeji close,Bodija,Ibadan','Photographer','Yes',082990,'Dimeji Bankole',61),
(234561,'Ebun','Johnson','Female','25,NNPC road,Apapa,Laos','Nurse','No',091280,'Tobi Gabriel',45),
(220399,'Gloria','Madueke','Female','Olabode street,Ojota,Lagos','Entrepreneur','No',081749,'Kareem Suleiman',56),
(112938,'John','Patrick','Male','Ozimba way,Abuja','Lawyer','Yes',090378,'Kareem Suleiman',52),
(129389,'Oladeji','Bonojo','Male','Ibekwe Arinze way,Uyo,Akwa Ibom','Psychologist','No',081375,'Glory Akinsanya',32),
(211920,'Uche','Fredrick','Female','Obafemi Awolowo street,Ikeja,Lagos','Plumber','No',090458,'Yinka Amos',35),
(203892,'Shade','Habeeb','Female','304,GRA,Apapa,Lagos','Dentist','No',080684,'Yinka Amos',37),
(293855,'Ozo','Caleb','Male','09,Adeyinka street,Ado-Ekiti,Ekiti','Teacher','No',081784,'Aishat Mohammed',67),
(266819,'Ade','Akin','Male','6,Kolapo street,Oyo town,Oyo','Sales Rep','No',070577,'Esther Emmanuel',25),
(212938,'Gboyega','Akanni','Male','Eleyele,Ibadan','Health worker','No',080946,'Fathia Aliyu',30),
(202800,'Adebisi','Kolawole','Female','20, Iyagokun street,Ibadan','Receptionist','No',071093,'Fehintola 
Adisa',47),
(102830,'Feyisayo','Alagbe','Female','Jide Taiwo street,Oyo town','Chiropractor','Yes',090078,'Adams Johnson',37),
(100938,'Olayemi','Obaniwa','Female','Ogbomosho,Ibadan','Secretary','Yes',080263,'Anu Baderin',30),
(222939,'Azeezat','Musiliu','Female','UI,Ibadan','Student','No',080008,'Rosemary Elvis',22),
(242908,'Ada','Chinweze','Female','UI,Ibadan','Student','Yes',081274,'Bukola Oni-Alfred',25)

Insert into Customer values 
(102808,'Wasiu','Ayinde','Male','39,Ogunmefan close,Akobo,Ibadan','Technican','No',090307,'Annie Albert',38),
(442891,'Mary','Gbadebo','Female','Alade Plaza,Bodija market,Ibadan','Trader','Yes',070928,'Annie Albert',60),
(400281,'Gbenga','Paul','Male','Shop 7,Bodija market,Ibadan','Trader','No',080283,'Annie Albert',39),
(194757,'Fatimoh','Ajoke','Female','Agodi Estate, Ibadan','Doctor','Yes',071959,'Fathia  Aliyu',45),
(400284,'Aminu','Umar','Male','Umar plaza,Bodija market,Ibadan','Trader','No',090384,'Jemimah Alagbe',42),
(289842,'Mohammed','Muktar','Male','Umar plaza,Bodija market,Ibadan','Trader','Yes',099594,'Bukola Davies',56),
(110347,'Musa','Amir','Male','Bodija market,Ibadan','Trader','No',080083,'Bukola Oni-Alfred',52),
(192012,'Kafayat','Gbadebo','Female','23,Godbless estate,Bashorun,Ibadan','Dentist','No',092838,'Bukola Oni-Alfred',49),
(100087,'Wiane Industries',NULL,NULL,'Oluyole Industrial estate,Ibadan','Paper factory',NULL,192929,
'Godwin Omerekpe',NULL),
(291919,'Victoria','Adelakun','Female','Alajo Complex,Eleyele,Ibadan','Optamologist','No',921822,'Faith Lukman'
,63),
(291010,'Ssajan and Co Ent',NULL,NULL,'35,Fashina way, Bodija','Teacher','No',082938,'Fathia Aliyu',NULL),
(204018,'Ajoke','Folusho','Female','Akin alabi close,Soka,Ibadan','Software Engineer','No',929381,'Rosemary
Elvis',38),
(212083,'Mika','Alade','Male','35,Godbless estate,Bashorun,Ibadan','Mechanic','Yes',921022,'Matthew Durojaye',58),
(271828,'Victoria','Davidson','Female','Ajoke Plaza,Dugbe,Ibadan','Politician','Yes',092830,'Faith Lukman',65)

Select *
from zegabankEmployeeData 
order by 5 asc

select *
from Customer

Insert into Customer values
(246182,'Ope','Adetoro','Male','Ola trading store,Dugbe,Ibadan','Hair stylist','No',0706637,'Bukola Davies',27),
(229283,'Mary','Opeyemi','Female','Fashohun rd,Bashorun, Ibadan','Nurse','Yes',0902928,'Bukola Oni-Alfred',29),
(293818,'Adesuwa','Adeola','Female','27,Charles Okubo close,Oluyole,Ibadan','Doctor','No',0807272,'Bukola Davies',38),
(273828,'Tommy','Lee','Male','Arinze estate, Iyagokun,Ibadan','Graphics Designer','No',0807465,'Matthew Durojaye',64),
(402846,'Opemipo','Fayemi','Female','Ola trading store,Dugbe,Ibadan','Esthetician','No',0702637,'Rosemary Elvis',45),
(100283,'Nigerite Industrial Ltd',NULL,NULL,'P.O Box 36,Akala Expressway,Ibadan','Cartons Production',NULL,NULL,
'Matthew Durojaye',NULL),
(100395,'Adefarm Nig. Ltd.',NULL, NULL,'Oluyole Industrial Estate,Ibadan','Farming','No',0906081,'Glory Akinsanya',NULL),
(103456,'Globerterm Industries',NULL,NULL,'Oluyole Industrial Estate,Ibadan','Chicken feed',NULL,0906753,'Faith Lukman',NULL),
(439047,'Uchenna','Godwin','Male','3,Nnamdi estate,Jericho,Ibadan','Geologist','No',0903737,'Alimat Danjuma',68),
(291847,'Paulina','Moses','Female','87,Jeli strt,Molete,Ibadan','Trader','No',0810293,'Fadee Akinsanya',47),
(219375,'GEBSU Law Firm',NULL,NULL,'Jericho, Ibadan','Law firm',NULL,0800008,'Israel Olatunde',NULL),
(242272,'Justina','Grey','Female','72,Green gate, Oluyole','Botanist','No',0809154,'Israel Olatunde',75),
(283728,'Angela','Aminu','Female','16,Adewale strt,Eleyele,Ibadan','Therapist','No',0803847,'Chiomah Benson',67),
(222049,'Mistura','Adetoro','Female','Laderin Estate, Abeokuta',NULL,'Yes',0801825,'Abraham Akinsanya',39)

Insert into Customer values
(400456,'Solomon','Giwa','Male','39,Jericho estate,Ibadan',NULL,'No',0818356,'Fadeke Akinsanya',53),
(440273,'Alberto','Albert','Male',NULL,NULL,'No',0819473,'Chiomah Benson',33),
(402982,'Rosemary','Adelani','Female','01,Blue gate,Oluyole,Ibadan','Nurse','No',0706458,'Kolapo Ademoye',48),
(103837,'Adeola','Adeolu','Male','Ola trading store,Dugbe,Ibadan','Trader','No',0705254,'Daniel Omotayo',56),
(129489,'Omotayo','Edun','Female','29,Yellow gate,Oluyole,Ibadan',NULL,'yes',0715602,'Daniel Omotayo',87),
(121972,'Frontend Nur. & Pri. school',NULL,NULL,'Akala Expressway,Ibadan','School',NULL,0705730,'Godwin Okonkwo',NULL),
(448124,'Chiamaka','Chukwu','Female','Agodi,Ibadan','Student','Yes',0804430,'Felicia Baron',33),
(262059,'Chinyere','Emeka','Female','Molete,Ibadan','Student',NULL,0719889,'Abraham Akinsanya',24),
(455012,'Adaobi','Emeka','Female','Diamond estate,Ilorin','Teacher',NULL,0808717,'Abraham Akinsanya',49),
(121300,'Funks & Sons Company',NULL,NULL,'Opp Cocoa House,Dugbe,Ibadan','Flour company','No',
0707248,'Abraham Akinsanya',NULL),
(124012,'Chuklarh Nig Ltd',NULL,NULL,'Oluyole Ind. Estate,Ibadan','Chicken feeds','No',0819522,'Abraham Akinsanya',NULL),
(454473,'Adaora','Emmanule','Female','Challenge,Ibadan','SAN','Yes',0717370,'Godwin Omerekpe',69),
(267336,'Nkem','Amtata','Female','Opp Cromp Schools,Tiper garage,Ibadan','Marketer',NULL,0807598,'Godwin Omerekpe',37),
(231859,'Chidinma','Joseph','Female','27,Kolapo street,Orita-challenge','Software engineer',NULL,0808378,'Abraham Akinsanya',50),
(260690,'Alh. Garba','Buhari','Male','Challenge market,Ibadan',NULL,'No',0704948,'Faith Lukman',73)

Insert into Customer values
(129048,'Winterfed Companies',NULL,NULL,'Akala Expressway,Ibadan','Bread factory','No',0708893,'Godwin Omerekpe',43),
(453405,'Emmanuel','Jayeoba','Male','Bodija,Ibadan',NULL,NULL,0801275,'Godwin Omerekpe',36),
(406543,'Happiness','Isa','Female','17,Justice str.Ikeja,Lagos','Accountant',NULL,0815172,'Faith Lukman',29),
(127172,'Complan Industries',NULL,NULL,'Lagos-Ibadan Expressway','Construction','No',0805857,'Godwin Omerekpe',NULL),
(233465,'Joshua','Onyeka','Male','Idi Arere,Ibadan','Carpenter','No',0805460,'Glory Akinsanya',38),
(271748,'Fola','Aliyu','Female','Opp.Custom building Agodi,Ibadan',NULL,'Yes',0801898,'Glory Akinsanya',42),
(125574,'Alt Pots n Pan Nig.Ltd',NULL,NULL,'Akala Expressway,Ibadan','Metals',NULL,0802336,'Dimeji Bankole',NULL),
(225955,'Gbenga','Johnson','Male','Asero Housing Estate,Abeokuta','Business','No',0812336,'Dimeji Bankole',46),
(122999,'Quadri','Aliyu','Male','Gwagwalada,Abuja','Realtor','Yes',0708410,'Glory Akinsanya',35),
(446866,'Peace','John-Faith','Female','Alase street,Okelewo,Abeokuta',NULL,'Yes',0719540,'Godwin Omerekpe',68),
(406808,'Alh. Musa','Sodiq','Male','Airport rd,Ikeja Lagos','Business','No',0806389,'Dimeji Bankle',74),*****
(128090,'Chuks','Chiwell','Male','45,Olowo estate,Bashorun,Ibadan',NULL,NULL,0705465,'Godwin Omerekpe',33),
(121724,'FreshFlour Nig. Ltd',NULL,NULL,'Gosh Industrial Estate,Sango-Ota','Flour manufacturing',NULL,
0700505,'Godwin Omerekpe',NULL),
(127340,'SweetToooth Industries',NULL,NULL,'Lagos-Ibadan Expressway','Food Production','No',0800786,
'Dimeji Bankole',NULL),
(129728,'Rods & Strings Ind.',NULL,NULL,'Idi-iroko Exp.,Ogun state','Metal production',NULL,0702984,
'Glory Akinsanya',NULL)

Insert into Customer values
(405998,'Chief Akeju','Mosore','Male','Airport rd,Ibadan','Business','Yes',0810063,'Dimeji Bankole',68),
(453545,'Chief(Mrs) Akeju','Mosore','Female','Airport rd,Ibadan','Business','Yes',0707014,'Dimeji Bankole',59),
(406388,'Kofoworola','Kupayi','Female','Funaab,Abeokuta','Student','No',0704510,'Precious Alayande',25),
(122919,'Chukwube & Sons Furnitures',NULL,NULL,'NNPC rd.,Abeokuta','Carpentry','No',0709577,'Kareem Suleiman',NULL),
(406662,'Dr. Joan','Brown','Female','Gwagwalada,Abuja','Doctor','Yes',0808675,'Dimeji Bankole',46),
(127341,'Felix','Nzokwo','Male','Gwagwalada,Abuja','Surgeon','No',0816858,'Dimeji Bankole',38),
(129708,'Sunderland Nur/Pry School',NULL,NULL,'VI,Lagos','School',NULL,0810728,'Godwin Omerekpe',NULL),
(279080,'Lakeesha','Storm','Female','19,Yellow gate,Oluyole,Ibadan',NUll,'Yes',0807389,'Faith Lukman',55),
(288513,'Ayeesha','Ita','Female','Lekki Phase I,Lagos','Accountant','Yes',0704733,'Glory Akinsanya',46),
(122670,'Dbont Lounge & Hotel',NULL,NULL,'Bodija Ibadan','Hospitaliy','No',0810912,'Dimeji Bankole',NULL),
(212677,'Solomon','Baldwin','Male','09,Blue estate,Bashorun,Ibadan','Chiropractor','No',NULL,'Adams Johnson',39),
(256214,'Esther','Baldwin','Female','09,Blue estate,Bashorun,Ibadan','Banker','No',0816390,'Dimeji Bankole',34)

Insert into Customer values
(452627,'Ikechuwu','Efe','Male','11,Agbara estate,Bashorun,Ibadan','Data Analyst','No',0707674,'Opeyemi Solanke',37),
(406797,'Nkechi','Nonso','Female','49,Olive estate,Ajah,Lagos','Banker','Yes',0804086,'Chinwe Cukwudi',33),
(455020,'Mohmoh','Wike','Male','23,Olive estate,Ajah,Lagos','Project manager','Yes',0809811,'Dimeji Bankole',57),
(508652,'Angela','Oladokun','Female','Derby,United Kingdom','Nurse','No',+4460778,'Dimeji Bankole',26),
(502840,'Faith','Akinloye','Female','London,United Kingdom','Nurse','No',+4400388,'Godwin Omerekpe',39),
(518652,'Pamela','Williams','Female','Amsterdam, Netherlands','Scientist','No',+NULL,'Dimeji Bankole',40),
(507049,'Frontend Nur. & Pri. school',NULL,NULL,'Akala Expressway,Ibadan','School',NULL,0705730,'Godwin Okonkwo',NULL),
(522919,'Chukwube & Sons Furnitures',NULL,NULL,'NNPC rd.,Abeokuta','Carpentry','No',0709577,'Kareem Suleiman',NULL),
(522670,'Dbont Lounge & Hotel',NULL,NULL,'Bodija Ibadan','Hospitaliy','No',0810912,'Dimeji Bankole',NULL),
(502670,'Dbont Lounge & Hotel',NULL,NULL,'Bodija Ibadan','Hospitaliy','No',0810912,'Dimeji Bankole',NULL),
(528090,'Chuks','Chiwell','Male','45,Olowo estate,Bashorun,Ibadan',NULL,NULL,0705465,'Godwin Omerekpe',33),
(521724,'FreshFlour Nig. Ltd',NULL,NULL,'Gosh Industrial Estate,Sango-Ota','Flour manufacturing',NULL,
0700505,'Godwin Omerekpe',NULL),
(501724,'FreshFlour Nig. Ltd',NULL,NULL,'Gosh Industrial Estate,Sango-Ota','Flour manufacturing',NULL,
0700505,'Godwin Omerekpe',NULL),
(522724,'FreshFlour Nig. Ltd',NULL,NULL,'Gosh Industrial Estate,Sango-Ota','Flour manufacturing',NULL,
0700505,'Godwin Omerekpe',NULL),
(527340,'SweetToooth Industries',NULL,NULL,'Lagos-Ibadan Expressway','Food Production','No',0800786,
'Dimeji Bankole',NULL),
(507340,'SweetToooth Industries',NULL,NULL,'Lagos-Ibadan Expressway','Food Production','No',0800786,
'Dimeji Bankole',NULL),
(522340,'SweetToooth Industries',NULL,NULL,'Lagos-Ibadan Expressway','Food Production','No',0800786,
'Dimeji Bankole',NULL),
(529728,'Rods & Strings Ind.',NULL,NULL,'Idi-iroko Exp.,Ogun state','Metal production',NULL,0702984,
'Glory Akinsanya',NULL),
(526181,'Nkechi','Nonso','Female','49,Olive estate,Ajah,Lagos','Banker','Yes',0804086,'Chinwe Cukwudi',33),
(503229,'Kafayat','Sanyaolu','Female','39,Albert Estate,Abuja','Lawyer','Yes',080183,'Tobi Gabriel',45),
(530229,'Chioma','Godwin','Female','87,Oladipo way,Lekki,Lagos','Engineer','No',070394,'Dimeji Bankole',49),
(503656,'Quadri','Rahmon','Male','117,Uyo Secretariat,Uyo','Carpenter','No',090372,'Bukola Davies',51),
(510854,'Precious','Adeokun','Female','190,Ebenezer Estate,Bashorun,Ibadan','Student','No',080627,'Jemimah 
Alagbe',27),
(500283,'Nigerite Industrial Ltd',NULL,NULL,'P.O Box 36,Akala Expressway,Ibadan','Cartons Production',NULL,NULL,
'Matthew Durojaye',NULL),
(510283,'Nigerite Industrial Ltd',NULL,NULL,'P.O Box 36,Akala Expressway,Ibadan','Cartons Production',NULL,NULL,
'Matthew Durojaye',NULL),
(500395,'Adefarm Nig. Ltd.',NULL, NULL,'Oluyole Industrial Estate,Ibadan','Farming','No',0906081,'Glory Akinsanya',NULL),
(510395,'Adefarm Nig. Ltd.',NULL, NULL,'Oluyole Industrial Estate,Ibadan','Farming','No',0906081,'Glory Akinsanya',NULL),
(503456,'Globerterm Industries',NULL,NULL,'Oluyole Industrial Estate,Ibadan','Chicken feed',NULL,0906753,'Faith Lukman',NULL),
(539047,'Uchenna','Godwin','Male','3,Nnamdi estate,Jericho,Ibadan','Geologist','No',0903737,'Alimat Danjuma',68),
(591847,'Paulina','Moses','Female','87,Jeli strt,Molete,Ibadan','Trader','No',0810293,'Fadee Akinsanya',47),
(519375,'GEBSU Law Firm',NULL,NULL,'Jericho, Ibadan','Law firm',NULL,0800008,'Israel Olatunde',NULL),
(509375,'GEBSU Law Firm',NULL,NULL,'Jericho, Ibadan','Law firm',NULL,0800008,'Israel Olatunde',NULL),
(500375,'GEBSU Law Firm',NULL,NULL,'Jericho, Ibadan','Law firm',NULL,0800008,'Israel Olatunde',NULL),
(575574,'Alt Pots n Pan Nig.Ltd',NULL,NULL,'Akala Expressway,Ibadan','Metals',NULL,0802336,'Dimeji Bankole',NULL),
(529048,'Winterfed Companies',NULL,NULL,'Akala Expressway,Ibadan','Bread factory','No',0708893,'Godwin Omerekpe',43),
(570300,'Funks & Sons Company',NULL,NULL,'Opp Cocoa House,Dugbe,Ibadan','Flour company','No',0707248,'Abraham Akinsanya',NULL),
(571300,'Funks & Sons Company',NULL,NULL,'Opp Cocoa House,Dugbe,Ibadan','Flour company','No',0707248,'Abraham Akinsanya',NULL),
(500300,'Funks & Sons Company',NULL,NULL,'Opp Cocoa House,Dugbe,Ibadan','Flour company','No',0707248,'Abraham Akinsanya',NULL),
(524012,'Chuklarh Nig Ltd',NULL,NULL,'Oluyole Ind. Estate,Ibadan','Chicken feeds','No',0819522,'Abraham Akinsanya',NULL),
(527172,'Complan Industries',NULL,NULL,'Lagos-Ibadan Expressway','Construction','No',0805857,'Godwin Omerekpe',NULL),
(507172,'Complan Industries',NULL,NULL,'Lagos-Ibadan Expressway','Construction','No',0805857,'Godwin Omerekpe',NULL),
(525574,'Alt Pots n Pan Nig.Ltd',NULL,NULL,'Akala Expressway,Ibadan','Metals',NULL,0802336,'Dimeji Bankole',NULL),
(505574,'Alt Pots n Pan Nig.Ltd',NULL,NULL,'Akala Expressway,Ibadan','Metals',NULL,0802336,'Dimeji Bankole',NULL),
(520684,'Faith','John','Female','39,Coords close,Jericho,Ibadan','IT Manager','Yes',090895,'Glory Akinsanya',39),
(510294,'Ayeesha','Dagunro','Female','67,Purple gate,Oluyole,Ibadan','Sales Rep','No',070385,'Fatimah Dauda',36),
(547890,'Bonny','Igwe','Male','29,Red gate,Oluyole,Ibadan','Realtor','Yes',080288,'Adura Akinyemi',40),
(539298,'Rita','Festus','Female','55,Coords close,Jericho,Ibadan','Web developer','No',090029,'Uche Emeka',49),
(503021,'Anthony','Adeyemi','Male','1,Yipee street,VI,Lagos','Accountant','Yes',080474,'Aminat Yusuf',35),
(527550,'Vicoria','Oseni','Female','10,Oladeji close,Bodija,Ibadan','Photographer','Yes',082990,'Dimeji Bankole',61),
(534561,'Ebun','Johnson','Female','25,NNPC road,Apapa,Lagos','Nurse','No',091280,'Tobi Gabriel',45),
(215875,'Gloria','Akeju','Female','19,Charles Okocha str,Oluyole,Ibadan','Dentist','No',0706908,
'Yemisi Onigbinde',41),
(284906,'Musa','Jinwa','Male','01,Jinwa street,Agege,Lagos','Student','Yes',0806259,'Yemisi Onigbinde',25),
(104906,'Musa','Jinwa','Male','01,Jinwa street,Agege,Lagos','Student','Yes',0806259,'Yemisi Onigbinde',25),
(504906,'Musa','Jinwa','Male','01,Jinwa street,Agege,Lagos','Student','Yes',0806259,'Yemisi Onigbinde',25),
(122534,'Ahmed','Fagbola','Male','89,Lillie close,Jericho,Ibadan','Gym instructor','Yes',0802839,'Uche Emeka',28)

Insert into Customer values
(123753,'Susan','Chidi','Female','17,Jinwa street,Agege,Lagos','Student','No',0806259,'Yemisi Onigbinde',20),
(406110,'Bayo','Kayode','Male','Funnab,Abeokuta','Student','No',0806259,'Alimah Aliko',19),
(448906,'Pascal','Onaburekhan','Male','Ibadan Polytechnic,Ibadan','Student','Yes',0705373,'Pascal Ebube',21),
(406164,'Ebuka','Onaburekhan','Male','Ibadan Polytechnic,Ibadan','Student','Yes',0705305,'Pascal Ebube',19),
(406287,'Gbolahan','Nkeruika','Male','UI,Ibadan','Student','No',0700371,'Chinwe Chukwudi',19),
(406971,'Blessing','Olaniyi','Female',NULL,'Custom Officer','No',0900185,'Yemisi Onigbinde',28),
(225513,'Mercy','Adeboye','Female',NULL,'Police','No',0700944,'Yemisi Onigbinde',32),
(257562,'Anthony','Fagbemi','Male',NULL,'Custom Officer','No',0900185,'Temitope Adewale',37),
(203124,'Ademola','Suleiman','Male','23,Awolowo str,Garki,Abuja','Business Analyst','Yes',0700943,'Opeyemi Solanke',31),
(406328,'Folashade','Ogunkoya','Female','G15,Green gate,Oluyole,Ibadan','Project Management','No',0700209,'Yemisi Onigbinde',45),
(557562,'Anthony','Fagbemi','Male',NULL,'Custom Officer','No',0900185,'Temitope Adewale',37),
(204271,'Victor','Madueke','Male','09,Chika close,Eket,Uyo','Entrepreneur','No',0900185,'Uche Emeka',55)

Select *
From ZenithBankEmployeeData
Order by 5

Select *
from Customer

Insert into Customer values
(236348,'Chioma','Ikokwu','Female','09,Dekunle close,Banana Island,Lagos','Lawyer','Yes',0900878,'Tobi Gabriel',27),
(536348,'Chioma','Ikokwu','Female','09,Dekunle close,Banana Island,Lagos','Lawyer','Yes',0900878,'Tobi Gabriel',27),
(238281,'Denola','Marcus','Male','11,Frank Monda str,Ikoyi,Lagos','Actor','No',0900185,'Pascal Ebube',37),
(538281,'Denola','Marcus','Male','11,Frank Monda str,Ikoyi,Lagos','Actor','No',0900185,'Pascal Ebube',37),
(122867,'Bolarin','Omojola','Male','Purple gate,Oluyole,Ibadan','Rtd. Colonel','No',0700911,'Alimah Aliko',76),
(123541,'Adebowale','Godwin','Male','Jimeta,Adamawa','Entrepreneur','No',0702104,'Uche Emeka',55),
(221390,'Mariam','Godwin','Female','Jimeta,Adamawa','Student','No',0702104,'Uche Emeka',23),
(122291,'Abraham','Fesosaye','Male','26,Emeka house,Ibara Housing estate,Abeokuta','Businessman','Yes',0702994
,'Jumoke Olatunde',61),
(450315,'Imole','Olonade','Male',NULL,'Businessman','Yes',0900850,'Katherine Ozo',67),
(550315,'Global Optimus Ltd',NULL,NULL,'P.O Box 2887,Ikeja,Lagos','Businessman','Yes',0900850,'Katherine Ozo',67),
(265663,'Olajide','Badmus','Male','Molete,Ibadan','Jeweller','No',0702898,'Jumoke Olatunde',38),
(263817,'Erik','Edigjana','Male','Iyana Onipan,Idi Are,Ibadan','DJ','No',0702898,'Jumoke Olatunde',32),
(279483,'Yetunde','Edigjana','Female','Iyana Onipan,Idi Are,Ibadan','Artiste','No',0900491,'Katherine Ozo',28),
(259441,'Roselyn','Obadimu','Female','Apata, Ibadan','Banker','No',0700509,'Alimah Aliko',46)

Insert into Customer values
(270251,'Faith','Hassan','Female','NNPC,Apata,Ibadan','Architect','No',0700701,'Aishat Mohammed',50),
(246991,'Yemi','Abe','Male','Olabisi house,Akala Expressway,Ibadan','Rtd. Colonel','No',0700701,'King Umar',66),
(262374,'Deborah','Animashaun','Female','Red gate,Oluyole,Ibadan',NULL,'No',0702807,'Aishat Mohammed',49),
(285857,'Aishat','Kareem','Female','Red gate,Oluyole,Ibadan','Realtor','No',0900501,'Saheed Adigun',47),
(129584,'Akinlade Electronics',NULL,NULL,'Akala Expressway,Ibadan','Electronics store','No',0900093,
'Uche Emeka',NULL),
(529584,'Akinlade Electronics',NULL,NULL,'Akala Expressway,Ibadan','Electronics store','No',0900093,
'Uche Emeka',NULL),
(264139,'Romoke','Fayemi','Female','Erintin,Ibadan','Teacher',NULL,0812668,'Pascal Ebube',53),
(235212,'Opeyemi','Solanke','Female','Challenge Ibadan','Pharmacist',NULL,0702630,'Pascal Ebube',44),
(226384,'Kolade','Solanke','Male','Challenge Ibadan','Pharmacist',NULL,0702931,'Pascal Ebube',48),
(262312,'Jonathan','Kevin','Male','Hon. Olaifa House,Challenge,Ibadan','Technician',NULL,0713057,'Yinka Amos',55),
(121096,'Precious','Solanke','Female',NULL,'Software Engineer',NULL,0702720,'Yinka Amos',26),
(125077,'Olalekan','Alagbe','Male','15,Korra House,Challenge,Ibadan','System developer',NULL,0813004,'Katherine Ozo',27),
(240551,'Sodiq','Obadina','Male','Lagos','Pilot','Yes',0702675,'Katherine Ozo',28),
(406744,'Helen','Ajose','Female','Ojodu,Lagos','Air Hostess',NULL,0702747,'Aishat Mohammed',28),
(121872,'RCCG Righteous Parish',NULL,NULL,'Bodija,Ibadan','Church',NULL,NULL,'Yinka Amos',NULL),
(128497,'Aishat','Momodu','Female','Onigi junction,Iwo road,Ibadan','Businesss','No',0900491,'Aishat Mohammed',53)

Insert into Customer values
(406451,'Adedeji','Bello','Male','Ibadan','Technician','Yes',0900501,'Felicia Nwogwu',28),
(406021,'Ezekiel','Paul','Male','Ajah,Lagos','Writer','No',0900491,'Peter Ejike',36),
(120082,'Oluwaseun','Israel','Female','Bodija market,Ibadan','Teacher','No',0700509,'Aishat Mohammed',69),
(122206,'Ayomide Bakeries',NULL,NULL,'Aare junction,Oluyole Ibadan','Bakery',NULL,0900093,'Godwin Okonkwo',NULL),
(128650,'Compass Group of Schools',NULL,NULL,'Kuola,Ibadan','Nursery and Primary School','No',0702898,'Adura Akinyemi',NULL),
(453106,'Jason','Adeyemo','Male','Adeyemo Estate,Mokola,Ibadan','Engineer','No',0702807,'Aishat Mohammed',50),
(124111,'Maybelline','Joseph','Female','Oladapo str,Sango,Ibadan','SM Influencer','No',0702668,'Aminat Yusuf',57),
(258295,'Lateef','Afolayan','Male','Bodija market,Ibadan','Trader','No',0702630,'Ada Kayode',38),
(558295,'Lateef','Afolayan','Male','Bodija market,Ibadan','Trader','No',0702630,'Ada Kayode',38),
(276615,'Gabriel','Adeboye','Male','Charlie estate,Ojoo,Ibadan','Graphics designer','No',0703001,'Felicia 
Nwogwu',38),
(129323,'Grace','Adeboye','Female','Soka,Ibadan','Receptionist','No',0702630,'Aminat Yusuf',40),
(406723,'Jennifer','Raymond','Female','Agodi GRA,Ibadan',NULL,NULL,0702593,'King Umar',68),
(506723,'Jennifer','Raymond','Female','Agodi GRA,Ibadan',NULL,NULL,0702593,'King Umar',68),
(126454,'Keystone Lounge n Bar',NULL,NULL,'Agodi GRA,Ibadan','Lounge and Bar',NULL,0702720,'King Umar',NULL),
(121754,'Garrison Hotels',NULL,NULL,'Olatips Estate,Bodija,Ibadan','Hotel','No',0700701,'Peter Ejike',NULL),
(526454,'Keystone Lounge n Bar',NULL,NULL,'Agodi GRA,Ibadan','Lounge and Bar',NULL,0702720,'King Umar',NULL),
(521754,'Garrison Hotels',NULL,NULL,'Olatips Estate,Bodija,Ibadan','Hotel','No',0700701,'Peter Ejike',NULL),
(205379,'Winifred','Walter','Male','Bashorun,Ibadan',NULL,'Yes',0700715,'Aminat Yusuf',23),
(262731,'Winifred','Walter','Male','Bashorun,Ibadan',NULL,'Yes',0700715,'Aminat Yusuf',23),
(128216,'Rachael','Opeyemi','Female','LAUTECH,Ogbomosho','Student','No',0702675,'Peter Ejike',26),
(406117,'Gbenga','Babatunde','Male','Ogbomosho','Student','No',0702747,'Anu Baderin',19),
(245161,'Daniel','Omotehinse','Male','Oyo town',NULL,'No',0900311,'Arinze Paul',22),
(406544,'Sodiq','Obadina','Male','Lagos','Pilot','Yes',0702675,'Katherine Ozo',28),
(448814,'Helen','Ajose','Female','Ojodu,Lagos','Air Hostess',NULL,0702747,'Aishat Mohammed',28)

Insert into Customer values
(122652,'Dosunmu','Gbadebo','Male','Igbogi str, Oyo town','Teacher',NULL,0900057,'Kolapo Ademoye',37),
(217876,'Olaide','Makinde','Female','Oyo town','Nurse',NULL,0900370,'Bolu Fatunbi',45),
(210818,'Adura','Fajobi','Female','26,Folape road,Oyo town','Mechanic',NULL,NULL,'Bolu Fatunbi',34),
(453095,'Mutiu','Egunjobi','Male','Oyo town','Tailor',NULL,NULL,'Bolu Fatunbi',43),
(447254,'Mutiu','Egunjobi','Male','Oyo town','Tailor',NULL,NULL,'Bolu Fatunbi',43),
(127316,'Alase Trading Store',NULL,NULL,'Tdex Junct.,Oyo town','Gateman',NULL,0702820,'Esther Emmanuel',NULL),
(449699,'Wasiu','Alani','Male','Oyo town',NULL,NULL,NULL,'Bolu Fatunbi',56),
(217339,'Bosede','Alase','Female','16,Olajogun rd,Oyo town','Receptionist','No',0702649,'Bolu Fatunbi',23),
(210757,'Afeez','Babafemi','Male','Babafemi str.,Oyo town',NULL,'No',0702911,'Israel Igboekwe',21),	
(219446,'Moyosore','Karounwi','Female','02,Dejoke estate,Oyo town','Business','No',0900224,'Israel Igboekwe',56),
(128255,'Moore Bakeries',NULL,NULL,'Ifelaja str opp NNPC.,Oyo town','Bakery','No',0700203,'Israel Igboekwe',NULL),
(128979,'Nifez Stores',NULL,NULL,'Igbogi str.,Oyo town','Fashion store','No',0700628,'Esther Emmanuel',NULL)

Insert into Customer values
(129542,'Muslim Comprehensive High Schl',NULL,NULL,'Saki','School',NULL, 0900487,'Saliu Aderonmu',NULL),
(123312,'Command Day School',NULL,NULL,'Saki','School',NULL, 0910715,'Saliu Aderonmu',NULL),
(125307,'Goodness & Mercy Pry School',NULL,NULL,'Saki','Primary School',NULL, 0900122,'Peter Badejo',NULL),
(210422,'Florence','Olasunmbo','Female','Saki','Trader','No', 0710630,'Peter Badejo',25),
(211600,'Adamu','Aderinde','Male','Hon. Olawale str,Saki','Mechanic','No', 0810994,'Azeez Adeniran',71),
(215761,'Sago','Olawale','Male','Hon. Olawale str,Saki','Entrepreneur','Yes', 0900772,'Saliu Aderonmu',69),
(211110,'Fathia','Sodehinde','Female','Opp CDS,Saki','Teacher','No',0700298,'Saliu Aderonmu',46),
(210805,'David','Jones','Male','14,Ajose str. Saki','Entrepreneur','No',0715388,'Fatimah Mohammed',35),
(217714,'Adenike','Dauda','Female','Souda rd., Saki','Entrepreneur','No',0900474,'Fatimah Mohammed',60)

--I created the AccountInfo table using Excel. I will drop the table i created here and import the one created using excel

Drop table if Exists
AccountInfo

Select *
From[PORTFOLIO PROJECT].dbo.[AccountInformation]

Alter table [PORTFOLIO PROJECT].dbo.[AccountInformation]
drop column f8

select Opendate
from AccountInformation

select Opendate, convert(date,Opendate)
from [PORTFOLIO PROJECT].dbo.[AccountInformation]

Alter table [PORTFOLIO PROJECT]..[AccountInformation]
Add Opendate1 date

Update [portfolio project]..[accountinformation]
set Opendate1 =convert(date,Opendate)

Alter table Accountinformation
drop column Opendate

select firstname, lastname, concat(firstname,' ',lastname)
from ZegaEmployeeData

Alter table zegabankemployeedata
add Fullname varchar(50)

Update ZenithBankEmployeeData
set Fullname =concat(firstname,' ',lastname)

Select *
from zegaEmployeeData 
order by 5 asc

select *
from Customer
Order by AccountOfficer

Select *
from AccountInformation

select Cus.Accountnumber, Accinfo.accountname,Accinfo.accounttype, Cus.accountofficer,Zb.StaffLevel,
		AccInfo.accountstatus,Zb.Branchname, Accinfo.accountbalance
from customer Cus join accountinformation AccInfo
on Cus.accountnumber=Accinfo.accountnumber join
ZegaBankEmployeeData Zb on Cus.AccountOfficer=Zb.fullname

--To check closed accounts and their account officers

select Cus.Accountnumber, Accinfo.accountname,Accinfo.accounttype, Cus.accountofficer,Zb.StaffLevel,
		AccInfo.accountstatus,Zb.Branchname, Accinfo.accountbalance
from customer Cus join accountinformation AccInfo
on Cus.accountnumber=Accinfo.accountnumber join
ZegaBankEmployeeData Zb on Cus.AccountOfficer=Zb.fullname
where Accountstatus='closed'
--Total number of closed accounts recorded = 13

--To check the number of accounts that are open and running
select Cus.Accountnumber, Accinfo.accountname,Accinfo.accounttype, Cus.accountofficer,Zb.StaffLevel,
		AccInfo.accountstatus,Zb.Branchname, Accinfo.accountbalance
from customer Cus join accountinformation AccInfo
on Cus.accountnumber=Accinfo.accountnumber join
ZegaBankEmployeeData Zb on Cus.AccountOfficer=Zb.fullname
where Accountstatus='open' and accountofficer = 'Faith Lukman' and accounttype = 'corporate'
---- Total number of open accounts =219, closed accounts 13

--To determine the best performing branch, compare figures and note arrears of improvements 
select Cus.Accountnumber,Cus.accountofficer,Zb.Branchname, Accinfo.accountbalance,sum(accountbalance)
over(partition by branchname) TotalTarget
from customer Cus join accountinformation AccInfo
on Cus.accountnumber=Accinfo.accountnumber join
ZegaBankEmployeeData Zb on Cus.AccountOfficer=Zb.fullname
group by Cus.Accountnumber,Cus.accountofficer,Zb.Branchname, Accinfo.accountbalance
order by 5 desc

--According to the result Dugbe branch is the making the most profit = 129818639978.47 naira
The least is Saki branch and their performance will be analyzed later.

--To determine the best performing accountofficer and compare figures 
select Cus.Accountnumber,Cus.accountofficer,Zb.Branchname, Accinfo.accountbalance,
--sum(accountbalance)over(partition by Accountofficer) TotalTarget,
	count (cus.Accountnumber) over (partition by branchname) TotalCustomers,
	Avg (accountbalance) over (partition by Accountofficer) AverageAccountbalances, 
	Max (Accountbalance) over (partition by accountofficer) MaxAccountbalance,
	Min (Accountbalance) over (partition by accountofficer) minaccountbalance,
	sum (accountbalance) over (partition by Accountofficer) DDA
from customer Cus join accountinformation AccInfo
on Cus.accountnumber=Accinfo.accountnumber join
ZegaBankEmployeeData Zb on Cus.AccountOfficer=Zb.fullname
group by Cus.Accountnumber,Cus.accountofficer,Zb.Branchname, Accinfo.accountbalance,accinfo.Accountstatus,
accinfo.accountname,Cus.Accountnumber,Cus.accountofficer,Zb.Branchname, Accinfo.accountbalance
order by 7 desc

select 
	Case 
	When Accountbalance = 0 Then 'Closed Accounts'
	else 'Active accounts'
	end as AccountGroup,
	count (cus.Accountnumber) over (partition by accountname) TotalCustomers,
	Avg (accountbalance) over (partition by Accountofficer) AverageAccountbalances, 
	Max (Accountbalance) over (partition by accountofficer) MaxAccountbalance,
	Min (Accountbalance) over (partition by accountofficer) minaccountbalance,
	sum (accountbalance) over (partition by Accountofficer) DDA
from customer Cus join accountinformation AccInfo
on Cus.accountnumber=Accinfo.accountnumber join
ZegaBankEmployeeData Zb on Cus.AccountOfficer=Zb.fullname
group by Cus.Accountnumber,Cus.accountofficer,Zb.Branchname, Accinfo.accountbalance,accinfo.Accountstatus,
accinfo.accountname
--order by 2,6

With ZenithCTE (Accountnumber,accountofficer,Branchname,accountbalance, 
				AverageAccountbalances,maxaccountbalance,minaccountbalance,dda)
AS 
(select Cus.Accountnumber,Cus.accountofficer,Zb.Branchname, Accinfo.accountbalance,
--sum(accountbalance)over(partition by Accountofficer) TotalTarget,
	Avg (accountbalance) over (partition by Accountofficer) AverageAccountbalances, 
	Max (Accountbalance) over (partition by accountofficer) MaxAccountbalance,
	Min (Accountbalance) over (partition by accountofficer) minaccountbalance,
	sum (accountbalance) over (partition by Accountofficer) DDA
from customer Cus join accountinformation AccInfo
on Cus.accountnumber=Accinfo.accountnumber join
ZegaBankEmployeeData Zb on Cus.AccountOfficer=Zb.fullname
)
select Accountnumber,accountofficer,Branchname,accountbalance, 
				AverageAccountbalances,maxaccountbalance,minaccountbalance,(dda - 500000000) TargetBalForTheYear
from zenithcte
order by 3

With ZenithCTE (Accountnumber,accountofficer,stafflevel,Branchname,accountbalance, 
				AverageAccountbalances,maxaccountbalance,minaccountbalance,Profit)
AS 
(select Cus.Accountnumber,Cus.accountofficer,zb.StaffLevel,Zb.Branchname,Accinfo.accountbalance,
--sum(accountbalance)over(partition by Accountofficer) TotalTarget,
	Avg (accountbalance) over (partition by branchname) AverageAccountbalances, 
	Max (Accountbalance) over (partition by branchname) MaxAccountbalance,
	Min (Accountbalance) over (partition by branchname) minaccountbalance,
	sum (accountbalance) over (partition by branchname) Profit
from customer Cus join accountinformation AccInfo
on Cus.accountnumber=Accinfo.accountnumber join
ZegaBankEmployeeData Zb on Cus.AccountOfficer=Zb.fullname
)
select Accountnumber,accountofficer,Branchname,accountbalance, stafflevel
				AverageAccountbalances,maxaccountbalance,minaccountbalance,(profit - 300000000) TargetProfit
from zenithcte
where branchname = 'iwo road' and stafflevel='abo'
order by 3

select zb.staffid,zb.fullname,zb.stafflevel,zb.branchname
from customer Cus join accountinformation AccInfo
on Cus.accountnumber=Accinfo.accountnumber full outer join zegabankemployeedata zb
on Cus.AccountOfficer=Zb.fullname
where accinfo.accountnumber is null
