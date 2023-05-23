1. Опишите схему таблицу "расписание занятий"

CREATE TABLE timetable (
  timetable_id int PRIMARY KEY AUTO_INCREMENT,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  group_id int NOT NULL
);



2. Опишите схему таблицы "преподаватели"

CREATE TABLE teachers (
	teachers_id int PRIMARY KEY AUTO_INCREMENT,
  	created_at timestamp DEFAULT CURRENT_TIMESTAMP,
);



3. Вывести имена студентов и названия групп, в которых они состоят

SELECT 
	students.fullname,
	groups.name
FROM students_attachments
JOIN students ON students.student_id=students_attachments.student_id
JOIN groups ON groups.group_id=students_attachments.group_id;
