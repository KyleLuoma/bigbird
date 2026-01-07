-- Concept art metadata for upcoming cards
CREATE TABLE mtg_concept_art (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    artist_name TEXT,
    concept_name TEXT,
    creation_date DATE,
    art_style TEXT,
    color_palette TEXT,
    resolution TEXT,
    file_format TEXT,
    file_size_kb INTEGER,
    usage_rights TEXT,
    license_id TEXT,
    notes TEXT,
    version INTEGER,
    approved INTEGER DEFAULT 0,
    reviewer TEXT,
    approval_date DATE,
    tags TEXT,
    related_set_code TEXT,
    related_card_uuid TEXT,
    source_url TEXT,
    archived INTEGER DEFAULT 0
);

INSERT INTO mtg_concept_art (artist_name, concept_name, creation_date, art_style, color_palette, resolution, file_format, file_size_kb, usage_rights, license_id, notes, version, approved, reviewer, approval_date, tags, related_set_code, related_card_uuid, source_url, archived)
VALUES ('JohnDoe', 'DragonFlame', '2022-05-01', 'Digital', 'RedBlue', '1920x1080', 'png', 2048, 'Internal', 'LIC123', 'Initial concept', 1, 1, 'JaneSmith', '2022-05-10', 'fire,dragon', 'M21', 'abcd1234efgh', 'http://example.com/art1.png', 0);

INSERT INTO mtg_concept_art (artist_name, concept_name, creation_date, art_style, color_palette, resolution, file_format, file_size_kb, usage_rights, license_id, notes, version, approved, reviewer, approval_date, tags, related_set_code, related_card_uuid, source_url, archived)
VALUES ('AliceArt', 'SeaSerpent', '2023-01-15', 'Watercolor', 'BlueGreen', '2560x1440', 'jpg', 3072, 'External', 'LIC456', 'Concept for sea themed set', 2, 0, 'BobReviewer', NULL, 'water,serpent', 'STX', 'wxyz5678ijkl', 'http://example.com/art2.jpg', 0);

INSERT INTO mtg_concept_art (artist_name, concept_name, creation_date, art_style, color_palette, resolution, file_format, file_size_kb, usage_rights, license_id, notes, version, approved, reviewer, approval_date, tags, related_set_code, related_card_uuid, source_url, archived)
VALUES ('MarkPainter', 'EldritchPortal', '2021-11-30', 'Oil', 'PurpleBlack', '3840x2160', 'tiff', 5120, 'Internal', 'LIC789', 'High detail portal', 3, 1, 'ClaraLead', '2021-12-05', 'eldritch,portal', 'IKO', 'mnop9012qrst', 'http://example.com/art3.tiff', 0);

-- Image source configuration for external image provider
CREATE TABLE scryfall_image_sources (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    source_name TEXT,
    api_endpoint TEXT,
    auth_method TEXT,
    request_limit_per_minute INTEGER,
    avg_response_ms REAL,
    last_sync DATE,
    active INTEGER DEFAULT 1,
    notes TEXT,
    contact_email TEXT,
    region TEXT,
    version INTEGER,
    checksum_algorithm TEXT,
    checksum_value TEXT,
    image_quality TEXT,
    supported_formats TEXT,
    cache_enabled INTEGER,
    cache_expiration_days INTEGER,
    fallback_source TEXT,
    priority INTEGER,
    error_rate REAL,
    last_error_date DATE
);

INSERT INTO scryfall_image_sources (source_name, api_endpoint, auth_method, request_limit_per_minute, avg_response_ms, last_sync, active, notes, contact_email, region, version, checksum_algorithm, checksum_value, image_quality, supported_formats, cache_enabled, cache_expiration_days, fallback_source, priority, error_rate, last_error_date)
VALUES ('PrimaryCDN', 'https://cdn.primary.com/images', 'APIKey', 1200, 85.5, '2023-12-01', 1, 'Main image source', 'support@primarycdn.com', 'NA', 1, 'SHA256', 'abcde12345', 'high', 'png,jpg', 1, 30, 'SecondaryCDN', 1, 0.02, '2023-11-28');

INSERT INTO scryfall_image_sources (source_name, api_endpoint, auth_method, request_limit_per_minute, avg_response_ms, last_sync, active, notes, contact_email, region, version, checksum_algorithm, checksum_value, image_quality, supported_formats, cache_enabled, cache_expiration_days, fallback_source, priority, error_rate, last_error_date)
VALUES ('SecondaryCDN', 'https://cdn.secondary.com/assets', 'OAuth', 800, 110.2, '2023-11-30', 1, 'Backup source', 'ops@secondarycdn.com', 'EU', 2, 'MD5', 'fghij67890', 'medium', 'png', 1, 45, 'PrimaryCDN', 2, 0.05, '2023-11-25');

INSERT INTO scryfall_image_sources (source_name, api_endpoint, auth_method, request_limit_per_minute, avg_response_ms, last_sync, active, notes, contact_email, region, version, checksum_algorithm, checksum_value, image_quality, supported_formats, cache_enabled, cache_expiration_days, fallback_source, priority, error_rate, last_error_date)
VALUES ('LegacyArchive', 'https://archive.legacy.com/img', 'None', 200, 250.0, '2022-06-15', 0, 'Read‑only archive', 'archive@legacy.com', 'ASIA', 1, 'SHA1', 'klmno13579', 'low', 'jpg', 0, 0, NULL, 3, 0.10, '2022-05-20');

-- Taxonomy of card mechanics
CREATE TABLE card_mechanics_taxonomy (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    mechanic_name TEXT,
    description TEXT,
    category TEXT,
    subcategory TEXT,
    first_appeared_set TEXT,
    last_appeared_set TEXT,
    typical_cost INTEGER,
    power_modifier REAL,
    toughness_modifier REAL,
    rarity_impact TEXT,
    synergy_tags TEXT,
    complexity_level INTEGER,
    is_core_rule INTEGER,
    rule_reference TEXT,
    official_status TEXT,
    example_card_uuid TEXT,
    created_by TEXT,
    created_date DATE,
    updated_by TEXT,
    updated_date DATE,
    deprecated INTEGER DEFAULT 0
);

INSERT INTO card_mechanics_taxonomy (mechanic_name, description, category, subcategory, first_appeared_set, last_appeared_set, typical_cost, power_modifier, toughness_modifier, rarity_impact, synergy_tags, complexity_level, is_core_rule, rule_reference, official_status, example_card_uuid, created_by, created_date, updated_by, updated_date, deprecated)
VALUES ('Flash', 'Allows casting as an instant', 'Timing', 'InstantSpeed', '10E', 'M21', 0, 0, 0, 'common', 'tempo,aggressive', 2, 1, '702.44', 'Official', 'uuid-flash-001', 'RuleTeam', '2020-01-01', 'RuleTeam', '2023-01-01', 0);

INSERT INTO card_mechanics_taxonomy (mechanic_name, description, category, subcategory, first_appeared_set, last_appeared_set, typical_cost, power_modifier, toughness_modifier, rarity_impact, synergy_tags, complexity_level, is_core_rule, rule_reference, official_status, example_card_uuid, created_by, created_date, updated_by, updated_date, deprecated)
VALUES ('Cycling', 'Discard to draw a new card', 'Utility', 'CardManipulation', 'Alpha', 'IKO', 0, 0, 0, 'uncommon', 'cardadvantage,flexibility', 3, 1, '702.46', 'Official', 'uuid-cycling-001', 'RuleTeam', '2015-06-10', 'RuleTeam', '2022-12-15', 0);

INSERT INTO card_mechanics_taxonomy (mechanic_name, description, category, subcategory, first_appeared_set, last_appeared_set, typical_cost, power_modifier, toughness_modifier, rarity_impact, synergy_tags, complexity_level, is_core_rule, rule_reference, official_status, example_card_uuid, created_by, created_date, updated_by, updated_date, deprecated)
VALUES ('Adventure', 'Spell that becomes a creature', 'Hybrid', 'SpellCreature', 'ELD', 'ELD', 0, 0, 0, 'rare', 'flexibility,story', 4, 0, '702.34', 'Official', 'uuid-adventure-001', 'RuleTeam', '2019-09-01', 'RuleTeam', '2021-08-30', 0);

-- Statistics for deck archetypes
CREATE TABLE deck_archetype_statistics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    archetype_name TEXT,
    primary_color TEXT,
    average_cmc REAL,
    average_power REAL,
    average_toughness REAL,
    win_rate_percent REAL,
    loss_rate_percent REAL,
    draw_rate_percent REAL,
    popular_card_1_uuid TEXT,
    popular_card_2_uuid TEXT,
    popular_card_3_uuid TEXT,
    usage_frequency INTEGER,
    tournament_appearances INTEGER,
    meta_rank INTEGER,
    notes TEXT,
    created_by TEXT,
    created_date DATE,
    updated_by TEXT,
    updated_date DATE,
    is_active INTEGER,
    source_dataset TEXT,
    confidence_score REAL
);

INSERT INTO deck_archetype_statistics (archetype_name, primary_color, average_cmc, average_power, average_toughness, win_rate_percent, loss_rate_percent, draw_rate_percent, popular_card_1_uuid, popular_card_2_uuid, popular_card_3_uuid, usage_frequency, tournament_appearances, meta_rank, notes, created_by, created_date, updated_by, updated_date, is_active, source_dataset, confidence_score)
VALUES ('MonoRed Aggro', 'Red', 3.2, 4.5, 2.0, 58.3, 30.1, 11.6, 'uuid-red1', 'uuid-red2', 'uuid-red3', 1200, 85, 1, 'Fast aggressive decks', 'AnalyticsTeam', '2023-03-01', 'AnalyticsTeam', '2023-09-01', 1, 'Meta2023', 0.95);

INSERT INTO deck_archetype_statistics (archetype_name, primary_color, average_cmc, average_power, average_toughness, win_rate_percent, loss_rate_percent, draw_rate_percent, popular_card_1_uuid, popular_card_2_uuid, popular_card_3_uuid, usage_frequency, tournament_appearances, meta_rank, notes, created_by, created_date, updated_by, updated_date, is_active, source_dataset, confidence_score)
VALUES ('Control Combo', 'Blue', 4.8, 2.0, 5.5, 61.2, 27.8, 11.0, 'uuid-blue1', 'uuid-blue2', 'uuid-blue3', 900, 60, 2, 'Control with combo finishers', 'AnalyticsTeam', '2023-03-01', 'AnalyticsTeam', '2023-09-01', 1, 'Meta2023', 0.92);

INSERT INTO deck_archetype_statistics (archetype_name, primary_color, average_cmc, average_power, average_toughness, win_rate_percent, loss_rate_percent, draw_rate_percent, popular_card_1_uuid, popular_card_2_uuid, popular_card_3_uuid, usage_frequency, tournament_appearances, meta_rank, notes, created_by, created_date, updated_by, updated_date, is_active, source_dataset, confidence_score)
VALUES ('Selesnya Enchantments', 'GreenWhite', 3.7, 2.5, 4.0, 55.0, 35.0, 10.0, 'uuid-gw1', 'uuid-gw2', 'uuid-gw3', 650, 40, 5, 'Midrange with many auras', 'AnalyticsTeam', '2023-03-01', 'AnalyticsTeam', '2023-09-01', 1, 'Meta2023', 0.88);

-- Triggers for gameplay events
CREATE TABLE gameplay_event_triggers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    trigger_name TEXT,
    description TEXT,
    event_type TEXT,
    condition_expression TEXT,
    action_script TEXT,
    cooldown_seconds INTEGER,
    max_activations INTEGER,
    applies_to_set TEXT,
    applies_to_format TEXT,
    created_by TEXT,
    created_date DATE,
    updated_by TEXT,
    updated_date DATE,
    is_enabled INTEGER,
    priority INTEGER,
    related_mechanic TEXT,
    required_permission TEXT,
    impact_score REAL,
    notes TEXT,
    version INTEGER,
    legacy_support INTEGER
);

INSERT INTO gameplay_event_triggers (trigger_name, description, event_type, condition_expression, action_script, cooldown_seconds, max_activations, applies_to_set, applies_to_format, created_by, created_date, updated_by, updated_date, is_enabled, priority, related_mechanic, required_permission, impact_score, notes, version, legacy_support)
VALUES ('Mana Surge', 'Grants extra mana on land drop', 'LandPlay', 'player.landsPlayedThisTurn >= 3', 'player.addMana(1)', 0, 0, 'M21', 'Standard', 'DevTeam', '2022-02-15', 'DevTeam', '2022-03-01', 1, 10, 'Ramp', 'Admin', 0.8, 'Used in experimental decks', 1, 1);

INSERT INTO gameplay_event_triggers (trigger_name, description, event_type, condition_expression, action_script, cooldown_seconds, max_activations, applies_to_set, applies_to_format, created_by, created_date, updated_by, updated_date, is_enabled, priority, related_mechanic, required_permission, impact_score, notes, version, legacy_support)
VALUES ('Early Bird', 'First creature gets +1/+1', 'CreatureEnter', 'game.turnNumber == 1', 'creature.modifyPower(1); creature.modifyToughness(1);', 0, 0, 'ELD', 'Standard', 'DevTeam', '2022-04-10', 'DevTeam', '2022-04-20', 1, 20, 'FirstStrike', 'Admin', 0.6, 'Encourages early aggression', 1, 0);

INSERT INTO gameplay_event_triggers (trigger_name, description, event_type, condition_expression, action_script, cooldown_seconds, max_activations, applies_to_set, applies_to_format, created_by, created_date, updated_by, updated_date, is_enabled, priority, related_mechanic, required_permission, impact_score, notes, version, legacy_support)
VALUES ('Saga Recall', 'Returns a saga to hand after resolution', 'SagaResolve', 'saga.isPermanent == false', 'player.moveCardToHand(saga);', 300, 1, 'KHM', 'Standard', 'DevTeam', '2022-07-01', 'DevTeam', '2022-07-15', 1, 5, 'Saga', 'Admin', 0.4, 'Testing alternate saga interactions', 1, 0);

-- Collector market preference profiles
CREATE TABLE collector_market_preferences (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    collector_id INTEGER,
    preferred_set_codes TEXT,
    preferred_rarity TEXT,
    max_budget_usd REAL,
    min_budget_usd REAL,
    preferred_artists TEXT,
    preferred_mechanics TEXT,
    notification_opt_in INTEGER,
    contact_method TEXT,
    preferred_currency TEXT,
    avg_spend_per_month REAL,
    total_spent_usd REAL,
    last_purchase_date DATE,
    wishlist_card_uuids TEXT,
    ignored_card_uuids TEXT,
    notes TEXT,
    created_date DATE,
    updated_date DATE,
    is_active INTEGER,
    source_channel TEXT,
    risk_tolerance TEXT
);

INSERT INTO collector_market_preferences (collector_id, preferred_set_codes, preferred_rarity, max_budget_usd, min_budget_usd, preferred_artists, preferred_mechanics, notification_opt_in, contact_method, preferred_currency, avg_spend_per_month, total_spent_usd, last_purchase_date, wishlist_card_uuids, ignored_card_uuids, notes, created_date, updated_date, is_active, source_channel, risk_tolerance)
VALUES (101, 'M21,ELD', 'mythic', 2000, 100, 'JohnDoe;AliceArt', 'Flash;Cycling', 1, 'email', 'USD', 150, 3200, '2023-08-15', 'uuid-abc1,uuid-def2', 'uuid-ghi3', 'Collector focuses on premium rares', '2022-01-10', '2023-09-01', 1, 'website', 'low');

INSERT INTO collector_market_preferences (collector_id, preferred_set_codes, preferred_rarity, max_budget_usd, min_budget_usd, preferred_artists, preferred_mechanics, notification_opt_in, contact_method, preferred_currency, avg_spend_per_month, total_spent_usd, last_purchase_date, wishlist_card_uuids, ignored_card_uuids, notes, created_date, updated_date, is_active, source_channel, risk_tolerance)
VALUES (102, 'STX,KHM', 'rare', 800, 50, 'MarkPainter;JaneSmith', 'Adventure;Saga', 0, 'sms', 'EUR', 80, 1200, '2023-07-20', 'uuid-jkl4,uuid-mno5', 'uuid-pqr6', 'Prefers adventure cards', '2022-05-22', '2023-08-30', 1, 'mobile_app', 'medium');

INSERT INTO collector_market_preferences (collector_id, preferred_set_codes, preferred_rarity, max_budget_usd, min_budget_usd, preferred_artists, preferred_mechanics, notification_opt_in, contact_method, preferred_currency, avg_spend_per_month, total_spent_usd, last_purchase_date, wishlist_card_uuids, ignored_card_uuids, notes, created_date, updated_date, is_active, source_channel, risk_tolerance)
VALUES (103, 'WAR,DOM', 'uncommon', 500, 20, 'LucyLiu;TomK', 'Trample;Lifelink', 1, 'push', 'GBP', 45, 540, '2023-06-10', 'uuid-stu7,uuid-vwx8', 'uuid-yza9', 'Collects budget-friendly cards', '2021-12-01', '2023-07-15', 1, 'newsletter', 'high');

-- Media assets for set releases
CREATE TABLE set_release_media_assets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    asset_type TEXT,
    file_name TEXT,
    file_format TEXT,
    resolution TEXT,
    file_size_kb INTEGER,
    url TEXT,
    description TEXT,
    created_by TEXT,
    created_date DATE,
    updated_by TEXT,
    updated_date DATE,
    is_public INTEGER,
    language TEXT,
    region TEXT,
    copyright_holder TEXT,
    usage_rights TEXT,
    expiration_date DATE,
    thumbnails TEXT,
    tags TEXT,
    version INTEGER,
    archived INTEGER DEFAULT 0
);

INSERT INTO set_release_media_assets (set_code, asset_type, file_name, file_format, resolution, file_size_kb, url, description, created_by, created_date, updated_by, updated_date, is_public, language, region, copyright_holder, usage_rights, expiration_date, thumbnails, tags, version, archived)
VALUES ('M21', 'promo_video', 'm21_trailer', 'mp4', '1920x1080', 50000, 'http://media.example.com/m21_trailer.mp4', 'Official set trailer', 'MediaTeam', '2021-04-01', 'MediaTeam', '2021-04-02', 1, 'en', 'global', 'Wizards', 'licensed', NULL, 'thumb1.jpg,thumb2.jpg', 'trailer,official', 1, 0);

INSERT INTO set_release_media_assets (set_code, asset_type, file_name, file_format, resolution, file_size_kb, url, description, created_by, created_date, updated_by, updated_date, is_public, language, region, copyright_holder, usage_rights, expiration_date, thumbnails, tags, version, archived)
VALUES ('ELD', 'art_gallery', 'eld_banner', 'png', '2560x1440', 8200, 'http://media.example.com/eld_banner.png', 'Banner for Eldritch Moon', 'ArtTeam', '2019-02-10', 'ArtTeam', '2019-02-11', 1, 'en', 'global', 'Wizards', 'licensed', NULL, 'banner_thumb.jpg', 'banner,eldritch', 1, 0);

INSERT INTO set_release_media_assets (set_code, asset_type, file_name, file_format, resolution, file_size_kb, url, description, created_by, created_date, updated_by, updated_date, is_public, language, region, copyright_holder, usage_rights, expiration_date, thumbnails, tags, version, archived)
VALUES ('KHM', 'soundtrack', 'khm_theme', 'mp3', NULL, 15000, 'http://media.example.com/khm_theme.mp3', 'Theme music for Kaldheim', 'AudioTeam', '2021-02-01', 'AudioTeam', '2021-02-02', 1, 'en', 'global', 'Wizards', 'licensed', NULL, 'sound_thumb.jpg', 'audio,kaldheim', 1, 0);

-- Digital card back designs
CREATE TABLE digital_card_back_designs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    design_name TEXT,
    artist_name TEXT,
    image_url TEXT,
    primary_color TEXT,
    secondary_color TEXT,
    pattern_type TEXT,
    rarity TEXT,
    release_set_code TEXT,
    release_date DATE,
    file_format TEXT,
    file_size_kb INTEGER,
    license_id TEXT,
    approved INTEGER,
    approver TEXT,
    approval_date DATE,
    notes TEXT,
    version INTEGER,
    is_exclusive INTEGER,
    digital_only INTEGER,
    usage_count INTEGER,
    last_used_date DATE
);

INSERT INTO digital_card_back_designs (design_name, artist_name, image_url, primary_color, secondary_color, pattern_type, rarity, release_set_code, release_date, file_format, file_size_kb, license_id, approved, approver, approval_date, notes, version, is_exclusive, digital_only, usage_count, last_used_date)
VALUES ('Celestial Veil', 'EveArtist', 'http://assets.example.com/celestial_veil.png', 'Silver', 'Blue', 'Geometric', 'mythic', 'M21', '2021-04-23', 'png', 1200, 'LIC001', 1, 'LeadDesigner', '2021-04-25', 'Used for premium digital packs', 1, 0, 1, 45, '2023-08-01');

INSERT INTO digital_card_back_designs (design_name, artist_name, image_url, primary_color, secondary_color, pattern_type, rarity, release_set_code, release_date, file_format, file_size_kb, license_id, approved, approver, approval_date, notes, version, is_exclusive, digital_only, usage_count, last_used_date)
VALUES ('Mystic Forest', 'LiamBrush', 'http://assets.example.com/mystic_forest.jpg', 'Green', 'Brown', 'Organic', 'rare', 'ELD', '2019-02-15', 'jpg', 950, 'LIC002', 1, 'LeadDesigner', '2019-02-20', 'Standard digital back', 1, 0, 1, 120, '2023-07-20');

INSERT INTO digital_card_back_designs (design_name, artist_name, image_url, primary_color, secondary_color, pattern_type, rarity, release_set_code, release_date, file_format, file_size_kb, license_id, approved, approver, approval_date, notes, version, is_exclusive, digital_only, usage_count, last_used_date)
VALUES ('Arcane Sigil', 'NoraInk', 'http://assets.example.com/arcane_sigil.png', 'Purple', 'Gold', 'Runic', 'mythic', 'KHM', '2021-02-05', 'png', 1100, 'LIC003', 1, 'LeadDesigner', '2021-02-07', 'Exclusive to limited event', 1, 1, 1, 30, '2023-06-15');

-- Lineage information for legendary creatures
CREATE TABLE legendary_creature_lineage (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    creature_name TEXT,
    lineage_id TEXT,
    ancestor_name TEXT,
    descendant_name TEXT,
    myth_origin TEXT,
    first_appearance_set TEXT,
    last_appearance_set TEXT,
    power INTEGER,
    toughness INTEGER,
    abilities TEXT,
    thematic_role TEXT,
    story_arc TEXT,
    related_cards TEXT,
    artwork_reference TEXT,
    is_canonical INTEGER,
    revision_number INTEGER,
    created_by TEXT,
    created_date DATE,
    updated_by TEXT,
    updated_date DATE,
    notes TEXT
);

INSERT INTO legendary_creature_lineage (creature_name, lineage_id, ancestor_name, descendant_name, myth_origin, first_appearance_set, last_appearance_set, power, toughness, abilities, thematic_role, story_arc, related_cards, artwork_reference, is_canonical, revision_number, created_by, created_date, updated_by, updated_date, notes)
VALUES ('Ulamog, the Ceaseless Hunger', 'LINE-UL001', 'Ulamog Prime', 'Ulamog, the Infinite Maw', 'Eldrazi Myth', 'BFZ', 'KHM', 10, 10, 'Annihilator, Indestructible', 'World Ender', 'Destruction of the multiverse', 'uuid-ul1,uuid-ul2', 'art-ulamog.jpg', 1, 3, 'LoreTeam', '2015-01-01', 'LoreTeam', '2021-12-01', 'Core Eldrazi lineage');

INSERT INTO legendary_creature_lineage (creature_name, lineage_id, ancestor_name, descendant_name, myth_origin, first_appearance_set, last_appearance_set, power, toughness, abilities, thematic_role, story_arc, related_cards, artwork_reference, is_canonical, revision_number, created_by, created_date, updated_by, updated_date, notes)
VALUES ('Nicol Bolas, the Ravager', 'LINE-NB001', 'Nicol Bolas', 'Nicol Bolas, the Arisen', 'Planechase', 'WAR', 'KHM', 4, 4, 'Flying, Deathtouch, Hyperjump', 'Eternal Threat', 'Rise and fall of the dragon', 'uuid-nb1,uuid-nb2', 'art-nicol.jpg', 1, 2, 'LoreTeam', '2012-06-01', 'LoreTeam', '2022-03-15', 'Major planar antagonist');

INSERT INTO legendary_creature_lineage (creature_name, lineage_id, ancestor_name, descendant_name, myth_origin, first_appearance_set, last_appearance_set, power, toughness, abilities, thematic_role, story_arc, related_cards, artwork_reference, is_canonical, revision_number, created_by, created_date, updated_by, updated_date, notes)
VALUES ('Ghalta, Primal Hunger', 'LINE-GH001', 'Ghalta Prime', 'Ghalta, World-Breath', 'Jungle Myth', 'M21', 'M21', 12, 12, 'Trample, Rampage', 'Primordial Beast', 'Quest for the primal source', 'uuid-gh1', 'art-ghalta.png', 1, 1, 'LoreTeam', '2020-07-10', 'LoreTeam', '2021-01-20', 'Newest primal creature');

-- Log of cross‑reference between multiverse IDs
CREATE TABLE multiverse_crossref_log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    source_multiverse_id INTEGER,
    target_multiverse_id INTEGER,
    link_type TEXT,
    description TEXT,
    created_by TEXT,
    created_date DATE,
    verified_by TEXT,
    verification_date DATE,
    status TEXT,
    notes TEXT,
    confidence_score REAL,
    is_active INTEGER,
    source_set_code TEXT,
    target_set_code TEXT,
    related_uuid TEXT,
    priority INTEGER,
    last_updated DATE,
    error_flag INTEGER,
    retry_count INTEGER,
    processing_time_ms REAL,
    batch_id TEXT
);

INSERT INTO multiverse_crossref_log (source_multiverse_id, target_multiverse_id, link_type, description, created_by, created_date, verified_by, verification_date, status, notes, confidence_score, is_active, source_set_code, target_set_code, related_uuid, priority, last_updated, error_flag, retry_count, processing_time_ms, batch_id)
VALUES (123456, 654321, 'Duplicate', 'Duplicate entry detected', 'DataTeam', '2023-05-01', 'QALead', '2023-05-02', 'Resolved', 'Merged duplicates', 0.99, 1, 'M21', 'ELD', 'uuid-dup001', 1, '2023-05-03', 0, 0, 45.2, 'batchA');

INSERT INTO multiverse_crossref_log (source_multiverse_id, target_multiverse_id, link_type, description, created_by, created_date, verified_by, verification_date, status, notes, confidence_score, is_active, source_set_code, target_set_code, related_uuid, priority, last_updated, error_flag, retry_count, processing_time_ms, batch_id)
VALUES (777777, 888888, 'Reprint', 'Card reprinted in later set', 'DataTeam', '2023-06-10', 'QALead', '2023-06-11', 'Verified', 'Link confirmed', 0.95, 1, 'KHM', 'WAR', 'uuid-reprint001', 2, '2023-06-12', 0, 0, 30.5, 'batchB');

INSERT INTO multiverse_crossref_log (source_multiverse_id, target_multiverse_id, link_type, description, created_by, created_date, verified_by, verification_date, status, notes, confidence_score, is_active, source_set_code, target_set_code, related_uuid, priority, last_updated, error_flag, retry_count, processing_time_ms, batch_id)
VALUES (999999, 111111, 'Transformation', 'Card transformed in alternate art', 'DataTeam', '2023-07-20', 'QALead', '2023-07-21', 'Pending', 'Awaiting review', 0.80, 0, 'STX', 'M21', 'uuid-trans001', 3, '2023-07-22', 1, 1, 60.0, 'batchC');