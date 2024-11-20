import mysql.connector as mc
from tabulate import tabulate 

con=mc.connect(host='localhost',username='root',password='root',database='examdb')
c=con.cursor()

c.execute("""
        select student.roll_no, student.student_name,class.class_desc, student.section_id,inoculation.inoculation_desc
        from student
        left join class on student.class_id=class.class_id
        left join inoculation on student.inoculation_id=inoculation.inoculation_id
         """)

data=c.fetchall()
headers=['Roll No','Student Name','Class Desc','Section Id','Inoculation Desc']

print(tabulate(data,headers=headers,tablefmt='pretty'))
con.close()
