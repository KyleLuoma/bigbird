-- Card image assets associated with cards
CREATE TABLE card_image_assets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    card_uuid TEXT NOT NULL,
    image_type TEXT,
    resolution TEXT,
    file_format TEXT,
    file_size_kb INTEGER,
    url TEXT,
    photographer TEXT,
    upload_date DATE,
    license_id INTEGER,
    copyright_year INTEGER,
    is_official INTEGER DEFAULT 0,
    aspect_ratio TEXT,
    color_profile TEXT,
    source_system TEXT,
    checksum TEXT,
    storage_path TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    notes TEXT,
    tags TEXT,
    priority INTEGER
);
INSERT INTO card_image_assets (card_uuid,image_type,resolution,file_format,file_size_kb,url,photographer,upload_date,license_id,copyright_year,is_official,aspect_ratio,color_profile,source_system,checksum,storage_path,notes,tags,priority) VALUES ('uuid_001','illustration','2400x3400','png',5120,'http://images.example.com/001.png','artist_one','2024-01-10',101,2023,1,'3:2','sRGB','internal','abc123def','/images/001.png','initial_release','illustration,highres',10);
INSERT INTO card_image_assets (card_uuid,image_type,resolution,file_format,file_size_kb,url,photographer,upload_date,license_id,copyright_year,is_official,aspect_ratio,color_profile,source_system,checksum,storage_path,notes,tags,priority) VALUES ('uuid_002','fullart','3500x5000','jpg',8200,'http://images.example.com/002.jpg','artist_two','2024-02-15',102,2024,1,'7:5','AdobeRGB','external','def456ghi','/images/002.jpg','full_art_variant','fullart,variant',5);
INSERT INTO card_image_assets (card_uuid,image_type,resolution,file_format,file_size_kb,url,photographer,upload_date,license_id,copyright_year,is_official,aspect_ratio,color_profile,source_system,checksum,storage_path,notes,tags,priority) VALUES ('uuid_003','promo','1800x2600','png',3000,'http://images.example.com/003.png','artist_three','2024-03-05',103,2024,0,'9:13','sRGB','internal','ghi789jkl','/images/003.png','promo_card','promo,lowres',15);

-- Token definitions used in gameplay
CREATE TABLE token_definitions (
    token_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    description TEXT,
    image_url TEXT,
    power TEXT,
    toughness TEXT,
    colors TEXT,
    types TEXT,
    subtypes TEXT,
    rarity TEXT,
    release_set_code TEXT,
    artist TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    is_legacy INTEGER DEFAULT 0,
    token_uuid TEXT UNIQUE,
    mana_cost TEXT,
    abilities TEXT,
    flavor_text TEXT,
    legal_formats TEXT,
    collector_number TEXT,
    tags TEXT
);
INSERT INTO token_definitions (name,description,image_url,power,toughness,colors,types,subtypes,rarity,release_set_code,artist,mana_cost,abilities,flavor_text,legal_formats,collector_number,tags,token_uuid) VALUES ('Zombie_Token','Undead creature token','http://tokens.example.com/zombie.png','2','2','B','Creature','Zombie','Common','SET01','artist_z','2B','Deathtouch','Rising from the grave','Standard,Modern','001','undead,token','tok_001');
INSERT INTO token_definitions (name,description,image_url,power,toughness,colors,types,subtypes,rarity,release_set_code,artist,mana_cost,abilities,flavor_text,legal_formats,collector_number,tags,token_uuid) VALUES ('Treasure_Token','Artifact token that can be tapped for mana','http://tokens.example.com/treasure.png','-','-','Colorless','Artifact','','Rare','SET02','artist_t','0','Tap: Add one mana of any color','Shiny bounty','Standard','002','artifact,token','tok_002');
INSERT INTO token_definitions (name,description,image_url,power,toughness,colors,types,subtypes,rarity,release_set_code,artist,mana_cost,abilities,flavor_text,legal_formats,collector_number,tags,token_uuid) VALUES ('Saproling_Token','Plant creature token','http://tokens.example.com/saproling.png','1','1','Green','Creature','Saproling','Common','SET03','artist_s','1G','Regenerate','Rooted in the earth','Standard,Legacy','003','plant,token','tok_003');

-- Production logistics for set manufacturing
CREATE TABLE set_production_logistics (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    batch_number TEXT,
    production_stage TEXT,
    start_timestamp DATETIME,
    end_timestamp DATETIME,
    facility_id INTEGER,
    supervisor_id INTEGER,
    machines_used TEXT,
    material_source TEXT,
    quality_score REAL,
    defects_count INTEGER,
    notes TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    shift TEXT,
    operator_team TEXT,
    temperature_celsius REAL,
    humidity_percent REAL,
    power_consumption_kwh REAL,
    safety_incidents INTEGER
);
INSERT INTO set_production_logistics (set_code,batch_number,production_stage,start_timestamp,end_timestamp,facility_id,supervisor_id,machines_used,material_source,quality_score,defects_count,notes,shift,operator_team,temperature_celsius,humidity_percent,power_consumption_kwh,safety_incidents) VALUES ('SET01','B001','Printing','2024-04-01 08:00:00','2024-04-01 12:00:00',10,200,'PressA,PressB','PaperCo',98.7,2,'First batch','Morning','TeamA',22.5,45.0,1500.0,0);
INSERT INTO set_production_logistics (set_code,batch_number,production_stage,start_timestamp,end_timestamp,facility_id,supervisor_id,machines_used,material_source,quality_score,defects_count,notes,shift,operator_team,temperature_celsius,humidity_percent,power_consumption_kwh,safety_incidents) VALUES ('SET02','B002','Foiling','2024-04-02 13:00:00','2024-04-02 17:30:00',11,201,'FoilMachineX','FoilInc',97.3,1,'Foil alignment check','Afternoon','TeamB',24.0,40.0,1800.0,1);
INSERT INTO set_production_logistics (set_code,batch_number,production_stage,start_timestamp,end_timestamp,facility_id,supervisor_id,machines_used,material_source,quality_score,defects_count,notes,shift,operator_team,temperature_celsius,humidity_percent,power_consumption_kwh,safety_incidents) VALUES ('SET03','B003','Packaging','2024-04-03 09:30:00','2024-04-03 14:15:00',12,202,'PackagerZ','BoxCo',99.1,0,'All packs sealed','Morning','TeamC',21.0,42.0,1300.0,0);

-- Player marketplace activity tracking
CREATE TABLE player_marketplace_activity (
    activity_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    action_type TEXT,
    card_uuid TEXT,
    quantity INTEGER,
    price REAL,
    currency TEXT,
    timestamp DATETIME,
    market_region TEXT,
    device_type TEXT,
    ip_address TEXT,
    session_id TEXT,
    referral_code TEXT,
    promotion_applied TEXT,
    status TEXT,
    notes TEXT,
    transaction_fee REAL,
    shipping_fee REAL,
    total_cost REAL,
    payment_method TEXT,
    verification_status TEXT
);
INSERT INTO player_marketplace_activity (player_id,action_type,card_uuid,quantity,price,currency,timestamp,market_region,device_type,ip_address,session_id,referral_code,promotion_applied,status,notes,transaction_fee,shipping_fee,total_cost,payment_method,verification_status) VALUES (1001,'list','uuid_001',4,2.5,'USD','2024-05-01 10:15:00','NA','Desktop','192.168.1.10','sess_001','REF10','SPRING','Active','Listed for sale',0.10,0.00,10.10,'CreditCard','Verified');
INSERT INTO player_marketplace_activity (player_id,action_type,card_uuid,quantity,price,currency,timestamp,market_region,device_type,ip_address,session_id,referral_code,promotion_applied,status,notes,transaction_fee,shipping_fee,total_cost,payment_method,verification_status) VALUES (1002,'buy','uuid_002',1,15.0,'USD','2024-05-02 14:45:00','EU','Mobile','203.0.113.5','sess_002','REF20','SUMMER','Completed','Purchase completed',0.50,0.00,15.50,'PayPal','Verified');
INSERT INTO player_marketplace_activity (player_id,action_type,card_uuid,quantity,price,currency,timestamp,market_region,device_type,ip_address,session_id,referral_code,promotion_applied,status,notes,transaction_fee,shipping_fee,total_cost,payment_method,verification_status) VALUES (1003,'cancel','uuid_003',2,5.0,'USD','2024-05-03 09:30:00','APAC','Tablet','198.51.100.22','sess_003','REF30','NONE','Cancelled','Buyer cancelled order',0.20,0.00,10.20,'DebitCard','Verified');

-- Tournament streaming metadata
CREATE TABLE tournament_streaming_metadata (
    stream_id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    platform TEXT,
    stream_key TEXT,
    start_time DATETIME,
    end_time DATETIME,
    bitrate_kbps INTEGER,
    resolution TEXT,
    viewer_peak INTEGER,
    viewer_average INTEGER,
    chat_messages INTEGER,
    sponsor_overlay TEXT,
    language TEXT,
    closed_captions INTEGER,
    latency_mode TEXT,
    archive_url TEXT,
    created_by INTEGER,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    moderation_status TEXT,
    notes TEXT,
    compliance_flags TEXT
);
INSERT INTO tournament_streaming_metadata (tournament_id,platform,stream_key,start_time,end_time,bitrate_kbps,resolution,viewer_peak,viewer_average,chat_messages,sponsor_overlay,language,closed_captions,latency_mode,archive_url,created_by,moderation_status,notes,compliance_flags) VALUES (2001,'Twitch','key_001','2024-06-01 12:00:00','2024-06-01 15:00:00',4500,'1080p',12000,8000,2500,'SponsorA','en',1,'low','http://archive.example.com/2001','500','Approved','Main event stream','None');
INSERT INTO tournament_streaming_metadata (tournament_id,platform,stream_key,start_time,end_time,bitrate_kbps,resolution,viewer_peak,viewer_average,chat_messages,sponsor_overlay,language,closed_captions,latency_mode,archive_url,created_by,moderation_status,notes,compliance_flags) VALUES (2002,'YouTube','key_002','2024-06-02 09:00:00','2024-06-02 12:30:00',6000,'1440p',15000,10000,3200,'SponsorB','en',0,'high','http://archive.example.com/2002','501','Pending','Qualifier round','Flagged');
INSERT INTO tournament_streaming_metadata (tournament_id,platform,stream_key,start_time,end_time,bitrate_kbps,resolution,viewer_peak,viewer_average,chat_messages,sponsor_overlay,language,closed_captions,latency_mode,archive_url,created_by,moderation_status,notes,compliance_flags) VALUES (2003,'Mixer','key_003','2024-06-03 18:00:00','2024-06-03 21:00:00',3500,'720p',8000,5000,1800,'SponsorC','es',1,'medium','http://archive.example.com/2003','502','Approved','Finals','None');

-- Card mechanics taxonomy
CREATE TABLE card_mechanics_taxonomy (
    mechanic_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    description TEXT,
    category TEXT,
    subcategory TEXT,
    first_appearance_set TEXT,
    rules_reference TEXT,
    complexity_score REAL,
    player_interaction_level INTEGER,
    typical_usage TEXT,
    related_mechanics TEXT,
    example_card_uuid TEXT,
    is_banned INTEGER,
    is_restricted INTEGER,
    official_status TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    source_document TEXT,
    tags TEXT,
    popularity_index REAL
);
INSERT INTO card_mechanics_taxonomy (name,description,category,subcategory,first_appearance_set,rules_reference,complexity_score,player_interaction_level,typical_usage,related_mechanics,example_card_uuid,is_banned,is_restricted,official_status,source_document,tags,popularity_index) VALUES ('Flying','Can only be blocked by creatures with flying or reach','Combat','Keyword','SET01','Rule180','2.5',3,'Aggressive','Reach,Hover','uuid_010',0,0,'Standard','ComprehensiveRules','air,keyword',85.5);
INSERT INTO card_mechanics_taxonomy (name,description,category,subcategory,first_appearance_set,rules_reference,complexity_score,player_interaction_level,typical_usage,related_mechanics,example_card_uuid,is_banned,is_restricted,official_status,source_document,tags,popularity_index) VALUES ('Deathtouch','Any amount of damage destroys','Combat','Keyword','SET02','Rule119','3.0',4,'Control','Lifelink,Infect','uuid_020',0,0,'Standard','ComprehensiveRules','death,keyword',78.2);
INSERT INTO card_mechanics_taxonomy (name,description,category,subcategory,first_appearance_set,rules_reference,complexity_score,player_interaction_level,typical_usage,related_mechanics,example_card_uuid,is_banned,is_restricted,official_status,source_document,tags,popularity_index) VALUES ('Explore','Allows entering the battlefield tapped','Ability','Triggered','SET03','Rule702','1.8',2,'Ramp','Landfall','uuid_030',0,0,'Standard','ComprehensiveRules','explore,keyword',64.0);

-- Digital artifact access log
CREATE TABLE digital_artifact_access_log (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    artifact_id INTEGER,
    user_id INTEGER,
    access_type TEXT,
    access_timestamp DATETIME,
    ip_address TEXT,
    device_id TEXT,
    location TEXT,
    session_id TEXT,
    purpose TEXT,
    outcome TEXT,
    bytes_transferred INTEGER,
    duration_seconds INTEGER,
    auth_method TEXT,
    security_level TEXT,
    notes TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    previous_version TEXT,
    new_version TEXT,
    compliance_check TEXT
);
INSERT INTO digital_artifact_access_log (artifact_id,user_id,access_type,access_timestamp,ip_address,device_id,location,session_id,purpose,outcome,bytes_transferred,duration_seconds,auth_method,security_level,notes,previous_version,new_version,compliance_check) VALUES (3001,1001,'download','2024-07-01 11:20:00','192.0.2.1','dev_001','US','sessA','Review','Success',204800,12,'OAuth','High','First download','v1.0','v1.1','Pass');
INSERT INTO digital_artifact_access_log (artifact_id,user_id,access_type,access_timestamp,ip_address,device_id,location,session_id,purpose,outcome,bytes_transferred,duration_seconds,auth_method,security_level,notes,previous_version,new_version,compliance_check) VALUES (3002,1002,'view','2024-07-02 14:45:00','198.51.100.45','dev_002','EU','sessB','Analysis','Success',51200,5,'SAML','Medium','Viewed metadata','v2.0','v2.0','Pass');
INSERT INTO digital_artifact_access_log (artifact_id,user_id,access_type,access_timestamp,ip_address,device_id,location,session_id,purpose,outcome,bytes_transferred,duration_seconds,auth_method,security_level,notes,previous_version,new_version,compliance_check) VALUES (3003,1003,'delete','2024-07-03 09:10:00','203.0.113.77','dev_003','APAC','sessC','Cleanup','Denied',0,0,'APIKey','High','Unauthorized delete attempt','v1.4','v1.4','Fail');

-- Set release event schedule
CREATE TABLE set_release_event_schedule (
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    event_type TEXT,
    event_name TEXT,
    start_date DATE,
    end_date DATE,
    venue_id INTEGER,
    host_organization TEXT,
    expected_attendance INTEGER,
    ticket_price REAL,
    registration_deadline DATE,
    livestream_url TEXT,
    sponsors TEXT,
    agenda TEXT,
    notes TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    status TEXT,
    capacity_limit INTEGER,
    special_guests TEXT
);
INSERT INTO set_release_event_schedule (set_code,event_type,event_name,start_date,end_date,venue_id,host_organization,expected_attendance,ticket_price,registration_deadline,livestream_url,sponsors,agenda,notes,status,capacity_limit,special_guests) VALUES ('SET10','Preview','Set10_Opening','2024-08-01','2024-08-01',101,'GameCo','1500',25.0,'2024-07-25','http://stream.example.com/set10','SponsorX','Keynote,Showcase','Opening day event','Scheduled',2000,'ArtistA');
INSERT INTO set_release_event_schedule (set_code,event_type,event_name,start_date,end_date,venue_id,host_organization,expected_attendance,ticket_price,registration_deadline,livestream_url,sponsors,agenda,notes,status,capacity_limit,special_guests) VALUES ('SET10','Workshop','Deck_Building_Workshop','2024-08-02','2024-08-02',102,'GameCo','800',15.0','2024-07-28','http://stream.example.com/workshop','SponsorY','HandsOn,Strategies','Interactive workshop','Scheduled',1000,'ProPlayerB');
INSERT INTO set_release_event_schedule (set_code,event_type,event_name,start_date,end_date,venue_id,host_organization,expected_attendance,ticket_price,registration_deadline,livestream_url,sponsors,agenda,notes,status,capacity_limit,special_guests) VALUES ('SET10','Tournament','Set10_Championship','2024-08-03','2024-08-04',103,'GameCo','2000',40.0','2024-07-30','http://stream.example.com/championship','SponsorZ','Prelim,Finals','Main competitive event','Scheduled',2500,'ChampionC');

-- Card pricing algorithm parameters
CREATE TABLE card_pricing_algorithm_parameters (
    param_id INTEGER PRIMARY KEY AUTOINCREMENT,
    algorithm_name TEXT,
    version TEXT,
    effective_date DATE,
    expiration_date DATE,
    base_price_factor REAL,
    rarity_multiplier REAL,
    demand_coefficient REAL,
    supply_coefficient REAL,
    time_decay_rate REAL,
    volatility_adjustment REAL,
    seasonality_factor REAL,
    region_multiplier REAL,
    currency_adjustment REAL,
    min_price REAL,
    max_price REAL,
    rounding_rule TEXT,
    enabled_flag INTEGER,
    created_by INTEGER,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    description TEXT
);
INSERT INTO card_pricing_algorithm_parameters (algorithm_name,version,effective_date,expiration_date,base_price_factor,rarity_multiplier,demand_coefficient,supply_coefficient,time_decay_rate,volatility_adjustment,seasonality_factor,region_multiplier,currency_adjustment,min_price,max_price,rounding_rule,enabled_flag,created_by,description) VALUES ('DynamicPricing','1.0','2024-01-01','2025-01-01',1.05,2.0,0.8,0.5,0.01,0.02,1.1,1.0,0.0,0.5,500.0,'ROUND_UP',1,100,'Base dynamic pricing model');
INSERT INTO card_pricing_algorithm_parameters (algorithm_name,version,effective_date,expiration_date,base_price_factor,rarity_multiplier,demand_coefficient,supply_coefficient,time_decay_rate,volatility_adjustment,seasonality_factor,region_multiplier,currency_adjustment,min_price,max_price,rounding_rule,enabled_flag,created_by,description) VALUES ('DynamicPricing','1.1','2024-06-01','2025-06-01',1.07,2.2,0.85,0.45,0.015,0.025,1.2,1.1,0.0,0.6,600.0,'ROUND_NEAREST',1,101,'Adjusted for post‑summer demand');
INSERT INTO card_pricing_algorithm_parameters (algorithm_name,version,effective_date,expiration_date,base_price_factor,rarity_multiplier,demand_coefficient,supply_coefficient,time_decay_rate,volatility_adjustment,seasonality_factor,region_multiplier,currency_adjustment,min_price,max_price,rounding_rule,enabled_flag,created_by,description) VALUES ('DynamicPricing','1.2','2024-12-01','2025-12-01',1.06,2.1,0.82,0.48,0.012,0.022,1.15,1.05,0.0,0.55,550.0,'ROUND_DOWN',1,102,'Year‑end adjustment');

-- Fantasy world event NPC profiles
CREATE TABLE fantasy_world_event_npc_profiles (
    npc_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    role TEXT,
    affiliation TEXT,
    location TEXT,
    backstory TEXT,
    appearance_desc TEXT,
    abilities TEXT,
    alignment TEXT,
    base_power TEXT,
    base_toughness TEXT,
    event_associated TEXT,
    first_appearance_set TEXT,
    voice_actor TEXT,
    status TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    tags TEXT,
    notes TEXT,
    image_url TEXT,
    lore_reference TEXT
);
INSERT INTO fantasy_world_event_npc_profiles (name,role,affiliation,location,backstory,appearance_desc,abilities,alignment,base_power,base_toughness,event_associated,first_appearance_set,voice_actor,status,tags,notes,image_url,lore_reference) VALUES ('Eldric_The_Seer','Prophet','Order_of_Visions','Eldoria','Guides heroes through visions','Robed figure with glowing eyes','Future_Sight,Time_Manipulation','Neutral','3','3','Chronicle_of_Dawn','SET15','Actor_A','Active','prophet,vision','Key storyline NPC','http://npc.images.com/eldric.png','LoreBook_Chapter5');
INSERT INTO fantasy_world_event_npc_profiles (name,role,affiliation,location,backstory,appearance_desc,abilities,alignment,base_power,base_toughness,event_associated,first_appearance_set,voice_actor,status,tags,notes,image_url,lore_reference) VALUES ('Mira_Stormblade','Warrior','Stormclan','Tempest_Ridge','Champion of the storm','Armored with lightning motifs','Lightning_Strike,Wind_Rush','Chaotic_Good','5','5','Tempest_Conflict','SET16','Actor_B','Active','warrior,storm','Leads storm assault','http://npc.images.com/mira.png','Chronicles_Vol2');
INSERT INTO fantasy_world_event_npc_profiles (name,role,affiliation,location,backstory,appearance_desc,abilities,alignment,base_power,base_toughness,event_associated,first_appearance_set,voice_actor,status,tags,notes,image_url,lore_reference) VALUES ('Lord_Varyn','Overlord','Dark_Coven','Obsidian_Hold','Seeks to dominate the realms','Dark cloaked figure with crimson sigils','Dark_Magic,Domination','Evil','8','8','Shadow_Rise','SET17','Actor_C','Inactive','overlord,shadow','Antagonist of Shadow Rise','http://npc.images.com/varyn.png','Saga_Chapter9');