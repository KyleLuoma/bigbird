-- Interstellar shuttle flight logs
CREATE TABLE interstellar_shuttle_log (
    log_id               INTEGER PRIMARY KEY,
    shuttle_id           INTEGER,
    departure_planet     TEXT,
    arrival_planet       TEXT,
    departure_time       TEXT,
    arrival_time         TEXT,
    pilot_id             INTEGER,
    crew_count           INTEGER,
    cargo_weight_tons    REAL,
    mission_type         TEXT,
    status               TEXT,
    fuel_used_liters     REAL,
    max_speed_kmh        REAL,
    flight_duration_min  INTEGER,
    anomalies_reported   TEXT,
    weather_conditions   TEXT,
    maintenance_flag     INTEGER,
    checksum             TEXT,
    created_at           TEXT,
    updated_at           TEXT
);
INSERT INTO interstellar_shuttle_log (log_id,shuttle_id,departure_planet,arrival_planet,departure_time,arrival_time,pilot_id,crew_count,cargo_weight_tons,mission_type,status,fuel_used_liters,max_speed_kmh,flight_duration_min,anomalies_reported,weather_conditions,maintenance_flag,checksum,created_at,updated_at) VALUES (1,101,Earth,Mars,2025-03-01T08:00,2025-03-05T14:30,501,5,12.5,Research,Completed,35000,25000,6200,None,Clear,0,ABC123,2025-03-06,2025-03-06);
INSERT INTO interstellar_shuttle_log (log_id,shuttle_id,departure_planet,arrival_planet,departure_time,arrival_time,pilot_id,crew_count,cargo_weight_tons,mission_type,status,fuel_used_liters,max_speed_kmh,flight_duration_min,anomalies_reported,weather_conditions,maintenance_flag,checksum,created_at,updated_at) VALUES (2,102,Venus,Jupiter,2025-04-10T12:15,2025-04-20T09:45,502,7,20.0,Supply,Completed,48000,26000,7200,MinorSolarFlare,Stormy,0,DEF456,2025-04-21,2025-04-21);
INSERT INTO interstellar_shuttle_log (log_id,shuttle_id,departure_planet,arrival_planet,departure_time,arrival_time,pilot_id,crew_count,cargo_weight_tons,mission_type,status,fuel_used_liters,max_speed_kmh,flight_duration_min,anomalies_reported,weather_conditions,maintenance_flag,checksum,created_at,updated_at) VALUES (3,103,Mars,Saturn,2025-05-15T06:00,2025-05-30T18:20,503,4,15.3,Exploration,Delayed,41000,24000,8400,NavigationError,Clear,1,GHI789,2025-06-01,2025-06-01);

-- Quantum computation job tracking
CREATE TABLE quantum_computation_job (
    job_id                 INTEGER PRIMARY KEY,
    node_id                INTEGER,
    algorithm_name         TEXT,
    input_dataset          TEXT,
    start_timestamp        TEXT,
    end_timestamp          TEXT,
    cpu_seconds            REAL,
    gpu_seconds            REAL,
    memory_gb              REAL,
    status                 TEXT,
    result_hash            TEXT,
    error_code             INTEGER,
    priority               INTEGER,
    submitter_user         TEXT,
    queue_name             TEXT,
    estimated_time_min     INTEGER,
    actual_time_min        INTEGER,
    retries                INTEGER,
    notes                  TEXT,
    created_at             TEXT
);
INSERT INTO quantum_computation_job (job_id,node_id,algorithm_name,input_dataset,start_timestamp,end_timestamp,cpu_seconds,gpu_seconds,memory_gb,status,result_hash,error_code,priority,submitter_user,queue_name,estimated_time_min,actual_time_min,retries,notes,created_at) VALUES (1,12,ShorFactoring,DatasetA,2025-01-10T09:00,2025-01-10T10:45,3600,7200,64,Success,hashABC123,0,1,alice,high,90,105,0,NoIssues,2025-01-10);
INSERT INTO quantum_computation_job (job_id,node_id,algorithm_name,input_dataset,start_timestamp,end_timestamp,cpu_seconds,gpu_seconds,memory_gb,status,result_hash,error_code,priority,submitter_user,queue_name,estimated_time_min,actual_time_min,retries,notes,created_at) VALUES (2,15,GroverSearch,DatasetB,2025-02-05T14:20,2025-02-05T14:45,1500,3000,32,Success,hashDEF456,0,2,bob,medium,20,25,0,CompletedQuickly,2025-02-05);
INSERT INTO quantum_computation_job (job_id,node_id,algorithm_name,input_dataset,start_timestamp,end_timestamp,cpu_seconds,gpu_seconds,memory_gb,status,result_hash,error_code,priority,submitter_user,queue_name,estimated_time_min,actual_time_min,retries,notes,created_at) VALUES (3,18,VariationalOptimizer,DatasetC,2025-03-12T08:15,2025-03-12T12:00,7200,14400,128,Failed,hashGHI789,101,3,carol,low,210,240,1,MemoryOverflow,2025-03-12);

-- Bioverse ecosystem sample records
CREATE TABLE bioverse_ecosystem_sample (
    sample_id           INTEGER PRIMARY KEY,
    ecosystem_name      TEXT,
    location_latitude   REAL,
    location_longitude  REAL,
    sample_date         TEXT,
    temperature_c       REAL,
    humidity_percent    REAL,
    pH_level            REAL,
    species_count       INTEGER,
    dominant_species    TEXT,
    collector_id        INTEGER,
    collection_method   TEXT,
    preservation_type   TEXT,
    storage_location    TEXT,
    sequencing_status   TEXT,
    genome_coverage     REAL,
    data_file_path      TEXT,
    analysis_status     TEXT,
    reviewer_id         INTEGER,
    approval_date       TEXT
);
INSERT INTO bioverse_ecosystem_sample (sample_id,ecosystem_name,location_latitude,location_longitude,sample_date,temperature_c,humidity_percent,pH_level,species_count,dominant_species,collector_id,collection_method,preservation_type,storage_location,sequencing_status,genome_coverage,data_file_path,analysis_status,reviewer_id,approval_date) VALUES (1,ForestCanopy,45.123,-122.456,2025-01-15,22.5,68,6.8,120,Ent,301,Transect,Freezer,FreezerA,Completed,98.5,/data/sample1.fq,Approved,401,2025-02-01);
INSERT INTO bioverse_ecosystem_sample (sample_id,ecosystem_name,location_latitude,location_longitude,sample_date,temperature_c,humidity_percent,pH_level,species_count,dominant_species,collector_id,collection_method,preservation_type,storage_location,sequencing_status,genome_coverage,data_file_path,analysis_status,reviewer_id,approval_date) VALUES (2,CoralReef,13.567,144.789,2025-02-20,27.0,80,8.1,85,CoralSpecies,302,Dive,Alcohol,FreezerB,Pending,0.0,/data/sample2.fq,UnderReview,402,2025-03-05);
INSERT INTO bioverse_ecosystem_sample (sample_id,ecosystem_name,location_latitude,location_longitude,sample_date,temperature_c,humidity_percent,pH_level,species_count,dominant_species,collector_id,collection_method,preservation_type,storage_location,sequencing_status,genome_coverage,data_file_path,analysis_status,reviewer_id,approval_date) VALUES (3,TundraPlain,68.234,-149.123,2025-03-10,-5.2,55,5.4,40,Moss,303,CoreSample,FreezeDry,FreezerC,Failed,0.0,/data/sample3.fq,Rejected,403,2025-04-01);

-- Alien diplomacy meeting records
CREATE TABLE alien_diplomacy_meeting (
    meeting_id                INTEGER PRIMARY KEY,
    alien_civilization        TEXT,
    host_planet               TEXT,
    host_representative       TEXT,
    guest_representative      TEXT,
    meeting_date              TEXT,
    start_time                TEXT,
    end_time                  TEXT,
    agenda_topic              TEXT,
    treaty_signed_flag        INTEGER,
    treaty_name               TEXT,
    diplomatic_status         TEXT,
    security_level            TEXT,
    communication_channel     TEXT,
    translation_needed_flag   INTEGER,
    notes                     TEXT,
    minutes_file_path         TEXT,
    created_by                TEXT,
    created_at                TEXT,
    updated_at                TEXT
);
INSERT INTO alien_diplomacy_meeting (meeting_id,alien_civilization,host_planet,host_representative,guest_representative,meeting_date,start_time,end_time,agenda_topic,treaty_signed_flag,treaty_name,diplomatic_status,security_level,communication_channel,translation_needed_flag,notes,minutes_file_path,created_by,created_at,updated_at) VALUES (1,Zorgon,Earth,JohnDoe,Klaxar,2025-04-01,09:00,11:30,TradeAgreement,1,ZorgonEarthTreaty,Positive,High,QuantumLink,1,AllTermsAccepted,/docs/minutes1.pdf,admin,2025-04-01,2025-04-02);
INSERT INTO alien_diplomacy_meeting (meeting_id,alien_civilization,host_planet,host_representative,guest_representative,meeting_date,start_time,end_time,agenda_topic,treaty_signed_flag,treaty_name,diplomatic_status,security_level,communication_channel,translation_needed_flag,notes,minutes_file_path,created_by,created_at,updated_at) VALUES (2,Velari,Mars,JaneSmith,Quorin,2025-05-15,14:00,16:15,ScientificCollaboration,0,,Neutral,Medium,SecureRelay,1,PendingReview,/docs/minutes2.pdf,admin,2025-05-15,2025-05-15);
INSERT INTO alien_diplomacy_meeting (meeting_id,alien_civilization,host_planet,host_representative,guest_representative,meeting_date,start_time,end_time,agenda_topic,treaty_signed_flag,treaty_name,diplomatic_status,security_level,communication_channel,translation_needed_flag,notes,minutes_file_path,created_by,created_at,updated_at) VALUES (3,Quellion,Jupiter,MarkLee,Narok,2025-06-20,10:30,12:45,DefensePact,1,QuellionJupiterPact,Positive,High,EncryptedBeam,0,SuccessfulNegotiations,/docs/minutes3.pdf,admin,2025-06-20,2025-06-21);

-- Renewable energy farm performance metrics
CREATE TABLE renewable_energy_farm_performance (
    farm_id                     INTEGER PRIMARY KEY,
    farm_name                   TEXT,
    location_city               TEXT,
    location_country            TEXT,
    capacity_mw                 REAL,
    current_output_mw           REAL,
    daily_generation_mwh        REAL,
    monthly_generation_mwh      REAL,
    year_to_date_generation_mwh REAL,
    operational_status          TEXT,
    maintenance_schedule        TEXT,
    last_inspection_date        TEXT,
    average_wind_speed          REAL,
    solar_irradiance            REAL,
    water_flow_rate             REAL,
    carbon_offset_tons          REAL,
    grid_connection_status      TEXT,
    operator_company            TEXT,
    contact_email               TEXT,
    data_timestamp              TEXT
);
INSERT INTO renewable_energy_farm_performance (farm_id,farm_name,location_city,location_country,capacity_mw,current_output_mw,daily_generation_mwh,monthly_generation_mwh,year_to_date_generation_mwh,operational_status,maintenance_schedule,last_inspection_date,average_wind_speed,solar_irradiance,water_flow_rate,carbon_offset_tons,grid_connection_status,operator_company,contact_email,data_timestamp) VALUES (1,SunWindPark,Helios,USA,150.0,145.2,3500.5,102000.0,850000.0,Operational,Quarterly,2025-03-10,12.5,800.0,2500.0,45000.0,Connected,GreenEnergyInc,info@greenenergy.com,2025-04-01);
INSERT INTO renewable_energy_farm_performance (farm_id,farm_name,location_city,location_country,capacity_mw,current_output_mw,daily_generation_mwh,monthly_generation_mwh,year_to_date_generation_mwh,operational_status,maintenance_schedule,last_inspection_date,average_wind_speed,solar_irradiance,water_flow_rate,carbon_offset_tons,grid_connection_status,operator_company,contact_email,data_timestamp) VALUES (2,OceanTideStation,Marina,Canada,80.0,78.5,1800.2,54000.0,420000.0,Operational,Monthly,2025-02-20,9.8,0.0,3200.0,21000.0,Connected,TidePowerLtd,contact@tidepower.ca,2025-04-01);
INSERT INTO renewable_energy_farm_performance (farm_id,farm_name,location_city,location_country,capacity_mw,current_output_mw,daily_generation_mwh,monthly_generation_mwh,year_to_date_generation_mwh,operational_status,maintenance_schedule,last_inspection_date,average_wind_speed,solar_irradiance,water_flow_rate,carbon_offset_tons,grid_connection_status,operator_company,contact_email,data_timestamp) VALUES (3,DesertSolarField,Arida,Australia,200.0,195.0,4800.0,144000.0,960000.0,Operational,Annual,2025-01-15,0.0,950.0,0.0,60000.0,Connected,SolarWaveAustralasia,admin@solarwave.au,2025-04-01);

-- Cosmic artifact exhibit details
CREATE TABLE cosmic_artifact_exhibit (
    exhibit_id               INTEGER PRIMARY KEY,
    artifact_name            TEXT,
    artifact_origin          TEXT,
    discovery_date           TEXT,
    exhibit_start_date       TEXT,
    exhibit_end_date         TEXT,
    museum_name              TEXT,
    gallery_room             TEXT,
    curator_id               INTEGER,
    insurance_value_usd      REAL,
    security_level           TEXT,
    display_case_id          TEXT,
    lighting_type            TEXT,
    climate_control_setting TEXT,
    visitor_capacity_per_hr  INTEGER,
    tickets_sold             INTEGER,
    sponsor_name             TEXT,
    sponsor_contribution_usd REAL,
    exhibit_status           TEXT,
    notes                    TEXT
);
INSERT INTO cosmic_artifact_exhibit (exhibit_id,artifact_name,artifact_origin,discovery_date,exhibit_start_date,exhibit_end_date,museum_name,gallery_room,curator_id,insurance_value_usd,security_level,display_case_id,lighting_type,climate_control_setting,visitor_capacity_per_hr,tickets_sold,sponsor_name,sponsor_contribution_usd,exhibit_status,notes) VALUES (1,StarlightScepter,PlanetX,2023-06-12,2025-07-01,2025-12-31,GalaxyMuseum,HallA,601,5000000.0,High,CaseA1,LED,Temp22C,500,12000,StellarCorp,250000.0,Open,FeaturedArtifact);
INSERT INTO cosmic_artifact_exhibit (exhibit_id,artifact_name,artifact_origin,discovery_date,exhibit_start_date,exhibit_end_date,museum_name,gallery_room,curator_id,insurance_value_usd,security_level,display_case_id,lighting_type,climate_control_setting,visitor_capacity_per_hr,tickets_sold,sponsor_name,sponsor_contribution_usd,exhibit_status,notes) VALUES (2,QuantumOrb,AsteroidZ,2024-01-20,2025-09-15,2026-03-15,UniversalGallery,RoomB,602,3000000.0,Medium,CaseB3,Spotlight,Humid45Percent,300,8000,QuantumInc,150000.0,Open,LimitedViewing);
INSERT INTO cosmic_artifact_exhibit (exhibit_id,artifact_name,artifact_origin,discovery_date,exhibit_start_date,exhibit_end_date,museum_name,gallery_room,curator_id,insurance_value_usd,security_level,display_case_id,lighting_type,climate_control_setting,visitor_capacity_per_hr,tickets_sold,sponsor_name,sponsor_contribution_usd,exhibit_status,notes) VALUES (3,AncientRelicY,DeepCavern,2022-11-05,2025-05-10,2025-11-10,ChronoMuseum,ExhibitC,603,7500000.0,High,CaseC7,UV,Temp18C,400,15000,TimeKeepers,300000.0,Closed,UnderRenovation);

-- Metahuman genetic study metadata
CREATE TABLE metahuman_genetic_study (
    study_id                INTEGER PRIMARY KEY,
    study_name              TEXT,
    lead_researcher_id      INTEGER,
    start_date              TEXT,
    end_date                TEXT,
    participant_count       INTEGER,
    sample_type             TEXT,
    dna_sequencing_method   TEXT,
    platform_used           TEXT,
    average_coverage        REAL,
    variant_calls_count    INTEGER,
    significant_findings    TEXT,
    funding_agency          TEXT,
    budget_usd              REAL,
    ethics_approval_flag   INTEGER,
    data_release_date      TEXT,
    publication_doi         TEXT,
    status                  TEXT,
    notes                   TEXT,
    created_at              TEXT
);
INSERT INTO metahuman_genetic_study (study_id,study_name,lead_researcher_id,start_date,end_date,participant_count,sample_type,dna_sequencing_method,platform_used,average_coverage,variant_calls_count,significant_findings,funding_agency,budget_usd,ethics_approval_flag,data_release_date,publication_doi,status,notes,created_at) VALUES (1,GenesisProject,801,2024-01-01,2025-12-31,200,Blood,WholeGenome,IlluminaNova,30.5,15000,EnhancedRegeneration,NationalScienceFund,2000000.0,1,2026-06-01,10.1234/xyz123,Active,Phase1Complete,2025-01-15);
INSERT INTO metahuman_genetic_study (study_id,study_name,lead_researcher_id,start_date,end_date,participant_count,sample_type,dna_sequencing_method,platform_used,average_coverage,variant_calls_count,significant_findings,funding_agency,budget_usd,ethics_approval_flag,data_release_date,publication_doi,status,notes,created_at) VALUES (2,MetaboLink,802,2023-05-15,2024-11-30,120,Saliva,Exome,PacBioSequel,45.2,8000,MetabolicEnhancement,HealthInnovationGrant,1200000.0,1,2025-03-01,10.5678/abc456,Completed,ResultsPublished,2024-12-01);
INSERT INTO metahuman_genetic_study (study_id,study_name,lead_researcher_id,start_date,end_date,participant_count,sample_type,dna_sequencing_method,platform_used,average_coverage,variant_calls_count,significant_findings,funding_agency,budget_usd,ethics_approval_flag,data_release_date,publication_doi,status,notes,created_at) VALUES (3,NeuroFlux,803,2025-02-01,2026-08-01,250,Hair,WholeGenome,OxfordNanopore,28.0,20000,NeuralAcceleration,NeuroTechAlliance,2500000.0,1,2027-01-15,10.9012/def789,Planned,RecruitmentPhase,2025-02-10);

-- Interdimensional trade route agreement records
CREATE TABLE interdimensional_trade_route_agreement (
    agreement_id               INTEGER PRIMARY KEY,
    route_name                 TEXT,
    originating_dimension      TEXT,
    destination_dimension      TEXT,
    treaty_date                TEXT,
    signatory_faction          TEXT,
    trade_goods_allowed        TEXT,
    tariff_rate_percent        REAL,
    duration_years             INTEGER,
    renewal_option_flag        INTEGER,
    dispute_resolution_mechanism TEXT,
    monitoring_agency          TEXT,
    last_review_date           TEXT,
    status                     TEXT,
    notes                      TEXT,
    created_by                 TEXT,
    created_at                 TEXT,
    updated_at                 TEXT,
    document_hash              TEXT
);
INSERT INTO interdimensional_trade_route_agreement (agreement_id,route_name,originating_dimension,destination_dimension,treaty_date,signatory_faction,trade_goods_allowed,tariff_rate_percent,duration_years,renewal_option_flag,dispute_resolution_mechanism,monitoring_agency,last_review_date,status,notes,created_by,created_at,updated_at,document_hash) VALUES (1,ArcanePassage,DimensionA,DimensionB,2025-03-01,TheMagi,ArcaneArtifacts,2.5,10,1,ArbitrationCouncil,DimensionalWatch,2026-03-01,Active,AnnualReview,admin,2025-03-01,2025-03-01,hashABC123);
INSERT INTO interdimensional_trade_route_agreement (agreement_id,route_name,originating_dimension,destination_dimension,treaty_date,signatory_faction,trade_goods_allowed,tariff_rate_percent,duration_years,renewal_option_flag,dispute_resolution_mechanism,monitoring_agency,last_review_date,status,notes,created_by,created_at,updated_at,document_hash) VALUES (2,QuantumCorridor,DimensionX,DimensionY,2024-07-15,QuantumCollective,QuantumSilicates,1.0,5,0,InterdimensionalCourt,QuantumRegulation,2025-07-15,Expired,NoRenewal,admin,2024-07-15,2024-07-15,hashDEF456);
INSERT INTO interdimensional_trade_route_agreement (agreement_id,route_name,originating_dimension,destination_dimension,treaty_date,signatory_faction,trade_goods_allowed,tariff_rate_percent,duration_years,renewal_option_flag,dispute_resolution_mechanism,monitoring_agency,last_review_date,status,notes,created_by,created_at,updated_at,document_hash) VALUES (3,StellarGate,Dimension7,Dimension9,2025-11-20,StellarFederation,EnergyCrystals,3.0,8,1,GalacticCouncil,StellarObservatory,2026-11-20,Pending,AwaitingSignatures,admin,2025-11-20,2025-11-20,hashGHI789);

-- Virtual collectible marketplace user profiles
CREATE TABLE virtual_collectible_marketplace_user (
    user_id                INTEGER PRIMARY KEY,
    username               TEXT,
    registration_date      TEXT,
    email                  TEXT,
    country                TEXT,
    preferred_currency     TEXT,
    wallet_balance_usd     REAL,
    total_purchases        INTEGER,
    total_sales            INTEGER,
    reputation_score       REAL,
    verification_status    TEXT,
    two_factor_enabled    INTEGER,
    last_login_timestamp   TEXT,
    favorite_category      TEXT,
    collection_size        INTEGER,
    average_rating_given   REAL,
    average_rating_received REAL,
    referral_code          TEXT,
    marketing_opt_in_flag  INTEGER,
    notes                  TEXT
);
INSERT INTO virtual_collectible_marketplace_user (user_id,username,registration_date,email,country,preferred_currency,wallet_balance_usd,total_purchases,total_sales,reputation_score,verification_status,two_factor_enabled,last_login_timestamp,favorite_category,collection_size,average_rating_given,average_rating_received,referral_code,marketing_opt_in_flag,notes) VALUES (1,collectorA,2023-05-10,alice@example.com,USA,USD,250.75,15,5,4.6,Verified,1,2025-04-01,ActionFigures,120,4.8,4.5,REF123,1,ActiveTrader);
INSERT INTO virtual_collectible_marketplace_user (user_id,username,registration_date,email,country,preferred_currency,wallet_balance_usd,total_purchases,total_sales,reputation_score,verification_status,two_factor_enabled,last_login_timestamp,favorite_category,collection_size,average_rating_given,average_rating_received,referral_code,marketing_opt_in_flag,notes) VALUES (2,collectorB,2024-01-22,bob@example.com,Canada,CAD,180.00,8,12,4.2,Pending,0,2025-03-28,Comics,85,4.0,4.3,REF456,0,NewUser);
INSERT INTO virtual_collectible_marketplace_user (user_id,username,registration_date,email,country,preferred_currency,wallet_balance_usd,total_purchases,total_sales,reputation_score,verification_status,two_factor_enabled,last_login_timestamp,favorite_category,collection_size,average_rating_given,average_rating_received,referral_code,marketing_opt_in_flag,notes) VALUES (3,collectorC,2022-11-05,charlie@example.com,UK,GBP,500.00,30,25,4.9,Verified,1,2025-04-02,Stamps,200,4.9,5.0,REF789,1,TopSeller);

-- Galactic weather station reading logs
CREATE TABLE galactic_weather_station_reading (
    reading_id                     INTEGER PRIMARY KEY,
    station_id                     INTEGER,
    observation_timestamp          TEXT,
    solar_wind_speed_km_s          REAL,
    solar_flare_class              TEXT,
    radiation_level_sieverts       REAL,
    magnetic_field_strength_nanotesla REAL,
    aurora_activity_index          INTEGER,
    planetary_atmospheric_pressure REAL,
    temperature_c                  REAL,
    humidity_percent               REAL,
    cloud_coverage_percent         REAL,
    precipitation_mm               REAL,
    data_quality_flag              INTEGER,
    analyst_id                     INTEGER,
    notes                          TEXT,
    created_at                     TEXT,
    updated_at                     TEXT
);
INSERT INTO galactic_weather_station_reading (reading_id,station_id,observation_timestamp,solar_wind_speed_km_s,solar_flare_class,radiation_level_sieverts,magnetic_field_strength_nanotesla,aurora_activity_index,planetary_atmospheric_pressure,temperature_c,humidity_percent,cloud_coverage_percent,precipitation_mm,data_quality_flag,analyst_id,notes,created_at,updated_at) VALUES (1,1001,2025-04-01T00:00,550.0,M2,0.00012,5.6,3,1013.25,22.5,65,20,0,1,301,ClearDay,2025-04-01,2025-04-01);
INSERT INTO galactic_weather_station_reading (reading_id,station_id,observation_timestamp,solar_wind_speed_km_s,solar_flare_class,radiation_level_sieverts,magnetic_field_strength_nanotesla,aurora_activity_index,planetary_atmospheric_pressure,temperature_c,humidity_percent,cloud_coverage_percent,precipitation_mm,data_quality_flag,analyst_id,notes,created_at,updated_at) VALUES (2,1002,2025-04-01T01:00,720.0,X1,0.00025,6.1,5,985.50,18.2,80,60,2,1,302,RainyNight,2025-04-01,2025-04-01);
INSERT INTO galactic_weather_station_reading (reading_id,station_id,observation_timestamp,solar_wind_speed_km_s,solar_flare_class,radiation_level_sieverts,magnetic_field_strength_nanotesla,aurora_activity_index,planetary_atmospheric_pressure,temperature_c,humidity_percent,cloud_coverage_percent,precipitation_mm,data_quality_flag,analyst_id,notes,created_at,updated_at) VALUES (3,1003,2025-04-01T02:00,340.0,C3,0.00009,4.9,2,1018.00,25.0,55,10,0,1,303,SunnyMorning,2025-04-01,2025-04-01);