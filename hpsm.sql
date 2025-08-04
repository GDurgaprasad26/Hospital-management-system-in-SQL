create database HPSM;

use HPSM;
create table patient_details(
SL_NO int unique,
NAME varchar(50),
AGE int,
GENDER varchar(10),
ADRESS text,
PROBLEM varchar(20),
APPOINTMENT date
);
DROP table doctor_details;
select *from patient_details;
insert into patient_details values
(1,'Gopi',25,'Male','Ongole','Fever','2025-07-30'),
(2,'charan',21,'Male','Nellore','Legdamage','2025-06-25'),
(3,'selvam',30,'Male','Rasipuram','backbone problem','2025-06-13');

use HSPM;
create table doctor_details(
DOCTOR_ID varchar(50) unique,
NAME varchar(50),
Specialization text,
Contact_number varchar(25));
select * from doctor_details;
insert into doctor_details values
('MS21','Dr.Sathya','Orthopaedics',9934559922),
('MS34','Dr.Sai','Neurologist',8693618877),
('MS44','Dr.Narendra','Ophthalmologist',7838456712),
('MS12','Dr.Prasad','cardiologist',5647234444);

create table appointment(
Appointment_ID int unique,
Patient_ID varchar(30),
Doctor_ID varchar(30),
Appointment_Date date);
DROP table appointment;
select * from appointment;
insert into appointment values
(203,'PS23','MS21','2025-07-31'),
(303,'PS34','MS12','2025-07-31'),
(256,'PS38','MS44','2025-07-31'),
(435,'PS40','MS34','2025-07-31');

create table Treatments(
treatment_id int,
appointment_id int,
test_type text,
price int);
select * from Treatments;
insert into Treatments values
(20,203,'Blood test',2000),
(34,303,'MRI SCAN',5000),
(42,256,'CT SCAN',7000),
(54,435,'ECG SCAN',3000); 

create table medicians(
patient_id int,
doctor_id varchar(20),
Tablets text,
Injections text);
select * from medicians;
DROP table medicians;
insert into medicians values
(203,'MS21','livogen,fefol,ferrous sulfate','venofer,ferinjection'),
(303,'MS12','calcirol,uprise d3','human insulin'),
(435,'MS44','amlong,stamlo,telma','lasix,heparn'),
(256,'MS34','metformin,prednisolone,ranitidine','normal saline,furosemide');

create table bill(
Appointment_cost int,
Test_cost int,
Medician_cost int,
Total int);
select*from bill;
insert into bill values
(300,2000,2500,4800),
(300,5000,3000,8300),
(300,7000,4000,11300),
(300,3000,2000,5300);