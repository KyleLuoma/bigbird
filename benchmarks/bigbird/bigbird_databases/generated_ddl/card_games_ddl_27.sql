-- Card market analysis data
CREATE TABLE card_market_analysis
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    card_uuid TEXT NOT NULL,
    date_analyzed DATE NOT NULL,
    average_price REAL,
    median_price REAL,
    sales_volume INTEGER,
    market_trend TEXT,
    region TEXT,
    currency TEXT,
    price_change_24h REAL,
    price_change_7d REAL,
    price_change_30d REAL,
    volatility_index REAL,
    listing_count INTEGER,
    unique_buyers INTEGER,
    unique_sellers INTEGER,
    price_snapshot_url TEXT,
    analyst_id INTEGER,
    notes TEXT,
    source_feed TEXT
);

INSERT INTO card_market_analysis (card_uuid, date_analyzed, average_price, median_price, sales_volume, market_trend, region, currency, price_change_24h, price_change_7d, price_change_30d, volatility_index, listing_count, unique_buyers, unique_sellers, price_snapshot_url, analyst_id, notes, source_feed) VALUES ('uuid-001', '2025-01-01', 3.45, 3.30, 1200, bullish, NA, USD, 0.02, 0.05, 0.12, 0.8, 150, 300, 260, 'http://example.com/snap1', 101, firstquarter, feedA);
INSERT INTO card_market_analysis (card_uuid, date_analyzed, average_price, median_price, sales_volume, market_trend, region, currency, price_change_24h, price_change_7d, price_change_30d, volatility_index, listing_count, unique_buyers, unique_sellers, price_snapshot_url, analyst_id, notes, source_feed) VALUES ('uuid-002', '2025-01-02', 1.20, 1.15, 800, stable, EU, EUR, -0.01, 0.00, 0.03, 0.5, 120, 200, 180, 'http://example.com/snap2', 102, secondday, feedB);
INSERT INTO card_market_analysis (card_uuid, date_analyzed, average_price, median_price, sales_volume, market_trend, region, currency, price_change_24h, price_change_7d, price_change_30d, volatility_index, listing_count, unique_buyers, unique_sellers, price_snapshot_url, analyst_id, notes, source_feed) VALUES ('uuid-003', '2025-01-03', 0.75, 0.70, 1500, bearish, APAC, JPY, -0.03, -0.07, -0.15, 1.2, 200, 350, 300, 'http://example.com/snap3', 103, thirdday, feedC);

-- Set development milestones
CREATE TABLE set_development_milestones
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    set_code TEXT NOT NULL,
    milestone_name TEXT NOT NULL,
    milestone_date DATE NOT NULL,
    lead_designer TEXT,
    art_director TEXT,
    status TEXT,
    notes TEXT,
    budget_usd REAL,
    resources_allocated INTEGER,
    external_partner TEXT,
    milestone_order INTEGER,
    approved_by TEXT,
    revision_number INTEGER,
    risk_level TEXT,
    dependencies TEXT,
    completion_percentage REAL,
    created_at DATE,
    updated_at DATE,
    documentation_url TEXT
);

INSERT INTO set_development_milestones (set_code, milestone_name, milestone_date, lead_designer, art_director, status, notes, budget_usd, resources_allocated, external_partner, milestone_order, approved_by, revision_number, risk_level, dependencies, completion_percentage, created_at, updated_at, documentation_url) VALUES ('KHM', concept_phase, '2023-03-01', Alice, Bob, completed, initialconcept, 250000.00, 12, PartnerA, 1, Carol, 2, low, none, 100.0, '2023-02-20', '2023-03-02', 'http://example.com/doc1');
INSERT INTO set_development_milestones (set_code, milestone_name, milestone_date, lead_designer, art_director, status, notes, budget_usd, resources_allocated, external_partner, milestone_order, approved_by, revision_number, risk_level, dependencies, completion_percentage, created_at, updated_at, documentation_url) VALUES ('KHM', art_creation, '2023-06-15', Dave, Eve, in_progress, artphase, 400000.00, 20, PartnerB, 2, Frank, 1, medium, concept_phase, 60.0, '2023-05-10', '2023-06-16', 'http://example.com/doc2');
INSERT INTO set_development_milestones (set_code, milestone_name, milestone_date, lead_designer, art_director, status, notes, budget_usd, resources_allocated, external_partner, milestone_order, approved_by, revision_number, risk_level, dependencies, completion_percentage, created_at, updated_at, documentation_url) VALUES ('KHM', final_release, '2023-12-01', Grace, Heidi, pending, finalphase, 600000.00, 25, PartnerC, 3, Ivan, 0, high, art_creation, 30.0, '2023-10-01', '2023-10-02', 'http://example.com/doc3');

-- Player achievement definitions
CREATE TABLE player_achievement_definitions
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    achievement_code TEXT NOT NULL,
    name TEXT NOT NULL,
    description TEXT,
    points INTEGER,
    tier TEXT,
    rarity TEXT,
    unlock_condition TEXT,
    icon_path TEXT,
    created_at DATE,
    updated_at DATE,
    version TEXT,
    category TEXT,
    reward_type TEXT,
    reward_value REAL,
    visibility TEXT,
    leaderboard_inclusion INTEGER,
    badge_image TEXT,
    start_date DATE,
    end_date DATE
);

INSERT INTO player_achievement_definitions (achievement_code, name, description, points, tier, rarity, unlock_condition, icon_path, created_at, updated_at, version, category, reward_type, reward_value, visibility, leaderboard_inclusion, badge_image, start_date, end_date) VALUES ('ACH001', FirstWin, Win your first ranked match, 10, bronze, common, firstrankedwin, /icons/firstwin.png, '2022-01-01', '2022-01-01', v1, gameplay, badge, 0, public, 1, /badges/firstwin.png, '2022-01-01', '2099-12-31');
INSERT INTO player_achievement_definitions (achievement_code, name, description, points, tier, rarity, unlock_condition, icon_path, created_at, updated_at, version, category, reward_type, reward_value, visibility, leaderboard_inclusion, badge_image, start_date, end_date) VALUES ('ACH002', DeckBuilder, Build a deck with 60 cards, 20, silver, uncommon, decksize60, /icons/deckbuilder.png, '2022-02-01', '2022-02-01', v1, creation, badge, 0, public, 1, /badges/deckbuilder.png, '2022-02-01', '2099-12-31');
INSERT INTO player_achievement_definitions (achievement_code, name, description, points, tier, rarity, unlock_condition, icon_path, created_at, updated_at, version, category, reward_type, reward_value, visibility, leaderboard_inclusion, badge_image, start_date, end_date) VALUES ('ACH003', Marathon, Play 100 matches, 30, gold, rare, play100matches, /icons/marathon.png, '2022-03-01', '2022-03-01', v1, activity, badge, 0, private, 0, /badges/marathon.png, '2022-03-01', '2099-12-31');

-- Deck version history
CREATE TABLE deck_version_history
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    deck_id INTEGER NOT NULL,
    version_number INTEGER NOT NULL,
    created_by_user_id INTEGER,
    created_at DATE,
    description TEXT,
    card_list_hash TEXT,
    main_deck_info TEXT,
    sideboard_info TEXT,
    win_rate REAL,
    loss_rate REAL,
    average_game_length REAL,
    meta_score REAL,
    comments TEXT,
    approved INTEGER,
    approval_date DATE,
    revision_notes TEXT,
    tags TEXT,
    external_share_url TEXT,
    source_tool TEXT
);

INSERT INTO deck_version_history (deck_id, version_number, created_by_user_id, created_at, description, card_list_hash, main_deck_info, sideboard_info, win_rate, loss_rate, average_game_length, meta_score, comments, approved, approval_date, revision_notes, tags, external_share_url, source_tool) VALUES (1001, 1, 501, '2024-01-10', Initial version, abcdef123456, maincards1, sidecards1, 0.55, 0.45, 12.3, 78.0, none, 1, '2024-01-11', firstrelease, aggro;standard, http://share.com/deck1001v1, DeckBuilderPro);
INSERT INTO deck_version_history (deck_id, version_number, created_by_user_id, created_at, description, card_list_hash, main_deck_info, sideboard_info, win_rate, loss_rate, average_game_length, meta_score, comments, approved, approval_date, revision_notes, tags, external_share_url, source_tool) VALUES (1001, 2, 501, '2024-02-15', Updated for meta shift, 789xyz456789, maincards2, sidecards2, 0.60, 0.40, 11.8, 82.5, improved sideboard, 1, '2024-02-16', tweakedsideboard, control;midrange, http://share.com/deck1001v2, DeckBuilderPro);
INSERT INTO deck_version_history (deck_id, version_number, created_by_user_id, created_at, description, card_list_hash, main_deck_info, sideboard_info, win_rate, loss_rate, average_game_length, meta_score, comments, approved, approval_date, revision_notes, tags, external_share_url, source_tool) VALUES (1002, 1, 502, '2024-03-05', First draft, fghij987654, maincards3, sidecards3, 0.48, 0.52, 13.0, 70.2, needs testing, 0, NULL, initialdraft, midrange;modern, http://share.com/deck1002v1, DeckBuilderLite);

-- Collector trade offers
CREATE TABLE collector_trade_offers
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    offer_uuid TEXT NOT NULL,
    initiator_player_id INTEGER NOT NULL,
    target_player_id INTEGER,
    offered_card_uuid TEXT,
    requested_card_uuid TEXT,
    status TEXT,
    created_at DATE,
    expires_at DATE,
    counter_offer_allowed INTEGER,
    negotiation_rounds INTEGER,
    notes TEXT,
    acceptance_deadline DATE,
    trade_value_estimate REAL,
    trade_type TEXT,
    platform TEXT,
    visibility TEXT,
    rating REAL,
    feedback_score INTEGER,
    approval_timestamp DATE
);

INSERT INTO collector_trade_offers (offer_uuid, initiator_player_id, target_player_id, offered_card_uuid, requested_card_uuid, status, created_at, expires_at, counter_offer_allowed, negotiation_rounds, notes, acceptance_deadline, trade_value_estimate, trade_type, platform, visibility, rating, feedback_score, approval_timestamp) VALUES ('trade-001', 1001, 1002, uuid-010, uuid-020, pending, '2024-04-01', '2024-04-10', 1, 0, none, '2024-04-09', 15.5, direct, web, public, 4.5, 0, NULL);
INSERT INTO collector_trade_offers (offer_uuid, initiator_player_id, target_player_id, offered_card_uuid, requested_card_uuid, status, created_at, expires_at, counter_offer_allowed, negotiation_rounds, notes, acceptance_deadline, trade_value_estimate, trade_type, platform, visibility, rating, feedback_score, approval_timestamp) VALUES ('trade-002', 1003, 1004, uuid-030, uuid-040, accepted, '2024-04-02', '2024-04-12', 0, 2, quickswap, '2024-04-11', 22.0, barter, mobile, private, 5.0, 10, '2024-04-13');
INSERT INTO collector_trade_offers (offer_uuid, initiator_player_id, target_player_id, offered_card_uuid, requested_card_uuid, status, created_at, expires_at, counter_offer_allowed, negotiation_rounds, notes, acceptance_deadline, trade_value_estimate, trade_type, platform, visibility, rating, feedback_score, approval_timestamp) VALUES ('trade-003', 1005, NULL, uuid-050, uuid-060, cancelled, '2024-04-03', '2024-04-13', 1, 1, noresponse, '2024-04-12', 0.0, gift, web, public, 0.0, 0, NULL);

-- Tournament season rewards
CREATE TABLE tournament_season_rewards
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    season_id INTEGER NOT NULL,
    reward_name TEXT NOT NULL,
    reward_type TEXT,
    amount REAL,
    currency TEXT,
    eligibility_criteria TEXT,
    distribution_date DATE,
    notification_sent INTEGER,
    external_link TEXT,
    sponsor_name TEXT,
    sponsor_logo_url TEXT,
    points_awarded INTEGER,
    badge_id TEXT,
    special_status TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    is_active INTEGER,
    redemption_url TEXT
);

INSERT INTO tournament_season_rewards (season_id, reward_name, reward_type, amount, currency, eligibility_criteria, distribution_date, notification_sent, external_link, sponsor_name, sponsor_logo_url, points_awarded, badge_id, special_status, notes, created_at, updated_at, is_active, redemption_url) VALUES (2023, ChampionPrize, cash, 5000.00, USD, top1, '2024-01-15', 1, http://reward.com/champ, SponsorA, http://logo.com/a.png, 1000, badge-champ, exclusive, none, '2023-12-01', '2023-12-01', 1, http://redeem.com/champ);
INSERT INTO tournament_season_rewards (season_id, reward_name, reward_type, amount, currency, eligibility_criteria, distribution_date, notification_sent, external_link, sponsor_name, sponsor_logo_url, points_awarded, badge_id, special_status, notes, created_at, updated_at, is_active, redemption_url) VALUES (2023, RunnerUpPrize, cash, 2500.00, USD, top2, '2024-01-16', 1, http://reward.com/runup, SponsorB, http://logo.com/b.png, 500, badge-runup, exclusive, none, '2023-12-02', '2023-12-02', 1, http://redeem.com/runup);
INSERT INTO tournament_season_rewards (season_id, reward_name, reward_type, amount, currency, eligibility_criteria, distribution_date, notification_sent, external_link, sponsor_name, sponsor_logo_url, points_awarded, badge_id, special_status, notes, created_at, updated_at, is_active, redemption_url) VALUES (2023, ParticipationPack, item, 0, NULL, allparticipants, '2024-01-20', 1, http://reward.com/pack, SponsorC, http://logo.com/c.png, 100, badge-pack, common, none, '2023-12-03', '2023-12-03', 1, http://redeem.com/pack);

-- Game mechanics evolution
CREATE TABLE game_mechanics_evolution
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    mechanic_id TEXT NOT NULL,
    name TEXT NOT NULL,
    description TEXT,
    introduced_set_code TEXT,
    last_used_set_code TEXT,
    popularity_score REAL,
    complexity_level TEXT,
    rulebook_section TEXT,
    designer_notes TEXT,
    date_introduced DATE,
    date_last_used DATE,
    status TEXT,
    version TEXT,
    impact_rating REAL,
    affected_card_count INTEGER,
    related_mechanics TEXT,
    documentation_url TEXT,
    review_cycle TEXT,
    archived_flag INTEGER
);

INSERT INTO game_mechanics_evolution (mechanic_id, name, description, introduced_set_code, last_used_set_code, popularity_score, complexity_level, rulebook_section, designer_notes, date_introduced, date_last_used, status, version, impact_rating, affected_card_count, related_mechanics, documentation_url, review_cycle, archived_flag) VALUES ('MECH001', Flying, Allows creature to evade blockers, KHM, KHM, 0.95, low, 708, none, '1993-08-05', '2023-12-01', active, v1, 4.5, 1200, none, http://rules.com/flying, annual, 0);
INSERT INTO game_mechanics_evolution (mechanic_id, name, description, introduced_set_code, last_used_set_code, popularity_score, complexity_level, rulebook_section, designer_notes, date_introduced, date_last_used, status, version, impact_rating, affected_card_count, related_mechanics, documentation_url, review_cycle, archived_flag) VALUES ('MECH002', Deathtouch, Any amount of damage kills, KHM, KHM, 0.85, medium, 709, none, '1994-06-01', '2024-01-01', active, v2, 4.2, 800, none, http://rules.com/deathtouch, annual, 0);
INSERT INTO game_mechanics_evolution (mechanic_id, name, description, introduced_set_code, last_used_set_code, popularity_score, complexity_level, rulebook_section, designer_notes, date_introduced, date_last_used, status, version, impact_rating, affected_card_count, related_mechanics, documentation_url, review_cycle, archived_flag) VALUES ('MECH003', Flash, Can be cast anytime, KHM, KHM, 0.70, high, 707, none, '1995-09-20', '2023-11-15', deprecated, v1, 3.8, 350, none, http://rules.com/flash, biennial, 1);

-- Artwork release schedule
CREATE TABLE artwork_release_schedule
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    artwork_id TEXT NOT NULL,
    artist_name TEXT,
    set_code TEXT,
    release_date DATE,
    theme TEXT,
    file_format TEXT,
    resolution TEXT,
    color_profile TEXT,
    usage_type TEXT,
    copyright_year INTEGER,
    licensing_status TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    distribution_channel TEXT,
    priority_level TEXT,
    metadata_hash TEXT,
    preview_url TEXT,
    approval_status TEXT
);

INSERT INTO artwork_release_schedule (artwork_id, artist_name, set_code, release_date, theme, file_format, resolution, color_profile, usage_type, copyright_year, licensing_status, notes, created_at, updated_at, distribution_channel, priority_level, metadata_hash, preview_url, approval_status) VALUES ('ART001', JaneDoe, KHM, '2024-02-01', Dragons, PNG, 3000x4000, sRGB, illustration, 2024, licensed, none, '2024-01-15', '2024-01-20', web, high, abc123hash, http://preview.com/art1, pending);
INSERT INTO artwork_release_schedule (artwork_id, artist_name, set_code, release_date, theme, file_format, resolution, color_profile, usage_type, copyright_year, licensing_status, notes, created_at, updated_at, distribution_channel, priority_level, metadata_hash, preview_url, approval_status) VALUES ('ART002', JohnSmith, KHM, '2024-02-10', Cities, JPEG, 2500x3500, AdobeRGB, illustration, 2024, licensed, none, '2024-01-18', '2024-01-22', web, medium, def456hash, http://preview.com/art2, approved);
INSERT INTO artwork_release_schedule (artwork_id, artist_name, set_code, release_date, theme, file_format, resolution, color_profile, usage_type, copyright_year, licensing_status, notes, created_at, updated_at, distribution_channel, priority_level, metadata_hash, preview_url, approval_status) VALUES ('ART003', AliceLee, KHM, '2024-02-20', Mythic, PNG, 3500x5000, ProPhotoRGB, illustration, 2024, pending, none, '2024-01-20', '2024-01-25', web, low, ghi789hash, http://preview.com/art3, pending);

-- Locale translation statistics
CREATE TABLE locale_translation_stats
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    locale_code TEXT NOT NULL,
    total_strings INTEGER,
    translated_strings INTEGER,
    completion_percentage REAL,
    last_update DATE,
    translator_count INTEGER,
    reviewer_count INTEGER,
    quality_score REAL,
    average_translation_time REAL,
    missing_strings INTEGER,
    pending_review INTEGER,
    version TEXT,
    notes TEXT,
    export_path TEXT,
    import_path TEXT,
    created_at DATE,
    updated_at DATE,
    source_locale TEXT,
    sync_status TEXT
);

INSERT INTO locale_translation_stats (locale_code, total_strings, translated_strings, completion_percentage, last_update, translator_count, reviewer_count, quality_score, average_translation_time, missing_strings, pending_review, version, notes, export_path, import_path, created_at, updated_at, source_locale, sync_status) VALUES ('en_US', 5000, 5000, 100.0, '2024-03-01', 10, 5, 4.9, 2.5, 0, 0, v1, none, /exports/en_us.json, /imports/en_us.json, '2023-12-01', '2024-03-01', en_US, synced);
INSERT INTO locale_translation_stats (locale_code, total_strings, translated_strings, completion_percentage, last_update, translator_count, reviewer_count, quality_score, average_translation_time, missing_strings, pending_review, version, notes, export_path, import_path, created_at, updated_at, source_locale, sync_status) VALUES ('fr_FR', 5000, 4500, 90.0, '2024-03-02', 8, 4, 4.5, 3.0, 500, 20, v1, none, /exports/fr_fr.json, /imports/fr_fr.json, '2023-12-02', '2024-03-02', en_US, pending);
INSERT INTO locale_translation_stats (locale_code, total_strings, translated_strings, completion_percentage, last_update, translator_count, reviewer_count, quality_score, average_translation_time, missing_strings, pending_review, version, notes, export_path, import_path, created_at, updated_at, source_locale, sync_status) VALUES ('de_DE', 5000, 4800, 96.0, '2024-03-03', 9, 5, 4.7, 2.8, 200, 10, v1, none, /exports/de_de.json, /imports/de_de.json, '2023-12-03', '2024-03-03', en_US, synced);

-- Digital collectible events
CREATE TABLE digital_collectible_events
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    event_id TEXT NOT NULL,
    name TEXT,
    start_date DATE,
    end_date DATE,
    event_type TEXT,
    participants_limit INTEGER,
    reward_pool_usd REAL,
    sponsor_name TEXT,
    platform TEXT,
    description TEXT,
    registration_required INTEGER,
    max_entries_per_user INTEGER,
    entry_fee REAL,
    status TEXT,
    created_by_admin_id INTEGER,
    created_at DATE,
    updated_at DATE,
    leaderboard_url TEXT,
    ruleset_url TEXT
);

INSERT INTO digital_collectible_events (event_id, name, start_date, end_date, event_type, participants_limit, reward_pool_usd, sponsor_name, platform, description, registration_required, max_entries_per_user, entry_fee, status, created_by_admin_id, created_at, updated_at, leaderboard_url, ruleset_url) VALUES ('EVT001', SpringFestival, '2024-04-01', '2024-04-07', tournament, 500, 20000.00, SponsorX, web, seasonal event with special drops, 1, 3, 5.00, upcoming, 9001, '2024-02-15', '2024-02-15', http://leaderboard.com/evt1, http://rules.com/evt1);
INSERT INTO digital_collectible_events (event_id, name, start_date, end_date, event_type, participants_limit, reward_pool_usd, sponsor_name, platform, description, registration_required, max_entries_per_user, entry_fee, status, created_by_admin_id, created_at, updated_at, leaderboard_url, ruleset_url) VALUES ('EVT002', SummerShowdown, '2024-07-10', '2024-07-15', tournament, 1000, 50000.00, SponsorY, mobile, mid‑season competitive event, 1, 5, 10.00, upcoming, 9002, '2024-03-01', '2024-03-01', http://leaderboard.com/evt2, http://rules.com/evt2);
INSERT INTO digital_collectible_events (event_id, name, start_date, end_date, event_type, participants_limit, reward_pool_usd, sponsor_name, platform, description, registration_required, max_entries_per_user, entry_fee, status, created_by_admin_id, created_at, updated_at, leaderboard_url, ruleset_url) VALUES ('EVT003', AutumnArena, '2024-10-05', '2024-10-12', tournament, 750, 30000.00, SponsorZ, web, end‑of‑year championship, 1, 4, 7.50, upcoming, 9003, '2024-04-20', '2024-04-20', http://leaderboard.com/evt3, http://rules.com/evt3);