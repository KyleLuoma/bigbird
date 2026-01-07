-- Support ticket tracking
CREATE TABLE support_ticket
(
    ticket_id               INTEGER   NOT NULL PRIMARY KEY,
    client_id               INTEGER   NOT NULL,
    opened_date             DATE      NOT NULL,
    closed_date             DATE,
    priority                TEXT      NOT NULL,
    status                  TEXT      NOT NULL,
    channel                 TEXT      NOT NULL,
    subject                 TEXT      NOT NULL,
    description             TEXT,
    assigned_employee_id    INTEGER,
    resolution_code         TEXT,
    sla_met                 INTEGER,
    escalation_level        INTEGER,
    feedback_score          INTEGER,
    product_code            TEXT,
    region                  TEXT,
    created_by              TEXT,
    updated_by              TEXT,
    last_update             DATE,
    notes                   TEXT
);

INSERT INTO support_ticket (ticket_id, client_id, opened_date, closed_date, priority, status, channel, subject, description, assigned_employee_id, resolution_code, sla_met, escalation_level, feedback_score, product_code, region, created_by, updated_by, last_update, notes)
VALUES (1, 101, '2023-01-05', '2023-01-07', 'High', 'Closed', 'Email', 'Login Issue', 'User cannot login after password reset', 12, 'RES001', 1, 0, 5, 'PRD01', 'North', 'system', 'admin', '2023-01-07', 'Resolved quickly');

INSERT INTO support_ticket (ticket_id, client_id, opened_date, closed_date, priority, status, channel, subject, description, assigned_employee_id, resolution_code, sla_met, escalation_level, feedback_score, product_code, region, created_by, updated_by, last_update, notes)
VALUES (2, 202, '2023-02-10', NULL, 'Medium', 'Open', 'Phone', 'Card Decline', 'Card declined during purchase at merchant', 15, NULL, 0, 1, NULL, 'PRD02', 'East', 'system', 'jdoe', '2023-02-10', 'Awaiting response');

INSERT INTO support_ticket (ticket_id, client_id, opened_date, closed_date, priority, status, channel, subject, description, assigned_employee_id, resolution_code, sla_met, escalation_level, feedback_score, product_code, region, created_by, updated_by, last_update, notes)
VALUES (3, 303, '2023-03-15', '2023-03-20', 'Low', 'Closed', 'Chat', 'Statement Request', 'Client requests monthly statement PDF', 9, 'RES002', 1, 0, 4, 'PRD03', 'South', 'system', 'msmith', '2023-03-20', 'Statement emailed');

-- Savings product catalogue
CREATE TABLE savings_product
(
    product_id              INTEGER   NOT NULL PRIMARY KEY,
    product_name            TEXT      NOT NULL,
    interest_rate           REAL,
    minimum_balance         INTEGER,
    currency                TEXT,
    launch_date             DATE,
    term_months             INTEGER,
    early_withdrawal_fee    REAL,
    account_category        TEXT,
    tax_exempt              INTEGER,
    description             TEXT,
    created_by              TEXT,
    created_date            DATE,
    updated_by              TEXT,
    updated_date            DATE,
    status                  TEXT,
    max_deposit             INTEGER,
    penalty_rate            REAL,
    promotional_offer       TEXT,
    eligibility_criteria    TEXT
);

INSERT INTO savings_product (product_id, product_name, interest_rate, minimum_balance, currency, launch_date, term_months, early_withdrawal_fee, account_category, tax_exempt, description, created_by, created_date, updated_by, updated_date, status, max_deposit, penalty_rate, promotional_offer, eligibility_criteria)
VALUES (101, 'Standard Savings', 0.75, 1000, 'USD', '2020-01-01', 0, 25.00, 'Retail', 0, 'Basic savings account with low fee', 'admin', '2020-01-01', 'admin', '2020-01-01', 'Active', 50000, 0.50, 'None', 'All customers');

INSERT INTO savings_product (product_id, product_name, interest_rate, minimum_balance, currency, launch_date, term_months, early_withdrawal_fee, account_category, tax_exempt, description, created_by, created_date, updated_by, updated_date, status, max_deposit, penalty_rate, promotional_offer, eligibility_criteria)
VALUES (102, 'High Yield Savings', 2.15, 5000, 'USD', '2021-06-15', 0, 50.00, 'Retail', 0, 'Higher interest for larger balances', 'admin', '2021-06-15', 'admin', '2021-06-15', 'Active', 200000, 0.75, 'First month bonus', 'Balance >5000');

INSERT INTO savings_product (product_id, product_name, interest_rate, minimum_balance, currency, launch_date, term_months, early_withdrawal_fee, account_category, tax_exempt, description, created_by, created_date, updated_by, updated_date, status, max_deposit, penalty_rate, promotional_offer, eligibility_criteria)
VALUES (103, 'Tax Free Savings', 1.85, 2000, 'USD', '2022-03-01', 0, 30.00, 'Retail', 1, 'Tax exempt savings for qualified accounts', 'admin', '2022-03-01', 'admin', '2022-03-01', 'Active', 100000, 0.60, 'Referral bonus', 'Qualified tax status');

-- Investment portfolio tracking
CREATE TABLE investment_portfolio
(
    portfolio_id            INTEGER   NOT NULL PRIMARY KEY,
    client_id               INTEGER   NOT NULL,
    portfolio_name          TEXT,
    total_value             REAL,
    risk_level              TEXT,
    asset_allocation        TEXT,
    created_date            DATE,
    last_rebalance          DATE,
    manager_id              INTEGER,
    fee_percent             REAL,
    dividend_yield          REAL,
    benchmark               TEXT,
    status                  TEXT,
    target_return           REAL,
    volatility              REAL,
    currency                TEXT,
    notes                   TEXT,
    is_taxable              INTEGER,
    compliance_flag         TEXT,
    advisor_contact         TEXT
);

INSERT INTO investment_portfolio (portfolio_id, client_id, portfolio_name, total_value, risk_level, asset_allocation, created_date, last_rebalance, manager_id, fee_percent, dividend_yield, benchmark, status, target_return, volatility, currency, notes, is_taxable, compliance_flag, advisor_contact)
VALUES (201, 101, 'Growth Portfolio', 250000.00, 'High', 'Equities70;Bonds20;Cash10', '2021-01-01', '2023-01-01', 301, 0.85, 1.20, 'S&P500', 'Active', 8.5, 12.0, 'USD', 'Aggressive growth focus', 1, 'Compliant', 'adv001');

INSERT INTO investment_portfolio (portfolio_id, client_id, portfolio_name, total_value, risk_level, asset_allocation, created_date, last_rebalance, manager_id, fee_percent, dividend_yield, benchmark, status, target_return, volatility, currency, notes, is_taxable, compliance_flag, advisor_contact)
VALUES (202, 202, 'Income Portfolio', 150000.00, 'Low', 'Bonds60;Equities30;Cash10', '2020-05-15', '2022-12-15', 302, 0.60, 3.40, ' Bloomberg Barclays', 'Active', 4.0, 5.5, 'USD', 'Focus on stable income', 1, 'Compliant', 'adv002');

INSERT INTO investment_portfolio (portfolio_id, client_id, portfolio_name, total_value, risk_level, asset_allocation, created_date, last_rebalance, manager_id, fee_percent, dividend_yield, benchmark, status, target_return, volatility, currency, notes, is_taxable, compliance_flag, advisor_contact)
VALUES (203, 303, 'Balanced Portfolio', 200000.00, 'Medium', 'Equities50;Bonds40;Cash10', '2022-02-20', '2023-02-20', 303, 0.70, 2.10, 'MSCI World', 'Active', 6.0, 8.0, 'USD', 'Balanced risk and return', 1, 'Compliant', 'adv003');

-- Employee training records
CREATE TABLE employee_training_record
(
    record_id               INTEGER   NOT NULL PRIMARY KEY,
    employee_id             INTEGER   NOT NULL,
    training_code           TEXT,
    training_name           TEXT,
    trainer_name            TEXT,
    start_date              DATE,
    end_date                DATE,
    duration_hours          INTEGER,
    completion_status       TEXT,
    score                   INTEGER,
    certificate_id          TEXT,
    location                TEXT,
    department              TEXT,
    cost                    REAL,
    sponsor                 TEXT,
    remarks                 TEXT,
    created_by              TEXT,
    created_date            DATE,
    updated_by              TEXT,
    updated_date            DATE
);

INSERT INTO employee_training_record (record_id, employee_id, training_code, training_name, trainer_name, start_date, end_date, duration_hours, completion_status, score, certificate_id, location, department, cost, sponsor, remarks, created_by, created_date, updated_by, updated_date)
VALUES (301, 1001, 'TRN001', 'Anti Money Laundering', 'John Smith', '2023-01-10', '2023-01-12', 16, 'Completed', 92, 'CERT001', 'Room A', 'Compliance', 500.00, 'Bank', 'Passed with high score', 'hr', '2023-01-10', 'hr', '2023-01-12');

INSERT INTO employee_training_record (record_id, employee_id, training_code, training_name, trainer_name, start_date, end_date, duration_hours, completion_status, score, certificate_id, location, department, cost, sponsor, remarks, created_by, created_date, updated_by, updated_date)
VALUES (302, 1002, 'TRN002', 'Cybersecurity Basics', 'Alice Brown', '2023-02-05', '2023-02-06', 12, 'Completed', 88, 'CERT002', 'Room B', 'IT', 300.00, 'Bank', 'Good understanding', 'hr', '2023-02-05', 'hr', '2023-02-06');

INSERT INTO employee_training_record (record_id, employee_id, training_code, training_name, trainer_name, start_date, end_date, duration_hours, completion_status, score, certificate_id, location, department, cost, sponsor, remarks, created_by, created_date, updated_by, updated_date)
VALUES (303, 1003, 'TRN003', 'Customer Service Excellence', 'Michael Lee', '2023-03-01', '2023-03-03', 18, 'Completed', 95, 'CERT003', 'Room C', 'Operations', 400.00, 'Bank', 'Excellent feedback', 'hr', '2023-03-01', 'hr', '2023-03-03');

-- Branch security events
CREATE TABLE branch_security_event
(
    event_id                INTEGER   NOT NULL PRIMARY KEY,
    branch_id               INTEGER   NOT NULL,
    event_type              TEXT,
    event_date              DATE,
    reported_by             TEXT,
    severity                INTEGER,
    description             TEXT,
    action_taken            TEXT,
    resolved_date           DATE,
    investigation_status    TEXT,
    camera_id               TEXT,
    alarm_triggered         INTEGER,
    personnel_involved      INTEGER,
    external_agency         TEXT,
    follow_up_date          DATE,
    notes                   TEXT,
    security_level_before   INTEGER,
    security_level_after    INTEGER,
    risk_score              REAL,
    logged_by               TEXT
);

INSERT INTO branch_security_event (event_id, branch_id, event_type, event_date, reported_by, severity, description, action_taken, resolved_date, investigation_status, camera_id, alarm_triggered, personnel_involved, external_agency, follow_up_date, notes, security_level_before, security_level_after, risk_score, logged_by)
VALUES (401, 10, 'Unauthorized Access', '2023-04-12', 'guard01', 4, 'Door forced open after hours', 'Police notified, door secured', '2023-04-13', 'Closed', 'CAM01', 1, 2, 'Police', '2023-04-20', 'No further incidents', 3, 5, 8.5, 'system');

INSERT INTO branch_security_event (event_id, branch_id, event_type, event_date, reported_by, severity, description, action_taken, resolved_date, investigation_status, camera_id, alarm_triggered, personnel_involved, external_agency, follow_up_date, notes, security_level_before, security_level_after, risk_score, logged_by)
VALUES (402, 12, 'Suspicious Package', '2023-05-05', 'employee02', 5, 'Unidentified package left at entrance', 'Evacuated, bomb squad called', '2023-05-05', 'Closed', 'CAM02', 1, 0, 'Bomb Squad', '2023-05-10', 'Package harmless', 2, 4, 9.2, 'system');

INSERT INTO branch_security_event (event_id, branch_id, event_type, event_date, reported_by, severity, description, action_taken, resolved_date, investigation_status, camera_id, alarm_triggered, personnel_involved, external_agency, follow_up_date, notes, security_level_before, security_level_after, risk_score, logged_by)
VALUES (403, 15, 'Theft', '2023-06-18', 'teller03', 3, 'Cash drawer short by $500', 'Internal review, police report filed', '2023-06-20', 'Open', 'CAM03', 0, 1, 'Police', '2023-07-01', 'Investigation ongoing', 4, 4, 7.0, 'system');

-- Digital identity records
CREATE TABLE digital_identity
(
    identity_id             INTEGER   NOT NULL PRIMARY KEY,
    client_id               INTEGER   NOT NULL,
    provider                TEXT,
    identity_type           TEXT,
    identifier              TEXT,
    issue_date              DATE,
    expiry_date             DATE,
    verification_status     TEXT,
    verification_method     TEXT,
    hash_value              TEXT,
    salt                    TEXT,
    encryption_algo         TEXT,
    last_used               DATE,
    usage_count             INTEGER,
    status                  TEXT,
    created_by              TEXT,
    created_date            DATE,
    updated_by              TEXT,
    updated_date            DATE,
    notes                   TEXT
);

INSERT INTO digital_identity (identity_id, client_id, provider, identity_type, identifier, issue_date, expiry_date, verification_status, verification_method, hash_value, salt, encryption_algo, last_used, usage_count, status, created_by, created_date, updated_by, updated_date, notes)
VALUES (501, 101, 'GovID', 'NationalID', 'NID123456', '2020-01-01', '2030-01-01', 'Verified', 'OCR', 'HASH001', 'SALT001', 'AES256', '2023-01-15', 120, 'Active', 'system', '2020-01-01', 'system', '2023-01-15', 'Primary identity');

INSERT INTO digital_identity (identity_id, client_id, provider, identity_type, identifier, issue_date, expiry_date, verification_status, verification_method, hash_value, salt, encryption_algo, last_used, usage_count, status, created_by, created_date, updated_by, updated_date, notes)
VALUES (502, 202, 'Bank', 'DigitalWallet', 'DW987654', '2022-06-01', '2025-06-01', 'Verified', 'OTP', 'HASH002', 'SALT002', 'RSA2048', '2023-02-10', 45, 'Active', 'system', '2022-06-01', 'system', '2023-02-10', 'Used for mobile payments');

INSERT INTO digital_identity (identity_id, client_id, provider, identity_type, identifier, issue_date, expiry_date, verification_status, verification_method, hash_value, salt, encryption_algo, last_used, usage_count, status, created_by, created_date, updated_by, updated_date, notes)
VALUES (503, 303, 'ThirdParty', 'OAuth', 'TP_OAUTH_001', '2021-03-15', '2024-03-15', 'Pending', 'Email', 'HASH003', 'SALT003', 'SHA256', '2023-03-20', 30, 'Inactive', 'system', '2021-03-15', 'system', '2023-03-20', 'Awaiting verification');

-- Risk indicators
CREATE TABLE risk_indicator
(
    indicator_id            INTEGER   NOT NULL PRIMARY KEY,
    name                    TEXT,
    description             TEXT,
    category                TEXT,
    calculation_method      TEXT,
    weight                  REAL,
    threshold_low           REAL,
    threshold_medium        REAL,
    threshold_high          REAL,
    current_value           REAL,
    last_updated            DATE,
    source_system           TEXT,
    is_active               INTEGER,
    owner                   TEXT,
    review_date             DATE,
    risk_score              REAL,
    comments                TEXT,
    created_by              TEXT,
    created_date            DATE,
    updated_by              TEXT,
    updated_date            DATE
);

INSERT INTO risk_indicator (indicator_id, name, description, category, calculation_method, weight, threshold_low, threshold_medium, threshold_high, current_value, last_updated, source_system, is_active, owner, review_date, risk_score, comments, created_by, created_date, updated_by, updated_date)
VALUES (601, 'Liquidity Ratio', 'Measures short term liquidity', 'Financial', 'Assets/Liabilities', 0.15, 0.5, 1.0, 1.5, 1.2, '2023-01-31', 'RiskEngine', 1, 'riskteam', '2023-06-30', 2.5, 'Within acceptable range', 'admin', '2023-01-01', 'admin', '2023-01-31');

INSERT INTO risk_indicator (indicator_id, name, description, category, calculation_method, weight, threshold_low, threshold_medium, threshold_high, current_value, last_updated, source_system, is_active, owner, review_date, risk_score, comments, created_by, created_date, updated_by, updated_date)
VALUES (602, 'Credit Utilization', 'Percentage of credit used', 'Credit', 'UsedCredit/TotalCredit', 0.20, 30, 60, 90, 55, '2023-02-15', 'CreditSys', 1, 'creditteam', '2023-07-15', 3.2, 'Medium risk', 'admin', '2023-02-01', 'admin', '2023-02-15');

INSERT INTO risk_indicator (indicator_id, name, description, category, calculation_method, weight, threshold_low, threshold_medium, threshold_high, current_value, last_updated, source_system, is_active, owner, review_date, risk_score, comments, created_by, created_date, updated_by, updated_date)
VALUES (603, 'Operational Error Rate', 'Errors per 10k transactions', 'Operational', 'Errors/Transactions*10000', 0.10, 1, 5, 10, 4, '2023-03-10', 'OpsMonitor', 1, 'opsteam', '2023-08-10', 1.8, 'Low to medium', 'admin', '2023-03-01', 'admin', '2023-03-10');

-- Regulatory submissions
CREATE TABLE regulatory_submission
(
    submission_id           INTEGER   NOT NULL PRIMARY KEY,
    regulator               TEXT,
    submission_type         TEXT,
    period_start            DATE,
    period_end              DATE,
    filed_date              DATE,
    status                  TEXT,
    reference_number        TEXT,
    total_amount            REAL,
    currency                TEXT,
    attached_files          TEXT,
    reviewer                TEXT,
    review_date             DATE,
    approval_status         TEXT,
    comments                TEXT,
    created_by              TEXT,
    created_date            DATE,
    updated_by              TEXT,
    updated_date            DATE,
    notes                   TEXT
);

INSERT INTO regulatory_submission (submission_id, regulator, submission_type, period_start, period_end, filed_date, status, reference_number, total_amount, currency, attached_files, reviewer, review_date, approval_status, comments, created_by, created_date, updated_by, updated_date, notes)
VALUES (701, 'FINREG', 'Quarterly Report', '2022-10-01', '2022-12-31', '2023-01-15', 'Filed', 'REF001', 1250000.00, 'USD', 'file1.pdf', 'jdoe', '2023-01-20', 'Approved', 'All good', 'system', '2022-12-15', 'system', '2023-01-20', 'Submitted on time');

INSERT INTO regulatory_submission (submission_id, regulator, submission_type, period_start, period_end, filed_date, status, reference_number, total_amount, currency, attached_files, reviewer, review_date, approval_status, comments, created_by, created_date, updated_by, updated_date, notes)
VALUES (702, 'BANKAUTH', 'Annual Compliance', '2022-01-01', '2022-12-31', '2023-02-05', 'Pending', 'REF002', 0.00, 'USD', 'file2.pdf', 'msmith', '2023-02-10', 'Pending', 'Awaiting audit', 'system', '2022-12-01', 'system', '2023-02-05', 'Under review');

INSERT INTO regulatory_submission (submission_id, regulator, submission_type, period_start, period_end, filed_date, status, reference_number, total_amount, currency, attached_files, reviewer, review_date, approval_status, comments, created_by, created_date, updated_by, updated_date, notes)
VALUES (703, 'SEC', 'Risk Disclosure', '2023-01-01', '2023-03-31', '2023-04-10', 'Filed', 'REF003', 500000.00, 'USD', 'file3.pdf', 'ajohnson', '2023-04-15', 'Approved', 'Disclosure complete', 'system', '2023-03-01', 'system', '2023-04-10', 'Submitted ahead of deadline');

-- Marketing analytics
CREATE TABLE marketing_analytics
(
    analytics_id            INTEGER   NOT NULL PRIMARY KEY,
    campaign_id             INTEGER,
    metric_name             TEXT,
    metric_value            REAL,
    period                  DATE,
    segment                 TEXT,
    channel                 TEXT,
    device_type             TEXT,
    geography               TEXT,
    impressions             INTEGER,
    clicks                  INTEGER,
    conversions             INTEGER,
    spend                   REAL,
    cpc                     REAL,
    cpm                     REAL,
    ctr                     REAL,
    conversion_rate         REAL,
    revenue                 REAL,
    roi                     REAL,
    notes                   TEXT
);

INSERT INTO marketing_analytics (analytics_id, campaign_id, metric_name, metric_value, period, segment, channel, device_type, geography, impressions, clicks, conversions, spend, cpc, cpm, ctr, conversion_rate, revenue, roi, notes)
VALUES (801, 1001, 'ClickThroughRate', 2.5, '2023-01-01', 'YoungAdults', 'Social', 'Mobile', 'USA', 500000, 12500, 2500, 3000.00, 0.24, 6.00, 2.50, 20.00, 15000.00, 4.00, 'Strong performance');

INSERT INTO marketing_analytics (analytics_id, campaign_id, metric_name, metric_value, period, segment, channel, device_type, geography, impressions, clicks, conversions, spend, cpc, cpm, ctr, conversion_rate, revenue, roi, notes)
VALUES (802, 1002, 'CostPerAcquisition', 12.5, '2023-02-01', 'Professionals', 'Search', 'Desktop', 'UK', 300000, 8000, 640, 8000.00, 1.00, 26.67, 2.67, 8.00, 8000.00, 1.00, 'At target CPA');

INSERT INTO marketing_analytics (analytics_id, campaign_id, metric_name, metric_value, period, segment, channel, device_type, geography, impressions, clicks, conversions, spend, cpc, cpm, ctr, conversion_rate, revenue, roi, notes)
VALUES (803, 1003, 'ReturnOnAdSpend', 3.5, '2023-03-01', 'Seniors', 'Email', 'Tablet', 'Canada', 200000, 6000, 1800, 5000.00, 0.83, 25.00, 3.00, 30.00, 17500.00, 3.50, 'Excellent ROI');

-- Third party services
CREATE TABLE third_party_service
(
    service_id              INTEGER   NOT NULL PRIMARY KEY,
    provider_name           TEXT,
    service_type            TEXT,
    api_endpoint            TEXT,
    authentication_method   TEXT,
    rate_limit              INTEGER,
    cost_per_call           REAL,
    contract_start          DATE,
    contract_end            DATE,
    sla_response_time       REAL,
    status                  TEXT,
    contact_person          TEXT,
    support_phone           TEXT,
    support_email           TEXT,
    data_retention_days    INTEGER,
    encryption_required     INTEGER,
    compliance_certifications TEXT,
    created_by              TEXT,
    created_date            DATE,
    updated_by              TEXT,
    updated_date            DATE
);

INSERT INTO third_party_service (service_id, provider_name, service_type, api_endpoint, authentication_method, rate_limit, cost_per_call, contract_start, contract_end, sla_response_time, status, contact_person, support_phone, support_email, data_retention_days, encryption_required, compliance_certifications, created_by, created_date, updated_by, updated_date)
VALUES (901, 'MapProviderX', 'Geolocation', 'https://api.mapx.com/v1/geo', 'APIKey', 10000, 0.0015, '2022-01-01', '2025-12-31', 0.5, 'Active', 'alice', '5551234', 'support@mapx.com', 365, 1, 'ISO27001;SOC2', 'system', '2022-01-01', 'system', '2022-01-01');

INSERT INTO third_party_service (service_id, provider_name, service_type, api_endpoint, authentication_method, rate_limit, cost_per_call, contract_start, contract_end, sla_response_time, status, contact_person, support_phone, support_email, data_retention_days, encryption_required, compliance_certifications, created_by, created_date, updated_by, updated_date)
VALUES (902, 'PayGatewayY', 'Payment', 'https://api.payy.com/v2/pay', 'OAuth2', 5000, 0.0250, '2023-03-15', '2026-03-14', 1.0, 'Active', 'bob', '5555678', 'support@payy.com', 180, 1, 'PCI-DSS', 'system', '2023-03-15', 'system', '2023-03-15');

INSERT INTO third_party_service (service_id, provider_name, service_type, api_endpoint, authentication_method, rate_limit, cost_per_call, contract_start, contract_end, sla_response_time, status, contact_person, support_phone, support_email, data_retention_days, encryption_required, compliance_certifications, created_by, created_date, updated_by, updated_date)
VALUES (903, 'IdentityCheckZ', 'Verification', 'https://api.idz.com/v1/verify', 'Token', 2000, 0.0100, '2021-07-01', '2024-06-30', 0.75, 'Inactive', 'carol', '5559012', 'support@idz.com', 90, 1, 'ISO27001', 'system', '2021-07-01', 'system', '2021-07-01');