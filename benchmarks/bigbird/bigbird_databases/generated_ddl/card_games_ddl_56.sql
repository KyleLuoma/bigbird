-- Card trade offers between collectors
CREATE TABLE card_trade_offers
(
    offer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    collector_id INTEGER,
    offered_card_uuid TEXT,
    requested_card_uuid TEXT,
    offer_status TEXT,
    offer_timestamp DATETIME,
    expiry_date DATE,
    notes TEXT,
    trade_type TEXT,
    is_counter_offer INTEGER,
    is_seen INTEGER,
    rating INTEGER,
    platform TEXT,
    fee_percentage REAL,
    shipping_required INTEGER,
    priority_level TEXT,
    visibility TEXT,
    region TEXT,
    language TEXT,
    currency TEXT,
    amount REAL
);

INSERT INTO card_trade_offers (collector_id, offered_card_uuid, requested_card_uuid, offer_status, offer_timestamp, expiry_date, notes, trade_type, is_counter_offer, is_seen, rating, platform, fee_percentage, shipping_required, priority_level, visibility, region, language, currency, amount) VALUES (101, 'uuid-offer-001', 'uuid-request-001', 'pending', '2025-06-01 10:00:00', '2025-06-15', 'first offer', 'direct', 0, 0, 0, 'web', 2.5, 1, 'high', 'public', 'NA', 'en', 'USD', 15.0);
INSERT INTO card_trade_offers (collector_id, offered_card_uuid, requested_card_uuid, offer_status, offer_timestamp, expiry_date, notes, trade_type, is_counter_offer, is_seen, rating, platform, fee_percentage, shipping_required, priority_level, visibility, region, language, currency, amount) VALUES (102, 'uuid-offer-002', 'uuid-request-002', 'accepted', '2025-05-20 14:30:00', '2025-06-05', 'countered', 'swap', 1, 1, 5, 'mobile', 3.0, 0, 'medium', 'friends', 'EU', 'de', 'EUR', 12.5);
INSERT INTO card_trade_offers (collector_id, offered_card_uuid, requested_card_uuid, offer_status, offer_timestamp, expiry_date, notes, trade_type, is_counter_offer, is_seen, rating, platform, fee_percentage, shipping_required, priority_level, visibility, region, language, currency, amount) VALUES (103, 'uuid-offer-003', 'uuid-request-003', 'rejected', '2025-04-10 09:15:00', '2025-04-25', 'no interest', 'gift', 0, 1, 2, 'web', 0.0, 1, 'low', 'private', 'AS', 'ja', 'JPY', 2000);

-- Set production metrics
CREATE TABLE set_production_metrics
(
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    print_run INTEGER,
    digital_copy_count INTEGER,
    avg_print_time REAL,
    defect_rate REAL,
    cost_per_card REAL,
    total_cost REAL,
    vendor_id INTEGER,
    production_start_date DATE,
    production_end_date DATE,
    quality_audit_passed INTEGER,
    batch_number TEXT,
    sheet_count INTEGER,
    inks_used TEXT,
    paper_type TEXT,
    coating_type TEXT,
    eco_rating TEXT,
    carbon_footprint REAL,
    notes TEXT,
    created_at DATETIME
);

INSERT INTO set_production_metrics (set_code, print_run, digital_copy_count, avg_print_time, defect_rate, cost_per_card, total_cost, vendor_id, production_start_date, production_end_date, quality_audit_passed, batch_number, sheet_count, inks_used, paper_type, coating_type, eco_rating, carbon_footprint, notes, created_at) VALUES ('SET1', 50000, 2000, 1.2, 0.02, 0.15, 7500, 10, '2025-01-01', '2025-02-15', 1, 'BATCHA', 1200, 'CMYK', 'Gloss', 'UV', 'A', 350.5, 'first run', '2025-02-16 08:00:00');
INSERT INTO set_production_metrics (set_code, print_run, digital_copy_count, avg_print_time, defect_rate, cost_per_card, total_cost, vendor_id, production_start_date, production_end_date, quality_audit_passed, batch_number, sheet_count, inks_used, paper_type, coating_type, eco_rating, carbon_footprint, notes, created_at) VALUES ('SET2', 75000, 3000, 1.0, 0.015, 0.12, 9000, 12, '2025-03-05', '2025-04-20', 1, 'BATCHB', 1800, 'CMYK', 'Matte', 'Waterbased', 'B', 420.0, 'optimized', '2025-04-21 09:30:00');
INSERT INTO set_production_metrics (set_code, print_run, digital_copy_count, avg_print_time, defect_rate, cost_per_card, total_cost, vendor_id, production_start_date, production_end_date, quality_audit_passed, batch_number, sheet_count, inks_used, paper_type, coating_type, eco_rating, carbon_footprint, notes, created_at) VALUES ('SET3', 60000, 2500, 1.3, 0.025, 0.14, 8400, 11, '2025-05-10', '2025-06-25', 0, 'BATCHC', 1500, 'Pantone', 'Gloss', 'UV', 'C', 390.7, 'audit pending', '2025-06-26 07:45:00');

-- Player mental health assessments
CREATE TABLE player_mental_health_assessments
(
    assessment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    assessment_date DATE,
    stress_level INTEGER,
    focus_score INTEGER,
    sleep_quality INTEGER,
    mood_rating INTEGER,
    recommended_actions TEXT,
    therapist_id INTEGER,
    session_duration INTEGER,
    notes TEXT,
    follow_up_date DATE,
    anxiety_score INTEGER,
    depression_score INTEGER,
    resilience_score INTEGER,
    coping_mechanisms TEXT,
    physical_activity_level INTEGER,
    nutrition_score INTEGER,
    social_support_score INTEGER,
    overall_score INTEGER,
    created_at DATETIME
);

INSERT INTO player_mental_health_assessments (player_id, assessment_date, stress_level, focus_score, sleep_quality, mood_rating, recommended_actions, therapist_id, session_duration, notes, follow_up_date, anxiety_score, depression_score, resilience_score, coping_mechanisms, physical_activity_level, nutrition_score, social_support_score, overall_score, created_at) VALUES (201, '2025-01-15', 7, 6, 5, 6, 'meditation', 301, 45, 'good progress', '2025-02-15', 5, 4, 7, 'breathing', 8, 7, 6, 55, '2025-01-15 10:00:00');
INSERT INTO player_mental_health_assessments (player_id, assessment_date, stress_level, focus_score, sleep_quality, mood_rating, recommended_actions, therapist_id, session_duration, notes, follow_up_date, anxiety_score, depression_score, resilience_score, coping_mechanisms, physical_activity_level, nutrition_score, social_support_score, overall_score, created_at) VALUES (202, '2025-02-20', 4, 8, 8, 8, 'exercise', 302, 60, 'stable', '2025-03-20', 2, 2, 8, 'jogging', 9, 8, 9, 73, '2025-02-20 14:30:00');
INSERT INTO player_mental_health_assessments (player_id, assessment_date, stress_level, focus_score, sleep_quality, mood_rating, recommended_actions, therapist_id, session_duration, notes, follow_up_date, anxiety_score, depression_score, resilience_score, coping_mechanisms, physical_activity_level, nutrition_score, social_support_score, overall_score, created_at) VALUES (203, '2025-03-05', 9, 5, 4, 5, 'counseling', 303, 30, 'needs attention', '2025-04-05', 7, 6, 5, 'journaling', 5, 5, 4, 45, '2025-03-05 09:15:00');

-- Digital asset marketplace channels
CREATE TABLE digital_asset_marketplace_channels
(
    channel_id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_id INTEGER,
    channel_name TEXT,
    listing_fee REAL,
    commission_rate REAL,
    avg_view_time REAL,
    conversion_rate REAL,
    region TEXT,
    currency TEXT,
    supported_formats TEXT,
    upload_date DATE,
    last_updated DATE,
    is_featured INTEGER,
    promotion_budget REAL,
    traffic_source TEXT,
    verification_status TEXT,
    compliance_score REAL,
    latency_ms REAL,
    bandwidth_usage_gb REAL,
    storage_cost REAL,
    notes TEXT
);

INSERT INTO digital_asset_marketplace_channels (asset_id, channel_name, listing_fee, commission_rate, avg_view_time, conversion_rate, region, currency, supported_formats, upload_date, last_updated, is_featured, promotion_budget, traffic_source, verification_status, compliance_score, latency_ms, bandwidth_usage_gb, storage_cost, notes) VALUES (501, 'WebPortal', 0.5, 10.0, 45.2, 2.5, 'NA', 'USD', 'png,jpg', '2025-01-10', '2025-02-01', 1, 1000, 'seo', 'verified', 95.0, 120.5, 500.0, 0.05, 'top channel');
INSERT INTO digital_asset_marketplace_channels (asset_id, channel_name, listing_fee, commission_rate, avg_view_time, conversion_rate, region, currency, supported_formats, upload_date, last_updated, is_featured, promotion_budget, traffic_source, verification_status, compliance_score, latency_ms, bandwidth_usage_gb, storage_cost, notes) VALUES (502, 'MobileApp', 0.3, 8.0, 30.1, 3.0, 'EU', 'EUR', 'png', '2025-03-05', '2025-03-20', 0, 500, 'ads', 'pending', 88.0, 80.2, 300.0, 0.04, 'new channel');
INSERT INTO digital_asset_marketplace_channels (asset_id, channel_name, listing_fee, commission_rate, avg_view_time, conversion_rate, region, currency, supported_formats, upload_date, last_updated, is_featured, promotion_budget, traffic_source, verification_status, compliance_score, latency_ms, bandwidth_usage_gb, storage_cost, notes) VALUES (503, 'PartnerSite', 0.7, 12.0, 60.0, 1.8, 'AS', 'JPY', 'jpg', '2025-02-15', '2025-02-28', 0, 800, 'referral', 'verified', 92.5, 110.0, 400.0, 0.06, 'partner integration');

-- Esports team performance stats
CREATE TABLE esports_team_performance_stats
(
    stat_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    season TEXT,
    matches_played INTEGER,
    wins INTEGER,
    losses INTEGER,
    draws INTEGER,
    win_rate REAL,
    avg_kills REAL,
    avg_deaths REAL,
    avg_assists REAL,
    avg_gold_per_min REAL,
    avg_experience_per_min REAL,
    first_blood_rate REAL,
    objective_control_rate REAL,
    player_mvp_count INTEGER,
    roster_change_flag INTEGER,
    coach_id INTEGER,
    sponsorship_level TEXT,
    region TEXT,
    last_updated DATETIME
);

INSERT INTO esports_team_performance_stats (team_id, season, matches_played, wins, losses, draws, win_rate, avg_kills, avg_deaths, avg_assists, avg_gold_per_min, avg_experience_per_min, first_blood_rate, objective_control_rate, player_mvp_count, roster_change_flag, coach_id, sponsorship_level, region, last_updated) VALUES (1001, '2024', 30, 20, 8, 2, 66.7, 15.2, 7.5, 9.8, 450.5, 520.3, 55.0, 62.0, 5, 0, 401, 'Gold', 'NA', '2025-01-01 12:00:00');
INSERT INTO esports_team_performance_stats (team_id, season, matches_played, wins, losses, draws, win_rate, avg_kills, avg_deaths, avg_assists, avg_gold_per_min, avg_experience_per_min, first_blood_rate, objective_control_rate, player_mvp_count, roster_change_flag, coach_id, sponsorship_level, region, last_updated) VALUES (1002, '2024', 28, 15, 10, 3, 53.6, 12.4, 8.1, 8.3, 410.2, 480.0, 48.0, 55.0, 3, 1, 402, 'Silver', 'EU', '2025-01-02 14:30:00');
INSERT INTO esports_team_performance_stats (team_id, season, matches_played, wins, losses, draws, win_rate, avg_kills, avg_deaths, avg_assists, avg_gold_per_min, avg_experience_per_min, first_blood_rate, objective_control_rate, player_mvp_count, roster_change_flag, coach_id, sponsorship_level, region, last_updated) VALUES (1003, '2024', 32, 25, 5, 2, 78.1, 16.8, 6.9, 10.5, 470.0, 540.2, 60.0, 68.0, 7, 0, 403, 'Platinum', 'AS', '2025-01-03 09:15:00');

-- Venue environmental compliance
CREATE TABLE venue_environmental_compliance
(
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    inspection_date DATE,
    temperature_avg REAL,
    humidity_avg REAL,
    noise_level_avg REAL,
    air_quality_index INTEGER,
    waste_recycling_rate REAL,
    energy_consumption_kwh REAL,
    water_usage_liters REAL,
    carbon_emissions_kg REAL,
    compliance_status TEXT,
    inspector_id INTEGER,
    notes TEXT,
    follow_up_required INTEGER,
    follow_up_date DATE,
    compliance_score REAL,
    green_certification_level TEXT,
    renewable_energy_percentage REAL,
    lighting_efficiency_rating REAL,
    created_at DATETIME
);

INSERT INTO venue_environmental_compliance (venue_id, inspection_date, temperature_avg, humidity_avg, noise_level_avg, air_quality_index, waste_recycling_rate, energy_consumption_kwh, water_usage_liters, carbon_emissions_kg, compliance_status, inspector_id, notes, follow_up_required, follow_up_date, compliance_score, green_certification_level, renewable_energy_percentage, lighting_efficiency_rating, created_at) VALUES (301, '2025-01-20', 22.5, 45.0, 55.2, 42, 78.5, 12000, 30000, 850, 'Compliant', 501, 'All good', 0, NULL, 92.0, 'Gold', 35.0, 88.5, '2025-01-20 08:00:00');
INSERT INTO venue_environmental_compliance (venue_id, inspection_date, temperature_avg, humidity_avg, noise_level_avg, air_quality_index, waste_recycling_rate, energy_consumption_kwh, water_usage_liters, carbon_emissions_kg, compliance_status, inspector_id, notes, follow_up_required, follow_up_date, compliance_score, green_certification_level, renewable_energy_percentage, lighting_efficiency_rating, created_at) VALUES (302, '2025-02-15', 21.0, 50.0, 60.5, 38, 70.0, 14000, 35000, 950, 'NonCompliant', 502, 'Ventilation issues', 1, '2025-03-01', 78.0, 'Silver', 20.0, 75.0, '2025-02-15 09:30:00');
INSERT INTO venue_environmental_compliance (venue_id, inspection_date, temperature_avg, humidity_avg, noise_level_avg, air_quality_index, waste_recycling_rate, energy_consumption_kwh, water_usage_liters, carbon_emissions_kg, compliance_status, inspector_id, notes, follow_up_required, follow_up_date, compliance_score, green_certification_level, renewable_energy_percentage, lighting_efficiency_rating, created_at) VALUES (303, '2025-03-10', 23.2, 48.5, 58.0, 40, 82.0, 11500, 32000, 820, 'Compliant', 503, 'Minor lighting upgrade', 0, NULL, 90.5, 'Gold', 30.0, 85.0, '2025-03-10 07:45:00');

-- Marketplace fee structures
CREATE TABLE marketplace_fee_structures
(
    fee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    marketplace_id INTEGER,
    fee_type TEXT,
    percentage REAL,
    flat_amount REAL,
    currency TEXT,
    effective_date DATE,
    expiration_date DATE,
    region TEXT,
    tier_level TEXT,
    applicability TEXT,
    notes TEXT,
    created_by TEXT,
    created_at DATETIME,
    updated_by TEXT,
    updated_at DATETIME,
    minimum_fee REAL,
    maximum_fee REAL,
    surcharge_rate REAL,
    discount_rate REAL,
    is_active INTEGER
);

INSERT INTO marketplace_fee_structures (marketplace_id, fee_type, percentage, flat_amount, currency, effective_date, expiration_date, region, tier_level, applicability, notes, created_by, created_at, updated_by, updated_at, minimum_fee, maximum_fee, surcharge_rate, discount_rate, is_active) VALUES (601, 'listing', 2.5, 0.10, 'USD', '2025-01-01', '2025-12-31', 'NA', 'standard', 'global', 'standard fee', 'admin', '2025-01-01 00:00:00', 'admin', '2025-01-01 00:00:00', 0.05, 1.00, 0.5, 0.0, 1);
INSERT INTO marketplace_fee_structures (marketplace_id, fee_type, percentage, flat_amount, currency, effective_date, expiration_date, region, tier_level, applicability, notes, created_by, created_at, updated_by, updated_at, minimum_fee, maximum_fee, surcharge_rate, discount_rate, is_active) VALUES (602, 'transaction', 5.0, 0.20, 'EUR', '2025-02-01', '2025-11-30', 'EU', 'premium', 'regional', 'higher fee for premium', 'admin', '2025-02-01 00:00:00', 'admin', '2025-02-01 00:00:00', 0.10, 2.00, 0.7, 0.1, 1);
INSERT INTO marketplace_fee_structures (marketplace_id, fee_type, percentage, flat_amount, currency, effective_date, expiration_date, region, tier_level, applicability, notes, created_by, created_at, updated_by, updated_at, minimum_fee, maximum_fee, surcharge_rate, discount_rate, is_active) VALUES (603, 'withdrawal', 1.0, 0.05, 'JPY', '2025-03-15', NULL, 'AS', 'standard', 'global', 'low fee for withdrawals', 'admin', '2025-03-15 00:00:00', 'admin', '2025-03-15 00:00:00', 0.02, 0.50, 0.3, 0.0, 1);

-- Card artwork color palette
CREATE TABLE card_artwork_color_palette
(
    palette_id INTEGER PRIMARY KEY AUTOINCREMENT,
    artwork_id INTEGER,
    primary_color TEXT,
    secondary_color TEXT,
    accent_color TEXT,
    background_color TEXT,
    mood_tag TEXT,
    season_tag TEXT,
    dominant_hue TEXT,
    saturation_level REAL,
    brightness_level REAL,
    contrast_level REAL,
    usage_context TEXT,
    created_at DATETIME,
    created_by TEXT,
    last_modified_at DATETIME,
    last_modified_by TEXT,
    source_reference TEXT,
    notes TEXT,
    version INTEGER,
    is_active INTEGER
);

INSERT INTO card_artwork_color_palette (artwork_id, primary_color, secondary_color, accent_color, background_color, mood_tag, season_tag, dominant_hue, saturation_level, brightness_level, contrast_level, usage_context, created_at, created_by, last_modified_at, last_modified_by, source_reference, notes, version, is_active) VALUES (701, 'red', 'black', 'gold', 'white', 'aggressive', 'summer', 'warm', 0.85, 0.75, 0.65, 'cardfront', '2025-01-05 10:00:00', 'artistA', '2025-01-05 10:00:00', 'artistA', 'ref001', 'vibrant palette', 1, 1);
INSERT INTO card_artwork_color_palette (artwork_id, primary_color, secondary_color, accent_color, background_color, mood_tag, season_tag, dominant_hue, saturation_level, brightness_level, contrast_level, usage_context, created_at, created_by, last_modified_at, last_modified_by, source_reference, notes, version, is_active) VALUES (702, 'blue', 'gray', 'silver', 'black', 'mystic', 'winter', 'cool', 0.70, 0.60, 0.55, 'cardback', '2025-02-10 14:30:00', 'artistB', '2025-02-10 14:30:00', 'artistB', 'ref002', 'subtle tones', 1, 1);
INSERT INTO card_artwork_color_palette (artwork_id, primary_color, secondary_color, accent_color, background_color, mood_tag, season_tag, dominant_hue, saturation_level, brightness_level, contrast_level, usage_context, created_at, created_by, last_modified_at, last_modified_by, source_reference, notes, version, is_active) VALUES (703, 'green', 'brown', 'bronze', 'beige', 'earthy', 'autumn', 'neutral', 0.65, 0.70, 0.60, 'illustration', '2025-03-15 09:15:00', 'artistC', '2025-03-15 09:15:00', 'artistC', 'ref003', 'natural palette', 1, 1);

-- Player community engagements
CREATE TABLE player_community_engagements
(
    engagement_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    community_id INTEGER,
    interaction_type TEXT,
    content_id INTEGER,
    interaction_timestamp DATETIME,
    sentiment_score REAL,
    platform TEXT,
    channel TEXT,
    reply_count INTEGER,
    like_count INTEGER,
    share_count INTEGER,
    flags INTEGER,
    moderation_status TEXT,
    moderator_id INTEGER,
    notes TEXT,
    engagement_score REAL,
    duration_seconds INTEGER,
    location TEXT,
    device_type TEXT,
    created_at DATETIME
);

INSERT INTO player_community_engagements (player_id, community_id, interaction_type, content_id, interaction_timestamp, sentiment_score, platform, channel, reply_count, like_count, share_count, flags, moderation_status, moderator_id, notes, engagement_score, duration_seconds, location, device_type, created_at) VALUES (801, 10, 'post', 9001, '2025-01-12 08:00:00', 0.8, 'web', 'forum', 5, 20, 3, 0, 'approved', 401, 'first post', 85.0, 300, 'NA', 'desktop', '2025-01-12 08:00:00');
INSERT INTO player_community_engagements (player_id, community_id, interaction_type, content_id, interaction_timestamp, sentiment_score, platform, channel, reply_count, like_count, share_count, flags, moderation_status, moderator_id, notes, engagement_score, duration_seconds, location, device_type, created_at) VALUES (802, 12, 'comment', 9002, '2025-02-20 14:45:00', 0.6, 'mobile', 'chat', 2, 15, 1, 1, 'review', 402, 'needs review', 70.0, 120, 'EU', 'mobile', '2025-02-20 14:45:00');
INSERT INTO player_community_engagements (player_id, community_id, interaction_type, content_id, interaction_timestamp, sentiment_score, platform, channel, reply_count, like_count, share_count, flags, moderation_status, moderator_id, notes, engagement_score, duration_seconds, location, device_type, created_at) VALUES (803, 15, 'like', 9003, '2025-03-05 19:30:00', 0.9, 'web', 'article', 0, 30, 0, 0, 'approved', 403, 'positive feedback', 92.0, 10, 'AS', 'tablet', '2025-03-05 19:30:00');

-- Game mechanics experiment sessions
CREATE TABLE game_mechanics_experiment_sessions
(
    session_id INTEGER PRIMARY KEY AUTOINCREMENT,
    experiment_name TEXT,
    start_time DATETIME,
    end_time DATETIME,
    participant_count INTEGER,
    avg_latency_ms REAL,
    cpu_usage_percent REAL,
    memory_usage_mb REAL,
    result_summary TEXT,
    success_flag INTEGER,
    notes TEXT,
    version TEXT,
    initiated_by TEXT,
    test_environment TEXT,
    config_hash TEXT,
    bug_reported INTEGER,
    severity_level TEXT,
    remediation_status TEXT,
    updated_at DATETIME,
    created_at DATETIME,
    is_active INTEGER
);

INSERT INTO game_mechanics_experiment_sessions (experiment_name, start_time, end_time, participant_count, avg_latency_ms, cpu_usage_percent, memory_usage_mb, result_summary, success_flag, notes, version, initiated_by, test_environment, config_hash, bug_reported, severity_level, remediation_status, updated_at, created_at, is_active) VALUES ('ManaCurveTest', '2025-01-10 09:00:00', '2025-01-10 12:00:00', 150, 45.2, 68.5, 1024, 'balanced', 1, 'no issues', 'v1.2', 'devA', 'staging', 'abc123', 0, 'none', 'completed', '2025-01-10 12:01:00', '2025-01-10 09:00:00', 1);
INSERT INTO game_mechanics_experiment_sessions (experiment_name, start_time, end_time, participant_count, avg_latency_ms, cpu_usage_percent, memory_usage_mb, result_summary, success_flag, notes, version, initiated_by, test_environment, config_hash, bug_reported, severity_level, remediation_status, updated_at, created_at, is_active) VALUES ('DrawProbability', '2025-02-15 13:30:00', '2025-02-15 16:45:00', 200, 52.7, 72.0, 1150, 'minor variance', 0, 'adjusted weights', 'v1.3', 'devB', 'production', 'def456', 1, 'medium', 'inprogress', '2025-02-15 16:46:00', '2025-02-15 13:30:00', 1);
INSERT INTO game_mechanics_experiment_sessions (experiment_name, start_time, end_time, participant_count, avg_latency_ms, cpu_usage_percent, memory_usage_mb, result_summary, success_flag, notes, version, initiated_by, test_environment, config_hash, bug_reported, severity_level, remediation_status, updated_at, created_at, is_active) VALUES ('CombatResolution', '2025-03-20 10:15:00', '2025-03-20 14:00:00', 180, 48.5, 65.0, 980, 'stable', 1, 'optimal performance', 'v2.0', 'devC', 'qa', 'ghi789', 0, 'none', 'completed', '2025-03-20 14:01:00', '2025-03-20 10:15:00', 1);