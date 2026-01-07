-- AI Predictive Models
CREATE TABLE ai_predictive_models (
    model_id INTEGER PRIMARY KEY AUTOINCREMENT,
    model_name TEXT NOT NULL,
    version TEXT,
    algorithm TEXT,
    training_dataset TEXT,
    feature_count INTEGER,
    accuracy REAL,
    precision REAL,
    recall REAL,
    f1_score REAL,
    training_start_date DATE,
    training_end_date DATE,
    hyperparameters TEXT,
    input_shape TEXT,
    output_shape TEXT,
    created_by TEXT,
    created_at DATETIME,
    description TEXT,
    status TEXT,
    notes TEXT
);

INSERT INTO ai_predictive_models (model_name, version, algorithm, training_dataset, feature_count, accuracy, precision, recall, f1_score, training_start_date, training_end_date, hyperparameters, input_shape, output_shape, created_by, created_at, description, status, notes) VALUES
('LapTimePredictor', '1.0', 'GradientBoosting', '2023SeasonData', 45, 0.92, 0.89, 0.90, 0.895, '2023-01-10', '2023-02-15', '{"max_depth":5,"n_estimators":200}', '(64,)', '(1,)', 'DataScienceTeam', '2023-02-16 08:00:00', 'Predicts lap times based on telemetry', 'active', 'Initial release');

INSERT INTO ai_predictive_models (model_name, version, algorithm, training_dataset, feature_count, accuracy, precision, recall, f1_score, training_start_date, training_end_date, hyperparameters, input_shape, output_shape, created_by, created_at, description, status, notes) VALUES
('PitStopOptimizer', '2.1', 'NeuralNetwork', 'PitStopLogs2022', 30, 0.87, 0.85, 0.84, 0.845, '2022-06-01', '2022-07-20', '{"layers":3,"units":128}', '(128,)', '(1,)', 'AITeam', '2022-07-21 09:30:00', 'Optimizes pit stop timing', 'active', 'Retrained with 2022 data');

INSERT INTO ai_predictive_models (model_name, version, algorithm, training_dataset, feature_count, accuracy, precision, recall, f1_score, training_start_date, training_end_date, hyperparameters, input_shape, output_shape, created_by, created_at, description, status, notes) VALUES
('WeatherImpactModel', '0.9', 'RandomForest', 'WeatherRaceData', 20, 0.78, 0.80, 0.77, 0.785, '2023-03-05', '2023-03-20', '{"n_estimators":150}', '(20,)', '(1,)', 'MeteorologyGroup', '2023-03-21 07:45:00', 'Estimates race outcome based on weather', 'testing', 'Pending validation');

-- Blockchain Transaction Log
CREATE TABLE blockchain_transaction_log (
    tx_id INTEGER PRIMARY KEY AUTOINCREMENT,
    block_number INTEGER,
    timestamp DATETIME,
    from_address TEXT,
    to_address TEXT,
    amount REAL,
    currency TEXT,
    gas_used INTEGER,
    gas_price REAL,
    transaction_fee REAL,
    status TEXT,
    confirmation_count INTEGER,
    tx_hash TEXT,
    miner TEXT,
    network TEXT,
    payload TEXT,
    signature TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    notes TEXT
);

INSERT INTO blockchain_transaction_log (block_number, timestamp, from_address, to_address, amount, currency, gas_used, gas_price, transaction_fee, status, confirmation_count, tx_hash, miner, network, payload, signature, created_at, updated_at, notes) VALUES
(145679, '2024-01-12 14:22:10', '0xABC123', '0xDEF456', 1500.0, 'USDT', 21000, 0.000025, 0.525, 'confirmed', 12, '0xHASH001', 'miner01', 'Ethereum', '{}', '0xSIG001', '2024-01-12 14:22:15', '2024-01-12 14:22:15', '');

INSERT INTO blockchain_transaction_log (block_number, timestamp, from_address, to_address, amount, currency, gas_used, gas_price, transaction_fee, status, confirmation_count, tx_hash, miner, network, payload, signature, created_at, updated_at, notes) VALUES
(145682, '2024-01-12 14:25:05', '0xGHI789', '0xJKL012', 250.5, 'USDC', 30000, 0.000030, 0.9, 'pending', 0, '0xHASH002', 'miner02', 'Ethereum', '{}', '0xSIG002', '2024-01-12 14:25:06', '2024-01-12 14:25:06', 'Awaiting confirmations');

INSERT INTO blockchain_transaction_log (block_number, timestamp, from_address, to_address, amount, currency, gas_used, gas_price, transaction_fee, status, confirmation_count, tx_hash, miner, network, payload, signature, created_at, updated_at, notes) VALUES
(145690, '2024-01-12 14:40:22', '0xMNO345', '0xPQR678', 10000.0, 'BTC', 50000, 0.000015, 0.75, 'failed', 0, '0xHASH003', 'miner03', 'Bitcoin', '{}', '0xSIG003', '2024-01-12 14:40:23', '2024-01-12 14:40:23', 'Insufficient funds');

-- eSports Event Schedule
CREATE TABLE e_sports_event_schedule (
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_name TEXT NOT NULL,
    game_title TEXT,
    season TEXT,
    start_date DATE,
    end_date DATE,
    venue TEXT,
    city TEXT,
    country TEXT,
    prize_pool REAL,
    sponsor TEXT,
    broadcast_partner TEXT,
    timezone TEXT,
    registration_deadline DATE,
    player_limit INTEGER,
    format TEXT,
    description TEXT,
    status TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO e_sports_event_schedule (event_name, game_title, season, start_date, end_date, venue, city, country, prize_pool, sponsor, broadcast_partner, timezone, registration_deadline, player_limit, format, description, status, created_at, updated_at) VALUES
('Grand Prix eRacing', 'F1 2024 Sim', '2024', '2024-06-01', '2024-06-03', 'Virtual Arena', 'Los Angeles', 'USA', 500000.0, 'TechCorp', 'StreamLive', 'UTC-7', '2024-05-15', 32, 'Knockout', 'Official eRacing championship', 'scheduled', '2024-02-01 09:00:00', '2024-02-01 09:00:00');

INSERT INTO e_sports_event_schedule (event_name, game_title, season, start_date, end_date, venue, city, country, prize_pool, sponsor, broadcast_partner, timezone, registration_deadline, player_limit, format, description, status, created_at, updated_at) VALUES
('Summer Blitz', 'Valorant', '2024 Summer', '2024-07-10', '2024-07-12', 'Cyber Dome', 'Berlin', 'Germany', 250000.0, 'GamingGear', 'LiveCast', 'UTC+2', '2024-06-30', 64, 'Group Stage', 'Summer competition for Valorant teams', 'planned', '2024-03-05 11:30:00', '2024-03-05 11:30:00');

INSERT INTO e_sports_event_schedule (event_name, game_title, season, start_date, end_date, venue, city, country, prize_pool, sponsor, broadcast_partner, timezone, registration_deadline, player_limit, format, description, status, created_at, updated_at) VALUES
('Winter Cup', 'League of Legends', '2024 Winter', '2024-12-05', '2024-12-08', 'Ice Stadium', 'Seoul', 'SouthKorea', 750000.0, 'EnergyPlus', 'BattleStream', 'UTC+9', '2024-11-20', 128, 'Double Elimination', 'Year end championship', 'draft', '2024-04-10 14:45:00', '2024-04-10 14:45:00');

-- Fan Haptic Feedback Devices
CREATE TABLE fan_haptic_feedback_devices (
    device_id INTEGER PRIMARY KEY AUTOINCREMENT,
    device_model TEXT,
    manufacturer TEXT,
    firmware_version TEXT,
    deployment_date DATE,
    location TEXT,
    venue TEXT,
    connection_type TEXT,
    battery_level REAL,
    signal_strength REAL,
    usage_hours INTEGER,
    last_maintenance DATE,
    status TEXT,
    firmware_update_available BOOLEAN,
    assigned_staff TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    serial_number TEXT,
    mac_address TEXT
);

INSERT INTO fan_haptic_feedback_devices (device_model, manufacturer, firmware_version, deployment_date, location, venue, connection_type, battery_level, signal_strength, usage_hours, last_maintenance, status, firmware_update_available, assigned_staff, notes, created_at, updated_at, serial_number, mac_address) VALUES
('HaptiX200', 'SenseTech', '1.3.0', '2023-05-01', 'Grandstand A', 'Monaco Circuit', 'WiFi', 85.5, -60.0, 1200, '2023-12-15', 'active', 0, 'John Doe', '', '2023-05-02 08:00:00', '2023-12-16 09:30:00', 'HX200-001', '00:1A:2B:3C:4D:5E');

INSERT INTO fan_haptic_feedback_devices (device_model, manufacturer, firmware_version, deployment_date, location, venue, connection_type, battery_level, signal_strength, usage_hours, last_maintenance, status, firmware_update_available, assigned_staff, notes, created_at, updated_at, serial_number, mac_address) VALUES
('VibeTouch Pro', 'PulseLabs', '2.0.1', '2023-08-15', 'Pit Lane', 'Silverstone', 'Bluetooth', 72.0, -55.0, 800, '2024-01-10', 'maintenance', 1, 'Alice Smith', 'Battery replaced', '2023-08-16 09:15:00', '2024-01-11 10:45:00', 'VTPro-045', '00:1F:2E:3D:4C:5B');

INSERT INTO fan_haptic_feedback_devices (device_model, manufacturer, firmware_version, deployment_date, location, venue, connection_type, battery_level, signal_strength, usage_hours, last_maintenance, status, firmware_update_available, assigned_staff, notes, created_at, updated_at, serial_number, mac_address) VALUES
('FeelWave X', 'TactileInc', '3.1.2', '2024-02-20', 'Hospitality Suite', 'Suzuka', 'WiFi', 94.0, -58.0, 300, '2024-02-25', 'active', 0, 'Michael Lee', '', '2024-02-21 07:30:00', '2024-02-25 08:00:00', 'FWX-789', '00:2A:3B:4C:5D:6E');

-- Drone Inspection Missions
CREATE TABLE drone_inspection_missions (
    mission_id INTEGER PRIMARY KEY AUTOINCREMENT,
    drone_id TEXT,
    pilot_id TEXT,
    mission_date DATE,
    start_time TIME,
    end_time TIME,
    weather_conditions TEXT,
    altitude_max REAL,
    speed_avg REAL,
    distance_covered REAL,
    images_captured INTEGER,
    video_duration REAL,
    anomalies_detected INTEGER,
    mission_status TEXT,
    battery_start REAL,
    battery_end REAL,
    data_storage_path TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO drone_inspection_missions (drone_id, pilot_id, mission_date, start_time, end_time, weather_conditions, altitude_max, speed_avg, distance_covered, images_captured, video_duration, anomalies_detected, mission_status, battery_start, battery_end, data_storage_path, notes, created_at, updated_at) VALUES
('DRN-01', 'PILOT_A', '2024-04-10', '09:00:00', '09:45:00', 'Clear', 120.5, 45.2, 8.3, 250, 12.5, 0, 'completed', 100.0, 30.0, '/data/inspections/2024/04/10/DRN-01', '', '2024-04-10 09:46:00', '2024-04-10 09:46:00');

INSERT INTO drone_inspection_missions (drone_id, pilot_id, mission_date, start_time, end_time, weather_conditions, altitude_max, speed_avg, distance_covered, images_captured, video_duration, anomalies_detected, mission_status, battery_start, battery_end, data_storage_path, notes, created_at, updated_at) VALUES
('DRN-02', 'PILOT_B', '2024-04-12', '10:15:00', '11:00:00', 'Windy', 95.0, 38.7, 6.1, 180, 9.8, 2, 'completed', 100.0, 25.0, '/data/inspections/2024/04/12/DRN-02', 'Minor antenna damage noted', '2024-04-12 11:01:00', '2024-04-12 11:01:00');

INSERT INTO drone_inspection_missions (drone_id, pilot_id, mission_date, start_time, end_time, weather_conditions, altitude_max, speed_avg, distance_covered, images_captured, video_duration, anomalies_detected, mission_status, battery_start, battery_end, data_storage_path, notes, created_at, updated_at) VALUES
('DRN-03', 'PILOT_C', '2024-04-15', '08:30:00', '09:20:00', 'Rain', 85.0, 32.5, 5.0, 150, 8.0, 5, 'aborted', 100.0, 60.0, '/data/inspections/2024/04/15/DRN-03', 'Heavy rain forced landing', '2024-04-15 09:21:00', '2024-04-15 09:21:00');

-- Augmented Reality Interactive Zones
CREATE TABLE augmented_reality_interactive_zones (
    zone_id INTEGER PRIMARY KEY AUTOINCREMENT,
    zone_name TEXT,
    venue_id INTEGER,
    area_sq_m REAL,
    sponsor TEXT,
    activation_date DATE,
    deactivation_date DATE,
    content_type TEXT,
    interaction_type TEXT,
    max_concurrent_users INTEGER,
    average_dwell_time_sec INTEGER,
    hardware_version TEXT,
    software_version TEXT,
    maintenance_schedule TEXT,
    status TEXT,
    created_by TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    notes TEXT,
    latitude REAL,
    longitude REAL
);

INSERT INTO augmented_reality_interactive_zones (zone_name, venue_id, area_sq_m, sponsor, activation_date, deactivation_date, content_type, interaction_type, max_concurrent_users, average_dwell_time_sec, hardware_version, software_version, maintenance_schedule, status, created_by, created_at, updated_at, notes, latitude, longitude) VALUES
('Pit Lane AR Experience', 1, 350.0, 'TechNova', '2024-03-01', NULL, '3DModels', 'Touch', 200, 120, 'v2.1', '1.4.0', 'Quarterly', 'active', 'ARTeam', '2024-02-15 10:00:00', '2024-02-15 10:00:00', '', 43.7305, 7.4180);

INSERT INTO augmented_reaction_interactive_zones (zone_name, venue_id, area_sq_m, sponsor, activation_date, deactivation_date, content_type, interaction_type, max_concurrent_users, average_dwell_time_sec, hardware_version, software_version, maintenance_schedule, status, created_by, created_at, updated_at, notes, latitude, longitude) VALUES
('Grandstand Horizon', 2, 500.0, 'VisionX', '2024-04-15', NULL, 'LiveOverlay', 'Gesture', 300, 180, 'v3.0', '2.0.1', 'Monthly', 'active', 'ARTeam', '2024-04-01 09:30:00', '2024-04-01 09:30:00', 'High traffic zone', 48.8566, 2.3522);

INSERT INTO augmented_reality_interactive_zones (zone_name, venue_id, area_sq_m, sponsor, activation_date, deactivation_date, content_type, interaction_type, max_concurrent_users, average_dwell_time_sec, hardware_version, software_version, maintenance_schedule, status, created_by, created_at, updated_at, notes, latitude, longitude) VALUES
('Fan Plaza XR', 3, 420.0, 'ImmersiveCo', '2024-05-10', NULL, 'MixedReality', 'Voice', 250, 150, 'v2.5', '1.9.3', 'Biannual', 'testing', 'ARTeam', '2024-05-01 08:45:00', '2024-05-01 08:45:00', 'Beta testing phase', 34.0522, -118.2437);

-- Crypto Sponsorship Agreements
CREATE TABLE crypto_sponsorship_agreements (
    agreement_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_name TEXT,
    crypto_address TEXT,
    token_symbol TEXT,
    amount REAL,
    valuation_usd REAL,
    start_date DATE,
    end_date DATE,
    platform TEXT,
    contract_url TEXT,
    terms_summary TEXT,
    compliance_status TEXT,
    audit_report_url TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    notes TEXT,
    payment_schedule TEXT,
    vesting_period TEXT,
    escrow_agent TEXT,
    status TEXT
);

INSERT INTO crypto_sponsorship_agreements (sponsor_name, crypto_address, token_symbol, amount, valuation_usd, start_date, end_date, platform, contract_url, terms_summary, compliance_status, audit_report_url, created_at, updated_at, notes, payment_schedule, vesting_period, escrow_agent, status) VALUES
('BlockFuel', '0xBLOCFU1234567890', 'BFU', 10000.0, 200000.0, '2024-01-01', '2024-12-31', 'Ethereum', 'http://contracts.blockfuel.com/2024', 'Sponsorship for 2024 season', 'compliant', 'http://audit.blockfuel.com/2024', '2024-01-02 09:00:00', '2024-01-02 09:00:00', '', 'Quarterly', '12 months', 'EscrowCo', 'active');

INSERT INTO crypto_sponsorship_agreements (sponsor_name, crypto_address, token_symbol, amount, valuation_usd, start_date, end_date, platform, contract_url, terms_summary, compliance_status, audit_report_url, created_at, updated_at, notes, payment_schedule, vesting_period, escrow_agent, status) VALUES
('CryptoShift', '0xCRYSH1234567890', 'CST', 5000.0, 125000.0, '2024-03-15', '2025-03-14', 'BinanceSmartChain', 'http://contracts.cryptoshift.com/2024', 'One-year branding agreement', 'pending', 'http://audit.cryptoshift.com/2024', '2024-03-16 10:15:00', '2024-03-16 10:15:00', '', 'Monthly', '24 months', 'NeutralEscrow', 'pending');

INSERT INTO crypto_sponsorship_agreements (sponsor_name, crypto_address, token_symbol, amount, valuation_usd, start_date, end_date, platform, contract_url, terms_summary, compliance_status, audit_report_url, created_at, updated_at, notes, payment_schedule, vesting_period, escrow_agent, status) VALUES
('DeltaToken', '0xDLTA1234567890', 'DLT', 7500.0, 150000.0, '2024-06-01', '2025-05-31', 'Polygon', 'http://contracts.deltatoken.com/2024', 'Mid-season sponsorship', 'compliant', 'http://audit.deltatoken.com/2024', '2024-06-02 08:30:00', '2024-06-02 08:30:00', '', 'Bi-Monthly', '18 months', 'SecureEscrow', 'active');

-- AI Chatbot Interaction Logs
CREATE TABLE ai_chatbot_interaction_logs (
    interaction_id INTEGER PRIMARY KEY AUTOINCREMENT,
    chatbot_id TEXT,
    session_id TEXT,
    user_id TEXT,
    timestamp DATETIME,
    channel TEXT,
    language TEXT,
    input_text TEXT,
    intent TEXT,
    confidence_score REAL,
    response_text TEXT,
    response_time_ms INTEGER,
    escalation_flag BOOLEAN,
    feedback_score INTEGER,
    resolved_flag BOOLEAN,
    created_at DATETIME,
    updated_at DATETIME,
    notes TEXT,
    platform_version TEXT,
    location TEXT
);

INSERT INTO ai_chatbot_interaction_logs (chatbot_id, session_id, user_id, timestamp, channel, language, input_text, intent, confidence_score, response_text, response_time_ms, escalation_flag, feedback_score, resolved_flag, created_at, updated_at, notes, platform_version, location) VALUES
('BOT01', 'SES123', 'USR001', '2024-04-20 14:22:10', 'web', 'en', 'What is the race schedule?', 'GetSchedule', 0.96, 'The next race is on June 1 at Monaco.', 150, 0, 5, 1, '2024-04-20 14:22:11', '2024-04-20 14:22:11', '', 'v2.5', 'USA');

INSERT INTO ai_chatbot_interaction_logs (chatbot_id, session_id, user_id, timestamp, channel, language, input_text, intent, confidence_score, response_text, response_time_ms, escalation_flag, feedback_score, resolved_flag, created_at, updated_at, notes, platform_version, location) VALUES
('BOT02', 'SES124', 'USR002', '2024-04-20 15:05:30', 'mobile', 'es', '¿Cuál es el clima en Silverstone?', 'GetWeather', 0.92, 'El clima es parcialmente nublado con 12°C.', 200, 0, 4, 1, '2024-04-20 15:05:31', '2024-04-20 15:05:31', '', 'v2.5', 'Spain');

INSERT INTO ai_chatbot_interaction_logs (chatbot_id, session_id, user_id, timestamp, channel, language, input_text, intent, confidence_score, response_text, response_time_ms, escalation_flag, feedback_score, resolved_flag, created_at, updated_at, notes, platform_version, location) VALUES
('BOT01', 'SES125', 'USR003', '2024-04-20 16:40:05', 'web', 'en', 'I need assistance with my ticket purchase.', 'TicketSupport', 0.88, 'Please provide your order number so I can help.', 250, 0, 3, 0, '2024-04-20 16:40:06', '2024-04-20 16:40:06', '', 'v2.5', 'UK');

-- Renewable Energy Asset Inventory
CREATE TABLE renewable_energy_asset_inventory (
    asset_id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_type TEXT,
    manufacturer TEXT,
    model TEXT,
    capacity_mw REAL,
    installation_date DATE,
    location TEXT,
    latitude REAL,
    longitude REAL,
    grid_connection_status TEXT,
    maintenance_cycle_days INTEGER,
    last_maintenance_date DATE,
    next_maintenance_date DATE,
    efficiency_percent REAL,
    operational_status TEXT,
    owner TEXT,
    financing_source TEXT,
    depreciation_years INTEGER,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO renewable_energy_asset_inventory (asset_type, manufacturer, model, capacity_mw, installation_date, location, latitude, longitude, grid_connection_status, maintenance_cycle_days, last_maintenance_date, next_maintenance_date, efficiency_percent, operational_status, owner, financing_source, depreciation_years, created_at, updated_at) VALUES
('SolarPanel', 'SunPower', 'SP-500', 0.5, '2022-03-15', 'Monaco Solar Farm', 43.7305, 7.4180, 'connected', 180, '2023-09-01', '2024-02-27', 19.5, 'operational', 'Monaco Energy', 'GreenBond', 20, '2022-03-16 09:00:00', '2023-09-02 10:00:00');

INSERT INTO renewable_energy_asset_inventory (asset_type, manufacturer, model, capacity_mw, installation_date, location, latitude, longitude, grid_connection_status, maintenance_cycle_days, last_maintenance_date, next_maintenance_date, efficiency_percent, operational_status, owner, financing_source, depreciation_years, created_at, updated_at) VALUES
('WindTurbine', 'Vestas', 'V150', 3.0, '2021-07-20', 'Silverstone Wind Park', 52.0732, -1.0175, 'connected', 365, '2023-06-15', '2024-06-15', 42.0, 'operational', 'Silverstone Power', 'Equity', 25, '2021-07-21 08:30:00', '2023-06-16 09:45:00');

INSERT INTO renewable_energy_asset_inventory (asset_type, manufacturer, model, capacity_mw, installation_date, location, latitude, longitude, grid_connection_status, maintenance_cycle_days, last_maintenance_date, next_maintenance_date, efficiency_percent, operational_status, owner, financing_source, depreciation_years, created_at, updated_at) VALUES
('HydroPlant', 'Andritz', 'AP-2500', 2.5, '2020-11-05', 'Suzuka Hydro Facility', 34.9795, 136.6095, 'connected', 730, '2023-01-10', '2025-01-10', 55.0, 'operational', 'Suzuka Utilities', 'Loan', 30, '2020-11-06 07:45:00', '2023-01-11 08:15:00');

-- Spectator Health Monitoring Devices
CREATE TABLE spectator_health_monitoring_devices (
    device_id INTEGER PRIMARY KEY AUTOINCREMENT,
    device_type TEXT,
    vendor TEXT,
    firmware_version TEXT,
    deployment_date DATE,
    venue_id INTEGER,
    location_description TEXT,
    battery_life_hours INTEGER,
    last_calibration_date DATE,
    sensor_type TEXT,
    data_upload_interval_sec INTEGER,
    status TEXT,
    assigned_technician TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    serial_number TEXT,
    mac_address TEXT,
    wifi_ssid TEXT,
    ip_address TEXT
);

INSERT INTO spectator_health_monitoring_devices (device_type, vendor, firmware_version, deployment_date, venue_id, location_description, battery_life_hours, last_calibration_date, sensor_type, data_upload_interval_sec, status, assigned_technician, notes, created_at, updated_at, serial_number, mac_address, wifi_ssid, ip_address) VALUES
('WearableHR', 'HealthTech', '1.0.2', '2024-03-01', 1, 'Grandstand A', 48, '2024-03-15', 'HeartRate', 60, 'active', 'Laura Chen', '', '2024-03-01 08:00:00', '2024-03-15 09:00:00', 'HR001', '00:1A:2B:3C:4D:5F', 'VenueWiFi', '192.168.1.101');

INSERT INTO spectator_health_monitoring_devices (device_type, vendor, firmware_version, deployment_date, venue_id, location_description, battery_life_hours, last_calibration_date, sensor_type, data_upload_interval_sec, status, assigned_technician, notes, created_at, updated_at, serial_number, mac_address, wifi_ssid, ip_address) VALUES
('AirQualitySensor', 'EnviroSense', '2.3.1', '2024-02-20', 2, 'Hospitality Suite', 72, '2024-02-28', 'CO2', 300, 'maintenance', 'Mark Patel', 'Filter replacement required', '2024-02-20 09:15:00', '2024-02-28 10:30:00', 'AQ002', '00:1F:2E:3D:4C:5G', 'VenueWiFi', '192.168.2.202');

INSERT INTO spectator_health_monitoring_devices (device_type, vendor, firmware_version, deployment_date, venue_id, location_description, battery_life_hours, last_calibration_date, sensor_type, data_upload_interval_sec, status, assigned_technician, notes, created_at, updated_at, serial_number, mac_address, wifi_ssid, ip_address) VALUES
('ThermalCam', 'VisionPro', '3.0.0', '2024-01-10', 3, 'Pit Lane', 96, '2024-01-20', 'Temperature', 120, 'active', 'Sofia Lopez', '', '2024-01-10 07:45:00', '2024-01-20 08:15:00', 'TC003', '00:2A:3B:4C:5D:6H', 'VenueWiFi', '192.168.3.150');