-- Player activity metrics table
CREATE TABLE player_activity_metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    total_logins INTEGER,
    daily_avg_logins REAL,
    total_matches INTEGER,
    win_count INTEGER,
    loss_count INTEGER,
    draw_count INTEGER,
    avg_match_duration REAL,
    highest_rank_achieved TEXT,
    current_rank TEXT,
    hours_played REAL,
    last_login_date TEXT,
    first_join_date TEXT,
    device_type TEXT,
    os_version TEXT,
    app_version TEXT,
    country_code TEXT,
    timezone TEXT,
    favorite_game_mode TEXT,
    preferred_language TEXT,
    premium_status INTEGER
);

INSERT INTO player_activity_metrics VALUES (1,101,250,5.2,120,85,30,5,35.6,Platinum,Gold,180.5,'2025-12-01','2023-03-15','PC','Windows10','1.4.2','US','America/New_York','Ranked','en',1);
INSERT INTO player_activity_metrics VALUES (2,102,180,4.0,95,60,30,5,32.1,Gold,Silver,150.0,'2025-11-28','2022-11-10','Console','PS5','2.0.1','JP','Asia/Tokyo','Casual','jp',0);
INSERT INTO player_activity_metrics VALUES (3,103,300,6.5,200,150,40,10,28.4,Diamond,Diamond,250.3,'2025-12-02','2021-07-22','Mobile','Android12','3.3.0','GB','Europe/London','Arena','en',1);

-- Tournament venue resources table
CREATE TABLE tournament_venue_resources (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    resource_type TEXT,
    quantity_available INTEGER,
    quantity_used INTEGER,
    maintenance_date TEXT,
    supplier_id INTEGER,
    cost_per_unit REAL,
    last_inspection_date TEXT,
    next_inspection_due TEXT,
    storage_location TEXT,
    equipment_condition TEXT,
    warranty_expiry TEXT,
    assigned_staff_id INTEGER,
    notes TEXT,
    is_active INTEGER,
    depreciation_rate REAL,
    asset_tag TEXT,
    purchase_date TEXT,
    vendor_contact TEXT,
    insurance_policy_number TEXT
);

INSERT INTO tournament_venue_resources VALUES (1,201,'Projector',5,2,'2025-06-01',301,150.00,'2025-05-20','2026-05-20','RoomA','Good','2027-12-31',401,'Replaced bulbs','1',0.05,'PRJ-005','2024-01-15','vendorA@example.com','POL12345');
INSERT INTO tournament_venue_resources VALUES (2,202,'Microphone',10,3,'2025-05-15',302,35.00,'2025-04-10','2026-04-10','RoomB','Excellent','2028-03-15',402,'Checked windscreen','1',0.03,'MIC-010','2023-09-10','vendorB@example.com','POL67890');
INSERT INTO tournament_venue_resources VALUES (3,203,'GamingChair',20,5,'2025-07-10',303,200.00,'2025-06-01','2026-06-01','StorageC','Fair','2029-08-20',403,'Needs upholstery repair','1',0.07,'CHA-020','2022-12-05','vendorC@example.com','POL54321');

-- Digital collectible ledger table
CREATE TABLE digital_collectible_ledger (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    collectible_id TEXT,
    owner_user_id INTEGER,
    acquisition_date TEXT,
    acquisition_method TEXT,
    purchase_price REAL,
    market_value REAL,
    rarity_tier TEXT,
    edition TEXT,
    blockchain_tx_hash TEXT,
    token_id TEXT,
    wallet_address TEXT,
    transfer_count INTEGER,
    last_transfer_date TEXT,
    is_staked INTEGER,
    stake_start_date TEXT,
    stake_end_date TEXT,
    royalty_percentage REAL,
    creator_id INTEGER,
    metadata_uri TEXT,
    status TEXT
);

INSERT INTO digital_collectible_ledger VALUES (1,'COLL-001',101,'2025-01-10','Purchase',250.00,300.00,'Rare','First','0xabc123','TOKEN001','0xwallet1',2,'2025-06-01',0,NULL,NULL,5.0,201,'ipfs://meta001','Active');
INSERT INTO digital_collectible_ledger VALUES (2,'COLL-002',102,'2025-02-15','Reward',0.00,150.00,'Common','Promo','0xdef456','TOKEN002','0xwallet2',0,NULL,1,'2025-03-01','2025-09-01',2.5,202,'ipfs://meta002','Staked');
INSERT INTO digital_collectible_ledger VALUES (3,'COLL-003',103,'2025-03-20','Trade',180.00,200.00,'Epic','Second','0xghi789','TOKEN003','0xwallet3',5,'2025-08-10',0,NULL,NULL,7.5,203,'ipfs://meta003','Active');

-- Sponsor ad inventory table
CREATE TABLE sponsor_ad_inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    ad_slot_id TEXT,
    platform TEXT,
    start_date TEXT,
    end_date TEXT,
    price REAL,
    impressions_booked INTEGER,
    clicks_booked INTEGER,
    cpm_rate REAL,
    cpc_rate REAL,
    target_audience TEXT,
    creative_type TEXT,
    creative_id TEXT,
    is_active INTEGER,
    approval_status TEXT,
    creative_file_path TEXT,
    placement_priority INTEGER,
    frequency_cap INTEGER,
    viewability_score REAL,
    reporting_url TEXT
);

INSERT INTO sponsor_ad_inventory VALUES (1,301,'AD001','Website','2025-09-01','2025-09-30',5000.00,1000000,5000,5.0,1.0,'Adults','Banner','CRTV001','1','Approved','/ads/banner1.png',1,3,85.5,'https://report.example.com/ad001');
INSERT INTO sponsor_ad_inventory VALUES (2,302,'AD002','MobileApp','2025-10-05','2025-10-20',3000.00,500000,2500,6.0,1.2,'Teens','Video','CRTV002','1','Pending','/ads/video2.mp4',2,2,78.0,'https://report.example.com/ad002');
INSERT INTO sponsor_ad_inventory VALUES (3,303,'AD003','Streaming','2025-11-01','2025-11-15',8000.00,2000000,8000,4.0,0.9,'All','Native','CRTV003','1','Approved','/ads/native3.html',1,5,90.0,'https://report.example.com/ad003');

-- Merchandise production batches table
CREATE TABLE merchandise_production_batches (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    batch_number TEXT,
    product_type TEXT,
    quantity_produced INTEGER,
    production_start_date TEXT,
    production_end_date TEXT,
    factory_id INTEGER,
    quality_check_passed INTEGER,
    defect_rate REAL,
    material_type TEXT,
    color_variant TEXT,
    size_variant TEXT,
    packaging_type TEXT,
    shipping_method TEXT,
    estimated_ship_date TEXT,
    actual_ship_date TEXT,
    cost_per_unit REAL,
    total_cost REAL,
    manager_id INTEGER,
    notes TEXT,
    is_distributed INTEGER
);

INSERT INTO merchandise_production_batches VALUES (1,'BATCH-001','TShirt',1000,'2025-04-01','2025-04-10',501,1,0.02,'Cotton','Red','M','Box','Air','2025-04-15','2025-04-14',12.50,12500.00,601,'Initial run','1');
INSERT INTO merchandise_production_batches VALUES (2,'BATCH-002','Poster',2000,'2025-05-05','2025-05-07',502,1,0.01,'Paper','Blue','A2','ShrinkWrap','Ground','2025-05-10','2025-05-09',2.00,4000.00,602,'High demand','1');
INSERT INTO merchandise_production_batches VALUES (3,'BATCH-003','Mug',1500,'2025-06-12','2025-06-18',503,0,0.05,'Ceramic','White','Standard','Box','Sea','2025-06-25',NULL,8.00,12000.00,603,'QC issues pending','0');

-- Locale language preferences table
CREATE TABLE locale_language_preferences (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    locale_code TEXT,
    language_code TEXT,
    region TEXT,
    timezone TEXT,
    date_format TEXT,
    time_format TEXT,
    currency_code TEXT,
    measurement_system TEXT,
    preferred_font TEXT,
    accessibility_options TEXT,
    newsletter_opt_in INTEGER,
    promotional_opt_in INTEGER,
    last_updated TEXT,
    created_at TEXT,
    source TEXT,
    verification_status TEXT,
    notes TEXT,
    is_active INTEGER,
    approval_status TEXT
);

INSERT INTO locale_language_preferences VALUES (1,101,'en_US','en','US','America/New_York','MM/DD/YYYY','12h','USD','Imperial','Arial','None',1,1,'2025-11-30','2023-01-01','UserSelf','Verified','Preferred US locale',1,'Approved');
INSERT INTO locale_language_preferences VALUES (2,102,'ja_JP','ja','JP','Asia/Tokyo','YYYY/MM/DD','24h','JPY','Metric','Helvetica','HighContrast',1,0,'2025-11-28','2022-05-12','UserSelf','Verified','Preferred JP locale',1,'Approved');
INSERT INTO locale_language_preferences VALUES (3,103,'fr_FR','fr','FR','Europe/Paris','DD/MM/YYYY','24h','EUR','Metric','Verdana','ScreenReader',0,1,'2025-11-29','2021-09-20','Admin','Pending','Preferred FR locale',1,'Pending');

-- Game event rewards table
CREATE TABLE game_event_rewards (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    reward_type TEXT,
    reward_name TEXT,
    reward_tier TEXT,
    quantity INTEGER,
    points_required INTEGER,
    monetary_value REAL,
    issue_date TEXT,
    expiry_date TEXT,
    is_redeemed INTEGER,
    redeemed_by_user_id INTEGER,
    redemption_date TEXT,
    distribution_method TEXT,
    notes TEXT,
    is_active INTEGER,
    limited_edition_flag INTEGER,
    rarity TEXT,
    associated_item_id TEXT,
    eligibility_criteria TEXT
);

INSERT INTO game_event_rewards VALUES (1,401,'VirtualCurrency','GoldCoins','Tier1',500,0,0.00,'2025-10-01','2026-10-01',0,NULL,NULL,'Automatic','First week bonus',1,0,'Common','ITEM001','All participants');
INSERT INTO game_event_rewards VALUES (2,402,'CosmeticItem','DragonSkin','Tier2',1,1000,0.00,'2025-11-15','2026-11-15',0,NULL,NULL,'Manual','Limited edition skin',1,1,'Rare','ITEM002','Top 10% scorers');
INSERT INTO game_event_rewards VALUES (3,403,'PhysicalPrize','TShirtBundle','Tier3',100,2000,25.00,'2025-12-05','2026-12-05',0,NULL,NULL,'Mail','End of season pack',1,0,'Uncommon','ITEM003','All season participants');

-- Community content assets table
CREATE TABLE community_content_assets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_type TEXT,
    file_name TEXT,
    file_path TEXT,
    uploader_user_id INTEGER,
    upload_date TEXT,
    file_size_bytes INTEGER,
    resolution TEXT,
    duration_seconds INTEGER,
    format TEXT,
    description TEXT,
    tags TEXT,
    is_public INTEGER,
    view_count INTEGER,
    download_count INTEGER,
    rating_average REAL,
    rating_count INTEGER,
    license_type TEXT,
    copyright_holder TEXT,
    expiration_date TEXT,
    related_post_id INTEGER,
    notes TEXT
);

INSERT INTO community_content_assets VALUES (1,'Image','sunset.png','/assets/images/sunset.png',201,'2025-09-10',204800,'1920x1080',0,'PNG','Beautiful sunset over mountains','nature,landscape',1,150,30,4.5,25,'CC0','User201',NULL,301,'High quality');
INSERT INTO community_content_assets VALUES (2,'Video','tournament_highlights.mp4','/assets/videos/tournament_highlights.mp4',202,'2025-09-12',52428800,'1920x1080',180,'MP4','Highlights from the weekend tournament','tournament,highlights',1,500,120,4.7,40,'Standard','User202',NULL,302,'Edited clips');
INSERT INTO community_content_assets VALUES (3,'Audio','theme_track.mp3','/assets/audio/theme_track.mp3',203,'2025-09-15',5242880,'',210,'MP3','Official event theme music','music,theme',0,0,0,0.0,0,'RoyaltyFree','User203','2026-09-15',303,'Pending approval');

-- Environmental compliance audits table
CREATE TABLE environmental_compliance_audits (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    audit_date TEXT,
    facility_id INTEGER,
    auditor_name TEXT,
    compliance_score REAL,
    violations_found INTEGER,
    corrective_action_due TEXT,
    follow_up_date TEXT,
    overall_status TEXT,
    notes TEXT,
    report_file_path TEXT,
    regulatory_body TEXT,
    audit_type TEXT,
    emission_level REAL,
    waste_volume REAL,
    water_usage REAL,
    energy_consumption REAL,
    carbon_footprint REAL,
    certification_status TEXT,
    next_audit_due TEXT,
    is_public INTEGER
);

INSERT INTO environmental_compliance_audits VALUES (1,'2025-08-01',801,'AuditorA',92.5,0,'None','2025-09-01','Compliant','All metrics within limits','/reports/audit801.pdf','EPA','Annual',12.5,30.0,5000.0,15000.0,250.0,'Certified','2026-08-01',1);
INSERT INTO environmental_compliance_audits VALUES (2,'2025-08-15',802,'AuditorB',78.0,3,'Fix waste segregation','2025-10-01','Conditional','Minor violations noted','/reports/audit802.pdf','EPA','Quarterly',20.0,45.0,6000.0,18000.0,300.0,'Pending','2025-11-15',0);
INSERT INTO environmental_compliance_audits VALUES (3,'2025-09-05',803,'AuditorC',85.0,1,'Update emission filters','2025-12-01','Compliant','One emission exceedance','/reports/audit803.pdf','EPA','Annual',15.0,35.0,5500.0,16000.0,275.0,'Certified','2026-09-05',1);

-- Fantasy world NPC profiles table
CREATE TABLE fantasy_world_npc_profiles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    npc_name TEXT,
    location TEXT,
    faction TEXT,
    role TEXT,
    alignment TEXT,
    level INTEGER,
    health_points INTEGER,
    mana_points INTEGER,
    attack_power INTEGER,
    defense_rating INTEGER,
    dialogue_script_id TEXT,
    quest_id TEXT,
    loot_table_id TEXT,
    spawn_rate REAL,
    is_unique INTEGER,
    is_hostile INTEGER,
    portrait_asset_id TEXT,
    voice_asset_id TEXT,
    backstory TEXT,
    last_updated TEXT,
    is_active INTEGER
);

INSERT INTO fantasy_world_npc_profiles VALUES (1,'Eldric','SilverWood','OrderOfLight','Merchant','Neutral',5,80,30,12,8,'DSC001','QST001','LDT001',0.05,0,0,'ASSET001','VOICE001','A wandering trader with mysterious past','2025-09-01',1);
INSERT INTO fantasy_world_npc_profiles VALUES (2,'Morgath','DarkCavern','ShadowLegion','Warrior','ChaoticEvil',12,200,50,35,20,'DSC002','QST002','LDT002',0.02,1,1,'ASSET002','VOICE002','A feared warlord ruling the underground','2025-09-02',1);
INSERT INTO fantasy_world_npc_profiles VALUES (3,'Lyra','CrystalLake','NatureGuardians','Healer','LawfulGood',8,120,150,10,12,'DSC003','QST003','LDT003',0.08,0,0,'ASSET003','VOICE003','A serene healer protecting the lake spirits','2025-09-03',1);