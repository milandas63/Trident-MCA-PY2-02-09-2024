import mysql.connector

conn = mysql.connector.connect(
	host = 'localhost',
	user = 'root',
	password = 'root',
	database = 'document_db'
)
print(conn)

curs = conn.cursor()
curs.execute("SELECT s.roll_no AS 'ID', s.student_name AS 'STUDENT NAME', s.section_id AS 'SECTION', c.class_desc AS 'CLASS', i.inoculation_desc AS 'INOCULATION' FROM student AS s LEFT JOIN class AS c ON s.class_id=c.class_id LEFT JOIN inoculation AS i ON s.inoculation_id=i.inoculation_id")

for row in curs:
	for col in row:
		print(col, end='  ')
	print()