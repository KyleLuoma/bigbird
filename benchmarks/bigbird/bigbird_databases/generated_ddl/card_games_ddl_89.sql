-- Arcane device inventory table
CREATE TABLE arcane_device_inventory (
    device_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    device_name TEXT,
    device_type TEXT,
    power_rating REAL,
    mana_consumption REAL,
    location TEXT,
    status TEXT,
    installed_date DATE,
    last_maintenance DATE,
    firmware_version TEXT,
    manufacturer TEXT,
    warranty_years INTEGER,
    serial_number TEXT,
    activation_code TEXT,
    cooldown_seconds INTEGER,
    rarity TEXT,
    element_affinity TEXT,
    durability INTEGER,
    upgrade_level INTEGER,
    notes TEXT
);

INSERT INTO arcane_device_inventory (device_name, device_type, power_rating, mana_consumption, location, status, installed_date, last_maintenance, firmware_version, manufacturer, warranty_years, serial_number, activation_code, cooldown_seconds, rarity, element_affinity, durability, upgrade_level, notes) VALUES ('Elder Wand', 'Wand', 95.5, 12.3, 'Tower Lab', 'Active', '2022-06-15', '2023-01-10', 'v2.1', 'Arcane Works', 5, 'SN12345', 'ACT987', 30, 'Legendary', 'Arcane', 100, 3, 'Primary research wand');
INSERT INTO arcane_device_inventory (device_name, device_type, power_rating, mana_consumption, location, status, installed_date, last_maintenance, firmware_version, manufacturer, warranty_years, serial_number, activation_code, cooldown_seconds, rarity, element_affinity, durability, upgrade_level, notes) VALUES ('Crystal Focus', 'Focus', 45.0, 8.7, 'Observatory', 'Idle', '2021-09-20', '2022-12-05', 'v1.8', 'Mystic Glass', 3, 'SN67890', 'ACT321', 20, 'Rare', 'Light', 85, 1, 'Used for stellarmancy');
INSERT INTO arcane_device_inventory (device_name, device_type, power_rating, mana_consumption, location, status, installed_date, last_maintenance, firmware_version, manufacturer, warranty_years, serial_number, activation_code, cooldown_seconds, rarity, element_affinity, durability, upgrade_level, notes) VALUES ('Obsidian Shield', 'Shield', 120.0, 15.0, 'Defense Bay', 'Active', '2020-03-01', '2023-03-22', 'v3.0', 'Stoneforge', 7, 'SN54321', 'ACT654', 45, 'Epic', 'Earth', 150, 2, 'Provides elemental resistance');

-- Multiverse portal logs table
CREATE TABLE multiverse_portal_logs (
    portal_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    origin_world TEXT,
    destination_world TEXT,
    activation_timestamp DATE,
    deactivation_timestamp DATE,
    energy_cost REAL,
    portal_stability REAL,
    operator_id INTEGER,
    security_clearance TEXT,
    logs TEXT,
    maintenance_cycle INTEGER,
    anomaly_detected INTEGER,
    anomaly_type TEXT,
    portal_status TEXT,
    last_inspection DATE,
    calibration_offset REAL,
    max_capacity INTEGER,
    current_load INTEGER,
    firmware_checksum TEXT,
    remarks TEXT
);

INSERT INTO multiverse_portal_logs (origin_world, destination_world, activation_timestamp, deactivation_timestamp, energy_cost, portal_stability, operator_id, security_clearance, logs, maintenance_cycle, anomaly_detected, anomaly_type, portal_status, last_inspection, calibration_offset, max_capacity, current_load, firmware_checksum, remarks) VALUES ('Terra', 'Eldoria', '2023-04-01', '2023-04-01', 2500.75, 0.98, 101, 'Level5', 'Stable activation', 30, 0, NULL, 'Online', '2023-03-28', 0.02, 5, 2, 'AB12CD34', 'No issues');
INSERT INTO multiverse_portal_logs (origin_world, destination_world, activation_timestamp, deactivation_timestamp, energy_cost, portal_stability, operator_id, security_clearance, logs, maintenance_cycle, anomaly_detected, anomaly_type, portal_status, last_inspection, calibration_offset, max_capacity, current_load, firmware_checksum, remarks) VALUES ('Aether', 'Nimbus', '2023-05-12', '2023-05-12', 3100.00, 0.87, 102, 'Level4', 'Minor fluctuation observed', 30, 1, 'TemporalShift', 'Degraded', '2023-05-10', 0.05, 3, 3, 'EF56GH78', 'Scheduled recalibration');
INSERT INTO multiverse_portal_logs (origin_world, destination_world, activation_timestamp, deactivation_timestamp, energy_cost, portal_stability, operator_id, security_clearance, logs, maintenance_cycle, anomaly_detected, anomaly_type, portal_status, last_inspection, calibration_offset, max_capacity, current_load, firmware_checksum, remarks) VALUES ('Vesper', 'Lumina', '2023-06-20', '2023-06-20', 2800.55, 0.92, 103, 'Level5', 'Smooth transfer', 30, 0, NULL, 'Online', '2023-06-18', 0.01, 4, 1, 'IJ90KL12', 'All systems nominal');

-- Spellcraft workflows table
CREATE TABLE spellcraft_workflows (
    workflow_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    spell_name TEXT,
    caster_id INTEGER,
    casting_time REAL,
    components_required TEXT,
    mana_required REAL,
    success_rate REAL,
    difficulty_level INTEGER,
    element TEXT,
    arcane_school TEXT,
    version TEXT,
    last_updated DATE,
    approved_by TEXT,
    approval_status TEXT,
    documentation_url TEXT,
    notes TEXT,
    average_duration REAL,
    cooldown_period REAL,
    failure_consequences TEXT,
    resource_cost REAL
);

INSERT INTO spellcraft_workflows (spell_name, caster_id, casting_time, components_required, mana_required, success_rate, difficulty_level, element, arcane_school, version, last_updated, approved_by, approval_status, documentation_url, notes, average_duration, cooldown_period, failure_consequences, resource_cost) VALUES ('Fireball', 201, 2.5, 'Sulfur,BatWing', 30.0, 0.85, 3, 'Fire', 'Evocation', '1.2', '2023-01-15', 'ArchmageLuna', 'Approved', 'http://docs/spellfireball', 'Standard damage spell', 2.5, 10.0, 'BurnSelf', 35.0);
INSERT INTO spellcraft_workflows (spell_name, caster_id, casting_time, components_required, mana_required, success_rate, difficulty_level, element, arcane_school, version, last_updated, approved_by, approval_status, documentation_url, notes, average_duration, cooldown_period, failure_consequences, resource_cost) VALUES ('Healing Touch', 202, 1.0, 'Herb,HolyWater', 15.0, 0.95, 2, 'Light', 'Restoration', '1.0', '2023-02-20', 'HighPriestEri', 'Approved', 'http://docs/spellhealing', 'Restores health', 1.0, 5.0, 'None', 18.0);
INSERT INTO spellcraft_workflows (spell_name, caster_id, casting_time, components_required, mana_required, success_rate, difficulty_level, element, arcane_school, version, last_updated, approved_by, approval_status, documentation_url, notes, average_duration, cooldown_period, failure_consequences, resource_cost) VALUES ('Arcane Shield', 203, 0.8, 'CrystalDust', 20.0, 0.90, 2, 'Arcane', 'Abjuration', '1.1', '2023-03-05', 'MageCouncil', 'Pending', 'http://docs/spellshield', 'Provides temporary protection', 0.8, 8.0, 'SpellBackfire', 22.0);

-- Mythic beast observations table
CREATE TABLE mythic_beast_observations (
    observation_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    beast_name TEXT,
    species_class TEXT,
    location TEXT,
    observed_date DATE,
    observer_id INTEGER,
    behavior_notes TEXT,
    health_status TEXT,
    size_cm INTEGER,
    weight_kg REAL,
    age_estimate INTEGER,
    threat_level TEXT,
    tracking_device_id INTEGER,
    gps_latitude REAL,
    gps_longitude REAL,
    altitude_m INTEGER,
    weather_conditions TEXT,
    population_estimate INTEGER,
    photo_url TEXT,
    audio_recording_url TEXT
);

INSERT INTO mythic_beast_observations (beast_name, species_class, location, observed_date, observer_id, behavior_notes, health_status, size_cm, weight_kg, age_estimate, threat_level, tracking_device_id, gps_latitude, gps_longitude, altitude_m, weather_conditions, population_estimate, photo_url, audio_recording_url) VALUES ('Gryphon', 'Avian', 'Highcliff Ridge', '2023-04-10', 301, 'Soaring, territorial', 'Good', 220, 85.5, 12, 'High', 9001, 45.1234, -122.5678, 1500, 'Clear', 4, 'http://images/gryphon1.jpg', 'http://audio/gryphon1.mp3');
INSERT INTO mythic_beast_observations (beast_name, species_class, location, observed_date, observer_id, behavior_notes, health_status, size_cm, weight_kg, age_estimate, threat_level, tracking_device_id, gps_latitude, gps_longitude, altitude_m, weather_conditions, population_estimate, photo_url, audio_recording_url) VALUES ('Stonehide Basilisk', 'Reptile', 'Mire Swamp', '2023-05-05', 302, 'Lurking, ambushes prey', 'Injured', 340, 210.0, 20, 'Critical', 9002, 44.9876, -123.1234, 30, 'Foggy', 2, 'http://images/basilisk1.jpg', 'http://audio/basilisk1.mp3');
INSERT INTO mythic_beast_observations (beast_name, species_class, location, observed_date, observer_id, behavior_notes, health_status, size_cm, weight_kg, age_estimate, threat_level, tracking_device_id, gps_latitude, gps_longitude, altitude_m, weather_conditions, population_estimate, photo_url, audio_recording_url) VALUES ('Celestial Unicorn', 'Equine', 'Silver Meadow', '2023-06-12', 303, 'Grazing, emitting aura', 'Excellent', 250, 190.2, 8, 'Medium', 9003, 46.0011, -121.7654, 200, 'Sunny', 5, 'http://images/unicorn1.jpg', 'http://audio/unicorn1.mp3');

-- Planar shift schedules table
CREATE TABLE planar_shift_schedules (
    schedule_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    plane_name TEXT,
    shift_start DATE,
    shift_end DATE,
    coordinator_id INTEGER,
    required_staff INTEGER,
    resource_allocation TEXT,
    risk_assessment TEXT,
    contingency_plan TEXT,
    status TEXT,
    notes TEXT,
    activation_code TEXT,
    max_shift_hours INTEGER,
    overtime_allowed INTEGER,
    equipment_list TEXT,
    approval_timestamp DATE,
    last_modified DATE,
    impact_score REAL,
    budget_usd REAL,
    external_partner TEXT
);

INSERT INTO planar_shift_schedules (plane_name, shift_start, shift_end, coordinator_id, required_staff, resource_allocation, risk_assessment, contingency_plan, status, notes, activation_code, max_shift_hours, overtime_allowed, equipment_list, approval_timestamp, last_modified, impact_score, budget_usd, external_partner) VALUES ('Eldoria', '2023-07-01', '2023-07-07', 401, 12, 'Mana Crystals, Runes', 'Low', 'Standard protocols', 'Planned', 'Initial schedule', 'ACT123', 168, 1, 'Staff, Devices', '2023-06-20', '2023-06-20', 78.5, 150000, 'Arcane Guild');
INSERT INTO planar_shift_schedules (plane_name, shift_start, shift_end, coordinator_id, required_staff, resource_allocation, risk_assessment, contingency_plan, status, notes, activation_code, max_shift_hours, overtime_allowed, equipment_list, approval_timestamp, last_modified, impact_score, budget_usd, external_partner) VALUES ('Nimbus', '2023-08-15', '2023-08-22', 402, 15, 'Storm Essence, Conductors', 'Medium', 'Emergency shelters ready', 'Approved', 'Adjusted for weather', 'ACT456', 168, 0, 'Generators, Shields', '2023-08-01', '2023-08-01', 85.2, 200000, 'Storm Consortium');
INSERT INTO planar_shift_schedules (plane_name, shift_start, shift_end, coordinator_id, required_staff, resource_allocation, risk_assessment, contingency_plan, status, notes, activation_code, max_shift_hours, overtime_allowed, equipment_list, approval_timestamp, last_modified, impact_score, budget_usd, external_partner) VALUES ('Vesper', '2023-09-10', '2023-09-17', 403, 10, 'Shadow Orbs, Veils', 'High', 'Rapid retreat procedures', 'Pending', 'Awaiting risk clearance', 'ACT789', 168, 1, 'Veil Emitters, Drones', '2023-08-30', '2023-08-30', 92.0, 250000, 'Nightfall Syndicate');

-- Wizard duel statistics table
CREATE TABLE wizard_duel_statistics (
    duel_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    wizard_one_id INTEGER,
    wizard_two_id INTEGER,
    duel_date DATE,
    location TEXT,
    wizard_one_score INTEGER,
    wizard_two_score INTEGER,
    winner_id INTEGER,
    duration_seconds INTEGER,
    spells_cast INTEGER,
    mana_spent REAL,
    critical_hits INTEGER,
    fouls INTEGER,
    audience_size INTEGER,
    broadcast_channel TEXT,
    referee_id INTEGER,
    weather TEXT,
    magical_interference_level REAL,
    prize_pool_usd REAL,
    post_duel_rating_change REAL
);

INSERT INTO wizard_duel_statistics (wizard_one_id, wizard_two_id, duel_date, location, wizard_one_score, wizard_two_score, winner_id, duration_seconds, spells_cast, mana_spent, critical_hits, fouls, audience_size, broadcast_channel, referee_id, weather, magical_interference_level, prize_pool_usd, post_duel_rating_change) VALUES (501, 502, '2023-07-20', 'Arcane Arena', 85, 78, 501, 420, 35, 260.5, 4, 0, 1200, 'MageTV', 601, 'Clear', 0.12, 50000, 15.2);
INSERT INTO wizard_duel_statistics (wizard_one_id, wizard_two_id, duel_date, location, wizard_one_score, wizard_two_score, winner_id, duration_seconds, spells_cast, mana_spent, critical_hits, fouls, audience_size, broadcast_channel, referee_id, weather, magical_interference_level, prize_pool_usd, post_duel_rating_change) VALUES (503, 504, '2023-08-05', 'Skyward Colosseum', 92, 92, NULL, 530, 48, 340.0, 6, 1, 2500, 'CelestialStream', 602, 'Windy', 0.20, 75000, 0.0);
INSERT INTO wizard_duel_statistics (wizard_one_id, wizard_two_id, duel_date, location, wizard_one_score, wizard_two_score, winner_id, duration_seconds, spells_cast, mana_spent, critical_hits, fouls, audience_size, broadcast_channel, referee_id, weather, magical_interference_level, prize_pool_usd, post_duel_rating_change) VALUES (505, 506, '2023-09-12', 'Crystal Sanctum', 78, 84, 506, 390, 28, 210.3, 2, 0, 800, 'ArcaneLive', 603, 'Rainy', 0.15, 40000, -8.5);

-- Magical ingredient supply table
CREATE TABLE magical_ingredient_supply (
    supply_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    ingredient_name TEXT,
    supplier_id INTEGER,
    batch_number TEXT,
    arrival_date DATE,
    quantity_kg REAL,
    purity_percent REAL,
    storage_temperature_c REAL,
    expiration_date DATE,
    hazard_level TEXT,
    unit_price_usd REAL,
    total_cost_usd REAL,
    received_by INTEGER,
    quality_check_passed INTEGER,
    notes TEXT,
    warehouse_location TEXT,
    last_audit DATE,
    lot_status TEXT,
    regulatory_compliance TEXT,
    next_reorder_date DATE
);

INSERT INTO magical_ingredient_supply (ingredient_name, supplier_id, batch_number, arrival_date, quantity_kg, purity_percent, storage_temperature_c, expiration_date, hazard_level, unit_price_usd, total_cost_usd, received_by, quality_check_passed, notes, warehouse_location, last_audit, lot_status, regulatory_compliance, next_reorder_date) VALUES ('Phoenix Feather', 701, 'PF-2023-01', '2023-02-15', 12.5, 98.7, -5.0, '2025-02-14', 'Medium', 350.0, 4375.0, 801, 1, 'Handled with gloves', 'WH-A1', '2023-03-01', 'Active', 'Compliant', '2023-12-01');
INSERT INTO magical_ingredient_supply (ingredient_name, supplier_id, batch_number, arrival_date, quantity_kg, purity_percent, storage_temperature_c, expiration_date, hazard_level, unit_price_usd, total_cost_usd, received_by, quality_check_passed, notes, warehouse_location, last_audit, lot_status, regulatory_compliance, next_reorder_date) VALUES ('Moonlit Dew', 702, 'MD-2023-05', '2023-05-20', 8.0, 99.2, 2.0, '2024-05-19', 'Low', 220.0, 1760.0, 802, 1, 'Stored in crystal vats', 'WH-B3', '2023-06-10', 'Active', 'Compliant', '2023-11-15');
INSERT INTO magical_ingredient_supply (ingredient_name, supplier_id, batch_number, arrival_date, quantity_kg, purity_percent, storage_temperature_c, expiration_date, hazard_level, unit_price_usd, total_cost_usd, received_by, quality_check_passed, notes, warehouse_location, last_audit, lot_status, regulatory_compliance, next_reorder_date) VALUES ('Obsidian Powder', 703, 'OP-2023-09', '2023-09-05', 20.0, 95.0, 10.0, '2026-09-04', 'High', 150.0, 3000.0, 803, 0, 'Pending re‑test', 'WH-C2', '2023-09-20', 'Quarantine', 'Pending', '2024-02-01');

-- Eldritch energy readings table
CREATE TABLE eldritch_energy_readings (
    reading_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    sensor_id INTEGER,
    location TEXT,
    reading_timestamp DATE,
    energy_flux REAL,
    frequency_hz REAL,
    amplitude REAL,
    phase_shift REAL,
    source_type TEXT,
    calibration_date DATE,
    status TEXT,
    anomaly_flag INTEGER,
    anomaly_description TEXT,
    battery_level_percent INTEGER,
    firmware_version TEXT,
    network_signal_strength INTEGER,
    data_packet_id TEXT,
    comments TEXT,
    maintenance_required INTEGER,
    next_maintenance DATE
);

INSERT INTO eldritch_energy_readings (sensor_id, location, reading_timestamp, energy_flux, frequency_hz, amplitude, phase_shift, source_type, calibration_date, status, anomaly_flag, anomaly_description, battery_level_percent, firmware_version, network_signal_strength, data_packet_id, comments, maintenance_required, next_maintenance) VALUES (901, 'Vault 7', '2023-07-15', 12.5, 60.0, 0.85, 0.02, 'LeyLine', '2023-01-10', 'Normal', 0, NULL, 95, 'v1.4', 78, 'DP1001', 'Stable reading', 0, '2024-01-15');
INSERT INTO eldritch_energy_readings (sensor_id, location, reading_timestamp, energy_flux, frequency_hz, amplitude, phase_shift, source_type, calibration_date, status, anomaly_flag, anomaly_description, battery_level_percent, firmware_version, network_signal_strength, data_packet_id, comments, maintenance_required, next_maintenance) VALUES (902, 'Observatory Roof', '2023-08-02', 9.8, 55.5, 0.78, 0.01, 'AstralPulse', '2022-12-05', 'Warning', 1, 'Spike detected', 80, 'v1.3', 65, 'DP1002', 'Investigate spike', 1, '2023-12-01');
INSERT INTO eldritch_energy_readings (sensor_id, location, reading_timestamp, energy_flux, frequency_hz, amplitude, phase_shift, source_type, calibration_date, status, anomaly_flag, anomaly_description, battery_level_percent, firmware_version, network_signal_strength, data_packet_id, comments, maintenance_required, next_maintenance) VALUES (903, 'Deep Cave', '2023-09-10', 14.2, 70.2, 0.92, 0.03, 'Geomagnetic', '2023-03-20', 'Critical', 1, 'Overload', 60, 'v1.5', 50, 'DP1003', 'Shut down sensor', 1, '2023-10-20');

-- Rune inscription catalog table
CREATE TABLE rune_inscription_catalog (
    rune_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    rune_name TEXT,
    glyph TEXT,
    element TEXT,
    power_modifier REAL,
    rarity TEXT,
    discovered_by INTEGER,
    discovery_date DATE,
    location_found TEXT,
    mythology_reference TEXT,
    usage_examples TEXT,
    associated_spell TEXT,
    cultural_origin TEXT,
    length_strokes INTEGER,
    is_active INTEGER,
    last_used DATE,
    notes TEXT,
    image_url TEXT,
    audio_pronunciation_url TEXT,
    license_type TEXT
);

INSERT INTO rune_inscription_catalog (rune_name, glyph, element, power_modifier, rarity, discovered_by, discovery_date, location_found, mythology_reference, usage_examples, associated_spell, cultural_origin, length_strokes, is_active, last_used, notes, image_url, audio_pronunciation_url, license_type) VALUES ('Aethra', '✦', 'Air', 1.2, 'Rare', 1001, '2021-04-12', 'Sky Temple', 'Zephyr Tales', 'Wind shield, Flight boost', 'Gust Surge', 'Eldrian', 5, 1, '2023-06-01', 'Often used in scouting', 'http://images/rune_aethra.png', 'http://audio/rune_aethra.mp3', 'CC-BY');
INSERT INTO rune_inscription_catalog (rune_name, glyph, element, power_modifier, rarity, discovered_by, discovery_date, location_found, mythology_reference, usage_examples, associated_spell, cultural_origin, length_strokes, is_active, last_used, notes, image_url, audio_pronunciation_url, license_type) VALUES ('Ignis', '☥', 'Fire', 1.5, 'Epic', 1002, '2020-09-30', 'Flameforge Cavern', 'Pyro Legends', 'Damage over time, Light source', 'Flame Burst', 'Terran', 7, 1, '2023-07-15', 'Core to many combat spells', 'http://images/rune_ignis.png', 'http://audio/rune_ignis.mp3', 'CC0');
INSERT INTO rune_inscription_catalog (rune_name, glyph, element, power_modifier, rarity, discovered_by, discovery_date, location_found, mythology_reference, usage_examples, associated_spell, cultural_origin, length_strokes, is_active, last_used, notes, image_url, audio_pronunciation_url, license_type) VALUES ('Aquara', '≈', 'Water', 1.1, 'Uncommon', 1003, '2019-11-05', 'Crystal Lagoon', 'Tide Chronicles', 'Healing, Water control', 'Hydro Flow', 'Maris', 4, 0, '2022-12-20', 'Currently under review', 'http://images/rune_aquara.png', 'http://audio/rune_aquara.mp3', 'GPL');

-- Artifact forge quality table
CREATE TABLE artifact_forge_quality (
    quality_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    artifact_id INTEGER,
    forge_station_id INTEGER,
    inspection_date DATE,
    structural_integrity INTEGER,
    magical_resonance REAL,
    surface_finish TEXT,
    defects_found INTEGER,
    defect_details TEXT,
    pass_fail TEXT,
    inspector_id INTEGER,
    temperature_c REAL,
    pressure_mpa REAL,
    calibration_status TEXT,
    notes TEXT,
    next_inspection_due DATE,
    quality_grade TEXT,
    warranty_months INTEGER,
    revised_by INTEGER,
    revision_timestamp DATE
);

INSERT INTO artifact_forge_quality (artifact_id, forge_station_id, inspection_date, structural_integrity, magical_resonance, surface_finish, defects_found, defect_details, pass_fail, inspector_id, temperature_c, pressure_mpa, calibration_status, notes, next_inspection_due, quality_grade, warranty_months, revised_by, revision_timestamp) VALUES (2001, 301, '2023-05-10', 95, 1.12, 'Polished', 0, NULL, 'Pass', 901, 650.0, 2.5, 'Calibrated', 'No issues detected', '2024-05-10', 'A', 24, 902, '2023-05-11');
INSERT INTO artifact_forge_quality (artifact_id, forge_station_id, inspection_date, structural_integrity, magical_resonance, surface_finish, defects_found, defect_details, pass_fail, inspector_id, temperature_c, pressure_mpa, calibration_status, notes, next_inspection_due, quality_grade, warranty_months, revised_by, revision_timestamp) VALUES (2002, 302, '2023-06-22', 88, 0.97, 'Matte', 2, 'Minor cracks on edge', 'Fail', 903, 640.0, 2.3, 'Pending', 'Requires rework', '2023-07-22', 'B', 12, 904, '2023-06-23');
INSERT INTO artifact_forge_quality (artifact_id, forge_station_id, inspection_date, structural_integrity, magical_resonance, surface_finish, defects_found, defect_details, pass_fail, inspector_id, temperature_c, pressure_mpa, calibration_status, notes, next_inspection_due, quality_grade, warranty_months, revised_by, revision_timestamp) VALUES (2003, 303, '2023-07-15', 92, 1.05, 'Glossy', 1, 'Surface blemish', 'Pass', 905, 655.0, 2.6, 'Calibrated', 'Monitor blemish in next cycle', '2024-07-15', 'A', 18, 906, '2023-07-16');