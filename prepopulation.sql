EXECUTE CreateUser(1, 'User-1', 19, 4, 'City-1', 'State-1', 110000, 1);
EXECUTE CreateUser(2, 'User-2', 20, 7, 'City-2', 'State-2', 220000, 1);
EXECUTE CreateUser(3, 'User-3', 21, 8, 'City-3', 'State-3', 330000, 0);
EXECUTE CreateUser(4, 'User-4', 22, 9, 'City-4', 'State-4', 440000, 0);
EXECUTE CreateUser(5, 'User-5', 20, 11, 'City-5', 'State-1', 110001, 0);
EXECUTE CreateUser(6, 'User-6', 21, 10, 'City-1', 'State-2', 220002, 0);
EXECUTE CreateUser(7, 'User-7', 22, 14, 'City-2', 'State-3', 330003, 0);
EXECUTE CreateUser(8, 'User-8', 23, 17, 'City-3', 'State-4', 440004, 0);
EXECUTE CreateUser(9, 'User-9', 23, 17, 'City-4', 'State-4', 440004, 0);
EXECUTE CreateUser(10, 'User-10', 23, 17, 'City-5', 'State-4', 440004, 0);

EXECUTE InsertPropertyRecord(1, 10000, 5, 1, 2001, '1-JAN-2010', '31-DEC-2020', 10000, 2000, 'City-1', 'Address-1', 0, 0, 1);
EXECUTE InsertPropertyRecord(2, 20000, 6, 1, 2001, '2-FEB-2010', '31-DEC-2020', 20000, 4000, 'City-1', 'Address-2', 1, 1, 1);
EXECUTE InsertPropertyRecord(3, 30000, 7, 1, 2002, '3-MAR-2011', '31-DEC-2021', 30000, 6000, 'City-2', 'Address-3', 0, 0, 1);
EXECUTE InsertPropertyRecord(4, 40000, 8, 1, 2002, '4-APR-2011', '31-DEC-2021', 40000, 10000, 'City-2', 'Address-4', 1, 2, 1);
EXECUTE InsertPropertyRecord(5, 50000, 10, 2, 2003, '5-MAY-2012', '31-DEC-2022', 50000, 12000, 'City-3', 'Address-5', 0, 0, 2);
EXECUTE InsertPropertyRecord(6, 60000, 4, 2, 2003, '6-JUN-2012', '31-DEC-2022', 60000, 14000, 'City-3', 'Address-6', 1, 3, 2);
EXECUTE InsertPropertyRecord(7, 70000, 6, 2, 2004, '7-JUL-2013', '31-DEC-2023', 70000, 16000, 'City-4', 'Address-7', 0, 0, 2);
EXECUTE InsertPropertyRecord(8, 80000, 8, 2, 2004, '8-AUG-2013', '31-DEC-2023', 80000, 18000, 'City-4', 'Address-8', 1, 4, 2);
EXECUTE InsertPropertyRecord(9, 90000, 10, 2, 2005, '9-SEP-2014', '31-DEC-2024', 90000, 20000, 'City-5', 'Address-9', 0, 0, 3);
EXECUTE InsertPropertyRecord(10, 100000, 12, 3, 2005, '10-OCT-2014', '31-DEC-2024', 100000, 22000, 'City-5', 'Address-10', 1, 5, 3);
EXECUTE InsertPropertyRecord(11, 110000, 7, 3, 2006, '11-NOV-2015', '31-DEC-2025', 110000, 24000, 'City-1', 'Address-11', 0, 0, 3);
EXECUTE InsertPropertyRecord(12, 120000, 8, 3, 2006, '12-DEC-2015', '31-DEC-2025', 120000, 26000, 'City-1', 'Address-12', 1, 6, 3);
EXECUTE InsertPropertyRecord(13, 130000, 9, 3, 2007, '13-JAN-2016', '31-DEC-2026', 130000, 28000, 'City-2', 'Address-13', 0, 0, 3);
EXECUTE InsertPropertyRecord(14, 140000, 10, 3, 2007, '14-FEB-2016', '31-DEC-2026', 140000, 30000, 'City-2', 'Address-14', 1, 7, 4);
EXECUTE InsertPropertyRecord(15, 150000, 11, 4, 2008, '15-MAR-2017', '31-DEC-2027', 150000, 32000, 'City-3', 'Address-15', 0, 0, 4);
EXECUTE InsertPropertyRecord(16, 160000, 5, 5, 2008, '16-APR-2017', '31-DEC-2027', 160000, 34000, 'City-3', 'Address-16', 1, 8, 4);
EXECUTE InsertPropertyRecord(17, 170000, 7, 6, 2009, '17-JUN-2018', '31-DEC-2028', 170000, 36000, 'City-4', 'Address-17', 0, 0, 5);
EXECUTE InsertPropertyRecord(18, 180000, 9, 7, 2009, '18-JUL-2018', '31-DEC-2028', 180000, 38000, 'City-4', 'Address-18', 1, 9, 5);
EXECUTE InsertPropertyRecord(19, 190000, 12, 8, 2010, '19-SEP-2019', '31-DEC-2029', 190000, 40000, 'City-5', 'Address-19', 0, 0, 5);
EXECUTE InsertPropertyRecord(20, 200000, 15, 9, 2010, '20-OCT-2019', '31-DEC-2029', 200000, 42000, 'City-5', 'Address-20', 1, 10, 5);

EXECUTE RentProperty(1, 6, '6-JUN-2015', '7-JUL-2020', 5);
EXECUTE RentProperty(2, 7, '8-JUL-2016', '10-AUG-2020', 6);
EXECUTE RentProperty(3, 8, '11-AUG-2016', '30-OCT-2023', 7);
EXECUTE RentProperty(4, 9, '14-DEC-2021', '30-OCT-2023', 8);
EXECUTE RentProperty(5, 10, '14-DEC-2021', '30-OCT-2023', 9);
EXECUTE RentProperty(5, 5, '14-DEC-2021', '30-OCT-2023', 9);


--INSERT INTO Property_History VALUES(1, 3, 20000, '25-FEB-2014', '5-NOV-2020', 5);
--INSERT INTO Property_History VALUES(1, 4, 10000, '9-APR-2008', '30-OCT-2012', 8);
--INSERT INTO Property_History VALUES(2, 2, 7500, '14-AUG-2020', '21-SEP-2022', 8);