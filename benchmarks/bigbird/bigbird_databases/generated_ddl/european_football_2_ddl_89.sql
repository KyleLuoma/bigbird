-- Global Scouting Analytics
CREATE TABLE Global_Scouting_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    scouting_year INTEGER,
    region TEXT,
    num_scouts INTEGER,
    avg_player_age REAL,
    total_players_observed INTEGER,
    top_player_score INTEGER,
    avg_player_potential INTEGER,
    travel_distance_km REAL,
    budget_usd INTEGER,
    matches_covered INTEGER,
    scouting_events INTEGER,
    report_submission_date TEXT,
    data_source TEXT,
    analysis_version TEXT,
    notes TEXT,
    compliance_flag INTEGER,
    risk_score REAL,
    external_partner_id INTEGER,
    data_quality_score REAL,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Global_Scouting_Analytics (scouting_year,region,num_scouts,avg_player_age,total_players_observed,top_player_score,avg_player_potential,travel_distance_km,budget_usd,matches_covered,scouting_events,report_submission_date,data_source,analysis_version,notes,compliance_flag,risk_score,external_partner_id,data_quality_score,created_at,updated_at)
VALUES (2023,'Europe',15,22.5,200,88,78,3500.0,500000,30,12,'2023-12-01','internal','v1','first quarter scouting',1,0.12,101,0.95,'2023-12-02','2023-12-02');
INSERT INTO Global_Scouting_Analytics (scouting_year,region,num_scouts,avg_player_age,total_players_observed,top_player_score,avg_player_potential,travel_distance_km,budget_usd,matches_covered,scouting_events,report_submission_date,data_source,analysis_version,notes,compliance_flag,risk_score,external_partner_id,data_quality_score,created_at,updated_at)
VALUES (2024,'SouthAmerica',10,20.3,150,84,80,2100.0,300000,20,8,'2024-03-15','partner','v1','mid season scouting',1,0.08,102,0.92,'2024-03-16','2024-03-16');
INSERT INTO Global_Scouting_Analytics (scouting_year,region,num_scouts,avg_player_age,total_players_observed,top_player_score,avg_player_potential,travel_distance_km,budget_usd,matches_covered,scouting_events,report_submission_date,data_source,analysis_version,notes,compliance_flag,risk_score,external_partner_id,data_quality_score,created_at,updated_at)
VALUES (2024,'Asia',12,21.0,180,86,79,2800.0,400000,25,10,'2024-06-10','internal','v2','summer scouting',1,0.10,103,0.94,'2024-06-11','2024-06-11');

-- Fan Streaming Platform Stats
CREATE TABLE Fan_Streaming_Platform_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    platform_name TEXT,
    month TEXT,
    total_viewers INTEGER,
    average_watch_time_minutes REAL,
    peak_concurrent_viewers INTEGER,
    streaming_quality TEXT,
    ad_impressions INTEGER,
    subscription_revenue_usd INTEGER,
    free_user_count INTEGER,
    paid_user_count INTEGER,
    new_signups INTEGER,
    churn_rate REAL,
    device_type_distribution TEXT,
    geographic_region TEXT,
    latency_ms REAL,
    buffering_events INTEGER,
    data_usage_gb REAL,
    support_tickets INTEGER,
    feature_rollout_status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Fan_Streaming_Platform_Stats (platform_name,month,total_viewers,average_watch_time_minutes,peak_concurrent_viewers,streaming_quality,ad_impressions,subscription_revenue_usd,free_user_count,paid_user_count,new_signups,churn_rate,device_type_distribution,geographic_region,latency_ms,buffering_events,data_usage_gb,support_tickets,feature_rollout_status,notes,created_at,updated_at)
VALUES ('StreamHub','2024-01',150000,35.2,8000,'HD',1200000,850000,500000,50000,2000,0.05,'mobile:70,desktop:30','Europe',120.5,45,3200.0,80,'beta','initial release','2024-01-02','2024-01-02');
INSERT INTO Fan_Streaming_Platform_Stats (platform_name,month,total_viewers,average_watch_time_minutes,peak_concurrent_viewers,streaming_quality,ad_impressions,subscription_revenue_usd,free_user_count,paid_user_count,new_signups,churn_rate,device_type_distribution,geographic_region,latency_ms,buffering_events,data_usage_gb,support_tickets,feature_rollout_status,notes,created_at,updated_at)
VALUES ('FanCast','2024-02',175000,38.0,9500,'FullHD',1350000,960000,560000,62000,2500,0.04,'mobile:65,desktop:35','NorthAmerica',115.0,38,3450.0,70,'stable','season kickoff','2024-02-03','2024-02-03');
INSERT INTO Fan_Streaming_Platform_Stats (platform_name,month,total_viewers,average_watch_time_minutes,peak_concurrent_viewers,streaming_quality,ad_impressions,subscription_revenue_usd,free_user_count,paid_user_count,new_signups,churn_rate,device_type_distribution,geographic_region,latency_ms,buffering_events,data_usage_gb,support_tickets,feature_rollout_status,notes,created_at,updated_at)
VALUES ('LiveSphere','2024-03',160000,36.5,8700,'HD',1250000,910000,540000,58000,2300,0.045,'mobile:68,desktop:32','Asia',118.2,42,3330.0,75,'beta','mid season update','2024-03-04','2024-03-04');

-- Stadium Access Control Logs
CREATE TABLE Stadium_Access_Control_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    log_date TEXT,
    gate_id TEXT,
    entry_type TEXT,
    badge_id TEXT,
    employee_id INTEGER,
    visitor_name TEXT,
    visitor_company TEXT,
    purpose TEXT,
    timestamp_entry TEXT,
    timestamp_exit TEXT,
    duration_minutes INTEGER,
    access_granted INTEGER,
    security_alert TEXT,
    camera_id TEXT,
    lane_number INTEGER,
    temperature_celsius REAL,
    hand_sanitizer_used INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Stadium_Access_Control_Logs (stadium_id,log_date,gate_id,entry_type,badge_id,employee_id,visitor_name,visitor_company,purpose,timestamp_entry,timestamp_exit,duration_minutes,access_granted,security_alert,camera_id,lane_number,temperature_celsius,hand_sanitizer_used,notes,created_at,updated_at)
VALUES (1,'2024-04-01','G01','staff','B123',2001,'JohnDoe','AcmeCorp','Media','08:00','08:15',15,1,'none','C01',2,36.5,1,'passed','2024-04-01','2024-04-01');
INSERT INTO Stadium_Access_Control_Logs (stadium_id,log_date,gate_id,entry_type,badge_id,employee_id,visitor_name,visitor_company,purpose,timestamp_entry,timestamp_exit,duration_minutes,access_granted,security_alert,camera_id,lane_number,temperature_celsius,hand_sanitizer_used,notes,created_at,updated_at)
VALUES (1,'2024-04-01','G02','vendor','V456',NULL,'MikeSmith','FoodSupply','Catering','08:30','09:00',30,1,'none','C02',1,37.0,1,'no issues','2024-04-01','2024-04-01');
INSERT INTO Stadium_Access_Control_Logs (stadium_id,log_date,gate_id,entry_type,badge_id,employee_id,visitor_name,visitor_company,purpose,timestamp_entry,timestamp_exit,duration_minutes,access_granted,security_alert,camera_id,lane_number,temperature_celsius,hand_sanitizer_used,notes,created_at,updated_at)
VALUES (1,'2024-04-01','G03','guest','G789',NULL,'AnnaLee','','VIP','09:15','10:00',45,1,'none','C03',3,36.8,1,'VIP lounge access','2024-04-01','2024-04-01');

-- Media Broadcast Technology Inventory
CREATE TABLE Media_Broadcast_Technology_Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    equipment_type TEXT,
    model_number TEXT,
    serial_number TEXT,
    purchase_date TEXT,
    warranty_expiry TEXT,
    manufacturer TEXT,
    firmware_version TEXT,
    location TEXT,
    assigned_to TEXT,
    status TEXT,
    last_maintenance_date TEXT,
    maintenance_interval_days INTEGER,
    calibration_date TEXT,
    power_rating_watts INTEGER,
    connectivity TEXT,
    network_ip TEXT,
    software_license_key TEXT,
    depreciation_years INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Media_Broadcast_Technology_Inventory (equipment_type,model_number,serial_number,purchase_date,warranty_expiry,manufacturer,firmware_version,location,assigned_to,status,last_maintenance_date,maintenance_interval_days,calibration_date,power_rating_watts,connectivity,network_ip,software_license_key,depreciation_years,notes,created_at,updated_at)
VALUES ('Camera','CAMX200','SN001','2022-01-15','2025-01-15','VisionTech','v3.2','StudioA','TeamA','operational','2024-01-10',180,'2024-01-05',150,'HDMI','192.168.1.10','LIC12345',5,'primary broadcast cam','2024-02-01','2024-02-01');
INSERT INTO Media_Broadcast_Technology_Inventory (equipment_type,model_number,serial_number,purchase_date,warranty_expiry,manufacturer,firmware_version,location,assigned_to,status,last_maintenance_date,maintenance_interval_days,calibration_date,power_rating_watts,connectivity,network_ip,software_license_key,depreciation_years,notes,created_at,updated_at)
VALUES ('AudioMixer','MIXPRO9','SN002','2021-06-20','2024-06-20','SoundMaster','v1.8','StudioB','TeamB','operational','2023-12-01',365,'2023-11-28',200,'Ethernet','192.168.1.20','LIC67890',4,'main audio console','2024-02-02','2024-02-02');
INSERT INTO Media_Broadcast_Technology_Inventory (equipment_type,model_number,serial_number,purchase_date,warranty_expiry,manufacturer,firmware_version,location,assigned_to,status,last_maintenance_date,maintenance_interval_days,calibration_date,power_rating_watts,connectivity,network_ip,software_license_key,depreciation_years,notes,created_at,updated_at)
VALUES ('Encoder','ENC2000','SN003','2023-03-05','2026-03-05','EncodeInc','v2.0','ControlRoom','TeamC','operational','2024-02-20',90,'2024-02-15',120,'Fiber','192.168.1.30','LIC54321',3,'4K streaming encoder','2024-02-03','2024-02-03');

-- Club Digital Asset Catalog
CREATE TABLE Club_Digital_Asset_Catalog (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_type TEXT,
    asset_name TEXT,
    file_format TEXT,
    file_size_mb REAL,
    created_by TEXT,
    creation_date TEXT,
    last_modified_date TEXT,
    version_number INTEGER,
    storage_location TEXT,
    access_level TEXT,
    usage_count INTEGER,
    related_campaign TEXT,
    tags TEXT,
    description TEXT,
    approval_status TEXT,
    approved_by TEXT,
    approval_date TEXT,
    archive_flag INTEGER,
    retention_policy_months INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Club_Digital_Asset_Catalog (asset_type,asset_name,file_format,file_size_mb,created_by,creation_date,last_modified_date,version_number,storage_location,access_level,usage_count,related_campaign,tags,description,approval_status,approved_by,approval_date,archive_flag,retention_policy_months,notes,created_at,updated_at)
VALUES ('Image','ClubLogo','png',2.5,'DesignTeam','2023-01-10','2024-01-05',3,'/assets/logo','public',150,'BrandRefresh','logo,branding','primary club logo','approved','CMO','2023-02-01',0,24,'used in all media','2024-02-04','2024-02-04');
INSERT INTO Club_Digital_Asset_Catalog (asset_type,asset_name,file_format,file_size_mb,created_by,creation_date,last_modified_date,version_number,storage_location,access_level,usage_count,related_campaign,tags,description,approval_status,approved_by,approval_date,archive_flag,retention_policy_months,notes,created_at,updated_at)
VALUES ('Video','SeasonHighlight','mp4',350.0,'MediaTeam','2023-12-15','2024-02-10',1,'/assets/video','internal',25,'Season2023','highlight,season','end of season video','pending','','',0,12,'awaiting review','2024-02-05','2024-02-05');
INSERT INTO Club_Digital_Asset_Catalog (asset_type,asset_name,file_format,file_size_mb,created_by,creation_date,last_modified_date,version_number,storage_location,access_level,usage_count,related_campaign,tags,description,approval_status,approved_by,approval_date,archive_flag,retention_policy_months,notes,created_at,updated_at)
VALUES ('Document','SponsorshipProposal','pdf',1.2,'BizDev','2024-01-20','2024-02-12',2,'/assets/docs','confidential',5,'SpringSponsor','proposal,sponsorship','proposal for spring 2024','approved','Legal','2024-01-25',0,36,'signed by sponsor','2024-02-06','2024-02-06');

-- Player Biometric Sensor Readings
CREATE TABLE Player_Biometric_Sensor_Readings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    session_id TEXT,
    reading_timestamp TEXT,
    heart_rate_bpm INTEGER,
    respiratory_rate INTEGER,
    body_temperature_celsius REAL,
    oxygen_saturation_percent REAL,
    stress_level INTEGER,
    fatigue_score INTEGER,
    hydration_level_percent REAL,
    movement_speed_kmh REAL,
    jump_height_cm REAL,
    acceleration_g REAL,
    latitude REAL,
    longitude REAL,
    sensor_firmware_version TEXT,
    battery_level_percent INTEGER,
    data_quality_flag INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Player_Biometric_Sensor_Readings (player_api_id,session_id,reading_timestamp,heart_rate_bpm,respiratory_rate,body_temperature_celsius,oxygen_saturation_percent,stress_level,fatigue_score,hydration_level_percent,movement_speed_kmh,jump_height_cm,acceleration_g,latitude,longitude,sensor_firmware_version,battery_level_percent,data_quality_flag,notes,created_at,updated_at)
VALUES (101,'S001','2024-03-01T10:15:00',78,16,36.8,98.5,20,30,85.0,12.5,45.0,1.2,48.8566,2.3522,'v1.5',90,1,'pre‑match warmup','2024-03-01','2024-03-01');
INSERT INTO Player_Biometric_Sensor_Readings (player_api_id,session_id,reading_timestamp,heart_rate_bpm,respiratory_rate,body_temperature_celsius,oxygen_saturation_percent,stress_level,fatigue_score,hydration_level_percent,movement_speed_kmh,jump_height_cm,acceleration_g,latitude,longitude,sensor_firmware_version,battery_level_percent,data_quality_flag,notes,created_at,updated_at)
VALUES (102,'S002','2024-03-01T10:20:00',80,15,37.0,97.8,22,32,82.0,13.0,46.5,1.3,48.8566,2.3522,'v1.5',88,1,'mid‑session','2024-03-01','2024-03-01');
INSERT INTO Player_Biometric_Sensor_Readings (player_api_id,session_id,reading_timestamp,heart_rate_bpm,respiratory_rate,body_temperature_celsius,oxygen_saturation_percent,stress_level,fatigue_score,hydration_level_percent,movement_speed_kmh,jump_height_cm,acceleration_g,latitude,longitude,sensor_firmware_version,battery_level_percent,data_quality_flag,notes,created_at,updated_at)
VALUES (103,'S003','2024-03-01T10:25:00',76,14,36.7,99.0,18,28,87.0,12.0,44.0,1.1,48.8566,2.3522,'v1.5',92,1,'post‑warmup','2024-03-01','2024-03-01');

-- Sponsor Contract Timeline
CREATE TABLE Sponsor_Contract_Timeline (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    contract_start_date TEXT,
    contract_end_date TEXT,
    renewal_option TEXT,
    first_payment_date TEXT,
    last_payment_date TEXT,
    total_value_usd INTEGER,
    payment_frequency TEXT,
    milestones TEXT,
    performance_bonus_usd INTEGER,
    penalty_clause TEXT,
    compliance_audit_date TEXT,
    amendment_count INTEGER,
    last_amendment_date TEXT,
    responsible_manager TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    status TEXT,
    contract_type TEXT
);
INSERT INTO Sponsor_Contract_Timeline (sponsor_id,contract_start_date,contract_end_date,renewal_option,first_payment_date,last_payment_date,total_value_usd,payment_frequency,milestones,performance_bonus_usd,penalty_clause,compliance_audit_date,amendment_count,last_amendment_date,responsible_manager,notes,created_at,updated_at,status,contract_type)
VALUES (301,'2023-07-01','2026-06-30','auto','2023-07-15','2026-06-15',3000000,'quarterly','branding,activations','50000','late_payment','2024-07-01',1,'2024-07-02','JohnDoe','initial contract','2024-02-07','2024-02-07','active','exclusive');
INSERT INTO Sponsor_Contract_Timeline (sponsor_id,contract_start_date,contract_end_date,renewal_option,first_payment_date,last_payment_date,total_value_usd,payment_frequency,milestones,performance_bonus_usd,penalty_clause,compliance_audit_date,amendment_count,last_amendment_date,responsible_manager,notes,created_at,updated_at,status,contract_type)
VALUES (302,'2024-01-01','2027-12-31','manual','2024-01-10','2027-12-20',4500000,'semiannual','social_media,stadium_signage','75000','breach_of_terms','2025-01-01',0,'','JaneSmith','new partnership','2024-02-08','2024-02-08','pending','non‑exclusive');
INSERT INTO Sponsor_Contract_Timeline (sponsor_id,contract_start_date,contract_end_date,renewal_option,first_payment_date,last_payment_date,total_value_usd,payment_frequency,milestones,performance_bonus_usd,penalty_clause,compliance_audit_date,amendment_count,last_amendment_date,responsible_manager,notes,created_at,updated_at,status,contract_type)
VALUES (303,'2022-05-15','2025-05-14','auto','2022-05-20','2025-05-10',2500000,'annual','community_events,merch_cobranding','30000','early_termination','2023-05-15',2,'2024-05-16','MikeBrown','renegotiated terms','2024-02-09','2024-02-09','active','exclusive');

-- Training Center Sensor Network
CREATE TABLE Training_Center_Sensor_Network (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sensor_id TEXT,
    sensor_type TEXT,
    installation_date TEXT,
    calibration_date TEXT,
    firmware_version TEXT,
    location TEXT,
    latitude REAL,
    longitude REAL,
    measurement_interval_seconds INTEGER,
    last_reading_timestamp TEXT,
    last_reading_value REAL,
    status TEXT,
    battery_level_percent INTEGER,
    signal_strength_dbm INTEGER,
    maintenance_due_date TEXT,
    data_retention_days INTEGER,
    alert_threshold_high REAL,
    alert_threshold_low REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Training_Center_Sensor_Network (sensor_id,sensor_type,installation_date,calibration_date,firmware_version,location,latitude,longitude,measurement_interval_seconds,last_reading_timestamp,last_reading_value,status,battery_level_percent,signal_strength_dbm,maintenance_due_date,data_retention_days,alert_threshold_high,alert_threshold_low,notes,created_at,updated_at)
VALUES ('TS001','Temperature','2023-03-01','2023-09-01','v2.1','GymA',48.8566,2.3522,60,'2024-02-10T08:00:00',22.5,'operational',80,-70,'2025-03-01',365,30.0,15.0,'normal operation','2024-02-07','2024-02-07');
INSERT INTO Training_Center_Sensor_Network (sensor_id,sensor_type,installation_date,calibration_date,firmware_version,location,latitude,longitude,measurement_interval_seconds,last_reading_timestamp,last_reading_value,status,battery_level_percent,signal_strength_dbm,maintenance_due_date,data_retention_days,alert_threshold_high,alert_threshold_low,notes,created_at,updated_at)
VALUES ('TS002','Humidity','2023-04-10','2023-10-10','v1.9','GymB',48.8566,2.3522,120,'2024-02-10T08:05:00',55.0,'operational',75,-68,'2025-04-10',365,70.0,30.0,'stable humidity levels','2024-02-07','2024-02-07');
INSERT INTO Training_Center_Sensor_Network (sensor_id,sensor_type,installation_date,calibration_date,firmware_version,location,latitude,longitude,measurement_interval_seconds,last_reading_timestamp,last_reading_value,status,battery_level_percent,signal_strength_dbm,maintenance_due_date,data_retention_days,alert_threshold_high,alert_threshold_low,notes,created_at,updated_at)
VALUES ('TS003','AirQuality','2023-05-20','2023-11-20','v3.0','GymC',48.8566,2.3522,180,'2024-02-10T08:10:00',12.0,'operational',70,-65,'2025-05-20',365,50.0,5.0,'PM2.5 within limits','2024-02-07','2024-02-07');

-- Match Operational Risk Profiles
CREATE TABLE Match_Operational_Risk_Profiles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    risk_category TEXT,
    probability_score REAL,
    impact_score REAL,
    mitigation_plan TEXT,
    responsible_party TEXT,
    review_date TEXT,
    status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    severity_level TEXT,
    detection_method TEXT,
    contingency_budget_usd INTEGER,
    last_updated_by TEXT,
    approval_status TEXT,
    approved_by TEXT,
    approval_date TEXT,
    escalation_path TEXT,
    risk_owner TEXT
);
INSERT INTO Match_Operational_Risk_Profiles (match_id,risk_category,probability_score,impact_score,mitigation_plan,responsible_party,review_date,status,notes,created_at,updated_at,severity_level,detection_method,contingency_budget_usd,last_updated_by,approval_status,approved_by,approval_date,escalation_path,risk_owner)
VALUES (1001,'WeatherDelay',0.2,0.7,'monitor forecasts, have backup schedule','OpsTeam','2024-03-01','open','high wind risk','2024-02-07','2024-02-07','high','automated','50000','JohnDoe','pending','','','OpsLead','WeatherDept');
INSERT INTO Match_Operational_Risk_Profiles (match_id,risk_category,probability_score,impact_score,mitigation_plan,responsible_party,review_date,status,notes,created_at,updated_at,severity_level,detection_method,contingency_budget_usd,last_updated_by,approval_status,approved_by,approval_date,escalation_path,risk_owner)
VALUES (1002,'SecurityBreach',0.1,0.9,'increase security staff, badge checks','SecurityTeam','2024-03-05','open','potential fan unrest','2024-02-07','2024-02-07','critical','manual','100000','JaneSmith','pending','','','SecurityLead','SecurityDept');
INSERT INTO Match_Operational_Risk_Profiles (match_id,risk_category,probability_score,impact_score,mitigation_plan,responsible_party,review_date,status,notes,created_at,updated_at,severity_level,detection_method,contingency_budget_usd,last_updated_by,approval_status,approved_by,approval_date,escalation_path,risk_owner)
VALUES (1003,'TechnicalFailure',0.15,0.8,'redundant broadcast lines, test equipment','TechTeam','2024-03-10','open','possible AV outage','2024-02-07','2024-02-07','high','automated','75000','MikeBrown','pending','','','TechLead','ITDept');

-- International Tournament Travel Itineraries
CREATE TABLE International_Tournament_Travel_Itineraries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    team_id INTEGER,
    departure_city TEXT,
    arrival_city TEXT,
    departure_date TEXT,
    arrival_date TEXT,
    flight_number TEXT,
    airline TEXT,
    accommodation_name TEXT,
    accommodation_address TEXT,
    room_type TEXT,
    check_in_date TEXT,
    check_out_date TEXT,
    transport_type TEXT,
    driver_name TEXT,
    driver_contact TEXT,
    visa_status TEXT,
    health_clearance TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO International_Tournament_Travel_Itineraries (tournament_id,team_id,departure_city,arrival_city,departure_date,arrival_date,flight_number,airline,accommodation_name,accommodation_address,room_type,check_in_date,check_out_date,transport_type,driver_name,driver_contact,visa_status,health_clearance,notes,created_at,updated_at)
VALUES (2001,10,'London','Madrid','2024-06-01','2024-06-01','IB123','Iberia','HotelMadridCentral','CalleMayor 1','double','2024-06-01','2024-06-10','bus','CarlosM','+34911222333','approved','cleared','team arrival','2024-02-07','2024-02-07');
INSERT INTO International_Tournament_Travel_Itineraries (tournament_id,team_id,departure_city,arrival_city,departure_date,arrival_date,flight_number,airline,accommodation_name,accommodation_address,room_type,check_in_date,check_out_date,transport_type,driver_name,driver_contact,visa_status,health_clearance,notes,created_at,updated_at)
VALUES (2002,12,'Paris','Berlin','2024-07-15','2024-07-15','LH456','Lufthansa','BerlinCityHotel','UnterDenLinden 5','single','2024-07-15','2024-07-25','van','AnnaK','+4930123456','pending','cleared','short stay','2024-02-07','2024-02-07');
INSERT INTO International_Tournament_Travel_Itineraries (tournament_id,team_id,departure_city,arrival_city,departure_date,arrival_date,flight_number,airline,accommodation_name,accommodation_address,room_type,check_in_date,check_out_date,transport_type,driver_name,driver_contact,visa_status,health_clearance,notes,created_at,updated_at)
VALUES (2003,14,'Rome','Tokyo','2024-08-20','2024-08-21','NH789','ANA','TokyoGrandHotel','Shinjuku 3-2-1','suite','2024-08-21','2024-09-05','coach','YukiS','+81312345678','approved','pending','long haul','2024-02-07','2024-02-07');

-- Club Digital Asset Catalog (additional distinct table for assets not yet covered)
CREATE TABLE Club_Digital_Asset_Registry (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_uuid TEXT,
    asset_category TEXT,
    filename TEXT,
    file_extension TEXT,
    file_size_mb REAL,
    uploader_id INTEGER,
    upload_timestamp TEXT,
    last_access_timestamp TEXT,
    access_count INTEGER,
    tags TEXT,
    description TEXT,
    confidentiality_level TEXT,
    compliance_status TEXT,
    retention_expiry_date TEXT,
    archived_flag INTEGER,
    archive_location TEXT,
    digital_signature TEXT,
    checksum_md5 TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Club_Digital_Asset_Registry (asset_uuid,asset_category,filename,file_extension,file_size_mb,uploader_id,upload_timestamp,last_access_timestamp,access_count,tags,description,confidentiality_level,compliance_status,retention_expiry_date,archived_flag,archive_location,digital_signature,checksum_md5,notes,created_at,updated_at)
VALUES ('a1b2c3d4','image','club_logo','png',2.5,101,'2023-01-10T09:00:00','2024-01-05T10:00:00',150,'branding,logo','main club logo','public','compliant','2025-01-10',0,'','SIG123','5d41402abc4b2a76b9719d911017c592','','2024-02-07','2024-02-07');
INSERT INTO Club_Digital_Asset_Registry (asset_uuid,asset_category,filename,file_extension,file_size_mb,uploader_id,upload_timestamp,last_access_timestamp,access_count,tags,description,confidentiality_level,compliance_status,retention_expiry_date,archived_flag,archive_location,digital_signature,checksum_md5,notes,created_at,updated_at)
VALUES ('e5f6g7h8','video','match_highlights','mp4',350.0,102,'2023-12-15T14:30:00','2024-02-10T15:00:00',25,'highlights,season','season summary video','internal','pending','2026-12-15',0,'','SIG456','7d793037a0760186574b0282f2f435e7','','2024-02-07','2024-02-07');
INSERT INTO Club_Digital_Asset_Registry (asset_uuid,asset_category,filename,file_extension,file_size_mb,uploader_id,upload_timestamp,last_access_timestamp,access_count,tags,description,confidentiality_level,compliance_status,retention_expiry_date,archived_flag,archive_location,digital_signature,checksum_md5,notes,created_at,updated_at)
VALUES ('i9j0k1l2','document','sponsorship_contract','pdf',1.2,103,'2024-01-20T11:45:00','2024-02-12T12:00:00',5,'contract,sponsor','sponsor agreement','confidential','compliant','2027-01-20',0,'','SIG789','9e107d9d372bb6826bd81d3542a419d6','','2024-02-07','2024-02-07');

-- Sponsor Contract Timeline (additional distinct table for long‑term overview)
CREATE TABLE Sponsor_Contract_Timeline_Archive (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    contract_year INTEGER,
    annual_value_usd INTEGER,
    performance_metric TEXT,
    target_achievement_percent REAL,
    bonus_awarded_usd INTEGER,
    breach_flag INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    archive_reason TEXT,
    source_system TEXT,
    verified_by TEXT,
    verification_date TEXT,
    audit_trail TEXT,
    retention_policy_years INTEGER,
    compliance_status TEXT,
    corrective_action TEXT,
    risk_level TEXT,
    oversight_owner TEXT
);
INSERT INTO Sponsor_Contract_Timeline_Archive (sponsor_id,contract_year,annual_value_usd,performance_metric,target_achievement_percent,bonus_awarded_usd,breach_flag,notes,created_at,updated_at,archive_reason,source_system,verified_by,verification_date,audit_trail,retention_policy_years,compliance_status,corrective_action,risk_level,oversight_owner)
VALUES (301,2023,1000000,'media_impressions',95.0,50000,0,'met all KPIs','2024-02-07','2024-02-07','end_of_year','CRM','JohnDoe','2024-01-15','log123',5,'compliant','none','low','FinanceDept');
INSERT INTO Sponsor_Contract_Timeline_Archive (sponsor_id,contract_year,annual_value_usd,performance_metric,target_achievement_percent,bonus_awarded_usd,breach_flag,notes,created_at,updated_at,archive_reason,source_system,verified_by,verification_date,audit_trail,retention_policy_years,compliance_status,corrective_action,risk_level,oversight_owner)
VALUES (302,2024,1500000,'social_engagement',88.0,75000,0,'slightly below target','2024-02-07','2024-02-07','mid_term_review','ERP','JaneSmith','2024-02-01','log124',5,'compliant','monitor','medium','LegalDept');
INSERT INTO Sponsor_Contract_Timeline_Archive (sponsor_id,contract_year,annual_value_usd,performance_metric,target_achievement_percent,bonus_awarded_usd,breach_flag,notes,created_at,updated_at,archive_reason,source_system,verified_by,verification_date,audit_trail,retention_policy_years,compliance_status,corrective_action,risk_level,oversight_owner)
VALUES (303,2022,833333,'community_events',92.0,30000,0,'exceeded expectations','2024-02-07','2024-02-07','annual_closure','Finance','MikeBrown','2023-12-31','log125',5,'compliant','none','low','AuditDept');

-- Match Operational Risk Profiles (extended version)
CREATE TABLE Match_Operational_Risk_Profiles_Extended (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    risk_id TEXT,
    risk_type TEXT,
    likelihood REAL,
    impact REAL,
    risk_score REAL,
    mitigation_strategy TEXT,
    owner TEXT,
    status TEXT,
    last_review_date TEXT,
    next_review_date TEXT,
    comments TEXT,
    created_at TEXT,
    updated_at TEXT,
    severity TEXT,
    detection_method TEXT,
    contingency_fund_usd INTEGER,
    escalation_procedure TEXT,
    risk_category TEXT,
    governance_board TEXT,
    compliance_required INTEGER
);
INSERT INTO Match_Operational_Risk_Profiles_Extended (match_id,risk_id,risk_type,likelihood,impact,risk_score,mitigation_strategy,owner,status,last_review_date,next_review_date,comments,created_at,updated_at,severity,detection_method,contingency_fund_usd,escalation_procedure,risk_category,governance_board,compliance_required)
VALUES (1004,'R001','CrowdControl',0.25,0.6,0.15,'increase stewards','OpsLead','open','2024-02-10','2024-05-10','monitor crowd density','2024-02-07','2024-02-07','medium','manual',40000,'notify security','operational','SafetyCommittee',1);
INSERT INTO Match_Operational_Risk_Profiles_Extended (match_id,risk_id,risk_type,likelihood,impact,risk_score,mitigation_strategy,owner,status,last_review_date,next_review_date,comments,created_at,updated_at,severity,detection_method,contingency_fund_usd,escalation_procedure,risk_category,governance_board,compliance_required)
VALUES (1005,'R002','PowerFailure',0.1,0.9,0.09,'backup generators','TechLead','open','2024-02-12','2024-06-12','test generator monthly','2024-02-07','2024-02-07','high','automated',75000,'alert facilities','technical','EngineeringBoard',1);
INSERT INTO Match_Operational_Risk_Profiles_Extended (match_id,risk_id,risk_type,likelihood,impact,risk_score,mitigation_strategy,owner,status,last_review_date,next_review_date,comments,created_at,updated_at,severity,detection_method,contingency_fund_usd,escalation_procedure,risk_category,governance_board,compliance_required)
VALUES (1006,'R003','MedicalEmergency',0.15,0.8,0.12,'on‑site medics','MedicalLead','open','2024-02-14','2024-07-14','review medical kit','2024-02-07','2024-02-07','high','manual',60000,'contact hospital','health','MedicalCommittee',1);