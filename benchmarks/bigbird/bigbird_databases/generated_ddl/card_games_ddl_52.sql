-- Game physics constants and parameters
CREATE TABLE game_physics_parameters
(
    param_id         INTEGER PRIMARY KEY AUTOINCREMENT,
    param_name       TEXT,
    description      TEXT,
    value_float      REAL,
    unit             TEXT,
    is_active        INTEGER,
    created_at       DATE,
    updated_at       DATE,
    min_value        REAL,
    max_value        REAL,
    source           TEXT,
    version          TEXT,
    notes            TEXT,
    category         TEXT,
    subcategory      TEXT,
    related_param    TEXT,
    default_value    REAL,
    priority         INTEGER,
    sensitivity      REAL,
    calibration_date DATE,
    calibrated_by    TEXT
);

INSERT INTO game_physics_parameters (param_name, description, value_float, unit, is_active, created_at, updated_at, min_value, max_value, source, version, notes, category, subcategory, related_param, default_value, priority, sensitivity, calibration_date, calibrated_by) VALUES ('gravity', 'Standard gravity constant', 9.81, 'm/s2', 1, '2024-01-01', '2024-01-01', 9.5, 10.0, 'physics_lab', 'v1', 'used in projectile calculations', 'environment', 'force', NULL, 9.81, 1, 0.01, '2023-12-15', 'drsmith');
INSERT INTO game_physics_parameters (param_name, description, value_float, unit, is_active, created_at, updated_at, min_value, max_value, source, version, notes, category, subcategory, related_param, default_value, priority, sensitivity, calibration_date, calibrated_by) VALUES ('air_density', 'Density of air at sea level', 1.225, 'kg/m3', 1, '2024-01-02', '2024-01-02', 1.0, 1.5, 'meteorology_dept', 'v2', 'affects drag calculations', 'environment', 'fluid', NULL, 1.225, 2, 0.005, '2023-12-20', 'janedoe');
INSERT INTO game_physics_parameters (param_name, description, value_float, unit, is_active, created_at, updated_at, min_value, max_value, source, version, notes, category, subcategory, related_param, default_value, priority, sensitivity, calibration_date, calibrated_by) VALUES ('friction_coefficient', 'Default ground friction', 0.6, 'unitless', 1, '2024-01-03', '2024-01-03', 0.4, 0.8, 'mechanics_lab', 'v1', 'used for character movement', 'surface', 'friction', NULL, 0.6, 3, 0.02, '2023-12-25', 'boblee');

-- Resources allocated for community events
CREATE TABLE community_event_resources
(
    resource_id            INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id               INTEGER,
    resource_type          TEXT,
    quantity               INTEGER,
    unit                   TEXT,
    location               TEXT,
    allocated_date         DATE,
    release_date           DATE,
    status                 TEXT,
    responsible_person    TEXT,
    cost                   REAL,
    currency               TEXT,
    vendor                 TEXT,
    contact_info           TEXT,
    notes                  TEXT,
    priority_level         INTEGER,
    depreciation_rate      REAL,
    lifespan_years         INTEGER,
    maintenance_schedule   TEXT,
    warranty_expiration    DATE,
    insurance_provider     TEXT
);

INSERT INTO community_event_resources (event_id, resource_type, quantity, unit, location, allocated_date, release_date, status, responsible_person, cost, currency, vendor, contact_info, notes, priority_level, depreciation_rate, lifespan_years, maintenance_schedule, warranty_expiration, insurance_provider) VALUES (101, 'portable_stage', 1, 'unit', 'main_hall', '2024-03-01', '2024-03-05', 'allocated', 'alice', 2500.00, 'USD', 'stageco', '5551234', 'requires assembly crew', 1, 0.05, 5, 'annual', '2029-03-01', 'global_insure');
INSERT INTO community_event_resources (event_id, resource_type, quantity, unit, location, allocated_date, release_date, status, responsible_person, cost, currency, vendor, contact_info, notes, priority_level, depreciation_rate, lifespan_years, maintenance_schedule, warranty_expiration, insurance_provider) VALUES (102, 'audio_mixer', 2, 'unit', 'sound_room', '2024-04-10', '2024-04-12', 'allocated', 'bob', 800.00, 'USD', 'audioequip', '5555678', 'check firmware before event', 2, 0.03, 3, 'semiannual', '2027-04-10', 'sound_insure');
INSERT INTO community_event_resources (event_id, resource_type, quantity, unit, location, allocated_date, release_date, status, responsible_person, cost, currency, vendor, contact_info, notes, priority_level, depreciation_rate, lifespan_years, maintenance_schedule, warranty_expiration, insurance_provider) VALUES (103, 'branding_banner', 5, 'piece', 'lobby', '2024-05-15', '2024-05-16', 'allocated', 'carol', 1200.00, 'USD', 'printworks', '5559012', 'ensure correct logo version', 3, 0.10, 2, 'none', '2026-05-15', 'brand_insure');

-- Streaming bandwidth metrics per session
CREATE TABLE streaming_bandwidth_metrics
(
    metric_id            INTEGER PRIMARY KEY AUTOINCREMENT,
    session_id           INTEGER,
    timestamp            DATETIME,
    bandwidth_mbps       REAL,
    latency_ms           INTEGER,
    packet_loss_pct      REAL,
    jitter_ms            REAL,
    resolution           TEXT,
    frame_rate           INTEGER,
    codec                TEXT,
    bitrate_kbps         INTEGER,
    buffer_seconds       REAL,
    errors               INTEGER,
    user_count           INTEGER,
    region               TEXT,
    isp                  TEXT,
    device_type          TEXT,
    network_type         TEXT,
    average_quality_score REAL,
    max_quality_score    REAL,
    min_quality_score    REAL,
    duration_seconds     INTEGER
);

INSERT INTO streaming_bandwidth_metrics (session_id, timestamp, bandwidth_mbps, latency_ms, packet_loss_pct, jitter_ms, resolution, frame_rate, codec, bitrate_kbps, buffer_seconds, errors, user_count, region, isp, device_type, network_type, average_quality_score, max_quality_score, min_quality_score, duration_seconds) VALUES (2001, '2024-06-01 12:00:00', 8.5, 45, 0.2, 5.1, '1920x1080', 60, 'h264', 4500, 2.5, 0, 1200, 'NA', 'comcast', 'desktop', 'fiber', 4.5, 5.0, 3.8, 3600);
INSERT INTO streaming_bandwidth_metrics (session_id, timestamp, bandwidth_mbps, latency_ms, packet_loss_pct, jitter_ms, resolution, frame_rate, codec, bitrate_kbps, buffer_seconds, errors, user_count, region, isp, device_type, network_type, average_quality_score, max_quality_score, min_quality_score, duration_seconds) VALUES (2002, '2024-06-01 13:00:00', 5.2, 78, 0.5, 12.3, '1280x720', 30, 'vp9', 2500, 3.0, 2, 800, 'EU', 'vodafone', 'mobile', '4g', 3.9, 4.5, 2.7, 5400);
INSERT INTO streaming_bandwidth_metrics (session_id, timestamp, bandwidth_mbps, latency_ms, packet_loss_pct, jitter_ms, resolution, frame_rate, codec, bitrate_kbps, buffer_seconds, errors, user_count, region, isp, device_type, network_type, average_quality_score, max_quality_score, min_quality_score, duration_seconds) VALUES (2003, '2024-06-01 14:30:00', 12.0, 30, 0.1, 3.0, '3840x2160', 60, 'hevc', 15000, 1.8, 0, 1500, 'ASIA', 'ntt', 'smart_tv', 'fiber', 4.8, 5.0, 4.2, 7200);

-- Sponsor engagement survey responses
CREATE TABLE sponsor_engagement_surveys
(
    survey_id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id                    INTEGER,
    event_id                      INTEGER,
    respondent_name               TEXT,
    respondent_role               TEXT,
    response_date                 DATE,
    satisfaction_score            INTEGER,
    likelihood_to_recommend       INTEGER,
    budget_utilization_pct        REAL,
    brand_visibility_score        INTEGER,
    feedback_text                 TEXT,
    additional_comments           TEXT,
    overall_rating                INTEGER,
    net_promoter_score            INTEGER,
    repeat_participation_intent   INTEGER,
    marketing_roi_estimate        REAL,
    target_audience_match         INTEGER,
    partnership_quality           INTEGER,
    logistics_rating              INTEGER,
    communication_rating          INTEGER
);

INSERT INTO sponsor_engagement_surveys (sponsor_id, event_id, respondent_name, respondent_role, response_date, satisfaction_score, likelihood_to_recommend, budget_utilization_pct, brand_visibility_score, feedback_text, additional_comments, overall_rating, net_promoter_score, repeat_participation_intent, marketing_roi_estimate, target_audience_match, partnership_quality, logistics_rating, communication_rating) VALUES (301, 101, 'david', 'marketing_manager', '2024-05-20', 8, 9, 85.5, 7, 'overall good experience', 'would like more branding slots', 8, 70, 1, 1.2, 8, 9, 8, 9);
INSERT INTO sponsor_engagement_surveys (sponsor_id, event_id, respondent_name, respondent_role, response_date, satisfaction_score, likelihood_to_recommend, budget_utilization_pct, brand_visibility_score, feedback_text, additional_comments, overall_rating, net_promoter_score, repeat_participation_intent, marketing_roi_estimate, target_audience_match, partnership_quality, logistics_rating, communication_rating) VALUES (302, 102, 'emma', 'event_coordinator', '2024-06-02', 7, 8, 78.0, 6, 'logistics could improve', 'consider earlier setup times', 7, 55, 0, 0.9, 7, 7, 6, 8);
INSERT INTO sponsor_engagement_surveys (sponsor_id, event_id, respondent_name, respondent_role, response_date, satisfaction_score, likelihood_to_recommend, budget_utilization_pct, brand_visibility_score, feedback_text, additional_comments, overall_rating, net_promoter_score, repeat_participation_intent, marketing_roi_estimate, target_audience_match, partnership_quality, logistics_rating, communication_rating) VALUES (303, 103, 'frank', 'brand_director', '2024-06-15', 9, 10, 92.3, 9, 'excellent exposure', 'looking forward to next year', 9, 80, 1, 1.5, 9, 10, 9, 10);

-- Extended metadata for digital artifacts
CREATE TABLE digital_artifact_metadata_ext
(
    artifact_id          INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_hash           TEXT,
    file_format          TEXT,
    resolution           TEXT,
    file_size_mb         REAL,
    creator_id           INTEGER,
    creation_date        DATE,
    last_modified_date   DATE,
    version_number       TEXT,
    license_type         TEXT,
    usage_rights         TEXT,
    metadata_schema      TEXT,
    tags                 TEXT,
    description          TEXT,
    related_artifact_ids TEXT,
    provenance           TEXT,
    checksum             TEXT,
    encryption_status    TEXT,
    access_level         TEXT,
    distribution_channel TEXT,
    deprecation_status   TEXT,
    replacement_artifact_id INTEGER
);

INSERT INTO digital_artifact_metadata_ext (asset_hash, file_format, resolution, file_size_mb, creator_id, creation_date, last_modified_date, version_number, license_type, usage_rights, metadata_schema, tags, description, related_artifact_ids, provenance, checksum, encryption_status, access_level, distribution_channel, deprecation_status, replacement_artifact_id) VALUES ('abcd1234efgh5678', 'png', '2048x2048', 12.5, 42, '2024-01-10', '2024-02-01', 'v1.0', 'creative_commons', 'view_only', 'schema_v2', 'fantasy,dragon', 'high resolution dragon illustration', NULL, 'internal_archive', 'sha256abcd', 'none', 'public', 'web', 'active', NULL);
INSERT INTO digital_artifact_metadata_ext (asset_hash, file_format, resolution, file_size_mb, creator_id, creation_date, last_modified_date, version_number, license_type, usage_rights, metadata_schema, tags, description, related_artifact_ids, provenance, checksum, encryption_status, access_level, distribution_channel, deprecation_status, replacement_artifact_id) VALUES ('ijkl9012mnop3456', 'mp4', '1920x1080', 250.0, 57, '2023-11-05', '2024-03-12', 'v2.1', 'standard', 'commercial_use', 'schema_v3', 'promo,trailers', 'trailer for upcoming set', '12345', 'marketing_dept', 'sha256ijkl', 'aes256', 'restricted', 'partner', 'deprecated', 78);
INSERT INTO digital_artifact_metadata_ext (asset_hash, file_format, resolution, file_size_mb, creator_id, creation_date, last_modified_date, version_number, license_type, usage_rights, metadata_schema, tags, description, related_artifact_ids, provenance, checksum, encryption_status, access_level, distribution_channel, deprecation_status, replacement_artifact_id) VALUES ('qrst7890uvwx1234', 'glb', '1024x1024', 5.8, 88, '2024-04-20', '2024-04-25', 'v1.3', 'proprietary', 'internal_use', 'schema_v1', 'token,3d', '3d token model for marketplace', '56789', 'dev_team', 'sha256qrst', 'none', 'internal', 'api', 'active', NULL);

-- Environmental sensor deployment records
CREATE TABLE environmental_sensor_deployments
(
    deployment_id        INTEGER PRIMARY KEY AUTOINCREMENT,
    sensor_id            INTEGER,
    site_id              INTEGER,
    deployment_date      DATE,
    decommission_date    DATE,
    sensor_type          TEXT,
    manufacturer         TEXT,
    model_number         TEXT,
    firmware_version     TEXT,
    calibration_date     DATE,
    calibration_status   TEXT,
    latitude             REAL,
    longitude            REAL,
    altitude             REAL,
    installation_height  REAL,
    power_source         TEXT,
    connectivity_type    TEXT,
    network_id           TEXT,
    maintenance_interval_days INTEGER,
    last_maintenance_date DATE,
    status               TEXT,
    notes                TEXT,
    responsible_technician TEXT
);

INSERT INTO environmental_sensor_deployments (sensor_id, site_id, deployment_date, decommission_date, sensor_type, manufacturer, model_number, firmware_version, calibration_date, calibration_status, latitude, longitude, altitude, installation_height, power_source, connectivity_type, network_id, maintenance_interval_days, last_maintenance_date, status, notes, responsible_technician) VALUES (1001, 10, '2024-01-15', NULL, 'temperature', 'senscorp', 'TC-200', '1.0.3', '2024-01-10', 'passed', 40.7128, -74.0060, 10.5, 2.0, 'solar', 'wifi', 'net01', 180, '2024-04-01', 'active', 'mounted on east wall', 'john');
INSERT INTO environmental_sensor_deployments (sensor_id, site_id, deployment_date, decommission_date, sensor_type, manufacturer, model_number, firmware_version, calibration_date, calibration_status, latitude, longitude, altitude, installation_height, power_source, connectivity_type, network_id, maintenance_interval_days, last_maintenance_date, status, notes, responsible_technician) VALUES (1002, 11, '2024-02-20', NULL, 'humidity', 'climateinc', 'HM-500', '2.1.0', '2024-02-18', 'passed', 34.0522, -118.2437, 15.0, 1.5, 'mains', 'ethernet', 'net02', 365, '2024-05-15', 'active', 'ceiling mount', 'alice');
INSERT INTO environmental_sensor_deployments (sensor_id, site_id, deployment_date, decommission_date, sensor_type, manufacturer, model_number, firmware_version, calibration_date, calibration_status, latitude, longitude, altitude, installation_height, power_source, connectivity_type, network_id, maintenance_interval_days, last_maintenance_date, status, notes, responsible_technician) VALUES (1003, 12, '2023-12-01', NULL, 'air_quality', 'envirotech', 'AQ-300', '3.0.1', '2023-11-28', 'passed', 51.5074, -0.1278, 12.0, 3.0, 'battery', 'cellular', 'net03', 90, '2024-03-30', 'active', 'near ventilation', 'bob');

-- Game mechanics test case definitions
CREATE TABLE game_mechanics_test_cases
(
    test_id               INTEGER PRIMARY KEY AUTOINCREMENT,
    mechanic_name         TEXT,
    test_description      TEXT,
    preconditions         TEXT,
    steps                 TEXT,
    expected_result       TEXT,
    actual_result         TEXT,
    pass_fail             TEXT,
    tested_by             TEXT,
    test_date             DATE,
    version               TEXT,
    priority              INTEGER,
    severity              TEXT,
    component             TEXT,
    related_mechanic      TEXT,
    runtime_ms            INTEGER,
    memory_mb             INTEGER,
    logs_path             TEXT,
    bug_id                INTEGER,
    regression_status     TEXT,
    automation_status     TEXT,
    notes                 TEXT
);

INSERT INTO game_mechanics_test_cases (mechanic_name, test_description, preconditions, steps, expected_result, actual_result, pass_fail, tested_by, test_date, version, priority, severity, component, related_mechanic, runtime_ms, memory_mb, logs_path, bug_id, regression_status, automation_status, notes) VALUES ('flying', 'verify flying ability interacts with aura', 'creature with flying on battlefield', 'apply aura that removes flying', 'creature loses flying', 'creature lost flying', 'pass', 'alice', '2024-05-10', 'v1.2', 1, 'medium', 'combat', 'hover', 120, 64, '/logs/flying_test1.log', NULL, 'new', 'manual', 'no issues');
INSERT INTO game_mechanics_test_cases (mechanic_name, test_description, preconditions, steps, expected_result, actual_result, pass_fail, tested_by, test_date, version, priority, severity, component, related_mechanic, runtime_ms, memory_mb, logs_path, bug_id, regression_status, automation_status, notes) VALUES ('trample', 'check trample damage overflow', 'attacking creature with trample, defender has 2 life', 'attack and allocate excess damage', 'defender dies, excess goes to player', 'defender died, excess applied', 'pass', 'bob', '2024-05-12', 'v1.2', 2, 'high', 'combat', 'damage', 200, 80, '/logs/trample_test2.log', 451, 'verified', 'automated', 'edge case handled');
INSERT INTO game_mechanics_test_cases (mechanic_name, test_description, preconditions, steps, expected_result, actual_result, pass_fail, tested_by, test_date, version, priority, severity, component, related_mechanic, runtime_ms, memory_mb, logs_path, bug_id, regression_status, automation_status, notes) VALUES ('lifelink', 'ensure lifelink restores health', 'creature with lifelink attacks', 'deal damage to opponent', 'player gains equal life', 'player gained life', 'pass', 'carol', '2024-05-15', 'v1.2', 1, 'low', 'combat', 'damage', 150, 70, '/logs/lifelink_test3.log', NULL, 'new', 'manual', 'validated');

-- Historical exchange rates for virtual currencies
CREATE TABLE virtual_currency_exchange_rates_history
(
    rate_id               INTEGER PRIMARY KEY AUTOINCREMENT,
    currency_from         TEXT,
    currency_to           TEXT,
    rate_value            REAL,
    effective_date        DATE,
    source                TEXT,
    is_fixed              INTEGER,
    volatility_index      REAL,
    last_updated          DATE,
    created_by            TEXT,
    approval_status       TEXT,
    notes                 TEXT,
    observation_period_days INTEGER,
    confidence_level      REAL,
    market                TEXT,
    exchange_platform     TEXT,
    bid_rate              REAL,
    ask_rate              REAL,
    spread                REAL,
    floor_rate            REAL,
    ceiling_rate          REAL,
    regulatory_compliance TEXT
);

INSERT INTO virtual_currency_exchange_rates_history (currency_from, currency_to, rate_value, effective_date, source, is_fixed, volatility_index, last_updated, created_by, approval_status, notes, observation_period_days, confidence_level, market, exchange_platform, bid_rate, ask_rate, spread, floor_rate, ceiling_rate, regulatory_compliance) VALUES ('VC1', 'USD', 0.0123, '2024-01-01', 'exchange_api', 0, 0.45, '2024-01-02', 'system', 'approved', 'initial rate', 30, 0.95, 'global', 'platform_a', 0.0122, 0.0124, 0.0002, 0.0100, 0.0150, 'compliant');
INSERT INTO virtual_currency_exchange_rates_history (currency_from, currency_to, rate_value, effective_date, source, is_fixed, volatility_index, last_updated, created_by, approval_status, notes, observation_period_days, confidence_level, market, exchange_platform, bid_rate, ask_rate, spread, floor_rate, ceiling_rate, regulatory_compliance) VALUES ('VC2', 'EUR', 0.0987, '2024-02-15', 'exchange_feed', 0, 0.60, '2024-02-16', 'admin', 'pending', 'awaiting verification', 45, 0.90, 'eu', 'platform_b', 0.0985, 0.0990, 0.0005, 0.0900, 0.1100, 'under_review');
INSERT INTO virtual_currency_exchange_rates_history (currency_from, currency_to, rate_value, effective_date, source, is_fixed, volatility_index, last_updated, created_by, approval_status, notes, observation_period_days, confidence_level, market, exchange_platform, bid_rate, ask_rate, spread, floor_rate, ceiling_rate, regulatory_compliance) VALUES ('VC3', 'JPY', 1.2345, '2024-03-20', 'internal_calc', 1, 0.00, '2024-03-21', 'system', 'approved', 'fixed rate for tournament', 0, 1.00, 'asia', 'platform_c', 1.2345, 1.2345, 0.0000, 1.2000, 1.3000, 'exempt');

-- Esports match statistics
CREATE TABLE esports_match_statistics
(
    match_id                INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id           INTEGER,
    team_a_id               INTEGER,
    team_b_id               INTEGER,
    start_time              DATETIME,
    end_time                DATETIME,
    duration_seconds        INTEGER,
    map_name                TEXT,
    mode                    TEXT,
    winner_team_id          INTEGER,
    team_a_score            INTEGER,
    team_b_score            INTEGER,
    mvp_player_id           INTEGER,
    total_kills             INTEGER,
    total_assists           INTEGER,
    total_deaths            INTEGER,
    avg_ping_ms             INTEGER,
    peak_concurrency        INTEGER,
    viewer_count            INTEGER,
    peak_viewers            INTEGER,
    chat_messages           INTEGER,
    toxic_incidents         INTEGER,
    sponsor_impressions     INTEGER,
    revenue_generated_usd   REAL,
    region                  TEXT,
    server_id               TEXT,
    broadcast_delay_seconds INTEGER,
    highlight_clips_count   INTEGER
);

INSERT INTO esports_match_statistics (tournament_id, team_a_id, team_b_id, start_time, end_time, duration_seconds, map_name, mode, winner_team_id, team_a_score, team_b_score, mvp_player_id, total_kills, total_assists, total_deaths, avg_ping_ms, peak_concurrency, viewer_count, peak_viewers, chat_messages, toxic_incidents, sponsor_impressions, revenue_generated_usd, region, server_id, broadcast_delay_seconds, highlight_clips_count) VALUES (501, 10, 20, '2024-06-01 15:00:00', '2024-06-01 15:45:00', 2700, 'Arena', '5v5', 10, 16, 12, 301, 88, 45, 30, 45, 2000, 50000, 65000, 120000, 250, 1500, 12000.50, 'NA', 'srv01', 5, 8);
INSERT INTO esports_match_statistics (tournament_id, team_a_id, team_b_id, start_time, end_time, duration_seconds, map_name, mode, winner_team_id, team_a_score, team_b_score, mvp_player_id, total_kills, total_assists, total_deaths, avg_ping_ms, peak_concurrency, viewer_count, peak_viewers, chat_messages, toxic_incidents, sponsor_impressions, revenue_generated_usd, region, server_id, broadcast_delay_seconds, highlight_clips_count) VALUES (502, 30, 40, '2024-06-02 18:30:00', '2024-06-02 19:20:00', 3000, 'Citadel', 'CaptureTheFlag', 40, 22, 19, 405, 102, 58, 40, 38, 2500, 62000, 78000, 140000, 300, 1800, 15000.75, 'EU', 'srv02', 3, 10);
INSERT INTO esports_match_statistics (tournament_id, team_a_id, team_b_id, start_time, end_time, duration_seconds, map_name, mode, winner_team_id, team_a_score, team_b_score, mvp_player_id, total_kills, total_assists, total_deaths, avg_ping_ms, peak_concurrency, viewer_count, peak_viewers, chat_messages, toxic_incidents, sponsor_impressions, revenue_generated_usd, region, server_id, broadcast_delay_seconds, highlight_clips_count) VALUES (503, 50, 60, '2024-06-03 20:00:00', '2024-06-03 20:55:00', 3300, 'Fortress', 'KingOfTheHill', 60, 30, 27, 512, 115, 70, 50, 42, 3000, 80000, 95000, 165000, 350, 2100, 18000.20, 'ASIA', 'srv03', 4, 12);

-- Hierarchical location data for the fantasy world
CREATE TABLE fantasy_world_location_hierarchy
(
    location_id               INTEGER PRIMARY KEY AUTOINCREMENT,
    parent_location_id        INTEGER,
    location_name             TEXT,
    location_type             TEXT,
    description               TEXT,
    latitude                  REAL,
    longitude                 REAL,
    region                    TEXT,
    continent                 TEXT,
    climate_zone              TEXT,
    population_estimate      INTEGER,
    dominant_faction          TEXT,
    governance_type           TEXT,
    security_level            TEXT,
    trade_importance          TEXT,
    resource_richness         TEXT,
    historical_significance  TEXT,
    current_events_summary    TEXT,
    founding_date             DATE,
    last_updated              DATE,
    map_image_path            TEXT,
    related_storylines        TEXT,
    travel_time_to_capital_hours INTEGER
);

INSERT INTO fantasy_world_location_hierarchy (parent_location_id, location_name, location_type, description, latitude, longitude, region, continent, climate_zone, population_estimate, dominant_faction, governance_type, security_level, trade_importance, resource_richness, historical_significance, current_events_summary, founding_date, last_updated, map_image_path, related_storylines, travel_time_to_capital_hours) VALUES (NULL, 'Eldoria', 'capital_city', 'Heart of the kingdom', 45.0, -120.0, 'Northern Reach', 'Eldor', 'Temperate', 1200000, 'House Valen', 'monarchy', 'high', 'high', 'rich_minerals', 'ancient_fortress', 'festival_preparations', '1023-04-15', '2024-01-01', '/maps/eldoria.png', 'the_great_war', 0);
INSERT INTO fantasy_world_location_hierarchy (parent_location_id, location_name, location_type, description, latitude, longitude, region, continent, climate_zone, population_estimate, dominant_faction, governance_type, security_level, trade_importance, resource_richness, historical_significance, current_events_summary, founding_date, last_updated, map_image_path, related_storylines, travel_time_to_capital_hours) VALUES (1, 'Stonehaven', 'port_town', 'Major trade hub on the coast', 44.5, -119.8, 'Northern Reach', 'Eldor', 'Coastal', 250000, 'Merchant Guild', 'city_state', 'medium', 'very_high', 'fish_and_spices', 'renaissance_trade', 'ship_arrivals_delayed', '1100-09-23', '2024-02-10', '/maps/stonehaven.png', 'sea_merchant_quest', 5);
INSERT INTO fantasy_world_location_hierarchy (parent_location_id, location_name, location_type, description, latitude, longitude, region, continent, climate_zone, population_estimate, dominant_faction, governance_type, security_level, trade_importance, resource_richness, historical_significance, current_events_summary, founding_date, last_updated, map_image_path, related_storylines, travel_time_to_capital_hours) VALUES (1, 'Greyspire', 'mountain_range', 'Snow‑capped peaks rich in ores', 46.2, -121.5, 'Northern Reach', 'Eldor', 'Alpine', 0, 'Dwarven Clans', 'tribal', 'low', 'moderate', 'iron_and_gold', 'legendary_mining', 'avalanche_warning', '950-03-12', '2024-03-05', '/maps/greyspire.png', 'dwarven_mines', 8);