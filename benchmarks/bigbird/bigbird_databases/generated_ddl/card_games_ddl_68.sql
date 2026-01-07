-- Platform usage metrics per day
CREATE TABLE platform_metrics
(
    metric_id              INTEGER PRIMARY KEY,
    platform_name          TEXT,
    day                    DATE,
    active_users           INTEGER,
    new_signups            INTEGER,
    sessions               INTEGER,
    avg_session_duration   REAL,
    crash_count            INTEGER,
    api_calls              INTEGER,
    error_rate             REAL,
    cpu_usage              REAL,
    memory_usage           REAL,
    disk_io                REAL,
    network_in             REAL,
    network_out            REAL,
    region                 TEXT,
    version                TEXT,
    feature_flag           TEXT,
    experiment_group       TEXT,
    uptime_seconds         INTEGER,
    maintenance_window    TEXT
);

INSERT INTO platform_metrics (metric_id, platform_name, day, active_users, new_signups, sessions, avg_session_duration, crash_count, api_calls, error_rate, cpu_usage, memory_usage, disk_io, network_in, network_out, region, version, feature_flag, experiment_group, uptime_seconds, maintenance_window) VALUES
(1, 'WebPortal', '2024-12-01', 1200, 45, 3000, 15.2, 2, 50000, 0.02, 55.3, 68.1, 120.5, 250.0, 190.0, 'North_America', '1.4.2', 'beta', 'A', 86400, '02:00-03:00'),
(2, 'MobileApp', '2024-12-01', 850, 30, 2100, 12.8, 1, 42000, 0.015, 48.7, 72.4, 95.3, 180.5, 140.2, 'Europe', '2.3.0', 'alpha', 'B', 86400, '01:00-02:00'),
(3, 'APIService', '2024-12-01', 560, 12, 1500, 9.4, 0, 75000, 0.01, 62.1, 80.0, 210.2, 300.0, 260.0, 'Asia_Pacific', '3.0.5', 'stable', 'C', 86400, '03:00-04:00');

-- Geographic distribution zones for shipping
CREATE TABLE geo_distribution_zones
(
    zone_id                     INTEGER PRIMARY KEY,
    zone_name                   TEXT,
    continent                   TEXT,
    country_codes               TEXT,
    average_delivery_days       REAL,
    cost_multiplier             REAL,
    priority                    INTEGER,
    supported_carriers          TEXT,
    max_weight_kg               REAL,
    hazardous_material_allowed  INTEGER,
    customs_requirements        TEXT,
    tax_rate                    REAL,
    timezone                    TEXT,
    regional_manager            TEXT,
    contact_email               TEXT,
    phone_number                TEXT,
    sla_hours                   INTEGER,
    backorder_policy            TEXT,
    insurance_available         INTEGER,
    notes                       TEXT
);

INSERT INTO geo_distribution_zones (zone_id, zone_name, continent, country_codes, average_delivery_days, cost_multiplier, priority, supported_carriers, max_weight_kg, hazardous_material_allowed, customs_requirements, tax_rate, timezone, regional_manager, contact_email, phone_number, sla_hours, backorder_policy, insurance_available, notes) VALUES
(1, 'North_America_Standard', 'North_America', 'US,CA,MX', 5.2, 1.0, 1, 'FedEx,UPS', 30.0, 0, 'Standard', 0.07, 'EST', 'Alice_Williams', 'alice.w@example.com', '+1-555-0100', 48, 'Allow', 1, 'Primary zone for NA'),
(2, 'Europe_Express', 'Europe', 'DE,FR,GB,IT,ES', 2.5, 1.5, 2, 'DHL,DPD', 25.0, 0, 'Simplified', 0.20, 'CET', 'Bjorn_Soder', 'bjorn.s@example.eu', '+44-20-1234-5678', 24, 'Disallow', 1, 'Fast shipping for EU'),
(3, 'Asia_Pacific_Rural', 'Asia', 'CN,JP,KR,AU', 9.0, 2.0, 3, 'SF_Express', 20.0, 1, 'Complex', 0.15, 'JST', 'Ling_Zhao', 'ling.z@example.cn', '+86-10-1234-5678', 72, 'Allow', 0, 'Limited infrastructure');

-- API client device inventory
CREATE TABLE api_client_devices
(
    device_id            INTEGER PRIMARY KEY,
    client_id            INTEGER,
    device_type          TEXT,
    os_name              TEXT,
    os_version           TEXT,
    app_version          TEXT,
    manufacturer         TEXT,
    model                TEXT,
    screen_resolution    TEXT,
    cpu_cores            INTEGER,
    ram_gb               REAL,
    storage_gb           REAL,
    is_emulated          INTEGER,
    last_seen            DATE,
    first_registered     DATE,
    push_token           TEXT,
    locale               TEXT,
    timezone             TEXT,
    carrier              TEXT,
    network_type         TEXT,
    battery_level        REAL,
    encryption_enabled   INTEGER,
    approved             INTEGER,
    notes                TEXT
);

INSERT INTO api_client_devices (device_id, client_id, device_type, os_name, os_version, app_version, manufacturer, model, screen_resolution, cpu_cores, ram_gb, storage_gb, is_emulated, last_seen, first_registered, push_token, locale, timezone, carrier, network_type, battery_level, encryption_enabled, approved, notes) VALUES
(1, 101, 'Smartphone', 'Android', '12', '3.1.4', 'Samsung', 'GalaxyS21', '1080x2400', 8, 8.0, 128.0, 0, '2024-12-01', '2023-05-10', 'token123abc', 'en_US', 'America/New_York', 'Verizon', '5G', 85.5, 1, 1, 'Primary device for API client 101'),
(2, 102, 'Tablet', 'iOS', '16.2', '2.7.0', 'Apple', 'iPadPro', '2048x2732', 6, 6.0, 256.0, 0, '2024-12-01', '2022-11-22', 'token456def', 'en_GB', 'Europe/London', 'EE', 'WiFi', 72.0, 1, 1, 'Dashboard tablet'),
(3, 103, 'Desktop', 'Windows', '10', '5.0.2', 'Dell', 'OptiPlex', '1920x1080', 12, 16.0, 512.0, 0, '2024-12-01', '2021-02-15', 'token789ghi', 'en_AU', 'Australia/Sydney', 'Telstra', 'Ethernet', 100.0, 1, 0, 'Pending approval');

-- Customer loyalty program definitions
CREATE TABLE customer_loyalty_programs
(
    program_id          INTEGER PRIMARY KEY,
    program_name        TEXT,
    start_date          DATE,
    end_date            DATE,
    tier_levels         TEXT,
    points_per_dollar   REAL,
    redemption_rate     REAL,
    bonus_multiplier    REAL,
    expiration_days     INTEGER,
    eligible_countries  TEXT,
    description         TEXT,
    enrollment_url      TEXT,
    terms_url           TEXT,
    status              TEXT,
    max_points          INTEGER,
    rollover_allowed    INTEGER,
    email_notifications INTEGER,
    sms_notifications   INTEGER,
    created_by          TEXT,
    created_at          DATE,
    updated_at          DATE,
    notes               TEXT
);

INSERT INTO customer_loyalty_programs (program_id, program_name, start_date, end_date, tier_levels, points_per_dollar, redemption_rate, bonus_multiplier, expiration_days, eligible_countries, description, enrollment_url, terms_url, status, max_points, rollover_allowed, email_notifications, sms_notifications, created_by, created_at, updated_at, notes) VALUES
(1, 'GoldClub', '2024-01-01', '2025-12-31', 'Silver,Gold,Platinum', 1.5, 0.01, 1.2, 365, 'US,CA,MX', 'Premium rewards for frequent buyers', 'https://example.com/goldclub/enroll', 'https://example.com/goldclub/terms', 'Active', 50000, 1, 1, 0, 'admin', '2024-01-01', '2024-11-15', 'Initial launch'),
(2, 'EcoRewards', '2023-06-01', NULL, 'Basic,Green,EcoPlus', 2.0, 0.015, 1.0, 730, 'DE,FR,NL,BE', 'Rewards for sustainable purchases', 'https://example.com/ecorewards/enroll', 'https://example.com/ecorewards/terms', 'Active', 75000, 0, 1, 1, 'marketing', '2023-06-01', '2024-10-20', 'Environmental focus'),
(3, 'StudentPerks', '2022-09-01', '2024-08-31', 'Bronze,Silver', 1.0, 0.008, 0.9, 180, 'US,GB,AU,CA', 'Discounts for students', 'https://example.com/studentperks/enroll', 'https://example.com/studentperks/terms', 'Expired', 20000, 1, 0, 0, 'ops', '2022-09-01', '2024-08-31', 'Program ended');

-- Advertising creative asset catalog
CREATE TABLE advertising_creative_assets
(
    asset_id            INTEGER PRIMARY KEY,
    campaign_id         INTEGER,
    asset_type          TEXT,
    file_path           TEXT,
    resolution          TEXT,
    file_size_kb        INTEGER,
    duration_seconds    REAL,
    format              TEXT,
    language            TEXT,
    target_audience     TEXT,
    start_date          DATE,
    end_date            DATE,
    impressions         INTEGER,
    clicks              INTEGER,
    ctr                 REAL,
    cost_per_mille      REAL,
    creative_version    INTEGER,
    approval_status     TEXT,
    uploaded_by         TEXT,
    uploaded_at         DATE,
    notes               TEXT,
    hash                TEXT
);

INSERT INTO advertising_creative_assets (asset_id, campaign_id, asset_type, file_path, resolution, file_size_kb, duration_seconds, format, language, target_audience, start_date, end_date, impressions, clicks, ctr, cost_per_mille, creative_version, approval_status, uploaded_by, uploaded_at, notes, hash) VALUES
(1, 301, 'Video', '/assets/video1.mp4', '1920x1080', 50000, 30.5, 'MP4', 'en', 'Adults_25_45', '2024-11-01', '2025-01-31', 1200000, 24000, 2.0, 15.0, 3, 'Approved', 'creative_manager', '2024-10-20', 'Seasonal campaign video', 'a1b2c3d4e5'),
(2, 302, 'Banner', '/assets/banner1.jpg', '728x90', 250, NULL, 'JPG', 'es', 'Teens_13_19', '2024-12-15', '2025-03-15', 800000, 5600, 0.7, 8.5, 1, 'Pending', 'designer_es', '2024-12-01', 'Spanish market banner', 'f6g7h8i9j0'),
(3, 303, 'Audio', '/assets/audio1.mp3', NULL, 12000, 15.0, 'MP3', 'de', 'Professionals_30_55', '2024-10-01', '2025-02-28', 500000, 7500, 1.5, 12.0, 2, 'Approved', 'audio_lead', '2024-09-25', 'Podcast ad spot', 'k1l2m3n4o5');

-- Gameplay balancing change logs
CREATE TABLE gameplay_balancing_logs
(
    log_id               INTEGER PRIMARY KEY,
    patch_version        TEXT,
    change_type          TEXT,
    affected_mechanic    TEXT,
    description          TEXT,
    impact_score         REAL,
    testing_phase        TEXT,
    tester_id            INTEGER,
    start_date           DATE,
    end_date             DATE,
    result               TEXT,
    rollback_required    INTEGER,
    priority             INTEGER,
    severity             INTEGER,
    notes                TEXT,
    created_at           DATE,
    updated_at           DATE,
    reviewed_by          TEXT,
    review_status        TEXT,
    documentation_url    TEXT,
    related_jira         TEXT
);

INSERT INTO gameplay_balancing_logs (log_id, patch_version, change_type, affected_mechanic, description, impact_score, testing_phase, tester_id, start_date, end_date, result, rollback_required, priority, severity, notes, created_at, updated_at, reviewed_by, review_status, documentation_url, related_jira) VALUES
(1, '1.5.0', 'Nerf', 'Fireball', 'Reduced base damage from 5 to 4', 3.2, 'Internal', 201, '2024-09-01', '2024-09-15', 'Pass', 0, 2, 4, 'No player complaints', '2024-09-16', '2024-09-20', 'lead_balancer', 'Approved', 'https://docs.example.com/balance/1.5.0/fireball', 'JIRA-1245'),
(2, '1.5.1', 'Buff', 'Mana_Regen', 'Increased mana regen rate by 10%', 2.8, 'Public_Beta', 202, '2024-09-20', '2024-10-05', 'Pass', 0, 3, 3, 'Positive meta shift', '2024-10-06', '2024-10-08', 'qa_lead', 'Approved', 'https://docs.example.com/balance/1.5.1/manaregen', 'JIRA-1278'),
(3, '1.5.2', 'Rework', 'Summon_Elem', 'Changed summon cost and added new ability', 4.5, 'Closed_Beta', 203, '2024-10-10', '2024-10-25', 'Fail', 1, 1, 5, 'Critical bug found', '2024-10-26', '2024-11-01', 'dev_manager', 'Rejected', 'https://docs.example.com/balance/1.5.2/summonelem', 'JIRA-1302');

-- Digital content versioning
CREATE TABLE digital_content_versions
(
    content_id          INTEGER PRIMARY KEY,
    content_type        TEXT,
    version_number      INTEGER,
    title               TEXT,
    language            TEXT,
    checksum            TEXT,
    file_path           TEXT,
    file_size_kb        INTEGER,
    created_by          TEXT,
    created_at          DATE,
    modified_by         TEXT,
    modified_at         DATE,
    status              TEXT,
    release_notes       TEXT,
    is_active           INTEGER,
    expiration_date     DATE,
    tags                TEXT,
    platform            TEXT,
    min_app_version     TEXT,
    max_app_version     TEXT,
    download_count      INTEGER,
    rating              REAL
);

INSERT INTO digital_content_versions (content_id, content_type, version_number, title, language, checksum, file_path, file_size_kb, created_by, created_at, modified_by, modified_at, status, release_notes, is_active, expiration_date, tags, platform, min_app_version, max_app_version, download_count, rating) VALUES
(1, 'Guide', 1, 'Beginner_Strategy', 'en', 'abc123def', '/guides/beginner_v1.pdf', 850, 'content_team', '2023-01-15', 'editor_jane', '2023-02-10', 'Published', 'Initial release', 1, NULL, 'strategy,beginner', 'Web', '1.0', '3.0', 12000, 4.5),
(2, 'Guide', 2, 'Beginner_Strategy', 'en', 'def456ghi', '/guides/beginner_v2.pdf', 870, 'content_team', '2023-06-20', 'editor_jane', '2023-07-01', 'Published', 'Added new chapters', 1, NULL, 'strategy,beginner,update', 'Web', '1.0', '3.5', 8500, 4.6),
(3, 'Video', 1, 'Advanced_Tactics', 'es', 'ghi789jkl', '/videos/adv_tactics_es.mp4', 150000, 'video_prod', '2024-02-10', 'video_prod', '2024-02-15', 'Published', 'Spanish version of advanced tactics', 1, NULL, 'tactics,advanced', 'Mobile', '2.0', '4.0', 4300, 4.8);

-- Environmental monitoring stations
CREATE TABLE environmental_monitoring_stations
(
    station_id                INTEGER PRIMARY KEY,
    station_name              TEXT,
    latitude                  REAL,
    longitude                 REAL,
    elevation_m               REAL,
    installation_date         DATE,
    last_calibration          DATE,
    sensor_type               TEXT,
    measurement_interval_minutes INTEGER,
    temperature_c             REAL,
    humidity_percent          REAL,
    co2_ppm                   REAL,
    pm2_5_ugm3                REAL,
    noise_db                  REAL,
    battery_level             REAL,
    connectivity_status       TEXT,
    firmware_version          TEXT,
    maintenance_due           DATE,
    responsible_contact       TEXT,
    notes                     TEXT,
    region                    TEXT
);

INSERT INTO environmental_monitoring_stations (station_id, station_name, latitude, longitude, elevation_m, installation_date, last_calibration, sensor_type, measurement_interval_minutes, temperature_c, humidity_percent, co2_ppm, pm2_5_ugm3, noise_db, battery_level, connectivity_status, firmware_version, maintenance_due, responsible_contact, notes, region) VALUES
(1, 'Station_NY_01', 40.7128, -74.0060, 10.5, '2022-03-01', '2024-09-15', 'Multi', 15, 22.4, 55.2, 410, 12.3, 48.0, 87.5, 'Online', 'v1.2.3', '2025-03-01', 'John_Doe', 'Urban monitoring', 'North_America'),
(2, 'Station_Berlin_02', 52.5200, 13.4050, 34.0, '2021-07-10', '2024-08-20', 'Air_Quality', 10, 19.8, 60.0, 398, 8.5, 42.0, 92.0, 'Online', 'v1.3.0', '2025-01-15', 'Anna_Schmidt', 'City center', 'Europe'),
(3, 'Station_Sydney_03', -33.8688, 151.2093, 5.0, '2023-01-20', '2024-10-05', 'Climate', 20, 25.1, 48.3, 420, 15.0, 55.0, 80.0, 'Offline', 'v1.2.8', '2025-06-30', 'Liam_O\'Connor', 'Coastal station', 'Asia_Pacific');

-- Supply chain event tracking
CREATE TABLE supply_chain_events
(
    event_id                INTEGER PRIMARY KEY,
    event_type              TEXT,
    related_order_id        INTEGER,
    product_sku             TEXT,
    quantity                INTEGER,
    source_location         TEXT,
    destination_location    TEXT,
    departure_date          DATE,
    arrival_date            DATE,
    carrier                 TEXT,
    tracking_number         TEXT,
    status                  TEXT,
    temperature_controlled  INTEGER,
    custom_clearance_status TEXT,
    insurance_claim_id      INTEGER,
    estimated_cost          REAL,
    actual_cost             REAL,
    delay_reason            TEXT,
    created_at              DATE,
    updated_at              DATE,
    notes                   TEXT,
    compliance_flag         INTEGER
);

INSERT INTO supply_chain_events (event_id, event_type, related_order_id, product_sku, quantity, source_location, destination_location, departure_date, arrival_date, carrier, tracking_number, status, temperature_controlled, custom_clearance_status, insurance_claim_id, estimated_cost, actual_cost, delay_reason, created_at, updated_at, notes, compliance_flag) VALUES
(1, 'Shipment', 5001, 'SKU12345', 200, 'Factory_A', 'Warehouse_X', '2024-11-01', '2024-11-05', 'DHL', 'TRK10001', 'Delivered', 0, 'Cleared', NULL, 1500.00, 1520.75, 'Weather', '2024-10-20', '2024-11-06', 'On time except weather delay', 0),
(2, 'Return', 5002, 'SKU98765', 50, 'Warehouse_X', 'Factory_A', '2024-11-03', '2024-11-08', 'FedEx', 'TRK10002', 'In_Transit', 0, 'Pending', NULL, 300.00, NULL, NULL, '2024-10-22', '2024-11-04', 'Customer return pending inspection', 0),
(3, 'Transfer', 5003, 'SKU54321', 150, 'Warehouse_Y', 'Store_Z', '2024-10-28', '2024-11-02', 'UPS', 'TRK10003', 'Delivered', 1, 'Cleared', 2001, 800.00, 795.50, 'Equipment_Failure', '2024-10-15', '2024-11-03', 'Refrigerated transport', 1);

-- Community reward catalog
CREATE TABLE community_reward_catalog
(
    reward_id                INTEGER PRIMARY KEY,
    reward_name              TEXT,
    category                 TEXT,
    points_required          INTEGER,
    inventory_count          INTEGER,
    description              TEXT,
    image_url                TEXT,
    start_date               DATE,
    end_date                 DATE,
    active                   INTEGER,
    redemption_limit_per_user INTEGER,
    tier                     TEXT,
    seasonal                 TEXT,
    region                   TEXT,
    created_by               TEXT,
    created_at               DATE,
    updated_at               DATE,
    expiration_policy        TEXT,
    shipping_required        INTEGER,
    shipping_cost            REAL,
    notes                    TEXT,
    external_id              TEXT
);

INSERT INTO community_reward_catalog (reward_id, reward_name, category, points_required, inventory_count, description, image_url, start_date, end_date, active, redemption_limit_per_user, tier, seasonal, region, created_by, created_at, updated_at, expiration_policy, shipping_required, shipping_cost, notes, external_id) VALUES
(1, 'Golden_Compass', 'Accessory', 1500, 300, 'Premium compass with gilded finish', '/images/rewards/compass.png', '2024-09-01', '2025-02-28', 1, 1, 'Gold', 'Fall', 'Global', 'rewards_admin', '2024-08-15', '2024-10-01', 'Expires_at_end_date', 1, 4.99, 'Limited edition', 'EXT1001'),
(2, 'Mystic_Tome', 'Digital_Item', 2500, 150, 'Unlocks exclusive lore chapters', '/images/rewards/tome.png', '2024-11-15', '2025-05-31', 1, 2, 'Platinum', 'Winter', 'NA_EU', 'content_manager', '2024-11-01', '2024-12-10', 'Never_expires', 0, 0.0, 'Digital delivery', 'EXT1002'),
(3, 'Festival_Sticker_Pack', 'Physical_Goodie', 300, 1000, 'Set of 10 festival themed stickers', '/images/rewards/stickers.png', '2024-07-01', '2024-12-31', 1, 5, 'Bronze', 'Summer', 'APAC', 'marketing_lead', '2024-06-20', '2024-09-20', 'Expires_after_6_months', 1, 2.5, 'Sticker pack', 'EXT1003');