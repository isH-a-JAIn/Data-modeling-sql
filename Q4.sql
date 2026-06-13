-- Inserting data into Instructors
INSERT INTO Instructors (InstructorID, InstructorName) VALUES (2, 'Dr. Brown');
INSERT INTO Instructors (InstructorID, InstructorName) VALUES (3, 'Dr. Smith');
INSERT INTO Instructors (InstructorID, InstructorName) VALUES (4, 'Dr. White');

-- Inserting data into Students
INSERT INTO Students (StudentID, FirstName, LastName, Email, Major, AdvisorID) 
VALUES (1, 'John', 'Doe', 'john.doe@example.com', 'Computer Science', 3);
INSERT INTO Students (StudentID, FirstName, LastName, Email, Major, AdvisorID) 
VALUES (2, 'Jane', 'Doe', 'jane.doe@example.com', 'Business', 2);
INSERT INTO Students (StudentID, FirstName, LastName, Email, Major, AdvisorID) 
VALUES (3, 'Jim', 'Beam', 'jim.beam@example.com', 'Mathematics', 3);
INSERT INTO Students (StudentID, FirstName, LastName, Email, Major, AdvisorID) 
VALUES (4, 'Alice', 'Johnson', 'alice.johnson@example.com', 'Computer Science', 4);
INSERT INTO Students (StudentID, FirstName, LastName, Email, Major, AdvisorID) 
VALUES (5, 'John', 'Smith', 'john.smith@example.com', 'Business', 2);
INSERT INTO Students (StudentID, FirstName, LastName, Email, Major, AdvisorID) 
VALUES (6, 'Bill', 'Chu', 'bill.chu@example.com', 'Mathematics', 3);
INSERT INTO Students (StudentID, FirstName, LastName, Email, Major, AdvisorID) 
VALUES (7, 'David', 'Small', 'david.small@example.com', 'Computer Science', 3);


-- Inserting data into Courses
INSERT INTO Courses (CourseID, CourseName, CreditHours) VALUES (101, 'Data Structures', 3);
INSERT INTO Courses (CourseID, CourseName, CreditHours) VALUES (102, 'Calculus', 4);
INSERT INTO Courses (CourseID, CourseName, CreditHours) VALUES (103, 'Database Systems', 3);
INSERT INTO Courses (CourseID, CourseName, CreditHours) VALUES (104, 'Linear Algebra', 3);
INSERT INTO Courses (CourseID, CourseName, CreditHours) VALUES (105, 'Introduction to Business', 3);


-- Inserting data into Teaches
INSERT INTO Teaches (InstructorID, CourseID) VALUES (2, 101);
INSERT INTO Teaches (InstructorID, CourseID) VALUES (3, 101);
INSERT INTO Teaches (InstructorID, CourseID) VALUES (2, 103);
INSERT INTO Teaches (InstructorID, CourseID) VALUES (3, 102);
INSERT INTO Teaches (InstructorID, CourseID) VALUES (3, 104);

-- Inserting data into Enrollments
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, Semester, Grade) 
VALUES (1, 1, 101, 'Fall 2023', 'A');
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, Semester, Grade) 
VALUES (2, 2, 102, 'Fall 2023', 'B');
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, Semester, Grade) 
VALUES (3, 1, 103, 'Fall 2023', 'A');
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, Semester, Grade) 
VALUES (4, 3, 101, 'Fall 2023', 'A');
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, Semester, Grade) 
VALUES (5, 4, 104, 'Fall 2023', 'C');
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, Semester, Grade) 
VALUES (6, 5, 101, 'Fall 2023', 'A');
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, Semester, Grade) 
VALUES (7, 6, 102, 'Fall 2023', 'B');
