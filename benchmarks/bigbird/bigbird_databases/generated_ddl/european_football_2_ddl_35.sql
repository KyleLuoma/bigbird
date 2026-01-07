-- Broadcast device inventory details
CREATE TABLE Broadcast_Device_Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    device_serial TEXT,
    device_type TEXT,
    manufacturer TEXT,
    purchase_date TEXT,
    warranty_expiry TEXT,
    firmware_version TEXT,
    connection_type TEXT,
    location TEXT,
    status TEXT,
    last_maintenance_date TEXT,
    maintenance_interval_days INTEGER,
    depreciation_years INTEGER,
    cost_usd REAL,
    assigned_team_id INTEGER,
    assigned_match_id INTEGER,
    notes TEXT,
    calibration_date TEXT,
    calibration_due TEXT,
    is_active INTEGER
);

INSERT INTO Broadcast_Device_Inventory (device_serial, device_type, manufacturer, purchase_date, warranty_expiry, firmware_version, connection_type, location, status, last_maintenance_date, maintenance_interval_days, depreciation_years, cost_usd, assigned_team_id, assigned_match_id, notes, calibration_date, calibration_due, is_active) VALUES ('BD001','Encoder','TechCo','2022-03-10','2025-03-10','v1.4','HDMI','Studio A','Operational','2023-12-01',180,5,12000.00,12,345,NULL,'2023-11-15','2024-11-15',1);
INSERT INTO Broadcast_Device_Inventory (device_serial, device_type, manufacturer, purchase_date, warranty_expiry, firmware_version, connection_type, location, status, last_maintenance_date, maintenance_interval_days, depreciation_years, cost_usd, assigned_team_id, assigned_match_id, notes, calibration_date, calibration_due, is_active) VALUES ('BD002','Camera','VisionInc','2021-07-22','2024-07-22','v2.0','SDI','Stadium North','InUse','2023-10-10',365,4,8500.00,7,678,'Mounted on goal line','2023-09-30','2024-09-30',1);
INSERT INTO Broadcast_Device_Inventory (device_serial, device_type, manufacturer, purchase_date, warranty_expiry, firmware_version, connection_type, location, status, last_maintenance_date, maintenance_interval_days, depreciation_years, cost_usd, assigned_team_id, assigned_match_id, notes, calibration_date, calibration_due, is_active) VALUES ('BD003','Mixer','AudioPro','2020-01-15','2023-01-15','v3.2','Ethernet','Broadcast Booth','Operational','2023-08-20',730,6,15000.00,15,901,NULL,'2023-07-01','2024-07-01',0);

-- Stadium cleaning schedules
CREATE TABLE Stadium_Cleaning_Schedules (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    cleaning_area TEXT,
    schedule_day TEXT,
    start_time TEXT,
    end_time TEXT,
    cleaning_method TEXT,
    supervisor_name TEXT,
    team_lead TEXT,
    equipment_used TEXT,
    frequency_per_week INTEGER,
    last_cleaned_date TEXT,
    next_scheduled_date TEXT,
    is_completed INTEGER,
    remarks TEXT,
    cleaning_cost_usd REAL,
    waste_generated_kg REAL,
    water_used_liters REAL,
    cleaning_product TEXT,
    safety_rating INTEGER,
    notes TEXT
);

INSERT INTO Stadium_Cleaning_Schedules (stadium_id, cleaning_area, schedule_day, start_time, end_time, cleaning_method, supervisor_name, team_lead, equipment_used, frequency_per_week, last_cleaned_date, next_scheduled_date, is_completed, remarks, cleaning_cost_usd, waste_generated_kg, water_used_liters, cleaning_product, safety_rating, notes) VALUES (101,'Seating Sections','Monday','08:00','10:00','Vacuum','John Doe','Alice Smith','IndustrialVac',2,'2023-12-04','2023-12-11',1,'All good',400.00,25.5,150.0,'EcoClean',9,'');
INSERT INTO Stadium_Cleaning_Schedules (stadium_id, cleaning_area, schedule_day, start_time, end_time, cleaning_method, supervisor_name, team_lead, equipment_used, frequency_per_week, last_cleaned_date, next_scheduled_date, is_completed, remarks, cleaning_cost_usd, waste_generated_kg, water_used_liters, cleaning_product, safety_rating, notes) VALUES (101,'Restrooms','Wednesday','09:00','11:30','Steam','Maria Lee','Bob Jones','SteamCleaner',3,'2023-12-06','2023-12-13',0,'Pending night shift',250.00,15.2,200.0,'DisinfectX',8,'');
INSERT INTO Stadium_Cleaning_Schedules (stadium_id, cleaning_area, schedule_day, start_time, end_time, cleaning_method, supervisor_name, team_lead, equipment_used, frequency_per_week, last_cleaned_date, next_scheduled_date, is_completed, remarks, cleaning_cost_usd, waste_generated_kg, water_used_liters, cleaning_product, safety_rating, notes) VALUES (102,'Concourse','Friday','07:30','09:30','Mop','Liam Patel','Sara Gomez','FloorMop',1,'2023-12-01','2023-12-08',1,'Inspection passed',180.00,10.0,80.0,'CleanPro',10,'');

-- Club digital marketing calendar
CREATE TABLE Club_Digital_Marketing_Calendar (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    campaign_name TEXT,
    platform TEXT,
    start_date TEXT,
    end_date TEXT,
    budget_usd REAL,
    target_audience TEXT,
    creative_type TEXT,
    ad_format TEXT,
    impressions_goal INTEGER,
    clicks_goal INTEGER,
    conversions_goal INTEGER,
    cpc_usd REAL,
    cpm_usd REAL,
    ctr_percent REAL,
    status TEXT,
    manager_name TEXT,
    approval_date TEXT,
    notes TEXT,
    success_metric TEXT
);

INSERT INTO Club_Digital_Marketing_Calendar (club_id, campaign_name, platform, start_date, end_date, budget_usd, target_audience, creative_type, ad_format, impressions_goal, clicks_goal, conversions_goal, cpc_usd, cpm_usd, ctr_percent, status, manager_name, approval_date, notes, success_metric) VALUES (1,'Summer Ticket Push','Facebook','2024-05-01','2024-05-31',50000.00,'Adults 25-45','Video','InStream',2000000,15000,3000,2.5,12.0,0.75,'Active','Emma Brown','2024-04-20','', 'TicketSalesIncrease');
INSERT INTO Club_Digital_Marketing_Calendar (club_id, campaign_name, platform, start_date, end_date, budget_usd, target_audience, creative_type, ad_format, impressions_goal, clicks_goal, conversions_goal, cpc_usd, cpm_usd, ctr_percent, status, manager_name, approval_date, notes, success_metric) VALUES (2,'New Kit Launch','Instagram','2024-06-10','2024-06-20',30000.00,'Fans 15-30','Image','Story',1500000,12000,2500,2.0,10.5,0.80,'Planned','Carlos Ruiz','2024-05-30','', 'EngagementRate');
INSERT INTO Club_Digital_Marketing_Calendar (club_id, campaign_name, platform, start_date, end_date, budget_usd, target_audience, creative_type, ad_format, impressions_goal, clicks_goal, conversions_goal, cpc_usd, cpm_usd, ctr_percent, status, manager_name, approval_date, notes, success_metric) VALUES (3,'Community Outreach','Twitter','2024-07-01','2024-07-15',15000.00,'Local Residents','Text','Tweet',800000,5000,800,1.5,8.0,0.62,'Active','Nina Patel','2024-06-20','', 'CommunitySentiment');

-- Player fitness test results
CREATE TABLE Player_Fitness_Test_Results (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    test_date TEXT,
    test_type TEXT,
    result_value REAL,
    result_unit TEXT,
    percentile_rank REAL,
    evaluator_name TEXT,
    location TEXT,
    equipment_used TEXT,
    notes TEXT,
    heart_rate_bpm INTEGER,
    vo2_max REAL,
    lactate_threshold REAL,
    sprint_time_30m REAL,
    vertical_jump_cm REAL,
    agility_score REAL,
    endurance_score REAL,
    flexibility_cm REAL,
    body_fat_percent REAL,
    muscle_mass_kg REAL
);

INSERT INTO Player_Fitness_Test_Results (player_api_id, test_date, test_type, result_value, result_unit, percentile_rank, evaluator_name, location, equipment_used, notes, heart_rate_bpm, vo2_max, lactate_threshold, sprint_time_30m, vertical_jump_cm, agility_score, endurance_score, flexibility_cm, body_fat_percent, muscle_mass_kg) VALUES (10123,'2024-01-15','YoYoIR','15.2','Level',92.5,'Dr Smith','Training Center','YoYoBoard','Good recovery',58,60.5,4.2,3.68,52.0,88.0,85.0,30.5,12.3,28.0);
INSERT INTO Player_Fitness_Test_Results (player_api_id, test_date, test_type, result_value, result_unit, percentile_rank, evaluator_name, location, equipment_used, notes, heart_rate_bpm, vo2_max, lactate_threshold, sprint_time_30m, vertical_jump_cm, agility_score, endurance_score, flexibility_cm, body_fat_percent, muscle_mass_kg) VALUES (10124,'2024-01-20','Wingate','450','Watts',78.0,'Coach Lee','Gym','CycleErgometer','Needs power increase',62,55.0,4.5,3.85,48.5,80.0,78.0,28.0,13.0,26.5);
INSERT INTO Player_Fitness_Test_Results (player_api_id, test_date, test_type, result_value, result_unit, percentile_rank, evaluator_name, location, equipment_used, notes, heart_rate_bpm, vo2_max, lactate_threshold, sprint_time_30m, vertical_jump_cm, agility_score, endurance_score, flexibility_cm, body_fat_percent, muscle_mass_kg) VALUES (10125,'2024-01-22','Flexibility','30','Cm',85.0,'Physio Kim','Rehab Room','Flexometer','Stable',55,58.0,4.1,3.70,50.0,84.0,82.0,31.0,11.5,27.2);

-- Team travel insurance claims
CREATE TABLE Team_Travel_Insurance_Claims (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    claim_number TEXT,
    incident_date TEXT,
    incident_type TEXT,
    description TEXT,
    claim_amount_usd REAL,
    approved_amount_usd REAL,
    claim_status TEXT,
    adjuster_name TEXT,
    policy_number TEXT,
    insurer_name TEXT,
    deductible_usd REAL,
    claim_submitted_date TEXT,
    claim_processed_date TEXT,
    settlement_date TEXT,
    payout_method TEXT,
    currency TEXT,
    exchange_rate REAL,
    notes TEXT,
    related_match_id INTEGER
);

INSERT INTO Team_Travel_Insurance_Claims (team_id, claim_number, incident_date, incident_type, description, claim_amount_usd, approved_amount_usd, claim_status, adjuster_name, policy_number, insurer_name, deductible_usd, claim_submitted_date, claim_processed_date, settlement_date, payout_method, currency, exchange_rate, notes, related_match_id) VALUES (12,'TC2024001','2024-02-10','FlightDelay','Delay over 8 hours causing accommodation costs',4000.00,3500.00,'Approved','Laura Bennett','POL12345','GlobalInsure',500.00,'2024-02-12','2024-02-20','2024-02-25','BankTransfer','USD',1.0,'',3401);
INSERT INTO Team_Travel_Insurance_Claims (team_id, claim_number, incident_date, incident_type, description, claim_amount_usd, approved_amount_usd, claim_status, adjuster_name, policy_number, insurer_name, deductible_usd, claim_submitted_date, claim_processed_date, settlement_date, payout_method, currency, exchange_rate, notes, related_match_id) VALUES (15,'TC2024002','2024-03-05','Medical','Player injury in transit, medical evacuation',12000.00,10000.00,'Pending','Mark Daniels','POL67890','SecureCover',1000.00,'2024-03-06','2024-03-15',NULL,'Check','USD',1.0,'Awaiting documentation',0);
INSERT INTO Team_Travel_Insurance_Claims (team_id, claim_number, incident_date, incident_type, description, claim_amount_usd, approved_amount_usd, claim_status, adjuster_name, policy_number, insurer_name, deductible_usd, claim_submitted_date, claim_processed_date, settlement_date, payout_method, currency, exchange_rate, notes, related_match_id) VALUES (9,'TC2024003','2024-04-01','LostLuggage','Luggage loss leading to equipment replacement',2500.00,2500.00,'Approved','Sophie Wu','POL54321','TravelGuard',250.00,'2024-04-02','2024-04-10','2024-04-12','Wire','USD',1.0,'Replaced kit items',4567);

-- League seasonal schedule overrides
CREATE TABLE League_Seasonal_Schedule_Overrides (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    original_start_date TEXT,
    original_end_date TEXT,
    override_start_date TEXT,
    override_end_date TEXT,
    reason_code TEXT,
    description TEXT,
    approved_by TEXT,
    approval_date TEXT,
    impact_score REAL,
    broadcast_change_flag INTEGER,
    ticketing_change_flag INTEGER,
    sponsor_notice_flag INTEGER,
    fan_communication_sent INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    is_active INTEGER,
    version_number INTEGER
);

INSERT INTO League_Seasonal_Schedule_Overrides (league_id, season, original_start_date, original_end_date, override_start_date, override_end_date, reason_code, description, approved_by, approval_date, impact_score, broadcast_change_flag, ticketing_change_flag, sponsor_notice_flag, fan_communication_sent, notes, created_at, updated_at, is_active, version_number) VALUES (3,'2024/25','2024-08-01','2025-05-20','2024-08-15','2025-06-01','WX01','Weather related postponements in early season','ChiefExec','2024-07-20',7.8,1,1,1,1,'', '2024-07-20','2024-07-20',1,1);
INSERT INTO League_Seasonal_Schedule_Overrides (league_id, season, original_start_date, original_end_date, override_start_date, override_end_date, reason_code, description, approved_by, approval_date, impact_score, broadcast_change_flag, ticketing_change_flag, sponsor_notice_flag, fan_communication_sent, notes, created_at, updated_at, is_active, version_number) VALUES (5,'2024/25','2024-09-01','2025-06-30','2024-09-10','2025-07-10','ST02','Stadium renovation causing delayed kickoff','OperationsHead','2024-08-05',6.5,1,0,1,1,'', '2024-08-05','2024-08-05',1,2);
INSERT INTO League_Seasonal_Schedule_Overrides (league_id, season, original_start_date, original_end_date, override_start_date, override_end_date, reason_code, description, approved_by, approval_date, impact_score, broadcast_change_flag, ticketing_change_flag, sponsor_notice_flag, fan_communication_sent, notes, created_at, updated_at, is_active, version_number) VALUES (7,'2024/25','2024-07-15','2025-04-30','2024-07-20','2025-05-05','TR03','Travel restrictions for certain regions','ComplianceOfficer','2024-07-01',8.2,0,1,0,1,'', '2024-07-01','2024-07-01',1,1);

-- Match referee communications
CREATE TABLE Match_Referee_Communications (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    referee_id INTEGER,
    communication_type TEXT,
    timestamp TEXT,
    channel TEXT,
    message_text TEXT,
    severity_level INTEGER,
    action_taken TEXT,
    follow_up_required INTEGER,
    follow_up_due TEXT,
    documented_by TEXT,
    related_incident_id INTEGER,
    external_agency_notified INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    is_private INTEGER,
    attachment_flag INTEGER,
    response_time_seconds INTEGER
);

INSERT INTO Match_Referee_Communications (match_id, referee_id, communication_type, timestamp, channel, message_text, severity_level, action_taken, follow_up_required, follow_up_due, documented_by, related_incident_id, external_agency_notified, notes, created_at, updated_at, is_private, attachment_flag, response_time_seconds) VALUES (5001,201,'Chat','2024-03-10 14:05','Radio','Player X appears to be off the ball, monitor',2,'Warning issued',0,NULL,'Assistant1',NULL,0,'', '2024-03-10','2024-03-10',0,0,30);
INSERT INTO Match_Referee_Communications (match_id, referee_id, communication_type, timestamp, channel, message_text, severity_level, action_taken, follow_up_required, follow_up_due, documented_by, related_incident_id, external_agency_notified, notes, created_at, updated_at, is_private, attachment_flag, response_time_seconds) VALUES (5002,202,'Video','2024-04-12 16:20','VAR','Potential handball in penalty area',4,'Review initiated',1,'2024-04-12 16:30','VAR_Team',1001,1,'', '2024-04-12','2024-04-12',1,1,45);
INSERT INTO Match_Referee_Communications (match_id, referee_id, communication_type, timestamp, channel, message_text, severity_level, action_taken, follow_up_required, follow_up_due, documented_by, related_incident_id, external_agency_notified, notes, created_at, updated_at, is_private, attachment_flag, response_time_seconds) VALUES (5003,203,'Phone','2024-05-05 18:10','Mobile','Fan disturbance near technical area',3,'Security alerted',0,NULL,'RefereeChief',NULL,0,'', '2024-05-05','2024-05-05',0,0,20);

-- Sponsor brand asset tracking
CREATE TABLE Sponsor_Brand_Asset_Tracking (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    asset_type TEXT,
    asset_id TEXT,
    asset_description TEXT,
    acquisition_date TEXT,
    value_usd REAL,
    location TEXT,
    custodian_name TEXT,
    usage_status TEXT,
    last_audit_date TEXT,
    next_audit_due TEXT,
    maintenance_required INTEGER,
    maintenance_schedule TEXT,
    depreciation_years INTEGER,
    brand_visibility_score REAL,
    digital_asset_flag INTEGER,
    physical_asset_flag INTEGER,
    notes TEXT,
    created_at TEXT
);

INSERT INTO Sponsor_Brand_Asset_Tracking (sponsor_id, asset_type, asset_id, asset_description, acquisition_date, value_usd, location, custodian_name, usage_status, last_audit_date, next_audit_due, maintenance_required, maintenance_schedule, depreciation_years, brand_visibility_score, digital_asset_flag, physical_asset_flag, notes, created_at) VALUES (10,'Banner','BN001','Main stadium banner 2023','2023-02-01',15000.00,'Stadium North','John Miller','InUse','2024-01-10','2025-01-10',0,'Annual',5,85.5,0,1,'', '2024-01-10');
INSERT INTO Sponsor_Brand_Asset_Tracking (sponsor_id, asset_type, asset_id, asset_description, acquisition_date, value_usd, location, custodian_name, usage_status, last_audit_date, next_audit_due, maintenance_required, maintenance_schedule, depreciation_years, brand_visibility_score, digital_asset_flag, physical_asset_flag, notes, created_at) VALUES (12,'DigitalAd','DA2024A','Social media story ad','2024-03-15',8000.00,'Online','Sofia Garcia','Active','2024-03-20','2025-03-20',0,'Quarterly',3,92.0,1,0,'', '2024-03-20');
INSERT INTO Sponsor_Brand_Asset_Tracking (sponsor_id, asset_type, asset_id, asset_description, acquisition_date, value_usd, location, custodian_name, usage_status, last_audit_date, next_audit_due, maintenance_required, maintenance_schedule, depreciation_years, brand_visibility_score, digital_asset_flag, physical_asset_flag, notes, created_at) VALUES (15,'Merchandise','MC101','Limited edition jersey','2024-01-05',25000.00,'Club Store','Emily Chen','Stocked','2024-02-01','2025-02-01',1,'BiAnnual',4,78.0,0,1,'', '2024-02-01');

-- Youth team performance analytics
CREATE TABLE Youth_Team_Performance_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    youth_team_id INTEGER,
    season TEXT,
    match_id INTEGER,
    possession_percent REAL,
    pass_accuracy_percent REAL,
    shots_on_target INTEGER,
    shots_off_target INTEGER,
    fouls_committed INTEGER,
    yellow_cards INTEGER,
    red_cards INTEGER,
    distance_covered_km REAL,
    avg_speed_kmh REAL,
    player_of_match_id INTEGER,
    coaching_rating INTEGER,
    tactical_score INTEGER,
    physical_score INTEGER,
    mental_score INTEGER,
    overall_rating INTEGER,
    notes TEXT,
    analysis_date TEXT
);

INSERT INTO Youth_Team_Performance_Analytics (youth_team_id, season, match_id, possession_percent, pass_accuracy_percent, shots_on_target, shots_off_target, fouls_committed, yellow_cards, red_cards, distance_covered_km, avg_speed_kmh, player_of_match_id, coaching_rating, tactical_score, physical_score, mental_score, overall_rating, notes, analysis_date) VALUES (301,'2023/24',8001,58.5,84.2,7,3,12,1,0,105.4,7.2,10231,8,85,78,80,83,'Strong defensive shape', '2024-02-18');
INSERT INTO Youth_Team_Performance_Analytics (youth_team_id, season, match_id, possession_percent, pass_accuracy_percent, shots_on_target, shots_off_target, fouls_committed, yellow_cards, red_cards, distance_covered_km, avg_speed_kmh, player_of_match_id, coaching_rating, tactical_score, physical_score, mental_score, overall_rating, notes, analysis_date) VALUES (302,'2023/24',8002,62.0,88.5,10,4,9,0,0,110.2,7.5,10456,9,90,82,85,88,'Excellent attacking flow', '2024-02-20');
INSERT INTO Youth_Team_Performance_Analytics (youth_team_id, season, match_id, possession_percent, pass_accuracy_percent, shots_on_target, shots_off_target, fouls_committed, yellow_cards, red_cards, distance_covered_km, avg_speed_kmh, player_of_match_id, coaching_rating, tactical_score, physical_score, mental_score, overall_rating, notes, analysis_date) VALUES (303,'2023/24',8003,55.3,80.1,5,5,15,2,1,98.7,6.9,10378,7,78,75,72,76,'Need to improve discipline', '2024-02-22');

-- International tournament participation
CREATE TABLE International_Tournament_Participation (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_name TEXT,
    year INTEGER,
    host_country TEXT,
    participating_team_id INTEGER,
    qualification_method TEXT,
    group_stage TEXT,
    final_position INTEGER,
    matches_played INTEGER,
    wins INTEGER,
    draws INTEGER,
    losses INTEGER,
    goals_for INTEGER,
    goals_against INTEGER,
    goal_difference INTEGER,
    points INTEGER,
    coach_name TEXT,
    squad_size INTEGER,
    average_age REAL,
    notes TEXT,
    entry_date TEXT
);

INSERT INTO International_Tournament_Participation (tournament_name, year, host_country, participating_team_id, qualification_method, group_stage, final_position, matches_played, wins, draws, losses, goals_for, goals_against, goal_difference, points, coach_name, squad_size, average_age, notes, entry_date) VALUES ('Euro Cup','2024','Germany',21,'Qualifier','Group B','Quarterfinal',5,3,1,1,8,5,3,10,'Hans Meyer',23,27.4,'Strong defensive record','2024-06-01');
INSERT INTO International_Tournament_Participation (tournament_name, year, host_country, participating_team_id, qualification_method, group_stage, final_position, matches_played, wins, draws, losses, goals_for, goals_against, goal_difference, points, coach_name, squad_size, average_age, notes, entry_date) VALUES ('World Cup','2024','Brazil',34,'Host','Group A','Champion',7,5,2,0,15,4,11,17,'Carlos Silva',26,26.8,'Dominant attacking play','2024-11-15');
INSERT INTO International_Tournament_Participation (tournament_name, year, host_country, participating_team_id, qualification_method, group_stage, final_position, matches_played, wins, draws, losses, goals_for, goals_against, goal_difference, points, coach_name, squad_size, average_age, notes, entry_date) VALUES ('Copa America','2023','Argentina',12,'Invite','Group C','SemiFinal',4,2,1,1,6,3,3,7,'Luis Gomez',22,27.1,'Mixed performance','2023-07-10');