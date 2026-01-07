-- Locations in the cosmos beyond planets
CREATE TABLE cosmic_location (
    id INTEGER PRIMARY KEY,
    name TEXT,
    sector TEXT,
    galaxy TEXT,
    coordinates_x REAL,
    coordinates_y REAL,
    coordinates_z REAL,
    discovery_date DATE,
    observed_by TEXT,
    classification TEXT,
    average_temperature REAL,
    dominant_life_form TEXT,
    known_resources TEXT,
    radiation_level REAL,
    gravitational_pull REAL,
    orbital_period_days INTEGER,
    habitability_score REAL,
    historical_significance TEXT,
    last_probe_id INTEGER,
    notes TEXT
);
INSERT INTO cosmic_location VALUES (1,'Nebula Dawn','Sector A1','Andromeda',123.45,67.89,10.11,'2120-03-15','Observatory Alpha','Nebula',-150.5,'None','Hydrogen, Helium',0.03,0.5,0,'7.2','First observed by early explorers',101,'High dust density');
INSERT INTO cosmic_location VALUES (2,'Crystal Reef','Sector B3','MilkyWay',210.22,45.33,5.78,'2095-11-08','Space Telescope Beta','Asteroid Belt',23.0,'Lithovian','Silicates, Ice',0.12,0.3,365,'3.5','Site of mineral extraction',202,'Stable orbit');
INSERT INTO cosmic_location VALUES (3,'Eclipse Void','Sector C7','Triangulum',88.66,12.44,99.01,'2150-07-22','Probe Gamma','Black Hole',null,'Unknown','Dark Matter',5000.0,9.8,null,null,'Potential gateway',303,'Extreme radiation');

-- Information about alien species
CREATE TABLE alien_species (
    id INTEGER PRIMARY KEY,
    species_name TEXT,
    home_planet_id INTEGER,
    average_height_cm REAL,
    average_weight_kg REAL,
    typical_lifespan_years INTEGER,
    language TEXT,
    diet_type TEXT,
    reproductive_method TEXT,
    tech_level TEXT,
    societal_structure TEXT,
    aggression_rating INTEGER,
    diplomacy_rating INTEGER,
    known_abilities TEXT,
    biochemistry TEXT,
    genetic_marker TEXT,
    first_contact_date DATE,
    discovered_by TEXT,
    classification TEXT,
    conservation_status TEXT
);
INSERT INTO alien_species VALUES (1,'Zylox','101',180.5,85.0,120,'Zylian','Omnivore','Asexual','Advanced','Hive','4','9','Telepathy','Silicon based','ZXL-09','2125-04-12','Expedition Delta','Mammalian','Protected');
INSERT INTO alien_species VALUES (2,'Krell','202',210.0,150.0,80,'Krellik','Carnivore','Binary Fission','Intermediate','Feudal','7','3','Regeneration','Carbon based','KRL-22','2100-09-05','Survey Team Omega','Reptilian','Endangered');
INSERT INTO alien_species VALUES (3,'Vara','303',150.2,60.5,200,'Varan','Herbivore','Egg Laying','Primitive','Tribal','2','8','Camouflage','Nitrogen based','VAR-07','2130-01-20','Research Vessel Sigma','Avian','Least Concern');

-- Interstellar trade routes
CREATE TABLE interstellar_trade_route (
    id INTEGER PRIMARY KEY,
    route_name TEXT,
    origin_location_id INTEGER,
    destination_location_id INTEGER,
    distance_lightyears REAL,
    typical_travel_time_days INTEGER,
    primary_goods TEXT,
    security_level TEXT,
    governing_body TEXT,
    established_year INTEGER,
    last_inspection_date DATE,
    traffic_volume INTEGER,
    fee_structure TEXT,
    piracy_incidents_last_year INTEGER,
    maintenance_status TEXT,
    route_status TEXT,
    notes TEXT,
    average_warp_factor REAL,
    max_cargo_capacity_tons REAL,
    environmental_impact_score INTEGER
);
INSERT INTO interstellar_trade_route VALUES (1,'Silk Corridor',1,2,12.5,45,'Textiles','Medium','Coalition of Free Systems',2105,'2124-06-01',3400,'Standard','2','Good','Active','Key commercial artery',4.2,5000.0,3);
INSERT INTO interstellar_trade_route VALUES (2,'Spice Trail',3,4,27.8,78,'Spices','High','Unified Trade Guild',2098,'2123-11-15',2100,'Premium','7','Fair','Restricted','Subject to seasonal storms',5.0,3000.0,7);
INSERT INTO interstellar_trade_route VALUES (3,'Mineral Loop',5,6,9.3,30,'Rare Minerals','Low','Independent Traders Union',2112,'2125-02-20',1500,'Discounted','0','Excellent','Active','Frequent maintenance reduces downtime',3.8,4000.0,2);

-- Quantum research projects
CREATE TABLE quantum_research_project (
    id INTEGER PRIMARY KEY,
    project_name TEXT,
    lead_scientist TEXT,
    start_date DATE,
    end_date DATE,
    budget_million_usd REAL,
    objective_summary TEXT,
    status TEXT,
    primary_quantum_technology TEXT,
    collaborators TEXT,
    publications_count INTEGER,
    patents_filed INTEGER,
    lab_location_id INTEGER,
    equipment_used TEXT,
    risk_assessment_level TEXT,
    compliance_certification TEXT,
    progress_percentage INTEGER,
    next_milestone_date DATE,
    funding_source TEXT,
    notes TEXT
);
INSERT INTO quantum_research_project VALUES (1,'Entanglement Net','Dr Selene Arka','2120-01-15','2125-12-31',125.5,'Develop long distance entanglement','Ongoing','Qubit Array','Institute Nova,Quantum Labs','12','4',11,'Laser Stabilizer','High','ISO9001',45,'2122-09-01','Galactic Science Fund','Phase 2 pending');
INSERT INTO quantum_research_project VALUES (2,'Quantum Gravity Probe','Prof Orion Vex','2118-06-01','2123-05-30',98.3,'Test quantum effects on spacetime','Completed','Graviton Detector','Space Research Alliance','8','2',22,'Cryogenic Chamber','Medium','ISO27001',100,'2123-05-30','Interstellar Research Council','Results published in Journal of Quantum Physics');
INSERT INTO quantum_research_project VALUES (3,'Photonics Accelerator','Dr Mira Lune','2122-03-10','2127-08-20',150.0,'Increase photonic computation speed','Planning','Photonics Chip','Photonic Enterprises','0','0',33,'Ultra‑fast Modulator','Low','ISO14001',10,'2123-12-01','Private Venture Capital','Prototype design phase');

-- Metahuman clinics
CREATE TABLE metahuman_clinic (
    id INTEGER PRIMARY KEY,
    clinic_name TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    country TEXT,
    contact_number TEXT,
    director_name TEXT,
    capacity_beds INTEGER,
    specialization TEXT,
    accreditation_body TEXT,
    opening_date DATE,
    operating_hours TEXT,
    emergency_services_available TEXT,
    research_affiliation TEXT,
    annual_patient_count INTEGER,
    average_wait_time_minutes INTEGER,
    satisfaction_score REAL,
    notes TEXT
);
INSERT INTO metahuman_clinic VALUES (1,'Alpha Healing Center','1234 Nova Way','Suite 5','Helios','CA','90001','Earth','555-0101','Dr Aurora Vega',45,'Regenerative','Global Health Board','2120-04-12','08:00-20:00','Yes','Institute of Meta Medicine',1200,15,4.7,'Leading facility for power control');
INSERT INTO metahuman_clinic VALUES (2,'Beta Recovery Institute','78 Stellar Blvd','Floor 2','Luna City','TX','75001','Mars','555-0202','Dr Orion Pax',30,'Neuro','Martian Medical Council','2118-09-30','07:00-22:00','Yes','Neuro Enhancement Lab',850,20,4.3,'Focus on cognitive augmentation');
INSERT INTO metahuman_clinic VALUES (3,'Gamma Wellness Hub','5000 Orbit Ring','Apt 12B','Nova Prime','NV','89001','Venus','555-0303','Dr Selene Ortiz',25,'Dermal','Venusian Health Authority','2122-01-20','09:00-18:00','No','Skin Regeneration Research Center',600,25,4.5,'Specializes in adaptive camouflage treatment');

-- Artifact loan agreements
CREATE TABLE artifact_loan_agreement (
    id INTEGER PRIMARY KEY,
    artifact_id INTEGER,
    lender_organization_id INTEGER,
    borrower_organization_id INTEGER,
    loan_start_date DATE,
    loan_end_date DATE,
    insurance_provider TEXT,
    insured_value_usd REAL,
    transport_method TEXT,
    handling_instructions TEXT,
    display_location TEXT,
    condition_at_loan TEXT,
    condition_at_return TEXT,
    responsible_curator_id INTEGER,
    renewal_allowed TEXT,
    renewal_terms TEXT,
    confidentiality_clause TEXT,
    dispute_resolution_method TEXT,
    signed_by_lender TEXT,
    signed_by_borrower TEXT
);
INSERT INTO artifact_loan_agreement VALUES (1,101,201,301,'2123-05-01','2124-05-01','SecureInsure','500000','Anti‑gravity Pod','Maintain 0‑G environment','Hall A','Excellent','Excellent',401,'Yes','One year extension','Standard','Mediation','Director A','Director B');
INSERT INTO artifact_loan_agreement VALUES (2,102,202,302,'2122-09-15','2123-09-15','GalaxyCover','750000','Quantum Container','Temperature -20C to 20C','Exhibit B','Good','Good',402,'No','N/A','Restricted','Arbitration','Curator C','Curator D');
INSERT INTO artifact_loan_agreement VALUES (3,103,203,303,'2124-01-20','2125-01-20','StarShield','1200000','Shielded Vessel','Handle with magnetic levitation','Gallery 3','Fair','Fair',403,'Yes','Two year renewal','Confidential','Negotiation','Manager E','Manager F');

-- Galactic weather stations
CREATE TABLE galactic_weather_station (
    id INTEGER PRIMARY KEY,
    station_name TEXT,
    sector TEXT,
    galaxy TEXT,
    coordinates_x REAL,
    coordinates_y REAL,
    coordinates_z REAL,
    installation_date DATE,
    operator_agency TEXT,
    data_collection_frequency TEXT,
    primary_sensor_type TEXT,
    solar_wind_speed_km_s REAL,
    magnetic_field_strength_nanotesla REAL,
    radiation_level_msv REAL,
    temperature_celsius REAL,
    humidity_percent REAL,
    atmospheric_composition TEXT,
    last_maintenance_date DATE,
    status TEXT,
    notes TEXT
);
INSERT INTO galactic_weather_station VALUES (1,'Helios Station','Sector D4','Andromeda',150.2,75.8,20.4,'2119-11-05','Andromeda Space Agency','Hourly','Plasma Spectrometer',550.0,35.2,0.12,22.5,45,'Hydrogen, Helium','2124-03-10','Operational','Key for solar flare monitoring');
INSERT INTO galactic_weather_station VALUES (2,'Nebula Watch','Sector E9','MilkyWay',90.5,40.3,15.9,'2120-06-18','MilkyWay Meteorological Dept','Daily','Radiation Detector',300.5,12.8,0.08,-5.0,30,'Methane, Nitrogen','2123-12-01','Operational','Supports deep space navigation');
INSERT INTO galactic_weather_station VALUES (3,'Quantum Breeze','Sector F2','Triangulum',200.1,60.7,33.3,'2122-02-22','Triangulum Observatory','Every 30 minutes','Quantum Flux Sensor',720.3,48.5,0.20, -12.3,20,'Carbon Dioxide, Argon','2125-01-15','Under Maintenance','Calibration in progress');

-- Cosmic events
CREATE TABLE cosmic_event (
    id INTEGER PRIMARY KEY,
    event_name TEXT,
    event_type TEXT,
    start_date DATE,
    end_date DATE,
    affected_regions TEXT,
    estimated_magnitude REAL,
    cause_hypothesis TEXT,
    observation_methods TEXT,
    primary_observatory TEXT,
    data_release_date DATE,
    impact_assessment TEXT,
    scientific_publications INTEGER,
    funding_agency TEXT,
    lead_scientist TEXT,
    status TEXT,
    notes TEXT,
    related_events TEXT,
    followup_missions TEXT,
    risk_level TEXT
);
INSERT INTO cosmic_event VALUES (1,'Supernova 2123A','Supernova','2123-04-01','2123-04-02','Sector G5','9.8','Massive star collapse','Optical, Gamma‑Ray','Observatory Zenith','2123-05-10','High radiation exposure','5','Galactic Science Fund','Dr Nova Vega','Confirmed','Brightest event in century','None','None','High');
INSERT INTO cosmic_event VALUES (2,'Gamma Burst XJ-9','Gamma Burst','2124-07-15','2124-07-15','Sector H2','10.2','Binary neutron star merger','Gamma detectors','Space Telescope Omega','2124-08-01','Potential impact on nearby colonies','3','Interstellar Defense Council','Prof Orion Pax','Analyzed','Short duration but intense','Supernova 2123A','Mission GammaWatch','Medium');
INSERT INTO cosmic_event VALUES (3,'Dark Matter Wave','Anomaly','2125-01-20','2125-02-10','Sector I3','7.5','Fluctuating dark matter density','Gravitational lensing','Deep Space Array','2125-03-05','Minimal direct impact','2','Quantum Research Initiative','Dr Selene Arka','Ongoing','Monitoring for pattern','Gamma Burst XJ-9','Mission DarkPulse','Low');

-- Interdimensional portal registry
CREATE TABLE interdimensional_portal_registry (
    id INTEGER PRIMARY KEY,
    portal_name TEXT,
    entry_location_id INTEGER,
    exit_location_id INTEGER,
    stable_status TEXT,
    creation_date DATE,
    discovered_by TEXT,
    energy_requirements_megajoules REAL,
    safety_rating INTEGER,
    control_protocol_version TEXT,
    max_transit_capacity INTEGER,
    last_maintenance_date DATE,
    operational_status TEXT,
    governing_body TEXT,
    usage_log_reference TEXT,
    notes TEXT,
    dimensional_coordinates TEXT,
    quantum_fluctuation_level REAL,
    encryption_key_id INTEGER,
    decommissioned_date DATE
);
INSERT INTO interdimensional_portal_registry VALUES (1,'Aether Gate','401','402','Stable','2120-12-01','Dr Aurora Vega',2500.5,9,'v2.1',150,'2124-07-01','Active','Interdimensional Council','LOG-1001','Primary gateway to parallel sector','X:12,Y:-7,Z:3',0.02,501,NULL);
INSERT INTO interdimensional_portal_registry VALUES (2,'Void Nexus','403','404','Unstable','2122-05-15','Prof Orion Vex',4800.0,4,'v1.8',80,'2125-01-20','Restricted','Quantum Authority','LOG-1002','Used for experimental jumps','X:-4,Y:6,Z:-9',0.15,502,'2130-12-31');
INSERT INTO interdimensional_portal_registry VALUES (3,'Chrono Rift','405','406','Stable','2123-11-30','Dr Selene Arka',3200.3,7,'v2.0',120,'2125-06-10','Active','Temporal Oversight Committee','LOG-1003','Temporal research applications','X:0,Y:0,Z:0',0.05,503,NULL);

-- Spacecraft design specifications
CREATE TABLE spacecraft_design_spec (
    id INTEGER PRIMARY KEY,
    model_name TEXT,
    manufacturer TEXT,
    launch_date DATE,
    crew_capacity INTEGER,
    payload_capacity_tons REAL,
    propulsion_type TEXT,
    max_speed_km_s REAL,
    fuel_type TEXT,
    wing_span_m REAL,
    length_m REAL,
    height_m REAL,
    navigation_system TEXT,
    life_support_rating TEXT,
    hull_material TEXT,
    shielding_type TEXT,
    avionics_version TEXT,
    cost_estimate_usd REAL,
    status TEXT,
    notes TEXT,
    operational_range_ly REAL
);
INSERT INTO spacecraft_design_spec VALUES (1,'Starfire X1','Nova Dynamics','2121-03-10',5,20.5,'Ion Thruster',25000,'Hydrogen',15.2,33.5,9.8,'Quantum Nav','A','Titanium Alloy','Electromagnetic','v3.2',750000000,'Operational',' Flagship explorer','45.0');
INSERT INTO spacecraft_design_spec VALUES (2,'Nebula Cruiser','Astral Works','2122-07-22',12,45.0,'Fusion Drive',18000,'Deuterium',22.0,55.0,12.5,'Stellar Navigation','B','Carbon Composite','Particle Shield','v4.0',1200000000,'Testing','Mid‑size cargo vessel','120.5');
INSERT INTO spacecraft_design_spec VALUES (3,'Quantum Shuttle','Quantum Labs','2124-11-05',2,5.0,'Antimatter Pulse',30000,'Antimatter',8.5,18.0,6.0,'Subspace Guidance','S','Aluminum-Lithium','Plasma Shield','v2.7',300000000,'Prototype','High‑speed research shuttle','15.2');

-- Interstellar mission logs
CREATE TABLE interstellar_mission_log (
    id INTEGER PRIMARY KEY,
    mission_name TEXT,
    mission_type TEXT,
    launch_date DATE,
    arrival_date DATE,
    departure_date DATE,
    origin_planet_id INTEGER,
    destination_planet_id INTEGER,
    spacecraft_id INTEGER,
    commander_name TEXT,
    crew_count INTEGER,
    mission_objectives TEXT,
    scientific_payload TEXT,
    budget_usd REAL,
    status TEXT,
    outcome_summary TEXT,
    anomalies_reported TEXT,
    total_distance_ly REAL,
    average_speed_km_s REAL,
    debrief_notes TEXT
);
INSERT INTO interstellar_mission_log VALUES (1,'Aurora Quest','Exploration','2120-05-01','2122-11-15','2122-12-01',501,602,1,'Captain Vega',8,'Map unknown sector','Spectrometer Array','850000000','Successful','Discovered three habitable moons','None',30.5,20000,'Mission praised for scientific yield');
INSERT INTO interstellar_mission_log VALUES (2,'Tempest Survey','Resource','2121-09-12','2123-03-20','2123-04-05',503,604,2,'Commander Pax',12,'Assess mineral deposits','Drilling Rig','600000000','Completed','Extracted 500 tons of rare ore','Minor navigation glitch',45.2,18000,'Data integrated into galactic economy');
INSERT INTO interstellar_mission_log VALUES (3,'Eclipse Relay','Diplomatic','2123-02-18','2125-07-30','2125-08-10',505,606,3,'Admiral Ortiz',5,'Establish trade treaty','Communication Hub','720000000','Ongoing','Negotiations delayed due to language barrier','Communication interference',60.0,15000,'Awaiting resolution before final report');