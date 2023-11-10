CREATE DATABASE veterinary;

CREATE TABLE animals(
   animalid INT PRIMARY KEY,
   name VARCHAR(50) NOT NULL,
   species VARCHAR(50) NOT NULL,
   breed VARCHAR(50) NOT NULL,
   dateofbirth DATE,
   gender VARCHAR(10) NOT NULL,
   color VARCHAR(50) NOT NULL,
   ownerid INT,foreign key (ownerid) references owners(ownerid));
   
