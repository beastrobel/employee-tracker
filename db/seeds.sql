INSERT INTO departments (department)
VALUES ("Engineering"),
       ("Finance"),
       ("Legal"),
       ("Sales");

INSERT IGNORE INTO roles (department_id, title, salary)
VALUES (4, "Sales Lead", 100000),
       (4, "Salesperson", 80000),
       (1, "Lead Engineer", 150000),
       (1, "Software Engineer", 120000),
       (2, "Account Manager", 160000),
       (2, "Accountant", 125000),
       (3, "Legal Team Lead", 250000),
       (3, "Lawyer", 190000);

INSERT IGNORE INTO employees (title_id, first_name, last_name, manager)
VALUES (1, "John", "Doe", "null"),
       (2, "Mike", "Chan", "John Doe"),
       (3, "Ashley", "Rodriguez", "null"),
       (4, "Kevin", "Tupik", "Ashley Rodriguez"),
       (5, "Kunal", "Singh", "null"),
       (6, "Malia", "Brown", "Kunal Singh"),
       (7, "Sarah", "Lourd", "null"),
       (8, "Tom", "Allen", "Sarah Lourd"),
       (1, "Sam", "Kash", "Ashley Rodriguez");