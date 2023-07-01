CREATE OR REPLACE PROCEDURE InsertPropertyRecord
(pID IN NUMBER, rent IN NUMBER, phir IN NUMBER, nof IN NUMBER, yoc IN NUMBER, sd IN DATE, ed IN DATE, ta IN NUMBER, pa IN NUMBER, city IN VARCHAR2, addr IN VARCHAR2, is_res IN NUMBER, nob IN NUMBER, oID IN NUMBER)
IS
  n number;
BEGIN

  SELECT COUNT(*) INTO n
  FROM Users
  WHERE aadhar_ID=oID;

  IF n=0 THEN
    dbms_output.put_line('User does not exist.');

  ELSE
    SELECT COUNT(*) INTO n
    FROM Owner
    WHERE owner_ID=oID;

    IF n=0 THEN
      INSERT INTO Owner VALUES(oID);
    END IF;
    INSERT INTO Property VALUES(pID, rent, phir, nof, yoc, sd, ed, ta, pa, city, addr, oID);

    IF is_res=0 THEN
      INSERT INTO Commercial VALUES(pID);
    ELSE
      INSERT INTO Residential VALUES(pID, nob);
    END IF;

  END IF;
END;
/