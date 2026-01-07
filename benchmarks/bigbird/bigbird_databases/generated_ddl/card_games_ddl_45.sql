-- News articles about Magic the Gathering
CREATE TABLE news_articles (
    article_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    author TEXT,
    publication_date DATE,
    source TEXT,
    url TEXT,
    summary TEXT,
    content TEXT,
    tags TEXT,
    language TEXT,
    view_count INTEGER,
    share_count INTEGER,
    comment_count INTEGER,
    rating REAL,
    is_featured INTEGER,
    category TEXT,
    thumbnail_url TEXT,
    editorial_notes TEXT,
    related_set_code TEXT,
    related_card_uuid TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO news_articles (title,author,publication_date,source,url,summary,content,tags,language,view_count,share_count,comment_count,rating,is_featured,category,thumbnail_url,editorial_notes,related_set_code,related_card_uuid,created_at,updated_at) VALUES ('New Set Unveiled','JaneDoe','2025-02-10','MTGNews','https://mtgnews.com/newset','Set announcement summary','Full article text goes here','set,announcement', 'en', 12000, 340, 45, 4.5, 1, 'Release', 'https://mtgnews.com/img/cover.jpg', 'First draft', 'XYZ','abc123def456','2025-02-10','2025-02-10');
INSERT INTO news_articles (title,author,publication_date,source,url,summary,content,tags,language,view_count,share_count,comment_count,rating,is_featured,category,thumbnail_url,editorial_notes,related_set_code,related_card_uuid,created_at,updated_at) VALUES ('Pro Tour Results','JohnSmith','2025-03-01','MagicTimes','https://magictimes.com/protour','Pro tour recap','Detailed recap text','tournament,results','en',8500,210,30,4.2,0,'Tournament','https://magictimes.com/img/tour.jpg','Reviewed by editor','ABC','def789ghi012','2025-03-01','2025-03-01');
INSERT INTO news_articles (title,author,publication_date,source,url,summary,content,tags,language,view_count,share_count,comment_count,rating,is_featured,category,thumbnail_url,editorial_notes,related_set_code,related_card_uuid,created_at,updated_at) VALUES ('Meta Shift Analysis','EmilyR','2025-04-15','DeckTech','https://decktech.com/meta','Analysis of meta shift after new set','In‑depth meta analysis text','meta,analysis','en',23000,560,80,4.8,1,'Analysis','https://decktech.com/img/meta.jpg','Data sourced from tournaments','LMN','ghi345jkl678','2025-04-15','2025-04-15');

-- Exhibitors at Magic conventions
CREATE TABLE convention_exhibitors (
    exhibitor_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    booth_number TEXT,
    city TEXT,
    country TEXT,
    contact_name TEXT,
    contact_email TEXT,
    phone TEXT,
    website TEXT,
    product_category TEXT,
    contract_start_date DATE,
    contract_end_date DATE,
    payment_status TEXT,
    total_fee REAL,
    number_of_staff INTEGER,
    setup_complete INTEGER,
    electricity_required INTEGER,
    wifi_required INTEGER,
    marketing_materials_provided TEXT,
    special_requests TEXT,
    notes TEXT,
    created_at DATE
);

INSERT INTO convention_exhibitors (name,booth_number,city,country,contact_name,contact_email,phone,website,product_category,contract_start_date,contract_end_date,payment_status,total_fee,number_of_staff,setup_complete,electricity_required,wifi_required,marketing_materials_provided,special_requests,notes,created_at) VALUES ('Arcane Artifacts','A12','Los Angeles','USA','Lisa Miller','lisa@arcane.com','5551234567','https://arcane.com','Collectible items','2025-05-01','2025-06-01','Paid',2500.00,4,1,1,1,'Brochures, Banners','Wheelchair access','First time exhibitor','2025-04-20');
INSERT INTO convention_exhibitors (name,booth_number,city,country,contact_name,contact_email,phone,website,product_category,contract_start_date,contract_end_date,payment_status,total_fee,number_of_staff,setup_complete,electricity_required,wifi_required,marketing_materials_provided,special_requests,notes,created_at) VALUES ('Mana Market','B07','Paris','France','Pierre Dupont','pierre@mana.fr','33123456789','https://mana.fr','Merchandise','2025-05-10','2025-06-10','Pending',3200.50,6,0,1,0,'Flyers','Near food court','Returning exhibitor','2025-04-22');
INSERT INTO convention_exhibitors (name,booth_number,city,country,contact_name,contact_email,phone,website,product_category,contract_start_date,contract_end_date,payment_status,total_fee,number_of_staff,setup_complete,electricity_required,wifi_required,marketing_materials_provided,special_requests,notes,created_at) VALUES ('Spellbound Studios','C03','Tokyo','Japan','Akira Sato','akira@spellbound.jp','81312345678','https://spellbound.jp','Digital games','2025-05-15','2025-06-15','Paid',4100.75,5,1,0,1,'Posters, Stickers','Extra table space','International exhibitor','2025-04-25');

-- Analysis of card composition components
CREATE TABLE card_composition_analysis (
    analysis_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    card_uuid TEXT,
    component_name TEXT,
    component_type TEXT,
    quantity REAL,
    unit TEXT,
    source_set_code TEXT,
    rarity TEXT,
    cost REAL,
    power TEXT,
    toughness TEXT,
    mana_cost TEXT,
    ability_text TEXT,
    synergy_score REAL,
    created_by TEXT,
    analysis_date DATE,
    notes TEXT,
    version TEXT,
    is_active INTEGER,
    confidence_level REAL,
    created_at DATE,
    updated_at DATE
);

INSERT INTO card_composition_analysis (card_uuid,component_name,component_type,quantity,unit,source_set_code,rarity,cost,power,toughness,mana_cost,ability_text,synergy_score,created_by,analysis_date,notes,version,is_active,confidence_level,created_at,updated_at) VALUES ('uuid123abc','Dragon Scale','Material',2,'pcs','DRG','Rare',3.5,'5','5','3RR','Flying,Trample',8.7,'Ana','2025-04-01','High quality material','v1',1,0.95,'2025-04-02','2025-04-02');
INSERT INTO card_composition_analysis (card_uuid,component_name,component_type,quantity,unit,source_set_code,rarity,cost,power,toughness,mana_cost,ability_text,synergy_score,created_by,analysis_date,notes,version,is_active,confidence_level,created_at,updated_at) VALUES ('uuid456def','Mystic Ink','Resource',1,'bottle','MYS','Uncommon',1.2,'-','-','2U','Spellboost',7.3,'Ben','2025-04-05','Limited edition','v1',1,0.88,'2025-04-05','2025-04-05');
INSERT INTO card_composition_analysis (card_uuid,component_name,component_type,quantity,unit,source_set_code,rarity,cost,power,toughness,mana_cost,ability_text,synergy_score,created_by,analysis_date,notes,version,is_active,confidence_level,created_at,updated_at) VALUES ('uuid789ghi','Ancient Relic','Artifact',0.5,'kg','ARC','Mythic',12.0,'-','-','5','Indestructible',9.4,'Cara','2025-04-10','Artifact with hidden power','v2',1,0.99,'2025-04-11','2025-04-11');

-- Rare card appraisal records
CREATE TABLE rare_card_appraisal (
    appraisal_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    card_uuid TEXT,
    appraiser_name TEXT,
    appraisal_date DATE,
    market_value_usd REAL,
    rarity TEXT,
    condition_grade TEXT,
    provenance TEXT,
    certification_number TEXT,
    notes TEXT,
    estimated_future_value_usd REAL,
    volatility_index REAL,
    region TEXT,
    currency TEXT,
    exchange_rate REAL,
    appraisal_report_url TEXT,
    is_verified INTEGER,
    verification_date DATE,
    verification_signature TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO rare_card_appraisal (card_uuid,appraiser_name,appraisal_date,market_value_usd,rarity,condition_grade,provenance,certification_number,notes,estimated_future_value_usd,volatility_index,region,currency,exchange_rate,appraisal_report_url,is_verified,verification_date,verification_signature,created_at,updated_at) VALUES ('uuidabc111','Valerie Sage','2025-03-20',12500.00,'Mythic','Mint','Original booster','CERT001','No scratches','15000.00',0.12,'NorthAmerica','USD',1.0,'https://appraisals.com/report1.pdf',1,'2025-03-21','SIG001','2025-03-20','2025-03-20');
INSERT INTO rare_card_appraisal (card_uuid,appraiser_name,appraisal_date,market_value_usd,rarity,condition_grade,provenance,certification_number,notes,estimated_future_value_usd,volatility_index,region,currency,exchange_rate,appraisal_report_url,is_verified,verification_date,verification_signature,created_at,updated_at) VALUES ('uuiddef222','Marco Liu','2025-04-02',9800.75,'Rare','NearMint','Secondary market','CERT002','Minor edge wear','11000.00',0.18,'Asia','JPY',0.0091,'https://appraisals.com/report2.pdf',1,'2025-04-03','SIG002','2025-04-02','2025-04-02');
INSERT INTO rare_card_appraisal (card_uuid,appraiser_name,appraisal_date,market_value_usd,rarity,condition_grade,provenance,certification_number,notes,estimated_future_value_usd,volatility_index,region,currency,exchange_rate,appraisal_report_url,is_verified,verification_date,verification_signature,created_at,updated_at) VALUES ('uuidghi333','Sofia Patel','2025-04-10',4500.00','Uncommon','Good','Online auction','CERT003','Slight crease','5200.00',0.25,'Europe','EUR',1.08,'https://appraisals.com/report3.pdf',0,NULL,NULL,'2025-04-10','2025-04-10');

-- Player guild membership records
CREATE TABLE player_guild_memberships (
    membership_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    guild_id INTEGER,
    join_date DATE,
    leave_date DATE,
    role TEXT,
    rank TEXT,
    contribution_points INTEGER,
    reputation_score REAL,
    last_active_date DATE,
    is_active INTEGER,
    guild_name TEXT,
    guild_leader_id INTEGER,
    guild_description TEXT,
    guild_tag TEXT,
    guild_banner_url TEXT,
    guild_type TEXT,
    recruitment_status TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    source TEXT
);

INSERT INTO player_guild_memberships (player_id,guild_id,join_date,leave_date,role,rank,contribution_points,reputation_score,last_active_date,is_active,guild_name,guild_leader_id,guild_description,guild_tag,guild_banner_url,guild_type,recruitment_status,notes,created_at,updated_at,source) VALUES (101,201,'2024-11-15',NULL,'Officer','Gold',1500,4.7,'2025-04-12',1,'Arcane Legion',301,'Focuses on competitive play','AL','https://guilds.com/al_banner.png','Competitive','Open','Promoted to officer','2024-11-15','2025-04-12','Web');
INSERT INTO player_guild_memberships (player_id,guild_id,join_date,leave_date,role,rank,contribution_points,reputation_score,last_active_date,is_active,guild_name,guild_leader_id,guild_description,guild_tag,guild_banner_url,guild_type,recruitment_status,notes,created_at,updated_at,source) VALUES (102,202,'2025-01-05','2025-03-20','Member','Silver',800,3.9,'2025-03-19',0,'Mystic Circle',302,'Casual fun and role‑play','MC','https://guilds.com/mc_banner.png','Casual','Closed','Left for personal reasons','2025-01-05','2025-03-20','Mobile');
INSERT INTO player_guild_memberships (player_id,guild_id,join_date,leave_date,role,rank,contribution_points,reputation_score,last_active_date,is_active,guild_name,guild_leader_id,guild_description,guild_tag,guild_banner_url,guild_type,recruitment_status,notes,created_at,updated_at,source) VALUES (103,203,'2025-02-10',NULL,'Leader','Platinum',2500,5.0,'2025-04-14',1,'Dragon Keep','303','High‑level tournament team','DK','https://guilds.com/dk_banner.png','Competitive','InviteOnly','Founded guild','2025-02-10','2025-04-14','Desktop');

-- Virtual currency mining statistics
CREATE TABLE virtual_currency_mining_stats (
    mining_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    wallet_address TEXT,
    start_timestamp DATE,
    end_timestamp DATE,
    total_hashrate REAL,
    algorithm TEXT,
    block_reward REAL,
    transaction_fees REAL,
    total_earned_usd REAL,
    difficulty REAL,
    network_hashrate REAL,
    miner_software TEXT,
    version TEXT,
    operating_system TEXT,
    location TEXT,
    temperature_c REAL,
    power_consumption_w REAL,
    efficiency_hash_per_w REAL,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO virtual_currency_mining_stats (wallet_address,start_timestamp,end_timestamp,total_hashrate,algorithm,block_reward,transaction_fees,total_earned_usd,difficulty,network_hashrate,miner_software,version,operating_system,location,temperature_c,power_consumption_w,efficiency_hash_per_w,notes,created_at,updated_at) VALUES ('0xABC123','2025-03-01','2025-03-07',150.5,'Ethash',2.0,0.05,7800.00,12.3,2000.0,'Claymore','v14.2','Linux','Iceland','45.2',3500,43.0,'Stable operation','2025-03-01','2025-03-07');
INSERT INTO virtual_currency_mining_stats (wallet_address,start_timestamp,end_timestamp,total_hashrate,algorithm,block_reward,transaction_fees,total_earned_usd,difficulty,network_hashrate,miner_software,version,operating_system,location,temperature_c,power_consumption_w,efficiency_hash_per_w,notes,created_at,updated_at) VALUES ('0xDEF456','2025-04-01','2025-04-05',95.0,'SHA256',6.25,0.2,12400.50,15.8,3000.0,'CGMiner','v4.11','Windows','Texas','38.0',4200,22.6,'Power surge on day 3','2025-04-01','2025-04-05');
INSERT INTO virtual_currency_mining_stats (wallet_address,start_timestamp,end_timestamp,total_hashrate,algorithm,block_reward,transaction_fees,total_earned_usd,difficulty,network_hashrate,miner_software,version,operating_system,location,temperature_c,power_consumption_w,efficiency_hash_per_w,notes,created_at,updated_at) VALUES ('0xGHI789','2025-04-15','2025-04-20',210.3,'Ethash',2.0,0.04,15200.75,13.1,2100.0,'PhoenixMiner','v5.6b','Linux','Canada','42.5',4100,51.3,'Optimized settings applied','2025-04-15','2025-04-20');

-- Marketing campaign budget allocations
CREATE TABLE marketing_campaign_budget (
    campaign_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    start_date DATE,
    end_date DATE,
    total_budget_usd REAL,
    allocated_online_usd REAL,
    allocated_offline_usd REAL,
    channel_social_media_usd REAL,
    channel_tv_usd REAL,
    channel_print_usd REAL,
    channel_influencer_usd REAL,
    expected_roi_percent REAL,
    actual_roi_percent REAL,
    status TEXT,
    manager TEXT,
    approval_date DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    currency TEXT,
    exchange_rate REAL
);

INSERT INTO marketing_campaign_budget (name,start_date,end_date,total_budget_usd,allocated_online_usd,allocated_offline_usd,channel_social_media_usd,channel_tv_usd,channel_print_usd,channel_influencer_usd,expected_roi_percent,actual_roi_percent,status,manager,approval_date,notes,created_at,updated_at,currency,exchange_rate) VALUES ('Spring Expansion','2025-03-01','2025-05-31',120000.00,50000.00,30000.00,20000.00,15000.00,5000.00,10000.00,18.5,20.1,'Active','Laura Kim','2025-02-20','Focus on new set launch','2025-03-01','2025-04-15','USD',1.0);
INSERT INTO marketing_campaign_budget (name,start_date,end_date,total_budget_usd,allocated_online_usd,allocated_offline_usd,channel_social_media_usd,channel_tv_usd,channel_print_usd,channel_influencer_usd,expected_roi_percent,actual_roi_percent,status,manager,approval_date,notes,created_at,updated_at,currency,exchange_rate) VALUES ('Holiday Push','2025-11-01','2025-12-31',200000.00,80000.00,50000.00,25000.00,25000.00,0.00,20000.00,22.0,19.5,'Planned','Mark Rivera','2025-09-30','Include holiday-themed cards','2025-11-01','2025-11-15','USD',1.0);
INSERT INTO marketing_campaign_budget (name,start_date,end_date,total_budget_usd,allocated_online_usd,allocated_offline_usd,channel_social_media_usd,channel_tv_usd,channel_print_usd,channel_influencer_usd,expected_roi_percent,actual_roi_percent,status,manager,approval_date,notes,created_at,updated_at,currency,exchange_rate) VALUES ('Digital Worlds','2025-06-15','2025-08-15',85000.00,60000.00,10000.00,15000.00,0.00,0.00,0.00,15.0,NULL,'Draft','Nina Patel','2025-06-01','Targeting online players','2025-06-15','2025-06-20','USD',1.0);

-- System error code reference
CREATE TABLE system_error_codes (
    error_code TEXT PRIMARY KEY,
    description TEXT,
    severity TEXT,
    module TEXT,
    submodule TEXT,
    created_by TEXT,
    create_date DATE,
    last_updated_by TEXT,
    last_update_date DATE,
    is_active INTEGER,
    resolution_steps TEXT,
    escalation_level INTEGER,
    related_ticket_id INTEGER,
    impact_score REAL,
    mitigation_strategy TEXT,
    documentation_url TEXT,
    notes TEXT,
    deprecation_date DATE,
    replacement_code TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO system_error_codes (error_code,description,severity,module,submodule,created_by,create_date,last_updated_by,last_update_date,is_active,resolution_steps,escalation_level,related_ticket_id,impact_score,mitigation_strategy,documentation_url,notes,deprecation_date,replacement_code,created_at,updated_at) VALUES ('E1001','Database connection timeout','High','Database','ConnectionPool','SysAdmin','2025-01-10','SysAdmin','2025-01-12',1,'Restart service, check network','2',1023,8.5,'Increase connection pool size','https://docs.example.com/E1001','Observed during peak load',NULL,NULL,'2025-01-10','2025-01-12');
INSERT INTO system_error_codes (error_code,description,severity,module,submodule,created_by,create_date,last_updated_by,last_update_date,is_active,resolution_steps,escalation_level,related_ticket_id,impact_score,mitigation_strategy,documentation_url,notes,deprecation_date,replacement_code,created_at,updated_at) VALUES ('E2003','Invalid API token','Medium','Authentication','TokenService','DevTeam','2025-02-05','DevTeam','2025-02-07',1,'Regenerate token, update client','1',2045,5.2,'Enforce token rotation policy','https://docs.example.com/E2003','Token expired after 30 days',NULL,NULL,'2025-02-05','2025-02-07');
INSERT INTO system_error_codes (error_code,description,severity,module,submodule,created_by,create_date,last_updated_by,last_update_date,is_active,resolution_steps,escalation_level,related_ticket_id,impact_score,mitigation_strategy,documentation_url,notes,deprecation_date,replacement_code,created_at,updated_at) VALUES ('W3002','Cache miss rate high','Low','Cache','Redis','OpsTeam','2025-03-01','OpsTeam','2025-03-03',1,'Increase cache size, adjust TTL','3',3050,3.1,'Monitor cache hit ratio','https://docs.example.com/W3002','No immediate impact',NULL,NULL,'2025-03-01','2025-03-03');

-- Catalog of card artwork styles
CREATE TABLE card_artwork_style_catalog (
    style_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    description TEXT,
    primary_color TEXT,
    secondary_color TEXT,
    era TEXT,
    inspiration_source TEXT,
    artist_id INTEGER,
    usage_count INTEGER,
    average_rating REAL,
    dominant_theme TEXT,
    technique TEXT,
    medium TEXT,
    resolution_px TEXT,
    aspect_ratio TEXT,
    file_format TEXT,
    license_type TEXT,
    is_active INTEGER,
    created_at DATE,
    updated_at DATE,
    notes TEXT,
    reference_image_url TEXT
);

INSERT INTO card_artwork_style_catalog (name,description,primary_color,secondary_color,era,inspiration_source,artist_id,usage_count,average_rating,dominant_theme,technique,medium,resolution_px,aspect_ratio,file_format,license_type,is_active,created_at,updated_at,notes,reference_image_url) VALUES ('Celestial Glow','Bright ethereal style','Blue','White','Modern','Astronomy','12',340,4.6,'Space','Digital painting','Digital','4000x6000','3:4','PNG','RoyaltyFree',1,'2025-01-15','2025-01-15','Used in sky-themed cards','https://art.example.com/celestial.png');
INSERT INTO card_artwork_style_catalog (name,description,primary_color,secondary_color,era,inspiration_source,artist_id,usage_count,average_rating,dominant_theme,technique,medium,resolution_px,aspect_ratio,file_format,license_type,is_active,created_at,updated_at,notes,reference_image_url) VALUES ('Runic Forge','Heavy metallic look','Gray','Red','Industrial','Ancient runes','27',210,4.2,'Forge','Vector illustration','Vector','3000x3000','1:1','SVG','Standard',1,'2025-02-10','2025-02-10','Featured in artifact cards','https://art.example.com/runic.svg');
INSERT INTO card_artwork_style_catalog (name,description,primary_color,secondary_color,era,inspiration_source,artist_id,usage_count,average_rating,dominant_theme,technique,medium,resolution_px,aspect_ratio,file_format,license_type,is_active,created_at,updated_at,notes,reference_image_url) VALUES ('Mystic Ink','Dark fluid brush strokes','Black','Purple','Classic','Eastern calligraphy','45',180,4.0','Mystic','Ink wash','Paper','2500x3500','5:7','TIFF','Limited',1,'2025-03-05','2025-03-05','Used for spell cards','https://art.example.com/mystic.tiff');

-- Media assets related to set releases
CREATE TABLE set_release_media (
    media_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    media_type TEXT,
    title TEXT,
    description TEXT,
    release_date DATE,
    url TEXT,
    duration_seconds INTEGER,
    language TEXT,
    region TEXT,
    rating REAL,
    view_count INTEGER,
    share_count INTEGER,
    comment_count INTEGER,
    is_official INTEGER,
    producer TEXT,
    copyright_holder TEXT,
    license TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    format TEXT,
    size_mb REAL
);

INSERT INTO set_release_media (set_code,media_type,title,description,release_date,url,duration_seconds,language,region,rating,view_count,share_count,comment_count,is_official,producer,copyright_holder,license,notes,created_at,updated_at,format,size_mb) VALUES ('XYZ','Video','Set XYZ Overview','Official overview of Set XYZ','2025-04-20','https://media.example.com/xyz_overview.mp4',420,'en','global',4.8,15000,800,60,1,'MTG Studios','Wizards of the Coast','Standard','Featured on official channel','2025-04-20','2025-04-20','MP4',350.5);
INSERT INTO set_release_media (set_code,media_type,title,description,release_date,url,duration_seconds,language,region,rating,view_count,share_count,comment_count,is_official,producer,copyright_holder,license,notes,created_at,updated_at,format,size_mb) VALUES ('ABC','Audio','Set ABC Podcast','Discussion of design philosophy for Set ABC','2025-05-05','https://media.example.com/abc_podcast.mp3',1800,'en','NA',4.5,8000,400,30,1,'GameTalk','Wizards of the Coast','Standard','Episode 12 of weekly podcast','2025-05-05','2025-05-05','MP3',50.2);
INSERT INTO set_release_media (set_code,media_type,title,description,release_date,url,duration_seconds,language,region,rating,view_count,share_count,comment_count,is_official,producer,copyright_holder,license,notes,created_at,updated_at,format,size_mb) VALUES ('LMN','Image','Set LMN Promo Art','High‑resolution promotional artwork for Set LMN','2025-06-01','https://media.example.com/lmn_art.jpg',0,'en','EU',4.9,22000,1200,90,1,'ArtDept','Wizards of the Coast','RoyaltyFree','Used in press releases','2025-06-01','2025-06-01','JPG',12.8);