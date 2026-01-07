-- Branch performance metrics per reporting period
CREATE TABLE branch_performance_metrics
(
    metric_id                     INTEGER PRIMARY KEY,
    branch_id                     INTEGER NOT NULL,
    report_date                   DATE NOT NULL,
    total_deposits                REAL NOT NULL,
    total_loans                   REAL NOT NULL,
    new_accounts                  INTEGER NOT NULL,
    closed_accounts               INTEGER NOT NULL,
    net_interest_margin           REAL NOT NULL,
    operational_costs             REAL NOT NULL,
    employee_count                INTEGER NOT NULL,
    customer_satisfaction_score   REAL NOT NULL,
    average_wait_time             REAL NOT NULL,
    fraud_cases                   INTEGER NOT NULL,
    compliance_issues             INTEGER NOT NULL,
    marketing_spend               REAL NOT NULL,
    digital_adoption_rate         REAL NOT NULL,
    cash_flow                     REAL NOT NULL,
    assets_under_management       REAL NOT NULL,
    risk_rating                   INTEGER NOT NULL,
    notes                         TEXT
);

INSERT INTO branch_performance_metrics VALUES (1,101,'2023-12-31',1250000.00,870000.00,45,5,0.18,320000.00,30,8.5,2.3,1,0,150000.00,0.72,50000.00,2000000.00,3,'Quarterly report');
INSERT INTO branch_performance_metrics VALUES (2,102,'2023-12-31',980000.00,640000.00,30,2,0.16,280000.00,27,7.9,1.8,0,1,120000.00,0.66,42000.00,1500000.00,2,'Quarterly report');
INSERT INTO branch_performance_metrics VALUES (3,103,'2023-12-31',1430000.00,1020000.00,50,3,0.19,350000.00,35,9.1,2.5,2,0,175000.00,0.78,61000.00,2500000.00,4,'Quarterly report');

-- Marketing campaign budgeting details
CREATE TABLE marketing_campaign_budget
(
    campaign_id           INTEGER PRIMARY KEY,
    name                  TEXT NOT NULL,
    start_date            DATE NOT NULL,
    end_date              DATE NOT NULL,
    allocated_budget      REAL NOT NULL,
    spent_amount          REAL NOT NULL,
    target_audience       TEXT NOT NULL,
    channel_mix           TEXT NOT NULL,
    expected_impressions  INTEGER NOT NULL,
    actual_impressions    INTEGER NOT NULL,
    expected_clicks       INTEGER NOT NULL,
    actual_clicks         INTEGER NOT NULL,
    cpc                   REAL NOT NULL,
    cpm                   REAL NOT NULL,
    conversion_rate       REAL NOT NULL,
    roi                   REAL NOT NULL,
    manager_id            INTEGER NOT NULL,
    approval_status       TEXT NOT NULL,
    notes                 TEXT,
    last_updated          DATE NOT NULL
);

INSERT INTO marketing_campaign_budget VALUES (10,'SummerLaunch','2023-06-01','2023-08-31',500000.00,310000.00,Adults,OnlineSocial,2000000,1850000,120000,95000,2.58,30.00,0.065,1.23,201,'Approved','Initial phase','2023-09-01');
INSERT INTO marketing_campaign_budget VALUES (11,'HolidayBoost','2023-11-01','2024-01-15',750000.00,500000.00,Family,TVRadioOnline,3500000,3300000,200000,160000,2.50,35.00,0.082,1.35,202,'Pending','Creative assets pending','2023-12-01');
INSERT INTO marketing_campaign_budget VALUES (12,'NewProductRollout','2024-02-01','2024-04-30',600000.00,150000.00,YoungAdults,DigitalDisplay,2500000,2400000,180000,140000,1.90,24.00,0.077,1.10,203,'Approved','Phase 1 complete','2024-05-01');

-- Environmental sensor readings collected from field stations
CREATE TABLE environmental_sensor_readings
(
    reading_id          INTEGER PRIMARY KEY,
    sensor_id           INTEGER NOT NULL,
    location            TEXT NOT NULL,
    reading_timestamp   DATE NOT NULL,
    temperature         REAL NOT NULL,
    humidity            REAL NOT NULL,
    air_quality_index   INTEGER NOT NULL,
    noise_level         REAL NOT NULL,
    vibration           REAL NOT NULL,
    co2_level           REAL NOT NULL,
    pm2_5               REAL NOT NULL,
    pm10                REAL NOT NULL,
    ozone_level         REAL NOT NULL,
    uv_index            REAL NOT NULL,
    battery_voltage     REAL NOT NULL,
    signal_strength     REAL NOT NULL,
    firmware_version    TEXT NOT NULL,
    maintenance_due     DATE NOT NULL,
    anomaly_flag        INTEGER NOT NULL,
    comments            TEXT
);

INSERT INTO environmental_sensor_readings VALUES (1001,301,'NorthPark','2023-12-15',22.5,55.0,42,35.2,0.02,410.0,12.5,22.1,0.030,5.6,3.8,'v1.2','2024-06-01',0,'Normal operation');
INSERT INTO environmental_sensor_readings VALUES (1002,302,'EastLake','2023-12-15',19.8,60.2,38,30.1,0.01,395.0,10.8,19.7,0.028,6.1,3.9,'v1.2','2024-06-01',0,'Normal operation');
INSERT INTO environmental_sensor_readings VALUES (1003,303,'SouthHill','2023-12-15',24.1,48.5,45,40.0,0.03,425.0,14.3,25.6,0.032,5.3,3.7,'v1.2','2024-06-01',1,'High noise level detected');

-- Fleet vehicle maintenance records
CREATE TABLE fleet_vehicle_maintenance
(
    maintenance_id        INTEGER PRIMARY KEY,
    vehicle_id            INTEGER NOT NULL,
    service_date          DATE NOT NULL,
    odometer              INTEGER NOT NULL,
    service_type          TEXT NOT NULL,
    provider              TEXT NOT NULL,
    cost                  REAL NOT NULL,
    parts_used            TEXT NOT NULL,
    labor_hours           REAL NOT NULL,
    next_service_due      DATE NOT NULL,
    mileage_until_next   INTEGER NOT NULL,
    inspection_passed    INTEGER NOT NULL,
    notes                 TEXT,
    warranty_claim        INTEGER NOT NULL,
    service_center_id     INTEGER NOT NULL,
    fuel_efficiency       REAL NOT NULL,
    emissions_test_result TEXT NOT NULL,
    tire_pressure         REAL NOT NULL,
    brake_pad_thickness   REAL NOT NULL,
    engine_oil_level      REAL NOT NULL
);

INSERT INTO fleet_vehicle_maintenance VALUES (5001,801,'2023-11-20',45200,'OilChange','AutoCareInc',250.00,'OilFilter',1.5,'2024-05-20',6000,1,'Changed oil and filter',0,12,28.5,'Pass',32.0,12.5,5.0);
INSERT INTO fleet_vehicle_maintenance VALUES (5002,802,'2023-12-05',37800,'BrakeService','BrakeMasters',480.00,'BrakePads,Rotors',3.0,'2024-06-05',7000,1,'Replaced front brake pads',0,14,22.1,'Pass',30.5,8.0,4.8);
INSERT INTO fleet_vehicle_maintenance VALUES (5003,803,'2023-12-12',61000,'TransmissionCheck','TransTech',720.00,'TransmissionFluid',4.0,'2024-12-12',12000,0,'Found minor leak, scheduled repair',1,15,19.8,'Fail',31.2,10.2,5.5);

-- Supplier contract overview information
CREATE TABLE supplier_contract_overview
(
    contract_id            INTEGER PRIMARY KEY,
    supplier_id            INTEGER NOT NULL,
    contract_start         DATE NOT NULL,
    contract_end           DATE NOT NULL,
    contract_value         REAL NOT NULL,
    currency               TEXT NOT NULL,
    payment_terms          TEXT NOT NULL,
    service_level          TEXT NOT NULL,
    renewal_option         TEXT NOT NULL,
    contact_name           TEXT NOT NULL,
    contact_email          TEXT NOT NULL,
    dispute_resolution     TEXT NOT NULL,
    confidentiality_clause INTEGER NOT NULL,
    indemnity_clause       INTEGER NOT NULL,
    performance_score      REAL NOT NULL,
    penalty_rate           REAL NOT NULL,
    governing_law          TEXT NOT NULL,
    amendment_count        INTEGER NOT NULL,
    last_amendment_date    DATE NOT NULL,
    notes                  TEXT
);

INSERT INTO supplier_contract_overview VALUES (2001,901,'2022-01-01','2025-12-31',1500000.00,'USD','Net30','Gold','Automatic','AliceSmith','alice.smith@example.com','Arbitration',1,1,9.2,0.05,'NYLaw',2,'2023-06-15','Long‑term supplier');
INSERT INTO supplier_contract_overview VALUES (2002,902,'2023-04-01','2026-03-31',850000.00,'EUR','Net45','Silver','Manual','BobJones','bob.jones@example.com','Mediation',1,0,8.5,0.04,'DELaw',1,'2023-09-10','Mid‑term contract');
INSERT INTO supplier_contract_overview VALUES (2003,903,'2021-07-15','2024-07-14',600000.00,'GBP','Net60','Bronze','Automatic','CarolLee','carol.lee@example.com','Litigation',0,1,7.8,0.06,'UKLaw',3,'2022-12-20','Renewal pending');

-- Digital asset activity log
CREATE TABLE digital_asset_log
(
    asset_log_id        INTEGER PRIMARY KEY,
    asset_id            INTEGER NOT NULL,
    asset_type          TEXT NOT NULL,
    created_at          DATE NOT NULL,
    modified_at         DATE NOT NULL,
    created_by          INTEGER NOT NULL,
    modified_by         INTEGER NOT NULL,
    file_path           TEXT NOT NULL,
    file_size           INTEGER NOT NULL,
    checksum            TEXT NOT NULL,
    version             INTEGER NOT NULL,
    access_level        TEXT NOT NULL,
    encryption_status   TEXT NOT NULL,
    retention_policy    TEXT NOT NULL,
    archival_status     TEXT NOT NULL,
    usage_count         INTEGER NOT NULL,
    last_accessed       DATE NOT NULL,
    tags                TEXT NOT NULL,
    description         TEXT,
    status              TEXT NOT NULL
);

INSERT INTO digital_asset_log VALUES (3001,401,'Image','2023-01-10','2023-11-20',101,102,'/assets/img001.jpg',245678,'a1b2c3d4',3,'Public','Encrypted','7Years','Archived',120,'2023-11-19','marketing,2023','Quarterly banner', 'Active');
INSERT INTO digital_asset_log VALUES (3002,402,'Document','2022-05-05','2023-10-02',103,104,'/docs/contract2022.pdf',987654,'e5f6g7h8',5,'Restricted','Encrypted','5Years','Active',45,'2023-09-30','contract,legal','Supplier agreement', 'Active');
INSERT INTO digital_asset_log VALUES (3003,403,'Video','2023-07-15','2023-12-01',105,106,'/videos/promo2023.mp4',4523123,'i9j0k1l2',2,'Public','Unencrypted','Indefinite','Archived',78,'2023-11-28','promo,2023','Product launch video', 'Archived');

-- Regulatory report summary records
CREATE TABLE regulatory_report_summary
(
    summary_id           INTEGER PRIMARY KEY,
    report_id            INTEGER NOT NULL,
    reporting_period     TEXT NOT NULL,
    submission_date      DATE NOT NULL,
    regulator            TEXT NOT NULL,
    report_status        TEXT NOT NULL,
    findings_summary     TEXT NOT NULL,
    actions_required     TEXT NOT NULL,
    due_date             DATE NOT NULL,
    compliance_score     REAL NOT NULL,
    risk_level           TEXT NOT NULL,
    responsible_officer  INTEGER NOT NULL,
    audit_trail          TEXT NOT NULL,
    amendment_flag       INTEGER NOT NULL,
    total_findings       INTEGER NOT NULL,
    critical_findings    INTEGER NOT NULL,
    non_critical_findings INTEGER NOT NULL,
    overall_rating       TEXT NOT NULL,
    notes                TEXT,
    attached_file_path   TEXT NOT NULL
);

INSERT INTO regulatory_report_summary VALUES (4001,501,'Q4-2023','2023-12-20','FINReg','Submitted','All major controls effective','Update risk matrix','2024-01-31',92.5,'Low',301,'auditlog_4001.txt',0,12,2,10,'Satisfactory','No major issues','/reports/q4_2023.pdf');
INSERT INTO regulatory_report_summary VALUES (4002,502,'Q1-2024','2024-04-15','FINReg','Pending','Minor gaps identified','Implement new KYC process','2024-06-30',85.0,'Medium',302,'auditlog_4002.txt',1,8,3,5,'Conditional','Follow‑up required','/reports/q1_2024.pdf');
INSERT INTO regulatory_report_summary VALUES (4003,503,'Annual-2023','2024-02-10','FINReg','Approved','Compliance strong overall','Maintain current policies','2024-12-31',97.0,'Low',303,'auditlog_4003.txt',0,5,0,5,'Excellent','Exceeds expectations','/reports/annual_2023.pdf');

-- Customer loyalty program configuration
CREATE TABLE customer_loyalty_program
(
    loyalty_id                INTEGER PRIMARY KEY,
    program_name              TEXT NOT NULL,
    launch_date               DATE NOT NULL,
    tier_count                INTEGER NOT NULL,
    points_multiplier         REAL NOT NULL,
    expiration_policy         TEXT NOT NULL,
    partner_network           TEXT NOT NULL,
    reward_catalog_url        TEXT NOT NULL,
    enrollment_fee            REAL NOT NULL,
    status                    TEXT NOT NULL,
    target_customer_segment   TEXT NOT NULL,
    marketing_channel         TEXT NOT NULL,
    average_redemption_rate   REAL NOT NULL,
    average_active_members    INTEGER NOT NULL,
    churn_rate                REAL NOT NULL,
    average_lifetime_value    REAL NOT NULL,
    compliance_requirements   TEXT NOT NULL,
    data_privacy_notice       TEXT NOT NULL,
    last_updated              DATE NOT NULL,
    remarks                   TEXT
);

INSERT INTO customer_loyalty_program VALUES (6001,'PremiumRewards','2022-03-01',4,1.5,'2Years','RetailPartners','https://example.com/catalog',25.00,'Active','HighSpenders','Email','0.12',45200,0.07,1200.00,'GDPR','Yes','2024-01-15','Top tier program');
INSERT INTO customer_loyalty_program VALUES (6002,'SilverPoints','2023-07-15',3,1.2,'1Year','TravelPartners','https://example.com/silver',10.00,'Active','FrequentTravelers','SMS','0.09',23800,0.10,800.00,'CCPA','Yes','2024-02-20','Mid tier offering');
INSERT INTO customer_loyalty_program VALUES (6003,'BasicClub','2021-01-10',2,1.0,'3Years','LocalVendors','https://example.com/basic',0.00,'Active','AllCustomers','Push','0.05',102000,0.15,400.00,'None','No','2024-03-05','Entry level program');

-- ATM security incident log
CREATE TABLE atm_security_event
(
    event_id               INTEGER PRIMARY KEY,
    atm_id                 INTEGER NOT NULL,
    event_timestamp        DATE NOT NULL,
    event_type             TEXT NOT NULL,
    severity               INTEGER NOT NULL,
    description            TEXT NOT NULL,
    resolved_flag          INTEGER NOT NULL,
    resolution_timestamp   DATE,
    technician_id          INTEGER,
    component_affected     TEXT,
    downtime_minutes       INTEGER,
    video_clip_path        TEXT,
    alarm_triggered       INTEGER,
    fraudulent_activity    INTEGER,
    location               TEXT,
    firmware_version       TEXT,
    firmware_patch_applied INTEGER,
    notes                  TEXT,
    follow_up_required    INTEGER,
    audit_log_id           INTEGER
);

INSERT INTO atm_security_event VALUES (7001,1201,'2023-11-05','SkimAttempt',4,'Card reader tampered',0,NULL,501,'CardReader',120,'/videos/atm7001.mp4',1,1,'DowntownBranch','v3.1',1,'Investigate vendor',1,9001);
INSERT INTO atm_security_event VALUES (7002,1202,'2023-12-01','PhysicalVandalism',3,'Front panel damaged',1,'2023-12-02',502,'Panel',30,'/videos/atm7002.mp4',1,0,'UptownBranch','v3.2',0,'Repaired panel',0,9002);
INSERT INTO atm_security_event VALUES (7003,1203,'2023-12-20','AlarmFalse',2,'False alarm triggered',1,'2023-12-20',503,'AlarmUnit',5,NULL,0,0,'EastSideBranch','v3.0',0,'No action needed',0,9003);

-- Investment fund performance records
CREATE TABLE investment_fund_performance
(
    performance_id          INTEGER PRIMARY KEY,
    fund_id                 INTEGER NOT NULL,
    record_date             DATE NOT NULL,
    nav                     REAL NOT NULL,
    total_assets            REAL NOT NULL,
    expense_ratio           REAL NOT NULL,
    yield                   REAL NOT NULL,
    distribution_amount     REAL NOT NULL,
    distribution_date       DATE NOT NULL,
    benchmark_nav           REAL NOT NULL,
    alpha                   REAL NOT NULL,
    beta                    REAL NOT NULL,
    sharpe_ratio            REAL NOT NULL,
    volatility              REAL NOT NULL,
    manager_name            TEXT NOT NULL,
    manager_tenure          INTEGER NOT NULL,
    rating_agency           TEXT NOT NULL,
    rating_score            INTEGER NOT NULL,
    sector_allocation       TEXT NOT NULL,
    geographic_allocation   TEXT NOT NULL,
    notes                   TEXT
);

INSERT INTO investment_fund_performance VALUES (8001,901,'2023-12-31',23.45,150000000.00,0.75,1.20,1200000.00,'2023-12-31',22.80,0.65,1.02,0.55,12.3,'JohnDoe',5,'Moody','A', 'Technology=40;Health=30;Finance=30','US=60;EU=30;Asia=10','Quarterly update');
INSERT INTO investment_fund_performance VALUES (8002,902,'2023-12-31',18.70,95000000.00,0.60,0.95,800000.00,'2023-12-31',18.30,0.55,0.95,0.48,10.8,'JaneSmith',3,'S&P','AA', 'Energy=35;Utilities=25;Consumer=40','US=70;EU=20;Asia=10','Quarterly update');
INSERT INTO investment_fund_performance VALUES (8003,903,'2023-12-31',31.12,210000000.00,0.85,1.50,1500000.00,'2023-12-31',30.80,0.70,1.15,0.60,13.5,'AlexBrown',7,'Fitch','AAA', 'RealEstate=45;Infrastructure=35;Mixed=20','US=55;EU=35;Asia=10','Quarterly update');