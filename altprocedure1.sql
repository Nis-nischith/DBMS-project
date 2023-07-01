CREATE OR REPLACE PROCEDURE Procedure2(oID IN NUMBER)
IS
    p_row Property%ROWTYPE;
    n NUMBER;
    CURSOR propertys IS
    SELECT *
    FROM Property
    WHERE owner_ID = oID;
BEGIN
    OPEN propertys;

    LOOP
    FETCH propertys INTO p_row;
    EXIT WHEN propertys%NOTFOUND;
    dbms_output.put_line(p_row.owner_ID);
    END LOOP;
    n := propertys%ROWCOUNT;
    dbms_output.put_line(n);
    CLOSE propertys;
END;
/