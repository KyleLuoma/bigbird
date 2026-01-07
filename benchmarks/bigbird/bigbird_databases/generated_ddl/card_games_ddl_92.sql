-- Card metadata tags for analytical purposes
CREATE TABLE card_meta_tags (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    uuid TEXT NOT NULL,
    tag TEXT,
    tag_category TEXT,
    confidence REAL,
    source_system TEXT,
    added_by TEXT,
    added_at DATE,
    reviewed_by TEXT,
    reviewed_at DATE,
    is_manual INTEGER DEFAULT 0,
    is_deprecated INTEGER DEFAULT 0,
    deprecation_reason TEXT,
    notes TEXT,
    related_tag_id INTEGER,
    priority INTEGER,
    visibility TEXT,
    language TEXT,
    version INTEGER,
    hash_checksum TEXT
);
INSERT INTO card_meta_tags (uuid, tag, tag_category, confidence, source_system, added_by, added_at, reviewed_by, reviewed_at, is_manual, is_deprecated, deprecation_reason, notes, related_tag_id, priority, visibility, language, version, hash_checksum) VALUES ('uuid1','Aggro','Style',0.95,'auto','system','2023-04-01','admin','2023-04-02',0,0,NULL,'Initial tag',NULL,1,'public','en',1,'abc123');
INSERT INTO card_meta_tags (uuid, tag, tag_category, confidence, source_system, added_by, added_at, reviewed_by, reviewed_at, is_manual, is_deprecated, deprecation_reason, notes, related_tag_id, priority, visibility, language, version, hash_checksum) VALUES ('uuid2','Control','Strategy',0.88,'auto','system','2023-04-03','admin','2023-04-04',0,0,NULL,'Control oriented',NULL,2,'public','en',1,'def456');
INSERT INTO card_meta_tags (uuid, tag, tag_category, confidence, source_system, added_by, added_at, reviewed_by, reviewed_at, is_manual, is_deprecated, deprecation_reason, notes, related_tag_id, priority, visibility, language, version, hash_checksum) VALUES ('uuid3','Ramp','Mechanic',0.92,'auto','system','2023-04-05','admin','2023-04-06',0,0,NULL,'Mana acceleration',NULL,3,'public','en',1,'ghi789');

-- Historical record of decks submitted by players
CREATE TABLE deck_submission_history (
    submission_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    deck_name TEXT,
    deck_uuid TEXT,
    format TEXT,
    mainboard_cards TEXT,
    sideboard_cards TEXT,
    win_rate REAL,
    average_game_length REAL,
    tournament_eligible INTEGER,
    submitted_at DATE,
    approved_by TEXT,
    approved_at DATE,
    notes TEXT,
    version INTEGER,
    meta_tags TEXT,
    is_public INTEGER,
    source_platform TEXT,
    deck_rating REAL,
    image_url TEXT,
    external_link TEXT
);
INSERT INTO deck_submission_history (player_id, deck_name, deck_uuid, format, mainboard_cards, sideboard_cards, win_rate, average_game_length, tournament_eligible, submitted_at, approved_by, approved_at, notes, version, meta_tags, is_public, source_platform, deck_rating, image_url, external_link) VALUES (101,'Aggro Rush','deckuuid1','Standard','CardA,CardB,CardC','CardX,CardY',0.62,12.5,1,'2023-05-01','moderator','2023-05-02','First submission',1,'Aggro,Fast',1,'web','4.2','http://images.example/aggro.jpg','http://decksite.example/aggro');
INSERT INTO deck_submission_history (player_id, deck_name, deck_uuid, format, mainboard_cards, sideboard_cards, win_rate, average_game_length, tournament_eligible, submitted_at, approved_by, approved_at, notes, version, meta_tags, is_public, source_platform, deck_rating, image_url, external_link) VALUES (102,'Control Tower','deckuuid2','Modern','CardD,CardE','CardZ',0.58,15.0,1,'2023-05-03','moderator','2023-05-04','Second submission',1,'Control,Midrange',1,'app','3.9','http://images.example/control.jpg','http://decksite.example/control');
INSERT INTO deck_submission_history (player_id, deck_name, deck_uuid, format, mainboard_cards, sideboard_cards, win_rate, average_game_length, tournament_eligible, submitted_at, approved_by, approved_at, notes, version, meta_tags, is_public, source_platform, deck_rating, image_url, external_link) VALUES (103,'Combo Breaker','deckuuid3','Legacy','CardF,CardG','CardW',0.71,11.2,0,'2023-05-05','moderator','2023-05-06','Experimental',1,'Combo,Fast',0,'web','4.5','http://images.example/combo.jpg','http://decksite.example/combo');

-- Individual game play sessions logged for analytics
CREATE TABLE game_play_session (
    session_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    opponent_id INTEGER,
    deck_uuid TEXT,
    opponent_deck_uuid TEXT,
    format TEXT,
    result TEXT,
    turns_taken INTEGER,
    cards_drawn INTEGER,
    mana_spent REAL,
    damage_dealt REAL,
    damage_taken REAL,
    start_time DATETIME,
    end_time DATETIME,
    server_location TEXT,
    latency_ms REAL,
    is_ranked INTEGER,
    rating_change INTEGER,
    notes TEXT,
    spectator_count INTEGER,
    stream_url TEXT
);
INSERT INTO game_play_session (player_id, opponent_id, deck_uuid, opponent_deck_uuid, format, result, turns_taken, cards_drawn, mana_spent, damage_dealt, damage_taken, start_time, end_time, server_location, latency_ms, is_ranked, rating_change, notes, spectator_count, stream_url) VALUES (101,202,'deckuuid1','deckuuidA','Standard','Win',12,24,18.5,20,5,'2023-06-01 14:00:00','2023-06-01 14:25:00','NA-East',45.2,1,15,'Smooth game',5,'http://stream.example/101v202');
INSERT INTO game_play_session (player_id, opponent_id, deck_uuid, opponent_deck_uuid, format, result, turns_taken, cards_drawn, mana_spent, damage_dealt, damage_taken, start_time, end_time, server_location, latency_ms, is_ranked, rating_change, notes, spectator_count, stream_url) VALUES (102,203,'deckuuid2','deckuuidB','Modern','Loss',15,28,22.0,12,20,'2023-06-02 16:10:00','2023-06-02 16:45:00','EU-West',60.1,1,-10,'Close match',3,'http://stream.example/102v203');
INSERT INTO game_play_session (player_id, opponent_id, deck_uuid, opponent_deck_uuid, format, result, turns_taken, cards_drawn, mana_spent, damage_dealt, damage_taken, start_time, end_time, server_location, latency_ms, is_ranked, rating_change, notes, spectator_count, stream_url) VALUES (103,204,'deckuuid3','deckuuidC','Legacy','Win',10,20,15.3,25,3,'2023-06-03 18:30:00','2023-06-03 18:55:00','NA-West',38.7,0,0,'Friendly match',0,'http://stream.example/103v204');

-- Requests for card trades between players
CREATE TABLE player_trade_requests (
    trade_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    requester_id INTEGER,
    responder_id INTEGER,
    offered_card_uuid TEXT,
    requested_card_uuid TEXT,
    status TEXT,
    created_at DATE,
    updated_at DATE,
    expiration_date DATE,
    notes TEXT,
    is_counter_offer INTEGER,
    counter_offer_id INTEGER,
    agreed_at DATE,
    cancelled_by INTEGER,
    cancellation_reason TEXT,
    trade_method TEXT,
    platform TEXT,
    priority INTEGER,
    visibility TEXT,
    rating_requirement INTEGER,
    trade_fee REAL
);
INSERT INTO player_trade_requests (requester_id, responder_id, offered_card_uuid, requested_card_uuid, status, created_at, updated_at, expiration_date, notes, is_counter_offer, counter_offer_id, agreed_at, cancelled_by, cancellation_reason, trade_method, platform, priority, visibility, rating_requirement, trade_fee) VALUES (101,202,'uuidA','uuidB','Pending','2023-07-01','2023-07-01','2023-07-15','First request',0,NULL,NULL,NULL,NULL,'direct','web',1,'public',0,0.0);
INSERT INTO player_trade_requests (requester_id, responder_id, offered_card_uuid, requested_card_uuid, status, created_at, updated_at, expiration_date, notes, is_counter_offer, counter_offer_id, agreed_at, cancelled_by, cancellation_reason, trade_method, platform, priority, visibility, rating_requirement, trade_fee) VALUES (102,203,'uuidC','uuidD','Accepted','2023-07-02','2023-07-03','2023-07-20','Accepted quickly',0,NULL,'2023-07-03',NULL,NULL,'direct','app',2,'private',5,1.5);
INSERT INTO player_trade_requests (requester_id, responder_id, offered_card_uuid, requested_card_uuid, status, created_at, updated_at, expiration_date, notes, is_counter_offer, counter_offer_id, agreed_at, cancelled_by, cancellation_reason, trade_method, platform, priority, visibility, rating_requirement, trade_fee) VALUES (103,204,'uuidE','uuidF','Cancelled','2023-07-04','2023-07-05','2023-07-21','No response',0,NULL,NULL,204,'No reply','direct','web',3,'public',0,0.0);

-- Milestones for set production lifecycle
CREATE TABLE set_production_milestones (
    milestone_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    milestone_name TEXT,
    target_date DATE,
    actual_date DATE,
    status TEXT,
    responsible_team TEXT,
    notes TEXT,
    risk_level TEXT,
    mitigation_plan TEXT,
    budget_allocated REAL,
    budget_spent REAL,
    resource_count INTEGER,
    vendor_name TEXT,
    compliance_check INTEGER,
    approval_status TEXT,
    created_by TEXT,
    created_at DATE,
    updated_by TEXT,
    updated_at DATE,
    external_reference TEXT
);
INSERT INTO set_production_milestones (set_code, milestone_name, target_date, actual_date, status, responsible_team, notes, risk_level, mitigation_plan, budget_allocated, budget_spent, resource_count, vendor_name, compliance_check, approval_status, created_by, created_at, updated_by, updated_at, external_reference) VALUES ('M21','Design Freeze','2022-01-15','2022-01-14','Completed','Design','All cards finalized','Low','N/A',500000,480000,12,'VendorA',1,'Approved','lead_designer','2021-12-01','lead_designer','2022-01-14','http://pm.example/m21');
INSERT INTO set_production_milestones (set_code, milestone_name, target_date, actual_date, status, responsible_team, notes, risk_level, mitigation_plan, budget_allocated, budget_spent, resource_count, vendor_name, compliance_check, approval_status, created_by, created_at, updated_by, updated_at, external_reference) VALUES ('ZNR','Artwork Completion','2022-04-10','2022-04-12','Delayed','Art','Extra illustrations added','Medium','Overtime','300000',310000,8,'VendorB',1,'Pending','art_director','2022-02-01','art_director','2022-04-12','http://pm.example/znr');
INSERT INTO set_production_milestones (set_code, milestone_name, target_date, actual_date, status, responsible_team, notes, risk_level, mitigation_plan, budget_allocated, budget_spent, resource_count, vendor_name, compliance_check, approval_status, created_by, created_at, updated_by, updated_at, external_reference) VALUES ('KHM','Print Run Start','2022-07-01','2022-07-01','On Schedule','Printing','All plates approved','Low','N/A','700000',0,15,'VendorC',1,'Approved','print_manager','2022-05-15','print_manager','2022-07-01','http://pm.example/khm');

-- Version history for digital artwork assets
CREATE TABLE digital_artwork_version_log (
    version_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    artwork_id INTEGER,
    version_number INTEGER,
    created_at DATETIME,
    created_by TEXT,
    change_summary TEXT,
    file_path TEXT,
    resolution TEXT,
    color_profile TEXT,
    format TEXT,
    size_bytes INTEGER,
    checksum TEXT,
    is_approved INTEGER,
    approval_date DATE,
    approved_by TEXT,
    tags TEXT,
    usage_rights TEXT,
    associated_set TEXT,
    priority INTEGER,
    external_link TEXT
);
INSERT INTO digital_artwork_version_log (artwork_id, version_number, created_at, created_by, change_summary, file_path, resolution, color_profile, format, size_bytes, checksum, is_approved, approval_date, approved_by, tags, usage_rights, associated_set, priority, external_link) VALUES (1001,1,'2023-01-10 08:00:00','artistA','Initial vector','/art/1001/v1.png','3000x4200','sRGB','png',2500000,'chk001',1,'2023-01-12','lead_art','illustration,card','full','M21',1,'http://art.example/1001/v1');
INSERT INTO digital_artwork_version_log (artwork_id, version_number, created_at, created_by, change_summary, file_path, resolution, color_profile, format, size_bytes, checksum, is_approved, approval_date, approved_by, tags, usage_rights, associated_set, priority, external_link) VALUES (1001,2,'2023-02-05 09:30:00','artistA','Color correction','/art/1001/v2.png','3000x4200','sRGB','png',2600000,'chk002',1,'2023-02-07','lead_art','illustration,card','full','M21',1,'http://art.example/1001/v2');
INSERT INTO digital_artwork_version_log (artwork_id, version_number, created_at, created_by, change_summary, file_path, resolution, color_profile, format, size_bytes, checksum, is_approved, approval_date, approved_by, tags, usage_rights, associated_set, priority, external_link) VALUES (1002,1,'2023-03-15 11:20:00','artistB','Initial sketch','/art/1002/v1.png','2500x3500','AdobeRGB','png',1800000,'chk003',0,NULL,NULL,'sketch,concept','concept','KHM',2,'http://art.example/1002/v1');

-- Collector market activity logs
CREATE TABLE collector_market_activity (
    activity_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    collector_id INTEGER,
    card_uuid TEXT,
    action_type TEXT,
    quantity INTEGER,
    price_per_unit REAL,
    total_price REAL,
    transaction_date DATE,
    marketplace TEXT,
    seller_id INTEGER,
    buyer_id INTEGER,
    is_private INTEGER,
    notes TEXT,
    shipping_method TEXT,
    shipping_cost REAL,
    tax_amount REAL,
    currency TEXT,
    exchange_rate REAL,
    batch_id TEXT,
    verification_status TEXT
);
INSERT INTO collector_market_activity (collector_id, card_uuid, action_type, quantity, price_per_unit, total_price, transaction_date, marketplace, seller_id, buyer_id, is_private, notes, shipping_method, shipping_cost, tax_amount, currency, exchange_rate, batch_id, verification_status) VALUES (201,'uuidA','Buy',2,15.5,31.0,'2023-04-01','SiteX',NULL,201,0,'First purchase','Standard',2.0,1.5,'USD',1.0,'batch001','Verified');
INSERT INTO collector_market_activity (collector_id, card_uuid, action_type, quantity, price_per_unit, total_price, transaction_date, marketplace, seller_id, buyer_id, is_private, notes, shipping_method, shipping_cost, tax_amount, currency, exchange_rate, batch_id, verification_status) VALUES (202,'uuidB','Sell',1,45.0,45.0,'2023-04-05','SiteY',202,NULL,1,'Private sale','Express',5.0,3.0,'EUR',1.1,'batch002','Pending');
INSERT INTO collector_market_activity (collector_id, card_uuid, action_type, quantity, price_per_unit, total_price, transaction_date, marketplace, seller_id, buyer_id, is_private, notes, shipping_method, shipping_cost, tax_amount, currency, exchange_rate, batch_id, verification_status) VALUES (203,'uuidC','Trade',1,0,0,'2023-04-10','SiteZ',203,204,0,'Trade for other card','N/A',0,0,'USD',1.0,'batch003','Verified');

-- Staff assignments for events
CREATE TABLE event_staff_assignments (
    assign_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    staff_id INTEGER,
    role TEXT,
    shift_start DATETIME,
    shift_end DATETIME,
    location TEXT,
    contact_email TEXT,
    is_lead INTEGER,
    notes TEXT,
    training_completed INTEGER,
    certification TEXT,
    hourly_rate REAL,
    overtime_eligible INTEGER,
    equipment_assigned TEXT,
    uniform_required INTEGER,
    travel_allowance REAL,
    accommodation_provided INTEGER,
    emergency_contact TEXT,
    status TEXT
);
INSERT INTO event_staff_assignments (event_id, staff_id, role, shift_start, shift_end, location, contact_email, is_lead, notes, training_completed, certification, hourly_rate, overtime_eligible, equipment_assigned, uniform_required, travel_allowance, accommodation_provided, emergency_contact, status) VALUES (301,401,'Judge','2023-08-01 08:00:00','2023-08-01 16:00:00','Hall A','judge1@example.com',1,'Head judge for day 1',1,'JudgeCert','25.0',1,'Laptop,Tablet',1,100.0,1,'555-1234','Confirmed');
INSERT INTO event_staff_assignments (event_id, staff_id, role, shift_start, shift_end, location, contact_email, is_lead, notes, training_completed, certification, hourly_rate, overtime_eligible, equipment_assigned, uniform_required, travel_allowance, accommodation_provided, emergency_contact, status) VALUES (301,402,'Volunteer','2023-08-01 09:00:00','2023-08-01 13:00:00','Hall B','volunteer1@example.com',0,'Assists with registration',1,NULL,'15.0',0,'Badge',0,0.0,0,'555-5678','Confirmed');
INSERT INTO event_staff_assignments (event_id, staff_id, role, shift_start, shift_end, location, contact_email, is_lead, notes, training_completed, certification, hourly_rate, overtime_eligible, equipment_assigned, uniform_required, travel_allowance, accommodation_provided, emergency_contact, status) VALUES (302,403,'Streamer','2023-08-02 10:00:00','2023-08-02 18:00:00','Streaming Booth','streamer1@example.com',0,'Live coverage',1,NULL,'30.0',1,'Camera,Mic',1,150.0,1,'555-9012','Pending');

-- Detailed arena match statistics
CREATE TABLE arena_match_statistics (
    match_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    arena_id INTEGER,
    player_uuid TEXT,
    opponent_uuid TEXT,
    deck_uuid TEXT,
    opponent_deck_uuid TEXT,
    result TEXT,
    turns INTEGER,
    cards_played INTEGER,
    spells_cast INTEGER,
    creatures_played INTEGER,
    mana_spent REAL,
    damage_dealt REAL,
    damage_received REAL,
    life_total_end INTEGER,
    opponent_life_end INTEGER,
    time_elapsed_seconds INTEGER,
    rank_change INTEGER,
    achievement_unlocked TEXT,
    notes TEXT,
    captured_at DATETIME
);
INSERT INTO arena_match_statistics (arena_id, player_uuid, opponent_uuid, deck_uuid, opponent_deck_uuid, result, turns, cards_played, spells_cast, creatures_played, mana_spent, damage_dealt, damage_received, life_total_end, opponent_life_end, time_elapsed_seconds, rank_change, achievement_unlocked, notes, captured_at) VALUES (1,'uuid1','uuidA','deckuuid1','deckuuidA','Win',14,30,12,8,20.5,22,5,20,0,900,10,'FirstWin','Great match','2023-09-01 12:00:00');
INSERT INTO arena_match_statistics (arena_id, player_uuid, opponent_uuid, deck_uuid, opponent_deck_uuid, result, turns, cards_played, spells_cast, creatures_played, mana_spent, damage_dealt, damage_received, life_total_end, opponent_life_end, time_elapsed_seconds, rank_change, achievement_unlocked, notes, captured_at) VALUES (2,'uuid2','uuidB','deckuuid2','deckuuidB','Loss',16,35,15,9,23.0,15,25,10,15,1020,-5,'CloseLoss','Tough opponent','2023-09-02 14:30:00');
INSERT INTO arena_match_statistics (arena_id, player_uuid, opponent_uuid, deck_uuid, opponent_deck_uuid, result, turns, cards_played, spells_cast, creatures_played, mana_spent, damage_dealt, damage_received, life_total_end, opponent_life_end, time_elapsed_seconds, rank_change, achievement_unlocked, notes, captured_at) VALUES (3,'uuid3','uuidC','deckuuid3','deckuuidC','Win',11,28,10,7,18.0,20,3,23,0,780,12,'SpeedRunner','Quick victory','2023-09-03 16:45:00');

-- Research notes for magic theory projects
CREATE TABLE magic_theory_research (
    research_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    project_code TEXT,
    hypothesis TEXT,
    methodology TEXT,
    start_date DATE,
    end_date DATE,
    lead_researcher TEXT,
    collaborator TEXT,
    funding_source TEXT,
    budget_allocated REAL,
    budget_spent REAL,
    results_summary TEXT,
    published INTEGER,
    publication_doi TEXT,
    data_repository_url TEXT,
    peer_review_status TEXT,
    risk_assessment TEXT,
    ethics_approval INTEGER,
    notes TEXT,
    last_updated DATE,
    status TEXT
);
INSERT INTO magic_theory_research (project_code, hypothesis, methodology, start_date, end_date, lead_researcher, collaborator, funding_source, budget_allocated, budget_spent, results_summary, published, publication_doi, data_repository_url, peer_review_status, risk_assessment, ethics_approval, notes, last_updated, status) VALUES ('MT01','Mana flow follows fractal patterns','Simulation and field testing','2022-01-15','2023-06-30','DrA','DrB','GrantX',200000,150000,'Positive correlation found',1,'10.1234/mt01','http://data.example/mt01','Accepted','Low',1,'Further analysis needed','2023-07-01','Completed');
INSERT INTO magic_theory_research (project_code, hypothesis, methodology, start_date, end_date, lead_researcher, collaborator, funding_source, budget_allocated, budget_spent, results_summary, published, publication_doi, data_repository_url, peer_review_status, risk_assessment, ethics_approval, notes, last_updated, status) VALUES ('MT02','Card synergy impacts meta stability','Statistical analysis of tournament data','2022-05-01','2023-12-15','DrC','DrD','CorporateY',150000,120000,'Meta shift observed in Q3',0,NULL,'http://data.example/mt02','Pending','Medium',1,'Awaiting publication','2023-08-20','InProgress');
INSERT INTO magic_theory_research (project_code, hypothesis, methodology, start_date, end_date, lead_researcher, collaborator, funding_source, budget_allocated, budget_spent, results_summary, published, publication_doi, data_repository_url, peer_review_status, risk_assessment, ethics_approval, notes, last_updated, status) VALUES ('MT03','Alternate color identities enable new mechanics','Design experiments','2023-01-10','2024-03-31','DrE','DrF','GrantZ',180000,50000,'Prototype mechanics viable',0,NULL,'http://data.example/mt03','Pending','High',0,'Initial phase','2023-09-10','Planning');

-- Event staff assignment for venue logistics (different from previous staff table)
CREATE TABLE venue_logistics_staff (
    log_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    staff_id INTEGER,
    duty TEXT,
    shift_start DATETIME,
    shift_end DATETIME,
    equipment_assigned TEXT,
    vehicle_assigned TEXT,
    safety_brief_completed INTEGER,
    contact_number TEXT,
    supervisor_id INTEGER,
    notes TEXT,
    overtime_hours REAL,
    meal_allowance REAL,
    accommodation_needed INTEGER,
    travel_distance_km REAL,
    pre_event_checklist TEXT,
    post_event_report TEXT,
    status TEXT,
    updated_at DATETIME,
    created_at DATETIME
);
INSERT INTO venue_logistics_staff (venue_id, staff_id, duty, shift_start, shift_end, equipment_assigned, vehicle_assigned, safety_brief_completed, contact_number, supervisor_id, notes, overtime_hours, meal_allowance, accommodation_needed, travel_distance_km, pre_event_checklist, post_event_report, status, updated_at, created_at) VALUES (1,501,'LoadIn','2023-10-01 06:00:00','2023-10-01 09:00:00','Forklift','Van1',1,'555-2111',401,'Handled pallets',2.0,30.0,0,15.0,'checklist1','report1','Completed','2023-10-01 09:30:00','2023-09-30 12:00:00');
INSERT INTO venue_logistics_staff (venue_id, staff_id, duty, shift_start, shift_end, equipment_assigned, vehicle_assigned, safety_brief_completed, contact_number, supervisor_id, notes, overtime_hours, meal_allowance, accommodation_needed, travel_distance_km, pre_event_checklist, post_event_report, status, updated_at, created_at) VALUES (1,502,'LoadOut','2023-10-02 18:00:00','2023-10-02 21:00:00','Cart','Van2',1,'555-3222',401,'Secured equipment',1.5,25.0,0,20.0,'checklist2','report2','Completed','2023-10-02 21:30:00','2023-09-30 13:00:00');
INSERT INTO venue_logistics_staff (venue_id, staff_id, duty, shift_start, shift_end, equipment_assigned, vehicle_assigned, safety_brief_completed, contact_number, supervisor_id, notes, overtime_hours, meal_allowance, accommodation_needed, travel_distance_km, pre_event_checklist, post_event_report, status, updated_at, created_at) VALUES (2,503,'Security','2023-10-01 07:00:00','2023-10-02 23:00:00','Radio','Van3',1,'555-4333',402,'Patrolled venue',5.0,50.0,1,30.0,'checklist3','report3','InProgress','2023-10-02 23:15:00','2023-10-01 07:15:00');

-- Streaming platform metrics per event
CREATE TABLE streaming_platform_metrics (
    metric_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    platform_name TEXT,
    concurrent_viewers INTEGER,
    peak_viewers INTEGER,
    average_watch_time_seconds INTEGER,
    total_view_seconds BIGINT,
    bitrate_kbps INTEGER,
    stream_start DATETIME,
    stream_end DATETIME,
    server_region TEXT,
    cdn_provider TEXT,
    buffering_events INTEGER,
    avg_buffer_duration_ms INTEGER,
    ad_impressions INTEGER,
    ad_clicks INTEGER,
    unique_chatters INTEGER,
    chat_messages INTEGER,
    stream_quality_rating REAL,
    notes TEXT,
    recorded_at DATETIME
);
INSERT INTO streaming_platform_metrics (event_id, platform_name, concurrent_viewers, peak_viewers, average_watch_time_seconds, total_view_seconds, bitrate_kbps, stream_start, stream_end, server_region, cdn_provider, buffering_events, avg_buffer_duration_ms, ad_impressions, ad_clicks, unique_chatters, chat_messages, stream_quality_rating, notes, recorded_at) VALUES (301,'StreamHub',1200,2500,1800,6480000,4500,'2023-11-01 10:00:00','2023-11-01 18:00:00','NA-East','Akamai',12,350,5000,250,800,15000,4.5,'Smooth streaming','2023-11-01 18:05:00');
INSERT INTO streaming_platform_metrics (event_id, platform_name, concurrent_viewers, peak_viewers, average_watch_time_seconds, total_view_seconds, bitrate_kbps, stream_start, stream_end, server_region, cdn_provider, buffering_events, avg_buffer_duration_ms, ad_impressions, ad_clicks, unique_chatters, chat_messages, stream_quality_rating, notes, recorded_at) VALUES (302,'LiveFlow',950,2000,1650,5947500,4200,'2023-11-02 09:30:00','2023-11-02 17:30:00','EU-West','Cloudflare',18,420,4200,190,700,12000,4.2,'Minor buffering spikes','2023-11-02 17:35:00');
INSERT INTO streaming_platform_metrics (event_id, platform_name, concurrent_viewers, peak_viewers, average_watch_time_seconds, total_view_seconds, bitrate_kbps, stream_start, stream_end, server_region, cdn_provider, buffering_events, avg_buffer_duration_ms, ad_impressions, ad_clicks, unique_chatters, chat_messages, stream_quality_rating, notes, recorded_at) VALUES (303,'GameCast',800,1800,1500,5400000,4000,'2023-11-03 11:00:00','2023-11-03 19:00:00','APAC','Fastly',9,210,3800,150,650,11000,4.7,'Excellent performance','2023-11-03 19:05:00');