-- Branch environment metrics capturing daily operational and sustainability data
CREATE TABLE branch_environment_metrics
(
    metric_id               INTEGER      PRIMARY KEY,
    branch_id               INTEGER      NOT NULL,
    recorded_date           DATE         NOT NULL,
    temperature_c           REAL         NOT NULL,
    humidity_percent        REAL         NOT NULL,
    air_quality_index       INTEGER      NOT NULL,
    noise_level_db          REAL         NOT NULL,
    power_consumption_kw    REAL         NOT NULL,
    water_usage_liters      REAL         NOT NULL,
    waste_generated_kg      REAL         NOT NULL,
    recycling_rate_percent  REAL         NOT NULL,
    green_space_sqm         REAL         NOT NULL,
    solar_output_kw         REAL         NOT NULL,
    hvac_status             TEXT         NOT NULL,
    lighting_efficiency     REAL         NOT NULL,
    occupancy_rate_percent  REAL         NOT NULL,
    maintenance_requests    INTEGER      NOT NULL,
    pest_incidents          INTEGER      NOT NULL,
    carbon_emission_tons    REAL         NOT NULL,
    comments                TEXT
);

INSERT INTO branch_environment_metrics VALUES (1,101,'2023-01-15',22.5,45.0,42,55.3,350.5,12000.0,3.2,78.0,2500.0,15.0,'ON',0.85,68.0,5,0,0.12,'Normal operation');
INSERT INTO branch_environment_metrics VALUES (2,102,'2023-01-15',21.0,48.0,38,60.1,320.0,11500.0,2.8,80.0,2600.0,12.5,'ON',0.88,70.0,3,1,0.10,'Roof solar panel check');
INSERT INTO branch_environment_metrics VALUES (3,103,'2023-01-15',23.1,44.5,40,58.0,340.2,11800.0,3.0,77.5,2550.0,14.0,'OFF',0.82,65.0,4,0,0.15,'HVAC maintenance pending');

-- Public transport characteristics per district
CREATE TABLE district_public_transport
(
    transport_id            INTEGER      PRIMARY KEY,
    district_id             INTEGER      NOT NULL,
    mode                    TEXT         NOT NULL,
    route_number            TEXT         NOT NULL,
    vehicle_type            TEXT         NOT NULL,
    total_seats             INTEGER      NOT NULL,
    daily_ridership         INTEGER      NOT NULL,
    avg_delay_minutes       REAL         NOT NULL,
    fuel_type               TEXT         NOT NULL,
    emission_kg_per_km      REAL         NOT NULL,
    service_start_date      DATE         NOT NULL,
    service_end_date        DATE,
    operator_name           TEXT         NOT NULL,
    schedule_frequency      TEXT         NOT NULL,
    accessibility_level     TEXT         NOT NULL,
    maintenance_status      TEXT         NOT NULL,
    incidents_reported      INTEGER      NOT NULL,
    average_speed_kmh       REAL         NOT NULL,
    fare_structure          TEXT         NOT NULL,
    remarks                 TEXT
);

INSERT INTO district_public_transport VALUES (1001,1,'Bus','B12','Electric',40,8000,2.5,'Electric',0.0,'2020-03-01',NULL,'CityTransit','15min','High','Good',12,35.0,'FlatRate','Low emissions');
INSERT INTO district_public_transport VALUES (1002,2,'Tram','T5','Hybrid',60,15000,1.8,'Hybrid',0.3,'2018-07-15',NULL,'MetroLink','10min','Medium','Scheduled',5,30.0,'ZoneBased','Recent upgrade');
INSERT INTO district_public_transport VALUES (1003,3,'Bus','B7','Diesel',45,6500,3.2,'Diesel',0.8,'2015-01-10','2025-12-31','RegionalBusCo','20min','Low','Pending',20,28.0,'DistanceBased','Phase out planned');

-- Economic indicators at a regional level
CREATE TABLE regional_economic_indicator
(
    indicator_id            INTEGER      PRIMARY KEY,
    region_code             TEXT         NOT NULL,
    year                    INTEGER      NOT NULL,
    gdp_real                REAL         NOT NULL,
    unemployment_rate       REAL         NOT NULL,
    inflation_rate          REAL         NOT NULL,
    median_income           REAL         NOT NULL,
    poverty_rate            REAL         NOT NULL,
    trade_balance           REAL         NOT NULL,
    foreign_direct_investment REAL       NOT NULL,
    consumer_confidence_index REAL      NOT NULL,
    business_startups       INTEGER      NOT NULL,
    industrial_output       REAL         NOT NULL,
    agriculture_output      REAL         NOT NULL,
    services_output         REAL         NOT NULL,
    population              INTEGER      NOT NULL,
    urbanization_percent    REAL         NOT NULL,
    housing_price_index     REAL         NOT NULL,
    tax_revenue             REAL         NOT NULL,
    notes                   TEXT
);

INSERT INTO regional_economic_indicator VALUES (5001,'R01',2022,1250000.0,5.2,2.3,45000.0,12.0,150000.0,200000.0,98.5,850,300000.0,250000.0,500000.0,1500000,72.5,210.0,50000000.0,'Stable growth');
INSERT INTO regional_economic_indicator VALUES (5002,'R02',2022,980000.0,6.8,3.1,42000.0,15.0,90000.0,150000.0,95.0,720,250000.0,200000.0,350000.0,1200000,68.0,190.0,42000000.0,'Higher unemployment');
INSERT INTO regional_economic_indicator VALUES (5003,'R03',2022,1345000.0,4.5,1.9,47000.0,10.0,200000.0,250000.0,102.0,940,320000.0,300000.0,600000.0,1800000,75.0,230.0,56000000.0,'Strong industrial base');

-- Detailed ATM security event log
CREATE TABLE atm_security_log_extended
(
    log_id                  INTEGER      PRIMARY KEY,
    atm_id                  INTEGER      NOT NULL,
    event_timestamp         TEXT         NOT NULL,
    event_type              TEXT         NOT NULL,
    personnel_id            INTEGER,
    camera_snapshot_id      TEXT,
    alarm_triggered         TEXT,
    card_retained           INTEGER,
    cash_dispensed          INTEGER,
    cash_jammed             INTEGER,
    network_status          TEXT,
    power_status            TEXT,
    firmware_version        TEXT,
    location_lat            REAL,
    location_long           REAL,
    maintenance_ticket_id   INTEGER,
    resolved_date           DATE,
    comments                TEXT,
    severity_level          TEXT,
    audit_timestamp         TEXT
);

INSERT INTO atm_security_log_extended VALUES (20001,301,'2023-02-10 08:15:00','CardRetain',4501,'SN12345','Y',1,0,0,'Online','OK','v2.3',40.7128,-74.0060,8001,'2023-02-11','Card retained due to jam','High','2023-02-10 08:20:00');
INSERT INTO atm_security_log_extended VALUES (20002,302,'2023-02-12 14:40:00','CashJam',4520,'SN12400','Y',0,0,1,'Online','OK','v2.3',34.0522,-118.2437,8002,'2023-02-13','Cash dispenser jammed','Medium','2023-02-12 14:45:00');
INSERT INTO atm_security_log_extended VALUES (20003,303,'2023-02-15 19:05:00','NetworkOutage',4535,'SN12510','Y',0,0,0,'Offline','OK','v2.4',41.8781,-87.6298,8003,'2023-02-16','Network connectivity lost','Critical','2023-02-15 19:10:00');

-- Demographic profile for customers
CREATE TABLE customer_demographic_profile
(
    profile_id              INTEGER      PRIMARY KEY,
    client_id               INTEGER      NOT NULL,
    age                     INTEGER      NOT NULL,
    gender                  TEXT         NOT NULL,
    marital_status          TEXT,
    education_level         TEXT,
    employment_status       TEXT,
    annual_income           REAL,
    credit_score            INTEGER,
    number_of_dependents    INTEGER,
    home_ownership          TEXT,
    residence_type          TEXT,
    city                    TEXT,
    state                   TEXT,
    zip_code                TEXT,
    phone_contact           TEXT,
    email_contact           TEXT,
    preferred_channel       TEXT,
    risk_category           TEXT,
    last_updated            DATE
);

INSERT INTO customer_demographic_profile VALUES (9001,10001,35,'Male','Married','Bachelor','Employed',75000.0,720,2,'Owned','Apartment','Springfield','IL','62704','2175551234','john.doe@example.com','Online','Medium','2023-02-01');
INSERT INTO customer_demographic_profile VALUES (9002,10002,28,'Female','Single','Master','SelfEmployed',62000.0,680,0,'Rented','Condo','Madison','WI','53703','6085555678','jane.smith@example.com','Branch','Low','2023-02-02');
INSERT INTO customer_demographic_profile VALUES (9003,10003,42,'Male','Divorced','HighSchool','Unemployed',34000.0,590,1,'Owned','House','Columbus','OH','43215','6145559012','mark.brown@example.com','Phone','High','2023-02-03');

-- Loan product details
CREATE TABLE loan_product_detail
(
    product_id              INTEGER      PRIMARY KEY,
    product_name            TEXT         NOT NULL,
    interest_rate           REAL         NOT NULL,
    term_months             INTEGER      NOT NULL,
    max_amount              INTEGER      NOT NULL,
    min_amount              INTEGER      NOT NULL,
    early_repayment_penalty REAL,
    collateral_required     TEXT,
    eligibility_criteria    TEXT,
    documentation_required  TEXT,
    processing_fee          REAL,
    disbursement_method     TEXT,
    insurance_required      TEXT,
    guarantor_required      TEXT,
    remark                  TEXT,
    created_date            DATE,
    updated_date            DATE,
    status                  TEXT,
    regulatory_code         TEXT,
    marketing_tag           TEXT
);

INSERT INTO loan_product_detail VALUES (3001,'Standard Personal Loan',5.5,60,50000,5000,1.0,'None','Age18to65','IDProof,IncomeStatement',100.0,'DirectDeposit','Optional','No','Standard offering','2022-01-01','2023-01-15','Active','RC001','SPRLN');
INSERT INTO loan_product_detail VALUES (3002,'Home Equity Loan',4.2,120,250000,20000,0.5,'Property','CreditScoreAbove700','TitleDeed,Appraisal',250.0,'Cheque','Mandatory','Yes','Long term home financing','2021-06-10','2023-02-10','Active','RC002','HEQLN');
INSERT INTO loan_product_detail VALUES (3003,'Auto Loan',3.9,48,40000,3000,0.8,'Vehicle','EmploymentStable','VehicleInvoice,IDProof',150.0,'DirectDeposit','Optional','No','Vehicle purchase financing','2020-03-20','2023-01-20','Active','RC003','AUTLN');

-- Statistics on card issuance
CREATE TABLE card_issuance_statistics
(
    stat_id                 INTEGER      PRIMARY KEY,
    month_year              TEXT         NOT NULL,
    card_type               TEXT         NOT NULL,
    issued_count            INTEGER      NOT NULL,
    active_count            INTEGER      NOT NULL,
    blocked_count           INTEGER      NOT NULL,
    lost_count              INTEGER      NOT NULL,
    stolen_count            INTEGER      NOT NULL,
    replacement_count       INTEGER      NOT NULL,
    avg_transaction_value   REAL,
    total_transaction_volume REAL,
    average_fees            REAL,
    fraud_detected          INTEGER,
    fraud_loss_amount       REAL,
    credit_limit_average    REAL,
    issuer_branch_id        INTEGER,
    regional_code           TEXT,
    compliance_flag         TEXT,
    notes                   TEXT,
    audit_timestamp         TEXT
);

INSERT INTO card_issuance_statistics VALUES (4001,'2023-01','Debit',1200,1150,30,10,5,5,45.0,54000.0,1.5,2,300.0,2500.0,101,'RC1','Y','Quarterly review','2023-01-31 23:59:59');
INSERT INTO card_issuance_statistics VALUES (4002,'2023-01','Credit',800,750,20,8,4,6,120.0,96000.0,2.0,3,900.0,5000.0,102,'RC2','Y','Quarterly review','2023-01-31 23:59:59');
INSERT INTO card_issuance_statistics VALUES (4003,'2023-01','Prepaid',450,430,5,3,2,2,30.0,13500.0,0.8,1,150.0,800.0,103,'RC3','N','Quarterly review','2023-01-31 23:59:59');

-- Digital service subscription records
CREATE TABLE digital_service_subscription
(
    sub_id                  INTEGER      PRIMARY KEY,
    client_id               INTEGER      NOT NULL,
    service_name            TEXT         NOT NULL,
    subscription_start      DATE         NOT NULL,
    subscription_end        DATE,
    status                  TEXT         NOT NULL,
    recurring_fee           REAL,
    payment_method          TEXT,
    last_payment_date       DATE,
    next_renewal_date       DATE,
    usage_quota             INTEGER,
    usage_used              INTEGER,
    overage_charges         REAL,
    support_tier            TEXT,
    sla_level               TEXT,
    discount_percent        REAL,
    promo_code              TEXT,
    auto_renew              INTEGER,
    cancellation_reason     TEXT,
    created_by              TEXT
);

INSERT INTO digital_service_subscription VALUES (6001,10001,'MobileBanking','2022-05-01',NULL,'Active',9.99,'CreditCard','2023-01-15','2023-02-15',1000,450,0.0,'Standard','99%','5.0','WELCOME','1',NULL,'System');
INSERT INTO digital_service_subscription VALUES (6002,10002,'OnlineInvest','2021-11-20','2023-11-20','Cancelled',19.99,'DebitCard','2023-01-10','2023-02-10',2000,1800,25.0,'Premium','99.9%','10.0','INVEST20','0','User request','Agent12');
INSERT INTO digital_service_subscription VALUES (6003,10003,'EStatement','2023-01-01',NULL,'Active',0.0,'None','2023-01-01','2024-01-01',0,0,0.0,'Basic','100%','0.0',NULL,'1',NULL,'System');

-- Summary of risk events
CREATE TABLE risk_event_summary
(
    summary_id              INTEGER      PRIMARY KEY,
    event_id                INTEGER      NOT NULL,
    event_date              DATE         NOT NULL,
    risk_category           TEXT         NOT NULL,
    severity                INTEGER      NOT NULL,
    impacted_units          INTEGER,
    financial_impact        REAL,
    regulatory_fine         REAL,
    mitigation_action       TEXT,
    responsible_department  TEXT,
    status                  TEXT,
    detection_method        TEXT,
    root_cause              TEXT,
    corrective_measure_due  DATE,
    comments                TEXT,
    reported_by             TEXT,
    escalation_level        TEXT,
    repeat_occurrence       INTEGER,
    audit_flag              INTEGER,
    review_date             DATE
);

INSERT INTO risk_event_summary VALUES (7001,90001,'2023-01-20','Operational',3,5,25000.0,5000.0,'Patch applied','IT','Resolved','Monitoring','Software bug','2023-02-15','No further issues','JohnDoe','High',0,1,'2023-02-20');
INSERT INTO risk_event_summary VALUES (7002,90002,'2023-02-05','Compliance',4,2,15000.0,12000.0,'Policy update','Compliance','Open','Audit','Missing documentation','2023-03-01','Pending review','JaneSmith','Medium',1,0,'2023-02-28');
INSERT INTO risk_event_summary VALUES (7003,90003,'2023-02-12','Fraud',5,1,50000.0,0.0,'Account frozen','Risk','Investigating','Forensic','Internal fraud','2023-03-10','Under investigation','MikeLee','Critical',2,1,'2023-03-15');

-- Versions of compliance documents
CREATE TABLE compliance_document_version
(
    doc_id                  INTEGER      PRIMARY KEY,
    doc_name                TEXT         NOT NULL,
    version_number          TEXT         NOT NULL,
    effective_date          DATE,
    expiry_date             DATE,
    author                  TEXT,
    reviewer                TEXT,
    approval_status         TEXT,
    change_summary          TEXT,
    related_regulation      TEXT,
    file_path               TEXT,
    file_hash               TEXT,
    department_responsible  TEXT,
    confidentiality_level   TEXT,
    archiving_status        TEXT,
    last_accessed           DATE,
    access_count            INTEGER,
    retention_period_months INTEGER,
    digital_signature       TEXT,
    notes                   TEXT
);

INSERT INTO compliance_document_version VALUES (8001,'AntiMoneyLaunderingPolicy','v1.2','2022-01-01','2025-12-31','AliceWhite','BobGreen','Approved','Added new monitoring thresholds','Reg123','/docs/aml/v1_2.pdf','ab12cd34ef56','Legal','High','Archived','2023-01-10',45,36,'sig12345','Reviewed annually');
INSERT INTO compliance_document_version VALUES (8002,'DataProtectionGuidelines','v3.0','2021-07-15','2024-07-14','CarolBlack','DanSilver','Approved','Rewritten data retention clauses','Reg456','/docs/dp/v3_0.pdf','cd34ef56ab12','IT','Medium','Active','2023-02-05',30,24,'sig67890','In line with new regulation');
INSERT INTO compliance_document_version VALUES (8003,'CustomerOnboardingProcedure','v2.5','2023-02-01',NULL,'EveBrown','FrankYellow','Pending','Added KYC verification step','Reg789','/docs/onboarding/v2_5.pdf','ef56ab12cd34','Operations','Low','Draft','2023-02-10',10,12,'sig11223','Awaiting approval');

-- Digital asset inventory for internal resources
CREATE TABLE digital_asset_inventory
(
    asset_id                INTEGER      PRIMARY KEY,
    asset_name              TEXT         NOT NULL,
    asset_type              TEXT         NOT NULL,
    owner_department        TEXT,
    creation_date           DATE,
    last_modified_date      DATE,
    storage_location        TEXT,
    file_size_mb            REAL,
    checksum                TEXT,
    encryption_status       TEXT,
    access_level            TEXT,
    usage_frequency_months  INTEGER,
    related_project         TEXT,
    compliance_tag          TEXT,
    retention_policy_months INTEGER,
    archived_flag           INTEGER,
    backup_schedule         TEXT,
    lifecycle_stage         TEXT,
    cost_center             TEXT,
    notes                   TEXT
);

INSERT INTO digital_asset_inventory VALUES (9001,'RiskModel_v1','Model','Risk','2022-03-10','2023-01-20','/models/risk','45.6','abc123def','Encrypted','Confidential','12','ProjectAlpha','RG1',24,0,'Weekly','Active','CC1001','Validated model');
INSERT INTO digital_asset_inventory VALUES (9002,'CustomerData_2022Q4','Dataset','Analytics','2023-01-05','2023-01-25','/datasets/cust2022q4','1024.0','def456ghi','Unencrypted','Restricted','1','ProjectBeta','CD1',12,0,'Monthly','Archived','CC1002','Raw customer data');
INSERT INTO digital_asset_inventory VALUES (9003,'MarketingCampaign2023','Document','Marketing','2023-02-01','2023-02-10','/docs/marketing2023','2.5','ghi789jkl','Encrypted','Public','6','ProjectGamma','MC1',6,0,'Quarterly','Active','CC1003','Campaign overview');

-- Telecommunication node inventory (adjacent but separate from atm_network)
CREATE TABLE telecom_node_inventory
(
    node_id                 INTEGER      PRIMARY KEY,
    node_name               TEXT         NOT NULL,
    network_type            TEXT,
    location_city           TEXT,
    location_state          TEXT,
    latitude                REAL,
    longitude               REAL,
    installation_date       DATE,
    last_maintenance_date   DATE,
    firmware_version        TEXT,
    capacity_mbps           INTEGER,
    operational_status      TEXT,
    power_source            TEXT,
    redundancy_level        TEXT,
    vendor                  TEXT,
    contract_expiry         DATE,
    sla_response_time_sec   INTEGER,
    security_compliance     TEXT,
    notes                   TEXT,
    decommission_date       DATE
);

INSERT INTO telecom_node_inventory VALUES (10001,'NodeA1','Fiber','Springfield','IL',39.7817,-89.6501,'2021-05-10','2023-01-15','v1.8',1000,'Active','Grid','Level1','VendorX','2024-05-10',120,'ISO27001','Primary backbone node',NULL);
INSERT INTO telecom_node_inventory VALUES (10002,'NodeB2','LTE','Madison','WI',43.0731,-89.4012,'2020-09-20','2023-02-01','v2.1',500,'Active','Solar','Level2','VendorY','2025-09-20',180,'PCI-DSS','Regional LTE tower','NULL');
INSERT INTO telecom_node_inventory VALUES (10003,'NodeC3','5G','Columbus','OH',39.9612,-82.9988,'2022-03-05','2023-02-20','v3.0',2000,'Planned','Grid','Level1','VendorZ','2026-03-05',90,'ISO27001','Planned 5G hotspot','NULL');

-- Energy consumption records for branches
CREATE TABLE branch_energy_consumption
(
    record_id               INTEGER      PRIMARY KEY,
    branch_id               INTEGER      NOT NULL,
    reporting_month         TEXT         NOT NULL,
    electricity_kwh          REAL,
    gas_therms              REAL,
    water_cubic_meters       REAL,
    renewable_pct           REAL,
    peak_demand_kw          REAL,
    average_voltage          REAL,
    load_factor             REAL,
    cooling_energy_kwh       REAL,
    heating_energy_kwh       REAL,
    lighting_energy_kwh      REAL,
    equipment_energy_kwh     REAL,
    carbon_offset_tons       REAL,
    certifications_obtained  TEXT,
    monitoring_system       TEXT,
    audit_status            TEXT,
    remarks                 TEXT,
    data_quality_score      REAL
);

INSERT INTO branch_energy_consumption VALUES (11001,101,'2023-01',15000.5,500.0,1200.0,25.0,350.0,230.0,0.78,3000.0,4000.0,2000.0,3000.0,12.5,'LEED','EnergyIQ','Passed','Seasonal variation observed',0.92);
INSERT INTO branch_energy_consumption VALUES (11002,102,'2023-01',13200.0,450.0,1100.0,30.0,320.0,228.0,0.80,2800.0,3800.0,1900.0,2800.0,10.0,'BREEAM','EcoMonitor','Passed','Improved solar output',0.95);
INSERT INTO branch_energy_consumption VALUES (11003,103,'2023-01',15800.2,520.0,1300.0,20.0,370.0,235.0,0.76,3200.0,4200.0,2100.0,3200.0,14.0,'LEED','EnergyIQ','Pending','High cooling demand',0.88);

-- Security incident log for digital services
CREATE TABLE digital_security_incident
(
    incident_id             INTEGER      PRIMARY KEY,
    service_name            TEXT         NOT NULL,
    detection_timestamp     TEXT,
    incident_type           TEXT,
    severity_level          TEXT,
    affected_users          INTEGER,
    data_compromised        TEXT,
    remediation_action      TEXT,
    responsible_team        TEXT,
    status                  TEXT,
    root_cause_analysis    TEXT,
    escalation_path         TEXT,
    notifications_sent      INTEGER,
    compliance_impact       TEXT,
    post_incident_review    TEXT,
    ticket_reference        TEXT,
    ticket_created_date     DATE,
    resolution_date         DATE,
    lessons_learned         TEXT,
    follow_up_actions       TEXT
);

INSERT INTO digital_security_incident VALUES (12001,'OnlineBanking','2023-02-05 10:22:00','Phishing','High',150,'Credentials','Password reset and MFA enforcement','Security','Resolved','User awareness gap','Executive','150','Yes','Conducted','TCK-20230205',2023-02-05,2023-02-10,'Improved email filtering','Quarterly training');
INSERT INTO digital_security_incident VALUES (12002,'MobileApp','2023-02-12 14:45:00','Malware','Medium',45,'App token','App patch deployed','Engineering','Resolved','Third‑party SDK vulnerability','Manager','45','No','Reviewed','TCK-20230212',2023-02-12,2023-02-14,'Updated SDK version','Monitor SDK updates');
INSERT INTO digital_security_incident VALUES (12003,'EStatement','2023-02-20 09:30:00','DataLeak','Low',5,'Email addresses','Deleted leaked file','Operations','Resolved','Misconfiguration of S3 bucket','Team Lead','5','No','Audited','TCK-20230220',2023-02-20,2023-02-22,'Implemented bucket policies','Quarterly audit');