-- Table storing historical price data for individual cards across marketplaces
CREATE TABLE card_pricing_history (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    card_uuid TEXT,
    price_usd REAL,
    price_eur REAL,
    price_gbp REAL,
    source TEXT,
    listed_at DATE,
    seller_id INTEGER,
    condition TEXT,
    foil INTEGER,
    language TEXT,
    marketplace TEXT,
    volume INTEGER,
    currency TEXT,
    discount_percent REAL,
    is_verified INTEGER,
    batch_id INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    region TEXT
);

INSERT INTO card_pricing_history (id, card_uuid, price_usd, price_eur, price_gbp, source, listed_at, seller_id, condition, foil, language, marketplace, volume, currency, discount_percent, is_verified, batch_id, notes, created_at, updated_at, region)
VALUES (1, 'UUID001', 3.50, 3.20, 2.80, 'Scryfall', '2024-12-01', 101, 'NearMint', 0, 'English', 'Online', 150, 'USD', 0.0, 1, 5001, 'Initial listing', '2024-12-01', '2024-12-01', 'NA');
INSERT INTO card_pricing_history (id, card_uuid, price_usd, price_eur, price_gbp, source, listed_at, seller_id, condition, foil, language, marketplace, volume, currency, discount_percent, is_verified, batch_id, notes, created_at, updated_at, region)
VALUES (2, 'UUID002', 7.20, 6.50, 5.90, 'MTGGoldfish', '2024-12-05', 102, 'LightlyPlayed', 1, 'Japanese', 'Physical', 80, 'USD', 5.0, 1, 5002, 'Foil market', '2024-12-05', '2024-12-05', 'EU');
INSERT INTO card_pricing_history (id, card_uuid, price_usd, price_eur, price_gbp, source, listed_at, seller_id, condition, foil, language, marketplace, volume, currency, discount_percent, is_verified, batch_id, notes, created_at, updated_at, region)
VALUES (3, 'UUID003', 0.45, 0.40, 0.35, 'CardTrader', '2024-12-10', 103, 'Good', 0, 'German', 'Online', 300, 'USD', 0.0, 0, 5003, 'Bulk sale', '2024-12-10', '2024-12-10', 'AS');


-- Table tracking individual collectors' physical card holdings
CREATE TABLE collector_inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    collector_id INTEGER,
    card_uuid TEXT,
    quantity INTEGER,
    storage_location TEXT,
    container_type TEXT,
    acquisition_date DATE,
    purchase_price REAL,
    purchase_currency TEXT,
    condition TEXT,
    is_foil INTEGER,
    is_altered INTEGER,
    notes TEXT,
    valuation_usd REAL,
    valuation_eur REAL,
    last_inspection DATE,
    insured INTEGER,
    insurance_policy TEXT,
    insurance_value REAL,
    created_at DATE,
    updated_at DATE
);

INSERT INTO collector_inventory (id, collector_id, card_uuid, quantity, storage_location, container_type, acquisition_date, purchase_price, purchase_currency, condition, is_foil, is_altered, notes, valuation_usd, valuation_eur, last_inspection, insured, insurance_policy, insurance_value, created_at, updated_at)
VALUES (1, 2001, 'UUID001', 2, 'VaultA', 'Binder', '2022-03-15', 4.00, 'USD', 'NearMint', 0, 0, 'First acquisition', 8.00, 7.20, '2024-11-30', 1, 'PolicyA', 10.00, '2022-03-15', '2024-12-01');
INSERT INTO collector_inventory (id, collector_id, card_uuid, quantity, storage_location, container_type, acquisition_date, purchase_price, purchase_currency, condition, is_foil, is_altered, notes, valuation_usd, valuation_eur, last_inspection, insured, insurance_policy, insurance_value, created_at, updated_at)
VALUES (2, 2002, 'UUID002', 1, 'VaultB', 'Box', '2023-07-22', 7.50, 'USD', 'LightlyPlayed', 1, 0, 'Foil special edition', 15.00, 13.50, '2024-12-01', 0, NULL, 0, '2023-07-22', '2024-12-01');
INSERT INTO collector_inventory (id, collector_id, card_uuid, quantity, storage_location, container_type, acquisition_date, purchase_price, purchase_currency, condition, is_foil, is_altered, notes, valuation_usd, valuation_eur, last_inspection, insured, insurance_policy, insurance_value, created_at, updated_at)
VALUES (3, 2003, 'UUID003', 4, 'ShelfC', 'Sleeve', '2021-11-05', 0.30, 'USD', 'Good', 0, 1, 'Altered art', 1.20, 1.10, '2024-10-15', 1, 'PolicyB', 2.00, '2021-11-05', '2024-12-01');


-- Table describing planned and actual release timelines for sets
CREATE TABLE set_release_timeline (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    planned_release DATE,
    actual_release DATE,
    region TEXT,
    marketing_budget REAL,
    expected_cards INTEGER,
    actual_cards INTEGER,
    lead_time_days INTEGER,
    pre_release_events INTEGER,
    post_release_events INTEGER,
    primary_contact TEXT,
    status TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    distribution_partner TEXT,
    logistics_provider TEXT,
    shipping_window_days INTEGER,
    early_access INTEGER,
    promo_materials INTEGER
);

INSERT INTO set_release_timeline (id, set_code, planned_release, actual_release, region, marketing_budget, expected_cards, actual_cards, lead_time_days, pre_release_events, post_release_events, primary_contact, status, notes, created_at, updated_at, distribution_partner, logistics_provider, shipping_window_days, early_access, promo_materials)
VALUES (1, 'SETX', '2025-03-01', '2025-03-03', 'NA', 250000.00, 280, 282, 180, 5, 3, 'AliceSmith', 'Released', 'Minor delay due to printing', '2024-12-01', '2025-02-28', 'PartnerA', 'LogiX', 7, 0, 12);
INSERT INTO set_release_timeline (id, set_code, planned_release, actual_release, region, marketing_budget, expected_cards, actual_cards, lead_time_days, pre_release_events, post_release_events, primary_contact, status, notes, created_at, updated_at, distribution_partner, logistics_provider, shipping_window_days, early_access, promo_materials)
VALUES (2, 'SETY', '2025-06-15', '2025-06-15', 'EU', 180000.00, 210, 210, 150, 4, 2, 'BobJones', 'Released', 'On schedule', '2024-12-01', '2025-05-30', 'PartnerB', 'ShipFast', 5, 1, 8);
INSERT INTO set_release_timeline (id, set_code, planned_release, actual_release, region, marketing_budget, expected_cards, actual_cards, lead_time_days, pre_release_events, post_release_events, primary_contact, status, notes, created_at, updated_at, distribution_partner, logistics_provider, shipping_window_days, early_access, promo_materials)
VALUES (3, 'SETZ', '2025-09-10', '2025-09-12', 'AS', 220000.00, 250, 248, 200, 6, 4, 'CarolLee', 'Delayed', 'Supply chain issue', '2024-12-01', '2025-08-20', 'PartnerC', 'FastShip', 9, 0, 10);


-- Table cataloguing digital artwork asset files linked to cards
CREATE TABLE digital_artwork_assets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_uuid TEXT,
    card_uuid TEXT,
    artist_name TEXT,
    resolution_width INTEGER,
    resolution_height INTEGER,
    file_format TEXT,
    file_size_kb INTEGER,
    color_profile TEXT,
    version INTEGER,
    created_at DATE,
    updated_at DATE,
    usage_rights TEXT,
    licensed_to TEXT,
    expiration_date DATE,
    is_primary INTEGER,
    tags TEXT,
    watermark TEXT,
    source_url TEXT,
    checksum TEXT,
    attribution TEXT
);

INSERT INTO digital_artwork_assets (id, asset_uuid, card_uuid, artist_name, resolution_width, resolution_height, file_format, file_size_kb, color_profile, version, created_at, updated_at, usage_rights, licensed_to, expiration_date, is_primary, tags, watermark, source_url, checksum, attribution)
VALUES (1, 'ASSET001', 'UUID001', 'JohnDoe', 3000, 4200, 'PNG', 8500, 'sRGB', 1, '2024-01-01', '2024-01-02', 'Full', 'MTG', '2026-01-01', 1, 'creature,legendary', 'MTGLogo', 'http://art.example.com/asset001.png', 'AB12CD34', 'JohnDoeArt');
INSERT INTO digital_artwork_assets (id, asset_uuid, card_uuid, artist_name, resolution_width, resolution_height, file_format, file_size_kb, color_profile, version, created_at, updated_at, usage_rights, licensed_to, expiration_date, is_primary, tags, watermark, source_url, checksum, attribution)
VALUES (2, 'ASSET002', 'UUID002', 'JaneSmith', 2500, 3500, 'JPG', 7200, 'AdobeRGB', 2, '2024-02-10', '2024-02-11', 'Limited', 'PartnerX', '2025-12-31', 0, 'artifact,foil', 'PartnerXWatermark', 'http://art.example.com/asset002.jpg', 'EF56GH78', 'JaneSmithArt');
INSERT INTO digital_artwork_assets (id, asset_uuid, card_uuid, artist_name, resolution_width, resolution_height, file_format, file_size_kb, color_profile, version, created_at, updated_at, usage_rights, licensed_to, expiration_date, is_primary, tags, watermark, source_url, checksum, attribution)
VALUES (3, 'ASSET003', 'UUID003', 'MikeLee', 2000, 3000, 'TIFF', 9600, 'ProPhotoRGB', 1, '2024-03-15', '2024-03-16', 'Full', 'MTG', '2027-01-01', 1, 'sorcery,common', 'MTGLogo', 'http://art.example.com/asset003.tiff', 'IJ90KL12', 'MikeLeeArt');


-- Table summarizing season‑wide tournament statistics
CREATE TABLE tournament_season_summary (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    season_year INTEGER,
    season_name TEXT,
    total_events INTEGER,
    total_players INTEGER,
    avg_prize_pool REAL,
    top_player_uuid TEXT,
    champion_card_uuid TEXT,
    region TEXT,
    start_date DATE,
    end_date DATE,
    sponsor_main TEXT,
    sponsor_secondary TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    total_matches INTEGER,
    average_match_length_minutes REAL,
    peak_concurrent_viewers INTEGER,
    prize_distribution TEXT
);

INSERT INTO tournament_season_summary (id, season_year, season_name, total_events, total_players, avg_prize_pool, top_player_uuid, champion_card_uuid, region, start_date, end_date, sponsor_main, sponsor_secondary, notes, created_at, updated_at, total_matches, average_match_length_minutes, peak_concurrent_viewers, prize_distribution)
VALUES (1, 2024, 'Fall2024', 12, 3400, 25000.00, 'PLAYER001', 'UUID002', 'NA', '2024-09-01', '2024-11-30', 'SponsorA', 'SponsorB', 'High engagement', '2024-08-01', '2024-12-01', 4800, 18.5, 250000, 'Top10=60%;Rest=40%');
INSERT INTO tournament_season_summary (id, season_year, season_name, total_events, total_players, avg_prize_pool, top_player_uuid, champion_card_uuid, region, start_date, end_date, sponsor_main, sponsor_secondary, notes, created_at, updated_at, total_matches, average_match_length_minutes, peak_concurrent_viewers, prize_distribution)
VALUES (2, 2025, 'Spring2025', 10, 3000, 22000.00, 'PLAYER002', 'UUID005', 'EU', '2025-03-01', '2025-05-31', 'SponsorC', 'SponsorD', 'New format trial', '2025-02-01', '2025-06-01', 4000, 19.0, 180000, 'Top5=70%;Rest=30%');
INSERT INTO tournament_season_summary (id, season_year, season_name, total_events, total_players, avg_prize_pool, top_player_uuid, champion_card_uuid, region, start_date, end_date, sponsor_main, sponsor_secondary, notes, created_at, updated_at, total_matches, average_match_length_minutes, peak_concurrent_viewers, prize_distribution)
VALUES (3, 2025, 'Summer2025', 14, 3800, 27000.00, 'PLAYER003', 'UUID009', 'AS', '2025-06-15', '2025-09-15', 'SponsorE', 'SponsorF', 'Record attendance', '2025-05-01', '2025-09-20', 5600, 17.8, 300000, 'Top8=55%;Rest=45%');


-- Table logging individual player market transactions (buy/sell, trade, etc.)
CREATE TABLE player_market_transactions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    transaction_type TEXT,
    card_uuid TEXT,
    quantity INTEGER,
    price_per_unit REAL,
    total_price REAL,
    currency TEXT,
    transaction_date DATE,
    marketplace TEXT,
    order_id TEXT,
    payment_method TEXT,
    shipping_address TEXT,
    shipping_cost REAL,
    tax_amount REAL,
    discount_code TEXT,
    status TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    fulfillment_center TEXT
);

INSERT INTO player_market_transactions (id, player_id, transaction_type, card_uuid, quantity, price_per_unit, total_price, currency, transaction_date, marketplace, order_id, payment_method, shipping_address, shipping_cost, tax_amount, discount_code, status, notes, created_at, updated_at, fulfillment_center)
VALUES (1, 2001, 'Buy', 'UUID001', 1, 3.50, 3.50, 'USD', '2024-12-02', 'Online', 'ORD001', 'CreditCard', '123MainSt', 2.00, 0.35, NULL, 'Completed', 'First purchase of season', '2024-12-02', '2024-12-02', 'FC001');
INSERT INTO player_market_transactions (id, player_id, transaction_type, card_uuid, quantity, price_per_unit, total_price, currency, transaction_date, marketplace, order_id, payment_method, shipping_address, shipping_cost, tax_amount, discount_code, status, notes, created_at, updated_at, fulfillment_center)
VALUES (2, 2002, 'Sell', 'UUID002', 2, 7.00, 14.00, 'USD', '2024-12-06', 'Physical', 'ORD002', 'PayPal', '456ElmSt', 0.00, 0.00, NULL, 'Pending', 'Waiting for buyer confirmation', '2024-12-06', '2024-12-06', 'FC002');
INSERT INTO player_market_transactions (id, player_id, transaction_type, card_uuid, quantity, price_per_unit, total_price, currency, transaction_date, marketplace, order_id, payment_method, shipping_address, shipping_cost, tax_amount, discount_code, status, notes, created_at, updated_at, fulfillment_center)
VALUES (3, 2003, 'Trade', 'UUID003', 1, 0.00, 0.00, 'USD', '2024-12-10', 'Community', 'ORD003', 'N/A', '789PineRd', 0.00, 0.00, 'TRD2024', 'Completed', 'Traded for token', '2024-12-10', '2024-12-10', 'FC003');


-- Reference table for card mechanics and rule interactions
CREATE TABLE card_mechanics_reference (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    mechanic_id TEXT,
    name TEXT,
    description TEXT,
    first_appearance_set TEXT,
    rarity TEXT,
    cost TEXT,
    power_modifier TEXT,
    toughness_modifier TEXT,
    rules_text TEXT,
    official_status TEXT,
    related_mechanics TEXT,
    emblem_icon TEXT,
    is_hidden INTEGER,
    is_limited INTEGER,
    created_at DATE,
    updated_at DATE,
    source_document TEXT,
    external_link TEXT,
    example_cards TEXT,
    notes TEXT
);

INSERT INTO card_mechanics_reference (id, mechanic_id, name, description, first_appearance_set, rarity, cost, power_modifier, toughness_modifier, rules_text, official_status, related_mechanics, emblem_icon, is_hidden, is_limited, created_at, updated_at, source_document, external_link, example_cards, notes)
VALUES (1, 'MECH001', 'Deathtouch', 'Any amount of damage dealt by a source with deathtouch is enough to destroy a creature.', 'Alpha', 'Common', NULL, NULL, NULL, 'A creature with deathtouch destroys any creature it deals damage to.', 'Standard', NULL, NULL, 0, 0, '2024-01-01', '2024-01-01', 'CompRules', 'http://rules.example.com/deathtouch', 'UUID001,UUID004', NULL);
INSERT INTO card_mechanics_reference (id, mechanic_id, name, description, first_appearance_set, rarity, cost, power_modifier, toughness_modifier, rules_text, official_status, related_mechanics, emblem_icon, is_hidden, is_limited, created_at, updated_at, source_document, external_link, example_cards, notes)
VALUES (2, 'MECH002', 'Flying', 'A creature with flying can only be blocked by other creatures with flying or reach.', 'Beta', 'Uncommon', NULL, NULL, NULL, 'Flying creatures evade most blockers.', 'Standard', 'Reach', NULL, 0, 0, '2024-01-01', '2024-01-01', 'CompRules', 'http://rules.example.com/flying', 'UUID002,UUID005', NULL);
INSERT INTO card_mechanics_reference (id, mechanic_id, name, description, first_appearance_set, rarity, cost, power_modifier, toughness_modifier, rules_text, official_status, related_mechanics, emblem_icon, is_hidden, is_limited, created_at, updated_at, source_document, external_link, example_cards, notes)
VALUES (3, 'MECH003', 'Hexproof', 'This creature cannot be the target of spells or abilities your opponents control.', 'Legends', 'Rare', NULL, NULL, NULL, 'Hexproof protects a creature from opponent targeted effects.', 'Standard', 'Shroud', NULL, 0, 0, '2024-01-01', '2024-01-01', 'CompRules', 'http://rules.example.com/hexproof', 'UUID006,UUID007', NULL);


-- Table for logging distribution batches and logistics details
CREATE TABLE distribution_logistics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    batch_number TEXT,
    set_code TEXT,
    warehouse_id INTEGER,
    ship_date DATE,
    expected_arrival DATE,
    carrier TEXT,
    tracking_number TEXT,
    volume_cubic_meters REAL,
    weight_kg REAL,
    pallets INTEGER,
    containers INTEGER,
    destination_region TEXT,
    customs_status TEXT,
    inspection_passed INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    handler_name TEXT,
    temperature_controlled INTEGER,
    humidity_controlled INTEGER
);

INSERT INTO distribution_logistics (id, batch_number, set_code, warehouse_id, ship_date, expected_arrival, carrier, tracking_number, volume_cubic_meters, weight_kg, pallets, containers, destination_region, customs_status, inspection_passed, notes, created_at, updated_at, handler_name, temperature_controlled, humidity_controlled)
VALUES (1, 'BATCH001', 'SETX', 10, '2025-02-20', '2025-03-02', 'FastShip', 'TRK12345', 12.5, 3500.0, 25, 2, 'NA', 'Cleared', 1, 'First batch for spring release', '2024-12-01', '2024-12-01', 'JohnDoe', 0, 0);
INSERT INTO distribution_logistics (id, batch_number, set_code, warehouse_id, ship_date, expected_arrival, carrier, tracking_number, volume_cubic_meters, weight_kg, pallets, containers, destination_region, customs_status, inspection_passed, notes, created_at, updated_at, handler_name, temperature_controlled, humidity_controlled)
VALUES (2, 'BATCH002', 'SETY', 12, '2025-05-10', '2025-05-20', 'ShipFast', 'TRK67890', 10.0, 2800.0, 20, 1, 'EU', 'Pending', 0, 'Awaiting customs clearance', '2025-01-01', '2025-01-01', 'JaneSmith', 0, 0);
INSERT INTO distribution_logistics (id, batch_number, set_code, warehouse_id, ship_date, expected_arrival, carrier, tracking_number, volume_cubic_meters, weight_kg, pallets, containers, destination_region, customs_status, inspection_passed, notes, created_at, updated_at, handler_name, temperature_controlled, humidity_controlled)
VALUES (3, 'BATCH003', 'SETZ', 15, '2025-08-05', '2025-08-15', 'LogiX', 'TRK54321', 14.0, 4100.0, 30, 3, 'AS', 'Cleared', 1, 'Delayed due to weather', '2025-02-01', '2025-02-01', 'MikeLee', 1, 1);


-- Table for sponsor activation events at tournaments and conventions
CREATE TABLE sponsor_activation_events (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    event_id INTEGER,
    activation_type TEXT,
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    location TEXT,
    staff_assigned INTEGER,
    budget_usd REAL,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    promo_code TEXT,
    material_url TEXT,
    compliance_status TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    brand_representative TEXT,
    on_site_media INTEGER,
    post_event_report TEXT
);

INSERT INTO sponsor_activation_events (id, sponsor_id, event_id, activation_type, start_time, end_time, location, staff_assigned, budget_usd, impressions, clicks, conversions, promo_code, material_url, compliance_status, notes, created_at, updated_at, brand_representative, on_site_media, post_event_report)
VALUES (1, 301, 401, 'Booth', '2024-12-01 09:00:00', '2024-12-01 17:00:00', 'HallA', 5, 15000.00, 20000, 350, 45, 'PROMO10', 'http://sponsor.example.com/banner1.png', 'Approved', 'High foot traffic', '2024-11-01', '2024-12-02', 'AliceSmith', 1, 'Report1');
INSERT INTO sponsor_activation_events (id, sponsor_id, event_id, activation_type, start_time, end_time, location, staff_assigned, budget_usd, impressions, clicks, conversions, promo_code, material_url, compliance_status, notes, created_at, updated_at, brand_representative, on_site_media, post_event_report)
VALUES (2, 302, 402, 'Giveaway', '2025-03-15 10:00:00', '2025-03-15 12:00:00', 'StageB', 3, 8000.00, 12000, 500, 80, 'FREECARD', 'http://sponsor.example.com/giveaway.pdf', 'Approved', 'Popular among players', '2025-02-01', '2025-03-16', 'BobJones', 0, 'Report2');
INSERT INTO sponsor_activation_events (id, sponsor_id, event_id, activation_type, start_time, end_time, location, staff_assigned, budget_usd, impressions, clicks, conversions, promo_code, material_url, compliance_status, notes, created_at, updated_at, brand_representative, on_site_media, post_event_report)
VALUES (3, 303, 403, 'LiveStream', '2025-06-20 14:00:00', '2025-06-20 16:00:00', 'Online', 2, 5000.00, 30000, 2500, 300, 'STREAM20', 'http://sponsor.example.com/stream.jpg', 'Approved', 'Integrated with official stream', '2025-05-01', '2025-06-21', 'CarolLee', 1, 'Report3');


-- Table logging environmental sensor readings inside venues
CREATE TABLE venue_environmental_log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    log_timestamp TIMESTAMP,
    temperature_c REAL,
    humidity_percent REAL,
    noise_level_db INTEGER,
    air_quality_index INTEGER,
    co2_ppm INTEGER,
    occupancy INTEGER,
    incident_report TEXT,
    sensor_id TEXT,
    power_status INTEGER,
    network_status INTEGER,
    maintenance_required INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    external_weather_source TEXT,
    weather_condition TEXT,
    temperature_trend TEXT
);

INSERT INTO venue_environmental_log (id, venue_id, log_timestamp, temperature_c, humidity_percent, noise_level_db, air_quality_index, co2_ppm, occupancy, incident_report, sensor_id, power_status, network_status, maintenance_required, notes, created_at, updated_at, external_weather_source, weather_condition, temperature_trend)
VALUES (1, 501, '2024-12-01 10:00:00', 22.5, 45.0, 60, 35, 600, 150, NULL, 'SENSOR01', 1, 1, 0, 'Normal operation', '2024-12-01', '2024-12-01', 'NOAA', 'Clear', 'Stable');
INSERT INTO venue_environmental_log (id, venue_id, log_timestamp, temperature_c, humidity_percent, noise_level_db, air_quality_index, co2_ppm, occupancy, incident_report, sensor_id, power_status, network_status, maintenance_required, notes, created_at, updated_at, external_weather_source, weather_condition, temperature_trend)
VALUES (2, 502, '2024-12-01 10:05:00', 23.0, 48.0, 62, 40, 620, 200, 'SmokeDetected', 'SENSOR02', 1, 0, 1, 'Ventilation check needed', '2024-12-01', '2024-12-01', 'AccuWeather', 'Cloudy', 'Rising');
INSERT INTO venue_environmental_log (id, venue_id, log_timestamp, temperature_c, humidity_percent, noise_level_db, air_quality_index, co2_ppm, occupancy, incident_report, sensor_id, power_status, network_status, maintenance_required, notes, created_at, updated_at, external_weather_source, weather_condition, temperature_trend)
VALUES (3, 503, '2024-12-01 10:10:00', 21.8, 44.5, 58, 30, 580, 120, NULL, 'SENSOR03', 1, 1, 0, 'All systems normal', '2024-12-01', '2024-12-01', 'WeatherCom', 'Clear', 'Stable');