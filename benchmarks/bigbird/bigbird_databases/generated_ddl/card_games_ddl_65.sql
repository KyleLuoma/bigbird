-- Game server performance metrics
CREATE TABLE game_server_metrics (
    metric_id INTEGER PRIMARY KEY,
    server_name TEXT,
    cpu_usage REAL,
    memory_usage REAL,
    disk_io REAL,
    network_in REAL,
    network_out REAL,
    active_sessions INTEGER,
    timestamp DATETIME,
    region TEXT,
    uptime_seconds INTEGER,
    temperature_c REAL,
    fan_speed_rpm INTEGER,
    process_count INTEGER,
    thread_count INTEGER,
    error_rate REAL,
    latency_ms REAL,
    packet_loss REAL,
    cpu_temp_c REAL,
    gpu_usage REAL,
    gpu_temp_c REAL,
    power_consumption_w REAL
);

INSERT INTO game_server_metrics VALUES (1,'serverA',45.2,68.5,120.3,850.4,760.2,124,'2025-12-01 10:15:00','NA',86400,55.3,2500,5400,0.02,120.5,0.1,60.2,30.1,70.4,220.5);
INSERT INTO game_server_metrics VALUES (2,'serverB',55.1,73.2,98.7,920.6,810.3,98,'2025-12-01 10:20:00','EU',43200,58.7,2600,5800,0.015,115.3,0.05,58.9,61.0,25.8,68.9,210.2);
INSERT INTO game_server_metrics VALUES (3,'serverC',39.8,61.9,110.5,770.2,690.4,150,'2025-12-01 10:25:00','APAC',129600,52.4,2400,5000,0.01,130.7,0.08,59.3,58.5,33.2,72.1,230.1);

-- Community event participant feedback
CREATE TABLE community_event_feedback (
    feedback_id INTEGER PRIMARY KEY,
    event_code TEXT,
    participant_id INTEGER,
    rating INTEGER,
    comments TEXT,
    submitted_at DATETIME,
    device_type TEXT,
    app_version TEXT,
    os_version TEXT,
    location TEXT,
    session_length_seconds INTEGER,
    network_quality TEXT,
    speaker_score INTEGER,
    content_score INTEGER,
    engagement_score INTEGER,
    recommend INTEGER,
    language TEXT,
    feedback_source TEXT,
    survey_version TEXT,
    ip_address TEXT
);

INSERT INTO community_event_feedback VALUES (101,'CE2025A',2001,5,'Great event', '2025-11-20 14:30:00','mobile','1.3.0','iOS14','NYC',3600,'good',9,9,8,1,'en','inapp','v1','192.168.1.10');
INSERT INTO community_event_feedback VALUES (102,'CE2025A',2002,4,'Very informative', '2025-11-20 15:10:00','desktop','1.3.0','Windows10','LA',4200,'excellent',8,8,7,1,'en','email','v1','192.168.1.11');
INSERT INTO community_event_feedback VALUES (103,'CE2025B',2003,3,'Could improve pacing', '2025-12-02 09:45:00','tablet','1.2.5','Android11','Chicago',3000,'fair',7,6,6,0,'en','survey','v2','192.168.1.12');

-- Digital artifact usage statistics
CREATE TABLE digital_artifact_usage_stats (
    usage_id INTEGER PRIMARY KEY,
    artifact_uuid TEXT,
    user_id INTEGER,
    access_time DATETIME,
    duration_seconds INTEGER,
    view_count INTEGER,
    download_count INTEGER,
    share_count INTEGER,
    platform TEXT,
    device_model TEXT,
    os TEXT,
    app_version TEXT,
    geolocation TEXT,
    bandwidth_mbps REAL,
    error_code INTEGER,
    session_id TEXT,
    file_size_bytes INTEGER,
    resolution TEXT,
    color_depth INTEGER,
    mime_type TEXT,
    interaction_type TEXT
);

INSERT INTO digital_artifact_usage_stats VALUES (5001,'uuid-aaa-111',3001,'2025-12-01 08:00:00',180,3,1,0,'web','Pixel5','Android12','2.0','US',15.2,0,'sess-01',2048000,'1080p',24,'image/png','view');
INSERT INTO digital_artifact_usage_stats VALUES (5002,'uuid-bbb-222',3002,'2025-12-01 09:15:00',240,5,2,1,'mobile','iPhone12','iOS15','2.1','CA',12.8,0,'sess-02',3072000,'720p',24,'video/mp4','play');
INSERT INTO digital_artifact_usage_stats VALUES (5003,'uuid-ccc-333',3003,'2025-12-01 10:30:00',60,1,0,0,'desktop','MacBookPro','macOS12','2.0','UK',25.5,0,'sess-03',1024000,'480p',24,'image/jpeg','view');

-- Detailed sponsor engagement metrics
CREATE TABLE sponsor_engagement_detail (
    record_id INTEGER PRIMARY KEY,
    sponsor_id INTEGER,
    campaign_id INTEGER,
    metric_name TEXT,
    metric_value REAL,
    measured_at DATETIME,
    channel TEXT,
    audience_segment TEXT,
    geo_region TEXT,
    ad_format TEXT,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    cost_usd REAL,
    revenue_usd REAL,
    cpm REAL,
    cpc REAL,
    ctr REAL,
    roi REAL,
    creative_id INTEGER,
    placement TEXT,
    viewability_percent REAL
);

INSERT INTO sponsor_engagement_detail VALUES (9001,4001,7001,'impressions',0, '2025-11-30 12:00:00','social','young_adults','NA','video',20000,150,30,5000.00,7500.00,0.25,33.33,0.75,1.5,101,'top',85.0);
INSERT INTO sponsor_engagement_detail VALUES (9002,4002,7002,'clicks',0, '2025-11-30 13:00:00','search','professionals','EU','banner',15000,300,45,4000.00,6000.00,0.27,13.33,0.02,1.5,102,'side',90.0);
INSERT INTO sponsor_engagement_detail VALUES (9003,4003,7003,'conversions',0, '2025-12-01 09:00:00','email','seniors','APAC','native',10000,200,80,3500.00,9000.00,0.35,43.75,0.03,2.57,103,'bottom',88.5);

-- Venue environmental sensor readings
CREATE TABLE venue_environmental_readings (
    reading_id INTEGER PRIMARY KEY,
    venue_id INTEGER,
    sensor_id INTEGER,
    timestamp DATETIME,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm REAL,
    noise_db REAL,
    light_lux REAL,
    vibration_g REAL,
    pm2_5 REAL,
    pm10 REAL,
    ozone_ppb REAL,
    pressure_hpa REAL,
    wind_speed_ms REAL,
    wind_direction TEXT,
    rainfall_mm REAL,
    solar_irradiance_wm2 REAL,
    battery_level_percent INTEGER,
    connectivity_status TEXT,
    firmware_version TEXT
);

INSERT INTO venue_environmental_readings VALUES (30001,101,1,'2025-12-01 07:00:00',22.5,45.0,420,55,300,0.02,12,25,0.03,1013,0.0,'N',0.0,500,95,'online','v1.0');
INSERT INTO venue_environmental_readings VALUES (30002,101,2,'2025-12-01 07:05:00',22.7,44.5,415,56,310,0.01,13,26,0.04,1012,0.0,'NE',0.0,520,94,'online','v1.0');
INSERT INTO venue_environmental_readings VALUES (30003,102,1,'2025-12-01 07:10:00',21.9,48.0,430,50,280,0.03,11,24,0.02,1014,0.0,'E',0.0,480,96,'online','v1.1');

-- Player health metrics log
CREATE TABLE player_health_metrics_log (
    log_id INTEGER PRIMARY KEY,
    player_id INTEGER,
    recorded_at DATETIME,
    heart_rate_bpm INTEGER,
    steps_count INTEGER,
    calories_burned REAL,
    sleep_hours REAL,
    stress_level INTEGER,
    hydration_ml INTEGER,
    blood_oxygen_percent REAL,
    temperature_c REAL,
    respiration_rate INTEGER,
    vo2_max REAL,
    recovery_time_minutes REAL,
    injury_report TEXT,
    fatigue_score INTEGER,
    mood TEXT,
    training_load REAL,
    wellness_score INTEGER,
    device_id TEXT,
    firmware_version TEXT
);

INSERT INTO player_health_metrics_log VALUES (8001,5001,'2025-12-01 06:00:00',68,1200,250.5,7.2,2,1800,98.5,36.6,14,45.2,30.0,'none',3,'good',1.2,85,'dev-01','fw-3.2');
INSERT INTO player_health_metrics_log VALUES (8002,5002,'2025-12-01 07:00:00',72,1500,300.0,6.8,3,1900,97.8,36.8,15,46.0,25.0,'ankle_sprain',4,'neutral',1.4,80,'dev-02','fw-3.3');
INSERT INTO player_health_metrics_log VALUES (8003,5003,'2025-12-01 08:00:00',65,900,200.3,8.0,1,1700,99.0,36.5,13,44.5,35.0,'none',2,'energetic',1.1,88,'dev-03','fw-3.2');

-- Streaming advertisement performance metrics
CREATE TABLE streaming_ad_performance_metrics (
    metric_id INTEGER PRIMARY KEY,
    ad_id INTEGER,
    stream_id INTEGER,
    viewer_id INTEGER,
    watched_at DATETIME,
    view_duration_seconds INTEGER,
    completed INTEGER,
    click INTEGER,
    revenue_usd REAL,
    ad_format TEXT,
    ad_position TEXT,
    device_type TEXT,
    os TEXT,
    app_version TEXT,
    network_type TEXT,
    geo_region TEXT,
    content_category TEXT,
    ad_quality_score REAL,
    latency_ms REAL,
    error_code INTEGER,
    brand TEXT
);

INSERT INTO streaming_ad_performance_metrics VALUES (6001,9001,30001,70001,'2025-12-01 09:15:00',15,1,0,0.05,'video','pre-roll','mobile','iOS','5.0','wifi','NA','gaming',8.5,120,0,'BrandX');
INSERT INTO streaming_ad_performance_metrics VALUES (6002,9002,30002,70002,'2025-12-01 09:20:00',30,1,1,0.12,'banner','mid-roll','desktop','Windows','5.1','ethernet','EU','sports',9.0,90,0,'BrandY');
INSERT INTO streaming_ad_performance_metrics VALUES (6003,9003,30003,70003,'2025-12-01 09:25:00',5,0,0,0.00,'audio','post-roll','tablet','Android','5.0','cellular','APAC','news',7.2,150,1,'BrandZ');

-- Tournament logistics resource inventory
CREATE TABLE tournament_logistics_resources (
    resource_id INTEGER PRIMARY KEY,
    tournament_id INTEGER,
    resource_type TEXT,
    supplier_id INTEGER,
    quantity INTEGER,
    unit TEXT,
    delivery_date DATE,
    received_date DATE,
    condition TEXT,
    cost_usd REAL,
    currency TEXT,
    storage_location TEXT,
    responsible_staff_id INTEGER,
    notes TEXT,
    verified INTEGER,
    warranty_months INTEGER,
    serial_number TEXT,
    asset_tag TEXT,
    maintenance_required INTEGER,
    last_maintenance_date DATE,
    next_maintenance_date DATE
);

INSERT INTO tournament_logistics_resources VALUES (4001,8001,'chairs',6001,500,'pcs','2025-11-20','2025-11-21','new',2500.00,'USD','warehouseA',9001,'Standard folding chairs',1,12,'SN-CHAIR-001','AT-CHAIR-001',0,'2025-05-01','2026-05-01');
INSERT INTO tournament_logistics_resources VALUES (4002,8001,'projectors',6002,10,'units','2025-11-22','2025-11-23','new',8000.00,'USD','warehouseB',9002,'HD projectors for main stage',1,24,'SN-PROJ-010','AT-PROJ-010',1,'2025-06-15','2026-06-15');
INSERT INTO tournament_logistics_resources VALUES (4003,8002,'wifi routers',6003,20,'units','2025-12-01','2025-12-02','new',3000.00,'USD','warehouseC',9003,'Outdoor WiFi coverage',1,18,'SN-WIFI-020','AT-WIFI-020',0,'2025-07-10','2026-07-10');

-- Digital asset licensing terms
CREATE TABLE digital_asset_license_terms (
    term_id INTEGER PRIMARY KEY,
    asset_uuid TEXT,
    license_type TEXT,
    start_date DATE,
    end_date DATE,
    allowed_usage TEXT,
    max_downloads INTEGER,
    royalty_percent REAL,
    exclusive INTEGER,
    territory TEXT,
    attribution_required INTEGER,
    version TEXT,
    amendment_date DATE,
    legal_entity TEXT,
    contact_email TEXT,
    compliance_status TEXT,
    audit_frequency TEXT,
    renewal_option TEXT,
    termination_clause TEXT,
    notes TEXT,
    created_at DATETIME
);

INSERT INTO digital_asset_license_terms VALUES (10001,'uuid-lic-001','royalty_free','2024-01-01','2026-12-31','commercial',0,0.0,0,'worldwide',0,'v1','2025-01-15','AssetCorp','legal@assetcorp.com','compliant','annual','auto','none','Initial license','2025-03-01 10:00:00');
INSERT INTO digital_asset_license_terms VALUES (10002,'uuid-lic-002','royalty_based','2025-05-01','2028-04-30','non_commercial',5000,12.5,0,'EU',1,'v2','2025-06-01','MediaLtd','contact@medialtd.com','pending','biennial','manual','notice_30_days','Negotiated terms','2025-05-02 09:30:00');
INSERT INTO digital_asset_license_terms VALUES (10003,'uuid-lic-003','exclusive','2023-07-01','2025-06-30','internal',0,0.0,1,'NA',0,'v1','2024-07-10','GameStudios','licensing@gamestudios.com','compliant','quarterly','auto','termination_for_breach','Exclusive agreement','2023-07-01 08:45:00');

-- Game mechanics test run records
CREATE TABLE game_mechanics_test_runs (
    run_id INTEGER PRIMARY KEY,
    mechanic_id TEXT,
    test_name TEXT,
    description TEXT,
    version TEXT,
    executed_at DATETIME,
    executor_id INTEGER,
    result_status TEXT,
    duration_seconds INTEGER,
    passed_cases INTEGER,
    failed_cases INTEGER,
    total_cases INTEGER,
    bug_count INTEGER,
    severity_average REAL,
    notes TEXT,
    environment TEXT,
    platform TEXT,
    configuration_hash TEXT,
    source_branch TEXT,
    commit_hash TEXT,
    reviewer_id INTEGER,
    approval_status TEXT
);

INSERT INTO game_mechanics_test_runs VALUES (20001,'MECH-001','Mana Curve Test','Validates mana curve distribution','1.0','2025-11-30 14:00:00',9001,'passed',360,120,0,120,0,0.0,'All cases passed','staging','windows','hash123','feature/mana_curve','abc123',9002,'approved');
INSERT INTO game_mechanics_test_runs VALUES (20002,'MECH-002','Card Draw Balance','Checks draw rates across decks','1.1','2025-12-01 09:30:00',9003,'failed',420,110,10,120,2,4.5,'Failed on edge cases','production','linux','hash456','bugfix/draw_balance','def456',9004,'rejected');
INSERT INTO game_mechanics_test_runs VALUES (20003,'MECH-003','Combat Damage','Ensures damage calculations are correct','1.0','2025-12-02 11:15:00',9005,'passed',300,100,0,100,0,0.0,'No issues detected','testing','mac','hash789','release/combat_damage','ghi789',9006,'approved');
