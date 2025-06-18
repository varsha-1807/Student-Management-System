# 🎓 Student Management System – SQL Project

This is a simple SQL-based project to manage basic student information like names, classes, subjects, and marks. It is ideal for beginners learning SQL.

## 🛠️ Technologies Used

- MySQL or any relational database
- SQL (Structured Query Language)

## 📂 Project Structure

1. **Database Creation**
2. **Table Creation** – Students, Subjects, Marks
3. **Sample Data Insertion**
4. **Basic Queries** – SELECT, JOIN, Aggregation

## 🧱 Database Schema

- `Students(StudentID, Name, Age, Class)`
- `Subjects(SubjectID, SubjectName)`
- `Marks(MarkID, StudentID, SubjectID, Marks)`

## 💾 How to Use

1. Clone the repository or download the `.sql` file.
2. Open your MySQL Workbench or preferred SQL tool.
3. Run the SQL script (`student_management.sql`) step by step.

## 🔍 Sample Queries

- Get all students
- View all marks for a student
- Calculate average marks for each student

## 📌 Example

```sql
SELECT s.Name, AVG(m.Marks) AS AverageMarks
FROM Students s
JOIN Marks m ON s.StudentID = m.StudentID
GROUP BY s.Name;
```

## 📬 Contact

Created by [Your Name] – feel free to reach out via GitHub!
