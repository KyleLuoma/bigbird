-- Seasonal events related to gameplay periods
CREATE TABLE seasonal_events (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    description TEXT,
    start_date DATE,
    end_date DATE,
    region TEXT,
    tier TEXT,
    reward_type TEXT,
    reward_value REAL,
    eligibility_criteria TEXT,
    max_participants INTEGER,
    min_level INTEGER,
    event_type TEXT,
    is_active INTEGER DEFAULT 0,
    created_at DATE,
    updated_at DATE,
    sponsor_id INTEGER,
    logo_url TEXT,
    theme_color TEXT,
    notification_message TEXT
);

INSERT INTO seasonal_events (name, description, start_date, end_date, region, tier, reward_type, reward_value, eligibility_criteria, max_participants, min_level, event_type, is_active, created_at, updated_at, sponsor_id, logo_url, theme_color, notification_message) VALUES
('Winter Clash', 'A frosty tournament across the northern realms', '2024-12-01', '2024-12-31', 'NA', 'Gold', 'Badge', 1.0, 'All ranks', 5000, 1, 'Tournament', 1, '2024-06-01', '2024-06-02', 12, 'https://example.com/logos/winter.png', '#00AADD', 'Winter Clash has begun!');

INSERT INTO seasonal_events (name, description, start_date, end_date, region, tier, reward_type, reward_value, eligibility_criteria, max_participants, min_level, event_type, is_active, created_at, updated_at, sponsor_id, logo_url, theme_color, notification_message) VALUES
('Spring Sprint', 'Fast‑paced events to celebrate the bloom', '2024-04-10', '2024-04-20', 'EU', 'Silver', 'Points', 500, 'Rank 5 and above', 3000, 5, 'Challenge', 0, '2024-03-01', '2024-03-02', 7, 'https://example.com/logos/spring.png', '#77CC33', 'Prepare for the Spring Sprint!');

INSERT INTO seasonal_events (name, description, start_date, end_date, region, tier, reward_type, reward_value, eligibility_criteria, max_participants, min_level, event_type, is_active, created_at, updated_at, sponsor_id, logo_url, theme_color, notification_message) VALUES
('Autumn Arena', 'Arena battles under the falling leaves', '2024-09-15', '2024-09-30', 'APAC', 'Platinum', 'Title', 0, 'Top 100 players', 2000, 10, 'Arena', 1, '2024-07-20', '2024-07-21', 3, 'https://example.com/logos/autumn.png', '#FF8800', 'Autumn Arena is live!');

-- Player training programs for skill advancement
CREATE TABLE player_training_programs (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    program_name TEXT,
    description TEXT,
    difficulty_level TEXT,
    duration_weeks INTEGER,
    required_rank INTEGER,
    reward_points INTEGER,
    trainer_id INTEGER,
    start_date DATE,
    end_date DATE,
    max_enrollments INTEGER,
    min_enrollment_age INTEGER,
    is_certified INTEGER DEFAULT 0,
    certification_id TEXT,
    created_at DATE,
    updated_at DATE,
    program_category TEXT,
    prerequisite_program_id INTEGER,
    language TEXT,
    max_sessions_per_week INTEGER
);

INSERT INTO player_training_programs (program_name, description, difficulty_level, duration_weeks, required_rank, reward_points, trainer_id, start_date, end_date, max_enrollments, min_enrollment_age, is_certified, certification_id, created_at, updated_at, program_category, prerequisite_program_id, language, max_sessions_per_week) VALUES
('Fundamentals of Deckbuilding', 'Core concepts for new players', 'Easy', 4, 1, 200, 101, '2024-05-01', '2024-05-28', 100, 13, 1, 'CERT-DB001', '2024-04-15', '2024-04-16', 'Deckbuilding', NULL, 'English', 3);

INSERT INTO player_training_programs (program_name, description, difficulty_level, duration_weeks, required_rank, reward_points, trainer_id, start_date, end_date, max_enrollments, min_enrollment_age, is_certified, certification_id, created_at, updated_at, program_category, prerequisite_program_id, language, max_sessions_per_week) VALUES
('Advanced Mana Curve', 'Optimize your mana distribution', 'Medium', 6, 10, 500, 102, '2024-06-10', '2024-07-22', 50, 16, 1, 'CERT-AC002', '2024-05-20', '2024-05-21', 'Strategy', 1, 'English', 4);

INSERT INTO player_training_programs (program_name, description, difficulty_level, duration_weeks, required_rank, reward_points, trainer_id, start_date, end_date, max_enrollments, min_enrollment_age, is_certified, certification_id, created_at, updated_at, program_category, prerequisite_program_id, language, max_sessions_per_week) VALUES
('Competitive Playbook', 'Tactics for tournament success', 'Hard', 8, 25, 1000, 103, '2024-08-01', '2024-09-26', 30, 18, 1, 'CERT-CP003', '2024-07-01', '2024-07-02', 'Competition', 2, 'English', 5);

-- Game server cluster configuration metadata
CREATE TABLE game_server_clusters (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    cluster_name TEXT,
    region TEXT,
    datacenter_location TEXT,
    primary_ip TEXT,
    secondary_ip TEXT,
    iso_code TEXT,
    server_count INTEGER,
    average_latency_ms REAL,
    max_capacity_players INTEGER,
    current_load_percent REAL,
    maintenance_window_start TIME,
    maintenance_window_end TIME,
    is_active INTEGER DEFAULT 0,
    software_version TEXT,
    os_type TEXT,
    rack_number TEXT,
    power_supply_type TEXT,
    cooling_system TEXT,
    network_bandwidth_gbps REAL,
    last_update DATE
);

INSERT INTO game_server_clusters (cluster_name, region, datacenter_location, primary_ip, secondary_ip, iso_code, server_count, average_latency_ms, max_capacity_players, current_load_percent, maintenance_window_start, maintenance_window_end, is_active, software_version, os_type, rack_number, power_supply_type, cooling_system, network_bandwidth_gbps, last_update) VALUES
('AlphaCluster', 'NA', 'Virginia', '192.0.2.1', '192.0.2.2', 'US', 120, 45.3, 250000, 68.5, '02:00', '04:00', 1, 'v3.2.1', 'Linux', 'R12', 'Redundant', 'Liquid', 10.0, '2024-06-10');

INSERT INTO game_server_clusters (cluster_name, region, datacenter_location, primary_ip, secondary_ip, iso_code, server_count, average_latency_ms, max_capacity_players, current_load_percent, maintenance_window_start, maintenance_window_end, is_active, software_version, os_type, rack_number, power_supply_type, cooling_system, network_bandwidth_gbps, last_update) VALUES
('BetaCluster', 'EU', 'Frankfurt', '198.51.100.10', '198.51.100.11', 'DE', 95, 52.7, 210000, 73.2, '01:00', '03:00', 1, 'v3.2.1', 'Linux', 'R07', 'Dual', 'Air', 8.5, '2024-06-12');

INSERT INTO game_server_clusters (cluster_name, region, datacenter_location, primary_ip, secondary_ip, iso_code, server_count, average_latency_ms, max_capacity_players, current_load_percent, maintenance_window_start, maintenance_window_end, is_active, software_version, os_type, rack_number, power_supply_type, cooling_system, network_bandwidth_gbps, last_update) VALUES
('GammaCluster', 'APAC', 'Singapore', '203.0.113.20', '203.0.113.21', 'SG', 80, 60.1, 190000, 65.0, '03:00', '05:00', 0, 'v3.2.0', 'Linux', 'R03', 'Redundant', 'Liquid', 9.0, '2024-05-30');

-- Community badges awarded for achievements
CREATE TABLE community_badges (
    badge_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    badge_name TEXT,
    description TEXT,
    tier TEXT,
    awarded_by TEXT,
    award_criteria TEXT,
    icon_path TEXT,
    rarity TEXT,
    points INTEGER,
    created_at DATE,
    updated_at DATE,
    is_visible INTEGER DEFAULT 1,
    max_awards_per_user INTEGER,
    expiration_days INTEGER,
    category TEXT,
    unlock_level INTEGER,
    associated_event_code TEXT,
    badge_group TEXT,
    requires_verification INTEGER DEFAULT 0,
    display_order INTEGER,
    background_color TEXT
);

INSERT INTO community_badges (badge_name, description, tier, awarded_by, award_criteria, icon_path, rarity, points, created_at, updated_at, is_visible, max_awards_per_user, expiration_days, category, unlock_level, associated_event_code, badge_group, requires_verification, display_order, background_color) VALUES
('First Win', 'Awarded for winning a first match', 'Bronze', 'System', 'Win any match', '/icons/first_win.png', 'Common', 10, '2024-01-01', '2024-01-02', 1, 1, NULL, 'Gameplay', 1, NULL, 'Basic', 0, 1, '#CCCCCC');

INSERT INTO community_badges (badge_name, description, tier, awarded_by, award_criteria, icon_path, rarity, points, created_at, updated_at, is_visible, max_awards_per_user, expiration_days, category, unlock_level, associated_event_code, badge_group, requires_verification, display_order, background_color) VALUES
('Season Champion', 'Top player of the season', 'Gold', 'Tournament Committee', 'Finish season rank 1', '/icons/season_champ.png', 'Rare', 500, '2024-01-01', '2024-01-02', 1, 1, NULL, 'Seasonal', 100, 'S2024', 'Prestige', 1, 5, '#FFD700');

INSERT INTO community_badges (badge_name, description, tier, awarded_by, award_criteria, icon_path, rarity, points, created_at, updated_at, is_visible, max_awards_per_user, expiration_days, category, unlock_level, associated_event_code, badge_group, requires_verification, display_order, background_color) VALUES
('Community Helper', 'Helped 50 users in forums', 'Silver', 'Moderation Team', 'Assist 50 users', '/icons/helper.png', 'Uncommon', 150, '2024-01-01', '2024-01-02', 1, UNLIMITED, NULL, 'Community', 10, NULL, 'Support', 0, 3, '#00AAFF');

-- API endpoint definitions for internal services
CREATE TABLE api_endpoint_definitions (
    endpoint_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    path TEXT,
    method TEXT,
    description TEXT,
    version TEXT,
    is_deprecated INTEGER DEFAULT 0,
    deprecation_date DATE,
    auth_required INTEGER DEFAULT 1,
    rate_limit_per_minute INTEGER,
    response_format TEXT,
    request_schema_url TEXT,
    response_schema_url TEXT,
    created_by TEXT,
    created_at DATE,
    updated_at DATE,
    owner_team TEXT,
    documentation_url TEXT,
    is_public INTEGER DEFAULT 0,
    estimated_latency_ms REAL,
    error_codes_json TEXT,
    example_request TEXT,
    example_response TEXT
);

INSERT INTO api_endpoint_definitions (path, method, description, version, is_deprecated, deprecation_date, auth_required, rate_limit_per_minute, response_format, request_schema_url, response_schema_url, created_by, created_at, updated_at, owner_team, documentation_url, is_public, estimated_latency_ms, error_codes_json, example_request, example_response) VALUES
('/players/{id}', 'GET', 'Retrieve player profile by ID', 'v1', 0, NULL, 1, 60, 'JSON', 'https://api.example.com/schemas/player_get_req.json', 'https://api.example.com/schemas/player_get_res.json', 'api_admin', '2024-01-15', '2024-01-15', 'PlayerService', 'https://docs.example.com/players#get', 1, 120.5, '[400,401,404]', '{"id":123}', '{"id":123,"name":"Alice","rank":42}');

INSERT INTO api_endpoint_definitions (path, method, description, version, is_deprecated, deprecation_date, auth_required, rate_limit_per_minute, response_format, request_schema_url, response_schema_url, created_by, created_at, updated_at, owner_team, documentation_url, is_public, estimated_latency_ms, error_codes_json, example_request, example_response) VALUES
('/tournaments', 'POST', 'Create a new tournament', 'v2', 0, NULL, 1, 30, 'JSON', 'https://api.example.com/schemas/tournament_post_req.json', 'https://api.example.com/schemas/tournament_post_res.json', 'api_admin', '2024-02-01', '2024-02-01', 'TournamentService', 'https://docs.example.com/tournaments#create', 0, 250.0, '[400,401,409]', '{"name":"Spring Sprint","start_date":"2024-04-10"}', '{"tournament_id":987,"status":"created"}');

INSERT INTO api_endpoint_definitions (path, method, description, version, is_deprecated, deprecation_date, auth_required, rate_limit_per_minute, response_format, request_schema_url, response_schema_url, created_by, created_at, updated_at, owner_team, documentation_url, is_public, estimated_latency_ms, error_codes_json, example_request, example_response) VALUES
('/analytics/events', 'GET', 'Fetch analytic events for a period', 'v1', 0, NULL, 1, 100, 'JSON', 'https://api.example.com/schemas/analytics_get_req.json', 'https://api.example.com/schemas/analytics_get_res.json', 'analytics_team', '2024-03-05', '2024-03-05', 'AnalyticsService', 'https://docs.example.com/analytics#events', 0, 180.0, '[400,401,500]', '{"start":"2024-01-01","end":"2024-01-31"}', '{"events":[{"type":"login","count":1234}]}');

-- Hardware sensor readings from data center equipment
CREATE TABLE hardware_sensor_readings (
    reading_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    sensor_id TEXT,
    sensor_type TEXT,
    location TEXT,
    reading_value REAL,
    unit TEXT,
    timestamp DATETIME,
    status TEXT,
    battery_level REAL,
    firmware_version TEXT,
    calibrated_at DATE,
    calibration_offset REAL,
    is_anomalous INTEGER DEFAULT 0,
    anomaly_score REAL,
    recorded_by TEXT,
    batch_id TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    pressure_pa REAL,
    signal_strength_dbm REAL,
    comment TEXT
);

INSERT INTO hardware_sensor_readings (sensor_id, sensor_type, location, reading_value, unit, timestamp, status, battery_level, firmware_version, calibrated_at, calibration_offset, is_anomalous, anomaly_score, recorded_by, batch_id, temperature_c, humidity_percent, pressure_pa, signal_strength_dbm, comment) VALUES
('SEN-001', 'Temperature', 'Rack12', 28.5, 'C', '2024-06-15 08:00:00', 'OK', 95.0, '1.4.2', '2024-01-10', 0.0, 0, 0.0, 'monitor01', 'BATCH-09', 28.5, 45.0, 101325, -65.0, 'Normal operation');

INSERT INTO hardware_sensor_readings (sensor_id, sensor_type, location, reading_value, unit, timestamp, status, battery_level, firmware_version, calibrated_at, calibration_offset, is_anomalous, anomaly_score, recorded_by, batch_id, temperature_c, humidity_percent, pressure_pa, signal_strength_dbm, comment) VALUES
('SEN-017', 'Power', 'PDU-3', 480.0, 'W', '2024-06-15 08:05:00', 'OK', NULL, '2.0.0', '2023-12-01', 0.0, 0, 0.0, 'monitor02', 'BATCH-09', NULL, NULL, NULL, -70.0, 'Power within limits');

INSERT INTO hardware_sensor_readings (sensor_id, sensor_type, location, reading_value, unit, timestamp, status, battery_level, firmware_version, calibrated_at, calibration_offset, is_anomalous, anomaly_score, recorded_by, batch_id, temperature_c, humidity_percent, pressure_pa, signal_strength_dbm, comment) VALUES
('SEN-023', 'Humidity', 'Rack7', 78.2, '%', '2024-06-15 08:10:00', 'Warning', 80.0, '1.3.5', '2024-02-20', -0.5, 1, 7.8, 'monitor03', 'BATCH-09', 30.2, 78.2, 101200, -68.0, 'High humidity detected');

-- Digital content tagging system
CREATE TABLE digital_content_tags (
    tag_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    tag_name TEXT,
    description TEXT,
    created_at DATE,
    updated_at DATE,
    created_by_user_id INTEGER,
    is_active INTEGER DEFAULT 1,
    relevance_score REAL,
    tag_category TEXT,
    parent_tag_id INTEGER,
    color_code TEXT,
    icon_path TEXT,
    usage_count INTEGER,
    last_used_at DATE,
    associated_content_type TEXT,
    is_public INTEGER DEFAULT 1,
    allow_user_creation INTEGER DEFAULT 0,
    moderation_status TEXT,
    moderation_notes TEXT,
    display_order INTEGER
);

INSERT INTO digital_content_tags (tag_name, description, created_at, updated_at, created_by_user_id, is_active, relevance_score, tag_category, parent_tag_id, color_code, icon_path, usage_count, last_used_at, associated_content_type, is_public, allow_user_creation, moderation_status, moderation_notes, display_order) VALUES
('StrategyGuide', 'Guides covering gameplay strategies', '2024-01-05', '2024-01-06', 10, 1, 0.95, 'Guide', NULL, '#3366FF', '/icons/strategy.png', 150, '2024-06-10', 'Article', 1, 0, 'Approved', NULL, 1);

INSERT INTO digital_content_tags (tag_name, description, created_at, updated_at, created_by_user_id, is_active, relevance_score, tag_category, parent_tag_id, color_code, icon_path, usage_count, last_used_at, associated_content_type, is_public, allow_user_creation, moderation_status, moderation_notes, display_order) VALUES
('TournamentRecap', 'Recap videos of tournament events', '2024-02-01', '2024-02-02', 12, 1, 0.88, 'Video', NULL, '#FF6600', '/icons/recap.png', 80, '2024-06-08', 'Video', 1, 0, 'Approved', NULL, 2);

INSERT INTO digital_content_tags (tag_name, description, created_at, updated_at, created_by_user_id, is_active, relevance_score, tag_category, parent_tag_id, color_code, icon_path, usage_count, last_used_at, associated_content_type, is_public, allow_user_creation, moderation_status, moderation_notes, display_order) VALUES
('CommunitySpotlight', 'Spotlights of community members', '2024-03-10', '2024-03-11', 15, 1, 0.92, 'Feature', NULL, '#00CC66', '/icons/spotlight.png', 45, '2024-06-09', 'Article', 1, 0, 'Pending', 'Awaiting review', 3);

-- Regional promotions for marketing campaigns
CREATE TABLE regional_promotions (
    promo_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    promo_name TEXT,
    region_code TEXT,
    start_date DATE,
    end_date DATE,
    discount_percent REAL,
    max_uses_per_user INTEGER,
    total_budget REAL,
    allocated_budget REAL,
    sponsor_id INTEGER,
    promo_type TEXT,
    eligibility_criteria TEXT,
    is_active INTEGER DEFAULT 0,
    created_at DATE,
    updated_at DATE,
    promo_banner_url TEXT,
    terms_url TEXT,
    min_purchase_amount REAL,
    max_discount_amount REAL,
    notification_channel TEXT,
    redemption_method TEXT
);

INSERT INTO regional_promotions (promo_name, region_code, start_date, end_date, discount_percent, max_uses_per_user, total_budget, allocated_budget, sponsor_id, promo_type, eligibility_criteria, is_active, created_at, updated_at, promo_banner_url, terms_url, min_purchase_amount, max_discount_amount, notification_channel, redemption_method) VALUES
('Spring Savings', 'EU', '2024-04-01', '2024-04-30', 15.0, 2, 50000.0, 25000.0, 7, 'Percentage', 'All users', 1, '2024-03-20', '2024-03-21', 'https://example.com/banners/spring.png', 'https://example.com/terms/spring', 20.0, 50.0, 'Email', 'Code');

INSERT INTO regional_promotions (promo_name, region_code, start_date, end_date, discount_percent, max_uses_per_user, total_budget, allocated_budget, sponsor_id, promo_type, eligibility_criteria, is_active, created_at, updated_at, promo_banner_url, terms_url, min_purchase_amount, max_discount_amount, notification_channel, redemption_method) VALUES
('Summer Blast', 'NA', '2024-07-01', '2024-07-15', 20.0, 1, 80000.0, 40000.0, 9, 'Percentage', 'New users', 0, '2024-06-10', '2024-06-11', 'https://example.com/banners/summer.png', 'https://example.com/terms/summer', 30.0, 60.0, 'Push', 'Automatic');

INSERT INTO regional_promotions (promo_name, region_code, start_date, end_date, discount_percent, max_uses_per_user, total_budget, allocated_budget, sponsor_id, promo_type, eligibility_criteria, is_active, created_at, updated_at, promo_banner_url, terms_url, min_purchase_amount, max_discount_amount, notification_channel, redemption_method) VALUES
('Autumn Offer', 'APAC', '2024-10-01', '2024-10-20', 10.0, 3, 30000.0, 15000.0, 5, 'Flat', 'All users', 1, '2024-09-15', '2024-09-16', 'https://example.com/banners/autumn.png', 'https://example.com/terms/autumn', 15.0, 30.0, 'SMS', 'Code');

-- Fantasy world quests for in‑game storyline
CREATE TABLE fantasy_world_quests (
    quest_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    quest_name TEXT,
    storyline TEXT,
    difficulty_rating TEXT,
    experience_reward INTEGER,
    gold_reward INTEGER,
    required_level INTEGER,
    quest_giver_npc_id INTEGER,
    location_id INTEGER,
    is_repeatable INTEGER DEFAULT 0,
    cooldown_hours INTEGER,
    quest_type TEXT,
    min_party_size INTEGER,
    max_party_size INTEGER,
    prerequisite_quest_id INTEGER,
    unlock_date DATE,
    expiration_date DATE,
    flavor_text TEXT,
    is_active INTEGER DEFAULT 1,
    created_at DATE,
    updated_at DATE
);

INSERT INTO fantasy_world_quests (quest_name, storyline, difficulty_rating, experience_reward, gold_reward, required_level, quest_giver_npc_id, location_id, is_repeatable, cooldown_hours, quest_type, min_party_size, max_party_size, prerequisite_quest_id, unlock_date, expiration_date, flavor_text, is_active, created_at, updated_at) VALUES
('The Frostveil Heist', 'Steal the crystal from the ice fortress', 'Hard', 2500, 1500, 12, 301, 78, 0, NULL, 'Stealth', 1, 4, NULL, '2024-11-01', '2025-01-31', 'Cold winds whisper of untold riches.', 1, '2024-06-01', '2024-06-02');

INSERT INTO fantasy_world_quests (quest_name, storyline, difficulty_rating, experience_reward, gold_reward, required_level, quest_giver_npc_id, location_id, is_repeatable, cooldown_hours, quest_type, min_party_size, max_party_size, prerequisite_quest_id, unlock_date, expiration_date, flavor_text, is_active, created_at, updated_at) VALUES
('Echoes of the Fallen', 'Aid the spirits trapped in the ancient ruins', 'Medium', 1800, 900, 8, 214, 45, 1, 24, 'Rescue', 2, 6, NULL, '2024-07-15', '2024-12-31', 'Their sighs echo through stone corridors.', 1, '2024-06-05', '2024-06-06');

INSERT INTO fantasy_world_quests (quest_name, storyline, difficulty_rating, experience_reward, gold_reward, required_level, quest_giver_npc_id, location_id, is_repeatable, cooldown_hours, quest_type, min_party_size, max_party_size, prerequisite_quest_id, unlock_date, expiration_date, flavor_text, is_active, created_at, updated_at) VALUES
('Dragonfire Duel', 'Challenge the dragon lord for honor', 'VeryHard', 5000, 3000, 20, 502, 99, 0, NULL, 'Combat', 1, 1, 102, '2024-09-01', '2025-03-31', 'Flames scorch the sky as the battle begins.', 1, '2024-06-10', '2024-06-11');

-- Sponsor campaigns for advertising initiatives
CREATE TABLE sponsor_campaigns (
    campaign_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    campaign_name TEXT,
    start_date DATE,
    end_date DATE,
    budget_usd REAL,
    target_audience TEXT,
    channels TEXT,
    goal_metric TEXT,
    achieved_metric REAL,
    is_successful INTEGER DEFAULT 0,
    created_by TEXT,
    created_at DATE,
    updated_at DATE,
    creative_asset_url TEXT,
    landing_page_url TEXT,
    impression_target INTEGER,
    click_target INTEGER,
    conversion_target INTEGER,
    performance_notes TEXT,
    compliance_status TEXT
);

INSERT INTO sponsor_campaigns (sponsor_id, campaign_name, start_date, end_date, budget_usd, target_audience, channels, goal_metric, achieved_metric, is_successful, created_by, created_at, updated_at, creative_asset_url, landing_page_url, impression_target, click_target, conversion_target, performance_notes, compliance_status) VALUES
(7, 'Winter Gear Blast', '2024-12-01', '2024-12-31', 120000.0, 'Players 18-35', 'Social,Video,InGame', 'Impressions', 115000.0, 1, 'marketing_lead', '2024-06-01', '2024-06-02', 'https://assets.example.com/winter_gear.png', 'https://shop.example.com/winter', 1000000, 50000, 2000, 'Exceeded impression goal', 'Compliant');

INSERT INTO sponsor_campaigns (sponsor_id, campaign_name, start_date, end_date, budget_usd, target_audience, channels, goal_metric, achieved_metric, is_successful, created_by, created_at, updated_at, creative_asset_url, landing_page_url, impression_target, click_target, conversion_target, performance_notes, compliance_status) VALUES
(9, 'Spring Tournament Series', '2024-04-10', '2024-05-20', 85000.0, 'Competitive players', 'Streaming,Email,Banner', 'Registrations', 4200.0, 0, 'event_manager', '2024-04-01', '2024-04-02', 'https://assets.example.com/spring_series.jpg', 'https://events.example.com/spring', 3000, 1500, 800, 'Registrations fell short of target', 'Pending Review');

INSERT INTO sponsor_campaigns (sponsor_id, campaign_name, start_date, end_date, budget_usd, target_audience, channels, goal_metric, achieved_metric, is_successful, created_by, created_at, updated_at, creative_asset_url, landing_page_url, impression_target, click_target, conversion_target, performance_notes, compliance_status) VALUES
(5, 'Summer Loyalty Boost', '2024-07-01', '2024-07-31', 60000.0, 'Existing customers', 'Email,InApp,Push', 'Retention Rate', 0.92, 1, 'loyalty_manager', '2024-06-15', '2024-06-16', 'https://assets.example.com/summer_loyalty.png', 'https://loyalty.example.com/summer', 500000, 40000, 15000, 'Retention improved by 5%', 'Compliant');