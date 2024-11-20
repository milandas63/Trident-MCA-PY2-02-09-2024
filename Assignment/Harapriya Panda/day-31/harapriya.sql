 select * from student;
+----------+--------------+----------+------------+----------------+
| roll_num | student_name | class_id | section_id | inoculation_id |
+----------+--------------+----------+------------+----------------+
|        1 | Ram          |        1 |          1 |              1 |
|        2 | Sam          |        2 |          2 |              2 |
|        3 | Hari         |        3 |          3 |              3 |
|        4 | Laxaman      |        4 |          4 |              4 |
|        5 | Rabi         |        5 |          5 |              5 |
|        6 | Rahul        |        6 |          6 |              6 |
|        7 | Ramesh       |        7 |          7 |              7 |
|        8 | Soumya       |        8 |          8 |              8 |
|        9 | Soumya       |        9 |          9 |              9 |
+----------+--------------+----------+------------+----------------+


mysql> select * from class;
+----------+--------------------+-------------+-------------+--------------------+
| class_id | class_desc         | class_roman | calss_digit | class_words        |
+----------+--------------------+-------------+-------------+--------------------+
|        1 | Lower Kindergarten | LKG         |          -2 | Lower Kindergarten |
|        2 | Lower Kindergarten | LKG         |          -2 | Lower Kindergarten |
|        3 | Class I            | I           |           1 | First              |
|        4 | Class II           | II          |           2 | Second             |
|        5 | Class III          | III         |           3 | Third              |
|        4 | Class IV           | IV          |           4 | Fourth             |
|        5 | Class V            | V           |           5 | Fifth              |
|        6 | Class VI           | VI          |           6 | Sixth              |
|        7 | Class VII          | VII         |           7 | Seven              |
|        8 | Class VIII         | VIII        |           8 | Eight              |
|        9 | Class IX           | IX          |           9 | Nine               |
|       10 | Class X            | X           |          10 | Ten                |
|       11 | Class XI           | XI          |          11 | Eleventh           |
|       12 | Class XII          | XII         |          12 | Twelfth            |
+----------+--------------------+-------------+-------------+--------------------+
14 rows in set (0.00 sec)


mysql> select * from inoculation;
+----------------+------------------+------------------+
| inoculation_id | inoculation_desc | inoculation_abbr |
+----------------+------------------+------------------+
|              1 | Triple Antigen   | TA               |
|              2 | Polio            | PO               |
|              3 | BCG              | BCG              |
|              4 | Cholera          | CL               |
|              5 | Small Pox        | SP               |
|              6 | Typhoid          | TY               |
|              7 | Measles          | ME               |
|              8 | Yello Fever      | YF               |
|              9 | Covid-19         | CV               |
+----------------+--



select student.roll_no, student.student_name,class.class_desc, student.section_id,inoculation.inoculation_desc
        from student
        left join class on student.class_id=class.class_id
        left join inoculation on student.inoculation_id=inoculation.inoculation_id
