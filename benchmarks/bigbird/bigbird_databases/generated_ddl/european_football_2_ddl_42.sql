-- Broadcast feed quality metrics per match
CREATE TABLE Broadcast_Feed_Quality (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_api_id INTEGER,
    feed_type TEXT,
    resolution_width INTEGER,
    resolution_height INTEGER,
    bitrate_kbps INTEGER,
    frame_rate_fps INTEGER,
    latency_ms INTEGER,
    dropped_frames INTEGER,
    audio_channels INTEGER,
    audio_bitrate_kbps INTEGER,
    encoding_codec TEXT,
    transmission_path TEXT,
    signal_strength_db REAL,
    error_rate_percent REAL,
    start_time TEXT,
    end_time TEXT,
    provider_name TEXT,
    viewer_count INTEGER,
    avg_buffer_time_ms INTEGER,
    quality_score REAL,
    notes TEXT
);
INSERT INTO Broadcast_Feed_Quality VALUES (1, 10101, 'Live', 1920, 1080, 4500, 60, 120, 5, 2, 256, 'H264', 'Fiber', -1.2, 0.03, '2025-04-10 14:00', '2025-04-10 16:00', 'GlobalStream', 150000, 250, 8.7, 'Standard quality');
INSERT INTO Broadcast_Feed_Quality VALUES (2, 10102, 'Highlight', 1280, 720, 2500, 30, 80, 2, 2, 128, 'HEVC', 'Satellite', -0.8, 0.01, '2025-04-11 10:00', '2025-04-11 10:30', 'SportNet', 85000, 180, 9.2, 'Highlights package');
INSERT INTO Broadcast_Feed_Quality VALUES (3, 10103, 'Live', 3840, 2160, 8000, 60, 200, 10, 6, 512, 'AV1', '5G', -2.0, 0.05, '2025-04-12 18:00', '2025-04-12 20:00', 'UltraLive', 200000, 300, 7.9, '4K ultra');

-- Energy supply contracts for stadiums
CREATE TABLE Stadium_Energy_Contracts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    contract_start_date TEXT,
    contract_end_date TEXT,
    energy_provider TEXT,
    contract_type TEXT,
    contracted_mwh INTEGER,
    price_per_mwh REAL,
    renewable_percent REAL,
    fixed_fee_usd INTEGER,
    variable_fee_usd INTEGER,
    green_certificates INTEGER,
    termination_clause TEXT,
    renewal_option TEXT,
    payment_terms TEXT,
    contact_name TEXT,
    contact_phone TEXT,
    contact_email TEXT,
    status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Stadium_Energy_Contracts VALUES (1, 10, '2023-01-01', '2028-12-31', 'SolarPowerCo', 'Supply', 500000, 45.5, 85.0, 20000, 0, 120, '30day notice', 'AutoRenew', 'Net30', 'Alice Green', '5551234567', 'alice@solarco.com', 'Active', 'Focus on renewables', '2025-01-15', '2025-01-15');
INSERT INTO Stadium_Energy_Contracts VALUES (2, 12, '2022-06-01', '2027-05-31', 'GridEnergy Ltd', 'Purchase', 800000, 60.2, 20.0, 30000, 0, 0, '90day notice', 'NoRenew', 'Prepaid', 'Bob White', '5559876543', 'bob@gridenergy.com', 'Active', 'Standard grid supply', '2025-01-15', '2025-01-15');
INSERT INTO Stadium_Energy_Contracts VALUES (3, 15, '2024-03-15', '2029-03-14', 'WindForce', 'Supply', 450000, 42.0, 95.0, 25000, 0, 200, '60day notice', 'AutoRenew', 'Net45', 'Carol Blue', '5555551212', 'carol@windforce.com', 'Pending', 'Negotiations ongoing', '2025-01-15', '2025-01-15');

-- Fan generated video content metadata
CREATE TABLE Fan_Video_Content (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    content_type TEXT,
    title TEXT,
    description TEXT,
    upload_date TEXT,
    duration_seconds INTEGER,
    platform TEXT,
    views INTEGER,
    likes INTEGER,
    dislikes INTEGER,
    comments_count INTEGER,
    share_count INTEGER,
    tags TEXT,
    language TEXT,
    region TEXT,
    age_restriction TEXT,
    content_rating TEXT,
    moderation_status TEXT,
    thumbnail_url TEXT,
    video_url TEXT,
    sponsor_id INTEGER,
    monetization_status TEXT
);
INSERT INTO Fan_Video_Content VALUES (1, 1001, 'Highlight', 'Epic Goal vs Rivals', 'Amazing last minute goal', '2025-01-20', 45, 'YouTube', 120000, 3400, 120, 560, 300, 'goal,finale', 'EN', 'EU', 'None', 'PG', 'Approved', 'http://img.example.com/thumb1.jpg', 'http://vid.example.com/vid1.mp4', NULL, 'AdSupported');
INSERT INTO Fan_Video_Content VALUES (2, 1002, 'Vlog', 'Stadium Tour Day', 'Behind the scenes tour of the home stadium', '2025-02-05', 300, 'TikTok', 85000, 2100, 90, 430, 150, 'tour,stadium', 'EN', 'NA', 'None', 'G', 'Approved', 'http://img.example.com/thumb2.jpg', 'http://vid.example.com/vid2.mp4', 5, 'Partnered');
INSERT INTO Fan_Video_Content VALUES (3, 1003, 'Interview', 'Player Q&A Session', 'Fans ask questions to the star striker', '2025-03-12', 600, 'Instagram', 67000, 1800, 70, 380, 200, 'interview,player', 'ES', 'SA', 'None', 'PG', 'Pending', 'http://img.example.com/thumb3.jpg', 'http://vid.example.com/vid3.mp4', 3, 'Pending');

-- Career statistics for referees
CREATE TABLE Referee_Career_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    referee_id INTEGER,
    season TEXT,
    league_id INTEGER,
    matches_officiated INTEGER,
    yellow_cards_given INTEGER,
    red_cards_given INTEGER,
    offsides_given INTEGER,
    penalties_given INTEGER,
    fouls_called INTEGER,
    average_decision_time_sec REAL,
    var_reviews INTEGER,
    var_overturned INTEGER,
    fitness_score REAL,
    days_off INTEGER,
    injuries_reported INTEGER,
    training_sessions_attended INTEGER,
    certification_level TEXT,
    awards_received INTEGER,
    disciplinary_actions INTEGER,
    salary_usd INTEGER,
    contract_end_date TEXT
);
INSERT INTO Referee_Career_Stats VALUES (1, 501, '2024/2025', 1, 38, 120, 5, 60, 8, 315, 4.5, 2, 89.5, 2, 0, 12, 'Level1', 1, 0, 75000, '2026-06-30');
INSERT INTO Referee_Career_Stats VALUES (2, 502, '2024/2025', 2, 34, 110, 4, 55, 7, 298, 3.8, 1, 92.0, 1, 0, 10, 'Level2', 2, 0, 80000, '2027-12-31');
INSERT INTO Referee_Career_Stats VALUES (3, 503, '2023/2024', 1, 40, 130, 6, 70, 9, 322, 5.2, 3, 85.0, 3, 1, 14, 'Level1', 0, 1, 72000, '2025-11-15');

-- Historical kit color information for teams
CREATE TABLE Team_Historical_Kit_Colors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    season TEXT,
    primary_color TEXT,
    secondary_color TEXT,
    third_color TEXT,
    kit_type TEXT,
    manufacturer TEXT,
    sponsor_logo TEXT,
    home_kit_image TEXT,
    away_kit_image TEXT,
    third_kit_image TEXT,
    design_notes TEXT,
    launch_date TEXT,
    retire_date TEXT,
    fan_vote_percent REAL,
    sales_units INTEGER,
    average_price_usd REAL,
    total_revenue_usd REAL,
    sustainability_material_percent REAL,
    rating_fan_satisfaction REAL
);
INSERT INTO Team_Historical_Kit_Colors VALUES (1, 10, '2022/2023', 'Blue', 'White', 'Yellow', 'Home', 'Adidas', 'LogoA', 'home2022.png', 'away2022.png', 'third2022.png', 'Classic stripes', '2022-07-01', '2023-06-30', 78.5, 15000, 85.0, 1275000, 30.0, 4.2);
INSERT INTO Team_Historical_Kit_Colors VALUES (2, 10, '2023/2024', 'Red', 'Black', 'Grey', 'Away', 'Nike', 'LogoB', 'home2023.png', 'away2023.png', 'third2023.png', 'Modern gradient', '2023-07-01', '2024-06-30', 65.2, 12000, 90.0, 1080000, 45.0, 3.9);
INSERT INTO Team_Historical_Kit_Colors VALUES (3, 12, '2022/2023', 'Green', 'White', 'Gold', 'Home', 'Puma', 'LogoC', 'home12_2022.png', 'away12_2022.png', 'third12_2022.png', 'Eco‑friendly fabrics', '2022-08-01', '2023-07-31', 82.0, 18000, 78.0, 1404000, 60.0, 4.5);

-- Season review summary for leagues
CREATE TABLE League_Season_Review (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    total_matches INTEGER,
    total_goals INTEGER,
    average_attendance INTEGER,
    broadcast_revenue_usd INTEGER,
    sponsorship_revenue_usd INTEGER,
    prize_money_usd INTEGER,
    disciplinary_incidents INTEGER,
    avg_player_age REAL,
    foreign_players_percent REAL,
    home_win_percent REAL,
    draw_percent REAL,
    away_win_percent REAL,
    var_implementation TEXT,
    fan_engagement_index REAL,
    social_media_mentions INTEGER,
    average_ticket_price_usd REAL,
    revenue_growth_percent REAL,
    notes TEXT
);
INSERT INTO League_Season_Review VALUES (1, 1, '2024/2025', 380, 1120, 25000, 8500000, 4200000, 3000000, 45, 27.4, 38.5, 48.0, 4.0, 'Full', 7.8, 124500, 75.0, 5.2, 'Strong growth');
INSERT INTO League_Season_Review VALUES (2, 2, '2024/2025', 306, 861, 18000, 6200000, 3100000, 2100000, 30, 26.1, 36.0, 44.5, 5.5, 'Partial', 6.9, 98500, 68.0, 3.9, 'Stable');
INSERT INTO League_Season_Review VALUES (3, 3, '2023/2024', 342, 1025, 21000, 7400000, 3850000, 2600000, 38, 27.0, 37.5, 46.2, 4.8, 'Full', 7.2, 110200, 71.5, 4.5, 'Improved VAR usage');

-- Historical rivalry data between clubs
CREATE TABLE Match_Rivalry_History (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_a_id INTEGER,
    team_b_id INTEGER,
    rivalry_name TEXT,
    first_meeting_date TEXT,
    total_matches INTEGER,
    team_a_wins INTEGER,
    team_b_wins INTEGER,
    draws INTEGER,
    total_goals INTEGER,
    biggest_win_margin INTEGER,
    most_recent_match_date TEXT,
    most_recent_winner INTEGER,
    rivalry_intensity_score REAL,
    fan_sentiment_score REAL,
    media_coverage_score REAL,
    merchandise_sales_usd INTEGER,
    ticket_sales_usd INTEGER,
    social_media_virality_score REAL,
    anniversary_years INTEGER,
    notes TEXT,
    created_at TEXT
);
INSERT INTO Match_Rivalry_History VALUES (1, 10, 12, 'Northern Derby', '2001-09-15', 52, 28, 18, 6, 140, 5, '2025-03-10', 10, 8.7, 7.9, 9.2, 1250000, 870000, 6.5, 24, 'Most contested derby', '2025-01-15');
INSERT INTO Match_Rivalry_History VALUES (2, 12, 15, 'Coastal Clash', '2005-04-22', 37, 15, 16, 6, 110, 4, '2024-11-05', 15, 7.2, 6.8, 8.5, 950000, 610000, 5.8, 19, 'Evenly matched', '2025-01-15');
INSERT INTO Match_Rivalry_History VALUES (3, 10, 15, 'River Rivalry', '1998-08-08', 45, 22, 20, 3, 130, 6, '2025-02-20', 15, 7.9, 8.1, 1.1, 1120000, 790000, 6.9, 27, 'Intense fan atmosphere', '2025-01-15');

-- Player doping test records
CREATE TABLE Player_Doping_Tests (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    test_date TEXT,
    testing_agency TEXT,
    substance_detected TEXT,
    result TEXT,
    sanction_type TEXT,
    sanction_duration_days INTEGER,
    ban_start_date TEXT,
    ban_end_date TEXT,
    appeal_status TEXT,
    appeal_deadline TEXT,
    medical_exemption TEXT,
    sample_type TEXT,
    lab_name TEXT,
    batch_number TEXT,
    detection_method TEXT,
    analyst_name TEXT,
    remarks TEXT,
    updated_by TEXT,
    updated_at TEXT
);
INSERT INTO Player_Doping_Tests VALUES (1, 1001, '2024-05-12', 'WADA', 'None', 'Negative', 'None', 0, NULL, NULL, 'N/A', NULL, 'No', 'Urine', 'LabX', 'B123', 'MassSpec', 'DrSmith', 'Clean test', 'Admin', '2025-01-15');
INSERT INTO Player_Doping_Tests VALUES (2, 1002, '2024-09-04', 'National Agency', 'EPO', 'Positive', 'Suspension', 180, '2024-10-01', '2025-03-30', 'Pending', '2024-10-15', 'No', 'Blood', 'LabY', 'C456', 'Immunoassay', 'DrJones', 'First offense', 'Admin', '2025-01-15');
INSERT INTO Player_Doping_Tests VALUES (3, 1003, '2025-01-20', 'WADA', 'None', 'Negative', 'None', 0, NULL, NULL, 'N/A', NULL, 'No', 'Urine', 'LabZ', 'D789', 'GC-MS', 'DrLee', 'Follow‑up test', 'Admin', '2025-01-15');

-- Impact of weather on training sessions
CREATE TABLE Training_Weather_Impact (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    training_date TEXT,
    weather_condition TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    wind_speed_kmh REAL,
    precipitation_mm REAL,
    uv_index INTEGER,
    training_type TEXT,
    duration_minutes INTEGER,
    attendance_count INTEGER,
    performance_score REAL,
    injury_risk_level TEXT,
    equipment_adjustments TEXT,
    notes TEXT,
    trainer_id INTEGER,
    location TEXT,
    next_day_forecast TEXT,
    impact_rating REAL,
    created_at TEXT
);
INSERT INTO Training_Weather_Impact VALUES (1, 10, '2025-02-10', 'Sunny', 22.5, 45.0, 12.0, 0.0, 5, 'Tactical', 120, 22, 88.5, 'Low', 'None', 'Clear day, good intensity', 301, 'MainField', 'Cloudy', 8.2, '2025-01-15');
INSERT INTO Training_Weather_Impact VALUES (2, 12, '2025-02-11', 'Rain', 16.0, 80.0, 20.0, 5.2, 3, 'Physical', 90, 18, 71.0, 'Medium', 'Added anti‑slip mats', 'Wet pitch affected drills', 302, 'TrainingGround', 'Rainy', 5.4, '2025-01-15');
INSERT INTO Training_Weather_Impact VALUES (3, 15, '2025-02-12', 'Snow', -2.0, 90.0, 5.0, 0.0, 2, 'Recovery', 60, 15, 65.2, 'High', 'Heated indoor hall', 'Cold weather limited outdoor work', 303, 'IndoorHall', 'Clear', 4.1, '2025-01-15');

-- Club social media advertising spend
CREATE TABLE Club_Social_Media_Ad_Spend (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    fiscal_year TEXT,
    platform TEXT,
    campaign_name TEXT,
    start_date TEXT,
    end_date TEXT,
    budget_usd INTEGER,
    spend_usd INTEGER,
    impressions INTEGER,
    clicks INTEGER,
    ctr_percent REAL,
    cpc_usd REAL,
    cpm_usd REAL,
    conversions INTEGER,
    conversion_value_usd REAL,
    target_audience TEXT,
    creative_type TEXT,
    ad_format TEXT,
    frequency_cap INTEGER,
    reach_unique INTEGER,
    notes TEXT,
    created_at TEXT
);
INSERT INTO Club_Social_Media_Ad_Spend VALUES (1, 10, '2024', 'Facebook', 'SeasonKickoff', '2024-08-01', '2024-09-30', 150000, 145200, 32000000, 85000, 0.27, 1.71, 4.54, 1200, 480000, 'Adults 18-35', 'Video', 'Feed', 3, 950000, 'Strong engagement', '2025-01-15');
INSERT INTO Club_Social_Media_Ad_Spend VALUES (2, 12, '2024', 'Instagram', 'TicketPromo', '2024-10-01', '2024-10-31', 80000, 79000, 18000000, 42000, 0.23, 1.88, 4.39, 950, 285000, 'Fans 18-45', 'ImageCarousel', 'Stories', 4, 620000, 'High click‑through', '2025-01-15');
INSERT INTO Club_Social_Media_Ad_Spend VALUES (3, 15, '2024', 'Twitter', 'MerchLaunch', '2024-11-15', '2024-12-15', 60000, 59500, 15000000, 30000, 0.20, 1.98, 3.97, 800, 210000, 'Global audience', 'GIF', 'PromotedTweet', 2, 540000, 'Good reach', '2025-01-15');