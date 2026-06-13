
-- Advisors/Instructors table
CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,
    InstructorName VARCHAR(255) NOT NULL
);

-- Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Major VARCHAR(255) NOT NULL,
    AdvisorID INT,
    FOREIGN KEY (AdvisorID) REFERENCES Instructors(InstructorID)
);

-- Courses table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(255) NOT NULL,
    CreditHours INT NOT NULL
);

-- Teaches table (Many-to-Many relationship between Instructors and Courses)
CREATE TABLE Teaches (
    InstructorID INT,
    CourseID INT,
    PRIMARY KEY (InstructorID, CourseID),
    FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Enrollments table (Many-to-Many relationship between Students and Courses)
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Semester VARCHAR(255),
    Grade VARCHAR(2),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

/*
 * The tables do not have the redundancies observed earlier due to the addition of the Teaches table.
 * Redundancy Removed: Instead of repeating the advisor and instructor details for each course or enrollment,
 * we use the InstructorID in the Teaches table and the AdvisorID as a foreign key in the Students table. 
 * This eliminates unnecessary duplication of instructor/advisor information.
 */
