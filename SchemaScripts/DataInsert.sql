USE my_hospital_app;
GO

BULK INSERT dbo.language
FROM 'C:\Users\malwi\Desktop\Testowanie\SQL\Project_my_hospital_app\dane\0.csv'
WITH (FORMAT = 'CSV',
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a',
	FIRSTROW = 2);
GO

BULK INSERT dbo.country
FROM 'C:\Users\malwi\Desktop\Testowanie\SQL\Project_my_hospital_app\dane\1.csv'
WITH (FORMAT = 'CSV',
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a',
	FIRSTROW = 2);
GO

BULK INSERT dbo.country_language
FROM 'C:\Users\malwi\Desktop\Testowanie\SQL\Project_my_hospital_app\dane\2.csv'
WITH (FORMAT = 'CSV',
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a',
	FIRSTROW = 2);
GO

BULK INSERT dbo.role
FROM 'C:\Users\malwi\Desktop\Testowanie\SQL\Project_my_hospital_app\dane\3.csv'
WITH (FORMAT = 'CSV',
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a',
	FIRSTROW = 2);
GO

BULK INSERT dbo.clinic
FROM 'C:\Users\malwi\Desktop\Testowanie\SQL\Project_my_hospital_app\dane\4.csv'
WITH (FORMAT = 'CSV',
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a',
	FIRSTROW = 2);
GO

BULK INSERT dbo.person
FROM 'C:\Users\malwi\Desktop\Testowanie\SQL\Project_my_hospital_app\dane\5.csv'
WITH (FORMAT = 'CSV',
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a',
	FIRSTROW = 2);
GO

BULK INSERT dbo.person
FROM 'C:\Users\malwi\Desktop\Testowanie\SQL\Project_my_hospital_app\dane\6.csv'
WITH (FORMAT = 'CSV',
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a',
	FIRSTROW = 2);
GO

BULK INSERT dbo.person
FROM 'C:\Users\malwi\Desktop\Testowanie\SQL\Project_my_hospital_app\dane\7.csv'
WITH (FORMAT = 'CSV',
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a',
	FIRSTROW = 2);
GO

BULK INSERT dbo.person_clinic_role
FROM 'C:\Users\malwi\Desktop\Testowanie\SQL\Project_my_hospital_app\dane\8.csv'
WITH (FORMAT = 'CSV',
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a',
	FIRSTROW = 2);
GO

BULK INSERT dbo.medicine
FROM 'C:\Users\malwi\Desktop\Testowanie\SQL\Project_my_hospital_app\dane\9.csv'
WITH (FORMAT = 'CSV',
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a',
	FIRSTROW = 2);
GO

BULK INSERT dbo.medicine_manufacturer
FROM 'C:\Users\malwi\Desktop\Testowanie\SQL\Project_my_hospital_app\dane\10.csv'
WITH (FORMAT = 'CSV',
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a',
	FIRSTROW = 2);
GO

BULK INSERT dbo.patient_clinic_record
FROM 'C:\Users\malwi\Desktop\Testowanie\SQL\Project_my_hospital_app\dane\11.csv'
WITH (FORMAT = 'CSV',
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a',
	FIRSTROW = 2);
GO

BULK INSERT dbo.patient_eeg_data
FROM 'C:\Users\malwi\Desktop\Testowanie\SQL\Project_my_hospital_app\dane\12.csv'
WITH (FORMAT = 'CSV',
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a',
	FIRSTROW = 2);
GO

BULK INSERT dbo.patient_ekg_data
FROM 'C:\Users\malwi\Desktop\Testowanie\SQL\Project_my_hospital_app\dane\13.csv'
WITH (FORMAT = 'CSV',
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a',
	FIRSTROW = 2);
GO

BULK INSERT dbo.prescription
FROM 'C:\Users\malwi\Desktop\Testowanie\SQL\Project_my_hospital_app\dane\14.csv'
WITH (FORMAT = 'CSV',
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a',
	FIRSTROW = 2);
GO

BULK INSERT dbo.prescription_medicine
FROM 'C:\Users\malwi\Desktop\Testowanie\SQL\Project_my_hospital_app\dane\15.csv'
WITH (FORMAT = 'CSV',
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a',
	FIRSTROW = 2);
GO