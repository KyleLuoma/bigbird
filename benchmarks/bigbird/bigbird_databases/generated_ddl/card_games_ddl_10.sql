-- Player fitness metrics per assessment
CREATE TABLE player_fitness_metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    assessment_date DATE,
    height_cm INTEGER,
    weight_kg REAL,
    bmi REAL,
    resting_heart_rate INTEGER,
    max_heart_rate INTEGER,
    vo2max REAL,
    agility_score INTEGER,
    endurance_score INTEGER,
    flexibility_score INTEGER,
    reaction_time_ms REAL,
    grip_strength_kg REAL,
    shoulder_strength_kg REAL,
    core_strength_kg REAL,
    leg_strength_kg REAL,
    injury_history TEXT,
    nutrition_plan TEXT,
    sleep_hours REAL,
    stress_level INTEGER,
    hydration_liters REAL,
    notes TEXT
);
INSERT INTO player_fitness_metrics (player_id,assessment_date,height_cm,weight_kg,bmi,resting_heart_rate,max_heart_rate,vo2max,agility_score,endurance_score,flexibility_score,reaction_time_ms,grip_strength_kg,shoulder_strength_kg,core_strength_kg,leg_strength_kg,injury_history,nutrition_plan,sleep_hours,stress_level,hydration_liters,notes) VALUES (101,'2023-03-15',180,75.5,23.3,60,190,55.2,85,90,80,250.5,45.0,60.0,70.0,80.0,'None','HighProtein','7.5',2,2.5,'All good');
INSERT INTO player_fitness_metrics (player_id,assessment_date,height_cm,weight_kg,bmi,resting_heart_rate,max_heart_rate,vo2max,agility_score,endurance_score,flexibility_score,reaction_time_ms,grip_strength_kg,shoulder_strength_kg,core_strength_kg,leg_strength_kg,injury_history,nutrition_plan,sleep_hours,stress_level,hydration_liters,notes) VALUES (102,'2023-03-16',165,68.0,24.9,58,185,48.1,78,88,75,240.0,42.0,58.0,68.0,78.0,'KneeSprain','Balanced','6.8',3,2.0,'Recovering from minor knee sprain');
INSERT INTO player_fitness_metrics (player_id,assessment_date,height_cm,weight_kg,bmi,resting_heart_rate,max_heart_rate,vo2max,agility_score,endurance_score,flexibility_score,reaction_time_ms,grip_strength_kg,shoulder_strength_kg,core_strength_kg,leg_strength_kg,injury_history,nutrition_plan,sleep_hours,stress_level,hydration_liters,notes) VALUES (103,'2023-03-17',172,80.2,27.1,62,195,50.5,82,85,78,255.2,48.0,62.0,72.0,82.0,'ShoulderIssue','LowCarb','7.2',1,2.8,'Shoulder issue under physiotherapy');

-- Game event logs capturing in‑game actions
CREATE TABLE game_event_logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    session_id INTEGER,
    event_timestamp DATE,
    event_type TEXT,
    source_player_id INTEGER,
    target_player_id INTEGER,
    card_uuid TEXT,
    action_detail TEXT,
    zone_before TEXT,
    zone_after TEXT,
    mana_spent REAL,
    damage_dealt INTEGER,
    life_change INTEGER,
    win_condition TEXT,
    probability REAL,
    comment TEXT,
    game_phase TEXT,
    turn_number INTEGER,
    round_number INTEGER,
    meta_info TEXT
);
INSERT INTO game_event_logs (session_id,event_timestamp,event_type,source_player_id,target_player_id,card_uuid,action_detail,zone_before,zone_after,mana_spent,damage_dealt,life_change,win_condition,probability,comment,game_phase,turn_number,round_number,meta_info) VALUES (5001,'2023-04-01','Cast','101','0','abc123def','Cast Lightning Bolt','hand','stack',1.0,3,0,'Damage',0.85,'Successful cast','Main1',3,1,'Standard');
INSERT INTO game_event_logs (session_id,event_timestamp,event_type,source_player_id,target_player_id,card_uuid,action_detail,zone_before,zone_after,mana_spent,damage_dealt,life_change,win_condition,probability,comment,game_phase,turn_number,round_number,meta_info) VALUES (5002,'2023-04-02','Attack','102','103','def456ghi','Declared attack with Goblin','battlefield','stack',0.0,0,-2,'Combat',0.70,'Blocked by opponent','Combat',5,1,'Aggressive');
INSERT INTO game_event_logs (session_id,event_timestamp,event_type,source_player_id,target_player_id,card_uuid,action_detail,zone_before,zone_after,mana_spent,damage_dealt,life_change,win_condition,probability,comment,game_phase,turn_number,round_number,meta_info) VALUES (5003,'2023-04-03','Resolve','0','0','ghi789jkl','Resolve End Step effects','stack','graveyard',0.0,0,0,'None',1.0,'End of turn cleanup','End',10,1,'Cleanup');

-- Virtual tournament rooms for online matches
CREATE TABLE virtual_tournament_rooms (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    room_name TEXT,
    host_user_id INTEGER,
    max_players INTEGER,
    current_players INTEGER,
    region TEXT,
    language TEXT,
    is_voice_enabled INTEGER,
    voice_channel_id TEXT,
    chat_url TEXT,
    start_time DATE,
    end_time DATE,
    schedule_notes TEXT,
    security_key TEXT,
    video_stream_url TEXT,
    backup_server_ip TEXT,
    bandwidth_mbps REAL,
    moderator_user_id INTEGER,
    rating_threshold INTEGER,
    custom_rules TEXT
);
INSERT INTO virtual_tournament_rooms (tournament_id,room_name,host_user_id,max_players,current_players,region,language,is_voice_enabled,voice_channel_id,chat_url,start_time,end_time,schedule_notes,security_key,video_stream_url,backup_server_ip,bandwidth_mbps,moderator_user_id,rating_threshold,custom_rules) VALUES (2001,'AlphaRoom',501,16,4,'NA','en',1,'vc001','https://chat.example.com/alpha','2023-05-01','2023-05-01','First round matches','sec123','https://stream.example.com/alpha','192.168.1.10',100.0,601,1500,'NoSideboard');
INSERT INTO virtual_tournament_rooms (tournament_id,room_name,host_user_id,max_players,current_players,region,language,is_voice_enabled,voice_channel_id,chat_url,start_time,end_time,schedule_notes,security_key,video_stream_url,backup_server_ip,bandwidth_mbps,moderator_user_id,rating_threshold,custom_rules) VALUES (2002,'BetaRoom',502,32,12,'EU','de',0,NULL,'https://chat.example.com/beta','2023-05-02','2023-05-02','Mid tournament','sec456','https://stream.example.com/beta','192.168.1.20',200.0,602,1800,'LimitedBans');
INSERT INTO virtual_tournament_rooms (tournament_id,room_name,host_user_id,max_players,current_players,region,language,is_voice_enabled,voice_channel_id,chat_url,start_time,end_time,schedule_notes,security_key,video_stream_url,backup_server_ip,bandwidth_mbps,moderator_user_id,rating_threshold,custom_rules) VALUES (2003,'GammaRoom',503,8,8,'ASIA','jp',1,'vc003','https://chat.example.com/gamma','2023-05-03','2023-05-03','Finals','sec789','https://stream.example.com/gamma','192.168.1.30',150.0,603,2000,'NoTimeouts');

-- Metadata for card artwork assets
CREATE TABLE card_artwork_metadata (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    card_uuid TEXT,
    artist_id INTEGER,
    artwork_version INTEGER,
    creation_date DATE,
    resolution_width INTEGER,
    resolution_height INTEGER,
    color_space TEXT,
    file_format TEXT,
    file_size_kb INTEGER,
    dominant_color TEXT,
    style TEXT,
    medium TEXT,
    licensing_status TEXT,
    usage_rights TEXT,
    tags TEXT,
    description TEXT,
    checksum TEXT,
    source_url TEXT,
    credit_line TEXT,
    attribution_needed INTEGER
);
INSERT INTO card_artwork_metadata (card_uuid,artist_id,artwork_version,creation_date,resolution_width,resolution_height,color_space,file_format,file_size_kb,dominant_color,style,medium,licensing_status,usage_rights,tags,description,checksum,source_url,credit_line,attribution_needed) VALUES ('abc123def',301,1,'2022-11-10',3000,4200,'RGB','png',8500,'Blue','Illustrative','Digital','Licensed','Unlimited','fantasy,dragon','High resolution dragon illustration','a1b2c3d4','https://art.example.com/dragon','ArtistName Studios',0);
INSERT INTO card_artwork_metadata (card_uuid,artist_id,artwork_version,creation_date,resolution_width,resolution_height,color_space,file_format,file_size_kb,dominant_color,style,medium,licensing_status,usage_rights,tags,description,checksum,source_url,credit_line,attribution_needed) VALUES ('def456ghi',302,2,'2023-01-05',2500,3500,'CMYK','jpg',6300,'Red','Realistic','Oil','PublicDomain','None','portrait,hero','Oil painting of hero','d4c3b2a1','https://art.example.com/hero','Legacy Art Museum',0);
INSERT INTO card_artwork_metadata (card_uuid,artist_id,artwork_version,creation_date,resolution_width,resolution_height,color_space,file_format,file_size_kb,dominant_color,style,medium,licensing_status,usage_rights,tags,description,checksum,source_url,credit_line,attribution_needed) VALUES ('ghi789jkl',303,1,'2023-02-20',4000,6000,'RGB','tiff',12000,'Green','Abstract','Watercolor','Restricted','Limited','nature,abstract','Abstract watercolor landscape','e5f6g7h8','https://art.example.com/landscape','Independent Artist',1);

-- Streaming advertisement targeting configuration
CREATE TABLE streaming_ad_targets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    campaign_id INTEGER,
    ad_name TEXT,
    target_audience TEXT,
    min_age INTEGER,
    max_age INTEGER,
    region TEXT,
    language TEXT,
    platform TEXT,
    slot_time_start DATE,
    slot_time_end DATE,
    duration_seconds INTEGER,
    bid_price REAL,
    impressions_goal INTEGER,
    clicks_goal INTEGER,
    cpm REAL,
    cpc REAL,
    creative_type TEXT,
    compliance_status TEXT,
    notes TEXT,
    created_by INTEGER
);
INSERT INTO streaming_ad_targets (campaign_id,ad_name,target_audience,min_age,max_age,region,language,platform,slot_time_start,slot_time_end,duration_seconds,bid_price,impressions_goal,clicks_goal,cpm,cpc,creative_type,compliance_status,notes,created_by) VALUES (9001,'SpringSale','Gamers',18,35,'NA','en','Twitch','2023-06-01','2023-06-30',30,0.75,500000,2000,1.5,0.35,'Video','Approved','Seasonal promotion',401);
INSERT INTO streaming_ad_targets (campaign_id,ad_name,target_audience,min_age,max_age,region,language,platform,slot_time_start,slot_time_end,duration_seconds,bid_price,impressions_goal,clicks_goal,cpm,cpc,creative_type,compliance_status,notes,created_by) VALUES (9002,'CollectorEvent','Collectors',21,45,'EU','de','YouTube','2023-07-01','2023-07-15',45,1.20,300000,1500,2.0,0.80,'Banner','Pending','Upcoming collector meetup',402);
INSERT INTO streaming_ad_targets (campaign_id,ad_name,target_audience,min_age,max_age,region,language,platform,slot_time_start,slot_time_end,duration_seconds,bid_price,impressions_goal,clicks_goal,cpm,cpc,creative_type,compliance_status,notes,created_by) VALUES (9003,'NewSetLaunch','All',13,60,'ASIA','ja','Mixer','2023-08-01','2023-08-10',60,0.95,800000,3500,1.8,0.45,'Overlay','Approved','Launch of new set',403);

-- Sponsor payment records for contracts
CREATE TABLE sponsor_payment_records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    contract_id INTEGER,
    payment_date DATE,
    amount_usd REAL,
    currency TEXT,
    exchange_rate REAL,
    method TEXT,
    transaction_id TEXT,
    invoice_number TEXT,
    tax_amount REAL,
    tax_region TEXT,
    payment_status TEXT,
    notes TEXT,
    approved_by INTEGER,
    receipt_url TEXT,
    accounting_code TEXT,
    fiscal_year INTEGER,
    period INTEGER,
    payment_cycle TEXT,
    refund_flag INTEGER
);
INSERT INTO sponsor_payment_records (sponsor_id,contract_id,payment_date,amount_usd,currency,exchange_rate,method,transaction_id,invoice_number,tax_amount,tax_region,payment_status,notes,approved_by,receipt_url,accounting_code,fiscal_year,period,payment_cycle,refund_flag) VALUES (601,701,'2023-03-10',15000.00,'USD',1.0,'Wire','tx123','inv9001',1500.00,'CA','Completed','Quarterly sponsorship',701,'https://receipts.example.com/9001','SP001',2023,1,'Quarterly',0);
INSERT INTO sponsor_payment_records (sponsor_id,contract_id,payment_date,amount_usd,currency,exchange_rate,method,transaction_id,invoice_number,tax_amount,tax_region,payment_status,notes,approved_by,receipt_url,accounting_code,fiscal_year,period,payment_cycle,refund_flag) VALUES (602,702,'2023-04-15',20000.00,'EUR',1.1,'CreditCard','tx124','inv9002',2000.00,'EU','Pending','Annual sponsorship',702,'https://receipts.example.com/9002','SP002',2023,2,'Annual',0);
INSERT INTO sponsor_payment_records (sponsor_id,contract_id,payment_date,amount_usd,currency,exchange_rate,method,transaction_id,invoice_number,tax_amount,tax_region,payment_status,notes,approved_by,receipt_url,accounting_code,fiscal_year,period,payment_cycle,refund_flag) VALUES (603,703,'2023-05-20',5000.00,'GBP',1.3,'PayPal','tx125','inv9003',500.00,'UK','Completed','One‑off event',703,'https://receipts.example.com/9003','SP003',2023,3,'OneTime',0);

-- Venue maintenance schedule entries
CREATE TABLE venue_maintenance_schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    maintenance_type TEXT,
    scheduled_date DATE,
    start_time DATE,
    end_time DATE,
    contractor_id INTEGER,
    cost_estimate REAL,
    priority_level INTEGER,
    equipment_needed TEXT,
    safety_checks TEXT,
    notes TEXT,
    completed INTEGER,
    completion_date DATE,
    supervisor_id INTEGER,
    followup_required INTEGER,
    followup_date DATE,
    downtime_hours REAL,
    external_permit_needed INTEGER,
    permit_number TEXT
);
INSERT INTO venue_maintenance_schedule (venue_id,maintenance_type,scheduled_date,start_time,end_time,contractor_id,cost_estimate,priority_level,equipment_needed,safety_checks,notes,completed,completion_date,supervisor_id,followup_required,followup_date,downtime_hours,external_permit_needed,permit_number) VALUES (801,'HVAC','2023-06-05','2023-06-05','2023-06-05',901,1200.00,2,'Ventilator','FireCheck','Routine HVAC check',1,'2023-06-05',1001,0,NULL,2.0,0,NULL);
INSERT INTO venue_maintenance_schedule (venue_id,maintenance_type,scheduled_date,start_time,end_time,contractor_id,cost_estimate,priority_level,equipment_needed,safety_checks,notes,completed,completion_date,supervisor_id,followup_required,followup_date,downtime_hours,external_permit_needed,permit_number) VALUES (802,'Electrical','2023-06-12','2023-06-12','2023-06-12',902,2500.00,1,'Generator','ElectricalCheck','Upgrade main panel',0,NULL,1002,1,'2023-06-20',4.0,1,'PERM123');
INSERT INTO venue_maintenance_schedule (venue_id,maintenance_type,scheduled_date,start_time,end_time,contractor_id,cost_estimate,priority_level,equipment_needed,safety_checks,notes,completed,completion_date,supervisor_id,followup_required,followup_date,downtime_hours,external_permit_needed,permit_number) VALUES (803,'Plumbing','2023-06-19','2023-06-19','2023-06-19',903,1800.00,3,'PipeWrench','LeakCheck','Fix restroom leaks',0,NULL,1003,0,NULL,3.5,0,NULL);

-- Community content moderation logs
CREATE TABLE community_content_moderation (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    content_id INTEGER,
    content_type TEXT,
    submitted_by INTEGER,
    submission_date DATE,
    moderator_id INTEGER,
    review_date DATE,
    decision TEXT,
    violation_category TEXT,
    severity_level INTEGER,
    action_taken TEXT,
    notes TEXT,
    appealed INTEGER,
    appeal_date DATE,
    final_decision TEXT,
    duration_days INTEGER,
    warning_sent INTEGER,
    auto_flag_score REAL,
    context TEXT,
    related_thread_id INTEGER
);
INSERT INTO community_content_moderation (content_id,content_type,submitted_by,submission_date,moderator_id,review_date,decision,violation_category,severity_level,action_taken,notes,appealed,appeal_date,final_decision,duration_days,warning_sent,auto_flag_score,context,related_thread_id) VALUES (10001,'Post',501,'2023-04-10',601,'2023-04-11','Removed','Harassment',4,'Delete','User used offensive language',0,NULL,NULL,0,0,0.92,'Forum discussion',2001);
INSERT INTO community_content_moderation (content_id,content_type,submitted_by,submission_date,moderator_id,review_date,decision,violation_category,severity_level,action_taken,notes,appealed,appeal_date,final_decision,duration_days,warning_sent,auto_flag_score,context,related_thread_id) VALUES (10002,'Comment',502,'2023-04-12',602,'2023-04-13','Edited','Spam',2,'Edit','Removed promotional links',1,'2023-04-14','Approved',0,1,0.75,'Comment under post',2002);
INSERT INTO community_content_moderation (content_id,content_type,submitted_by,submission_date,moderator_id,review_date,decision,violation_category,severity_level,action_taken,notes,appealed,appeal_date,final_decision,duration_days,warning_sent,auto_flag_score,context,related_thread_id) VALUES (10003,'Image',503,'2023-04-14',603,'2023-04-15','Removed','Nudity',5,'Delete','Explicit content',0,NULL,NULL,0,0,0.98,'Gallery upload',2003);

-- API rate limit policy definitions
CREATE TABLE api_rate_limit_policies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    api_endpoint TEXT,
    method TEXT,
    limit_per_minute INTEGER,
    burst_capacity INTEGER,
    penalty_seconds INTEGER,
    description TEXT,
    created_at DATE,
    updated_at DATE,
    is_active INTEGER,
    enforcement_mode TEXT,
    user_tier TEXT,
    region TEXT,
    max_concurrent INTEGER,
    quota_reset_time DATE,
    notes TEXT,
    version INTEGER,
    deprecated INTEGER,
    migration_path TEXT,
    contact_email TEXT
);
INSERT INTO api_rate_limit_policies (api_endpoint,method,limit_per_minute,burst_capacity,penalty_seconds,description,created_at,updated_at,is_active,enforcement_mode,user_tier,region,max_concurrent,quota_reset_time,notes,version,deprecated,migration_path,contact_email) VALUES ('/cards','GET',120,200,30,'Read card data','2023-01-01','2023-06-01',1,'Hard','Free','Global',5,'2023-07-01','Standard rate limit',1,0,'/v2/cards','api@example.com');
INSERT INTO api_rate_limit_policies (api_endpoint,method,limit_per_minute,burst_capacity,penalty_seconds,description,created_at,updated_at,is_active,enforcement_mode,user_tier,region,max_concurrent,quota_reset_time,notes,version,deprecated,migration_path,contact_email) VALUES ('/tournaments','POST',30,50,60,'Create tournament','2023-02-15','2023-06-15',1,'Soft','Premium','EU',2,'2023-07-15','Higher limits for partners',2,0,'/v3/tournaments','partner@example.com');
INSERT INTO api_rate_limit_policies (api_endpoint,method,limit_per_minute,burst_capacity,penalty_seconds,description,created_at,updated_at,is_active,enforcement_mode,user_tier,region,max_concurrent,quota_reset_time,notes,version,deprecated,migration_path,contact_email) VALUES ('/analytics','GET',200,300,15,'Analytics data read','2023-03-10','2023-06-20',1,'Hard','Enterprise','NA',10,'2023-07-20','Enterprise tier access',3,0,'/v4/analytics','enterprise@example.com');

-- Digital collectible transaction log
CREATE TABLE digital_collectible_transactions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    transaction_type TEXT,
    collector_id INTEGER,
    collectible_uuid TEXT,
    amount INTEGER,
    price_usd REAL,
    fee_usd REAL,
    total_usd REAL,
    transaction_date DATE,
    blockchain_tx_id TEXT,
    wallet_address TEXT,
    status TEXT,
    settlement_date DATE,
    notes TEXT,
    source_platform TEXT,
    destination_platform TEXT,
    exchange_rate REAL,
    tax_applied REAL,
    tax_region TEXT,
    verification_hash TEXT
);
INSERT INTO digital_collectible_transactions (transaction_type,collector_id,collectible_uuid,amount,price_usd,fee_usd,total_usd,transaction_date,blockchain_tx_id,wallet_address,status,settlement_date,notes,source_platform,destination_platform,exchange_rate,tax_applied,tax_region,verification_hash) VALUES ('Buy',801,'col123abc',1,150.00,5.00,155.00,'2023-05-01','blk001','wallet001','Completed','2023-05-02','First purchase','MarketplaceA','WalletB',1.0,0.00,'None','hash001');
INSERT INTO digital_collectible_transactions (transaction_type,collector_id,collectible_uuid,amount,price_usd,fee_usd,total_usd,transaction_date,blockchain_tx_id,wallet_address,status,settlement_date,notes,source_platform,destination_platform,exchange_rate,tax_applied,tax_region,verification_hash) VALUES ('Sell',802,'col456def',2,120.00,4.00,244.00,'2023-05-10','blk002','wallet002','Pending',NULL,'Awaiting buyer','WalletB','MarketplaceA',1.0,12.20,'CA','hash002');
INSERT INTO digital_collectible_transactions (transaction_type,collector_id,collectible_uuid,amount,price_usd,fee_usd,total_usd,transaction_date,blockchain_tx_id,wallet_address,status,settlement_date,notes,source_platform,destination_platform,exchange_rate,tax_applied,tax_region,verification_hash) VALUES ('Transfer',803,'col789ghi',1,0.00,0.00,0.00,'2023-05-15','blk003','wallet003','Completed','2023-05-15','Gift to friend','WalletC','WalletD',1.0,0.00,'None','hash003');