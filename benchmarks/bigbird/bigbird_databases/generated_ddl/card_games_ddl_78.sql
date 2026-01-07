-- Table: card_market_analytics
CREATE TABLE card_market_analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    uuid TEXT,
    market_date DATE,
    avg_price REAL,
    median_price REAL,
    max_price REAL,
    min_price REAL,
    volume_sold INTEGER,
    listing_count INTEGER,
    price_variance REAL,
    price_stddev REAL,
    region TEXT,
    currency TEXT,
    source TEXT,
    price_change_24h REAL,
    price_change_7d REAL,
    price_change_30d REAL,
    volatility_index REAL,
    liquidity_score REAL,
    price_grade TEXT,
    demand_index REAL,
    supply_index REAL
);
INSERT INTO card_market_analytics (uuid, market_date, avg_price, median_price, max_price, min_price, volume_sold, listing_count, price_variance, price_stddev, region, currency, source, price_change_24h, price_change_7d, price_change_30d, volatility_index, liquidity_score, price_grade, demand_index, supply_index) VALUES ('uuid-001', '2024-01-01', 3.45, 3.20, 5.00, 1.10, 1200, 350, 1.20, 1.10, 'NA', 'USD', 'scryfall', 0.05, -0.02, 0.10, 0.75, 0.80, 'A', 0.85, 0.40);
INSERT INTO card_market_analytics (uuid, market_date, avg_price, median_price, max_price, min_price, volume_sold, listing_count, price_variance, price_stddev, region, currency, source, price_change_24h, price_change_7d, price_change_30d, volatility_index, liquidity_score, price_grade, demand_index, supply_index) VALUES ('uuid-002', '2024-01-01', 12.30, 11.80, 20.00, 5.50, 800, 210, 4.80, 2.20, 'EU', 'EUR', 'mtgjson', -0.01, 0.03, -0.05, 0.60, 0.70, 'B', 0.65, 0.55);
INSERT INTO card_market_analytics (uuid, market_date, avg_price, median_price, max_price, min_price, volume_sold, listing_count, price_variance, price_stddev, region, currency, source, price_change_24h, price_change_7d, price_change_30d, volatility_index, liquidity_score, price_grade, demand_index, supply_index) VALUES ('uuid-003', '2024-01-01', 0.75, 0.70, 1.20, 0.30, 2500, 600, 0.30, 0.55, 'ASIA', 'JPY', 'tcgplayer', 0.02, 0.00, 0.04, 0.45, 0.60, 'C', 0.55, 0.70);

-- Table: set_financials
CREATE TABLE set_financials (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    fiscal_year INTEGER,
    budget_allocated REAL,
    actual_spend REAL,
    profit_margin REAL,
    revenue REAL,
    cost_of_goods_sold REAL,
    marketing_expense REAL,
    licensing_fee REAL,
    royalty_paid REAL,
    net_income REAL,
    cash_flow REAL,
    expense_breakdown TEXT,
    financial_audit_status TEXT,
    audit_date DATE,
    currency TEXT,
    exchange_rate REAL,
    financial_risk_score REAL,
    investment_return REAL,
    capital_expenditure REAL,
    operational_expense REAL
);
INSERT INTO set_financials (set_code, fiscal_year, budget_allocated, actual_spend, profit_margin, revenue, cost_of_goods_sold, marketing_expense, licensing_fee, royalty_paid, net_income, cash_flow, expense_breakdown, financial_audit_status, audit_date, currency, exchange_rate, financial_risk_score, investment_return, capital_expenditure, operational_expense) VALUES ('ST01', 2023, 500000.00, 480000.00, 0.15, 750000.00, 300000.00, 80000.00, 20000.00, 25000.00, 125000.00, 130000.00, 'detailA', 'passed', '2024-02-01', 'USD', 1.00, 0.3, 0.12, 60000.00, 200000.00);
INSERT INTO set_financials (set_code, fiscal_year, budget_allocated, actual_spend, profit_margin, revenue, cost_of_goods_sold, marketing_expense, licensing_fee, royalty_paid, net_income, cash_flow, expense_breakdown, financial_audit_status, audit_date, currency, exchange_rate, financial_risk_score, investment_return, capital_expenditure, operational_expense) VALUES ('ST02', 2023, 300000.00, 310000.00, 0.10, 450000.00, 220000.00, 50000.00, 15000.00, 18000.00, 70000.00, 72000.00, 'detailB', 'pending', '2024-02-02', 'EUR', 0.95, 0.5, 0.08, 40000.00, 120000.00);
INSERT INTO set_financials (set_code, fiscal_year, budget_allocated, actual_spend, profit_margin, revenue, cost_of_goods_sold, marketing_expense, licensing_fee, royalty_paid, net_income, cash_flow, expense_breakdown, financial_audit_status, audit_date, currency, exchange_rate, financial_risk_score, investment_return, capital_expenditure, operational_expense) VALUES ('ST03', 2023, 200000.00, 210000.00, 0.12, 320000.00, 150000.00, 40000.00, 10000.00, 12000.00, 50000.00, 51000.00, 'detailC', 'passed', '2024-02-03', 'GBP', 0.80, 0.4, 0.09, 30000.00, 90000.00);

-- Table: player_behavior_metrics
CREATE TABLE player_behavior_metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    session_id TEXT,
    login_timestamp DATETIME,
    logout_timestamp DATETIME,
    avg_session_length REAL,
    peak_concurrent_sessions INTEGER,
    actions_per_minute REAL,
    cards_viewed INTEGER,
    decks_created INTEGER,
    decks_exported INTEGER,
    chat_messages_sent INTEGER,
    matches_played INTEGER,
    matches_won INTEGER,
    win_rate REAL,
    avg_mana_spent REAL,
    avg_life_lost REAL,
    unique_ip_count INTEGER,
    device_type TEXT,
    os_version TEXT,
    app_version TEXT,
    geolocation TEXT,
    latency_ms INTEGER,
    error_count INTEGER
);
INSERT INTO player_behavior_metrics (player_id, session_id, login_timestamp, logout_timestamp, avg_session_length, peak_concurrent_sessions, actions_per_minute, cards_viewed, decks_created, decks_exported, chat_messages_sent, matches_played, matches_won, win_rate, avg_mana_spent, avg_life_lost, unique_ip_count, device_type, os_version, app_version, geolocation, latency_ms, error_count) VALUES (1001, 'sessA', '2024-01-10 08:00:00', '2024-01-10 09:30:00', 90.5, 3, 12.4, 45, 2, 1, 15, 20, 12, 0.60, 18.5, 8.2, 2, 'mobile', 'iOS14', '1.3.5', 'US-CA', 45, 0);
INSERT INTO player_behavior_metrics (player_id, session_id, login_timestamp, logout_timestamp, avg_session_length, peak_concurrent_sessions, actions_per_minute, cards_viewed, decks_created, decks_exported, chat_messages_sent, matches_played, matches_won, win_rate, avg_mana_spent, avg_life_lost, unique_ip_count, device_type, os_version, app_version, geolocation, latency_ms, error_count) VALUES (1002, 'sessB', '2024-01-11 14:20:00', '2024-01-11 15:05:00', 45.0, 1, 9.0, 30, 0, 0, 5, 10, 6, 0.60, 15.0, 7.5, 1, 'desktop', 'Windows10', '2.0.1', 'EU-DE', 30, 1);
INSERT INTO player_behavior_metrics (player_id, session_id, login_timestamp, logout_timestamp, avg_session_length, peak_concurrent_sessions, actions_per_minute, cards_viewed, decks_created, decks_exported, chat_messages_sent, matches_played, matches_won, win_rate, avg_mana_spent, avg_life_lost, unique_ip_count, device_type, os_version, app_version, geolocation, latency_ms, error_count) VALUES (1003, 'sessC', '2024-01-12 20:15:00', '2024-01-12 22:00:00', 105.0, 4, 14.2, 60, 5, 3, 20, 30, 18, 0.60, 22.0, 9.0, 3, 'tablet', 'Android11', '3.1.0', 'ASIA-JP', 55, 0);

-- Table: tournament_logistics_overview
CREATE TABLE tournament_logistics_overview (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    venue_id INTEGER,
    start_date DATE,
    end_date DATE,
    max_players INTEGER,
    registered_players INTEGER,
    staff_count INTEGER,
    volunteers INTEGER,
    equipment_needed TEXT,
    stage_count INTEGER,
    prize_pool_usd REAL,
    sponsor_count INTEGER,
    broadcast_channels TEXT,
    streaming_quality TEXT,
    wifi_bandwidth_mbps REAL,
    security_level TEXT,
    inspection_passed INTEGER,
    contingency_plan_version TEXT,
    logistics_status TEXT,
    last_updated DATETIME,
    notes TEXT
);
INSERT INTO tournament_logistics_overview (tournament_id, venue_id, start_date, end_date, max_players, registered_players, staff_count, volunteers, equipment_needed, stage_count, prize_pool_usd, sponsor_count, broadcast_channels, streaming_quality, wifi_bandwidth_mbps, security_level, inspection_passed, contingency_plan_version, logistics_status, last_updated, notes) VALUES (2001, 301, '2024-03-01', '2024-03-05', 1024, 980, 45, 120, 'projectors, consoles, tablets', 3, 50000.00, 8, 'twitch,youtube', '1080p', 500.0, 'high', 1, 'v2', 'confirmed', '2024-02-20 10:00:00', 'All set');
INSERT INTO tournament_logistics_overview (tournament_id, venue_id, start_date, end_date, max_players, registered_players, staff_count, volunteers, equipment_needed, stage_count, prize_pool_usd, sponsor_count, broadcast_channels, streaming_quality, wifi_bandwidth_mbps, security_level, inspection_passed, contingency_plan_version, logistics_status, last_updated, notes) VALUES (2002, 302, '2024-04-10', '2024-04-12', 512, 450, 30, 80, 'screens, sound systems', 2, 25000.00, 5, 'facebook,discord', '720p', 300.0, 'medium', 1, 'v1', 'pending', '2024-03-01 14:30:00', 'Awaiting final approval');
INSERT INTO tournament_logistics_overview (tournament_id, venue_id, start_date, end_date, max_players, registered_players, staff_count, volunteers, equipment_needed, stage_count, prize_pool_usd, sponsor_count, broadcast_channels, streaming_quality, wifi_bandwidth_mbps, security_level, inspection_passed, contingency_plan_version, logistics_status, last_updated, notes) VALUES (2003, 303, '2024-05-20', '2024-05-22', 256, 240, 20, 60, 'laptops, routers', 1, 15000.00, 3, 'twitch', '1080p', 250.0, 'low', 0, 'v1', 'draft', '2024-04-15 09:15:00', 'Inspection pending');

-- Table: artwork_license_agreements
CREATE TABLE artwork_license_agreements (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    artwork_id INTEGER,
    artist_id INTEGER,
    license_type TEXT,
    start_date DATE,
    end_date DATE,
    territory TEXT,
    exclusive_flag INTEGER,
    royalty_rate REAL,
    flat_fee REAL,
    payment_terms TEXT,
    renewal_option TEXT,
    termination_clause TEXT,
    usage_limit INTEGER,
    max_prints INTEGER,
    digital_use_allowed INTEGER,
    commercial_use_allowed INTEGER,
    amendment_count INTEGER,
    last_amendment_date DATE,
    governing_law TEXT,
    contract_status TEXT,
    contract_file_path TEXT
);
INSERT INTO artwork_license_agreements (artwork_id, artist_id, license_type, start_date, end_date, territory, exclusive_flag, royalty_rate, flat_fee, payment_terms, renewal_option, termination_clause, usage_limit, max_prints, digital_use_allowed, commercial_use_allowed, amendment_count, last_amendment_date, governing_law, contract_status, contract_file_path) VALUES (4001, 501, 'exclusive', '2023-01-01', '2025-12-31', 'global', 1, 0.07, 2000.00, 'net30', 'auto', 'notice30', 1000, 5000, 1, 1, 2, '2024-01-15', 'US', 'active', '/contracts/art4001.pdf');
INSERT INTO artwork_license_agreements (artwork_id, artist_id, license_type, start_date, end_date, territory, exclusive_flag, royalty_rate, flat_fee, payment_terms, renewal_option, termination_clause, usage_limit, max_prints, digital_use_allowed, commercial_use_allowed, amendment_count, last_amendment_date, governing_law, contract_status, contract_file_path) VALUES (4002, 502, 'nonexclusive', '2022-06-01', '2024-05-31', 'EU', 0, 0.05, 1500.00, 'net45', 'manual', 'notice60', 800, 3000, 1, 0, 1, '2023-12-20', 'UK', 'expired', '/contracts/art4002.pdf');
INSERT INTO artwork_license_agreements (artwork_id, artist_id, license_type, start_date, end_date, territory, exclusive_flag, royalty_rate, flat_fee, payment_terms, renewal_option, termination_clause, usage_limit, max_prints, digital_use_allowed, commercial_use_allowed, amendment_count, last_amendment_date, governing_law, contract_status, contract_file_path) VALUES (4003, 503, 'exclusive', '2024-02-01', '2027-01-31', 'NA', 1, 0.06, 2500.00, 'net15', 'auto', 'notice30', 1200, 6000, 0, 1, 0, '2024-02-10', 'CA', 'active', '/contracts/art4003.pdf');

-- Table: digital_collectible_transactions
CREATE TABLE digital_collectible_transactions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    token_id TEXT,
    owner_user_id INTEGER,
    transaction_type TEXT,
    transaction_timestamp DATETIME,
    price_usd REAL,
    price_crypto REAL,
    blockchain_tx_hash TEXT,
    gas_fee_usd REAL,
    block_number INTEGER,
    previous_owner_id INTEGER,
    new_owner_id INTEGER,
    transfer_method TEXT,
    verification_status TEXT,
    settlement_date DATE,
    marketplace TEXT,
    sale_condition TEXT,
    royalty_paid_usd REAL,
    royalty_recipient TEXT,
    notes TEXT
);
INSERT INTO digital_collectible_transactions (token_id, owner_user_id, transaction_type, transaction_timestamp, price_usd, price_crypto, blockchain_tx_hash, gas_fee_usd, block_number, previous_owner_id, new_owner_id, transfer_method, verification_status, settlement_date, marketplace, sale_condition, royalty_paid_usd, royalty_recipient, notes) VALUES ('tokA', 1001, 'sale', '2024-01-20 12:30:00', 45.00, 0.03, 'hash123', 0.10, 1500000, 900, 1002, 'direct', 'verified', '2024-01-21', 'opensea', 'instant', 3.15, 'artist501', 'first sale');
INSERT INTO digital_collectible_transactions (token_id, owner_user_id, transaction_type, transaction_timestamp, price_usd, price_crypto, blockchain_tx_hash, gas_fee_usd, block_number, previous_owner_id, new_owner_id, transfer_method, verification_status, settlement_date, marketplace, sale_condition, royalty_paid_usd, royalty_recipient, notes) VALUES ('tokB', 1003, 'transfer', '2024-02-05 09:15:00', 0.00, 0.00, 'hash456', 0.05, 1500200, 1001, 1004, 'gift', 'verified', '2024-02-05', 'internal', 'gift', 0.00, '', 'gifted to friend');
INSERT INTO digital_collectible_transactions (token_id, owner_user_id, transaction_type, transaction_timestamp, price_usd, price_crypto, blockchain_tx_hash, gas_fee_usd, block_number, previous_owner_id, new_owner_id, transfer_method, verification_status, settlement_date, marketplace, sale_condition, royalty_paid_usd, royalty_recipient, notes) VALUES ('tokC', 1005, 'sale', '2024-03-10 18:45:00', 120.00, 0.08, 'hash789', 0.20, 1500500, 1002, 1005, 'auction', 'pending', '2024-03-11', 'rarible', 'auction', 7.20, 'artist502', 'won auction');

-- Table: set_production_schedule
CREATE TABLE set_production_schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    production_phase TEXT,
    start_date DATE,
    end_date DATE,
    expected_output INTEGER,
    actual_output INTEGER,
    quality_check_passed INTEGER,
    defects_found INTEGER,
    rework_hours REAL,
    staff_assigned INTEGER,
    equipment_used TEXT,
    shift TEXT,
    location_code TEXT,
    batch_number TEXT,
    material_cost_usd REAL,
    labor_cost_usd REAL,
    overhead_cost_usd REAL,
    total_cost_usd REAL,
    schedule_status TEXT,
    last_updated DATETIME
);
INSERT INTO set_production_schedule (set_code, production_phase, start_date, end_date, expected_output, actual_output, quality_check_passed, defects_found, rework_hours, staff_assigned, equipment_used, shift, location_code, batch_number, material_cost_usd, labor_cost_usd, overhead_cost_usd, total_cost_usd, schedule_status, last_updated) VALUES ('ST01', 'printing', '2023-09-01', '2023-09-15', 10000, 9950, 1, 12, 8.5, 45, 'pressA,pressB', 'day', 'LOC01', 'B001', 25000.00, 18000.00, 5000.00, 48000.00, 'completed', '2023-09-16 08:00:00');
INSERT INTO set_production_schedule (set_code, production_phase, start_date, end_date, expected_output, actual_output, quality_check_passed, defects_found, rework_hours, staff_assigned, equipment_used, shift, location_code, batch_number, material_cost_usd, labor_cost_usd, overhead_cost_usd, total_cost_usd, schedule_status, last_updated) VALUES ('ST02', 'assembly', '2023-10-05', '2023-10-20', 8000, 8000, 1, 5, 4.0, 30, 'assemblerX', 'night', 'LOC02', 'B010', 18000.00, 12000.00, 3000.00, 33000.00, 'completed', '2023-10-21 07:30:00');
INSERT INTO set_production_schedule (set_code, production_phase, start_date, end_date, expected_output, actual_output, quality_check_passed, defects_found, rework_hours, staff_assigned, equipment_used, shift, location_code, batch_number, material_cost_usd, labor_cost_usd, overhead_cost_usd, total_cost_usd, schedule_status, last_updated) VALUES ('ST03', 'packaging', '2023-11-12', '2023-11-18', 5000, 4980, 1, 3, 2.5, 20, 'packerY', 'day', 'LOC03', 'B020', 12000.00, 8000.00, 2000.00, 22000.00, 'completed', '2023-11-19 09:15:00');

-- Table: sponsor_engagement_metrics
CREATE TABLE sponsor_engagement_metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    event_id INTEGER,
    engagement_type TEXT,
    impressions INTEGER,
    clicks INTEGER,
    ctr REAL,
    conversion_rate REAL,
    spend_usd REAL,
    roi REAL,
    cost_per_impression REAL,
    cost_per_click REAL,
    audience_reach INTEGER,
    demographic_target TEXT,
    engagement_start DATE,
    engagement_end DATE,
    feedback_score REAL,
    renewal_likelihood REAL,
    contract_term_months INTEGER,
    sponsor_contact TEXT,
    notes TEXT
);
INSERT INTO sponsor_engagement_metrics (sponsor_id, event_id, engagement_type, impressions, clicks, ctr, conversion_rate, spend_usd, roi, cost_per_impression, cost_per_click, audience_reach, demographic_target, engagement_start, engagement_end, feedback_score, renewal_likelihood, contract_term_months, sponsor_contact, notes) VALUES (301, 2001, 'banner', 250000, 5000, 0.02, 0.10, 15000.00, 1.5, 0.06, 3.00, 120000, '18-35', '2024-03-01', '2024-03-05', 4.5, 0.8, 12, 'contactA', 'positive response');
INSERT INTO sponsor_engagement_metrics (sponsor_id, event_id, engagement_type, impressions, clicks, ctr, conversion_rate, spend_usd, roi, cost_per_impression, cost_per_click, audience_reach, demographic_target, engagement_start, engagement_end, feedback_score, renewal_likelihood, contract_term_months, sponsor_contact, notes) VALUES (302, 2002, 'video', 180000, 3000, 0.0167, 0.12, 12000.00, 1.2, 0.067, 4.00, 90000, '25-45', '2024-04-10', '2024-04-12', 4.0, 0.6, 9, 'contactB', 'average engagement');
INSERT INTO sponsor_engagement_metrics (sponsor_id, event_id, engagement_type, impressions, clicks, ctr, conversion_rate, spend_usd, roi, cost_per_impression, cost_per_click, audience_reach, demographic_target, engagement_start, engagement_end, feedback_score, renewal_likelihood, contract_term_months, sponsor_contact, notes) VALUES (303, 2003, 'social', 300000, 7500, 0.025, 0.15, 20000.00, 1.8, 0.067, 2.67, 150000, '15-30', '2024-05-20', '2024-05-22', 4.8, 0.9, 15, 'contactC', 'excellent results');

-- Table: player_mental_health_assessments
CREATE TABLE player_mental_health_assessments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    assessment_date DATE,
    stress_level INTEGER,
    burnout_score INTEGER,
    sleep_quality INTEGER,
    mood_score INTEGER,
    coping_strategy TEXT,
    recommended_action TEXT,
    therapist_assigned TEXT,
    follow_up_date DATE,
    notes TEXT,
    confidentiality_flag INTEGER,
    assessment_method TEXT,
    score_timestamp DATETIME,
    physical_activity_level INTEGER,
    nutrition_score INTEGER,
    social_interaction_score INTEGER,
    mindfulness_minutes INTEGER,
    overall_wellbeing_index REAL,
    risk_flag INTEGER
);
INSERT INTO player_mental_health_assessments (player_id, assessment_date, stress_level, burnout_score, sleep_quality, mood_score, coping_strategy, recommended_action, therapist_assigned, follow_up_date, notes, confidentiality_flag, assessment_method, score_timestamp, physical_activity_level, nutrition_score, social_interaction_score, mindfulness_minutes, overall_wellbeing_index, risk_flag) VALUES (1001, '2024-01-15', 3, 2, 4, 5, 'exercise', 'increase rest', 'DrSmith', '2024-02-15', 'stable', 1, 'online', '2024-01-15 10:00:00', 30, 7, 8, 15, 0.78, 0);
INSERT INTO player_mental_health_assessments (player_id, assessment_date, stress_level, burnout_score, sleep_quality, mood_score, coping_strategy, recommended_action, therapist_assigned, follow_up_date, notes, confidentiality_flag, assessment_method, score_timestamp, physical_activity_level, nutrition_score, social_interaction_score, mindfulness_minutes, overall_wellbeing_index, risk_flag) VALUES (1002, '2024-01-20', 5, 4, 2, 3, 'meditation', 'schedule therapy', 'DrLee', '2024-02-20', 'high stress', 1, 'inperson', '2024-01-20 14:30:00', 20, 5, 4, 25, 0.55, 1);
INSERT INTO player_mental_health_assessments (player_id, assessment_date, stress_level, burnout_score, sleep_quality, mood_score, coping_strategy, recommended_action, therapist_assigned, follow_up_date, notes, confidentiality_flag, assessment_method, score_timestamp, physical_activity_level, nutrition_score, social_interaction_score, mindfulness_minutes, overall_wellbeing_index, risk_flag) VALUES (1003, '2024-01-25', 2, 1, 5, 6, 'gaming', 'maintain routine', 'DrKim', '2024-02-25', 'good morale', 1, 'online', '2024-01-25 09:45:00', 35, 8, 9, 10, 0.85, 0);

-- Table: environmental_sensor_readings
CREATE TABLE environmental_sensor_readings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sensor_id TEXT,
    venue_id INTEGER,
    reading_timestamp DATETIME,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    noise_db REAL,
    light_lux REAL,
    vibration_mms REAL,
    battery_level_percent INTEGER,
    firmware_version TEXT,
    signal_strength_dbm REAL,
    calibration_date DATE,
    maintenance_due_date DATE,
    anomaly_flag INTEGER,
    reading_source TEXT,
    sensor_type TEXT,
    location_description TEXT,
    data_quality_score REAL,
    notes TEXT
);
INSERT INTO environmental_sensor_readings (sensor_id, venue_id, reading_timestamp, temperature_c, humidity_percent, co2_ppm, noise_db, light_lux, vibration_mms, battery_level_percent, firmware_version, signal_strength_dbm, calibration_date, maintenance_due_date, anomaly_flag, reading_source, sensor_type, location_description, data_quality_score, notes) VALUES ('S001', 301, '2024-03-01 08:00:00', 22.5, 45.0, 600, 55.2, 300.0, 0.02, 95, 'v1.2', -70.0, '2023-12-01', '2024-06-01', 0, 'automated', 'temp_humidity', 'main_hall', 0.98, 'normal');
INSERT INTO environmental_sensor_readings (sensor_id, venue_id, reading_timestamp, temperature_c, humidity_percent, co2_ppm, noise_db, light_lux, vibration_mms, battery_level_percent, firmware_version, signal_strength_dbm, calibration_date, maintenance_due_date, anomaly_flag, reading_source, sensor_type, location_description, data_quality_score, notes) VALUES ('S002', 302, '2024-03-01 08:05:00', 24.0, 50.0, 650, 60.0, 350.0, 0.03, 90, 'v1.1', -68.0, '2023-11-15', '2024-05-15', 0, 'automated', 'temp_humidity', 'side_room', 0.96, 'normal');
INSERT INTO environmental_sensor_readings (sensor_id, venue_id, reading_timestamp, temperature_c, humidity_percent, co2_ppm, noise_db, light_lux, vibration_mms, battery_level_percent, firmware_version, signal_strength_dbm, calibration_date, maintenance_due_date, anomaly_flag, reading_source, sensor_type, location_description, data_quality_score, notes) VALUES ('S003', 303, '2024-03-01 08:10:00', 21.0, 40.0, 550, 50.5, 280.0, 0.01, 98, 'v1.3', -72.0, '2024-01-10', '2024-07-10', 0, 'automated', 'temp_humidity', 'backstage', 0.99, 'normal');