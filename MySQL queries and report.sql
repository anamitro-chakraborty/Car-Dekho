-- READ DATA --
SELECT * FROM cars.`car dekho`;
-- total cars : to get a count of total records --
SELECT COUNT(*) FROM `car dekho`;
-- how many cars will be available in 2023? --
SELECT COUNT(*) FROM `car dekho` WHERE year= 2023;
-- how many cars is available in 2020, 2021, 2022? --
SELECT COUNT(*) FROM `car dekho` WHERE year= 2020;
SELECT COUNT(*) FROM `car dekho` WHERE year= 2021;
SELECT COUNT(*) FROM `car dekho` WHERE year= 2022;
-- OR --
SELECT COUNT(*) FROM `car dekho` WHERE year in (2020,2021,2022) GROUP BY year;
-- total of all cars by year --
SELECT year, COUNT(*) FROM `car dekho` GROUP BY year ;
-- how many diesel cars will be in 2020? --
SELECT COUNT(*) FROM `car dekho` WHERE year = 2020 AND fuel = "Diesel";
-- how many petrol cars will be in 2020? --
SELECT count(*) FROM `car dekho` WHERE year = 2020 AND fuel = "petrol" ;
-- print all the fuel cars ( petrol, diesel, and cng) come by all year --
SELECT year, COUNT(*) FROM `car dekho` WHERE fuel = "Diesel" GROUP BY year ;
SELECT year, COUNT(*) FROM `car dekho` WHERE fuel = "Petrol" GROUP BY year ;
SELECT year, COUNT(*) FROM `car dekho` WHERE fuel = "CNG" GROUP BY year ;