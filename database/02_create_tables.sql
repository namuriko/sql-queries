CREATE TABLE departments (
    department_id INT AUTO_INCREMENT,
    department_name VARCHAR(50) NOT NULL,
    
    PRIMARY KEY (department_id),
    UNIQUE (department_name)
);

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    position VARCHAR(80) NOT NULL,
    hire_date DATE NOT NULL,
    department_id INT NOT NULL,
    
    PRIMARY KEY (employee_id),
    UNIQUE (email),
    
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);
SHOW TABLES;
DESCRIBE departments;
RENAME TABLE emloyees TO employees;
DESCRIBE employees;