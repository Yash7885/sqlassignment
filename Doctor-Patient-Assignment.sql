create database hospital;
create table patient
(
patient_id int primary key,
first_name varchar(30),
last_name varchar (30),
gender char(1),
birth_date date,
city varchar(30),
province_id char(1),
allergies varchar(30),
height decimal(3,0),
weight decimal(4,0)


);

create table doctor
(
doctor_id int primary key,
first_name varchar(30),
last_name varchar (30),
specialty varchar(30)

);

create table admissions
(
patient_id int,
admission_date date,
discharge_date date,
diagonsis varchar(50),
attending_doctor_id int

);



insert into patient values(1,'vinay','sharma','m','2002-08-2','pune','O','dust',120,60),
(2,'vijay','soni','m','2020-03-15','pune','L','Penicillin',130,55),
(3,'yash','shukla','m','2002-08-19','pune','Y',null,125,62),
(4,'omkar','gire','m','2010-05-7','mumbai','R','Morphine',110,30),
(5,'mitchel','stark','m','2007-10-15','nagpur','U',null,125,65),
(6,'jon','lee','m','2001-04-12','toranto','K','Milk',110,25),
(7,'stive','smith','m','2000-10-19','sidney','N',null,140,75),
(8,'raj','sharma','m','1990-12-10','nagpur','F','egg',115,50),
(9,'anjali','mishra','f','2003-01-16','mumbai','D','Fruit',120,35),
(10,'avinash','mishra','m','2012-05-2','pune','o',null,220,80);


insert into doctor values(01,'Dr.john','stack','Cardiology'),
(02,'Dr.karen','taylor','Neurology'),
(03,'Dr.robert','wilson','Orthopedics'),
(04,'Dr.james','young','Cardiology'),
(05,'Dr.will','smith','General Medicine');

insert into admissions values (1,'2025-06-10','2025-06-15','flu',05),
(2,'2025-06-10','2025-06-15','asthma',04),
(3,'2024-05-1','2024-05-10','fever',05),
(4,'2025-03-5','2025-03-15','armbroken',03),
(5,'2025-02-10','2025-02-20','Food Poisoning',05),
(6,'2025-01-20','2025-01-30','fracture',04),
(7,'2024-04-22','2024-04-27','Cough',05),
(8,'2025-02-1','2025-02-6','Allergy',02),
(9,'2023-11-25','2023-11-30','Dehydration',04),
(10,'2025-06-10','2025-06-17','surgery',03);
select * from patient;

-- 1. Show the first name, last name and gender of patients who’s gender is ‘M’ 
select first_name,last_name,gender from patient where gender='m';
-- 2. Show the first name & last name of patients who does not have any allergies 
select first_name,last_name from patient where allergies is null;
-- 3. Show the patients details that start with letter ‘C’ 
select * from patient where first_name like 'C%';
-- 4. Show the patients details that height range 100 to 200 
select * from patient where height between 100 and 200;
-- 5. Update the patient table for the allergies column. Replace ‘NKA’ where allergies is null 
update patient set allergies = 'NKA' where allergies is null;
-- 6. Show how many patients have birth year is 2020 
select count(*) as 'total patient' from patient where year(birth_date) = 2020;
-- 7. Show the patients details who have greatest height 
select * from patient where height = (select max(height)from patient);
-- 8. Show the total amount of male patients and the total amount of female patients in the 
-- patients table. 
select gender  , count(*) as 'total ' from patient group by gender;
-- 9. Show first and last name, allergies from patients which have allergies to either 'Penicillin' or 
-- 'Morphine'. Show results ordered ascending by allergies then by first_name then by 
-- last_name. 
select first_name,last_name,allergies from patient where allergies in ('penicillin','morphine')
order by allergies , first_name,last_name;
-- 10. Show first_name, last_name, and the total number of admissions attended for each doctor. 
-- Every admission has been attended by a doctor. 
select d.first_name,d.last_name , count(a.patient_id) as 'total addmission' 
from doctor d
inner join admissions a on d.doctor_id=a.attending_doctor_id
group by d.doctor_id,d.first_name,d.last_name;

-- 11. For every admission, display the patient's full name, their admission diagnosis, and their 
-- doctor's full name who diagnosed their problem.
select concat(p.first_name,'',p.last_name)as 'patient full name',a.diagonsis,
concat(d.first_name,'',d.last_name) 
from admissions a 
inner join patient p on p.patient_id=a.patient_id
inner join doctor d  on a.attending_doctor_id=d.doctor_id;
 





