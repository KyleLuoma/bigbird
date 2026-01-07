-- Customer retention analysis per district and month
CREATE TABLE customer_retention_analysis
(
    analysis_id               INTEGER PRIMARY KEY,
    district_id               INTEGER NOT NULL,
    month                     TEXT NOT NULL,
    year                      INTEGER NOT NULL,
    retention_rate            REAL NOT NULL,
    new_customers             INTEGER NOT NULL,
    churned_customers         INTEGER NOT NULL,
    avg_balance               REAL NOT NULL,
    avg_transactions          INTEGER NOT NULL,
    promo_response_rate      REAL NOT NULL,
    satisfaction_score       REAL NOT NULL,
    net_promoter_score       INTEGER NOT NULL,
    campaign_id               INTEGER NOT NULL,
    segment                  TEXT NOT NULL,
    channel                  TEXT NOT NULL,
    cost_per_acquisition      REAL NOT NULL,
    lifetime_value            REAL NOT NULL,
    days_since_last_login     INTEGER NOT NULL,
    active_flag              TEXT NOT NULL,
    notes                    TEXT
);
INSERT INTO customer_retention_analysis VALUES (1, 10, 'January', 2025, 0.87, 120, 15, 3500.5, 45, 0.25, 4.2, 58, 5, 'Retail', 'Email', 12.5, 5400.0, 30, 'Y', 'Initial rollout');
INSERT INTO customer_retention_analysis VALUES (2, 12, 'February', 2025, 0.82, 95, 20, 2800.0, 38, 0.22, 3.9, 45, 6, 'SMB', 'SMS', 9.8, 4100.0, 45, 'Y', 'Second month data');
INSERT INTO customer_retention_analysis VALUES (3, 8, 'March', 2025, 0.90, 140, 10, 4200.3, 50, 0.30, 4.5, 65, 7, 'Enterprise', 'Phone', 15.0, 6200.0, 20, 'Y', 'Peak performance');

-- Branch operational budget tracking
CREATE TABLE branch_operational_budget
(
    budget_id                INTEGER PRIMARY KEY,
    branch_id                INTEGER NOT NULL,
    fiscal_year              INTEGER NOT NULL,
    budget_type              TEXT NOT NULL,
    allocated_amount         REAL NOT NULL,
    spent_amount             REAL NOT NULL,
    variance                 REAL NOT NULL,
    capital_expenditure      REAL NOT NULL,
    operational_expenditure  REAL NOT NULL,
    personnel_costs          REAL NOT NULL,
    technology_investment    REAL NOT NULL,
    marketing_budget         REAL NOT NULL,
    compliance_fees          REAL NOT NULL,
    insurance_premiums       REAL NOT NULL,
    utilities_cost           REAL NOT NULL,
    rent_expense             REAL NOT NULL,
    net_profit               REAL NOT NULL,
    approved_by              TEXT NOT NULL,
    approval_date            DATE NOT NULL,
    remarks                  TEXT
);
INSERT INTO branch_operational_budget VALUES (101, 3, 2025, 'Annual', 1200000.0, 850000.0, 350000.0, 200000.0, 650000.0, 300000.0, 150000.0, 80000.0, 50000.0, 60000.0, 40000.0, 250000.0, 'CFO', '2024-12-15', 'On track');
INSERT INTO branch_operational_budget VALUES (102, 5, 2025, 'Quarterly', 300000.0, 210000.0, 90000.0, 50000.0, 160000.0, 75000.0, 40000.0, 20000.0, 12000.0, 15000.0, 10000.0, 50000.0, 'CFO', '2025-01-10', 'Q1 review');
INSERT INTO branch_operational_budget VALUES (103, 7, 2025, 'Annual', 950000.0, 970000.0, -20000.0, 180000.0, 540000.0, 250000.0, 100000.0, 60000.0, 30000.0, 45000.0, 35000.0, 180000.0, 'CFO', '2024-12-20', 'Slight overrun');

-- Insurance claim review details
CREATE TABLE insurance_claim_review
(
    review_id                INTEGER PRIMARY KEY,
    claim_id                 INTEGER NOT NULL,
    reviewer_id              INTEGER NOT NULL,
    review_date              DATE NOT NULL,
    decision                 TEXT NOT NULL,
    payout_amount            REAL NOT NULL,
    deductible_applied       REAL NOT NULL,
    notes                    TEXT,
    fraud_flag               TEXT NOT NULL,
    escalation_level         INTEGER NOT NULL,
    policy_number            TEXT NOT NULL,
    claimant_name            TEXT NOT NULL,
    incident_type            TEXT NOT NULL,
    incident_date            DATE NOT NULL,
    location_code            TEXT NOT NULL,
    adjuster_id              INTEGER NOT NULL,
    verification_status      TEXT NOT NULL,
    verification_date        DATE,
    prior_claims_count       INTEGER NOT NULL,
    average_claim_amount     REAL NOT NULL
);
INSERT INTO insurance_claim_review VALUES (2001, 45001, 12, '2025-02-14', 'Approved', 12500.0, 500.0, 'Standard claim', 'N', 1, 'POL12345', 'JohnDoe', 'Fire', '2025-01-20', 'LOC01', 33, 'Verified', '2025-02-15', 2, 8000.0);
INSERT INTO insurance_claim_review VALUES (2002, 45002, 15, '2025-02-18', 'Denied', 0.0, 0.0, 'Insufficient documentation', 'Y', 2, 'POL67890', 'JaneSmith', 'Flood', '2025-01-25', 'LOC02', 37, 'Pending', NULL, 0, 0.0);
INSERT INTO insurance_claim_review VALUES (2003, 45003, 14, '2025-02-20', 'Approved', 34000.0, 1000.0, 'High loss verified', 'N', 1, 'POL54321', 'AcmeCorp', 'Theft', '2025-02-05', 'LOC03', 40, 'Verified', '2025-02-22', 5, 21000.0);

-- Environmental policy document registry
CREATE TABLE environmental_policy_document
(
    doc_id                   INTEGER PRIMARY KEY,
    policy_name              TEXT NOT NULL,
    version_number           TEXT NOT NULL,
    effective_date           DATE NOT NULL,
    expiration_date          DATE,
    jurisdiction             TEXT NOT NULL,
    responsible_department  TEXT NOT NULL,
    approval_status          TEXT NOT NULL,
    approved_by              TEXT NOT NULL,
    approval_date            DATE NOT NULL,
    review_cycle_months      INTEGER NOT NULL,
    last_review_date         DATE,
    next_review_date         DATE,
    compliance_score         REAL,
    amendment_required       TEXT NOT NULL,
    amendment_deadline       DATE,
    document_url             TEXT,
    summary                  TEXT,
    confidentiality_level    TEXT NOT NULL,
    retention_period_years   INTEGER NOT NULL
);
INSERT INTO environmental_policy_document VALUES (301, 'CarbonEmissionReduction', 'v1.2', '2024-01-01', NULL, 'National', 'Sustainability', 'Approved', 'ChiefEnvOfficer', '2023-12-15', 12, '2024-12-01', '2025-12-01', 92.5, 'N', NULL, 'http://docs.example.com/carbon_v1.2.pdf', 'Policy to reduce emissions by 30%', 'Public', 7);
INSERT INTO environmental_policy_document VALUES (302, 'WaterUsageGuidelines', 'v3.0', '2022-06-01', '2027-06-01', 'Regional', 'Operations', 'Approved', 'DirectorOps', '2022-05-20', 24, '2024-06-01', '2026-06-01', 88.0, 'Y', '2025-03-15', 'http://docs.example.com/water_v3.pdf', 'Guidelines for water conservation', 'Confidential', 10);
INSERT INTO environmental_policy_document VALUES (303, 'WasteManagementPlan', 'v2.5', '2023-09-15', NULL, 'Local', 'Facilities', 'Pending', 'MgrFacilities', '2023-08-30', 18, NULL, NULL, NULL, 'N', NULL, 'http://docs.example.com/waste_v2.5.pdf', 'Plan for hazardous waste disposal', 'Internal', 5);

-- Fleet route schedule for delivery vehicles
CREATE TABLE fleet_route_schedule
(
    schedule_id              INTEGER PRIMARY KEY,
    vehicle_id               INTEGER NOT NULL,
    driver_id                INTEGER NOT NULL,
    route_number             TEXT NOT NULL,
    start_location_code      TEXT NOT NULL,
    end_location_code        TEXT NOT NULL,
    departure_time           TEXT NOT NULL,
    arrival_time             TEXT NOT NULL,
    scheduled_distance_km    REAL NOT NULL,
    estimated_fuel_liters    REAL NOT NULL,
    cargo_weight_kg          REAL NOT NULL,
    cargo_type               TEXT NOT NULL,
    priority_level           INTEGER NOT NULL,
    day_of_week              TEXT NOT NULL,
    week_number              INTEGER NOT NULL,
    month                    TEXT NOT NULL,
    year                     INTEGER NOT NULL,
    maintenance_required    TEXT NOT NULL,
    notes                    TEXT,
    compliance_check_passed  TEXT NOT NULL
);
INSERT INTO fleet_route_schedule VALUES (401, 23, 101, 'R100', 'WH01', 'ST03', '08:00', '12:30', 250.5, 35.2, 1500.0, 'Electronics', 1, 'Monday', 12, 'March', 2025, 'N', 'On time', 'Y');
INSERT INTO fleet_route_schedule VALUES (402, 27, 104, 'R101', 'WH02', 'ST04', '09:15', '14:00', 300.0, 40.0, 2000.0, 'Furniture', 2, 'Wednesday', 12, 'March', 2025, 'Y', 'Vehicle requires tire check', 'N');
INSERT INTO fleet_route_schedule VALUES (403, 30, 108, 'R102', 'WH03', 'ST05', '07:30', '11:45', 180.0, 25.5, 800.0, 'Food', 1, 'Friday', 12, 'March', 2025, 'N', 'Cold chain required', 'Y');

-- Digital wallet transaction ledger
CREATE TABLE digital_wallet_transaction
(
    tx_id                    INTEGER PRIMARY KEY,
    wallet_id                INTEGER NOT NULL,
    user_id                  INTEGER NOT NULL,
    tx_timestamp             TEXT NOT NULL,
    tx_type                  TEXT NOT NULL,
    amount                   REAL NOT NULL,
    currency_code            TEXT NOT NULL,
    merchant_id              INTEGER,
    merchant_category        TEXT,
    status                   TEXT NOT NULL,
    fee_amount               REAL,
    net_amount               REAL NOT NULL,
    device_id                TEXT,
    ip_address               TEXT,
    location_country         TEXT,
    location_city            TEXT,
    fraud_score              REAL,
    verification_method      TEXT,
    notes                    TEXT,
    settlement_date          DATE
);
INSERT INTO digital_wallet_transaction VALUES (5001, 301, 1501, '2025-02-10 14:23:00', 'Payment', 120.50, 'USD', 8001, 'Retail', 'Completed', 2.50, 118.00, 'DEV123', '192.168.1.10', 'USA', 'NewYork', 0.02, 'OTP', 'Standard purchase', '2025-02-11');
INSERT INTO digital_wallet_transaction VALUES (5002, 302, 1502, '2025-02-11 09:45:00', 'Transfer', 500.00, 'EUR', NULL, NULL, 'Pending', 0.00, 500.00, 'DEV124', '10.0.0.5', 'Germany', 'Berlin', 0.00, 'None', 'Peer to peer', NULL);
INSERT INTO digital_wallet_transaction VALUES (5003, 303, 1503, '2025-02-12 20:15:00', 'TopUp', 250.00, 'GBP', NULL, NULL, 'Completed', 1.25, 248.75, 'DEV125', '172.16.0.2', 'UK', 'London', 0.01, 'SMS', 'Wallet recharge', '2025-02-13');

-- Loan amortization schedule per loan
CREATE TABLE loan_amortization_schedule
(
    amort_id                 INTEGER PRIMARY KEY,
    loan_id                  INTEGER NOT NULL,
    payment_number           INTEGER NOT NULL,
    due_date                 DATE NOT NULL,
    principal_due            REAL NOT NULL,
    interest_due             REAL NOT NULL,
    total_due                REAL NOT NULL,
    remaining_principal      REAL NOT NULL,
    payment_status           TEXT NOT NULL,
    payment_method           TEXT,
    late_fee                 REAL,
    grace_period_days        INTEGER,
    escrow_balance           REAL,
    insurance_premium        REAL,
    tax_withholding          REAL,
    notes                    TEXT,
    processed_timestamp      TEXT,
    created_by               TEXT NOT NULL,
    last_modified_by         TEXT,
    last_modified_timestamp  TEXT
);
INSERT INTO loan_amortization_schedule VALUES (6001, 4001, 1, '2025-03-01', 500.00, 45.00, 545.00, 9450.00, 'Pending', 'AutoDebit', 0.0, 5, 0.0, 0.0, 0.0, 'First payment', '2025-02-28 10:00:00', 'system', 'system', '2025-02-28 10:00:00');
INSERT INTO loan_amortization_schedule VALUES (6002, 4001, 2, '2025-04-01', 500.00, 42.75, 542.75, 8950.00, 'Pending', 'AutoDebit', 0.0, 5, 0.0, 0.0, 0.0, 'Second payment', '2025-03-01 10:00:00', 'system', 'system', '2025-03-01 10:00:00');
INSERT INTO loan_amortization_schedule VALUES (6003, 4001, 3, '2025-05-01', 500.00, 40.50, 540.50, 8450.00, 'Pending', 'AutoDebit', 0.0, 5, 0.0, 0.0, 0.0, 'Third payment', '2025-04-01 10:00:00', 'system', 'system', '2025-04-01 10:00:00');

-- Credit card usage summary per client
CREATE TABLE credit_card_usage_summary
(
    summary_id               INTEGER PRIMARY KEY,
    client_id                INTEGER NOT NULL,
    card_id                  INTEGER NOT NULL,
    month                    TEXT NOT NULL,
    year                     INTEGER NOT NULL,
    total_spent              REAL NOT NULL,
    transaction_count        INTEGER NOT NULL,
    average_transaction_value REAL NOT NULL,
    max_transaction_amount  REAL NOT NULL,
    min_transaction_amount  REAL NOT NULL,
    cash_advance_total       REAL,
    fee_total                REAL,
    reward_points_earned     INTEGER,
    reward_points_redeemed   INTEGER,
    overseas_spend_percent   REAL,
    online_spend_percent     REAL,
    offline_spend_percent    REAL,
    high_risk_transaction_flag TEXT NOT NULL,
    fraud_alerts_count       INTEGER,
    notes                    TEXT,
    last_updated_timestamp   TEXT NOT NULL
);
INSERT INTO credit_card_usage_summary VALUES (7001, 2101, 401, 'January', 2025, 3420.75, 45, 76.02, 500.00, 10.00, 150.00, 5.00, 3500, 200, 5.0, 60.0, 35.0, 'N', 0, 'Normal month', '2025-02-01 08:00:00');
INSERT INTO credit_card_usage_summary VALUES (7002, 2102, 402, 'January', 2025, 2670.40, 38, 70.27, 450.00, 15.00, 200.00, 4.00, 2800, 150, 8.0, 55.0, 37.0, 'Y', 2, 'Two flagged transactions', '2025-02-01 08:30:00');
INSERT INTO credit_card_usage_summary VALUES (7003, 2103, 403, 'January', 2025, 4150.20, 60, 69.17, 600.00, 12.00, 180.00, 6.00, 4200, 250, 4.5, 65.0, 30.5, 'N', 0, 'High spend month', '2025-02-01 09:00:00');

-- ATM cash inventory and replenishment log
CREATE TABLE atm_cash_inventory
(
    log_id                   INTEGER PRIMARY KEY,
    atm_id                   INTEGER NOT NULL,
    inventory_timestamp      TEXT NOT NULL,
    total_cash_loaded        REAL NOT NULL,
    total_cash_dispensed     REAL NOT NULL,
    current_cash_balance     REAL NOT NULL,
    denomination_100_count   INTEGER NOT NULL,
    denomination_50_count    INTEGER NOT NULL,
    denomination_20_count    INTEGER NOT NULL,
    denomination_10_count    INTEGER NOT NULL,
    denomination_5_count     INTEGER NOT NULL,
    denomination_1_count     INTEGER NOT NULL,
    technician_id            INTEGER NOT NULL,
    service_type             TEXT NOT NULL,
    next_service_due_days    INTEGER NOT NULL,
    location_code            TEXT NOT NULL,
    security_incident_flag   TEXT NOT NULL,
    notes                    TEXT,
    compliance_checked       TEXT NOT NULL,
    last_updated_by          TEXT NOT NULL
);
INSERT INTO atm_cash_inventory VALUES (8001, 55, '2025-02-10 06:00:00', 50000.0, 12000.0, 38000.0, 200, 150, 300, 400, 500, 600, 22, 'Replenishment', 30, 'LOC56', 'N', 'All good', 'Y', 'system');
INSERT INTO atm_cash_inventory VALUES (8002, 58, '2025-02-12 07:30:00', 60000.0, 25000.0, 35000.0, 250, 180, 350, 450, 550, 650, 23, 'Replenishment', 30, 'LOC59', 'Y', 'Tape tamper detected', 'Y', 'system');
INSERT INTO atm_cash_inventory VALUES (8003, 60, '2025-02-15 05:45:00', 55000.0, 20000.0, 35000.0, 220, 170, 320, 420, 520, 620, 24, 'Inspection', 60, 'LOC61', 'N', 'Routine check', 'Y', 'system');

-- Marketing attribution model parameters
CREATE TABLE marketing_attribution_model
(
    model_id                 INTEGER PRIMARY KEY,
    model_name               TEXT NOT NULL,
    version                  TEXT NOT NULL,
    created_date             DATE NOT NULL,
    last_updated_date        DATE NOT NULL,
    channel_last_click_weight REAL NOT NULL,
    channel_first_click_weight REAL NOT NULL,
    decay_factor             REAL NOT NULL,
    attribution_window_days INTEGER NOT NULL,
    conversion_threshold    REAL NOT NULL,
    data_source              TEXT NOT NULL,
    data_refresh_interval_hours INTEGER NOT NULL,
    implementation_status   TEXT NOT NULL,
    responsible_team         TEXT NOT NULL,
    validation_accuracy      REAL,
    validation_precision     REAL,
    validation_recall        REAL,
    notes                    TEXT,
    is_active                TEXT NOT NULL,
    archived_flag            TEXT NOT NULL
);
INSERT INTO marketing_attribution_model VALUES (9001, 'MultiTouchModel', 'v1.0', '2024-11-01', '2025-01-15', 0.6, 0.2, 0.9, 30, 0.05, 'WebAnalytics', 24, 'Deployed', 'MarketingAnalytics', 0.92, 0.88, 0.85, 'Baseline model', 'Y', 'N');
INSERT INTO marketing_attribution_model VALUES (9002, 'LinearAttribution', 'v2.1', '2023-05-10', '2025-02-01', 0.5, 0.5, 1.0, 60, 0.03, 'CRM', 12, 'Testing', 'DataScience', 0.85, 0.80, 0.78, 'Testing phase', 'N', 'N');
INSERT INTO marketing_attribution_model VALUES (9003, 'TimeDecayModel', 'v1.3', '2024-02-20', '2025-02-10', 0.7, 0.1, 0.85, 45, 0.04, 'AdServer', 6, 'Deployed', 'PerformanceTeam', 0.90, 0.87, 0.84, 'Optimized for short campaigns', 'Y', 'N');