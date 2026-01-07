-- Planetary weather station data
CREATE TABLE planetary_weather_station (
    id INTEGER NOT NULL PRIMARY KEY,
    station_name TEXT,
    planet_name TEXT,
    latitude REAL,
    longitude REAL,
    elevation_m INTEGER,
    operator_agency TEXT,
    installation_date DATE,
    last_maintenance DATE,
    sensor_count INTEGER,
    temperature_sensor_type TEXT,
    pressure_sensor_type TEXT,
    humidity_sensor_type TEXT,
    wind_speed_sensor_type TEXT,
    data_transmission_rate_mbps REAL,
    power_source TEXT,
    status TEXT,
    notes TEXT,
    contact_email TEXT,
    network_id INTEGER,
    firmware_version TEXT,
    operational_since DATE
);

INSERT INTO planetary_weather_station VALUES (1,'Artemis Station','Mars',-4.5,137.4,2100,'SpaceWeather Agency','2035-06-12','2040-01-15',12,'Thermocouple','Piezoelectric','Capacitive','Anemometer',15.2,'Solar','Active','Primary research site','contact@spaceweather.org',101,'v3.4.1','2035-06-12');
INSERT INTO planetary_weather_station VALUES (2,'Helios Dome','Venus',-2.3,45.7,5,'Interplanetary Climate Org','2038-09-20','2041-03-02',10,'RTD','StrainGauge','Resistive','LaserDoppler',12.8,'Nuclear','Active','High temperature environment','info@heliosdome.com',102,'v3.4.1','2038-09-20');
INSERT INTO planetary_weather_station VALUES (3,'Gaia Outpost','Earth',34.05,-118.25,305,'National Weather Service','2025-04-01','2029-11-30',15,'Thermistor','Barometer','Hygrometer','CupAnemometer',20.5,'Wind','Active','Coastal monitoring','support@gaiaoutpost.gov',103,'v3.4.1','2025-04-01');

-- Quantum computing cluster information
CREATE TABLE quantum_computing_cluster (
    id INTEGER NOT NULL PRIMARY KEY,
    cluster_name TEXT,
    location TEXT,
    total_qubits INTEGER,
    quantum_volume INTEGER,
    cooling_system_type TEXT,
    power_consumption_kw REAL,
    vendor TEXT,
    installation_year INTEGER,
    maintenance_contract TEXT,
    firmware_version TEXT,
    status TEXT,
    node_count INTEGER,
    network_bandwidth_gbps REAL,
    secure_zone INTEGER,
    manager_name TEXT,
    contact_number TEXT,
    sla_level TEXT,
    last_audit_date DATE,
    notes TEXT,
    uptime_percent REAL,
    data_center_id INTEGER
);

INSERT INTO quantum_computing_cluster VALUES (1,'QubitX-Alpha','Luna Research Facility',1280,2500,'Dilution Refrigerator',350.5,'QuantaCorp',2039,'Q-Guard','v2.1.0','Online',12,100.0,1,'Dr Elena Voss','555-0101','Gold','2040-02-15','First generation cluster',99.7,201);
INSERT INTO quantum_computing_cluster VALUES (2,'QubitX-Beta','Mars Base Delta',1024,2300,'Cryogenic Helium',300.0,'QuantumLeap',2041,'Q-Guard','v2.1.1','Online',10,95.5,1,'Dr Marco Liu','555-0102','Platinum','2042-03-10','Upgraded control firmware',99.9,202);
INSERT INTO quantum_computing_cluster VALUES (3,'QubitX-Gamma','Orbital Platform Z',512,1800,'Cryocooler',200.0,'EntangleTech',2043,'Q-Guard','v2.2.0','Testing',8,80.0,0,'Dr Aisha Patel','555-0103','Silver','2044-01-20','Pilot testing phase',98.4,203);

-- Biotech clinical trial registry
CREATE TABLE biotech_clinical_trial (
    id INTEGER NOT NULL PRIMARY KEY,
    trial_name TEXT,
    phase TEXT,
    therapeutic_area TEXT,
    sponsor TEXT,
    lead_investigator TEXT,
    start_date DATE,
    end_date DATE,
    status TEXT,
    enrollment_target INTEGER,
    enrollment_current INTEGER,
    inclusion_criteria TEXT,
    exclusion_criteria TEXT,
    primary_endpoint TEXT,
    secondary_endpoint TEXT,
    location TEXT,
    regulatory_approval TEXT,
    data_sharing_policy TEXT,
    funding_amount_usd REAL,
    contact_email TEXT,
    protocol_version TEXT,
    adverse_event_count INTEGER
);

INSERT INTO biotech_clinical_trial VALUES (1,'NeuroReg-2025','Phase II','Neurodegeneration','NeuroHealth Inc.','Dr Sofia Martinez','2025-05-01','2027-04-30','Recruiting',200,45,'Age 30-65 with early symptoms','History of stroke','Cognitive score improvement','MRI biomarkers','Geneva Clinical Center','Approved','Open','12.5M','neuroreg@nhinc.com','v1.0',3);
INSERT INTO biotech_clinical_trial VALUES (2,'OncoVax-2026','Phase I','Oncology','OncoVax Ltd.','Dr Kenji Tanaka','2026-01-15','2028-12-31','Not yet recruiting',120,0,'Confirmed malignant tumor','Pregnancy','Tumor size reduction','Safety profile','Tokyo Oncology Hospital','Pending','Closed','5.0M','info@oncovax.jp','v1.0',0);
INSERT INTO biotech_clinical_trial VALUES (3,'CardioLift-2024','Phase III','Cardiology','CardioLife','Dr Linda Ochoa','2024-03-10','2026-09-15','Active',500,320,'LVEF <40%','Recent MI','Mortality reduction','Quality of life score','Chicago Heart Institute','Approved','Open','20.0M','contact@cardiolife.org','v2.1',12);

-- Interstellar trade route catalog
CREATE TABLE interstellar_trade_route (
    id INTEGER NOT NULL PRIMARY KEY,
    route_name TEXT,
    origin_system TEXT,
    destination_system TEXT,
    distance_lightyears REAL,
    typical_cargo_type TEXT,
    regulation_body TEXT,
    fee_per_ton_usd REAL,
    security_level TEXT,
    established_year INTEGER,
    last_inspection DATE,
    active INTEGER,
    max_ship_size_meters REAL,
    average_transit_time_days REAL,
    route_status TEXT,
    notes TEXT,
    traffic_volume_tons_per_year REAL,
    insurance_provider TEXT,
    customs_handling TEXT,
    route_manager TEXT,
    last_update DATE,
    route_rating INTEGER,
    extra_field TEXT
);

INSERT INTO interstellar_trade_route VALUES (1,'Silk Road Alpha','Alpha Centauri','Sirius','4.3','Minerals','Galactic Trade Authority','1500','High',2120,'2145-06-01',1,300.5,12.4,'Operational','No incidents',85000,'Interstellar Insure Ltd.','Automated','Ms Yara Kline','2146-01-15',9,'');
INSERT INTO interstellar_trade_route VALUES (2,'Nebula Corridor','Proxima','Vega','12.7','Pharma Supplies','Interstellar Commerce Council','2500','Medium',2155,'2160-09-12',1,250.0,20.1,'Operational','Minor piracy reports',62000,'Galactic Secure','Standard','Mr Dax Orin','2161-03-22',8,'');
INSERT INTO interstellar_trade_route VALUES (3,'Quantum Loop','Betelgeuse','Rigel','7.9','Tech Components','Unified Trade Union','2000','Low',2180,'2185-11-08',0,180.2,15.0,'Suspended','Under review for safety',0,'','N/A','Dr Selene Vale','2186-02-05',0,'');

-- Cosmic artifact exhibit registry
CREATE TABLE cosmic_artifact_exhibit (
    exhibit_id INTEGER NOT NULL PRIMARY KEY,
    artifact_name TEXT,
    origin_civilization TEXT,
    discovery_date DATE,
    exhibit_start_date DATE,
    exhibit_end_date DATE,
    museum_name TEXT,
    display_location TEXT,
    curator_name TEXT,
    condition_status TEXT,
    security_level TEXT,
    insurance_value_usd REAL,
    visitor_capacity_per_day INTEGER,
    ticket_price_usd REAL,
    audio_guide_available INTEGER,
    interactive_display INTEGER,
    lighting_type TEXT,
    humidity_control INTEGER,
    temperature_control INTEGER,
    loan_status TEXT,
    loan_institution TEXT,
    notes TEXT
);

INSERT INTO cosmic_artifact_exhibit VALUES (1,'Starlight Scepter','Ancient Orion','2120-04-18','2125-01-10','2125-12-20','Galactic History Museum','Hall A','Dr Mira Sol','Excellent','Level 5',5000000,1200,25,1,1,'LED','1','1','Owned','', 'Flagship exhibit of the year');
INSERT INTO cosmic_artifact_exhibit VALUES (2,'Void Crystal','Xenon Confederation','2135-09-07','2140-03-01','2140-09-30','Universal Art Gallery','Room 3B','Mr Kellan Vex','Good','Level 3',2000000,800,18,0,1,'Fiber Optic','1','1','On Loan','Nebula Institution','Long term loan for research');
INSERT INTO cosmic_artifact_exhibit VALUES (3,'Eternal Clock','Zeta Prime Empire','2105-12-22','2110-06-15','2110-10-15','Chronos Museum','Chronicle Wing','Ms Lira Kade','Fair','Level 4',3500000,950,22,1,0,'Spotlight','1','0','Returned','', 'Returned after temporary exhibition');

-- Renewable energy grid node inventory
CREATE TABLE renewable_energy_grid_node (
    node_id INTEGER NOT NULL PRIMARY KEY,
    grid_region TEXT,
    node_name TEXT,
    latitude REAL,
    longitude REAL,
    installed_capacity_mw REAL,
    technology_type TEXT,
    commissioning_date DATE,
    operator_company TEXT,
    maintenance_cycle_months INTEGER,
    last_maintenance DATE,
    status TEXT,
    voltage_level_kv REAL,
    frequency_hz REAL,
    outage_history INTEGER,
    renewable_source TEXT,
    storage_capacity_mwh REAL,
    average_generation_mwh REAL,
    carbon_offset_tonnes REAL,
    regulatory_compliance TEXT,
    contact_phone TEXT,
    notes TEXT
);

INSERT INTO renewable_energy_grid_node VALUES (1,'Terra Nova','Solar Nexus 1',45.12,-122.34,150.5,'Photovoltaic','2030-05-20','SunPower Corp',12,'2035-05-20','Active',33.0,60.0,2,'Solar',30.0,140.0,5000,'ISO9001','555-1200','Primary solar hub in sector');
INSERT INTO renewable_energy_grid_node VALUES (2,'Luna Base','Lunar Windfarm Alpha',0.0,23.5,80.0,'Wind Turbine','2032-09-15','LunaWind Ltd',6,'2038-09-15','Active',22.0,60.0,1,'Wind',15.0,75.0,3000,'ISO14001','555-1300','High-altitude wind farm');
INSERT INTO renewable_energy_grid_node VALUES (3,'Mars Frontier','Martian GeoThermal 7',12.5,45.7,120.0,'Geothermal','2035-02-01','MarsEnergy',9,'2042-02-01','Active',44.0,60.0,0,'Geothermal',40.0,115.0,4200,'ISO50001','555-1400','Deep geothermal plant');

-- Alien language corpus archive
CREATE TABLE alien_language_corpus (
    entry_id INTEGER NOT NULL PRIMARY KEY,
    language_name TEXT,
    dialect TEXT,
    source_document TEXT,
    transcription TEXT,
    translation TEXT,
    lexical_category TEXT,
    phonetic_notation TEXT,
    script_type TEXT,
    recording_date DATE,
    researcher_name TEXT,
    confidence_score REAL,
    annotation_notes TEXT,
    word_count INTEGER,
    sentence_count INTEGER,
    glossary_reference TEXT,
    audio_file_path TEXT,
    video_file_path TEXT,
    metadata_version TEXT,
    public_access_level TEXT,
    last_review_date DATE,
    status TEXT
);

INSERT INTO alien_language_corpus VALUES (1,'Zorg','Northern','Zorgic Tablet 12','zɒrg tʰa','Greetings','Phrase','zorg','Logographic','2120-08-14','Dr Nara Xe','0.95','Clearly legible','12','2','ZorgGlossaryV1','/audio/zorg12.wav','/video/zorg12.mp4','v1','Public','2121-01-10','Approved');
INSERT INTO alien_language_corpus VALUES (2,'Xelara','Southern','Xelara Scroll 7','ɛlɐɾa nʲi','Thank you','Phrase','xelara','Alphabetic','2135-03-22','Prof Arik V','0.89','Partial damage','20','3','XelaraDictV2','/audio/xelara7.wav','/video/xelara7.mp4','v2','Restricted','2136-04-05','Pending');
INSERT INTO alien_language_corpus VALUES (3,'Quor','Standard','Quor Codex 3','kwɔɾ tʰa','Farewell','Phrase','quor','Syllabary','2140-11-05','Dr Lila Q','0.92','Well preserved','15','2','QuorLexicon','/audio/quor3.wav','/video/quor3.mp4','v1','Public','2141-02-18','Approved');

-- Metahuman genealogy registry
CREATE TABLE metahuman_genealogy (
    record_id INTEGER NOT NULL PRIMARY KEY,
    individual_name TEXT,
    alias TEXT,
    birth_date DATE,
    death_date DATE,
    homeworld TEXT,
    lineage TEXT,
    parent1_name TEXT,
    parent2_name TEXT,
    sibling_names TEXT,
    offspring_names TEXT,
    powers_inherited TEXT,
    genetic_marker TEXT,
    mutation_type TEXT,
    classification TEXT,
    discovery_source TEXT,
    documented_by TEXT,
    verification_status TEXT,
    notes TEXT,
    last_updated DATE,
    confidentiality_level TEXT,
    source_reference TEXT
);

INSERT INTO metahuman_genealogy VALUES (1,'Aeliana Voss','Solaris','2100-04-12',NULL,'Epsilon Prime','Solar Lineage','Cassian Voss','Lyra Voss','Kalan Voss','', 'Photon Manipulation','GMX-12','Spontaneous','Primary','Ancient Archive','Dr Orin K','Verified','Subject active in defense forces','2145-07-01','Public','Archive001');
INSERT INTO metahuman_genealogy VALUES (2,'Braxton Keel','Tempest','2095-11-03','2150-02-20','Omega Station','Tempest Lineage','Dorian Keel','Mira Keel','', 'Jax Keel;Rhea Keel','Wind Control','GMX-07','Engineered','Secondary','Genetic Lab','Prof Selene R','Verified','Deceased in battle','2150-03-01','Restricted','LabReport77');
INSERT INTO metahuman_genealogy VALUES (3,'Cassandra Orion','Nebula','2110-06-30',NULL,'Nova Prime','Nebula Clan','', 'Evelyn Orion','', 'Lyra Orion','Gravity Manipulation','GMX-22','Spontaneous','Tertiary','Field Observation','Dr Vega L','Pending','Unknown parentage','2152-01-15','Confidential','FieldLog12');

-- Dimensional portal registry
CREATE TABLE dimensional_portal_registry (
    portal_id INTEGER NOT NULL PRIMARY KEY,
    portal_name TEXT,
    origin_dimension TEXT,
    destination_dimension TEXT,
    activation_date DATE,
    deactivation_date DATE,
    stability_rating INTEGER,
    energy_requirement_mj REAL,
    governing_body TEXT,
    security_clearance_level INTEGER,
    access_protocol TEXT,
    linked_locations TEXT,
    created_by TEXT,
    status TEXT,
    maintenance_schedule DATE,
    last_inspection DATE,
    notes TEXT,
    operational_status INTEGER,
    coordinate_x REAL,
    coordinate_y REAL,
    coordinate_z REAL,
    last_used DATE
);

INSERT INTO dimensional_portal_registry VALUES (1,'Apex Gate','Alpha','Omega','2130-09-01',NULL,9,1250.5,'Interdimensional Council',5,'QuantumKey','Base Alpha; Outpost Omega','Dr Selene Q','Active','2135-09-01','2136-01-15','Stable under current load',1,12.4,-8.3,7.9,'2138-04-10');
INSERT INTO dimensional_portal_registry VALUES (2,'Mirage Arch','Beta','Delta','2140-03-12','2150-07-20',6,980.0,'Dimensional Authority',4,'PhaseShift','Station Beta; Lab Delta','Engineer K','Decommissioned','2145-03-12','2148-11-05','Degraded after repeated use',0,5.0,3.2,-2.1,'2150-07-15');
INSERT INTO dimensional_portal_registry VALUES (3,'Quantum Rift','Gamma','Sigma','2155-01-20',NULL,8,1100.0,'Universal Oversight',5,'EntangleProtocol','Hub Gamma; Colony Sigma','Dr H','Active','2160-01-20','2160-06-30','Routine maintenance pending',1,-1.5,9.8,4.3,'2161-02-10');

-- Galactic trade hub operations
CREATE TABLE galactic_trade_hub_operations (
    hub_id INTEGER NOT NULL PRIMARY KEY,
    hub_name TEXT,
    sector TEXT,
    central_planet TEXT,
    capacity_ships INTEGER,
    daily_throughput_tons REAL,
    primary_commodities TEXT,
    operating_company TEXT,
    manager_name TEXT,
    established_year INTEGER,
    security_level TEXT,
    docking_fee_usd REAL,
    customs_fee_usd REAL,
    average_wait_time_minutes REAL,
    workforce_count INTEGER,
    energy_consumption_mw REAL,
    waste_processing_capacity_tons REAL,
    sustainability_rating INTEGER,
    recent_incident_report TEXT,
    compliance_certifications TEXT,
    last_audit DATE,
    notes TEXT
);

INSERT INTO galactic_trade_hub_operations VALUES (1,'Orion Hub','Sector 7','Orion Prime',250,48000,'Minerals, Tech Parts','Stellar Trade Corp','Ms Vega R','2105','High',2500.0,600.0,45.3,1200,350.0,500.0,9,'Minor cargo loss due to docking malfunction','ISO9001; ISO14001','2106-04-12','Key hub for interstellar logistics');
INSERT INTO galactic_trade_hub_operations VALUES (2,'Nebula Exchange','Sector 3','Nebula IX',180,32000,'Pharmaceuticals, Luxury Goods','Nebula Logistics','Mr Orion T','2120','Medium',1800.0,450.0,30.7,950,280.0,300.0,8,'Security breach resolved without loss','ISO27001','2121-09-05','Strategic position near trade corridor');
INSERT INTO galactic_trade_hub_operations VALUES (3,'Zenith Dock','Sector 12','Zenith Prime',300,60000,'Energy Cells, Vehicles','Zenith Enterprises','Dr Lira M','2135','Very High',3200.0,800.0,55.0,1500,420.0,650.0,10,'No incidents reported','ISO9001; ISO45001; ISO14001','2136-02-20','Largest capacity hub in the galaxy');