-- Interstellar Mission Log
CREATE TABLE interstellar_mission_log
(
    mission_id                INTEGER NOT NULL PRIMARY KEY,
    mission_name              TEXT,
    launch_date               DATE,
    arrival_date              DATE,
    spacecraft_id             INTEGER,
    crew_size                 INTEGER,
    mission_status            TEXT,
    destination_planet        TEXT,
    propulsion_type           TEXT,
    fuel_amount_tonnes        REAL,
    cost_million_usd          REAL,
    scientific_payload_weight_kg REAL,
    lead_scientist_id         INTEGER,
    communication_band        TEXT,
    orbital_insertion_success BOOLEAN,
    eva_count                 INTEGER,
    radiation_exposure_mSv    REAL,
    data_volume_tb            REAL,
    mission_duration_days     INTEGER,
    notes                     TEXT
);

INSERT INTO interstellar_mission_log VALUES (1, 'AlphaVoyage', '2035-04-12', '2037-09-03', 101, 12, 'Completed', 'Xenon', 'Antimatter', 8500.5, 1250.75, 34000.0, 2001, 'Ka', 1, 4, 12.3, 68.4, 904, 'First successful crewed mission to Xenon');
INSERT INTO interstellar_mission_log VALUES (2, 'BetaSurvey', '2038-01-20', '2040-06-15', 102, 8, 'Aborted', 'Orion', 'Fusion', 7200.0, 980.2, 21000.0, 2003, 'X', 0, 2, 9.8, 45.1, 877, 'Mission aborted due to engine fault');
INSERT INTO interstellar_mission_log VALUES (3, 'GammaProbe', '2041-07-05', '2044-02-27', 103, 5, 'Completed', 'Erebus', 'SolarSail', 3100.7, 620.5, 15000.0, 2005, 'Ka', 1, 1, 7.2, 32.0, 1050, 'Collected deep‑space plasma data');

-- Quantum Lab Experiment
CREATE TABLE quantum_lab_experiment
(
    experiment_id          INTEGER NOT NULL PRIMARY KEY,
    experiment_name        TEXT,
    start_date             DATE,
    end_date               DATE,
    researcher_id          INTEGER,
    lab_section            TEXT,
    qubit_count            INTEGER,
    temperature_mK         REAL,
    voltage_mv             REAL,
    result_summary         TEXT,
    error_rate_percent     REAL,
    publication_doi        TEXT,
    funding_agency         TEXT,
    budget_usd             REAL,
    equipment_list         TEXT,
    safety_review_passed   BOOLEAN,
    data_path              TEXT,
    replication_attempts   INTEGER,
    peer_review_score      INTEGER,
    notes                  TEXT
);

INSERT INTO quantum_lab_experiment VALUES (101, 'EntangleTest', '2030-03-01', '2030-03-15', 3001, 'CryoLab', 56, 15.2, 1.8, 'High fidelity entanglement achieved', 0.32, '10.1234/qle.2023.001', 'NSF', 250000, 'DilutionRefrigerator;MicrowaveSource', 1, '/data/entangle/', 3, 9, 'Baseline for future scaling');
INSERT INTO quantum_lab_experiment VALUES (102, 'QubitDecayStudy', '2031-06-10', '2031-07-05', 3002, 'PhotonicsLab', 32, 20.5, 2.3, 'Measured decay times under varied pressure', 1.14, '10.5678/qle.2023.014', 'DOE', 180000, 'OpticalCavity;PhotonDetectors', 1, '/data/decay/', 2, 8, 'Data used for error mitigation algorithms');
INSERT INTO quantum_lab_experiment VALUES (103, 'TopologicalQubitDemo', '2032-11-20', '2033-01-02', 3003, 'MaterialsLab', 8, 12.0, 0.9, 'Demonstrated braiding of Majorana modes', 0.05, '10.9012/qle.2024.027', 'DARPA', 320000, 'NanowireArray;RFReadout', 1, '/data/topological/', 1, 10, 'Promising route for fault‑tolerant qubits');

-- Nanotech Manufacturing Batch
CREATE TABLE nanotech_manufacturing_batch
(
    batch_id                 INTEGER NOT NULL PRIMARY KEY,
    product_name             TEXT,
    batch_number             TEXT,
    start_date               DATE,
    end_date                 DATE,
    facility_id              INTEGER,
    operator_id              INTEGER,
    nanomaterial_type        TEXT,
    particle_size_nm         REAL,
    concentration_mg_per_ml  REAL,
    yield_percent            REAL,
    defect_rate_percent      REAL,
    batch_volume_liters      REAL,
    quality_grade            TEXT,
    certification_body       TEXT,
    shipping_date            DATE,
    destination_customer     TEXT,
    cost_per_unit_usd        REAL,
    total_units              INTEGER,
    notes                    TEXT
);

INSERT INTO nanotech_manufacturing_batch VALUES (5001, 'NanoSeal', 'NS-2023-07', '2023-07-01', '2023-07-05', 401, 601, 'Silica', 45.3, 12.5, 92.7, 1.3, 1500.0, 'A', 'ISO9001', '2023-07-10', 'AeroTech', 3.45, 43000, 'Used in aerospace sealing');
INSERT INTO nanotech_manufacturing_batch VALUES (5002, 'QuantumDot', 'QD-2024-02', '2024-02-12', '2024-02-18', 402, 602, 'CdSe', 5.8, 8.9, 88.2, 2.7, 800.0, 'B', 'ASTM', '2024-02-22', 'DisplayCorp', 12.30, 12000, 'High‑efficiency display applications');
INSERT INTO nanotech_manufacturing_batch VALUES (5003, 'BioNanoGel', 'BG-2024-11', '2024-11-03', '2024-11-09', 403, 603, 'Alginate', 120.0, 5.2, 95.1, 0.8, 2000.0, 'A', 'ISO13485', '2024-11-15', 'MedLife', 1.80, 75000, 'Medical wound‑care product');

-- Galactic Trade Route Usage
CREATE TABLE galactic_trade_route_usage
(
    usage_id                INTEGER NOT NULL PRIMARY KEY,
    route_id                INTEGER,
    year                    INTEGER,
    total_volume_mt         REAL,
    number_of_shipments    INTEGER,
    average_shipment_size_t REAL,
    dominant_commodity      TEXT,
    tariff_rate_percent     REAL,
    insurance_cost_usd      REAL,
    incidents_reported     INTEGER,
    average_transit_days    REAL,
    fuel_consumption_mt     REAL,
    emissions_co2_mt        REAL,
    regulatory_compliance_score INTEGER,
    partner_alliance        TEXT,
    last_updated            DATE,
    notes                  TEXT,
    reserved_field1         TEXT,
    reserved_field2         TEXT,
    reserved_field3         TEXT
);

INSERT INTO galactic_trade_route_usage VALUES (8001, 701, 2035, 12500.5, 340, 36.8, 'TitaniumAlloy', 4.5, 750000, 2, 18.2, 4200.0, 3500.0, 92, 'CoreAlliance', '2035-12-31', 'Steady growth in alloy trade', NULL, NULL, NULL);
INSERT INTO galactic_trade_route_usage VALUES (8002, 702, 2036, 9800.0, 270, 28.4, 'RareSpice', 6.2, 620000, 1, 22.5, 3100.0, 2600.0, 88, 'SpiceCartel', '2036-12-31', 'Increased demand from eastern markets', NULL, NULL, NULL);
INSERT INTO galactic_trade_route_usage VALUES (8003, 703, 2037, 14320.7, 410, 40.2, 'QuantumProcessors', 8.0, 1150000, 3, 15.9, 5600.0, 4200.0, 95, 'TechConsortium', '2037-12-31', 'Tech boom driving processor shipments', NULL, NULL, NULL);

-- Alien Species Habitat Profile
CREATE TABLE alien_species_habitat_profile
(
    habitat_id               INTEGER NOT NULL PRIMARY KEY,
    species_id               INTEGER,
    planet_name              TEXT,
    region_name              TEXT,
    habitat_type             TEXT,
    average_temperature_c    REAL,
    atmospheric_composition  TEXT,
    gravity_g                REAL,
    dominant_flora           TEXT,
    dominant_fauna           TEXT,
    population_estimate      BIGINT,
    discovery_date           DATE,
    research_institution     TEXT,
    protection_status        TEXT,
    biosphere_index          REAL,
    notes                    TEXT,
    field_extra_1            TEXT,
    field_extra_2            TEXT,
    field_extra_3            TEXT,
    field_extra_4            TEXT
);

INSERT INTO alien_species_habitat_profile VALUES (9001, 11001, 'Gorath', 'Northern Ridge', 'TemperateForest', 22.5, 'N2O2', 1.12, 'Silvaflora', 'GorathianStag', 850000, '2150-04-18', 'XenoBiologyInstitute', 'Protected', 78.4, 'Seasonal migration observed', NULL, NULL, NULL, NULL);
INSERT INTO alien_species_habitat_profile VALUES (9002, 11002, 'Xelara', 'Crystal Basin', 'AridDesert', -5.3, 'CO2', 0.87, 'CrystalCactus', 'XelaranLizard', 42000, '2152-09-03', 'PlanetaryEcologyCenter', 'Endangered', 45.2, 'Extreme temperature swings', NULL, NULL, NULL, NULL);
INSERT INTO alien_species_habitat_profile VALUES (9003, 11003, 'Mirell', 'Swamp Delta', 'FreshwaterSwamp', 30.0, 'O2N2', 1.03, 'MirellaLeaf', 'MirellianFrog', 1320000, '2155-01-21', 'InterstellarLifeLab', 'LeastConcern', 85.9, 'High biodiversity hotspot', NULL, NULL, NULL, NULL);

-- Cybernetic Implant Registry
CREATE TABLE cybernetic_implant_registry
(
    implant_id               INTEGER NOT NULL PRIMARY KEY,
    implant_name             TEXT,
    model_number             TEXT,
    manufacturer             TEXT,
    implant_type             TEXT,
    approval_status          TEXT,
    surgical_procedure_code  TEXT,
    average_lifespan_years   REAL,
    risk_level               TEXT,
    implantation_rate_per_10k REAL,
    regulatory_body          TEXT,
    certification_date       DATE,
    warranty_years           INTEGER,
    maintenance_interval_months INTEGER,
    software_version         TEXT,
    compatibility_notes      TEXT,
    cost_usd                 REAL,
    notes                    TEXT,
    extra_field1             TEXT,
    extra_field2             TEXT
);

INSERT INTO cybernetic_implant_registry VALUES (12001, 'NeuroLink', 'NL-3000', 'NeuroTech', 'NeuralInterface', 'Approved', 'SPC-45', 12.5, 'Medium', 3.2, 'HealthAuthority', '2120-06-15', 5, 12, 'v2.1.4', 'Compatible with OS-Alpha', 8500.0, 'Used for cognitive enhancement', NULL, NULL);
INSERT INTO cybernetic_implant_registry VALUES (12002, 'OptiEye', 'OE-150', 'VisionCorp', 'OcularEnhancement', 'Pending', 'SPC-12', 8.0, 'Low', 1.8, 'MedicalBoard', '2122-03-08', 3, 6, 'v1.0.0', 'Requires proprietary lens', 4200.0, 'Improves low‑light vision', NULL, NULL);
INSERT INTO cybernetic_implant_registry VALUES (12003, 'TitanArm', 'TA-900', 'Biomech Industries', 'LimbProsthetic', 'Approved', 'SPC-78', 15.0, 'High', 5.5, 'RegulatoryCommission', '2118-11-22', 7, 24, 'v3.3.2', 'Integrates with muscular system', 12000.0, 'Heavy‑duty construction use', NULL, NULL);

-- Renewable Energy Farm Log
CREATE TABLE renewable_energy_farm_log
(
    farm_id                  INTEGER NOT NULL PRIMARY KEY,
    farm_name                TEXT,
    location                TEXT,
    energy_type             TEXT,
    capacity_mw             REAL,
    operational_since       DATE,
    average_output_mw       REAL,
    downtime_hours_year     REAL,
    maintenance_cycle_months INTEGER,
    grid_connection_point   TEXT,
    operator_company        TEXT,
    subsidy_amount_usd      REAL,
    carbon_offset_tonnes    REAL,
    annual_revenue_usd      REAL,
    environmental_impact_score INTEGER,
    notes                   TEXT,
    extra1                  TEXT,
    extra2                  TEXT,
    extra3                  TEXT,
    extra4                  TEXT
);

INSERT INTO renewable_energy_farm_log VALUES (13001, 'SolarisNorth', 'DesertRegionA', 'Solar', 250.0, '2030-05-01', 230.5, 45.2, 6, 'GridNode-12', 'SunPower Ltd', 15000000, 8200.0, 32000000, 88, 'Peak production during summer', NULL, NULL, NULL, NULL);
INSERT INTO renewable_energy_farm_log VALUES (13002, 'WindHarbor', 'CoastalZoneB', 'Wind', 180.0, '2032-09-15', 165.3, 38.7, 8, 'GridNode-22', 'BreezeCorp', 12000000, 6200.0, 25000000, 85, 'Recently upgraded turbine blades', NULL, NULL, NULL, NULL);
INSERT INTO renewable_energy_farm_log VALUES (13003, 'HydroCascade', 'RiverValleyC', 'Hydro', 95.0, '2035-01-20', 92.1, 12.5, 12, 'GridNode-05', 'AquaEnergy', 8000000, 4500.0, 18000000, 90, 'Low environmental disruption', NULL, NULL, NULL, NULL);

-- Virtual Collectible Marketplace Transaction
CREATE TABLE virtual_collectible_marketplace_transaction
(
    transaction_id            INTEGER NOT NULL PRIMARY KEY,
    marketplace_id           INTEGER,
    item_id                  INTEGER,
    buyer_user_id            INTEGER,
    seller_user_id           INTEGER,
    transaction_timestamp    DATETIME,
    price_usd                REAL,
    currency                 TEXT,
    blockchain_tx_hash       TEXT,
    settlement_status        TEXT,
    fee_percent              REAL,
    item_condition           TEXT,
    delivery_method          TEXT,
    warranty_period_days     INTEGER,
    dispute_flag             BOOLEAN,
    notes                    TEXT,
    extra_a                  TEXT,
    extra_b                  TEXT,
    extra_c                  TEXT,
    extra_d                  TEXT
);

INSERT INTO virtual_collectible_marketplace_transaction VALUES (21001, 301, 50001, 9001, 8002, '2036-04-12 15:30:00', 150.75, 'USD', 'TXHASH123ABC', 'Settled', 2.5, 'Mint', 'InstantTransfer', 0, 0, 'First sale of limited edition avatar', NULL, NULL, NULL, NULL);
INSERT INTO virtual_collectible_marketplace_transaction VALUES (21002, 301, 50002, 9003, 8004, '2036-05-03 09:12:00', 75.00, 'USD', 'TXHASH456DEF', 'Pending', 2.0, 'NearMint', 'Escrow', 30, 0, 'Buyer requested escrow verification', NULL, NULL, NULL, NULL);
INSERT INTO virtual_collectible_marketplace_transaction VALUES (21003, 302, 50003, 9005, 8006, '2036-06-21 20:45:00', 250.20, 'USD', 'TXHASH789GHI', 'Failed', 3.0, 'Used', 'StandardShipping', 0, 1, 'Transaction failed due to insufficient funds', NULL, NULL, NULL, NULL);

-- Meta Universe Governance Body
CREATE TABLE meta_universe_governance_body
(
    body_id                  INTEGER NOT NULL PRIMARY KEY,
    body_name                TEXT,
    jurisdiction             TEXT,
    formation_date           DATE,
    member_count             INTEGER,
    voting_system            TEXT,
    quorum_percent           REAL,
    decision_cycle_months    INTEGER,
    budget_usd               REAL,
    enforcement_mechanism    TEXT,
    official_language        TEXT,
    website_url              TEXT,
    contact_email            TEXT,
    chairperson_id           INTEGER,
    secretary_id             INTEGER,
    notes                    TEXT,
    extra_field_one          TEXT,
    extra_field_two          TEXT,
    extra_field_three        TEXT,
    extra_field_four         TEXT
);

INSERT INTO meta_universe_governance_body VALUES (31001, 'CouncilOfRealms', 'Multiversal', '2100-01-01', 125, 'Weighted', 66.0, 12, 50000000, 'Sanction', 'Intergalactic', 'http://council.realms', 'contact@council.realms', 4001, 4002, 'Oversees cross‑universe treaties', NULL, NULL, NULL, NULL);
INSERT INTO meta_universe_governance_body VALUES (31002, 'SynodOfDimensions', 'Dimensional', '2115-05-15', 78, 'Plurality', 51.5, 6, 32000000, 'Arbitration', 'Universal', 'http://synod.dim', 'info@synod.dim', 4010, 4011, 'Regulates dimensional travel protocols', NULL, NULL, NULL, NULL);
INSERT INTO meta_universe_governance_body VALUES (31003, 'AssemblyOfStars', 'Galactic', '2120-09-30', 200, 'SimpleMajority', 60.0, 24, 75000000, 'Legislation', 'GalacticStandard', 'http://assembly.stars', 'admin@assembly.stars', 4020, 4021, 'Coordinates galactic resource allocation', NULL, NULL, NULL, NULL);

-- Temporal Anomaly Report
CREATE TABLE temporal_anomaly_report
(
    report_id                INTEGER NOT NULL PRIMARY KEY,
    anomaly_id               INTEGER,
    detection_date           DATE,
    location_coordinates     TEXT,
    anomaly_type             TEXT,
    magnitude                REAL,
    duration_seconds         INTEGER,
    observed_by              TEXT,
    instrumentation          TEXT,
    data_file_path           TEXT,
    impact_assessment        TEXT,
    mitigation_steps         TEXT,
    followup_required        BOOLEAN,
    status                   TEXT,
    responsible_agency       TEXT,
    notes                    TEXT,
    extra_1                  TEXT,
    extra_2                  TEXT,
    extra_3                  TEXT,
    extra_4                  TEXT
);

INSERT INTO temporal_anomaly_report VALUES (41001, 701, '2037-02-14', 'RA-23:45:12', 'ChronoShift', 8.7, 3600, 'ChronoLabTeam', 'QuantumChronometer', '/data/anomalies/701.bin', 'Minor spacetime distortion', 'Deploy stabilization field', 0, 'Resolved', 'TemporalResearchAgency', 'Observed during routine scan', NULL, NULL, NULL, NULL);
INSERT INTO temporal_anomaly_report VALUES (41002, 702, '2038-07-03', 'DE-12:30:45', 'TimeLoop', 12.3, 7200, 'DeepSpaceProbe', 'TemporalSpectrometer', '/data/anomalies/702.bin', 'Potential feedback loop', 'Adjust probe trajectory', 1, 'Open', 'InterstellarTemporalOffice', 'Requires further modeling', NULL, NULL, NULL, NULL);
INSERT INTO temporal_anomaly_report VALUES (41003, 703, '2039-11-21', 'GA-05:22:09', 'ReverseFlux', 15.0, 5400, 'GalacticObservatory', 'ReverseFluxMeter', '/data/anomalies/703.bin', 'Significant causality inversion', 'Initiate containment protocol', 1, 'Investigating', 'ChronologyControlBoard', 'High priority anomaly', NULL, NULL, NULL, NULL);