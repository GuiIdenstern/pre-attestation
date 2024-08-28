CREATE TABLE test_table (
    name VARCHAR CONSTRAINT namechk CHECK (char_length(name) >= 4 and char_length(name) <= 10),
    surname VARCHAR,
    age INTEGER CONSTRAINT agechk CHECK (age >=0 AND age <=150),
    city VARCHAR
);

INSERT into test_table (name,surname,age,city) VALUES
('Anton','Smirnov',20,'Moscow'),
('Anton','Ivanov',22,'Moscow'),
('Anton','Ivanov',23,'Moscow'),
('Ivan','Ivanov',25,'Moscow'),
('Ivan','Ivanov',20,'Moscow'),
('Ivan','Petrov',24,'St. Petersburg'),
('Ivan','Petrov',78,'St. Petersburg'),
('Petr','Petrov',93,'St. Petersburg'),
('Petr','Petrov',26,'St. Petersburg'),
('Petr','Petrov',48,'St. Petersburg'),
('Petr','Sidorov',5,'Paris'),
('Petr','Sidorov',9,'Paris'),
('Petr','Sidorov',9,'Paris'),
('Sergey','Sidorov',4,'Paris'),
('Sergey','Sidorov',49,'Paris'),
('Sergey','Testov',54,'London'),
('Sergey','Testov',45,'London'),
('Sergey','Testov',56,'London'),
('Anton','Testov',64,'London'),
('Anton','Smirnov',8,'London');
