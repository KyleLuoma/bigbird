-- System event log capturing various infrastructure events
CREATE TABLE system_event_log
(
    event_id                INTEGER          PRIMARY KEY,
    event_timestamp         DATETIME,
    event_type              TEXT,
    source_host             TEXT,
    source_ip               TEXT,
    destination_host        TEXT,
    destination_ip          TEXT,
    severity_level          INTEGER,
    payload_hash            TEXT,
    processing_time_ms      INTEGER,
    cpu_usage_percent       DECIMAL,
    memory_usage_mb         INTEGER,
    disk_io_ops             INTEGER,
    network_in_mbps         DECIMAL,
    network_out_mbps        DECIMAL,
    thread_id               INTEGER,
    process_id              INTEGER,
    user_context            TEXT,
    correlation_id          TEXT,
    retry_count             INTEGER,
    is_successful           BOOLEAN,
    error_code              INTEGER,
    error_message           TEXT,
    notification_sent       BOOLEAN,
    archived_flag           BOOLEAN,
    retention_policy_days   INTEGER,
    created_by_service      TEXT,
    updated_by_service      TEXT,
    notes                   TEXT
);

INSERT INTO system_event_log VALUES (1, '2025-12-01 08:15:30', 'ServerRestart', 'web01', '10.0.1.5', 'db01', '10.0.2.10', 2, 'A1B2C3', 120, 15.5, 2048, 350, 125.0, 98.3, 42, 3124, 'admin', 'corr123', 0, 1, NULL, NULL, 1, 0, 90, 'svc_web', 'svc_monitor', 'Initial restart');
INSERT INTO system_event_log VALUES (2, '2025-12-02 14:22:11', 'DataBackup', 'backup01', '10.0.3.20', 'storage01', '10.0.4.30', 1, 'D4E5F6', 5400, 5.2, 1024, 1200, 250.0, 200.1, 7, 8421, 'backup_user', 'corr124', 1, 1, NULL, NULL, 1, 1, 30, 'svc_backup', 'svc_scheduler', 'Daily backup completed');
INSERT INTO system_event_log VALUES (3, '2025-12-03 03:45:00', 'SecurityAlert', 'fw01', '10.0.5.15', 'web02', '10.0.1.6', 5, 'G7H8I9', 30, 12.0, 4096, 80, 45.0, 30.2, 19, 2109, 'sec_engine', 'corr125', 0, 0, 403, 'Unauthorized access attempt', 1, 0, 180, 'svc_security', 'svc_alert', 'Alert logged');

-- API consumer profile storing details about external clients
CREATE TABLE api_consumer_profile
(
    consumer_id               INTEGER PRIMARY KEY,
    consumer_name             TEXT,
    contact_email             TEXT,
    organization_name         TEXT,
    api_key                   TEXT,
    registration_date         DATE,
    last_active_date          DATE,
    total_requests            INTEGER,
    avg_response_time_ms      INTEGER,
    allowed_endpoints         TEXT,
    rate_limit_per_minute     INTEGER,
    quota_limit               INTEGER,
    quota_used                INTEGER,
    is_active                 BOOLEAN,
    is_partner                BOOLEAN,
    support_tier              TEXT,
    sla_level                 TEXT,
    preferred_region          TEXT,
    logged_ip_addresses       TEXT,
    notification_preferences  TEXT,
    webhook_url               TEXT,
    oauth_client_id           TEXT,
    oauth_scopes              TEXT,
    data_retention_days       INTEGER,
    compliance_certifications TEXT,
    notes                     TEXT,
    created_by                TEXT,
    updated_by                TEXT,
    created_at                DATETIME,
    updated_at                DATETIME
);

INSERT INTO api_consumer_profile VALUES (101, 'DataFetcher', 'datafetch@example.com', 'AcmeCorp', 'K1L2M3', '2023-05-10', '2025-12-02', 125000, 85, '/v1/data,/v1/status', 1000, 500000, 120000, 1, 0, 'Gold', 'Gold', 'us-east', '192.168.1.5,192.168.1.6', 'email,sms', 'https://acme.example.com/webhook', 'client_101', 'read,write', 365, 'ISO27001', 'High priority consumer', 'admin', 'admin', '2023-05-10 09:00:00', '2025-12-01 12:30:00');
INSERT INTO api_consumer_profile VALUES (102, 'AnalyticsTool', 'analytics@example.org', 'BetaAnalytics', 'N4O5P6', '2022-11-01', '2025-11-30', 84500, 110, '/v2/metrics', 800, 300000, 250000, 1, 1, 'Platinum', 'Platinum', 'eu-west', '10.0.0.12', 'email', 'https://beta.example.org/hook', 'client_102', 'read', 730, 'SOC2', NULL, 'partner', 'partner', '2022-11-01 08:45:00', '2025-11-30 16:20:00');
INSERT INTO api_consumer_profile VALUES (103, 'InternalTool', 'internal@example.net', 'InternalDept', 'Q7R8S9', '2024-01-15', '2025-12-03', 30000, 60, '/v1/internal', 500, 100000, 50000, 1, 0, 'Silver', 'Silver', 'ap-south', '172.16.0.1', 'sms', 'https://internal.example.net/hook', 'client_103', 'read,write,admin', 180, 'None', 'Testing environment', 'system', 'system', '2024-01-15 10:00:00', '2025-12-03 09:15:00');

-- Content localization metadata for multilingual assets
CREATE TABLE content_localization_meta
(
    loc_id                 INTEGER PRIMARY KEY,
    content_id             INTEGER,
    language_code          TEXT,
    locale_name            TEXT,
    translation_status     TEXT,
    translator_id          INTEGER,
    translation_start_date DATE,
    translation_end_date   DATE,
    word_count             INTEGER,
    character_count        INTEGER,
    reviewed_by_id         INTEGER,
    review_date            DATE,
    quality_score          DECIMAL,
    is_approved            BOOLEAN,
    approval_date          DATE,
    notes                  TEXT,
    source_version         TEXT,
    target_version         TEXT,
    batch_id               INTEGER,
    priority_level         INTEGER,
    country_target         TEXT,
    region_target          TEXT,
    platform_target        TEXT,
    fallback_language_code TEXT,
    created_at             DATETIME,
    updated_at             DATETIME,
    created_by             TEXT,
    updated_by             TEXT,
    retention_policy_days INTEGER,
    audit_log_id           INTEGER
);

INSERT INTO content_localization_meta VALUES (5001, 200, 'es', 'Spanish', 'Completed', 42, '2025-11-20', '2025-11-25', 1500, 8500, 58, '2025-11-26', 4.7, 1, '2025-11-27', 'No issues', 'v1.2', 'v1.2_sp', 301, 2, 'Spain', 'Europe', 'Web', 'en', '2025-11-20 09:00:00', '2025-11-27 14:30:00', 'l10n_manager', 'l10n_manager', 730, 9001);
INSERT INTO content_localization_meta VALUES (5002, 201, 'de', 'German', 'InProgress', 57, '2025-12-01', NULL, 2000, 11000, NULL, NULL, NULL, 0, NULL, 'Pending review', 'v2.0', 'v2.0_de', 302, 1, 'Germany', 'Europe', 'Mobile', 'en', '2025-12-01 10:15:00', NULL, 'l10n_manager', NULL, 730, 9002);
INSERT INTO content_localization_meta VALUES (5003, 202, 'ja', 'Japanese', 'Review', 63, '2025-10-15', '2025-10-20', 1800, 9500, 71, '2025-10-21', 4.3, 0, NULL, 'Awaiting final approval', 'v1.0', 'v1.0_ja', 303, 3, 'Japan', 'Asia', 'Web', 'en', '2025-10-15 08:45:00', '2025-10-21 12:00:00', 'l10n_manager', 'qa_lead', 730, 9003);

-- User learning journal tracking personal development entries
CREATE TABLE user_learning_journal
(
    entry_id                INTEGER PRIMARY KEY,
    user_id                 INTEGER,
    entry_date              DATE,
    title                   TEXT,
    description             TEXT,
    learning_category       TEXT,
    duration_minutes        INTEGER,
    resources_used          TEXT,
    self_assessed_score     INTEGER,
    mentor_feedback         TEXT,
    completed_flag          BOOLEAN,
    certification_obtained  TEXT,
    related_course_id       INTEGER,
    tags                    TEXT,
    mood_before             TEXT,
    mood_after              TEXT,
    location                TEXT,
    device_used             TEXT,
    notes                   TEXT,
    created_at              DATETIME,
    updated_at              DATETIME,
    created_by              TEXT,
    updated_by              TEXT,
    visibility_level        TEXT,
    feedback_rating         INTEGER,
    next_steps              TEXT,
    reminder_timestamp      DATETIME,
    privacy_setting         TEXT,
    external_reference_id   TEXT,
    audit_trail_id          INTEGER
);

INSERT INTO user_learning_journal VALUES (90001, 12, '2025-11-30', 'SQL Optimization', 'Reviewed indexing strategies', 'Database', 90, 'docs.google.com/sql_guide', 8, 'Good job, consider partitioning', 1, 'Advanced SQL Cert', 401, 'sql,indexing', 'Focused', 'Accomplished', 'Home Office', 'Laptop', 'N/A', '2025-11-30 09:00:00', '2025-11-30 12:00:00', 'self', 'self', 'private', 5, 'Apply learned techniques', '2025-12-05 08:00:00', 'private', 'ref_001', 1201);
INSERT INTO user_learning_journal VALUES (90002, 45, '2025-12-02', 'Machine Learning Basics', 'Completed introductory module', 'AI', 120, 'coursera.org/ml_basics', 7, 'Review concepts of overfitting', 1, NULL, 502, 'ml,basics', 'Curious', 'Motivated', 'Coffee Shop', 'Tablet', 'Take notes on algorithms', '2025-12-02 14:30:00', '2025-12-02 16:30:00', 'self', 'self', 'public', 4, 'Start advanced module', '2025-12-10 09:00:00', 'public', 'ref_002', 1202);
INSERT INTO user_learning_journal VALUES (90003, 78, '2025-12-01', 'Project Management Workshop', 'Attended live workshop', 'Management', 180, 'zoom.us/pm_workshop', 9, 'Excellent participation', 1, 'PM Professional', 613, 'pm,workshop', 'Excited', 'Satisfied', 'Corporate HQ', 'Desktop', 'Prepare summary for team', '2025-12-01 10:00:00', '2025-12-01 13:00:00', 'self', 'self', 'team', 5, 'Distribute summary', '2025-12-15 11:00:00', 'team', 'ref_003', 1203);

-- Device inventory snapshot capturing state of hardware assets
CREATE TABLE device_inventory_snapshot
(
    snapshot_id                INTEGER PRIMARY KEY,
    device_id                  INTEGER,
    hostname                   TEXT,
    ip_address                 TEXT,
    mac_address                TEXT,
    asset_tag                  TEXT,
    device_type                TEXT,
    manufacturer               TEXT,
    model_number               TEXT,
    serial_number              TEXT,
    os_name                    TEXT,
    os_version                 TEXT,
    cpu_model                  TEXT,
    cpu_cores                  INTEGER,
    ram_gb                     DECIMAL,
    storage_total_gb           DECIMAL,
    storage_used_gb            DECIMAL,
    gpu_model                  TEXT,
    network_interface_count    INTEGER,
    installed_software_list    TEXT,
    last_patch_date            DATE,
    warranty_expiration_date   DATE,
    location                   TEXT,
    assigned_user_id           INTEGER,
    status                     TEXT,
    health_score               DECIMAL,
    last_audited_timestamp     DATETIME,
    auditor_id                 INTEGER,
    notes                      TEXT,
    created_at                 DATETIME,
    updated_at                 DATETIME,
    retention_policy_days      INTEGER,
    compliance_status          TEXT
);

INSERT INTO device_inventory_snapshot VALUES (20001, 101, 'srv-web01', '10.0.1.5', 'AA:BB:CC:DD:EE:01', 'WT-001', 'Server', 'Dell', 'PowerEdge R740', 'SN123456', 'Ubuntu', '22.04', 'Intel Xeon', 16, 64.0, 2000.0, 1500.0, 'NVIDIA T1000', 2, 'nginx,postgres,redis', '2025-11-20', '2028-11-20', 'Data Center A', 12, 'Active', 95.5, '2025-12-01 10:00:00', 5, 'All good', '2025-12-01 10:00:00', '2025-12-01 10:05:00', 730, 'Compliant');
INSERT INTO device_inventory_snapshot VALUES (20002, 102, 'laptop-jen', '10.1.2.15', 'AA:BB:CC:DD:EE:02', 'WT-045', 'Laptop', 'Lenovo', 'ThinkPad X1', 'SN789012', 'Windows', '10', 'Intel i7', 8, 16.0, 512.0, 300.0, NULL, 1, 'Office365,Chrome', '2025-10-30', '2026-10-30', 'Office 3B', 23, 'InUse', 88.0, '2025-12-02 09:30:00', 7, 'Battery replace soon', '2025-12-02 09:30:00', '2025-12-02 09:35:00', 730, 'Compliant');
INSERT INTO device_inventory_snapshot VALUES (20003, 103, 'router-edge01', '10.2.5.1', 'AA:BB:CC:DD:EE:03', 'WT-078', 'Router', 'Cisco', 'ISR 4451', 'SN345678', 'IOS-XE', '16.12', 'ARM', 4, 8.0, 0.0, 0.0, NULL, 4, 'OSPF,BGP,ACLs', '2025-11-15', '2029-11-15', 'Network Hub', NULL, 'Operational', 92.0, '2025-12-03 08:00:00', 9, 'Firmware update pending', '2025-12-03 08:00:00', '2025-12-03 08:05:00', 730, 'Compliant');

-- Advertisement target segment definition
CREATE TABLE advertisement_target_segment
(
    segment_id                 INTEGER PRIMARY KEY,
    segment_name               TEXT,
    description                TEXT,
    demographic_age_range      TEXT,
    gender_target              TEXT,
    income_bracket             TEXT,
    location_country           TEXT,
    location_region            TEXT,
    device_type_target         TEXT,
    interests_list             TEXT,
    behavioral_score           DECIMAL,
    purchase_intent_score      DECIMAL,
    last_update_date           DATE,
    created_by                 TEXT,
    is_active                  BOOLEAN,
    priority_level             INTEGER,
    budget_allocation_usd      DECIMAL,
    expected_cpm               DECIMAL,
    expected_ctr               DECIMAL,
    frequency_cap_per_user     INTEGER,
    ad_format_allowed          TEXT,
    content_category_allowed   TEXT,
    exclusion_list             TEXT,
    notes                      TEXT,
    created_at                 DATETIME,
    updated_at                 DATETIME,
    retention_policy_days      INTEGER,
    audit_log_id               INTEGER,
    compliance_requirements   TEXT,
    geo_fencing_enabled        BOOLEAN
);

INSERT INTO advertisement_target_segment VALUES (301, 'TechEnthusiasts', 'Users interested in technology and gadgets', '18-35', 'All', 'Medium-High', 'US', 'California', 'Mobile,Desktop', 'AI,Cloud,IoT', 78.5, 65.2, '2025-11-01', 'ad_ops', 1, 2, 150000.00, 5.00, 0.45, 3, 'Banner,Video', 'Technology,Science', 'Politics,Religion', 'High engagement segment', '2025-11-01 09:00:00', '2025-12-01 10:00:00', 365, 4001, 'GDPR', 1);
INSERT INTO advertisement_target_segment VALUES (302, 'HealthConscious', 'Adults focused on health and wellness', '25-50', 'All', 'Medium', 'CA', 'Ontario', 'Mobile', 'Fitness,Nutrition,Wellness', 70.0, 55.0, '2025-10-15', 'ad_ops', 1, 3, 80000.00, 4.50, 0.38, 2, 'Banner', 'Health,Lifestyle', 'Alcohol,Tobacco', 'Seasonal campaign', '2025-10-15 11:30:00', '2025-11-20 12:00:00', 365, 4002, 'CCPA', 0);
INSERT INTO advertisement_target_segment VALUES (303, 'LuxuryTravelers', 'High income individuals seeking premium travel experiences', '35-60', 'All', 'High', 'GB', 'London', 'Desktop', 'Travel,Luxury,Adventure', 85.0, 72.5, '2025-09-01', 'ad_ops', 1, 1, 200000.00, 8.00, 0.60, 1, 'Video,Native', 'Travel,Luxury', 'Budget,Economy', 'Quarterly high ROI', '2025-09-01 08:00:00', '2025-11-30 09:30:00', 365, 4003, 'GDPR', 1);

-- Knowledge graph node metadata storing supplemental attributes
CREATE TABLE knowledge_graph_node_meta
(
    node_id                     INTEGER PRIMARY KEY,
    node_label                  TEXT,
    node_type                   TEXT,
    description                 TEXT,
    created_timestamp           DATETIME,
    last_modified_timestamp    DATETIME,
    source_system               TEXT,
    confidence_score            DECIMAL,
    is_active                   BOOLEAN,
    version_number              INTEGER,
    lifecycle_state             TEXT,
    related_entities            TEXT,
    tags                        TEXT,
    hierarchical_level          INTEGER,
    importance_rank             INTEGER,
    temporal_validity_start     DATE,
    temporal_validity_end       DATE,
    geographic_scope            TEXT,
    language_code               TEXT,
    data_quality_metric         DECIMAL,
    enrichment_status           TEXT,
    audit_trail_id              INTEGER,
    owner_department            TEXT,
    compliance_status           TEXT,
    retention_policy_days       INTEGER,
    notes                       TEXT,
    external_reference_id       TEXT,
    created_by                  TEXT,
    updated_by                  TEXT,
    last_accessed_timestamp     DATETIME
);

INSERT INTO knowledge_graph_node_meta VALUES (8001, 'QuantumComputing', 'Concept', 'Field of study dealing with quantum algorithms', '2025-01-10 08:00:00', '2025-12-01 12:00:00', 'research_db', 92.5, 1, 3, 'Stable', 'Physics,ComputerScience', 'quantum,computing', 2, 5, '2025-01-01', '2026-12-31', 'Global', 'en', 4.8, 'Enriched', 5001, 'R&D', 'Compliant', 730, 'Reviewed by domain expert', 'ref_qc_01', 'admin', 'admin', '2025-12-01 12:00:00');
INSERT INTO knowledge_graph_node_meta VALUES (8002, 'CarbonNeutralPolicy', 'Policy', 'Corporate commitment to net-zero carbon emissions', '2024-05-15 09:30:00', '2025-11-20 10:45:00', 'policy_repo', 88.0, 1, 2, 'Active', 'Environment,Sustainability', 'carbon,neutral,policy', 1, 2, '2024-01-01', '2030-12-31', 'Global', 'en', 4.5, 'Pending', 5002, 'Compliance', 'Compliant', 1095, 'Policy updated quarterly', 'ref_cp_02', 'policy_admin', 'policy_admin', '2025-11-20 10:45:00');
INSERT INTO knowledge_graph_node_meta VALUES (8003, 'MarsRover2025', 'Mission', 'Robotic exploration mission to Mars', '2025-03-01 07:00:00', '2025-12-02 15:20:00', 'space_agency', 95.0, 1, 1, 'InProgress', 'Space,Robotics', 'mars,rover,2025', 3, 1, '2025-03-01', '2028-12-31', 'Mars', 'en', 5.0, 'Enriched', 5003, 'Exploration', 'Compliant', 730, 'Mission milestones tracked', 'ref_mr_03', 'mission_control', 'mission_control', '2025-12-02 15:20:00');

-- Forum moderator activity log tracking moderation events
CREATE TABLE forum_moderator_activity_log
(
    log_id                     INTEGER PRIMARY KEY,
    moderator_id               INTEGER,
    forum_id                   INTEGER,
    activity_type              TEXT,
    activity_timestamp         DATETIME,
    target_post_id             INTEGER,
    target_comment_id          INTEGER,
    action_taken               TEXT,
    reason_code                TEXT,
    notes                      TEXT,
    duration_seconds           INTEGER,
    is_escalated               BOOLEAN,
    escalation_level           INTEGER,
    resolved_timestamp         DATETIME,
    resolved_by_id             INTEGER,
    notification_sent          BOOLEAN,
    follow_up_required         BOOLEAN,
    follow_up_due_date         DATE,
    attached_evidence_url      TEXT,
    classification_category    TEXT,
    severity_score             DECIMAL,
    created_at                 DATETIME,
    updated_at                 DATETIME,
    created_by                 TEXT,
    updated_by                 TEXT,
    audit_log_id               INTEGER,
    compliance_flag            BOOLEAN,
    retention_policy_days      INTEGER,
    external_reference_id      TEXT,
    reviewer_comments          TEXT
);

INSERT INTO forum_moderator_activity_log VALUES (40001, 22, 5, 'DeletePost', '2025-12-01 09:15:00', 12345, NULL, 'Deleted', 'Spam', 'Repeated spam content', 30, 0, NULL, '2025-12-01 09:16:00', 22, 1, 0, NULL, NULL, 'Spam', 9.0, '2025-12-01 09:15:00', '2025-12-01 09:16:00', 'mod_admin', 'mod_admin', 6001, 0, 365, 'ref_mod_001', 'N/A');
INSERT INTO forum_moderator_activity_log VALUES (40002, 23, 5, 'FlagComment', '2025-12-02 14:40:00', NULL, 9876, 'Flagged', 'Harassment', 'User harassing others', 45, 1, 2, NULL, NULL, 1, 1, '2025-12-10', 'https://evidence.example.com/9876', 'Harassment', 8.5, '2025-12-02 14:40:00', NULL, 'mod_lead', 'mod_lead', 6002, 1, 730, 'ref_mod_002', 'Escalated to senior moderator');
INSERT INTO forum_moderator_activity_log VALUES (40003, 24, 7, 'CloseThread', '2025-12-03 11:00:00', 54321, NULL, 'Closed', 'OffTopic', 'Thread off-topic for this forum', 20, 0, NULL, '2025-12-03 11:01:00', 24, 1, 0, NULL, NULL, 'Moderation', 7.0, '2025-12-03 11:00:00', '2025-12-03 11:01:00', 'mod_admin', 'mod_admin', 6003, 0, 365, 'ref_mod_003', 'N/A');

-- External partner metrics capturing performance indicators
CREATE TABLE external_partner_metric
(
    metric_id                  INTEGER PRIMARY KEY,
    partner_id                 INTEGER,
    metric_name                TEXT,
    metric_category            TEXT,
    reporting_period_start     DATE,
    reporting_period_end       DATE,
    value_numeric              DECIMAL,
    value_text                 TEXT,
    unit_of_measure            TEXT,
    aggregation_type           TEXT,
    confidence_interval_low    DECIMAL,
    confidence_interval_high   DECIMAL,
    data_source                TEXT,
    collection_timestamp       DATETIME,
    is_estimated               BOOLEAN,
    notes                      TEXT,
    created_at                 DATETIME,
    updated_at                 DATETIME,
    created_by                 TEXT,
    updated_by                 TEXT,
    retention_policy_days      INTEGER,
    audit_log_id               INTEGER,
    compliance_status          TEXT,
    external_reference_id      TEXT,
    threshold_warning          DECIMAL,
    threshold_critical         DECIMAL,
    alert_triggered            BOOLEAN,
    last_alert_timestamp       DATETIME,
    metric_version             INTEGER,
    geo_region                 TEXT,
    currency_code              TEXT
);

INSERT INTO external_partner_metric VALUES (701, 301, 'MonthlyActiveUsers', 'Engagement', '2025-11-01', '2025-11-30', 125000, NULL, 'users', 'SUM', 120000, 130000, 'partner_api', '2025-12-01 08:00:00', 0, 'Stable growth', '2025-12-01 08:00:00', '2025-12-01 08:00:00', 'partner_admin', 'partner_admin', 365, 7001, 'Compliant', 'ref_pm_001', 100000, 150000, 0, NULL, 1, 'EMEA', 'USD');
INSERT INTO external_partner_metric VALUES (702, 302, 'ErrorRate', 'Reliability', '2025-11-01', '2025-11-30', 0.023, NULL, 'percent', 'AVG', 0.020, 0.025, 'log_aggregator', '2025-12-01 09:15:00', 0, 'Within SLA', '2025-12-01 09:15:00', '2025-12-01 09:15:00', 'partner_admin', 'partner_admin', 365, 7002, 'Compliant', 'ref_pm_002', 0.01, 0.03, 0, NULL, 1, 'APAC', 'USD');
INSERT INTO external_partner_metric VALUES (703, 303, 'RevenueGenerated', 'Financial', '2025-11-01', '2025-11-30', 4523000, NULL, 'USD', 'SUM', 4400000, 4600000, 'billing_system', '2025-12-01 10:30:00', 0, 'Targets met', '2025-12-01 10:30:00', '2025-12-01 10:30:00', 'partner_admin', 'partner_admin', 365, 7003, 'Compliant', 'ref_pm_003', 4000000, 5000000, 0, NULL, 1, 'NA', 'USD');

-- Supplier contract detail storing extended contract information
CREATE TABLE supplier_contract_detail
(
    contract_id                INTEGER PRIMARY KEY,
    supplier_id                INTEGER,
    contract_number            TEXT,
    contract_title             TEXT,
    start_date                 DATE,
    end_date                   DATE,
    renewal_option             TEXT,
    payment_terms              TEXT,
    total_value_usd            DECIMAL,
    currency_code              TEXT,
    scope_of_work              TEXT,
    service_level_agreement    TEXT,
    penalty_clause_description TEXT,
    notice_period_days         INTEGER,
    governing_law              TEXT,
    jurisdiction               TEXT,
    contract_status            TEXT,
    approval_timestamp         DATETIME,
    approved_by_user_id        INTEGER,
    created_timestamp          DATETIME,
    created_by_user_id         INTEGER,
    last_modified_timestamp    DATETIME,
    last_modified_by_user_id   INTEGER,
    compliance_requirements   TEXT,
    audit_trail_id             INTEGER,
    retention_policy_days      INTEGER,
    notes                      TEXT,
    attachment_url             TEXT,
    contract_version           INTEGER,
    risk_assessment_score     DECIMAL,
    insurance_coverage_details TEXT,
    dispute_resolution_method  TEXT,
    confidentiality_clause     TEXT,
    termination_clause         TEXT,
    created_at                 DATETIME,
    updated_at                 DATETIME
);

INSERT INTO supplier_contract_detail VALUES (9001, 501, 'SC-2023-001', 'Cloud Hosting Services', '2023-01-01', '2025-12-31', 'AutoRenew', 'Net30', 2500000, 'USD', 'Provide scalable cloud infrastructure', '99.9% uptime', 'Late payment penalties apply', 30, 'California', 'USA', 'Active', '2022-12-15 10:00:00', 12, '2022-12-01 09:00:00', 12, '2025-06-01 15:45:00', 12, 'ISO27001,PCI-DSS', 90001, 730, 'Reviewed quarterly', 'https://docs.example.com/sc-2023-001.pdf', 2, 3.5, 'Liability up to $5M', 'Arbitration', 'Standard NDAs', '30 days notice', '2025-06-01 00:00:00', '2025-06-01 00:00:00');
INSERT INTO supplier_contract_detail VALUES (9002, 502, 'SC-2024-015', 'Data Analytics Platform', '2024-04-01', '2027-03-31', 'OptionToExtend', 'Net45', 1800000, 'USD', 'Analytics dashboards and reporting', 'Data refresh within 24h', 'Service credits for downtime', 60, 'New York', 'USA', 'Pending', NULL, NULL, '2024-03-20 14:30:00', 34, NULL, NULL, 'SOC2', 90002, 730, 'Awaiting legal signoff', 'https://docs.example.com/sc-2024-015.pdf', 1, 2.8, 'Liability up to $2M', 'Mediation', 'Confidentiality required', '90 days notice', '2024-03-20 14:30:00', '2024-03-20 14:30:00');
INSERT INTO supplier_contract_detail VALUES (9003, 503, 'SC-2022-099', 'Hardware Procurement', '2022-07-15', '2024-07-14', 'NoRenewal', 'Net60', 750000, 'USD', 'Supply of servers and networking gear', 'Delivery within 30 days', 'Late delivery penalties', 45, 'Texas', 'USA', 'Expired', '2022-07-01 11:00:00', 56, '2022-06-20 10:00:00', 56, '2024-07-10 09:30:00', 56, 'ISO9001', 90003, 730, 'Closed contract', 'https://docs.example.com/sc-2022-099.pdf', 3, 4.0, 'Liability up to $1M', 'Court litigation', 'Standard confidentiality', 'Immediate termination clause', '2024-07-10 09:30:00', '2024-07-10 09:30:00');
