# SUSPICIOUS DOCTOR

A suspiciously behaving doctor broke into the server room of the hospital. in which you were hired.
He threatened, that if you won't help him in his wicked activities, he will inject saline into the database server.
The danger is real, because the previous administrator was fired for not making backups, and you just came to take his place.
Good luck!

### 1. Create a new Clinic (SUSPICIOUS_CLINIC) in Poland

Finding country_id of Poland:

    SELECT * FROM country WHERE name='Poland';
    
    /* RESULT: id = 0
               name = Poland
               country_code = PL */

Creating a new clinic from the task:

    INSERT INTO clinic (name, country_id)
    VALUES ('SUSPICIOUS_CLINIC', 0);

Checking if SUSPICIOUS_CLINIC was added to the clinic table:

    SELECT * FROM clinic WHERE name='SUSPICIOUS_CLINIC';

    /* RESULT: id = 31
               name = SUSPICIOUS_CLINIC
               country_id = 0 */

### 2. Create a new medicine_manufacturer ("FAKE_PAINKILLER_ENTERPRISE")

Creating a new medicine_manufacturer from the task:
    
    INSERT INTO medicine_manufacturer (name)
    VALUES ('FAKE_PAINKILLER_ENTERPRISE');

Checking if FAKE_PAINKILLER_ENTERPRISE was added to the medicine_manufacturer table:

    SELECT * FROM medicine_manufacturer WHERE name='FAKE_PAINKILLER_ENTERPRISE';

    /* RESULT: id = 6
               name = FAKE_PAINKILLER_ENTERPRISE */

### 3. Create a new medicine ("VICODIN", max_dose = 4) made by FAKE_PAINKILLER_ENTERPRISE

Finding manufacturer_id of FAKE_PAINKILLER_ENTERPRISE:

    SELECT * FROM medicine_manufacturer WHERE name='FAKE_PAINKILLER_ENTERPRISE';

    /* RESULT: id = 6
               name = FAKE_PAINKILLER_ENTERPRISE */

Creating a new medicine from the task:

    INSERT INTO medicine (name, max_dose, manufacturer_id)
    VALUES ('VICODIN', 4, 6);

Checking if VICODIN was added to the medicine table:

    SELECT * FROM medicine WHERE name='VICODIN';

    /* RESULT: id = 26
               name: VICODIN
               max_dose: 4
               manufacturer_id: 6 */

### 4. Create a person (first_name = "DR", last_name = "HOUSE", language_id=0) that is a PATIENT and HCP at once in the SUSPICIOUS_CLINIC

Creating a new person from the task:

    INSERT INTO person (first_name, last_name, dob, language_id)
    VALUES ('DR', 'HOUSE', '1990-08-12', 0);

Checking if DR HOUSE was added to the person table:

    SELECT * FROM person WHERE first_name='DR' AND last_name='HOUSE';
    
    /* RESULT: id = 3487
               first_name = DR
               last_name = HOUSE
               dob = 1990-08-12
               title = NULL
               gender = NULL
               address_line_1 = NULL
               address_line_2 = NULL
               phone_number = NULL
               email = NULL
               language_id = 0 */

Finding clinic_id of SUSPICIOUS_CLINIC:

    SELECT * FROM clinic WHERE name='SUSPICIOUS_CLINIC';
    
    /* RESULT: id = 31
               name = SUSPICIOUS_CLINIC
               country_id = 0 */
    
Finding role_id of PATIENT:

    SELECT * FROM role WHERE name='PATIENT';
    
    /* RESULT: id = 0
               name = PATIENT */

Adding DR HOUSE to SUSPICIOUS_CLINIC as PATIENT:

    INSERT INTO person_clinic_role (person_id, clinic_id, role_id)
    VALUES (3487, 31, 0);

Checking if DR HOUSE was added SUSPICIOUS_CLINIC as PATIENT:

    SELECT pcr.person_id, pcr.clinic_id, pcr.role_id, p.first_name, p.last_name, r.name FROM person_clinic_role pcr
    LEFT JOIN person p ON pcr.person_id=p.id
    LEFT JOIN role r ON pcr.role_id=r.id
    WHERE p.first_name='DR' AND p.last_name='HOUSE' AND r.name='PATIENT';

    /* RESULT: person_id = 3487
               clinic_id = 31
               role_id = 0
               first_name = DR
               last_name = HOUSE
               name = PATIENT */

Finding role_id of HCP:

    SELECT * FROM role WHERE name='HCP';

    /* RESULT: id = 1
               name = HCP */

Adding DR HOUSE to SUSPICIOUS_CLINIC as HCP:

    INSERT INTO person_clinic_role (person_id, clinic_id, role_id)
    VALUES (3487, 31, 1);

Checking if DR HOUSE was added SUSPICIOUS_CLINIC as HCP:

    SELECT pcr.person_id, pcr.clinic_id, pcr.role_id, p.first_name, p.last_name, r.name FROM person_clinic_role pcr
    LEFT JOIN person p ON pcr.person_id=p.id
    LEFT JOIN role r ON pcr.role_id=r.id
    WHERE p.first_name='DR' AND p.last_name='HOUSE' AND r.name='HCP';

    /* RESULT: person_id = 3487
               clinic_id = 31
               role_id = 1
               first_name = DR
               last_name = HOUSE
               name = HCP */

### 5. Make DR HOUSE prescribe VICODIN to himself with a dose = 10

Finding person_id of DR HOUSE:

    SELECT id, first_name, last_name FROM person WHERE first_name='DR' AND last_name='HOUSE';

    /* RESULT: id = 3487
               first_name = DR
               last_name = HOUSE */

Finding clinic_id of SUSPICIOUS_CLINIC:

    SELECT * FROM clinic WHERE name='SUSPICIOUS_CLINIC';

    /* RESULT: id = 31
               name = SUSPICIOUS_CLINIC
               country_id = 0 */

Adding DR HOUSE to the patient_clinic_record table:

    INSERT INTO patient_clinic_record (person_id, clinic_id)
    VALUES (3487, 31);

Checking if DR HOUSE was added to the patient_clinic_record table:

    SELECT * FROM patient_clinic_record WHERE person_id = 3487;

    /* RESULT: id = 2406
               person_id = 3487
               clinic_id = 31 */

Creating prescription prescribed by DR HOUSE to himself:

    INSERT INTO prescription (prescription_date, expiration_date, prescribed_by_id, patient_clinic_record_id)
    VALUES ('2023-02-12', '2024-02-12', 3487, 2406);

Checking if the prescription was added to the prescription table:

    SELECT * FROM prescription WHERE patient_clinic_record_id=2406 AND prescription_date='2023-02-12';

    /* RESULT: id = 19
               prescription_date = 2023-02-12
               expiration_date = 2024-02-12
               prescribed_by_id = 3487
               patient_clinic_record_id = 2406 */

Finding medicine_id of VICODIN:

    SELECT id, name FROM medicine WHERE name='VICODIN';

    /* RESULT: id = 26
               name = VICODIN */

Creating prescription_medicine with a dose = 10:

    INSERT INTO prescription_medicine (dose, prescription_id, medicine_id)
    VALUES (10, 19, 26);
    
Checking if prescription_medicine was created:

    SELECT * FROM prescription_medicine WHERE prescription_id = 19;

    /* RESULT: id = 39
               dose: 10
               prescription_id = 19
               medicine_id = 26 */

### 6. Modify the previous suspicious prescription to the correct dose.

Finding what is max_dose of VICODIN:

    SELECT name, max_dose FROM medicine WHERE name = 'VICODIN';

    /* RESULT: name = VICODIN
               max_dose = 4 */

Changing the previous prescription to the correct dose:

    UPDATE prescription_medicine
    SET dose = 4
    WHERE id = 39;

Checking if the prescription was changed:

    SELECT * FROM prescription_medicine WHERE id = 39;

    /* RESULT: id = 39
               dose = 4
               prescripton_id = 19
               medicine_id = 26 */

### 7. Make DR HOUSE prescribe VICODIN to some other patient (from a different clinic) with a dose = 4

Finding the id of DR HOUSE from the person table:

    SELECT id FROM person WHERE first_name='DR' AND last_name='HOUSE';

    -- RESULT: id = 3487 
         
Finding a patient from a different clinic than SUSPICIOUS_CLINIC:

    SELECT * FROM clinic
    WHERE name != 'SUSPICIOUS_CLINIC';
    
    /* RESULT: [...]
               id = 6
               name = CLINIC_1_PL
               country_id = 0
               [...] */

    SELECT * FROM patient_clinic_record WHERE clinic_id=6;

    /* RESULT: [...]
               id = 600
               person_id = 1680
               clinic_id = 6
               [...] */

Creating prescription prescribed by DR HOUSE to another patient:
    
    INSERT INTO prescription (prescription_date, expiration_date, prescribed_by_id, patient_clinic_record_id)
    VALUES ('2023-02-12', '2024-02-12', 3487, 600);

Checking if the prescription was added to the prescription table:

    SELECT * FROM prescription
    WHERE patient_clinic_record_id=600 AND prescription_date='2023-02-12';

    /* RESULT: id = 20
               prescription_date = 2023-02-12
               expiration_date = 2024-02-12
               prescribed_by_id = 3487
               patient_clinic_record_id = 600 */

Finding medicine_id of VICODIN:

    SELECT id, name FROM medicine WHERE name='VICODIN';

    /* RESULT: id = 26
               name = VICODIN */

Creating prescription_medicine with a dose = 4:

    INSERT INTO prescription_medicine (dose, prescription_id, medicine_id)
    VALUES (4, 20, 26);

Checking if prescription_medicine was created:

    SELECT * FROM prescription_medicine WHERE prescription_id = 20;

    /* RESULT: id = 40
               dose: 4
               prescription_id = 20
               medicine_id = 26 */

### 8. Delete all traces of DR HOUSE activities in the database

Deleting prescriptions prescribed by DR HOUSE to himself and another patient from the prescription_medicine table:

    SELECT id, first_name, last_name FROM person WHERE first_name='DR' AND last_name='HOUSE';

    /* RESULT: id = 3487
               first_name = DR
               last_name = HOUSE */

    SELECT * FROM prescription WHERE prescribed_by_id=3487;

    /* RESULT: id = 19
               prescription_date = 2023-02-12
               expiration_date = 2024-02-12
               prescribed_by_id = 3487
               patient_clinic_record_id = 2406
    
               id = 20
               prescription_date = 2023-02-12
               expiration_date = 2024-02-12
               prescribed_by_id = 3487
               patient_clinic_record_id = 600 */

 
    SELECT * FROM prescription_medicine WHERE prescription_id IN (19, 20);

    /* RESULT: id = 39
               dose = 4
               prescription_id = 19
               medicine_id = 26 */

    /* RESULT: id = 40
               dose = 4
               prescription_id = 20
               medicine_id = 26 */

    DELETE FROM prescription_medicine WHERE id IN (39, 40);
 

Checking if prescriptions were deleted from the prescription_medicine table:

    SELECT COUNT(*) FROM prescription_medicine WHERE id IN (39, 40);

    -- RESULT: 0

Deleting prescriptions prescribed by DR HOUSE to himself and another patient from the prescription table:

    DELETE FROM prescription WHERE id IN (19, 20);

Checking if prescriptions were deleted from the prescription table:

    SELECT COUNT(*) FROM prescription WHERE id IN (19, 20);

    -- RESULT: 0

Deleting DR HOUSE from the patient_clinic_record table:

    SELECT * FROM patient_clinic_record WHERE person_id = 3487;

    /* RESULT: id = 2406
               person_id = 3487
               clinic_id = 31 */

    DELETE FROM patient_clinic_record WHERE id = 2406;

Checking if DR HOUSE was deleted from the patient_clinic_record table:

    SELECT COUNT(*) FROM patient_clinic_record WHERE person_id = 3487;

    -- RESULT: 0

Deleting DR HOUSE from the person_clinic_role table:

    SELECT * FROM person_clinic_role WHERE person_id = 3487;

    /* RESULT: id = 3482
               person_id = 3487
               clinic_id = 31
               role_id = 0

               id = 3483
               person_id = 3487
               clinic_id = 31
               role_id = 1 */

    DELETE FROM person_clinic_role WHERE id IN (3482, 3483);

Checking if DR HOUSE was deleted from the person_clinic_role table:

    SELECT COUNT(*) FROM person_clinic_role WHERE person_id = 3487;    

    -- RESULT: 0

Deleting DR HOUSE from the person table:

    DELETE FROM person WHERE id = 3487;

Checking if DR HOUSE was deleted from the person table:

    SELECT COUNT(*) FROM person WHERE id = 3487;

    -- RESULT: 0

Deleting VICODIN from the medicine table:

    SELECT * FROM medicine WHERE name = 'VICODIN';

    /* RESULT: id = 26
               name = VICODIN
               max_dose = 4
               manufacturer_id = 6 */

    DELETE FROM medicine WHERE id = 26;

Checking if VICODIN was deleted from the medicine table:

    SELECT COUNT(*) FROM medicine WHERE name = 'VICODIN';

    -- RESULT: 0

Deleting FAKE_PAINKILLER_ENTERPRISE from the medicine_manufacturer table:

    SELECT * FROM medicine_manufacturer WHERE name = 'FAKE_PAINKILLER_ENTERPRISE';

    /* RESULT: id = 6
               name = FAKE_PAINKILLER_ENTERPRISE */

    DELETE FROM medicine_manufacturer WHERE id = 6;

Checking if FAKE_PAINKILLER_ENTERPRISE was deleted from the medicine_manufacturer table:

    SELECT COUNT(*) FROM medicine_manufacturer WHERE name = 'FAKE_PAINKILLER_ENTERPRISE';

    -- RESULT: 0

Deleting SUSPICIOUS_CLINIC from the clinic table:

    SELECT * FROM clinic WHERE name = 'SUSPICIOUS_CLINIC';

    /* RESULT: id = 31
               name = SUSPICIOUS_CLINIC
               countr_id = 0 */

    DELETE FROM clinic WHERE id = 31;

Checking if SUSPICIOUS_CLINIC was deleted from the clinic table:

    SELECT COUNT(*) FROM clinic WHERE name = 'SUSPICIOUS_CLINIC';

    -- RESULT: 0