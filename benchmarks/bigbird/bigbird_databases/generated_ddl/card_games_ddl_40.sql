-- Marketing channels used for promotional activities
CREATE TABLE marketing_channels (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    channel_name TEXT,
    channel_type TEXT,
    start_date DATE,
    end_date DATE,
    budget_usd REAL,
    expected_impressions INTEGER,
    actual_impressions INTEGER,
    cpc REAL,
    ctr REAL,
    conversion_rate REAL,
    cost_per_conversion REAL,
    target_audience TEXT,
    platform TEXT,
    creative_id TEXT,
    status TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    manager_id INTEGER
);

INSERT INTO marketing_channels (id, channel_name, channel_type, start_date, end_date, budget_usd, expected_impressions, actual_impressions, cpc, ctr, conversion_rate, cost_per_conversion, target_audience, platform, creative_id, status, notes, created_at, updated_at, manager_id)
VALUES (1, 'EmailCampaign', 'Email', '2023-01-01', '2023-01-31', 5000.00, 100000, 95000, 0.05, 0.12, 0.03, 166.67, 'AllPlayers', 'MailChimp', 'CRTV001', 'Active', 'Initial launch', '2023-01-01', '2023-01-15', 101);

INSERT INTO marketing_channels (id, channel_name, channel_type, start_date, end_date, budget_usd, expected_impressions, actual_impressions, cpc, ctr, conversion_rate, cost_per_conversion, target_audience, platform, creative_id, status, notes, created_at, updated_at, manager_id)
VALUES (2, 'SocialMediaAds', 'Social', '2023-02-01', '2023-02-28', 8000.00, 200000, 210000, 0.04, 0.15, 0.04, 100.00, 'CompetitivePlayers', 'Twitter', 'CRTV002', 'Active', 'Boosted posts', '2023-02-01', '2023-02-20', 102);

INSERT INTO marketing_channels (id, channel_name, channel_type, start_date, end_date, budget_usd, expected_impressions, actual_impressions, cpc, ctr, conversion_rate, cost_per_conversion, target_audience, platform, creative_id, status, notes, created_at, updated_at, manager_id)
VALUES (3, 'VideoPreRoll', 'Video', '2023-03-01', '2023-03-31', 12000.00, 150000, 140000, 0.06, 0.10, 0.02, 300.00, 'NewPlayers', 'YouTube', 'CRTV003', 'Planned', 'Seasonal teaser', '2023-03-01', '2023-03-10', 103);

-- Regional sales region definitions
CREATE TABLE regional_sales_regions (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    region_code TEXT,
    region_name TEXT,
    country_list TEXT,
    currency TEXT,
    tax_rate REAL,
    average_income REAL,
    sales_target_usd REAL,
    last_year_sales_usd REAL,
    growth_rate REAL,
    manager_name TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    established_date DATE,
    last_audit_date DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    is_active INTEGER,
    priority_level INTEGER,
    market_share_percent REAL
);

INSERT INTO regional_sales_regions (id, region_code, region_name, country_list, currency, tax_rate, average_income, sales_target_usd, last_year_sales_usd, growth_rate, manager_name, contact_email, contact_phone, established_date, last_audit_date, notes, created_at, updated_at, is_active, priority_level, market_share_percent)
VALUES (1, 'NA', 'NorthAmerica', 'US,CA,MX', 'USD', 0.07, 55000, 2000000, 1800000, 0.11, 'Alice Smith', 'alice.smith@example.com', '5551234567', '2020-01-01', '2023-06-01', 'Key market', '2020-01-01', '2023-06-01', 1, 1, 35.5);

INSERT INTO regional_sales_regions (id, region_code, region_name, country_list, currency, tax_rate, average_income, sales_target_usd, last_year_sales_usd, growth_rate, manager_name, contact_email, contact_phone, established_date, last_audit_date, notes, created_at, updated_at, is_active, priority_level, market_share_percent)
VALUES (2, 'EU', 'Europe', 'DE,FR,UK,IT,ES', 'EUR', 0.20, 48000, 1500000, 1400000, 0.07, 'Bob Jones', 'bob.jones@example.com', '5559876543', '2021-03-15', '2023-05-20', 'Growing market', '2021-03-15', '2023-05-20', 1, 2, 27.3);

INSERT INTO regional_sales_regions (id, region_code, region_name, country_list, currency, tax_rate, average_income, sales_target_usd, last_year_sales_usd, growth_rate, manager_name, contact_email, contact_phone, established_date, last_audit_date, notes, created_at, updated_at, is_active, priority_level, market_share_percent)
VALUES (3, 'APAC', 'AsiaPacific', 'JP,KR,CN,AU,NZ', 'USD', 0.12, 35000, 1200000, 1100000, 0.09, 'Carol Lee', 'carol.lee@example.com', '5552468135', '2019-07-01', '2023-04-30', 'Emerging market', '2019-07-01', '2023-04-30', 1, 3, 18.9);

-- Collector profile information
CREATE TABLE collector_profiles (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    profile_name TEXT,
    preferred_set_codes TEXT,
    favorite_artists TEXT,
    total_cards_owned INTEGER,
    total_value_usd REAL,
    most_valuable_card_uuid TEXT,
    completion_rate_percent REAL,
    last_inventory_check DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    is_public INTEGER,
    badge_level TEXT,
    trade_activity_score REAL,
    wishlist_card_uuids TEXT,
    email_notifications_enabled INTEGER,
    sms_notifications_enabled INTEGER,
    preferred_language TEXT,
    theme_preference TEXT
);

INSERT INTO collector_profiles (id, user_id, profile_name, preferred_set_codes, favorite_artists, total_cards_owned, total_value_usd, most_valuable_card_uuid, completion_rate_percent, last_inventory_check, notes, created_at, updated_at, is_public, badge_level, trade_activity_score, wishlist_card_uuids, email_notifications_enabled, sms_notifications_enabled, preferred_language, theme_preference)
VALUES (1, 1001, 'MetaMaster', 'M21,THB,ELD', 'JohnDoe,JaneRoe', 4520, 78500.00, 'uuid12345', 92.5, '2023-06-15', 'Top collector', '2020-05-10', '2023-06-15', 1, 'Gold', 88.7, 'uuid54321,uuid98765', 1, 0, 'en', 'dark');

INSERT INTO collector_profiles (id, user_id, profile_name, preferred_set_codes, favorite_artists, total_cards_owned, total_value_usd, most_valuable_card_uuid, completion_rate_percent, last_inventory_check, notes, created_at, updated_at, is_public, badge_level, trade_activity_score, wishlist_card_uuids, email_notifications_enabled, sms_notifications_enabled, preferred_language, theme_preference)
VALUES (2, 1002, 'CasualCollector', 'KHM,DOM,RIX', 'AliceArtist', 1280, 21000.00, 'uuid67890', 68.2, '2023-05-30', 'Focus on limited editions', '2021-01-20', '2023-05-30', 0, 'Silver', 45.3, 'uuid11223,uuid44556', 1, 1, 'es', 'light');

INSERT INTO collector_profiles (id, user_id, profile_name, preferred_set_codes, favorite_artists, total_cards_owned, total_value_usd, most_valuable_card_uuid, completion_rate_percent, last_inventory_check, notes, created_at, updated_at, is_public, badge_level, trade_activity_score, wishlist_card_uuids, email_notifications_enabled, sms_notifications_enabled, preferred_language, theme_preference)
VALUES (3, 1003, 'Newbie', 'M20', 'BobBrush', 340, 5500.00, 'uuid99887', 35.0, '2023-04-20', 'Just started', '2022-09-15', '2023-04-20', 1, 'Bronze', 22.1, 'uuid33221', 0, 0, 'de', 'dark');

-- Digital token balance tracking for in‑game currency
CREATE TABLE digital_token_balances (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    token_type TEXT,
    balance INTEGER,
    total_earned INTEGER,
    total_spent INTEGER,
    last_earned_date DATE,
    last_spent_date DATE,
    daily_earning_rate REAL,
    daily_spending_rate REAL,
    bonus_multiplier REAL,
    lock_expiration DATE,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    is_active INTEGER,
    source_platform TEXT,
    redemption_count INTEGER,
    max_balance INTEGER,
    min_balance INTEGER,
    audit_hash TEXT
);

INSERT INTO digital_token_balances (id, player_id, token_type, balance, total_earned, total_spent, last_earned_date, last_spent_date, daily_earning_rate, daily_spending_rate, bonus_multiplier, lock_expiration, notes, created_at, updated_at, is_active, source_platform, redemption_count, max_balance, min_balance, audit_hash)
VALUES (1, 2001, 'GoldToken', 12400, 20000, 7600, '2023-06-10', '2023-06-14', 150.5, 80.2, 1.2, '2023-12-31', 'Standard rewards', '2022-01-01', '2023-06-14', 1, 'MobileApp', 45, 50000, 0, 'hashabc123');

INSERT INTO digital_token_balances (id, player_id, token_type, balance, total_earned, total_spent, last_earned_date, last_spent_date, daily_earning_rate, daily_spending_rate, bonus_multiplier, lock_expiration, notes, created_at, updated_at, is_active, source_platform, redemption_count, max_balance, min_balance, audit_hash)
VALUES (2, 2002, 'SilverToken', 5600, 8000, 2400, '2023-06-12', '2023-06-13', 80.0, 40.0, 1.0, '2023-11-30', 'Event bonus applied', '2022-03-15', '2023-06-13', 1, 'WebPortal', 20, 20000, 0, 'hashdef456');

INSERT INTO digital_token_balances (id, player_id, token_type, balance, total_earned, total_spent, last_earned_date, last_spent_date, daily_earning_rate, daily_spending_rate, bonus_multiplier, lock_expiration, notes, created_at, updated_at, is_active, source_platform, redemption_count, max_balance, min_balance, audit_hash)
VALUES (3, 2003, 'BronzeToken', 300, 500, 200, '2023-06-08', '2023-06-09', 20.0, 10.0, 0.9, '2023-10-15', 'New player starter pack', '2023-01-20', '2023-06-09', 1, 'DesktopClient', 5, 1000, 0, 'hashghi789');

-- Event vendor feedback records
CREATE TABLE event_vendor_feedback (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    vendor_id INTEGER,
    feedback_score INTEGER,
    comments TEXT,
    improvement_suggestions TEXT,
    contact_name TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    submitted_date DATE,
    reviewed_by TEXT,
    review_date DATE,
    follow_up_required INTEGER,
    follow_up_status TEXT,
    priority_level TEXT,
    action_items TEXT,
    created_at DATE,
    updated_at DATE,
    is_resolved INTEGER,
    resolution_notes TEXT,
    rating_category TEXT
);

INSERT INTO event_vendor_feedback (id, event_id, vendor_id, feedback_score, comments, improvement_suggestions, contact_name, contact_email, contact_phone, submitted_date, reviewed_by, review_date, follow_up_required, follow_up_status, priority_level, action_items, created_at, updated_at, is_resolved, resolution_notes, rating_category)
VALUES (1, 301, 401, 8, 'Good setup', 'Improve signage', 'Mike Vendor', 'mike.vendor@example.com', '5551112222', '2023-06-01', 'Sara Admin', '2023-06-03', 0, 'None', 'Medium', 'N/A', '2023-06-01', '2023-06-03', 1, 'Closed after review', 'Operational');

INSERT INTO event_vendor_feedback (id, event_id, vendor_id, feedback_score, comments, improvement_suggestions, contact_name, contact_email, contact_phone, submitted_date, reviewed_by, review_date, follow_up_required, follow_up_status, priority_level, action_items, created_at, updated_at, is_resolved, resolution_notes, rating_category)
VALUES (2, 302, 402, 5, 'Late delivery', 'Better logistics coordination', 'Anna Supplier', 'anna.supplier@example.com', '5553334444', '2023-06-05', 'Tom Supervisor', '2023-06-07', 1, 'Pending', 'High', 'Schedule follow up meeting', '2023-06-05', '2023-06-07', 0, '', 'Logistics');

INSERT INTO event_vendor_feedback (id, event_id, vendor_id, feedback_score, comments, improvement_suggestions, contact_name, contact_email, contact_phone, submitted_date, reviewed_by, review_date, follow_up_required, follow_up_status, priority_level, action_items, created_at, updated_at, is_resolved, resolution_notes, rating_category)
VALUES (3, 303, 403, 9, 'Excellent service', 'Maintain current standards', 'Liam Partner', 'liam.partner@example.com', '5555556666', '2023-06-10', 'Emily Manager', '2023-06-12', 0, 'None', 'Low', 'N/A', '2023-06-10', '2023-06-12', 1, 'No further action needed', 'Service');

-- In‑game event trigger definitions
CREATE TABLE in_game_event_triggers (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    trigger_name TEXT,
    trigger_type TEXT,
    activation_condition TEXT,
    cooldown_seconds INTEGER,
    max_activations_per_day INTEGER,
    reward_type TEXT,
    reward_value REAL,
    eligible_player_segment TEXT,
    start_time DATE,
    end_time DATE,
    is_global INTEGER,
    priority INTEGER,
    description TEXT,
    created_by TEXT,
    created_at DATE,
    updated_at DATE,
    is_active INTEGER,
    notification_template_id INTEGER,
    analytics_event_name TEXT,
    external_api_endpoint TEXT
);

INSERT INTO in_game_event_triggers (id, trigger_name, trigger_type, activation_condition, cooldown_seconds, max_activations_per_day, reward_type, reward_value, eligible_player_segment, start_time, end_time, is_global, priority, description, created_by, created_at, updated_at, is_active, notification_template_id, analytics_event_name, external_api_endpoint)
VALUES (1, 'DailyLoginBonus', 'Login', 'login_once_per_day', 86400, 1, 'GoldToken', 500, 'AllPlayers', '2023-06-01', '2023-12-31', 1, 10, 'Reward for daily login', 'System', '2023-05-01', '2023-06-01', 1, 201, 'login_bonus_event', 'https://api.example.com/bonus');

INSERT INTO in_game_event_triggers (id, trigger_name, trigger_type, activation_condition, cooldown_seconds, max_activations_per_day, reward_type, reward_value, eligible_player_segment, start_time, end_time, is_global, priority, description, created_by, created_at, updated_at, is_active, notification_template_id, analytics_event_name, external_api_endpoint)
VALUES (2, 'WeekendDoubleXP', 'TimeWindow', 'weekend', 0, 9999, 'Experience', 2.0, 'AllPlayers', '2023-06-02', '2023-09-30', 1, 20, 'Double XP on weekends', 'Admin', '2023-05-15', '2023-06-02', 1, 202, 'double_xp_event', 'https://api.example.com/doublexp');

INSERT INTO in_game_event_triggers (id, trigger_name, trigger_type, activation_condition, cooldown_seconds, max_activations_per_day, reward_type, reward_value, eligible_player_segment, start_time, end_time, is_global, priority, description, created_by, created_at, updated_at, is_active, notification_template_id, analytics_event_name, external_api_endpoint)
VALUES (3, 'SpecialQuestCompletion', 'Quest', 'quest_completed:quest123', 0, 5, 'SilverToken', 300, 'HighRankPlayers', '2023-07-01', '2023-07-31', 0, 30, 'Reward for completing special quest', 'QuestMaster', '2023-06-20', '2023-07-01', 1, 203, 'quest_completion_event', 'https://api.example.com/questreward');

-- User interface customization settings
CREATE TABLE ui_customizations (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    theme TEXT,
    primary_color TEXT,
    secondary_color TEXT,
    font_family TEXT,
    font_size INTEGER,
    avatar_url TEXT,
    background_image_url TEXT,
    layout_style TEXT,
    hud_opacity REAL,
    minimap_position TEXT,
    chat_window_position TEXT,
    enable_animations INTEGER,
    animation_speed REAL,
    enable_sound_effects INTEGER,
    sound_volume REAL,
    language TEXT,
    show_tutorials INTEGER,
    created_at DATE,
    updated_at DATE,
    is_active INTEGER
);

INSERT INTO ui_customizations (id, user_id, theme, primary_color, secondary_color, font_family, font_size, avatar_url, background_image_url, layout_style, hud_opacity, minimap_position, chat_window_position, enable_animations, animation_speed, enable_sound_effects, sound_volume, language, show_tutorials, created_at, updated_at, is_active)
VALUES (1, 1001, 'Dark', '#1a1a1a', '#e0e0e0', 'Roboto', 14, 'https://img.example.com/avatar1.png', 'https://img.example.com/bg1.jpg', 'Grid', 0.85, 'TopRight', 'BottomLeft', 1, 1.0, 1, 0.7, 'en', 0, '2023-01-10', '2023-06-14', 1);

INSERT INTO ui_customizations (id, user_id, theme, primary_color, secondary_color, font_family, font_size, avatar_url, background_image_url, layout_style, hud_opacity, minimap_position, chat_window_position, enable_animations, animation_speed, enable_sound_effects, sound_volume, language, show_tutorials, created_at, updated_at, is_active)
VALUES (2, 1002, 'Light', '#ffffff', '#333333', 'Arial', 12, 'https://img.example.com/avatar2.png', 'https://img.example.com/bg2.jpg', 'Compact', 0.95, 'BottomRight', 'TopLeft', 0, 0.0, 1, 0.5, 'es', 1, '2022-11-05', '2023-05-20', 1);

INSERT INTO ui_customizations (id, user_id, theme, primary_color, secondary_color, font_family, font_size, avatar_url, background_image_url, layout_style, hud_opacity, minimap_position, chat_window_position, enable_animations, animation_speed, enable_sound_effects, sound_volume, language, show_tutorials, created_at, updated_at, is_active)
VALUES (3, 1003, 'Neon', '#00ff00', '#0000ff', 'Verdana', 16, 'https://img.example.com/avatar3.png', 'https://img.example.com/bg3.jpg', 'Spacious', 0.75, 'TopLeft', 'BottomRight', 1, 1.5, 0, 0.0, 'de', 0, '2023-03-01', '2023-06-10', 1);

-- Advertising invoice records
CREATE TABLE advertising_invoices (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    advertiser_id INTEGER,
    campaign_name TEXT,
    invoice_number TEXT,
    issue_date DATE,
    due_date DATE,
    total_amount_usd REAL,
    tax_amount_usd REAL,
    discount_amount_usd REAL,
    net_amount_usd REAL,
    payment_status TEXT,
    payment_method TEXT,
    transaction_id TEXT,
    billing_address TEXT,
    contact_name TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    is_paid INTEGER,
    approved_by TEXT
);

INSERT INTO advertising_invoices (id, advertiser_id, campaign_name, invoice_number, issue_date, due_date, total_amount_usd, tax_amount_usd, discount_amount_usd, net_amount_usd, payment_status, payment_method, transaction_id, billing_address, contact_name, contact_email, contact_phone, notes, created_at, updated_at, is_paid, approved_by)
VALUES (1, 501, 'SummerPromo', 'INV202306001', '2023-06-01', '2023-06-30', 15000.00, 1200.00, 500.00, 15700.00, 'Pending', 'BankTransfer', 'TXN78901', '123 Main St', 'John Sales', 'john.sales@example.com', '5557778888', 'First installment', '2023-06-01', '2023-06-01', 0, 'Lisa Manager');

INSERT INTO advertising_invoices (id, advertiser_id, campaign_name, invoice_number, issue_date, due_date, total_amount_usd, tax_amount_usd, discount_amount_usd, net_amount_usd, payment_status, payment_method, transaction_id, billing_address, contact_name, contact_email, contact_phone, notes, created_at, updated_at, is_paid, approved_by)
VALUES (2, 502, 'WinterBlast', 'INV202312015', '2023-12-01', '2024-01-01', 20000.00, 1600.00, 800.00, 20800.00, 'Paid', 'CreditCard', 'TXN88902', '456 Oak Ave', 'Emily Marketing', 'emily.marketing@example.com', '5559990000', 'Full payment received', '2023-12-01', '2023-12-15', 1, 'Mark Director');

INSERT INTO advertising_invoices (id, advertiser_id, campaign_name, invoice_number, issue_date, due_date, total_amount_usd, tax_amount_usd, discount_amount_usd, net_amount_usd, payment_status, payment_method, transaction_id, billing_address, contact_name, contact_email, contact_phone, notes, created_at, updated_at, is_paid, approved_by)
VALUES (3, 503, 'SpringLaunch', 'INV202403030', '2024-03-01', '2024-03-31', 18000.00, 1440.00, 600.00, 19040.00, 'Pending', 'PayPal', 'TXN99003', '789 Pine Rd', 'David Promo', 'david.promo@example.com', '5551112222', 'Awaiting payment', '2024-03-01', '2024-03-05', 0, 'Anna Supervisor');

-- Content Delivery Network (CDN) access logs
CREATE TABLE cdn_access_logs (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    request_id TEXT,
    asset_path TEXT,
    client_ip TEXT,
    user_agent TEXT,
    request_method TEXT,
    response_status INTEGER,
    bytes_transferred INTEGER,
    cache_status TEXT,
    origin_server TEXT,
    ttl_seconds INTEGER,
    region TEXT,
    request_timestamp DATE,
    referer TEXT,
    http_version TEXT,
    edge_server_id TEXT,
    latency_ms REAL,
    protocol TEXT,
    is_secure INTEGER,
    geo_country TEXT,
    geo_city TEXT,
    created_at DATE
);

INSERT INTO cdn_access_logs (id, request_id, asset_path, client_ip, user_agent, request_method, response_status, bytes_transferred, cache_status, origin_server, ttl_seconds, region, request_timestamp, referer, http_version, edge_server_id, latency_ms, protocol, is_secure, geo_country, geo_city, created_at)
VALUES (1, 'REQ001', '/assets/card_images/uuid12345.png', '192.168.1.10', 'Mozilla/5.0', 'GET', 200, 45200, 'HIT', 'origin1', 3600, 'NA', '2023-06-14', '-', 'HTTP/1.1', 'EDGE01', 45.2, 'HTTPS', 1, 'US', 'NewYork', '2023-06-14');

INSERT INTO cdn_access_logs (id, request_id, asset_path, client_ip, user_agent, request_method, response_status, bytes_transferred, cache_status, origin_server, ttl_seconds, region, request_timestamp, referer, http_version, edge_server_id, latency_ms, protocol, is_secure, geo_country, geo_city, created_at)
VALUES (2, 'REQ002', '/videos/stream123.m3u8', '203.0.113.5', 'AppleCoreMedia/1.0', 'GET', 206, 1500000, 'MISS', 'origin2', 0, 'EU', '2023-06-15', 'https://example.com', 'HTTP/2', 'EDGE07', 120.5, 'HTTPS', 1, 'DE', 'Berlin', '2023-06-15');

INSERT INTO cdn_access_logs (id, request_id, asset_path, client_ip, user_agent, request_method, response_status, bytes_transferred, cache_status, origin_server, ttl_seconds, region, request_timestamp, referer, http_version, edge_server_id, latency_ms, protocol, is_secure, geo_country, geo_city, created_at)
VALUES (3, 'REQ003', '/api/v1/cards', '198.51.100.22', 'curl/7.68.0', 'POST', 400, 0, 'N/A', 'origin3', 0, 'APAC', '2023-06-16', '-', 'HTTP/1.1', 'EDGE03', 30.0, 'HTTP', 0, 'JP', 'Tokyo', '2023-06-16');

-- Cloud resource allocation tracking
CREATE TABLE cloud_resource_allocations (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    resource_id TEXT,
    resource_type TEXT,
    allocation_start DATE,
    allocation_end DATE,
    allocated_to TEXT,
    cpu_cores INTEGER,
    memory_gb REAL,
    storage_gb REAL,
    network_bandwidth_mbps REAL,
    region TEXT,
    availability_zone TEXT,
    cost_usd_per_hour REAL,
    utilization_percent REAL,
    status TEXT,
    tags TEXT,
    created_by TEXT,
    created_at DATE,
    updated_at DATE,
    is_active INTEGER,
    last_audit_timestamp DATE,
    audit_user TEXT,
    compliance_status TEXT
);

INSERT INTO cloud_resource_allocations (id, resource_id, resource_type, allocation_start, allocation_end, allocated_to, cpu_cores, memory_gb, storage_gb, network_bandwidth_mbps, region, availability_zone, cost_usd_per_hour, utilization_percent, status, tags, created_by, created_at, updated_at, is_active, last_audit_timestamp, audit_user, compliance_status)
VALUES (1, 'RES001', 'VM', '2023-01-01', '2023-12-31', 'GameServerClusterA', 8, 32.0, 500.0, 1000.0, 'NA', 'us-east-1a', 0.45, 68.5, 'Running', 'env=prod;team=engine', 'system', '2023-01-01', '2023-06-14', 1, '2023-06-13', 'admin', 'Compliant');

INSERT INTO cloud_resource_allocations (id, resource_id, resource_type, allocation_start, allocation_end, allocated_to, cpu_cores, memory_gb, storage_gb, network_bandwidth_mbps, region, availability_zone, cost_usd_per_hour, utilization_percent, status, tags, created_by, created_at, updated_at, is_active, last_audit_timestamp, audit_user, compliance_status)
VALUES (2, 'RES002', 'Database', '2023-03-15', '2024-03-14', 'AnalyticsDB', 16, 64.0, 2000.0, 2000.0, 'EU', 'eu-west-2b', 1.20, 55.2, 'Running', 'env=prod;team=analytics', 'system', '2023-03-15', '2023-06-14', 1, '2023-06-13', 'admin', 'Compliant');

INSERT INTO cloud_resource_allocations (id, resource_id, resource_type, allocation_start, allocation_end, allocated_to, cpu_cores, memory_gb, storage_gb, network_bandwidth_mbps, region, availability_zone, cost_usd_per_hour, utilization_percent, status, tags, created_by, created_at, updated_at, is_active, last_audit_timestamp, audit_user, compliance_status)
VALUES (3, 'RES003', 'Cache', '2023-05-01', NULL, 'SessionCacheCluster', 4, 16.0, 250.0, 500.0, 'APAC', 'ap-southeast-1c', 0.30, 80.0, 'Running', 'env=staging;team=web', 'system', '2023-05-01', '2023-06-14', 1, '2023-06-13', 'admin', 'Compliant');