-- Galactic Alliance Member details
CREATE TABLE galactic_alliance_member
(
    id                         INTEGER NOT NULL PRIMARY KEY,
    member_name                TEXT,
    alliance_role              TEXT,
    planet_of_origin           TEXT,
    species                    TEXT,
    join_date                  DATE,
    rank                       TEXT,
    contribution_score         INTEGER,
    diplomatic_status          TEXT,
    resource_share_percent     INTEGER,
    technology_level           INTEGER,
    military_capacity          INTEGER,
    cultural_influence         INTEGER,
    communication_frequency    INTEGER,
    treaty_status              TEXT,
    voting_power               INTEGER,
    last_meeting_date          DATE,
    contact_email              TEXT,
    funding_allocated_usd      DECIMAL(12,2),
    notes                      TEXT
);

INSERT INTO galactic_alliance_member (id, member_name, alliance_role, planet_of_origin, species, join_date, rank, contribution_score, diplomatic_status, resource_share_percent, technology_level, military_capacity, cultural_influence, communication_frequency, treaty_status, voting_power, last_meeting_date, contact_email, funding_allocated_usd, notes) VALUES
(1, 'OrionPrime', 'CouncilLeader', 'Xenon', 'Xelorian', '2120-04-12', 'Supreme', 950, 'Active', 15, 9, 8, 7, 24, 'Ratified', 12, '2125-01-05', 'orionprime@galactic.org', 1250000.00, 'First member of the council');

INSERT INTO galactic_alliance_member (id, member_name, alliance_role, planet_of_origin, species, join_date, rank, contribution_score, diplomatic_status, resource_share_percent, technology_level, military_capacity, cultural_influence, communication_frequency, treaty_status, voting_power, last_meeting_date, contact_email, funding_allocated_usd, notes) VALUES
(2, 'VelaTrader', 'TradeEnvoy', 'Maris', 'Marian', '2122-07-19', 'Senior', 720, 'GoodStanding', 10, 8, 5, 6, 12, 'Pending', 8, '2125-01-05', 'velatrader@galactic.org', 850000.00, 'Handles interstellar commerce');

INSERT INTO galactic_alliance_member (id, member_name, alliance_role, planet_of_origin, species, join_date, rank, contribution_score, diplomatic_status, resource_share_percent, technology_level, military_capacity, cultural_influence, communication_frequency, treaty_status, voting_power, last_meeting_date, contact_email, funding_allocated_usd, notes) VALUES
(3, 'ZenithGuardian', 'DefenseChief', 'Astra', 'Astraean', '2121-11-03', 'Chief', 880, 'Active', 12, 9, 9, 5, 18, 'Ratified', 10, '2125-01-05', 'zenithguard@galactic.org', 1100000.00, 'Oversees security protocols');

-- Interstellar Trade Route information
CREATE TABLE interstellar_trade_route
(
    id                       INTEGER NOT NULL PRIMARY KEY,
    route_name               TEXT,
    origin_planet            TEXT,
    destination_planet       TEXT,
    distance_lightyears      INTEGER,
    typical_transit_time_days INTEGER,
    primary_goods            TEXT,
    freight_capacity_tons    INTEGER,
    security_level           TEXT,
    customs_regulation       TEXT,
    route_status             TEXT,
    established_date         DATE,
    last_inspection_date     DATE,
    governing_body           TEXT,
    maintenance_cost_annual_usd DECIMAL(12,2),
    traffic_volume           INTEGER,
    hazard_rating            INTEGER,
    insurance_requirement    TEXT,
    avg_profit_margin_percent INTEGER,
    notes                    TEXT
);

INSERT INTO interstellar_trade_route (id, route_name, origin_planet, destination_planet, distance_lightyears, typical_transit_time_days, primary_goods, freight_capacity_tons, security_level, customs_regulation, route_status, established_date, last_inspection_date, governing_body, maintenance_cost_annual_usd, traffic_volume, hazard_rating, insurance_requirement, avg_profit_margin_percent, notes) VALUES
(1, 'SilkWay', 'Terra', 'Zyra', 45, 12, 'Textiles', 3000, 'High', 'Standard', 'Active', '2100-05-01', '2124-09-15', 'TradeCouncil', 250000.00, 850, 2, 'Full', 18, 'Primary artery for luxury goods');

INSERT INTO interstellar_trade_route (id, route_name, origin_planet, destination_planet, distance_lightyears, typical_transit_time_days, primary_goods, freight_capacity_tons, security_level, customs_regulation, route_status, established_date, last_inspection_date, governing_body, maintenance_cost_annual_usd, traffic_volume, hazard_rating, insurance_requirement, avg_profit_margin_percent, notes) VALUES
(2, 'MineralArc', 'Kronos', 'Vulmar', 78, 20, 'Metals', 5000, 'Medium', 'Lenient', 'Active', '2115-03-22', '2124-08-02', 'MiningAuthority', 370000.00, 540, 3, 'Partial', 22, 'Key route for raw materials');

INSERT INTO interstellar_trade_route (id, route_name, origin_planet, destination_planet, distance_lightyears, typical_transit_time_days, primary_goods, freight_capacity_tons, security_level, customs_regulation, route_status, established_date, last_inspection_date, governing_body, maintenance_cost_annual_usd, traffic_volume, hazard_rating, insurance_requirement, avg_profit_margin_percent, notes) VALUES
(3, 'BioExpress', 'Eden', 'Aurelia', 30, 8, 'Pharmaceuticals', 1500, 'High', 'Strict', 'Active', '2120-11-10', '2124-10-05', 'HealthUnion', 180000.00, 400, 1, 'Full', 25, 'Fast lane for medical supplies');

-- Cosmic Artifact Registry entries
CREATE TABLE cosmic_artifact_registry
(
    id                         INTEGER NOT NULL PRIMARY KEY,
    artifact_name              TEXT,
    discovery_date             DATE,
    discovery_location         TEXT,
    originating_civilization   TEXT,
    artifact_type              TEXT,
    material_composition       TEXT,
    estimated_age_years        INTEGER,
    current_location           TEXT,
    custodian_organization     TEXT,
    preservation_state         TEXT,
    display_status             TEXT,
    loan_status                TEXT,
    last_loan_date             DATE,
    next_eligible_loan_date    DATE,
    valuation_usd              DECIMAL(15,2),
    cultural_significance_score INTEGER,
    related_events             TEXT,
    research_publications      TEXT,
    notes                      TEXT
);

INSERT INTO cosmic_artifact_registry (id, artifact_name, discovery_date, discovery_location, originating_civilization, artifact_type, material_composition, estimated_age_years, current_location, custodian_organization, preservation_state, display_status, loan_status, last_loan_date, next_eligible_loan_date, valuation_usd, cultural_significance_score, related_events, research_publications, notes) VALUES
(1, 'Starlight Scepter', '2075-06-14', 'Nebula-5 Ruins', 'Luminari', 'Relic', 'Crystal-Alloy', 12000, 'Celestial Museum', 'GalacticHeritage', 'Excellent', 'OnDisplay', 'Available', '2022-04-20', '2023-09-01', 4500000.00, 95, 'Nebula War', 'Journal of Ancient Tech Vol5', 'Key diplomatic symbol');

INSERT INTO cosmic_artifact_registry (id, artifact_name, discovery_date, discovery_location, originating_civilization, artifact_type, material_composition, estimated_age_years, current_location, custodian_organization, preservation_state, display_status, loan_status, last_loan_date, next_eligible_loan_date, valuation_usd, cultural_significance_score, related_events, research_publications, notes) VALUES
(2, 'Echoing Harmonic Disk', '2090-12-02', 'Orbiting Debris Field', 'Harmoni', 'Instrument', 'Phased-Metal', 9000, 'Interstellar Archive', 'MusicConsortium', 'Good', 'InStorage', 'OnLoan', '2021-11-15', '2024-03-12', 2100000.00, 88, 'Celestial Concord', 'Acoustic Resonance Review 2022', 'Used in intergalactic peace talks');

INSERT INTO cosmic_artifact_registry (id, artifact_name, discovery_date, discovery_location, originating_civilization, artifact_type, material_composition, estimated_age_years, current_location, custodian_organization, preservation_state, display_status, loan_status, last_loan_date, next_eligible_loan_date, valuation_usd, cultural_significance_score, related_events, research_publications, notes) VALUES
(3, 'Chrono Stone', '2085-03-19', 'Temporal Rift Site', 'Chronali', 'Device', 'Temporal Crystal', 15000, 'Time Research Lab', 'ChronoInstitute', 'Fair', 'InStorage', 'Available', NULL, '2025-01-01', 3200000.00, 92, 'Time Rift Event', 'Temporal Mechanics Quarterly', 'Restricted access');

-- Metahuman Clinic Record
CREATE TABLE metahuman_clinic_record
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    patient_name           TEXT,
    alias                  TEXT,
    species                TEXT,
    date_of_birth          DATE,
    registration_date      DATE,
    clinic_id              INTEGER,
    primary_power          TEXT,
    secondary_power        TEXT,
    power_stability_rating INTEGER,
    last_assessment_date   DATE,
    treatment_plan         TEXT,
    medication_list        TEXT,
    therapist_name         TEXT,
    consent_status         TEXT,
    insurance_provider     TEXT,
    policy_number          TEXT,
    emergency_contact      TEXT,
    notes                  TEXT,
    discharge_date         DATE
);

INSERT INTO metahuman_clinic_record (id, patient_name, alias, species, date_of_birth, registration_date, clinic_id, primary_power, secondary_power, power_stability_rating, last_assessment_date, treatment_plan, medication_list, therapist_name, consent_status, insurance_provider, policy_number, emergency_contact, notes, discharge_date) VALUES
(1, 'Lara Quinn', 'Vortex', 'Human-Mutant', '1998-05-21', '2123-02-10', 1, 'Telekinesis', 'Invisibility', 8, '2124-06-15', 'Cognitive therapy and power modulation', 'NeuroCalm', 'Dr. Selene', 'Given', 'MetaHealth', 'MH-34291', 'Jon Quinn', 'Responding well to therapy', NULL);

INSERT INTO metahuman_clinic_record (id, patient_name, alias, species, date_of_birth, registration_date, clinic_id, primary_power, secondary_power, power_stability_rating, last_assessment_date, treatment_plan, medication_list, therapist_name, consent_status, insurance_provider, policy_number, emergency_contact, notes, discharge_date) VALUES
(2, 'Korin Xel', 'SolarFlare', 'Xelorian', '2005-11-03', '2123-07-22', 2, 'Pyrokinesis', 'Flight', 7, '2124-08-01', 'Heat regulation regimen', 'ThermoShield', 'Dr. Voss', 'Given', 'XelHealth', 'XL-87412', 'Mira Xel', 'Minor flare episodes', NULL);

INSERT INTO metahuman_clinic_record (id, patient_name, alias, species, date_of_birth, registration_date, clinic_id, primary_power, secondary_power, power_stability_rating, last_assessment_date, treatment_plan, medication_list, therapist_name, consent_status, insurance_provider, policy_number, emergency_contact, notes, discharge_date) VALUES
(3, 'Tara Nova', 'Echo', 'Novian', '1995-02-14', '2124-01-05', 1, 'Sound Manipulation', NULL, 9, '2124-09-10', 'Acoustic resonance training', 'EchoSilence', 'Dr. Arun', 'Given', 'NovaCare', 'NV-55678', 'Liam Nova', 'Stable with no side effects', NULL);

-- Dimensional Portal Log
CREATE TABLE dimensional_portal_log
(
    id                         INTEGER NOT NULL PRIMARY KEY,
    portal_name                TEXT,
    created_date               DATE,
    creator_entity             TEXT,
    portal_type                TEXT,
    stability_index            INTEGER,
    linked_dimension           TEXT,
    activation_status          TEXT,
    energy_consumption_mw      INTEGER,
    regulatory_approval        TEXT,
    last_maintenance_date      DATE,
    max_duration_hours         INTEGER,
    access_restriction_level   TEXT,
    observer_notes             TEXT,
    decommission_date          DATE,
    location_coordinates       TEXT,
    security_clearance_required TEXT,
    current_user_count         INTEGER,
    breach_attempts            INTEGER,
    notes                      TEXT
);

INSERT INTO dimensional_portal_log (id, portal_name, created_date, creator_entity, portal_type, stability_index, linked_dimension, activation_status, energy_consumption_mw, regulatory_approval, last_maintenance_date, max_duration_hours, access_restriction_level, observer_notes, decommission_date, location_coordinates, security_clearance_required, current_user_count, breach_attempts, notes) VALUES
(1, 'AetherGate', '2105-08-12', 'ArcaneInstitute', 'Stable', 92, 'EtherealPlane', 'Active', 1500, 'Approved', '2124-03-10', 48, 'High', 'No anomalies observed', NULL, 'X:124 Y:58 Z:33', 'Level5', 12, 0, 'Primary research portal');

INSERT INTO dimensional_portal_log (id, portal_name, created_date, creator_entity, portal_type, stability_index, linked_dimension, activation_status, energy_consumption_mw, regulatory_approval, last_maintenance_date, max_duration_hours, access_restriction_level, observer_notes, decommission_date, location_coordinates, security_clearance_required, current_user_count, breach_attempts, notes) VALUES
(2, 'QuantumVortex', '2110-04-03', 'QuantumLab', 'Transient', 68, 'QuantumRealm', 'Inactive', 800, 'Pending', '2123-11-22', 12, 'Medium', 'Fluctuations within expected range', '2125-01-01', 'X:210 Y:410 Z:78', 'Level3', 0, 2, 'Scheduled to reactivate next quarter');

INSERT INTO dimensional_portal_log (id, portal_name, created_date, creator_entity, portal_type, stability_index, linked_dimension, activation_status, energy_consumption_mw, regulatory_approval, last_maintenance_date, max_duration_hours, access_restriction_level, observer_notes, decommission_date, location_coordinates, security_clearance_required, current_user_count, breach_attempts, notes) VALUES
(3, 'ShadowRift', '2098-12-19', 'DarkMatterConsortium', 'Unstable', 45, 'ShadowDimension', 'Active', 2000, 'Approved', '2124-07-05', 6, 'VeryHigh', 'Minor temporal distortions detected', NULL, 'X:5 Y:99 Z:12', 'Level7', 4, 5, 'Under close surveillance');

-- Alien Species Registry
CREATE TABLE alien_species_registry
(
    id                         INTEGER NOT NULL PRIMARY KEY,
    species_name               TEXT,
    home_planet                TEXT,
    classification             TEXT,
    average_height_cm          INTEGER,
    average_lifespan_years     INTEGER,
    sentience_level            TEXT,
    language_name              TEXT,
    known_technologies         TEXT,
    diplomatic_status          TEXT,
    first_contact_date        DATE,
    current_relations          TEXT,
    population_estimate        BIGINT,
    habitat_type               TEXT,
    genetic_marker             TEXT,
    dietary_preferences        TEXT,
    cultural_traits            TEXT,
    notable_individuals        TEXT,
    treaty_membership          TEXT,
    notes                      TEXT
);

INSERT INTO alien_species_registry (id, species_name, home_planet, classification, average_height_cm, average_lifespan_years, sentience_level, language_name, known_technologies, diplomatic_status, first_contact_date, current_relations, population_estimate, habitat_type, genetic_marker, dietary_preferences, cultural_traits, notable_individuals, treaty_membership, notes) VALUES
(1, 'Zarathians', 'Zara', 'Mammalian', 210, 300, 'Advanced', 'Zarathi', 'WarpDrive,QuantumComputing', 'Friendly', '2080-03-14', 'Allied', 5400000000, 'TemperateForest', 'ZRT-Alpha', 'Omnivore', 'Collectivist, Ritualistic', 'ElderKarn', 'Member', 'Key participants in the Galactic Council');

INSERT INTO alien_species_registry (id, species_name, home_planet, classification, average_height_cm, average_lifespan_years, sentience_level, language_name, known_technologies, diplomatic_status, first_contact_date, current_relations, population_estimate, habitat_type, genetic_marker, dietary_preferences, cultural_traits, notable_individuals, treaty_membership, notes) VALUES
(2, 'Vorlok', 'Vorl', 'Arachnid', 180, 150, 'Intermediate', 'VorlokTongue', 'BioEngineering', 'Neutral', '2092-09-05', 'Trade', 1200000000, 'Desert', 'VRK-Delta', 'Carnivore', 'Matriarchal, WarriorClans', 'MatriarchZara', 'Observer', 'Recent expansions into outer systems');

INSERT INTO alien_species_registry (id, species_name, home_planet, classification, average_height_cm, average_lifespan_years, sentience_level, language_name, known_technologies, diplomatic_status, first_contact_date, current_relations, population_estimate, habitat_type, genetic_marker, dietary_preferences, cultural_traits, notable_individuals, treaty_membership, notes) VALUES
(3, 'Luminex', 'Lumen', 'EnergyBased', 0, 5000, 'Advanced', 'Lumina', 'EnergyManipulation', 'Hostile', '2075-12-20', 'Hostile', 8000000, 'RadiantNebula', 'LMX-Gamma', 'EnergyAbsorption', 'HiveMind, RitualLight', 'CoreEssence', 'NonMember', 'Aggressive defense of territory');

-- Renewable Energy Grid Node
CREATE TABLE renewable_energy_grid_node
(
    id                         INTEGER NOT NULL PRIMARY KEY,
    node_name                  TEXT,
    location_city              TEXT,
    location_country           TEXT,
    installation_date          DATE,
    capacity_mw                INTEGER,
    current_output_mw          INTEGER,
    energy_type                TEXT,
    operational_status         TEXT,
    maintenance_schedule       TEXT,
    last_inspection_date       DATE,
    grid_connection_id         TEXT,
    avg_daily_generation_mwh   INTEGER,
    carbon_offset_tons         INTEGER,
    owner_company              TEXT,
    funding_source             TEXT,
    warranty_expiry            DATE,
    compliance_certification   TEXT,
    outage_history             TEXT,
    notes                      TEXT
);

INSERT INTO renewable_energy_grid_node (id, node_name, location_city, location_country, installation_date, capacity_mw, current_output_mw, energy_type, operational_status, maintenance_schedule, last_inspection_date, grid_connection_id, avg_daily_generation_mwh, carbon_offset_tons, owner_company, funding_source, warranty_expiry, compliance_certification, outage_history, notes) VALUES
(1, 'SolarArcNorth', 'Helios', 'Solaria', '2120-02-15', 500, 480, 'Solar', 'Online', 'Quarterly', '2124-06-01', 'GC-101', 12000, 8500, 'SunPower Corp', 'GreenBond', '2030-02-15', 'ISO5001', 'None', 'Primary solar hub in northern sector');

INSERT INTO renewable_energy_grid_node (id, node_name, location_city, location_country, installation_date, capacity_mw, current_output_mw, energy_type, operational_status, maintenance_schedule, last_inspection_date, grid_connection_id, avg_daily_generation_mwh, carbon_offset_tons, owner_company, funding_source, warranty_expiry, compliance_certification, outage_history, notes) VALUES
(2, 'WindCrestEast', 'Aero', 'Ventus', '2118-07-30', 350, 340, 'Wind', 'Online', 'Biannual', '2124-05-20', 'GC-202', 8500, 6200, 'BreezeTech', 'EcoFund', '2028-07-30', 'ISO5002', '2022-11-10:4h', 'High efficiency turbine array');

INSERT INTO renewable_energy_grid_node (id, node_name, location_city, location_country, installation_date, capacity_mw, current_output_mw, energy_type, operational_status, maintenance_schedule, last_inspection_date, grid_connection_id, avg_daily_generation_mwh, carbon_offset_tons, owner_company, funding_source, warranty_expiry, compliance_certification, outage_history, notes) VALUES
(3, 'HydroPulseCentral', 'Rivera', 'Aquatica', '2122-01-05', 600, 590, 'Hydro', 'Online', 'Annual', '2124-04-18', 'GC-303', 15000, 12000, 'AquaEnergy', 'PublicGrant', '2032-01-05', 'ISO5003', '2023-03-12:2h', 'Strategic water flow management');

-- Quantum Computing Job Queue
CREATE TABLE quantum_computing_job_queue
(
    job_id                     INTEGER NOT NULL PRIMARY KEY,
    submitted_by               TEXT,
    submission_timestamp       DATETIME,
    target_node                TEXT,
    qubit_count                INTEGER,
    algorithm_name             TEXT,
    estimated_runtime_seconds  INTEGER,
    priority_level             TEXT,
    status                     TEXT,
    result_location            TEXT,
    error_log                  TEXT,
    compute_cost_usd           DECIMAL(12,2),
    allocated_memory_gb        INTEGER,
    cpu_time_seconds           INTEGER,
    memory_usage_gb            INTEGER,
    gpu_usage_percent          INTEGER,
    job_description            TEXT,
    cancellation_reason        TEXT,
    completion_timestamp       DATETIME,
    notes                      TEXT
);

INSERT INTO quantum_computing_job_queue (job_id, submitted_by, submission_timestamp, target_node, qubit_count, algorithm_name, estimated_runtime_seconds, priority_level, status, result_location, error_log, compute_cost_usd, allocated_memory_gb, cpu_time_seconds, memory_usage_gb, gpu_usage_percent, job_description, cancellation_reason, completion_timestamp, notes) VALUES
(1, 'DrSmith', '2124-09-01 08:15:00', 'NodeA1', 128, 'ShorFactorization', 7200, 'High', 'Running', '/results/job1', NULL, 1500.00, 64, 3600, 48, 20, 'Factor large integer for cryptanalysis', NULL, NULL, 'Initial test of prime factoring');

INSERT INTO quantum_computing_job_queue (job_id, submitted_by, submission_timestamp, target_node, qubit_count, algorithm_name, estimated_runtime_seconds, priority_level, status, result_location, error_log, compute_cost_usd, allocated_memory_gb, cpu_time_seconds, memory_usage_gb, gpu_usage_percent, job_description, cancellation_reason, completion_timestamp, notes) VALUES
(2, 'AIResearchTeam', '2124-09-02 14:30:00', 'NodeB3', 256, 'QuantumSimulation', 14400, 'Medium', 'Queued', NULL, NULL, 3000.00, 128, 0, 0, 0, 'Simulate molecular interactions for drug discovery', NULL, NULL, 'Awaiting resource allocation');

INSERT INTO quantum_computing_job_queue (job_id, submitted_by, submission_timestamp, target_node, qubit_count, algorithm_name, estimated_runtime_seconds, priority_level, status, result_location, error_log, compute_cost_usd, allocated_memory_gb, cpu_time_seconds, memory_usage_gb, gpu_usage_percent, job_description, cancellation_reason, completion_timestamp, notes) VALUES
(3, 'DrLee', '2124-09-03 09:45:00', 'NodeC2', 64, 'GroverSearch', 3600, 'Low', 'Completed', '/results/job3', 'None', 800.00, 32, 1800, 24, 10, 'Search unsorted database for entry', NULL, '2124-09-03 10:45:00', 'Successful execution');

-- Virtual Collectible Marketplace Transaction
CREATE TABLE virtual_collectible_marketplace_transaction
(
    transaction_id             INTEGER NOT NULL PRIMARY KEY,
    buyer_user_id              INTEGER,
    seller_user_id             INTEGER,
    collectible_id             INTEGER,
    transaction_date           DATE,
    sale_price_usd             DECIMAL(12,2),
    payment_method             TEXT,
    blockchain_tx_hash         TEXT,
    delivery_method            TEXT,
    shipping_status            TEXT,
    authenticity_verified      TEXT,
    seller_rating              INTEGER,
    buyer_rating               INTEGER,
    dispute_flag               TEXT,
    refund_amount_usd          DECIMAL(12,2),
    transaction_notes          TEXT,
    platform_fee_usd           DECIMAL(10,2),
    tax_amount_usd             DECIMAL(10,2),
    final_amount_usd           DECIMAL(12,2),
    notes                      TEXT
);

INSERT INTO virtual_collectible_marketplace_transaction (transaction_id, buyer_user_id, seller_user_id, collectible_id, transaction_date, sale_price_usd, payment_method, blockchain_tx_hash, delivery_method, shipping_status, authenticity_verified, seller_rating, buyer_rating, dispute_flag, refund_amount_usd, transaction_notes, platform_fee_usd, tax_amount_usd, final_amount_usd, notes) VALUES
(1, 1001, 2002, 3003, '2124-08-15', 2500.00, 'CryptoCoin', '0xABC123DEF', 'DigitalTransfer', 'Completed', 'Yes', 5, 5, 'No', 0.00, 'First edition hero cape', 125.00, 200.00, 2175.00, 'Smooth transaction');

INSERT INTO virtual_collectible_marketplace_transaction (transaction_id, buyer_user_id, seller_user_id, collectible_id, transaction_date, sale_price_usd, payment_method, blockchain_tx_hash, delivery_method, shipping_status, authenticity_verified, seller_rating, buyer_rating, dispute_flag, refund_amount_usd, transaction_notes, platform_fee_usd, tax_amount_usd, final_amount_usd, notes) VALUES
(2, 1003, 2005, 3007, '2124-08-20', 1200.00, 'CreditCard', '0xDEF456GHI', 'DigitalTransfer', 'Completed', 'Yes', 4, 4, 'No', 0.00, 'Limited edition villain mask', 60.00, 96.00, 1044.00, 'No issues');

INSERT INTO virtual_collectible_marketplace_transaction (transaction_id, buyer_user_id, seller_user_id, collectible_id, transaction_date, sale_price_usd, payment_method, blockchain_tx_hash, delivery_method, shipping_status, authenticity_verified, seller_rating, buyer_rating, dispute_flag, refund_amount_usd, transaction_notes, platform_fee_usd, tax_amount_usd, final_amount_usd, notes) VALUES
(3, 1005, 2008, 3010, '2124-08-25', 3400.00, 'CryptoCoin', '0xGHI789JKL', 'DigitalTransfer', 'Completed', 'Yes', 5, 5, 'No', 0.00, 'Rare holographic action figure', 170.00, 272.00, 2958.00, 'Buyer expressed high satisfaction');

-- Cosmic Event Schedule
CREATE TABLE cosmic_event_schedule
(
    event_id                 INTEGER NOT NULL PRIMARY KEY,
    event_name               TEXT,
    event_type               TEXT,
    start_date               DATE,
    end_date                 DATE,
    celestial_location       TEXT,
    observation_instrument   TEXT,
    lead_scientist           TEXT,
    expected_impact_score    INTEGER,
    funding_amount_usd       DECIMAL(15,2),
    data_release_date        DATE,
    public_viewing_status    TEXT,
    required_permissions     TEXT,
    safety_precautions       TEXT,
    related_publications     TEXT,
    media_coverage_links     TEXT,
    observation_status       TEXT,
    notes                    TEXT,
    anomaly_flag             TEXT,
    follow_up_plan           TEXT
);

INSERT INTO cosmic_event_schedule (event_id, event_name, event_type, start_date, end_date, celestial_location, observation_instrument, lead_scientist, expected_impact_score, funding_amount_usd, data_release_date, public_viewing_status, required_permissions, safety_precautions, related_publications, media_coverage_links, observation_status, notes, anomaly_flag, follow_up_plan) VALUES
(1, 'SupernovaDelta', 'StellarExplosion', '2125-03-01', '2125-03-03', 'Sector-9B', 'GammaRayArray', 'DrKhan', 95, 5000000.00, '2125-04-01', 'LiveStream', 'International', 'RadiationShielding', 'AstroJournal Vol12', 'http://media.example.com/sn_delta', 'Ongoing', 'Brightest in decade', 'No', 'Long term spectral monitoring');

INSERT INTO cosmic_event_schedule (event_id, event_name, event_type, start_date, end_date, celestial_location, observation_instrument, lead_scientist, expected_impact_score, funding_amount_usd, data_release_date, public_viewing_status, required_permissions, safety_precautions, related_publications, media_coverage_links, observation_status, notes, anomaly_flag, follow_up_plan) VALUES
(2, 'GammaBurstX', 'GammaRayBurst', '2125-06-15', '2125-06-15', 'Nebula-12', 'SpaceTelescope-X', 'ProfLiu', 88, 3000000.00, '2125-07-01', 'Restricted', 'SpaceAgency', 'SecureFacility', 'HighEnergy Phys Rev', 'http://media.example.com/gb_x', 'Completed', 'Short but intense', 'Yes', 'Investigate afterglow emissions');

INSERT INTO cosmic_event_schedule (event_id, event_name, event_type, start_date, end_date, celestial_location, observation_instrument, lead_scientist, expected_impact_score, funding_amount_usd, data_release_date, public_viewing_status, required_permissions, safety_precautions, related_publications, media_coverage_links, observation_status, notes, anomaly_flag, follow_up_plan) VALUES
(3, 'DarkMatterAnomaly', 'GravitationalLens', '2125-09-10', '2125-09-20', 'Cluster-7', 'LensArray-Prime', 'DrMendoza', 92, 4200000.00, '2125-10-05', 'LiveStream', 'International', 'None', 'CosmoPhysics Letters', 'http://media.example.com/dma', 'Planned', 'Unexpected lensing patterns', 'Yes', 'Model refinement and simulation');