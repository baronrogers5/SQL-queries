-- Find the names of all employees who have sold more
-- than 30,000 to a single client

SELECT emp.first_name, emp.last_name
FROM employee as emp;

SELECT * from works_with;

SELECT emp.first_name, emp.last_name
FROM employee AS emp
WHERE emp.emp_id IN (
    SELECT emp_id, SUM(total_sales) as sales
    FROM works_with
    GROUP BY client_id
);

SELECT emp.first_name, emp.last_name
FROM employee AS emp
WHERE emp.emp_id IN (
    SELECT DISTINCT emp_id
    FROM (  SELECT emp_id,
            SUM(total_sales) as sales 
            FROM works_with 
            GROUP BY client_id) t
    WHERE t.sales > 30000
);


-- Find all clients who are handled by the branch that michael scott manages
select * from employee;


select c.client_name
from client as c
where c.branch_id = (
    select b.branch_id
    from branch as b
    where b.mgr_id = (
        select emp.emp_id
        from employee as emp
        where emp.first_name = 'Michael' and emp.last_name = 'Scott'
)limit 1);

