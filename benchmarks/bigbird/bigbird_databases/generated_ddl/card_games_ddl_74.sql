-- Player medical records capturing health check data
CREATE TABLE player_medical_records (
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    check_date DATE,
    height_cm REAL,
    weight_kg REAL,
    blood_type TEXT,
    vision_left REAL,
    vision_right REAL,
    heart_rate_rest INTEGER,
    cholesterol_mgdl INTEGER,
    glucose_mgdl INTEGER,
    allergies TEXT,
    medications TEXT,
    immunizations TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    physician_id INTEGER,
    clinic_id INTEGER,
    bmi REAL,
    health_score INTEGER
);

INSERT INTO player_medical_records (player_id, check_date, height_cm, weight_kg, blood_type, vision_left, vision_right, heart_rate_rest, cholesterol_mgdl, glucose_mgdl, allergies, medications, immunizations, notes, created_at, updated_at, physician_id, clinic_id, bmi, health_score) VALUES (101, '2023-03-15', 182.5, 78.2, 'O+', 1.0, 1.0, 60, 180, 90, 'none', 'none', 'mmr', 'annual checkup', '2023-03-15', '2023-03-15', 12, 3, 23.5, 85);
INSERT INTO player_medical_records (player_id, check_date, height_cm, weight_kg, blood_type, vision_left, vision_right, heart_rate_rest, cholesterol_mgdl, glucose_mgdl, allergies, medications, immunizations, notes, created_at, updated_at, physician_id, clinic_id, bmi, health_score) VALUES (102, '2023-04-10', 175.0, 82.0, 'A-', 0.9, 0.9, 65, 190, 95, 'pollen', 'ibuprofen', 'hepatitis', 'post injury', '2023-04-10', '2023-04-10', 15, 2, 26.8, 78);
INSERT INTO player_medical_records (player_id, check_date, height_cm, weight_kg, blood_type, vision_left, vision_right, heart_rate_rest, cholesterol_mgdl, glucose_mgdl, allergies, medications, immunizations, notes, created_at, updated_at, physician_id, clinic_id, bmi, health_score) VALUES (103, '2023-05-05', 168.0, 70.5, 'B+', 1.2, 1.2, 58, 170, 85, 'none', 'none', 'influenza', 'routine', '2023-05-05', '2023-05-05', 9, 4, 24.9, 90);

-- Environmental sensor nodes deployed across venues
CREATE TABLE environmental_sensor_nodes (
    node_id INTEGER PRIMARY KEY AUTOINCREMENT,
    location_code TEXT,
    latitude REAL,
    longitude REAL,
    installation_date DATE,
    sensor_type TEXT,
    firmware_version TEXT,
    battery_level INTEGER,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    noise_db INTEGER,
    last_maintenance DATE,
    status TEXT,
    data_interval_seconds INTEGER,
    manufacturer TEXT,
    model_number TEXT,
    ip_address TEXT,
    mac_address TEXT,
    uptime_hours INTEGER
);

INSERT INTO environmental_sensor_nodes (location_code, latitude, longitude, installation_date, sensor_type, firmware_version, battery_level, temperature_c, humidity_percent, co2_ppm, noise_db, last_maintenance, status, data_interval_seconds, manufacturer, model_number, ip_address, mac_address, uptime_hours) VALUES ('VEN001', 40.7128, -74.0060, '2022-01-10', 'multi', 'v1.2.3', 95, 22.5, 45.0, 420, 55, '2023-02-15', 'active', 300, 'EnviroTech', 'EN-1000', '192.168.1.10', 'AA:BB:CC:DD:EE:01', 2000);
INSERT INTO environmental_sensor_nodes (location_code, latitude, longitude, installation_date, sensor_type, firmware_version, battery_level, temperature_c, humidity_percent, co2_ppm, noise_db, last_maintenance, status, data_interval_seconds, manufacturer, model_number, ip_address, mac_address, uptime_hours) VALUES ('VEN002', 34.0522, -118.2437, '2022-03-12', 'temperature', 'v2.0.0', 88, 24.1, 38.5, 410, 48, '2023-03-01', 'active', 600, 'SenseCo', 'TC-200', '192.168.1.11', 'AA:BB:CC:DD:EE:02', 1800);
INSERT INTO environmental_sensor_nodes (location_code, latitude, longitude, installation_date, sensor_type, firmware_version, battery_level, temperature_c, humidity_percent, co2_ppm, noise_db, last_maintenance, status, data_interval_seconds, manufacturer, model_number, ip_address, mac_address, uptime_hours) VALUES ('VEN003', 51.5074, -0.1278, '2022-05-05', 'humidity', 'v1.5.1', 92, 19.8, 55.2, 430, 60, '2023-01-20', 'maintenance', 450, 'AirMetrics', 'HM-300', '192.168.1.12', 'AA:BB:CC:DD:EE:03', 1500);

-- Blockchain asset holdings for virtual currencies
CREATE TABLE blockchain_asset_holdings (
    holding_id INTEGER PRIMARY KEY AUTOINCREMENT,
    wallet_address TEXT,
    asset_symbol TEXT,
    quantity REAL,
    acquisition_date DATE,
    source TEXT,
    last_valuation_usd REAL,
    valuation_date DATE,
    is_staked INTEGER,
    staking_reward_usd REAL,
    lockup_end_date DATE,
    risk_score INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    platform TEXT,
    network TEXT,
    transaction_count INTEGER,
    average_entry_price_usd REAL,
    current_price_usd REAL,
    total_usd_value REAL
);

INSERT INTO blockchain_asset_holdings (wallet_address, asset_symbol, quantity, acquisition_date, source, last_valuation_usd, valuation_date, is_staked, staking_reward_usd, lockup_end_date, risk_score, notes, created_at, updated_at, platform, network, transaction_count, average_entry_price_usd, current_price_usd, total_usd_value) VALUES ('0xABC123', 'ETH', 12.5, '2022-11-01', 'exchange', 21000.0, '2023-04-20', 1, 150.0, '2023-12-31', 3, 'long term holding', '2022-11-01', '2023-04-20', 'MetaMask', 'Ethereum', 45, 1600.0, 1680.0, 21000.0);
INSERT INTO blockchain_asset_holdings (wallet_address, asset_symbol, quantity, acquisition_date, source, last_valuation_usd, valuation_date, is_staked, staking_reward_usd, lockup_end_date, risk_score, notes, created_at, updated_at, platform, network, transaction_count, average_entry_price_usd, current_price_usd, total_usd_value) VALUES ('0xDEF456', 'BTC', 0.75, '2021-08-15', 'miner', 18000.0, '2023-04-20', 0, 0.0, NULL, 2, 'core holding', '2021-08-15', '2023-04-20', 'Ledger', 'Bitcoin', 30, 24000.0, 24000.0, 18000.0);
INSERT INTO blockchain_asset_holdings (wallet_address, asset_symbol, quantity, acquisition_date, source, last_valuation_usd, valuation_date, is_staked, staking_reward_usd, lockup_end_date, risk_score, notes, created_at, updated_at, platform, network, transaction_count, average_entry_price_usd, current_price_usd, total_usd_value) VALUES ('0x789XYZ', 'SOL', 250.0, '2023-01-10', 'airdrop', 6000.0, '2023-04-20', 1, 80.0, '2024-01-10', 4, 'testing staking', '2023-01-10', '2023-04-20', 'Phantom', 'Solana', 20, 20.0, 24.0, 6000.0);

-- Live stream metadata for broadcast events
CREATE TABLE live_stream_metadata (
    stream_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    platform TEXT,
    stream_url TEXT,
    start_time DATETIME,
    end_time DATETIME,
    bitrate_kbps INTEGER,
    resolution TEXT,
    viewer_peak INTEGER,
    avg_viewers INTEGER,
    chat_message_count INTEGER,
    moderation_actions INTEGER,
    sponsor_tag TEXT,
    language TEXT,
    captions_available INTEGER,
    archive_url TEXT,
    latency_ms INTEGER,
    stream_status TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO live_stream_metadata (event_id, platform, stream_url, start_time, end_time, bitrate_kbps, resolution, viewer_peak, avg_viewers, chat_message_count, moderation_actions, sponsor_tag, language, captions_available, archive_url, latency_ms, stream_status, created_at, updated_at) VALUES (201, 'Twitch', 'https://twitch.tv/stream1', '2023-06-01 14:00:00', '2023-06-01 16:30:00', 4500, '1080p', 12000, 8000, 25000, 15, 'AcmeCorp', 'en', 1, 'https://archive.org/stream1', 80, 'completed', '2023-06-01', '2023-06-01');
INSERT INTO live_stream_metadata (event_id, platform, stream_url, start_time, end_time, bitrate_kbps, resolution, viewer_peak, avg_viewers, chat_message_count, moderation_actions, sponsor_tag, language, captions_available, archive_url, latency_ms, stream_status, created_at, updated_at) VALUES (202, 'YouTube', 'https://youtu.be/stream2', '2023-07-15 18:00:00', '2023-07-15 20:00:00', 6000, '1440p', 25000, 18000, 40000, 20, 'BetaGames', 'es', 1, 'https://archive.org/stream2', 120, 'completed', '2023-07-15', '2023-07-15');
INSERT INTO live_stream_metadata (event_id, platform, stream_url, start_time, end_time, bitrate_kbps, resolution, viewer_peak, avg_viewers, chat_message_count, moderation_actions, sponsor_tag, language, captions_available, archive_url, latency_ms, stream_status, created_at, updated_at) VALUES (203, 'Mixer', 'https://mixer.com/stream3', '2023-08-20 20:00:00', '2023-08-20 22:15:00', 3000, '720p', 8000, 5000, 12000, 8, 'GammaInc', 'fr', 0, 'https://archive.org/stream3', 200, 'completed', '2023-08-20', '2023-08-20');

-- Artifact forge job tracking
CREATE TABLE artifact_forge_jobs (
    job_id INTEGER PRIMARY KEY AUTOINCREMENT,
    artifact_id INTEGER,
    forge_master_id INTEGER,
    start_date DATE,
    end_date DATE,
    material TEXT,
    quality_grade TEXT,
    energy_consumed_kwh REAL,
    duration_hours REAL,
    success_flag INTEGER,
    defects_found INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    workstation_id INTEGER,
    temperature_c REAL,
    pressure_mpa REAL,
    catalyst_used TEXT,
    batch_number TEXT,
    cost_usd REAL,
    approval_status TEXT
);

INSERT INTO artifact_forge_jobs (artifact_id, forge_master_id, start_date, end_date, material, quality_grade, energy_consumed_kwh, duration_hours, success_flag, defects_found, notes, created_at, updated_at, workstation_id, temperature_c, pressure_mpa, catalyst_used, batch_number, cost_usd, approval_status) VALUES (301, 45, '2023-02-01', '2023-02-03', 'mithril', 'A', 1500.5, 48.0, 1, 0, 'perfect run', '2023-02-01', '2023-02-03', 12, 1250.0, 3.2, 'catalystX', 'BCH-001', 25000.0, 'approved');
INSERT INTO artifact_forge_jobs (artifact_id, forge_master_id, start_date, end_date, material, quality_grade, energy_consumed_kwh, duration_hours, success_flag, defects_found, notes, created_at, updated_at, workstation_id, temperature_c, pressure_mpa, catalyst_used, batch_number, cost_usd, approval_status) VALUES (302, 46, '2023-03-10', '2023-03-12', 'obsidian', 'B', 1800.0, 52.0, 0, 3, 'cracks observed', '2023-03-10', '2023-03-12', 13, 1400.0, 3.5, 'catalystY', 'BCH-002', 27500.0, 'rework');
INSERT INTO artifact_forge_jobs (artifact_id, forge_master_id, start_date, end_date, material, quality_grade, energy_consumed_kwh, duration_hours, success_flag, defects_found, notes, created_at, updated_at, workstation_id, temperature_c, pressure_mpa, catalyst_used, batch_number, cost_usd, approval_status) VALUES (303, 47, '2023-04-20', '2023-04-22', 'aurum', 'S', 2000.0, 60.0, 1, 0, 'high demand item', '2023-04-20', '2023-04-22', 14, 1500.0, 4.0, 'catalystZ', 'BCH-003', 30000.0, 'approved');

-- Region server performance metrics
CREATE TABLE region_server_performance (
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    region_code TEXT,
    server_id TEXT,
    timestamp DATETIME,
    cpu_usage_percent REAL,
    memory_usage_mb REAL,
    disk_io_mb_s REAL,
    network_in_mb_s REAL,
    network_out_mb_s REAL,
    active_sessions INTEGER,
    error_rate_percent REAL,
    avg_response_ms REAL,
    max_response_ms REAL,
    packet_loss_percent REAL,
    uptime_percent REAL,
    maintenance_flag INTEGER,
    software_version TEXT,
    hardware_model TEXT,
    location_city TEXT,
    notes TEXT
);

INSERT INTO region_server_performance (region_code, server_id, timestamp, cpu_usage_percent, memory_usage_mb, disk_io_mb_s, network_in_mb_s, network_out_mb_s, active_sessions, error_rate_percent, avg_response_ms, max_response_ms, packet_loss_percent, uptime_percent, maintenance_flag, software_version, hardware_model, location_city, notes) VALUES ('NA', 'srv-01', '2023-06-01 12:00:00', 65.2, 16384, 250.5, 120.3, 115.7, 3400, 0.2, 45.6, 120.0, 0.01, 99.9, 0, 'v2.3.1', 'DellR720', 'NewYork', 'stable');
INSERT INTO region_server_performance (region_code, server_id, timestamp, cpu_usage_percent, memory_usage_mb, disk_io_mb_s, network_in_mb_s, network_out_mb_s, active_sessions, error_rate_percent, avg_response_ms, max_response_ms, packet_loss_percent, uptime_percent, maintenance_flag, software_version, hardware_model, location_city, notes) VALUES ('EU', 'srv-02', '2023-06-01 12:05:00', 70.5, 32768, 300.0, 140.0, 130.0, 4200, 0.3, 48.2, 130.0, 0.02, 99.7, 0, 'v2.3.1', 'HPProLiant', 'London', 'high load');
INSERT INTO region_server_performance (region_code, server_id, timestamp, cpu_usage_percent, memory_usage_mb, disk_io_mb_s, network_in_mb_s, network_out_mb_s, active_sessions, error_rate_percent, avg_response_ms, max_response_ms, packet_loss_percent, uptime_percent, maintenance_flag, software_version, hardware_model, location_city, notes) VALUES ('AP', 'srv-03', '2023-06-01 12:10:00', 55.0, 24576, 210.0, 110.0, 105.0, 3000, 0.1, 42.0, 115.0, 0.005, 99.95, 0, 'v2.3.1', 'CiscoUCS', 'Tokyo', 'optimal');

-- Magic affinity profiles for players
CREATE TABLE magic_affinity_profiles (
    profile_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    affinity_type TEXT,
    affinity_score INTEGER,
    last_updated DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    source TEXT,
    reliability_score INTEGER,
    associated_spell TEXT,
    elemental_focus TEXT,
    mana_reserve INTEGER,
    cooldown_reduction_percent REAL,
    bonus_effects TEXT,
    rarity TEXT,
    is_active INTEGER,
    season TEXT,
    rank_within_affinity INTEGER,
    historical_peak INTEGER
);

INSERT INTO magic_affinity_profiles (player_id, affinity_type, affinity_score, last_updated, notes, created_at, updated_at, source, reliability_score, associated_spell, elemental_focus, mana_reserve, cooldown_reduction_percent, bonus_effects, rarity, is_active, season, rank_within_affinity, historical_peak) VALUES (101, 'fire', 85, '2023-04-01', 'high aggression', '2023-01-15', '2023-04-01', 'draco', 9, 'flameburst', 'red', 120, 15.0, 'burn', 'mythic', 1, 'spring', 3, 92);
INSERT INTO magic_affinity_profiles (player_id, affinity_type, affinity_score, last_updated, notes, created_at, updated_at, source, reliability_score, associated_spell, elemental_focus, mana_reserve, cooldown_reduction_percent, bonus_effects, rarity, is_active, season, rank_within_affinity, historical_peak) VALUES (102, 'water', 78, '2023-04-10', 'steady growth', '2023-02-20', '2023-04-10', 'nymph', 8, 'tidalwave', 'blue', 110, 10.0, 'soak', 'rare', 1, 'summer', 5, 80);
INSERT INTO magic_affinity_profiles (player_id, affinity_type, affinity_score, last_updated, notes, created_at, updated_at, source, reliability_score, associated_spell, elemental_focus, mana_reserve, cooldown_reduction_percent, bonus_effects, rarity, is_active, season, rank_within_affinity, historical_peak) VALUES (103, 'earth', 90, '2023-04-15', 'defensive', '2023-03-01', '2023-04-15', 'golem', 10, 'stonewall', 'green', 130, 5.0, 'shield', 'legendary', 1, 'autumn', 2, 95);

-- Event vendor performance metrics
CREATE TABLE event_vendor_performance (
    performance_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    vendor_id INTEGER,
    contract_value_usd REAL,
    services_provided TEXT,
    satisfaction_score INTEGER,
    complaints INTEGER,
    incidents INTEGER,
    setup_time_minutes INTEGER,
    teardown_time_minutes INTEGER,
    staff_count INTEGER,
    equipment_used TEXT,
    insurance_covered INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    vendor_category TEXT,
    compliance_score INTEGER,
    revenue_generated_usd REAL,
    average_wait_time_minutes REAL,
    net_promoter_score INTEGER
);

INSERT INTO event_vendor_performance (event_id, vendor_id, contract_value_usd, services_provided, satisfaction_score, complaints, incidents, setup_time_minutes, teardown_time_minutes, staff_count, equipment_used, insurance_covered, notes, created_at, updated_at, vendor_category, compliance_score, revenue_generated_usd, average_wait_time_minutes, net_promoter_score) VALUES (201, 301, 15000.0, 'catering', 92, 0, 0, 120, 90, 15, 'kitchenset', 1, 'excellent food', '2023-06-01', '2023-06-02', 'food', 98, 30000.0, 5.5, 85);
INSERT INTO event_vendor_performance (event_id, vendor_id, contract_value_usd, services_provided, satisfaction_score, complaints, incidents, setup_time_minutes, teardown_time_minutes, staff_count, equipment_used, insurance_covered, notes, created_at, updated_at, vendor_category, compliance_score, revenue_generated_usd, average_wait_time_minutes, net_promoter_score) VALUES (202, 302, 8000.0, 'audio_visual', 88, 1, 0, 180, 150, 10, 'soundboards', 1, 'good quality', '2023-07-15', '2023-07-16', 'av', 95, 12000.0, 7.2, 78);
INSERT INTO event_vendor_performance (event_id, vendor_id, contract_value_usd, services_provided, satisfaction_score, complaints, incidents, setup_time_minutes, teardown_time_minutes, staff_count, equipment_used, insurance_covered, notes, created_at, updated_at, vendor_category, compliance_score, revenue_generated_usd, average_wait_time_minutes, net_promoter_score) VALUES (203, 303, 5000.0, 'security', 90, 0, 1, 60, 45, 8, 'cameras', 1, 'prompt response', '2023-08-20', '2023-08-21', 'security', 92, 8000.0, 4.0, 82);

-- Digital artifact archive metadata
CREATE TABLE digital_artifact_archive_metadata (
    archive_id INTEGER PRIMARY KEY AUTOINCREMENT,
    artifact_id INTEGER,
    storage_location TEXT,
    file_hash TEXT,
    file_size_bytes INTEGER,
    format TEXT,
    compression TEXT,
    encryption_enabled INTEGER,
    encryption_method TEXT,
    archived_at DATE,
    retrieved_at DATE,
    retrieval_count INTEGER,
    access_level TEXT,
    retention_policy TEXT,
    compliance_status TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    owner_id INTEGER,
    backup_location TEXT,
    checksum_algorithm TEXT
);

INSERT INTO digital_artifact_archive_metadata (artifact_id, storage_location, file_hash, file_size_bytes, format, compression, encryption_enabled, encryption_method, archived_at, retrieved_at, retrieval_count, access_level, retention_policy, compliance_status, notes, created_at, updated_at, owner_id, backup_location, checksum_algorithm) VALUES (401, 'vault01', 'abc123def456', 1048576, 'pdf', 'zip', 1, 'aes256', '2023-01-10', '2023-04-01', 3, 'restricted', '7years', 'compliant', 'original scan', '2023-01-10', '2023-04-01', 12, 'offsite01', 'sha256');
INSERT INTO digital_artifact_archive_metadata (artifact_id, storage_location, file_hash, file_size_bytes, format, compression, encryption_enabled, encryption_method, archived_at, retrieved_at, retrieval_count, access_level, retention_policy, compliance_status, notes, created_at, updated_at, owner_id, backup_location, checksum_algorithm) VALUES (402, 'vault02', 'def789ghi012', 2097152, 'tiff', 'none', 0, NULL, '2023-02-15', '2023-05-20', 1, 'public', 'indefinite', 'pending', 'high resolution', '2023-02-15', '2023-05-20', 15, 'offsite02', 'md5');
INSERT INTO digital_artifact_archive_metadata (artifact_id, storage_location, file_hash, file_size_bytes, format, compression, encryption_enabled, encryption_method, archived_at, retrieved_at, retrieval_count, access_level, retention_policy, compliance_status, notes, created_at, updated_at, owner_id, backup_location, checksum_algorithm) VALUES (403, 'vault03', 'ghi345jkl678', 524288, 'png', 'gzip', 1, 'rsa2048', '2023-03-05', '2023-06-10', 2, 'confidential', '5years', 'compliant', 'artifact diagram', '2023-03-05', '2023-06-10', 18, 'offsite03', 'sha1');

-- Sponsor engagement events tracking
CREATE TABLE sponsor_engagement_events (
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    event_name TEXT,
    event_type TEXT,
    start_date DATE,
    end_date DATE,
    audience_size INTEGER,
    engagement_score INTEGER,
    investment_usd REAL,
    lead_count INTEGER,
    conversion_rate_percent REAL,
    booth_location TEXT,
    speaking_slot_minutes INTEGER,
    branded_content_count INTEGER,
    social_media_mentions INTEGER,
    post_event_feedback_score INTEGER,
    created_at DATE,
    updated_at DATE,
    region TEXT,
    primary_contact TEXT,
    notes TEXT
);

INSERT INTO sponsor_engagement_events (sponsor_id, event_name, event_type, start_date, end_date, audience_size, engagement_score, investment_usd, lead_count, conversion_rate_percent, booth_location, speaking_slot_minutes, branded_content_count, social_media_mentions, post_event_feedback_score, created_at, updated_at, region, primary_contact, notes) VALUES (501, 'Spring Clash', 'tournament', '2023-04-01', '2023-04-03', 5000, 78, 20000.0, 250, 5.0, 'Hall A', 30, 12, 150, 85, '2023-04-01', '2023-04-03', 'NA', 'jdoe', 'high visibility');
INSERT INTO sponsor_engagement_events (sponsor_id, event_name, event_type, start_date, end_date, audience_size, engagement_score, investment_usd, lead_count, conversion_rate_percent, booth_location, speaking_slot_minutes, branded_content_count, social_media_mentions, post_event_feedback_score, created_at, updated_at, region, primary_contact, notes) VALUES (502, 'Summer Summit', 'conference', '2023-07-10', '2023-07-12', 8000, 85, 35000.0, 400, 6.5, 'Expo Center', 45, 20, 250, 92, '2023-07-10', '2023-07-12', 'EU', 'asmith', 'record attendance');
INSERT INTO sponsor_engagement_events (sponsor_id, event_name, event_type, start_date, end_date, audience_size, engagement_score, investment_usd, lead_count, conversion_rate_percent, booth_location, speaking_slot_minutes, branded_content_count, social_media_mentions, post_event_feedback_score, created_at, updated_at, region, primary_contact, notes) VALUES (503, 'Fall Finals', 'tournament', '2023-10-05', '2023-10-07', 6000, 80, 25000.0, 300, 5.8, 'Arena B', 35, 15, 180, 88, '2023-10-05', '2023-10-07', 'AP', 'blee', 'strong player engagement');