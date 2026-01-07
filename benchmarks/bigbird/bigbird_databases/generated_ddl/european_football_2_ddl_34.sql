-- Drone surveillance logs capturing aerial footage of stadiums and surrounding areas
CREATE TABLE Drone_Surveillance_Logs (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    drone_id TEXT,
    flight_date TEXT,
    start_time TEXT,
    end_time TEXT,
    latitude_start REAL,
    longitude_start REAL,
    latitude_end REAL,
    longitude_end REAL,
    altitude_max REAL,
    altitude_min REAL,
    speed_avg REAL,
    battery_start_percent INTEGER,
    battery_end_percent INTEGER,
    video_resolution TEXT,
    video_frame_rate INTEGER,
    weather_condition TEXT,
    visibility_range REAL,
    wind_speed REAL,
    wind_direction TEXT,
    operator_name TEXT,
    notes TEXT
);

INSERT INTO Drone_Surveillance_Logs (drone_id,flight_date,start_time,end_time,latitude_start,longitude_start,latitude_end,longitude_end,altitude_max,altitude_min,speed_avg,battery_start_percent,battery_end_percent,video_resolution,video_frame_rate,weather_condition,visibility_range,wind_speed,wind_direction,operator_name,notes) VALUES ('DRN001','2024-05-12','09:00','09:20',40.7128,-74.0060,40.7150,-74.0100,150.0,30.0,35.2,100,85,'4K',30,'Clear',10.0,5.0,'NW','JohnDoe','Routine pre‑match inspection');
INSERT INTO Drone_Surveillance_Logs (drone_id,flight_date,start_time,end_time,latitude_start,longitude_start,latitude_end,longitude_end,altitude_max,altitude_min,speed_avg,battery_start_percent,battery_end_percent,video_resolution,video_frame_rate,weather_condition,visibility_range,wind_speed,wind_direction,operator_name,notes) VALUES ('DRN002','2024-06-03','14:15','14:45',34.0522,-118.2437,34.0550,-118.2500,200.0,45.0,40.5,100,70,'1080p',60,'PartlyCloudy',8.0,8.0,'SE','JaneSmith','Post‑match structural assessment');
INSERT INTO Drone_Surveillance_Logs (drone_id,flight_date,start_time,end_time,latitude_start,longitude_start,latitude_end,longitude_end,altitude_max,altitude_min,speed_avg,battery_start_percent,battery_end_percent,video_resolution,video_frame_rate,weather_condition,visibility_range,wind_speed,wind_direction,operator_name,notes) VALUES ('DRN003','2024-07-21','07:30','07:55',51.5074,-0.1278,51.5090,-0.1300,180.0,35.0,38.0,100,90,'4K',24,'Fog',4.0,12.0,'N','MikeLee','Early morning pitch condition check');

-- Definitions of AI models used for predictive analytics in matches and player performance
CREATE TABLE AI_Analytics_Models (
    model_id INTEGER PRIMARY KEY AUTOINCREMENT,
    model_name TEXT,
    version TEXT,
    description TEXT,
    algorithm_type TEXT,
    input_features INTEGER,
    output_targets INTEGER,
    training_start_date TEXT,
    training_end_date TEXT,
    dataset_name TEXT,
    accuracy REAL,
    precision REAL,
    recall REAL,
    f1_score REAL,
    hyperparameter_1 TEXT,
    hyperparameter_2 TEXT,
    hyperparameter_3 TEXT,
    compute_resource TEXT,
    training_hours REAL,
    last_updated TEXT,
    deployed_flag INTEGER,
    notes TEXT
);

INSERT INTO AI_Analytics_Models (model_name,version,description,algorithm_type,input_features,output_targets,training_start_date,training_end_date,dataset_name,accuracy,precision,recall,f1_score,hyperparameter_1,hyperparameter_2,hyperparameter_3,compute_resource,training_hours,last_updated,deployed_flag,notes) VALUES ('MatchOutcomePredictor','v1.0','Predicts final score outcomes','GradientBoosting',25,2,'2023-01-01','2023-12-31','MatchSeason2023',0.87,0.85,0.84,0.845,'learning_rate=0.05','max_depth=7','n_estimators=200','GPU_TeslaV100',120.5,'2024-01-15',1,'Initial production model');
INSERT INTO AI_Analytics_Models (model_name,version,description,algorithm_type,input_features,output_targets,training_start_date,training_end_date,dataset_name,accuracy,precision,recall,f1_score,hyperparameter_1,hyperparameter_2,hyperparameter_3,compute_resource,training_hours,last_updated,deployed_flag,notes) VALUES ('PlayerFatigueEstimator','v2.3','Estimates fatigue levels from sensor data','NeuralNetwork',30,1,'2023-06-01','2024-03-31','SensorData2023_2024',0.79,0.78,0.80,0.79,'layers=4','units=128','dropout=0.3','GPU_TeslaP100',98.2,'2024-04-10',1,'Retrained after new sensor rollout');
INSERT INTO AI_Analytics_Models (model_name,version,description,algorithm_type,input_features,output_targets,training_start_date,training_end_date,dataset_name,accuracy,precision,recall,f1_score,hyperparameter_1,hyperparameter_2,hyperparameter_3,compute_resource,training_hours,last_updated,deployed_flag,notes) VALUES ('TicketDemandForecaster','v0.9','Forecasts ticket demand per match','RandomForest',15,1,'2022-09-01','2023-08-31','TicketSales2022_2023',0.82,0.81,0.80,0.805,'trees=150','max_features=auto','min_samples_leaf=2','CPU_i9',45.0,'2023-09-05',0,'Pending validation');

-- Records of virtual reality training sessions used by coaching staff
CREATE TABLE Virtual_Reality_Training_Sessions (
    vr_session_id INTEGER PRIMARY KEY AUTOINCREMENT,
    session_date TEXT,
    session_time TEXT,
    vr_module_name TEXT,
    coach_id INTEGER,
    team_id INTEGER,
    duration_minutes INTEGER,
    headset_model TEXT,
    software_version TEXT,
    scenario_type TEXT,
    difficulty_level TEXT,
    participant_count INTEGER,
    avg_completion_rate REAL,
    max_latency_ms REAL,
    avg_fps REAL,
    heatmap_data TEXT,
    feedback_score REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    archived_flag INTEGER
);

INSERT INTO Virtual_Reality_Training_Sessions (session_date,session_time,vr_module_name,coach_id,team_id,duration_minutes,headset_model,software_version,scenario_type,difficulty_level,participant_count,avg_completion_rate,max_latency_ms,avg_fps,heatmap_data,feedback_score,notes,created_at,updated_at,archived_flag) VALUES ('2024-04-10','10:00','OffensivePatternsVR',12,5,45,'OculusQuest2','v3.2','Attacking', 'Hard',22,0.92,45.0,78.5,'heatmap01','4.5','Positive response from squad','2024-04-10','2024-04-10',0);
INSERT INTO Virtual_Reality_Training_Sessions (session_date,session_time,vr_module_name,coach_id,team_id,duration_minutes,headset_model,software_version,scenario_type,difficulty_level,participant_count,avg_completion_rate,max_latency_ms,avg_fps,heatmap_data,feedback_score,notes,created_at,updated_at,archived_flag) VALUES ('2024-05-15','14:30','DefensiveShapeVR',9,3,60,'HTCVive','v2.8','Defending','Medium',18,0.88,38.0,72.0,'heatmap02','4.2','Coaches requested deeper analysis','2024-05-15','2024-05-15',0);
INSERT INTO Virtual_Reality_Training_Sessions (session_date,session_time,vr_module_name,coach_id,team_id,duration_minutes,headset_model,software_version,scenario_type,difficulty_level,participant_count,avg_completion_rate,max_latency_ms,avg_fps,heatmap_data,feedback_score,notes,created_at,updated_at,archived_flag) VALUES ('2024-06-20','09:15','SetPieceExecutionVR',7,8,30,'ValveIndex','v4.0','SetPieces','Easy',12,0.95,30.0,90.0,'heatmap03','4.8','Excellent engagement','2024-06-20','2024-06-20',0);

-- Economic data for fan‑issued digital tokens linked to merchandise and experiences
CREATE TABLE Fan_Token_Economics (
    token_id INTEGER PRIMARY KEY AUTOINCREMENT,
    token_symbol TEXT,
    launch_date TEXT,
    total_supply INTEGER,
    circulating_supply INTEGER,
    market_cap REAL,
    token_price_usd REAL,
    average_daily_volume INTEGER,
    transaction_fee_percent REAL,
    redeemable_items TEXT,
    partner_brands TEXT,
    locked_percentage REAL,
    governance_votes INTEGER,
    staking_reward_annual_percent REAL,
    burn_rate_monthly_percent REAL,
    last_price_update TEXT,
    price_source TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Fan_Token_Economics (token_symbol,launch_date,total_supply,circulating_supply,market_cap,token_price_usd,average_daily_volume,transaction_fee_percent,redeemable_items,partner_brands,locked_percentage,governance_votes,staking_reward_annual_percent,burn_rate_monthly_percent,last_price_update,price_source,notes,created_at,updated_at) VALUES ('FTK001','2023-09-01',1000000,750000,150000.00,0.20,35000,0.5,'MerchVoucher,VIPAccess','BrandA;BrandB',10.0,120,5.0,1.5,'2024-01-10','InternalAPI','First season token','2024-01-10','2024-01-10');
INSERT INTO Fan_Token_Economics (token_symbol,launch_date,total_supply,circulating_supply,market_cap,token_price_usd,average_daily_volume,transaction_fee_percent,redeemable_items,partner_brands,locked_percentage,governance_votes,staking_reward_annual_percent,burn_rate_monthly_percent,last_price_update,price_source,notes,created_at,updated_at) VALUES ('FTK002','2024-02-15',500000,300000,90000.00,0.30,21000,0.4,'ExperiencePass,DiscountCoupon','BrandC;BrandD',12.0,80,4.5,2.0,'2024-04-01','ExternalFeed','Mid‑year token launch','2024-02-15','2024-04-01');
INSERT INTO Fan_Token_Economics (token_symbol,launch_date,total_supply,circulating_supply,market_cap,token_price_usd,average_daily_volume,transaction_fee_percent,redeemable_items,partner_brands,locked_percentage,governance_votes,staking_reward_annual_percent,burn_rate_monthly_percent,last_price_update,price_source,notes,created_at,updated_at) VALUES ('FTK003','2024-06-01',750000,500000,125000.00,0.25,28000,0.45,'SpecialEditionJersey','BrandE',8.0,60,5.2,1.2,'2024-07-10','InternalAPI','Summer token promotion','2024-06-01','2024-07-10');

-- Configuration and performance logs for stadium ventilation and HVAC systems
CREATE TABLE Stadium_Ventilation_Systems (
    system_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    system_name TEXT,
    manufacturer TEXT,
    installation_date TEXT,
    capacity_cfm INTEGER,
    power_kw REAL,
    algorithm_control TEXT,
    sensor_temperature_id INTEGER,
    sensor_humidity_id INTEGER,
    filter_type TEXT,
    filter_change_interval_days INTEGER,
    last_maintenance_date TEXT,
    next_scheduled_maintenance TEXT,
    avg_airflow_cfm REAL,
    max_noise_db REAL,
    energy_consumption_kwh_day REAL,
    co2_level_ppm REAL,
    temperature_setpoint_c REAL,
    humidity_setpoint_percent REAL,
    operational_status TEXT,
    notes TEXT
);

INSERT INTO Stadium_Ventilation_Systems (stadium_id,system_name,manufacturer,installation_date,capacity_cfm,power_kw,algorithm_control,sensor_temperature_id,sensor_humidity_id,filter_type,filter_change_interval_days,last_maintenance_date,next_scheduled_maintenance,avg_airflow_cfm,max_noise_db,energy_consumption_kwh_day,co2_level_ppm,temperature_setpoint_c,humidity_setpoint_percent,operational_status,notes) VALUES (1,'MainAirLoop','VentPro','2020-03-15',25000,120.5,'PID','TMP001','HMD001','HEPA',180,'2024-03-01','2024-09-01',24500,65,340.0,650,22.0,45,'Active','Routine operation');
INSERT INTO Stadium_Ventilation_Systems (stadium_id,system_name,manufacturer,installation_date,capacity_cfm,power_kw,algorithm_control,sensor_temperature_id,sensor_humidity_id,filter_type,filter_change_interval_days,last_maintenance_date,next_scheduled_maintenance,avg_airflow_cfm,max_noise_db,energy_consumption_kwh_day,co2_level_ppm,temperature_setpoint_c,humidity_setpoint_percent,operational_status,notes) VALUES (2,'UpperTierVent','AirFlowTech','2021-07-20',18000,85.0,'FuzzyLogic','TMP002','HMD002','Carbon','150','2024-02-15','2024-08-15',17500,60,210.0,720,21.5,50,'Active','Upgraded filters in 2023');
INSERT INTO Stadium_Ventilation_Systems (stadium_id,system_name,manufacturer,installation_date,capacity_cfm,power_kw,algorithm_control,sensor_temperature_id,sensor_humidity_id,filter_type,filter_change_interval_days,last_maintenance_date,next_scheduled_maintenance,avg_airflow_cfm,max_noise_db,energy_consumption_kwh_day,co2_level_ppm,temperature_setpoint_c,humidity_setpoint_percent,operational_status,notes) VALUES (3,'SideWingVent','ClimateControlInc','2019-11-05',22000,110.0,'NeuralNet','TMP003','HMD003','HEPA','200','2024-01-20','2024-07-20',21500,68,320.0,690,22.5,48,'Active','Monitoring AI performance');

-- Central repository for club media assets (video, audio, graphics)
CREATE TABLE Club_Media_Content_Repository (
    asset_id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_type TEXT,
    title TEXT,
    description TEXT,
    creator TEXT,
    creation_date TEXT,
    file_path TEXT,
    file_size_bytes INTEGER,
    duration_seconds INTEGER,
    resolution TEXT,
    codec TEXT,
    language TEXT,
    tags TEXT,
    usage_rights TEXT,
    approved_flag INTEGER,
    view_count INTEGER,
    download_count INTEGER,
    last_accessed TEXT,
    last_modified TEXT,
    archival_status TEXT,
    notes TEXT
);

INSERT INTO Club_Media_Content_Repository (asset_type,title,description,creator,creation_date,file_path,file_size_bytes,duration_seconds,resolution,codec,language,tags,usage_rights,approved_flag,view_count,download_count,last_accessed,last_modified,archival_status,notes) VALUES ('Video','SeasonPreview2024','Official season preview video','MediaTeam','2024-01-10','/assets/video/season_preview_2024.mp4',105000000,180,'1920x1080','H.264','EN','preview;season2024','ClubOnly',1,2500,350,'2024-07-01','2024-07-01','Active','High engagement');
INSERT INTO Club_Media_Content_Repository (asset_type,title,description,creator,creation_date,file_path,file_size_bytes,duration_seconds,resolution,codec,language,tags,usage_rights,approved_flag,view_count,download_count,last_accessed,last_modified,archival_status,notes) VALUES ('Audio','GoalCelebrationTheme','Audio theme for goal celebrations','AudioDept','2023-12-05','/assets/audio/goal_theme.wav',7500000,30,'N/A','PCM','EN','goal;theme','Public',1,1800,200,'2024-06-15','2024-06-15','Active','Used in match broadcasts');
INSERT INTO Club_Media_Content_Repository (asset_type,title,description,creator,creation_date,file_path,file_size_bytes,duration_seconds,resolution,codec,language,tags,usage_rights,approved_flag,view_count,download_count,last_accessed,last_modified,archival_status,notes) VALUES ('Graphic','TeamLogo2024','Updated vector logo for 2024 season','DesignStudio','2024-02-01','/assets/graphics/team_logo_2024.svg',250000,'N/A','N/A','SVG','EN','logo;brand','Public',1,3200,500,'2024-07-02','2024-07-02','Active','Used on merchandise');

-- Opportunities for regional sponsors with details on activation slots and audience reach
CREATE TABLE Regional_Sponsorship_Opportunities (
    opportunity_id INTEGER PRIMARY KEY AUTOINCREMENT,
    region_name TEXT,
    sponsor_category TEXT,
    activation_type TEXT,
    start_date TEXT,
    end_date TEXT,
    estimated_audience INTEGER,
    activation_slots INTEGER,
    cost_per_slot REAL,
    total_cost_estimated REAL,
    exclusivity_flag INTEGER,
    target_demographic TEXT,
    media_channel TEXT,
    previous_year_investment REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    status TEXT,
    contact_person TEXT,
    contact_email TEXT
);

INSERT INTO Regional_Sponsorship_Opportunities (region_name,sponsor_category,activation_type,start_date,end_date,estimated_audience,activation_slots,cost_per_slot,total_cost_estimated,exclusivity_flag,target_demographic,media_channel,previous_year_investment,notes,created_at,updated_at,status,contact_person,contact_email) VALUES ('NorthAmerica','Automotive','StadiumBanner','2024-09-01','2025-05-31',1500000,12,25000.00,300000.00,1,'Adults18-45','LED','500000.00','High visibility area','2024-03-10','2024-03-10','Open','John Smith','john.smith@autoexample.com');
INSERT INTO Regional_Sponsorship_Opportunities (region_name,sponsor_category,activation_type,start_date,end_date,estimated_audience,activation_slots,cost_per_slot,total_cost_estimated,exclusivity_flag,target_demographic,media_channel,previous_year_investment,notes,created_at,updated_at,status,contact_person,contact_email) VALUES ('Europe','Finance','DigitalAd','2024-07-15','2024-12-31',1200000,8,40000.00,320000.00,0,'Adults25-55','App','350000.00','Targeted in-app banners','2024-02-20','2024-02-20','Negotiation','Emma Brown','emma.brown@financecorp.eu');
INSERT INTO Regional_Sponsorship_Opportunities (region_name,sponsor_category,activation_type,start_date,end_date,estimated_audience,activation_slots,cost_per_slot,total_cost_estimated,exclusivity_flag,target_demographic,media_channel,previous_year_investment,notes,created_at,updated_at,status,contact_person,contact_email) VALUES ('Asia','Technology','InteractiveKiosk','2024-10-01','2025-03-31',1800000,6,60000.00,360000.00,1,'Adults18-40','Kiosk','450000.00','AI‑driven fan interaction','2024-04-05','2024-04-05','Open','Li Wei','li.wei@techasia.cn');

-- Metadata for match commentary recordings and language versions
CREATE TABLE Match_Commentary_Metadata (
    commentary_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    language_code TEXT,
    commentator_name TEXT,
    commentary_start TEXT,
    commentary_end TEXT,
    file_path TEXT,
    file_size_bytes INTEGER,
    audio_codec TEXT,
    sample_rate_hz INTEGER,
    bit_rate_kbps INTEGER,
    transcription_available INTEGER,
    transcription_path TEXT,
    sentiment_score REAL,
    average_volume_db REAL,
    peak_volume_db REAL,
    background_noise_level_db REAL,
    edit_notes TEXT,
    approved_flag INTEGER,
    upload_timestamp TEXT,
    last_reviewed TEXT,
    notes TEXT
);

INSERT INTO Match_Commentary_Metadata (match_id,language_code,commentator_name,commentary_start,commentary_end,file_path,file_size_bytes,audio_codec,sample_rate_hz,bit_rate_kbps,transcription_available,transcription_path,sentiment_score,average_volume_db,peak_volume_db,background_noise_level_db,edit_notes,approved_flag,upload_timestamp,last_reviewed,notes) VALUES (101,'en','Mike Johnson','2024-05-12 18:00','2024-05-12 20:00','/commentary/en/match_101_en.mp3',85000000,'MP3',44100,128,1,'/transcripts/en/match_101_en.txt',0.75,65.0,85.0,30.0,'Trimmed intro','1','2024-05-13 08:00','2024-05-13 10:00','Primary English broadcast');
INSERT INTO Match_Commentary_Metadata (match_id,language_code,commentator_name,commentary_start,commentary_end,file_path,file_size_bytes,audio_codec,sample_rate_hz,bit_rate_kbps,transcription_available,transcription_path,sentiment_score,average_volume_db,peak_volume_db,background_noise_level_db,edit_notes,approved_flag,upload_timestamp,last_reviewed,notes) VALUES (101,'es','Carlos Ruiz','2024-05-12 18:00','2024-05-12 20:00','/commentary/es/match_101_es.mp3',87000000,'MP3',44100,128,1,'/transcripts/es/match_101_es.txt',0.70,64.0,84.0,32.0,'Added Spanish subtitles','1','2024-05-13 09:00','2024-05-13 11:00','Spanish language version');
INSERT INTO Match_Commentary_Metadata (match_id,language_code,commentator_name,commentary_start,commentary_end,file_path,file_size_bytes,audio_codec,sample_rate_hz,bit_rate_kbps,transcription_available,transcription_path,sentiment_score,average_volume_db,peak_volume_db,background_noise_level_db,edit_notes,approved_flag,upload_timestamp,last_reviewed,notes) VALUES (101,'de','Thomas Becker','2024-05-12 18:00','2024-05-12 20:00','/commentary/de/match_101_de.mp3',86000000,'MP3',44100,128,0,NULL,0.68,63.5,83.5,31.0,'Pending transcription','0','2024-05-13 10:00',NULL,'German version pending review');

-- Integration records for stadium energy grid and external power suppliers
CREATE TABLE Stadium_Energy_Grid_Integration (
    integration_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    grid_operator TEXT,
    connection_point TEXT,
    voltage_kv REAL,
    max_capacity_mw REAL,
    current_load_mw REAL,
    renewable_percentage REAL,
    backup_generator_capacity_mw REAL,
    last_inspection_date TEXT,
    next_inspection_due TEXT,
    compliance_status TEXT,
    outage_history TEXT,
    maintenance_contract_id INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    active_flag INTEGER,
    contact_name TEXT,
    contact_phone TEXT
);

INSERT INTO Stadium_Energy_Grid_Integration (stadium_id,grid_operator,connection_point,voltage_kv,max_capacity_mw,current_load_mw,renewable_percentage,backup_generator_capacity_mw,last_inspection_date,next_inspection_due,compliance_status,outage_history,maintenance_contract_id,notes,created_at,updated_at,active_flag,contact_name,contact_phone) VALUES (1,'MetroPower','CP-01',11.0,20.0,12.5,35.0,5.0,'2024-02-10','2025-02-10','Compliant','2022-06-15;2023-09-20','305','Grid integration stable','2024-03-01','2024-03-01',1,'Alex Green','5551234567');
INSERT INTO Stadium_Energy_Grid_Integration (stadium_id,grid_operator,connection_point,voltage_kv,max_capacity_mw,current_load_mw,renewable_percentage,backup_generator_capacity_mw,last_inspection_date,next_inspection_due,compliance_status,outage_history,maintenance_contract_id,notes,created_at,updated_at,active_flag,contact_name,contact_phone) VALUES (2,'CityEnergy','CP-07',33.0,45.0,30.0,50.0,8.0,'2024-01-22','2025-01-22','Compliant','2023-03-12;2024-04-05','410','Solar integration achieved','2024-02-15','2024-02-15',1,'Maria Lopez','5559876543');
INSERT INTO Stadium_Energy_Grid_Integration (stadium_id,grid_operator,connection_point,voltage_kv,max_capacity_mw,current_load_mw,renewable_percentage,backup_generator_capacity_mw,last_inspection_date,next_inspection_due,compliance_status,outage_history,maintenance_contract_id,notes,created_at,updated_at,active_flag,contact_name,contact_phone) VALUES (3,'NationalGrid','CP-12',66.0,60.0,45.0,40.0,10.0,'2024-03-05','2025-03-05','Compliant','2022-11-30;2023-12-18','512','High demand during events','2024-04-01','2024-04-01',1,'John Patel','5556543210');

-- Records of sports equipment rentals to third‑party events and clubs
CREATE TABLE Sports_Equipment_Rental_Records (
    rental_id INTEGER PRIMARY KEY AUTOINCREMENT,
    equipment_type TEXT,
    equipment_model TEXT,
    serial_number TEXT,
    owner_club_id INTEGER,
    renter_entity TEXT,
    rental_start_date TEXT,
    rental_end_date TEXT,
    daily_rate_usd REAL,
    total_fee_usd REAL,
    insurance_covered INTEGER,
    condition_before TEXT,
    condition_after TEXT,
    maintenance_required INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    status TEXT,
    contact_person TEXT,
    contact_email TEXT
);

INSERT INTO Sports_Equipment_Rental_Records (equipment_type,equipment_model,serial_number,owner_club_id,renter_entity,rental_start_date,rental_end_date,daily_rate_usd,total_fee_usd,insurance_covered,condition_before,condition_after,maintenance_required,notes,created_at,updated_at,status,contact_person,contact_email) VALUES ('GoalNet','ProNetX','GNX-1001',5,'LocalYouthLeague','2024-04-01','2024-04-05',150.00,750.00,1,'Good','Good',0,'Seasonal tournament','2024-04-01','2024-04-05','Returned','Sam Carter','sam.carter@club5.org');
INSERT INTO Sports_Equipment_Rental_Records (equipment_type,equipment_model,serial_number,owner_club_id,renter_entity,rental_start_date,rental_end_date,daily_rate_usd,total_fee_usd,insurance_covered,condition_before,condition_after,maintenance_required,notes,created_at,updated_at,status,contact_person,contact_email) VALUES ('TrainingCone','ConePro','TC-2002',3,'RegionalCoachingCamp','2024-05-10','2024-05-20',25.00,275.00,0,'Excellent','Excellent',0,'Used for skill drills','2024-05-10','2024-05-20','Returned','Laura Chen','laura.chen@club3.net');
INSERT INTO Sports_Equipment_Rental_Records (equipment_type,equipment_model,serial_number,owner_club_id,renter_entity,rental_start_date,rental_end_date,daily_rate_usd,total_fee_usd,insurance_covered,condition_before,condition_after,maintenance_required,notes,created_at,updated_at,status,contact_person,contact_email) VALUES ('PortableGoal','PortGoalZ','PGZ-3030',8,'CorporateTeamBuilding','2024-06-15','2024-06-18',300.00,1200.00,1,'Good','Fair',1,'Minor dent observed','2024-06-15','2024-06-18','Returned','Mike Alvarez','mike.alvarez@club8.com');