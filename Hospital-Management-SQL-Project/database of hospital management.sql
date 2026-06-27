create database hospital_management_system
use hospital_management_system

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50)
);
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(100),
    specialization VARCHAR(50)
);
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);
CREATE TABLE Treatments (
    treatment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    treatment_name VARCHAR(100),
    cost DECIMAL(10,2),
    treatment_date DATE
);
CREATE TABLE Billing (
    bill_id INT PRIMARY KEY,
    patient_id INT,
    amount DECIMAL(10,2),
    payment_status VARCHAR(20)
);