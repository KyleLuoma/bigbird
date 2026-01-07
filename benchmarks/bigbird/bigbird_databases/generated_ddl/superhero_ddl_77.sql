-- Interstellar Observation Array
CREATE TABLE interstellar_observation_array
(
    station_id               INTEGER NOT NULL PRIMARY KEY,
    station_name             TEXT,
    launch_date              DATE,
    agency                   TEXT,
    orbit_type               TEXT,
    latitude_deg             DOUBLE,
    longitude_deg            DOUBLE,
    altitude_km              DOUBLE,
    power_source             TEXT,
    operational_status       TEXT,
    staff_count              INTEGER,
    primary_instrument       TEXT,
    secondary_instrument     TEXT,
    data_rate_gbps           DOUBLE,
    storage_capacity_tb      DOUBLE,
    maintenance_cycle_days  INTEGER,
    last_maintenance_date    DATE,
    firmware_version         TEXT,
    contact_email            TEXT,
    notes                    TEXT
);
INSERT INTO interstellar_observation_array VALUES (1, 'ArrayOne', '2022-03-15', 'SpaceAgencyX', 'LowEarthOrbit', 0.0, 0.0, 420.5, 'Solar', 'Active', 12, 'Spectrograph', 'Imager', 5.2, 200.0, 180, '2023-06-01', 'v1.4', 'contact@arrayone.org', 'First operational array');
INSERT INTO interstellar_observation_array VALUES (2, 'ArrayBeta', '2021-11-08', 'SpaceAgencyY', 'Geostationary', 0.0, 0.0, 35786.0, 'Nuclear', 'Active', 8, 'RadioTelescope', 'ParticleDetector', 3.8, 150.0, 365, '2023-05-20', 'v2.0', 'info@arraybeta.net', 'Second generation');
INSERT INTO interstellar_observation_array VALUES (3, 'ArrayGamma', '2020-07-22', 'SpaceAgencyZ', 'PolarOrbit', 78.0, -45.0, 800.0, 'Solar', 'Maintenance', 5, 'InfraredCamera', 'Magnetometer', 2.5, 120.0, 200, '2023-04-10', 'v1.9', 'admin@gammarray.com', 'Undergoing repairs');

-- Quantum Computing Research Group
CREATE TABLE quantum_computing_research_group
(
    group_id            INTEGER NOT NULL PRIMARY KEY,
    group_name          TEXT,
    lead_scientist      TEXT,
    institution         TEXT,
    start_year          INTEGER,
    focus_area          TEXT,
    num_members         INTEGER,
    funding_usd         DECIMAL(12,2),
    lab_location        TEXT,
    computing_nodes     INTEGER,
    qubit_count         INTEGER,
    cryogenic_system    TEXT,
    software_stack      TEXT,
    publications_per_year INTEGER,
    patents_filed       INTEGER,
    collaborations      TEXT,
    last_audit_date     DATE,
    compliance_status  TEXT,
    contact_phone       TEXT,
    website             TEXT
);
INSERT INTO quantum_computing_research_group VALUES (1, 'QGroupAlpha', 'DrSmith', 'TechUniversity', 2018, 'ErrorCorrection', 15, 2500000.00, 'BuildingA', 12, 500, 'DilutionRefrigerator', 'Qiskit', 8, 3, 'InstituteB;CompanyC', '2023-03-15', 'Compliant', '5551234567', 'www.qgroupalpha.edu');
INSERT INTO quantum_computing_research_group VALUES (2, 'QGroupBeta', 'ProfLee', 'NationalLab', 2020, 'QuantumAlgorithms', 22, 4000000.00, 'LabB', 20, 1200, 'PulseTube', 'Cirq', 12, 5, 'UniversityD;CorporationE', '2023-06-10', 'Compliant', '5559876543', 'www.qgroupbeta.org');
INSERT INTO quantum_computing_research_group VALUES (3, 'QGroupGamma', 'DrPatel', 'ScienceInstitute', 2019, 'MaterialScience', 10, 1800000.00, 'CenterC', 8, 300, 'AdiabaticCooler', 'Forest', 5, 1, 'InstituteF', '2023-02-20', 'Pending', '5555551212', 'www.qgroupgamma.net');

-- Alien Biome Survey
CREATE TABLE alien_biome_survey
(
    survey_id               INTEGER NOT NULL PRIMARY KEY,
    biome_name              TEXT,
    planet_name             TEXT,
    region_coords           TEXT,
    dominant_flora          TEXT,
    dominant_fauna          TEXT,
    average_temp_c          DOUBLE,
    atmospheric_composition TEXT,
    discovery_date          DATE,
    lead_researcher         TEXT,
    sample_count            INTEGER,
    dna_sequences_collected INTEGER,
    water_presence          TEXT,
    mineral_content         TEXT,
    radiation_level_msv     DOUBLE,
    notes                   TEXT,
    data_quality_score      INTEGER,
    public_release_date     DATE,
    funding_source          TEXT,
    status                  TEXT
);
INSERT INTO alien_biome_survey VALUES (1, 'XenForest', 'Zyra', 'Sector7G', 'GlowMoss', 'SkyCrab', 23.5, 'N2O2CO2', '2022-05-12', 'DrKhan', 150, 1200, 'Yes', 'Silicates', 0.8, 'Rich biodiversity', 92, '2023-01-01', 'GalacticFund', 'Completed');
INSERT INTO alien_biome_survey VALUES (2, 'AquaPlains', 'Aquos', 'Sector3B', 'WaterLily', 'FloatFish', -5.0, 'H2OCH4', '2021-09-30', 'ProfMira', 200, 1800, 'Partial', 'Carbonates', 1.2, 'Extensive water bodies', 88, '2022-12-15', 'InterstellarGrant', 'Completed');
INSERT INTO alien_biome_survey VALUES (3, 'CrystalDesert', 'Rexia', 'Sector9K', 'CrystalCactus', 'SandCrawler', 45.0, 'CO2Ar', '2023-02-20', 'DrVega', 80, 600, 'No', 'Silica', 0.5, 'High mineral content', 81, NULL, 'PrivateSponsor', 'Ongoing');

-- Renewable Energy Grid Node
CREATE TABLE renewable_energy_grid_node
(
    node_id                INTEGER NOT NULL PRIMARY KEY,
    node_name              TEXT,
    grid_region            TEXT,
    capacity_mw            DOUBLE,
    technology_type        TEXT,
    installation_date      DATE,
    operator_company       TEXT,
    latitude_deg           DOUBLE,
    longitude_deg          DOUBLE,
    voltage_kv             DOUBLE,
    substation_id          INTEGER,
    maintenance_interval_days INTEGER,
    last_inspection_date  DATE,
    performance_ratio      DOUBLE,
    outage_hours_year      DOUBLE,
    emissions_offset_tons  DOUBLE,
    cost_usd               DECIMAL(12,2),
    contact_email          TEXT,
    regulatory_status      TEXT,
    notes                  TEXT
);
INSERT INTO renewable_energy_grid_node VALUES (1, 'SolarNodeA', 'NorthSector', 150.0, 'Solar', '2019-04-10', 'EnergyCorp', 34.5, -117.2, 220.0, 5, 180, '2023-05-01', 0.95, 12.5, 3000.0, 25000000.00, 'contact@solarnodea.com', 'Approved', 'High efficiency');
INSERT INTO renewable_energy_grid_node VALUES (2, 'WindNodeB', 'EastSector', 200.0, 'Wind', '2020-08-22', 'WindPowerLtd', 40.2, -75.3, 330.0, 8, 365, '2023-04-15', 0.92, 8.0, 2500.0, 30000000.00, 'info@windnodeb.org', 'Approved', 'Turbine upgrade scheduled');
INSERT INTO renewable_energy_grid_node VALUES (3, 'HydroNodeC', 'SouthSector', 120.0, 'Hydro', '2018-11-05', 'HydroFlow', 48.1, -122.6, 150.0, 12, 365, '2023-03-20', 0.90, 5.5, 4000.0, 28000000.00, 'support@hydronodec.net', 'Pending', 'Environmental review pending');

-- Meta Universe Policy Committee
CREATE TABLE meta_universe_policy_committee
(
    committee_id            INTEGER NOT NULL PRIMARY KEY,
    committee_name          TEXT,
    formation_date          DATE,
    jurisdiction            TEXT,
    chairperson             TEXT,
    member_count            INTEGER,
    meeting_frequency      TEXT,
    policy_area             TEXT,
    budget_usd              DECIMAL(12,2),
    governance_model       TEXT,
    reporting_structure    TEXT,
    last_meeting_date      DATE,
    next_meeting_date      DATE,
    decisions_this_year    INTEGER,
    pending_proposals      INTEGER,
    external_advisors      TEXT,
    contact_phone          TEXT,
    email_address          TEXT,
    website                TEXT,
    notes                  TEXT
);
INSERT INTO meta_universe_policy_committee VALUES (1, 'GovernanceCouncil', '2015-01-01', 'Multiversal', 'LordCouncilor', 12, 'Quarterly', 'Security', 5000000.00, 'Council', 'AnnualReport', '2023-03-10', '2023-06-10', 15, 4, 'AdvisorA;AdvisorB', '5551112222', 'council@metauniv.org', 'www.metauniv.gov', 'Key decision body');
INSERT INTO meta_universe_policy_committee VALUES (2, 'EthicsBoard', '2017-06-15', 'Universal', 'DrEthos', 8, 'Biannual', 'Ethics', 2000000.00, 'Board', 'QuarterlyReport', '2023-02-20', '2023-08-20', 9, 2, 'AdvisorC', '5553334444', 'ethics@metauniv.org', 'www.ethicsboard.meta', 'Oversees moral guidelines');
INSERT INTO meta_universe_policy_committee VALUES (3, 'TechRegulationCommittee', '2019-09-30', 'Galactic', 'MsTech', 10, 'Monthly', 'Technology', 3500000.00, 'Committee', 'MonthlyDigest', '2023-04-05', '2023-05-05', 12, 5, 'AdvisorD;AdvisorE', '5557778888', 'techreg@metauniv.org', 'www.techreg.meta', 'Handles tech standards');

-- Intergalactic Trade Route Log
CREATE TABLE intergalactic_trade_route_log
(
    route_id               INTEGER NOT NULL PRIMARY KEY,
    route_name             TEXT,
    origin_system          TEXT,
    destination_system     TEXT,
    distance_ly            DOUBLE,
    typical_cargo          TEXT,
    transport_mode         TEXT,
    frequency_per_month    INTEGER,
    average_transit_days   DOUBLE,
    governing_body         TEXT,
    security_level         TEXT,
    fee_per_ton_usd        DECIMAL(10,2),
    last_update_date       DATE,
    status                 TEXT,
    capacity_units         INTEGER,
    incidents_reported    INTEGER,
    regulatory_compliance  TEXT,
    responsible_officer    TEXT,
    notes                  TEXT,
    last_inspection_date   DATE
);
INSERT INTO intergalactic_trade_route_log VALUES (1, 'SilkWay', 'AlphaPrime', 'BetaCentauri', 12.5, 'Textiles', 'CargoShip', 4, 2.5, 'TradeCouncil', 'High', 1500.00, '2023-05-20', 'Active', 2000, 1, 'Compliant', 'OfficerJ', 'Main commercial route', '2023-04-15');
INSERT INTO intergalactic_trade_route_log VALUES (2, 'SpiceRoute', 'GammaZeta', 'DeltaOmega', 23.7, 'Spices', 'Freighter', 2, 5.0, 'TradeCouncil', 'Medium', 1800.00, '2023-04-18', 'Active', 1500, 0, 'Compliant', 'OfficerK', 'Seasonal variations', '2023-03-30');
INSERT INTO intergalactic_trade_route_log VALUES (3, 'MineralPass', 'EpsilonNova', 'ZetaPrime', 8.9, 'Minerals', 'HeavyLift', 6, 1.8, 'TradeCouncil', 'Low', 1200.00, '2023-06-01', 'Active', 2500, 2, 'Pending', 'OfficerL', 'Recent upgrades', '2023-05-10');

-- Nanotech Manufacturing Batch
CREATE TABLE nanotech_manufacturing_batch
(
    batch_id               INTEGER NOT NULL PRIMARY KEY,
    product_name           TEXT,
    batch_number           TEXT,
    start_date             DATE,
    end_date               DATE,
    facility_name          TEXT,
    total_units            INTEGER,
    average_size_nm        DOUBLE,
    purity_percent         DOUBLE,
    yield_percent          DOUBLE,
    qc_passed_units        INTEGER,
    qc_failed_units        INTEGER,
    testing_method         TEXT,
    operator_id            INTEGER,
    supervisor_id          INTEGER,
    cost_usd               DECIMAL(12,2),
    client_name            TEXT,
    shipping_date          DATE,
    storage_condition      TEXT,
    notes                  TEXT
);
INSERT INTO nanotech_manufacturing_batch VALUES (1, 'NanoFilter', 'NF-2023-001', '2023-01-10', '2023-01-20', 'NanoFabA', 50000, 45.0, 99.5, 98.0, 48000, 2000, 'SEM', 101, 201, 750000.00, 'BioHealthCo', '2023-01-25', 'Vacuum', 'First batch of new design');
INSERT INTO nanotech_manufacturing_batch VALUES (2, 'NanoSensor', 'NS-2023-014', '2023-02-05', '2023-02-15', 'NanoFabB', 30000, 30.2, 98.8, 97.5, 29000, 1000, 'TEM', 102, 202, 560000.00, 'TechSensorsInc', '2023-02-20', 'DryIce', 'Improved sensitivity');
INSERT INTO nanotech_manufacturing_batch VALUES (3, 'NanoCoating', 'NC-2023-027', '2023-03-12', '2023-03-22', 'NanoFabC', 40000, 60.5, 97.0, 95.0, 38000, 2000, 'AFM', 103, 203, 680000.00, 'AeroMaterials', '2023-03-27', 'Refrigerated', 'Batch for aerospace use');

-- Cosmic Artifact Exhibit Schedule
CREATE TABLE cosmic_artifact_exhibit_schedule
(
    exhibit_id             INTEGER NOT NULL PRIMARY KEY,
    artifact_name          TEXT,
    exhibit_title          TEXT,
    start_date             DATE,
    end_date               DATE,
    venue_name             TEXT,
    curator                TEXT,
    insurance_value_usd    DECIMAL(12,2),
    security_level         TEXT,
    display_case_type      TEXT,
    lighting_requirements  TEXT,
    climate_control        TEXT,
    visitor_capacity_per_day INTEGER,
    ticket_price_usd       DECIMAL(6,2),
    sponsor_name           TEXT,
    promotional_budget_usd DECIMAL(12,2),
    expected_visitors      INTEGER,
    actual_visitors        INTEGER,
    feedback_score         INTEGER,
    notes                  TEXT
);
INSERT INTO cosmic_artifact_exhibit_schedule VALUES (1, 'StarScepter', 'Celestial Scepter Exhibit', '2023-06-01', '2023-08-31', 'GrandMuseum', 'DrLuna', 5000000.00, 'High', 'CrystalVault', 'LED', 'Controlled', 2000, 25.00, 'NovaCorp', 150000.00, 60000, 58000, 88, 'Very popular');
INSERT INTO cosmic_artifact_exhibit_schedule VALUES (2, 'NebulaOrb', 'Nebula Orb Display', '2023-09-15', '2023-12-15', 'SpaceGallery', 'ProfOrion', 3000000.00, 'Medium', 'GlassCase', 'SoftLight', 'Standard', 1500, 20.00, 'StellarInc', 100000.00, 45000, 44000, 85, 'Steady attendance');
INSERT INTO cosmic_artifact_exhibit_schedule VALUES (3, 'QuantumCube', 'Quantum Cube Showcase', '2024-01-10', '2024-04-10', 'TechExhibitHall', 'MsQuark', 4000000.00, 'High', 'Reinforced', 'Laser', 'HumidityControlled', 1800, 30.00, 'QuantumLtd', 120000.00, 50000, NULL, NULL, 'Upcoming exhibit');

-- Metahuman Clinic Appointment
CREATE TABLE metahuman_clinic_appointment
(
    appointment_id          INTEGER NOT NULL PRIMARY KEY,
    patient_id              INTEGER,
    patient_name            TEXT,
    appointment_date        DATE,
    appointment_time        TEXT,
    clinic_location         TEXT,
    physician_id            INTEGER,
    physician_name          TEXT,
    reason_for_visit        TEXT,
    diagnosis_code          TEXT,
    prescription_given      TEXT,
    follow_up_required      TEXT,
    next_appointment_date   DATE,
    insurance_provider      TEXT,
    copay_usd               DECIMAL(6,2),
    notes                   TEXT,
    contact_phone           TEXT,
    email_address           TEXT,
    status                  TEXT,
    billing_code            TEXT
);
INSERT INTO metahuman_clinic_appointment VALUES (1, 1001, 'AlexPower', '2023-07-20', '09:30', 'MetroClinic', 501, 'DrEthan', 'Energy Surge', 'E123', 'BetaBlocker', 'Yes', '2023-08-20', 'HealthPlus', 50.00, 'First visit', '5551230001', 'alex.power@example.com', 'Scheduled', 'B001');
INSERT INTO metahuman_clinic_appointment VALUES (2, 1002, 'LunaShade', '2023-07-22', '11:00', 'EastSideClinic', 502, 'DrMira', 'Night Vision Issue', 'N456', 'RetinaGel', 'No', NULL, 'MediCare', 30.00, 'Follow-up needed', '5551230002', 'luna.shade@example.com', 'Completed', 'B002');
INSERT INTO metahuman_clinic_appointment VALUES (3, 1003, 'TitanForge', '2023-07-25', '14:15', 'WestWingClinic', 503, 'DrKane', 'Bone Density Test', 'B789', 'CalciumBoost', 'Yes', '2023-10-01', 'LifeSecure', 70.00, 'Routine check', '5551230003', 'titan.forge@example.com', 'Scheduled', 'B003');

-- Galaxy Diplomacy Council Meeting
CREATE TABLE galaxy_diplomacy_council_meeting
(
    meeting_id               INTEGER NOT NULL PRIMARY KEY,
    council_name             TEXT,
    meeting_date             DATE,
    location                 TEXT,
    chairperson              TEXT,
    agenda_summary           TEXT,
    number_of_participants   INTEGER,
    resolutions_passed       INTEGER,
    agreements_signed        INTEGER,
    media_coverage           TEXT,
    transcript_available     TEXT,
    next_meeting_date        DATE,
    voting_outcome           TEXT,
    diplomatic_notes         TEXT,
    budget_usd               DECIMAL(12,2),
    sponsor_org              TEXT,
    contact_person           TEXT,
    contact_email            TEXT,
    status                   TEXT,
    notes                    TEXT
);
INSERT INTO galaxy_diplomacy_council_meeting VALUES (1, 'InterstellarPeaceCouncil', '2023-06-15', 'CapitolStation', 'AmbassadorZara', 'Trade and Security', 25, 5, 3, 'GlobalNews', 'Yes', '2023-09-15', 'Unanimous', 'Positive outlook', 2000000.00, 'GalacticUnion', 'MrKhan', 'council@galaxy.org', 'Completed', 'Successful session');
INSERT INTO galaxy_diplomacy_council_meeting VALUES (2, 'StarAllianceCouncil', '2023-08-10', 'OrbitHub', 'AmbassadorRex', 'Alliance Expansion', 30, 4, 2, 'SpaceTimes', 'No', '2023-11-10', 'Majority', 'Discussed new member', 1500000.00, 'AllianceFederation', 'MsLyra', 'alliance@star.org', 'Completed', 'Pending transcript');
INSERT INTO galaxy_diplomacy_council_meeting VALUES (3, 'CosmicRegulationForum', '2023-10-05', 'NebulaCenter', 'AmbassadorVox', 'Regulation Review', 20, 3, 1, 'CosmicDaily', 'Yes', '2024-01-05', 'Unanimous', 'Agreed on standards', 1800000.00, 'RegulationBoard', 'DrNova', 'regforum@cosmic.net', 'Scheduled', 'Agenda finalized');