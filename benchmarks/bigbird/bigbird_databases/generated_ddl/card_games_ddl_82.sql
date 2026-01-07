-- Player biometric metrics table
CREATE TABLE player_biometric_metrics (
    id INTEGER PRIMARY KEY,
    player_id INTEGER,
    measurement_date TEXT,
    heart_rate INTEGER,
    blood_pressure_systolic INTEGER,
    blood_pressure_diastolic INTEGER,
    body_temp_c REAL,
    respiratory_rate INTEGER,
    spo2 INTEGER,
    stress_level INTEGER,
    fatigue_score INTEGER,
    hydration_level INTEGER,
    steps_count INTEGER,
    calories_burned INTEGER,
    sleep_hours REAL,
    recovery_index INTEGER,
    glucose_level REAL,
    cortisol_mgdl REAL,
    vo2_max REAL,
    notes TEXT
);

INSERT INTO player_biometric_metrics VALUES (1,101,'2023-08-01',72,120,80,36.6,16,98,3,2,65,12000,2500,7.5,85,5.4,10.2,45,'initial_entry');
INSERT INTO player_biometric_metrics VALUES (2,102,'2023-08-02',68,118,78,36.7,15,99,2,1,70,15000,2800,8.0,88,5.1,9.8,42,'post_workout');
INSERT INTO player_biometric_metrics VALUES (3,103,'2023-08-03',75,122,82,36.5,17,97,4,3,60,9000,2100,7.2,80,5.7,10.5,48,'recovery_day');

-- Platform API usage statistics
CREATE TABLE platform_api_usage (
    id INTEGER PRIMARY KEY,
    endpoint_name TEXT,
    request_count INTEGER,
    error_count INTEGER,
    avg_latency_ms REAL,
    max_latency_ms REAL,
    min_latency_ms REAL,
    data_transferred_mb REAL,
    unique_users INTEGER,
    api_key_id INTEGER,
    last_access_date TEXT,
    first_access_date TEXT,
    region TEXT,
    http_method TEXT,
    auth_type TEXT,
    version TEXT,
    cache_hits INTEGER,
    cache_misses INTEGER,
    throttled_requests INTEGER,
    status_summary TEXT
);

INSERT INTO platform_api_usage VALUES (1,'getPlayerStats',12450,12,45.3,120.0,20.0,532.7,342,7,'2023-08-05','2022-01-15','NA','GET','Bearer','v1',10234,2210,34,'stable');
INSERT INTO platform_api_usage VALUES (2,'submitMatch',8720,7,58.1,210.0,30.0,678.4,210,9,'2023-08-05','2022-03-10','EU','POST','OAuth','v2',5412,3308,12,'high_load');
INSERT INTO platform_api_usage VALUES (3,'listTournaments',15600,5,32.8,95.0,15.0,420.1,410,5,'2023-08-05','2021-12-01','APAC','GET','APIKey','v1',14300,1300,5,'optimal');

-- Hardware sensor readings
CREATE TABLE hardware_sensor_readings (
    id INTEGER PRIMARY KEY,
    sensor_id TEXT,
    server_id TEXT,
    timestamp TEXT,
    temperature_c REAL,
    cpu_usage_percent REAL,
    memory_usage_percent REAL,
    disk_io_mb_s REAL,
    network_in_mb_s REAL,
    network_out_mb_s REAL,
    fan_speed_rpm INTEGER,
    power_watts REAL,
    voltage_volts REAL,
    error_code INTEGER,
    firmware_version TEXT,
    location TEXT,
    rack_number INTEGER,
    slot_number INTEGER,
    humidity_percent REAL,
    status TEXT
);

INSERT INTO hardware_sensor_readings VALUES (1,'SN001','SRV-A1','2023-08-05T12:00:00',45.2,68.5,71.3,125.4,85.6,90.1,3200,450.0,12.0,0,'FW1.2','DC1',12,3,42.5,'OK');
INSERT INTO hardware_sensor_readings VALUES (2,'SN002','SRV-B3','2023-08-05T12:05:00',46.0,72.1,73.0,130.2,88.3,92.5,3400,455.0,12.1,1,'FW1.2','DC2',8,7,44.0,'WARN');
INSERT INTO hardware_sensor_readings VALUES (3,'SN003','SRV-C2','2023-08-05T12:10:00',44.8,65.0,68.5,120.0,80.0,85.0,3000,440.0,11.9,0,'FW1.1','DC1',5,2,40.0,'OK');

-- Community event metrics
CREATE TABLE community_event_metrics (
    id INTEGER PRIMARY KEY,
    event_id INTEGER,
    participant_count INTEGER,
    sessions_count INTEGER,
    total_viewers INTEGER,
    avg_watch_time_min REAL,
    chat_messages INTEGER,
    likes INTEGER,
    shares INTEGER,
    sponsor_count INTEGER,
    feedback_score REAL,
    start_date TEXT,
    end_date TEXT,
    time_zone TEXT,
    platform TEXT,
    promoter TEXT,
    budget_usd REAL,
    net_revenue_usd REAL,
    geographic_region TEXT,
    theme TEXT
);

INSERT INTO community_event_metrics VALUES (1,201,3500,12,78000,34.5,12400,8450,2300,5,4.2,'2023-07-20','2023-07-27','UTC','StreamX','GuildAlpha',150000.0,220000.0,'NorthAmerica','SummerShowcase');
INSERT INTO community_event_metrics VALUES (2,202,4200,15,95000,38.0,15800,10200,3100,7,4.6,'2023-08-01','2023-08-08','UTC+1','LiveHub','GuildBeta',200000.0,310000.0,'Europe','AutumnArena');
INSERT INTO community_event_metrics VALUES (3,203,2800,9,56000,29.3,9100,6200,1800,3,3.9,'2023-06-10','2023-06-16','UTC-5','GameCast','GuildGamma',100000.0,130000.0,'SouthAmerica','SpringSprint');

-- Virtual currency exchange rates
CREATE TABLE virtual_currency_exchange_rates (
    id INTEGER PRIMARY KEY,
    currency_code TEXT,
    exchange_rate_to_usd REAL,
    last_updated TEXT,
    source TEXT,
    volatility_24h REAL,
    market_cap_usd REAL,
    circulating_supply REAL,
    max_supply REAL,
    algorithm TEXT,
    transaction_fee_percent REAL,
    daily_volume_usd REAL,
    website TEXT,
    whitepaper_url TEXT,
    launch_date TEXT,
    consensus_mechanism TEXT,
    is_stablecoin INTEGER,
    decimal_precision INTEGER,
    regulatory_status TEXT,
    notes TEXT
);

INSERT INTO virtual_currency_exchange_rates VALUES (1,'VCT',0.025,'2023-08-05','CryptoAPI',2.5,85000000,3500000,10000000,'PoS',0.15,1200000,'https://vct.net','https://vct.net/whitepaper','2022-05-01','ProofOfStake',0,8,'Compliant','initial_listing');
INSERT INTO virtual_currency_exchange_rates VALUES (2,'XYZ',3.78,'2023-08-05','MarketDataInc',1.8,430000000,125000000,125000000,'DPoS',0.12,3400000,'https://xyz.io','https://xyz.io/whitepaper','2021-09-15','DelegatedProofOfStake',0,6,'Pending','high_volatility');
INSERT INTO virtual_currency_exchange_rates VALUES (3,'STB',1.00,'2023-08-05','StableSource',0.02,5000000,5000000,5000000,'None',0.05,250000,'https://stb.co','https://stb.co/whitepaper','2020-01-01','None',1,2,'Approved','USDT_like');

-- Game mechanics experiment log
CREATE TABLE game_mechanics_experiment_log (
    id INTEGER PRIMARY KEY,
    experiment_name TEXT,
    start_date TEXT,
    end_date TEXT,
    hypothesis TEXT,
    control_group_size INTEGER,
    test_group_size INTEGER,
    metric_name TEXT,
    metric_before REAL,
    metric_after REAL,
    p_value REAL,
    confidence_interval TEXT,
    result_summary TEXT,
    lead_researcher TEXT,
    team_members TEXT,
    status TEXT,
    documentation_url TEXT,
    data_snapshot_path TEXT,
    feedback TEXT,
    approved INTEGER
);

INSERT INTO game_mechanics_experiment_log VALUES (1,'ManaCurveAdjustment','2023-05-01','2023-05-15','Reduce average mana cost','5000','5000','average_cmc','2.8','2.6',0.013,'0.1-0.3','significant_reduction','DrSmith','Alice,Bob,Carol','Completed','https://docs.example.com/exp1','/snapshots/exp1','positive','1');
INSERT INTO game_mechanics_experiment_log VALUES (2,'CardDrawBonus','2023-06-10','2023-06-25','Increase draw rate','4000','4000','draws_per_game','1.2','1.35',0.045,'0.05-0.25','moderate_increase','DrLee','Dave,Eve,Frank','Completed','https://docs.example.com/exp2','/snapshots/exp2','mixed','1');
INSERT INTO game_mechanics_experiment_log VALUES (3,'CreatureSpeedTest','2023-07-05','2023-07-20','Higher speed improves win rate','3000','3000','win_rate','48.0','52.5',0.007,'2-5','significant_improvement','DrKim','Grace,Heidi,Ian','Completed','https://docs.example.com/exp3','/snapshots/exp3','very_positive','1');

-- Sponsor engagement activities
CREATE TABLE sponsor_engagement_activities (
    id INTEGER PRIMARY KEY,
    sponsor_id INTEGER,
    contract_id INTEGER,
    activity_type TEXT,
    start_date TEXT,
    end_date TEXT,
    budget_usd REAL,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    cpm_usd REAL,
    cpc_usd REAL,
    ctr_percent REAL,
    audience_segment TEXT,
    platform TEXT,
    creative_id INTEGER,
    status TEXT,
    notes TEXT,
    compliance_flag INTEGER,
    reporting_frequency TEXT
);

INSERT INTO sponsor_engagement_activities VALUES (1,301,4001,'BannerAd','2023-08-01','2023-08-31',50000.0,1200000,8500,320,41.7,5.9,0.71,'CorePlayers','StreamX',9001,'Active','high_visibility',1,'monthly');
INSERT INTO sponsor_engagement_activities VALUES (2,302,4002,'InGameItem','2023-07-15','2023-09-15',75000.0,800000,15000,560,93.8,5.0,0.19,'CasualGamers','GameHub',9002,'Pending','awaiting_approval',0,'biweekly');
INSERT INTO sponsor_engagement_activities VALUES (3,303,4003,'LiveStreamSponsor','2023-06-01','2023-12-31',120000.0,2000000,25000,1500,60.0,4.8,0.125,'Competitive','LiveArena',9003,'Active','long_term',1,'quarterly');

-- Tournament resource allocation
CREATE TABLE tournament_resource_allocation (
    id INTEGER PRIMARY KEY,
    tournament_id INTEGER,
    venue_id INTEGER,
    resource_type TEXT,
    quantity INTEGER,
    allocated_start TEXT,
    allocated_end TEXT,
    responsible_staff_id INTEGER,
    cost_usd REAL,
    vendor_id INTEGER,
    priority_level TEXT,
    status TEXT,
    notes TEXT,
    last_updated TEXT,
    created_by TEXT,
    approval_date TEXT,
    risk_level TEXT,
    maintenance_required INTEGER,
    backup_resource_id INTEGER,
    sustainability_score INTEGER
);

INSERT INTO tournament_resource_allocation VALUES (1,501,601,'Projector','4','2023-09-01','2023-09-10',701,1200.0,801,'High','Confirmed','4k_projectors','2023-08-20','admin','2023-08-15','Low',0,0,85);
INSERT INTO tournament_resource_allocation VALUES (2,502,602,'GamingRig','20','2023-10-05','2023-10-12',702,56000.0,802,'Medium','Pending','high_end_rigs','2023-09-01','ops','2023-08-30','Medium',1,0,78);
INSERT INTO tournament_resource_allocation VALUES (3,503,603,'CateringService','1','2023-11-15','2023-11-16',703,3400.0,803,'Low','Confirmed','buffet_meals','2023-10-10','logistics','2023-10-01','Low',0,0,90);

-- Digital asset license terms
CREATE TABLE digital_asset_license_terms (
    id INTEGER PRIMARY KEY,
    asset_id TEXT,
    license_type TEXT,
    granted_to TEXT,
    start_date TEXT,
    end_date TEXT,
    usage_limit INTEGER,
    geographic_scope TEXT,
    exclusivity INTEGER,
    royalty_percent REAL,
    fee_usd REAL,
    renewal_option TEXT,
    termination_clause TEXT,
    compliance_requirements TEXT,
    audit_frequency_days INTEGER,
    version TEXT,
    notes TEXT,
    created_by TEXT,
    last_modified_by TEXT,
    last_modified_date TEXT
);

INSERT INTO digital_asset_license_terms VALUES (1,'AST001','Royalty','GameStudioA','2023-01-01','2025-01-01',1000,'Global',1,5.0,20000.0,'Annual','30_day_notice','GDPR,CCPA',180,'v1.0','initial_license','legal','legal','2023-01-01');
INSERT INTO digital_asset_license_terms VALUES (2,'AST002','CreativeCommons','IndieDevB','2022-06-15','2024-06-15',0,'Regional',0,0.0,0.0,'None','None','CC0',365,'v2.1','open_source','admin','admin','2022-06-15');
INSERT INTO digital_asset_license_terms VALUES (3,'AST003','Exclusive','MediaCorp','2023-03-20','2028-03-20',5000,'NorthAmerica',1,7.5,50000.0,'BiAnnual','60_day_notice','HIPAA',90,'v3.3','exclusive_content','legal','legal','2023-03-20');

-- Environmental sensor data
CREATE TABLE environmental_sensor_data (
    id INTEGER PRIMARY KEY,
    sensor_id TEXT,
    location TEXT,
    measurement_type TEXT,
    value REAL,
    unit TEXT,
    recorded_at TEXT,
    battery_level_percent INTEGER,
    signal_strength_dbm REAL,
    firmware_version TEXT,
    calibration_date TEXT,
    status TEXT,
    anomaly_flag INTEGER,
    notes TEXT,
    technician_id INTEGER,
    maintenance_due TEXT,
    latitude REAL,
    longitude REAL,
    altitude_meters REAL,
    data_quality_score INTEGER
);

INSERT INTO environmental_sensor_data VALUES (1,'ENV001','DataCenter1','Temperature',22.5,'C','2023-08-05T08:00:00',95, -70.5,'FW2.0','2023-01-10','OK',0,'stable','1001','2023-12-01',40.7128,-74.0060,15.0,92);
INSERT INTO environmental_sensor_data VALUES (2,'ENV002','DataCenter2','Humidity',45.0,'%','2023-08-05T08:05:00',88, -68.0,'FW2.0','2023-01-12','OK',0,'within_range','1002','2023-11-15',34.0522,-118.2437,30.0,89);
INSERT INTO environmental_sensor_data VALUES (3,'ENV003','DataCenter3','PowerUsage',350.0,'W','2023-08-05T08:10:00',80, -65.2,'FW1.9','2022-12-20','WARN',1,'spike_detected','1003','2023-10-20',51.5074,-0.1278,25.0,75);