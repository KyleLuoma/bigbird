-- Table: branch_security_audit
CREATE TABLE branch_security_audit (
    audit_id INTEGER PRIMARY KEY,
    branch_id INTEGER,
    auditor_name TEXT,
    audit_date DATE,
    overall_score INTEGER,
    camera_status TEXT,
    alarm_status TEXT,
    access_control_status TEXT,
    vault_security TEXT,
    employee_background_check TEXT,
    incident_reported INTEGER,
    follow_up_required TEXT,
    notes TEXT,
    supervisor_approval TEXT,
    audit_type TEXT,
    region TEXT,
    city TEXT,
    zip_code TEXT,
    security_budget REAL,
    compliance_rating INTEGER,
    third_party_present TEXT,
    audit_duration_minutes INTEGER
);

INSERT INTO branch_security_audit VALUES (1, 101, 'JohnDoe', '2023-01-15', 85, 'OK', 'OK', 'OK', 'OK', 'Completed', 0, 'No', 'All good', 'Approved', 'Annual', 'North', 'Metropolis', '12345', 15000.00, 4, 'Yes', 120);
INSERT INTO branch_security_audit VALUES (2, 102, 'JaneSmith', '2023-02-10', 78, 'Issue', 'OK', 'OK', 'Partial', 'Pending', 2, 'Yes', 'Camera blind spot', 'Pending', 'Quarterly', 'East', 'Gotham', '54321', 12000.00, 3, 'No', 90);
INSERT INTO branch_security_audit VALUES (3, 103, 'MikeBrown', '2023-03-05', 92, 'OK', 'OK', 'OK', 'OK', 'Completed', 0, 'No', 'Excellent', 'Approved', 'Annual', 'West', 'StarCity', '67890', 18000.00, 5, 'Yes', 150);

-- Table: marketing_performance_metrics
CREATE TABLE marketing_performance_metrics (
    metric_id INTEGER PRIMARY KEY,
    campaign_id INTEGER,
    period_start DATE,
    period_end DATE,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    cost REAL,
    revenue REAL,
    cpc REAL,
    cpa REAL,
    ctr REAL,
    roi REAL,
    channel TEXT,
    target_audience TEXT,
    geo_region TEXT,
    device_type TEXT,
    ad_format TEXT,
    creative_id INTEGER,
    budget_allocation REAL,
    spend_percentage REAL,
    notes TEXT
);

INSERT INTO marketing_performance_metrics VALUES (1, 201, '2023-01-01', '2023-01-31', 500000, 25000, 1500, 30000.00, 45000.00, 1.20, 20.00, 5.00, 1.50, 'Online', 'Adults', 'NorthAmerica', 'Mobile', 'Video', 301, 50000.00, 60.0, 'Strong Q1 performance');
INSERT INTO marketing_performance_metrics VALUES (2, 202, '2023-02-01', '2023-02-28', 400000, 18000, 1200, 25000.00, 38000.00, 1.39, 20.83, 4.50, 1.52, 'Social', 'YoungAdults', 'Europe', 'Desktop', 'Banner', 302, 40000.00, 62.5, 'Stable growth');
INSERT INTO marketing_performance_metrics VALUES (3, 203, '2023-03-01', '2023-03-31', 600000, 30000, 2000, 35000.00, 56000.00, 1.17, 17.50, 6.00, 1.60, 'Email', 'All', 'Asia', 'Mobile', 'HTML', 303, 55000.00, 64.0, 'Peak season');

-- Table: compliance_training_schedule
CREATE TABLE compliance_training_schedule (
    schedule_id INTEGER PRIMARY KEY,
    department TEXT,
    training_module TEXT,
    trainer_name TEXT,
    scheduled_date DATE,
    start_time TEXT,
    end_time TEXT,
    location TEXT,
    max_participants INTEGER,
    current_registrations INTEGER,
    mandatory_flag TEXT,
    completed_flag TEXT,
    certification_required TEXT,
    notes TEXT,
    compliance_area TEXT,
    training_version TEXT,
    feedback_score REAL,
    cost_per_participant REAL,
    funding_source TEXT,
    external_provider TEXT,
    repeat_interval_days INTEGER,
    last_updated DATE
);

INSERT INTO compliance_training_schedule VALUES (1, 'Finance', 'AntiMoneyLaundering', 'AliceGreen', '2023-04-10', '09:00', '12:00', 'RoomA', 20, 15, 'Yes', 'No', 'Yes', 'Need refresher', 'Regulation', 'v2', 4.5, 150.00, 'Budget2023', 'ExternalCo', 365, '2023-03-01');
INSERT INTO compliance_training_schedule VALUES (2, 'HR', 'WorkplaceHarassment', 'BobWhite', '2023-04-15', '13:00', '16:00', 'RoomB', 25, 22, 'Yes', 'No', 'No', 'High attendance', 'Policy', 'v1', 4.8, 100.00, 'Budget2023', 'InHouse', 180, '2023-03-05');
INSERT INTO compliance_training_schedule VALUES (3, 'IT', 'DataPrivacy', 'CarolBlack', '2023-04-20', '10:00', '13:00', 'RoomC', 30, 28, 'Yes', 'Yes', 'Yes', 'All modules completed', 'Privacy', 'v3', 4.7, 120.00, 'Budget2023', 'ExternalCo', 365, '2023-03-10');

-- Table: risk_indicator_history
CREATE TABLE risk_indicator_history (
    record_id INTEGER PRIMARY KEY,
    risk_id INTEGER,
    indicator_name TEXT,
    value REAL,
    assessment_date DATE,
    assessed_by TEXT,
    risk_category TEXT,
    threshold_low REAL,
    threshold_high REAL,
    status TEXT,
    mitigation_plan TEXT,
    comments TEXT,
    branch_id INTEGER,
    region TEXT,
    internal_score INTEGER,
    external_score INTEGER,
    probability_percent REAL,
    impact_score INTEGER,
    overall_risk_level TEXT,
    data_source TEXT,
    last_review_date DATE,
    action_taken TEXT,
    reviewer TEXT
);

INSERT INTO risk_indicator_history VALUES (1, 401, 'LiquidityRatio', 1.25, '2023-03-31', 'DaveMiller', 'Financial', 0.8, 1.5, 'Acceptable', 'Monitor daily', 'Stable', 101, 'North', 70, 65, 20.0, 30, 'Low', 'InternalSystem', '2023-04-01', 'None', 'EllenClark');
INSERT INTO risk_indicator_history VALUES (2, 402, 'CreditDefaultRate', 3.5, '2023-03-31', 'SaraLee', 'Credit', 1.0, 5.0, 'Watchlist', 'Increase reserves', 'Slight rise', 102, 'East', 55, 60, 35.0, 45, 'Medium', 'ExternalReport', '2023-04-02', 'Adjusted limits', 'FrankHill');
INSERT INTO risk_indicator_history VALUES (3, 403, 'OperationalLosses', 200000, '2023-03-31', 'MikeJohnson', 'Operational', 100000, 500000, 'Acceptable', 'Improve controls', 'No major incidents', 103, 'West', 65, 70, 15.0, 25, 'Low', 'InternalAudit', '2023-04-03', 'Implemented new SOP', 'GraceKim');

-- Table: environmental_sensor_log
CREATE TABLE environmental_sensor_log (
    log_id INTEGER PRIMARY KEY,
    sensor_id INTEGER,
    sensor_type TEXT,
    measurement_date DATE,
    measurement_time TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm REAL,
    pm25_ugm3 REAL,
    noise_db REAL,
    wind_speed_mps REAL,
    wind_direction TEXT,
    rainfall_mm REAL,
    battery_level_percent REAL,
    signal_strength_dbm REAL,
    location_lat REAL,
    location_long REAL,
    maintenance_required TEXT,
    firmware_version TEXT,
    calibrate_date DATE,
    notes TEXT,
    status TEXT
);

INSERT INTO environmental_sensor_log VALUES (1, 501, 'Weather', '2023-04-01', '08:00', 22.5, 55.0, 420.0, 12.0, 45.0, 3.2, 'NE', 0.0, 95.0, -70, 40.7128, -74.0060, 'No', 'v1.2', '2023-01-15', 'Normal operation', 'Active');
INSERT INTO environmental_sensor_log VALUES (2, 502, 'AirQuality', '2023-04-01', '08:05', 21.8, 58.0, 400.0, 15.5, 48.0, 2.9, 'E', 0.0, 90.0, -68, 34.0522, -118.2437, 'Yes', 'v1.3', '2023-02-20', 'Battery low', 'Active');
INSERT INTO environmental_sensor_log VALUES (3, 503, 'Noise', '2023-04-01', '08:10', 20.0, 60.0, 380.0, 10.0, 70.0, 1.5, 'S', 0.0, 88.0, -65, 51.5074, -0.1278, 'No', 'v1.1', '2023-03-10', 'Peak traffic hour', 'Active');

-- Table: fleet_vehicle_inspection
CREATE TABLE fleet_vehicle_inspection (
    inspection_id INTEGER PRIMARY KEY,
    vehicle_id INTEGER,
    inspector_name TEXT,
    inspection_date DATE,
    odometer_km INTEGER,
    brake_condition TEXT,
    tire_tread_mm REAL,
    engine_oil_level TEXT,
    coolant_level TEXT,
    lights_functional TEXT,
    emission_test_passed TEXT,
    safety_equipment_status TEXT,
    notes TEXT,
    next_due_km INTEGER,
    next_due_date DATE,
    inspection_type TEXT,
    location TEXT,
    weather_conditions TEXT,
    fuel_level_percent REAL,
    diagnostic_codes TEXT,
    corrective_actions TEXT,
    overall_score INTEGER
);

INSERT INTO fleet_vehicle_inspection VALUES (1, 601, 'TomGray', '2023-03-20', 45200, 'Good', 3.5, 'Full', 'Full', 'OK', 'Yes', 'OK', 'All good', 60000, '2023-09-20', 'Routine', 'DepotA', 'Clear', 85.0, 'None', 'None', 95);
INSERT INTO fleet_vehicle_inspection VALUES (2, 602, 'LindaBlue', '2023-03-22', 78500, 'Fair', 2.1, 'Low', 'Low', 'OK', 'No', 'Replace', 'Brake wear noted', 85000, '2023-09-22', 'Annual', 'DepotB', 'Rainy', 70.0, 'P0420', 'Oil change', 80);
INSERT INTO fleet_vehicle_inspection VALUES (3, 603, 'SamRed', '2023-03-25', 12000, 'Excellent', 5.0, 'Full', 'Full', 'OK', 'Yes', 'OK', 'New vehicle', 30000, '2023-09-25', 'Initial', 'DepotC', 'Sunny', 95.0, 'None', 'None', 98);

-- Table: supplier_contract_overview
CREATE TABLE supplier_contract_overview (
    contract_id INTEGER PRIMARY KEY,
    supplier_id INTEGER,
    contract_name TEXT,
    start_date DATE,
    end_date DATE,
    contract_value REAL,
    currency TEXT,
    payment_terms TEXT,
    performance_score INTEGER,
    compliance_status TEXT,
    risk_level TEXT,
    renewal_option TEXT,
    notice_period_days INTEGER,
    governing_law TEXT,
    jurisdiction TEXT,
    authorized_rep TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    service_category TEXT,
    sla_details TEXT,
    penalties TEXT,
    remarks TEXT
);

INSERT INTO supplier_contract_overview VALUES (1, 701, 'ITSupport2023', '2023-01-01', '2025-12-31', 250000.00, 'USD', 'Net30', 88, 'Compliant', 'Low', 'Auto', 60, 'USLaw', 'California', 'MarkTaylor', 'mark.taylor@example.com', '5551234567', 'Support', '99.5%Uptime', 'LateFee', 'Renewable');
INSERT INTO supplier_contract_overview VALUES (2, 702, 'CleaningServices', '2022-06-01', '2024-05-31', 150000.00, 'USD', 'Net45', 75, 'Pending', 'Medium', 'Manual', 90, 'USLaw', 'NewYork', 'SusanLee', 'susan.lee@example.com', '5559876543', 'Facility', 'DailyCleaning', 'PenaltyClause', 'Review needed');
INSERT INTO supplier_contract_overview VALUES (3, 703, 'CateringSupply', '2023-03-15', '2026-03-14', 120000.00, 'USD', 'Net30', 92, 'Compliant', 'Low', 'Auto', 30, 'USLaw', 'Illinois', 'PeterWhite', 'peter.white@example.com', '5555551234', 'Food', 'OnTimeDelivery', 'None', 'Excellent partner');

-- Table: customer_experience_survey
CREATE TABLE customer_experience_survey (
    survey_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    survey_date DATE,
    channel TEXT,
    rating_overall INTEGER,
    rating_service INTEGER,
    rating_product INTEGER,
    rating_support INTEGER,
    net_promoter_score INTEGER,
    comments TEXT,
    follow_up_required TEXT,
    respondent_age INTEGER,
    respondent_gender TEXT,
    respondent_income_bracket TEXT,
    region TEXT,
    city TEXT,
    zip_code TEXT,
    survey_version TEXT,
    completion_time_seconds INTEGER,
    incentive_given TEXT,
    incentive_value REAL,
    analyst_notes TEXT
);

INSERT INTO customer_experience_survey VALUES (1, 801, '2023-04-05', 'Email', 9, 8, 9, 7, 70, 'Great service', 'No', 34, 'Female', '50k-70k', 'North', 'Metrocity', '12345', 'v1', 180, 'GiftCard', 25.00, 'Positive sentiment');
INSERT INTO customer_experience_survey VALUES (2, 802, '2023-04-06', 'Phone', 7, 6, 8, 5, 50, 'Average experience', 'Yes', 45, 'Male', '70k-90k', 'East', 'Riverdale', '54321', 'v1', 210, 'Discount', 15.00, 'Needs follow up');
INSERT INTO customer_experience_survey VALUES (3, 803, '2023-04-07', 'Web', 8, 9, 8, 8, 80, 'Very satisfied', 'No', 29, 'NonBinary', '30k-50k', 'West', 'Lakeside', '67890', 'v1', 150, 'None', 0.00, 'Highly satisfied');

-- Table: digital_payment_method_usage
CREATE TABLE digital_payment_method_usage (
    usage_id INTEGER PRIMARY KEY,
    payment_method_id INTEGER,
    user_id INTEGER,
    transaction_id INTEGER,
    usage_date DATE,
    amount REAL,
    currency TEXT,
    merchant_category TEXT,
    device_type TEXT,
    app_version TEXT,
    auth_method TEXT,
    fraud_flag TEXT,
    settlement_status TEXT,
    processing_time_ms INTEGER,
    location_lat REAL,
    location_long REAL,
    ip_address TEXT,
    is_contactless TEXT,
    fee_percent REAL,
    discount_applied TEXT,
    promo_code TEXT,
    notes TEXT
);

INSERT INTO digital_payment_method_usage VALUES (1, 901, 1001, 5001, '2023-04-01', 125.50, 'USD', 'Retail', 'Mobile', '1.4.2', 'Biometric', 'No', 'Settled', 350, 40.7128, -74.0060, '192.168.1.10', 'Yes', 2.5, 'No', 'SPRING20', 'First purchase');
INSERT INTO digital_payment_method_usage VALUES (2, 902, 1002, 5002, '2023-04-02', 78.00, 'USD', 'Travel', 'Desktop', '2.0.1', 'Password', 'No', 'Pending', 420, 34.0522, -118.2437, '192.168.2.20', 'No', 3.0, 'Yes', 'TRAVEL5', 'Recurring payment');
INSERT INTO digital_payment_method_usage VALUES (3, 903, 1003, 5003, '2023-04-03', 250.75, 'USD', 'Food', 'Tablet', '1.9.0', 'PIN', 'Yes', 'Failed', 600, 51.5074, -0.1278, '192.168.3.30', 'Yes', 2.0, 'No', 'FOOD10', 'Fraud alert');

-- Table: loan_product_offering
CREATE TABLE loan_product_offering (
    offering_id INTEGER PRIMARY KEY,
    product_name TEXT,
    product_code TEXT,
    max_amount INTEGER,
    min_amount INTEGER,
    interest_rate REAL,
    term_months INTEGER,
    collateral_required TEXT,
    eligibility_criteria TEXT,
    fee_structure TEXT,
    early_repayment_penalty TEXT,
    insurance_required TEXT,
    processing_time_days INTEGER,
    disbursement_method TEXT,
    currency TEXT,
    supported_regions TEXT,
    credit_score_min INTEGER,
    income_requirement REAL,
    documentation_required TEXT,
    renewal_option TEXT,
    status TEXT,
    last_updated DATE
);

INSERT INTO loan_product_offering VALUES (1, 'PersonalLoan', 'PL001', 50000, 5000, 5.75, 60, 'Yes', 'StableIncome', 'FlatFee', '2%Remaining', 'Yes', 5, 'DirectDeposit', 'USD', 'US', 650, 30000.00, 'IDProof,PayStub', 'Auto', 'Active', '2023-03-15');
INSERT INTO loan_product_offering VALUES (2, 'AutoLoan', 'AL002', 80000, 10000, 4.20, 72, 'Yes', 'VehiclePurchase', 'OriginationFee', 'None', 'Yes', 7, 'BankTransfer', 'USD', 'US', 620, 25000.00, 'IDProof,VehicleInfo', 'Manual', 'Active', '2023-03-20');
INSERT INTO loan_product_offering VALUES (3, 'HomeEquity', 'HE003', 200000, 20000, 3.85, 120, 'Yes', 'HomeOwnership', 'ClosingCost', '1%Early', 'Yes', 10, 'Check', 'USD', 'US', 700, 50000.00, 'IDProof,Deed', 'Auto', 'Active', '2023-03-25');