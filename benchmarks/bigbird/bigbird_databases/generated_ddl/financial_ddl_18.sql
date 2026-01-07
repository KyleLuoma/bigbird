-- Advisory sessions for financial guidance
CREATE TABLE advisory_session
(
    session_id               INTEGER PRIMARY KEY,
    advisor_name             TEXT,
    session_date             DATE,
    session_type             TEXT,
    duration_minutes         INTEGER,
    meeting_mode             TEXT,
    location                 TEXT,
    topic                    TEXT,
    client_segment           TEXT,
    outcome                  TEXT,
    rating                   INTEGER,
    follow_up_required       TEXT,
    next_session_date        DATE,
    notes                    TEXT,
    session_fee              REAL,
    currency                 TEXT,
    session_category         TEXT,
    client_feedback_score    INTEGER,
    confidential_flag        INTEGER,
    recorded_by              TEXT
);

INSERT INTO advisory_session (session_id, advisor_name, session_date, session_type, duration_minutes, meeting_mode, location, topic, client_segment, outcome, rating, follow_up_required, next_session_date, notes, session_fee, currency, session_category, client_feedback_score, confidential_flag, recorded_by)
VALUES (1, 'AliceSmith', '2023-03-10', 'Financial', 60, 'InPerson', 'MainBranch', 'Retirement', 'HighNetWorth', 'Success', 5, 'Yes', '2023-06-10', 'Initial meeting', 200.0, 'USD', 'Premium', 9, 0, 'BobAdmin');

INSERT INTO advisory_session (session_id, advisor_name, session_date, session_type, duration_minutes, meeting_mode, location, topic, client_segment, outcome, rating, follow_up_required, next_session_date, notes, session_fee, currency, session_category, client_feedback_score, confidential_flag, recorded_by)
VALUES (2, 'JohnDoe', '2023-04-22', 'Investment', 45, 'Virtual', 'Remote', 'PortfolioReview', 'MassMarket', 'Partial', 4, 'No', NULL, 'Quarterly check', 150.0, 'EUR', 'Standard', 7, 1, 'EveMgr');

INSERT INTO advisory_session (session_id, advisor_name, session_date, session_type, duration_minutes, meeting_mode, location, topic, client_segment, outcome, rating, follow_up_required, next_session_date, notes, session_fee, currency, session_category, client_feedback_score, confidential_flag, recorded_by)
VALUES (3, 'MariaLee', '2023-05-05', 'Tax', 30, 'Phone', 'Branch101', 'TaxPlanning', 'SME', 'Success', 5, 'Yes', '2023-09-05', 'Follow‑up scheduled', 120.0, 'GBP', 'Basic', 8, 0, 'SamOps');

-- Security devices installed at branches
CREATE TABLE branch_security_device
(
    device_id                     INTEGER PRIMARY KEY,
    branch_id                     INTEGER,
    device_type                   TEXT,
    install_date                  DATE,
    manufacturer                  TEXT,
    model_number                  TEXT,
    firmware_version              TEXT,
    ip_address                    TEXT,
    mac_address                   TEXT,
    status                        TEXT,
    last_inspection_date          DATE,
    inspection_result             TEXT,
    warranty_expiration           DATE,
    serial_number                 TEXT,
    location_within_branch        TEXT,
    camera_resolution             TEXT,
    motion_detection_enabled      INTEGER,
    tamper_alert_enabled          INTEGER,
    maintenance_schedule          TEXT,
    notes                         TEXT
);

INSERT INTO branch_security_device (device_id, branch_id, device_type, install_date, manufacturer, model_number, firmware_version, ip_address, mac_address, status, last_inspection_date, inspection_result, warranty_expiration, serial_number, location_within_branch, camera_resolution, motion_detection_enabled, tamper_alert_enabled, maintenance_schedule, notes)
VALUES (101, 12, 'CCTV', '2022-01-15', 'SecureCam', 'SC-200', 'v1.3', '192.168.10.10', 'AA:BB:CC:DD:EE:01', 'Active', '2023-02-20', 'Pass', '2025-01-15', 'SN1001', 'Lobby', '1080p', 1, 1, 'Quarterly', 'Main entrance coverage');

INSERT INTO branch_security_device (device_id, branch_id, device_type, install_date, manufacturer, model_number, firmware_version, ip_address, mac_address, status, last_inspection_date, inspection_result, warranty_expiration, serial_number, location_within_branch, camera_resolution, motion_detection_enabled, tamper_alert_enabled, maintenance_schedule, notes)
VALUES (102, 12, 'AccessControl', '2021-11-05', 'GateLock', 'GL-500', 'v2.0', '192.168.10.11', 'AA:BB:CC:DD:EE:02', 'Active', '2023-03-10', 'Pass', '2024-11-05', 'SN1002', 'VaultDoor', NULL, 1, 0, 'Annual', 'Biometric entry');

INSERT INTO branch_security_device (device_id, branch_id, device_type, install_date, manufacturer, model_number, firmware_version, ip_address, mac_address, status, last_inspection_date, inspection_result, warranty_expiration, serial_number, location_within_branch, camera_resolution, motion_detection_enabled, tamper_alert_enabled, maintenance_schedule, notes)
VALUES (103, 13, 'CCTV', '2022-06-30', 'SecureCam', 'SC-210', 'v1.4', '192.168.20.10', 'AA:BB:CC:DD:EE:03', 'Inactive', '2023-01-12', 'Fail', '2026-06-30', 'SN2001', 'ParkingLot', '720p', 0, 1, 'Biannual', 'Pending replacement');

-- Mobile device usage statistics
CREATE TABLE mobile_device_usage
(
    usage_id                INTEGER PRIMARY KEY,
    device_id               TEXT,
    user_id                 TEXT,
    device_type             TEXT,
    os_version              TEXT,
    app_version             TEXT,
    last_sync               DATE,
    data_used_mb            INTEGER,
    active_minutes          INTEGER,
    battery_level           INTEGER,
    network_type            TEXT,
    location_city           TEXT,
    location_country        TEXT,
    failed_sync_count       INTEGER,
    security_status         TEXT,
    enrollment_date         DATE,
    policy_compliant        INTEGER,
    last_update             DATE,
    push_notifications_enabled INTEGER,
    notes                   TEXT
);

INSERT INTO mobile_device_usage (usage_id, device_id, user_id, device_type, os_version, app_version, last_sync, data_used_mb, active_minutes, battery_level, network_type, location_city, location_country, failed_sync_count, security_status, enrollment_date, policy_compliant, last_update, push_notifications_enabled, notes)
VALUES (1, 'DEV001', 'USR100', 'Smartphone', 'iOS15', '1.2.3', '2023-05-01', 350, 120, 80, 'WiFi', 'Berlin', 'Germany', 0, 'Secure', '2022-12-01', 1, '2023-05-01', 1, 'Initial rollout');

INSERT INTO mobile_device_usage (usage_id, device_id, user_id, device_type, os_version, app_version, last_sync, data_used_mb, active_minutes, battery_level, network_type, location_city, location_country, failed_sync_count, security_status, enrollment_date, policy_compliant, last_update, push_notifications_enabled, notes)
VALUES (2, 'DEV002', 'USR101', 'Tablet', 'Android12', '1.2.5', '2023-05-02', 500, 90, 65, 'LTE', 'Paris', 'France', 2, 'Warning', '2023-01-15', 0, '2023-05-02', 0, 'Policy breach detected');

INSERT INTO mobile_device_usage (usage_id, device_id, user_id, device_type, os_version, app_version, last_sync, data_used_mb, active_minutes, battery_level, network_type, location_city, location_country, failed_sync_count, security_status, enrollment_date, policy_compliant, last_update, push_notifications_enabled, notes)
VALUES (3, 'DEV003', 'USR102', 'Smartphone', 'iOS14', '1.2.0', '2023-04-28', 200, 60, 90, '5G', 'Madrid', 'Spain', 0, 'Secure', '2022-10-20', 1, '2023-04-28', 1, 'No issues');

-- Digital onboarding process steps
CREATE TABLE digital_onboarding_step
(
    step_id                INTEGER PRIMARY KEY,
    process_name           TEXT,
    step_number            INTEGER,
    step_name              TEXT,
    required               INTEGER,
    created_date           DATE,
    owner_department       TEXT,
    estimated_duration_minutes INTEGER,
    documentation_url      TEXT,
    validation_rule        TEXT,
    next_step_id           INTEGER,
    previous_step_id       INTEGER,
    status                 TEXT,
    completion_date        DATE,
    notes                  TEXT,
    approval_required      INTEGER,
    approved_by            TEXT,
    approval_date          DATE,
    escalation_path        TEXT,
    risk_level             TEXT
);

INSERT INTO digital_onboarding_step (step_id, process_name, step_number, step_name, required, created_date, owner_department, estimated_duration_minutes, documentation_url, validation_rule, next_step_id, previous_step_id, status, completion_date, notes, approval_required, approved_by, approval_date, escalation_path, risk_level)
VALUES (1, 'AccountOpen', 1, 'IdentityVerification', 1, '2022-01-01', 'Compliance', 15, 'http://docs.bank/identity', 'MatchID', 2, NULL, 'Completed', '2022-01-02', 'Verified via passport', 1, 'JaneDoe', '2022-01-02', 'LegalTeam', 'Low');

INSERT INTO digital_onboarding_step (step_id, process_name, step_number, step_name, required, created_date, owner_department, estimated_duration_minutes, documentation_url, validation_rule, next_step_id, previous_step_id, status, completion_date, notes, approval_required, approved_by, approval_date, escalation_path, risk_level)
VALUES (2, 'AccountOpen', 2, 'AddressProof', 1, '2022-01-01', 'Compliance', 10, 'http://docs.bank/address', 'UtilityBill', 3, 1, 'Completed', '2022-01-02', 'Utility bill accepted', 1, 'JaneDoe', '2022-01-02', 'LegalTeam', 'Low');

INSERT INTO digital_onboarding_step (step_id, process_name, step_number, step_name, required, created_date, owner_department, estimated_duration_minutes, documentation_url, validation_rule, next_step_id, previous_step_id, status, completion_date, notes, approval_required, approved_by, approval_date, escalation_path, risk_level)
VALUES (3, 'AccountOpen', 3, 'InitialDeposit', 0, '2022-01-01', 'Operations', 5, 'http://docs.bank/deposit', 'MinAmount', NULL, 2, 'Pending', NULL, 'No deposit required for basic account', 0, NULL, NULL, 'CustomerService', 'Medium');

-- Credit risk factor definitions
CREATE TABLE credit_risk_factor
(
    factor_id              INTEGER PRIMARY KEY,
    factor_name            TEXT,
    description            TEXT,
    weight                 REAL,
    category               TEXT,
    source                 TEXT,
    last_updated           DATE,
    data_type              TEXT,
    min_value              REAL,
    max_value              REAL,
    threshold              REAL,
    alert_level            TEXT,
    applicable_region      TEXT,
    applicable_product     TEXT,
    active_flag            INTEGER,
    created_by             TEXT,
    creation_date          DATE,
    version                INTEGER,
    risk_score             INTEGER,
    notes                  TEXT
);

INSERT INTO credit_risk_factor (factor_id, factor_name, description, weight, category, source, last_updated, data_type, min_value, max_value, threshold, alert_level, applicable_region, applicable_product, active_flag, created_by, creation_date, version, risk_score, notes)
VALUES (1, 'PaymentHistory', 'Late payments in last 12 months', 0.35, 'Behavioral', 'Internal', '2023-04-01', 'Integer', 0, 10, 3, 'High', 'EU', 'All', 1, 'RiskTeam', '2023-01-15', 2, 85, 'Key driver of credit score');

INSERT INTO credit_risk_factor (factor_id, factor_name, description, weight, category, source, last_updated, data_type, min_value, max_value, threshold, alert_level, applicable_region, applicable_product, active_flag, created_by, creation_date, version, risk_score, notes)
VALUES (2, 'DebtToIncome', 'Ratio of total debt to income', 0.25, 'Financial', 'CreditBureau', '2023-03-20', 'Float', 0.0, 5.0, 0.4, 'Medium', 'NA', 'Loans', 1, 'RiskTeam', '2022-12-01', 1, 70, 'Higher ratio increases risk');

INSERT INTO credit_risk_factor (factor_id, factor_name, description, weight, category, source, last_updated, data_type, min_value, max_value, threshold, alert_level, applicable_region, applicable_product, active_flag, created_by, creation_date, version, risk_score, notes)
VALUES (3, 'AccountAge', 'Number of years since account opening', 0.15, 'Historical', 'Internal', '2023-02-15', 'Integer', 0, 30, 2, 'Low', 'APAC', 'CreditCards', 1, 'RiskTeam', '2023-02-01', 1, 60, 'Longer history reduces risk');

-- Investment strategy configurations
CREATE TABLE investment_strategy
(
    strategy_id                  INTEGER PRIMARY KEY,
    name                         TEXT,
    objective                    TEXT,
    risk_level                   TEXT,
    asset_allocation_equity      REAL,
    asset_allocation_fixed_income REAL,
    asset_allocation_alternatives REAL,
    currency                     TEXT,
    target_return                REAL,
    time_horizon_years           INTEGER,
    created_date                 DATE,
    created_by                   TEXT,
    status                       TEXT,
    last_review_date             DATE,
    reviewed_by                  TEXT,
    description                  TEXT,
    min_investment_amount        REAL,
    benchmark_index              TEXT,
    rebalancing_frequency        TEXT,
    notes                        TEXT
);

INSERT INTO investment_strategy (strategy_id, name, objective, risk_level, asset_allocation_equity, asset_allocation_fixed_income, asset_allocation_alternatives, currency, target_return, time_horizon_years, created_date, created_by, status, last_review_date, reviewed_by, description, min_investment_amount, benchmark_index, rebalancing_frequency, notes)
VALUES (1, 'GrowthPlus', 'Capital appreciation', 'High', 0.70, 0.20, 0.10, 'USD', 0.12, 7, '2022-06-01', 'InvestMgr', 'Active', '2023-01-15', 'SeniorInv', 'Aggressive growth with equity tilt', 50000, 'S&P500', 'Annual', 'Suitable for long‑term investors');

INSERT INTO investment_strategy (strategy_id, name, objective, risk_level, asset_allocation_equity, asset_allocation_fixed_income, asset_allocation_alternatives, currency, target_return, time_horizon_years, created_date, created_by, status, last_review_date, reviewed_by, description, min_investment_amount, benchmark_index, rebalancing_frequency, notes)
VALUES (2, 'BalancedIncome', 'Stable income', 'Medium', 0.40, 0.50, 0.10, 'EUR', 0.06, 5, '2021-09-15', 'InvestMgr', 'Active', '2022-12-20', 'SeniorInv', 'Balanced mix for moderate risk', 25000, 'EuroStoxx50', 'SemiAnnual', 'Targets dividend yield');

INSERT INTO investment_strategy (strategy_id, name, objective, risk_level, asset_allocation_equity, asset_allocation_fixed_income, asset_allocation_alternatives, currency, target_return, time_horizon_years, created_date, created_by, status, last_review_date, reviewed_by, description, min_investment_amount, benchmark_index, rebalancing_frequency, notes)
VALUES (3, 'ConservativeCapital', 'Capital preservation', 'Low', 0.20, 0.70, 0.10, 'GBP', 0.04, 3, '2020-03-10', 'InvestMgr', 'Active', '2023-02-05', 'SeniorInv', 'Focus on fixed income and cash equivalents', 10000, 'FTSE100', 'Quarterly', 'Ideal for risk‑averse clients');

-- Tax filing records
CREATE TABLE tax_filing_record
(
    filing_id               INTEGER PRIMARY KEY,
    tax_year                INTEGER,
    taxpayer_id             TEXT,
    filing_status           TEXT,
    submission_date         DATE,
    approval_date           DATE,
    tax_amount              REAL,
    refund_amount           REAL,
    penalty_amount          REAL,
    interest_amount         REAL,
    tax_form_type           TEXT,
    filing_method           TEXT,
    prepared_by             TEXT,
    reviewed_by             TEXT,
    notes                   TEXT,
    audit_flag              INTEGER,
    region_code             TEXT,
    currency                TEXT,
    payment_due_date        DATE,
    payment_status          TEXT
);

INSERT INTO tax_filing_record (filing_id, tax_year, taxpayer_id, filing_status, submission_date, approval_date, tax_amount, refund_amount, penalty_amount, interest_amount, tax_form_type, filing_method, prepared_by, reviewed_by, notes, audit_flag, region_code, currency, payment_due_date, payment_status)
VALUES (1, 2022, 'TAX12345', 'Submitted', '2023-04-15', NULL, 15000.00, 0.00, 0.00, 0.00, 'FormA', 'Electronic', 'JohnAuditor', 'JaneReviewer', 'Standard corporate filing', 0, 'EU', 'EUR', '2023-05-31', 'Pending');

INSERT INTO tax_filing_record (filing_id, tax_year, taxpayer_id, filing_status, submission_date, approval_date, tax_amount, refund_amount, penalty_amount, interest_amount, tax_form_type, filing_method, prepared_by, reviewed_by, notes, audit_flag, region_code, currency, payment_due_date, payment_status)
VALUES (2, 2022, 'TAX67890', 'Approved', '2023-04-10', '2023-04-20', 8000.00, 200.00, 0.00, 0.00, 'FormB', 'Paper', 'AlicePrep', 'BobReview', 'Late filing but no penalties', 0, 'NA', 'USD', '2023-06-15', 'Paid');

INSERT INTO tax_filing_record (filing_id, tax_year, taxpayer_id, filing_status, submission_date, approval_date, tax_amount, refund_amount, penalty_amount, interest_amount, tax_form_type, filing_method, prepared_by, reviewed_by, notes, audit_flag, region_code, currency, payment_due_date, payment_status)
VALUES (3, 2021, 'TAX54321', 'Rejected', '2022-04-12', NULL, 12000.00, 0.00, 500.00, 30.00, 'FormC', 'Electronic', 'EvePrep', 'MalloryReview', 'Missing attachment', 1, 'APAC', 'JPY', '2022-05-31', 'Unpaid');

-- Regulatory notifications
CREATE TABLE regulatory_notification
(
    notification_id          INTEGER PRIMARY KEY,
    regulation_code          TEXT,
    notification_type        TEXT,
    issued_date              DATE,
    effective_date           DATE,
    expiry_date              DATE,
    issued_by                TEXT,
    description              TEXT,
    severity_level           TEXT,
    target_audience          TEXT,
    distribution_channel     TEXT,
    acknowledged_flag        INTEGER,
    acknowledged_date        DATE,
    action_required          TEXT,
    compliance_deadline      DATE,
    status                   TEXT,
    notes                    TEXT,
    reference_document       TEXT,
    region                   TEXT,
    department_responsible   TEXT
);

INSERT INTO regulatory_notification (notification_id, regulation_code, notification_type, issued_date, effective_date, expiry_date, issued_by, description, severity_level, target_audience, distribution_channel, acknowledged_flag, acknowledged_date, action_required, compliance_deadline, status, notes, reference_document, region, department_responsible)
VALUES (1, 'RC2023-01', 'PolicyUpdate', '2023-03-01', '2023-04-01', '2024-03-31', 'ComplianceDept', 'Update to AML procedures', 'High', 'AllBranches', 'Email', 0, NULL, 'Implement new checks', '2023-06-30', 'Open', 'Awaiting rollout', 'Doc123', 'EU', 'AMLTeam');

INSERT INTO regulatory_notification (notification_id, regulation_code, notification_type, issued_date, effective_date, expiry_date, issued_by, description, severity_level, target_audience, distribution_channel, acknowledged_flag, acknowledged_date, action_required, compliance_deadline, status, notes, reference_document, region, department_responsible)
VALUES (2, 'RC2023-02', 'Guidance', '2023-02-15', '2023-03-01', '2025-02-28', 'RiskManagement', 'Guidance on credit risk modeling', 'Medium', 'RiskAnalysts', 'Portal', 1, '2023-02-20', 'Review models', '2023-09-30', 'Closed', 'All models updated', 'Doc456', 'NA', 'RiskTeam');

INSERT INTO regulatory_notification (notification_id, regulation_code, notification_type, issued_date, effective_date, expiry_date, issued_by, description, severity_level, target_audience, distribution_channel, acknowledged_flag, acknowledged_date, action_required, compliance_deadline, status, notes, reference_document, region, department_responsible)
VALUES (3, 'RC2023-03', 'Alert', '2023-05-10', '2023-05-15', '2023-07-15', 'LegalDept', 'New data privacy requirements', 'Critical', 'IT', 'Intranet', 0, NULL, 'Update data handling', '2023-08-01', 'Open', 'High priority', 'Doc789', 'APAC', 'LegalTeam');

-- Customer onboarding forms metadata
CREATE TABLE customer_onboarding_form
(
    form_id                 INTEGER PRIMARY KEY,
    form_name               TEXT,
    version                 INTEGER,
    created_date            DATE,
    created_by              TEXT,
    last_updated            DATE,
    last_updated_by         TEXT,
    field_count             INTEGER,
    required_fields         INTEGER,
    optional_fields         INTEGER,
    status                  TEXT,
    approval_needed         INTEGER,
    approved_by             TEXT,
    approved_date           DATE,
    submission_method       TEXT,
    digital_signature_required INTEGER,
    privacy_policy_acknowledged INTEGER,
    terms_of_service_acknowledged INTEGER,
    notes                   TEXT,
    region                  TEXT,
    language                TEXT
);

INSERT INTO customer_onboarding_form (form_id, form_name, version, created_date, created_by, last_updated, last_updated_by, field_count, required_fields, optional_fields, status, approval_needed, approved_by, approved_date, submission_method, digital_signature_required, privacy_policy_acknowledged, terms_of_service_acknowledged, notes, region, language)
VALUES (1, 'StandardAccountForm', 3, '2022-01-10', 'FormTeam', '2023-02-01', 'FormTeam', 25, 20, 5, 'Active', 1, 'LegalLead', '2022-01-15', 'Online', 1, 1, 1, 'Most recent version', 'EU', 'EN');

INSERT INTO customer_onboarding_form (form_id, form_name, version, created_date, created_by, last_updated, last_updated_by, field_count, required_fields, optional_fields, status, approval_needed, approved_by, approved_date, submission_method, digital_signature_required, privacy_policy_acknowledged, terms_of_service_acknowledged, notes, region, language)
VALUES (2, 'PremiumAccountForm', 2, '2021-06-05', 'FormTeam', '2023-01-20', 'FormTeam', 30, 25, 5, 'Active', 1, 'LegalLead', '2021-06-10', 'Paper', 1, 1, 1, 'Includes additional compliance fields', 'NA', 'EN');

INSERT INTO customer_onboarding_form (form_id, form_name, version, created_date, created_by, last_updated, last_updated_by, field_count, required_fields, optional_fields, status, approval_needed, approved_by, approved_date, submission_method, digital_signature_required, privacy_policy_acknowledged, terms_of_service_acknowledged, notes, region, language)
VALUES (3, 'BusinessAccountForm', 1, '2020-11-01', 'FormTeam', '2022-12-10', 'FormTeam', 28, 22, 6, 'Deprecated', 0, NULL, NULL, 'Online', 1, 1, 1, 'Replaced by StandardAccountForm', 'APAC', 'EN');

-- Partner service agreements
CREATE TABLE partner_service_agreement
(
    agreement_id                INTEGER PRIMARY KEY,
    partner_id                  INTEGER,
    service_type                TEXT,
    agreement_start             DATE,
    agreement_end               DATE,
    service_level               TEXT,
    price                       REAL,
    currency                    TEXT,
    payment_terms               TEXT,
    renewal_option              TEXT,
    termination_notice_days     INTEGER,
    confidentiality_clause      TEXT,
    liability_limit             REAL,
    governing_law               TEXT,
    dispute_resolution          TEXT,
    created_by                  TEXT,
    creation_date               DATE,
    status                      TEXT,
    notes                       TEXT,
    audit_trail                 TEXT
);

INSERT INTO partner_service_agreement (agreement_id, partner_id, service_type, agreement_start, agreement_end, service_level, price, currency, payment_terms, renewal_option, termination_notice_days, confidentiality_clause, liability_limit, governing_law, dispute_resolution, created_by, creation_date, status, notes, audit_trail)
VALUES (1, 2001, 'DataProcessing', '2022-01-01', '2024-12-31', 'Gold', 150000.00, 'USD', 'Net30', 'Auto', 90, 'Standard', 1000000.00, 'NY', 'Arbitration', 'LegalDept', '2021-12-15', 'Active', 'Core analytics partner', 'Log001');

INSERT INTO partner_service_agreement (agreement_id, partner_id, service_type, agreement_start, agreement_end, service_level, price, currency, payment_terms, renewal_option, termination_notice_days, confidentiality_clause, liability_limit, governing_law, dispute_resolution, created_by, creation_date, status, notes, audit_trail)
VALUES (2, 2002, 'CloudHosting', '2021-06-15', '2023-06-14', 'Silver', 75000.00, 'EUR', 'Net45', 'Manual', 60, 'Extended', 500000.00, 'Berlin', 'Mediation', 'LegalDept', '2021-05-30', 'Expired', 'Hosted primary web services', 'Log002');

INSERT INTO partner_service_agreement (agreement_id, partner_id, service_type, agreement_start, agreement_end, service_level, price, currency, payment_terms, renewal_option, termination_notice_days, confidentiality_clause, liability_limit, governing_law, dispute_resolution, created_by, creation_date, status, notes, audit_trail)
VALUES (3, 2003, 'Consulting', '2023-03-01', '2025-02-28', 'Platinum', 200000.00, 'GBP', 'Net15', 'Auto', 120, 'Strict', 2000000.00, 'London', 'Arbitration', 'LegalDept', '2023-02-20', 'Active', 'Strategic transformation consulting', 'Log003');