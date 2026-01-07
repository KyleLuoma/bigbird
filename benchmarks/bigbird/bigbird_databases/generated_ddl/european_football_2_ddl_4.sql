-- Broadcast_Analytics: metrics for each match broadcast on a network
CREATE TABLE Broadcast_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_api_id INTEGER,
    network_id INTEGER,
    viewership_millions REAL,
    avg_watch_time_seconds INTEGER,
    peak_viewers INTEGER,
    streaming_quality TEXT,
    ad_impressions INTEGER,
    ad_clicks INTEGER,
    revenue_usd REAL,
    demographic_18_24_pct REAL,
    demographic_25_34_pct REAL,
    demographic_35_44_pct REAL,
    device_mobile_pct REAL,
    device_desktop_pct REAL,
    device_tv_pct REAL,
    region_na_pct REAL,
    region_eu_pct REAL,
    region_asia_pct REAL,
    region_other_pct REAL,
    record_timestamp TEXT
);
INSERT INTO Broadcast_Analytics VALUES (1, 10001, 10, 2.5, 1800, 3000000, 'HD', 500000, 25000, 150000.00, 22.5, 35.0, 18.0, 55.0, 30.0, 15.0, 40.0, 35.0, 20.0, 5.0, '2024-10-01');
INSERT INTO Broadcast_Analytics VALUES (2, 10002, 12, 3.1, 2100, 3500000, 'FullHD', 620000, 31000, 210000.00, 20.0, 38.0, 17.0, 50.0, 35.0, 15.0, 45.0, 30.0, 20.0, 5.0, '2024-10-02');
INSERT INTO Broadcast_Analytics VALUES (3, 10003, 11, 1.8, 1500, 2100000, 'HD', 420000, 18000, 120000.00, 24.0, 33.0, 19.0, 60.0, 25.0, 15.0, 38.0, 36.0, 20.0, 6.0, '2024-10-03');

-- Stadium_Environmental_Metrics: environmental readings recorded during matches
CREATE TABLE Stadium_Environmental_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    match_api_id INTEGER,
    temperature_celsius REAL,
    humidity_percent REAL,
    wind_speed_kmh REAL,
    air_quality_index INTEGER,
    noise_level_db INTEGER,
    precipitation_mm REAL,
    solar_irradiance_wm2 REAL,
    ground_pressure_hpa REAL,
    uv_index REAL,
    carbon_dioxide_ppm INTEGER,
    particulate_matter_2_5_ugm3 INTEGER,
    ozone_ppb INTEGER,
    pollen_count INTEGER,
    lightning_strikes INTEGER,
    roof_open BOOLEAN,
    grass_type TEXT,
    maintenance_status TEXT,
    measurement_timestamp TEXT,
    notes TEXT
);
INSERT INTO Stadium_Environmental_Metrics VALUES (1, 101, 10001, 22.5, 55.0, 12.3, 42, 78, 0.0, 560.0, 1013.2, 3.1, 420, 12, 30, 1200, 0, 0, 'Natural', 'Good', '2024-10-01 18:00:00', 'Clear evening');
INSERT INTO Stadium_Environmental_Metrics VALUES (2, 102, 10002, 18.0, 68.0, 8.5, 35, 65, 0.2, 480.0, 1012.5, 2.5, 390, 10, 25, 950, 0, 1, 'Hybrid', 'Excellent', '2024-10-02 20:15:00', 'Light drizzle');
INSERT INTO Stadium_Environmental_Metrics VALUES (3, 103, 10003, 27.0, 45.0, 15.0, 55, 85, 0.0, 620.0, 1014.0, 4.0, 460, 15, 35, 1300, 1, 0, 'Synthetic', 'Fair', '2024-10-03 16:30:00', 'Windy');

-- Player_Social_Interactions: aggregated social media activity for players
CREATE TABLE Player_Social_Interactions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    platform TEXT,
    followers_count INTEGER,
    posts_last_30d INTEGER,
    avg_likes_per_post REAL,
    avg_comments_per_post REAL,
    engagement_rate_percent REAL,
    video_views_last_30d INTEGER,
    story_views_last_30d INTEGER,
    mentions_last_30d INTEGER,
    hashtags_used_last_30d INTEGER,
    sentiment_score REAL,
    verified BOOLEAN,
    account_creation_date TEXT,
    last_activity_timestamp TEXT,
    bio_length INTEGER,
    profile_picture_quality TEXT,
    reach_estimate INTEGER,
    impressions_last_30d INTEGER,
    clicks_last_30d INTEGER,
    shares_last_30d INTEGER
);
INSERT INTO Player_Social_Interactions VALUES (1, 20001, 'Twitter', 150000, 12, 2500.5, 120.3, 1.8, 800000, 50000, 300, 45, 0.75, 1, '2012-06-01', '2024-10-01 12:00:00', 120, 'High', 500000, 750000, 25000, 1200);
INSERT INTO Player_Social_Interactions VALUES (2, 20002, 'Instagram', 320000, 20, 3400.2, 200.7, 2.1, 1200000, 80000, 540, 78, 0.82, 1, '2014-09-15', '2024-10-02 14:30:00', 110, 'VeryHigh', 850000, 1300000, 30000, 1800);
INSERT INTO Player_Social_Interactions VALUES (3, 20003, 'Facebook', 90000, 5, 1800.0, 80.0, 1.2, 400000, 25000, 150, 20, 0.68, 0, '2010-03-20', '2024-10-03 09:45:00', 130, 'Medium', 250000, 450000, 15000, 900);

-- Team_Tactical_Notes: textual and numeric notes on team tactics per match
CREATE TABLE Team_Tactical_Notes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    match_api_id INTEGER,
    formation TEXT,
    pressing_intensity INTEGER,
    defensive_line_depth INTEGER,
    width_percent REAL,
    buildup_speed INTEGER,
    counter_attack_frequency INTEGER,
    set_piece_success_rate REAL,
    possession_target_percent REAL,
    high_line BOOLEAN,
    offside_trap BOOLEAN,
    false_9_usage BOOLEAN,
    wing_back_involvement_percent REAL,
    midfield_block_size INTEGER,
    attacking_third_pressure INTEGER,
    transition_speed INTEGER,
    ball_recovery_rate REAL,
    player_role_changes INTEGER,
    coach_comments TEXT,
    analyst_rating REAL,
    created_timestamp TEXT
);
INSERT INTO Team_Tactical_Notes VALUES (1, 301, 10001, '4-3-3', 8, 3, 65.0, 7, 4, 0.78, 57.5, 0, 1, 0, 30.0, 2, 5, 6, 0.62, 2, 'Focus on high press early', 8.7, '2024-10-01 10:00:00');
INSERT INTO Team_Tactical_Notes VALUES (2, 302, 10002, '3-5-2', 6, 4, 58.0, 5, 3, 0.71, 49.0, 1, 0, 1, 22.5, 3, 4, 5, 0.55, 1, 'Utilize wing‑backs for width', 7.9, '2024-10-02 11:30:00');
INSERT INTO Team_Tactical_Notes VALUES (3, 303, 10003, '4-2-3-1', 7, 2, 62.0, 6, 5, 0.74, 53.2, 0, 1, 0, 27.0, 2, 6, 7, 0.68, 3, 'Switch to false 9 in second half', 8.3, '2024-10-03 09:15:00');

-- League_Media_Rights: contracts and financials for league broadcasting
CREATE TABLE League_Media_Rights (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    region TEXT,
    network TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    total_value_usd REAL,
    annual_fee_usd REAL,
    revenue_share_percent REAL,
    broadcast_hours_per_season INTEGER,
    exclusive BOOLEAN,
    digital_streaming_included BOOLEAN,
    highlights_rights BOOLEAN,
    archive_access BOOLEAN,
    ad_inventory_slots INTEGER,
    max_concurrent_streams INTEGER,
    sublicensing_allowed BOOLEAN,
    renewal_option_years INTEGER,
    penalty_clause_usd REAL,
    notes TEXT,
    last_updated TEXT
);
INSERT INTO League_Media_Rights VALUES (1, 1, '2024/2025', 'Europe', 'EuroSports', '2023-07-01', '2028-06-30', 125000000.00, 25000000.00, 12.5, 380, 1, 1, 1, 1, 1500, 5, 0, 2, 5000000.00, 'Includes UEFA competition highlights', '2024-09-20');
INSERT INTO League_Media_Rights VALUES (2, 2, '2024/2025', 'Asia', 'AsiaLive', '2024-01-15', '2029-01-14', 80000000.00, 16000000.00, 10.0, 300, 0, 1, 0, 1, 1200, 4, 1, 1, 3000000.00, 'Digital rights separate', '2024-09-22');
INSERT INTO League_Media_Rights VALUES (3, 3, '2024/2025', 'NorthAmerica', 'SportNet', '2022-05-01', '2027-04-30', 95000000.00, 19000000.00, 11.0, 350, 1, 0, 1, 0, 1300, 3, 0, 3, 4000000.00, 'No sublicensing allowed', '2024-09-25');

-- Match_Weather_History: detailed weather conditions for each match
CREATE TABLE Match_Weather_History (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_api_id INTEGER,
    stadium_id INTEGER,
    date TEXT,
    temperature_celsius REAL,
    humidity_percent REAL,
    wind_speed_kmh REAL,
    wind_direction TEXT,
    precipitation_mm REAL,
    visibility_km REAL,
    pressure_hpa REAL,
    sky_condition TEXT,
    uv_index REAL,
    air_quality_index INTEGER,
    lightning_probability_percent REAL,
    grass_condition TEXT,
    heat_index_celsius REAL,
    dew_point_celsius REAL,
    frost_warning BOOLEAN,
    notes TEXT
);
INSERT INTO Match_Weather_History VALUES (1, 10001, 101, '2024-10-01', 21.0, 58.0, 10.5, 'NE', 0.0, 12.0, 1013.5, 'Clear', 3.2, 40, 0.0, 'Dry', 22.5, 12.0, 0, 'Ideal conditions');
INSERT INTO Match_Weather_History VALUES (2, 10002, 102, '2024-10-02', 17.5, 72.0, 8.2, 'S', 0.3, 10.5, 1012.0, 'Overcast', 2.8, 55, 5.0, 'Wet', 19.0, 10.5, 0, 'Light drizzle');
INSERT INTO Match_Weather_History VALUES (3, 10003, 103, '2024-10-03', 28.0, 45.0, 15.0, 'W', 0.0, 15.0, 1014.2, 'Sunny', 4.5, 30, 0.0, 'Dry', 30.5, 14.0, 0, 'Very hot, high UV');

-- Referee_Training_Logs: records of referee training sessions and certifications
CREATE TABLE Referee_Training_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    referee_id INTEGER,
    session_date TEXT,
    training_type TEXT,
    duration_minutes INTEGER,
    location TEXT,
    instructor_name TEXT,
    certification_obtained TEXT,
    fitness_score INTEGER,
    rule_knowledge_score INTEGER,
    decision_accuracy_percent REAL,
    conflict_resolution_score INTEGER,
    video_review_hours INTEGER,
    practical_exercises INTEGER,
    attendance BOOLEAN,
    remarks TEXT,
    next_due_date TEXT,
    created_timestamp TEXT,
    updated_timestamp TEXT,
    approved_by TEXT,
    version INTEGER
);
INSERT INTO Referee_Training_Logs VALUES (1, 401, '2024-09-10', 'Fitness', 180, 'Berlin', 'Klaus Mueller', 'Level 2', 88, 92, 94.5, 85, 12, 5, 1, 'Improved sprint', '2025-03-10', '2024-09-10 08:00:00', '2024-09-10 08:00:00', 'Anna Schmidt', 1);
INSERT INTO Referee_Training_Logs VALUES (2, 402, '2024-09-12', 'Rules', 240, 'Munich', 'Thomas Becker', 'Level 3', 75, 98, 96.0, 90, 15, 6, 1, 'Excellent rule grasp', '2025-03-12', '2024-09-12 09:30:00', '2024-09-12 09:30:00', 'Markus Wagner', 1);
INSERT INTO Referee_Training_Logs VALUES (3, 403, '2024-09-15', 'Video Review', 120, 'Hamburg', 'Sabine Klein', 'Level 2', 82, 94, 92.3, 80, 20, 4, 1, 'Needs work on offside calls', '2025-03-15', '2024-09-15 10:15:00', '2024-09-15 10:15:00', 'Laura Fischer', 1);

-- Fan_Merchandise_Preferences: survey data on fan merchandise interests
CREATE TABLE Fan_Merchandise_Preferences (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    team_api_id INTEGER,
    preferred_category TEXT,
    preferred_color TEXT,
    size TEXT,
    price_sensitivity_level INTEGER,
    purchase_frequency_months INTEGER,
    fav_item TEXT,
    secondary_item TEXT,
    seasonal_item_interest BOOLEAN,
    limited_edition_interest BOOLEAN,
    online_shopping_preference BOOLEAN,
    in_store_shopping_preference BOOLEAN,
    loyalty_program_member BOOLEAN,
    average_spend_usd REAL,
    last_purchase_date TEXT,
    feedback TEXT,
    survey_timestamp TEXT,
    respondent_age INTEGER,
    respondent_gender TEXT,
    region TEXT
);
INSERT INTO Fan_Merchandise_Preferences VALUES (1, 100001, 301, 'Apparel', 'Red', 'M', 3, 2, 'Jersey', 'Scarf', 1, 1, 1, 0, 1, 85.00, '2024-09-20', 'Loves new designs', '2024-10-01 12:00:00', 28, 'Male', 'Europe');
INSERT INTO Fan_Merchandise_Preferences VALUES (2, 100002, 302, 'Accessories', 'Blue', 'L', 2, 4, 'Cap', 'Wristband', 0, 0, 1, 1, 0, 45.00, '2024-08-15', 'Prefers eco-friendly', '2024-10-02 13:30:00', 35, 'Female', 'Asia');
INSERT INTO Fan_Merchandise_Preferences VALUES (3, 100003, 303, 'Collectibles', 'Green', 'OneSize', 4, 6, 'Figure', 'Poster', 1, 0, 0, 1, 1, 120.00, '2024-07-10', 'Wants autographed items', '2024-10-03 14:45:00', 22, 'Other', 'NorthAmerica');

-- Sponsor_Contract_Terms: detailed terms of sponsorship agreements
CREATE TABLE Sponsor_Contract_Terms (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    team_api_id INTEGER,
    league_id INTEGER,
    contract_start_date TEXT,
    contract_end_date TEXT,
    total_value_usd REAL,
    annual_payment_usd REAL,
    activation_budget_usd REAL,
    media_exposure_hours INTEGER,
    branding_rights TEXT,
    exclusivity BOOLEAN,
    product_category TEXT,
    performance_bonus_percent REAL,
    termination_notice_days INTEGER,
    renewal_option BOOLEAN,
    max_logo_size_cm2 INTEGER,
    on_site_activation_allowed BOOLEAN,
    digital_campaign_inclusion BOOLEAN,
    social_media_mentions_per_year INTEGER,
    compliance_audit_required BOOLEAN,
    notes TEXT,
    last_modified TEXT
);
INSERT INTO Sponsor_Contract_Terms VALUES (1, 501, 301, 1, '2024-01-01', '2027-12-31', 5000000.00, 1666666.67, 1200000.00, 1800, 'Stadium signage, kit', 1, 'Sportswear', 5.0, 180, 1, 2500, 1, 1, 36, 1, 'Renewable energy clause', '2024-09-01');
INSERT INTO Sponsor_Contract_Terms VALUES (2, 502, 302, 2, '2023-07-15', '2028-07-14', 3500000.00, 700000.00, 800000.00, 1500, 'Training gear, digital ads', 0, 'Nutrition', 3.5, 120, 0, 1800, 1, 0, 24, 0, 'Option to extend by 2 years', '2024-09-10');
INSERT INTO Sponsor_Contract_Terms VALUES (3, 503, 303, 3, '2025-03-01', '2030-02-28', 4200000.00, 840000.00, 950000.00, 1700, 'Broadcast overlays, stadium LED', 1, 'Technology', 4.2, 150, 1, 2200, 0, 1, 30, 1, 'Performance metrics tied to viewership', '2024-09-15');

-- Club_Infrastructure_Projects: information on stadium and facility upgrades
CREATE TABLE Club_Infrastructure_Projects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    project_name TEXT,
    project_type TEXT,
    start_date TEXT,
    estimated_completion_date TEXT,
    actual_completion_date TEXT,
    total_budget_usd REAL,
    amount_spent_usd REAL,
    funding_source TEXT,
    contractor_name TEXT,
    environmental_impact_score REAL,
    sustainability_certification TEXT,
    capacity_increase INTEGER,
    new_seating_type TEXT,
    VIP_area_expansion BOOLEAN,
    parking_spaces_added INTEGER,
    accessibility_improvements BOOLEAN,
    technology_upgrades TEXT,
    project_status TEXT,
    risk_assessment_rating INTEGER,
    notes TEXT,
    last_updated TEXT
);
INSERT INTO Club_Infrastructure_Projects VALUES (1, 301, 'North Stand Expansion', 'Stadium Expansion', '2024-02-01', '2025-11-30', NULL, 25000000.00, 8000000.00, 'Club Funds', 'BuildCo Ltd', 78.5, 'LEED Gold', 5000, 'Seat', 1, 300, 1, 'WiFi 5G, LED screens', 'In Progress', 3, 'Phase 1 completed', '2024-09-20');
INSERT INTO Club_Infrastructure_Projects VALUES (2, 302, 'Training Complex Renovation', 'Facility Upgrade', '2023-06-15', '2024-12-15', '2024-12-10', 12000000.00, 11200000.00, 'Loan', 'ConstructX', 85.2, 'ISO 50001', 0, NULL, 0, 100, 1, 'High‑performance gym equipment', 'Completed', 2, 'All objectives met', '2024-09-22');
INSERT INTO Club_Infrastructure_Projects VALUES (3, 303, 'Solar Roof Installation', 'Sustainability', '2024-04-10', '2025-04-10', NULL, 6000000.00, 1500000.00, 'Green Grant', 'EcoPower Inc', 92.0, 'LEED Platinum', 0, NULL, 0, 0, 1, 'Solar panels, battery storage', 'In Progress', 2, 'Expected to reduce energy costs by 30%', '2024-09-25');