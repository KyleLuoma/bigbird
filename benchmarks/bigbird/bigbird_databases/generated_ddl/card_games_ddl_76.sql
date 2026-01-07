-- Artifact Forge Jobs
CREATE TABLE artifact_forge_jobs (
    job_id INTEGER PRIMARY KEY AUTOINCREMENT,
    forge_id TEXT,
    artifact_type TEXT,
    material TEXT,
    weight REAL,
    purity REAL,
    start_time TEXT,
    end_time TEXT,
    operator_id TEXT,
    status TEXT,
    temperature REAL,
    pressure REAL,
    energy_consumed REAL,
    notes TEXT,
    batch_number TEXT,
    quality_score REAL,
    defect_count INTEGER,
    created_at TEXT,
    updated_at TEXT,
    location_code TEXT,
    shift TEXT,
    supervisor_id TEXT
);

INSERT INTO artifact_forge_jobs VALUES (1,'F001','Sword','Mithril',12.5,99.8,'2023-05-01 08:00','2023-05-01 12:30','OP123','Completed',2150,5.2,340.5,'Initial run','B001',95.2,0,'2023-05-01','2023-05-01','L01','Day','SUP01');
INSERT INTO artifact_forge_jobs VALUES (2,'F002','Amulet','Obsidian',3.2,97.4,'2023-05-02 09:15','2023-05-02 11:45','OP124','Completed',1800,4.8,210.0,'No issues','B002',88.5,1,'2023-05-02','2023-05-02','L02','Night','SUP02');
INSERT INTO artifact_forge_jobs VALUES (3,'F003','Staff','Oak',8.0,92.1,'2023-05-03 07:30','2023-05-03 10:00','OP125','Failed',1500,3.9,180.0,'Crack in material','B003',70.0,2,'2023-05-03','2023-05-03','L03','Evening','SUP03');

-- Magical Affinity Profiles
CREATE TABLE magical_affinity_profiles (
    profile_id INTEGER PRIMARY KEY AUTOINCREMENT,
    mage_id TEXT,
    affinity_element TEXT,
    affinity_level INTEGER,
    resonance_score REAL,
    calibrated_at TEXT,
    notes TEXT,
    created_by TEXT,
    created_at TEXT,
    updated_at TEXT,
    is_active INTEGER,
    source TEXT,
    language TEXT,
    region TEXT,
    experimental_flag INTEGER,
    last_test_date TEXT,
    confidence REAL,
    related_artifact_id TEXT,
    portal_id TEXT,
    mana_flow_rate REAL,
    cooldown_period INTEGER,
    reward_tier TEXT
);

INSERT INTO magical_affinity_profiles VALUES (1,'M001','Fire',5,87.5,'2023-04-10','High pulse','ADMIN','2023-04-10','2023-04-12',1,'Ancient','Latin','Europe',0,'2023-04-15',0.95,'AFT123','P001',12.5,48,'Gold');
INSERT INTO magical_affinity_profiles VALUES (2,'M002','Water',3,65.0,'2023-04-11','Stable','ADMIN','2023-04-11','2023-04-13',1,'Modern','English','Asia',0,'2023-04-16',0.85,'AFT124','P002',9.8,36,'Silver');
INSERT INTO magical_affinity_profiles VALUES (3,'M003','Earth',4,78.2,'2023-04-12','Variable','ADMIN','2023-04-12','2023-04-14',1,'Experimental','German','NorthAmerica',1,'2023-04-17',0.80,'AFT125','P003',11.0,24,'Bronze');

-- Supply Chain Events
CREATE TABLE supply_chain_events (
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    shipment_id TEXT,
    event_type TEXT,
    timestamp TEXT,
    location TEXT,
    carrier TEXT,
    status TEXT,
    temperature REAL,
    humidity REAL,
    delay_reason TEXT,
    estimated_arrival TEXT,
    actual_arrival TEXT,
    notes TEXT,
    recorded_by TEXT,
    is_critical INTEGER,
    weight_kg REAL,
    volume_m3 REAL,
    container_id TEXT,
    customs_clearance TEXT,
    insurance_claim_id TEXT,
    priority_level INTEGER,
    handling_instructions TEXT,
    compliance_flag INTEGER
);

INSERT INTO supply_chain_events VALUES (1,'SHP001','Pickup','2023-05-01 06:00','WarehouseA','CarrierX','InTransit',5.0,60,'','2023-05-05','2023-05-05','On time','OP101',0,1200.5,3.2,'CONT001','Cleared','IC001',1,'Handle with care',1);
INSERT INTO supply_chain_events VALUES (2,'SHP002','Customs','2023-05-02 14:30','PortB','CarrierY','Delayed',22.0,75,'Documentation missing','2023-05-08','2023-05-09','Delayed one day','OP102',1,800.0,2.5,'CONT002','Pending','IC002',2,'Inspect upon arrival',0);
INSERT INTO supply_chain_events VALUES (3,'SHP003','Delivery','2023-05-03 09:15','HubC','CarrierZ','Delivered',18.0,55,'','2023-05-07','2023-05-07','Delivered without issues','OP103',0,500.0,1.1,'CONT003','Cleared','IC003',3,'Leave at reception',1);

-- Environmental Audit Logs
CREATE TABLE environmental_audit_logs (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    site_id TEXT,
    audit_date TEXT,
    auditor_name TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    air_quality_index INTEGER,
    noise_db REAL,
    radiation_msv REAL,
    water_quality_ph REAL,
    waste_tonnage REAL,
    energy_consumed_kwh REAL,
    notes TEXT,
    passed INTEGER,
    corrective_actions TEXT,
    follow_up_date TEXT,
    created_at TEXT,
    updated_at TEXT,
    audit_type TEXT,
    compliance_score REAL,
    regulatory_body TEXT
);

INSERT INTO environmental_audit_logs VALUES (1,'SITE001','2023-04-20','AuditorA',22.5,45,42,55.0,0.03,7.2,1.5,3500,'All good',1,'None','2023-05-20','2023-04-20','2023-04-20','Standard',98.5,'EnvAgency');
INSERT INTO environmental_audit_logs VALUES (2,'SITE002','2023-04-22','AuditorB',24.0,50,55,60.0,0.05,6.8,2.0,4200,'Minor leak',0,'Seal valve','2023-06-01','2023-04-22','2023-04-22','Extended',85.0,'EnvAgency');
INSERT INTO environmental_audit_logs VALUES (3,'SITE003','2023-04-25','AuditorC',21.0,40,38,48.0,0.02,7.5,1.2,3000,'Excellent',1,'None','2023-05-15','2023-04-25','2023-04-25','Standard',99.2,'EnvAgency');

-- Arcane Research Projects
CREATE TABLE arcane_research_projects (
    project_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    lead_scientist TEXT,
    start_date TEXT,
    end_date TEXT,
    budget_usd REAL,
    status TEXT,
    objective TEXT,
    methodology TEXT,
    results_summary TEXT,
    publications TEXT,
    patent_filed INTEGER,
    ethical_approval INTEGER,
    risk_level TEXT,
    data_location TEXT,
    repository_url TEXT,
    collaborators TEXT,
    milestones_completed INTEGER,
    next_phase_date TEXT,
    funding_source TEXT,
    department TEXT,
    notes TEXT
);

INSERT INTO arcane_research_projects VALUES (1,'Starlight Confluence','DrA','2022-01-15','2024-12-31',2500000,'Active','Map leyline intersections','Field surveys','Preliminary maps','JournalA;JournalB',1,1,'Medium','Lab1','http://repo1','DrB,DrC',3,'2024-06-01','ArcaneFund','Alchemy','On schedule');
INSERT INTO arcane_research_projects VALUES (2,'Ethereal Binding','DrX','2021-06-01','2023-05-30',1500000,'Completed','Create binding protocol','Lab experiments','Successful binding','JournalC',1,1,'High','Lab2','http://repo2','DrY,DrZ',5,'2023-04-01','MysticGrants','Enchantments','Final report submitted');
INSERT INTO arcane_research_projects VALUES (3,'Temporal Rift Study','DrM','2023-03-10','2025-03-10',3000000,'Planning','Analyze temporal fluctuations','Simulations','Pending','JournalD',0,0,'Low','Lab3','http://repo3','DrN,DrO',0,'2023-09-01','FutureTech','Chronomancy','Awaiting approvals');

-- Digital Asset License Terms
CREATE TABLE digital_asset_license_terms (
    license_id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_id TEXT,
    license_type TEXT,
    granted_to TEXT,
    start_date TEXT,
    end_date TEXT,
    usage_limits TEXT,
    royalty_percent REAL,
    royalty_amount REAL,
    exclusive_flag INTEGER,
    territory TEXT,
    amendment_version TEXT,
    signed_by TEXT,
    signature_date TEXT,
    terms_url TEXT,
    compliance_status TEXT,
    renewal_option TEXT,
    notice_period_days INTEGER,
    payment_schedule TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT
);

INSERT INTO digital_asset_license_terms VALUES (1,'AS001','Royalty','CompanyA','2023-01-01','2025-12-31','Unlimited',5.0,10000,0,'Global','v1','LeaderA','2022-12-15','http://terms1','Compliant','Auto','30','Quarterly','2023-01-01','2023-01-02','Initial license');
INSERT INTO digital_asset_license_terms VALUES (2,'AS002','Exclusive','CompanyB','2022-06-01','2024-05-31','Max5000',7.5,15000,1,'EU','v2','LeaderB','2022-05-20','http://terms2','Pending','Manual','45','Annual','2022-06-01','2022-06-02','Negotiated terms');
INSERT INTO digital_asset_license_terms VALUES (3,'AS003','Limited','CompanyC','2023-03-15','2023-09-15','Max1000',3.0,5000,0,'APAC','v1','LeaderC','2023-03-01','http://terms3','Compliant','None','0','Monthly','2023-03-15','2023-03-16','Short term');

-- Venue Environmental Readings
CREATE TABLE venue_environmental_readings (
    reading_id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id TEXT,
    sensor_id TEXT,
    timestamp TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm REAL,
    pm2_5_ug_m3 REAL,
    noise_db REAL,
    light_lux REAL,
    vibration_mms REAL,
    energy_usage_kwh REAL,
    water_flow_lpm REAL,
    occupancy_count INTEGER,
    air_flow_cmh REAL,
    heat_index_c REAL,
    dew_point_c REAL,
    battery_level_percent INTEGER,
    status TEXT,
    notes TEXT,
    recorded_by TEXT
);

INSERT INTO venue_environmental_readings VALUES (1,'VEN001','SEN001','2023-05-01 10:00',22.5,45,400,12,55,300,0.02,1500,0.8,120,500,23.0,10.5,95,'OK','All normal','OP201');
INSERT INTO venue_environmental_readings VALUES (2,'VEN002','SEN002','2023-05-01 10:05',24.0,50,420,15,60,350,0.03,1600,1.0,150,520,24.5,11.0,90,'Warning','High humidity','OP202');
INSERT INTO venue_environmental_readings VALUES (3,'VEN003','SEN003','2023-05-01 10:10',20.0,40,380,10,50,280,0.01,1400,0.6,100,480,21.0,9.5,98,'OK','All normal','OP203');

-- Collector Trade Network
CREATE TABLE collector_trade_network (
    network_id INTEGER PRIMARY KEY AUTOINCREMENT,
    collector_id TEXT,
    partner_collector_id TEXT,
    trade_date TEXT,
    asset_type TEXT,
    asset_id TEXT,
    trade_value_usd REAL,
    trade_status TEXT,
    notes TEXT,
    platform TEXT,
    transaction_id TEXT,
    verification_hash TEXT,
    fee_percent REAL,
    fee_amount_usd REAL,
    delivery_method TEXT,
    shipping_tracking TEXT,
    receipt_confirmed INTEGER,
    rating INTEGER,
    comments TEXT,
    created_at TEXT,
    updated_at TEXT,
    dispute_flag INTEGER
);

INSERT INTO collector_trade_network VALUES (1,'COL001','COL010','2023-04-20','Card','CAR123',2500,'Completed','Smooth trade','MarketplaceX','TX001','hashabc',2.5,62.5,'Courier','TRACK001',1,5,'Excellent','2023-04-20','2023-04-21',0);
INSERT INTO collector_trade_network VALUES (2,'COL002','COL011','2023-04-22','Token','TOK456',1500,'Pending','Awaiting shipment','MarketplaceY','TX002','hashdef',3.0,45.0,'Mail','TRACK002',0,4,'Good','2023-04-22','2023-04-23',0);
INSERT INTO collector_trade_network VALUES (3,'COL003','COL012','2023-04-25','Artifact','ART789',5000,'Disputed','Received damaged','MarketplaceZ','TX003','hashghi',5.0,250,Pickup,'',0,2,'Poor condition','2023-04-25','2023-04-26',1);

-- Game Mechanics Experiment Sessions
CREATE TABLE game_mechanics_experiment_sessions (
    session_id INTEGER PRIMARY KEY AUTOINCREMENT,
    experiment_id TEXT,
    version TEXT,
    start_time TEXT,
    end_time TEXT,
    participants INTEGER,
    avg_score REAL,
    success_rate REAL,
    control_group TEXT,
    variable_group TEXT,
    hypothesis TEXT,
    result_summary TEXT,
    data_file_path TEXT,
    analyst TEXT,
    reviewed_by TEXT,
    review_date TEXT,
    status TEXT,
    notes TEXT,
    server_id TEXT,
    latency_ms REAL,
    cpu_usage_percent REAL,
    memory_usage_mb REAL
);

INSERT INTO game_mechanics_experiment_sessions VALUES (1,'EXP001','v1','2023-03-01 08:00','2023-03-01 12:00',120,78.5,0.92,'GroupA','GroupB','Increase draw speed','Positive impact','/data/exp001_v1.csv','ANL001','REV001','2023-03-02','Closed','No issues','SRV01',45.2,65.0,2048);
INSERT INTO game_mechanics_experiment_sessions VALUES (2,'EXP002','v2','2023-04-10 09:30','2023-04-10 13:15',150,81.0,0.95,'GroupC','GroupD','Reduce mana cost','Significant improvement','/data/exp002_v2.csv','ANL002','REV002','2023-04-11','Closed','Minor latency spikes','SRV02',50.5,70.3,3072);
INSERT INTO game_mechanics_experiment_sessions VALUES (3,'EXP003','v1','2023-05-05 10:00','2023-05-05 14:30',100,74.3,0.88,'GroupE','GroupF','Add new mechanic','Neutral outcome','/data/exp003_v1.csv','ANL003','REV003','2023-05-06','Open','Further testing needed','SRV03',42.7,60.1,1024);

-- Virtual Currency Exchange Offers
CREATE TABLE virtual_currency_exchange_offers (
    offer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    from_currency TEXT,
    to_currency TEXT,
    exchange_rate REAL,
    min_amount REAL,
    max_amount REAL,
    fee_percent REAL,
    provider_id TEXT,
    validity_start TEXT,
    validity_end TEXT,
    offer_status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    promo_code TEXT,
    limit_per_user REAL,
    daily_limit REAL,
    weekly_limit REAL,
    monthly_limit REAL,
    compliance_checked INTEGER,
    audit_log_id TEXT
);

INSERT INTO virtual_currency_exchange_offers VALUES (1,'Gold','Silver',0.85,100,10000,1.5,'PROV01','2023-06-01','2023-06-30','Active','Standard offer','2023-05-20','2023-05-21','PROMO10',500,5000,20000,80000,1,'AUD001');
INSERT INTO virtual_currency_exchange_offers VALUES (2,'Platinum','Gold',1.2,200,20000,2.0,'PROV02','2023-07-01','2023-07-31','Active','Limited time','2023-06-15','2023-06-16','PROMO20',1000,10000,40000,160000,1,'AUD002');
INSERT INTO virtual_currency_exchange_offers VALUES (3,'Copper','Bronze',0.65,50,5000,1.0,'PROV03','2023-05-15','2023-05-31','Expired','Expired offer','2023-04-30','2023-05-01','PROMO5',250,2500,10000,40000,1,'AUD003');