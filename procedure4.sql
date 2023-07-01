CREATE OR REPLACE PROCEDURE CreateUser
(aID IN NUMBER, name IN VARCHAR2, age IN NUMBER, dno IN NUMBER, city IN VARCHAR2, state IN VARCHAR2, pin IN NUMBER, is_m IN NUMBER)
IS
BEGIN
    INSERT INTO Users VALUES(aID, name, age, dno, city, state, pin, is_m);
END;
/