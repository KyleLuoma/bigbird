-- Card market analysis details
CREATE TABLE card_market_analysis_detail (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    card_uuid TEXT NOT NULL,
    market_region TEXT,
    avg_price REAL,
    median_price REAL,
    price_stddev REAL,
    volume_traded INTEGER,
    last_trade_date DATE,
    price_change_24h REAL,
    price_change_7d REAL,
    price_change_30d REAL,
    listing_count INTEGER,
    seller_count INTEGER,
    buyer_count INTEGER,
    platform TEXT,
    currency TEXT,
    price_source TEXT,
    volatility_index REAL,
    liquidity_score REAL,
    analysis_timestamp DATETIME
);

INSERT INTO card_market_analysis_detail (card_uuid, market_region, avg_price, median_price, price_stddev, volume_traded, last_trade_date, price_change_24h, price_change_7d, price_change_30d, listing_count, seller_count, buyer_count, platform, currency, price_source, volatility_index, liquidity_score, analysis_timestamp) VALUES
('uuid-1111', 'NA', 12.5, 12.0, 1.2, 340, '2025-12-01', 0.05, -0.02, 0.10, 45, 20, 30, 'scryfall', 'USD', 'api', 0.8, 0.9, '2025-12-02 10:00:00'),
('uuid-2222', 'EU', 8.7, 8.5, 0.9, 210, '2025-12-01', -0.01, 0.03, -0.05, 38, 15, 22, 'magiccards', 'EUR', 'scraper', 0.6, 0.7, '2025-12-02 10:05:00'),
('uuid-3333', 'APAC', 15.0, 14.8, 2.0, 500, '2025-12-01', 0.10, 0.07, 0.12, 60, 25, 35, 'mtgjson', 'JPY', 'feed', 0.9, 0.85, '2025-12-02 10:10:00');

-- Player activity summary
CREATE TABLE player_activity_summary (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER NOT NULL,
    total_sessions INTEGER,
    avg_session_length REAL,
    max_session_length REAL,
    total_playtime REAL,
    games_won INTEGER,
    games_lost INTEGER,
    win_rate REAL,
    highest_rank TEXT,
    current_rank TEXT,
    rank_progression TEXT,
    achievement_points INTEGER,
    last_active_date DATE,
    preferred_format TEXT,
    device_type TEXT,
    region TEXT,
    language TEXT,
    timezone TEXT,
    record_timestamp DATETIME
);

INSERT INTO player_activity_summary (player_id, total_sessions, avg_session_length, max_session_length, total_playtime, games_won, games_lost, win_rate, highest_rank, current_rank, rank_progression, achievement_points, last_active_date, preferred_format, device_type, region, language, timezone, record_timestamp) VALUES
(1001, 120, 45.2, 180.0, 5400.0, 78, 42, 0.65, 'Platinum', 'Gold', 'Gold->Platinum', 3500, '2025-11-30', 'Standard', 'Desktop', 'NA', 'en', 'UTC-5', '2025-12-02 11:00:00'),
(1002, 85, 30.5, 95.0, 2600.0, 45, 40, 0.53, 'Gold', 'Silver', 'Silver->Gold', 2100, '2025-11-28', 'Commander', 'Mobile', 'EU', 'de', 'UTC+1', '2025-12-02 11:05:00'),
(1003, 200, 60.0, 240.0, 12000.0, 150, 50, 0.75, 'Diamond', 'Diamond', 'Diamond', 7200, '2025-12-01', 'Modern', 'Tablet', 'APAC', 'ja', 'UTC+9', '2025-12-02 11:10:00');

-- Tournament logistics overview
CREATE TABLE tournament_logistics_overview (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER NOT NULL,
    venue_id INTEGER,
    start_date DATE,
    end_date DATE,
    expected_attendance INTEGER,
    actual_attendance INTEGER,
    staff_count INTEGER,
    volunteer_count INTEGER,
    equipment_units INTEGER,
    wifi_bandwidth_mbps REAL,
    catering_meals INTEGER,
    security_level TEXT,
    parking_spaces INTEGER,
    transport_shuttles INTEGER,
    sponsor_count INTEGER,
    broadcast_channels INTEGER,
    covid_compliance_score REAL,
    waste_recycled_tons REAL,
    carbon_footprint_kg REAL,
    log_timestamp DATETIME
);

INSERT INTO tournament_logistics_overview (tournament_id, venue_id, start_date, end_date, expected_attendance, actual_attendance, staff_count, volunteer_count, equipment_units, wifi_bandwidth_mbps, catering_meals, security_level, parking_spaces, transport_shuttles, sponsor_count, broadcast_channels, covid_compliance_score, waste_recycled_tons, carbon_footprint_kg, log_timestamp) VALUES
(2001, 10, '2025-12-10', '2025-12-12', 1500, 1475, 80, 200, 120, 500.0, 3000, 'High', 250, 15, 12, 3, 0.95, 12.5, 8200.0, '2025-12-02 12:00:00'),
(2002, 12, '2025-12-20', '2025-12-22', 2000, 2100, 100, 250, 150, 650.0, 4000, 'Medium', 300, 20, 15, 4, 0.98, 15.0, 10200.0, '2025-12-02 12:05:00'),
(2003, 14, '2025-12-05', '2025-12-07', 800, 790, 50, 120, 80, 350.0, 1500, 'Low', 120, 8, 8, 2, 0.92, 8.0, 5400.0, '2025-12-02 12:10:00');

-- Set production resources
CREATE TABLE set_production_resources (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT NOT NULL,
    printing_facility TEXT,
    printer_model TEXT,
    inks_used TEXT,
    paper_type TEXT,
    paper_weight_gsm INTEGER,
    batch_number TEXT,
    sheets_per_batch INTEGER,
    print_run_quantity INTEGER,
    quality_control_passed INTEGER,
    defect_rate_percent REAL,
    staff_assigned INTEGER,
    shift_hours INTEGER,
    maintenance_window TEXT,
    energy_consumption_kwh REAL,
    water_usage_liters REAL,
    carbon_emission_kg REAL,
    production_start_date DATE,
    production_end_date DATE,
    record_timestamp DATETIME
);

INSERT INTO set_production_resources (set_code, printing_facility, printer_model, inks_used, paper_type, paper_weight_gsm, batch_number, sheets_per_batch, print_run_quantity, quality_control_passed, defect_rate_percent, staff_assigned, shift_hours, maintenance_window, energy_consumption_kwh, water_usage_liters, carbon_emission_kg, production_start_date, production_end_date, record_timestamp) VALUES
('SET01', 'AlphaPrint', 'ModelX100', 'CMYK', 'Gloss', 300, 'BCH001', 5000, 250000, 1, 0.3, 45, 8, '02:00-03:00', 12500.5, 3400.2, 8200.7, '2025-09-01', '2025-09-15', '2025-12-02 13:00:00'),
('SET02', 'BetaPress', 'ModelZ200', 'CMYK+V', 'Matte', 280, 'BCH002', 6000, 300000, 1, 0.25, 50, 10, '03:00-04:00', 14000.0, 3800.0, 9100.0, '2025-10-01', '2025-10-18', '2025-12-02 13:05:00'),
('SET03', 'GammaWorks', 'ModelQ300', 'UV', 'Silk', 350, 'BCH003', 4500, 200000, 1, 0.2, 38, 7, '01:00-02:00', 11000.3, 3100.5, 7500.4, '2025-11-01', '2025-11-20', '2025-12-02 13:10:00');

-- Digital collectible engagement
CREATE TABLE digital_collectible_engagement (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    collectible_id TEXT NOT NULL,
    user_id INTEGER,
    engagement_type TEXT,
    engagement_timestamp DATETIME,
    duration_seconds INTEGER,
    device TEXT,
    platform TEXT,
    ip_address TEXT,
    location_city TEXT,
    location_country TEXT,
    app_version TEXT,
    sdk_version TEXT,
    network_type TEXT,
    battery_level_percent INTEGER,
    interaction_depth INTEGER,
    reward_earned TEXT,
    referral_code TEXT,
    session_id TEXT,
    metadata_json TEXT,
    record_date DATE
);

INSERT INTO digital_collectible_engagement (collectible_id, user_id, engagement_type, engagement_timestamp, duration_seconds, device, platform, ip_address, location_city, location_country, app_version, sdk_version, network_type, battery_level_percent, interaction_depth, reward_earned, referral_code, session_id, metadata_json, record_date) VALUES
('COLL001', 1001, 'view', '2025-12-01 09:15:00', 45, 'iPhone12', 'iOS', '192.168.1.10', 'NewYork', 'USA', '1.4.2', '2.1.0', 'WiFi', 85, 1, 'none', 'REF123', 'SID001', '{"action":"view"}', '2025-12-01'),
('COLL002', 1002, 'trade', '2025-12-01 10:20:00', 120, 'GalaxyS21', 'Android', '203.0.113.5', 'Berlin', 'Germany', '1.5.0', '2.2.1', '4G', 70, 3, 'gold_token', 'REF456', 'SID002', '{"action":"trade","price":"5"}', '2025-12-01'),
('COLL003', 1003, 'redeem', '2025-12-01 11:05:00', 30, 'iPadPro', 'iOS', '198.51.100.22', 'Tokyo', 'Japan', '1.3.9', '2.0.5', 'WiFi', 92, 2, 'silver_badge', 'REF789', 'SID003', '{"action":"redeem","item":"badge"}', '2025-12-01');

-- Sponsorship campaign metrics
CREATE TABLE sponsorship_campaign_metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    campaign_name TEXT NOT NULL,
    sponsor_id INTEGER,
    start_date DATE,
    end_date DATE,
    total_budget_usd REAL,
    impressions INTEGER,
    clicks INTEGER,
    click_through_rate REAL,
    conversions INTEGER,
    conversion_rate REAL,
    cost_per_click_usd REAL,
    cost_per_acquisition_usd REAL,
    media_channel TEXT,
    audience_segment TEXT,
    geo_target TEXT,
    creative_type TEXT,
    ad_format TEXT,
    viewability_percent REAL,
    brand_safety_score REAL,
    metric_timestamp DATETIME
);

INSERT INTO sponsorship_campaign_metrics (campaign_name, sponsor_id, start_date, end_date, total_budget_usd, impressions, clicks, click_through_rate, conversions, conversion_rate, cost_per_click_usd, cost_per_acquisition_usd, media_channel, audience_segment, geo_target, creative_type, ad_format, viewability_percent, brand_safety_score, metric_timestamp) VALUES
('WinterBlast', 501, '2025-11-01', '2025-12-31', 250000.0, 5000000, 80000, 0.016, 12000, 0.015, 3.12, 20.83, 'Social', 'HardcorePlayers', 'NA', 'Video', 'InStream', 85.5, 9.2, '2025-12-02 14:00:00'),
('SpringSurge', 502, '2025-03-01', '2025-04-30', 180000.0, 3000000, 54000, 0.018, 9000, 0.017, 3.33, 20.00, 'Display', 'CasualPlayers', 'EU', 'Banner', 'Static', 78.0, 8.5, '2025-12-02 14:05:00'),
('SummerFest', 503, '2025-06-15', '2025-08-15', 320000.0, 7200000, 115200, 0.016, 18000, 0.016, 2.78, 17.78, 'Video', 'Collectors', 'APAC', 'Interactive', 'Playable', 88.2, 9.7, '2025-12-02 14:10:00');

-- Venue environment monitor
CREATE TABLE venue_environment_monitor (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER NOT NULL,
    monitor_type TEXT,
    measurement_value REAL,
    unit TEXT,
    measured_at DATETIME,
    sensor_id TEXT,
    equipment_status TEXT,
    battery_status_percent INTEGER,
    signal_strength_db REAL,
    calibration_date DATE,
    maintenance_due_date DATE,
    anomaly_detected INTEGER,
    anomaly_severity TEXT,
    recorded_by TEXT,
    notes TEXT,
    latitude REAL,
    longitude REAL,
    floor_number INTEGER,
    record_timestamp DATETIME
);

INSERT INTO venue_environment_monitor (venue_id, monitor_type, measurement_value, unit, measured_at, sensor_id, equipment_status, battery_status_percent, signal_strength_db, calibration_date, maintenance_due_date, anomaly_detected, anomaly_severity, recorded_by, notes, latitude, longitude, floor_number, record_timestamp) VALUES
(10, 'temperature', 22.5, 'C', '2025-12-01 08:00:00', 'TMP001', 'ok', 95, -70.2, '2025-01-01', '2025-12-31', 0, 'none', 'system', 'normal operation', 40.7128, -74.0060, 1, '2025-12-02 15:00:00'),
(12, 'humidity', 45.0, '%', '2025-12-01 08:05:00', 'HMD002', 'ok', 88, -68.5, '2025-02-01', '2025-12-30', 0, 'none', 'system', 'within range', 34.0522, -118.2437, 2, '2025-12-02 15:05:00'),
(14, 'CO2', 650.0, 'ppm', '2025-12-01 08:10:00', 'CO2003', 'warning', 80, -65.0, '2024-12-15', '2025-12-15', 1, 'moderate', 'system', 'elevated CO2 levels', 51.5074, -0.1278, 3, '2025-12-02 15:10:00');

-- Community forum statistics
CREATE TABLE community_forum_statistics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    forum_id INTEGER NOT NULL,
    total_posts INTEGER,
    total_threads INTEGER,
    active_users_24h INTEGER,
    new_users_today INTEGER,
    posts_per_thread_avg REAL,
    likes_given_total INTEGER,
    likes_received_total INTEGER,
    reports_filed INTEGER,
    moderators_count INTEGER,
    average_response_time_seconds REAL,
    peak_concurrent_users INTEGER,
    uptime_percent REAL,
    maintenance_events INTEGER,
    spam_filter_score REAL,
    content_quality_index REAL,
    language_distribution TEXT,
    timezone_distribution TEXT,
    record_date DATE,
    record_timestamp DATETIME
);

INSERT INTO community_forum_statistics (forum_id, total_posts, total_threads, active_users_24h, new_users_today, posts_per_thread_avg, likes_given_total, likes_received_total, reports_filed, moderators_count, average_response_time_seconds, peak_concurrent_users, uptime_percent, maintenance_events, spam_filter_score, content_quality_index, language_distribution, timezone_distribution, record_date, record_timestamp) VALUES
(1, 45200, 8300, 1240, 35, 5.45, 98000, 110000, 120, 12, 180.5, 3000, 99.8, 2, 0.92, 8.7, 'en:70,de:15,fr:10,es:5', 'UTC-5:30,UTC+1:40,UTC+9:20', '2025-12-01', '2025-12-02 16:00:00'),
(2, 37800, 6900, 950, 20, 5.48, 72000, 85000, 95, 10, 210.2, 2500, 99.5, 1, 0.88, 8.3, 'en:80,ja:10,zh:5,ko:5', 'UTC+9:45,UTC+8:30,UTC-8:25', '2025-12-01', '2025-12-02 16:05:00'),
(3, 51200, 9100, 1380, 42, 5.63, 105000, 123000, 140, 14, 165.0, 3400, 99.9, 3, 0.95, 9.0, 'en:65,ru:15,pl:10,pt:10', 'UTC+2:40,UTC-3:30,UTC+10:20', '2025-12-01', '2025-12-02 16:10:00');

-- Game mechanics testing log
CREATE TABLE game_mechanics_testing_log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    test_name TEXT NOT NULL,
    mechanic_id TEXT,
    version_tested TEXT,
    test_start DATETIME,
    test_end DATETIME,
    result_status TEXT,
    bugs_found INTEGER,
    severity_average REAL,
    test_engine TEXT,
    hardware_config TEXT,
    os_version TEXT,
    cpu_model TEXT,
    gpu_model TEXT,
    memory_gb INTEGER,
    duration_seconds INTEGER,
    notes TEXT,
    tester_id INTEGER,
    approval_status TEXT,
    release_candidate TEXT,
    log_timestamp DATETIME
);

INSERT INTO game_mechanics_testing_log (test_name, mechanic_id, version_tested, test_start, test_end, result_status, bugs_found, severity_average, test_engine, hardware_config, os_version, cpu_model, gpu_model, memory_gb, duration_seconds, notes, tester_id, approval_status, release_candidate, log_timestamp) VALUES
('CombatPhaseStress', 'MECH001', 'v1.2.3', '2025-11-30 09:00:00', '2025-11-30 11:30:00', 'passed', 2, 1.5, 'EngineX', 'Xeon16GB', 'Ubuntu20.04', 'IntelXeonE5', 'NVIDIAGTX1080', 16, 9000, 'no major regressions', 301, 'approved', 'RC1', '2025-12-02 17:00:00'),
('ManaCurveEval', 'MECH042', 'v2.0.0', '2025-12-01 10:00:00', '2025-12-01 12:15:00', 'failed', 5, 3.2, 'EngineY', 'AMD32GB', 'Windows11', 'AMD Ryzen9', 'AMD RadeonRX5700', 32, 8100, 'overflow detected in edge cases', 302, 'rejected', 'RC2', '2025-12-02 17:05:00'),
('CardDrawRandomness', 'MECH078', 'v1.9.5', '2025-12-01 13:00:00', '2025-12-01 15:45:00', 'passed', 1, 1.0, 'EngineZ', 'i7-10700K8GB', 'macOS12', 'Intel i7', 'Intel Iris', 8, 9900, 'random seed stable', 303, 'approved', 'RC1', '2025-12-02 17:10:00');

-- Fantasy world event schedule
CREATE TABLE fantasy_world_event_schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_name TEXT NOT NULL,
    region TEXT,
    lore_category TEXT,
    start_date DATE,
    end_date DATE,
    primary_npc TEXT,
    involved_factions TEXT,
    reward_items TEXT,
    difficulty_level TEXT,
    player_level_min INTEGER,
    player_level_max INTEGER,
    estimated_participants INTEGER,
    max_participants INTEGER,
    event_status TEXT,
    broadcast_channel TEXT,
    livestream_url TEXT,
    promotional_image_url TEXT,
    schedule_notes TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO fantasy_world_event_schedule (event_name, region, lore_category, start_date, end_date, primary_npc, involved_factions, reward_items, difficulty_level, player_level_min, player_level_max, estimated_participants, max_participants, event_status, broadcast_channel, livestream_url, promotional_image_url, schedule_notes, created_at, updated_at) VALUES
('The Crimson Eclipse', 'Eldoria', 'Mythic', '2025-12-15', '2025-12-20', 'LordVarn', 'OrderOfShadows,SilverKnights', 'EclipseSword,ShadowAmulet', 'Hard', 15, 30, 1500, 2000, 'scheduled', 'ArcaneTV', 'http://stream.example.com/crimson', 'http://images.example.com/crimson.png', 'Intro cinematic unlocks at level 10', '2025-11-01 09:00:00', '2025-11-01 09:00:00'),
('Festival of Lights', 'Solara', 'Celebration', '2025-12-01', '2025-12-05', 'HighPriestessLuma', 'SolarGuild,MoonCoven', 'LightStaff,RadiantCloak', 'Easy', 1, 10, 5000, 8000, 'active', 'SunChannel', 'http://stream.example.com/festival', 'http://images.example.com/festival.png', 'Daily quests available', '2025-10-20 12:00:00', '2025-10-25 08:30:00'),
('The Abyssal Siege', 'Nereid Depths', 'War', '2025-12-10', '2025-12-12', 'KrakenLord', 'DeepSeaClan,SurfaceAlliance', 'TridentOfTides,CoralShield', 'VeryHard', 25, 40, 800, 1200, 'planned', 'DeepSeaNetwork', 'http://stream.example.com/abyss', 'http://images.example.com/abyss.png', 'Requires coordination of three guilds', '2025-11-15 14:45:00', '2025-11-15 14:45:00');