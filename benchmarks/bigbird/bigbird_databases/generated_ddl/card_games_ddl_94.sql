-- Table storing information about physical network nodes in data centers
CREATE TABLE network_nodes
(
    node_id                INTEGER PRIMARY KEY,
    hostname               TEXT,
    ip_address             TEXT,
    mac_address            TEXT,
    location               TEXT,
    rack                   TEXT,
    u_position             INTEGER,
    status                 TEXT,
    cpu_cores              INTEGER,
    memory_gb              REAL,
    storage_tb             REAL,
    os_version             TEXT,
    firmware_version       TEXT,
    last_heartbeat         INTEGER,
    uptime_days            INTEGER,
    temperature_c          REAL,
    power_watts            REAL,
    network_speed_gbps     REAL,
    vlan_id                INTEGER,
    admin_contact          TEXT,
    support_ticket_id      INTEGER,
    notes                  TEXT
);
INSERT INTO network_nodes VALUES (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
INSERT INTO network_nodes VALUES (101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101);
INSERT INTO network_nodes VALUES (201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201);

-- Table capturing high‑level metrics for each data center
CREATE TABLE data_center_metrics
(
    dc_id                    INTEGER PRIMARY KEY,
    total_power_kw          REAL,
    cooling_capacity_kw     REAL,
    avg_temperature_c       REAL,
    humidity_percent        REAL,
    server_count            INTEGER,
    rack_count              INTEGER,
    floor_space_sqm         REAL,
    network_bandwidth_gbps  REAL,
    incident_count          INTEGER,
    maintenance_hours       REAL,
    energy_efficiency_ratio REAL,
    pue                     REAL,
    carbon_emission_tons    REAL,
    expansion_planned       INTEGER,
    last_audit_date         INTEGER,
    security_level          INTEGER,
    backup_capacity_tb      REAL,
    disaster_recovery_status INTEGER,
    vendor_id               INTEGER
);
INSERT INTO data_center_metrics VALUES (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
INSERT INTO data_center_metrics VALUES (101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101);
INSERT INTO data_center_metrics VALUES (201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201);

-- Table logging software deployment events
CREATE TABLE software_deployments
(
    deployment_id          INTEGER PRIMARY KEY,
    application_name       TEXT,
    version                TEXT,
    environment            TEXT,
    host_id                INTEGER,
    start_timestamp        INTEGER,
    end_timestamp          INTEGER,
    status                 TEXT,
    rollback_flag          INTEGER,
    deployed_by_user_id    INTEGER,
    change_ticket_id       INTEGER,
    repo_url               TEXT,
    commit_hash            TEXT,
    config_checksum        TEXT,
    deployment_method      TEXT,
    duration_seconds       INTEGER,
    cpu_usage_percent      REAL,
    memory_usage_mb        REAL,
    disk_io_mb_s           REAL,
    network_io_mb_s        REAL,
    error_count            INTEGER,
    warning_count          INTEGER,
    notes                  TEXT,
    approval_status        TEXT
);
INSERT INTO software_deployments VALUES (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
INSERT INTO software_deployments VALUES (101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101);
INSERT INTO software_deployments VALUES (201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201);

-- Table recording hardware failure incidents
CREATE TABLE hardware_failure_events
(
    event_id               INTEGER PRIMARY KEY,
    hardware_type          TEXT,
    serial_number          TEXT,
    failure_date           INTEGER,
    resolution_date        INTEGER,
    downtime_hours         REAL,
    cause_code             INTEGER,
    replaced_by_serial     TEXT,
    warranty_flag          INTEGER,
    cost_usd               REAL,
    reported_by_user_id    INTEGER,
    severity_level         INTEGER,
    location               TEXT,
    impact_score           REAL,
    root_cause_analysis   TEXT,
    corrective_action      TEXT,
    notes                  TEXT,
    provider_id            INTEGER,
    last_maintenance_date  INTEGER,
    failure_count          INTEGER,
    mean_time_to_failure_hours REAL,
    status                 TEXT
);
INSERT INTO hardware_failure_events VALUES (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
INSERT INTO hardware_failure_events VALUES (101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101);
INSERT INTO hardware_failure_events VALUES (201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201);

-- Table storing derived player behavior scores
CREATE TABLE player_behavior_scores
(
    player_id                INTEGER,
    session_id               INTEGER,
    aggression_score         REAL,
    cooperation_score        REAL,
    risk_taking_score       REAL,
    avg_response_time_ms    REAL,
    games_played            INTEGER,
    win_rate_percent        REAL,
    cheat_flag              INTEGER,
    report_count            INTEGER,
    banned_flag             INTEGER,
    last_warning_date       INTEGER,
    feedback_score          REAL,
    loyalty_score           REAL,
    churn_risk_percent      REAL,
    avg_session_length_min  REAL,
    peak_concurrency        INTEGER,
    engagement_index        REAL,
    toxicity_level          REAL,
    reward_earned_usd       REAL,
    overall_rating          REAL,
    PRIMARY KEY (player_id, session_id)
);
INSERT INTO player_behavior_scores VALUES (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
INSERT INTO player_behavior_scores VALUES (101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101);
INSERT INTO player_behavior_scores VALUES (201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201);

-- Table describing digital advertising campaigns
CREATE TABLE digital_ad_campaigns
(
    campaign_id           INTEGER PRIMARY KEY,
    advertiser_name       TEXT,
    start_date            INTEGER,
    end_date              INTEGER,
    budget_usd            REAL,
    impressions           INTEGER,
    clicks                INTEGER,
    ctr_percent           REAL,
    cpc_usd               REAL,
    cpm_usd               REAL,
    conversion_rate_percent REAL,
    revenue_usd           REAL,
    platform              TEXT,
    ad_format             TEXT,
    target_audience       TEXT,
    geo_target            TEXT,
    device_target         TEXT,
    frequency_cap         INTEGER,
    ad_quality_score      REAL,
    viewability_percent   REAL,
    brand_safety_score    REAL,
    creative_id           INTEGER,
    landing_page_url      TEXT,
    status                TEXT,
    notes                 TEXT
);
INSERT INTO digital_ad_campaigns VALUES (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
INSERT INTO digital_ad_campaigns VALUES (101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101);
INSERT INTO digital_ad_campaigns VALUES (201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201);

-- Table capturing virtual reality session details
CREATE TABLE virtual_reality_sessions
(
    vr_session_id            INTEGER PRIMARY KEY,
    player_id                INTEGER,
    headset_model            TEXT,
    start_timestamp          INTEGER,
    end_timestamp            INTEGER,
    duration_seconds         INTEGER,
    average_fps              REAL,
    motion_sickness_score   REAL,
    controller_events        INTEGER,
    environment_id           INTEGER,
    session_quality_score    REAL,
    bugs_reported            INTEGER,
    patches_applied          INTEGER,
    network_latency_ms       REAL,
    cpu_usage_percent        REAL,
    gpu_usage_percent        REAL,
    memory_usage_mb          REAL,
    storage_used_mb          REAL,
    audio_quality_score      REAL,
    haptic_feedback_intensity REAL,
    user_feedback_rating     REAL,
    session_status           TEXT,
    notes                    TEXT
);
INSERT INTO virtual_reality_sessions VALUES (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
INSERT INTO virtual_reality_sessions VALUES (101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101);
INSERT INTO virtual_reality_sessions VALUES (201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201);

-- Table for feedback collected after community events
CREATE TABLE community_event_feedback
(
    feedback_id          INTEGER PRIMARY KEY,
    event_id             INTEGER,
    player_id            INTEGER,
    rating_score         REAL,
    comments_short       TEXT,
    attendance_status    TEXT,
    future_interest_flag INTEGER,
    net_promoter_score   INTEGER,
    suggestions_count    INTEGER,
    issues_reported      INTEGER,
    survey_completion_time_sec INTEGER,
    consent_given_flag   INTEGER,
    feedback_timestamp   INTEGER,
    platform_used        TEXT,
    language             TEXT,
    device_type          TEXT,
    location             TEXT,
    engagement_level     REAL,
    overall_satisfaction REAL,
    follow_up_required   INTEGER
);
INSERT INTO community_event_feedback VALUES (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
INSERT INTO community_event_feedback VALUES (101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101);
INSERT INTO community_event_feedback VALUES (201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201);

-- Table storing aggregated market trend indicators
CREATE TABLE market_trend_indicators
(
    indicator_id                INTEGER PRIMARY KEY,
    date_key                    INTEGER,
    total_volume_usd            REAL,
    avg_price_usd               REAL,
    median_price_usd            REAL,
    price_volatility_percent    REAL,
    market_cap_usd              REAL,
    active_traders              INTEGER,
    new_listings_count          INTEGER,
    delisted_count              INTEGER,
    fee_percentage              REAL,
    inflation_adjusted_index    REAL,
    sentiment_score             REAL,
    social_media_mentions       INTEGER,
    news_articles_count         INTEGER,
    regulatory_events_count     INTEGER,
    exchange_rate_usd           REAL,
    liquidity_ratio             REAL,
    turnover_rate_percent       REAL,
    market_share_percent        REAL,
    sector_performance          REAL,
    notes                       TEXT
);
INSERT INTO market_trend_indicators VALUES (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
INSERT INTO market_trend_indicators VALUES (101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101);
INSERT INTO market_trend_indicators VALUES (201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201);

-- Table logging detailed security incident reports
CREATE TABLE security_incident_reports
(
    incident_id               INTEGER PRIMARY KEY,
    incident_type             TEXT,
    detection_timestamp       INTEGER,
    resolution_timestamp      INTEGER,
    severity_level            INTEGER,
    affected_systems          TEXT,
    description_text          TEXT,
    root_cause                TEXT,
    mitigation_steps          TEXT,
    downtime_hours            REAL,
    data_loss_gb              REAL,
    financial_impact_usd      REAL,
    compliance_impact_flag    INTEGER,
    reporter_user_id          INTEGER,
    assigned_analyst_id       INTEGER,
    status                    TEXT,
    ticket_number             TEXT,
    investigation_duration_hours REAL,
    lessons_learned           TEXT,
    follow_up_actions         TEXT,
    risk_rating               REAL,
    audit_flag                INTEGER,
    external_notification_flag INTEGER,
    notes                     TEXT
);
INSERT INTO security_incident_reports VALUES (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
INSERT INTO security_incident_reports VALUES (101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101,101);
INSERT INTO security_incident_reports VALUES (201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201,201);