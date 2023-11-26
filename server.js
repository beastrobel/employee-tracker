const inquirer = require('inquirer');

inquirer
.prompt([
    {
        type: 'checkbox',
        message: 'What would you like to do?',
        name: 'text',
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

.then(

);