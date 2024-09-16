DROP DATABASE IF EXISTS trident;
CREATE DATABASE IF NOT EXISTS trident;
USE trident;

#############################
SELECT "employee";
DROP TABLE IF EXISTS employee;
CREATE TABLE employee(
  id			int(6)					NOT NULL AUTO_INCREMENT,
  name			varchar(30)				NOT NULL UNIQUE,
  dob			date					DEFAULT NULL,
  gender		enum('F','M','O')		NOT NULL,
  salary		double(12,2)			DEFAULT NULL,
  age			int(3)					DEFAULT NULL,
  profession	varchar(30)				DEFAULT NULL,
  PRIMARY KEY (id)
);

INSERT INTO employee VALUES
	(1,	"Payel",		"2000-07-03",	"F",	500000,	23,	"Developer"),
  	(2,	"Twinkle",		"2002-10-05",	"F",	400000,	22,	"Software engineer"),
	(3,	"Asha",			"2009-02-10",	"F",	350000,	21,	"Data analyst"),
	(4,	"Manab",		"2004-02-11",	"M",	300000,	20,	"System analyst"),
	(5,	"Swati",		"2002-05-11",	"F",	400000,	23,	"Developer"),
	(6,	"Priya",		"2001-03-10",	"F",	420000,	21,	"Designer"),
	(7,	"Priyadarsi",	"2001-03-10",	"F",	420000,	21,	"Designer"),
	(8,	"Harapriya",	"2001-03-10",	"F",	420000,	21,	"Designer"),
	(9,	"Bijay",		"2001-03-10",	"F",	420000,	21,	"Designer");


############################
SELECT "information";
DROP TABLE IF EXISTS information;
CREATE TABLE information (
	slno int(6) NOT NULL AUTO_INCREMENT,
	id int(6) NOT NULL REFERENCES employee(id),
	name varchar(30) NOT NULL,
	DOB date DEFAULT NULL,
	gender enum('F','M','O') NOT NULL,
	email varchar(30) NOT NULL,
	phone int(20) DEFAULT NULL,
	PRIMARY KEY (slno)
);

INSERT INTO information VALUES
	(1,1,'MILAN','1960-07-09','M','milan23@gmail',91678329),
	(2,2,'Gopinath Ojha','2002-06-07','M','gopi73@gmail',91674239),
	(3,3,'Abinash Patra','2002-07-05','M','abhi73@gmail',81674529),
	(4,4,'Priyadarshini Mohapatra','2002-01-25','F','pree73@gmail',8146789),
	(5,5,'Harapriya Panda','2002-10-13','F','hara73@gmail',8189234),
	(6,6,'Ipsita Nayak','2002-01-07','F','ipsita73@gmail',8167934),
	(7,7,'Bijay Kumar Behera','2003-04-06','M','bijay73@gmail',8187342),
	(8,8,'Srikant Behera','2002-02-09','M','srikant91@gmail',8145821),
	(9,9,'Dibyaranjan Sethi','2003-11-05','M','dibya41@gmail',8123761);


################################
SELECT "marks";
DROP TABLE IF EXISTS marks;
CREATE TABLE marks (
	slno int(6) NOT NULL AUTO_INCREMENT,
	id int(6) NOT NULL REFERENCES employee(id),
	English int(20) DEFAULT NULL,
	MATHS int(20) DEFAULT NULL,
	SCIENCE int(20) DEFAULT NULL,
	PRIMARY KEY(slno)
);

INSERT INTO marks VALUES
	(1, 1, 89,78,91),
	(2, 2, 78,71,78),
	(3, 3, 90,78,68),
	(4, 4, 89,76,89),
	(5, 5, 90,67,67),
	(6, 6, 67,78,76),
	(7, 7, 89,88,56),
	(8, 8, 67,78,67),
	(9, 9, 89,56,63);

