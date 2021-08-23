
-- change this to be your own database
create database APIDemo;
USE APIDemo;
-- select * from organisation

DROP TABLE IF EXISTS CONTACT
DROP TABLE IF EXISTS ORGANISATION


CREATE TABLE ORGANISATION(
    ORGNAME NVARCHAR(100) PRIMARY KEY
,   NOTES NVARCHAR(MAX)    
)

CREATE TABLE CONTACT(
    CONTACTID INT IDENTITY(1,1) PRIMARY KEY,
    FIRSTNAME NVARCHAR(100) NOT NULL,
    SURNAME NVARCHAR(100),
    ADDRESS NVARCHAR(500),
    SUBURB NVARCHAR(100),
    STATE NVARCHAR(50),
    POSTCODE NVARCHAR(20),
    MOBILE NVARCHAR(15),
    HOMEPHONE NVARCHAR(15),
    EMAIL NVARCHAR(100) UNIQUE,
    ORGNAME NVARCHAR(100),
    CONSTRAINT FK_CONTACT_ORG FOREIGN KEY(ORGNAME) 
                              REFERENCES ORGANISATION
)
GO
INSERT INTO ORGANISATION (ORGNAME, NOTES) VALUES
('San Antonia Basketball Club','nicknames is the spurs'),
('ACME Online Sales and Rip Offs','anything'),
('1st Sesame Street Scout Group','This mob likes to go camping alot, and because of oscar they never have any problems with rubbish');

select * from contact
INSERT INTO CONTACT (FIRSTNAME, SURNAME, ADDRESS, SUBURB, STATE, POSTCODE, MOBILE, HOMEPHONE,EMAIL, ORGNAME) VALUES
('Oscar', 'The Grouch', '1 Sesame Street', 'New York', 10001, 'idk', 'iddkk', '555-1234', 'groucho@sesamestreet.com', '1st Sesame Street Scout Group'),
-- ('Big', 'Bird', '3 Sesame Street', 'New York', 10001, 'null', '718-555-2345', 'flightlessinseattle@sesamestreet.com', '1st Sesame Street Scout Group'),
-- ('Grover', 'Grove', '5 Sesame Street', 'New York', 10001, '+1400876543', 'null', 'grover@sesamestreet.com', '1st Sesame Street Scout Group'),
-- ('Kermit', 'The Frog', '7 Sesame Street', 'New York', 10001, '+1400876521', '718-555-3456', 'rainbowconnection@sesamestreet.com', '1st Sesame Street Scout Group'),
-- ('Wile', 'e Coyote', '1001 SThe Strip', 'Las Vegas', 88901, '+1401123456', '702-555-39876', 'perpetualloser@acme.com', 'ACME Online Sales and Rip Offs'),
-- ('Road', 'Runner', 'null', 'null', 'null', '+1401127654', 'null', 'jaywalk@hotmail.com', 'ACME Online Sales and Rip Offs'),
-- ('Tim', 'Duncan', '21 Dunk Avenue', 'San Antionio', 78006, '+1401127655', 'null', 'timmy@spurs.com', 'San Antonia Basketball Club'),
-- ('Emanuel', 'Ginóbili', '20 Going Left Boulevard', 'San Antionio', 78006, '+1401127656', 'null', 'manu@spurs.com', 'San Antonia Basketball Club'),
-- ('Tony', 'Parker', '9 French Lane', 'San Antionio', 78006, '+1401127657', 'null', 'tony@spurs.com', 'San Antonia Basketball Club');
('Big', 'Bird', '2 Sesame Street', 'New York', 10001, 'idk', 'iddkk', '555-1234', 'bidbird@sesamestreet.com', 'ACME Online Sales and Rip Offs');