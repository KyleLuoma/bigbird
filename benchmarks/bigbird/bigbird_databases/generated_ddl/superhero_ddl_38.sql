-- Space Station information
CREATE TABLE space_station
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    station_name           TEXT,
    orbital_body           TEXT,
    launch_year            INTEGER,
    crew_capacity          INTEGER,
    modular                INTEGER,               -- 1 = true, 0 = false
    power_source           TEXT,
    docking_ports          INTEGER,
    communication_band     TEXT,
    status                 TEXT,
    latitude               REAL,
    longitude              REAL,
    altitude_km            REAL,
    manufacturer           TEXT,
    operational_since      DATE,
    last_maintenance       DATE,
    next_maintenance       DATE,
    budget_million         INTEGER,
    scientific_focus       TEXT,
    has_artificial_gravity INTEGER,               -- 1 = true, 0 = false
    habitat_volume_cubic_m INTEGER,
    life_support_system    TEXT
);
INSERT INTO space_station VALUES (1,'AlphaStation','Earth',2020,12,1,'Solar',4,'XBand','Active',0.0,0.0,400.5,'SpaceX','2020-07-01','2024-01-15','2025-01-15',150,'Astrophysics',1,50000,'ClosedLoop');
INSERT INTO space_station VALUES (2,'BetaOutpost','Mars',2025,8,0,'Nuclear',2,'SBand','Construction',12.5,-45.3,350.0,'BlueOrigin','2025-03-20',NULL,'2026-03-20',80,'Geology',0,30000,'Regenerative');
INSERT INTO space_station VALUES (3,'GammaRelay','Luna',2018,5,1,'Fusion',1,'KaBand','Maintenance',-0.75,23.44,100.0,'NASA','2018-11-10','2023-12-01','2024-12-01',60,'Communications',1,15000,'LifeSupportV2');

-- Galactic Weather Observation data
CREATE TABLE galactic_weather_observation
(
    id                               INTEGER NOT NULL PRIMARY KEY,
    observation_date                 DATE,
    sector                           TEXT,
    solar_flare_intensity            INTEGER,
    radiation_level                  REAL,
    magnetic_storm_level             INTEGER,
    nebula_density                   REAL,
    cosmic_ray_flux                  REAL,
    gas_composition                  TEXT,
    temperature_kelvin               REAL,
    observation_satellite            TEXT,
    data_quality                     TEXT,
    analyst_name                     TEXT,
    report_url                       TEXT,
    created_at                       DATE,
    updated_at                       DATE,
    notes                            TEXT,
    alert_level                      INTEGER,
    background_noise_db              REAL,
    observation_duration_minutes    INTEGER
);
INSERT INTO galactic_weather_observation VALUES (1,'2024-01-01','SectorA',5,0.12,3,0.004,1.5,'HydrogenHelium','4500','SatA','High','DrSmith','http://reports/obs1','2024-01-01','2024-01-02','Clear skies',1,15.2,30);
INSERT INTO galactic_weather_observation VALUES (2,'2024-01-02','SectorB',2,0.08,1,0.003,1.2,'Hydrogen','4200','SatB','Medium','DrLee','http://reports/obs2','2024-01-02','2024-01-03','Minor disturbances',2,12.5,45);
INSERT INTO galactic_weather_observation VALUES (3,'2024-01-03','SectorC',7,0.20,5,0.010,2.0,'Helium','5000','SatC','Critical','DrPatel','http://reports/obs3','2024-01-03','2024-01-04','Severe solar storms',5,20.0,60);

-- Interstellar Medicine Trial registry
CREATE TABLE interstellar_medicine_trial
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    trial_name             TEXT,
    drug_code              TEXT,
    phase                  INTEGER,
    start_date             DATE,
    end_date               DATE,
    lead_scientist         TEXT,
    sponsor_org            TEXT,
    target_disease         TEXT,
    patient_count          INTEGER,
    dosage_mg              REAL,
    administration_route   TEXT,
    adverse_event_rate     REAL,
    efficacy_percentage    REAL,
    status                 TEXT,
    regulatory_approval    INTEGER,               -- 1 = true, 0 = false
    location               TEXT,
    notes                  TEXT,
    funding_million        INTEGER,
    trial_registry_url     TEXT,
    data_release_date      DATE
);
INSERT INTO interstellar_medicine_trial VALUES (1,'TrialA','DRG001',1,'2023-01-01','2023-12-31','DrNova','Galactix','SpaceFlu',120,50.0,'Injection',0.02,85.5,'Completed',1,'OrbitStation','Successful phase 1',5,'http://registry/trialA','2024-01-15');
INSERT INTO interstellar_medicine_trial VALUES (2,'TrialB','DRG002',2,'2024-02-01','2025-01-31','DrQuark','NebulaPharma','ZeroGravitySyndrome',200,75.0,'Oral',0.05,78.0,'Ongoing',0,'MarsBase','Recruiting',8,'http://registry/trialB','2025-06-01');
INSERT INTO interstellar_medicine_trial VALUES (3,'TrialC','DRG003',3,'2022-05-15','2023-05-14','DrPhoton','StellarHealth','CosmicRadiationPoisoning',80,100.0,'IV',0.01,92.0,'Completed',1,'LunaLab','Phase 3 results pending',12,'http://registry/trialC','2024-03-20');

-- Alien Language Corpus Entry
CREATE TABLE alien_language_corpus_entry
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    language_name          TEXT,
    entry_id               TEXT,
    native_phrase          TEXT,
    transliteration        TEXT,
    english_translation    TEXT,
    part_of_speech         TEXT,
    semantic_tag           TEXT,
    source_document        TEXT,
    recorded_by            TEXT,
    recording_date         DATE,
    audio_file_path        TEXT,
    script_type            TEXT,
    morphological_analysis TEXT,
    usage_frequency        INTEGER,
    lexical_category       TEXT,
    related_concept        TEXT,
    notes                  TEXT,
    confidence_score       REAL,
    review_status          TEXT
);
INSERT INTO alien_language_corpus_entry VALUES (1,'Zylox','ENT001','krzth','krzth','I understand','Verb','Cognition','DocA','ResearcherA','2023-07-12','/audio/ent001.wav','Glyphic','Root:krz + suffix:th',45,'Action','Understanding','First entry','0.95','Approved');
INSERT INTO alien_language_corpus_entry VALUES (2,'Vellian','ENT002','glarb','glarb','The star shines','Noun','Astronomy','DocB','ResearcherB','2023-08-05','/audio/ent002.wav','Pictograph','Root:gla + suffix:rb',30,'Object','Star','Second entry','0.88','Pending');
INSERT INTO alien_language_corpus_entry VALUES (3,'Quarn','ENT003','miplo','miplo','We travel','Verb','Movement','DocC','ResearcherC','2023-09-20','/audio/ent003.wav','Runic','Root:mip + suffix:lo',60,'Action','Travel','Third entry','0.92','Approved');

-- Quantum Computing Job Queue Snapshot
CREATE TABLE quantum_computing_job_queue_snapshot
(
    id                             INTEGER NOT NULL PRIMARY KEY,
    snapshot_time                  TIMESTAMP,
    node_id                        TEXT,
    total_jobs                     INTEGER,
    pending_jobs                   INTEGER,
    running_jobs                   INTEGER,
    completed_jobs                 INTEGER,
    failed_jobs                    INTEGER,
    average_wait_time_seconds      REAL,
    max_memory_gb                  REAL,
    cpu_utilization_percent        REAL,
    gpu_utilization_percent        REAL,
    queue_length                   INTEGER,
    priority_distribution          TEXT,
    job_type_distribution          TEXT,
    scheduler_version              TEXT,
    firmware_version               TEXT,
    temperature_celsius            REAL,
    power_consumption_watts        REAL,
    notes                          TEXT
);
INSERT INTO quantum_computing_job_queue_snapshot VALUES (1,'2024-01-01 08:00:00','NodeA',120,20,15,80,5,12.5,64.0,55.0,70.0,35,'High:50,Medium:40,Low:30','Simulation:70,Optimization:30','v2.1','fw3.4',42.5,250.0,'Snapshot after maintenance');
INSERT INTO quantum_computing_job_queue_snapshot VALUES (2,'2024-01-02 08:00:00','NodeB',95,10,10,70,5,10.2,48.0,48.5,65.0,25,'High:40,Medium:35,Low:20','Simulation:60,Research:40','v2.2','fw3.5',40.0,220.0,'Stable performance');
INSERT INTO quantum_computing_job_queue_snapshot VALUES (3,'2024-01-03 08:00:00','NodeC',140,25,20,90,5,15.0,72.0,60.0,80.0,40,'High:55,Medium:45,Low:40','Optimization:80,Simulation:20','v2.3','fw3.6',44.0,270.0,'High load period');

-- Mythic Beast Habitat Registry
CREATE TABLE mythic_beast_habitat
(
    id                         INTEGER NOT NULL PRIMARY KEY,
    beast_name                 TEXT,
    habitat_region             TEXT,
    climate_type               TEXT,
    average_temperature_celsius REAL,
    predominant_flora          TEXT,
    predominant_fauna          TEXT,
    protected_status           TEXT,
    area_sq_km                 REAL,
    discovery_year             INTEGER,
    discoverer                 TEXT,
    conservation_effort_level  INTEGER,
    tourism_allowed            INTEGER,               -- 1 = true, 0 = false
    access_point               TEXT,
    monitoring_station         TEXT,
    last_survey_date           DATE,
    population_estimate        INTEGER,
    threat_level               INTEGER,
    funding_million            INTEGER,
    notes                      TEXT
);
INSERT INTO mythic_beast_habitat VALUES (1,'Gryphon','NorthernMountains','Temperate',12.5,'Pine','Deer','Endangered',250.0,1998,'DrElder','High',0,'TrailA','StationAlpha','2023-06-15',45,3,5,'Requires habitat restoration');
INSERT INTO mythic_beast_habitat VALUES (2,'Kraken','DeepOcean','Marine',4.0,'Kelp','Fish','Critical',1500.0,2005,'DrMarine','Critical',0,'HarborB','StationBeta','2023-07-20',12,5,12,'Monitoring via sonar');
INSERT INTO mythic_beast_habitat VALUES (3,'Phoenix','VolcanicCanyon','Arid',35.0,'FireBush','Lizards','Vulnerable',75.0,2015,'DrFlame','Medium',1,'PathC','StationGamma','2023-08-05',3,2,3,'Controlled burns implemented');

-- Renewable Energy Grid Node Performance
CREATE TABLE renewable_energy_grid_node_performance
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    node_name              TEXT,
    grid_region            TEXT,
    installation_date      DATE,
    capacity_mw            REAL,
    current_output_mw      REAL,
    efficiency_percent     REAL,
    downtime_hours         INTEGER,
    maintenance_last_date  DATE,
    maintenance_next_date  DATE,
    operator_company       TEXT,
    renewable_source       TEXT,
    avg_wind_speed         REAL,
    avg_sunlight_hours    REAL,
    battery_storage_mwh    REAL,
    carbon_offset_tons     REAL,
    compliance_status      TEXT,
    notes                  TEXT,
    reported_by            TEXT,
    report_timestamp       TIMESTAMP
);
INSERT INTO renewable_energy_grid_node_performance VALUES (1,'NodeNorth','RegionA','2020-03-10',150.0,140.5,93.3,12,'2023-11-01','2024-05-01','EcoPower','Wind',7.5,0.0,30.0,1200.0,'Compliant','No incidents','AnalystA','2024-01-01 09:00:00');
INSERT INTO renewable_energy_grid_node_performance VALUES (2,'NodeSouth','RegionB','2021-07-22',200.0,195.0,97.5,5,'2023-12-15','2024-06-15','SunEnergy','Solar',0.0,9.2,50.0,1500.0,'Compliant','Peak production','AnalystB','2024-01-02 10:30:00');
INSERT INTO renewable_energy_grid_node_performance VALUES (3,'NodeEast','RegionC','2019-11-05',120.0,115.0,95.8,20,'2023-10-10','2024-04-10','GreenGrid','Hydro',0.0,0.0,20.0,800.0,'NonCompliant','Scheduled upgrades','AnalystC','2024-01-03 11:45:00');

-- Interdimensional Portal Registry
CREATE TABLE interdimensional_portal_registry
(
    id                         INTEGER NOT NULL PRIMARY KEY,
    portal_name                TEXT,
    origin_dimension           TEXT,
    destination_dimension      TEXT,
    activation_date            DATE,
    stability_score            REAL,
    energy_requirement_megajoules REAL,
    control_center             TEXT,
    security_level             INTEGER,
    authorized_users           TEXT,
    last_inspection_date       DATE,
    status                     TEXT,
    notes                      TEXT,
    linked_artifact            TEXT,
    portal_type                TEXT,
    max_transit_capacity       INTEGER,
    current_usage              INTEGER,
    maintenance_cycle_days     INTEGER,
    last_maintenance_date      DATE,
    regulator_agency           TEXT
);
INSERT INTO interdimensional_portal_registry VALUES (1,'PortalAlpha','DimensionX','DimensionY','2022-01-15',0.92,1500.0,'CenterA',5,'UserA,UserB','2023-12-20','Active','Stable operation','ArtifactX','Wormhole',100,45,180,'2023-12-01','AgencyX');
INSERT INTO interdimensional_portal_registry VALUES (2,'PortalBeta','DimensionA','DimensionB','2023-03-10',0.78,2000.0,'CenterB',4,'UserC','2024-01-05','UnderMaintenance','Observed fluctuations','ArtifactY','Gate',80,20,365,'2023-06-15','AgencyY');
INSERT INTO interdimensional_portal_registry VALUES (3,'PortalGamma','DimensionM','DimensionN','2021-07-22',0.65,2500.0,'CenterC',3,'UserD,UserE','2023-11-30','Inactive','Decommissioned pending','ArtifactZ','Stargate',50,0,730,'2022-12-31','AgencyZ');

-- Cosmic Artifact Exhibit Schedule
CREATE TABLE cosmic_artifact_exhibit_schedule
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    exhibit_name           TEXT,
    artifact_id            TEXT,
    start_date             DATE,
    end_date               DATE,
    venue_name             TEXT,
    city                   TEXT,
    country                TEXT,
    curator                TEXT,
    insurance_value_usd    INTEGER,
    transport_method       TEXT,
    security_level         INTEGER,
    visitor_capacity       INTEGER,
    tickets_sold           INTEGER,
    sponsor                TEXT,
    marketing_campaign     TEXT,
    opening_ceremony_date  DATE,
    closing_ceremony_date  DATE,
    feedback_score         REAL,
    notes                  TEXT
);
INSERT INTO cosmic_artifact_exhibit_schedule VALUES (1,'Starlight Relic','ART001','2024-05-01','2024-08-01','Galaxy Hall','NovaCity','Terrania','CuratorA',500000,'Air','High',2000,1800,'CorpX','CampaignAlpha','2024-04-28','2024-08-03',4.8,'Positive reception');
INSERT INTO cosmic_artifact_exhibit_schedule VALUES (2,'Nebula Crystal','ART002','2024-09-15','2024-12-15','Celestial Museum','OrbitTown','Lunaria','CuratorB',750000,'Space','Medium',1500,1300,'CorpY','CampaignBeta','2024-09-10','2024-12-20',4.5,'Featured in media');
INSERT INTO cosmic_artifact_exhibit_schedule VALUES (3,'Quantum Core','ART003','2025-01-10','2025-04-10','Quantum Expo Center','QuarkVille','Photonia','CuratorC',1000000,'QuantumTunnel','VeryHigh',2500,2400,'CorpZ','CampaignGamma','2025-01-05','2025-04-15',4.9,'Record attendance');

-- Cybernetic Implant Registry
CREATE TABLE cybernetic_implant_registry
(
    id                       INTEGER NOT NULL PRIMARY KEY,
    implant_id               TEXT,
    model_name               TEXT,
    manufacturer             TEXT,
    implant_type             TEXT,
    implantation_date        DATE,
    patient_id               TEXT,
    surgeon_name             TEXT,
    warranty_years           INTEGER,
    firmware_version         TEXT,
    battery_life_hours      INTEGER,
    compliance_certified    INTEGER,               -- 1 = true, 0 = false
    risk_level               INTEGER,
    last_checkup_date        DATE,
    next_checkup_date        DATE,
    status                   TEXT,
    notes                    TEXT,
    regulatory_body          TEXT,
    serial_number            TEXT,
    encryption_key_hash      TEXT
);
INSERT INTO cybernetic_implant_registry VALUES (1,'IMP001','NeuroLink','CyberCorp','Neural','2023-02-14','PAT001','DrMinds','5','v1.2.3',48,1,2,'2024-02-14','2025-02-14','Active','No complications','HealthAgency','SN001','hashA123');
INSERT INTO cybernetic_implant_registry VALUES (2,'IMP002','OptiSight','VisionTech','Ocular','2022-11-01','PAT002','DrEyes','3','v2.0.0',72,1,1,'2023-11-01','2024-11-01','Active','Minor glare issues','MedicalBoard','SN002','hashB456');
INSERT INTO cybernetic_implant_registry VALUES (3,'IMP003','PowerBoost','BioEnhance','Muscular','2021-06-20','PAT003','DrStrength','4','v3.1.4',96,0,3,'2023-06-20','2024-06-20','Inactive','Implant removed','RegulatoryCommission','SN003','hashC789');