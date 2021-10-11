--2.1 Creating Table
CREATE TABLE New_Table
  (
  Id         char(10)        PRIMARY KEY,
  Brand      char(10)        NOT NULL,
  Type       char(250)       NOT NULL,
  Color      char(250)       NOT NULL,
  Price      decimal(8,2)    NOT NULL,
  Des        Varchar (750)   NULL
  );
-- cannot be no value / either NULL or NOT NULL / PRI must be NULL

--2.2 Adding Data
INSERT INTO Spec_Table
       (id
       ,Brand
       ,Type
       ,Color
       ,Price
       ,Des
       )
VALUES
       ('123456'
       ,'Gucci'
       ,'Slippers
       ,'Pink'
       ,'695.00'
       ,NULL
       );

--2.3 Creating Temporary Tables
CREATE TEMPORARY TABLE Temp_table AS
  (

    SELECT *
    FROM Spec_Table
    WHERE shoe_type = 'sandals'

)

--Will be del when current session is terminated but faster
