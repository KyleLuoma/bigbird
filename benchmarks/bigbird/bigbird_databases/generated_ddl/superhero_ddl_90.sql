-- City infrastructure projects
CREATE TABLE city_infrastructure_project (
    id INTEGER PRIMARY KEY,
    project_name TEXT,
    start_date INTEGER,
    end_date INTEGER,
    budget_million DECIMAL(10,2),
    status TEXT,
    contractor_name TEXT,
    region_code TEXT,
    project_type TEXT,
    estimated_jobs INTEGER,
    public_transport INTEGER,
    green_certification TEXT,
    permits_obtained INTEGER,
    risk_level TEXT,
    stakeholder_count INTEGER,
    primary_contact TEXT,
    contact_email TEXT,
    latitude REAL,
    longitude REAL,
    notes TEXT
);

INSERT INTO city_infrastructure_project VALUES (1,'Downtown Bridge Replacement',20230115,20250630,250.75,'In Progress','BuildCo Ltd','NE01','Bridge',1200,0,'Gold',5,'Medium',8,'John Doe','jdoe@example.com',40.7128,-74.0060,'Critical for traffic flow');
INSERT INTO city_infrastructure_project VALUES (2,'Eastside Light Rail',20220701,20241231,540.00,'Planned','TransitWorks','SW02','Rail',3000,1,'Platinum',7,'High',12,'Jane Smith','jsmith@example.com',34.0522,-118.2437,'Phase 1 includes 12 stations');
INSERT INTO city_infrastructure_project VALUES (3,'River Flood Barrier',20210401,20230930,180.35,'Completed','HydroBuild','MW03','Barrier',850,0,'Silver',4,'Low',5,'Mike Brown','mbrown@example.com',41.8781,-87.6298,'Successfully reduced flood risk');

-- Biotech clinical trials
CREATE TABLE biotech_clinical_trial (
    trial_id INTEGER PRIMARY KEY,
    trial_name TEXT,
    sponsor_company TEXT,
    therapeutic_area TEXT,
    phase INTEGER,
    start_date INTEGER,
    end_date INTEGER,
    enrollment_target INTEGER,
    actual_enrollment INTEGER,
    primary_endpoint TEXT,
    secondary_endpoint TEXT,
    randomization_method TEXT,
    blinding TEXT,
    site_count INTEGER,
    investigator_lead TEXT,
    data_monitoring_committee INTEGER,
    regulatory_status TEXT,
    adverse_event_rate DECIMAL(5,2),
    funding_amount_million DECIMAL(12,2),
    trial_status TEXT,
    notes TEXT,
    last_update INTEGER,
    ethics_approval INTEGER,
    trial_design TEXT,
    inclusion_criteria TEXT,
    exclusion_criteria TEXT
);

INSERT INTO biotech_clinical_trial VALUES (101,'AlphaBeta Immunotherapy','Genexia','Oncology',2,20220101,20231231,200,185,'Overall Survival','Progression Free Survival','Block Randomization','Double Blind',25,'Dr Alice Green',1,'Pending',3.45,12.50,'Recruiting','Midway review',20230715,1,'Parallel','Adults 18-75','Prior chemo required');
INSERT INTO biotech_clinical_trial VALUES (102,'NeuroGuard Study','NeuroPharm','Neurology',3,20201001,20240930,150,150,'Cognitive Score Change','MRI Lesion Count','Stratified Randomization','Single Blind',18,'Dr Bob Lee',1,'Approved',1.20,8.00,'Active','Data locked',20230801,1,'Crossover','Mild to moderate AD','Severe comorbidities');
INSERT INTO biotech_clinical_trial VALUES (103,'CardioPulse Trial','CardioLife','Cardiology',1,20230501,20251231,300,0,'Blood Pressure Reduction','Heart Rate Variability','Simple Random','Open Label',10,'Dr Carol Wu',0,'Pending',0.00,5.75,'Not Started','Protocol finalized',20230720,0,'Single Arm','Adults 40-65','Recent MI excluded');

-- Renewable energy farms
CREATE TABLE renewable_energy_farm (
    farm_id INTEGER PRIMARY KEY,
    farm_name TEXT,
    energy_type TEXT,
    location_city TEXT,
    location_state TEXT,
    latitude REAL,
    longitude REAL,
    commissioning_date INTEGER,
    capacity_mw DECIMAL(8,2),
    number_of_turbines INTEGER,
    turbine_model TEXT,
    average_capacity_factor DECIMAL(5,2),
    land_area_hectares DECIMAL(10,2),
    grid_connection_status TEXT,
    owner_company TEXT,
    operation_status TEXT,
    maintenance_contract INTEGER,
    annual_generation_gwh DECIMAL(10,2),
    carbon_offset_tonnes INTEGER,
    financing_type TEXT,
    interest_rate_percent DECIMAL(4,2),
    payback_years DECIMAL(5,2),
    notes TEXT,
    last_inspection INTEGER,
    regulatory_compliance INTEGER,
    renewable_energy_certificate INTEGER,
    community_benefit_program TEXT
);

INSERT INTO renewable_energy_farm VALUES (301,'Sunrise Solar Park','Solar','Phoenix','AZ',33.4484,-112.0740,20210701,150.00,0,'N/A',22.50,500.00,'Connected','SolarPower Inc','Operating',1,330.00,0,'Debt',3.75,9.00,'No issues','20230615',1,1,'Local schools program');
INSERT INTO renewable_energy_farm VALUES (302,'Windridge Wind Farm','Wind','Duluth','MN',46.7867,-92.1005,20190520,80.00,40,'Vestas V150',35.20,400.00,'Connected','WindCo Ltd','Operating',1,280.00,120000,'Equity',5.10,12.50,'Routine maintenance','20230710',1,1,'Community health grant');
INSERT INTO renewable_energy_farm VALUES (303,'HydroFlow Plant','Hydro','Portland','ME',43.6591,-70.2568,20180315,25.00,0,'Francis Turbine',45.00,150.00,'Connected','RiverEnergy','Operating',0,110.00,50000,'Public Funding',2.60,8.00,'Pending upgrades','20230120',1,1,'Fish habitat restoration');

-- Planetary geology surveys
CREATE TABLE planetary_geology_survey (
    survey_id INTEGER PRIMARY KEY,
    planet_name TEXT,
    region_name TEXT,
    latitude REAL,
    longitude REAL,
    start_date INTEGER,
    end_date INTEGER,
    instrument TEXT,
    sample_type TEXT,
    sample_weight_grams DECIMAL(8,3),
    mineral_composition TEXT,
    rock_age_million_years DECIMAL(6,1),
    volcanic_activity BOOLEAN,
    tectonic_features TEXT,
    dust_storm_occurrence INTEGER,
    magnetic_field_strength_nT DECIMAL(7,2),
    gravity_anomaly_mGal DECIMAL(6,2),
    data_volume_gb DECIMAL(9,2),
    principal_scientist TEXT,
    funding_agency TEXT,
    mission_phase TEXT,
    notes TEXT,
    data_release_date INTEGER,
    peer_reviewed INTEGER,
    mission_name TEXT,
    orbit_type TEXT,
    landing_status TEXT
);

INSERT INTO planetary_geology_survey VALUES (401,'Mars','Valles Marineris',-14.6, -75.0,20200101,20201231,'Spectrometer','Rock','250.500','Silica,Iron Oxide',4200.0,0,'Fault Lines','2',350.12,0.45,1250.75,'Dr Emily Reed','NASA','Cruise','High dust environment',20210215,1,'Ares III','Elliptical','No Landing');
INSERT INTO planetary_geology_survey VALUES (402,'Moon','Mare Imbrium',32.5, -15.0,20190415,20190730,'Drill','Regolith','120.000','Basaltic',3500.0,0,'Impact Basin','0',450.00,0.80,800.50,'Dr Luis Ortega','ESA','Landing','Sample collected',20191001,1,'Luna 24','Polar','Landed');
INSERT INTO planetary_geology_survey VALUES (403,'Venus','Aphrodite Terra',5.2, 30.0,20210501,20210820,'Radar','Atmospheric','0.000','Sulfuric Acid Clouds',0.0,1,'Tectonic Ridges','5',250.00,1.20,950.30,'Dr Aisha Khan','JAXA','Atmospheric','Thick cloud cover',20211005,0,'Venera 2','Circular','No Landing');

-- Financial market indices
CREATE TABLE financial_market_index (
    index_id INTEGER PRIMARY KEY,
    index_name TEXT,
    ticker_symbol TEXT,
    region TEXT,
    currency TEXT,
    launch_date INTEGER,
    base_value DECIMAL(12,2),
    current_value DECIMAL(12,2),
    market_capitalization_billion DECIMAL(12,2),
    number_of_constituents INTEGER,
    sector_weighting TEXT,
    pe_ratio DECIMAL(6,2),
    dividend_yield_percent DECIMAL(5,2),
    average_daily_volume_million DECIMAL(8,2),
    volatility_index DECIMAL(5,2),
    last_update INTEGER,
    data_source TEXT,
    annual_return_percent DECIMAL(5,2),
    tracking_error_percent DECIMAL(5,2),
    expense_ratio_percent DECIMAL(4,2),
    fund_type TEXT,
    benchmark_index TEXT,
    notes TEXT,
    commission_free INTEGER,
    taxable INTEGER,
    liquidity_rating INTEGER,
    ESG_score INTEGER,
    inception_date INTEGER,
    rebalancing_frequency TEXT,
    currency_hedged INTEGER
);

INSERT INTO financial_market_index VALUES (501,'Global Tech Index','GTI','Global','USD',20050101,1000.00,1450.32,3500.00,250,'Technology',28.45,1.20,45.30,12.50,20230720,'Bloomberg',12.50,0.30,0.10,'ETF','S&P 500','Broad tech exposure',1,0,9,85,20050101,'Quarterly',0);
INSERT INTO financial_market_index VALUES (502,'Emerging Markets Bond','EMB','Emerging','USD',20100115,85.00,92.15,500.00,120,'Bonds',15.30,2.80,30.10,8.70,20230718,'Refinitiv',5.20,0.45,0.25,'Mutual Fund','JPMorgan Emerging Bond Index','Fixed income focus',0,1,7,70,20100115,'Monthly',1);
INSERT INTO financial_market_index VALUES (503,'Sustainable Energy Index','SEI','Europe','EUR',20150630,200.00,210.55,1800.00,90,'Renewable Energy',22.10,0.90,20.45,10.30,20230719,'Morningstar',8.35,0.20,0.15,'ETF','Euro Stoxx Green Energy','Eco‑focused equities',1,0,8,92,20150630,'Semi‑Annual',0);

-- University course catalog
CREATE TABLE university_course_catalog (
    course_id INTEGER PRIMARY KEY,
    course_code TEXT,
    course_title TEXT,
    department TEXT,
    credit_hours INTEGER,
    level TEXT,
    semester_offered TEXT,
    instructor_name TEXT,
    instructor_email TEXT,
    max_enrollment INTEGER,
    current_enrollment INTEGER,
    prerequisite_course TEXT,
    corequisite_course TEXT,
    lecture_hours_per_week INTEGER,
    lab_hours_per_week INTEGER,
    classroom TEXT,
    campus TEXT,
    delivery_mode TEXT,
    syllabus_url TEXT,
    assessment_method TEXT,
    final_exam_date INTEGER,
    grading_scale TEXT,
    language_of_instruction TEXT,
    accreditation TEXT,
    notes TEXT,
    last_updated INTEGER,
    archived INTEGER,
    tuition_fee_usd DECIMAL(10,2),
    scholarship_available INTEGER,
    online_platform TEXT,
    evaluation_weight_percent DECIMAL(5,2)
);

INSERT INTO university_course_catalog VALUES (601,'CS101','Introduction to Computer Science','Computer Science',3,'Undergraduate','Fall','Dr Alice Nguyen','anguyen@univ.edu',150,140,'None','None',3,0,'Room 212','Main Campus','In Person','http://univ.edu/cs101/syllabus','Assignments, Exams',20231215,'A-F','English','ABET','Fundamental programming concepts',20230701,0,1500.00,1,'Canvas',40.00);
INSERT INTO university_course_catalog VALUES (602,'BIO250','Molecular Genetics','Biology',4,'Undergraduate','Spring','Dr Brian Patel','bpatel@univ.edu',80,75,'BIO150','BIO200',2,2,'Lab 5','Science Campus','Hybrid','http://univ.edu/bio250/syllabus','Lab Reports, Exams',20250520,'A-F','English','ACS','Focus on DNA sequencing',20230702,0,1800.00,0,'Moodle',45.00);
INSERT INTO university_course_catalog VALUES (603,'ENG410','Shakespearean Drama','English',3,'Graduate','Fall','Prof Clara Lee','clee@univ.edu',30,28,'ENG300','ENG350',2,0,'Room 101','Humanities Campus','In Person','http://univ.edu/eng410/syllabus','Essays, Presentations',20231210,'A-F','English','NA','Advanced textual analysis',20230703,0,2200.00,0,'Blackboard',50.00);

-- Aerospace manufacturing facilities
CREATE TABLE aerospace_manufacturing_facility (
    facility_id INTEGER PRIMARY KEY,
    facility_name TEXT,
    location_city TEXT,
    location_state TEXT,
    latitude REAL,
    longitude REAL,
    opening_date INTEGER,
    total_employees INTEGER,
    annual_production_units INTEGER,
    primary_product TEXT,
    secondary_product TEXT,
    assembly_line_count INTEGER,
    cleanroom_class TEXT,
    CNC_machines INTEGER,
    3d_printer_units INTEGER,
    testing_facilities TEXT,
    certification_status TEXT,
    owner_company TEXT,
    operating_hours_per_day INTEGER,
    average_shift_length_hours INTEGER,
    labor_union_presence INTEGER,
    safety_incidents_last_year INTEGER,
    environmental_compliance INTEGER,
    waste_recycling_rate_percent DECIMAL(5,2),
    energy_consumption_mwh DECIMAL(9,2),
    next_upgrade_year INTEGER,
    notes TEXT,
    last_audit INTEGER,
    quality_management_system TEXT,
    ISO_certificate INTEGER,
    ERP_system TEXT
);

INSERT INTO aerospace_manufacturing_facility VALUES (701,'AeroForge Plant','Seattle','WA',47.6062,-122.3321,20100115,1200,5000,'Fuselage','Engine Components',4,'Class 1000',85,12,'Wind Tunnel, Vibration Test','AS9100D','SkyWorks Corp',24,8,1,3,1,78.50,25000.00,2025,'Expansion planned for composite wing sections',20230710,'Six Sigma',1,'SAP');
INSERT INTO aerospace_manufacturing_facility VALUES (702,'Celestial Dynamics Facility','Toulouse','FR',43.6047,1.4442,20051201,850,3000,'Satellite Bus','Payload Modules',3,'Class 10000',60,8,'Thermal Vacuum Chamber','ISO 14001','Airbus Space','20',8,0,1,65.30,18000.00,2024,'Automation upgrade for robotics',20230708,'Lean Manufacturing',0,'Oracle');
INSERT INTO aerospace_manufacturing_facility VALUES (703,'Orbital Engines Works','Henderson','NV',36.0395,-115.1800,20150620,600,1500,'Rocket Engines','Propulsion Systems',2,'Class 100',45,5,'Static Fire Test Stand','AS9100D','SpaceX','24',10,1,0,1,55.20,13000.00,2026,'Introduced new additive manufacturing line',20230712,'ISO 9001',1,'Infor');

-- Environmental monitoring stations
CREATE TABLE environmental_monitoring_station (
    station_id INTEGER PRIMARY KEY,
    station_name TEXT,
    latitude REAL,
    longitude REAL,
    elevation_meters INTEGER,
    installation_date INTEGER,
    agency_responsible TEXT,
    primary_parameter TEXT,
    secondary_parameter TEXT,
    measurement_interval_minutes INTEGER,
    data_quality_flag INTEGER,
    calibration_date INTEGER,
    sensor_type TEXT,
    power_source TEXT,
    communication_method TEXT,
    maintenance_frequency_days INTEGER,
    last_maintenance_date INTEGER,
    data_access_url TEXT,
    annual_data_points INTEGER,
    average_temperature_c DECIMAL(5,2),
    average_humidity_percent DECIMAL(5,2),
    pm2_5_ug_m3 DECIMAL(6,2),
    noise_level_db DECIMAL(5,2),
    notes TEXT,
    operational_status TEXT,
    funding_source TEXT,
    budget_usd DECIMAL(10,2),
    compliance_status TEXT,
    next_inspection_date INTEGER,
    remote_monitoring_capability INTEGER
);

INSERT INTO environmental_monitoring_station VALUES (801,'Coastal Air Quality Node','34.0195','-118.4912',15,20210101,'EPA','PM2.5','NO2',60,1,20230601,'Optical','Solar','Cellular',30,20230615,'http://envdata.gov/coastal','525600','19.80','68.50','12.30','55.00','Coastal urban monitoring', 'Active','Federal Grant',250000.00,'Compliant',20240701,1);
INSERT INTO environmental_monitoring_station VALUES (802,'Mountain Watershed Station','39.7392','-105.9903',2100,20190515,'USGS','Streamflow','Temperature',15,1,20230220,'Acoustic','Wind','Satellite',90,20230510,'http://usgs.gov/mountain','350400','2.50','80.20','0.00','45.00','High altitude hydrology', 'Active','State Funding',180000.00,'Compliant',20240615,1);
INSERT INTO environmental_monitoring_station VALUES (803,'Desert Solar Radiation','33.4484','-112.0740',331,20200630,'NASA','Solar Irradiance','UV Index',10,1,20230505,'Photodiode','Solar','Radio',60,20230620,'http://nasa.gov/desert','87600','45.20','20.10','0.00','30.00','Arid region solar monitoring', 'Active','Research Grant',120000.00,'Compliant',20240520,1);

-- Interstellar communication hubs
CREATE TABLE interstellar_communication_hub (
    hub_id INTEGER PRIMARY KEY,
    hub_name TEXT,
    system_name TEXT,
    star_class TEXT,
    coordinates_x DECIMAL(12,6),
    coordinates_y DECIMAL(12,6),
    coordinates_z DECIMAL(12,6),
    launch_date INTEGER,
    operational_status TEXT,
    frequency_band TEXT,
    bandwidth_mhz DECIMAL(8,2),
    antenna_diameter_m INTEGER,
    power_output_mw DECIMAL(10,2),
    redundancy_level INTEGER,
    ground_control_center TEXT,
    data_latency_seconds DECIMAL(6,2),
    encryption_protocol TEXT,
    maintenance_cycle_days INTEGER,
    last_maintenance_date INTEGER,
    next_upgrade_plan TEXT,
    funding_agency TEXT,
    total_transmissions INTEGER,
    avg_uplink_rate_mbps DECIMAL(7,2),
    avg_downlink_rate_mbps DECIMAL(7,2),
    error_rate_percent DECIMAL(5,2),
    notes TEXT,
    regulatory_compliance INTEGER,
    contact_email TEXT,
    firmware_version TEXT,
    solar_panel_efficiency_percent DECIMAL(5,2),
    adaptive_beamforming INTEGER
);

INSERT INTO interstellar_communication_hub VALUES (901,'Alpha Relay','Alpha Centauri System','G2V',-1.234567,2.345678,3.456789,20231201,'Active','X‑band',1500.00,45,250.00,2,'Earth Control Center',2.50,'AES‑256',180,20230701,'Quantum Amplifier Integration','ESA',1250000,250.00,240.00,0.02,'Key node for interstellar messaging',1,'relay@esa.int','v3.2',92.5,1);
INSERT INTO interstellar_communication_hub VALUES (902,'Beta Beacon','Proxima Centauri System','M5V',4.567890,-3.210987,0.123456,20240515,'Commissioning','Ka‑band',1200.00,30,180.00,1,'Mars Operations',3.10,'RSA‑1024',210,20230710,'Advanced Phased Array','NASA',800000,200.00,190.00,0.03,'Supports deep‑space probes',1,'beacon@nasa.gov','v2.8',88.0,0);
INSERT INTO interstellar_communication_hub VALUES (903,'Gamma Outpost','Sirius System','A1V',-5.678901,1.234567,-2.345678,20250820,'Planned','Ka‑band',1300.00,35,210.00,3,'Luna Relay Station',2.80,'ECC‑256',150,20230715,'Energy Storage Upgrade','JAXA',950000,225.00,215.00,0.01,'Future hub for solar system expansion',0,'outpost@jaxa.jp','v1.5',90.0,1);

-- Digital artifact repositories
CREATE TABLE digital_artifact_repository (
    artifact_id INTEGER PRIMARY KEY,
    title TEXT,
    creator TEXT,
    creation_year INTEGER,
    media_type TEXT,
    format TEXT,
    file_size_mb DECIMAL(8,2),
    resolution TEXT,
    color_space TEXT,
    checksum TEXT,
    accession_number TEXT,
    collection_name TEXT,
    rights_status TEXT,
    license_type TEXT,
    public_domain BOOLEAN,
    description TEXT,
    geographic_origin TEXT,
    language TEXT,
    subject_keywords TEXT,
    preservation_status TEXT,
    storage_location TEXT,
    backup_location TEXT,
    last_accessed INTEGER,
    last_modified INTEGER,
    digitization_date INTEGER,
    curator_name TEXT,
    funding_source TEXT,
    notes TEXT,
    digital_object_identifier TEXT,
    access_restrictions TEXT,
    usage_statistics INTEGER,
    metadata_standard TEXT,
    linked_resources TEXT
);

INSERT INTO digital_artifact_repository VALUES (1001,'Golden Age Comic Cover','John Doe',1935,'Image','TIFF',12.45,'3000x4000','CMYK','ABC123DEF456','ACC-0001','Golden Age Comics','Restricted','Standard','0','First issue of popular hero','New York, USA','English','hero, comic, cover','Preserved','Vault A','Backup A',20230701,20230620,20230701,'Sarah Lee','Heritage Grant','Stored in climate controlled vault','10.1234/ga001','None',1500,'METS','http://archive.org/ga001');
INSERT INTO digital_artifact_repository VALUES (1002,'Concept Art Sketch','Jane Smith',2020,'Image','PNG',5.20,'1024x768','RGB','XYZ789GHI012','ACC-0002','Concept Art Collection','Open','Creative Commons','1','Early design of new superhero','Los Angeles, USA','English','concept, sketch, superhero','Preserved','Digital Archive','Backup B',20230702,20230701,20230702,'Michael Chen','Studio Funding','Used for promotional material','10.1234/ca002','None',800,'METS','http://archive.org/ca002');
INSERT INTO digital_artifact_repository VALUES (1003,'Audio Interview','Alex Roe',2018,'Audio','WAV',45.00,'N/A','N/A','LMN456OPQ789','ACC-0003','Oral History Archive','Restricted','Standard','0','Interview with original creator','London, UK','English','interview, creator, history','Preserved','Audio Vault','Backup C',20230703,20230702,20230703,'Emily Davis','Cultural Grant','Digitized from analog tape','10.1234/ai003','Restricted',250,'METS','http://archive.org/ai003');