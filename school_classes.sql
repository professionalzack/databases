CREATE TABLE courses (
  "id"   integer,
  "name" varchar,
  "professor" varchar,
  
  
  PRIMARY KEY ("id")
);

CREATE TABLE students (
  "id"   INTEGER,
  "name" varchar,
  "major" varchar,

  
  PRIMARY KEY ("id")
);

CREATE TABLE progress_reports (
  "id"               integer,
  "course_id"        integer,
  "student_id"      integer,
    "grade"          varchar(2),
  
  FOREIGN KEY ("student_id")
    REFERENCES "students" ("id")
    ON DELETE CASCADE,
  
  FOREIGN KEY ("course_id")
    REFERENCES "courses" ("id")
    ON DELETE CASCADE,
  
  PRIMARY KEY ("id")
);



INSERT INTO courses
  ("id", "name", "professor")
VALUES
 (1, 'Homeroom', 'Albus Dumbledore'),
 (2, 'Potions', 'Severus Snape'),
 (3, 'Humanities', 'Dolores Umbridge'),
 (4, 'Science', 'Bathsheda Babbling'),
 (5, 'Metaphysics', 'Rubeus Hagrid'),
 (6, 'P.E.', 'Wilhelmina Grubbly-Plank');


INSERT INTO students
  ("id", "name", "major")
VALUES
  ( 1,   'Hermione Granger', 'Magic'),
  ( 2,   'Terry Boot', 'Potions'),
  ( 3,   'Padma Patil', 'History'),
  ( 4,   'Cho Chang', 'Business'),
  ( 5,   'Cedric Diggory', 'Sports'),
  ( 6,   'Harry Potter', 'Comedy');

INSERT INTO progress_reports
  ("id", "student_id", "course_id", "grade")
VALUES
 ( 1, 1, 1, 'P'),
 ( 2, 1, 2, 'B+'),
 ( 3, 1, 3, 'B'),
 ( 4, 2, 1, 'P'),
 ( 5, 2, 3, 'A-'),
 ( 6, 3, 4, 'A+'),
 ( 7, 4, 3, 'C'),
 ( 8, 3, 5, 'B'),
 ( 9, 4, 1, 'F'),
 ( 10, 6, 6, 'B-'),
 ( 11, 6, 4, 'B+'),
 ( 12, 5, 1, 'P'),
 ( 13, 2, 1, 'F'),
 ( 14, 5, 3, 'B'),
 ( 15, 6, 1, 'P'),
 ( 16, 1, 6, 'A+'),
 ( 17, 2, 5, 'A');


