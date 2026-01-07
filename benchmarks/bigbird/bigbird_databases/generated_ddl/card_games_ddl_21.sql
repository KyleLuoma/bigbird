-- Esports teams information
CREATE TABLE esports_teams (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    tag TEXT,
    foundation_year INTEGER,
    region TEXT,
    coach_name TEXT,
    manager_name TEXT,
    sponsor_primary TEXT,
    sponsor_secondary TEXT,
    home_city TEXT,
    arena_name TEXT,
    arena_capacity INTEGER,
    website_url TEXT,
    twitter_handle TEXT,
    instagram_handle TEXT,
    logo_asset_id INTEGER,
    total_players INTEGER,
    championships_won INTEGER,
    world_ranking INTEGER,
    active_status INTEGER,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO esports_teams (id, name, tag, foundation_year, region, coach_name, manager_name, sponsor_primary, sponsor_secondary, home_city, arena_name, arena_capacity, website_url, twitter_handle, instagram_handle, logo_asset_id, total_players, championships_won, world_ranking, active_status, created_at, updated_at) VALUES (1, 'Arcane Warriors', 'AW', 2015, 'NA', 'John Doe', 'Jane Smith', 'TechCorp', 'GameFuel', 'Los Angeles', 'Warrior Arena', 8000, 'http://arcanewarriors.com', '@ArcaneWarriors', '@ArcWarriors', 101, 5, 2, 12, 1, '2023-01-01', '2023-01-01');
INSERT INTO esports_teams (id, name, tag, foundation_year, region, coach_name, manager_name, sponsor_primary, sponsor_secondary, home_city, arena_name, arena_capacity, website_url, twitter_handle, instagram_handle, logo_asset_id, total_players, championships_won, world_ranking, active_status, created_at, updated_at) VALUES (2, 'Mystic Dragons', 'MD', 2018, 'EU', 'Liam Wong', 'Olivia Brown', 'DragonTech', 'PixelBoost', 'Berlin', 'Dragon Dome', 6500, 'http://mysticdragons.eu', '@MysticDragons', '@MysticDrgn', 102, 6, 1, 8, 1, '2023-02-15', '2023-02-15');
INSERT INTO esports_teams (id, name, tag, foundation_year, region, coach_name, manager_name, sponsor_primary, sponsor_secondary, home_city, arena_name, arena_capacity, website_url, twitter_handle, instagram_handle, logo_asset_id, total_players, championships_won, world_ranking, active_status, created_at, updated_at) VALUES (3, 'Solar Titans', 'ST', 2020, 'APAC', 'Kenji Tanaka', 'Mariko Lee', 'SolarEnergy', 'NovaGames', 'Tokyo', 'Titan Hall', 9000, 'http://solartitans.jp', '@SolarTitans', '@SolarTit', 103, 4, 0, 24, 1, '2023-03-10', '2023-03-10');

-- Broadcast slot scheduling
CREATE TABLE broadcast_slots (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_code TEXT,
    day_number INTEGER,
    start_time TEXT,
    end_time TEXT,
    channel_name TEXT,
    stream_url TEXT,
    producer_name TEXT,
    commentator_primary TEXT,
    commentator_secondary TEXT,
    graphics_package TEXT,
    sponsor_overlay TEXT,
    language TEXT,
    rating INTEGER,
    is_live INTEGER,
    viewer_peak INTEGER,
    viewer_average INTEGER,
    recordings_path TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT
);

INSERT INTO broadcast_slots (id, tournament_code, day_number, start_time, end_time, channel_name, stream_url, producer_name, commentator_primary, commentator_secondary, graphics_package, sponsor_overlay, language, rating, is_live, viewer_peak, viewer_average, recordings_path, created_at, updated_at, notes) VALUES (1, 'MTG2023', 1, '12:00', '14:00', 'MagicLive', 'http://stream.magiclive.com/mtg2023/d1', 'Alice Green', 'Bob White', 'Carol Black', 'StandardFX', 'TechCorp', 'EN', 5, 1, 120000, 85000, '/recordings/mtg2023_day1.mov', '2023-04-01', '2023-04-01', 'Opening day main stage');
INSERT INTO broadcast_slots (id, tournament_code, day_number, start_time, end_time, channel_name, stream_url, producer_name, commentator_primary, commentator_secondary, graphics_package, sponsor_overlay, language, rating, is_live, viewer_peak, viewer_average, recordings_path, created_at, updated_at, notes) VALUES (2, 'MTG2023', 2, '15:00', '17:00', 'MagicLive', 'http://stream.magiclive.com/mtg2023/d2', 'David Gray', 'Eve Silver', 'Frank Gold', 'DynamicFX', 'GameFuel', 'EN', 4, 1, 95000, 60000, '/recordings/mtg2023_day2.mov', '2023-04-02', '2023-04-02', 'Quarterfinals');
INSERT INTO broadcast_slots (id, tournament_code, day_number, start_time, end_time, channel_name, stream_url, producer_name, commentator_primary, commentator_secondary, graphics_package, sponsor_overlay, language, rating, is_live, viewer_peak, viewer_average, recordings_path, created_at, updated_at, notes) VALUES (3, 'MTG2023', 3, '18:00', '20:00', 'MagicLive', 'http://stream.magiclive.com/mtg2023/d3', 'Grace Blue', 'Hank Purple', 'Ivy Orange', 'CinematicFX', 'NovaGames', 'EN', 5, 1, 130000, 95000, '/recordings/mtg2023_day3.mov', '2023-04-03', '2023-04-03', 'Finals');

-- Digital asset marketplace listings
CREATE TABLE digital_asset_marketplace (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_uuid TEXT,
    asset_type TEXT,
    creator_user_id INTEGER,
    owner_user_id INTEGER,
    mint_date TEXT,
    blockchain TEXT,
    token_id TEXT,
    contract_address TEXT,
    metadata_uri TEXT,
    price_usd REAL,
    last_sale_usd REAL,
    sale_timestamp TEXT,
    is_listed INTEGER,
    listing_price_usd REAL,
    royalty_percentage REAL,
    description TEXT,
    tags TEXT,
    file_hash TEXT,
    file_size_bytes INTEGER,
    resolution TEXT,
    format TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO digital_asset_marketplace (id, asset_uuid, asset_type, creator_user_id, owner_user_id, mint_date, blockchain, token_id, contract_address, metadata_uri, price_usd, last_sale_usd, sale_timestamp, is_listed, listing_price_usd, royalty_percentage, description, tags, file_hash, file_size_bytes, resolution, format, created_at, updated_at) VALUES (1, 'uuid-asset-001', 'artwork', 10, 20, '2023-01-15', 'Ethereum', '1001', '0xABCDEF1234567890', 'http://metadata.io/asset001.json', 250.00, 300.00, '2023-02-10', 1, 275.00, 5.0, 'Limited edition card art', 'art,card,limited', 'hash001', 2048000, '1920x1080', 'png', '2023-01-15', '2023-02-10');
INSERT INTO digital_asset_marketplace (id, asset_uuid, asset_type, creator_user_id, owner_user_id, mint_date, blockchain, token_id, contract_address, metadata_uri, price_usd, last_sale_usd, sale_timestamp, is_listed, listing_price_usd, royalty_percentage, description, tags, file_hash, file_size_bytes, resolution, format, created_at, updated_at) VALUES (2, 'uuid-asset-002', 'collectible', 11, 21, '2023-02-01', 'Solana', '2002', '0x1234567890ABCDEF', 'http://metadata.io/asset002.json', 150.00, 0.00, NULL, 1, 150.00, 3.0, 'Seasonal digital card', 'collectible,seasonal', 'hash002', 1024000, '1024x1024', 'jpg', '2023-02-01', '2023-02-01');
INSERT INTO digital_asset_marketplace (id, asset_uuid, asset_type, creator_user_id, owner_user_id, mint_date, blockchain, token_id, contract_address, metadata_uri, price_usd, last_sale_usd, sale_timestamp, is_listed, listing_price_usd, royalty_percentage, description, tags, file_hash, file_size_bytes, resolution, format, created_at, updated_at) VALUES (3, 'uuid-asset-003', 'music', 12, 22, '2023-03-05', 'Polygon', '3003', '0xFEDCBA0987654321', 'http://metadata.io/asset003.json', 75.00, 80.00, '2023-04-01', 0, NULL, 2.5, 'Background track for tournaments', 'music,background', 'hash003', 5120000, 'N/A', 'mp3', '2023-03-05', '2023-04-01');

-- Community challenge definitions
CREATE TABLE community_challenges (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    challenge_name TEXT,
    description TEXT,
    start_date TEXT,
    end_date TEXT,
    reward_type TEXT,
    reward_value REAL,
    max_participants INTEGER,
    current_participants INTEGER,
    eligibility_criteria TEXT,
    leaderboard_type TEXT,
    tiered_rewards TEXT,
    is_active INTEGER,
    created_by_user_id INTEGER,
    created_at TEXT,
    updated_at TEXT,
    icon_asset_id INTEGER,
    theme TEXT,
    difficulty_level TEXT,
    total_submissions INTEGER,
    approval_status TEXT
);

INSERT INTO community_challenges (id, challenge_name, description, start_date, end_date, reward_type, reward_value, max_participants, current_participants, eligibility_criteria, leaderboard_type, tiered_rewards, is_active, created_by_user_id, created_at, updated_at, icon_asset_id, theme, difficulty_level, total_submissions, approval_status) VALUES (1, 'Deck Building Blitz', 'Create the most innovative mono-red deck', '2023-05-01', '2023-05-15', 'cash', 500.00, 200, 57, 'Registered players only', 'standard', 'top5', 1, 100, '2023-04-20', '2023-04-20', 201, 'fire', 'hard', 45, 'pending');
INSERT INTO community_challenges (id, challenge_name, description, start_date, end_date, reward_type, reward_value, max_participants, current_participants, eligibility_criteria, leaderboard_type, tiered_rewards, is_active, created_by_user_id, created_at, updated_at, icon_asset_id, theme, difficulty_level, total_submissions, approval_status) VALUES (2, 'Artwork Showcase', 'Submit original artwork inspired by the game', '2023-06-01', '2023-06-30', 'gift', 0.00, 1000, 312, 'Open to all', 'votes', 'top10', 1, 101, '2023-05-15', '2023-05-15', 202, 'dreams', 'medium', 180, 'approved');
INSERT INTO community_challenges (id, challenge_name, description, start_date, end_date, reward_type, reward_value, max_participants, current_participants, eligibility_criteria, leaderboard_type, tiered_rewards, is_active, created_by_user_id, created_at, updated_at, icon_asset_id, theme, difficulty_level, total_submissions, approval_status) VALUES (3, 'Speed Run Tournament', 'Finish the draft phase in under 5 minutes', '2023-07-10', '2023-07-20', 'tournament_entry', 0.00, 500, 142, 'Professional tier only', 'time', 'none', 0, 102, '2023-06-30', '2023-06-30', 203, 'speed', 'hard', 98, 'rejected');

-- Card variant inventory tracking
CREATE TABLE card_variant_inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    card_uuid TEXT,
    variant_type TEXT,
    foil_flag INTEGER,
    signed_flag INTEGER,
    promotional_flag INTEGER,
    artwork_id INTEGER,
    artist_name TEXT,
    release_set_code TEXT,
    rarity TEXT,
    collector_number TEXT,
    price_usd REAL,
    stock_quantity INTEGER,
    warehouse_location TEXT,
    condition_grade TEXT,
    authenticated_by TEXT,
    authentication_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    supplier_id INTEGER,
    batch_number TEXT
);

INSERT INTO card_variant_inventory (id, card_uuid, variant_type, foil_flag, signed_flag, promotional_flag, artwork_id, artist_name, release_set_code, rarity, collector_number, price_usd, stock_quantity, warehouse_location, condition_grade, authenticated_by, authentication_date, notes, created_at, updated_at, supplier_id, batch_number) VALUES (1, 'uuid-card-001', 'Standard', 0, 0, 0, 301, 'Liam Wong', 'M21', 'Rare', '123', 45.00, 150, 'WH1', 'NM', 'AuthCo', '2023-01-05', 'First batch', '2023-01-01', '2023-01-01', 501, 'B001');
INSERT INTO card_variant_inventory (id, card_uuid, variant_type, foil_flag, signed_flag, promotional_flag, artwork_id, artist_name, release_set_code, rarity, collector_number, price_usd, stock_quantity, warehouse_location, condition_grade, authenticated_by, authentication_date, notes, created_at, updated_at, supplier_id, batch_number) VALUES (2, 'uuid-card-002', 'Foil', 1, 0, 0, 302, 'Olivia Brown', 'KHM', 'Mythic', '045', 120.00, 75, 'WH2', 'EX', 'AuthCo', '2023-02-10', 'Limited foil run', '2023-02-01', '2023-02-01', 502, 'B002');
INSERT INTO card_variant_inventory (id, card_uuid, variant_type, foil_flag, signed_flag, promotional_flag, artwork_id, artist_name, release_set_code, rarity, collector_number, price_usd, stock_quantity, warehouse_location, condition_grade, authenticated_by, authentication_date, notes, created_at, updated_at, supplier_id, batch_number) VALUES (3, 'uuid-card-003', 'Signed Promo', 0, 1, 1, 303, 'Kenji Tanaka', 'THB', 'Uncommon', '078', 85.00, 30, 'WH3', 'LP', 'AuthCo', '2023-03-20', 'Signed by artist', '2023-03-15', '2023-03-15', 503, 'B003');

-- Set release milestones tracking
CREATE TABLE set_release_milestones (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    milestone_name TEXT,
    milestone_date TEXT,
    description TEXT,
    is_major INTEGER,
    planned_by_user_id INTEGER,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    milestone_order INTEGER,
    related_events TEXT,
    target_region TEXT,
    expected_sales INTEGER,
    marketing_budget_usd REAL,
    actual_sales INTEGER,
    variance_percentage REAL,
    risk_level TEXT,
    approval_status TEXT,
    reviewer_user_id INTEGER,
    review_date TEXT
);

INSERT INTO set_release_milestones (id, set_code, milestone_name, milestone_date, description, is_major, planned_by_user_id, created_at, updated_at, notes, milestone_order, related_events, target_region, expected_sales, marketing_budget_usd, actual_sales, variance_percentage, risk_level, approval_status, reviewer_user_id, review_date) VALUES (1, 'M21', 'Pre‑release Announcement', '2023-03-01', 'Official teaser release', 1, 200, '2023-02-20', '2023-02-20', '', 1, 'Social Media Blast', 'Global', 500000, 75000.00, 480000, -4.0, 'Medium', 'approved', 300, '2023-02-25');
INSERT INTO set_release_milestones (id, set_code, milestone_name, milestone_date, description, is_major, planned_by_user_id, created_at, updated_at, notes, milestone_order, related_events, target_region, expected_sales, marketing_budget_usd, actual_sales, variance_percentage, risk_level, approval_status, reviewer_user_id, review_date) VALUES (2, 'M21', 'Booster Print Start', '2023-04-10', 'Begin printing boosters', 1, 201, '2023-03-15', '2023-03-15', '', 2, 'Printing Facility', 'Asia', 400000, 120000.00, 410000, 2.5, 'Low', 'approved', 301, '2023-04-01');
INSERT INTO set_release_milestones (id, set_code, milestone_name, milestone_date, description, is_major, planned_by_user_id, created_at, updated_at, notes, milestone_order, related_events, target_region, expected_sales, marketing_budget_usd, actual_sales, variance_percentage, risk_level, approval_status, reviewer_user_id, review_date) VALUES (3, 'M21', 'Release Day', '2023-05-05', 'Set becomes available in stores', 1, 202, '2023-04-20', '2023-04-20', '', 3, 'Launch Party', 'North America', 600000, 200000.00, 590000, -1.7, 'Medium', 'pending', 302, '2023-05-01');

-- Player training session logs
CREATE TABLE player_training_sessions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    session_type TEXT,
    trainer_name TEXT,
    start_timestamp TEXT,
    end_timestamp TEXT,
    focus_area TEXT,
    difficulty_rating INTEGER,
    calories_burned INTEGER,
    heart_rate_avg INTEGER,
    notes TEXT,
    location TEXT,
    equipment_used TEXT,
    video_recording_path TEXT,
    feedback_score REAL,
    created_at TEXT,
    updated_at TEXT,
    session_label TEXT,
    virtual_flag INTEGER,
    platform TEXT,
    sponsor_id INTEGER
);

INSERT INTO player_training_sessions (id, player_id, session_type, trainer_name, start_timestamp, end_timestamp, focus_area, difficulty_rating, calories_burned, heart_rate_avg, notes, location, equipment_used, video_recording_path, feedback_score, created_at, updated_at, session_label, virtual_flag, platform, sponsor_id) VALUES (1, 1001, 'Aim Drill', 'Coach A', '2023-06-01 10:00', '2023-06-01 11:00', 'Accuracy', 3, 350, 140, 'Good progress', 'Gym A', 'Target Board', '/videos/session1.mp4', 4.5, '2023-06-01', '2023-06-01', 'Morning Drill', 0, 'InHouse', 400);
INSERT INTO player_training_sessions (id, player_id, session_type, trainer_name, start_timestamp, end_timestamp, focus_area, difficulty_rating, calories_burned, heart_rate_avg, notes, location, equipment_used, video_recording_path, feedback_score, created_at, updated_at, session_label, virtual_flag, platform, sponsor_id) VALUES (2, 1002, 'Strategy Review', 'Coach B', '2023-06-02 14:00', '2023-06-02 15:30', 'Drafting', 4, 200, 130, 'Needs more tempo control', 'Online', 'Screen Share', '/videos/session2.mp4', 3.8, '2023-06-02', '2023-06-02', 'Afternoon Review', 1, 'Zoom', 401);
INSERT INTO player_training_sessions (id, player_id, session_type, trainer_name, start_timestamp, end_timestamp, focus_area, difficulty_rating, calories_burned, heart_rate_avg, notes, location, equipment_used, video_recording_path, feedback_score, created_at, updated_at, session_label, virtual_flag, platform, sponsor_id) VALUES (3, 1003, 'Physical Conditioning', 'Coach C', '2023-06-03 08:00', '2023-06-03 09:15', 'Endurance', 2, 500, 150, 'Excellent stamina', 'Fitness Center', 'Treadmill', '/videos/session3.mp4', 4.9, '2023-06-03', '2023-06-03', 'Early Cardio', 0, 'InHouse', 402);

-- Fantasy world character encyclopedia
CREATE TABLE fantasy_world_characters (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    character_name TEXT,
    race TEXT,
    class TEXT,
    alignment TEXT,
    level INTEGER,
    home_region TEXT,
    backstory TEXT,
    primary_weapon TEXT,
    secondary_weapon TEXT,
    armor_type TEXT,
    magic_affinity TEXT,
    health_points INTEGER,
    mana_points INTEGER,
    strength INTEGER,
    agility INTEGER,
    intelligence INTEGER,
    charisma INTEGER,
    reputation_score INTEGER,
    image_asset_id INTEGER,
    created_at TEXT,
    updated_at TEXT,
    lore_reference TEXT
);

INSERT INTO fantasy_world_characters (id, character_name, race, class, alignment, level, home_region, backstory, primary_weapon, secondary_weapon, armor_type, magic_affinity, health_points, mana_points, strength, agility, intelligence, charisma, reputation_score, image_asset_id, created_at, updated_at, lore_reference) VALUES (1, 'Eldrin Stormblade', 'Elf', 'Ranger', 'Chaotic Good', 12, 'Silverwood', 'Raised among hunters', 'Longbow', 'Dagger', 'Leather', 'Nature', 85, 40, 14, 18, 12, 10, 70, 501, '2023-01-10', '2023-01-10', 'Chronicles Volume I');
INSERT INTO fantasy_world_characters (id, character_name, race, class, alignment, level, home_region, backstory, primary_weapon, secondary_weapon, armor_type, magic_affinity, health_points, mana_points, strength, agility, intelligence, charisma, reputation_score, image_asset_id, created_at, updated_at, lore_reference) VALUES (2, 'Morgath the Unbound', 'Orc', 'Warlock', 'Neutral Evil', 15, 'Dreadlands', 'Pact with dark entity', 'Scythe', 'Staff', 'Plate', 'Shadow', 120, 80, 18, 10, 16, 8, 55, 502, '2023-02-20', '2023-02-20', 'Dark Tales');
INSERT INTO fantasy_world_characters (id, character_name, race, class, alignment, level, home_region, backstory, primary_weapon, secondary_weapon, armor_type, magic_affinity, health_points, mana_points, strength, agility, intelligence, charisma, reputation_score, image_asset_id, created_at, updated_at, lore_reference) VALUES (3, 'Lira Sunforge', 'Human', 'Paladin', 'Lawful Good', 10, 'Highcrest', 'Sworn to protect the realm', 'Warhammer', 'Shield', 'Chainmail', 'Holy', 95, 30, 16, 12, 14, 15, 85, 503, '2023-03-05', '2023-03-05', 'Heroes of Light');

-- Global tournament series overview
CREATE TABLE global_tournament_series (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    series_name TEXT,
    season_year INTEGER,
    total_prize_pool_usd REAL,
    number_of_events INTEGER,
    start_date TEXT,
    end_date TEXT,
    governing_body TEXT,
    official_website TEXT,
    sponsor_main TEXT,
    sponsor_secondary TEXT,
    broadcast_partner TEXT,
    ranking_system TEXT,
    points_per_event INTEGER,
    qualification_criteria TEXT,
    elite_tier_threshold INTEGER,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    status TEXT,
    logo_asset_id INTEGER
);

INSERT INTO global_tournament_series (id, series_name, season_year, total_prize_pool_usd, number_of_events, start_date, end_date, governing_body, official_website, sponsor_main, sponsor_secondary, broadcast_partner, ranking_system, points_per_event, qualification_criteria, elite_tier_threshold, created_at, updated_at, notes, status, logo_asset_id) VALUES (1, 'World Masters', 2023, 1500000.00, 12, '2023-01-10', '2023-12-15', 'MTG International', 'http://worldmasters.com', 'TechCorp', 'GameFuel', 'MagicLive', 'ELO', 100, 'Top 500 global', 50, '2023-01-01', '2023-01-01', 'Premier series', 'active', 601);
INSERT INTO global_tournament_series (id, series_name, season_year, total_prize_pool_usd, number_of_events, start_date, end_date, governing_body, official_website, sponsor_main, sponsor_secondary, broadcast_partner, ranking_system, points_per_event, qualification_criteria, elite_tier_threshold, created_at, updated_at, notes, status, logo_asset_id) VALUES (2, 'Continental Clash', 2023, 800000.00, 8, '2023-03-01', '2023-10-30', 'MTG Europe', 'http://continentalclash.eu', 'NovaGames', 'PixelBoost', 'EuroStream', 'Glicko', 120, 'Top 200 in region', 30, '2023-02-15', '2023-02-15', 'Regional focus', 'active', 602);
INSERT INTO global_tournament_series (id, series_name, season_year, total_prize_pool_usd, number_of_events, start_date, end_date, governing_body, official_website, sponsor_main, sponsor_secondary, broadcast_partner, ranking_system, points_per_event, qualification_criteria, elite_tier_threshold, created_at, updated_at, notes, status, logo_asset_id) VALUES (3, 'Emerging Nations Cup', 2023, 300000.00, 5, '2023-05-05', '2023-09-20', 'MTG Asia', 'http://emergingcup.asia', 'SolarEnergy', 'GameFuel', 'AsiaLive', 'ELO', 80, 'Open qualifiers', 20, '2023-04-10', '2023-04-10', 'Developing markets', 'planned', 603);

-- Intellectual property claim tracking
CREATE TABLE ip_claims (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    claim_id TEXT,
    claimant_name TEXT,
    claimant_contact TEXT,
    disputed_card_uuid TEXT,
    claim_date TEXT,
    claim_type TEXT,
    status TEXT,
    resolution_date TEXT,
    settlement_amount_usd REAL,
    legal_firm TEXT,
    attorney_name TEXT,
    evidence_document_path TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    escalated_flag INTEGER,
    priority_level TEXT,
    jurisdiction TEXT,
    appeal_deadline TEXT
);

INSERT INTO ip_claims (id, claim_id, claimant_name, claimant_contact, disputed_card_uuid, claim_date, claim_type, status, resolution_date, settlement_amount_usd, legal_firm, attorney_name, evidence_document_path, notes, created_at, updated_at, escalated_flag, priority_level, jurisdiction, appeal_deadline) VALUES (1, 'CLM001', 'Alice Creative', 'alice@creative.com', 'uuid-card-010', '2023-04-12', 'copyright', 'pending', NULL, NULL, 'Law&Order LLP', 'Robert King', '/evidence/claim1.pdf', 'Initial filing', '2023-04-12', '2023-04-12', 0, 'high', 'US-CA', '2023-07-01');
INSERT INTO ip_claims (id, claim_id, claimant_name, claimant_contact, disputed_card_uuid, claim_date, claim_type, status, resolution_date, settlement_amount_usd, legal_firm, attorney_name, evidence_document_path, notes, created_at, updated_at, escalated_flag, priority_level, jurisdiction, appeal_deadline) VALUES (2, 'CLM002', 'Beta Studios', 'contact@betastudios.com', 'uuid-card-020', '2023-05-03', 'trademark', 'resolved', '2023-06-15', 25000.00, 'Trademark Guard Inc', 'Linda Shaw', '/evidence/claim2.pdf', 'Settled amicably', '2023-05-03', '2023-06-15', 0, 'medium', 'US-NY', '2023-09-01');
INSERT INTO ip_claims (id, claim_id, claimant_name, claimant_contact, disputed_card_uuid, claim_date, claim_type, status, resolution_date, settlement_amount_usd, legal_firm, attorney_name, evidence_document_path, notes, created_at, updated_at, escalated_flag, priority_level, jurisdiction, appeal_deadline) VALUES (3, 'CLM003', 'Gamma Artists', 'info@gammaart.com', 'uuid-card-030', '2023-06-20', 'design', 'escalated', NULL, NULL, 'Creative Defend Ltd', 'Mark Lee', '/evidence/claim3.pdf', 'Awaiting court date', '2023-06-20', '2023-06-20', 1, 'high', 'US-TX', '2023-12-15');