-- Player fitness tracking data
CREATE TABLE player_fitness_tracker (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER NOT NULL,
    session_date DATE NOT NULL,
    steps INTEGER,
    heart_rate_avg INTEGER,
    calories_burned INTEGER,
    workout_type TEXT,
    duration_minutes INTEGER,
    hydration_ml INTEGER,
    sleep_hours REAL,
    stress_level INTEGER,
    mood TEXT,
    notes TEXT,
    device_id TEXT,
    firmware_version TEXT,
    latitude REAL,
    longitude REAL,
    weather_condition TEXT,
    temperature_c REAL,
    altitude_m REAL,
    recovery_score INTEGER
);

INSERT INTO player_fitness_tracker (player_id, session_date, steps, heart_rate_avg, calories_burned, workout_type, duration_minutes, hydration_ml, sleep_hours, stress_level, mood, notes, device_id, firmware_version, latitude, longitude, weather_condition, temperature_c, altitude_m, recovery_score)
VALUES (101, '2023-03-01', 8500, 78, 420, 'cardio', 45, 500, 7.5, 3, 'happy', 'good session', 'dev123', 'v1.2', 40.7128, -74.0060, 'sunny', 22.5, 10, 85);

INSERT INTO player_fitness_tracker (player_id, session_date, steps, heart_rate_avg, calories_burned, workout_type, duration_minutes, hydration_ml, sleep_hours, stress_level, mood, notes, device_id, firmware_version, latitude, longitude, weather_condition, temperature_c, altitude_m, recovery_score)
VALUES (102, '2023-03-02', 7300, 82, 380, 'strength', 60, 600, 6.8, 4, 'focused', 'added new routine', 'dev124', 'v1.3', 34.0522, -118.2437, 'cloudy', 18.0, 30, 78);

INSERT INTO player_fitness_tracker (player_id, session_date, steps, heart_rate_avg, calories_burned, workout_type, duration_minutes, hydration_ml, sleep_hours, stress_level, mood, notes, device_id, firmware_version, latitude, longitude, weather_condition, temperature_c, altitude_m, recovery_score)
VALUES (103, '2023-03-03', 10200, 75, 500, 'cardio', 50, 550, 8.0, 2, 'energized', 'beat personal best', 'dev125', 'v1.4', 51.5074, -0.1278, 'rainy', 15.2, 5, 92);

-- Card artwork color palette information
CREATE TABLE card_artwork_color_palette (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    card_uuid TEXT NOT NULL,
    palette_name TEXT,
    primary_color TEXT,
    secondary_color TEXT,
    accent_color TEXT,
    hue_average REAL,
    saturation_average REAL,
    brightness_average REAL,
    color_count INTEGER,
    dominant_color_hex TEXT,
    complementary_color_hex TEXT,
    created_at DATE,
    updated_at DATE,
    source TEXT,
    analyst TEXT,
    notes TEXT,
    version INTEGER,
    is_verified INTEGER,
    confidence_score REAL,
    image_hash TEXT
);

INSERT INTO card_artwork_color_palette (card_uuid, palette_name, primary_color, secondary_color, accent_color, hue_average, saturation_average, brightness_average, color_count, dominant_color_hex, complementary_color_hex, created_at, updated_at, source, analyst, notes, version, is_verified, confidence_score, image_hash)
VALUES ('uuid001', 'default', 'red', 'black', 'gold', 12.5, 0.85, 0.45, 5, '#FF0000', '#00FF00', '2023-02-15', '2023-02-20', 'scryfall', 'alice', 'initial analysis', 1, 1, 0.97, 'hash001');

INSERT INTO card_artwork_color_palette (card_uuid, palette_name, primary_color, secondary_color, accent_color, hue_average, saturation_average, brightness_average, color_count, dominant_color_hex, complementary_color_hex, created_at, updated_at, source, analyst, notes, version, is_verified, confidence_score, image_hash)
VALUES ('uuid002', 'alt', 'blue', 'white', 'silver', 210.0, 0.70, 0.60, 6, '#0000FF', '#FF6600', '2023-02-16', '2023-02-21', 'scryfall', 'bob', 'alternative version', 1, 0, 0.88, 'hash002');

INSERT INTO card_artwork_color_palette (card_uuid, palette_name, primary_color, secondary_color, accent_color, hue_average, saturation_average, brightness_average, color_count, dominant_color_hex, complementary_color_hex, created_at, updated_at, source, analyst, notes, version, is_verified, confidence_score, image_hash)
VALUES ('uuid003', 'promo', 'green', 'brown', 'bronze', 75.3, 0.65, 0.55, 4, '#00FF00', '#FF00FF', '2023-02-17', '2023-02-22', 'internal', 'carol', 'promo artwork', 2, 1, 0.93, 'hash003');

-- Tournament streaming metrics
CREATE TABLE tournament_streaming_metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER NOT NULL,
    stream_id TEXT,
    start_time DATETIME,
    end_time DATETIME,
    avg_viewers INTEGER,
    peak_viewers INTEGER,
    total_minutes_watched INTEGER,
    chat_message_count INTEGER,
    unique_chatters INTEGER,
    stream_quality TEXT,
    bitrate_kbps INTEGER,
    dropped_frames INTEGER,
    latency_seconds REAL,
    sponsor_tagged INTEGER,
    ad_breaks INTEGER,
    avg_watch_time_seconds REAL,
    region_main TEXT,
    language_main TEXT,
    platform TEXT,
    stream_url TEXT
);

INSERT INTO tournament_streaming_metrics (tournament_id, stream_id, start_time, end_time, avg_viewers, peak_viewers, total_minutes_watched, chat_message_count, unique_chatters, stream_quality, bitrate_kbps, dropped_frames, latency_seconds, sponsor_tagged, ad_breaks, avg_watch_time_seconds, region_main, language_main, platform, stream_url)
VALUES (201, 'str001', '2023-04-01 12:00:00', '2023-04-01 16:00:00', 1200, 2500, 7200, 45000, 3000, '1080p', 4500, 120, 1.5, 1, 3, 1800, 'NA', 'en', 'twitch', 'http://stream.example.com/str001');

INSERT INTO tournament_streaming_metrics (tournament_id, stream_id, start_time, end_time, avg_viewers, peak_viewers, total_minutes_watched, chat_message_count, unique_chatters, stream_quality, bitrate_kbps, dropped_frames, latency_seconds, sponsor_tagged, ad_breaks, avg_watch_time_seconds, region_main, language_main, platform, stream_url)
VALUES (202, 'str002', '2023-04-02 14:00:00', '2023-04-02 18:30:00', 950, 2100, 6900, 38000, 2500, '720p', 3500, 95, 2.0, 0, 2, 1600, 'EU', 'de', 'youtube', 'http://stream.example.com/str002');

INSERT INTO tournament_streaming_metrics (tournament_id, stream_id, start_time, end_time, avg_viewers, peak_viewers, total_minutes_watched, chat_message_count, unique_chatters, stream_quality, bitrate_kbps, dropped_frames, latency_seconds, sponsor_tagged, ad_breaks, avg_watch_time_seconds, region_main, language_main, platform, stream_url)
VALUES (203, 'str003', '2023-04-03 10:00:00', '2023-04-03 14:45:00', 1300, 2700, 7500, 50000, 3400, '1080p', 4800, 110, 1.2, 1, 4, 1900, 'ASIA', 'ja', 'twitch', 'http://stream.example.com/str003');

-- Set production schedule
CREATE TABLE set_production_schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT NOT NULL,
    phase TEXT,
    start_date DATE,
    end_date DATE,
    lead_time_days INTEGER,
    facility_name TEXT,
    manager_name TEXT,
    status TEXT,
    notes TEXT,
    budget_usd INTEGER,
    actual_cost_usd INTEGER,
    percent_complete INTEGER,
    priority INTEGER,
    risk_level TEXT,
    compliance_checked INTEGER,
    audit_date DATE,
    supplier_id INTEGER,
    shipment_id INTEGER,
    quality_score INTEGER
);

INSERT INTO set_production_schedule (set_code, phase, start_date, end_date, lead_time_days, facility_name, manager_name, status, notes, budget_usd, actual_cost_usd, percent_complete, priority, risk_level, compliance_checked, audit_date, supplier_id, shipment_id, quality_score)
VALUES ('M21', 'printing', '2023-01-10', '2023-02-20', 40, 'FacilityA', 'JohnDoe', 'in_progress', 'standard run', 150000, 120000, 80, 1, 'medium', 1, '2023-02-22', 501, 9001, 92);

INSERT INTO set_production_schedule (set_code, phase, start_date, end_date, lead_time_days, facility_name, manager_name, status, notes, budget_usd, actual_cost_usd, percent_complete, priority, risk_level, compliance_checked, audit_date, supplier_id, shipment_id, quality_score)
VALUES ('KHM', 'artwork', '2023-02-01', '2023-03-15', 35, 'FacilityB', 'JaneSmith', 'scheduled', 'high demand', 200000, 0, 0, 2, 'high', 0, NULL, 502, 9002, 0);

INSERT INTO set_production_schedule (set_code, phase, start_date, end_date, lead_time_days, facility_name, manager_name, status, notes, budget_usd, actual_cost_usd, percent_complete, priority, risk_level, compliance_checked, audit_date, supplier_id, shipment_id, quality_score)
VALUES ('ZNR', 'distribution', '2023-03-20', '2023-04-30', 45, 'FacilityC', 'MikeLee', 'planned', 'awaiting artwork', 180000, 0, 0, 3, 'low', 0, NULL, 503, 9003, 0);

-- Digital collectible lease records
CREATE TABLE digital_collectible_lease (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    token_id TEXT NOT NULL,
    owner_user_id INTEGER,
    lease_start DATE,
    lease_end DATE,
    lease_fee_usd REAL,
    renewable INTEGER,
    auto_renewal INTEGER,
    payment_method TEXT,
    contract_hash TEXT,
    terms_version INTEGER,
    asset_type TEXT,
    metadata_uri TEXT,
    last_payment_date DATE,
    next_payment_due DATE,
    breach_penalty_usd REAL,
    status TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO digital_collectible_lease (token_id, owner_user_id, lease_start, lease_end, lease_fee_usd, renewable, auto_renewal, payment_method, contract_hash, terms_version, asset_type, metadata_uri, last_payment_date, next_payment_due, breach_penalty_usd, status, notes, created_at, updated_at)
VALUES ('tokenA001', 1001, '2023-05-01', '2023-08-01', 15.00, 1, 1, 'creditcard', 'hashA001', 1, 'artwork', 'http://meta.example.com/tokenA001', '2023-05-01', '2023-06-01', 50.00, 'active', 'first lease term', '2023-05-01 09:00:00', '2023-05-01 09:00:00');

INSERT INTO digital_collectible_lease (token_id, owner_user_id, lease_start, lease_end, lease_fee_usd, renewable, auto_renewal, payment_method, contract_hash, terms_version, asset_type, metadata_uri, last_payment_date, next_payment_due, breach_penalty_usd, status, notes, created_at, updated_at)
VALUES ('tokenB002', 1002, '2023-06-15', '2023-09-15', 20.00, 0, 0, 'paypal', 'hashB002', 2, 'soundtrack', 'http://meta.example.com/tokenB002', '2023-06-15', '2023-07-15', 75.00, 'pending', 'awaiting approval', '2023-06-15 10:30:00', '2023-06-15 10:30:00');

INSERT INTO digital_collectible_lease (token_id, owner_user_id, lease_start, lease_end, lease_fee_usd, renewable, auto_renewal, payment_method, contract_hash, terms_version, asset_type, metadata_uri, last_payment_date, next_payment_due, breach_penalty_usd, status, notes, created_at, updated_at)
VALUES ('tokenC003', 1003, '2023-07-01', '2023-10-01', 12.50, 1, 0, 'banktransfer', 'hashC003', 1, 'animation', 'http://meta.example.com/tokenC003', '2023-07-01', '2023-08-01', 40.00, 'active', 'auto renewal disabled', '2023-07-01 08:45:00', '2023-07-01 08:45:00');

-- Arena match statistics
CREATE TABLE arena_match_statistics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER NOT NULL,
    arena_id INTEGER,
    player1_id INTEGER,
    player2_id INTEGER,
    winner_id INTEGER,
    duration_seconds INTEGER,
    average_mana_spent REAL,
    cards_played INTEGER,
    spells_cast INTEGER,
    creatures_deployed INTEGER,
    damage_dealt INTEGER,
    damage_taken INTEGER,
    rank_change INTEGER,
    audience_score INTEGER,
    cheat_detected INTEGER,
    replay_url TEXT,
    created_at DATETIME,
    notes TEXT
);

INSERT INTO arena_match_statistics (match_id, arena_id, player1_id, player2_id, winner_id, duration_seconds, average_mana_spent, cards_played, spells_cast, creatures_deployed, damage_dealt, damage_taken, rank_change, audience_score, cheat_detected, replay_url, created_at, notes)
VALUES (301, 10, 2001, 2002, 2001, 420, 3.5, 24, 12, 8, 15, 12, 5, 850, 0, 'http://replay.example.com/301', '2023-04-10 14:20:00', 'standard match');

INSERT INTO arena_match_statistics (match_id, arena_id, player1_id, player2_id, winner_id, duration_seconds, average_mana_spent, cards_played, spells_cast, creatures_deployed, damage_dealt, damage_taken, rank_change, audience_score, cheat_detected, replay_url, created_at, notes)
VALUES (302, 11, 2003, 2004, 2004, 390, 3.2, 22, 10, 7, 13, 14, -3, 780, 0, 'http://replay.example.com/302', '2023-04-11 15:45:00', 'close game');

INSERT INTO arena_match_statistics (match_id, arena_id, player1_id, player2_id, winner_id, duration_seconds, average_mana_spent, cards_played, spells_cast, creatures_deployed, damage_dealt, damage_taken, rank_change, audience_score, cheat_detected, replay_url, created_at, notes)
VALUES (303, 12, 2005, 2006, 2005, 460, 3.8, 26, 14, 9, 18, 11, 7, 920, 1, 'http://replay.example.com/303', '2023-04-12 16:10:00', 'cheat flag raised');

-- Magical ingredient inventory
CREATE TABLE magical_ingredient_inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ingredient_id TEXT NOT NULL,
    name TEXT,
    element TEXT,
    rarity TEXT,
    source_location TEXT,
    quantity INTEGER,
    unit TEXT,
    last_restock_date DATE,
    next_restock_estimate DATE,
    supplier_name TEXT,
    cost_per_unit_usd REAL,
    total_value_usd REAL,
    quality_grade TEXT,
    storage_temperature_c REAL,
    storage_humidity_percent REAL,
    hazard_level TEXT,
    notes TEXT,
    batch_number TEXT,
    expiration_date DATE
);

INSERT INTO magical_ingredient_inventory (ingredient_id, name, element, rarity, source_location, quantity, unit, last_restock_date, next_restock_estimate, supplier_name, cost_per_unit_usd, total_value_usd, quality_grade, storage_temperature_c, storage_humidity_percent, hazard_level, notes, batch_number, expiration_date)
VALUES ('ing001', 'PhoenixFeather', 'fire', 'mythic', 'VolcanicCaves', 15, 'pcs', '2023-03-01', '2023-06-01', 'ArcaneSupplies', 120.00, 1800.00, 'A', 25.0, 40.0, 'high', 'handle with gloves', 'B001', '2025-12-31');

INSERT INTO magical_ingredient_inventory (ingredient_id, name, element, rarity, source_location, quantity, unit, last_restock_date, next_restock_estimate, supplier_name, cost_per_unit_usd, total_value_usd, quality_grade, storage_temperature_c, storage_humidity_percent, hazard_level, notes, batch_number, expiration_date)
VALUES ('ing002', 'MoonstoneShard', 'arcane', 'rare', 'LunarValley', 40, 'g', '2023-02-15', '2023-05-15', 'LunarMines', 45.50, 1820.00, 'B', 10.0, 35.0, 'medium', 'store away from direct light', 'B002', '2024-09-30');

INSERT INTO magical_ingredient_inventory (ingredient_id, name, element, rarity, source_location, quantity, unit, last_restock_date, next_restock_estimate, supplier_name, cost_per_unit_usd, total_value_usd, quality_grade, storage_temperature_c, storage_humidity_percent, hazard_level, notes, batch_number, expiration_date)
VALUES ('ing003', 'AquaPearl', 'water', 'uncommon', 'DeepSeaGrotto', 120, 'ml', '2023-01-20', '2023-04-20', 'OceanicHarvest', 8.75, 1050.00, 'C', 5.0, 60.0, 'low', 'seal tightly after use', 'B003', '2026-03-15');

-- Sponsor engagement metrics
CREATE TABLE sponsor_engagement_metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER NOT NULL,
    campaign_id INTEGER,
    engagement_type TEXT,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    cost_usd REAL,
    revenue_usd REAL,
    roi_percent REAL,
    start_date DATE,
    end_date DATE,
    region TEXT,
    platform TEXT,
    creative_id TEXT,
    ad_format TEXT,
    frequency_cap INTEGER,
    viewability_percent REAL,
    fraud_score INTEGER,
    notes TEXT,
    created_at DATETIME
);

INSERT INTO sponsor_engagement_metrics (sponsor_id, campaign_id, engagement_type, impressions, clicks, conversions, cost_usd, revenue_usd, roi_percent, start_date, end_date, region, platform, creative_id, ad_format, frequency_cap, viewability_percent, fraud_score, notes, created_at)
VALUES (401, 1001, 'video', 50000, 2500, 300, 12000.00, 18000.00, 50.0, '2023-03-01', '2023-04-01', 'NA', 'twitch', 'cr001', 'midroll', 3, 85.5, 2, 'high engagement', '2023-03-02 08:00:00');

INSERT INTO sponsor_engagement_metrics (sponsor_id, campaign_id, engagement_type, impressions, clicks, conversions, cost_usd, revenue_usd, roi_percent, start_date, end_date, region, platform, creative_id, ad_format, frequency_cap, viewability_percent, fraud_score, notes, created_at)
VALUES (402, 1002, 'banner', 75000, 1800, 210, 9000.00, 13000.00, 44.4, '2023-03-15', '2023-04-15', 'EU', 'youtube', 'cr002', 'display', 2, 78.2, 1, 'steady performance', '2023-03-16 09:15:00');

INSERT INTO sponsor_engagement_metrics (sponsor_id, campaign_id, engagement_type, impressions, clicks, conversions, cost_usd, revenue_usd, roi_percent, start_date, end_date, region, platform, creative_id, ad_format, frequency_cap, viewability_percent, fraud_score, notes, created_at)
VALUES (403, 1003, 'sponsored_stream', 60000, 3000, 350, 15000.00, 21000.00, 40.0, '2023-04-01', '2023-05-01', 'ASIA', 'twitch', 'cr003', 'pre-roll', 4, 90.0, 3, 'excellent reach', '2023-04-02 10:30:00');

-- Player mental health assessments
CREATE TABLE player_mental_health_assessments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER NOT NULL,
    assessment_date DATE,
    stress_score INTEGER,
    anxiety_score INTEGER,
    depression_score INTEGER,
    sleep_quality INTEGER,
    mood_rating INTEGER,
    coping_score INTEGER,
    therapy_sessions INTEGER,
    medication_status TEXT,
    notes TEXT,
    assessor_name TEXT,
    follow_up_date DATE,
    risk_level TEXT,
    recommended_actions TEXT,
    confidence_level INTEGER,
    overall_wellbeing INTEGER,
    health_score INTEGER,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO player_mental_health_assessments (player_id, assessment_date, stress_score, anxiety_score, depression_score, sleep_quality, mood_rating, coping_score, therapy_sessions, medication_status, notes, assessor_name, follow_up_date, risk_level, recommended_actions, confidence_level, overall_wellbeing, health_score, created_at, updated_at)
VALUES (501, '2023-04-20', 4, 3, 2, 8, 7, 6, 2, 'none', 'stable', 'DrSmith', '2023-05-20', 'low', 'maintain routine', 9, 8, 85, '2023-04-20 11:00:00', '2023-04-20 11:00:00');

INSERT INTO player_mental_health_assessments (player_id, assessment_date, stress_score, anxiety_score, depression_score, sleep_quality, mood_rating, coping_score, therapy_sessions, medication_status, notes, assessor_name, follow_up_date, risk_level, recommended_actions, confidence_level, overall_wellbeing, health_score, created_at, updated_at)
VALUES (502, '2023-04-22', 6, 5, 4, 6, 5, 5, 3, 'prescribed', 'needs monitoring', 'DrLee', '2023-05-22', 'medium', 'increase therapy', 7, 6, 70, '2023-04-22 14:30:00', '2023-04-22 14:30:00');

INSERT INTO player_mental_health_assessments (player_id, assessment_date, stress_score, anxiety_score, depression_score, sleep_quality, mood_rating, coping_score, therapy_sessions, medication_status, notes, assessor_name, follow_up_date, risk_level, recommended_actions, confidence_level, overall_wellbeing, health_score, created_at, updated_at)
VALUES (503, '2023-04-25', 8, 7, 6, 4, 3, 4, 4, 'prescribed', 'high risk', 'DrKim', '2023-05-25', 'high', 'intensive counseling', 5, 4, 55, '2023-04-25 09:45:00', '2023-04-25 09:45:00');

-- Environmental sensor readings
CREATE TABLE environmental_sensor_readings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sensor_id TEXT NOT NULL,
    location_code TEXT,
    reading_timestamp DATETIME,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    noise_db INTEGER,
    light_lux INTEGER,
    vibration_g REAL,
    battery_percent INTEGER,
    signal_strength INTEGER,
    firmware_version TEXT,
    calibrated INTEGER,
    anomaly_flag INTEGER,
    notes TEXT,
    maintenance_due_date DATE,
    last_calibration_date DATE,
    sensor_type TEXT,
    data_quality_score INTEGER
);

INSERT INTO environmental_sensor_readings (sensor_id, location_code, reading_timestamp, temperature_c, humidity_percent, co2_ppm, noise_db, light_lux, vibration_g, battery_percent, signal_strength, firmware_version, calibrated, anomaly_flag, notes, maintenance_due_date, last_calibration_date, sensor_type, data_quality_score)
VALUES ('env001', 'LOC01', '2023-04-10 08:00:00', 22.5, 45.0, 420, 55, 300, 0.02, 95, 80, 'v1.0', 1, 0, 'normal operation', '2023-10-01', '2023-04-01', 'temperature', 98);

INSERT INTO environmental_sensor_readings (sensor_id, location_code, reading_timestamp, temperature_c, humidity_percent, co2_ppm, noise_db, light_lux, vibration_g, battery_percent, signal_strength, firmware_version, calibrated, anomaly_flag, notes, maintenance_due_date, last_calibration_date, sensor_type, data_quality_score)
VALUES ('env002', 'LOC02', '2023-04-10 08:05:00', 19.0, 50.0, 500, 60, 250, 0.03, 90, 78, 'v1.1', 1, 0, 'stable', '2023-10-15', '2023-04-05', 'humidity', 96);

INSERT INTO environmental_sensor_readings (sensor_id, location_code, reading_timestamp, temperature_c, humidity_percent, co2_ppm, noise_db, light_lux, vibration_g, battery_percent, signal_strength, firmware_version, calibrated, anomaly_flag, notes, maintenance_due_date, last_calibration_date, sensor_type, data_quality_score)
VALUES ('env003', 'LOC03', '2023-04-10 08:10:00', 25.2, 40.0, 380, 50, 320, 0.01, 98, 85, 'v1.0', 1, 0, 'optimal', '2023-11-01', '2023-04-08', 'co2', 99);