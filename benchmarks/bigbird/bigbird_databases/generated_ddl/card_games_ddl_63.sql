-- Player device statistics adjacent to player profiles
CREATE TABLE player_device_stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    device_type TEXT,
    os_version TEXT,
    app_version TEXT,
    screen_resolution TEXT,
    locale TEXT,
    timezone TEXT,
    cpu_cores INTEGER,
    ram_gb REAL,
    storage_gb REAL,
    battery_level INTEGER,
    network_type TEXT,
    ip_address TEXT,
    mac_address TEXT,
    last_sync DATE,
    error_count INTEGER,
    crash_count INTEGER,
    session_count INTEGER,
    avg_fps REAL,
    gpu_model TEXT,
    manufacturer TEXT
);

INSERT INTO player_device_stats (player_id, device_type, os_version, app_version, screen_resolution, locale, timezone, cpu_cores, ram_gb, storage_gb, battery_level, network_type, ip_address, mac_address, last_sync, error_count, crash_count, session_count, avg_fps, gpu_model, manufacturer) VALUES (101, 'Smartphone', 'Android12', '1.4.2', '1080x2400', 'enUS', 'UTC-5', 8, 6.0, 128.0, 85, 'WiFi', '192.168.1.10', 'AA:BB:CC:DD:EE:FF', '2025-12-01', 2, 0, 45, 58.3, 'Adreno640', 'Samsung');
INSERT INTO player_device_stats (player_id, device_type, os_version, app_version, screen_resolution, locale, timezone, cpu_cores, ram_gb, storage_gb, battery_level, network_type, ip_address, mac_address, last_sync, error_count, crash_count, session_count, avg_fps, gpu_model, manufacturer) VALUES (102, 'Tablet', 'iOS16', '1.4.2', '1668x2388', 'enGB', 'UTC+0', 6, 4.0, 256.0, 60, 'Cellular', '10.0.0.5', '11:22:33:44:55:66', '2025-12-02', 0, 1, 30, 55.0, 'AppleA14', 'Apple');
INSERT INTO player_device_stats (player_id, device_type, os_version, app_version, screen_resolution, locale, timezone, cpu_cores, ram_gb, storage_gb, battery_level, network_type, ip_address, mac_address, last_sync, error_count, crash_count, session_count, avg_fps, gpu_model, manufacturer) VALUES (103, 'Desktop', 'Windows11', '1.4.2', '2560x1440', 'deDE', 'UTC+1', 12, 16.0, 512.0, 100, 'Ethernet', '172.16.0.2', '77:88:99:AA:BB:CC', '2025-12-03', 5, 2, 120, 144.0, 'NvidiaRTX3080', 'CustomBuild');

-- Media assets linked to community events
CREATE TABLE community_event_media (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    media_type TEXT,
    url TEXT,
    thumbnail_url TEXT,
    duration_seconds INTEGER,
    upload_date DATE,
    uploader_id INTEGER,
    description TEXT,
    tags TEXT,
    view_count INTEGER,
    like_count INTEGER,
    comment_count INTEGER,
    resolution TEXT,
    format TEXT,
    size_bytes INTEGER,
    license_type TEXT,
    attribution TEXT,
    is_featured INTEGER,
    source_platform TEXT
);

INSERT INTO community_event_media (event_id, media_type, url, thumbnail_url, duration_seconds, upload_date, uploader_id, description, tags, view_count, like_count, comment_count, resolution, format, size_bytes, license_type, attribution, is_featured, source_platform) VALUES (201, 'Video', 'https://media.example.com/vid1.mp4', 'https://media.example.com/thumb1.jpg', 300, '2025-11-20', 501, 'Highlights from the spring tournament', 'tournament,highlights', 15000, 1200, 250, '1920x1080', 'MP4', 50000000, 'CCBY', 'EventTeam', 1, 'YouTube');
INSERT INTO community_event_media (event_id, media_type, url, thumbnail_url, duration_seconds, upload_date, uploader_id, description, tags, view_count, like_count, comment_count, resolution, format, size_bytes, license_type, attribution, is_featured, source_platform) VALUES (202, 'Image', 'https://media.example.com/img1.png', 'https://media.example.com/imgthumb1.jpg', 0, '2025-11-21', 502, 'Poster for the upcoming championship', 'poster,championship', 8000, 650, 0, '1080x1350', 'PNG', 2000000, 'CC0', 'DesignDept', 0, 'Instagram');
INSERT INTO community_event_media (event_id, media_type, url, thumbnail_url, duration_seconds, upload_date, uploader_id, description, tags, view_count, like_count, comment_count, resolution, format, size_bytes, license_type, attribution, is_featured, source_platform) VALUES (203, 'Audio', 'https://media.example.com/pod1.mp3', 'https://media.example.com/podthumb1.jpg', 1800, '2025-11-22', 503, 'Interview with top player', 'interview,player', 4000, 300, 45, 'N/A', 'MP3', 30000000, 'CCBYSA', 'PodcastTeam', 0, 'Spotify');

-- Environmental sensor readings collected at venues
CREATE TABLE environmental_sensor_readings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sensor_id TEXT,
    location_id INTEGER,
    sensor_type TEXT,
    reading_value REAL,
    unit TEXT,
    timestamp DATETIME,
    battery_percent INTEGER,
    signal_strength INTEGER,
    firmware_version TEXT,
    calibration_date DATE,
    is_anomalous INTEGER,
    anomaly_score REAL,
    latitude REAL,
    longitude REAL,
    altitude REAL,
    recorded_by INTEGER,
    notes TEXT,
    humidity REAL,
    temperature REAL,
    pressure REAL
);

INSERT INTO environmental_sensor_readings (sensor_id, location_id, sensor_type, reading_value, unit, timestamp, battery_percent, signal_strength, firmware_version, calibration_date, is_anomalous, anomaly_score, latitude, longitude, altitude, recorded_by, notes, humidity, temperature, pressure) VALUES ('SEN-001', 10, 'Temperature', 22.5, 'C', '2025-12-01 10:00:00', 95, -70, 'v1.2', '2025-01-15', 0, 0.0, 40.7128, -74.0060, 5.0, 1001, 'Normal operation', 45.0, 22.5, 1013.25);
INSERT INTO environmental_sensor_readings (sensor_id, location_id, sensor_type, reading_value, unit, timestamp, battery_percent, signal_strength, firmware_version, calibration_date, is_anomalous, anomaly_score, latitude, longitude, altitude, recorded_by, notes, humidity, temperature, pressure) VALUES ('SEN-002', 11, 'CO2', 800.0, 'ppm', '2025-12-01 10:05:00', 88, -68, 'v1.3', '2025-02-10', 0, 0.0, 34.0522, -118.2437, 15.0, 1002, 'Ventilation OK', 30.0, 19.0, 1010.00);
INSERT INTO environmental_sensor_readings (sensor_id, location_id, sensor_type, reading_value, unit, timestamp, battery_percent, signal_strength, firmware_version, calibration_date, is_anomalous, anomaly_score, latitude, longitude, altitude, recorded_by, notes, humidity, temperature, pressure) VALUES ('SEN-003', 12, 'Noise', 65.0, 'dB', '2025-12-01 10:10:00', 70, -75, 'v2.0', '2025-03-05', 1, 7.8, 51.5074, -0.1278, 10.0, 1003, 'Peak crowd noise', 55.0, 20.0, 1012.50);

-- Third‑party API integration registry
CREATE TABLE third_party_api_integrations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    integration_name TEXT,
    provider TEXT,
    api_key TEXT,
    secret_key TEXT,
    endpoint_url TEXT,
    version TEXT,
    auth_method TEXT,
    rate_limit_per_minute INTEGER,
    daily_quota INTEGER,
    last_successful_call DATETIME,
    last_failure_reason TEXT,
    is_active INTEGER,
    created_at DATETIME,
    updated_at DATETIME,
    contact_email TEXT,
    documentation_url TEXT,
    supported_operations TEXT,
    timeout_seconds INTEGER,
    retry_attempts INTEGER,
    status_page_url TEXT,
    sla_hours INTEGER
);

INSERT INTO third_party_api_integrations (integration_name, provider, api_key, secret_key, endpoint_url, version, auth_method, rate_limit_per_minute, daily_quota, last_successful_call, last_failure_reason, is_active, created_at, updated_at, contact_email, documentation_url, supported_operations, timeout_seconds, retry_attempts, status_page_url, sla_hours) VALUES ('PaymentGateway', 'Stripe', 'pk_test_123456', 'sk_test_abcdef', 'https://api.stripe.com', '2020-08-27', 'Bearer', 120, 10000, '2025-11-30 14:20:00', NULL, 1, '2023-05-01 09:00:00', '2025-11-30 14:22:00', 'devops@example.com', 'https://stripe.com/docs/api', 'charge,refund,customer', 30, 3, 'https://status.stripe.com', 24);
INSERT INTO third_party_api_integrations (integration_name, provider, api_key, secret_key, endpoint_url, version, auth_method, rate_limit_per_minute, daily_quota, last_successful_call, last_failure_reason, is_active, created_at, updated_at, contact_email, documentation_url, supported_operations, timeout_seconds, retry_attempts, status_page_url, sla_hours) VALUES ('Analytics', 'Mixpanel', 'mix_12345', 'mix_secret_67890', 'https://api.mixpanel.com', '2.0', 'Token', 200, 15000, '2025-11-30 15:05:00', NULL, 1, '2024-01-15 10:00:00', '2025-11-30 15:06:00', 'analytics@example.com', 'https://developer.mixpanel.com/docs', 'track,engage,export', 45, 2, 'https://status.mixpanel.com', 12);
INSERT INTO third_party_api_integrations (integration_name, provider, api_key, secret_key, endpoint_url, version, auth_method, rate_limit_per_minute, daily_quota, last_successful_call, last_failure_reason, is_active, created_at, updated_at, contact_email, documentation_url, supported_operations, timeout_seconds, retry_attempts, status_page_url, sla_hours) VALUES ('MapService', 'Mapbox', 'mbx_key_9876', 'mbx_secret_5432', 'https://api.mapbox.com', 'v4', 'Bearer', 300, 25000, '2025-11-30 16:00:00', 'Timeout error', 0, '2022-07-20 08:30:00', '2025-11-30 16:05:00', 'maps@example.com', 'https://docs.mapbox.com/api', 'geocode,tiles', 60, 5, 'https://status.mapbox.com', 48);

-- Market analysis survey definitions
CREATE TABLE market_analysis_surveys (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    survey_name TEXT,
    target_audience TEXT,
    launch_date DATE,
    close_date DATE,
    total_responses INTEGER,
    completion_rate REAL,
    average_time_minutes REAL,
    primary_focus TEXT,
    methodology TEXT,
    sponsor TEXT,
    contact_person TEXT,
    contact_email TEXT,
    data_quality_score REAL,
    notes TEXT,
    version TEXT,
    is_public INTEGER,
    geographic_scope TEXT,
    currency TEXT,
    average_spend REAL,
    net_promoter_score INTEGER
);

INSERT INTO market_analysis_surveys (survey_name, target_audience, launch_date, close_date, total_responses, completion_rate, average_time_minutes, primary_focus, methodology, sponsor, contact_person, contact_email, data_quality_score, notes, version, is_public, geographic_scope, currency, average_spend, net_promoter_score) VALUES ('Q4 Collector Spending', 'Collectors', '2025-10-01', '2025-11-15', 842, 0.87, 12.5, 'Spending habits', 'Online questionnaire', 'GameCo', 'Alice Smith', 'alice.smith@example.com', 0.95, 'High engagement', '1.0', 1, 'Global', 'USD', 250.75, 68);
INSERT INTO market_analysis_surveys (survey_name, target_audience, launch_date, close_date, total_responses, completion_rate, average_time_minutes, primary_focus, methodology, sponsor, contact_person, contact_email, data_quality_score, notes, version, is_public, geographic_scope, currency, average_spend, net_promoter_score) VALUES ('Beta Feature Feedback', 'Beta Testers', '2025-09-10', '2025-10-05', 124, 0.63, 8.2, 'Feature usability', 'In‑app prompt', 'GameCo', 'Bob Jones', 'bob.jones@example.com', 0.88, 'Mixed responses', '2.1', 0, 'NorthAmerica', 'USD', 0.0, 45);
INSERT INTO market_analysis_surveys (survey_name, target_audience, launch_date, close_date, total_responses, completion_rate, average_time_minutes, primary_focus, methodology, sponsor, contact_person, contact_email, data_quality_score, notes, version, is_public, geographic_scope, currency, average_spend, net_promoter_score) VALUES ('Regional Pricing Study', 'Retail Partners', '2025-08-01', '2025-09-01', 57, 0.71, 15.0, 'Price elasticity', 'Phone interviews', 'MarketInsights', 'Carol Lee', 'carol.lee@example.com', 0.92, 'Regional differences noted', '3.0', 0, 'Europe', 'EUR', 199.99, 72);

-- Fantasy world lore entries extending the lore tables
CREATE TABLE fantasy_world_lore_entries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    category TEXT,
    subcategory TEXT,
    author TEXT,
    created_date DATE,
    last_modified DATE,
    summary TEXT,
    full_text TEXT,
    relevance_score REAL,
    is_canonical INTEGER,
    related_entry_ids TEXT,
    keywords TEXT,
    language TEXT,
    edition TEXT,
    page_number INTEGER,
    archive_reference TEXT,
    illustration_url TEXT,
    audio_narration_url TEXT,
    video_url TEXT,
    fan_rating REAL
);

INSERT INTO fantasy_world_lore_entries (title, category, subcategory, author, created_date, last_modified, summary, full_text, relevance_score, is_canonical, related_entry_ids, keywords, language, edition, page_number, archive_reference, illustration_url, audio_narration_url, video_url, fan_rating) VALUES ('The Dawn of the Archmages', 'History', 'Era', 'Eldric Vael', '2020-05-12', '2024-03-01', 'Origin story of the first archmages', 'Lorem ipsum dolor sit amet consectetur adipiscing elit', 0.91, 1, '34,55', 'archmage,magic,origin', 'en', 'First', 12, 'ARC-001', 'https://lore.example.com/archmages.png', 'https://lore.example.com/archmages.mp3', 'https://lore.example.com/archmages.mp4', 4.7);
INSERT INTO fantasy_world_lore_entries (title, category, subcategory, author, created_date, last_modified, summary, full_text, relevance_score, is_canonical, related_entry_ids, keywords, language, edition, page_number, archive_reference, illustration_url, audio_narration_url, video_url, fan_rating) VALUES ('The Siege of Emberkeep', 'War', 'Battle', 'Lira Stormblade', '2019-11-23', '2023-12-15', 'A pivotal battle at Emberkeep', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 0.85, 1, '78', 'siege,emberkeep,battle', 'en', 'Second', 45, 'WAR-078', 'https://lore.example.com/emberkeep.png', 'https://lore.example.com/emberkeep.mp3', 'https://lore.example.com/emberkeep.mp4', 4.2);
INSERT INTO fantasy_world_lore_entries (title, category, subcategory, author, created_date, last_modified, summary, full_text, relevance_score, is_canonical, related_entry_ids, keywords, language, edition, page_number, archive_reference, illustration_url, audio_narration_url, video_url, fan_rating) VALUES ('Chronicles of the Skyship Guild', 'Culture', 'Organizations', 'Mira Windrider', '2021-02-08', '2025-01-20', 'Stories of the skyship merchants', 'Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi', 0.78, 0, '102,110', 'skyship,guild,trade', 'en', 'Third', 78, 'CUL-102', 'https://lore.example.com/skyship.png', 'https://lore.example.com/skyship.mp3', 'https://lore.example.com/skyship.mp4', 3.9);

-- Game server clusters for online play
CREATE TABLE game_server_clusters (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cluster_name TEXT,
    region TEXT,
    data_center TEXT,
    node_count INTEGER,
    cpu_total_cores INTEGER,
    ram_total_gb REAL,
    storage_total_tb REAL,
    network_bandwidth_gbps REAL,
    load_balancer_type TEXT,
    failover_strategy TEXT,
    maintenance_window TEXT,
    avg_latency_ms REAL,
    peak_players INTEGER,
    current_players INTEGER,
    isp_provider TEXT,
    ip_range TEXT,
    security_level TEXT,
    encryption_enabled INTEGER,
    monitoring_tool TEXT,
    firmware_version TEXT,
    created_at DATETIME
);

INSERT INTO game_server_clusters (cluster_name, region, data_center, node_count, cpu_total_cores, ram_total_gb, storage_total_tb, network_bandwidth_gbps, load_balancer_type, failover_strategy, maintenance_window, avg_latency_ms, peak_players, current_players, isp_provider, ip_range, security_level, encryption_enabled, monitoring_tool, firmware_version, created_at) VALUES ('AlphaCluster', 'NorthAmerica', 'NA-DC1', 48, 768, 1024.0, 120.0, 200.0, 'HAProxy', 'ActiveActive', 'Sun02:00-04:00 UTC', 45.3, 25000, 13245, 'Comcast', '192.168.0.0/16', 'High', 1, 'Prometheus', 'v3.5.1', '2023-06-10 12:00:00');
INSERT INTO game_server_clusters (cluster_name, region, data_center, node_count, cpu_total_cores, ram_total_gb, storage_total_tb, network_bandwidth_gbps, load_balancer_type, failover_strategy, maintenance_window, avg_latency_ms, peak_players, current_players, isp_provider, ip_range, security_level, encryption_enabled, monitoring_tool, firmware_version, created_at) VALUES ('BetaCluster', 'Europe', 'EU-DC2', 32, 512, 768.0, 80.0, 150.0, 'NGINX', 'ActivePassive', 'Mon01:00-03:00 UTC', 53.7, 18000, 9420, 'Deutsche Telekom', '10.0.0.0/16', 'Medium', 1, 'Datadog', 'v3.4.0', '2023-07-15 08:30:00');
INSERT INTO game_server_clusters (cluster_name, region, data_center, node_count, cpu_total_cores, ram_total_gb, storage_total_tb, network_bandwidth_gbps, load_balancer_type, failover_strategy, maintenance_window, avg_latency_ms, peak_players, current_players, isp_provider, ip_range, security_level, encryption_enabled, monitoring_tool, firmware_version, created_at) VALUES ('GammaCluster', 'AsiaPacific', 'APAC-DC3', 24, 384, 512.0, 60.0, 120.0, 'Envoy', 'ActiveActive', 'Tue03:00-05:00 UTC', 61.2, 15000, 7105, 'NTT', '172.16.0.0/12', 'High', 1, 'Grafana', 'v3.6.2', '2023-08-20 14:45:00');

-- Digital artifact metadata linked to non‑card assets
CREATE TABLE digital_artifact_metadata (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    artifact_id TEXT,
    name TEXT,
    type TEXT,
    format TEXT,
    size_bytes INTEGER,
    resolution TEXT,
    duration_seconds INTEGER,
    creator TEXT,
    creation_date DATE,
    license_type TEXT,
    attribution TEXT,
    checksum_md5 TEXT,
    storage_location TEXT,
    access_url TEXT,
    expiration_date DATE,
    is_active INTEGER,
    version TEXT,
    tags TEXT,
    related_artifact_ids TEXT,
    usage_count INTEGER,
    last_accessed DATETIME,
    notes TEXT
);

INSERT INTO digital_artifact_metadata (artifact_id, name, type, format, size_bytes, resolution, duration_seconds, creator, creation_date, license_type, attribution, checksum_md5, storage_location, access_url, expiration_date, is_active, version, tags, related_artifact_ids, usage_count, last_accessed, notes) VALUES ('ART-001', 'Mystic Landscape', 'Image', 'PNG', 2048000, '3840x2160', 0, 'Aria Studios', '2024-04-12', 'CCBYSA', 'Aria Studios', 'd41d8cd98f00b204e9800998ecf8427e', '/mnt/artifacts/images', 'https://assets.example.com/art001.png', NULL, 1, '1.0', 'fantasy,landscape', 'ART-005,ART-010', 342, '2025-11-30 18:20:00', 'Used in promotional banners');
INSERT INTO digital_artifact_metadata (artifact_id, name, type, format, size_bytes, resolution, duration_seconds, creator, creation_date, license_type, attribution, checksum_md5, storage_location, access_url, expiration_date, is_active, version, tags, related_artifact_ids, usage_count, last_accessed, notes) VALUES ('ART-002', 'Battle Theme', 'Audio', 'MP3', 5120000, NULL, 180, 'SoundForge', '2023-11-05', 'RoyaltyFree', 'SoundForge', '0cc175b9c0f1b6a831c399e269772661', '/mnt/artifacts/audio', 'https://assets.example.com/audio002.mp3', NULL, 1, '2.1', 'battle,theme', 'ART-003', 128, '2025-11-29 14:05:00', 'Looped during boss fights');
INSERT INTO digital_artifact_metadata (artifact_id, name, type, format, size_bytes, resolution, duration_seconds, creator, creation_date, license_type, attribution, checksum_md5, storage_location, access_url, expiration_date, is_active, version, tags, related_artifact_ids, usage_count, last_accessed, notes) VALUES ('ART-003', 'Victory Animation', 'Video', 'MP4', 10485760, '1920x1080', 12, 'PixelWorks', '2022-07-20', 'Custom', 'PixelWorks', '92eb5ffee6ae2fec3ad71c777531578f', '/mnt/artifacts/video', 'https://assets.example.com/video003.mp4', NULL, 1, '3.0', 'victory,animation', 'ART-001', 89, '2025-11-28 09:30:00', 'Played after match win');

-- Sponsor engagement events linking sponsors to community activities
CREATE TABLE sponsor_engagement_events (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    event_id INTEGER,
    engagement_type TEXT,
    start_date DATE,
    end_date DATE,
    target_audience TEXT,
    budget_usd REAL,
    actual_spend_usd REAL,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    ctr_percent REAL,
    cpc_usd REAL,
    cpm_usd REAL,
    roi_percent REAL,
    feedback_score REAL,
    notes TEXT,
    created_by INTEGER,
    created_at DATETIME,
    updated_at DATETIME,
    status TEXT
);

INSERT INTO sponsor_engagement_events (sponsor_id, event_id, engagement_type, start_date, end_date, target_audience, budget_usd, actual_spend_usd, impressions, clicks, conversions, ctr_percent, cpc_usd, cpm_usd, roi_percent, feedback_score, notes, created_by, created_at, updated_at, status) VALUES (301, 401, 'BannerAds', '2025-09-01', '2025-09-30', 'Players', 15000.00, 14820.50, 3000000, 12000, 850, 0.40, 1.24, 4.94, 12.5, 4.2, 'Reached peak weekend', 9001, '2025-08-20 10:00:00', '2025-09-02 09:30:00', 'Active');
INSERT INTO sponsor_engagement_events (sponsor_id, event_id, engagement_type, start_date, end_date, target_audience, budget_usd, actual_spend_usd, impressions, clicks, conversions, ctr_percent, cpc_usd, cpm_usd, roi_percent, feedback_score, notes, created_by, created_at, updated_at, status) VALUES (302, 402, 'LiveStreamOverlay', '2025-10-05', '2025-10-05', 'Viewers', 8000.00, 7950.00, 500000, 2500, 300, 0.50, 3.18, 15.90, 18.2, 4.8, 'High engagement during finals', 9002, '2025-09-20 11:15:00', '2025-10-06 08:45:00', 'Completed');
INSERT INTO sponsor_engagement_events (sponsor_id, event_id, engagement_type, start_date, end_date, target_audience, budget_usd, actual_spend_usd, impressions, clicks, conversions, ctr_percent, cpc_usd, cpm_usd, roi_percent, feedback_score, notes, created_by, created_at, updated_at, status) VALUES (303, 403, 'SocialMediaContest', '2025-11-10', '2025-11-20', 'Community', 5000.00, 4920.00, 1200000, 6000, 420, 0.50, 0.82, 4.10, 22.0, 4.5, 'User generated content boost', 9003, '2025-10-30 14:20:00', '2025-11-21 10:00:00', 'Closed');

-- Venue environmental logs capturing periodic readings
CREATE TABLE venue_environmental_logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    log_date DATE,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    noise_db REAL,
    light_lux REAL,
    motion_detected INTEGER,
    camera_status TEXT,
    hvac_status TEXT,
    water_leak_detected INTEGER,
    power_outage INTEGER,
    energy_consumption_kwh REAL,
    maintenance_required INTEGER,
    notes TEXT,
    recorded_by INTEGER,
    sensor_batch_id TEXT,
    latitude REAL,
    longitude REAL,
    altitude REAL
);

INSERT INTO venue_environmental_logs (venue_id, log_date, temperature_c, humidity_percent, co2_ppm, noise_db, light_lux, motion_detected, camera_status, hvac_status, water_leak_detected, power_outage, energy_consumption_kwh, maintenance_required, notes, recorded_by, sensor_batch_id, latitude, longitude, altitude) VALUES (101, '2025-12-01', 21.5, 45.0, 650, 55.0, 300.0, 1, 'Online', 'Active', 0, 0, 320.5, 0, 'Normal conditions', 1201, 'BATCH-A1', 40.7128, -74.0060, 5.0);
INSERT INTO venue_environmental_logs (venue_id, log_date, temperature_c, humidity_percent, co2_ppm, noise_db, light_lux, motion_detected, camera_status, hvac_status, water_leak_detected, power_outage, energy_consumption_kwh, maintenance_required, notes, recorded_by, sensor_batch_id, latitude, longitude, altitude) VALUES (102, '2025-12-01', 19.2, 55.0, 720, 62.0, 250.0, 0, 'Offline', 'Standby', 0, 1, 415.0, 1, 'Power outage detected', 1202, 'BATCH-B2', 34.0522, -118.2437, 15.0);
INSERT INTO venue_environmental_logs (venue_id, log_date, temperature_c, humidity_percent, co2_ppm, noise_db, light_lux, motion_detected, camera_status, hvac_status, water_leak_detected, power_outage, energy_consumption_kwh, maintenance_required, notes, recorded_by, sensor_batch_id, latitude, longitude, altitude) VALUES (103, '2025-12-01', 23.8, 40.0, 580, 48.0, 400.0, 1, 'Online', 'Active', 1, 0, 289.7, 0, 'Leak in roof detected', 1203, 'BATCH-C3', 51.5074, -0.1278, 10.0);