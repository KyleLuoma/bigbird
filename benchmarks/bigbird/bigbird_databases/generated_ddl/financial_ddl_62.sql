-- Branch performance metrics per month
CREATE TABLE branch_performance_metrics (
    branch_id INTEGER NOT NULL,
    metric_period DATE NOT NULL,
    total_deposits REAL NOT NULL,
    total_withdrawals REAL NOT NULL,
    new_accounts INTEGER NOT NULL,
    closed_accounts INTEGER NOT NULL,
    avg_balance REAL NOT NULL,
    loan_volume REAL NOT NULL,
    delinquent_loans INTEGER NOT NULL,
    credit_card_issuances INTEGER NOT NULL,
    atm_transactions INTEGER NOT NULL,
    online_transactions INTEGER NOT NULL,
    mobile_app_logins INTEGER NOT NULL,
    customer_complaints INTEGER NOT NULL,
    satisfaction_score REAL NOT NULL,
    staff_count INTEGER NOT NULL,
    manager_id INTEGER NOT NULL,
    region_code TEXT NOT NULL,
    branch_type TEXT NOT NULL,
    floor_area_sqft INTEGER NOT NULL,
    parking_spaces INTEGER NOT NULL,
    security_incidents INTEGER NOT NULL,
    PRIMARY KEY (branch_id, metric_period)
);
INSERT INTO branch_performance_metrics VALUES (101,'2023-01-01',1500000.00,750000.00,25,2,35000.50,500000.00,3,12,3400,12000,8000,5,4.5,15,2001,'URB','FULL_SERVICE',2000,15,0);
INSERT INTO branch_performance_metrics VALUES (102,'2023-01-01',950000.00,500000.00,18,1,27500.75,300000.00,1,8,2100,9000,5600,2,4.2,10,2002,'RUR','SMALL',1200,8,1);
INSERT INTO branch_performance_metrics VALUES (103,'2023-01-01',2100000.00,1100000.00,30,0,42000.00,750000.00,0,20,5800,15000,10200,0,4.8,20,2003,'URB','LARGE',3500,20,2);

-- Historical risk indicator values
CREATE TABLE risk_indicator_history (
    indicator_id INTEGER NOT NULL PRIMARY KEY,
    indicator_name TEXT NOT NULL,
    collection_date DATE NOT NULL,
    branch_id INTEGER NOT NULL,
    value_numeric REAL NOT NULL,
    risk_category TEXT NOT NULL,
    confidence_score REAL NOT NULL,
    source_system TEXT NOT NULL,
    data_quality_flag TEXT NOT NULL,
    notes TEXT,
    analyst_id INTEGER NOT NULL,
    review_status TEXT NOT NULL,
    threshold_low REAL NOT NULL,
    threshold_high REAL NOT NULL,
    deviation_percent REAL NOT NULL,
    trend_direction TEXT NOT NULL,
    calculation_method TEXT NOT NULL,
    normalization_factor REAL NOT NULL,
    weighting_factor REAL NOT NULL,
    alert_triggered INTEGER NOT NULL,
    mitigation_plan TEXT,
    last_updated DATE NOT NULL
);
INSERT INTO risk_indicator_history VALUES (1,'LiquidityRisk','2023-02-15',101,0.78,'MEDIUM',0.92,'CORE','PASS','Reviewed',501,'APPROVED',0.5,0.9,15.0,'UP','AVG','1.0','0.6',0,'N/A','2023-02-16');
INSERT INTO risk_indicator_history VALUES (2,'CreditRisk','2023-02-15',102,0.45,'LOW',0.88,'CORE','PASS','Reviewed',502,'APPROVED',0.3,0.7,5.0,'STABLE','MEDIAN','1.0','0.5',0,'N/A','2023-02-16');
INSERT INTO risk_indicator_history VALUES (3,'OperationalRisk','2023-02-15',103,0.92,'HIGH',0.97,'CORE','PASS','Escalated',503,'PENDING',0.8,1.0,20.0,'UP','MAX','1.0','0.7',1,'Immediate review','2023-02-16');

-- Environmental sensor readings collected at facilities
CREATE TABLE environmental_sensor_readings (
    sensor_id INTEGER NOT NULL,
    facility_id INTEGER NOT NULL,
    reading_timestamp DATE NOT NULL,
    temperature_c REAL NOT NULL,
    humidity_percent REAL NOT NULL,
    co2_ppm REAL NOT NULL,
    noise_db REAL NOT NULL,
    vibration_g REAL NOT NULL,
    battery_level_percent REAL NOT NULL,
    firmware_version TEXT NOT NULL,
    calibration_date DATE NOT NULL,
    status_code TEXT NOT NULL,
    location_desc TEXT NOT NULL,
    measurement_interval_sec INTEGER NOT NULL,
    alert_threshold_exceeded INTEGER NOT NULL,
    maintenance_due_date DATE NOT NULL,
    sensor_type TEXT NOT NULL,
    data_quality_score REAL NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    PRIMARY KEY (sensor_id, reading_timestamp)
);
INSERT INTO environmental_sensor_readings VALUES (2001,301,'2023-03-01',22.5,45.0,420.0,55.0,0.02,87.5,'v1.2','2023-01-10','OK','Warehouse A',300,0,'2023-12-01','THERMAL','0.98',40.7128,-74.0060);
INSERT INTO environmental_sensor_readings VALUES (2002,302,'2023-03-01',19.8,50.2,390.0,48.0,0.01,91.0,'v1.1','2023-02-05','OK','Data Center B',300,0,'2024-01-15','HUMIDITY','0.95',34.0522,-118.2437);
INSERT INTO environmental_sensor_readings VALUES (2003,303,'2023-03-01',25.0,40.5,500.0,65.0,0.03,80.0,'v2.0','2023-03-01','WARN','Office C',300,1,'2023-09-30','AIR_QUALITY','0.90',51.5074,-0.1278);

-- Fleet vehicle telemetry records
CREATE TABLE fleet_vehicle_telemetry (
    telemetry_id INTEGER NOT NULL PRIMARY KEY,
    vehicle_id INTEGER NOT NULL,
    record_timestamp DATE NOT NULL,
    odometer_km REAL NOT NULL,
    fuel_level_percent REAL NOT NULL,
    engine_rpm INTEGER NOT NULL,
    speed_kph REAL NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    exterior_temp_c REAL NOT NULL,
    interior_temp_c REAL NOT NULL,
    battery_voltage REAL NOT NULL,
    tire_pressure_front_left REAL NOT NULL,
    tire_pressure_front_right REAL NOT NULL,
    tire_pressure_rear_left REAL NOT NULL,
    tire_pressure_rear_right REAL NOT NULL,
    brake_status TEXT NOT NULL,
    gear_position TEXT NOT NULL,
    driver_id INTEGER NOT NULL,
    route_id INTEGER NOT NULL,
    trip_status TEXT NOT NULL
);
INSERT INTO fleet_vehicle_telemetry VALUES (5001,9001,'2023-04-10',15230.5,68.0,2500,80.5,40.7128,-74.0060,15.0,22.0,12.6,32.0,31.8,30.5,30.7,'RELEASE','D','4501','3001','IN_PROGRESS');
INSERT INTO fleet_vehicle_telemetry VALUES (5002,9002,'2023-04-10',8450.3,45.0,1800,60.2,34.0522,-118.2437,18.0,24.0,12.4,33.2,33.1,31.9,32.0,'APPLIED','N','4502','3002','COMPLETED');
INSERT INTO fleet_vehicle_telemetry VALUES (5003,9003,'2023-04-10',23015.8,12.0,3000,0.0,51.5074,-0.1278,10.0,20.0,12.2,30.8,30.9,30.2,30.3,'APPLIED','P','4503','3003','IDLE');

-- Digital wallet transaction log
CREATE TABLE digital_wallet_transaction_log (
    txn_id INTEGER NOT NULL PRIMARY KEY,
    wallet_id INTEGER NOT NULL,
    txn_timestamp DATE NOT NULL,
    txn_type TEXT NOT NULL,
    amount REAL NOT NULL,
    currency_code TEXT NOT NULL,
    merchant_name TEXT NOT NULL,
    merchant_category TEXT NOT NULL,
    status TEXT NOT NULL,
    auth_code TEXT NOT NULL,
    device_id TEXT NOT NULL,
    ip_address TEXT NOT NULL,
    geo_latitude REAL NOT NULL,
    geo_longitude REAL NOT NULL,
    fraud_flag INTEGER NOT NULL,
    chargeback_flag INTEGER NOT NULL,
    settlement_date DATE NOT NULL,
    notes TEXT,
    exchange_rate REAL NOT NULL,
    fee_amount REAL NOT NULL
);
INSERT INTO digital_wallet_transaction_log VALUES (8001,6001,'2023-05-01','PURCHASE',125.50,'USD','BOOKSTORE','RETAIL','SETTLED','AUTH123','DEV001','192.168.1.10',40.7128,-74.0060,0,0,'2023-05-02','N/A',1.00,2.50);
INSERT INTO digital_wallet_transaction_log VALUES (8002,6002,'2023-05-02','TRANSFER',500.00,'EUR','INTERNAL','TRANSFER','PENDING','AUTH456','DEV002','10.0.0.5',48.8566,2.3522,0,0,'2023-05-04','N/A',1.10,5.00);
INSERT INTO digital_wallet_transaction_log VALUES (8003,6003,'2023-05-03','WITHDRAWAL',80.00,'USD','ATM001','ATM','SETTLED','AUTH789','DEV003','172.16.0.2',34.0522,-118.2437,0,0,'2023-05-04','N/A',1.00,1.60);

-- Supplier contract overview
CREATE TABLE supplier_contract_overview (
    contract_id INTEGER NOT NULL PRIMARY KEY,
    supplier_id INTEGER NOT NULL,
    contract_start DATE NOT NULL,
    contract_end DATE NOT NULL,
    contract_value REAL NOT NULL,
    currency TEXT NOT NULL,
    service_type TEXT NOT NULL,
    payment_terms TEXT NOT NULL,
    performance_score REAL NOT NULL,
    compliance_status TEXT NOT NULL,
    renewal_option TEXT NOT NULL,
    notice_period_days INTEGER NOT NULL,
    governing_law TEXT NOT NULL,
    dispute_resolution TEXT NOT NULL,
    contact_name TEXT NOT NULL,
    contact_email TEXT NOT NULL,
    contact_phone TEXT NOT NULL,
    amendment_count INTEGER NOT NULL,
    last_amendment DATE NOT NULL,
    active_flag INTEGER NOT NULL,
    notes TEXT
);
INSERT INTO supplier_contract_overview VALUES (90001,4001,'2022-01-01','2025-12-31',2500000.00,'USD','IT_SERVICES','NET30',4.5,'COMPLIANT','AUTO',90,'US','ARBITRATION','John Doe','john.doe@example.com','5551234567',2,'2023-02-15',1,'N/A');
INSERT INTO supplier_contract_overview VALUES (90002,4002,'2021-06-15','2024-06-14',1200000.00,'EUR','CLEANING','NET60',3.9,'NON_COMPLIANT','MANUAL',60,'DE','MEDIATION','Anna Smith','anna.smith@example.com','5559876543',1,'2022-11-30',1,'Review needed');
INSERT INTO supplier_contract_overview VALUES (90003,4003,'2023-03-01','2026-02-28',750000.00,'USD','SECURITY','NET45',4.2,'COMPLIANT','AUTO',45,'CA','ARBITRATION','Mike Lee','mike.lee@example.com','5555551212',0,'2023-03-01',1,'New contract');

-- Marketing campaign budget details
CREATE TABLE marketing_campaign_budget (
    campaign_id INTEGER NOT NULL,
    campaign_name TEXT NOT NULL,
    fiscal_year INTEGER NOT NULL,
    total_budget REAL NOT NULL,
    allocated_tv REAL NOT NULL,
    allocated_radio REAL NOT NULL,
    allocated_print REAL NOT NULL,
    allocated_online REAL NOT NULL,
    allocated_social REAL NOT NULL,
    allocated_events REAL NOT NULL,
    spend_to_date REAL NOT NULL,
    remaining_budget REAL NOT NULL,
    approval_status TEXT NOT NULL,
    sponsor_id INTEGER NOT NULL,
    market_segment TEXT NOT NULL,
    target_audience TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    performance_metric TEXT NOT NULL,
    metric_target REAL NOT NULL,
    actual_metric REAL NOT NULL,
    PRIMARY KEY (campaign_id, fiscal_year)
);
INSERT INTO marketing_campaign_budget VALUES (301,'SummerBoost',2023,500000.00,150000.00,50000.00,60000.00,180000.00,30000.00,30000.00,220000.00,280000.00,'APPROVED',701,'CONSUMER','18-35','2023-06-01','2023-08-31','IMPRESSIONS',2000000.00,2100000.00);
INSERT INTO marketing_campaign_budget VALUES (302,'WinterSavings',2023,300000.00,50000.00,40000.00,50000.00,120000.00,20000.00,20000.00,95000.00,205000.00,'PENDING',702,'SMALL_BUSINESS','30-55','2023-11-01','2024-02-28','CONVERSIONS',15000.00,12000.00);
INSERT INTO marketing_campaign_budget VALUES (303,'SpringLaunch',2023,400000.00,80000.00,30000.00,70000.00,150000.00,25000.00,25000.00,180000.00,220000.00,'APPROVED',703,'ENTERPRISE','25-45','2023-04-01','2023-06-30','LEADS',5000.00,4800.00);

-- Loan product feature specifications
CREATE TABLE loan_product_feature (
    feature_id INTEGER NOT NULL PRIMARY KEY,
    loan_product_id INTEGER NOT NULL,
    feature_name TEXT NOT NULL,
    description TEXT NOT NULL,
    is_mandatory INTEGER NOT NULL,
    max_value REAL,
    min_value REAL,
    default_value REAL,
    unit TEXT,
    applicable_regions TEXT,
    eligibility_criteria TEXT,
    documentation_required TEXT,
    risk_factor_score REAL,
    regulatory_approval TEXT,
    effective_date DATE NOT NULL,
    expiration_date DATE,
    created_by INTEGER NOT NULL,
    created_at DATE NOT NULL,
    updated_by INTEGER,
    updated_at DATE,
    status TEXT NOT NULL
);
INSERT INTO loan_product_feature VALUES (1501,2001,'InterestRate','Annual interest rate for the loan',1,15.0,3.0,5.5,'PERCENT','US,CA','CreditScore>700','IDProof',2.1,'APPROVED','2023-01-01',NULL,500,'2023-01-01',500,'2023-01-01','ACTIVE');
INSERT INTO loan_product_feature VALUES (1502,2002,'GracePeriod','Months without payment after disbursement',0,12,0,2,'MONTHS','US','None','LoanAgreement',1.0,'APPROVED','2023-02-15',NULL,501,'2023-02-15',501,'2023-02-15','ACTIVE');
INSERT INTO loan_product_feature VALUES (1503,2003,'PrepaymentPenalty','Penalty for early repayment',0,5.0,0.0,0.0,'PERCENT','CA','LoanAmount<50000','None',0.5,'PENDING','2023-03-10','2025-12-31',502,'2023-03-10',502,'2023-03-10','DRAFT');

-- ATM security event log (extended)
CREATE TABLE atm_security_event_log (
    event_id INTEGER NOT NULL PRIMARY KEY,
    atm_id INTEGER NOT NULL,
    event_timestamp DATE NOT NULL,
    event_type TEXT NOT NULL,
    severity_level TEXT NOT NULL,
    description TEXT NOT NULL,
    operator_id INTEGER,
    resolved_flag INTEGER NOT NULL,
    resolution_timestamp DATE,
    resolution_notes TEXT,
    camera_snapshot_id TEXT,
    alarm_triggered INTEGER NOT NULL,
    firmware_version TEXT NOT NULL,
    location_code TEXT NOT NULL,
    ip_address TEXT NOT NULL,
    tamper_status TEXT NOT NULL,
    card_reader_status TEXT NOT NULL,
    cash_dispenser_status TEXT NOT NULL,
    network_status TEXT NOT NULL,
    last_maintenance_date DATE NOT NULL,
    maintenance_due_date DATE NOT NULL
);
INSERT INTO atm_security_event_log VALUES (40001,801,'2023-07-01','SKIMMER_DETECTED','HIGH','Card skimmer attached to slot',1201,0,NULL,NULL,'IMG001',1,'v3.4','ATM_NY_01','10.0.0.5','OK','OK','OK','OK','2023-06-01','2023-12-01');
INSERT INTO atm_security_event_log VALUES (40002,802,'2023-07-03','DOOR_FORCED','MEDIUM','ATM door forced open',1202,1,'2023-07-04','Repaired lock','IMG002',1,'v3.5','ATM_CA_02','10.0.0.6','TAMPERED','OK','OK','OK','2023-06-15','2023-12-15');
INSERT INTO atm_security_event_log VALUES (40003,803,'2023-07-05','NETWORK_OUTAGE','LOW','Lost connectivity to central server',1203,1,'2023-07-05','Switched to backup link','IMG003',0,'v3.4','ATM_TX_03','10.0.0.7','OK','OK','OK','DOWN','2023-06-20','2023-12-20');

-- Customer loyalty activity tracking
CREATE TABLE customer_loyalty_activity (
    loyalty_id INTEGER NOT NULL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    activity_date DATE NOT NULL,
    activity_type TEXT NOT NULL,
    points_earned INTEGER NOT NULL,
    points_redeemed INTEGER NOT NULL,
    transaction_id INTEGER,
    channel TEXT NOT NULL,
    location_id INTEGER,
    campaign_code TEXT,
    tier_before TEXT NOT NULL,
    tier_after TEXT NOT NULL,
    status TEXT NOT NULL,
    notes TEXT,
    created_at DATE NOT NULL,
    created_by INTEGER NOT NULL,
    updated_at DATE,
    updated_by INTEGER,
    expiration_date DATE,
    redemption_method TEXT NOT NULL
);
INSERT INTO customer_loyalty_activity VALUES (10001,3001,'2023-08-01','PURCHASE',120,0,8001,'ONLINE',0,'SPRING2023','BRONZE','SILVER','COMPLETED','N/A','2023-08-01',600,'2023-08-01',600,NULL,'POINTS');
INSERT INTO customer_loyalty_activity VALUES (10002,3002,'2023-08-02','REFERRAL',200,0,NULL,'MOBILE',0,'REF2023','SILVER','GOLD','PENDING','Awaiting verification','2023-08-02',601,NULL,NULL,NULL,'POINTS');
INSERT INTO customer_loyalty_activity VALUES (10003,3003,'2023-08-03','REDEMPTION',0,150,8003,'INSTORE',101,'SUMMER2023','GOLD','GOLD','COMPLETED','Redeemed for gift card','2023-08-03',602,'2023-08-04',602,'2024-08-03','VOUCHER');