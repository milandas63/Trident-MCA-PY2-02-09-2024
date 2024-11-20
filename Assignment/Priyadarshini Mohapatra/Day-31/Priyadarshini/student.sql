Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 19
Server version: 5.5.35 MySQL Community Server (GPL)

Copyright (c) 2000, 2013, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use document_db;
Database changed
mysql> show tables;
+-----------------------+
| Tables_in_document_db |
+-----------------------+
| class                 |
+-----------------------+
1 row in set (0.00 sec)

mysql> select 'inoculation';
+-------------+
| inoculation |
+-------------+
| inoculation |
+-------------+
1 row in set (0.00 sec)

mysql> create table inoculation(
    -> inoculation_id int(10) not null Auto_increment,
    -> inoculation_desc varchar(60) not null unique,
    -> inoculation_abbr varchar(70) not null unique,
    -> primary key (inoculation_id)
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> desc inoculation;
+------------------+-------------+------+-----+---------+----------------+
| Field            | Type        | Null | Key | Default | Extra          |
+------------------+-------------+------+-----+---------+----------------+
| inoculation_id   | int(10)     | NO   | PRI | NULL    | auto_increment |
| inoculation_desc | varchar(60) | NO   | UNI | NULL    |                |
| inoculation_abbr | varchar(70) | NO   | UNI | NULL    |                |
+------------------+-------------+------+-----+---------+----------------+
3 rows in set (0.01 sec)

mysql> insert into inoculation values
    -> (1,'Triple Antigent','TA'),
    -> (2,'Polio','PO'),
    -> (3,'BCG','BCG'),
    -> (4,'Cholera','CL'),
    -> (5,'Small Pox','SP'),
    -> (6,'Typhoid','TY'),
    -> (7,'Measles','ME'),
    -> (8,'Yello Fever','YF'),
    -> (9,'Covid-19','CV');
Query OK, 9 rows affected (0.01 sec)
Records: 9  Duplicates: 0  Warnings: 0

mysql> select 'student';
+---------+
| student |
+---------+
| student |
+---------+
1 row in set (0.00 sec)

mysql> create table student(
    -> roll_no int(10) not null Auto_increment,
    -> student_name varchar(80) not null unique,
    -> class_id int(10) not null references class(class_id),
    -> section_id varchar(80) not null,
    -> inoculation_id int(10) not null references inoculation(inoculation_id)
    -> primary key (roll-no)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'primary key (roll-no)
)' at line 7
mysql> create table student(
    -> roll_no int(10) not null Auto_increment,
    -> student_name varchar(80) not null unique,
    -> class_id int(10) not null references class(class_id),
    -> section_id varchar(80) not null,
    -> inoculation_id int(10) not null references inoculation(inoculation_id),
    -> primary key (roll-no),
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-no),
)' at line 7
mysql> create table student(
    -> roll_no int(10) not null Auto_increment,
    -> student_name varchar(80) not null unique,
    -> class_id int(10) not null references class(class_id),
    -> section_id varchar(80) not null,
    -> inoculation_id int(10) not null references inoculation(inoculation_id),
    -> primary key (roll_no)
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> insert into student values
    -> (1,'Priya',2,'A1',5),
    -> (2,'Ipsita',3,'B2',6),
    -> (3,'Swati',4,'C2',2),
    -> (4,'Sima',7,'D2',1),
    -> (5,'Nitu',5,'E2',1),
    -> (6,'Omm',8,'F2',4),
    -> (7,'Sai',2,'G2',3),
    -> (8,'Pintu',3,'H2',9),
    -> (9,'Chintu',7,'I2',4),
    -> (10,'Rinky',5,'J2',6);
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 
mysql> select s.roll_no as 'ID',s.student_name as 'STUDENT NAME',s.section_id as 'SECTION',c.class_desc as 'CLASS',i.inoculation_desc as 'INOCULATION' from  student as s
    -> LEFT JOIN class AS c ON s.class_id=c.class_id
    -> LEFT JOIN inoculation AS i ON s.class_id=i.inoculation_id;
+----+--------------+---------+--------------------+-------------+
| ID | STUDENT NAME | SECTION | CLASS              | INOCULATION |
+----+--------------+---------+--------------------+-------------+
|  1 | Priya        | A1      | Lower Kindergarten | Polio       |
|  2 | Ipsita       | B2      | Upper Kindergarten | BCG         |
|  3 | Swati        | C2      | Class I            | Cholera     |
|  4 | Sima         | D2      | Class IV           | Measles     |
|  5 | Nitu         | E2      | Class II           | Small Pox   |
|  6 | Omm          | F2      | Class V            | Yello Fever |
|  7 | Sai          | G2      | Lower Kindergarten | Polio       |
|  8 | Pintu        | H2      | Upper Kindergarten | BCG         |
|  9 | Chintu       | I2      | Class IV           | Measles     |
| 10 | Rinky        | J2      | Class II           | Small Pox   |
+----+--------------+---------+--------------------+-------------+
10 rows in set (0.00 sec)
