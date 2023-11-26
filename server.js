const inquirer = require('inquirer');

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
    console.log('success');
    if (data.main == 'view all departments'){

    } else if (data.main == 'view all roles'){

    } else if (data.main == 'view all employees'){

    } else if (data.main == 'add a department'){

    } else if (data.main == 'add a role'){

    } else if (data.main == 'add an employee'){

    } else if (data.main == 'update an employee role'){

    }
}

);