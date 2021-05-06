--List the follwoing details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, last_name, first_name, sex, salaries.salary
INTO num_one
FROM employees
FULL OUTER JOIN salaries
ON employees.emp_no = salaries.emp_no 

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
INTO num_two
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'

--List the manager of each department with the following information: department number, department name, 
-----the manager's employee number, last name, first name.
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
INTO num_three
FROM dept_manager
JOIN departments on dept_manager.dept_no = departments.dept_no
JOIN employees on dept_manager.emp_no = employees.emp_no

--List the department of each employee with the following information: employee number, last name, first name, 
---and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
INTO num_four
FROM dept_emp
JOIN departments on dept_emp.dept_no = departments.dept_no
JOIN employees on dept_emp.emp_no = employees.emp_no 
ORDER BY departments.dept_name ASC

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
INTO num_five
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
INTO num_six
FROM dept_emp
JOIN departments on dept_emp.dept_no = departments.dept_no
JOIN employees on dept_emp.emp_no = employees.emp_no 
WHERE departments.dept_name = 'Sales'
ORDER BY employees.last_name ASC 

--List all employees in the Sales and Development departments, including their employee number, last name, first name, 
---and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
INTO num_seven
FROM dept_emp
JOIN departments on dept_emp.dept_no = departments.dept_no
JOIN employees on dept_emp.emp_no = employees.emp_no 
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'
ORDER BY departments.dept_name ASC, employees.last_name;

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(*)
--INTO num_eight
FROM employees
GROUP BY last_name
ORDER BY last_name DESC



