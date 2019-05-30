-- insert another branch

INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);

-- Find all branches and the names of their managers

SELECT e.emp_id, e.first_name, e.last_name, b.branch_name
FROM employee as e
JOIN branch as b
ON b.mgr_id = e.emp_id;

SELECT e.emp_id, e.first_name, e.last_name, b.branch_name
FROM employee as e
LEFT JOIN branch as b
ON b.mgr_id = e.emp_id;

SELECT e.emp_id, e.first_name, e.last_name, b.branch_name
FROM employee as e
RIGHT JOIN branch as b
ON b.mgr_id = e.emp_id;

