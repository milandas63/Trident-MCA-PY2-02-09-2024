import mysql.connector as mc
from tabulate import tabulate 

connn=mc.connect(host='localhost',username='root',password='root',database='mydatabase')
cur=connn.cursor()

c.execute("""
        select student.roll_no, student.student_name,class.class_desc, student.section_id,inoculation.inoculation_desc
        from student
        left join class on student.class_id=class.class_id
        left join inoculation on student.inoculation_id=inoculation.inoculation_id
         """)

dsiplay=c.fetchall()
headers=['Roll No','Student Name','Class Desc','Section Id','Inoculation Desc']

print(tabulate(display,headers=headers,tablefmt='pretty'))
connn.close()
