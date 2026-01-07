-- Augmented reality experience logs
CREATE TABLE ar_experience_logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    ar_session_id TEXT,
    device_type TEXT,
    os_version TEXT,
    start_timestamp DATETIME,
    end_timestamp DATETIME,
    latitude REAL,
    longitude REAL,
    ambient_light INTEGER,
    motion_sensor_data TEXT,
    headset_model TEXT,
    firmware_version TEXT,
    experience_type TEXT,
    objects_interacted INTEGER,
    avg_fps REAL,
    peak_fps REAL,
    data_usage_mb REAL,
    error_code INTEGER,
    feedback_score INTEGER,
    notes TEXT
);
INSERT INTO ar_experience_logs (player_id, ar_session_id, device_type, os_version, start_timestamp, end_timestamp, latitude, longitude, ambient_light, motion_sensor_data, headset_model, firmware_version, experience_type, objects_interacted, avg_fps, peak_fps, data_usage_mb, error_code, feedback_score, notes) VALUES (101, 'sessA1', 'Mobile', '13.4', '2025-03-01 10:00:00', '2025-03-01 10:45:00', 37.7749, -122.4194, 300, 'gyro123', 'XRHeadsetX', 'v2.1', 'Exploration', 12, 58.5, 72.0, 150.2, 0, 9, 'smooth experience');
INSERT INTO ar_experience_logs (player_id, ar_session_id, device_type, os_version, start_timestamp, end_timestamp, latitude, longitude, ambient_light, motion_sensor_data, headset_model, firmware_version, experience_type, objects_interacted, avg_fps, peak_fps, data_usage_mb, error_code, feedback_score, notes) VALUES (102, 'sessB2', 'Tablet', '14.0', '2025-03-02 14:15:00', '2025-03-02 15:00:00', 40.7128, -74.0060, 450, 'accel456', 'VisionPro', 'v3.0', 'Combat', 8, 62.3, 80.1, 180.5, 2, 7, 'minor lag at start');
INSERT INTO ar_experience_logs (player_id, ar_session_id, device_type, os_version, start_timestamp, end_timestamp, latitude, longitude, ambient_light, motion_sensor_data, headset_model, firmware_version, experience_type, objects_interacted, avg_fps, peak_fps, data_usage_mb, error_code, feedback_score, notes) VALUES (103, 'sessC3', 'Desktop', '12.9', '2025-03-03 09:30:00', '2025-03-03 10:20:00', 34.0522, -118.2437, 200, 'sensor789', 'ARGlassesZ', 'v1.8', 'Puzzle', 15, 55.0, 68.4, 120.0, 0, 8, 'enjoyable puzzles');

-- Tabletop configuration settings
CREATE TABLE tabletop_configuration (
    config_id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    table_width_cm INTEGER,
    table_length_cm INTEGER,
    seat_count INTEGER,
    chair_type TEXT,
    lighting_intensity_lux INTEGER,
    background_theme TEXT,
    music_playlist_id TEXT,
    sound_level_db INTEGER,
    floor_material TEXT,
    wall_color TEXT,
    ceiling_height_cm INTEGER,
    projector_model TEXT,
    screen_size_inches INTEGER,
    wifi_band TEXT,
    network_latency_ms INTEGER,
    power_backup_minutes INTEGER,
    sanitation_level TEXT,
    custom_ruleset_id TEXT,
    created_at DATETIME,
    updated_at DATETIME
);
INSERT INTO tabletop_configuration (tournament_id, table_width_cm, table_length_cm, seat_count, chair_type, lighting_intensity_lux, background_theme, music_playlist_id, sound_level_db, floor_material, wall_color, ceiling_height_cm, projector_model, screen_size_inches, wifi_band, network_latency_ms, power_backup_minutes, sanitation_level, custom_ruleset_id, created_at, updated_at) VALUES (201, 250, 200, 8, 'Ergonomic', 1200, 'FantasyForest', 'plA1', 65, 'Carpet', 'Gray', 300, 'ProjX200', 55, '5GHz', 15, 30, 'High', 'ruleSetAlpha', '2025-01-10 08:00:00', '2025-01-15 09:00:00');
INSERT INTO tabletop_configuration (tournament_id, table_width_cm, table_length_cm, seat_count, chair_type, lighting_intensity_lux, background_theme, music_playlist_id, sound_level_db, floor_material, wall_color, ceiling_height_cm, projector_model, screen_size_inches, wifi_band, network_latency_ms, power_backup_minutes, sanitation_level, custom_ruleset_id, created_at, updated_at) VALUES (202, 300, 250, 10, 'Standard', 1500, 'SpaceStation', 'plB2', 70, 'Hardwood', 'Blue', 350, 'ProjZ300', 65, '2.4GHz', 20, 45, 'Medium', 'ruleSetBeta', '2025-02-01 10:30:00', '2025-02-05 11:15:00');
INSERT INTO tabletop_configuration (tournament_id, table_width_cm, table_length_cm, seat_count, chair_type, lighting_intensity_lux, background_theme, music_playlist_id, sound_level_db, floor_material, wall_color, ceiling_height_cm, projector_model, screen_size_inches, wifi_band, network_latency_ms, power_backup_minutes, sanitation_level, custom_ruleset_id, created_at, updated_at) VALUES (203, 220, 180, 6, 'Leather', 1000, 'MedievalHall', 'plC3', 60, 'Stone', 'Beige', 280, 'ProjY150', 50, '5GHz', 12, 20, 'High', 'ruleSetGamma', '2025-03-12 14:45:00', '2025-03-12 15:00:00');

-- Beta test feedback records
CREATE TABLE beta_test_feedback (
    feedback_id INTEGER PRIMARY KEY AUTOINCREMENT,
    tester_user_id INTEGER,
    test_phase TEXT,
    platform TEXT,
    app_version TEXT,
    start_date DATE,
    end_date DATE,
    bugs_reported INTEGER,
    feature_requests INTEGER,
    satisfaction_rating INTEGER,
    time_spent_hours REAL,
    cpu_usage_percent REAL,
    memory_usage_mb REAL,
    battery_consumption_percent REAL,
    network_data_mb REAL,
    crash_count INTEGER,
    reproducibility_score INTEGER,
    comments TEXT,
    is_critical INTEGER,
    reported_via TEXT
);
INSERT INTO beta_test_feedback (tester_user_id, test_phase, platform, app_version, start_date, end_date, bugs_reported, feature_requests, satisfaction_rating, time_spent_hours, cpu_usage_percent, memory_usage_mb, battery_consumption_percent, network_data_mb, crash_count, reproducibility_score, comments, is_critical, reported_via) VALUES (301, 'Alpha', 'iOS', '0.9.1', '2025-02-01', '2025-02-10', 5, 2, 8, 12.5, 45.2, 512.0, 10.3, 250.0, 1, 7, 'stable overall', 0, 'InApp');
INSERT INTO beta_test_feedback (tester_user_id, test_phase, platform, app_version, start_date, end_date, bugs_reported, feature_requests, satisfaction_rating, time_spent_hours, cpu_usage_percent, memory_usage_mb, battery_consumption_percent, network_data_mb, crash_count, reproducibility_score, comments, is_critical, reported_via) VALUES (302, 'Beta', 'Android', '1.0.0', '2025-03-01', '2025-03-15', 12, 5, 6, 20.0, 55.0, 768.0, 15.0, 500.0, 3, 5, 'needs UI polish', 1, 'Email');
INSERT INTO beta_test_feedback (tester_user_id, test_phase, platform, app_version, start_date, end_date, bugs_reported, feature_requests, satisfaction_rating, time_spent_hours, cpu_usage_percent, memory_usage_mb, battery_consumption_percent, network_data_mb, crash_count, reproducibility_score, comments, is_critical, reported_via) VALUES (303, 'ReleaseCandidate', 'Windows', '1.0.1', '2025-04-01', '2025-04-07', 3, 1, 9, 15.2, 38.5, 1024.0, 8.5, 350.0, 0, 9, 'great performance', 0, 'WebForm');

-- AI opponent profile definitions
CREATE TABLE ai_opponent_profile (
    profile_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ai_version TEXT,
    difficulty_level TEXT,
    strategy_type TEXT,
    aggression_score REAL,
    bluffing_score REAL,
    resource_management_score REAL,
    deck_preference TEXT,
    win_rate_percent REAL,
    average_game_length_minutes REAL,
    adaptation_speed REAL,
    learning_enabled INTEGER,
    training_data_version TEXT,
    last_update_date DATE,
    model_size_mb REAL,
    compute_requirements_gflops REAL,
    supported_formats TEXT,
    locale TEXT,
    remarks TEXT,
    created_by INTEGER,
    created_at DATETIME
);
INSERT INTO ai_opponent_profile (ai_version, difficulty_level, strategy_type, aggression_score, bluffing_score, resource_management_score, deck_preference, win_rate_percent, average_game_length_minutes, adaptation_speed, learning_enabled, training_data_version, last_update_date, model_size_mb, compute_requirements_gflops, supported_formats, locale, remarks, created_by, created_at) VALUES ('v1.0', 'Easy', 'Aggressive', 0.3, 0.2, 0.5, 'Red', 45.0, 12.5, 0.6, 1, 'data2023', '2025-01-15', 150.0, 2.5, 'json,xml', 'enUS', 'initial release', 1, '2025-01-15 09:00:00');
INSERT INTO ai_opponent_profile (ai_version, difficulty_level, strategy_type, aggression_score, bluffing_score, resource_management_score, deck_preference, win_rate_percent, average_game_length_minutes, adaptation_speed, learning_enabled, training_data_version, last_update_date, model_size_mb, compute_requirements_gflops, supported_formats, locale, remarks, created_by, created_at) VALUES ('v1.3', 'Medium', 'Control', 0.5, 0.4, 0.7, 'Blue', 58.2, 15.0, 0.8, 1, 'data2024', '2025-02-20', 210.0, 3.2, 'json', 'enGB', 'updated tactics', 2, '2025-02-20 10:30:00');
INSERT INTO ai_opponent_profile (ai_version, difficulty_level, strategy_type, aggression_score, bluffing_score, resource_management_score, deck_preference, win_rate_percent, average_game_length_minutes, adaptation_speed, learning_enabled, training_data_version, last_update_date, model_size_mb, compute_requirements_gflops, supported_formats, locale, remarks, created_by, created_at) VALUES ('v2.0', 'Hard', 'Combo', 0.7, 0.6, 0.8, 'Green', 71.5, 18.3, 0.9, 1, 'data2025', '2025-03-30', 320.0, 4.5, 'json,proto', 'frFR', 'expert level', 3, '2025-03-30 14:45:00');

-- Localization string repository
CREATE TABLE localization_string (
    string_id INTEGER PRIMARY KEY AUTOINCREMENT,
    language_code TEXT,
    context TEXT,
    key_name TEXT,
    default_text TEXT,
    translated_text TEXT,
    character_limit INTEGER,
    last_modified_by INTEGER,
    last_modified_at DATETIME,
    is_reviewed INTEGER,
    reviewer_user_id INTEGER,
    review_date DATE,
    version_number INTEGER,
    placeholder_count INTEGER,
    formatting_tags TEXT,
    note TEXT,
    usage_frequency INTEGER,
    module_name TEXT,
    source_file TEXT,
    line_number INTEGER
);
INSERT INTO localization_string (language_code, context, key_name, default_text, translated_text, character_limit, last_modified_by, last_modified_at, is_reviewed, reviewer_user_id, review_date, version_number, placeholder_count, formatting_tags, note, usage_frequency, module_name, source_file, line_number) VALUES ('enUS', 'Menu', 'PLAY_BUTTON', 'Play', 'Play', 10, 101, '2025-01-05 08:00:00', 1, 201, '2025-01-06', 2, 0, 'none', 'core UI', 1500, 'UI', 'menu.xml', 45);
INSERT INTO localization_string (language_code, context, key_name, default_text, translated_text, character_limit, last_modified_by, last_modified_at, is_reviewed, reviewer_user_id, review_date, version_number, placeholder_count, formatting_tags, note, usage_frequency, module_name, source_file, line_number) VALUES ('esES', 'Menu', 'PLAY_BUTTON', 'Play', 'Jugar', 10, 102, '2025-01-07 09:15:00', 1, 202, '2025-01-08', 2, 0, 'none', 'translated UI', 1200, 'UI', 'menu_es.xml', 45);
INSERT INTO localization_string (language_code, context, key_name, default_text, translated_text, character_limit, last_modified_by, last_modified_at, is_reviewed, reviewer_user_id, review_date, version_number, placeholder_count, formatting_tags, note, usage_frequency, module_name, source_file, line_number) VALUES ('frFR', 'Menu', 'PLAY_BUTTON', 'Play', 'Jouer', 10, 103, '2025-01-09 10:30:00', 1, 203, '2025-01-10', 2, 0, 'none', 'french UI', 1100, 'UI', 'menu_fr.xml', 45);

-- Dynamic pricing rules for marketplace
CREATE TABLE dynamic_pricing_rule (
    rule_id INTEGER PRIMARY KEY AUTOINCREMENT,
    product_category TEXT,
    region_code TEXT,
    base_price_usd REAL,
    multiplier REAL,
    min_price_usd REAL,
    max_price_usd REAL,
    effective_start_date DATE,
    effective_end_date DATE,
    demand_index REAL,
    supply_index REAL,
    competitor_price_factor REAL,
    seasonal_adjustment REAL,
    promotion_code TEXT,
    priority_level INTEGER,
    is_active INTEGER,
    created_by INTEGER,
    created_at DATETIME,
    updated_by INTEGER,
    updated_at DATETIME
);
INSERT INTO dynamic_pricing_rule (product_category, region_code, base_price_usd, multiplier, min_price_usd, max_price_usd, effective_start_date, effective_end_date, demand_index, supply_index, competitor_price_factor, seasonal_adjustment, promotion_code, priority_level, is_active, created_by, created_at, updated_by, updated_at) VALUES ('CardBack', 'NA', 4.99, 1.1, 3.99, 6.99, '2025-04-01', '2025-06-30', 1.2, 0.8, 0.95, 0.0, 'SPRING2025', 1, 1, 1, '2025-03-20 12:00:00', 1, '2025-04-01 09:00:00');
INSERT INTO dynamic_pricing_rule (product_category, region_code, base_price_usd, multiplier, min_price_usd, max_price_usd, effective_start_date, effective_end_date, demand_index, supply_index, competitor_price_factor, seasonal_adjustment, promotion_code, priority_level, is_active, created_by, created_at, updated_by, updated_at) VALUES ('BoosterPack', 'EU', 12.99, 1.0, 10.99, 14.99, '2025-07-01', '2025-09-30', 1.5, 0.9, 1.05, -0.1, 'SUMMER2025', 2, 1, 2, '2025-06-15 11:30:00', 2, '2025-07-01 08:45:00');
INSERT INTO dynamic_pricing_rule (product_category, region_code, base_price_usd, multiplier, min_price_usd, max_price_usd, effective_start_date, effective_end_date, demand_index, supply_index, competitor_price_factor, seasonal_adjustment, promotion_code, priority_level, is_active, created_by, created_at, updated_by, updated_at) VALUES ('CardSleeve', 'APAC', 2.49, 0.9, 1.99, 3.49, '2025-10-01', '2025-12-31', 0.8, 1.1, 0.9, 0.2, 'FALL2025', 3, 1, 3, '2025-09-20 14:20:00', 3, '2025-10-01 07:15:00');

-- Heatmap zone definitions for live events
CREATE TABLE heatmap_zone (
    zone_id INTEGER PRIMARY KEY AUTOINCREMENT,
    map_name TEXT,
    zone_name TEXT,
    x_start INTEGER,
    y_start INTEGER,
    x_end INTEGER,
    y_end INTEGER,
    avg_players REAL,
    peak_players INTEGER,
    avg_duration_seconds REAL,
    hazard_level TEXT,
    resource_density REAL,
    strategic_value REAL,
    control_percentage REAL,
    last_updated DATETIME,
    created_by INTEGER,
    notes TEXT,
    is_active INTEGER,
    color_code TEXT,
    display_order INTEGER
);
INSERT INTO heatmap_zone (map_name, zone_name, x_start, y_start, x_end, y_end, avg_players, peak_players, avg_duration_seconds, hazard_level, resource_density, strategic_value, control_percentage, last_updated, created_by, notes, is_active, color_code, display_order) VALUES ('ArenaAlpha', 'NorthWing', 0, 0, 500, 300, 45.2, 80, 120.5, 'Low', 0.7, 0.6, 55.0, '2025-04-10 10:00:00', 101, 'high traffic area', 1, '#FFAA00', 1);
INSERT INTO heatmap_zone (map_name, zone_name, x_start, y_start, x_end, y_end, avg_players, peak_players, avg_duration_seconds, hazard_level, resource_density, strategic_value, control_percentage, last_updated, created_by, notes, is_active, color_code, display_order) VALUES ('ArenaAlpha', 'CentralPlaza', 501, 0, 1000, 300, 60.8, 110, 150.0, 'Medium', 0.9, 0.8, 70.0, '2025-04-10 10:05:00', 102, 'core combat zone', 1, '#FF5500', 2);
INSERT INTO heatmap_zone (map_name, zone_name, x_start, y_start, x_end, y_end, avg_players, peak_players, avg_duration_seconds, hazard_level, resource_density, strategic_value, control_percentage, last_updated, created_by, notes, is_active, color_code, display_order) VALUES ('ArenaAlpha', 'SouthGarden', 0, 301, 1000, 600, 30.4, 55, 90.3, 'Low', 0.5, 0.4, 40.0, '2025-04-10 10:10:00', 103, 'quiet area', 1, '#00AAFF', 3);

-- Social group relation mappings
CREATE TABLE social_group_relation (
    relation_id INTEGER PRIMARY KEY AUTOINCREMENT,
    group_a_id INTEGER,
    group_b_id INTEGER,
    relation_type TEXT,
    start_date DATE,
    end_date DATE,
    interaction_frequency_per_month INTEGER,
    shared_events_count INTEGER,
    conflict_score REAL,
    alliance_strength REAL,
    created_at DATETIME,
    created_by INTEGER,
    updated_at DATETIME,
    updated_by INTEGER,
    notes TEXT,
    is_active INTEGER,
    governance_model TEXT,
    external_affiliation TEXT,
    mutual_members_count INTEGER,
    data_source TEXT
);
INSERT INTO social_group_relation (group_a_id, group_b_id, relation_type, start_date, end_date, interaction_frequency_per_month, shared_events_count, conflict_score, alliance_strength, created_at, created_by, updated_at, updated_by, notes, is_active, governance_model, external_affiliation, mutual_members_count, data_source) VALUES (201, 202, 'Alliance', '2024-01-01', NULL, 5, 12, 0.2, 0.9, '2025-03-01 09:00:00', 1, '2025-03-01 09:00:00', 1, 'strategic partnership', 1, 'Democratic', 'RegionalLeague', 8, 'InternalSurvey');
INSERT INTO social_group_relation (group_a_id, group_b_id, relation_type, start_date, end_date, interaction_frequency_per_month, shared_events_count, conflict_score, alliance_strength, created_at, created_by, updated_at, updated_by, notes, is_active, governance_model, external_affiliation, mutual_members_count, data_source) VALUES (203, 204, 'Rivalry', '2023-06-15', NULL, 3, 5, 0.7, 0.3, '2025-03-02 10:30:00', 2, '2025-03-02 10:30:00', 2, 'competitive tension', 1, 'Autocratic', 'NationalCircuit', 2, 'MatchData');
INSERT INTO social_group_relation (group_a_id, group_b_id, relation_type, start_date, end_date, interaction_frequency_per_month, shared_events_count, conflict_score, alliance_strength, created_at, created_by, updated_at, updated_by, notes, is_active, governance_model, external_affiliation, mutual_members_count, data_source) VALUES (205, 206, 'Collaboration', '2022-09-01', '2024-12-31', 2, 8, 0.1, 0.8, '2025-03-03 14:45:00', 3, '2025-03-03 14:45:00', 3, 'project based', 0, 'Flat', 'GlobalOrg', 5, 'ProjectPortal');

-- Eco-friendly initiatives at venues
CREATE TABLE eco_friendly_initiative (
    initiative_id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    initiative_type TEXT,
    start_date DATE,
    end_date DATE,
    target_reduction_co2_tons REAL,
    actual_reduction_co2_tons REAL,
    budget_usd REAL,
    sponsor_id INTEGER,
    coordinator_user_id INTEGER,
    status TEXT,
    verification_report_url TEXT,
    notes TEXT,
    created_at DATETIME,
    created_by INTEGER,
    updated_at DATETIME,
    updated_by INTEGER,
    compliance_certified INTEGER,
    certification_body TEXT,
    impact_score REAL,
    public_announcement_date DATE
);
INSERT INTO eco_friendly_initiative (venue_id, initiative_type, start_date, end_date, target_reduction_co2_tons, actual_reduction_co2_tons, budget_usd, sponsor_id, coordinator_user_id, status, verification_report_url, notes, created_at, created_by, updated_at, updated_by, compliance_certified, certification_body, impact_score, public_announcement_date) VALUES (301, 'SolarPanels', '2025-01-01', '2025-12-31', 120.5, 115.0, 250000, 401, 501, 'Active', 'http://example.com/report1', 'installed 200kW panels', '2025-01-02 08:00:00', 1, '2025-06-01 09:30:00', 1, 1, 'GreenCert', 8.5, '2025-06-15');
INSERT INTO eco_friendly_initiative (venue_id, initiative_type, start_date, end_date, target_reduction_co2_tons, actual_reduction_co2_tons, budget_usd, sponsor_id, coordinator_user_id, status, verification_report_url, notes, created_at, created_by, updated_at, updated_by, compliance_certified, certification_body, impact_score, public_announcement_date) VALUES (302, 'WasteRecycling', '2025-03-01', '2025-09-30', 45.0, 40.2, 80000, 402, 502, 'Completed', 'http://example.com/report2', 'recycled 85% waste', '2025-03-02 10:15:00', 2, '2025-10-01 11:00:00', 2, 1, 'EcoLabel', 7.2, '2025-10-10');
INSERT INTO eco_friendly_initiative (venue_id, initiative_type, start_date, end_date, target_reduction_co2_tons, actual_reduction_co2_tons, budget_usd, sponsor_id, coordinator_user_id, status, verification_report_url, notes, created_at, created_by, updated_at, updated_by, compliance_certified, certification_body, impact_score, public_announcement_date) VALUES (303, 'LEDLighting', '2025-05-15', NULL, 30.0, NULL, 120000, 403, 503, 'Ongoing', 'http://example.com/report3', 'upgraded to LED', '2025-05-16 09:45:00', 3, '2025-08-20 14:20:00', 3, 0, NULL, 0.0, NULL);

-- Regulatory audit logs for compliance
CREATE TABLE regulatory_audit_log (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    regulator_name TEXT,
    audit_date DATE,
    location TEXT,
    scope TEXT,
    findings_summary TEXT,
    severity_level TEXT,
    corrective_action_required INTEGER,
    deadline_date DATE,
    responsible_party TEXT,
    status TEXT,
    mitigation_plan_url TEXT,
    follow_up_date DATE,
    auditor_user_id INTEGER,
    notes TEXT,
    created_at DATETIME,
    created_by INTEGER,
    updated_at DATETIME,
    updated_by INTEGER,
    audit_score REAL,
    compliance_percentage REAL
);
INSERT INTO regulatory_audit_log (regulator_name, audit_date, location, scope, findings_summary, severity_level, corrective_action_required, deadline_date, responsible_party, status, mitigation_plan_url, follow_up_date, auditor_user_id, notes, created_at, created_by, updated_at, updated_by, audit_score, compliance_percentage) VALUES ('GamingCommission', '2025-02-20', 'NewYork', 'Financial', 'minor reporting gaps', 'Low', 1, '2025-04-01', 'FinanceDept', 'Open', 'http://example.com/mitigation1', '2025-04-15', 601, 'awaiting documents', '2025-02-21 08:30:00', 1, '2025-03-10 09:00:00', 1, 85.5, 92.0);
INSERT INTO regulatory_audit_log (regulator_name, audit_date, location, scope, findings_summary, severity_level, corrective_action_required, deadline_date, responsible_party, status, mitigation_plan_url, follow_up_date, auditor_user_id, notes, created_at, created_by, updated_at, updated_by, audit_score, compliance_percentage) VALUES ('DataProtectionAgency', '2025-03-15', 'London', 'Privacy', 'incomplete user consent logs', 'Medium', 1, '2025-05-30', 'LegalTeam', 'Open', 'http://example.com/mitigation2', '2025-06-10', 602, 'high priority', '2025-03-16 10:00:00', 2, '2025-04-20 11:20:00', 2, 72.0, 80.5);
INSERT INTO regulatory_audit_log (regulator_name, audit_date, location, scope, findings_summary, severity_level, corrective_action_required, deadline_date, responsible_party, status, mitigation_plan_url, follow_up_date, auditor_user_id, notes, created_at, created_by, updated_at, updated_by, audit_score, compliance_percentage) VALUES ('EnvironmentalAgency', '2025-04-05', 'Tokyo', 'Sustainability', 'excess energy consumption', 'High', 1, '2025-07-01', 'Operations', 'Open', 'http://example.com/mitigation3', '2025-07-15', 603, 'requires immediate action', '2025-04-06 14:45:00', 3, '2025-05-01 15:30:00', 3, 60.0, 70.0);