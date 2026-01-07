-- Research grant funding details
CREATE TABLE research_grant_fund
(
    grant_id                INTEGER PRIMARY KEY,
    agency_name             TEXT,
    program_name            TEXT,
    fiscal_year             INTEGER,
    amount_usd              NUMERIC,
    start_date              TEXT,
    end_date                TEXT,
    principal_investigator  TEXT,
    pi_department           TEXT,
    pi_email                TEXT,
    co_investigator         TEXT,
    co_pi_department        TEXT,
    co_pi_email             TEXT,
    project_title           TEXT,
    abstract_text           TEXT,
    status                  TEXT,
    review_score            NUMERIC,
    award_type              TEXT,
    funding_category        TEXT,
    compliance_status      TEXT
);

INSERT INTO research_grant_fund VALUES (1,'NationalScienceFoundation','AstroPhysics','2023',2500000,'2023-01-15','2026-01-14','DrJaneDoe','PhysicsDept','jane.doe@nsf.gov','DrJohnSmith','PhysicsDept','john.smith@nsf.gov','DarkMatterMapping','Study of dark matter distribution','Awarded',92.5,'Full','Science','Compliant');
INSERT INTO research_grant_fund VALUES (2,'SpaceAgency','MarsRover','2022',1800000,'2022-06-01','2025-05-31','DrEmilyClark','EngineeringDept','emily.clark@space.gov','DrMikeLee','EngineeringDept','mike.lee@space.gov','RoverNavigation','Development of autonomous navigation','Pending',0,'Provisional','Technology','Pending');
INSERT INTO research_grant_fund VALUES (3,'HealthInstitute','NeuroRegeneration','2024',750000,'2024-03-20','2027-03-19','DrAliceWong','BiologyDept','alice.wong@health.org','DrBobKim','BiologyDept','bob.kim@health.org','SpinalRepair','Regeneration of spinal tissue','Submitted',0,'Full','Medical','UnderReview');

-- Planetary climate observation records
CREATE TABLE planetary_climate_observation
(
    observation_id          INTEGER PRIMARY KEY,
    planet_name             TEXT,
    observation_date        TEXT,
    latitude                NUMERIC,
    longitude               NUMERIC,
    temperature_c           NUMERIC,
    pressure_pa             NUMERIC,
    humidity_percent        NUMERIC,
    wind_speed_mps          NUMERIC,
    wind_direction_deg      NUMERIC,
    solar_irradiance_wm2    NUMERIC,
    atmospheric_composition TEXT,
    dust_level              NUMERIC,
    cloud_coverage          NUMERIC,
    observation_method      TEXT,
    instrument_id           TEXT,
    data_quality_flag       TEXT,
    notes                   TEXT,
    observer_name           TEXT,
    data_release_status     TEXT
);

INSERT INTO planetary_climate_observation VALUES (101,'Terra','2025-04-10',34.05,-118.25,22.5,101325,45,5.2,180,550,'N2_O2_CO2',0.1,20,'Satellite','SATA01','Good','Clear day observation','DrLauraGreen','Public');
INSERT INTO planetary_climate_observation VALUES (102,'Mars','2025-03-22',-4.5,137.4,-60,610,5,12.0,90,200,'CO2_Ar_N2',0.8,5,'Rover','ROV02','Fair','Dust storm conditions','DrSamirPatel','Restricted');
INSERT INTO planetary_climate_observation VALUES (103,'Venus','2025-02-15',-12.5,45.0,460,920000,90,0.0,0,0,'CO2_N2_SulfuricAcid',0.0,100,'Orbiter','ORB03','Excellent','Thick cloud cover','DrMinaCho','Public');

-- Alien species registry
CREATE TABLE alien_species_registry
(
    species_id                  INTEGER PRIMARY KEY,
    common_name                 TEXT,
    scientific_name             TEXT,
    classification              TEXT,
    average_height_cm           NUMERIC,
    average_weight_kg           NUMERIC,
    home_planet                 TEXT,
    habitat_type                TEXT,
    diet_type                   TEXT,
    lifespan_years              NUMERIC,
    conservation_status        TEXT,
    discovery_date              TEXT,
    discovered_by               TEXT,
    genome_sequence_id          TEXT,
    known_abilities             TEXT,
    threat_level                TEXT,
    biosecurity_risk            TEXT,
    containment_protocol        TEXT,
    reference_document          TEXT,
    public_awareness_level     TEXT
);

INSERT INTO alien_species_registry VALUES (1001,'Glowworm','Luminara lumina','Arthropoda',5,0.02,'Xenon','Cave','Omnivore',2,'LeastConcern','2024-01-10','DrKiraMatsumoto','SEQ12345','Bioluminescence', 'Low','Low','StandardContainment','DOC001','Medium');
INSERT INTO alien_species_registry VALUES (1002,'SkyRaptor','Aeronus maximus','Reptilia',250,180,'AquilaPrime','Mountain','Carnivore',30,'Endangered','2023-11-05','DrRaviKumar','SEQ67890','HighSpeedFlight,SharpVision','High','High','SecureAviary','DOC045','High');
INSERT INTO alien_species_registry VALUES (1003,'AquaSilvers','Aquatica argentum','Mollusca',120,300,'Oceanus','DeepSea','FilterFeeder',150,'DataDeficient','2025-06-18','DrLiWei','SEQ54321','PressureResistance,ColdTolerance','Medium','Medium','PressureVault','DOC078','Low');

-- Quantum computing job queue
CREATE TABLE quantum_computing_job_queue
(
    job_id                  INTEGER PRIMARY KEY,
    queue_name              TEXT,
    submit_time             TEXT,
    start_time              TEXT,
    end_time                TEXT,
    status                  TEXT,
    priority                INTEGER,
    required_qubits         INTEGER,
    estimated_runtime_ms    NUMERIC,
    actual_runtime_ms       NUMERIC,
    algorithm_name          TEXT,
    software_version        TEXT,
    input_dataset_id        TEXT,
    output_dataset_id       TEXT,
    error_code              TEXT,
    error_message           TEXT,
    node_assigned           TEXT,
    cpu_usage_percent       NUMERIC,
    memory_usage_mb         NUMERIC,
    gpu_usage_percent       NUMERIC
);

INSERT INTO quantum_computing_job_queue VALUES (5001,'HighPriority','2025-07-01 08:00:00','2025-07-01 08:05:00','2025-07-01 08:10:00','Completed',1,56,120000,118500,'ShorFactorization','v2.3','DS001','DS002','0','None','NodeA',45.2,1024,12.5);
INSERT INTO quantum_computing_job_queue VALUES (5002,'Standard','2025-07-02 09:30:00','2025-07-02 09:45:00','2025-07-02 10:10:00','Failed',3,32,300000,0,'QuantumSim','v1.9','DS010','DS011','E101','QubitLeakage','NodeB',60.0,2048,8.0);
INSERT INTO quantum_computing_job_queue VALUES (5003,'LowPriority','2025-07-03 11:15:00','2025-07-03 11:20:00','2025-07-03 11:55:00','Completed',5,24,450000,440000,'GroverSearch','v3.0','DS020','DS021','0','None','NodeC',30.5,512,5.0);

-- Renewable energy farm log
CREATE TABLE renewable_energy_farm_log
(
    farm_id                     INTEGER PRIMARY KEY,
    farm_name                   TEXT,
    location                    TEXT,
    installation_date           TEXT,
    capacity_mw                 NUMERIC,
    current_output_mw           NUMERIC,
    temperature_c               NUMERIC,
    wind_speed_mps              NUMERIC,
    solar_irradiance_wm2        NUMERIC,
    maintenance_last_date       TEXT,
    maintenance_next_due        TEXT,
    fault_status                TEXT,
    energy_storage_capacity_mwh NUMERIC,
    storage_current_level_mwh   NUMERIC,
    operator_name               TEXT,
    grid_connection_status      TEXT,
    compliance_certified        TEXT,
    yearly_yield_mwh            NUMERIC,
    carbon_offset_tons          NUMERIC,
    revenue_usd                 NUMERIC
);

INSERT INTO renewable_energy_farm_log VALUES (2001,'SolarWindAlpha','DesertValley','2022-04-12',150,140,35,7.5,900,2025-01-15,2025-07-15,'None',30,25,'EcoPowerInc','Connected','Yes',500000,120000,25000000);
INSERT INTO renewable_energy_farm_log VALUES (2002,'HydroBeta','RiverEdge','2021-09-30',80,75,22,0,0,2024-12-01,2025-06-01,'Minor','N/A',N/A,'WaterFlowLtd','Connected','Yes',200000,50000,12000000);
INSERT INTO renewable_energy_farm_log VALUES (2003,'SolarGamma','CoastalPlain','2023-06-20',60,55,28,3.2,850,2025-03-10,2025-09-10,'None',15,13,'SunSeaEnergy','Connected','Yes',150000,40000,9000000);

-- Interstellar trade agreement
CREATE TABLE interstellar_trade_agreement
(
    agreement_id               INTEGER PRIMARY KEY,
    treaty_name                TEXT,
    sign_date                  TEXT,
    expiration_date            TEXT,
    parties_involved           TEXT,
    trade_goods_description    TEXT,
    tariff_rate_percent        NUMERIC,
    quota_limit_units          NUMERIC,
    enforcement_mechanism      TEXT,
    dispute_resolution         TEXT,
    confidentiality_clause     TEXT,
    amendment_history          TEXT,
    signed_by_representative   TEXT,
    governing_law              TEXT,
    compliance_audit_date      TEXT,
    status                     TEXT,
    renewal_option             TEXT,
    trade_volume_estimate_units NUMERIC,
    economic_impact_score      NUMERIC,
    notes                      TEXT
);

INSERT INTO interstellar_trade_agreement VALUES (3001,'GalacticResourceAccord','2024-02-10','2034-02-09','TerranUnion|ZoraxCollective','Minerals|BioMaterials',2.5,1000000,'JointPatrol','MediationCouncil','Yes','Amend2026','RepAline','TerranLaw','2025-08-01','Active','Optional',500000,85,'Key trade route for rare earths');
INSERT INTO interstellar_trade_agreement VALUES (3002,'StellarEnergyTreaty','2023-07-15','2033-07-14','SolarFederation|NebulaAlliance','SolarPanels|FusionCells',1.0,2000000,'EnergyWatch','ArbitrationPanel','No','Amend2028','RepJorin','SolarCode','2024-12-12','Active','Mandatory',1500000,92,'Ensures stable energy supply across sectors');
INSERT INTO interstellar_trade_agreement VALUES (3003,'BioDiversityPact','2025-01-05','2035-01-04','XenobiologyLeague|GreenPlanet','GeneticSamples|MedicinalPlants',0,500000,'BioSecurityCommission','ScientificCouncil','Yes','None','RepMara','BioLaw','2025-09-30','Pending','Optional',250000,78,'Facilitates exchange of biotechnologies');

-- Cybernetic implant registry
CREATE TABLE cybernetic_implant_registry
(
    implant_id               INTEGER PRIMARY KEY,
    model_number             TEXT,
    manufacturer             TEXT,
    implant_type             TEXT,
    generation               INTEGER,
    intended_use             TEXT,
    approval_date            TEXT,
    regulatory_status        TEXT,
    firmware_version         TEXT,
    encryption_key_id        TEXT,
    implantation_date        TEXT,
    patient_id               INTEGER,
    surgeon_name             TEXT,
    surgery_hospital         TEXT,
    warranty_expiration      TEXT,
    maintenance_schedule     TEXT,
    last_check_date          TEXT,
    performance_score        NUMERIC,
    adverse_event_reported   TEXT,
    decommission_date        TEXT
);

INSERT INTO cybernetic_implant_registry VALUES (4001,'CX-100','NeuroTech','NeuralLink',3,'CognitiveEnhancement','2023-05-20','Approved','v1.4','ENC001','2024-01-15',9001,'DrAvery','MetroHospital','2028-05-20','Annual','2025-06-10',92.5,'No','');
INSERT INTO cybernetic_implant_registry VALUES (4002,'RX-50','BioSynth','RetinalOverlay',2,'VisionAugmentation','2022-11-11','Approved','v2.0','ENC045','2023-09-05',9002,'DrLiu','CityMedicalCenter','2027-11-11','Biannual','2025-02-18',88.0,'Yes','2029-01-01');
INSERT INTO cybernetic_implant_registry VALUES (4003,'HX-300','TitaniumDynamics','ArmStrengthener',1,'PhysicalEnhancement','2024-02-02','Pending','v0.9','ENC078','2024-08-22',9003,'DrKhan','NorthHealth','2029-02-02','Quarterly','2025-03-05',75.3,'No','');

-- Mythic artifact loan agreement
CREATE TABLE mythic_artifact_loan_agreement
(
    artifact_id               INTEGER PRIMARY KEY,
    artifact_name             TEXT,
    origin_culture            TEXT,
    loaning_institution       TEXT,
    borrowing_institution     TEXT,
    loan_start_date           TEXT,
    loan_end_date             TEXT,
    transport_method          TEXT,
    insurance_value_usd       NUMERIC,
    condition_pre_loan        TEXT,
    condition_post_loan       TEXT,
    curator_contact           TEXT,
    customs_clearance_number  TEXT,
    display_location          TEXT,
    security_level            TEXT,
    handling_instructions     TEXT,
    loan_status               TEXT,
    renewal_allowed           TEXT,
    renewal_count             INTEGER,
    notes                     TEXT
);

INSERT INTO mythic_artifact_loan_agreement VALUES (5001,'SunChalice','AncientLumens','MuseumOfEternity','GlobalArtExpo','2025-03-01','2025-09-01','ClimateControlledCrate',500000,'Excellent','Excellent','CuratorLia','CL001','MainHall','High','HandleWithGloves','Active','Yes',1,'First loan of the season');
INSERT INTO mythic_artifact_loan_agreement VALUES (5002,'StarScepter','CelestialDynasty','RoyalArchive','WorldMuseum','2024-10-15','2025-04-15','SecureAirFreight',750000,'Good','Good','CuratorMiro','CL045','ExhibitRoom2','Medium','NoDirectContact','Completed','No',0,'Returned without incident');
INSERT INTO mythic_artifact_loan_agreement VALUES (5003,'MoonStone','LunarCult','NationalGallery','ScienceCenter','2025-06-20','2025-12-20','ReinforcedContainer',300000,'Fair','Fair','CuratorNia','CL078','ScienceWing','High','MaintainHumidity','Active','Yes',0,'Second renewal requested');

-- Galactic trade route statistics
CREATE TABLE galactic_trade_route_statistics
(
    route_id                    INTEGER PRIMARY KEY,
    route_name                  TEXT,
    origin_star_system          TEXT,
    destination_star_system     TEXT,
    distance_lightyears         NUMERIC,
    average_transit_time_days   NUMERIC,
    cargo_volume_tp             NUMERIC,
    freight_rate_credits_per_tp NUMERIC,
    piracy_incidents_year       INTEGER,
    customs_fees_credits        NUMERIC,
    trade_balance_credits       NUMERIC,
    dominant_goods              TEXT,
    seasonal_variation_factor   NUMERIC,
    regulatory_body             TEXT,
    infrastructure_rating       NUMERIC,
    last_audit_date            TEXT,
    traffic_density_index       NUMERIC,
    profitability_score         NUMERIC,
    sustainability_index        NUMERIC,
    notes                       TEXT
);

INSERT INTO galactic_trade_route_statistics VALUES (6001,'OrionBridge','OrionPrime','NebulaStation',1200,15,50000,20,2,15000,200000,'Minerals',1.0,'GalacticTradeCommission',85,'2025-04-01',75,90,80,'Key route for metal ores');
INSERT INTO galactic_trade_route_statistics VALUES (6002,'HelixLoop','Helios','VegaPort',800,10,30000,25,0,12000,150000,'FoodSupplies',0.9,'InterstellarCommerceCouncil',78,'2025-03-20',68,85,88,'High demand for organics');
INSERT INTO galactic_trade_route_statistics VALUES (6003,'QuantumCorridor','QuasarBase','XenonHub',1500,20,70000,18,5,20000,250000,'AdvancedTech',1.2,'UniversalTradeAuthority',92,'2025-05-15',82,95,84,'Transport of quantum devices');

-- Hero fitness assessment
CREATE TABLE hero_fitness_assessment
(
    hero_id                  INTEGER,
    assessment_date          TEXT,
    weight_kg                NUMERIC,
    height_cm                NUMERIC,
    bmi                      NUMERIC,
    VO2max_ml_per_min        NUMERIC,
    max_pushups              INTEGER,
    max_pullups              INTEGER,
    sprint_100m_seconds      NUMERIC,
    endurance_run_km         NUMERIC,
    flexibility_cm           NUMERIC,
    injury_history           TEXT,
    diet_plan                TEXT,
    supplement_usage         TEXT,
    sleep_hours_per_night    NUMERIC,
    stress_level_score       INTEGER,
    recovery_rate_score      INTEGER,
    trainer_name             TEXT,
    assessment_notes         TEXT,
    next_assessment_due      TEXT,
    PRIMARY KEY (hero_id, assessment_date)
);

INSERT INTO hero_fitness_assessment VALUES (1,'2025-06-01',85,185,24.8,48,100,30,11.2,10,30,'None','HighProtein','Creatine',7,20,85,'CoachLiam','Excellent conditioning','2025-12-01');
INSERT INTO hero_fitness_assessment VALUES (2,'2025-05-15',92,190,25.5,52,120,35,10.8,12,32,'KneeSprain2023','Balanced','Multivitamin',8,15,80,'CoachAva','Improved sprint time','2025-11-15');
INSERT INTO hero_fitness_assessment VALUES (3,'2025-04-20',78,178,24.6,50,110,40,11.5,9,28,'ShoulderDislocation2022','LowCarb','Omega3',6,25,90,'CoachNoah','Maintaining flexibility','2025-10-20');