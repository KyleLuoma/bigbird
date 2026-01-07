-- Branch utility usage data
CREATE TABLE branch_utility_usage
(
    usage_id               INTEGER PRIMARY KEY,
    branch_id              INTEGER NOT NULL,
    utility_type           TEXT NOT NULL,
    meter_id               TEXT NOT NULL,
    reading_date           DATE NOT NULL,
    reading_value          REAL NOT NULL,
    unit                   TEXT NOT NULL,
    peak_demand            REAL,
    off_peak_demand        REAL,
    billing_cycle          TEXT,
    cost                   REAL,
    provider_name          TEXT,
    service_status         TEXT,
    last_maintenance       DATE,
    notes                  TEXT,
    created_at             DATE,
    updated_at             DATE,
    energy_star_rating     INTEGER,
    carbon_offset          REAL,
    voltage                REAL,
    current                REAL
);

INSERT INTO branch_utility_usage VALUES (1, 101, 'Electricity', 'MTR001', '2023-01-15', 1250.75, 'kWh', 150.0, 80.0, '2023Q1', 300.50, 'PowerCo', 'Active', '2022-12-01', 'Monthly reading', '2023-01-15', '2023-01-15', 4, 12.5, 240.0, 10.5);
INSERT INTO branch_utility_usage VALUES (2, 102, 'Water', 'MTR002', '2023-01-16', 4500.00, 'Gallons', NULL, NULL, '2023Q1', 150.00, 'AquaSupply', 'Active', '2022-11-20', NULL, '2023-01-16', '2023-01-16', 5, 8.0, 120.0, 5.0);
INSERT INTO branch_utility_usage VALUES (3, 103, 'Gas', 'MTR003', '2023-01-17', 800.25, 'Therms', 95.0, 60.0, '2023Q1', 200.75, 'GasCorp', 'Inactive', '2022-10-15', 'Meter replacement pending', '2023-01-17', '2023-01-17', 3, 10.0, 220.0, 8.2);

-- Environmental sensor station readings
CREATE TABLE environmental_sensor_station_readings
(
    reading_id          INTEGER PRIMARY KEY,
    station_id          INTEGER NOT NULL,
    sensor_type         TEXT NOT NULL,
    reading_timestamp   DATE NOT NULL,
    value               REAL NOT NULL,
    unit                TEXT NOT NULL,
    battery_level       REAL,
    signal_strength     REAL,
    firmware_version    TEXT,
    calibration_date    DATE,
    status              TEXT,
    latitude            REAL,
    longitude           REAL,
    altitude            REAL,
    notes               TEXT,
    created_at          DATE,
    updated_at          DATE,
    temperature         REAL,
    humidity            REAL,
    pressure            REAL,
    uv_index            REAL
);

INSERT INTO environmental_sensor_station_readings VALUES (1001, 10, 'Temp', '2023-01-20', 22.5, 'C', 95.0, -70.0, 'v1.2', '2022-12-01', 'OK', 40.7128, -74.0060, 10.0, NULL, '2023-01-20', '2023-01-20', 22.5, 55.0, 1013.2, 3.0);
INSERT INTO environmental_sensor_station_readings VALUES (1002, 11, 'Humidity', '2023-01-21', 48.0, '%', 88.0, -68.5, 'v1.3', '2022-12-15', 'OK', 34.0522, -118.2437, 15.0, 'Stable reading', '2023-01-21', '2023-01-21', 18.2, 48.0, 1012.8, 2.5);
INSERT INTO environmental_sensor_station_readings VALUES (1003, 12, 'Pressure', '2023-01-22', 1015.0, 'hPa', 90.0, -69.0, 'v1.2', '2022-11-20', 'OK', 51.5074, -0.1278, 5.0, NULL, '2023-01-22', '2023-01-22', 15.0, 60.0, 1015.0, 1.8);

-- Fleet vehicle telemetry
CREATE TABLE fleet_vehicle_telemetry
(
    telemetry_id           INTEGER PRIMARY KEY,
    vehicle_id             INTEGER NOT NULL,
    timestamp              DATE NOT NULL,
    latitude               REAL,
    longitude              REAL,
    speed                  REAL,
    engine_rpm             INTEGER,
    fuel_level             REAL,
    odometer               INTEGER,
    gear_position          TEXT,
    engine_temp            REAL,
    tire_pressure_fl       REAL,
    tire_pressure_fr       REAL,
    tire_pressure_rl       REAL,
    tire_pressure_rr       REAL,
    acceleration_x         REAL,
    acceleration_y         REAL,
    acceleration_z         REAL,
    brake_status           TEXT,
    steering_angle         REAL,
    gps_signal_strength    REAL,
    trip_id                INTEGER,
    driver_id              INTEGER
);

INSERT INTO fleet_vehicle_telemetry VALUES (5001, 2001, '2023-01-18', 40.730610, -73.935242, 45.5, 2500, 78.0, 120000, 'D', 90.0, 32.0, 32.0, 30.5, 30.5, 0.02, -0.01, 0.00, 'Released', 5.0, -65.0, 3001, 401);
INSERT INTO fleet_vehicle_telemetry VALUES (5002, 2002, '2023-01-19', 34.052235, -118.243683, 60.0, 3000, 65.5, 85000, 'N', 85.0, 31.5, 31.5, 31.0, 30.0, 0.01, 0.00, -0.02, 'Applied', 2.0, -70.0, 3002, 402);
INSERT INTO fleet_vehicle_telemetry VALUES (5003, 2003, '2023-01-20', 41.878113, -87.629799, 0.0, 900, 100.0, 50000, 'P', 80.0, 30.0, 30.0, 30.0, 0.00, 0.00, 0.00, 'Released', 0.0, -60.0, 3003, 403);

-- Supplier contract detail
CREATE TABLE supplier_contract_detail
(
    contract_id            INTEGER PRIMARY KEY,
    supplier_id            INTEGER NOT NULL,
    contract_number        TEXT NOT NULL,
    start_date             DATE NOT NULL,
    end_date               DATE NOT NULL,
    contract_value         REAL NOT NULL,
    currency               TEXT NOT NULL,
    payment_terms          TEXT,
    renewal_option         TEXT,
    notice_period          INTEGER,
    governing_law          TEXT,
    confidentiality_clause TEXT,
    performance_metric     TEXT,
    penalty_clause         TEXT,
    amendment_count        INTEGER,
    last_amendment_date    DATE,
    responsible_manager    TEXT,
    status                 TEXT,
    created_at             DATE,
    updated_at             DATE,
    contract_type          TEXT,
    scope_of_work          TEXT
);

INSERT INTO supplier_contract_detail VALUES (9001, 501, 'CNTR-2023-001', '2023-02-01', '2025-01-31', 250000.00, 'USD', 'Net30', 'Auto', 60, 'NY Law', 'Standard', 'KPIs', 'LatePenalty', 2, '2024-01-15', 'AliceSmith', 'Active', '2023-02-01', '2023-02-01', 'Supply', 'Office supplies and equipment');
INSERT INTO supplier_contract_detail VALUES (9002, 502, 'CNTR-2023-002', '2023-03-15', '2026-03-14', 500000.00, 'EUR', 'Net45', 'Manual', 90, 'EU Directive', 'High', 'SLA', 'OveragePenalty', 1, '2023-12-01', 'BobJones', 'Pending', '2023-03-15', '2023-03-15', 'Service', 'IT support services');
INSERT INTO supplier_contract_detail VALUES (9003, 503, 'CNTR-2023-003', '2023-01-01', '2024-12-31', 120000.00, 'GBP', 'Net60', 'None', 30, 'UK Law', 'Limited', 'DeliveryTime', 'QualityPenalty', 0, NULL, 'CarolLee', 'Active', '2023-01-01', '2023-01-01', 'Consulting', 'Business process consulting');

-- Digital asset transfer log
CREATE TABLE digital_asset_transfer_log
(
    transfer_id            INTEGER PRIMARY KEY,
    asset_id               INTEGER NOT NULL,
    source_system          TEXT NOT NULL,
    destination_system     TEXT NOT NULL,
    transfer_date          DATE NOT NULL,
    transfer_status        TEXT NOT NULL,
    file_name              TEXT,
    file_size              INTEGER,
    checksum               TEXT,
    transfer_method        TEXT,
    initiated_by           TEXT,
    approved_by            TEXT,
    transfer_duration_seconds INTEGER,
    error_code             INTEGER,
    error_message          TEXT,
    retry_count            INTEGER,
    priority_level         INTEGER,
    encryption_used        TEXT,
    compression_used       TEXT,
    notes                  TEXT,
    created_at             DATE,
    updated_at             DATE
);

INSERT INTO digital_asset_transfer_log VALUES (20001, 8001, 'DataLake', 'AnalyticsDB', '2023-01-10', 'Success', 'report_q1.pdf', 204800, 'ABC123DEF456', 'SFTP', 'JohnDoe', 'JaneSmith', 45, NULL, NULL, 0, 1, 'AES256', 'gzip', NULL, '2023-01-10', '2023-01-10');
INSERT INTO digital_asset_transfer_log VALUES (20002, 8002, 'CRM', 'MarketingHub', '2023-01-12', 'Failed', 'client_list.csv', 102400, 'XYZ789GHI012', 'HTTP', 'MikeBrown', 'SaraWhite', 0, 504, 'GatewayTimeout', 2, 2, 'TLS1.2', 'none', 'Retry after network fix', '2023-01-12', '2023-01-12');
INSERT INTO digital_asset_transfer_log VALUES (20003, 8003, 'HRSystem', 'Archive', '2023-01-15', 'Success', 'employee_records.zip', 512000, 'LMN456OPQ789', 'FTPS', 'EmilyGreen', 'TomBlack', 120, NULL, NULL, 0, 3, 'AES128', 'zip', 'Monthly archival', '2023-01-15', '2023-01-15');

-- Regulatory fine detail
CREATE TABLE regulatory_fine_detail
(
    fine_id                INTEGER PRIMARY KEY,
    entity_id              INTEGER NOT NULL,
    entity_type            TEXT NOT NULL,
    regulation_code        TEXT NOT NULL,
    fine_amount            REAL NOT NULL,
    currency               TEXT NOT NULL,
    issue_date             DATE NOT NULL,
    due_date               DATE NOT NULL,
    paid_date              DATE,
    status                 TEXT,
    penalty_points         INTEGER,
    enforcement_agency     TEXT,
    case_number            TEXT,
    description            TEXT,
    remedial_action        TEXT,
    appeal_deadline        DATE,
    appeal_status          TEXT,
    settlement_amount      REAL,
    settlement_date        DATE,
    notes                  TEXT,
    created_at             DATE,
    updated_at             DATE
);

INSERT INTO regulatory_fine_detail VALUES (30001, 1001, 'Branch', 'FIN-001', 15000.00, 'USD', '2023-02-01', '2023-03-01', NULL, 'Unpaid', 5, 'FinReg', 'CASE-2023-100', 'Late filing of reports', 'Submit missing reports', '2023-02-28', 'Pending', NULL, NULL, 'First notice sent', '2023-02-01', '2023-02-01');
INSERT INTO regulatory_fine_detail VALUES (30002, 2002, 'Supplier', 'ENV-045', 25000.00, 'EUR', '2023-01-15', '2023-02-15', '2023-02-10', 'Paid', 8, 'EnvAgency', 'CASE-2023-200', 'Excess emissions', 'Install scrubbers', '2023-01-31', 'N/A', 25000.00, '2023-02-10', 'Paid in full', '2023-01-15', '2023-01-15');
INSERT INTO regulatory_fine_detail VALUES (30003, 3003, 'Vendor', 'LAB-020', 5000.00, 'GBP', '2023-03-01', '2023-04-01', NULL, 'Pending', 2, 'LabReg', 'CASE-2023-300', 'Missing safety certifications', 'Obtain certifications', '2023-03-15', 'Pending', NULL, NULL, 'Awaiting response', '2023-03-01', '2023-03-01');

-- Marketing campaign budget
CREATE TABLE marketing_campaign_budget
(
    budget_id               INTEGER PRIMARY KEY,
    campaign_id             INTEGER NOT NULL,
    fiscal_year             INTEGER NOT NULL,
    allocated_amount        REAL NOT NULL,
    currency                TEXT NOT NULL,
    spent_amount            REAL,
    remaining_amount        REAL,
    approval_status         TEXT,
    approved_by             TEXT,
    approval_date           DATE,
    last_update             DATE,
    cost_center             TEXT,
    budget_owner            TEXT,
    expense_category        TEXT,
    channel                 TEXT,
    region                  TEXT,
    target_audience         TEXT,
    expected_roi            REAL,
    actual_roi              REAL,
    notes                   TEXT,
    created_at              DATE,
    updated_at              DATE
);

INSERT INTO marketing_campaign_budget VALUES (40001, 6001, 2023, 200000.00, 'USD', 120000.00, 80000.00, 'Approved', 'LauraK', '2023-01-05', '2023-02-20', 'CC01', 'MarkLee', 'Advertising', 'Digital', 'NorthAmerica', 'Adults18-35', 1.8, 1.5, NULL, '2023-01-01', '2023-02-20');
INSERT INTO marketing_campaign_budget VALUES (40002, 6002, 2023, 150000.00, 'EUR', 90000.00, 60000.00, 'Pending', 'PeterM', '2023-01-10', '2023-02-25', 'CC02', 'AnaS', 'Promotions', 'Print', 'Europe', 'Seniors65+', 2.0, NULL, 'Awaiting final approval', '2023-01-01', '2023-02-25');
INSERT INTO marketing_campaign_budget VALUES (40003, 6003, 2023, 100000.00, 'GBP', 50000.00, 50000.00, 'Approved', 'SamR', '2023-01-12', '2023-03-01', 'CC03', 'NinaD', 'Events', 'Outdoor', 'Asia', 'Youth13-25', 1.5, 1.7, 'Successful billboard campaign', '2023-01-01', '2023-03-01');

-- Clinical trial subject
CREATE TABLE clinical_trial_subject
(
    subject_id            INTEGER PRIMARY KEY,
    trial_id              INTEGER NOT NULL,
    enrollment_date       DATE NOT NULL,
    consent_given         TEXT,
    age                   INTEGER,
    gender                TEXT,
    ethnicity             TEXT,
    medical_history       TEXT,
    baseline_weight       REAL,
    baseline_height       REAL,
    baseline_blood_pressure TEXT,
    adverse_event_reported TEXT,
    current_status        TEXT,
    last_visit_date       DATE,
    next_visit_date       DATE,
    investigator_id       INTEGER,
    site_id               INTEGER,
    randomization_group   TEXT,
    dosage_mg             REAL,
    outcome_measure       TEXT,
    notes                 TEXT,
    created_at            DATE,
    updated_at            DATE
);

INSERT INTO clinical_trial_subject VALUES (7001, 8001, '2023-01-05', 'Yes', 45, 'Male', 'Caucasian', 'Hypertension', 85.0, 175.0, '130/85', 'None', 'Screening', '2023-02-01', '2023-03-01', 101, 10, 'Placebo', 0.0, 'BloodPressure', NULL, '2023-01-05', '2023-02-01');
INSERT INTO clinical_trial_subject VALUES (7002, 8001, '2023-01-07', 'Yes', 52, 'Female', 'Asian', 'Diabetes', 70.0, 160.0, '125/80', 'MildHeadache', 'Active', '2023-02-10', '2023-03-10', 101, 10, 'TreatmentA', 50.0, 'HbA1c', 'Monitoring glucose', '2023-01-07', '2023-02-10');
INSERT INTO clinical_trial_subject VALUES (7003, 8002, '2023-01-12', 'Yes', 38, 'Other', 'Hispanic', 'None', 68.0, 168.0, '120/75', 'None', 'Completed', '2023-02-20', NULL, 102, 11, 'TreatmentB', 75.0, 'Cholesterol', NULL, '2023-01-12', '2023-02-20');

-- Renewable energy farm performance
CREATE TABLE renewable_energy_farm_performance
(
    performance_id          INTEGER PRIMARY KEY,
    farm_id                 INTEGER NOT NULL,
    record_date             DATE NOT NULL,
    energy_generated_mwh    REAL,
    capacity_factor         REAL,
    availability_percent    REAL,
    downtime_minutes        INTEGER,
    maintenance_type        TEXT,
    weather_condition       TEXT,
    temperature_c           REAL,
    wind_speed_mps          REAL,
    solar_irradiance_wm2    REAL,
    net_output_mwh          REAL,
    revenue_usd             REAL,
    operational_cost_usd    REAL,
    emissions_avoided_tonnes REAL,
    grid_feed_in            INTEGER, -- 0 = false, 1 = true
    comments                TEXT,
    created_at              DATE,
    updated_at              DATE,
    reporting_period        TEXT,
    data_source             TEXT
);

INSERT INTO renewable_energy_farm_performance VALUES (9001, 1501, '2023-01-31', 1200.5, 0.45, 98.5, 60, 'Scheduled', 'Clear', 15.0, 5.2, NULL, 1150.0, 75000.00, 20000.00, 500.0, 1, 'Normal month', '2023-01-31', '2023-01-31', 'Monthly', 'SCADA');
INSERT INTO renewable_energy_farm_performance VALUES (9002, 1502, '2023-01-31', 800.0, 0.38, 95.0, 120, 'Unscheduled', 'Windy', 10.0, 12.5, NULL, 770.0, 48000.00, 15000.00, 300.0, 1, 'High wind impact', '2023-01-31', '2023-01-31', 'Monthly', 'SCADA');
INSERT INTO renewable_energy_farm_performance VALUES (9003, 1503, '2023-01-31', 600.0, 0.33, 92.0, 180, 'Maintenance', 'Cloudy', 12.0, 0.0, 450.0, 580.0, 36000.00, 12000.00, 250.0, 1, 'Solar panels cleaned', '2023-01-31', '2023-01-31', 'Monthly', 'SCADA');

-- City infrastructure project
CREATE TABLE city_infrastructure_project
(
    project_id               INTEGER PRIMARY KEY,
    project_name             TEXT NOT NULL,
    start_date               DATE NOT NULL,
    end_date                 DATE,
    budget_usd               REAL,
    status                   TEXT,
    project_manager          TEXT,
    contractor               TEXT,
    phase                    TEXT,
    milestones_completed     INTEGER,
    total_milestones         INTEGER,
    affected_areas           TEXT,
    permits_obtained         TEXT,
    environmental_impact     TEXT,
    public_feedback          TEXT,
    risk_level               TEXT,
    expected_completion_date DATE,
    actual_completion_date   DATE,
    funding_source           TEXT,
    notes                    TEXT,
    created_at               DATE,
    updated_at               DATE
);

INSERT INTO city_infrastructure_project VALUES (10001, 'River Bridge Reconstruction', '2023-02-01', NULL, 25000000.00, 'InProgress', 'KarenM', 'BuildCo', 'Construction', 3, 5, 'DowntownRiverArea', 'EnvPermit, Zoning', 'Moderate', 'Mixed', 'Medium', '2025-12-31', NULL, 'MunicipalBond', 'Bridge closure expected during peak hours', '2023-02-01', '2023-02-01');
INSERT INTO city_infrastructure_project VALUES (10002, 'Eastside Light Rail Extension', '2022-06-15', '2024-11-30', 180000000.00, 'Completed', 'LuisG', 'TransitBuilders', 'Final', 8, 8, 'EastDistrict', 'RailPermit, SafetyCert', 'Low', 'Positive', 'Low', '2024-11-30', '2024-11-28', 'StateGrant', 'Project finished ahead of schedule', '2022-06-15', '2024-11-30');
INSERT INTO city_infrastructure_project VALUES (10003, 'North Park Solar Installation', '2023-03-10', NULL, 4500000.00, 'Planning', 'AishaK', 'SolarTech', 'Design', 1, 4, 'NorthPark', 'Zoning, SolarPermit', 'Low', 'Supportive', 'Low', '2024-09-30', NULL, 'GreenFund', 'Awaiting final design approval', '2023-03-10', '2023-03-10');