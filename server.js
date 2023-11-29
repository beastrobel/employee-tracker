const inquirer = require('inquirer');
const db = require('./config/connection');

inquirer
.prompt([
    {
        type: 'checkbox',
        message: 'What would you like to do?',
        name: 'main',
        choices: [
            'view all departments',
            'view all roles',
            'view all employees',
            'add a department',
            'add a role',
            'add an employee',
            'update an employee role'
        ]
    }
])

.then((data) => {
    if (data.main == 'view all departments'){
        viewDepartments();
    } else if (data.main == 'view all roles'){
        viewRoles();
    } else if (data.main == 'view all employees'){
        viewEmployees();
    } else if (data.main == 'add a department'){
        inquirer
        .prompt([
            {
                type: 'input',
                message: 'What is the name of the department?',
                name: 'newDepartment'
            }
        ])
        .then((data) => {
        addDeparment();
        console.log('New deparment added.');
        });
    } else if (data.main == 'add a role'){
        inquirer
        .prompt([
            {
                type: 'input',
                message: 'What is the name of the role?',
                name: 'newRole'
            },
            {
                type: 'input',
                message: 'What is the salary of the role?',
                name: 'salary'
            },
            {
                type: 'input',
                message: 'What department does the role belong to?',
                name: 'department'
            },
        ])
        .then((data) => {
        addRole();
        console.log('New role added.');
        });
    } else if (data.main == 'add an employee'){
        inquirer
        .prompt([
            {
                type: 'input',
                message: 'What is their first name?',
                name: 'firstName'
            },
            {
                type: 'input',
                message: 'What is their last name?',
                name: 'lastName'
            },
            {
                type: 'input',
                message: 'What is their role?',
                name: 'role'
            },
        ])
        .then((data) => {
        addEmployee();
        console.log('New employee added.');
        });
    } else if (data.main == 'update an employee role'){
        console.log('Feature coming soon.');
    }
}); 

function viewDepartments() {
    const dbQuery = 'SELECT department.id, department.name FROM department';
    db.query(dbQuery, (err, res) => {
        if (err) {
            console.log('Error');
        } else {
            console.table(res);
        }
    });
};

function viewRoles() {
    
};

function viewEmployees() {
    
};

function addDepartment() {
    
};

function addRole() {
    
};

function addEmployee() {
    
};

