CREATE DATABASE my_hospital_app;
GO

USE my_hospital_app;
GO

CREATE TABLE country (
	id int NOT NULL IDENTITY(0,1) PRIMARY KEY,
	name varchar(255) NOT NULL,
	country_code varchar(255) NOT NULL
);

CREATE TABLE language (
	id int NOT NULL IDENTITY(0,1) PRIMARY KEY,
	name varchar(255) NOT NULL,
	language_code varchar(255) NOT NULL
);

CREATE TABLE country_language (
	id int NOT NULL IDENTITY(0,1) PRIMARY KEY,
	country_id int NOT NULL FOREIGN KEY REFERENCES country(id),
	language_id int NOT NULL FOREIGN KEY REFERENCES language(id)
);

CREATE TABLE clinic (
	id int NOT NULL IDENTITY(0,1) PRIMARY KEY,
	name varchar(255) NOT NULL,
	country_id int NOT NULL FOREIGN KEY REFERENCES country(id)
);

CREATE TABLE role (
	id int NOT NULL IDENTITY(0,1) PRIMARY KEY,
	name varchar(255) NOT NULL
);

CREATE TABLE person (
	id int NOT NULL IDENTITY(0,1) PRIMARY KEY,
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	dob date NOT NULL,
	title varchar(255),
	gender varchar(255),
	address_line_1 varchar(255),
	address_line_2 varchar(255),
	phone_number varchar(255),
	email varchar(255),
	language_id int NOT NULL FOREIGN KEY REFERENCES language(id)
);

CREATE TABLE person_clinic_role (
	id int NOT NULL IDENTITY(0,1) PRIMARY KEY,
	person_id int NOT NULL FOREIGN KEY REFERENCES person(id),
	clinic_id int NOT NULL FOREIGN KEY REFERENCES clinic(id),
	role_id int NOT NULL FOREIGN KEY REFERENCES role(id)
);

CREATE TABLE patient_clinic_record (
	id int NOT NULL IDENTITY(0,1) PRIMARY KEY,
	person_id int NOT NULL FOREIGN KEY REFERENCES person(id),
	clinic_id int NOT NULL FOREIGN KEY REFERENCES clinic(id),
);

CREATE TABLE patient_eeg_data (
	id int NOT NULL IDENTITY(0,1) PRIMARY KEY,
	electrode varchar(255) NOT NULL,
	value float(24) NOT NULL,
	time datetime2 NOT NULL,
	patient_clinic_record_id int NOT NULL FOREIGN KEY REFERENCES patient_clinic_record(id)
);

CREATE TABLE patient_ekg_data (
	id int NOT NULL IDENTITY(0,1) PRIMARY KEY,
	electrode varchar(255) NOT NULL,
	value float(24) NOT NULL,
	time datetime2 NOT NULL,
	patient_clinic_record_id int NOT NULL FOREIGN KEY REFERENCES patient_clinic_record(id)
);

CREATE TABLE medicine_manufacturer (
	id int NOT NULL IDENTITY(0,1) PRIMARY KEY,
	name varchar(255) NOT NULL
);

CREATE TABLE medicine (
	id int NOT NULL IDENTITY(0,1) PRIMARY KEY,
	name varchar(255) NOT NULL,
	max_dose float(24) NOT NULL,
	manufacturer_id int NOT NULL FOREIGN KEY REFERENCES medicine_manufacturer(id)
);

CREATE TABLE prescription (
	id int NOT NULL IDENTITY(0,1) PRIMARY KEY,
	prescription_date date NOT NULL,
	expiration_date date NOT NULL,
	prescribed_by_id int NOT NULL FOREIGN KEY REFERENCES person(id),
	patient_clinic_record_id int NOT NULL FOREIGN KEY REFERENCES patient_clinic_record(id)
);

CREATE TABLE prescription_medicine (
	id int NOT NULL IDENTITY(0,1) PRIMARY KEY,
	dose float(24) NOT NULL,
	prescription_id int NOT NULL FOREIGN KEY REFERENCES prescription(id),
	medicine_id int NOT NULL FOREIGN KEY REFERENCES medicine(id)
);