# JOINS

### 1. Select all clinics in USA

    SELECT clinic.name, country.name FROM clinic
    LEFT JOIN country ON clinic.country_id=country.id
    WHERE country.name='USA';

### 2. Select all MedicineManufacturer names with the names of their medications

    SELECT medicine_manufacturer.name AS Medicine_manufacturer, medicine.name AS Medicine FROM medicine_manufacturer
    LEFT JOIN medicine ON medicine_manufacturer.id=medicine.manufacturer_id;

### 3. Select all EEG data for the patient with the provided id

    SELECT patient_clinic_record.person_id, patient_eeg_data.* FROM patient_eeg_data
    LEFT JOIN patient_clinic_record ON patient_eeg_data.patient_clinic_record_id=patient_clinic_record.id
    WHERE patient_clinic_record.person_id=1080;

### 4. Select all prescribed medicine name, dose and maxDose

    SELECT medicine.name, prescription_medicine.dose, medicine.max_dose FROM prescription_medicine
    LEFT JOIN medicine ON prescription_medicine.medicine_id=medicine.id
    ORDER BY medicine.name;

### 5. Select all combinations of language code and country code

    SELECT c.country_code, l.language_code FROM country_language cl
    LEFT JOIN country c ON cl.country_id=c.id
    LEFT JOIN language l ON cl.language_id=l.id;

### 6. Select only "PATIENT"s

    SELECT p.first_name, p.last_name, r.name FROM person_clinic_role pcr
    LEFT JOIN role r ON pcr.role_id=r.id
    LEFT JOIN person p ON pcr.person_id=p.id
    WHERE r.name='PATIENT';

### 7. Select all patients that had EKG at 2013-04-01

    SELECT DISTINCT pcr.id, p.first_name, p.last_name FROM patient_ekg_data pekg
    INNER JOIN patient_clinic_record pcr ON pekg.patient_clinic_record_id=pcr.id
    INNER JOIN person p ON pcr.person_id=p.id
    WHERE pekg.time BETWEEN '2013-04-01 00:00:00' AND '2013-04-01 23:59:59';