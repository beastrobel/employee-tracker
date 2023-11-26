DROP DATABASE IF EXISTS employeetracker_db;
CREATE DATABASE employeetracker_db;

USE  employeetracker_db;

CREATE TABLE departments (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  department VARCHAR(100) NOT NULL
);

CREATE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    department_id INT,
    title VARCHAR(100) NOT NULL,
    salary INT NOT NULL,
    FOREIGN KEY (department_id)
    REFERENCES departments(id)
    ON DELETE SET NULL
);

-- CREATE TABLE employees (
--     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     title_id INT,
--     first_name VARCHAR(100) NOT NULL,
--     last_name VARCHAR(100) NOT NULL,
--     manager VARCHAR(100) ,
--     FOREIGN KEY (title_id)
--     REFERENCES roles(id)
--     ON DELETE SET NULL
-- );