-- Supplier quality audit information
CREATE TABLE supplier_quality_audit
(
    audit_id INTEGER PRIMARY KEY,
    supplier_id INTEGER NOT NULL,
    audit_date DATE NOT NULL,
    auditor_name TEXT NOT NULL,
    overall_score REAL NOT NULL,
    compliance_status TEXT NOT NULL,
    documentation_complete INTEGER NOT NULL,
    on_site_inspection INTEGER NOT NULL,
    corrective_actions INTEGER NOT NULL,
    follow_up_required INTEGER NOT NULL,
    risk_rating INTEGER NOT NULL,
    product_category TEXT NOT NULL,
    sample_batch_number TEXT NOT NULL,
    defect_rate REAL NOT NULL,
    inspection_duration_minutes INTEGER NOT NULL,
    safety_training_verified INTEGER NOT NULL,
    equipment_calibration_verified INTEGER NOT NULL,
    environmental_impact_score REAL NOT NULL,
    social_responsibility_score REAL NOT NULL,
    notes TEXT
);

INSERT INTO supplier_quality_audit VALUES (1, 101, '2023-03-15', 'Alice Smith', 87.5, 'Compliant', 1, 1, 2, 0, 2, 'Electronics', 'BATCH2023A', 0.02, 180, 1, 1, 3.5, 4.2, 'All standards met');
INSERT INTO supplier_quality_audit VALUES (2, 102, '2023-04-10', 'Bob Johnson', 74.0, 'Conditional', 1, 0, 5, 1, 3, 'Pharmaceuticals', 'BATCH2023B', 0.07, 240, 0, 1, 4.0, 3.8, 'Follow up required for packaging');
INSERT INTO supplier_quality_audit VALUES (3, 103, '2023-05-22', 'Clara Lee', 92.3, 'Compliant', 1, 1, 0, 0, 1, 'Automotive', 'BATCH2023C', 0.01, 150, 1, 1, 4.5, 4.7, 'Excellent performance');

-- Renewable energy farm operational status
CREATE TABLE renewable_energy_farm_status
(
    farm_id INTEGER PRIMARY KEY,
    farm_name TEXT NOT NULL,
    location TEXT NOT NULL,
    capacity_mw REAL NOT NULL,
    current_output_mw REAL NOT NULL,
    operational_status TEXT NOT NULL,
    last_maintenance_date DATE,
    turbine_count INTEGER,
    panel_count INTEGER,
    average_wind_speed REAL,
    solar_irradiance REAL,
    grid_connection_status TEXT,
    power_factor REAL,
    outage_events INTEGER,
    total_energy_generated_mwh REAL,
    emissions_offset_tons REAL,
    maintenance_contract_vendor TEXT,
    contract_expiry_date DATE,
    weather_station_id INTEGER,
    compliance_certified INTEGER,
    notes TEXT
);

INSERT INTO renewable_energy_farm_status VALUES (1, 'SunnyValley Solar', 'Nevada', 150.0, 145.3, 'Active', '2023-02-18', NULL, 450000, NULL, 5.8, 'Connected', 0.98, 2, 1200000.0, 35000.0, 'SolarTech Inc', '2025-12-31', 12, 1, 'High efficiency panels installed');
INSERT INTO renewable_energy_farm_status VALUES (2, 'WindHarbor', 'Texas', 200.0, 180.5, 'Active', '2023-01-10', 120, NULL, 7.2, NULL, 'Connected', 0.95, 5, 2500000.0, 50000.0, 'WindWorks Ltd', '2026-06-30', 9, 1, 'Turbine upgrades scheduled');
INSERT INTO renewable_energy_farm_status VALUES (3, 'HybridGreen', 'California', 250.0, 230.0, 'Maintenance', '2023-04-05', 80, 300000, 6.5, 5.5, 'Disconnected', 0.90, 1, 3000000.0, 60000.0, 'EcoEnergy', '2025-03-15', 3, 0, 'Pending grid reconnection');

-- Clinical trial enrollment records
CREATE TABLE clinical_trial_enrollment
(
    enrollment_id INTEGER PRIMARY KEY,
    trial_id INTEGER NOT NULL,
    patient_id INTEGER NOT NULL,
    enrollment_date DATE NOT NULL,
    site_location TEXT NOT NULL,
    investigator_name TEXT NOT NULL,
    consent_obtained INTEGER NOT NULL,
    age INTEGER NOT NULL,
    gender TEXT NOT NULL,
    ethnicity TEXT,
    diagnosis_code TEXT,
    severity_score REAL,
    baseline_measure REAL,
    prior_treatment TEXT,
    randomization_group TEXT,
    dose_mg REAL,
    treatment_start_date DATE,
    follow_up_schedule TEXT,
    adverse_event_reported INTEGER,
    compliance_rate REAL,
    notes TEXT
);

INSERT INTO clinical_trial_enrollment VALUES (1, 301, 5001, '2023-01-20', 'Boston Medical Center', 'Dr Emily Wong', 1, 45, 'Female', 'Caucasian', 'D123', 2.5, 1.2, 'None', 'Placebo', 0.0, '2023-02-01', 'Monthly', 0, 0.98, 'No issues');
INSERT INTO clinical_trial_enrollment VALUES (2, 301, 5002, '2023-01-22', 'Boston Medical Center', 'Dr Emily Wong', 1, 52, 'Male', 'AfricanAmerican', 'D124', 3.0, 1.5, 'Standard care', 'Active', 50.0, '2023-02-03', 'Biweekly', 1, 0.90, 'Mild headache reported');
INSERT INTO clinical_trial_enrollment VALUES (3, 302, 6001, '2023-02-10', 'San Diego Research Hospital', 'Dr Michael Lee', 1, 37, 'Female', 'Asian', 'D200', 1.8, 0.9, 'Prior therapy', 'Active', 75.0, '2023-02-15', 'Weekly', 0, 0.95, 'All baseline criteria met');

-- Transportation asset registry
CREATE TABLE transportation_asset_registry
(
    asset_id INTEGER PRIMARY KEY,
    asset_type TEXT NOT NULL,
    manufacturer TEXT NOT NULL,
    model TEXT NOT NULL,
    serial_number TEXT NOT NULL,
    purchase_date DATE NOT NULL,
    warranty_expiry DATE,
    current_location TEXT NOT NULL,
    status TEXT NOT NULL,
    mileage INTEGER,
    fuel_type TEXT,
    capacity INTEGER,
    operational_since DATE,
    last_inspection_date DATE,
    inspection_result TEXT,
    maintenance_cycle_days INTEGER,
    next_maintenance_date DATE,
    assigned_driver_id INTEGER,
    depreciation_value REAL,
    insurance_policy_number TEXT,
    insurance_expiry DATE,
    gps_enabled INTEGER,
    notes TEXT
);

INSERT INTO transportation_asset_registry VALUES (1001, 'Truck', 'Volvo', 'VNL760', 'SN1001A', '2020-05-12', '2025-05-12', 'Depot A', 'Active', 85000, 'Diesel', 2, '2020-06-01', '2023-03-10', 'Pass', 180, '2023-09-06', 2001, 45000.0, 'POL12345', '2024-05-12', 1, 'Routine checks performed');
INSERT INTO transportation_asset_registry VALUES (1002, 'Bus', 'Mercedes', 'Citaro', 'SN1002B', '2018-09-20', '2023-09-20', 'Station B', 'Under Maintenance', 120000, 'Electric', 50, '2018-10-01', '2023-02-15', 'Fail - battery', 365, '2023-12-20', 2002, 35000.0, 'POL67890', '2022-09-20', 1, 'Battery replacement scheduled');
INSERT INTO transportation_asset_registry VALUES (1003, 'Van', 'Ford', 'Transit', 'SN1003C', '2021-03-05', '2026-03-05', 'Depot C', 'Active', 45000, 'Hybrid', 3, '2021-04-01', '2023-04-01', 'Pass', 180, '2023-10-28', 2003, 28000.0, 'POL24680', '2025-03-05', 0, 'GPS module not installed');

-- Digital content metadata repository
CREATE TABLE digital_content_metadata
(
    content_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    creator TEXT NOT NULL,
    creation_date DATE NOT NULL,
    content_type TEXT NOT NULL,
    format TEXT NOT NULL,
    size_bytes INTEGER NOT NULL,
    duration_seconds INTEGER,
    language TEXT,
    license_type TEXT,
    copyright_holder TEXT,
    version INTEGER,
    checksum TEXT,
    tags TEXT,
    description TEXT,
    access_level TEXT,
    download_count INTEGER,
    last_accessed DATE,
    rating_average REAL,
    rating_count INTEGER,
    related_content_ids TEXT,
    is_archived INTEGER,
    archive_date DATE,
    notes TEXT
);

INSERT INTO digital_content_metadata VALUES (50001, 'Annual Report 2022', 'Finance Dept', '2023-01-15', 'Document', 'PDF', 2540000, NULL, 'English', 'Internal', 'Bank Corp', 1, 'AB12CD34', 'report,finance,2022', 'Yearly financial performance', 'Confidential', 124, '2023-03-01', 4.5, 30, '50002,50003', 0, NULL, 'Reviewed by audit team');
INSERT INTO digital_content_metadata VALUES (50002, 'Product Demo Video', 'Marketing', '2022-11-20', 'Video', 'MP4', 105000000, 300, 'English', 'Public', 'Bank Corp', 2, 'EF56GH78', 'demo,product,2022', 'Demo of new credit card features', 'Public', 542, '2023-02-28', 4.2, 85, '50001', 0, NULL, 'Hosted on corporate YouTube channel');
INSERT INTO digital_content_metadata VALUES (50003, 'Customer Survey Data', 'Research', '2023-02-05', 'Dataset', 'CSV', 7800000, NULL, 'English', 'Restricted', 'Bank Corp', 1, 'IJ90KL12', 'survey,customer,2023', 'Raw responses from Q1 survey', 'Restricted', 0, NULL, NULL, NULL, NULL, 1, '2023-06-01', 'Anonymized for analysis');

-- Water quality measurement stations
CREATE TABLE water_quality_measurement
(
    station_id INTEGER PRIMARY KEY,
    station_name TEXT NOT NULL,
    location TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    installation_date DATE NOT NULL,
    last_calibration_date DATE,
    ph_value REAL,
    turbidity_ntu REAL,
    dissolved_oxygen_mg_l REAL,
    temperature_c REAL,
    conductivity_us_cm REAL,
    nitrate_mg_l REAL,
    fluoride_mg_l REAL,
    lead_ug_l REAL,
    sample_collection_time TIME,
    analyst_name TEXT,
    verification_status TEXT,
    maintenance_cycle_days INTEGER,
    next_maintenance_date DATE,
    data_quality_flag TEXT,
    notes TEXT
);

INSERT INTO water_quality_measurement VALUES (101, 'Riverbend Station', 'Riverbend City', 40.7128, -74.0060, '2022-04-10', '2023-01-15', 7.2, 1.5, 8.0, 15.3, 250.0, 2.1, 0.7, 5.0, '08:00', 'John Doe', 'Verified', 180, '2023-07-09', 'Good', 'No anomalies observed');
INSERT INTO water_quality_measurement VALUES (102, 'Lakeside Station', 'Lakeside Town', 34.0522, -118.2437, '2021-09-22', '2023-02-01', 6.8, 0.9, 9.2, 14.8, 240.0, 1.7, 0.5, 3.2, '09:30', 'Jane Smith', 'Verified', 180, '2023-07-30', 'Good', 'Minor sensor drift corrected');
INSERT INTO water_quality_measurement VALUES (103, 'Mountain Creek Station', 'Highland Valley', 47.6062, -122.3321, '2020-12-05', '2023-03-12', 7.5, 2.1, 7.5, 13.4, 260.0, 2.5, 0.9, 6.8, '07:45', 'Mike Brown', 'Pending', 180, '2023-08-15', 'Review', 'Calibration pending due to equipment shortage');

-- Wildlife observation logs
CREATE TABLE wildlife_observation
(
    observation_id INTEGER PRIMARY KEY,
    observer_id INTEGER NOT NULL,
    species_common_name TEXT NOT NULL,
    species_scientific_name TEXT,
    count INTEGER NOT NULL,
    observation_date DATE NOT NULL,
    observation_time TIME NOT NULL,
    location_name TEXT NOT NULL,
    latitude REAL,
    longitude REAL,
    behavior TEXT,
    habitat_type TEXT,
    weather_conditions TEXT,
    temperature_c REAL,
    notes TEXT,
    photo_captured INTEGER,
    audio_recorded INTEGER,
    verification_status TEXT,
    data_entry_user TEXT,
    entry_timestamp DATE,
    flagged_for_review INTEGER,
    review_comments TEXT
);

INSERT INTO wildlife_observation VALUES (2001, 301, 'Bald Eagle', 'Haliaeetus leucocephalus', 2, '2023-03-12', '06:45', 'Riverbank Preserve', 45.1234, -122.5678, 'Soaring', 'Riparian', 'Clear', 12.3, 'Observed near nesting area', 1, 0, 'Verified', 'admin', '2023-03-13', 0, NULL);
INSERT INTO wildlife_observation VALUES (2002, 302, 'White-tailed Deer', 'Odocoileus virginianus', 5, '2023-04-05', '18:20', 'Meadow Trail', 44.9876, -123.4567, 'Grazing', 'Grassland', 'Overcast', 9.8, 'Group moving southward', 0, 1, 'Pending', 'field_user', '2023-04-06', 1, 'Audio unclear, request re‑record');
INSERT INTO wildlife_observation VALUES (2003, 303, 'Eastern Box Turtle', 'Terrapene carolina', 1, '2023-05-22', '14:10', 'Pine Woods', 46.5432, -121.3456, 'Basking', 'Forest floor', 'Sunny', 18.5, 'Single adult near log', 1, 0, 'Verified', 'researcher', '2023-05-23', 0, NULL);

-- Construction permit records
CREATE TABLE construction_permit
(
    permit_id INTEGER PRIMARY KEY,
    project_name TEXT NOT NULL,
    applicant_name TEXT NOT NULL,
    permit_type TEXT NOT NULL,
    issue_date DATE NOT NULL,
    expiration_date DATE NOT NULL,
    status TEXT NOT NULL,
    site_address TEXT NOT NULL,
    zoning_code TEXT,
    estimated_cost REAL,
    contractor_id INTEGER,
    architect_firm TEXT,
    civil_engineer TEXT,
    environmental_review_completed INTEGER,
    safety_plan_submitted INTEGER,
    number_of_floors INTEGER,
    total_square_feet INTEGER,
    planned_start_date DATE,
    planned_completion_date DATE,
    actual_start_date DATE,
    actual_completion_date DATE,
    inspected INTEGER,
    inspection_date DATE,
    notes TEXT
);

INSERT INTO construction_permit VALUES (401, 'Sunset Plaza', 'Sunrise Developers', 'Commercial', '2023-01-10', '2025-01-10', 'Approved', '123 Main St', 'C-2', 25000000.0, 701, 'DesignWorks', 'John Engineer', 1, 1, 12, 300000, '2023-04-01', '2024-12-15', '2023-04-05', NULL, 0, NULL, 'Awaiting final inspection');
INSERT INTO construction_permit VALUES (402, 'Riverfront Apartments', 'River Realty', 'Residential', '2023-02-15', '2025-02-15', 'Pending', '456 River Rd', 'R-1', 18000000.0, 702, 'ArchStudio', 'Emily Planner', 0, 0, 8, 200000, '2023-06-01', '2025-05-30', NULL, NULL, 0, NULL, 'Environmental review in progress');
INSERT INTO construction_permit VALUES (403, 'GreenTech Campus', 'Eco Innovators', 'Industrial', '2023-03-20', '2025-03-20', 'Approved', '789 Innovation Way', 'I-3', 35000000.0, 703, 'FutureDesign', 'Mark Structural', 1, 1, 5, 500000, '2023-07-15', '2026-01-20', '2023-07-20', NULL, 0, NULL, 'LEED certification targeted');

-- Corporate social responsibility initiatives
CREATE TABLE corporate_social_responsibility
(
    initiative_id INTEGER PRIMARY KEY,
    initiative_name TEXT NOT NULL,
    launch_date DATE NOT NULL,
    category TEXT NOT NULL,
    target_audience TEXT,
    budget_usd REAL,
    pledged_amount_usd REAL,
    actual_spent_usd REAL,
    partners TEXT,
    region TEXT,
    description TEXT,
    measurable_goal TEXT,
    progress_percent REAL,
    status TEXT,
    lead_contact TEXT,
    reporting_frequency TEXT,
    last_report_date DATE,
    next_report_due DATE,
    impact_score REAL,
    awards_received TEXT,
    documentation_url TEXT,
    sustainability_alignment TEXT,
    stakeholder_feedback_score REAL,
    notes TEXT
);

INSERT INTO corporate_social_responsibility VALUES (601, 'Youth Financial Literacy', '2022-09-01', 'Education', 'Students', 500000.0, 300000.0, 280000.0, 'Local Schools, NGOs', 'Midwest', 'Program teaching budgeting to high school students', 'Reach 10,000 students', 85.0, 'Ongoing', 'Sarah Green', 'Quarterly', '2023-03-31', '2023-06-30', 78.5, 'Community Impact Award', 'http://example.com/docs/initiative601', 'UN SDG 4', 4.2, 'Positive reception from teachers');
INSERT INTO corporate_social_responsibility VALUES (602, 'Carbon Neutral Campus', '2021-01-15', 'Environment', 'Employees', 1200000.0, 1200000.0, 1150000.0, 'EnergyCo, GreenTech', 'National', 'Achieve net‑zero emissions across all offices', 'Reduce emissions by 100%', 96.0, 'Completed', 'Michael Lee', 'Annual', '2023-01-20', '2024-01-20', 92.0, 'Green Business Certification', 'http://example.com/docs/initiative602', 'UN SDG 13', 4.7, 'Exceeded targets with surplus credits');
INSERT INTO corporate_social_responsibility VALUES (603, 'Community Health Clinics', '2023-02-10', 'Health', 'General Public', 800000.0, 500000.0, 200000.0, 'HealthPartners', 'Southwest', 'Fund and operate free clinics in underserved areas', 'Open 5 clinics', 40.0, 'In Progress', 'Linda Carter', 'Semi‑Annual', '2023-04-15', '2023-10-15', 65.0, 'Health Impact Prize', 'http://example.com/docs/initiative603', 'UN SDG 3', 3.9, 'Awaiting additional funding');

-- City infrastructure project registry
CREATE TABLE city_infrastructure_project
(
    project_id INTEGER PRIMARY KEY,
    project_name TEXT NOT NULL,
    city TEXT NOT NULL,
    department_responsible TEXT NOT NULL,
    project_type TEXT NOT NULL,
    planned_start_date DATE,
    planned_end_date DATE,
    actual_start_date DATE,
    actual_end_date DATE,
    total_budget_usd REAL,
    allocated_funds_usd REAL,
    expenditure_to_date_usd REAL,
    contractor_id INTEGER,
    principal_engineer TEXT,
    status TEXT,
    percent_complete REAL,
    risk_level TEXT,
    major_milestones TEXT,
    public_remarks TEXT,
    permits_required INTEGER,
    permits_obtained INTEGER,
    community_engagement_score REAL,
    sustainability_grade TEXT,
    gps_latitude REAL,
    gps_longitude REAL,
    notes TEXT
);

INSERT INTO city_infrastructure_project VALUES (801, 'Downtown Light Rail Expansion', 'Metropolis', 'Transportation', 'Transit', '2023-05-01', '2026-12-31', '2023-05-15', NULL, 950000000.0, 800000000.0, 250000000.0, 901, 'Anna Taylor', 'In Progress', 27.0, 'High', 'Tunnel completion; Station testing', 'Positive public response', 5, 4, 4.5, 'A', 40.7128, -74.0060, 'Funding secured for Phase 2');
INSERT INTO city_infrastructure_project VALUES (802, 'Northside Water Main Replacement', 'River City', 'Utilities', 'Water', '2023-03-01', '2024-08-31', '2023-03-10', NULL, 120000000.0, 120000000.0, 45000000.0, 902, 'Brian Ortiz', 'In Progress', 38.0, 'Medium', 'Valve installation; Pressure testing', 'Residents notified via newsletters', 2, 2, 4.0, 'B', 38.8951, -77.0364, 'Minimal service disruptions reported');
INSERT INTO city_infrastructure_project VALUES (803, 'Eastside Solar Park', 'Sunnyvale', 'Energy', 'Renewable', '2023-07-01', '2025-06-30', NULL, NULL, 300000000.0, 0.0, 0.0, 903, 'Karen Liu', 'Planning', 0.0, 'Low', 'Land acquisition; Grid interconnection study', 'Community meetings scheduled', 3, 0, 3.8, 'A-', 37.7749, -122.4194, 'Early feasibility phase');

-- Digital wallet transaction logs
CREATE TABLE digital_wallet_transaction
(
    txn_id INTEGER PRIMARY KEY,
    wallet_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    transaction_date DATE NOT NULL,
    transaction_time TIME NOT NULL,
    txn_type TEXT NOT NULL,
    amount_usd REAL NOT NULL,
    currency TEXT NOT NULL,
    exchange_rate REAL,
    merchant_name TEXT,
    merchant_category TEXT,
    location_city TEXT,
    location_country TEXT,
    device_id TEXT,
    ip_address TEXT,
    status TEXT,
    authorization_code TEXT,
    fraud_flag INTEGER,
    settlement_date DATE,
    fee_usd REAL,
    notes TEXT,
    receipt_url TEXT,
    reconciliation_id INTEGER,
    created_timestamp DATE,
    updated_timestamp DATE
);

INSERT INTO digital_wallet_transaction VALUES (9001, 10001, 501, '2023-06-01', '09:15:00', 'Purchase', 45.75, 'USD', 1.0, 'Coffee House', 'Food & Beverage', 'Boston', 'USA', 'DEV123', '192.168.1.10', 'Completed', 'AUTH5678', 0, '2023-06-02', 0.30, 'Latte and muffin', 'http://example.com/receipt/9001', 3001, '2023-06-01', '2023-06-02');
INSERT INTO digital_wallet_transaction VALUES (9002, 10002, 502, '2023-06-03', '14:40:00', 'Transfer', 250.00, 'USD', 1.0, 'John Doe', 'Peer-to-Peer', 'San Francisco', 'USA', 'DEV124', '192.168.1.11', 'Pending', 'AUTH5679', 0, NULL, 0.00, 'Rent payment', NULL, 3002, '2023-06-03', '2023-06-03');
INSERT INTO digital_wallet_transaction VALUES (9003, 10003, 503, '2023-06-05', '20:05:00', 'Purchase', 120.00, 'EUR', 1.10, 'Online Store', 'Retail', 'Paris', 'France', 'DEV125', '192.168.1.12', 'Completed', 'AUTH5680', 1, '2023-06-06', 0.80, 'Suspected fraudulent activity', 'http://example.com/receipt/9003', 3003, '2023-06-05', '2023-06-06');

-- Loan product detail definitions
CREATE TABLE loan_product_detail
(
    loan_product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    loan_type TEXT NOT NULL,
    interest_rate_percent REAL NOT NULL,
    term_months INTEGER NOT NULL,
    minimum_amount INTEGER NOT NULL,
    maximum_amount INTEGER NOT NULL,
    early_repayment_penalty_percent REAL,
    eligibility_criteria TEXT,
    collateral_required INTEGER,
    insurance_required INTEGER,
    processing_fee_percent REAL,
    disbursement_method TEXT,
    supported_currencies TEXT,
    promotional_offer TEXT,
    status TEXT,
    launch_date DATE,
    retirement_date DATE,
    regulatory_approval_number TEXT,
    risk_category TEXT,
    default_probability REAL,
    average_lifetime_loss REAL,
    created_by TEXT,
    created_date DATE,
    last_modified_by TEXT,
    last_modified_date DATE,
    notes TEXT
);

INSERT INTO loan_product_detail VALUES (1101, 'Home Flex Mortgage', 'Mortgage', 3.75, 360, 50000, 2000000, 1.0, 'Credit score > 700, stable income', 1, 1, 0.5, 'Direct Transfer', 'USD,EUR', 'No fee for first 12 months', 'Active', '2022-01-01', NULL, 'APR2022001', 'Low', 0.02, 1500.0, 'Jane Manager', '2022-01-01', 'John Analyst', '2023-06-01', 'Standard 30‑year fixed mortgage');
INSERT INTO loan_product_detail VALUES (1102, 'Quick Cash Personal Loan', 'Personal', 7.25, 48, 1000, 50000, 2.5, 'Age 21‑65, no pending bankruptcies', 0, 0, 1.0, 'Bank Transfer', 'USD', '2% discount for auto‑pay', 'Active', '2021-05-15', NULL, 'APR2021005', 'Medium', 0.05, 3500.0, 'Mike Supervisor', '2021-05-15', 'Anna Officer', '2023-05-20', 'Unsecured personal loan with flexible repayment');
INSERT INTO loan_product_detail VALUES (1103, 'Student Education Loan', 'Education', 4.50, 120, 2000, 80000, 0.0, 'Enrolled in accredited program, GPA > 3.0', 0, 1, 0.75, 'Direct Deposit', 'USD', 'Grace period 6 months', 'Active', '2020-09-01', NULL, 'APR2020003', 'Low', 0.01, 1200.0, 'Lucy Director', '2020-09-01', 'Sam Coordinator', '2023-04-10', 'Low‑interest loan for tertiary education');

-- Fleet vehicle telematics data
CREATE TABLE fleet_vehicle_telemetry
(
    telemetry_id INTEGER PRIMARY KEY,
    vehicle_id INTEGER NOT NULL,
    timestamp DATETIME NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    speed_kmh REAL,
    fuel_level_percent REAL,
    engine_rpm INTEGER,
    odometer_km INTEGER,
    coolant_temp_c REAL,
    battery_voltage REAL,
    brake_status INTEGER,
    acceleration_g REAL,
    gear_position TEXT,
    driver_id INTEGER,
    route_id INTEGER,
    trip_status TEXT,
    maintenance_alert INTEGER,
    tire_pressure_front_left REAL,
    tire_pressure_front_right REAL,
    tire_pressure_rear_left REAL,
    tire_pressure_rear_right REAL,
    emissions_co2_gkm REAL,
    notes TEXT
);

INSERT INTO fleet_vehicle_telemetry VALUES (20001, 301, '2023-06-01 08:00:00', 40.7128, -74.0060, 60.5, 78.0, 2500, 120000, 85.0, 12.6, 0, 0.3, 'D', 401, 101, 'On Route', 0, 32.0, 33.0, 31.5, 31.0, 150.0, 'Normal operation');
INSERT INTO fleet_vehicle_telemetry VALUES (20002, 302, '2023-06-01 08:05:00', 40.7130, -74.0065, 0.0, 45.0, 800, 120050, 90.0, 12.5, 1, 0.0, 'N', 402, 101, 'Idle', 1, 30.5, 30.5, 30.0, 30.0, 0.0, 'Low fuel warning issued');
INSERT INTO fleet_vehicle_telemetry VALUES (20003, 303, '2023-06-01 08:10:00', 40.7140, -74.0070, 45.2, 65.0, 2200, 119900, 80.0, 12.7, 0, 0.2, '3', 403, 102, 'On Route', 0, 31.0, 31.5, 30.5, 30.5, 145.0, 'Smooth ride, no alerts');

-- Digital certificate registry
CREATE TABLE digital_certificate_registry
(
    cert_id INTEGER PRIMARY KEY,
    cert_name TEXT NOT NULL,
    issuer TEXT NOT NULL,
    subject TEXT NOT NULL,
    serial_number TEXT NOT NULL,
    version INTEGER NOT NULL,
    not_before DATE NOT NULL,
    not_after DATE NOT NULL,
    public_key_algorithm TEXT NOT NULL,
    key_length INTEGER NOT NULL,
    signature_algorithm TEXT NOT NULL,
    thumbprint TEXT NOT NULL,
    usage TEXT,
    revocation_status TEXT,
    revocation_date DATE,
    revocation_reason TEXT,
    associated_service TEXT,
    environment TEXT,
    created_by TEXT,
    created_date DATE,
    last_updated_by TEXT,
    last_updated_date DATE,
    notes TEXT,
    compliance_standards TEXT,
    expiration_warning_sent INTEGER,
    renewal_required INTEGER
);

INSERT INTO digital_certificate_registry VALUES (3001, 'API Gateway TLS', 'Let's Encrypt', 'api.bankcorp.com', '01AB23CD45EF', 3, '2022-12-01', '2023-12-01', 'RSA', 2048, 'SHA256', 'ABCD1234EF567890', 'TLS Server Auth', 'Valid', NULL, NULL, 'API Gateway', 'Production', 'Alice Admin', '2022-12-01', 'Bob Ops', '2023-06-15', 'Auto‑renew configured', 'PCI DSS, SOC2', 1, 0);
INSERT INTO digital_certificate_registry VALUES (3002, 'Employee Email S/MIME', 'DigiCert', 'employee@bankcorp.com', 'A1B2C3D4E5F6', 3, '2021-06-15', '2024-06-15', 'ECDSA', 256, 'SHA384', '1234ABCD5678EF90', 'Email Protection', 'Valid', NULL, NULL, 'Email Service', 'Corporate', 'Carol Manager', '2021-06-15', 'Dave IT', '2023-04-10', 'Certificate stored in HSM', 'ISO27001', 0, 0);
INSERT INTO digital_certificate_registry VALUES (3003, 'Code Signing Cert', 'GlobalSign', 'BankCorp Application', 'FFEEDDCCBBAA', 3, '2020-01-01', '2025-01-01', 'RSA', 4096, 'SHA512', 'DEADBEEF12345678', 'Code Signing', 'Valid', NULL, NULL, 'Software Deployment', 'Production', 'Eve Lead', '2020-01-01', 'Frank Security', '2023-05-20', 'Used for driver signing', 'NIST SP 800-57', 0, 0);

-- Risk metric time‑series records
CREATE TABLE risk_metric_time_series
(
    metric_id INTEGER PRIMARY KEY,
    metric_name TEXT NOT NULL,
    description TEXT,
    category TEXT,
    measurement_unit TEXT,
    frequency TEXT,
    source_system TEXT,
    effective_date DATE,
    value REAL,
    confidence_interval_low REAL,
    confidence_interval_high REAL,
    threshold_low REAL,
    threshold_high REAL,
    status TEXT,
    analyst_name TEXT,
    last_updated TIMESTAMP,
    notes TEXT,
    historical_trend TEXT,
    related_metric_id INTEGER,
    data_quality_score INTEGER,
    aggregation_level TEXT,
    jurisdiction TEXT,
    regulatory_reference TEXT,
    risk_score INTEGER,
    action_required TEXT,
    remediation_deadline DATE
);

INSERT INTO risk_metric_time_series VALUES (4001, 'Liquidity Coverage Ratio', 'Liquidity buffer relative to short‑term obligations', 'Liquidity', 'Percent', 'Monthly', 'Risk Engine', '2023-05-01', 112.5, 110.0, 115.0, 100.0, 120.0, 'Within Limits', 'Laura Risk', '2023-06-01 10:15:00', 'Stable trend', 'Increasing', NULL, 95, 'Bank', 'EU', 'CRR', 2, 'Monitor', NULL);
INSERT INTO risk_metric_time_series VALUES (4002, 'Credit Default Swap Spread', 'Market price of CDS for sovereign', 'MarketRisk', 'Basis Points', 'Daily', 'Market Data Feed', '2023-06-01', 85.0, 80.0, 90.0, 70.0, 100.0, 'Elevated', 'Mark Analyst', '2023-06-01 12:00:00', 'Slight upward drift', 'Stable', NULL, 88, 'Portfolio', 'US', 'FDIC', 3, 'Review exposure', '2023-07-15');
INSERT INTO risk_metric_time_series VALUES (4003, 'Operational Loss Events', 'Count of loss events per quarter', 'Operational', 'Count', 'Quarterly', 'Loss Data Warehouse', '2023-03-31', 12, 8, 16, 5, 20, 'Acceptable', 'Ian Ops', '2023-04-15 09:30:00', 'No significant changes', 'Flat', NULL, 92, 'Enterprise', 'Global', 'BCBS239', 1, 'No action', NULL);