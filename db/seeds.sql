INSERT IGNORE INTO department (name)
VALUES ("Engineering"),
       ("Finance"),
       ("Legal"),
       ("Sales");

INSERT IGNORE INTO role (department_id, title, salary)
VALUES (4, "Sales Lead", 100000),
       (4, "Salesperson", 80000),
       (1, "Lead Engineer", 150000),
       (1, "Software Engineer", 120000),
       (2, "Account Manager", 160000),
       (2, "Accountant", 125000),
       (3, "Legal Team Lead", 250000),
       (3, "Lawyer", 190000);

INSERT IGNORE INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "Doe", 1, 0),
       ("Mike", "Chan", 2, 1),
       ("Ashley", "Rodriguez", 3, 0),
       ("Kevin", "Tupik", 4, 3),
       ("Kunal", "Singh", 5, 0),
       ("Malia", "Brown", 6, 5),
       ("Sarah", "Lourd", 7, 0),
       ("Tom", "Allen", 8, 7),
       ("Sam", "Kash", 1, 3);