-- Quantum computing cluster metadata
CREATE TABLE quantum_computing_cluster
(
    id INTEGER NOT NULL PRIMARY KEY,
    cluster_name TEXT,
    location TEXT,
    total_qubits INTEGER,
    operational_status TEXT,
    cooling_system TEXT,
    power_consumption_kw REAL,
    launch_date DATE,
    firmware_version TEXT,
    maintenance_cycle_days INTEGER,
    primary_operator TEXT,
    backup_cluster_id INTEGER,
    network_bandwidth_gbps REAL,
    security_level TEXT,
    max_jobs_per_day INTEGER,
    avg_job_time_seconds REAL,
    temperature_celsius REAL,
    humidity_percent REAL,
    uptime_percent REAL,
    notes TEXT
);

INSERT INTO quantum_computing_cluster (id,cluster_name,location,total_qubits,operational_status,cooling_system,power_consumption_kw,launch_date,firmware_version,maintenance_cycle_days,primary_operator,backup_cluster_id,network_bandwidth_gbps,security_level,max_jobs_per_day,avg_job_time_seconds,temperature_celsius,humidity_percent,uptime_percent,notes) VALUES (1,'QClusterAlpha','SectorA',512,'Online','LiquidNitrogen',2500.5,'2023-05-12','v1.2.3',30,'DrSmith',2,100.0,'High',2000,45.6,22.5,40,99.7,'Initial deployment');
INSERT INTO quantum_computing_cluster (id,cluster_name,location,total_qubits,operational_status,cooling_system,power_consumption_kw,launch_date,firmware_version,maintenance_cycle_days,primary_operator,backup_cluster_id,network_bandwidth_gbps,security_level,max_jobs_per_day,avg_job_time_seconds,temperature_celsius,humidity_percent,uptime_percent,notes) VALUES (2,'QClusterBeta','SectorB',1024,'Maintenance','Helium',3200.0,'2024-01-20','v1.3.0',45,'DrLee',1,150.0,'Medium',3000,38.2,21.0,35,99.2,'Upgraded qubit array');
INSERT INTO quantum_computing_cluster (id,cluster_name,location,total_qubits,operational_status,cooling_system,power_consumption_kw,launch_date,firmware_version,maintenance_cycle_days,primary_operator,backup_cluster_id,network_bandwidth_gbps,security_level,max_jobs_per_day,avg_job_time_seconds,temperature_celsius,humidity_percent,uptime_percent,notes) VALUES (3,'QClusterGamma','SectorC',256,'Decommissioned','Cryogenic',1800.7,'2021-11-03','v1.0.9',60,'DrKim',NULL,80.0,'Low',1200,50.1,23.8,45,95.4,'Scheduled for dismantle');

-- Interstellar navigation satellite registry
CREATE TABLE interstellar_navigation_satellite
(
    id INTEGER NOT NULL PRIMARY KEY,
    satellite_name TEXT,
    launch_vehicle TEXT,
    launch_date DATE,
    orbit_type TEXT,
    operational_status TEXT,
    primary_mission TEXT,
    secondary_mission TEXT,
    fuel_type TEXT,
    thrust_newtons REAL,
    manufacturer TEXT,
    expected_lifetime_years INTEGER,
    current_altitude_km REAL,
    transponder_frequency_mhz REAL,
    beacon_power_watts REAL,
    data_rate_mbps REAL,
    on_board_computer_version TEXT,
    thermal_control_system TEXT,
    radiation_shielding_mm REAL,
    maintenance_window_hours INTEGER,
    notes TEXT
);

INSERT INTO interstellar_navigation_satellite (id,satellite_name,launch_vehicle,launch_date,orbit_type,operational_status,primary_mission,secondary_mission,fuel_type,thrust_newtons,manufacturer,expected_lifetime_years,current_altitude_km,transponder_frequency_mhz,beacon_power_watts,data_rate_mbps,on_board_computer_version,thermal_control_system,radiation_shielding_mm,maintenance_window_hours,notes) VALUES (1,'NavSatOne','StarshipX','2022-03-15','Heliocentric','Active','StellarMapping','GravityAssist','Ion','1500', 'AstraTech',15,350000,2200,5,12.5,'OCV3.1','PassiveRadiators',12.0,48,'Nominal performance');
INSERT INTO interstellar_navigation_satellite (id,satellite_name,launch_vehicle,launch_date,orbit_type,operational_status,primary_mission,secondary_mission,fuel_type,thrust_newtons,manufacturer,expected_lifetime_years,current_altitude_km,transponder_frequency_mhz,beacon_power_watts,data_rate_mbps,on_board_computer_version,thermal_control_system,radiation_shielding_mm,maintenance_window_hours,notes) VALUES (2,'NavSatTwo','FalconHeavy','2023-07-22','LagrangePoint','Standby','DeepSpaceBeacon','SolarWindStudy','Plasma','1800','OrbitalDynamics',20,420000,2400,6,15.0,'OCV4.0','ActiveCoolants',14.5,36,'Awaiting activation');
INSERT INTO interstellar_navigation_satellite (id,satellite_name,launch_vehicle,launch_date,orbit_type,operational_status,primary_mission,secondary_mission,fuel_type,thrust_newtons,manufacturer,expected_lifetime_years,current_altitude_km,transponder_frequency_mhz,beacon_power_watts,data_rate_mbps,on_board_computer_version,thermal_control_system,radiation_shielding_mm,maintenance_window_hours,notes) VALUES (3,'NavSatThree','StarshipY','2021-11-09','Heliocentric','Retired','AsteroidTracking','CometObservation','Chemical','1300','StellarWorks',12,310000,2100,4,10.2,'OCV2.9','PassiveRadiators',11.0,72,'Decommissioned after fuel depletion');

-- Biotech research facility inventory
CREATE TABLE biotech_research_facility
(
    id INTEGER NOT NULL PRIMARY KEY,
    facility_name TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    country TEXT,
    established_date DATE,
    primary_focus TEXT,
    biosafety_level INTEGER,
    total_labs INTEGER,
    active_projects INTEGER,
    staff_count INTEGER,
    director_name TEXT,
    funding_source TEXT,
    annual_budget_million REAL,
    accreditation_body TEXT,
    compliance_status TEXT,
    waste_disposal_method TEXT,
    refrigeration_units INTEGER,
    freezers INTEGER,
    cleanroom_sqft REAL,
    max_occupancy INTEGER,
    notes TEXT
);

INSERT INTO biotech_research_facility (id,facility_name,address,city,state,zip_code,country,established_date,primary_focus,biosafety_level,total_labs,active_projects,staff_count,director_name,funding_source,annual_budget_million,accreditation_body,compliance_status,waste_disposal_method,refrigeration_units,freezers,cleanroom_sqft,max_occupancy,notes) VALUES (1,'GenomicsHub','123 Bio Lane','Newtown','CA','90210','USA','2015-06-01','GenomicSequencing',2,12,8,75,'DrAllen','GovGrant',5.2,'ISO9001','Compliant','Incineration',6,14,1200.5,200,'State of the art facility');
INSERT INTO biotech_research_facility (id,facility_name,address,city,state,zip_code,country,established_date,primary_focus,biosafety_level,total_labs,active_projects,staff_count,director_name,funding_source,annual_budget_million,accreditation_body,compliance_status,waste_disposal_method,refrigeration_units,freezers,cleanroom_sqft,max_occupancy,notes) VALUES (2,'CellTherapyCenter','456 Innovation Blvd','Midvale','TX','75001','USA','2018-09-15','CellTherapies',3,9,5,60,'DrBaker','PrivateEquity',7.8,'ISO13485','Compliant','ChemicalNeutralization',4,10,950.0,180,'Focus on CAR T research');
INSERT INTO biotech_research_facility (id,facility_name,address,city,state,zip_code,country,established_date,primary_focus,biosafety_level,total_labs,active_projects,staff_count,director_name,funding_source,annual_budget_million,accreditation_body,compliance_status,waste_disposal_method,refrigeration_units,freezers,cleanroom_sqft,max_occupancy,notes) VALUES (3,'VaccineLab','789 Health Ave','Lakeview','NY','10023','USA','2020-01-20','VaccineDevelopment',4,15,12,120,'DrChen','PharmaPartner',12.5,'ISO14001','Pending','Autoclave',8,22,1800.0,300,'Rapid response wing added in 2021');

-- Cosmic artifact exhibit catalog
CREATE TABLE cosmic_artifact_exhibit
(
    id INTEGER NOT NULL PRIMARY KEY,
    exhibit_name TEXT,
    artifact_name TEXT,
    origin_universe TEXT,
    discovery_date DATE,
    curator TEXT,
    display_location TEXT,
    material_composition TEXT,
    estimated_age_million_years REAL,
    power_level TEXT,
    containment_level TEXT,
    last_restoration_date DATE,
    insurance_value_usd REAL,
    loan_status TEXT,
    loan_institution TEXT,
    exhibit_start_date DATE,
    exhibit_end_date DATE,
    visitor_capacity INTEGER,
    audio_guide_available BOOLEAN,
    interactive_display BOOLEAN,
    lighting_requirements TEXT,
    humidity_control_percent REAL,
    notes TEXT
);

INSERT INTO cosmic_artifact_exhibit (id,exhibit_name,artifact_name,origin_universe,discovery_date,curator,display_location,material_composition,estimated_age_million_years,power_level,containment_level,last_restoration_date,insurance_value_usd,loan_status,loan_institution,exhibit_start_date,exhibit_end_date,visitor_capacity,audio_guide_available,interactive_display,lighting_requirements,humidity_control_percent,notes) VALUES (1,'Stellar Relics','Eon Crystal','AlphaPrime','2019-04-12','DrMorgan','HallA','Quartz','4.5','High','Level3','2021-06-01','2500000','Owned','', '2022-01-15','2022-06-15',500,TRUE,FALSE,'LowUV','45','Radiant aura visible at dusk');
INSERT INTO cosmic_artifact_exhibit (id,exhibit_name,artifact_name,origin_universe,discovery_date,curator,display_location,material_composition,estimated_age_million_years,power_level,containment_level,last_restoration_date,insurance_value_usd,loan_status,loan_institution,exhibit_start_date,exhibit_end_date,visitor_capacity,audio_guide_available,interactive_display,lighting_requirements,humidity_control_percent,notes) VALUES (2,'Quantum Wonders','Flux Engine','BetaSector','2020-11-03','DrLiu','HallB','Alloy','2.1','Medium','Level2','2022-02-20','1800000','OnLoan','CelestialMuseum','2022-09-01','2023-02-28',800,TRUE,TRUE,'SoftWhite','40','Operates silently when viewed from angle 45');
INSERT INTO cosmic_artifact_exhibit (id,exhibit_name,artifact_name,origin_universe,discovery_date,curator,display_location,material_composition,estimated_age_million_years,power_level,containment_level,last_restoration_date,insurance_value_usd,loan_status,loan_institution,exhibit_start_date,exhibit_end_date,visitor_capacity,audio_guide_available,interactive_display,lighting_requirements,humidity_control_percent,notes) VALUES (3,'Dimensional Vault','Chrono Relic','GammaRealm','2018-07-19','DrPatel','VaultRoom','Unknown','7.8','Extreme','Level5','2020-12-10','5000000','Owned','', '2021-03-10','2021-12-31',300,FALSE,TRUE,'NoLight','30','Temporal distortions detected during peak hours');

-- Multiverse governance vote log
CREATE TABLE multiverse_governance_vote
(
    id INTEGER NOT NULL PRIMARY KEY,
    vote_name TEXT,
    proposal_description TEXT,
    proposer TEXT,
    proposal_date DATE,
    voting_start_date DATE,
    voting_end_date DATE,
    total_eligible_voters INTEGER,
    total_votes_cast INTEGER,
    yes_votes INTEGER,
    no_votes INTEGER,
    abstain_votes INTEGER,
    result TEXT,
    enactment_date DATE,
    governing_body TEXT,
    quorum_percent REAL,
    voting_method TEXT,
    secret_ballot BOOLEAN,
    signature_required BOOLEAN,
    public_record_url TEXT,
    notes TEXT
);

INSERT INTO multiverse_governance_vote (id,vote_name,proposal_description,proposer,proposal_date,voting_start_date,voting_end_date,total_eligible_voters,total_votes_cast,yes_votes,no_votes,abstain_votes,result,enactment_date,governing_body,quorum_percent,voting_method,secret_ballot,signature_required,public_record_url,notes) VALUES (1,'Vote001','Establish universal trade standards','CouncilA','2022-01-10','2022-02-01','2022-02-15',1500,1200,800,350,50,'Approved','2022-03-01','UniversalCouncil',80,'Electronic',TRUE,FALSE,'http://universe.gov/vote001','Passed with strong majority');
INSERT INTO multiverse_governance_vote (id,vote_name,proposal_description,proposer,proposal_date,voting_start_date,voting_end_date,total_eligible_voters,total_votes_cast,yes_votes,no_votes,abstain_votes,result,enactment_date,governing_body,quorum_percent,voting_method,secret_ballot,signature_required,public_record_url,notes) VALUES (2,'Vote002','Modify interdimensional travel protocols','CouncilB','2023-04-05','2023-04-20','2023-05-05',1800,1500,900,550,50,'Rejected','', 'UniversalCouncil',85,'Paper',FALSE,TRUE,'http://universe.gov/vote002','Failed to reach quorum');
INSERT INTO multiverse_governance_vote (id,vote_name,proposal_description,proposer,proposal_date,voting_start_date,voting_end_date,total_eligible_voters,total_votes_cast,yes_votes,no_votes,abstain_votes,result,enactment_date,governing_body,quorum_percent,voting_method,secret_ballot,signature_required,public_record_url,notes) VALUES (3,'Vote003','Approve funding for cosmic research','CouncilC','2024-07-12','2024-07-25','2024-08-10',2000,1800,1400,350,50,'Approved','2024-09-01','UniversalCouncil',90,'Electronic',TRUE,TRUE,'http://universe.gov/vote003','Funding allocated to 7 projects');

-- Renewable energy project registry
CREATE TABLE renewable_energy_project
(
    id INTEGER NOT NULL PRIMARY KEY,
    project_name TEXT,
    project_type TEXT,
    location TEXT,
    country TEXT,
    start_date DATE,
    expected_completion_date DATE,
    capacity_mw REAL,
    technology TEXT,
    developer TEXT,
    contractor TEXT,
    financing_mode TEXT,
    total_investment_usd REAL,
    status TEXT,
    operating_company TEXT,
    grid_connection_point TEXT,
    environmental_impact_assessment BOOLEAN,
    wildlife_mitigation_plan BOOLEAN,
    carbon_offset_tonnes REAL,
    annual_energy_production_mwh REAL,
    jobs_created INTEGER,
    land_area_hectares REAL,
    notes TEXT
);

INSERT INTO renewable_energy_project (id,project_name,project_type,location,country,start_date,expected_completion_date,capacity_mw,technology,developer,contractor,financing_mode,total_investment_usd,status,operating_company,grid_connection_point,environmental_impact_assessment,wildlife_mitigation_plan,carbon_offset_tonnes,annual_energy_production_mwh,jobs_created,land_area_hectares,notes) VALUES (1,'SolarDelta','Solar','DesertEdge','USA','2022-03-01','2025-12-31',250.5,'Photovoltaic','SunPowerInc','BuildCo','PPPA',150000000,'Construction','SolarOps','NodeA',TRUE,TRUE,50000,300000,350,800,'Phase 1 of regional solar hub');
INSERT INTO renewable_energy_project (id,project_name,project_type,location,country,start_date,expected_completion_date,capacity_mw,technology,developer,contractor,financing_mode,total_investment_usd,status,operating_company,grid_connection_point,environmental_impact_assessment,wildlife_mitigation_plan,carbon_offset_tonnes,annual_energy_production_mwh,jobs_created,land_area_hectares,notes) VALUES (2,'WindHarbor','Wind','CoastalCliff','Canada','2023-06-15','2027-09-30',180.0,'Offshore','WindDynamics','MarineConstruct','DebtEquity',200000000,'Planning','WindFlow','NodeB',TRUE,FALSE,75000,450000,500,1200,'Includes offshore turbine array');
INSERT INTO renewable_energy_project (id,project_name,project_type,location,country,start_date,expected_completion_date,capacity_mw,technology,developer,contractor,financing_mode,total_investment_usd,status,operating_company,grid_connection_point,environmental_impact_assessment,wildlife_mitigation_plan,carbon_offset_tonnes,annual_energy_production_mwh,jobs_created,land_area_hectares,notes) VALUES (3,'GeoThermX','Geothermal','VolcanicBasin','Iceland','2021-09-01','2024-12-31',90.0,'BinaryCycle','GeoPower','DrillTech','Grant',90000000,'Operating','GeoHeat','NodeC',TRUE,TRUE,60000,210000,200,350,'Provides base-load renewable power');

-- AI model performance log
CREATE TABLE ai_model_performance_log
(
    id INTEGER NOT NULL PRIMARY KEY,
    model_name TEXT,
    version TEXT,
    deployment_environment TEXT,
    deployment_date DATE,
    cpu_usage_percent REAL,
    gpu_usage_percent REAL,
    memory_usage_gb REAL,
    latency_ms REAL,
    throughput_requests_per_sec REAL,
    error_rate_percent REAL,
    training_data_version TEXT,
    inference_data_version TEXT,
    audit_timestamp DATE,
    passed_security_scan BOOLEAN,
    compliance_framework TEXT,
    notes TEXT,
    responsible_engineer TEXT,
    regression_test_passed BOOLEAN,
    dataset_size_gb REAL,
    max_concurrent_sessions INTEGER,
    average_uptime_percent REAL
);

INSERT INTO ai_model_performance_log (id,model_name,version,deployment_environment,deployment_date,cpu_usage_percent,gpu_usage_percent,memory_usage_gb,latency_ms,throughput_requests_per_sec,error_rate_percent,training_data_version,inference_data_version,audit_timestamp,passed_security_scan,compliance_framework,notes,responsible_engineer,regression_test_passed,dataset_size_gb,max_concurrent_sessions,average_uptime_percent) VALUES (1,'VisionNet','v1.0','Production','2023-01-10',45.2,70.5,32.0,120.5,2500.0,0.3,'TDv1','IDv1','2023-04-01',TRUE,'ISO27001','Stable performance','EngAlice',TRUE,120.5,5000,99.9);
INSERT INTO ai_model_performance_log (id,model_name,version,deployment_environment,deployment_date,cpu_usage_percent,gpu_usage_percent,memory_usage_gb,latency_ms,throughput_requests_per_sec,error_rate_percent,training_data_version,inference_data_version,audit_timestamp,passed_security_scan,compliance_framework,notes,responsible_engineer,regression_test_passed,dataset_size_gb,max_concurrent_sessions,average_uptime_percent) VALUES (2,'LangModel','v2.3','Staging','2023-06-15',55.0,80.0,48.0,90.2,3000.0,0.5,'TDv2','IDv2','2023-09-10',TRUE,'SOC2','Beta testing','EngBob',TRUE,200.0,7500,98.5);
INSERT INTO ai_model_performance_log (id,model_name,version,deployment_environment,deployment_date,cpu_usage_percent,gpu_usage_percent,memory_usage_gb,latency_ms,throughput_requests_per_sec,error_rate_percent,training_data_version,inference_data_version,audit_timestamp,passed_security_scan,compliance_framework,notes,responsible_engineer,regression_test_passed,dataset_size_gb,max_concurrent_sessions,average_uptime_percent) VALUES (3,'PredictorX','v0.9','Development','2024-02-20',30.5,50.0,24.0,150.0,1800.0,0.2,'TDv0.9','IDv0.9','2024-04-05',FALSE,'None','Initial rollout','EngCarol',FALSE,80.0,3000,97.0);

-- Planetary weather station measurements
CREATE TABLE planetary_weather_station
(
    id INTEGER NOT NULL PRIMARY KEY,
    station_name TEXT,
    planet_name TEXT,
    latitude REAL,
    longitude REAL,
    altitude_meters REAL,
    sensor_package TEXT,
    installation_date DATE,
    last_maintenance_date DATE,
    temperature_celsius REAL,
    pressure_pascal REAL,
    humidity_percent REAL,
    wind_speed_mps REAL,
    wind_direction_deg INTEGER,
    solar_radiation_wm2 REAL,
    precipitation_mm REAL,
    dust_density_particles_per_cc REAL,
    magnetic_field_strength_ut REAL,
    radiation_level_sievert REAL,
    data_transmission_latency_ms REAL,
    operational_status TEXT,
    notes TEXT
);

INSERT INTO planetary_weather_station (id,station_name,planet_name,latitude,longitude,altitude_meters,sensor_package,installation_date,last_maintenance_date,temperature_celsius,pressure_pascal,humidity_percent,wind_speed_mps,wind_direction_deg,solar_radiation_wm2,precipitation_mm,dust_density_particles_per_cc,magnetic_field_strength_ut,radiation_level_sievert,data_transmission_latency_ms,operational_status,notes) VALUES (1,'MarsNorth1','Mars',12.5,45.3,5000,'Basic','2020-03-01','2023-01-10',-55.2,610,'5',12.4,180,200.0,0.0,0.03,0.5,0.001,250,'Active','Stable operation');
INSERT INTO planetary_weather_station (id,station_name,planet_name,latitude,longitude,altitude_meters,sensor_package,installation_date,last_maintenance_date,temperature_celsius,pressure_pascal,humidity_percent,wind_speed_mps,wind_direction_deg,solar_radiation_wm2,precipitation_mm,dust_density_particles_per_cc,magnetic_field_strength_ut,radiation_level_sievert,data_transmission_latency_ms,operational_status,notes) VALUES (2,'VenusSouth','Venus',-15.0,130.0,2000,'Advanced','2021-07-15','2023-06-20',470.0,9200000,'2',5.0,90,3000.0,0.0,0.0,0.0,0.004,150,'Active','High temperature tolerance');
INSERT INTO planetary_weather_station (id,station_name,planet_name,latitude,longitude,altitude_meters,sensor_package,installation_date,last_maintenance_date,temperature_celsius,pressure_pascal,humidity_percent,wind_speed_mps,wind_direction_deg,solar_radiation_wm2,precipitation_mm,dust_density_particles_per_cc,magnetic_field_strength_ut,radiation_level_sievert,data_transmission_latency_ms,operational_status,notes) VALUES (3,'TitanOutpost','Titan',78.0,250.0,1500,'Standard','2019-11-05','2022-12-01',-179.5,147000,'85',1.2,270,150.0,0.5,0.01,0.2,0.0005,300,'Maintenance','Seasonal methane rain observed');

-- Hyperloop transport hub inventory
CREATE TABLE hyperloop_transport_hub
(
    id INTEGER NOT NULL PRIMARY KEY,
    hub_name TEXT,
    city TEXT,
    country TEXT,
    opening_date DATE,
    total_tracks INTEGER,
    max_speed_kmh REAL,
    passenger_capacity_per_trip INTEGER,
    daily_trip_capacity INTEGER,
    energy_source TEXT,
    average_wait_minutes REAL,
    ticket_price_usd REAL,
    maintenance_interval_days INTEGER,
    last_inspection_date DATE,
    safety_certification TEXT,
    control_center_operator TEXT,
    number_of_platforms INTEGER,
    number_of_elevators INTEGER,
    baggage_handling_capacity_kg REAL,
    parking_spaces INTEGER,
    adjacent_station_names TEXT,
    accessibility_features TEXT,
    notes TEXT
);

INSERT INTO hyperloop_transport_hub (id,hub_name,city,country,opening_date,total_tracks,max_speed_kmh,passenger_capacity_per_trip,daily_trip_capacity,energy_source,average_wait_minutes,ticket_price_usd,maintenance_interval_days,last_inspection_date,safety_certification,control_center_operator,number_of_platforms,number_of_elevators,baggage_handling_capacity_kg,parking_spaces,adjacent_station_names,accessibility_features,notes) VALUES (1,'HyperHubAlpha','MetroCity','USA','2022-05-20',4,1200.0,800,1500,'Electric','5',45.0,180,'2023-12-01','ISO9001','OpsTeamA',6,8,2000.0,500,'StationX;StationY','WheelchairRamp;BrailleSigns','First hub in region');
INSERT INTO hyperloop_transport_hub (id,hub_name,city,country,opening_date,total_tracks,max_speed_kmh,passenger_capacity_per_trip,daily_trip_capacity,energy_source,average_wait_minutes,ticket_price_usd,maintenance_interval_days,last_inspection_date,safety_certification,control_center_operator,number_of_platforms,number_of_elevators,baggage_handling_capacity_kg,parking_spaces,adjacent_station_names,accessibility_features,notes) VALUES (2,'HyperHubBeta','RiverTown','Canada','2023-03-15',3,1100.0,650,1200,'Hydrogen','7',38.5,210,'2024-02-10','ISO14001','OpsTeamB',5,6,1500.0,300,'StationA;StationB','ElevatorAssist;AudioGuides','Integrated with local transit');
INSERT INTO hyperloop_transport_hub (id,hub_name,city,country,opening_date,total_tracks,max_speed_kmh,passenger_capacity_per_trip,daily_trip_capacity,energy_source,average_wait_minutes,ticket_price_usd,maintenance_interval_days,last_inspection_date,safety_certification,control_center_operator,number_of_platforms,number_of_elevators,baggage_handling_capacity_kg,parking_spaces,adjacent_station_names,accessibility_features,notes) VALUES (3,'HyperHubGamma','CoastalVille','UK','2024-01-10',5,1300.0,900,1800,'Solar','4',52.0,150,'2024-06-20','ISO45001','OpsTeamC',7,9,2500.0,750,'StationM;StationN','TactileFloor;SignLanguageDisplays','Designed for high tourist traffic');

-- Metahuman clinic record
CREATE TABLE metahuman_clinic_record
(
    id INTEGER NOT NULL PRIMARY KEY,
    patient_id INTEGER,
    full_name TEXT,
    date_of_birth DATE,
    genetic_modification_level TEXT,
    primary_ability TEXT,
    secondary_ability TEXT,
    last_checkup_date DATE,
    prescribing_physician TEXT,
    medication_plan TEXT,
    therapy_sessions INTEGER,
    immunization_status TEXT,
    recent_incidents TEXT,
    biometric_scan_id INTEGER,
    health_insurance_provider TEXT,
    insurance_policy_number TEXT,
    emergency_contact_name TEXT,
    emergency_contact_phone TEXT,
    consent_form_signed BOOLEAN,
    follow_up_required BOOLEAN,
    next_appointment_date DATE,
    notes TEXT
);

INSERT INTO metahuman_clinic_record (id,patient_id,full_name,date_of_birth,genetic_modification_level,primary_ability,secondary_ability,last_checkup_date,prescribing_physician,medication_plan,therapy_sessions,immunization_status,recent_incidents,biometric_scan_id,health_insurance_provider,insurance_policy_number,emergency_contact_name,emergency_contact_phone,consent_form_signed,follow_up_required,next_appointment_date,notes) VALUES (1,1001,'Alex Stone','1990-04-22','Level2','Telekinesis','Invisibility','2023-11-05','DrMira','NeuroCalm',5,'UpToDate','None',5678,'MetaCare','MC123456','Jordan Stone','5551234567',TRUE,FALSE,'2024-05-10','No complications');
INSERT INTO metahuman_clinic_record (id,patient_id,full_name,date_of_birth,genetic_modification_level,primary_ability,secondary_ability,last_checkup_date,prescribing_physician,medication_plan,therapy_sessions,immunization_status,recent_incidents,biometric_scan_id,health_insurance_provider,insurance_policy_number,emergency_contact_name,emergency_contact_phone,consent_form_signed,follow_up_required,next_appointment_date,notes) VALUES (2,1002,'Ria Kline','1985-09-13','Level3','Pyrokinesis','Flight','2024-01-20','DrLiam','HeatSuppress',3,'Pending','Minor burn incident',7890,'MetaHealth','MH987654','Sam Kline','5559876543',TRUE,TRUE,'2024-06-15','Monitor skin condition');
INSERT INTO metahuman_clinic_record (id,patient_id,full_name,date_of_birth,genetic_modification_level,primary_ability,secondary_ability,last_checkup_date,prescribing_physician,medication_plan,therapy_sessions,immunization_status,recent_incidents,biometric_scan_id,health_insurance_provider,insurance_policy_number,emergency_contact_name,emergency_contact_phone,consent_form_signed,follow_up_required,next_appointment_date,notes) VALUES (3,1003,'Mara Voss','2001-12-05','Level1','SuperStrength','EnhancedSenses','2023-08-30','DrNora','StrengthMod',2,'UpToDate','Joint strain',3456,'MetaSecure','MS456789','Liam Voss','5556543210',TRUE,FALSE,'2024-04-20','Recommend physiotherapy');

-- Cosmic anomaly observation log
CREATE TABLE cosmic_anomaly_observation
(
    id INTEGER NOT NULL PRIMARY KEY,
    anomaly_id TEXT,
    detection_date DATE,
    detected_by TEXT,
    anomaly_type TEXT,
    location_coordinates TEXT,
    estimated_size_km REAL,
    energy_release_megatons REAL,
    observed_wavelength_nm REAL,
    duration_seconds REAL,
    associated_events TEXT,
    instrumentation_used TEXT,
    data_quality_rating INTEGER,
    follow_up_required BOOLEAN,
    follow_up_plan TEXT,
    publication_status TEXT,
    notes TEXT,
    confirmed BOOLEAN,
    confirming_agency TEXT,
    confidence_level_percent REAL
);

INSERT INTO cosmic_anomaly_observation (id,anomaly_id,detection_date,detected_by,anomaly_type,location_coordinates,estimated_size_km,energy_release_megatons,observed_wavelength_nm,duration_seconds,associated_events,instrumentation_used,data_quality_rating,follow_up_required,follow_up_plan,publication_status,notes,confirmed,confirming_agency,confidence_level_percent) VALUES (1,'ANOM001','2023-04-18','ObservatoryX','GammaRayBurst','RA23Dec-45','1500',20000,150,2.5,'Supernova','SpaceTelescope','9',TRUE,'SpectralAnalysis','Pending','High energy burst detected','TRUE','SpaceAgencyA',95.0);
INSERT INTO cosmic_anomaly_observation (id,anomaly_id,detection_date,detected_by,anomaly_type,location_coordinates,estimated_size_km,energy_release_megatons,observed_wavelength_nm,duration_seconds,associated_events,instrumentation_used,data_quality_rating,follow_up_required,follow_up_plan,publication_status,notes,confirmed,confirming_agency,confidence_level_percent) VALUES (2,'ANOM002','2024-01-22','SatelliteY','FastRadioBurst','RA67Dec+12','0.01',0.005,400,0.003,'None','RadioArray','8',FALSE,'','Published','First FRB of the year','FALSE','',0);
INSERT INTO cosmic_anomaly_observation (id,anomaly_id,detection_date,detected_by,anomaly_type,location_coordinates,estimated_size_km,energy_release_megatons,observed_wavelength_nm,duration_seconds,associated_events,instrumentation_used,data_quality_rating,follow_up_required,follow_up_plan,publication_status,notes,confirmed,confirming_agency,confidence_level_percent) VALUES (3,'ANOM003','2022-11-05','ProbeZ','GravitationalWave','RA11Dec-22','0.0001',0.0,0,0.2,'BlackHoleMerger','Interferometer','10',TRUE,'WaveformModeling','Submitted','Second detection in series','TRUE','GravityLab',98.5);

-- Quantum computing job queue
CREATE TABLE quantum_computing_job_queue
(
    id INTEGER NOT NULL PRIMARY KEY,
    job_id TEXT,
    submitted_by TEXT,
    submission_timestamp DATE,
    required_qubits INTEGER,
    estimated_runtime_seconds REAL,
    priority_level INTEGER,
    status TEXT,
    assigned_cluster_id INTEGER,
    result_location TEXT,
    error_message TEXT,
    cpu_allocation_percent REAL,
    gpu_allocation_percent REAL,
    memory_allocation_gb REAL,
    queue_position INTEGER,
    max_temperature_celsius REAL,
    min_temperature_celsius REAL,
    cooling_requirements TEXT,
    sla_deadline DATE,
    last_updated TIMESTAMP,
    notes TEXT
);

INSERT INTO quantum_computing_job_queue (id,job_id,submitted_by,submission_timestamp,required_qubits,estimated_runtime_seconds,priority_level,status,assigned_cluster_id,result_location,error_message,cpu_allocation_percent,gpu_allocation_percent,memory_allocation_gb,queue_position,max_temperature_celsius,min_temperature_celsius,cooling_requirements,sla_deadline,last_updated,notes) VALUES (1,'JOB1001','DrSmith','2024-03-01',120,3600.0,1,'Queued',1,'/results/job1001',NULL,20.0,70.0,32.0,5,25.0,20.0,'LiquidNitrogen','2024-03-05','2024-03-01 08:00:00','Initial submission');
INSERT INTO quantum_computing_job_queue (id,job_id,submitted_by,submission_timestamp,required_qubits,estimated_runtime_seconds,priority_level,status,assigned_cluster_id,result_location,error_message,cpu_allocation_percent,gpu_allocation_percent,memory_allocation_gb,queue_position,max_temperature_celsius,min_temperature_celsius,cooling_requirements,sla_deadline,last_updated,notes) VALUES (2,'JOB1002','DrLee','2024-03-02',256,7200.0,2,'Running',2,'/results/job1002',NULL,30.0,80.0,48.0,2,23.0,18.0,'Helium','2024-03-07','2024-03-02 09:15:00','High priority');
INSERT INTO quantum_computing_job_queue (id,job_id,submitted_by,submission_timestamp,required_qubits,estimated_runtime_seconds,priority_level,status,assigned_cluster_id,result_location,error_message,cpu_allocation_percent,gpu_allocation_percent,memory_allocation_gb,queue_position,max_temperature_celsius,min_temperature_celsius,cooling_requirements,sla_deadline,last_updated,notes) VALUES (3,'JOB1003','DrKim','2024-03-03',64,1800.0,3,'Completed',1,'/results/job1003','None',15.0,60.0,24.0,1,26.0,22.0,'Cryogenic','2024-03-04','2024-03-03 12:30:00','Completed without errors');

-- Interstellar navigation route catalog
CREATE TABLE interstellar_navigation_route
(
    id INTEGER NOT NULL PRIMARY KEY,
    route_name TEXT,
    origin_system TEXT,
    destination_system TEXT,
    distance_ly REAL,
    average_travel_time_days REAL,
    recommended_vessel_type TEXT,
    hazard_level TEXT,
    fuel_consumption_per_ly_tons REAL,
    navigation_complexity INTEGER,
    last_used_date DATE,
    active BOOLEAN,
    regulatory_approval_status TEXT,
    approved_by_agency TEXT,
    max_cargo_mass_tons REAL,
    min_crew_size INTEGER,
    communication_latency_seconds REAL,
    gravitational_assist_points INTEGER,
    notes TEXT,
    restricted_zones TEXT
);

INSERT INTO interstellar_navigation_route (id,route_name,origin_system,destination_system,distance_ly,average_travel_time_days,recommended_vessel_type,hazard_level,fuel_consumption_per_ly_tons,navigation_complexity,last_used_date,active,regulatory_approval_status,approved_by_agency,max_cargo_mass_tons,min_crew_size,communication_latency_seconds,gravitational_assist_points,notes,restricted_zones) VALUES (1,'AlphaCorridor','Sol','ProximaCentauri',4.24,12.0,'Explorer','Low',0.5,2,'2023-12-01',TRUE,'Approved','SpaceAgencyA',50,5,8.6,1,'Primary trade route','None');
INSERT INTO interstellar_navigation_route (id,route_name,origin_system,destination_system,distance_ly,average_travel_time_days,recommended_vessel_type,hazard_level,fuel_consumption_per_ly_tons,navigation_complexity,last_used_date,active,regulatory_approval_status,approved_by_agency,max_cargo_mass_tons,min_crew_size,communication_latency_seconds,gravitational_assist_points,notes,restricted_zones) VALUES (2,'BetaPassage','Sirius','Vega',25.3,75.0,'Freighter','Medium',1.2,4,'2024-02-15',TRUE,'Pending','SpaceAgencyB',200,10,35.0,3,'Rich mineral corridor','NebulaZone');
INSERT INTO interstellar_navigation_route (id,route_name,origin_system,destination_system,distance_ly,average_travel_time_days,recommended_vessel_type,hazard_level,fuel_consumption_per_ly_tons,navigation_complexity,last_used_date,active,regulatory_approval_status,approved_by_agency,max_cargo_mass_tons,min_crew_size,communication_latency_seconds,gravitational_assist_points,notes,restricted_zones) VALUES (3,'GammaArc','AlphaCentauri','BarnardsStar',6.0,18.5,'Research','High',0.8,5,'2023-08-20',FALSE,'Denied','SpaceAgencyC',30,3,10.2,2,'Scientific observation route','RadiationZone');