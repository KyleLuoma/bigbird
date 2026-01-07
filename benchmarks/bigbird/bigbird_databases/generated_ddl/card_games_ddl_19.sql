-- Card print batch information
CREATE TABLE card_print_batches
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    batch_code TEXT,
    set_code TEXT,
    printer_id INTEGER,
    printer_location TEXT,
    material_type TEXT,
    ink_type TEXT,
    ink_color TEXT,
    paper_weight REAL,
    sheets_per_batch INTEGER,
    cards_per_sheet INTEGER,
    total_cards INTEGER,
    start_date DATE,
    end_date DATE,
    defect_rate REAL,
    quality_grade TEXT,
    created_by TEXT,
    approval_status TEXT,
    notes TEXT,
    archive_path TEXT,
    last_modified TIMESTAMP
);

INSERT INTO card_print_batches (batch_code, set_code, printer_id, printer_location, material_type, ink_type, ink_color, paper_weight, sheets_per_batch, cards_per_sheet, total_cards, start_date, end_date, defect_rate, quality_grade, created_by, approval_status, notes, archive_path, last_modified) VALUES ('BCH001', 'M21', 12, 'Berlin', 'Paper', 'UV', 'Cyan', 0.30, 5000, 9, 45000, '2023-01-10', '2023-01-12', 0.02, 'A', 'jdoe', 'Approved', 'Initial run', '/archive/BCH001.zip', '2023-01-13 08:15:00');
INSERT INTO card_print_batches (batch_code, set_code, printer_id, printer_location, material_type, ink_type, ink_color, paper_weight, sheets_per_batch, cards_per_sheet, total_cards, start_date, end_date, defect_rate, quality_grade, created_by, approval_status, notes, archive_path, last_modified) VALUES ('BCH002', 'KHM', 9, 'Tokyo', 'Paper', 'WaterBased', 'Magenta', 0.28, 4800, 9, 43200, '2023-02-05', '2023-02-07', 0.015, 'B', 'asmith', 'Pending', 'Quality check required', '/archive/BCH002.zip', '2023-02-08 09:30:00');
INSERT INTO card_print_batches (batch_code, set_code, printer_id, printer_location, material_type, ink_type, ink_color, paper_weight, sheets_per_batch, cards_per_sheet, total_cards, start_date, end_date, defect_rate, quality_grade, created_by, approval_status, notes, archive_path, last_modified) VALUES ('BCH003', 'ZNR', 15, 'LosAngeles', 'Paper', 'UV', 'Yellow', 0.31, 5200, 9, 46800, '2023-03-12', '2023-03-14', 0.018, 'A', 'mbrown', 'Approved', 'Final batch', '/archive/BCH003.zip', '2023-03-15 07:45:00');

-- Player activity logs
CREATE TABLE player_activity_logs
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    session_id TEXT,
    device_type TEXT,
    ip_address TEXT,
    country_code TEXT,
    login_timestamp TIMESTAMP,
    logout_timestamp TIMESTAMP,
    actions_performed INTEGER,
    avg_response_time REAL,
    peak_memory_mb INTEGER,
    app_version TEXT,
    os_version TEXT,
    carrier TEXT,
    wifi_connected INTEGER,
    battery_level REAL,
    latitude REAL,
    longitude REAL,
    session_score INTEGER,
    notes TEXT,
    data_hash TEXT
);

INSERT INTO player_activity_logs (player_id, session_id, device_type, ip_address, country_code, login_timestamp, logout_timestamp, actions_performed, avg_response_time, peak_memory_mb, app_version, os_version, carrier, wifi_connected, battery_level, latitude, longitude, session_score, notes, data_hash) VALUES (101, 'SID1001', 'Mobile', '192.0.2.1', 'US', '2024-05-01 14:00:00', '2024-05-01 15:30:00', 240, 0.45, 512, '1.4.2', 'Android12', 'Verizon', 1, 87.5, 40.7128, -74.0060, 850, 'Smooth session', 'hashA1');
INSERT INTO player_activity_logs (player_id, session_id, device_type, ip_address, country_code, login_timestamp, logout_timestamp, actions_performed, avg_response_time, peak_memory_mb, app_version, os_version, carrier, wifi_connected, battery_level, latitude, longitude, session_score, notes, data_hash) VALUES (202, 'SID1002', 'Desktop', '198.51.100.23', 'GB', '2024-05-02 09:15:00', '2024-05-02 10:45:00', 310, 0.38, 1024, '2.0.0', 'Windows10', 'BT', 0, 65.0, 51.5074, -0.1278, 920, 'High latency spikes', 'hashB2');
INSERT INTO player_activity_logs (player_id, session_id, device_type, ip_address, country_code, login_timestamp, logout_timestamp, actions_performed, avg_response_time, peak_memory_mb, app_version, os_version, carrier, wifi_connected, battery_level, latitude, longitude, session_score, notes, data_hash) VALUES (303, 'SID1003', 'Tablet', '203.0.113.45', 'CA', '2024-05-03 20:05:00', '2024-05-03 21:20:00', 180, 0.50, 768, '1.9.1', 'iOS15', 'Telus', 1, 78.2, 45.4215, -75.6972, 770, 'Reconnection event', 'hashC3');

-- Tournament bracket structure
CREATE TABLE tournament_bracket_structure
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    round_number INTEGER,
    match_number INTEGER,
    player1_id INTEGER,
    player2_id INTEGER,
    winner_id INTEGER,
    scheduled_time DATE,
    venue_id INTEGER,
    bracket_type TEXT,
    best_of INTEGER,
    game_format TEXT,
    seed1 INTEGER,
    seed2 INTEGER,
    match_status TEXT,
    streaming_url TEXT,
    referee_id INTEGER,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    external_id TEXT
);

INSERT INTO tournament_bracket_structure (tournament_id, round_number, match_number, player1_id, player2_id, winner_id, scheduled_time, venue_id, bracket_type, best_of, game_format, seed1, seed2, match_status, streaming_url, referee_id, notes, created_at, updated_at, external_id) VALUES (5001, 1, 1, 101, 202, NULL, '2024-06-10', 12, 'SingleElim', 3, 'Standard', 1, 16, 'Scheduled', 'http://stream.example.com/match1', 301, 'Opening match', '2024-05-15 08:00:00', '2024-05-15 08:00:00', 'EXTM001');
INSERT INTO tournament_bracket_structure (tournament_id, round_number, match_number, player1_id, player2_id, winner_id, scheduled_time, venue_id, bracket_type, best_of, game_format, seed1, seed2, match_status, streaming_url, referee_id, notes, created_at, updated_at, external_id) VALUES (5001, 1, 2, 303, 404, NULL, '2024-06-10', 12, 'SingleElim', 3, 'Standard', 8, 9, 'Scheduled', 'http://stream.example.com/match2', 302, 'Second match', '2024-05-15 08:10:00', '2024-05-15 08:10:00', 'EXTM002');
INSERT INTO tournament_bracket_structure (tournament_id, round_number, match_number, player1_id, player2_id, winner_id, scheduled_time, venue_id, bracket_type, best_of, game_format, seed1, seed2, match_status, streaming_url, referee_id, notes, created_at, updated_at, external_id) VALUES (5001, 2, 1, NULL, NULL, NULL, '2024-06-12', 13, 'SingleElim', 5, 'Standard', NULL, NULL, 'Pending', 'http://stream.example.com/match3', 303, 'Quarterfinal placeholder', '2024-05-16 09:00:00', '2024-05-16 09:00:00', 'EXTM003');

-- Digital asset distribution
CREATE TABLE digital_asset_distribution
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_id TEXT,
    distribution_channel TEXT,
    region_code TEXT,
    start_date DATE,
    end_date DATE,
    total_units INTEGER,
    allocated_units INTEGER,
    remaining_units INTEGER,
    price_per_unit REAL,
    currency TEXT,
    promotion_code TEXT,
    compliance_status TEXT,
    created_by TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    notes TEXT,
    checksum TEXT,
    batch_number TEXT,
    metadata_json TEXT,
    download_url TEXT
);

INSERT INTO digital_asset_distribution (asset_id, distribution_channel, region_code, start_date, end_date, total_units, allocated_units, remaining_units, price_per_unit, currency, promotion_code, compliance_status, created_by, created_at, updated_at, notes, checksum, batch_number, metadata_json, download_url) VALUES ('ASSET100', 'WebStore', 'EU', '2024-07-01', '2024-12-31', 10000, 2500, 7500, 4.99, 'EUR', 'SUMMER24', 'Compliant', 'admin', '2024-06-01 10:00:00', '2024-06-01 10:00:00', 'Initial launch', 'chk123', 'BATCH01', '{"type":"collectible"}', 'http://assets.example.com/download/ASSET100');
INSERT INTO digital_asset_distribution (asset_id, distribution_channel, region_code, start_date, end_date, total_units, allocated_units, remaining_units, price_per_unit, currency, promotion_code, compliance_status, created_by, created_at, updated_at, notes, checksum, batch_number, metadata_json, download_url) VALUES ('ASSET200', 'MobileApp', 'AS', '2024-08-15', '2025-02-15', 5000, 1200, 3800, 5.49, 'USD', 'AUTUMN24', 'Pending', 'jlee', '2024-07-10 14:30:00', '2024-07-10 14:30:00', 'Beta release', 'chk456', 'BATCH02', '{"rarity":"rare"}', 'http://assets.example.com/download/ASSET200');
INSERT INTO digital_asset_distribution (asset_id, distribution_channel, region_code, start_date, end_date, total_units, allocated_units, remaining_units, price_per_unit, currency, promotion_code, compliance_status, created_by, created_at, updated_at, notes, checksum, batch_number, metadata_json, download_url) VALUES ('ASSET300', 'PartnerAPI', 'APAC', '2024-09-01', '2025-03-01', 8000, 2000, 6000, 3.99, 'JPY', 'WINTER24', 'Compliant', 'kmart', '2024-08-20 09:15:00', '2024-08-20 09:15:00', 'Partner rollout', 'chk789', 'BATCH03', '{"category":"avatar"}', 'http://assets.example.com/download/ASSET300');

-- Set marketing campaigns
CREATE TABLE set_marketing_campaigns
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    campaign_name TEXT,
    start_date DATE,
    end_date DATE,
    budget REAL,
    target_audience TEXT,
    channel TEXT,
    impressions INTEGER,
    clicks INTEGER,
    ctr REAL,
    cpc REAL,
    cpm REAL,
    creative_id TEXT,
    manager_id INTEGER,
    status TEXT,
    performance_score REAL,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    external_tracking_id TEXT
);

INSERT INTO set_marketing_campaigns (set_code, campaign_name, start_date, end_date, budget, target_audience, channel, impressions, clicks, ctr, cpc, cpm, creative_id, manager_id, status, performance_score, notes, created_at, updated_at, external_tracking_id) VALUES ('M21', 'LaunchSpring', '2024-04-01', '2024-05-15', 250000, 'Collectors', 'SocialMedia', 1200000, 35000, 2.92, 7.14, 208.33, 'CRTV001', 45, 'Active', 87.5, 'First wave', '2024-03-20 11:00:00', '2024-03-20 11:00:00', 'TRK001');
INSERT INTO set_marketing_campaigns (set_code, campaign_name, start_date, end_date, budget, target_audience, channel, impressions, clicks, ctr, cpc, cpm, creative_id, manager_id, status, performance_score, notes, created_at, updated_at, external_tracking_id) VALUES ('KHM', 'SummerBlast', '2024-06-01', '2024-07-30', 180000, 'CasualPlayers', 'VideoAds', 950000, 21000, 2.21, 8.57, 190.00, 'CRTV002', 46, 'Planned', 0.0, 'Pending launch', '2024-05-10 09:30:00', '2024-05-10 09:30:00', 'TRK002');
INSERT INTO set_marketing_campaigns (set_code, campaign_name, start_date, end_date, budget, target_audience, channel, impressions, clicks, ctr, cpc, cpm, creative_id, manager_id, status, performance_score, notes, created_at, updated_at, external_tracking_id) VALUES ('ZNR', 'FallPromo', '2024-09-15', '2024-11-01', 300000, 'Competitive', 'Email', 800000, 25000, 3.12, 6.80, 150.00, 'CRTV003', 47, 'Active', 91.2, 'Strong response', '2024-08-20 14:45:00', '2024-08-20 14:45:00', 'TRK003');

-- Venue environmental metrics
CREATE TABLE venue_environmental_metrics
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    metric_date DATE,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm INTEGER,
    noise_db REAL,
    light_lux INTEGER,
    occupancy_count INTEGER,
    energy_kwh REAL,
    water_liters REAL,
    waste_kg REAL,
    air_quality_index INTEGER,
    hvac_status TEXT,
    maintenance_flag INTEGER,
    notes TEXT,
    recorded_by TEXT,
    recorded_at TIMESTAMP,
    sensor_batch_id TEXT,
    external_reference TEXT
);

INSERT INTO venue_environmental_metrics (venue_id, metric_date, temperature_c, humidity_percent, co2_ppm, noise_db, light_lux, occupancy_count, energy_kwh, water_liters, waste_kg, air_quality_index, hvac_status, maintenance_flag, notes, recorded_by, recorded_at, sensor_batch_id, external_reference) VALUES (12, '2024-05-20', 22.5, 45.0, 420, 55.2, 350, 150, 1200.5, 800.0, 12.3, 42, 'Operational', 0, 'Normal day', 'envsys', '2024-05-20 07:00:00', 'SB001', 'REF001');
INSERT INTO venue_environmental_metrics (venue_id, metric_date, temperature_c, humidity_percent, co2_ppm, noise_db, light_lux, occupancy_count, energy_kwh, water_liters, waste_kg, air_quality_index, hvac_status, maintenance_flag, notes, recorded_by, recorded_at, sensor_batch_id, external_reference) VALUES (13, '2024-05-20', 21.8, 48.2, 430, 60.1, 400, 180, 1300.0, 820.5, 13.0, 45, 'Operational', 0, 'Slightly higher CO2', 'envsys', '2024-05-20 07:05:00', 'SB002', 'REF002');
INSERT INTO venue_environmental_metrics (venue_id, metric_date, temperature_c, humidity_percent, co2_ppm, noise_db, light_lux, occupancy_count, energy_kwh, water_liters, waste_kg, air_quality_index, hvac_status, maintenance_flag, notes, recorded_by, recorded_at, sensor_batch_id, external_reference) VALUES (14, '2024-05-20', 23.0, 44.5, 415, 53.0, 380, 140, 1150.2, 790.3, 11.8, 40, 'Operational', 0, 'All metrics within thresholds', 'envsys', '2024-05-20 07:10:00', 'SB003', 'REF003');

-- Supplier contracts
CREATE TABLE supplier_contracts
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    supplier_id INTEGER,
    contract_number TEXT,
    start_date DATE,
    end_date DATE,
    contract_value REAL,
    currency TEXT,
    scope_description TEXT,
    payment_terms TEXT,
    renewal_option TEXT,
    confidentiality_clause INTEGER,
    performance_metric TEXT,
    penalty_clause REAL,
    authorized_rep TEXT,
    signatory TEXT,
    status TEXT,
    last_review_date DATE,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    external_doc_id TEXT
);

INSERT INTO supplier_contracts (supplier_id, contract_number, start_date, end_date, contract_value, currency, scope_description, payment_terms, renewal_option, confidentiality_clause, performance_metric, penalty_clause, authorized_rep, signatory, status, last_review_date, notes, created_at, updated_at, external_doc_id) VALUES (2001, 'CNTR1001', '2023-01-01', '2025-12-31', 750000, 'USD', 'PaperSupply', 'Net30', 'AutoRenew', 1, 'OnTimeDelivery', 5000, 'AliceBrown', 'BobSmith', 'Active', '2024-04-01', 'First renewal due 2025', '2023-01-02 09:00:00', '2024-03-15 11:20:00', 'DOC001');
INSERT INTO supplier_contracts (supplier_id, contract_number, start_date, end_date, contract_value, currency, scope_description, payment_terms, renewal_option, confidentiality_clause, performance_metric, penalty_clause, authorized_rep, signatory, status, last_review_date, notes, created_at, updated_at, external_doc_id) VALUES (2002, 'CNTR1002', '2022-06-15', '2024-06-14', 420000, 'EUR', 'InkSupply', 'Net45', 'NoRenew', 1, 'ColorConsistency', 3000, 'CarlosMendez', 'DianaLee', 'Expired', '2024-05-20', 'Contract closed', '2022-06-16 10:30:00', '2024-05-20 14:45:00', 'DOC002');
INSERT INTO supplier_contracts (supplier_id, contract_number, start_date, end_date, contract_value, currency, scope_description, payment_terms, renewal_option, confidentiality_clause, performance_metric, penalty_clause, authorized_rep, signatory, status, last_review_date, notes, created_at, updated_at, external_doc_id) VALUES (2003, 'CNTR1003', '2024-02-01', '2026-01-31', 980000, 'USD', 'PackagingMaterials', 'Net60', 'AutoRenew', 0, 'DefectRate', 7500, 'EmilyZhou', 'FrankWang', 'Active', '2024-04-10', 'Initial term', '2024-02-01 08:15:00', '2024-04-10 12:00:00', 'DOC003');

-- Artwork commission requests
CREATE TABLE artwork_commission_requests
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    request_id TEXT,
    artist_id INTEGER,
    set_code TEXT,
    artwork_type TEXT,
    description TEXT,
    requested_by TEXT,
    request_date DATE,
    due_date DATE,
    budget REAL,
    currency TEXT,
    status TEXT,
    priority_level INTEGER,
    reference_image_url TEXT,
    approved_by TEXT,
    approval_date DATE,
    revision_number INTEGER,
    final_file_url TEXT,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

INSERT INTO artwork_commission_requests (request_id, artist_id, set_code, artwork_type, description, requested_by, request_date, due_date, budget, currency, status, priority_level, reference_image_url, approved_by, approval_date, revision_number, final_file_url, notes, created_at, updated_at) VALUES ('REQ001', 301, 'M21', 'Illustration', 'Heroic dragon portrait', 'prodteam', '2024-03-01', '2024-04-15', 1200, 'USD', 'Pending', 2, 'http://refimages.example.com/dragon.png', NULL, NULL, 0, NULL, 'First draft expected March', '2024-03-02 09:10:00', '2024-03-02 09:10:00');
INSERT INTO artwork_commission_requests (request_id, artist_id, set_code, artwork_type, description, requested_by, request_date, due_date, budget, currency, status, priority_level, reference_image_url, approved_by, approval_date, revision_number, final_file_url, notes, created_at, updated_at) VALUES ('REQ002', 302, 'KHM', 'CardBack', 'Ancient temple motif', 'designlead', '2024-04-01', '2024-05-20', 800, 'EUR', 'Approved', 1, 'http://refimages.example.com/temple.png', 'LauraKim', '2024-04-05', 1, 'http://finalassets.example.com/khm_back.png', 'Approved after revision', '2024-04-01 10:20:00', '2024-04-06 11:00:00');
INSERT INTO artwork_commission_requests (request_id, artist_id, set_code, artwork_type, description, requested_by, request_date, due_date, budget, currency, status, priority_level, reference_image_url, approved_by, approval_date, revision_number, final_file_url, notes, created_at, updated_at) VALUES ('REQ003', 303, 'ZNR', 'Illustration', 'Nature spirit female', 'artdir', '2024-05-10', '2024-06-30', 1500, 'USD', 'InProgress', 3, 'http://refimages.example.com/spirit.png', NULL, NULL, 0, NULL, 'Concept sketches completed', '2024-05-11 08:45:00', '2024-05-11 08:45:00');

-- Game rule change history
CREATE TABLE game_rule_change_history
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    rule_id TEXT,
    version TEXT,
    change_date DATE,
    description TEXT,
    affected_set TEXT,
    impact_level TEXT,
    implemented_by TEXT,
    review_status TEXT,
    comments TEXT,
    deprecated_flag INTEGER,
    replacement_rule_id TEXT,
    reference_doc_id TEXT,
    source_url TEXT,
    change_type TEXT,
    severity REAL,
    tickets_link TEXT,
    approval_date DATE,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    external_ref TEXT
);

INSERT INTO game_rule_change_history (rule_id, version, change_date, description, affected_set, impact_level, implemented_by, review_status, comments, deprecated_flag, replacement_rule_id, reference_doc_id, source_url, change_type, severity, tickets_link, approval_date, created_at, updated_at, external_ref) VALUES ('RUL100', '1.0', '2024-02-15', 'Allow commander decks to include partner cards', 'Commander', 'High', 'rulesteam', 'Approved', 'Community feedback positive', 0, NULL, 'DOCR001', 'http://rules.example.com/rul100', 'Additive', 0.9, 'http://tickets.example.com/123', '2024-02-20', '2024-02-15 12:00:00', '2024-02-20 09:30:00', 'EXTR001');
INSERT INTO game_rule_change_history (rule_id, version, change_date, description, affected_set, impact_level, implemented_by, review_status, comments, deprecated_flag, replacement_rule_id, reference_doc_id, source_url, change_type, severity, tickets_link, approval_date, created_at, updated_at, external_ref) VALUES ('RUL101', '2.1', '2024-04-01', 'Update damage calculation for planeswalkers', 'All', 'Medium', 'rulesteam', 'Pending', 'Awaiting test results', 0, NULL, 'DOCR002', 'http://rules.example.com/rul101', 'Modification', 0.6, 'http://tickets.example.com/124', NULL, '2024-04-01 09:00:00', '2024-04-01 09:00:00', 'EXTR002');
INSERT INTO game_rule_change_history (rule_id, version, change_date, description, affected_set, impact_level, implemented_by, review_status, comments, deprecated_flag, replacement_rule_id, reference_doc_id, source_url, change_type, severity, tickets_link, approval_date, created_at, updated_at, external_ref) VALUES ('RUL102', '3.0', '2024-06-10', 'Retire obsolete ruling about artifact activation timing', 'Legacy', 'Low', 'rulesteam', 'Approved', 'No impact on current meta', 1, NULL, 'DOCR003', 'http://rules.example.com/rul102', 'Removal', 0.2, 'http://tickets.example.com/125', '2024-06-12', '2024-06-10 14:20:00', '2024-06-12 10:00:00', 'EXTR003');

-- Community moderation actions
CREATE TABLE community_moderation_actions
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    action_id TEXT,
    moderator_id INTEGER,
    user_id INTEGER,
    content_type TEXT,
    content_id TEXT,
    action_type TEXT,
    reason TEXT,
    action_timestamp TIMESTAMP,
    expiration_timestamp TIMESTAMP,
    notes TEXT,
    appeal_status TEXT,
    appeal_deadline DATE,
    resolved_by INTEGER,
    resolution TEXT,
    violation_category TEXT,
    points_deducted INTEGER,
    notification_sent INTEGER,
    audit_log_url TEXT,
    external_case_id TEXT,
    created_at TIMESTAMP
);

INSERT INTO community_moderation_actions (action_id, moderator_id, user_id, content_type, content_id, action_type, reason, action_timestamp, expiration_timestamp, notes, appeal_status, appeal_deadline, resolved_by, resolution, violation_category, points_deducted, notification_sent, audit_log_url, external_case_id, created_at) VALUES ('ACT001', 401, 1001, 'ForumPost', 'FP123', 'Delete', 'Spam', '2024-05-01 13:20:00', NULL, 'Removed duplicate post', 'None', NULL, 401, 'Deleted', 'Spam', 0, 1, 'http://audit.example.com/act001', 'CASE1001', '2024-05-01 13:21:00');
INSERT INTO community_moderation_actions (action_id, moderator_id, user_id, content_type, content_id, action_type, reason, action_timestamp, expiration_timestamp, notes, appeal_status, appeal_deadline, resolved_by, resolution, violation_category, points_deducted, notification_sent, audit_log_url, external_case_id, created_at) VALUES ('ACT002', 402, 1002, 'Comment', 'CM456', 'Warn', 'Harassment', '2024-05-03 09:45:00', '2024-06-03 09:45:00', 'User warned for offensive language', 'Pending', '2024-05-10', 402, 'Warning issued', 'Harassment', 5, 1, 'http://audit.example.com/act002', 'CASE1002', '2024-05-03 09:46:00');
INSERT INTO community_moderation_actions (action_id, moderator_id, user_id, content_type, content_id, action_type, reason, action_timestamp, expiration_timestamp, notes, appeal_status, appeal_deadline, resolved_by, resolution, violation_category, points_deducted, notification_sent, audit_log_url, external_case_id, created_at) VALUES ('ACT003', 403, 1003, 'Review', 'RV789', 'Suspend', 'Cheating', '2024-05-05 16:10:00', '2024-05-12 16:10:00', 'Account suspended after investigation', 'Appealed', '2024-05-20', 403, 'Suspension upheld', 'Cheating', 10, 1, 'http://audit.example.com/act003', 'CASE1003', '2024-05-05 16:11:00');