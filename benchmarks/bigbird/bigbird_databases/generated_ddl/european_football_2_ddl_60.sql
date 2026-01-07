-- Table storing performance metrics for esports teams that are unrelated to traditional football data
CREATE TABLE Esports_Team_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    esports_team_id INTEGER,
    record_date TEXT,
    game_title TEXT,
    player_count INTEGER,
    avg_kda REAL,
    avg_gpm INTEGER,
    avg_xpm INTEGER,
    win_rate REAL,
    avg_match_duration INTEGER,
    peak_concurrent_viewers INTEGER,
    avg_viewers INTEGER,
    sponsorship_level TEXT,
    region TEXT,
    team_rank INTEGER,
    coach_name TEXT,
    analyst_name TEXT,
    training_hours_per_week INTEGER,
    strategy_focus TEXT,
    tech_stack TEXT,
    social_media_followers INTEGER,
    logo_color_scheme TEXT
);

INSERT INTO Esports_Team_Analytics VALUES (1, 101, '2024-10-01', 'League_of_Legends', 5, 3.2, 520, 580, 0.65, 35, 120000, 75000, 'Gold', 'EU', 12, 'Alice Smith', 'Bob Jones', 20, 'Aggressive', 'PC', 250000, 'Blue_Green');
INSERT INTO Esports_Team_Analytics VALUES (2, 102, '2024-10-02', 'Valorant', 5, 2.8, 0, 0, 0.72, 30, 90000, 60000, 'Platinum', 'NA', 5, 'Carlos Ruiz', 'Dana Lee', 18, 'Defensive', 'PC', 180000, 'Red_Black');
INSERT INTO Esports_Team_Analytics VALUES (3, 103, '2024-10-03', 'CSGO', 5, 2.5, 0, 0, 0.58, 40, 110000, 70000, 'Silver', 'ASIA', 20, 'Ethan Kim', 'Fiona Wang', 22, 'Balanced', 'PC', 210000, 'Orange_Purple');

-- Table describing metrics collected from virtual fan events (e.g., online watch parties)
CREATE TABLE Virtual_Event_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    event_name TEXT,
    event_date TEXT,
    platform TEXT,
    total_participants INTEGER,
    peak_concurrent INTEGER,
    avg_watch_time_minutes INTEGER,
    chat_message_count INTEGER,
    emoji_reaction_count INTEGER,
    polls_taken INTEGER,
    average_poll_score REAL,
    sponsor_display_impressions INTEGER,
    merchandise_clicks INTEGER,
    ad_breaks INTEGER,
    average_ad_view_percentage REAL,
    stream_quality TEXT,
    latency_ms INTEGER,
    geolocation_region TEXT,
    device_type TEXT,
    bandwidth_usage_mb REAL,
    feedback_score INTEGER,
    highlight_clip_count INTEGER,
    post_event_shares INTEGER
);

INSERT INTO Virtual_Event_Metrics VALUES (1, 301, 'Season_Opener_Party', '2024-09-15', 'YouTube', 15000, 8000, 45, 12000, 3400, 200, 4.2, 50000, 800, 3, 78.5, '1080p', 120, 'Europe', 'Desktop', 3.2, 85, 12, 2500);
INSERT INTO Virtual_Event_Metrics VALUES (2, 302, 'Champions_League_Final_Watch', '2024-05-30', 'Twitch', 25000, 15000, 60, 21000, 5600, 350, 4.6, 75000, 1150, 4, 82.1, '720p', 140, 'NorthAmerica', 'Mobile', 4.1, 92, 20, 4200);
INSERT INTO Virtual_Event_Metrics VALUES (3, 303, 'Fan_Engagement_Quiz_Night', '2024-11-02', 'Zoom', 8000, 3000, 30, 5000, 1200, 150, 3.9, 25000, 400, 2, 70.3, '720p', 200, 'Asia', 'Desktop', 2.8, 78, 8, 1300);

-- Table logging sustainability audits performed on stadium facilities
CREATE TABLE Stadium_Sustainability_Audits (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    audit_date TEXT,
    auditor_name TEXT,
    overall_score REAL,
    energy_efficiency_rating TEXT,
    water_use_reduction_percent REAL,
    waste_diversion_rate_percent REAL,
    renewable_energy_percent REAL,
    carbon_footprint_tonnes REAL,
    lighting_efficiency_rating TEXT,
    hvac_efficiency_rating TEXT,
    roofing_insulation_rating TEXT,
    grass_maintenance_water_usage_liters REAL,
    recycling_programs_count INTEGER,
    green_certification_status TEXT,
    solar_panel_capacity_kw REAL,
    wind_turbine_count INTEGER,
    electric_vehicle_charging_stalls INTEGER,
    biodiversity_score REAL,
    stormwater_management_score REAL,
    noise_pollution_level_db REAL,
    air_quality_index INTEGER,
    sustainability_action_items TEXT,
    follow_up_deadline TEXT,
    notes TEXT
);

INSERT INTO Stadium_Sustainability_Audits VALUES (1, 501, '2024-06-10', 'Laura Green', 88.5, 'A', 22.3, 45.0, 12.5, 3.2, 'A+', 'A', 'A', 15000, 8, 'LEED_Gold', 5.0, 2, 12, 78.4, 81.2, 55, 42, 'Upgrade HVAC filters; install rain gardens', '2025-01-01', 'Good overall performance');
INSERT INTO Stadium_Sustainability_Audits VALUES (2, 502, '2024-07-15', 'Mark Rivers', 73.2, 'B', 15.0, 30.5, 8.0, 5.1, 'B', 'B', 'B', 12000, 5, 'ISO_14001', 2.5, 0, 6, 65.0, 70.5, 60, 38, 'Add solar panels on west roof', '2025-06-30', 'Areas for improvement noted');
INSERT INTO Stadium_Sustainability_Audits VALUES (3, 503, '2024-08-20', 'Sofia Patel', 92.0, 'A+', 28.7, 55.2, 15.8, 2.5, 'A+', 'A+', 'A+', 18000, 10, 'LEED_Platinum', 7.2, 3, 18, 82.1, 88.0, 50, 35, 'Implement smart lighting system', '2024-12-15', 'Excellent results');

-- Table capturing logs of fan interactions within virtual reality experiences
CREATE TABLE Fan_VR_Experience_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    vr_session_id INTEGER,
    session_date TEXT,
    vr_platform TEXT,
    avatar_name TEXT,
    duration_minutes INTEGER,
    zones_visited INTEGER,
    interactions_count INTEGER,
    objects_manipulated INTEGER,
    social_interactions INTEGER,
    emoticon_usage INTEGER,
    headset_model TEXT,
    latency_ms INTEGER,
    average_fps REAL,
    motion_sickness_reports INTEGER,
    favorite_zone TEXT,
    achievement_unlocked TEXT,
    points_earned INTEGER,
    feedback_rating INTEGER,
    audio_quality TEXT,
    visual_quality TEXT,
    network_type TEXT,
    ip_country TEXT,
    notes TEXT
);

INSERT INTO Fan_VR_Experience_Logs VALUES (1, 1001, 9001, '2024-09-05', 'Oculus', 'FanAvatar01', 45, 5, 120, 30, 8, 15, 'Quest_2', 85, 72.5, 0, 'Stadium_Tunnel', 'First_Scout', 2500, 9, 'High', 'High', 'WiFi', 'Germany', '');
INSERT INTO Fan_VR_Experience_Logs VALUES (2, 1002, 9002, '2024-09-06', 'HTC_Vive', 'FanAvatar02', 30, 3, 80, 20, 4, 10, 'Vive_Pro', 110, 68.0, 1, 'Locker_Room', 'Goal_Saver', 1800, 8, 'Medium', 'Medium', '4G', 'Canada', '');
INSERT INTO Fan_VR_Experience_Logs VALUES (3, 1003, 9003, '2024-09-07', 'Valve_Index', 'FanAvatar03', 60, 7, 200, 45, 12, 22, 'Index', 70, 75.0, 0, 'VIP_Lounge', 'MVP_Collector', 3200, 10, 'Very_High', 'Very_High', 'Ethernet', 'Japan', '');

-- Table storing raw biometric sensor data recorded from players during training sessions
CREATE TABLE Player_Biometric_Sensors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    session_timestamp TEXT,
    heart_rate_bpm INTEGER,
    respiration_rate_bpm INTEGER,
    body_temp_celsius REAL,
    blood_oxygen_percent REAL,
    galvanic_skin_response REAL,
    stride_length_cm REAL,
    vertical_jump_cm REAL,
    acceleration_g REAL,
    fatigue_score REAL,
    recovery_index REAL,
    sleep_quality_score INTEGER,
    hydration_level_percent REAL,
    muscle_soreness_score INTEGER,
    lactic_acid_mmol_l REAL,
    cortisol_ug_dl REAL,
    insulin_ug_dl REAL,
    glucose_mg_dl REAL,
    stress_level_score REAL,
    injury_risk_score REAL,
    notes TEXT
);

INSERT INTO Player_Biometric_Sensors VALUES (1, 20001, '2024-09-10 08:15:00', 78, 16, 36.7, 98.2, 0.12, 150.5, 55.0, 1.02, 23.5, 78.0, 85, 92.0, 3, 4.5, 12.3, 5.1, 95, 16.4, 0.3, '');
INSERT INTO Player_Biometric_Sensors VALUES (2, 20002, '2024-09-10 09:30:00', 82, 18, 37.1, 97.5, 0.15, 152.0, 57.2, 0.98, 24.1, 80.5, 88, 90.5, 2, 3.8, 11.7, 5.5, 101, 14.8, 0.2, '');
INSERT INTO Player_Biometric_Sensors VALUES (3, 20003, '2024-09-10 10:45:00', 76, 15, 36.5, 99.0, 0.10, 148.3, 53.9, 1.05, 22.9, 82.0, 90, 94.2, 4, 5.0, 13.0, 4.8, 98, 17.2, 0.4, '');

-- Table tracking the supply chain flow of club merchandise items
CREATE TABLE Club_Merchandise_Supply_Chain (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sku TEXT,
    product_name TEXT,
    category TEXT,
    supplier_id INTEGER,
    manufacturer_id INTEGER,
    production_country TEXT,
    batch_number TEXT,
    production_date TEXT,
    arrival_warehouse_date TEXT,
    warehouse_location TEXT,
    quantity_produced INTEGER,
    quantity_received INTEGER,
    quantity_sold INTEGER,
    quantity_returned INTEGER,
    current_stock INTEGER,
    reorder_point INTEGER,
    lead_time_days INTEGER,
    unit_cost_usd REAL,
    sale_price_usd REAL,
    shipping_method TEXT,
    carrier_name TEXT,
    customs_clearance_status TEXT,
    quality_inspection_score REAL,
    last_inventory_audit TEXT,
    notes TEXT
);

INSERT INTO Club_Merchandise_Supply_Chain VALUES (1, 'SKU001', 'Home_Jersey', 'Apparel', 301, 401, 'Bangladesh', 'BATCH1001', '2024-05-01', '2024-05-10', 'WH_A', 5000, 4950, 3500, 100, 1350, 800, 30, 45.00, 79.99, 'Air', 'DHL', 'Cleared', 96.5, '2024-08-01', '');
INSERT INTO Club_Merchandise_Supply_Chain VALUES (2, 'SKU002', 'Scarf', 'Apparel', 302, 402, 'Vietnam', 'BATCH1002', '2024-05-15', '2024-05-22', 'WH_B', 3000, 2980, 2100, 50, 830, 500, 25, 12.00, 24.99, 'Sea', 'Maersk', 'Pending', 92.0, '2024-08-05', '');
INSERT INTO Club_Merchandise_Supply_Chain VALUES (3, 'SKU003', 'Water_Bottle', 'Accessories', 303, 403, 'China', 'BATCH1003', '2024-06-01', '2024-06-08', 'WH_A', 8000, 7950, 5600, 150, 2200, 1500, 20, 5.50, 14.99, 'Air', 'FedEx', 'Cleared', 98.0, '2024-08-10', '');

-- Table describing contracts for media streaming rights owned by leagues
CREATE TABLE League_Media_Streaming_Contracts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    contract_start_date TEXT,
    contract_end_date TEXT,
    streaming_platform TEXT,
    region TEXT,
    exclusive_flag TEXT,
    annual_fee_usd REAL,
    revenue_share_percent REAL,
    min_broadcast_quality TEXT,
    max_concurrent_streams INTEGER,
    ad_insertion_allowed TEXT,
    highlight_clips_allowed INTEGER,
    sublicensing_allowed TEXT,
    early_termination_fee_usd REAL,
    renewal_option_years INTEGER,
    reporting_frequency TEXT,
    data_sharing_compliance TEXT,
    contract_status TEXT,
    contact_person TEXT,
    contact_email TEXT,
    remarks TEXT
);

INSERT INTO League_Media_Streaming_Contracts VALUES (1, 1, '2024-01-01', '2028-12-31', 'StreamCo', 'Europe', 'Yes', 15000000, 30.0, '1080p', 200000, 'Yes', 5000, 'No', 2000000, 2, 'Quarterly', 'GDPR', 'Active', 'Maria Gomez', 'maria.gomez@streamco.com', '');
INSERT INTO League_Media_Streaming_Contracts VALUES (2, 2, '2023-07-01', '2026-06-30', 'PlayLive', 'NorthAmerica', 'No', 8000000, 20.0, '720p', 120000, 'No', 3000, 'Yes', 1200000, 1, 'Annual', 'CCPA', 'Active', 'John Lee', 'john.lee@playlive.com', '');
INSERT INTO League_Media_Streaming_Contracts VALUES (3, 3, '2025-03-15', '2030-03-14', 'GlobalSport', 'Asia', 'Yes', 20000000, 25.0, '4K', 250000, 'Yes', 8000, 'No', 2500000, 3, 'Semiannual', 'PDPA', 'Pending', 'Aiko Tanaka', 'aiko.tanaka@globalsport.com', '');

-- Table recording carbon footprint data for travel related to matches and team activities
CREATE TABLE Travel_Carbon_Footprint (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    travel_event_id INTEGER,
    team_id INTEGER,
    travel_type TEXT,
    departure_city TEXT,
    arrival_city TEXT,
    departure_date TEXT,
    arrival_date TEXT,
    distance_km REAL,
    transport_mode TEXT,
    passengers INTEGER,
    cargo_tonnage REAL,
    fuel_consumed_liters REAL,
    co2_emissions_kg REAL,
    average_speed_kmh REAL,
    carbon_offset_purchased BOOLEAN,
    offset_amount_kg REAL,
    travel_cost_usd REAL,
    travel_purpose TEXT,
    notes TEXT
);

INSERT INTO Travel_Carbon_Footprint VALUES (1, 401, 10, 'Match_Travel', 'London', 'Madrid', '2024-09-12', '2024-09-12', 1260.5, 'Air', 25, 0.0, 2100.0, 5820.0, 850.0, 1, 1000.0, 15000, 'Away_Match', '');
INSERT INTO Travel_Carbon_Footprint VALUES (2, 402, 12, 'Training_Camp', 'Berlin', 'Munich', '2024-09-20', '2024-09-20', 585.0, 'Bus', 30, 2.5, 350.0, 925.0, 70.0, 0, 0.0, 3000, 'Preseason_Training', '');
INSERT INTO Travel_Carbon_Footprint VALUES (3, 403, 15, 'Friendly_Tour', 'Paris', 'Tokyo', '2024-10-05', '2024-10-06', 9710.0, 'Air', 28, 5.0, 18000.0, 49800.0, 900.0, 1, 5000.0, 25000, 'International_Friendly', '');

-- Table outlining timelines and milestones for sponsor activation campaigns
CREATE TABLE Sponsor_Activation_Timelines (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    campaign_name TEXT,
    activation_start_date TEXT,
    activation_end_date TEXT,
    key_milestone_1 TEXT,
    milestone_1_date TEXT,
    key_milestone_2 TEXT,
    milestone_2_date TEXT,
    key_milestone_3 TEXT,
    milestone_3_date TEXT,
    primary_channel TEXT,
    secondary_channel TEXT,
    budget_usd REAL,
    expected_impressions INTEGER,
    expected_engagements INTEGER,
    target_audience TEXT,
    geographic_focus TEXT,
    creative_approval_status TEXT,
    legal_approval_status TEXT,
    performance_review_date TEXT,
    final_report_submitted BOOLEAN,
    notes TEXT
);

INSERT INTO Sponsor_Activation_Timelines VALUES (1, 601, 'Summer_Fan_Zone', '2024-06-01', '2024-08-31', 'Stadium_Banner_Install', '2024-06-05', 'Social_Media_Teaser', '2024-06-20', 'Giveaway_Draw', '2024-08-15', 'Stadium', 'Instagram', 250000, 5000000, 300000, 'Young_Adults', 'Europe', 'Approved', 'Approved', '2024-09-10', 1, '');
INSERT INTO Sponsor_Activation_Timelines VALUES (2, 602, 'Winter_Heatwave', '2024-12-01', '2025-02-28', 'TV_Commercial_Air', '2024-12-10', 'Online_Sweepstakes', '2025-01-15', 'Fan_Experience_Event', '2025-02-20', 'TV', 'TikTok', 400000, 8000000, 500000, 'Families', 'NorthAmerica', 'Pending', 'Pending', '2025-03-15', 0, '');
INSERT INTO Sponsor_Activation_Timelines VALUES (3, 603, 'Launch_New_Kit', '2024-07-15', '2024-09-15', 'Press_Release', '2024-07-20', 'Kit_Unveiling', '2024-08-01', 'Limited_Edition_Sale', '2024-09-10', 'Digital', 'YouTube', 350000, 6000000, 450000, 'General_Fans', 'Global', 'Approved', 'Approved', '2024-10-01', 1, '');

-- Table capturing details of referee training modules used for certification
CREATE TABLE Match_Referee_Training_Module (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    module_code TEXT,
    module_name TEXT,
    version TEXT,
    release_date TEXT,
    duration_minutes INTEGER,
    delivery_method TEXT,
    language TEXT,
    competency_area TEXT,
    assessment_type TEXT,
    passing_score REAL,
    instructor_name TEXT,
    instructor_certification TEXT,
    multimedia_content_present BOOLEAN,
    interactive_exercises INTEGER,
    case_study_count INTEGER,
    updated_by TEXT,
    last_update_date TEXT,
    compliance_standard TEXT,
    accreditation_body TEXT,
    notes TEXT
);

INSERT INTO Match_Referee_Training_Module VALUES (1, 'REF101', 'Fundamentals_of_Officiating', '1.0', '2023-01-15', 180, 'Online', 'English', 'Rules_Knowledge', 'Multiple_Choice', 75.0, 'Samuel Peters', 'Level_3', 1, 5, 2, 'FA_Admin', '2024-08-01', 'IFAB', 'FIFA', '');
INSERT INTO Match_Referee_Training_Module VALUES (2, 'REF202', 'Advanced_Video_Assistance', '2.1', '2024-03-10', 240, 'Hybrid', 'Spanish', 'Technology_Use', 'Practical', 80.0, 'Lucia Gomez', 'Level_2', 1, 8, 3, 'UEFA_Tech', '2024-09-15', 'UEFA', 'UEFA', '');
INSERT INTO Match_Referee_Training_Module VALUES (3, 'REF303', 'Match_Management_and_Leadership', '3.0', '2022-11-05', 210, 'In_Person', 'French', 'Soft_Skills', 'Essay', 70.0, 'Andre Dupont', 'Level_4', 0, 4, 1, 'FIFA_Dept', '2024-07-20', 'FIFA', 'FIFA', '');

