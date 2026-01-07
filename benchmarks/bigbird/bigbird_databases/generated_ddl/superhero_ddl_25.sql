-- Galactic Trade Hub information
CREATE TABLE galactic_trade_hub
(
    id                     INTEGER PRIMARY KEY,
    hub_name               TEXT,
    system_name            TEXT,
    sector_code            TEXT,
    coordinates            TEXT,
    established_year       INTEGER,
    operational_status    TEXT,
    docking_capacity       INTEGER,
    trade_volume_daily     REAL,
    security_level         TEXT,
    governance_type       TEXT,
    head_officer_id        INTEGER,
    primary_commodities    TEXT,
    secondary_commodities  TEXT,
    logistics_partner      TEXT,
    customs_facilities     INTEGER,
    energy_supply_type     TEXT,
    maintenance_cycle_days INTEGER,
    communication_frequency TEXT,
    max_ship_size          INTEGER,
    tax_rate_percent       REAL,
    notes                  TEXT
);

INSERT INTO galactic_trade_hub VALUES (1, 'Alpha Hub', 'Sol', 'S-01', 'X:124 Y:58 Z:33', 2250, 'Active', 250, 1.5, 'High', 'Council', 101, 'Metals, Crystals', 'Food, Medicine', 'StellarFreight', 1, 'Fusion', 30, 'Radio', 5000, 2.5, 'Primary hub for solar trade');
INSERT INTO galactic_trade_hub VALUES (2, 'Beta Station', 'AlphaCentauri', 'A-03', 'X:78 Y:11 Z:90', 2295, 'Active', 180, 0.9, 'Medium', 'Cooperative', 102, 'Alloys', 'Textiles', 'QuantumLogistics', 1, 'Antimatter', 45, 'Laser', 3000, 3.0, 'Secondary hub serving alpha sector');
INSERT INTO galactic_trade_hub VALUES (3, 'Gamma Outpost', 'Proxima', 'P-07', 'X:210 Y:5 Z:12', 2320, 'UnderConstruction', 80, 0.2, 'Low', 'Private', 103, 'RareGases', 'ExoticSpices', 'NebulaTrans', 0, 'Solar', 60, 'Microwave', 1200, 4.5, 'Future trade expansion point');

-- Metahuman Genetic Profile records
CREATE TABLE metahuman_genetic_profile
(
    id                         INTEGER PRIMARY KEY,
    metahuman_name             TEXT,
    real_identity              TEXT,
    genome_sequence_id         TEXT,
    mutation_type              TEXT,
    power_gene_marker          TEXT,
    epigenetic_modifications   TEXT,
    blood_type                 TEXT,
    cellular_resilience_score  INTEGER,
    regeneration_rate_percent  REAL,
    neural_sync_level          INTEGER,
    immunity_index             INTEGER,
    metabolic_rate             REAL,
    lifespan_estimate_years    INTEGER,
    origin_planet              TEXT,
    discovery_date             TEXT,
    researcher_id              INTEGER,
    lab_location               TEXT,
    sample_storage_temp_c      REAL,
    ethical_approval_status    TEXT,
    data_access_level          TEXT,
    notes                      TEXT
);

INSERT INTO metahuman_genetic_profile VALUES (1, 'Photon', 'Laura Bright', 'GS-001', 'QuantumFlux', 'PF-Alpha', 'MethylationHigh', 'O+', 85, 150.5, 92, 78, 1.2, 150, 'Xenon', '2145-07-12', 201, 'ArcLab', -196.0, 'Approved', 'Public', 'Highly stable mutation');
INSERT INTO metahuman_genetic_profile VALUES (2, 'Tide', 'Marcus Wave', 'GS-042', 'HydroKinetic', 'HK-Beta', 'AcetylationLow', 'A-', 70, 120.0, 80, 65, 0.9, 130, 'AquaPrime', '2150-03-05', 202, 'MarinaInstitute', -180.0, 'Pending', 'Restricted', 'Complex water adaptation');
INSERT INTO metahuman_genetic_profile VALUES (3, 'Terra', 'Gina Earth', 'GS-078', 'GeoMorph', 'GM-Gamma', 'PhosphorylationMedium', 'B+', 90, 140.3, 95, 85, 1.0, 160, 'Gaia', '2155-11-20', 203, 'GeoLab', -190.0, 'Approved', 'Confidential', 'Rock-skin integration');

-- Cosmic Event Observation Log
CREATE TABLE cosmic_event_observation_log
(
    id                     INTEGER PRIMARY KEY,
    event_name             TEXT,
    event_type             TEXT,
    observation_start_date TEXT,
    observation_end_date   TEXT,
    coordinates            TEXT,
    observed_by_station    TEXT,
    instrument_used        TEXT,
    wavelength_range_nm    TEXT,
    peak_intensity_watts   REAL,
    detection_confidence   REAL,
    data_volume_gb         INTEGER,
    processed_by_scientist TEXT,
    processing_software    TEXT,
    classification_status  TEXT,
    associated_risk_level  TEXT,
    followup_action        TEXT,
    funding_source         TEXT,
    publication_status     TEXT,
    notes                  TEXT,
    reviewer_id            INTEGER,
    approval_date          TEXT
);

INSERT INTO cosmic_event_observation_log VALUES (1, 'Supernova 447', 'Supernova', '2160-05-01', '2160-05-03', 'X:412 Y:77 Z:210', 'DeepSpaceArray', 'Spectrograph-X', '400-700', 3.5e6, 0.98, 250, 'DrLuna', 'AstroProc', 'Confirmed', 'High', 'Alert Galactic Council', 'ScienceFund', 'Submitted', 'Bright Type Ia supernova', 301, '2160-05-10');
INSERT INTO cosmic_event_observation_log VALUES (2, 'GammaRay Burst GX9', 'GammaRayBurst', '2162-11-12', '2162-11-12', 'X:102 Y:330 Z:88', 'PhotonEye', 'GammaRayDetector', '10-1000', 9.1e7, 0.95, 120, 'DrKhan', 'GammaSuite', 'Pending', 'Critical', 'Initiate shield protocols', 'AstroShield', 'In Review', 'Potential threat to nearby colonies', 302, '2162-11-20');
INSERT INTO cosmic_event_observation_log VALUES (3, 'Solar Flare Alpha', 'SolarFlare', '2163-03-22', '2163-03-22', 'X:0 Y:0 Z:0', 'HelioMonitor', 'UVSensor', '100-400', 5.2e5, 0.99, 80, 'DrMira', 'SolarAnalyser', 'Confirmed', 'Medium', 'Update space weather forecast', 'SolarFund', 'Published', 'Strong flare affecting communications', 303, '2163-03-30');

-- Interstellar Marine Base details
CREATE TABLE interstellar_marine_base
(
    id                      INTEGER PRIMARY KEY,
    base_name               TEXT,
    planetary_body          TEXT,
    sector_designation      TEXT,
    latitude                REAL,
    longitude               REAL,
    establishment_year      INTEGER,
    commander_id            INTEGER,
    crew_capacity           INTEGER,
    active_mission_count    INTEGER,
    defense_rating          INTEGER,
    hangar_bays             INTEGER,
    orbital_dock_count      INTEGER,
    power_generation_type   TEXT,
    shield_strength_mg      REAL,
    water_reclamation_rate  REAL,
    food_production_tons    REAL,
    med_facilities_beds     INTEGER,
    training_simulators     INTEGER,
    communication_array_type TEXT,
    waste_processing_method TEXT,
    logistics_partner       TEXT,
    security_clearance_level TEXT,
    notes                   TEXT
);

INSERT INTO interstellar_marine_base VALUES (1, 'Aegis Prime', 'OmegaIV', 'Z-12', 45.3, -12.7, 2170, 401, 1200, 15, 85, 8, 4, 'FusionCore', 2500.5, 92.3, 45.0, 150, 20, 'QuantumRelay', 'PlasmaFiltration', 'StellarLogistics', 'TopSecret', 'Primary defense outpost');
INSERT INTO interstellar_marine_base VALUES (2, 'Sentinel Outpost', 'Delta-3', 'D-05', -23.1, 78.4, 2175, 402, 800, 8, 70, 5, 2, 'Antimatter', 1800.0, 85.0, 30.5, 80, 12, 'LaserBeacon', 'BioReactor', 'NovaSupply', 'Secret', 'Rapid response unit');
INSERT INTO interstellar_marine_base VALUES (3, 'Vanguard Station', 'Kepler-22b', 'K-22', 12.0, 33.5, 2180, 403, 950, 10, 78, 6, 3, 'SolarArray', 2100.8, 88.7, 38.2, 100, 15, 'RadioDish', 'ThermalCycling', 'GalaxyTrans', 'Confidential', 'Strategic location near trade routes');

-- Quantum Research Project registry
CREATE TABLE quantum_research_project
(
    id                        INTEGER PRIMARY KEY,
    project_code               TEXT,
    project_title              TEXT,
    lead_scientist_id          INTEGER,
    sponsoring_agency          TEXT,
    start_date                 TEXT,
    end_date                   TEXT,
    budget_million_usd         REAL,
    quantum_processor_type     TEXT,
    qubit_count                INTEGER,
    coherence_time_microseconds REAL,
    error_rate_percent         REAL,
    experimental_facility      TEXT,
    publication_target_journal TEXT,
    status                     TEXT,
    milestones_achieved        INTEGER,
    risk_assessment_level      TEXT,
    data_storage_location      TEXT,
    collaborators_count        INTEGER,
    ethical_review_passed      INTEGER,
    patents_filed              INTEGER,
    public_outreach_events     INTEGER,
    notes                      TEXT,
    reviewer_id                INTEGER,
    approval_date              TEXT
);

INSERT INTO quantum_research_project VALUES (1, 'QP-001', 'Entanglement Network Expansion', 501, 'QuantumCouncil', '2178-01-15', '2180-12-31', 45.6, 'Superconducting', 1024, 150.0, 0.02, 'QLab Alpha', 'Nature Quantum', 'Active', 3, 'Medium', 'SecuredVault', 5, 1, 2, 4, 'Phase 2 underway', 601, '2178-02-01');
INSERT INTO quantum_research_project VALUES (2, 'QP-042', 'Topological Qubit Stability', 502, 'TechFrontier', '2179-04-01', NULL, 30.2, 'Topological', 512, 200.0, 0.015, 'QLab Beta', 'Physical Review X', 'Planning', 1, 'High', 'QuantumArchive', 3, 0, 0, 2, 'Awaiting material supply', 602, NULL);
INSERT INTO quantum_research_project VALUES (3, 'QP-078', 'Quantum Cryptography Protocols', 503, 'SecureNet', '2180-06-10', NULL, 25.0, 'Photonic', 256, 120.0, 0.01, 'QLab Gamma', 'Science Advances', 'Proposed', 0, 'Low', 'CloudQuantum', 2, 0, 0, 1, 'Concept review pending', 603, NULL);

-- Ancient Artifact Citation database
CREATE TABLE ancient_artifact_citation
(
    id                         INTEGER PRIMARY KEY,
    artifact_name              TEXT,
    discovery_site             TEXT,
    discovered_by              TEXT,
    discovery_year             INTEGER,
    period_estimate            TEXT,
    material_composition       TEXT,
    dimensions_cm               TEXT,
    current_location           TEXT,
    curator_id                 INTEGER,
    preservation_status        TEXT,
    radiocarbon_date_range      TEXT,
    associated_civilization    TEXT,
    mythological_association   TEXT,
    reference_publication      TEXT,
    citation_doi               TEXT,
    catalog_number             TEXT,
    exhibition_history         TEXT,
    security_level             TEXT,
    insurance_value_usd        REAL,
    loan_status                TEXT,
    restoration_notes          TEXT,
    notes                      TEXT,
    reviewer_id                INTEGER,
    approval_date              TEXT
);

INSERT INTO ancient_artifact_citation VALUES (1, 'Celestial Scepter', 'Zyra Ruins', 'DrVox', 2155, 'Late Alpha Era', 'AlloyTitanium', '15x5x5', 'Galactic Museum', 701, 'Excellent', '2150-2170', 'Zyrian', 'Star Bindings', 'ZyraChronicles Vol1', '10.1234/zyra.2022.001', 'CA-001', 'World Expo 2160', 'High', 5000000.0, 'OnLoan', 'Minor surface wear', 'Iconic ceremonial object', 801, '2156-03-12');
INSERT INTO ancient_artifact_citation VALUES (2, 'Obsidian Mirror', 'Krell Cavern', 'Aria K', 2160, 'Mid Beta Period', 'Obsidian', '30x30', 'Krell Archive', 702, 'Good', '2158-2162', 'Krellite', 'Divination', 'Krell Relics Journal', '10.5678/krell.2023.045', 'OM-032', 'Private Collection 2165', 'Medium', 750000.0, 'InHouse', 'Polish completed 2161', 'Reflective surface used in rituals', 802, '2161-01-20');
INSERT INTO ancient_artifact_citation VALUES (3, 'Quantum Relic Chip', 'Nova Lab', 'DrSeng', 2170, 'Early Gamma Epoch', 'QuantumSilicon', '2x2x0.5', 'Nova Research Center', 703, 'Excellent', '2169-2171', 'Novan', 'Energy Storage', 'NovaTech Proceedings', '10.9101/nova.2024.077', 'QR-007', 'Exhibit at Quantum Summit 2175', 'TopSecret', 12000000.0, 'Restricted', 'No restoration needed', 'Highly stable quantum device', 803, '2170-06-05');

-- Energy Grid Substation specifications
CREATE TABLE energy_grid_substation
(
    id                       INTEGER PRIMARY KEY,
    substation_code          TEXT,
    location_name            TEXT,
    grid_zone                TEXT,
    latitude                 REAL,
    longitude                REAL,
    installed_year           INTEGER,
    transformer_capacity_mw  REAL,
    capacitor_bank_mvar      REAL,
    voltage_level_kv         REAL,
    cooling_system_type      TEXT,
    redundancy_level         INTEGER,
    remote_monitoring_enabled INTEGER,
    max_load_mw              REAL,
    average_load_mw          REAL,
    outage_history_count     INTEGER,
    maintenance_interval_days INTEGER,
    operator_contact         TEXT,
    regulatory_compliance    TEXT,
    environmental_impact_score REAL,
    renewable_integration_percent REAL,
    backup_generator_type    TEXT,
    notes                    TEXT,
    inspector_id             INTEGER,
    inspection_date          TEXT
);

INSERT INTO energy_grid_substation VALUES (1, 'SS-101', 'Helios Ridge', 'NorthSector', 34.5, -120.3, 2150, 250.0, 80.0, 220.0, 'LiquidNitrogen', 3, 1, 200.0, 150.0, 2, 180, 'OpsCenter01', 'ISO9001', 4.2, 35.0, 'Diesel', 'Main hub for solar feed', 901, '2150-05-10');
INSERT INTO energy_grid_substation VALUES (2, 'SS-202', 'Nebula Plains', 'EastSector', -12.7, 45.8, 2160, 180.0, 60.0, 110.0, 'AirCooled', 2, 1, 140.0, 100.0, 1, 200, 'OpsCenter02', 'ISO27001', 3.8, 20.0, 'Hydrogen', 'Supports wind turbines', 902, '2160-08-22');
INSERT INTO energy_grid_substation VALUES (3, 'SS-303', 'Quantum Bay', 'WestSector', 78.2, 12.4, 2175, 300.0, 100.0, 330.0, 'Cryogenic', 4, 1, 250.0, 210.0, 0, 150, 'OpsCenter03', 'ISO14001', 2.5, 50.0, 'Fusion', 'Key node for fusion grid', 903, '2175-11-15');

-- Virtual Reality Exhibit records
CREATE TABLE virtual_reality_exhibit
(
    id                      INTEGER PRIMARY KEY,
    exhibit_name            TEXT,
    theme_category          TEXT,
    launch_date             TEXT,
    developer_studio        TEXT,
    platform_supported      TEXT,
    headgear_required       INTEGER,
    average_session_minutes INTEGER,
    concurrent_user_limit   INTEGER,
    required_bandwidth_mbps REAL,
    immersive_rating        INTEGER,
    accessibility_options   TEXT,
    sponsorship_partner     TEXT,
    ticket_price_usd        REAL,
    max_sessions_per_day    INTEGER,
    promotional_video_url   TEXT,
    visitor_feedback_score  REAL,
    maintenance_window_days INTEGER,
    data_retention_years    INTEGER,
    security_protocol       TEXT,
    analytics_provider      TEXT,
    version_number          TEXT,
    notes                   TEXT,
    curator_id              INTEGER,
    last_update_date        TEXT
);

INSERT INTO virtual_reality_exhibit VALUES (1, 'ChronoQuest', 'Historical', '2179-02-14', 'TimeForge Studios', 'VRHeadsetX', 1, 45, 500, 25.0, 9, 'Subtitle,AudioDescription', 'ChronoCorp', 15.0, 200, 'http://media/chronoq', 4.7, 30, 5, 'AES256', 'VisionAnalytics', 'v2.3', 'Time-travel adventure', 1001, '2179-03-01');
INSERT INTO virtual_reality_exhibit VALUES (2, 'NebulaDive', 'ScienceFiction', '2180-06-01', 'StellarDream', 'VRHeadsetY', 1, 60, 800, 30.0, 10, 'MultiLang,SignLanguage', 'StarTech', 20.0, 250, 'http://media/nebula', 4.9, 28, 3, 'RSA2048', 'QuantumMetrics', 'v1.8', 'Deep space exploration', 1002, '2180-06-15');
INSERT INTO virtual_reality_exhibit VALUES (3, 'MythicRealms', 'Fantasy', '2181-09-10', 'LoreCraft', 'VRHeadsetZ', 1, 50, 600, 28.0, 8, 'ColorBlindMode,AudioGuide', 'EpicEnterprises', 18.0, 220, 'http://media/mythic', 4.6, 32, 4, 'TLS1.3', 'DreamAnalytics', 'v3.0', 'Interactive mythic quests', 1003, '2181-09-20');

-- Biotech Venture Funding records
CREATE TABLE biotech_venture_funding
(
    id                       INTEGER PRIMARY KEY,
    company_name             TEXT,
    round_type               TEXT,
    announcement_date        TEXT,
    lead_investor            TEXT,
    total_amount_million_usd REAL,
    pre_valuation_million_usd REAL,
    post_valuation_million_usd REAL,
    focus_area               TEXT,
    lead_scientist_id        INTEGER,
    patents_filed            INTEGER,
    clinical_phase           TEXT,
    number_of_employees      INTEGER,
    headquarters_location    TEXT,
    regulatory_status        TEXT,
    market_potential_score   REAL,
    strategic_partners       TEXT,
    funding_stage_status     TEXT,
    exit_strategy            TEXT,
    notes                    TEXT,
    analyst_id               INTEGER,
    analysis_date            TEXT,
    risk_rating              TEXT,
    investor_commitments     TEXT,
    board_members_count      INTEGER
);

INSERT INTO biotech_venture_funding VALUES (1, 'GenFlux Labs', 'SeriesA', '2175-03-21', 'VentureNova', 45.0, 120.0, 165.0, 'GeneTherapy', 601, 3, 'PhaseII', 45, 'NovaCity', 'Approved', 8.5, 'HealthCorp', 'Active', 'Acquisition', 'Promising CRISPR platform', 701, '2175-04-01', 'Medium', 'VentureNova,HealthCorp', 9);
INSERT INTO biotech_venture_funding VALUES (2, 'NanoHeal Inc', 'SeriesB', '2177-07-10', 'OmegaCapital', 78.0, 200.0, 278.0, 'Nanomedicine', 602, 5, 'PhaseIII', 80, 'OmegaPort', 'Pending', 9.2, 'MediTech', 'Active', 'IPO', 'Advanced nanobot delivery system', 702, '2177-07-20', 'Low', 'OmegaCapital,MediTech', 12);
INSERT INTO biotech_venture_funding VALUES (3, 'BioSynth Solutions', 'Seed', '2178-11-05', 'AlphaSeed', 12.5, 30.0, 42.5, 'SyntheticBiology', 603, 1, 'PreClinical', 20, 'AlphaVille', 'Approved', 7.0, 'GenBio', 'Closed', 'Strategic Partnership', 'Synthetic organ scaffolds', 703, '2178-11-15', 'High', 'AlphaSeed,GenBio', 5);

-- Multiverse Policy Agreement registry
CREATE TABLE multiverse_policy_agreement
(
    id                         INTEGER PRIMARY KEY,
    agreement_name             TEXT,
    signing_date               TEXT,
    effective_date             TEXT,
    expiration_date            TEXT,
    participating_entities     TEXT,
    governing_body             TEXT,
    scope_description          TEXT,
    enforcement_mechanism      TEXT,
    arbitration_clause         TEXT,
    confidentiality_level      TEXT,
    amendment_count            INTEGER,
    revision_history           TEXT,
    legal_representative_id    INTEGER,
    approval_status            TEXT,
    public_release_flag        INTEGER,
    digital_signature_hash     TEXT,
    version_number             TEXT,
    related_regulation_refs    TEXT,
    compliance_audit_schedule  TEXT,
    monitoring_agency          TEXT,
    dispute_resolution_process TEXT,
    notes                      TEXT,
    last_modified_by           INTEGER,
    last_modified_date         TEXT
);

INSERT INTO multiverse_policy_agreement VALUES (1, 'Interrealm Trade Accord', '2170-01-15', '2170-03-01', '2200-12-31', 'Galactic Federation;Quantum Union', 'Supreme Council', 'Standardizes trade across realms', 'Realm Enforcement Corps', 'Binding arbitration in Nexus Court', 'TopSecret', 2, 'v1.0-2024;v1.1-2026', 801, 'Ratified', 1, 'AB12CD34EF56', '1.1', 'Reg-TR-01,Reg-TR-02', 'Annual', 'Trade Oversight Agency', 'Mediation then Council vote', 'Foundation for stable commerce', 901, '2170-02-10');
INSERT INTO multiverse_policy_agreement VALUES (2, 'Cosmic Environmental Protocol', '2172-05-20', '2172-07-01', '2250-01-01', 'Star Alliance;Eco League', 'Environmental Senate', 'Protection of planetary ecosystems', 'Eco Enforcement Unit', 'Neutral arbitration panel', 'Confidential', 1, 'v1.0-2025', 802, 'Ratified', 0, 'CD78EF90AB12', '1.0', 'Reg-ENV-07', 'Biennial', 'Planetary Watch', 'Scientific review then Council decision', 'Addresses climate change across worlds', 902, '2172-06-15');
INSERT INTO multiverse_policy_agreement VALUES (3, 'Universal Data Sharing Charter', '2175-09-30', '2175-11-15', '2225-12-31', 'Data Consortium;Tech Union', 'Digital Council', 'Facilitates cross-realm data exchange', 'Cybersecurity Division', 'Arbitration by Digital Court', 'Restricted', 3, 'v1.0-2026;v1.2-2028;v1.3-2029', 803, 'Pending', 0, 'EF34AB56CD78', '1.3', 'Reg-DATA-03', 'Quarterly', 'Data Integrity Agency', 'Mediation then legal action', 'Ensures data integrity and privacy', 903, '2175-10-20');