USE CyberLab;

INSERT INTO departments (department_name)
VALUES 
('IT'),
('Security'),
('HR'),
('Finance');

SELECT * FROM departments
ORDER BY department_id;

INSERT INTO employees ( 
    first_name,
    last_name,
    email,
    position,
    hire_date,
    department_id
)

VALUES
    ('Hermione', 'Granger', 'grangerdev@gmail.com', 'DevOps', '2015-09-01', 1),
    ('Drako', 'Malfoy', 'malfoyciso@gmail.com', 'CISO', '2015-10-01', 1),
    ('Damon', 'Salvatore', 'salvatore_secur@gmail.com', 'Security Engineer', '2003-02-13', 2),
    ('Luna', 'Lovegood', 'lunahr@gmail.com', 'HR Specialist', '2014-12-18', 3),
    ('Pansy', 'Parkinson', 'parkinson_fin@gmail.com', 'Accountant', '2014-07-04', 4);
    