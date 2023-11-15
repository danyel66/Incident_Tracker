CREATE DATABASE INJURED_PATIENCE USE INJURED_PATIENCE;
CREATE SCHEMA daniel;
-- Create PoliceRecords table
CREATE TABLE daniel.PoliceRecords (
  CaseID INT IDENTITY(1, 1) PRIMARY KEY NOT NULL, 
  Badge_Number VARCHAR(20) NOT NULL, 
  First_name VARCHAR(50) NOT NULL, 
  Last_name VARCHAR(50) NOT NULL, 
  Age INT NOT NULL, 
  Description VARCHAR(255), 
  );
-- Create HospitalRecords table
CREATE TABLE daniel.HospitalRecords (
  AdmissionID INT PRIMARY KEY, 
  date_time DATETIME NOT NULL, 
  [location] VARCHAR(255) NOT NULL, 
  type_of_crime VARCHAR(50) NOT NULL, 
  victim_name VARCHAR(100), 
  suspect_name VARCHAR(100), 
  reporting_officer_id INT NOT NULL, 
  InjuryDescription VARCHAR(255), 
  CONSTRAINT FK_HospitalRecords_Person FOREIGN KEY (reporting_officer_id) REFERENCES daniel.PoliceRecords(CaseID)
);
-- Insert sample data into HospitalRecords
INSERT INTO daniel.HospitalRecords (
  AdmissionID, date_time, [location], 
  type_of_crime, victim_name, suspect_name, 
  reporting_officer_id, InjuryDescription
) 
VALUES 
  (
    1, '2023-10-04 12:30:00', 'Main Street', 
    'Assault', 'John Doe', 'Jane Smith', 
    1, 'Laceration to the left arm'
  ), 
  (
    2, '2023-10-04 14:45:00', 'Park Avenue', 
    'Robbery', 'Peter Jones', 'Michael Brown', 
    2, 'Concussion'
  ), 
  (
    3, '2023-10-04 16:15:00', 'Elm Street', 
    'Theft', 'Susan Williams', 'David Miller', 
    3, 'Bruised ribs'
  ), 
  (
    4, '2023-10-05 08:00:00', 'Oak Street', 
    'Vandalism', 'Mary Johnson', 'Robert Lee', 
    1, 'Broken window'
  ), 
  (
    5, '2023-10-05 10:30:00', 'Maple Street', 
    'Arson', 'Thomas Davis', 'William Jackson', 
    2, 'Burns to the hands and face'
  ), 
  (
    6, '2023-10-05 13:00:00', 'Birch Street', 
    'Burglary', 'Elizabeth Taylor', 
    'James Anderson', 3, 'Missing jewelry'
  ), 
  (
    7, '2023-10-05 15:15:00', 'Pine Street', 
    'Drug Possession', 'Mark Wilson', 
    'Richard Thompson', 1, 'Possession of cocaine'
  ), 
  (
    8, '2023-10-05 17:00:00', 'Spruce Street', 
    'Drunk Driving', 'Linda Harris', 
    'Sarah Cooper', 2, 'DUI'
  ), 
  (
    9, '2023-10-06 10:00:00', 'Cedar Street', 
    'Public Intoxication', 'David Adams', 
    'Emily Jones', 3, 'Public intoxication'
  ), 
  (
    10, '2023-10-06 12:30:00', 'Elm Street', 
    'Disorderly Conduct', 'Carol Peterson', 
    'Steven Roberts', 1, 'Disorderly conduct'
  ), 
  (
    11, '2023-10-06 14:45:00', 'Oak Street', 
    'Traffic Violation', 'Paul Murphy', 
    'Daniel Harris', 2, 'Speeding violation'
  ), 
  (
    12, '2023-10-06 16:15:00', 'Maple Street', 
    'Parking Violation', 'Sharon Kelly', 
    'Joseph Brown', 3, 'Parking violation'
  ), 
  (
    13, '2023-10-07 08:00:00', 'Birch Street', 
    'Noise Violation', 'Michael Davis', 
    'Christopher Miller', 1, 'Noise complaint'
  ), 
  (
    14, '2023-10-07 10:30:00', 'Pine Street', 
    'Animal Complaint', 'Dorothy Jackson', 
    'Elizabeth Thomas', 2, 'Loose dog'
  ), 
  (
    15, '2023-10-07 13:00:00', 'Spruce Street', 
    'Lost and Found', 'Edward Williams', 
    'Margaret Cooper', 3, 'Found wallet'
  ), 
  (
    16, '2023-10-07 15:15:00', 'Cedar Street', 
    'Welfare Check', 'Nancy Harris', 
    'David Jones', 1, 'Welfare check'
  ), 
  (
    17, '2023-10-07 17:00:00', 'Elm Street', 
    'Assist Citizen', 'Robert Adams', 
    'Mary Johnson', 2, 'Citizen assistance'
  ), 
  (
    18, '2023-10-08 10:00:00', 'Oak Street', 
    'Suspicious Person', 'Donald Peterson', 
    'William Davis', 3, 'Suspicious person'
  ), 
  (
    19, '2023-10-08 12:30:00', 'Maple Street', 
    'Prowling', 'Karen Murphy', 'James Anderson', 
    1, 'Prowling complaint'
  );
-- Insert corresponding data into PoliceRecords
INSERT INTO daniel.PoliceRecords (
  Badge_Number, First_name, Last_name, 
  Age, [Description]
) 
VALUES 
  (
    '1234', 'John', 'Doe', 35, 'Investigating a robbery'
  ), 
  (
    '4567', 'Jane', 'Smith', 28, 'Responding to a domestic disturbance'
  ), 
  (
    '5678', 'Peter', 'Jones', 42, 'Patrolling the neighborhood'
  ), 
  (
    '6789', 'Susan', 'Williams', 30, 'Writing a report on a previous case'
  ), 
  (
    '7890', 'Michael', 'Brown', 25, 'Training a new recruit'
  ), 
  (
    '8901', 'David', 'Miller', 50, 'Taking a break for lunch'
  ), 
  (
    '9012', 'Mary', 'Johnson', 38, 'Assisting with a traffic accident'
  ), 
  (
    '1023', 'Robert', 'Lee', 22, 'Filing paperwork'
  ), 
  (
    '2034', 'Thomas', 'Davis', 46, 'Attending a community meeting'
  ), 
  (
    '3045', 'William', 'Jackson', 33, 'Conducting surveillance'
  ), 
  (
    '4056', 'Elizabeth', 'Taylor', 31, 
    'Serving a warrant'
  ), 
  (
    '5067', 'James', 'Anderson', 27, 'Processing evidence'
  ), 
  (
    '6078', 'Linda', 'Harris', 44, 'Interviewing a witness'
  ), 
  (
    '7089', 'Sarah', 'Cooper', 32, 'Booking a suspect into jail'
  ), 
  (
    '8090', 'Emily', 'Jones', 26, 'Searching for a missing person'
  ), 
  (
    '9012', 'Mark', 'Wilson', 52, 'Performing a routine traffic stop'
  ), 
  (
    '1023', 'Richard', 'Thompson', 29, 
    'Responding to a noise complaint'
  ), 
  (
    '2034', 'David', 'Adams', 48, 'Issuing a parking ticket'
  ), 
  (
    '3045', 'Carol', 'Peterson', 36, 'Responding to a fire alarm'
  ), 
  (
    '4056', 'Steven', 'Roberts', 24, 'Patrolling a school zone'
  ), 
  (
    '5067', 'Paul', 'Murphy', 54, 'Enforcing traffic laws'
  ), 
  (
    '6078', 'Sharon', 'Kelly', 37, 'Providing directions'
  ), 
  (
    '7089', 'Michael', 'Davis', 23, 'Calming down a distraught citizen'
  ), 
  (
    '8090', 'Dorothy', 'Jackson', 40, 'Assisting with a medical emergency'
  ), 
  (
    '9012', 'Edward', 'Williams', 39, 'Providing first aid'
  ), 
  (
    '1023', 'Nancy', 'Harris', 21, 'Transporting a suspect to the police station'
  ), 
  (
    '2034', 'Robert', 'Adams', 56, 'Securing a crime scene'
  ), 
  (
    '3045', 'Donald', 'Peterson', 43, 'Testifying in court'
  ), 
  (
    '4056', 'Karen', 'Murphy', 35, 'Apprehending a suspect'
  ), 
  (
    '5067', 'Richard', 'Kelly', 20, 'Protecting the public from harm'
  );


-- Renames the CASE_ID column to officer_id in the PoliceRecords table.
EXEC sp_rename 'daniel.PoliceRecords.CaseID', 'officer_id', 'COLUMN';



