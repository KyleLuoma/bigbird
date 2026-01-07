-- Player session tracking table
CREATE TABLE player_sessions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    session_start TEXT,
    session_end TEXT,
    device_type TEXT,
    os_version TEXT,
    app_version TEXT,
    ip_address TEXT,
    country_code TEXT,
    city TEXT,
    latitude REAL,
    longitude REAL,
    session_duration INTEGER,
    events_triggered INTEGER,
    avg_fps REAL,
    max_fps REAL,
    min_fps REAL,
    battery_level INTEGER,
    network_type TEXT,
    data_used_mb REAL,
    crash_flag INTEGER,
    version_build TEXT,
    locale TEXT,
    carrier TEXT,
    screen_resolution TEXT,
    memory_usage_mb REAL,
    cpu_usage_percent REAL,
    gpu_usage_percent REAL,
    error_count INTEGER,
    custom_metric_1 REAL,
    custom_metric_2 REAL
);

INSERT INTO player_sessions VALUES (1, 1001, '2025-12-01T10:00:00', '2025-12-01T11:30:00', 'mobile', 'iOS15', '1.4.2', '192.168.1.10', 'US', 'NewYork', 40.7128, -74.0060, 5400, 120, 58.3, 75.0, 45.0, 85, 'wifi', 350.5, 0, 'build2025a', 'en_US', 'Verizon', '1920x1080', 2048.6, 45.2, 10.5, 2, 0.75, 1.12);
INSERT INTO player_sessions VALUES (2, 1002, '2025-12-02T14:15:00', '2025-12-02T15:00:00', 'desktop', 'Windows10', '2.0.0', '10.0.0.5', 'CA', 'Toronto', 43.6532, -79.3832, 2700, 80, 62.5, 78.0, 48.0, 92, 'ethernet', 120.0, 0, 'build2025b', 'en_CA', 'Rogers', '2560x1440', 4096.2, 38.1, 8.9, 0, 0.60, 0.85);
INSERT INTO player_sessions VALUES (3, 1003, '2025-12-03T08:45:00', '2025-12-03T09:20:00', 'tablet', 'Android12', '3.1.5', '172.16.0.2', 'GB', 'London', 51.5074, -0.1278, 2100, 65, 55.0, 70.0, 44.0, 78, 'cellular', 210.3, 1, 'build2025c', 'en_GB', 'EE', '1280x800', 1024.0, 52.0, 12.0, 1, 0.82, 1.03);

-- Digital asset collection metadata
CREATE TABLE digital_asset_collections (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    collection_name TEXT,
    owner_user_id INTEGER,
    created_date TEXT,
    description TEXT,
    asset_count INTEGER,
    total_size_mb REAL,
    visibility TEXT,
    category TEXT,
    tags TEXT,
    last_updated TEXT,
    version TEXT,
    rating REAL,
    favorite_count INTEGER,
    shared_with_count INTEGER,
    encryption_type TEXT,
    storage_location TEXT,
    backup_status TEXT,
    sync_timestamp TEXT,
    external_link TEXT,
    license_type TEXT,
    usage_rights TEXT,
    custom_field_a TEXT,
    custom_field_b TEXT
);

INSERT INTO digital_asset_collections VALUES (1, 'MyArtPortfolio', 2001, '2024-05-12', 'Personal art collection', 150, 3420.5, 'private', 'art', 'painting,sketch', '2025-01-20', 'v2.1', 4.8, 80, 5, 'AES256', 'cloud_us_east', 'completed', '2025-01-20T14:05:00', 'http://example.com/portfolio', 'CC_BY', 'personal_use', 'fieldA1', 'fieldB1');
INSERT INTO digital_asset_collections VALUES (2, 'GameAssetPack', 2002, '2023-11-03', 'Assets for indie game', 320, 12800.0, 'public', 'game', 'sprite,tileset', '2025-02-10', 'v3.0', 4.5, 150, 20, 'RSA2048', 'cloud_eu_west', 'in_progress', '2025-02-10T09:45:00', 'http://example.com/assetpack', 'Proprietary', 'commercial', 'fieldA2', 'fieldB2');
INSERT INTO digital_asset_collections VALUES (3, 'MusicLibrary', 2003, '2022-07-22', 'Collection of royalty free tracks', 80, 5600.0, 'public', 'audio', 'ambient,loop', '2025-03-05', 'v1.4', 4.9, 200, 12, 'None', 'local_server', 'completed', '2025-03-05T16:30:00', 'http://example.com/music', 'CC0', 'public_use', 'fieldA3', 'fieldB3');

-- Streaming advertising metrics
CREATE TABLE streaming_ad_metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ad_id TEXT,
    stream_id TEXT,
    start_time TEXT,
    end_time TEXT,
    impressions INTEGER,
    clicks INTEGER,
    ctr REAL,
    revenue_usd REAL,
    average_view_duration_sec REAL,
    completion_rate REAL,
    device_type TEXT,
    os TEXT,
    region TEXT,
    campaign_name TEXT,
    ad_format TEXT,
    ad_provider TEXT,
    bid_price_usd REAL,
    floor_price_usd REAL,
    viewability_score REAL,
    brand_safety_score REAL,
    audience_segment TEXT,
    frequency_cap INTEGER,
    ad_position TEXT,
    creative_id TEXT,
    dsp_id TEXT
);

INSERT INTO streaming_ad_metrics VALUES (1, 'adA001', 'streamX01', '2025-04-01T12:00:00', '2025-04-01T12:00:30', 5000, 250, 0.05, 125.00, 25.5, 0.80, 'mobile', 'iOS', 'US', 'SpringSale', 'video', 'AdNet', 0.02, 0.015, 85.0, 90.0, 'young_adults', 3, 'pre-roll', 'cr001', 'dsp01');
INSERT INTO streaming_ad_metrics VALUES (2, 'adB002', 'streamY02', '2025-04-02T14:15:00', '2025-04-02T14:15:45', 8000, 480, 0.06, 240.00, 30.2, 0.85, 'desktop', 'Windows', 'EU', 'SummerPromo', 'banner', 'AdStream', 0.025, 0.02, 78.0, 88.0, 'gamers', 2, 'mid-roll', 'cr002', 'dsp02');
INSERT INTO streaming_ad_metrics VALUES (3, 'adC003', 'streamZ03', '2025-04-03T18:30:00', '2025-04-03T18:30:20', 3000, 120, 0.04, 75.00, 18.0, 0.70, 'tablet', 'Android', 'APAC', 'HolidayDeal', 'video', 'AdConnect', 0.018, 0.012, 82.0, 87.0, 'family', 4, 'post-roll', 'cr003', 'dsp03');

-- Sponsor event performance metrics
CREATE TABLE sponsor_event_metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    event_id INTEGER,
    exposure_minutes INTEGER,
    booth_visits INTEGER,
    leads_generated INTEGER,
    brand_mentions INTEGER,
    social_impressions INTEGER,
    click_throughs INTEGER,
    conversion_rate REAL,
    sponsorship_level TEXT,
    contract_value_usd REAL,
    invoice_number TEXT,
    payment_status TEXT,
    activation_date TEXT,
    deactivation_date TEXT,
    logo_display_count INTEGER,
    logo_clicks INTEGER,
    video_views INTEGER,
    hq_meeting_count INTEGER,
    feedback_score REAL,
    custom_metric_x REAL,
    custom_metric_y REAL
);

INSERT INTO sponsor_event_metrics VALUES (1, 3001, 4001, 120, 250, 45, 80, 15000, 300, 0.02, 'gold', 50000.0, 'INV1001', 'paid', '2025-05-01', '2025-05-03', 200, 40, 1500, 5, 4.5, 0.85, 1.2);
INSERT INTO sponsor_event_metrics VALUES (2, 3002, 4002, 90, 180, 30, 55, 12000, 210, 0.018, 'silver', 30000.0, 'INV1002', 'pending', '2025-06-10', '2025-06-12', 150, 25, 1100, 3, 4.2, 0.78, 0.95);
INSERT INTO sponsor_event_metrics VALUES (3, 3003, 4003, 150, 320, 60, 100, 20000, 500, 0.025, 'platinum', 75000.0, 'INV1003', 'paid', '2025-07-20', '2025-07-22', 260, 55, 2000, 8, 4.8, 0.92, 1.45);

-- Venue energy usage statistics
CREATE TABLE venue_energy_usage (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    date TEXT,
    total_kwh REAL,
    peak_demand_kw REAL,
    average_power_kw REAL,
    renewable_percentage REAL,
    hvac_kwh REAL,
    lighting_kwh REAL,
    equipment_kwh REAL,
    water_usage_gal REAL,
    carbon_emission_kg REAL,
    utility_provider TEXT,
    tariff_type TEXT,
    cost_usd REAL,
    peak_time_start TEXT,
    peak_time_end TEXT,
    daylight_savings_flag INTEGER,
    maintenance_flag INTEGER,
    notes TEXT
);

INSERT INTO venue_energy_usage VALUES (1, 5001, '2025-04-01', 1500.5, 200.0, 125.0, 35.0, 600.2, 300.1, 600.2, 5000.0, 800.0, 'PowerCo', 'commercial', 1200.75, '13:00', '15:00', 1, 0, 'normal operation');
INSERT INTO venue_energy_usage VALUES (2, 5002, '2025-04-02', 1320.0, 180.0, 115.0, 30.0, 540.0, 270.0, 510.0, 4400.0, 720.0, 'EnergyPlus', 'industrial', 1085.60, '12:30', '14:30', 1, 1, 'maintenance on HVAC');
INSERT INTO venue_energy_usage VALUES (3, 5003, '2025-04-03', 1600.8, 210.0, 130.0, 40.0, 640.3, 320.2, 640.3, 5400.0, 860.0, 'GreenEnergy', 'green', 1325.40, '14:00', '16:00', 0, 0, 'peak usage due to event');

-- Merchandise sales statistics
CREATE TABLE merchandise_sales_stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    product_id INTEGER,
    sku TEXT,
    sale_date TEXT,
    units_sold INTEGER,
    revenue_usd REAL,
    discount_percent REAL,
    channel TEXT,
    region TEXT,
    store_id INTEGER,
    employee_id INTEGER,
    cost_of_goods_sold REAL,
    profit_usd REAL,
    return_quantity INTEGER,
    return_reason TEXT,
    customer_segment TEXT,
    promo_code TEXT,
    inventory_level INTEGER,
    lead_time_days INTEGER,
    supplier_id INTEGER,
    batch_number TEXT,
    warranty_period_months INTEGER,
    shipping_method TEXT,
    rating REAL,
    review_count INTEGER
);

INSERT INTO merchandise_sales_stats VALUES (1, 6001, 'SKU1001', '2025-04-15', 45, 1350.0, 10.0, 'online', 'US', 101, 1001, 900.0, 450.0, 2, 'defect', 'collector', 'SPRING20', 120, 5, 2001, 'BATCHA1', 24, 'ground', 4.7, 30);
INSERT INTO merchandise_sales_stats VALUES (2, 6002, 'SKU1002', '2025-04-16', 30, 900.0, 5.0, 'retail', 'EU', 102, 1002, 600.0, 300.0, 1, 'size_issue', 'casual', 'EURO5', 80, 7, 2002, 'BATCHB2', 12, 'air', 4.5, 20);
INSERT INTO merchandise_sales_stats VALUES (3, 6003, 'SKU1003', '2025-04-17', 60, 1800.0, 15.0, 'online', 'APAC', 103, 1003, 1200.0, 600.0, 3, 'color_mismatch', 'pro', 'ASIA10', 150, 4, 2003, 'BATCHC3', 36, 'sea', 4.9, 45);

-- Community content tagging data
CREATE TABLE community_content_tags (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    content_id INTEGER,
    tag TEXT,
    created_by_user_id INTEGER,
    created_at TEXT,
    relevance_score REAL,
    tag_type TEXT,
    source TEXT,
    is_auto_generated INTEGER,
    confidence_percent REAL,
    language TEXT,
    moderation_flag INTEGER,
    priority INTEGER,
    context TEXT,
    related_tag_id INTEGER,
    version TEXT,
    notes TEXT,
    review_status TEXT,
    flagged_by_user_id INTEGER,
    review_timestamp TEXT,
    tag_category TEXT
);

INSERT INTO community_content_tags VALUES (1, 7001, 'strategy', 2001, '2025-03-10T09:00:00', 0.92, 'topic', 'user', 0, 95.0, 'en', 0, 1, 'deck_building', NULL, 'v1', 'high relevance', 'approved', NULL, NULL, 'meta');
INSERT INTO community_content_tags VALUES (2, 7002, 'funny', 2002, '2025-03-11T10:30:00', 0.78, 'tone', 'auto', 1, 88.5, 'en', 0, 2, 'meme', 1, 'v1', 'auto tag', 'pending', 2005, '2025-03-12T08:45:00', 'sentiment');
INSERT INTO community_content_tags VALUES (3, 7003, 'meta', 2003, '2025-03-12T14:20:00', 0.85, 'category', 'moderator', 0, 90.0, 'en', 1, 3, 'rules', 2, 'v2', 'needs review', 'rejected', 2006, '2025-03-13T11:00:00', 'administrative');

-- API endpoint audit log
CREATE TABLE api_endpoint_audit (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    endpoint_path TEXT,
    method TEXT,
    request_timestamp TEXT,
    response_timestamp TEXT,
    latency_ms INTEGER,
    status_code INTEGER,
    user_id INTEGER,
    ip_address TEXT,
    user_agent TEXT,
    payload_size_bytes INTEGER,
    response_size_bytes INTEGER,
    auth_method TEXT,
    rate_limit_status TEXT,
    error_code TEXT,
    error_message TEXT,
    correlation_id TEXT,
    version TEXT,
    deprecated_flag INTEGER,
    owner_team TEXT,
    change_log_id INTEGER
);

INSERT INTO api_endpoint_audit VALUES (1, '/api/v1/cards', 'GET', '2025-04-20T12:00:00', '2025-04-20T12:00:01', 150, 200, 1001, '192.168.0.5', 'Mozilla/5.0', 0, 1024, 'token', 'allowed', NULL, NULL, 'corr001', 'v1', 0, 'backend', 3001);
INSERT INTO api_endpoint_audit VALUES (2, '/api/v1/sets', 'POST', '2025-04-20T12:05:00', '2025-04-20T12:05:02', 250, 201, 1002, '10.0.0.8', 'curl/7.68.0', 512, 2048, 'apiKey', 'limited', 'ERR_TIMEOUT', 'Request timed out', 'corr002', 'v1', 0, 'backend', 3002);
INSERT INTO api_endpoint_audit VALUES (3, '/api/v1/users', 'DELETE', '2025-04-20T12:10:00', '2025-04-20T12:10:01', 180, 403, 1003, '172.16.0.9', 'PostmanRuntime/7.26.8', 256, 512, 'oauth', 'allowed', 'ERR_FORBIDDEN', 'Insufficient permissions', 'corr003', 'v1', 0, 'security', 3003);

-- Game mechanics testing suite
CREATE TABLE game_mechanics_tests (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    test_name TEXT,
    component TEXT,
    version TEXT,
    executed_at TEXT,
    result_status TEXT,
    duration_ms INTEGER,
    passed_checks INTEGER,
    failed_checks INTEGER,
    total_checks INTEGER,
    environment TEXT,
    runner_id INTEGER,
    log_url TEXT,
    defect_id INTEGER,
    severity TEXT,
    priority TEXT,
    related_feature TEXT,
    notes TEXT,
    executed_by INTEGER,
    device_model TEXT,
    os_version TEXT
);

INSERT INTO game_mechanics_tests VALUES (1, 'ManaCurveCheck', 'DeckBuilder', 'v2.3', '2025-04-22T08:00:00', 'passed', 1200, 30, 0, 30, 'ci', 4001, 'http://ci.example.com/logs/1', NULL, 'none', 'low', 'mana_system', 'All curves within limits', 5001, 'DockerLinux', 'Ubuntu20.04');
INSERT INTO game_mechanics_tests VALUES (2, 'TriggerResolution', 'CombatEngine', 'v2.3', '2025-04-22T09:15:00', 'failed', 1500, 25, 5, 30, 'ci', 4002, 'http://ci.example.com/logs/2', 7001, 'high', 'high', 'combat_triggers', 'Timing issue on double triggers', 5002, 'VMWindows', 'WindowsServer2019');
INSERT INTO game_mechanics_tests VALUES (3, 'SpellInteraction', 'RulesEngine', 'v2.3', '2025-04-22T10:30:00', 'passed', 1100, 28, 0, 28, 'ci', 4003, 'http://ci.example.com/logs/3', NULL, 'none', 'medium', 'spell_stack', 'All interactions conform to spec', 5003, 'MacMini', 'macOS12');

-- Fantasy world event log
CREATE TABLE fantasy_world_events (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_name TEXT,
    region TEXT,
    event_type TEXT,
    start_date TEXT,
    end_date TEXT,
    story_arc TEXT,
    involved_characters TEXT,
    impact_score REAL,
    world_state_change TEXT,
    player_participation INTEGER,
    reward_points INTEGER,
    lore_entry_id INTEGER,
    map_location TEXT,
    weather_effect TEXT,
    music_theme TEXT,
    visual_asset_id TEXT,
    narration_text TEXT,
    related_quest_id INTEGER,
    difficulty_level TEXT,
    custom_flag INTEGER
);

INSERT INTO fantasy_world_events VALUES (1, 'DragonSiege', 'Valoria', 'siege', '2025-05-01', '2025-05-03', 'DragonRebellion', 'Arthas,Lyra', 9.5, 'territory_loss', 1200, 5000, 8001, 'coords_45_78', 'storm', 'EpicBattleTheme', 'assetD001', 'The skies darkened as the dragon roared', 9001, 'hard', 1);
INSERT INTO fantasy_world_events VALUES (2, 'FestivalOfLights', 'Eldoria', 'celebration', '2025-06-10', '2025-06-12', 'SeasonalFest', 'Nora,Kei', 4.2, 'cultural_boost', 800, 1500, 8002, 'coords_22_34', 'clear', 'JoyfulMelody', 'assetF023', 'Lanterns floated across the river', 9002, 'easy', 0);
INSERT INTO fantasy_world_events VALUES (3, 'ShadowInvasion', 'Nyx', 'invasion', '2025-07-20', '2025-07-25', 'DarknessRising', 'Mara,Silas', 8.7, 'realm_corruption', 2000, 8000, 8003, 'coords_99_12', 'fog', 'DarkPulse', 'assetS077', 'Shadows crept from the abyss', 9003, 'very_hard', 1);