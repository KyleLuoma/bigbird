-- Player Training Modules Details
CREATE TABLE player_training_modules_details
(
    module_id               INTEGER PRIMARY KEY AUTOINCREMENT,
    name                    TEXT,
    description             TEXT,
    difficulty_level        TEXT,
    duration_minutes        INTEGER,
    video_url               TEXT,
    slide_deck_url          TEXT,
    assessment_type         TEXT,
    passing_score           INTEGER,
    created_at              DATE,
    updated_at              DATE,
    author_name             TEXT,
    language                TEXT,
    version                 TEXT,
    is_active               INTEGER,
    max_attempts            INTEGER,
    prerequisite_module_ids TEXT,
    target_role             TEXT,
    certification_required INTEGER,
    feedback_form_url       TEXT,
    external_resource_links TEXT
);

INSERT INTO player_training_modules_details (module_id, name, description, difficulty_level, duration_minutes, video_url, slide_deck_url, assessment_type, passing_score, created_at, updated_at, author_name, language, version, is_active, max_attempts, prerequisite_module_ids, target_role, certification_required, feedback_form_url, external_resource_links) VALUES
(1, 'Intro_to_Strategy', 'Basic strategies for new players', 'Easy', 45, 'http://videos.example.com/intro', 'http://slides.example.com/intro', 'Quiz', 70, '2023-01-10', '2023-01-12', 'JaneDoe', 'English', '1.0', 1, 3, '', 'Player', 0, 'http://forms.example.com/intro', ''),
(2, 'Advanced_Deckbuilding', 'Deep dive into deck construction', 'Hard', 90, 'http://videos.example.com/advdeck', 'http://slides.example.com/advdeck', 'Practical', 80, '2023-02-05', '2023-02-07', 'JohnSmith', 'English', '2.1', 1, 2, '1', 'Designer', 1, 'http://forms.example.com/advdeck', ''),
(3, 'Meta_Analysis', 'Understanding current meta trends', 'Medium', 60, 'http://videos.example.com/meta', 'http://slides.example.com/meta', 'Essay', 75, '2023-03-12', '2023-03-14', 'AliceLee', 'English', '1.5', 1, 4, '1,2', 'Analyst', 0, 'http://forms.example.com/meta', '');

-- Game Server Maintenance
CREATE TABLE game_server_maintenance
(
    maintenance_id                INTEGER PRIMARY KEY AUTOINCREMENT,
    server_cluster                TEXT,
    start_time                    DATE,
    end_time                      DATE,
    reason                        TEXT,
    initiated_by                  TEXT,
    impact_level                  TEXT,
    services_affected             TEXT,
    notification_sent             INTEGER,
    rollback_plan                 TEXT,
    notes                         TEXT,
    created_at                    DATE,
    updated_at                    DATE,
    maintenance_type              TEXT,
    estimated_duration_minutes    INTEGER,
    post_maintenance_report_url   TEXT,
    success_flag                  INTEGER,
    affected_regions              TEXT,
    ticket_id                     TEXT,
    escalation_contact            TEXT,
    maintenance_window_id         TEXT
);

INSERT INTO game_server_maintenance (maintenance_id, server_cluster, start_time, end_time, reason, initiated_by, impact_level, services_affected, notification_sent, rollback_plan, notes, created_at, updated_at, maintenance_type, estimated_duration_minutes, post_maintenance_report_url, success_flag, affected_regions, ticket_id, escalation_contact, maintenance_window_id) VALUES
(1, 'NA_East', '2023-04-01', '2023-04-01', 'Patch_Release_1.2', 'OpsTeam', 'Medium', 'Matchmaking,Leaderboard', 1, 'Revert_to_1.1', 'All systems stable post-maintenance', '2023-03-28', '2023-04-01', 'Scheduled', 120, 'http://reports.example.com/maint1', 1, 'NA,EU', 'TCKT1001', 'lead.ops@example.com', 'MW_20230401'),
(2, 'EU_Central', '2023-05-15', '2023-05-15', 'Database_Migration', 'DBAdmin', 'High', 'User_Profiles,Inventory', 1, 'Backup_Restore', 'Migration completed with zero downtime', '2023-05-10', '2023-05-15', 'Emergency', 90, 'http://reports.example.com/maint2', 1, 'EU', 'TCKT1002', 'db.admin@example.com', 'MW_20230515'),
(3, 'AP_South', '2023-06-20', '2023-06-20', 'Hardware_Upgrade', 'InfraTeam', 'Low', 'Chat_Service', 1, 'Rollback_None', 'Upgrade successful, latency improved', '2023-06-18', '2023-06-20', 'Planned', 60, 'http://reports.example.com/maint3', 1, 'APAC', 'TCKT1003', 'infra.lead@example.com', 'MW_20230620');

-- Community Event Feedback
CREATE TABLE community_event_feedback
(
    feedback_id                INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id                   TEXT,
    participant_id             TEXT,
    rating                     INTEGER,
    comments                   TEXT,
    submitted_at               DATE,
    survey_version             TEXT,
    platform                   TEXT,
    ip_address                 TEXT,
    device_type                TEXT,
    browser                    TEXT,
    language                   TEXT,
    assistance_requested       INTEGER,
    follow_up_needed           INTEGER,
    contact_method             TEXT,
    responder_id               TEXT,
    response_time_minutes      INTEGER,
    net_promoter_score         INTEGER,
    suggestions                TEXT,
    future_interest            INTEGER
);

INSERT INTO community_event_feedback (feedback_id, event_id, participant_id, rating, comments, submitted_at, survey_version, platform, ip_address, device_type, browser, language, assistance_requested, follow_up_needed, contact_method, responder_id, response_time_minutes, net_promoter_score, suggestions, future_interest) VALUES
(1, 'EVT2023_01', 'USR1001', 8, 'Great event, well organized', '2023-04-05', 'v1', 'Web', '192.168.1.10', 'Desktop', 'Chrome', 'English', 0, 0, 'Email', 'MOD2001', 15, 9, 'Add more Q&A', 1),
(2, 'EVT2023_02', 'USR1002', 5, 'Audio issues during sessions', '2023-04-12', 'v1', 'Mobile', '192.168.1.20', 'Mobile', 'Safari', 'English', 1, 1, 'Phone', 'MOD2002', 30, 4, 'Improve sound system', 0),
(3, 'EVT2023_03', 'USR1003', 9, 'Loved the community panels', '2023-04-20', 'v1', 'Web', '192.168.1.30', 'Desktop', 'Firefox', 'English', 0, 0, 'Email', 'MOD2003', 10, 10, 'More panel topics', 1);

-- Digital Asset Taxonomy
CREATE TABLE digital_asset_taxonomy
(
    taxonomy_id                INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_type                 TEXT,
    category                   TEXT,
    subcategory                TEXT,
    format                     TEXT,
    resolution                 TEXT,
    file_size_bytes           INTEGER,
    created_by                 TEXT,
    created_at                 DATE,
    updated_at                 DATE,
    is_public                  INTEGER,
    license_type               TEXT,
    usage_rights               TEXT,
    metadata_schema_version    TEXT,
    parent_taxonomy_id        INTEGER,
    tags                       TEXT,
    description                TEXT,
    thumbnail_url              TEXT,
    preview_url                TEXT,
    retention_policy           TEXT,
    archival_location          TEXT
);

INSERT INTO digital_asset_taxonomy (taxonomy_id, asset_type, category, subcategory, format, resolution, file_size_bytes, created_by, created_at, updated_at, is_public, license_type, usage_rights, metadata_schema_version, parent_taxonomy_id, tags, description, thumbnail_url, preview_url, retention_policy, archival_location) VALUES
(1, 'Artwork', 'Illustration', 'Card_Art', 'PNG', '2400x3400', 5242880, 'ArtistA', '2023-01-01', '2023-01-10', 1, 'CC_BY', 'Unlimited', 'v1', NULL, 'fantasy,magic', 'High‑resolution card artwork', 'http://thumbs.example.com/1.png', 'http://preview.example.com/1.png', 'Indefinite', 'Archive01'),
(2, 'Audio', 'Sound_Effects', 'Spell_SFX', 'WAV', 'N/A', 1048576, 'SoundTeam', '2023-02-15', '2023-02-20', 0, 'Proprietary', 'Limited', 'v2', 1, 'spell,fx', 'Audio for spell casting', 'http://thumbs.example.com/2.png', 'http://preview.example.com/2.wav', '5 Years', 'Archive02'),
(3, 'Video', 'Gameplay', 'Highlights', 'MP4', '1920x1080', 20971520, 'VideoProd', '2023-03-05', '2023-03-07', 1, 'Standard', 'Public', 'v1', NULL, 'tournament,highlights', 'Tournament highlight reel', 'http://thumbs.example.com/3.png', 'http://preview.example.com/3.mp4', 'Indefinite', 'Archive03');

-- Set Release Calendar
CREATE TABLE set_release_calendar
(
    calendar_id                 INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code                    TEXT,
    planned_release_date        DATE,
    actual_release_date         DATE,
    region                      TEXT,
    marketing_campaign          TEXT,
    distribution_partner        TEXT,
    print_run                   INTEGER,
    digital_release_flag       INTEGER,
    special_edition_flag       INTEGER,
    notes                       TEXT,
    created_at                  DATE,
    updated_at                  DATE,
    status                      TEXT,
    expected_sales             INTEGER,
    pre_order_count            INTEGER,
    post_release_sales         INTEGER,
    distribution_channels      TEXT,
    launch_event_id            TEXT,
    external_api_id            TEXT,
    compliance_check_passed    INTEGER
);

INSERT INTO set_release_calendar (calendar_id, set_code, planned_release_date, actual_release_date, region, marketing_campaign, distribution_partner, print_run, digital_release_flag, special_edition_flag, notes, created_at, updated_at, status, expected_sales, pre_order_count, post_release_sales, distribution_channels, launch_event_id, external_api_id, compliance_check_passed) VALUES
(1, 'SET001', '2023-07-01', '2023-07-03', 'NA', 'SummerBlast', 'PartnerA', 800000, 1, 0, 'Delayed due to printing', '2023-05-01', '2023-07-04', 'Released', 1200000, 250000, 800000, 'Retail,Online', 'EVT001', 'API123', 1),
(2, 'SET002', '2023-08-15', NULL, 'EU', 'AutumnRise', 'PartnerB', 600000, 1, 1, 'Special foil edition', '2023-06-10', '2023-08-16', 'Pending', 900000, 150000, NULL, 'Retail,Online', 'EVT002', 'API124', 0),
(3, 'SET003', '2023-09-20', '2023-09-20', 'APAC', 'FallFest', 'PartnerC', 500000, 0, 0, 'Digital only release', '2023-07-20', '2023-09-21', 'Released', 700000, 200000, 400000, 'Digital', 'EVT003', 'API125', 1);

-- Sponsor Contract Terms
CREATE TABLE sponsor_contract_terms
(
    contract_id                 INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_name                TEXT,
    contract_start              DATE,
    contract_end                DATE,
    financial_commitment        REAL,
    deliverables                TEXT,
    exclusivity_flag           INTEGER,
    renewal_option              TEXT,
    termination_notice_days    INTEGER,
    payment_schedule            TEXT,
    invoicing_contact           TEXT,
    legal_representative        TEXT,
    governing_law               TEXT,
    confidentiality_clause      TEXT,
    brand_guidelines_url        TEXT,
    performance_metrics         TEXT,
    audit_rights                INTEGER,
    dispute_resolution          TEXT,
    amendment_history           TEXT,
    status                      TEXT
);

INSERT INTO sponsor_contract_terms (contract_id, sponsor_name, contract_start, contract_end, financial_commitment, deliverables, exclusivity_flag, renewal_option, termination_notice_days, payment_schedule, invoicing_contact, legal_representative, governing_law, confidentiality_clause, brand_guidelines_url, performance_metrics, audit_rights, dispute_resolution, amendment_history, status) VALUES
(1, 'TechCorp', '2023-01-01', '2024-12-31', 250000.00, 'Banner,Stream_Ads,Product_Placement', 1, 'Automatic', 60, 'Quarterly', 'finance@techcorp.com', 'LawFirmX', 'NY', 'Standard', 'http://brand.techcorp.com/guidelines', 'Impressions,Click_Through', 1, 'Arbitration', '2023-03-01:Addendum1', 'Active'),
(2, 'GameGear', '2023-03-15', '2025-03-14', 180000.00, 'In‑Game_Logo,Event_Sponsorship', 0, 'Manual', 90, 'Biannual', 'billing@gamegear.com', 'LawFirmY', 'CA', 'Strict', 'http://brand.gamegear.com/guide', 'Engagement_Rate', 0, 'Mediation', '2024-01-20:RenewalClause', 'Pending'),
(3, 'MediaPlus', '2022-06-01', '2023-05-31', 120000.00, 'Streaming_Spots,Social_Media', 0, 'None', 30, 'Monthly', 'accounts@mediaplus.com', 'LawFirmZ', 'TX', 'Confidential', 'http://mediaplus.com/brand', 'Reach,Views', 1, 'Litigation', '2022-12-10:Extension', 'Expired');

-- Venue Security Logs
CREATE TABLE venue_security_logs
(
    log_id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id                   TEXT,
    event_id                   TEXT,
    timestamp                  DATE,
    security_personnel_id      TEXT,
    incident_type              TEXT,
    description                TEXT,
    severity                   INTEGER,
    action_taken               TEXT,
    resolved_flag              INTEGER,
    resolution_time_minutes    INTEGER,
    camera_footage_url         TEXT,
    access_control_point       TEXT,
    badge_id                   TEXT,
    visitor_id                 TEXT,
    escort_required            INTEGER,
    escalation_level           INTEGER,
    notes                      TEXT,
    updated_by                 TEXT,
    updated_at                 DATE
);

INSERT INTO venue_security_logs (log_id, venue_id, event_id, timestamp, security_personnel_id, incident_type, description, severity, action_taken, resolved_flag, resolution_time_minutes, camera_footage_url, access_control_point, badge_id, visitor_id, escort_required, escalation_level, notes, updated_by, updated_at) VALUES
(1, 'VEN001', 'EVT2023_01', '2023-04-05', 'SEC100', 'Unauthorized_Access', 'Attempted entry without badge', 2, 'Ejected', 1, 5, 'http://cams.example.com/vid1.mp4', 'MainGate', 'BADGE001', 'VIS1001', 1, 1, 'Handled per protocol', 'SupervisorA', '2023-04-05'),
(2, 'VEN002', 'EVT2023_02', '2023-04-12', 'SEC101', 'Medical_Emergency', 'Attendee fainted near stage', 3, 'Provided aid, called EMT', 1, 12, 'http://cams.example.com/vid2.mp4', 'StageLeft', 'BADGE002', 'VIS1002', 0, 2, 'EMT arrived promptly', 'SupervisorB', '2023-04-12'),
(3, 'VEN003', 'EVT2023_03', '2023-04-20', 'SEC102', 'Bag_Check_Failure', 'Suspicious bag flagged at entry', 4, 'Bag searched, no threat', 1, 8, 'http://cams.example.com/vid3.mp4', 'SideEntrance', 'BADGE003', 'VIS1003', 0, 1, 'Passenger cooperative', 'SupervisorC', '2023-04-20');

-- Card Print Quality
CREATE TABLE card_print_quality
(
    quality_id                 INTEGER PRIMARY KEY AUTOINCREMENT,
    card_uuid                  TEXT,
    print_batch_id             TEXT,
    color_accuracy             REAL,
    alignment_error            REAL,
    gloss_level                REAL,
    surface_defect             TEXT,
    defect_severity            INTEGER,
    inspected_by               TEXT,
    inspection_date            DATE,
    pass_fail_flag             INTEGER,
    notes                      TEXT,
    reprint_needed             INTEGER,
    reviewer_comments          TEXT,
    resolution_dpi             INTEGER,
    ink_type                   TEXT,
    paper_stock                TEXT,
    humidity_level             REAL,
    temperature_celsius        REAL,
    equipment_id               TEXT,
    shift_number               INTEGER
);

INSERT INTO card_print_quality (quality_id, card_uuid, print_batch_id, color_accuracy, alignment_error, gloss_level, surface_defect, defect_severity, inspected_by, inspection_date, pass_fail_flag, notes, reprint_needed, reviewer_comments, resolution_dpi, ink_type, paper_stock, humidity_level, temperature_celsius, equipment_id, shift_number) VALUES
(1, 'UUID12345', 'BATCH001', 0.98, 0.02, 1.0, 'None', 0, 'InspectorA', '2023-04-01', 1, 'Excellent quality', 0, 'No issues', 300, 'UV', 'Premium', 45.0, 22.5, 'EQP100', 1),
(2, 'UUID12346', 'BATCH001', 0.85, 0.15, 0.9, 'Minor_Scratch', 2, 'InspectorB', '2023-04-01', 0, 'Scratch on border', 1, 'Requires reprint of affected cards', 300, 'UV', 'Premium', 44.0, 23.0, 'EQP100', 1),
(3, 'UUID12347', 'BATCH002', 0.92, 0.05, 0.95, 'Color_Band', 1, 'InspectorC', '2023-04-10', 1, 'Slight banding acceptable', 0, 'Monitor batch for recurrence', 300, 'UV', 'Standard', 46.0, 22.0, 'EQP101', 2);

-- Market Trend Analysis
CREATE TABLE market_trend_analysis
(
    analysis_id                INTEGER PRIMARY KEY AUTOINCREMENT,
    metric_name                TEXT,
    period_start               DATE,
    period_end                 DATE,
    value_current              REAL,
    value_previous             REAL,
    percent_change             REAL,
    confidence_interval_low    REAL,
    confidence_interval_high   REAL,
    data_source                TEXT,
    analyst_name               TEXT,
    created_at                 DATE,
    updated_at                 DATE,
    region                     TEXT,
    market_segment             TEXT,
    notes                      TEXT,
    forecast_next_period       REAL,
    trend_direction            TEXT,
    anomaly_flag               INTEGER,
    related_metric_ids         TEXT,
    visualization_url          TEXT
);

INSERT INTO market_trend_analysis (analysis_id, metric_name, period_start, period_end, value_current, value_previous, percent_change, confidence_interval_low, confidence_interval_high, data_source, analyst_name, created_at, updated_at, region, market_segment, notes, forecast_next_period, trend_direction, anomaly_flag, related_metric_ids, visualization_url) VALUES
(1, 'Card_Sales_Volume', '2023-01-01', '2023-03-31', 1500000, 1200000, 25.0, 20.0, 30.0, 'Internal', 'AnalystA', '2023-04-01', '2023-04-01', 'NA', 'Physical', 'Strong Q1 growth', 1650000, 'Upward', 0, '2,3', 'http://viz.example.com/1.png'),
(2, 'Digital_Transactions', '2023-01-01', '2023-03-31', 800000, 900000, -11.1, -15.0, -7.0, 'External', 'AnalystB', '2023-04-02', '2023-04-02', 'EU', 'Digital', 'Slight decline Q1', 820000, 'Stable', 0, '1,4', 'http://viz.example.com/2.png'),
(3, 'Marketplace_Active_Users', '2023-01-01', '2023-03-31', 250000, 200000, 25.0, 22.0, 28.0, 'Internal', 'AnalystC', '2023-04-03', '2023-04-03', 'APAC', 'UserBase', 'User growth drives sales', 260000, 'Upward', 0, '1,2', 'http://viz.example.com/3.png');

-- Fantasy World Artifacts
CREATE TABLE fantasy_world_artifacts
(
    artifact_id                INTEGER PRIMARY KEY AUTOINCREMENT,
    name                       TEXT,
    description                TEXT,
    lore_origin                TEXT,
    power_level                INTEGER,
    rarity                     TEXT,
    associated_set_code        TEXT,
    discovered_date            DATE,
    location_found             TEXT,
    current_owner              TEXT,
    artifact_type              TEXT,
    elemental_affinity         TEXT,
    activation_condition       TEXT,
    cooldown_days              INTEGER,
    image_url                  TEXT,
    video_demo_url             TEXT,
    provenance                 TEXT,
    last_known_use             DATE,
    status                     TEXT,
    appraisal_value            REAL
);

INSERT INTO fantasy_world_artifacts (artifact_id, name, description, lore_origin, power_level, rarity, associated_set_code, discovered_date, location_found, current_owner, artifact_type, elemental_affinity, activation_condition, cooldown_days, image_url, video_demo_url, provenance, last_known_use, status, appraisal_value) VALUES
(1, 'Blade_of_Eternity', 'Legendary sword that bends time', 'Ancient_Chronicles', 95, 'Mythic', 'SET001', '2020-05-15', 'Temple_of_Chronos', 'Keeper_of_Time', 'Weapon', 'Chrono', 'Draws moonlight', 30, 'http://images.example.com/blade.png', 'http://videos.example.com/blade.mp4', 'Donated_by_Elder', '2023-03-01', 'In_Custody', 1250000.00),
(2, 'Orb_of_Storms', 'Crystal orb that summons tempests', 'Storm_Remnants', 80, 'Rare', 'SET002', '2019-08-22', 'Cavern_of_Winds', 'Storm_Mage', 'Artifact', 'Air', 'When thunder claps', 7, 'http://images.example.com/orb.png', 'http://videos.example.com/orb.mp4', 'Found_in_Ruins', '2022-11-12', 'Lost', 350000.00),
(3, 'Crown_of_The_Deep', 'Coral crown granting underwater breathing', 'Oceanic_Sagas', 70, 'Uncommon', 'SET003', '2021-02-09', 'Sunken_Palace', 'Mariner_King', 'Accessory', 'Water', 'Submerged for 3 minutes', 1, 'http://images.example.com/crown.png', 'http://videos.example.com/crown.mp4', 'Recovered_by_Diver', '2023-01-20', 'Displayed', 120000.00);