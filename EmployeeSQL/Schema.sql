-- Drop tables for when rerunning the code
DROP TABLE Salaries;
DROP TABLE Dept_mans;
DROP TABLE IF EXISTS Dept_emps;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Titles;
DROP TABLE IF EXISTS Departments;

-- Create Tables

CREATE TABLE Departments (
    dept_no VARCHAR(4) PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE Titles (
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR(50)
);

CREATE TABLE Employees (
    emp_no INTEGER PRIMARY KEY,
    emp_title_id VARCHAR(5),
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex CHARACTER(1),
    hire_date DATE,
    FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

CREATE TABLE Dept_emps (
    emp_no INTEGER,
    dept_no VARCHAR(4),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE Dept_mans (
    dept_no VARCHAR(4),
    emp_no INTEGER PRIMARY KEY,
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Salaries (
    emp_no INTEGER PRIMARY KEY,
    salary INTEGER,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- Once tables were created, the data was imported by right clicking the table and the 'import/export' option was chosen.