# GROUP BY

### 1. Count the number of values per electrode in the EEG

    SELECT electrode, COUNT(value) AS number_of_values FROM patient_eeg_data
    GROUP BY electrode
    ORDER BY electrode;

### 2. Average max_dose per Medicine manufacturer

    SELECT medicine_manufacturer.name, AVG(medicine.max_dose) AS average_max_dose FROM medicine_manufacturer
    LEFT JOIN medicine ON medicine_manufacturer.id=medicine.manufacturer_id
    GROUP BY medicine_manufacturer.name;

### 3. Count the number of values per electrode in EEG/EKG (use union)

    SELECT electrode, COUNT(value) AS number_of_values FROM patient_eeg_data
    GROUP BY electrode
    UNION
    SELECT electrode, COUNT(value) AS number_of_values FROM patient_ekg_data
    GROUP BY electrode;

### 4. Count how many people use languages

    SELECT language.name, COUNT(person.id) AS number_of_people FROM person
    INNER JOIN language ON person.language_id=language.id
    GROUP BY language.name;

### 5. Count users per role

    SELECT role.name, COUNT(person_clinic_role.id) AS number_of_users FROM person_clinic_role
    INNER JOIN role ON person_clinic_role.role_id=role.id
    GROUP BY role.name;

### 6. Count users grouped by role in each clinic

    SELECT c.name AS clinic_name, r.name AS role_name, COUNT(pcr.person_id) AS number_of_users FROM person_clinic_role pcr
    LEFT JOIN role r ON pcr.role_id=r.id
    LEFT JOIN clinic c ON pcr.clinic_id=c.id
    GROUP BY r.name, c.name
    ORDER BY c.name, r.name;

### 7. Count the number of incorrectly prescribed medicines (overdosed) grouped by medicine.

    SELECT medicine.name, COUNT(prescription_medicine.medicine_id) AS number_of_incorrectly_prescribed_medicines 
    FROM prescription_medicine 
    LEFT JOIN medicine ON prescription_medicine.medicine_id=medicine.id
    WHERE prescription_medicine.dose > medicine.max_dose
    GROUP BY medicine.name;