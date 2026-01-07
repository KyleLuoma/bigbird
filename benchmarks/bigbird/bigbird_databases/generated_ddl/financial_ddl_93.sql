-- Financial audit trail capturing detailed changes to accounts and transactions
CREATE TABLE financial_audit_trail
(
    audit_id            INTEGER PRIMARY KEY,
    account_id          INTEGER,
    audit_timestamp     DATE,
    auditor_name        TEXT,
    action_type         TEXT,
    change_summary      TEXT,
    prior_balance       REAL,
    new_balance         REAL,
    transaction_id      INTEGER,
    related_order_id    INTEGER,
    risk_score          INTEGER,
    compliance_flag     INTEGER,
    notes               TEXT,
    ip_address          TEXT,
    device_id           TEXT,
    branch_id           INTEGER,
    region_code         TEXT,
    audit_status        TEXT,
    reviewed_by         TEXT,
    review_date         DATE,
    escalation_level    INTEGER,
    resolution_status   TEXT
);

INSERT INTO financial_audit_trail VALUES (1, 101, '2024-01-15', 'JohnDoe', 'Update', 'Balance correction', 5000.00, 5200.00, 301, 401, 3, 1, 'Corrected after manual entry', '192.168.1.10', 'DEV001', 12, 'RC1', 'Closed', 'JaneSmith', '2024-01-16', 2, 'Resolved');
INSERT INTO financial_audit_trail VALUES (2, 102, '2024-02-20', 'AliceW', 'Insert', 'New loan entry', 0.00, 15000.00, 302, 402, 5, 0, 'Initial loan creation', '10.0.0.5', 'DEV002', 8, 'RC2', 'Open', 'BobLee', '2024-02-21', 1, 'Pending');
INSERT INTO financial_audit_trail VALUES (3, 103, '2024-03-05', 'MikeK', 'Delete', 'Removed duplicate transaction', 250.00, 0.00, 303, 403, 2, 1, 'Duplicate detected', '172.16.0.3', 'DEV003', 5, 'RC3', 'Closed', 'SaraP', '2024-03-06', 0, 'Cancelled');

-- Detailed information about digital payment methods supported by the bank
CREATE TABLE digital_payment_method_detail
(
    method_id               INTEGER PRIMARY KEY,
    method_name             TEXT,
    provider_name           TEXT,
    supported_currencies    TEXT,
    transaction_fee_percent REAL,
    max_transaction_limit   REAL,
    min_transaction_limit   REAL,
    settlement_time_days    INTEGER,
    security_protocol       TEXT,
    api_version             TEXT,
    compliance_certified    INTEGER,
    launch_date             DATE,
    deprecation_date        DATE,
    maintenance_window      TEXT,
    active_flag             INTEGER,
    region_coverage         TEXT,
    mobile_support          INTEGER,
    web_support             INTEGER,
    qr_code_enabled         INTEGER,
    contact_center_number   TEXT,
    support_email           TEXT,
    sla_response_hours      INTEGER,
    documentation_url       TEXT
);

INSERT INTO digital_payment_method_detail VALUES (1, 'PayFast', 'FastPayInc', 'USD,EUR,GBP', 1.5, 10000.00, 5.00, 2, 'TLS1.3', 'v2.1', 1, '2023-06-01', NULL, 'Sat02-04', 1, 'Global', 1, 1, 1, '8001234567', 'support@payfast.com', 24, 'https://docs.payfast.com');
INSERT INTO digital_payment_method_detail VALUES (2, 'QuickTransfer', 'TransferCo', 'USD,JPY', 2.0, 5000.00, 10.00, 1, 'TLS1.2', 'v1.9', 1, '2022-11-15', NULL, 'Sun03-05', 1, 'APAC', 1, 0, 0, '8007654321', 'help@quicktransfer.com', 12, 'https://api.quicktransfer.com/docs');
INSERT INTO digital_payment_method_detail VALUES (3, 'EcoPay', 'GreenTech', 'EUR,CHF', 0.8, 2000.00, 2.00, 3, 'TLS1.3', 'v3.0', 0, '2024-01-20', NULL, 'Fri01-03', 1, 'EU', 0, 1, 1, '8005551234', 'info@ecopay.eu', 48, 'https://ecopay.eu/docs');

-- Matrix linking risk categories to compliance requirements
CREATE TABLE risk_compliance_matrix
(
    matrix_id                INTEGER PRIMARY KEY,
    risk_category            TEXT,
    compliance_requirement   TEXT,
    regulatory_body          TEXT,
    severity_level           INTEGER,
    likelihood_score         INTEGER,
    impact_score             INTEGER,
    control_type             TEXT,
    control_description      TEXT,
    monitoring_frequency     TEXT,
    responsible_department   TEXT,
    remediation_plan         TEXT,
    target_completion_date   DATE,
    actual_completion_date   DATE,
    status                   TEXT,
    last_assessed_date       DATE,
    next_review_date         DATE,
    risk_owner               TEXT,
    compliance_owner         TEXT,
    escalation_procedure     TEXT,
    audit_trail_reference    TEXT,
    documentation_link       TEXT,
    comments                 TEXT
);

INSERT INTO risk_compliance_matrix VALUES (1, 'CreditRisk', 'PCI-DSS', 'PCI Council', 4, 3, 5, 'Technical', 'Encrypt card data at rest', 'Quarterly', 'IT Security', 'Deploy updated encryption', '2024-06-30', NULL, 'InProgress', '2024-03-01', '2024-09-01', 'JohnDoe', 'AliceW', 'Notify CISO', 'AUD001', 'https://compliance.example.com/pci', 'Initial assessment completed');
INSERT INTO risk_compliance_matrix VALUES (2, 'OperationalRisk', 'SOX', 'SEC', 3, 2, 4, 'Procedural', 'Segregate duties in transaction processing', 'Annual', 'Finance', 'Review role assignments', '2024-12-31', NULL, 'NotStarted', '2024-04-15', '2025-04-15', 'MikeK', 'SaraP', 'Escalate to CFO', 'AUD002', 'https://compliance.example.com/sox', 'Pending budget approval');
INSERT INTO risk_compliance_matrix VALUES (3, 'LiquidityRisk', 'BaselIII', 'BCBS', 5, 4, 5, 'Strategic', 'Maintain minimum liquidity coverage ratio', 'Monthly', 'Treasury', 'Adjust asset holdings', '2024-05-31', NULL, 'InProgress', '2024-02-20', '2024-08-20', 'BobLee', 'JaneSmith', 'Report to Board', 'AUD003', 'https://compliance.example.com/basel', 'Monitoring tools deployed');

-- Utilization metrics for branch facilities and equipment
CREATE TABLE branch_facility_utilization
(
    utilization_id            INTEGER PRIMARY KEY,
    branch_id                 INTEGER,
    facility_type             TEXT,
    total_capacity            INTEGER,
    occupied_capacity         INTEGER,
    utilization_percent       REAL,
    peak_usage_time           TEXT,
    average_daily_visits      INTEGER,
    maintenance_status        TEXT,
    last_maintenance_date     DATE,
    next_scheduled_maintenance DATE,
    energy_consumption_kwh    REAL,
    water_consumption_liters  REAL,
    cleaning_score            INTEGER,
    security_incidents        INTEGER,
    complaint_count           INTEGER,
    avg_wait_time_minutes     REAL,
    staff_present_count       INTEGER,
    equipment_count           INTEGER,
    wifi_bandwidth_mbps       REAL,
    hvac_efficiency_percent   REAL,
    fire_safety_rating        INTEGER,
    notes                     TEXT,
    last_updated              DATE
);

INSERT INTO branch_facility_utilization VALUES (1, 101, 'Lobby', 200, 150, 75.0, '10:00', 350, 'Good', '2024-01-10', '2024-07-10', 1200.5, 8000, 85, 0, 2, 5.0, 12, 25, 150.0, 92, 'All systems nominal', '2024-03-01');
INSERT INTO branch_facility_utilization VALUES (2, 102, 'ConferenceRoom', 50, 45, 90.0, '14:30', 120, 'Scheduled', '2024-02-15', '2024-08-15', 300.0, 2000, 78, 1, 0, 3.2, 8, 5, 200.0, 88, 'Projector requires firmware update', '2024-03-02');
INSERT INTO branch_facility_utilization VALUES (3, 103, 'ATMZone', 30, 22, 73.3, '09:45', 500, 'Excellent', '2024-01-20', '2024-07-20', 600.0, 4000, 92, 0, 1, 1.5, 4, 8, 100.0, 95, 'Cash replenishment on schedule', '2024-03-03');

-- Schedule of loan payments for individual accounts
CREATE TABLE loan_payment_schedule
(
    schedule_id            INTEGER PRIMARY KEY,
    loan_id                INTEGER,
    payment_number         INTEGER,
    due_date               DATE,
    principal_due          REAL,
    interest_due           REAL,
    total_due              REAL,
    payment_status         TEXT,
    payment_method         TEXT,
    processed_date         DATE,
    processed_amount       REAL,
    late_fee               REAL,
    grace_period_days      INTEGER,
    outstanding_principal  REAL,
    outstanding_interest   REAL,
    cumulative_paid_principal REAL,
    cumulative_paid_interest REAL,
    next_payment_due_date  DATE,
    notes                  TEXT,
    created_timestamp      DATE,
    updated_timestamp      DATE,
    auditor_id             INTEGER,
    audit_note             TEXT,
    compliance_flag       INTEGER
);

INSERT INTO loan_payment_schedule VALUES (1, 201, 1, '2024-04-01', 1000.00, 50.00, 1050.00, 'Pending', 'AutoDebit', NULL, NULL, 0.00, 5, 9000.00, 450.00, 0.00, 0.00, '2024-05-01', 'First installment', '2024-03-01', '2024-03-01', 10, 'Initial schedule created', 1);
INSERT INTO loan_payment_schedule VALUES (2, 201, 2, '2024-05-01', 1000.00, 45.00, 1045.00, 'Pending', 'AutoDebit', NULL, NULL, 0.00, 5, 8000.00, 405.00, 0.00, 0.00, '2024-06-01', 'Second installment', '2024-03-01', '2024-03-01', 10, 'Schedule confirmed', 1);
INSERT INTO loan_payment_schedule VALUES (3, 202, 1, '2024-04-15', 2000.00, 120.00, 2120.00, 'Paid', 'Check', '2024-04-14', 2120.00, 0.00, 0, 8000.00, 480.00, 2000.00, 120.00, '2024-05-15', 'Early payment', '2024-03-05', '2024-04-14', 12, 'Payment recorded', 1);

-- Mapping of card numbers to issuing networks and agreements
CREATE TABLE card_network_association
(
    association_id        INTEGER PRIMARY KEY,
    card_id               INTEGER,
    network_name          TEXT,
    network_code          TEXT,
    agreement_start_date  DATE,
    agreement_end_date    DATE,
    interchange_fee_percent REAL,
    surcharge_fee_percent REAL,
    transaction_limit     REAL,
    daily_limit           REAL,
    monthly_limit         REAL,
    settlement_cycle_days INTEGER,
    compliance_status     TEXT,
    audit_timestamp       DATE,
    created_by            TEXT,
    updated_by            TEXT,
    last_modified_date    DATE,
    network_contact_phone TEXT,
    network_contact_email TEXT,
    dispute_resolution_time_days INTEGER,
    notes                 TEXT,
    active_flag           INTEGER,
    archival_flag         INTEGER,
    regulatory_approval   TEXT
);

INSERT INTO card_network_association VALUES (1, 301, 'Visa', 'VN', '2022-01-01', '2025-12-31', 1.5, 0.2, 5000.00, 20000.00, 60000.00, 2, 'Compliant', '2024-03-01', 'AdminA', 'AdminB', '2024-03-02', '8001112222', 'visa@network.com', 30, 'Standard agreement', 1, 0, 'Approved');
INSERT INTO card_network_association VALUES (2, 302, 'MasterCard', 'MC', '2021-06-15', '2024-06-14', 1.6, 0.25, 4000.00, 15000.00, 50000.00, 2, 'Compliant', '2024-03-01', 'AdminC', 'AdminD', '2024-03-03', '8003334444', 'mc@network.com', 45, 'Renewal pending', 1, 0, 'Approved');
INSERT INTO card_network_association VALUES (3, 303, 'Amex', 'AX', '2023-03-01', '2026-02-28', 2.0, 0.3, 6000.00, 25000.00, 80000.00, 3, 'Pending', '2024-03-01', 'AdminE', 'AdminF', '2024-03-04', '8005556666', 'amex@network.com', 60, 'New partnership', 1, 0, 'Pending');

-- Summary of account activity for reporting purposes
CREATE TABLE account_activity_summary
(
    summary_id            INTEGER PRIMARY KEY,
    account_id            INTEGER,
    reporting_month       TEXT,
    total_deposits        REAL,
    total_withdrawals     REAL,
    net_change            REAL,
    average_daily_balance REAL,
    max_balance           REAL,
    min_balance           REAL,
    transaction_count     INTEGER,
    distinct_counterparty INTEGER,
    foreign_transaction_amount REAL,
    domestic_transaction_amount REAL,
    fee_charged_total     REAL,
    interest_earned       REAL,
    overdraft_events      INTEGER,
    overdraft_fees_total  REAL,
    last_transaction_date DATE,
    first_transaction_date DATE,
    created_timestamp     DATE,
    updated_timestamp     DATE,
    audit_user            TEXT,
    audit_note            TEXT,
    compliance_checked   INTEGER
);

INSERT INTO account_activity_summary VALUES (1, 101, '2024-02', 15000.00, 8000.00, 7000.00, 12000.00, 20000.00, 5000.00, 45, 30, 3000.00, 12000.00, 150.00, 200.00, 0, 0.00, '2024-02-28', '2024-02-01', '2024-03-01', '2024-03-01', 'AuditorA', 'Monthly summary', 1);
INSERT INTO account_activity_summary VALUES (2, 102, '2024-02', 20000.00, 15000.00, 5000.00, 18000.00, 25000.00, 10000.00, 60, 40, 5000.00, 15000.00, 200.00, 150.00, 1, 35.00, '2024-02-27', '2024-02-02', '2024-03-01', '2024-03-01', 'AuditorB', 'Monthly summary', 1);
INSERT INTO account_activity_summary VALUES (3, 103, '2024-02', 12000.00, 5000.00, 7000.00, 10000.00, 18000.00, 4000.00, 30, 20, 2500.00, 9500.00, 120.00, 180.00, 0, 0.00, '2024-02-26', '2024-02-03', '2024-03-01', '2024-03-01', 'AuditorC', 'Monthly summary', 1);

-- Registry of client-owned devices accessing bank services
CREATE TABLE client_device_registry
(
    device_id               INTEGER PRIMARY KEY,
    client_id               INTEGER,
    device_type             TEXT,
    operating_system        TEXT,
    os_version              TEXT,
    manufacturer            TEXT,
    model                   TEXT,
    imei_number             TEXT,
    mac_address             TEXT,
    ip_address_last_seen    TEXT,
    last_login_timestamp    DATE,
    registration_date       DATE,
    warranty_expiration_date DATE,
    is_active               INTEGER,
    is_compromised          INTEGER,
    encryption_enabled      INTEGER,
    biometric_enabled       INTEGER,
    root_status             TEXT,
    firmware_version        TEXT,
    device_location_city    TEXT,
    device_location_country TEXT,
    carrier_name            TEXT,
    mobile_data_cap_gb      REAL,
    notes                   TEXT,
    created_by              TEXT,
    created_timestamp       DATE,
    updated_by              TEXT,
    updated_timestamp       DATE,
    compliance_status       TEXT,
    audit_log_reference     TEXT,
    decommissioned_flag     INTEGER
);

INSERT INTO client_device_registry VALUES (1, 201, 'Smartphone', 'Android', '12', 'Samsung', 'GalaxyS22', '123456789012345', 'AA:BB:CC:DD:EE:FF', '203.0.113.5', '2024-03-01', '2023-01-15', '2025-01-15', 1, 0, 1, 1, 'NotRooted', '12.0.1', 'NewYork', 'USA', 'Verizon', 10.0, 'Primary device', 'AdminA', '2023-01-15', 'AdminB', '2024-03-02', 'Compliant', 'LOG001', 0);
INSERT INTO client_device_registry VALUES (2, 202, 'Tablet', 'iOS', '16.2', 'Apple', 'iPadPro', '987654321098765', '11:22:33:44:55:66', '198.51.100.8', '2024-02-28', '2022-07-20', '2024-07-20', 1, 0, 1, 0, 'Jailbroken', '16.2', 'London', 'UK', 'EE', 5.0, 'Secondary device', 'AdminC', '2022-07-20', 'AdminD', '2024-02-28', 'NonCompliant', 'LOG002', 0);
INSERT INTO client_device_registry VALUES (3, 203, 'Laptop', 'Windows', '10', 'Dell', 'XPS13', '555666777888999', '22:33:44:55:66:77', '192.0.2.10', '2024-03-03', '2021-03-10', '2023-03-10', 0, 1, 0, 0, 'Rooted', '10.0.19041', 'Tokyo', 'Japan', 'NTT', 0.0, 'Decommissioned device', 'AdminE', '2021-03-10', 'AdminF', '2024-03-03', 'Decommissioned', 'LOG003', 1);

-- Index of infrastructure assets per district
CREATE TABLE district_infrastructure_index
(
    index_id               INTEGER PRIMARY KEY,
    district_id            INTEGER,
    road_km_total          REAL,
    bridge_count           INTEGER,
    tunnel_length_km       REAL,
    public_transport_stops INTEGER,
    schools_count          INTEGER,
    hospitals_count        INTEGER,
    parks_area_hectare     REAL,
    water_supply_mwh       REAL,
    electricity_grid_kv    REAL,
    broadband_coverage_pct REAL,
    waste_management_facilities INTEGER,
    recycling_rate_percent REAL,
    renewable_energy_capacity_mw REAL,
    flood_zone_rating      INTEGER,
    seismic_risk_level     INTEGER,
    air_quality_index      INTEGER,
    green_space_per_capita REAL,
    population_density_per_km2 INTEGER,
    avg_income_usd         REAL,
    unemployment_rate_percent REAL,
    crime_rate_per_1000    REAL,
    last_survey_date       DATE,
    created_timestamp      DATE,
    updated_timestamp      DATE,
    analyst_name           TEXT,
    notes                  TEXT,
    compliance_check_passed INTEGER,
    external_report_ref    TEXT
);

INSERT INTO district_infrastructure_index VALUES (1, 101, 250.5, 12, 3.2, 45, 25, 8, 150.0, 5000.0, 110.0, 85.0, 6, 70.0, 120.5, 2, 3, 42, 12.5, 1500, 35000.0, 5.2, 30.0, '2024-02-15', '2024-03-01', '2024-03-01', 'AnalystA', 'Recent upgrades on bridges', 1, 'REP001');
INSERT INTO district_infrastructure_index VALUES (2, 102, 320.0, 15, 4.0, 60, 30, 10, 200.0, 6200.0, 115.0, 78.0, 8, 68.0, 150.0, 1, 2, 38, 14.0, 1800, 38000.0, 4.8, 28.5, '2024-02-20', '2024-03-01', '2024-03-01', 'AnalystB', 'Planned new park', 1, 'REP002');
INSERT INTO district_infrastructure_index VALUES (3, 103, 210.3, 9, 2.5, 30, 20, 6, 120.0, 4700.0, 105.0, 80.0, 5, 72.0, 100.0, 3, 4, 45, 11.0, 1300, 34000.0, 5.5, 32.0, '2024-02-25', '2024-03-01', '2024-03-01', 'AnalystC', 'Flood mitigation project', 1, 'REP003');

-- Cash flow tracking for ATMs
CREATE TABLE atm_cash_flow
(
    flow_id                INTEGER PRIMARY KEY,
    atm_id                 INTEGER,
    date_recorded          DATE,
    cash_loaded_amount     REAL,
    cash_dispensed_amount  REAL,
    net_cash_change        REAL,
    cash_balance_end_of_day REAL,
    loading_operator_id    INTEGER,
    dispenser_error_count  INTEGER,
    jammed_notes_count     INTEGER,
    maintenance_flag       INTEGER,
    last_maintenance_date  DATE,
    next_maintenance_due   DATE,
    security_incident_flag INTEGER,
    incident_report_id     INTEGER,
    sensor_temperature_c   REAL,
    sensor_humidity_percent REAL,
    location_city          TEXT,
    location_branch_id     INTEGER,
    audit_timestamp        DATE,
    created_by             TEXT,
    updated_by             TEXT,
    notes                  TEXT,
    compliance_status      TEXT,
    audit_log_ref          TEXT,
    total_transactions     INTEGER,
    avg_transaction_value  REAL,
    cash_reserve_threshold REAL,
    replenishment_interval_days INTEGER,
    low_cash_alert_sent   INTEGER
);

INSERT INTO atm_cash_flow VALUES (1, 201, '2024-03-01', 20000.00, 18500.00, -1500.00, 5000.00, 10, 0, 0, 0, '2024-02-15', '2024-04-15', 0, NULL, 30.5, 45.0, 'Chicago', 12, '2024-03-01', 'AdminX', 'AdminY', 'Normal operation', 'Compliant', 'LOG100', 150, 123.33, 3000.00, 7, 0);
INSERT INTO atm_cash_flow VALUES (2, 202, '2024-03-01', 25000.00, 24000.00, -1000.00, 6000.00, 11, 1, 2, 0, '2024-02-20', '2024-04-20', 0, NULL, 28.0, 50.0, 'Boston', 15, '2024-03-01', 'AdminZ', 'AdminW', 'One jammed note', 'Compliant', 'LOG101', 180, 133.33, 3500.00, 7, 0);
INSERT INTO atm_cash_flow VALUES (3, 203, '2024-03-01', 18000.00, 17500.00, -500.00, 7000.00, 12, 0, 0, 1, '2024-01-30', '2024-04-30', 1, 555, 32.0, 48.0, 'Seattle', 18, '2024-03-01', 'AdminV', 'AdminU', 'Security alert triggered', 'Investigating', 'LOG102', 130, 138.46, 2500.00, 7, 1);