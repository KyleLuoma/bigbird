-- Player activity log table
CREATE TABLE player_activity_log (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    session_id TEXT,
    activity_type TEXT,
    activity_timestamp TEXT,
    device_type TEXT,
    os_version TEXT,
    app_version TEXT,
    ip_address TEXT,
    geo_country TEXT,
    geo_city TEXT,
    latency_ms INTEGER,
    errors_count INTEGER,
    screen_name TEXT,
    action_detail TEXT,
    battery_level INTEGER,
    network_type TEXT,
    location_lat REAL,
    location_long REAL,
    session_duration_sec INTEGER,
    notes TEXT
);

INSERT INTO player_activity_log (player_id,session_id,activity_type,activity_timestamp,device_type,os_version,app_version,ip_address,geo_country,geo_city,latency_ms,errors_count,screen_name,action_detail,battery_level,network_type,location_lat,location_long,session_duration_sec,notes) VALUES (101,'sessA','login','2025-03-01 08:15:00','mobile','iOS14','2.1.0','10.0.0.1','US','Chicago',50,0,'Home','TapLogin',90,'wifi',41.8781,-87.6298,1800,'First login of day');
INSERT INTO player_activity_log (player_id,session_id,activity_type,activity_timestamp,device_type,os_version,app_version,ip_address,geo_country,geo_city,latency_ms,errors_count,screen_name,action_detail,battery_level,network_type,location_lat,location_long,session_duration_sec,notes) VALUES (202,'sessB','match_start','2025-03-01 09:00:00','desktop','Windows10','2.1.0','10.0.0.2','CA','Toronto',30,1,'MatchLobby','EnterQueue',75,'ethernet',43.6532,-79.3832,2500,'Queued for ranked');
INSERT INTO player_activity_log (player_id,session_id,activity_type,activity_timestamp,device_type,os_version,app_version,ip_address,geo_country,geo_city,latency_ms,errors_count,screen_name,action_detail,battery_level,network_type,location_lat,location_long,session_duration_sec,notes) VALUES (303,'sessC','purchase','2025-03-01 10:20:00','tablet','Android11','2.1.0','10.0.0.3','GB','London',70,0,'Store','BuyPack',60,'wifi',51.5074,-0.1278,300,'Bought booster pack');

-- Game server metrics table
CREATE TABLE game_server_metrics (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    server_id TEXT,
    metric_timestamp TEXT,
    cpu_usage_percent REAL,
    memory_usage_mb REAL,
    disk_io_mb_s REAL,
    network_in_mb_s REAL,
    network_out_mb_s REAL,
    active_players INTEGER,
    match_queue_length INTEGER,
    average_match_duration_sec INTEGER,
    error_rate_percent REAL,
    cpu_temp_c REAL,
    gpu_usage_percent REAL,
    thread_count INTEGER,
    uptime_seconds INTEGER,
    version TEXT,
    region TEXT,
    data_center TEXT,
    maintenance_flag INTEGER,
    notes TEXT
);

INSERT INTO game_server_metrics (server_id,metric_timestamp,cpu_usage_percent,memory_usage_mb,disk_io_mb_s,network_in_mb_s,network_out_mb_s,active_players,match_queue_length,average_match_duration_sec,error_rate_percent,cpu_temp_c,gpu_usage_percent,thread_count,uptime_seconds,version,region,data_center,maintenance_flag,notes) VALUES ('srv01','2025-03-01 08:00:00',55.2,10240,120.5,500.3,450.1,1200,35,780,0.2,68.5,30.1,64,864000,'v3.4.1','NA','DC1',0,'Normal operation');
INSERT INTO game_server_metrics (server_id,metric_timestamp,cpu_usage_percent,memory_usage_mb,disk_io_mb_s,network_in_mb_s,network_out_mb_s,active_players,match_queue_length,average_match_duration_sec,error_rate_percent,cpu_temp_c,gpu_usage_percent,thread_count,uptime_seconds,version,region,data_center,maintenance_flag,notes) VALUES ('srv02','2025-03-01 09:00:00',72.8,15800,200.1,750.0,720.5,1800,50,800,0.5,74.2,45.3,80,432000,'v3.4.1','EU','DC2',0,'High load');
INSERT INTO game_server_metrics (server_id,metric_timestamp,cpu_usage_percent,memory_usage_mb,disk_io_mb_s,network_in_mb_s,network_out_mb_s,active_players,match_queue_length,average_match_duration_sec,error_rate_percent,cpu_temp_c,gpu_usage_percent,thread_count,uptime_seconds,version,region,data_center,maintenance_flag,notes) VALUES ('srv03','2025-03-01 10:00:00',60.0,12000,150.0,600.0,580.0,1500,40,790,0.1,70.0,35.0,72,648000,'v3.4.1','ASIA','DC3',1,'Scheduled maintenance');

-- Marketplace transaction audit table
CREATE TABLE marketplace_transaction_audit (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    transaction_id TEXT,
    buyer_user_id INTEGER,
    seller_user_id INTEGER,
    card_uuid TEXT,
    sale_price_usd REAL,
    currency TEXT,
    transaction_timestamp TEXT,
    payment_method TEXT,
    shipping_address_id INTEGER,
    delivery_status TEXT,
    fee_percent REAL,
    platform_fee_usd REAL,
    tax_amount_usd REAL,
    discount_code TEXT,
    discount_amount_usd REAL,
    order_source TEXT,
    device_type TEXT,
    ip_address TEXT,
    fraud_score REAL,
    notes TEXT
);

INSERT INTO marketplace_transaction_audit (transaction_id,buyer_user_id,seller_user_id,card_uuid,sale_price_usd,currency,transaction_timestamp,payment_method,shipping_address_id,delivery_status,fee_percent,platform_fee_usd,tax_amount_usd,discount_code,discount_amount_usd,order_source,device_type,ip_address,fraud_score,notes) VALUES ('tx1001',501,702,'uuidA1B2',45.99,'USD','2025-03-01 11:00:00','credit_card',3001,'shipped',5.0,2.30,3.20,'SPRING10',4.60,'web','desktop','192.168.10.1',12.5,'Standard sale');
INSERT INTO marketplace_transaction_audit (transaction_id,buyer_user_id,seller_user_id,card_uuid,sale_price_usd,currency,transaction_timestamp,payment_method,shipping_address_id,delivery_status,fee_percent,platform_fee_usd,tax_amount_usd,discount_code,discount_amount_usd,order_source,device_type,ip_address,fraud_score,notes) VALUES ('tx1002',502,703,'uuidC3D4',29.99,'USD','2025-03-01 12:15:00','paypal',3002,'delivered',5.0,1.50,2.40,'',0.00,'mobile','mobile','192.168.10.2',8.0,'Promo not applied');
INSERT INTO marketplace_transaction_audit (transaction_id,buyer_user_id,seller_user_id,card_uuid,sale_price_usd,currency,transaction_timestamp,payment_method,shipping_address_id,delivery_status,fee_percent,platform_fee_usd,tax_amount_usd,discount_code,discount_amount_usd,order_source,device_type,ip_address,fraud_score,notes) VALUES ('tx1003',503,704,'uuidE5F6',99.99,'USD','2025-03-01 13:30:00','crypto',3003,'pending',5.0,5.00,7.00,'CRYPTO5',5.00,'api','desktop','192.168.10.3',20.0,'High value transaction');

-- Sponsorship event metrics table
CREATE TABLE sponsorship_event_metrics (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    event_id INTEGER,
    impression_count INTEGER,
    click_count INTEGER,
    conversion_count INTEGER,
    spend_usd REAL,
    cpm_usd REAL,
    cpc_usd REAL,
    ctr_percent REAL,
    conversion_rate_percent REAL,
    engagement_time_sec INTEGER,
    audience_segment TEXT,
    device_type TEXT,
    geographic_region TEXT,
    start_date TEXT,
    end_date TEXT,
    creative_type TEXT,
    ad_format TEXT,
    campaign_name TEXT,
    notes TEXT
);

INSERT INTO sponsorship_event_metrics (sponsor_id,event_id,impression_count,click_count,conversion_count,spend_usd,cpm_usd,cpc_usd,ctr_percent,conversion_rate_percent,engagement_time_sec,audience_segment,device_type,geographic_region,start_date,end_date,creative_type,ad_format,campaign_name,notes) VALUES (10,2001,50000,2500,300,12000.00,0.24,4.80,5.0,12.0,30,'core_players','mobile','NA','2025-02-25','2025-03-05','video','interstitial','Spring Blast','Successful campaign');
INSERT INTO sponsorship_event_metrics (sponsor_id,event_id,impression_count,click_count,conversion_count,spend_usd,cpm_usd,cpc_usd,ctr_percent,conversion_rate_percent,engagement_time_sec,audience_segment,device_type,geographic_region,start_date,end_date,creative_type,ad_format,campaign_name,notes) VALUES (11,2002,75000,3000,500,20000.00,0.27,6.67,4.0,16.7,45,'casual_players','desktop','EU','2025-03-01','2025-03-10','banner','static','Winter Promo','Higher spend');
INSERT INTO sponsorship_event_metrics (sponsor_id,event_id,impression_count,click_count,conversion_count,spend_usd,cpm_usd,cpc_usd,ctr_percent,conversion_rate_percent,engagement_time_sec,audience_segment,device_type,geographic_region,start_date,end_date,creative_type,ad_format,campaign_name,notes) VALUES (12,2003,60000,1800,250,15000.00,0.25,8.33,3.0,13.9,25,'new_players','tablet','ASIA','2025-03-05','2025-03-15','native','video','Summer Launch','Balanced metrics');

-- Venue environment sensors table
CREATE TABLE venue_environment_sensors (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    sensor_id TEXT,
    sensor_type TEXT,
    reading_timestamp TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    noise_db REAL,
    light_lux REAL,
    motion_detected INTEGER,
    battery_voltage REAL,
    firmware_version TEXT,
    status TEXT,
    latitude REAL,
    longitude REAL,
    installation_date TEXT,
    last_maintenance_date TEXT,
    manufacturer TEXT,
    model_number TEXT,
    notes TEXT
);

INSERT INTO venue_environment_sensors (venue_id,sensor_id,sensor_type,reading_timestamp,temperature_c,humidity_percent,co2_ppm,noise_db,light_lux,motion_detected,battery_voltage,firmware_version,status,latitude,longitude,installation_date,last_maintenance_date,manufacturer,model_number,notes) VALUES (1,'SEN001','temperature','2025-03-01 08:00:00',22.5,45.0,420,55.2,300,0,3.7,'1.0.0','online',40.7128,-74.0060,'2024-01-15','2025-02-20','EnviroTech','T100','Main hall sensor');
INSERT INTO venue_environment_sensors (venue_id,sensor_id,sensor_type,reading_timestamp,temperature_c,humidity_percent,co2_ppm,noise_db,light_lux,motion_detected,battery_voltage,firmware_version,status,latitude,longitude,installation_date,last_maintenance_date,manufacturer,model_number,notes) VALUES (2,'SEN002','air_quality','2025-03-01 09:00:00',21.0,50.0,500,48.0,250,1,3.6,'1.2.1','online',34.0522,-118.2437,'2024-02-10','2025-02-25','AirSense','AQ200','Conference room A');
INSERT INTO venue_environment_sensors (venue_id,sensor_id,sensor_type,reading_timestamp,temperature_c,humidity_percent,co2_ppm,noise_db,light_lux,motion_detected,battery_voltage,firmware_version,status,latitude,longitude,installation_date,last_maintenance_date,manufacturer,model_number,notes) VALUES (3,'SEN003','noise','2025-03-01 10:00:00',23.0,40.0,350,70.5,400,0,3.8,'2.0.0','online',51.5074,-0.1278,'2024-03-05','2025-02-28','SoundMetrics','N300','Lobby area');

-- Digital asset versioning table
CREATE TABLE digital_asset_versioning (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    asset_id TEXT,
    asset_type TEXT,
    version_number INTEGER,
    created_timestamp TEXT,
    created_by_user_id INTEGER,
    file_path TEXT,
    file_size_bytes INTEGER,
    checksum_sha256 TEXT,
    mime_type TEXT,
    resolution TEXT,
    duration_sec INTEGER,
    bitrate_kbps INTEGER,
    codec TEXT,
    is_active INTEGER,
    deprecated_flag INTEGER,
    notes TEXT,
    related_asset_id TEXT,
    tags TEXT,
    metadata_json TEXT
);

INSERT INTO digital_asset_versioning (asset_id,asset_type,version_number,created_timestamp,created_by_user_id,file_path,file_size_bytes,checksum_sha256,mime_type,resolution,duration_sec,bitrate_kbps,codec,is_active,deprecated_flag,notes,related_asset_id,tags,metadata_json) VALUES ('A001','artwork',1,'2025-02-20 12:00:00',1001,'/assets/art/A001_v1.png',204800,'ab12cd34ef56','image/png','1920x1080',NULL,NULL,'png',1,0,'Initial upload',NULL,'illustration,highres','{}');
INSERT INTO digital_asset_versioning (asset_id,asset_type,version_number,created_timestamp,created_by_user_id,file_path,file_size_bytes,checksum_sha256,mime_type,resolution,duration_sec,bitrate_kbps,codec,is_active,deprecated_flag,notes,related_asset_id,tags,metadata_json) VALUES ('A001','artwork',2,'2025-03-01 09:30:00',1002,'/assets/art/A001_v2.png',307200,'cd34ef56ab12','image/png','3840x2160',NULL,NULL,'png',1,0,'High‑resolution version',NULL,'illustration,ultrahd','{}');
INSERT INTO digital_asset_versioning (asset_id,asset_type,version_number,created_timestamp,created_by_user_id,file_path,file_size_bytes,checksum_sha256,mime_type,resolution,duration_sec,bitrate_kbps,codec,is_active,deprecated_flag,notes,related_asset_id,tags,metadata_json) VALUES ('V001','video',1,'2025-02-25 14:45:00',1003,'/assets/video/V001_v1.mp4',5242880,'ef56ab12cd34','video/mp4','1920x1080',180,2500,'h264',1,0,'Release trailer',NULL,'trailer,hd','{}');

-- Tournament match statistics table
CREATE TABLE tournament_match_statistics (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    match_id TEXT,
    tournament_id INTEGER,
    round_number INTEGER,
    player1_id INTEGER,
    player2_id INTEGER,
    winner_id INTEGER,
    start_timestamp TEXT,
    end_timestamp TEXT,
    total_turns INTEGER,
    average_turn_time_sec REAL,
    cards_played_player1 INTEGER,
    cards_played_player2 INTEGER,
    deck_id_player1 TEXT,
    deck_id_player2 TEXT,
    win_condition TEXT,
    notes TEXT,
    spectator_count INTEGER,
    stream_url TEXT,
    is_live INTEGER,
    additional_info TEXT
);

INSERT INTO tournament_match_statistics (match_id,tournament_id,round_number,player1_id,player2_id,winner_id,start_timestamp,end_timestamp,total_turns,average_turn_time_sec,cards_played_player1,cards_played_player2,deck_id_player1,deck_id_player2,win_condition,notes,spectator_count,stream_url,is_live,additional_info) VALUES ('M1001',501,1,1001,1002,1001,'2025-03-01 11:00:00','2025-03-01 11:45:00',30,90.5,45,43,'D001','D002','life_loss','Close match',250,'http://stream.example.com/m1001',1,'No penalties');
INSERT INTO tournament_match_statistics (match_id,tournament_id,round_number,player1_id,player2_id,winner_id,start_timestamp,end_timestamp,total_turns,average_turn_time_sec,cards_played_player1,cards_played_player2,deck_id_player1,deck_id_player2,win_condition,notes,spectator_count,stream_url,is_live,additional_info) VALUES ('M1002',502,2,1003,1004,1004,'2025-03-01 12:10:00','2025-03-01 12:55:00',28,95.0,44,46,'D003','D004','alternative','Deck tech win',300,'http://stream.example.com/m1002',1,'Special rules applied');
INSERT INTO tournament_match_statistics (match_id,tournament_id,round_number,player1_id,player2_id,winner_id,start_timestamp,end_timestamp,total_turns,average_turn_time_sec,cards_played_player1,cards_played_player2,deck_id_player1,deck_id_player2,win_condition,notes,spectator_count,stream_url,is_live,additional_info) VALUES ('M1003',503,3,1005,1006,1005,'2025-03-01 13:30:00','2025-03-01 14:20:00',32,85.2,48,41,'D005','D006','concede','Opponent conceded early',200,'http://stream.example.com/m1003',0,'No live broadcast');

-- Community content moderation log table
CREATE TABLE community_content_moderation_log (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    content_id TEXT,
    content_type TEXT,
    moderator_user_id INTEGER,
    action_taken TEXT,
    action_timestamp TEXT,
    reason_code TEXT,
    reason_description TEXT,
    previous_status TEXT,
    new_status TEXT,
    appeal_flag INTEGER,
    appeal_deadline TEXT,
    notes TEXT,
    ip_address TEXT,
    device_type TEXT,
    user_id INTEGER,
    content_snippet TEXT,
    language TEXT,
    community_section TEXT,
    severity_score REAL,
    additional_context TEXT
);

INSERT INTO community_content_moderation_log (content_id,content_type,moderator_user_id,action_taken,action_timestamp,reason_code,reason_description,previous_status,new_status,appeal_flag,appeal_deadline,notes,ip_address,device_type,user_id,content_snippet,language,community_section,severity_score,additional_context) VALUES ('C001','post',2001,'delete','2025-03-01 09:15:00','SPAM','Unsolicited advertising','visible','removed',1,'2025-03-08','User notified','203.0.113.5','mobile',3001,'Buy cheap cards now','en','general',8.5,'Repeated offenses');
INSERT INTO community_content_moderation_log (content_id,content_type,moderator_user_id,action_taken,action_timestamp,reason_code,reason_description,previous_status,new_status,appeal_flag,appeal_deadline,notes,ip_address,device_type,user_id,content_snippet,language,community_section,severity_score,additional_context) VALUES ('C002','comment',2002,'warn','2025-03-01 10:20:00','TOXIC','Harassment','visible','visible',0,NULL,'First warning issued','198.51.100.12','desktop',3002,'You are terrible player','en','support',5.0,'No prior warnings');
INSERT INTO community_content_moderation_log (content_id,content_type,moderator_user_id,action_taken,action_timestamp,reason_code,reason_description,previous_status,new_status,appeal_flag,appeal_deadline,notes,ip_address,device_type,user_id,content_snippet,language,community_section,severity_score,additional_context) VALUES ('C003','post',2003,'edit','2025-03-01 11:45:00','MISINFO','Incorrect information','visible','visible',0,NULL,'Edited for accuracy','192.0.2.45','tablet',3003,'The card rules are…','en','rules',3.0,'Fact‑checked source added');

-- Supplier shipment schedule table
CREATE TABLE supplier_shipment_schedule (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    supplier_id INTEGER,
    shipment_id TEXT,
    expected_arrival_date TEXT,
    actual_arrival_date TEXT,
    status TEXT,
    carrier_name TEXT,
    tracking_number TEXT,
    items_quantity INTEGER,
    total_weight_kg REAL,
    container_number TEXT,
    departure_port TEXT,
    arrival_port TEXT,
    customs_clearance_date TEXT,
    delay_reason TEXT,
    handling_instructions TEXT,
    warehouse_id INTEGER,
    received_by_user_id INTEGER,
    inspection_passed_flag INTEGER,
    notes TEXT
);

INSERT INTO supplier_shipment_schedule (supplier_id,shipment_id,expected_arrival_date,actual_arrival_date,status,carrier_name,tracking_number,items_quantity,total_weight_kg,container_number,departure_port,arrival_port,customs_clearance_date,delay_reason,handling_instructions,warehouse_id,received_by_user_id,inspection_passed_flag,notes) VALUES (501,'SHIP001','2025-02-28','2025-02-27','arrived','FastLogistics','TRK12345',2000,1500.5,'CONT1001','LosAngeles','NewYork','2025-02-28',NULL,'Handle with care',10,4001,1,'On time delivery');
INSERT INTO supplier_shipment_schedule (supplier_id,shipment_id,expected_arrival_date,actual_arrival_date,status,carrier_name,tracking_number,items_quantity,total_weight_kg,container_number,departure_port,arrival_port,customs_clearance_date,delay_reason,handling_instructions,warehouse_id,received_by_user_id,inspection_passed_flag,notes) VALUES (502,'SHIP002','2025-03-05','2025-03-08','delayed','GlobalShip','TRK67890',1500,1200.0,'CONT1002','Hamburg','Singapore','2025-03-09','Weather','Store in dry area',12,4002,0,'Delay due to storm');
INSERT INTO supplier_shipment_schedule (supplier_id,shipment_id,expected_arrival_date,actual_arrival_date,status,carrier_name,tracking_number,items_quantity,total_weight_kg,container_number,departure_port,arrival_port,customs_clearance_date,delay_reason,handling_instructions,warehouse_id,received_by_user_id,inspection_passed_flag,notes) VALUES (503,'SHIP003','2025-03-10','2025-03-10','arrived','Oceanic','TRK54321',1800,1400.3,'CONT1003','Shanghai','LosAngeles','2025-03-11',NULL,'Standard handling',14,4003,1,'All items passed inspection');

-- Player health and fitness table
CREATE TABLE player_health_and_fitness (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    record_timestamp TEXT,
    heart_rate_bpm INTEGER,
    steps_count INTEGER,
    sleep_hours REAL,
    calories_burned REAL,
    stress_level INTEGER,
    hydration_ml INTEGER,
    temperature_c REAL,
    oxygen_saturation_percent REAL,
    mood_score INTEGER,
    activity_type TEXT,
    gps_latitude REAL,
    gps_longitude REAL,
    device_id TEXT,
    firmware_version TEXT,
    notes TEXT,
    measurement_source TEXT,
    weather_condition TEXT,
    session_type TEXT
);

INSERT INTO player_health_and_fitness (player_id,record_timestamp,heart_rate_bpm,steps_count,sleep_hours,calories_burned,stress_level,hydration_ml,temperature_c,oxygen_saturation_percent,mood_score,activity_type,gps_latitude,gps_longitude,device_id,firmware_version,notes,measurement_source,weather_condition,session_type) VALUES (101,'2025-03-01 07:00:00',65,5000,7.5,300.0,2,1800,36.6,98.5,8,'running',40.7128,-74.0060,'DEV001','1.0.3','Morning jog','wearable','clear','cardio');
INSERT INTO player_health_and_fitness (player_id,record_timestamp,heart_rate_bpm,steps_count,sleep_hours,calories_burned,stress_level,hydration_ml,temperature_c,oxygen_saturation_percent,mood_score,activity_type,gps_latitude,gps_longitude,device_id,firmware_version,notes,measurement_source,weather_condition,session_type) VALUES (202,'2025-03-01 18:30:00',78,3500,6.0,250.0,4,1500,36.8,97.0,6,'strength',34.0522,-118.2437','DEV002','1.1.0','Evening gym session','wearable','cloudy','strength');
INSERT INTO player_health_and_fitness (player_id,record_timestamp,heart_rate_bpm,steps_count,sleep_hours,calories_burned,stress_level,hydration_ml,temperature_c,oxygen_saturation_percent,mood_score,activity_type,gps_latitude,gps_longitude,device_id,firmware_version,notes,measurement_source,weather_condition,session_type) VALUES (303,'2025-03-01 22:00:00',55,2000,8.2,180.0,1,2000,36.5,99.0,9,'rest',51.5074,-0.1278','DEV003','1.0.5','Pre‑sleep routine','wearable','clear','rest');