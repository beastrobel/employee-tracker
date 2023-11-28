SELECT department.name AS name, role.title, role.salary
FROM role
LEFT JOIN department
ON role.department_id = department.id
ORDER BY department.name;