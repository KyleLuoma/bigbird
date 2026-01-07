-- Table storing lexical information for each card
CREATE TABLE card_lexicon (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    uuid TEXT NOT NULL,
    name TEXT,
    type_line TEXT,
    mana_cost TEXT,
    cmc REAL,
    power TEXT,
    toughness TEXT,
    loyalty TEXT,
    oracle_text TEXT,
    flavor_text TEXT,
    rarity TEXT,
    legality_standard TEXT,
    legality_commander TEXT,
    artist TEXT,
    set_code TEXT,
    collector_number TEXT,
    release_date DATE,
    language TEXT,
    multiverse_id INTEGER,
    scryfall_id TEXT,
    illustration_id TEXT,
    watermark TEXT,
    keywords TEXT
);
INSERT INTO card_lexicon (id,uuid,name,type_line,mana_cost,cmc,power,toughness,loyalty,oracle_text,flavor_text,rarity,legality_standard,legality_commander,artist,set_code,collector_number,release_date,language,multiverse_id,scryfall_id,illustration_id,watermark,keywords)
VALUES (1,'uuid-001','Arcane Blast','Instant','{1}{U}','2','-','-','-','Return target nonland permanent to its owner''s hand.','A flash of violet light.', 'Common','Legal','Legal','ArtistA','AN','001','2023-01-15','English',123456,'scry-001','ill-001','-','Flash');
INSERT INTO card_lexicon (id,uuid,name,type_line,mana_cost,cmc,power,toughness,loyalty,oracle_text,flavor_text,rarity,legality_standard,legality_commander,artist,set_code,collector_number,release_date,language,multiverse_id,scryfall_id,illustration_id,watermark,keywords)
VALUES (2,'uuid-002','Mystic Dragon','Creature — Dragon','{4}{U}{U}','6','5','-','-','Flying. When Mystic Dragon enters the battlefield, draw two cards.','Its breath carries the sigh of ancient seas.', 'Rare','Legal','Legal','ArtistB','AN','002','2023-01-15','English',123457,'scry-002','ill-002','-','Flying,Draw');
INSERT INTO card_lexicon (id,uuid,name,type_line,mana_cost,cmc,power,toughness,loyalty,oracle_text,flavor_text,rarity,legality_standard,legality_commander,artist,set_code,collector_number,release_date,language,multiverse_id,scryfall_id,illustration_id,watermark,keywords)
VALUES (3,'uuid-003','Eldritch Planeswalker','Planeswalker — Eldritch','{3}{B}{B}','4','-','4','+1: Target player discards a card.','Through darkness, truth emerges.', 'Mythic','Legal','Legal','ArtistC','AN','003','2023-01-15','English',123458,'scry-003','ill-003','Eldritch','Discard');

-- Table tracking production phases for each set
CREATE TABLE set_production_timelines (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    set_code TEXT NOT NULL,
    phase_name TEXT,
    start_date DATE,
    end_date DATE,
    responsible_department TEXT,
    milestone_key TEXT,
    notes TEXT,
    resource_allocation INTEGER,
    budget_usd REAL,
    progress_percent INTEGER,
    quality_check_passed INTEGER,
    external_vendor TEXT,
    location_code TEXT,
    lead_contact TEXT,
    contacts_email TEXT,
    estimated_hours INTEGER,
    actual_hours INTEGER,
    delay_reason TEXT,
    risk_level TEXT,
    approval_status TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO set_production_timelines (id,set_code,phase_name,start_date,end_date,responsible_department,milestone_key,notes,resource_allocation,budget_usd,progress_percent,quality_check_passed,external_vendor,location_code,lead_contact,contacts_email,estimated_hours,actual_hours,delay_reason,risk_level,approval_status,created_at,updated_at)
VALUES (1,'AN','Artwork Creation','2022-06-01','2022-08-15','Art','ART001','Initial concept sketches',5,150000,30,1,'DesignStudioX','DC1','John Doe','jdoe@example.com',800,850,'None','Low','Pending','2022-06-01','2022-08-16');
INSERT INTO set_production_timelines (id,set_code,phase_name,start_date,end_date,responsible_department,milestone_key,notes,resource_allocation,budget_usd,progress_percent,quality_check_passed,external_vendor,location_code,lead_contact,contacts_email,estimated_hours,actual_hours,delay_reason,risk_level,approval_status,created_at,updated_at)
VALUES (2,'AN','Printing','2022-09-01','2022-10-20','Production','PRINT001','Bulk printing of cards',10,500000,70,0,'PrintCo','DC2','Jane Smith','jsmith@example.com',1200,1300,'Machine maintenance','Medium','Approved','2022-09-01','2022-10-21');
INSERT INTO set_production_timelines (id,set_code,phase_name,start_date,end_date,responsible_department,milestone_key,notes,resource_allocation,budget_usd,progress_percent,quality_check_passed,external_vendor,location_code,lead_contact,contacts_email,estimated_hours,actual_hours,delay_reason,risk_level,approval_status,created_at,updated_at)
VALUES (3,'AN','Distribution','2022-11-01','2022-11-30','Logistics','DIST001','Shipping to warehouses',3,80000,100,1,'LogiTrans','DC3','Mike Lee','mlee@example.com',400,380,'None','Low','Completed','2022-11-01','2022-11-30');

-- Table analysing color palettes used in artwork
CREATE TABLE artwork_color_palette_stats (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    artwork_id TEXT NOT NULL,
    dominant_color TEXT,
    secondary_color TEXT,
    accent_color TEXT,
    hue_average REAL,
    saturation_average REAL,
    brightness_average REAL,
    color_variance REAL,
    palette_type TEXT,
    color_usage_percent REAL,
    contrast_ratio REAL,
    grayscale_present INTEGER,
    predominant_scheme TEXT,
    source_file TEXT,
    resolution_width INTEGER,
    resolution_height INTEGER,
    file_size_kb INTEGER,
    created_by TEXT,
    created_at DATE,
    updated_at DATE,
    notes TEXT,
    approval_status TEXT,
    review_score INTEGER,
    external_reference TEXT
);
INSERT INTO artwork_color_palette_stats (id,artwork_id,dominant_color,secondary_color,accent_color,hue_average,saturation_average,brightness_average,color_variance,palette_type,color_usage_percent,contrast_ratio,grayscale_present,predominant_scheme,source_file,resolution_width,resolution_height,file_size_kb,created_by,created_at,updated_at,notes,approval_status,review_score,external_reference)
VALUES (1,'art-001','Blue','White','Gold',210.5,0.78,0.65,0.12,'Vibrant',45.2,3.5,0,'Analogous','art1.png',2400,3600,4500,'ArtistA','2022-07-10','2022-07-12','Bright fantasy theme','Pending',85,'ref-001');
INSERT INTO artwork_color_palette_stats (id,artwork_id,dominant_color,secondary_color,accent_color,hue_average,saturation_average,brightness_average,color_variance,palette_type,color_usage_percent,contrast_ratio,grayscale_present,predominant_scheme,source_file,resolution_width,resolution_height,file_size_kb,created_by,created_at,updated_at,notes,approval_status,review_score,external_reference)
VALUES (2,'art-002','Red','Black','Silver',15.0,0.85,0.55,0.18,'Dark',30.1,5.2,0,'Complementary','art2.jpg',3000,4000,6200,'ArtistB','2022-08-01','2022-08-03','High contrast duel', 'Approved',92,'ref-002');
INSERT INTO artwork_color_palette_stats (id,artwork_id,dominant_color,secondary_color,accent_color,hue_average,saturation_average,brightness_average,color_variance,palette_type,color_usage_percent,contrast_ratio,grayscale_present,predominant_scheme,source_file,resolution_width,resolution_height,file_size_kb,created_by,created_at,updated_at,notes,approval_status,review_score,external_reference)
VALUES (3,'art-003','Green','Brown','Olive',120.7,0.70,0.48,0.14,'Earthy',55.0,2.8,1,'Monochrome','art3.tif',2000,3000,3800,'ArtistC','2022-09-15','2022-09-16','Nature scene', 'Pending',78,'ref-003');

-- Table for calendar of official MTG events
CREATE TABLE mtg_event_calendar (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    event_name TEXT,
    event_type TEXT,
    start_date DATE,
    end_date DATE,
    venue_name TEXT,
    city TEXT,
    country TEXT,
    region TEXT,
    organizer TEXT,
    registration_deadline DATE,
    max_participants INTEGER,
    prize_pool_usd REAL,
    broadcast_channel TEXT,
    livestream_url TEXT,
    ticket_price_usd REAL,
    sponsor_name TEXT,
    sponsor_tier TEXT,
    status TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    external_event_id TEXT,
    contact_email TEXT,
    contact_phone TEXT
);
INSERT INTO mtg_event_calendar (id,event_name,event_type,start_date,end_date,venue_name,city,country,region,organizer,registration_deadline,max_participants,prize_pool_usd,broadcast_channel,livestream_url,ticket_price_usd,sponsor_name,sponsor_tier,status,notes,created_at,updated_at,external_event_id,contact_email,contact_phone)
VALUES (1,'Winter Clash','Pro Tour','2023-12-01','2023-12-04','Grand Hall','Seattle','USA','NW','MTGOrg','2023-11-20',512,'250000','Twitch','twitch.tv/winterclash',120,'SponsorX','Gold','Scheduled','First major event of the year','2023-08-01','2023-08-15','EVT001','info@mtgorg.com','5551234567');
INSERT INTO mtg_event_calendar (id,event_name,event_type,start_date,end_date,venue_name,city,country,region,organizer,registration_deadline,max_participants,prize_pool_usd,broadcast_channel,livestream_url,ticket_price_usd,sponsor_name,sponsor_tier,status,notes,created_at,updated_at,external_event_id,contact_email,contact_phone)
VALUES (2,'Spring Showcase','Qualifier','2024-03-10','2024-03-10','Conference Center','Berlin','Germany','EU','MTGOrg','2024-02-28',256,'50000','YouTube','youtube.com/springshowcase',80,'SponsorY','Silver','Open','Regional qualifier for Europe','2023-09-01','2023-09-10','EVT002','eu@mtgorg.com','4932123456');
INSERT INTO mtg_event_calendar (id,event_name,event_type,start_date,end_date,venue_name,city,country,region,organizer,registration_deadline,max_participants,prize_pool_usd,broadcast_channel,livestream_url,ticket_price_usd,sponsor_name,sponsor_tier,status,notes,created_at,updated_at,external_event_id,contact_email,contact_phone)
VALUES (3,'Summer Circuit','Grand Prix','2024-06-20','2024-06-22','Exhibition Hall','Tokyo','Japan','APAC','MTGOrg','2024-06-01',1024,'150000','Twitch','twitch.tv/summercircuit',150,'SponsorZ','Platinum','Scheduled','Largest GP of the season','2023-10-05','2023-10-20','EVT003','apac@mtgorg.com','8101234567');

-- Table storing virtual items owned by players
CREATE TABLE player_virtual_item_inventory (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER NOT NULL,
    item_uuid TEXT NOT NULL,
    item_name TEXT,
    item_category TEXT,
    rarity TEXT,
    acquisition_date DATE,
    source TEXT,
    quantity INTEGER,
    is_tradeable INTEGER,
    is_consumable INTEGER,
    cooldown_seconds INTEGER,
    last_used DATE,
    expiration_date DATE,
    level_requirement INTEGER,
    achievement_unlock TEXT,
    metadata_json TEXT,
    last_modified DATE,
    created_at DATE,
    notes TEXT,
    external_reference TEXT,
    status TEXT,
    market_value_usd REAL,
    flagged_for_review INTEGER
);
INSERT INTO player_virtual_item_inventory (id,player_id,item_uuid,item_name,item_category,rarity,acquisition_date,source,quantity,is_tradeable,is_consumable,cooldown_seconds,last_used,expiration_date,level_requirement,achievement_unlock,metadata_json,last_modified,created_at,notes,external_reference,status,market_value_usd,flagged_for_review)
VALUES (1,1001,'vitem-001','Phoenix Feather','Material','Rare','2023-04-12','Quest Reward',2,1,1,86400,'2023-09-01',NULL,10,'FirstFlight','{\"glow\":\"red\"}','2023-09-02','2023-04-12','Limited edition item','REF001','Active',45.75,0);
INSERT INTO player_virtual_item_inventory (id,player_id,item_uuid,item_name,item_category,rarity,acquisition_date,source,quantity,is_tradeable,is_consumable,cooldown_seconds,last_used,expiration_date,level_requirement,achievement_unlock,metadata_json,last_modified,created_at,notes,external_reference,status,market_value_usd,flagged_for_review)
VALUES (2,1002,'vitem-002','Arcane Sigil','Badge','Uncommon','2023-05-20','Event Drop',1,0,0,0,NULL,NULL,5,'SigilCollector','{\"glow\":\"blue\"}','2023-07-15','2023-05-20','Display only','REF002','Active',12.30,0);
INSERT INTO player_virtual_item_inventory (id,player_id,item_uuid,item_name,item_category,rarity,acquisition_date,source,quantity,is_tradeable,is_consumable,cooldown_seconds,last_used,expiration_date,level_requirement,achievement_unlock,metadata_json,last_modified,created_at,notes,external_reference,status,market_value_usd,flagged_for_review)
VALUES (3,1003,'vitem-003','Mystic Potion','Consumable','Common','2023-06-05','Shop Purchase',5,1,1,3600,'2023-06-20','2023-12-31',2,NULL,'{\"effect\":\"heal\"}','2023-06-21','2023-06-05','Stackable consumable','REF003','Active',0.99,0);

-- Table containing meta‑analysis data for decks
CREATE TABLE deck_meta_analysis (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    deck_id INTEGER NOT NULL,
    analysis_date DATE,
    average_cmc REAL,
    color_distribution TEXT,
    archetype TEXT,
    win_rate_percent REAL,
    average_game_length_minutes REAL,
    most_common_card TEXT,
    mana_curve TEXT,
    synergy_score INTEGER,
    variance_score INTEGER,
    meta_tags TEXT,
    notes TEXT,
    created_by TEXT,
    created_at DATE,
    updated_at DATE,
    source_dataset TEXT,
    confidence_level REAL,
    total_matches INTEGER,
    unique_cards INTEGER,
    average_mulligans INTEGER,
    top_three_strategies TEXT,
    anomaly_flag INTEGER,
    external_reference TEXT
);
INSERT INTO deck_meta_analysis (id,deck_id,analysis_date,average_cmc,color_distribution,archetype,win_rate_percent,average_game_length_minutes,most_common_card,mana_curve,synergy_score,variance_score,meta_tags,notes,created_by,created_at,updated_at,source_dataset,confidence_level,total_matches,unique_cards,average_mulligans,top_three_strategies,anomaly_flag,external_reference)
VALUES (1,2001,'2023-11-01',2.8,'{U:40%}{W:30%}{B:30%}','Control',56.3,15.2,'Counterspell','{0:5,1:10,2:8,3:6,4:2}','85','70','control,tempo','Stable performance','analyst1','2023-11-01','2023-11-02','dataset_alpha',0.95,1200,45,2,'Control,Midrange,Combo',0,'REFD001');
INSERT INTO deck_meta_analysis (id,deck_id,analysis_date,average_cmc,color_distribution,archetype,win_rate_percent,average_game_length_minutes,most_common_card,mana_curve,synergy_score,variance_score,meta_tags,notes,created_by,created_at,updated_at,source_dataset,confidence_level,total_matches,unique_cards,average_mulligans,top_three_strategies,anomaly_flag,external_reference)
VALUES (2,2002,'2023-11-02',3.1,'{R:50%}{G:50%}','Aggro',61.7,9.8,'Lightning Bolt','{0:2,1:12,2:15,3:10,4:1}','78','65','aggro,fast','High variance','analyst2','2023-11-02','2023-11-03','dataset_beta',0.88,950,38,1,'Aggro,Midrange,Control',0,'REFD002');
INSERT INTO deck_meta_analysis (id,deck_id,analysis_date,average_cmc,color_distribution,archetype,win_rate_percent,average_game_length_minutes,most_common_card,mana_curve,synergy_score,variance_score,meta_tags,notes,created_by,created_at,updated_at,source_dataset,confidence_level,total_matches,unique_cards,average_mulligans,top_three_strategies,anomaly_flag,external_reference)
VALUES (3,2003,'2023-11-03',2.5,'{W:70%}{U:30%}','Combo',48.9,18.5,'Mystic Tutor','{0:8,1:9,2:7,3:4,4:2}','92','55','combo,control','Low win rate due to variance','analyst3','2023-11-03','2023-11-04','dataset_gamma',0.80,800,42,3,'Combo,Control,Midrange',1,'REFD003');

-- Table storing detailed statistics of match play
CREATE TABLE match_play_statistics (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    match_id TEXT NOT NULL,
    player_one_id INTEGER,
    player_two_id INTEGER,
    start_timestamp DATETIME,
    end_timestamp DATETIME,
    winner_id INTEGER,
    total_turns INTEGER,
    average_turn_duration_seconds REAL,
    cards_played_player_one INTEGER,
    cards_played_player_two INTEGER,
    mana_spent_player_one REAL,
    mana_spent_player_two REAL,
    damage_dealt_player_one INTEGER,
    damage_dealt_player_two INTEGER,
    life_total_player_one INTEGER,
    life_total_player_two INTEGER,
    hand_size_start_player_one INTEGER,
    hand_size_start_player_two INTEGER,
    mulligans_used_player_one INTEGER,
    mulligans_used_player_two INTEGER,
    notes TEXT,
    log_file_path TEXT,
    created_at DATE,
    updated_at DATE,
    match_type TEXT,
    tournament_id TEXT,
    replay_available INTEGER
);
INSERT INTO match_play_statistics (id,match_id,player_one_id,player_two_id,start_timestamp,end_timestamp,winner_id,total_turns,average_turn_duration_seconds,cards_played_player_one,cards_played_player_two,mana_spent_player_one,mana_spent_player_two,damage_dealt_player_one,damage_dealt_player_two,life_total_player_one,life_total_player_two,hand_size_start_player_one,hand_size_start_player_two,mulligans_used_player_one,mulligans_used_player_two,notes,log_file_path,created_at,updated_at,match_type,tournament_id,replay_available)
VALUES (1,'match-001',1001,1002,'2023-10-01 14:00:00','2023-10-01 14:35:00',1001,12,120.5,45,38,78.3,65,20,15,0,0,7,7,1,0,'Close game with late comeback','/logs/match-001.log','2023-10-01','2023-10-01','Standard','tourn-001',1);
INSERT INTO match_play_statistics (id,match_id,player_one_id,player_two_id,start_timestamp,end_timestamp,winner_id,total_turns,average_turn_duration_seconds,cards_played_player_one,cards_played_player_two,mana_spent_player_one,mana_spent_player_two,damage_dealt_player_one,damage_dealt_player_two,life_total_player_one,life_total_player_two,hand_size_start_player_one,hand_size_start_player_two,mulligans_used_player_one,mulligans_used_player_two,notes,log_file_path,created_at,updated_at,match_type,tournament_id,replay_available)
VALUES (2,'match-002',1003,1004,'2023-10-02 16:10:00','2023-10-02 16:45:00',1004,15,115.0,50,52,85.0,90.5,30,35,0,0,6,6,0,1,'Aggressive early play', '/logs/match-002.log','2023-10-02','2023-10-02','Modern','tourn-001',1);
INSERT INTO match_play_statistics (id,match_id,player_one_id,player_two_id,start_timestamp,end_timestamp,winner_id,total_turns,average_turn_duration_seconds,cards_played_player_one,cards_played_player_two,mana_spent_player_one,mana_spent_player_two,damage_dealt_player_one,damage_dealt_player_two,life_total_player_one,life_total_player_two,hand_size_start_player_one,hand_size_start_player_two,mulligans_used_player_one,mulligans_used_player_two,notes,log_file_path,created_at,updated_at,match_type,tournament_id,replay_available)
VALUES (3,'match-003',1005,1006,'2023-10-03 18:20:00','2023-10-03 18:55:00',1005,14,122.3,48,49,80.2,82.1,25,20,0,0,8,8,2,2,'Mirror match with balanced strategies','/logs/match-003.log','2023-10-03','2023-10-03','Legacy','tourn-002',0);

-- Table tracking fluctuations of arcane energy across locations
CREATE TABLE arcane_energy_fluctuations (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    location_id TEXT NOT NULL,
    measurement_timestamp DATETIME,
    energy_level REAL,
    variance REAL,
    source TEXT,
    sensor_id TEXT,
    calibration_factor REAL,
    temperature_celsius REAL,
    humidity_percent REAL,
    notes TEXT,
    recorded_by TEXT,
    created_at DATE,
    updated_at DATE,
    status TEXT,
    anomaly_detected INTEGER,
    external_reference TEXT,
    latitude REAL,
    longitude REAL,
    altitude_meters REAL,
    sampling_interval_seconds INTEGER,
    data_quality_score INTEGER,
    regulatory_compliance INTEGER,
    last_maintenance DATE,
    maintenance_contact TEXT
);
INSERT INTO arcane_energy_fluctuations (id,location_id,measurement_timestamp,energy_level,variance,source,sensor_id,calibration_factor,temperature_celsius,humidity_percent,notes,recorded_by,created_at,updated_at,status,anomaly_detected,external_reference,latitude,longitude,altitude_meters,sampling_interval_seconds,data_quality_score,regulatory_compliance,last_maintenance,maintenance_contact)
VALUES (1,'LOC-01','2023-09-01 08:00:00',12.5,0.8,'Ambient','SEN-100',1.02,22.5,45,'Stable reading','techA','2023-09-01','2023-09-01','Active',0,'REFE001',45.4215,-75.6972,303,300,95,1,'2023-08-15','contactA');
INSERT INTO arcane_energy_fluctuations (id,location_id,measurement_timestamp,energy_level,variance,source,sensor_id,calibration_factor,temperature_celsius,humidity_percent,notes,recorded_by,created_at,updated_at,status,anomaly_detected,external_reference,latitude,longitude,altitude_meters,sampling_interval_seconds,data_quality_score,regulatory_compliance,last_maintenance,maintenance_contact)
VALUES (2,'LOC-02','2023-09-01 08:05:00',15.3,1.2,'Leyline','SEN-101',0.98,19.0,55,'Slight increase','techB','2023-09-01','2023-09-01','Active',0,'REFE002',34.0522,-118.2437,89,300,88,1,'2023-08-20','contactB');
INSERT INTO arcane_energy_fluctuations (id,location_id,measurement_timestamp,energy_level,variance,source,sensor_id,calibration_factor,temperature_celsius,humidity_percent,notes,recorded_by,created_at,updated_at,status,anomaly_detected,external_reference,latitude,longitude,altitude_meters,sampling_interval_seconds,data_quality_score,regulatory_compliance,last_maintenance,maintenance_contact)
VALUES (3,'LOC-03','2023-09-01 08:10:00',9.7,0.5,'Ambient','SEN-102',1.00,23.8,40,'Low reading, within normal range','techC','2023-09-01','2023-09-01','Active',0,'REFE003',51.5074,-0.1278,35,300,92,1,'2023-08-10','contactC');

-- Table mapping mechanics to taxonomy categories
CREATE TABLE card_mechanic_taxonomy (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    mechanic_name TEXT NOT NULL,
    taxonomy_category TEXT,
    description TEXT,
    interaction_type TEXT,
    primary_color TEXT,
    secondary_color TEXT,
    rarity_class TEXT,
    affected_phases TEXT,
    rule_reference TEXT,
    example_card_uuid TEXT,
    complexity_score INTEGER,
    balance_impact TEXT,
    design_intent TEXT,
    created_by TEXT,
    created_at DATE,
    updated_at DATE,
    status TEXT,
    notes TEXT,
    external_reference TEXT,
    usage_frequency INTEGER,
    last_review_date DATE,
    reviewer TEXT,
    acceptance_status TEXT,
    related_mechanics TEXT,
    deprecated_flag INTEGER
);
INSERT INTO card_mechanic_taxonomy (id,mechanic_name,taxonomy_category,description,interaction_type,primary_color,secondary_color,rarity_class,affected_phases,rule_reference,example_card_uuid,complexity_score,balance_impact,design_intent,created_by,created_at,updated_at,status,notes,external_reference,usage_frequency,last_review_date,reviewer,acceptance_status,related_mechanics,deprecated_flag)
VALUES (1,'Flying','Mobility','Creature can’t be blocked except by creatures with flying or reach','Combat','Blue','White','Common','Combat','CR-101','uuid-001',2,'Low','Add evasion','designerA','2022-01-15','2023-01-01','Active','Standard keyword','REFM001',1200,'2023-06-01','leadDesigner','Approved','Reach,Hover',0);
INSERT INTO card_mechanic_taxonomy (id,mechanic_name,taxonomy_category,description,interaction_type,primary_color,secondary_color,rarity_class,affected_phases,rule_reference,example_card_uuid,complexity_score,balance_impact,design_intent,created_by,created_at,updated_at,status,notes,external_reference,usage_frequency,last_review_date,reviewer,acceptance_status,related_mechanics,deprecated_flag)
VALUES (2,'Deathtouch','Combat','Any amount of damage dealt by this creature destroys another creature','Combat','Black','Red','Uncommon','Combat','CR-102','uuid-002',3,'Medium','Introduce risk','designerB','2022-03-10','2023-02-05','Active','High impact mechanic','REFM002',850,'2023-07-15','leadDesigner','Approved','Lifelink,Infect',0);
INSERT INTO card_mechanic_taxonomy (id,mechanic_name,taxonomy_category,description,interaction_type,primary_color,secondary_color,rarity_class,affected_phases,rule_reference,example_card_uuid,complexity_score,balance_impact,design_intent,created_by,created_at,updated_at,status,notes,external_reference,usage_frequency,last_review_date,reviewer,acceptance_status,related_mechanics,deprecated_flag)
VALUES (3,'Hexproof','Protection','This permanent can’t be targeted by opponents'' spells or abilities','Targeting','Green','Blue','Rare','All','CR-103','uuid-003',4,'High','Create immunity','designerC','2022-05-22','2023-03-12','Active','Often paired with indestructible','REFM003',540,'2023-08-20','leadDesigner','Approved','Shroud,Indestructible',0);

-- Table describing narrative chapters for each set
CREATE TABLE set_storyline_chapters (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    set_code TEXT NOT NULL,
    chapter_number INTEGER,
    chapter_title TEXT,
    synopsis TEXT,
    main_characters TEXT,
    featured_location TEXT,
    key_events TEXT,
    release_date DATE,
    author TEXT,
    word_count INTEGER,
    illustrator TEXT,
    theme TEXT,
    mood TEXT,
    resolved_plotlines TEXT,
    lingering_mysteries TEXT,
    related_cards TEXT,
    music_reference TEXT,
    external_link TEXT,
    created_at DATE,
    updated_at DATE,
    status TEXT,
    notes TEXT,
    approval_status TEXT,
    reviewer TEXT,
    confidentiality_level TEXT,
    version_number INTEGER,
    legacy_flag INTEGER
);
INSERT INTO set_storyline_chapters (id,set_code,chapter_number,chapter_title,synopsis,main_characters,featured_location,key_events,release_date,author,word_count,illustrator,theme,mood,resolved_plotlines,lingering_mysteries,related_cards,music_reference,external_link,created_at,updated_at,status,notes,approval_status,reviewer,confidentiality_level,version_number,legacy_flag)
VALUES (1,'AN',1,'The Awakening','The plane begins to stir as ancient powers emerge','Elder Mage;Young Apprentice','Sunlit Vale','Discovery of a hidden artifact','2023-01-01','LoreMaster','3500','ArtistX','Rebirth','Hopeful','Artifact secured','Whispers of a darker force','uuid-010,uuid-011','track01.mp3','http://lore.example.com/awakening','2022-12-01','2023-01-02','Published','First chapter','Approved','EditorA','Public',1,0);
INSERT INTO set_storyline_chapters (id,set_code,chapter_number,chapter_title,synopsis,main_characters,featured_location,key_events,release_date,author,word_count,illustrator,theme,mood,resolved_plotlines,lingering_mysteries,related_cards,music_reference,external_link,created_at,updated_at,status,notes,approval_status,reviewer,confidentiality_level,version_number,legacy_flag)
VALUES (2,'AN',2,'Shadows Rise','A rival faction attempts to seize control of the ley lines','Dark Warlord;Shadow Scout','Obsidian Peaks','Siege of the crystal citadel','2023-02-15','LoreMaster','4200','ArtistY','Conflict','Tense','Citadel defended','Potential betrayal within the ranks','uuid-020,uuid-021','track02.mp3','http://lore.example.com/shadows','2023-01-10','2023-02-16','Published','Second chapter','Approved','EditorB','Public',1,0);
INSERT INTO set_storyline_chapters (id,set_code,chapter_number,chapter_title,synopsis,main_characters,featured_location,key_events,release_date,author,word_count,illustrator,theme,mood,resolved_plotlines,lingering_mysteries,related_cards,music_reference,external_link,created_at,updated_at,status,notes,approval_status,reviewer,confidentiality_level,version_number,legacy_flag)
VALUES (3,'AN',3,'Echoes of Eternity','The heroes uncover a timeless echo that could reshape reality','Chronomancer;Eternal Guardian','Timeless Sanctum','Activation of the Echo Engine','2023-04-01','LoreMaster','3800','ArtistZ','Mystery','Ethereal','Echo Engine activated','Future implications unknown','uuid-030,uuid-031','track03.mp3','http://lore.example.com/echoes','2023-03-05','2023-04-02','Published','Third chapter','Approved','EditorC','Public',1,0);

-- Table containing demographics for streaming ad target audiences
CREATE TABLE streaming_ad_target_demographics (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    platform_name TEXT,
    ad_campaign_id TEXT,
    target_age_min INTEGER,
    target_age_max INTEGER,
    primary_gender TEXT,
    region TEXT,
    language TEXT,
    avg_view_time_seconds REAL,
    preferred_content_genre TEXT,
    device_type TEXT,
    subscription_status TEXT,
    income_bracket TEXT,
    education_level TEXT,
    interests TEXT,
    engagement_score REAL,
    conversion_rate_percent REAL,
    budget_usd REAL,
    start_date DATE,
    end_date DATE,
    created_by TEXT,
    created_at DATE,
    updated_at DATE,
    status TEXT,
    notes TEXT,
    approval_status TEXT,
    reviewer TEXT,
    external_reference TEXT,
    cpm_usd REAL,
    estimated_impressions INTEGER,
    frequency_cap INTEGER
);
INSERT INTO streaming_ad_target_demographics (id,platform_name,ad_campaign_id,target_age_min,target_age_max,primary_gender,region,language,avg_view_time_seconds,preferred_content_genre,device_type,subscription_status,income_bracket,education_level,interests,engagement_score,conversion_rate_percent,budget_usd,start_date,end_date,created_by,created_at,updated_at,status,notes,approval_status,reviewer,external_reference,cpm_usd,estimated_impressions,frequency_cap)
VALUES (1,'Twitch','AD001',18,34,'Male','NA','English',320.5,'Gaming','Desktop','Paid','50k-75k','College','Esports,Collectibles',78.2,2.5,15000,'2023-07-01','2023-07-31','marketerA','2023-06-20','2023-07-01','Active','High ROI expected','Approved','leadA','REFAD001',12.5,1200000,3);
INSERT INTO streaming_ad_target_demographics (id,platform_name,ad_campaign_id,target_age_min,target_age_max,primary_gender,region,language,avg_view_time_seconds,preferred_content_genre,device_type,subscription_status,income_bracket,education_level,interests,engagement_score,conversion_rate_percent,budget_usd,start_date,end_date,created_by,created_at,updated_at,status,notes,approval_status,reviewer,external_reference,cpm_usd,estimated_impressions,frequency_cap)
VALUES (2,'YouTube','AD002',25,44,'Female','EU','English',215.0,'Tutorial','Mobile','Free','30k-50k','HighSchool','Crafts,DIY',65.4,1.8,8000,'2023-08-15','2023-09-15','marketerB','2023-08-01','2023-08-15','Active','Targeting hobbyists','Approved','leadB','REFAD002',8.0,950000,2);
INSERT INTO streaming_ad_target_demographics (id,platform_name,ad_campaign_id,target_age_min,target_age_max,primary_gender,region,language,avg_view_time_seconds,preferred_content_genre,device_type,subscription_status,income_bracket,education_level,interests,engagement_score,conversion_rate_percent,budget_usd,start_date,end_date,created_by,created_at,updated_at,status,notes,approval_status,reviewer,external_reference,cpm_usd,estimated_impressions,frequency_cap)
VALUES (3,'Facebook','AD003',35,54,'Any','APAC','Mandarin',180.3,'News','Tablet','Free','75k-100k','College','Finance,Tech',72.1,2.2,12000,'2023-09-01','2023-09-30','marketerC','2023-08-20','2023-09-01','Active','Professional audience','Approved','leadC','REFAD003',10.5,1100000,2);
