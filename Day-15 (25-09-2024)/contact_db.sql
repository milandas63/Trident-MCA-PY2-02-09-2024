#########################################################
####                                                 ####
####                 Contact db                      ####
####                                                 ####
####                                                 ####
#########################################################
DROP DATABASE IF EXISTS contact_db;
CREATE DATABASE IF NOT EXISTS contact_db;
USE contact_db;


###################
#    relation     #
###################
SELECT 'relation';
CREATE TABLE relation(
	rel_id		INT(6)				NOT NULL AUTO_INCREMENT,
	rel_name    VARCHAR(30)         NOT NULL UNIQUE,
	rel_abbr    VARCHAR(10)         UNIQUE,
	PRIMARY KEY(rel_id)
);
INSERT INTO relation VALUES
	(1, 'Blood Relation',		NULL),
	(2, 'School Friend',		NULL),
	(3, 'College Friend',		NULL),
	(4, 'Professional Friend',	NULL),
	(5, 'Club Member',			NULL),
	(6, 'Village',				NULL);


###################
#    location     #
###################
SELECT 'location';
CREATE TABLE location(
	loc_id		INT(6)				NOT NULL AUTO_INCREMENT,
	loc_name    VARCHAR(30)         NOT NULL UNIQUE,
	loc_abbr    VARCHAR(10)         UNIQUE,
	PRIMARY KEY(loc_id)
);
INSERT INTO location VALUES
	(1, 'Balasore', NULL),
	(2, 'Bhubaneswar',	NULL),
	(3, 'Berhampur',	NULL),
	(4, 'Cuttack',		NULL),
	(5, 'Mayurbhanj',	NULL),
	(6, 'Konark',		NULL),
	(7, 'Kendrapara',	NULL),
	(8, 'New Delhi',	NULL),
	(9, 'Bangalore',	NULL),
	(10, 'USA',			NULL);


##################
#    contact     #
##################
SELECT 'contact';
CREATE TABLE contact(
	con_id		INT(6)				NOT NULL AUTO_INCREMENT,
	name        VARCHAR(30)			NOT NULL,
	gender		ENUM('F','M','O')	NOT NULL,
	mobile_no1  VARCHAR(15)			NOT NULL,
	mobile_no2  VARCHAR(15),
	email_id1   VARCHAR(40),
	email_id2   VARCHAR(40),
	rel_id      INT(6)              NOT NULL REFERENCES relation(rel_id),
	loc_id      INT(6)              NOT NULL REFERENCES location(loc_id),
	PRIMARY KEY(con_id)
);
INSERT INTO contact VALUES
	(1, 'Gopinath Ojha',			'M', '7751847636', NULL, 'gopin5427@gmail.com',					NULL, 2, 5),
	(2, 'Abinash Patra',			'M', '7848039329', NULL, 'patraabinash374@gmail.com',			NULL, 3, 6),
	(3, 'Priyadarshini Mohapatra',	'F', '8917460932', NULL, 'priyadarshinimohapatra328@gmail.com', NULL, 2, 7),
	(4, 'Harapriya Panda',			'F', '6372322013', NULL, 'harapriya1813@gmail.com',				NULL, 3, 2),
	(5, 'Ipsita Nayak',				'F', '8144661279', NULL, 'ipsitanayak923@gmail.com',			NULL, 3, 2),
	(6, 'Bijay Kumar Behera',		'M', '7205384824', NULL, 'bijaybehera594@gmail.com',			NULL, 3, 2),
	(7, 'Srikant Behera',			'M', '7978841760', NULL, 'kumarsrikant0788@gmail.com',			NULL, 3, 2),
	(8, 'Dibyaranjan Sethi',		'M', '9114168580', NULL, 'dibyaranjanip9@gmail.com',			NULL, 3, 2),
	(9, 'Jagan Lenka',				'M', '9337849824', NULL, 'jaganlenka76@gmail.com',				NULL, 3, 2);


SELECT c.con_id AS 'ID', c.name AS 'CONTACT-NAME', c.gender AS 'SEX', c.mobile_no1 AS 'MOBILE', r.rel_name AS 'RELATION', l.loc_name AS 'LOCATION' FROM contact AS c
LEFT JOIN relation AS r ON c.rel_id=r.rel_id
LEFT JOIN location AS l ON c.loc_id=l.loc_id;

