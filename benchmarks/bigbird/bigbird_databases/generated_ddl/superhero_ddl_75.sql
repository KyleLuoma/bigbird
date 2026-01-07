-- Table describing a space based observation facility for astronomical data collection
CREATE TABLE galaxy_observation_station
(
    id INTEGER NOT NULL PRIMARY KEY,
    station_name TEXT,
    location TEXT,
    launch_date DATE,
    operational_status TEXT,
    aperture_meters INTEGER,
    detector_type TEXT,
    data_volume_tb INTEGER,
    staff_count INTEGER,
    funding_million_usd INTEGER,
    orbit_type TEXT,
    altitude_km INTEGER,
    power_source TEXT,
    maintenance_cycle_months INTEGER,
    last_maintenance DATE,
    communication_band TEXT,
    observation_target TEXT,
    spectral_range TEXT,
    weather_protection_level TEXT,
    compliance_cert TEXT
);

INSERT INTO galaxy_observation_station VALUES (1,'Starlight_One','AlphaCentauri','2020-03-15','Active',2,'CCD',1200,45,85,'LowEarth','550','Solar','12','2023-01-10','XBand','Nebulae','Visible','LevelA','CERT123');
INSERT INTO galaxy_observation_station VALUES (2,'Nebula_Hunter','Betelgeuse','2018-07-22','Maintenance',1,'CMOS',800,30,60,'Geostationary','35786','Nuclear','6','2022-09-05','KaBand','Supernovae','Infrared','LevelB','CERT456');
INSERT INTO galaxy_observation_station VALUES (3,'Cosmic_Echo','Sirius','2021-11-03','Active',3,'PhotonArray',1500,55,120,'Lagrange','150000','Fusion','18','2023-06-18','KuBand','Exoplanets','Ultraviolet','LevelA','CERT789');

-- Table describing a hub that handles interstellar cargo and logistics
CREATE TABLE interstellar_logistics_hub
(
    id INTEGER NOT NULL PRIMARY KEY,
    hub_name TEXT,
    planetary_system TEXT,
    docking_ports INTEGER,
    cargo_capacity_tons INTEGER,
    staff_on_duty INTEGER,
    security_level TEXT,
    operational_since DATE,
    energy_source TEXT,
    max_ship_size TEXT,
    throughput_per_day INTEGER,
    maintenance_status TEXT,
    last_inspection DATE,
    regulatory_body TEXT,
    contact_number TEXT,
    latitude DECIMAL,
    longitude DECIMAL,
    climate_zone TEXT,
    insurance_provider TEXT,
    notes TEXT
);

INSERT INTO interstellar_logistics_hub VALUES (1,'Orion_Hub','Orion','12','2500','80','High','2015-05-01','Antimatter','ClassA','500','Good','2023-03-12','GalacticAuthority','5551234',12.34,45.67,'Temperate','StellarInsure','Main hub near nebula');
INSERT INTO interstellar_logistics_hub VALUES (2,'Quasar_Dock','Andromeda','8','1800','60','Medium','2018-09-15','Solar','ClassB','320','Scheduled','2022-11-20','IntergalacticCouncil','5555678',-23.45,98.76,'Arid','SpaceCover','Secondary hub in sector 7');
INSERT INTO interstellar_logistics_hub VALUES (3,'Nebula_Port','Cygnus','15','3000','95','VeryHigh','2012-01-30','Fusion','ClassA','750','Excellent','2023-07-05','UniversalRegulators','5559012',0.00,0.00,'Frozen','GalacticProtect','Primary hub for deep space cargo');

-- Table describing grants awarded for quantum technology research
CREATE TABLE quantum_research_grant
(
    id INTEGER NOT NULL PRIMARY KEY,
    grant_title TEXT,
    principal_investigator TEXT,
    institution TEXT,
    start_date DATE,
    end_date DATE,
    funding_amount_usd INTEGER,
    field_of_study TEXT,
    quantum_technology TEXT,
    duration_months INTEGER,
    review_score INTEGER,
    status TEXT,
    allocated_compute_hours INTEGER,
    associated_publications INTEGER,
    compliance_reported BOOLEAN,
    funding_agency TEXT,
    grant_number TEXT,
    project_code TEXT,
    budget_breakdown TEXT,
    milestones_met INTEGER
);

INSERT INTO quantum_research_grant VALUES (1,'Entanglement_Network','DrAliceSmith','NovaInstitute','2022-01-01','2025-12-31','2500000','QuantumCommunications','PhotonEntanglement','48','92','Active','15000','5','TRUE','QuantumFund','QG-2022-01','QN-EN01','Hardware30%Software70%','3');
INSERT INTO quantum_research_grant VALUES (2,'Qubit_Scaling','ProfBobLee','HeliosUniversity','2021-06-15','2024-06-14','1800000','QuantumComputing','SuperconductingQubits','36','88','Active','12000','4','TRUE','ScienceCouncil','QG-2021-06','QC-SC02','Equipment50%Personnel30%Travel20%','2');
INSERT INTO quantum_research_grant VALUES (3,'Topological_Error_Correction','DrCarolNg','ArcTech','2023-03-01','2026-02-28','3000000','QuantumErrorCorrection','TopologicalQubits','36','95','Pending','0','0','FALSE','FutureTechAgency','QG-2023-03','TE-EC03','Salaries40%Equipment40%Misc20%','0');

-- Table describing a nanotechnology manufacturing production line
CREATE TABLE nanotech_manufacturing_line
(
    id INTEGER NOT NULL PRIMARY KEY,
    line_name TEXT,
    plant_location TEXT,
    operational_status TEXT,
    start_date DATE,
    capacity_units_per_day INTEGER,
    robot_models_used TEXT,
    energy_consumption_mwh INTEGER,
    maintenance_interval_days INTEGER,
    last_maintenance DATE,
    supervisor_name TEXT,
    safety_certified BOOLEAN,
    compliance_standard TEXT,
    waste_recycling_rate_percent INTEGER,
    product_type TEXT,
    avg_yield_percent INTEGER,
    downtime_hours_month INTEGER,
    quality_control_pass_rate_percent INTEGER,
    notes TEXT,
    version_code TEXT
);

INSERT INTO nanotech_manufacturing_line VALUES (1,'NanoLine_A','MarsBaseAlpha','Running','2019-04-20','5000','RoboX200','150','30','2023-02-15','EveKhan','TRUE','ISO9001','85','NanoSensors','92','12','98','Line operates at peak efficiency','v1.2');
INSERT INTO nanotech_manufacturing_line VALUES (2,'NanoLine_B','LunaFacility','Standby','2020-11-10','3000','RoboY150','120','45','2022-12-01','LiamOchoa','FALSE','ISO14001','78','NanoCoatings','88','20','95','Undergoing safety audit','v1.0');
INSERT INTO nanotech_manufacturing_line VALUES (3,'NanoLine_C','TitanStation','Running','2021-07-05','4500','RoboZ300','140','35','2023-05-10','MiaRosen','TRUE','ISO45001','90','NanoMembranes','94','8','99','Recent upgrade to robotics','v1.3');

-- Table describing habitats where alien species are observed
CREATE TABLE alien_species_habitat
(
    id INTEGER NOT NULL PRIMARY KEY,
    species_name TEXT,
    habitat_name TEXT,
    planet TEXT,
    region TEXT,
    climate TEXT,
    dominant_vegetation TEXT,
    average_temperature_c INTEGER,
    atmospheric_composition TEXT,
    water_availability TEXT,
    population_estimate INTEGER,
    research_team TEXT,
    discovery_date DATE,
    protection_status TEXT,
    funding_source TEXT,
    study_focus TEXT,
    GPS_latitude DECIMAL,
    GPS_longitude DECIMAL,
    habitat_area_sqkm INTEGER,
    observation_notes TEXT
);

INSERT INTO alien_species_habitat VALUES (1,'Zylar','Crimson_Dunes','XenonPrime','SouthernSector','Arid','SilicaBushes','-15','NitrogenOxygen','Sparse','1200','TeamAlpha','2022-08-14','Protected','GalacticGrant','BehavioralStudy',-12.345,45.678,250,'Nocturnal activity observed');
INSERT INTO alien_species_habitat VALUES (2,'Quorx','Luminous_Forest','EpsilonVII','EastValley','Temperate','BioluminescentFerns','22','CarbonDioxide','Abundant','3400','TeamBeta','2020-03-22','Endangered','PrivateEndowment','Physiology',34.567,-78.901,180,'Seasonal migration patterns');
INSERT INTO alien_species_habitat VALUES (3,'Morlak','Frozen_Plains','OmegaIce','NorthPole','Polar','IceMoss','-60','Methane','Rare','800','TeamGamma','2021-11-05','Vulnerable','ResearchConsortium','GeneticMapping',89.012,23.456,420,'Survives extreme cold');

-- Table describing loan records for cosmic artifacts between institutions
CREATE TABLE cosmic_artifact_loan_record
(
    id INTEGER NOT NULL PRIMARY KEY,
    artifact_name TEXT,
    origin_civilization TEXT,
    loan_from_institution TEXT,
    loan_to_institution TEXT,
    loan_start_date DATE,
    loan_end_date DATE,
    condition_at_loan TEXT,
    insurance_value_usd INTEGER,
    transport_method TEXT,
    security_level TEXT,
    curator_responsible TEXT,
    display_location TEXT,
    exhibit_name TEXT,
    loan_status TEXT,
    renewal_allowed BOOLEAN,
    renewal_count INTEGER,
    notes TEXT,
    catalog_number TEXT,
    conservation_actions TEXT
);

INSERT INTO cosmic_artifact_loan_record VALUES (1,'Star_Scepter','AncientCelestials','GalacticMuseum','OrbitalGallery','2023-01-10','2023-12-31','Excellent','500000','GravityStasis','High','DrNaomi','HallA','CelestialTreasures','Active','TRUE','1','Handled with anti‑radiation coating','CAT001','Polishing');
INSERT INTO cosmic_artifact_loan_record VALUES (2,'Nebula_Orb','VoidKonclave','StarlightArchive','UniversalExhibit','2022-05-05','2023-05-04','Good','300000','QuantumPod','Medium','DrEli','MainAtrium','CosmicArtifacts','Returned','FALSE','0','No visible degradation','CAT002','Cleaning');
INSERT INTO cosmic_artifact_loan_record VALUES (3,'Quasar_Crystal','EclipseOrder','IntergalacticVault','DeepSpaceMuseum','2024-03-01','2025-02-28','Fair','750000','WormholeTransit','VeryHigh','DrAria','ExhibitB','ChroniclesOfLight','Pending','TRUE','0','Requires temperature regulation','CAT003','Stabilization');

-- Table describing agreements for interdimensional trade
CREATE TABLE interdimensional_trade_agreement
(
    id INTEGER NOT NULL PRIMARY KEY,
    agreement_name TEXT,
    parties_involved TEXT,
    dimensions_connected TEXT,
    effective_date DATE,
    expiry_date DATE,
    trade_goods TEXT,
    tariff_rate_percent INTEGER,
    arbitration_mechanism TEXT,
    compliance_officer TEXT,
    status TEXT,
    renewal_option BOOLEAN,
    renewal_term_months INTEGER,
    confidentiality_clause BOOLEAN,
    amendment_history TEXT,
    signed_by TEXT,
    signature_date DATE,
    governing_law TEXT,
    dispute_resolution TEXT,
    remarks TEXT
);

INSERT INTO interdimensional_trade_agreement VALUES (1,'PentaGate Accord','TerranCouncil|XenonAlliance','Dim1|Dim2','2022-01-01','2032-12-31','Alloys,Energy','5','MediatorsCouncil','OfficerZane','Active','TRUE','24','TRUE','None','DirectorKara','2021-12-15','TerranLaw','ArbitrationPanel','Standard terms');
INSERT INTO interdimensional_trade_agreement VALUES (2,'EchoTrade Pact','LunaFederation|SolarRepublic','Dim3|Dim4','2020-06-15','2025-06-14','Foodstuffs,Medicines','2','ElderCouncil','OfficerMira','Expired','FALSE','0','FALSE','Amendment01','AmbassadorRex','2020-05-30','LunarCode','Mediation','Terminated early');
INSERT INTO interdimensional_trade_agreement VALUES (3,'Nebula Exchange','OrionConsortium|VegaUnion','Dim5|Dim6','2023-09-01','2033-08-31','RareMinerals','8','NeutralArbiters','OfficerLiu','Active','TRUE','36','TRUE','Amendment02|Amendment03','MinisterSofia','2023-08-20','OrionStatutes','JointCommission','Extended scope');

-- Table describing a queue of jobs submitted to a quantum computer
CREATE TABLE quantum_computing_job_queue
(
    id INTEGER NOT NULL PRIMARY KEY,
    job_name TEXT,
    submitter TEXT,
    submission_time DATETIME,
    priority_level INTEGER,
    required_qubits INTEGER,
    estimated_runtime_seconds INTEGER,
    actual_runtime_seconds INTEGER,
    status TEXT,
    allocated_node TEXT,
    start_time DATETIME,
    end_time DATETIME,
    error_code INTEGER,
    output_location TEXT,
    resource_cost_usd INTEGER,
    qos_level TEXT,
    cancellation_reason TEXT,
    retry_count INTEGER,
    max_memory_gb INTEGER,
    notes TEXT
);

INSERT INTO quantum_computing_job_queue VALUES (1,'EntangleSim','alice','2023-07-10 08:15:00',1,64,3600,3500,'Completed','NodeA','2023-07-10 08:20:00','2023-07-10 09:15:00',0,'/results/entangle1',250,'Gold',NULL,0,16,'Successful run');
INSERT INTO quantum_computing_job_queue VALUES (2,'PrimeFactor','bob','2023-07-11 14:45:00',2,48,5400,NULL,'Running','NodeB','2023-07-11 15:00:00',NULL,NULL,'/results/prime_factor',180,'Silver',NULL,1,12,'Mid‑execution');
INSERT INTO quantum_computing_job_queue VALUES (3,'NoiseTest','carol','2023-07-12 09:30:00',3,32,1800,1800,'Failed','NodeC','2023-07-12 09:35:00','2023-07-12 10:05:00',101,'/results/noise_test',90,'Bronze','HardwareFault',0,8,'Error due to decoherence');

-- Table describing performance metrics for renewable energy farms
CREATE TABLE renewable_energy_farm_metrics
(
    id INTEGER NOT NULL PRIMARY KEY,
    farm_name TEXT,
    location TEXT,
    farm_type TEXT,
    installed_capacity_mw INTEGER,
    average_generation_mwh_per_day INTEGER,
    capacity_factor_percent INTEGER,
    operational_since DATE,
    number_of_turbines INTEGER,
    number_of_solar_panels INTEGER,
    grid_connection_point TEXT,
    maintenance_schedule TEXT,
    last_maintenance DATE,
    downtime_hours_year INTEGER,
    avg_wind_speed_ms INTEGER,
    avg_solar_irradiance_wpm2 INTEGER,
    emissions_saved_tons_co2 INTEGER,
    revenue_usd INTEGER,
    ownership_entity TEXT,
    notes TEXT
);

INSERT INTO renewable_energy_farm_metrics VALUES (1,'Solaris_Field','MarsEquator','Solar','120','3000','27','2018-03-01','0','250000','GridNode42','Quarterly','2023-01-15','12','0','800','45000','2000000','MarsEnergyCorp','High efficiency panels');
INSERT INTO renewable_energy_farm_metrics VALUES (2,'Windward_Plateau','LunaNorth','Wind','250','6000','30','2015-06-20','150','0','GridNode77','Biannual','2022-11-30','5','15','0','120000','5000000','LunaWindLtd','Low maintenance turbines');
INSERT INTO renewable_energy_farm_metrics VALUES (3,'Hybrid_Station','TitanValley','Hybrid','180','4500','33','2020-09-10','80','120000','GridNode33','Annual','2023-04-05','8','12','550','80000','3000000','TitanHybridEnergy','Combines wind and solar');

-- Table describing schedules for a metahuman medical clinic
CREATE TABLE metahuman_clinic_schedule
(
    id INTEGER NOT NULL PRIMARY KEY,
    clinic_name TEXT,
    location TEXT,
    department TEXT,
    doctor_in_charge TEXT,
    schedule_date DATE,
    available_slots INTEGER,
    booked_slots INTEGER,
    average_wait_time_minutes INTEGER,
    facility_rating INTEGER,
    equipment_status TEXT,
    emergency_capacity INTEGER,
    special_programs TEXT,
    insurance_accepted TEXT,
    contact_number TEXT,
    email_address TEXT,
    website_url TEXT,
    notes TEXT,
    compliance_audit_date DATE,
    audit_result TEXT
);

INSERT INTO metahuman_clinic_schedule VALUES (1,'Metahuman_Care_Center','NewYork','Regeneration','DrSmith','2023-08-15',20,12,15,9,'Optimal','5','HealingAccelerator','Full','5551122','contact@mhcare.org','www.mhcare.org','Morning slots filled','2023-06-01','Pass');
INSERT INTO metahuman_clinic_schedule VALUES (2,'Metahuman_Health_Hub','London','Psychic','DrLee','2023-08-16',15,7,10,8,'Good','3','MindFocus','Partial','5553344','info@mhhealth.co','www.mhhealth.co','Afternoon session open','2023-05-20','Pass');
INSERT INTO metahuman_clinic_schedule VALUES (3,'MetaClinic_East','Tokyo','Infiltration','DrKhan','2023-08-17',10,5,8,7,'Excellent','2','StealthTraining','Full','5557788','support@metaclinic.jp','www.metaclinic.jp','Limited slots due to specialist availability','2023-07-10','Pass');