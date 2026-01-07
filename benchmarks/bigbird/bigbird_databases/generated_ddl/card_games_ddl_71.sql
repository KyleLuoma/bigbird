-- Card artwork metadata table
CREATE TABLE card_artwork_metadata (
    artwork_id TEXT PRIMARY KEY,
    card_uuid TEXT,
    artist_name TEXT,
    creation_date TEXT,
    resolution_width INTEGER,
    resolution_height INTEGER,
    color_profile TEXT,
    file_format TEXT,
    file_size_kb INTEGER,
    source_url TEXT,
    license_type TEXT,
    usage_rights TEXT,
    version TEXT,
    is_approved INTEGER,
    quality_score REAL,
    dominant_color TEXT,
    aspect_ratio REAL,
    tag_keywords TEXT,
    notes TEXT,
    created_by TEXT
);
INSERT INTO card_artwork_metadata VALUES ('art001','uuid123','John Doe','2023-05-01',4000,3000,'sRGB','png',2048,'http://example.com/art001.png','standard','full','v1',1,9.5,'blue',1.33,'fantasy,dragon','Initial upload','admin');
INSERT INTO card_artwork_metadata VALUES ('art002','uuid124','Jane Smith','2023-06-15',3500,2500,'AdobeRGB','jpg',1800,'http://example.com/art002.jpg','royaltyfree','limited','v2',0,8.2,'red',1.40,'goblin,warrior','Pending review','editor');
INSERT INTO card_artwork_metadata VALUES ('art003','uuid125','Alex Roe','2023-07-20',5000,4000,'ProPhotoRGB','tiff',3200,'http://example.com/art003.tiff','exclusive','full','v1',1,9.8,'green',1.25,'elf,forest','Approved for print','admin');

-- Game mechanics test cases table
CREATE TABLE game_mechanics_test_cases (
    test_id TEXT PRIMARY KEY,
    mechanic_name TEXT,
    description TEXT,
    test_status TEXT,
    passed INTEGER,
    execution_time_ms INTEGER,
    tester_user_id TEXT,
    test_date TEXT,
    related_card_uuid TEXT,
    environment_version TEXT,
    seed_value INTEGER,
    observed_effects TEXT,
    expected_outcome TEXT,
    error_log TEXT,
    priority INTEGER,
    component TEXT,
    regression_flag INTEGER,
    documentation_link TEXT,
    notes TEXT,
    version TEXT
);
INSERT INTO game_mechanics_test_cases VALUES ('tc001','Flying','Check that creature can evade blockers', 'Completed',1,120,'user001','2024-01-02','uuid200','v1.3',42,'No blockers hit','Creature bypasses ground blockers','','1','Combat',0,'http://docs.example.com/flying','All good','1.0');
INSERT INTO game_mechanics_test_cases VALUES ('tc002','Trample','Validate damage overflow to opponent', 'Completed',0,250,'user002','2024-01-03','uuid201','v1.3',88,'Damage stopped early','All excess damage applied to opponent','Stack overflow error','2','Combat',1,'http://docs.example.com/trample','Failure on edge case','1.0');
INSERT INTO game_mechanics_test_cases VALUES ('tc003','Hexproof','Ensure spells cannot target creature', 'Running',0,0,'user003','2024-01-04','uuid202','v1.4',15,'Targeting succeeded','Spells should be blocked','',3,'Interaction',0,'http://docs.example.com/hexproof','Pending results','1.1');

-- Set production schedule table
CREATE TABLE set_production_schedule (
    schedule_id TEXT PRIMARY KEY,
    set_code TEXT,
    production_phase TEXT,
    start_date TEXT,
    end_date TEXT,
    facility_id TEXT,
    manager_id TEXT,
    expected_units INTEGER,
    actual_units INTEGER,
    delay_reason TEXT,
    quality_check_passed INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    cost_estimate_usd REAL,
    resource_allocation TEXT,
    shift TEXT,
    batch_number TEXT,
    compliance_status TEXT,
    logistics_partner TEXT
);
INSERT INTO set_production_schedule VALUES ('sp001','M21','Printing','2024-02-01','2024-02-15','FAC01','mgr01',50000,49500,'Paper shortage',1,'On schedule','2024-01-20','2024-01-25',250000.00,'High','Day','B001','Compliant','LogiCo');
INSERT INTO set_production_schedule VALUES ('sp002','IKO','Foiling','2024-03-01','2024-03-10','FAC02','mgr02',30000,0,'Foil supplier delay',0,'Pending start','2024-02-10','2024-02-12',180000.00,'Medium','Night','B002','Pending','FastShip');
INSERT INTO set_production_schedule VALUES ('sp003','THB','Packaging','2024-04-05','2024-04-12','FAC03','mgr03',40000,40000,'',1,'Completed without issues','2024-03-01','2024-03-05',210000.00,'Low','Evening','B003','Compliant','PackIt');

-- Artwork licensing agreements table
CREATE TABLE artwork_licensing_agreements (
    agreement_id TEXT PRIMARY KEY,
    artist_id TEXT,
    artwork_id TEXT,
    license_type TEXT,
    start_date TEXT,
    end_date TEXT,
    royalty_percentage REAL,
    upfront_fee_usd REAL,
    territory TEXT,
    exclusivity_flag INTEGER,
    usage_limits TEXT,
    renewal_option TEXT,
    status TEXT,
    created_by TEXT,
    created_at TEXT,
    approved_by TEXT,
    approved_at TEXT,
    contract_document_url TEXT,
    notes TEXT,
    amendment_count INTEGER,
    compliance_notes TEXT
);
INSERT INTO artwork_licensing_agreements VALUES ('la001','artst01','art001','Royalty','2023-05-01','2025-05-01',5.0,1000.00','Worldwide',1,'Unlimited','Auto','Active','admin','2023-04-20','legal01','2023-04-22','http://contracts.example.com/la001.pdf','First agreement',0,'All clauses met');
INSERT INTO artwork_licensing_agreements VALUES ('la002','artst02','art002','OneTime','2023-06-15','2024-06-15',0.0,500.00','NorthAmerica',0,'Print only','None','Expired','admin','2023-06-01','legal02','2023-06-05','http://contracts.example.com/la002.pdf','One‑off usage',1,'Renewal denied');
INSERT INTO artwork_licensing_agreements VALUES ('la003','artst03','art003','Exclusive','2024-01-01','2026-01-01',7.5,1500.00','Europe',1,'Digital & Print','Manual','Pending','admin','2023-12-15','legal03','2023-12-20','http://contracts.example.com/la003.pdf','Awaiting signature',0,'Pending legal review');

-- Deck archetype statistics table
CREATE TABLE deck_archetype_statistics (
    archetype_id TEXT PRIMARY KEY,
    name TEXT,
    primary_color TEXT,
    avg_mana_cost REAL,
    win_rate_percent REAL,
    popularity_rank INTEGER,
    typical_creature_count INTEGER,
    typical_spell_count INTEGER,
    average_power REAL,
    average_toughness REAL,
    common_card_ids TEXT,
    meta_version TEXT,
    last_updated TEXT,
    source_dataset TEXT,
    variance_mana_cost REAL,
    variance_power REAL,
    variance_toughness REAL,
    deck_count INTEGER,
    avg_game_length_minutes REAL,
    notes TEXT
);
INSERT INTO deck_archetype_statistics VALUES ('arc001','Aggro Red','Red',2.8,56.3,1,15,22,3.2,2.1,'c001,c045,c089','v1','2024-01-01','meta2023',0.5,0.3,0.2,1200,15.2,'Top performing aggressive deck');
INSERT INTO deck_archetype_statistics VALUES ('arc002','Control Blue','Blue',3.6,48.7,3,8,28,1.5,3.8,'c012,c067,c101','v1','2024-01-05','meta2023',0.7,0.1,0.4,950,20.5,'Late‑game control strategy');
INSERT INTO deck_archetype_statistics VALUES ('arc003','Midrange Green','Green',3.2,51.0,2,12,20,2.8,4.0,'c023,c054,c076','v1','2024-01-08','meta2023',0.6,0.2,0.3,1080,18.0,'Balanced midrange');

-- Player training modules table
CREATE TABLE player_training_modules (
    module_id TEXT PRIMARY KEY,
    title TEXT,
    description TEXT,
    difficulty_level TEXT,
    duration_minutes INTEGER,
    prerequisite_module_id TEXT,
    certification_flag INTEGER,
    creator_user_id TEXT,
    created_at TEXT,
    last_updated TEXT,
    video_url TEXT,
    slide_deck_url TEXT,
    quiz_questions INTEGER,
    passing_score_percent REAL,
    max_attempts INTEGER,
    availability_start TEXT,
    availability_end TEXT,
    enrollment_count INTEGER,
    completion_rate_percent REAL,
    feedback_score_avg REAL
);
INSERT INTO player_training_modules VALUES ('mod001','Mana Curve Basics','Understanding mana distribution', 'Beginner',30,NULL,1,'user10','2024-01-01','2024-01-10','http://videos.example.com/mc_basics.mp4','http://slides.example.com/mc_basics.pdf',10,80,3,'2024-01-01','2024-12-31',250,85.0,4.5);
INSERT INTO player_training_modules VALUES ('mod002','Advanced Combo Timing','Timing of multi‑card combos', 'Advanced',45,'mod001',1,'user11','2024-01-05','2024-01-12','http://videos.example.com/combo_timing.mp4','http://slides.example.com/combo_timing.pdf',15,85,2,'2024-02-01','2024-12-31',180,78.0,4.2);
INSERT INTO player_training_modules VALUES ('mod003','Deck Building Workshop','Practical deck construction', 'Intermediate',60,'mod001',0,'user12','2024-01-10','2024-01-18','http://videos.example.com/deck_workshop.mp4','http://slides.example.com/deck_workshop.pdf',12,75,4,'2024-03-01','2024-12-31',300,70.0,4.0);

-- Venue environmental readings table
CREATE TABLE venue_environmental_readings (
    reading_id TEXT PRIMARY KEY,
    venue_id TEXT,
    timestamp TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    noise_db REAL,
    light_lux INTEGER,
    occupancy_count INTEGER,
    hvac_status TEXT,
    air_quality_index INTEGER,
    water_leak_detected INTEGER,
    power_usage_kw REAL,
    water_usage_liters REAL,
    maintenance_flag INTEGER,
    notes TEXT,
    sensor_suite_version TEXT,
    battery_level_percent REAL,
    firmware_version TEXT,
    location_section TEXT
);
INSERT INTO venue_environmental_readings VALUES ('read001','VEN001','2024-01-15T10:00:00','22.5','45.0',600,55.2,350,120,'Running',42,0,12.5,120.0,0,'All normal','v2.1',95.0,'fw1.4','Main Hall');
INSERT INTO venue_environmental_readings VALUES ('read002','VEN001','2024-01-15T12:00:00','23.1','48.0',620,57.0,370,135,'Running',40,0,13.0,125.0,0,'Slight increase in CO2','v2.1',94.0,'fw1.4','Main Hall');
INSERT INTO venue_environmental_readings VALUES ('read003','VEN002','2024-01-15T10:30:00','21.0','50.0',580,52.5,300,80,'Running',38,0,10.8,95.0,0,'Baseline reading','v2.0',96.5,'fw1.3','Conference Room');

-- Digital collectible transactions table
CREATE TABLE digital_collectible_transactions (
    txn_id TEXT PRIMARY KEY,
    collectible_id TEXT,
    from_user_id TEXT,
    to_user_id TEXT,
    transaction_type TEXT,
    timestamp TEXT,
    price_usd REAL,
    platform_fee_usd REAL,
    gas_fee_usd REAL,
    transaction_hash TEXT,
    block_number INTEGER,
    status TEXT,
    verification_level TEXT,
    notes TEXT,
    settlement_date TEXT,
    currency_used TEXT,
    exchange_rate REAL,
    promo_code_applied TEXT,
    refund_flag INTEGER,
    dispute_id TEXT
);
INSERT INTO digital_collectible_transactions VALUES ('tx001','col001','userA','userB','Sale','2024-01-20T14:22:00',150.00,5.00,0.30','hashabc123',123456,'Completed','High','First sale','2024-01-21','USD',1.0,'PROMO10',0,NULL);
INSERT INTO digital_collectible_transactions VALUES ('tx002','col002','userC','userD','Transfer','2024-01-21T09:15:00',0.00,0.00,0.00','hashdef456',123457,'Completed','Medium','Gift transfer','2024-01-21','USD',1.0',',0,NULL);
INSERT INTO digital_collectible_transactions VALUES ('tx003','col003','userE','userF','Auction','2024-01-22T18:45:00',300.00,7.50,0.45','hashghi789',123458,'Pending','Low','Awaiting settlement','2024-01-23','USD',1.0','SPRING2024',0,'disp001');

-- Sponsor engagement metrics table
CREATE TABLE sponsor_engagement_metrics (
    metric_id TEXT PRIMARY KEY,
    sponsor_id TEXT,
    campaign_id TEXT,
    engagement_type TEXT,
    impressions INTEGER,
    clicks INTEGER,
    ctr_percent REAL,
    conversion_rate_percent REAL,
    cost_usd REAL,
    revenue_usd REAL,
    roi_percent REAL,
    start_date TEXT,
    end_date TEXT,
    target_audience TEXT,
    channel TEXT,
    creative_id TEXT,
    frequency_cap INTEGER,
    viewability_percent REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO sponsor_engagement_metrics VALUES ('met001','spon01','campA','Banner','50000','800',1.6,2.0,2000.00,2500.00,25.0,'2024-01-01','2024-01-31','Adults','Web','cre001',3,85.0,'Good performance','2024-01-01','2024-01-31');
INSERT INTO sponsor_engagement_metrics VALUES ('met002','spon02','campB','Video','75000','1500',2.0,3.5,3500.00,5000.00,42.9','2024-02-01','2024-02-28','Teens','Mobile','cre002',2,90.0,'High engagement','2024-02-01','2024-02-28');
INSERT INTO sponsor_engagement_metrics VALUES ('met003','spon03','campC','SponsoredPost','30000','600',2.0,1.8,1200.00,1300.00,8.3','2024-03-01','2024-03-31','All','Social','cre003',4,78.0,'Average results','2024-03-01','2024-03-31');

-- Magic affinity profiles table
CREATE TABLE magic_affinity_profiles (
    profile_id TEXT PRIMARY KEY,
    player_id TEXT,
    affinity_type TEXT,
    level INTEGER,
    experience_points INTEGER,
    last_activated TEXT,
    cooldown_seconds INTEGER,
    bonus_effect TEXT,
    related_spell_id TEXT,
    unlocked_at_level INTEGER,
    proficiency_rating REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    source_event TEXT,
    is_active INTEGER,
    expiration_date TEXT,
    guide_document_url TEXT,
    feedback_score REAL,
    adjustment_count INTEGER
);
INSERT INTO magic_affinity_profiles VALUES ('prof001','player01','Fire','5','12000','2024-01-10',3600,'+10% damage','spell001','3',8.7,'Core fire affinity','2023-12-01','2024-01-10','EventFirefest',1,'2025-12-31','http://guides.example.com/fire.pdf',4.5,2);
INSERT INTO magic_affinity_profiles VALUES ('prof002','player02','Water','3','8000','2024-01-12',7200,'+5% healing','spell045','2',7.2,'Water affinity unlocked','2023-12-15','2024-01-12','EventWaterfall',1,'2025-06-30','http://guides.example.com/water.pdf',4.0,1);
INSERT INTO magic_affinity_profiles VALUES ('prof003','player03','Arcane','4','9500','2024-01-15',5400,'+8% spell cost reduction','spell078','4',8.0,'Arcane mastery','2024-01-01','2024-01-15','EventArcane',1,'2025-09-15','http://guides.example.com/arcane.pdf',4.3,0);