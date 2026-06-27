SELECT COUNT(*) AS Total_Patients
FROM Patients;

SELECT COUNT(*) AS Total_Doctors
FROM Doctors;

SELECT SUM(amount) AS Total_Revenue
FROM Billing;

SELECT SUM(amount) AS Pending_Amount
FROM Billing
WHERE payment_status='Pending';

SELECT city,COUNT(*) AS Total_Patients
FROM Patients
GROUP BY city;

SELECT d.doctor_name,
COUNT(a.appointment_id) AS Total_Appointments
FROM Doctors d
JOIN Appointments a
ON d.doctor_id=a.doctor_id
GROUP BY d.doctor_name;

SELECT d.doctor_name,
COUNT(*) AS Visits
FROM Doctors d
JOIN Appointments a
ON d.doctor_id=a.doctor_id
GROUP BY d.doctor_name
ORDER BY Visits DESC
LIMIT 1;

SELECT treatment_name,
SUM(cost) AS Revenue
FROM Treatments
GROUP BY treatment_name
ORDER BY Revenue DESC;

SELECT *
FROM Treatments
ORDER BY cost DESC
LIMIT 1;

SELECT d.specialization,
COUNT(t.patient_id) AS Total_Patients
FROM Doctors d
JOIN Treatments t
ON d.doctor_id=t.doctor_id
GROUP BY d.specialization;

SELECT MONTH(treatment_date) AS Month_No,
SUM(cost) AS Revenue
FROM Treatments
GROUP BY MONTH(treatment_date);

SELECT p.patient_name,
SUM(t.cost) AS Total_Spent
FROM Patients p
JOIN Treatments t
ON p.patient_id=t.patient_id
GROUP BY p.patient_name
ORDER BY Total_Spent DESC
LIMIT 1;

SELECT p.patient_name,
SUM(t.cost) AS Total_Spent,
RANK() OVER(ORDER BY SUM(t.cost) DESC) AS Ranking
FROM Patients p
JOIN Treatments t
ON p.patient_id=t.patient_id
GROUP BY p.patient_name;


WITH AvgCost AS
(
SELECT AVG(cost) AS avg_cost
FROM Treatments
)
SELECT * FROM Treatments, AvgCost
WHERE cost > avg_cost;