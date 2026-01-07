-- Interstellar mission details
CREATE TABLE interstellar_mission
(
    id INTEGER PRIMARY KEY,
    mission_name TEXT,
    launch_date DATE,
    arrival_date DATE,
    spacecraft_id INTEGER,
    destination_planet_id INTEGER,
    crew_size INTEGER,
    mission_objective TEXT,
    budget_million REAL,
    lead_scientist TEXT,
    status TEXT,
    propulsion_type TEXT,
    fuel_type TEXT,
    mission_duration_days INTEGER,
    distance_au REAL,
    communication_band TEXT,
    radiation_shielding_level TEXT,
    scientific_payload_weight_kg INTEGER,
    crew_commander TEXT,
    sponsor TEXT,
    final_report_url TEXT
);

INSERT INTO interstellar_mission VALUES (1,'AlphaCentauriProbe','2035-04-12','2037-11-03',101,201,8,'Study exoplanet atmospheres',450.5,'Dr Lin','Completed','IonDrive','Helium','945','4.37', 'KaBand','High',1200,'Cmd Rao','StarTech','http://reports.example.com/alpha');
INSERT INTO interstellar_mission VALUES (2,'VegaExpedition','2040-01-20','2043-07-15',102,202,12,'Search for microbial life',780.0,'Dr Sato','InProgress','Fusion','Deuterium','1280','25.0','XBand','Medium',2100,'Cmd Patel','GalacticFund','http://reports.example.com/vega');
INSERT INTO interstellar_mission VALUES (3,'OrionSurvey','2045-06-05','2048-12-22',103,203,6,'Map magnetic fields',310.75,'Dr Gomez','Planned','Antimatter','Positron','1270','12.7','UHF','Low',900,'Cmd Lee','NovaCorp','http://reports.example.com/orion');

-- Cosmic artifact registry
CREATE TABLE cosmic_artifact
(
    id INTEGER PRIMARY KEY,
    artifact_name TEXT,
    discovery_date DATE,
    origin_civilization TEXT,
    material TEXT,
    estimated_age_years INTEGER,
    current_location TEXT,
    status TEXT,
    catalog_number TEXT,
    dimensions_cm TEXT,
    weight_kg REAL,
    preservation_method TEXT,
    associated_events TEXT,
    discoverer TEXT,
    artifact_type TEXT,
    significance_rating INTEGER,
    last_restoration_date DATE,
    storage_temperature_c REAL,
    storage_humidity_percent REAL,
    security_level TEXT,
    notes TEXT
);

INSERT INTO cosmic_artifact VALUES (1,'Starlight Scepter','2120-09-14','Zygnorian','Crystal','1523000','Museum of Galactic History','OnDisplay','CA-001','45x15x8','12.5','Encasement','First Contact','Dr Kellan','Ceremonial',9,'2125-03-20',-5.0,30.0,'High','Preserved in vacuum');
INSERT INTO cosmic_artifact VALUES (2,'Obsidian Tablet','2115-04-02','Krell','Obsidian','980000','Planetary Archive','Stored','OB-042','30x20x5','8.3','Controlled Atmosphere','War Treaty','Dr Miri','Inscription',8,'2120-11-11',2.0,45.0,'Medium','Fragile surface');
INSERT INTO cosmic_artifact VALUES (3,'Quantum Orb','2130-12-23','Unknown','Unknown','5000000','Interstellar Research Lab','UnderStudy','QO-777','10x10x10','0.9','Magnetic Field','Energy Anomaly','Dr Zen','EnergySource',10,'2132-01-05',-10.0,20.0,'TopSecret','Active research');

-- Alien diplomacy agreement
CREATE TABLE alien_diplomacy_agreement
(
    id INTEGER PRIMARY KEY,
    agreement_name TEXT,
    signing_date DATE,
    alien_race TEXT,
    host_nation TEXT,
    treaty_type TEXT,
    duration_years INTEGER,
    terms_summary TEXT,
    ambassador_name TEXT,
    representative_title TEXT,
    diplomatic_status TEXT,
    trade_permissions TEXT,
    technology_exchange TEXT,
    cultural_exchange TEXT,
    military_clause TEXT,
    confidentiality_level TEXT,
    renewal_option TEXT,
    expiration_date DATE,
    appendix_url TEXT,
    notes TEXT,
    enforcement_mechanism TEXT
);

INSERT INTO alien_diplomacy_agreement VALUES (1,'Celestial Trade Pact','2150-05-01','Vortan','Terran Union','Trade','50','Open markets between worlds','Ambassador Ryl','Envoy','Active','Full','Partial','Annual festivals','NoDeployments','High','Automatic','2200-05-01','http://agreements.example.com/celestial','Reviewed annually','Joint Council');
INSERT INTO alien_diplomacy_agreement VALUES (2,'Alliance of Stars','2165-09-15','Xelorian','Solar Confederacy','Defense','30','Mutual defense against threats','Ambassador Kira','Delegate','Pending','Limited','Full','JointPatrols','Medium','Negotiable','2195-09-15','http://agreements.example.com/alliance','Pending ratification','UN Oversight');
INSERT INTO alien_diplomacy_agreement VALUES (3,'Cultural Exchange Charter','2172-03-10','Lyrians','Lunar Republic','Cultural','20','Exchange of art and education','Ambassador Tova','Cultural Liaison','Active','None','Limited','Annual Exhibitions','None','Low','Optional','2192-03-10','http://agreements.example.com/cultural','Successful','Cultural Committee');

-- Quantum research facility
CREATE TABLE quantum_research_facility
(
    id INTEGER PRIMARY KEY,
    facility_name TEXT,
    location_city TEXT,
    country TEXT,
    establishment_year INTEGER,
    director_name TEXT,
    total_staff INTEGER,
    research_focus TEXT,
    funding_source TEXT,
    annual_budget_million REAL,
    number_of_labs INTEGER,
    cleanroom_class TEXT,
    quantum_computers_count INTEGER,
    cryogenic_capacity_liters REAL,
    safety_certification TEXT,
    max_power_kw REAL,
    internet_bandwidth_gbps REAL,
    security_clearance_required TEXT,
    partnership_programs TEXT,
    notable_projects TEXT,
    contact_email TEXT,
    website_url TEXT
);

INSERT INTO quantum_research_facility VALUES (1,'Quantum Core Labs','Nova City','Andoria',2090,'Dr Arin Voss',250,'Quantum Computing','GovGrant',120.5,12,'ISO5',8,15000.0,'ISO9001',5000.0,200.0,'Level3','Industry Alliance','Qubit Error Reduction','info@qcore.example','http://qcore.example');
INSERT INTO quantum_research_facility VALUES (2,'Entanglement Institute','Helios','Zyra',2105,'Dr Selene Kade',180,'Quantum Communication','PrivateFund',95.0,9,'ISO6',5,8000.0,'ISO14001',3200.0,150.0,'Level2','University Partnership','Secure Teleportation','contact@entinst.example','http://entinst.example');
INSERT INTO quantum_research_facility VALUES (3,'Superposition Center','Orbiton','Epsilon',2120,'Dr Milo Tan',300,'Quantum Materials','Consortium','150.0',15,'ISO4',10,20000.0,'ISO45001',6200.0,250.0,'Level4','Global Consortium','Room Temperature Qubits','admin@supcenter.example','http://supcenter.example');

-- Nanotech factory
CREATE TABLE nanotech_factory
(
    id INTEGER PRIMARY KEY,
    factory_name TEXT,
    city TEXT,
    country TEXT,
    operational_since INTEGER,
    ceo_name TEXT,
    production_capacity_units_per_year INTEGER,
    nanomaterial_type TEXT,
    primary_product TEXT,
    quality_certification TEXT,
    environmental_compliance_level TEXT,
    number_of_shifts INTEGER,
    avg_employee_age REAL,
    safety_incidents_last_year INTEGER,
    waste_recycling_rate_percent REAL,
    energy_consumption_mwh_per_year REAL,
    primary_client TEXT,
    export_volume_units INTEGER,
    r_and_d_budget_million REAL,
    patents_held INTEGER,
    contact_phone TEXT,
    website_url TEXT
);

INSERT INTO nanotech_factory VALUES (1,'NanoForge','Arcadia','Ventara',2085,'Lena Kor','500000','Carbon Nanotubes','Structural Panels','ISO9001','LevelA',3,34.5,2,85.0,42000.0,'MegaConstruct','120000',15.5,12,'+123456789','http://nanoforge.example');
INSERT INTO nanotech_factory VALUES (2,'QuantumNan','Heliox','Cygnus',2095,'Rashid Bar','300000','Silicon Nanowires','Microprocessors','ISO14001','LevelB',2,29.8,1,78.2,31000.0,'TechSphere','85000',12.0,9,'+987654321','http://quantumnan.example');
INSERT INTO nanotech_factory VALUES (3,'AetherParticles','Novus','Orion',2102,'Mira Sol','750000','Graphene','Flexible Displays','ISO45001','LevelA',4,31.2,0,92.5,56000.0,'VisionCorp','200000',20.3,15,'+112233445','http://aether.example');

-- Metahuman clinic
CREATE TABLE metahuman_clinic
(
    id INTEGER PRIMARY KEY,
    clinic_name TEXT,
    city TEXT,
    country TEXT,
    opening_date DATE,
    chief_medical_officer TEXT,
    number_of_physicians INTEGER,
    specialization_focus TEXT,
    patient_capacity_daily INTEGER,
    average_wait_time_minutes INTEGER,
    insurance_accepted TEXT,
    lab_equipment_list TEXT,
    therapy_rooms_count INTEGER,
    biohazard_level TEXT,
    emr_system TEXT,
    research_trials_active INTEGER,
    funding_source TEXT,
    accreditation_body TEXT,
    emergency_services_available TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    website_url TEXT
);

INSERT INTO metahuman_clinic VALUES (1,'Metahuman Health Center','Epsilon City','Zorlon','2125-02-01','Dr Hana Vex',45,'Regeneration','150','20','Universal','GeneSequencer, CryoChamber',12,'Level2','MediSoft',3,'GovGrant','HealthBoard','Yes','info@mhc.example','+155566677','http://mhc.example');
INSERT INTO metahuman_clinic VALUES (2,'Quantum Care Facility','Luminara','Artemis',2130-07-15','Dr Kai Lumen',30,'Energy Manipulation','100','15','Selective','PhotonAnalyzer, BioAmplifier',8,'Level1','HealNet',1,'PrivateFund','MedicalCouncil','No','contact@qcf.example','+144455566','http://qcf.example');
INSERT INTO metahuman_clinic VALUES (3,'Arcane Wellness Institute','Nimbus','Talara',2135-11-20','Dr Selene Aria',55,'Telepathy','200','10','Universal','NeuroScanner, MindMapper',16,'Level3','NeoHealth',4,'Consortium','WellnessBoard','Yes','support@awi.example','+133344455','http://awi.example');

-- Galactic trade route
CREATE TABLE galactic_trade_route
(
    id INTEGER PRIMARY KEY,
    route_name TEXT,
    origin_system TEXT,
    destination_system TEXT,
    distance_lightyears REAL,
    typical_travel_time_days INTEGER,
    primary_goods TEXT,
    cargo_capacity_megaton REAL,
    controlling_faction TEXT,
    security_level TEXT,
    customs_fee_percentage REAL,
    established_year INTEGER,
    traffic_volume_ships_per_year INTEGER,
    notable_incidents TEXT,
    navigation_hazards TEXT,
    insurance_rate_percentage REAL,
    trade_agreement_id INTEGER,
    last_inspection_date DATE,
    route_status TEXT,
    monitoring_center TEXT,
    notes TEXT
);

INSERT INTO galactic_trade_route VALUES (1,'Silkway Corridor','Alpha Prime','Beta Centauri',12.5,45,'Luxury Goods',3.2,'Terran Union','Medium',2.5,2210,180,'Pirate Skirmish 2220','Nebula Clouds',1.2,7,'2225-06-30','Active','Central Hub','High traffic corridor');
INSERT INTO galactic_trade_route VALUES (2,'Iron Trail','Delta Forge','Gamma Outpost',27.8,78,'Metals',7.5,'Xelorian League','High',4.0,2235,120,'Radiation Burst 2240','Asteroid Field',1.8,9,'2243-09-12','Restricted','Xeloria Control','Strategic mineral route');
INSERT INTO galactic_trade_route VALUES (3,'Echo Loop','Epsilon Ring','Zeta Nexus',5.3,22,'Data Packages',0.9,'Universal Consortium','Low',1.0,2250,250,'None','Solar Flares',0.9,11,'2255-01-05','Active','Data Center','Rapid communication link');

-- Stellar observation
CREATE TABLE stellar_observation
(
    id INTEGER PRIMARY KEY,
    observation_id TEXT,
    telescope_name TEXT,
    observatory_location TEXT,
    observation_date DATE,
    target_star TEXT,
    spectral_type TEXT,
    apparent_magnitude REAL,
    distance_parsec REAL,
    observation_type TEXT,
    exposure_time_seconds INTEGER,
    instrument_used TEXT,
    data_file_path TEXT,
    processed_by TEXT,
    notes TEXT,
    signal_to_noise_ratio REAL,
    wavelength_range_nm TEXT,
    filter_used TEXT,
    observation_status TEXT,
    temperature_k REAL,
    metallicity REAL,
    radial_velocity_kms REAL
);

INSERT INTO stellar_observation VALUES (1,'OBS-001','HorizonScope','Mount Aster','2140-03-12','Kepler-22','G5V',11.5,200.3,'Photometry',3600,'CCD Camera','/data/obs001.fits','Dr Lian','Clear skies',45.2,'400-700','V','Completed',5800,-0.02,30.5);
INSERT INTO stellar_observation VALUES (2,'OBS-002','QuantumEye','Desert Ridge','2141-07-19','TRAPPIST-1','M8V',13.2,12.1,'Spectroscopy',5400,'Echelle Spectrograph','/data/obs002.fits','Dr Maia','Minor clouds',30.8,'600-900','R','Completed',2550,0.04,-12.3);
INSERT INTO stellar_observation VALUES (3,'OBS-003','NebulaArray','High Plains','2142-11-05','Vega','A0V',0.03,7.68,'Imaging',1800,'Infrared Camera','/data/obs003.fits','Dr Orion','Excellent seeing',80.5,'800-1200','I','Completed',9600,-0.05,5.6);

-- Energy grid node
CREATE TABLE energy_grid_node
(
    id INTEGER PRIMARY KEY,
    node_name TEXT,
    region TEXT,
    country TEXT,
    latitude REAL,
    longitude REAL,
    installed_capacity_mw REAL,
    operational_since INTEGER,
    node_type TEXT,
    voltage_level_kv REAL,
    number_of_substations INTEGER,
    average_load_mw REAL,
    peak_load_mw REAL,
    renewable_share_percent REAL,
    maintenance_schedule TEXT,
    last_outage_date DATE,
    outage_duration_minutes INTEGER,
    controlling_entity TEXT,
    contact_phone TEXT,
    contact_email TEXT,
    grid_zone TEXT,
    notes TEXT
);

INSERT INTO energy_grid_node VALUES (1,'Northstar Node','Northern Plains','Terrania',45.12,-102.34,1500.0,2105,'Transmission','500',12,1200.5,1400.0,65.0,'Quarterly','2148-04-15',30,'Terran Energy','+188899001','ops@northstar.example','Zone A','Key hub for renewable integration');
INSERT INTO energy_grid_node VALUES (2,'Solaris Hub','Sahara Basin','Aurelia',23.45,12.67,800.0,2120,'Distribution','220',8,600.2,750.0,85.0,'Biannual','2150-09-22',45,'Aurelia Power','+199988877','contact@solaris.example','Zone B','Supports large solar farms');
INSERT INTO energy_grid_node VALUES (3,'HydroPulse Station','River Valley','Hydron',60.78,-45.12,1200.0,2115,'Generation','330',5,950.0,1100.0,70.0,'Annual','2145-12-01',20,'Hydron Utilities','+177766554','admin@hydropulse.example','Zone C','Hydroelectric focus');

-- Spacecraft design
CREATE TABLE spacecraft_design
(
    id INTEGER PRIMARY KEY,
    design_name TEXT,
    manufacturer TEXT,
    primary_mission_type TEXT,
    launch_mass_kg REAL,
    dry_mass_kg REAL,
    dimensions_meters TEXT,
    power_source TEXT,
    propulsion_type TEXT,
    crew_capacity INTEGER,
    payload_capacity_kg REAL,
    mission_duration_days INTEGER,
    navigation_system TEXT,
    communication_system TEXT,
    thermal_control TEXT,
    shielding_material TEXT,
    cost_estimate_million REAL,
    design_release_year INTEGER,
    status TEXT,
    chief_engineer TEXT,
    compliance_standards TEXT,
    documentation_url TEXT,
    notes TEXT
);

INSERT INTO spacecraft_design VALUES (1,'Stellar Voyager','Nova Dynamics','Exploration',85000.0,45000.0,'30x15x12','Solar Panels','Ion Drive',6,12000.0,1800,'Inertial Nav','Ka Band','Active Cooling','Aluminum Composite',320.5,2130,'Approved','Eng. Mira Tan','ISO9001','http://novadynamics.example/stellar','Long-range survey vessel');
INSERT INTO spacecraft_design VALUES (2,'Quantum Interceptor','Quantum Works','Combat',65000.0,38000.0,'28x14x11','Fusion Reactor','Antimatter','4',8000.0,900,'Star Tracker','X Band','Passive Radiators','Titanium Alloy',415.0,2140,'Prototype','Eng. Rashid Bar','ISO14001','http://quantumworks.example/interceptor','High maneuverability, stealth features');
INSERT INTO spacecraft_design VALUES (3,'Aether Cargo','Aether Industries','Freight',120000.0,70000.0,'45x20x18','Hybrid Power','Plasma Thrusters',2,50000.0,3000,'GPS/NavCom','UHF','Thermal Mesh','Carbon Nanotube',580.3,2155,'In Development','Eng. Lena Kor','ISO45001','http://aetherind.example/cargo','Optimized for bulk transport and low-cost operations');