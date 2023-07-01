CREATE OR REPLACE PROCEDURE RentProperty(pID IN NUMBER, tID IN NUMBER, sd IN DATE, ed IN DATE, agc IN NUMBER)
IS
    n NUMBER;
BEGIN
    SELECT COUNT(*) INTO n
    FROM Users
    WHERE aadhar_ID=tID;

    IF n=0 THEN
        dbms_output.put_line('User does not exist.');
    
    ELSE
        SELECT COUNT(*) INTO n
        FROM Property
        WHERE property_ID=pID;

        IF n=0 THEN
            dbms_output.put_line('Property does not exist.');
        
        ELSE
            SELECT COUNT(*) INTO n
            FROM Tenant
            WHERE tenant_ID=tID;
            
            IF n=0 THEN
                INSERT INTO Tenant VALUES(tID);
            END IF;

            INSERT INTO Rent VALUES(pID, tID, sd, ed, agc);
        END IF;
    END IF;
END;
/