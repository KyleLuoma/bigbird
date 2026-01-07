-- Planetary Climate Record
CREATE TABLE planetary_climate_record
(
    record_id               INTEGER PRIMARY KEY,
    planet_name             TEXT,
    year_recorded           INTEGER,
    avg_temp_c              REAL,
    max_temp_c              REAL,
    min_temp_c              REAL,
    precipitation_mm        REAL,
    humidity_percent        REAL,
    wind_speed_kmh          REAL,
    solar_radiation_wm2     REAL,
    co2_ppm                 REAL,
    methane_ppb             REAL,
    ozone_du                REAL,
    albedo                  REAL,
    surface_pressure_pa    REAL,
    ice_coverage_percent   REAL,
    dust_storm_occurrence  INTEGER,
    greenhouse_effect_index REAL,
    climate_zone            TEXT,
    notes                   TEXT
);
INSERT INTO planetary_climate_record VALUES (1,'Mars',2120,-55.0,-20.0,-90.0,1.2,30.0,5.0,590.0,950.0,0.5,300.0,0.15,610.0,80.0,0,1.2,'Polar','Initial record');
INSERT INTO planetary_climate_record VALUES (2,'Venus',2120,462.0,465.0,460.0,0.0,95.0,3.5,2600.0,920000.0,0.0,0.0,0.7,9200000.0,0.0,0,2.5,'Tropical','Thick atmosphere');
INSERT INTO planetary_climate_record VALUES (3,'Kepler186f',2120,22.5,30.0,15.0,12.3,55.0,12.0,180.0,380.0,1.2,250.0,0.32,101325.0,10.0,1,0.9,'Temperate','First exoplanet record');

-- Quantum Computing Node
CREATE TABLE quantum_computing_node
(
    node_id                 INTEGER PRIMARY KEY,
    node_name               TEXT,
    location                TEXT,
    cpu_cores               INTEGER,
    gpu_cores               INTEGER,
    ram_gb                  REAL,
    storage_tb              REAL,
    network_bandwidth_gbps  REAL,
    operating_system        TEXT,
    firmware_version        TEXT,
    uptime_days             INTEGER,
    last_maintenance_date   TEXT,
    power_consumption_kw   REAL,
    cooling_system          TEXT,
    security_level          TEXT,
    virtualization_enabled  INTEGER,
    max_job_queue           INTEGER,
    current_job_queue       INTEGER,
    temperature_c           REAL,
    error_rate_percent      REAL
);
INSERT INTO quantum_computing_node VALUES (101,'QNodeAlpha','SectorA',32,8,256.0,4.0,40.0,'Linux','v1.2.3',120,'2025-06-01',12.5,'Liquid', 'High',1,500,120,22.5,0.02);
INSERT INTO quantum_computing_node VALUES (102,'QNodeBeta','SectorB',24,4,128.0,2.0,25.0,'Linux','v1.3.0',85,'2025-04-15',9.8,'Cryo','Medium',0,300,80,19.0,0.05);
INSERT INTO quantum_computing_node VALUES (103,'QNodeGamma','SectorC',48,16,512.0,8.0,60.0,'Linux','v2.0.0',200,'2025-07-20',15.0,'Hybrid','Critical',1,800,250,24.0,0.01);

-- Alien Biome Survey
CREATE TABLE alien_biome_survey
(
    survey_id               INTEGER PRIMARY KEY,
    biome_name              TEXT,
    planet                  TEXT,
    region                  TEXT,
    dominant_flora          TEXT,
    dominant_fauna          TEXT,
    average_height_m       REAL,
    average_temperature_c  REAL,
    humidity_percent        REAL,
    soil_composition        TEXT,
    water_presence          TEXT,
    radiation_level_sievert REAL,
    survey_start_date       TEXT,
    survey_end_date         TEXT,
    lead_scientist          TEXT,
    sample_count            INTEGER,
    dna_sequencing_success INTEGER,
    photos_taken            INTEGER,
    video_minutes           INTEGER,
    notes                   TEXT
);
INSERT INTO alien_biome_survey VALUES (201,'Crystal Forest','Xenon','North','Crystal Trees','Glowing Beetles',12.5,18.0,70.0,'Silicate','Yes',0.03,'2125-01-10','2125-02-01','DrZara',250,1,500,120,'Bioluminescent canopy');
INSERT INTO alien_biome_survey VALUES (202,'Sandy Dunes','Aurelia','East','Spiky Cacti','Sand Crawlers',2.0,35.0,20.0,'Granite','Sparse',0.12,'2124-07-05','2124-07-20','DrMiko',180,0,300,80,'High temperature variations');
INSERT INTO alien_biome_survey VALUES (203,'Floating Isles','Nebulon','Central','Float Moss','Aerial Raptors',15.0,22.0,55.0,'Lava','Abundant',0.08,'2125-03-15','2125-04-10','DrLena',320,1,720,200,'Islands hover due to magnetic fields');

-- Interstellar Trade Manifest
CREATE TABLE interstellar_trade_manifest
(
    manifest_id                 INTEGER PRIMARY KEY,
    vessel_name                 TEXT,
    departure_port              TEXT,
    arrival_port                TEXT,
    departure_date              TEXT,
    arrival_date                TEXT,
    cargo_type                  TEXT,
    cargo_weight_tons           REAL,
    cargo_value_credits         REAL,
    responsible_officer        TEXT,
    customs_clearance_status   TEXT,
    insurance_policy_number    TEXT,
    hazard_class                TEXT,
    refrigeration_needed       INTEGER,
    seal_number                 TEXT,
    tracking_id                 TEXT,
    freight_rate_per_ton       REAL,
    total_freight_cost         REAL,
    notes                       TEXT,
    compliance_flag            INTEGER
);
INSERT INTO interstellar_trade_manifest VALUES (301,'SS Voyager','Earth Dock','Mars Station','2126-05-01','2126-05-20','Food Supplies',120.5,600000,'OfficerKira','Cleared','INS12345','Class1',1,'SN9876','TRK1001',5000.0,603000.0,'Perishable goods','1');
INSERT INTO interstellar_trade_manifest VALUES (302,'SS Horizon','Jupiter Outpost','Saturn Hub','2127-01-10','2127-01-25','Minerals',300.0,1500000,'OfficerMilo','Pending','INS67890','Class3',0,'SN5432','TRK2002',4500.0,1350000.0,'High value cargo','0');
INSERT INTO interstellar_trade_manifest VALUES (303,'SS Pioneer','Venus Base','Mercury Platform','2125-11-15','2125-11-18','Electronics',45.0,900000,'OfficerYara','Cleared','INS11223','Class2',0,'SN3333','TRK3003',8000.0,360000.0,'Urgent delivery','1');

-- Renewable Energy Farm Performance
CREATE TABLE renewable_energy_farm_performance
(
    farm_id                     INTEGER PRIMARY KEY,
    farm_name                   TEXT,
    location                    TEXT,
    energy_type                 TEXT,
    capacity_mw                 REAL,
    avg_output_mw               REAL,
    capacity_factor_percent    REAL,
    operational_hours           INTEGER,
    downtime_hours              INTEGER,
    maintenance_cycles          INTEGER,
    grid_connection_status      TEXT,
    subsidy_amount_credits      REAL,
    avg_wind_speed_ms          REAL,
    avg_solar_irradiance_wm2   REAL,
    turbine_count               INTEGER,
    panel_count                 INTEGER,
    avg_temperature_c          REAL,
    incidents_reported         INTEGER,
    last_inspection_date       TEXT,
    notes                      TEXT
);
INSERT INTO renewable_energy_farm_performance VALUES (401,'Solar Plains','Arcadia','Solar',150.0,120.5,80.3,7200,150,12,'Connected',200000.0,0.0,850.0,0,500000,25.0,2,'2125-12-01','Peak performance');
INSERT INTO renewable_energy_farm_performance VALUES (402,'Wind Ridge','Borealis','Wind',200.0,160.0,80.0,7200,100,15,'Connected',150000.0,12.5,0.0,120,0,15.0,1,'2125-11-15','Minor turbine wear');
INSERT INTO renewable_energy_farm_performance VALUES (403,'Hybrid Oasis','Caspia','Hybrid',300.0,250.0,83.3,7200,80,20,'Connected',300000.0,8.0,600.0,80,20000,22.0,0,'2125-10-20','Stable output');

-- Metahuman Genetic Study
CREATE TABLE metahuman_genetic_study
(
    study_id                INTEGER PRIMARY KEY,
    study_name              TEXT,
    institution             TEXT,
    lead_researcher         TEXT,
    start_date              TEXT,
    end_date                TEXT,
    sample_count            INTEGER,
    gene_marker_1           TEXT,
    gene_marker_2           TEXT,
    gene_marker_3           TEXT,
    mutation_rate_percent   REAL,
    phenotype_observed      TEXT,
    data_repository_url     TEXT,
    ethics_approval_id      TEXT,
    funding_amount_credits  REAL,
    publication_doi         TEXT,
    peer_review_status      TEXT,
    notes                   TEXT,
    data_quality_score      REAL,
    confidentiality_level   TEXT
);
INSERT INTO metahuman_genetic_study VALUES (501,'X-Gen Project','Arcane University','DrNova','2124-01-01','2126-12-31',500,'XG1','XG2','XG3',0.07,'Enhanced Strength','http://data.arcane.edu/xgen','EA2024-07',500000.0,'10.1234/xgen2025','Accepted','Comprehensive cohort','9.2','High');
INSERT INTO metahuman_genetic_study VALUES (502,'Alpha Helix Study','Nova Institute','DrKade','2125-03-15','2127-03-14',300,'AH1','AH2','AH3',0.12,'Regeneration','http://data.nova.edu/alpha','EA2025-02',350000.0,'10.5678/alpha2026','Pending','Preliminary results','8.5','Medium');
INSERT INTO metahuman_genetic_study VALUES (503,'Gamma Flux Analysis','Stellar Labs','DrLys','2123-06-10','2125-06-09',750,'GF1','GF2','GF3',0.05,'Energy Absorption','http://data.stellarlabs.com/gamma','EA2023-11',600000.0,'10.9101/gamma2024','Rejected','Data inconsistencies','6.8','Low');

-- Cosmic Artifact Exhibition
CREATE TABLE cosmic_artifact_exhibition
(
    exhibit_id               INTEGER PRIMARY KEY,
    artifact_name            TEXT,
    galaxy                   TEXT,
    discovery_date           TEXT,
    curator                  TEXT,
    exhibition_start_date    TEXT,
    exhibition_end_date      TEXT,
    display_location         TEXT,
    physical_dimensions_cm   TEXT,
    weight_kg                REAL,
    rarity_score             REAL,
    conservation_status      TEXT,
    loan_agreement_id        TEXT,
    insurance_value_credits  REAL,
    visitor_count_estimate   INTEGER,
    interactive_elements     TEXT,
    audio_guide_available    INTEGER,
    lighting_conditions      TEXT,
    security_level           TEXT,
    notes                    TEXT
);
INSERT INTO cosmic_artifact_exhibition VALUES (601,'Celestial Scepter','Andromeda','2100-05-12','CuratorRae','2125-08-01','2125-12-31','Main Hall','150x30x30',250.0,9.8,'Excellent','LA1001',800000.0,50000,'Touchscreen','1','Dim','Level3','Signature piece');
INSERT INTO cosmic_artifact_exhibition VALUES (602,'Starlight Orb','MilkyWay','2098-11-03','CuratorMia','2125-09-15','2125-11-15','Gallery B','80x80x80',120.0,8.5,'Good','LA1002',500000.0,30000,'Hologram','0','Spotlight','Level2','Popular with families');
INSERT INTO cosmic_artifact_exhibition VALUES (603,'Nebula Relic','Triangulum','2102-02-20','CuratorZed','2125-10-01','2125-10-31','Exhibit Wing','200x50x50',400.0,9.5,'Excellent','LA1003',950000.0,40000,'AR Overlay','1','Soft','Level4','Limited viewing times');

-- Nanotech Manufacturing Batch
CREATE TABLE nanotech_manufacturing_batch
(
    batch_id                 INTEGER PRIMARY KEY,
    factory_name             TEXT,
    production_line          TEXT,
    start_date               TEXT,
    end_date                 TEXT,
    product_type             TEXT,
    batch_size_units         INTEGER,
    avg_particle_size_nm     REAL,
    purity_percent           REAL,
    yield_percent            REAL,
    energy_consumption_mwh   REAL,
    waste_generated_kg       REAL,
    quality_inspection_passed INTEGER,
    supervisor               TEXT,
    shift                    TEXT,
    temperature_c            REAL,
    humidity_percent         REAL,
    equipment_id             TEXT,
    maintenance_cycle_number INTEGER,
    notes                    TEXT,
    compliance_certificate_id TEXT
);
INSERT INTO nanotech_manufacturing_batch VALUES (701,'NanoFabX','LineA','2125-01-05','2125-01-20','NanoCoating',100000,12.5,99.2,95.0,850.0,5.0,1,'EngRae','Day',22.0,45.0,'EQ100','7','Standard batch','CERT2025-07');
INSERT INTO nanotech_manufacturing_batch VALUES (702,'NanoFabY','LineB','2125-02-10','2125-02-25','NanoSensor',75000,8.3,98.5,93.0,620.0,4.2,1,'EngMio','Night',19.5,50.0,'EQ200','9','High precision','CERT2025-08');
INSERT INTO nanotech_manufacturing_batch VALUES (703,'NanoFabZ','LineC','2125-03-15','2125-03-30','NanoCatalyst',120000,15.0,97.8,92.5,1020.0,6.5,0,'EngLyn','Swing','24.0',40.0,'EQ300','5','Failed inspection','CERT2025-09');

-- Interdimensional Gate Log
CREATE TABLE interdimensional_gate_log
(
    log_id                 INTEGER PRIMARY KEY,
    gate_id                TEXT,
    source_universe        TEXT,
    destination_universe   TEXT,
    activation_timestamp   TEXT,
    deactivation_timestamp TEXT,
    operator_name          TEXT,
    energy_required_terajoules REAL,
    stability_percent      REAL,
    anomaly_detected      INTEGER,
    safety_protocols_engaged INTEGER,
    passenger_count        INTEGER,
    cargo_mass_tons        REAL,
    gate_status            TEXT,
    maintenance_due_date   TEXT,
    notes                  TEXT,
    security_clearance_level TEXT,
    remote_monitor_id      TEXT,
    calibrations_performed INTEGER,
    last_error_code        TEXT
);
INSERT INTO interdimensional_gate_log VALUES (801,'GATE-01','UniverseA','UniverseB','2125-06-01T08:00:00','2125-06-01T08:15:00','OpKira',2.5,98.0,0,1,120,15.0,'Operational','2125-12-01','Routine test','Level3','MON100',3,'ERR001');
INSERT INTO interdimensional_gate_log VALUES (802,'GATE-02','UniverseC','UniverseD','2125-07-10T14:30:00','2125-07-10T14:45:00','OpMilo',3.1,95.5,1,1,80,8.0,'Degraded','2125-11-15','Minor spatial distortion','Level4','MON200',4,'ERR007');
INSERT INTO interdimensional_gate_log VALUES (803,'GATE-03','UniverseE','UniverseF','2125-08-20T22:00:00','2125-08-20T22:20:00','OpYara',4.0,92.0,0,1,150,20.0,'Operational','2126-01-10','High passenger load','Level5','MON300',2,'ERR000');

-- Hero Fan Analytics Snapshot
CREATE TABLE hero_fan_analytics_snapshot
(
    snapshot_id               INTEGER PRIMARY KEY,
    hero_id                   INTEGER,
    fan_count                 INTEGER,
    average_engagement_score  REAL,
    total_interactions        INTEGER,
    new_fans_this_month      INTEGER,
    churn_rate_percent        REAL,
    region_us                 INTEGER,
    region_eu                 INTEGER,
    region_asia               INTEGER,
    region_other              INTEGER,
    platform_twitter          INTEGER,
    platform_instagram        INTEGER,
    platform_tiktok          INTEGER,
    platform_facebook         INTEGER,
    campaign_id               INTEGER,
    sentiment_score           REAL,
    active_months             INTEGER,
    last_updated_date         TEXT,
    notes                     TEXT
);
INSERT INTO hero_fan_analytics_snapshot VALUES (901,1,250000,78.5,1500000,5000,2.1,120000,50000,60000,20000,80000,70000,60000,50000,301,0.85,24,'2025-12-31','Peak engagement');
INSERT INTO hero_fan_analytics_snapshot VALUES (902,2,180000,70.2,1100000,3000,1.8,90000,40000,50000,15000,60000,50000,55000,45000,302,0.78,22,'2025-12-31','Steady growth');
INSERT INTO hero_fan_analytics_snapshot VALUES (903,3,300000,82.0,2000000,8000,2.5,150000,70000,80000,25000,100000,85000,75000,65000,303,0.90,26,'2025-12-31','Highest among heroes');