# TechTFQ-30DaysSQLChallenge Day1
going through the challenge of SQL interview questions featured in the TechTFQ channel


In this repository we will be going through the SQL interview questions featured in the following YouTube Playlist [SQL Interview Questions](https://www.youtube.com/watch?v=FRzbOb3jdLg&list=PLavw5C92dz9Hxz0YhttDniNgKejQlPoAn).

# **Day 1: The problem statement:**

- For pairs of brands in the same year (i.e for the year 2020 (Apple, Samsung) and (Samsung, Apple) row1 & row5 
	-if custom1=custom3 and custom2= custom4: then keep only one pair.
- For pairs of brands in the same year
	-if custom1!=custom3 or custom2 != custom4: then keep both pairs
- For brands that do not have pairs in the same year: keep those row as well.

#### **INPUT**
![image](https://github.com/Highashikata/TechTFQ-30DaysSQLChallenge/assets/96960411/5fe5d9db-32a2-4cab-8457-415a89cd9270)

#### **OUTPUT**
![image](https://github.com/Highashikata/TechTFQ-30DaysSQLChallenge/assets/96960411/806f2d96-c404-43aa-98b3-389959246582)


#### **DDL** 
``` --- Creating the table
CREATE TABLE Brands (
    BRAND1 VARCHAR(255),
    BRAND2 VARCHAR(255),
    YEAR INTEGER,
    CUSTOM1 INTEGER,
    CUSTOM2 INTEGER,
    CUSTOM3 INTEGER,
    CUSTOM4 INTEGER
);
```

#### **DML**
```
INSERT INTO Brands (BRAND1, BRAND2, YEAR, CUSTOM1, CUSTOM2, CUSTOM3, CUSTOM4) 
VALUES 
    ('Apple', 'Samsung', 2020, 1, 2, 1, 2),
    ('Samsung', 'Apple', 2020, 1, 2, 1, 2),
    ('Apple', 'Samsung', 2021, 1, 2, 5, 3),
    ('Samsung', 'Apple', 2021, 5, 3, 1, 2),
    ('Google', Null, 2020, 5, 9, NULL, Null),
    ('Oneplus', 'Microsoft', 2020, 5, 9, 6, 3);
```

#### **DQL**
