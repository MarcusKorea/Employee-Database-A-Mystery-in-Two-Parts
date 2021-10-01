-- Question 01
SELECT e.emp_no, e.last_name,e.first_name,e.sex,s.salary
FROM Employees as e
INNER JOIN Salaries as s
ON e.emp_no = s.emp_no;

-- Question 02
SELECT e.first_name, e.last_name, e.hire_date
FROM Employees as e
WHERE hire_date between '1986-01-01' and '1986-01-31';

-- Question 03
SELECT dm.dept_no, dm.emp_no, e.first_name, e.last_name
FROM Dept_mans as dm
INNER JOIN Employees as e
on dm.emp_no = e.emp_no;

-- Question 04
SELECT e.emp_no,e.first_name, e.last_name, d.dept_name
FROM Employees as e
INNER JOIN Dept_emps as de
ON e.emp_no = de.emp_no
INNER JOIN Departments as d
on d.dept_no = de.dept_no;

-- Question 05
SELECT e.first_name, e.last_name, e.sex
FROM Employees as e
WHERE e.first_name = 'Hercules'
AND e.last_name LIKE 'B%';

-- Question 06
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees as e
INNER JOIN Dept_emps as de
ON e.emp_no = de.emp_no
INNER JOIN Departments as d
ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales' ;

-- Question 07
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees as e
INNER JOIN Dept_emps as de
ON e.emp_no = de.emp_no
INNER JOIN Departments as d
ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales' 
OR dept_name = 'Development';

-- Question 08
SELECT e.last_name, count(e.last_name) as Last_Name_Count
FROM Employees as e
GROUP BY e.last_name
ORDER BY Last_Name_Count desc;