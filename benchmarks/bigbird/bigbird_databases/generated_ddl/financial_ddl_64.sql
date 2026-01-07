-- Utility consumption metrics per branch
CREATE TABLE branch_utility_consumption (
    branch_id INTEGER NOT NULL,
    report_date DATE NOT NULL,
    electricity_kwh REAL NOT NULL,
    water_m3 REAL NOT NULL,
    gas_therms REAL NOT NULL,
    solar_generation_kwh REAL,
    peak_demand_kw REAL,
    average_voltage REAL,
    power_factor REAL,
    outage_duration_minutes INTEGER,
    outage_count INTEGER,
    hvac_energy_kwh REAL,
    lighting_energy_kwh REAL,
    equipment_energy_kwh REAL,
    renewable_percentage REAL,
    carbon_emission_kg REAL,
    cost_usd REAL,
    meter_reading_start INTEGER,
    meter_reading_end INTEGER,
    billing_cycle TEXT,
    notes TEXT,
    PRIMARY KEY (branch_id, report_date)
);

INSERT INTO branch_utility_consumption VALUES (101, '2023-01-31', 45230.5, 12345.0, 890.2, 1500.0, 350.0, 120.5, 0.95, 45, 2, 21000.0, 8000.0, 16230.5, 33.2, 35000.0, 12000.5, 1000000, 1054520, '2023Q1', 'Normal operation');
INSERT INTO branch_utility_consumption VALUES (102, '2023-01-31', 38900.0, 11000.0, 750.0, NULL, 300.0, 119.0, 0.96, 30, 1, 18500.0, 7000.0, 13400.0, 28.5, 30000.0, 10500.0, 950000, 989500, '2023Q1', 'Slightly high HVAC usage');
INSERT INTO branch_utility_consumption VALUES (103, '2023-01-31', 51000.8, 13020.5, 950.3, 2000.0, 380.0, 121.0, 0.94, 60, 3, 24000.0, 9000.0, 18000.8, 35.0, 40000.0, 14000.0, 1100000, 1151020, '2023Q1', 'Upgrade pending');

-- Assessment of employee skill levels
CREATE TABLE employee_skill_assessment (
    employee_id INTEGER NOT NULL,
    assessment_date DATE NOT NULL,
    skill_category TEXT NOT NULL,
    skill_name TEXT NOT NULL,
    proficiency_level INTEGER NOT NULL,
    certification_obtained TEXT,
    years_experience REAL,
    last_training_date DATE,
    trainer_name TEXT,
    score_percent REAL,
    comments TEXT,
    assessment_method TEXT,
    validated_by TEXT,
    next_review_date DATE,
    training_hours INTEGER,
    project_exposure INTEGER,
    performance_rating INTEGER,
    leadership_potential INTEGER,
    technical_score INTEGER,
    communication_score INTEGER,
    adaptability_score INTEGER,
    PRIMARY KEY (employee_id, assessment_date, skill_name)
);

INSERT INTO employee_skill_assessment VALUES (2001, '2023-03-15', 'Finance', 'Risk Analysis', 4, 'FRM', 5.2, '2022-12-01', 'Alice Smith', 88.5, 'Strong analytical ability', 'OnlineTest', 'Bob Jones', '2024-03-15', 20, 3, 5, 2, 90, 85, 80);
INSERT INTO employee_skill_assessment VALUES (2002, '2023-03-20', 'IT', 'Database Administration', 5, 'Oracle DBA', 8.0, '2023-01-10', 'Carol Lee', 93.2, 'Excellent DBA skills', 'Practical', 'Dave Kim', '2024-03-20', 30, 5, 4, 3, 95, 90, 85);
INSERT INTO employee_skill_assessment VALUES (2003, '2023-03-22', 'Operations', 'Process Optimization', 3, NULL, 3.5, '2022-09-05', 'Eve Martin', 75.0, 'Needs improvement in SOPs', 'Interview', 'Frank Liu', '2024-03-22', 15, 2, 3, 2, 80, 78, 70);

-- Snapshots from ATM camera systems
CREATE TABLE atm_camera_snapshot (
    snapshot_id INTEGER NOT NULL PRIMARY KEY,
    atm_id INTEGER NOT NULL,
    capture_timestamp DATETIME NOT NULL,
    image_path TEXT NOT NULL,
    motion_detected INTEGER NOT NULL,
    face_count INTEGER,
    average_brightness REAL,
    resolution_width INTEGER,
    resolution_height INTEGER,
    codec TEXT,
    file_size_bytes INTEGER,
    temperature_celsius REAL,
    humidity_percent REAL,
    light_condition TEXT,
    operator_notified INTEGER,
    incident_reported INTEGER,
    analyst_reviewed INTEGER,
    review_timestamp DATETIME,
    notes TEXT,
    archived INTEGER,
    retention_days INTEGER
);

INSERT INTO atm_camera_snapshot VALUES (5001, 301, '2023-04-01 08:15:30', '/snapshots/5001.jpg', 1, 2, 0.68, 1920, 1080, 'jpeg', 204800, 22.5, 45.0, 'Daylight', 0, 0, 1, '2023-04-01 09:00:00', 'Normal traffic', 0, 90);
INSERT INTO atm_camera_snapshot VALUES (5002, 302, '2023-04-01 22:45:10', '/snapshots/5002.jpg', 0, 0, 0.42, 1280, 720, 'jpeg', 150000, 18.0, 55.0, 'Night', 0, 0, 0, NULL, 'No activity', 0, 90);
INSERT INTO atm_camera_snapshot VALUES (5003, 303, '2023-04-02 14:05:55', '/snapshots/5003.jpg', 1, 1, 0.75, 1920, 1080, 'jpeg', 210000, 24.0, 40.0, 'Daylight', 1, 1, 1, '2023-04-02 15:00:00', 'Suspicious linger', 0, 90);

-- Historical contact records for clients
CREATE TABLE client_contact_history (
    client_id INTEGER NOT NULL,
    contact_id INTEGER NOT NULL,
    contact_date DATE NOT NULL,
    contact_method TEXT NOT NULL,
    contact_reason TEXT,
    outcome TEXT,
    followed_up INTEGER,
    followup_date DATE,
    representative_id INTEGER,
    notes TEXT,
    channel TEXT,
    duration_minutes INTEGER,
    satisfaction_score INTEGER,
    escalated INTEGER,
    escalation_reason TEXT,
    response_time_minutes INTEGER,
    language TEXT,
    preferred_time TEXT,
    consent_given INTEGER,
    marketing_opt_in INTEGER,
    PRIMARY KEY (client_id, contact_id)
);

INSERT INTO client_contact_history VALUES (4001, 1, '2023-02-10', 'Phone', 'Account inquiry', 'Resolved', 1, '2023-02-10', 105, 'Provided balance details', 'Voice', 12, 9, 0, NULL, 5, 'English', 'Morning', 1, 1);
INSERT INTO client_contact_history VALUES (4002, 2, '2023-02-12', 'Email', 'Loan application status', 'Pending', 0, NULL, 110, 'Requested documents', 'Email', 0, NULL, 0, NULL, NULL, 'English', 'Afternoon', 1, 0);
INSERT INTO client_contact_history VALUES (4003, 3, '2023-02-15', 'InPerson', 'Card replacement', 'Completed', 1, '2023-02-15', 115, 'Issued new card', 'Branch', 25, 10, 0, NULL, 2, 'Spanish', 'Evening', 1, 1);

-- Economic indicators aggregated at district level
CREATE TABLE district_economic_indicator (
    district_id INTEGER NOT NULL,
    year INTEGER NOT NULL,
    quarter INTEGER NOT NULL,
    gdp_millions REAL,
    unemployment_rate REAL,
    average_income REAL,
    inflation_rate REAL,
    consumer_confidence_index REAL,
    business_openings INTEGER,
    business_closings INTEGER,
    housing_start_units INTEGER,
    retail_sales_millions REAL,
    industrial_production_index REAL,
    export_value_millions REAL,
    import_value_millions REAL,
    fiscal_balance_millions REAL,
    population_growth_percent REAL,
    median_age REAL,
    education_index REAL,
    health_index REAL,
    PRIMARY KEY (district_id, year, quarter)
);

INSERT INTO district_economic_indicator VALUES (1, 2023, 1, 12500.5, 5.2, 42000.0, 2.1, 102.3, 150, 45, 2000, 750.0, 98.5, 3000.0, 2800.0, -150.0, 1.8, 38.5, 0.78, 0.85);
INSERT INTO district_economic_indicator VALUES (2, 2023, 1, 9800.0, 6.0, 38000.0, 2.3, 95.0, 120, 60, 1800, 620.0, 92.0, 2500.0, 2400.0, -100.0, 2.0, 37.0, 0.75, 0.80);
INSERT INTO district_economic_indicator VALUES (3, 2023, 1, 14300.8, 4.8, 46000.0, 1.9, 110.5, 170, 30, 2200, 820.0, 105.2, 3500.0, 3200.0, -120.0, 1.5, 39.2, 0.82, 0.88);

-- Details of guarantors for loans
CREATE TABLE loan_guarantor_details (
    loan_id INTEGER NOT NULL,
    guarantor_id INTEGER NOT NULL,
    guarantor_name TEXT NOT NULL,
    relationship TEXT,
    guarantor_income REAL,
    guarantor_credit_score INTEGER,
    guarantor_address TEXT,
    guarantor_phone TEXT,
    guarantor_email TEXT,
    guarantor_dob DATE,
    guarantor_employment_status TEXT,
    guarantor_residence_type TEXT,
    guarantor_asset_value REAL,
    guarantor_liabilities REAL,
    guarantee_type TEXT,
    guarantee_amount REAL,
    guarantee_start_date DATE,
    guarantee_end_date DATE,
    guarantee_status TEXT,
    notes TEXT,
    PRIMARY KEY (loan_id, guarantor_id)
);

INSERT INTO loan_guarantor_details VALUES (50001, 8001, 'John Doe', 'Sibling', 85000.0, 720, '123 Main St', '5551234567', 'john.doe@example.com', '1975-06-20', 'Employed', 'Owned', 250000.0, 50000.0, 'Partial', 50000.0, '2023-01-01', '2025-01-01', 'Active', 'Primary guarantor');
INSERT INTO loan_guarantor_details VALUES (50002, 8002, 'Maria Garcia', 'Spouse', 95000.0, 730, '456 Oak Ave', '5559876543', 'maria.garcia@example.com', '1980-11-05', 'SelfEmployed', 'Mortgaged', 300000.0, 40000.0, 'Full', 150000.0, '2023-02-15', '2028-02-15', 'Active', 'Co‑guarantor');
INSERT INTO loan_guarantor_details VALUES (50003, 8003, 'Liu Wei', 'Parent', 72000.0, 710, '789 Pine Rd', '5555551212', 'liu.wei@example.com', '1965-03-12', 'Retired', 'Owned', 200000.0, 30000.0, 'Partial', 75000.0, '2023-03-10', '2026-03-10', 'Pending', 'Awaiting documents');

-- Cryptocurrency holdings within digital wallets
CREATE TABLE digital_wallet_cryptocurrency (
    wallet_id INTEGER NOT NULL,
    crypto_id INTEGER NOT NULL,
    crypto_symbol TEXT NOT NULL,
    crypto_name TEXT NOT NULL,
    amount_held REAL NOT NULL,
    acquisition_date DATE,
    acquisition_price_usd REAL,
    current_price_usd REAL,
    market_value_usd REAL,
    last_trade_timestamp DATETIME,
    transaction_count INTEGER,
    average_holding_days REAL,
    profit_loss_usd REAL,
    risk_score INTEGER,
    custodial INTEGER,
    wallet_type TEXT,
    notes TEXT,
    PRIMARY KEY (wallet_id, crypto_id)
);

INSERT INTO digital_wallet_cryptocurrency VALUES (9001, 1, 'BTC', 'Bitcoin', 0.752, '2022-07-15', 21000.0, 29500.0, 22234.0, '2023-04-01 12:30:00', 45, 260.5, 6424.0, 8, 0, 'Personal', 'Long term holder');
INSERT INTO digital_wallet_cryptocurrency VALUES (9002, 2, 'ETH', 'Ethereum', 12.5, '2022-09-20', 1500.0, 1850.0, 23125.0, '2023-04-01 13:00:00', 30, 250.0, 4375.0, 7, 0, 'Personal', 'Staking active');
INSERT INTO digital_wallet_cryptocurrency VALUES (9003, 3, 'USDT', 'Tether', 5000.0, '2021-01-01', 1.0, 1.0, 5000.0, '2023-04-01 14:15:00', 10, 800.0, 0.0, 2, 1, 'Custodial', 'Stablecoin reserve');

-- Correlation metrics for risk events
CREATE TABLE risk_event_correlation (
    correlation_id INTEGER NOT NULL PRIMARY KEY,
    event_a_id INTEGER NOT NULL,
    event_b_id INTEGER NOT NULL,
    correlation_score REAL NOT NULL,
    confidence_level REAL,
    overlapping_entities TEXT,
    time_lag_days INTEGER,
    sector_impact TEXT,
    mitigation_action TEXT,
    analyst_id INTEGER,
    analysis_date DATE,
    notes TEXT,
    source_system TEXT,
    severity_a INTEGER,
    severity_b INTEGER,
    combined_severity INTEGER,
    risk_category TEXT,
    flagged INTEGER,
    review_status TEXT,
    resolution_date DATE
);

INSERT INTO risk_event_correlation VALUES (1, 301, 402, 0.87, 0.92, 'client_id,account_id', 5, 'Finance', 'Increase monitoring', 110, '2023-03-20', 'High correlation observed', 'RiskEngine', 4, 5, 5, 'Operational', 1, 'Open', NULL);
INSERT INTO risk_event_correlation VALUES (2, 305, 410, 0.65, 0.78, 'atm_id', 12, 'Security', 'Patch applied', 112, '2023-03-22', 'Moderate correlation', 'SecurityHub', 3, 4, 4, 'Technical', 0, 'Reviewed', '2023-04-01');
INSERT INTO risk_event_correlation VALUES (3, 310, 415, 0.45, 0.60, 'district_id', 30, 'Compliance', 'Update policy', 115, '2023-03-25', 'Low correlation', 'ComplianceSuite', 2, 3, 3, 'Regulatory', 0, 'Closed', '2023-04-05');

-- Metadata for environmental observation stations
CREATE TABLE environmental_observation_station (
    station_id INTEGER NOT NULL PRIMARY KEY,
    station_name TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    elevation_m REAL,
    installation_date DATE,
    operating_status TEXT,
    sensor_type TEXT,
    data_frequency_minutes INTEGER,
    maintenance_interval_days INTEGER,
    last_maintenance_date DATE,
    contact_person TEXT,
    contact_phone TEXT,
    data_owner TEXT,
    data_quality_score REAL,
    calibration_required INTEGER,
    firmware_version TEXT,
    power_source TEXT,
    notes TEXT,
    region_code TEXT
);

INSERT INTO environmental_observation_station VALUES (20001, 'Lakeview Station', 45.1234, -73.5678, 210.5, '2020-05-10', 'Active', 'Weather', 15, 180, '2023-02-15', 'Mark Reynolds', '5551112222', 'EnvDept', 0.96, 0, 'v1.4', 'Solar', 'Near lake', 'NW');
INSERT INTO environmental_observation_station VALUES (20002, 'Urban Edge', 40.9876, -74.1234, 12.0, '2021-08-22', 'Active', 'AirQuality', 10, 90, '2023-03-05', 'Sara Thompson', '5553334444', 'EnvDept', 0.93, 1, 'v1.2', 'Grid', 'City perimeter', 'NE');
INSERT INTO environmental_observation_station VALUES (20003, 'Mountain Peak', 39.6543, -105.4321, 1820.0, '2019-11-30', 'Inactive', 'SnowDepth', 30, 365, '2022-12-01', 'Liam Patel', '5555557777', 'EnvDept', 0.88, 1, 'v1.0', 'Hybrid', 'Seasonal closure', 'SW');

-- Assignment of fleet vehicles to routes and drivers
CREATE TABLE fleet_vehicle_assignment (
    assignment_id INTEGER NOT NULL PRIMARY KEY,
    vehicle_id INTEGER NOT NULL,
    driver_id INTEGER NOT NULL,
    route_id INTEGER NOT NULL,
    assignment_start DATE NOT NULL,
    assignment_end DATE,
    shift_type TEXT,
    mileage_allowed INTEGER,
    fuel_type TEXT,
    vehicle_status TEXT,
    maintenance_due DATE,
    gps_enabled INTEGER,
    telematics_module TEXT,
    notes TEXT,
    created_by INTEGER,
    created_at DATETIME,
    updated_by INTEGER,
    updated_at DATETIME,
    active INTEGER,
    compliance_check_passed INTEGER
);

INSERT INTO fleet_vehicle_assignment VALUES (1001, 501, 2001, 3001, '2023-01-01', NULL, 'Day', 15000, 'Diesel', 'Operational', '2023-06-01', 1, 'ModX', 'Primary assignment', 110, '2023-01-01 08:00:00', 110, '2023-01-01 08:00:00', 1, 1);
INSERT INTO fleet_vehicle_assignment VALUES (1002, 502, 2002, 3002, '2023-02-15', '2023-08-15', 'Night', 12000, 'Electric', 'Operational', '2023-07-01', 1, 'ModY', 'Night shift', 112, '2023-02-15 22:00:00', 112, '2023-02-15 22:00:00', 0, 1);
INSERT INTO fleet_vehicle_assignment VALUES (1003, 503, 2003, 3003, '2023-03-01', NULL, 'Mixed', 18000, 'Hybrid', 'UnderRepair', '2023-09-01', 0, 'ModZ', 'Awaiting repair', 115, '2023-03-01 07:30:00', 115, '2023-03-01 07:30:00', 0, 0);