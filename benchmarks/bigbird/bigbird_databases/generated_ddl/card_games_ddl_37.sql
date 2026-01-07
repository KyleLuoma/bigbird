-- Player physical measurements and fitness scores
CREATE TABLE player_physical_metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    height_cm INTEGER,
    weight_kg INTEGER,
    arm_span_cm INTEGER,
    hand_size_cm INTEGER,
    reaction_time_ms INTEGER,
    sprint_speed_mps REAL,
    endurance_minutes INTEGER,
    flexibility_score INTEGER,
    body_fat_percent REAL,
    vision_acuity REAL,
    hearing_db REAL,
    lung_capacity_ml INTEGER,
    bmi REAL,
    agility_score INTEGER,
    balance_score INTEGER,
    grip_strength_kg INTEGER,
    core_strength_score INTEGER,
    flexibility_score2 INTEGER,
    stamina_score INTEGER,
    overall_fitness_score INTEGER
);
INSERT INTO player_physical_metrics (id, player_id, height_cm, weight_kg, arm_span_cm, hand_size_cm, reaction_time_ms, sprint_speed_mps, endurance_minutes, flexibility_score, body_fat_percent, vision_acuity, hearing_db, lung_capacity_ml, bmi, agility_score, balance_score, grip_strength_kg, core_strength_score, flexibility_score2, stamina_score, overall_fitness_score)
VALUES (1, 1001, 180, 75, 190, 20, 250, 7.5, 45, 8, 12.5, 1.0, 30, 4500, 23.1, 9, 8, 45, 7, 8, 9, 85);
INSERT INTO player_physical_metrics (id, player_id, height_cm, weight_kg, arm_span_cm, hand_size_cm, reaction_time_ms, sprint_speed_mps, endurance_minutes, flexibility_score, body_fat_percent, vision_acuity, hearing_db, lung_capacity_ml, bmi, agility_score, balance_score, grip_strength_kg, core_strength_score, flexibility_score2, stamina_score, overall_fitness_score)
VALUES (2, 1002, 170, 68, 175, 19, 230, 7.8, 50, 9, 11.0, 1.2, 28, 4700, 23.5, 8, 9, 48, 8, 9, 8, 88);
INSERT INTO player_physical_metrics (id, player_id, height_cm, weight_kg, arm_span_cm, hand_size_cm, reaction_time_ms, sprint_speed_mps, endurance_minutes, flexibility_score, body_fat_percent, vision_acuity, hearing_db, lung_capacity_ml, bmi, agility_score, balance_score, grip_strength_kg, core_strength_score, flexibility_score2, stamina_score, overall_fitness_score)
VALUES (3, 1003, 185, 80, 195, 21, 260, 7.2, 40, 7, 13.2, 0.9, 32, 4600, 23.4, 10, 7, 50, 9, 7, 10, 82);

-- Records of venue maintenance activities
CREATE TABLE venue_maintenance_records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    maintenance_date DATE,
    maintenance_type TEXT,
    contractor_name TEXT,
    duration_hours INTEGER,
    cost_usd REAL,
    parts_replaced TEXT,
    notes TEXT,
    severity_level INTEGER,
    follow_up_required INTEGER,
    equipment_checked TEXT,
    safety_inspection_passed INTEGER,
    temperature_c REAL,
    humidity_percent REAL,
    power_status TEXT,
    water_leak_detected INTEGER,
    fire_suppression_tested INTEGER,
    air_filter_status TEXT,
    documentation_url TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO venue_maintenance_records (id, venue_id, maintenance_date, maintenance_type, contractor_name, duration_hours, cost_usd, parts_replaced, notes, severity_level, follow_up_required, equipment_checked, safety_inspection_passed, temperature_c, humidity_percent, power_status, water_leak_detected, fire_suppression_tested, air_filter_status, documentation_url, created_at, updated_at)
VALUES (1, 10, '2024-01-15', electrical, AcmeEnergy, 4, 1200.5, transformers, routine check, 2, 0, generators, 1, 22.5, 45, stable, 0, 1, clean, http://example.com/doc1, '2024-01-15', '2024-01-15');
INSERT INTO venue_maintenance_records (id, venue_id, maintenance_date, maintenance_type, contractor_name, duration_hours, cost_usd, parts_replaced, notes, severity_level, follow_up_required, equipment_checked, safety_inspection_passed, temperature_c, humidity_percent, power_status, water_leak_detected, fire_suppression_tested, air_filter_status, documentation_url, created_at, updated_at)
VALUES (2, 12, '2024-02-20', plumbing, PipeWorks, 6, 800.0, valves, leak fix, 3, 1, piping, 1, 21.0, 50, stable, 1, 1, replaced, http://example.com/doc2, '2024-02-20', '2024-02-20');
INSERT INTO venue_maintenance_records (id, venue_id, maintenance_date, maintenance_type, contractor_name, duration_hours, cost_usd, parts_replaced, notes, severity_level, follow_up_required, equipment_checked, safety_inspection_passed, temperature_c, humidity_percent, power_status, water_leak_detected, fire_suppression_tested, air_filter_status, documentation_url, created_at, updated_at)
VALUES (3, 15, '2024-03-05', HVAC, ClimateControlCo, 8, 1500.75, filters, seasonal service, 1, 0, ducts, 1, 20.0, 40, stable, 0, 1, clean, http://example.com/doc3, '2024-03-05', '2024-03-05');

-- Assets used in streaming ad campaigns
CREATE TABLE streaming_ad_campaign_assets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    campaign_id INTEGER,
    asset_type TEXT,
    file_path TEXT,
    duration_seconds INTEGER,
    resolution TEXT,
    bitrate_kbps INTEGER,
    language TEXT,
    region TEXT,
    start_date DATE,
    end_date DATE,
    target_audience TEXT,
    cpm REAL,
    impressions_target INTEGER,
    clicks_target INTEGER,
    status TEXT,
    created_by TEXT,
    created_at DATE,
    updated_at DATE,
    notes TEXT,
    file_checksum TEXT,
    asset_version TEXT,
    approved_by TEXT
);
INSERT INTO streaming_ad_campaign_assets (id, campaign_id, asset_type, file_path, duration_seconds, resolution, bitrate_kbps, language, region, start_date, end_date, target_audience, cpm, impressions_target, clicks_target, status, created_by, created_at, updated_at, notes, file_checksum, asset_version, approved_by)
VALUES (1, 200, video, /assets/video1.mp4, 30, 1080p, 3500, en, NA, '2024-04-01', '2024-04-30', gamers, 2.5, 100000, 5000, active, admin, '2024-03-20', '2024-03-20', initial upload, abcdef123456, v1, manager);
INSERT INTO streaming_ad_campaign_assets (id, campaign_id, asset_type, file_path, duration_seconds, resolution, bitrate_kbps, language, region, start_date, end_date, target_audience, cpm, impressions_target, clicks_target, status, created_by, created_at, updated_at, notes, file_checksum, asset_version, approved_by)
VALUES (2, 201, image, /assets/banner1.png, 0, 1920x1080, 0, en, EU, '2024-05-01', '2024-05-31', collectors, 1.8, 80000, 3000, pending, editor, '2024-04-10', '2024-04-10', awaiting review, 123abc456def, v2, senior);
INSERT INTO streaming_ad_campaign_assets (id, campaign_id, asset_type, file_path, duration_seconds, resolution, bitrate_kbps, language, region, start_date, end_date, target_audience, cpm, impressions_target, clicks_target, status, created_by, created_at, updated_at, notes, file_checksum, asset_version, approved_by)
VALUES (3, 202, audio, /assets/audio1.mp3, 15, -, 192, en, APAC, '2024-06-01', '2024-06-15', casual, 1.2, 50000, 2000, active, producer, '2024-05-01', '2024-05-01', final version, 789xyz012ghi, v1, director);

-- Archive of digital artifacts
CREATE TABLE digital_artifact_archive (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    artifact_id INTEGER,
    archive_location TEXT,
    archived_date DATE,
    file_format TEXT,
    file_size_mb REAL,
    checksum TEXT,
    encryption_method TEXT,
    retention_policy TEXT,
    expiration_date DATE,
    accessed_times INTEGER,
    last_accessed DATE,
    archived_by TEXT,
    quality_score REAL,
    integrity_status TEXT,
    notes TEXT,
    compliance_category TEXT,
    storage_tier TEXT,
    backup_required INTEGER,
    backup_status TEXT,
    audit_log_id INTEGER,
    created_at DATE,
    updated_at DATE
);
INSERT INTO digital_artifact_archive (id, artifact_id, archive_location, archived_date, file_format, file_size_mb, checksum, encryption_method, retention_policy, expiration_date, accessed_times, last_accessed, archived_by, quality_score, integrity_status, notes, compliance_category, storage_tier, backup_required, backup_status, audit_log_id, created_at, updated_at)
VALUES (1, 5001, /archive/2024/01, '2024-01-10', png, 2.4, a1b2c3d4, aes256, longterm, '2034-01-10', 5, '2024-03-01', system, 9.5, good, initial archive, gdpr, hot, 1, completed, 1001, '2024-01-10', '2024-01-10');
INSERT INTO digital_artifact_archive (id, artifact_id, archive_location, archived_date, file_format, file_size_mb, checksum, encryption_method, retention_policy, expiration_date, accessed_times, last_accessed, archived_by, quality_score, integrity_status, notes, compliance_category, storage_tier, backup_required, backup_status, audit_log_id, created_at, updated_at)
VALUES (2, 5002, /archive/2024/02, '2024-02-15', mp4, 150.0, e5f6g7h8, aes256, medium, '2029-02-15', 12, '2024-04-20', admin, 8.7, warning, reprocessed, iso, warm, 0, pending, 1002, '2024-02-15', '2024-02-15');
INSERT INTO digital_artifact_archive (id, artifact_id, archive_location, archived_date, file_format, file_size_mb, checksum, encryption_method, retention_policy, expiration_date, accessed_times, last_accessed, archived_by, quality_score, integrity_status, notes, compliance_category, storage_tier, backup_required, backup_status, audit_log_id, created_at, updated_at)
VALUES (3, 5003, /archive/2024/03, '2024-03-20', pdf, 0.8, i9j0k1l2, none, short, '2025-03-20', 3, '2024-05-05', system, 9.9, good, reference doc, internal, cold, 1, completed, 1003, '2024-03-20', '2024-03-20');

-- Performance metrics for sponsorship campaigns
CREATE TABLE sponsorship_campaign_performance (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    campaign_id INTEGER,
    metric_name TEXT,
    metric_value REAL,
    period_start DATE,
    period_end DATE,
    source TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    version TEXT,
    confidence_score REAL,
    target_value REAL,
    achieved_flag INTEGER,
    responsible_user_id INTEGER,
    region TEXT,
    channel TEXT,
    audience_size INTEGER,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    cost_usd REAL,
    roi_percent REAL
);
INSERT INTO sponsorship_campaign_performance (id, campaign_id, metric_name, metric_value, period_start, period_end, source, notes, created_at, updated_at, version, confidence_score, target_value, achieved_flag, responsible_user_id, region, channel, audience_size, impressions, clicks, conversions, cost_usd, roi_percent)
VALUES (1, 300, view_rate, 0.45, '2024-01-01', '2024-01-31', analytics, q1 report, '2024-02-01', '2024-02-01', v1, 0.98, 0.5, 0, 101, NA, online, 200000, 90000, 3000, 150, 50000, 12.0);
INSERT INTO sponsorship_campaign_performance (id, campaign_id, metric_name, metric_value, period_start, period_end, source, notes, created_at, updated_at, version, confidence_score, target_value, achieved_flag, responsible_user_id, region, channel, audience_size, impressions, clicks, conversions, cost_usd, roi_percent)
VALUES (2, 301, click_through, 0.034, '2024-02-01', '2024-02-28', analytics, feb update, '2024-03-01', '2024-03-01', v1, 0.95, 0.04, 0, 102, EU, social, 150000, 60000, 2000, 80, 40000, 10.5);
INSERT INTO sponsorship_campaign_performance (id, campaign_id, metric_name, metric_value, period_start, period_end, source, notes, created_at, updated_at, version, confidence_score, target_value, achieved_flag, responsible_user_id, region, channel, audience_size, impressions, clicks, conversions, cost_usd, roi_percent)
VALUES (3, 302, conversion_rate, 0.012, '2024-03-01', '2024-03-31', analytics, march summary, '2024-04-01', '2024-04-01', v1, 0.97, 0.015, 0, 103, APAC, display, 180000, 75000, 2500, 90, 60000, 15.2);

-- Summary of player community interactions
CREATE TABLE player_community_interaction_stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    month TEXT,
    posts_count INTEGER,
    comments_count INTEGER,
    likes_given INTEGER,
    likes_received INTEGER,
    shares INTEGER,
    followers_gained INTEGER,
    followers_lost INTEGER,
    messages_sent INTEGER,
    messages_received INTEGER,
    groups_joined INTEGER,
    events_attended INTEGER,
    reputation_score INTEGER,
    badge_earned_count INTEGER,
    average_response_time_sec INTEGER,
    reports_made INTEGER,
    reports_received INTEGER,
    infractions INTEGER,
    engagement_score INTEGER,
    created_at DATE,
    updated_at DATE
);
INSERT INTO player_community_interaction_stats (id, player_id, month, posts_count, comments_count, likes_given, likes_received, shares, followers_gained, followers_lost, messages_sent, messages_received, groups_joined, events_attended, reputation_score, badge_earned_count, average_response_time_sec, reports_made, reports_received, infractions, engagement_score, created_at, updated_at)
VALUES (1, 1001, 202401, 12, 45, 80, 150, 20, 30, 2, 60, 55, 3, 2, 850, 5, 15, 0, 1, 0, 920, '2024-02-01', '2024-02-01');
INSERT INTO player_community_interaction_stats (id, player_id, month, posts_count, comments_count, likes_given, likes_received, shares, followers_gained, followers_lost, messages_sent, messages_received, groups_joined, events_attended, reputation_score, badge_earned_count, average_response_time_sec, reports_made, reports_received, infractions, engagement_score, created_at, updated_at)
VALUES (2, 1002, 202401, 8, 30, 60, 120, 15, 20, 1, 40, 45, 2, 1, 770, 4, 20, 1, 0, 0, 820, '2024-02-01', '2024-02-01');
INSERT INTO player_community_interaction_stats (id, player_id, month, posts_count, comments_count, likes_given, likes_received, shares, followers_gained, followers_lost, messages_sent, messages_received, groups_joined, events_attended, reputation_score, badge_earned_count, average_response_time_sec, reports_made, reports_received, infractions, engagement_score, created_at, updated_at)
VALUES (3, 1003, 202401, 15, 55, 100, 200, 30, 50, 3, 80, 70, 4, 3, 920, 7, 12, 0, 2, 1, 970, '2024-02-01', '2024-02-01');

-- Deployments of environmental sensors
CREATE TABLE environmental_sensor_deployments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sensor_id TEXT,
    location_id INTEGER,
    sensor_type TEXT,
    installation_date DATE,
    firmware_version TEXT,
    battery_level_percent INTEGER,
    signal_strength_dbm INTEGER,
    calibration_date DATE,
    last_maintenance DATE,
    status TEXT,
    latitude REAL,
    longitude REAL,
    altitude_m REAL,
    manufacturer TEXT,
    model_number TEXT,
    data_endpoint_url TEXT,
    sampling_interval_sec INTEGER,
    threshold_temp_c REAL,
    threshold_humidity_percent REAL,
    alerts_enabled INTEGER,
    created_at DATE,
    updated_at DATE
);
INSERT INTO environmental_sensor_deployments (id, sensor_id, location_id, sensor_type, installation_date, firmware_version, battery_level_percent, signal_strength_dbm, calibration_date, last_maintenance, status, latitude, longitude, altitude_m, manufacturer, model_number, data_endpoint_url, sampling_interval_sec, threshold_temp_c, threshold_humidity_percent, alerts_enabled, created_at, updated_at)
VALUES (1, SENS001, 101, temperature, '2023-12-01', v1.0, 95, -70, '2024-01-01', '2024-02-01', active, 40.7128, -74.0060, 10, AcmeSensors, TS-100, http://data.example.com/sens001, 60, 30.0, 80.0, 1, '2024-02-01', '2024-02-01');
INSERT INTO environmental_sensor_deployments (id, sensor_id, location_id, sensor_type, installation_date, firmware_version, battery_level_percent, signal_strength_dbm, calibration_date, last_maintenance, status, latitude, longitude, altitude_m, manufacturer, model_number, data_endpoint_url, sampling_interval_sec, threshold_temp_c, threshold_humidity_percent, alerts_enabled, created_at, updated_at)
VALUES (2, SENS002, 102, humidity, '2023-11-15', v1.1, 90, -68, '2024-01-15', '2024-02-10', active, 34.0522, -118.2437, 15, EnviroTech, HM-200, http://data.example.com/sens002, 120, 25.0, 70.0, 1, '2024-02-01', '2024-02-01');
INSERT INTO environmental_sensor_deployments (id, sensor_id, location_id, sensor_type, installation_date, firmware_version, battery_level_percent, signal_strength_dbm, calibration_date, last_maintenance, status, latitude, longitude, altitude_m, manufacturer, model_number, data_endpoint_url, sampling_interval_sec, threshold_temp_c, threshold_humidity_percent, alerts_enabled, created_at, updated_at)
VALUES (3, SENS003, 103, air_quality, '2024-01-05', v2.0, 85, -65, '2024-01-20', '2024-02-15', active, 51.5074, -0.1278, 25, AirQualInc, AQ-300, http://data.example.com/sens003, 30, 22.0, 60.0, 1, '2024-02-01', '2024-02-01');

-- Audit trail for marketplace transactions
CREATE TABLE marketplace_transaction_audit (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    transaction_id INTEGER,
    user_id INTEGER,
    asset_id INTEGER,
    action_type TEXT,
    action_timestamp DATE,
    prior_status TEXT,
    new_status TEXT,
    amount_usd REAL,
    fee_usd REAL,
    tax_usd REAL,
    payment_method TEXT,
    ip_address TEXT,
    device_type TEXT,
    notes TEXT,
    compliance_flag INTEGER,
    reviewed_by TEXT,
    review_timestamp DATE,
    audit_notes TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO marketplace_transaction_audit (audit_id, transaction_id, user_id, asset_id, action_type, action_timestamp, prior_status, new_status, amount_usd, fee_usd, tax_usd, payment_method, ip_address, device_type, notes, compliance_flag, reviewed_by, review_timestamp, audit_notes, created_at, updated_at)
VALUES (1, 9001, 1001, 5001, purchase, '2024-02-15', pending, completed, 49.99, 2.5, 5.0, creditcard, 192168001, desktop, first purchase, 0, auditor1, '2024-02-16', none, '2024-02-15', '2024-02-15');
INSERT INTO marketplace_transaction_audit (audit_id, transaction_id, user_id, asset_id, action_type, action_timestamp, prior_status, new_status, amount_usd, fee_usd, tax_usd, payment_method, ip_address, device_type, notes, compliance_flag, reviewed_by, review_timestamp, audit_notes, created_at, updated_at)
VALUES (2, 9002, 1002, 5002, refund, '2024-03-01', completed, reversed, 19.99, 1.0, 2.0, paypal, 192168002, mobile, refund request, 0, auditor2, '2024-03-02', none, '2024-03-01', '2024-03-01');
INSERT INTO marketplace_transaction_audit (audit_id, transaction_id, user_id, asset_id, action_type, action_timestamp, prior_status, new_status, amount_usd, fee_usd, tax_usd, payment_method, ip_address, device_type, notes, compliance_flag, reviewed_by, review_timestamp, audit_notes, created_at, updated_at)
VALUES (3, 9003, 1003, 5003, purchase, '2024-04-10', pending, completed, 9.99, 0.5, 0.8, cryptocurrency, 192168003, tablet, promo purchase, 0, auditor3, '2024-04-11', none, '2024-04-10', '2024-04-10');

-- Results from game mechanics experimentation
CREATE TABLE game_mechanics_experiment_results (
    experiment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    test_name TEXT,
    version TEXT,
    description TEXT,
    start_time DATE,
    end_time DATE,
    participants_count INTEGER,
    success_rate REAL,
    average_score REAL,
    max_score REAL,
    min_score REAL,
    error_count INTEGER,
    notes TEXT,
    researcher_id INTEGER,
    reviewed INTEGER,
    review_date DATE,
    data_file_path TEXT,
    analysis_summary TEXT,
    published_flag INTEGER,
    citation TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO game_mechanics_experiment_results (experiment_id, test_name, version, description, start_time, end_time, participants_count, success_rate, average_score, max_score, min_score, error_count, notes, researcher_id, reviewed, review_date, data_file_path, analysis_summary, published_flag, citation, created_at, updated_at)
VALUES (1, mana_curve_test, v1, test mana distribution, '2024-01-05', '2024-01-06', 200, 0.87, 75.2, 100, 40, 3, initial run, 501, 1, '2024-01-10', /data/exp1.csv, positive correlation, 1, doi12345, '2024-01-05', '2024-01-05');
INSERT INTO game_mechanics_experiment_results (experiment_id, test_name, version, description, start_time, end_time, participants_count, success_rate, average_score, max_score, min_score, error_count, notes, researcher_id, reviewed, review_date, data_file_path, analysis_summary, published_flag, citation, created_at, updated_at)
VALUES (2, draw_probability, v2, evaluate draw odds, '2024-02-01', '2024-02-02', 150, 0.65, 60.5, 90, 30, 5, second iteration, 502, 1, '2024-02-07', /data/exp2.csv, variance high, 0, doi67890, '2024-02-01', '2024-02-01');
INSERT INTO game_mechanics_experiment_results (experiment_id, test_name, version, description, start_time, end_time, participants_count, success_rate, average_score, max_score, min_score, error_count, notes, researcher_id, reviewed, review_date, data_file_path, analysis_summary, published_flag, citation, created_at, updated_at)
VALUES (3, combat_resolution, v1, combat damage analysis, '2024-03-10', '2024-03-11', 180, 0.92, 82.0, 100, 55, 2, final trial, 503, 1, '2024-03-15', /data/exp3.csv, stable results, 1, doi11223, '2024-03-10', '2024-03-10');

-- Hierarchical locations within the fantasy world
CREATE TABLE fantasy_world_location_hierarchy (
    location_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    type TEXT,
    parent_location_id INTEGER,
    region TEXT,
    continent TEXT,
    latitude REAL,
    longitude REAL,
    elevation_m REAL,
    climate TEXT,
    dominant_species TEXT,
    historical_significance TEXT,
    discovered_date DATE,
    first_explorer TEXT,
    description TEXT,
    map_image_url TEXT,
    travel_time_to_capital_hours REAL,
    resources_available TEXT,
    strategic_value INTEGER,
    population_estimate INTEGER,
    governance_type TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO fantasy_world_location_hierarchy (location_id, name, type, parent_location_id, region, continent, latitude, longitude, elevation_m, climate, dominant_species, historical_significance, discovered_date, first_explorer, description, map_image_url, travel_time_to_capital_hours, resources_available, strategic_value, population_estimate, governance_type, created_at, updated_at)
VALUES (1, Eldoria, city, NULL, northern, Arcanum, 45.0, -30.0, 120, temperate, humans, ancient capital, '1000-01-01', founder, bustling trade hub, http://maps.example.com/eldoria.png, 5.0, iron, 9, 500000, monarchy, '2024-01-01', '2024-01-01');
INSERT INTO fantasy_world_location_hierarchy (location_id, name, type, parent_location_id, region, continent, latitude, longitude, elevation_m, climate, dominant_species, historical_significance, discovered_date, first_explorer, description, map_image_url, travel_time_to_capital_hours, resources_available, strategic_value, population_estimate, governance_type, created_at, updated_at)
VALUES (2, Silvershade Forest, forest, 1, western, Arcanum, 45.5, -30.5, 200, cool, elves, sacred grove, '1020-03-15', ranger, dense woodlands, http://maps.example.com/silvershade.png, 2.0, timber, 7, 12000, council, '2024-01-01', '2024-01-01');
INSERT INTO fantasy_world_location_hierarchy (location_id, name, type, parent_location_id, region, continent, latitude, longitude, elevation_m, climate, dominant_species, historical_significance, discovered_date, first_explorer, description, map_image_url, travel_time_to_capital_hours, resources_available, strategic_value, population_estimate, governance_type, created_at, updated_at)
VALUES (3, Dragonspire, mountain, 1, eastern, Arcanum, 46.0, -29.5, 1500, alpine, dragons, legendary peak, '1100-07-20', explorer, towering basalt, http://maps.example.com/dragonspire.png, 8.0, minerals, 10, 0, theocracy, '2024-01-01', '2024-01-01');