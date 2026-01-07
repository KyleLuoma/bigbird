-- Table storing quantum flux monitor readings
CREATE TABLE quantum_flux_monitor
(
    id                     INTEGER PRIMARY KEY,
    observation_timestamp  TEXT,
    sensor_location        TEXT,
    flux_value             REAL,
    temperature_c          REAL,
    pressure_pa            REAL,
    magnetic_field_tesla  REAL,
    radiation_level_sievert REAL,
    operator_name          TEXT,
    calibration_version    TEXT,
    status                 TEXT,
    notes                  TEXT,
    data_quality_score     INTEGER,
    uptime_seconds         INTEGER,
    firmware_version       TEXT,
    voltage_mv             INTEGER,
    current_ma             INTEGER,
    humidity_percent       REAL,
    anomaly_flag           INTEGER,
    maintenance_due_date   TEXT
);

INSERT INTO quantum_flux_monitor (id, observation_timestamp, sensor_location, flux_value, temperature_c, pressure_pa, magnetic_field_tesla, radiation_level_sievert, operator_name, calibration_version, status, notes, data_quality_score, uptime_seconds, firmware_version, voltage_mv, current_ma, humidity_percent, anomaly_flag, maintenance_due_date) VALUES (1, '2025-03-15T08:30:00Z', 'SectorA1', 12.5, 22.3, 101325, 0.45, 0.02, 'Alice', 'v1.2', 'active', 'initial deployment', 95, 3600, 'fw3.4', 3300, 120, 45.0, 0, '2025-09-01');
INSERT INTO quantum_flux_monitor (id, observation_timestamp, sensor_location, flux_value, temperature_c, pressure_pa, magnetic_field_tesla, radiation_level_sievert, operator_name, calibration_version, status, notes, data_quality_score, uptime_seconds, firmware_version, voltage_mv, current_ma, humidity_percent, anomaly_flag, maintenance_due_date) VALUES (2, '2025-04-01T14:12:00Z', 'SectorB4', 9.8, 19.7, 100800, 0.38, 0.015, 'Bob', 'v1.2', 'active', 'routine check', 88, 7200, 'fw3.4', 3290, 115, 40.5, 0, '2025-09-01');
INSERT INTO quantum_flux_monitor (id, observation_timestamp, sensor_location, flux_value, temperature_c, pressure_pa, magnetic_field_tesla, radiation_level_sievert, operator_name, calibration_version, status, notes, data_quality_score, uptime_seconds, firmware_version, voltage_mv, current_ma, humidity_percent, anomaly_flag, maintenance_due_date) VALUES (3, '2025-04-20T09:45:00Z', 'SectorC7', 15.2, 23.1, 101600, 0.52, 0.025, 'Cara', 'v1.3', 'maintenance', 'calibration performed', 92, 1800, 'fw3.5', 3310, 122, 48.2, 1, '2025-10-15');

-- Table documenting planetary mining operations
CREATE TABLE planetary_mining_operation
(
    id                     INTEGER PRIMARY KEY,
    planet_name            TEXT,
    region_name            TEXT,
    mineral_type           TEXT,
    extraction_method      TEXT,
    start_date             TEXT,
    end_date               TEXT,
    total_extracted_tons   REAL,
    employee_count         INTEGER,
    equipment_id           TEXT,
    contractor_name        TEXT,
    environmental_impact_score INTEGER,
    safety_incidents       INTEGER,
    regulatory_approval_number TEXT,
    operating_company      TEXT,
    depth_meters           REAL,
    latitude               REAL,
    longitude              REAL,
    status                 TEXT,
    notes                  TEXT
);

INSERT INTO planetary_mining_operation (id, planet_name, region_name, mineral_type, extraction_method, start_date, end_date, total_extracted_tons, employee_count, equipment_id, contractor_name, environmental_impact_score, safety_incidents, regulatory_approval_number, operating_company, depth_meters, latitude, longitude, status, notes) VALUES (1, 'Xenon', 'Northern Basin', 'Tritanium', 'laser_drill', '2023-01-15', '2024-07-30', 1250.5, 240, 'EQX-400', 'LunaWorks', 78, 3, 'RA-9921', 'NovaMining', 850.0, -12.34, 45.67, 'completed', 'exceeded production target');
INSERT INTO planetary_mining_operation (id, planet_name, region_name, mineral_type, extraction_method, start_date, end_date, total_extracted_tons, employee_count, equipment_id, contractor_name, environmental_impact_score, safety_incidents, regulatory_approval_number, operating_company, depth_meters, latitude, longitude, status, notes) VALUES (2, 'Ganymede', 'Ice Crater', 'Helium-3', 'thermal_extraction', '2024-03-01', NULL, 0.0, 150, 'EQG-210', 'CryoTech', 62, 0, 'RA-1104', 'ArcticProspect', 1200.0, 22.78, -88.33, 'active', 'phase 2 expansion planned');
INSERT INTO planetary_mining_operation (id, planet_name, region_name, mineral_type, extraction_method, start_date, end_date, total_extracted_tons, employee_count, equipment_id, contractor_name, environmental_impact_score, safety_incidents, regulatory_approval_number, operating_company, depth_meters, latitude, longitude, status, notes) VALUES (3, 'Vulcan', 'Molten Ridge', 'Obsidian', 'magmatic_harvest', '2022-05-10', '2023-11-20', 980.0, 300, 'EQV-777', 'MagmaWorks', 85, 7, 'RA-7550', 'FireForge', 640.5, -45.12, 79.44, 'completed', 'high safety review required');

-- Archive of mythic rituals
CREATE TABLE mythic_ritual_archive
(
    id                       INTEGER PRIMARY KEY,
    ritual_name              TEXT,
    mythic_origin            TEXT,
    performed_by             TEXT,
    date_performed           TEXT,
    location                 TEXT,
    required_artifacts       TEXT,
    outcome                  TEXT,
    participant_count        INTEGER,
    duration_hours           REAL,
    sacred_items_used        TEXT,
    incantation_text         TEXT,
    priesthood_rank          TEXT,
    divine_favor_level       INTEGER,
    celestial_alignment      TEXT,
    protective_ward_type     TEXT,
    success_probability_percent INTEGER,
    post_ritual_effects      TEXT,
    chronicler_name          TEXT,
    archival_reference       TEXT
);

INSERT INTO mythic_ritual_archive (id, ritual_name, mythic_origin, performed_by, date_performed, location, required_artifacts, outcome, participant_count, duration_hours, sacred_items_used, incantation_text, priesthood_rank, divine_favor_level, celestial_alignment, protective_ward_type, success_probability_percent, post_ritual_effects, chronicler_name, archival_reference) VALUES (1, 'Rite of Dawn', 'Eldara', 'HighSeerMara', '2021-06-21', 'Temple of Light', 'Sunstone|GoldenCenser', 'Blessing', 12, 3.5, 'Lumina Orb', 'Luxetia', 'Archpriest', 9, 'Solstice', 'SolarShield', 95, 'CropYieldIncrease', 'ScribeTal', 'AR-001');
INSERT INTO mythic_ritual_archive (id, ritual_name, mythic_origin, performed_by, date_performed, location, required_artifacts, outcome, participant_count, duration_hours, sacred_items_used, incantation_text, priesthood_rank, divine_favor_level, celestial_alignment, protective_ward_type, success_probability_percent, post_ritual_effects, chronicler_name, archival_reference) VALUES (2, 'Moonlit Whisper', 'Silvar', 'MistressLuna', '2022-09-15', 'Glen of Echoes', 'SilverLeaf|NightBloom', 'Vision', 8, 2.0, 'Moon Crystal', 'Silence', 'Elder', 7, 'HarvestMoon', 'LunarVeil', 82, 'DreamsEnhanced', 'ScribeRyn', 'AR-002');
INSERT INTO mythic_ritual_archive (id, ritual_name, mythic_origin, performed_by, date_performed, location, required_artifacts, outcome, participant_count, duration_hours, sacred_items_used, incantation_text, priesthood_rank, divine_favor_level, celestial_alignment, protective_ward_type, success_probability_percent, post_ritual_effects, chronicizer_name, archival_reference) VALUES (3, 'Tempest Binding', 'Krynn', 'StormCallerVar', '2023-03-03', 'Highridge Peak', 'StormCore|Thunder Rod', 'Containment', 20, 5.0, 'Tempest Sigil', 'Vortexus', 'Master', 8, 'Equinox', 'WindBarrier', 88, 'WeatherStabilized', 'ScribeGor', 'AR-003');

-- Registry of chrono-stasis chambers
CREATE TABLE chrono_stasis_chamber
(
    id                     INTEGER PRIMARY KEY,
    chamber_code           TEXT,
    installation_date      TEXT,
    max_stasis_duration_days INTEGER,
    current_occupant_id    INTEGER,
    power_source_type      TEXT,
    coolant_type           TEXT,
    temperature_kelvin     REAL,
    pressure_pascal        REAL,
    status                 TEXT,
    last_maintenance_date  TEXT,
    technician_name        TEXT,
    safety_rating          INTEGER,
    failover_chamber_id    INTEGER,
    alarm_status           TEXT,
    access_level_required  TEXT,
    firmware_rev           TEXT,
    energy_consumption_kw  REAL,
    tamper_attempts        INTEGER,
    notes                  TEXT
);

INSERT INTO chrono_stasis_chamber (id, chamber_code, installation_date, max_stasis_duration_days, current_occupant_id, power_source_type, coolant_type, temperature_kelvin, pressure_pascal, status, last_maintenance_date, technician_name, safety_rating, failover_chamber_id, alarm_status, access_level_required, firmware_rev, energy_consumption_kw, tamper_attempts, notes) VALUES (1, 'CS-Alpha01', '2020-11-05', 365, NULL, 'fusion', 'liquid_nitrogen', 2.7, 101325, 'idle', '2024-12-01', 'TechJin', 9, 2, 'off', 'level3', 'fw2.1', 150.0, 0, 'first generation unit');
INSERT INTO chrono_stasis_chamber (id, chamber_code, installation_date, max_stasis_duration_days, current_occupant_id, power_source_type, coolant_type, temperature_kelvin, pressure_pascal, status, last_maintenance_date, technician_name, safety_rating, failover_chamber_id, alarm_status, access_level_required, firmware_rev, energy_consumption_kw, tamper_attempts, notes) VALUES (2, 'CS-Beta07', '2022-04-18', 730, 42, 'quantum', 'helium', 1.9, 105000, 'active', '2025-01-15', 'TechAra', 10, 1, 'on', 'level5', 'fw3.0', 210.5, 1, 'recently calibrated');
INSERT INTO chrono_stasis_chamber (id, chamber_code, installation_date, max_stasis_duration_days, current_occupant_id, power_source_type, coolant_type, temperature_kelvin, pressure_pascal, status, last_maintenance_date, technician_name, safety_rating, failover_chamber_id, alarm_status, access_level_required, firmware_rev, energy_consumption_kw, tamper_attempts, notes) VALUES (3, 'CS-Gamma12', '2023-09-30', 180, 78, 'solar', 'hydrogen', 2.3, 102500, 'maintenance', '2024-08-20', 'TechMia', 8, 4, 'off', 'level2', 'fw1.8', 130.2, 2, 'requires coolant refill');

-- Records of bioverse ecosystems
CREATE TABLE bioverse_ecosystem_record
(
    id                     INTEGER PRIMARY KEY,
    ecosystem_name         TEXT,
    planet                 TEXT,
    biome_type             TEXT,
    dominant_species       TEXT,
    biodiversity_index     REAL,
    avg_precip_mm          REAL,
    avg_temp_c             REAL,
    primary_productivity_source TEXT,
    invasive_species_present INTEGER,
    conservation_status    TEXT,
    monitoring_station_id  TEXT,
    last_survey_date       TEXT,
    researcher_lead        TEXT,
    area_sqkm              REAL,
    carbon_sequestration_tonnes REAL,
    water_cycle_rating     INTEGER,
    soil_quality_score     INTEGER,
    human_impact_score     INTEGER,
    notes                  TEXT
);

INSERT INTO bioverse_ecosystem_record (id, ecosystem_name, planet, biome_type, dominant_species, biodiversity_index, avg_precip_mm, avg_temp_c, primary_productivity_source, invasive_species_present, conservation_status, monitoring_station_id, last_survey_date, researcher_lead, area_sqkm, carbon_sequestration_tonnes, water_cycle_rating, soil_quality_score, human_impact_score, notes) VALUES (1, 'Sylvan Woods', 'Aurelia', 'Temperate Forest', 'Silvan Deer', 0.82, 1200, 15.3, 'Photosynthesis', 0, 'protected', 'MS-101', '2024-06-10', 'DrLuna', 3400.5, 58000.0, 9, 8, 2, 'stable ecosystem');
INSERT INTO bioverse_ecosystem_record (id, ecosystem_name, planet, biome_type, dominant_species, biodiversity_index, avg_precip_mm, avg_temp_c, primary_productivity_source, invasive_species_present, conservation_status, monitoring_station_id, last_survey_date, researcher_lead, area_sqkm, carbon_sequestration_tonnes, water_cycle_rating, soil_quality_score, human_impact_score, notes) VALUES (2, 'Desert of Whispers', 'Zyphos', 'Arid Desert', 'Zyphian Lizard', 0.45, 50, 38.7, 'Chemosynthesis', 1, 'vulnerable', 'MS-209', '2023-11-22', 'DrRex', 7200.0, 12000.0, 3, 4, 7, 'monitoring invasive cactus');
INSERT INTO bioverse_ecosystem_record (id, ecosystem_name, planet, biome_type, dominant_species, biodiversity_index, avg_precip_mm, avg_temp_c, primary_productivity_source, invasive_species_present, conservation_status, monitoring_station_id, last_survey_date, researcher_lead, area_sqkm, carbon_sequestration_tonnes, water_cycle_rating, soil_quality_score, human_impact_score, notes) VALUES (3, 'Crystal Reef', 'Maris', 'Marine', 'Crystal Fish', 0.67, 2000, 22.0, 'Photosynthesis', 0, 'endangered', 'MS-303', '2025-02-05', 'DrMira', 1500.3, 34000.0, 8, 7, 5, 'coral bleaching observed');

-- Registry of arcane spells
CREATE TABLE arcane_spell_registry
(
    id                       INTEGER PRIMARY KEY,
    spell_name               TEXT,
    school_of_magic          TEXT,
    level_required           INTEGER,
    casting_time_seconds     INTEGER,
    mana_cost                INTEGER,
    range_meters             REAL,
    area_of_effect_m2        REAL,
    duration_seconds         INTEGER,
    components_verbal        INTEGER,
    components_somatic       INTEGER,
    components_material      INTEGER,
    description              TEXT,
    creator_name             TEXT,
    first_appearance_date   TEXT,
    rarity                   TEXT,
    alignment_restriction    TEXT,
    target_type              TEXT,
    success_rate_percent     INTEGER,
    notes                    TEXT
);

INSERT INTO arcane_spell_registry (id, spell_name, school_of_magic, level_required, casting_time_seconds, mana_cost, range_meters, area_of_effect_m2, duration_seconds, components_verbal, components_somatic, components_material, description, creator_name, first_appearance_date, rarity, alignment_restriction, target_type, success_rate_percent, notes) VALUES (1, 'Flame Surge', 'Evocation', 3, 5, 40, 30.0, 0.0, 10, 1, 1, 0, 'A burst of fire erupts forward.', 'Eldric', '2015-04-12', 'common', 'any', 'single_target', 92, '');
INSERT INTO arcane_spell_registry (id, spell_name, school_of_magic, level_required, casting_time_seconds, mana_cost, range_meters, area_of_effect_m2, duration_seconds, components_verbal, components_somatic, components_material, description, creator_name, first_appearance_date, rarity, alignment_restriction, target_type, success_rate_percent, notes) VALUES (2, 'Mind Veil', 'Illusion', 5, 8, 60, 0.0, 0.0, 3600, 1, 1, 1, 'Creates a mental shield against intrusion.', 'Seraphine', '2017-09-30', 'uncommon', 'good', 'self', 85, '');
INSERT INTO arcane_spell_registry (id, spell_name, school_of_magic, level_required, casting_time_seconds, mana_cost, range_meters, area_of_effect_m2, duration_seconds, components_verbal, components_somatic, components_material, description, creator_name, first_appearance_date, rarity, alignment_restriction, target_type, success_rate_percent, notes) VALUES (3, 'Graviton Collapse', 'Necromancy', 8, 12, 120, 50.0, 200.0, 30, 1, 1, 1, 'Manipulates gravity to crush enemies.', 'Mordek', '2020-02-18', 'rare', 'evil', 'area', 68, 'requires rare ore');

-- Log of nanobot deployments
CREATE TABLE nanobot_deployment_log
(
    id                       INTEGER PRIMARY KEY,
    deployment_id            TEXT,
    mission_name             TEXT,
    target_system            TEXT,
    nanobot_type             TEXT,
    quantity                 INTEGER,
    launch_date              TEXT,
    completion_date          TEXT,
    success_flag             INTEGER,
    malfunction_count        INTEGER,
    average_operational_lifespan_hours REAL,
    control_center           TEXT,
    firmware_version         TEXT,
    operator_id              INTEGER,
    environmental_conditions TEXT,
    radiation_exposure_level REAL,
    power_consumed_kwh       REAL,
    data_packets_sent        INTEGER,
    anomalies_detected       INTEGER,
    remarks                  TEXT
);

INSERT INTO nanobot_deployment_log (id, deployment_id, mission_name, target_system, nanobot_type, quantity, launch_date, completion_date, success_flag, malfunction_count, average_operational_lifespan_hours, control_center, firmware_version, operator_id, environmental_conditions, radiation_exposure_level, power_consumed_kwh, data_packets_sent, anomalies_detected, remarks) VALUES (1, 'ND-001', 'Asteroid Survey', 'Alpha-9', 'Scout', 5000, '2024-01-10', '2024-01-20', 1, 2, 48.6, 'CC-North', 'v2.3', 101, 'low_pressure', 0.03, 120.5, 25000, 0, 'smooth operation');
INSERT INTO nanobot_deployment_log (id, deployment_id, mission_name, target_system, nanobot_type, quantity, launch_date, completion_date, success_flag, malfunction_count, average_operational_lifespan_hours, control_center, firmware_version, operator_id, environmental_conditions, radiation_exposure_level, power_consumed_kwh, data_packets_sent, anomalies_detected, remarks) VALUES (2, 'ND-002', 'Habitat Restoration', 'Delta-4', 'Builder', 8000, '2024-03-05', NULL, 0, 0, 0.0, 'CC-East', 'v2.5', 104, 'high_humidity', 0.07, 0.0, 0, 0, 'ongoing');
INSERT INTO nanobot_deployment_log (id, deployment_id, mission_name, target_system, nanobot_type, quantity, launch_date, completion_date, success_flag, malfunction_count, average_operational_lifespan_hours, control_center, firmware_version, operator_id, environmental_conditions, radiation_exposure_level, power_consumed_kwh, data_packets_sent, anomalies_detected, remarks) VALUES (3, 'ND-003', 'Mineral Extraction', 'Gamma-12', 'Drill', 3000, '2023-11-15', '2023-12-02', 1, 5, 36.2, 'CC-West', 'v2.1', 107, 'moderate_temperature', 0.05, 85.0, 15000, 1, 'minor drill jam');

-- Records of extraterrestrial diplomacy
CREATE TABLE extraterrestrial_diplomacy_record
(
    id                       INTEGER PRIMARY KEY,
    treaty_name              TEXT,
    alien_civilization       TEXT,
    signing_date             TEXT,
    location                 TEXT,
    representative_human     TEXT,
    representative_alien    TEXT,
    terms_summary            TEXT,
    duration_years           INTEGER,
    trade_agreements_count   INTEGER,
    military_clause_present  INTEGER,
    cultural_exchange_program INTEGER,
    secrecy_level            TEXT,
    ratification_status      TEXT,
    effective_date           TEXT,
    expiry_date              TEXT,
    amendment_number         INTEGER,
    diplomatic_rank          TEXT,
    archival_file            TEXT,
    notes                    TEXT
);

INSERT INTO extraterrestrial_diplomacy_record (id, treaty_name, alien_civilization, signing_date, location, representative_human, representative_alien, terms_summary, duration_years, trade_agreements_count, military_clause_present, cultural_exchange_program, secrecy_level, ratification_status, effective_date, expiry_date, amendment_number, diplomatic_rank, archival_file, notes) VALUES (1, 'Solar Accord', 'Vulkar', '2022-07-14', 'Neutral Station Zeta', 'AmbassadorKira', 'EnvoyZor', 'Mutual trade and research', 50, 12, 0, 1, 'confidential', 'ratified', '2022-08-01', '2072-07-31', 0, 'senior', 'AR-310', '');
INSERT INTO extraterrestrial_diplomacy_record (id, treaty_name, alien_civilization, signing_date, location, representative_human, representative_alien, terms_summary, duration_years, trade_agreements_count, military_clause_present, cultural_exchange_program, secrecy_level, ratification_status, effective_date, expiry_date, amendment_number, diplomatic_rank, archival_file, notes) VALUES (2, 'Stellar Pact', 'Xel\'Naga', '2025-03-22', 'Orbiting Hub Orion', 'EnvoyLia', 'ChancellorRyx', 'Defense alliance and technology sharing', 30, 8, 1, 0, 'top_secret', 'pending', '2025-04-15', '2055-03-21', 0, 'chief', 'AR-425', '');
INSERT INTO extraterrestrial_diplomacy_record (id, treaty_name, alien_civilization, signing_date, location, representative_human, representative_alien, terms_summary, duration_years, trade_agreements_count, military_clause_present, cultural_exchange_program, secrecy_level, ratification_status, effective_date, expiry_date, amendment_number, diplomatic_rank, archival_file, notes) VALUES (3, 'Galactic Exchange Charter', 'Zyphorians', '2021-11-09', 'Central Dock Luna', 'MinisterOra', 'DelegateZyn', 'Resource exchange and joint scientific missions', 40, 15, 0, 1, 'restricted', 'ratified', '2021-12-01', '2061-11-08', 1, 'intermediate', 'AR-512', '');

-- Multiversal trade balance reports
CREATE TABLE multiversal_trade_balance
(
    id                       INTEGER PRIMARY KEY,
    universe_branch          TEXT,
    fiscal_year              INTEGER,
    total_exports_units      REAL,
    total_imports_units      REAL,
    trade_surplus_units      REAL,
    currency_type            TEXT,
    exchange_rate_to_earth   REAL,
    major_export_goods       TEXT,
    major_import_goods       TEXT,
    tariff_average_percent   REAL,
    trade_agreements_count   INTEGER,
    sanctions_present        INTEGER,
    economic_growth_percent  REAL,
    inflation_rate_percent   REAL,
    regulatory_body          TEXT,
    report_author            TEXT,
    approval_status          TEXT,
    last_audit_date          TEXT,
    comments                 TEXT
);

INSERT INTO multiversal_trade_balance (id, universe_branch, fiscal_year, total_exports_units, total_imports_units, trade_surplus_units, currency_type, exchange_rate_to_earth, major_export_goods, major_import_goods, tariff_average_percent, trade_agreements_count, sanctions_present, economic_growth_percent, inflation_rate_percent, regulatory_body, report_author, approval_status, last_audit_date, comments) VALUES (1, 'Alpha', 2024, 1245000.0, 1123000.0, 122000.0, 'UAC', 1.05, 'Quantum Crystals', 'Nebula Gas', 4.5, 12, 0, 3.2, 2.1, 'Interverse Trade Commission', 'AnalystRae', 'approved', '2024-10-01', '');
INSERT INTO multiversal_trade_balance (id, universe_branch, fiscal_year, total_exports_units, total_imports_units, trade_surplus_units, currency_type, exchange_rate_to_earth, major_export_goods, major_import_goods, tariff_average_percent, trade_agreements_count, sanctions_present, economic_growth_percent, inflation_rate_percent, regulatory_body, report_author, approval_status, last_audit_date, comments) VALUES (2, 'Beta', 2024, 980000.0, 1034000.0, -54000.0, 'UBC', 0.97, 'Dark Matter', 'Starlight Minerals', 5.2, 9, 1, 1.8, 2.8, 'Beta Trade Authority', 'AnalystJon', 'pending', '2024-09-15', '');
INSERT INTO multiversal_trade_balance (id, universe_branch, fiscal_year, total_exports_units, total_imports_units, trade_surplus_units, currency_type, exchange_rate_to_earth, major_export_goods, major_import_goods, tariff_average_percent, trade_agreements_count, sanctions_present, economic_growth_percent, inflation_rate_percent, regulatory_body, report_author, approval_status, last_audit_date, comments) VALUES (3, 'Gamma', 2024, 1502000.0, 1498000.0, 4000.0, 'UGC', 1.12, 'Synthetic Alloys', 'Energy Cells', 3.8, 15, 0, 4.0, 1.9, 'Gamma Commerce Council', 'AnalystLee', 'approved', '2024-11-20', '');

-- Celestial navigation charts metadata
CREATE TABLE celestial_navigation_chart
(
    id                       INTEGER PRIMARY KEY,
    chart_name               TEXT,
    creator                  TEXT,
    creation_date            TEXT,
    map_projection           TEXT,
    coordinate_system        TEXT,
    primary_region           TEXT,
    scale_ratio              TEXT,
    visible_constellations   TEXT,
    celestial_poles_included INTEGER,
    epoch_year               INTEGER,
    reference_star           TEXT,
    accuracy_arcseconds      REAL,
    used_by_fleet            TEXT,
    update_frequency_days    INTEGER,
    version_number           TEXT,
    notes                    TEXT,
    deprecated_flag          INTEGER,
    source_repository        TEXT,
    copyright_holder         TEXT
);

INSERT INTO celestial_navigation_chart (id, chart_name, creator, creation_date, map_projection, coordinate_system, primary_region, scale_ratio, visible_constellations, celestial_poles_included, epoch_year, reference_star, accuracy_arcseconds, used_by_fleet, update_frequency_days, version_number, notes, deprecated_flag, source_repository, copyright_holder) VALUES (1, 'DeepSpaceMap01', 'CartographerMira', '2022-05-10', 'Mollweide', 'Equatorial', 'Sector Alpha', '1:5000000', 'Orion|Cassiopeia|Lyra', 1, 2000, 'Polaris', 0.5, 'FleetOmega', 180, 'v1.0', '', 0, 'repo_main', 'StarNav Corp');
INSERT INTO celestial_navigation_chart (id, chart_name, creator, creation_date, map_projection, coordinate_system, primary_region, scale_ratio, visible_constellations, celestial_poles_included, epoch_year, reference_star, accuracy_arcseconds, used_by_fleet, update_frequency_days, version_number, notes, deprecated_flag, source_repository, copyright_holder) VALUES (2, 'NebulaSectorChart', 'AstroHelix', '2023-11-22', 'Zenithal', 'Galactic', 'Nebula Cluster', '1:2000000', 'Carina|Vela|Scorpius', 0, 2025, 'Sirius', 0.3, 'FleetBeta', 365, 'v2.3', 'includes recent nebulae', 0, 'repo_nebula', 'Galactic Maps Ltd');
INSERT INTO celestial_navigation_chart (id, chart_name, creator, creation_date, map_projection, coordinate_system, primary_region, scale_ratio, visible_constellations, celestial_poles_included, epoch_year, reference_star, accuracy_arcseconds, used_by_fleet, update_frequency_days, version_number, notes, deprecated_flag, source_repository, copyright_holder) VALUES (3, 'OuterRimChart', 'StellarCart', '2021-02-14', 'Aitoff', 'Ecliptic', 'Outer Rim', '1:10000000', 'Pegasus|Andromeda|Cygnus', 1, 1995, 'Vega', 0.8, 'FleetAlpha', 90, 'v0.9', 'legacy chart', 1, 'repo_legacy', 'Ancient Star Charts');