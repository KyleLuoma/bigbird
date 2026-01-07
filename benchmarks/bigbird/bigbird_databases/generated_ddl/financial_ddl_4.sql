-- Branch performance metrics per reporting period
CREATE TABLE branch_performance
(
    branch_perf_id INTEGER PRIMARY KEY,
    branch_id INTEGER NOT NULL,
    report_date DATE NOT NULL,
    total_deposits REAL NOT NULL,
    total_loans REAL NOT NULL,
    num_clients INTEGER NOT NULL,
    avg_account_balance REAL NOT NULL,
    new_accounts INTEGER NOT NULL,
    closed_accounts INTEGER NOT NULL,
    atm_transactions INTEGER NOT NULL,
    online_transactions INTEGER NOT NULL,
    customer_satisfaction INTEGER NOT NULL,
    staff_count INTEGER NOT NULL,
    manager_id INTEGER NOT NULL,
    operating_cost REAL NOT NULL,
    revenue REAL NOT NULL,
    profit_margin REAL NOT NULL,
    branch_rating TEXT NOT NULL,
    region_code TEXT NOT NULL,
    last_audit_date DATE NOT NULL
);

INSERT INTO branch_performance (branch_perf_id, branch_id, report_date, total_deposits, total_loans, num_clients, avg_account_balance, new_accounts, closed_accounts, atm_transactions, online_transactions, customer_satisfaction, staff_count, manager_id, operating_cost, revenue, profit_margin, branch_rating, region_code, last_audit_date) VALUES (1, 101, '2023-12-31', 1250000.50, 850000.75, 3500, 356.78, 120, 15, 5400, 2300, 87, 45, 12, 56000.00, 102000.00, 0.23, 'A', 'R1', '2023-11-15');
INSERT INTO branch_performance VALUES (2, 102, '2023-12-31', 980000.00, 720000.00, 2800, 350.12, 95, 10, 4300, 1900, 82, 38, 14, 47000.00, 88000.00, 0.20, 'B', 'R2', '2023-11-20');
INSERT INTO branch_performance VALUES (3, 103, '2023-12-31', 1430000.75, 1100000.25, 4200, 340.55, 150, 8, 6100, 2600, 90, 52, 16, 63000.00, 124000.00, 0.27, 'A', 'R3', '2023-11-10');

-- Regional statistical aggregates
CREATE TABLE regional_statistics
(
    region_stat_id INTEGER PRIMARY KEY,
    region_id INTEGER NOT NULL,
    year INTEGER NOT NULL,
    population INTEGER NOT NULL,
    gdp REAL NOT NULL,
    unemployment_rate REAL NOT NULL,
    avg_income REAL NOT NULL,
    num_branches INTEGER NOT NULL,
    total_assets REAL NOT NULL,
    total_liabilities REAL NOT NULL,
    credit_growth REAL NOT NULL,
    loan_growth REAL NOT NULL,
    inflation_rate REAL NOT NULL,
    fiscal_deficit REAL NOT NULL,
    trade_balance REAL NOT NULL,
    education_index REAL NOT NULL,
    health_index REAL NOT NULL,
    crime_rate REAL NOT NULL,
    environmental_score REAL NOT NULL,
    last_update DATE NOT NULL
);

INSERT INTO regional_statistics VALUES (1, 1, 2023, 1250000, 55000.00, 5.2, 32000.00, 15, 8450000.00, 7200000.00, 3.1, 2.8, 2.5, -1.2, 500.00, 0.85, 0.78, 4.2, 76.5, '2023-12-01');
INSERT INTO regional_statistics VALUES (2, 2, 2023, 980000, 47000.00, 6.1, 29500.00, 12, 6200000.00, 5400000.00, 2.9, 2.5, 2.8, -0.9, 420.00, 0.80, 0.74, 5.0, 71.3, '2023-12-01');
INSERT INTO regional_statistics VALUES (3, 3, 2023, 1430000, 62000.00, 4.8, 34000.00, 18, 9600000.00, 8100000.00, 3.4, 3.0, 2.3, -1.5, 580.00, 0.88, 0.82, 3.7, 79.1, '2023-12-01');

-- Marketing channel performance data
CREATE TABLE marketing_channel
(
    channel_id INTEGER PRIMARY KEY,
    channel_name TEXT NOT NULL,
    launch_date DATE NOT NULL,
    budget REAL NOT NULL,
    reach INTEGER NOT NULL,
    conversion_rate REAL NOT NULL,
    cpc REAL NOT NULL,
    cpm REAL NOT NULL,
    avg_session_duration REAL NOT NULL,
    bounce_rate REAL NOT NULL,
    ctr REAL NOT NULL,
    impressions INTEGER NOT NULL,
    clicks INTEGER NOT NULL,
    shares INTEGER NOT NULL,
    likes INTEGER NOT NULL,
    comments INTEGER NOT NULL,
    leads_generated INTEGER NOT NULL,
    cost_per_lead REAL NOT NULL,
    platform TEXT NOT NULL,
    status TEXT NOT NULL
);

INSERT INTO marketing_channel VALUES (1, 'EmailBlast', '2022-01-15', 15000.00, 250000, 2.5, 0.60, 5.00, 180.0, 35.0, 1.2, 1200000, 14400, 800, 3200, 250, 560, 26.79, 'Email', 'Active');
INSERT INTO marketing_channel VALUES (2, 'SocialMediaAds', '2022-03-01', 30000.00, 800000, 1.8, 0.75, 8.00, 95.0, 45.0, 0.9, 2500000, 22500, 2100, 7800, 620, 870, 34.48, 'Instagram', 'Active');
INSERT INTO marketing_channel VALUES (3, 'SearchEngine', '2021-11-20', 22000.00, 500000, 3.2, 0.55, 6.20, 210.0, 28.0, 1.5, 1800000, 28800, 1300, 5400, 400, 720, 30.56, 'Google', 'Paused');

-- Central bank currency reserve holdings
CREATE TABLE currency_reserve
(
    reserve_id INTEGER PRIMARY KEY,
    currency_code TEXT NOT NULL,
    reserve_amount REAL NOT NULL,
    last_update DATE NOT NULL,
    central_bank_id INTEGER NOT NULL,
    valuation_method TEXT NOT NULL,
    interest_rate REAL NOT NULL,
    maturity_year INTEGER NOT NULL,
    risk_category TEXT NOT NULL,
    notes TEXT NOT NULL,
    source TEXT NOT NULL,
    audited_by INTEGER NOT NULL,
    audit_date DATE NOT NULL,
    compliance_status TEXT NOT NULL,
    external_rating TEXT NOT NULL,
    exchange_rate_to_usd REAL NOT NULL,
    historical_high REAL NOT NULL,
    historical_low REAL NOT NULL,
    volatility_index REAL NOT NULL,
    manager_id INTEGER NOT NULL
);

INSERT INTO currency_reserve VALUES (1, 'USD', 2500000000.00, '2023-12-15', 1, 'Market', 0.12, 2025, 'Low', 'MainReserve', 'Internal', 45, 'Compliant', 'AAA', 1.00, 1.05, 0.95, 0.02, 12);
INSERT INTO currency_reserve VALUES (2, 'EUR', 1800000000.00, '2023-12-15', 1, 'Market', 0.10, 2026, 'Medium', 'EuroHolding', 'External', 46, 'Compliant', 'AA', 1.10, 1.15, 1.05, 0.03, 14);
INSERT INTO currency_reserve VALUES (3, 'JPY', 320000000000.00, '2023-12-15', 1, 'Market', 0.08, 2027, 'Low', 'YenReserve', 'Internal', 45, 'Compliant', 'AAA', 0.009, 0.010, 0.008, 0.04, 16);

-- Records of regulatory fines imposed
CREATE TABLE regulatory_fine
(
    fine_id INTEGER PRIMARY KEY,
    regulator TEXT NOT NULL,
    entity_type TEXT NOT NULL,
    entity_id INTEGER NOT NULL,
    fine_amount REAL NOT NULL,
    fine_date DATE NOT NULL,
    reason_code TEXT NOT NULL,
    severity_level TEXT NOT NULL,
    status TEXT NOT NULL,
    payment_due DATE NOT NULL,
    paid_amount REAL NOT NULL,
    payment_date DATE NOT NULL,
    notes TEXT NOT NULL,
    officer_id INTEGER NOT NULL,
    jurisdiction TEXT NOT NULL,
    case_number TEXT NOT NULL,
    appeal_deadline DATE NOT NULL,
    appealed INTEGER NOT NULL,
    resolution TEXT NOT NULL,
    reset_flag INTEGER NOT NULL
);

INSERT INTO regulatory_fine VALUES (1, 'FinComm', 'Bank', 101, 25000.00, '2023-07-10', 'LateReporting', 'High', 'Paid', '2023-08-10', 25000.00, '2023-08-05', 'Settlement', 7, 'National', 'FC20230710', '2023-09-10', 0, 'Closed', 0);
INSERT INTO regulatory_fine VALUES (2, 'DataAuth', 'Branch', 202, 15000.00, '2023-05-22', 'DataBreach', 'Medium', 'Unpaid', '2023-06-22', 0.00, NULL, 'Pending', 12, 'Regional', 'DA20230522', '2023-07-22', 1, 'UnderAppeal', 0);
INSERT INTO regulatory_fine VALUES (3, 'EcoAgency', 'Facility', 303, 18000.00, '2023-03-15', 'EnvViolation', 'Low', 'Paid', '2023-04-15', 18000.00, '2023-04-10', 'CorrectiveActionTaken', 9, 'Local', 'EA20230315', '2023-05-15', 0, 'Closed', 0);

-- External audit engagements
CREATE TABLE external_audit
(
    audit_id INTEGER PRIMARY KEY,
    auditor_name TEXT NOT NULL,
    audit_scope TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    audit_score REAL NOT NULL,
    findings INTEGER NOT NULL,
    recommendations INTEGER NOT NULL,
    follow_up_date DATE NOT NULL,
    status TEXT NOT NULL,
    cost REAL NOT NULL,
    audit_type TEXT NOT NULL,
    audited_entity TEXT NOT NULL,
    entity_id INTEGER NOT NULL,
    notes TEXT NOT NULL,
    risk_level TEXT NOT NULL,
    compliance_rate REAL NOT NULL,
    auditor_contact TEXT NOT NULL,
    document_ref TEXT NOT NULL,
    version INTEGER NOT NULL
);

INSERT INTO external_audit VALUES (1, 'AuditCo', 'Financial', '2023-01-10', '2023-01-20', 92.5, 5, 4, '2023-04-01', 'Completed', 12000.00, 'Annual', 'Bank', 101, 'No major issues', 'Medium', 0.96, '555-0101', 'DOC12345', 1);
INSERT INTO external_audit VALUES (2, 'SecureCheck', 'IT Security', '2023-02-05', '2023-02-15', 88.0, 8, 6, '2023-05-01', 'Completed', 15000.00, 'Special', 'Branch', 202, 'Vulnerabilities found', 'High', 0.89, '555-0202', 'DOC67890', 1);
INSERT INTO external_audit VALUES (3, 'CompliancePartners', 'Regulatory', '2023-03-12', '2023-03-22', 94.2, 3, 2, '2023-06-15', 'Completed', 11000.00, 'Quarterly', 'Facility', 303, 'All compliant', 'Low', 0.98, '555-0303', 'DOC24680', 1);

-- Quantitative risk metrics
CREATE TABLE risk_metric
(
    metric_id INTEGER PRIMARY KEY,
    risk_category TEXT NOT NULL,
    sub_category TEXT NOT NULL,
    weight REAL NOT NULL,
    threshold REAL NOT NULL,
    current_value REAL NOT NULL,
    last_calculated DATE NOT NULL,
    source_system TEXT NOT NULL,
    responsible_team TEXT NOT NULL,
    mitigation_plan TEXT NOT NULL,
    status TEXT NOT NULL,
    confidence_level REAL NOT NULL,
    historical_average REAL NOT NULL,
    trend_direction TEXT NOT NULL,
    impact_score REAL NOT NULL,
    likelihood_score REAL NOT NULL,
    risk_score REAL NOT NULL,
    comments TEXT NOT NULL,
    escalation_level TEXT NOT NULL,
    review_cycle_days INTEGER NOT NULL
);

INSERT INTO risk_metric VALUES (1, 'Credit', 'DefaultProbability', 0.30, 0.05, 0.042, '2023-12-01', 'RiskEngine', 'Analytics', 'Increase monitoring', 'Open', 0.95, 0.048, 'Down', 0.70, 0.06, 0.042, 'Within tolerance', 'Medium', 30);
INSERT INTO risk_metric VALUES (2, 'Operational', 'ProcessFailure', 0.20, 0.02, 0.018, '2023-12-01', 'OpsMonitor', 'Operations', 'Process redesign', 'Open', 0.90, 0.022, 'Down', 0.55, 0.03, 0.018, 'Improving', 'Low', 60);
INSERT INTO risk_metric VALUES (3, 'Market', 'LiquidityStress', 0.25, 0.04, 0.045, '2023-12-01', 'MarketData', 'Treasury', 'Boost liquidity buffers', 'Open', 0.92, 0.047, 'Up', 0.80, 0.05, 0.045, 'Slight increase', 'High', 45);

-- Policy revision history
CREATE TABLE policy_revision
(
    revision_id INTEGER PRIMARY KEY,
    policy_id INTEGER NOT NULL,
    revision_number INTEGER NOT NULL,
    revision_date DATE NOT NULL,
    author_id INTEGER NOT NULL,
    summary TEXT NOT NULL,
    change_type TEXT NOT NULL,
    affected_modules TEXT NOT NULL,
    previous_version INTEGER NOT NULL,
    new_version INTEGER NOT NULL,
    approval_status TEXT NOT NULL,
    approved_by INTEGER NOT NULL,
    approval_date DATE NOT NULL,
    effective_date DATE NOT NULL,
    expiry_date DATE NOT NULL,
    compliance_impact TEXT NOT NULL,
    notes TEXT NOT NULL,
    document_url TEXT NOT NULL,
    review_cycle_days INTEGER NOT NULL,
    last_review_date DATE NOT NULL
);

INSERT INTO policy_revision VALUES (1, 10, 3, '2023-06-01', 5, 'Updated KYC thresholds', 'Amendment', 'KYC,Onboarding', 2, 3, 'Approved', 9, '2023-06-05', '2023-07-01', '2025-06-30', 'Medium', 'No issues', 'http://docs/policy10_v3.pdf', 365, '2024-06-01');
INSERT INTO policy_revision VALUES (2, 12, 2, '2023-08-15', 7, 'Added remote work provisions', 'Addition', 'HR,RemoteAccess', 1, 2, 'Pending', NULL, NULL, '2023-09-01', '2024-08-31', 'Low', 'Awaiting signoff', 'http://docs/policy12_v2.pdf', 180, '2024-02-15');
INSERT INTO policy_revision VALUES (3, 15, 4, '2023-11-20', 4, 'Revised loan interest calculation', 'Revision', 'Loan,InterestEngine', 3, 4, 'Approved', 11, '2023-11-25', '2023-12-01', '2026-11-30', 'High', 'Stakeholder review completed', 'http://docs/policy15_v4.pdf', 730, '2024-11-20');

-- Detailed audit event log
CREATE TABLE audit_event
(
    event_id INTEGER PRIMARY KEY,
    audit_id INTEGER NOT NULL,
    event_timestamp DATE NOT NULL,
    event_type TEXT NOT NULL,
    user_id INTEGER NOT NULL,
    description TEXT NOT NULL,
    ip_address TEXT NOT NULL,
    device_id TEXT NOT NULL,
    outcome TEXT NOT NULL,
    severity TEXT NOT NULL,
    related_object TEXT NOT NULL,
    object_id INTEGER NOT NULL,
    ticket_number TEXT NOT NULL,
    resolution TEXT NOT NULL,
    duration_seconds INTEGER NOT NULL,
    initiated_by TEXT NOT NULL,
    closed_by TEXT NOT NULL,
    close_timestamp DATE NOT NULL,
    escalation INTEGER NOT NULL,
    comments TEXT NOT NULL
);

INSERT INTO audit_event VALUES (1, 1, '2023-01-15', 'Login', 101, 'Auditor logged in', '192.168.1.10', 'DEV001', 'Success', 'Info', 'User', 101, 'TCK1001', 'N/A', 30, 'System', 'System', '2023-01-15', 0, 'Initial access');
INSERT INTO audit_event VALUES (2, 1, '2023-01-16', 'DataExport', 101, 'Exported transaction data', '192.168.1.10', 'DEV001', 'Success', 'Low', 'Dataset', 2001, 'TCK1002', 'Verified', 120, 'Auditor', 'Auditor', '2023-01-16', 0, 'Export completed');
INSERT INTO audit_event VALUES (3, 2, '2023-02-10', 'LoginFailure', 202, 'Incorrect password attempt', '10.0.0.5', 'DEV050', 'Failure', 'Medium', 'User', 202, 'TCK2001', 'Locked account', 5, 'System', 'System', '2023-02-10', 1, 'Security alert');

-- Facility inspection records
CREATE TABLE facility_inspection
(
    inspection_id INTEGER PRIMARY KEY,
    facility_id INTEGER NOT NULL,
    inspector_id INTEGER NOT NULL,
    inspection_date DATE NOT NULL,
    inspection_type TEXT NOT NULL,
    score REAL NOT NULL,
    passed INTEGER NOT NULL,
    violations INTEGER NOT NULL,
    corrective_actions INTEGER NOT NULL,
    next_due DATE NOT NULL,
    notes TEXT NOT NULL,
    area_sqft REAL NOT NULL,
    equipment_count INTEGER NOT NULL,
    safety_rating REAL NOT NULL,
    fire_rating REAL NOT NULL,
    environmental_compliance TEXT NOT NULL,
    maintenance_status TEXT NOT NULL,
    contractor TEXT NOT NULL,
    contract_id INTEGER NOT NULL,
    report_url TEXT NOT NULL,
    follow_up_required INTEGER NOT NULL
);

INSERT INTO facility_inspection VALUES (1, 101, 15, '2023-09-10', 'Annual', 88.5, 1, 2, 2, '2024-09-10', 'All critical systems functional', 15000.0, 120, 9.2, 8.5, 'Compliant', 'UpToDate', 'BuildCo', 3001, 'http://reports/fac101_202309.pdf', 0);
INSERT INTO facility_inspection VALUES (2, 202, 16, '2023-10-05', 'Quarterly', 75.0, 0, 5, 5, '2024-01-05', 'Fire suppression needs upgrade', 8000.0, 80, 6.8, 5.9, 'NonCompliant', 'Pending', 'RepairInc', 3002, 'http://reports/fac202_202310.pdf', 1);
INSERT INTO facility_inspection VALUES (3, 303, 17, '2023-11-12', 'Special', 92.0, 1, 1, 1, '2025-11-12', 'Excellent overall condition', 22000.0, 150, 9.8, 9.5, 'Compliant', 'UpToDate', 'ConstructLtd', 3003, 'http://reports/fac303_202311.pdf', 0);