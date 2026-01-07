-- Quantum Field Experiment metadata
CREATE TABLE quantum_field_experiment (
    id INTEGER PRIMARY KEY,
    experiment_name TEXT,
    lead_scientist TEXT,
    start_date TEXT,
    end_date TEXT,
    field_strength REAL,
    frequency INTEGER,
    temperature REAL,
    pressure REAL,
    vacuum_level REAL,
    chamber_id INTEGER,
    sensor_count INTEGER,
    data_points_collected INTEGER,
    result_summary TEXT,
    status TEXT,
    funding_agency TEXT,
    budget_million REAL,
    location_id INTEGER,
    notes TEXT,
    confidentiality_level TEXT
);

INSERT INTO quantum_field_experiment (id,experiment_name,lead_scientist,start_date,end_date,field_strength,frequency,temperature,pressure,vacuum_level,chamber_id,sensor_count,data_points_collected,result_summary,status,funding_agency,budget_million,location_id,notes,confidentiality_level) VALUES
(1,'QFE Alpha','Dr Nova','2025-01-10','2025-02-15',5.6,1500,-20,101325,0.001,12,8,100000,'Success','Completed','SpaceScienceInstitute',2.0,5,'Initial test run','Public'),
(2,'QFE Beta','Dr Quark','2025-03-01','2025-04-20',7.2,1800,5,100000,0.0008,14,10,150000,'Partial success','Ongoing','QuantumResearchCouncil',3.5,7,'Mid‑phase adjustments','Restricted'),
(3,'QFE Gamma','Dr Lepton','2025-05-05','2025-06-30',6.1,1600,0,102000,0.0012,16,12,120000,'Failed','Halted','AdvancedPhysicsFund',4.0,9,'Equipment failure','Confidential');

-- Galactic Artifact Inspection records
CREATE TABLE galactic_artifact_inspection (
    id INTEGER PRIMARY KEY,
    artifact_name TEXT,
    discovery_date TEXT,
    catalog_number TEXT,
    provenance TEXT,
    inspection_date TEXT,
    inspector_name TEXT,
    condition_rating INTEGER,
    material_type TEXT,
    dimensions_cm TEXT,
    weight_kg REAL,
    location_galaxy TEXT,
    sector TEXT,
    orbit TEXT,
    preservation_method TEXT,
    remarks TEXT,
    insurance_value_million REAL,
    storage_facility_id INTEGER,
    security_level TEXT,
    next_review_date TEXT
);

INSERT INTO galactic_artifact_inspection (id,artifact_name,discovery_date,catalog_number,provenance,inspection_date,inspector_name,condition_rating,material_type,dimensions_cm,weight_kg,location_galaxy,sector,orbit,preservation_method,remarks,insurance_value_million,storage_facility_id,security_level,next_review_date) VALUES
(1,'Celestial Scepter','2120-07-14','GAL-001','Ancient Terran','2125-01-20','Aria Kessler',9,'Alloy','45x10x10',120.5,'Andromeda','Sector 7','Stable','Cryogenic','Minor scratches',1.8,3,'High','2130-01-20'),
(2,'Nebula Cipher','2132-03-22','GAL-017','Unknown','2133-06-05','Milan Ortiz',7,'Crystal','30x30x5',45.2,'MilkyWay','Sector 4','Eccentric','Vacuum sealed','Surface etching',0.9,5,'Medium','2140-03-22'),
(3,'Starlight Core','2140-11-02','GAL-042','Derelict Ship','2145-09-15','Leena Patel',5,'Plasma','20x20x20',200.0,'Triangulum','Sector 2','Decaying','Magnetic field containment','Corrosion observed',2.5,8,'High','2150-11-02');

-- Heroic Narrative Archive
CREATE TABLE heroic_narrative_archive (
    id INTEGER PRIMARY KEY,
    narrative_title TEXT,
    hero_id INTEGER,
    author TEXT,
    creation_date TEXT,
    version INTEGER,
    genre TEXT,
    word_count INTEGER,
    language TEXT,
    summary TEXT,
    publication_status TEXT,
    archive_location TEXT,
    digitized_flag INTEGER,
    digitization_date TEXT,
    rights_holder TEXT,
    access_level TEXT,
    related_events TEXT,
    notes TEXT,
    revision_number INTEGER,
    rating INTEGER
);

INSERT INTO heroic_narrative_archive (id,narrative_title,hero_id,author,creation_date,version,genre,word_count,language,summary,publication_status,archive_location,digitized_flag,digitization_date,rights_holder,access_level,related_events,notes,revision_number,rating) VALUES
(1,'Origins of Light',101,'J. Marshall','2020-06-01',1,'Origin','85000','English','The early life of the beacon hero','Published','Vault A',1,'2021-01-15','Heroic Tales Ltd','Public','Event Alpha','First edition','1',5),
(2,'Shadows of the Past',102,'L. Vega','2021-09-12',2,'Mystery','72000','English','A hero confronts hidden enemies','In Review','Vault B',0,NULL,'Mystic Press','Restricted','Event Beta','Second draft','2',4),
(3,'Chronicles of Courage',103,'M. Patel','2019-03-22',3,'Adventure','95000','English','Epic battles across dimensions','Published','Vault C',1,'2020-02-10','Adventure House','Public','Event Gamma','Final version','3',5);

-- Metahuman Psychology Profile
CREATE TABLE metahuman_psychology_profile (
    id INTEGER PRIMARY KEY,
    metahuman_id INTEGER,
    assessment_date TEXT,
    psychologist_name TEXT,
    iq_score INTEGER,
    eq_score INTEGER,
    stress_level INTEGER,
    coping_mechanisms TEXT,
    trauma_history TEXT,
    moral_alignment TEXT,
    empathy_rating INTEGER,
    aggression_rating INTEGER,
    risk_factor INTEGER,
    treatment_plan TEXT,
    medication TEXT,
    therapy_sessions INTEGER,
    followup_date TEXT,
    notes TEXT,
    confidentiality TEXT,
    profile_version INTEGER
);

INSERT INTO metahuman_psychology_profile (id,metahuman_id,assessment_date,psychologist_name,iq_score,eq_score,stress_level,coping_mechanisms,trauma_history,moral_alignment,empathy_rating,aggression_rating,risk_factor,treatment_plan,medication,therapy_sessions,followup_date,notes,confidentiality,profile_version) VALUES
(1,201,'2024-01-15','Dr Selene','150','130','3','Meditation; Exercise','None','Lawful Good','9','2','Low','Cognitive therapy','None',12,'2024-07-15','Stable','Restricted',1),
(2,202,'2024-03-08','Dr Voss','140','115','5','Combat training','Warzone exposure','Chaotic Neutral','7','6','Medium','Stress management','Beta‑blocker',8,'2024-09-08','Fluctuating mood','Confidential',1),
(3,203,'2024-05-20','Dr Aria','160','140','2','Artistic expression','Childhood loss','Neutral Good','10','1','Low','Ongoing counseling','None',15,'2025-01-20','Positive outlook','Public',1);

-- Cosmic Heritage Registry
CREATE TABLE cosmic_heritage_registry (
    id INTEGER PRIMARY KEY,
    heritage_site_name TEXT,
    designation_date TEXT,
    site_type TEXT,
    galaxy TEXT,
    sector TEXT,
    coordinates_ra TEXT,
    coordinates_dec TEXT,
    discovery_year INTEGER,
    responsible_agency TEXT,
    preservation_status TEXT,
    visitor_capacity INTEGER,
    annual_visitors INTEGER,
    funding_source TEXT,
    management_plan TEXT,
    threat_level TEXT,
    climate_zone TEXT,
    access_restriction TEXT,
    notes TEXT,
    heritage_id_code TEXT
);

INSERT INTO cosmic_heritage_registry (id,heritage_site_name,designation_date,site_type,galaxy,sector,coordinates_ra,coordinates_dec,discovery_year,responsible_agency,preservation_status,visitor_capacity,annual_visitors,funding_source,management_plan,threat_level,climate_zone,access_restriction,notes,heritage_id_code) VALUES
(1,'Eclipse Temple','2150-04-12','Temple','Andromeda','Sector 3','13h22m','-45d12m',2148,'Galactic Heritage Council','Protected',5000,12000,'Interstellar Grants','Conservation','Low','Temperate','Open','Well‑preserved','HER-001'),
(2,'Starlight Cavern','2155-09-20','Cave','MilkyWay','Sector 9','02h15m','+30d45m',2152,'Planetary Archaeology Dept','Endangered',2000,3000,'Private Donor','Restoration','Medium','Arid','Controlled','Recent rockfalls','HER-017'),
(3,'Nebula Ruins','2160-12-05','Ruins','Triangulum','Sector 6','22h40m','-10d30m',2158,'Universal Preservation Agency','Critical',800,1500,'International Funding','Stabilization','High','Volatile','Restricted','Structural instability','HER-042');

-- Interdimensional Trade Analysis
CREATE TABLE interdimensional_trade_analysis (
    id INTEGER PRIMARY KEY,
    trade_route_id INTEGER,
    analysis_date TEXT,
    volume_units INTEGER,
    value_million REAL,
    primary_goods TEXT,
    secondary_goods TEXT,
    trade_partners TEXT,
    transit_time_days INTEGER,
    tariff_rate REAL,
    compliance_score INTEGER,
    risk_assessment TEXT,
    observations TEXT,
    analyst_name TEXT,
    report_version INTEGER,
    recommendations TEXT,
    data_source TEXT,
    confidence_level TEXT,
    notes TEXT,
    status TEXT
);

INSERT INTO interdimensional_trade_analysis (id,trade_route_id,analysis_date,volume_units,value_million,primary_goods,secondary_goods,trade_partners,transit_time_days,tariff_rate,compliance_score,risk_assessment,observations,analyst_name,report_version,recommendations,data_source,confidence_level,notes,status) VALUES
(1,301,'2024-02-10',50000,12.5,'Quantum Crystals','Meta‑Alloys','Realm A;Realm B',7,0.05,88,'Low','Smooth flow','Dr Kline',1,'Increase tariff on secondary goods','TradeLogs','High','No anomalies','Final'),
(2,302,'2024-04-18',72000,18.9,'Energy Cells','Exotic Matter','Realm C;Realm D',9,0.07,75,'Medium','Minor delays','Dr Novak',1,'Implement stricter compliance checks','PortRecords','Medium','Watch for piracy','Draft'),
(3,303,'2024-07-05',63000,15.2,'Bio‑Materials','Synthetic Food','Realm E;Realm F',8,0.06,80,'Low','Stable','Dr Sato',2,'Maintain current tariffs','AuditReports','High','All clear','Final');

-- Hyperdrive Maintenance Log
CREATE TABLE hyperdrive_maintenance_log (
    id INTEGER PRIMARY KEY,
    spacecraft_id INTEGER,
    hyperdrive_id INTEGER,
    maintenance_date TEXT,
    technician_name TEXT,
    hours_operated INTEGER,
    fuel_consumption_liters REAL,
    thrust_output_mn REAL,
    temperature_c REAL,
    vibration_level REAL,
    parts_replaced TEXT,
    software_version TEXT,
    diagnostics_passed INTEGER,
    notes TEXT,
    next_due_date TEXT,
    maintenance_type TEXT,
    cost_usd REAL,
    duration_hours INTEGER,
    safety_certified TEXT,
    log_entry_number INTEGER
);

INSERT INTO hyperdrive_maintenance_log (id,spacecraft_id,hyperdrive_id,maintenance_date,technician_name,hours_operated,fuel_consumption_liters,thrust_output_mn,temperature_c,vibration_level,parts_replaced,software_version,diagnostics_passed,notes,next_due_date,maintenance_type,cost_usd,duration_hours,safety_certified,log_entry_number) VALUES
(1,401,1,'2024-01-22','Ari Delgado',1500,2500.5,120.0,350,0.02,'Flux regulator; Cooling coil','v3.2',1,'All systems nominal','2024-07-22','Routine',45000.00,5,'Yes',1001),
(2,402,2,'2024-03-15','Mika Tanaka',1800,3000.0,130.5,360,0.025,'Magnetic shield','v3.4',1,'Replaced shield','2024-09-15','Preventive',52000.00,6,'Yes',1002),
(3,403,3,'2024-06-10','Liam O\'Connor',2100,3500.2,140.8,370,0.03,'Power coupler','v3.5',0,'Diagnostics failed, further analysis needed','2024-12-10','Corrective',60000.00,8,'No',1003);

-- Star System Observation
CREATE TABLE star_system_observation (
    id INTEGER PRIMARY KEY,
    system_name TEXT,
    observation_date TEXT,
    telescope_id INTEGER,
    observer_name TEXT,
    magnitude REAL,
    distance_ly REAL,
    spectral_type TEXT,
    exoplanet_count INTEGER,
    notable_features TEXT,
    data_quality TEXT,
    exposure_time_sec INTEGER,
    filter_used TEXT,
    notes TEXT,
    data_file_path TEXT,
    observation_status TEXT,
    climate_zone TEXT,
    galactic_latitude REAL,
    galactic_longitude REAL,
    observation_batch TEXT
);

INSERT INTO star_system_observation (id,system_name,observation_date,telescope_id,observer_name,magnitude,distance_ly,spectral_type,exoplanet_count,notable_features,data_quality,exposure_time_sec,filter_used,notes,data_file_path,observation_status,climate_zone,galactic_latitude,galactic_longitude,observation_batch) VALUES
(1,'Alpha Centauri','2024-02-01',11,'Dr Hsu',-0.27,4.37,'G2V',2,'Binary system','High',1200,'V','Clear night','/data/alpha_centauri_20240201.fits','Completed','Temperate',-60.5,90.2','Batch-A'),
(2,'Proxima b','2024-04-12',12,'Dr Patel',11.13,4.24,'M5.5V',1,'Potential habitability','Medium',1800,'R','Slight atmospheric interference','/data/proxima_b_20240412.fits','Completed','Cold',-85.3,101.4','Batch-B'),
(3,'TRAPPIST-1','2024-07-20',13,'Dr Romero',18.80,39.6,'M8V',7,'Compact system','Low',2400,'I','Cloud cover','/data/trappist1_20240720.fits','Pending','Cold',-45.0,120.0','Batch-C');

-- Spacecraft Design Specification
CREATE TABLE spacecraft_design_spec (
    id INTEGER PRIMARY KEY,
    spacecraft_name TEXT,
    manufacturer TEXT,
    launch_date TEXT,
    dry_mass_kg REAL,
    payload_capacity_kg REAL,
    dimensions_m TEXT,
    crew_capacity INTEGER,
    propulsion_type TEXT,
    max_speed_km_s REAL,
    fuel_type TEXT,
    power_output_kw REAL,
    avionics_suite TEXT,
    communication_band TEXT,
    shielding_material TEXT,
    thermal_control TEXT,
    mission_type TEXT,
    design_version INTEGER,
    certification_status TEXT,
    notes TEXT
);

INSERT INTO spacecraft_design_spec (id,spacecraft_name,manufacturer,launch_date,dry_mass_kg,payload_capacity_kg,dimensions_m,crew_capacity,propulsion_type,max_speed_km_s,fuel_type,power_output_kw,avionics_suite,communication_band,shielding_material,thermal_control,mission_type,design_version,certification_status,notes) VALUES
(1,'Vanguard I','Stellar Works','2030-05-14',8500,12000,'30x10x8',6,'Ion Thruster',45.0,'Deuterium','2500','AeroNav v5','X‑Band','Tungsten','Active coolant','Exploration',3,'Certified','First of its class'),
(2,'Odyssey X','Nova Industries','2032-11-22',9500,15000,'35x12x9',8,'Fusion Drive',55.2,'Helium‑3','3000','NavPro v2','Ka‑Band','Composite','Radiative panels','Colonization',2,'Pending','Upgrade scheduled 2035'),
(3,'Sentinel Prime','Quantum Forge','2035-08-30',10200,18000,'40x14x10',10,'Antimatter Engine',70.5,'Antimatter','4000','QuantumNav v1','Ku‑Band','Graphene','Cryogenic','Research',1,'Certified','Experimental propulsion');

-- Multiverse Policy Document
CREATE TABLE multiverse_policy_document (
    id INTEGER PRIMARY KEY,
    policy_name TEXT,
    version INTEGER,
    effective_date TEXT,
    authoring_body TEXT,
    jurisdiction TEXT,
    scope TEXT,
    summary TEXT,
    amendment_number INTEGER,
    review_cycle_years INTEGER,
    compliance_requirements TEXT,
    enforcement_agency TEXT,
    penalty_structure TEXT,
    related_laws TEXT,
    public_comment_period_days INTEGER,
    status TEXT,
    last_review_date TEXT,
    next_review_date TEXT,
    attachment_path TEXT,
    notes TEXT
);

INSERT INTO multiverse_policy_document (id,policy_name,version,effective_date,authoring_body,jurisdiction,scope,summary,amendment_number,review_cycle_years,compliance_requirements,enforcement_agency,penalty_structure,related_laws,public_comment_period_days,status,last_review_date,next_review_date,attachment_path,notes) VALUES
(1,'Interdimensional Trade Regulation','2','2130-01-01','Galactic Trade Council','Multiverse','Trade between realms','Standardizes tariffs and safety','1',5,'Register all shipments','Trade Enforcement Agency','Fines up to 5% of value','Trade Act 2120',60,'Active','2135-01-01','2140-01-01','/docs/trade_reg_2130_v2.pdf','Reviewed annually'),
(2,'Metahuman Rights Charter','1','2145-06-15','Universal Rights Committee','All Domains','Rights of metahumans','Ensures equal treatment and protection','0',10,'No discrimination','Rights Oversight Board','Sanctions and revocation of licenses','Rights Act 2140',90,'Pending','2150-06-15','2155-06-15','/docs/rights_charter_2145.pdf','Awaiting ratification'),
(3,'Cosmic Environmental Protection Policy','3','2125-03-20','Celestial Conservation Authority','MilkyWay Galaxy','Protection of planetary ecosystems','Limits extraction and pollution','2',7,'Environmental impact assessments required','Enviro Enforcement Unit','Fines and operation shutdowns','Environmental Act 2120',45,'Active','2132-03-20','2139-03-20','/docs/env_protection_2125_v3.pdf','Amendment 2 added climate clauses');

