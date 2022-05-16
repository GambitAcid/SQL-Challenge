-- Data Analysis --

-- 1 List the following details of each employee: employee number, last name, first name
--   sex, and salary.
SELECT E.emp_no, first_name, last_name, sex, Salary
FROM Employees E
LEFT JOIN Salary S
ON E.emp_no = S.emp_no

-- 2 List first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name, hiredate
From Employees E
where hiredate between '1/1/1986' and '12/31/1986'

-- 3 List the manager of each department with dept number, dept name, employee number, 
-- last name, and first name
SELECT  D.dept_no, dept_name, E.emp_no, last_name, first_name
FROM Employees E
JOIN Dept_manager DE ON E.emp_no = DE.emp_no
JOIN Department D ON DE.manager = D.dept_no  
		
-- 4 List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

SELECT  E.emp_no, last_name, first_name, dept_name
FROM Employees  E
JOIN Dept_manager DE ON E.emp_no = DE.emp_no
JOIN Department    D ON DE.manager = D.dept_no  


-- 5 List first name, last name, and sex for employees whose first name 
-- is "Hercules" and last names begin with "B."

Select first_name, last_name, sex
from Employees
where first_name = 'Hercules' and last_name like 'B%'

-- 6 List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.

SELECT  E.emp_no, last_name, first_name, dept_name
FROM Employees  E 
JOIN Dept_manager DE ON E.emp_no = DE.emp_no
JOIN Department    D ON DE.manager = D.dept_no  and D.dept_name ='Sales'

-- 7 List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.

SELECT  E.emp_no, last_name, first_name, dept_name
FROM Employees  E 
JOIN Dept_manager DE ON E.emp_no = DE.emp_no
JOIN Department D ON DE.manager = D.dept_no  and D.dept_name = 'Sales' or D.dept_name = 'Development'

-- 8 List the frequency count of employee last names (i.e., how many employees share each 
-- last name) in descending order. 

Select last_name, Count(*) 
From Employees
group by last_name 
order by count desc

