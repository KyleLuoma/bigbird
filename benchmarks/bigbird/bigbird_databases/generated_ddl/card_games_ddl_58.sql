-- Card Market Trends
CREATE TABLE card_market_trends (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    trend_date DATE,
    set_code TEXT,
    average_price REAL,
    median_price REAL,
    price_std_dev REAL,
    volume_sold INTEGER,
    top_card_uuid TEXT,
    top_card_name TEXT,
    top_card_price REAL,
    low_card_uuid TEXT,
    low_card_name TEXT,
    low_card_price REAL,
    price_change_24h REAL,
    price_change_7d REAL,
    price_change_30d REAL,
    market_segment TEXT,
    currency TEXT,
    source TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO card_market_trends (
    trend_date, set_code, average_price, median_price, price_std_dev,
    volume_sold, top_card_uuid, top_card_name, top_card_price,
    low_card_uuid, low_card_name, low_card_price,
    price_change_24h, price_change_7d, price_change_30d,
    market_segment, currency, source, notes, created_at, updated_at
) VALUES (
    '2024-12-01', 'M21', 3.45, 2.80, 1.10,
    12400, 'uuid1234', 'Lightning Bolt', 12.34,
    'uuid5678', 'Moldwarp', 0.10,
    0.05, -0.02, 0.15,
    'Standard', 'USD', 'Scryfall', 'Initial trend', '2024-12-01', '2024-12-01'
);

INSERT INTO card_market_trends (
    trend_date, set_code, average_price, median_price, price_std_dev,
    volume_sold, top_card_uuid, top_card_name, top_card_price,
    low_card_uuid, low_card_name, low_card_price,
    price_change_24h, price_change_7d, price_change_30d,
    market_segment, currency, source, notes, created_at, updated_at
) VALUES (
    '2024-12-02', 'IKO', 4.12, 3.55, 1.30,
    15800, 'uuid2233', 'Thoughtseize', 9.87,
    'uuid8899', 'Fertilid', 0.25,
    -0.01, 0.04, -0.10,
    'Historic', 'USD', 'TCGplayer', 'Mid‑week update', '2024-12-02', '2024-12-02'
);

INSERT INTO card_market_trends (
    trend_date, set_code, average_price, median_price, price_std_dev,
    volume_sold, top_card_uuid, top_card_name, top_card_price,
    low_card_uuid, low_card_name, low_card_price,
    price_change_24h, price_change_7d, price_change_30d,
    market_segment, currency, source, notes, created_at, updated_at
) VALUES (
    '2024-12-03', 'STX', 2.78, 2.20, 0.95,
    10300, 'uuid3344', 'Uro, Titan of Nature', 6.45,
    'uuid9900', 'Joke', 0.05,
    0.07, -0.03, 0.20,
    'Explorer', 'USD', 'MTGGoldfish', 'Weekend swing', '2024-12-03', '2024-12-03'
);


-- Set Artwork Provenance
CREATE TABLE set_artwork_provenance (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    artwork_id TEXT,
    artist_name TEXT,
    creation_date DATE,
    medium TEXT,
    dimensions TEXT,
    location_original TEXT,
    location_current TEXT,
    acquisition_method TEXT,
    acquisition_price REAL,
    condition TEXT,
    provenance_notes TEXT,
    verified_by TEXT,
    verification_date DATE,
    copyright_status TEXT,
    license_type TEXT,
    usage_restrictions TEXT,
    digital_file_hash TEXT,
    file_format TEXT,
    resolution TEXT,
    color_profile TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO set_artwork_provenance (
    set_code, artwork_id, artist_name, creation_date, medium,
    dimensions, location_original, location_current, acquisition_method,
    acquisition_price, condition, provenance_notes, verified_by,
    verification_date, copyright_status, license_type,
    usage_restrictions, digital_file_hash, file_format,
    resolution, color_profile, created_at, updated_at
) VALUES (
    'M21', 'art001', 'John Doe', '2020-05-10', 'Oil on Canvas',
    '24x36in', 'Artist Studio', 'Main Gallery', 'Purchase',
    1500.00, 'Excellent', 'First exhibition', 'Jane Smith',
    '2020-06-01', 'Owned', 'Exclusive',
    'Print only', 'abcd1234efgh5678', 'PNG',
    '3000x2000', 'sRGB', '2024-01-01', '2024-01-01'
);

INSERT INTO set_artwork_provenance (
    set_code, artwork_id, artist_name, creation_date, medium,
    dimensions, location_original, location_current, acquisition_method,
    acquisition_price, condition, provenance_notes, verified_by,
    verification_date, copyright_status, license_type,
    usage_restrictions, digital_file_hash, file_format,
    resolution, color_profile, created_at, updated_at
) VALUES (
    'IKO', 'art002', 'Alice Lee', '2021-03-15', 'Digital Illustration',
    '1920x1080px', 'Online Portfolio', 'Digital Archive', 'License',
    0.00, 'Mint', 'Commissioned for set', 'Bob Johnson',
    '2021-04-01', 'Licensed', 'RoyaltyFree',
    'Web use only', 'zxy9876wvu5432ts', 'JPG',
    '1920x1080', 'AdobeRGB', '2024-01-02', '2024-01-02'
);

INSERT INTO set_artwork_provenance (
    set_code, artwork_id, artist_name, creation_date, medium,
    dimensions, location_original, location_current, acquisition_method,
    acquisition_price, condition, provenance_notes, verified_by,
    verification_date, copyright_status, license_type,
    usage_restrictions, digital_file_hash, file_format,
    resolution, color_profile, created_at, updated_at
) VALUES (
    'STX', 'art003', 'Carlos Ruiz', '2022-09-20', 'Watercolor',
    '18x24in', 'Artist Gallery', 'Museum Storage', 'Donation',
    0.00, 'Good', 'Donated for community project', 'Emily Davis',
    '2022-10-05', 'Public Domain', 'None',
    'All uses permitted', 'lmn4567opq8901rst', 'TIFF',
    '4000x3000', 'ProPhotoRGB', '2024-01-03', '2024-01-03'
);


-- Player Social Networks
CREATE TABLE player_social_networks (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    platform_name TEXT,
    username TEXT,
    profile_url TEXT,
    follower_count INTEGER,
    following_count INTEGER,
    post_count INTEGER,
    last_active DATE,
    verified INTEGER,
    bio TEXT,
    location TEXT,
    join_date DATE,
    preferred_language TEXT,
    privacy_setting TEXT,
    notification_opt_in INTEGER,
    content_rating TEXT,
    linked_account_id TEXT,
    sync_status TEXT,
    last_sync DATE,
    created_at DATE,
    updated_at DATE
);

INSERT INTO player_social_networks (
    player_id, platform_name, username, profile_url, follower_count,
    following_count, post_count, last_active, verified, bio,
    location, join_date, preferred_language, privacy_setting,
    notification_opt_in, content_rating, linked_account_id, sync_status,
    last_sync, created_at, updated_at
) VALUES (
    101, 'Twitter', 'gamerA', 'https://twitter.com/gamerA', 1240,
    300, 560, '2024-12-02', 1, 'MTG enthusiast',
    'Seattle', '2020-01-15', 'en', 'Public',
    1, 'General', 'link001', 'Synced',
    '2024-12-02', '2024-12-02', '2024-12-02'
);

INSERT INTO player_social_networks (
    player_id, platform_name, username, profile_url, follower_count,
    following_count, post_count, last_active, verified, bio,
    location, join_date, preferred_language, privacy_setting,
    notification_opt_in, content_rating, linked_account_id, sync_status,
    last_sync, created_at, updated_at
) VALUES (
    102, 'Discord', 'dragonLord', 'https://discord.com/users/dragonLord', 850,
    150, 300, '2024-11-30', 0, 'Competitive player',
    'Austin', '2019-06-20', 'en', 'FriendsOnly',
    1, 'Mature', 'link002', 'Pending',
    '2024-11-30', '2024-11-30', '2024-11-30'
);

INSERT INTO player_social_networks (
    player_id, platform_name, username, profile_url, follower_count,
    following_count, post_count, last_active, verified, bio,
    location, join_date, preferred_language, privacy_setting,
    notification_opt_in, content_rating, linked_account_id, sync_status,
    last_sync, created_at, updated_at
) VALUES (
    103, 'Instagram', 'cardCollector', 'https://instagram.com/cardCollector', 2100,
    400, 780, '2024-12-01', 1, 'Showcase my collection',
    'NewYork', '2021-03-10', 'en', 'Public',
    0, 'General', 'link003', 'Synced',
    '2024-12-01', '2024-12-01', '2024-12-01'
);


-- Virtual Currency Exchange Fees
CREATE TABLE virtual_currency_exchange_fees (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    exchange_id TEXT,
    currency_from TEXT,
    currency_to TEXT,
    fee_percentage REAL,
    flat_fee REAL,
    min_fee REAL,
    max_fee REAL,
    effective_date DATE,
    expiry_date DATE,
    tier TEXT,
    volume_threshold INTEGER,
    promotional INTEGER,
    notes TEXT,
    created_by TEXT,
    approved_by TEXT,
    approval_date DATE,
    status TEXT,
    last_updated DATE,
    created_at DATE,
    updated_at DATE,
    source_system TEXT,
    region TEXT
);

INSERT INTO virtual_currency_exchange_fees (
    exchange_id, currency_from, currency_to, fee_percentage, flat_fee,
    min_fee, max_fee, effective_date, expiry_date, tier,
    volume_threshold, promotional, notes, created_by,
    approved_by, approval_date, status, last_updated,
    created_at, updated_at, source_system, region
) VALUES (
    'ex001', 'Gold', 'Gems', 2.5, 0.10,
    0.05, 5.00, '2024-01-01', '2024-12-31', 'Standard',
    1000, 0, 'Standard fee schedule', 'system',
    'admin', '2023-12-15', 'Active', '2024-06-01',
    '2024-01-01', '2024-06-01', 'CoreEngine', 'NA'
);

INSERT INTO virtual_currency_exchange_fees (
    exchange_id, currency_from, currency_to, fee_percentage, flat_fee,
    min_fee, max_fee, effective_date, expiry_date, tier,
    volume_threshold, promotional, notes, created_by,
    approved_by, approval_date, status, last_updated,
    created_at, updated_at, source_system, region
) VALUES (
    'ex002', 'Gems', 'Gold', 1.8, 0.05,
    0.02, 3.00, '2024-03-01', '2024-09-30', 'Premium',
    5000, 1, 'Promo half fee', 'operator',
    'manager', '2024-02-25', 'Active', '2024-07-10',
    '2024-03-01', '2024-07-10', 'CoreEngine', 'EU'
);

INSERT INTO virtual_currency_exchange_fees (
    exchange_id, currency_from, currency_to, fee_percentage, flat_fee,
    min_fee, max_fee, effective_date, expiry_date, tier,
    volume_threshold, promotional, notes, created_by,
    approved_by, approval_date, status, last_updated,
    created_at, updated_at, source_system, region
) VALUES (
    'ex003', 'Gold', 'Silver', 3.0, 0.08,
    0.04, 4.50, '2024-05-01', NULL, 'Standard',
    2000, 0, 'No promo', 'system',
    'admin', '2024-04-20', 'Active', '2024-08-15',
    '2024-05-01', '2024-08-15', 'CoreEngine', 'APAC'
);


-- Game Event Schedule
CREATE TABLE game_event_schedule (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    event_id TEXT,
    event_name TEXT,
    start_date DATE,
    end_date DATE,
    start_time TEXT,
    end_time TEXT,
    timezone TEXT,
    venue_code TEXT,
    description TEXT,
    max_participants INTEGER,
    min_rank INTEGER,
    max_rank INTEGER,
    entry_fee REAL,
    prize_pool REAL,
    sponsor_code TEXT,
    broadcast_channel TEXT,
    registration_deadline DATE,
    status TEXT,
    created_at DATE,
    updated_at DATE,
    organizer TEXT,
    notes TEXT
);

INSERT INTO game_event_schedule (
    event_id, event_name, start_date, end_date, start_time,
    end_time, timezone, venue_code, description, max_participants,
    min_rank, max_rank, entry_fee, prize_pool, sponsor_code,
    broadcast_channel, registration_deadline, status,
    created_at, updated_at, organizer, notes
) VALUES (
    'ev001', 'Winter Clash', '2024-12-10', '2024-12-12', '10:00',
    '18:00', 'UTC', 'VN001', 'Seasonal tournament', 256,
    1, 2000, 5.00, 10000.00, 'SP001',
    'twitch', '2024-12-01', 'Scheduled',
    '2024-09-01', '2024-09-01', 'GameOps', 'First winter event of the year'
);

INSERT INTO game_event_schedule (
    event_id, event_name, start_date, end_date, start_time,
    end_time, timezone, venue_code, description, max_participants,
    min_rank, max_rank, entry_fee, prize_pool, sponsor_code,
    broadcast_channel, registration_deadline, status,
    created_at, updated_at, organizer, notes
) VALUES (
    'ev002', 'Spring Sprint', '2025-03-15', '2025-03-16', '12:00',
    '20:00', 'UTC', 'VN002', 'Fast‑paced competition', 128,
    500, 3000, 3.00, 7500.00, 'SP002',
    'youtube', '2025-03-05', 'Planned',
    '2024-11-01', '2024-11-01', 'EventTeam', 'Focus on newer players'
);

INSERT INTO game_event_schedule (
    event_id, event_name, start_date, end_date, start_time,
    end_time, timezone, venue_code, description, max_participants,
    min_rank, max_rank, entry_fee, prize_pool, sponsor_code,
    broadcast_channel, registration_deadline, status,
    created_at, updated_at, organizer, notes
) VALUES (
    'ev003', 'Summer Showdown', '2025-07-20', '2025-07-22', '09:00',
    '19:00', 'UTC', 'VN003', 'Mid‑season major', 512,
    1, 5000, 7.00, 20000.00, 'SP003',
    'twitch', '2025-07-10', 'Planned',
    '2024-12-01', '2024-12-01', 'TournamentDirector', 'Large prize pool'
);


-- Digital Asset Retention Policies
CREATE TABLE digital_asset_retention_policies (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    policy_id TEXT,
    asset_type TEXT,
    retention_period_days INTEGER,
    encryption_required INTEGER,
    backup_frequency_days INTEGER,
    archival_location TEXT,
    access_control TEXT,
    compliance_standard TEXT,
    responsible_team TEXT,
    created_by TEXT,
    created_at DATE,
    reviewed_by TEXT,
    review_date DATE,
    status TEXT,
    notes TEXT,
    data_classification TEXT,
    legal_hold INTEGER,
    retention_reason TEXT,
    last_modified DATE,
    updated_by TEXT,
    version INTEGER,
    deprecation_date DATE
);

INSERT INTO digital_asset_retention_policies (
    policy_id, asset_type, retention_period_days, encryption_required,
    backup_frequency_days, archival_location, access_control,
    compliance_standard, responsible_team, created_by,
    created_at, reviewed_by, review_date, status,
    notes, data_classification, legal_hold, retention_reason,
    last_modified, updated_by, version, deprecation_date
) VALUES (
    'pol001', 'CardImage', 3650, 1,
    1, 'ColdStorageA', 'RoleBased', 'ISO27001', 'MediaTeam',
    'admin', '2023-01-01', 'complianceLead', '2023-06-01', 'Active',
    'Retain for legal purposes', 'Sensitive', 0, 'Regulatory',
    '2024-01-01', 'admin', 3, NULL
);

INSERT INTO digital_asset_retention_policies (
    policy_id, asset_type, retention_period_days, encryption_required,
    backup_frequency_days, archival_location, access_control,
    compliance_standard, responsible_team, created_by,
    created_at, reviewed_by, review_date, status,
    notes, data_classification, legal_hold, retention_reason,
    last_modified, updated_by, version, deprecation_date
) VALUES (
    'pol002', 'AudioCommentary', 730, 1,
    7, 'ColdStorageB', 'GroupBased', 'SOC2', 'AudioTeam',
    'admin', '2022-05-15', 'auditMgr', '2022-12-01', 'Active',
    'Keep for community reference', 'Public', 0, 'Historical',
    '2024-02-15', 'admin', 2, NULL
);

INSERT INTO digital_asset_retention_policies (
    policy_id, asset_type, retention_period_days, encryption_required,
    backup_frequency_days, archival_location, access_control,
    compliance_standard, responsible_team, created_by,
    created_at, reviewed_by, review_date, status,
    notes, data_classification, legal_hold, retention_reason,
    last_modified, updated_by, version, deprecation_date
) VALUES (
    'pol003', 'TournamentLog', 1825, 1,
    1, 'ColdStorageC', 'RoleBased', 'PCI-DSS', 'OpsTeam',
    'admin', '2021-09-01', 'securityLead', '2022-01-01', 'Active',
    'Retain for dispute resolution', 'Confidential', 1, 'Legal',
    '2024-03-01', 'admin', 5, NULL
);


-- Collector Trade Requests
CREATE TABLE collector_trade_requests (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    request_id TEXT,
    requester_id INTEGER,
    responder_id INTEGER,
    offered_card_uuid TEXT,
    requested_card_uuid TEXT,
    status TEXT,
    offer_date DATE,
    response_date DATE,
    trade_deadline DATE,
    notes TEXT,
    is_counter_offer INTEGER,
    counter_offer_id TEXT,
    agreed_price REAL,
    shipping_method TEXT,
    tracking_number TEXT,
    confirmed_by_requester INTEGER,
    confirmed_by_responder INTEGER,
    created_at DATE,
    updated_at DATE,
    platform TEXT,
    priority INTEGER
);

INSERT INTO collector_trade_requests (
    request_id, requester_id, responder_id, offered_card_uuid, requested_card_uuid,
    status, offer_date, response_date, trade_deadline, notes,
    is_counter_offer, counter_offer_id, agreed_price, shipping_method,
    tracking_number, confirmed_by_requester, confirmed_by_responder,
    created_at, updated_at, platform, priority
) VALUES (
    'tr001', 201, 301, 'uuid1234', 'uuid5678',
    'Pending', '2024-11-20', NULL, '2024-12-05', 'First contact',
    0, NULL, NULL, 'Standard',
    NULL, 0, 0,
    '2024-11-20', '2024-11-20', 'WebPortal', 2
);

INSERT INTO collector_trade_requests (
    request_id, requester_id, responder_id, offered_card_uuid, requested_card_uuid,
    status, offer_date, response_date, trade_deadline, notes,
    is_counter_offer, counter_offer_id, agreed_price, shipping_method,
    tracking_number, confirmed_by_requester, confirmed_by_responder,
    created_at, updated_at, platform, priority
) VALUES (
    'tr002', 202, 302, 'uuid2233', 'uuid8899',
    'Accepted', '2024-10-15', '2024-10-16', '2024-11-01', 'Quick trade',
    0, NULL, 15.00, 'Express',
    'TRACK12345', 1, 1,
    '2024-10-15', '2024-10-16', 'MobileApp', 1
);

INSERT INTO collector_trade_requests (
    request_id, requester_id, responder_id, offered_card_uuid, requested_card_uuid,
    status, offer_date, response_date, trade_deadline, notes,
    is_counter_offer, counter_offer_id, agreed_price, shipping_method,
    tracking_number, confirmed_by_requester, confirmed_by_responder,
    created_at, updated_at, platform, priority
) VALUES (
    'tr003', 203, 303, 'uuid3344', 'uuid9900',
    'Countered', '2024-09-05', '2024-09-06', '2024-09-20', 'Proposed alternate card',
    1, 'tr003c', NULL, NULL,
    NULL, 0, 0,
    '2024-09-05', '2024-09-06', 'WebPortal', 3
);


-- Card Print Quality Checks
CREATE TABLE card_print_quality_checks (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    batch_id TEXT,
    print_shop TEXT,
    inspection_date DATE,
    inspector_name TEXT,
    card_uuid TEXT,
    defect_type TEXT,
    severity INTEGER,
    notes TEXT,
    reprint_required INTEGER,
    reprint_batch_id TEXT,
    resolution_method TEXT,
    corrected_by TEXT,
    correction_date DATE,
    color_accuracy REAL,
    alignment_score REAL,
    surface_finish TEXT,
    weight_grams REAL,
    thickness_microns REAL,
    created_at DATE,
    updated_at DATE,
    verification_status TEXT,
    batch_size INTEGER
);

INSERT INTO card_print_quality_checks (
    batch_id, print_shop, inspection_date, inspector_name, card_uuid,
    defect_type, severity, notes, reprint_required, reprint_batch_id,
    resolution_method, corrected_by, correction_date, color_accuracy,
    alignment_score, surface_finish, weight_grams, thickness_microns,
    created_at, updated_at, verification_status, batch_size
) VALUES (
    'B001', 'PrintCoA', '2024-08-01', 'Alice', 'uuid1234',
    'ColorShift', 2, 'Slight blue tint', 0, NULL,
    'AdjustedInk', 'Bob', '2024-08-02', 98.5,
    95.0, 'Matte', 1.2, 300,
    '2024-08-01', '2024-08-02', 'Accepted', 5000
);

INSERT INTO card_print_quality_checks (
    batch_id, print_shop, inspection_date, inspector_name, card_uuid,
    defect_type, severity, notes, reprint_required, reprint_batch_id,
    resolution_method, corrected_by, correction_date, color_accuracy,
    alignment_score, surface_finish, weight_grams, thickness_microns,
    created_at, updated_at, verification_status, batch_size
) VALUES (
    'B002', 'PrintCoB', '2024-08-15', 'Carlos', 'uuid2233',
    'Misalignment', 3, 'Border off-center', 1, 'B002R',
    'Reprint', 'Diana', '2024-08-20', 92.0,
    80.0, 'Glossy', 1.25, 310,
    '2024-08-15', '2024-08-20', 'Pending Reprint', 4000
);

INSERT INTO card_print_quality_checks (
    batch_id, print_shop, inspection_date, inspector_name, card_uuid,
    defect_type, severity, notes, reprint_required, reprint_batch_id,
    resolution_method, corrected_by, correction_date, color_accuracy,
    alignment_score, surface_finish, weight_grams, thickness_microns,
    created_at, updated_at, verification_status, batch_size
) VALUES (
    'B003', 'PrintCoC', '2024-09-01', 'Emily', 'uuid3344',
    'SurfaceScratch', 1, 'Minor scratch on back', 0, NULL,
    'Polish', 'Frank', '2024-09-02', 99.0,
    98.0, 'Satin', 1.22, 305,
    '2024-09-01', '2024-09-02', 'Accepted', 6000
);


-- Sponsor Engagement Metrics Detail
CREATE TABLE sponsor_engagement_metrics_detail (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    sponsor_id TEXT,
    event_id TEXT,
    impressions INTEGER,
    clicks INTEGER,
    click_through_rate REAL,
    engagement_score REAL,
    brand_awareness_index REAL,
    lead_conversions INTEGER,
    cost_per_impression REAL,
    cost_per_click REAL,
    total_spend REAL,
    campaign_start DATE,
    campaign_end DATE,
    platform TEXT,
    ad_format TEXT,
    audience_segment TEXT,
    geographic_region TEXT,
    created_at DATE,
    updated_at DATE,
    approved_by TEXT,
    approval_date DATE,
    notes TEXT,
    status TEXT
);

INSERT INTO sponsor_engagement_metrics_detail (
    sponsor_id, event_id, impressions, clicks, click_through_rate,
    engagement_score, brand_awareness_index, lead_conversions,
    cost_per_impression, cost_per_click, total_spend,
    campaign_start, campaign_end, platform, ad_format,
    audience_segment, geographic_region, created_at, updated_at,
    approved_by, approval_date, notes, status
) VALUES (
    'SP001', 'ev001', 120000, 3500, 2.92,
    78.5, 85.0, 150,
    0.02, 0.50, 15000.00,
    '2024-11-01', '2024-12-15', 'Twitch', 'Video',
    'CompetitivePlayers', 'NorthAmerica',
    '2024-10-15', '2024-12-20', 'marketingLead', '2024-10-20',
    'High visibility banner', 'Active'
);

INSERT INTO sponsor_engagement_metrics_detail (
    sponsor_id, event_id, impressions, clicks, click_through_rate,
    engagement_score, brand_awareness_index, lead_conversions,
    cost_per_impression, cost_per_click, total_spend,
    campaign_start, campaign_end, platform, ad_format,
    audience_segment, geographic_region, created_at, updated_at,
    approved_by, approval_date, notes, status
) VALUES (
    'SP002', 'ev002', 85000, 2100, 2.47,
    65.0, 70.5, 95,
    0.025, 0.45, 12000.00,
    '2025-02-01', '2025-03-01', 'YouTube', 'Overlay',
    'CasualPlayers', 'Europe',
    '2025-01-10', '2025-03-05', 'campaignMgr', '2025-01-15',
    'Mid‑season promotion', 'Active'
);

INSERT INTO sponsor_engagement_metrics_detail (
    sponsor_id, event_id, impressions, clicks, click_through_rate,
    engagement_score, brand_awareness_index, lead_conversions,
    cost_per_impression, cost_per_click, total_spend,
    campaign_start, campaign_end, platform, ad_format,
    audience_segment, geographic_region, created_at, updated_at,
    approved_by, approval_date, notes, status
) VALUES (
    'SP003', 'ev003', 200000, 6000, 3.00,
    85.0, 90.0, 300,
    0.018, 0.55, 25000.00,
    '2025-06-15', '2025-07-20', 'Twitch', 'Banner',
    'ProPlayers', 'Asia',
    '2025-05-20', '2025-07-25', 'seniorMgr', '2025-05-25',
    'Major summer event sponsorship', 'Active'
);


-- Tournament Match Officials
CREATE TABLE tournament_match_officials (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    match_id TEXT,
    tournament_id TEXT,
    official_id INTEGER,
    role TEXT,
    assigned_date DATE,
    confirmed INTEGER,
    contact_email TEXT,
    contact_phone TEXT,
    notes TEXT,
    shift_start TIME,
    shift_end TIME,
    location_code TEXT,
    certification_level TEXT,
    years_experience INTEGER,
    last_training_date DATE,
    availability_status TEXT,
    replacement_official_id INTEGER,
    created_at DATE,
    updated_at DATE,
    approved_by TEXT,
    approval_date DATE,
    status TEXT,
    remarks TEXT
);

INSERT INTO tournament_match_officials (
    match_id, tournament_id, official_id, role, assigned_date,
    confirmed, contact_email, contact_phone, notes, shift_start,
    shift_end, location_code, certification_level, years_experience,
    last_training_date, availability_status, replacement_official_id,
    created_at, updated_at, approved_by, approval_date, status, remarks
) VALUES (
    'm001', 't001', 401, 'HeadReferee', '2024-12-01',
    1, 'ref1@example.com', '5551234567', 'Lead official for finals', '09:00',
    '13:00', 'VN001', 'Level3', 7, '2024-06-01', 'Available', NULL,
    '2024-11-20', '2024-12-01', 'opsLead', '2024-11-25', 'Scheduled', ''
);

INSERT INTO tournament_match_officials (
    match_id, tournament_id, official_id, role, assigned_date,
    confirmed, contact_email, contact_phone, notes, shift_start,
    shift_end, location_code, certification_level, years_experience,
    last_training_date, availability_status, replacement_official_id,
    created_at, updated_at, approved_by, approval_date, status, remarks
) VALUES (
    'm002', 't001', 402, 'AssistantReferee', '2024-12-01',
    0, 'ref2@example.com', '5559876543', 'Assist head referee', '09:00',
    '13:00', 'VN001', 'Level2', 3, '2024-08-15', 'Pending Confirmation', 403,
    '2024-11-21', '2024-12-01', 'opsLead', '2024-11-26', 'Pending', ''
);

INSERT INTO tournament_match_officials (
    match_id, tournament_id, official_id, role, assigned_date,
    confirmed, contact_email, contact_phone, notes, shift_start,
    shift_end, location_code, certification_level, years_experience,
    last_training_date, availability_status, replacement_official_id,
    created_at, updated_at, approved_by, approval_date, status, remarks
) VALUES (
    'm003', 't002', 403, 'HeadReferee', '2025-03-10',
    1, 'ref3@example.com', '5551112222', 'Main official for semi‑finals', '14:00',
    '18:00', 'VN002', 'Level3', 10, '2024-12-10', 'Available', NULL,
    '2025-02-20', '2025-03-10', 'opsLead', '2025-02-25', 'Scheduled', ''
);