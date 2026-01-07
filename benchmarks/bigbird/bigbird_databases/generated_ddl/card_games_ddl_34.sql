```sql
-- Player retention cohorts
CREATE TABLE player_retention_cohorts
(
    cohort_id INTEGER PRIMARY KEY AUTOINCREMENT,
    start_date DATE,
    end_date DATE,
    player_count INTEGER,
    avg_sessions_per_player REAL,
    avg_session_length_minutes REAL,
    churn_rate REAL,
    retention_week1 REAL,
    retention_week2 REAL,
    retention_week4 REAL,
    retention_month1 REAL,
    average_spend REAL,
    currency TEXT,
    region TEXT,
    device_type TEXT,
    platform TEXT,
    acquisition_source TEXT,
    marketing_campaign TEXT,
    cohort_name TEXT,
    notes TEXT
);

INSERT INTO player_retention_cohorts
    (start_date, end_date, player_count, avg_sessions_per_player, avg_session_length_minutes,
     churn_rate, retention_week1, retention_week2, retention_week4, retention_month1,
     average_spend, currency, region, device_type, platform, acquisition_source,
     marketing_campaign, cohort_name, notes)
VALUES
    ('2023-01-01','2023-01-31',5000,5.2,45.3,0.12,0.80,0.65,0.45,0.30,12.5,'USD','NA','Mobile','iOS','Social Media','Winter Blast','Jan2023 Cohort','Initial cohort for Jan');

INSERT INTO player_retention_cohorts
    (start_date, end_date, player_count, avg_sessions_per_player, avg_session_length_minutes,
     churn_rate, retention_week1, retention_week2, retention_week4, retention_month1,
     average_spend, currency, region, device_type, platform, acquisition_source,
     marketing_campaign, cohort_name, notes)
VALUES
    ('2023-02-01','2023-02-28',4600,4.9,42.1,0.10,0.82,0.68,0.48,0.33,11.8,'USD','EU','Desktop','Windows','Email','Valentines Promo','Feb2023 Cohort','Valentine period');

INSERT INTO player_retention_cohorts
    (start_date, end_date, player_count, avg_sessions_per_player, avg_session_length_minutes,
     churn_rate, retention_week1, retention_week2, retention_week4, retention_month1,
     average_spend, currency, region, device_type, platform, acquisition_source,
     marketing_campaign, cohort_name, notes)
VALUES
    ('2023-03-01','2023-03-31',5200,5.5,47.0,0.14,0.78,0.60,0.42,0.28,13.2,'USD','APAC','Mobile','Android','Referral','Spring Kickoff','Mar2023 Cohort','Spring launch');

-- In-game economy trends
CREATE TABLE in_game_economy_trends
(
    trend_id INTEGER PRIMARY KEY AUTOINCREMENT,
    metric_date DATE,
    gold_supply REAL,
    gold_demand REAL,
    average_gold_price REAL,
    gem_supply REAL,
    gem_demand REAL,
    average_gem_price REAL,
    item_market_volume REAL,
    top_selling_item TEXT,
    avg_item_price REAL,
    inflation_rate REAL,
    deflation_rate REAL,
    active_player_count INTEGER,
    new_items_introduced INTEGER,
    removed_items INTEGER,
    special_event TEXT,
    event_multiplier REAL,
    region TEXT,
    notes TEXT
);

INSERT INTO in_game_economy_trends
    (metric_date, gold_supply, gold_demand, average_gold_price, gem_supply, gem_demand,
     average_gem_price, item_market_volume, top_selling_item, avg_item_price,
     inflation_rate, deflation_rate, active_player_count, new_items_introduced,
     removed_items, special_event, event_multiplier, region, notes)
VALUES
    ('2023-01-15',1200000,1150000,1.03,300000,280000,0.95,850000,'Golden Sword',75.5,0.02,0.00,75000,12,2,'New Year Bash',1.20,'NA','Stable market early Jan');

INSERT INTO in_game_economy_trends
    (metric_date, gold_supply, gold_demand, average_gold_price, gem_supply, gem_demand,
     average_gem_price, item_market_volume, top_selling_item, avg_item_price,
     inflation_rate, deflation_rate, active_player_count, new_items_introduced,
     removed_items, special_event, event_multiplier, region, notes)
VALUES
    ('2023-02-15',1180000,1220000,1.08,310000,320000,1.02,900000,'Crystal Shield',82.0,0.04,0.01,72000,8,1,'Valentines Event',1.15,'EU','Slight gold shortage');

INSERT INTO in_game_economy_trends
    (metric_date, gold_supply, gold_demand, average_gold_price, gem_supply, gem_demand,
     average_gem_price, item_market_volume, top_selling_item, avg_item_price,
     inflation_rate, deflation_rate, active_player_count, new_items_introduced,
     removed_items, special_event, event_multiplier, region, notes)
VALUES
    ('2023-03-15',1250000,1190000,1.01,295000,285000,0.98,870000,'Fire Axe',78.3,0.01,0.00,77000,10,0,'Spring Festival',1.25,'APAC','Gold surplus after event');

-- Virtual currency exchange offers
CREATE TABLE virtual_currency_exchange_offers
(
    offer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    offer_date DATE,
    source_currency TEXT,
    target_currency TEXT,
    exchange_rate REAL,
    min_amount REAL,
    max_amount REAL,
    fee_percentage REAL,
    promotional_code TEXT,
    valid_until DATE,
    provider_name TEXT,
    provider_contact TEXT,
    terms_summary TEXT,
    status TEXT,
    daily_limit REAL,
    weekly_limit REAL,
    monthly_limit REAL,
    region TEXT,
    notes TEXT,
    created_by TEXT
);

INSERT INTO virtual_currency_exchange_offers
    (offer_date, source_currency, target_currency, exchange_rate, min_amount, max_amount,
     fee_percentage, promotional_code, valid_until, provider_name, provider_contact,
     terms_summary, status, daily_limit, weekly_limit, monthly_limit, region, notes, created_by)
VALUES
    ('2023-01-20','USD','GEM',0.85,10,1000,2.5,'NEWYEAR23','2023-02-05','CryptoEx','support@cryptoex.com',
     'Standard fee applies','Active',5000,30000,120000,'NA','First quarter promo','admin');

INSERT INTO virtual_currency_exchange_offers
    (offer_date, source_currency, target_currency, exchange_rate, min_amount, max_amount,
     fee_percentage, promotional_code, valid_until, provider_name, provider_contact,
     terms_summary, status, daily_limit, weekly_limit, monthly_limit, region, notes, created_by)
VALUES
    ('2023-02-10','EUR','GEM',0.92,20,2000,2.0,'VALENTINE','2023-02-28','EuroSwitch','contact@euroswitch.eu',
     'Lower fee for EUR holders','Active',6000,35000,140000,'EU','Valentine special','finance_team');

INSERT INTO virtual_currency_exchange_offers
    (offer_date, source_currency, target_currency, exchange_rate, min_amount, max_amount,
     fee_percentage, promotional_code, valid_until, provider_name, provider_contact,
     terms_summary, status, daily_limit, weekly_limit, monthly_limit, region, notes, created_by)
VALUES
    ('2023-03-05','JPY','GEM',0.0078,5000,50000,1.8,'SPRING23','2023-04-01','NipponX','help@nippox.jp',
     'Spring discount for JPY','Active',8000,45000,180000,'APAC','Limited time','operations');

-- Server maintenance windows
CREATE TABLE server_maintenance_windows
(
    window_id INTEGER PRIMARY KEY AUTOINCREMENT,
    server_id TEXT,
    start_time DATETIME,
    end_time DATETIME,
    maintenance_type TEXT,
    reason TEXT,
    impact_level TEXT,
    affected_regions TEXT,
    notified_players INTEGER,
    notification_method TEXT,
    expected_downtime_minutes INTEGER,
    actual_downtime_minutes INTEGER,
    engineer_on_duty TEXT,
    ticket_reference TEXT,
    rollback_plan TEXT,
    post_maintenance_steps TEXT,
    status TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO server_maintenance_windows
    (server_id, start_time, end_time, maintenance_type, reason, impact_level,
     affected_regions, notified_players, notification_method, expected_downtime_minutes,
     actual_downtime_minutes, engineer_on_duty, ticket_reference, rollback_plan,
     post_maintenance_steps, status, notes, created_at, updated_at)
VALUES
    ('srv-01','2023-01-25 02:00:00','2023-01-25 04:30:00','Database Upgrade','Schema migration','High',
     'NA,EU','12000','Email',150,145,'alice_smith','TCK-1001','Rollback to v1.4','Validate indexes','Completed','No issues','2023-01-20 09:00:00','2023-01-25 05:00:00');

INSERT INTO server_maintenance_windows
    (server_id, start_time, end_time, maintenance_type, reason, impact_level,
     affected_regions, notified_players, notification_method, expected_downtime_minutes,
     actual_downtime_minutes, engineer_on_duty, ticket_reference, rollback_plan,
     post_maintenance_steps, status, notes, created_at, updated_at)
VALUES
    ('srv-02','2023-02-15 01:00:00','2023-02-15 03:00:00','Security Patch','Vulnerability fix','Medium',
     'EU,APAC','8000','In‑game popup',120,118,'bob_jones','TCK-1023','Revert patch if failure','Run health checks','Completed','Patch applied successfully','2023-02-10 10:30:00','2023-02-15 04:00:00');

INSERT INTO server_maintenance_windows
    (server_id, start_time, end_time, maintenance_type, reason, impact_level,
     affected_regions, notified_players, notification_method, expected_downtime_minutes,
     actual_downtime_minutes, engineer_on_duty, ticket_reference, rollback_plan,
     post_maintenance_steps, status, notes, created_at, updated_at)
VALUES
    ('srv-03','2023-03-20 23:00:00','2023-03-21 02:30:00','Hardware Refresh','Replace SSDs','Low',
     'NA','5000','Push Notification',210,205,'carol_lee','TCK-1050','Restore from latest snapshot','Monitor I/O performance','Completed','All systems nominal','2023-03-15 08:45:00','2023-03-21 03:00:00');

-- API endpoint throttling
CREATE TABLE api_endpoint_throttling
(
    throttle_id INTEGER PRIMARY KEY AUTOINCREMENT,
    endpoint_path TEXT,
    method TEXT,
    max_requests_per_minute INTEGER,
    burst_limit INTEGER,
    penalty_seconds INTEGER,
    enabled INTEGER,
    created_at DATETIME,
    updated_at DATETIME,
    description TEXT,
    client_type TEXT,
    region TEXT,
    api_version TEXT,
    auth_required INTEGER,
    rate_limit_strategy TEXT,
    enforcement_mode TEXT,
    last_modified_by TEXT,
    notes TEXT,
    monitoring_enabled INTEGER,
    alert_threshold INTEGER
);

INSERT INTO api_endpoint_throttling
    (endpoint_path, method, max_requests_per_minute, burst_limit, penalty_seconds,
     enabled, created_at, updated_at, description, client_type, region, api_version,
     auth_required, rate_limit_strategy, enforcement_mode, last_modified_by,
     notes, monitoring_enabled, alert_threshold)
VALUES
    ('/v1/cards/search','GET',120,30,10,1,'2023-01-01 00:00:00','2023-01-10 12:00:00','Search cards endpoint','Web','NA','v1',1,'Token Bucket','Hard','admin','Initial setup',1,200);

INSERT INTO api_endpoint_throttling
    (endpoint_path, method, max_requests_per_minute, burst_limit, penalty_seconds,
     enabled, created_at, updated_at, description, client_type, region, api_version,
     auth_required, rate_limit_strategy, enforcement_mode, last_modified_by,
     notes, monitoring_enabled, alert_threshold)
VALUES
    ('/v1/players/profile','POST',60,20,15,1,'2023-02-01 00:00:00','2023-02-05 09:30:00','Update player profile','Mobile','EU','v1',1,'Leaky Bucket','Soft','ops','Adjusted for mobile traffic',1,150);

INSERT INTO api_endpoint_throttling
    (endpoint_path, method, max_requests_per_minute, burst_limit, penalty_seconds,
     enabled, created_at, updated_at, description, client_type, region, api_version,
     auth_required, rate_limit_strategy, enforcement_mode, last_modified_by,
     notes, monitoring_enabled, alert_threshold)
VALUES
    ('/v2/marketplace/listings','GET',80,25,12,1,'2023-03-01 00:00:00','2023-03-07 14:45:00','Marketplace listings fetch','Web','APAC','v2',0,'Fixed Window','Hard','dev','Beta rollout',1,180);

-- External partner metrics
CREATE TABLE external_partner_metrics
(
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    partner_id TEXT,
    partnership_start DATE,
    partnership_end DATE,
    total_revenue REAL,
    revenue_share_percentage REAL,
    active_campaigns INTEGER,
    avg_campaign_roi REAL,
    clicks INTEGER,
    impressions INTEGER,
    conversions INTEGER,
    avg_conversion_rate REAL,
    region TEXT,
    primary_contact TEXT,
    contact_email TEXT,
    sla_level TEXT,
    compliance_status TEXT,
    notes TEXT,
    last_audit_date DATE,
    created_at DATETIME
);

INSERT INTO external_partner_metrics
    (partner_id, partnership_start, partnership_end, total_revenue, revenue_share_percentage,
     active_campaigns, avg_campaign_roi, clicks, impressions, conversions,
     avg_conversion_rate, region, primary_contact, contact_email, sla_level,
     compliance_status, notes, last_audit_date, created_at)
VALUES
    ('PRT-001','2022-01-01','2024-12-31',1250000.00,15.0,8,2.45,452000,2100000,7800,0.37,'NA','John Doe','john.doe@partner.com','Gold','Compliant','Key strategic partner','2023-12-15','2023-01-05 10:00:00');

INSERT INTO external_partner_metrics
    (partner_id, partnership_start, partnership_end, total_revenue, revenue_share_percentage,
     active_campaigns, avg_campaign_roi, clicks, impressions, conversions,
     avg_conversion_rate, region, primary_contact, contact_email, sla_level,
     compliance_status, notes, last_audit_date, created_at)
VALUES
    ('PRT-002','2021-06-15','2023-06-14',845000.50,12.5,5,1.98,298000,1500000,4200,0.28,'EU','Anna Smith','anna.smith@partner.eu','Silver','Compliant','Renewal pending','2023-05-20','2022-06-01 09:30:00');

INSERT INTO external_partner_metrics
    (partner_id, partnership_start, partnership_end, total_revenue, revenue_share_percentage,
     active_campaigns, avg_campaign_roi, clicks, impressions, conversions,
     avg_conversion_rate, region, primary_contact, contact_email, sla_level,
     compliance_status, notes, last_audit_date, created_at)
VALUES
    ('PRT-003','2023-02-01','2025-01-31',320000.75,10.0,3,2.10,120000,600000,2100,0.35,'APAC','Li Wei','li.wei@partner.apac','Bronze','Compliant','New partnership', '2023-08-10','2023-02-05 14:15:00');

-- Marketing content assets
CREATE TABLE marketing_content_assets
(
    asset_id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_name TEXT,
    asset_type TEXT,
    file_path TEXT,
    file_size_bytes INTEGER,
    duration_seconds INTEGER,
    resolution TEXT,
    format TEXT,
    created_date DATE,
    last_modified_date DATE,
    campaign_id TEXT,
    target_audience TEXT,
    region TEXT,
    language TEXT,
    platform TEXT,
    status TEXT,
    approved_by TEXT,
    approval_date DATE,
    notes TEXT,
    tags TEXT
);

INSERT INTO marketing_content_assets
    (asset_name, asset_type, file_path, file_size_bytes, duration_seconds, resolution,
     format, created_date, last_modified_date, campaign_id, target_audience,
     region, language, platform, status, approved_by, approval_date, notes, tags)
VALUES
    ('Winter Promo Video','Video','/assets/winter2023.mp4',25400000,120,'1920x1080','MP4','2023-01-05','2023-01-10','CMP-1001','All Players','NA','en','YouTube','Active','marketing_lead','2023-01-12','High engagement expected','winter,promo,2023');

INSERT INTO marketing_content_assets
    (asset_name, asset_type, file_path, file_size_bytes, duration_seconds, resolution,
     format, created_date, last_modified_date, campaign_id, target_audience,
     region, language, platform, status, approved_by, approval_date, notes, tags)
VALUES
    ('Spring Banner','Image','/assets/spring_banner.png',350000,0,'1200x400','PNG','2023-02-20','2023-02-22','CMP-1002','New Users','EU','de','Web','Active','creative_manager','2023-02-25','Seasonal banner','spring,banner,2023');

INSERT INTO marketing_content_assets
    (asset_name, asset_type, file_path, file_size_bytes, duration_seconds, resolution,
     format, created_date, last_modified_date, campaign_id, target_audience,
     region, language, platform, status, approved_by, approval_date, notes, tags)
VALUES
    ('Asia Live Stream Intro','Video','/assets/asia_intro.mov',18000000,45,'1280x720','MOV','2023-03-01','2023-03-03','CMP-1003','Stream Viewers','APAC','zh','Twitch','Pending','content_director','2023-03-05','Awaiting final edit','asia,stream,intro');

-- Community challenge participation
CREATE TABLE community_challenge_participation
(
    participation_id INTEGER PRIMARY KEY AUTOINCREMENT,
    challenge_id TEXT,
    player_uuid TEXT,
    start_date DATE,
    end_date DATE,
    status TEXT,
    score REAL,
    rank INTEGER,
    attempts INTEGER,
    time_spent_minutes REAL,
    reward_claimed INTEGER,
    reward_type TEXT,
    reward_amount REAL,
    region TEXT,
    device_type TEXT,
    platform TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    moderator_review TEXT
);

INSERT INTO community_challenge_participation
    (challenge_id, player_uuid, start_date, end_date, status, score, rank,
     attempts, time_spent_minutes, reward_claimed, reward_type, reward_amount,
     region, device_type, platform, notes, created_at, updated_at, moderator_review)
VALUES
    ('CHL-2023-01','8a5f3c2d-9b1e-4a6f-8c2d-1f9e5b7a6c3d','2023-01-10','2023-01-17','Completed',874.5,12,3,210.0,1,'Gem Pack',150,'NA','Mobile','iOS','Great performance','2023-01-18 08:00:00','2023-01-18 09:30:00','Approved');

INSERT INTO community_challenge_participation
    (challenge_id, player_uuid, start_date, end_date, status, score, rank,
     attempts, time_spent_minutes, reward_claimed, reward_type, reward_amount,
     region, device_type, platform, notes, created_at, updated_at, moderator_review)
VALUES
    ('CHL-2023-01','3b7d9e1a-2c4f-5a6b-9d0e-8f1a2b3c4d5e','2023-01-11','2023-01-17','Failed',432.0,0,5,250.5,0,'None',0,'EU','Desktop','Windows','Struggled with puzzle','2023-01-18 10:15:00','2023-01-18 10:45:00','Reviewed');

INSERT INTO community_challenge_participation
    (challenge_id, player_uuid, start_date, end_date, status, score, rank,
     attempts, time_spent_minutes, reward_claimed, reward_type, reward_amount,
     region, device_type, platform, notes, created_at, updated_at, moderator_review)
VALUES
    ('CHL-2023-02','f1e2d3c4-b5a6-7890-1234-56789abcdef0','2023-02-05','2023-02-12','Completed',952.3,5,2,180.0,1,'Exclusive Card',1,'APAC','Mobile','Android','Excellent tactics','2023-02-13 07:45:00','2023-02-13 08:20:00','Approved');

-- Fantasy world location metadata
CREATE TABLE fantasy_world_location_meta
(
    location_id INTEGER PRIMARY KEY AUTOINCREMENT,
    location_name TEXT,
    region TEXT,
    biome TEXT,
    climate TEXT,
    discovered_date DATE,
    difficulty_level INTEGER,
    primary_resource TEXT,
    secondary_resource TEXT,
    npc_presence INTEGER,
    quest_count INTEGER,
    map_coordinates TEXT,
    lore_summary TEXT,
    thumbnail_path TEXT,
    is_accessible INTEGER,
    travel_time_from_capital REAL,
    strategic_value INTEGER,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO fantasy_world_location_meta
    (location_name, region, biome, climate, discovered_date, difficulty_level,
     primary_resource, secondary_resource, npc_presence, quest_count,
     map_coordinates, lore_summary, thumbnail_path, is_accessible,
     travel_time_from_capital, strategic_value, notes, created_at, updated_at)
VALUES
    ('Silverpeak Mountains','Northern Realm','Mountain','Cold','2020-06-15',8,'Iron Ore','Silver','1',12,'X:102,Y:87','Ancient dwarven stronghold','/thumbs/silverpeak.png',1,4.5,9,'Accessible via northern pass','2023-01-01 00:00:00','2023-01-10 12:00:00');

INSERT INTO fantasy_world_location_meta
    (location_name, region, biome, climate, discovered_date, difficulty_level,
     primary_resource, secondary_resource, npc_presence, quest_count,
     map_coordinates, lore_summary, thumbnail_path, is_accessible,
     travel_time_from_capital, strategic_value, notes, created_at, updated_at)
VALUES
    ('Emerald Forest','Eastern Realm','Forest','Temperate','2019-03-22',5,'Herbs','Wood','0',20,'X:210,Y:45','Home to the hidden elves','/thumbs/emerald_forest.png',1,2.0,7,'Rare herb spawning season','2023-01-05 08:30:00','2023-01-12 14:45:00');

INSERT INTO fantasy_world_location_meta
    (location_name, region, biome, climate, discovered_date, difficulty_level,
     primary_resource, secondary_resource, npc_presence, quest_count,
     map_coordinates, lore_summary, thumbnail_path, is_accessible,
     travel_time_from_capital, strategic_value, notes, created_at, updated_at)
VALUES
    ('Sunken Ruins','Southern Realm','Swamp','Humid','2021-11-09',6,'Ancient Relics','Rare Minerals','1',8,'X:78,Y:190','Remnants of a lost civilization','/thumbs/sunken_ruins.png',0,7.2,5,'Currently underwater, accessible with special gear','2023-01-08 11:15:00','2023-01-15 16:20:00');

-- Player support interaction logs
CREATE TABLE player_support_interaction_logs
(
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_uuid TEXT,
    interaction_date DATETIME,
    channel TEXT,
    issue_type TEXT,
    issue_category TEXT,
    description TEXT,
    priority INTEGER,
    assigned_agent TEXT,
    resolution_status TEXT,
    resolution_date DATETIME,
    feedback_score INTEGER,
    feedback_comments TEXT,
    escalated INTEGER,
    escalation_level TEXT,
    estimated_response_time_minutes INTEGER,
    actual_response_time_minutes INTEGER,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO player_support_interaction_logs
    (player_uuid, interaction_date, channel, issue_type, issue_category,
     description, priority, assigned_agent, resolution_status, resolution_date,
     feedback_score, feedback_comments, escalated, escalation_level,
     estimated_response_time_minutes, actual_response_time_minutes, notes,
     created_at, updated_at)
VALUES
    ('8a5f3c2d-9b1e-4a6f-8c2d-1f9e5b7a6c3d','2023-01-12 14:22:00','In‑game Chat','Bug','Progression',
     'Cannot complete quest step after patch',2,'agent_jane','Resolved','2023-01-12 15:05:00',5,'Issue fixed quickly',0,'None',30,43,'Resolved after restart', '2023-01-12 14:22:00','2023-01-12 15:05:00');

INSERT INTO player_support_interaction_logs
    (player_uuid, interaction_date, channel, issue_type, issue_category,
     description, priority, assigned_agent, resolution_status, resolution_date,
     feedback_score, feedback_comments, escalated, escalation_level,
     estimated_response_time_minutes, actual_response_time_minutes, notes,
     created_at, updated_at)
VALUES
    ('3b7d9e1a-2c4f-5a6b-9d0e-8f1a2b3c4d5e','2023-01-20 09:10:00','Email','Account','Login',
     'Unable to reset password due to missing email link',1,'agent_mark','Resolved','2023-01-20 09:45:00',4,'Link worked after retry',0,'None',60,35,'Password reset successful', '2023-01-20 09:10:00','2023-01-20 09:45:00');

INSERT INTO player_support_interaction_logs
    (player_uuid, interaction_date, channel, issue_type, issue_category,
     description, priority, assigned_agent, resolution_status, resolution_date,
     feedback_score, feedback_comments, escalated, escalation_level,
     estimated_response_time_minutes, actual_response_time_minutes, notes,
     created_at, updated_at)
VALUES
    ('f1e2d3c4-b5a6-7890-1234-56789abcdef0','2023-02-05 18:30:00','Support Ticket','Payment','Billing',
     'Charged twice for recent purchase',3,'agent_lisa','Escalated','2023-02-06 10:15:00',2,'Refund delayed',1,'Tier 2',120,720,'Escalated to finance team', '2023-02-05 18:30:00','2023-02-06 10:15:00');
```