-- Player Hall of Fame
CREATE TABLE player_hall_of_fame (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    induction_year INTEGER,
    hall_category TEXT,
    points_total INTEGER,
    games_played INTEGER,
    win_rate REAL,
    region TEXT,
    title TEXT,
    bio_summary TEXT,
    image_url TEXT,
    social_handle TEXT,
    previous_rank INTEGER,
    achievements TEXT,
    endorsement_count INTEGER,
    sponsor_id INTEGER,
    hall_of_fame_note TEXT,
    record_last_season TEXT,
    primary_role TEXT,
    secondary_role TEXT,
    recognition_type TEXT
);

INSERT INTO player_hall_of_fame (id, player_id, induction_year, hall_category, points_total, games_played, win_rate, region, title, bio_summary, image_url, social_handle, previous_rank, achievements, endorsement_count, sponsor_id, hall_of_fame_note, record_last_season, primary_role, secondary_role, recognition_type) VALUES
(1, 101, 2022, "Legendary", 3500, 1200, 0.75, "NA", "Champion", "Top player of season", "http://example.com/img1.png", "@player101", 5, "Worlds Winner", 12, 201, "Inducted after victory", "2021-12", "Aggro", "Control", "Lifetime"),
(2, 102, 2021, "Hall", 2800, 950, 0.68, "EU", "Master", "Consistent performer", "http://example.com/img2.png", "@player102", 8, "Regional Champion", 7, 202, "Honored for contributions", "2020-11", "Midrange", "Combo", "Seasonal"),
(3, 103, 2020, "Hall", 3100, 1100, 0.72, "AS", "Veteran", "Veteran of many tours", "http://example.com/img3.png", "@player103", 3, "Multiple Top8", 9, 203, "Special mention", "2019-10", "Control", "Aggro", "Lifetime");

-- Virtual Event Sponsorships
CREATE TABLE virtual_event_sponsorships (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    event_id INTEGER,
    sponsor_id INTEGER,
    sponsorship_tier TEXT,
    start_date DATE,
    end_date DATE,
    contract_value REAL,
    branding_assets_url TEXT,
    banner_image TEXT,
    ad_spot_count INTEGER,
    custom_message TEXT,
    audience_target TEXT,
    impressions_guaranteed INTEGER,
    clicks_expected INTEGER,
    activation_status TEXT,
    renewal_option TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    payment_status TEXT,
    compliance_check TEXT
);

INSERT INTO virtual_event_sponsorships (id, event_id, sponsor_id, sponsorship_tier, start_date, end_date, contract_value, branding_assets_url, banner_image, ad_spot_count, custom_message, audience_target, impressions_guaranteed, clicks_expected, activation_status, renewal_option, notes, created_at, updated_at, payment_status, compliance_check) VALUES
(1, 301, 401, "Platinum", "2023-04-01", "2023-04-30", 15000.00, "http://example.com/brand1.zip", "http://example.com/banner1.png", 20, "Welcome to our world", "All", 500000, 25000, "Active", "Yes", "First sponsorship", "2023-03-15", "2023-03-20", "Paid", "Passed"),
(2, 302, 402, "Gold", "2023-05-10", "2023-05-20", 8000.00, "http://example.com/brand2.zip", "http://example.com/banner2.png", 10, "Enjoy the event", "Players", 200000, 12000, "Pending", "No", "Second sponsorship", "2023-04-01", "2023-04-05", "Pending", "Under Review"),
(3, 303, 403, "Silver", "2023-06-15", "2023-06-25", 4000.00, "http://example.com/brand3.zip", "http://example.com/banner3.png", 5, "Join us now", "Fans", 100000, 5000, "Active", "Yes", "Third sponsorship", "2023-05-20", "2023-05-22", "Paid", "Passed");

-- Arcane Artifact Inventory
CREATE TABLE arcane_artifact_inventory (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    artifact_code TEXT,
    artifact_name TEXT,
    rarity TEXT,
    origin_set TEXT,
    material TEXT,
    power_level INTEGER,
    cooldown_seconds INTEGER,
    activation_charge REAL,
    is_unique INTEGER,
    last_discovered DATE,
    current_owner_id INTEGER,
    location_id INTEGER,
    acquisition_method TEXT,
    valuation_usd REAL,
    enchantments TEXT,
    lore_summary TEXT,
    image_ref TEXT,
    legal_status TEXT,
    maintenance_cycle_days INTEGER,
    last_maintained DATE,
    is_active INTEGER
);

INSERT INTO arcane_artifact_inventory (id, artifact_code, artifact_name, rarity, origin_set, material, power_level, cooldown_seconds, activation_charge, is_unique, last_discovered, current_owner_id, location_id, acquisition_method, valuation_usd, enchantments, lore_summary, image_ref, legal_status, maintenance_cycle_days, last_maintained, is_active) VALUES
(1, "AF001", "Flameheart Orb", "Mythic", "Eternal Dawn", "Obsidian", 95, 3600, 12.5, 1, "2022-11-05", 101, 12, "Quest Reward", 250000.00, "Fire Boost, Immolation", "Forged in the first sunrise", "http://example.com/artifact1.png", "Licensed", 30, "2023-01-10", 1),
(2, "AF002", "Aqua Veil Mirror", "Rare", "Oceanic Depths", "Pearl", 70, 1800, 8.0, 0, "2021-07-18", 102, 13, "Trade", 120000.00, "Water Shield", "Mirrored the tides of ancient seas", "http://example.com/artifact2.png", "Public Domain", 45, "2022-12-01", 1),
(3, "AF003", "Chrono Shard", "Epic", "Time's Edge", "Crystal", 85, 5400, 15.0, 1, "2020-02-22", 103, 14, "Discovery", 200000.00, "Time Skip", "Fragment of a broken hourglass", "http://example.com/artifact3.png", "Restricted", 60, "2023-02-15", 0);

-- Gameplay Test Sessions
CREATE TABLE gameplay_test_sessions (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    session_uuid TEXT,
    test_name TEXT,
    tester_id INTEGER,
    platform TEXT,
    os_version TEXT,
    hardware_spec TEXT,
    start_timestamp DATETIME,
    end_timestamp DATETIME,
    bugs_reported INTEGER,
    features_tested TEXT,
    result_score REAL,
    notes TEXT,
    is_successful INTEGER,
    test_phase TEXT,
    build_version TEXT,
    network_latency_ms INTEGER,
    memory_usage_mb INTEGER,
    cpu_usage_percent REAL,
    gpu_usage_percent REAL,
    test_environment TEXT,
    regression_flag INTEGER
);

INSERT INTO gameplay_test_sessions (id, session_uuid, test_name, tester_id, platform, os_version, hardware_spec, start_timestamp, end_timestamp, bugs_reported, features_tested, result_score, notes, is_successful, test_phase, build_version, network_latency_ms, memory_usage_mb, cpu_usage_percent, gpu_usage_percent, test_environment, regression_flag) VALUES
(1, "TS001", "Mana Curve Balance", 201, "PC", "Windows10", "i7-9700K/16GB/GTX1080", "2023-03-01 10:00:00", "2023-03-01 12:00:00", 2, "Curve, Card Draw", 87.5, "Minor UI lag", 1, "Beta", "v1.2.3", 45, 2048, 55.2, 68.0, "Lab", 0),
(2, "TS002", "Network Sync Test", 202, "Console", "PS5OS", "Custom", "2023-03-02 14:30:00", "2023-03-02 15:45:00", 0, "Lag Compensation", 92.0, "All good", 1, "Alpha", "v1.2.4", 30, 1024, 48.5, 50.3, "Staging", 0),
(3, "TS003", "AI Opponent Scaling", 203, "PC", "Linux5.4", "Ryzen5/8GB/RX570", "2023-03-03 09:15:00", "2023-03-03 10:45:00", 5, "Difficulty Levels", 78.0, "AI too strong at level 3", 0, "Beta", "v1.2.5", 60, 3072, 70.1, 75.4, "Lab", 1);

-- Community Translation Projects
CREATE TABLE community_translation_projects (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    project_code TEXT,
    language TEXT,
    source_text_id INTEGER,
    target_text_id INTEGER,
    translator_id INTEGER,
    start_date DATE,
    due_date DATE,
    status TEXT,
    word_count INTEGER,
    progress_percent INTEGER,
    review_status TEXT,
    approved_by INTEGER,
    revision_number INTEGER,
    notes TEXT,
    glossary_url TEXT,
    tool_version TEXT,
    quality_score REAL,
    payment_amount REAL,
    payment_status TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO community_translation_projects (id, project_code, language, source_text_id, target_text_id, translator_id, start_date, due_date, status, word_count, progress_percent, review_status, approved_by, revision_number, notes, glossary_url, tool_version, quality_score, payment_amount, payment_status, created_at, updated_at) VALUES
(1, "TP001", "es", 1001, 2001, 301, "2023-02-01", "2023-02-28", "InProgress", 15000, 45, "Pending", NULL, 1, "Initial phase", "http://example.com/glossary_es.json", "v2.5", 87.5, 500.00, "Pending", "2023-01-20", "2023-02-10"),
(2, "TP002", "de", 1002, 2002, 302, "2023-01-15", "2023-02-15", "Completed", 12000, 100, "Approved", 401, 2, "Final review done", "http://example.com/glossary_de.json", "v2.5", 92.0, 450.00, "Paid", "2023-01-01", "2023-02-16"),
(3, "TP003", "fr", 1003, 2003, 303, "2023-03-05", "2023-04-05", "Pending", 18000, 10, "NotStarted", NULL, 0, "Awaiting translator", "http://example.com/glossary_fr.json", "v2.5", 0.0, 600.00, "Pending", "2023-02-25", "2023-02-25");

-- Digital Collectible Series
CREATE TABLE digital_collectible_series (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    series_name TEXT,
    series_code TEXT,
    launch_date DATE,
    total_items INTEGER,
    theme TEXT,
    rarity_distribution TEXT,
    creator_team TEXT,
    official_url TEXT,
    description TEXT,
    banner_image TEXT,
    social_media_tag TEXT,
    promotional_video_url TEXT,
    average_price_usd REAL,
    market_cap_usd REAL,
    active_status TEXT,
    last_update DATE,
    licensing_info TEXT,
    blockchain_id TEXT,
    contract_address TEXT,
    metadata_schema_version TEXT,
    release_notes TEXT
);

INSERT INTO digital_collectible_series (id, series_name, series_code, launch_date, total_items, theme, rarity_distribution, creator_team, official_url, description, banner_image, social_media_tag, promotional_video_url, average_price_usd, market_cap_usd, active_status, last_update, licensing_info, blockchain_id, contract_address, metadata_schema_version, release_notes) VALUES
(1, "Ethereal Realms", "ER01", "2023-01-10", 250, "Fantasy", "Common:70,Rare:20,Mythic:10", "Arcane Studios", "http://example.com/er", "A collection of mystical landscapes.", "http://example.com/er_banner.png", "#EtherealRealms", "http://example.com/er_video.mp4", 45.75, 11437.50, "Active", "2023-03-01", "Standard License", "ETH", "0xabc123def456", "v1.0", "Initial launch with 250 items."),
(2, "Cyber Nexus", "CN02", "2023-02-15", 180, "SciFi", "Common:80,Rare:15,Legendary:5", "FutureForge", "http://example.com/cn", "Futuristic cyberpunk avatars.", "http://example.com/cn_banner.png", "#CyberNexus", "http://example.com/cn_video.mp4", 62.30, 11214.00, "Active", "2023-03-10", "Extended License", "SOL", "0xdef789abc012", "v1.1", "Added 20 new items in patch 1.1."),
(3, "Ancient Empires", "AE03", "2022-12-01", 300, "Historical", "Common:60,Rare:30,Mythic:10", "ChronoCraft", "http://example.com/ae", "Artifacts from lost civilizations.", "http://example.com/ae_banner.png", "#AncientEmpires", "http://example.com/ae_video.mp4", 38.20, 11460.00, "Retired", "2023-02-20", "Historical License", "ADA", "0x123456789abc", "v0.9", "Series retired after 2023.");

-- Fantasy World Political Entities
CREATE TABLE fantasy_world_political_entities (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    entity_name TEXT,
    entity_type TEXT,
    capital_city TEXT,
    ruler_name TEXT,
    established_year INTEGER,
    population_estimate INTEGER,
    dominant_culture TEXT,
    official_language TEXT,
    government_form TEXT,
    flag_image_url TEXT,
    heraldry_description TEXT,
    alliances TEXT,
    rivalries TEXT,
    tax_rate_percent REAL,
    military_strength INTEGER,
    magic_affinity TEXT,
    economic_focus TEXT,
    diplomatic_status TEXT,
    last_war_year INTEGER,
    notes TEXT,
    region_code TEXT
);

INSERT INTO fantasy_world_political_entities (id, entity_name, entity_type, capital_city, ruler_name, established_year, population_estimate, dominant_culture, official_language, government_form, flag_image_url, heraldry_description, alliances, rivalries, tax_rate_percent, military_strength, magic_affinity, economic_focus, diplomatic_status, last_war_year, notes, region_code) VALUES
(1, "Kingdom of Aerilon", "Monarchy", "Aeris", "Queen Lyria", 842, 3400000, "Aerilan", "Aerilese", "Absolute Monarchy", "http://example.com/flags/aerilon.png", "Silver eagle on blue field", "Alliance of Dawn, Trade Pact 7", "Shadow Confederacy", 12.5, 8500, "High", "Trade and Commerce", "Friendly", 1275, "Renowned for skyships", "NW"),
(2, "Republic of Vordun", "Republic", "Vordun City", "Chancellor Marek", 1025, 2100000, "Vordunite", "Vordunese", "Parliamentary Republic", "http://example.com/flags/vordun.png", "Golden sun over green hills", "Northern Coalition", "Eastern League", 10.0, 6200, "Medium", "Mining and Metallurgy", "Neutral", 1300, "Strong mining guilds", "NE"),
(3, "The Crimson Dominion", "Empire", "Crimson Keep", "Emperor Dravik", 665, 5000000, "Crimsonian", "Crimsonic", "Imperial Hierarchy", "http://example.com/flags/crimson.png", "Red dragon on black", "Southern Alliance", "Northern Confederacy", 15.0, 15000, "Low", "Warcraft and Expansion", "Hostile", 1320, "Aggressive expansionist policies", "S");

-- Streaming Ad Performance Metrics
CREATE TABLE streaming_ad_performance_metrics (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    ad_id TEXT,
    stream_id TEXT,
    platform TEXT,
    start_time DATETIME,
    end_time DATETIME,
    impressions INTEGER,
    clicks INTEGER,
    view_rate_percent REAL,
    click_through_rate_percent REAL,
    revenue_usd REAL,
    audience_segment TEXT,
    ad_format TEXT,
    creative_version TEXT,
    frequency_cap INTEGER,
    ad_position TEXT,
    skip_rate_percent REAL,
    average_watch_time_sec REAL,
    conversion_events INTEGER,
    conversion_value_usd REAL,
    recorded_at DATETIME
);

INSERT INTO streaming_ad_performance_metrics (id, ad_id, stream_id, platform, start_time, end_time, impressions, clicks, view_rate_percent, click_through_rate_percent, revenue_usd, audience_segment, ad_format, creative_version, frequency_cap, ad_position, skip_rate_percent, average_watch_time_sec, conversion_events, conversion_value_usd, recorded_at) VALUES
(1, "AD001", "ST1001", "Twitch", "2023-03-05 13:00:00", "2023-03-05 13:00:30", 15000, 450, 95.0, 3.0, 120.50, "All", "PreRoll", "v1", 2, "Top", 5.0, 25.0, 30, 250.00, "2023-03-05 13:01:00"),
(2, "AD002", "ST1002", "YouTube", "2023-03-06 18:15:00", "2023-03-06 18:15:45", 22000, 660, 92.0, 3.0, 180.75, "Gamers", "MidRoll", "v2", 3, "Mid", 2.5, 30.0, 45, 400.00, "2023-03-06 18:16:00"),
(3, "AD003", "ST1003", "Facebook", "2023-03-07 20:00:00", "2023-03-07 20:00:20", 10000, 150, 88.0, 1.5, 75.00, "Casual", "PostRoll", "v1", 1, "Bottom", 8.0, 20.0, 10, 80.00, "2023-03-07 20:01:00");

-- Deck Build Challenge Results
CREATE TABLE deck_build_challenge_results (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    challenge_id INTEGER,
    player_id INTEGER,
    deck_uuid TEXT,
    build_timestamp DATETIME,
    win_rate_percent REAL,
    average_mana_curve REAL,
    synergy_score INTEGER,
    variance_score INTEGER,
    main_strategy TEXT,
    sideboard_count INTEGER,
    cards_used_count INTEGER,
    average_card_cost REAL,
    compliance_flags TEXT,
    notes TEXT,
    ranking_position INTEGER,
    prize_awarded TEXT,
    reward_points INTEGER,
    feedback_summary TEXT,
    reviewer_id INTEGER,
    approved_status INTEGER
);

INSERT INTO deck_build_challenge_results (id, challenge_id, player_id, deck_uuid, build_timestamp, win_rate_percent, average_mana_curve, synergy_score, variance_score, main_strategy, sideboard_count, cards_used_count, average_card_cost, compliance_flags, notes, ranking_position, prize_awarded, reward_points, feedback_summary, reviewer_id, approved_status) VALUES
(1, 501, 101, "DCK001", "2023-02-20 14:30:00", 68.5, 3.2, 85, 12, "Aggro", 15, 60, 2.5, "None", "Solid performance", 3, "Gold Medal", 1500, "Well balanced", 301, 1),
(2, 502, 102, "DCK002", "2023-02-22 16:45:00", 72.0, 2.8, 90, 10, "Control", 12, 58, 2.8, "None", "Excellent control", 1, "Platinum Trophy", 2000, "Outstanding", 302, 1),
(3, 503, 103, "DCK003", "2023-02-25 11:15:00", 55.0, 3.5, 70, 15, "Combo", 20, 62, 3.0, "Minor", "Needs tuning", 7, "Bronze Badge", 800, "Average", 303, 0);

-- Tournament Seating Plans
CREATE TABLE tournament_seating_plans (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    venue_id INTEGER,
    section_name TEXT,
    row_label TEXT,
    seat_number INTEGER,
    seat_type TEXT,
    is_accessible INTEGER,
    price_tier TEXT,
    is_reserved INTEGER,
    reserved_for_player_id INTEGER,
    reserved_for_team TEXT,
    reservation_timestamp DATETIME,
    view_quality_rating INTEGER,
    proximity_to_stage INTEGER,
    lighting_level TEXT,
    acoustic_rating INTEGER,
    temperature_setting TEXT,
    cleaning_schedule TEXT,
    last_modified DATETIME,
    notes TEXT
);

INSERT INTO tournament_seating_plans (id, tournament_id, venue_id, section_name, row_label, seat_number, seat_type, is_accessible, price_tier, is_reserved, reserved_for_player_id, reserved_for_team, reservation_timestamp, view_quality_rating, proximity_to_stage, lighting_level, acoustic_rating, temperature_setting, cleaning_schedule, last_modified, notes) VALUES
(1, 601, 21, "Alpha", "A", 12, "Standard", 0, "Gold", 1, 101, "TeamAlpha", "2023-03-01 09:00:00", 9, 5, "Bright", 8, "22C", "Daily", "2023-03-01 08:00:00", "Near mainstage"),
(2, 602, 22, "Beta", "B", 24, "Premium", 1, "Platinum", 0, NULL, NULL, NULL, 10, 2, "Dim", 9, "21C", "Weekly", "2023-03-02 07:45:00", "VIP area"),
(3, 603, 23, "Gamma", "C", 5, "Economy", 0, "Silver", 1, 103, "TeamGamma", "2023-03-03 10:30:00", 7, 8, "Medium", 7, "23C", "Biweekly", "2023-03-03 09:50:00", "Standard seating");