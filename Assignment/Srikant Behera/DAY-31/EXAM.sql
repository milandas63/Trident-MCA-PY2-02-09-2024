DROP DATABASE IF EXISTS information;
CREATE DATABASE IF NOT EXISTS information;
USE information;

SELECT 'student';

CREATE TABLE student(
     roll_no        INT(6)         NOT NULL   AUTO_INCREMENT,
     student_name   VARCHAR(30)    NOT NULL   UNIQUE,
     class_id       INT(10)        NOT NULL,
     section_id     VARCHAR(10)    NOT NULL,
     inoculation_id INT(15)        NOT NULL,
     PRIMARY KEY (roll_no)
                    );
INSERT INTO student VALUES
     (1,'Srikant',1,'A',3),
     (2,'Gopi',1,'A',4),
     (3,'Dibya',2,'B',3),
     (4,'Abhinash',2,'A',3),
     (5,'Vijay',1,'A',4),
     (6,'Jagan',2,'B',3),
     (7,'Harapriya',1,'A',3),
     (8,'Ipsita',1,'A',4),
     (9,'Priyadarsini',2,'B',3);


SELECT 'class';

CREATE TABLE class(
     class_id    INT(6)      NOT NULL AUTO_INCREMENT,
     class_desc  VARCHAR(20) NOT NULL UNIQUE,
     class_roman VARCHAR(20) NOT NULL UNIQUE,
     class_digit VARCHAR(10) ,
     class_words VARCHAR(10),
     PRIMARY KEY (class_desc)
                   );
INSERT INTO class VALUES
     (1,'Select','NULL','NULL','NULL'),
     (2,'Lower Kindergarten','LKG,'-2','Lower kindergarten'),
     (3,'Upper Kindergarten','UKG','-1','Upper Kindergarten'),
     (4,'Class I','I','1','First'),
     (5,'class II','II','2','Second'),
     (6,'class III','III,'3','Three'),
     (7,'class IV','IV','4','Four'),
     (8,'class V','V','5','Five'),
     (9,'class VI','VI','6','Six'),
     (10,'class VII','VII','7','Seven'),
     (11,'class VIII','VIII','8','Eight'),
     (12,'class IX','IX','9','Nine'),
     (13,'class X','X','10','Ten'),
     (14,'class XI','XI','11','Eleventh'),
     (15,'class XII','XII','12','Twelfth);

SELECT 'inoculation'
 
CREATE TABLE inoculation(
     inoculation_id     INT(6)       NOT NULL  AUTO_INCREMENT,
     inoculation_desc   VARCHAR(20)  NOT NULL,
     inoculation_abbr   VARCHAR(20)  NOT NULL,
     PRIMARY KEY (inoculation_desc)
                        );

INSERT INTO inoculation VALUES
     (1,'Triple Antigen','TA'),
     (2,'Polio','Po'),
     (3,'BCG','BCG'),
     (4,'Cholera','Cl'),
     (5,'Small Pox','SP'),
     (6,'Typhoid','TP'),
     (7,'Measles','MS'),
     (8,'Yellow-Fever','YF'),
     (9,'COVID-19','CV');

SELECT s.rool_no AS 'Roll_no', s.student_name AS 'Student_name', c.class_desc AS 'Class_desc', s.section_id AS 'Section_id' , i.inoculation_desc AS 'Inoculation_id' FROM student AS s
LEFT JOIN  class AS c ON s.class_desc =c.class_desc
LEFT JOIN  inoculation AS i ON s.inoculation_desc =i.inoculation_desc;


      
    
