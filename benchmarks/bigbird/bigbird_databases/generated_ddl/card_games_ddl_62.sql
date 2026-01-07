-- Game event logistics information
CREATE TABLE game_event_logistics (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    event_id TEXT,
    venue_code TEXT,
    schedule_start TEXT,
    schedule_end TEXT,
    expected_attendance INTEGER,
    staff_count INTEGER,
    security_level TEXT,
    equipment_list TEXT,
    transport_plan TEXT,
    crowd_control_plan TEXT,
    medical_services TEXT,
    wifi_bandwidth_mbps REAL,
    power_capacity_kw REAL,
    lighting_setup TEXT,
    audio_setup TEXT,
    video_streaming_provider TEXT,
    sponsorship_level TEXT,
    ticketing_system TEXT,
    accessibility_features TEXT,
    environmental_impact_score REAL,
    notes TEXT
);
INSERT INTO game_event_logistics (event_id,venue_code,schedule_start,schedule_end,expected_attendance,staff_count,security_level,equipment_list,transport_plan,crowd_control_plan,medical_services,wifi_bandwidth_mbps,power_capacity_kw,lighting_setup,audio_setup,video_streaming_provider,sponsorship_level,ticketing_system,accessibility_features,environmental_impact_score,notes) VALUES ('EVT1001','VEN001','2025-06-01 09:00','2025-06-01 18:00',5000,120,'High','Stage,Projector','Shuttle Bus','Barriers','Onsite Medics',250.5,45.2,'LED','Surround','StreamCo','Gold','Online','Wheelchair','12.3','Initial setup');
INSERT INTO game_event_logistics (event_id,venue_code,schedule_start,schedule_end,expected_attendance,staff_count,security_level,equipment_list,transport_plan,crowd_control_plan,medical_services,wifi_bandwidth_mbps,power_capacity_kw,lighting_setup,audio_setup,video_streaming_provider,sponsorship_level,ticketing_system,accessibility_features,environmental_impact_score,notes) VALUES ('EVT1002','VEN002','2025-07-15 10:00','2025-07-15 20:00',8000,200,'Medium','Stage,Lighting','Rail','Stewards','First Aid Tent',400.0,60.0,'Spotlights','Stereo','LiveCast','Platinum','BoxOffice','SignLanguage','9.8','Added extra security');
INSERT INTO game_event_logistics (event_id,venue_code,schedule_start,schedule_end,expected_attendance,staff_count,security_level,equipment_list,transport_plan,crowd_control_plan,medical_services,wifi_bandwidth_mbps,power_capacity_kw,lighting_setup,audio_setup,video_streaming_provider,sponsorship_level,ticketing_system,accessibility_features,environmental_impact_score,notes) VALUES ('EVT1003','VEN003','2025-08-20 08:30','2025-08-20 17:30',3000,80,'Low','Projector','Parking','None','Volunteer Medics',150.2,30.5,'Ambient','Mono','Zoom','Silver','Mobile','AssistiveTech','15.0','Small regional event');

-- Virtual currency holder accounts
CREATE TABLE virtual_currency_holders (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    wallet_id TEXT,
    user_uuid TEXT,
    currency_type TEXT,
    balance REAL,
    last_transaction_date TEXT,
    create_date TEXT,
    status TEXT,
    region_code TEXT,
    kyc_verified INTEGER,
    last_login TEXT,
    device_id TEXT,
    lock_status INTEGER,
    tier_level TEXT,
    bonus_multiplier REAL,
    total_earned REAL,
    total_spent REAL,
    avg_daily_spend REAL,
    reward_points INTEGER,
    referral_code TEXT,
    notes TEXT,
    flagged INTEGER
);
INSERT INTO virtual_currency_holders (wallet_id,user_uuid,currency_type,balance,last_transaction_date,create_date,status,region_code,kyc_verified,last_login,device_id,lock_status,tier_level,bonus_multiplier,total_earned,total_spent,avg_daily_spend,reward_points,referral_code,notes,flagged) VALUES ('WLT1001','UUIDA1','Gold',1250.75,'2025-01-10','2024-06-01','Active','NA',1,'2025-01-15','DEV123',0,'Gold','1.2',5000.00,3750.25,12.5,300,'REF001','First wallet',0);
INSERT INTO virtual_currency_holders (wallet_id,user_uuid,currency_type,balance,last_transaction_date,create_date,status,region_code,kyc_verified,last_login,device_id,lock_status,tier_level,bonus_multiplier,total_earned,total_spent,avg_daily_spend,reward_points,referral_code,notes,flagged) VALUES ('WLT1002','UUIDB2','Silver',860.40,'2025-01-12','2024-07-15','Active','EU',1,'2025-01-14','DEV456',0,'Silver','1.1',3000.00,2140.00,9.3,150,'REF002','Second wallet',0);
INSERT INTO virtual_currency_holders (wallet_id,user_uuid,currency_type,balance,last_transaction_date,create_date,status,region_code,kyc_verified,last_login,device_id,lock_status,tier_level,bonus_multiplier,total_earned,total_spent,avg_daily_spend,reward_points,referral_code,notes,flagged) VALUES ('WLT1003','UUIDC3','Bronze',420.00,'2025-01-08','2024-08-20','Suspended','AS',0,'2025-01-10','DEV789',1,'Bronze','1.0',1500.00,1080.00,5.4,80,'REF003','Suspended for fraud',1);

-- Arena match outcomes
CREATE TABLE arena_match_outcomes (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    match_uuid TEXT,
    arena_id TEXT,
    match_date TEXT,
    player_one_uuid TEXT,
    player_two_uuid TEXT,
    player_one_score INTEGER,
    player_two_score INTEGER,
    winner_uuid TEXT,
    duration_seconds INTEGER,
    map_name TEXT,
    game_mode TEXT,
    avg_latency_ms REAL,
    max_latency_ms REAL,
    packet_loss_percent REAL,
    spectators_count INTEGER,
    stream_url TEXT,
    highlights_available INTEGER,
    mvp_player_uuid TEXT,
    mvp_score INTEGER,
    seasoning_level INTEGER,
    notes TEXT
);
INSERT INTO arena_match_outcomes (match_uuid,arena_id,match_date,player_one_uuid,player_two_uuid,player_one_score,player_two_score,winner_uuid,duration_seconds,map_name,game_mode,avg_latency_ms,max_latency_ms,packet_loss_percent,spectators_count,stream_url,highlights_available,mvp_player_uuid,mvp_score,seasoning_level,notes) VALUES ('MCH1001','ARN001','2025-02-20','UUIDP1','UUIDP2',3,2,'UUIDP1',1800,'Dustcity','Standard',45.2,120.5,0.8,2500','http://stream.example.com/1001',1,'UUIDP1',27,5,'Close match');
INSERT INTO arena_match_outcomes (match_uuid,arena_id,match_date,player_one_uuid,player_two_uuid,player_one_score,player_two_score,winner_uuid,duration_seconds,map_name,game_mode,avg_latency_ms,max_latency_ms,packet_loss_percent,spectators_count,stream_url,highlights_available,mvp_player_uuid,mvp_score,seasoning_level,notes) VALUES ('MCH1002','ARN002','2025-03-05','UUIDP3','UUIDP4',1,4,'UUIDP4',2100,'Skyreach','Ranked',38.7,95.0,0.5,3200','http://stream.example.com/1002',0,'UUIDP4',31,7,'Dominant performance');
INSERT INTO arena_match_outcomes (match_uuid,arena_id,match_date,player_one_uuid,player_two_uuid,player_one_score,player_two_score,winner_uuid,duration_seconds,map_name,game_mode,avg_latency_ms,max_latency_ms,packet_loss_percent,spectators_count,stream_url,highlights_available,mvp_player_uuid,mvp_score,seasoning_level,notes) VALUES ('MCH1003','ARN003','2025-04-12','UUIDP5','UUIDP6',2,2,NULL,1950,'Cavern','Casual',52.0,130.2,1.1,1800','http://stream.example.com/1003',1,'UUIDP5',24,3,'Draw after overtime');

-- Spectator engagement metrics
CREATE TABLE spectator_engagement (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    session_id TEXT,
    user_uuid TEXT,
    match_uuid TEXT,
    watch_time_seconds INTEGER,
    chat_messages_sent INTEGER,
    reactions_given INTEGER,
    peak_concurrent_viewers INTEGER,
    avg_viewers INTEGER,
    stream_quality TEXT,
    buffering_events INTEGER,
    device_type TEXT,
    os_version TEXT,
    app_version TEXT,
    subscription_status TEXT,
    ad_clicks INTEGER,
    ad_impressions INTEGER,
    donation_amount REAL,
    badge_earned TEXT,
    geo_region TEXT,
    feedback_score INTEGER,
    notes TEXT
);
INSERT INTO spectator_engagement (session_id,user_uuid,match_uuid,watch_time_seconds,chat_messages_sent,reactions_given,peak_concurrent_viewers,avg_viewers,stream_quality,buffering_events,device_type,os_version,app_version,subscription_status,ad_clicks,ad_impressions,donation_amount,badge_earned,geo_region,feedback_score,notes) VALUES ('SES1001','UUIDU1','MCH1001',1500,45,12,2500,1800,'HD',2,'Mobile','iOS14','1.3.5','Premium',3,30,15.00,'SuperFan','NA',8,'Engaged viewer');
INSERT INTO spectator_engagement (session_id,user_uuid,match_uuid,watch_time_seconds,chat_messages_sent,reactions_given,peak_concurrent_viewers,avg_viewers,stream_quality,buffering_events,device_type,os_version,app_version,subscription_status,ad_clicks,ad_impressions,donation_amount,badge_earned,geo_region,feedback_score,notes) VALUES ('SES1002','UUIDU2','MCH1002',2100,10,5,3200,2900,'FullHD',0,'Desktop','Windows10','2.0.1','Free',0,20,0.00,'Viewer','EU',9,'Silent watcher');
INSERT INTO spectator_engagement (session_id,user_uuid,match_uuid,watch_time_seconds,chat_messages_sent,reactions_given,peak_concurrent_viewers,avg_viewers,stream_quality,buffering_events,device_type,os_version,app_version,subscription_status,ad_clicks,ad_impressions,donation_amount,badge_earned,geo_region,feedback_score,notes) VALUES ('SES1003','UUIDU3','MCH1003',900,25,8,1800,1500,'HD',1,'Tablet','Android11','1.1.0','Free',1,15,5.50,'RisingStar','AS',7,'Short session');

-- Microtransaction catalog
CREATE TABLE microtransaction_catalog (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    item_code TEXT,
    item_name TEXT,
    category TEXT,
    rarity TEXT,
    price_usd REAL,
    price_local REAL,
    currency TEXT,
    available_since TEXT,
    discontinued_date TEXT,
    max_purchase_limit INTEGER,
    bundle_included INTEGER,
    promotional_flag INTEGER,
    seasonal_release TEXT,
    virtual_dimensions TEXT,
    description TEXT,
    image_url TEXT,
    required_level INTEGER,
    unlock_conditions TEXT,
    stock_quantity INTEGER,
    supplier_id TEXT,
    tax_rate REAL,
    notes TEXT
);
INSERT INTO microtransaction_catalog (item_code,item_name,category,rarity,price_usd,price_local,currency,available_since,discontinued_date,max_purchase_limit,bundle_included,promotional_flag,seasonal_release,virtual_dimensions,description,image_url,required_level,unlock_conditions,stock_quantity,supplier_id,tax_rate,notes) VALUES ('ITM001','Dragon Skin','Cosmetics','Epic',9.99,12.50,'USD','2025-01-01',NULL,2,0,0,'Spring2025','1024x1024','A fiery dragon themed skin','http://assets.example.com/dragon.png',10,'Complete tutorial',1000,'SUP001',0.07,'');
INSERT INTO microtransaction_catalog (item_code,item_name,category,rarity,price_usd,price_local,currency,available_since,discontinued_date,max_purchase_limit,bundle_included,promotional_flag,seasonal_release,virtual_dimensions,description,image_url,required_level,unlock_conditions,stock_quantity,supplier_id,tax_rate,notes) VALUES ('ITM002','Gold Pack','Currency','Common',4.99,6.30,'USD','2025-02-15',NULL,5,0,1,'Valentines2025','N/A','500 gold coins','http://assets.example.com/goldpack.png',0,'Purchase any item',5000,'SUP002',0.07,'Special promo');
INSERT INTO microtransaction_catalog (item_code,item_name,category,rarity,price_usd,price_local,currency,available_since,discontinued_date,max_purchase_limit,bundle_included,promotional_flag,seasonal_release,virtual_dimensions,description,image_url,required_level,unlock_conditions,stock_quantity,supplier_id,tax_rate,notes) VALUES ('ITM003','Starter Bundle','Bundle','Rare',19.99,25.00,'USD','2025-03-10','2025-12-31',1,1,0,'Summer2025','N/A','Includes exclusive avatar and 1000 gold','http://assets.example.com/bundle.png',5,'First purchase',200,'SUP003',0.07','Limited time offer');

-- Achievement progression tracking
CREATE TABLE achievement_progression (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    achievement_id TEXT,
    achievement_name TEXT,
    tier INTEGER,
    description TEXT,
    reward_type TEXT,
    reward_value REAL,
    unlock_criteria TEXT,
    total_players INTEGER,
    total_completions INTEGER,
    avg_completion_time_seconds INTEGER,
    difficulty_rating REAL,
    visible INTEGER,
    seasonal_event TEXT,
    associated_card_set TEXT,
    icon_url TEXT,
    created_at TEXT,
    last_updated TEXT,
    deprecated INTEGER,
    notes TEXT,
    hidden_flag INTEGER,
    external_reference TEXT
);
INSERT INTO achievement_progression (achievement_id,achievement_name,tier,description,reward_type,reward_value,unlock_criteria,total_players,total_completions,avg_completion_time_seconds,difficulty_rating,visible,seasonal_event,associated_card_set,icon_url,created_at,last_updated,deprecated,notes,hidden_flag,external_reference) VALUES ('ACH001','First Blood',1,'Win your first match','Currency',100,'Win 1 match',15000,2500,320,1.0,1,'','CoreSet','http://icons.example.com/firstblood.png','2024-01-01','2025-01-01',0,'','0','REFACH001');
INSERT INTO achievement_progression (achievement_id,achievement_name,tier,description,reward_type,reward_value,unlock_criteria,total_players,total_completions,avg_completion_time_seconds,difficulty_rating,visible,seasonal_event,associated_card_set,icon_url,created_at,last_updated,deprecated,notes,hidden_flag,external_reference) VALUES ('ACH002','Marathon',3,'Play 100 matches','Badge',0,'Play 100 matches',12000,3000,900,2.5,1,'SummerFest','ExpansionX','http://icons.example.com/marathon.png','2024-06-01','2025-06-01',0,'','0','REFACH002');
INSERT INTO achievement_progression (achievement_id,achievement_name,tier,description,reward_type,reward_value,unlock_criteria,total_players,total_completions,avg_completion_time_seconds,difficulty_rating,visible,seasonal_event,associated_card_set,icon_url,created_at,last_updated,deprecated,notes,hidden_flag,external_reference) VALUES ('ACH003','Collector',5,'Collect 500 unique cards','Item',0,'Collect 500 unique cards',8000,1200,1500,4.0,0,'','CollectorSet','http://icons.example.com/collector.png','2024-09-01','2025-09-01',0,'Hidden achievement','1','REFACH003');

-- Region server performance metrics
CREATE TABLE region_server_performance (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    region_code TEXT,
    server_id TEXT,
    cpu_utilization_percent REAL,
    memory_usage_percent REAL,
    disk_io_mb_s REAL,
    network_latency_ms REAL,
    uptime_days INTEGER,
    active_connections INTEGER,
    maintenance_window TEXT,
    last_patch_version TEXT,
    error_rate_percent REAL,
    packet_drop_percent REAL,
    concurrent_users_peak INTEGER,
    bandwidth_capacity_mbps REAL,
    power_consumption_kw REAL,
    cooling_efficiency REAL,
    security_incidents INTEGER,
    notes TEXT,
    compliance_status TEXT,
    monitoring_tool TEXT
);
INSERT INTO region_server_performance (region_code,server_id,cpu_utilization_percent,memory_usage_percent,disk_io_mb_s,network_latency_ms,uptime_days,active_connections,maintenance_window,last_patch_version,error_rate_percent,packet_drop_percent,concurrent_users_peak,bandwidth_capacity_mbps,power_consumption_kw,cooling_efficiency,security_incidents,notes,compliance_status,monitoring_tool) VALUES ('NA','SRV001',68.5,74.2,120.5,45.0,365,10234,'02:00-04:00 UTC','v1.23',0.02,0.01,15000,2000,350.0,0.92,2,'Stable performance','ISO27001','Prometheus');
INSERT INTO region_server_performance (region_code,server_id,cpu_utilization_percent,memory_usage_percent,disk_io_mb_s,network_latency_ms,uptime_days,active_connections,maintenance_window,last_patch_version,error_rate_percent,packet_drop_percent,concurrent_users_peak,bandwidth_capacity_mbps,power_consumption_kw,cooling_efficiency,security_incidents,notes,compliance_status,monitoring_tool) VALUES ('EU','SRV002',55.3,62.7,98.4,38.5,420,8450,'03:00-05:00 UTC','v1.24',0.015,0.008,12000,1800,320.0,0.95,1,'Minor latency spikes','GDPR','Datadog');
INSERT INTO region_server_performance (region_code,server_id,cpu_utilization_percent,memory_usage_percent,disk_io_mb_s,network_latency_ms,uptime_days,active_connections,maintenance_window,last_patch_version,error_rate_percent,packet_drop_percent,concurrent_users_peak,bandwidth_capacity_mbps,power_consumption_kw,cooling_efficiency,security_incidents,notes,compliance_status,monitoring_tool) VALUES ('AS','SRV003',73.1,81.0,140.2,52.3,300,15800,'01:00-03:00 UTC','v1.22',0.03,0.02,20000,2500,410.0,0.88,3,'High load during peak hours','ISO27001','NewRelic');

-- Dynamic pricing rules for in‑game store
CREATE TABLE dynamic_pricing_rules (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    rule_name TEXT,
    target_market TEXT,
    base_price_usd REAL,
    price_modifier_percent REAL,
    condition_expression TEXT,
    start_date TEXT,
    end_date TEXT,
    priority INTEGER,
    active INTEGER,
    created_by TEXT,
    created_at TEXT,
    last_modified_by TEXT,
    last_modified_at TEXT,
    notes TEXT,
    max_price_usd REAL,
    min_price_usd REAL,
    elasticity_factor REAL,
    trigger_event TEXT,
    applicable_items TEXT,
    audit_log_id INTEGER,
    version INTEGER
);
INSERT INTO dynamic_pricing_rules (rule_name,target_market,base_price_usd,price_modifier_percent,condition_expression,start_date,end_date,priority,active,created_by,created_at,last_modified_by,last_modified_at,notes,max_price_usd,min_price_usd,elasticity_factor,trigger_event,applicable_items,audit_log_id,version) VALUES ('WeekendBoost','NA',5.00,20.0,'weekend=TRUE', '2025-06-07','2025-06-09',1,1,'admin','2025-05-01','admin','2025-06-01','Increase weekend sales','6.00','4.00',1.2,'WeekendStart','ITM001,ITM002',101,2);
INSERT INTO dynamic_pricing_rules (rule_name,target_market,base_price_usd,price_modifier_percent,condition_expression,start_date,end_date,priority,active,created_by,created_at,last_modified_by,last_modified_at,notes,max_price_usd,min_price_usd,elasticity_factor,trigger_event,applicable_items,audit_log_id,version) VALUES ('HolidaySaleEU','EU',10.00,-15.0,'holiday=TRUE', '2025-12-20','2025-12-27',2,1,'marketing','2025-11-15','marketing','2025-12-10','Seasonal discount','8.50','7.00',0.9,'HolidayStart','ITM003',102,1);
INSERT INTO dynamic_pricing_rules (rule_name,target_market,base_price_usd,price_modifier_percent,condition_expression,start_date,end_date,priority,active,created_by,created_at,last_modified_by,last_modified_at,notes,max_price_usd,min_price_usd,elasticity_factor,trigger_event,applicable_items,audit_log_id,version) VALUES ('LowDemandAdjustment','AS',7.50,5.0,'demand<low', '2025-03-01','2025-03-31',3,0,'system','2025-02-20','system','2025-02-25','Temporary increase due to low demand','8.00','7.00',1.0,'DemandDrop','ITM001,ITM004',103,3);

-- Collector trade network records
CREATE TABLE collector_trade_network (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    trade_id TEXT,
    initiator_user_uuid TEXT,
    responder_user_uuid TEXT,
    offered_item_code TEXT,
    requested_item_code TEXT,
    status TEXT,
    proposed_date TEXT,
    response_date TEXT,
    trade_value_estimate REAL,
    negotiation_rounds INTEGER,
    escrow_account_id TEXT,
    delivery_method TEXT,
    trade_fee_percent REAL,
    rating_initiator INTEGER,
    rating_responder INTEGER,
    feedback_initiator TEXT,
    feedback_responder TEXT,
    dispute_flag INTEGER,
    final_settlement_date TEXT,
    notes TEXT,
    external_reference TEXT
);
INSERT INTO collector_trade_network (trade_id,initiator_user_uuid,responder_user_uuid,offered_item_code,requested_item_code,status,proposed_date,response_date,trade_value_estimate,negotiation_rounds,escrow_account_id,delivery_method,trade_fee_percent,rating_initiator,rating_responder,feedback_initiator,feedback_responder,dispute_flag,final_settlement_date,notes,external_reference) VALUES ('TRD1001','UUIDU10','UUIDU20','ITM001','ITM003','Pending','2025-01-05','2025-01-07',25.00,2,'ESC001','Digital','2.5',5,5,'Great trade','Looking forward',0,NULL,'','REFTRD001');
INSERT INTO collector_trade_network (trade_id,initiator_user_uuid,responder_user_uuid,offered_item_code,requested_item_code,status,proposed_date,response_date,trade_value_estimate,negotiation_rounds,escrow_account_id,delivery_method,trade_fee_percent,rating_initiator,rating_responder,feedback_initiator,feedback_responder,dispute_flag,final_settlement_date,notes,external_reference) VALUES ('TRD1002','UUIDU30','UUIDU40','ITM002','ITM001','Completed','2025-02-10','2025-02-12',15.00,1,'ESC002','Physical','1.0',4,5,'Smooth transaction','Excellent',0,'2025-02-20','Delivered via courier','REFTRD002');
INSERT INTO collector_trade_network (trade_id,initiator_user_uuid,responder_user_uuid,offered_item_code,requested_item_code,status,proposed_date,response_date,trade_value_estimate,negotiation_rounds,escrow_account_id,delivery_method,trade_fee_percent,rating_initiator,rating_responder,feedback_initiator,feedback_responder,dispute_flag,final_settlement_date,notes,external_reference) VALUES ('TRD1003','UUIDU50','UUIDU60','ITM004','ITM002','Disputed','2025-03-01','2025-03-04',30.00,3,'ESC003','Digital','3.0',3,2,'Issue with delivery','Unresponsive',1,NULL,'Escalated to support','REFTRD003');

-- Fantasy world economy statistics
CREATE TABLE fantasy_world_economy (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    region_name TEXT,
    gdp_usd REAL,
    inflation_rate_percent REAL,
    unemployment_rate_percent REAL,
    average_income_usd REAL,
    population INTEGER,
    major_industry TEXT,
    currency_exchange_rate REAL,
    tax_rate_percent REAL,
    trade_balance_usd REAL,
    foreign_investment_usd REAL,
    government_spending_usd REAL,
    monetary_policy TEXT,
    fiscal_year_start TEXT,
    fiscal_year_end TEXT,
    economic_growth_percent REAL,
    risk_index REAL,
    notes TEXT,
    data_source TEXT,
    last_updated TEXT,
    confidence_level REAL
);
INSERT INTO fantasy_world_economy (region_name,gdp_usd,inflation_rate_percent,unemployment_rate_percent,average_income_usd,population,major_industry,currency_exchange_rate,tax_rate_percent,trade_balance_usd,foreign_investment_usd,government_spending_usd,monetary_policy,fiscal_year_start,fiscal_year_end,economic_growth_percent,risk_index,notes,data_source,last_updated,confidence_level) VALUES ('Eldoria',1500000000,2.5,4.3,35000,8000000,'Arcane Manufacturing',1.0,18.0,50000000,200000000,300000000,'QuantitativeEasing','2024-01-01','2024-12-31',3.2,0.15,'Stable growth','WorldBank','2025-01-01',0.95);
INSERT INTO fantasy_world_economy (region_name,gdp_usd,inflation_rate_percent,unemployment_rate_percent,average_income_usd,population,major_industry,currency_exchange_rate,tax_rate_percent,trade_balance_usd,foreign_investment_usd,government_spending_usd,monetary_policy,fiscal_year_start,fiscal_year_end,economic_growth_percent,risk_index,notes,data_source,last_updated,confidence_level) VALUES ('Valoria',800000000,1.8,5.0,28000,5000000,'Dragon Breeding',0.9,22.0,-25000000,120000000,180000000,'InterestRateHike','2024-04-01','2025-03-31',2.5,0.20,'Minor recession risk','IMF','2025-01-15',0.88);
INSERT INTO fantasy_world_economy (region_name,gdp_usd,inflation_rate_percent,unemployment_rate_percent,average_income_usd,population,major_industry,currency_exchange_rate,tax_rate_percent,trade_balance_usd,foreign_investment_usd,government_spending_usd,monetary_policy,fiscal_year_start,fiscal_year_end,economic_growth_percent,risk_index,notes,data_source,last_updated,confidence_level) VALUES ('Northrun',500000000,3.2,6.5,21000,3000000,'Frost Mining',1.1,25.0,10000000,80000000,150000000,'CurrencyPeg','2024-07-01','2025-06-30',1.8,0.30,'High inflation pressure','UNData','2025-02-01',0.80);