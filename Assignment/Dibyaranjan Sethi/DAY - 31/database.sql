drop database if exists mydatabase;
create database mydatabase;
use mydatabase;
drop table if exists student;
create table student(roll_no int, std_name varchar(10), cls_id int , sec_id int, inoculation_id int);

insert into student values(1,'Gopinath',1,1,1);
insert into student values(2,'Bijay',2,2,2);
insert into student values(3,'Abhi',3,3,3);
insert into student values(5,'Dibya',4,4,4);
insert into student values(6,'Harapriya',5,5,5);
insert into student values(7,'Priya',6,6,6);
insert into student values(8,'Srikant',7,7,7);
insert into student values(3,'Goutam',8,8,8);
insert into student values(9,'Jagan',9,9,9);

drop table if exists class;
create table class(cls_id int,cls_desc varchar(30), cls_roman varchar(10), cls_digit int, cls_words varchar(50));

insert into class values  (1,'Lower Kindergarten','LKG',-2,'Lower Kindergarten');
insert into class values  (2,'upper Kindergarten','UKG',-1,'upper Kindergarten');
insert into class values  (3,'class I','I',1,'First');
insert into class values  (4,'class II','II',2,'Second');
insert into class values  (5,'class III','III',3,'Third');
insert into class values  (6,'class IV','IV',4,'Fourth');
insert into class values  (7,'class V','V',5,'Fifth');
insert into class values  (8,'class VI','VI',6,'Sixth');
insert into class values  (9,'class VII','VII',7,'Seventh');
insert into class values  (10,'class VIII','VIII',8,'Eighth');

DROP TABLE IF EXISTS vaccination;
CREATE TABLE vaccination (
    vaccination_id INT,
    vaccination_name VARCHAR(50),
    vaccination_code VARCHAR(10)
);

INSERT INTO vaccination VALUES (1, 'HPV Vaccine', 'HPV');   
INSERT INTO vaccination VALUES (2, 'Pneumococcal Vaccine', 'PNC');
INSERT INTO vaccination VALUES (3, 'Shingles Vaccine', 'SHN');
INSERT INTO vaccination VALUES (4, 'Diphtheria Vaccine', 'DPT');   
INSERT INTO vaccination VALUES (5, 'Malaria Vaccine', 'MLR');
INSERT INTO vaccination VALUES (6, 'Hepatitis A Vaccine', 'HPA');
INSERT INTO vaccination VALUES (7, 'Zoster Vaccine', 'ZST');   
INSERT INTO vaccination VALUES (8, 'Typhoid Conjugate Vaccine', 'TCV');
INSERT INTO vaccination VALUES (9, 'RSV Vaccine', 'RSV');


