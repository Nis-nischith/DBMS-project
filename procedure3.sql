CREATE OR REPLACE PROCEDURE GetTenantDetails(pID IN NUMBER)
IS
    r_row Rent%ROWTYPE;
    u_row Users%ROWTYPE;
BEGIN
    FOR r_row IN (SELECT * FROM Rent WHERE property_ID=pID)
    LOOP
        SELECT * INTO u_row
        FROM Users
        WHERE aadhar_ID=r_row.tenant_ID;

        dbms_output.put_line('Tenant ID: ' || u_row.aadhar_ID);
        dbms_output.put_line('Tenant Name: ' || u_row.name);
        dbms_output.put_line('Tenant Age: ' || u_row.age);
        dbms_output.put_line('-------------------------------------');
    END LOOP;
END;
/
