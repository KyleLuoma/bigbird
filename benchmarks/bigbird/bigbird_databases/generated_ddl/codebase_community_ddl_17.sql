-- Synthetic table storing aggregated metrics of API calls
CREATE TABLE api_call_metrics
(
    id                 INTEGER PRIMARY KEY,
    endpoint_name      TEXT,
    http_method        TEXT,
    response_time_ms   INTEGER,
    status_code        INTEGER,
    payload_size_bytes INTEGER,
    client_ip          TEXT,
    api_key_id         INTEGER,
    user_agent         TEXT,
    request_timestamp  DATETIME,
    response_timestamp DATETIME,
    correlation_id     TEXT,
    region             TEXT,
    tier               TEXT,
    retry_count        INTEGER,
    cache_hit          INTEGER,
    throttled          INTEGER,
    error_message      TEXT,
    service_version    TEXT,
    host_name          TEXT
);

INSERT INTO api_call_metrics VALUES (1, 'getUserInfo', 'GET', 120, 200, 512, '192.168.1.10', 101, 'Mozilla/5.0', '2024-03-01 08:15:00', '2024-03-01 08:15:00', 'corr123', 'us-east', 'premium', 0, 1, 0, '', 'v1.2', 'host01');
INSERT INTO api_call_metrics VALUES (2, 'updateProfile', 'POST', 250, 400, 1024, '10.0.0.5', 102, 'Curl/7.68.0', '2024-03-01 09:00:00', '2024-03-01 09:00:01', 'corr124', 'eu-west', 'standard', 1, 0, 1, 'BadRequest', 'v1.2', 'host02');
INSERT INTO api_call_metrics VALUES (3, 'listOrders', 'GET', 95, 200, 256, '172.16.0.3', 103, 'PostmanRuntime/7.26.8', '2024-03-01 10:30:00', '2024-03-01 10:30:00', 'corr125', 'ap-south', 'standard', 0, 1, 0, '', 'v1.3', 'host03');

-- CDN cache performance statistics per node
CREATE TABLE cdn_cache_stats
(
    id                 INTEGER PRIMARY KEY,
    cdn_node_id        INTEGER,
    file_path          TEXT,
    file_type          TEXT,
    cache_status       TEXT,
    ttl_seconds        INTEGER,
    hit_count          INTEGER,
    miss_count         INTEGER,
    last_refresh       DATETIME,
    origin_server      TEXT,
    size_bytes         INTEGER,
    region             TEXT,
    protocol           TEXT,
    request_method     TEXT,
    response_time_ms   INTEGER,
    bandwidth_used_mb  REAL,
    compression_ratio  REAL,
    edge_timestamp     DATETIME,
    request_id         TEXT,
    custom_tag         TEXT
);

INSERT INTO cdn_cache_stats VALUES (1, 201, '/images/logo.png', 'image', 'HIT', 3600, 1500, 30, '2024-02-28 23:00:00', 'origin01', 20480, 'us-east', 'HTTPS', 'GET', 45, 12.5, 1.8, '2024-03-01 00:00:00', 'req001', 'branding');
INSERT INTO cdn_cache_stats VALUES (2, 202, '/js/app.bundle.js', 'script', 'MISS', 1800, 800, 200, '2024-02-28 22:30:00', 'origin02', 512000, 'eu-central', 'HTTPS', 'GET', 78, 48.2, 1.4, '2024-03-01 01:15:00', 'req002', 'frontend');
INSERT INTO cdn_cache_stats VALUES (3, 203, '/videos/intro.mp4', 'video', 'HIT', 7200, 300, 10, '2024-02-28 21:45:00', 'origin03', 10485760, 'ap-northeast', 'HTTPS', 'GET', 120, 256.7, 2.0, '2024-03-01 02:30:00', 'req003', 'promo');

-- Audience targeting information for scheduled events
CREATE TABLE event_audience
(
    id                 INTEGER PRIMARY KEY,
    event_id           INTEGER,
    audience_segment   TEXT,
    estimated_size     INTEGER,
    region             TEXT,
    language           TEXT,
    device_type        TEXT,
    start_date         DATE,
    end_date           DATE,
    engagement_score   REAL,
    conversion_rate    REAL,
    source_channel     TEXT,
    priority_level     INTEGER,
    created_at         DATETIME,
    updated_at         DATETIME,
    notes              TEXT,
    is_active          INTEGER,
    budget_usd         REAL,
    sponsor_id         INTEGER,
    visibility         TEXT,
    custom_metric      REAL
);

INSERT INTO event_audience VALUES (1, 301, 'TechEnthusiasts', 5000, 'us-east', 'en', 'mobile', '2024-04-01', '2024-04-02', 78.5, 12.3, 'email', 1, '2024-03-10 09:00:00', '2024-03-10 09:00:00', 'Launch event', 1, 25000, 401, 'public', 0.85);
INSERT INTO event_audience VALUES (2, 302, 'Developers', 3000, 'eu-west', 'en', 'desktop', '2024-05-15', '2024-05-15', 65.2, 9.8, 'social', 2, '2024-04-05 10:30:00', '2024-04-05 10:30:00', 'Workshop series', 1, 15000, 402, 'private', 0.73);
INSERT INTO event_audience VALUES (3, 303, 'Students', 8000, 'ap-south', 'en', 'mobile', '2024-06-20', '2024-06-21', 82.1, 14.6, 'ads', 1, '2024-05-01 08:45:00', '2024-05-01 08:45:00', 'Career fair', 1, 30000, 403, 'public', 0.91);

-- Billing records for partner integrations
CREATE TABLE partner_billing
(
    billing_id          INTEGER PRIMARY KEY,
    partner_id          INTEGER,
    invoice_number      TEXT,
    invoice_date        DATE,
    due_date            DATE,
    amount_due          REAL,
    currency            TEXT,
    payment_status      TEXT,
    payment_method      TEXT,
    transaction_id      TEXT,
    tax_amount          REAL,
    discount_amount     REAL,
    net_amount          REAL,
    billing_period_start DATE,
    billing_period_end   DATE,
    created_by          TEXT,
    approved_by         TEXT,
    notes               TEXT,
    last_modified       DATETIME,
    retry_attempts      INTEGER,
    external_reference  TEXT
);

INSERT INTO partner_billing VALUES (1, 501, 'INV-1001', '2024-02-01', '2024-02-15', 12000.00, 'USD', 'Pending', 'BankTransfer', 'TXN-9001', 1200.00, 0.00, 10800.00, '2024-01-01', '2024-01-31', 'system', 'alice', 'First invoice', '2024-02-01 12:00:00', 0, 'EXT-REF-01');
INSERT INTO partner_billing VALUES (2, 502, 'INV-1002', '2024-02-05', '2024-02-20', 8500.00, 'EUR', 'Paid', 'CreditCard', 'TXN-9002', 850.00, 200.00, 7550.00, '2024-01-01', '2024-01-31', 'system', 'bob', 'Discount applied', '2024-02-05 14:30:00', 1, 'EXT-REF-02');
INSERT INTO partner_billing VALUES (3, 503, 'INV-1003', '2024-02-10', '2024-02-25', 5000.00, 'GBP', 'Overdue', 'PayPal', 'TXN-9003', 500.00, 0.00, 4500.00, '2024-01-01', '2024-01-31', 'system', 'carol', 'Late payment notice', '2024-02-10 09:45:00', 2, 'EXT-REF-03');

-- Localization details for multilingual content
CREATE TABLE content_localization
(
    loc_id               INTEGER PRIMARY KEY,
    content_id           INTEGER,
    locale               TEXT,
    title                TEXT,
    description          TEXT,
    keywords             TEXT,
    author               TEXT,
    translated_by        TEXT,
    translation_date     DATE,
    source_language      TEXT,
    target_language      TEXT,
    word_count           INTEGER,
    char_count           INTEGER,
    quality_score        REAL,
    review_status        TEXT,
    reviewer_id          INTEGER,
    review_date          DATE,
    publish_status       TEXT,
    publish_date         DATE,
    version_number       INTEGER,
    notes                TEXT
);

INSERT INTO content_localization VALUES (1, 601, 'fr_FR', 'Guide d''utilisation', 'Description en francais', 'guide,utilisation', 'john', 'marie', '2024-03-01', 'en', 'fr', 1500, 9000, 4.5, 'Approved', 201, '2024-03-02', 'Published', '2024-03-03', 2, 'First release');
INSERT INTO content_localization VALUES (2, 602, 'es_ES', 'Manual de referencia', 'Descripcion en espanol', 'manual,referencia', 'lisa', 'carlos', '2024-03-05', 'en', 'es', 1800, 10800, 4.2, 'Pending', 202, '2024-03-06', 'Draft', NULL, 1, 'Awaiting review');
INSERT INTO content_localization VALUES (3, 603, 'de_DE', 'Einführung', 'Beschreibung auf deutsch', 'einführung,grundlagen', 'anna', 'hans', '2024-03-10', 'en', 'de', 1300, 7800, 4.8, 'Approved', 203, '2024-03-11', 'Published', '2024-03-12', 3, 'Updated with new terms');

-- Profiles summarizing user behavioral segments
CREATE TABLE user_behavior_profiles
(
    profile_id           INTEGER PRIMARY KEY,
    user_id              INTEGER,
    segment_name         TEXT,
    activity_score       REAL,
    login_frequency      INTEGER,
    avg_session_length  REAL,
    device_type          TEXT,
    os_version           TEXT,
    browser              TEXT,
    preferred_category   TEXT,
    churn_risk           REAL,
    last_active_date     DATE,
    created_at           DATETIME,
    updated_at           DATETIME,
    model_version        TEXT,
    prediction_confidence REAL,
    is_active            INTEGER,
    notes                TEXT,
    source_data_hash     TEXT,
    external_id          TEXT,
    custom_flag          INTEGER
);

INSERT INTO user_behavior_profiles VALUES (1, 701, 'PowerUser', 92.3, 30, 45.5, 'desktop', 'Windows10', 'Chrome', 'Technology', 0.05, '2024-02-28', '2024-02-01 08:00:00', '2024-03-01 09:00:00', 'v2.1', 0.97, 1, 'High engagement', 'hash001', 'EXTU001', 0);
INSERT INTO user_behavior_profiles VALUES (2, 702, 'CasualVisitor', 45.7, 5, 12.3, 'mobile', 'iOS14', 'Safari', 'Lifestyle', 0.30, '2024-02-27', '2024-02-02 10:15:00', '2024-03-01 10:30:00', 'v2.1', 0.82, 1, 'Potential upsell', 'hash002', 'EXTU002', 1);
INSERT INTO user_behavior_profiles VALUES (3, 703, 'ChurnRisk', 20.4, 1, 5.0, 'tablet', 'Android11', 'Firefox', 'News', 0.85, '2024-02-20', '2024-02-05 12:45:00', '2024-03-01 11:00:00', 'v2.1', 0.68, 0, 'Low activity', 'hash003', 'EXTU003', 0);

-- Log of search queries issued by users
CREATE TABLE search_query_logs
(
    log_id               INTEGER PRIMARY KEY,
    query_text           TEXT,
    user_id              INTEGER,
    session_id           TEXT,
    timestamp            DATETIME,
    result_count         INTEGER,
    click_through_rate   REAL,
    device_type          TEXT,
    location             TEXT,
    language             TEXT,
    is_successful        INTEGER,
    execution_time_ms    INTEGER,
    query_type           TEXT,
    intent_category      TEXT,
    rank_position        INTEGER,
    is_spam              INTEGER,
    throttled            INTEGER,
    custom_dimension1    TEXT,
    custom_dimension2    TEXT,
    notes                TEXT
);

INSERT INTO search_query_logs VALUES (1, 'how to reset password', 801, 'sess001', '2024-03-01 08:05:00', 12, 0.25, 'desktop', 'US', 'en', 1, 45, 'navigational', 'account', 1, 0, 0, 'none', 'none', '');
INSERT INTO search_query_logs VALUES (2, 'best laptops 2024', 802, 'sess002', '2024-03-01 09:10:00', 85, 0.40, 'mobile', 'DE', 'de', 1, 78, 'informational', 'electronics', 3, 0, 0, 'none', 'none', '');
INSERT INTO search_query_logs VALUES (3, 'spammy link', 803, 'sess003', '2024-03-01 10:20:00', 0, 0.00, 'desktop', 'CN', 'zh', 0, 150, 'navigational', 'unknown', 0, 1, 1, 'spam', 'phishing', 'Flagged');

-- Performance metrics for advertising campaigns
CREATE TABLE advertiser_performance
(
    perf_id               INTEGER PRIMARY KEY,
    advertiser_id         INTEGER,
    campaign_id           INTEGER,
    ad_group_id           INTEGER,
    impressions           INTEGER,
    clicks                INTEGER,
    conversions           INTEGER,
    spend_usd             REAL,
    cpc_usd               REAL,
    cpm_usd               REAL,
    ctr_percent           REAL,
    conversion_rate_percent REAL,
    revenue_usd           REAL,
    profit_usd            REAL,
    roi_percent           REAL,
    start_date            DATE,
    end_date              DATE,
    status                TEXT,
    platform              TEXT,
    targeting_criteria    TEXT,
    notes                 TEXT
);

INSERT INTO advertiser_performance VALUES (1, 901, 1001, 2001, 50000, 2500, 300, 12000.00, 4.80, 240.00, 5.00, 12.00, 18000.00, 6000.00, 50.00, '2024-01-01', '2024-01-31', 'Active', 'Google', 'Age18-35;Tech', '');
INSERT INTO advertiser_performance VALUES (2, 902, 1002, 2002, 75000, 3200, 400, 15000.00, 4.69, 200.00, 4.27, 12.50, 22000.00, 7000.00, 46.67, '2024-02-01', '2024-02-28', 'Paused', 'Facebook', 'GenderFemale;Fashion', '');
INSERT INTO advertiser_performance VALUES (3, 903, 1003, 2003, 30000, 900, 120, 8000.00, 8.89, 266.67, 3.00, 13.33, 10000.00, 2000.00, 25.00, '2024-03-01', '2024-03-31', 'Completed', 'LinkedIn', 'JobTitleManager;B2B', '');

-- Inventory of hardware assets managed by the organization
CREATE TABLE hardware_inventory
(
    inventory_id          INTEGER PRIMARY KEY,
    asset_tag             TEXT,
    asset_type            TEXT,
    manufacturer          TEXT,
    model                 TEXT,
    serial_number         TEXT,
    purchase_date         DATE,
    warranty_expiry       DATE,
    location_id           INTEGER,
    assigned_to_user_id   INTEGER,
    status                TEXT,
    cpu                   TEXT,
    ram_gb                INTEGER,
    storage_gb            INTEGER,
    os_version            TEXT,
    last_maintenance_date DATE,
    next_maintenance_due DATE,
    depreciation_years    INTEGER,
    current_value_usd     REAL,
    notes                 TEXT,
    custom_field1        TEXT
);

INSERT INTO hardware_inventory VALUES (1, 'TAG-001', 'Laptop', 'Dell', 'XPS13', 'SN123456', '2022-05-10', '2025-05-10', 10, 701, 'InUse', 'Intel i7', 16, 512, 'Windows10', '2024-01-15', '2024-07-15', 3, 1500.00, 'Primary workstation', 'FieldA');
INSERT INTO hardware_inventory VALUES (2, 'TAG-002', 'Server', 'HP', 'ProLiant', 'SN654321', '2021-02-20', '2026-02-20', 20, NULL, 'InService', 'Intel Xeon', 64, 2048, 'Ubuntu20.04', '2024-02-01', '2024-08-01', 5, 8000.00, 'Database server', 'FieldB');
INSERT INTO hardware_inventory VALUES (3, 'TAG-003', 'Monitor', 'Samsung', 'U28', 'SN789012', '2023-09-05', '2026-09-05', 10, 702, 'InUse', NULL, NULL, NULL, NULL, '2024-03-10', '2024-09-10', 2, 300.00, 'Secondary display', 'FieldC');

-- Records of campaigns run in collaboration with third‑party partners
CREATE TABLE third_party_campaigns
(
    campaign_id           INTEGER PRIMARY KEY,
    partner_id            INTEGER,
    campaign_name         TEXT,
    start_date            DATE,
    end_date              DATE,
    budget_usd            REAL,
    spend_usd             REAL,
    lead_count            INTEGER,
    conversion_count      INTEGER,
    cpl_usd               REAL,
    cpc_usd               REAL,
    target_audience       TEXT,
    channel               TEXT,
    creative_id           INTEGER,
    landing_page_url      TEXT,
    status                TEXT,
    created_at            DATETIME,
    updated_at            DATETIME,
    notes                 TEXT,
    external_tracking_id  TEXT
);

INSERT INTO third_party_campaigns VALUES (1, 1101, 'SpringSale2024', '2024-04-01', '2024-04-30', 50000.00, 47000.00, 1200, 300, 39.17, 15.67, 'Adults18-45', 'Email', 301, 'https://example.com/spring', 'Active', '2024-03-20 09:00:00', '2024-03-25 11:30:00', '', 'TRACK001');
INSERT INTO third_party_campaigns VALUES (2, 1102, 'SummerLaunch', '2024-06-01', '2024-06-30', 75000.00, 72000.00, 1500, 400, 48.00, 18.00, 'YoungAdults', 'Social', 302, 'https://example.com/summer', 'Planned', '2024-04-10 10:15:00', '2024-04-15 14:45:00', '', 'TRACK002');
INSERT INTO third_party_campaigns VALUES (3, 1103, 'FallPromo', '2024-09-01', '2024-09-30', 60000.00, 59000.00, 1300, 350, 45.38, 16.29, 'Professionals', 'Search', 303, 'https://example.com/fall', 'Completed', '2024-05-05 08:30:00', '2024-05-20 16:00:00', '', 'TRACK003');