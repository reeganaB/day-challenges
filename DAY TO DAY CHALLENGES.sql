-- DAY TO DAY CHALLENGES--

SELECT *FROM patients;


use hospital;
CREATE DATABASE hospital;

CREATE TABLE patients(
 Patient_id INT PRIMARY KEY,
 Patient_name VARCHAR(50)NOT NULL,
 Age INT,
 Gender VARCHAR(5),
 Admissiondate DATE 
 ); 

 ALTER TABLE patients
 ADD COLUMN Doctor_Assigned VARCHAR(50)NOT NULL;
 
 ALTER TABLE patients
 MODIFY COLUMN Patient_name VARCHAR(100) NOT NULL;
 
RENAME TABLE patients TO patient_info;

TRUNCATE TABLE patient_info;

DROP TABLE patient_info;







