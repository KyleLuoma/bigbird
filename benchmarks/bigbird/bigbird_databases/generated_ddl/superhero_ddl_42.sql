-- Table storing data about interstellar observation stations
CREATE TABLE interstellar_observation_station
(
    id INTEGER PRIMARY KEY,
    station_name TEXT,
    galaxy TEXT,
    star_system TEXT,
    planet TEXT,
    orbit_type TEXT,
    latitude REAL,
    longitude REAL,
    construction_year INTEGER,
    operational_status TEXT,
    staff_count INTEGER,
    research_focus TEXT,
    data_rate_gbps REAL,
    power_source TEXT,
    maintenance_cycle_days INTEGER,
    last_inspection_date DATE,
    contact_email TEXT,
    budget_million_usd REAL,
    external_partner TEXT,
    notes TEXT
);

INSERT INTO interstellar_observation_station VALUES (1, 'Alpha Prime', 'Milky Way', 'Alpha Centauri', 'Proxima B', 'Low Orbit', 12.34, -45.67, 2210, 'Active', 85, 'Exoplanet Atmospheres', 5.6, 'Fusion Reactor', 180, '2225-03-12', 'alpha@obs.org', 12.5, 'SpaceX', 'First station in system');
INSERT INTO interstellar_observation_station VALUES (2, 'Beta Outpost', 'Andromeda', 'Beta Quadrant', 'Zeta Prime', 'Geostationary', -23.45, 67.89, 2225, 'Under Construction', 0, 'Dark Matter Mapping', 0.0, 'Antimatter Core', 365, NULL, 'beta@obs.org', 20.0, 'Galactic Consortium', 'Targeted for 2230');
INSERT INTO interstellar_observation_station VALUES (3, 'Gamma Relay', 'Triangulum', 'Gamma Cluster', 'Delta IV', 'Lagrange Point', 0.0, 0.0, 2195, 'Decommissioned', 10, 'Signal Relays', 2.1, 'Solar Panels', 90, '2180-11-05', 'gamma@obs.org', 5.0, 'Null', 'Used for historic data archive');

-- Table storing data about quantum laboratory facilities
CREATE TABLE quantum_lab_facility
(
    id INTEGER PRIMARY KEY,
    facility_name TEXT,
    location_city TEXT,
    location_country TEXT,
    establishment_year INTEGER,
    operational_status TEXT,
    lead_scientist TEXT,
    primary_research_area TEXT,
    number_of_qubits INTEGER,
    max_coherence_time_us REAL,
    cryogenic_system TEXT,
    safety_certification TEXT,
    annual_budget_million_usd REAL,
    number_of_staff INTEGER,
    partnership_program TEXT,
    ipr_status TEXT,
    floor_space_sqm INTEGER,
    waste_disposal_method TEXT,
    contact_number TEXT,
    notes TEXT
);

INSERT INTO quantum_lab_facility VALUES (1, 'Quantum Nexus', 'New York', 'USA', 2105, 'Active', 'Dr Alice Monroe', 'Quantum Computing', 256, 120.5, 'Dilution Refrigerator', 'ISO27001', 15.0, 45, 'QC Alliance', 'Open', 1800, 'Hazardous Waste Facility', '+1-555-0100', 'Focus on error correction');
INSERT INTO quantum_lab_facility VALUES (2, 'Entanglement Hub', 'Tokyo', 'Japan', 2112, 'Active', 'Prof Kenji Sato', 'Quantum Communication', 512, 95.3, 'Closed Cycle Cryostat', 'ISO9001', 22.5, 60, 'Global QNet', 'Restricted', 2500, 'Recycling Plant', '+81-3-5555-0200', 'Testing satellite links');
INSERT INTO quantum_lab_facility VALUES (3, 'Photonics Lab', 'Berlin', 'Germany', 2098, 'Inactive', 'Dr Hans Keller', 'Photonic Qubits', 128, 80.0, 'Helium Cryostat', 'ISO14001', 10.0, 30, 'EU Quantum Initiative', 'Closed', 1200, 'Neutralization Unit', '+49-30-5555-0300', 'Pending refurbishment');

-- Table storing catalog of ancient relics
CREATE TABLE ancient_relic_catalog
(
    id INTEGER PRIMARY KEY,
    relic_name TEXT,
    discovery_site TEXT,
    discovery_year INTEGER,
    culture_origin TEXT,
    material TEXT,
    estimated_age_years INTEGER,
    current_location TEXT,
    custodian TEXT,
    condition_status TEXT,
    preservation_method TEXT,
    catalog_number TEXT,
    dimensions_cm TEXT,
    weight_kg REAL,
    associated_legends TEXT,
    last_exhibited DATE,
    acquisition_method TEXT,
    insurance_value_million_usd REAL,
    display_status TEXT,
    notes TEXT
);

INSERT INTO ancient_relic_catalog VALUES (1, 'Celestial Obelisk', 'Sahara Desert', 2021, 'Ancient Nomads', 'Stone', 4500, 'National Museum', 'Dr Lina Patel', 'Good', 'Climate Controlled', 'AR-001', '200x30x30', 1500.0, 'Sun Path Myth', '2022-09-15', 'Excavation', 12.0, 'On Display', 'Featured in summer exhibit');
INSERT INTO ancient_relic_catalog VALUES (2, 'Emerald Scepter', 'Mayan Ruins', 2018, 'Mayan', 'Emerald', 1200, 'World Heritage Gallery', 'Curator Marco Ruiz', 'Excellent', 'Sealed Case', 'AR-002', '45x10x10', 25.3, 'Kingdom of Light', '2020-05-20', 'Donation', 8.5, 'In Storage', 'Requires restoration of base');
INSERT INTO ancient_relic_catalog VALUES (3, 'Bronze Sphinx', 'River Valley', 2015, 'Bronze Age', 'Bronze', 3000, 'Archaeology Institute', 'Prof Anil Mehta', 'Fair', 'Oil Treatment', 'AR-003', '150x80x60', 500.0, 'Guardian of the River', NULL, 'Acquisition', 5.0, 'In Lab', 'Pending digital scan');

-- Table storing metahuman psychic profiles
CREATE TABLE metahuman_psychic_profile
(
    id INTEGER PRIMARY KEY,
    metahuman_id INTEGER,
    telepathy_level INTEGER,
    precognition_score INTEGER,
    psychokinesis_rating INTEGER,
    empathic_index INTEGER,
    aura_visibility TEXT,
    mind_shield_strength INTEGER,
    dominant_psychic_trait TEXT,
    training_program TEXT,
    assessment_date DATE,
    assessor_name TEXT,
    notes TEXT,
    last_update DATE,
    risk_classification TEXT,
    control_mechanism TEXT,
    ethical_approval_code TEXT,
    secret_level INTEGER,
    archival_reference TEXT,
    status TEXT
);

INSERT INTO metahuman_psychic_profile VALUES (1, 101, 8, 7, 6, 9, 'Visible', 85, 'Telepathy', 'Mind Academy', '2024-02-10', 'Dr Eva Sol', 'High potential', '2024-02-10', 'Level A', 'Neural Dampener', 'EA-2023-07', 3, 'MP-001', 'Active');
INSERT INTO metahuman_psychic_profile VALUES (2, 102, 5, 9, 4, 6, 'Faint', 70, 'Precognition', 'FutureSight Program', '2023-11-05', 'Dr Omar Lee', 'Precognitive spikes', '2023-11-05', 'Level B', 'Temporal Anchor', 'EA-2022-11', 2, 'MP-002', 'Active');
INSERT INTO metahuman_psychic_profile VALUES (3, 103, 3, 4, 9, 5, 'Invisible', 60, 'Psychokinesis', 'Force Manipulation Unit', '2023-07-22', 'Dr Nina Patel', 'Strong psychokinetic field', '2023-07-22', 'Level C', 'Magnetic Shield', 'EA-2021-05', 1, 'MP-003', 'Pending Review');

-- Table storing interdimensional trade ports
CREATE TABLE interdimensional_trade_port
(
    id INTEGER PRIMARY KEY,
    port_name TEXT,
    primary_dimension TEXT,
    connected_dimensions TEXT,
    location_coordinates TEXT,
    established_year INTEGER,
    governing_body TEXT,
    trade_volume_million_units REAL,
    dominant_commodity TEXT,
    customs_protocol TEXT,
    security_level INTEGER,
    staff_capacity INTEGER,
    docking_bays INTEGER,
    energy_source TEXT,
    maintenance_cycle_days INTEGER,
    contact_frequency_mhz REAL,
    regulatory_compliance TEXT,
    last_audit_date DATE,
    notes TEXT,
    status TEXT
);

INSERT INTO interdimensional_trade_port VALUES (1, 'Arcadia Gate', 'Dimension X', 'Dimension Y;Dimension Z', '12.34, -56.78', 2150, 'Arcadia Council', 340.5, 'Quantum Crystals', 'Standard', 5, 120, 8, 'Zero Point Energy', 365, 1450.5, 'ISO9001', '2155-04-01', 'Key hub for crystal trade', 'Operational');
INSERT INTO interdimensional_trade_port VALUES (2, 'Nexus Bridge', 'Dimension A', 'Dimension B', '0.00, 0.00', 2200, 'Nexus Authority', 210.0, 'Temporal Artifacts', 'Enhanced', 7, 80, 5, 'Fusion Core', 180, 980.2, 'ISO14001', '2205-09-15', 'Under expansion', 'Operational');
INSERT INTO interdimensional_trade_port VALUES (3, 'Portal Hub', 'Dimension M', 'Dimension N;Dimension O', '-23.45, 67.89', 2185, 'Portal Federation', 150.75, 'Energy Cells', 'Restricted', 9, 60, 3, 'Antimatter Reactor', 730, 1220.0, 'ISO27001', '2190-01-20', 'Awaiting security upgrade', 'Maintenance');

-- Table storing cosmic energy conservation projects
CREATE TABLE cosmic_energy_conservation_project
(
    id INTEGER PRIMARY KEY,
    project_name TEXT,
    initiating_agency TEXT,
    start_year INTEGER,
    end_year INTEGER,
    target_reduction_percentage REAL,
    primary_energy_source TEXT,
    secondary_energy_source TEXT,
    budget_million_usd REAL,
    lead_scientist TEXT,
    status TEXT,
    milestones TEXT,
    total_energy_saved_terajoules REAL,
    geographic_scope TEXT,
    regulatory_framework TEXT,
    public_outreach_program TEXT,
    audit_cycle_years INTEGER,
    last_audit_date DATE,
    notes TEXT,
    compliance_status TEXT
);

INSERT INTO cosmic_energy_conservation_project VALUES (1, 'Starlight Saver', 'Galactic Energy Agency', 2120, 2130, 15.5, 'Solar', 'Wind', 45.0, 'Dr Maya Solis', 'In Progress', 'Phase1 Completed; Phase2 Ongoing', 1200.5, 'Milky Way Core', 'Interstellar Accord', 'School Tours', 2, '2125-06-30', 'Focus on orbital stations', 'Compliant');
INSERT INTO cosmic_energy_conservation_project VALUES (2, 'Quantum Pulse Reducer', 'Quantum Union', 2135, 2145, 22.0, 'Fusion', 'Geothermal', 60.0, 'Prof Ethan Quark', 'Planned', 'Design Phase', 0.0, 'Andromeda Sector', 'Quantum Energy Treaty', 'Webinars', 1, NULL, 'Awaiting funding', 'Pending');
INSERT INTO cosmic_energy_conservation_project VALUES (3, 'Nebula Harvest Optimizer', 'Nebula Council', 2105, 2115, 10.0, 'Nebular Gas', 'Dark Matter', 30.0, 'Dr Lian Zhou', 'Completed', 'All Milestones Achieved', 850.3, 'Triangulum Nebula', 'Nebula Conservation Charter', 'Documentary Series', 3, '2115-12-12', 'Exceeded targets', 'Compliant');

-- Table storing alien biome surveys
CREATE TABLE alien_biome_survey
(
    id INTEGER PRIMARY KEY,
    survey_name TEXT,
    planet_name TEXT,
    biome_type TEXT,
    discovery_date DATE,
    lead_biologist TEXT,
    species_count INTEGER,
    endemic_species INTEGER,
    dominant_vegetation TEXT,
    average_temperature_c REAL,
    atmospheric_composition TEXT,
    water_presence TEXT,
    soil_type TEXT,
    survey_duration_days INTEGER,
    gps_center_point TEXT,
    equipment_used TEXT,
    funding_million_usd REAL,
    data_repository_url TEXT,
    findings_summary TEXT,
    status TEXT
);

INSERT INTO alien_biome_survey VALUES (1, 'Verdant Expanse Survey', 'Xenara', 'Tropical Jungle', '2222-04-15', 'Dr Aria Nova', 342, 215, 'Luminescent Ferns', 28.5, 'N2:78;O2:20;Ar:2', 'Liquid', 'Silicate', 180, '34.56,-12.34', 'Lidar, BioScanner', 12.0, 'http://data.universe/verdant', 'High biodiversity, new pigments', 'Completed');
INSERT INTO alien_biome_survey VALUES (2, 'Arid Plains Assessment', 'Gorath', 'Desert', '2215-09-03', 'Prof Milo Sands', 78, 10, 'Stone Shrubs', 45.2, 'CO2:95;N2:3;Ar:2', 'None', 'Regolith', 90, '-45.67, 89.01', 'Spectral Analyzer', 8.5, 'http://data.universe/arid', 'Extreme heat tolerance observed', 'Completed');
INSERT INTO alien_biome_survey VALUES (3, 'Cryo Basin Exploration', 'Frosthelm', 'Glacial', '2230-01-20', 'Dr Selene Frost', 120, 45, 'Ice Moss', -12.3, 'O2:30;N2:68;CH4:2', 'Subsurface Ice', 'Ice Crystals', 210, '12.34, -56.78', 'Thermal Drone', 15.0, 'http://data.universe/cryo', 'Potential water reservoirs', 'Ongoing');

-- Table storing nanotech component stock
CREATE TABLE nanotech_component_stock
(
    component_id INTEGER PRIMARY KEY,
    component_name TEXT,
    manufacturer TEXT,
    production_batch TEXT,
    lot_number TEXT,
    quantity_available INTEGER,
    unit_size_nm REAL,
    material_composition TEXT,
    purity_percentage REAL,
    storage_temperature_c REAL,
    storage_location TEXT,
    hazard_class TEXT,
    last_quality_check DATE,
    next_reorder_point INTEGER,
    supplier_contact TEXT,
    cost_per_unit_usd REAL,
    total_value_usd REAL,
    regulatory_status TEXT,
    notes TEXT,
    status TEXT
);

INSERT INTO nanotech_component_stock VALUES (1, 'Carbon Nanotube', 'NanoFab Inc', 'B2025', 'L-001', 25000, 5.0, 'Carbon', 99.8, -150.0, 'Vault A1', 'Non Hazardous', '2024-02-01', 5000, 'contact@nanofab.com', 0.12, 3000.0, 'Approved', 'Standard grade', 'In Stock');
INSERT INTO nanotech_component_stock VALUES (2, 'Quantum Dot', 'QDot Labs', 'Q2024', 'L-045', 12000, 2.5, 'CdSe', 98.5, -80.0, 'Vault B3', 'Hazardous', '2023-12-15', 3000, 'info@qdotlabs.com', 0.45, 5400.0, 'Approved', 'High luminescence', 'In Stock');
INSERT INTO nanotech_component_stock VALUES (3, 'Graphene Sheet', 'GrapheneWorks', 'G2023', 'L-078', 8000, 0.5, 'Carbon', 99.9, -120.0, 'Vault C2', 'Non Hazardous', '2024-01-10', 2000, 'sales@grapheneworks.com', 0.30, 2400.0, 'Pending', 'Monolayer', 'In Stock');

-- Table storing universal law repository
CREATE TABLE universal_law_repository
(
    law_id INTEGER PRIMARY KEY,
    law_name TEXT,
    jurisdiction TEXT,
    effective_date DATE,
    amendment_number INTEGER,
    status TEXT,
    summary TEXT,
    full_text_url TEXT,
    responsible_body TEXT,
    last_review_date DATE,
    next_review_due DATE,
    citation TEXT,
    related_cases TEXT,
    enforcement_mechanism TEXT,
    penalty_structure TEXT,
    public_access_level TEXT,
    archive_location TEXT,
    notes TEXT,
    version_number INTEGER,
    compliance_required TEXT
);

INSERT INTO universal_law_repository VALUES (1, 'Interstellar Trade Act', 'Galactic Union', '2100-01-01', 3, 'Active', 'Regulates trade between star systems', 'http://laws.universe/tradeact', 'Trade Committee', '2120-06-30', '2125-06-30', 'UT-TRA-001', 'CaseA;CaseB', 'Customs Inspection', 'Fines up to 5% of cargo value', 'Public', 'Archive Hall 3', 'Amended to include quantum goods', 4, 'Mandatory');
INSERT INTO universal_law_repository VALUES (2, 'Cosmic Energy Conservation Statute', 'Solar Council', '2150-05-15', 1, 'Active', 'Mandates reduction of energy waste', 'http://laws.universe/energystat', 'Energy Oversight Board', '2170-03-10', '2175-03-10', 'CECS-2025', 'CaseC', 'Energy Audits', 'Penalties up to 10% revenue', 'Restricted', 'Archive Hall 5', 'Recent amendments pending', 2, 'Mandatory');
INSERT INTO universal_law_repository VALUES (3, 'Dimensional Travel Accord', 'Multiverse Assembly', '2200-09-01', 0, 'Proposed', 'Sets guidelines for interdimensional travel', 'http://laws.universe/dimtravel', 'Travel Committee', NULL, NULL, 'DTA-2200', '', 'Portal Inspections', 'Suspension of travel rights', 'Confidential', 'Archive Hall 7', 'Awaiting ratification', 1, 'Optional');

-- Table storing superhero fan app usage statistics
CREATE TABLE superhero_fan_app_usage
(
    usage_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    app_version TEXT,
    device_type TEXT,
    os_version TEXT,
    session_start TIMESTAMP,
    session_end TIMESTAMP,
    pages_viewed INTEGER,
    features_used TEXT,
    average_scroll_depth REAL,
    in_app_purchases INTEGER,
    purchase_amount_usd REAL,
    last_login DATE,
    subscription_status TEXT,
    push_notifications_enabled TEXT,
    timezone TEXT,
    region TEXT,
    language TEXT,
    feedback_score INTEGER,
    notes TEXT
);

INSERT INTO superhero_fan_app_usage VALUES (1, 1001, '3.2.1', 'Smartphone', 'iOS14', '2024-02-10 08:15:00', '2024-02-10 09:00:00', 12, 'News;Quiz;ARFilter', 45.3, 2, 9.99, '2024-02-09', 'Premium', 'Yes', 'UTC-5', 'North America', 'English', 8, 'Active user');
INSERT INTO superhero_fan_app_usage VALUES (2, 1002, '3.2.1', 'Tablet', 'Android11', '2024-02-11 14:20:00', '2024-02-11 15:05:00', 8, 'LiveStream;Forum', 30.1, 0, 0.0, '2024-02-10', 'Free', 'No', 'UTC+1', 'Europe', 'German', 7, 'Occasional user');
INSERT INTO superhero_fan_app_usage VALUES (3, 1003, '3.1.9', 'Smartphone', 'iOS13', '2024-02-12 20:45:00', '2024-02-12 21:30:00', 15, 'News;ARFilter;MerchStore', 60.0, 1, 4.99, '2024-02-12', 'Free', 'Yes', 'UTC+9', 'Asia', 'Japanese', 9, 'Highly engaged');