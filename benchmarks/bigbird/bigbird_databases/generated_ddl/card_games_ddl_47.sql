-- Venue noise level measurements
CREATE TABLE venue_noise_levels
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    measurement_date DATE,
    decibel_level REAL,
    avg_noise REAL,
    max_noise REAL,
    min_noise REAL,
    measurement_device TEXT,
    operator_name TEXT,
    notes TEXT,
    latitude REAL,
    longitude REAL,
    humidity REAL,
    temperature REAL,
    wind_speed REAL,
    sound_source TEXT,
    frequency_range TEXT,
    calibration_date DATE,
    is_verified INTEGER,
    verification_user TEXT,
    external_reference TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO venue_noise_levels (venue_id,measurement_date,decibel_level,avg_noise,max_noise,min_noise,measurement_device,operator_name,notes,latitude,longitude,humidity,temperature,wind_speed,sound_source,frequency_range,calibration_date,is_verified,verification_user,external_reference,created_at,updated_at) VALUES (101,'2025-03-10',78.5,72.3,85.1,65.0,'SoundMeterX','Alice','Routine check',40.7128,-74.0060,45.2,22.1,5.0,'Crowd','20-20000','2025-01-15',1,'Bob','REF001','2025-03-10','2025-03-10');
INSERT INTO venue_noise_levels (venue_id,measurement_date,decibel_level,avg_noise,max_noise,min_noise,measurement_device,operator_name,notes,latitude,longitude,humidity,temperature,wind_speed,sound_source,frequency_range,calibration_date,is_verified,verification_user,external_reference,created_at,updated_at) VALUES (102,'2025-03-12',65.2,60.8,70.4,55.5,'AcousticPro','Charlie','Evening event',34.0522,-118.2437,38.0,19.5,3.2,'Music','100-18000','2025-02-20',0,NULL,'REF002','2025-03-12','2025-03-12');
INSERT INTO venue_noise_levels (venue_id,measurement_date,decibel_level,avg_noise,max_noise,min_noise,measurement_device,operator_name,notes,latitude,longitude,humidity,temperature,wind_speed,sound_source,frequency_range,calibration_date,is_verified,verification_user,external_reference,created_at,updated_at) VALUES (103,'2025-03-15',82.0,78.0,90.0,70.0,'NoiseTracker','Diana','Conference day',51.5074,-0.1278,50.5,21.0,4.5,'Speakers','50-15000','2025-03-01',1,'Eve','REF003','2025-03-15','2025-03-15');

-- Digital asset distribution logs
CREATE TABLE digital_asset_distribution_logs
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    asset_uuid TEXT,
    distribution_type TEXT,
    destination TEXT,
    quantity INTEGER,
    distributed_by TEXT,
    distribution_date DATE,
    checksum TEXT,
    file_size_bytes INTEGER,
    encryption_method TEXT,
    decryption_key TEXT,
    region_code TEXT,
    compliance_status TEXT,
    notes TEXT,
    priority_level INTEGER,
    batch_id TEXT,
    receipt_timestamp DATE,
    is_successful INTEGER,
    failure_reason TEXT,
    processed_by TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO digital_asset_distribution_logs (asset_uuid,distribution_type,destination,quantity,distributed_by,distribution_date,checksum,file_size_bytes,encryption_method,decryption_key,region_code,compliance_status,notes,priority_level,batch_id,receipt_timestamp,is_successful,failure_reason,processed_by,created_at,updated_at) VALUES ('uuid-001','Download','ServerA',1,'System','2025-02-20','abc123',1048576,'AES256','key001','US','Compliant','Initial rollout',5,'BATCH100','2025-02-20',1,NULL,'Admin','2025-02-20','2025-02-20');
INSERT INTO digital_asset_distribution_logs (asset_uuid,distribution_type,destination,quantity,distributed_by,distribution_date,checksum,file_size_bytes,encryption_method,decryption_key,region_code,compliance_status,notes,priority_level,batch_id,receipt_timestamp,is_successful,failure_reason,processed_by,created_at,updated_at) VALUES ('uuid-002','Sync','BackupNode',2,'BackupService','2025-02-22','def456',2097152,'RSA2048','key002','EU','Compliant','Nightly sync',3,'BATCH101','2025-02-22',1,NULL,'BackupAdmin','2025-02-22','2025-02-22');
INSERT INTO digital_asset_distribution_logs (asset_uuid,distribution_type,destination,quantity,distributed_by,distribution_date,checksum,file_size_bytes,encryption_method,decryption_key,region_code,compliance_status,notes,priority_level,batch_id,receipt_timestamp,is_successful,failure_reason,processed_by,created_at,updated_at) VALUES ('uuid-003','Archive','ColdStorage',1,'ArchiveTool','2025-02-25','ghi789',5242880,'AES128','key003','APAC','Pending','Awaiting verification',1,'BATCH102','2025-02-25',0,'Checksum mismatch','ArchiveAdmin','2025-02-25','2025-02-25');

-- Esports match history
CREATE TABLE esports_match_history
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    match_number INTEGER,
    team_a_id INTEGER,
    team_b_id INTEGER,
    team_a_score INTEGER,
    team_b_score INTEGER,
    winner_team_id INTEGER,
    match_date DATE,
    map_name TEXT,
    match_duration_seconds INTEGER,
    audience_rating REAL,
    vod_url TEXT,
    highlights_url TEXT,
    referee_id INTEGER,
    stage TEXT,
    best_of INTEGER,
    overtime INTEGER,
    penalties INTEGER,
    meta_version TEXT,
    patch_number TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO esports_match_history (tournament_id,match_number,team_a_id,team_b_id,team_a_score,team_b_score,winner_team_id,match_date,map_name,match_duration_seconds,audience_rating,vod_url,highlights_url,referee_id,stage,best_of,overtime,penalties,meta_version,patch_number,created_at,updated_at) VALUES (10,1,2001,2002,2,1,2001,'2025-04-01','Dust2',1800,4.5,'http://vod1.com','http://hl1.com',301,'Quarterfinal',3,0,0,'v12','1.2.3','2025-04-01','2025-04-01');
INSERT INTO esports_match_history (tournament_id,match_number,team_a_id,team_b_id,team_a_score,team_b_score,winner_team_id,match_date,map_name,match_duration_seconds,audience_rating,vod_url,highlights_url,referee_id,stage,best_of,overtime,penalties,meta_version,patch_number,created_at,updated_at) VALUES (10,2,2003,2004,0,2,2004,'2025-04-02','Inferno',2100,4.8,'http://vod2.com','http://hl2.com',302,'Quarterfinal',3,1,0,'v12','1.2.3','2025-04-02','2025-04-02');
INSERT INTO esports_match_history (tournament_id,match_number,team_a_id,team_b_id,team_a_score,team_b_score,winner_team_id,match_date,map_name,match_duration_seconds,audience_rating,vod_url,highlights_url,referee_id,stage,best_of,overtime,penalties,meta_version,patch_number,created_at,updated_at) VALUES (10,3,2005,2006,2,2,2005,'2025-04-03','Mirage',2400,4.2,'http://vod3.com','http://hl3.com',303,'Quarterfinal',3,1,2,'v12','1.2.3','2025-04-03','2025-04-03');

-- Fantasy world event NPCs
CREATE TABLE fantasy_world_event_npcs
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    npc_id INTEGER,
    role TEXT,
    alignment TEXT,
    motivation TEXT,
    dialogue_script TEXT,
    spawn_location TEXT,
    spawn_time DATE,
    despawn_time DATE,
    health_points INTEGER,
    attack_power INTEGER,
    defense INTEGER,
    speed INTEGER,
    intelligence INTEGER,
    charisma INTEGER,
    loot_table TEXT,
    is_boss INTEGER,
    quest_id INTEGER,
    associated_faction TEXT,
    description TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO fantasy_world_event_npcs (event_id,npc_id,role,alignment,motivation,dialogue_script,spawn_location,spawn_time,despawn_time,health_points,attack_power,defense,speed,intelligence,charisma,loot_table,is_boss,quest_id,associated_faction,description,created_at,updated_at) VALUES (501,9001,'Guardian','Lawful','Protect the relic','Welcome traveler','Temple of Dawn','2025-05-01','2025-05-07',1500,250,200,75,180,120,'GoldSword,HealthPotion',1,3001,'OrderOfLight','A towering sentinel of light', '2025-05-01','2025-05-01');
INSERT INTO fantasy_world_event_npcs (event_id,npc_id,role,alignment,motivation,dialogue_script,spawn_location,spawn_time,despawn_time,health_points,attack_power,defense,speed,intelligence,charisma,loot_table,is_boss,quest_id,associated_faction,description,created_at,updated_at) VALUES (502,9002,'Merchant','Neutral','Trade rare goods','Fine wares for a fine price','Market Square','2025-05-03','2025-06-01',500,50,30,40,90,80,'RareGem,SilkCloth',0,3002,'GuildOfTraders','A savvy trader with exotic items', '2025-05-03','2025-05-03');
INSERT INTO fantasy_world_event_npcs (event_id,npc_id,role,alignment,motivation,dialogue_script,spawn_location,spawn_time,despawn_time,health_points,attack_power,defense,speed,intelligence,charisma,loot_table,is_boss,quest_id,associated_faction,description,created_at,updated_at) VALUES (503,9003,'Bandit','Chaotic','Steal riches','Your gold or your life','Forest Outpost','2025-05-05','2025-05-20',800,120,80,60,110,70,'StolenCoin,IronDagger',0,3003,'ShadowClan','A sneaky bandit leader', '2025-05-05','2025-05-05');

-- Marketplace fee structures
CREATE TABLE marketplace_fee_structures
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    fee_type TEXT,
    calculation_method TEXT,
    flat_fee REAL,
    percent_fee REAL,
    currency TEXT,
    effective_date DATE,
    expiration_date DATE,
    applies_to TEXT,
    region TEXT,
    tier_level INTEGER,
    min_transaction_amount REAL,
    max_transaction_amount REAL,
    description TEXT,
    is_active INTEGER,
    created_by TEXT,
    reviewed_by TEXT,
    review_date DATE,
    compliance_code TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO marketplace_fee_structures (fee_type,calculation_method,flat_fee,percent_fee,currency,effective_date,expiration_date,applies_to,region,tier_level,min_transaction_amount,max_transaction_amount,description,is_active,created_by,reviewed_by,review_date,compliance_code,notes,created_at,updated_at) VALUES ('Listing','Flat','0.30','0','USD','2025-01-01','2025-12-31','AllListings','global',1,0,10000,'Standard listing fee',1,'FinanceTeam','ComplianceTeam','2025-01-02','COM001','No notes','2025-01-01','2025-01-01');
INSERT INTO marketplace_fee_structures (fee_type,calculation_method,flat_fee,percent_fee,currency,effective_date,expiration_date,applies_to,region,tier_level,min_transaction_amount,max_transaction_amount,description,is_active,created_by,reviewed_by,review_date,compliance_code,notes,created_at,updated_at) VALUES ('Transaction','Percent','0','2.5','USD','2025-02-01','2025-12-31','AllTransactions','US',2,10,50000,'Standard transaction fee',1,'FinanceTeam','ComplianceTeam','2025-02-02','COM002','Applied to digital goods','2025-02-01','2025-02-01');
INSERT INTO marketplace_fee_structures (fee_type,calculation_method,flat_fee,percent_fee,currency,effective_date,expiration_date,applies_to,region,tier_level,min_transaction_amount,max_transaction_amount,description,is_active,created_by,reviewed_by,review_date,compliance_code,notes,created_at,updated_at) VALUES ('Premium','Flat','5','0','USD','2025-03-01','2025-12-31','PremiumSellers','EU',3,1000,100000,'Premium service fee',0,'FinanceTeam','ComplianceTeam','2025-03-02','COM003','Inactive for review','2025-03-01','2025-03-01');

-- Game mechanics tuning parameters
CREATE TABLE game_mechanics_tuning_parameters
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    parameter_name TEXT,
    default_value REAL,
    current_value REAL,
    min_value REAL,
    max_value REAL,
    description TEXT,
    affected_mechanics TEXT,
    change_log TEXT,
    last_modified_by TEXT,
    last_modified_date DATE,
    is_experimental INTEGER,
    experiment_id INTEGER,
    source_module TEXT,
    related_patch TEXT,
    impact_score REAL,
    priority INTEGER,
    is_deprecated INTEGER,
    deprecated_since DATE,
    comments TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO game_mechanics_tuning_parameters (parameter_name,default_value,current_value,min_value,max_value,description,affected_mechanics,change_log,last_modified_by,last_modified_date,is_experimental,experiment_id,source_module,related_patch,impact_score,priority,is_deprecated,deprecated_since,comments,created_at,updated_at) VALUES ('CritChance','5.0','6.2','0.0','100.0','Critical hit probability','Combat','Increased after patch','DevA','2025-04-01',0,NULL,'CombatCore','1.3.0',0.8,10,0,NULL,'No issues','2025-04-01','2025-04-01');
INSERT INTO game_mechanics_tuning_parameters (parameter_name,default_value,current_value,min_value,max_value,description,affected_mechanics,change_log,last_modified_by,last_modified_date,is_experimental,experiment_id,source_module,related_patch,impact_score,priority,is_deprecated,deprecated_since,comments,created_at,updated_at) VALUES ('ManaRegenRate','2.5','3.0','0.0','10.0','Mana regeneration per second','Resource','Adjusted for balance','DevB','2025-04-05',1,101,'ResourceEngine','1.3.1',0.6,8,0,NULL,'Experimental','2025-04-05','2025-04-05');
INSERT INTO game_mechanics_tuning_parameters (parameter_name,default_value,current_value,min_value,max_value,description,affected_mechanics,change_log,last_modified_by,last_modified_date,is_experimental,experiment_id,source_module,related_patch,impact_score,priority,is_deprecated,deprecated_since,comments,created_at,updated_at) VALUES ('EnemySpawnRate','1.0','0.9','0.5','2.0','Frequency of enemy spawns','AI','Reduced for early game','DevC','2025-04-10',0,NULL,'AISystem','1.3.2',0.4,5,0,NULL,'Stable','2025-04-10','2025-04-10');

-- Collector trade history
CREATE TABLE collector_trade_history
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    collector_id INTEGER,
    trade_partner_id INTEGER,
    trade_date DATE,
    items_given TEXT,
    items_received TEXT,
    trade_value_estimate REAL,
    trade_status TEXT,
    notes TEXT,
    verification_user TEXT,
    verification_date DATE,
    is_disputed INTEGER,
    dispute_reason TEXT,
    resolution_date DATE,
    resolved_by TEXT,
    trade_type TEXT,
    shipping_method TEXT,
    tracking_number TEXT,
    insurance_value REAL,
    tax_applied REAL,
    created_at DATE,
    updated_at DATE
);

INSERT INTO collector_trade_history (collector_id,trade_partner_id,trade_date,items_given,items_received,trade_value_estimate,trade_status,notes,verification_user,verification_date,is_disputed,dispute_reason,resolution_date,resolved_by,trade_type,shipping_method,tracking_number,insurance_value,tax_applied,created_at,updated_at) VALUES (20001,20002,'2025-01-15','CardA|CardB','CardC|CardD',1500.0,'Completed','Smooth trade','Verifier1','2025-01-16',0,NULL,NULL,NULL,'Direct','Courier','TRK12345',200.0,75.0,'2025-01-15','2025-01-15');
INSERT INTO collector_trade_history (collector_id,trade_partner_id,trade_date,items_given,items_received,trade_value_estimate,trade_status,notes,verification_user,verification_date,is_disputed,dispute_reason,resolution_date,resolved_by,trade_type,shipping_method,tracking_number,insurance_value,tax_applied,created_at,updated_at) VALUES (20003,20004,'2025-02-10','CardE','CardF|CardG',800.0,'Pending','Waiting for shipment','Verifier2','2025-02-11',1,'Item missing',NULL,NULL,'Mail','Postal','TRK67890',150.0,30.0,'2025-02-10','2025-02-10');
INSERT INTO collector_trade_history (collector_id,trade_partner_id,trade_date,items_given,items_received,trade_value_estimate,trade_status,notes,verification_user,verification_date,is_disputed,dispute_reason,resolution_date,resolved_by,trade_type,shipping_method,tracking_number,insurance_value,tax_applied,created_at,updated_at) VALUES (20005,20006,'2025-03-05','CardH|CardI','CardJ',1200.0,'Cancelled','Buyer withdrew','Verifier3','2025-03-06',0,NULL,NULL,NULL,'Online','Digital','',0.0,0.0,'2025-03-05','2025-03-05');

-- API key usage summary
CREATE TABLE api_key_usage_summary
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    api_key_id INTEGER,
    month_year TEXT,
    total_requests INTEGER,
    successful_requests INTEGER,
    failed_requests INTEGER,
    average_latency_ms REAL,
    peak_latency_ms REAL,
    unique_ips TEXT,
    data_transferred_mb REAL,
    error_rate_percent REAL,
    throttled_requests INTEGER,
    quota_remaining INTEGER,
    last_used DATE,
    created_at DATE,
    updated_at DATE,
    notes TEXT,
    is_active INTEGER,
    admin_comment TEXT,
    compliance_flag INTEGER,
    reviewed_by TEXT
);

INSERT INTO api_key_usage_summary (api_key_id,month_year,total_requests,successful_requests,failed_requests,average_latency_ms,peak_latency_ms,unique_ips,data_transferred_mb,error_rate_percent,throttled_requests,quota_remaining,last_used,created_at,updated_at,notes,is_active,admin_comment,compliance_flag,reviewed_by) VALUES (101,'2024-12',5000,4800,200,120.5,250.0,'192.168.1.1|192.168.1.2',350.0,4.0,10,500,'2024-12-31','2024-12-01','2024-12-31','All good',1,'No issues',0,'ComplianceTeam');
INSERT INTO api_key_usage_summary (api_key_id,month_year,total_requests,successful_requests,failed_requests,average_latency_ms,peak_latency_ms,unique_ips,data_transferred_mb,error_rate_percent,throttled_requests,quota_remaining,last_used,created_at,updated_at,notes,is_active,admin_comment,compliance_flag,reviewed_by) VALUES (102,'2024-12',8000,7500,500,150.2,300.0,'10.0.0.1|10.0.0.2',560.0,6.25,20,200,'2024-12-30','2024-12-01','2024-12-31','High load observed',1,'Monitor usage',1,'AuditTeam');
INSERT INTO api_key_usage_summary (api_key_id,month_year,total_requests,successful_requests,failed_requests,average_latency_ms,peak_latency_ms,unique_ips,data_transferred_mb,error_rate_percent,throttled_requests,quota_remaining,last_used,created_at,updated_at,notes,is_active,admin_comment,compliance_flag,reviewed_by) VALUES (103,'2024-12',3000,2950,50,90.0,180.0,'172.16.0.1',210.0,1.67,5,800,'2024-12-29','2024-12-01','2024-12-31','Stable performance',1,'OK',0,'ComplianceTeam');

-- Venue environmental logs
CREATE TABLE venue_environmental_logs
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    log_timestamp DATE,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    sound_level_db REAL,
    light_lux REAL,
    vibration_level REAL,
    air_quality_index INTEGER,
    pm2_5 REAL,
    pm10 REAL,
    ozone_ppb REAL,
    nitrogen_dioxide_ppb REAL,
    sulfur_dioxide_ppb REAL,
    lead_ppb REAL,
    sensor_status TEXT,
    maintenance_required INTEGER,
    maintenance_notes TEXT,
    logged_by TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO venue_environmental_logs (venue_id,log_timestamp,temperature_c,humidity_percent,co2_ppm,sound_level_db,light_lux,vibration_level,air_quality_index,pm2_5,pm10,ozone_ppb,nitrogen_dioxide_ppb,sulfur_dioxide_ppb,lead_ppb,sensor_status,maintenance_required,maintenance_notes,logged_by,created_at,updated_at) VALUES (101,'2025-05-01',22.5,45.0,600,55.0,300.0,0.02,30,12.5,25.0,15.0,20.0,5.0,0.1,'OK',0,'','SystemA','2025-05-01','2025-05-01');
INSERT INTO venue_environmental_logs (venue_id,log_timestamp,temperature_c,humidity_percent,co2_ppm,sound_level_db,light_lux,vibration_level,air_quality_index,pm2_5,pm10,ozone_ppb,nitrogen_dioxide_ppb,sulfur_dioxide_ppb,lead_ppb,sensor_status,maintenance_required,maintenance_notes,logged_by,created_at,updated_at) VALUES (102,'2025-05-01',19.0,50.0,750,60.0,500.0,0.03,40,15.0,30.0,20.0,25.0,6.0,0.2,'OK',1,'Sensor calibration needed','SystemB','2025-05-01','2025-05-01');
INSERT INTO venue_environmental_logs (venue_id,log_timestamp,temperature_c,humidity_percent,co2_ppm,sound_level_db,light_lux,vibration_level,air_quality_index,pm2_5,pm10,ozone_ppb,nitrogen_dioxide_ppb,sulfur_dioxide_ppb,lead_ppb,sensor_status,maintenance_required,maintenance_notes,logged_by,created_at,updated_at) VALUES (103,'2025-05-01',24.0,40.0,500,50.0,250.0,0.015,25,10.0,20.0,12.0,18.0,4.0,0.05,'OK',0,'','SystemC','2025-05-01','2025-05-01');

-- Digital collectible events
CREATE TABLE digital_collectible_events
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    event_name TEXT,
    start_date DATE,
    end_date DATE,
    total_participants INTEGER,
    prize_pool REAL,
    entry_fee REAL,
    eligibility_criteria TEXT,
    featured_items TEXT,
    sponsor_list TEXT,
    event_status TEXT,
    winner_collectible_id TEXT,
    winning_player_id INTEGER,
    event_description TEXT,
    official_rules_url TEXT,
    stream_url TEXT,
    max_entries_per_player INTEGER,
    registration_deadline DATE,
    created_at DATE,
    updated_at DATE,
    notes TEXT,
    is_public INTEGER
);

INSERT INTO digital_collectible_events (event_name,start_date,end_date,total_participants,prize_pool,entry_fee,eligibility_criteria,featured_items,sponsor_list,event_status,winner_collectible_id,winning_player_id,event_description,official_rules_url,stream_url,max_entries_per_player,registration_deadline,created_at,updated_at,notes,is_public) VALUES ('Spring Fest','2025-04-01','2025-04-15',250,5000.0,10.0','Open to all','ItemA|ItemB','SponsorX|SponsorY','Active','col-1001',30001,'A seasonal showcase of digital cards','http://rules.com/spring','http://stream.com/spring',5,'2025-03-25','2025-03-01','2025-03-01','First edition','1');
INSERT INTO digital_collectible_events (event_name,start_date,end_date,total_participants,prize_pool,entry_fee,eligibility_criteria,featured_items,sponsor_list,event_status,winner_collectible_id,winning_player_id,event_description,official_rules_url,stream_url,max_entries_per_player,registration_deadline,created_at,updated_at,notes,is_public) VALUES ('Champions Cup','2025-06-01','2025-06-30',100,20000.0,50.0','Pro players only','ItemC|ItemD','SponsorZ','Pending','col-2002',30123,'High‑stakes competition for top collectors','http://rules.com/champions','http://stream.com/champions',2,'2025-05-20','2025-05-01','2025-05-01','Limited slots','1');
INSERT INTO digital_collectible_events (event_name,start_date,end_date,total_participants,prize_pool,entry_fee,eligibility_criteria,featured_items,sponsor_list,event_status,winner_collectible_id,winning_player_id,event_description,official_rules_url,stream_url,max_entries_per_player,registration_deadline,created_at,updated_at,notes,is_public) VALUES ('Community Challenge','2025-08-10','2025-08-20',500,0.0,0.0','Community members','ItemE','SponsorA','Completed','col-3005',30245,'Open challenge encouraging creative deck builds','http://rules.com/community','http://stream.com/community',1,'2025-08-01','2025-07-01','2025-07-01','No entry fee','1');