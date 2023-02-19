# SELECTS

### 1. Select all people with the last names starting with "a".

    SELECT * FROM person WHERE last_name LIKE 'a%';

### 2. Select all people with UNKNOWN gender.

    SELECT * FROM person WHERE gender='UNKNOWN';

### 3. Select all people that have all address, phone number and email filled.

    SELECT * FROM person WHERE address_line_1 IS NOT NULL AND phone_number IS NOT NULL AND email IS NOT NULL;

### 4. Select all medicines with a max dose between 4 and 6.

    SELECT * FROM medicine WHERE max_dose BETWEEN 4 AND 6;

### 5. Select all used EKG electrodes (list them only once).

    SELECT DISTINCT electrode FROM patient_ekg_data
    ORDER BY electrode;

### 6. Select all used person titles (list them only once).

    SELECT DISTINCT title FROM person WHERE title IS NOT NULL;

### 7. Count how many people are older than 70 years old.

    SELECT COUNT(*) AS number_of_people_over_70_years_old FROM person WHERE DATEDIFF(year, person.dob, GETDATE()) > 70;

### 8. Select all prescriptions that are expired now.

	SELECT * FROM prescription WHERE prescription.expiration_date > GETDATE();