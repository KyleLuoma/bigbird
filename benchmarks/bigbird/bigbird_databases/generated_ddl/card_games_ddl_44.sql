-- Broadcast media assets for live events
CREATE TABLE broadcast_media_assets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_name TEXT,
    asset_type TEXT,
    duration_seconds INTEGER,
    resolution TEXT,
    bitrate_kbps INTEGER,
    format TEXT,
    language TEXT,
    region TEXT,
    creator_id INTEGER,
    license_type TEXT,
    release_date DATE,
    expiry_date DATE,
    size_mb REAL,
    checksum TEXT,
    is_active INTEGER,
    view_count INTEGER,
    like_count INTEGER,
    dislike_count INTEGER,
    comment_count INTEGER,
    rating REAL,
    tags TEXT,
    description TEXT
);

INSERT INTO broadcast_media_assets (asset_name, asset_type, duration_seconds, resolution, bitrate_kbps, format, language, region, creator_id, license_type, release_date, expiry_date, size_mb, checksum, is_active, view_count, like_count, dislike_count, comment_count, rating, tags, description)
VALUES ('IntroClip', 'Video', 30, '1080p', 5000, 'MP4', 'English', 'NA', 1, 'RoyaltyFree', '2023-01-01', '2025-01-01', 15.5, 'abc123', 1, 1000, 100, 5, 20, 4.5, 'intro,gameplay', 'Opening clip for broadcast');

INSERT INTO broadcast_media_assets (asset_name, asset_type, duration_seconds, resolution, bitrate_kbps, format, language, region, creator_id, license_type, release_date, expiry_date, size_mb, checksum, is_active, view_count, like_count, dislike_count, comment_count, rating, tags, description)
VALUES ('ChampionInterview', 'Audio', 180, 'N/A', 320, 'MP3', 'English', 'EU', 2, 'Standard', '2023-03-15', '2026-03-15', 5.2, 'def456', 1, 500, 45, 2, 8, 4.8, 'interview,champion', 'Interview with tournament champion');

INSERT INTO broadcast_media_assets (asset_name, asset_type, duration_seconds, resolution, bitrate_kbps, format, language, region, creator_id, license_type, release_date, expiry_date, size_mb, checksum, is_active, view_count, like_count, dislike_count, comment_count, rating, tags, description)
VALUES ('FinalsHighlight', 'Video', 120, '4K', 8000, 'MKV', 'English', 'NA', 3, 'Premium', '2023-07-20', '2026-07-20', 250.0, 'ghi789', 1, 2000, 300, 15, 60, 4.9, 'finals,highlight', 'Highlights from the finals match');

-- Esports analytics records
CREATE TABLE esports_analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    tournament_id INTEGER,
    team_a_id INTEGER,
    team_b_id INTEGER,
    winner_team_id INTEGER,
    duration_seconds INTEGER,
    map_name TEXT,
    mvp_player_id INTEGER,
    total_kills INTEGER,
    total_assists INTEGER,
    total_deaths INTEGER,
    average_score REAL,
    peak_players INTEGER,
    spectators_count INTEGER,
    peak_latency_ms INTEGER,
    avg_latency_ms INTEGER,
    chat_message_count INTEGER,
    toxic_message_count INTEGER,
    avg_toxicity_score REAL,
    analysis_timestamp DATE,
    analyst_id INTEGER
);

INSERT INTO esports_analytics (match_id, tournament_id, team_a_id, team_b_id, winner_team_id, duration_seconds, map_name, mvp_player_id, total_kills, total_assists, total_deaths, average_score, peak_players, spectators_count, peak_latency_ms, avg_latency_ms, chat_message_count, toxic_message_count, avg_toxicity_score, analysis_timestamp, analyst_id)
VALUES (1001, 200, 10, 12, 10, 1800, 'Dust2', 55, 45, 30, 20, 78.5, 10, 15000, 120, 80, 5000, 250, 0.3, '2023-08-01', 5);

INSERT INTO esports_analytics (match_id, tournament_id, team_a_id, team_b_id, winner_team_id, duration_seconds, map_name, mvp_player_id, total_kills, total_assists, total_deaths, average_score, peak_players, spectators_count, peak_latency_ms, avg_latency_ms, chat_message_count, toxic_message_count, avg_toxicity_score, analysis_timestamp, analyst_id)
VALUES (1002, 200, 14, 16, 16, 2100, 'Inferno', 78, 60, 40, 35, 82.1, 10, 18000, 130, 85, 6200, 300, 0.35, '2023-08-02', 5);

INSERT INTO esports_analytics (match_id, tournament_id, team_a_id, team_b_id, winner_team_id, duration_seconds, map_name, mvp_player_id, total_kills, total_assists, total_deaths, average_score, peak_players, spectators_count, peak_latency_ms, avg_latency_ms, chat_message_count, toxic_message_count, avg_toxicity_score, analysis_timestamp, analyst_id)
VALUES (1003, 201, 20, 22, 22, 1950, 'Mirage', 89, 52, 38, 28, 80.0, 10, 17000, 125, 78, 5800, 260, 0.28, '2023-08-03', 6);

-- Collector valuation models
CREATE TABLE collector_valuation_models (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    model_name TEXT,
    version TEXT,
    creator_id INTEGER,
    created_date DATE,
    last_updated DATE,
    base_currency TEXT,
    valuation_method TEXT,
    risk_factor REAL,
    growth_rate REAL,
    inflation_adjustment REAL,
    market_segment TEXT,
    asset_type TEXT,
    factor_multiplier REAL,
    data_source TEXT,
    description TEXT,
    is_public INTEGER,
    approval_status TEXT,
    review_date DATE,
    reviewer_id INTEGER,
    notes TEXT,
    tags TEXT
);

INSERT INTO collector_valuation_models (model_name, version, creator_id, created_date, last_updated, base_currency, valuation_method, risk_factor, growth_rate, inflation_adjustment, market_segment, asset_type, factor_multiplier, data_source, description, is_public, approval_status, review_date, reviewer_id, notes, tags)
VALUES ('StandardCardModel', '1.0', 12, '2022-01-10', '2023-06-01', 'USD', 'MonteCarlo', 0.15, 0.07, 0.02, 'Primary', 'Card', 1.0, 'MarketDataAPI', 'Baseline valuation for standard cards', 1, 'Approved', '2023-06-15', 3, 'Used for quarterly reports', 'standard,baseline');

INSERT INTO collector_valuation_models (model_name, version, creator_id, created_date, last_updated, base_currency, valuation_method, risk_factor, growth_rate, inflation_adjustment, market_segment, asset_type, factor_multiplier, data_source, description, is_public, approval_status, review_date, reviewer_id, notes, tags)
VALUES ('PremiumFoilModel', '2.1', 15, '2021-11-05', '2023-05-20', 'USD', 'Regression', 0.25, 0.12, 0.03, 'Premium', 'FoilCard', 1.2, 'HistoricalSalesDB', 'Advanced model for foil cards', 0, 'Pending', '2023-05-25', 4, 'Pending senior review', 'foil,premium');

INSERT INTO collector_valuation_models (model_name, version, creator_id, created_date, last_updated, base_currency, valuation_method, risk_factor, growth_rate, inflation_adjustment, market_segment, asset_type, factor_multiplier, data_source, description, is_public, approval_status, review_date, reviewer_id, notes, tags)
VALUES ('LegacyArtifactModel', '0.9', 18, '2020-03-12', '2023-04-10', 'USD', 'NeuralNet', 0.35, 0.05, 0.01, 'Legacy', 'Artifact', 1.5, 'CollectorSurveys', 'Model for rare legacy artifacts', 0, 'Rejected', '2023-04-12', 6, 'Model requires more data', 'legacy,artifact');

-- Regional event statistics
CREATE TABLE regional_event_statistics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    region_code TEXT,
    event_type TEXT,
    year INTEGER,
    total_events INTEGER,
    total_participants INTEGER,
    average_attendance INTEGER,
    revenue_usd REAL,
    sponsor_count INTEGER,
    average_satisfaction REAL,
    top_city TEXT,
    average_ticket_price REAL,
    media_mentions INTEGER,
    social_mentions INTEGER,
    peak_day_attendance INTEGER,
    longest_event_days INTEGER,
    volunteer_hours INTEGER,
    carbon_footprint_tons REAL,
    local_business_impact REAL,
    government_support_usd REAL,
    report_generated DATE,
    analyst_id INTEGER
);

INSERT INTO regional_event_statistics (region_code, event_type, year, total_events, total_participants, average_attendance, revenue_usd, sponsor_count, average_satisfaction, top_city, average_ticket_price, media_mentions, social_mentions, peak_day_attendance, longest_event_days, volunteer_hours, carbon_footprint_tons, local_business_impact, government_support_usd, report_generated, analyst_id)
VALUES ('NA', 'Tournament', 2023, 45, 7200, 160, 1200000.00, 12, 4.6, 'LosAngeles', 75.5, 340, 5600, 1800, 7, 3500, 25.4, 420000.00, 150000.00, '2023-12-01', 9);

INSERT INTO regional_event_statistics (region_code, event_type, year, total_events, total_participants, average_attendance, revenue_usd, sponsor_count, average_satisfaction, top_city, average_ticket_price, media_mentions, social_mentions, peak_day_attendance, longest_event_days, volunteer_hours, carbon_footprint_tons, local_business_impact, government_support_usd, report_generated, analyst_id)
VALUES ('EU', 'Convention', 2023, 30, 5400, 180, 980000.00, 15, 4.8, 'Berlin', 82.0, 420, 6700, 2100, 5, 2800, 22.1, 350000.00, 120000.00, '2023-12-05', 11);

INSERT INTO regional_event_statistics (region_code, event_type, year, total_events, total_participants, average_attendance, revenue_usd, sponsor_count, average_satisfaction, top_city, average_ticket_price, media_mentions, social_mentions, peak_day_attendance, longest_event_days, volunteer_hours, carbon_footprint_tons, local_business_impact, government_support_usd, report_generated, analyst_id)
VALUES ('AP', 'Expo', 2023, 22, 3300, 150, 650000.00, 9, 4.5, 'Tokyo', 68.0, 310, 4800, 1400, 6, 2100, 18.7, 270000.00, 90000.00, '2023-12-10', 13);

-- Marketplace vendor profiles
CREATE TABLE marketplace_vendor_profiles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    vendor_id INTEGER,
    vendor_name TEXT,
    registration_date DATE,
    country_code TEXT,
    total_products INTEGER,
    average_rating REAL,
    total_sales_usd REAL,
    active_listings INTEGER,
    pending_orders INTEGER,
    fulfilled_orders INTEGER,
    return_rate REAL,
    compliance_score INTEGER,
    support_tier TEXT,
    primary_category TEXT,
    secondary_category TEXT,
    marketing_spend_usd REAL,
    last_login DATE,
    account_status TEXT,
    preferred_payment_method TEXT,
    vat_number TEXT,
    tax_exempt INTEGER,
    notes TEXT
);

INSERT INTO marketplace_vendor_profiles (vendor_id, vendor_name, registration_date, country_code, total_products, average_rating, total_sales_usd, active_listings, pending_orders, fulfilled_orders, return_rate, compliance_score, support_tier, primary_category, secondary_category, marketing_spend_usd, last_login, account_status, preferred_payment_method, vat_number, tax_exempt, notes)
VALUES (301, 'ArcaneArts', '2020-04-15', 'US', 1250, 4.7, 850000.00, 1150, 45, 1100, 0.02, 92, 'Gold', 'Collectibles', 'Cards', 25000.00, '2023-09-20', 'Active', 'CreditCard', 'US123456789', 0, 'Top seller in Rare Cards');

INSERT INTO marketplace_vendor_profiles (vendor_id, vendor_name, registration_date, country_code, total_products, average_rating, total_sales_usd, active_listings, pending_orders, fulfilled_orders, return_rate, compliance_score, support_tier, primary_category, secondary_category, marketing_spend_usd, last_login, account_status, preferred_payment_method, vat_number, tax_exempt, notes)
VALUES (302, 'DeckDepot', '2019-11-02', 'GB', 980, 4.5, 620000.00, 920, 30, 880, 0.03, 88, 'Silver', 'Accessories', 'Storage', 18000.00, '2023-09-18', 'Active', 'PayPal', 'GB987654321', 1, 'Specializes in deck boxes');

INSERT INTO marketplace_vendor_profiles (vendor_id, vendor_name, registration_date, country_code, total_products, average_rating, total_sales_usd, active_listings, pending_orders, fulfilled_orders, return_rate, compliance_score, support_tier, primary_category, secondary_category, marketing_spend_usd, last_login, account_status, preferred_payment_method, vat_number, tax_exempt, notes)
VALUES (303, 'MetaMarket', '2021-06-20', 'CA', 2100, 4.2, 430000.00, 2000, 80, 1920, 0.05, 80, 'Bronze', 'Digital', 'Tokens', 12000.00, '2023-09-22', 'Active', 'BankTransfer', 'CA112233445', 0, 'Focus on digital collectibles');

-- Digital content curation
CREATE TABLE digital_content_curation (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    curator_id INTEGER,
    content_id INTEGER,
    content_type TEXT,
    title TEXT,
    description TEXT,
    tags TEXT,
    language TEXT,
    region TEXT,
    upload_date DATE,
    last_modified DATE,
    view_count INTEGER,
    like_count INTEGER,
    share_count INTEGER,
    rating REAL,
    is_featured INTEGER,
    featured_until DATE,
    source_platform TEXT,
    copyright_status TEXT,
    usage_rights TEXT,
    curation_notes TEXT,
    rating_category TEXT
);

INSERT INTO digital_content_curation (curator_id, content_id, content_type, title, description, tags, language, region, upload_date, last_modified, view_count, like_count, share_count, rating, is_featured, featured_until, source_platform, copyright_status, usage_rights, curation_notes, rating_category)
VALUES (41, 5001, 'Video', 'DeckTech Overview', 'Detailed deck tech analysis', 'deck,tech,analysis', 'English', 'NA', '2023-07-01', '2023-08-10', 15000, 1200, 300, 4.8, 1, '2023-12-31', 'YouTube', 'Licensed', 'Full', 'Reviewed for accuracy', 'High');

INSERT INTO digital_content_curation (curator_id, content_id, content_type, title, description, tags, language, region, upload_date, last_modified, view_count, like_count, share_count, rating, is_featured, featured_until, source_platform, copyright_status, usage_rights, curation_notes, rating_category)
VALUES (42, 5002, 'Article', 'Meta Game Theory', 'Exploring meta trends in competitive play', 'meta,game,theory', 'English', 'EU', '2023-06-15', '2023-07-20', 8000, 650, 120, 4.5, 0, NULL, 'Medium', 'CreativeCommons', 'Partial', 'Cited relevant sources', 'Medium');

INSERT INTO digital_content_curation (curator_id, content_id, content_type, title, description, tags, language, region, upload_date, last_modified, view_count, like_count, share_count, rating, is_featured, featured_until, source_platform, copyright_status, usage_rights, curation_notes, rating_category)
VALUES (43, 5003, 'Podcast', 'Champion Chat', 'Interviews with top players', 'podcast,interview,champion', 'English', 'AP', '2023-05-10', '2023-08-01', 5000, 400, 80, 4.6, 1, '2023-11-30', 'Spotify', 'Licensed', 'Full', 'Edited for clarity', 'High');

-- Game mechanics feedback
CREATE TABLE game_mechanics_feedback (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    mechanic_id INTEGER,
    mechanic_name TEXT,
    feedback_type TEXT,
    feedback_text TEXT,
    submitted_by INTEGER,
    submission_date DATE,
    severity_level INTEGER,
    impact_score REAL,
    suggested_change TEXT,
    status TEXT,
    reviewer_id INTEGER,
    review_date DATE,
    resolution TEXT,
    priority INTEGER,
    repeat_reports INTEGER,
    related_mechanic_id INTEGER,
    game_version TEXT,
    platform TEXT,
    demographics TEXT,
    upvotes INTEGER,
    downvotes INTEGER
);

INSERT INTO game_mechanics_feedback (mechanic_id, mechanic_name, feedback_type, feedback_text, submitted_by, submission_date, severity_level, impact_score, suggested_change, status, reviewer_id, review_date, resolution, priority, repeat_reports, related_mechanic_id, game_version, platform, demographics, upvotes, downvotes)
VALUES (11, 'Trample', 'Balance', 'Trample feels too strong on large creatures', 201, '2023-04-12', 3, 7.5, 'Reduce damage to 1 per excess power', 'Open', 301, NULL, NULL, 2, 4, NULL, '2.4.1', 'PC', 'All', 45, 2);

INSERT INTO game_mechanics_feedback (mechanic_id, mechanic_name, feedback_type, feedback_text, submitted_by, submission_date, severity_level, impact_score, suggested_change, status, reviewer_id, review_date, resolution, priority, repeat_reports, related_mechanic_id, game_version, platform, demographics, upvotes, downvotes)
VALUES (12, 'Flying', 'Clarity', 'Missing text about blocked creatures', 202, '2023-05-01', 2, 5.0, 'Add rule clarifying interaction with reach', 'In Review', 302, NULL, NULL, 1, 2, NULL, '2.5.0', 'Mobile', 'Casual', 30, 1);

INSERT INTO game_mechanics_feedback (mechanic_id, mechanic_name, feedback_type, feedback_text, submitted_by, submission_date, severity_level, impact_score, suggested_change, status, reviewer_id, review_date, resolution, priority, repeat_reports, related_mechanic_id, game_version, platform, demographics, upvotes, downvotes)
VALUES (13, 'Hexproof', 'Bug', 'Hexproof does not prevent targeted spells from your own color', 203, '2023-06-18', 4, 8.2, 'Adjust rule to include own-color spells', 'Resolved', 303, '2023-06-20', 'Rule updated', 1, 5, NULL, '2.5.2', 'Console', 'Competitive', 60, 3);

-- Player social trends
CREATE TABLE player_social_trends (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    platform TEXT,
    follower_count INTEGER,
    post_frequency_per_week REAL,
    avg_engagement_rate REAL,
    sentiment_score REAL,
    top_hashtags TEXT,
    peak_activity_hour INTEGER,
    recent_trend TEXT,
    analysis_date DATE,
    growth_rate_percent REAL,
    network_density REAL,
    influencer_score REAL,
    recent_collaboration TEXT,
    engagement_type TEXT,
    region TEXT,
    language TEXT,
    content_type_distribution TEXT,
    average_video_length_seconds INTEGER,
    story_views INTEGER,
    comments_per_post REAL
);

INSERT INTO player_social_trends (player_id, platform, follower_count, post_frequency_per_week, avg_engagement_rate, sentiment_score, top_hashtags, peak_activity_hour, recent_trend, analysis_date, growth_rate_percent, network_density, influencer_score, recent_collaboration, engagement_type, region, language, content_type_distribution, average_video_length_seconds, story_views, comments_per_post)
VALUES (401, 'Twitter', 15000, 3.5, 2.1, 0.78, 'mtg,deck,meta', 20, 'Deck share spikes', '2023-09-01', 12.5, 0.65, 85, 'CollabWithStreamerX', 'Posts', 'NA', 'English', 'text,video,images', 120, 5000, 4.2);

INSERT INTO player_social_trends (player_id, platform, follower_count, post_frequency_per_week, avg_engagement_rate, sentiment_score, top_hashtags, peak_activity_hour, recent_trend, analysis_date, growth_rate_percent, network_density, influencer_score, recent_collaboration, engagement_type, region, language, content_type_distribution, average_video_length_seconds, story_views, comments_per_post)
VALUES (402, 'YouTube', 85000, 1.2, 3.8, 0.85, 'mtghighlights,proplay', 18, 'Highlight reels rising', '2023-09-02', 18.0, 0.72, 92, 'GuestAppearanceY', 'Videos', 'EU', 'English', 'video,shorts', 300, 12000, 5.6);

INSERT INTO player_social_trends (player_id, platform, follower_count, post_frequency_per_week, avg_engagement_rate, sentiment_score, top_hashtags, peak_activity_hour, recent_trend, analysis_date, growth_rate_percent, network_density, influencer_score, recent_collaboration, engagement_type, region, language, content_type_distribution, average_video_length_seconds, story_views, comments_per_post)
VALUES (403, 'Instagram', 23000, 4.0, 1.9, 0.70, 'mtgart,fanart', 22, 'Art posts increase', '2023-09-03', 9.5, 0.58, 78, 'ArtCollabZ', 'Images', 'AP', 'Japanese', 'images,stories', 0, 3000, 2.1);

-- Tournament bracket templates
CREATE TABLE tournament_bracket_templates (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    template_name TEXT,
    sport TEXT,
    max_teams INTEGER,
    seeding_method TEXT,
    round_structure TEXT,
    bye_policy TEXT,
    double_elimination INTEGER,
    match_interval_minutes INTEGER,
    start_date DATE,
    end_date DATE,
    default_location TEXT,
    prize_distribution TEXT,
    sponsor_slots INTEGER,
    broadcast_slots INTEGER,
    description TEXT,
    creator_user_id INTEGER,
    created_at DATE,
    last_modified DATE,
    version TEXT,
    is_active INTEGER,
    tags TEXT
);

INSERT INTO tournament_bracket_templates (template_name, sport, max_teams, seeding_method, round_structure, bye_policy, double_elimination, match_interval_minutes, start_date, end_date, default_location, prize_distribution, sponsor_slots, broadcast_slots, description, creator_user_id, created_at, last_modified, version, is_active, tags)
VALUES ('Standard Single Elimination', 'Esports', 16, 'Random', 'Single', 'Fill', 0, 30, '2024-01-10', '2024-01-20', 'Online', 'Top4', 4, 2, 'Basic single elimination bracket', 101, '2023-08-01', '2023-08-15', '1.0', 1, 'single,standard');

INSERT INTO tournament_bracket_templates (template_name, sport, max_teams, seeding_method, round_structure, bye_policy, double_elimination, match_interval_minutes, start_date, end_date, default_location, prize_distribution, sponsor_slots, broadcast_slots, description, creator_user_id, created_at, last_modified, version, is_active, tags)
VALUES ('Double Elimination Pro', 'Esports', 32, 'Elo', 'Double', 'TopSeeds', 1, 45, '2024-03-05', '2024-03-25', 'LosAngeles Arena', 'Top8', 6, 4, 'Pro level double elimination with seeding', 102, '2023-09-10', '2023-09-20', '2.1', 1, 'double,pro');

INSERT INTO tournament_bracket_templates (template_name, sport, max_teams, seeding_method, round_structure, bye_policy, double_elimination, match_interval_minutes, start_date, end_date, default_location, prize_distribution, sponsor_slots, broadcast_slots, description, creator_user_id, created_at, last_modified, version, is_active, tags)
VALUES ('Group Stage to Knockout', 'Esports', 24, 'Group', 'GroupThenKnockout', 'GroupWinners', 0, 20, '2024-05-01', '2024-05-15', 'Online', 'Top2Groups', 5, 3, 'Initial group stage followed by knockout', 103, '2023-10-05', '2023-10-12', '1.3', 1, 'group,knockout');

-- Set design documents
CREATE TABLE set_design_documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    document_type TEXT,
    version TEXT,
    author_id INTEGER,
    created_date DATE,
    last_updated DATE,
    design_theme TEXT,
    key_mechanics TEXT,
    rarity_distribution TEXT,
    color_distribution TEXT,
    total_cards INTEGER,
    planned_release DATE,
    status TEXT,
    review_comments TEXT,
    approval_date DATE,
    approved_by INTEGER,
    revision_number INTEGER,
    attached_file_path TEXT,
    notes TEXT,
    change_log TEXT,
    related_set_code TEXT
);

INSERT INTO set_design_documents (set_code, document_type, version, author_id, created_date, last_updated, design_theme, key_mechanics, rarity_distribution, color_distribution, total_cards, planned_release, status, review_comments, approval_date, approved_by, revision_number, attached_file_path, notes, change_log, related_set_code)
VALUES ('KHM', 'DesignBrief', '1.0', 55, '2022-02-01', '2023-01-15', 'Mythic Adventure', 'Adventure,Transform', 'Common60,Uncommon25,Rare10,Mystery5', 'White30,Blue20,Black20,Red20,Green10', 150, '2023-04-28', 'Approved', 'All sections complete', '2023-01-20', 60, 2, '/docs/khm_design_v1.pdf', 'Initial version', 'Added Transform mechanic', 'STX');

INSERT INTO set_design_documents (set_code, document_type, version, author_id, created_date, last_updated, design_theme, key_mechanics, rarity_distribution, color_distribution, total_cards, planned_release, status, review_comments, approval_date, approved_by, revision_number, attached_file_path, notes, change_log, related_set_code)
VALUES ('MID', 'ArtGuide', '2.1', 58, '2022-06-10', '2023-02-05', 'Arcane Mysteries', 'Mystify,Invasion', 'Common55,Uncommon30,Rare12,Mythic3', 'White25,Blue25,Black25,Red15,Green10', 165, '2023-07-14', 'In Review', 'Need more concept art', NULL, NULL, 1, '/docs/mid_artguide_v2.pdf', 'Second revision', 'Added new artist list', 'ZNR');

INSERT INTO set_design_documents (set_code, document_type, version, author_id, created_date, last_updated, design_theme, key_mechanics, rarity_distribution, color_distribution, total_cards, planned_release, status, review_comments, approval_date, approved_by, revision_number, attached_file_path, notes, change_log, related_set_code)
VALUES ('VOW', 'MechanicSpec', '0.9', 62, '2022-09-20', '2023-03-12', 'Vow of Power', 'Vow,Revolt', 'Common50,Uncommon35,Rare13,Mystic2', 'White20,Blue20,Black20,Red20,Green20', 140, '2023-10-05', 'Draft', 'Awaiting balance testing', NULL, NULL, 0, '/docs/vow_mechanic_spec.pdf', 'Early draft', 'Initial spec document', 'NEO');