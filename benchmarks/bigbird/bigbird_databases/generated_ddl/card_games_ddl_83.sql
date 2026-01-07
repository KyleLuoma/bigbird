-- Arcane Energy Monitoring Stations
CREATE TABLE arcane_energy_stations (
    station_id INTEGER PRIMARY KEY,
    station_name TEXT,
    latitude REAL,
    longitude REAL,
    region TEXT,
    activation_date DATE,
    power_capacity REAL,
    current_output REAL,
    last_maintenance DATE,
    maintenance_interval_days INTEGER,
    sensor_count INTEGER,
    firmware_version TEXT,
    network_status TEXT,
    last_calibration DATE,
    anomaly_flag INTEGER,
    avg_energy_level REAL,
    max_recorded_level REAL,
    min_recorded_level REAL,
    alert_threshold REAL,
    operator_contact TEXT,
    data_endpoint_url TEXT,
    notes TEXT
);

INSERT INTO arcane_energy_stations (station_id, station_name, latitude, longitude, region, activation_date, power_capacity, current_output, last_maintenance, maintenance_interval_days, sensor_count, firmware_version, network_status, last_calibration, anomaly_flag, avg_energy_level, max_recorded_level, min_recorded_level, alert_threshold, operator_contact, data_endpoint_url, notes) VALUES (1, 'Alpha Station', 34.05, -118.25, 'West Coast', '2022-06-01', 1500.5, 1200.3, '2023-01-15', 180, 12, 'v1.2.3', 'Online', '2023-01-10', 0, 500.0, 800.0, 200.0, 750.0, '555-0101', 'http://api.example.com/alpha', 'Initial deployment');
INSERT INTO arcane_energy_stations (station_id, station_name, latitude, longitude, region, activation_date, power_capacity, current_output, last_maintenance, maintenance_interval_days, sensor_count, firmware_version, network_status, last_calibration, anomaly_flag, avg_energy_level, max_recorded_level, min_recorded_level, alert_threshold, operator_contact, data_endpoint_url, notes) VALUES (2, 'Beta Beacon', 40.71, -74.00, 'East Coast', '2021-09-15', 1800.0, 1500.0, '2022-12-20', 200, 15, 'v1.3.0', 'Online', '2022-12-15', 1, 600.0, 900.0, 300.0, 800.0, '555-0202', 'http://api.example.com/beta', 'Second station');
INSERT INTO arcane_energy_stations (station_id, station_name, latitude, longitude, region, activation_date, power_capacity, current_output, last_maintenance, maintenance_interval_days, sensor_count, firmware_version, network_status, last_calibration, anomaly_flag, avg_energy_level, max_recorded_level, min_recorded_level, alert_threshold, operator_contact, data_endpoint_url, notes) VALUES (3, 'Gamma Node', 51.51, -0.13, 'Europe', '2023-02-10', 1300.2, 1100.1, '2023-04-05', 150, 10, 'v1.1.8', 'Offline', '2023-04-01', 0, 450.0, 700.0, 250.0, 650.0, '555-0303', 'http://api.example.com/gamma', 'Pending activation');

-- Planar Shift Events Log
CREATE TABLE planar_shift_events_log (
    event_id INTEGER PRIMARY KEY,
    event_name TEXT,
    shift_type TEXT,
    origin_plane TEXT,
    destination_plane TEXT,
    trigger_mechanism TEXT,
    start_time DATE,
    end_time DATE,
    participant_count INTEGER,
    success_flag INTEGER,
    energy_cost REAL,
    witness_report TEXT,
    coordinator TEXT,
    log_timestamp DATE,
    anomaly_details TEXT,
    backup_plan TEXT,
    resource_allocation INTEGER,
    notes TEXT,
    affected_regions TEXT,
    external_reference TEXT
);

INSERT INTO planar_shift_events_log (event_id, event_name, shift_type, origin_plane, destination_plane, trigger_mechanism, start_time, end_time, participant_count, success_flag, energy_cost, witness_report, coordinator, log_timestamp, anomaly_details, backup_plan, resource_allocation, notes, affected_regions, external_reference) VALUES (101, 'Shift Alpha', 'Temporal', 'PlaneA', 'PlaneB', 'Arcane Pulse', '2023-01-05', '2023-01-05', 5, 1, 2500.75, 'All participants reported clarity', 'Elder Mage', '2023-01-06', 'None', 'Secondary Gate', 3, 'Smooth transition', 'North Realm', 'REF001');
INSERT INTO planar_shift_events_log (event_id, event_name, shift_type, origin_plane, destination_plane, trigger_mechanism, start_time, end_time, participant_count, success_flag, energy_cost, witness_report, coordinator, log_timestamp, anomaly_details, backup_plan, resource_allocation, notes, affected_regions, external_reference) VALUES (102, 'Shift Beta', 'Spatial', 'PlaneX', 'PlaneY', 'Runic Circle', '2023-03-12', '2023-03-12', 8, 0, 3400.20, 'Minor distortions observed', 'Archon', '2023-03-13', 'Spatial Rift', 'Emergency Tunnel', 5, 'Partial failure', 'Central Isles', 'REF002');
INSERT INTO planar_shift_events_log (event_id, event_name, shift_type, origin_plane, destination_plane, trigger_mechanism, start_time, end_time, participant_count, success_flag, energy_cost, witness_report, coordinator, log_timestamp, anomaly_details, backup_plan, resource_allocation, notes, affected_regions, external_reference) VALUES (103, 'Shift Gamma', 'Dimensional', 'PlaneM', 'PlaneN', 'Crystal Convergence', '2023-05-20', '2023-05-20', 3, 1, 1900.00, 'No anomalies', 'Sage', '2023-05-21', 'None', 'Auxiliary Core', 2, 'Successful', 'Southern Expanse', 'REF003');

-- Wizard Academy Courses
CREATE TABLE wizard_academy_courses (
    course_id INTEGER PRIMARY KEY,
    course_code TEXT,
    course_name TEXT,
    department TEXT,
    credit_hours INTEGER,
    level TEXT,
    syllabus_url TEXT,
    instructor_name TEXT,
    max_enrollment INTEGER,
    current_enrollment INTEGER,
    prerequisite_course TEXT,
    semester_offered TEXT,
    classroom TEXT,
    schedule TEXT,
    assessment_method TEXT,
    enrollment_deadline DATE,
    course_description TEXT,
    required_materials TEXT,
    certification_awarded TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO wizard_academy_courses (course_id, course_code, course_name, department, credit_hours, level, syllabus_url, instructor_name, max_enrollment, current_enrollment, prerequisite_course, semester_offered, classroom, schedule, assessment_method, enrollment_deadline, course_description, required_materials, certification_awarded, notes, created_at, updated_at) VALUES (201, 'ARC101', 'Fundamentals of Arcana', 'Arcane Studies', 3, 'Beginner', 'http://academy.example.com/arc101', 'Professor Aurelius', 30, 28, 'None', 'Fall', 'Room 12A', 'MonWedFri 09:00-10:00', 'Exam', '2023-08-01', 'Introduction to basic magical theory', 'Arcane Textbook', 'Certificate of Arcane Basics', 'Popular course', '2023-01-15', '2023-06-01');
INSERT INTO wizard_academy_courses (course_id, course_code, course_name, department, credit_hours, level, syllabus_url, instructor_name, max_enrollment, current_enrollment, prerequisite_course, semester_offered, classroom, schedule, assessment_method, enrollment_deadline, course_description, required_materials, certification_awarded, notes, created_at, updated_at) VALUES (202, 'ELM202', 'Elemental Manipulation II', 'Elemental Arts', 4, 'Intermediate', 'http://academy.example.com/elm202', 'Mistress Lyra', 25, 22, 'ELM101', 'Spring', 'Lab 3B', 'TueThu 14:00-16:00', 'Project', '2024-01-10', 'Advanced techniques for controlling elements', 'Elemental Kit', 'Elemental Practitioner', 'Lab intensive', '2023-02-20', '2023-07-15');
INSERT INTO wizard_academy_courses (course_id, course_code, course_name, department, credit_hours, level, syllabus_url, instructor_name, max_enrollment, current_enrollment, prerequisite_course, semester_offered, classroom, schedule, assessment_method, enrollment_deadline, course_description, required_materials, certification_awarded, notes, created_at, updated_at) VALUES (203, 'RUN303', 'Runic Inscription Mastery', 'Runic Studies', 3, 'Advanced', 'http://academy.example.com/run303', 'Master Corvin', 20, 18, 'RUN202', 'Summer', 'Workshop 1', 'MonThu 10:00-12:00', 'Portfolio', '2024-05-01', 'Creation of complex runic symbols', 'Runic Stones', 'Runic Master', 'Capstone course', '2023-03-10', '2023-08-20');

-- Legendary Beast Tracking
CREATE TABLE legendary_beast_tracking (
    tracking_id INTEGER PRIMARY KEY,
    beast_name TEXT,
    species TEXT,
    habitat_region TEXT,
    last_spotted DATE,
    latitude REAL,
    longitude REAL,
    tracking_device_id TEXT,
    health_status TEXT,
    age_estimate INTEGER,
    size_estimate REAL,
    weight_estimate REAL,
    observer_name TEXT,
    observation_notes TEXT,
    threat_level INTEGER,
    conservation_status TEXT,
    last_reported_by TEXT,
    report_timestamp DATE,
    photo_url TEXT,
    audio_recording_url TEXT,
    data_quality_score REAL,
    follow_up_action TEXT
);

INSERT INTO legendary_beast_tracking (tracking_id, beast_name, species, habitat_region, last_spotted, latitude, longitude, tracking_device_id, health_status, age_estimate, size_estimate, weight_estimate, observer_name, observation_notes, threat_level, conservation_status, last_reported_by, report_timestamp, photo_url, audio_recording_url, data_quality_score, follow_up_action) VALUES (301, 'Aurelion', 'Lion', 'Savannah', '2023-04-12', -1.95, 30.07, 'DEV12345', 'Healthy', 7, 2.5, 190.0, 'Ranger Kira', 'Observed near waterhole', 2, 'Endangered', 'Ranger Kira', '2023-04-13', 'http://images.example.com/aurelion.jpg', 'http://audio.example.com/aurelion.wav', 0.92, 'Schedule health check');
INSERT INTO legendary_beast_tracking (tracking_id, beast_name, species, habitat_region, last_spotted, latitude, longitude, tracking_device_id, health_status, age_estimate, size_estimate, weight_estimate, observer_name, observation_notes, threat_level, conservation_status, last_reported_by, report_timestamp, photo_url, audio_recording_url, data_quality_score, follow_up_action) VALUES (302, 'Nimbus Drake', 'Drake', 'Mountain Peaks', '2023-06-05', 45.12, -122.34, 'DEV67890', 'Injured', 12, 5.0, 850.0, 'Scout Jorin', 'Wing injury observed', 4, 'Vulnerable', 'Scout Jorin', '2023-06-06', 'http://images.example.com/nimbus.jpg', 'http://audio.example.com/nimbus.wav', 0.85, 'Arrange veterinary aid');
INSERT INTO legendary_beast_tracking (tracking_id, beast_name, species, habitat_region, last_spotted, latitude, longitude, tracking_device_id, health_status, age_estimate, size_estimate, weight_estimate, observer_name, observation_notes, threat_level, conservation_status, last_reported_by, report_timestamp, photo_url, audio_recording_url, data_quality_score, follow_up_action) VALUES (303, 'Glimmer Serpent', 'Serpent', 'Rainforest', '2023-07-20', -3.21, 98.45, 'DEV54321', 'Healthy', 4, 3.2, 120.0, 'Biologist Mira', 'Slithering near canopy', 1, 'Least Concern', 'Biologist Mira', '2023-07-21', 'http://images.example.com/glimmer.jpg', 'http://audio.example.com/glimmer.wav', 0.97, 'Continue monitoring');

-- Magical Ingredient Inventory
CREATE TABLE magical_ingredient_inventory (
    ingredient_id INTEGER PRIMARY KEY,
    ingredient_name TEXT,
    category TEXT,
    rarity TEXT,
    stock_quantity INTEGER,
    unit TEXT,
    supplier_name TEXT,
    cost_per_unit REAL,
    last_restock_date DATE,
    expiration_date DATE,
    storage_location TEXT,
    temperature_requirement REAL,
    humidity_requirement REAL,
    safety_notes TEXT,
    batch_number TEXT,
    quality_grade TEXT,
    incoming_shipment_id TEXT,
    outgoing_shipment_id TEXT,
    linked_recipe_id TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO magical_ingredient_inventory (ingredient_id, ingredient_name, category, rarity, stock_quantity, unit, supplier_name, cost_per_unit, last_restock_date, expiration_date, storage_location, temperature_requirement, humidity_requirement, safety_notes, batch_number, quality_grade, incoming_shipment_id, outgoing_shipment_id, linked_recipe_id, notes, created_at, updated_at) VALUES (401, 'Phoenix Feather', 'Feather', 'Rare', 12, 'pcs', 'Mythic Supplies', 250.00, '2023-03-01', '2025-03-01', 'Vault A', 22.0, 30.0, 'Handle with gloves', 'BATCH001', 'A', 'SHIPIN001', 'SHIPOUT001', 'RECIPE101', 'First batch', '2023-03-02', '2023-03-05');
INSERT INTO magical_ingredient_inventory (ingredient_id, ingredient_name, category, rarity, stock_quantity, unit, supplier_name, cost_per_unit, last_restock_date, expiration_date, storage_location, temperature_requirement, humidity_requirement, safety_notes, batch_number, quality_grade, incoming_shipment_id, outgoing_shipment_id, linked_recipe_id, notes, created_at, updated_at) VALUES (402, 'Moonlit Dew', 'Liquid', 'Uncommon', 200, 'ml', 'Lunar Harvest', 5.75, '2023-04-10', '2024-04-10', 'Chamber B', 4.0, 80.0, 'Keep sealed', 'BATCH042', 'B', 'SHIPIN042', 'SHIPOUT042', 'RECIPE202', 'Seasonal supply', '2023-04-11', '2023-04-12');
INSERT INTO magical_ingredient_inventory (ingredient_id, ingredient_name, category, rarity, stock_quantity, unit, supplier_name, cost_per_unit, last_restock_date, expiration_date, storage_location, temperature_requirement, humidity_requirement, safety_notes, batch_number, quality_grade, incoming_shipment_id, outgoing_shipment_id, linked_recipe_id, notes, created_at, updated_at) VALUES (403, 'Obsidian Shard', 'Mineral', 'Common', 500, 'pcs', 'Stoneworks Co', 2.20, '2023-02-20', '2026-02-20', 'Shelf C', 15.0, 45.0, 'No special handling', 'BATCH099', 'C', 'SHIPIN099', 'SHIPOUT099', 'RECIPE303', 'Bulk stock', '2023-02-21', '2023-03-01');

-- Dimensional Gate Statuses
CREATE TABLE dimensional_gate_statuses (
    gate_id INTEGER PRIMARY KEY,
    gate_name TEXT,
    coordinates TEXT,
    linked_plane TEXT,
    activation_status TEXT,
    power_source TEXT,
    last_activation DATE,
    next_scheduled_maintenance DATE,
    maintenance_status TEXT,
    anomaly_detected INTEGER,
    security_level INTEGER,
    access_code TEXT,
    operator TEXT,
    control_center TEXT,
    bandwidth_limit REAL,
    latency_ms REAL,
    error_log TEXT,
    firmware_version TEXT,
    backup_gate_id TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO dimensional_gate_statuses (gate_id, gate_name, coordinates, linked_plane, activation_status, power_source, last_activation, next_scheduled_maintenance, maintenance_status, anomaly_detected, security_level, access_code, operator, control_center, bandwidth_limit, latency_ms, error_log, firmware_version, backup_gate_id, notes, created_at, updated_at) VALUES (501, 'Gate Alpha', '12.34,56.78', 'PlaneX', 'Active', 'Etheric Core', '2023-05-01', '2023-11-01', 'Pending', 0, 5, 'ACODE123', 'Technician Zara', 'Center One', 500.0, 12.5, 'No errors', 'v2.0', 'Gate Beta', 'Primary gateway', '2023-05-02', '2023-05-03');
INSERT INTO dimensional_gate_statuses (gate_id, gate_name, coordinates, linked_plane, activation_status, power_source, last_activation, next_scheduled_maintenance, maintenance_status, anomaly_detected, security_level, access_code, operator, control_center, bandwidth_limit, latency_ms, error_log, firmware_version, backup_gate_id, notes, created_at, updated_at) VALUES (502, 'Gate Beta', '98.76,54.32', 'PlaneY', 'Standby', 'Crystal Matrix', '2023-04-15', '2023-10-15', 'Completed', 1, 4, 'BCODE456', 'Engineer Lorn', 'Center Two', 300.0, 20.0, 'Minor fluctuation logged', 'v1.9', 'Gate Gamma', 'Backup for Alpha', '2023-04-16', '2023-04-17');
INSERT INTO dimensional_gate_statuses (gate_id, gate_name, coordinates, linked_plane, activation_status, power_source, last_activation, next_scheduled_maintenance, maintenance_status, anomaly_detected, security_level, access_code, operator, control_center, bandwidth_limit, latency_ms, error_log, firmware_version, backup_gate_id, notes, created_at, updated_at) VALUES (503, 'Gate Gamma', '23.45,67.89', 'PlaneZ', 'Inactive', 'Solar Array', '2022-12-30', '2023-12-30', 'Pending', 0, 3, 'CCODE789', 'Operator Nia', 'Center Three', 250.0, 15.0, 'No recent logs', 'v2.1', 'Gate Alpha', 'Spare capacity', '2022-12-31', '2023-01-01');

-- Spell Component Suppliers
CREATE TABLE spell_component_suppliers (
    supplier_id INTEGER PRIMARY KEY,
    supplier_name TEXT,
    contact_person TEXT,
    phone_number TEXT,
    email TEXT,
    address TEXT,
    rating INTEGER,
    contracts_active INTEGER,
    primary_component TEXT,
    component_quality TEXT,
    lead_time_days INTEGER,
    pricing_tier TEXT,
    last_evaluation DATE,
    certifications TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    region TEXT,
    tax_id TEXT,
    payment_terms TEXT
);

INSERT INTO spell_component_suppliers (supplier_id, supplier_name, contact_person, phone_number, email, address, rating, contracts_active, primary_component, component_quality, lead_time_days, pricing_tier, last_evaluation, certifications, notes, created_at, updated_at, region, tax_id, payment_terms) VALUES (601, 'Arcane Alchemy Co', 'Mira Tal', '555-1001', 'mira@arcanealchemy.com', '12 Mystic Way', 5, 1, 'Mana Crystal', 'A+', 14, 'Gold', '2023-03-15', 'ISO9001', 'Preferred supplier', '2023-01-10', '2023-06-01', 'North Realm', 'TX123456', 'Net30');
INSERT INTO spell_component_suppliers (supplier_id, supplier_name, contact_person, phone_number, email, address, rating, contracts_active, primary_component, component_quality, lead_time_days, pricing_tier, last_evaluation, certifications, notes, created_at, updated_at, region, tax_id, payment_terms) VALUES (602, 'Celestial Herbs Ltd', 'Jorin Vale', '555-1002', 'jorin@celestialherbs.com', '8 Star Grove', 4, 1, 'Phoenix Ash', 'A', 21, 'Silver', '2023-04-20', 'ISO14001', 'Seasonal availability', '2023-02-05', '2023-07-12', 'East Vale', 'TX654321', 'Net45');
INSERT INTO spell_component_suppliers (supplier_id, supplier_name, contact_person, phone_number, email, address, rating, contracts_active, primary_component, component_quality, lead_time_days, pricing_tier, last_evaluation, certifications, notes, created_at, updated_at, region, tax_id, payment_terms) VALUES (603, 'Runic Metals Inc', 'Elda Brine', '555-1003', 'elda@runicmetals.com', '33 Forge Street', 3, 0, 'Obsidian Shard', 'B+', 30, 'Bronze', '2023-01-30', 'ISO45001', 'Pending renewal', '2023-01-20', '2023-06-15', 'South Ridge', 'TX112233', 'Net60');

-- Rune Forge Operations Log
CREATE TABLE rune_forge_operations_log (
    operation_id INTEGER PRIMARY KEY,
    forge_id INTEGER,
    rune_type TEXT,
    metal_alloy TEXT,
    melting_temperature REAL,
    casting_time_seconds INTEGER,
    cooling_rate REAL,
    quality_score REAL,
    operator_name TEXT,
    shift TEXT,
    operation_date DATE,
    batch_number TEXT,
    defects_found INTEGER,
    rework_flag INTEGER,
    inspector_name TEXT,
    inspection_notes TEXT,
    output_quantity INTEGER,
    waste_material_weight REAL,
    maintenance_required INTEGER,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO rune_forge_operations_log (operation_id, forge_id, rune_type, metal_alloy, melting_temperature, casting_time_seconds, cooling_rate, quality_score, operator_name, shift, operation_date, batch_number, defects_found, rework_flag, inspector_name, inspection_notes, output_quantity, waste_material_weight, maintenance_required, notes, created_at, updated_at) VALUES (701, 11, 'FireRune', 'CopperTin', 1450.5, 180, 0.75, 88.2, 'Marek', 'Day', '2023-05-10', 'BATCHF001', 2, 1, 'Lira', 'Minor surface blemishes', 500, 12.5, 0, 'Standard run', '2023-05-11', '2023-05-12');
INSERT INTO rune_forge_operations_log (operation_id, forge_id, rune_type, metal_alloy, melting_temperature, casting_time_seconds, cooling_rate, quality_score, operator_name, shift, operation_date, batch_number, defects_found, rework_flag, inspector_name, inspection_notes, output_quantity, waste_material_weight, maintenance_required, notes, created_at, updated_at) VALUES (702, 12, 'WaterRune', 'SilverGold', 1300.0, 210, 0.60, 91.5, 'Selene', 'Night', '2023-06-02', 'BATCHW002', 0, 0, 'Orin', 'All dimensions within tolerance', 450, 10.0, 1, 'Scheduled maintenance after run', '2023-06-03', '2023-06-04');
INSERT INTO rune_forge_operations_log (operation_id, forge_id, rune_type, metal_alloy, melting_temperature, casting_time_seconds, cooling_rate, quality_score, operator_name, shift, operation_date, batch_number, defects_found, rework_flag, inspector_name, inspection_notes, output_quantity, waste_material_weight, maintenance_required, notes, created_at, updated_at) VALUES (703, 13, 'EarthRune', 'IronNickel', 1500.0, 190, 0.80, 85.0, 'Thorn', 'Day', '2023-07-15', 'BATCHE003', 3, 1, 'Mira', 'Cracks observed on 2% of pieces', 520, 15.3, 0, 'Rework performed on defective units', '2023-07-16', '2023-07-17');

-- Enchanted Artifact Market
CREATE TABLE enchanted_artifact_market (
    listing_id INTEGER PRIMARY KEY,
    artifact_name TEXT,
    artifact_type TEXT,
    enchantment TEXT,
    base_value REAL,
    market_price REAL,
    seller_id INTEGER,
    buyer_id INTEGER,
    listing_date DATE,
    sale_date DATE,
    condition_grade TEXT,
    rarity_level TEXT,
    auction_flag INTEGER,
    bid_count INTEGER,
    highest_bid REAL,
    location TEXT,
    shipping_cost REAL,
    warranty_period_days INTEGER,
    return_policy TEXT,
    verification_status TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);

INSERT INTO enchanted_artifact_market (listing_id, artifact_name, artifact_type, enchantment, base_value, market_price, seller_id, buyer_id, listing_date, sale_date, condition_grade, rarity_level, auction_flag, bid_count, highest_bid, location, shipping_cost, warranty_period_days, return_policy, verification_status, notes, created_at, updated_at) VALUES (801, 'Staff of Dawn', 'Staff', 'Light Beam', 1200.00, 1500.00, 1001, 2002, '2023-04-01', '2023-04-10', 'Excellent', 'Rare', 1, 5, 1550.00, 'Capital City', 25.00, 365, 'No Returns', 'Verified', 'High demand item', '2023-04-02', '2023-04-11');
INSERT INTO enchanted_artifact_market (listing_id, artifact_name, artifact_type, enchantment, base_value, market_price, seller_id, buyer_id, listing_date, sale_date, condition_grade, rarity_level, auction_flag, bid_count, highest_bid, location, shipping_cost, warranty_period_days, return_policy, verification_status, notes, created_at, updated_at) VALUES (802, 'Amulet of Shadows', 'Amulet', 'Invisibility', 800.00, 950.00, 1003, 2005, '2023-05-15', '2023-05-22', 'Good', 'Uncommon', 0, 0, 0.00, 'Harbor Town', 15.00, 180, '30 Day Return', 'Pending', 'First sale of series', '2023-05-16', '2023-05-23');
INSERT INTO enchanted_artifact_market (listing_id, artifact_name, artifact_type, enchantment, base_value, market_price, seller_id, buyer_id, listing_date, sale_date, condition_grade, rarity_level, auction_flag, bid_count, highest_bid, location, shipping_cost, warranty_period_days, return_policy, verification_status, notes, created_at, updated_at) VALUES (803, 'Ring of Eternity', 'Ring', 'Time Warp', 2000.00, 2500.00, 1007, 2010, '2023-06-20', '2023-07-01', 'Mint', 'Legendary', 1, 12, 2600.00, 'Mountain Keep', 40.00, 730, 'No Returns', 'Verified', 'Sought after by collectors', '2023-06-21', '2023-07-02');

-- Mana Crystal Registry
CREATE TABLE mana_crystal_registry (
    crystal_id INTEGER PRIMARY KEY,
    crystal_type TEXT,
    color TEXT,
    capacity REAL,
    current_charge REAL,
    source_location TEXT,
    harvested_date DATE,
    owner_id INTEGER,
    status TEXT,
    last_recharge DATE,
    next_maintenance DATE,
    durability INTEGER,
    enchantment TEXT,
    registration_number TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    linked_artifact_id INTEGER,
    geo_coordinates TEXT,
    audit_log TEXT
);

INSERT INTO mana_crystal_registry (crystal_id, crystal_type, color, capacity, current_charge, source_location, harvested_date, owner_id, status, last_recharge, next_maintenance, durability, enchantment, registration_number, notes, created_at, updated_at, linked_artifact_id, geo_coordinates, audit_log) VALUES (901, 'Pure Crystal', 'Blue', 500.0, 350.0, 'Crystal Cavern', '2022-09-10', 3001, 'Active', '2023-03-01', '2023-12-01', 95, 'Mana Boost', 'REG001', 'First generation crystal', '2022-09-11', '2023-03-02', 801, '45.12,-73.34', 'No issues recorded');
INSERT INTO mana_crystal_registry (crystal_id, crystal_type, color, capacity, current_charge, source_location, harvested_date, owner_id, status, last_recharge, next_maintenance, durability, enchantment, registration_number, notes, created_at, updated_at, linked_artifact_id, geo_coordinates, audit_log) VALUES (902, 'Luminous Gem', 'Green', 750.0, 750.0, 'Luminous Grove', '2023-01-20', 3005, 'Full', '2023-06-15', '2024-06-15', 100, 'Regeneration', 'REG002', 'Charged at source', '2023-01-21', '2023-06-16', 802, '60.45,-120.78', 'Maintenance due soon');
INSERT INTO mana_crystal_registry (crystal_id, crystal_type, color, capacity, current_charge, source_location, harvested_date, owner_id, status, last_recharge, next_maintenance, durability, enchantment, registration_number, notes, created_at, updated_at, linked_artifact_id, geo_coordinates, audit_log) VALUES (903, 'Ethereal Shard', 'Violet', 300.0, 150.0, 'Ethereal Rift', '2023-04-05', 3010, 'Depleted', '2023-04-20', '2024-04-20', 70, 'Soul Bind', 'REG003', 'Requires recharging', '2023-04-06', '2023-04-21', 803, '10.22,45.67', 'Low charge warning');