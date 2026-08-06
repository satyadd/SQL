CREATE TABLE employees(
        emp_id int primary key,
        name varchar(30),
        department varchar(30),
        salary int,
        hire_year int
);

INSERT INTO employees (emp_id, name, department, salary, hire_year) VALUES
(101, 'Aravind', 'Engineering', 75000, 2021),
(102, 'Priya', 'Analytics', 62000, 2022),
(103, 'Karthik', 'Engineering', 88000, 2020),
(104, 'Ananya', 'Analytics', 54000, 2023),
(105, 'Suresh', 'Sales', 45000, 2021),
(106, 'Meera', 'Engineering', 92000, 2019),
(107, 'Rahul', 'Sales', 51000, 2022),
(108, 'Deepa', 'Analytics', 68000, 2021);


/*Write a query to display the name and salary of all employees 
in the Analytics department who earn more than 55,000,
 ordered by salary from highest to lowest.*/

SELECT    
	   NAME,
       Salary
from employees
where salary>55000
order by salary desc;
	
/*Write a query to find the total
 number of employees and the average salary for each department.
 Rename the summary columns as total_employees and avg_salary.*/
 


SELECT
      department,
      avg(salary) as avg_salary,
      count(emp_id)as total_employees
FROM employees
Group by department;

select * from employees;

/*Write a query to list each department alongside its highest salary (MAX),
 but only include departments where the average salary is strictly greater than 60,000.*/
 
 select 
       department,
       max(salary) as highest_salary
from employees
group  by department
having avg(salary)>60000
;
