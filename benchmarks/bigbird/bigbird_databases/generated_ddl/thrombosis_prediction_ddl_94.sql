-- Hospital energy consumption metrics
CREATE TABLE hospital_energy_metric (
    metric_id INTEGER PRIMARY KEY,
    report_date DATE,
    electricity_kwh REAL,
    natural_gas_therms REAL,
    steam_tons REAL,
    chilled_water_gallons REAL,
    solar_generation_kwh REAL,
    wind_generation_kwh REAL,
    total_energy_kwh REAL,
    carbon_emission_tons REAL,
    peak_demand_kw REAL,
    average_demand_kw REAL,
    utility_provider TEXT,
    cost_usd REAL,
    demand_charge_usd REAL,
    energy_factor REAL,
    greenhouse_gas_index REAL,
    renewable_percentage REAL,
    reporting_period TEXT,
    campus_zone TEXT,
    building_count INTEGER,
    floor_area_sqft REAL,
    average_temperature_f REAL,
    humidity_percent REAL,
    notes TEXT
);

INSERT INTO hospital_energy_metric VALUES
(1, '2023-12-31', 1250000, 45000, 1200, 300000, 150000, 0, 1405000, 850, 750, 500, 'UtilityCo', 250000, 20000, 0.95, 1.12, 15.5, 'FY2023', 'North', 12, 3400000, 68.2, 45.0, 'Annual summary');

INSERT INTO hospital_energy_metric VALUES
(2, '2024-06-30', 630000, 22500, 600, 150000, 80000, 0, 720000, 430, 380, 250, 'UtilityCo', 130000, 10500, 0.96, 1.10, 16.2, 'H1-2024', 'South', 8, 2100000, 67.5, 44.8, 'Half year data');

INSERT INTO hospital_energy_metric VALUES
(3, '2024-09-30', 320000, 11000, 300, 80000, 40000, 0, 410000, 240, 200, 130, 'UtilityCo', 68000, 5600, 0.97, 1.08, 14.8, 'Q3-2024', 'East', 5, 1200000, 69.0, 46.2, 'Quarterly report');

-- Air quality monitoring stations
CREATE TABLE facility_air_quality_station (
    station_id INTEGER PRIMARY KEY,
    install_date DATE,
    latitude REAL,
    longitude REAL,
    altitude_m REAL,
    manufacturer TEXT,
    model_number TEXT,
    sensor_type TEXT,
    pm25_ug_m3 REAL,
    pm10_ug_m3 REAL,
    no2_ppb REAL,
    o3_ppb REAL,
    co_ppb REAL,
    so2_ppb REAL,
    temperature_c REAL,
    humidity_percent REAL,
    battery_voltage REAL,
    status TEXT,
    maintenance_interval_days INTEGER,
    last_maintenance_date DATE,
    calibration_date DATE,
    firmware_version TEXT,
    notes TEXT,
    alert_threshold_pm25 REAL,
    alert_threshold_no2 REAL,
    alert_status TEXT,
    location_description TEXT,
    data_transmission_method TEXT,
    network_id TEXT,
    reporting_frequency_minutes INTEGER
);

INSERT INTO facility_air_quality_station VALUES
(101, '2022-01-15', 40.7128, -74.0060, 10, 'AirTech', 'AQ100', 'Optical', 12.5, 25.0, 30, 45, 0.4, 5, 22.3, 55, 3.7, 'Active', 180, '2024-01-10', '2024-01-01', 'v1.2', 'Rooftop lab', 35, 50, 'Normal', 'Rooftop', 'WiFi', 'NET01', 15);

INSERT INTO facility_air_quality_station VALUES
(102, '2022-03-20', 40.7135, -74.0055, 12, 'EnviroSense', 'ES200', 'Electrochemical', 8.2, 18.5, 22, 38, 0.3, 4, 21.9, 58, 3.9, 'Active', 180, '2024-02-05', '2024-02-01', 'v2.0', 'East wing', 30, 45, 'Normal', 'East Wing', 'Cellular', 'NET02', 10);

INSERT INTO facility_air_quality_station VALUES
(103, '2023-07-01', 40.7140, -74.0070, 8, 'ClearAir', 'CA300', 'Laser', 15.0, 28.0, 35, 50, 0.5, 6, 23.0, 53, 3.5, 'Maintenance', 180, '2024-03-20', '2024-03-15', 'v1.5', 'Main lobby', 40, 55, 'Warning', 'Lobby', 'Ethernet', 'NET03', 5);

-- Generic environmental sensor readings
CREATE TABLE environmental_sensor_reading (
    reading_id INTEGER PRIMARY KEY,
    sensor_id INTEGER,
    reading_timestamp DATETIME,
    temperature_c REAL,
    humidity_percent REAL,
    pressure_hpa REAL,
    light_lux REAL,
    sound_db REAL,
    vibration_g REAL,
    co2_ppm REAL,
    tvoc_ppb REAL,
    pm25_ug_m3 REAL,
    pm10_ug_m3 REAL,
    o2_percent REAL,
    methane_ppm REAL,
    battery_percent REAL,
    signal_strength_dbm INTEGER,
    status TEXT,
    location_zone TEXT,
    firmware_version TEXT,
    notes TEXT
);

INSERT INTO environmental_sensor_reading VALUES
(1001, 201, '2024-10-01 08:00:00', 21.5, 48, 1013, 350, 45, 0.02, 420, 150, 10.2, 20.5, 20.8, 1.2, 85, -70, 'OK', 'ZoneA', 'v3.1', 'Morning reading');

INSERT INTO environmental_sensor_reading VALUES
(1002, 202, '2024-10-01 08:05:00', 21.7, 47, 1012, 360, 44, 0.01, 415, 148, 9.8, 19.9, 20.9, 1.1, 88, -68, 'OK', 'ZoneB', 'v3.1', 'Morning reading');

INSERT INTO environmental_sensor_reading VALUES
(1003, 203, '2024-10-01 08:10:00', 21.6, 48, 1013, 355, 46, 0.03, 418, 149, 10.0, 20.1, 20.7, 1.3, 82, -72, 'OK', 'ZoneC', 'v3.1', 'Morning reading');

-- Medical device utilization statistics
CREATE TABLE medical_device_utilization (
    device_id INTEGER PRIMARY KEY,
    device_name TEXT,
    device_type TEXT,
    department TEXT,
    year INTEGER,
    total_procedures INTEGER,
    total_hours_used REAL,
    avg_procedure_duration_min REAL,
    maintenance_events INTEGER,
    downtime_hours REAL,
    success_rate_percent REAL,
    complication_rate_percent REAL,
    average_wait_time_min REAL,
    patient_satisfaction_score REAL,
    calibration_status TEXT,
    last_calibration_date DATE,
    firmware_version TEXT,
    software_version TEXT,
    warranty_expiry DATE,
    cost_usd REAL,
    manufacturer TEXT,
    model_number TEXT,
    serial_number TEXT,
    location_room TEXT,
    notes TEXT,
    usage_percentage REAL,
    ndc_code TEXT,
    replacement_due_date DATE,
    operational_status TEXT,
    risk_category TEXT,
    regulatory_approval TEXT
);

INSERT INTO medical_device_utilization VALUES
(501, 'MRI Scanner', 'Imaging', 'Radiology', 2023, 1200, 2500, 125, 15, 50, 98.5, 1.2, 30, 4.6, 'Calibrated', '2024-01-15', 'v5.2', 's3.1', '2026-12-31', 3000000, 'MedEquipCo', 'MRI-7T', 'SN12345', 'Room101', 'High field MRI', 92, 'NDC001', '2025-12-31', 'Operational', 'High', 'FDA');

INSERT INTO medical_device_utilization VALUES
(502, 'Ventilator', 'Respiratory', 'ICU', 2023, 8000, 6000, 45, 30, 120, 97.0, 2.0, 5, 4.2, 'Calibrated', '2023-11-20', 'v3.8', 's2.5', '2025-06-30', 25000, 'LifeSupportInc', 'VentPro', 'SN67890', 'ICU-02', 'Critical care ventilator', 88, 'NDC002', '2024-11-30', 'Operational', 'Medium', 'FDA');

INSERT INTO medical_device_utilization VALUES
(503, 'Da Vinci Robot', 'Surgical', 'Surgery', 2023, 400, 1800, 270, 8, 30, 99.2, 0.5, 15, 4.9, 'Calibrated', '2023-09-10', 'v2.4', 's1.9', '2028-03-31', 2500000, 'RoboticsMed', 'DVX-1', 'SN24680', 'OR-5', 'Robotic surgery system', 95, 'NDC003', '2027-03-31', 'Operational', 'High', 'FDA');

-- Supply chain vendor performance metrics
CREATE TABLE supply_chain_vendor_performance (
    vendor_id INTEGER PRIMARY KEY,
    vendor_name TEXT,
    contract_start DATE,
    contract_end DATE,
    product_category TEXT,
    year INTEGER,
    on_time_delivery_pct REAL,
    fill_rate_pct REAL,
    defect_rate_pct REAL,
    average_lead_days REAL,
    total_orders INTEGER,
    total_value_usd REAL,
    compliance_score REAL,
    safety_incidents INTEGER,
    audit_passed BOOLEAN,
    sustainability_score REAL,
    insurance_coverage_usd REAL,
    credit_rating TEXT,
    preferred BOOLEAN,
    notes TEXT,
    contact_name TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    regional_office TEXT,
    payment_terms TEXT,
    penalty_rate_percent REAL,
    renewal_option TEXT,
    escalation_path TEXT,
    risk_assessment_score REAL,
    insurance_policy_number TEXT,
    last_audit_date DATE
);

INSERT INTO supply_chain_vendor_performance VALUES
(301, 'MediSupply Ltd', '2022-01-01', '2025-12-31', 'Medical Consumables', 2023, 96.5, 98.2, 0.4, 2.3, 1250, 750000, 88.5, 0, 1, 85.0, 500000, 'A+', 1, 'Key supplier', 'John Doe', 'jdoe@medisupply.com', '5551234567', 'North Region', 'Net30', 0.5, 'OptionA', 'VendorManager', 12.5, 'POL12345', '2024-02-15');

INSERT INTO supply_chain_vendor_performance VALUES
(302, 'HealthLogistics Inc', '2021-06-15', '2024-06-14', 'Logistics Services', 2023, 94.0, 95.5, 0.6, 1.8, 980, 420000, 82.0, 1, 1, 78.0, 300000, 'B', 0, 'Secondary logistics partner', 'Alice Smith', 'asmith@healthlogistics.com', '5559876543', 'South Region', 'Net45', 0.7, 'OptionB', 'OpsDirector', 15.0, 'POL67890', '2023-12-01');

INSERT INTO supply_chain_vendor_performance VALUES
(303, 'SterileTech', '2023-03-01', '2026-02-28', 'Sterile Instruments', 2023, 98.2, 99.1, 0.2, 1.5, 450, 210000, 91.0, 0, 1, 90.0, 150000, 'A', 1, 'New vendor', 'Bob Lee', 'blee@steriletech.com', '5553217890', 'West Region', 'Net30', 0.3, 'OptionC', 'QualityLead', 10.0, 'POL11223', '2024-04-20');

-- Community health survey results
CREATE TABLE community_health_survey (
    survey_id INTEGER PRIMARY KEY,
    survey_date DATE,
    region TEXT,
    population_estimate INTEGER,
    median_age REAL,
    percent_female REAL,
    avg_household_income_usd REAL,
    unemployment_rate_percent REAL,
    smoking_prevalence_percent REAL,
    obesity_prevalence_percent REAL,
    diabetes_prevalence_percent REAL,
    hypertension_prevalence_percent REAL,
    average_physical_activity_min_per_day REAL,
    average_sugar_intake_g_per_day REAL,
    average_fruit_veg_servings_per_day REAL,
    mental_health_score REAL,
    vaccine_coverage_percent REAL,
    health_insurance_coverage_percent REAL,
    average_commute_time_min REAL,
    access_to_parks_percent REAL,
    water_quality_rating INTEGER,
    air_quality_index REAL,
    average_sleep_hours REAL,
    dental_visit_rate_percent REAL,
    substance_abuse_rate_percent REAL,
    chronic_disease_burden_score REAL,
    health_literacy_score REAL,
    notes TEXT,
    survey_conducted_by TEXT,
    data_quality_flag TEXT,
    follow_up_required BOOLEAN,
    next_survey_due DATE,
    funding_source TEXT,
    respondent_count INTEGER,
    average_age_of_respondents REAL,
    gender_ratio_female_to_male REAL,
    average_education_years REAL,
    health_equity_index REAL,
    public_transport_usage_percent REAL,
    green_space_per_capita_sqft REAL
);

INSERT INTO community_health_survey VALUES
(1, '2023-11-15', 'North District', 85000, 38.5, 51.2, 62000, 6.5, 15.0, 28.0, 9.5, 22.0, 35, 45, 4.5, 78, 92, 85, 25, 70, 4, 42.5, 6.8, 68, 4.2, 55.0, 78, 'Annual community health survey', 'PublicHealthDept', 'Good', 0, '2025-11-15', 'GovGrant', 1200, 39.2, 1.03, 14.5, 70.0, 55, 1500);

INSERT INTO community_health_survey VALUES
(2, '2024-04-10', 'South Suburb', 62000, 36.7, 49.8, 54000, 5.8, 12.0, 26.0, 8.0, 20.5, 38, 48, 4.8, 80, 95, 88, 22, 75, 5, 38.0, 7.2, 71, 3.9, 48.5, 80, 'Mid‑year health assessment', 'CountyHealthAgency', 'Good', 0, '2025-04-10', 'StateFunding', 950, 37.9, 0.97, 13.8, 68.5, 60, 1800);

INSERT INTO community_health_survey VALUES
(3, '2024-09-05', 'East Town', 45000, 40.1, 52.5, 58000, 7.2, 14.5, 30.0, 10.2, 24.0, 32, 42, 4.2, 75, 90, 82, 28, 65, 3, 45.5, 6.5, 66, 4.5, 52.0, 77, 'Quarterly health monitoring', 'RegionalHealthOffice', 'Good', 0, '2025-09-05', 'PrivateFoundation', 700, 40.3, 1.08, 15.0, 62.0, 50, 2000);

-- Hospital asset tracking
CREATE TABLE hospital_asset_tracking (
    asset_tag TEXT PRIMARY KEY,
    asset_type TEXT,
    asset_category TEXT,
    manufacturer TEXT,
    model_number TEXT,
    serial_number TEXT,
    purchase_date DATE,
    purchase_price_usd REAL,
    depreciation_rate_percent REAL,
    current_value_usd REAL,
    location_building TEXT,
    location_floor INTEGER,
    location_room TEXT,
    assigned_department TEXT,
    custodian_employee_id INTEGER,
    maintenance_schedule TEXT,
    last_maintenance_date DATE,
    next_maintenance_due DATE,
    warranty_expiry DATE,
    insurance_policy_number TEXT,
    asset_status TEXT,
    usage_hours REAL,
    last_inventory_check DATE,
    condition_rating INTEGER,
    disposal_date DATE,
    disposal_method TEXT,
    notes TEXT,
    compliance_requirement TEXT,
    regulatory_approval TEXT,
    lifecycle_stage TEXT,
    asset_group TEXT,
    funding_source TEXT,
    responsible_manager TEXT,
    audit_trail TEXT,
    risk_classification TEXT,
    replacement_year INTEGER,
    valuation_method TEXT,
    barcode TEXT,
    qr_code TEXT,
    virtual_tag TEXT,
    linked_asset_tag TEXT,
    maintenance_contract_id INTEGER
);

INSERT INTO hospital_asset_tracking VALUES
('A1001', 'MRI Scanner', 'Imaging', 'MedEquipCo', 'MRI-7T', 'SN12345', '2018-06-12', 3000000, 10, 1800000, 'Main Building', 1, 'Room101', 'Radiology', 1023, 'Annual', '2024-01-15', '2025-01-15', '2026-12-31', 'POL12345', 'In Service', 2500, '2024-03-01', 9, NULL, NULL, 'Critical diagnostic equipment', 'FDA', 'FDA', 'Operational', 'Imaging', 'Capital', 'Dr. Lee', 'Audit2024', 'High', 2028, 'Cost', 'BC123456', 'QR001', 'VT001', 'A1002', 2001);

INSERT INTO hospital_asset_tracking VALUES
('B2005', 'Ventilator', 'Respiratory', 'LifeSupportInc', 'VentPro', 'SN67890', '2020-02-20', 25000, 15, 15000, 'East Wing', 2, 'ICU-02', 'ICU', 2045, 'Semi‑Annual', '2024-11-20', '2025-05-20', '2025-06-30', 'POL67890', 'In Service', 6000, '2024-02-10', 8, NULL, NULL, 'Critical life‑support equipment', 'FDA', 'FDA', 'Operational', 'Respiratory', 'Capital', 'Dr. Kim', 'Audit2024', 'Medium', 2027, 'Cost', 'BC200500', 'QR2005', 'VT2005', 'B2006', 2002);

INSERT INTO hospital_asset_tracking VALUES
('C3007', 'Da Vinci Robot', 'Surgical', 'RoboticsMed', 'DVX-1', 'SN24680', '2022-09-01', 2500000, 8, 2200000, 'Surgery Tower', 5, 'OR-5', 'Surgery', 2078, 'Annual', '2024-09-10', '2025-09-10', '2028-03-31', 'POL11223', 'In Service', 1800, '2024-04-15', 9, NULL, NULL, 'Robotic surgery system', 'FDA', 'FDA', 'Operational', 'Robotics', 'Capital', 'Dr. Patel', 'Audit2024', 'High', 2029, 'Cost', 'BC3007', 'QR3007', 'VT3007', 'C3008', 2003);

-- Facility utility meter readings
CREATE TABLE facility_utility_meter_readings (
    meter_id INTEGER PRIMARY KEY,
    meter_type TEXT,
    location_building TEXT,
    location_floor INTEGER,
    meter_serial TEXT,
    reading_date DATE,
    reading_time TIME,
    reading_value REAL,
    unit TEXT,
    peak_demand REAL,
    cumulative_total REAL,
    status TEXT,
    meter_vendor TEXT,
    installation_date DATE,
    last_calibration_date DATE,
    next_calibration_due DATE,
    maintenance_required BOOLEAN,
    notes TEXT,
    tariff_category TEXT,
    cost_per_unit REAL,
    billing_cycle TEXT,
    data_source TEXT,
    latitude REAL,
    longitude REAL,
    elevation_m REAL,
    voltage REAL,
    current REAL,
    power_factor REAL,
    frequency_hz REAL,
    alarm_flag BOOLEAN,
    meter_group TEXT,
    reading_method TEXT,
    consumption_type TEXT,
    net_metering BOOLEAN,
    contract_number TEXT,
    billing_account TEXT,
    average_daily_consumption REAL,
    maximum_daily_consumption REAL,
    minimum_daily_consumption REAL,
    variance_percent REAL,
    last_updated TIMESTAMP,
    created_by TEXT,
    validated_by TEXT,
    validation_date DATE,
    discrepancy_flag BOOLEAN,
    reconciliation_status TEXT,
    anomaly_score REAL,
    energy_star_rating INTEGER,
    carbon_offset_factor REAL,
    renewable_energy_pct REAL
);

INSERT INTO facility_utility_meter_readings VALUES
(1, 'Electricity', 'Main Building', 1, 'EL-001', '2024-09-30', '23:59:00', 12500, 'kWh', 300, 12500, 'Active', 'EnergyCo', '2015-03-01', '2024-01-15', '2025-01-15', 0, 'Monthly reading', 'Commercial', 0.12, 'Monthly', 'Automated', 40.7128, -74.0060, 10, 240, 100, 0.95, 60, 0, 'UtilityGroupA', 'Automatic', 'Electric', 0, 'CN001', 'BA1001', 420, 500, 350, 19.5, '2024-09-30 23:59:00', 'system', 'auditor1', '2024-09-30', 0, 'Reconciled', 0.02, 95, 0.4, 0.15);

INSERT INTO facility_utility_meter_readings VALUES
(2, 'Water', 'East Wing', 2, 'WT-045', '2024-09-30', '23:59:00', 3200, 'Gallons', 150, 3200, 'Active', 'WaterCo', '2016-07-15', '2024-02-20', '2025-02-20', 0, 'Monthly reading', 'Municipal', 0.005, 'Monthly', 'Manual', 40.7135, -74.0055, 12, NULL, NULL, NULL, NULL, 0, 'UtilityGroupB', 'Manual', 'Water', 0, 'CN002', 'BA2002', 110, 130, 90, 23.1, '2024-09-30 23:59:00', 'system', 'auditor2', '2024-09-30', 0, 'Reconciled', 0.01, 88, 0.3, 0.10);

INSERT INTO facility_utility_meter_readings VALUES
(3, 'NaturalGas', 'South Building', 3, 'NG-078', '2024-09-30', '23:59:00', 8500, 'Therms', 250, 8500, 'Active', 'GasCo', '2018-11-05', '2024-03-10', '2025-03-10', 0, 'Monthly reading', 'Industrial', 0.09, 'Monthly', 'Automated', 40.7140, -74.0070, 8, 120, 30, 0.92, 60, 0, 'UtilityGroupC', 'Automatic', 'Gas', 0, 'CN003', 'BA3003', 285, 320, 250, 22.7, '2024-09-30 23:59:00', 'system', 'auditor3', '2024-09-30', 0, 'Reconciled', 0.03, 90, 0.35, 0.12);

-- Research data access log
CREATE TABLE research_data_access_log (
    log_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    access_timestamp DATETIME,
    dataset_name TEXT,
    access_type TEXT,
    query_text TEXT,
    rows_returned INTEGER,
    execution_time_ms INTEGER,
    source_ip TEXT,
    destination_ip TEXT,
    authentication_method TEXT,
    role TEXT,
    purpose TEXT,
    approval_status TEXT,
    compliance_flag BOOLEAN,
    data_classification TEXT,
    encryption_used BOOLEAN,
    data_retention_policy TEXT,
    notes TEXT,
    department TEXT,
    project_code TEXT,
    data_sensitivity_level INTEGER,
    audit_trail TEXT,
    error_message TEXT,
    session_id TEXT,
    client_application TEXT,
    data_volume_mb REAL,
    expiration_date DATE,
    policy_version TEXT,
    reviewed_by TEXT,
    review_timestamp DATETIME,
    access_outcome TEXT,
    risk_score REAL,
    action_taken TEXT,
    notification_sent BOOLEAN,
    notification_method TEXT,
    escalation_required BOOLEAN,
    escalation_path TEXT,
    data_owner TEXT,
    governance_body TEXT,
    retention_period_days INTEGER,
    data_format TEXT,
    download_url TEXT,
    checksum TEXT,
    integrity_verified BOOLEAN,
    backup_location TEXT,
    replication_factor INTEGER,
    compliance_framework TEXT,
    data_category TEXT,
    usage_limit INTEGER,
    usage_count INTEGER,
    last_modified TIMESTAMP,
    created_by TEXT
);

INSERT INTO research_data_access_log VALUES
(10001, 501, '2024-09-30 10:15:00', 'GenomicVariantDataset', 'READ', 'SELECT * FROM variants WHERE impact=\\'HIGH\\'', 1250, 350, '10.0.0.1', '10.0.5.2', 'OAuth', 'Researcher', 'Variant analysis', 'Approved', 1, 'Confidential', 1, '5 years', 'No issues', 'Genomics', 'PRJ001', 3, 'Audit10001', NULL, 'SID12345', 'WebPortal', 12.5, '2027-09-30', 'v2.1', 'Dr. Lee', '2024-09-30 10:20:00', 'Success', 2.1, 'Logged', 1, 'Email', 0, NULL, 'Dr. Lee', 'IRB', 1825, 'CSV', 'http://researchhub.org/download/var123', 'abc123def', 1, '/backups/genomics', 2, 'HIPAA', 'Genomics', 1000, 150, '2024-09-30 10:20:00', 'system');

INSERT INTO research_data_access_log VALUES
(10002, 502, '2024-09-30 11:05:00', 'ClinicalTrialData2023', 'EXPORT', 'EXPORT TO CSV', 0, 800, '10.0.0.2', '10.0.5.3', 'SAML', 'DataManager', 'Data sharing with sponsor', 'Pending', 0, 'Restricted', 0, '2 years', 'Awaiting approval', 'ClinicalTrials', 'PRJ045', 4, 'Audit10002', 'Approval pending', 'SID12346', 'DesktopApp', 250.0, '2025-09-30', 'v1.0', 'Dr. Kim', '2024-09-30 11:10:00', 'Pending', 5.0, 'Hold', 0, NULL, 1, 'Dr. Kim', 'IRB', 730, 'XLSX', NULL, NULL, 0, NULL, 1, 'GDPR', 'Clinical', 500, 0, '2024-09-30 11:10:00', 'system');

INSERT INTO research_data_access_log VALUES
(10003, 503, '2024-09-30 14:20:00', 'HospitalEnergyDataset', 'READ', 'SELECT date, electricity_kwh FROM energy WHERE date > \\'2024-01-01\\'', 365, 120, '10.0.0.3', '10.0.5.4', 'Password', 'Analyst', 'Energy consumption analysis', 'Approved', 1, 'Public', 0, '1 year', 'All good', 'Facilities', 'PRJ078', 1, 'Audit10003', NULL, 'SID12347', 'AnalyticsTool', 5.0, '2025-09-30', 'v3.0', 'Dr. Patel', '2024-09-30 14:25:00', 'Success', 1.5, 'Logged', 1, 'SMS', 0, NULL, 'Dr. Patel', 'FacilitiesCommittee', 365, 'JSON', 'http://energydata.hospital.org/api/2024', 'def456ghi', 1, '/backups/energy', 1, 'ISO27001', 'Energy', 2000, 300, '2024-09-30 14:25:00', 'system');

-- Clinical guideline implementation tracking
CREATE TABLE clinical_guideline_implementation (
    guideline_id INTEGER PRIMARY KEY,
    guideline_name TEXT,
    version TEXT,
    clinical_area TEXT,
    implementing_department TEXT,
    implementation_start DATE,
    implementation_end DATE,
    compliance_target_percent REAL,
    actual_compliance_percent REAL,
    number_of_providers INTEGER,
    number_of_patients_affected INTEGER,
    training_sessions_conducted INTEGER,
    training_hours_total REAL,
    audit_score REAL,
    deviation_count INTEGER,
    corrective_actions INTEGER,
    status TEXT,
    notes TEXT,
    responsible_manager TEXT,
    approval_date DATE,
    sponsor TEXT,
    funding_amount_usd REAL,
    risk_level TEXT,
    data_source TEXT,
    last_updated DATE,
    created_by TEXT,
    last_reviewed_by TEXT,
    review_date DATE,
    implementation_cost_usd REAL,
    patient_outcome_improvement_percent REAL,
    provider_feedback_score REAL,
    external_review_status TEXT,
    guidelines_repository_url TEXT,
    policy_document_url TEXT,
    stakeholder_engagement_score REAL,
    communication_plan TEXT,
    change_management_plan TEXT,
    monitoring_frequency TEXT,
    key_performance_indicator TEXT,
    escalation_procedure TEXT,
    regulatory_alignment TEXT,
    documentation_complete BOOLEAN,
    evidence_based BOOLEAN,
    implementation_phase TEXT,
    pilot_status TEXT,
    post_implementation_review_date DATE,
    lessons_learned TEXT,
    future_improvement_plan TEXT,
    benchmark_comparison_percent REAL,
    variation_analysis TEXT,
    governance_body TEXT,
    audit_trail TEXT,
    compliance_framework TEXT,
    impact_assessment TEXT,
    sustainability_score REAL,
    resource_utilization_score REAL,
    change_log TEXT
);

INSERT INTO clinical_guideline_implementation VALUES
(2001, 'Sepsis Management', '2023', 'Infection Control', 'Emergency', '2024-01-01', '2024-12-31', 95.0, 92.3, 45, 8000, 12, 48, 88.5, 3, 3, 'Ongoing', 'Monitoring adherence', 'Dr. Lee', '2023-12-15', 'Health Dept', 150000, 'Medium', 'EHR', '2024-09-15', 'admin', 'Dr. Kim', '2024-09-01', 130000, 5.2, 4.5, 'Completed', 'http://guidelines.org/sepsis2023', 'http://policies.org/sepsis2023', 78.0, 'Email newsletters', 'ChangePlanV1', 'Quarterly', 'MortalityRate', 'EscalateToChief', 'JointCommission', 1, 1, 'Full', 'Pilot', NULL, 'Need better KPI tracking', 'Expand to ICU', 90.0, 'Slight variation in rural sites', 'ClinicalBoard', 'Log2024', 'JointCommission', 'Positive', 80.0, 85.0, 'Update2024-09');

INSERT INTO clinical_guideline_implementation VALUES
(2002, 'Venous Thromboembolism Prophylaxis', '2022', 'Cardiology', 'Cardiology', '2024-03-01', '2024-11-30', 90.0, 87.0, 30, 5000, 8, 32, 91.0, 2, 2, 'Completed', 'Guideline fully adopted', 'Dr. Patel', '2022-11-20', 'Cardio Society', 95000, 'Low', 'EHR', '2024-09-20', 'admin', 'Dr. Lee', '2024-09-05', 90000, 3.8, 4.2, 'Approved', 'http://guidelines.org/vte2022', 'http://policies.org/vte2022', 85.0, 'Staff meetings', 'ChangePlanV2', 'Monthly', 'ReadmissionRate', 'EscalateToDeptHead', 'CDC', 1, 1, 'Full', 'Full', NULL, 'Consider dose adjustment', 'Monitor adherence', 88.0, 'Consistent across sites', 'CardiologyCommittee', 'Log2024V2', 'CDC', 'Neutral', 75.0, 78.0, 'Update2024-09V2');

INSERT INTO clinical_guideline_implementation VALUES
(2003, 'Antibiotic Stewardship', '2021', 'Pharmacy', 'Pharmacy', '2024-02-15', '2024-10-15', 85.0, 80.5, 25, 3000, 10, 40, 84.0, 4, 5, 'Ongoing', 'Education ongoing', 'Dr. Kim', '2021-08-10', 'Antibiotic Alliance', 120000, 'High', 'PharmacySystem', '2024-09-18', 'admin', 'Dr. Patel', '2024-09-02', 115000, 4.1, 3.9, 'In Review', 'http://guidelines.org/abx2021', 'http://policies.org/abx2021', 70.0, 'Quarterly webinars', 'ChangePlanV3', 'Biweekly', 'ResistanceRate', 'EscalateToPharmacyDirector', 'WHO', 1, 1, 'Partial', 'Pilot', NULL, 'Need more rapid tests', 'Integrate decision support', 82.0, 'Higher resistance in ICU', 'PharmacySteering', 'Log2024V3', 'WHO', 'Mixed', 68.0, 70.0, 'Update2024-09V3');