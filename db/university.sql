DROP TABLE courses;
DROP TABLE students;
DROP TABLE timetables;

CREATE TABLE courses (
  id serial4 primary key,
  name VARCHAR(255)
  );

CREATE TABLE students (
  id serial4 primary key,
  name VARCHAR(255)
  );

CREATE TABLE timetables (
  id serial4 primary key,
  course_id int4,
  student_id int4 
  );

