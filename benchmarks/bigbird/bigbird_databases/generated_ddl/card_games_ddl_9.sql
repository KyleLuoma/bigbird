-- Maintenance logs for equipment and facilities
CREATE TABLE maintenance_logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    equipment_id TEXT,
    maintenance_type TEXT,
    scheduled_date DATE,
    performed_date DATE,
    technician_name TEXT,
    cost REAL,
    notes TEXT,
    duration_hours REAL,
    parts_used TEXT,
    warranty_flag INTEGER,
    next_due_date DATE,
    priority_level INTEGER,
    status TEXT,
    location TEXT,
    approval_code TEXT,
    created_at DATE,
    updated_at DATE,
    external_ref TEXT,
    compliance_status TEXT
);
INSERT INTO maintenance_logs (equipment_id,maintenance_type,scheduled_date,performed_date,technician_name,cost,notes,duration_hours,parts_used,warranty_flag,next_due_date,priority_level,status,location,approval_code,created_at,updated_at,external_ref,compliance_status) VALUES ('EQ001','Calibration','2025-01-15','2025-01-16','John Doe',150.00,'Calibrated sensor','2.5','SensorKitA',1,'2026-01-15',2,'Completed','WarehouseA','APRV001','2025-01-10','2025-01-16','REF123','Compliant');
INSERT INTO maintenance_logs (equipment_id,maintenance_type,scheduled_date,performed_date,technician_name,cost,notes,duration_hours,parts_used,warranty_flag,next_due_date,priority_level,status,location,approval_code,created_at,updated_at,external_ref,compliance_status) VALUES ('EQ045','Repair','2025-02-01','2025-02-02','Alice Smith',320.75,'Replaced faulty valve','3.0','ValveB',0,'2026-02-01',1,'Completed','PlantB','APRV045','2025-01-30','2025-02-02','REF045','Compliant');
INSERT INTO maintenance_logs (equipment_id,maintenance_type,scheduled_date,performed_date,technician_name,cost,notes,duration_hours,parts_used,warranty_flag,next_due_date,priority_level,status,location,approval_code,created_at,updated_at,external_ref,compliance_status) VALUES ('EQ099','Inspection','2025-03-10','2025-03-10','Bob Lee',80.00,'Routine safety inspection','1.5','N/A',1,'2026-03-10',3,'Completed','FacilityC','APRV099','2025-03-05','2025-03-10','REF099','Compliant');

-- Environmental sensor metrics collection
CREATE TABLE environmental_metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sensor_id TEXT,
    metric_type TEXT,
    metric_value REAL,
    unit TEXT,
    recorded_at DATE,
    location TEXT,
    battery_level REAL,
    signal_strength REAL,
    firmware_version TEXT,
    calibration_date DATE,
    alert_flag INTEGER,
    maintenance_due DATE,
    latitude REAL,
    longitude REAL,
    altitude REAL,
    data_quality TEXT,
    collection_method TEXT,
    system_status TEXT,
    notes TEXT,
    operator_id TEXT
);
INSERT INTO environmental_metrics (sensor_id,metric_type,metric_value,unit,recorded_at,location,battery_level,signal_strength,firmware_version,calibration_date,alert_flag,maintenance_due,latitude,longitude,altitude,data_quality,collection_method,system_status,notes,operator_id) VALUES ('SN001','Temperature',22.5,'C','2025-04-01','Greenhouse1',95.0,78.0,'FW1.2','2024-12-01',0,'2026-04-01',40.7128,-74.0060,5.0,'Good','Automatic','Online','All normal','OP01');
INSERT INTO environmental_metrics (sensor_id,metric_type,metric_value,unit,recorded_at,location,battery_level,signal_strength,firmware_version,calibration_date,alert_flag,maintenance_due,latitude,longitude,altitude,data_quality,collection_method,system_status,notes,operator_id) VALUES ('SN078','Humidity',55.0,'%','2025-04-01','WarehouseB',88.0,82.0,'FW2.0','2024-11-15',0,'2026-04-15',34.0522,-118.2437,12.0,'Good','Automatic','Online','Stable','OP02');
INSERT INTO environmental_metrics (sensor_id,metric_type,metric_value,unit,recorded_at,location,battery_level,signal_strength,firmware_version,calibration_date,alert_flag,maintenance_due,latitude,longitude,altitude,data_quality,collection_method,system_status,notes,operator_id) VALUES ('SN199','CO2',420.0,'ppm','2025-04-01','LabC',70.0,65.0,'FW1.5','2024-10-20',1,'2026-10-20',51.5074,-0.1278,30.0,'Moderate','Manual','Online','High level detected','OP03');

-- Community events and gatherings
CREATE TABLE community_events (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_name TEXT,
    description TEXT,
    start_date DATE,
    end_date DATE,
    venue_id TEXT,
    city TEXT,
    state TEXT,
    country TEXT,
    organizer_contact TEXT,
    max_participants INTEGER,
    registration_fee REAL,
    sponsor_id TEXT,
    livestream_url TEXT,
    social_media_tag TEXT,
    capacity INTEGER,
    ticket_price REAL,
    age_restriction TEXT,
    event_type TEXT,
    status TEXT
);
INSERT INTO community_events (event_name,description,start_date,end_date,venue_id,city,state,country,organizer_contact,max_participants,registration_fee,sponsor_id,livestream_url,social_media_tag,capacity,ticket_price,age_restriction,event_type,status) VALUES ('Magic Con 2025','Annual magic card convention','2025-08-10','2025-08-12','VEN001','Seattle','WA','USA','contact@example.com',5000,50.00,'SP001','http://stream.example.com/magiccon','#MagicCon2025',3000,75.00,'All','Convention','Scheduled');
INSERT INTO community_events (event_name,description,start_date,end_date,venue_id,city,state,country,organizer_contact,max_participants,registration_fee,sponsor_id,livestream_url,social_media_tag,capacity,ticket_price,age_restriction,event_type,status) VALUES ('Deck Builders Workshop','Hands on deck building sessions','2025-09-05','2025-09-05','VEN045','Austin','TX','USA','workshop@example.com',200,0.00,'SP045','http://stream.example.com/workshop','#DeckWorkshop','200',0.00,'All','Workshop','Open');
INSERT INTO community_events (event_name,description,start_date,end_date,venue_id,city,state,country,organizer_contact,max_participants,registration_fee,sponsor_id,livestream_url,social_media_tag,capacity,ticket_price,age_restriction,event_type,status) VALUES ('Pro Tour Qualifier','Qualifier for upcoming pro tour','2025-10-20','2025-10-21','VEN099','Los Angeles','CA','USA','qualifier@example.com',1500,20.00','SP099','http://stream.example.com/qualifier','#ProQual2025','1500',20.00,'18+','Tournament','Planned');

-- Hardware firmware version tracking
CREATE TABLE hardware_firmware_versions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    hardware_id TEXT,
    model_name TEXT,
    firmware_version TEXT,
    release_date DATE,
    checksum TEXT,
    file_size_mb REAL,
    supported_devices TEXT,
    deprecated_flag INTEGER,
    verification_status TEXT,
    uploader_user TEXT,
    upload_date DATE,
    changelog_summary TEXT,
    security_patch_level TEXT,
    compatibility_notes TEXT,
    download_url TEXT,
    license_type TEXT,
    signature TEXT,
    verification_date DATE,
    notes TEXT,
    status TEXT
);
INSERT INTO hardware_firmware_versions (hardware_id,model_name,firmware_version,release_date,checksum,file_size_mb,supported_devices,deprecated_flag,verification_status,uploader_user,upload_date,changelog_summary,security_patch_level,compatibility_notes,download_url,license_type,signature,verification_date,notes,status) VALUES ('HW001','SensorX','1.3.5','2025-01-20','ABC123DEF456',2.5,'SensorX,SensorY',0,'Verified','admin','2025-01-21','Added temperature offset','2025-01-15','Compatible with v1 boards','http://downloads.example.com/fw1.3.5.bin','GPL','SIG12345','2025-01-22','Stable release','Active');
INSERT INTO hardware_firmware_versions (hardware_id,model_name,firmware_version,release_date,checksum,file_size_mb,supported_devices,deprecated_flag,verification_status,uploader_user,upload_date,changelog_summary,security_patch_level,compatibility_notes,download_url,license_type,signature,verification_date,notes,status) VALUES ('HW078','GatewayPro','2.0.0','2025-03-10','XYZ789GHI012',5.0,'GatewayPro,GatewayLite',0,'Verified','techlead','2025-03-11','Major security overhaul','2025-03-05','Requires firmware 1.9+ on devices','http://downloads.example.com/gateway2.0.0.bin','MIT','SIG67890','2025-03-12','Recommended upgrade','Active');
INSERT INTO hardware_firmware_versions (hardware_id,model_name,firmware_version,release_date,checksum,file_size_mb,supported_devices,deprecated_flag,verification_status,uploader_user,upload_date,changelog_summary,security_patch_level,compatibility_notes,download_url,license_type,signature,verification_date,notes,status) VALUES ('HW199','ControllerZ','0.9.8','2024-12-01','LMN456OPQ789',1.2,'ControllerZ',1,'Deprecated','oldadmin','2024-12-02','Bug fixes and performance','2024-11-28','Not compatible with new sensors','http://downloads.example.com/ctrl0.9.8.bin','Proprietary','SIG11223','2024-12-03','End of life','Inactive');

-- Player social media links
CREATE TABLE player_social_links (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id TEXT,
    platform_name TEXT,
    username TEXT,
    profile_url TEXT,
    follower_count INTEGER,
    verification_status INTEGER,
    link_added_at DATE,
    link_updated_at DATE,
    privacy_setting TEXT,
    last_active DATE,
    notes TEXT,
    display_name TEXT,
    profile_image_url TEXT,
    platform_category TEXT,
    region TEXT,
    account_status TEXT,
    verification_code TEXT,
    linked_email TEXT,
    two_factor_enabled INTEGER,
    linked_at DATE
);
INSERT INTO player_social_links (player_id,platform_name,username,profile_url,follower_count,verification_status,link_added_at,link_updated_at,privacy_setting,last_active,notes,display_name,profile_image_url,platform_category,region,account_status,verification_code,linked_email,two_factor_enabled,linked_at) VALUES ('P001','Twitter','gamer123','http://twitter.com/gamer123',1200,1,'2025-02-01','2025-03-01','Public','2025-04-01','No issues','Gamer One','http://images.example.com/gamer1.png','Social','NA','Active','VER123','gamer1@example.com',1,'2025-02-01');
INSERT INTO player_social_links (player_id,platform_name,username,profile_url,follower_count,verification_status,link_added_at,link_updated_at,privacy_setting,last_active,notes,display_name,profile_image_url,platform_category,region,account_status,verification_code,linked_email,two_factor_enabled,linked_at) VALUES ('P045','YouTube','MagicPlays','http://youtube.com/MagicPlays',5400,1,'2025-01-15','2025-04-01','Public','2025-04-02','Channel verified','Magic Plays','http://images.example.com/magicplays.png','Video','EU','Active','VER045','magicplays@example.com',1,'2025-01-15');
INSERT INTO player_social_links (player_id,platform_name,username,profile_url,follower_count,verification_status,link_added_at,link_updated_at,privacy_setting,last_active,notes,display_name,profile_image_url,platform_category,region,account_status,verification_code,linked_email,two_factor_enabled,linked_at) VALUES ('P099','Discord','deckmaster','http://discord.gg/deckmaster',300,0,'2025-03-10','2025-04-01','FriendsOnly','2025-04-03','Pending verification','Deck Master','http://images.example.com/deckmaster.png','Chat','AS','Pending','VER099','deckmaster@example.com',0,'2025-03-10');

-- Streaming advertisement inventory
CREATE TABLE streaming_ad_inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ad_campaign_id TEXT,
    ad_type TEXT,
    duration_seconds INTEGER,
    target_audience TEXT,
    bid_price_cpc REAL,
    impressions_booked INTEGER,
    impressions_delivered INTEGER,
    click_through_rate REAL,
    conversion_rate REAL,
    start_date DATE,
    end_date DATE,
    creative_url TEXT,
    landing_page_url TEXT,
    status TEXT,
    created_by TEXT,
    approved_by TEXT,
    budget_usd REAL,
    spent_usd REAL,
    notes TEXT,
    priority_level INTEGER
);
INSERT INTO streaming_ad_inventory (ad_campaign_id,ad_type,duration_seconds,target_audience,bid_price_cpc,impressions_booked,impressions_delivered,click_through_rate,conversion_rate,start_date,end_date,creative_url,landing_page_url,status,created_by,approved_by,budget_usd,spent_usd,notes,priority_level) VALUES ('CAM001','Video','30','CompetitivePlayers',0.25,100000,95000,0.012,0.003,'2025-04-01','2025-04-30','http://creative.example.com/ad1.mp4','http://landing.example.com/cam1','Active','marketer1','lead1',5000.00,4750.00,'Running smoothly',1);
INSERT INTO streaming_ad_inventory (ad_campaign_id,ad_type,duration_seconds,target_audience,bid_price_cpc,impressions_booked,impressions_delivered,click_through_rate,conversion_rate,start_date,end_date,creative_url,landing_page_url,status,created_by,approved_by,budget_usd,spent_usd,notes,priority_level) VALUES ('CAM045','Banner','15','CasualPlayers',0.10,50000,48000,0.008,0.001,'2025-05-01','2025-05-15','http://creative.example.com/banner45.png','http://landing.example.com/cam45','Pending','marketer2','lead2',2000.00,0.00,'Awaiting approval',2);
INSERT INTO streaming_ad_inventory (ad_campaign_id,ad_type,duration_seconds,target_audience,bid_price_cpc,impressions_booked,impressions_delivered,click_through_rate,conversion_rate,start_date,end_date,creative_url,landing_page_url,status,created_by,approved_by,budget_usd,spent_usd,notes,priority_level) VALUES ('CAM099','Overlay','20','StreamerAudience',0.18,75000,73000,0.010,0.002,'2025-06-01','2025-06-30','http://creative.example.com/overlay99.mp4','http://landing.example.com/cam99','Active','marketer3','lead3',3500.00,3300.00,'Performance good',1);

-- Card design workflow tracking
CREATE TABLE card_design_workflows (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    design_stage TEXT,
    assigned_designer_id TEXT,
    start_date DATE,
    end_date DATE,
    review_status TEXT,
    comments TEXT,
    version_number INTEGER,
    asset_id TEXT,
    estimated_hours REAL,
    actual_hours REAL,
    cost_estimate REAL,
    cost_actual REAL,
    approval_flag INTEGER,
    rejection_reason TEXT,
    next_stage_id INTEGER,
    workflow_id TEXT,
    priority INTEGER,
    created_at DATE,
    updated_at DATE,
    notes TEXT
);
INSERT INTO card_design_workflows (design_stage,assigned_designer_id,start_date,end_date,review_status,comments,version_number,asset_id,estimated_hours,actual_hours,cost_estimate,cost_actual,approval_flag,rejection_reason,next_stage_id,workflow_id,priority,created_at,updated_at,notes) VALUES ('Concept','DES001','2025-01-05','2025-01-10','Approved','Initial concept approved',1,'AST001',12.0,13.5,200.00,210.00,1,NULL,2,'WF001',2,'2025-01-01','2025-01-10','N/A');
INSERT INTO card_design_workflows (design_stage,assigned_designer_id,start_date,end_date,review_status,comments,version_number,asset_id,estimated_hours,actual_hours,cost_estimate,cost_actual,approval_flag,rejection_reason,next_stage_id,workflow_id,priority,created_at,updated_at,notes) VALUES ('Illustration','DES045','2025-02-01','2025-02-12','Pending','Awaiting artist feedback',2,'AST045',30.0,0.0,500.00,0.00,0,NULL,3,'WF045',3,'2025-01-28','2025-02-01','High detail needed');
INSERT INTO card_design_workflows (design_stage,assigned_designer_id,start_date,end_date,review_status,comments,version_number,asset_id,estimated_hours,actual_hours,cost_estimate,cost_actual,approval_flag,rejection_reason,next_stage_id,workflow_id,priority,created_at,updated_at,notes) VALUES ('Final Review','DES099','2025-03-15','2025-03-18','Rejected','Missing key elements',3,'AST099',8.0,7.5,150.00,140.00,0,'Missing artwork','NULL','WF099',1,'2025-03-10','2025-03-18','Will be sent back to illustration');

-- Set artwork catalog entries
CREATE TABLE set_artwork_catalog (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    artwork_type TEXT,
    artist_name TEXT,
    file_name TEXT,
    resolution TEXT,
    color_mode TEXT,
    created_date DATE,
    approved_date DATE,
    license_id TEXT,
    usage_rights TEXT,
    location_path TEXT,
    file_size_mb REAL,
    version TEXT,
    status TEXT,
    description TEXT,
    tags TEXT,
    thumbnail_url TEXT,
    source_url TEXT,
    notes TEXT,
    last_modified DATE
);
INSERT INTO set_artwork_catalog (set_code,artwork_type,artist_name,file_name,resolution,color_mode,created_date,approved_date,license_id,usage_rights,location_path,file_size_mb,version,status,description,tags,thumbnail_url,source_url,notes,last_modified) VALUES ('SET001','Cover','Alice Artist','cover_set001.png','3000x4000','RGB','2025-01-01','2025-01-05','LIC001','Full','/artwork/set001/',5.2,'v1','Approved','Main set cover','cover,magic','http://thumbs.example.com/cover1.png','http://source.example.com/cover1','N/A','2025-01-05');
INSERT INTO set_artwork_catalog (set_code,artwork_type,artist_name,file_name,resolution,color_mode,created_date,approved_date,license_id,usage_rights,location_path,file_size_mb,version,status,description,tags,thumbnail_url,source_url,notes,last_modified) VALUES ('SET045','Illustration','Bob Brush','illustration_set045.jpg','2500x3500','CMYK','2025-02-10','2025-02-12','LIC045','Partial','/artwork/set045/',3.8,'v2','Pending','Illustration for card X','illustration,cardX','http://thumbs.example.com/ill45.png','http://source.example.com/ill45','Awaiting final signoff','2025-02-12');
INSERT INTO set_artwork_catalog (set_code,artwork_type,artist_name,file_name,resolution,color_mode,created_date,approved_date,license_id,usage_rights,location_path,file_size_mb,version,status,description,tags,thumbnail_url,source_url,notes,last_modified) VALUES ('SET099','Promo','Cara Creative','promo_set099.gif','2000x2000','Indexed','2024-12-20','2024-12-25','LIC099','Limited','/artwork/set099/',1.5,'v1','Approved','Promo animation','promo,animation','http://thumbs.example.com/promo99.gif','http://source.example.com/promo99','N/A','2024-12-25');

-- Digital marketplace statistics
CREATE TABLE digital_marketplace_stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    marketplace_id TEXT,
    period_start DATE,
    period_end DATE,
    total_sales_usd REAL,
    total_volume INTEGER,
    active_users INTEGER,
    new_listings INTEGER,
    average_price_usd REAL,
    median_price_usd REAL,
    stddev_price REAL,
    top_seller_id TEXT,
    transaction_fee_percent REAL,
    payout_delay_days INTEGER,
    currency TEXT,
    region TEXT,
    platform_version TEXT,
    incidents_reported INTEGER,
    uptime_percent REAL,
    notes TEXT,
    generated_at DATE
);
INSERT INTO digital_marketplace_stats (marketplace_id,period_start,period_end,total_sales_usd,total_volume,active_users,new_listings,average_price_usd,median_price_usd,stddev_price,top_seller_id,transaction_fee_percent,payout_delay_days,currency,region,platform_version,incidents_reported,uptime_percent,notes,generated_at) VALUES ('MP001','2025-03-01','2025-03-31',1250000.00,3400,2100,500,365.00,350.00,45.00,'USR001',2.5,2,'USD','NA','v3.2',0,99.9,'Q1 performance','2025-04-01');
INSERT INTO digital_marketplace_stats (marketplace_id,period_start,period_end,total_sales_usd,total_volume,active_users,new_listings,average_price_usd,median_price_usd,stddev_price,top_seller_id,transaction_fee_percent,payout_delay_days,currency,region,platform_version,incidents_reported,uptime_percent,notes,generated_at) VALUES ('MP045','2025-04-01','2025-04-30',980000.00,2800,1900,450,350.00,340.00,40.00,'USR045',2.7,3,'USD','EU','v3.3',1,99.5,'April metrics','2025-05-01');
INSERT INTO digital_marketplace_stats (marketplace_id,period_start,period_end,total_sales_usd,total_volume,active_users,new_listings,average_price_usd,median_price_usd,stddev_price,top_seller_id,transaction_fee_percent,payout_delay_days,currency,region,platform_version,incidents_reported,uptime_percent,notes,generated_at) VALUES ('MP099','2025-05-01','2025-05-31',1120000.00,3100,2000,480,362.00,355.00,42.00,'USR099',2.6,2,'USD','AS','v3.4',0,99.8,'May performance','2025-06-01');

-- API error reporting log
CREATE TABLE api_error_reports (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    api_endpoint TEXT,
    http_method TEXT,
    error_code INTEGER,
    error_message TEXT,
    request_id TEXT,
    user_id TEXT,
    timestamp DATE,
    stack_trace TEXT,
    severity_level TEXT,
    resolved_flag INTEGER,
    resolution_timestamp DATE,
    assigned_to TEXT,
    repeat_count INTEGER,
    affected_version TEXT,
    environment TEXT,
    payload_summary TEXT,
    client_ip TEXT,
    server_instance TEXT,
    notes TEXT,
    created_at DATE
);
INSERT INTO api_error_reports (api_endpoint,http_method,error_code,error_message,request_id,user_id,timestamp,stack_trace,severity_level,resolved_flag,resolution_timestamp,assigned_to,repeat_count,affected_version,environment,payload_summary,client_ip,server_instance,notes,created_at) VALUES ('/cards/search','GET',500,'Internal Server Error','REQ001','USR001','2025-04-15','StackTraceExample','High',0,NULL,'dev1',3,'v1.3','Production','search query parameters','192.168.1.10','srv01','Investigating','2025-04-15');
INSERT INTO api_error_reports (api_endpoint,http_method,error_code,error_message,request_id,user_id,timestamp,stack_trace,severity_level,resolved_flag,resolution_timestamp,assigned_to,repeat_count,affected_version,environment,payload_summary,client_ip,server_instance,notes,created_at) VALUES ('/sets/info','POST',400,'Bad Request','REQ045','USR045','2025-04-20','BadRequestTrace','Medium',1,'2025-04-21','dev2',1,'v2.0','Staging','Invalid JSON payload','10.0.0.5','srv02','Fixed schema','2025-04-20');
INSERT INTO api_error_reports (api_endpoint,http_method,error_code,error_message,request_id,user_id,timestamp,stack_trace,severity_level,resolved_flag,resolution_timestamp,assigned_to,repeat_count,affected_version,environment,payload_summary,client_ip,server_instance,notes,created_at) VALUES ('/rulings/add','POST',401,'Unauthorized','REQ099','USR099','2025-05-05','AuthFailTrace','Low',0,NULL,'dev3',2,'v2.1','Production','Ruling text','172.16.0.2','srv03','Need token','2025-05-05');