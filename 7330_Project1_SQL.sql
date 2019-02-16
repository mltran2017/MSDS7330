#Creates the whole database
CREATE SCHEMA datacleandb;

#Using the database we created
USE datacleandb;

#Creates the table for storing the data
CREATE TABLE IF NOT EXISTS mydata
(
	Fiscal_year YEAR(4),
	Fiscal_period INT,
	System_line_id VARCHAR(50),
	Supplier_id INT,
	Supplier_name VARCHAR(255),
	Vendor_Id INT,
    Sub_Vendor VARCHAR(255),
	Audit_Dashboard_Vendor VARCHAR(255),
	Upd_Dt VARCHAR(100),
	Upd_By VARCHAR(100)
);

#This displays the file location where you put the .csv file
#so that you can import it without an error
SHOW VARIABLES LIKE "secure_file_priv";

#Import the data into the table from that folder
#I don't know what languages are allowed,
#but it allowed them to be imported them as latin1.
#I don't know if it should be different
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MSDS7330-405 Project Dataset.csv'
INTO TABLE datacleandb.mydata
CHARACTER SET latin1
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#Create the lookup table
CREATE TABLE mydata_lookup
(
	Valid_Sub_Vendor VARCHAR(255),
	is_Supplier_Name BOOL
);
