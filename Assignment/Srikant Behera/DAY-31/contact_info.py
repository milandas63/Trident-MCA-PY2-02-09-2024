import mysql.connector

conn = mysql.connector.connect(
	host = 'localhost',
	user = 'root',
	passwd = '2003',
	database = 'info_db'
)

curs = conn.cursor()
curs.execute("SELECT s.rool_no AS 'Roll_no', s.student_name AS 'Student_name', c.class_desc AS 'Class_desc', s.section_id AS 'Section_id' , i.inoculation_desc AS 'Inoculation_id' FROM student AS s LEFT JOIN class AS c ON s.class_desc=c.class_desc LEFT JOIN inoculation AS i ON s.inoculation=i.inoculation_desc;")

for row in curs:
	for col in row:
		print(col, end='  ')
	print()
