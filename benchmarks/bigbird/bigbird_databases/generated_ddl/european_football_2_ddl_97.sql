-- Player Academy Evaluation
CREATE TABLE Player_Academy_Evaluation (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    academy_year INTEGER,
    skill_score INTEGER,
    physical_score INTEGER,
    tactical_score INTEGER,
    technical_score INTEGER,
    mental_score INTEGER,
    coach_comments_score INTEGER,
    attendance_rate INTEGER,
    training_hours INTEGER,
    match_minutes INTEGER,
    injury_days INTEGER,
    passed_trial INTEGER,
    scholarship_amount INTEGER,
    evaluation_date INTEGER,
    overall_rating INTEGER,
    potential INTEGER,
    position_rank INTEGER,
    notes TEXT
);
INSERT INTO Player_Academy_Evaluation VALUES (NULL, 101, 2023, 78, 85, 80, 82, 75, 70, 95, 120, 900, 3, 1, 5000, 1700000000, 82, 88, 5, NULL);
INSERT INTO Player_Academy_Evaluation VALUES (NULL, 102, 2022, 85, 88, 84, 86, 80, 78, 98, 140, 950, 2, 1, 7000, 1698000000, 86, 90, 3, NULL);
INSERT INTO Player_Academy_Evaluation VALUES (NULL, 103, 2021, 72, 78, 70, 74, 68, 65, 90, 100, 800, 5, 0, 3000, 1696000000, 75, 80, 7, NULL);

-- Team Travel Logistics
CREATE TABLE Team_Travel_Logistics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    departure_date INTEGER,
    return_date INTEGER,
    origin_airport_code INTEGER,
    destination_airport_code INTEGER,
    flight_number INTEGER,
    hotel_name TEXT,
    room_count INTEGER,
    bus_count INTEGER,
    total_cost INTEGER,
    sponsor_contribution INTEGER,
    carbon_emission_kg INTEGER,
    travel_manager_id INTEGER,
    travel_type INTEGER,
    luggage_count INTEGER,
    meal_plan_code INTEGER,
    travel_status INTEGER,
    risk_assessment_score INTEGER,
    document_link TEXT
);
INSERT INTO Team_Travel_Logistics VALUES (NULL, 201, 1700100000, 1700300000, 1, 2, 1234, NULL, 20, 2, 15000, 5000, 1200, 301, 1, 45, 3, 1, 85, NULL);
INSERT INTO Team_Travel_Logistics VALUES (NULL, 202, 1700500000, 1700700000, 3, 4, 5678, NULL, 25, 3, 18000, 6000, 1500, 302, 2, 50, 2, 2, 78, NULL);
INSERT INTO Team_Travel_Logistics VALUES (NULL, 203, 1700900000, 1701100000, 5, 6, 9012, NULL, 30, 4, 20000, 7000, 1800, 303, 1, 60, 1, 1, 90, NULL);

-- Stadium Environmental Sensor Readings
CREATE TABLE Stadium_Environmental_Sensor_Readings (
    sensor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    sensor_type INTEGER,
    reading_timestamp INTEGER,
    temperature_c INTEGER,
    humidity_percent INTEGER,
    co2_ppm INTEGER,
    noise_db INTEGER,
    vibration_mms INTEGER,
    light_lux INTEGER,
    particulate_pm25 INTEGER,
    particulate_pm10 INTEGER,
    water_quality_index INTEGER,
    energy_consumption_kwh INTEGER,
    water_flow_lpm INTEGER,
    pressure_kpa INTEGER,
    fan_speed_rpm INTEGER,
    solar_generation_kw INTEGER,
    battery_charge_percent INTEGER,
    maintenance_flag INTEGER,
    firmware_version TEXT,
    calibration_date INTEGER,
    operator_id INTEGER,
    anomaly_score INTEGER,
    notes TEXT
);
INSERT INTO Stadium_Environmental_Sensor_Readings VALUES (NULL, 401, 1, 1702000000, 22, 55, 420, 68, 3, 1500, 12, 20, 85, 5000, 300, 101, 1500, 45, 95, 0, NULL, 1700000000, 601, 5, NULL);
INSERT INTO Stadium_Environmental_Sensor_Readings VALUES (NULL, 402, 2, 1702100000, 24, 60, 430, 70, 4, 1600, 14, 22, 88, 5200, 310, 102, 1550, 48, 92, 0, NULL, 1700100000, 602, 4, NULL);
INSERT INTO Stadium_Environmental_Sensor_Readings VALUES (NULL, 403, 3, 1702200000, 21, 50, 410, 65, 2, 1450, 10, 18, 80, 4800, 290, 100, 1480, 44, 97, 0, NULL, 1700200000, 603, 6, NULL);

-- Fan Digital Reward Transactions
CREATE TABLE Fan_Digital_Reward_Transactions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    reward_id INTEGER,
    transaction_date INTEGER,
    points_spent INTEGER,
    points_earned INTEGER,
    reward_type INTEGER,
    status INTEGER,
    redemption_code TEXT,
    campaign_id INTEGER,
    source_channel INTEGER,
    device_type INTEGER,
    region_id INTEGER,
    language_code INTEGER,
    ip_address TEXT,
    transaction_amount INTEGER,
    currency_code INTEGER,
    loyalty_tier INTEGER,
    expiration_date INTEGER,
    used_flag INTEGER,
    created_at INTEGER,
    updated_at INTEGER,
    notes TEXT
);
INSERT INTO Fan_Digital_Reward_Transactions VALUES (NULL, 1001, 501, 1703000000, 200, 0, 1, 1, NULL, 10, 2, 1, 5, 1, NULL, 0, 1, 3, 1706000000, 1, 1703000000, 1703000100, NULL);
INSERT INTO Fan_Digital_Reward_Transactions VALUES (NULL, 1002, 502, 1703100000, 0, 150, 2, 2, NULL, 11, 3, 2, 6, 2, NULL, 15, 2, 4, 1706100000, 0, 1703100000, 1703100200, NULL);
INSERT INTO Fan_Digital_Reward_Transactions VALUES (NULL, 1003, 503, 1703200000, 100, 0, 1, 3, NULL, 12, 1, 1, 7, 1, NULL, 0, 1, 2, 1706200000, 1, 1703200000, 1703200300, NULL);

-- Media Broadcast Technology Inventory
CREATE TABLE Media_Broadcast_Technology_Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    technology_name TEXT,
    vendor TEXT,
    model_number TEXT,
    purchase_date INTEGER,
    warranty_end_date INTEGER,
    serial_number TEXT,
    firmware_version TEXT,
    capacity_gb INTEGER,
    supported_resolutions TEXT,
    max_streams INTEGER,
    power_consumption_w INTEGER,
    location_room TEXT,
    operational_status INTEGER,
    last_maintenance_date INTEGER,
    software_license_key TEXT,
    depreciation_rate INTEGER,
    notes TEXT,
    created_at INTEGER,
    updated_at INTEGER
);
INSERT INTO Media_Broadcast_Technology_Inventory VALUES (NULL, NULL, NULL, NULL, 1699000000, 1729000000, NULL, NULL, 2000, NULL, 8, 350, NULL, 1, 1705000000, NULL, 10, NULL, 1705000100, 1705000200);
INSERT INTO Media_Broadcast_Technology_Inventory VALUES (NULL, NULL, NULL, NULL, 1699500000, 1729500000, NULL, NULL, 2500, NULL, 10, 400, NULL, 1, 1705500000, NULL, 12, NULL, 1705500100, 1705500200);
INSERT INTO Media_Broadcast_Technology_Inventory VALUES (NULL, NULL, NULL, NULL, 1700000000, 1730000000, NULL, NULL, 3000, NULL, 12, 450, NULL, 1, 1706000000, NULL, 15, NULL, 1706000100, 1706000200);

-- Sponsor Contract Timeline
CREATE TABLE Sponsor_Contract_Timeline (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    contract_start_date INTEGER,
    contract_end_date INTEGER,
    total_value INTEGER,
    payment_schedule INTEGER,
    milestones_count INTEGER,
    renewal_option INTEGER,
    clause_summary TEXT,
    compliance_status INTEGER,
    audit_date INTEGER,
    legal_contact_id INTEGER,
    financial_contact_id INTEGER,
    marketing_contact_id INTEGER,
    activation_start_date INTEGER,
    activation_end_date INTEGER,
    performance_metric INTEGER,
    penalty_amount INTEGER,
    bonus_amount INTEGER,
    created_at INTEGER,
    updated_at INTEGER,
    notes TEXT
);
INSERT INTO Sponsor_Contract_Timeline VALUES (NULL, 301, 1698000000, 1728000000, 5000000, 5, 3, 1, NULL, 1, 1701000000, 401, 402, 403, 1698500000, 1728500000, 85, 25000, 100000, 1702000000, 1702000100, NULL);
INSERT INTO Sponsor_Contract_Timeline VALUES (NULL, 302, 1699000000, 1729000000, 7500000, 6, 4, 0, NULL, 0, 1702000000, 404, 405, 406, 1699500000, 1729500000, 90, 30000, 150000, 1703000000, 1703000100, NULL);
INSERT INTO Sponsor_Contract_Timeline VALUES (NULL, 303, 1700000000, 1730000000, 6000000, 5, 3, 1, NULL, 1, 1703000000, 407, 408, 409, 1700500000, 1730500000, 88, 28000, 120000, 1704000000, 1704000100, NULL);

-- Training Center Air Quality Records
CREATE TABLE Training_Center_AirQuality_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    center_id INTEGER,
    record_timestamp INTEGER,
    co2_ppm INTEGER,
    pm2_5 INTEGER,
    pm10 INTEGER,
    tvoc_ppb INTEGER,
    temperature_c INTEGER,
    humidity_percent INTEGER,
    ozone_ppb INTEGER,
    nitrogen_dioxide_ppb INTEGER,
    sulfur_dioxide_ppb INTEGER,
    air_change_rate INTEGER,
    ventilation_status INTEGER,
    filter_status INTEGER,
    alarm_flag INTEGER,
    maintenance_required INTEGER,
    operator_id INTEGER,
    notes TEXT,
    created_at INTEGER,
    updated_at INTEGER
);
INSERT INTO Training_Center_AirQuality_Records VALUES (NULL, 501, 1707000000, 420, 12, 20, 300, 22, 55, 30, 15, 5, 8, 1, 1, 0, 601, NULL, 1707000100, 1707000200);
INSERT INTO Training_Center_AirQuality_Records VALUES (NULL, 502, 1707100000, 430, 14, 22, 310, 23, 58, 32, 16, 6, 9, 1, 1, 0, 602, NULL, 1707100100, 1707100200);
INSERT INTO Training_Center_AirQuality_Records VALUES (NULL, 503, 1707200000, 410, 10, 18, 295, 21, 52, 28, 14, 7, 7, 1, 1, 0, 603, NULL, 1707200100, 1707200200);

-- Virtual Fan Experience Assets
CREATE TABLE Virtual_Fan_Experience_Assets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_name TEXT,
    asset_type INTEGER,
    file_path TEXT,
    file_size_mb INTEGER,
    resolution TEXT,
    duration_seconds INTEGER,
    creator_id INTEGER,
    upload_date INTEGER,
    usage_count INTEGER,
    last_accessed INTEGER,
    license_type INTEGER,
    expiration_date INTEGER,
    associated_event_id INTEGER,
    platform INTEGER,
    metadata_json TEXT,
    view_rate INTEGER,
    click_rate INTEGER,
    revenue_generated INTEGER,
    active_flag INTEGER,
    created_at INTEGER,
    updated_at INTEGER
);
INSERT INTO Virtual_Fan_Experience_Assets VALUES (NULL, NULL, 1, NULL, 500, NULL, 120, 701, 1708000000, 250, 1708050000, 2, 1710000000, 801, 1, NULL, 1500, 300, 20000, 1, 1708000100, 1708000200);
INSERT INTO Virtual_Fan_Experience_Assets VALUES (NULL, NULL, 2, NULL, 750, NULL, 180, 702, 1708100000, 300, 1708150000, 2, 1710100000, 802, 2, NULL, 1700, 350, 25000, 1, 1708100100, 1708100200);
INSERT INTO Virtual_Fan_Experience_Assets VALUES (NULL, NULL, 1, NULL, 650, NULL, 150, 703, 1708200000, 275, 1708250000, 1, 1710200000, 803, 1, NULL, 1600, 320, 23000, 1, 1708200100, 1708200200);

-- Esports Team Analytics
CREATE TABLE Esports_Team_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    game_title TEXT,
    season INTEGER,
    matches_played INTEGER,
    matches_won INTEGER,
    matches_lost INTEGER,
    win_rate INTEGER,
    average_kills INTEGER,
    average_deaths INTEGER,
    average_assists INTEGER,
    avg_gold_per_min INTEGER,
    avg_xp_per_min INTEGER,
    avg_damage_per_min INTEGER,
    kda_ratio INTEGER,
    first_blood_rate INTEGER,
    objective_control_rate INTEGER,
    avg_game_duration INTEGER,
    team_rating INTEGER,
    sponsorship_funds INTEGER,
    fan_engagement_score INTEGER,
    last_updated INTEGER,
    notes TEXT
);
INSERT INTO Esports_Team_Analytics VALUES (NULL, 601, NULL, 2023, 30, 18, 12, 60, 15, 8, 10, 400, 500, 600, 3, 70, 65, 45, 85, 200000, 9000, 1709000000, NULL);
INSERT INTO Esports_Team_Analytics VALUES (NULL, 602, NULL, 2023, 28, 20, 8, 71, 17, 7, 12, 420, 520, 630, 3, 75, 70, 42, 88, 250000, 9500, 1709100000, NULL);
INSERT INTO Esports_Team_Analytics VALUES (NULL, 603, NULL, 2023, 32, 22, 10, 69, 16, 9, 11, 410, 510, 615, 3, 72, 68, 44, 90, 230000, 9200, 1709200000, NULL);

-- Player Biometric Sensor Readings
CREATE TABLE Player_Biometric_Sensor_Readings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    sensor_id INTEGER,
    reading_timestamp INTEGER,
    heart_rate_bpm INTEGER,
    respiration_rate INTEGER,
    skin_temp_c INTEGER,
    body_fat_percent INTEGER,
    muscle_mass_percent INTEGER,
    hydration_level INTEGER,
    VO2_max INTEGER,
    lactate_threshold INTEGER,
    sleep_quality_score INTEGER,
    stress_score INTEGER,
    fatigue_score INTEGER,
    reaction_time_ms INTEGER,
    agility_score INTEGER,
    speed_mps INTEGER,
    gps_distance_m INTEGER,
    created_at INTEGER,
    updated_at INTEGER
);
INSERT INTO Player_Biometric_Sensor_Readings VALUES (NULL, 701, 1, 1710000000, 68, 14, 36, 12, 48, 85, 55, 38, 20, 15, 200, 80, 7, 12000, 1710000100, 1710000200);
INSERT INTO Player_Biometric_Sensor_Readings VALUES (NULL, 702, 2, 1710100000, 72, 15, 35, 11, 50, 87, 57, 40, 18, 12, 190, 82, 7, 12500, 1710100100, 1710100200);
INSERT INTO Player_Biometric_Sensor_Readings VALUES (NULL, 703, 3, 1710200000, 70, 14, 34, 10, 52, 90, 60, 42, 22, 14, 185, 84, 8, 13000, 1710200100, 1710200200);