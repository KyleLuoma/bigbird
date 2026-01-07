-- Table storing information about energy grid nodes
CREATE TABLE energy_grid_node (
    node_id INTEGER PRIMARY KEY,
    node_name TEXT,
    region TEXT,
    voltage_kv INTEGER,
    capacity_mw INTEGER,
    installation_date DATE,
    status TEXT,
    operator_company TEXT,
    latitude REAL,
    longitude REAL,
    maintenance_cycle_days INTEGER,
    last_maintenance_date DATE,
    next_maintenance_date DATE,
    transformer_type TEXT,
    substation_id INTEGER,
    contact_phone TEXT,
    contact_email TEXT,
    notes TEXT,
    redundancy_level INTEGER,
    climate_zone TEXT,
    backup_generator_present TEXT,
    renewable_percent REAL,
    grid_type TEXT
);
INSERT INTO energy_grid_node VALUES (1,'SolarGridAlpha','NorthSector',110,250,'2015-06-12','Active','EnergyCorp','45.1234','-93.4567',180,'2023-01-15','2023-07-15','StepDown','10','5551234567','contact@energycorp.com','Primary node','2','Temperate','Yes',35.5,'Transmission');
INSERT INTO energy_grid_node VALUES (2,'WindNodeBeta','EastSector',220,500,'2018-09-03','Active','WindPowerLtd','46.7890','-94.1234',365,'2023-02-20','2024-02-20','StepUp','12','5559876543','support@windpower.com','Secondary node','3','Coastal','No',65.0,'Distribution');
INSERT INTO energy_grid_node VALUES (3,'HydroStationGamma','SouthSector',330,800,'2012-03-21','Maintenance','HydroFlow','44.5678','-92.3456',730,'2023-03-01','2025-03-01','TransformerX','15','5552468101','info@hydroflow.com','Undergoing upgrade','1','Tropical','Yes',80.2,'Generation');

-- Table storing alien species registry information
CREATE TABLE alien_species_registry (
    species_id INTEGER PRIMARY KEY,
    species_name TEXT,
    classification TEXT,
    home_planet TEXT,
    average_lifespan_years INTEGER,
    avg_height_m REAL,
    avg_weight_kg REAL,
    language TEXT,
    diet TEXT,
    temperament TEXT,
    threat_level TEXT,
    first_contact_date DATE,
    discovered_by TEXT,
    habitat_type TEXT,
    planetary_system TEXT,
    has_telepathy TEXT,
    bio_tag TEXT,
    conservation_status TEXT,
    research_funding_million_usd REAL,
    primary_researcher TEXT,
    notes TEXT
);
INSERT INTO alien_species_registry VALUES (1,'Xelorian','Reptilian','Xelor','150','2.3','85','Xelish','Carnivore','Aggressive','High','2120-04-11','DrNova','Desert','Xeloran System','Yes','XR-01','Endangered',12.5,'DrKara','First contact during mining expedition');
INSERT INTO alien_species_registry VALUES (2,'Luminae','Avian','Luminara','80','1.5','30','Luminic','Herbivore','Passive','Low','2095-09-22','ProfSage','Forest','Luminara Cluster','No','LM-07','Stable',8.0,'DrMira','Observed migrating patterns');
INSERT INTO alien_species_registry VALUES (3,'Gromm','Mammalian','Grom','200','3.0','120','Gromtongue','Omnivore','Neutral','Medium','2130-12-05','CaptainRex','Mountain','Grom Peak System','Yes','GR-14','Vulnerable',15.3,'DrTalon','Discovered during high altitude survey');

-- Table storing schedule for cosmic artifact exhibits
CREATE TABLE cosmic_artifact_exhibit_schedule (
    exhibit_id INTEGER PRIMARY KEY,
    artifact_name TEXT,
    exhibit_start_date DATE,
    exhibit_end_date DATE,
    location_name TEXT,
    museum_id INTEGER,
    curator_name TEXT,
    security_level TEXT,
    insurance_value_usd REAL,
    display_case_type TEXT,
    lighting_type TEXT,
    climate_control_type TEXT,
    visitor_capacity_per_day INTEGER,
    ticket_price_usd REAL,
    sponsor_name TEXT,
    sponsor_amount_usd REAL,
    exhibit_theme TEXT,
    artifact_condition TEXT,
    restoration_status TEXT,
    notes TEXT
);
INSERT INTO cosmic_artifact_exhibit_schedule VALUES (1,'Starlight Scepter','2024-05-01','2024-10-31','Galactic Museum',101,'DrLumen','High',2500000,'ReinforcedGlass','LED','ClimateControlled',5000,25,'NovaCorp',500000,'Celestial Power','Excellent','Completed','Special lighting required');
INSERT INTO cosmic_artifact_exhibit_schedule VALUES (2,'Nebula Relic','2024-06-15','2024-12-15','Star Archive',102,'DrQuasar','Medium',1500000,'Acrylic','Spotlight','HumidityRegulated',3000,20,'StellarTech',300000,'Interstellar History','Good','InProgress','Needs additional security staff');
INSERT INTO cosmic_artifact_exhibit_schedule VALUES (3,'Quantum Core','2024-07-01','2025-01-01','Universe Hall',103,'DrPhoton','VeryHigh',5000000,'ForceField','Laser','TemperatureStable',7000,35,'QuantumInc',750000,'Fundamental Forces','Fair','Pending','Limited viewing slots');

-- Table storing metahuman clinic medical records
CREATE TABLE metahuman_clinic_record (
    record_id INTEGER PRIMARY KEY,
    metahuman_id INTEGER,
    patient_name TEXT,
    date_of_birth DATE,
    gender_id INTEGER,
    primary_power TEXT,
    secondary_power TEXT,
    blood_type TEXT,
    allergy_info TEXT,
    chronic_conditions TEXT,
    last_checkup_date DATE,
    next_appointment_date DATE,
    assigned_physician TEXT,
    clinic_branch_id INTEGER,
    insurance_provider TEXT,
    policy_number TEXT,
    emergency_contact_name TEXT,
    emergency_contact_phone TEXT,
    medical_history_summary TEXT,
    treatment_plan TEXT,
    notes TEXT
);
INSERT INTO metahuman_clinic_record VALUES (1,1001,'Astra Nova','1995-02-14',2,'Flight','Invisibility','O+','None','None','2023-11-20','2024-05-20','DrHelios','5','MediShield','MS12345','Liam Nova','5551112222','No prior incidents','Physical therapy for flight fatigue','Regular monitoring');
INSERT INTO metahuman_clinic_record VALUES (2,1002,'Titan Forge','1988-07-03',1,'Super Strength','Thermal Manipulation','A-','Metal','Chronic joint pain','2023-10-05','2024-04-05','DrVulcan','7','HealthPlus','HP98765','Mara Forge','5553334444','History of fractures','Strength conditioning program','Adjust training regimen');
INSERT INTO metahuman_clinic_record VALUES (3,1003,'Echo Whisper','2001-12-22',2,'Telepathy','Clairvoyance','B+','None','Anxiety','2023-12-01','2024-06-01','DrMentis','9','SecureHealth','SH56473','Kira Whisper','5557778888','Episodes of overload','Cognitive behavioral therapy','Monitor stress levels');

-- Table storing interstellar trade route metrics
CREATE TABLE interstellar_trade_route_metrics (
    route_id INTEGER PRIMARY KEY,
    route_name TEXT,
    origin_system TEXT,
    destination_system TEXT,
    distance_lightyears REAL,
    average_travel_time_days REAL,
    cargo_volume_teragrams REAL,
    trade_volume_usd REAL,
    tariff_rate_percent REAL,
    security_risk_level TEXT,
    number_of_stops INTEGER,
    last_inspection_date DATE,
    compliance_score REAL,
    regulatory_body TEXT,
    primary_cargo_type TEXT,
    secondary_cargo_type TEXT,
    route_status TEXT,
    last_update_timestamp DATETIME,
    notes TEXT,
    projected_growth_percent REAL
);
INSERT INTO interstellar_trade_route_metrics VALUES (1,'Silicon Passage','Alpha Centauri','Sirius','4.3','12.5','15.2','25000000','5.0','Medium',2,'2023-09-10',88.5,'Galactic Trade Authority','Electronics','Luxury Goods','Active','2023-12-01 10:30:00','Stable demand','3.2');
INSERT INTO interstellar_trade_route_metrics VALUES (2,'Nebula Corridor','Vega','Betelgeuse','7.8','20.0','22.5','38000000','7.5','High',3,'2023-08-22',75.0,'Interstellar Commerce Council','Minerals','Foodstuffs','Active','2023-12-01 11:45:00','Increasing security measures','2.8');
INSERT INTO interstellar_trade_route_metrics VALUES (3,'Quantum Loop','Proxima','Andromeda','12.0','30.0','30.0','50000000','6.0','Low',1,'2023-07-15',92.0,'Universal Trade Federation','Pharmaceuticals','Research Materials','Planned','2023-12-01 09:15:00','Awaiting regulatory approval','4.5');

-- Table storing virtual collectible marketplace transactions
CREATE TABLE virtual_collectible_marketplace_transactions (
    transaction_id INTEGER PRIMARY KEY,
    marketplace_id INTEGER,
    buyer_user_id INTEGER,
    seller_user_id INTEGER,
    collectible_id INTEGER,
    collectible_name TEXT,
    transaction_date DATE,
    price_usd REAL,
    currency TEXT,
    transaction_fee_usd REAL,
    payment_method TEXT,
    delivery_method TEXT,
    buyer_rating INTEGER,
    seller_rating INTEGER,
    dispute_flag TEXT,
    dispute_resolution_date DATE,
    blockchain_tx_hash TEXT,
    nft_metadata_url TEXT,
    platform_commission_percent REAL,
    notes TEXT
);
INSERT INTO virtual_collectible_marketplace_transactions VALUES (1,2001,5001,6001,30001,'Cosmic Dragon Card','2023-11-25',150.0,'USD',2.5,'CreditCard','DigitalTransfer',5,5,'No',NULL,'0xabc123def456','http://metadata.url/dragon','2.0','First sale of this edition');
INSERT INTO virtual_collectible_marketplace_transactions VALUES (2,2001,5002,6002,30002,'Starlight Sword','2023-11-28',200.0,'USD',3.0,'Crypto','DigitalTransfer',4,5,'Yes','2023-12-02','0xdef789ghi012','http://metadata.url/sword','2.5','Dispute over authenticity resolved');
INSERT INTO virtual_collectible_marketplace_transactions VALUES (3,2002,5003,6003,30003,'Nebula Shield','2023-12-01',180.0,'USD',2.8,'PayPal','DigitalTransfer',5,4,'No',NULL,'0xghi345jkl678','http://metadata.url/shield','2.2','High demand item');

-- Table storing logs of observed cosmic events
CREATE TABLE cosmic_event_observation_log (
    event_id INTEGER PRIMARY KEY,
    event_name TEXT,
    event_type TEXT,
    observation_date DATE,
    observatory_name TEXT,
    telescope_id INTEGER,
    right_ascension REAL,
    declination REAL,
    magnitude REAL,
    redshift REAL,
    wavelength_nm REAL,
    duration_seconds INTEGER,
    detection_method TEXT,
    data_quality_score REAL,
    analyst_name TEXT,
    report_url TEXT,
    follow_up_required TEXT,
    follow_up_date DATE,
    notes TEXT,
    publication_status TEXT
);
INSERT INTO cosmic_event_observation_log VALUES (1,'GRB210101','GammaRayBurst','2021-01-01','Deep Space Observatory',101,150.25,2.45,12.3,0.85,500,45,'Satellite','9.2','DrKeen','http://reports.org/grb210101','Yes','2021-02-01','Observed afterglow','Submitted');
INSERT INTO cosmic_event_observation_log VALUES (2,'Supernova2020X','Supernova','2020-06-15','Starfield Telescope',202,210.78,-5.32,14.0,0.03,650,120000,'Optical','8.5','DrLuna','http://reports.org/sn2020x','No',NULL,'No unusual spectra','Published');
INSERT INTO cosmic_event_observation_log VALUES (3,'FastRadioBurst7','FRB','2022-03-22','Radio Array One',303,95.12,12.87,20.0,0.0,1400,0.01,'Radio','9.0','DrPulse','http://reports.org/frb7','Yes','2022-04-10','Repeated bursts detected','In Review');

-- Table storing nanotech manufacturing batch information
CREATE TABLE nanotech_manufacturing_batch (
    batch_id INTEGER PRIMARY KEY,
    product_name TEXT,
    batch_number TEXT,
    production_start_date DATE,
    production_end_date DATE,
    facility_id INTEGER,
    facility_name TEXT,
    supervisor_name TEXT,
    total_units INTEGER,
    defect_rate_percent REAL,
    average_particle_size_nm REAL,
    material_composition TEXT,
    safety_protocol_version TEXT,
    quality_inspection_passed TEXT,
    inspection_date DATE,
    target_application TEXT,
    regulatory_approval_status TEXT,
    client_name TEXT,
    client_contact TEXT,
    notes TEXT,
    shipping_date DATE
);
INSERT INTO nanotech_manufacturing_batch VALUES (1,'NanoFilament','NF-001','2023-01-10','2023-01-20',401,'Quantum Fab','DrNano','50000',0.8,15.2,'CarbonFiber','v2.1','Yes','2023-01-22','Aerospace','Approved','AeroTech','5551110000','Batch met all specs','2023-01-25');
INSERT INTO nanotech_manufacturing_batch VALUES (2,'NanoSensor','NS-045','2023-02-05','2023-02-12',402,'NanoWorks','DrSensing','20000',1.2,8.7,'Silicon','v3.0','No','2023-02-15','Medical','Pending','MediHealth','5552223333','Requires additional testing','2023-02-20');
INSERT INTO nanotech_manufacturing_batch VALUES (3,'NanoCatalyst','NC-210','2023-03-01','2023-03-08',403,'Catalyst Labs','DrCatalyst','35000',0.5,5.0,'Platinum','v1.9','Yes','2023-03-10','Energy','Approved','EnergyCo','5553334444','High efficiency observed','2023-03-12');

-- Table storing galactic trade hub operations log
CREATE TABLE galactic_trade_hub_operations_log (
    log_id INTEGER PRIMARY KEY,
    hub_id INTEGER,
    operation_date DATE,
    operation_type TEXT,
    cargo_type TEXT,
    cargo_volume_kt REAL,
    revenue_usd REAL,
    expenses_usd REAL,
    net_profit_usd REAL,
    customs_officer_id INTEGER,
    security_officer_id INTEGER,
    incident_flag TEXT,
    incident_description TEXT,
    downtime_minutes INTEGER,
    maintenance_performed TEXT,
    staff_on_duty INTEGER,
    weather_condition TEXT,
    galactic_time_stamp DATETIME,
    notes TEXT,
    regulatory_compliance_score REAL
);
INSERT INTO galactic_trade_hub_operations_log VALUES (1,501,'2023-11-01','Import','Minerals',120.5,8000000,6000000,2000000,301,401,'No',NULL,0,'None',45,'Clear','2023-11-01 08:00:00','Smooth operation',95.5);
INSERT INTO galactic_trade_hub_operations_log VALUES (2,501,'2023-11-02','Export','Technology',75.3,9500000,6500000,3000000,302,402,'Yes','Minor customs discrepancy',15,'System check',42,'DustStorm','2023-11-02 09:30:00','Resolved quickly',93.2);
INSERT INTO galactic_trade_hub_operations_log VALUES (3,502,'2023-11-03','Transfer','Foodstuffs',200.0,5000000,3500000,1500000,303,403,'No',NULL,0,'Routine',50,'Clear','2023-11-03 07:45:00','High volume day',97.0);

-- Table storing multiverse narrative concept library
CREATE TABLE meta_universe_narrative_concept_library (
    concept_id INTEGER PRIMARY KEY,
    concept_name TEXT,
    description TEXT,
    originating_universe TEXT,
    first_appearance_issue TEXT,
    related_characters TEXT,
    thematic_category TEXT,
    complexity_level INTEGER,
    author_name TEXT,
    creation_date DATE,
    last_updated_date DATE,
    popularity_score REAL,
    status TEXT,
    associated_story_arc TEXT,
    cross_universe_links TEXT,
    media_format TEXT,
    target_audience TEXT,
    estimated_story_length_pages INTEGER,
    development_stage TEXT,
    notes TEXT,
    references TEXT
);
INSERT INTO meta_universe_narrative_concept_library VALUES (1,'Temporal Paradox Loop','A storyline where actions in the past affect the future creating a loop','Universe-Alpha','Issue-12','HeroA, VillainX','Time Travel',8,'WriterOne','2022-05-10','2023-11-01',87.6,'Active','Arc-5','Universe-Beta, Universe-Gamma','Comic','Teens',45,'Draft','Explores causality','Ref-001');
INSERT INTO meta_universe_narrative_concept_library VALUES (2,'Quantum Soul Split','Concept about a hero's soul being divided across quantum states','Universe-Delta','Issue-4','HeroB','Quantum Mechanics',7,'WriterTwo','2021-08-22','2023-10-15',78.4,'Pending','Arc-2','Universe-Epsilon','GraphicNovel','Adults',60,'Outline','Potential for spin‑off','Ref-042');
INSERT INTO meta_universe_narrative_concept_library VALUES (3,'Interstellar Diplomacy','Narrative focusing on diplomatic relations between alien nations','Universe-Zeta','Issue-9','HeroC, AmbassadorY','Politics',6,'WriterThree','2023-01-05','2023-11-03',69.2','Active','Arc-9','Universe-Theta','WebSeries','YoungAdult',30,'InProgress','Highlights cultural exchange','Ref-078');