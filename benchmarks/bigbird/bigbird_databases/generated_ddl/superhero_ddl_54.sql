-- Galactic weather station data
CREATE TABLE galactic_weather_station
(
    station_id                INTEGER NOT NULL PRIMARY KEY,
    station_name              TEXT,
    galaxy                    TEXT,
    sector                    TEXT,
    coordinate_x              REAL,
    coordinate_y              REAL,
    coordinate_z              REAL,
    installation_date         DATE,
    operator_agency           TEXT,
    primary_sensor_type       TEXT,
    secondary_sensor_type     TEXT,
    data_collection_frequency_minutes INTEGER,
    power_source              TEXT,
    maintenance_cycle_days    INTEGER,
    last_maintenance_date     DATE,
    status                    TEXT,
    firmware_version          TEXT,
    latitude                  REAL,
    longitude                 REAL,
    altitude_km               REAL
);

INSERT INTO galactic_weather_station VALUES (1, 'Station Alpha', 'Andromeda', 'Sector 7', 123.45, 678.90, -45.67, '2022-03-15', 'Interstellar Weather Agency', 'Spectral Analyzer', 'Particle Detector', 30, 'Fusion Core', 90, '2023-12-01', 'Active', 'v2.3.1', 12.3456, -45.6789, 2500);
INSERT INTO galactic_weather_station VALUES (2, 'Station Beta', 'MilkyWay', 'Sector 3', -12.34, 98.76, 54.32, '2020-07-22', 'Galactic Meteorology Dept', 'Radiation Meter', 'Wind Sensor', 15, 'Solar Panels', 60, '2023-06-20', 'Active', 'v2.1.0', -23.4567, 34.5678, 1500);
INSERT INTO galactic_weather_station VALUES (3, 'Station Gamma', 'Triangulum', 'Sector 12', 0.0, 0.0, 0.0, '2021-11-05', 'Universal Climate Consortium', 'Thermal Imager', 'Humidity Gauge', 45, 'Antimatter Reactor', 120, '2023-09-10', 'Maintenance', 'v2.0.5', 0.0, 0.0, 0);

-- Quantum computing job queue
CREATE TABLE quantum_computing_job_queue
(
    job_id                     INTEGER NOT NULL PRIMARY KEY,
    job_name                   TEXT,
    submitted_by               TEXT,
    submission_timestamp       TIMESTAMP,
    priority_level             INTEGER,
    required_qubits            INTEGER,
    estimated_runtime_seconds INTEGER,
    algorithm_type             TEXT,
    input_dataset_id           INTEGER,
    output_dataset_id          INTEGER,
    node_assigned              TEXT,
    status                     TEXT,
    start_timestamp            TIMESTAMP,
    end_timestamp              TIMESTAMP,
    error_message              TEXT,
    cpu_usage_percent          REAL,
    memory_usage_gb            REAL,
    temperature_celsius        REAL,
    firmware_version           TEXT,
    security_clearance        TEXT
);

INSERT INTO quantum_computing_job_queue VALUES (101, 'ShorFactorization', 'alice', '2024-01-01 08:00:00', 1, 256, 7200, 'Factorization', 2001, 3001, 'NodeA', 'Running', '2024-01-01 08:05:00', NULL, NULL, 85.5, 12.3, 2.5, 'qc-fw-3.2', 'TopSecret');
INSERT INTO quantum_computing_job_queue VALUES (102, 'GroverSearch', 'bob', '2024-01-02 09:30:00', 2, 128, 3600, 'Search', 2002, 3002, 'NodeB', 'Queued', NULL, NULL, NULL, 0.0, 0.0, 0.0, 'qc-fw-3.2', 'Confidential');
INSERT INTO quantum_computing_job_queue VALUES (103, 'QFTSimulation', 'carol', '2024-01-03 10:15:00', 3, 64, 5400, 'Simulation', 2003, 3003, 'NodeC', 'Completed', '2024-01-03 10:20:00', '2024-01-03 11:30:00', NULL, 70.0, 8.0, 1.8, 'qc-fw-3.2', 'Unclassified');

-- Interstellar trade agreement
CREATE TABLE interstellar_trade_agreement
(
    agreement_id               INTEGER NOT NULL PRIMARY KEY,
    agreement_name             TEXT,
    signing_date               DATE,
    effective_date             DATE,
    expiration_date            DATE,
    parties_involved           TEXT,
    trade_goods_category       TEXT,
    tariff_rate_percent        REAL,
    quota_limit_units          INTEGER,
    dispute_resolution_mechanism TEXT,
    governing_body             TEXT,
    confidentiality_clause     TEXT,
    amendment_number           INTEGER,
    amendment_date             DATE,
    status                     TEXT,
    authorized_by              TEXT,
    signature_hash             TEXT,
    related_documents_path     TEXT,
    renewal_option             TEXT,
    notes                      TEXT
);

INSERT INTO interstellar_trade_agreement VALUES (5001, 'AlphaBeta Pact', '2120-05-01', '2120-06-01', '2150-05-31', 'Alpha Empire;Beta Confederation', 'Minerals', 2.5, 1000000, 'Arbiter Council', 'Galactic Trade Council', 'None', 0, NULL, 'Active', 'High Chancellor', 'hash123abc', '/docs/alpha_beta', 'AutoRenew', 'First agreement');
INSERT INTO interstellar_trade_agreement VALUES (5002, 'GammaDelta Accord', '2125-09-15', '2125-10-01', '2175-09-30', 'Gamma Syndicate;Delta Republic', 'Bioengineered Goods', 5.0, 500000, 'Mediation Committee', 'Interstellar Commerce Authority', 'Limited', 1, '2130-01-10', 'Amended', 'Trade Minister', 'hash456def', '/docs/gamma_delta', 'RenewOnRequest', 'Second amendment added');
INSERT INTO interstellar_trade_agreement VALUES (5003, 'EpsilonZeta Treaty', '2130-12-20', '2131-01-01', '2180-12-31', 'Epsilon League;Zeta Union', 'Energy Crystals', 1.0, 2000000, 'Neutral Court', 'Universal Trade Federation', 'Full', 0, NULL, 'Pending', 'Chief Negotiator', 'hash789ghi', '/docs/epsilon_zeta', 'NoRenewal', 'Awaiting signatures');

-- Nanotech manufacturing batch
CREATE TABLE nanotech_manufacturing_batch
(
    batch_id                   INTEGER NOT NULL PRIMARY KEY,
    batch_code                 TEXT,
    product_type               TEXT,
    start_date                 DATE,
    end_date                   DATE,
    facility_id                INTEGER,
    supervisor_name            TEXT,
    temperature_celsius        REAL,
    pressure_pascal            REAL,
    humidity_percent           REAL,
    operator_shift             TEXT,
    total_units_produced       INTEGER,
    defect_rate_percent        REAL,
    quality_control_passed    TEXT,
    certification_id           TEXT,
    material_source            TEXT,
    reagent_batch_number       TEXT,
    energy_consumption_kwh     REAL,
    waste_generated_kg         REAL,
    notes                      TEXT
);

INSERT INTO nanotech_manufacturing_batch VALUES (9001, 'NB-2024-001', 'Nanobot Swarm', '2024-02-01', '2024-02-10', 12, 'Dr Nova', 22.5, 101325, 45.0, 'Night', 500000, 0.2, 'Yes', 'CERT-2024-07', 'Supplier A', 'RB-789', 15000.5, 120.3, 'Initial production run');
INSERT INTO nanotech_manufacturing_batch VALUES (9002, 'NB-2024-002', 'Nano Mesh', '2024-03-05', '2024-03-14', 12, 'Dr Quantum', 24.0, 100000, 40.0, 'Day', 300000, 0.15, 'Yes', 'CERT-2024-08', 'Supplier B', 'RB-790', 12000.0, 95.0, 'Second batch with improved yield');
INSERT INTO nanotech_manufacturing_batch VALUES (9003, 'NB-2024-003', 'Nano Coil', '2024-04-12', '2024-04-20', 13, 'Dr Helix', 23.0, 102000, 42.5, 'Swing', 250000, 0.25, 'No', 'CERT-2024-09', 'Supplier C', 'RB-791', 13000.7, 110.5, 'Quality control pending');

-- Alien species habitat profile
CREATE TABLE alien_species_habitat_profile
(
    habitat_id                 INTEGER NOT NULL PRIMARY KEY,
    planet_name                TEXT,
    region_name                TEXT,
    biome_type                 TEXT,
    dominant_vegetation        TEXT,
    average_temperature_c     REAL,
    average_precipitation_mm  REAL,
    oxygen_level_percent      REAL,
    radiation_level_sv        REAL,
    native_species_count      INTEGER,
    introduced_species_count  INTEGER,
    protected_status           TEXT,
    discovery_date             DATE,
    research_team_lead         TEXT,
    habitat_size_sqkm          REAL,
    water_sources              TEXT,
    soil_composition           TEXT,
    known_predators            TEXT,
    symbiotic_relationships   TEXT,
    notes                      TEXT
);

INSERT INTO alien_species_habitat_profile VALUES (3001, 'Xenon Prime', 'Northern Ridge', 'Temperate Forest', 'Luminescent Ferns', 18.5, 1200, 21.0, 0.05, 152, 3, 'Protected', '2140-06-12', 'Dr Zarek', 850.5, 'River A;Lake B', 'Silicate-Rich', 'Gargantula', 'Fungi-Bacteria', 'High biodiversity');
INSERT INTO alien_species_habitat_profile VALUES (3002, 'Vortax II', 'Desert Basin', 'Arid Desert', 'Spine Cactus', 45.0, 50, 15.0, 0.3, 78, 0, 'Unprotected', '2155-09-23', 'Dr Lira', 420.0, 'Underground Oasis', 'Calcareous', 'Sand Wyrm', 'None', 'Sparse vegetation');
INSERT INTO alien_species_habitat_profile VALUES (3003, 'Aquaria', 'Coral Sea', 'Marine Reef', 'Glowing Coral', 22.0, 2000, 19.5, 0.02, 230, 5, 'Protected', '2135-03-07', 'Dr Marine', 1200.0, 'Coral Reef;Sea Caves', 'Calcium Carbonate', 'Leviathan Shark', 'Algae-Fish', 'Rich marine life');

-- Celestial navigation chart
CREATE TABLE celestial_navigation_chart
(
    chart_id                  INTEGER NOT NULL PRIMARY KEY,
    chart_name                TEXT,
    epoch_date                DATE,
    reference_frame           TEXT,
    right_ascension_center   REAL,
    declination_center        REAL,
    scale_arcsec_per_pixel    REAL,
    projection_type           TEXT,
    data_source               TEXT,
    resolution_arcsec         REAL,
    coverage_sky_region       TEXT,
    update_frequency_days    INTEGER,
    version                   TEXT,
    creator_name              TEXT,
    copyright_holder          TEXT,
    file_path                 TEXT,
    checksum_md5              TEXT,
    last_updated              DATE,
    notes                     TEXT,
    status                    TEXT
);

INSERT INTO celestial_navigation_chart VALUES (4001, 'Orion Map', '2023-01-01', 'ICRS', 83.8221, -5.3911, 0.5, 'Gnomonic', 'Space Telescope Array', 0.2, 'Orion Constellation', 30, 'v1.0', 'Dr Celeste', 'Galactic Cartography Org', '/charts/orion.map', 'a1b2c3d4e5f6', '2023-12-01', 'Initial release', 'Active');
INSERT INTO celestial_navigation_chart VALUES (4002, 'Milky Way Core', '2022-06-15', 'Galactic', 266.4168, -29.0078, 0.8, 'Mercator', 'Deep Space Survey', 0.3, 'Galactic Center', 60, 'v2.1', 'Dr Nova', 'Universal Mapping Consortium', '/charts/mw_core.map', 'b2c3d4e5f6a7', '2023-11-20', 'Updated with new infrared data', 'Active');
INSERT INTO celestial_navigation_chart VALUES (4003, 'Andromeda Overview', '2024-02-10', 'FK5', 10.6847, 41.2692, 1.0, 'Aitoff', 'Andromeda Survey Mission', 0.5, 'Andromeda Galaxy', 90, 'v1.5', 'Dr Andro', 'Intergalactic Survey Agency', '/charts/andromeda.map', 'c3d4e5f6a7b8', '2024-01-15', 'High-res version pending', 'Draft');

-- Cybernetic implant registry
CREATE TABLE cybernetic_implant_registry
(
    implant_id                INTEGER NOT NULL PRIMARY KEY,
    model_number              TEXT,
    manufacturer              TEXT,
    implant_type              TEXT,
    version                   TEXT,
    release_date              DATE,
    approved_by               TEXT,
    regulatory_body           TEXT,
    surgical_procedure_code   TEXT,
    implantation_site         TEXT,
    compatibility_human_species TEXT,
    power_source              TEXT,
    battery_life_years       REAL,
    firmware_version          TEXT,
    encryption_enabled        TEXT,
    last_maintenance_date     DATE,
    warranty_expiration       DATE,
    cost_usd                  REAL,
    clinical_trial_phase      TEXT,
    notes                     TEXT
);

INSERT INTO cybernetic_implant_registry VALUES (7001, 'CX-1000', 'NeuroTech', 'Neural Interface', 'v3.2', '2125-04-01', 'Chief Surgeon', 'Galactic Health Authority', 'PROC-NEU-01', 'Cerebral Cortex', 'Human;Transhumans', 'Lithium-Ion', 5.0, 'fw-5.0', 'Yes', '2130-01-15', '2135-04-01', 250000, 'Phase III', 'Widely adopted in elite units');
INSERT INTO cybernetic_implant_registry VALUES (7002, 'HX-200', 'BioMech Industries', 'Exo-Muscular Actuator', 'v1.8', '2130-09-10', 'Medical Board', 'Interstellar Medical Council', 'PROC-EXO-02', 'Forearm', 'Human', 'Piezoelectric', 3.5, 'fw-2.5', 'No', '2135-05-20', '2140-09-10', 125000, 'Phase II', 'Used for heavy lifting robots');
INSERT INTO cybernetic_implant_registry VALUES (7003, 'VX-9', 'Quantum BioSystems', 'Vision Enhancement', 'v2.0', '2140-01-20', 'Director of Optics', 'Universal BioRegulatory Agency', 'PROC-VIS-03', 'Retina', 'Human;Alien Symbionts', 'Solar', 4.0, 'fw-3.1', 'Yes', '2145-02-28', '2150-01-20', 180000, 'Phase I', 'Experimental trial pending');

-- Renewable energy farm log
CREATE TABLE renewable_energy_farm_log
(
    farm_id                   INTEGER NOT NULL PRIMARY KEY,
    farm_name                 TEXT,
    location_latitude         REAL,
    location_longitude        REAL,
    energy_type               TEXT,
    capacity_mw               REAL,
    operational_since         DATE,
    operator_company          TEXT,
    average_monthly_output_mwh REAL,
    maintenance_cycle_days    INTEGER,
    last_maintenance_date     DATE,
    grid_connection_point     TEXT,
    subsidy_program           TEXT,
    environmental_impact_score REAL,
    wildlife_monitoring_status TEXT,
    number_of_turbines_or_panels INTEGER,
    avg_wind_speed_ms        REAL,
    avg_solar_irradiance_wpm2 REAL,
    carbon_offset_tons       REAL,
    notes                     TEXT
);

INSERT INTO renewable_energy_farm_log VALUES (1101, 'Solar Ridge', 34.5678, -117.8910, 'Solar', 150.0, '2135-05-01', 'Helios Energy Corp', 300000.0, 180, '2139-11-15', 'GridNode-12', 'Solar Bonus', 85.0, 'Active', 500000, 0.0, 250.0, 12000.0, 'Largest solar farm in sector');
INSERT INTO renewable_energy_farm_log VALUES (1102, 'Wind Plains', 45.1234, -120.4567, 'Wind', 200.0, '2140-03-15', 'Aeolus Winds Ltd', 400000.0, 365, '2145-04-20', 'GridNode-34', 'Wind Incentive', 90.0, 'Active', 800, 12.5, 0.0, 15000.0, 'High wind consistency');
INSERT INTO renewable_energy_farm_log VALUES (1103, 'Hybrid Oasis', 29.8765, -100.5432, 'Hybrid', 250.0, '2145-07-10', 'Nova Green Solutions', 450000.0, 270, '2148-09-05', 'GridNode-56', 'Hybrid Grant', 92.5, 'Monitoring', 300, 8.0, 180.0, 20000.0, 'Combination of solar and wind');

-- AI model performance log
CREATE TABLE ai_model_performance_log
(
    model_id                  INTEGER NOT NULL PRIMARY KEY,
    model_name                TEXT,
    version                   TEXT,
    training_dataset_id       INTEGER,
    evaluation_dataset_id     INTEGER,
    training_start_date       DATE,
    training_end_date         DATE,
    total_parameters          INTEGER,
    architecture_type         TEXT,
    accuracy_percent          REAL,
    precision_percent         REAL,
    recall_percent            REAL,
    f1_score                  REAL,
    inference_latency_ms      REAL,
    throughput_rps            REAL,
    hardware_used             TEXT,
    gpu_count                 INTEGER,
    power_consumption_watts   REAL,
    deployment_environment    TEXT,
    last_updated              DATE,
    notes                     TEXT
);

INSERT INTO ai_model_performance_log VALUES (2101, 'SentinelVision', 'v4.3', 5001, 6001, '2138-01-10', '2138-02-20', 1500000000, 'Transformer', 96.5, 95.2, 94.8, 95.5, 12.3, 850.0, 'QuantumGPU Cluster', 8, 2500.0, 'Production', '2140-01-01', 'Deployed for satellite image analysis');
INSERT INTO ai_model_performance_log VALUES (2102, 'ChronoPredictor', 'v2.1', 5002, 6002, '2140-05-15', '2140-07-01', 800000000, 'Recurrent', 89.0, 88.5, 87.0, 87.7, 25.0, 600.0, 'NeuralNet Array', 4, 1800.0, 'Research', '2141-06-01', 'Used for temporal anomaly forecasting');
INSERT INTO ai_model_performance_log VALUES (2103, 'NebulaGenerator', 'v1.0', 5003, 6003, '2142-03-20', '2142-04-30', 500000000, 'GAN', 78.2, 77.0, 76.5, 76.7, 40.0, 300.0, 'Hybrid ASIC', 2, 1500.0, 'Experimental', '2143-01-15', 'Generates synthetic nebula imagery');

-- Interdimensional portal registry
CREATE TABLE interdimensional_portal_registry
(
    portal_id                 INTEGER NOT NULL PRIMARY KEY,
    portal_name               TEXT,
    creation_date             DATE,
    origin_universe           TEXT,
    destination_universe      TEXT,
    stability_rating          REAL,
    energy_requirement_megajoules REAL,
    control_mechanism         TEXT,
    access_permission_level   TEXT,
    governing_body            TEXT,
    last_activation_timestamp TIMESTAMP,
    activation_count          INTEGER,
    deactivation_timestamp   TIMESTAMP,
    safety_protocols         TEXT,
    breach_incidents          INTEGER,
    maintenance_schedule_days INTEGER,
    last_inspection_date     DATE,
    coordinator_name          TEXT,
    documentation_url         TEXT,
    notes                     TEXT
);

INSERT INTO interdimensional_portal_registry VALUES (8001, 'Aether Gate', '2125-11-01', 'Universe A', 'Universe B', 0.95, 5000.0, 'Quantum Lattice', 'Level 5', 'Interdimensional Council', '2126-01-15 08:00:00', 12, '2126-01-15 12:00:00', 'Standard Containment', 0, 90, '2126-02-01', 'Dr Kale', 'http://portaldata/8001', 'Primary research portal');
INSERT INTO interdimensional_portal_registry VALUES (8002, 'Void Nexus', '2130-04-20', 'Universe X', 'Universe Y', 0.78, 7500.0, 'Arcane Sigil', 'Level 8', 'Void Authority', '2130-05-05 14:30:00', 5, '2130-05-05 18:45:00', 'Enhanced Shielding', 2, 180, '2130-06-01', 'Dr Nova', 'http://portaldata/8002', 'Experienced minor breaches');
INSERT INTO interdimensional_portal_registry VALUES (8003, 'Chrono Spiral', '2135-09-10', 'Universe 1', 'Universe 3', 0.88, 6200.0, 'Temporal Loop', 'Level 7', 'Chrono Committee', '2135-10-01 09:15:00', 8, '2135-10-01 12:30:00', 'Time Dilation Safeguard', 1, 120, '2135-11-15', 'Dr Tempus', 'http://portaldata/8003', 'Used for time‑line research');