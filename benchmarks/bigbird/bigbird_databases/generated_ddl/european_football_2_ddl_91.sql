-- IoT_Sensor_Readings
CREATE TABLE IoT_Sensor_Readings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    sensor_uuid TEXT,
    sensor_type TEXT,
    reading_timestamp TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    air_quality_index INTEGER,
    noise_level_db REAL,
    vibration_mms REAL,
    battery_voltage REAL,
    signal_strength_dbm INTEGER,
    firmware_version TEXT,
    calibration_date TEXT,
    latitude REAL,
    longitude REAL,
    zone_name TEXT,
    maintenance_flag INTEGER,
    anomaly_score REAL,
    data_quality_score REAL,
    uploaded_by TEXT,
    FOREIGN KEY(stadium_id) REFERENCES Stadium_Facilities(id)
);
INSERT INTO IoT_Sensor_Readings VALUES (1, 10, 'SNR-001', 'TempHumidity', '2025-03-01 12:00:00', 22.5, 45.0, 12, 55.2, 0.03, 3.7, -70, 'v1.4', '2024-12-01', 40.7128, -74.0060, 'NorthWing', 0, 0.05, 0.98, 'tech01');
INSERT INTO IoT_Sensor_Readings VALUES (2, 10, 'SNR-002', 'AirQuality', '2025-03-01 12:05:00', NULL, NULL, 30, NULL, NULL, 3.6, -68, 'v1.4', '2024-12-01', 40.7129, -74.0061, 'SouthWing', 0, 0.12, 0.95, 'tech02');
INSERT INTO IoT_Sensor_Readings VALUES (3, 12, 'SNR-003', 'Noise', '2025-03-01 12:10:00', NULL, NULL, NULL, 67.8, NULL, 3.5, -65, 'v2.0', '2025-01-15', 34.0522, -118.2437, 'EastStadium', 1, 0.22, 0.90, 'tech03');

-- Fan_Health_Tracker
CREATE TABLE Fan_Health_Tracker (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    event_id INTEGER,
    check_in_time TEXT,
    heart_rate_bpm INTEGER,
    steps_taken INTEGER,
    calories_burned REAL,
    hydration_ml INTEGER,
    temperature_c REAL,
    stress_level INTEGER,
    sleep_quality INTEGER,
    attendance_flag INTEGER,
    crowd_density_level INTEGER,
    mask_compliance INTEGER,
    vaccination_status TEXT,
    first_aid_given INTEGER,
    medical_note TEXT,
    emergency_contact TEXT,
    device_id TEXT,
    firmware_version TEXT,
    data_sync_timestamp TEXT
);
INSERT INTO Fan_Health_Tracker VALUES (1, 2001, 5501, '2025-03-01 18:30:00', 78, 1500, 85.5, 500, 22.1, 2, 4, 1, 3, 1, 'FullyVaccinated', 0, 'None', 'JohnDoe', 'DEV-1001', 'fw1.2', '2025-03-01 19:00:00');
INSERT INTO Fan_Health_Tracker VALUES (2, 2002, 5501, '2025-03-01 18:32:00', 85, 1800, 92.3, 650, 23.0, 3, 5, 1, 4, 1, 'FullyVaccinated', 1, 'MinorCut', 'JaneSmith', 'DEV-1002', 'fw1.2', '2025-03-01 19:02:00');
INSERT INTO Fan_Health_Tracker VALUES (3, 2003, 5502, '2025-03-02 20:15:00', 70, 1200, 78.0, 400, 21.5, 1, 3, 0, 2, 0, 'NotVaccinated', 0, 'None', 'MikeLee', 'DEV-1003', 'fw1.3', '2025-03-02 20:45:00');

-- Broadcast_Stream_Summary
CREATE TABLE Broadcast_Stream_Summary (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    stream_id TEXT,
    platform_name TEXT,
    start_time TEXT,
    end_time TEXT,
    peak_viewers INTEGER,
    average_viewers INTEGER,
    total_view_time_minutes INTEGER,
    video_quality TEXT,
    audio_quality TEXT,
    bitrate_kbps INTEGER,
    latency_ms INTEGER,
    concurrent_streams INTEGER,
    geo_restriction TEXT,
    ad_breaks_count INTEGER,
    avg_ad_duration_seconds INTEGER,
    subtitle_languages TEXT,
    closed_caption_flag INTEGER,
    stream_status TEXT,
    ingest_server TEXT,
    cdn_provider TEXT
);
INSERT INTO Broadcast_Stream_Summary VALUES (1, 5501, 'STRM-001', 'StreamNow', '2025-03-01 20:00:00', '2025-03-01 22:00:00', 250000, 150000, 180000, '1080p', 'AAC', 5000, 250, 2, 'Global', 4, 30, 'EN,ES,FR', 1, 'Completed', 'ING-01', 'FastCDN');
INSERT INTO Broadcast_Stream_Summary VALUES (2, 5502, 'STRM-002', 'LivePlay', '2025-03-02 18:00:00', '2025-03-02 20:30:00', 300000, 180000, 210000, '720p', 'AAC', 3500, 300, 1, 'EU', 3, 45, 'EN,DE', 1, 'Completed', 'ING-02', 'EdgeCDN');
INSERT INTO Broadcast_Stream_Summary VALUES (3, 5503, 'STRM-003', 'GlobalSports', '2025-03-03 15:00:00', '2025-03-03 17:00:00', 200000, 120000, 130000, '1080p', 'AAC', 4500, 200, 3, 'NA', 5, 25, 'EN,PT', 0, 'Interrupted', 'ING-03', 'RapidCDN');

-- Stadium_Energy_Logs
CREATE TABLE Stadium_Energy_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    log_date TEXT,
    electricity_kwh REAL,
    gas_therms REAL,
    water_m3 REAL,
    renewable_percent REAL,
    peak_demand_kw REAL,
    average_demand_kw REAL,
    carbon_emission_kg REAL,
    hvac_runtime_minutes INTEGER,
    lighting_runtime_minutes INTEGER,
    backup_generator_runtime_minutes INTEGER,
    solar_generation_kwh REAL,
    wind_generation_kwh REAL,
    battery_storage_kwh REAL,
    net_import_kwh REAL,
    net_export_kwh REAL,
    energy_cost_usd REAL,
    cost_per_kwh_usd REAL,
    audit_status TEXT,
    notes TEXT
);
INSERT INTO Stadium_Energy_Logs VALUES (1, 10, '2025-02-28', 45230.5, 1200.3, 850.7, 45.2, 220.5, 150.2, 18000.3, 720, 540, 60, 1500.0, 0.0, 300.0, 20000.0, 5000.0, 12500.0, 0.276, 'Approved', 'Normal operation');
INSERT INTO Stadium_Energy_Logs VALUES (2, 12, '2025-02-28', 39800.0, 1100.0, 790.2, 50.0, 210.0, 140.0, 16000.0, 680, 500, 55, 1300.0, 0.0, 350.0, 18000.0, 3000.0, 11200.0, 0.281, 'Approved', 'Minor HVAC maintenance');
INSERT INTO Stadium_Energy_Logs VALUES (3, 14, '2025-02-28', 47000.8, 1250.6, 900.1, 42.5, 230.0, 160.0, 19000.0, 750, 560, 70, 1600.0, 0.0, 280.0, 22000.0, 6000.0, 13500.0, 0.287, 'Pending', 'Awaiting audit');

-- Player_Gaming_Stats
CREATE TABLE Player_Gaming_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    game_title TEXT,
    platform TEXT,
    gaming_handle TEXT,
    total_hours_played REAL,
    highest_rank TEXT,
    tournament_wins INTEGER,
    average_kda REAL,
    most_used_champion TEXT,
    favorite_role TEXT,
    last_online TEXT,
    stream_viewers_average INTEGER,
    stream_hours_per_week REAL,
    esports_team TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    sponsorships TEXT,
    social_media_followers INTEGER,
    achievement_badges INTEGER,
    notes TEXT,
    FOREIGN KEY(player_api_id) REFERENCES Player(player_api_id)
);
INSERT INTO Player_Gaming_Stats VALUES (1, 101, 'League of Legends', 'PC', 'SummonerX', 1200.5, 'Challenger', 3, 4.2, 'Ahri', 'Mid', '2025-02-28 20:00:00', 8000, 15.2, 'ThunderEsports', '2023-01-01', '2026-12-31', 'BrandA;BrandB', 250000, 12, 'Active in multiple tournaments');
INSERT INTO Player_Gaming_Stats VALUES (2, 102, 'FIFA 23', 'Console', 'FIFAPro', 800.0, 'Pro', 1, 2.8, 'Lionel Messi', 'Forward', '2025-02-27 18:30:00', 5000, 8.0, 'GoalMasters', '2022-06-15', '2025-06-14', 'BrandC', 120000, 5, 'Focus on football simulations');
INSERT INTO Player_Gaming_Stats VALUES (3, 103, 'Counter-Strike', 'PC', 'SniperAce', 950.3, 'Global Elite', 2, 1.5, 'AK-47', 'AWPer', '2025-02-26 22:45:00', 3000, 10.5, 'SharpShooters', '2021-03-01', '2024-02-28', 'BrandD;BrandE', 90000, 8, 'Retired from pro scene');

-- Team_Strategy_Documents
CREATE TABLE Team_Strategy_Documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    document_type TEXT,
    version INTEGER,
    author TEXT,
    created_date TEXT,
    approved_date TEXT,
    tactical_focus TEXT,
    formation TEXT,
    offensive_pattern TEXT,
    defensive_pattern TEXT,
    set_piece_style TEXT,
    pressing_intensity TEXT,
    transition_speed TEXT,
    player_roles TEXT,
    opponent_analysis TEXT,
    key_players TEXT,
    risk_assessment TEXT,
    expected_outcome TEXT,
    notes TEXT,
    attachment_path TEXT,
    FOREIGN KEY(team_id) REFERENCES Team(team_api_id)
);
INSERT INTO Team_Strategy_Documents VALUES (1, 200, 'PreMatch', 3, 'coach_john', '2025-03-01', '2025-03-02', 'High Press', '4-3-3', 'Overlap', 'Compact', 'CornerVariations', 'Intense', 'Fast', 'Wingers=Inverted;Mid=Playmaker', 'OppStrength=Midfield', 'Player10;Player7', 'Low InjuryRisk', 'Win', 'Focus on early goals', '/docs/strategy_200_prematch_v3.pdf');
INSERT INTO Team_Strategy_Documents VALUES (2, 200, 'PostMatch', 1, 'analyst_mary', '2025-03-03', '2025-03-04', 'Counter', '4-2-3-1', 'ThroughBalls', 'Zonal', 'FreeKickZone', 'Medium', 'Medium', 'Striker=TargetMan', 'OppWeakness=Fullbacks', 'Player9;Player4', 'Medium Fatigue', 'Draw', 'Need to improve defending set pieces', '/docs/strategy_200_postmatch_v1.pdf');
INSERT INTO Team_Strategy_Documents VALUES (3, 202, 'SeasonPlan', 2, 'coach_lee', '2025-01-15', '2025-01-20', 'Possession', '3-5-2', 'Overlap', 'High Line', 'CornerMixed', 'Low', 'Slow', 'Fullbacks=Attacking', 'OppAnalysis=Varied', 'Player5;Player12', 'High SquadDepth', 'Top4', 'Integrate youth players', '/docs/strategy_202_seasonplan_v2.pdf');

-- League_Sponsor_Interaction
CREATE TABLE League_Sponsor_Interaction (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    sponsor_id INTEGER,
    interaction_date TEXT,
    interaction_type TEXT,
    purpose TEXT,
    outcome TEXT,
    follow_up_required INTEGER,
    follow_up_date TEXT,
    contact_person TEXT,
    contact_email TEXT,
    notes TEXT,
    meeting_location TEXT,
    agreed_budget_usd REAL,
    contract_extension_flag INTEGER,
    media_exposure_units INTEGER,
    activation_events INTEGER,
    digital_campaigns INTEGER,
    on_site_branding_units INTEGER,
    hospitality_units INTEGER,
    compliance_status TEXT,
    FOREIGN KEY(league_id) REFERENCES League(id)
);
INSERT INTO League_Sponsor_Interaction VALUES (1, 5, 301, '2025-02-20', 'Meeting', 'Season Sponsorship Renewal', 'Agreed', 1, '2025-03-05', 'alice_jones', 'alice@example.com', 'Positive response', 'League HQ', 2000000, 1, 50000, 12, 8, 20, 15, 'Compliant');
INSERT INTO League_Sponsor_Interaction VALUES (2, 5, 302, '2025-01-15', 'Call', 'Digital Campaign Proposal', 'Pending', 0, NULL, 'bob_smith', 'bob@example.com', 'Need further metrics', 'Remote', 500000, 0, 20000, 4, 2, 5, 3, 'Pending');
INSERT INTO League_Sponsor_Interaction VALUES (3, 6, 303, '2025-02-28', 'Email', 'Community Outreach Support', 'Accepted', 0, NULL, 'carol_lee', 'carol@example.com', 'Will provide volunteers', 'Community Center', 150000, 0, 5000, 1, 0, 2, 0, 'Approved');

-- Match_Video_Assets
CREATE TABLE Match_Video_Assets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    asset_type TEXT,
    file_name TEXT,
    file_path TEXT,
    duration_seconds INTEGER,
    resolution TEXT,
    codec TEXT,
    bitrate_kbps INTEGER,
    uploader TEXT,
    upload_timestamp TEXT,
    edit_version INTEGER,
    approved_flag INTEGER,
    approval_date TEXT,
    usage_rights TEXT,
    associated_highlights TEXT,
    commentary_language TEXT,
    subtitles_available INTEGER,
    thumbnail_path TEXT,
    archive_location TEXT,
    notes TEXT,
    FOREIGN KEY(match_id) REFERENCES Match(id)
);
INSERT INTO Match_Video_Assets VALUES (1, 5501, 'FullMatch', 'match_5501_full.mp4', '/videos/full/', 7200, '1080p', 'H.264', 8000, 'media_user1', '2025-03-01 23:00:00', 1, 1, '2025-03-02', 'All', 'EN', 1, '/thumbnails/5501_full.jpg', '/archive/2025/03/', 'Ready for distribution');
INSERT INTO Match_Video_Assets VALUES (2, 5501, 'Highlights', 'match_5501_highlights.mp4', '/videos/highlights/', 900, '720p', 'H.264', 5000, 'media_user2', '2025-03-02 02:00:00', 2, 1, '2025-03-03', 'Top5Goals;BestSaves', 'EN', 1, '/thumbnails/5501_hl.jpg', '/archive/2025/03/', 'Used on social media');
INSERT INTO Match_Video_Assets VALUES (3, 5502, 'FullMatch', 'match_5502_full.mp4', '/videos/full/', 6900, '1080p', 'H.264', 8000, 'media_user1', '2025-03-02 23:30:00', 1, 0, NULL, 'All', 'EN', 0, '/thumbnails/5502_full.jpg', '/temp/', 'Pending editorial review');

-- Club_Community_Event_Details
CREATE TABLE Club_Community_Event_Details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    event_name TEXT,
    event_date TEXT,
    venue TEXT,
    target_audience TEXT,
    expected_attendance INTEGER,
    registration_required INTEGER,
    registration_deadline TEXT,
    sponsor_id INTEGER,
    coordinator_name TEXT,
    coordinator_email TEXT,
    budget_usd REAL,
    funds_raised_usd REAL,
    volunteer_count INTEGER,
    activities_description TEXT,
    media_coverage TEXT,
    post_event_report_path TEXT,
    feedback_score_avg REAL,
    notes TEXT,
    FOREIGN KEY(club_id) REFERENCES Club_Asset_Registry(id)
);
INSERT INTO Club_Community_Event_Details VALUES (1, 101, 'Youth Soccer Clinic', '2025-04-10', 'Club Stadium Field A', 'U12 Players', 150, 1, '2025-04-01', 401, 'david_k', 'david.k@example.com', 20000, 25000, 30, 'Drills, MiniGames, Coaching Talk', 'Local TV, Radio', '/reports/clinic_apr2025.pdf', 4.5, 'Great community response');
INSERT INTO Club_Community_Event_Details VALUES (2, 101, 'Charity Match', '2025-05-20', 'Main Stadium', 'General Public', 5000, 0, NULL, 402, 'emma_l', 'emma.l@example.com', 150000, 180000, 120, 'Live Music, Food Stalls, Auctions', 'National TV', '/reports/charity_may2025.pdf', 4.2, 'Exceeded fundraising goals');
INSERT INTO Club_Community_Event_Details VALUES (3, 103, 'Environmental Awareness Day', '2025-06-15', 'Club Training Grounds', 'Fans & Schools', 800, 1, '2025-06-05', 403, 'frank_m', 'frank.m@example.com', 10000, 12000, 15, 'Talks, Tree Planting, Recyclable Crafts', 'Online Stream', '/reports/env_june2025.pdf', 4.8, 'Positive media coverage');

-- Training_Center_Airflow_Analysis
CREATE TABLE Training_Center_Airflow_Analysis (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    center_id INTEGER,
    analysis_date TEXT,
    sensor_section TEXT,
    airflow_cfm REAL,
    temperature_c REAL,
    humidity_percent REAL,
    pressure_pa REAL,
    co2_ppm REAL,
    tvoc_ppb REAL,
    particulate_pm25_ugm3 REAL,
    particulate_pm10_ugm3 REAL,
    fan_speed_rpm INTEGER,
    damper_position_percent INTEGER,
    filters_status TEXT,
    maintenance_needed INTEGER,
    maintenance_date TEXT,
    notes TEXT,
    analyst_name TEXT,
    analyst_contact TEXT,
    report_path TEXT,
    compliance_flag INTEGER
);
INSERT INTO Training_Center_Airflow_Analysis VALUES (1, 20, '2025-02-28', 'NorthWing', 850.5, 21.5, 45.0, 101325, 600, 300, 12.5, 18.0, 1500, 75, 'Good', 0, NULL, 'Airflow within specs', 'sarah_k', 'sarah.k@example.com', '/reports/airflow_north_20250228.pdf', 1);
INSERT INTO Training_Center_Airflow_Analysis VALUES (2, 20, '2025-02-28', 'SouthWing', 790.2, 22.0, 48.0, 101300, 650, 320, 20.0, 22.5, 1400, 80, 'FilterReplace', 1, '2025-03-15', 'Filters nearing end of life', 'mark_t', 'mark.t@example.com', '/reports/airflow_south_20250228.pdf', 0);
INSERT INTO Training_Center_Airflow_Analysis VALUES (3, 22, '2025-02-28', 'EastWing', 910.0, 20.8, 42.0, 101350, 580, 280, 10.0, 15.5, 1600, 70, 'Good', 0, NULL, 'Excellent airflow', 'linda_p', 'linda.p@example.com', '/reports/airflow_east_20250228.pdf', 1);