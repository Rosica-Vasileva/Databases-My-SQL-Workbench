CREATE TABLE work_schedule (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50) NOT NULL,
    shift_start DATETIME NOT NULL,
    shift_end DATETIME NOT NULL,
    status ENUM('working', 'maternity_leave', 'vacation') NOT NULL
);

INSERT INTO work_schedule (employee_name, shift_start, shift_end, status)
VALUES 
    ('Employee4', '2024-02-12 08:00:00', '2024-02-12 17:00:00', 'maternity_leave'),
    ('Employee4', '2024-02-13 08:00:00', '2024-02-13 17:00:00', 'maternity_leave'),
    ('Employee4', '2024-02-14 08:00:00', '2024-02-14 17:00:00', 'maternity_leave'),
    ('Employee4', '2024-02-15 08:00:00', '2024-02-15 17:00:00', 'maternity_leave'),
    ('Employee4', '2024-02-16 08:00:00', '2024-02-16 17:00:00', 'maternity_leave'),
    ('Employee5', '2024-02-12 08:00:00', '2024-02-12 17:00:00', 'maternity_leave'),
    ('Employee5', '2024-02-13 08:00:00', '2024-02-13 17:00:00', 'maternity_leave'),
    ('Employee5', '2024-02-14 08:00:00', '2024-02-14 17:00:00', 'maternity_leave'),
    ('Employee5', '2024-02-15 08:00:00', '2024-02-15 17:00:00', 'maternity_leave'),
    ('Employee5', '2024-02-16 08:00:00', '2024-02-16 17:00:00', 'maternity_leave');
    
    INSERT INTO work_schedule (employee_name, shift_start, shift_end, status)
VALUES 
    ('Employee6', '2024-02-12 08:00:00', '2024-02-12 17:00:00', 'vacation'),
    ('Employee6', '2024-02-13 08:00:00', '2024-02-13 17:00:00', 'vacation'),
    ('Employee6', '2024-02-14 08:00:00', '2024-02-14 17:00:00', 'vacation'),
    ('Employee6', '2024-02-15 08:00:00', '2024-02-15 17:00:00', 'vacation'),
    ('Employee6', '2024-02-16 08:00:00', '2024-02-16 17:00:00', 'vacation'),
    ('Employee7', '2024-02-12 08:00:00', '2024-02-12 17:00:00', 'vacation'),
    ('Employee7', '2024-02-13 08:00:00', '2024-02-13 17:00:00', 'vacation'),
    ('Employee7', '2024-02-14 08:00:00', '2024-02-14 17:00:00', 'vacation'),
    ('Employee7', '2024-02-15 08:00:00', '2024-02-15 17:00:00', 'vacation'),
    ('Employee7', '2024-02-16 08:00:00', '2024-02-16 17:00:00', 'vacation');
    
    INSERT INTO work_schedule (employee_name, shift_start, shift_end, status)
VALUES 
    ('Employee1', '2024-02-12 08:00:00', '2024-02-12 17:00:00', 'working'),
    ('Employee1', '2024-02-13 08:00:00', '2024-02-13 17:00:00', 'working'),
    ('Employee1', '2024-02-14 08:00:00', '2024-02-14 17:00:00', 'working'),
    ('Employee1', '2024-02-15 08:00:00', '2024-02-15 17:00:00', 'working'),
    ('Employee1', '2024-02-16 08:00:00', '2024-02-16 17:00:00', 'working'),
    ('Employee2', '2024-02-12 10:00:00', '2024-02-12 19:00:00', 'working'),
    ('Employee2', '2024-02-13 10:00:00', '2024-02-13 19:00:00', 'working'),
    ('Employee2', '2024-02-14 10:00:00', '2024-02-14 19:00:00', 'working'),
    ('Employee2', '2024-02-15 10:00:00', '2024-02-15 19:00:00', 'working'),
    ('Employee2', '2024-02-16 10:00:00', '2024-02-16 19:00:00', 'working'),
    ('Employee3', '2024-02-12 12:00:00', '2024-02-12 22:00:00', 'working'),
    ('Employee3', '2024-02-13 12:00:00', '2024-02-13 22:00:00', 'working'),
    ('Employee3', '2024-02-14 12:00:00', '2024-02-14 22:00:00', 'working'),
    ('Employee3', '2024-02-15 12:00:00', '2024-02-15 22:00:00', 'working'),
    ('Employee3', '2024-02-16 12:00:00', '2024-02-16 22:00:00', 'working');

SELECT *
FROM work_schedule
WHERE HOUR(shift_start) = 8 AND HOUR(shift_end) = 17;

SELECT *
FROM work_schedule
WHERE HOUR(shift_start) = 10 AND HOUR(shift_end) = 19;

SELECT *
FROM work_schedule
WHERE HOUR(shift_start) = 12 AND HOUR(shift_end) = 22;

SELECT *
FROM work_schedule
WHERE status = 'maternity_leave';

SELECT *
FROM work_schedule
WHERE status = 'vacation';





