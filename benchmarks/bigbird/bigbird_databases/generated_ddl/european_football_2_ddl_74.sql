-- Player scoring details per match
CREATE TABLE Player_Scoring_History (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    match_api_id INTEGER,
    season TEXT,
    competition TEXT,
    goal_minute INTEGER,
    goal_type TEXT,
    assist_player_id INTEGER,
    shot_distance INTEGER,
    shot_angle INTEGER,
    is_penalty INTEGER,
    is_own_goal INTEGER,
    is_header INTEGER,
    is_free_kick INTEGER,
    is_volley INTEGER,
    is_chip INTEGER,
    is_destination INTEGER,
    expected_goals REAL,
    goals_scored INTEGER,
    assists INTEGER,
    points INTEGER,
    created_at TEXT
);

INSERT INTO Player_Scoring_History (player_api_id, match_api_id, season, competition, goal_minute, goal_type, assist_player_id, shot_distance, shot_angle, is_penalty, is_own_goal, is_header, is_free_kick, is_volley, is_chip, is_destination, expected_goals, goals_scored, assists, points, created_at) VALUES (101, 5001, '2022/2023', 'PremierLeague', 23, 'OpenPlay', 102, 18, 30, 0, 0, 0, 0, 0, 0, 0, 0.34, 1, 1, 4, '2023-01-15');
INSERT INTO Player_Scoring_History (player_api_id, match_api_id, season, competition, goal_minute, goal_type, assist_player_id, shot_distance, shot_angle, is_penalty, is_own_goal, is_header, is_free_kick, is_volley, is_chip, is_destination, expected_goals, goals_scored, assists, points, created_at) VALUES (203, 5002, '2022/2023', 'LaLiga', 55, 'Penalty', 204, 12, 0, 1, 0, 0, 1, 0, 0, 0, 0.78, 1, 0, 3, '2023-02-20');
INSERT INTO Player_Scoring_History (player_api_id, match_api_id, season, competition, goal_minute, goal_type, assist_player_id, shot_distance, shot_angle, is_penalty, is_own_goal, is_header, is_free_kick, is_volley, is_chip, is_destination, expected_goals, goals_scored, assists, points, created_at) VALUES (309, 5003, '2022/2023', 'Bundesliga', 12, 'Header', 310, 6, 45, 0, 0, 1, 0, 0, 0, 0, 0.22, 1, 2, 5, '2023-03-10');

-- Financial transactions for clubs
CREATE TABLE Team_Financial_Transactions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    fiscal_year INTEGER,
    quarter INTEGER,
    transaction_type TEXT,
    amount REAL,
    currency TEXT,
    description TEXT,
    approved_by TEXT,
    transaction_date TEXT,
    budget_category TEXT,
    vendor_name TEXT,
    invoice_number TEXT,
    payment_status TEXT,
    receipt_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    audit_user TEXT,
    audit_timestamp TEXT,
    tax_amount REAL
);

INSERT INTO Team_Financial_Transactions (team_api_id, fiscal_year, quarter, transaction_type, amount, currency, description, approved_by, transaction_date, budget_category, vendor_name, invoice_number, payment_status, receipt_date, notes, created_at, updated_at, audit_user, audit_timestamp, tax_amount) VALUES (1001, 2022, 1, 'Sponsorship', 2500000, 'EUR', 'Season sponsor payment', 'CEO', '2022-04-15', 'Revenue', 'GlobalCorp', 'INV10001', 'Paid', '2022-04-20', 'First instalment', '2022-04-15', '2022-04-21', 'admin', '2022-04-21 10:00', 500000);
INSERT INTO Team_Financial_Transactions (team_api_id, fiscal_year, quarter, transaction_type, amount, currency, description, approved_by, transaction_date, budget_category, vendor_name, invoice_number, payment_status, receipt_date, notes, created_at, updated_at, audit_user, audit_timestamp, tax_amount) VALUES (1002, 2022, 2, 'TransferFee', 7200000, 'USD', 'Player acquisition fee', 'CFO', '2022-07-05', 'Expenditure', 'TransferAgents', 'INV20002', 'Pending', NULL, 'Awaiting clearance', '2022-07-05', '2022-07-06', 'finance', '2022-07-06 09:30', 1440000);
INSERT INTO Team_Financial_Transactions (team_api_id, fiscal_year, quarter, transaction_type, amount, currency, description, approved_by, transaction_date, budget_category, vendor_name, invoice_number, payment_status, receipt_date, notes, created_at, updated_at, audit_user, audit_timestamp, tax_amount) VALUES (1003, 2022, 3, 'FacilityUpgrade', 1500000, 'GBP', 'Stadium lighting upgrade', 'OperationsMgr', '2022-10-12', 'Capital', 'LightWorks', 'INV30003', 'Paid', '2022-10-20', 'Completed project', '2022-10-12', '2022-10-21', 'operations', '2022-10-21 14:15', 300000);

-- Media contracts for leagues
CREATE TABLE League_Media_Contracts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    media_partner TEXT,
    contract_start TEXT,
    contract_end TEXT,
    rights_type TEXT,
    territory TEXT,
    fee REAL,
    currency TEXT,
    payment_schedule TEXT,
    viewership_guarantee INTEGER,
    digital_streaming INTEGER,
    broadcast_channels TEXT,
    exclusivity_flag INTEGER,
    contract_status TEXT,
    renewal_option TEXT,
    created_at TEXT,
    updated_at TEXT,
    contract_id TEXT,
    notes TEXT
);

INSERT INTO League_Media_Contracts (league_id, season, media_partner, contract_start, contract_end, rights_type, territory, fee, currency, payment_schedule, viewership_guarantee, digital_streaming, broadcast_channels, exclusivity_flag, contract_status, renewal_option, created_at, updated_at, contract_id, notes) VALUES (1, '2023/2024', 'SportsNet', '2023-01-01', '2025-12-31', 'Broadcast', 'Europe', 12000000, 'EUR', 'Annual', 5000000, 1, 'ChannelA,ChannelB', 1, 'Active', 'Auto', '2023-01-01', '2023-01-02', 'CNTR001', 'First contract');
INSERT INTO League_Media_Contracts (league_id, season, media_partner, contract_start, contract_end, rights_type, territory, fee, currency, payment_schedule, viewership_guarantee, digital_streaming, broadcast_channels, exclusivity_flag, contract_status, renewal_option, created_at, updated_at, contract_id, notes) VALUES (2, '2023/2024', 'GlobalSports', '2023-03-01', '2026-02-28', 'Digital', 'Asia', 8000000, 'USD', 'Quarterly', 3000000, 1, 'OnlinePortal', 0, 'Pending', 'Manual', '2023-03-01', '2023-03-02', 'CNTR002', 'Negotiations ongoing');
INSERT INTO League_Media_Contracts (league_id, season, media_partner, contract_start, contract_end, rights_type, territory, fee, currency, payment_schedule, viewership_guarantee, digital_streaming, broadcast_channels, exclusivity_flag, contract_status, renewal_option, created_at, updated_at, contract_id, notes) VALUES (3, '2023/2024', 'NationalTV', '2022-12-15', '2024-12-14', 'Broadcast', 'NorthAmerica', 15000000, 'USD', 'SemiAnnual', 7000000, 0, 'ChannelX', 1, 'Active', 'Auto', '2022-12-15', '2022-12-16', 'CNTR003', 'Renewal due 2024');

-- Environmental impact records per match
CREATE TABLE Match_Environmental_Impact (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    temperature REAL,
    humidity REAL,
    wind_speed REAL,
    precipitation REAL,
    air_quality_index INTEGER,
    noise_level REAL,
    carbon_footprint REAL,
    waste_generated_kg REAL,
    recycling_rate REAL,
    solar_power_used_kwh REAL,
    energy_consumed_kwh REAL,
    water_used_liters REAL,
    green_certification TEXT,
    impact_score REAL,
    weather_condition TEXT,
    remarks TEXT,
    recorded_at TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Match_Environmental_Impact (match_id, temperature, humidity, wind_speed, precipitation, air_quality_index, noise_level, carbon_footprint, waste_generated_kg, recycling_rate, solar_power_used_kwh, energy_consumed_kwh, water_used_liters, green_certification, impact_score, weather_condition, remarks, recorded_at, created_at, updated_at) VALUES (5001, 22.5, 55.0, 12.3, 0.0, 42, 95.2, 350.0, 500.0, 0.45, 120.0, 4500.0, 8000.0, 'Certified', 78.5, 'Clear', 'Standard match day', '2023-01-15 18:00', '2023-01-16', '2023-01-16');
INSERT INTO Match_Environmental_Impact (match_id, temperature, humidity, wind_speed, precipitation, air_quality_index, noise_level, carbon_footprint, waste_generated_kg, recycling_rate, solar_power_used_kwh, energy_consumed_kwh, water_used_liters, green_certification, impact_score, weather_condition, remarks, recorded_at, created_at, updated_at) VALUES (5002, 18.2, 70.0, 8.5, 2.3, 55, 98.0, 410.0, 620.0, 0.38, 95.0, 4700.0, 8500.0, 'None', 65.3, 'Rain', 'Rain delayed kickoff', '2023-02-20 20:00', '2023-02-21', '2023-02-21');
INSERT INTO Match_Environmental_Impact (match_id, temperature, humidity, wind_speed, precipitation, air_quality_index, noise_level, carbon_footprint, waste_generated_kg, recycling_rate, solar_power_used_kwh, energy_consumed_kwh, water_used_liters, green_certification, impact_score, weather_condition, remarks, recorded_at, created_at, updated_at) VALUES (5003, 25.0, 40.0, 15.0, 0.0, 30, 92.5, 300.0, 450.0, 0.50, 130.0, 4400.0, 7800.0, 'Certified', 82.1, 'Clear', 'High attendance', '2023-03-10 19:30', '2023-03-11', '2023-03-11');

-- Stadium infrastructure details
CREATE TABLE Stadium_Infrastructure (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    facility_type TEXT,
    capacity INTEGER,
    year_built INTEGER,
    renovation_year INTEGER,
    surface_type TEXT,
    lighting_level_lux INTEGER,
    roof_type TEXT,
    security_level TEXT,
    accessibility_rating INTEGER,
    wifi_coverage_percent INTEGER,
    concession_stalls INTEGER,
    parking_spaces INTEGER,
    public_transport_links TEXT,
    emergency_exits INTEGER,
    fire_safety_grade TEXT,
    maintenance_cost REAL,
    sustainable_features TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Stadium_Infrastructure (stadium_id, facility_type, capacity, year_built, renovation_year, surface_type, lighting_level_lux, roof_type, security_level, accessibility_rating, wifi_coverage_percent, concession_stalls, parking_spaces, public_transport_links, emergency_exits, fire_safety_grade, maintenance_cost, sustainable_features, created_at, updated_at) VALUES (2001, 'MainArena', 60000, 1995, 2018, 'HybridGrass', 2000, 'Retractable', 'High', 9, 95, 48, 12000, 'Metro,Bus', 14, 'A', 850000.00, 'SolarPanels,WaterRecycling', '2023-01-01', '2023-01-02');
INSERT INTO Stadium_Infrastructure (stadium_id, facility_type, capacity, year_built, renovation_year, surface_type, lighting_level_lux, roof_type, security_level, accessibility_rating, wifi_coverage_percent, concession_stalls, parking_spaces, public_transport_links, emergency_exits, fire_safety_grade, maintenance_cost, sustainable_features, created_at, updated_at) VALUES (2002, 'TrainingGround', 1500, 2005, 2020, 'Synthetic', 1500, 'Open', 'Medium', 8, 85, 5, 500, 'Bus', 4, 'B', 120000.00, 'LEDLighting', '2023-02-01', '2023-02-02');
INSERT INTO Stadium_Infrastructure (stadium_id, facility_type, capacity, year_built, renovation_year, surface_type, lighting_level_lux, roof_type, security_level, accessibility_rating, wifi_coverage_percent, concession_stalls, parking_spaces, public_transport_links, emergency_exits, fire_safety_grade, maintenance_cost, sustainable_features, created_at, updated_at) VALUES (2003, 'AuxiliaryHall', 3000, 2010, 2021, 'HardFloor', 1800, 'Partial', 'High', 9, 90, 12, 2000, 'Tram,Bus', 6, 'A', 300000.00, 'RainwaterHarvesting', '2023-03-01', '2023-03-02');

-- Fan engagement program definitions
CREATE TABLE Fan_Engagement_Programs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    program_name TEXT,
    launch_date TEXT,
    target_audience TEXT,
    activities_count INTEGER,
    budget REAL,
    sponsor TEXT,
    digital_platform TEXT,
    physical_events INTEGER,
    loyalty_points_awarded INTEGER,
    average_participation INTEGER,
    satisfaction_score REAL,
    created_at TEXT,
    updated_at TEXT,
    program_manager TEXT,
    status TEXT,
    region TEXT,
    channel TEXT,
    notes TEXT,
    measurement_metric TEXT
);

INSERT INTO Fan_Engagement_Programs (club_id, program_name, launch_date, target_audience, activities_count, budget, sponsor, digital_platform, physical_events, loyalty_points_awarded, average_participation, satisfaction_score, created_at, updated_at, program_manager, status, region, channel, notes, measurement_metric) VALUES (1001, 'SeasonKickoffFest', '2023-07-01', 'AllFans', 12, 200000.00, 'EnergyCo', 'AppPortal', 8, 5000, 3500, 4.6, '2023-07-02', '2023-07-03', 'LauraSmith', 'Active', 'Europe', 'Online', 'Launch event in city square', 'EngagementRate');
INSERT INTO Fan_Engagement_Programs (club_id, program_name, launch_date, target_audience, activities_count, budget, sponsor, digital_platform, physical_events, loyalty_points_awarded, average_participation, satisfaction_score, created_at, updated_at, program_manager, status, region, channel, notes, measurement_metric) VALUES (1002, 'YouthTalentQuest', '2023-09-15', 'Youth', 20, 150000.00, 'TechGear', 'WebPortal', 5, 3000, 2100, 4.3, '2023-09-16', '2023-09-17', 'MarkLee', 'Planned', 'NorthAmerica', 'Offline', 'Regional workshops', 'ConversionRate');
INSERT INTO Fan_Engagement_Programs (club_id, program_name, launch_date, target_audience, activities_count, budget, sponsor, digital_platform, physical_events, loyalty_points_awarded, average_participation, satisfaction_score, created_at, updated_at, program_manager, status, region, channel, notes, measurement_metric) VALUES (1003, 'DigitalFanZone', '2023-11-05', 'OnlineFans', 15, 180000.00, 'StreamNet', 'MobileApp', 0, 8000, 6000, 4.8, '2023-11-06', '2023-11-07', 'SofiaGarcia', 'Active', 'Asia', 'Mobile', 'Virtual meet‑and‑greet', 'RetentionRate');

-- Sponsor exposure records per match
CREATE TABLE Sponsor_Exposure_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    team_id INTEGER,
    match_id INTEGER,
    exposure_type TEXT,
    duration_seconds INTEGER,
    impressions INTEGER,
    click_through_rate REAL,
    cost_per_impression REAL,
    contract_phase TEXT,
    start_date TEXT,
    end_date TEXT,
    platform TEXT,
    creative_asset TEXT,
    viewability_rate REAL,
    brand_safety_score INTEGER,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    campaign_id TEXT,
    exposure_value REAL
);

INSERT INTO Sponsor_Exposure_Logs (sponsor_id, team_id, match_id, exposure_type, duration_seconds, impressions, click_through_rate, cost_per_impression, contract_phase, start_date, end_date, platform, creative_asset, viewability_rate, brand_safety_score, created_at, updated_at, notes, campaign_id, exposure_value) VALUES (301, 1001, 5001, 'Billboard', 30, 150000, 0.02, 0.05, 'Active', '2023-01-01', '2023-12-31', 'StadiumLED', 'LogoBanner', 0.92, 95, '2023-01-15', '2023-01-16', 'Prime time slot', 'CMP001', 7500.00);
INSERT INTO Sponsor_Exposure_Logs (sponsor_id, team_id, match_id, exposure_type, duration_seconds, impressions, click_through_rate, cost_per_impression, contract_phase, start_date, end_date, platform, creative_asset, viewability_rate, brand_safety_score, created_at, updated_at, notes, campaign_id, exposure_value) VALUES (302, 1002, 5002, 'DigitalOverlay', 15, 200000, 0.015, 0.04, 'Pending', '2023-06-01', '2024-05-31', 'Streaming', 'SideBanner', 0.88, 90, '2023-02-20', '2023-02-21', 'Mid‑match overlay', 'CMP002', 8000.00);
INSERT INTO Sponsor_Exposure_Logs (sponsor_id, team_id, match_id, exposure_type, duration_seconds, impressions, click_through_rate, cost_per_impression, contract_phase, start_date, end_date, platform, creative_asset, viewability_rate, brand_safety_score, created_at, updated_at, notes, campaign_id, exposure_value) VALUES (303, 1003, 5003, 'PostMatchAd', 45, 120000, 0.025, 0.06, 'Active', '2023-03-01', '2025-02-28', 'TV', 'ClosingSpot', 0.95, 98, '2023-03-10', '2023-03-11', 'End of broadcast', 'CMP003', 7200.00);

-- Training camp activity catalog
CREATE TABLE Training_Camp_Activities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    camp_id INTEGER,
    activity_name TEXT,
    activity_type TEXT,
    duration_minutes INTEGER,
    intensity_level TEXT,
    coach_id INTEGER,
    location TEXT,
    equipment_needed TEXT,
    calories_burned_est INTEGER,
    focus_area TEXT,
    scheduled_date TEXT,
    start_time TEXT,
    end_time TEXT,
    participants_count INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    weather_condition TEXT,
    altitude_meters INTEGER,
    session_rating REAL
);

INSERT INTO Training_Camp_Activities (camp_id, activity_name, activity_type, duration_minutes, intensity_level, coach_id, location, equipment_needed, calories_burned_est, focus_area, scheduled_date, start_time, end_time, participants_count, notes, created_at, updated_at, weather_condition, altitude_meters, session_rating) VALUES (4001, 'Speed Drills', 'Physical', 45, 'High', 501, 'FieldNorth', 'Cones,Timers', 600, 'Acceleration', '2023-07-10', '08:00', '08:45', 22, 'Focus on first 10m sprint', '2023-07-01', '2023-07-02', 'Clear', 250, 4.7);
INSERT INTO Training_Camp_Activities (camp_id, activity_name, activity_type, duration_minutes, intensity_level, coach_id, location, equipment_needed, calories_burned_est, focus_area, scheduled_date, start_time, end_time, participants_count, notes, created_at, updated_at, weather_condition, altitude_meters, session_rating) VALUES (4002, 'Tactical Review', 'Video', 60, 'Medium', 502, 'ConferenceRoom', 'Projector,Whiteboard', 300, 'Positional Play', '2023-07-12', '10:00', '11:00', 18, 'Review last match footage', '2023-07-03', '2023-07-04', 'Cloudy', 250, 4.3);
INSERT INTO Training_Camp_Activities (camp_id, activity_name, activity_type, duration_minutes, intensity_level, coach_id, location, equipment_needed, calories_burned_est, focus_area, scheduled_date, start_time, end_time, participants_count, notes, created_at, updated_at, weather_condition, altitude_meters, session_rating) VALUES (4003, 'Set‑Piece Practice', 'Technical', 50, 'High', 503, 'TrainingArena', 'Balls,Goalposts', 550, 'Dead Ball', '2023-07-14', '14:00', '14:50', 20, 'Free‑kick and corner routines', '2023-07-05', '2023-07-06', 'Sunny', 250, 4.8);

-- Coach development records
CREATE TABLE Coach_Development_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    coach_id INTEGER,
    certification_name TEXT,
    certification_body TEXT,
    issue_date TEXT,
    expiry_date TEXT,
    level TEXT,
    status TEXT,
    score REAL,
    training_hours INTEGER,
    modules_completed INTEGER,
    mentor_id INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    program_name TEXT,
    program_id TEXT,
    region TEXT,
    language TEXT,
    study_mode TEXT,
    validation_status TEXT
);

INSERT INTO Coach_Development_Records (coach_id, certification_name, certification_body, issue_date, expiry_date, level, status, score, training_hours, modules_completed, mentor_id, notes, created_at, updated_at, program_name, program_id, region, language, study_mode, validation_status) VALUES (501, 'UEFA Pro License', 'UEFA', '2020-05-01', '2025-04-30', 'Pro', 'Active', 92.5, 200, 12, 601, 'Completed with distinction', '2020-05-02', '2020-05-03', 'Elite Coaching', 'PRO001', 'Europe', 'English', 'FullTime', 'Validated');
INSERT INTO Coach_Development_Records (coach_id, certification_name, certification_body, issue_date, expiry_date, level, status, score, training_hours, modules_completed, mentor_id, notes, created_at, updated_at, program_name, program_id, region, language, study_mode, validation_status) VALUES (502, 'Advanced Tactics Certificate', 'NationalCoachingFed', '2021-09-15', '2024-09-14', 'Advanced', 'Active', 88.0, 150, 10, 602, 'Focus on defensive structures', '2021-09-16', '2021-09-17', 'Tactical Mastery', 'TACT002', 'NorthAmerica', 'Spanish', 'PartTime', 'Validated');
INSERT INTO Coach_Development_Records (coach_id, certification_name, certification_body, issue_date, expiry_date, level, status, score, training_hours, modules_completed, mentor_id, notes, created_at, updated_at, program_name, program_id, region, language, study_mode, validation_status) VALUES (503, 'Sports Psychology Workshop', 'SportsScienceInstitute', '2022-02-10', '2026-02-09', 'Intermediate', 'Active', 91.0, 80, 5, 603, 'Applied mental skills training', '2022-02-11', '2022-02-12', 'Mindset Coaching', 'PSY003', 'Asia', 'Mandarin', 'Online', 'Validated');

-- Player language certifications
CREATE TABLE Player_Language_Certifications (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    language TEXT,
    proficiency_level TEXT,
    certification_body TEXT,
    certification_date TEXT,
    expiration_date TEXT,
    test_score INTEGER,
    oral_score INTEGER,
    written_score INTEGER,
    listening_score INTEGER,
    reading_score INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    assessor TEXT,
    credentials_id TEXT,
    country TEXT,
    dialect TEXT,
    verification_status TEXT,
    linked_profile_id INTEGER
);

INSERT INTO Player_Language_Certifications (player_api_id, language, proficiency_level, certification_body, certification_date, expiration_date, test_score, oral_score, written_score, listening_score, reading_score, notes, created_at, updated_at, assessor, credentials_id, country, dialect, verification_status, linked_profile_id) VALUES (101, 'English', 'Native', 'EFStandard', '2020-06-01', '2025-05-31', 100, 100, 100, 100, 100, 'No issues', '2020-06-02', '2020-06-03', 'JohnDoe', 'CRED001', 'England', 'Standard', 'Verified', 1);
INSERT INTO Player_Language_Certifications (player_api_id, language, proficiency_level, certification_body, certification_date, expiration_date, test_score, oral_score, written_score, listening_score, reading_score, notes, created_at, updated_at, assessor, credentials_id, country, dialect, verification_status, linked_profile_id) VALUES (203, 'Spanish', 'Advanced', 'InstitutoLengua', '2021-09-15', '2026-09-14', 88, 90, 85, 89, 87, 'Good comprehension', '2021-09-16', '2021-09-17', 'MariaGarcía', 'CRED002', 'Spain', 'Castilian', 'Verified', 2);
INSERT INTO Player_Language_Certifications (player_api_id, language, proficiency_level, certification_body, certification_date, expiration_date, test_score, oral_score, written_score, listening_score, reading_score, notes, created_at, updated_at, assessor, credentials_id, country, dialect, verification_status, linked_profile_id) VALUES (309, 'German', 'Intermediate', 'GoetheInstitut', '2022-01-20', '2027-01-19', 75, 78, 72, 74, 76, 'Needs improvement in speaking', '2022-01-21', '2022-01-22', 'HansMüller', 'CRED003', 'Germany', 'Standard', 'Pending', 3);