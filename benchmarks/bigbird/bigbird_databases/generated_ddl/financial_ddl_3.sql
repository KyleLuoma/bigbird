-- Investment fund details
CREATE TABLE investment_fund
(
    fund_id                 INTEGER PRIMARY KEY,
    fund_name               TEXT NOT NULL,
    inception_date          DATE NOT NULL,
    fund_type               TEXT NOT NULL,
    currency                TEXT NOT NULL,
    aum                     REAL NOT NULL,
    expense_ratio           REAL NOT NULL,
    manager_name            TEXT NOT NULL,
    rating                  TEXT NOT NULL,
    region                  TEXT NOT NULL,
    sector_focus            TEXT NOT NULL,
    risk_level              TEXT NOT NULL,
    benchmark               TEXT NOT NULL,
    dividend_yield          REAL NOT NULL,
    min_investment          REAL NOT NULL,
    liquidity_status        TEXT NOT NULL,
    regulatory_status       TEXT NOT NULL,
    tax_status              TEXT NOT NULL,
    domicile_country        TEXT NOT NULL,
    last_audit_date         DATE NOT NULL
);
INSERT INTO investment_fund VALUES (1,'GlobalEquityFund','2010-03-15','Equity','USD',1500000000.0,0.12,'Alice Smith','AA','NorthAmerica','Technology','Medium','S&P500',0.021,10000.0,'Open','Compliant','Taxable','USA','2024-12-01');
INSERT INTO investment_fund VALUES (2,'EmergingMarketsBond','2015-07-01','Bond','EUR',750000000.0,0.25,'Bob Johnson','A','Europe','EmergingMarkets','High','EuroBondIndex',0.015,5000.0,'Weekly','Compliant','TaxExempt','Germany','2024-11-15');
INSERT INTO investment_fund VALUES (3,'SustainableEnergyFund','2018-01-20','Mixed','USD',300000000.0,0.18,'Clara Lee','A+','Asia','RenewableEnergy','Low','GreenEnergyIndex',0.023,2000.0,'Monthly','Compliant','Taxable','Japan','2024-10-30');

-- Mortgage application records
CREATE TABLE mortgage_application
(
    application_id          INTEGER PRIMARY KEY,
    applicant_name          TEXT NOT NULL,
    applicant_birthdate     DATE NOT NULL,
    property_address        TEXT NOT NULL,
    property_value          REAL NOT NULL,
    loan_amount             REAL NOT NULL,
    interest_rate           REAL NOT NULL,
    term_years              INTEGER NOT NULL,
    mortgage_type           TEXT NOT NULL,
    credit_score            INTEGER NOT NULL,
    employment_status       TEXT NOT NULL,
    annual_income           REAL NOT NULL,
    down_payment            REAL NOT NULL,
    appraisal_value         REAL NOT NULL,
    insurance_provider      TEXT NOT NULL,
    escrow_account          TEXT NOT NULL,
    application_status      TEXT NOT NULL,
    submission_date         DATE NOT NULL,
    approval_date           DATE,
    closing_date            DATE,
    loan_officer_name       TEXT NOT NULL
);
INSERT INTO mortgage_application VALUES (101,'John Doe','1985-06-12','123 Main St Cityville','350000.0','280000.0',3.75,30,'Fixed',720,'FullTime',85000.0,'70000.0','345000.0','SecureInsure','Escrow123','Pending','2024-09-01',NULL,NULL,'Emily Brown');
INSERT INTO mortgage_application VALUES (102,'Jane Smith','1990-11-23','456 Oak Ave Townsville','500000.0','400000.0',4.10,15,'Adjustable',680,'SelfEmployed',120000.0,'100000.0','495000.0','SafeGuard','Escrow456','Approved','2024-08-15','2024-08-20','2024-09-05','Michael Green');
INSERT INTO mortgage_application VALUES (103,'Carlos Ruiz','1978-02-05','789 Pine Rd Villageton','250000.0','200000.0',3.50,20,'Fixed',750,'FullTime',65000.0','50000.0','245000.0','HomeShield','Escrow789','Rejected','2024-07-20','NULL','NULL','Sarah White');

-- Digital wallet account
CREATE TABLE digital_wallet
(
    wallet_id               INTEGER PRIMARY KEY,
    user_handle             TEXT NOT NULL,
    created_date            DATE NOT NULL,
    last_active             DATE NOT NULL,
    wallet_balance          REAL NOT NULL,
    currency                TEXT NOT NULL,
    is_verified             INTEGER NOT NULL,
    two_factor_enabled      INTEGER NOT NULL,
    transaction_limit_daily REAL NOT NULL,
    transaction_limit_monthly REAL NOT NULL,
    linked_bank_account     TEXT NOT NULL,
    linked_card_number      TEXT NOT NULL,
    preferred_merchant      TEXT NOT NULL,
    loyalty_points          INTEGER NOT NULL,
    reward_tier             TEXT NOT NULL,
    geo_region              TEXT NOT NULL,
    device_type             TEXT NOT NULL,
    app_version             TEXT NOT NULL,
    security_question_hash  TEXT NOT NULL,
    backup_email            TEXT NOT NULL
);
INSERT INTO digital_wallet VALUES (1001,'useralpha','2022-01-10','2024-09-05',1250.75,'USD',1,1,5000.0,20000.0,'ACC123456','4111111111111111','ShopEasy',1200,'Gold','NorthAmerica','Mobile','3.4.1','hashabc','alpha@example.com');
INSERT INTO digital_wallet VALUES (1002,'userbeta','2021-06-22','2024-09-04',300.5,'EUR',1,0,3000.0,15000.0,'ACC987654','5500000000000004','BuyNow',450,'Silver','Europe','Web','2.9.8','hashdef','beta@example.eu');
INSERT INTO digital_wallet VALUES (1003,'usergamma','2023-03-15','2024-09-03',75.0,'GBP',0,0,1000.0,8000.0,'ACC555666','340000000000009','FastShop',80,'Bronze','Asia','Mobile','1.2.0','hashghi','gamma@example.co.uk');

-- Credit score history
CREATE TABLE credit_score_history
(
    record_id               INTEGER PRIMARY KEY,
    person_identifier       TEXT NOT NULL,
    score_date              DATE NOT NULL,
    score_value             INTEGER NOT NULL,
    score_model             TEXT NOT NULL,
    max_score               INTEGER NOT NULL,
    min_score               INTEGER NOT NULL,
    recent_inquiry_count    INTEGER NOT NULL,
    recent_open_accounts    INTEGER NOT NULL,
    credit_utilization_percent REAL NOT NULL,
    derogatory_marks        INTEGER NOT NULL,
    payment_history_score   INTEGER NOT NULL,
    length_of_credit_history_years REAL NOT NULL,
    age_of_oldest_account_years REAL NOT NULL,
    public_records_count    INTEGER NOT NULL,
    total_accounts          INTEGER NOT NULL,
    revolving_balances      REAL NOT NULL,
    installment_balances    REAL NOT NULL,
    mortgage_balances       REAL NOT NULL,
    auto_loan_balances      REAL NOT NULL
);
INSERT INTO credit_score_history VALUES (5001,'PID12345','2024-08-01',720,'FICO','850','300',2,5,35.0,0,98,12.5,9.0,0,8,15000.0,20000.0,50000.0,10000.0);
INSERT INTO credit_score_history VALUES (5002,'PID67890','2024-07-15',660,'VantageScore','900','300',1,4,45.2,1,85,8.0,5.5,2,6,12000.0,15000.0,30000.0,8000.0);
INSERT INTO credit_score_history VALUES (5003,'PID54321','2024-06-30',790,'FICO','850','300',0,3,20.0,0,100,15.0,12.0,0,5,8000.0,25000.0,60000.0,12000.0);

-- Insurance claims records
CREATE TABLE insurance_claims
(
    claim_id                INTEGER PRIMARY KEY,
    policy_number           TEXT NOT NULL,
    claimant_name           TEXT NOT NULL,
    incident_date           DATE NOT NULL,
    claim_filed_date        DATE NOT NULL,
    claim_status            TEXT NOT NULL,
    claim_type              TEXT NOT NULL,
    estimated_loss          REAL NOT NULL,
    approved_amount         REAL,
    payout_date             DATE,
    adjuster_name           TEXT NOT NULL,
    adjuster_contact        TEXT NOT NULL,
    police_report_number    TEXT,
    medical_report_number   TEXT,
    vehicle_vin             TEXT,
    property_address        TEXT,
    damage_description      TEXT,
    deductible_amount       REAL NOT NULL,
    settlement_notes        TEXT,
    fraud_flag              INTEGER NOT NULL
);
INSERT INTO insurance_claims VALUES (9001,'POL123456','Anna Lee','2024-05-10','2024-05-12','Pending','Auto',12000.0,NULL,NULL,'Tom Grey','555-1234','PR12345','MR98765','1HGCM82633A004352','789 Birch Lane','Front bumper damage',500.0,'Awaiting inspection',0);
INSERT INTO insurance_claims VALUES (9002,'POL654321','Mark Twain','2024-04-22','2024-04-24','Approved','Home',45000.0,42000.0,'2024-05-05','Lara White','555-5678','PR54321',NULL,NULL,'321 Cedar Court','Water damage in basement',1000.0,'Repair scheduled',0);
INSERT INTO insurance_claims VALUES (9003,'POL112233','Sofia Gomez','2024-03-15','2024-03-16','Rejected','Health',8000.0,0,NULL,'Peter Black','555-9876','PR77777','MR12345',NULL,NULL,'N/A','Medical expenses not covered',200.0,'Claim denied due to policy exclusion',1);

-- Partner service level agreements
CREATE TABLE partner_service_level
(
    sla_id                  INTEGER PRIMARY KEY,
    partner_name            TEXT NOT NULL,
    service_type            TEXT NOT NULL,
    start_date              DATE NOT NULL,
    end_date                DATE NOT NULL,
    uptime_percent          REAL NOT NULL,
    response_time_ms        INTEGER NOT NULL,
    resolution_time_ms      INTEGER NOT NULL,
    data_transfer_gb        REAL NOT NULL,
    api_calls_month         INTEGER NOT NULL,
    support_tier            TEXT NOT NULL,
    penalty_clause          TEXT NOT NULL,
    review_date             DATE NOT NULL,
    compliance_certified    TEXT NOT NULL,
    monitoring_endpoint     TEXT NOT NULL,
    encryption_standard     TEXT NOT NULL,
    data_retention_days     INTEGER NOT NULL,
    sla_status              TEXT NOT NULL,
    notes                   TEXT,
    contact_person          TEXT NOT NULL
);
INSERT INTO partner_service_level VALUES (2001,'DataStreamCo','API','2023-01-01','2025-12-31',99.9,150,1200,5000.0,200000,'Gold','Penalty per hour downtime','2024-12-01','ISO27001','https://monitor.datastreamco.com','AES256',365,'Active','Critical partner','Laura Miles');
INSERT INTO partner_service_level VALUES (2002,'CloudEdge','Hosting','2022-06-15','2024-06-14',98.5,300,2500,12000.0,500000,'Silver','Service credit per incident','2024-05-30','SOC2','https://status.clouedge.com','TLS1.3',730,'Active','Renewal pending','David King');
INSERT INTO partner_service_level VALUES (2003,'SecurePay','Payments','2024-02-01','2026-01-31',99.7,200,1500,8000.0,300000,'Platinum','Late fee per failed transaction','2024-11-15','PCI-DSS','https://status.securepay.com','RSA2048',540,'Active','High volume transactions','Emily Zhou');

-- Environmental audit records
CREATE TABLE environmental_audit
(
    audit_id                INTEGER PRIMARY KEY,
    facility_name           TEXT NOT NULL,
    audit_date              DATE NOT NULL,
    auditor_name            TEXT NOT NULL,
    carbon_emission_tons    REAL NOT NULL,
    energy_consumption_mwh  REAL NOT NULL,
    waste_generated_tons    REAL NOT NULL,
    water_usage_cubic_m     REAL NOT NULL,
    compliance_score        INTEGER NOT NULL,
    certifications_obtained TEXT NOT NULL,
    remedial_actions        TEXT,
    next_audit_due          DATE NOT NULL,
    greenhouse_gas_intensity REAL NOT NULL,
    renewable_energy_percent REAL NOT NULL,
    hvac_efficiency_rating  TEXT NOT NULL,
    lighting_efficiency_rating TEXT NOT NULL,
    waste_recycling_rate    REAL NOT NULL,
    notes                   TEXT,
    external_agency         TEXT NOT NULL
);
INSERT INTO environmental_audit VALUES (3001,'North Plant','2024-03-10','Olivia Reed',1500.0,25000.0,800.0,120000.0,85,'ISO14001','Upgrade filters, install solar panels','2025-03-10',0.06,22.5,'A+','A','68.0','Performance improving','EcoAudit Ltd');
INSERT INTO environmental_audit VALUES (3002,'South Facility','2024-05-22','Liam Carter',900.0,18000.0,500.0,95000.0,78,'LEED Gold','Replace lighting, improve water recycling','2025-05-22',0.05,30.0,'A','B+','72.5','Need further waste reduction','GreenMetrics Inc');
INSERT INTO environmental_audit VALUES (3003,'East Warehouse','2024-07-15','Emma Patel','1100.0','21000.0','600.0','105000.0','80','ISO14001','Install heat recovery system','2025-07-15','0.055','25.0','B+','A-','65.0','On track for 2026 goals','EnviroCheck GmbH');

-- Fleet vehicle maintenance log
CREATE TABLE fleet_vehicle_maintenance
(
    record_id               INTEGER PRIMARY KEY,
    vehicle_vin             TEXT NOT NULL,
    make                    TEXT NOT NULL,
    model                   TEXT NOT NULL,
    year                    INTEGER NOT NULL,
    mileage                 INTEGER NOT NULL,
    service_date            DATE NOT NULL,
    service_type            TEXT NOT NULL,
    service_center          TEXT NOT NULL,
    odometer_before         INTEGER NOT NULL,
    odometer_after          INTEGER NOT NULL,
    parts_replaced          TEXT,
    labor_hours             REAL NOT NULL,
    total_cost              REAL NOT NULL,
    next_service_due_km     INTEGER NOT NULL,
    next_service_due_date   DATE NOT NULL,
    warranty_status         TEXT NOT NULL,
    fuel_type               TEXT NOT NULL,
    emissions_standard      TEXT NOT NULL,
    technician_name         TEXT NOT NULL
);
INSERT INTO fleet_vehicle_maintenance VALUES (4001,'1HGCM82633A004352','Honda','Accord',2019,45200,'2024-08-01','Oil Change','AutoFix Center',45200,45250,'Oil Filter',1.5,120.0,15000,'2025-02-01','Active','Petrol','Euro6','Mike Daniels');
INSERT INTO fleet_vehicle_maintenance VALUES (4002,'2FMDK3GC4BBA12345','Ford','Edge',2021,28000,'2024-07-20','Brake Inspection','BrakePro Services',28000,28000,'Brake Pads',2.0,250.0,30000,'2025-01-20','Active','Diesel','Euro5','Sara Liu');
INSERT INTO fleet_vehicle_maintenance VALUES (4003,'3C6UR5FL9GE123789','RAM','2500','2020',36500,'2024-06-15','Transmission Check','Transmission Experts',36500,36500,'Transmission Fluid',3.0,400.0,40000,'2025-06-15','Expired','Diesel','Euro6','John Patel');

-- Customer loyalty program table
CREATE TABLE customer_loyalty_program
(
    membership_id           INTEGER PRIMARY KEY,
    customer_name           TEXT NOT NULL,
    enrollment_date         DATE NOT NULL,
    tier_level              TEXT NOT NULL,
    points_balance          INTEGER NOT NULL,
    points_earned_year      INTEGER NOT NULL,
    points_redeemed_year    INTEGER NOT NULL,
    last_redeemed_date      DATE,
    preferred_channel       TEXT NOT NULL,
    communication_opt_in    INTEGER NOT NULL,
    birthday_reward_issued  DATE,
    anniversary_reward_issued DATE,
    promotional_offers_opt_in INTEGER NOT NULL,
    net_promoter_score      INTEGER,
    average_monthly_spend   REAL,
    transaction_count_year  INTEGER,
    last_activity_date      DATE,
    program_status          TEXT NOT NULL,
    notes                   TEXT,
    assigned_representative TEXT NOT NULL
);
INSERT INTO customer_loyalty_program VALUES (6001,'Olivia Harper','2020-04-12','Platinum',24500,12000,3000,'2024-08-01','Email',1,'2024-01-15','2024-04-12',1,78,350.75,150,'2024-09-01','Active','High engagement','Rachel Kim');
INSERT INTO customer_loyalty_program VALUES (6002,'Ethan Brooks','2021-09-05','Gold',18000,8000,1500,'2024-07-20','SMS',1,'2024-09-05','2024-09-05',0,65,210.40,120,'2024-08-28','Active',NULL,'David Nguyen');
INSERT INTO customer_loyalty_program VALUES (6003,'Mia Collins','2022-02-20','Silver',9500,4000,800,'2024-06-15','Push',0,NULL,NULL,1,55,130.20,80,'2024-08-10','Inactive','Consider reactivation','Laura Chen');

-- Regulatory compliance events
CREATE TABLE regulatory_compliance_event
(
    event_id                INTEGER PRIMARY KEY,
    regulation_name         TEXT NOT NULL,
    jurisdiction            TEXT NOT NULL,
    event_type              TEXT NOT NULL,
    detection_date          DATE NOT NULL,
    reporting_deadline      DATE NOT NULL,
    responsible_department  TEXT NOT NULL,
    status                  TEXT NOT NULL,
    remediation_plan        TEXT NOT NULL,
    risk_rating             TEXT NOT NULL,
    impact_estimate_usd     REAL NOT NULL,
    audit_reference         TEXT NOT NULL,
    legal_counsel           TEXT NOT NULL,
    external_notification_sent INTEGER NOT NULL,
    corrective_action_deadline DATE NOT NULL,
    follow_up_date          DATE NOT NULL,
    notes                   TEXT,
    compliance_officer      TEXT NOT NULL,
    escalation_level        TEXT NOT NULL,
    documentation_link      TEXT NOT NULL
);
INSERT INTO regulatory_compliance_event VALUES (7001,'Anti-Money Laundering','USA','Violation','2024-07-01','2024-07-15','Compliance','Open','Implement transaction monitoring','High',250000.0,'AUD12345','John Lawson',1,'2024-08-01','2024-09-01','Potential fine pending','Samantha Reed','Level2','/docs/aml_event_7001.pdf');
INSERT INTO regulatory_compliance_event VALUES (7002,'Data Protection Act','EU','Breach','2024-06-10','2024-06-25','IT Security','Closed','Patch vulnerable servers','Medium',120000.0,'AUD67890','Maria Gomez',1,'2024-07-15','2024-08-15','No further incidents','Carlos Mendes','Level1','/docs/dpa_breach_7002.pdf');
INSERT INTO regulatory_compliance_event VALUES (7003,'Consumer Credit Regulation','UK','Audit Finding','2024-05-20','2024-06-05','Risk Management','In Progress','Revise credit scoring model','Low',50000.0,'AUD54321','Helen Brooks',0,'2024-07-01','2024-08-01','Awaiting management approval','Olivia Hart','Level3','/docs/ccr_audit_7003.pdf');