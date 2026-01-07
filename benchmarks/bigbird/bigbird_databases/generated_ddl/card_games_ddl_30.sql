-- Tournament logistics details
CREATE TABLE tournament_logistics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    venue_id INTEGER,
    start_date DATE,
    end_date DATE,
    schedule_url TEXT,
    staff_lead TEXT,
    security_level TEXT,
    catering_vendor TEXT,
    audio_visual_provider TEXT,
    transport_arrangements TEXT,
    broadcast_partner TEXT,
    ticketing_platform TEXT,
    capacity_estimate INTEGER,
    expected_attendance INTEGER,
    covid_protocols TEXT,
    parking_spaces INTEGER,
    lodging_partner TEXT,
    volunteer_count INTEGER,
    sponsor_count INTEGER,
    merch_area_size INTEGER,
    wifi_bandwidth INTEGER,
    emergency_contact TEXT
);
INSERT INTO tournament_logistics (tournament_id,venue_id,start_date,end_date,schedule_url,staff_lead,security_level,catering_vendor,audio_visual_provider,transport_arrangements,broadcast_partner,ticketing_platform,capacity_estimate,expected_attendance,covid_protocols,parking_spaces,lodging_partner,volunteer_count,sponsor_count,merch_area_size,wifi_bandwidth,emergency_contact) VALUES (101,201,'2025-06-01','2025-06-05','http://example.com/sched1','AliceSmith','High','CaterCo','AVPro','ShuttleService','StreamHub','TicketMaster',5000,4500,'MaskRequired',300,'HotelGrand',50,10,2000,100,'555-0100');
INSERT INTO tournament_logistics (tournament_id,venue_id,start_date,end_date,schedule_url,staff_lead,security_level,catering_vendor,audio_visual_provider,transport_arrangements,broadcast_partner,ticketing_platform,capacity_estimate,expected_attendance,covid_protocols,parking_spaces,lodging_partner,volunteer_count,sponsor_count,merch_area_size,wifi_bandwidth,emergency_contact) VALUES (102,202,'2025-07-10','2025-07-12','http://example.com/sched2','BobJones','Medium','Foodies','SoundWave','BusLines','LiveCast','EventBrite',3000,2800,'VaccinationProof',150,'InnStay',30,5,1200,80,'555-0200');
INSERT INTO tournament_logistics (tournament_id,venue_id,start_date,end_date,schedule_url,staff_lead,security_level,catering_vendor,audio_visual_provider,transport_arrangements,broadcast_partner,ticketing_platform,capacity_estimate,expected_attendance,covid_protocols,parking_spaces,lodging_partner,volunteer_count,sponsor_count,merch_area_size,wifi_bandwidth,emergency_contact) VALUES (103,203,'2025-09-15','2025-09-20','http://example.com/sched3','CarolLee','Low','QuickBite','StageTech','RideShare','GameStream','TicketHub',8000,7500,'None',500,'ResortX',80,12,2500,120,'555-0300');

-- Player social metrics
CREATE TABLE player_social_metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    platform TEXT,
    username TEXT,
    followers_count INTEGER,
    following_count INTEGER,
    post_count INTEGER,
    engagement_rate REAL,
    last_active_date DATE,
    verified_status INTEGER,
    bio_snippet TEXT,
    profile_image_url TEXT,
    join_date DATE,
    country_code TEXT,
    language_preference TEXT,
    avg_likes_per_post REAL,
    avg_comments_per_post REAL,
    share_rate REAL,
    hashtag_usage_score REAL,
    story_views_last7d INTEGER,
    reel_views_last7d INTEGER,
    total_reach_last30d INTEGER,
    sentiment_score REAL,
    notes TEXT
);
INSERT INTO player_social_metrics (player_id,platform,username,followers_count,following_count,post_count,engagement_rate,last_active_date,verified_status,bio_snippet,profile_image_url,join_date,country_code,language_preference,avg_likes_per_post,avg_comments_per_post,share_rate,hashtag_usage_score,story_views_last7d,reel_views_last7d,total_reach_last30d,sentiment_score,notes) VALUES (1001,'Twitter','gamer_one',15000,500,200,2.5,'2025-12-01',1,'Pro gamer','http://img.com/pic1','2020-03-15','US','en',120.5,15.2,0.3,75.0,8000,5000,120000,0.85,'');
INSERT INTO player_social_metrics (player_id,platform,username,followers_count,following_count,post_count,engagement_rate,last_active_date,verified_status,bio_snippet,profile_image_url,join_date,country_code,language_preference,avg_likes_per_post,avg_comments_per_post,share_rate,hashtag_usage_score,story_views_last7d,reel_views_last7d,total_reach_last30d,sentiment_score,notes) VALUES (1002,'Instagram','cardmaster',25000,800,350,3.1,'2025-11-28',0,'MTG collector','http://img.com/pic2','2019-07-22','CA','en',210.0,30.5,0.4,80.0,12000,9000,200000,0.90,'');
INSERT INTO player_social_metrics (player_id,platform,username,followers_count,following_count,post_count,engagement_rate,last_active_date,verified_status,bio_snippet,profile_image_url,join_date,country_code,language_preference,avg_likes_per_post,avg_comments_per_post,share_rate,hashtag_usage_score,story_views_last7d,reel_views_last7d,total_reach_last30d,sentiment_score,notes) VALUES (1003,'YouTube','strategy_guru',50000,200,100,4.0,'2025-12-02',1,'Game strategy tutorials','http://img.com/pic3','2018-11-05','GB','en',350.2,45.1,0.5,85.0,15000,13000,300000,0.95,'');

-- Set distribution statistics
CREATE TABLE set_distribution_stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    region TEXT,
    distribution_center_id INTEGER,
    shipment_date DATE,
    units_shipped INTEGER,
    units_received INTEGER,
    damaged_units INTEGER,
    on_time_percentage REAL,
    carrier_name TEXT,
    tracking_prefix TEXT,
    customs_status TEXT,
    warehouse_section TEXT,
    temperature_control TEXT,
    humidity_control TEXT,
    security_level TEXT,
    inventory_cycle_count INTEGER,
    last_audit_date DATE,
    forecast_demand INTEGER,
    actual_demand INTEGER,
    surplus_units INTEGER,
    shortage_units INTEGER,
    notes TEXT
);
INSERT INTO set_distribution_stats (set_code,region,distribution_center_id,shipment_date,units_shipped,units_received,damaged_units,on_time_percentage,carrier_name,tracking_prefix,customs_status,warehouse_section,temperature_control,humidity_control,security_level,inventory_cycle_count,last_audit_date,forecast_demand,actual_demand,surplus_units,shortage_units,notes) VALUES ('EXP','NA',10,'2025-05-10',20000,19950,50,98.5,'FastShip','EXPNA','Cleared','A1','Cold','Low','High',30,'2025-05-15',21000,19950,0,0,'');
INSERT INTO set_distribution_stats (set_code,region,distribution_center_id,shipment_date,units_shipped,units_received,damaged_units,on_time_percentage,carrier_name,tracking_prefix,customs_status,warehouse_section,temperature_control,humidity_control,security_level,inventory_cycle_count,last_audit_date,forecast_demand,actual_demand,surplus_units,shortage_units,notes) VALUES ('MEG','EU',12,'2025-06-20',30000,29800,200,96.0,'EuroLogistics','MEGEU','Pending','B3','RoomTemp','Medium','Medium',45,'2025-06-25',31000,29800,0,0,'');
INSERT INTO set_distribution_stats (set_code,region,distribution_center_id,shipment_date,units_shipped,units_received,damaged_units,on_time_percentage,carrier_name,tracking_prefix,customs_status,warehouse_section,temperature_control,humidity_control,security_level,inventory_cycle_count,last_audit_date,forecast_demand,actual_demand,surplus_units,shortage_units,notes) VALUES ('RIX','APAC',14,'2025-07-05',25000,24900,100,99.0,'AsiaFreight','RIXAP','Cleared','C2','Cold','Low','High',38,'2025-07-10',26000,24900,0,0,'');

-- Digital asset license terms
CREATE TABLE digital_asset_license_terms (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    license_id TEXT,
    asset_type TEXT,
    asset_id TEXT,
    licensor TEXT,
    licensee TEXT,
    start_date DATE,
    end_date DATE,
    usage_scope TEXT,
    exclusive_flag INTEGER,
    royalty_rate REAL,
    payment_schedule TEXT,
    renewal_option TEXT,
    termination_clause TEXT,
    audit_rights TEXT,
    confidentiality_level TEXT,
    jurisdiction TEXT,
    amendment_number INTEGER,
    version TEXT,
    last_updated DATE,
    compliance_status TEXT,
    notes TEXT,
    contract_url TEXT
);
INSERT INTO digital_asset_license_terms (license_id,asset_type,asset_id,licensor,licensee,start_date,end_date,usage_scope,exclusive_flag,royalty_rate,payment_schedule,renewal_option,termination_clause,audit_rights,confidentiality_level,jurisdiction,amendment_number,version,last_updated,compliance_status,notes,contract_url) VALUES ('LIC001','Artwork','ART123','ArtistCo','GameStudio','2025-01-01','2027-12-31','DigitalPrints',1,5.0,'Quarterly','Auto','30DaysNotice','Annual','High','US','0','v1','2025-06-01','Compliant','Initial license','http://contracts.com/lic001');
INSERT INTO digital_asset_license_terms (license_id,asset_type,asset_id,licensor,licensee,start_date,end_date,usage_scope,exclusive_flag,royalty_rate,payment_schedule,renewal_option,termination_clause,audit_rights,confidentiality_level,jurisdiction,amendment_number,version,last_updated,compliance_status,notes,contract_url) VALUES ('LIC002','Music','MUS456','MusicLabel','StreamerInc','2025-03-01','2028-02-28','Streaming',0,3.5,'Annually','Manual','60DaysNotice','BiAnnual','Medium','EU','1','v2','2025-07-15','Pending','Amended for new platforms','http://contracts.com/lic002');
INSERT INTO digital_asset_license_terms (license_id,asset_type,asset_id,licensor,licensee,start_date,end_date,usage_scope,exclusive_flag,royalty_rate,payment_schedule,renewal_option,termination_clause,audit_rights,confidentiality_level,jurisdiction,amendment_number,version,last_updated,compliance_status,notes,contract_url) VALUES ('LIC003','Video','VID789','FilmStudio','AdAgency','2025-05-01','2026-04-30','TVAds',1,7.0,'Monthly','Auto','15DaysNotice','Quarterly','High','CA','0','v1','2025-08-20','Compliant','','http://contracts.com/lic003');

-- Environmental sensor readings
CREATE TABLE environmental_sensor_readings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sensor_id TEXT,
    location_id TEXT,
    sensor_type TEXT,
    reading_timestamp DATETIME,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    pm2_5_ugm3 REAL,
    noise_db REAL,
    light_lux REAL,
    vibration_mms REAL,
    battery_percent INTEGER,
    status_code TEXT,
    firmware_version TEXT,
    calibration_date DATE,
    alert_threshold_exceeded INTEGER,
    maintenance_due_date DATE,
    operator_id INTEGER,
    data_quality_score REAL,
    notes TEXT,
    latitude REAL,
    longitude REAL
);
INSERT INTO environmental_sensor_readings (sensor_id,location_id,sensor_type,reading_timestamp,temperature_c,humidity_percent,co2_ppm,pm2_5_ugm3,noise_db,light_lux,vibration_mms,battery_percent,status_code,firmware_version,calibration_date,alert_threshold_exceeded,maintenance_due_date,operator_id,data_quality_score,notes,latitude,longitude) VALUES ('S001','LOC01','TempHum','2025-12-01 08:00:00',22.5,45.0,400,12.3,55.0,300,0.02,95,'OK','1.0.3','2025-01-15',0,'2025-12-31',101,0.98,'','40.7128','-74.0060');
INSERT INTO environmental_sensor_readings (sensor_id,location_id,sensor_type,reading_timestamp,temperature_c,humidity_percent,co2_ppm,pm2_5_ugm3,noise_db,light_lux,vibration_mms,battery_percent,status_code,firmware_version,calibration_date,alert_threshold_exceeded,maintenance_due_date,operator_id,data_quality_score,notes,latitude,longitude) VALUES ('S002','LOC02','AirQuality','2025-12-01 08:05:00',21.0,50.0,420,15.0,60.0,250,0.01,88,'WARN','1.2.0','2025-02-10',1,'2025-11-30',102,0.92,'CO2 high','34.0522','-118.2437');
INSERT INTO environmental_sensor_readings (sensor_id,location_id,sensor_type,reading_timestamp,temperature_c,humidity_percent,co2_ppm,pm2_5_ugm3,noise_db,light_lux,vibration_mms,battery_percent,status_code,firmware_version,calibration_date,alert_threshold_exceeded,maintenance_due_date,operator_id,data_quality_score,notes,latitude,longitude) VALUES ('S003','LOC03','Noise','2025-12-01 08:10:00',23.0,40.0,380,10.5,70.0,500,0.03,92,'OK','1.1.5','2025-03-05',0,'2026-01-15',103,0.99,'','51.5074','-0.1278');

-- Artwork royalty payments
CREATE TABLE artwork_royalty_payments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    payment_id TEXT,
    artwork_id TEXT,
    artist_id TEXT,
    royalty_type TEXT,
    period_start DATE,
    period_end DATE,
    units_sold INTEGER,
    royalty_rate_percent REAL,
    gross_amount REAL,
    net_amount REAL,
    tax_withheld REAL,
    payment_date DATE,
    payment_method TEXT,
    transaction_id TEXT,
    currency TEXT,
    exchange_rate REAL,
    notes TEXT,
    approved_by TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    audit_log_id INTEGER,
    statement_url TEXT
);
INSERT INTO artwork_royalty_payments (payment_id,artwork_id,artist_id,royalty_type,period_start,period_end,units_sold,royalty_rate_percent,gross_amount,net_amount,tax_withheld,payment_date,payment_method,transaction_id,currency,exchange_rate,notes,approved_by,created_at,updated_at,audit_log_id,statement_url) VALUES ('RP001','ART123','ARTIST01','Print','2025-01-01','2025-03-31',5000,5.0,25000.00,23750.00,1250.00,'2025-04-10','BankTransfer','TX1001','USD',1.0,'','FinanceMgr','2025-04-11 09:00:00','2025-04-11 09:15:00',201,'http://statements.com/rp001');
INSERT INTO artwork_royalty_payments (payment_id,artwork_id,artist_id,royalty_type,period_start,period_end,units_sold,royalty_rate_percent,gross_amount,net_amount,tax_withheld,payment_date,payment_method,transaction_id,currency,exchange_rate,notes,approved_by,created_at,updated_at,audit_log_id,statement_url) VALUES ('RP002','ART456','ARTIST02','Digital','2025-04-01','2025-06-30',8000,4.5,36000.00,34020.00,1980.00,'2025-07-05','PayPal','TX2002','USD',1.0,'','FinanceMgr','2025-07-06 10:00:00','2025-07-06 10:10:00',202,'http://statements.com/rp002');
INSERT INTO artwork_royalty_payments (payment_id,artwork_id,artist_id,royalty_type,period_start,period_end,units_sold,royalty_rate_percent,gross_amount,net_amount,tax_withheld,payment_date,payment_method,transaction_id,currency,exchange_rate,notes,approved_by,created_at,updated_at,audit_log_id,statement_url) VALUES ('RP003','ART789','ARTIST03','Merch','2025-07-01','2025-09-30',3000,6.0,18000.00,16920.00,1080.00,'2025-10-10','Check','TX3003','USD',1.0,'','FinanceMgr','2025-10-11 11:00:00','2025-10-11 11:20:00',203,'http://statements.com/rp003');

-- Sponsor engagement events
CREATE TABLE sponsor_engagement_events (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id TEXT,
    sponsor_id TEXT,
    event_type TEXT,
    start_date DATE,
    end_date DATE,
    location TEXT,
    audience_estimate INTEGER,
    activation_type TEXT,
    booth_size_sqft INTEGER,
    staff_count INTEGER,
    lead_capture_method TEXT,
    social_impressions INTEGER,
    video_views INTEGER,
    offers_distributed INTEGER,
    survey_responses INTEGER,
    net_promoter_score REAL,
    cost_usd REAL,
    ROI_percent REAL,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    status TEXT
);
INSERT INTO sponsor_engagement_events (event_id,sponsor_id,event_type,start_date,end_date,location,audience_estimate,activation_type,booth_size_sqft,staff_count,lead_capture_method,social_impressions,video_views,offers_distributed,survey_responses,net_promoter_score,cost_usd,ROI_percent,notes,created_at,updated_at,status) VALUES ('EVT001','SP001','Booth','2025-08-01','2025-08-03','ConventionCenterA',15000,'Demo',250,8,'QRScan',50000,12000,2000,800,45.0,75000,32.5,'','2025-07-20 08:00:00','2025-07-21 09:00:00','Completed');
INSERT INTO sponsor_engagement_events (event_id,sponsor_id,event_type,start_date,end_date,location,audience_estimate,activation_type,booth_size_sqft,staff_count,lead_capture_method,social_impressions,video_views,offers_distributed,survey_responses,net_promoter_score,cost_usd,ROI_percent,notes,created_at,updated_at,status) VALUES ('EVT002','SP002','Online','2025-09-10','2025-09-12','VirtualArena',8000,'LiveStream',0,4,'EmailSignup',30000,9000,1500,600,50.0,50000,40.0,'','2025-08-30 10:00:00','2025-08-31 11:00:00','Completed');
INSERT INTO sponsor_engagement_events (event_id,sponsor_id,event_type,start_date,end_date,location,audience_estimate,activation_type,booth_size_sqft,staff_count,lead_capture_method,social_impressions,video_views,offers_distributed,survey_responses,net_promoter_score,cost_usd,ROI_percent,notes,created_at,updated_at,status) VALUES ('EVT003','SP003','Workshop','2025-10-05','2025-10-05','HotelB',500,'HandsOn',100,3,'SignInSheet',12000,3000,800,300,55.0,30000,45.0,'','2025-09-20 14:00:00','2025-09-20 15:30:00','Scheduled');

-- Player training modules
CREATE TABLE player_training_modules (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    module_id TEXT,
    title TEXT,
    description TEXT,
    difficulty_level TEXT,
    duration_minutes INTEGER,
    prerequisite_module_id TEXT,
    certification_required INTEGER,
    content_format TEXT,
    language TEXT,
    release_date DATE,
    last_updated DATE,
    active_flag INTEGER,
    max_attempts INTEGER,
    pass_score_percent REAL,
    credit_hours REAL,
    trainer_id TEXT,
    version TEXT,
    tags TEXT,
    slug TEXT,
    enrollment_count INTEGER,
    completion_rate REAL,
    feedback_score REAL
);
INSERT INTO player_training_modules (module_id,title,description,difficulty_level,duration_minutes,prerequisite_module_id,certification_required,content_format,language,release_date,last_updated,active_flag,max_attempts,pass_score_percent,credit_hours,trainer_id,version,tags,slug,enrollment_count,completion_rate,feedback_score) VALUES ('TM001','Deck Building Basics','Intro to building decks','Beginner',45,NULL,0,'Video','en','2025-01-15','2025-06-01',1,3,70.0,0.5,'TR001','1.0','deck,building','deck-building-basics',1200,0.85,4.5);
INSERT INTO player_training_modules (module_id,title,description,difficulty_level,duration_minutes,prerequisite_module_id,certification_required,content_format,language,release_date,last_updated,active_flag,max_attempts,pass_score_percent,credit_hours,trainer_id,version,tags,slug,enrollment_count,completion_rate,feedback_score) VALUES ('TM002','Advanced Strategy','Deep dive into meta strategies','Advanced',90,'TM001',1,'Interactive','en','2025-03-10','2025-07-20',1,2,80.0,1.0,'TR002','1.1','strategy,advanced','advanced-strategy',800,0.78,4.7);
INSERT INTO player_training_modules (module_id,title,description,difficulty_level,duration_minutes,prerequisite_module_id,certification_required,content_format,language,release_date,last_updated,active_flag,max_attempts,pass_score_percent,credit_hours,trainer_id,version,tags,slug,enrollment_count,completion_rate,feedback_score) VALUES ('TM003','Tournament Preparation','Preparing for competitive play','Intermediate',60,'TM001',0,'PDF','en','2025-04-05','2025-08-15',1,3,75.0,0.7,'TR003','1.0','tournament,prep','tournament-preparation',950,0.80,4.6);

-- Game server clusters
CREATE TABLE game_server_clusters (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cluster_id TEXT,
    region TEXT,
    provider TEXT,
    node_count INTEGER,
    cpu_model TEXT,
    gpu_model TEXT,
    memory_gb INTEGER,
    storage_tb REAL,
    network_bandwidth_gbps REAL,
    avg_latency_ms REAL,
    max_concurrent_sessions INTEGER,
    uptime_percent REAL,
    maintenance_window TEXT,
    last_patch_date DATE,
    security_compliance_level TEXT,
    cost_per_hour_usd REAL,
    scaling_policy TEXT,
    autoscale_enabled INTEGER,
    alert_threshold_cpu REAL,
    alert_threshold_memory REAL,
    backup_schedule TEXT,
    notes TEXT
);
INSERT INTO game_server_clusters (cluster_id,region,provider,node_count,cpu_model,gpu_model,memory_gb,storage_tb,network_bandwidth_gbps,avg_latency_ms,max_concurrent_sessions,uptime_percent,maintenance_window,last_patch_date,security_compliance_level,cost_per_hour_usd,scaling_policy,autoscale_enabled,alert_threshold_cpu,alert_threshold_memory,backup_schedule,notes) VALUES ('CL001','NA','CloudOne',20,'IntelXeon','NvidiaRTX','256',10.5,40.0,30.5,5000,99.9,'Sun03:00-04:00','2025-05-20','PCI-DSS',12.5,'Dynamic',1,80.0,75.0,'Daily','Primary cluster');
INSERT INTO game_server_clusters (cluster_id,region,provider,node_count,cpu_model,gpu_model,memory_gb,storage_tb,network_bandwidth_gbps,avg_latency_ms,max_concurrent_sessions,uptime_percent,maintenance_window,last_patch_date,security_compliance_level,cost_per_hour_usd,scaling_policy,autoscale_enabled,alert_threshold_cpu,alert_threshold_memory,backup_schedule,notes) VALUES ('CL002','EU','CloudTwo',15,'AMDZen','AMDInstinct','192',8.0,35.0,28.0,4000,99.7,'Sat02:00-03:00','2025-06-10','ISO27001',10.0,'Predictive',1,85.0,80.0,'Weekly','Backup cluster');
INSERT INTO game_server_clusters (cluster_id,region,provider,node_count,cpu_model,gpu_model,memory_gb,storage_tb,network_bandwidth_gbps,avg_latency_ms,max_concurrent_sessions,uptime_percent,maintenance_window,last_patch_date,security_compliance_level,cost_per_hour_usd,scaling_policy,autoscale_enabled,alert_threshold_cpu,alert_threshold_memory,backup_schedule,notes) VALUES ('CL003','APAC','CloudThree',10,'IntelXeon','NvidiaTesla','128',5.5,30.0,32.0,3000,99.5,'Mon04:00-05:00','2025-07-01','SOC2',8.5,'Static',0,90.0,85.0,'Monthly','Regional cluster');

-- Virtual currency exchange rates
CREATE TABLE virtual_currency_exchange_rates (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    rate_id TEXT,
    currency_pair TEXT,
    base_currency TEXT,
    quote_currency TEXT,
    rate_value REAL,
    effective_date DATE,
    provider TEXT,
    source_url TEXT,
    volatility_index REAL,
    last_updated DATETIME,
    status TEXT,
    notes TEXT,
    created_by TEXT,
    created_at DATETIME,
    updated_by TEXT,
    updated_at DATETIME,
    adjustment_factor REAL,
    confidence_score REAL,
    min_rate REAL,
    max_rate REAL,
    historical_average REAL,
    median_rate REAL
);
INSERT INTO virtual_currency_exchange_rates (rate_id,currency_pair,base_currency,quote_currency,rate_value,effective_date,provider,source_url,volatility_index,last_updated,status,notes,created_by,created_at,updated_by,updated_at,adjustment_factor,confidence_score,min_rate,max_rate,historical_average,median_rate) VALUES ('R001','VC_GOLD_USD','VC_GOLD','USD',0.05,'2025-12-01','RateProviderA','http://rates.com/r001',0.12,'2025-12-01 00:00:00','Active','','system','2025-12-01 00:00:00','system','2025-12-01 00:00:00',1.0,0.98,0.045,0.055,0.050,0.050);
INSERT INTO virtual_currency_exchange_rates (rate_id,currency_pair,base_currency,quote_currency,rate_value,effective_date,provider,source_url,volatility_index,last_updated,status,notes,created_by,created_at,updated_by,updated_at,adjustment_factor,confidence_score,min_rate,max_rate,historical_average,median_rate) VALUES ('R002','VC_CRYSTAL_EUR','VC_CRYSTAL','EUR',0.10,'2025-12-01','RateProviderB','http://rates.com/r002',0.15,'2025-12-01 01:00:00','Active','','system','2025-12-01 01:00:00','system','2025-12-01 01:00:00',1.0,0.95,0.095,0.105,0.100,0.100);
INSERT INTO virtual_currency_exchange_rates (rate_id,currency_pair,base_currency,quote_currency,rate_value,effective_date,provider,source_url,volatility_index,last_updated,status,notes,created_by,created_at,updated_by,updated_at,adjustment_factor,confidence_score,min_rate,max_rate,historical_average,median_rate) VALUES ('R003','VC_GEM_GBP','VC_GEM','GBP',0.08,'2025-12-01','RateProviderC','http://rates.com/r003',0.10,'2025-12-01 02:00:00','Active','','system','2025-12-01 02:00:00','system','2025-12-01 02:00:00',1.0,0.97,0.075,0.085,0.080,0.080);