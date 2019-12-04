-- How many people work in the Sales department?

SELECT
    e.emp_name
FROM
  employee e
  JOIN
  department d
  ON e.department = d.id
WHERE
  d.dept_name = 'Sales';

-- List the names of all employees assigned to the 'Plan Christmas party' project.

SELECT
    employee.emp_name
FROM 
employee 
JOIN 
employee_project 
ON employee.id = employee_project.emp_id
JOIN
project
ON employee_project.project_id = project.id
WHERE 
project.project_name = 'Plan Christmas party';


-- List the names of employees from the Warehouse department that are assigned to the 'Watch paint dry' project.

SELECT e.emp_name
FROM
employee e
JOIN
department d
ON d.id = e.department
JOIN
employee_project
ON e.id = employee_project.emp_id
JOIN
project p
ON employee_project.project_id = p.id
WHERE d.dept_name = 'Warehouse'
AND project_name= 'Watch paint dry';

-- Which projects are the Sales department employees assigned to?
SELECT p.project_name
FROM
project p
JOIN 
employee_project ep
ON p.id = ep.project_id
JOIN 
employee e
ON e.id = ep.emp_id
JOIN 
department d
ON d.id = e.department
WHERE d.dept_name = 'Sales';

-- List only the managers that are assigned to the 'Watch paint dry' project.
SELECT e.emp_name, d.manager
FROM
employee e
JOIN 
department d
ON d.id = e.department
JOIN 
employee_project ep
ON ep.emp_id = e.id
JOIN 
project p
ON p.id = ep.project_id
WHERE project_name= 'Watch paint dry';