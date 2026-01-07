-- Branch facility maintenance records
CREATE TABLE branch_facility_maintenance
(
    facility_id              INTEGER PRIMARY KEY,
    branch_id                INTEGER NOT NULL,
    facility_type            TEXT NOT NULL,
    last_maintenance_date    DATE NOT NULL,
    next_due_date            DATE NOT NULL,
    contractor_name          TEXT NOT NULL,
    contract_id              INTEGER NOT NULL,
    maintenance_cost         REAL NOT NULL,
    downtime_hours           REAL NOT NULL,
    safety_rating            INTEGER NOT NULL,
    notes                    TEXT,
    created_at               DATE NOT NULL,
    updated_at               DATE NOT NULL,
    inspector_id             INTEGER,
    compliance_status        TEXT,
    material_used            TEXT,
    warranty_expiry          DATE,
    maintenance_priority     TEXT,
    risk_level               TEXT,
    internal_code            TEXT
);

INSERT INTO branch_facility_maintenance
(facility_id, branch_id, facility_type, last_maintenance_date, next_due_date, contractor_name, contract_id,
 maintenance_cost, downtime_hours, safety_rating, notes, created_at, updated_at, inspector_id,
 compliance_status, material_used, warranty_expiry, maintenance_priority, risk_level, internal_code)
VALUES
(1, 101, 'HVAC', '2023-05-12', '2024-05-12', 'CoolTech Services', 3001, 1250.75, 2.5, 9,
 'Routine filter replacement', '2023-05-13', '2023-05-13', 45, 'Compliant', 'Filter, Coolant', '2025-12-31','High','Medium','BRC-001');

INSERT INTO branch_facility_maintenance
(facility_id, branch_id, facility_type, last_maintenance_date, next_due_date, contractor_name, contract_id,
 maintenance_cost, downtime_hours, safety_rating, notes, created_at, updated_at, inspector_id,
 compliance_status, material_used, warranty_expiry, maintenance_priority, risk_level, internal_code)
VALUES
(2, 102, 'Elevator', '2023-03-20', '2024-03-20', 'LiftCo Solutions', 3002, 4320.00, 4.0, 8,
 'Cable inspection completed', '2023-03-21', '2023-03-21', 52, 'Compliant', 'Cable, Motor', '2026-07-15','Medium','Low','BRC-002');

INSERT INTO branch_facility_maintenance
(facility_id, branch_id, facility_type, last_maintenance_date, next_due_date, contractor_name, contract_id,
 maintenance_cost, downtime_hours, safety_rating, notes, created_at, updated_at, inspector_id,
 compliance_status, material_used, warranty_expiry, maintenance_priority, risk_level, internal_code)
VALUES
(3, 103, 'Security Camera', '2023-11-01', '2024-11-01', 'SecureVision Ltd', 3003, 780.50, 1.0, 10,
 'Lens cleaning and firmware update', '2023-11-02', '2023-11-02', 60, 'Compliant', 'Lens, Firmware', '2025-03-30','Low','Low','BRC-003');

--------------------------------------------------------------------
-- Employee training modules
CREATE TABLE employee_training_module
(
    module_id                INTEGER PRIMARY KEY,
    module_name              TEXT NOT NULL,
    description              TEXT,
    category                 TEXT,
    duration_minutes        INTEGER,
    max_participants         INTEGER,
    start_date               DATE,
    end_date                 DATE,
    trainer_id               INTEGER,
    trainer_name             TEXT,
    location                 TEXT,
    is_mandatory            BOOLEAN,
    version                  TEXT,
    language                 TEXT,
    created_at               DATE,
    updated_at               DATE,
    certification_required  BOOLEAN,
    compliance_id            INTEGER,
    cost                     REAL,
    skill_area               TEXT,
    feedback_score           REAL
);

INSERT INTO employee_training_module
(module_id, module_name, description, category, duration_minutes, max_participants,
 start_date, end_date, trainer_id, trainer_name, location, is_mandatory, version,
 language, created_at, updated_at, certification_required, compliance_id, cost,
 skill_area, feedback_score)
VALUES
(101, 'Anti‑Money Laundering Basics', 'Introductory AML compliance training', 'Compliance', 90,
 25, '2023-06-01', '2023-06-01', 2001, 'Laura Smith', 'Room A1', TRUE, 'v1.0',
 'English', '2023-05-20', '2023-05-20', TRUE, 5001, 150.00, 'Risk Management', 4.7);

INSERT INTO employee_training_module
(module_id, module_name, description, category, duration_minutes, max_participants,
 start_date, end_date, trainer_id, trainer_name, location, is_mandatory, version,
 language, created_at, updated_at, certification_required, compliance_id, cost,
 skill_area, feedback_score)
VALUES
(102, 'Advanced Data Analytics', 'Deep dive into data modeling techniques', 'Technical', 180,
 20, '2023-07-15', '2023-07-16', 2002, 'Mark Johnson', 'Lab B2', FALSE, 'v2.1',
 'English', '2023-07-01', '2023-07-01', FALSE, 5002, 300.00, 'Data Science', 4.2);

INSERT INTO employee_training_module
(module_id, module_name, description, category, duration_minutes, max_participants,
 start_date, end_date, trainer_id, trainer_name, location, is_mandatory, version,
 language, created_at, updated_at, certification_required, compliance_id, cost,
 skill_area, feedback_score)
VALUES
(103, 'Customer Service Excellence', 'Improving client interaction skills', 'Soft Skills', 120,
 30, '2023-08-10', '2023-08-10', 2003, 'Sofia Lee', 'Room C3', TRUE, 'v1.3',
 'English', '2023-07-25', '2023-07-25', FALSE, 5003, 100.00, 'Customer Relations', 4.8);

--------------------------------------------------------------------
-- Digital asset inventory
CREATE TABLE digital_asset_inventory
(
    asset_id                 INTEGER PRIMARY KEY,
    asset_type               TEXT NOT NULL,
    asset_name               TEXT NOT NULL,
    owner_id                 INTEGER NOT NULL,
    storage_location         TEXT NOT NULL,
    file_path                TEXT,
    file_size_mb             REAL,
    checksum                 TEXT,
    created_date             DATE,
    last_accessed            DATE,
    encryption_status        TEXT,
    access_level             TEXT,
    retention_policy         TEXT,
    compliance_tag           TEXT,
    version_number           INTEGER,
    format                   TEXT,
    description              TEXT,
    associated_project       TEXT,
    risk_classification      TEXT,
    retention_years          INTEGER,
    last_audit_date          DATE
);

INSERT INTO digital_asset_inventory
(asset_id, asset_type, asset_name, owner_id, storage_location, file_path, file_size_mb,
 checksum, created_date, last_accessed, encryption_status, access_level,
 retention_policy, compliance_tag, version_number, format, description,
 associated_project, risk_classification, retention_years, last_audit_date)
VALUES
(1001, 'Document', 'RiskAssessment2023.pdf', 301, 'VaultA', '/vaultA/ra2023.pdf', 2.4,
 'a1b2c3d4e5', '2023-01-15', '2023-12-01', 'AES256', 'Confidential',
 '7Year', 'FIN-RISK', 1, 'PDF', 'Annual risk assessment report', 'RiskProjectX', 'High', 7, '2023-11-20');

INSERT INTO digital_asset_inventory
(asset_id, asset_type, asset_name, owner_id, storage_location, file_path, file_size_mb,
 checksum, created_date, last_accessed, encryption_status, access_level,
 retention_policy, compliance_tag, version_number, format, description,
 associated_project, risk_classification, retention_years, last_audit_date)
VALUES
(1002, 'Image', 'BranchFacade_Jan.png', 302, 'MediaStore', '/media/branchJan.png', 5.1,
 'f6g7h8i9j0', '2023-02-01', '2023-12-02', 'None', 'Public',
 'Indefinite', 'MARKETING', 3, 'PNG', 'Front view of branch captured in January', 'BrandRefresh2023', 'Low', 0, '2023-12-01');

INSERT INTO digital_asset_inventory
(asset_id, asset_type, asset_name, owner_id, storage_location, file_path, file_size_mb,
 checksum, created_date, last_accessed, encryption_status, access_level,
 retention_policy, compliance_tag, version_number, format, description,
 associated_project, risk_classification, retention_years, last_audit_date)
VALUES
(1003, 'Video', 'TrainingModule_Security.mp4', 303, 'TrainingVault', '/training/security.mp4', 250.0,
 'k1l2m3n4o5', '2023-03-10', '2023-11-30', 'AES128', 'Restricted',
 '5Year', 'HR-TRAINING', 2, 'MP4', 'Security awareness training video', 'EmployeeOnboarding', 'Medium', 5, '2023-11-15');

--------------------------------------------------------------------
-- Environmental sensor station metadata
CREATE TABLE environmental_sensor_station
(
    station_id               INTEGER PRIMARY KEY,
    station_name             TEXT NOT NULL,
    latitude                 REAL NOT NULL,
    longitude                REAL NOT NULL,
    elevation_m              REAL,
    install_date             DATE,
    sensor_type              TEXT,
    manufacturer             TEXT,
    model_number             TEXT,
    firmware_version         TEXT,
    calibration_date         DATE,
    calibration_due          DATE,
    data_endpoint            TEXT,
    battery_capacity_mah     INTEGER,
    power_source             TEXT,
    maintenance_interval_days INTEGER,
    last_maintenance_date    DATE,
    status                   TEXT,
    region_code              TEXT,
    jurisdiction             TEXT,
    notes                    TEXT
);

INSERT INTO environmental_sensor_station
(station_id, station_name, latitude, longitude, elevation_m, install_date, sensor_type,
 manufacturer, model_number, firmware_version, calibration_date, calibration_due,
 data_endpoint, battery_capacity_mah, power_source, maintenance_interval_days,
 last_maintenance_date, status, region_code, jurisdiction, notes)
VALUES
(501, 'NorthPark_Station01', 40.7128, -74.0060, 15.2, '2022-09-15', 'AirQuality',
 'EnviroSense', 'AQ-200', 'v3.4.1', '2023-06-01', '2024-06-01',
 'https://data.example.com/northpark01', 5000, 'Solar', 180,
 '2023-06-02', 'Active', 'NY', 'CityOfNewYork', 'Mounted on rooftop');

INSERT INTO environmental_sensor_station
(station_id, station_name, latitude, longitude, elevation_m, install_date, sensor_type,
 manufacturer, model_number, firmware_version, calibration_date, calibration_due,
 data_endpoint, battery_capacity_mah, power_source, maintenance_interval_days,
 last_maintenance_date, status, region_code, jurisdiction, notes)
VALUES
(502, 'RiverSide_Station02', 34.0522, -118.2437, 5.5, '2023-01-20', 'WaterLevel',
 'HydroTech', 'WL-500', 'v2.0.0', '2023-07-10', '2024-07-10',
 'https://data.example.com/riverside02', 3000, 'Mains', 365,
 '2023-07-11', 'Active', 'CA', 'LosAngelesCounty', 'Near river bend');

INSERT INTO environmental_sensor_station
(station_id, station_name, latitude, longitude, elevation_m, install_date, sensor_type,
 manufacturer, model_number, firmware_version, calibration_date, calibration_due,
 data_endpoint, battery_capacity_mah, power_source, maintenance_interval_days,
 last_maintenance_date, status, region_code, jurisdiction, notes)
VALUES
(503, 'MountainPeak_Station03', 39.7392, -104.9903, 2100, '2021-05-05', 'Temperature',
 'ClimaPro', 'TP-1000', 'v1.7.3', '2022-12-15', '2023-12-15',
 'https://data.example.com/mountain03', 8000, 'Wind', 730,
 '2022-12-16', 'Inactive', 'CO', 'DenverMetro', 'Station temporarily offline for upgrades');

--------------------------------------------------------------------
-- Supply chain shipment plan
CREATE TABLE supply_chain_shipment_plan
(
    plan_id                  INTEGER PRIMARY KEY,
    shipment_number          TEXT NOT NULL,
    origin_warehouse_id      INTEGER NOT NULL,
    destination_warehouse_id INTEGER NOT NULL,
    expected_departure       DATE,
    expected_arrival         DATE,
    carrier_name             TEXT,
    carrier_contact          TEXT,
    transport_mode           TEXT,
    cargo_type               TEXT,
    total_weight_kg          REAL,
    volume_cubic_m           REAL,
    handling_instructions    TEXT,
    insurance_coverage_amount REAL,
    customs_clearance_needed BOOLEAN,
    priority_level           TEXT,
    created_by_user          TEXT,
    approval_status          TEXT,
    budget_code              TEXT,
    notes                    TEXT,
    created_at               DATE
);

INSERT INTO supply_chain_shipment_plan
(plan_id, shipment_number, origin_warehouse_id, destination_warehouse_id,
 expected_departure, expected_arrival, carrier_name, carrier_contact,
 transport_mode, cargo_type, total_weight_kg, volume_cubic_m,
 handling_instructions, insurance_coverage_amount, customs_clearance_needed,
 priority_level, created_by_user, approval_status, budget_code, notes, created_at)
VALUES
(2001, 'SHP-0001', 12, 34, '2023-09-01', '2023-09-05', 'FastFreight Ltd', '555-1234',
 'Truck', 'Cash', 12.5, 0.04, 'Handle with care - fragile', 15000.00, FALSE,
 'High', 'jdoe', 'Approved', 'BC-101', 'Urgent cash delivery', '2023-08-20');

INSERT INTO supply_chain_shipment_plan
(plan_id, shipment_number, origin_warehouse_id, destination_warehouse_id,
 expected_departure, expected_arrival, carrier_name, carrier_contact,
 transport_mode, cargo_type, total_weight_kg, volume_cubic_m,
 handling_instructions, insurance_coverage_amount, customs_clearance_needed,
 priority_level, created_by_user, approval_status, budget_code, notes, created_at)
VALUES
(2002, 'SHP-0002', 7, 19, '2023-09-10', '2023-09-15', 'Oceanic Shipping', '555-9876',
 'Sea', 'Electronics', 8500.0, 45.2, 'No stacking, keep dry', 250000.00, TRUE,
 'Medium', 'asmith', 'Pending', 'BC-202', 'Requires customs documentation', '2023-09-01');

INSERT INTO supply_chain_shipment_plan
(plan_id, shipment_number, origin_warehouse_id, destination_warehouse_id,
 expected_departure, expected_arrival, carrier_name, carrier_contact,
 transport_mode, cargo_type, total_weight_kg, volume_cubic_m,
 handling_instructions, insurance_coverage_amount, customs_clearance_needed,
 priority_level, created_by_user, approval_status, budget_code, notes, created_at)
VALUES
(2003, 'SHP-0003', 5, 28, '2023-10-01', '2023-10-03', 'AeroAir Cargo', '555-2222',
 'Air', 'Documents', 1.2, 0.01, 'Priority handling', 5000.00, FALSE,
 'High', 'mbrown', 'Approved', 'BC-303', 'Legal documents for merger', '2023-09-15');

--------------------------------------------------------------------
-- Regulatory report summary
CREATE TABLE regulatory_report_summary
(
    report_id                INTEGER PRIMARY KEY,
    report_type              TEXT NOT NULL,
    reporting_period_start   DATE,
    reporting_period_end     DATE,
    submitted_date           DATE,
    regulatory_body          TEXT,
    compliance_score         REAL,
    findings_count           INTEGER,
    high_risk_findings       INTEGER,
    medium_risk_findings     INTEGER,
    low_risk_findings        INTEGER,
    corrective_actions_taken INTEGER,
    pending_actions          INTEGER,
    responsible_officer      TEXT,
    department               TEXT,
    version                  TEXT,
    generated_by_system      TEXT,
    file_reference           TEXT,
    notes                    TEXT,
    status                   TEXT
);

INSERT INTO regulatory_report_summary
(report_id, report_type, reporting_period_start, reporting_period_end, submitted_date,
 regulatory_body, compliance_score, findings_count, high_risk_findings,
 medium_risk_findings, low_risk_findings, corrective_actions_taken,
 pending_actions, responsible_officer, department, version,
 generated_by_system, file_reference, notes, status)
VALUES
(301, 'AML Annual', '2022-01-01', '2022-12-31', '2023-02-15',
 'FinReg Authority', 92.5, 5, 0, 2, 3, 5, 0, 'Laura Smith', 'Compliance', 'v2.0',
 'ReportEngine', 'AML2022.pdf', 'All findings resolved', 'Closed');

INSERT INTO regulatory_report_summary
(report_id, report_type, reporting_period_start, reporting_period_end, submitted_date,
 regulatory_body, compliance_score, findings_count, high_risk_findings,
 medium_risk_findings, low_risk_findings, corrective_actions_taken,
 pending_actions, responsible_officer, department, version,
 generated_by_system, file_reference, notes, status)
VALUES
(302, 'Liquidity Stress Test', '2023-Q1', '2023-Q1', '2023-04-20',
 'Central Bank', 78.0, 12, 3, 5, 4, 9, 3, 'Mark Johnson', 'RiskManagement', 'v1.5',
 'StressEngine', 'LST_Q1_2023.pdf', 'Pending actions on high risk items', 'Open');

INSERT INTO regulatory_report_summary
(report_id, report_type, reporting_period_start, reporting_period_end, submitted_date,
 regulatory_body, compliance_score, findings_count, high_risk_findings,
 medium_risk_findings, low_risk_findings, corrective_actions_taken,
 pending_actions, responsible_officer, department, version,
 generated_by_system, file_reference, notes, status)
VALUES
(303, 'Cybersecurity Audit', '2023-01-01', '2023-06-30', '2023-07-10',
 'CyberSec Agency', 85.3, 8, 1, 2, 5, 7, 1, 'Sofia Lee', 'ITSecurity', 'v3.1',
 'SecAuditTool', 'CyberAudit_H1_2023.pdf', 'One pending medium‑risk item', 'Open');

--------------------------------------------------------------------
-- Marketing channel performance
CREATE TABLE marketing_channel_performance
(
    channel_id               INTEGER PRIMARY KEY,
    channel_name             TEXT NOT NULL,
    campaign_id              INTEGER,
    start_date               DATE,
    end_date                 DATE,
    impressions              INTEGER,
    clicks                   INTEGER,
    conversions              INTEGER,
    conversion_rate          REAL,
    cost_per_click           REAL,
    cost_per_conversion      REAL,
    total_spend              REAL,
    revenue_generated        REAL,
    roi_percent              REAL,
    target_audience          TEXT,
    geographic_region        TEXT,
    device_type              TEXT,
    ad_format                TEXT,
    creative_id              TEXT,
    status                   TEXT,
    notes                    TEXT
);

INSERT INTO marketing_channel_performance
(channel_id, channel_name, campaign_id, start_date, end_date, impressions,
 clicks, conversions, conversion_rate, cost_per_click, cost_per_conversion,
 total_spend, revenue_generated, roi_percent, target_audience,
 geographic_region, device_type, ad_format, creative_id, status, notes)
VALUES
(1, 'SocialMedia_FB', 4001, '2023-05-01', '2023-05-31', 250000, 8200, 540,
 0.0658, 0.45, 12.34, 3690.00, 14520.00, 293.5, 'YoungAdults', 'NorthAmerica',
 'Mobile', 'Video', 'CRTV001', 'Completed', 'Strong performance');

INSERT INTO marketing_channel_performance
(channel_id, channel_name, campaign_id, start_date, end_date, impressions,
 clicks, conversions, conversion_rate, cost_per_click, cost_per_conversion,
 total_spend, revenue_generated, roi_percent, target_audience,
 geographic_region, device_type, ad_format, creative_id, status, notes)
VALUES
(2, 'SearchEngine_Google', 4002, '2023-06-01', '2023-06-30', 180000, 9500, 720,
 0.0758, 0.60, 9.58, 5700.00, 21200.00, 272.8, 'Professionals', 'Europe',
 'Desktop', 'Text', 'CRTS002', 'Completed', 'High click‑through rate');

INSERT INTO marketing_channel_performance
(channel_id, channel_name, campaign_id, start_date, end_date, impressions,
 clicks, conversions, conversion_rate, cost_per_click, cost_per_conversion,
 total_spend, revenue_generated, roi_percent, target_audience,
 geographic_region, device_type, ad_format, creative_id, status, notes)
VALUES
(3, 'Email_Newsletter', 4003, '2023-04-15', '2023-05-15', 50000, 3400, 210,
 0.0618, 0.22, 15.24, 748.00, 3200.00, 327.5, 'ExistingCustomers', 'Global',
 'Mixed', 'HTML', 'CRTE003', 'Completed', 'Good conversion from loyal base');

--------------------------------------------------------------------
-- Fleet vehicle maintenance schedule
CREATE TABLE fleet_vehicle_maintenance_schedule
(
    schedule_id              INTEGER PRIMARY KEY,
    vehicle_id               INTEGER NOT NULL,
    maintenance_type         TEXT NOT NULL,
    scheduled_date           DATE,
    expected_duration_hours  REAL,
    service_center_id        INTEGER,
    technician_id            INTEGER,
    parts_required           TEXT,
    estimated_cost           REAL,
    mileage_at_service       INTEGER,
    last_service_mileage     INTEGER,
    next_service_mileage     INTEGER,
    warranty_covered         BOOLEAN,
    approval_status          TEXT,
    created_by               TEXT,
    created_at               DATE,
    updated_at               DATE,
    priority                 TEXT,
    notes                    TEXT,
    compliance_check         BOOLEAN
);

INSERT INTO fleet_vehicle_maintenance_schedule
(schedule_id, vehicle_id, maintenance_type, scheduled_date, expected_duration_hours,
 service_center_id, technician_id, parts_required, estimated_cost, mileage_at_service,
 last_service_mileage, next_service_mileage, warranty_covered, approval_status,
 created_by, created_at, updated_at, priority, notes, compliance_check)
VALUES
(1010, 5501, 'Oil Change', '2023-09-10', 2.0, 301, 78, 'Oil Filter, Engine Oil', 85.00,
 45200, 43000, 48000, TRUE, 'Approved', 'fleet_manager', '2023-08-20', '2023-08-20',
 'Medium', 'Standard service', TRUE);

INSERT INTO fleet_vehicle_maintenance_schedule
(schedule_id, vehicle_id, maintenance_type, scheduled_date, expected_duration_hours,
 service_center_id, technician_id, parts_required, estimated_cost, mileage_at_service,
 last_service_mileage, next_service_mileage, warranty_covered, approval_status,
 created_by, created_at, updated_at, priority, notes, compliance_check)
VALUES
(1011, 5502, 'Brake Inspection', '2023-09-15', 3.5, 302, 83, 'Brake Pads, Rotors', 210.00,
 78000, 75000, 83000, FALSE, 'Pending', 'fleet_manager', '2023-08-22', '2023-08-22',
 'High', 'Brake wear observed', FALSE);

INSERT INTO fleet_vehicle_maintenance_schedule
(schedule_id, vehicle_id, maintenance_type, scheduled_date, expected_duration_hours,
 service_center_id, technician_id, parts_required, estimated_cost, mileage_at_service,
 last_service_mileage, next_service_mileage, warranty_covered, approval_status,
 created_by, created_at, updated_at, priority, notes, compliance_check)
VALUES
(1012, 5503, 'Tire Rotation', '2023-09-20', 1.5, 301, 90, 'None', 45.00,
 61000, 59000, 65000, TRUE, 'Approved', 'fleet_manager', '2023-08-25', '2023-08-25',
 'Low', 'Routine rotation', TRUE);

--------------------------------------------------------------------
-- Customer loyalty activity
CREATE TABLE customer_loyalty_activity
(
    activity_id              INTEGER PRIMARY KEY,
    customer_id              INTEGER NOT NULL,
    loyalty_program_id       INTEGER NOT NULL,
    activity_type            TEXT NOT NULL,
    activity_date            DATE,
    points_earned            INTEGER,
    points_redeemed          INTEGER,
    transaction_id           INTEGER,
    description              TEXT,
    status                   TEXT,
    campaign_id              INTEGER,
    channel                  TEXT,
    store_id                 INTEGER,
    staff_id                 INTEGER,
    location                 TEXT,
    device_used              TEXT,
    tier_before              TEXT,
    tier_after               TEXT,
    expiry_date              DATE,
    notes                    TEXT,
    created_at               DATE
);

INSERT INTO customer_loyalty_activity
(activity_id, customer_id, loyalty_program_id, activity_type, activity_date,
 points_earned, points_redeemed, transaction_id, description, status,
 campaign_id, channel, store_id, staff_id, location, device_used,
 tier_before, tier_after, expiry_date, notes, created_at)
VALUES
(9001, 12001, 10, 'Purchase', '2023-08-12', 150, 0, 80001, 'Grocery purchase', 'Confirmed',
 3001, 'InStore', 101, 55, 'Downtown', 'POS', 'Silver', 'Gold', '2024-08-12',
 'First gold upgrade', '2023-08-12');

INSERT INTO customer_loyalty_activity
(activity_id, customer_id, loyalty_program_id, activity_type, activity_date,
 points_earned, points_redeemed, transaction_id, description, status,
 campaign_id, channel, store_id, staff_id, location, device_used,
 tier_before, tier_after, expiry_date, notes, created_at)
VALUES
(9002, 12002, 10, 'Redemption', '2023-08-15', 0, 200, 80002, 'Reward voucher redemption', 'Processed',
 3002, 'Online', 0, 0, 'Website', 'Web', 'Gold', 'Platinum', '2024-08-15',
 'Achieved platinum status', '2023-08-15');

INSERT INTO customer_loyalty_activity
(activity_id, customer_id, loyalty_program_id, activity_type, activity_date,
 points_earned, points_redeemed, transaction_id, description, status,
 campaign_id, channel, store_id, staff_id, location, device_used,
 tier_before, tier_after, expiry_date, notes, created_at)
VALUES
(9003, 12003, 10, 'Referral', '2023-08-18', 100, 0, NULL, 'Referred a friend', 'Pending',
 3003, 'MobileApp', 0, 0, 'Mobile', 'App', 'Bronze', 'Silver', '2024-08-18',
 'Referral bonus pending', '2023-08-18');

--------------------------------------------------------------------
-- Branch security device log
CREATE TABLE branch_security_device_log
(
    log_id                   INTEGER PRIMARY KEY,
    device_id                INTEGER NOT NULL,
    device_type              TEXT NOT NULL,
    branch_id                INTEGER NOT NULL,
    event_timestamp          DATETIME NOT NULL,
    event_type               TEXT NOT NULL,
    severity                 TEXT,
    description              TEXT,
    resolved_flag            BOOLEAN,
    resolved_timestamp       DATETIME,
    technician_id            INTEGER,
    firmware_version         TEXT,
    ip_address               TEXT,
    mac_address              TEXT,
    battery_level_percent    REAL,
    signal_strength_db       REAL,
    last_maintenance_date    DATE,
    configuration_version    TEXT,
    alert_code               TEXT,
    notes                    TEXT,
    created_at               DATETIME
);

INSERT INTO branch_security_device_log
(log_id, device_id, device_type, branch_id, event_timestamp, event_type,
 severity, description, resolved_flag, resolved_timestamp, technician_id,
 firmware_version, ip_address, mac_address, battery_level_percent,
 signal_strength_db, last_maintenance_date, configuration_version,
 alert_code, notes, created_at)
VALUES
(40001, 7001, 'CCTV', 101, '2023-08-20 14:35:00', 'MotionDetected',
 'Medium', 'Unexpected movement in lobby', FALSE, NULL, NULL,
 'v2.3.1', '192.168.10.25', '00:1A:2B:3C:4D:5E', 87.5,
 -65.0, '2023-07-15', 'cfg-202307', 'ALRT-001', 'Awaiting review',
 '2023-08-20 14:36:00');

INSERT INTO branch_security_device_log
(log_id, device_id, device_type, branch_id, event_timestamp, event_type,
 severity, description, resolved_flag, resolved_timestamp, technician_id,
 firmware_version, ip_address, mac_address, battery_level_percent,
 signal_strength_db, last_maintenance_date, configuration_version,
 alert_code, notes, created_at)
VALUES
(40002, 7002, 'DoorSensor', 102, '2023-08-22 09:05:00', 'DoorForcedOpen',
 'High', 'Forced entry detected at rear door', TRUE, '2023-08-22 09:45:00', 84,
 'v1.9.0', '192.168.12.30', '00:1B:2C:3D:4E:5F', 92.0,
 -58.0, '2023-06-30', 'cfg-202306', 'ALRT-005', 'Incident logged and police notified',
 '2023-08-22 09:06:00');

INSERT INTO branch_security_device_log
(log_id, device_id, device_type, branch_id, event_timestamp, event_type,
 severity, description, resolved_flag, resolved_timestamp, technician_id,
 firmware_version, ip_address, mac_address, battery_level_percent,
 signal_strength_db, last_maintenance_date, configuration_version,
 alert_code, notes, created_at)
VALUES
(40003, 7003, 'AlarmPanel', 103, '2023-08-25 23:12:00', 'AlarmTriggered',
 'Critical', 'Fire alarm activation in vault area', TRUE, '2023-08-26 00:10:00', 89,
 'v3.0.0', '192.168.14.45', '00:1C:2D:3E:4F:5A', 100.0,
 -45.0, '2023-05-20', 'cfg-202305', 'ALRT-010', 'Fire department responded, false alarm',
 '2023-08-25 23:13:00');