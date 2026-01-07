-- Interstellar Supply Hub
CREATE TABLE interstellar_supply_hub
(
    hub_id                           INTEGER PRIMARY KEY,
    hub_name                         TEXT,
    location_lat                     REAL,
    location_long                    REAL,
    capacity_mw                      INTEGER,
    operational_status               TEXT,
    launch_date                      TEXT,
    manager_id                       INTEGER,
    contact_email                    TEXT,
    security_level                   TEXT,
    maintenance_cycle_days           INTEGER,
    last_inspection_date             TEXT,
    next_inspection_date             TEXT,
    backup_generator_type            TEXT,
    fuel_type                        TEXT,
    redundancy_rating                TEXT,
    region_code                      TEXT,
    compliance_certified             TEXT,
    power_output_history             TEXT,
    avg_load_factor                  REAL,
    emergency_shutdown_protocol      TEXT,
    grid_connection_id               INTEGER,
    notes                            TEXT
);

INSERT INTO interstellar_supply_hub VALUES (1, 'AlphaHub', 12.34, -45.67, 5000, 'Active', '2023-06-01', 101, 'alpha@example.com', 'High', 90, '2024-06-01', '2025-06-01', 'Diesel', 'Hydrogen', 'A', 'Yes', '2023-2024', 0.78, 'Standard', 2001, 'Initial commissioning');
INSERT INTO interstellar_supply_hub VALUES (2, 'BetaStation', -23.45, 67.89, 3200, 'Maintenance', '2022-11-15', 102, 'beta@example.com', 'Medium', 120, '2024-11-15', '2025-11-15', 'Gas Turbine', 'Methane', 'B', 'No', '2022-2023', 0.65, 'Enhanced', 2002, 'Routine overhaul');
INSERT INTO interstellar_supply_hub VALUES (3, 'GammaOutpost', 45.00, 30.00, 1500, 'Inactive', '2020-01-20', 103, 'gamma@example.com', 'Low', 180, '2023-01-20', '2024-01-20', 'Solar', 'Solar', 'C', 'Yes', '2020-2021', 0.55, 'Basic', 2003, 'Decommissioned pending reuse');

-- Cosmic Artifact Acquisition
CREATE TABLE cosmic_artifact_acquisition
(
    acquisition_id                 INTEGER PRIMARY KEY,
    artifact_name                  TEXT,
    discovery_date                 TEXT,
    discovered_by                  TEXT,
    origin_universe                TEXT,
    artifact_type                  TEXT,
    mass_kg                        REAL,
    dimensions_cm                  TEXT,
    containment_level              TEXT,
    storage_location               TEXT,
    acquisition_cost_usd           REAL,
    current_status                 TEXT,
    curator_id                     INTEGER,
    hazard_rating                  TEXT,
    last_test_date                 TEXT,
    preservation_method            TEXT,
    insurance_policy_number        TEXT,
    insured_value_usd              REAL,
    provenance_document            TEXT,
    special_handling_instructions  TEXT
);

INSERT INTO cosmic_artifact_acquisition VALUES (1, 'StarlightShard', '2024-03-12', 'DrZen', 'UniverseX', 'Crystal', 2.5, '5x5x2', 'Level3', 'VaultA1', 1500000, 'Secure', 201, 'High', '2024-04-01', 'Cryogenic', 'POL12345', 2000000, 'DocA', 'Handle with magnetic gloves');
INSERT INTO cosmic_artifact_acquisition VALUES (2, 'NebulaCore', '2023-09-08', 'TeamOmega', 'UniverseY', 'Energy Core', 0.8, '10x10x10', 'Level5', 'VaultB2', 3000000, 'Quarantined', 202, 'Critical', '2023-10-10', 'VacuumSeal', 'POL67890', 3500000, 'DocB', 'No exposure to air');
INSERT INTO cosmic_artifact_acquisition VALUES (3, 'AncientObelisk', '2022-12-21', 'ArchaeologyDept', 'UniverseZ', 'Stone', 5000, '200x200x500', 'Level2', 'ExhibitHall1', 500000, 'OnDisplay', 203, 'Medium', '2023-01-15', 'ClimateControlled', 'POL11223', 750000, 'DocC', 'Do not move without support crew');

-- Metahuman Clinic Schedule
CREATE TABLE metahuman_clinic_schedule
(
    schedule_id                 INTEGER PRIMARY KEY,
    clinic_name                 TEXT,
    clinic_address              TEXT,
    city                        TEXT,
    state                       TEXT,
    zip_code                    TEXT,
    contact_phone               TEXT,
    contact_email               TEXT,
    operating_hours             TEXT,
    days_open                   TEXT,
    max_patients_per_day        INTEGER,
    specialization              TEXT,
    lead_physician_id           INTEGER,
    equipment_list              TEXT,
    appointment_slot_duration_minutes INTEGER,
    online_booking_enabled      TEXT,
    telemedicine_supported      TEXT,
    insurance_accepted          TEXT,
    average_wait_time_minutes  INTEGER,
    patient_satisfaction_score REAL
);

INSERT INTO metahuman_clinic_schedule VALUES (1, 'PrimeCare Center', '1000 Hero Way', 'MetroCity', 'CA', '90001', '5551234567', 'primecare@example.com', '08:00-18:00', 'MonTueWedThuFri', 120, 'Genetics', 301, 'GeneSequencer,PhotonTherapy', 30, 'Yes', 'Yes', 'Yes', 15, 4.8);
INSERT INTO metahuman_clinic_schedule VALUES (2, 'Eclipse Health', '2500 Victory Rd', 'Gotham', 'NY', '10002', '5559876543', 'eclipse@example.com', '09:00-17:00', 'MonTueWedThuFri', 80, 'Regeneration', 302, 'RegenerationChamber,NeuroStim', 45, 'No', 'Yes', 'Yes', 20, 4.5);
INSERT INTO metahuman_clinic_schedule VALUES (3, 'Arcane Wellness', '500 Mystic Ln', 'StarCity', 'IL', '60003', '5555555555', 'arcane@example.com', '07:00-19:00', 'MonTueWedThuFriSat', 150, 'Energy Manipulation', 303, 'EnergyFieldModulator,QuantumScanner', 20, 'Yes', 'No', 'No', 10, 4.9);

-- Galactic Trade Route Statistics
CREATE TABLE galactic_trade_route_statistics
(
    route_id                     INTEGER PRIMARY KEY,
    start_system                 TEXT,
    end_system                   TEXT,
    distance_lightyears          REAL,
    typical_transit_time_days    REAL,
    cargo_capacity_tons          REAL,
    average_daily_volume_tons    REAL,
    fee_per_ton_usd              REAL,
    security_rating              TEXT,
    regulatory_body              TEXT,
    last_inspection_date         TEXT,
    traffic_congestion_index     REAL,
    piracy_incidents_last_year   INTEGER,
    insurance_rate_percent       REAL,
    economic_impact_score        REAL,
    trade_goods_primary          TEXT,
    trade_goods_secondary        TEXT,
    seasonal_variation_factor    REAL,
    route_status                 TEXT,
    notes                        TEXT
);

INSERT INTO galactic_trade_route_statistics VALUES (1, 'Sol', 'AlphaCentauri', 4.3, 2.5, 5000, 1200, 150, 'High', 'GalacticTradeCommission', '2024-02-15', 0.2, 1, 0.5, 85.0, 'Metals', 'Food', 1.0, 'Active', 'Stable route');
INSERT INTO galactic_trade_route_statistics VALUES (2, 'Vulcan', 'Krypton', 12.7, 5.0, 8000, 3000, 200, 'Medium', 'InterstellarRegulators', '2023-11-20', 0.4, 3, 0.7, 70.5, 'Technology', 'Pharmaceuticals', 0.9, 'Active', 'Occasional delays due to storms');
INSERT INTO galactic_trade_route_statistics VALUES (3, 'Mars', 'AndromedaPrime', 25.0, 10.0, 15000, 5000, 250, 'Low', 'OuterRimAuthority', '2022-08-05', 0.6, 7, 1.2, 55.3, 'LuxuryGoods', 'Artifacts', 1.2, 'UnderReview', 'High piracy risk');

-- Virtual Collectible Marketplace User
CREATE TABLE virtual_collectible_marketplace_user
(
    user_id                     INTEGER PRIMARY KEY,
    username                    TEXT,
    registration_date           TEXT,
    email                       TEXT,
    country_code                TEXT,
    preferred_currency          TEXT,
    wallet_balance_usd          REAL,
    verification_level          TEXT,
    two_factor_enabled          TEXT,
    last_login_timestamp        TEXT,
    total_purchases             INTEGER,
    total_sales                 INTEGER,
    favorite_category           TEXT,
    collection_size             INTEGER,
    reputation_score            REAL,
    badge_earned                TEXT,
    referral_code               TEXT,
    newsletter_subscribed       TEXT,
    account_status              TEXT,
    marketing_opt_in            TEXT
);

INSERT INTO virtual_collectible_marketplace_user VALUES (1, 'CollectorOne', '2022-01-15', 'collector1@example.com', 'US', 'USD', 2500.75, 'Level3', 'Yes', '2025-01-06 12:30:00', 45, 30, 'Heroes', 120, 4.7, 'Veteran', 'REF123', 'Yes', 'Active', 'No');
INSERT INTO virtual_collectible_marketplace_user VALUES (2, 'TradeMaster', '2021-06-20', 'trademaster@example.com', 'CA', 'CAD', 4800.00, 'Level5', 'Yes', '2025-01-06 09:15:00', 150, 200, 'Villains', 340, 4.9, 'Elite', 'REF456', 'Yes', 'Active', 'Yes');
INSERT INTO virtual_collectible_marketplace_user VALUES (3, 'NewbieTrader', '2024-03-05', 'newbie@example.com', 'GB', 'GBP', 150.50, 'Level1', 'No', '2025-01-05 20:45:00', 5, 2, 'Artifacts', 20, 3.2, 'Starter', 'REF789', 'No', 'Active', 'Yes');

-- AI Model Performance Log
CREATE TABLE ai_model_performance_log
(
    log_id                     INTEGER PRIMARY KEY,
    model_name                 TEXT,
    version                    TEXT,
    deployment_environment     TEXT,
    timestamp                  TEXT,
    cpu_usage_percent          REAL,
    gpu_usage_percent          REAL,
    memory_usage_mb            REAL,
    latency_ms                 REAL,
    throughput_requests_per_sec REAL,
    error_rate_percent         REAL,
    data_drift_detected       TEXT,
    retraining_needed         TEXT,
    model_accuracy_percent    REAL,
    loss_value                 REAL,
    precision                  REAL,
    recall                     REAL,
    f1_score                   REAL,
    notes                      TEXT,
    compliance_status         TEXT
);

INSERT INTO ai_model_performance_log VALUES (1, 'HeroRecommendation', 'v2.1', 'Production', '2025-01-05 10:00:00', 65.2, 78.5, 2048, 120.5, 350, 0.2, 'No', 'No', 92.5, 0.15, 0.94, 0.91, 0.925, 'Stable performance', 'Compliant');
INSERT INTO ai_model_performance_log VALUES (2, 'VillainDetection', 'v3.0', 'Staging', '2025-01-04 14:30:00', 72.0, 85.0, 3072, 95.3, 420, 0.1, 'Yes', 'Yes', 96.0, 0.08, 0.97, 0.95, 0.96, 'Drift detected, schedule retraining', 'PendingReview');
INSERT INTO ai_model_performance_log VALUES (3, 'UniverseSimulation', 'v1.5', 'Testing', '2025-01-03 08:15:00', 55.5, 60.0, 4096, 200.0, 250, 0.5, 'No', 'No', 88.0, 0.22, 0.90, 0.85, 0.875, 'Higher latency under load', 'Compliant');

-- Environmental Monitoring Station Reading
CREATE TABLE environmental_monitoring_station_reading
(
    reading_id                 INTEGER PRIMARY KEY,
    station_id                 INTEGER,
    timestamp                  TEXT,
    temperature_c              REAL,
    humidity_percent           REAL,
    co2_ppm                    REAL,
    pm2_5_ug_m3                REAL,
    pm10_ug_m3                 REAL,
    ozone_ppb                  REAL,
    wind_speed_mps             REAL,
    wind_direction_deg         INTEGER,
    precipitation_mm           REAL,
    solar_irradiance_w_m2      REAL,
    noise_level_db             REAL,
    soil_moisture_percent     REAL,
    water_quality_index        REAL,
    biodiversity_index        REAL,
    battery_level_percent      REAL,
    maintenance_required_flag  TEXT,
    notes                      TEXT
);

INSERT INTO environmental_monitoring_station_reading VALUES (1, 101, '2025-01-06 00:00:00', 22.5, 55.0, 410, 12.3, 25.7, 30, 5.2, 180, 0.0, 560, 45, 30.5, 85.0, 72.3, 95.0, 'No', 'Normal operation');
INSERT INTO environmental_monitoring_station_reading VALUES (2, 102, '2025-01-06 01:00:00', 21.8, 57.2, 415, 10.8, 22.1, 28, 4.9, 190, 0.0, 540, 48, 31.0, 84.5, 71.8, 93.5, 'No', 'Slight increase in CO2');
INSERT INTO environmental_monitoring_station_reading VALUES (3, 103, '2025-01-06 02:00:00', 20.9, 60.1, 420, 9.5, 20.0, 27, 4.5, 200, 0.1, 530, 50, 31.5, 83.9, 71.2, 92.0, 'Yes', 'Battery level low, schedule replacement');

-- Interdimensional Portal Registry
CREATE TABLE interdimensional_portal_registry
(
    portal_id                     INTEGER PRIMARY KEY,
    portal_name                   TEXT,
    creation_date                 TEXT,
    creator_entity                TEXT,
    linked_universe               TEXT,
    portal_type                   TEXT,
    stability_rating              TEXT,
    energy_consumption_mw        REAL,
    access_control_level         TEXT,
    security_protocol            TEXT,
    last_activation_date         TEXT,
    next_scheduled_activation    TEXT,
    max_simultaneous_travelers   INTEGER,
    portal_location_lat          REAL,
    portal_location_long         REAL,
    guardian_entity              TEXT,
    maintenance_schedule         TEXT,
    incident_reports_count       INTEGER,
    current_status               TEXT,
    notes                        TEXT
);

INSERT INTO interdimensional_portal_registry VALUES (1, 'AetherGate', '2022-05-10', 'QuantumLab', 'UniverseX', 'Wormhole', 'Stable', 1500, 'Level5', 'QuantumEncryption', '2024-12-01', '2025-06-01', 50, -12.34, 45.67, 'Chronos', 'Quarterly', 2, 'Online', 'Primary gateway for research');
INSERT INTO interdimensional_portal_registry VALUES (2, 'NebulaDoor', '2023-03-22', 'AstroForge', 'UniverseY', 'Tunnel', 'Unstable', 800, 'Level3', 'TemporalShield', '2024-11-15', '2025-05-15', 30, 23.45, -67.89, 'Aurora', 'BiAnnual', 5, 'Offline', 'Undergoing stabilization');
INSERT INTO interdimensional_portal_registry VALUES (3, 'VoidPassage', '2021-11-05', 'DarkMatterInc', 'UniverseZ', 'Portal', 'Critical', 2000, 'Level7', 'NullField', '2024-10-20', '2025-04-20', 70, 0.00, 0.00, 'Obsidian', 'Monthly', 10, 'Online', 'High traffic route for trade');

-- Nanotech Component Inventory
CREATE TABLE nanotech_component_inventory
(
    component_id                INTEGER PRIMARY KEY,
    component_name              TEXT,
    batch_number                TEXT,
    manufacture_date            TEXT,
    manufacturer_name           TEXT,
    material_type               TEXT,
    dimensions_mm               TEXT,
    weight_mg                  REAL,
    purity_percent              REAL,
    functional_rating           TEXT,
    quantity_in_stock           INTEGER,
    safety_certified            TEXT,
    storage_temperature_c       REAL,
    hazard_class               TEXT,
    disposal_method            TEXT,
    supplier_id                 INTEGER,
    cost_per_unit_usd          REAL,
    last_audit_date            TEXT,
    next_audit_due             TEXT,
    notes                      TEXT
);

INSERT INTO nanotech_component_inventory VALUES (1, 'NanoFiberMat', 'BCH001', '2023-08-15', 'NanoCorp', 'CarbonNanotube', '10x10x1', 0.5, 99.8, 'A', 1200, 'Yes', -20, 'Class2', 'Recycling', 501, 15.75, '2024-12-01', '2025-12-01', 'High tensile strength');
INSERT INTO nanotech_component_inventory VALUES (2, 'QuantumDotChip', 'BCH002', '2022-11-30', 'QuantumTech', 'Silicon', '5x5x0.2', 0.2, 98.5, 'B', 800, 'Yes', 5, 'Class1', 'Incineration', 502, 45.00, '2024-11-15', '2025-11-15', 'Used in photonic circuits');
INSERT INTO nanotech_component_inventory VALUES (3, 'BioNanoGel', 'BCH003', '2024-01-20', 'BioNano Ltd', 'Hydrogel', '20x20x5', 2.0, 97.0, 'C', 500, 'No', 22, 'Class3', 'Neutralization', 503, 8.30, '2024-12-20', '2025-12-20', 'Biocompatible for medical use');

-- Hero Fan Interaction Log
CREATE TABLE hero_fan_interaction_log
(
    interaction_id               INTEGER PRIMARY KEY,
    hero_id                      INTEGER,
    fan_id                       INTEGER,
    interaction_type             TEXT,
    interaction_timestamp        TEXT,
    platform                     TEXT,
    location                     TEXT,
    duration_seconds             INTEGER,
    view_count                   INTEGER,
    like_count                   INTEGER,
    comment_count                INTEGER,
    share_count                  INTEGER,
    rating_score                 REAL,
    feedback_text                TEXT,
    moderator_reviewed_flag      TEXT,
    follow_up_required_flag      TEXT,
    next_action_due_date         TEXT,
    assigned_staff_id            INTEGER,
    outcome                      TEXT,
    notes                        TEXT,
    archived_flag                TEXT
);

INSERT INTO hero_fan_interaction_log VALUES (1, 1, 1001, 'QandA', '2025-01-04 16:45:00', 'LiveStream', 'Online', 1800, 5000, 350, 120, 80, 4.5, 'Great answers', 'Yes', 'No', '2025-01-10', 301, 'Positive', 'Featured on homepage', 'No');
INSERT INTO hero_fan_interaction_log VALUES (2, 2, 1002, 'Autograph', '2025-01-03 11:20:00', 'Convention', 'Hall A', 300, 0, 0, 0, 0, 5.0, 'Very friendly', 'Yes', 'Yes', '2025-01-08', 302, 'Followup scheduled', 'Sent thank you email', 'No');
INSERT INTO hero_fan_interaction_log VALUES (3, 3, 1003, 'Poll', '2025-01-02 09:00:00', 'SocialMedia', 'Online', 0, 0, 0, 0, 0, 3.8, 'Would like more team-ups', 'No', 'No', NULL, NULL, 'Pending', 'Will consider for next story arc', 'No');