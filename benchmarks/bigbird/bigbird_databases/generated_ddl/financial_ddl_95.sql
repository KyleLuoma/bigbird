-- Environmental sensor station data
CREATE TABLE environmental_sensor_station (
    station_id INTEGER PRIMARY KEY,
    station_name TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    installation_date DATE NOT NULL,
    sensor_type TEXT NOT NULL,
    measurement_interval_minutes INTEGER NOT NULL,
    is_active INTEGER NOT NULL,
    firmware_version TEXT NOT NULL,
    battery_capacity_mah INTEGER,
    communication_protocol TEXT,
    last_maintenance_date DATE,
    maintenance_cycle_days INTEGER,
    calibration_date DATE,
    data_retention_days INTEGER,
    alert_threshold_low REAL,
    alert_threshold_high REAL,
    region_code TEXT,
    city TEXT,
    altitude_meters REAL,
    owner_department TEXT,
    notes TEXT
);
INSERT INTO environmental_sensor_station VALUES (1,'StationA',45.12,12.34,'2022-03-15','AirQuality',15,1,'v1.2',5000,'LoRa','2023-01-10',180,'2023-01-01',365,5.0,50.0,'RC01','Metropolis',250.5,'Environmental','Initial deployment');
INSERT INTO environmental_sensor_station VALUES (2,'StationB',46.78,13.56,'2021-07-20','Temperature',10,1,'v1.0',4000,'NB-IoT','2023-02-05',365,'2023-02-01',730,0.0,40.0,'RC02','Gotham',310.2,'Environmental','Upgraded firmware');
INSERT INTO environmental_sensor_station VALUES (3,'StationC',44.55,11.22,'2020-11-05','Humidity',30,0,'v0.9',3000,'Sigfox','2022-12-20',365,'2022-12-15',180,20.0,80.0,'RC03','StarCity',120.0,'Environmental','Decommissioned');

-- Fleet vehicle maintenance records
CREATE TABLE fleet_vehicle_maintenance (
    maintenance_id INTEGER PRIMARY KEY,
    vehicle_vin TEXT NOT NULL,
    service_date DATE NOT NULL,
    mileage INTEGER NOT NULL,
    service_center TEXT NOT NULL,
    technician_name TEXT NOT NULL,
    oil_change BOOLEAN NOT NULL,
    tire_rotation BOOLEAN NOT NULL,
    brake_inspection BOOLEAN NOT NULL,
    filter_replacement BOOLEAN NOT NULL,
    coolant_level REAL,
    battery_voltage REAL,
    notes TEXT,
    next_service_due DATE,
    service_cost REAL,
    warranty_remaining_months INTEGER,
    fuel_type TEXT,
    emission_test_passed BOOLEAN,
    gps_odometer INTEGER,
    vehicle_type TEXT,
    depot_location TEXT,
    maintenance_category TEXT
);
INSERT INTO fleet_vehicle_maintenance VALUES (1001,'1HGCM82633A004352','2023-04-12',25400,'CentralAuto','JohnDoe',1,1,1,0,3.5,12.6,'Replaced oil filter',2023-10-12,250.75,12,'Diesel',1,25400,'Truck','DepotA','Routine');
INSERT INTO fleet_vehicle_maintenance VALUES (1002,'2FTRX18W1XCA12345','2023-02-08',18200,'NorthGarage','JaneSmith',1,0,1,1,3.2,12.4,'Brake pads worn',2023-08-08,320.00,8,'Petrol',0,18200,'Van','DepotB','Brake Service');
INSERT INTO fleet_vehicle_maintenance VALUES (1003,'3C6UR5FL9GE123456','2023-01-20',45000,'EastMechanics','MikeBrown',0,1,0,1,3.7,12.8,'Battery replacement',2023-07-20,410.30,5,'Hybrid',1,45000,'SUV','DepotC','Battery');

-- Regulatory report summary
CREATE TABLE regulatory_report_summary (
    report_id INTEGER PRIMARY KEY,
    report_name TEXT NOT NULL,
    submission_date DATE NOT NULL,
    reporting_period_start DATE NOT NULL,
    reporting_period_end DATE NOT NULL,
    regulator_agency TEXT NOT NULL,
    total_issues_reported INTEGER,
    critical_issues INTEGER,
    high_issues INTEGER,
    medium_issues INTEGER,
    low_issues INTEGER,
    compliance_score REAL,
    corrective_actions_taken INTEGER,
    pending_actions INTEGER,
    report_version TEXT,
    approved_by TEXT,
    approval_date DATE,
    audit_trail_link TEXT,
    comments TEXT,
    data_volume_mb REAL,
    report_format TEXT,
    confidentiality_level TEXT
);
INSERT INTO regulatory_report_summary VALUES (501,'AnnualSafety2022','2023-03-15','2022-01-01','2022-12-31','SafetyBoard',120,10,20,30,60,87.5,95,15,'v2.1','AliceWhite','2023-03-10','/audit/trail/501','All issues addressed','15.2','PDF','Confidential');
INSERT INTO regulatory_report_summary VALUES (502,'QuarterlyEnvironmentalQ1','2023-04-05','2023-01-01','2023-03-31','EnvAgency',45,2,5,10,28,92.3,44,1,'v1.0','BobGreen','2023-04-01','/audit/trail/502','Submitted on time','8.7','DOCX','Restricted');
INSERT INTO regulatory_report_summary VALUES (503,'MonthlyFinancialJUL','2023-08-02','2023-07-01','2023-07-31','FinanceDept',30,0,3,7,20,95.0,30,0,'v3.0','CarolBlue','2023-07-30','/audit/trail/503','No discrepancies','3.4','XLSX','Public');

-- Digital asset registry
CREATE TABLE digital_asset_registry (
    asset_id INTEGER PRIMARY KEY,
    asset_name TEXT NOT NULL,
    asset_type TEXT NOT NULL,
    creation_date DATE NOT NULL,
    owner_department TEXT NOT NULL,
    storage_path TEXT NOT NULL,
    size_bytes INTEGER NOT NULL,
    checksum TEXT NOT NULL,
    encryption_enabled BOOLEAN NOT NULL,
    access_level TEXT NOT NULL,
    last_accessed DATE,
    retention_policy_months INTEGER,
    compliance_tag TEXT,
    status TEXT,
    version INTEGER,
    metadata_json TEXT,
    tags TEXT,
    approved_by TEXT,
    approval_date DATE,
    expiration_date DATE,
    audit_log_ref TEXT,
    notes TEXT
);
INSERT INTO digital_asset_registry VALUES (2001,'CustomerDataExport','CSV','2022-12-01','DataScience','/data/exports/customers.csv',2048000,'abc123def456',1,'Restricted','2023-01-15',24,'GDPR','Active',1,'{}','customers,export','DianaGrey','2022-12-02','2024-12-01','/audit/2001','Initial load');
INSERT INTO digital_asset_registry VALUES (2002,'MarketingVideoQ3','MP4','2023-07-10','Marketing','/media/videos/q3_promo.mp4',52428800,'def789ghi012',0,'Public','2023-07-15',12,'None','Active',2,'{}','video,marketing','EvanBlack','2023-07-11','2024-07-10','/audit/2002','Updated version');
INSERT INTO digital_asset_registry VALUES (2003,'FinancialModel2023','XLSX','2023-01-20','Finance','/models/fin_model_2023.xlsx',1048576,'ghi345jkl678',1,'Confidential','2023-02-01',36,'SOX','Archived',1,'{}','model,finance','FionaRed','2023-01-21','2026-01-20','/audit/2003','Archived after FY23');

-- Marketing channel metrics
CREATE TABLE marketing_channel_metrics (
    metric_id INTEGER PRIMARY KEY,
    channel_name TEXT NOT NULL,
    reporting_date DATE NOT NULL,
    impressions INTEGER,
    clicks INTEGER,
    ctr REAL,
    conversion_rate REAL,
    spend_usd REAL,
    revenue_usd REAL,
    cpc_usd REAL,
    cpa_usd REAL,
    avg_position REAL,
    quality_score INTEGER,
    audience_segment TEXT,
    device_type TEXT,
    geographic_region TEXT,
    ad_format TEXT,
    campaign_id TEXT,
    ad_group_id TEXT,
    keyword TEXT,
    bounce_rate REAL,
    session_duration_seconds REAL,
    new_vs_returning TEXT,
    notes TEXT
);
INSERT INTO marketing_channel_metrics VALUES (301,'GoogleSearch','2023-08-01',150000,5000,0.033,0.025,12000.00,25000.00,2.40,4.80,1.2,8,'Tech Enthusiasts','Desktop','NorthAmerica','Text','CMP001','AG001','cloud services',0.45,180.5,'New','Seasonal boost');
INSERT INTO marketing_channel_metrics VALUES (302,'FacebookAds','2023-08-01',200000,8000,0.04,0.018,15000.00,18000.00,1.88,3.50,2.5,7,'Young Adults','Mobile','Europe','Video','CMP002','AG002','social media',0.50,150.0,'Returning','Video carousel test');
INSERT INTO marketing_channel_metrics VALUES (303,'LinkedIn','2023-08-01',90000,3000,0.033,0.030,8000.00,12000.00,2.67,2.67,1.8,9,'Professionals','Desktop','Asia','SponsoredContent','CMP003','AG003','enterprise solutions',0.38,210.2,'New','B2B outreach');

-- Branch security device inventory
CREATE TABLE branch_security_device_inventory (
    device_id INTEGER PRIMARY KEY,
    branch_id INTEGER NOT NULL,
    device_type TEXT NOT NULL,
    manufacturer TEXT,
    model_number TEXT,
    serial_number TEXT,
    installation_date DATE,
    last_service_date DATE,
    firmware_version TEXT,
    ip_address TEXT,
    mac_address TEXT,
    location_within_branch TEXT,
    status TEXT,
    warranty_expiration DATE,
    maintenance_interval_days INTEGER,
    is_active INTEGER,
    surveillance_coverage TEXT,
    power_source TEXT,
    encryption_enabled INTEGER,
    last_incident_date DATE,
    notes TEXT,
    compliance_status TEXT
);
INSERT INTO branch_security_device_inventory VALUES (4001,101,'CCTV','SecureCam','SC-900','SN12345','2022-01-15','2023-06-01','v3.0','192.168.1.10','AA:BB:CC:DD:EE:FF','Lobby','Operational','2024-01-15',180,1,'360','AC','1','2023-05-20','No issues','Compliant');
INSERT INTO branch_security_device_inventory VALUES (4002,102,'AccessControl','EntrySafe','ES-200','SN67890','2021-07-20','2023-01-10','v2.5','192.168.2.20','11:22:33:44:55:66','Main Entrance','Operational','2023-07-20',365,1,'Door','Battery','1','2023-02-14','Battery replaced','Compliant');
INSERT INTO branch_security_device_inventory VALUES (4003,103,'AlarmSystem','AlertPro','AP-500','SN54321','2020-05-05','2022-12-15','v1.8','192.168.3.30','77:88:99:AA:BB:CC','Vault','Decommissioned','2022-05-05',0,0,'N/A','Mains','0','2022-11-30','System retired','NonCompliant');

-- Loan collateral inventory
CREATE TABLE loan_collateral_inventory (
    collateral_id INTEGER PRIMARY KEY,
    loan_id INTEGER NOT NULL,
    collateral_type TEXT NOT NULL,
    description TEXT,
    appraised_value INTEGER,
    valuation_date DATE,
    owner_name TEXT,
    owner_id INTEGER,
    location TEXT,
    lien_status TEXT,
    insurance_provider TEXT,
    policy_number TEXT,
    insurance_expiration DATE,
    depreciation_rate_percent REAL,
    collateral_status TEXT,
    registration_number TEXT,
    serial_number TEXT,
    maintenance_required INTEGER,
    last_maintenance_date DATE,
    notes TEXT,
    risk_category TEXT,
    collateral_age_years INTEGER
);
INSERT INTO loan_collateral_inventory VALUES (5001,2001,'Vehicle','2018 Toyota Camry',15000,'2023-01-10','John Doe',3001,'123 Main St','Clear','AutoSafe','POL12345','2024-01-10',10.5,'Active','REG987654','SN001122',0,'2023-06-01','No issues','Medium',5);
INSERT INTO loan_collateral_inventory VALUES (5002,2002,'RealEstate','Commercial office 200sqm',250000,'2022-12-01','Acme Corp',3002,'456 Business Rd','Encumbered','PropGuard','POL54321','2023-12-01',2.0,'Active','REG123456','',1,'2023-03-15','Lease pending','Low',12);
INSERT INTO loan_collateral_inventory VALUES (5003,2003,'Equipment','Industrial CNC Machine',75000,'2023-02-20','Manufacturing LLC',3003,'789 Industrial Ave','Clear','EquipSecure','POL67890','2025-02-20',5.0,'Active','REG555666','SN889900',1,'2023-07-20','Scheduled for upgrade','High',8);

-- Credit score history
CREATE TABLE credit_score_history (
    record_id INTEGER PRIMARY KEY,
    client_id INTEGER NOT NULL,
    score_date DATE NOT NULL,
    credit_score INTEGER NOT NULL,
    score_range TEXT,
    reporting_agency TEXT,
    inquiries_last_12_months INTEGER,
    accounts_opened_last_12_months INTEGER,
    derogatory_marks INTEGER,
    total_accounts INTEGER,
    revolving_balance INTEGER,
    installment_balance INTEGER,
    utilization_percent REAL,
    payment_history TEXT,
    notes TEXT,
    last_updated DATE,
    risk_category TEXT,
    model_version TEXT,
    data_source TEXT,
    confidence_score REAL,
    flagged BOOLEAN,
    audit_trail_id INTEGER
);
INSERT INTO credit_score_history VALUES (6001,4001,'2023-07-01',720,'Excellent','Equifax',2,1,0,12,5000,20000,25.0,'OnTime','Good standing','2023-07-01','Low','v2','internal','0.95',0,901);
INSERT INTO credit_score_history VALUES (6002,4002,'2023-07-01',660,'Good','Experian',5,0,1,15,8000,15000,40.0,'Late1Month','One late payment','2023-07-01','Medium','v2','internal','0.85',0,902);
INSERT INTO credit_score_history VALUES (6003,4003,'2023-07-01',580,'Fair','TransUnion',8,2,3,20,12000,10000,70.0,'Late30Days','Multiple delinquencies','2023-07-01','High','v2','internal','0.60',1,903);

-- Customer loyalty activity
CREATE TABLE customer_loyalty_activity (
    activity_id INTEGER PRIMARY KEY,
    client_id INTEGER NOT NULL,
    activity_date DATE NOT NULL,
    activity_type TEXT NOT NULL,
    points_earned INTEGER,
    points_redeemed INTEGER,
    transaction_id INTEGER,
    channel TEXT,
    location TEXT,
    product_category TEXT,
    amount_spent REAL,
    discount_applied_percent REAL,
    employee_id INTEGER,
    campaign_code TEXT,
    tier_before TEXT,
    tier_after TEXT,
    notes TEXT,
    is_successful INTEGER,
    feedback_score INTEGER,
    referral_source TEXT,
    device_used TEXT,
    session_id TEXT
);
INSERT INTO customer_loyalty_activity VALUES (7001,4001,'2023-08-05','Purchase',120,0,9001,'Online','USA','Electronics',250.00,5.0,101,'SUMMER21','Silver','Gold','First purchase of the month',1,9,'SearchEngine','Mobile','SID12345');
INSERT INTO customer_loyalty_activity VALUES (7002,4002,'2023-08-06','Redemption',0,200,9002,'InStore','Canada','Apparel',0.00,0.0,102,'WINTER22','Gold','Gold','Redeemed voucher for 200 points',1,8,'Friend','Tablet','SID12346');
INSERT INTO customer_loyalty_activity VALUES (7003,4003,'2023-08-07','Referral',50,0,9003,'MobileApp','UK','Travel',0.00,0.0,103,'REF2023','Bronze','Silver','Referred a friend, earned points',1,10,'SocialMedia','Mobile','SID12347');

-- ATM security incident log extended
CREATE TABLE atm_security_incident_log_extended (
    incident_id INTEGER PRIMARY KEY,
    atm_id INTEGER NOT NULL,
    incident_timestamp DATETIME NOT NULL,
    incident_type TEXT NOT NULL,
    severity_level INTEGER,
    reported_by TEXT,
    description TEXT,
    camera_snapshot_path TEXT,
    card_data_compromised INTEGER,
    cash_missing_amount INTEGER,
    resolved INTEGER,
    resolution_timestamp DATETIME,
    investigator_name TEXT,
    root_cause TEXT,
    mitigation_actions TEXT,
    downtime_minutes INTEGER,
    escalation_level TEXT,
    regulatory_notification_sent INTEGER,
    follow_up_required INTEGER,
    notes TEXT,
    audit_reference TEXT,
    status TEXT
);
INSERT INTO atm_security_incident_log_extended VALUES (8001,301,'2023-07-15 14:23:00','Skimming','3','Maintenance','Device tampered with, suspicious wiring','/snapshots/atm301_20230715.jpg',1,0,0,NULL,'DetectiveLee','Tamper','Device replacement, firmware update',120,'High',1,1,'Awaiting forensic analysis','AUD8001','Open');
INSERT INTO atm_security_incident_log_extended VALUES (8002,302,'2023-06-20 09:45:00','CashShortage','2','Customer','Cash dispenser failed to dispense full amount','/snapshots/atm302_20230620.jpg',0,200,1,'2023-06-20 12:00:00','AgentKim','Mechanical','Serviced dispenser, recalibrated',30,'Medium',0,0,'Resolved after service call','AUD8002','Closed');
INSERT INTO atm_security_incident_log_extended VALUES (8003,303,'2023-08-01 22:10:00','UnauthorizedAccess','4','Security','Forced entry to ATM vault','/snapshots/atm303_20230801.jpg',0,5000,0,NULL,'OfficerPat','Break-in','Reinforced door, added alarm sensors',240,'Critical',1,1,'Police report filed','AUD8003','Open');