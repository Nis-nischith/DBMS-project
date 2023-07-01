CREATE OR REPLACE PROCEDURE GetRentHistory(pID IN NUMBER)
IS
    ph_row Property_History%ROWTYPE;
    n number;
BEGIN

    SELECT COUNT(*) INTO n
    FROM Property_History 
    WHERE property_ID = pID;
    
    dbms_output.put_line('This property has ' || n || ' previous records.');
    dbms_output.put_line('---------------------------------------------------------');
    dbms_output.put_line('Rent History:');
    dbms_output.put_line('---------------------------------------------------------');
    FOR ph_row IN (SELECT * FROM Property_History WHERE property_ID = pID ORDER BY start_date)
    LOOP
        dbms_output.put_line('Tenant ID: ' || ph_row.tenant_ID);
        dbms_output.put_line('Rent: ' || ph_row.rent);
        dbms_output.put_line('Start Date: ' || ph_row.start_date);
        dbms_output.put_line('End Date: ' || ph_row.end_date);
        dbms_output.put_line('Agency Commision: ' || ph_row.agency_commision);
        dbms_output.put_line('---------------------------------------------------------');
    END LOOP;
END;
/