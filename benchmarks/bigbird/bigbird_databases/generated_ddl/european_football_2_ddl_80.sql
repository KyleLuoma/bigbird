-- Club_Ticketing_Strategy
CREATE TABLE Club_Ticketing_Strategy (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    season TEXT,
    pricing_tiers INTEGER,
    early_bird_discount_percent INTEGER,
    dynamic_pricing_enabled INTEGER,
    max_tickets_per_customer INTEGER,
    avg_ticket_price REAL,
    revenue_target REAL,
    channel_online_percent INTEGER,
    channel_box_office_percent INTEGER,
    channel_reseller_percent INTEGER,
    vip_package_count INTEGER,
    season_pass_count INTEGER,
    student_discount_percent INTEGER,
    senior_discount_percent INTEGER,
    group_discount_percent INTEGER,
    last_update TEXT,
    notes TEXT,
    created_at TEXT
);
INSERT INTO Club_Ticketing_Strategy VALUES (1, 101, '2024/25', 4, 10, 1, 6, 75.5, 1200000.0, 55, 30, 15, 120, 350, 12, 8, 5, '2024-01-15', 'Initial rollout', '2024-01-01');
INSERT INTO Club_Ticketing_Strategy VALUES (2, 102, '2024/25', 5, 15, 0, 8, 68.0, 950000.0, 60, 25, 15, 90, 300, 10, 7, 6, '2024-01-20', 'Adjusted pricing', '2024-01-02');
INSERT INTO Club_Ticketing_Strategy VALUES (3, 103, '2024/25', 3, 5, 1, 4, 82.0, 1100000.0, 50, 35, 15, 150, 400, 8, 9, 4, '2024-01-22', 'Pilot test', '2024-01-03');

-- Player_Video_Highlights
CREATE TABLE Player_Video_Highlights (
    highlight_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    match_api_id INTEGER,
    highlight_date TEXT,
    video_url TEXT,
    duration_seconds INTEGER,
    goal_type TEXT,
    assist_type TEXT,
    shot_quality INTEGER,
    pass_accuracy INTEGER,
    dribble_success_rate INTEGER,
    header_success INTEGER,
    speed_at_execution INTEGER,
    distance_covered INTEGER,
    offensive_rating INTEGER,
    defensive_rating INTEGER,
    crowd_noise_level INTEGER,
    camera_angle TEXT,
    commentator TEXT,
    created_at TEXT
);
INSERT INTO Player_Video_Highlights VALUES (1, 20123, 5001, '2024-02-10', 'http://videos.example.com/hl1.mp4', 12, 'Header', 'None', 85, 92, 78, 1, 27, 8000, 90, 30, 78, 'Wide', 'John Doe', '2024-02-11');
INSERT INTO Player_Video_Highlights VALUES (2, 20145, 5002, '2024-02-12', 'http://videos.example.com/hl2.mp4', 9, 'FreeKick', 'Cross', 88, 95, 80, 0, 25, 7500, 88, 35, 82, 'CloseUp', 'Jane Smith', '2024-02-13');
INSERT INTO Player_Video_Highlights VALUES (3, 20167, 5003, '2024-02-14', 'http://videos.example.com/hl3.mp4', 15, 'Volley', 'Through', 90, 94, 85, 0, 30, 8200, 92, 28, 80, 'Drone', 'Mike Lee', '2024-02-15');

-- League_Season_Schedule_Details
CREATE TABLE League_Season_Schedule_Details (
    schedule_id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    round_number INTEGER,
    match_date TEXT,
    kickoff_time TEXT,
    home_team_api_id INTEGER,
    away_team_api_id INTEGER,
    venue_id INTEGER,
    broadcast_network TEXT,
    ticket_price_average REAL,
    attendance_estimate INTEGER,
    weather_forecast TEXT,
    referee_id INTEGER,
    match_importance TEXT,
    is_derby INTEGER,
    is_cup_match INTEGER,
    tv_rating_estimate REAL,
    streaming_platform TEXT,
    notes TEXT
);
INSERT INTO League_Season_Schedule_Details VALUES (1, 10, '2024/25', 1, '2024-08-10', '15:00', 301, 302, 1, 'NetworkA', 60.0, 35000, 'Clear', 55, 'Opening', 0, 0, 4.5, 'StreamX', 'Season opener');
INSERT INTO League_Season_Schedule_Details VALUES (2, 10, '2024/25', 2, '2024-08-17', '17:30', 303, 304, 2, 'NetworkB', 58.0, 34000, 'Rain', 56, 'Midweek', 0, 0, 3.8, 'StreamY', 'Rainy night match');
INSERT INTO League_Season_Schedule_Details VALUES (3, 10, '2024/25', 3, '2024-08-24', '20:00', 305, 306, 3, 'NetworkC', 65.0, 38000, 'Clear', 57, 'Derby', 1, 0, 5.2, 'StreamZ', 'Local rivalry');

-- Stadium_Safety_Event_Log
CREATE TABLE Stadium_Safety_Event_Log (
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    event_date TEXT,
    event_time TEXT,
    incident_type TEXT,
    severity_level INTEGER,
    reported_by TEXT,
    description TEXT,
    attendees_present INTEGER,
    evacuation_time_seconds INTEGER,
    medical_cases INTEGER,
    police_involved INTEGER,
    security_staff_on_duty INTEGER,
    crowd_density INTEGER,
    weather_condition TEXT,
    response_time_seconds INTEGER,
    resolution_status TEXT,
    follow_up_actions TEXT,
    supervisor_id INTEGER,
    created_at TEXT
);
INSERT INTO Stadium_Safety_Event_Log VALUES (1, 1, '2024-03-05', '19:45', 'FireAlarm', 3, 'SecurityChief', 'False alarm triggered by equipment', 25000, 300, 0, 50, 80, 'Clear', 45, 'Resolved', 'Equipment check', 101, '2024-03-06');
INSERT INTO Stadium_Safety_Event_Log VALUES (2, 2, '2024-04-12', '21:10', 'FoulPlay', 4, 'PoliceOfficer', 'Altercation in lower tier', 18000, 0, 2, 30, 70, 'Rain', 60, 'Under Investigation', 'Review CCTV', 102, '2024-04-13');
INSERT INTO Stadium_Safety_Event_Log VALUES (3, 3, '2024-05-20', '14:30', 'MedicalEmergency', 2, 'FirstAidLead', 'Player collapsed on field', 20000, 0, 0, 40, 60, 'Clear', 120, 'Resolved', 'Transport to hospital', 103, '2024-05-21');

-- Broadcast_Region_Audience_Metrics
CREATE TABLE Broadcast_Region_Audience_Metrics (
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcast_network TEXT,
    region_code TEXT,
    season TEXT,
    average_viewers INTEGER,
    peak_viewers INTEGER,
    share_percentage REAL,
    demographic_18_24_percent REAL,
    demographic_25_34_percent REAL,
    demographic_35_44_percent REAL,
    gender_male_percent REAL,
    gender_female_percent REAL,
    average_watch_time_minutes INTEGER,
    streaming_quality TEXT,
    device_mobile_percent REAL,
    device_tv_percent REAL,
    device_pc_percent REAL,
    ad_revenue_usd REAL,
    sponsor_impressions INTEGER,
    rating_source TEXT,
    notes TEXT
);
INSERT INTO Broadcast_Region_Audience_Metrics VALUES (1, 'NetworkA', 'EU01', '2024/25', 500000, 720000, 12.5, 30.0, 25.0, 20.0, 55.0, 45.0, 85, 'HD', 40.0, 45.0, 15.0, 2500000.0, 1500000, 'Nielsen', 'Primary market');
INSERT INTO Broadcast_Region_Audience_Metrics VALUES (2, 'NetworkB', 'NA02', '2024/25', 420000, 650000, 10.8, 28.0, 27.0, 22.0, 52.0, 48.0, 78, 'FullHD', 35.0, 50.0, 15.0, 2100000.0, 1300000, 'Comscore', 'Secondary market');
INSERT INTO Broadcast_Region_Audience_Metrics VALUES (3, 'NetworkC', 'AS03', '2024/25', 380000, 600000, 9.9, 32.0, 24.0, 21.0, 50.0, 50.0, 80, 'HD', 45.0, 40.0, 15.0, 1900000.0, 1200000, 'Mediacorp', 'Emerging market');

-- Sponsor_Community_Impact
CREATE TABLE Sponsor_Community_Impact (
    impact_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_name TEXT,
    campaign_name TEXT,
    season TEXT,
    region_code TEXT,
    beneficiaries INTEGER,
    programs_funded INTEGER,
    total_investment_usd REAL,
    volunteer_hours INTEGER,
    community_events INTEGER,
    education_projects INTEGER,
    health_initiatives INTEGER,
    environmental_projects INTEGER,
    media_mentions INTEGER,
    social_media_impressions INTEGER,
    brand_sentiment_score REAL,
    partnership_years INTEGER,
    contact_person TEXT,
    contact_email TEXT,
    notes TEXT
);
INSERT INTO Sponsor_Community_Impact VALUES (1, 'AlphaCorp', 'FutureStars', '2024/25', 'EU', 15000, 12, 3000000.0, 5000, 20, 8, 5, 3, 45, 200000, 78.5, 3, 'Laura Green', 'laura@alphacorp.com', 'Focus on youth sports');
INSERT INTO Sponsor_Community_Impact VALUES (2, 'BetaLtd', 'HealthKick', '2024/25', 'NA', 12000, 10, 2500000.0, 4200, 15, 6, 7, 2, 38, 180000, 74.2, 4, 'Mark Brown', 'mark@betaltd.com', 'Health and fitness programs');
INSERT INTO Sponsor_Community_Impact VALUES (3, 'GammaEnterprises', 'EcoPlay', '2024/25', 'AS', 10000, 8, 2000000.0, 3500, 12, 4, 3, 5, 30, 150000, 71.0, 2, 'Sophie Lee', 'sophie@gamma.com', 'Environmental awareness in sports');

-- Fan_Digital_NFT_Collection
CREATE TABLE Fan_Digital_NFT_Collection (
    nft_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    player_api_id INTEGER,
    team_api_id INTEGER,
    nft_name TEXT,
    mint_date TEXT,
    blockchain TEXT,
    token_id TEXT,
    rarity TEXT,
    edition_number INTEGER,
    total_editions INTEGER,
    current_market_price_usd REAL,
    last_trade_date TEXT,
    owner_wallet_address TEXT,
    metadata_uri TEXT,
    image_uri TEXT,
    description TEXT,
    minted_by TEXT,
    verified INTEGER,
    created_at TEXT
);
INSERT INTO Fan_Digital_NFT_Collection VALUES (1, 1001, 20123, 301, 'GoalHero2024', '2024-03-01', 'Ethereum', '0xabc123', 'Rare', 7, 100, 250.0, '2024-06-15', '0xwallet1', 'ipfs://meta1', 'ipfs://img1', 'Memorable goal celebration', 'OfficialClub', 1, '2024-03-02');
INSERT INTO Fan_Digital_NFT_Collection VALUES (2, 1002, 20145, 302, 'AssistMaster', '2024-03-05', 'Polygon', '0xdef456', 'Epic', 12, 200, 180.0, '2024-07-01', '0xwallet2', 'ipfs://meta2', 'ipfs://img2', 'Key assist in derby', 'PartnerAgency', 1, '2024-03-06');
INSERT INTO Fan_Digital_NFT_Collection VALUES (3, 1003, 20167, 303, 'DefensiveWall', '2024-03-10', 'Solana', '0xghi789', 'Legendary', 1, 50, 500.0, '2024-08-20', '0xwallet3', 'ipfs://meta3', 'ipfs://img3', 'Outstanding defensive performance', 'ClubAcademy', 1, '2024-03-11');

-- Team_Travel_Emission_Log
CREATE TABLE Team_Travel_Emission_Log (
    travel_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    season TEXT,
    departure_date TEXT,
    return_date TEXT,
    origin_city TEXT,
    destination_city TEXT,
    transport_mode TEXT,
    distance_km INTEGER,
    fuel_consumed_liters REAL,
    co2_emissions_kg REAL,
    carbon_offset_credits INTEGER,
    travel_cost_usd REAL,
    number_of_staff INTEGER,
    number_of_players INTEGER,
    accommodation_nights INTEGER,
    average_hotel_rating REAL,
    sponsor_name TEXT,
    notes TEXT,
    recorded_at TEXT
);
INSERT INTO Team_Travel_Emission_Log VALUES (1, 301, '2024/25', '2024-04-01', '2024-04-07', 'London', 'Madrid', 'Airplane', 1260, 1500.0, 3500.0, 0, 120000.0, 20, 25, 6, 4.2, 'EcoTravelCo', 'Pre-season friendly tour', '2024-04-01');
INSERT INTO Team_Travel_Emission_Log VALUES (2, 302, '2024/25', '2024-05-10', '2024-05-15', 'Berlin', 'Rome', 'Bus', 1180, 900.0, 2100.0, 5, 80000.0, 15, 22, 5, 3.9, 'GreenBusLtd', 'Domestic cup matches', '2024-05-10');
INSERT INTO Team_Travel_Emission_Log VALUES (3, 303, '2024/25', '2024-06-20', '2024-06-25', 'Paris', 'Lisbon', 'Train', 1350, 750.0, 1800.0, 10, 95000.0, 18, 24, 4, 4.0, 'RailEco', 'League fixtures', '2024-06-20');

-- Medical_Injury_Therapy_Records
CREATE TABLE Medical_Injury_Therapy_Records (
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    injury_date TEXT,
    injury_type TEXT,
    diagnosis TEXT,
    severity_level INTEGER,
    treatment_plan TEXT,
    therapy_start_date TEXT,
    therapy_end_date TEXT,
    physiotherapist TEXT,
    sessions_completed INTEGER,
    sessions_planned INTEGER,
    rehab_progress_percent INTEGER,
    return_to_play_date TEXT,
    notes TEXT,
    follow_up_required INTEGER,
    follow_up_date TEXT,
    medical_staff_in_charge TEXT,
    facility_name TEXT,
    created_at TEXT
);
INSERT INTO Medical_Injury_Therapy_Records VALUES (1, 20123, '2024-02-15', 'Hamstring', 'Strain Grade 2', 2, 'Physio + Cryotherapy', '2024-02-16', '2024-03-10', 'DrSmith', 8, 12, 65, '2024-03-15', 'Good progress', 1, '2024-03-20', 'DrSmith', 'ClubClinic', '2024-02-16');
INSERT INTO Medical_Injury_Therapy_Records VALUES (2, 20145, '2024-03-05', 'Ankle', 'Ligament Sprain', 3, 'Bracing + Rehab', '2024-03-06', '2024-04-01', 'MsJones', 10, 15, 55, '2024-04-10', 'Requires further monitoring', 1, '2024-04-15', 'MsJones', 'MedicalCenter', '2024-03-06');
INSERT INTO Medical_Injury_Therapy_Records VALUES (3, 20167, '2024-01-20', 'Concussion', 'Mild', 1, 'Rest + Cognitive Therapy', '2024-01-21', '2024-02-05', 'DrLee', 5, 7, 80, '2024-02-10', 'Cleared for light training', 0, NULL, 'DrLee', 'NeuroClinic', '2024-01-21');

-- Youth_Scouting_Evaluation_Logs
CREATE TABLE Youth_Scouting_Evaluation_Logs (
    evaluation_id INTEGER PRIMARY KEY AUTOINCREMENT,
    scout_id INTEGER,
    player_name TEXT,
    player_age INTEGER,
    academy_id INTEGER,
    evaluation_date TEXT,
    technical_score INTEGER,
    tactical_score INTEGER,
    physical_score INTEGER,
    mental_score INTEGER,
    overall_rating INTEGER,
    position_preferred TEXT,
    footedness TEXT,
    potential INTEGER,
    notes TEXT,
    recommendation TEXT,
    follow_up_date TEXT,
    contract_offered INTEGER,
    contract_details TEXT,
    created_at TEXT
);
INSERT INTO Youth_Scouting_Evaluation_Logs VALUES (1, 901, 'Liam Turner', 16, 10, '2024-03-12', 78, 70, 80, 75, 76, 'Midfielder', 'Right', 85, 'Shows good vision', 'Monitor', '2024-06-01', 0, NULL, '2024-03-13');
INSERT INTO Youth_Scouting_Evaluation_Logs VALUES (2, 902, 'Ava Martinez', 15, 11, '2024-04-08', 82, 68, 77, 80, 77, 'Forward', 'Left', 88, 'Excellent finishing', 'Offer Contract', '2024-06-15', 1, 'Three year youth contract', '2024-04-09');
INSERT INTO Youth_Scouting_Evaluation_Logs VALUES (3, 903, 'Noah Kim', 17, 12, '2024-05-20', 70, 72, 85, 78, 76, 'Defender', 'Right', 80, 'Strong aerial ability', 'Monitor', '2024-08-01', 0, NULL, '2024-05-21');

-- Broadcast_Region_Audience_Metrics (additional example with different network)
CREATE TABLE Broadcast_Region_Audience_Metrics_Alt (
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcast_network TEXT,
    region_code TEXT,
    season TEXT,
    average_viewers INTEGER,
    peak_viewers INTEGER,
    share_percentage REAL,
    demographic_18_24_percent REAL,
    demographic_25_34_percent REAL,
    demographic_35_44_percent REAL,
    gender_male_percent REAL,
    gender_female_percent REAL,
    average_watch_time_minutes INTEGER,
    streaming_quality TEXT,
    device_mobile_percent REAL,
    device_tv_percent REAL,
    device_pc_percent REAL,
    ad_revenue_usd REAL,
    sponsor_impressions INTEGER,
    rating_source TEXT,
    notes TEXT
);
INSERT INTO Broadcast_Region_Audience_Metrics_Alt VALUES (1, 'NetworkD', 'EU04', '2024/25', 460000, 680000, 11.2, 29.0, 26.0, 22.0, 53.0, 47.0, 82, 'HD', 38.0, 48.0, 14.0, 2300000.0, 1400000, 'Nielsen', 'Secondary EU market');
INSERT INTO Broadcast_Region_Audience_Metrics_Alt VALUES (2, 'NetworkE', 'NA03', '2024/25', 430000, 620000, 10.5, 27.0, 28.0, 23.0, 51.0, 49.0, 79, 'FullHD', 36.0, 46.0, 18.0, 2100000.0, 1250000, 'Comscore', 'Western NA region');
INSERT INTO Broadcast_Region_Audience_Metrics_Alt VALUES (3, 'NetworkF', 'AS04', '2024/25', 390000, 580000, 9.3, 31.0, 25.0, 20.0, 49.0, 51.0, 81, 'HD', 42.0, 38.0, 20.0, 1900000.0, 1150000, 'Mediacorp', 'Southeast Asian market');