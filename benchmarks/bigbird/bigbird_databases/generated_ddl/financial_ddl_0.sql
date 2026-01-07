-- Branch information
CREATE TABLE branch_info
(
    branch_id               INTEGER PRIMARY KEY,
    branch_name             TEXT NOT NULL,
    street_address          TEXT NOT NULL,
    city                    TEXT NOT NULL,
    state_code              TEXT NOT NULL,
    zip_code                TEXT NOT NULL,
    established_date        DATE NOT NULL,
    manager_name            TEXT NOT NULL,
    contact_number          TEXT NOT NULL,
    email_address           TEXT NOT NULL,
    num_employees           INTEGER NOT NULL,
    total_assets            REAL NOT NULL,
    region_code             TEXT NOT NULL,
    opening_hour            TEXT NOT NULL,
    closing_hour            TEXT NOT NULL,
    parking_spaces          INTEGER NOT NULL,
    security_level          TEXT NOT NULL,
    iso_certified           TEXT NOT NULL,
    sustainability_score    REAL NOT NULL,
    crisis_plan_version     TEXT NOT NULL
);

INSERT INTO branch_info VALUES (1, 'CentralBranch', '123 Main St', 'Metropolis', 'NY', '10001', '1995-06-15', 'Alice Johnson', '555-0100', 'central@bank.com', 250, 12500000.50, 'NE', '08:00', '17:00', 45, 'High', 'Yes', 92.5, 'v2023');
INSERT INTO branch_info VALUES (2, 'WestSideBranch', '456 West Ave', 'Gotham', 'IL', '60607', '2001-09-01', 'Bob Smith', '555-0200', 'westside@bank.com', 180, 8200000.00, 'MW', '09:00', '18:00', 30, 'Medium', 'No', 88.0, 'v2022');
INSERT INTO branch_info VALUES (3, 'EastEndBranch', '789 East Blvd', 'StarCity', 'CA', '90002', '2010-03-20', 'Carol Lee', '555-0300', 'eastend@bank.com', 200, 9450000.75, 'SW', '07:30', '16:30', 40, 'High', 'Yes', 90.3, 'v2023');

-- Employee records
CREATE TABLE employee
(
    employee_id            INTEGER PRIMARY KEY,
    first_name             TEXT NOT NULL,
    last_name              TEXT NOT NULL,
    birth_date             DATE NOT NULL,
    hire_date              DATE NOT NULL,
    position               TEXT NOT NULL,
    department             TEXT NOT NULL,
    salary                 REAL NOT NULL,
    bonus_percent          REAL NOT NULL,
    employment_type        TEXT NOT NULL,
    work_location          TEXT NOT NULL,
    office_number          TEXT NOT NULL,
    phone_extension        TEXT NOT NULL,
    email_address          TEXT NOT NULL,
    manager_id             INTEGER NOT NULL,
    performance_rating     INTEGER NOT NULL,
    training_hours         INTEGER NOT NULL,
    certifications         TEXT NOT NULL,
    security_clearance    TEXT NOT NULL,
    last_promotion_date    DATE NOT NULL
);

INSERT INTO employee VALUES (101, 'David', 'Brown', '1985-04-12', '2010-05-01', 'Analyst', 'Finance', 72000.00, 5.0, 'FullTime', 'HQ', '101A', '1234', 'david.brown@bank.com', 201, 4, 40, 'CFA', 'Level2', '2022-07-01');
INSERT INTO employee VALUES (102, 'Emma', 'Davis', '1990-11-23', '2015-08-15', 'Senior Analyst', 'Finance', 85000.00, 7.5, 'FullTime', 'HQ', '102B', '5678', 'emma.davis@bank.com', 201, 5, 55, 'CFA,CPA', 'Level3', '2023-03-15');
INSERT INTO employee VALUES (103, 'Frank', 'Miller', '1978-02-05', '2008-01-20', 'Branch Manager', 'Operations', 95000.00, 10.0, 'FullTime', 'WestSideBranch', '201C', '9101', 'frank.miller@bank.com', 0, 5, 60, 'MBA', 'Level4', '2021-11-30');

-- ATM network details
CREATE TABLE atm_network
(
    atm_id                 INTEGER PRIMARY KEY,
    location_desc          TEXT NOT NULL,
    city                   TEXT NOT NULL,
    state_code             TEXT NOT NULL,
    latitude               REAL NOT NULL,
    longitude              REAL NOT NULL,
    installation_date      DATE NOT NULL,
    vendor                 TEXT NOT NULL,
    cash_capacity          INTEGER NOT NULL,
    refill_interval_days   INTEGER NOT NULL,
    last_refill_date       DATE NOT NULL,
    status                 TEXT NOT NULL,
    uptime_percent         REAL NOT NULL,
    firmware_version       TEXT NOT NULL,
    network_zone           TEXT NOT NULL,
    power_backup_type      TEXT NOT NULL,
    anti_tamper_level      TEXT NOT NULL,
    surveillance_camera    TEXT NOT NULL,
    maintenance_contract_id INTEGER NOT NULL,
    last_maintenance_date  DATE NOT NULL
);

INSERT INTO atm_network VALUES (1001, 'Mall Entrance', 'Metropolis', 'NY', 40.7128, -74.0060, '2012-04-10', 'NCR', 10000, 30, '2023-07-01', 'Active', 99.5, 'v3.2', 'ZoneA', 'Battery', 'Level3', 'Yes', 501, '2023-06-20');
INSERT INTO atm_network VALUES (1002, 'Station Plaza', 'Gotham', 'IL', 41.8781, -87.6298, '2015-09-22', 'Diebold', 12000, 25, '2023-06-15', 'Active', 98.7, 'v3.5', 'ZoneB', 'UPS', 'Level2', 'Yes', 502, '2023-05-30');
INSERT INTO atm_network VALUES (1003, 'Airport Terminal', 'StarCity', 'CA', 34.0522, -118.2437, '2018-01-05', 'GRG', 15000, 20, '2023-07-10', 'Active', 99.9, 'v4.0', 'ZoneC', 'Hybrid', 'Level4', 'Yes', 503, '2023-07-05');

-- Marketing campaign information
CREATE TABLE marketing_campaign
(
    campaign_id            INTEGER PRIMARY KEY,
    campaign_name          TEXT NOT NULL,
    start_date             DATE NOT NULL,
    end_date               DATE NOT NULL,
    budget                 REAL NOT NULL,
    channel                TEXT NOT NULL,
    target_audience        TEXT NOT NULL,
    region                 TEXT NOT NULL,
    expected_response_rate REAL NOT NULL,
    actual_response_rate   REAL NOT NULL,
    impressions            INTEGER NOT NULL,
    clicks                 INTEGER NOT NULL,
    conversions            INTEGER NOT NULL,
    cost_per_acquisition   REAL NOT NULL,
    creative_type          TEXT NOT NULL,
    approval_status        TEXT NOT NULL,
    compliance_flag        TEXT NOT NULL,
    created_by             TEXT NOT NULL,
    last_updated_by        TEXT NOT NULL,
    notes                  TEXT NOT NULL
);

INSERT INTO marketing_campaign VALUES (2001, 'SummerSavings', '2023-06-01', '2023-08-31', 250000.00, 'Online', 'YoungAdults', 'NE', 0.04, 0.045, 500000, 20000, 1500, 166.67, 'Video', 'Approved', 'Yes', 'Alice', 'Bob', 'Successful');
INSERT INTO marketing_campaign VALUES (2002, 'HolidayBonus', '2023-11-01', '2023-12-31', 300000.00, 'TV', 'Families', 'MW', 0.03, 0.028, 400000, 12000, 900, 333.33, 'Spot', 'Pending', 'No', 'Carol', 'Dave', 'Under review');
INSERT INTO marketing_campaign VALUES (2003, 'NewYearInvest', '2024-01-01', '2024-02-28', 150000.00, 'Email', 'Retirees', 'SW', 0.05, 0.052, 250000, 8000, 700, 214.29, 'Banner', 'Approved', 'Yes', 'Eve', 'Frank', 'On track');

-- Currency exchange rates
CREATE TABLE currency_exchange_rate
(
    currency_pair          TEXT PRIMARY KEY,
    rate_date              DATE NOT NULL,
    rate_value             REAL NOT NULL,
    source                 TEXT NOT NULL,
    is_historical          TEXT NOT NULL,
    created_at             DATE NOT NULL,
    updated_at             DATE NOT NULL,
    provider               TEXT NOT NULL,
    precision_digits       INTEGER NOT NULL,
    base_currency          TEXT NOT NULL,
    quote_currency         TEXT NOT NULL,
    volatility_index       REAL NOT NULL,
    spread                 REAL NOT NULL,
    mid_price              REAL NOT NULL,
    bid_price              REAL NOT NULL,
    ask_price              REAL NOT NULL,
    market                 TEXT NOT NULL,
    trading_session        TEXT NOT NULL,
    adjustment_factor      REAL NOT NULL,
    notes                  TEXT NOT NULL,
    status                 TEXT NOT NULL
);

INSERT INTO currency_exchange_rate VALUES ('USD/EUR', '2023-07-10', 0.9123, 'Forex', 'No', '2023-07-10', '2023-07-10', 'ProviderA', 5, 'USD', 'EUR', 0.12, 0.0005, 0.9125, 0.9120, 0.9130, 'Eurozone', 'Session1', 1.0, 'Spot rate', 'Active');
INSERT INTO currency_exchange_rate VALUES ('USD/JPY', '2023-07-10', 145.23, 'Forex', 'No', '2023-07-10', '2023-07-10', 'ProviderB', 3, 'USD', 'JPY', 0.08, 0.02, 145.25, 145.20, 145.30, 'Asia', 'Session2', 1.0, 'Spot rate', 'Active');
INSERT INTO currency_exchange_rate VALUES ('GBP/USD', '2023-07-10', 1.2735, 'Forex', 'No', '2023-07-10', '2023-07-10', 'ProviderC', 5, 'GBP', 'USD', 0.10, 0.0004, 1.2736, 1.2734, 1.2738, 'UK', 'Session3', 1.0, 'Spot rate', 'Active');

-- Regulatory report tracking
CREATE TABLE regulatory_report
(
    report_id              INTEGER PRIMARY KEY,
    report_name            TEXT NOT NULL,
    period_start           DATE NOT NULL,
    period_end             DATE NOT NULL,
    filing_date            DATE NOT NULL,
    regulator              TEXT NOT NULL,
    status                 TEXT NOT NULL,
    file_path              TEXT NOT NULL,
    checksum               TEXT NOT NULL,
    data_volume_mb         REAL NOT NULL,
    approved_by            TEXT NOT NULL,
    review_comments        TEXT NOT NULL,
    risk_score             REAL NOT NULL,
    compliance_areas       TEXT NOT NULL,
    version                TEXT NOT NULL,
    last_modified          DATE NOT NULL,
    created_by             TEXT NOT NULL,
    priority               TEXT NOT NULL,
    escalation_level       TEXT NOT NULL,
    notes                  TEXT NOT NULL
);

INSERT INTO regulatory_report VALUES (3001, 'QuarterlyLiquidity', '2023-01-01', '2023-03-31', '2023-04-15', 'FINRA', 'Filed', '/reports/q1.pdf', 'AB12CD34', 5.2, 'John', 'All good', 2.1, 'Liquidity', 'v1.0', '2023-04-15', 'Alice', 'High', 'Level1', 'No issues');
INSERT INTO regulatory_report VALUES (3002, 'AnnualCapital', '2022-01-01', '2022-12-31', '2023-02-01', 'SEC', 'Pending', '/reports/annual2022.pdf', 'EF56GH78', 12.7, 'Maria', 'Pending review', 3.4, 'CapitalAdequacy', 'v2.1', '2023-01-20', 'Bob', 'Medium', 'Level2', 'Awaiting approval');
INSERT INTO regulatory_report VALUES (3003, 'StressTestResults', '2023-06-01', '2023-06-30', '2023-07-10', 'ECB', 'Filed', '/reports/stress2023.pdf', 'IJ90KL12', 8.3, 'Liu', 'Passed', 1.8, 'StressTesting', 'v1.3', '2023-07-10', 'Carol', 'High', 'Level1', 'Successful');

-- External partner details
CREATE TABLE external_partner
(
    partner_id             INTEGER PRIMARY KEY,
    company_name           TEXT NOT NULL,
    contact_name           TEXT NOT NULL,
    contact_email          TEXT NOT NULL,
    contact_phone          TEXT NOT NULL,
    partnership_type       TEXT NOT NULL,
    contract_start         DATE NOT NULL,
    contract_end           DATE NOT NULL,
    service_level          TEXT NOT NULL,
    sla_metric             TEXT NOT NULL,
    penalty_rate           REAL NOT NULL,
    annual_fee             REAL NOT NULL,
    region                 TEXT NOT NULL,
    status                 TEXT NOT NULL,
    last_audit_date        DATE NOT NULL,
    compliance_cert        TEXT NOT NULL,
    data_sharing_agreement TEXT NOT NULL,
    risk_assessment_score  REAL NOT NULL,
    notes                  TEXT NOT NULL,
    created_at             DATE NOT NULL
);

INSERT INTO external_partner VALUES (4001, 'TechSolutions', 'Olivia', 'olivia@tech.com', '555-1100', 'Vendor', '2022-01-01', '2025-12-31', 'Gold', '99.5', 0.05, 75000.00, 'NE', 'Active', '2023-05-20', 'ISO27001', 'Yes', 78.5, 'Strategic partner', '2023-01-10');
INSERT INTO external_partner VALUES (4002, 'DataAnalyticsCo', 'Peter', 'peter@da.co', '555-2200', 'Consultant', '2021-06-15', '2024-06-14', 'Silver', '98.0', 0.07, 50000.00, 'MW', 'Active', '2023-04-10', 'ISO9001', 'No', 65.2, 'Performance review pending', '2022-12-01');
INSERT INTO external_partner VALUES (4003, 'SecureLogistics', 'Quinn', 'quinn@securelog.com', '555-3300', 'Outsourcing', '2020-03-01', '2023-02-28', 'Platinum', '99.9', 0.03, 120000.00, 'SW', 'Expired', '2022-12-31', 'ISO22301', 'Yes', 82.0, 'Renewal under negotiation', '2020-02-20');

-- Risk assessment records
CREATE TABLE risk_assessment
(
    assessment_id          INTEGER PRIMARY KEY,
    assessment_date        DATE NOT NULL,
    assessor_name          TEXT NOT NULL,
    risk_category          TEXT NOT NULL,
    risk_score             REAL NOT NULL,
    likelihood             TEXT NOT NULL,
    impact                 TEXT NOT NULL,
    mitigation_plan        TEXT NOT NULL,
    residual_risk          TEXT NOT NULL,
    status                 TEXT NOT NULL,
    review_date            DATE NOT NULL,
    comments               TEXT NOT NULL,
    department             TEXT NOT NULL,
    asset_type             TEXT NOT NULL,
    asset_id               TEXT NOT NULL,
    control_effectiveness  TEXT NOT NULL,
    risk_trend             TEXT NOT NULL,
    priority               TEXT NOT NULL,
    escalation_path        TEXT NOT NULL,
    documented_by          TEXT NOT NULL,
    updated_at             DATE NOT NULL
);

INSERT INTO risk_assessment VALUES (5001, '2023-07-01', 'Nina', 'Operational', 3.5, 'Medium', 'High', 'Upgrade systems', 'Low', 'Open', '2023-07-15', 'Needs monitoring', 'Operations', 'Server', 'SVR123', 'Effective', 'Rising', 'High', 'Level1', 'John', '2023-07-10');
INSERT INTO risk_assessment VALUES (5002, '2023-06-15', 'Oscar', 'Compliance', 2.1, 'Low', 'Medium', 'Policy revision', 'Very Low', 'Closed', '2023-07-01', 'Resolved', 'Legal', 'Document', 'DOC456', 'Very Effective', 'Stable', 'Medium', 'Level2', 'Alice', '2023-06-30');
INSERT INTO risk_assessment VALUES (5003, '2023-05-20', 'Paula', 'Strategic', 4.2, 'High', 'Critical', 'New market analysis', 'Medium', 'Open', '2023-06-05', 'Under evaluation', 'Strategy', 'Market', 'MKT789', 'Partial', 'Increasing', 'Critical', 'Level1', 'Bob', '2023-06-01');

-- Policy document catalogue
CREATE TABLE policy_document
(
    policy_id              INTEGER PRIMARY KEY,
    title                  TEXT NOT NULL,
    version                TEXT NOT NULL,
    effective_date         DATE NOT NULL,
    expiration_date        DATE NOT NULL,
    department             TEXT NOT NULL,
    author                 TEXT NOT NULL,
    reviewer               TEXT NOT NULL,
    approval_status        TEXT NOT NULL,
    policy_type            TEXT NOT NULL,
    confidentiality_level  TEXT NOT NULL,
    related_regulation     TEXT NOT NULL,
    distribution_list      TEXT NOT NULL,
    last_review_date       DATE NOT NULL,
    change_summary         TEXT NOT NULL,
    file_path              TEXT NOT NULL,
    checksum               TEXT NOT NULL,
    status                 TEXT NOT NULL,
    archive_flag           TEXT NOT NULL,
    notes                  TEXT NOT NULL
);

INSERT INTO policy_document VALUES (6001, 'DataPrivacyPolicy', 'v1.2', '2022-01-01', '2025-12-31', 'IT', 'Laura', 'Mark', 'Approved', 'Internal', 'Confidential', 'GDPR', 'AllStaff', '2023-06-01', 'Minor wording updates', '/policies/privacy.pdf', 'AA11BB22', 'Active', 'No', 'Reviewed annually');
INSERT INTO policy_document VALUES (6002, 'BusinessContinuityPlan', 'v3.0', '2021-07-01', '2024-06-30', 'Operations', 'Sam', 'Nina', 'Approved', 'External', 'Restricted', 'ISO22301', 'BCMTeam', '2023-05-15', 'Added new scenario', '/policies/bcp.pdf', 'CC33DD44', 'Active', 'No', 'Next review 2023-12-01');
INSERT INTO policy_document VALUES (6003, 'EmployeeCodeOfConduct', 'v2.5', '2020-03-15', '2023-03-14', 'HR', 'Tina', 'Oliver', 'Approved', 'Internal', 'Public', 'None', 'AllEmployees', '2022-12-10', 'Updated harassment clause', '/policies/conduct.pdf', 'EE55FF66', 'Expired', 'Yes', 'Archived after expiration');

-- System audit log
CREATE TABLE audit_log
(
    log_id                 INTEGER PRIMARY KEY,
    event_timestamp        TEXT NOT NULL,
    user_id                INTEGER NOT NULL,
    operation_type         TEXT NOT NULL,
    object_type            TEXT NOT NULL,
    object_id              INTEGER NOT NULL,
    ip_address             TEXT NOT NULL,
    device_id              TEXT NOT NULL,
    description            TEXT NOT NULL,
    outcome                TEXT NOT NULL,
    severity               TEXT NOT NULL,
    session_id             TEXT NOT NULL,
    application            TEXT NOT NULL,
    tenant_id              TEXT NOT NULL,
    region                 TEXT NOT NULL,
    correlation_id         TEXT NOT NULL,
    extra_info             TEXT NOT NULL,
    source_module          TEXT NOT NULL,
    duration_ms            INTEGER NOT NULL,
    status_code            TEXT NOT NULL
);

INSERT INTO audit_log VALUES (7001, '2023-07-10 09:15:23', 101, 'Login', 'UserAccount', 101, '192.168.1.10', 'DEV001', 'User login successful', 'Success', 'Low', 'SID12345', 'WebPortal', 'T001', 'NE', 'CORR001', 'N/A', 'AuthModule', 120, '200');
INSERT INTO audit_log VALUES (7002, '2023-07-10 09:45:01', 102, 'Update', 'CustomerRecord', 2005, '192.168.1.12', 'DEV002', 'Updated address field', 'Success', 'Medium', 'SID12346', 'CRM', 'T001', 'NE', 'CORR002', 'Changed street address', 'DataModule', 250, '200');
INSERT INTO audit_log VALUES (7003, '2023-07-10 10:05:45', 103, 'Delete', 'TemporaryFile', 3021, '192.168.1.15', 'DEV003', 'Deleted temp file after processing', 'Success', 'Low', 'SID12347', 'BatchJob', 'T001', 'NE', 'CORR003', 'File size 2MB', 'CleanupModule', 80, '200');