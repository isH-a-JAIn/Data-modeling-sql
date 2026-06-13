# Data Modeling and SQL

## Overview

The assignment focuses on:

- Identifying data redundancies in CSV datasets
- Designing an Entity Relationship (ER) model
- Converting ER diagrams into relational schemas
- Implementing SQL table creation scripts
- Loading sample data
- Writing SQL queries involving joins, subqueries, aggregations, and outer joins

## Dataset

The assignment uses three CSV files:

- `students.csv`
- `courses.csv`
- `enrollments.csv`

### Assumptions

- Every student has exactly one advisor.
- Advisors are also instructors.
- Instructor IDs are the same as advisor IDs.
- All attributes are strings except IDs, which are integers.

---

## Files

### Q1_2.pdf

Contains:

- Analysis of data redundancies
- Entity Relationship (ER) Diagram

### Q3.sql

Contains:

- Relational schema definitions
- Primary Keys
- Foreign Keys
- NOT NULL constraints

### Q4.sql

Contains:

- INSERT statements for sample data

### Q5.sql

Contains SQL solutions for:

1. Students advised by Dr. Smith
2. Advisors with exactly one student (without aggregation)
3. Advisors with exactly one student (using aggregation)
4. Students enrolled in at least two courses (without aggregation)
5. Students enrolled in at least two courses (using aggregation)
6. Most popular courses
7. Total credit hours per student
8. Students with no enrollments (outer join)
9. Students with no enrollments (subquery)
10. Students enrolled in both courses 101 and 103

---

## Topics Covered

### Database Design

- Entity Relationship Modeling
- Normalization
- Primary and Foreign Keys

### SQL

- Joins
- Outer Joins
- Subqueries
- Aggregations
- GROUP BY
- HAVING
- Self Joins

---

