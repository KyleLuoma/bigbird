-- Table storing audit records for suppliers and their compliance checks
CREATE TABLE supplier_audit_logs
(
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    supplier_id INTEGER,
    audit_date DATE,
    auditor_name TEXT,
    score REAL,
    compliance_status TEXT,
    findings_summary TEXT,
    corrective_action TEXT,
    next_audit_due DATE,
    region TEXT,
    industry TEXT,
    contact_email TEXT,
    phone_number TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    country TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO supplier_audit_logs (supplier_id,audit_date,auditor_name,score,compliance_status,findings_summary,corrective_action,next_audit_due,region,industry,contact_email,phone_number,address_line1,address_line2,city,state,zip_code,country,notes,created_at,updated_at) VALUES (101,'2023-03-15','AliceSmith',87.5,'Compliant','All processes met standards','None','2024-03-15','NorthAmerica','Printing','audit@example.com','5551234567','123 Main St','Suite 100','Metropolis','NY','10001','USA','First audit','2023-03-15 09:00:00','2023-03-15 09:00:00');
INSERT INTO supplier_audit_logs (supplier_id,audit_date,auditor_name,score,compliance_status,findings_summary,corrective_action,next_audit_due,region,industry,contact_email,phone_number,address_line1,address_line2,city,state,zip_code,country,notes,created_at,updated_at) VALUES (102,'2023-04-20','BobJones',72.3,'Conditional','Minor labeling issues','Update labels','2025-04-20','Europe','Packaging','audit2@example.com','5559876543','45 Oak Road','', 'Berlin','BE','10115','Germany','Second audit','2023-04-20 10:30:00','2023-04-20 10:30:00');
INSERT INTO supplier_audit_logs (supplier_id,audit_date,auditor_name,score,compliance_status,findings_summary,corrective_action,next_audit_due,region,industry,contact_email,phone_number,address_line1,address_line2,city,state,zip_code,country,notes,created_at,updated_at) VALUES (103,'2023-05-05','CarolLee',65.0,'NonCompliant','Safety violations noted','Revise safety protocol','2023-11-05','Asia','Manufacturing','audit3@example.com','5551122334','78 Pine Ave','Floor 2','Tokyo','TK','160-0023','Japan','Third audit','2023-05-05 08:15:00','2023-05-05 08:15:00');

-- Archive metadata for digital assets
CREATE TABLE digital_asset_archives
(
    archive_id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_uuid TEXT,
    version_number INTEGER,
    file_path TEXT,
    file_size_bytes INTEGER,
    checksum_sha256 TEXT,
    archived_by TEXT,
    archive_date DATE,
    retention_policy TEXT,
    encryption_status TEXT,
    access_level TEXT,
    description TEXT,
    tags TEXT,
    related_project TEXT,
    original_creator TEXT,
    copyright_holder TEXT,
    license_type TEXT,
    expiration_date DATE,
    storage_location TEXT,
    backup_location TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO digital_asset_archives (asset_uuid,version_number,file_path,file_size_bytes,checksum_sha256,archived_by,archive_date,retention_policy,encryption_status,access_level,description,tags,related_project,original_creator,copyright_holder,license_type,expiration_date,storage_location,backup_location,notes,created_at,updated_at) VALUES ('uuid-aaa111','1','/archive/asset1_v1.dat','204800','abc123def456ghi789jkl012mno345pqr678stu901vwx','Admin','2023-01-10','7years','Encrypted','Internal','First version of asset1','art,concept','ProjectX','JohnDoe','GameStudio','CC0','2025-01-10','ColdStorageA','BackupSite1','No notes','2023-01-10 07:00:00','2023-01-10 07:00:00');
INSERT INTO digital_asset_archives (asset_uuid,version_number,file_path,file_size_bytes,checksum_sha256,archived_by,archive_date,retention_policy,encryption_status,access_level,description,tags,related_project,original_creator,copyright_holder,license_type,expiration_date,storage_location,backup_location,notes,created_at,updated_at) VALUES ('uuid-bbb222','2','/archive/asset1_v2.dat','307200','def456ghi789jkl012mno345pqr678stu901vwxabc123','Admin','2023-06-15','7years','Encrypted','Internal','Second version with updates','art,concept,update','ProjectX','JohnDoe','GameStudio','CC0','2025-06-15','ColdStorageA','BackupSite1','Updated textures','2023-06-15 09:30:00','2023-06-15 09:30:00');
INSERT INTO digital_asset_archives (asset_uuid,version_number,file_path,file_size_bytes,checksum_sha256,archived_by,archive_date,retention_policy,encryption_status,access_level,description,tags,related_project,original_creator,copyright_holder,license_type,expiration_date,storage_location,backup_location,notes,created_at,updated_at) VALUES ('uuid-ccc333','1','/archive/asset2_v1.dat','512000','ghi789jkl012mno345pqr678stu901vwxabc123def456','Admin','2023-03-22','5years','Unencrypted','Public','Initial release of asset2','sound,fx','ProjectY','JaneSmith','AudioLab','MIT','2028-03-22','ColdStorageB','BackupSite2','Ready for use','2023-03-22 11:45:00','2023-03-22 11:45:00');

-- Sensor readings captured from environmental monitoring devices
CREATE TABLE environmental_sensor_readings
(
    reading_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sensor_id TEXT,
    timestamp DATETIME,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    pm2_5_ug_m3 REAL,
    noise_db REAL,
    battery_level_percent INTEGER,
    signal_strength_dbm REAL,
    location_lat REAL,
    location_long REAL,
    altitude_m REAL,
    firmware_version TEXT,
    status TEXT,
    calibrated INTEGER,
    calibration_date DATE,
    manufacturer TEXT,
    model_number TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO environmental_sensor_readings (sensor_id,timestamp,temperature_c,humidity_percent,co2_ppm,pm2_5_ug_m3,noise_db,battery_level_percent,signal_strength_dbm,location_lat,location_long,altitude_m,firmware_version,status,calibrated,calibration_date,manufacturer,model_number,notes,created_at,updated_at) VALUES ('SEN001','2023-07-01 08:00:00',22.5,45.2,400,12.3,55.0,95, -70.5,40.7128,-74.0060,10,'v1.2','OK',1,'2023-01-01','EnviroCorp','E100','Initial deployment','2023-07-01 08:00:00','2023-07-01 08:00:00');
INSERT INTO environmental_sensor_readings (sensor_id,timestamp,temperature_c,humidity_percent,co2_ppm,pm2_5_ug_m3,noise_db,battery_level_percent,signal_strength_dbm,location_lat,location_long,altitude_m,firmware_version,status,calibrated,calibration_date,manufacturer,model_number,notes,created_at,updated_at) VALUES ('SEN002','2023-07-01 08:05:00',23.0,47.0,420,13.0,58.0,90,-68.0,34.0522,-118.2437,30,'v1.2','OK',1,'2023-01-01','EnviroCorp','E200','Outdoor sensor','2023-07-01 08:05:00','2023-07-01 08:05:00');
INSERT INTO environmental_sensor_readings (sensor_id,timestamp,temperature_c,humidity_percent,co2_ppm,pm2_5_ug_m3,noise_db,battery_level_percent,signal_strength_dbm,location_lat,location_long,altitude_m,firmware_version,status,calibrated,calibration_date,manufacturer,model_number,notes,created_at,updated_at) VALUES ('SEN003','2023-07-01 08:10:00',21.8,44.5,390,11.5,53.0,98,-72.0,51.5074,-0.1278,15,'v1.1','OK',1,'2023-01-01','EnviroCorp','E300','Lobby sensor','2023-07-01 08:10:00','2023-07-01 08:10:00');

-- Information about speakers at conferences and events
CREATE TABLE conference_speakers
(
    speaker_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    affiliation TEXT,
    bio TEXT,
    email TEXT,
    phone TEXT,
    twitter_handle TEXT,
    linkedin_url TEXT,
    website TEXT,
    speaking_topic TEXT,
    session_title TEXT,
    session_type TEXT,
    session_duration_min INTEGER,
    track TEXT,
    language TEXT,
    country TEXT,
    city TEXT,
    photo_url TEXT,
    abstract TEXT,
    panelist_flag INTEGER,
    keynote_flag INTEGER,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO conference_speakers (first_name,last_name,affiliation,bio,email,phone,twitter_handle,linkedin_url,website,speaking_topic,session_title,session_type,session_duration_min,track,language,country,city,photo_url,abstract,panelist_flag,keynote_flag,created_at,updated_at) VALUES ('Emma','Stone','TechUniversity','Expert in AI','emma.stone@example.com','5552223333','@emmastone','linkedin.com/in/emmastone','emmastone.com','ArtificialIntelligence','Future of AI','Keynote',60,'AI','English','USA','Boston','/images/emmastone.jpg','Overview of AI trends','0','1','2023-06-01 09:00:00','2023-06-01 09:00:00');
INSERT INTO conference_speakers (first_name,last_name,affiliation,bio,email,phone,twitter_handle,linkedin_url,website,speaking_topic,session_title,session_type,session_duration_min,track,language,country,city,photo_url,abstract,panelist_flag,keynote_flag,created_at,updated_at) VALUES ('Liam','Nguyen','DataCorp','Data analytics lead','liam.nguyen@example.com','5554445555','@liamdata','linkedin.com/in/liamnguyen','liamnguyen.io','DataVisualization','Visual Storytelling','Workshop',90,'Data','English','Canada','Toronto','/images/liamnguyen.jpg','Hands on visualization techniques','1','0','2023-06-02 10:30:00','2023-06-02 10:30:00');
INSERT INTO conference_speakers (first_name,last_name,affiliation,bio,email,phone,twitter_handle,linkedin_url,website,speaking_topic,session_title,session_type,session_duration_min,track,language,country,city,photo_url,abstract,panelist_flag,keynote_flag,created_at,updated_at) VALUES ('Aisha','Kumar','FinTechLabs','Blockchain specialist','aisha.kumar@example.com','5557778888','@aishak','linkedin.com/in/aishakumar','aishakumar.io','BlockchainSecurity','Securing Smart Contracts','Panel',45,'Blockchain','English','UK','London','/images/aishakumar.jpg','Discussion on contract vulnerabilities','1','0','2023-06-03 11:15:00','2023-06-03 11:15:00');

-- Test cases for validating game mechanics implementations
CREATE TABLE game_mechanics_test_cases
(
    test_case_id INTEGER PRIMARY KEY AUTOINCREMENT,
    mechanic_name TEXT,
    description TEXT,
    version_introduced TEXT,
    test_steps TEXT,
    expected_result TEXT,
    actual_result TEXT,
    pass_fail TEXT,
    tester_name TEXT,
    test_date DATE,
    related_set_code TEXT,
    priority TEXT,
    severity TEXT,
    bug_id TEXT,
    regression_flag INTEGER,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    tags TEXT,
    environment TEXT,
    runtime_seconds REAL
);

INSERT INTO game_mechanics_test_cases (mechanic_name,description,version_introduced,test_steps,expected_result,actual_result,pass_fail,tester_name,test_date,related_set_code,priority,severity,bug_id,regression_flag,notes,created_at,updated_at,tags,environment,runtime_seconds) VALUES ('Flying','Allows creature to evade blockers','Core','Play creature with flying, attack opponent','Creature not blocked unless blocker has flying','Creature not blocked','Pass','JohnTester','2023-05-12','M21','High','Medium','BUG001',0,'All good','2023-05-12 14:00:00','2023-05-12 14:00:00','combat,flying','Linux','0.45');
INSERT INTO game_mechanics_test_cases (mechanic_name,description,version_introduced,test_steps,expected_result,actual_result,pass_fail,tester_name,test_date,related_set_code,priority,severity,bug_id,regression_flag,notes,created_at,updated_at,tags,environment,runtime_seconds) VALUES ('Trample','Excess damage dealt to defending player','Core','Attack with trample creature, defender blocks with smaller creature','Excess damage dealt to player','Excess damage not dealt','Fail','JaneTester','2023-05-13','THB','Medium','High','BUG002',1,'Needs fix','2023-05-13 09:30:00','2023-05-13 09:30:00','combat,trample','Windows','0.60');
INSERT INTO game_mechanics_test_cases (mechanic_name,description,version_introduced,test_steps,expected_result,actual_result,pass_fail,tester_name,test_date,related_set_code,priority,severity,bug_id,regression_flag,notes,created_at,updated_at,tags,environment,runtime_seconds) VALUES ('Lifelink','Damage dealt also heals controller','Core','Cast lifelink creature, deal combat damage','Controller gains equal life','Controller life increased correctly','Pass','MikeTester','2023-05-14','RELIC','Low','Low','',0,'No issues','2023-05-14 16:20:00','2023-05-14 16:20:00','combat,life','macOS','0.30');

-- Exchange rates for virtual currencies within the platform
CREATE TABLE virtual_currency_exchange_rates
(
    rate_id INTEGER PRIMARY KEY AUTOINCREMENT,
    currency_from TEXT,
    currency_to TEXT,
    exchange_rate REAL,
    rate_date DATE,
    source TEXT,
    provider TEXT,
    validity_start DATE,
    validity_end DATE,
    is_active INTEGER,
    created_at DATETIME,
    updated_at DATETIME,
    notes TEXT,
    market_segment TEXT,
    region TEXT,
    fee_percent REAL,
    min_transaction_amount REAL,
    max_transaction_amount REAL,
    quote_timestamp DATETIME,
    base_currency TEXT,
    target_currency TEXT
);

INSERT INTO virtual_currency_exchange_rates (currency_from,currency_to,exchange_rate,rate_date,source,provider,validity_start,validity_end,is_active,created_at,updated_at,notes,market_segment,region,fee_percent,min_transaction_amount,max_transaction_amount,quote_timestamp,base_currency,target_currency) VALUES ('Gold','Gem',0.5,'2023-06-01','InGame','RateEngine','2023-06-01','2023-12-31',1,'2023-06-01 08:00:00','2023-06-01 08:00:00','Standard rate','Retail','NA',2.5,10,1000,'2023-06-01 07:59:00','Gold','Gem');
INSERT INTO virtual_currency_exchange_rates (currency_from,currency_to,exchange_rate,rate_date,source,provider,validity_start,validity_end,is_active,created_at,updated_at,notes,market_segment,region,fee_percent,min_transaction_amount,max_transaction_amount,quote_timestamp,base_currency,target_currency) VALUES ('Gem','Gold',2.0,'2023-06-01','InGame','RateEngine','2023-06-01','2023-12-31',1,'2023-06-01 08:05:00','2023-06-01 08:05:00','Inverse rate','Retail','EU',2.5,5,500,'2023-06-01 08:04:00','Gem','Gold');
INSERT INTO virtual_currency_exchange_rates (currency_from,currency_to,exchange_rate,rate_date,source,provider,validity_start,validity_end,is_active,created_at,updated_at,notes,market_segment,region,fee_percent,min_transaction_amount,max_transaction_amount,quote_timestamp,base_currency,target_currency) VALUES ('Gold','Silver',10.0,'2023-06-01','InGame','RateEngine','2023-06-01','2023-12-31',1,'2023-06-01 08:10:00','2023-06-01 08:10:00','Additional rate','Wholesale','ASIA',1.0,20,2000,'2023-06-01 08:09:00','Gold','Silver');

-- Requests for custom artwork commissions
CREATE TABLE artwork_commission_requests
(
    request_id INTEGER PRIMARY KEY AUTOINCREMENT,
    requester_name TEXT,
    requester_email TEXT,
    artwork_type TEXT,
    style_reference TEXT,
    dimensions_cm TEXT,
    deadline_date DATE,
    budget_usd REAL,
    status TEXT,
    assigned_artist_id INTEGER,
    contract_signed INTEGER,
    delivery_method TEXT,
    file_format TEXT,
    color_scheme TEXT,
    art_medium TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    revision_number INTEGER,
    approval_flag INTEGER,
    payment_status TEXT
);

INSERT INTO artwork_commission_requests (requester_name,requester_email,artwork_type,style_reference,dimensions_cm,deadline_date,budget_usd,status,assigned_artist_id,contract_signed,delivery_method,file_format,color_scheme,art_medium,notes,created_at,updated_at,revision_number,approval_flag,payment_status) VALUES ('AliceBrown','alice.brown@example.com','CardIllustration','Fantasy','63x88','2023-09-30',500,'Pending',12,0,'Digital','PNG','Vibrant','DigitalPaint','Initial request','2023-07-01 10:00:00','2023-07-01 10:00:00',0,0,'Unpaid');
INSERT INTO artwork_commission_requests (requester_name,requester_email,artwork_type,style_reference,dimensions_cm,deadline_date,budget_usd,status,assigned_artist_id,contract_signed,delivery_method,file_format,color_scheme,art_medium,notes,created_at,updated_at,revision_number,approval_flag,payment_status) VALUES ('BobCarter','bob.carter@example.com','PromoBanner','Modern','300x100','2023-08-15',200,'Approved',15,1,'Physical','PDF','Monochrome','Vector','Approved and signed','2023-07-05 14:30:00','2023-07-05 14:30:00',1,1,'Paid');
INSERT INTO artwork_commission_requests (requester_name,requester_email,artwork_type,style_reference,dimensions_cm,deadline_date,budget_usd,status,assigned_artist_id,contract_signed,delivery_method,file_format,color_scheme,art_medium,notes,created_at,updated_at,revision_number,approval_flag,payment_status) VALUES ('CharlieDavis','charlie.davis@example.com','ConceptArt','SciFi','1920x1080','2023-10-01',750,'InProgress',18,0,'Digital','JPG','Cool','ConceptSketch','First draft sent','2023-07-10 09:15:00','2023-07-12 16:45:00',2,0,'Pending');

-- Logs of environmental readings taken at venues
CREATE TABLE venue_environmental_logs
(
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    log_date DATE,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    sound_db REAL,
    energy_usage_kwh REAL,
    water_usage_liters REAL,
    waste_kg REAL,
    occupancy_percent REAL,
    hvac_status TEXT,
    lighting_status TEXT,
    sensor_status TEXT,
    notes TEXT,
    recorded_by TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    maintenance_required_flag INTEGER,
    emergency_alert_flag INTEGER
);

INSERT INTO venue_environmental_logs (venue_id,log_date,temperature_c,humidity_percent,co2_ppm,sound_db,energy_usage_kwh,water_usage_liters,waste_kg,occupancy_percent,hvac_status,lighting_status,sensor_status,notes,recorded_by,created_at,updated_at,maintenance_required_flag,emergency_alert_flag) VALUES (1,'2023-07-01',22.0,40.0,420,55.0,1500.5,800.0,12.3,75.0,'Operational','On','OK','Normal day','System','2023-07-01 08:00:00','2023-07-01 08:00:00',0,0);
INSERT INTO venue_environmental_logs (venue_id,log_date,temperature_c,humidity_percent,co2_ppm,sound_db,energy_usage_kwh,water_usage_liters,waste_kg,occupancy_percent,hvac_status,lighting_status,sensor_status,notes,recorded_by,created_at,updated_at,maintenance_required_flag,emergency_alert_flag) VALUES (2,'2023-07-01',24.5,45.0,500,60.0,1800.2,950.0,15.0,85.0,'Operational','Dimmed','OK','High occupancy','System','2023-07-01 08:05:00','2023-07-01 08:05:00',0,0);
INSERT INTO venue_environmental_logs (venue_id,log_date,temperature_c,humidity_percent,co2_ppm,sound_db,energy_usage_kwh,water_usage_liters,waste_kg,occupancy_percent,hvac_status,lighting_status,sensor_status,notes,recorded_by,created_at,updated_at,maintenance_required_flag,emergency_alert_flag) VALUES (3,'2023-07-01',19.8,38.0,380,50.0,1300.0,700.0,10.0,60.0,'Maintenance','On','Fault','HVAC filter needs replacement','Technician','2023-07-01 08:10:00','2023-07-01 08:10:00',1,0);

-- Lore events within the fantasy world setting
CREATE TABLE fantasy_world_events
(
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_name TEXT,
    event_type TEXT,
    start_date DATE,
    end_date DATE,
    location_name TEXT,
    region TEXT,
    description TEXT,
    lore_reference TEXT,
    primary_npc TEXT,
    involved_factions TEXT,
    impact_level TEXT,
    reward_items TEXT,
    quest_id TEXT,
    visibility TEXT,
    required_level INTEGER,
    trigger_conditions TEXT,
    recurring_flag INTEGER,
    cooldown_days INTEGER,
    created_at DATETIME,
    updated_at DATETIME,
    notes TEXT
);

INSERT INTO fantasy_world_events (event_name,event_type,start_date,end_date,location_name,region,description,lore_reference,primary_npc,involved_factions,impact_level,reward_items,quest_id,visibility,required_level,trigger_conditions,recurring_flag,cooldown_days,created_at,updated_at,notes) VALUES ('CelestialConvergence','Astral','2023-09-01','2023-09-07','Skyspire','Highlands','Stars align granting power','LoreBook1','ElderMage','OrderOfLight,ShadowClan','High','ManaCrystal','QST001','Public',10,'FullMoon','0',0,'2023-07-01 12:00:00','2023-07-01 12:00:00','Annual event');
INSERT INTO fantasy_world_events (event_name,event_type,start_date,end_date,location_name,region,description,lore_reference,primary_npc,involved_factions,impact_level,reward_items,quest_id,visibility,required_level,trigger_conditions,recurring_flag,cooldown_days,created_at,updated_at,notes) VALUES ('GoblinUprising','Crisis','2023-10-15','2023-10-20','DuskVale','Lowlands','Goblin tribes revolt','Chronicle42','GoblinChief','GoblinHorde','Medium','GoldCoins','QST045','Restricted',5,'PlayerReachLevel5','1',30,'2023-07-02 09:30:00','2023-07-02 09:30:00','Occurs every month');
INSERT INTO fantasy_world_events (event_name,event_type,start_date,end_date,location_name,region,description,lore_reference,primary_npc,involved_factions,impact_level,reward_items,quest_id,visibility,required_level,trigger_conditions,recurring_flag,cooldown_days,created_at,updated_at,notes) VALUES ('EternalWinter','Seasonal','2023-12-01','2024-02-28','Frostpeak','Northlands','Prolonged winter affects all','WinterTome','FrostQueen','IceClan','Low','WinterHerb','QST099','Public',1,'SeasonStart','1',90,'2023-07-03 15:45:00','2023-07-03 15:45:00','Seasonal event');

-- Fitness related metrics tracked for players
CREATE TABLE player_fitness_metrics
(
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    record_date DATE,
    heart_rate_bpm INTEGER,
    vo2max REAL,
    stamina_score REAL,
    flexibility_score REAL,
    strength_score REAL,
    agility_score REAL,
    body_fat_percent REAL,
    muscle_mass_kg REAL,
    sleep_hours REAL,
    hydration_liters REAL,
    nutrition_score REAL,
    stress_level INTEGER,
    injury_status TEXT,
    recovery_score REAL,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    trainer_id INTEGER,
    session_type TEXT
);

INSERT INTO player_fitness_metrics (player_id,record_date,heart_rate_bpm,vo2max,stamina_score,flexibility_score,strength_score,agility_score,body_fat_percent,muscle_mass_kg,sleep_hours,hydration_liters,nutrition_score,stress_level,injury_status,recovery_score,notes,created_at,updated_at,trainer_id,session_type) VALUES (1001,'2023-07-01',72,45.2,78.5,65.0,80.0,70.0,12.5,68.0,7.5,2.0,85,3,'None',90.0,'Good session','2023-07-01 08:00:00','2023-07-01 08:00:00',501,'Cardio');
INSERT INTO player_fitness_metrics (player_id,record_date,heart_rate_bpm,vo2max,stamina_score,flexibility_score,strength_score,agility_score,body_fat_percent,muscle_mass_kg,sleep_hours,hydration_liters,nutrition_score,stress_level,injury_status,recovery_score,notes,created_at,updated_at,trainer_id,session_type) VALUES (1002,'2023-07-02',68,48.0,80.0,70.0,85.0,75.0,11.0,70.5,8.0,2.5,88,2,'KneePain',85.0,'Recovery needed','2023-07-02 09:15:00','2023-07-02 09:15:00',502,'Strength');
INSERT INTO player_fitness_metrics (player_id,record_date,heart_rate_bpm,vo2max,stamina_score,flexibility_score,strength_score,agility_score,body_fat_percent,muscle_mass_kg,sleep_hours,hydration_liters,nutrition_score,stress_level,injury_status,recovery_score,notes,created_at,updated_at,trainer_id,session_type) VALUES (1003,'2023-07-03',75,44.5,76.0,60.0,78.0,68.0,13.2,66.0,6.5,1.8,80,4,'None',88.0,'Intense workout','2023-07-03 07:45:00','2023-07-03 07:45:00',503,'Mixed');