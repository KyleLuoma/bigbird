-- Tournament bracket details
CREATE TABLE tournament_bracket_details (
    bracket_id INTEGER NOT NULL PRIMARY KEY,
    tournament_id INTEGER,
    round_number INTEGER,
    match_number INTEGER,
    player1_id INTEGER,
    player2_id INTEGER,
    player1_score INTEGER,
    player2_score INTEGER,
    start_time TEXT,
    end_time TEXT,
    venue_id INTEGER,
    is_walkover INTEGER DEFAULT 0,
    is_disqualified INTEGER DEFAULT 0,
    seed_player1 INTEGER,
    seed_player2 INTEGER,
    best_of INTEGER,
    bracket_type TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    external_ref TEXT
);
INSERT INTO tournament_bracket_details VALUES (1, 101, 1, 1, 1001, 1002, 2, 1, '2023-06-01 10:00', '2023-06-01 10:30', 10, 0, 0, 5, 12, 3, 'single_elimination', '2023-05-01', '2023-05-15', 'quarterfinal match', 'refA');
INSERT INTO tournament_bracket_details VALUES (2, 101, 1, 2, 1003, 1004, 0, 2, '2023-06-01 11:00', '2023-06-01 11:45', 10, 0, 0, 8, 9, 3, 'single_elimination', '2023-05-01', '2023-05-15', 'quarterfinal match', 'refB');
INSERT INTO tournament_bracket_details VALUES (3, 101, 2, 1, 1001, 1004, 2, 0, '2023-06-01 13:00', '2023-06-01 13:35', 10, 0, 0, 5, 9, 3, 'single_elimination', '2023-05-01', '2023-05-15', 'semifinal match', 'refC');

-- Streaming platform statistics
CREATE TABLE streaming_platform_stats (
    platform_id INTEGER NOT NULL PRIMARY KEY,
    platform_name TEXT,
    average_viewers INTEGER,
    peak_viewers INTEGER,
    total_streams INTEGER,
    total_hours_streamed REAL,
    concurrent_streams INTEGER,
    ad_impressions INTEGER,
    ad_clicks INTEGER,
    ad_revenue REAL,
    subscriber_count INTEGER,
    new_subscribers INTEGER,
    churn_rate REAL,
    average_bitrate INTEGER,
    latency_ms INTEGER,
    buffer_events INTEGER,
    server_region TEXT,
    uptime_percentage REAL,
    maintenance_window TEXT,
    last_update TEXT,
    api_version TEXT,
    data_source TEXT,
    notes TEXT,
    external_id TEXT
);
INSERT INTO streaming_platform_stats VALUES (1, 'StreamHub', 1200, 4500, 300, 1800.5, 15, 25000, 1800, 5400.75, 50000, 1200, 0.05, 4500, 120, 30, 'us-east', 99.8, '2023-07-01 02:00', '2023-08-01', 'v2.3', 'internal', 'primary platform', 'SP001');
INSERT INTO streaming_platform_stats VALUES (2, 'LiveCast', 800, 3200, 210, 1300.2, 10, 18000, 1450, 4200.30, 34000, 900, 0.07, 4200, 150, 45, 'eu-west', 99.5, '2023-07-01 03:00', '2023-08-01', 'v2.1', 'internal', 'secondary platform', 'SP002');
INSERT INTO streaming_platform_stats VALUES (3, 'GameStream', 1500, 5600, 420, 2500.9, 20, 30000, 2500, 7200.00, 75000, 2000, 0.04, 4800, 110, 20, 'ap-south', 99.9, '2023-07-01 01:00', '2023-08-01', 'v3.0', 'partner', 'gaming focused', 'SP003');

-- Venue environmental readings
CREATE TABLE venue_environmental_readings (
    reading_id INTEGER NOT NULL PRIMARY KEY,
    venue_id INTEGER,
    reading_timestamp TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    noise_db REAL,
    light_lux INTEGER,
    vibration_hz REAL,
    air_quality_index INTEGER,
    particulate_pm25 REAL,
    particulate_pm10 REAL,
    pressure_hpa REAL,
    wind_speed_kmh REAL,
    wind_direction_deg INTEGER,
    precipitation_mm REAL,
    sensor_status TEXT,
    battery_level_percent REAL,
    firmware_version TEXT,
    calibration_date TEXT,
    notes TEXT,
    external_sensor_id TEXT,
    latitude REAL,
    longitude REAL,
    altitude_m REAL
);
INSERT INTO venue_environmental_readings VALUES (1, 10, '2023-08-10 09:00', 22.5, 45.0, 420, 55.2, 300, 0.5, 42, 12.3, 25.6, 1012.3, 5.2, 180, 0.0, 'OK', 92.5, '1.4.2', '2023-01-15', 'morning reading', 'SEN001', 40.7128, -74.0060, 5.0);
INSERT INTO venue_environmental_readings VALUES (2, 10, '2023-08-10 12:00', 24.1, 50.0, 430, 58.0, 350, 0.6, 45, 13.0, 27.1, 1011.8, 6.0, 190, 0.0, 'OK', 88.0, '1.4.2', '2023-01-15', 'noon reading', 'SEN002', 40.7128, -74.0060, 5.0);
INSERT INTO venue_environmental_readings VALUES (3, 10, '2023-08-10 18:00', 20.0, 55.0, 410, 60.5, 200, 0.4, 40, 11.5, 23.8, 1013.0, 4.5, 170, 0.0, 'OK', 95.0, '1.4.2', '2023-01-15', 'evening reading', 'SEN003', 40.7128, -74.0060, 5.0);

-- Sponsor contracts
CREATE TABLE sponsor_contracts (
    contract_id INTEGER NOT NULL PRIMARY KEY,
    sponsor_id INTEGER,
    event_id INTEGER,
    contract_start DATE,
    contract_end DATE,
    total_value_usd REAL,
    payment_terms TEXT,
    deliverables TEXT,
    activation_start DATE,
    activation_end DATE,
    branding_level TEXT,
    exclusivity_flag INTEGER DEFAULT 0,
    renewal_option INTEGER,
    termination_clause TEXT,
    contact_name TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    approved_by INTEGER,
    approval_date DATE,
    notes TEXT,
    status TEXT,
    last_modified DATE,
    external_ref TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO sponsor_contracts VALUES (1, 2001, 301, '2023-01-01', '2023-12-31', 150000.00, 'net30', 'logo banner booth', '2023-06-01', '2023-06-05', 'platinum', 1, 1, '30day', 'Alice Smith', 'alice@example.com', '5551234567', 9001, '2023-01-02', 'initial contract', 'active', '2023-05-20', 'SC001', '2023-01-01', '2023-05-20');
INSERT INTO sponsor_contracts VALUES (2, 2002, 302, '2023-02-15', '2024-02-14', 90000.00, 'net45', 'social media mentions', '2023-07-10', '2023-07-12', 'gold', 0, 0, '60day', 'Bob Jones', 'bob@example.com', '5559876543', 9002, '2023-02-16', 'renewal pending', 'pending', '2023-06-30', 'SC002', '2023-02-15', '2023-06-30');
INSERT INTO sponsor_contracts VALUES (3, 2003, 303, '2023-03-01', '2023-08-31', 50000.00, 'net15', 'product sampling', '2023-08-01', '2023-08-03', 'silver', 0, 0, '15day', 'Carol Lee', 'carol@example.com', '5552223333', 9003, '2023-03-02', 'short term event', 'active', '2023-07-15', 'SC003', '2023-03-01', '2023-07-15');

-- Digital asset audit
CREATE TABLE digital_asset_audit (
    audit_id INTEGER NOT NULL PRIMARY KEY,
    asset_id INTEGER,
    audit_timestamp TEXT,
    auditor_id INTEGER,
    status TEXT,
    checksum TEXT,
    file_size_bytes INTEGER,
    file_format TEXT,
    storage_location TEXT,
    access_level TEXT,
    version_number INTEGER,
    change_summary TEXT,
    compliance_flag INTEGER,
    retention_policy TEXT,
    expiration_date DATE,
    notes TEXT,
    external_reference TEXT,
    source_system TEXT,
    audit_type TEXT,
    risk_score REAL,
    mitigation_action TEXT,
    resolved_flag INTEGER DEFAULT 0,
    resolution_date DATE,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO digital_asset_audit VALUES (1, 5001, '2023-08-01 10:15', 8001, 'verified', 'abc123def', 2048000, 'png', '/assets/images', 'public', 3, 'metadata added', 1, 'standard', '2025-12-31', 'initial audit', 'DA001', 'cms', 'integrity', 0.2, 'none', 1, '2023-08-02', '2023-08-01', '2023-08-02');
INSERT INTO digital_asset_audit VALUES (2, 5002, '2023-08-02 14:30', 8002, 'warning', 'fed456cba', 1024000, 'mp4', '/assets/videos', 'restricted', 2, 'codec outdated', 0, 'extended', '2024-06-30', 'requires update', 'DA002', 'media', 'compliance', 0.5, 'schedule update', 0, NULL, '2023-08-02', '2023-08-02');
INSERT INTO digital_asset_audit VALUES (3, 5003, '2023-08-03 09:45', 8003, 'failed', '789ghi012', 512000, 'pdf', '/assets/docs', 'confidential', 1, 'checksum mismatch', 0, 'strict', '2023-09-15', 'investigate discrepancy', 'DA003', 'docmgmt', 'integrity', 0.9, 'reprocess file', 0, NULL, '2023-08-03', '2023-08-03');

-- Market analysis reports
CREATE TABLE market_analysis_reports (
    report_id INTEGER NOT NULL PRIMARY KEY,
    report_name TEXT,
    generated_date DATE,
    period_start DATE,
    period_end DATE,
    analyst_id INTEGER,
    total_volume_usd REAL,
    avg_price_usd REAL,
    median_price_usd REAL,
    price_stddev REAL,
    top_gainer_card TEXT,
    top_loser_card TEXT,
    sector_performance TEXT,
    regional_breakdown TEXT,
    currency_impact TEXT,
    inflation_rate REAL,
    notes TEXT,
    confidence_score REAL,
    data_source TEXT,
    report_status TEXT,
    approval_id INTEGER,
    approval_date DATE,
    external_ref TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO market_analysis_reports VALUES (1, 'Q2 2023 Overview', '2023-07-01', '2023-04-01', '2023-06-30', 9001, 12500000.00, 2.45, 2.30, 0.35, 'CardA', 'CardZ', 'collectibles', 'NA_EU_ASIA', 'USD_EUR', 3.2, 'steady growth', 0.85, 'internal_db', 'final', 9101, '2023-07-02', 'MR001', '2023-07-01', '2023-07-02');
INSERT INTO market_analysis_reports VALUES (2, 'H1 2023 Midyear', '2023-07-15', '2023-01-01', '2023-06-30', 9002, 22000000.00, 3.10, 2.95, 0.50, 'CardB', 'CardY', 'gaming', 'EU_ASIA', 'USD_JPY', 2.8, 'increased volatility', 0.78, 'external_api', 'draft', 9102, '2023-07-16', 'MR002', '2023-07-15', '2023-07-16');
INSERT INTO market_analysis_reports VALUES (3, 'Annual 2022 Review', '2023-01-05', '2022-01-01', '2022-12-31', 9003, 50000000.00, 4.20, 3.90, 0.65, 'CardC', 'CardX', 'rare', 'NA', 'USD_GBP', 2.5, 'market contraction', 0.70, 'historical_archive', 'approved', 9103, '2023-01-06', 'MR003', '2023-01-05', '2023-01-06');

-- Game mechanics test runs
CREATE TABLE game_mechanics_test_runs (
    test_run_id INTEGER NOT NULL PRIMARY KEY,
    mechanic_id INTEGER,
    test_name TEXT,
    executed_at TEXT,
    executor_id INTEGER,
    version TEXT,
    environment TEXT,
    max_players INTEGER,
    avg_duration_sec REAL,
    success_rate REAL,
    errors_encountered INTEGER,
    logs_path TEXT,
    result_summary TEXT,
    regression_flag INTEGER,
    compliance_check INTEGER,
    notes TEXT,
    ticket_id INTEGER,
    priority_level TEXT,
    severity TEXT,
    approved_by INTEGER,
    approval_date TEXT,
    external_reference TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO game_mechanics_test_runs VALUES (1, 101, 'ManaCurveValidation', '2023-08-05 10:00', 8001, 'v1.2', 'staging', 8, 45.2, 0.98, 2, '/logs/run1', 'passed with minor warnings', 0, 1, 'initial release check', 3001, 'high', 'critical', 9001, '2023-08-05', 'GMTR001', '2023-08-05', '2023-08-05');
INSERT INTO game_mechanics_test_runs VALUES (2, 102, 'CombatResolutionStress', '2023-08-06 14:30', 8002, 'v1.2', 'staging', 16, 120.5, 0.85, 5, '/logs/run2', 'failed due to timeout', 1, 0, 'need optimisation', 3002, 'medium', 'major', 9002, '2023-08-06', 'GMTR002', '2023-08-06', '2023-08-06');
INSERT INTO game_mechanics_test_runs VALUES (3, 103, 'CardDrawRandomness', '2023-08-07 09:15', 8003, 'v1.2', 'staging', 4, 30.0, 1.00, 0, '/logs/run3', 'all metrics within thresholds', 0, 1, 'ready for production', 3003, 'low', 'minor', 9003, '2023-08-07', 'GMTR003', '2023-08-07', '2023-08-07');

-- Community forum metrics
CREATE TABLE community_forum_metrics (
    metric_id INTEGER NOT NULL PRIMARY KEY,
    forum_id INTEGER,
    metric_date DATE,
    active_users INTEGER,
    new_posts INTEGER,
    new_threads INTEGER,
    total_views INTEGER,
    avg_post_length INTEGER,
    median_post_length INTEGER,
    longest_post_id INTEGER,
    longest_post_length INTEGER,
    most_active_user_id INTEGER,
    most_active_user_posts INTEGER,
    spam_reports INTEGER,
    moderation_actions INTEGER,
    average_response_time_sec REAL,
    peak_concurrent_users INTEGER,
    sentiment_score REAL,
    top_topic TEXT,
    category_breakdown TEXT,
    notes TEXT,
    data_source TEXT,
    created_at DATE,
    updated_at DATE,
    external_ref TEXT
);
INSERT INTO community_forum_metrics VALUES (1, 1, '2023-08-01', 1200, 350, 45, 25000, 180, 150, 5001, 1500, 8001, 85, 12, 8, 45.5, 300, 0.75, 'deck_building', 'strategy_meta', 'daily snapshot', 'internal', '2023-08-01', '2023-08-01', 'CFM001');
INSERT INTO community_forum_metrics VALUES (2, 1, '2023-08-02', 1150, 300, 40, 23000, 175, 145, 5002, 1400, 8002, 78, 10, 7, 48.0, 280, 0.73, 'card_trades', 'trading_market', 'daily snapshot', 'internal', '2023-08-02', '2023-08-02', 'CFM002');
INSERT INTO community_forum_metrics VALUES (3, 1, '2023-08-03', 1300, 400, 50, 27000, 190, 155, 5003, 1600, 8003, 90, 8, 9, 42.0, 320, 0.78, 'tournament_discussion', 'events', 'daily snapshot', 'internal', '2023-08-03', '2023-08-03', 'CFM003');

-- Hardware inventory
CREATE TABLE hardware_inventory (
    asset_id INTEGER NOT NULL PRIMARY KEY,
    asset_tag TEXT,
    asset_type TEXT,
    manufacturer TEXT,
    model TEXT,
    serial_number TEXT,
    purchase_date DATE,
    warranty_end DATE,
    location TEXT,
    assigned_to INTEGER,
    status TEXT,
    cpu TEXT,
    ram_gb INTEGER,
    storage_gb INTEGER,
    gpu TEXT,
    network_mac TEXT,
    ip_address TEXT,
    os_version TEXT,
    last_maintenance DATE,
    maintenance_cycle_days INTEGER,
    depreciation_value REAL,
    notes TEXT,
    external_ref TEXT,
    created_at DATE,
    updated_at DATE,
    custodian_id INTEGER
);
INSERT INTO hardware_inventory VALUES (1, 'HT-1001', 'server', 'Dell', 'PowerEdge R740', 'SN123456', '2022-01-15', '2025-01-14', 'DataCenterA', 9001, 'active', 'Intel Xeon E5-2690', 256, 2000, 'Nvidia Tesla T4', '00:1A:2B:3C:4D:5E', '192.168.1.10', 'Ubuntu 20.04', '2023-07-01', 180, 15000.00, 'primary compute node', 'HW001', '2022-01-15', '2023-07-01', 9001);
INSERT INTO hardware_inventory VALUES (2, 'HT-1002', 'workstation', 'HP', 'Z2 Mini G5', 'SN654321', '2021-06-20', '2024-06-19', 'OfficeB', 9002, 'active', 'Intel i9-10850K', 64, 2000, 'Nvidia RTX 3070', '00:1A:2B:3C:4D:5F', '192.168.1.11', 'Windows 10 Pro', '2023-06-15', 365, 3500.00, 'designer workstation', 'HW002', '2021-06-20', '2023-06-15', 9002);
INSERT INTO hardware_inventory VALUES (3, 'HT-1003', 'router', 'Cisco', 'ISR 4321', 'SN789012', '2020-03-10', '2026-03-09', 'NetworkRoom', NULL, 'maintenance', NULL, NULL, NULL, NULL, '00:1A:2B:3C:4D:60', '10.0.0.1', 'IOS XE 16.12', '2023-05-20', 90, 1200.00, 'core network router', 'HW003', '2020-03-10', '2023-05-20', NULL);

-- API access logs
CREATE TABLE api_access_logs (
    log_id INTEGER NOT NULL PRIMARY KEY,
    api_key TEXT,
    endpoint TEXT,
    request_method TEXT,
    request_timestamp TEXT,
    response_status INTEGER,
    response_time_ms INTEGER,
    client_ip TEXT,
    user_agent TEXT,
    request_payload TEXT,
    response_payload TEXT,
    auth_user_id INTEGER,
    rate_limit_bucket TEXT,
    ttl_seconds INTEGER,
    error_message TEXT,
    correlation_id TEXT,
    geo_location TEXT,
    request_size_bytes INTEGER,
    response_size_bytes INTEGER,
    notes TEXT,
    processed_flag INTEGER DEFAULT 0,
    processed_at TEXT,
    created_at TEXT,
    updated_at TEXT,
    external_ref TEXT
);
INSERT INTO api_access_logs VALUES (1, 'AK-ABC123', '/cards/search', 'GET', '2023-08-10 08:00:01', 200, 45, '203.0.113.10', 'Mozilla/5.0', '', '{"cards":20}', 8001, 'bucketA', 60, '', 'CID001', 'US', 500, 1500, '', 0, NULL, '2023-08-10 08:00:02', '2023-08-10 08:00:02', 'AL001');
INSERT INTO api_access_logs VALUES (2, 'AK-DEF456', '/sets/info', 'POST', '2023-08-10 09:15:30', 400, 120, '198.51.100.22', 'curl/7.68.0', '{"code":"XYZ"}', '{"error":"Bad Request"}', 8002, 'bucketB', 120, 'Invalid set code', 'CID002', 'EU', 800, 900, '', 0, NULL, '2023-08-10 09:15:31', '2023-08-10 09:15:31', 'AL002');
INSERT INTO api_access_logs VALUES (3, 'AK-GHI789', '/players/profile', 'GET', '2023-08-10 10:45:12', 200, 30, '192.0.2.55', 'PostmanRuntime/7.28.0', '', '{"profile":{}}', 8003, 'bucketA', 60, '', 'CID003', 'APAC', 450, 1300, '', 0, NULL, '2023-08-10 10:45:13', '2023-08-10 10:45:13', 'AL003');