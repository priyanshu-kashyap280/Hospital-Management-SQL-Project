INSERT INTO Patients VALUES
(1,'Aman', 'Male', 25,'Delhi'),
(2,'Priya','Female',30,'Mumbai'),
(3,'Rahul','Male',40,'Delhi'),
(4,'Neha','Female',35,'Pune'),
(5,'Rohit','Male',28,'Lucknow');

INSERT INTO Doctors VALUES
(101,'Dr. Sharma','Cardiology'),
(102,'Dr. Khan','Neurology'),
(103,'Dr. Singh','Orthopedic');

INSERT INTO Appointments VALUES
(1,1,101,'2025-01-05'),
(2,2,102,'2025-01-10'),
(3,3,101,'2025-02-12'),
(4,4,103,'2025-02-15'),
(5,5,101,'2025-03-01');

INSERT INTO Treatments VALUES
(1,1,101,'Heart Checkup',5000,'2025-01-05'),
(2,2,102,'Brain Scan',8000,'2025-01-10'),
(3,3,101,'ECG',3000,'2025-02-12'),
(4,4,103,'Knee Surgery',25000,'2025-02-15'),
(5,5,101,'Heart Surgery',50000,'2025-03-01');

INSERT INTO Billing VALUES
(1,1,5000,'Paid'),
(2,2,8000,'Paid'),
(3,3,3000,'Pending'),
(4,4,25000,'Paid'),
(5,5,50000,'Pending');