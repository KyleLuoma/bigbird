-- Table storing individual game session metadata
CREATE TABLE game_sessions (
    session_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    start_time TEXT,
    end_time TEXT,
    platform TEXT,
    region TEXT,
    game_mode TEXT,
    opponent_count INTEGER,
    average_latency REAL,
    total_moves INTEGER,
    wins INTEGER,
    losses INTEGER,
    draws INTEGER,
    rank_before INTEGER,
    rank_after INTEGER,
    session_notes TEXT,
    device_type TEXT,
    ip_address TEXT,
    version TEXT,
    tournament_id INTEGER,
    is_ranked INTEGER,
    chat_enabled INTEGER
);

INSERT INTO game_sessions (player_id,start_time,end_time,platform,region,game_mode,opponent_count,average_latency,total_moves,wins,losses,draws,rank_before,rank_after,session_notes,device_type,ip_address,version,tournament_id,is_ranked,chat_enabled) VALUES (101,'2024-03-01 10:00','2024-03-01 11:30','PC','NA','Standard',1,45.2,30,2,0,0,1500,1510,'Good session','Desktop','192.168.1.10','1.5',2001,1,1);
INSERT INTO game_sessions (player_id,start_time,end_time,platform,region,game_mode,opponent_count,average_latency,total_moves,wins,losses,draws,rank_before,rank_after,session_notes,device_type,ip_address,version,tournament_id,is_ranked,chat_enabled) VALUES (102,'2024-03-02 14:00','2024-03-02 15:45','Mobile','EU','Draft',2,78.5,45,1,1,0,1300,1295,'Tight match','Phone','10.0.0.5','2.0',2002,0,1);
INSERT INTO game_sessions (player_id,start_time,end_time,platform,region,game_mode,opponent_count,average_latency,total_moves,wins,losses,draws,rank_before,rank_after,session_notes,device_type,ip_address,version,tournament_id,is_ranked,chat_enabled) VALUES (103,'2024-03-03 18:15','2024-03-03 19:00','Console','ASIA','Commander',1,60.0,20,0,1,0,2000,1995,'Lost due to misplay','Console','172.16.0.2','3.1',NULL,0,0);

-- Table tracking player achievements and progress
CREATE TABLE player_achievements (
    achievement_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    achievement_name TEXT,
    description TEXT,
    date_earned TEXT,
    points INTEGER,
    tier TEXT,
    category TEXT,
    icon_url TEXT,
    is_secret INTEGER,
    progress_current INTEGER,
    progress_target INTEGER,
    reward_type TEXT,
    reward_value TEXT,
    visibility TEXT,
    triggered_by TEXT,
    related_event_id INTEGER,
    version TEXT,
    archived INTEGER,
    notes TEXT
);

INSERT INTO player_achievements (player_id,achievement_name,description,date_earned,points,tier,category,icon_url,is_secret,progress_current,progress_target,reward_type,reward_value,visibility,triggered_by,related_event_id,version,archived,notes) VALUES (101,'First Win','Win your first ranked match','2024-01-10',10,'Bronze','Match','http://example.com/icon1.png',0,1,1,'Badge','Gold','Public','MatchWin',NULL,'1.0',0,'');
INSERT INTO player_achievements (player_id,achievement_name,description,date_earned,points,tier,category,icon_url,is_secret,progress_current,progress_target,reward_type,reward_value,visibility,triggered_by,related_event_id,version,archived,notes) VALUES (102,'Deck Builder','Create a deck with 60 cards','2024-02-05',20,'Silver','Collection','http://example.com/icon2.png',0,60,60,'Title','Master Builder','Public','DeckCreate',NULL,'1.2',0,'');
INSERT INTO player_achievements (player_id,achievement_name,description,date_earned,points,tier,category,icon_url,is_secret,progress_current,progress_target,reward_type,reward_value,visibility,triggered_by,related_event_id,version,archived,notes) VALUES (103,'Secret Collector','Find a secret card','2024-03-01',30,'Gold','Secret','http://example.com/icon3.png',1,0,1,'Item','Secret Card','Private','CardFind',999,'2.0',0,'Hidden achievement');

-- Table linking players to tournament entries and results
CREATE TABLE tournament_participants (
    tp_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    player_id INTEGER,
    deck_id INTEGER,
    seed INTEGER,
    final_position INTEGER,
    matches_won INTEGER,
    matches_lost INTEGER,
    games_won INTEGER,
    games_lost INTEGER,
    is_substitute INTEGER,
    registration_date TEXT,
    entry_fee_paid REAL,
    sponsor_id INTEGER,
    team_name TEXT,
    remarks TEXT,
    last_updated TEXT,
    status TEXT,
    ranking_points INTEGER,
    disqualification_reason TEXT,
    compliance_check_passed INTEGER
);

INSERT INTO tournament_participants (tournament_id,player_id,deck_id,seed,final_position,matches_won,matches_lost,games_won,games_lost,is_substitute,registration_date,entry_fee_paid,sponsor_id,team_name,remarks,last_updated,status,ranking_points,disqualification_reason,compliance_check_passed) VALUES (2001,101,3001,5,2,5,1,15,3,0,'2024-02-20',25.0,10,'Team Alpha','Great performance','2024-03-01','Completed',1500,NULL,1);
INSERT INTO tournament_participants (tournament_id,player_id,deck_id,seed,final_position,matches_won,matches_lost,games_won,games_lost,is_substitute,registration_date,entry_fee_paid,sponsor_id,team_name,remarks,last_updated,status,ranking_points,disqualification_reason,compliance_check_passed) VALUES (2002,102,3002,12,8,3,4,9,12,0,'2024-03-10',30.0,12,'Team Beta','Lost early','2024-03-15','Completed',1200,NULL,1);
INSERT INTO tournament_participants (tournament_id,player_id,deck_id,seed,final_position,matches_won,matches_lost,games_won,games_lost,is_substitute,registration_date,entry_fee_paid,sponsor_id,team_name,remarks,last_updated,status,ranking_points,disqualification_reason,compliance_check_passed) VALUES (2003,103,3003,1,1,7,0,21,0,0,'2024-01-05',50.0,15,'Team Gamma','Champion','2024-01-20','Completed',2000,NULL,1);

-- Table recording historical market prices for cards
CREATE TABLE market_price_history (
    price_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    card_uuid TEXT,
    market TEXT,
    price_currency TEXT,
    price_amount REAL,
    price_date TEXT,
    volume INTEGER,
    seller_id INTEGER,
    buyer_id INTEGER,
    listing_type TEXT,
    condition TEXT,
    is_foil INTEGER,
    is_promo INTEGER,
    shipping_included INTEGER,
    shipping_cost REAL,
    listing_url TEXT,
    source TEXT,
    confidence_score REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO market_price_history (card_uuid,market,price_currency,price_amount,price_date,volume,seller_id,buyer_id,listing_type,condition,is_foil,is_promo,shipping_included,shipping_cost,listing_url,source,confidence_score,notes,created_at,updated_at) VALUES ('uuid-001','Scryfall','USD',12.5,'2024-03-01',3,201,301,'Fixed','NearMint',0,0,1,0.0,'http://example.com/listing/1','API',0.95,'','2024-03-01','2024-03-01');
INSERT INTO market_price_history (card_uuid,market,price_currency,price_amount,price_date,volume,seller_id,buyer_id,listing_type,condition,is_foil,is_promo,shipping_included,shipping_cost,listing_url,source,confidence_score,notes,created_at,updated_at) VALUES ('uuid-002','TCGplayer','USD',25.0,'2024-03-02',1,202,302,'Auction','LightlyPlayed',1,0,0,5.0,'http://example.com/listing/2','Scrape',0.88,'Foil version','2024-03-02','2024-03-02');
INSERT INTO market_price_history (card_uuid,market,price_currency,price_amount,price_date,volume,seller_id,buyer_id,listing_type,condition,is_foil,is_promo,shipping_included,shipping_cost,listing_url,source,confidence_score,notes,created_at,updated_at) VALUES ('uuid-003','Cardmarket','EUR',8.0,'2024-03-03',5,203,303,'Fixed','Played',0,1,1,2.5,'http://example.com/listing/3','API',0.90,'Promo copy','2024-03-03','2024-03-03');

-- Table storing snapshots of deck builds and metadata
CREATE TABLE deck_build_history (
    build_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    deck_id INTEGER,
    player_id INTEGER,
    build_timestamp TEXT,
    description TEXT,
    version_number INTEGER,
    total_cards INTEGER,
    average_cmc REAL,
    mainboard_card_ids TEXT,
    sideboard_card_ids TEXT,
    win_rate_estimate REAL,
    meta_rank_estimate INTEGER,
    notes TEXT,
    source_tool TEXT,
    is_public INTEGER,
    shared_with TEXT,
    last_modified TEXT,
    approved_by INTEGER,
    approval_timestamp TEXT,
    tags TEXT
);

INSERT INTO deck_build_history (deck_id,player_id,build_timestamp,description,version_number,total_cards,average_cmc,mainboard_card_ids,sideboard_card_ids,win_rate_estimate,meta_rank_estimate,notes,source_tool,is_public,shared_with,last_modified,approved_by,approval_timestamp,tags) VALUES (3001,101,'2024-02-15 12:00','Aggro Red Deck',1,60,3.2,'c001,c002,c003','c101,c102',0.62,45,'','DeckBuilderPro',1,'FriendA,FriendB','2024-02-16',201,'2024-02-17','aggro,red');
INSERT INTO deck_build_history (deck_id,player_id,build_timestamp,description,version_number,total_cards,average_cmc,mainboard_card_ids,sideboard_card_ids,win_rate_estimate,meta_rank_estimate,notes,source_tool,is_public,shared_with,last_modified,approved_by,approval_timestamp,tags) VALUES (3002,102,'2024-03-05 09:30','Control Blue Deck',2,60,2.8,'c010,c011,c012','c110,c111',0.55,78,'Improved draw','DeckMaster',0,'','2024-03-06',202,'2024-03-07','control,blue');
INSERT INTO deck_build_history (deck_id,player_id,build_timestamp,description,version_number,total_cards,average_cmc,mainboard_card_ids,sideboard_card_ids,win_rate_estimate,meta_rank_estimate,notes,source_tool,is_public,shared_with,last_modified,approved_by,approval_timestamp,tags) VALUES (3003,103,'2024-01-20 15:45','Midrange Green Deck',3,58,3.0,'c020,c021,c022','c120,c121',0.48,120,'Final version for tournament','DeckCreator',1,'Team Gamma','2024-01-21',203,'2024-01-22','midrange,green');

-- Table capturing detailed view statistics for streaming sessions
CREATE TABLE streaming_view_stats (
    view_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    session_id INTEGER,
    viewer_id INTEGER,
    start_timestamp TEXT,
    end_timestamp TEXT,
    device TEXT,
    country_code TEXT,
    stream_quality TEXT,
    bitrate INTEGER,
    frame_drop_count INTEGER,
    chat_messages_sent INTEGER,
    emotes_used INTEGER,
    subscription_status INTEGER,
    donation_amount REAL,
    ad_watched_seconds INTEGER,
    total_watch_time INTEGER,
    is_live INTEGER,
    stream_id INTEGER,
    latency_ms INTEGER,
    platform TEXT,
    notes TEXT
);

INSERT INTO streaming_view_stats (session_id,viewer_id,start_timestamp,end_timestamp,device,country_code,stream_quality,bitrate,frame_drop_count,chat_messages_sent,emotes_used,subscription_status,donation_amount,ad_watched_seconds,total_watch_time,is_live,stream_id,latency_ms,platform,notes) VALUES (501,1001,'2024-03-01 10:05','2024-03-01 10:55','Desktop','US','1080p',4500,2,120,5,1,5.0,30,3000,1,801,80,'Twitch','');
INSERT INTO streaming_view_stats (session_id,viewer_id,start_timestamp,end_timestamp,device,country_code,stream_quality,bitrate,frame_drop_count,chat_messages_sent,emotes_used,subscription_status,donation_amount,ad_watched_seconds,total_watch_time,is_live,stream_id,latency_ms,platform,notes) VALUES (502,1002,'2024-03-02 14:10','2024-03-02 15:00','Mobile','DE','720p',2500,5,80,2,0,0.0,45,2700,1,802,120,'YouTube','');
INSERT INTO streaming_view_stats (session_id,viewer_id,start_timestamp,end_timestamp,device,country_code,stream_quality,bitrate,frame_drop_count,chat_messages_sent,emotes_used,subscription_status,donation_amount,ad_watched_seconds,total_watch_time,is_live,stream_id,latency_ms,platform,notes) VALUES (503,1003,'2024-03-03 18:20','2024-03-03 19:10','Console','JP','1080p',5000,1,200,10,1,10.0,0,3000,1,803,60,'Mixer','');

-- Table describing sponsorship contracts between sponsors and players
CREATE TABLE sponsorship_contracts (
    contract_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    player_id INTEGER,
    start_date TEXT,
    end_date TEXT,
    contract_value REAL,
    currency TEXT,
    clause_summary TEXT,
    renewal_option TEXT,
    performance_bonus REAL,
    exclusivity_level TEXT,
    branding_assets_url TEXT,
    contact_person TEXT,
    contact_email TEXT,
    status TEXT,
    signed_by_player INTEGER,
    signed_by_sponsor INTEGER,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT
);

INSERT INTO sponsorship_contracts (sponsor_id,player_id,start_date,end_date,contract_value,currency,clause_summary,renewal_option,performance_bonus,exclusivity_level,branding_assets_url,contact_person,contact_email,status,signed_by_player,signed_by_sponsor,created_at,updated_at,notes) VALUES (10,101,'2024-01-01','2024-12-31',5000,'USD','Standard promotion','Annual',500,'High','http://example.com/brand1.png','Alice','alice@example.com','Active',1,1,'2024-01-01','2024-01-01','');
INSERT INTO sponsorship_contracts (sponsor_id,player_id,start_date,end_date,contract_value,currency,clause_summary,renewal_option,performance_bonus,exclusivity_level,branding_assets_url,contact_person,contact_email,status,signed_by_player,signed_by_sponsor,created_at,updated_at,notes) VALUES (11,102,'2024-03-01','2025-02-28',7500,'USD','Extended branding rights','BiAnnual',750,'Medium','http://example.com/brand2.png','Bob','bob@example.com','Pending',0,0,'2024-03-01','2024-03-01','Awaiting signatures');
INSERT INTO sponsorship_contracts (sponsor_id,player_id,start_date,end_date,contract_value,currency,clause_summary,renewal_option,performance_bonus,exclusivity_level,branding_assets_url,contact_person,contact_email,status,signed_by_player,signed_by_sponsor,created_at,updated_at,notes) VALUES (12,103,'2024-06-15','2024-12-14',3000,'EUR','Limited campaign','None',300,'Low','http://example.com/brand3.png','Carol','carol@example.com','Active',1,1,'2024-06-15','2024-06-15','');

-- Table listing amenities available at tournament venues
CREATE TABLE venue_amenities (
    amenity_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    amenity_type TEXT,
    description TEXT,
    capacity INTEGER,
    is_accessible INTEGER,
    wifi_speed_mbps INTEGER,
    food_options TEXT,
    drink_options TEXT,
    parking_spaces INTEGER,
    nearest_transit TEXT,
    opening_hours TEXT,
    closing_hours TEXT,
    security_level TEXT,
    maintenance_contact TEXT,
    last_inspection_date TEXT,
    rating REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO venue_amenities (venue_id,amenity_type,description,capacity,is_accessible,wifi_speed_mbps,food_options,drink_options,parking_spaces,nearest_transit,opening_hours,closing_hours,security_level,maintenance_contact,last_inspection_date,rating,notes,created_at,updated_at) VALUES (301,'Main Hall','Large hall for tournaments',500,1,150,'Buffet','Bar',200,'Metro Line A','08:00','22:00','High','John Doe','2024-02-20',4.5,'','2024-03-01','2024-03-01');
INSERT INTO venue_amenities (venue_id,amenity_type,description,capacity,is_accessible,wifi_speed_mbps,food_options,drink_options,parking_spaces,nearest_transit,opening_hours,closing_hours,security_level,maintenance_contact,last_inspection_date,rating,notes,created_at,updated_at) VALUES (302,'Lounge','Relax area for players',150,1,100,'Snacks','Coffee',50,'Bus Stop 12','09:00','20:00','Medium','Jane Smith','2024-01-15',4.0,'','2024-03-01','2024-03-01');
INSERT INTO venue_amenities (venue_id,amenity_type,description,capacity,is_accessible,wifi_speed_mbps,food_options,drink_options,parking_spaces,nearest_transit,opening_hours,closing_hours,security_level,maintenance_contact,last_inspection_date,rating,notes,created_at,updated_at) VALUES (303,'Exhibition Hall','Area for sponsors booths',300,0,80,'None','Water',100,'Subway B','10:00','21:00','Low','Mike Lee','2023-12-10',3.8,'','2024-03-01','2024-03-01');

-- Table managing licenses for digital assets like artwork and sounds
CREATE TABLE digital_asset_licenses (
    license_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    asset_id INTEGER,
    owner_id INTEGER,
    license_type TEXT,
    start_date TEXT,
    end_date TEXT,
    usage_scope TEXT,
    region_restriction TEXT,
    royalty_rate REAL,
    royalty_currency TEXT,
    attribution_required INTEGER,
    sublicensing_allowed INTEGER,
    exclusive INTEGER,
    version TEXT,
    checksum TEXT,
    file_format TEXT,
    file_size_bytes INTEGER,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT
);

INSERT INTO digital_asset_licenses (asset_id,owner_id,license_type,start_date,end_date,usage_scope,region_restriction,royalty_rate,royalty_currency,attribution_required,sublicensing_allowed,exclusive,version,checksum,file_format,file_size_bytes,created_at,updated_at,notes) VALUES (401,10,'RoyaltyFree','2024-01-01','2025-01-01','Commercial','Global',0.0,'USD',0,1,0,'1.0','abc123def','png',204800,'2024-01-01','2024-01-01','');
INSERT INTO digital_asset_licenses (asset_id,owner_id,license_type,start_date,end_date,usage_scope,region_restriction,royalty_rate,royalty_currency,attribution_required,sublicensing_allowed,exclusive,version,checksum,file_format,file_size_bytes,created_at,updated_at,notes) VALUES (402,11,'CreativeCommons','2023-06-15','2024-06-14','Editorial','EU',0.0,'EUR',1,0,0,'2.1','def456ghi','jpg',102400,'2023-06-15','2023-06-15','');
INSERT INTO digital_asset_licenses (asset_id,owner_id,license_type,start_date,end_date,usage_scope,region_restriction,royalty_rate,royalty_currency,attribution_required,sublicensing_allowed,exclusive,version,checksum,file_format,file_size_bytes,created_at,updated_at,notes) VALUES (403,12,'Standard','2024-03-01','2026-02-28','Unlimited','NA',5.0,'USD',0,1,1,'3.0','ghi789jkl','mp3',5120000,'2024-03-01','2024-03-01','');

-- Table storing options for community polls and voting results
CREATE TABLE community_poll_options (
    poll_id INTEGER NOT NULL,
    option_id INTEGER NOT NULL,
    poll_question TEXT,
    option_text TEXT,
    votes_count INTEGER,
    display_order INTEGER,
    is_active INTEGER,
    created_by_user INTEGER,
    created_at TEXT,
    last_modified_at TEXT,
    description TEXT,
    media_url TEXT,
    target_audience TEXT,
    min_age INTEGER,
    max_age INTEGER,
    language TEXT,
    country_filter TEXT,
    visibility TEXT,
    tags TEXT,
    notes TEXT,
    PRIMARY KEY (poll_id, option_id)
);

INSERT INTO community_poll_options (poll_id,option_id,poll_question,option_text,votes_count,display_order,is_active,created_by_user,created_at,last_modified_at,description,media_url,target_audience,min_age,max_age,language,country_filter,visibility,tags,notes) VALUES (1,1,'What is your favorite card type?','Creature',120,1,1,1001,'2024-02-01','2024-02-10','Standard creature cards','http://example.com/img1.png','All',13,99,'en','US','Public','type,creature','');
INSERT INTO community_poll_options (poll_id,option_id,poll_question,option_text,votes_count,display_order,is_active,created_by_user,created_at,last_modified_at,description,media_url,target_audience,min_age,max_age,language,country_filter,visibility,tags,notes) VALUES (1,2,'What is your favorite card type?','Instant',85,2,1,1001,'2024-02-01','2024-02-10','Fast effect cards','http://example.com/img2.png','All',13,99,'en','US','Public','type,instant','');
INSERT INTO community_poll_options (poll_id,option_id,poll_question,option_text,votes_count,display_order,is_active,created_by_user,created_at,last_modified_at,description,media_url,target_audience,min_age,max_age,language,country_filter,visibility,tags,notes) VALUES (1,3,'What is your favorite card type?','Sorcery',60,3,1,1001,'2024-02-01','2024-02-10','One-shot effect cards','http://example.com/img3.png','All',13,99,'en','US','Public','type,sorcery','');