-- Player VR sessions tracking
CREATE TABLE player_vr_sessions (
    id                      INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id               INTEGER,
    session_start           TEXT,
    session_end             TEXT,
    vr_device_id            TEXT,
    headset_model           TEXT,
    room_scale              INTEGER,
    latency_ms              REAL,
    frame_rate              REAL,
    motion_sickness_score  INTEGER,
    tracking_accuracy       REAL,
    ip_address              TEXT,
    software_version        TEXT,
    content_type            TEXT,
    duration_minutes        INTEGER,
    calories_burned         REAL,
    bluetooth_signal_strength INTEGER,
    battery_level_start     INTEGER,
    battery_level_end       INTEGER,
    environment_light_lux   REAL,
    notes                   TEXT
);

INSERT INTO player_vr_sessions VALUES (1, 101, '2024-05-01 10:00', '2024-05-01 11:30', 'DEV001', 'OculusQuest2', 1, 12.5, 72.0, 3, 98.7, '192.168.1.10', 'v2.3.1', 'Adventure', 90, 210.5, -65, 80, 78, 350.2, 'First session');
INSERT INTO player_vr_sessions VALUES (2, 102, '2024-05-02 14:15', '2024-05-02 15:00', 'DEV002', 'ValveIndex', 0, 9.8, 90.0, 0, 99.9, '192.168.1.20', 'v3.0.0', 'Simulation', 45, 120.0, -70, 85, 84, 400.0, 'No issues');
INSERT INTO player_vr_sessions VALUES (3, 103, '2024-05-03 09:30', '2024-05-03 10:45', 'DEV003', 'HTC_Vive', 1, 15.2, 60.0, 5, 95.0, '192.168.1.30', 'v1.9.5', 'Puzzle', 75, 180.3, -60, 70, 68, 320.5, 'Mild motion sickness');

-- Augmented Reality events
CREATE TABLE augmented_reality_events (
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    event_name             TEXT,
    launch_date            TEXT,
    end_date               TEXT,
    ar_device_model        TEXT,
    geo_target_region      TEXT,
    max_participants       INTEGER,
    average_engagement_time REAL,
    sponsor_name           TEXT,
    budget_usd             REAL,
    ad_impressions         INTEGER,
    unique_users           INTEGER,
    content_theme          TEXT,
    interaction_type       TEXT,
    required_app_version   TEXT,
    qr_code_scans          INTEGER,
    push_notifications_sent INTEGER,
    avg_fps                REAL,
    developer_contact      TEXT,
    status                 TEXT
);

INSERT INTO augmented_reality_events VALUES (1, 'CityQuest', '2024-06-01', '2024-06-30', 'SnapAR_X1', 'NorthAmerica', 5000, 12.5, 'TechNova', 250000.0, 1200000, 4500, 'UrbanExploration', 'Touch', '1.4.2', 3200, 1500, 55.0, 'dev@technova.com', 'Active');
INSERT INTO augmented_reality_events VALUES (2, 'ForestRun', '2024-07-10', '2024-08-10', 'MagicAR_Pro', 'Europe', 3000, 9.8, 'GreenSolutions', 180000.0, 800000, 2900, 'NatureAdventure', 'Gesture', '2.0.0', 2100, 900, 58.3, 'contact@greensol.com', 'Planned');
INSERT INTO augmented_reality_events VALUES (3, 'SpaceExplorer', '2024-09-05', '2024-10-05', 'StarAR_V', 'Asia', 7000, 15.2, 'OrbitCorp', 320000.0, 1500000, 6500, 'SciFi', 'Voice', '3.1.1', 4100, 2000, 60.5, 'info@orbitcorp.com', 'Completed');

-- Digital fingerprint records
CREATE TABLE digital_fingerprint_records (
    id                        INTEGER PRIMARY KEY AUTOINCREMENT,
    user_uuid                 TEXT,
    device_fingerprint_hash   TEXT,
    capture_timestamp         TEXT,
    os_version                TEXT,
    browser_version           TEXT,
    screen_resolution         TEXT,
    timezone                  TEXT,
    language                  TEXT,
    installed_plugins         TEXT,
    canvas_hash               TEXT,
    webgl_hash                TEXT,
    audio_context_hash        TEXT,
    font_list_hash            TEXT,
    cookie_enabled            INTEGER,
    java_enabled              INTEGER,
    do_not_track              INTEGER,
    ip_address                TEXT,
    network_type              TEXT,
    location_accuracy         REAL
);

INSERT INTO digital_fingerprint_records VALUES (1, 'uuid-001', 'hashA1B2C3', '2024-05-15T08:30:00Z', 'Windows10', 'Chrome99', '1920x1080', 'UTC+1', 'en-US', 'pluginA,pluginB', 'canvHash1', 'webglHash1', 'audioHash1', 'fontHash1', 1, 0, 0, '203.0.113.5', 'WiFi', 5.0);
INSERT INTO digital_fingerprint_records VALUES (2, 'uuid-002', 'hashD4E5F6', '2024-05-16T09:45:00Z', 'macOS12', 'Safari15', '2560x1440', 'UTC-5', 'en-GB', 'pluginC', 'canvHash2', 'webglHash2', 'audioHash2', 'fontHash2', 1, 0, 1, '198.51.100.23', 'Ethernet', 2.0);
INSERT INTO digital_fingerprint_records VALUES (3, 'uuid-003', 'hashG7H8I9', '2024-05-17T11:20:00Z', 'Linux5.15', 'Firefox98', '1440x900', 'UTC+9', 'ja-JP', 'pluginD,pluginE', 'canvHash3', 'webglHash3', 'audioHash3', 'fontHash3', 0, 0, 0, '192.0.2.78', 'Cellular', 15.0);

-- Sustainability reports
CREATE TABLE sustainability_reports (
    id                         INTEGER PRIMARY KEY AUTOINCREMENT,
    report_year                INTEGER,
    total_energy_kwh           REAL,
    renewable_energy_percent   REAL,
    carbon_emissions_tons      REAL,
    water_usage_liters         REAL,
    waste_generated_kg         REAL,
    recycling_rate_percent     REAL,
    initiatives_count          INTEGER,
    compliance_certifications  TEXT,
    auditor_name               TEXT,
    report_download_url        TEXT,
    approved_by                TEXT,
    approval_date              TEXT,
    notes                      TEXT,
    data_source                TEXT,
    region                     TEXT,
    office_location            TEXT,
    staff_training_hours       INTEGER,
    carbon_offset_purchased_usd REAL
);

INSERT INTO sustainability_reports VALUES (1, 2022, 1250000.0, 68.5, 340.2, 950000.0, 12000.0, 45.0, 12, 'ISO14001', 'EcoAuditLtd', 'http://example.com/report2022.pdf', 'Board', '2023-01-15', 'Improved solar usage', 'InternalSystems', 'NorthAmerica', 'NewYork', 320, 15000.0);
INSERT INTO sustainability_reports VALUES (2, 2023, 1180000.0, 72.3, 310.5, 910000.0, 11500.0, 48.0, 15, 'ISO14001,LEED', 'GreenCheck', 'http://example.com/report2023.pdf', 'Board', '2024-01-20', 'Reached 70% renewable', 'InternalSystems', 'Europe', 'London', 350, 18000.0);
INSERT INTO sustainability_reports VALUES (3, 2024, 1105000.0, 75.0, 285.0, 880000.0, 11000.0, 50.0, 18, 'ISO14001,LEED,ISO50001', 'SustainAudit', 'http://example.com/report2024.pdf', 'Board', '2025-01-25', 'Carbon neutral target set', 'InternalSystems', 'Asia', 'Singapore', 400, 22000.0);

-- Microclimate stations
CREATE TABLE microclimate_stations (
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    station_code           TEXT,
    install_date           TEXT,
    latitude               REAL,
    longitude              REAL,
    altitude_m             REAL,
    temperature_c          REAL,
    humidity_percent       REAL,
    pressure_hpa           REAL,
    wind_speed_mps         REAL,
    wind_direction_deg     INTEGER,
    uv_index               REAL,
    particulate_matter_2_5 REAL,
    particulate_matter_10  REAL,
    co2_ppm                REAL,
    noise_db               REAL,
    battery_voltage        REAL,
    firmware_version       TEXT,
    last_maintenance_date  TEXT,
    operational_status     TEXT
);

INSERT INTO microclimate_stations VALUES (1, 'STN001', '2023-03-10', 34.0522, -118.2437, 89.0, 22.5, 55.0, 1013.2, 3.5, 180, 5.2, 12.0, 25.0, 420.0, 45.0, 3.7, 'v2.1', '2024-12-01', 'Active');
INSERT INTO microclimate_stations VALUES (2, 'STN002', '2023-04-15', 51.5074, -0.1278, 35.0, 18.3, 68.0, 1015.6, 2.1, 90, 4.8, 9.5, 18.0, 380.0, 38.0, 3.9, 'v2.0', '2024-11-20', 'Active');
INSERT INTO microclimate_stations VALUES (3, 'STN003', '2023-05-20', 35.6895, 139.6917, 44.0, 24.1, 70.0, 1012.0, 4.0, 270, 6.0, 14.2, 22.5, 410.0, 50.0, 3.6, 'v2.1', '2024-12-10', 'MaintenanceRequired');

-- Player VR customizations
CREATE TABLE player_vr_customizations (
    id                        INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id                 INTEGER,
    vr_avatar_id              TEXT,
    avatar_name               TEXT,
    skin_tone                 TEXT,
    hair_style                TEXT,
    outfit_id                 TEXT,
    outfit_name               TEXT,
    accessories               TEXT,
    voice_pack                TEXT,
    facial_expression_set     TEXT,
    animation_speed_multiplier REAL,
    customization_date        TEXT,
    last_update               TEXT,
    is_favorite               INTEGER,
    rating                    INTEGER,
    comments                  TEXT,
    shared_with_community    INTEGER,
    usage_count               INTEGER,
    average_session_length_minutes INTEGER,
    revenue_generated_usd     REAL
);

INSERT INTO player_vr_customizations VALUES (1, 101, 'AVT001', 'NovaKnight', 'Medium', 'Short', 'OUT001', 'Stealth Suit', 'Helmet,Gloves', 'VoicePackA', 'SetA', 1.0, '2024-01-05', '2024-04-10', 1, 5, 'Preferred avatar', 1, 12, 45, 250.0);
INSERT INTO player_vr_customizations VALUES (2, 102, 'AVT002', 'CyberMage', 'Light', 'Long', 'OUT002', 'Arcane Robe', 'Staff,Amulet', 'VoicePackB', 'SetB', 1.2, '2024-02-12', '2024-05-01', 0, 4, 'Uses for PvE', 0, 8, 30, 180.0);
INSERT INTO player_vr_customizations VALUES (3, 103, 'AVT003', 'StealthRogue', 'Dark', 'Bald', 'OUT003', 'Shadow Gear', 'Dagger,Mask', 'VoicePackC', 'SetC', 0.9, '2024-03-20', '2024-06-15', 1, 3, 'High agility', 1, 5, 25, 120.0);

-- AI opponent profiles
CREATE TABLE ai_opponent_profiles (
    id                       INTEGER PRIMARY KEY AUTOINCREMENT,
    profile_name             TEXT,
    difficulty_level         TEXT,
    strategy_type            TEXT,
    aggression_score         INTEGER,
    adaptability_score       INTEGER,
    learning_rate            REAL,
    version                  TEXT,
    last_training_date       TEXT,
    parameters_hash          TEXT,
    average_win_rate_percent REAL,
    average_game_length_minutes REAL,
    preferred_game_mode      TEXT,
    comments                 TEXT,
    created_by               TEXT,
    created_date             TEXT,
    updated_by               TEXT,
    updated_date             TEXT,
    is_active                INTEGER,
    notes                    TEXT
);

INSERT INTO ai_opponent_profiles VALUES (1, 'AlphaStriker', 'Hard', 'Aggressive', 85, 70, 0.02, 'v1.4', '2024-03-01', 'hashAlpha', 62.5, 15.2, 'Deathmatch', 'Optimized for speed', 'DevTeamA', '2024-03-01', 'DevTeamA', '2024-04-01', 1, 'Stable');
INSERT INTO ai_opponent_profiles VALUES (2, 'BetaGuardian', 'Medium', 'Defensive', 40, 80, 0.015, 'v1.3', '2024-02-15', 'hashBeta', 48.0, 18.5, 'CaptureTheFlag', 'Focus on defense', 'DevTeamB', '2024-02-15', 'DevTeamB', '2024-04-10', 1, 'Under review');
INSERT INTO ai_opponent_profiles VALUES (3, 'GammaScout', 'Easy', 'Exploratory', 30, 60, 0.01, 'v1.2', '2024-01-20', 'hashGamma', 35.0, 12.0, 'Exploration', 'Learns map quickly', 'DevTeamC', '2024-01-20', 'DevTeamC', '2024-04-20', 1, 'Beta');

-- Ethical AI reviews
CREATE TABLE ethical_ai_reviews (
    id                 INTEGER PRIMARY KEY AUTOINCREMENT,
    model_name         TEXT,
    review_date        TEXT,
    reviewer           TEXT,
    bias_score         REAL,
    fairness_score     REAL,
    transparency_score REAL,
    explainability_score REAL,
    compliance_status  TEXT,
    regulatory_body    TEXT,
    comments           TEXT,
    mitigation_steps   TEXT,
    follow_up_date     TEXT,
    overall_rating     INTEGER,
    dataset_used       TEXT,
    training_epochs    INTEGER,
    parameters_count   INTEGER,
    hardware_used      TEXT,
    version            TEXT,
    is_public          INTEGER
);

INSERT INTO ethical_ai_reviews VALUES (1, 'VisionNetV1', '2024-04-10', 'DrSmith', 2.5, 4.0, 3.8, 4.2, 'Compliant', 'EUReg', 'Low bias observed', 'Adjust training data', '2024-06-01', 8, 'ImageSetA', 50, 2000000, 'GPUClusterX', '1.0', 1);
INSERT INTO ethical_ai_reviews VALUES (2, 'SpeechRecV2', '2024-04-15', 'MsLee', 3.0, 3.5, 3.0, 3.5, 'Pending', 'USReg', 'Moderate fairness issues', 'Rebalance dataset', '2024-07-01', 6, 'AudioSetB', 30, 1500000, 'TPUClusterY', '2.1', 0);
INSERT INTO ethical_ai_reviews VALUES (3, 'DecisionTreeX', '2024-04-20', 'DrKhan', 1.8, 4.5, 4.0, 4.8, 'Compliant', 'APACReg', 'Excellent transparency', 'No action needed', '2024-05-15', 9, 'TabularSetC', 20, 500000, 'CPUClusterZ', '3.0', 1);

-- Neurofeedback sessions
CREATE TABLE neurofeedback_sessions (
    id                         INTEGER PRIMARY KEY AUTOINCREMENT,
    participant_id             INTEGER,
    session_date               TEXT,
    duration_minutes           INTEGER,
    device_id                  TEXT,
    headset_model              TEXT,
    alpha_wave_power           REAL,
    beta_wave_power            REAL,
    theta_wave_power           REAL,
    delta_wave_power           REAL,
    stress_level_score         INTEGER,
    focus_level_score          INTEGER,
    meditation_depth           REAL,
    notes                      TEXT,
    technician_id              INTEGER,
    calibration_status         TEXT,
    data_file_path             TEXT,
    session_quality_score      REAL,
    feedback_given             INTEGER,
    follow_up_required         INTEGER
);

INSERT INTO neurofeedback_sessions VALUES (1, 201, '2024-05-05', 30, 'DEV1001', 'NeuroHeadX', 12.5, 8.3, 6.0, 4.2, 20, 85, 0.75, 'Good session', 301, 'Passed', '/data/session1.dat', 92.5, 1, 0);
INSERT INTO neurofeedback_sessions VALUES (2, 202, '2024-05-06', 45, 'DEV1002', 'NeuroHeadY', 10.2, 9.1, 5.5, 3.8, 35, 70, 0.60, 'Mild distraction', 302, 'Passed', '/data/session2.dat', 85.0, 1, 1);
INSERT INTO neurofeedback_sessions VALUES (3, 203, '2024-05-07', 25, 'DEV1003', 'NeuroHeadZ', 13.0, 7.5, 6.5, 4.0, 15, 90, 0.80, 'Excellent focus', 303, 'Passed', '/data/session3.dat', 95.0, 1, 0);

-- Interstellar travel log
CREATE TABLE interstellar_travel_log (
    id                       INTEGER PRIMARY KEY AUTOINCREMENT,
    ship_name                TEXT,
    mission_id               TEXT,
    launch_date              TEXT,
    arrival_date             TEXT,
    departure_planet         TEXT,
    destination_planet       TEXT,
    crew_size                INTEGER,
    captain_name             TEXT,
    fuel_consumed_tons       REAL,
    distance_lightyears      REAL,
    propulsion_type          TEXT,
    status                   TEXT,
    log_summary              TEXT,
    commander_contact        TEXT,
    emergency_protocols_active INTEGER,
    onboard_ai_version       TEXT,
    cargo_manifest_hash      TEXT,
    radiation_exposure_mSv   REAL,
    anomaly_detected        INTEGER
);

INSERT INTO interstellar_travel_log VALUES (1, 'StarRunner', 'MIS001', '2120-03-01', '2125-07-15', 'Earth', 'ProximaB', 150, 'CaptainA', 5000.0, 4.24, 'FusionDrive', 'Completed', 'Mission successful with minor delays', 'cmdrA@fleet.com', 0, 'AIv3.2', 'hashCargo01', 12.5, 0);
INSERT INTO interstellar_travel_log VALUES (2, 'GalaxyVoyager', 'MIS002', '2122-11-20', '2128-02-10', 'Mars', 'AlphaCentauri', 200, 'CaptainB', 6200.5, 4.37, 'AntimatterCore', 'InProgress', 'Encountered gravitational anomaly', 'cmdrB@fleet.com', 1, 'AIv4.0', 'hashCargo02', 15.8, 1);
INSERT INTO interstellar_travel_log VALUES (3, 'NebulaExplorer', 'MIS003', '2130-06-05', NULL, 'Venus', 'TRAPPIST-1e', 180, 'CaptainC', 5800.0, 39.5, 'WarpDrive', 'Launched', 'Awaiting arrival data', 'cmdrC@fleet.com', 0, 'AIv5.1', 'hashCargo03', 20.0, 0);