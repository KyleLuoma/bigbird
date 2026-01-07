-- Facility maintenance records
CREATE TABLE facility_maintenance
(
    facility_id           INTEGER   PRIMARY KEY,
    facility_name         TEXT      NOT NULL,
    address_line1         TEXT      NOT NULL,
    address_line2         TEXT,
    city                  TEXT      NOT NULL,
    state                 TEXT      NOT NULL,
    zip_code              TEXT      NOT NULL,
    maintenance_type      TEXT      NOT NULL,
    schedule_date         DATE      NOT NULL,
    last_service_date     DATE,
    service_provider      TEXT,
    contract_number       INTEGER,
    cost_estimate         REAL,
    priority_level        INTEGER,
    status                TEXT,
    notes                 TEXT,
    square_feet           INTEGER,
    floor_count           INTEGER,
    hvac_system_type      TEXT,
    fire_safety_status    TEXT,
    elevator_count        INTEGER
);

INSERT INTO facility_maintenance VALUES (1, 'MainOffice', '123 Main St', '', 'Metropolis', 'NY', '10001', 'HVAC', '2024-03-15', '2023-12-01', 'CoolAirCo', 101, 15000.00, 1, 'Scheduled', 'Quarterly check', 25000, 5, 'Central', 'Compliant', 4);
INSERT INTO facility_maintenance VALUES (2, 'WarehouseA', '456 Depot Rd', 'Unit 12', 'Gotham', 'IL', '60607', 'Electrical', '2024-04-10', NULL, 'VoltWorks', 102, 8000.00, 2, 'Pending', 'Inspect backup generators', 50000, 1, 'None', 'Pending Review', 0);
INSERT INTO facility_maintenance VALUES (3, 'RetailStoreX', '789 Market Ave', '', 'Star City', 'CA', '90002', 'Plumbing', '2024-02-20', '2023-11-20', 'PipePro', 103, 4200.00, 3, 'Completed', 'Replaced main valve', 12000, 2, 'None', 'Compliant', 2);

-- Environmental monitoring stations
CREATE TABLE environmental_monitoring
(
    station_id            INTEGER   PRIMARY KEY,
    station_name          TEXT      NOT NULL,
    latitude              REAL      NOT NULL,
    longitude             REAL      NOT NULL,
    installation_date     DATE      NOT NULL,
    sensor_type           TEXT      NOT NULL,
    measurement_unit      TEXT      NOT NULL,
    calibration_date      DATE,
    last_maintenance_date DATE,
    status                TEXT,
    data_logging_interval INTEGER,
    battery_level         INTEGER,
    firmware_version      TEXT,
    network_id            INTEGER,
    owner_department      TEXT,
    alert_threshold_low  REAL,
    alert_threshold_high REAL,
    location_description  TEXT,
    elevation_meters      REAL,
    maintenance_contract  TEXT,
    notes                 TEXT
);

INSERT INTO environmental_monitoring VALUES (1, 'StationAlpha', 40.7128, -74.0060, '2022-01-15', 'AirQuality', 'PPM', '2023-12-01', '2023-12-01', 'Active', 60, 85, 'v1.2.3', 201, 'Health', 10.0, 200.0, 'Rooftop downtown', 15.5, 'ContractA', '');
INSERT INTO environmental_monitoring VALUES (2, 'StationBeta', 34.0522, -118.2437, '2021-06-30', 'Noise', 'dB', '2023-11-15', '2023-11-15', 'Active', 30, 70, 'v1.1.0', 202, 'Safety', 30.0, 120.0, 'Near highway', 100.0, 'ContractB', '');
INSERT INTO environmental_monitoring VALUES (3, 'StationGamma', 51.5074, -0.1278, '2023-03-20', 'Temperature', 'Celsius', '2023-12-20', NULL, 'Inactive', 15, 50, 'v2.0.0', 203, 'Facilities', -5.0, 35.0, 'Warehouse basement', 5.0, 'ContractC', 'Awaiting activation');

-- Fleet management records
CREATE TABLE fleet_management
(
    vehicle_id            INTEGER   PRIMARY KEY,
    vin                   TEXT      NOT NULL,
    make                  TEXT      NOT NULL,
    model                 TEXT      NOT NULL,
    year                  INTEGER   NOT NULL,
    license_plate        TEXT      NOT NULL,
    registration_state   TEXT      NOT NULL,
    acquisition_date      DATE      NOT NULL,
    mileage               INTEGER,
    fuel_type             TEXT,
    engine_capacity_cc    INTEGER,
    seating_capacity      INTEGER,
    gps_device_id         INTEGER,
    insurance_policy_num  TEXT,
    insurance_expiry      DATE,
    maintenance_due_km    INTEGER,
    last_service_date     DATE,
    assigned_driver_id    INTEGER,
    department_allocated  TEXT,
    status                TEXT,
    depreciation_rate     REAL,
    lease_term_months     INTEGER,
    notes                 TEXT
);

INSERT INTO fleet_management VALUES (1, '1HGCM82633A004352', 'Toyota', 'Camry', 2020, 'ABC123', 'NY', '2020-02-10', 25000, 'Gasoline', 2500, 5, 301, 'INS1001', '2024-09-30', 30000, '2023-12-01', 501, 'Logistics', 'Active', 0.15, 48, '');
INSERT INTO fleet_management VALUES (2, '2FTRX18W1XCA12345', 'Ford', 'F-150', 2019, 'XYZ789', 'IL', '2019-05-22', 40000, 'Diesel', 3500, 3, 302, 'INS1002', '2024-06-15', 50000, '2023-11-20', 502, 'Maintenance', 'Active', 0.18, 60, '');
INSERT INTO fleet_management VALUES (3, 'JH4KA9650MC012345', 'Honda', 'Accord', 2021, 'LMN456', 'CA', '2021-08-01', 12000, 'Hybrid', 2000, 5, 303, 'INS1003', '2025-01-10', 35000, '2023-10-05', 503, 'Sales', 'Active', 0.12, 36, '');

-- Supply chain logistics events
CREATE TABLE supply_chain_logistics
(
    event_id               INTEGER   PRIMARY KEY,
    event_type             TEXT      NOT NULL,
    event_timestamp        DATETIME  NOT NULL,
    location_code          TEXT      NOT NULL,
    carrier_name           TEXT,
    transport_mode         TEXT,
    container_id           TEXT,
    seal_number            TEXT,
    weight_kg              REAL,
    volume_m3              REAL,
    product_category       TEXT,
    sku_number             TEXT,
    quantity_units         INTEGER,
    temperature_celsius    REAL,
    humidity_percent       REAL,
    customs_status         TEXT,
    duty_paid              REAL,
    estimated_arrival      DATE,
    actual_arrival         DATE,
    delay_reason           TEXT,
    notes                  TEXT,
    processed_by_user_id   INTEGER,
    verification_code      TEXT,
    compliance_flag        INTEGER
);

INSERT INTO supply_chain_logistics VALUES (1, 'Load', '2024-01-10 08:30:00', 'WH01', 'FastShip', 'Truck', 'CONT12345', 'SEAL001', 12000.5, 45.2, 'Electronics', 'SKU1001', 500, 22.0, 55.0, 'Cleared', 1500.00, '2024-01-12', '2024-01-12', '', 'Initial load', 1001, 'VER123', 1);
INSERT INTO supply_chain_logistics VALUES (2, 'Transit', '2024-01-11 14:45:00', 'ENR02', 'RailLine', 'Rail', 'CONT12345', 'SEAL001', 12000.5, 45.2, 'Electronics', 'SKU1001', 500, 22.0, 55.0, 'InTransit', NULL, NULL, NULL, 'Delay due to weather', 'Weather delay', 1002, 'VER124', 0);
INSERT INTO supply_chain_logistics VALUES (3, 'Unload', '2024-01-13 09:15:00', 'DC05', 'FastShip', 'Truck', 'CONT12345', 'SEAL001', 12000.5, 45.2, 'Electronics', 'SKU1001', 500, 22.0, 55.0, 'Cleared', 1500.00, '2024-01-13', '2024-01-13', '', 'Delivered to distribution center', 1003, 'VER125', 1);

-- Inventory audit logs
CREATE TABLE inventory_audit
(
    audit_id               INTEGER   PRIMARY KEY,
    audit_date             DATE      NOT NULL,
    audited_by_user_id     INTEGER   NOT NULL,
    warehouse_code         TEXT      NOT NULL,
    sku_number             TEXT      NOT NULL,
    product_description    TEXT,
    expected_quantity      INTEGER   NOT NULL,
    counted_quantity       INTEGER   NOT NULL,
    variance               INTEGER,
    variance_reason        TEXT,
    unit_cost              REAL,
    total_expected_value   REAL,
    total_counted_value    REAL,
    adjustment_made        TEXT,
    approved_by_manager_id INTEGER,
    approval_status        TEXT,
    comments               TEXT,
    discrepancy_flag       INTEGER,
    cycle_count_number    INTEGER,
    audit_type             TEXT,
    shift                  TEXT,
    temperature_control   TEXT,
    humidity_control       TEXT,
    security_level         TEXT,
    notes                  TEXT
);

INSERT INTO inventory_audit VALUES (1, '2024-01-15', 2001, 'WH01', 'SKU1001', 'Smartphone Model X', 500, 498, -2, 'Damaged during transit', 250.00, 125000.00, 124500.00, 'Write‑off 2 units', 3001, 'Approved', '', 1, 7, 'Full', 'Day', 'Controlled', 'Controlled', 'High', '');
INSERT INTO inventory_audit VALUES (2, '2024-01-16', 2002, 'WH02', 'SKU2005', 'Laptop Model Y', 300, 300, 0, NULL, 800.00, 240000.00, 240000.00, 'None', 3002, 'Approved', '', 0, 8, 'Cycle', 'Night', 'Controlled', 'Controlled', 'Medium', '');
INSERT INTO inventory_audit VALUES (3, '2024-01-17', 2003, 'WH03', 'SKU3009', 'Tablet Model Z', 150, 152, 2, 'Count error', 150.00, 22500.00, 22800.00, 'Add 2 units', 3003, 'Pending', 'Review count procedure', 1, 9, 'Spot', 'Evening', 'Uncontrolled', 'Uncontrolled', 'Low', '');

-- Energy consumption records
CREATE TABLE energy_consumption
(
    record_id               INTEGER   PRIMARY KEY,
    facility_id             INTEGER   NOT NULL,
    reporting_month         TEXT      NOT NULL,
    electricity_kwh         REAL,
    natural_gas_therms      REAL,
    water_gallons           REAL,
    steam_pounds            REAL,
    solar_generated_kwh     REAL,
    renewable_percentage    REAL,
    peak_demand_kw          REAL,
    off_peak_consumption_kwh REAL,
    carbon_emission_tons    REAL,
    meter_reading_start     REAL,
    meter_reading_end       REAL,
    reading_date_start      DATE,
    reading_date_end        DATE,
    verification_status     TEXT,
    auditor_id              INTEGER,
    notes                   TEXT,
    created_timestamp       DATETIME,
    modified_timestamp      DATETIME,
    data_source             TEXT,
    calibration_factor      REAL,
    adjusted_consumption_kwh REAL,
    comments                TEXT,
    compliance_flag         INTEGER
);

INSERT INTO energy_consumption VALUES (1, 1, '2023-12', 25000.5, 1200.0, 150000.0, 0.0, 5000.0, 20.0, 1500.0, 20000.0, 12.5, 10000.0, 12000.0, '2023-12-01', '2023-12-31', 'Verified', 4001, '', '2024-01-05 10:00:00', '2024-01-05 10:00:00', 'Meter', 1.0, 26000.5, '', 1);
INSERT INTO energy_consumption VALUES (2, 2, '2023-12', 18000.0, 900.0, 120000.0, 0.0, 3000.0, 18.0, 1300.0, 15000.0, 9.8, 8000.0, 9500.0, '2023-12-01', '2023-12-31', 'Pending', 4002, '', '2024-01-06 11:15:00', '2024-01-06 11:15:00', 'Meter', 0.98, 19044.0, '', 0);
INSERT INTO energy_consumption VALUES (3, 3, '2023-12', 30000.0, 1500.0, 200000.0, 0.0, 8000.0, 22.0, 1800.0, 25000.0, 15.0, 15000.0, 18000.0, '2023-12-01', '2023-12-31', 'Verified', 4003, '', '2024-01-07 09:45:00', '2024-01-07 09:45:00', 'Meter', 1.02, 30600.0, '', 1);

-- Customer feedback entries
CREATE TABLE customer_feedback
(
    feedback_id            INTEGER   PRIMARY KEY,
    customer_id            INTEGER   NOT NULL,
    feedback_date          DATE      NOT NULL,
    channel                TEXT      NOT NULL,
    rating_score           INTEGER   NOT NULL,
    comments               TEXT,
    product_sku            TEXT,
    service_type           TEXT,
    response_required      TEXT,
    response_deadline      DATE,
    responded_by_user_id   INTEGER,
    response_status        TEXT,
    follow_up_needed       INTEGER,
    follow_up_date         DATE,
    survey_version         TEXT,
    language_preference    TEXT,
    sentiment_score        REAL,
    NPS_score              INTEGER,
    escalation_level       INTEGER,
    assigned_department    TEXT,
    ticket_number          TEXT,
    resolution_time_hours  REAL,
    root_cause_category    TEXT,
    created_timestamp      DATETIME,
    modified_timestamp     DATETIME,
    notes                  TEXT,
    compliance_checked     INTEGER,
    archived_flag          INTEGER
);

INSERT INTO customer_feedback VALUES (1, 9001, '2024-01-10', 'Email', 4, 'Quick service but app glitches', 'SKU1001', 'Support', 'Yes', '2024-01-15', 1101, 'Pending', 1, '2024-01-20', 'v2', 'English', 0.75, 8, 2, 'Support', 'TCK1001', 48.0, 'SoftwareBug', '2024-01-10 08:00:00', '2024-01-10 08:00:00', '', 1, 0);
INSERT INTO customer_feedback VALUES (2, 9002, '2024-01-12', 'Phone', 5, 'Excellent experience', 'SKU2005', 'Sales', 'No', NULL, NULL, 'Resolved', 0, NULL, 'v2', 'Spanish', 0.95, 10, 0, 'Sales', 'TCK1002', 12.0, 'N/A', '2024-01-12 09:30:00', '2024-01-12 09:30:00', '', 1, 0);
INSERT INTO customer_feedback VALUES (3, 9003, '2024-01-14', 'WebForm', 2, 'Delayed shipment', 'SKU3009', 'Logistics', 'Yes', '2024-01-18', 1102, 'InProgress', 1, '2024-01-25', 'v2', 'French', 0.30, 2, 3, 'Logistics', 'TCK1003', 72.0, 'CarrierDelay', '2024-01-14 11:45:00', '2024-01-14 11:45:00', '', 0, 0);

-- Vendor contract information
CREATE TABLE vendor_contracts
(
    contract_id           INTEGER   PRIMARY KEY,
    vendor_id             INTEGER   NOT NULL,
    contract_number       TEXT      NOT NULL,
    start_date            DATE      NOT NULL,
    end_date              DATE      NOT NULL,
    contract_type         TEXT,
    total_value_usd       REAL,
    payment_terms_days    INTEGER,
    service_level_agreement TEXT,
    renewal_option        TEXT,
    termination_notice_days INTEGER,
    primary_contact_name  TEXT,
    primary_contact_email TEXT,
    primary_contact_phone TEXT,
    secondary_contact_name TEXT,
    secondary_contact_email TEXT,
    secondary_contact_phone TEXT,
    performance_metric_1  REAL,
    performance_metric_2  REAL,
    compliance_requirements TEXT,
    audit_frequency_months INTEGER,
    insurance_required    TEXT,
    insurance_provider    TEXT,
    insurance_policy_number TEXT,
    liability_limit_usd   REAL,
    confidentiality_clause TEXT,
    dispute_resolution_method TEXT,
    jurisdiction          TEXT,
    created_timestamp     DATETIME,
    modified_timestamp    DATETIME,
    notes                 TEXT,
    active_flag           INTEGER
);

INSERT INTO vendor_contracts VALUES (1, 5001, 'VC-001', '2022-01-01', '2025-12-31', 'SoftwareMaintenance', 250000.00, 30, '99.9% uptime', 'AutoRenew', 60, 'John Doe', 'john.doe@example.com', '5551234567', 'Jane Smith', 'jane.smith@example.com', '5559876543', 99.5, 98.0, 'ISO27001', 12, 'Yes', 'ABC Insurance', 'POL12345', 5000000.00, 'Strict', 'Arbitration', 'NY', '2024-01-05 09:00:00', '2024-01-05 09:00:00', '', 1);
INSERT INTO vendor_contracts VALUES (2, 5002, 'VC-002', '2023-06-15', '2026-06-14', 'Logistics', 150000.00, 45, 'On‑time delivery 95%', 'ManualRenew', 90, 'Mike Brown', 'mike.brown@example.com', '5553216549', 'Sara Lee', 'sara.lee@example.com', '5556543210', 96.0, 94.5, 'C‑TPAT', 6, 'No', NULL, NULL, NULL, 3000000.00, 'Standard', 'Mediation', 'CA', '2024-01-06 10:15:00', '2024-01-06 10:15:00', '', 1);
INSERT INTO vendor_contracts VALUES (3, 5003, 'VC-003', '2021-09-01', '2024-08-31', 'FacilityCleaning', 80000.00, 30, 'Daily cleaning compliance', 'AutoRenew', 30, 'Emily Green', 'emily.green@example.com', '5557778888', 'Tom White', 'tom.white@example.com', '5558887777', 100.0, 100.0, 'OSHA', 12, 'Yes', 'XYZ Insurance', 'POL67890', 2000000.00, 'Confidential', 'Negotiation', 'TX', '2024-01-07 11:30:00', '2024-01-07 11:30:00', '', 0);

-- Training program catalog
CREATE TABLE training_programs
(
    program_id            INTEGER   PRIMARY KEY,
    program_code          TEXT      NOT NULL,
    title                 TEXT      NOT NULL,
    description           TEXT,
    department            TEXT,
    delivery_method       TEXT,
    duration_hours        INTEGER,
    cost_usd              REAL,
    certification_required TEXT,
    max_participants      INTEGER,
    enrollment_start_date DATE,
    enrollment_end_date   DATE,
    start_date            DATE,
    end_date              DATE,
    instructor_id         INTEGER,
    instructor_name       TEXT,
    instructor_email      TEXT,
    prerequisite_program_id INTEGER,
    language              TEXT,
    assessment_type       TEXT,
    passing_score         REAL,
    materials_provided    TEXT,
    online_access_link    TEXT,
    venue_location        TEXT,
    equipment_needed      TEXT,
    created_timestamp     DATETIME,
    modified_timestamp    DATETIME,
    notes                 TEXT,
    active_flag           INTEGER,
    compliance_training   INTEGER,
    recurring_schedule    TEXT,
    max_attempts          INTEGER,
    feedback_required     INTEGER,
    evaluation_method     TEXT,
    training_category     TEXT
);

INSERT INTO training_programs VALUES (1, 'TP-001', 'Data Security Fundamentals', 'Basic principles of data protection', 'IT', 'Online', 8, 0.00, 'Yes', 30, '2024-02-01', '2024-02-15', '2024-03-01', '2024-03-01', 6001, 'Laura Mitchell', 'laura.mitchell@example.com', NULL, 'English', 'Quiz', 80.0, 'Slides,Video', 'https://training.example.com/dsf', NULL, NULL, '2024-01-10 08:00:00', '2024-01-10 08:00:00', '', 1, 1, 'Quarterly', 3, 1, 'OnlineSurvey', 'Security');
INSERT INTO training_programs VALUES (2, 'TP-002', 'Advanced Excel', 'In‑depth Excel functions and macros', 'Finance', 'Classroom', 16, 250.00, 'No', 20, '2024-03-01', '2024-03-10', '2024-04-05', '2024-04-06', 6002, 'Mark Spencer', 'mark.spencer@example.com', 1, 'English', 'Practical', 85.0, 'Workbook,Handout', NULL, 'Room 302', 'PCs with Excel', '2024-01-12 09:30:00', '2024-01-12 09:30:00', '', 1, 0, 'Biannual', 2, 1, 'ProjectBased', 'Productivity');
INSERT INTO training_programs VALUES (3, 'TP-003', 'Leadership Essentials', 'Core leadership skills for managers', 'HR', 'Hybrid', 12, 500.00, 'Yes', 25, '2024-04-01', '2024-04-20', '2024-05-10', '2024-05-11', 6003, 'Susan Lee', 'susan.lee@example.com', NULL, 'English', 'Presentation', 90.0, 'Manual,CaseStudies', 'https://training.example.com/le', 'Conference Hall A', 'Projector,Whiteboard', '2024-01-15 10:45:00', '2024-01-15 10:45:00', '', 1, 1, 'Annual', 1, 1, 'PeerReview', 'Management');

-- Security incident reports
CREATE TABLE security_incidents
(
    incident_id           INTEGER   PRIMARY KEY,
    reported_date         DATE      NOT NULL,
    reporter_user_id      INTEGER   NOT NULL,
    incident_type         TEXT      NOT NULL,
    severity_level        INTEGER,
    description           TEXT,
    affected_system       TEXT,
    ip_address            TEXT,
    hostname              TEXT,
    location              TEXT,
    detection_method      TEXT,
    response_action       TEXT,
    mitigation_status     TEXT,
    root_cause_analysis   TEXT,
    time_to_detect_minutes INTEGER,
    time_to_resolve_minutes INTEGER,
    impact_assessment     TEXT,
    data_compromised      INTEGER,
    regulatory_notification_sent TEXT,
    notification_date     DATE,
    follow_up_required    INTEGER,
    follow_up_due_date    DATE,
    assigned_team_id      INTEGER,
    resolution_summary    TEXT,
    lessons_learned       TEXT,
    created_timestamp     DATETIME,
    modified_timestamp    DATETIME,
    status                TEXT,
    escalation_level      INTEGER,
    compliance_flag       INTEGER,
    external_reported     INTEGER,
    external_report_id    TEXT,
    remediation_cost_usd  REAL,
    comments              TEXT,
    archived_flag         INTEGER
);

INSERT INTO security_incidents VALUES (1, '2024-01-08', 7001, 'Phishing', 3, 'User clicked malicious link', 'EmailServer', '192.168.1.45', 'mail01', 'Headquarters', 'UserReport', 'PasswordReset', 'Resolved', 'User error', 15, 120, 'Low', 0, 'Yes', '2024-01-09', 1, '2024-01-15', 8001, 'User educated, no data loss', 'Update phishing training', '2024-01-08 08:20:00', '2024-01-10 09:00:00', 'Closed', 2, 1, 0, NULL, 500.00, '', 0);
INSERT INTO security_incidents VALUES (2, '2024-01-12', 7002, 'Malware', 4, 'Ransomware detected on workstation', 'Workstation12', '10.0.0.12', 'ws12', 'BranchOffice', 'EndpointDetection', 'IsolateSystem', 'InProgress', 'Pending analysis', 30, NULL, 'High', 1, 'Yes', '2024-01-13', 1, '2024-01-25', 8002, NULL, NULL, '2024-01-12 14:30:00', '2024-01-14 10:00:00', 'Open', 3, 1, 1, 'IR-2024-001', 25000.00, '', 0);
INSERT INTO security_incidents VALUES (3, '2024-01-20', 7003, 'UnauthorizedAccess', 5, 'Attempted breach of database', 'DBServer3', '172.16.5.23', 'db3', 'DataCenter', 'IDSAlert', 'BlockIP', 'Resolved', 'Misconfigured firewall rule', 5, 45, 'Critical', 0, 'No', NULL, 0, NULL, 8003, 'Rule corrected, logs reviewed', 'Improve firewall monitoring', '2024-01-20 11:15:00', '2024-01-21 08:45:00', 'Closed', 4, 1, 0, NULL, 1200.00, '', 0);