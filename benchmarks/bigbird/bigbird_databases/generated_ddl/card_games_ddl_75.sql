-- Tournament bracket structure for competitive events
CREATE TABLE tournament_brackets (
    bracket_id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER NOT NULL,
    round_number INTEGER NOT NULL,
    match_number INTEGER NOT NULL,
    player1_id INTEGER,
    player2_id INTEGER,
    scheduled_time TEXT,
    result TEXT,
    winner_id INTEGER,
    loser_id INTEGER,
    best_of INTEGER,
    map_name TEXT,
    video_url TEXT,
    referee_id INTEGER,
    audience_estimate INTEGER,
    livestream_channel TEXT,
    seed1 INTEGER,
    seed2 INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO tournament_brackets (tournament_id, round_number, match_number, player1_id, player2_id, scheduled_time, result, winner_id, loser_id, best_of, map_name, video_url, referee_id, audience_estimate, livestream_channel, seed1, seed2, notes, created_at, updated_at) VALUES (101, 1, 1, 2001, 2002, '2024-06-15 14:00', 'player1 win', 2001, 2002, 3, 'Arena', 'http://example.com/video1', 301, 5000, 'ChannelA', 1, 8, 'Quarterfinal match', '2024-05-01', '2024-05-01');
INSERT INTO tournament_brackets (tournament_id, round_number, match_number, player1_id, player2_id, scheduled_time, result, winner_id, loser_id, best_of, map_name, video_url, referee_id, audience_estimate, livestream_channel, seed1, seed2, notes, created_at, updated_at) VALUES (101, 2, 3, 2003, 2004, '2024-06-16 16:00', 'player2 win', 2004, 2003, 5, 'Mountain', 'http://example.com/video2', 302, 7500, 'ChannelB', 4, 5, 'Semifinal match', '2024-05-02', '2024-05-02');
INSERT INTO tournament_brackets (tournament_id, round_number, match_number, player1_id, player2_id, scheduled_time, result, winner_id, loser_id, best_of, map_name, video_url, referee_id, audience_estimate, livestream_channel, seed1, seed2, notes, created_at, updated_at) VALUES (101, 3, 5, 2001, 2004, '2024-06-18 18:00', 'pending', NULL, NULL, 5, 'Island', 'http://example.com/video3', 303, 12000, 'ChannelC', 1, 4, 'Final match', '2024-05-03', '2024-05-03');

-- Player training modules and progress tracking
CREATE TABLE player_training_modules (
    module_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER NOT NULL,
    module_name TEXT NOT NULL,
    description TEXT,
    difficulty_level TEXT,
    duration_minutes INTEGER,
    start_date TEXT,
    end_date TEXT,
    completion_status TEXT,
    score REAL,
    badge_awarded TEXT,
    trainer_id INTEGER,
    resource_url TEXT,
    prerequisites TEXT,
    version TEXT,
    estimated_effort INTEGER,
    language TEXT,
    category TEXT,
    feedback_rating INTEGER,
    feedback_comments TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO player_training_modules (player_id, module_name, description, difficulty_level, duration_minutes, start_date, end_date, completion_status, score, badge_awarded, trainer_id, resource_url, prerequisites, version, estimated_effort, language, category, feedback_rating, feedback_comments, created_at, updated_at) VALUES (2001, 'Mana Curve Basics', 'Learn optimal mana distribution', 'Easy', 45, '2024-04-01', '2024-04-07', 'Completed', 92.5, 'Mana Master', 401, 'http://example.com/resource1', 'None', '1.0', 30, 'English', 'Fundamentals', 5, 'Very helpful', '2024-04-01', '2024-04-08');
INSERT INTO player_training_modules (player_id, module_name, description, difficulty_level, duration_minutes, start_date, end_date, completion_status, score, badge_awarded, trainer_id, resource_url, prerequisites, version, estimated_effort, language, category, feedback_rating, feedback_comments, created_at, updated_at) VALUES (2002, 'Advanced Deckbuilding', 'Techniques for competitive decks', 'Hard', 120, '2024-04-10', '2024-04-20', 'InProgress', NULL, NULL, 402, 'http://example.com/resource2', 'Mana Curve Basics', '2.1', 80, 'English', 'Advanced', NULL, NULL, '2024-04-10', '2024-04-10');
INSERT INTO player_training_modules (player_id, module_name, description, difficulty_level, duration_minutes, start_date, end_date, completion_status, score, badge_awarded, trainer_id, resource_url, prerequisites, version, estimated_effort, language, category, feedback_rating, feedback_comments, created_at, updated_at) VALUES (2003, 'Sideboard Strategies', 'Optimizing sideboards for meta', 'Medium', 60, '2024-05-01', '2024-05-05', 'Pending', NULL, NULL, 403, 'http://example.com/resource3', 'Advanced Deckbuilding', '2.0', 45, 'English', 'Strategy', NULL, NULL, '2024-05-01', '2024-05-01');

-- Detailed marketplace fee structures
CREATE TABLE marketplace_fees (
    fee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    transaction_id INTEGER NOT NULL,
    fee_type TEXT NOT NULL,
    amount REAL NOT NULL,
    currency TEXT NOT NULL,
    percentage REAL,
    applicable_region TEXT,
    start_date TEXT,
    end_date TEXT,
    description TEXT,
    calculated_by TEXT,
    is_fixed INTEGER,
    is_percentage INTEGER,
    cap_amount REAL,
    cap_currency TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    external_reference TEXT,
    tax_included INTEGER
);
INSERT INTO marketplace_fees (transaction_id, fee_type, amount, currency, percentage, applicable_region, start_date, end_date, description, calculated_by, is_fixed, is_percentage, cap_amount, cap_currency, created_at, updated_at, notes, external_reference, tax_included) VALUES (50001, 'Listing', 0.30, 'USD', NULL, 'Global', '2024-01-01', NULL, 'Flat listing fee', 'system', 1, 0, NULL, NULL, '2024-06-01', '2024-06-01', 'Applies to all listings', 'REF123', 0);
INSERT INTO marketplace_fees (transaction_id, fee_type, amount, currency, percentage, applicable_region, start_date, end_date, description, calculated_by, is_fixed, is_percentage, cap_amount, cap_currency, created_at, updated_at, notes, external_reference, tax_included) VALUES (50002, 'Commission', 2.50, 'USD', 5.0, 'US', '2024-01-01', NULL, '5% commission on sale', 'system', 0, 1, NULL, NULL, '2024-06-02', '2024-06-02', 'Standard commission', 'REF124', 1);
INSERT INTO marketplace_fees (transaction_id, fee_type, amount, currency, percentage, applicable_region, start_date, end_date, description, calculated_by, is_fixed, is_percentage, cap_amount, cap_currency, created_at, updated_at, notes, external_reference, tax_included) VALUES (50003, 'CurrencyConversion', 0.75, 'USD', NULL, 'EU', '2024-01-01', NULL, 'Conversion fee for EUR to USD', 'system', 1, 0, 1.00, 'USD', '2024-06-03', '2024-06-03', 'Applied when buyer pays in EUR', 'REF125', 0);

-- Environmental sensor readings for venues
CREATE TABLE venue_environmental_readings (
    reading_id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER NOT NULL,
    sensor_type TEXT NOT NULL,
    value REAL NOT NULL,
    unit TEXT NOT NULL,
    recorded_at TEXT NOT NULL,
    latitude REAL,
    longitude REAL,
    floor INTEGER,
    zone TEXT,
    sensor_status TEXT,
    calibration_date TEXT,
    battery_level INTEGER,
    firmware_version TEXT,
    alert_threshold REAL,
    is_alert INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    operator_id INTEGER
);
INSERT INTO venue_environmental_readings (venue_id, sensor_type, value, unit, recorded_at, latitude, longitude, floor, zone, sensor_status, calibration_date, battery_level, firmware_version, alert_threshold, is_alert, notes, created_at, updated_at, operator_id) VALUES (10, 'Temperature', 22.5, 'C', '2024-06-10 09:00', 40.7128, -74.0060, 1, 'MainHall', 'OK', '2024-01-15', 95, 'v1.2', 30.0, 0, 'Normal operation', '2024-06-10', '2024-06-10', 501);
INSERT INTO venue_environmental_readings (venue_id, sensor_type, value, unit, recorded_at, latitude, longitude, floor, zone, sensor_status, calibration_date, battery_level, firmware_version, alert_threshold, is_alert, notes, created_at, updated_at, operator_id) VALUES (10, 'CO2', 820.0, 'ppm', '2024-06-10 09:05', 40.7128, -74.0060, 1, 'MainHall', 'OK', '2024-01-15', 92, 'v1.2', 1000.0, 0, 'Air quality good', '2024-06-10', '2024-06-10', 501);
INSERT INTO venue_environmental_readings (venue_id, sensor_type, value, unit, recorded_at, latitude, longitude, floor, zone, sensor_status, calibration_date, battery_level, firmware_version, alert_threshold, is_alert, notes, created_at, updated_at, operator_id) VALUES (10, 'Noise', 68.0, 'dB', '2024-06-10 09:10', 40.7128, -74.0060, 1, 'MainHall', 'OK', '2024-01-15', 90, 'v1.2', 80.0, 0, 'Within acceptable range', '2024-06-10', '2024-06-10', 501);

-- Log of digital artifact accesses
CREATE TABLE digital_artifact_access_log (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    artifact_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    access_type TEXT NOT NULL,
    access_time TEXT NOT NULL,
    ip_address TEXT,
    device_type TEXT,
    app_version TEXT,
    location_city TEXT,
    location_country TEXT,
    duration_seconds INTEGER,
    bytes_transferred INTEGER,
    success_flag INTEGER,
    error_code TEXT,
    remarks TEXT,
    created_at TEXT,
    updated_at TEXT,
    session_id TEXT,
    source_platform TEXT,
    authentication_method TEXT
);
INSERT INTO digital_artifact_access_log (artifact_id, user_id, access_type, access_time, ip_address, device_type, app_version, location_city, location_country, duration_seconds, bytes_transferred, success_flag, error_code, remarks, created_at, updated_at, session_id, source_platform, authentication_method) VALUES (3001, 2001, 'view', '2024-06-12 10:15', '192.168.1.10', 'desktop', '1.4.2', 'NewYork', 'US', 30, 250000, 1, NULL, 'Viewed artwork', '2024-06-12', '2024-06-12', 'sessA1', 'web', 'password');
INSERT INTO digital_artifact_access_log (artifact_id, user_id, access_type, access_time, ip_address, device_type, app_version, location_city, location_country, duration_seconds, bytes_transferred, success_flag, error_code, remarks, created_at, updated_at, session_id, source_platform, authentication_method) VALUES (3002, 2002, 'download', '2024-06-12 11:00', '192.168.1.11', 'mobile', '2.0.0', 'LosAngeles', 'US', 45, 7500000, 1, NULL, 'Downloaded highres file', '2024-06-12', '2024-06-12', 'sessB2', 'mobileApp', 'oauth');
INSERT INTO digital_artifact_access_log (artifact_id, user_id, access_type, access_time, ip_address, device_type, app_version, location_city, location_country, duration_seconds, bytes_transferred, success_flag, error_code, remarks, created_at, updated_at, session_id, source_platform, authentication_method) VALUES (3003, 2003, 'edit', '2024-06-12 12:30', '192.168.1.12', 'desktop', '1.5.0', 'Chicago', 'US', 120, 0, 0, 'E403', 'Permission denied', '2024-06-12', '2024-06-12', 'sessC3', 'web', 'sso');

-- Streaming ad campaign details
CREATE TABLE streaming_ad_campaigns_detail (
    campaign_id INTEGER PRIMARY KEY AUTOINCREMENT,
    advertiser_id INTEGER NOT NULL,
    platform TEXT NOT NULL,
    ad_type TEXT,
    start_date TEXT,
    end_date TEXT,
    budget_usd REAL,
    spent_usd REAL,
    impressions INTEGER,
    clicks INTEGER,
    ctr REAL,
    cpm REAL,
    cpc REAL,
    target_audience TEXT,
    geo_target TEXT,
    device_target TEXT,
    creative_id INTEGER,
    frequency_cap INTEGER,
    daily_cap INTEGER,
    status TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO streaming_ad_campaigns_detail (advertiser_id, platform, ad_type, start_date, end_date, budget_usd, spent_usd, impressions, clicks, ctr, cpm, cpc, target_audience, geo_target, device_target, creative_id, frequency_cap, daily_cap, status, created_at, updated_at) VALUES (701, 'Twitch', 'PreRoll', '2024-06-01', '2024-06-30', 10000, 4500, 1200000, 8000, 0.0067, 7.5, 0.56, 'Gamers 18-35', 'NA', 'Desktop', 901, 3, 500, 'Active', '2024-05-15', '2024-05-15');
INSERT INTO streaming_ad_campaigns_detail (advertiser_id, platform, ad_type, start_date, end_date, budget_usd, spent_usd, impressions, clicks, ctr, cpm, cpc, target_audience, geo_target, device_target, creative_id, frequency_cap, daily_cap, status, created_at, updated_at) VALUES (702, 'YouTube', 'MidRoll', '2024-07-01', '2024-07-31', 15000, 0, 2000000, 0, 0, 0, 0, 'Collectors', 'EU', 'All', 902, 2, 300, 'Planned', '2024-05-20', '2024-05-20');
INSERT INTO streaming_ad_campaigns_detail (advertiser_id, platform, ad_type, start_date, end_date, budget_usd, spent_usd, impressions, clicks, ctr, cpm, cpc, target_audience, geo_target, device_target, creative_id, frequency_cap, daily_cap, status, created_at, updated_at) VALUES (703, 'Facebook', 'Banner', '2024-05-15', '2024-06-15', 8000, 8200, 900000, 4500, 0.005, 9.1, 1.82, 'Casual Players', 'Global', 'Mobile', 903, 4, 400, 'Completed', '2024-04-01', '2024-06-16');

-- Detailed card market analysis entries
CREATE TABLE card_market_analysis_detail (
    analysis_id INTEGER PRIMARY KEY AUTOINCREMENT,
    card_uuid TEXT NOT NULL,
    market_date TEXT NOT NULL,
    average_price_usd REAL,
    median_price_usd REAL,
    volume_traded INTEGER,
    listing_count INTEGER,
    price_stddev REAL,
    price_percentile_90 REAL,
    price_percentile_10 REAL,
    currency TEXT,
    source TEXT,
    analyst_id INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    region TEXT,
    price_change_24h REAL,
    price_change_7d REAL,
    price_change_30d REAL,
    volatility_index REAL
);
INSERT INTO card_market_analysis_detail (card_uuid, market_date, average_price_usd, median_price_usd, volume_traded, listing_count, price_stddev, price_percentile_90, price_percentile_10, currency, source, analyst_id, notes, created_at, updated_at, region, price_change_24h, price_change_7d, price_change_30d, volatility_index) VALUES ('uuid-abc-123', '2024-06-10', 3.45, 3.20, 1500, 300, 0.45, 4.10, 2.80, 'USD', 'scryfall', 1001, 'Stable market', '2024-06-11', '2024-06-11', 'NA', 0.05, 0.12, -0.03, 0.22);
INSERT INTO card_market_analysis_detail (card_uuid, market_date, average_price_usd, median_price_usd, volume_traded, listing_count, price_stddev, price_percentile_90, price_percentile_10, currency, source, analyst_id, notes, created_at, updated_at, region, price_change_24h, price_change_7d, price_change_30d, volatility_index) VALUES ('uuid-def-456', '2024-06-10', 12.80, 13.00, 500, 120, 1.20, 15.00, 9.00, 'USD', 'mtgjson', 1002, 'Recent surge', '2024-06-11', '2024-06-11', 'EU', 0.30, 0.45, 0.10, 0.55);
INSERT INTO card_market_analysis_detail (card_uuid, market_date, average_price_usd, median_price_usd, volume_traded, listing_count, price_stddev, price_percentile_90, price_percentile_10, currency, source, analyst_id, notes, created_at, updated_at, region, price_change_24h, price_change_7d, price_change_30d, volatility_index) VALUES ('uuid-ghi-789', '2024-06-10', 0.25, 0.20, 8000, 900, 0.08, 0.35, 0.15, 'USD', 'cardmarket', 1003, 'Low price, high volume', '2024-06-11', '2024-06-11', 'ASIA', -0.02, -0.05, -0.10, 0.18);

-- Sponsor engagement metrics details
CREATE TABLE sponsor_engagement_metrics_detail (
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER NOT NULL,
    event_id INTEGER NOT NULL,
    engagement_type TEXT,
    count INTEGER,
    unique_users INTEGER,
    avg_duration_seconds REAL,
    reach INTEGER,
    impressions INTEGER,
    clicks INTEGER,
    conversion_rate REAL,
    cost_usd REAL,
    revenue_usd REAL,
    roi REAL,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    platform TEXT,
    campaign_id INTEGER,
    segment TEXT,
    measurement_method TEXT
);
INSERT INTO sponsor_engagement_metrics_detail (sponsor_id, event_id, engagement_type, count, unique_users, avg_duration_seconds, reach, impressions, clicks, conversion_rate, cost_usd, revenue_usd, roi, created_at, updated_at, notes, platform, campaign_id, segment, measurement_method) VALUES (801, 401, 'Banner', 5000, 3200, 12.5, 15000, 20000, 800, 0.04, 2500, 4000, 1.6, '2024-06-01', '2024-06-01', 'High engagement on day 1', 'web', 901, 'CorePlayers', 'pixel');
INSERT INTO sponsor_engagement_metrics_detail (sponsor_id, event_id, engagement_type, count, unique_users, avg_duration_seconds, reach, impressions, clicks, conversion_rate, cost_usd, revenue_usd, roi, created_at, updated_at, notes, platform, campaign_id, segment, measurement_method) VALUES (802, 402, 'Video', 3000, 2100, 30.0, 12000, 18000, 600, 0.033, 1800, 3000, 1.67, '2024-06-02', '2024-06-02', 'Video ad performed well', 'mobile', 902, 'Casual', 'viewable');
INSERT INTO sponsor_engagement_metrics_detail (sponsor_id, event_id, engagement_type, count, unique_users, avg_duration_seconds, reach, impressions, clicks, conversion_rate, cost_usd, revenue_usd, roi, created_at, updated_at, notes, platform, campaign_id, segment, measurement_method) VALUES (803, 403, 'SponsoredPost', 2500, 1800, 8.0, 10000, 15000, 400, 0.027, 1300, 2100, 1.62, '2024-06-03', '2024-06-03', 'Steady interest', 'social', 903, 'Collectors', 'engagement');

-- Collector trade request records
CREATE TABLE collector_trade_requests (
    request_id INTEGER PRIMARY KEY AUTOINCREMENT,
    collector_id INTEGER NOT NULL,
    offered_card_uuid TEXT NOT NULL,
    requested_card_uuid TEXT NOT NULL,
    status TEXT,
    created_at TEXT,
    updated_at TEXT,
    offer_value_usd REAL,
    request_value_usd REAL,
    notes TEXT,
    expiry_date TEXT,
    counter_offer_allowed INTEGER,
    priority_level INTEGER,
    communication_channel TEXT,
    last_activity_at TEXT,
    agreed_date TEXT,
    declined_reason TEXT,
    trade_type TEXT,
    tax_implication TEXT,
    shipping_method TEXT
);
INSERT INTO collector_trade_requests (collector_id, offered_card_uuid, requested_card_uuid, status, created_at, updated_at, offer_value_usd, request_value_usd, notes, expiry_date, counter_offer_allowed, priority_level, communication_channel, last_activity_at, agreed_date, declined_reason, trade_type, tax_implication, shipping_method) VALUES (901, 'uuid-offer-001', 'uuid-request-001', 'Pending', '2024-05-20', '2024-05-20', 12.5, 13.0, 'First offer', '2024-06-20', 1, 2, 'email', '2024-05-20', NULL, NULL, 'Direct', 'none', 'Standard');
INSERT INTO collector_trade_requests (collector_id, offered_card_uuid, requested_card_uuid, status, created_at, updated_at, offer_value_usd, request_value_usd, notes, expiry_date, counter_offer_allowed, priority_level, communication_channel, last_activity_at, agreed_date, declined_reason, trade_type, tax_implication, shipping_method) VALUES (902, 'uuid-offer-002', 'uuid-request-002', 'Accepted', '2024-04-10', '2024-04-15', 25.0, 24.5, 'Accepted after negotiation', '2024-05-10', 0, 1, 'messenger', '2024-04-15', '2024-04-16', NULL, 'Swap', 'sale', 'Express');
INSERT INTO collector_trade_requests (collector_id, offered_card_uuid, requested_card_uuid, status, created_at, updated_at, offer_value_usd, request_value_usd, notes, expiry_date, counter_offer_allowed, priority_level, communication_channel, last_activity_at, agreed_date, declined_reason, trade_type, tax_implication, shipping_method) VALUES (903, 'uuid-offer-003', 'uuid-request-003', 'Declined', '2024-03-01', '2024-03-05', 5.0, 7.0, 'Offer too low', '2024-04-01', 1, 3, 'forum', '2024-03-05', NULL, 'Price mismatch', 'Direct', 'none', 'Standard');

-- Game mechanics test run logs
CREATE TABLE game_mechanics_test_runs (
    test_run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    mechanic_id INTEGER NOT NULL,
    version TEXT,
    test_date TEXT,
    environment TEXT,
    server_id INTEGER,
    player_count INTEGER,
    avg_latency_ms REAL,
    pass_fail TEXT,
    defects_found INTEGER,
    severity_average REAL,
    execution_time_seconds REAL,
    tester_id INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    test_suite_name TEXT,
    parameters_json TEXT,
    result_summary TEXT,
    regression_flag INTEGER
);
INSERT INTO game_mechanics_test_runs (mechanic_id, version, test_date, environment, server_id, player_count, avg_latency_ms, pass_fail, defects_found, severity_average, execution_time_seconds, tester_id, notes, created_at, updated_at, test_suite_name, parameters_json, result_summary, regression_flag) VALUES (1101, '1.0', '2024-06-01', 'Staging', 201, 8, 45.2, 'Pass', 0, NULL, 120.5, 301, 'All scenarios passed', '2024-06-01', '2024-06-01', 'MechanicCoreSuite', '{"maxTurns":20,"allowDraft":false}', 'Successful execution', 0);
INSERT INTO game_mechanics_test_runs (mechanic_id, version, test_date, environment, server_id, player_count, avg_latency_ms, pass_fail, defects_found, severity_average, execution_time_seconds, tester_id, notes, created_at, updated_at, test_suite_name, parameters_json, result_summary, regression_flag) VALUES (1102, '1.1-beta', '2024-06-05', 'Production', 202, 12, 78.9, 'Fail', 3, 2.5, 200.0, 302, 'Timing issues observed', '2024-06-05', '2024-06-05', 'TimingSuite', '{"maxTurns":30,"allowDraft":true}', 'Failed due to latency spikes', 1);
INSERT INTO game_mechanics_test_runs (mechanic_id, version, test_date, environment, server_id, player_count, avg_latency_ms, pass_fail, defects_found, severity_average, execution_time_seconds, tester_id, notes, created_at, updated_at, test_suite_name, parameters_json, result_summary, regression_flag) VALUES (1103, '2.0', '2024-06-10', 'QA', 203, 10, 55.0, 'Pass', 1, 1.0, 150.0, 303, 'Minor UI glitch fixed', '2024-06-10', '2024-06-10', 'UIModuleSuite', '{"theme":"dark","resolution":"1920x1080"}', 'Passed with minor issues', 0);