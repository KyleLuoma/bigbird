```sql
-- Branch security device log
CREATE TABLE branch_security_device_log (
    log_id                 INTEGER PRIMARY KEY,
    branch_id              INTEGER NOT NULL,
    device_type            TEXT NOT NULL,
    serial_number          TEXT NOT NULL,
    install_date           DATE NOT NULL,
    last_maintenance       DATE,
    firmware_version       TEXT,
    status                 TEXT,
    ip_address             TEXT,
    mac_address            TEXT,
    location_description   TEXT,
    alarm_enabled          INTEGER,
    camera_resolution      TEXT,
    sensor_sensitivity     INTEGER,
    battery_level          INTEGER,
    signal_strength        INTEGER,
    last_event_timestamp   DATE,
    event_count            INTEGER,
    maintenance_contact    TEXT,
    vendor_name            TEXT,
    warranty_expiration    DATE,
    notes                  TEXT
);
INSERT INTO branch_security_device_log VALUES (1,101,'CCTV','SN12345','2022-03-15','2023-02-20','v2.4','Active','192.168.1.10','AA:BB:CC:DD:EE:01','Lobby','1','1080p','5','85','2023-03-01',120,'John Doe','SecureTech','2025-03-15','Initial install');
INSERT INTO branch_security_device_log VALUES (2,102,'AccessPanel','SN67890','2021-11-05','2023-01-10','v1.9','Inactive','192.168.2.20','AA:BB:CC:DD:EE:02','Vault','0','N/A','3','0','2022-12-30',45,'Jane Smith','GateGuard','2024-11-05','Panel decommissioned');
INSERT INTO branch_security_device_log VALUES (3,103,'Alarm','SN54321','2023-01-20','2023-04-01','v3.0','Active','192.168.3.30','AA:BB:CC:DD:EE:03','ParkingLot','1','N/A','7','100','75','2023-04-10',30,'Mike Lee','AlarmCo','2026-01-20','Battery replacement pending');

-- Customer onboarding step detail
CREATE TABLE customer_onboarding_step_detail (
    step_id                INTEGER PRIMARY KEY,
    customer_id            INTEGER NOT NULL,
    step_name              TEXT NOT NULL,
    sequence_number        INTEGER NOT NULL,
    is_mandatory           INTEGER NOT NULL,
    started_at             DATE,
    completed_at           DATE,
    assigned_agent_id      INTEGER,
    channel                TEXT,
    documents_requested    TEXT,
    documents_submitted    TEXT,
    verification_status    TEXT,
    risk_score             REAL,
    notes                  TEXT,
    compliance_flag        INTEGER,
    escalation_needed      INTEGER,
    escalated_to           TEXT,
    resolution_deadline    DATE,
    outcome                TEXT,
    feedback_score         INTEGER,
    feedback_comments      TEXT,
    last_updated           DATE
);
INSERT INTO customer_onboarding_step_detail VALUES (1,2001,'Identity Verification',1,1,'2023-03-01','2023-03-02',301,'Web','IDProof','IDProof','Passed',0.12,'All good',0,0,NULL,'2023-03-05','Success',9,'Quick process','2023-03-02');
INSERT INTO customer_onboarding_step_detail VALUES (2,2002,'Address Confirmation',2,1,'2023-03-03','2023-03-04',302,'Mobile','UtilityBill','UtilityBill','Passed',0.08,'Verified',0,0,NULL,'2023-03-07','Success',8,'No issues','2023-03-04');
INSERT INTO customer_onboarding_step_detail VALUES (3,2003,'Financial Assessment',3,0,'2023-03-05',NULL,303,'Branch','IncomeStatement','',NULL,0.45,'Pending documents',0,1,'SeniorAgent','2023-03-20','Pending',NULL,NULL,'2023-03-05');

-- Financial market index detail
CREATE TABLE financial_market_index_detail (
    index_id               INTEGER PRIMARY KEY,
    index_name             TEXT NOT NULL,
    ticker_symbol          TEXT NOT NULL,
    region                 TEXT,
    currency               TEXT,
    base_date              DATE,
    base_value             REAL,
    current_value          REAL,
    change_percent         REAL,
    high_52week            REAL,
    low_52week             REAL,
    market_capitalization  REAL,
    dividend_yield         REAL,
    pe_ratio               REAL,
    volume_average         INTEGER,
    open_price             REAL,
    close_price            REAL,
    previous_close         REAL,
    day_high               REAL,
    day_low                REAL,
    last_updated           DATE,
    source                 TEXT
);
INSERT INTO financial_market_index_detail VALUES (1,'Global Equity Index','GEI','Global','USD','2000-01-01',1000.0,2543.7,1.23,3000.0,1500.0,5000000000,1.5,22.3,2000000,2540.0,2545.0,2530.0,2550.0,2500.0,'2023-04-01','DataProviderX');
INSERT INTO financial_market_index_detail VALUES (2,'Euro Bond Index','EBI','Europe','EUR','2005-06-15',200.0,185.4,-0.67,210.0,180.0,1200000000,2.0,15.8,500000,185.0,186.0,184.0,188.0,182.0,'2023-04-01','DataProviderY');
INSERT INTO financial_market_index_detail VALUES (3,'Asia Pacific Tech Index','APTI','APAC','JPY','2010-09-30',500.0,720.5,2.10,800.0,450.0,3000000000,0.9,30.2,800000,720.0,721.0,718.0,725.0,715.0,'2023-04-01','DataProviderZ');

-- Regional demographics snapshot
CREATE TABLE regional_demographics_snapshot (
    snapshot_id            INTEGER PRIMARY KEY,
    region_id              INTEGER NOT NULL,
    year                   INTEGER NOT NULL,
    population_total       INTEGER,
    median_age             REAL,
    gender_ratio_male_female REAL,
    households_total       INTEGER,
    avg_household_size     REAL,
    population_urban_pct   REAL,
    population_rural_pct   REAL,
    employment_rate        REAL,
    unemployment_rate      REAL,
    avg_income             REAL,
    poverty_rate           REAL,
    education_primary_pct  REAL,
    education_secondary_pct REAL,
    education_higher_pct   REAL,
    housing_owned_pct      REAL,
    housing_rented_pct     REAL,
    median_home_price      REAL,
    crime_rate_per_1000    REAL,
    health_index           REAL,
    life_expectancy_years  REAL,
    last_updated           DATE
);
INSERT INTO regional_demographics_snapshot VALUES (1,10,2022,1250000,38.5,0.98,500000,2.5,70.0,30.0,92.0,8.0,45000.0,12.5,95.0,90.0,55.0,65.0,35.0,250000.0,5.2,78.0,81.2,'2023-03-15');
INSERT INTO regional_demographics_snapshot VALUES (2,20,2022,845000,41.2,1.02,320000,2.7,55.0,45.0,88.0,12.0,38000.0,18.0,89.0,85.0,60.0,58.0,42.0,180000.0,7.5,70.0,78.9,'2023-03-15');
INSERT INTO regional_demographics_snapshot VALUES (3,30,2022,2300000,34.9,0.96,950000,2.4,80.0,20.0,95.0,5.0,52000.0,9.0,98.0,92.0,70.0,72.0,28.0,300000.0,3.8,82.0,84.6,'2023-03-15');

-- Insurance policy premium detail
CREATE TABLE insurance_policy_premium_detail (
    premium_id             INTEGER PRIMARY KEY,
    policy_id              INTEGER NOT NULL,
    effective_date         DATE NOT NULL,
    expiration_date        DATE NOT NULL,
    premium_amount         REAL NOT NULL,
    payment_frequency      TEXT,
    payment_method         TEXT,
    discount_rate          REAL,
    surcharge_amount       REAL,
    tax_amount             REAL,
    total_due              REAL,
    status                 TEXT,
    last_payment_date      DATE,
    next_due_date          DATE,
    agent_id               INTEGER,
    underwriting_score     REAL,
    coverage_type          TEXT,
    deductible_amount      REAL,
    claim_history_flag     INTEGER,
    renewal_flag           INTEGER,
    notes                  TEXT,
    created_at             DATE,
    updated_at             DATE
);
INSERT INTO insurance_policy_premium_detail VALUES (1,5001,'2023-01-01','2023-12-31',1200.0,'Annual','DirectDebit',5.0,0.0,96.0,1261.0,'Active','2023-01-01','2023-12-31',401,750.0,'Comprehensive',500.0,0,1,'Standard policy','2022-12-01','2023-01-01');
INSERT INTO insurance_policy_premium_detail VALUES (2,5002,'2023-04-01','2024-03-31',150.0,'Monthly','CreditCard',0.0,10.0,12.0,172.0,'Pending','2023-04-15','2023-05-01',402,620.0,'ThirdParty',250.0,1,0,'Late start','2023-03-20','2023-04-01');
INSERT INTO insurance_policy_premium_detail VALUES (3,5003,'2022-07-01','2023-06-30',800.0,'SemiAnnual','Check',2.5,0.0,64.0,866.5,'Lapsed','2022-12-31','2023-07-01',403,680.0,'Liability',0.0,0,0,'Policy not renewed','2022-06-15','2022-07-01');

-- Fleet vehicle telemetry
CREATE TABLE fleet_vehicle_telemetry (
    telemetry_id           INTEGER PRIMARY KEY,
    vehicle_id             INTEGER NOT NULL,
    timestamp              DATE NOT NULL,
    latitude               REAL,
    longitude              REAL,
    speed_kph              REAL,
    engine_rpm             INTEGER,
    fuel_level_percent     REAL,
    odometer_km            REAL,
    coolant_temp_c         REAL,
    battery_voltage        REAL,
    throttle_position      REAL,
    brake_status           INTEGER,
    gear_position          INTEGER,
    acceleration_g         REAL,
    tyre_pressure_front_left  REAL,
    tyre_pressure_front_right REAL,
    tyre_pressure_rear_left   REAL,
    tyre_pressure_rear_right  REAL,
    gps_signal_strength    INTEGER,
    driver_id              INTEGER,
    route_id               INTEGER,
    maintenance_flag       INTEGER,
    notes                  TEXT
);
INSERT INTO fleet_vehicle_telemetry VALUES (1,301,'2023-04-01',40.7128,-74.0060,55.0,2500,80.0,15000.5,90.0,12.6,30.0,0,3,0.02,35.0,35.0,33.0,33.0,5,401,1001,0,'Normal operation');
INSERT INTO fleet_vehicle_telemetry VALUES (2,302,'2023-04-01',34.0522,-118.2437,70.0,3000,60.0,22000.0,95.0,12.8,45.0,1,4,0.05,36.0,36.0,34.0,34.0,4,402,1002,1,'Low fuel warning');
INSERT INTO fleet_vehicle_telemetry VALUES (3,303,'2023-04-01',51.5074,-0.1278,40.0,1800,95.0,8000.0,85.0,12.4,20.0,0,2,0.01,34.5,34.5,32.5,32.5,6,403,1003,0,'Idle');

-- ATM maintenance task
CREATE TABLE atm_maintenance_task (
    task_id                INTEGER PRIMARY KEY,
    atm_id                 INTEGER NOT NULL,
    scheduled_date         DATE NOT NULL,
    technician_id          INTEGER,
    task_type              TEXT NOT NULL,
    priority_level         INTEGER,
    status                 TEXT,
    start_time             DATE,
    end_time               DATE,
    parts_used             TEXT,
    labor_hours            REAL,
    cost_estimate          REAL,
    cost_actual             REAL,
    notes                  TEXT,
    follow_up_required     INTEGER,
    follow_up_date         DATE,
    created_by             TEXT,
    created_at             DATE,
    updated_by             TEXT,
    updated_at             DATE,
    compliance_check       INTEGER,
    verification_signature TEXT,
    resolution_description TEXT
);
INSERT INTO atm_maintenance_task VALUES (1,1001,'2023-04-10',501,'Cash Refill',2,'Completed','2023-04-10','2023-04-10','CashBin',1.0,150.0,152.0,'Refilled cash cassette',0,NULL,'System','2023-04-09','System','2023-04-10',1,'Sig001','No issues');
INSERT INTO atm_maintenance_task VALUES (2,1002,'2023-04-12',502,'Software Update',1,'InProgress','2023-04-12',NULL,'SSD',2.5,200.0,NULL,'Applying security patch',1,'2023-04-15','System','2023-04-11','System','2023-04-12',0,NULL,NULL);
INSERT INTO atm_maintenance_task VALUES (3,1003,'2023-04-15',503,'Hardware Inspection',3,'Pending',NULL,NULL,'None',0.0,0.0,NULL,'Routine check before holidays',1,'2023-04-20','System','2023-04-14','System','2023-04-14',0,NULL,NULL);

-- Digital certificate usage
CREATE TABLE digital_certificate_usage (
    usage_id               INTEGER PRIMARY KEY,
    certificate_id         INTEGER NOT NULL,
    service_name           TEXT NOT NULL,
    usage_timestamp        DATE NOT NULL,
    client_ip              TEXT,
    protocol               TEXT,
    cipher_suite           TEXT,
    validity_status        TEXT,
    revoked_flag           INTEGER,
    revocation_reason      TEXT,
    renewal_due_date       DATE,
    issued_by              TEXT,
    issued_to              TEXT,
    key_length_bits        INTEGER,
    public_key_algorithm   TEXT,
    thumbprint_sha256      TEXT,
    notes                  TEXT,
    created_at             DATE,
    updated_at             DATE,
    admin_user             TEXT,
    compliance_check       INTEGER
);
INSERT INTO digital_certificate_usage VALUES (1,9001,'PaymentGateway','2023-04-01','192.168.10.5','TLS1.2','TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384','Valid',0,NULL,'2024-04-01','CA_Trusted','ServiceA',2048,'RSA','A1B2C3D4E5F6','Used for transaction signing','2023-03-20','2023-04-01','admin1',1);
INSERT INTO digital_certificate_usage VALUES (2,9002,'InternalAPI','2023-04-02','10.0.0.12','TLS1.3','TLS_AES_128_GCM_SHA256','Valid',0,NULL,'2025-01-15','InternalCA','ServiceB',4096,'RSA','F6E5D4C3B2A1','API authentication','2023-03-21','2023-04-02','admin2',1);
INSERT INTO digital_certificate_usage VALUES (3,9003,'ExternalPartner','2023-04-03','203.0.113.45','TLS1.2','TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384','Revoked',1,'KeyCompromise','2023-09-30','PartnerCA','PartnerX',2048,'ECDSA','123ABC456DEF','Certificate revoked due to breach','2023-03-22','2023-04-03','admin3',0);

-- Loan product feature
CREATE TABLE loan_product_feature (
    feature_id             INTEGER PRIMARY KEY,
    loan_product_id        INTEGER NOT NULL,
    feature_name           TEXT NOT NULL,
    description            TEXT,
    effective_date         DATE,
    expiration_date        DATE,
    is_mandatory           INTEGER,
    eligibility_criteria   TEXT,
    max_amount             REAL,
    min_amount             REAL,
    interest_rate_percent  REAL,
    grace_period_months    INTEGER,
    penalty_rate_percent   REAL,
    amortization_type      TEXT,
    repayment_frequency    TEXT,
    early_repayment_allowed INTEGER,
    documentation_required TEXT,
    underwriting_required INTEGER,
    risk_weight            REAL,
    regulatory_approval_required INTEGER,
    created_by             TEXT,
    created_at             DATE,
    updated_by             TEXT,
    updated_at             DATE
);
INSERT INTO loan_product_feature VALUES (1,101,'Standard Repayment','Fixed rate loan with equal installments','2023-01-01',NULL,1,'CreditScore>700',50000.0,5000.0,5.5,6,2.0,'Annuity','Monthly',1,'IDProof,IncomeStatement',1,0.8,1,'system','2022-12-01','system','2023-01-01');
INSERT INTO loan_product_feature VALUES (2,102,'InterestOnly','Pay interest only for first 12 months','2023-02-01',NULL,0,'CreditScore>650',100000.0,10000.0,4.8,12,1.5,'InterestOnly','Monthly',1,'IDProof,TaxReturn',1,0.9,1,'system','2023-01-15','system','2023-02-01');
INSERT INTO loan_product_feature VALUES (3,103,'Flexible Term','Choose term length up to 10 years','2023-03-01',NULL,0,'CreditScore>600',200000.0,20000.0,6.2,0,2.5,'Annuity','Quarterly',0,'IDProof,EmploymentLetter',1,0.85,0,'system','2023-02-20','system','2023-03-01');

-- Card tokenization record
CREATE TABLE card_tokenization_record (
    token_id               INTEGER PRIMARY KEY,
    card_id                INTEGER NOT NULL,
    token_value            TEXT NOT NULL,
    token_creation_date    DATE NOT NULL,
    token_expiration_date DATE,
    token_status           TEXT,
    merchant_id            INTEGER,
    transaction_count      INTEGER,
    last_used_timestamp    DATE,
    encryption_algorithm   TEXT,
    key_identifier         TEXT,
    usage_limit            INTEGER,
    risk_score             REAL,
    fraud_flag             INTEGER,
    notes                  TEXT,
    created_at             DATE,
    created_by             TEXT,
    updated_at             DATE,
    updated_by             TEXT,
    compliance_checked    INTEGER
);
INSERT INTO card_tokenization_record VALUES (1,2001,'tok_abc123','2023-01-15','2025-01-15','Active',4001,15,'2023-04-01','AES256','key_01',1000,0.12,0,'Token for recurring billing','2023-01-15','system','2023-04-01','system',1);
INSERT INTO card_tokenization_record VALUES (2,2002,'tok_def456','2023-02-10','2024-02-10','Revoked',4002,5,'2023-03-20','RSA2048','key_02',500,0.45,1,'Token revoked after fraud detection','2023-02-10','system','2023-03-20','system',1);
INSERT INTO card_tokenization_record VALUES (3,2003,'tok_ghi789','2023-03-05',NULL,'Active',4003,0,NULL,'AES256','key_03',2000,0.08,0,'New token for one‑time purchase','2023-03-05','system','2023-03-05','system',0);
```