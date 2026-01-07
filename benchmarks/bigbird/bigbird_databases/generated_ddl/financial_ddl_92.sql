-- Real estate property details
CREATE TABLE real_estate_property
(
    property_id          INTEGER PRIMARY KEY,
    owner_id             INTEGER NOT NULL,
    address_line1        TEXT NOT NULL,
    address_line2        TEXT,
    city                 TEXT NOT NULL,
    state                TEXT NOT NULL,
    zip_code             TEXT NOT NULL,
    country              TEXT NOT NULL,
    property_type        TEXT NOT NULL,
    built_year           INTEGER,
    lot_size_sqft        REAL,
    building_size_sqft   REAL,
    num_floors           INTEGER,
    num_bedrooms         INTEGER,
    num_bathrooms        REAL,
    heating_type         TEXT,
    cooling_type         TEXT,
    parking_spaces       INTEGER,
    market_value         REAL,
    last_assessed_date   DATE
);

INSERT INTO real_estate_property VALUES (1, 101, '123 Main St', NULL, 'Metropolis', 'NY', '10001', 'USA', 'SingleFamily', 1995, 5000.0, 2500.0, 2, 4, 2.5, 'Gas', 'Central', 2, 350000.0, '2023-01-15');
INSERT INTO real_estate_property VALUES (2, 102, '456 Oak Ave', 'Apt 5B', 'Gotham', 'IL', '60607', 'USA', 'Condo', 2008, 1800.0, 1200.0, 1, 2, 1.5, 'Electric', 'None', 1, 210000.0, '2022-11-30');
INSERT INTO real_estate_property VALUES (3, 103, '789 Pine Rd', NULL, 'Star City', 'CA', '90012', 'USA', 'Townhouse', 2015, 3000.0, 1800.0, 2, 3, 2.0, 'Gas', 'Central', 2, 275000.0, '2023-06-05');

-- Vehicle ownership history
CREATE TABLE vehicle_ownership_history
(
    record_id             INTEGER PRIMARY KEY,
    vehicle_vin           TEXT NOT NULL,
    owner_id              INTEGER NOT NULL,
    purchase_date         DATE NOT NULL,
    sale_date             DATE,
    purchase_price        REAL NOT NULL,
    sale_price            REAL,
    mileage_at_purchase   INTEGER,
    mileage_at_sale       INTEGER,
    registration_state    TEXT NOT NULL,
    license_plate         TEXT NOT NULL,
    vehicle_make          TEXT NOT NULL,
    vehicle_model         TEXT NOT NULL,
    vehicle_year          INTEGER NOT NULL,
    fuel_type             TEXT,
    transmission_type     TEXT,
    color                 TEXT,
    is_primary_vehicle    INTEGER,
    insurance_policy_id   INTEGER,
    previous_owner_id     INTEGER
);

INSERT INTO vehicle_ownership_history VALUES (1, '1HGCM82633A004352', 201, '2020-03-10', NULL, 15000.0, NULL, 12000, NULL, 'NY', 'ABC1234', 'Honda', 'Accord', 2020, 'Gasoline', 'Automatic', 'Blue', 1, 301, NULL);
INSERT INTO vehicle_ownership_history VALUES (2, 'JH4KA9650MC012345', 202, '2018-07-22', '2022-01-05', 22000.0, 18000.0, 30000, 25000, 'CA', 'XYZ5678', 'Acura', 'Legend', 2018, 'Petrol', 'Manual', 'Red', 0, 302, 201);
INSERT INTO vehicle_ownership_history VALUES (3, '2FTRX18W1XCA12345', 203, '2019-11-15', NULL, 27000.0, NULL, 5000, NULL, 'TX', 'LMN8901', 'Ford', 'F-150', 2019, 'Diesel', 'Automatic', 'Black', 1, 303, NULL);

-- Payroll transaction records
CREATE TABLE payroll_transaction
(
    payroll_id            INTEGER PRIMARY KEY,
    employee_id           INTEGER NOT NULL,
    pay_period_start      DATE NOT NULL,
    pay_period_end        DATE NOT NULL,
    gross_salary          REAL NOT NULL,
    net_salary            REAL NOT NULL,
    tax_withheld          REAL NOT NULL,
    social_security       REAL NOT NULL,
    medicare              REAL NOT NULL,
    retirement_contrib    REAL,
    bonus_amount          REAL,
    overtime_hours        REAL,
    overtime_rate         REAL,
    holiday_pay           REAL,
    pay_date              DATE NOT NULL,
    payment_method        TEXT NOT NULL,
    bank_account_number   TEXT,
    routing_number        TEXT,
    check_number          TEXT,
    payroll_status        TEXT NOT NULL
);

INSERT INTO payroll_transaction VALUES (1, 1001, '2023-01-01', '2023-01-15', 3000.0, 2400.0, 300.0, 150.0, 75.0, 200.0, 0.0, 5.0, 25.0, 0.0, '2023-01-20', 'DirectDeposit', '123456789', '011000015', NULL, 'Completed');
INSERT INTO payroll_transaction VALUES (2, 1002, '2023-01-01', '2023-01-15', 2800.0, 2240.0, 280.0, 140.0, 70.0, 150.0, 100.0, 0.0, 0.0, 150.0, '2023-01-20', 'Check', NULL, NULL, 'CHK1023', 'Completed');
INSERT INTO payroll_transaction VALUES (3, 1003, '2023-01-01', '2023-01-15', 3200.0, 2560.0, 320.0, 160.0, 80.0, 250.0, 0.0, 8.0, 30.0, 0.0, '2023-01-20', 'DirectDeposit', '987654321', '021000021', NULL, 'Completed');

-- Academic course enrollment
CREATE TABLE academic_course_enrollment
(
    enrollment_id         INTEGER PRIMARY KEY,
    student_id            INTEGER NOT NULL,
    course_id             INTEGER NOT NULL,
    term                  TEXT NOT NULL,
    enrollment_date       DATE NOT NULL,
    completion_date       DATE,
    grade                 TEXT,
    credits_earned        REAL,
    status                TEXT NOT NULL,
    instructor_id         INTEGER,
    department_code       TEXT,
    campus_location       TEXT,
    class_section         TEXT,
    enrollment_type       TEXT,
    tuition_fee           REAL,
    financial_aid_amount  REAL,
    payment_status        TEXT,
    attendance_percentage REAL,
    notes                 TEXT,
    last_updated          DATE
);

INSERT INTO academic_course_enrollment VALUES (1, 5001, 301, 'Fall2023', '2023-08-20', NULL, NULL, NULL, 'Enrolled', 601, 'CS', 'Main Campus', 'A', 'FullTime', 1500.0, 500.0, 'Pending', 0.0, NULL, '2023-08-20');
INSERT INTO academic_course_enrollment VALUES (2, 5002, 302, 'Spring2024', '2024-01-10', NULL, NULL, NULL, 'Enrolled', 602, 'ENG', 'North Campus', 'B', 'PartTime', 1200.0, 0.0, 'Paid', 0.0, NULL, '2024-01-10');
INSERT INTO academic_course_enrollment VALUES (3, 5003, 303, 'Summer2023', '2023-05-05', '2023-08-01', 'A', 3.0, 'Completed', 603, 'MATH', 'South Campus', 'C', 'FullTime', 1000.0, 200.0, 'Paid', 95.0, 'Excellent performance', '2023-08-02');

-- Medical prescription records
CREATE TABLE medical_prescription
(
    prescription_id       INTEGER PRIMARY KEY,
    patient_id            INTEGER NOT NULL,
    prescriber_id         INTEGER NOT NULL,
    medication_name       TEXT NOT NULL,
    dosage_strength       TEXT NOT NULL,
    dosage_form           TEXT NOT NULL,
    route_of_administration TEXT NOT NULL,
    frequency             TEXT NOT NULL,
    start_date            DATE NOT NULL,
    end_date              DATE,
    quantity_dispensed    INTEGER NOT NULL,
    refills_allowed       INTEGER,
    notes                 TEXT,
    pharmacy_id           INTEGER,
    pharmacy_location     TEXT,
    insurance_provider    TEXT,
    copay_amount          REAL,
    diagnosis_code        TEXT,
    generic_substitution  INTEGER,
    prescription_status   TEXT NOT NULL
);

INSERT INTO medical_prescription VALUES (1, 8001, 9001, 'Lisinopril', '10mg', 'Tablet', 'Oral', 'Once daily', '2023-02-01', '2023-08-01', 180, 2, NULL, 4001, 'Main Pharmacy', 'HealthPlus', 10.0, 'I10', 1, 'Active');
INSERT INTO medical_prescription VALUES (2, 8002, 9002, 'Amoxicillin', '500mg', 'Capsule', 'Oral', 'Three times daily', '2023-03-15', '2023-03-25', 30, 0, 'Take with food', 4002, 'Eastside Pharmacy', 'MediCare', 5.0, 'J01CA04', 0, 'Completed');
INSERT INTO medical_prescription VALUES (3, 8003, 9003, 'Albuterol', '90mcg', 'Inhaler', 'Inhalation', 'Two puffs as needed', '2023-01-10', NULL, 1, 1, 'Rescue inhaler', 4003, 'West Pharmacy', 'HealthGuard', 0.0, 'R06AX', 1, 'Active');

-- Tourism attraction visit logs
CREATE TABLE tourism_attraction_visit
(
    visit_id               INTEGER PRIMARY KEY,
    visitor_id             INTEGER NOT NULL,
    attraction_id          INTEGER NOT NULL,
    visit_date             DATE NOT NULL,
    entry_time             TEXT NOT NULL,
    exit_time              TEXT,
    ticket_type            TEXT NOT NULL,
    ticket_price           REAL NOT NULL,
    guide_present          INTEGER,
    group_size             INTEGER,
    language_preference    TEXT,
    special_needs          TEXT,
    feedback_score         INTEGER,
    feedback_comments      TEXT,
    season                 TEXT,
    weather_conditions     TEXT,
    companion_type         TEXT,
    duration_minutes       INTEGER,
    loyalty_program_id     INTEGER,
    visit_status           TEXT NOT NULL
);

INSERT INTO tourism_attraction_visit VALUES (1, 90001, 701, '2023-07-12', '09:30', '12:15', 'Adult', 25.0, 1, 4, 'English', NULL, 9, 'Great experience', 'Summer', 'Sunny', 'Family', 165, 301, 'Completed');
INSERT INTO tourism_attraction_visit VALUES (2, 90002, 702, '2023-10-05', '14:00', '15:30', 'Child', 12.0, 0, 2, 'Spanish', NULL, 8, 'Very informative', 'Fall', 'Cloudy', 'Friends', 90, 302, 'Completed');
INSERT INTO tourism_attraction_visit VALUES (3, 90003, 703, '2023-12-20', '11:00', NULL, 'Senior', 18.0, 1, 1, 'French', 'Wheelchair access', NULL, NULL, 'Winter', 'Snow', 'Solo', NULL, 303, 'InProgress');

-- Renewable energy plant information
CREATE TABLE renewable_energy_plant
(
    plant_id               INTEGER PRIMARY KEY,
    plant_name             TEXT NOT NULL,
    plant_type             TEXT NOT NULL,
    capacity_mw            REAL NOT NULL,
    commissioning_date     DATE NOT NULL,
    operator_company_id    INTEGER NOT NULL,
    location_city          TEXT NOT NULL,
    location_state         TEXT NOT NULL,
    latitude               REAL,
    longitude              REAL,
    fuel_source            TEXT,
    average_annual_output_mwh REAL,
    emissions_offset_tco2  REAL,
    grid_connection_point  TEXT,
    maintenance_contract_id INTEGER,
    operational_status     TEXT,
    last_inspection_date   DATE,
    expected_lifespan_years INTEGER,
    decommission_plan_date DATE,
    notes                  TEXT
);

INSERT INTO renewable_energy_plant VALUES (1, 'Sunrise Solar Farm', 'Solar', 150.0, '2018-06-15', 1101, 'Sunnyvale', 'CA', 37.3688, -122.0363, 'Photovoltaic', 200000.0, 180000.0, 'NodeA1', 2101, 'Operational', '2023-04-10', 30, NULL, NULL);
INSERT INTO renewable_energy_plant VALUES (2, 'Windward Wind Park', 'Wind', 85.0, '2020-09-01', 1102, 'Lakeside', 'TX', 31.9686, -99.9018, 'Onshore', 220000.0, 150000.0, 'NodeB3', 2102, 'Operational', '2023-06-22', 25, NULL, NULL);
INSERT INTO renewable_energy_plant VALUES (3, 'Riverbend Hydro', 'Hydro', 120.0, '2015-03-20', 1103, 'River City', 'WA', 47.7511, -120.7401, 'Run-of-river', 450000.0, 400000.0, 'NodeC5', 2103, 'Under Maintenance', '2022-11-05', 40, '2035-12-31', 'Scheduled turbine refurbishment');

-- Municipal infrastructure project
CREATE TABLE municipal_infrastructure_project
(
    project_id               INTEGER PRIMARY KEY,
    project_name             TEXT NOT NULL,
    project_type             TEXT NOT NULL,
    start_date               DATE NOT NULL,
    planned_end_date         DATE NOT NULL,
    actual_end_date          DATE,
    budget_amount            REAL NOT NULL,
    amount_spent             REAL,
    funding_source           TEXT,
    overseeing_department    TEXT,
    contractor_id            INTEGER,
    primary_location_city    TEXT,
    primary_location_state   TEXT,
    affected_population      INTEGER,
    permits_required         INTEGER,
    environmental_impact_score REAL,
    status                   TEXT NOT NULL,
    last_status_update       DATE,
    project_manager_id       INTEGER,
    notes                    TEXT
);

INSERT INTO municipal_infrastructure_project VALUES (1, 'Downtown Road Expansion', 'Roadway', '2022-01-10', '2024-12-31', NULL, 5000000.0, 2100000.0, 'FederalGrant', 'PublicWorks', 3001, 'Metropolis', 'NY', 120000, 5, 78.5, 'InProgress', '2023-08-01', 4001, NULL);
INSERT INTO municipal_infrastructure_project VALUES (2, 'River Flood Barrier', 'FloodControl', '2021-05-01', '2025-06-30', NULL, 8000000.0, 3500000.0, 'StateBond', 'Engineering', 3002, 'Gotham', 'IL', 85000, 8, 62.3, 'InProgress', '2023-07-15', 4002, NULL);
INSERT INTO municipal_infrastructure_project VALUES (3, 'Citywide Fiber Optic Upgrade', 'Telecom', '2023-02-20', '2026-11-30', NULL, 12000000.0, 0.0, 'PrivateInvestment', 'IT', 3003, 'Star City', 'CA', 250000, 3, 45.0, 'Planned', '2023-02-20', 4003, NULL);

-- Supply chain inventory item
CREATE TABLE supply_chain_inventory_item
(
    item_id                 INTEGER PRIMARY KEY,
    sku                     TEXT NOT NULL,
    item_name               TEXT NOT NULL,
    category                TEXT NOT NULL,
    supplier_id             INTEGER NOT NULL,
    purchase_price          REAL NOT NULL,
    currency                TEXT NOT NULL,
    lead_time_days          INTEGER,
    safety_stock_quantity   INTEGER,
    reorder_point           INTEGER,
    unit_of_measure         TEXT,
    weight_kg               REAL,
    dimensions_cm           TEXT,
    hazardous_material_flag INTEGER,
    storage_condition       TEXT,
    batch_number            TEXT,
    expiration_date         DATE,
    current_stock_quantity  INTEGER,
    reserved_quantity       INTEGER,
    location_warehouse_id   INTEGER
);

INSERT INTO supply_chain_inventory_item VALUES (1, 'SKU1001', 'Stainless Steel Bolt', 'Hardware', 5001, 0.15, 'USD', 7, 500, 1000, 'Each', 0.02, '5x2x2', 0, 'Dry', 'BATCHA1', NULL, 1500, 200, 601);
INSERT INTO supply_chain_inventory_item VALUES (2, 'SKU2002', 'Industrial Solvent', 'Chemicals', 5002, 12.5, 'USD', 14, 200, 300, 'Liter', 0.9, '10x10x10', 1, 'Cool', 'BATCHB2', '2025-12-31', 500, 100, 602);
INSERT INTO supply_chain_inventory_item VALUES (3, 'SKU3003', 'LED Panel 55"', 'Electronics', 5003, 45.0, 'USD', 21, 150, 250, 'Piece', 8.0, '1240x720x30', 0, 'RoomTemp', 'BATCHC3', NULL, 300, 50, 603);

-- Digital content subscription plans
CREATE TABLE digital_content_subscription
(
    subscription_id          INTEGER PRIMARY KEY,
    user_id                  INTEGER NOT NULL,
    plan_name                TEXT NOT NULL,
    start_date               DATE NOT NULL,
    end_date                 DATE,
    price_per_month          REAL NOT NULL,
    billing_cycle            TEXT NOT NULL,
    auto_renew               INTEGER,
    max_devices              INTEGER,
    hd_streaming_enabled    INTEGER,
    offline_downloads_allowed INTEGER,
    simultaneous_streams     INTEGER,
    content_genre_limit      TEXT,
    promo_code               TEXT,
    discount_percent         REAL,
    trial_period_days        INTEGER,
    last_payment_date        DATE,
    payment_method           TEXT,
    status                   TEXT NOT NULL,
    notes                    TEXT
);

INSERT INTO digital_content_subscription VALUES (1, 12001, 'Premium Plus', '2023-01-01', NULL, 15.99, 'Monthly', 1, 5, 1, 1, 3, 'All', 'NEWYEAR2023', 10.0, 30, '2023-09-01', 'CreditCard', 'Active', NULL);
INSERT INTO digital_content_subscription VALUES (2, 12002, 'Standard', '2022-06-15', '2023-06-14', 9.99, 'Monthly', 0, 2, 0, 0, 1, 'Movies,Series', NULL, 0.0, 0, '2023-06-14', 'PayPal', 'Expired', 'User cancelled');
INSERT INTO digital_content_subscription VALUES (3, 12003, 'Family', '2023-03-20', NULL, 12.99, 'Monthly', 1, 4, 1, 1, 2, 'All', 'FAM2023', 5.0, 14, '2023-09-01', 'DebitCard', 'Active', NULL);
