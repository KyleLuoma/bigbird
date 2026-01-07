-- Table recording detailed production run information for printed cards
CREATE TABLE card_production_logs (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    batch_id TEXT,
    set_code TEXT,
    printer_id TEXT,
    paper_type TEXT,
    ink_type TEXT,
    run_start_time DATETIME,
    run_end_time DATETIME,
    cards_printed INTEGER,
    defects_found INTEGER,
    defect_rate REAL,
    quality_grade TEXT,
    operator_name TEXT,
    shift TEXT,
    temperature REAL,
    humidity REAL,
    machine_speed REAL,
    energy_consumption REAL,
    maintenance_flag INTEGER,
    notes TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO card_production_logs (batch_id, set_code, printer_id, paper_type, ink_type, run_start_time, run_end_time, cards_printed, defects_found, defect_rate, quality_grade, operator_name, shift, temperature, humidity, machine_speed, energy_consumption, maintenance_flag, notes, created_at) VALUES ('BATCH001','SET01','PRN001','Glossy','UV','2025-01-10 08:00:00','2025-01-10 12:00:00',5000,5,0.001,'A','Alice','Day',22.5,45.0,1200.0,350.0,0,'All good','2025-01-10 12:10:00');
INSERT INTO card_production_logs (batch_id, set_code, printer_id, paper_type, ink_type, run_start_time, run_end_time, cards_printed, defects_found, defect_rate, quality_grade, operator_name, shift, temperature, humidity, machine_speed, energy_consumption, maintenance_flag, notes, created_at) VALUES ('BATCH002','SET02','PRN002','Matte','Soy','2025-02-15 14:00:00','2025-02-15 18:30:00',7200,12,0.0017,'B','Bob','Evening',23.0,40.0,1150.0,370.0,1,'Minor jams','2025-02-15 18:45:00');
INSERT INTO card_production_logs (batch_id, set_code, printer_id, paper_type, ink_type, run_start_time, run_end_time, cards_printed, defects_found, defect_rate, quality_grade, operator_name, shift, temperature, humidity, machine_speed, energy_consumption, maintenance_flag, notes, created_at) VALUES ('BATCH003','SET03','PRN003','Linen','WaterBased','2025-03-20 09:30:00','2025-03-20 13:45:00',6000,3,0.0005,'A','Carol','Day',21.8,42.5,1220.0,340.0,0,'Smooth run','2025-03-20 14:00:00');

-- Table tracking trade interactions between players
CREATE TABLE player_trade_history (
    trade_id INTEGER PRIMARY KEY AUTOINCREMENT,
    from_player_id INTEGER,
    to_player_id INTEGER,
    card_uuid TEXT,
    trade_date DATE,
    trade_status TEXT,
    trade_method TEXT,
    app_version TEXT,
    ip_address TEXT,
    device_type TEXT,
    region TEXT,
    notes TEXT,
    fee_paid REAL,
    fee_currency TEXT,
    exchange_rate REAL,
    confirmation_code TEXT,
    reviewed_flag INTEGER,
    reviewer_id INTEGER,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME
);
INSERT INTO player_trade_history (from_player_id, to_player_id, card_uuid, trade_date, trade_status, trade_method, app_version, ip_address, device_type, region, notes, fee_paid, fee_currency, exchange_rate, confirmation_code, reviewed_flag, reviewer_id, updated_at) VALUES (101,202,'UUID12345','2025-04-01','Completed','Direct','2.5.1','192.168.1.10','Mobile','NA','First trade',0.0,'USD',1.0,'CONF001',1,301,'2025-04-01 10:05:00');
INSERT INTO player_trade_history (from_player_id, to_player_id, card_uuid, trade_date, trade_status, trade_method, app_version, ip_address, device_type, region, notes, fee_paid, fee_currency, exchange_rate, confirmation_code, reviewed_flag, reviewer_id, updated_at) VALUES (103,204,'UUID67890','2025-04-05','Pending','Marketplace','2.5.1','192.168.1.20','Desktop','EU','Awaiting approval',2.5,'USD',1.0,'CONF002',0,NULL,'2025-04-05 14:20:00');
INSERT INTO player_trade_history (from_player_id, to_player_id, card_uuid, trade_date, trade_status, trade_method, app_version, ip_address, device_type, region, notes, fee_paid, fee_currency, exchange_rate, confirmation_code, reviewed_flag, reviewer_id, updated_at) VALUES (110,215,'UUID54321','2025-04-10','Rejected','Direct','2.5.1','192.168.1.30','Tablet','ASIA','Invalid card',0.0,'USD',1.0,'CONF003',1,302,'2025-04-10 09:15:00');

-- Table summarizing marketing campaign statistics for each set
CREATE TABLE set_marketing_stats (
    stat_id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    campaign_name TEXT,
    start_date DATE,
    end_date DATE,
    budget_usd REAL,
    spend_usd REAL,
    impressions INTEGER,
    clicks INTEGER,
    ctr REAL,
    cpc REAL,
    cpm REAL,
    conversion_rate REAL,
    new_players INTEGER,
    social_mentions INTEGER,
    influencer_count INTEGER,
    email_sends INTEGER,
    email_open_rate REAL,
    email_click_rate REAL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO set_marketing_stats (set_code, campaign_name, start_date, end_date, budget_usd, spend_usd, impressions, clicks, ctr, cpc, cpm, conversion_rate, new_players, social_mentions, influencer_count, email_sends, email_open_rate, email_click_rate) VALUES ('SET01','LaunchBlast','2025-01-01','2025-01-31',50000,47000,2000000,45000,0.0225,1.04,23.5,0.15,1200,3500,45,8000,0.45,0.12);
INSERT INTO set_marketing_stats (set_code, campaign_name, start_date, end_date, budget_usd, spend_usd, impressions, clicks, ctr, cpc, cpm, conversion_rate, new_players, social_mentions, influencer_count, email_sends, email_open_rate, email_click_rate) VALUES ('SET02','MidSeasonPush','2025-04-01','2025-04-15',30000,28500,1500000,30000,0.02,0.95,19.0,0.13,950,2100,30,5000,0.42,0.10);
INSERT INTO set_marketing_stats (set_code, campaign_name, start_date, end_date, budget_usd, spend_usd, impressions, clicks, ctr, cpc, cpm, conversion_rate, new_players, social_mentions, influencer_count, email_sends, email_open_rate, email_click_rate) VALUES ('SET03','HolidaySpecial','2025-12-01','2025-12-31',80000,79000,2500000,62000,0.0248,1.27,31.6,0.16,1800,4200,60,12000,0.48,0.14);

-- Table logging access patterns for digital assets
CREATE TABLE digital_asset_access_patterns (
    access_id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_id TEXT,
    user_id INTEGER,
    access_timestamp DATETIME,
    access_type TEXT,
    device_id TEXT,
    ip_address TEXT,
    region TEXT,
    session_id TEXT,
    app_version TEXT,
    bandwidth_used_mb REAL,
    latency_ms REAL,
    error_code INTEGER,
    referrer TEXT,
    cache_hit INTEGER,
    download_speed_mbps REAL,
    upload_speed_mbps REAL,
    consent_given INTEGER,
    notes TEXT,
    recorded_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO digital_asset_access_patterns (asset_id, user_id, access_timestamp, access_type, device_id, ip_address, region, session_id, app_version, bandwidth_used_mb, latency_ms, error_code, referrer, cache_hit, download_speed_mbps, upload_speed_mbps, consent_given, notes) VALUES ('ASSET001',401,'2025-05-10 08:15:00','View','DEV001','10.0.0.1','NA','SID123','2.5.1',15.2,45.0,0,'direct',1,12.5,3.2,1,'No issues');
INSERT INTO digital_asset_access_patterns (asset_id, user_id, access_timestamp, access_type, device_id, ip_address, region, session_id, app_version, bandwidth_used_mb, latency_ms, error_code, referrer, cache_hit, download_speed_mbps, upload_speed_mbps, consent_given, notes) VALUES ('ASSET002',402,'2025-05-11 14:30:00','Download','DEV002','10.0.0.2','EU','SID124','2.5.1',250.0,80.0,0,'search',0,30.0,5.5,1,'High bandwidth');
INSERT INTO digital_asset_access_patterns (asset_id, user_id, access_timestamp, access_type, device_id, ip_address, region, session_id, app_version, bandwidth_used_mb, latency_ms, error_code, referrer, cache_hit, download_speed_mbps, upload_speed_mbps, consent_given, notes) VALUES ('ASSET003',403,'2025-05-12 20:45:00','View','DEV003','10.0.0.3','ASIA','SID125','2.5.1',8.4,60.0,404,'partner',1,9.0,2.8,0,'Timeout error');

-- Table capturing performance metrics for event vendors
CREATE TABLE event_vendor_performance_metrics (
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    vendor_id INTEGER,
    service_type TEXT,
    contract_value_usd REAL,
    delivered_on_time INTEGER,
    quality_score REAL,
    incidents_reported INTEGER,
    satisfaction_rating REAL,
    response_time_minutes REAL,
    compliance_issues INTEGER,
    notes TEXT,
    evaluated_by INTEGER,
    evaluation_date DATE,
    follow_up_required INTEGER,
    follow_up_due DATE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME,
    archived_flag INTEGER,
    external_audit_score REAL
);
INSERT INTO event_vendor_performance_metrics (event_id, vendor_id, service_type, contract_value_usd, delivered_on_time, quality_score, incidents_reported, satisfaction_rating, response_time_minutes, compliance_issues, notes, evaluated_by, evaluation_date, follow_up_required, follow_up_due, updated_at, archived_flag, external_audit_score) VALUES (1001,2001,'Catering',15000,1,4.8,0,4.9,30.0,0,'Excellent service',301,'2025-06-01',0,NULL,'2025-06-01 12:00:00',0,95.0);
INSERT INTO event_vendor_performance_metrics (event_id, vendor_id, service_type, contract_value_usd, delivered_on_time, quality_score, incidents_reported, satisfaction_rating, response_time_minutes, compliance_issues, notes, evaluated_by, evaluation_date, follow_up_required, follow_up_due, updated_at, archived_flag, external_audit_score) VALUES (1002,2002,'Audio',8000,0,3.5,2,3.2,45.0,1,'Minor glitches',302,'2025-06-05',1,'2025-06-20','2025-06-05 15:30:00',0,78.5);
INSERT INTO event_vendor_performance_metrics (event_id, vendor_id, service_type, contract_value_usd, delivered_on_time, quality_score, incidents_reported, satisfaction_rating, response_time_minutes, compliance_issues, notes, evaluated_by, evaluation_date, follow_up_required, follow_up_due, updated_at, archived_flag, external_audit_score) VALUES (1003,2003,'Security',12000,1,4.2,0,4.0,20.0,0,'All protocols followed',303,'2025-06-10',0,NULL,'2025-06-10 09:45:00',0,88.0);

-- Table detailing adjustments made to game balancing parameters
CREATE TABLE game_balancing_adjustments (
    adjustment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    mechanic_id TEXT,
    description TEXT,
    old_value REAL,
    new_value REAL,
    effective_date DATE,
    changed_by INTEGER,
    change_reason TEXT,
    impact_estimate TEXT,
    testing_phase TEXT,
    approval_status TEXT,
    reviewer_id INTEGER,
    review_date DATE,
    notes TEXT,
    rollback_flag INTEGER,
    rollback_date DATE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME,
    public_release_flag INTEGER,
    documentation_url TEXT
);
INSERT INTO game_balancing_adjustments (mechanic_id, description, old_value, new_value, effective_date, changed_by, change_reason, impact_estimate, testing_phase, approval_status, reviewer_id, review_date, notes, rollback_flag, rollback_date, updated_at, public_release_flag, documentation_url) VALUES ('MECH001','Mana cost reduction for Spell A',5.0,4.0,'2025-07-01',401,'Overpowered','Medium','Beta','Approved',501,'2025-06-28','No issues',0,NULL,'2025-06-30 10:00:00',1,'http://docs.game/mech001');
INSERT INTO game_balancing_adjustments (mechanic_id, description, old_value, new_value, effective_date, changed_by, change_reason, impact_estimate, testing_phase, approval_status, reviewer_id, review_date, notes, rollback_flag, rollback_date, updated_at, public_release_flag, documentation_url) VALUES ('MECH002','Health increase for Creature B',10.0,12.0,'2025-07-15',402,'Community feedback','Low','Alpha','Pending',502,'2025-07-10','Awaiting final tests',0,NULL,'2025-07-12 14:20:00',0,'http://docs.game/mech002');
INSERT INTO game_balancing_adjustments (mechanic_id, description, old_value, new_value, effective_date, changed_by, change_reason, impact_estimate, testing_phase, approval_status, reviewer_id, review_date, notes, rollback_flag, rollback_date, updated_at, public_release_flag, documentation_url) VALUES ('MECH003','Cooldown reduction for Ability X',30.0,25.0,'2025-08-01',403,'Meta shift','High','Live','Approved',503,'2025-07-30','Observed increased usage',0,NULL,'2025-07-31 09:45:00',1,'http://docs.game/mech003');

-- Table logging community moderation activities
CREATE TABLE community_moderation_activity (
    activity_id INTEGER PRIMARY KEY AUTOINCREMENT,
    moderator_id INTEGER,
    user_id INTEGER,
    action_type TEXT,
    target_type TEXT,
    target_id TEXT,
    action_timestamp DATETIME,
    reason TEXT,
    duration_minutes INTEGER,
    appeal_status TEXT,
    appeal_deadline DATE,
    notes TEXT,
    case_number TEXT,
    escalation_level INTEGER,
    reviewed_by INTEGER,
    review_timestamp DATETIME,
    visible_to_user INTEGER,
    automated_flag INTEGER,
    policy_reference TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO community_moderation_activity (moderator_id, user_id, action_type, target_type, target_id, action_timestamp, reason, duration_minutes, appeal_status, appeal_deadline, notes, case_number, escalation_level, reviewed_by, review_timestamp, visible_to_user, automated_flag, policy_reference) VALUES (601,701,'Warning','Post','POST123','2025-09-01 11:20:00','Spam','0','None',NULL,'First warning issued', 'CASE001',1,601,'2025-09-01 11:30:00',1,0,'SpamPolicy');
INSERT INTO community_moderation_activity (moderator_id, user_id, action_type, target_type, target_id, action_timestamp, reason, duration_minutes, appeal_status, appeal_deadline, notes, case_number, escalation_level, reviewed_by, review_timestamp, visible_to_user, automated_flag, policy_reference) VALUES (602,702,'Ban','Account','USER702','2025-09-05 14:45:00','Harassment','4320','Pending','2025-09-12',NULL,'CASE002',2,603,'2025-09-05 15:00:00',0,0,'HarassmentPolicy');
INSERT INTO community_moderation_activity (moderator_id, user_id, action_type, target_type, target_id, action_timestamp, reason, duration_minutes, appeal_status, appeal_deadline, notes, case_number, escalation_level, reviewed_by, review_timestamp, visible_to_user, automated_flag, policy_reference) VALUES (603,703,'Delete','Comment','COMM456','2025-09-10 09:10:00','Off-topic','0','None',NULL,'Removed per community guidelines', 'CASE003',1,603,'2025-09-10 09:20:00',1,1,'ContentPolicy');

-- Table detailing streaming advertisement inventory specifics
CREATE TABLE streaming_ad_inventory_details (
    inventory_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stream_id INTEGER,
    ad_slot TEXT,
    duration_seconds INTEGER,
    price_usd REAL,
    start_time DATETIME,
    end_time DATETIME,
    target_audience TEXT,
    impressions_allocated INTEGER,
    impressions_delivered INTEGER,
    click_throughs INTEGER,
    conversion_rate REAL,
    creative_id TEXT,
    advertiser_id INTEGER,
    status TEXT,
    booked_by INTEGER,
    booking_date DATE,
    notes TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME
);
INSERT INTO streaming_ad_inventory_details (stream_id, ad_slot, duration_seconds, price_usd, start_time, end_time, target_audience, impressions_allocated, impressions_delivered, click_throughs, conversion_rate, creative_id, advertiser_id, status, booked_by, booking_date, notes, updated_at) VALUES (801,'PreRoll',30,1500,'2025-10-01 10:00:00','2025-10-01 10:00:30','18-35 Gaming',100000,95000,1200,0.012,'CRTV001',9001,'Active',801,'2025-09-20','Top tier sponsor', '2025-10-01 10:05:00');
INSERT INTO streaming_ad_inventory_details (stream_id, ad_slot, duration_seconds, price_usd, start_time, end_time, target_audience, impressions_allocated, impressions_delivered, click_throughs, conversion_rate, creative_id, advertiser_id, status, booked_by, booking_date, notes, updated_at) VALUES (802,'MidRoll',45,2000,'2025-10-02 15:20:00','2025-10-02 15:20:45','25-40 Strategy',150000,148000,1800,0.0122,'CRTV002',9002,'Active',802,'2025-09-22','Mid-stream ad', '2025-10-02 15:25:00');
INSERT INTO streaming_ad_inventory_details (stream_id, ad_slot, duration_seconds, price_usd, start_time, end_time, target_audience, impressions_allocated, impressions_delivered, click_throughs, conversion_rate, creative_id, advertiser_id, status, booked_by, booking_date, notes, updated_at) VALUES (803,'PostRoll',30,1200,'2025-10-03 20:55:00','2025-10-03 20:55:30','All ages',80000,79500,600,0.0075,'CRTV003',9003,'Pending',803,'2025-09-25','Awaiting approval', '2025-10-03 21:00:00');

-- Table aggregating collector portfolio information
CREATE TABLE collector_portfolio_summary (
    portfolio_id INTEGER PRIMARY KEY AUTOINCREMENT,
    collector_id INTEGER,
    total_value_usd REAL,
    total_cards INTEGER,
    rare_cards INTEGER,
    mythic_cards INTEGER,
    sealed_sets INTEGER,
    avg_acquisition_cost REAL,
    last_update DATE,
    preferred_formats TEXT,
    risk_score REAL,
    diversification_index REAL,
    insurance_policy_id TEXT,
    notes TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME,
    active_flag INTEGER,
    external_valuation_id TEXT,
    valuation_source TEXT,
    valuation_date DATE
);
INSERT INTO collector_portfolio_summary (collector_id, total_value_usd, total_cards, rare_cards, mythic_cards, sealed_sets, avg_acquisition_cost, last_update, preferred_formats, risk_score, diversification_index, insurance_policy_id, notes, updated_at, active_flag, external_valuation_id, valuation_source, valuation_date) VALUES (1001,250000.00,3500,800,120,15,85.5,'2025-11-01','Standard,Commander',0.35,0.78,'POL123','Portfolio diversified across sets', '2025-11-01 12:00:00',1,'VAL001','ThirdParty','2025-10-30');
INSERT INTO collector_portfolio_summary (collector_id, total_value_usd, total_cards, rare_cards, mythic_cards, sealed_sets, avg_acquisition_cost, last_update, preferred_formats, risk_score, diversification_index, insurance_policy_id, notes, updated_at, active_flag, external_valuation_id, valuation_source, valuation_date) VALUES (1002,150000.00,2100,500,80,8,70.2,'2025-11-05','EDH,Legacy',0.45,0.65,'POL124','Focus on legacy staples', '2025-11-05 09:30:00',1,'VAL002','Internal','2025-11-03');
INSERT INTO collector_portfolio_summary (collector_id, total_value_usd, total_cards, rare_cards, mythic_cards, sealed_sets, avg_acquisition_cost, last_update, preferred_formats, risk_score, diversification_index, insurance_policy_id, notes, updated_at, active_flag, external_valuation_id, valuation_source, valuation_date) VALUES (1003,50000.00,800,150,30,3,62.5,'2025-11-10','Standard',0.60,0.50,'POL125','Growing modest collection', '2025-11-10 16:45:00',1,'VAL003','ThirdParty','2025-11-09');

-- Table describing resources associated with fantasy world locations
CREATE TABLE fantasy_world_location_resources (
    resource_id INTEGER PRIMARY KEY AUTOINCREMENT,
    location_id TEXT,
    resource_type TEXT,
    quantity_available INTEGER,
    extraction_difficulty REAL,
    rarity_level TEXT,
    last_extraction_date DATE,
    responsible_faction TEXT,
    sustainability_score REAL,
    economic_value_usd REAL,
    resource_status TEXT,
    notes TEXT,
    discovered_by TEXT,
    discovery_date DATE,
    depletion_threshold INTEGER,
    regeneration_rate REAL,
    security_level INTEGER,
    trade_restrictions TEXT,
    export_destination TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO fantasy_world_location_resources (location_id, resource_type, quantity_available, extraction_difficulty, rarity_level, last_extraction_date, responsible_faction, sustainability_score, economic_value_usd, resource_status, notes, discovered_by, discovery_date, depletion_threshold, regeneration_rate, security_level, trade_restrictions, export_destination) VALUES ('LOC001','Arcane Crystal',5000,2.5,'Rare','2025-06-15','MageGuild',0.85,750000,'Active','Primary source of spell power','Eldrin','2024-12-01',4500,0.02,3,'None','CapitalCity');
INSERT INTO fantasy_world_location_resources (location_id, resource_type, quantity_available, extraction_difficulty, rarity_level, last_extraction_date, responsible_faction, sustainability_score, economic_value_usd, resource_status, notes, discovered_by, discovery_date, depletion_threshold, regeneration_rate, security_level, trade_restrictions, export_destination) VALUES ('LOC002','Obsidian',12000,1.8,'Common','2025-05-20','WarClan',0.70,300000,'Active','Used for weapon forging','Gorath','2023-07-12',11000,0.05,2,'Limited','BorderMarkets');
INSERT INTO fantasy_world_location_resources (location_id, resource_type, quantity_available, extraction_difficulty, rarity_level, last_extraction_date, responsible_faction, sustainability_score, economic_value_usd, resource_status, notes, discovered_by, discovery_date, depletion_threshold, regeneration_rate, security_level, trade_restrictions, export_destination) VALUES ('LOC003','Phoenix Feather',250,4.0,'Mythic','2025-04-01','OrderOfFlame',0.95,2000000,'Depleted','Highly sought after for alchemy','Lyra','2025-01-15',200,0.01,5,'Strict','RoyalTreasury');