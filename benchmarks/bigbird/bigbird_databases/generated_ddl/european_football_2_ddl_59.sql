-- Media_Room_Equipment: inventory of equipment in broadcast/media rooms
CREATE TABLE Media_Room_Equipment (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    room_id INTEGER,
    equipment_type INTEGER,
    manufacturer_id INTEGER,
    purchase_year INTEGER,
    warranty_years INTEGER,
    quantity INTEGER,
    maintenance_interval_months INTEGER,
    last_maintenance_year INTEGER,
    next_maintenance_year INTEGER,
    serial_number INTEGER,
    firmware_version INTEGER,
    power_rating_watts INTEGER,
    dimensions_cm INTEGER,
    weight_kg INTEGER,
    status_code INTEGER,
    depreciation_rate_pct INTEGER,
    location_code INTEGER,
    uptime_hours INTEGER,
    downtime_hours INTEGER,
    maintenance_cost_usd INTEGER,
    notes_code INTEGER
);
INSERT INTO Media_Room_Equipment VALUES (1,101,1,10,2015,5,2,12,2020,2022,123456,101,250,120,15,1,10,3,8000,200,500,0);
INSERT INTO Media_Room_Equipment VALUES (2,102,2,11,2018,3,1,6,2021,2023,223344,102,150,90,10,2,15,5,5600,300,300,1);
INSERT INTO Media_Room_Equipment VALUES (3,103,3,12,2020,4,3,9,2022,2025,332211,103,300,150,20,1,12,2,7200,250,400,0);

-- Stadium_Energy_Billing: monthly utility billing for each stadium
CREATE TABLE Stadium_Energy_Billing (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    billing_year INTEGER,
    billing_month INTEGER,
    utility_provider_id INTEGER,
    electricity_kwh INTEGER,
    water_m3 INTEGER,
    gas_m3 INTEGER,
    total_cost_usd INTEGER,
    peak_demand_kw INTEGER,
    off_peak_demand_kw INTEGER,
    renewable_percentage INTEGER,
    carbon_offset_tons INTEGER,
    billing_cycle_days INTEGER,
    payment_status INTEGER,
    invoice_number INTEGER,
    payment_method_code INTEGER,
    late_fee_usd INTEGER,
    discount_usd INTEGER,
    correction_adjustment_usd INTEGER,
    meter_reading_start INTEGER,
    meter_reading_end INTEGER
);
INSERT INTO Stadium_Energy_Billing VALUES (1,1,2023,5,20,150000,1200,8000,25000,450,300,30,5,30,1,555001,2,0,500,0,1000000,1150000);
INSERT INTO Stadium_Energy_Billing VALUES (2,2,2023,5,21,180000,1300,9000,30000,500,350,35,6,30,1,555002,2,100,0,0,1200000,1380000);
INSERT INTO Stadium_Energy_Billing VALUES (3,3,2023,5,22,200000,1400,9500,34000,550,380,40,7,30,0,555003,1,0,200,50,1400000,1590000);

-- Fan_Travel_Surveys: post‑match travel survey data from fans
CREATE TABLE Fan_Travel_Surveys (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    match_id INTEGER,
    travel_mode_code INTEGER,
    distance_km INTEGER,
    travel_time_minutes INTEGER,
    accommodation_nights INTEGER,
    accommodation_cost_usd INTEGER,
    meals_cost_usd INTEGER,
    merchandise_spent_usd INTEGER,
    total_spent_usd INTEGER,
    satisfaction_score INTEGER,
    likelihood_recommend INTEGER,
    survey_year INTEGER,
    survey_month INTEGER,
    group_size INTEGER,
    pre_match_arrival_days INTEGER,
    post_match_departure_days INTEGER,
    travel_insurance_flag INTEGER,
    carbon_footprint_kg INTEGER,
    feedback_code INTEGER,
    survey_version INTEGER,
    reserved INTEGER
);
INSERT INTO Fan_Travel_Surveys VALUES (1,1001,5001,1,200,180,2,300,150,80,530,9,8,2023,5,4,1,1,0,45,10,1,0);
INSERT INTO Fan_Travel_Surveys VALUES (2,1002,5002,2,350,240,3,450,200,120,770,8,7,2023,5,2,2,2,1,60,12,1,0);
INSERT INTO Fan_Travel_Surveys VALUES (3,1003,5003,3,120,90,1,150,100,50,300,10,9,2023,5,6,0,0,0,30,8,1,0);

-- Club_Guest_Hospitality: records of club‑hosted hospitality events for guests
CREATE TABLE Club_Guest_Hospitality (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    event_id INTEGER,
    guest_type_code INTEGER,
    guest_name_id INTEGER,
    invitation_sent_date INTEGER,
    invitation_accepted_flag INTEGER,
    table_number INTEGER,
    seat_number INTEGER,
    menu_selection_code INTEGER,
    beverage_package_code INTEGER,
    special_requests_code INTEGER,
    attendance_status INTEGER,
    check_in_time INTEGER,
    check_out_time INTEGER,
    total_charge_usd INTEGER,
    discount_usd INTEGER,
    payment_status INTEGER,
    host_staff_id INTEGER,
    hospitality_rating INTEGER,
    feedback_text_code INTEGER,
    follow_up_action_code INTEGER,
    record_version INTEGER,
    reserved INTEGER
);
INSERT INTO Club_Guest_Hospitality VALUES (1,10,2001,1,50001,20230501,1,12,5,3,2,0,1800,2100,2500,200,1,3001,9,7,0,1,0);
INSERT INTO Club_Guest_Hospitality VALUES (2,11,2002,2,50002,20230503,0,14,7,4,1,1,1900,2200,2600,0,0,3002,8,6,0,1,0);
INSERT INTO Club_Guest_Hospitality VALUES (3,12,2003,3,50003,20230505,1,16,9,5,3,0,2000,2300,2700,150,1,3003,10,9,0,1,0);

-- Training_Center_Air_Quality: sensor readings for indoor air quality at training centers
CREATE TABLE Training_Center_Air_Quality (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    center_id INTEGER,
    measurement_date INTEGER,
    pm10_ug_m3 INTEGER,
    pm2_5_ug_m3 INTEGER,
    co2_ppm INTEGER,
    tvoc_ppb INTEGER,
    temperature_c INTEGER,
    humidity_percent INTEGER,
    airflow_cfm INTEGER,
    filter_status_code INTEGER,
    maintenance_due_flag INTEGER,
    last_filter_change_date INTEGER,
    next_filter_change_date INTEGER,
    sensor_calibration_flag INTEGER,
    alert_level_code INTEGER,
    average_daily_exposure INTEGER,
    max_daily_exposure INTEGER,
    min_daily_exposure INTEGER,
    data_quality_score INTEGER,
    record_status INTEGER,
    notes_code INTEGER,
    reserved INTEGER
);
INSERT INTO Training_Center_Air_Quality VALUES (1,301,20230510,45,20,800,150,22,55,350,1,0,20230301,20240301,1,0,30,45,10,95,1,0,0);
INSERT INTO Training_Center_Air_Quality VALUES (2,302,20230510,50,25,820,160,21,58,360,2,0,20230401,20240401,1,0,32,48,12,93,1,0,0);
INSERT INTO Training_Center_Air_Quality VALUES (3,303,20230510,48,22,810,155,23,57,355,1,1,20230115,20240115,0,1,31,46,11,94,1,0,0);

-- League_Social_Graph_Analytics: high‑level social media analytics for leagues
CREATE TABLE League_Social_Graph_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    analysis_date INTEGER,
    total_accounts INTEGER,
    total_posts INTEGER,
    avg_engagement_rate INTEGER,
    top_hashtag_code INTEGER,
    top_influencer_id INTEGER,
    sentiment_score INTEGER,
    viral_post_id INTEGER,
    reach_impressions INTEGER,
    video_views INTEGER,
    story_views INTEGER,
    link_clicks INTEGER,
    follower_growth INTEGER,
    churn_rate INTEGER,
    active_user_percentage INTEGER,
    engagement_by_region_code INTEGER,
    platform_distribution_code INTEGER,
    data_collection_method_code INTEGER,
    analysis_version INTEGER,
    confidence_interval INTEGER,
    remarks_code INTEGER,
    reserved INTEGER
);
INSERT INTO League_Social_Graph_Analytics VALUES (1,1,20230515,250000,480000,15,101,5001,78,9001,1200000,300000,150000,50000,20000,5,80,201,301,1,3,95,0,0);
INSERT INTO League_Social_Graph_Analytics VALUES (2,2,20230515,300000,560000,18,102,5002,82,9002,1300000,350000,170000,60000,25000,4,85,202,302,1,3,96,0,0);
INSERT INTO League_Social_Graph_Analytics VALUES (3,3,20230515,200000,420000,12,103,5003,75,9003,1100000,280000,140000,45000,18000,6,78,203,303,1,3,94,0,0);

-- Match_Referee_Schedule: scheduling and compensation details for match officials
CREATE TABLE Match_Referee_Schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    referee_id INTEGER,
    role_code INTEGER,
    scheduled_start_time INTEGER,
    scheduled_end_time INTEGER,
    actual_start_time INTEGER,
    actual_end_time INTEGER,
    travel_time_minutes INTEGER,
    accommodation_nights INTEGER,
    accommodation_cost_usd INTEGER,
    meal_allowance_usd INTEGER,
    per_diem_usd INTEGER,
    total_compensation_usd INTEGER,
    performance_score INTEGER,
    incident_reports_count INTEGER,
    missed_calls_count INTEGER,
    overtime_minutes INTEGER,
    feedback_score INTEGER,
    approved_flag INTEGER,
    notes_code INTEGER,
    version_number INTEGER,
    reserved INTEGER
);
INSERT INTO Match_Referee_Schedule VALUES (1,5001,20001,1,1800,2000,1820,2025,90,1,250,30,25,355,88,2,0,10,9,1,0,2,0);
INSERT INTO Match_Referee_Schedule VALUES (2,5002,20002,2,1900,2100,1915,2130,85,1,260,35,30,385,85,1,1,5,8,1,0,2,0);
INSERT INTO Match_Referee_Schedule VALUES (3,5003,20003,3,2000,2200,2020,2240,95,2,300,40,35,415,90,3,0,15,10,1,0,2,0);

-- Team_Chef_Profiles: details of chefs employed by clubs for match‑day catering
CREATE TABLE Team_Chef_Profiles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    chef_id INTEGER,
    hire_date INTEGER,
    contract_years INTEGER,
    specialty_cuisine_code INTEGER,
    certifications_count INTEGER,
    average_meal_rating INTEGER,
    meals_prepared_per_match INTEGER,
    budget_usd INTEGER,
    supplier_id INTEGER,
    health_inspection_score INTEGER,
    kitchen_area_sqm INTEGER,
    staff_managed INTEGER,
    shift_hours_per_week INTEGER,
    overtime_hours INTEGER,
    turnover_rate INTEGER,
    culinary_awards_count INTEGER,
    social_media_followers INTEGER,
    training_hours INTEGER,
    performance_review_score INTEGER,
    record_status INTEGER,
    reserved INTEGER
);
INSERT INTO Team_Chef_Profiles VALUES (1,10,30001,20200115,3,5,4,9,120,5000,4001,95,80,5,40,8,12,2,15000,20,88,1,0);
INSERT INTO Team_Chef_Profiles VALUES (2,11,30002,20210320,2,6,3,8,110,4800,4002,92,75,4,38,6,10,1,12000,18,85,1,0);
INSERT INTO Team_Chef_Profiles VALUES (3,12,30003,20220705,4,4,5,9,130,5200,4003,97,85,6,42,10,15,3,18000,22,90,1,0);

-- Player_Fan_Interaction_Log: recorded interactions between players and fans
CREATE TABLE Player_Fan_Interaction_Log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    fan_id INTEGER,
    interaction_type_code INTEGER,
    interaction_date INTEGER,
    platform_code INTEGER,
    duration_seconds INTEGER,
    sentiment_score INTEGER,
    gifts_value_usd INTEGER,
    messages_exchanged INTEGER,
    photos_shared INTEGER,
    videos_shared INTEGER,
    public_post_flag INTEGER,
    unique_viewers INTEGER,
    engagement_metric INTEGER,
    follow_up_action_code INTEGER,
    outcome_code INTEGER,
    rating_score INTEGER,
    feedback_text_code INTEGER,
    survey_sent_flag INTEGER,
    survey_response_score INTEGER,
    record_version INTEGER,
    reserved INTEGER
);
INSERT INTO Player_Fan_Interaction_Log VALUES (1,40001,80001,1,20230512,1,300,80,20,15,3,1,0,500,75,2,1,9,5,1,85,1,0);
INSERT INTO Player_Fan_Interaction_Log VALUES (2,40002,80002,2,20230513,2,420,85,35,20,5,2,1,650,90,3,2,10,6,1,90,1,0);
INSERT INTO Player_Fan_Interaction_Log VALUES (3,40003,80003,3,20230514,3,180,70,10,8,1,0,0,300,60,1,0,7,4,0,70,1,0);

-- Sponsor_Digital_Asset_Tracking: tracking of digital assets supplied by sponsors
CREATE TABLE Sponsor_Digital_Asset_Tracking (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    asset_type_code INTEGER,
    asset_id INTEGER,
    creation_date INTEGER,
    last_modified_date INTEGER,
    file_size_kb INTEGER,
    resolution_width INTEGER,
    resolution_height INTEGER,
    format_code INTEGER,
    usage_count INTEGER,
    total_impressions INTEGER,
    total_clicks INTEGER,
    campaign_id INTEGER,
    channel_code INTEGER,
    expiration_date INTEGER,
    status_code INTEGER,
    compliance_flag INTEGER,
    audit_score INTEGER,
    renewal_date INTEGER,
    renewal_status INTEGER,
    notes_code INTEGER,
    version_number INTEGER,
    reserved INTEGER
);
INSERT INTO Sponsor_Digital_Asset_Tracking VALUES (1,60001,1,90001,20230101,20230401,1500,1920,1080,1,250,50000,400,1,20231231,1,1,95,20240115,0,10,2,0);
INSERT INTO Sponsor_Digital_Asset_Tracking VALUES (2,60002,2,90002,20230215,20230510,2000,1280,720,2,300,75000,401,2,20240115,1,1,92,20240220,0,11,2,0);
INSERT INTO Sponsor_Digital_Asset_Tracking VALUES (3,60003,3,90003,20230320,20230620,1800,2560,1440,3,350,90000,402,3,20240228,1,0,88,20240330,1,12,3,0);