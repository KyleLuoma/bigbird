-- Analytics Dashboard Widgets
CREATE TABLE analytics_dashboard_widgets (
    widget_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    description TEXT,
    data_source TEXT,
    refresh_interval_minutes INTEGER,
    chart_type TEXT,
    color_scheme TEXT,
    enabled INTEGER,
    created_at DATE,
    updated_at DATE,
    owner_user_id INTEGER,
    visibility TEXT,
    max_rows INTEGER,
    min_rows INTEGER,
    aggregation_method TEXT,
    filter_expression TEXT,
    custom_css TEXT,
    layout_position INTEGER,
    size_width INTEGER,
    size_height INTEGER,
    is_default INTEGER
);

INSERT INTO analytics_dashboard_widgets (name, description, data_source, refresh_interval_minutes, chart_type, color_scheme, enabled, created_at, updated_at, owner_user_id, visibility, max_rows, min_rows, aggregation_method, filter_expression, custom_css, layout_position, size_width, size_height, is_default) VALUES
('Player Growth', 'Shows daily new player count', 'player_metrics', 60, 'line', 'blue_green', 1, '2023-01-01', '2023-01-01', 101, 'public', 1000, 10, 'sum', '', '', 1, 800, 600, 0),
('Revenue Summary', 'Monthly revenue breakdown', 'finance_reports', 1440, 'bar', 'warm', 1, '2023-01-02', '2023-01-02', 102, 'private', 12, 1, 'average', '', '', 2, 600, 400, 1),
('Server Health', 'Live server load metrics', 'server_stats', 5, 'gauge', 'red_gray', 1, '2023-01-03', '2023-01-03', 103, 'admin', 1, 1, 'latest', '', '', 3, 400, 300, 0);


-- Community Challenge Templates
CREATE TABLE community_challenge_templates (
    template_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    short_description TEXT,
    long_description TEXT,
    start_date DATE,
    end_date DATE,
    reward_type TEXT,
    reward_amount REAL,
    eligibility_criteria TEXT,
    max_participants INTEGER,
    min_participation INTEGER,
    repeat_interval_days INTEGER,
    image_url TEXT,
    banner_color TEXT,
    theme TEXT,
    is_active INTEGER,
    created_by INTEGER,
    created_at DATE,
    updated_at DATE,
    tags TEXT,
    external_link TEXT,
    max_submissions_per_user INTEGER
);

INSERT INTO community_challenge_templates (title, short_description, long_description, start_date, end_date, reward_type, reward_amount, eligibility_criteria, max_participants, min_participation, repeat_interval_days, image_url, banner_color, theme, is_active, created_by, created_at, updated_at, tags, external_link, max_submissions_per_user) VALUES
('Deck Builder Blitz', 'Fast deck construction', 'Participants must build a valid deck within 2 hours using limited card pool', '2023-02-01', '2023-02-02', 'tournament_slot', 0, 'all_players', 200, 1, 30, 'http://example.com/img1.png', '#FFAA00', 'speed', 1, 201, '2023-01-15', '2023-01-15', 'deck,quick', 'http://example.com/challenge1', 1),
('Lore Trivia Quest', 'Test your knowledge', 'Answer 20 lore questions correctly to earn a badge', '2023-03-10', '2023-03-20', 'badge', 0, 'registered_players', 500, 1, 0, 'http://example.com/img2.png', '#00AAFF', 'knowledge', 1, 202, '2023-02-20', '2023-02-20', 'lore,quiz', 'http://example.com/challenge2', 1),
('Artistic Showcase', 'Create custom card art', 'Submit original artwork for a community card design contest', '2023-04-05', '2023-04-30', 'cash', 250, 'artists_only', 100, 0, 0, 'http://example.com/img3.png', '#AA00FF', 'creative', 0, 203, '2023-03-01', '2023-03-01', 'art,contest', 'http://example.com/challenge3', 2);


-- Magical Energy Transfers
CREATE TABLE magical_energy_transfers (
    transfer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    source_location TEXT,
    destination_location TEXT,
    energy_type TEXT,
    amount_mj REAL,
    transfer_date DATE,
    transferred_by INTEGER,
    transfer_method TEXT,
    transfer_status TEXT,
    verification_code TEXT,
    comments TEXT,
    approval_timestamp DATE,
    approved_by INTEGER,
    latency_seconds REAL,
    temperature_celsius REAL,
    pressure_pascal REAL,
    humidity_percent REAL,
    is_critical INTEGER,
    batch_id TEXT,
    related_event_id INTEGER,
    created_at DATE,
    updated_at DATE
);

INSERT INTO magical_energy_transfers (source_location, destination_location, energy_type, amount_mj, transfer_date, transferred_by, transfer_method, transfer_status, verification_code, comments, approval_timestamp, approved_by, latency_seconds, temperature_celsius, pressure_pascal, humidity_percent, is_critical, batch_id, related_event_id, created_at, updated_at) VALUES
('Arcane Tower A', 'Mana Reservoir X', 'mana', 1500.5, '2023-05-01', 301, 'portal', 'completed', 'VER12345', 'smooth transfer', '2023-05-01', 401, 2.3, 22.5, 101325, 45.0, 0, 'BATCH001', 501, '2023-05-01', '2023-05-01'),
('Elemental Forge', 'Storm Nexus', 'storm', 800.0, '2023-05-03', 302, 'conduit', 'pending', 'VER67890', 'awaiting clearance', NULL, NULL, 5.0, 18.0, 100500, 50.0, 1, 'BATCH002', 502, '2023-05-03', '2023-05-03'),
('Runic Library', 'Ethereal Plane', 'ether', 1200.75, '2023-05-05', 303, 'runic_gate', 'failed', 'VER54321', 'interference detected', '2023-05-06', 402, 10.0, 20.0, 102000, 55.0, 1, 'BATCH003', 503, '2023-05-05', '2023-05-06');


-- Arcane Research Funding
CREATE TABLE arcane_research_funding (
    funding_id INTEGER PRIMARY KEY AUTOINCREMENT,
    project_code TEXT,
    project_name TEXT,
    principal_investigator INTEGER,
    funding_agency TEXT,
    grant_number TEXT,
    amount_usd REAL,
    start_date DATE,
    end_date DATE,
    funding_status TEXT,
    allocated_budget REAL,
    spent_budget REAL,
    remaining_budget REAL,
    currency TEXT,
    exchange_rate REAL,
    approval_date DATE,
    approved_by INTEGER,
    notes TEXT,
    research_area TEXT,
    is_multi_year INTEGER,
    reporting_frequency_months INTEGER,
    last_report_date DATE,
    created_at DATE
);

INSERT INTO arcane_research_funding (project_code, project_name, principal_investigator, funding_agency, grant_number, amount_usd, start_date, end_date, funding_status, allocated_budget, spent_budget, remaining_budget, currency, exchange_rate, approval_date, approved_by, notes, research_area, is_multi_year, reporting_frequency_months, last_report_date, created_at) VALUES
('ARF-001', 'Temporal Distortion Study', 601, 'Arcane Science Council', 'GNT-1001', 250000.00, '2023-06-01', '2025-05-31', 'active', 250000, 50000, 200000, 'USD', 1.0, '2023-05-15', 701, 'phase1 completed', 'temporal', 1, 6, '2023-11-01', '2023-05-15'),
('ARF-002', 'Elemental Confluence Mapping', 602, 'Elemental Research Fund', 'GNT-1002', 150000.00, '2023-07-15', '2024-07-14', 'pending', 150000, 0, 150000, 'USD', 1.0, '2023-07-01', 702, 'awaiting start', 'elemental', 0, 12, NULL, '2023-07-01'),
('ARF-003', 'Runic Energy Optimization', 603, 'Runic Innovation Grant', 'GNT-1003', 180000.00, '2023-08-01', '2024-02-28', 'active', 180000, 30000, 150000, 'USD', 1.0, '2023-07-20', 703, 'initial trials positive', 'runic', 0, 3, '2023-10-01', '2023-07-20');


-- Venue Noise Compliance
CREATE TABLE venue_noise_compliance (
    compliance_id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    measurement_date DATE,
    decibel_level REAL,
    peak_decibel REAL,
    average_decibel REAL,
    noise_source TEXT,
    compliance_status TEXT,
    inspector_id INTEGER,
    notes TEXT,
    weather_conditions TEXT,
    temperature_celsius REAL,
    humidity_percent REAL,
    wind_speed_kph REAL,
    location_zone TEXT,
    regulatory_body TEXT,
    violation_penalty REAL,
    is_resolved INTEGER,
    resolution_date DATE,
    created_at DATE,
    updated_at DATE
);

INSERT INTO venue_noise_compliance (venue_id, measurement_date, decibel_level, peak_decibel, average_decibel, noise_source, compliance_status, inspector_id, notes, weather_conditions, temperature_celsius, humidity_percent, wind_speed_kph, location_zone, regulatory_body, violation_penalty, is_resolved, resolution_date, created_at, updated_at) VALUES
(801, '2023-09-01', 78.5, 92.0, 80.0, 'crowd', 'compliant', 901, 'within limits', 'clear', 23.0, 40.0, 12.0, 'main_hall', 'CityNoiseDept', 0, 1, NULL, '2023-09-01', '2023-09-01'),
(802, '2023-09-10', 85.0, 103.0, 88.0, 'sound_system', 'violation', 902, 'exceeds 85dB limit during concert', 'rain', 19.0, 70.0, 8.0, 'concert_area', 'CityNoiseDept', 1500.00, 0, NULL, '2023-09-10', '2023-09-10'),
(803, '2023-09-15', 70.2, 80.5, 72.0, 'ventilation', 'compliant', 903, 'no issues', 'cloudy', 21.5, 55.0, 10.0, 'backstage', 'CityNoiseDept', 0, 1, '2023-09-20', '2023-09-15', '2023-09-20');


-- Sponsor Performance Reviews
CREATE TABLE sponsor_performance_reviews (
    review_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    fiscal_year INTEGER,
    total_impressions INTEGER,
    click_through_rate REAL,
    conversion_rate REAL,
    revenue_generated_usd REAL,
    cost_per_impression REAL,
    cost_per_click REAL,
    roi_percentage REAL,
    brand_awareness_score REAL,
    audience_overlap_score REAL,
    campaign_count INTEGER,
    average_campaign_duration_days REAL,
    feedback_summary TEXT,
    reviewer_id INTEGER,
    review_date DATE,
    approved_by INTEGER,
    notes TEXT,
    is_finalized INTEGER,
    created_at DATE,
    updated_at DATE
);

INSERT INTO sponsor_performance_reviews (sponsor_id, fiscal_year, total_impressions, click_through_rate, conversion_rate, revenue_generated_usd, cost_per_impression, cost_per_click, roi_percentage, brand_awareness_score, audience_overlap_score, campaign_count, average_campaign_duration_days, feedback_summary, reviewer_id, review_date, approved_by, notes, is_finalized, created_at, updated_at) VALUES
(1001, 2023, 5000000, 0.025, 0.004, 120000.00, 0.005, 0.20, 2400.0, 78.5, 65.0, 12, 30.5, 'strong engagement overall', 1101, '2023-10-01', 1201, 'ready for next year', 1, '2023-10-01', '2023-10-01'),
(1002, 2023, 3000000, 0.018, 0.003, 75000.00, 0.006, 0.25, 1250.0, 70.0, 58.0, 8, 28.0, 'good reach but low conversion', 1102, '2023-10-05', 1202, 'consider revised creative', 1, '2023-10-05', '2023-10-05'),
(1003, 2023, 8000000, 0.030, 0.005, 200000.00, 0.004, 0.18, 3000.0, 82.0, 72.0, 15, 32.0, 'excellent performance', 1103, '2023-10-10', 1203, 'continue current strategy', 1, '2023-10-10', '2023-10-10');


-- Player Biometric Sessions
CREATE TABLE player_biometric_sessions (
    session_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    session_start DATETIME,
    session_end DATETIME,
    heart_rate_avg INTEGER,
    heart_rate_max INTEGER,
    oxygen_saturation REAL,
    stress_level REAL,
    calories_burned REAL,
    steps_count INTEGER,
    sleep_quality_score REAL,
    hydration_level_ml REAL,
    temperature_celsius REAL,
    device_id TEXT,
    location_city TEXT,
    activity_type TEXT,
    notes TEXT,
    is_anomalous INTEGER,
    anomaly_reason TEXT,
    recorded_by INTEGER,
    created_at DATE,
    updated_at DATE
);

INSERT INTO player_biometric_sessions (player_id, session_start, session_end, heart_rate_avg, heart_rate_max, oxygen_saturation, stress_level, calories_burned, steps_count, sleep_quality_score, hydration_level_ml, temperature_celsius, device_id, location_city, activity_type, notes, is_anomalous, anomaly_reason, recorded_by, created_at, updated_at) VALUES
(2001, '2023-11-01 14:00:00', '2023-11-01 15:30:00', 78, 120, 98.5, 0.35, 450.0, 3500, 85.0, 500.0, 22.0, 'DEV-001', 'NewYork', 'match_play', 'steady performance', 0, NULL, 2101, '2023-11-01', '2023-11-01'),
(2002, '2023-11-02 09:00:00', '2023-11-02 10:15:00', 85, 130, 97.0, 0.55, 520.0, 4200, 70.0, 600.0, 21.5, 'DEV-002', 'LosAngeles', 'practice', 'elevated stress noticed', 1, 'high_stress', 2102, '2023-11-02', '2023-11-02'),
(2003, '2023-11-03 20:00:00', '2023-11-03 21:45:00', 70, 110, 99.0, 0.20, 380.0, 3000, 90.0, 450.0, 20.5, 'DEV-003', 'Chicago', 'tournament', 'excellent', 0, NULL, 2103, '2023-11-03', '2023-11-03');


-- Streaming Quality Incidents
CREATE TABLE streaming_quality_incidents (
    incident_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stream_id INTEGER,
    incident_timestamp DATETIME,
    incident_type TEXT,
    affected_viewers INTEGER,
    duration_seconds INTEGER,
    bitrate_drop_kbps REAL,
    resolution_dropped TEXT,
    error_code TEXT,
    description TEXT,
    resolved_by INTEGER,
    resolution_timestamp DATETIME,
    resolution_action TEXT,
    impact_score REAL,
    severity_level TEXT,
    is_notified INTEGER,
    notification_method TEXT,
    escalated_to TEXT,
    post_incident_review TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO streaming_quality_incidents (stream_id, incident_timestamp, incident_type, affected_viewers, duration_seconds, bitrate_drop_kbps, resolution_dropped, error_code, description, resolved_by, resolution_timestamp, resolution_action, impact_score, severity_level, is_notified, notification_method, escalated_to, post_incident_review, created_at, updated_at) VALUES
(3001, '2023-12-01 18:15:00', 'buffering', 1200, 45, 2500.0, '720p', 'ERR001', 'temporary network congestion', 3101, '2023-12-01 18:16:00', 'reroute_traffic', 75.0, 'medium', 1, 'email', 'network_team', 'monitor further', '2023-12-01', '2023-12-01'),
(3002, '2023-12-02 20:05:00', 'audio_drop', 800, 30, 0.0, NULL, 'ERR002', 'audio feed lost', 3102, '2023-12-02 20:06:00', 'restart_encoder', 60.0, 'low', 1, 'slack', 'audio_team', 'verify hardware', '2023-12-02', '2023-12-02'),
(3003, '2023-12-03 22:45:00', 'stream_cut', 2500, 120, 0.0, NULL, 'ERR003', 'stream terminated unexpectedly', 3103, '2023-12-03 22:50:00', 'failover_to_backup', 90.0, 'high', 1, 'sms', 'operations_manager', 'postmortem scheduled', '2023-12-03', '2023-12-03');


-- Arcane Energy Nodes
CREATE TABLE arcane_energy_nodes (
    node_id INTEGER PRIMARY KEY AUTOINCREMENT,
    node_name TEXT,
    location_x REAL,
    location_y REAL,
    location_z REAL,
    energy_type TEXT,
    capacity_mj REAL,
    current_load_mj REAL,
    status TEXT,
    last_maintenance DATE,
    maintenance_interval_days INTEGER,
    operator_id INTEGER,
    temperature_celsius REAL,
    humidity_percent REAL,
    power_consumption_kw REAL,
    signal_strength_dbm REAL,
    is_active INTEGER,
    firmware_version TEXT,
    ip_address TEXT,
    mac_address TEXT,
    installed_at DATE,
    remarks TEXT
);

INSERT INTO arcane_energy_nodes (node_name, location_x, location_y, location_z, energy_type, capacity_mj, current_load_mj, status, last_maintenance, maintenance_interval_days, operator_id, temperature_celsius, humidity_percent, power_consumption_kw, signal_strength_dbm, is_active, firmware_version, ip_address, mac_address, installed_at, remarks) VALUES
('Node Alpha', 124.5, 78.3, 5.0, 'mana', 5000.0, 1200.0, 'operational', '2023-10-01', 180, 401, 21.0, 45.0, 15.5, -70.0, 1, 'v2.1.4', '192.168.1.10', 'AA:BB:CC:DD:EE:01', '2022-05-15', 'stable'),
('Node Beta', 200.0, 150.2, 10.0, 'storm', 3000.0, 2500.0, 'degraded', '2023-09-15', 180, 402, 23.5, 50.0, 20.0, -60.0, 1, 'v2.0.9', '192.168.1.11', 'AA:BB:CC:DD:EE:02', '2022-06-20', 'high load'),
('Node Gamma', 85.0, 45.5, 2.5, 'ether', 4000.0, 400.0, 'maintenance', '2023-11-20', 180, 403, 19.8, 40.0, 12.0, -75.0, 0, 'v1.9.3', '192.168.1.12', 'AA:BB:CC:DD:EE:03', '2022-07-30', 'scheduled outage');


-- Magical Artifact Registry
CREATE TABLE magical_artifact_registry (
    artifact_id INTEGER PRIMARY KEY AUTOINCREMENT,
    artifact_name TEXT,
    artifact_type TEXT,
    discovery_date DATE,
    origin_location TEXT,
    current_holder TEXT,
    material_composition TEXT,
    magical_affinity TEXT,
    power_level REAL,
    rarity TEXT,
    custodial_institution TEXT,
    catalog_number TEXT,
    acquisition_method TEXT,
    valuation_usd REAL,
    condition_status TEXT,
    last_appraisal_date DATE,
    preservation_notes TEXT,
    is_on_display INTEGER,
    display_location TEXT,
    insurance_policy_number TEXT,
    insured_value_usd REAL,
    created_at DATE,
    updated_at DATE
);

INSERT INTO magical_artifact_registry (artifact_name, artifact_type, discovery_date, origin_location, current_holder, material_composition, magical_affinity, power_level, rarity, custodial_institution, catalog_number, acquisition_method, valuation_usd, condition_status, last_appraisal_date, preservation_notes, is_on_display, display_location, insurance_policy_number, insured_value_usd, created_at, updated_at) VALUES
('Scepter of Dawn', 'staff', '2015-04-12', 'Sunken Ruins', 'Arcane Museum', 'gold_ether', 'light', 950.0, 'legendary', 'National Archive', 'CAT-0001', 'donation', 1200000.00, 'excellent', '2023-01-10', 'kept in climate controlled case', 1, 'Gallery Hall A', 'POL-1001', 1300000.00, '2023-01-01', '2023-01-01'),
('Obsidian Mirror', 'artifact', '2018-09-05', 'Volcanic Cavern', 'Private Collector', 'obsidian', 'shadow', 720.5, 'rare', 'Private', 'CAT-0002', 'purchase', 300000.00, 'good', '2023-06-15', 'handle with gloves', 0, NULL, 'POL-1002', 350000.00, '2023-06-01', '2023-06-01'),
('Chrono Crystal', 'gem', '2020-11-22', 'Temporal Rift', 'Temporal Institute', 'crystal_time', 'time', 860.0, 'mythic', 'Temporal Institute', 'CAT-0003', 'research grant', 750000.00, 'fair', '2023-09-20', 'requires periodic recalibration', 1, 'Exhibit B', 'POL-1003', 800000.00, '2023-09-01', '2023-09-01');