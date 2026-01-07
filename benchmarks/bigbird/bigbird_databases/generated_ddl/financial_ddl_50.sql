-- Campaign performance metrics per marketing campaign
CREATE TABLE campaign_performance_metrics (
    metric_id INTEGER PRIMARY KEY,
    campaign_id INTEGER NOT NULL,
    region TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    impressions INTEGER NOT NULL,
    clicks INTEGER NOT NULL,
    conversions INTEGER NOT NULL,
    spend REAL NOT NULL,
    cpc REAL NOT NULL,
    cpm REAL NOT NULL,
    ctr REAL NOT NULL,
    conversion_rate REAL NOT NULL,
    revenue REAL NOT NULL,
    profit REAL NOT NULL,
    roi REAL NOT NULL,
    device_type TEXT NOT NULL,
    platform TEXT NOT NULL,
    audience_segment TEXT NOT NULL,
    notes TEXT
);
INSERT INTO campaign_performance_metrics VALUES (1, 101, NorthAmerica, '2023-01-01', '2023-01-31', 500000, 12000, 850, 25000.00, 2.08, 50.00, 2.40, 7.08, 34000.00, 9000.00, 0.36, Mobile, GoogleAds, YoungAdults, 'Initial rollout');
INSERT INTO campaign_performance_metrics VALUES (2, 102, Europe, '2023-02-01', '2023-02-28', 300000, 8000, 600, 18000.00, 2.25, 60.00, 2.67, 7.50, 21000.00, 3000.00, 0.17, Desktop, Facebook, Professionals, 'Adjusted targeting');
INSERT INTO campaign_performance_metrics VALUES (3, 103, Asia, '2023-03-01', '2023-03-31', 750000, 15000, 1150, 32000.00, 2.13, 42.67, 2.00, 7.67, 43000.00, 11000.00, 0.34, Tablet, TikTok, Students, 'Seasonal promotion');

-- Maintenance records for branch facilities
CREATE TABLE branch_facility_maintenance (
    maintenance_id INTEGER PRIMARY KEY,
    branch_id INTEGER NOT NULL,
    facility_type TEXT NOT NULL,
    issue_reported TEXT NOT NULL,
    severity INTEGER NOT NULL,
    reported_date DATE NOT NULL,
    resolved_date DATE,
    technician_id INTEGER,
    cost REAL,
    vendor_name TEXT,
    warranty_status TEXT,
    maintenance_type TEXT,
    priority INTEGER,
    inspection_score REAL,
    comments TEXT,
    scheduled_date DATE,
    downtime_hours REAL,
    parts_used TEXT,
    follow_up_required INTEGER,
    compliance_flag INTEGER
);
INSERT INTO branch_facility_maintenance VALUES (1, 10, HVAC, AirFilterClogged, 2, '2023-04-10', '2023-04-12', 201, 150.00, CoolAirCo, InWarranty, Preventive, 1, 95.5, 'Replaced filter', '2023-04-09', 2.0, 'FilterModelX', 0, 1);
INSERT INTO branch_facility_maintenance VALUES (2, 12, Elevator, DoorStuck, 3, '2023-05-05', '2023-05-07', 205, 800.00, LiftSystems, OutOfWarranty, Repair, 2, 88.0, 'Lubricated guide rails', '2023-05-04', 4.5, 'LubricantY', 1, 1);
INSERT INTO branch_facility_maintenance VALUES (3, 15, Roof, LeakDetected, 4, '2023-06-01', NULL, NULL, NULL, NULL, NULL, Emergency, 5, NULL, 'Awaiting parts', '2023-06-02', NULL, NULL, 1, 0);

-- Log of client interactions
CREATE TABLE client_interaction_log (
    interaction_id INTEGER PRIMARY KEY,
    client_id INTEGER NOT NULL,
    interaction_date DATE NOT NULL,
    channel TEXT NOT NULL,
    employee_id INTEGER,
    purpose TEXT,
    outcome TEXT,
    duration_minutes INTEGER,
    follow_up_date DATE,
    notes TEXT,
    satisfaction_score INTEGER,
    next_action TEXT,
    contact_method TEXT,
    location TEXT,
    recorded_by INTEGER,
    transcript_path TEXT,
    rating REAL,
    escalation_flag INTEGER,
    resolution_time_minutes INTEGER,
    product_interest TEXT
);
INSERT INTO client_interaction_log VALUES (1, 1001, '2023-07-15', Phone, 301, AccountInquiry, Resolved, 15, '2023-07-20', 'Spoke about balance', 9, ScheduleMeeting, Voice, NewYork, 401, '/transcripts/1001_20230715.txt', 4.5, 0, 20, SavingsAccount);
INSERT INTO client_interaction_log VALUES (2, 1002, '2023-07-18', Email, 302, LoanApplication, Pending, 30, '2023-07-25', 'Requested documents', 7, SendDocuments, Email, Chicago, 402, '/transcripts/1002_20230718.txt', 3.8, 0, 45, Mortgage);
INSERT INTO client_interaction_log VALUES (3, 1003, '2023-07-20', Chat, 303, CardIssue, Resolved, 10, NULL, 'Card declined in store', 8, CloseTicket, Chat, Online, 403, '/transcripts/1003_20230720.txt', 4.2, 0, 12, CreditCard);

-- Socioeconomic data for districts
CREATE TABLE district_socioeconomic_data (
    ds_id INTEGER PRIMARY KEY,
    district_id INTEGER NOT NULL,
    year INTEGER NOT NULL,
    median_income REAL,
    unemployment_rate REAL,
    poverty_rate REAL,
    avg_education_years REAL,
    population INTEGER,
    crime_rate REAL,
    housing_price_index REAL,
    public_transport_usage REAL,
    green_space_per_capita REAL,
    healthcare_access_index REAL,
    internet_penetration REAL,
    business_growth_rate REAL,
    avg_household_size REAL,
    tax_revenue REAL,
    fiscal_deficit REAL,
    education_spending_per_capita REAL,
    social_welfare_spending REAL
);
INSERT INTO district_socioeconomic_data VALUES (1, 1, 2022, 55000.00, 5.2, 12.3, 13.5, 250000, 3.1, 210.5, 68.0, 12.5, 85.0, 92.0, 2.4, 2.8, 15000000.00, -2000000.00, 1200.00, 800.00);
INSERT INTO district_socioeconomic_data VALUES (2, 2, 2022, 47000.00, 6.8, 15.0, 12.0, 180000, 4.0, 190.0, 55.0, 10.0, 78.0, 88.0, 1.9, 3.0, 11000000.00, -1500000.00, 950.00, 600.00);
INSERT INTO district_socioeconomic_data VALUES (3, 3, 2022, 62000.00, 4.5, 9.8, 14.2, 300000, 2.5, 230.0, 72.0, 13.0, 90.0, 95.0, 2.6, 2.5, 18000000.00, -2500000.00, 1300.00, 900.00);

-- Market trends for loan products
CREATE TABLE loan_market_trends (
    trend_id INTEGER PRIMARY KEY,
    loan_type TEXT NOT NULL,
    period_start DATE NOT NULL,
    period_end DATE NOT NULL,
    avg_interest_rate REAL,
    avg_loan_amount REAL,
    default_rate REAL,
    approval_rate REAL,
    total_loans INTEGER,
    outstanding_balance REAL,
    new_applications INTEGER,
    refinanced_loans INTEGER,
    average_duration_months REAL,
    sector TEXT,
    regional_focus TEXT,
    regulatory_change_flag INTEGER,
    economic_indicator TEXT,
    notes TEXT,
    data_source TEXT,
    confidence_score REAL
);
INSERT INTO loan_market_trends VALUES (1, Mortgage, '2023-01-01', '2023-03-31', 3.75, 250000.00, 0.85, 72.0, 5000, 1200000000.00, 1500, 300, 360, Residential, NorthAmerica, 0, GDPGrowth, 'Stable market', InternalAnalytics, 0.92);
INSERT INTO loan_market_trends VALUES (2, Personal, '2023-04-01', '2023-06-30', 5.25, 15000.00, 1.10, 65.0, 8000, 120000000.00, 2500, 150, 48, Consumer, Europe, 1, UnemploymentRate, 'Regulatory tighten', MarketSurvey, 0.85);
INSERT INTO loan_market_trends VALUES (3, Auto, '2023-07-01', '2023-09-30', 4.10, 30000.00, 0.70, 78.0, 6000, 180000000.00, 2000, 250, 60, Automotive, Asia, 0, InflationRate, 'Growth in sales', CentralBankReport, 0.88);

-- Summary of card usage per month
CREATE TABLE card_usage_summary (
    summary_id INTEGER PRIMARY KEY,
    card_id INTEGER NOT NULL,
    month DATE NOT NULL,
    total_transactions INTEGER,
    total_amount REAL,
    foreign_transaction_amount REAL,
    domestic_transaction_amount REAL,
    avg_transaction_value REAL,
    max_transaction_value REAL,
    min_transaction_value REAL,
    declined_transactions INTEGER,
    fraud_flagged INTEGER,
    merchant_category TEXT,
    online_transactions INTEGER,
    contactless_transactions INTEGER,
    chip_transactions INTEGER,
    swipe_transactions INTEGER,
    average_balance REAL,
    credit_limit REAL,
    utilization_rate REAL,
    notes TEXT
);
INSERT INTO card_usage_summary VALUES (1, 5001, '2023-01-01', 120, 5400.00, 800.00, 4600.00, 45.00, 500.00, 5.00, 3, 0, Grocery, 30, 40, 30, 20, 1500.00, 5000.00, 0.30, 'Regular usage');
INSERT INTO card_usage_summary VALUES (2, 5002, '2023-02-01', 95, 4100.00, 600.00, 3500.00, 43.16, 450.00, 4.00, 5, 1, Travel, 25, 35, 20, 15, 1200.00, 4000.00, 0.33, 'Travel spikes');
INSERT INTO card_usage_summary VALUES (3, 5003, '2023-03-01', 140, 7200.00, 1200.00, 6000.00, 51.43, 600.00, 6.00, 2, 0, Entertainment, 50, 45, 30, 15, 2000.00, 6000.00, 0.40, 'High entertainment spend');

-- Extended ATM security audit records
CREATE TABLE atm_security_audit_ext (
    audit_id INTEGER PRIMARY KEY,
    atm_id INTEGER NOT NULL,
    audit_date DATE NOT NULL,
    inspector_id INTEGER,
    overall_score REAL,
    camera_functional INTEGER,
    tamper_evidence INTEGER,
    software_version TEXT,
    firmware_version TEXT,
    cash_box_integrity INTEGER,
    network_connectivity INTEGER,
    alarm_status INTEGER,
    physical_barrier INTEGER,
    maintenance_due_date DATE,
    next_audit_due DATE,
    observations TEXT,
    corrective_actions TEXT,
    compliance_status TEXT,
    risk_level TEXT,
    auditor_comments TEXT
);
INSERT INTO atm_security_audit_ext VALUES (1, 101, '2023-04-15', 401, 96.5, 1, 0, 'v5.2.1', 'fw3.4', 1, 1, 1, 1, '2023-07-01', '2023-10-15', 'All cameras operational', 'Replace tamper seal', 'Compliant', 'Low', 'No issues');
INSERT INTO atm_security_audit_ext VALUES (2, 102, '2023-05-20', 402, 88.0, 0, 1, 'v5.0.0', 'fw3.2', 0, 1, 0, 1, '2023-08-15', '2023-11-20', 'Camera offline', 'Repair camera', 'NonCompliant', 'Medium', 'Follow up required');
INSERT INTO atm_security_audit_ext VALUES (3, 103, '2023-06-10', 403, 92.3, 1, 0, 'v5.3.0', 'fw3.5', 1, 0, 1, 0, '2023-09-30', '2023-12-05', 'Network intermittent', 'Upgrade network module', 'Partial', 'High', 'Urgent attention needed');

-- Summary of digital wallet activities
CREATE TABLE digital_wallet_activity_summary (
    dw_activity_id INTEGER PRIMARY KEY,
    wallet_id INTEGER NOT NULL,
    activity_date DATE NOT NULL,
    activity_type TEXT,
    amount REAL,
    currency TEXT,
    merchant_category TEXT,
    device_id TEXT,
    ip_address TEXT,
    geo_location TEXT,
    status TEXT,
    fee REAL,
    exchange_rate REAL,
    loyalty_points_earned INTEGER,
    loyalty_points_redeemed INTEGER,
    transaction_reference TEXT,
    auth_method TEXT,
    risk_score REAL,
    notes TEXT,
    compliance_flag INTEGER
);
INSERT INTO digital_wallet_activity_summary VALUES (1, 2001, '2023-07-01', Payment, 75.00, USD, Retail, dev123, '192.168.1.10', 'NewYork', Completed, 0.50, 1.00, 10, 0, 'TXN1001', PIN, 0.12, 'Standard purchase', 1);
INSERT INTO digital_wallet_activity_summary VALUES (2, 2002, '2023-07-03', Transfer, 250.00, EUR, Services, dev124, '192.168.1.11', 'Berlin', Pending, 1.00, 0.95, 0, 0, 'TXN1002', Biometric, 0.20, 'Cross-border transfer', 0);
INSERT INTO digital_wallet_activity_summary VALUES (3, 2003, '2023-07-05', Refund, 30.00, GBP, Hospitality, dev125, '192.168.1.12', 'London', Completed, 0.30, 1.30, 5, 5, 'TXN1003', Password, 0.08, 'Refund for order', 1);

-- Employee training modules catalog
CREATE TABLE employee_training_module (
    module_id INTEGER PRIMARY KEY,
    module_name TEXT NOT NULL,
    department TEXT NOT NULL,
    trainer_id INTEGER,
    duration_minutes INTEGER,
    start_date DATE,
    end_date DATE,
    certification_required INTEGER,
    pass_rate REAL,
    assessment_score REAL,
    enrollment_cap INTEGER,
    enrolled_count INTEGER,
    location TEXT,
    material_url TEXT,
    feedback_score REAL,
    revision_number INTEGER,
    version_date DATE,
    prerequisites TEXT,
    status TEXT,
    notes TEXT
);
INSERT INTO employee_training_module VALUES (1, 'AntiMoneyLaundering', Compliance, 501, 180, '2023-08-01', '2023-08-03', 1, 95.0, 88.5, 30, 28, 'RoomA', 'http://intranet/training/aml.pdf', 4.6, 2, '2023-07-01', 'None', Active, 'Core compliance module');
INSERT INTO employee_training_module VALUES (2, 'AdvancedDataAnalytics', IT, 502, 240, '2023-09-10', '2023-09-12', 0, 90.0, 85.0, 20, 18, 'RoomB', 'http://intranet/training/data_analytics.pdf', 4.3, 1, '2023-08-15', 'BasicAnalytics', Scheduled, 'New module for data team');
INSERT INTO employee_training_module VALUES (3, 'CustomerServiceExcellence', Support, 503, 120, '2023-10-05', '2023-10-05', 0, 92.0, 87.0, 40, 35, 'RoomC', 'http://intranet/training/customer_service.pdf', 4.7, 3, '2023-09-20', 'CommunicationBasics', Planned, 'Focus on service quality');

-- History of regulatory filings
CREATE TABLE regulatory_filing_history (
    filing_id INTEGER PRIMARY KEY,
    filing_type TEXT NOT NULL,
    filing_date DATE NOT NULL,
    filing_status TEXT,
    regulator TEXT,
    reference_number TEXT,
    submission_method TEXT,
    attached_document TEXT,
    reviewed_by INTEGER,
    review_date DATE,
    approval_status TEXT,
    effective_date DATE,
    expiration_date DATE,
    comments TEXT,
    compliance_category TEXT,
    risk_level INTEGER,
    penalty_amount REAL,
    amendment_flag INTEGER,
    related_case_id INTEGER,
    audit_trail TEXT
);
INSERT INTO regulatory_filing_history VALUES (1, 'AnnualReport', '2023-03-15', Submitted, SEC, FR20230315, Electronic, '/docs/annual2023.pdf', 601, '2023-03-20', Pending, '2023-04-01', NULL, 'Awaiting review', Financial, 2, 0.00, 0, NULL, 'Created via system');
INSERT INTO regulatory_filing_history VALUES (2, 'RiskAssessment', '2023-05-10', Approved, FCA, RA20230510, Paper, '/docs/risk_assessment_may2023.pdf', 602, '2023-05-12', Approved, '2023-05-15', '2024-05-15', 'Approved without conditions', Operational, 1, 0.00, 0, NULL, 'Reviewed by compliance team');
INSERT INTO regulatory_filing_history VALUES (3, 'PolicyChange', '2023-07-01', Rejected, OCC, PC20230701, Electronic, '/docs/policy_change_july2023.pdf', 603, '2023-07-05', Rejected, NULL, NULL, 'Insufficient justification', Governance, 3, 5000.00, 1, 1001, 'Rework required after audit');