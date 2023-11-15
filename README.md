# Incident_Tracker
Hospital Incident Tracking System


**Project Overview: Injured_Patience Database**

This SQL script establishes the "Injured_Patience" database and defines the schema "daniel," creating two pivotal tables: "PoliceRecords" and "HospitalRecords." 
The "PoliceRecords" table catalogs details of law enforcement officers, while the "HospitalRecords" table records instances of hospital admissions related to law enforcement activities.

**PoliceRecords Table:**
- The table encompasses critical officer information, such as Badge Number, First and Last names, Age, and a brief Description.

**HospitalRecords Table:**
- Captures data on hospital admissions, including AdmissionID, date_time, crime type, victim, suspect names, and the reporting officer's ID.
- A foreign key constraint links the reporting officer's ID to the "PoliceRecords" table.

**Sample Data Insertion:**
- Populates the "HospitalRecords" table with diverse scenarios of hospital admissions, associating each case with a reporting officer.

**Renaming Columns:**
- Utilizes the SQL command "sp_rename" to rename the "CaseID" column to "officer_id" in the "PoliceRecords" table for clarity and consistency.

**Trigger Implementation:**
- Introduces a trigger, "DeleteHospitalRecords," designed to execute after an officer is deleted from the "PoliceRecords" table.
- This trigger ensures the corresponding data tied to the officer's reporting ID is deleted from the "HospitalRecords" table.

**Trigger Usage Example:**
- Demonstrates the trigger's functionality by deleting a police record with the Badge Number '1234' and subsequently removing the associated hospital records.

This comprehensive script structures a database for managing law enforcement and hospital records, showcasing a robust relational database design and the integration of triggers to maintain data integrity.
