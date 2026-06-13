-- (1) Find full names of students advised by Dr. Smith.
SELECT CONCAT(FirstName, ' ', LastName) AS FullName
FROM Students
INNER JOIN Instructors ON Students.AdvisorID = Instructors.InstructorID
WHERE Instructors.InstructorName = 'Dr. Smith';  -- Filtering for students with Dr. Smith as advisor

-- (2) Find names of advisors who advise only one student. Do not use aggregate and group by.
SELECT DISTINCT I.InstructorName
FROM Instructors I
JOIN Students S ON I.InstructorID = S.AdvisorID
WHERE S.AdvisorID IS NOT NULL
AND NOT EXISTS (
    -- Checking if the current advisor has any other students
    SELECT 1
    FROM Students S2
    WHERE S2.AdvisorID = S.AdvisorID
    AND S2.StudentID <> S.StudentID  -- Ensuring it's not the same student
);

-- (3) Find names of advisors who advise only one student. Do use aggregate and group by.
SELECT I.InstructorName
FROM Instructors I
JOIN Students S ON I.InstructorID = S.AdvisorID
GROUP BY I.InstructorID, I.InstructorName
HAVING COUNT(S.StudentID) = 1;  -- Filtering for advisors with exactly one student

-- (4) Find (full) names of students who enroll in at least two different courses. Do not use aggregate and group by.
SELECT DISTINCT CONCAT(S.FirstName, ' ', S.LastName) AS FullName
FROM Students S
JOIN Enrollments E1 ON S.StudentID = E1.StudentID
JOIN Enrollments E2 ON S.StudentID = E2.StudentID AND E1.CourseID <> E2.CourseID;  -- Ensuring different course enrollments

-- (5) Find (full) names of students who enroll in at least two different courses. Do use aggregate and group by.
SELECT CONCAT(S.FirstName, ' ', S.LastName) AS FullName
FROM Students S
JOIN Enrollments E ON S.StudentID = E.StudentID
GROUP BY S.StudentID, S.FirstName, S.LastName
HAVING COUNT(DISTINCT E.CourseID) >= 2;  -- Ensuring at least two different courses

-- (6) Find names of the most popular courses, ranked by the number of students taking the course.
SELECT C.CourseName
FROM Courses C
JOIN Enrollments E ON C.CourseID = E.CourseID
GROUP BY C.CourseID, C.CourseName
HAVING COUNT(E.StudentID) = (
    -- Finding the maximum student count for any course
    SELECT MAX(StudentCount)
    FROM (
        SELECT COUNT(StudentID) AS StudentCount
        FROM Enrollments
        GROUP BY CourseID
    ) AS CourseCounts
);

-- (7) Calculate total credit hours for each student by ID.
SELECT S.StudentID, SUM(C.CreditHours) AS TotalCreditHours
FROM Students S
JOIN Enrollments E ON S.StudentID = E.StudentID
JOIN Courses C ON E.CourseID = C.CourseID
GROUP BY S.StudentID;  -- Grouping by student to sum credit hours

-- (8) Using outer join, find IDs of students who did not take any courses.
SELECT S.StudentID
FROM Students S
LEFT JOIN Enrollments E ON S.StudentID = E.StudentID
WHERE E.EnrollmentID IS NULL;  -- Selecting students with no enrollments

-- (9) Using subquery, find IDs of students who did not take any courses.
SELECT S.StudentID
FROM Students S
WHERE S.StudentID NOT IN (
    -- Get student IDs from enrollments
    SELECT E.StudentID
    FROM Enrollments E
);

-- (10) Find names of students who took both courses 101 and 103.
SELECT CONCAT(S.FirstName, ' ', S.LastName) AS FullName
FROM Students S
JOIN Enrollments E ON S.StudentID = E.StudentID
WHERE E.CourseID IN (101, 103)  -- Filter for specific courses
GROUP BY S.StudentID, S.FirstName, S.LastName
HAVING COUNT(DISTINCT E.CourseID) = 2;  -- Ensuring enrollment in both courses
