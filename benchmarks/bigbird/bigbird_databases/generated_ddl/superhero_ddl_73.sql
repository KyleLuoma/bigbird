-- Table storing contracts for quantum energy trade agreements
CREATE TABLE quantum_energy_contract (
    contract_id                INTEGER PRIMARY KEY,
    contract_number            TEXT,
    issuing_agency             TEXT,
    recipient_agency           TEXT,
    energy_amount_mwh          REAL,
    start_date                 DATE,
    end_date                   DATE,
    status                     TEXT,
    approval_level             INTEGER,
    signed_by                  TEXT,
    contact_email              TEXT,
    notes                      TEXT,
    created_at                 TIMESTAMP,
    updated_at                 TIMESTAMP,
    legal_doc_ref              TEXT,
    currency                   TEXT,
    exchange_rate              REAL,
    tax_rate_percent           REAL,
    compliance_flag            INTEGER,
    audit_timestamp            TIMESTAMP
);

INSERT INTO quantum_energy_contract VALUES (1, 'QEC-001', 'SolarUnion', 'LunaCo', 5000.0, '2024-01-15', '2029-01-15', 'Active', 3, 'DrReyes', 'reyes@solarunion.com', 'First phase contract', '2024-01-10 08:00:00', '2024-01-12 12:30:00', 'LD-1001', 'USD', 1.0, 5.0, 1, '2024-01-12 12:30:00');
INSERT INTO quantum_energy_contract VALUES (2, 'QEC-002', 'NebulaGrid', 'TerraPower', 7500.5, '2025-06-01', '2030-06-01', 'Pending', 2, 'MsKhan', 'khan@nebulagrid.org', 'Awaiting regulatory review', '2025-05-20 09:45:00', '2025-05-25 14:20:00', 'LD-1002', 'EUR', 0.92, 7.5, 0, '2025-05-25 14:20:00');
INSERT INTO quantum_energy_contract VALUES (3, 'QEC-003', 'QuantumAlliance', 'StarForge', 12000.0, '2023-11-10', '2028-11-10', 'Completed', 4, 'DrVega', 'vega@quantumalliance.net', 'Final settlement done', '2023-11-01 07:15:00', '2028-11-12 16:00:00', 'LD-1003', 'GBP', 0.78, 6.0, 1, '2028-11-12 16:00:00');

-- Table recording detailed climate observations on planetary surfaces
CREATE TABLE planetary_climate_observation (
    observation_id           INTEGER PRIMARY KEY,
    planet_name              TEXT,
    region                   TEXT,
    latitude                 REAL,
    longitude                REAL,
    observation_date         DATE,
    temperature_c            REAL,
    humidity_percent         REAL,
    atmospheric_pressure_pa  REAL,
    wind_speed_mps           REAL,
    wind_direction_deg       REAL,
    precipitation_mm         REAL,
    solar_radiation_wm2      REAL,
    cloud_cover_percent      REAL,
    ozone_level_ppb          REAL,
    uv_index                 INTEGER,
    observation_method       TEXT,
    instrument_id            TEXT,
    data_quality_flag        INTEGER,
    notes                    TEXT
);

INSERT INTO planetary_climate_observation VALUES (101, 'Aurelia', 'NorthernHighlands', -12.5, 45.3, '2024-03-12', -5.2, 78.0, 95000, 5.6, 180, 0.0, 120.5, 3.2, 300, 8, 'AutomatedRelay', 'INST-2001', 1, 'Clear night');
INSERT INTO planetary_climate_observation VALUES (102, 'Boreas', 'EquatorialBasin', 2.1, -30.7, '2024-03-13', 28.4, 55.2, 101325, 3.4, 90, 0.3, 45.0, 10.0, 250, 5, 'RoverSensor', 'INST-2002', 1, 'Mild winds');
INSERT INTO planetary_climate_observation VALUES (103, 'Cygnus', 'SouthernPlains', -45.0, 120.0, '2024-03-14', -12.0, 85.0, 88000, 7.1, 270, 0.0, 200.0, 5.5, 280, 9, 'OrbitingSat', 'INST-2003', 0, 'Data gap due to dust storm');

-- Table storing genomic sequencing data for alien species
CREATE TABLE alien_species_genome (
    genome_id                 INTEGER PRIMARY KEY,
    species_name              TEXT,
    sample_id                 TEXT,
    sequencing_technique      TEXT,
    genome_size_mb            REAL,
    number_of_chromosomes    INTEGER,
    gc_content_percent       REAL,
    mitochondrial_dna_present INTEGER,
    exome_coverage_percent    REAL,
    rna_seq_available         INTEGER,
    collection_date           DATE,
    location_found            TEXT,
    collector_name            TEXT,
    storage_facility          TEXT,
    biohazard_level          INTEGER,
    sequencing_center         TEXT,
    version                   TEXT,
    assembly_date             DATE,
    publication_doi           TEXT,
    remarks                   TEXT
);

INSERT INTO alien_species_genome VALUES (5001, 'Xel\'Naga', 'SMP-001', 'Nanopore', 3200.5, 14, 48.2, 1, 95.0, 1, '2023-11-20', 'ZetaPrime', 'DrLumen', 'BioVaultA', 4, 'GeneWorks', 'v1.2', '2024-02-01', '10.1234/xyz.2024.001', 'High pathogenic potential');
INSERT INTO alien_species_genome VALUES (5002, 'Gryphonix', 'SMP-002', 'Illumina', 1500.0, 8, 52.6, 0, 88.5, 1, '2024-01-05', 'OrionSector', 'DrHale', 'GenomeDepotB', 2, 'SeqLab', 'v3.0', '2024-03-10', '10.5678/abc.2024.005', 'Non‑hazardous');
INSERT INTO alien_species_genome VALUES (5003, 'Velorian', 'SMP-003', 'PacBio', 2100.3, 12, 49.9, 1, 92.3, 0, '2023-12-15', 'AlphaCluster', 'DrMira', 'SecureVaultC', 3, 'GenomicsHub', 'v2.1', '2024-02-28', '10.9012/def.2024.009', 'Requires further annotation');

-- Table describing public exhibitions of mythic artifacts
CREATE TABLE mythic_artifact_exhibit (
    exhibit_id               INTEGER PRIMARY KEY,
    artifact_name            TEXT,
    origin_civilization      TEXT,
    discovery_year           INTEGER,
    exhibit_start_date       DATE,
    exhibit_end_date         DATE,
    museum_name              TEXT,
    gallery_number           TEXT,
    curator_name             TEXT,
    display_case_id          TEXT,
    security_level           INTEGER,
    insurance_value_usd      REAL,
    condition_report         TEXT,
    lighting_type            TEXT,
    temperature_control_c    REAL,
    humidity_control_percent REAL,
    visitor_capacity         INTEGER,
    ticket_price_usd         REAL,
    sponsor_name             TEXT,
    promotional_material     TEXT
);

INSERT INTO mythic_artifact_exhibit VALUES (301, 'Scepter of Aeon', 'Eldorian', 1892, '2024-05-01', '2024-10-01', 'Grand Museum', 'G5', 'MsAria', 'CASE-07', 5, 2500000.0, 'Excellent', 'LED', 22.0, 45.0, 5000, 25.0, 'ChronosCorp', 'BannerPrint');
INSERT INTO mythic_artifact_exhibit VALUES (302, 'Orb of Solaris', 'Solaris', 1725, '2024-06-15', '2025-01-15', 'National Gallery', 'H2', 'MrKeen', 'CASE-12', 4, 1800000.0, 'Good', 'Halogen', 20.0, 40.0, 4000, 20.0, 'HeliosPartners', 'DigitalAds');
INSERT INTO mythic_artifact_exhibit VALUES (303, 'Blade of Zephyrus', 'Windrealm', 1810, '2024-09-10', '2025-03-10', 'City Art Center', 'A1', 'DrVale', 'CASE-03', 3, 900000.0, 'Fair', 'FiberOptic', 19.5, 42.0, 3000, 15.0, 'AeroVentures', 'FlyerBrochure');

-- Table logging batches in nanotech manufacturing
CREATE TABLE nanotech_manufacturing_batch (
    batch_id                 INTEGER PRIMARY KEY,
    product_name             TEXT,
    batch_number             TEXT,
    production_line          TEXT,
    start_timestamp          TIMESTAMP,
    end_timestamp            TIMESTAMP,
    units_produced           INTEGER,
    defect_rate_percent      REAL,
    material_source          TEXT,
    nanomaterial_type        TEXT,
    particle_size_nm         REAL,
    coating_type             TEXT,
    quality_inspection_passed INTEGER,
    inspector_name           TEXT,
    supervisor_id            INTEGER,
    validation_report        TEXT,
    lot_expiration_date      DATE,
    regulatory_compliance    TEXT,
    cost_per_unit_usd        REAL,
    notes                    TEXT
);

INSERT INTO nanotech_manufacturing_batch VALUES (9001, 'NanoFiber', 'NB-1001', 'LineA', '2024-02-01 06:00:00', '2024-02-05 18:00:00', 50000, 0.8, 'MineralX', 'CarbonNanotube', 12.5, 'SilicaCoat', 1, 'MsJade', 301, 'All specs met', '2026-02-01', 'ISO9001', 0.45, 'First large batch');
INSERT INTO nanotech_manufacturing_batch VALUES (9002, 'QuantumDot', 'NB-1002', 'LineB', '2024-03-10 07:30:00', '2024-03-12 20:15:00', 20000, 1.2, 'ElementY', 'CdSe', 5.0, 'PolymerShell', 0, 'MrGlen', 302, 'Minor size variance', '2025-12-31', 'ISO9001', 1.20, 'Yield below target');
INSERT INTO nanotech_manufacturing_batch VALUES (9003, 'NanoGel', 'NB-1003', 'LineC', '2024-04-15 05:45:00', '2024-04-20 22:10:00', 75000, 0.5, 'SilicaBase', 'SilicaNanoparticle', 8.8, 'Hydrogel', 1, 'DrKeen', 303, 'Excellent rheology', '2028-04-15', 'ISO9001', 0.78, 'Ready for shipment');

-- Table describing interdimensional trade routes
CREATE TABLE interdimensional_trade_route (
    route_id                 INTEGER PRIMARY KEY,
    origin_universe          TEXT,
    destination_universe     TEXT,
    route_stability_index    REAL,
    distance_lightyears      REAL,
    travel_time_days         REAL,
    primary_commodity        TEXT,
    tariff_rate_percent      REAL,
    regulatory_body          TEXT,
    last_inspection_date     DATE,
    route_status             TEXT,
    authorized_ship_ids      TEXT,
    max_cargo_weight_tons    REAL,
    energy_requirement_mwh   REAL,
    navigation_difficulty    INTEGER,
    security_level           INTEGER,
    incident_count_last_year INTEGER,
    maintenance_schedule     TEXT,
    route_manager            TEXT,
    comments                 TEXT
);

INSERT INTO interdimensional_trade_route VALUES (401, 'PrimeVerse', 'NebulaRealm', 0.92, 3400.5, 12.3, 'PhaseCrystal', 5.0, 'CouncilX', '2024-01-20', 'Active', 'SHIP-88;SHIP-92', 250.0, 1800.0, 3, 4, 2, 'Quarterly', 'MsOrin', 'Stable and profitable');
INSERT INTO interdimensional_trade_route VALUES (402, 'AlphaDimension', 'OmegaSector', 0.78, 7200.0, 25.0, 'DarkMatter', 7.5, 'Regulix', '2023-11-15', 'UnderReview', 'SHIP-105', 180.0, 2500.0, 5, 5, 5, 'Biannual', 'MrTal', 'High incident rate');
INSERT INTO interdimensional_trade_route VALUES (403, 'EpsilonPlane', 'DeltaSphere', 0.85, 1500.2, 8.0, 'StarlightFuel', 3.0, 'TradeBoard', '2024-02-28', 'Active', 'SHIP-210;SHIP-215;SHIP-220', 300.0, 1200.0, 2, 3, 0, 'Annual', 'DrLara', 'Low traffic, high margin');

-- Table holding forecasts for upcoming cosmic events
CREATE TABLE cosmic_event_forecast (
    forecast_id                INTEGER PRIMARY KEY,
    event_type                 TEXT,
    predicted_date             DATE,
    confidence_percent         REAL,
    magnitude_estimate         REAL,
    affected_regions           TEXT,
    observation_source         TEXT,
    model_version              TEXT,
    analyst_name               TEXT,
    generated_timestamp        TIMESTAMP,
    review_status              TEXT,
    mitigation_plan            TEXT,
    budget_usd                 REAL,
    public_alert_level         INTEGER,
    communication_channel      TEXT,
    notes                      TEXT,
    reference_document         TEXT,
    impact_score               REAL,
    followup_action            TEXT,
    archival_flag              INTEGER
);

INSERT INTO cosmic_event_forecast VALUES (701, 'SolarFlare', '2024-06-12', 92.5, 8.3, 'SectorA;SectorB', 'HelioSat', 'v2.1', 'DrNova', '2024-04-01 10:00:00', 'Approved', 'DeployShield', 250000.0, 3, 'Broadcast', 'High energy flux expected', 'DOC-2024-07', 85.0, 'PostEventAnalysis', 0);
INSERT INTO cosmic_event_forecast VALUES (702, 'GammaBurst', '2024-09-30', 78.0, 9.1, 'SectorC', 'GammaArray', 'v1.9', 'MsLyra', '2024-05-15 14:30:00', 'Pending', 'EvacuateOrbitals', 500000.0, 4, 'EmergencyAlert', 'Potential damage to satellites', 'DOC-2024-09', 92.0, 'InfrastructureAudit', 0);
INSERT INTO cosmic_event_forecast VALUES (703, 'MeteorShower', '2024-12-05', 88.0, 6.5, 'PlanetX;PlanetY', 'SkyWatchNet', 'v3.0', 'MrOrion', '2024-06-20 09:45:00', 'Approved', 'PublicViewing', 100000.0, 2, 'SocialMedia', 'Spectacular viewing opportunity', 'DOC-2024-12', 45.0, 'MediaRelease', 0);

-- Table of users on a virtual collectible marketplace
CREATE TABLE virtual_collectible_marketplace_user (
    user_id                INTEGER PRIMARY KEY,
    username               TEXT,
    email                  TEXT,
    registration_date      DATE,
    last_login             TIMESTAMP,
    total_spent_usd        REAL,
    total_items_owned      INTEGER,
    average_item_value_usd REAL,
    preferred_category     TEXT,
    verification_level     INTEGER,
    two_factor_enabled    INTEGER,
    country                TEXT,
    city                   TEXT,
    timezone               TEXT,
    wallet_address         TEXT,
    crypto_balance_usd     REAL,
    loyalty_tier           TEXT,
    referral_code          TEXT,
    marketing_opt_in       INTEGER,
    notes                  TEXT
);

INSERT INTO virtual_collectible_marketplace_user VALUES (1001, 'PixelGuru', 'pixelguru@example.com', '2022-04-10', '2024-01-20 08:15:00', 12500.75, 342, 36.55, 'Artifacts', 3, 1, 'USA', 'NewYork', 'EST', '0xA1B2C3D4', 2.5, 'Gold', 'REF-2022', 1, 'Active collector');
INSERT INTO virtual_collectible_marketplace_user VALUES (1002, 'CryptoKnight', 'cknight@example.org', '2021-11-05', '2024-02-01 12:45:00', 84200.00, 1280, 65.78, 'Weaponry', 4, 1, 'UK', 'London', 'GMT', '0xEF567890', 5.0, 'Platinum', 'REF-2021', 1, 'High spender');
INSERT INTO virtual_collectible_marketplace_user VALUES (1003, 'NovaCollector', 'nova@example.net', '2023-07-22', '2024-02-28 19:30:00', 4300.20, 89, 48.31, 'CosmicItems', 2, 0, 'Canada', 'Toronto', 'EST', '0x1122AABB', 0.8, 'Silver', 'REF-2023', 0, 'Occasional buyer');

-- Table of nodes in a renewable energy grid
CREATE TABLE renewable_energy_grid_node (
    node_id                 INTEGER PRIMARY KEY,
    grid_region             TEXT,
    node_type               TEXT,
    capacity_mw             REAL,
    current_load_mw         REAL,
    operational_status      TEXT,
    last_maintenance_date   DATE,
    installation_date       DATE,
    manufacturer            TEXT,
    serial_number           TEXT,
    voltage_kv              REAL,
    frequency_hz            REAL,
    temperature_c           REAL,
    fault_count             INTEGER,
    protection_scheme       TEXT,
    upgrade_planned         INTEGER,
    expected_upgrade_date   DATE,
    responsible_operator    TEXT,
    contact_phone           TEXT,
    notes                   TEXT
);

INSERT INTO renewable_energy_grid_node VALUES (2001, 'NorthValley', 'SolarFarm', 150.0, 85.3, 'Online', '2023-12-10', '2020-06-15', 'SunPower', 'SN-3421', 33.0, 60.0, 25.5, 2, 'AVR', 1, '2025-06-01', 'OpsTeamA', '+1-555-0123', 'Performance stable');
INSERT INTO renewable_energy_grid_node VALUES (2002, 'EastCoast', 'WindTurbine', 80.0, 65.0, 'Online', '2023-11-05', '2019-03-20', 'Vestas', 'SN-8876', 22.0, 50.0, 30.2, 1, 'SCADA', 0, NULL, 'OpsTeamB', '+1-555-0456', 'Scheduled blade inspection');
INSERT INTO renewable_energy_grid_node VALUES (2003, 'CentralPlains', 'HydroPlant', 250.0, 190.5, 'Maintenance', '2023-10-01', '2015-09-12', 'GEHydro', 'SN-5609', 66.0, 50.0, 28.0, 5, 'Relay', 1, '2024-12-15', 'OpsTeamC', '+1-555-0789', 'Turbine #4 replacement pending');

-- Table for astroarchaeology expedition metadata
CREATE TABLE astroarchaeology_expedition (
    expedition_id           INTEGER PRIMARY KEY,
    mission_name            TEXT,
    launch_date             DATE,
    landing_site            TEXT,
    planet_name             TEXT,
    lead_scientist          TEXT,
    team_size               INTEGER,
    objectives_summary      TEXT,
    equipment_list          TEXT,
    data_volume_tb          REAL,
    findings_summary        TEXT,
    publication_pending     INTEGER,
    funding_agency          TEXT,
    budget_usd              REAL,
    risk_assessment_level  INTEGER,
    mission_status          TEXT,
    crew_manifest           TEXT,
    post_mission_analysis_due DATE,
    public_outreach_event   TEXT,
    notes                   TEXT
);

INSERT INTO astroarchaeology_expedition VALUES (3001, 'Echoes of Selene', '2022-08-01', 'SiteA-42', 'Selene', 'DrKara', 15, 'Map ancient settlements', 'Drill, Spectrometer, UAV', 8.7, 'Discovered basaltic scripts', 1, 'SpaceHeritageOrg', 12000000.0, 2, 'Completed', 'ASTR-001;ASTR-002;ASTR-003', '2023-03-15', 'MuseumExhibit2023', 'Data archived in public repo');
INSERT INTO astroarchaeology_expedition VALUES (3002, 'Titanic Relics', '2023-03-12', 'ValleyB-7', 'Titan', 'DrMilan', 20, 'Assess ice-layer fossils', 'IceCoreSampler, Lidar, Rover', 12.3, 'No significant fossils; high organic content', 0, 'DeepSpaceFund', 25000000.0, 3, 'Ongoing', 'ASTR-010;ASTR-011', '2024-01-20', 'LiveWebinar2024', 'Seasonal storm delaying progress');
INSERT INTO astroarchaeology_expedition VALUES (3003, 'Chronicles of Aether', '2024-02-20', 'CanyonX-3', 'Aether', 'DrYara', 12, 'Locate pre‑warp artefacts', 'ElectronMicroscope, DroneSwarm', 5.5, 'Preliminary scans show metallic anomalies', 1, 'GalacticArchives', 18000000.0, 1, 'Planned', 'ASTR-021;ASTR-022', '2024-09-10', 'PressConference2024', 'Awaiting clearance for deep drilling');