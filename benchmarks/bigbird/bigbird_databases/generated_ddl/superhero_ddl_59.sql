-- Table storing information about stations that observe cosmic phenomena
CREATE TABLE cosmic_observation_station
(
    id                      INTEGER PRIMARY KEY,
    station_name            TEXT,
    planet                  TEXT,
    orbit_altitude_km      INTEGER,
    launch_date             DATE,
    status                  TEXT,
    primary_mission         TEXT,
    telescope_type          TEXT,
    aperture_m              INTEGER,
    detector_type           TEXT,
    data_downlink_rate_mbps INTEGER,
    power_source            TEXT,
    staff_capacity          INTEGER,
    operational_since_year  INTEGER,
    maintenance_cycle_months INTEGER,
    backup_system           TEXT,
    contact_email           TEXT,
    latitude_deg            DECIMAL(5,2),
    longitude_deg           DECIMAL(5,2),
    notes                   TEXT
);
INSERT INTO cosmic_observation_station (id,station_name,planet,orbit_altitude_km,launch_date,status,primary_mission,telescope_type,aperture_m,detector_type,data_downlink_rate_mbps,power_source,staff_capacity,operational_since_year,maintenance_cycle_months,backup_system,contact_email,latitude_deg,longitude_deg,notes) VALUES (1,AlphaStation,Kepler19,3500,2022-05-14,Active,ExoplanetSurvey,Reflector,2,CCD,500,Solar,12,2023,6,RedundantBattery,alpha@space.org,12.34,-45.67,First operational station);
INSERT INTO cosmic_observation_station (id,station_name,planet,orbit_altitude_km,launch_date,status,primary_mission,telescope_type,aperture_m,detector_type,data_downlink_rate_mbps,power_source,staff_capacity,operational_since_year,maintenance_cycle_months,backup_system,contact_email,latitude_deg,longitude_deg,notes) VALUES (2,BetaOutpost,AndromedaX,4200,2020-11-02,Active,SupernovaMonitoring,Refractor,1,CMOS,300,Nuclear,9,2021,8,ColdBackup,beta@space.org,23.45,10.12,Upgraded power array);
INSERT INTO cosmic_observation_station (id,station_name,planet,orbit_altitude_km,launch_date,status,primary_mission,telescope_type,aperture_m,detector_type,data_downlink_rate_mbps,power_source,staff_capacity,operational_since_year,maintenance_cycle_months,backup_system,contact_email,latitude_deg,longitude_deg,notes) VALUES (3,GammaArray,OrionII,5000,2019-03-27,Maintenance,DeepFieldSurvey,MegapixelArray,3,Infrared,750,Hybrid,15,2020,12,SpareGenerator,gamma@space.org,-5.67,78.90,Pending software upgrade);

-- Registry of interdimensional gates and their properties
CREATE TABLE interdimensional_gate_registry
(
    gate_id                  INTEGER PRIMARY KEY,
    gate_name                TEXT,
    dimension_label          TEXT,
    activation_date          DATE,
    status                   TEXT,
    control_center           TEXT,
    max_energy_mw            INTEGER,
    safety_rating            TEXT,
    operator_name            TEXT,
    maintenance_window      TEXT,
    last_inspection_date    DATE,
    coordinates_x            DECIMAL(10,2),
    coordinates_y            DECIMAL(10,2),
    coordinates_z            DECIMAL(10,2),
    power_supply_type        TEXT,
    encryption_key_hash      TEXT,
    access_level_required    INTEGER,
    throughput_gbps          INTEGER,
    decommissioned_flag     TEXT,
    remarks                  TEXT
);
INSERT INTO interdimensional_gate_registry (gate_id,gate_name,dimension_label,activation_date,status,control_center,max_energy_mw,safety_rating,operator_name,maintenance_window,last_inspection_date,coordinates_x,coordinates_y,coordinates_z,power_supply_type,encryption_key_hash,access_level_required,throughput_gbps,decommissioned_flag,remarks) VALUES (1,GateAlpha,DimA,2021-06-01,Online,CenterOne,5000,High,DrX,02:00-04:00,2023-01-15,12345.67,23456.78,34567.89,Quantum,ABCDEF123456,3,100,No,Initial deployment);
INSERT INTO interdimensional_gate_registry (gate_id,gate_name,dimension_label,activation_date,status,control_center,max_energy_mw,safety_rating,operator_name,maintenance_window,last_inspection_date,coordinates_x,coordinates_y,coordinates_z,power_supply_type,encryption_key_hash,access_level_required,throughput_gbps,decommissioned_flag,remarks) VALUES (2,GateBeta,DimB,2020-12-11,Offline,CenterTwo,3000,Medium,ProfY,01:00-03:00,2022-11-30,22345.00,33456.00,44567.00,Antimatter,123456ABCDEF,5,80,Yes,Decommission scheduled);
INSERT INTO interdimensional_gate_registry (gate_id,gate_name,dimension_label,activation_date,status,control_center,max_energy_mw,safety_rating,operator_name,maintenance_window,last_inspection_date,coordinates_x,coordinates_y,coordinates_z,power_supply_type,encryption_key_hash,access_level_required,throughput_gbps,decommissioned_flag,remarks) VALUES (3,GateGamma,DimC,2022-03-20,Online,CenterThree,7500,VeryHigh,DrZ,03:00-05:00,2023-05-05,32345.12,44456.34,55567.56,Hybrid,FA12BC34DE56,2,120,No,Recent upgrade);

-- Profiles describing habitats of alien species
CREATE TABLE alien_species_habitat_profile
(
    habitat_id                INTEGER PRIMARY KEY,
    species_name              TEXT,
    planet                    TEXT,
    biome_type                TEXT,
    average_temperature_c    DECIMAL(5,2),
    atmospheric_composition   TEXT,
    gravity_m_s2              DECIMAL(4,2),
    ecosystem_complexity     TEXT,
    dominant_flora            TEXT,
    dominant_fauna            TEXT,
    discovery_year            INTEGER,
    research_lead             TEXT,
    protection_status         TEXT,
    area_sq_km                DECIMAL(10,2),
    water_availability_percent DECIMAL(5,2),
    mineral_richness          TEXT,
    radiation_level_sv       DECIMAL(5,2),
    habitat_notes             TEXT,
    url_reference             TEXT,
    data_source               TEXT
);
INSERT INTO alien_species_habitat_profile (habitat_id,species_name,planet,biome_type,average_temperature_c,atmospheric_composition,gravity_m_s2,ecosystem_complexity,dominant_flora,dominant_fauna,discovery_year,research_lead,protection_status,area_sq_km,water_availability_percent,mineral_richness,radiation_level_sv,habitat_notes,url_reference,data_source) VALUES (1,Zephor,Kepler9,Forest,23.5,NitrogenOxygen,9.81,High,RedFerns,GlowingMoths,2035,DrAria,Protected,1500.75,68.20,Rich,0.12,Stable under canopy,http://example.com/zephor,Survey2023);
INSERT INTO alien_species_habitat_profile (habitat_id,species_name,planet,biome_type,average_temperature_c,atmospheric_composition,gravity_m_s2,ecosystem_complexity,dominant_flora,dominant_fauna,discovery_year,research_lead,protection_status,area_sq_km,water_availability_percent,mineral_richness,radiation_level_sv,habitat_notes,url_reference,data_source) VALUES (2,Quorax,AndromedaV,Desert,45.0,CarbonDioxide,12.34,Medium,SpinyCacti,SandScavengers,2040,ProfBrax,Endangered,800.20,12.50,Moderate,0.45,Extreme heat cycles,http://example.com/quorax,Expedition2024);
INSERT INTO alien_species_habitat_profile (habitat_id,species_name,planet,biome_type,average_temperature_c,atmospheric_composition,gravity_m_s2,ecosystem_complexity,dominant_flora,dominant_fauna,discovery_year,research_lead,protection_status,area_sq_km,water_availability_percent,mineral_richness,radiation_level_sv,habitat_notes,url_reference,data_source) VALUES (3,Lumina,OrionPrime,Swamp,18.2,Methane,8.56,High,BioluminescentMoss,Floaters,2028,DrLuna,Protected,2200.00,80.00,Rich,0.08,Frequent fog,http://example.com/lumina,Survey2022);

-- Schedule for metahuman clinic appointments and resources
CREATE TABLE metahuman_clinic_schedule
(
    schedule_id                INTEGER PRIMARY KEY,
    clinic_name                TEXT,
    location_city              TEXT,
    location_state             TEXT,
    operating_days             TEXT,
    opening_time               TEXT,
    closing_time               TEXT,
    max_patients_per_day       INTEGER,
    specialist_count           INTEGER,
    equipment_list             TEXT,
    telemedicine_available     TEXT,
    insurance_accepted         TEXT,
    contact_number             TEXT,
    email_address              TEXT,
    appointment_lead_days      INTEGER,
    emergency_services_flag   TEXT,
    covid_protocol_version    TEXT,
    avg_wait_time_minutes      INTEGER,
    notes                      TEXT,
    last_updated_date          DATE
);
INSERT INTO metahuman_clinic_schedule (schedule_id,clinic_name,location_city,location_state,operating_days,opening_time,closing_time,max_patients_per_day,specialist_count,equipment_list,telemedicine_available,insurance_accepted,contact_number,email_address,appointment_lead_days,emergency_services_flag,covid_protocol_version,avg_wait_time_minutes,notes,last_updated_date) VALUES (1,PrimeClinic,Metrocity,DC,MonTueWedThuFri,08:00,18:00,120,10,GeneticsLab;Radiology,Yes,Yes,5551234,clinic1@mh.org,5,Yes,2023A,15,New wing opened,2023-06-01);
INSERT INTO metahuman_clinic_schedule (schedule_id,clinic_name,location_city,location_state,operating_days,opening_time,closing_time,max_patients_per_day,specialist_count,equipment_list,telemedicine_available,insurance_accepted,contact_number,email_address,appointment_lead_days,emergency_services_flag,covid_protocol_version,avg_wait_time_minutes,notes,last_updated_date) VALUES (2,NorthSideHealth,Northvale,NV,MonTueWedThuFriSat,07:30,19:30,150,12,NeuroLab;CryoChamber,Yes,No,5555678,clinic2@mh.org,3,Yes,2023B,12,Extended hours during flu season,2023-07-15);
INSERT INTO metahuman_clinic_schedule (schedule_id,clinic_name,location_city,location_state,operating_days,opening_time,closing_time,max_patients_per_day,specialist_count,equipment_list,telemedicine_available,insurance_accepted,contact_number,email_address,appointment_lead_days,emergency_services_flag,covid_protocol_version,avg_wait_time_minutes,notes,last_updated_date) VALUES (3,WestWingMedical,Westport,WP,MonTueWedThuFri,09:00,17:00,90,8,RegenLab;ImmunoSuite,No,Yes,5559012,clinic3@mh.org,7,No,2022C,20,Currently renovating reception,2023-05-20);

-- Snapshot of quantum computing job queue metrics
CREATE TABLE quantum_computing_job_queue_snapshot
(
    snapshot_id               INTEGER PRIMARY KEY,
    node_id                   INTEGER,
    timestamp                 DATETIME,
    total_jobs                INTEGER,
    pending_jobs              INTEGER,
    running_jobs              INTEGER,
    completed_jobs            INTEGER,
    failed_jobs               INTEGER,
    avg_job_duration_seconds  DECIMAL(6,2),
    max_memory_gb             DECIMAL(5,2),
    cpu_usage_percent        DECIMAL(5,2),
    gpu_usage_percent        DECIMAL(5,2),
    power_consumption_kw     DECIMAL(6,2),
    temperature_c            DECIMAL(5,2),
    maintenance_mode_flag    TEXT,
    software_version         TEXT,
    job_type_distribution    TEXT,
    queue_priority_level      INTEGER,
    admin_contact             TEXT,
    notes                     TEXT
);
INSERT INTO quantum_computing_job_queue_snapshot (snapshot_id,node_id,timestamp,total_jobs,pending_jobs,running_jobs,completed_jobs,failed_jobs,avg_job_duration_seconds,max_memory_gb,cpu_usage_percent,gpu_usage_percent,power_consumption_kw,temperature_c,maintenance_mode_flag,software_version,job_type_distribution,queue_priority_level,admin_contact,notes) VALUES (1,101,2023-08-01 10:00:00,250,30,50,160,10,12.34,64.5,78.2,55.1,420.75,45.3,No,1.4.2,Simulation;Optimization,2,admin1@qc.org,Regular update);
INSERT INTO quantum_computing_job_queue_snapshot (snapshot_id,node_id,timestamp,total_jobs,pending_jobs,running_jobs,completed_jobs,failed_jobs,avg_job_duration_seconds,max_memory_gb,cpu_usage_percent,gpu_usage_percent,power_consumption_kw,temperature_c,maintenance_mode_flag,software_version,job_type_distribution,queue_priority_level,admin_contact,notes) VALUES (2,102,2023-08-01 10:05:00,300,45,60,180,15,13.89,70.2,82.0,60.3,500.00,47.0,Yes,1.4.2,Optimization;MachineLearning,3,admin2@qc.org,Entering maintenance);
INSERT INTO quantum_computing_job_queue_snapshot (snapshot_id,node_id,timestamp,total_jobs,pending_jobs,running_jobs,completed_jobs,failed_jobs,avg_job_duration_seconds,max_memory_gb,cpu_usage_percent,gpu_usage_percent,power_consumption_kw,temperature_c,maintenance_mode_flag,software_version,job_type_distribution,queue_priority_level,admin_contact,notes) VALUES (3,103,2023-08-01 10:10:00,220,20,40,150,10,11.55,60.0,75.5,52.0,380.60,44.8,No,1.4.3,Simulation;Research,1,admin3@qc.org,All systems normal);

-- Statistics for galactic trade routes
CREATE TABLE galactic_trade_route_statistics
(
    route_id                     INTEGER PRIMARY KEY,
    route_name                   TEXT,
    origin_system                TEXT,
    destination_system           TEXT,
    distance_lightyears          DECIMAL(8,2),
    average_transit_time_days    DECIMAL(6,2),
    cargo_volume_m3_per_day      DECIMAL(10,2),
    primary_commodity            TEXT,
    tariff_rate_percent          DECIMAL(5,2),
    carrier_count                INTEGER,
    incidents_last_year          INTEGER,
    security_level               TEXT,
    trade_agreement_id           INTEGER,
    last_inspection_date         DATE,
    monitoring_station_id        INTEGER,
    revenue_usd_million          DECIMAL(12,2),
    carbon_emission_tons         DECIMAL(9,2),
    regulatory_compliance_score DECIMAL(5,2),
    notes                        TEXT,
    data_recorded_at             DATETIME
);
INSERT INTO galactic_trade_route_statistics (route_id,route_name,origin_system,destination_system,distance_lightyears,average_transit_time_days,cargo_volume_m3_per_day,primary_commodity,tariff_rate_percent,carrier_count,incidents_last_year,security_level,trade_agreement_id,last_inspection_date,monitoring_station_id,revenue_usd_million,carbon_emission_tons,regulatory_compliance_score,notes,data_recorded_at) VALUES (1,AlphaLine,Sol,ProximaCentauri,4.24,2.5,15000.00,PreciousMetals,2.5,12,1,High,1001,2023-04-10,5001,85.50,1200.75,98.5,Stable traffic,2023-08-01 09:00:00);
INSERT INTO galactic_trade_route_statistics (route_id,route_name,origin_system,destination_system,distance_lightyears,average_transit_time_days,cargo_volume_m3_per_day,primary_commodity,tariff_rate_percent,carrier_count,incidents_last_year,security_level,trade_agreement_id,last_inspection_date,monitoring_station_id,revenue_usd_million,carbon_emission_tons,regulatory_compliance_score,notes,data_recorded_at) VALUES (2,BetaCorridor,Kepler12,AndromedaX,12.70,5.0,25000.00,OrganicCompounds,3.0,18,3,Medium,1002,2023-06-22,5002,120.75,2500.30,92.0,Increasing demand,2023-08-01 09:15:00);
INSERT INTO galactic_trade_route_statistics (route_id,route_name,origin_system,destination_system,distance_lightyears,average_transit_time_days,cargo_volume_m3_per_day,primary_commodity,tariff_rate_percent,carrier_count,incidents_last_year,security_level,trade_agreement_id,last_inspection_date,monitoring_station_id,revenue_usd_million,carbon_emission_tons,regulatory_compliance_score,notes,data_recorded_at) VALUES (3,GammaPassage,OrionIII,Zenith,8.90,3.8,18000.00,EnergyCells,1.8,15,0,Low,1003,2023-05-18,5003,95.20,1800.10,99.0,Low incident rate,2023-08-01 09:30:00);

-- Performance metrics for renewable energy grid nodes
CREATE TABLE renewable_energy_grid_node_performance
(
    node_id                     INTEGER PRIMARY KEY,
    node_name                   TEXT,
    region                      TEXT,
    installation_date           DATE,
    capacity_mw                 DECIMAL(6,2),
    current_output_mw           DECIMAL(6,2),
    capacity_factor_percent    DECIMAL(5,2),
    downtime_hours_last_month   DECIMAL(5,2),
    maintenance_scheduled_flag TEXT,
    operator_company            TEXT,
    grid_connection_type        TEXT,
    voltage_kv                  DECIMAL(5,2),
    frequency_hz                DECIMAL(4,2),
    temperature_c               DECIMAL(5,2),
    weather_impact_index       DECIMAL(4,2),
    performance_rating          TEXT,
    last_audit_date             DATE,
    funding_source              TEXT,
    project_manager             TEXT,
    comments                    TEXT
);
INSERT INTO renewable_energy_grid_node_performance (node_id,node_name,region,installation_date,capacity_mw,current_output_mw,capacity_factor_percent,downtime_hours_last_month,maintenance_scheduled_flag,operator_company,grid_connection_type,voltage_kv,frequency_hz,temperature_c,weather_impact_index,performance_rating,last_audit_date,funding_source,project_manager,comments) VALUES (1,SunriseNode,NorthTerritory,2020-01-15,150.00,145.20,96.80,2.5,No,GreenPowerInc,HighVoltage,220.0,50.00,22.5,1.2,Excellent,2023-03-10,GovernmentGrant,LauraSmith,Steady production);
INSERT INTO renewable_energy_grid_node_performance (node_id,node_name,region,installation_date,capacity_mw,current_output_mw,capacity_factor_percent,downtime_hours_last_month,maintenance_scheduled_flag,operator_company,grid_connection_type,voltage_kv,frequency_hz,temperature_c,weather_impact_index,performance_rating,last_audit_date,funding_source,project_manager,comments) VALUES (2,WindHarbor,CoastalRegion,2019-06-20,200.00,190.50,95.25,5.0,Yes,BreezeEnergyLtd,MediumVoltage,110.0,60.00,18.0,2.0,Good,2023-02-18,PrivateInvestment,MarkLee,Minor turbine downtime);
INSERT INTO renewable_energy_grid_node_performance (node_id,node_name,region,installation_date,capacity_mw,current_output_mw,capacity_factor_percent,downtime_hours_last_month,maintenance_scheduled_flag,operator_company,grid_connection_type,voltage_kv,frequency_hz,temperature_c,weather_impact_index,performance_rating,last_audit_date,funding_source,project_manager,comments) VALUES (3,HydroDelta,SouthValley,2021-09-05,250.00,240.00,96.00,1.0,No,FlowHydroCorp,HighVoltage,330.0,50.00,15.0,0.8,Excellent,2023-04-22,PublicFund,AnnaKim,Consistent output);

-- Users of a virtual collectible marketplace
CREATE TABLE virtual_collectible_marketplace_user
(
    user_id                     INTEGER PRIMARY KEY,
    username                    TEXT,
    registration_date           DATE,
    country                     TEXT,
    age                         INTEGER,
    preferred_platform          TEXT,
    avg_spend_usd               DECIMAL(8,2),
    total_transactions          INTEGER,
    last_login_date             DATE,
    verification_status         TEXT,
    wallet_address              TEXT,
    email_opt_in_flag           TEXT,
    loyalty_tier                TEXT,
    referral_count              INTEGER,
    avg_daily_sessions          DECIMAL(5,2),
    favorite_category           TEXT,
    total_assets_owned          INTEGER,
    ban_status                  TEXT,
    support_tickets_open        INTEGER,
    notes                       TEXT
);
INSERT INTO virtual_collectible_marketplace_user (user_id,username,registration_date,country,age,preferred_platform,avg_spend_usd,total_transactions,last_login_date,verification_status,wallet_address,email_opt_in_flag,loyalty_tier,referral_count,avg_daily_sessions,favorite_category,total_assets_owned,ban_status,support_tickets_open,notes) VALUES (1,CollectorA,2021-02-10,USA,29,Web,1250.50,45,2023-07-30,Verified,0xABC123,true,Gold,5,2.5,Artifacts,120,No,0,Active participant);
INSERT INTO virtual_collectible_marketplace_user (user_id,username,registration_date,country,age,preferred_platform,avg_spend_usd,total_transactions,last_login_date,verification_status,wallet_address,email_opt_in_flag,loyalty_tier,referral_count,avg_daily_sessions,favorite_category,total_assets_owned,ban_status,support_tickets_open,notes) VALUES (2,TraderB,2020-11-05,Canada,35,Mobile,850.00,30,2023-07-28,Pending,0xDEF456,false,Silver,2,1.8,Weapons,80,No,1,Occasional buyer);
INSERT INTO virtual_collectible_marketplace_user (user_id,username,registration_date,country,age,preferred_platform,avg_spend_usd,total_transactions,last_login_date,verification_status,wallet_address,email_opt_in_flag,loyalty_tier,referral_count,avg_daily_sessions,favorite_category,total_assets_owned,ban_status,support_tickets_open,notes) VALUES (3,EnthusiastC,2022-05-22,UK,22,Web,300.75,12,2023-07-31,Verified,0xGHI789,true,Bronze,0,1.2,Characters,45,No,0,New user expanding collection);

-- Log of observed cosmic events
CREATE TABLE cosmic_event_monitoring_log
(
    event_id                    INTEGER PRIMARY KEY,
    event_type                  TEXT,
    detection_date              DATE,
    detection_instrument        TEXT,
    magnitude                   DECIMAL(5,2),
    duration_seconds            INTEGER,
    affected_region             TEXT,
    risk_level                  TEXT,
    mitigation_actions          TEXT,
    reporting_agency            TEXT,
    coordinates_ra              DECIMAL(8,3),
    coordinates_dec             DECIMAL(8,3),
    wavelength_nm               INTEGER,
    data_storage_path           TEXT,
    analyst_name                TEXT,
    verification_status         TEXT,
    follow_up_required          TEXT,
    public_release_date         DATE,
    comments                    TEXT,
    record_creation_timestamp   DATETIME
);
INSERT INTO cosmic_event_monitoring_log (event_id,event_type,detection_date,detection_instrument,magnitude,duration_seconds,affected_region,risk_level,mitigation_actions,reporting_agency,coordinates_ra,coordinates_dec,wavelength_nm,data_storage_path,analyst_name,verification_status,follow_up_required,public_release_date,comments,record_creation_timestamp) VALUES (1,GammaRayBurst,2023-06-12,SpaceTelescopeX,9.5,45,AlphaSector,High,AlertNetwork,SpaceAgencyA,123.456,-23.456,5000,/data/evt001,DrNova,Approved,Yes,2023-07-01,Significant energy release,2023-06-12 14:30:00);
INSERT INTO cosmic_event_monitoring_log (event_id,event_type,detection_date,detection_instrument,magnitude,duration_seconds,affected_region,risk_level,mitigation_actions,reporting_agency,coordinates_ra,coordinates_dec,wavelength_nm,data_storage_path,analyst_name,verification_status,follow_up_required,public_release_date,comments,record_creation_timestamp) VALUES (2,Supernova,2022-11-03,ObservatoryY,8.2,86400,DeltaQuadrant,Medium,PublicNotice,SpaceAgencyB,210.789,12.345,6500,/data/evt002,DrStarlight,Pending,No,2022-12-01,Visible to naked eye,2022-11-03 09:00:00);
INSERT INTO cosmic_event_monitoring_log (event_id,event_type,detection_date,detection_instrument,magnitude,duration_seconds,affected_region,risk_level,mitigation_actions,reporting_agency,coordinates_ra,coordinates_dec,wavelength_nm,data_storage_path,analyst_name,verification_status,follow_up_required,public_release_date,comments,record_creation_timestamp) VALUES (3,MagnetarFlare,2023-01-18,RadiowaveArray,7.8,3600,BetaSector,Low,MonitorOnly,SpaceAgencyC,78.123,45.678,1400,/data/evt003,DrPulse,Approved,No,2023-02-10,No immediate threat,2023-01-18 22:15:00);

-- Status of interstellar supply routes
CREATE TABLE interstellar_supply_route_status
(
    route_id                    INTEGER PRIMARY KEY,
    route_name                  TEXT,
    origin_station              TEXT,
    destination_station         TEXT,
    current_status              TEXT,
    cargo_type                  TEXT,
    scheduled_departure        DATE,
    scheduled_arrival          DATE,
    actual_departure           DATE,
    actual_arrival             DATE,
    delay_minutes               INTEGER,
    freight_volume_tons        DECIMAL(8,2),
    carrier_operator           TEXT,
    last_update_timestamp      DATETIME,
    next_inspection_date       DATE,
    weather_conditions          TEXT,
    security_alert_flag        TEXT,
    fuel_consumption_tons      DECIMAL(7,2),
    carbon_footprint_tons      DECIMAL(7,2),
    remarks                     TEXT
);
INSERT INTO interstellar_supply_route_status (route_id,route_name,origin_station,destination_station,current_status,cargo_type,scheduled_departure,scheduled_arrival,actual_departure,actual_arrival,delay_minutes,freight_volume_tons,carrier_operator,last_update_timestamp,next_inspection_date,weather_conditions,security_alert_flag,fuel_consumption_tons,carbon_footprint_tons,remarks) VALUES (1,StarlightRoute,AlphaPort,BetaDock,OnTime,PreciousMetals,2023-08-01,2023-08-05,2023-08-01,2023-08-05,0,5000.00,StarFreight,2023-07-31 16:00:00,2023-09-01,Clear,No,1200.50,850.30,Stable operation);
INSERT INTO interstellar_supply_route_status (route_id,route_name,origin_station,destination_station,current_status,cargo_type,scheduled_departure,scheduled_arrival,actual_departure,actual_arrival,delay_minutes,freight_volume_tons,carrier_operator,last_update_timestamp,next_inspection_date,weather_conditions,security_alert_flag,fuel_consumption_tons,carbon_footprint_tons,remarks) VALUES (2,GalacticExpress,GammaHub,DeltaBase,Delayed,OrganicCompounds,2023-07-20,2023-07-25,2023-07-21,2023-07-27,180,3200.00,GalaxyLogistics,2023-07-26 09:30:00,2023-08-30,Storm,Yes,950.75,670.10,Delay due to engine issue);
INSERT INTO interstellar_supply_route_status (route_id,route_name,origin_station,destination_station,current_status,cargo_type,scheduled_departure,scheduled_arrival,actual_departure,actual_arrival,delay_minutes,freight_volume_tons,carrier_operator,last_update_timestamp,next_inspection_date,weather_conditions,security_alert_flag,fuel_consumption_tons,carbon_footprint_tons,remarks) VALUES (3,QuantumCargo,ThetaStation,EpsilonDock,OnSchedule,EnergyCells,2023-08-10,2023-08-12,2023-08-10,2023-08-12,0,1500.00,QuantumTrans,2023-08-09 14:45:00,2023-09-15,Clear,No,500.20,350.05,All good);