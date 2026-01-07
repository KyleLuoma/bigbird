-- Customer risk assessment details per client
CREATE TABLE customer_risk_assessment (
    assessment_id               INTEGER PRIMARY KEY,
    client_id                   INTEGER NOT NULL,
    risk_score                  REAL NOT NULL,
    credit_history_score        REAL,
    income_bracket              TEXT,
    employment_status           TEXT,
    debt_to_income_ratio        REAL,
    fraud_alert_flag            TEXT,
    assessment_date             DATE,
    assessor_id                 INTEGER,
    home_ownership_status       TEXT,
    marital_status              TEXT,
    number_of_dependents        INTEGER,
    education_level             TEXT,
    residential_years           INTEGER,
    previous_default_count      INTEGER,
    loan_purpose_code           TEXT,
    average_monthly_spend       REAL,
    savings_balance             REAL,
    investment_balance          REAL,
    insurance_coverage_amount   REAL,
    tax_filing_status           TEXT,
    residence_type              TEXT,
    citizenship_status          TEXT,
    political_exposure_flag     TEXT,
    criminal_record_flag        TEXT,
    social_media_score          REAL,
    email_verification_status   TEXT,
    phone_verification_status   TEXT,
    notes                       TEXT
);

INSERT INTO customer_risk_assessment VALUES (1, 101, 72.5, 80.0, 'Medium', 'Employed', 0.35, 'No', '2023-03-15', 501, 'Owned', 'Married', 2, 'Bachelor', 5, 0, 'Home', 2500.00, 12000.00, 8000.00, 15000.00, 'Filed', 'Apartment', 'Citizen', 'No', 'No', 85.2, 'Verified', 'Verified', 'Initial assessment');
INSERT INTO customer_risk_assessment VALUES (2, 102, 64.1, 70.5, 'Low', 'SelfEmployed', 0.42, 'Yes', '2023-04-02', 502, 'Rented', 'Single', 0, 'HighSchool', 2, 1, 'Car', 1800.00, 5000.00, 3000.00, 8000.00, 'NotFiled', 'House', 'Resident', 'Yes', 'No', 73.4, 'Verified', 'Unverified', 'Follow‑up required');
INSERT INTO customer_risk_assessment VALUES (3, 103, 88.9, 92.3, 'High', 'Employed', 0.28, 'No', '2023-05-10', 503, 'Owned', 'Married', 3, 'Master', 10, 0, 'Business', 3200.00, 25000.00, 15000.00, 20000.00, 'Filed', 'Villa', 'Citizen', 'No', 'No', 91.0, 'Verified', 'Verified', 'High confidence');

-- Metadata for financial instruments
CREATE TABLE financial_instrument_metadata (
    instrument_id        INTEGER PRIMARY KEY,
    instrument_type      TEXT NOT NULL,
    ticker_symbol        TEXT,
    isin_code            TEXT,
    cusip                TEXT,
    issuer_name          TEXT,
    issue_date           DATE,
    maturity_date        DATE,
    coupon_rate          REAL,
    face_value           REAL,
    currency_code        TEXT,
    market_sector        TEXT,
    rating_agency        TEXT,
    rating_grade         TEXT,
    trading_exchange     TEXT,
    settlement_cycle     TEXT,
    dividend_yield       REAL,
    call_option_flag     TEXT,
    put_option_flag      TEXT,
    description          TEXT,
    created_at           DATE,
    updated_at           DATE
);

INSERT INTO financial_instrument_metadata VALUES (1001, 'Bond', 'ABC', 'US1234567890', '12345678', 'Alpha Corp', '2020-01-01', '2030-01-01', 3.5, 1000.00, 'USD', 'Corporate', 'MoodyS', 'A2', 'NYSE', 'T+2', 1.2, 'No', 'No', '10yr corporate bond', '2020-01-01', '2023-01-01');
INSERT INTO financial_instrument_metadata VALUES (1002, 'Equity', 'XYZ', 'US0987654321', '87654321', 'Beta Ltd', '2018-06-15', NULL, NULL, NULL, 'USD', 'Technology', 'S&P', 'AA', 'NASDAQ', 'T+3', NULL, 'No', 'No', 'Common stock of Beta Ltd', '2018-06-15', '2023-01-01');
INSERT INTO financial_instrument_metadata VALUES (1003, 'Derivative', 'DERIV1', NULL, NULL, 'Gamma Derivatives', '2022-09-01', '2025-09-01', NULL, 50000.00, 'EUR', 'Financial', NULL, NULL, 'EUREX', 'T+1', NULL, 'Yes', 'No', 'European call option', '2022-09-01', '2023-01-01');

-- Log of payment processor activities
CREATE TABLE payment_processor_log (
    log_id               INTEGER PRIMARY KEY,
    transaction_id       INTEGER NOT NULL,
    processor_name       TEXT,
    processing_date      DATE,
    status_code          TEXT,
    response_code        TEXT,
    latency_ms           INTEGER,
    error_message        TEXT,
    batch_id             TEXT,
    settlement_date      DATE,
    currency             TEXT,
    amount               REAL,
    fee_amount           REAL,
    net_amount           REAL,
    source_account       INTEGER,
    destination_account  INTEGER,
    channel              TEXT,
    device_id            TEXT,
    ip_address           TEXT,
    geo_location         TEXT,
    created_at           DATE
);

INSERT INTO payment_processor_log VALUES (2001, 5001, 'PayFast', '2023-06-01', '200', 'OK', 120, NULL, 'BATCH100', '2023-06-02', 'USD', 250.75, 2.50, 248.25, 10001, 20002, 'Online', 'DEV123', '192.168.1.10', 'NY', '2023-06-01');
INSERT INTO payment_processor_log VALUES (2002, 5002, 'QuickPay', '2023-06-02', '400', 'DECLINED', 250, 'Insufficient funds', 'BATCH101', NULL, 'EUR', 100.00, 1.00, 99.00, 10003, 20004, 'POS', 'DEV124', '192.168.1.11', 'Berlin', '2023-06-02');
INSERT INTO payment_processor_log VALUES (2003, 5003, 'SecureTrans', '2023-06-03', '200', 'OK', 95, NULL, 'BATCH102', '2023-06-04', 'GBP', 75.50, 0.75, 74.75, 10005, 20006, 'Mobile', 'DEV125', '192.168.1.12', 'London', '2023-06-03');

-- Detailed audit trail events
CREATE TABLE audit_trail_event (
    event_id               INTEGER PRIMARY KEY,
    event_timestamp        DATE,
    user_id                INTEGER,
    action_type            TEXT,
    object_type            TEXT,
    object_id              INTEGER,
    ip_address             TEXT,
    device_id              TEXT,
    description            TEXT,
    previous_value         TEXT,
    new_value              TEXT,
    session_id             TEXT,
    outcome                TEXT,
    risk_level             TEXT,
    source_system          TEXT,
    region                 TEXT,
    department             TEXT,
    audit_level            TEXT,
    change_category        TEXT,
    related_event_id       INTEGER,
    created_at             DATE
);

INSERT INTO audit_trail_event VALUES (3001, '2023-07-01', 9001, 'UPDATE', 'ACCOUNT', 4001, '10.0.0.1', 'DEV200', 'Updated account balance', '5000', '5500', 'SID123', 'Success', 'Low', 'BankCore', 'EMEA', 'Finance', 'Detailed', 'Financial', NULL, '2023-07-01');
INSERT INTO audit_trail_event VALUES (3002, '2023-07-02', 9002, 'DELETE', 'CARD', 6002, '10.0.0.2', 'DEV201', 'Removed lost card', NULL, NULL, 'SID124', 'Success', 'Medium', 'CardMgmt', 'APAC', 'Security', 'Summary', 'Administrative', 3001, '2023-07-02');
INSERT INTO audit_trail_event VALUES (3003, '2023-07-03', 9003, 'INSERT', 'CLIENT', 8003, '10.0.0.3', 'DEV202', 'Created new client record', NULL, '{"name":"John Doe"}', 'SID125', 'Success', 'Low', 'CRM', 'NA', 'Sales', 'Detailed', 'DataEntry', NULL, '2023-07-03');

-- Branch operational schedules
CREATE TABLE branch_operational_schedule (
    schedule_id          INTEGER PRIMARY KEY,
    branch_id            INTEGER NOT NULL,
    day_of_week          TEXT,
    open_time            TEXT,
    close_time           TEXT,
    lunch_start          TEXT,
    lunch_end            TEXT,
    staff_on_duty        INTEGER,
    manager_on_duty      TEXT,
    security_level       TEXT,
    cleaning_schedule    TEXT,
    maintenance_window   TEXT,
    special_event_flag   TEXT,
    special_event_desc   TEXT,
    holiday_flag         TEXT,
    holiday_name         TEXT,
    capacity_limit       INTEGER,
    temperature_setting  REAL,
    humidity_setting     REAL,
    ventilation_mode     TEXT,
    created_at           DATE
);

INSERT INTO branch_operational_schedule VALUES (4001, 1, 'Monday', '08:00', '17:00', '12:00', '13:00', 5, 'MgrA', 'High', 'Daily', '02:00-03:00', 'No', NULL, 'No', NULL, 200, 22.5, 45.0, 'Auto', '2023-01-01');
INSERT INTO branch_operational_schedule VALUES (4002, 1, 'Saturday', '09:00', '13:00', NULL, NULL, 3, 'MgrB', 'Medium', 'Weekly', '03:00-04:00', 'Yes', 'CommunityMeeting', 'No', NULL, 150, 21.0, 40.0, 'Manual', '2023-01-02');
INSERT INTO branch_operational_schedule VALUES (4003, 2, 'Friday', '07:30', '16:30', '12:30', '13:30', 4, 'MgrC', 'High', 'Daily', '01:00-02:00', 'No', NULL, 'Yes', 'IndependenceDay', 250, 23.0, 50.0, 'Auto', '2023-01-03');

-- Attributes for loan products
CREATE TABLE loan_product_attribute (
    attribute_id          INTEGER PRIMARY KEY,
    loan_product_id       INTEGER NOT NULL,
    attribute_name        TEXT,
    attribute_value       TEXT,
    data_type             TEXT,
    effective_date        DATE,
    expiration_date       DATE,
    created_by            TEXT,
    created_at            DATE,
    updated_by            TEXT,
    updated_at            DATE,
    is_active             TEXT,
    notes                 TEXT,
    regulatory_flag       TEXT,
    display_order         INTEGER,
    risk_weight           REAL,
    minimum_amount        REAL,
    maximum_amount        REAL,
    interest_rate_cap     REAL,
    fee_structure         TEXT,
    compliance_check      TEXT
);

INSERT INTO loan_product_attribute VALUES (5001, 10, 'GracePeriodDays', '30', 'INTEGER', '2022-01-01', NULL, 'admin', '2022-01-01', 'admin', '2023-01-01', 'Yes', 'Standard grace period', 'Yes', 1, 0.2, 5000.00, 50000.00, 5.0, 'Flat', 'Passed');
INSERT INTO loan_product_attribute VALUES (5002, 10, 'PrepaymentPenalty', '2.5', 'REAL', '2022-01-01', NULL, 'admin', '2022-01-01', 'admin', '2023-01-01', 'Yes', 'Penalty percentage', 'Yes', 2, 0.3, 5000.00, 50000.00, 5.0, 'Percentage', 'Passed');
INSERT INTO loan_product_attribute VALUES (5003, 11, 'CollateralRequired', 'Yes', 'TEXT', '2023-03-01', NULL, 'admin', '2023-03-01', 'admin', '2023-06-01', 'Yes', 'Collateral needed for high‑risk loans', 'Yes', 1, 0.5, 10000.00, 100000.00, 6.0, 'Mixed', 'Pending');

-- Security tokens linked to cards
CREATE TABLE card_security_token (
    token_id               INTEGER PRIMARY KEY,
    card_id                INTEGER NOT NULL,
    token_value            TEXT,
    token_status           TEXT,
    issued_at              DATE,
    expires_at             DATE,
    issuer_id              INTEGER,
    encryption_algorithm   TEXT,
    key_version            TEXT,
    device_id              TEXT,
    ip_address             TEXT,
    geo_location           TEXT,
    usage_count            INTEGER,
    last_used_at           DATE,
    is_revoked             TEXT,
    revocation_reason      TEXT,
    created_at             DATE,
    updated_at             DATE,
    notes                  TEXT,
    compliance_flag        TEXT
);

INSERT INTO card_security_token VALUES (6001, 2001, 'TOKENABC123', 'Active', '2023-01-01', '2026-01-01', 301, 'AES256', 'v1', 'DEV300', '10.0.0.5', 'London', 5, '2023-06-01', 'No', NULL, '2023-01-01', '2023-06-01', 'Initial issuance', 'Yes');
INSERT INTO card_security_token VALUES (6002, 2002, 'TOKEND456', 'Suspended', '2022-05-15', '2025-05-15', 302, 'RSA2048', 'v2', 'DEV301', '10.0.0.6', 'Paris', 2, '2023-05-20', 'Yes', 'Compromised', '2022-05-15', '2023-05-20', 'Token revoked after breach', 'Yes');
INSERT INTO card_security_token VALUES (6003, 2003, 'TOKENXYZ789', 'Active', '2023-03-10', '2026-03-10', 303, 'AES256', 'v1', 'DEV302', '10.0.0.7', 'NewYork', 0, NULL, 'No', NULL, '2023-03-10', '2023-03-10', 'New token generated', 'Yes');

-- Detailed digital identity verification records
CREATE TABLE digital_identity_verification_detail (
    verification_id        INTEGER PRIMARY KEY,
    client_id              INTEGER NOT NULL,
    identity_type          TEXT,
    document_number        TEXT,
    document_issuer        TEXT,
    issue_date             DATE,
    expiry_date            DATE,
    verification_status    TEXT,
    verified_by            TEXT,
    verification_date      DATE,
    source_image_hash      TEXT,
    extracted_data_hash    TEXT,
    confidence_score       REAL,
    notes                  TEXT,
    is_active              TEXT,
    created_at             DATE,
    updated_at             DATE,
    audit_log_id           INTEGER,
    compliance_check       TEXT,
    rejection_reason       TEXT
);

INSERT INTO digital_identity_verification_detail VALUES (7001, 101, 'Passport', 'P1234567', 'CountryA', '2018-04-01', '2028-04-01', 'Verified', 'VerifierX', '2023-06-05', 'HASHIMG001', 'HASHDATA001', 98.7, 'All fields match', 'Yes', '2023-06-05', '2023-06-05', 3001, 'Passed', NULL);
INSERT INTO digital_identity_verification_detail VALUES (7002, 102, 'DriverLicense', 'D7654321', 'StateB', '2019-07-15', '2029-07-15', 'Rejected', 'VerifierY', '2023-06-06', 'HASHIMG002', 'HASHDATA002', 65.3, 'Photo mismatch', 'No', '2023-06-06', '2023-06-06', 3002, 'Failed', 'Photo mismatch');
INSERT INTO digital_identity_verification_detail VALUES (7003, 103, 'NationalID', 'N5556667', 'CountryC', '2020-01-20', '2030-01-20', 'Verified', 'VerifierZ', '2023-06-07', 'HASHIMG003', 'HASHDATA003', 92.1, 'Verified via biometric', 'Yes', '2023-06-07', '2023-06-07', 3003, 'Passed', NULL);

-- Fee schedule for transaction types
CREATE TABLE transaction_fee_schedule (
    fee_schedule_id        INTEGER PRIMARY KEY,
    transaction_type       TEXT,
    fee_amount             REAL,
    fee_percentage         REAL,
    currency               TEXT,
    effective_date         DATE,
    expiration_date        DATE,
    is_fixed               TEXT,
    tier_level             TEXT,
    description            TEXT,
    created_by             TEXT,
    created_at             DATE,
    updated_by             TEXT,
    updated_at             DATE,
    regulatory_approval_flag TEXT,
    region                 TEXT,
    minimum_fee            REAL,
    maximum_fee            REAL,
    charge_method          TEXT,
    applicable_account_type TEXT,
    notes                  TEXT
);

INSERT INTO transaction_fee_schedule VALUES (8001, 'DomesticTransfer', 0.30, NULL, 'USD', '2023-01-01', NULL, 'Yes', 'Standard', 'Flat fee for domestic transfers', 'admin', '2023-01-01', 'admin', '2023-06-01', 'Yes', 'EMEA', 0.30, 0.30, 'PerTransaction', 'Checking', 'No additional notes');
INSERT INTO transaction_fee_schedule VALUES (8002, 'InternationalTransfer', NULL, 1.5, 'EUR', '2023-02-01', NULL, 'No', 'Premium', 'Percentage fee for international transfers', 'admin', '2023-02-01', 'admin', '2023-06-01', 'Yes', 'APAC', 5.00, 50.00, 'Percentage', 'Savings', 'Applies after 1000 EUR threshold');
INSERT INTO transaction_fee_schedule VALUES (8003, 'CardPurchase', 0.10, NULL, 'GBP', '2023-03-01', '2025-03-01', 'Yes', 'Standard', 'Flat fee per card purchase', 'admin', '2023-03-01', 'admin', '2023-06-01', 'No', 'NA', 0.10, 0.10, 'PerTransaction', 'Credit', 'Fee waived for VIP customers');

-- Log of regulatory notifications received
CREATE TABLE regulatory_notification_log (
    notification_id          INTEGER PRIMARY KEY,
    regulator_name           TEXT,
    notification_type        TEXT,
    subject                  TEXT,
    body_text                TEXT,
    issued_date              DATE,
    received_date            DATE,
    status                   TEXT,
    response_deadline        DATE,
    responded_by             TEXT,
    response_text            TEXT,
    attachment_path          TEXT,
    severity_level           TEXT,
    related_entity_type      TEXT,
    related_entity_id        INTEGER,
    created_at               DATE,
    updated_at               DATE,
    reviewed_by              TEXT,
    review_status            TEXT,
    notes                    TEXT
);

INSERT INTO regulatory_notification_log VALUES (9001, 'FinRegAuthority', 'AuditRequest', 'Quarterly Audit', 'Please provide Q2 financial statements.', '2023-04-01', '2023-04-03', 'Pending', '2023-04-30', NULL, NULL, NULL, 'High', 'ACCOUNT', 4001, '2023-04-03', '2023-04-03', 'ComplianceOfficer', 'NotReviewed', 'Awaiting documents');
INSERT INTO regulatory_notification_log VALUES (9002, 'DataProtectionAgency', 'DataBreachNotice', 'Potential Breach', 'We have detected a data breach affecting personal data.', '2023-05-10', '2023-05-11', 'Responded', '2023-05-20', 'LegalTeam', 'Investigation initiated, no impact on customers.', '/docs/breach_report.pdf', 'Critical', 'CLIENT', 101, '2023-05-11', '2023-05-12', 'LegalLead', 'Reviewed', 'Follow‑up required');
INSERT INTO regulatory_notification_log VALUES (9003, 'TaxAuthority', 'TaxClarification', 'New Tax Regulation', 'Clarification on tax code 2023-07 applicable to loan products.', '2023-06-15', '2023-06-16', 'Acknowledged', '2023-06-30', 'FinanceDept', 'Reviewed and will adjust loan pricing.', NULL, 'Medium', 'LOAN', NULL, '2023-06-16', '2023-06-16', 'FinanceHead', 'Reviewed', 'No immediate action');