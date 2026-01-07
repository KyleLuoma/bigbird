-- Customer Retention Program
CREATE TABLE customer_retention_program (
    program_id INTEGER PRIMARY KEY,
    program_name TEXT NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE,
    target_segment TEXT,
    channel TEXT,
    budget REAL,
    expected_retention_rate REAL,
    actual_retention_rate REAL,
    participants INTEGER,
    notes TEXT,
    created_by TEXT,
    created_at DATE,
    updated_by TEXT,
    updated_at DATE,
    status TEXT,
    region TEXT,
    tier TEXT,
    incentive_type TEXT,
    incentive_value REAL,
    communication_frequency TEXT,
    metric_score INTEGER,
    risk_level TEXT
);
INSERT INTO customer_retention_program VALUES (1, 'LoyaltyBoost', '2023-01-10', '2023-12-31', 'Retail', 'Email', 50000, 0.85, 0.78, 1200, 'First phase', 'admin', '2023-01-01', 'admin', '2023-01-15', 'Active', 'North', 'Gold', 'Discount', 10, 'Monthly', 78, 'Medium');
INSERT INTO customer_retention_program VALUES (2, 'PremiumHold', '2022-06-01', '2023-05-31', 'Premium', 'SMS', 75000, 0.90, 0.88, 800, 'Second phase', 'manager', '2022-05-20', 'manager', '2022-06-10', 'Completed', 'South', 'Platinum', 'Cashback', 20, 'Weekly', 88, 'Low');
INSERT INTO customer_retention_program VALUES (3, 'YouthEngage', '2023-03-15', NULL, 'Youth', 'Push', 30000, 0.70, NULL, 1500, 'Ongoing', 'analyst', '2023-03-01', 'analyst', '2023-03-20', 'Active', 'East', 'Silver', 'Points', 5, 'Daily', 65, 'High');

-- Digital Marketing Campaign
CREATE TABLE digital_marketing_campaign (
    campaign_id INTEGER PRIMARY KEY,
    campaign_name TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    media_channel TEXT,
    budget REAL,
    target_audience TEXT,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    cpc REAL,
    cpm REAL,
    ctr REAL,
    conversion_rate REAL,
    roi REAL,
    creative_type TEXT,
    platform TEXT,
    geo_target TEXT,
    device_target TEXT,
    ad_format TEXT,
    frequency_cap INTEGER,
    status TEXT,
    created_by TEXT,
    created_at DATE
);
INSERT INTO digital_marketing_campaign VALUES (101, 'SpringSale', '2023-04-01', '2023-04-30', 'Social', 40000, 'Adults', 1200000, 45000, 3200, 0.89, 33.33, 3.75, 7.11, 2.5, 'Video', 'Facebook', 'National', 'Mobile', 'InStream', 3, 'Completed', 'marketer', '2023-03-20');
INSERT INTO digital_marketing_campaign VALUES (102, 'HolidayPush', '2023-11-15', '2023-12-25', 'Search', 60000, 'All', 900000, 38000, 4100, 1.58, 66.67, 4.22, 10.79, 3.2, 'Banner', 'Google', 'International', 'Desktop', 'Display', 5, 'Active', 'strategist', '2023-10-30');
INSERT INTO digital_marketing_campaign VALUES (103, 'NewProductLaunch', '2024-01-05', NULL, 'Email', 25000, 'Subscribers', 500000, 25000, 2100, 0.40, 50.00, 5.00, 8.40, 4.0, 'HTML', 'Mailchimp', 'Regional', 'All', 'Newsletter', 1, 'Planned', 'campaignlead', '2023-12-10');

-- Facility Safety Audit
CREATE TABLE facility_safety_audit (
    audit_id INTEGER PRIMARY KEY,
    facility_id INTEGER NOT NULL,
    audit_date DATE NOT NULL,
    auditor_name TEXT,
    overall_score INTEGER,
    fire_safety_score INTEGER,
    electrical_score INTEGER,
    structural_score INTEGER,
    hvac_score INTEGER,
    emergency_exit_score INTEGER,
    signage_compliance BOOLEAN,
    training_compliance BOOLEAN,
    equipment_status TEXT,
    notes TEXT,
    follow_up_required BOOLEAN,
    follow_up_date DATE,
    corrective_actions INTEGER,
    pending_issues INTEGER,
    risk_category TEXT,
    severity_level TEXT,
    jurisdiction TEXT,
    created_at DATE,
    updated_at DATE,
    status TEXT
);
INSERT INTO facility_safety_audit VALUES (2001, 45, '2023-06-12', 'John Doe', 88, 90, 85, 80, 87, 92, 1, 1, 'Good', 'No major issues', 0, NULL, 2, 0, 'Medium', 'Low', 'State', '2023-06-12', '2023-06-12', 'Closed');
INSERT INTO facility_safety_audit VALUES (2002, 46, '2023-07-20', 'Jane Smith', 73, 70, 68, 75, 71, 78, 0, 1, 'Fair', 'Minor wiring concerns', 1, '2023-08-15', 4, 1, 'High', 'Medium', 'County', '2023-07-20', '2023-07-20', 'Open');
INSERT INTO facility_safety_audit VALUES (2003, 47, '2023-08-05', 'Mike Lee', 95, 96, 94, 95, 93, 97, 1, 1, 'Excellent', 'All systems nominal', 0, NULL, 0, 0, 'Low', 'Low', 'Municipal', '2023-08-05', '2023-08-05', 'Closed');

-- Transportation Asset Registry
CREATE TABLE transportation_asset_registry (
    asset_id INTEGER PRIMARY KEY,
    asset_type TEXT NOT NULL,
    manufacturer TEXT,
    model TEXT,
    serial_number TEXT,
    purchase_date DATE,
    warranty_expiration DATE,
    service_interval_months INTEGER,
    last_service_date DATE,
    mileage INTEGER,
    fuel_type TEXT,
    capacity INTEGER,
    owner_department TEXT,
    location_site TEXT,
    status TEXT,
    depreciation_rate REAL,
    current_value REAL,
    original_cost REAL,
    insurance_policy TEXT,
    registration_number TEXT,
    assigned_driver TEXT,
    maintenance_contact TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO transportation_asset_registry VALUES (5001, 'Truck', 'Volvo', 'VNL', 'SN12345', '2021-03-15', '2024-03-15', 6, '2023-09-01', 85000, 'Diesel', 20000, 'Logistics', 'DepotA', 'Active', 0.15, 120000, 150000, 'POL123', 'REG567', 'Alice Brown', 'Mike Ops', 'No remarks', '2021-03-15', '2023-09-02');
INSERT INTO transportation_asset_registry VALUES (5002, 'Van', 'Ford', 'Transit', 'SN54321', '2020-07-20', '2023-07-20', 12, '2023-01-10', 45000, 'Gasoline', 1200, 'Sales', 'DepotB', 'In Service', 0.20, 30000, 40000, 'POL456', 'REG890', 'Bob Green', 'Sara Tech', 'Minor dent on left door', '2020-07-20', '2023-01-11');
INSERT INTO transportation_asset_registry VALUES (5003, 'Electric Bus', 'Tesla', 'ModelX', 'SN98765', '2022-11-01', '2026-11-01', 3, '2023-08-20', 15000, 'Electric', 50000, 'Transit', 'DepotC', 'Active', 0.10, 350000, 400000, 'POL789', 'REG321', 'Carol White', 'Dave Eng', 'Battery health good', '2022-11-01', '2023-08-20');

-- Environmental Compliance Check
CREATE TABLE environmental_compliance_check (
    check_id INTEGER PRIMARY KEY,
    facility_id INTEGER NOT NULL,
    check_date DATE NOT NULL,
    regulator TEXT,
    emission_level REAL,
    emission_limit REAL,
    waste_generated REAL,
    waste_limit REAL,
    water_usage REAL,
    water_limit REAL,
    compliance_status TEXT,
    corrective_action_required BOOLEAN,
    corrective_action_due DATE,
    inspector_name TEXT,
    notes TEXT,
    follow_up_date DATE,
    violations INTEGER,
    severity TEXT,
    jurisdiction TEXT,
    created_at DATE,
    updated_at DATE,
    status TEXT,
    document_reference TEXT
);
INSERT INTO environmental_compliance_check VALUES (3001, 45, '2023-05-10', 'EPA', 45.2, 50.0, 1200, 1500, 3000, 3500, 'Compliant', 0, NULL, 'Laura King', 'All metrics within limits', NULL, 0, 'Low', 'Federal', '2023-05-10', '2023-05-10', 'Closed', 'DOC1001');
INSERT INTO environmental_compliance_check VALUES (3002, 46, '2023-07-22', 'StateEnv', 55.5, 50.0, 1800, 1500, 3800, 3500, 'Non-Compliant', 1, '2023-08-15', 'Mark Lee', 'Emission exceedance', '2023-08-20', 2, 'High', 'State', '2023-07-22', '2023-07-22', 'Open', 'DOC1002');
INSERT INTO environmental_compliance_check VALUES (3003, 47, '2023-09-01', 'LocalGov', 49.9, 50.0, 1400, 1500, 3400, 3500, 'Compliant', 0, NULL, 'Nina Patel', 'Near limit but acceptable', NULL, 0, 'Medium', 'Local', '2023-09-01', '2023-09-01', 'Closed', 'DOC1003');

-- Financial Forecast Scenario
CREATE TABLE financial_forecast_scenario (
    scenario_id INTEGER PRIMARY KEY,
    scenario_name TEXT NOT NULL,
    base_year INTEGER,
    forecast_year INTEGER,
    gdp_growth_rate REAL,
    inflation_rate REAL,
    interest_rate REAL,
    unemployment_rate REAL,
    exchange_rate_usd REAL,
    exchange_rate_eur REAL,
    revenue_projection REAL,
    expense_projection REAL,
    net_income_projection REAL,
    cash_flow_projection REAL,
    capital_expenditure REAL,
    debt_ratio REAL,
    equity_ratio REAL,
    risk_factor TEXT,
    assumptions TEXT,
    created_by TEXT,
    created_at DATE,
    approved_by TEXT,
    approved_at DATE,
    status TEXT,
    notes TEXT
);
INSERT INTO financial_forecast_scenario VALUES (1, 'BaseCase', 2023, 2025, 2.5, 1.8, 3.0, 5.2, 1.12, 0.85, 2500000, 1800000, 700000, 500000, 300000, 0.4, 0.6, 'Medium', 'Stable market conditions', 'analyst', '2023-01-15', 'cfo', '2023-01-20', 'Approved', 'Standard forecast');
INSERT INTO financial_forecast_scenario VALUES (2, 'Optimistic', 2023, 2025, 3.8, 1.5, 2.5, 4.8, 1.15, 0.80, 3000000, 1700000, 1300000, 800000, 250000, 0.35, 0.65, 'Low', 'Higher demand, lower costs', 'senior_analyst', '2023-02-10', 'cfo', '2023-02-15', 'Approved', 'Best case scenario');
INSERT INTO financial_forecast_scenario VALUES (3, 'Pessimistic', 2023, 2025, 1.2, 2.5, 4.5, 6.0, 1.05, 0.90, 2000000, 1900000, 100000, 300000, 400000, 0.55, 0.45, 'High', 'Economic slowdown expected', 'junior_analyst', '2023-03-05', 'cfo', '2023-03-12', 'Pending', 'Worst case projection');

-- HR Employee Survey
CREATE TABLE hr_employee_survey (
    survey_id INTEGER PRIMARY KEY,
    employee_id INTEGER NOT NULL,
    department TEXT,
    survey_date DATE,
    overall_satisfaction INTEGER,
    work_life_balance INTEGER,
    compensation_satisfaction INTEGER,
    career_growth INTEGER,
    management_effectiveness INTEGER,
    communication_clarity INTEGER,
    training_opportunities INTEGER,
    recognition_level INTEGER,
    stress_level INTEGER,
    suggestion TEXT,
    follow_up_required BOOLEAN,
    follow_up_date DATE,
    created_by TEXT,
    created_at DATE,
    updated_by TEXT,
    updated_at DATE,
    status TEXT,
    notes TEXT,
    confidentiality_level TEXT,
    response_time_minutes INTEGER,
    survey_method TEXT,
    incentive_offered BOOLEAN
);
INSERT INTO hr_employee_survey VALUES (9001, 1123, 'Sales', '2023-04-20', 7, 6, 5, 4, 6, 7, 5, 6, 4, 'More flexible hours', 0, NULL, 'hr_rep', '2023-04-20', 'hr_rep', '2023-04-20', 'Completed', 'No issues', 'High', 12, 'Online', 0);
INSERT INTO hr_employee_survey VALUES (9002, 1456, 'Engineering', '2023-05-15', 8, 7, 7, 6, 8, 8, 7, 8, 3, 'Increase project variety', 1, '2023-06-01', 'hr_rep', '2023-05-15', 'hr_rep', '2023-05-15', 'Pending', 'Awaiting manager review', 'Medium', 15, 'Online', 1);
INSERT INTO hr_employee_survey VALUES (9003, 1789, 'HR', '2023-06-10', 6, 5, 6, 5, 5, 6, 6, 5, 5, 'Improve internal communication', 0, NULL, 'hr_rep', '2023-06-10', 'hr_rep', '2023-06-10', 'Completed', 'Reviewed', 'High', 10, 'Paper', 0);

-- IT Incident Log
CREATE TABLE it_incident_log (
    incident_id INTEGER PRIMARY KEY,
    incident_date DATE NOT NULL,
    reported_by TEXT,
    incident_type TEXT,
    severity_level TEXT,
    affected_system TEXT,
    description TEXT,
    root_cause TEXT,
    resolution TEXT,
    downtime_hours REAL,
    tickets_raised INTEGER,
    tickets_closed INTEGER,
    status TEXT,
    assigned_to TEXT,
    escalation_level INTEGER,
    impact_score INTEGER,
    compliance_impacted BOOLEAN,
    follow_up_required BOOLEAN,
    follow_up_date DATE,
    created_at DATE,
    updated_at DATE,
    closed_at DATE,
    notes TEXT,
    resolution_time_minutes INTEGER,
    incident_category TEXT,
    cost_estimate REAL
);
INSERT INTO it_incident_log VALUES (4001, '2023-07-01', 'alice', 'Network Outage', 'Critical', 'Core Router', 'Loss of connectivity for 2 hours', 'Power failure at data center', 'Restored power and rebooted router', 2.0, 5, 5, 'Closed', 'bob', 2, 95, 0, 0, NULL, '2023-07-01', '2023-07-01', '2023-07-01', 'No further issues', 120, 'Infrastructure', 15000);
INSERT INTO it_incident_log VALUES (4002, '2023-08-12', 'carol', 'Phishing', 'High', 'Email System', 'Multiple users received malicious links', 'User clicked malicious link', 'Blocked sender and reset passwords', 0.5, 3, 3, 'Closed', 'dave', 1, 70, 0, 0, NULL, '2023-08-12', '2023-08-12', '2023-08-12', 'User training scheduled', 90, 'Security', 5000);
INSERT INTO it_incident_log VALUES (4003, '2023-09-05', 'eve', 'Software Bug', 'Medium', 'Payroll App', 'Incorrect salary calculations', 'Logic error in tax module', 'Deployed patch fixing calculation', 1.0, 2, 2, 'Closed', 'frank', 1, 50, 0, 1, '2023-09-20', '2023-09-05', '2023-09-05', 'Monitoring ongoing', 180, 'Application', 8000);

-- Logistics Carrier Performance
CREATE TABLE logistics_carrier_performance (
    carrier_id INTEGER PRIMARY KEY,
    carrier_name TEXT NOT NULL,
    contract_start DATE,
    contract_end DATE,
    average_delivery_time_days REAL,
    on_time_delivery_rate REAL,
    damaged_shipment_rate REAL,
    lost_shipment_rate REAL,
    total_shipments INTEGER,
    total_volume_tons REAL,
    compliance_score INTEGER,
    safety_incidents INTEGER,
    insurance_claims INTEGER,
    cost_per_shipment REAL,
    fuel_efficiency_l_per_100km REAL,
    carbon_emission_tons REAL,
    service_region TEXT,
    hub_location TEXT,
    contact_person TEXT,
    contact_email TEXT,
    status TEXT,
    reviews_average_rating REAL,
    last_audit_date DATE,
    created_at DATE,
    updated_at DATE,
    notes TEXT
);
INSERT INTO logistics_carrier_performance VALUES (701, 'FastFreight', '2022-01-01', '2024-12-31', 2.5, 0.96, 0.01, 0.00, 12000, 1500, 88, 2, 1, 45.5, 30.2, 120.5, 'NorthAmerica', 'Chicago', 'Mike', 'mike@fastfreight.com', 'Active', 4.6, '2023-06-15', '2022-01-01', '2023-06-15', 'Preferred carrier');
INSERT INTO logistics_carrier_performance VALUES (702, 'EcoShip', '2021-06-15', '2025-06-14', 3.0, 0.92, 0.02, 0.01, 9500, 1100, 81, 5, 3, 50.0, 28.5, 100.0, 'Europe', 'Rotterdam', 'Sara', 'sara@ecoship.eu', 'Active', 4.2, '2023-05-20', '2021-06-15', '2023-05-20', 'Green logistics partner');
INSERT INTO logistics_carrier_performance VALUES (703, 'BulkMove', '2020-03-01', '2023-02-28', 4.2, 0.85, 0.05, 0.03, 8000, 2000, 73, 9, 5, 60.0, 35.0, 150.0, 'Asia', 'Singapore', 'Lee', 'lee@bulkmove.asia', 'Expired', 3.8, '2022-12-10', '2020-03-01', '2022-12-10', 'Contract renewal pending');

-- Clinical Trial Subject
CREATE TABLE clinical_trial_subject (
    subject_id INTEGER PRIMARY KEY,
    trial_id INTEGER NOT NULL,
    enrollment_date DATE,
    site_location TEXT,
    age INTEGER,
    gender TEXT,
    ethnicity TEXT,
    weight_kg REAL,
    height_cm REAL,
    bmi REAL,
    baseline_score REAL,
    treatment_arm TEXT,
    dosage_mg REAL,
    visit_count INTEGER,
    adverse_events INTEGER,
    serious_adverse_events INTEGER,
    compliance_percentage REAL,
    status TEXT,
    last_visit_date DATE,
    next_visit_date DATE,
    investigator_name TEXT,
    consent_signed BOOLEAN,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO clinical_trial_subject VALUES (10001, 200, '2023-01-15', 'SiteA', 45, 'Male', 'Caucasian', 82.5, 175, 26.9, 5.2, 'Placebo', 0, 5, 0, 0, 100.0, 'Active', '2023-06-10', '2023-07-20', 'Dr. Allen', 1, 'No issues', '2023-01-15', '2023-06-10');
INSERT INTO clinical_trial_subject VALUES (10002, 200, '2023-02-01', 'SiteA', 52, 'Female', 'Asian', 68.0, 160, 26.6, 4.8, 'DrugA', 50, 6, 1, 0, 95.0, 'Active', '2023-06-12', '2023-07-22', 'Dr. Allen', 1, 'Mild headache reported', '2023-02-01', '2023-06-12');
INSERT INTO clinical_trial_subject VALUES (10003, 201, '2023-03-20', 'SiteB', 37, 'Male', 'Hispanic', 90.0, 182, 27.2, 5.5, 'DrugB', 75, 4, 0, 0, 98.0, 'Completed', '2023-05-30', NULL, 'Dr. Bennett', 1, 'Completed successfully', '2023-03-20', '2023-05-30');

-- Digital Wallet Activity
CREATE TABLE digital_wallet_activity (
    activity_id INTEGER PRIMARY KEY,
    wallet_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    activity_date DATE,
    activity_type TEXT,
    amount REAL,
    currency TEXT,
    merchant_name TEXT,
    merchant_category TEXT,
    status TEXT,
    balance_before REAL,
    balance_after REAL,
    transaction_reference TEXT,
    device_id TEXT,
    ip_address TEXT,
    location_city TEXT,
    location_country TEXT,
    fee_real REAL,
    promo_code TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    is_fraudulent BOOLEAN,
    risk_score INTEGER,
    verification_method TEXT
);
INSERT INTO digital_wallet_activity VALUES (8001, 501, 1101, '2023-08-01', 'Payment', 120.50, 'USD', 'Amazon', 'Retail', 'Completed', 1500.00, 1379.50, 'TRX8001', 'DEV01', '192.168.1.10', 'NewYork', 'USA', 2.50, 'SUMMER21', 'Online purchase', '2023-08-01', '2023-08-01', 0, 15, 'Password');
INSERT INTO digital_wallet_activity VALUES (8002, 502, 1102, '2023-08-03', 'TopUp', 200.00, 'EUR', NULL, NULL, 'Completed', 300.00, 500.00, 'TRX8002', 'DEV02', '10.0.0.5', 'Berlin', 'Germany', 1.00, NULL, 'Bank transfer top-up', '2023-08-03', '2023-08-03', 0, 10, 'OTP');
INSERT INTO digital_wallet_activity VALUES (8003, 503, 1103, '2023-08-05', 'Transfer', 75.00, 'GBP', 'JohnDoe', 'PeerToPeer', 'Pending', 400.00, 325.00, 'TRX8003', 'DEV03', '172.16.0.2', 'London', 'UK', 0.75, 'FRIEND5', 'Send to friend', '2023-08-05', '2023-08-05', 0, 12, 'Biometric');

-- Risk Indicator History
CREATE TABLE risk_indicator_history (
    record_id INTEGER PRIMARY KEY,
    indicator_name TEXT NOT NULL,
    measurement_date DATE,
    value_numeric REAL,
    value_category TEXT,
    threshold_low REAL,
    threshold_high REAL,
    risk_level TEXT,
    source_system TEXT,
    related_entity_type TEXT,
    related_entity_id INTEGER,
    comments TEXT,
    status TEXT,
    reviewed_by TEXT,
    reviewed_at DATE,
    escalated BOOLEAN,
    escalation_level INTEGER,
    mitigation_plan TEXT,
    created_at DATE,
    updated_at DATE,
    confidence_score REAL,
    trend_direction TEXT,
    historical_average REAL,
    variance REAL,
    action_required BOOLEAN
);
INSERT INTO risk_indicator_history VALUES (90001, 'LiquidityRatio', '2023-07-31', 1.25, 'Adequate', 1.0, 2.0, 'Low', 'CoreBanking', 'Account', 12345, 'Within normal range', 'Active', 'risk_manager', '2023-08-01', 0, NULL, NULL, '2023-07-31', '2023-08-01', 0.95, 'Stable', 1.30, -0.05, 0);
INSERT INTO risk_indicator_history VALUES (90002, 'CreditUtilization', '2023-08-15', 85.0, 'High', 0.0, 80.0, 'Medium', 'CreditEngine', 'Client', 67890, 'Slightly above threshold', 'Active', 'analyst', '2023-08-16', 1, 2, 'Review credit limits', '2023-08-15', '2023-08-16', 0.80, 'Rising', 78.0, 7.0, 1);
INSERT INTO risk_indicator_history VALUES (90003, 'OperationalLosses', '2023-09-01', 250000, 'Critical', 0.0, 100000, 'High', 'Finance', 'Branch', 12, 'Exceeds risk appetite', 'Investigating', 'senior_risk_officer', '2023-09-02', 1, 3, 'Immediate remediation plan', '2023-09-01', '2023-09-02', 0.60, 'Increasing', 90000, 160000, 1);

-- Environmental Sensor Station Readings
CREATE TABLE environmental_sensor_station_readings (
    reading_id INTEGER PRIMARY KEY,
    station_id INTEGER NOT NULL,
    reading_timestamp DATETIME,
    temperature_c REAL,
    humidity_percent REAL,
    pm2_5_ug_m3 REAL,
    pm10_ug_m3 REAL,
    co_ppm REAL,
    no2_ppb REAL,
    o3_ppb REAL,
    wind_speed_mps REAL,
    wind_direction_deg INTEGER,
    rain_mm REAL,
    solar_irradiance_w_m2 REAL,
    uv_index INTEGER,
    battery_voltage REAL,
    signal_strength_dbm INTEGER,
    firmware_version TEXT,
    maintenance_status TEXT,
    alert_flag BOOLEAN,
    created_at DATE,
    updated_at DATE,
    notes TEXT,
    latitude REAL,
    longitude REAL,
    elevation_m REAL
);
INSERT INTO environmental_sensor_station_readings VALUES (40001, 101, '2023-09-01 08:00:00', 22.5, 55.0, 12.3, 25.6, 0.3, 18, 30, 3.2, 180, 0.0, 500, 5, 3.7, -70, 'v1.2.0', 'Operational', 0, '2023-09-01', '2023-09-01', 'Normal', 40.7128, -74.0060, 10);
INSERT INTO environmental_sensor_station_readings VALUES (40002, 102, '2023-09-01 08:15:00', 19.8, 60.2, 8.5, 20.1, 0.2, 15, 28, 2.8, 200, 0.0, 480, 4, 3.6, -68, 'v1.2.0', 'Operational', 0, '2023-09-01', '2023-09-01', 'Normal', 34.0522, -118.2437, 30);
INSERT INTO environmental_sensor_station_readings VALUES (40003, 103, '2023-09-01 08:30:00', 25.1, 50.5, 15.0, 30.2, 0.4, 20, 35, 4.0, 170, 0.0, 520, 6, 3.8, -72, 'v1.2.0', 'Operational', 0, '2023-09-01', '2023-09-01', 'Normal', 51.5074, -0.1278, 15);