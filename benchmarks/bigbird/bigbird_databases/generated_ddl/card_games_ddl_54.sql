-- Player training sessions log
CREATE TABLE player_training_sessions (
    session_id INTEGER PRIMARY KEY,
    player_id INTEGER,
    trainer_id INTEGER,
    start_timestamp TEXT,
    end_timestamp TEXT,
    session_type TEXT,
    focus_area TEXT,
    intensity_level INTEGER,
    calories_burned INTEGER,
    notes TEXT,
    location_code TEXT,
    device_used TEXT,
    heart_rate_avg INTEGER,
    heart_rate_max INTEGER,
    feedback_score INTEGER,
    video_url TEXT,
    audio_url TEXT,
    equipment_list TEXT,
    weather_conditions TEXT,
    session_version TEXT
);
INSERT INTO player_training_sessions VALUES (1,101,201,'2024-11-01T10:00','2024-11-01T11:00','strength','upperbody',5,450,'good session','LOC01','FitBand','120','155',8,'http://vid1','http://aud1','dumbbells','clear','v1');
INSERT INTO player_training_sessions VALUES (2,102,202,'2024-11-02T14:30','2024-11-02T15:30','cardio','endurance',3,300,'steady','LOC02','SmartWatch','130','150',7,'http://vid2','http://aud2','treadmill','cloudy','v1');
INSERT INTO player_training_sessions VALUES (3,103,203,'2024-11-03T09:15','2024-11-03T10:15','flexibility','stretching',2,120,'relaxed','LOC03','PhoneApp','110','120',9,'http://vid3','http://aud3','yoga mat','sunny','v2');

-- Game server event logging
CREATE TABLE game_server_events (
    event_id INTEGER PRIMARY KEY,
    server_id TEXT,
    event_type TEXT,
    event_timestamp TEXT,
    severity_level TEXT,
    message TEXT,
    cpu_usage REAL,
    memory_usage REAL,
    disk_io REAL,
    network_in REAL,
    network_out REAL,
    active_players INTEGER,
    avg_latency_ms REAL,
    max_latency_ms REAL,
    maintenance_window TEXT,
    initiated_by TEXT,
    patch_version TEXT,
    region_code TEXT,
    thread_count INTEGER,
    error_code TEXT
);
INSERT INTO game_server_events VALUES (1001,'srv01','restart','2024-10-20T02:00','low','scheduled restart',15.2,68.5,120.0,500.0,470.0,1200,45.6,78.2,'02:00-03:00','ops','v1.2.3','NA',48,'');
INSERT INTO game_server_events VALUES (1002,'srv02','high_cpu','2024-10-21T14:15','high','cpu spike detected',92.4,71.2,150.0,800.0,780.0,2500,120.3,210.5,'','monitor','v1.2.4','EU',64,'E101');
INSERT INTO game_server_events VALUES (1003,'srv03','network_outage','2024-10-22T19:45','critical','lost connectivity',10.0,55.0,80.0,0.0,0.0,0,0.0,0.0,'19:45-20:10','netadmin','v1.2.5','AS',32,'E202');

-- Digital collectible market metrics
CREATE TABLE digital_collectible_market_metrics (
    metric_id INTEGER PRIMARY KEY,
    collectible_id TEXT,
    market_date TEXT,
    avg_price REAL,
    median_price REAL,
    volume_traded INTEGER,
    unique_owners INTEGER,
    price_change_24h REAL,
    price_change_7d REAL,
    price_change_30d REAL,
    volatility_index REAL,
    market_cap REAL,
    floor_price REAL,
    listed_count INTEGER,
    sell_through_rate REAL,
    buyer_geography TEXT,
    seller_geography TEXT,
    platform TEXT,
    currency TEXT,
    data_source TEXT,
    notes TEXT
);
INSERT INTO digital_collectible_market_metrics VALUES (5001,'colA','2024-10-30',12.5,11.8,3400,210,0.05,0.12,-0.03,0.22,425000,9.5,1500,0.68,'NA','EU','MarketX','USD','api','');
INSERT INTO digital_collectible_market_metrics VALUES (5002,'colB','2024-10-30',45.0,44.0,1200,80,0.02,0.05,0.10,0.15,540000,40.0,800,0.75,'EU','AS','MarketY','EUR','scrape','');
INSERT INTO digital_collectible_market_metrics VALUES (5003,'colC','2024-10-30',7.8,7.5,5600,340,0.08,-0.01,0.04,0.30,210000,6.9,2000,0.60,'AS','NA','MarketZ','GBP','feed','');

-- Community event resource inventory
CREATE TABLE community_event_resources (
    resource_id INTEGER PRIMARY KEY,
    event_id INTEGER,
    resource_type TEXT,
    quantity INTEGER,
    supplier_name TEXT,
    delivery_date TEXT,
    expiration_date TEXT,
    condition_status TEXT,
    storage_location TEXT,
    cost_per_unit REAL,
    total_cost REAL,
    assigned_to TEXT,
    usage_purpose TEXT,
    hazard_level TEXT,
    compliance_cert TEXT,
    maintenance_required INTEGER,
    last_inspection TEXT,
    note TEXT,
    external_reference TEXT,
    barcode TEXT
);
INSERT INTO community_event_resources VALUES (3001,4001,'chair','150','FurnCo','2024-09-15','2026-09-15','new','WarehouseA',12.5,1875.0,'LogisticsTeam','seating','low','CERT123',0,'2024-08-01','', 'REF001','BC001');
INSERT INTO community_event_resources VALUES (3002,4002,'projector','5','TechSupply','2024-10-05','2028-10-05','good','StorageB',250.0,1250.0,'AVTeam','display','medium','CERT456',1,'2024-09-20','needs lamp replacement','REF002','BC002');
INSERT INTO community_event_resources VALUES (3003,4003,'waterBottle','200','DrinkCo','2024-07-20','2025-07-20','new','CoolerRoom',1.2,240.0,'Catering','hydration','none','CERT789',0,'2024-06-30','', 'REF003','BC003');

-- Esports match statistics
CREATE TABLE esports_match_statistics (
    match_id INTEGER PRIMARY KEY,
    tournament_id INTEGER,
    team_a_id INTEGER,
    team_b_id INTEGER,
    start_time TEXT,
    end_time TEXT,
    map_name TEXT,
    game_mode TEXT,
    team_a_score INTEGER,
    team_b_score INTEGER,
    mvp_player_id INTEGER,
    total_kills INTEGER,
    total_assists INTEGER,
    total_deaths INTEGER,
    average_ping_ms REAL,
    peak_cpu_usage REAL,
    peak_memory_usage REAL,
    spectators_count INTEGER,
    broadcast_url TEXT,
    highlight_clip_url TEXT,
    match_notes TEXT
);
INSERT INTO esports_match_statistics VALUES (7001,100,10,20,'2024-10-10T15:00','2024-10-10T15:45','ArenaX','deathmatch',16,12,105,28,5,30,45.6,78.2,65.0,12000,'http://stream1','http://clip1','');
INSERT INTO esports_match_statistics VALUES (7002,101,11,21,'2024-10-12T18:30','2024-10-12T19:15','ZoneY','capturetheflag',3,4,112,22,8,25,55.2,82.5,70.3,15000,'http://stream2','http://clip2','');
INSERT INTO esports_match_statistics VALUES (7003,102,12,22,'2024-10-15T20:00','2024-10-15T20:50','FortressZ','kingofthehill',9,11,118,30,6,28,48.9,77.1,68.4,18000,'http://stream3','http://clip3','');

-- Environmental sensor readings
CREATE TABLE environmental_sensor_readings (
    reading_id INTEGER PRIMARY KEY,
    sensor_id TEXT,
    location_id TEXT,
    timestamp TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm REAL,
    noise_db REAL,
    light_lux REAL,
    vibration_g REAL,
    battery_level INTEGER,
    firmware_version TEXT,
    signal_strength INTEGER,
    alert_flag INTEGER,
    maintenance_due TEXT,
    calibration_date TEXT,
    reading_quality TEXT,
    data_provider TEXT,
    notes TEXT,
    anomaly_score REAL
);
INSERT INTO environmental_sensor_readings VALUES (9001,'SEN001','LOC01','2024-10-20T08:00',22.5,45.0,410.0,35.0,300.0,0.02,95,'v1.0',78,0,'2025-01-01','2024-09-01','SysA','',0.01);
INSERT INTO environmental_sensor_readings VALUES (9002,'SEN002','LOC02','2024-10-20T08:05',19.8,55.2,500.0,40.5,150.0,0.01,88,'v1.1',82,1,'2025-02-15','2024-08-15','SysB','high humidity','0.45');
INSERT INTO environmental_sensor_readings VALUES (9003,'SEN003','LOC03','2024-10-20T08:10',25.0,40.0,380.0,30.0,500.0,0.03,92,'v1.0',80,0,'2025-03-10','2024-07-20','SysC','',0.02);

-- Marketplace fee structures
CREATE TABLE marketplace_fee_structures (
    fee_id INTEGER PRIMARY KEY,
    platform_name TEXT,
    transaction_type TEXT,
    fee_percentage REAL,
    flat_fee REAL,
    currency TEXT,
    effective_date TEXT,
    expiration_date TEXT,
    region TEXT,
    minimum_fee REAL,
    maximum_fee REAL,
    tier_name TEXT,
    description TEXT,
    compliance_requirements TEXT,
    audit_status TEXT,
    last_updated TEXT,
    created_by TEXT,
    version_number INTEGER,
    applicable_to TEXT,
    notes TEXT,
    external_link TEXT
);
INSERT INTO marketplace_fee_structures VALUES (1101,'MarketX','sale',2.5,0.30,'USD','2024-01-01','2025-01-01','global',0.10,5.00,'standard','standard fee','yes','2024-09-01','admin',1,'digital','', 'http://docs1');
INSERT INTO marketplace_fee_structures VALUES (1102,'MarketY','auction',5.0,0.50,'EUR','2024-03-01','2025-03-01','EU',0.20,10.00,'premium','higher fee for auctions','pending','2024-09-05','finance',2,'digital','', 'http://docs2');
INSERT INTO marketplace_fee_structures VALUES (1103,'MarketZ','rental',1.5,0.20,'GBP','2024-06-01','2025-06-01','UK',0.05,3.00,'basic','low fee for rentals','approved','2024-09-10','ops',3,'physical','', 'http://docs3');

-- Player social interactions
CREATE TABLE player_social_interactions (
    interaction_id INTEGER PRIMARY KEY,
    player_id INTEGER,
    target_player_id INTEGER,
    interaction_type TEXT,
    timestamp TEXT,
    platform TEXT,
    content_id TEXT,
    sentiment_score REAL,
    media_type TEXT,
    relevance_score REAL,
    location TEXT,
    device TEXT,
    ip_address TEXT,
    session_id TEXT,
    is_flagged INTEGER,
    moderation_action TEXT,
    response_time_ms INTEGER,
    thread_id TEXT,
    reply_to_id INTEGER,
    notes TEXT
);
INSERT INTO player_social_interactions VALUES (4001,101,102,'friend_request','2024-10-01T12:00','app','cnt001',0.8,'text',0.9,'NA','mobile','192.168.1.10','sess001',0,'',120,'thr001',NULL,'');
INSERT INTO player_social_interactions VALUES (4002,103,104,'message','2024-10-02T14:30','web','cnt002',0.6,'image',0.7,'EU','desktop','203.0.113.5','sess002',0,'',250,'thr002',4001,'');
INSERT INTO player_social_interactions VALUES (4003,105,106,'comment','2024-10-03T09:15','app','cnt003',0.4,'video',0.5,'AS','tablet','198.51.100.23','sess003',1,'removed',0,'thr003',4002,'inappropriate content');

-- Virtual currency exchange rates history
CREATE TABLE virtual_currency_exchange_rates_history (
    rate_id INTEGER PRIMARY KEY,
    currency_pair TEXT,
    rate_date TEXT,
    opening_rate REAL,
    closing_rate REAL,
    highest_rate REAL,
    lowest_rate REAL,
    average_rate REAL,
    volume BIGINT,
    spread REAL,
    source TEXT,
    confirmed INTEGER,
    reviewed_by TEXT,
    audit_timestamp TEXT,
    notes TEXT,
    region TEXT,
    market_segment TEXT,
    volatility REAL,
    fee_percentage REAL,
    transaction_cap BIGINT,
    reference_id TEXT
);
INSERT INTO virtual_currency_exchange_rates_history VALUES (6001,'VCT1/VCT2','2024-10-20',1.05,1.07,1.08,1.04,1.06,2500000,0.02,'api',1,'auditor1','2024-10-20T10:00','', 'NA','digital',0.12,0.5,1000000,'REF6001');
INSERT INTO virtual_currency_exchange_rates_history VALUES (6002,'VCT3/VCT4','2024-10-20',0.98,0.99,1.00,0.97,0.985,1800000,0.015,'feed',1,'auditor2','2024-10-20T11:00','', 'EU','gaming',0.10,0.4,800000,'REF6002');
INSERT INTO virtual_currency_exchange_rates_history VALUES (6003,'VCT5/VCT6','2024-10-20',2.15,2.12,2.18,2.10,2.14,3000000,0.025,'scrape',1,'auditor3','2024-10-20T12:00','', 'AS','collectibles',0.14,0.6,1200000,'REF6003');

-- Game mechanics test cases
CREATE TABLE game_mechanics_test_cases (
    test_id INTEGER PRIMARY KEY,
    mechanic_name TEXT,
    test_version TEXT,
    description TEXT,
    setup_instructions TEXT,
    expected_outcome TEXT,
    actual_outcome TEXT,
    pass_fail TEXT,
    tester_id INTEGER,
    test_date TEXT,
    environment TEXT,
    config_snapshot TEXT,
    duration_seconds REAL,
    error_log TEXT,
    regression_flag INTEGER,
    related_bug_id INTEGER,
    priority_level TEXT,
    severity TEXT,
    notes TEXT,
    documentation_link TEXT
);
INSERT INTO game_mechanics_test_cases VALUES (8001,'mana_curve','v1','verify curve scaling','load default deck','curve matches expected','curve matches expected','pass',501,'2024-09-15','testlab','snap001',12.5,'',0,0,'high','critical','','http://doc1');
INSERT INTO game_mechanics_test_cases VALUES (8002,'combat_resolve','v2','check combat order','setup two creatures','attacker kills defender','defender survives','fail',502,'2024-09-16','staging','snap002',8.3,'error at line 45',1,102,'medium','major','needs fix','http://doc2');
INSERT INTO game_mechanics_test_cases VALUES (8003,'spell_counter','v1','validate counters','prepare spell stack','all counters applied','all counters applied','pass',503,'2024-09-17','dev','snap003',5.0,'',0,0,'low','minor','','http://doc3');