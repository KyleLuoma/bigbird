-- Environmental audit reports for venues and facilities
CREATE TABLE environmental_audit_reports (
    report_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    audit_date DATE,
    auditor_name TEXT,
    site_location TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm REAL,
    noise_db REAL,
    waste_tonnage REAL,
    energy_mwh REAL,
    water_liters REAL,
    compliance_score INTEGER,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    audit_scope TEXT,
    findings_summary TEXT,
    corrective_actions TEXT,
    reviewer_comments TEXT,
    report_version TEXT
);
INSERT INTO environmental_audit_reports VALUES (1,'2023-05-10','Alice Smith','Main Campus','22.5','45.2','410','55','12.3','1500','300000','85','Initial audit notes','2023-05-10 09:00:00','2023-05-10 09:15:00','Full','No major issues','Update HVAC filters','Good','v1');
INSERT INTO environmental_audit_reports VALUES (2,'2023-06-15','Bob Jones','North Wing','23.1','48.0','420','58','13.0','1550','305000','88','Follow‑up audit','2023-06-15 10:30:00','2023-06-15 10:45:00','Partial','Minor leaks fixed','Repair roof vent','Satisfactory','v1');
INSERT INTO environmental_audit_reports VALUES (3,'2023-07-20','Carol Lee','South Campus','21.8','44.5','405','53','11.8','1490','298000','90','Annual review','2023-07-20 08:45:00','2023-07-20 09:00:00','Full','All standards met','Continue monitoring','Excellent','v2');

-- Virtual currency exchange rates history
CREATE TABLE virtual_currency_exchange_rates (
    rate_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    base_currency TEXT,
    target_currency TEXT,
    exchange_rate REAL,
    effective_date DATE,
    source_provider TEXT,
    confidence_score INTEGER,
    created_at DATETIME,
    updated_at DATETIME,
    market_snapshot TEXT,
    volatility_index REAL,
    fee_percentage REAL,
    min_trade_amount REAL,
    max_trade_amount REAL,
    note TEXT,
    last_updated_by TEXT,
    is_active INTEGER,
    record_status TEXT,
    exchange_type TEXT,
    approval_date DATE,
    regulation_compliant INTEGER
);
INSERT INTO virtual_currency_exchange_rates VALUES (1,'VCC','USD','0.0123','2023-01-01','ProviderA','95','2023-01-01 00:00:00','2023-01-01 00:00:00','SnapshotA','0.02','0.5','10','1000','Initial rate','system','1','verified','spot','2022-12-15',1);
INSERT INTO virtual_currency_exchange_rates VALUES (2,'VCC','EUR','0.0110','2023-02-01','ProviderB','92','2023-02-01 00:00:00','2023-02-01 00:00:00','SnapshotB','0.025','0.55','15','1200','Adjusted after market shift','admin','1','verified','spot','2023-01-20',1);
INSERT INTO virtual_currency_exchange_rates VALUES (3,'VCC','JPY','1.45','2023-03-01','ProviderC','90','2023-03-01 00:00:00','2023-03-01 00:00:00','SnapshotC','0.03','0.6','20','1500','Seasonal variation','system','1','verified','forward','2023-02-10',1);

-- Community event participation records
CREATE TABLE community_event_participation (
    participation_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    user_id INTEGER,
    signup_timestamp DATETIME,
    attendance_status TEXT,
    role TEXT,
    feedback_score INTEGER,
    badge_awarded TEXT,
    hours_volunteered REAL,
    travel_distance_km REAL,
    accommodation_type TEXT,
    meals_provided INTEGER,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    sponsor_id INTEGER,
    referral_code TEXT,
    survey_completed INTEGER,
    volunteer_hours REAL,
    community_points INTEGER,
    engagement_level TEXT
);
INSERT INTO community_event_participation VALUES (1,101,5001,'2023-04-01 12:00:00','Attended','Speaker','9','GoldBadge','5','120','Hotel','3','Great session','2023-04-02 09:00:00','2023-04-02 09:30:00',201,'REF123',1,'5','150','High');
INSERT INTO community_event_participation VALUES (2,102,5002,'2023-04-10 15:30:00','NoShow','Volunteer','0','None','0','0','None','0','Did not show up','2023-04-11 08:00:00','2023-04-11 08:10:00',202,'REF124',0,'0','0','Low');
INSERT INTO community_event_participation VALUES (3,103,5003,'2023-05-05 09:45:00','Attended','Organizer','10','PlatinumBadge','8','200','HostFamily','4','Excellent coordination','2023-05-06 10:00:00','2023-05-06 10:15:00',203,'REF125',1,'8','200','VeryHigh');

-- Hardware sensor readings archive
CREATE TABLE hardware_sensor_readings (
    reading_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    sensor_id TEXT,
    sensor_type TEXT,
    location TEXT,
    recorded_at DATETIME,
    temperature_c REAL,
    humidity_percent REAL,
    pressure_hpa REAL,
    vibration_level REAL,
    battery_voltage REAL,
    signal_strength INTEGER,
    firmware_version TEXT,
    alert_flag INTEGER,
    created_at DATETIME,
    updated_at DATETIME,
    calibration_date DATE,
    maintenance_status TEXT,
    error_code TEXT,
    data_quality_score INTEGER,
    manufacturer TEXT,
    sensor_batch_id TEXT
);
INSERT INTO hardware_sensor_readings VALUES (1,'SEN001','Temp','RackA','2023-06-01 08:00:00','22.5','45','1013','0.02','3.7','-70','v1.2','0','2023-06-01 08:05:00','2023-06-01 08:10:00','2023-01-15','Good','None','95','AcmeSensors','BATCH01');
INSERT INTO hardware_sensor_readings VALUES (2,'SEN002','Humidity','RackB','2023-06-01 08:05:00','23.0','48','1012','0.01','3.6','-68','v1.3','0','2023-06-01 08:10:00','2023-06-01 08:15:00','2023-02-20','Good','None','96','AcmeSensors','BATCH01');
INSERT INTO hardware_sensor_readings VALUES (3,'SEN003','Pressure','RackC','2023-06-01 08:10:00','21.8','44','1015','0.03','3.8','-72','v1.2','1','2023-06-01 08:15:00','2023-06-01 08:20:00','2023-03-10','MaintenanceRequired','E101','88','AcmeSensors','BATCH02');

-- Artwork commission request tracking
CREATE TABLE artwork_commission_requests (
    request_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    artist_id INTEGER,
    client_name TEXT,
    project_title TEXT,
    medium TEXT,
    dimensions TEXT,
    deadline_date DATE,
    budget_usd REAL,
    status TEXT,
    approval_date DATE,
    revision_count INTEGER,
    final_delivery_url TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    payment_status TEXT,
    contract_url TEXT,
    estimated_hours REAL,
    priority_level TEXT,
    confidentiality_flag INTEGER,
    source_channel TEXT
);
INSERT INTO artwork_commission_requests VALUES (1,301,'GameStudioX','Hero Portrait','Digital','1920x1080','2023-08-15','1200','InProgress','2023-07-01',2,'http://assets.example.com/portrait1.png','Urgent request','2023-07-01 09:00:00','2023-07-05 14:30:00','Pending','http://contracts.example.com/req1.pdf','30','High',0,'WebForm');
INSERT INTO artwork_commission_requests VALUES (2,302,'IndieDevY','Environment Concept','Traditional','24x36in','2023-09-01','800','Pending',NULL,0,'','Waiting for approval','2023-07-10 10:15:00','2023-07-10 10:15:00','Unpaid','http://contracts.example.com/req2.pdf','20','Medium',1,'Referral');
INSERT INTO artwork_commission_requests VALUES (3,303,'PublisherZ','Cover Art','Digital','3000x4000','2023-10-20','2500','Completed','2023-08-20',1,'http://assets.example.com/cover3.png','Final version delivered','2023-08-01 11:00:00','2023-09-01 12:00:00','Paid','http://contracts.example.com/req3.pdf','45','High',0,'Email');

-- Streaming ad inventory management
CREATE TABLE streaming_ad_inventory (
    inventory_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    ad_slot_id TEXT,
    platform TEXT,
    start_time DATETIME,
    end_time DATETIME,
    ad_type TEXT,
    duration_seconds INTEGER,
    cost_usd REAL,
    impressions_target INTEGER,
    clicks_target INTEGER,
    creative_id TEXT,
    status TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    campaign_id INTEGER,
    target_audience TEXT,
    frequency_cap INTEGER,
    geo_target TEXT,
    device_target TEXT,
    viewability_rate REAL
);
INSERT INTO streaming_ad_inventory VALUES (1,'SLOT001','Twitch','2023-07-01 12:00:00','2023-07-01 12:30:00','Video','30','1500','5000','200','CREA001','Scheduled','2023-06-20 08:00:00','2023-06-20 08:30:00',401,'18-34M','3','NA','Desktop',0.75);
INSERT INTO streaming_ad_inventory VALUES (2,'SLOT002','YouTube','2023-07-02 14:00:00','2023-07-02 14:45:00','Display','45','2000','8000','350','CREA002','Active','2023-06-22 09:00:00','2023-06-22 09:15:00',402,'25-44F','5','EU','Mobile',0.82);
INSERT INTO streaming_ad_inventory VALUES (3,'SLOT003','Facebook','2023-07-03 09:00:00','2023-07-03 09:15:00','Video','15','800','3000','120','CREA003','Completed','2023-06-25 10:00:00','2023-06-25 10:20:00',403,'35-54M','2','ASIA','Tablet',0.68);

-- Sponsor engagement survey results
CREATE TABLE sponsor_engagement_surveys (
    survey_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    survey_date DATE,
    overall_score INTEGER,
    communication_score INTEGER,
    roi_score INTEGER,
    event_participation_score INTEGER,
    suggested_improvements TEXT,
    respondent_name TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    net_promoter_score INTEGER,
    satisfaction_score INTEGER,
    brand_alignment_score INTEGER,
    partnership_duration_months INTEGER,
    future_intent_score INTEGER,
    feedback_category TEXT,
    response_time_days INTEGER,
    survey_method TEXT,
    follow_up_required INTEGER,
    additional_comments TEXT
);
INSERT INTO sponsor_engagement_surveys VALUES (1,201,'2023-05-15',8,9,7,8,'Increase social media exposure','John Doe','2023-05-16 08:00:00','2023-05-16 08:10:00',30,85,80,12,75,'Positive',2,'Online',0,'No further comments');
INSERT INTO sponsor_engagement_surveys VALUES (2,202,'2023-06-20',6,7,5,6,'Provide clearer ROI metrics','Jane Smith','2023-06-21 09:30:00','2023-06-21 09:45:00',20,70,65,8,60,'Neutral',3,'Phone',1,'Will follow up next quarter');
INSERT INTO sponsor_engagement_surveys VALUES (3,203,'2023-07-10',9,9,9,9,'Maintain current partnership terms','Mike Lee','2023-07-11 10:15:00','2023-07-11 10:20:00',45,92,88,24,85','Positive',1,'Email',0,'Excellent collaboration');

-- Digital collectible transaction logs
CREATE TABLE digital_collectible_transactions (
    transaction_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    collectible_id TEXT,
    user_id INTEGER,
    transaction_type TEXT,
    amount_usd REAL,
    transaction_date DATETIME,
    source_platform TEXT,
    destination_platform TEXT,
    fee_usd REAL,
    status TEXT,
    blockchain_tx_hash TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    transaction_fee_percent REAL,
    gas_price_gwei REAL,
    token_id TEXT,
    verification_status TEXT,
    exchange_rate_at_time REAL,
    settlement_date DATE
);
INSERT INTO digital_collectible_transactions VALUES (1,'COLL001',5001,'Purchase',250.00,'2023-07-01 13:45:00','MarketplaceA','WalletX',2.50,'Completed','0xabc123def456','First purchase','2023-07-01 14:00:00','2023-07-01 14:05:00',1.0,45.0,'TOKEN123','Verified',0.012,'2023-07-02');
INSERT INTO digital_collectible_transactions VALUES (2,'COLL002',5002,'Sale',300.00,'2023-07-05 10:20:00','WalletY','MarketplaceB',3.00,'Pending','0xdef789abc012','Listed for sale','2023-07-05 10:30:00','2023-07-05 10:35:00',1.0,50.0','TOKEN456','Pending',0.011,'2023-07-06');
INSERT INTO digital_collectible_transactions VALUES (3,'COLL003',5003,'Transfer',0.00,'2023-07-10 08:00:00','WalletZ','WalletW',0.00,'Completed','0x123456789abc','Gift to friend','2023-07-10 08:10:00','2023-07-10 08:15:00',0.0,30.0,'TOKEN789','Verified',0.0,'2023-07-10');

-- Venue environmental sensor readings
CREATE TABLE venue_environmental_readings (
    reading_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    reading_timestamp DATETIME,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm REAL,
    noise_db REAL,
    energy_usage_kwh REAL,
    water_usage_liters REAL,
    waste_kg REAL,
    occupancy_count INTEGER,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    air_quality_index INTEGER,
    light_level_lux REAL,
    vibration_level REAL,
    maintenance_flag INTEGER,
    sensor_batch_id TEXT,
    data_source TEXT
);
INSERT INTO venue_environmental_readings VALUES (1,101,'2023-08-01 09:00:00','22.0','46','415','55','1200','25000','15','300','Morning readings','2023-08-01 09:05:00','2023-08-01 09:10:00',42,350.0,0.02,0,'BATCHV1','IoT');
INSERT INTO venue_environmental_readings VALUES (2,102,'2023-08-01 12:00:00','24.5','48','420','60','1300','26000','18','450','Midday peak','2023-08-01 12:05:00','2023-08-01 12:10:00',45,500.0,0.03,0,'BATCHV1','IoT');
INSERT INTO venue_environmental_readings VALUES (3,103,'2023-08-01 18:00:00','21.0','44','405','50','1100','24000','12','200','Evening drop','2023-08-01 18:05:00','2023-08-01 18:10:00',40,300.0,0.01,0,'BATCHV1','IoT');

-- Marketing campaign channel allocations
CREATE TABLE marketing_campaign_channels (
    channel_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    campaign_id INTEGER,
    channel_name TEXT,
    start_date DATE,
    end_date DATE,
    budget_usd REAL,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    cpa_usd REAL,
    cpm_usd REAL,
    ctr_percent REAL,
    roi_percent REAL,
    created_at DATETIME,
    updated_at DATETIME,
    channel_type TEXT,
    target_audience TEXT,
    creative_id TEXT,
    spend_usd REAL,
    cost_per_lead_usd REAL
);
INSERT INTO marketing_campaign_channels VALUES (1,501,'Facebook Ads','2023-06-01','2023-06-30','5000','250000','4000','250','20','2','1.6','150','2023-05-20 08:00:00','2023-05-20 08:15:00','Social','18-35M','CRTV001','4800','19.2');
INSERT INTO marketing_campaign_channels VALUES (2,502,'Google Search','2023-07-01','2023-07-31','7000','300000','5000','350','20','2.3','1.7','180','2023-06-15 09:00:00','2023-06-15 09:20:00','Search','25-44F','CRTV002','6800','19.4');
INSERT INTO marketing_campaign_channels VALUES (3,503,'Email Newsletter','2023-08-01','2023-08-31','2000','150000','2500','180','11.1','13.3','1.6','120','2023-07-10 10:00:00','2023-07-10 10:10:00','Email','All','CRTV003','1900','10.6');