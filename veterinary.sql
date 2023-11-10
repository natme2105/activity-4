CREATE DATABASE veterinary;

   
   CREATE TABLE MedicalRecords (
    recordid INT PRIMARY KEY,
    animalid INT,
    recorddate TIMESTAMP,
    doctorid INT,
    diagnosis TEXT,
    prescription TEXT,
    notes TEXT,
    FOREIGN KEY (animalid) REFERENCES Animals(animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctorid)
);
INSERT INTO medicalrecords (recordid, animalid, recorddate, doctorid, diagnosis, prescription, notes)
VALUES 
    (1, 1, '2023-01-05 00:00:00', 1, 'Health check', 'N/A', 'Regular checkup, no issue detected'),
    (2, 2, '2023-01-10 00:00:00', 1, 'Vaccination', 'Vaccine X', 'Administered vaccination X as per schedule'),
    (3, 3, '2023-02-02 00:00:00', 3, 'Sprained leg', 'Pain Medication', 'Rest recommended for two weeks'),
    (4, 4, '2023-02-15 00:00:00', 1, 'Dental cleaning', 'N/A', 'Completed dental cleaning procedure'),
    (5, 5, '2023-03-10 00:00:00', 4, 'Skin infection', 'Antibiotics', 'Prescribed antibiotics for skin infection'),
    (6, 6, '2023-03-10 00:00:00', 2, 'Flea infestation', 'Flea Treatment', 'Administered flea treatment'),
    (7, 7, '2023-04-12 00:00:00', 1, 'Vaccination', 'Vaccine Y', 'Administered vaccination Y as per schedule'),
    (8, 8, '2023-04-18 00:00:00', 5, 'Spaying', 'N/A', 'Successfully performed spaying surgery'),
    (9, 9, '2023-05-02 00:00:00', 4, 'Allergic reaction', 'Antihistamines', 'Allergic reaction due to food prescribed antihistamine'),
    (10, 10, '2023-05-20 00:00:00', 6, 'Conjunctivitis', 'Eye drops', 'Prescribed eye drops for conjunctivitis');