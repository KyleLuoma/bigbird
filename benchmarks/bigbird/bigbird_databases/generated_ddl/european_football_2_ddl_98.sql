-- Stadium utilities and resource usage
CREATE TABLE Stadium_Utilities (
    utility_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    electricity_kwh INTEGER,
    water_m3 INTEGER,
    gas_therms INTEGER,
    waste_tonnes REAL,
    recycling_tonnes REAL,
    energy_source TEXT,
    maintenance_date TEXT,
    last_inspection_date TEXT,
    inspection_status TEXT,
    avg_daily_usage REAL,
    peak_usage REAL,
    voltage_level INTEGER,
    transformer_id TEXT,
    backup_generator_status TEXT,
    solar_panel_output REAL,
    wind_turbine_output REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    is_active INTEGER
);
INSERT INTO Stadium_Utilities (stadium_id,electricity_kwh,water_m3,gas_therms,waste_tonnes,recycling_tonnes,energy_source,maintenance_date,last_inspection_date,inspection_status,avg_daily_usage,peak_usage,voltage_level,transformer_id,backup_generator_status,solar_panel_output,wind_turbine_output,notes,created_at,updated_at,is_active) VALUES (1,12500,300,500,12.5,8.2,'Solar',2023-06-01,2023-08-15,'Pass',450.5,720.3,230,'T01','Operational',150.0,0.0,'Routine check',2023-01-01,2023-08-16,1);
INSERT INTO Stadium_Utilities (stadium_id,electricity_kwh,water_m3,gas_therms,waste_tonnes,recycling_tonnes,energy_source,maintenance_date,last_inspection_date,inspection_status,avg_daily_usage,peak_usage,voltage_level,transformer_id,backup_generator_status,solar_panel_output,wind_turbine_output,notes,created_at,updated_at,is_active) VALUES (2,9800,250,400,9.0,6.5,'Grid',2023-05-20,2023-07-30,'Pass',380.0,610.0,220,'T02','Operational',0.0,0.0,'No issues',2023-01-15,2023-07-31,1);
INSERT INTO Stadium_Utilities (stadium_id,electricity_kwh,water_m3,gas_therms,waste_tonnes,recycling_tonnes,energy_source,maintenance_date,last_inspection_date,inspection_status,avg_daily_usage,peak_usage,voltage_level,transformer_id,backup_generator_status,solar_panel_output,wind_turbine_output,notes,created_at,updated_at,is_active) VALUES (3,14300,350,620,14.2,10.1,'Hybrid',2023-04-10,2023-09-05,'Fail',520.0,800.0,240,'T03','Repair Needed',200.0,15.0,'Leak detected',2023-02-01,2023-09-06,0);

-- Fan engagement per media channel
CREATE TABLE Fan_Engagement_Channels (
    channel_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    channel_name TEXT,
    platform TEXT,
    avg_viewers INTEGER,
    peak_viewers INTEGER,
    country_distribution TEXT,
    engagement_score REAL,
    watch_time_minutes INTEGER,
    comment_count INTEGER,
    share_count INTEGER,
    like_count INTEGER,
    dislike_count INTEGER,
    new_follower_count INTEGER,
    bounce_rate REAL,
    retention_rate REAL,
    ad_clicks INTEGER,
    ad_impressions INTEGER,
    sentiment_score REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    is_active INTEGER
);
INSERT INTO Fan_Engagement_Channels (match_id,channel_name,platform,avg_viewers,peak_viewers,country_distribution,engagement_score,watch_time_minutes,comment_count,share_count,like_count,dislike_count,new_follower_count,bounce_rate,retention_rate,ad_clicks,ad_impressions,sentiment_score,notes,created_at,updated_at,is_active) VALUES (101,'LiveStreamA','YouTube',45000,78000,'US:60,EU:30,AS:10',78.5,1200,350,80,6200,150,45,0.12,0.65,210,45000,0.84,'Good performance',2023-08-01,2023-08-01,1);
INSERT INTO Fan_Engagement_Channels (match_id,channel_name,platform,avg_viewers,peak_viewers,country_distribution,engagement_score,watch_time_minutes,comment_count,share_count,like_count,dislike_count,new_follower_count,bounce_rate,retention_rate,ad_clicks,ad_impressions,sentiment_score,notes,created_at,updated_at,is_active) VALUES (102,'LiveStreamB','Twitch',31000,54000,'US:55,EU:35,AS:10',72.3,950,210,55,4800,220,30,0.15,0.60,180,31000,0.78,'Stable audience',2023-08-02,2023-08-02,1);
INSERT INTO Fan_Engagement_Channels (match_id,channel_name,platform,avg_viewers,peak_viewers,country_distribution,engagement_score,watch_time_minutes,comment_count,share_count,like_count,dislike_count,new_follower_count,bounce_rate,retention_rate,ad_clicks,ad_impressions,sentiment_score,notes,created_at,updated_at,is_active) VALUES (103,'HighlightReel','Facebook',22000,35000,'US:50,EU:40,AS:10',65.1,800,180,40,3500,180,20,0.18,0.55,150,22000,0.71,'Requires promotion',2023-08-03,2023-08-03,1);

-- Detailed sponsor contracts
CREATE TABLE Sponsorship_Contract_Details (
    contract_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    team_id INTEGER,
    start_date TEXT,
    end_date TEXT,
    amount_usd REAL,
    activation_events TEXT,
    media_impressions INTEGER,
    contract_type TEXT,
    renewal_option TEXT,
    exclusivity_clause TEXT,
    branding_rights TEXT,
    product_placement TEXT,
    hospitality_packages INTEGER,
    performance_bonus REAL,
    termination_notice_days INTEGER,
    governing_law TEXT,
    arbitration_clause TEXT,
    confidentiality_clause TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    is_active INTEGER
);
INSERT INTO Sponsorship_Contract_Details (sponsor_id,team_id,start_date,end_date,amount_usd,activation_events,media_impressions,contract_type,renewal_option,exclusivity_clause,branding_rights,product_placement,hostility_packages,performance_bonus,termination_notice_days,governing_law,arbitration_clause,confidentiality_clause,notes,created_at,updated_at,is_active) VALUES (201,10,'2023-01-01','2025-12-31',2500000,'SeasonKickoff,HalfTime',5000000,'Exclusive','Option2','Full','StadiumBanner','Jersey',5,150000,90,'US','Standard','Yes','Initial three‑year deal',2023-01-01,2023-01-01,1);
INSERT INTO Sponsorship_Contract_Details (sponsor_id,team_id,start_date,end_date,amount_usd,activation_events,media_impressions,contract_type,renewal_option,exclusivity_clause,branding_rights,product_placement,hostility_packages,performance_bonus,termination_notice_days,governing_law,arbitration_clause,confidentiality_clause,notes,created_at,updated_at,is_active) VALUES (202,12,'2022-07-15','2024-07-14',1800000,'PreMatch,PostMatch',3500000,'Co‑Sponsor','Option1','Partial','DigitalAds','TrainingGear',3,90000,60,'UK','Standard','Yes','Renewable after 2 years',2022-07-15,2022-07-15,1);
INSERT INTO Sponsorship_Contract_Details (sponsor_id,team_id,start_date,end_date,amount_usd,activation_events,media_impressions,contract_type,renewal_option,exclusivity_clause,branding_rights,product_placement,hostility_packages,performance_bonus,termination_notice_days,governing_law,arbitration_clause,confidentiality_clause,notes,created_at,updated_at,is_active) VALUES (203,8,'2024-03-01','2026-02-28',3000000,'FanZone,SocialMedia',6200000,'Exclusive','Option3','Full','StadiumLED','App',7,200000,120,'EU','Standard','Yes','Includes community program',2024-03-01,2024-03-01,1);

-- Player mental health session records
CREATE TABLE Player_Mental_Health_Sessions (
    session_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    therapist_id INTEGER,
    session_date TEXT,
    duration_min INTEGER,
    session_type TEXT,
    notes TEXT,
    outcome_score REAL,
    follow_up_required INTEGER,
    confidentiality_agreement INTEGER,
    assessment_tool TEXT,
    stress_level_before REAL,
    stress_level_after REAL,
    mood_before TEXT,
    mood_after TEXT,
    coping_strategy TEXT,
    referral_source TEXT,
    medication_discussed INTEGER,
    progress_rating REAL,
    next_session_date TEXT,
    created_at TEXT,
    updated_at TEXT,
    is_active INTEGER
);
INSERT INTO Player_Mental_Health_Sessions (player_id,therapist_id,session_date,duration_min,session_type,notes,outcome_score,follow_up_required,confidentiality_agreement,assessment_tool,stress_level_before,stress_level_after,mood_before,mood_after,coping_strategy,referral_source,medication_discussed,progress_rating,next_session_date,created_at,updated_at,is_active) VALUES (301,401,'2023-09-10',60,'Counselling','Discussed performance anxiety',85.2,1,1,'PSS',7.5,4.2,'Anxious','Calmer','Breathing','Coach',0,4.0,'2023-09-24','2023-09-10','2023-09-10',1);
INSERT INTO Player_Mental_Health_Sessions (player_id,therapist_id,session_date,duration_min,session_type,notes,outcome_score,follow_up_required,confidentiality_agreement,assessment_tool,stress_level_before,stress_level_after,mood_before,mood_after,coping_strategy,referral_source,medication_discussed,progress_rating,next_session_date,created_at,updated_at,is_active) VALUES (302,402,'2023-09-12',45,'Cognitive','Mindfulness training',78.5,0,1,'DASS',6.0,3.8,'Stressed','Focused','Visualization','Doctor',0,3.5,'2023-10-01','2023-09-12','2023-09-12',1);
INSERT INTO Player_Mental_Health_Sessions (player_id,therapist_id,session_date,duration_min,session_type,notes,outcome_score,follow_up_required,confidentiality_agreement,assessment_tool,stress_level_before,stress_level_after,mood_before,mood_after,coping_strategy,referral_source,medication_discussed,progress_rating,next_session_date,created_at,updated_at,is_active) VALUES (303,403,'2023-09-15',30,'Check‑in','Brief mood check',90.0,0,1,'PHQ',2.5,1.8,'Neutral','Positive','PositiveSelfTalk','Self',0,4.5,'2023-09-29','2023-09-15','2023-09-15',1);

-- Team travel environmental impact records
CREATE TABLE Team_Travel_Environmental_Impact (
    travel_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    match_id INTEGER,
    departure_date TEXT,
    return_date TEXT,
    distance_km REAL,
    carbon_kg REAL,
    transport_mode TEXT,
    fuel_type TEXT,
    passenger_count INTEGER,
    emissions_offset BOOLEAN,
    offset_amount_kg REAL,
    vehicle_id TEXT,
    avg_speed_kph REAL,
    max_speed_kph REAL,
    route_complexity TEXT,
    weather_conditions TEXT,
    accommodation_type TEXT,
    hotel_energy_rating TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    is_active INTEGER
);
INSERT INTO Team_Travel_Environmental_Impact (team_id,match_id,departure_date,return_date,distance_km,carbon_kg,transport_mode,fuel_type,passenger_count,emissions_offset,offset_amount_kg,vehicle_id,avg_speed_kph,max_speed_kph,route_complexity,weather_conditions,accommodation_type,hotel_energy_rating,notes,created_at,updated_at,is_active) VALUES (10,201,'2023-10-01','2023-10-03',850.5,210.2,'Bus','Diesel',25,1,50.0,'BUS123',80.0,120.0,'Medium','Clear','Hotel','A','Eco‑friendly travel',2023-09-30,2023-09-30,1);
INSERT INTO Team_Travel_Environmental_Impact (team_id,match_id,departure_date,return_date,distance_km,carbon_kg,transport_mode,fuel_type,passenger_count,emissions_offset,offset_amount_kg,vehicle_id,avg_speed_kph,max_speed_kph,route_complexity,weather_conditions,accommodation_type,hotel_energy_rating,notes,created_at,updated_at,is_active) VALUES (12,202,'2023-10-05','2023-10-07',1200.0,300.5,'Plane','JetA',20,0,0.0,'N/A',900.0,950.0,'High','Rain','Hotel','B','Long‑haul flight',2023-10-04,2023-10-04,1);
INSERT INTO Team_Travel_Environmental_Impact (team_id,match_id,departure_date,return_date,distance_km,carbon_kg,transport_mode,fuel_type,passenger_count,emissions_offset,offset_amount_kg,vehicle_id,avg_speed_kph,max_speed_kph,route_complexity,weather_conditions,accommodation_type,hotel_energy_rating,notes,created_at,updated_at,is_active) VALUES (8,203,'2023-10-10','2023-10-12',650.0,160.8,'Train','Electric',30,1,30.0,'TRAIN45',100.0,130.0,'Low','Cloudy','TrainStation','N/A','Preferred rail travel',2023-10-09,2023-10-09,1);

-- Stadium sensor data collection
CREATE TABLE Stadium_Sensor_Readings (
    reading_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    sensor_type TEXT,
    reading_timestamp TEXT,
    value REAL,
    unit TEXT,
    status TEXT,
    latitude REAL,
    longitude REAL,
    battery_pct INTEGER,
    firmware_version TEXT,
    calibration_date TEXT,
    maintenance_required INTEGER,
    alert_threshold_high REAL,
    alert_threshold_low REAL,
    last_service_date TEXT,
    signal_strength INTEGER,
    network_id TEXT,
    data_quality_score REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    is_active INTEGER
);
INSERT INTO Stadium_Sensor_Readings (stadium_id,sensor_type,reading_timestamp,value,unit,status,latitude,longitude,battery_pct,firmware_version,calibration_date,maintenance_required,alert_threshold_high,alert_threshold_low,last_service_date,signal_strength,network_id,data_quality_score,notes,created_at,updated_at,is_active) VALUES (1,'Temperature','2023-08-20T14:00:00',23.5,'C','OK',40.7128,-74.0060,95,'v1.2','2023-01-15',0,30.0,15.0,'2023-07-01',85,'NET01',0.98,'Normal operation',2023-08-20,2023-08-20,1);
INSERT INTO Stadium_Sensor_Readings (stadium_id,sensor_type,reading_timestamp,value,unit,status,latitude,longitude,battery_pct,firmware_version,calibration_date,maintenance_required,alert_threshold_high,alert_threshold_low,last_service_date,signal_strength,network_id,data_quality_score,notes,created_at,updated_at,is_active) VALUES (2,'Humidity','2023-08-20T14:05:00',55.2,'%','OK',34.0522,-118.2437,88,'v2.0','2023-02-10',0,70.0,30.0,'2023-07-15',80,'NET02',0.96,'Stable humidity',2023-08-20,2023-08-20,1);
INSERT INTO Stadium_Sensor_Readings (stadium_id,sensor_type,reading_timestamp,value,unit,status,latitude,longitude,battery_pct,firmware_version,calibration_date,maintenance_required,alert_threshold_high,alert_threshold_low,last_service_date,signal_strength,network_id,data_quality_score,notes,created_at,updated_at,is_active) VALUES (3,'CO2','2023-08-20T14:10:00',420.0,'ppm','Alert',51.5074,-0.1278,70,'v1.5','2023-03-05',1,800.0,400.0,'2023-06-30',75,'NET03',0.89,'High CO2 level',2023-08-20,2023-08-20,1);

-- Youth academy technical skills assessment
CREATE TABLE Youth_Academy_Tech_Skills_Assessment (
    assessment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    assessment_date TEXT,
    evaluator_id INTEGER,
    skill_category TEXT,
    technical_score INTEGER,
    tactical_score INTEGER,
    physical_score INTEGER,
    mental_score INTEGER,
    dribbling_score INTEGER,
    passing_score INTEGER,
    shooting_score INTEGER,
    defending_score INTEGER,
    heading_score INTEGER,
    crossing_score INTEGER,
    set_piece_score INTEGER,
    speed_score INTEGER,
    agility_score INTEGER,
    stamina_score INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    is_active INTEGER
);
INSERT INTO Youth_Academy_Tech_Skills_Assessment (player_id,assessment_date,evaluator_id,skill_category,technical_score,tactical_score,physical_score,mental_score,dribbling_score,passing_score,shooting_score,defending_score,heading_score,crossing_score,set_piece_score,speed_score,agility_score,stamina_score,notes,created_at,updated_at,is_active) VALUES (401,'2023-07-15',501,'Midfielder',78,70,65,80,75,72,68,60,55,58,62,74,77,70,'Promising playmaker',2023-07-15,2023-07-15,1);
INSERT INTO Youth_Academy_Tech_Skills_Assessment (player_id,assessment_date,evaluator_id,skill_category,technical_score,tactical_score,physical_score,mental_score,dribbling_score,passing_score,shooting_score,defending_score,heading_score,crossing_score,set_piece_score,speed_score,agility_score,stamina_score,notes,created_at,updated_at,is_active) VALUES (402,'2023-07-20',502,'Defender',70,75,80,78,60,65,55,85,78,50,45,68,70,78,'Strong defensive instincts',2023-07-20,2023-07-20,1);
INSERT INTO Youth_Academy_Tech_Skills_Assessment (player_id,assessment_date,evaluator_id,skill_category,technical_score,tactical_score,physical_score,mental_score,dribbling_score,passing_score,shooting_score,defending_score,heading_score,crossing_score,set_piece_score,speed_score,agility_score,stamina_score,notes,created_at,updated_at,is_active) VALUES (403,'2023-07-22',503,'Forward',85,68,72,82,80,70,88,55,60,70,78,82,85,80,'High goal‑scoring potential',2023-07-22,2023-07-22,1);

-- Broadcast advertisement slot pricing
CREATE TABLE Broadcast_Ad_Slot_Pricing (
    slot_id INTEGER PRIMARY KEY AUTOINCREMENT,
    network_id INTEGER,
    match_id INTEGER,
    ad_type TEXT,
    duration_sec INTEGER,
    price_usd REAL,
    audience_rating REAL,
    start_time TEXT,
    end_time TEXT,
    impressions INTEGER,
    clicks INTEGER,
    ctr REAL,
    cpm REAL,
    placement TEXT,
    target_demographic TEXT,
    day_of_week TEXT,
    prime_time_flag INTEGER,
    viewability_percentage REAL,
    ad_agency TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    is_active INTEGER
);
INSERT INTO Broadcast_Ad_Slot_Pricing (network_id,match_id,ad_type,duration_sec,price_usd,audience_rating,start_time,end_time,impressions,clicks,ctr,cpm,placement,target_demographic,day_of_week,prime_time_flag,viewability_percentage,ad_agency,notes,created_at,updated_at,is_active) VALUES (301,201,'PreRoll',30,15000.0,8.9,'2023-09-01T18:55:00','2023-09-01T18:55:30',2000000,5000,0.25,7.5,'TopBanner','Adults18-34','Friday',1,92.5,'AdAgencyX','High visibility slot',2023-08-15,2023-08-15,1);
INSERT INTO Broadcast_Ad_Slot_Pricing (network_id,match_id,ad_type,duration_sec,price_usd,audience_rating,start_time,end_time,impressions,clicks,ctr,cpm,placement,target_demographic,day_of_week,prime_time_flag,viewability_percentage,ad_agency,notes,created_at,updated_at,is_active) VALUES (302,202,'MidRoll',45,20000.0,9.2,'2023-09-02T19:30:00','2023-09-02T19:30:45',2500000,7000,0.28,8.0,'SidePanel','Adults25-44','Saturday',1,95.0,'AdAgencyY','Mid‑game exposure',2023-08-16,2023-08-16,1);
INSERT INTO Broadcast_Ad_Slot_Pricing (network_id,match_id,ad_type,duration_sec,price_usd,audience_rating,start_time,end_time,impressions,clicks,ctr,cpm,placement,target_demographic,day_of_week,prime_time_flag,viewability_percentage,ad_agency,notes,created_at,updated_at,is_active) VALUES (303,203,'PostRoll',60,25000.0,9.5,'2023-09-03T21:00:00','2023-09-03T21:01:00',1800000,4000,0.22,9.0,'BottomBanner','Adults35-54','Sunday',0,88.0,'AdAgencyZ','End‑game slot',2023-08-17,2023-08-17,1);

-- Match operational risk profiles
CREATE TABLE Match_Operational_Risk_Profiles (
    risk_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    risk_type TEXT,
    severity INTEGER,
    probability INTEGER,
    mitigation_plan TEXT,
    responsible_party TEXT,
    review_date TEXT,
    status TEXT,
    contingency_budget_usd REAL,
    insurance_coverage_usd REAL,
    last_incident_report TEXT,
    stakeholder_impact TEXT,
    communication_channel TEXT,
    escalation_path TEXT,
    regulatory_requirements TEXT,
    audit_status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    is_active INTEGER
);
INSERT INTO Match_Operational_Risk_Profiles (match_id,risk_type,severity,probability,mitigation_plan,responsible_party,review_date,status,contingency_budget_usd,insurance_coverage_usd,last_incident_report,stakeholder_impact,communication_channel,escalation_path,regulatory_requirements,audit_status,notes,created_at,updated_at,is_active) VALUES (301,'WeatherDelay',4,3,'Deploy heated pitch and backup schedule','OperationsMgr','2023-08-01','Open',50000,200000,'None','Fans,Teams','Email','OpsLead','LocalSafety','Pending','Monitor forecasts',2023-07-20,2023-07-20,1);
INSERT INTO Match_Operational_Risk_Profiles (match_id,risk_type,severity,probability,mitigation_plan,responsible_party,review_date,status,contingency_budget_usd,insurance_coverage_usd,last_incident_report,stakeholder_impact,communication_channel,escalation_path,regulatory_requirements,audit_status,notes,created_at,updated_at,is_active) VALUES (302,'SecurityBreach',5,2,'Increase security personnel and CCTV','SecurityChief','2023-08-05','Open',100000,500000,'Minor','Fans,Staff','Radio','SecurityMgr','NationalSecurity','Approved','Review protocols',2023-07-22,2023-07-22,1);
INSERT INTO Match_Operational_Risk_Profiles (match_id,risk_type,severity,probability,mitigation_plan,responsible_party,review_date,status,contingency_budget_usd,insurance_coverage_usd,last_incident_report,stakeholder_impact,communication_channel,escalation_path,regulatory_requirements,audit_status,notes,created_at,updated_at,is_active) VALUES (303,'PowerFailure',3,4,'Backup generators on standby','FacilitiesMgr','2023-08-10','Open',75000,300000,'None','Fans,Broadcast','SMS','FacilitiesLead','ElectricalCode','Pending','Test generators',2023-07-25,2023-07-25,1);

-- Club volunteer role definitions
CREATE TABLE Club_Volunteer_Roles (
    volunteer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    role_name TEXT,
    start_date TEXT,
    end_date TEXT,
    hours_per_week INTEGER,
    contact_email TEXT,
    background_check_status TEXT,
    training_completed INTEGER,
    shift_pattern TEXT,
    assigned_area TEXT,
    supervisor_name TEXT,
    supervisor_contact TEXT,
    emergency_contact TEXT,
    uniform_required INTEGER,
    certification_needed TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    is_active INTEGER
);
INSERT INTO Club_Volunteer_Roles (club_id,role_name,start_date,end_date,hours_per_week,contact_email,background_check_status,training_completed,shift_pattern,assigned_area,supervisor_name,supervisor_contact,emergency_contact,uniform_required,certification_needed,notes,created_at,updated_at,is_active) VALUES (1,'StadiumGuide','2023-09-01','2024-05-31',5,'vol1@example.com','Clear',1,'Weekend','GateA','JohnDoe','5551234','5555678',1,'FirstAid','Assist fans at entry',2023-08-20,2023-08-20,1);
INSERT INTO Club_Volunteer_Roles (club_id,role_name,start_date,end_date,hours_per_week,contact_email,background_check_status,training_completed,shift_pattern,assigned_area,supervisor_name,supervisor_contact,emergency_contact,uniform_required,certification_needed,notes,created_at,updated_at,is_active) VALUES (2,'MerchandiseHelper','2023-09-01','2024-05-31',4,'vol2@example.com','Clear',1,'Evening','ShopFloor','JaneSmith','5552345','5556789',1,'SalesTraining','Manage merch counters',2023-08-21,2023-08-21,1);
INSERT INTO Club_Volunteer_Roles (club_id,role_name,start_date,end_date,hours_per_week,contact_email,background_check_status,training_completed,shift_pattern,assigned_area,supervisor_name,supervisor_contact,emergency_contact,uniform_required,certification_needed,notes,created_at,updated_at,is_active) VALUES (3,'FoodServiceAssist','2023-09-01','2024-05-31',3,'vol3@example.com','Pending',0,'Morning','ConcessionStand','MikeBrown','5553456','5557890',1,'FoodSafety','Help with concessions',2023-08-22,2023-08-22,1);

-- Club community event schedules
CREATE TABLE Club_Community_Event_Schedules (
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    event_name TEXT,
    event_date TEXT,
    start_time TEXT,
    end_time TEXT,
    location TEXT,
    target_audience TEXT,
    expected_attendance INTEGER,
    sponsor_id INTEGER,
    budget_usd REAL,
    volunteer_needed INTEGER,
    registration_required INTEGER,
    health_and_safety_plan TEXT,
    media_coverage_plan TEXT,
    post_event_survey_link TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    is_active INTEGER
);
INSERT INTO Club_Community_Event_Schedules (club_id,event_name,event_date,start_time,end_time,location,target_audience,expected_attendance,sponsor_id,budget_usd,volunteer_needed,registration_required,health_and_safety_plan,media_coverage_plan,post_event_survey_link,notes,created_at,updated_at,is_active) VALUES (1,'Kids Football Clinic','2023-09-15','10:00','14:00','ClubAcademy','Children',150,401,12000,10,1,'StandardPlan','LocalTV','http://survey.com/kit1','Free clinic for local schools',2023-08-01,2023-08-01,1);
INSERT INTO Club_Community_Event_Schedules (club_id,event_name,event_date,start_time,end_time,location,target_audience,expected_attendance,sponsor_id,budget_usd,volunteer_needed,registration_required,health_and_safety_plan,media_coverage_plan,post_event_survey_link,notes,created_at,updated_at,is_active) VALUES (2,'Charity Run','2023-10-05','08:00','12:00','CityPark','Adults',300,402,20000,15,1,'ExtendedPlan','RadioPartner','http://survey.com/crun','Funds for youth programs',2023-08-05,2023-08-05,1);
INSERT INTO Club_Community_Event_Schedules (club_id,event_name,event_date,start_time,end_time,location,target_audience,expected_attendance,sponsor_id,budget_usd,volunteer_needed,registration_required,health_and_safety_plan,media_coverage_plan,post_event_survey_link,notes,created_at,updated_at,is_active) VALUES (3,'Senior Fan Meet','2023-11-20','13:00','16:00','StadiumClubhouse','Seniors',80,403,8000,5,0,'SeniorPlan','ClubNewsletter','http://survey.com/sfm','Appreciation day for long‑time fans',2023-08-10,2023-08-10,1);

-- Club digital asset registry
CREATE TABLE Club_Digital_Asset_Registry (
    asset_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    asset_name TEXT,
    asset_type TEXT,
    file_path TEXT,
    file_size_mb REAL,
    format TEXT,
    created_by TEXT,
    created_at TEXT,
    last_modified_at TEXT,
    usage_rights TEXT,
    expiration_date TEXT,
    access_level TEXT,
    version_number INTEGER,
    checksum TEXT,
    tags TEXT,
    description TEXT,
    approved_by TEXT,
    approval_date TEXT,
    is_active INTEGER,
    notes TEXT,
    archived INTEGER,
    archived_date TEXT
);
INSERT INTO Club_Digital_Asset_Registry (club_id,asset_name,asset_type,file_path,file_size_mb,format,created_by,created_at,last_modified_at,usage_rights,expiration_date,access_level,version_number,checksum,tags,description,approved_by,approval_date,is_active,notes,archived,archived_date) VALUES (1,'TeamLogo','Image','/assets/logo.png',1.2,'png','DesignerA','2023-07-01','2023-07-01','Internal','2025-12-31','Public',1,'AB12CD34','branding,logo','Primary club logo','MgrA','2023-07-02',1,'',0,NULL);
INSERT INTO Club_Digital_Asset_Registry (club_id,asset_name,asset_type,file_path,file_size_mb,format,created_by,created_at,last_modified_at,usage_rights,expiration_date,access_level,version_number,checksum,tags,description,approved_by,approval_date,is_active,notes,archived,archived_date) VALUES (1,'SeasonPromoVideo','Video','/assets/promo.mp4',250.0,'mp4','ProducerB','2023-08-10','2023-08-10','External','2024-08-09','Restricted',1,'EF56GH78','promo,video','Video for season launch','MgrB','2023-08-11',1,'',0,NULL);
INSERT INTO Club_Digital_Asset_Registry (club_id,asset_name,asset_type,file_path,file_size_mb,format,created_by,created_at,last_modified_at,usage_rights,expiration_date,access_level,version_number,checksum,tags,description,approved_by,approval_date,is_active,notes,archived,archived_date) VALUES (2,'FanBanner2023','Image','/assets/banner2023.jpg',2.5,'jpg','DesignerC','2023-06-15','2023-06-16','Internal','2024-06-14','Public',1,'IJ90KL12','banner,fan','Banner for fan day','MgrC','2023-06-16',1,'',0,NULL);