1. Retrieve specific columns using SELECT

-> Get the first name and last name of all employees.
SELECT first_name, last_name FROM employees;

-> List employee IDs and hire dates.
SELECT emp_no, hire_date FROM employees;

->Show employee names and their salaries.
SELECT first_name, last_name, salary FROM salaries;

->Retrieve department number and department name.
SELECT dept_no, dept_name FROM departments;

2. Apply filters using WHERE with operators

-> Find employees with salary greater than 60,000.
SELECT emp_no, salary FROM salaries WHERE salary > 60000;

->Retrieve employees hired before January 1, 2000.
SELECT emp_no, hire_date FROM employees WHERE hire_date < '2000-01-01';

->Get employees whose first name is 'Michael'.
SELECT emp_no, first_name FROM employees WHERE first_name = 'Michael';

->Find employees whose department is 'd001'.
SELECT emp_no FROM dept_emp WHERE dept_no = 'd001';

-> List employees whose salary is between 50,000 and 70,000.
SELECT emp_no, salary FROM salaries WHERE salary BETWEEN 50000 AND 70000;

->Retrieve employees whose last name contains 'son'.
SELECT emp_no, last_name FROM employees WHERE last_name LIKE '%son%';

->Get employees whose first name starts with 'A'.
SELECT emp_no, first_name FROM employees WHERE first_name LIKE 'A%';

->Find employees whose last name ends with 'y'.
SELECT emp_no, last_name FROM employees WHERE last_name LIKE '%y';

3. Handle NULL values with IS NULL / IS NOT NULL

->Find employees without a recorded manager.
SELECT emp_no FROM dept_manager WHERE emp_no IS NULL;

->Get all employees whose middle name is not recorded.
SELECT emp_no, first_name FROM employees WHERE middle_name IS NULL;

->List employees whose termination date is not NULL.
SELECT emp_no, first_name FROM employees WHERE termination_date IS NOT NULL;

 4. Sort data using ORDER BY
->List employees ordered by hire date from oldest to newest.
SELECT emp_no, hire_date FROM employees ORDER BY hire_date ASC;

->Retrieve salaries sorted from highest to lowest.
SELECT emp_no, salary FROM salaries ORDER BY salary DESC;

->Show employees ordered by department number and then by last name.
SELECT emp_no, last_name, dept_no FROM dept_emp ORDER BY dept_no ASC, last_name ASC;

 5. Limit and paginate results using LIMIT and OFFSET

->Retrieve the first 10 employees.
SELECT emp_no, first_name FROM employees ORDER BY emp_no ASC LIMIT 10;

->Get 5 employees after skipping the first 20.
SELECT emp_no, first_name FROM employees ORDER BY emp_no ASC LIMIT 5 OFFSET 20;

->Show the last 5 employees based on hire date.
SELECT emp_no, hire_date FROM employees ORDER BY hire_date DESC LIMIT 5;

6. Validate data using COUNT, MIN, and MAX

->Count the total number of employees.
SELECT COUNT(*) FROM employees;

->Find the minimum salary.
SELECT MIN(salary) FROM salaries;

-> Find the maximum hire date.
SELECT MAX(hire_date) FROM employees;

->Count employees in department 'd002'.
SELECT COUNT(*) FROM dept_emp WHERE dept_no = 'd002';

->Get the earliest hire date.
SELECT MIN(hire_date) FROM employees;

->Find the highest salary in the company.
SELECT MAX(salary) FROM salaries;
