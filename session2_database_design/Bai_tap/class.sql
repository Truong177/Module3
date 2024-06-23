-- Câu 1: Lấy ra thông tin các học viên, và cho biết các học viên đang theo học lớp nào. 
select
   students.id,
    students.name,
    students.gender,
    students.phone,
    students.dob,
    classes.name AS class_name
from students
join classes on students.id_class = classes.id;
-- Câu 2: Lấy ra thông tin các học viên, và cho biết các học viên đang theo học lớp nào, lớp đó giảng viên nào dạy
SELECT 
    students.id AS student_id,
    students.name AS student_name,
    students.gender AS student_gender,
    students.phone AS student_phone,
    students.dob AS student_dob,
    classes.name AS class_name,
    teachers.name AS teacher_name
from students
join  classes ON students.id_class = classes.id
join teachers_teach_classes ON classes.id = teachers_teach_classes.id_class
join teachers ON teachers_teach_classes.id_teacher = teachers.id;
-- câu 3  Lấy ra thông tin các học viên đang theo học tại các lớp kể cả các học viên không theo học lớp nào.
select * from students
--  câu 4  Lấy thông tin của các học viên tên ‘Tien’ và ‘Toan’. (dữ liệu tự insert để thỏa mãn)
select * from students
where name like '%Tien%' or name like '%Toan'; 
-- câu 5: Lấy ra số lượng học viên của từng lớp.
SELECT 
    classes.id AS class_id,
    classes.name AS class_name,
    COUNT(students.id) AS student_count
FROM
    classes
LEFT JOIN
    students ON classes.id = students.id_class
GROUP BY
    classes.id, classes.name;
-- câu 6:  Lấy ra danh sách học viên và sắp xếp tên theo alphabet
select * from students order by name;   