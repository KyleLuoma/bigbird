-- Player mood surveys collected after gameplay sessions
CREATE TABLE player_mood_surveys
(
    survey_id                INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id                INTEGER,
    survey_date              DATE,
    mood_level               INTEGER,
    stress_level             INTEGER,
    fatigue_level            INTEGER,
    excitement_level         INTEGER,
    comments                 TEXT,
    location                 TEXT,
    device_type              TEXT,
    session_id               INTEGER,
    game_mode                TEXT,
    duration_minutes        INTEGER,
    weather                  TEXT,
    heart_rate               INTEGER,
    sleep_hours              REAL,
    caffeine_intake_ml       INTEGER,
    hydration_ml             INTEGER,
    music_genre              TEXT,
    feedback_score           INTEGER
);

INSERT INTO player_mood_surveys (player_id,survey_date,mood_level,stress_level,fatigue_level,excitement_level,comments,location,device_type,session_id,game_mode,duration_minutes,weather,heart_rate,sleep_hours,caffeine_intake_ml,hydration_ml,music_genre,feedback_score)
VALUES (101,'2025-12-01',8,3,4,9,'Great session','NYC','PC',5001,'Ranked',45,'Clear',72,7.5,50,1200,'Rock',9);

INSERT INTO player_mood_surveys (player_id,survey_date,mood_level,stress_level,fatigue_level,excitement_level,comments,location,device_type,session_id,game_mode,duration_minutes,weather,heart_rate,sleep_hours,caffeine_intake_ml,hydration_ml,music_genre,feedback_score)
VALUES (102,'2025-12-02',5,6,7,4,'Tough match','LA','Console',5002,'Casual',30,'Rain',85,6.0,0,800,'HipHop',6);

INSERT INTO player_mood_surveys (player_id,survey_date,mood_level,stress_level,fatigue_level,excitement_level,comments,location,device_type,session_id,game_mode,duration_minutes,weather,heart_rate,sleep_hours,caffeine_intake_ml,hydration_ml,music_genre,feedback_score)
VALUES (103,'2025-12-03',9,2,2,10,'Amazing win','Chicago','Mobile',5003,'Tournament',120,'Sunny',68,8.0,20,1500,'Electronic',10);


-- History of achievement unlocks by players
CREATE TABLE achievement_unlock_history
(
    unlock_id          INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id          INTEGER,
    achievement_id     TEXT,
    unlock_timestamp   DATETIME,
    game_version       TEXT,
    device_id          TEXT,
    region             TEXT,
    platform           TEXT,
    criteria_met       TEXT,
    points_awarded    INTEGER,
    level             INTEGER,
    rarity            TEXT,
    source            TEXT,
    notification_sent INTEGER,
    description       TEXT,
    category          TEXT,
    subcategory       TEXT,
    unlock_method     TEXT,
    related_event_id  INTEGER,
    metadata          TEXT
);

INSERT INTO achievement_unlock_history (player_id,achievement_id,unlock_timestamp,game_version,device_id,region,platform,criteria_met,points_awarded,level,rarity,source,notification_sent,description,category,subcategory,unlock_method,related_event_id,metadata)
VALUES (101,'ACHV001','2025-12-01 14:23:00','1.4.2','DEV123','NA','PC','Win10Matches',100,5,'Rare','Quest',1,'First milestone','Progress','Games','Automatic',2001,'{}');

INSERT INTO achievement_unlock_history (player_id,achievement_id,unlock_timestamp,game_version,device_id,region,platform,criteria_met,points_awarded,level,rarity,source,notification_sent,description,category,subcategory,unlock_method,related_event_id,metadata)
VALUES (102,'ACHV045','2025-12-02 09:15:00','1.4.3','DEV456','EU','Console','CollectAllCards',250,10,'Epic','Event',1,'Card collector','Collection','Cards','Manual',2002,'{}');

INSERT INTO achievement_unlock_history (player_id,achievement_id,unlock_timestamp,game_version,device_id,region,platform,criteria_met,points_awarded,level,rarity,source,notification_sent,description,category,subcategory,unlock_method,related_event_id,metadata)
VALUES (103,'ACHV078','2025-12-03 20:45:00','1.5.0','DEV789','ASIA','Mobile','Play100Hours',500,15,'Legendary','Season',1,'Veteran player','Playtime','Hours','Automatic',2003,'{}');


-- Audio commentary tracks for in‑game events
CREATE TABLE audio_commentary_tracks
(
    track_id            INTEGER PRIMARY KEY AUTOINCREMENT,
    game_event_id      INTEGER,
    commentator_name   TEXT,
    language           TEXT,
    duration_seconds   INTEGER,
    audio_format       TEXT,
    file_path          TEXT,
    upload_date        DATE,
    file_size_bytes    INTEGER,
    bitrate_kbps       INTEGER,
    sample_rate_hz     INTEGER,
    channel            TEXT,
    transcript         TEXT,
    audience_rating    INTEGER,
    is_explicit        INTEGER,
    license_type       TEXT,
    royalty_percent    REAL,
    associated_set_code TEXT,
    related_card_id    INTEGER,
    tags               TEXT,
    version            INTEGER
);

INSERT INTO audio_commentary_tracks (game_event_id,commentator_name,language,duration_seconds,audio_format,file_path,upload_date,file_size_bytes,bitrate_kbps,sample_rate_hz,channel,transcript,audience_rating,is_explicit,license_type,royalty_percent,associated_set_code,related_card_id,tags,version)
VALUES (3001,'JohnDoe','en',180,'mp3','/audio/track1.mp3','2025-11-30',4500000,192,44100,'Stereo','Intro commentary',8,0,'Standard',0.05,'SET01',101,'intro,gameplay',1);

INSERT INTO audio_commentary_tracks (game_event_id,commentator_name,language,duration_seconds,audio_format,file_path,upload_date,file_size_bytes,bitrate_kbps,sample_rate_hz,channel,transcript,audience_rating,is_explicit,license_type,royalty_percent,associated_set_code,related_card_id,tags,version)
VALUES (3002,'JaneSmith','en',240,'aac','/audio/track2.aac','2025-12-01',6200000,256,48000,'Stereo','Finale commentary',9,0,'Premium',0.07,'SET02',102,'finale,epic',2);

INSERT INTO audio_commentary_tracks (game_event_id,commentator_name,language,duration_seconds,audio_format,file_path,upload_date,file_size_bytes,bitrate_kbps,sample_rate_hz,channel,transcript,audience_rating,is_explicit,license_type,royalty_percent,associated_set_code,related_card_id,tags,version)
VALUES (3003,'MikeLee','fr',150,'wav','/audio/track3.wav','2025-12-02',7800000,320,44100,'Mono','Special announcement',7,1,'Exclusive',0.1,'SET03',103,'announcement',3);


-- Chat logs captured from live streams
CREATE TABLE streaming_chat_logs
(
    log_id            INTEGER PRIMARY KEY AUTOINCREMENT,
    stream_id         INTEGER,
    timestamp         DATETIME,
    user_id           INTEGER,
    username          TEXT,
    message           TEXT,
    is_mod            INTEGER,
    channel_name      TEXT,
    emotes_used       TEXT,
    message_length    INTEGER,
    follower_status   INTEGER,
    subscription_tier INTEGER,
    bits_donated      INTEGER,
    raid_source_id    INTEGER,
    raid_viewer_count INTEGER,
    chat_mode         TEXT,
    language          TEXT,
    sentiment_score   REAL,
    word_count        INTEGER,
    client_version    TEXT
);

INSERT INTO streaming_chat_logs (stream_id,timestamp,user_id,username,message,is_mod,channel_name,emotes_used,message_length,follower_status,subscription_tier,bits_donated,raid_source_id,raid_viewer_count,chat_mode,language,sentiment_score,word_count,client_version)
VALUES (9001,'2025-12-01 18:05:12',501,'GamerA','Great play!',0,'General','Kappa',11,1,0,0,NULL,NULL,'Live','en',0.9,2,'1.0.0');

INSERT INTO streaming_chat_logs (stream_id,timestamp,user_id,username,message,is_mod,channel_name,emotes_used,message_length,follower_status,subscription_tier,bits_donated,raid_source_id,raid_viewer_count,chat_mode,language,sentiment_score,word_count,client_version)
VALUES (9002,'2025-12-01 18:07:45',502,'ProGamer','Nice strategy!',0,'General','PogChamp',14,1,1,100,NULL,NULL,'Live','en',0.8,2,'1.0.1');

INSERT INTO streaming_chat_logs (stream_id,timestamp,user_id,username,message,is_mod,channel_name,emotes_used,message_length,follower_status,subscription_tier,bits_donated,raid_source_id,raid_viewer_count,chat_mode,language,sentiment_score,word_count,client_version)
VALUES (9003,'2025-12-01 18:10:03',503,'Viewer123','LOL',0,'General','LUL',3,0,0,0,NULL,NULL,'Live','en',0.6,1,'1.0.0');


-- Roster information for esports teams
CREATE TABLE esports_team_roster
(
    team_id            INTEGER,
    player_id          INTEGER PRIMARY KEY AUTOINCREMENT,
    player_name        TEXT,
    role               TEXT,
    join_date          DATE,
    contract_end       DATE,
    salary_usd         INTEGER,
    nationality        TEXT,
    age                INTEGER,
    height_cm          INTEGER,
    weight_kg          INTEGER,
    preferred_hero    TEXT,
    win_rate           REAL,
    games_played       INTEGER,
    is_captain        INTEGER,
    social_media_handle TEXT,
    streaming_platform TEXT,
    streaming_url      TEXT,
    endorsement_count  INTEGER,
    injury_status      TEXT
);

INSERT INTO esports_team_roster (team_id,player_name,role,join_date,contract_end,salary_usd,nationality,age,height_cm,weight_kg,preferred_hero,win_rate,games_played,is_captain,social_media_handle,streaming_platform,streaming_url,endorsement_count,injury_status)
VALUES (10,'Alice','Mid','2024-06-01','2026-06-01',150000,'US',22,170,60,'Mage',0.62,200,0,'alice_gamer','Twitch','twitch.tv/alice',5,'Healthy');

INSERT INTO esports_team_roster (team_id,player_name,role,join_date,contract_end,salary_usd,nationality,age,height_cm,weight_kg,preferred_hero,win_rate,games_played,is_captain,social_media_handle,streaming_platform,streaming_url,endorsement_count,injury_status)
VALUES (10,'Bob','ADC','2023-03-15','2025-03-15',130000,'CA',24,180,75,'Sniper',0.58,250,1,'bob_shoots','YouTube','youtube.com/bob',8,'Minor wrist strain');

INSERT INTO esports_team_roster (team_id,player_name,role,join_date,contract_end,salary_usd,nationality,age,height_cm,weight_kg,preferred_hero,win_rate,games_played,is_captain,social_media_handle,streaming_platform,streaming_url,endorsement_count,injury_status)
VALUES (10,'Cathy','Support','2022-01-20','2024-12-20',120000,'UK',23,165,58,'Healer',0.71,300,0,'cathy_support','Mixer','mixer.com/cathy',3,'Healthy');


-- Assignments of referees to tournament matches
CREATE TABLE tournament_referee_assignments
(
    assignment_id          INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id          INTEGER,
    referee_id             INTEGER,
    start_time             DATETIME,
    end_time               DATETIME,
    match_id               INTEGER,
    zone                   TEXT,
    shift_type             TEXT,
    notes                  TEXT,
    is_head_referee        INTEGER,
    years_experience       INTEGER,
    certification_level    TEXT,
    contact_email          TEXT,
    phone_number           TEXT,
    assigned_by            INTEGER,
    priority_level         INTEGER,
    travel_allowance       REAL,
    equipment_provided     TEXT,
    language_proficiency   TEXT,
    rating                 INTEGER
);

INSERT INTO tournament_referee_assignments (tournament_id,referee_id,start_time,end_time,match_id,zone,shift_type,notes,is_head_referee,years_experience,certification_level,contact_email,phone_number,assigned_by,priority_level,travel_allowance,equipment_provided,language_proficiency,rating)
VALUES (4001,201,'2025-12-01 10:00:00','2025-12-01 12:00:00',8001,'North','Morning','All good',1,5,'Level2','ref1@example.com','5551234',100,1,150.5,'Whistle,Timer','en',9);

INSERT INTO tournament_referee_assignments (tournament_id,referee_id,start_time,end_time,match_id,zone,shift_type,notes,is_head_referee,years_experience,certification_level,contact_email,phone_number,assigned_by,priority_level,travel_allowance,equipment_provided,language_proficiency,rating)
VALUES (4001,202,'2025-12-01 12:30:00','2025-12-01 14:30:00',8002,'South','Afternoon','Assist main referee',0,3,'Level1','ref2@example.com','5555678',100,2,120.0,'Whistle','es',7);

INSERT INTO tournament_referee_assignments (tournament_id,referee_id,start_time,end_time,match_id,zone,shift_type,notes,is_head_referee,years_experience,certification_level,contact_email,phone_number,assigned_by,priority_level,travel_allowance,equipment_provided,language_proficiency,rating)
VALUES (4002,203,'2025-12-02 09:00:00','2025-12-02 11:00:00',8010,'East','Morning','First day assignment',0,2,'Level1','ref3@example.com','5559012',101,3,100.0,'Timer','fr',8);


-- Records of in‑game item crafting attempts
CREATE TABLE in_game_item_crafting
(
    craft_id               INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id              INTEGER,
    item_id                INTEGER,
    recipe_id              INTEGER,
    craft_timestamp        DATETIME,
    success_flag           INTEGER,
    material_used          TEXT,
    material_quantity      INTEGER,
    resulting_quality      TEXT,
    experience_gained      INTEGER,
    bonus_multiplier       REAL,
    crafting_station       TEXT,
    required_level         INTEGER,
    durability             INTEGER,
    enchantments           TEXT,
    failure_reason         TEXT,
    cost_gold              INTEGER,
    prior_item_id          INTEGER,
    post_craft_item_id     INTEGER,
    notes                  TEXT
);

INSERT INTO in_game_item_crafting (player_id,item_id,recipe_id,craft_timestamp,success_flag,material_used,material_quantity,resulting_quality,experience_gained,bonus_multiplier,crafting_station,required_level,durability,enchantments,failure_reason,cost_gold,prior_item_id,post_craft_item_id,notes)
VALUES (101,5001,3001,'2025-12-01 15:20:00',1,'IronOre',5,'Epic',120,1.2,'Forge',10,100,'Fire,Sharp',NULL,250,0,6001,'First successful craft');

INSERT INTO in_game_item_crafting (player_id,item_id,recipe_id,craft_timestamp,success_flag,material_used,material_quantity,resulting_quality,experience_gained,bonus_multiplier,crafting_station,required_level,durability,enchantments,failure_reason,cost_gold,prior_item_id,post_craft_item_id,notes)
VALUES (102,5002,3002,'2025-12-02 11:45:00',0,'WoodPlank',3,'Low',30,0.8,'Anvil',5,50,'None','InsufficientSkill',100,0,0,'Failed due to low level');

INSERT INTO in_game_item_crafting (player_id,item_id,recipe_id,craft_timestamp,success_flag,material_used,material_quantity,resulting_quality,experience_gained,bonus_multiplier,crafting_station,required_level,durability,enchantments,failure_reason,cost_gold,prior_item_id,post_craft_item_id,notes)
VALUES (103,5003,3003,'2025-12-03 20:10:00',1,'MagicEssence',2,'Legendary',300,1.5,'ArcaneAltar',20,200,'Lightning,Speed',NULL,500,6000,7001,'High‑value item crafted';


-- Inventory of devices used by players
CREATE TABLE player_device_inventory
(
    inventory_id          INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id            INTEGER,
    device_id            TEXT,
    device_type          TEXT,
    purchase_date        DATE,
    warranty_expiry      DATE,
    os_version           TEXT,
    cpu_model            TEXT,
    gpu_model            TEXT,
    ram_gb               INTEGER,
    storage_gb           INTEGER,
    screen_size_inches   REAL,
    battery_capacity_mah INTEGER,
    last_sync            DATETIME,
    active_status        INTEGER,
    notes                TEXT,
    serial_number        TEXT,
    mac_address          TEXT,
    ip_address           TEXT,
    assigned_region      TEXT
);

INSERT INTO player_device_inventory (player_id,device_id,device_type,purchase_date,warranty_expiry,os_version,cpu_model,gpu_model,ram_gb,storage_gb,screen_size_inches,battery_capacity_mah,last_sync,active_status,notes,serial_number,mac_address,ip_address,assigned_region)
VALUES (101,'DEV001','PC','2023-05-10','2026-05-10','Windows10','Intel_i7','Nvidia_RTX3070',16,1024,15.6,6000,'2025-12-01 08:00:00',1,'Primary gaming rig','SN12345','AA:BB:CC:DD:EE:FF','192.168.1.10','NA');

INSERT INTO player_device_inventory (player_id,device_id,device_type,purchase_date,warranty_expiry,os_version,cpu_model,gpu_model,ram_gb,storage_gb,screen_size_inches,battery_capacity_mah,last_sync,active_status,notes,serial_number,mac_address,ip_address,assigned_region)
VALUES (102,'DEV002','Console','2024-02-20','2027-02-20','OS5','Custom','Custom',12,1024,12.0,4000,'2025-12-02 09:30:00',1,'Living room console','SN67890','11:22:33:44:55:66','10.0.0.2','EU');

INSERT INTO player_device_inventory (player_id,device_id,device_type,purchase_date,warranty_expiry,os_version,cpu_model,gpu_model,ram_gb,storage_gb,screen_size_inches,battery_capacity_mah,last_sync,active_status,notes,serial_number,mac_address,ip_address,assigned_region)
VALUES (103,'DEV003','Mobile','2025-01-15','2028-01-15','Android12','Snapdragon888','Adreno660',8,256,6.5,5000,'2025-12-03 14:45:00',1,'On‑the‑go device','SN54321','77:88:99:AA:BB:CC','172.16.0.5','APAC');


-- Historical exchange rates for virtual currencies
CREATE TABLE virtual_currency_exchange_rates_history
(
    rate_id              INTEGER PRIMARY KEY AUTOINCREMENT,
    from_currency        TEXT,
    to_currency          TEXT,
    rate_value           REAL,
    effective_date       DATE,
    source               TEXT,
    confidence_score     REAL,
    provider_id          INTEGER,
    market               TEXT,
    is_fixed             INTEGER,
    min_rate             REAL,
    max_rate             REAL,
    average_spread       REAL,
    volume_24h           REAL,
    created_at           DATETIME,
    updated_at           DATETIME,
    notes                TEXT,
    reference_url        TEXT,
    region               TEXT,
    currency_pair        TEXT,
    fee_percentage       REAL
);

INSERT INTO virtual_currency_exchange_rates_history (from_currency,to_currency,rate_value,effective_date,source,confidence_score,provider_id,market,is_fixed,min_rate,max_rate,average_spread,volume_24h,created_at,updated_at,notes,reference_url,region,currency_pair,fee_percentage)
VALUES ('GOLD','GEMS',0.85,'2025-12-01','MarketAPI',0.98,12,'Global',0,0.80,0.90,0.02,1500000,'2025-12-01 00:00:00','2025-12-01 01:00:00','Stable rate','http://example.com/rate1','NA','GOLD/GEMS',0.5);

INSERT INTO virtual_currency_exchange_rates_history (from_currency,to_currency,rate_value,effective_date,source,confidence_score,provider_id,market,is_fixed,min_rate,max_rate,average_spread,volume_24h,created_at,updated_at,notes,reference_url,region,currency_pair,fee_percentage)
VALUES ('SILVER','COINS',1.15,'2025-12-02','ExchangePro',0.95,7,'EU',0,1.10,1.20,0.03,800000,'2025-12-02 00:00:00','2025-12-02 01:00:00','Slight volatility','http://example.com/rate2','EU','SILVER/COINS',0.7);

INSERT INTO virtual_currency_exchange_rates_history (from_currency,to_currency,rate_value,effective_date,source,confidence_score,provider_id,market,is_fixed,min_rate,max_rate,average_spread,volume_24h,created_at,updated_at,notes,reference_url,region,currency_pair,fee_percentage)
VALUES ('CRYSTAL','GOLD',1.05,'2025-12-03','CryptoX',0.92,3,'APAC',0,1.00,1.10,0.04,500000,'2025-12-03 00:00:00','2025-12-03 01:00:00','Emerging market','http://example.com/rate3','APAC','CRYSTAL/GOLD',0.6);


-- Sessions of game theory experiments
CREATE TABLE game_theory_experiment_sessions
(
    session_id            INTEGER PRIMARY KEY AUTOINCREMENT,
    experiment_name       TEXT,
    start_time            DATETIME,
    end_time              DATETIME,
    participant_count     INTEGER,
    hypothesis            TEXT,
    result_summary        TEXT,
    data_file_path        TEXT,
    analyst_id            INTEGER,
    methodology           TEXT,
    variables_tested      TEXT,
    control_group_size    INTEGER,
    treatment_group_size  INTEGER,
    statistical_significance REAL,
    p_value               REAL,
    confidence_interval   TEXT,
    equipment_used        TEXT,
    budget_usd            INTEGER,
    approval_status       TEXT,
    comments              TEXT
);

INSERT INTO game_theory_experiment_sessions (experiment_name,start_time,end_time,participant_count,hypothesis,result_summary,data_file_path,analyst_id,methodology,variables_tested,control_group_size,treatment_group_size,statistical_significance,p_value,confidence_interval,equipment_used,budget_usd,approval_status,comments)
VALUES ('CoopVsComp','2025-11-28 09:00:00','2025-11-28 12:00:00',120,'Teamwork improves win rate','Positive effect observed','/data/exp1.csv',301,'Randomized','strategy,communication',60,60,0.95,0.03,'95% CI','PCs','20000','Approved','No issues');

INSERT INTO game_theory_experiment_sessions (experiment_name,start_time,end_time,participant_count,hypothesis,result_summary,data_file_path,analyst_id,methodology,variables_tested,control_group_size,treatment_group_size,statistical_significance,p_value,confidence_interval,equipment_used,budget_usd,approval_status,comments)
VALUES ('RiskAversion','2025-12-01 14:00:00','2025-12-01 17:30:00',80,'Higher risk leads to higher reward','Mixed results','/data/exp2.csv',302,'A/B Test','risk_level, reward_factor',40,40,0.78,0.12,'78% CI','Tablets','15000','Pending','Awaiting peer review');

INSERT INTO game_theory_experiment_sessions (experiment_name,start_time,end_time,participant_count,hypothesis,result_summary,data_file_path,analyst_id,methodology,variables_tested,control_group_size,treatment_group_size,statistical_significance,p_value,confidence_interval,equipment_used,budget_usd,approval_status,comments)
VALUES ('TimePressure','2025-12-03 10:00:00','2025-12-03 13:15:00',100,'Time limits reduce decision quality','Significant decline','/data/exp3.csv',303,'Controlled Lab','time_limit, decision_quality',50,50,0.85,0.05,'85% CI','VR Headsets','25000','Approved','Results ready for publication');