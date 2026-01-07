-- Log of security‑related events occurring at bank branches
CREATE TABLE branch_security_log
(
    log_id                INTEGER PRIMARY KEY,
    branch_id             INTEGER NOT NULL,
    event_timestamp       DATE NOT NULL,
    event_type            TEXT NOT NULL,
    employee_id           INTEGER,
    device_id             INTEGER,
    description           TEXT,
    severity_level        INTEGER,
    resolved_flag         INTEGER,
    resolution_timestamp  DATE,
    incident_code         TEXT,
    camera_id             INTEGER,
    door_sensor_status   TEXT,
    alarm_triggered       INTEGER,
    access_point          TEXT,
    ip_address            TEXT,
    firmware_version      TEXT,
    vendor_name           TEXT,
    maintenance_due       DATE,
    notes                 TEXT
);

INSERT INTO branch_security_log VALUES (1, 101, '2025-03-12', 'ForcedEntry', 2001, 301, 'Window forced open', 5, 0, NULL, 'IE001', 401, 'Open', 1, 'MainEntrance', '192.168.1.10', 'v1.2.3', 'SecureCam Co', '2025-12-01', 'Initial report');
INSERT INTO branch_security_log VALUES (2, 102, '2025-04-05', 'AlarmTrigger', 2003, 305, 'Alarm triggered by motion sensor', 3, 1, '2025-04-05', 'AT045', 405, 'Closed', 1, 'BackDoor', '192.168.2.15', 'v2.0.0', 'AlarmTech Ltd', '2025-11-20', 'Resolved by security team');
INSERT INTO branch_security_log VALUES (3, 103, '2025-05-20', 'UnauthorizedAccess', 2005, 309, 'Access card used after hours', 4, 0, NULL, 'UA078', 410, 'Closed', 0, 'VaultDoor', '192.168.3.22', 'v1.5.4', 'AccessSecure Inc', '2025-10-15', 'Pending investigation');

-- Planned maintenance schedule for ATM machines
CREATE TABLE atm_maintenance_schedule
(
    schedule_id           INTEGER PRIMARY KEY,
    atm_id                INTEGER NOT NULL,
    planned_date          DATE NOT NULL,
    technician_id         INTEGER NOT NULL,
    service_type          TEXT NOT NULL,
    estimated_duration_min INTEGER,
    parts_required        TEXT,
    priority_level        INTEGER,
    status                TEXT,
    completion_date       DATE,
    cost_estimate         REAL,
    cost_actual           REAL,
    downtime_minutes      INTEGER,
    vendor_company        TEXT,
    contract_number       TEXT,
    last_service_date     DATE,
    next_due_date         DATE,
    latitude              REAL,
    longitude             REAL,
    notes                 TEXT
);

INSERT INTO atm_maintenance_schedule VALUES (1001, 5501, '2025-06-01', 3010, 'CashRefill', 30, 'Cassettes', 1, 'Scheduled', NULL, 150.00, NULL, NULL, 'ATM Services LLC', 'C-2024-88', '2025-02-15', '2025-12-15', 40.7128, -74.0060, 'First quarterly refill');
INSERT INTO atm_maintenance_schedule VALUES (1002, 5502, '2025-06-03', 3012, 'SoftwareUpdate', 45, 'Firmware v3.1', 2, 'Pending', NULL, 200.00, NULL, NULL, 'TechFix Corp', 'C-2025-12', '2025-03-20', '2025-12-20', 34.0522, -118.2437, 'Update to newest security patch');
INSERT INTO atm_maintenance_schedule VALUES (1003, 5503, '2025-06-05', 3015, 'HardwareRepair', 120, 'CardReader Module', 1, 'InProgress', NULL, 500.00, NULL, NULL, 'RepairPro Ltd', 'C-2025-33', '2025-01-10', '2025-12-10', 41.8781, -87.6298, 'Replacing faulty card reader');

-- Usage statistics for digital banking products
CREATE TABLE digital_product_usage
(
    usage_id              INTEGER PRIMARY KEY,
    product_id            INTEGER NOT NULL,
    user_id               INTEGER NOT NULL,
    session_start         DATE NOT NULL,
    session_end           DATE NOT NULL,
    device_type           TEXT,
    os_version            TEXT,
    app_version           TEXT,
    data_consumed_mb      REAL,
    clicks                INTEGER,
    pages_viewed          INTEGER,
    geographic_region     TEXT,
    network_type          TEXT,
    subscription_tier     TEXT,
    active_flag           INTEGER,
    last_update           DATE,
    avg_fps               REAL,
    crash_count           INTEGER,
    rating                INTEGER,
    feedback_text         TEXT,
    notes                 TEXT
);

INSERT INTO digital_product_usage VALUES (5001, 901, 12001, '2025-04-10', '2025-04-10', 'Mobile', 'iOS14', '3.2.1', 45.6, 120, 8, 'NorthAmerica', 'WiFi', 'Premium', 1, '2025-04-10', 58.2, 0, 5, 'Great app', 'First session');
INSERT INTO digital_product_usage VALUES (5002, 902, 12002, '2025-04-11', '2025-04-11', 'Tablet', 'Android11', '2.9.0', 78.3, 200, 12, 'Europe', '4G', 'Standard', 1, '2025-04-11', 45.0, 1, 4, 'Minor lag', 'Second session');
INSERT INTO digital_product_usage VALUES (5003, 903, 12003, '2025-04-12', '2025-04-12', 'Desktop', 'Windows10', '5.0.0', 102.5, 350, 20, 'Asia', 'Fiber', 'Enterprise', 1, '2025-04-12', 60.0, 0, 5, 'Excellent performance', 'Third session');

-- Records of third‑party API accesses by external partners
CREATE TABLE third_party_api_access
(
    access_id             INTEGER PRIMARY KEY,
    api_key               TEXT NOT NULL,
    partner_name          TEXT NOT NULL,
    access_start          DATE NOT NULL,
    access_end            DATE,
    request_limit_per_day INTEGER,
    request_count_today   INTEGER,
    status                TEXT,
    last_used             DATE,
    ip_whitelist          TEXT,
    encryption_method     TEXT,
    token_type            TEXT,
    token_expiry          DATE,
    scope                 TEXT,
    rate_limit_seconds    INTEGER,
    error_rate_percent    REAL,
    avg_response_ms       REAL,
    data_transfer_gb      REAL,
    compliance_status     TEXT,
    notes                 TEXT
);

INSERT INTO third_party_api_access VALUES (9001, 'KEY123ABC', 'FinTechPartner', '2025-01-01', NULL, 10000, 2500, 'Active', '2025-04-15', '192.0.2.1,192.0.2.2', 'TLS1.2', 'Bearer', '2025-12-31', 'read,write', 2, 0.5, 120.5, 15.2, 'Compliant', 'Initial activation');
INSERT INTO third_party_api_access VALUES (9002, 'KEY456DEF', 'DataAnalyticsCo', '2025-02-15', NULL, 5000, 4800, 'Active', '2025-04-14', '198.51.100.10', 'TLS1.2', 'Bearer', '2025-11-30', 'read', 1, 1.2, 210.0, 8.7, 'Compliant', 'Approaching limit');
INSERT INTO third_party_api_access VALUES (9003, 'KEY789GHI', 'PaymentGatewayX', '2025-03-10', '2025-09-10', 20000, 15000, 'Suspended', '2025-04-10', '203.0.113.5', 'TLS1.3', 'JWT', '2025-10-01', 'read,write,delete', 0, 0.3, 95.0, 22.0, 'NonCompliant', 'Suspended pending review');

-- Historical risk events captured by the monitoring system
CREATE TABLE risk_event_history
(
    event_id              INTEGER PRIMARY KEY,
    risk_category         TEXT NOT NULL,
    event_timestamp       DATE NOT NULL,
    severity_score        INTEGER,
    affected_system       TEXT,
    description           TEXT,
    mitigation_plan       TEXT,
    status                TEXT,
    resolved_timestamp    DATE,
    responsible_team      TEXT,
    impact_estimate_usd   REAL,
    detection_method      TEXT,
    escalation_level      INTEGER,
    root_cause            TEXT,
    logger_id             INTEGER,
    source_ip             TEXT,
    target_ip             TEXT,
    compliance_flag      INTEGER,
    regulatory_notice_sent INTEGER,
    notes                 TEXT
);

INSERT INTO risk_event_history VALUES (7001, 'Fraud', '2025-04-20', 9, 'Payments', 'Unauthorized transfer detected', 'Block account and investigate', 'Open', NULL, 'RiskOps', 250000.00, 'AnomalyDetection', 3, 'Compromised credentials', 150, '203.0.113.45', '198.51.100.22', 1, 0, 'High priority');
INSERT INTO risk_event_history VALUES (7002, 'Operational', '2025-04-22', 6, 'ATMNetwork', 'Network latency spike', 'Restart routers', 'Resolved', '2025-04-23', 'ITInfra', 50000.00, 'MonitoringAlert', 2, 'ISP congestion', 152, '192.0.2.55', '198.51.100.30', 0, 0, 'Issue cleared after maintenance');
INSERT INTO risk_event_history VALUES (7003, 'Compliance', '2025-04-25', 8, 'Reporting', 'Late regulatory filing', 'Submit missing report', 'InProgress', NULL, 'ComplianceTeam', 120000.00, 'AuditReview', 4, 'Human error', 155, '10.0.0.5', '10.0.0.10', 1, 1, 'Regulator notified');

-- Records of employee compliance training completions
CREATE TABLE compliance_training_record
(
    record_id             INTEGER PRIMARY KEY,
    employee_id           INTEGER NOT NULL,
    training_module       TEXT NOT NULL,
    completion_date       DATE,
    score_percent         REAL,
    trainer_name          TEXT,
    certification_id      TEXT,
    expiry_date           DATE,
    status                TEXT,
    hours_spent           REAL,
    location              TEXT,
    department            TEXT,
    remarks               TEXT,
    digital_signature     TEXT,
    version               TEXT,
    feedback_score        REAL,
    reassessment_needed   INTEGER,
    next_due_date         DATE,
    compliance_officer    TEXT,
    notes                 TEXT,
    audit_reference       TEXT
);

INSERT INTO compliance_training_record VALUES (8001, 4001, 'AntiMoneyLaundering', '2025-03-15', 92.5, 'JohnDoe', 'CERT-AML-2023', '2027-03-15', 'Completed', 4.0, 'HQ', 'Compliance', 'Excellent', 'SIG001', 'v1.0', 4.8, 0, '2026-03-15', 'AliceSmith', 'No issues', 'AUD-2025-01');
INSERT INTO compliance_training_record VALUES (8002, 4002, 'DataPrivacy', '2025-04-01', 88.0, 'JaneRoe', 'CERT-DP-2022', '2026-04-01', 'Completed', 3.5, 'Branch01', 'IT', 'Good', 'SIG002', 'v1.1', 4.2, 1, '2025-10-01', 'BobLee', 'Needs refresher soon', 'AUD-2025-02');
INSERT INTO compliance_training_record VALUES (8003, 4003, 'CyberSecurityBasics', NULL, NULL, 'MikeSmith', 'CERT-CS-2024', NULL, 'Pending', 0, 'Remote', 'Security', '', '', 'v1.0', NULL, 0, NULL, 'CarolKing', 'Awaiting enrollment', 'AUD-2025-03');

-- Environmental incident reports logged by field teams
CREATE TABLE environmental_incident_report
(
    report_id            INTEGER PRIMARY KEY,
    site_id              INTEGER NOT NULL,
    incident_date        DATE NOT NULL,
    incident_type        TEXT,
    severity_level       INTEGER,
    description          TEXT,
    reported_by          TEXT,
    mitigation_actions   TEXT,
    status               TEXT,
    resolved_date        DATE,
    regulatory_fine_usd  REAL,
    emissions_kg         REAL,
    spill_volume_liters  REAL,
    wildlife_impact      TEXT,
    weather_conditions   TEXT,
    gps_latitude         REAL,
    gps_longitude        REAL,
    photos_taken_flag    INTEGER,
    followup_needed      INTEGER,
    notes                TEXT
);

INSERT INTO environmental_incident_report VALUES (9001, 301, '2025-04-08', 'ChemicalSpill', 4, 'Leak from storage tank', 'FieldAgentA', 'Containment and cleanup', 'Resolved', '2025-04-10', 25000.00, 120.5, 350.0, 'None', 'Rainy', 38.8951, -77.0364, 1, 0, 'Closed with no wildlife impact');
INSERT INTO environmental_incident_report VALUES (9002, 302, '2025-04-12', 'AirEmission', 3, 'Exceeded NOx limits', 'FieldAgentB', 'Install scrubber', 'Open', NULL, 15000.00, 85.0, 0, 'Minor', 'Clear', 34.0522, -118.2437, 0, 1, 'Follow‑up inspection scheduled');
INSERT INTO environmental_incident_report VALUES (9003, 303, '2025-04-15', 'NoiseViolation', 2, 'Construction noise above limit', 'FieldAgentC', 'Adjust work hours', 'Resolved', '2025-04-16', 0, 0, 0, 'None', 'Windy', 40.7128, -74.0060, 0, 0, 'No further action required');

-- Daily driver logs for fleet vehicles
CREATE TABLE fleet_driver_log
(
    log_id               INTEGER PRIMARY KEY,
    vehicle_id           INTEGER NOT NULL,
    driver_id            INTEGER NOT NULL,
    shift_start          DATE NOT NULL,
    shift_end            DATE NOT NULL,
    miles_driven         REAL,
    fuel_used_gallons    REAL,
    average_speed_mph    REAL,
    incidents_reported   INTEGER,
    maintenance_flag     INTEGER,
    cargo_weight_lbs     REAL,
    route_code           TEXT,
    odometer_start       INTEGER,
    odometer_end         INTEGER,
    driver_notes         TEXT,
    compliance_check_passed INTEGER,
    hours_of_service     REAL,
    rest_breaks_taken    INTEGER,
    weather_conditions   TEXT,
    notes                TEXT
);

INSERT INTO fleet_driver_log VALUES (10001, 801, 6001, '2025-04-01', '2025-04-01', 150.2, 12.5, 45.3, 0, 0, 2000, 'RC-01', 120000, 120150, 'On schedule', 1, 8.0, 2, 'Clear', '');
INSERT INTO fleet_driver_log VALUES (10002, 802, 6002, '2025-04-02', '2025-04-02', 230.7, 18.0, 50.1, 1, 1, 3500, 'RC-02', 56000, 56230, 'Minor tire issue', 0, 9.5, 3, 'Rainy', 'Maintenance required');
INSERT INTO fleet_driver_log VALUES (10003, 803, 6003, '2025-04-03', '2025-04-03', 180.0, 15.2, 48.0, 0, 0, 2500, 'RC-03', 30000, 30180, 'Smooth trip', 1, 8.5, 2, 'Cloudy', '');

-- Supplier master data for supply‑chain management
CREATE TABLE supply_chain_supplier
(
    supplier_id          INTEGER PRIMARY KEY,
    company_name         TEXT NOT NULL,
    contact_name         TEXT,
    contact_phone        TEXT,
    contact_email        TEXT,
    address_line1        TEXT,
    address_line2        TEXT,
    city                 TEXT,
    state                TEXT,
    zip_code             TEXT,
    country              TEXT,
    tax_id               TEXT,
    registration_date    DATE,
    certification_status TEXT,
    risk_rating          INTEGER,
    average_lead_days    INTEGER,
    last_audit_date      DATE,
    contractual_terms    TEXT,
    primary_product_category TEXT,
    payment_terms        TEXT,
    notes                TEXT
);

INSERT INTO supply_chain_supplier VALUES (1101, 'GlobalSteel Ltd', 'AnnaK', '5551234567', 'anna@globalsteel.com', '123 Industrial Way', '', 'Metropolis', 'NY', '10001', 'USA', 'TAX12345', '2020-05-15', 'ISO9001', 2, 14, '2024-12-01', 'Net30', 'Metals', 'Net30', '');
INSERT INTO supply_chain_supplier VALUES (1102, 'EcoPackaging Inc', 'MarkL', '5559876543', 'mark@ecopack.com', '456 Green St', 'Suite 200', 'Greenville', 'CA', '90002', 'USA', 'TAX67890', '2019-09-10', 'ISO14001', 3, 21, '2024-11-15', 'Net45', 'Packaging', 'Net45', 'Preferred supplier');
INSERT INTO supply_chain_supplier VALUES (1103, 'TechComponents Co', 'SaraM', '5555551212', 'sara@techcomp.com', '789 Silicon Ave', '', 'SiliconCity', 'TX', '73301', 'USA', 'TAX11223', '2021-01-20', 'ISO27001', 1, 7, '2025-01-05', 'Net15', 'Electronics', 'Net15', '');

-- Customer engagement metrics per reporting period
CREATE TABLE customer_engagement_metric
(
    metric_id                 INTEGER PRIMARY KEY,
    customer_id               INTEGER NOT NULL,
    period_start              DATE NOT NULL,
    period_end                DATE NOT NULL,
    total_interactions        INTEGER,
    email_opens               INTEGER,
    sms_responses             INTEGER,
    app_logins                INTEGER,
    website_visits            INTEGER,
    avg_session_duration_sec INTEGER,
    NPS_score                 INTEGER,
    churn_risk_score          INTEGER,
    loyalty_tier              TEXT,
    promotions_used           INTEGER,
    complaints_filed          INTEGER,
    referrals_made            INTEGER,
    feedback_count            INTEGER,
    survey_completion_percent REAL,
    revenue_generated_usd     REAL,
    lifetime_value_usd        REAL,
    notes                     TEXT
);

INSERT INTO customer_engagement_metric VALUES (2001, 90001, '2025-01-01', '2025-03-31', 120, 45, 10, 30, 80, 215, 8, 3, 'Gold', 5, 0, 2, 4, 75.0, 15000.00, 55000.00, '');
INSERT INTO customer_engagement_metric VALUES (2002, 90002, '2025-01-01', '2025-03-31', 85, 30, 5, 20, 60, 190, 6, 5, 'Silver', 3, 2, 1, 2, 60.0, 9000.00, 34000.00, '');
INSERT INTO customer_engagement_metric VALUES (2003, 90003, '2025-01-01', '2025-03-31', 150, 60, 12, 45, 110, 250, 9, 2, 'Platinum', 8, 0, 5, 6, 82.5, 21000.00, 72000.00, '');