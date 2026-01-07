-- Table storing data about planetary exploration missions
CREATE TABLE planetary_exploration_mission
(
    mission_id               INTEGER NOT NULL PRIMARY KEY,
    mission_name             TEXT,
    launch_date              DATE,
    arrival_date             DATE,
    planet_name              TEXT,
    primary_objective        TEXT,
    mission_duration_days    INTEGER,
    crew_size                INTEGER,
    commander_name           TEXT,
    scientific_payload_mass  INTEGER,
    propulsion_type          TEXT,
    funding_agency           TEXT,
    budget_million_usd       INTEGER,
    mission_status           TEXT,
    sample_returned          BOOLEAN,
    orbit_type               TEXT,
    landing_site_coordinates TEXT,
    communication_band       TEXT,
    risk_assessment_level    TEXT,
    post_mission_report_url  TEXT,
    discovered_anomalies     TEXT,
    data_volume_tb           INTEGER,
    is_classified            BOOLEAN
);

INSERT INTO planetary_exploration_mission VALUES (1, 'Aurora', '2032-04-12', '2032-09-23', 'Kepler-186f', 'Habitability Survey', 164, 5, 'Dr Lin', 2000, 'Ion', 'SpaceAgencyX', 350, 'Completed', 1, 'Elliptical', '12.34N_45.67E', 'XBand', 'Medium', 'http://reports/aurora', 'None', 120, 0);
INSERT INTO planetary_exploration_mission VALUES (2, 'Vanguard', '2034-01-05', NULL, 'ProximaCentauri b', 'Atmospheric Analysis', 0, 4, 'Cmdr Rao', 1500, 'Fusion', 'InterstellarFund', 500, 'En Route', 0, 'Transfer', 'N/A', 'KaBand', 'High', 'http://reports/vanguard', 'Unusual magnetic spikes', 80, 0);
INSERT INTO planetary_exploration_mission VALUES (3, 'Odyssey', '2035-07-20', '2036-03-15', 'TRAPPIST-1e', 'Geological Survey', 240, 6, 'Dr Hale', 2500, 'SolarSail', 'GalacticResearch', 420, 'Completed', 1, 'Circular', '23.45S_67.89W', 'SBand', 'Low', 'http://reports/odyssey', 'New mineral deposits', 200, 0);

-- Table describing quantum energy generation facilities
CREATE TABLE quantum_energy_facility
(
    facility_id                INTEGER NOT NULL PRIMARY KEY,
    facility_name              TEXT,
    location_city              TEXT,
    location_state             TEXT,
    country                    TEXT,
    operational_since_year    INTEGER,
    capacity_mw                INTEGER,
    technology_type            TEXT,
    coolant_type               TEXT,
    staff_count                INTEGER,
    lead_scientist_name        TEXT,
    safety_certification_level TEXT,
    annual_output_gwh          INTEGER,
    maintenance_cycle_months   INTEGER,
    is_active                  BOOLEAN,
    regulatory_body            TEXT,
    construction_cost_million_usd INTEGER,
    carbon_footprint_tons      INTEGER,
    grid_connection_point      TEXT,
    emergency_shutdown_protocol TEXT,
    energy_storage_capacity_mwh INTEGER,
    public_access_allowed      BOOLEAN,
    data_center_ip_range       TEXT,
    primary_fuel_source        TEXT,
    waste_disposal_method      TEXT
);

INSERT INTO quantum_energy_facility VALUES (101, 'Q-Alpha', 'Metrocity', 'Calif', 'USA', 2030, 5000, 'Entanglement', 'Helium', 120, 'Dr Vega', 'Level3', 45000, 12, 1, 'EnergyCommission', 1200, 0, 'GridNode45', 'Auto', 2000, 0, '192.168.10.0/24', 'QuantumVacuum', 'None');
INSERT INTO quantum_energy_facility VALUES (102, 'Q-Beta', 'Newtown', 'Ontario', 'Canada', 2032, 3000, 'Superconducting', 'Nitrogen', 80, 'Dr Sato', 'Level2', 26000, 9, 1, 'NationalEnergyBoard', 850, 0, 'GridNode78', 'Manual', 1500, 0, '10.0.5.0/24', 'ZeroPoint', 'Recycling');
INSERT INTO quantum_energy_facility VALUES (103, 'Q-Gamma', 'Zenith', 'Bavaria', 'Germany', 2035, 4000, 'Photonics', 'Water', 95, 'Dr Müller', 'Level3', 34000, 10, 1, 'EUEnergyAuthority', 950, 0, 'GridNode12', 'Hybrid', 1800, 0, '172.16.20.0/24', 'PhotonicFlux', 'Neutralization');

-- Registry for mythic beasts encountered across multiverses
CREATE TABLE mythic_beast_registry
(
    beast_id                INTEGER NOT NULL PRIMARY KEY,
    beast_name              TEXT,
    classification          TEXT,
    first_sighted_year      INTEGER,
    primary_universe        TEXT,
    habitat_description     TEXT,
    average_height_meters   INTEGER,
    average_weight_tons     INTEGER,
    wing_span_meters        INTEGER,
    diet_type               TEXT,
    threat_level            TEXT,
    is_endangered           BOOLEAN,
    mythic_power_source     TEXT,
    known_abilities         TEXT,
    appearance_description  TEXT,
    last_encounter_date     DATE,
    reported_by             TEXT,
    verification_status     TEXT,
    genetic_marker_code     TEXT,
    conservation_program    TEXT,
    associated_legends       TEXT,
    habitat_coordinates     TEXT,
    observed_behavior_notes TEXT,
    capture_attempts        INTEGER,
    rescue_operations       INTEGER
);

INSERT INTO mythic_beast_registry VALUES (5001, 'Aetherdrake', 'Dragon', 2105, 'Universe-7', 'Floating islands', 30, 15, 50, 'Carnivore', 'High', 0, 'ArcaneEnergy', 'FireBreath, Flight', 'Scaly blue wings with shimmering aura', '2108-06-12', 'ExplorerZ', 'Verified', 'AGX-001', 'AetherGuard', 'Skyward legends', '45N_120E', 'Aggressive when provoked', 3, 1);
INSERT INTO mythic_beast_registry VALUES (5002, 'Lumina Serpent', 'Serpent', 2099, 'Universe-3', 'Crystal caves', 12, 2, 0, 'Omnivore', 'Medium', 0, 'Luminescence', 'GlowEmission, HealingTouch', 'Translucent body emitting soft light', '2100-02-20', 'ResearchTeamA', 'Verified', 'LSN-045', 'CrystalPreserve', 'Cave myths', '12S_78W', 'Docile unless disturbed', 1, 0);
INSERT INTO mythic_beast_registry VALUES (5003, 'Stone Golem', 'Elemental', 2080, 'Universe-12', 'Mountain valleys', 20, 40, 0, 'Herbivore', 'Low', 1, 'Geothermal', 'EarthShake, Regeneration', 'Granite skin with mossy patches', '2085-11-03', 'GeologistB', 'Pending', 'SGR-777', 'StoneKeep', 'Legends of the stone guardians', '33N_44E', 'Stationary, moves only when awakened', 0, 2);

-- Log of interdimensional portal activations and usage
CREATE TABLE interdimensional_portal_log
(
    portal_id                   INTEGER NOT NULL PRIMARY KEY,
    portal_name                 TEXT,
    activation_date             DATE,
    deactivation_date           DATE,
    origin_universe             TEXT,
    destination_universe        TEXT,
    stability_rating            TEXT,
    max_energy_consumption_mw   INTEGER,
    current_energy_usage_mw     INTEGER,
    operator_name               TEXT,
    safety_protocol_version    TEXT,
    maintenance_interval_days   INTEGER,
    last_maintenance_date       DATE,
    is_active                   BOOLEAN,
    access_permission_level    TEXT,
    linked_facility_id          INTEGER,
    portal_type                 TEXT,
    dimensional_shift_amount    INTEGER,
    anomaly_detected            BOOLEAN,
    anomaly_description         TEXT,
    emergency_shutdown_triggered BOOLEAN,
    shutdown_reason             TEXT,
    created_by_system           TEXT,
    notes                       TEXT,
    calibration_status          TEXT,
    remote_monitoring_enabled   BOOLEAN
);

INSERT INTO interdimensional_portal_log VALUES (2001, 'PortalAlpha', '2120-01-10', NULL, 'Universe-5', 'Universe-9', 'Stable', 8000, 5000, 'Dr Realm', 'v2.1', 180, '2121-06-15', 1, 'Level3', 301, 'Wormhole', 3, 0, '', 0, '', 'AutoSys', 'Routine operation', 'Calibrated', 1);
INSERT INTO interdimensional_portal_log VALUES (2002, 'PortalBeta', '2118-05-22', '2122-03-01', 'Universe-2', 'Universe-8', 'Unstable', 12000, 11000, 'Agent X', 'v3.0', 90, '2120-12-05', 0, 'Level5', 402, 'Tesseract', 5, 1, 'Temporal distortion spikes', 1, 'Power overload', 'AutoSys', 'Investigate instability', 'Recalibration needed', 0);
INSERT INTO interdimensional_portal_log VALUES (2003, 'PortalGamma', '2121-09-30', NULL, 'Universe-11', 'Universe-4', 'Stable', 6000, 3000, 'Commander Y', 'v2.5', 200, '2122-01-20', 1, 'Level2', 503, 'Einstein-Rosen', 2, 0, '', 0, '', 'AutoSys', 'All clear', 'Calibrated', 1);

-- Observations of celestial events across the multiverse
CREATE TABLE celestial_event_observation
(
    event_id                     INTEGER NOT NULL PRIMARY KEY,
    event_name                   TEXT,
    event_type                   TEXT,
    observation_date             DATE,
    observed_universe            TEXT,
    location_coordinates         TEXT,
    magnitude                    REAL,
    duration_seconds             INTEGER,
    observed_by_instrument       TEXT,
    instrument_location          TEXT,
    wavelength_range_nm          TEXT,
    data_file_path               TEXT,
    analyst_name                 TEXT,
    verification_status          TEXT,
    associated_theory            TEXT,
    impact_assessment            TEXT,
    follow_up_required           BOOLEAN,
    follow_up_deadline           DATE,
    notes                        TEXT,
    is_public_release            BOOLEAN,
    release_url                  TEXT,
    funding_agency               TEXT,
    observation_budget_usd       INTEGER,
    calibration_factor           REAL,
    weather_conditions           TEXT,
    local_timezone               TEXT,
    observer_latitude            REAL,
    observer_longitude           REAL,
    observation_quality_score    INTEGER
);

INSERT INTO celestial_event_observation VALUES (9001, 'SupernovaX1', 'Supernova', '2123-04-15', 'Universe-13', '22.5N_78.9W', 9.8, 86400, 'SpaceTelescopeA', 'Orbit-7', '300-800', '/data/supernovax1.fits', 'Dr Nova', 'Verified', 'StellarEvolution', 'High', 0, NULL, 'Bright event captured with high fidelity', 1, 'http://publications/supernovax1', 'AstroFund', 1500000, 1.02, 'Clear', 'UTC+0', 12.34, -45.67, 95);
INSERT INTO celestial_event_observation VALUES (9002, 'GammaRayBurstZ', 'GammaRayBurst', '2122-11-02', 'Universe-6', '15.2S_33.1E', 12.5, 120, 'GammaArrayB', 'GroundStation12', '10-1000', '/data/grbz.dat', 'Prof Burst', 'Pending', 'HighEnergyPhysics', 'Medium', 1, '2123-01-15', 'Requires further analysis of afterglow', 0, '', 'SpaceScienceOrg', 800000, 0.98, 'Cloudy', 'UTC-5', -23.45, 67.89, 78);
INSERT INTO celestial_event_observation VALUES (9003, 'TransitPlanetY', 'ExoplanetTransit', '2121-07-19', 'Universe-9', '5.0N_120.0W', 0.02, 7200, 'StarMonitorC', 'Mountaintop3', '400-700', '/data/transity.csv', 'Dr Transit', 'Verified', 'PlanetFormation', 'Low', 0, NULL, 'Clear dip observed, confirming planet size', 1, 'http://data/transity', 'ExoplanetConsortium', 500000, 1.00, 'Clear', 'UTC+3', 45.67, -12.34, 88);

-- Inventory for nanotech material production facilities
CREATE TABLE nanotech_material_inventory
(
    inventory_id                INTEGER NOT NULL PRIMARY KEY,
    facility_id                 INTEGER,
    material_code               TEXT,
    material_name               TEXT,
    batch_number                TEXT,
    production_date             DATE,
    expiry_date                 DATE,
    quantity_grams              INTEGER,
    purity_percentage           REAL,
    storage_temperature_c       REAL,
    storage_humidity_percent    REAL,
    hazard_classification       TEXT,
    supplier_name               TEXT,
    supplier_contact            TEXT,
    lot_origin_country          TEXT,
    handling_instructions       TEXT,
    safety_data_sheet_url       TEXT,
    is_qa_approved              BOOLEAN,
    qa_approval_date            DATE,
    last_audit_date             DATE,
    audit_status                TEXT,
    reserved_for_order_id       INTEGER,
    next_maintenance_scheduled DATE,
    notes                       TEXT,
    regulatory_compliance       TEXT,
    nanotech_grade              TEXT,
    material_density_g_cm3      REAL,
    disposal_method             TEXT,
    is_active                   BOOLEAN
);

INSERT INTO nanotech_material_inventory VALUES (30001, 101, 'NT-001', 'CarbonNanotube', 'BN202301', '2030-01-01', '2035-01-01', 50000, 99.5, -20.0, 5.0, 'Class1', 'NanoSuppliesCo', '+1-800-555-0100', 'USA', 'Handle in glove box', 'http://sds/nt001.pdf', 1, '2031-02-15', '2032-07-20', 'Passed', NULL, '2033-03-01', 'Reserve for ProjectAlpha', 'ISO9001', 'GradeA', 2.1, 'Recycling', 1);
INSERT INTO nanotech_material_inventory VALUES (30002, 102, 'NT-002', 'GrapheneSheet', 'GS202305', '2031-05-01', '2036-05-01', 20000, 98.0, 15.0, 30.0, 'Class2', 'GrapheneLabs', '+44-20-1234-5678', 'UK', 'Store flat, avoid moisture', 'http://sds/nt002.pdf', 1, '2032-06-10', '2033-12-01', 'Passed', NULL, '2034-01-15', 'Used in flexible displays', 'ISO14001', 'GradeB', 0.77, 'Incineration', 1);
INSERT INTO nanotech_material_inventory VALUES (30003, 103, 'NT-003', 'QuantumDot', 'QD202407', '2032-07-01', '2037-07-01', 10000, 95.5, 4.0, 40.0, 'Class3', 'QuantumMaterialsInc', '+49-30-9876-5432', 'Germany', 'Keep in dark container', 'http://sds/nt003.pdf', 0, NULL, '2033-09-15', 'Pending', NULL, '2034-11-20', 'Pending QA for display project', 'ISO45001', 'GradeC', 1.05, 'Landfill', 0);

-- Corpus of alien languages collected from various universes
CREATE TABLE alien_language_corpus
(
    corpus_id                 INTEGER NOT NULL PRIMARY KEY,
    language_name             TEXT,
    universe_origin           TEXT,
    script_type               TEXT,
    number_of_phrases         INTEGER,
    total_words               INTEGER,
    phoneme_inventory         TEXT,
    grammar_complexity_level  TEXT,
    first_recorded_date       DATE,
    last_updated_date         DATE,
    collected_by_researcher   TEXT,
    source_document_url       TEXT,
    transcription_standard    TEXT,
    digital_encoding_format   TEXT,
    is_deciphered             BOOLEAN,
    deciphered_by             TEXT,
    deciphered_date           DATE,
    notes                     TEXT,
    public_access             BOOLEAN,
    access_url                TEXT,
    funding_source            TEXT,
    project_budget_usd        INTEGER,
    associated_species        TEXT,
    linguistic_family         TEXT,
    dialect_count             INTEGER,
    sample_audio_file_path    TEXT,
    sample_image_file_path    TEXT,
    data_quality_score        INTEGER,
    preservation_status      TEXT
);

INSERT INTO alien_language_corpus VALUES (4001, 'Zylox', 'Universe-4', 'Logographic', 1200, 8500, 'z, y, l, o, x, zh', 'High', '2120-03-10', '2122-08-05', 'Dr Xen', 'http://corpus/zylox.zip', 'IPA', 'UTF-8', 0, NULL, NULL, 'Complex tonal system', 0, '', 'GalacticLanguageFund', 2000000, 'Zyloxians', 'Proto-Zylox', 3, '/audio/zylox_sample.wav', '/images/zylox_script.png', 78, 'Stored');
INSERT INTO alien_language_corpus VALUES (4002, 'Krell', 'Universe-7', 'Alphabetic', 800, 5000, 'k, r, e, l, a', 'Medium', '2118-11-22', '2121-04-12', 'Prof Krell', 'http://corpus/krell.tar', 'X-SAMPA', 'UTF-16', 1, 'Prof Krell', '2121-05-01', 'Fully deciphered, used in trade', 1, 'http://public/krell', 'InterstellarComm', 1200000, 'Krells', 'Krellic', 2, '/audio/krell_sample.wav', '/images/krell_script.png', 92, 'Archived');
INSERT INTO alien_language_corpus VALUES (4003, 'Mira', 'Universe-12', 'Syllabary', 1500, 9000, 'mi, ra, na, lo, su', 'Low', '2123-01-15', '2123-07-20', 'Dr Mira', 'http://corpus/mira.dat', 'Custom', 'ASCII', 0, NULL, NULL, 'Limited documentation', 0, '', 'ExoplanetaryLinguistics', 800000, 'Mirae', 'Miran', 4, '/audio/mira_sample.wav', '/images/mira_script.png', 65, 'Preserved');

-- Records of heroic deeds performed by individual heroes
CREATE TABLE heroic_deed_record
(
    deed_id                     INTEGER NOT NULL PRIMARY KEY,
    hero_id                     INTEGER,
    deed_title                  TEXT,
    deed_description            TEXT,
    date_of_deed                DATE,
    location_city               TEXT,
    location_country            TEXT,
    civilian_casualties_prevented INTEGER,
    property_damage_prevented_usd INTEGER,
    villains_neutralized        INTEGER,
    rescue_units_deployed       INTEGER,
    media_coverage_level        TEXT,
    public_reaction_sentiment    TEXT,
    awarded_medal               TEXT,
    award_date                  DATE,
    documented_by               TEXT,
    verification_status         TEXT,
    follow_up_action_required   BOOLEAN,
    follow_up_deadline          DATE,
    notes                       TEXT,
    is_public_record            BOOLEAN,
    public_record_url           TEXT,
    funding_source              TEXT,
    budget_impact_usd           INTEGER,
    time_of_day                 TEXT,
    weather_conditions          TEXT,
    emergency_services_involved BOOLEAN,
    coordination_center         TEXT,
    debrief_document_path       TEXT,
    post_deed_psychology_assessment TEXT
);

INSERT INTO heroic_deed_record VALUES (7001, 1, 'Bridge Rescue', 'Saved commuters from collapsing bridge', '2125-06-10', 'Metrocity', 'USA', 0, 5000000, 2, 3, 'High', 'Positive', 'Valor Medal', '2125-07-01', 'NewsAgencyX', 'Verified', 0, NULL, 'Hero arrived within minutes', 1, 'http://public/bridge_rescue', 'CityBudget', 200000, 'Morning', 'Clear', 1, 'OpsCenter1', '/docs/bridge_debrief.pdf', 'No trauma');
INSERT INTO heroic_deed_record VALUES (7002, 2, 'Fire Containment', 'Contained wildfire threatening residential area', '2124-08-22', 'Hilltown', 'Canada', 0, 3000000, 0, 5, 'Medium', 'Positive', 'Firefighter Star', '2124-09-05', 'LocalNews', 'Verified', 1, '2124-10-01', 'Follow up fire safety inspection needed', 1, 'http://public/fire_containment', 'StateGrant', 150000, 'Afternoon', 'Windy', 1, 'FireCommand', '/docs/fire_debrief.pdf', 'Mild stress');
INSERT INTO heroic_deed_record VALUES (7003, 3, 'Bank Heist Prevention', 'Thwarted armed robbery at downtown bank', '2123-12-15', 'Capital City', 'UK', 0, 1200000, 4, 2, 'High', 'Positive', 'Courage Award', '2124-01-10', 'NationalTV', 'Pending', 0, NULL, 'Awaiting final police report', 0, '', 'PrivateDonor', 80000, 'Night', 'Rainy', 1, 'PoliceHQ', '/docs/bank_debrief.pdf', 'No issues');

-- Proceedings from supervillain trial cases
CREATE TABLE supervillain_trial_proceedings
(
    trial_id                     INTEGER NOT NULL PRIMARY KEY,
    villain_id                   INTEGER,
    trial_name                   TEXT,
    jurisdiction                 TEXT,
    start_date                   DATE,
    end_date                     DATE,
    presiding_judge_name         TEXT,
    prosecutor_name              TEXT,
    defense_attorney_name        TEXT,
    charges_count                INTEGER,
    total_fine_usd               INTEGER,
    sentence_years               INTEGER,
    sentence_type                TEXT,
    verdict                      TEXT,
    verdict_date                 DATE,
    evidence_summary             TEXT,
    witness_count                INTEGER,
    public_interest_level        TEXT,
    media_coverage_hours         INTEGER,
    security_measures_level      TEXT,
    courtroom_capacity           INTEGER,
    bail_amount_usd              INTEGER,
    is_appeal_filed              BOOLEAN,
    appeal_decision              TEXT,
    appeal_date                  DATE,
    post_trial_restraints        TEXT,
    rehabilitation_program       TEXT,
    restitution_amount_usd       INTEGER,
    case_files_location          TEXT,
    notes                        TEXT,
    archival_status              TEXT
);

INSERT INTO supervillain_trial_proceedings VALUES (90001, 5, 'Trial of Dr Malevolent', 'Universal Court', '2126-03-01', '2126-07-15', 'Judge Orion', 'Prosecutor Vega', 'Attorney Zephyr', 8, 50000000, 30, 'Imprisonment', 'Guilty', '2126-07-20', 'DNA, video, testimonies', 12, 'High', 150, 'Maximum', 200, 0, 0, '', NULL, 'Restrained movements', 'Reformation Module', 20000000, '/archive/trial90001', 'Case set precedent', 'Closed');
INSERT INTO supervillain_trial_proceedings VALUES (90002, 6, 'The Shadow Syndicate Collapse', 'Intergalactic Tribunal', '2125-11-10', '2126-02-28', 'Judge Lyra', 'Prosecutor Nova', 'Attorney Quark', 15, 120000000, 50, 'Life Imprisonment', 'Guilty', '2126-03-05', 'Encrypted logs, witness statements', 20, 'Very High', 200, 'Extreme', 300, 0, 1, 'Pending', NULL, 'No contact with any network', 'Universial Rehab', 50000000, '/archive/trial90002', 'International cooperation highlighted', 'Archived');
INSERT INTO supervillain_trial_proceedings VALUES (90003, 7, 'The Crimson Marauder Hearing', 'Planetary Court', '2124-05-01', '2124-06-10', 'Judge Atlas', 'Prosecutor Helios', 'Attorney Luna', 5, 25000000, 20, 'Imprisonment', 'Not Guilty', '2124-06-12', 'Insufficient evidence', 5, 'Medium', 80, 'Standard', 150, 500000, 0, '', NULL, 'None', 'None', 0, '/archive/trial90003', 'Acquitted due to lack of proof', 'Closed');

-- Trade agreements between interstellar corporations
CREATE TABLE interstellar_trade_agreement
(
    agreement_id               INTEGER NOT NULL PRIMARY KEY,
    agreement_name             TEXT,
    signing_date               DATE,
    effective_date             DATE,
    expiration_date            DATE,
    party_a_company_name       TEXT,
    party_a_country            TEXT,
    party_b_company_name       TEXT,
    party_b_country            TEXT,
    commodity_type             TEXT,
    annual_volume_units        INTEGER,
    price_per_unit_usd         REAL,
    total_value_usd            REAL,
    trade_route_description    TEXT,
    regulatory_body            TEXT,
    compliance_status          TEXT,
    dispute_resolution_mechanism TEXT,
    arbitration_jurisdiction   TEXT,
    confidentiality_clause    BOOLEAN,
    amendment_allowed          BOOLEAN,
    renewal_option_years       INTEGER,
    governing_law              TEXT,
    signing_officer_a          TEXT,
    signing_officer_b          TEXT,
    notes                      TEXT,
    is_active                  BOOLEAN,
    last_review_date           DATE,
    next_review_date           DATE,
    digital_contract_hash      TEXT,
    public_release             BOOLEAN,
    public_release_url         TEXT
);

INSERT INTO interstellar_trade_agreement VALUES (11001, 'Starlight Metals Exchange', '2120-02-15', '2120-03-01', '2130-03-01', 'Nebula Mining Corp', 'Andromeda', 'Zenith Metals Ltd', 'Orion', 'Titanium', 1000000, 150.0, 150000000.0, 'Nebula-Orion Corridor', 'Interstellar Trade Board', 'Compliant', 'Mediation', 'Orion Tribunal', 1, 1, 5, 'Andromedan Law', 'Cassandra Vega', 'Darius K', 'Long term partnership', 1, '2129-12-01', '2130-02-01', 'hash123abc456', 0, '');
INSERT INTO interstellar_trade_agreement VALUES (11002, 'Quantum Energy Pact', '2122-07-10', '2122-08-01', '2132-08-01', 'Quantum Grid Inc', 'MilkyWay', 'Photon Dynamics', 'Pegasus', 'Quantum Fuel Cells', 500000, 2000.0, 1000000000.0, 'MilkyWay-Pegasus Loop', 'Universal Energy Commission', 'Compliant', 'Arbitration', 'MilkyWay Court', 1, 1, 10, 'MilkyWay Statutes', 'Elara Sun', 'Orion Flux', 'Strategic energy security', 1, '2131-12-15', '2132-07-01', 'hash789def012', 1, 'http://public/quantum_energy_pact');
INSERT INTO interstellar_trade_agreement VALUES (11003, 'Cosmic Agriculture Alliance', '2125-04-20', '2125-05-01', '2135-05-01', 'GreenStar Agri', 'Vulcan', 'Stellar Harvest Ltd', 'Sirius', 'Hydroponic Nutrients', 200000, 75.0, 15000000.0, 'Vulcan-Sirius Trade Lane', 'Galactic Agriculture Council', 'Pending', 'Mediation', 'Vulcan Tribunal', 0, 1, 3, 'Vulcan Ordinances', 'Mira Terra', 'Cassiopeia Green', 'Pilot program for off-world farms', 0, '2134-11-30', '2135-04-01', 'hash345ghi678', 0, '');
