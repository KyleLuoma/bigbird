-- Cosmic event observations recorded by various observatories
CREATE TABLE cosmic_event_observation
(
    id                     INTEGER PRIMARY KEY,
    event_name             TEXT,
    observation_date       DATE,
    location               TEXT,
    observatory            TEXT,
    observer_name          TEXT,
    instrument             TEXT,
    magnitude              REAL,
    duration_minutes       INTEGER,
    wavelength_nm          INTEGER,
    notes                  TEXT,
    data_file_path         TEXT,
    weather_conditions     TEXT,
    temperature_c          REAL,
    humidity_percent       INTEGER,
    pressure_hpa           INTEGER,
    visibility_km          REAL,
    recorded_by            TEXT,
    verification_status    TEXT,
    created_at             TIMESTAMP
);

INSERT INTO cosmic_event_observation VALUES (1, 'GammaRayBurst2024', '2024-03-15', 'SectorA', 'DeepSpaceObs', 'DrSmith', 'GammaScopeX', 9.3, 45, 1500, 'Bright spike followed by afterglow', '/data/GRB2024_1.fits', 'Clear', -5.2, 12, 1013, 12.5, 'TeamAlpha', 'Verified', '2024-03-16 08:30:00');
INSERT INTO cosmic_event_observation VALUES (2, 'SupernovaSN2023', '2023-11-02', 'SectorB', 'NovaLab', 'DrLee', 'OpticalArray', 7.8, 120, 650, 'Gradual rise and decline', '/data/SN2023_2.fits', 'PartlyCloudy', 2.1, 55, 1008, 8.0, 'TeamBeta', 'Pending', '2023-11-03 14:20:00');
INSERT INTO cosmic_event_observation VALUES (3, 'FastRadioBurst2025', '2025-06-21', 'SectorC', 'RadioScopeZ', 'DrKhan', 'RadioDish', 5.4, 2, 1400, 'Millisecond burst detected', '/data/FRB2025_3.fits', 'Clear', -10.0, 5, 1015, 20.0, 'TeamGamma', 'Verified', '2025-06-22 02:15:00');

-- Habitat information for cataloged alien species
CREATE TABLE alien_species_habitat
(
    habitat_id               INTEGER PRIMARY KEY,
    species_name             TEXT,
    planet_name              TEXT,
    region_designation       TEXT,
    biome_type               TEXT,
    average_temperature_c    REAL,
    average_humidity_percent INTEGER,
    dominant_vegetation       TEXT,
    water_availability_liters_per_day REAL,
    atmospheric_composition  TEXT,
    gravity_m_s2             REAL,
    radiation_level_sieverts REAL,
    discovery_date           DATE,
    discovered_by            TEXT,
    habitat_status           TEXT,
    protected_area_km2       REAL,
    research_station_present BOOLEAN,
    station_name             TEXT,
    notes                    TEXT,
    last_survey_date         DATE,
    created_timestamp        TIMESTAMP
);

INSERT INTO alien_species_habitat VALUES (1, 'Zylarian', 'Xenon-3', 'NorthernValley', 'TemperateForest', 22.5, 68, 'Xenophyll', 5000.0, 'N2, O2, Ar', 9.8, 0.02, '2022-07-14', 'DrNova', 'Active', 12.4, 1, 'XenonBase', 'Population stable', '2023-09-01', '2023-09-02 10:00:00');
INSERT INTO alien_species_habitat VALUES (2, 'Krell', 'Zorax-9', 'SouthernDunes', 'AridDesert', 45.0, 12, 'KrellCactus', 200.0, 'CO2, N2', 12.5, 0.10, '2021-03-22', 'TeamArid', 'Endangered', 3.2, 0, NULL, 'Limited water sources', '2022-11-15', '2022-11-16 15:45:00');
INSERT INTO alien_species_habitat VALUES (3, 'Luminari', 'Lumen-1', 'EquatorialSwamp', 'TropicalSwamp', 30.0, 85, 'LuminTree', 8000.0, 'O2, N2, CH4', 8.9, 0.05, '2023-12-05', 'DrHydra', 'Protected', 24.7, 1, 'LumenOutpost', 'Bioluminescent colonies', '2024-04-10', '2024-04-11 09:30:00');

-- Renewable energy project tracking
CREATE TABLE renewable_energy_project
(
    project_id                INTEGER PRIMARY KEY,
    project_name              TEXT,
    project_type              TEXT,
    location                  TEXT,
    commissioning_date        DATE,
    capacity_mw               REAL,
    developer_company         TEXT,
    financing_amount_usd      REAL,
    expected_lifetime_years   INTEGER,
    infrastructure_status    TEXT,
    grid_connection_status    TEXT,
    environmental_impact_score INTEGER,
    permits_obtained          BOOLEAN,
    permits_details           TEXT,
    average_capacity_factor   REAL,
    annual_generation_gwh     REAL,
    maintenance_contract     TEXT,
    contract_start_date       DATE,
    contract_end_date         DATE,
    contact_person            TEXT,
    contact_email             TEXT,
    created_timestamp         TIMESTAMP
);

INSERT INTO renewable_energy_project VALUES (1, 'SolarPlainsAlpha', 'Solar', 'DesertRegionX', '2020-05-01', 150.0, 'SunPowerInc', 300000000.0, 30, 'Operational', 'Connected', 78, 1, 'All permits approved', 0.28, 375.0, 'MaintainCo', '2020-04-15', '2045-04-14', 'Alice Green', 'alice.green@sunpower.com', '2020-05-02 08:00:00');
INSERT INTO renewable_energy_project VALUES (2, 'WindHarborBeta', 'Wind', 'CoastalZoneY', '2022-09-15', 200.5, 'WindFlowLLC', 420000000.0, 25, 'Construction', 'Pending', 85, 0, NULL, 0.32, 560.8, NULL, NULL, NULL, 'Bob Blue', 'bob.blue@windflow.com', '2022-09-16 09:30:00');
INSERT INTO renewable_energy_project VALUES (3, 'HydroStreamGamma', 'Hydro', 'RiverBasinZ', '2024-01-20', 80.0, 'AquaEnergy', 150000000.0, 40, 'Planned', 'NotConnected', 70, 0, NULL, 0.45, 315.0, NULL, NULL, NULL, 'Carol Aqua', 'carol.aqua@aquaenergy.com', '2024-01-21 07:45:00');

-- Interstellar trade route metadata
CREATE TABLE interstellar_trade_route
(
    route_id                  INTEGER PRIMARY KEY,
    route_name                TEXT,
    origin_system             TEXT,
    destination_system        TEXT,
    distance_lightyears       REAL,
    primary_goods             TEXT,
    secondary_goods           TEXT,
    typical_cargo_weight_tons INTEGER,
    travel_time_days          INTEGER,
    average_fuel_consumption_per_ly REAL,
    controlling_faction       TEXT,
    security_level            TEXT,
    customs_regulation        TEXT,
    last_inspection_date      DATE,
    inspection_agency         TEXT,
    route_status              TEXT,
    established_year          INTEGER,
    max_ship_size_meters      REAL,
    notes                     TEXT,
    created_at                TIMESTAMP,
    updated_at                TIMESTAMP
);

INSERT INTO interstellar_trade_route VALUES (1, 'SiliconCorridor', 'AlphaCentauri', 'ProximaB', 4.3, 'Silicon', 'Electronics', 5000, 12, 0.8, 'Federation', 'High', 'Standard', '2023-07-10', 'GalacticCustoms', 'Active', 2120, 300.0, 'High traffic route', '2023-07-11 12:00:00', '2023-07-11 12:00:00');
INSERT INTO interstellar_trade_route VALUES (2, 'NebulaFreightLine', 'OrionNebula', 'Sirius', 9.7, 'Foodstuffs', 'MedicalSupplies', 8000, 20, 1.2, 'Coalition', 'Medium', 'Relaxed', '2022-11-05', 'NebulaAuthority', 'Active', 2145, 250.0, 'Occasional pirate activity', '2022-11-06 09:15:00', '2022-11-06 09:15:00');
INSERT INTO interstellar_trade_route VALUES (3, 'VoidExpress', 'Vega', 'Deneb', 15.2, 'PreciousMetals', 'LuxuryGoods', 2000, 8, 0.5, 'Independent', 'Low', 'Minimal', '2024-02-20', 'VoidCommission', 'Planned', 2155, 400.0, 'Awaiting infrastructure approval', '2024-02-21 14:30:00', '2024-02-21 14:30:00');

-- Metahuman clinic records (clinical data unrelated to superhero identities)
CREATE TABLE metahuman_clinic_record
(
    record_id                 INTEGER PRIMARY KEY,
    patient_id                INTEGER,
    visit_date                DATE,
    clinic_location           TEXT,
    primary_diagnosis         TEXT,
    secondary_diagnosis       TEXT,
    treatment_plan            TEXT,
    medication_prescribed     TEXT,
    dosage_mg_per_day         INTEGER,
    follow_up_required        BOOLEAN,
    follow_up_date            DATE,
    supervising_physician     TEXT,
    notes                     TEXT,
    lab_results_available    BOOLEAN,
    lab_report_path           TEXT,
    imaging_study_performed   BOOLEAN,
    imaging_type              TEXT,
    imaging_report_path       TEXT,
    consent_signed            BOOLEAN,
    consent_date              DATE,
    created_timestamp         TIMESTAMP,
    updated_timestamp         TIMESTAMP
);

INSERT INTO metahuman_clinic_record VALUES (1, 1001, '2023-03-12', 'MetahumanCenterA', 'RegenerationAnomaly', 'None', 'GeneTherapyPhase1', 'GeneModX', 2, 1, '2023-04-10', 'DrHelix', 'Patient responded well', 1, '/labs/report1.pdf', 1, 'MRI', '/imaging/mri1.jpg', 1, '2023-03-01', '2023-03-12 09:00:00', '2023-04-11 10:15:00');
INSERT INTO metahuman_clinic_record VALUES (2, 1002, '2023-06-05', 'MetahumanCenterB', 'EnergyFluxDisorder', 'SleepDeprivation', 'EnergyStabilization', 'FluxBalancer', 5, 0, NULL, 'DrQuantum', 'Monitor weekly', 0, NULL, 0, NULL, NULL, 1, '2023-05-28', '2023-06-05 11:30:00', '2023-06-05 11:30:00');
INSERT INTO metahuman_clinic_record VALUES (3, 1003, '2024-01-18', 'MetahumanCenterC', 'ChronoInstability', 'None', 'TemporalAnchorImplant', 'ChronoGel', 1, 1, '2024-02-20', 'DrChrono', 'Implant successful', 1, '/labs/report3.pdf', 1, 'CT', '/imaging/ct3.dcm', 1, '2024-01-10', '2024-01-18 08:45:00', '2024-02-21 09:00:00');

-- Quantum computing job queue details
CREATE TABLE quantum_computing_job_queue
(
    job_id                     INTEGER PRIMARY KEY,
    algorithm_name             TEXT,
    qubits_requested           INTEGER,
    estimated_runtime_seconds  INTEGER,
    priority_level             INTEGER,
    submitter_user_id          INTEGER,
    submission_timestamp       TIMESTAMP,
    status                     TEXT,
    start_timestamp            TIMESTAMP,
    end_timestamp              TIMESTAMP,
    result_location            TEXT,
    error_message              TEXT,
    required_error_correction  BOOLEAN,
    circuit_depth              INTEGER,
    gate_count                 INTEGER,
    measurement_basis          TEXT,
    hardware_backend           TEXT,
    allocated_memory_gb        REAL,
    max_entanglement_depth     INTEGER,
    notes                      TEXT,
    created_at                 TIMESTAMP,
    updated_at                 TIMESTAMP
);

INSERT INTO quantum_computing_job_queue VALUES (1, 'ShorFactoring', 127, 86400, 1, 501, '2024-03-01 07:00:00', 'Running', '2024-03-01 08:00:00', NULL, '/results/job1.out', NULL, 1, 250, 1200, 'Z', 'QPU_A', 64.0, 30, 'High priority factoring job', '2024-03-01 07:00:00', '2024-03-01 08:00:00');
INSERT INTO quantum_computing_job_queue VALUES (2, 'GroverSearch', 64, 43200, 2, 502, '2024-03-02 10:15:00', 'Queued', NULL, NULL, NULL, NULL, 0, 100, 500, 'X', 'QPU_B', 32.0, 20, 'Standard search task', '2024-03-02 10:15:00', '2024-03-02 10:15:00');
INSERT INTO quantum_computing_job_queue VALUES (3, 'VariationalEigensolver', 48, 21600, 3, 503, '2024-03-03 14:00:00', 'Completed', '2024-03-03 14:30:00', '2024-03-03 16:30:00', '/results/job3.out', NULL, 1, 180, 800, 'Y', 'QPU_C', 16.0, 15, 'Chemistry simulation', '2024-03-03 14:00:00', '2024-03-03 16:30:00');

-- Archival preservation log for physical media
CREATE TABLE archival_preservation_log
(
    log_id                     INTEGER PRIMARY KEY,
    archive_id                 INTEGER,
    media_type                 TEXT,
    accession_number           TEXT,
    condition_rating           INTEGER,
    storage_temperature_c      REAL,
    humidity_percent           INTEGER,
    light_exposure_lux_hours   INTEGER,
    pest_control_status       TEXT,
    conservation_action        TEXT,
    action_date                DATE,
    conservator_name           TEXT,
    notes                      TEXT,
    digital_copy_created       BOOLEAN,
    digital_copy_path          TEXT,
    last_accessed_timestamp    TIMESTAMP,
    access_frequency_per_year  INTEGER,
    insurance_value_usd        REAL,
    provenance_details         TEXT,
    restricted_access          BOOLEAN,
    created_timestamp          TIMESTAMP,
    updated_timestamp          TIMESTAMP
);

INSERT INTO archival_preservation_log VALUES (1, 3001, 'Manuscript', 'MS-2023-045', 8, 18.0, 40, 0, 'Clear', 'Deacidification', '2023-09-12', 'DrLumen', 'Stable after treatment', 1, '/digital/ms045.pdf', '2024-01-05 11:20:00', 2, 250000.0, 'Donated by CollectorX', 0, '2023-09-12 09:00:00', '2024-01-05 11:20:00');
INSERT INTO archival_preservation_log VALUES (2, 3002, 'Photograph', 'PH-2022-112', 6, 20.0, 45, 120, 'PestDetected', 'PestTreatment', '2022-11-20', 'DrMira', 'Minor discoloration', 0, NULL, '2023-03-15 14:45:00', 5, 75000.0, 'Acquired from ArchiveY', 1, '2022-11-21 08:30:00', '2023-03-15 14:45:00');
INSERT INTO archival_preservation_log VALUES (3, 3003, 'FilmReel', 'FR-2021-078', 7, 16.0, 35, 30, 'Clear', 'Rewinding', '2021-07-08', 'DrEcho', 'Rewound for digitization', 1, '/digital/fr078.mp4', '2022-02-10 10:00:00', 1, 120000.0, 'Purchased from StudioZ', 0, '2021-07-08 09:15:00', '2022-02-10 10:00:00');

-- Fan engagement survey results
CREATE TABLE fan_engagement_survey
(
    survey_id                  INTEGER PRIMARY KEY,
    fan_id                     INTEGER,
    survey_date                DATE,
    platform_used              TEXT,
    hours_per_week_spent       INTEGER,
    favorite_hero_id           INTEGER,
    favorite_villain_id        INTEGER,
    preferred_media_format    TEXT,
    satisfaction_score         INTEGER,
    likelihood_to_recommend    INTEGER,
    favorite_story_arc_id      INTEGER,
    comments                   TEXT,
    age_group                  TEXT,
    country_code               TEXT,
    device_type                TEXT,
    subscription_status        TEXT,
    purchase_history_value_usd REAL,
    event_attendance_last_year INTEGER,
    newsletter_opt_in          BOOLEAN,
    social_media_followers     INTEGER,
    created_timestamp          TIMESTAMP,
    updated_timestamp          TIMESTAMP
);

INSERT INTO fan_engagement_survey VALUES (1, 9001, '2023-12-01', 'WebPortal', 12, 7, 3, 'DigitalComic', 9, 8, 15, 'Loves crossover events', '18-24', 'US', 'Mobile', 'Subscribed', 150.0, 2, 1, 350, '2023-12-01 10:00:00', '2023-12-01 10:00:00');
INSERT INTO fan_engagement_survey VALUES (2, 9002, '2024-01-15', 'MobileApp', 8, 12, 5, 'PhysicalComic', 7, 6, 22, 'Enjoys classic arcs', '25-34', 'CA', 'Tablet', 'Free', 75.0, 0, 0, 120, '2024-01-15 14:30:00', '2024-01-15 14:30:00');
INSERT INTO fan_engagement_survey VALUES (3, 9003, '2024-02-20', 'SocialMedia', 5, 4, 9, 'StreamingSeries', 8, 9, 9, 'Prefers video adaptations', '35-44', 'GB', 'Desktop', 'Subscribed', 200.0, 1, 1, 500, '2024-02-20 09:45:00', '2024-02-20 09:45:00');

-- Merchandise production batch tracking
CREATE TABLE merchandise_production_batch
(
    batch_id                   INTEGER PRIMARY KEY,
    product_line               TEXT,
    batch_number               TEXT,
    manufacturer               TEXT,
    production_start_date      DATE,
    production_end_date        DATE,
    quantity_produced          INTEGER,
    unit_cost_usd              REAL,
    material_type              TEXT,
    quality_check_passed       BOOLEAN,
    quality_check_date         DATE,
    inspector_name             TEXT,
    shipping_method            TEXT,
    destination_warehouse_id   INTEGER,
    estimated_arrival_date     DATE,
    actual_arrival_date        DATE,
    batch_status               TEXT,
    notes                      TEXT,
    created_timestamp          TIMESTAMP,
    updated_timestamp          TIMESTAMP
);

INSERT INTO merchandise_production_batch VALUES (1, 'ActionFigure', 'AF-2023-001', 'ToyMakersLtd', '2023-05-01', '2023-05-20', 5000, 4.5, 'Plastic', 1, '2023-05-22', 'John Doe', 'AirFreight', 410, '2023-05-25', '2023-05-24', 'Delivered', 'First batch of new hero line', '2023-05-01 08:00:00', '2023-05-24 16:30:00');
INSERT INTO merchandise_production_batch VALUES (2, 'Apparel', 'AP-2023-078', 'WearableCo', '2023-08-10', '2023-08-30', 2000, 12.0, 'Cotton', 0, NULL, NULL, 'SeaFreight', 412, '2023-09-10', NULL, 'InTransit', 'Delayed due to customs', '2023-08-10 09:15:00', '2023-09-05 11:45:00');
INSERT INTO merchandise_production_batch VALUES (3, 'CollectiblePin', 'CP-2024-005', 'PinWorks', '2024-01-05', '2024-01-12', 10000, 1.2, 'Metal', 1, '2024-01-14', 'Emily Smith', 'Ground', 415, '2024-01-20', '2024-01-19', 'Delivered', 'All pins passed visual inspection', '2024-01-05 07:30:00', '2024-01-19 15:00:00');

-- Galaxy diplomacy council meeting minutes
CREATE TABLE galaxy_diplomacy_council_meeting
(
    meeting_id                 INTEGER PRIMARY KEY,
    council_name               TEXT,
    meeting_date               DATE,
    location                   TEXT,
    chairperson_name           TEXT,
    agenda_item_1              TEXT,
    agenda_item_2              TEXT,
    agenda_item_3              TEXT,
    decisions_made             TEXT,
    voting_results             TEXT,
    attendance_count           INTEGER,
    member_list                TEXT,
    minutes_document_path      TEXT,
    confidential_flag          BOOLEAN,
    security_level             TEXT,
    follow_up_actions          TEXT,
    action_deadline_date       DATE,
    external_observers_present BOOLEAN,
    observer_names             TEXT,
    created_timestamp          TIMESTAMP,
    updated_timestamp          TIMESTAMP
);

INSERT INTO galaxy_diplomacy_council_meeting VALUES (1, 'InterstellarPeaceCouncil', '2023-11-20', 'OrbitStationAlpha', 'AmbassadorZara', 'TradeAgreementReview', 'BorderDisputeResolution', 'JointResearchInitiative', 'Approved trade terms, settled borders, launched research', 'Trade:Yes/No=15/2; Borders:Yes/No=14/3; Research:Yes/No=16/1', 20, 'RepA,RepB,RepC,RepD,RepE', '/minutes/meeting1.pdf', 0, 'Public', 'Send draft treaty to legal, schedule next summit', '2024-02-01', 1, 'ObserverX,ObserverY', '2023-11-20 10:00:00', '2023-11-20 14:30:00');
INSERT INTO galaxy_diplomacy_council_meeting VALUES (2, 'GalacticTradeCouncil', '2024-02-12', 'TradeHubBeta', 'DirectorMilo', 'TariffAdjustment', 'SupplyChainSecurity', 'NewMarketEntry', 'Adjusted tariffs, approved security protocols, accepted market entry', 'Tariffs:Yes/No=13/4; Security:Yes/No=15/2; Market:Yes/No=14/3', 18, 'Delegate1,Delegate2,Delegate3,Delegate4', '/minutes/meeting2.pdf', 0, 'Internal', 'Publish tariff schedule, notify member worlds', '2024-03-15', 0, NULL, '2024-02-12 09:30:00', '2024-02-12 13:00:00');
INSERT INTO galaxy_diplomacy_council_meeting VALUES (3, 'UniversalScienceForum', '2024-05-05', 'ScienceStationGamma', 'ChairDrLuna', 'QuantumResearchFunding', 'EnvironmentalMonitoring', 'AstrobiologyCollaboration', 'Allocated funds, approved monitoring program, started collaboration', 'Funding:Yes/No=16/1; Monitoring:Yes/No=15/2; Collaboration:Yes/No=14/3', 22, 'ScientistA,ScientistB,ScientistC,ScientistD,ScientistE', '/minutes/meeting3.pdf', 0, 'Public', 'Release funding report, schedule data sharing', '2024-07-01', 1, 'ObserverZ', '2024-05-05 08:45:00', '2024-05-05 12:15:00');

-- Character voice cast details (separate from hero identities)
CREATE TABLE character_voice_cast
(
    cast_id                    INTEGER PRIMARY KEY,
    character_name             TEXT,
    actor_name                 TEXT,
    actor_agency               TEXT,
    recording_studio           TEXT,
    language                   TEXT,
    dialect                    TEXT,
    voice_type                 TEXT,
    years_of_experience        INTEGER,
    previous_roles_count       INTEGER,
    awards_won                 INTEGER,
    contract_start_date        DATE,
    contract_end_date          DATE,
    hourly_rate_usd            REAL,
    union_member               BOOLEAN,
    availability_status        TEXT,
    accent_required            BOOLEAN,
    accent_description         TEXT,
    notes                      TEXT,
    created_timestamp          TIMESTAMP,
    updated_timestamp          TIMESTAMP
);

INSERT INTO character_voice_cast VALUES (1, 'AstraNova', 'Lena Hart', 'StarVoiceAgency', 'StudioOne', 'English', 'American', 'Bright', 8, 12, 3, '2023-01-01', '2025-12-31', 120.0, 1, 'Available', 0, NULL, 'Excellent for heroic tones', '2023-01-01 09:00:00', '2023-06-15 10:30:00');
INSERT INTO character_voice_cast VALUES (2, 'Graxus', 'Milan Voss', 'VoxGlobal', 'EchoRecordings', 'German', 'Bavarian', 'Gravelly', 12, 20, 5, '2022-05-15', '2024-05-14', 150.0, 1, 'OnHold', 1, 'BavarianAccent', 'Specializes in villainous roles', '2022-05-15 08:45:00', '2023-12-01 11:20:00');
INSERT INTO character_voice_cast VALUES (3, 'Celeste', 'Aya Nakamura', 'NipponVoice', 'KyotoStudio', 'Japanese', 'Standard', 'Soft', 6, 8, 1, '2024-03-01', '2026-02-28', 130.0, 0, 'Available', 0, NULL, 'Ideal for calm, mystical characters', '2024-03-01 07:30:00', '2024-04-10 09:45:00');

-- Galactic trade route statistics
CREATE TABLE galactic_trade_route_statistics
(
    stat_id                    INTEGER PRIMARY KEY,
    route_id                   INTEGER,
    fiscal_year                INTEGER,
    total_volume_metric_tons   REAL,
    average_price_per_ton_usd   REAL,
    cargo_type_distribution    TEXT,
    peak_month                 INTEGER,
    incidents_reported         INTEGER,
    average_transit_time_days  REAL,
    fuel_consumption_per_ly    REAL,
    regulatory_compliance_score INTEGER,
    insurance_claims_count     INTEGER,
    insurance_claims_value_usd  REAL,
    maintenance_events_count   INTEGER,
    last_maintenance_date      DATE,
    notes                      TEXT,
    created_timestamp          TIMESTAMP,
    updated_timestamp          TIMESTAMP
);

INSERT INTO galactic_trade_route_statistics VALUES (1, 1, 2023, 750000.0, 180.5, 'Silicon:40%;Electronics:30%;Food:30%', 7, 2, 3.5, 0.75, 92, 1, 25000.0, 4, '2023-11-01', 'Stable performance with minor delays', '2023-12-01 08:00:00', '2023-12-01 08:00:00');
INSERT INTO galactic_trade_route_statistics VALUES (2, 2, 2023, 420000.0, 210.0, 'Food:50%;Medical:20%;Luxury:30%', 12, 5, 4.2, 0.68, 85, 3, 75000.0, 6, '2023-10-15', 'Higher incident rate due to pirate activity', '2023-12-01 09:15:00', '2023-12-01 09:15:00');
INSERT INTO galactic_trade_route_statistics VALUES (3, 3, 2024, 180000.0, 300.0, 'PreciousMetals:70%;LuxuryGoods:30%', 3, 0, 2.8, 0.45, 97, 0, 0.0, 2, '2024-02-20', 'Excellent compliance and low incidents', '2024-03-01 07:45:00', '2024-03-01 07:45:00');

-- Secret identity registry (excluding hero identity linkage)
CREATE TABLE secret_identity_registry
(
    record_id                 INTEGER PRIMARY KEY,
    identity_alias            TEXT,
    true_name                 TEXT,
    birth_date                DATE,
    birthplace_city           TEXT,
    birthplace_country        TEXT,
    known_associations        TEXT,
    occupation                TEXT,
    education_level           TEXT,
    security_clearance_level  INTEGER,
    last_known_location       TEXT,
    last_contact_timestamp    TIMESTAMP,
    risk_assessment_score     INTEGER,
    monitoring_status         TEXT,
    handler_agent_id          INTEGER,
    case_file_path            TEXT,
    notes                     TEXT,
    created_timestamp         TIMESTAMP,
    updated_timestamp         TIMESTAMP,
    active_flag               BOOLEAN
);

INSERT INTO secret_identity_registry VALUES (1, 'ShadowFox', 'Elliot Gray', '1985-04-12', 'NewYork', 'USA', 'None', 'Journalist', 'Masters', 4, 'Metropolis', '2024-01-15 14:20:00', 78, 'UnderSurveillance', 201, '/cases/shadowfox.pdf', 'No confirmed superhero ties', '2024-01-15 14:20:00', '2024-01-15 14:20:00', 1);
INSERT INTO secret_identity_registry VALUES (2, 'NightOwl', 'Mia Delgado', '1990-09-03', 'Madrid', 'Spain', 'Local activist group', 'Architect', 'Bachelors', 3, 'Barcelona', '2023-11-28 09:05:00', 62, 'LowPriority', 202, '/cases/nightowl.pdf', 'Possible indirect contact with hero network', '2023-11-28 09:05:00', '2023-11-28 09:05:00', 1);
INSERT INTO secret_identity_registry VALUES (3, 'CrimsonEcho', 'Liam Chen', '1978-02-27', 'Seoul', 'SouthKorea', 'Corporate board member', 'Finance Analyst', 'PhD', 5, 'Seoul', '2024-02-10 16:45:00', 88, 'HighRisk', 203, '/cases/crimsonecho.pdf', 'Under investigation for covert operations', '2024-02-10 16:45:00', '2024-02-10 16:45:00', 1');

-- Advertising campaign performance metrics
CREATE TABLE advertising_campaign_metrics
(
    campaign_id               INTEGER PRIMARY KEY,
    campaign_name             TEXT,
    start_date                DATE,
    end_date                  DATE,
    budget_usd                REAL,
    media_channel             TEXT,
    impressions               INTEGER,
    clicks                    INTEGER,
    click_through_rate        REAL,
    conversions               INTEGER,
    conversion_rate           REAL,
    cost_per_click_usd        REAL,
    cost_per_acquisition_usd  REAL,
    target_audience_demographic TEXT,
    geographic_target         TEXT,
    ad_creative_version      TEXT,
    split_test_group          TEXT,
    performance_rating        INTEGER,
    notes                     TEXT,
    created_timestamp         TIMESTAMP,
    updated_timestamp         TIMESTAMP
);

INSERT INTO advertising_campaign_metrics VALUES (1, 'LaunchSeriesAlpha', '2023-06-01', '2023-08-31', 500000.0, 'Digital', 12000000, 350000, 2.92, 85000, 24.29, 1.43, 5.88, '18-35Male', 'NorthAmerica', 'VersionA', 'Group1', 9, 'Above target performance', '2023-06-01 08:00:00', '2023-09-01 09:00:00');
INSERT INTO advertising_campaign_metrics VALUES (2, 'HolidayMerchPromo', '2023-11-15', '2023-12-31', 300000.0, 'Television', 8000000, 120000, 1.5, 30000, 25.00, 2.50, 10.00, '25-45Female', 'Europe', 'VersionB', 'Group2', 7, 'Met expectations', '2023-11-15 09:30:00', '2024-01-01 10:15:00');
INSERT INTO advertising_campaign_metrics VALUES (3, 'SummerEventTeaser', '2024-04-01', '2024-04-30', 150000.0, 'SocialMedia', 5000000, 200000, 4.0, 15000, 7.5, 0.75, 10.00, '13-24All', 'Asia', 'VersionC', 'Group1', 8, 'Strong engagement on socials', '2024-04-01 07:45:00', '2024-05-01 08:30:00');