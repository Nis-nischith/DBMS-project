CREATE TABLE Users(
    aadhar_ID NUMBER,
    name VARCHAR(100),
    age NUMBER,
    door_number NUMBER,
    city VARCHAR(40),
    state VARCHAR(20),
    pin_code NUMBER,
    is_manager NUMBER,
    PRIMARY KEY(aadhar_ID)
);

CREATE TABLE Owner(
    owner_ID NUMBER,
    PRIMARY KEY(owner_ID),
    FOREIGN KEY(owner_ID) REFERENCES Users(aadhar_ID)
);

CREATE TABLE Tenant(
    tenant_ID NUMBER,
    PRIMARY KEY(tenant_ID),
    FOREIGN KEY(tenant_ID) REFERENCES Users(aadhar_ID)
);

CREATE TABLE User_Phonenumber(
    user_ID NUMBER,
    phonenumber NUMBER,
    PRIMARY KEY(user_ID, phonenumber),
    FOREIGN KEY(user_ID) REFERENCES Users(aadhar_ID)
);

CREATE TABLE Property(
    property_ID NUMBER,
    rent NUMBER,
    percentage_hike_in_rent NUMBER,
    number_of_floors NUMBER,
    year_of_construction NUMBER,
    start_date DATE,
    end_date DATE,
    total_area NUMBER,
    plinth_area NUMBER,
    city VARCHAR(40),
    address VARCHAR(200),
    owner_ID NUMBER,
    PRIMARY KEY(property_ID),
    FOREIGN KEY(owner_ID) REFERENCES Owner(owner_ID)
);

CREATE TABLE Residential(
    property_ID NUMBER,
    no_of_bedrooms NUMBER,
    PRIMARY KEY(property_ID),
    FOREIGN KEY(property_ID) REFERENCES Property(property_ID)
);

CREATE TABLE Commercial(
    property_ID NUMBER,
    PRIMARY KEY(property_ID),
    FOREIGN KEY(property_ID) REFERENCES Property(property_ID)
);

CREATE TABLE Rent(
    property_ID NUMBER,
    tenant_ID NUMBER,
    start_date DATE,
    end_date DATE,
    agency_commision NUMBER,
    PRIMARY KEY(property_ID, tenant_ID),
    FOREIGN KEY(tenant_ID) REFERENCES Tenant(tenant_ID),
    FOREIGN KEY(property_ID) REFERENCES Property(property_ID)
);

CREATE TABLE Property_History(
    property_ID NUMBER,
    tenant_ID NUMBER,
    rent NUMBER,
    start_date DATE,
    end_date DATE,
    agency_commision NUMBER,
    PRIMARY KEY(property_ID, tenant_ID, start_date),
    FOREIGN KEY(tenant_ID) REFERENCES Tenant(tenant_ID),
    FOREIGN KEY(property_ID) REFERENCES Property(property_ID)
);