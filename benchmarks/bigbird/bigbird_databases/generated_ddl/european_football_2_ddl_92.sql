-- Player_Academy_Transition
CREATE TABLE Player_Academy_Transition (
    transition_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    academy_from_id INTEGER,
    academy_to_id INTEGER,
    transition_date TEXT,
    age_at_transition INTEGER,
    contract_years INTEGER,
    scouting_rating INTEGER,
    physical_score INTEGER,
    technical_score INTEGER,
    mental_score INTEGER,
    positional_fit INTEGER,
    market_value INTEGER,
    agent_id INTEGER,
    promotion_status TEXT,
    training_hours_before INTEGER,
    training_hours_after INTEGER,
    injury_history_count INTEGER,
    nationality_id INTEGER,
    language_proficiency INTEGER,
    education_level INTEGER,
    previous_club_experience INTEGER
);
INSERT INTO Player_Academy_Transition VALUES (1, 101, 10, 20, 20200101, 18, 3, 85, 78, 82, 80, 75, 1200000, 5, 1, 150, 200, 0, 1, 2, 3, 0);
INSERT INTO Player_Academy_Transition VALUES (2, 102, 11, 21, 20210315, 19, 4, 88, 80, 84, 83, 78, 1500000, 6, 1, 160, 210, 1, 2, 3, 4, 1);
INSERT INTO Player_Academy_Transition VALUES (3, 103, 12, 22, 20220730, 20, 5, 90, 82, 86, 85, 80, 1800000, 7, 2, 170, 220, 2, 3, 4, 5, 2);

-- Team_Kit_Evolution
CREATE TABLE Team_Kit_Evolution (
    kit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    season_year INTEGER,
    kit_type TEXT,
    primary_color_code INTEGER,
    secondary_color_code INTEGER,
    sponsor_brand_id INTEGER,
    manufacturer_id INTEGER,
    design_complexity INTEGER,
    number_of_variants INTEGER,
    material_quality INTEGER,
    player_feedback_score INTEGER,
    sales_volume INTEGER,
    retail_price INTEGER,
    launch_date TEXT,
    discontinued_flag INTEGER,
    eco_friendly_score INTEGER,
    approval_status TEXT,
    marketing_budget INTEGER,
    social_media_mentions INTEGER,
    fan_rating INTEGER,
    inventory_stock INTEGER
);
INSERT INTO Team_Kit_Evolution VALUES (1, 201, 2021, 1, 112233, 445566, 301, 401, 8, 3, 9, 85, 15000, 120, 20210101, 0, 7, 1, 500000, 2500, 90, 2000);
INSERT INTO Team_Kit_Evolution VALUES (2, 202, 2022, 2, 223344, 556677, 302, 402, 7, 4, 8, 88, 16000, 125, 20220101, 0, 8, 1, 550000, 2600, 92, 2100);
INSERT INTO Team_Kit_Evolution VALUES (3, 203, 2023, 1, 334455, 667788, 303, 403, 9, 2, 10, 90, 17000, 130, 20230101, 0, 9, 1, 600000, 2700, 94, 2200);

-- League_Financial_Projection
CREATE TABLE League_Financial_Projection (
    projection_id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    fiscal_year INTEGER,
    revenue_tv_rights INTEGER,
    revenue_sponsorship INTEGER,
    revenue_matchday INTEGER,
    revenue_merchandise INTEGER,
    total_expenses INTEGER,
    net_profit INTEGER,
    profit_margin_percent INTEGER,
    projected_growth_percent INTEGER,
    inflation_adjusted_revenue INTEGER,
    exchange_rate_factor INTEGER,
    economic_index INTEGER,
    salary_cap INTEGER,
    financial_audit_status TEXT,
    audit_firm_id INTEGER,
    risk_assessment_score INTEGER,
    compliance_flag INTEGER,
    budget_allocation_percent INTEGER,
    reserve_fund INTEGER,
    contingency_reserve INTEGER
);
INSERT INTO League_Financial_Projection VALUES (1, 1, 2021, 50000000, 20000000, 30000000, 15000000, 115000000, 30000000, 26, 5, 120000000, 1, 85, 35000000, 1, 101, 70, 1, 15, 5000000, 2000000);
INSERT INTO League_Financial_Projection VALUES (2, 2, 2022, 52000000, 21000000, 31000000, 16000000, 120000000, 32000000, 27, 6, 125000000, 1, 87, 36000000, 1, 102, 68, 1, 16, 6000000, 2500000);
INSERT INTO League_Financial_Projection VALUES (3, 3, 2023, 54000000, 22000000, 32000000, 17000000, 125000000, 34000000, 27, 7, 130000000, 1, 89, 37000000, 1, 103, 66, 1, 17, 7000000, 3000000);

-- Stadium_IoT_Device_Registry
CREATE TABLE Stadium_IoT_Device_Registry (
    device_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    device_type TEXT,
    manufacturer TEXT,
    installation_date TEXT,
    firmware_version INTEGER,
    mac_address TEXT,
    ip_address TEXT,
    location_zone TEXT,
    power_source TEXT,
    battery_level_percent INTEGER,
    connectivity_status TEXT,
    data_rate_kbps INTEGER,
    last_maintenance_date TEXT,
    maintenance_interval_days INTEGER,
    sensor_accuracy INTEGER,
    calibration_date TEXT,
    warranty_expiration TEXT,
    operational_status TEXT,
    assigned_technician_id INTEGER,
    notes TEXT,
    data_retention_days INTEGER
);
INSERT INTO Stadium_IoT_Device_Registry VALUES (1, 1, 1, 1, 20200101, 5, 001122334455, 192168001, 1, 1, 100, 1, 500, 20210101, 180, 95, 20200115, 20230115, 1, 10, 0, 365);
INSERT INTO Stadium_IoT_Device_Registry VALUES (2, 2, 2, 2, 20200202, 6, 001122334466, 192168002, 2, 2, 95, 1, 600, 20210202, 180, 96, 20200216, 20230216, 1, 11, 0, 365);
INSERT INTO Stadium_IoT_Device_Registry VALUES (3, 3, 3, 3, 20200303, 7, 001122334477, 192168003, 3, 3, 90, 1, 700, 20210303, 180, 97, 20200317, 20230317, 1, 12, 0, 365);

-- Match_Official_Communication_Log
CREATE TABLE Match_Official_Communication_Log (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    official_id INTEGER,
    communication_type TEXT,
    timestamp TEXT,
    channel TEXT,
    message_content TEXT,
    response_time_seconds INTEGER,
    escalation_level INTEGER,
    outcome TEXT,
    notes TEXT,
    recorder_id INTEGER,
    verification_status TEXT,
    priority INTEGER,
    related_incident_id INTEGER,
    resolved_flag INTEGER,
    resolution_time_seconds INTEGER,
    follow_up_required INTEGER,
    follow_up_date TEXT,
    attached_file_id INTEGER,
    confidentiality_level INTEGER,
    audit_trail_id INTEGER
);
INSERT INTO Match_Official_Communication_Log VALUES (1, 1001, 501, 1, 202104011200, 1, 0, 30, 0, 1, 0, 100, 1, 1, 0, 1, 300, 0, 0, 0, 2, 2001);
INSERT INTO Match_Official_Communication_Log VALUES (2, 1002, 502, 2, 202104021300, 2, 0, 45, 1, 2, 0, 101, 1, 2, 0, 1, 400, 1, 20210405, 0, 3, 2002);
INSERT INTO Match_Official_Communication_Log VALUES (3, 1003, 503, 1, 202104031400, 1, 0, 20, 0, 1, 0, 102, 1, 1, 0, 1, 250, 0, 0, 0, 1, 2003);

-- Fan_Interaction_Timeline
CREATE TABLE Fan_Interaction_Timeline (
    interaction_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    match_id INTEGER,
    interaction_type TEXT,
    interaction_timestamp TEXT,
    platform TEXT,
    content_id INTEGER,
    sentiment_score INTEGER,
    engagement_score INTEGER,
    reach INTEGER,
    duration_seconds INTEGER,
    location TEXT,
    device_type TEXT,
    ip_address TEXT,
    browser TEXT,
    os TEXT,
    referral_source TEXT,
    campaign_id INTEGER,
    conversion_flag INTEGER,
    revenue_generated INTEGER,
    feedback_text TEXT,
    follow_up_action TEXT
);
INSERT INTO Fan_Interaction_Timeline VALUES (1, 10001, 1001, 1, 202105011000, 1, 2001, 80, 150, 5000, 300, 1, 1, 192168010, 1, 1, 1, 301, 1, 1000, 0, 0);
INSERT INTO Fan_Interaction_Timeline VALUES (2, 10002, 1002, 2, 202105021100, 2, 2002, 70, 140, 4800, 250, 2, 2, 192168011, 2, 2, 2, 302, 0, 0, 0, 0);
INSERT INTO Fan_Interaction_Timeline VALUES (3, 10003, 1003, 1, 202105031200, 1, 2003, 85, 160, 5200, 350, 3, 1, 192168012, 1, 1, 3, 303, 1, 1200, 1, 1);

-- Club_Sponsorship_Network
CREATE TABLE Club_Sponsorship_Network (
    network_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    sponsor_id INTEGER,
    partnership_start_date TEXT,
    partnership_end_date TEXT,
    sponsorship_tier TEXT,
    annual_fee INTEGER,
    performance_bonus INTEGER,
    brand_exposure_score INTEGER,
    activation_events INTEGER,
    marketing_collaboration_score INTEGER,
    exclusive_rights_flag INTEGER,
    renewal_option_flag INTEGER,
    contract_document_id INTEGER,
    legal_review_status TEXT,
    compliance_audit_score INTEGER,
    regional_focus TEXT,
    target_audience_score INTEGER,
    social_media_impressions INTEGER,
    tv_impressions INTEGER,
    radio_impressions INTEGER,
    print_impressions INTEGER
);
INSERT INTO Club_Sponsorship_Network VALUES (1, 1, 901, 20190101, 20231231, 1, 2000000, 500000, 85, 12, 90, 1, 1, 4001, 1, 88, 1, 80, 5000000, 3000000, 2000000, 1000000);
INSERT INTO Club_Sponsorship_Network VALUES (2, 2, 902, 20200101, 20251231, 2, 1500000, 400000, 80, 10, 85, 0, 1, 4002, 1, 85, 2, 75, 4500000, 2500000, 1500000, 800000);
INSERT INTO Club_Sponsorship_Network VALUES (3, 3, 903, 20210101, 20231231, 1, 1800000, 450000, 82, 11, 88, 1, 0, 4003, 1, 87, 1, 78, 4700000, 2700000, 1700000, 900000);

-- Training_Session_Rhythm
CREATE TABLE Training_Session_Rhythm (
    rhythm_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    session_date TEXT,
    session_type TEXT,
    duration_minutes INTEGER,
    intensity_level INTEGER,
    heart_rate_avg INTEGER,
    lactate_threshold INTEGER,
    perceived_exertion INTEGER,
    nutrition_pre_score INTEGER,
    hydration_score INTEGER,
    warmup_duration INTEGER,
    cool_down_duration INTEGER,
    injury_prevention_score INTEGER,
    skill_focus_score INTEGER,
    tactical_focus_score INTEGER,
    equipment_used_score INTEGER,
    coach_feedback_score INTEGER,
    player_satisfaction_score INTEGER,
    session_effectiveness_score INTEGER,
    repeat_score INTEGER,
    notes TEXT
);
INSERT INTO Training_Session_Rhythm VALUES (1, 101, 20210601, 1, 90, 8, 150, 85, 7, 80, 85, 15, 10, 90, 88, 85, 92, 85, 90, 90, 1, 0);
INSERT INTO Training_Session_Rhythm VALUES (2, 102, 20210602, 2, 95, 7, 145, 80, 6, 78, 82, 12, 12, 88, 86, 84, 90, 83, 88, 87, 2, 0);
INSERT INTO Training_Session_Rhythm VALUES (3, 103, 20210603, 1, 100, 9, 155, 88, 8, 82, 87, 14, 9, 92, 90, 87, 94, 88, 92, 93, 3, 0);

-- Broadcast_Streamer_Metrics
CREATE TABLE Broadcast_Streamer_Metrics (
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcast_id INTEGER,
    streamer_id INTEGER,
    stream_date TEXT,
    concurrent_viewers INTEGER,
    peak_viewers INTEGER,
    average_watch_time_seconds INTEGER,
    bitrate_kbps INTEGER,
    latency_ms INTEGER,
    buffering_events INTEGER,
    platform TEXT,
    geo_region TEXT,
    device_type TEXT,
    subscription_status INTEGER,
    ad_impressions INTEGER,
    ad_clicks INTEGER,
    revenue_generated INTEGER,
    stream_quality_score INTEGER,
    technical_issues INTEGER,
    support_tickets INTEGER,
    feedback_score INTEGER,
    compliance_flag INTEGER
);
INSERT INTO Broadcast_Streamer_Metrics VALUES (1, 10001, 501, 20210701, 5000, 7500, 1800, 4500, 150, 20, 1, 1, 1, 1, 3000, 150, 20000, 9, 2, 5, 85, 1);
INSERT INTO Broadcast_Streamer_Metrics VALUES (2, 10002, 502, 20210702, 5200, 7700, 1850, 4600, 140, 18, 2, 2, 2, 1, 3200, 160, 21000, 9, 1, 4, 87, 1);
INSERT INTO Broadcast_Streamer_Metrics VALUES (3, 10003, 503, 20210703, 5400, 8000, 1900, 4700, 130, 15, 1, 3, 1, 1, 3400, 170, 22000, 9, 0, 3, 89, 1);

-- International_Competition_Schedule
CREATE TABLE International_Competition_Schedule (
    schedule_id INTEGER PRIMARY KEY AUTOINCREMENT,
    competition_id INTEGER,
    match_number INTEGER,
    home_team_id INTEGER,
    away_team_id INTEGER,
    venue_id INTEGER,
    scheduled_date TEXT,
    start_time TEXT,
    referee_id INTEGER,
    assistant_referee1_id INTEGER,
    assistant_referee2_id INTEGER,
    fourth_official_id INTEGER,
    match_status TEXT,
    ticket_allocation INTEGER,
    broadcast_rights_holder_id INTEGER,
    travel_requirements_score INTEGER,
    climate_zone TEXT,
    altitude_meters INTEGER,
    time_zone_offset INTEGER,
    security_level INTEGER,
    medical_staff_count INTEGER,
    contingency_plan_id INTEGER
);
INSERT INTO International_Competition_Schedule VALUES (1, 201, 1, 301, 302, 401, 20210801, 1800, 501, 601, 602, 701, 1, 20000, 801, 75, 1, 500, 2, 3, 4, 901);
INSERT INTO International_Competition_Schedule VALUES (2, 202, 2, 303, 304, 402, 20210805, 2000, 502, 603, 604, 702, 1, 21000, 802, 78, 2, 600, 2, 4, 5, 902);
INSERT INTO International_Competition_Schedule VALUES (3, 203, 3, 305, 306, 403, 20210810, 2100, 503, 605, 606, 703, 1, 22000, 803, 80, 1, 700, 3, 5, 6, 903);