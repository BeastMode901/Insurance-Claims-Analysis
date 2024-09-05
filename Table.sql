--Table Creation

--Customer Table
CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(100),
    DOB DATE,
	Gender CHAR (1),
    Address VARCHAR(100),
    City VARCHAR(100),
    State VARCHAR(100),
    State_Code CHAR(2),
    ZipCode char (5) );

--Policy Table
CREATE TABLE Policies (Policy_ID SERIAL PRIMARY KEY,
						Customer_ID INT,
						PolicyType_ID INT,
						PolicyNumber VARCHAR (100),
						StartDate DATE,
						EndDate DATE,
						PremiumAmount DECIMAL (10,2),
						FOREIGN KEY (Customer_ID) REFERENCES Customers (Customer_ID),
						FOREIGN KEY (PolicyType_ID) REFERENCES PolicyTypes (PolicyType_ID) );
	
--Policy Type Data
CREATE TABLE PolicyTypes (PolicyType_ID SERIAL PRIMARY KEY,
							Policy_Name VARCHAR (100),
							Description VARCHAR (100));


--Claims Table
CREATE TABLE CLAIMS (Claim_ID SERIAL PRIMARY KEY,
					Policy_ID INT,
					ClaimDate DATE,
					ClaimAmount Decimal(10,2),
					ClaimStatus VARCHAR(100),
					C_Description VARCHAR(100),
					FOREIGN KEY (Policy_ID) REFERENCES Policies (Policy_ID)
					);



