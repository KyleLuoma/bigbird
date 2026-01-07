-- Arcane energy stations storing power generation data
CREATE TABLE arcane_energy_stations (
    station_id INTEGER PRIMARY KEY AUTOINCREMENT,
    station_name TEXT,
    location TEXT,
    latitude REAL,
    longitude REAL,
    activation_date DATE,
    power_output REAL,
    energy_type TEXT,
    maintenance_cycle_days INTEGER,
    last_maintenance DATE,
    status TEXT,
    operator TEXT,
    capacity_mw REAL,
    season TEXT,
    climate_zone TEXT,
    sensor_count INTEGER,
    firmware_version TEXT,
    uptime_hours INTEGER,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO arcane_energy_stations (station_name, location, latitude, longitude, activation_date, power_output, energy_type, maintenance_cycle_days, last_maintenance, status, operator, capacity_mw, season, climate_zone, sensor_count, firmware_version, uptime_hours, notes, created_at, updated_at) VALUES ('Aether Core Alpha', 'Nimbus Valley', 45.1234, -122.5678, '2022-03-15', 120.5, 'Essence', 180, '2023-09-01', 'Active', 'Celestia Corp', 150.0, 'Summer', 'Temperate', 12, 'v1.2.3', 8600, 'Initial deployment', '2023-01-01 08:00:00', '2023-01-01 08:00:00');
INSERT INTO arcane_energy_stations (station_name, location, latitude, longitude, activation_date, power_output, energy_type, maintenance_cycle_days, last_maintenance, status, operator, capacity_mw, season, climate_zone, sensor_count, firmware_version, uptime_hours, notes, created_at, updated_at) VALUES ('Rune Generator Beta', 'Eldritch Plains', 60.9876, 15.4321, '2021-11-05', 95.2, 'Rune', 200, '2023-07-20', 'Maintenance', 'Arcane Industries', 100.0, 'Winter', 'Arctic', 10, 'v2.0.1', 7200, 'Scheduled upkeep', '2023-01-02 09:30:00', '2023-01-02 09:30:00');
INSERT INTO arcane_energy_stations (station_name, location, latitude, longitude, activation_date, power_output, energy_type, maintenance_cycle_days, last_maintenance, status, operator, capacity_mw, season, climate_zone, sensor_count, firmware_version, uptime_hours, notes, created_at, updated_at) VALUES ('Mystic Prism Gamma', 'Crystal Cove', 33.5555, -44.7777, '2023-01-20', 130.0, 'Prism', 150, '2023-08-15', 'Active', 'Mystic Labs', 160.0, 'Spring', 'Tropical', 14, 'v1.5.0', 3100, 'High efficiency', '2023-01-03 10:45:00', '2023-01-03 10:45:00');

-- Environmental logs collected at venues during events
CREATE TABLE venue_environmental_logs (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_code TEXT,
    log_timestamp DATETIME,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm REAL,
    noise_db REAL,
    particulate_pm25 REAL,
    particulate_pm10 REAL,
    light_lux REAL,
    vibration_g REAL,
    air_quality_index INTEGER,
    water_leak INTEGER,
    power_usage_kw REAL,
    water_usage_l REAL,
    waste_kg REAL,
    staff_on_shift INTEGER,
    comments TEXT,
    recorded_by TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO venue_environmental_logs (venue_code, log_timestamp, temperature_c, humidity_percent, co2_ppm, noise_db, particulate_pm25, particulate_pm10, light_lux, vibration_g, air_quality_index, water_leak, power_usage_kw, water_usage_l, waste_kg, staff_on_shift, comments, recorded_by, created_at, updated_at) VALUES ('VEN001', '2023-09-15 14:00:00', 22.5, 45.0, 420.0, 68.0, 12.3, 25.7, 3000, 0.02, 42, 0, 150.0, 200.0, 5.0, 12, 'Normal operation', 'system', '2023-09-15 14:05:00', '2023-09-15 14:05:00');
INSERT INTO venue_environmental_logs (venue_code, log_timestamp, temperature_c, humidity_percent, co2_ppm, noise_db, particulate_pm25, particulate_pm10, light_lux, vibration_g, air_quality_index, water_leak, power_usage_kw, water_usage_l, waste_kg, staff_on_shift, comments, recorded_by, created_at, updated_at) VALUES ('VEN002', '2023-09-15 14:00:00', 19.8, 50.2, 380.0, 72.0, 10.5, 22.0, 2800, 0.01, 38, 1, 165.5, 210.0, 4.2, 10, 'Minor leak detected', 'sensor', '2023-09-15 14:05:00', '2023-09-15 14:05:00');
INSERT INTO venue_environmental_logs (venue_code, log_timestamp, temperature_c, humidity_percent, co2_ppm, noise_db, particulate_pm25, particulate_pm10, light_lux, vibration_g, air_quality_index, water_leak, power_usage_kw, water_usage_l, waste_kg, staff_on_shift, comments, recorded_by, created_at, updated_at) VALUES ('VEN003', '2023-09-15 14:00:00', 24.1, 40.5, 450.0, 65.0, 14.0, 30.0, 3200, 0.03, 45, 0, 140.0, 190.0, 6.1, 8, 'High CO2, increase ventilation', 'operator', '2023-09-15 14:05:00', '2023-09-15 14:05:00');

-- Fitness metrics recorded for players
CREATE TABLE player_fitness_metrics (
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    session_date DATE,
    steps INTEGER,
    distance_km REAL,
    avg_heart_rate INTEGER,
    max_heart_rate INTEGER,
    calories_burned INTEGER,
    sleep_hours REAL,
    stress_level INTEGER,
    hydration_ml INTEGER,
    muscle_mass_percent REAL,
    body_fat_percent REAL,
    bmi REAL,
    vo2_max REAL,
    training_type TEXT,
    duration_minutes INTEGER,
    notes TEXT,
    recorded_by TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO player_fitness_metrics (player_id, session_date, steps, distance_km, avg_heart_rate, max_heart_rate, calories_burned, sleep_hours, stress_level, hydration_ml, muscle_mass_percent, body_fat_percent, bmi, vo2_max, training_type, duration_minutes, notes, recorded_by, created_at, updated_at) VALUES (101, '2023-09-10', 8500, 6.2, 120, 158, 540, 7.5, 3, 2100, 45.0, 18.5, 22.1, 48.2, 'Cardio', 45, 'Felt good', 'app', '2023-09-10 08:00:00', '2023-09-10 08:00:00');
INSERT INTO player_fitness_metrics (player_id, session_date, steps, distance_km, avg_heart_rate, max_heart_rate, calories_burned, sleep_hours, stress_level, hydration_ml, muscle_mass_percent, body_fat_percent, bmi, vo2_max, training_type, duration_minutes, notes, recorded_by, created_at, updated_at) VALUES (102, '2023-09-11', 12000, 9.5, 130, 165, 720, 6.8, 4, 2500, 48.2, 15.3, 24.0, 52.0, 'HIIT', 30, 'Intense session', 'wearable', '2023-09-11 09:30:00', '2023-09-11 09:30:00');
INSERT INTO player_fitness_metrics (player_id, session_date, steps, distance_km, avg_heart_rate, max_heart_rate, calories_burned, sleep_hours, stress_level, hydration_ml, muscle_mass_percent, body_fat_percent, bmi, vo2_max, training_type, duration_minutes, notes, recorded_by, created_at, updated_at) VALUES (103, '2023-09-12', 4000, 3.0, 110, 150, 350, 8.2, 2, 1800, 42.5, 20.1, 23.5, 45.7, 'Yoga', 60, 'Recovery day', 'app', '2023-09-12 07:45:00', '2023-09-12 07:45:00');

-- Inventory of arcane artifacts held in secure vaults
CREATE TABLE arcane_artifact_inventory (
    artifact_id INTEGER PRIMARY KEY AUTOINCREMENT,
    artifact_name TEXT,
    rarity TEXT,
    origin_world TEXT,
    discovered_date DATE,
    current_location TEXT,
    condition TEXT,
    magical_energy REAL,
    containment_level INTEGER,
    last_examined DATE,
    examiner TEXT,
    custodian TEXT,
    preservation_method TEXT,
    vault_number TEXT,
    insurance_value REAL,
    loan_status TEXT,
    loan_to TEXT,
    loan_end_date DATE,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO arcane_artifact_inventory (artifact_name, rarity, origin_world, discovered_date, current_location, condition, magical_energy, containment_level, last_examined, examiner, custodian, preservation_method, vault_number, insurance_value, loan_status, loan_to, loan_end_date, notes, created_at, updated_at) VALUES ('Scepter of Dawn', 'Legendary', 'Eldoria', '2019-04-12', 'Vault A1', 'Excellent', 98.7, 5, '2023-06-01', 'Archmage Lira', 'Keeper Thorne', 'Cryogenic', 'VLT001', 2500000.0, 'Available', NULL, NULL, 'Never loaned', '2023-01-05 11:00:00', '2023-01-05 11:00:00');
INSERT INTO arcane_artifact_inventory (artifact_name, rarity, origin_world, discovered_date, current_location, condition, magical_energy, containment_level, last_examined, examiner, custodian, preservation_method, vault_number, insurance_value, loan_status, loan_to, loan_end_date, notes, created_at, updated_at) VALUES ('Obsidian Mirror', 'Rare', 'Umbrav', '2020-11-23', 'Vault B3', 'Good', 74.3, 4, '2023-07-15', 'Sage Orin', 'Keeper Vela', 'Magnetic', 'VLT045', 720000.0, 'On Loan', 'Arcane Museum', '2024-02-28', 'Loan for exhibition', '2023-02-10 09:30:00', '2023-02-10 09:30:00');
INSERT INTO arcane_artifact_inventory (artifact_name, rarity, origin_world, discovered_date, current_location, condition, magical_energy, containment_level, last_examined, examiner, custodian, preservation_method, vault_number, insurance_value, loan_status, loan_to, loan_end_date, notes, created_at, updated_at) VALUES ('Flameheart Amulet', 'Uncommon', 'Pyros', '2021-07-05', 'Vault C2', 'Fair', 55.0, 3, '2023-05-20', 'Mage Selene', 'Keeper Drax', 'Fireproof', 'VLT078', 310000.0, 'Available', NULL, NULL, 'Requires periodic recharging', '2023-03-15 14:20:00', '2023-03-15 14:20:00');

-- Market statistics for digital collectible trading
CREATE TABLE digital_collectible_market_stats (
    stat_id INTEGER PRIMARY KEY AUTOINCREMENT,
    market_date DATE,
    total_volume REAL,
    average_price REAL,
    median_price REAL,
    highest_price REAL,
    lowest_price REAL,
    unique_collectibles INTEGER,
    active_traders INTEGER,
    new_listings INTEGER,
    sold_items INTEGER,
    transaction_fee_percent REAL,
    platform TEXT,
    region TEXT,
    currency TEXT,
    exchange_rate REAL,
    market_sentiment TEXT,
    volatility_index REAL,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO digital_collectible_market_stats (market_date, total_volume, average_price, median_price, highest_price, lowest_price, unique_collectibles, active_traders, new_listings, sold_items, transaction_fee_percent, platform, region, currency, exchange_rate, market_sentiment, volatility_index, notes, created_at, updated_at) VALUES ('2023-09-14', 1250000.0, 45.3, 40.0, 250.0, 5.0, 3400, 820, 150, 140, 2.5, 'CollectiX', 'NA', 'USD', 1.0, 'Bullish', 0.12, 'Stable growth', '2023-09-14 12:00:00', '2023-09-14 12:00:00');
INSERT INTO digital_collectible_market_stats (market_date, total_volume, average_price, median_price, highest_price, lowest_price, unique_collectibles, active_traders, new_listings, sold_items, transaction_fee_percent, platform, region, currency, exchange_rate, market_sentiment, volatility_index, notes, created_at, updated_at) VALUES ('2023-09-15', 1325000.0, 47.1, 42.5, 260.0, 6.0, 3550, 845, 160, 152, 2.4, 'CollectiX', 'EU', 'EUR', 0.92, 'Bullish', 0.11, 'Slight uptick', '2023-09-15 12:00:00', '2023-09-15 12:00:00');
INSERT INTO digital_collectible_market_stats (market_date, total_volume, average_price, median_price, highest_price, lowest_price, unique_collectibles, active_traders, new_listings, sold_items, transaction_fee_percent, platform, region, currency, exchange_rate, market_sentiment, volatility_index, notes, created_at, updated_at) VALUES ('2023-09-16', 1198000.0, 44.0, 39.8, 245.0, 4.8, 3320, 800, 148, 138, 2.6, 'CollectiX', 'APAC', 'JPY', 110.0, 'Neutral', 0.13, 'Minor pullback', '2023-09-16 12:00:00', '2023-09-16 12:00:00');

-- Production schedule for card sets
CREATE TABLE set_production_schedule (
    schedule_id INTEGER PRIMARY KEY AUTOINCREMENT,
    set_code TEXT,
    phase TEXT,
    start_date DATE,
    end_date DATE,
    responsible_team TEXT,
    resources_allocated INTEGER,
    budget_usd REAL,
    milestone TEXT,
    progress_percent INTEGER,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    external_dependency TEXT,
    dependency_status TEXT,
    risk_level TEXT,
    contingency_plan TEXT,
    approval_status TEXT,
    approved_by TEXT,
    revision_number INTEGER
);

INSERT INTO set_production_schedule (set_code, phase, start_date, end_date, responsible_team, resources_allocated, budget_usd, milestone, progress_percent, notes, created_at, updated_at, external_dependency, dependency_status, risk_level, contingency_plan, approval_status, approved_by, revision_number) VALUES ('ST01', 'Concept', '2023-01-05', '2023-02-20', 'Design Team', 5, 250000.0, 'Initial Designs', 100, 'Concept approved', '2023-01-05 09:00:00', '2023-01-05 09:00:00', 'Art Outsource', 'Pending', 'Medium', 'Alternative art vendor', 'Pending', NULL, 1);
INSERT INTO set_production_schedule (set_code, phase, start_date, end_date, responsible_team, resources_allocated, budget_usd, milestone, progress_percent, notes, created_at, updated_at, external_dependency, dependency_status, risk_level, contingency_plan, approval_status, approved_by, revision_number) VALUES ('ST01', 'Illustration', '2023-02-21', '2023-04-10', 'Art Team', 12, 400000.0, 'Illustrations Complete', 60, 'On track', '2023-02-21 10:15:00', '2023-02-21 10:15:00', 'Print Vendor', 'Confirmed', 'Low', 'Buffer stock', 'Approved', 'Director Art', 2);
INSERT INTO set_production_schedule (set_code, phase, start_date, end_date, responsible_team, resources_allocated, budget_usd, milestone, progress_percent, notes, created_at, updated_at, external_dependency, dependency_status, risk_level, contingency_plan, approval_status, approved_by, revision_number) VALUES ('ST01', 'Printing', '2023-04-11', '2023-05-30', 'Production Team', 8, 350000.0, 'First Run Finished', 0, 'Awaiting materials', '2023-04-11 08:45:00', '2023-04-11 08:45:00', 'Paper Supplier', 'On Hold', 'High', 'Alternative supplier', 'Pending', NULL, 3);

-- Inventory of streaming ad slots
CREATE TABLE streaming_ad_inventory (
    inventory_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ad_campaign_id INTEGER,
    platform TEXT,
    ad_slot TEXT,
    start_time DATETIME,
    end_time DATETIME,
    duration_seconds INTEGER,
    impressions INTEGER,
    clicks INTEGER,
    ctr REAL,
    cpm REAL,
    cpc REAL,
    targeting_audience TEXT,
    geographic_target TEXT,
    device_target TEXT,
    budget_usd REAL,
    spend_usd REAL,
    status TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    notes TEXT
);

INSERT INTO streaming_ad_inventory (ad_campaign_id, platform, ad_slot, start_time, end_time, duration_seconds, impressions, clicks, ctr, cpm, cpc, targeting_audience, geographic_target, device_target, budget_usd, spend_usd, status, created_at, updated_at, notes) VALUES (2001, 'StreamHub', 'PreRoll', '2023-09-20 08:00:00', '2023-09-20 08:30:00', 30, 50000, 800, 1.6, 12.0, 1.5, 'Gamers', 'NA', 'Desktop', 1500.0, 1200.0, 'Active', '2023-09-01 07:00:00', '2023-09-01 07:00:00', 'High CPV segment');
INSERT INTO streaming_ad_inventory (ad_campaign_id, platform, ad_slot, start_time, end_time, duration_seconds, impressions, clicks, ctr, cpm, cpc, targeting_audience, geographic_target, device_target, budget_usd, spend_usd, status, created_at, updated_at, notes) VALUES (2002, 'ViewLive', 'MidRoll', '2023-09-21 14:15:00', '2023-09-21 14:45:00', 45, 75000, 950, 1.27, 10.5, 1.1, 'Collectors', 'EU', 'Mobile', 2000.0, 1800.0, 'Scheduled', '2023-09-02 09:30:00', '2023-09-02 09:30:00', 'Mid tier audience');
INSERT INTO streaming_ad_inventory (ad_campaign_id, platform, ad_slot, start_time, end_time, duration_seconds, impressions, clicks, ctr, cpm, cpc, targeting_audience, geographic_target, device_target, budget_usd, spend_usd, status, created_at, updated_at, notes) VALUES (2003, 'GameCast', 'PostRoll', '2023-09-22 20:00:00', '2023-09-22 20:30:00', 60, 60000, 500, 0.83, 9.0, 0.9, 'Casual', 'APAC', 'Tablet', 1200.0, 1000.0, 'Completed', '2023-09-03 10:45:00', '2023-09-03 10:45:00', 'Low engagement');

-- Metrics tracking sponsor engagement across events
CREATE TABLE sponsor_engagement_metrics (
    metric_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    engagement_type TEXT,
    event_code TEXT,
    participants INTEGER,
    impressions INTEGER,
    leads_generated INTEGER,
    revenue_attributed REAL,
    cost_usd REAL,
    roi REAL,
    start_date DATE,
    end_date DATE,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    channel TEXT,
    geographic_region TEXT,
    engagement_score INTEGER,
    feedback_score INTEGER,
    survey_responses INTEGER
);

INSERT INTO sponsor_engagement_metrics (sponsor_id, engagement_type, event_code, participants, impressions, leads_generated, revenue_attributed, cost_usd, roi, start_date, end_date, notes, created_at, updated_at, channel, geographic_region, engagement_score, feedback_score, survey_responses) VALUES (301, 'Booth', 'EVT100', 1200, 350000, 240, 50000.0, 20000.0, 2.5, '2023-08-01', '2023-08-03', 'Strong booth traffic', '2023-08-01 08:00:00', '2023-08-01 08:00:00', 'OnSite', 'NA', 85, 90, 400);
INSERT INTO sponsor_engagement_metrics (sponsor_id, engagement_type, event_code, participants, impressions, leads_generated, revenue_attributed, cost_usd, roi, start_date, end_date, notes, created_at, updated_at, channel, geographic_region, engagement_score, feedback_score, survey_responses) VALUES (302, 'Digital', 'EVT101', 800, 200000, 150, 30000.0, 15000.0, 2.0, '2023-09-10', '2023-09-12', 'Effective online banners', '2023-09-10 09:30:00', '2023-09-10 09:30:00', 'Online', 'EU', 78, 85, 250);
INSERT INTO sponsor_engagement_metrics (sponsor_id, engagement_type, event_code, participants, impressions, leads_generated, revenue_attributed, cost_usd, roi, start_date, end_date, notes, created_at, updated_at, channel, geographic_region, engagement_score, feedback_score, survey_responses) VALUES (303, 'VIP Lounge', 'EVT102', 300, 90000, 80, 20000.0, 12000.0, 1.67, '2023-07-15', '2023-07-16', 'Exclusive networking', '2023-07-15 10:00:00', '2023-07-15 10:00:00', 'OnSite', 'APAC', 82, 88, 180);

-- Constraints applied to deck building
CREATE TABLE deck_build_constraints (
    constraint_id INTEGER PRIMARY KEY AUTOINCREMENT,
    deck_id INTEGER,
    max_cards INTEGER,
    min_mana_curve REAL,
    max_mana_curve REAL,
    allowed_colors TEXT,
    banned_cards TEXT,
    limited_cards TEXT,
    max_copies_per_card INTEGER,
    sideboard_size INTEGER,
    theme TEXT,
    allowed_formats TEXT,
    creator TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    notes TEXT,
    constraint_version INTEGER,
    approval_status TEXT,
    approved_by TEXT,
    review_date DATE
);

INSERT INTO deck_build_constraints (deck_id, max_cards, min_mana_curve, max_mana_curve, allowed_colors, banned_cards, limited_cards, max_copies_per_card, sideboard_size, theme, allowed_formats, creator, created_at, updated_at, notes, constraint_version, approval_status, approved_by, review_date) VALUES (401, 60, 1.5, 5.0, 'WUBRG', 'CardA,CardB', 'CardC', 4, 15, 'Aggro', 'Standard,Modern', 'DesignerX', '2023-06-01 12:00:00', '2023-06-01 12:00:00', 'Standard aggro constraints', 1, 'Approved', 'LeadDesigner', '2023-05-28');
INSERT INTO deck_build_constraints (deck_id, max_cards, min_mana_curve, max_mana_curve, allowed_colors, banned_cards, limited_cards, max_copies_per_card, sideboard_size, theme, allowed_formats, creator, created_at, updated_at, notes, constraint_version, approval_status, approved_by, review_date) VALUES (402, 60, 2.0, 6.0, 'UBR', 'CardD', 'CardE,CardF', 4, 15, 'Midrange', 'Pauper,Legacy', 'DesignerY', '2023-07-10 14:30:00', '2023-07-10 14:30:00', 'Midrange with blue and black', 1, 'Pending', NULL, NULL);
INSERT INTO deck_build_constraints (deck_id, max_cards, min_mana_curve, max_mana_curve, allowed_colors, banned_cards, limited_cards, max_copies_per_card, sideboard_size, theme, allowed_formats, creator, created_at, updated_at, notes, constraint_version, approval_status, approved_by, review_date) VALUES (403, 60, 0.5, 4.5, 'G', 'CardG,CardH', 'CardI', 4, 15, 'Ramp', 'Commander', 'DesignerZ', '2023-08-05 09:15:00', '2023-08-05 09:15:00', 'Green ramp focus', 2, 'Approved', 'ChiefEditor', '2023-08-01');

-- Resources allocated for event logistics
CREATE TABLE event_logistics_resources (
    resource_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_code TEXT,
    resource_type TEXT,
    quantity INTEGER,
    unit TEXT,
    supplier TEXT,
    cost_usd REAL,
    allocated_date DATE,
    return_date DATE,
    condition_status TEXT,
    responsible_staff TEXT,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    location TEXT,
    priority_level INTEGER,
    usage_type TEXT,
    maintenance_required INTEGER,
    maintenance_date DATE,
    compliance_status TEXT
);

INSERT INTO event_logistics_resources (event_code, resource_type, quantity, unit, supplier, cost_usd, allocated_date, return_date, condition_status, responsible_staff, notes, created_at, updated_at, location, priority_level, usage_type, maintenance_required, maintenance_date, compliance_status) VALUES ('EVT200', 'Tables', 50, 'pieces', 'EventCo', 2500.0, '2023-09-01', '2023-09-05', 'Good', 'LogisticsLead', 'Standard folding tables', '2023-08-20 11:00:00', '2023-08-20 11:00:00', 'Hall A', 1, 'Setup', 0, NULL, 'Compliant');
INSERT INTO event_logistics_resources (event_code, resource_type, quantity, unit, supplier, cost_usd, allocated_date, return_date, condition_status, responsible_staff, notes, created_at, updated_at, location, priority_level, usage_type, maintenance_required, maintenance_date, compliance_status) VALUES ('EVT200', 'Projectors', 8, 'units', 'VisualTech', 4800.0, '2023-09-01', '2023-09-05', 'Excellent', 'AVTeam', '4K projectors for main stage', '2023-08-20 11:15:00', '2023-08-20 11:15:00', 'Main Hall', 2, 'Presentation', 1, '2023-09-02', 'Compliant');
INSERT INTO event_logistics_resources (event_code, resource_type, quantity, unit, supplier, cost_usd, allocated_date, return_date, condition_status, responsible_staff, notes, created_at, updated_at, location, priority_level, usage_type, maintenance_required, maintenance_date, compliance_status) VALUES ('EVT200', 'Chairs', 300, 'pieces', 'SeatingSolutions', 1500.0, '2023-09-01', '2023-09-05', 'Good', 'LogisticsLead', 'Standard banquet chairs', '2023-08-20 11:30:00', '2023-08-20 11:30:00', 'Hall B', 1, 'Seating', 0, NULL, 'Compliant');