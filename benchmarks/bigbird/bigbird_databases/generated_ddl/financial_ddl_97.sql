-- Branch Maintenance Log
CREATE TABLE branch_maintenance_log (
    log_id INTEGER PRIMARY KEY,
    branch_id INTEGER NOT NULL,
    maintenance_type TEXT NOT NULL,
    scheduled_date DATE NOT NULL,
    completed_date DATE,
    technician_id INTEGER NOT NULL,
    cost_estimate REAL NOT NULL,
    cost_actual REAL,
    parts_used TEXT,
    downtime_minutes INTEGER NOT NULL,
    notes TEXT,
    severity_level INTEGER NOT NULL,
    approval_status TEXT NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    vendor_id INTEGER NOT NULL,
    service_contract_id INTEGER NOT NULL,
    priority INTEGER NOT NULL,
    risk_assessment_score REAL NOT NULL,
    compliance_flag INTEGER NOT NULL
);
INSERT INTO branch_maintenance_log VALUES (1,101,'HVAC Inspection','2023-03-01','2023-03-01',2001,150.00,148.75,'filter,condenser',30,'Routine check',2,'Approved','2023-03-01','2023-03-01',501,301,1,3.5,1);
INSERT INTO branch_maintenance_log VALUES (2,102,'Fire Alarm Test','2023-04-15','2023-04-15',2002,200.00,210.00,'battery,panel',45,'Test completed',1,'Pending','2023-04-15','2023-04-15',502,302,2,4.0,0);
INSERT INTO branch_maintenance_log VALUES (3,103,'Security Camera Upgrade','2023-05-10',NULL,2003,500.00,NULL,'camera,router',0,'Installation scheduled',3,'Approved','2023-05-09','2023-05-09',503,303,1,2.5,1);

-- Digital Ad Campaign Metrics
CREATE TABLE digital_ad_campaign_metrics (
    metric_id INTEGER PRIMARY KEY,
    campaign_id INTEGER NOT NULL,
    date DATE NOT NULL,
    impressions INTEGER NOT NULL,
    clicks INTEGER NOT NULL,
    ctr REAL NOT NULL,
    cpc REAL NOT NULL,
    spend REAL NOT NULL,
    conversions INTEGER NOT NULL,
    conversion_rate REAL NOT NULL,
    revenue REAL NOT NULL,
    roi REAL NOT NULL,
    device_type TEXT NOT NULL,
    platform TEXT NOT NULL,
    ad_format TEXT NOT NULL,
    audience_segment TEXT NOT NULL,
    geo_region TEXT NOT NULL,
    frequency_cap INTEGER NOT NULL,
    bid_strategy TEXT NOT NULL,
    ad_quality_score INTEGER NOT NULL,
    view_through_conversions INTEGER NOT NULL
);
INSERT INTO digital_ad_campaign_metrics VALUES (1,1001,'2023-06-01',100000,2500,2.5,0.75,1875.00,300,12.0,4500.00,2.4,'Mobile','Google','Banner','YoungAdults','NorthAmerica',3,'CPC',85,50);
INSERT INTO digital_ad_campaign_metrics VALUES (2,1001,'2023-06-02',95000,2400,2.53,0.78,1872.00,310,12.92,4600.00,2.46,'Desktop','Google','Display','Professionals','Europe',3,'CPC',88,55);
INSERT INTO digital_ad_campaign_metrics VALUES (3,1002,'2023-06-01',80000,2000,2.5,0.70,1400.00,250,12.5,3500.00,2.5,'Mobile','Facebook','Video','Students','Asia',2,'CPM',80,40);

-- Environmental Sensor Station Readings
CREATE TABLE environmental_sensor_station_readings (
    reading_id INTEGER PRIMARY KEY,
    station_id INTEGER NOT NULL,
    timestamp DATE NOT NULL,
    temperature_c REAL NOT NULL,
    humidity_percent REAL NOT NULL,
    co2_ppm REAL NOT NULL,
    pm2_5_ug_m3 REAL NOT NULL,
    pm10_ug_m3 REAL NOT NULL,
    noise_db REAL NOT NULL,
    wind_speed_mps REAL NOT NULL,
    wind_direction_deg REAL NOT NULL,
    precipitation_mm REAL NOT NULL,
    battery_voltage REAL NOT NULL,
    signal_strength REAL NOT NULL,
    sensor_status TEXT NOT NULL,
    firmware_version TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    altitude_m REAL NOT NULL,
    maintenance_flag INTEGER NOT NULL
);
INSERT INTO environmental_sensor_station_readings VALUES (1,201,'2023-06-01',22.5,55.0,420,12.3,20.5,65,5.2,180,0.0,3.7,-70,'OK','v1.2',40.7128,-74.0060,10,0);
INSERT INTO environmental_sensor_station_readings VALUES (2,202,'2023-06-01',18.3,68.0,380,10.1,18.0,58,3.8,90,0.2,3.8,-68,'OK','v1.2',34.0522,-118.2437,15,0);
INSERT INTO environmental_sensor_station_readings VALUES (3,203,'2023-06-01',25.0,45.0,500,15.0,25.0,70,6.0,270,0.0,3.6,-72,'MAINT','v1.1',51.5074,-0.1278,8,1);

-- Fleet Driver Performance
CREATE TABLE fleet_driver_performance (
    record_id INTEGER PRIMARY KEY,
    driver_id INTEGER NOT NULL,
    vehicle_id INTEGER NOT NULL,
    date DATE NOT NULL,
    total_miles REAL NOT NULL,
    avg_speed REAL NOT NULL,
    harsh_brakes INTEGER NOT NULL,
    harsh_accels INTEGER NOT NULL,
    idle_time_minutes INTEGER NOT NULL,
    fuel_consumed_liters REAL NOT NULL,
    on_time_deliveries INTEGER NOT NULL,
    missed_deliveries INTEGER NOT NULL,
    safety_score INTEGER NOT NULL,
    training_completed_flag INTEGER NOT NULL,
    routes_completed INTEGER NOT NULL,
    violations INTEGER NOT NULL,
    comments TEXT,
    logged_by INTEGER NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL
);
INSERT INTO fleet_driver_performance VALUES (1,301,401,'2023-06-01',350,45.5,2,1,30,45.0,10,0,95,1,5,0,'Good performance',1001,'2023-06-01','2023-06-01');
INSERT INTO fleet_driver_performance VALUES (2,302,402,'2023-06-01',420,48.2,3,2,45,50.5,12,1,88,0,6,1,'Minor delays',1002,'2023-06-01','2023-06-01');
INSERT INTO fleet_driver_performance VALUES (3,303,403,'2023-06-01',300,42.0,1,0,20,38.0,9,0,98,1,4,0,'Excellent',1003,'2023-06-01','2023-06-01');

-- Vendor Contract Detail
CREATE TABLE vendor_contract_detail (
    contract_id INTEGER PRIMARY KEY,
    vendor_id INTEGER NOT NULL,
    contract_start_date DATE NOT NULL,
    contract_end_date DATE NOT NULL,
    service_type TEXT NOT NULL,
    total_value REAL NOT NULL,
    payment_terms TEXT NOT NULL,
    renewal_option TEXT NOT NULL,
    performance_score INTEGER NOT NULL,
    compliance_status TEXT NOT NULL,
    contact_name TEXT NOT NULL,
    contact_email TEXT NOT NULL,
    contact_phone TEXT NOT NULL,
    sla_response_time_hr INTEGER NOT NULL,
    sla_resolution_time_hr INTEGER NOT NULL,
    penalty_clause TEXT NOT NULL,
    amendment_count INTEGER NOT NULL,
    last_amendment_date DATE NOT NULL,
    governing_law TEXT NOT NULL,
    termination_notice_days INTEGER NOT NULL
);
INSERT INTO vendor_contract_detail VALUES (1,501,'2022-01-01','2024-12-31','Cleaning',250000.00,'Net30','Auto',92,'Compliant','Alice Smith','alice.smith@example.com','5551234567',24,48,'Late penalty 5%',2,'2023-06-01','NY',60);
INSERT INTO vendor_contract_detail VALUES (2,502,'2021-06-15','2023-06-14','Security',500000.00,'Net45','Manual',85,'NonCompliant','Bob Jones','bob.jones@example.com','5559876543',12,24,'Service credit 10%',1,'2022-12-01','CA',90);
INSERT INTO vendor_contract_detail VALUES (3,503,'2023-03-01','2026-02-28','IT Support',750000.00,'Net15','Auto',95,'Compliant','Carol Lee','carol.lee@example.com','5555551212',8,16,'No penalty',0,'2023-03-01','TX',30);

-- Loan Product Feature
CREATE TABLE loan_product_feature (
    feature_id INTEGER PRIMARY KEY,
    loan_product_id INTEGER NOT NULL,
    feature_name TEXT NOT NULL,
    description TEXT NOT NULL,
    effective_date DATE NOT NULL,
    expiration_date DATE,
    is_mandatory INTEGER NOT NULL,
    max_amount INTEGER NOT NULL,
    min_amount INTEGER NOT NULL,
    interest_rate_adjustment REAL NOT NULL,
    fee_amount REAL NOT NULL,
    eligibility_criteria TEXT NOT NULL,
    documentation_required TEXT NOT NULL,
    grace_period_days INTEGER NOT NULL,
    repayment_method TEXT NOT NULL,
    early_repayment_penalty REAL NOT NULL,
    collateral_required_flag INTEGER NOT NULL,
    risk_rating TEXT NOT NULL,
    created_by TEXT NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL
);
INSERT INTO loan_product_feature VALUES (1,1001,'Flexible Repayment','Allows variable payment schedule','2023-01-01',NULL,0,500000,5000,0.25,100.00,'CreditScoreAbove700','IncomeProof',30,'Monthly',1.5,1,'Medium','admin','2023-01-01','2023-01-01');
INSERT INTO loan_product_feature VALUES (2,1002,'Interest Rate Cap','Caps rate at 5%','2022-06-01',NULL,1,300000,10000,0.0,0.00,'AllApplicants','None',0,'Monthly',0.0,0,'Low','admin','2022-06-01','2022-06-01');
INSERT INTO loan_product_feature VALUES (3,1003,'Early Settlement Discount','Discount of 0.5% for early payoff','2023-03-01',NULL,0,200000,2000,-0.5,50.00,'LoanAgeAbove12Months','LoanAgreement',15,'Quarterly',0.0,1,'High','admin','2023-03-01','2023-03-01');

-- Digital Wallet Transaction Log
CREATE TABLE digital_wallet_transaction_log (
    txn_id INTEGER PRIMARY KEY,
    wallet_id INTEGER NOT NULL,
    transaction_type TEXT NOT NULL,
    timestamp DATE NOT NULL,
    amount REAL NOT NULL,
    currency TEXT NOT NULL,
    status TEXT NOT NULL,
    merchant_id INTEGER,
    merchant_category TEXT,
    device_id INTEGER NOT NULL,
    ip_address TEXT NOT NULL,
    geo_country TEXT NOT NULL,
    geo_city TEXT NOT NULL,
    fee_amount REAL NOT NULL,
    exchange_rate REAL NOT NULL,
    original_amount REAL NOT NULL,
    signature_hash TEXT NOT NULL,
    auth_code TEXT NOT NULL,
    settlement_date DATE,
    notes TEXT,
    created_at DATE NOT NULL
);
INSERT INTO digital_wallet_transaction_log VALUES (1,9001,'Payment','2023-06-01',150.00,'USD','Completed',8001,'Retail',3001,'192.168.1.10','US','NewYork',1.50,1.0,150.00,'abc123hash','AUTH001','2023-06-02','Online purchase','2023-06-01');
INSERT INTO digital_wallet_transaction_log VALUES (2,9002,'TopUp','2023-06-02',200.00,'EUR','Pending',NULL,NULL,3002,'10.0.0.5','DE','Berlin',2.00,1.2,240.00,'def456hash','AUTH002',NULL,'Card top-up','2023-06-02');
INSERT INTO digital_wallet_transaction_log VALUES (3,9001,'Transfer','2023-06-03',75.00,'USD','Failed',8002,'Services',3003,'172.16.0.3','US','Chicago',0.75,1.0,75.00,'ghi789hash','AUTH003',NULL,'Transfer to friend','2023-06-03');

-- Regulatory Fine Detail
CREATE TABLE regulatory_fine_detail (
    fine_id INTEGER PRIMARY KEY,
    regulatory_body TEXT NOT NULL,
    violation_code TEXT NOT NULL,
    description TEXT NOT NULL,
    amount REAL NOT NULL,
    currency TEXT NOT NULL,
    issue_date DATE NOT NULL,
    due_date DATE NOT NULL,
    paid_flag INTEGER NOT NULL,
    payment_date DATE,
    account_responsible TEXT NOT NULL,
    remediation_action TEXT NOT NULL,
    compliance_deadline DATE NOT NULL,
    status TEXT NOT NULL,
    notes TEXT,
    created_by TEXT NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    audit_reference TEXT NOT NULL,
    appeal_status TEXT NOT NULL
);
INSERT INTO regulatory_fine_detail VALUES (1,'FINCEN','V001','Late reporting of large cash transaction',25000.00,'USD','2023-02-15','2023-03-15',1,'2023-03-10','ComplianceDept','Implemented new monitoring system','2023-04-01','Closed','Fine paid in full','admin','2023-02-15','2023-03-10','AUD123','None');
INSERT INTO regulatory_fine_detail VALUES (2,'OCC','V045','Violation of loan underwriting standards',50000.00,'USD','2023-04-01','2023-05-01',0,NULL,'RiskDept','Revised underwriting policy','2023-06-01','Open','Awaiting payment','admin','2023-04-01','2023-04-01','AUD456','Pending');
INSERT INTO regulatory_fine_detail VALUES (3,'FDIC','V078','Failure to maintain required capital ratios',75000.00,'USD','2023-05-20','2023-06-20',0,NULL,'FinanceDept','Capital infusion planned','2023-08-01','Open','Negotiations ongoing','admin','2023-05-20','2023-05-20','AUD789','Appealed');

-- Marketing Channel Performance
CREATE TABLE marketing_channel_performance (
    channel_perf_id INTEGER PRIMARY KEY,
    channel_name TEXT NOT NULL,
    period_start DATE NOT NULL,
    period_end DATE NOT NULL,
    impressions INTEGER NOT NULL,
    clicks INTEGER NOT NULL,
    leads INTEGER NOT NULL,
    conversions INTEGER NOT NULL,
    cost REAL NOT NULL,
    revenue REAL NOT NULL,
    roi REAL NOT NULL,
    cpl REAL NOT NULL,
    cpa REAL NOT NULL,
    avg_position REAL NOT NULL,
    quality_score INTEGER NOT NULL,
    budget_allocated REAL NOT NULL,
    spend_percentage REAL NOT NULL,
    target_audience TEXT NOT NULL,
    geographic_target TEXT NOT NULL,
    device_target TEXT NOT NULL,
    notes TEXT
);
INSERT INTO marketing_channel_performance VALUES (1,'Email','2023-05-01','2023-05-31',50000,2500,800,300,12000.00,18000.00,1.5,15.00,40.00,3,15000.00,80,'Adults','NorthAmerica','All','Seasonal promotion');
INSERT INTO marketing_channel_performance VALUES (2,'SocialMedia','2023-05-01','2023-05-31',200000,5000,1500,700,30000.00,45000.00,1.5,20.00,35.00,2,25000.00,83,'YoungAdults','Europe','Mobile','New product launch');
INSERT INTO marketing_channel_performance VALUES (3,'Search','2023-05-01','2023-05-31',150000,4000,1200,600,25000.00,38000.00,1.52,18.00,38.00,4,20000.00,80,'Professionals','Asia','Desktop','Brand awareness');

-- Branch Security Device Inventory
CREATE TABLE branch_security_device_inventory (
    device_id INTEGER PRIMARY KEY,
    branch_id INTEGER NOT NULL,
    device_type TEXT NOT NULL,
    manufacturer TEXT NOT NULL,
    model_number TEXT NOT NULL,
    serial_number TEXT NOT NULL,
    installation_date DATE NOT NULL,
    last_maintenance_date DATE NOT NULL,
    firmware_version TEXT NOT NULL,
    ip_address TEXT NOT NULL,
    mac_address TEXT NOT NULL,
    status TEXT NOT NULL,
    warranty_expiry DATE NOT NULL,
    location_description TEXT NOT NULL,
    audit_flag INTEGER NOT NULL,
    responsible_staff_id INTEGER NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    decommission_date DATE,
    notes TEXT
);
INSERT INTO branch_security_device_inventory VALUES (1,101,'CCTV','Bosch','CCTV-1000','SN001','2022-01-15','2023-05-01','v3.1','10.0.0.5','00:1A:2B:3C:4D:5E','Active','2025-01-15','Lobby',0,9001,'2022-01-15','2023-05-01',NULL,'Main entrance camera');
INSERT INTO branch_security_device_inventory VALUES (2,102,'AccessControl','Honeywell','AC-200','SN002','2021-06-20','2023-04-20','v2.5','10.0.0.6','00:1A:2B:3C:4D:5F','Active','2024-06-20','Second floor',0,9002,'2021-06-20','2023-04-20',NULL,'Card reader system');
INSERT INTO branch_security_device_inventory VALUES (3,103,'AlarmPanel','Siemens','AP-300','SN003','2020-09-10','2023-03-15','v1.9','10.0.0.7','00:1A:2B:3C:4D:60','Inactive','2023-09-10','Basement',1,9003,'2020-09-10','2023-03-15','2023-12-31','Decommission pending');