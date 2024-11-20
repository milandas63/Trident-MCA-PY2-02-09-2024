drop database if exists mydatabase;
create database mydatabase;
use mydatabase;
drop table if exists student;
create table student(roll_no int, student_name varchar(10), class_id int , section_id int, inoculation_id int);

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
create table class(class_id int,class_desc varchar(50), class_roman varchar(10), class_digit int, class_words varchar(50));

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
insert into class values  (11,'class IX','IX',9,'Ninth');
insert into class values  (12,'class X','X',10,'Tenth');
insert into class values  (13,'class XI','XI',11,'Eleventh');
insert into class values  (14,'class XII','XII',12,'Twelfth');


drop table if exists inoculation;
create table inoculation(inoculation_id int,inoculation_desc varchar(50),inoculation_abbr varchar(10));

insert into inoculation values(1,'Triple Antigen','TA');   
insert into inoculation values(2,'Polio','PO');
insert into inoculation values(3,'BCG','BCG');
insert into inoculation values(4,'Cholera','CL');   
insert into inoculation values(5,'Small Pox','SP');
insert into inoculation values(6,'Typhoid','TY');
insert into inoculation values(7,'Measles','ME');   
insert into inoculation values(8,'Yello Fever','YF');
insert into inoculation values(9,'Covid-19','CV');


select student.roll_no, student.student_name,class.class_desc, student.section_id,inoculation.inoculation_desc
        from student
        left join class on student.class_id=class.class_id
        left join inoculation on student.inoculation_id=inoculation.inoculation_id;
