-- Table recording automated fraud detection events linked to accounts and transactions
CREATE TABLE fraud_detection_event
(
    event_id              INTEGER PRIMARY KEY,
    account_id            INTEGER,
    client_id             INTEGER,
    event_timestamp       DATE,
    event_type            TEXT,
    severity              INTEGER,
    rule_id               INTEGER,
    source_ip             TEXT,
    device_id             TEXT,
    transaction_id        INTEGER,
    alert_generated       TEXT,
    investigation_status  TEXT,
    assigned_analyst      TEXT,
    resolution_date       DATE,
    notes                 TEXT,
    risk_score            REAL,
    currency              TEXT,
    amount                REAL,
    location_code         TEXT,
    channel               TEXT
);

INSERT INTO fraud_detection_event (event_id, account_id, client_id, event_timestamp, event_type, severity, rule_id, source_ip, device_id, transaction_id, alert_generated, investigation_status, assigned_analyst, resolution_date, notes, risk_score, currency, amount, location_code, channel) VALUES (1, 1001, 2001, '2023-07-15', 'UNUSUAL_LOCATION', 3, 45, '192168001', 'DEV123', 5001, 'YES', 'OPEN', 'ANALYST1', NULL, 'InitialAlert', 0.85, 'USD', 1500.00, 'LOC001', 'ONLINE');
INSERT INTO fraud_detection_event (event_id, account_id, client_id, event_timestamp, event_type, severity, rule_id, source_ip, device_id, transaction_id, alert_generated, investigation_status, assigned_analyst, resolution_date, notes, risk_score, currency, amount, location_code, channel) VALUES (2, 1002, 2002, '2023-08-02', 'MULTIPLE_SMALL', 2, 12, '172160010', 'DEV456', 5002, 'YES', 'CLOSED', 'ANALYST2', '2023-08-05', 'ResolvedAsFalsePositive', 0.45, 'EUR', 250.00, 'LOC045', 'MOBILE');
INSERT INTO fraud_detection_event (event_id, account_id, client_id, event_timestamp, event_type, severity, rule_id, source_ip, device_id, transaction_id, alert_generated, investigation_status, assigned_analyst, resolution_date, notes, risk_score, currency, amount, location_code, channel) VALUES (3, 1003, 2003, '2023-09-10', 'HIGH_VALUE', 5, 78, '10.0.0.5', 'DEV789', 5003, 'YES', 'IN_PROGRESS', 'ANALYST3', NULL, 'AwaitingClientConfirmation', 0.92, 'GBP', 10000.00, 'LOC099', 'BRANCH');

-- Table storing credit card applications and their processing details
CREATE TABLE credit_card_application
(
    application_id        INTEGER PRIMARY KEY,
    client_id             INTEGER,
    application_date      DATE,
    card_type             TEXT,
    annual_income         REAL,
    employment_status     TEXT,
    residence_type        TEXT,
    credit_score          INTEGER,
    requested_limit       REAL,
    approval_status       TEXT,
    approval_date         DATE,
    rejection_reason      TEXT,
    issued_card_id        INTEGER,
    branch_id             INTEGER,
    agent_id              INTEGER,
    marketing_source      TEXT,
    email_opt_in          TEXT,
    sms_opt_in            TEXT,
    dob                   DATE,
    national_id           TEXT
);

INSERT INTO credit_card_application (application_id, client_id, application_date, card_type, annual_income, employment_status, residence_type, credit_score, requested_limit, approval_status, approval_date, rejection_reason, issued_card_id, branch_id, agent_id, marketing_source, email_opt_in, sms_opt_in, dob, national_id) VALUES (101, 2001, '2023-06-01', 'GOLD', 75000.00, 'FULLTIME', 'OWNED', 720, 5000.00, 'APPROVED', '2023-06-05', NULL, 3001, 10, 501, 'ONLINE_AD', 'YES', 'YES', '1985-04-12', 'ID123456');
INSERT INTO credit_card_application (application_id, client_id, application_date, card_type, annual_income, employment_status, residence_type, credit_score, requested_limit, approval_status, approval_date, rejection_reason, issued_card_id, branch_id, agent_id, marketing_source, email_opt_in, sms_opt_in, dob, national_id) VALUES (102, 2002, '2023-07-15', 'PLATINUM', 120000.00, 'SELFEMPLOYED', 'RENTED', 680, 15000.00, 'REJECTED', NULL, 'LOW_CREDIT_SCORE', NULL, 12, 502, 'BRANCH_VISIT', 'YES', 'NO', '1978-11-23', 'ID789012');
INSERT INTO credit_card_application (application_id, client_id, application_date, card_type, annual_income, employment_status, residence_type, credit_score, requested_limit, approval_status, approval_date, rejection_reason, issued_card_id, branch_id, agent_id, marketing_source, email_opt_in, sms_opt_in, dob, national_id) VALUES (103, 2003, '2023-08-20', 'SILVER', 45000.00, 'PARTTIME', 'OWNED', 750, 3000.00, 'APPROVED', '2023-08-25', NULL, 3003, 15, 503, 'EMAIL_CAMPAIGN', 'NO', 'YES', '1992-02-05', 'ID345678');

-- Table capturing interactions between customers and service representatives
CREATE TABLE customer_service_interaction
(
    interaction_id        INTEGER PRIMARY KEY,
    client_id             INTEGER,
    account_id            INTEGER,
    interaction_date      DATE,
    channel               TEXT,
    representative_id     INTEGER,
    issue_category        TEXT,
    issue_subcategory     TEXT,
    resolution_status     TEXT,
    resolution_date       DATE,
    satisfaction_score    INTEGER,
    follow_up_required    TEXT,
    follow_up_date        DATE,
    notes                 TEXT,
    escalation_level      INTEGER,
    transcript_id         INTEGER,
    call_duration_seconds INTEGER,
    email_thread_id       INTEGER,
    chat_session_id       INTEGER,
    survey_sent           TEXT
);

INSERT INTO customer_service_interaction (interaction_id, client_id, account_id, interaction_date, channel, representative_id, issue_category, issue_subcategory, resolution_status, resolution_date, satisfaction_score, follow_up_required, follow_up_date, notes, escalation_level, transcript_id, call_duration_seconds, email_thread_id, chat_session_id, survey_sent) VALUES (10001, 2001, 1001, '2023-09-01', 'PHONE', 301, 'PAYMENT', 'FAILED', 'RESOLVED', '2023-09-02', 4, 'NO', NULL, 'IssueFixed', 0, 9001, 300, NULL, NULL, 'YES');
INSERT INTO customer_service_interaction (interaction_id, client_id, account_id, interaction_date, channel, representative_id, issue_category, issue_subcategory, resolution_status, resolution_date, satisfaction_score, follow_up_required, follow_up_date, notes, escalation_level, transcript_id, call_duration_seconds, email_thread_id, chat_session_id, survey_sent) VALUES (10002, 2002, 1002, '2023-09-03', 'EMAIL', 302, 'ACCOUNT', 'LOCKED', 'PENDING', NULL, NULL, 'YES', '2023-09-10', 'AwaitingDocuments', 1, 9002, NULL, 5002, NULL, 'NO');
INSERT INTO customer_service_interaction (interaction_id, client_id, account_id, interaction_date, channel, representative_id, issue_category, issue_subcategory, resolution_status, resolution_date, satisfaction_score, follow_up_required, follow_up_date, notes, escalation_level, transcript_id, call_duration_seconds, email_thread_id, chat_session_id, survey_sent) VALUES (10003, 2003, 1003, '2023-09-05', 'CHAT', 303, 'CARD', 'ACTIVATION', 'RESOLVED', '2023-09-05', 5, 'NO', NULL, 'ActivationSuccessful', 0, 9003, NULL, NULL, 7003, 'YES');

-- Table tracking digital advertising spend per campaign and channel
CREATE TABLE digital_advertising_spend
(
    spend_id              INTEGER PRIMARY KEY,
    campaign_id           INTEGER,
    channel               TEXT,
    start_date            DATE,
    end_date              DATE,
    budget_usd            REAL,
    spent_usd             REAL,
    impressions           INTEGER,
    clicks                INTEGER,
    ctr_percent           REAL,
    cpc_usd               REAL,
    cpm_usd               REAL,
    conversion_rate_percent REAL,
    conversions           INTEGER,
    revenue_usd           REAL,
    profit_usd            REAL,
    profit_margin_percent REAL,
    target_audience       TEXT,
    geo_location          TEXT,
    device_type           TEXT,
    ad_format             TEXT,
    creative_id           INTEGER,
    version               INTEGER,
    status                TEXT,
    last_updated          DATE
);

INSERT INTO digital_advertising_spend (spend_id, campaign_id, channel, start_date, end_date, budget_usd, spent_usd, impressions, clicks, ctr_percent, cpc_usd, cpm_usd, conversion_rate_percent, conversions, revenue_usd, profit_usd, profit_margin_percent, target_audience, geo_location, device_type, ad_format, creative_id, version, status, last_updated) VALUES (1, 10001, 'SEARCH', '2023-07-01', '2023-07-31', 20000.00, 18500.00, 5000000, 25000, 0.5, 0.74, 3.70, 2.0, 500, 75000.00, 56500.00, 30.0, 'ADULTS', 'EU', 'DESKTOP', 'TEXT', 4001, 3, 'ACTIVE', '2023-07-31');
INSERT INTO digital_advertising_spend (spend_id, campaign_id, channel, start_date, end_date, budget_usd, spent_usd, impressions, clicks, ctr_percent, cpc_usd, cpm_usd, conversion_rate_percent, conversions, revenue_usd, profit_usd, profit_margin_percent, target_audience, geo_location, device_type, ad_format, creative_id, version, status, last_updated) VALUES (2, 10002, 'SOCIAL', '2023-08-01', '2023-08-31', 15000.00, 14800.00, 3000000, 18000, 0.6, 0.82, 4.93, 1.8, 324, 60000.00, 45200.00, 32.1, 'YOUTHS', 'NA', 'MOBILE', 'VIDEO', 4002, 2, 'ACTIVE', '2023-08-31');
INSERT INTO digital_advertising_spend (spend_id, campaign_id, channel, start_date, end_date, budget_usd, spent_usd, impressions, clicks, ctr_percent, cpc_usd, cpm_usd, conversion_rate_percent, conversions, revenue_usd, profit_usd, profit_margin_percent, target_audience, geo_location, device_type, ad_format, creative_id, version, status, last_updated) VALUES (3, 10003, 'DISPLAY', '2023-09-01', '2023-09-30', 10000.00, 9500.00, 4000000, 12000, 0.3, 0.79, 2.38, 1.5, 180, 30000.00, 20500.00, 34.2, 'SENIORS', 'APAC', 'TABLET', 'BANNER', 4003, 1, 'COMPLETED', '2023-09-30');

-- Table containing aggregated regional tax reporting figures
CREATE TABLE regional_tax_report
(
    report_id             INTEGER PRIMARY KEY,
    region_code           TEXT,
    fiscal_year           INTEGER,
    total_income          REAL,
    total_taxable_income  REAL,
    total_tax_collected   REAL,
    average_tax_rate      REAL,
    number_of_entities    INTEGER,
    corporate_tax_total   REAL,
    personal_tax_total    REAL,
    vat_collected         REAL,
    excise_duty_total     REAL,
    tax_credits_claimed   REAL,
    tax_audits_conducted  INTEGER,
    audit_success_rate    REAL,
    penalties_imposed     REAL,
    refunds_issued        REAL,
    compliance_rate       REAL,
    notes                 TEXT,
    generated_date        DATE,
    approved_by           TEXT,
    status                TEXT
);

INSERT INTO regional_tax_report (report_id, region_code, fiscal_year, total_income, total_taxable_income, total_tax_collected, average_tax_rate, number_of_entities, corporate_tax_total, personal_tax_total, vat_collected, excise_duty_total, tax_credits_claimed, tax_audits_conducted, audit_success_rate, penalties_imposed, refunds_issued, compliance_rate, notes, generated_date, approved_by, status) VALUES (1, 'RG001', 2022, 500000000.00, 420000000.00, 84000000.00, 20.0, 1500, 30000000.00, 54000000.00, 12000000.00, 5000000.00, 2000000.00, 45, 0.96, 1500000.00, 800000.00, 0.92, 'OnTrack', '2023-01-15', 'AUDITOR1', 'APPROVED');
INSERT INTO regional_tax_report (report_id, region_code, fiscal_year, total_income, total_taxable_income, total_tax_collected, average_tax_rate, number_of_entities, corporate_tax_total, personal_tax_total, vat_collected, excise_duty_total, tax_credits_claimed, tax_audits_conducted, audit_success_rate, penalties_imposed, refunds_issued, compliance_rate, notes, generated_date, approved_by, status) VALUES (2, 'RG002', 2022, 750000000.00, 630000000.00, 126000000.00, 20.0, 2300, 45000000.00, 81000000.00, 18000000.00, 7500000.00, 3000000.00, 60, 0.93, 2100000.00, 1200000.00, 0.90, 'PendingReview', '2023-01-20', 'AUDITOR2', 'PENDING');
INSERT INTO regional_tax_report (report_id, region_code, fiscal_year, total_income, total_taxable_income, total_tax_collected, average_tax_rate, number_of_entities, corporate_tax_total, personal_tax_total, vat_collected, excise_duty_total, tax_credits_claimed, tax_audits_conducted, audit_success_rate, penalties_imposed, refunds_issued, compliance_rate, notes, generated_date, approved_by, status) VALUES (3, 'RG003', 2022, 600000000.00, 540000000.00, 108000000.00, 20.0, 1800, 36000000.00, 72000000.00, 15000000.00, 6000000.00, 2500000.00, 50, 0.95, 1800000.00, 950000.00, 0.94, 'Finalized', '2023-01-25', 'AUDITOR3', 'APPROVED');

-- Table logging visitor counts per bank branch per day
CREATE TABLE branch_visitor_counts
(
    record_id             INTEGER PRIMARY KEY,
    branch_id             INTEGER,
    visit_date            DATE,
    total_visitors        INTEGER,
    new_customers         INTEGER,
    returning_customers   INTEGER,
    avg_wait_time_minutes REAL,
    peak_hour_start       INTEGER,
    peak_hour_end         INTEGER,
    transactions_per_visitor REAL,
    avg_transaction_value REAL,
    teller_visits         INTEGER,
    atm_visits            INTEGER,
    service_desk_visits   INTEGER,
    complaints_filed      INTEGER,
    feedback_score_avg    REAL,
    marketing_materials_distributed INTEGER,
    promotions_participated INTEGER,
    staff_on_duty        INTEGER,
    notes                 TEXT,
    data_source           TEXT,
    last_updated          DATE,
    status                TEXT
);

INSERT INTO branch_visitor_counts (record_id, branch_id, visit_date, total_visitors, new_customers, returning_customers, avg_wait_time_minutes, peak_hour_start, peak_hour_end, transactions_per_visitor, avg_transaction_value, teller_visits, atm_visits, service_desk_visits, complaints_filed, feedback_score_avg, marketing_materials_distributed, promotions_participated, staff_on_duty, notes, data_source, last_updated, status) VALUES (1, 10, '2023-09-01', 350, 80, 270, 5.2, 10, 12, 1.4, 250.00, 200, 150, 30, 2, 4.2, 120, 45, 12, 'SteadyFlow', 'INTERNAL', '2023-09-02', 'VERIFIED');
INSERT INTO branch_visitor_counts (record_id, branch_id, visit_date, total_visitors, new_customers, returning_customers, avg_wait_time_minutes, peak_hour_start, peak_hour_end, transactions_per_visitor, avg_transaction_value, teller_visits, atm_visits, service_desk_visits, complaints_filed, feedback_score_avg, marketing_materials_distributed, promotions_participated, staff_on_duty, notes, data_source, last_updated, status) VALUES (2, 12, '2023-09-01', 420, 110, 310, 4.8, 11, 13, 1.6, 300.00, 250, 180, 40, 1, 4.5, 150, 60, 15, 'HighTraffic', 'INTERNAL', '2023-09-02', 'VERIFIED');
INSERT INTO branch_visitor_counts (record_id, branch_id, visit_date, total_visitors, new_customers, returning_customers, avg_wait_time_minutes, peak_hour_start, peak_hour_end, transactions_per_visitor, avg_transaction_value, teller_visits, atm_visits, service_desk_visits, complaints_filed, feedback_score_avg, marketing_materials_distributed, promotions_participated, staff_on_duty, notes, data_source, last_updated, status) VALUES (3, 15, '2023-09-01', 280, 60, 220, 6.0, 9, 11, 1.2, 200.00, 180, 100, 20, 3, 3.9, 90, 30, 10, 'LowWeekend', 'INTERNAL', '2023-09-02', 'VERIFIED');

-- Table storing usage metrics of the bank's mobile application
CREATE TABLE mobile_app_usage
(
    usage_id               INTEGER PRIMARY KEY,
    client_id              INTEGER,
    device_id              TEXT,
    os_version             TEXT,
    app_version            TEXT,
    session_start          DATE,
    session_end            DATE,
    session_duration_sec   INTEGER,
    screens_viewed         INTEGER,
    features_used          TEXT,
    errors_encountered     INTEGER,
    crashed                TEXT,
    data_consumed_mb       REAL,
    location_country       TEXT,
    location_city          TEXT,
    network_type           TEXT,
    battery_level_percent  INTEGER,
    push_notifications_received INTEGER,
    push_notifications_clicked INTEGER,
    last_update_check      DATE,
    feedback_given         TEXT,
    rating_score           INTEGER,
    notes                  TEXT,
    recorded_at            DATE,
    status                 TEXT
);

INSERT INTO mobile_app_usage (usage_id, client_id, device_id, os_version, app_version, session_start, session_end, session_duration_sec, screens_viewed, features_used, errors_encountered, crashed, data_consumed_mb, location_country, location_city, network_type, battery_level_percent, push_notifications_received, push_notifications_clicked, last_update_check, feedback_given, rating_score, notes, recorded_at, status) VALUES (1, 2001, 'DEV1001', 'iOS14', '3.2.1', '2023-09-10', '2023-09-10', 540, 12, 'BALANCE;TRANSFER', 0, 'NO', 15.3, 'USA', 'NYC', 'WIFI', 85, 5, 2, '2023-09-09', 'YES', 5, 'SmoothSession', '2023-09-10', 'ACTIVE');
INSERT INTO mobile_app_usage (usage_id, client_id, device_id, os_version, app_version, session_start, session_end, session_duration_sec, screens_viewed, features_used, errors_encountered, crashed, data_consumed_mb, location_country, location_city, network_type, battery_level_percent, push_notifications_received, push_notifications_clicked, last_update_check, feedback_given, rating_score, notes, recorded_at, status) VALUES (2, 2002, 'DEV1002', 'Android11', '3.2.1', '2023-09-11', '2023-09-11', 300, 8, 'PAYMENT;STATEMENTS', 1, 'YES', 9.8, 'CAN', 'TOR', 'CELLULAR', 60, 3, 0, '2023-09-10', 'NO', 3, 'CrashDuringPayment', '2023-09-11', 'ISSUE');
INSERT INTO mobile_app_usage (usage_id, client_id, device_id, os_version, app_version, session_start, session_end, session_duration_sec, screens_viewed, features_used, errors_encountered, crashed, data_consumed_mb, location_country, location_city, network_type, battery_level_percent, push_notifications_received, push_notifications_clicked, last_update_check, feedback_given, rating_score, notes, recorded_at, status) VALUES (3, 2003, 'DEV1003', 'iOS15', '3.3.0', '2023-09-12', '2023-09-12', 720, 15, 'LOANS;INVESTMENTS', 0, 'NO', 22.5, 'GBR', 'LON', 'WIFI', 78, 6, 4, '2023-09-11', 'YES', 4, 'LongSession', '2023-09-12', 'ACTIVE');

-- Table describing pricing parameters for various financial products
CREATE TABLE financial_product_pricing
(
    pricing_id               INTEGER PRIMARY KEY,
    product_code             TEXT,
    effective_date           DATE,
    expiration_date          DATE,
    base_rate_percent        REAL,
    margin_percent           REAL,
    fee_fixed_usd            REAL,
    fee_percentage           REAL,
    minimum_balance_usd      REAL,
    maximum_balance_usd      REAL,
    tier_level               INTEGER,
    eligible_customer_segment TEXT,
    currency                 TEXT,
    region_code              TEXT,
    underwriting_policy     TEXT,
    risk_weight              REAL,
    amortization_type        TEXT,
    repayment_frequency      TEXT,
    early_repayment_penalty_percent REAL,
    promotional_rate_percent REAL,
    promotional_period_days  INTEGER,
    description              TEXT,
    created_by               TEXT,
    created_at               DATE,
    last_modified_by         TEXT,
    last_modified_at         DATE,
    status                   TEXT
);

INSERT INTO financial_product_pricing (pricing_id, product_code, effective_date, expiration_date, base_rate_percent, margin_percent, fee_fixed_usd, fee_percentage, minimum_balance_usd, maximum_balance_usd, tier_level, eligible_customer_segment, currency, region_code, underwriting_policy, risk_weight, amortization_type, repayment_frequency, early_repayment_penalty_percent, promotional_rate_percent, promotional_period_days, description, created_by, created_at, last_modified_by, last_modified_at, status) VALUES (1, 'LOAN_STD', '2023-01-01', '2025-12-31', 3.5, 1.2, 50.00, 0.5, 1000.00, 100000.00, 1, 'ALL', 'USD', 'RG001', 'STANDARD', 0.8, 'FIXED', 'MONTHLY', 2.0, 0.0, 0, 'Standard loan product', 'ADMIN', '2023-01-01', 'ADMIN', '2023-01-01', 'ACTIVE');
INSERT INTO financial_product_pricing (pricing_id, product_code, effective_date, expiration_date, base_rate_percent, margin_percent, fee_fixed_usd, fee_percentage, minimum_balance_usd, maximum_balance_usd, tier_level, eligible_customer_segment, currency, region_code, underwriting_policy, risk_weight, amortization_type, repayment_frequency, early_repayment_penalty_percent, promotional_rate_percent, promotional_period_days, description, created_by, created_at, last_modified_by, last_modified_at, status) VALUES (2, 'CC_GOLD', '2023-06-01', '2026-05-31', 0.0, 0.0, 0.00, 1.0, 0.00, 0.00, 2, 'PREMIUM', 'EUR', 'RG002', 'GOLD', 0.5, 'REVOLVING', 'MONTHLY', 5.0, 0.0, 0, 'Gold credit card with no interest', 'ADMIN', '2023-06-01', 'ADMIN', '2023-06-01', 'ACTIVE');
INSERT INTO financial_product_pricing (pricing_id, product_code, effective_date, expiration_date, base_rate_percent, margin_percent, fee_fixed_usd, fee_percentage, minimum_balance_usd, maximum_balance_usd, tier_level, eligible_customer_segment, currency, region_code, underwriting_policy, risk_weight, amortization_type, repayment_frequency, early_repayment_penalty_percent, promotional_rate_percent, promotional_period_days, description, created_by, created_at, last_modified_by, last_modified_at, status) VALUES (3, 'INVEST_FUND_A', '2023-03-15', '2028-03-14', 1.8, 0.5, 0.00, 0.2, 5000.00, 500000.00, 1, 'INVESTORS', 'GBP', 'RG003', 'INVESTMENT', 0.4, 'VARIABLE', 'QUARTERLY', 0.0, 0.5, 30, 'Promotional investment fund', 'ADMIN', '2023-03-15', 'ADMIN', '2023-03-15', 'ACTIVE');

-- Table recording details of collateral attached to loans
CREATE TABLE loan_collateral
(
    collateral_id           INTEGER PRIMARY KEY,
    loan_id                 INTEGER,
    collateral_type         TEXT,
    description             TEXT,
    valuation_amount_usd    REAL,
    appraisal_date          DATE,
    market_value_usd        REAL,
    depreciation_percent    REAL,
    lien_status             TEXT,
    priority_rank           INTEGER,
    legal_owner             TEXT,
    registration_number     TEXT,
    insurance_covered       TEXT,
    insurance_value_usd     REAL,
    insurance_expiry_date   DATE,
    location_address        TEXT,
    city                    TEXT,
    state_province          TEXT,
    country                 TEXT,
    gps_latitude            REAL,
    gps_longitude           REAL,
    created_at              DATE,
    created_by              TEXT,
    last_modified_at        DATE,
    last_modified_by        TEXT,
    status                  TEXT
);

INSERT INTO loan_collateral (collateral_id, loan_id, collateral_type, description, valuation_amount_usd, appraisal_date, market_value_usd, depreciation_percent, lien_status, priority_rank, legal_owner, registration_number, insurance_covered, insurance_value_usd, insurance_expiry_date, location_address, city, state_province, country, gps_latitude, gps_longitude, created_at, created_by, last_modified_at, last_modified_by, status) VALUES (1, 5001, 'REAL_ESTATE', 'Single_family_home', 250000.00, '2023-04-01', 240000.00, 4.0, 'ACTIVE', 1, 'JOHN_DOE', 'REG12345', 'YES', 250000.00, '2024-04-01', '123_MAIN_ST', 'NEWYORK', 'NY', 'USA', 40.7128, -74.0060, '2023-04-02', 'ADMIN', '2023-04-02', 'ADMIN', 'SECURED');
INSERT INTO loan_collateral (collateral_id, loan_id, collateral_type, description, valuation_amount_usd, appraisal_date, market_value_usd, depreciation_percent, lien_status, priority_rank, legal_owner, registration_number, insurance_covered, insurance_value_usd, insurance_expiry_date, location_address, city, state_province, country, gps_latitude, gps_longitude, created_at, created_by, last_modified_at, last_modified_by, status) VALUES (2, 5002, 'VEHICLE', 'Sedan_2020', 30000.00, '2023-05-10', 29500.00, 1.7, 'ACTIVE', 2, 'JANE_SMITH', 'VIN67890', 'YES', 30000.00, '2024-05-10', '456_OAK_RD', 'CHICAGO', 'IL', 'USA', 41.8781, -87.6298, '2023-05-11', 'ADMIN', '2023-05-11', 'ADMIN', 'SECURED');
INSERT INTO loan_collateral (collateral_id, loan_id, collateral_type, description, valuation_amount_usd, appraisal_date, market_value_usd, depreciation_percent, lien_status, priority_rank, legal_owner, registration_number, insurance_covered, insurance_value_usd, insurance_expiry_date, location_address, city, state_province, country, gps_latitude, gps_longitude, created_at, created_by, last_modified_at, last_modified_by, status) VALUES (3, 5003, 'EQUIPMENT', 'Industrial_printer', 15000.00, '2023-06-20', 14800.00, 1.3, 'PENDING', 3, 'ACME_CORP', 'EQP98765', 'NO', 0.00, NULL, '789_INDUSTRIAL_PARK', 'DALLAS', 'TX', 'USA', 32.7767, -96.7970, '2023-06-21', 'ADMIN', '2023-06-21', 'ADMIN', 'PENDING');

-- Table logging foreign exchange transactions performed through the bank
CREATE TABLE foreign_exchange_transaction
(
    fx_id                   INTEGER PRIMARY KEY,
    account_id              INTEGER,
    transaction_id          INTEGER,
    fx_date                 DATE,
    source_currency         TEXT,
    target_currency         TEXT,
    source_amount           REAL,
    target_amount           REAL,
    exchange_rate           REAL,
    spread_percent          REAL,
    settlement_date         DATE,
    settlement_status       TEXT,
    trade_type              TEXT,
    broker_id               INTEGER,
    counterparty_id         INTEGER,
    reference_number        TEXT,
    fee_fixed_usd           REAL,
    fee_percentage          REAL,
    compliance_checked      TEXT,
    compliance_status       TEXT,
    audit_log_id            INTEGER,
    created_by              TEXT,
    created_at              DATE,
    last_modified_by        TEXT,
    last_modified_at        DATE,
    status                  TEXT
);

INSERT INTO foreign_exchange_transaction (fx_id, account_id, transaction_id, fx_date, source_currency, target_currency, source_amount, target_amount, exchange_rate, spread_percent, settlement_date, settlement_status, trade_type, broker_id, counterparty_id, reference_number, fee_fixed_usd, fee_percentage, compliance_checked, compliance_status, audit_log_id, created_by, created_at, last_modified_by, last_modified_at, status) VALUES (1, 1001, 5001, '2023-09-01', 'USD', 'EUR', 10000.00, 9100.00, 0.91, 0.2, '2023-09-03', 'SETTLED', 'SPOT', 200, 300, 'REF001', 15.00, 0.1, 'YES', 'CLEAR', 4001, 'ADMIN', '2023-09-01', 'ADMIN', '2023-09-03', 'COMPLETED');
INSERT INTO foreign_exchange_transaction (fx_id, account_id, transaction_id, fx_date, source_currency, target_currency, source_amount, target_amount, exchange_rate, spread_percent, settlement_date, settlement_status, trade_type, broker_id, counterparty_id, reference_number, fee_fixed_usd, fee_percentage, compliance_checked, compliance_status, audit_log_id, created_by, created_at, last_modified_by, last_modified_at, status) VALUES (2, 1002, 5002, '2023-09-02', 'GBP', 'USD', 5000.00, 6900.00, 1.38, 0.15, '2023-09-04', 'PENDING', 'FORWARD', 201, 301, 'REF002', 12.00, 0.08, 'YES', 'IN_REVIEW', 4002, 'ADMIN', '2023-09-02', 'ADMIN', '2023-09-04', 'IN_PROGRESS');
INSERT INTO foreign_exchange_transaction (fx_id, account_id, transaction_id, fx_date, source_currency, target_currency, source_amount, target_amount, exchange_rate, spread_percent, settlement_date, settlement_status, trade_type, broker_id, counterparty_id, reference_number, fee_fixed_usd, fee_percentage, compliance_checked, compliance_status, audit_log_id, created_by, created_at, last_modified_by, last_modified_at, status) VALUES (3, 1003, 5003, '2023-09-03', 'JPY', 'USD', 1000000.00, 9100.00, 0.0091, 0.25, '2023-09-05', 'SETTLED', 'SWAP', 202, 302, 'REF003', 20.00, 0.12, 'YES', 'CLEAR', 4003, 'ADMIN', '2023-09-03', 'ADMIN', '2023-09-05', 'COMPLETED');