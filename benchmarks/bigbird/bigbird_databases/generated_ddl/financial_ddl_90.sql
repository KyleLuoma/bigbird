-- Branch security device information
CREATE TABLE branch_security_device
(
    device_id                INTEGER PRIMARY KEY,
    branch_id                INTEGER NOT NULL,
    device_type              TEXT NOT NULL,
    install_date             DATE NOT NULL,
    firmware_version         TEXT NOT NULL,
    status                   TEXT NOT NULL,
    last_maintenance_date    DATE,
    ip_address               TEXT,
    mac_address              TEXT,
    serial_number            TEXT,
    manufacturer             TEXT,
    model                    TEXT,
    location_description     TEXT,
    alert_threshold          INTEGER,
    battery_level            INTEGER,
    connectivity_status      TEXT,
    last_alert_time          DATE,
    firmware_update_required TEXT,
    warranty_expiration      DATE,
    notes                    TEXT
);

INSERT INTO branch_security_device VALUES (1, 101, 'CCTV', '2022-03-15', 'v1.2.3', 'active', '2023-01-10', '192.168.10.5', 'AA:BB:CC:DD:EE:01', 'SN001', 'SecureCam', 'Cam Model X', 'Lobby ceiling', 5, 85, 'online', '2023-07-01', 'no', '2025-03-15', 'Initial installation');
INSERT INTO branch_security_device VALUES (2, 102, 'DoorLock', '2021-11-20', 'v2.0.1', 'active', '2023-02-18', '192.168.12.7', 'AA:BB:CC:DD:EE:02', 'SN002', 'LockCo', 'Lock Pro', 'Front entrance', 3, 95, 'online', '2023-08-05', 'yes', '2024-11-20', 'Firmware update scheduled');
INSERT INTO branch_security_device VALUES (3, 103, 'AlarmPanel', '2020-06-05', 'v3.5.0', 'inactive', '2022-12-01', '192.168.14.9', 'AA:BB:CC:DD:EE:03', 'SN003', 'AlarmInc', 'Panel 9000', 'Basement area', 7, 70, 'offline', '2023-05-22', 'yes', '2023-06-05', 'Device decommissioned');

-- Environmental sensor station metadata
CREATE TABLE environmental_sensor_station
(
    station_id                     INTEGER PRIMARY KEY,
    district_id                    INTEGER NOT NULL,
    station_name                   TEXT NOT NULL,
    latitude                       REAL NOT NULL,
    longitude                      REAL NOT NULL,
    elevation                      REAL,
    install_date                   DATE NOT NULL,
    sensor_type                    TEXT NOT NULL,
    measurement_interval_minutes  INTEGER NOT NULL,
    last_calibration_date          DATE,
    status                         TEXT NOT NULL,
    owner_agency                   TEXT,
    hardware_version               TEXT,
    software_version               TEXT,
    power_source                   TEXT,
    battery_capacity               INTEGER,
    data_retention_days           INTEGER,
    last_data_timestamp            DATE,
    firmware_version               TEXT,
    connectivity_type              TEXT,
    notes                          TEXT
);

INSERT INTO environmental_sensor_station VALUES (1001, 1, 'Station Alpha', 45.1234, -122.5678, 250.5, '2021-04-12', 'AirQuality', 15, '2023-01-20', 'active', 'EPA', 'HW1.0', 'SW2.3', 'Solar', 2000, 365, '2023-09-15', 'v1.4', 'cellular', 'Initial deployment');
INSERT INTO environmental_sensor_station VALUES (1002, 2, 'Station Beta', 46.9876, -123.3456, 180.0, '2020-09-30', 'WaterLevel', 30, '2022-11-05', 'active', 'WaterDept', 'HW2.1', 'SW3.0', 'Mains', 0, 730, '2023-09-14', 'v2.1', 'wifi', 'Near river');
INSERT INTO environmental_sensor_station VALUES (1003, 3, 'Station Gamma', 44.5555, -121.2222, 300.0, '2019-02-20', 'SoilMoisture', 60, '2021-07-12', 'maintenance', 'Agriculture', 'HW3.3', 'SW1.5', 'Battery', 1500, 180, '2023-09-13', 'v3.0', 'satellite', 'Remote field');

-- Fleet vehicle maintenance schedule
CREATE TABLE fleet_vehicle_maintenance_schedule
(
    schedule_id                 INTEGER PRIMARY KEY,
    vehicle_id                  INTEGER NOT NULL,
    maintenance_type            TEXT NOT NULL,
    scheduled_date              DATE NOT NULL,
    due_odometer                INTEGER,
    service_center_id           INTEGER,
    technician_id               INTEGER,
    estimated_cost              REAL,
    parts_required              TEXT,
    status                      TEXT,
    priority                    TEXT,
    created_timestamp           DATE,
    updated_timestamp           DATE,
    notes                       TEXT,
    last_completed_date         DATE,
    mileage_at_service          INTEGER,
    warranty_covered            TEXT,
    service_order_number        TEXT,
    approval_status             TEXT,
    maintenance_category        TEXT,
    recurring_interval_days     INTEGER
);

INSERT INTO fleet_vehicle_maintenance_schedule VALUES (5001, 2001, 'OilChange', '2023-10-01', 25000, 301, 401, 120.00, 'OilFilter', 'scheduled', 'high', '2023-08-15', '2023-08-15', 'First oil change of year', NULL, NULL, 'yes', 'SO12345', 'pending', 'Preventive', 180);
INSERT INTO fleet_vehicle_maintenance_schedule VALUES (5002, 2002, 'BrakeInspection', '2023-09-20', 40000, 302, 402, 250.00, 'BrakePads,Rotors', 'in_progress', 'medium', '2023-07-10', '2023-08-01', 'Check wear levels', NULL, NULL, 'no', 'SO12346', 'approved', 'Safety', 365);
INSERT INTO fleet_vehicle_maintenance_schedule VALUES (5003, 2003, 'TireRotation', '2023-11-05', 15000, 303, 403, 80.00, 'N/A', 'completed', 'low', '2023-06-01', '2023-11-05', 'Routine rotation', '2023-11-05', 15500, 'yes', 'SO12347', 'approved', 'Preventive', 180);

-- Digital wallet activity log
CREATE TABLE digital_wallet_activity_log
(
    log_id               INTEGER PRIMARY KEY,
    wallet_id            INTEGER NOT NULL,
    transaction_id       INTEGER NOT NULL,
    transaction_date     DATE NOT NULL,
    transaction_type     TEXT NOT NULL,
    amount               REAL NOT NULL,
    currency             TEXT NOT NULL,
    merchant_name        TEXT,
    merchant_category    TEXT,
    status               TEXT,
    device_id            INTEGER,
    ip_address           TEXT,
    location_city        TEXT,
    location_country     TEXT,
    exchange_rate        REAL,
    fee_amount           REAL,
    fee_currency         TEXT,
    settlement_date      DATE,
    description          TEXT,
    channel              TEXT,
    risk_score           INTEGER,
    notes                TEXT
);

INSERT INTO digital_wallet_activity_log VALUES (9001, 3001, 8001, '2023-09-10', 'purchase', 45.99, 'USD', 'CoffeeShop', 'Food', 'completed', 501, '203.0.113.5', 'Seattle', 'USA', 1.0, 0.30, 'USD', '2023-09-11', 'Latte purchase', 'mobile_app', 12, 'No issues');
INSERT INTO digital_wallet_activity_log VALUES (9002, 3002, 8002, '2023-09-12', 'transfer', 200.00, 'EUR', 'JohnDoe', 'PersonToPerson', 'pending', 502, '198.51.100.7', 'Berlin', 'Germany', 1.08, 2.00, 'EUR', NULL, 'Rent payment', 'web', 20, 'Awaiting confirmation');
INSERT INTO digital_wallet_activity_log VALUES (9003, 3003, 8003, '2023-09-14', 'refund', 15.00, 'USD', 'OnlineStore', 'Retail', 'completed', 503, '192.0.2.9', 'Austin', 'USA', 1.0, 0.00, 'USD', '2023-09-15', 'Order #12345 return', 'mobile_app', 5, 'Refund processed');

-- Marketing campaign budget allocation
CREATE TABLE marketing_campaign_budget
(
    budget_id               INTEGER PRIMARY KEY,
    campaign_id             INTEGER NOT NULL,
    fiscal_year             INTEGER NOT NULL,
    quarter                 TEXT NOT NULL,
    allocated_amount        REAL NOT NULL,
    spent_amount            REAL NOT NULL,
    remaining_amount        REAL NOT NULL,
    currency                TEXT NOT NULL,
    approval_date           DATE,
    approved_by             TEXT,
    cost_center             TEXT,
    campaign_manager        TEXT,
    channel                 TEXT,
    target_audience         TEXT,
    expected_roi            REAL,
    actual_roi              REAL,
    notes                   TEXT,
    created_at              DATE,
    updated_at              DATE,
    status                  TEXT,
    budget_revision_number  INTEGER
);

INSERT INTO marketing_campaign_budget VALUES (11001, 4001, 2023, 'Q3', 50000.00, 32000.00, 18000.00, 'USD', '2023-06-15', 'AliceSmith', 'CC101', 'BobJones', 'Digital', 'Adults 25-40', 1.8, 2.0, 'On track', '2023-04-01', '2023-08-20', 'active', 1);
INSERT INTO marketing_campaign_budget VALUES (11002, 4002, 2023, 'Q3', 75000.00, 60000.00, 15000.00, 'USD', '2023-06-20', 'CarolLee', 'CC102', 'DianaRoss', 'TV', 'Families', 2.0, 1.9, 'Slight overspend', '2023-04-05', '2023-08-22', 'active', 2);
INSERT INTO marketing_campaign_budget VALUES (11003, 4003, 2023, 'Q4', 60000.00, 0.00, 60000.00, 'USD', NULL, NULL, 'CC103', 'EvanKim', 'Print', 'Seniors', 1.5, NULL, 'Planning stage', '2023-07-01', '2023-07-01', 'planned', 0);

-- Regulatory report summary
CREATE TABLE regulatory_report_summary
(
    report_id                 INTEGER PRIMARY KEY,
    report_type               TEXT NOT NULL,
    reporting_period_start    DATE NOT NULL,
    reporting_period_end      DATE NOT NULL,
    submission_date           DATE NOT NULL,
    regulator_name            TEXT NOT NULL,
    status                    TEXT NOT NULL,
    total_findings            INTEGER,
    critical_findings         INTEGER,
    major_findings            INTEGER,
    minor_findings            INTEGER,
    corrective_actions_taken  INTEGER,
    pending_actions           INTEGER,
    responsible_department    TEXT,
    report_owner              TEXT,
    notes                     TEXT,
    created_timestamp         DATE,
    updated_timestamp         DATE,
    version                   TEXT,
    approval_status           TEXT
);

INSERT INTO regulatory_report_summary VALUES (21001, 'Financial', '2022-01-01', '2022-12-31', '2023-02-15', 'SEC', 'submitted', 12, 2, 3, 7, 8, 4, 'Compliance', 'JohnDoe', 'Yearly financial compliance report', '2023-01-10', '2023-02-14', 'v1.0', 'approved');
INSERT INTO regulatory_report_summary VALUES (21002, 'Environmental', '2022-04-01', '2022-09-30', '2023-01-20', 'EPA', 'review', 5, 0, 2, 3, 3, 2, 'Sustainability', 'JaneSmith', 'Mid-year environmental impact', '2022-12-01', '2023-01-19', 'v1.1', 'pending');
INSERT INTO regulatory_report_summary VALUES (21003, 'DataPrivacy', '2022-07-01', '2022-12-31', '2023-03-05', 'GDPR', 'draft', 0, 0, 0, 0, 0, 0, 'IT Security', 'MikeBrown', 'Draft GDPR compliance assessment', '2023-02-01', '2023-02-28', 'v0.9', 'in_review');

-- Supplier contract detail
CREATE TABLE supplier_contract_detail
(
    contract_id               INTEGER PRIMARY KEY,
    supplier_id               INTEGER NOT NULL,
    contract_start_date       DATE NOT NULL,
    contract_end_date         DATE NOT NULL,
    total_value               REAL NOT NULL,
    currency                  TEXT NOT NULL,
    payment_terms             TEXT,
    service_level             TEXT,
    renewal_option            TEXT,
    termination_notice_days   INTEGER,
    governing_law             TEXT,
    primary_contact_name      TEXT,
    primary_contact_email     TEXT,
    primary_contact_phone     TEXT,
    contract_status           TEXT,
    signed_by                 TEXT,
    signed_date               DATE,
    amendment_count           INTEGER,
    last_amendment_date       DATE,
    notes                     TEXT
);

INSERT INTO supplier_contract_detail VALUES (31001, 501, '2021-01-01', '2023-12-31', 250000.00, 'USD', 'Net30', 'Gold', 'auto', 60, 'NY Law', 'LauraWhite', 'laura.white@example.com', '555-1234', 'active', 'CFO', '2020-12-15', 2, '2023-01-10', 'Extended for two years');
INSERT INTO supplier_contract_detail VALUES (31002, 502, '2022-06-15', '2025-06-14', 150000.00, 'EUR', 'Net45', 'Silver', 'manual', 90, 'EU Law', 'PeterGreen', 'peter.green@example.com', '555-5678', 'pending', 'LegalDept', '2022-05-30', 0, NULL, 'Awaiting final signature');
INSERT INTO supplier_contract_detail VALUES (31003, 503, '2020-03-01', '2022-02-28', 80000.00, 'USD', 'Advance', 'Bronze', 'none', 30, 'CA Law', 'SusanBlack', 'susan.black@example.com', '555-9012', 'expired', 'VP Ops', '2020-02-20', 1, '2021-12-01', 'Contract fulfilled and closed');

-- Energy consumption log
CREATE TABLE energy_consumption_log
(
    record_id               INTEGER PRIMARY KEY,
    facility_id             INTEGER NOT NULL,
    meter_id                INTEGER NOT NULL,
    reading_date            DATE NOT NULL,
    consumption_kwh         REAL NOT NULL,
    peak_demand_kw          REAL,
    off_peak_consumption_kwh REAL,
    tariff_category         TEXT,
    cost_usd                REAL,
    carbon_emission_kg      REAL,
    verified_by             TEXT,
    verification_date       DATE,
    reading_status          TEXT,
    notes                   TEXT,
    created_at              DATE,
    updated_at              DATE,
    data_source             TEXT,
    billing_cycle           TEXT,
    adjustment_amount       REAL,
    adjustment_reason       TEXT
);

INSERT INTO energy_consumption_log VALUES (41001, 601, 701, '2023-08-31', 1200.5, 350.0, 800.0, 'Commercial', 150.75, 950.0, 'Ana', '2023-09-02', 'verified', 'Monthly meter read', '2023-09-01', '2023-09-02', 'Automated', '2023Q3', 0.0, 'None');
INSERT INTO energy_consumption_log VALUES (41002, 602, 702, '2023-08-31', 850.0, 200.0, 600.0, 'Industrial', 110.00, 680.0, 'Ben', '2023-09-02', 'verified', 'Adjusted for estimated loss', '2023-09-01', '2023-09-02', 'Manual', '2023Q3', -15.0, 'Meter correction');
INSERT INTO energy_consumption_log VALUES (41003, 603, 703, '2023-08-31', 450.0, 120.0, 350.0, 'Residential', 60.00, 360.0, 'Cara', '2023-09-02', 'pending', 'Awaiting verification', '2023-09-01', '2023-09-01', 'Automated', '2023Q3', 0.0, 'None');

-- Public transport route schedule
CREATE TABLE public_transport_route_schedule
(
    schedule_id               INTEGER PRIMARY KEY,
    route_id                  INTEGER NOT NULL,
    service_day               TEXT NOT NULL,
    departure_time            TEXT NOT NULL,
    arrival_time              TEXT NOT NULL,
    stop_sequence             INTEGER NOT NULL,
    stop_id                   INTEGER NOT NULL,
    distance_from_start_km    REAL NOT NULL,
    expected_travel_time_min  INTEGER,
    vehicle_type              TEXT,
    driver_id                 INTEGER,
    status                    TEXT,
    notes                     TEXT,
    created_timestamp         DATE,
    updated_timestamp         DATE,
    service_status            TEXT,
    fare_zone                 TEXT,
    accessibility_features    TEXT,
    wifi_available            TEXT,
    air_conditioning         TEXT,
    delay_probability         REAL
);

INSERT INTO public_transport_route_schedule VALUES (52001, 801, 'Weekday', '08:00', '08:15', 1, 1001, 0.0, 15, 'Bus', 901, 'on_time', 'First stop downtown', '2023-09-01', '2023-09-01', 'active', 'Zone A', 'wheelchair', 'yes', 'yes', 0.05);
INSERT INTO public_transport_route_schedule VALUES (52002, 801, 'Weekday', '08:15', '08:30', 2, 1002, 2.5, 15, 'Bus', 902, 'on_time', 'Midtown stop', '2023-09-01', '2023-09-01', 'active', 'Zone A', 'wheelchair', 'yes', 'yes', 0.07);
INSERT INTO public_transport_route_schedule VALUES (52003, 801, 'Weekend', '09:00', '09:20', 1, 1001, 0.0, 20, 'Bus', 903, 'delayed', 'Weekend schedule', '2023-09-02', '2023-09-02', 'active', 'Zone A', 'wheelchair', 'yes', 'yes', 0.15);

-- Research project milestone
CREATE TABLE research_project_milestone
(
    milestone_id          INTEGER PRIMARY KEY,
    project_id            INTEGER NOT NULL,
    milestone_name        TEXT NOT NULL,
    target_date           DATE NOT NULL,
    actual_date           DATE,
    status                TEXT,
    responsible_team      TEXT,
    budget_allocated      REAL,
    budget_spent          REAL,
    percentage_complete   REAL,
    risk_level            TEXT,
    dependencies          TEXT,
    deliverables          TEXT,
    notes                 TEXT,
    created_at            DATE,
    updated_at            DATE,
    milestone_type        TEXT,
    priority              TEXT,
    quality_metric        TEXT,
    reviewer              TEXT,
    approval_status       TEXT
);

INSERT INTO research_project_milestone VALUES (61001, 901, 'Literature Review', '2023-05-01', '2023-04-28', 'completed', 'Team Alpha', 15000.00, 14800.00, 100.0, 'low', 'None', 'Review document', 'Completed ahead of schedule', '2023-03-01', '2023-04-28', 'Research', 'high', 'citation_count', 'DrSmith', 'approved');
INSERT INTO research_project_milestone VALUES (61002, 901, 'Data Collection', '2023-08-15', NULL, 'in_progress', 'Team Beta', 30000.00, 12000.00, 40.0, 'medium', 'Literature Review', 'Dataset v1', 'On track', '2023-04-01', '2023-07-20', 'Research', 'high', 'data_quality_score', 'DrJones', 'pending');
INSERT INTO research_project_milestone VALUES (61003, 901, 'Final Report', '2023-12-01', NULL, 'planned', 'Team Gamma', 20000.00, 0.00, 0.0, 'high', 'Data Collection', 'Report draft', 'Awaiting data completion', '2023-04-01', '2023-04-01', 'Research', 'medium', 'peer_review_score', 'DrLee', 'not_started');