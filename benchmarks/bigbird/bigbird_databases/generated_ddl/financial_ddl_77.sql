-- Branch security device inventory
CREATE TABLE branch_security_device_inventory
(
    device_id                INTEGER      PRIMARY KEY,
    branch_id                INTEGER      NOT NULL,
    device_type              TEXT         NOT NULL,
    manufacturer             TEXT         NOT NULL,
    model                    TEXT         NOT NULL,
    serial_number            TEXT         NOT NULL,
    install_date             DATE         NOT NULL,
    firmware_version         TEXT         NOT NULL,
    last_maintenance         DATE,
    status                   TEXT         NOT NULL,
    ip_address               TEXT,
    mac_address              TEXT,
    warranty_expiry          DATE,
    location_desc            TEXT,
    config_version           TEXT,
    power_source             TEXT,
    maintenance_contract     TEXT,
    last_inspection          DATE,
    notes                    TEXT,
    created_at               DATE         NOT NULL
);

INSERT INTO branch_security_device_inventory VALUES
(1, 101, 'CCTV', 'SecureCam', 'SC100', 'SN001', '2022-03-15', 'v1.2.3', '2023-02-10', 'active', '192.168.1.10', 'AA:BB:CC:DD:EE:01', '2025-03-15', 'Lobby', 'confA', 'AC', 'ContractA', '2023-01-20', 'No issues', '2023-03-01');

INSERT INTO branch_security_device_inventory VALUES
(2, 102, 'Alarm', 'SafeGuard', 'SG200', 'SN002', '2021-07-22', 'v2.0.1', '2023-01-05', 'active', '192.168.2.20', 'AA:BB:CC:DD:EE:02', '2024-07-22', 'Vault', 'confB', 'Battery', 'ContractB', '2023-02-15', 'Battery replaced', '2023-03-01');

INSERT INTO branch_security_device_inventory VALUES
(3, 103, 'AccessControl', 'EntryTech', 'ET300', 'SN003', '2020-11-01', 'v3.5.0', '2022-12-30', 'inactive', '192.168.3.30', 'AA:BB:CC:DD:EE:03', '2023-11-01', 'Parking', 'confC', 'Solar', 'ContractC', '2023-03-10', 'Decommissioned', '2023-03-01');

-- Loan market analysis
CREATE TABLE loan_market_analysis
(
    analysis_id           INTEGER PRIMARY KEY,
    market_region         TEXT    NOT NULL,
    analysis_date         DATE    NOT NULL,
    avg_interest_rate     REAL,
    total_outstanding     INTEGER,
    new_loans             INTEGER,
    default_rate          REAL,
    average_loan_term     INTEGER,
    median_loan_amount    INTEGER,
    top_bank              TEXT,
    economic_indicator    REAL,
    housing_price_index   REAL,
    unemployment_rate     REAL,
    inflation_rate        REAL,
    consumer_confidence   REAL,
    regulatory_change     TEXT,
    notes                 TEXT,
    created_by            TEXT,
    created_at            DATE,
    updated_at            DATE
);

INSERT INTO loan_market_analysis VALUES
(1, 'NorthRegion', '2023-01-31', 3.5, 25000000, 1200, 2.1, 60, 150000, 'BankAlpha', 1.2, 110.5, 5.4, 2.8, 78.0, 'Reg2022Update', 'Quarterly review', 'analyst1', '2023-02-01', '2023-02-15');

INSERT INTO loan_market_analysis VALUES
(2, 'SouthRegion', '2023-01-31', 4.1, 18000000, 950, 1.8, 48, 120000, 'BankBeta', 0.9, 95.3, 6.2, 3.1, 70.5, 'InterestCap2023', 'Data validated', 'analyst2', '2023-02-01', '2023-02-15');

INSERT INTO loan_market_analysis VALUES
(3, 'EastRegion', '2023-01-31', 3.8, 21000000, 1100, 2.4, 55, 130000, 'BankGamma', 1.0, 102.7, 5.9, 2.9, 73.2, 'None', 'Preliminary figures', 'analyst3', '2023-02-01', '2023-02-15');

-- Card tokenization audit
CREATE TABLE card_tokenization_audit
(
    audit_id            INTEGER PRIMARY KEY,
    card_id             INTEGER NOT NULL,
    token               TEXT    NOT NULL,
    tokenized_at        DATE    NOT NULL,
    token_status        TEXT,
    requestor_system    TEXT,
    auditor             TEXT,
    reason              TEXT,
    expiration_date     DATE,
    provider            TEXT,
    encryption_key_id   TEXT,
    hash_algorithm      TEXT,
    ip_address          TEXT,
    user_agent          TEXT,
    compliance_status   TEXT,
    notes               TEXT,
    created_at          DATE,
    updated_at          DATE,
    success_flag        INTEGER,
    error_code          TEXT
);

INSERT INTO card_tokenization_audit VALUES
(1, 1001, 'tok_ABC123', '2023-03-01', 'active', 'POSSys', 'auditor1', 'initial', '2025-03-01', 'TokenProviderX', 'key01', 'SHA256', '10.0.0.1', 'AgentA', 'compliant', 'Token generated successfully', '2023-03-01', '2023-03-01', 1, NULL);

INSERT INTO card_tokenization_audit VALUES
(2, 1002, 'tok_DEF456', '2023-03-02', 'failed', 'MobileApp', 'auditor2', 'retry', '2025-03-02', 'TokenProviderY', 'key02', 'SHA256', '10.0.0.2', 'AgentB', 'noncompliant', 'Encryption key missing', '2023-03-02', '2023-03-02', 0, 'E001');

INSERT INTO card_tokenization_audit VALUES
(3, 1003, 'tok_GHI789', '2023-03-03', 'active', 'WebPortal', 'auditor3', 'update', '2025-03-03', 'TokenProviderZ', 'key03', 'SHA256', '10.0.0.3', 'AgentC', 'compliant', 'Token refreshed', '2023-03-03', '2023-03-03', 1, NULL);

-- ATM telemetry metrics
CREATE TABLE atm_telemetry_metrics
(
    metric_id          INTEGER PRIMARY KEY,
    atm_id             INTEGER NOT NULL,
    timestamp          DATE NOT NULL,
    cpu_usage          REAL,
    memory_usage       REAL,
    disk_space         REAL,
    network_latency    REAL,
    transaction_count  INTEGER,
    cash_level         INTEGER,
    temperature        REAL,
    humidity           REAL,
    power_status       TEXT,
    alert_flag         INTEGER,
    firmware_version   TEXT,
    software_version   TEXT,
    last_restart       DATE,
    error_code         TEXT,
    location_id        INTEGER,
    operator_id        INTEGER,
    notes              TEXT,
    recorded_by        TEXT
);

INSERT INTO atm_telemetry_metrics VALUES
(1, 2001, '2023-03-10', 45.2, 68.5, 120.0, 15.3, 240, 50000, 22.5, 40.0, 'online', 0, 'v4.1', 's2.3', '2023-03-01', NULL, 301, 401, 'Normal operation', 'system');

INSERT INTO atm_telemetry_metrics VALUES
(2, 2002, '2023-03-10', 78.9, 80.1, 95.0, 45.0, 310, 30000, 28.0, 55.0, 'offline', 1, 'v4.0', 's2.2', '2023-02-28', 'E102', 302, 402, 'Network timeout', 'monitor');

INSERT INTO atm_telemetry_metrics VALUES
(3, 2003, '2023-03-10', 30.0, 55.0, 150.0, 10.0, 180, 75000, 20.0, 35.0, 'online', 0, 'v4.2', 's2.4', '2023-03-05', NULL, 303, 403, 'Low cash usage', 'system');

-- District environmental index
CREATE TABLE district_environmental_index
(
    index_id                 INTEGER PRIMARY KEY,
    district_id              INTEGER NOT NULL,
    report_date              DATE NOT NULL,
    air_quality_index        INTEGER,
    water_quality_index      INTEGER,
    noise_level              REAL,
    green_space_percent      REAL,
    waste_recycling_rate     REAL,
    average_temperature      REAL,
    average_humidity         REAL,
    solar_exposure           REAL,
    traffic_congestion_index REAL,
    industrial_emission_score REAL,
    residential_density      INTEGER,
    commercial_density       INTEGER,
    public_transport_usage   REAL,
    policy_compliance_score  REAL,
    notes                    TEXT,
    created_at               DATE,
    updated_at               DATE,
    source_system            TEXT
);

INSERT INTO district_environmental_index VALUES
(1, 101, '2023-02-28', 42, 78, 55.2, 23.5, 60.0, 15.4, 70.0, 8.5, 0.9, 120, 45, 68.0, 85.0, 'Stable conditions', '2023-03-01', '2023-03-10', 'EnvSysA');

INSERT INTO district_environmental_index VALUES
(2, 102, '2023-02-28', 58, 65, 62.1, 19.0, 55.0, 16.2, 73.5, 9.0, 1.2, 140, 55, 72.5, 80.0, 'Higher noise level', '2023-03-01', '2023-03-10', 'EnvSysB');

INSERT INTO district_environmental_index VALUES
(3, 103, '2023-02-28', 35, 82, 48.7, 26.8, 68.0, 14.8, 68.3, 7.8, 0.7, 110, 40, 65.2, 90.0, 'Excellent air quality', '2023-03-01', '2023-03-10', 'EnvSysC');

-- Corporate social responsibility metrics
CREATE TABLE corporate_social_responsibility_metrics
(
    metric_id               INTEGER PRIMARY KEY,
    fiscal_year             INTEGER NOT NULL,
    total_donation_amount   REAL,
    employee_volunteer_hours INTEGER,
    community_projects      INTEGER,
    sustainability_score    REAL,
    carbon_footprint_tons   REAL,
    water_conservation_liters REAL,
    waste_reduction_percent REAL,
    ethical_training_completed INTEGER,
    board_diversity_percent REAL,
    supplier_ethics_score   REAL,
    grievance_cases        INTEGER,
    compliance_incidents    INTEGER,
    public_report_url       TEXT,
    created_at              DATE,
    updated_by              TEXT,
    reviewed_flag           INTEGER,
    review_date             DATE,
    notes                   TEXT
);

INSERT INTO corporate_social_responsibility_metrics VALUES
(1, 2022, 500000.00, 12000, 25, 88.5, 1500.0, 2000000.0, 30.0, 3000, 45.0, 85.0, 12, 5, 'http://reports.company/2022csr', '2023-01-15', 'cfo', 1, '2023-01-20', 'Met targets');

INSERT INTO corporate_social_responsibility_metrics VALUES
(2, 2021, 450000.00, 11000, 22, 85.0, 1600.0, 1800000.0, 28.0, 2800, 42.0, 80.0, 15, 8, 'http://reports.company/2021csr', '2022-01-10', 'cfo', 1, '2022-01-15', 'Improved water usage');

INSERT INTO corporate_social_responsibility_metrics VALUES
(3, 2020, 400000.00, 9000, 20, 80.0, 1700.0, 1500000.0, 25.0, 2500, 40.0, 75.0, 10, 4, 'http://reports.company/2020csr', '2021-01-12', 'cfo', 1, '2021-01-18', 'Baseline year');

-- Loan market trends
CREATE TABLE loan_market_trends
(
    trend_id                INTEGER PRIMARY KEY,
    quarter                 TEXT NOT NULL,
    region                  TEXT NOT NULL,
    average_loan_amount     REAL,
    median_interest_rate    REAL,
    growth_rate_percent     REAL,
    default_rate_percent    REAL,
    new_application_count   INTEGER,
    approved_application_count INTEGER,
    rejected_application_count INTEGER,
    refinancing_rate        REAL,
    policy_change           TEXT,
    economic_outlook        TEXT,
    created_at              DATE,
    updated_at              DATE,
    analyst_name            TEXT,
    notes                   TEXT,
    source_dataset          TEXT,
    confidence_score        REAL,
    data_quality_score      REAL
);

INSERT INTO loan_market_trends VALUES
(1, 'Q1-2023', 'NorthRegion', 145000.00, 3.6, 4.5, 2.0, 1300, 1150, 150, 3.2, 'RateCap2023', 'Positive', '2023-04-01', '2023-04-05', 'analystA', 'Stable growth', 'DatasetX', 0.92, 0.95);

INSERT INTO loan_market_trends VALUES
(2, 'Q1-2023', 'SouthRegion', 130000.00, 4.0, 3.8, 1.8, 1100, 950, 150, 2.9, 'None', 'Neutral', '2023-04-01', '2023-04-05', 'analystB', 'Slight slowdown', 'DatasetY', 0.88, 0.90);

INSERT INTO loan_market_trends VALUES
(3, 'Q1-2023', 'EastRegion', 138000.00, 3.8, 4.2, 1.9, 1200, 1050, 150, 3.0, 'Reg2022Update', 'Positive', '2023-04-01', '2023-04-05', 'analystC', 'Consistent', 'DatasetZ', 0.90, 0.93);

-- Card usage summary
CREATE TABLE card_usage_summary
(
    summary_id                INTEGER PRIMARY KEY,
    card_id                   INTEGER NOT NULL,
    month                     TEXT NOT NULL,
    transaction_count        INTEGER,
    total_amount             REAL,
    average_transaction_value REAL,
    max_transaction_value    REAL,
    min_transaction_value    REAL,
    foreign_transaction_count INTEGER,
    online_transaction_count INTEGER,
    declined_transaction_count INTEGER,
    fraud_flagged_count      INTEGER,
    reward_points_earned     INTEGER,
    reward_points_redeemed   INTEGER,
    cash_advance_count       INTEGER,
    cash_advance_amount      REAL,
    balance_at_month_end     REAL,
    last_transaction_date    DATE,
    created_at                DATE,
    updated_at                DATE,
    notes                     TEXT
);

INSERT INTO card_usage_summary VALUES
(1, 1001, '2023-02', 250, 37500.00, 150.00, 2000.00, 5.00, 30, 180, 10, 2, 5000, 2000, 5, 2500.00, 8000.00, '2023-02-28', '2023-03-01', '2023-03-01', 'Steady usage');

INSERT INTO card_usage_summary VALUES
(2, 1002, '2023-02', 180, 27000.00, 150.00, 1500.00, 5.00, 20, 130, 12, 1, 4000, 1500, 3, 1800.00, 6000.00, '2023-02-28', '2023-03-01', '2023-03-01', 'Higher decline rate');

INSERT INTO card_usage_summary VALUES
(3, 1003, '2023-02', 300, 48000.00, 160.00, 2500.00, 5.00, 40, 220, 8, 3, 6000, 2500, 7, 3500.00, 9000.00, '2023-02-28', '2023-03-01', '2023-03-01', 'Peak month');

-- Supplier performance dashboard
CREATE TABLE supplier_performance_dashboard
(
    record_id                INTEGER PRIMARY KEY,
    supplier_id              INTEGER NOT NULL,
    evaluation_period        TEXT NOT NULL,
    on_time_delivery_percent REAL,
    quality_score            REAL,
    cost_variance_percent    REAL,
    compliance_score         REAL,
    risk_rating              INTEGER,
    contract_value           INTEGER,
    incidents_reported       INTEGER,
    corrective_actions_taken INTEGER,
    sustainability_score     REAL,
    innovation_score         REAL,
    communication_score      REAL,
    financial_stability_score REAL,
    notes                    TEXT,
    evaluated_by             TEXT,
    evaluation_date          DATE,
    next_evaluation_date     DATE,
    created_at               DATE,
    updated_at               DATE
);

INSERT INTO supplier_performance_dashboard VALUES
(1, 501, '2023-Q1', 96.5, 88.0, 2.5, 92.0, 2, 2000000, 1, 1, 85.0, 78.0, 90.0, 95.0, 'Good overall', 'managerA', '2023-04-01', '2023-07-01', '2023-04-01', '2023-04-01');

INSERT INTO supplier_performance_dashboard VALUES
(2, 502, '2023-Q1', 89.0, 75.0, 5.0, 80.0, 3, 1500000, 3, 2, 70.0, 65.0, 75.0, 85.0, 'Needs improvement in quality', 'managerB', '2023-04-01', '2023-07-01', '2023-04-01', '2023-04-01');

INSERT INTO supplier_performance_dashboard VALUES
(3, 503, '2023-Q1', 98.0, 92.0, 1.0, 95.0, 1, 2500000, 0, 0, 90.0, 88.0, 95.0, 98.0, 'Excellent supplier', 'managerC', '2023-04-01', '2023-07-01', '2023-04-01', '2023-04-01');

-- Employee commute log
CREATE TABLE employee_commute_log
(
    log_id               INTEGER PRIMARY KEY,
    employee_id          INTEGER NOT NULL,
    commute_date         DATE NOT NULL,
    departure_time       TEXT,
    arrival_time         TEXT,
    mode_of_transport    TEXT,
    distance_km          REAL,
    carbon_emission_kg   REAL,
    traffic_delay_minutes INTEGER,
    weather_condition    TEXT,
    notes                TEXT,
    recorded_by          TEXT,
    created_at           DATE,
    updated_at           DATE,
    approval_status      TEXT,
    approver_id          INTEGER,
    reason               TEXT,
    start_location       TEXT,
    end_location         TEXT,
    mileage_km           REAL
);

INSERT INTO employee_commute_log VALUES
(1, 10001, '2023-03-01', '07:30', '08:15', 'car', 15.2, 3.5, 12, 'clear', 'On time', 'hr_admin', '2023-03-01', '2023-03-01', 'approved', 2001, 'regular commute', 'HomeA', 'Branch101', 15.2);

INSERT INTO employee_commute_log VALUES
(2, 10002, '2023-03-01', '08:00', '08:50', 'bus', 12.0, 2.1, 20, 'rain', 'Late due to traffic', 'hr_admin', '2023-03-01', '2023-03-01', 'approved', 2002, 'bus delay', 'HomeB', 'Branch102', 12.0);

INSERT INTO employee_commute_log VALUES
(3, 10003, '2023-03-01', '06:45', '07:30', 'bike', 8.5, 0.0, 0, 'clear', 'No issues', 'hr_admin', '2023-03-01', '2023-03-01', 'approved', 2003, 'eco-friendly commute', 'HomeC', 'Branch103', 8.5);