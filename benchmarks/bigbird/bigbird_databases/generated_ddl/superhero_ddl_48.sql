-- Galactic trade route usage details
CREATE TABLE galactic_trade_route_usage
(
    id INTEGER PRIMARY KEY,
    route_code TEXT,
    origin_planet TEXT,
    destination_planet TEXT,
    departure_date DATE,
    arrival_date DATE,
    cargo_type TEXT,
    cargo_volume INTEGER,
    transport_mode TEXT,
    ship_name TEXT,
    captain_name TEXT,
    fuel_consumed_liters INTEGER,
    distance_lightyears REAL,
    travel_cost_usd INTEGER,
    insurance_policy_id INTEGER,
    customs_clearance_status TEXT,
    security_level TEXT,
    temperature_control INTEGER,
    crew_count INTEGER,
    logistic_partner_id INTEGER,
    remarks TEXT
);

INSERT INTO galactic_trade_route_usage VALUES (1,'RT001','Terra','Xenon','2125-03-12','2125-03-20','Minerals',5000,'Freighter','StarRunner','LaraKeen',250000,12.5,750000,101,'Cleared','High',1,45,201,'Delivered without incident');
INSERT INTO galactic_trade_route_usage VALUES (2,'RT002','Aqua','Vulcan','2125-04-05','2125-04-12','Biochemicals',3000,'CargoShip','NebulaWing','GoroTane',180000,9.8,560000,102,'Pending','Medium',0,30,202,'Delayed due to customs');
INSERT INTO galactic_trade_route_usage VALUES (3,'RT003','Mars','Eden','2125-05-01','2125-05-08','FoodSupplies',4200,'Shuttle','SolarFlare','MiaRex',210000,11.2,630000,103,'Cleared','Low',1,38,203,'Temperature control required');

-- Cosmic energy market statistics
CREATE TABLE cosmic_energy_market_stats
(
    id INTEGER PRIMARY KEY,
    market_region TEXT,
    energy_type TEXT,
    average_price_per_mwh REAL,
    total_volume_mwh INTEGER,
    peak_demand_mwh INTEGER,
    lowest_price_per_mwh REAL,
    price_volatility_index REAL,
    regulatory_body TEXT,
    reporting_period_start DATE,
    reporting_period_end DATE,
    renewable_share_percent REAL,
    fossil_fuel_share_percent REAL,
    nuclear_share_percent REAL,
    grid_stability_index REAL,
    last_updated TIMESTAMP,
    forecasted_price_next_month REAL,
    forecasted_volume_next_month INTEGER,
    market_sentiment TEXT,
    notes TEXT,
    data_source TEXT,
    verification_status TEXT
);

INSERT INTO cosmic_energy_market_stats VALUES (1,'AlphaSector','QuantumFlux',125.5,2000000,500000,110.2,0.15,'EnergyCommission','2125-01-01','2125-01-31',45.2,30.1,24.7,0.98,'2125-02-01 09:00:00',130.0,2100000,'Positive','Stable market conditions','TelemetryFeed','Verified');
INSERT INTO cosmic_energy_market_stats VALUES (2,'BetaSector','DarkMatter',98.3,1500000,400000,85.0,0.22,'SectorAuthority','2125-01-01','2125-01-31',55.0,20.0,25.0,0.95,'2125-02-01 09:00:00',102.5,1600000,'Neutral','Slight price dip expected','SatelliteReport','PendingVerification');
INSERT INTO cosmic_energy_market_stats VALUES (3,'GammaSector','SolarRadiant',78.9,1800000,450000,70.4,0.10,'SolarRegulator','2125-01-01','2125-01-31',70.5,10.0,19.5,0.99,'2125-02-01 09:00:00',80.2,1900000,'Positive','High renewable influx','GroundStation','Verified');

-- Alien species habitat profile
CREATE TABLE alien_species_habitat_profile
(
    id INTEGER PRIMARY KEY,
    species_name TEXT,
    habitat_type TEXT,
    primary_biome TEXT,
    climate_category TEXT,
    average_temperature_celsius REAL,
    average_precipitation_mm INTEGER,
    dominant_vegetation TEXT,
    known_predators TEXT,
    symbiotic_species TEXT,
    planet_name TEXT,
    sector_code TEXT,
    discovery_date DATE,
    catalog_number TEXT,
    population_estimate INTEGER,
    average_lifespan_years INTEGER,
    dietary_classification TEXT,
    social_structure TEXT,
    threat_level TEXT,
    protection_status TEXT,
    research_institution TEXT,
    notes TEXT,
    last_study_date DATE,
    data_quality_rating INTEGER
);

INSERT INTO alien_species_habitat_profile VALUES (1,'Xelorian','Aquatic','Oceanic','Temperate',16.5,2000,'KelpForest','Glarx','LuminaFish','AquaPrime','SEC-01','2124-07-15','SP-001',340000,120,'Omnivore','FissionColonies','Low','Protected','XenoInstitute','No anomalies observed','2125-01-10',9);
INSERT INTO alien_species_habitat_profile VALUES (2,'Vortak','Desert','AridPlains','Arid',38.2,50,'SilicaShrubs','Ravagers','DustMites','DuneWorld','SEC-07','2123-11-03','SP-045',1200000,80,'Herbivore','Herds','Medium','Endangered','PlanetaryResearchCenter','Adaptation to sandstorms','2125-02-05',8);
INSERT INTO alien_species_habitat_profile VALUES (3,'Luminar','Forest','TemperateWoodland','Temperate',22.0,800,'LuminaFerns','ShadeStalkers','GlowBeetles','VerdantPrime','SEC-03','2125-01-22','SP-078',560000,65,'Carnivore','Pack','High','CriticallyEndangered','GalacticBiologyLab','Population decline due to logging','2125-03-01',7);

-- Nanotech manufacturing batch log
CREATE TABLE nanotech_manufacturing_batch_log
(
    batch_id INTEGER PRIMARY KEY,
    product_code TEXT,
    production_line TEXT,
    shift_lead TEXT,
    start_timestamp TIMESTAMP,
    end_timestamp TIMESTAMP,
    units_produced INTEGER,
    defect_rate_percent REAL,
    material_batch_number TEXT,
    nanomaterial_type TEXT,
    ambient_temperature_celsius REAL,
    ambient_humidity_percent REAL,
    equipment_version TEXT,
    quality_assurance_status TEXT,
    supervisor_approval INTEGER,
    safety_incident_reported INTEGER,
    total_energy_consumed_kwh REAL,
    waste_material_kg REAL,
    carbon_footprint_kgco2 REAL,
    post_processing_steps TEXT,
    storage_location TEXT,
    next_maintenance_date DATE,
    operator_notes TEXT,
    compliance_certification TEXT,
    batch_cost_usd INTEGER
);

INSERT INTO nanotech_manufacturing_batch_log VALUES (101,'NT-AX1','LineA','JunoMira','2125-02-10 06:00:00','2125-02-10 14:00:00',5000,0.5,'MB-5432','CarbonNanotube',22.5,45.0,'v2.3','Passed',1,0,1200.5,15.2,340.0,'Polishing;Coating','WarehouseB','2125-03-15','All parameters within spec','ISO9001',250000);
INSERT INTO nanotech_manufacturing_batch_log VALUES (102,'NT-BZ4','LineB','KiraSol','2125-02-11 22:00:00','2125-02-12 06:00:00',4200,1.1,'MB-6721','SiliconNanowire',20.0,50.0,'v2.1','Passed',1,0,1100.0,12.0,300.0,'Etching;Annealing','WarehouseC','2125-03-20','Slight temperature drift observed','ISO9001',210000);
INSERT INTO nanotech_manufacturing_batch_log VALUES (103,'NT-CQ9','LineC','AronVex','2125-02-12 14:00:00','2125-02-12 22:00:00',4800,0.8,'MB-8890','GrapheneSheet',23.0,40.0,'v2.4','Passed',1,0,1150.75,13.5,320.0,'Layering;Inspection','WarehouseA','2125-03-18','All sensors calibrated','ISO9001',230000);

-- Interstellar mission log
CREATE TABLE interstellar_mission_log
(
    mission_id INTEGER PRIMARY KEY,
    mission_name TEXT,
    launch_date DATE,
    arrival_date DATE,
    departure_planet TEXT,
    target_system TEXT,
    spacecraft_name TEXT,
    commander_name TEXT,
    crew_size INTEGER,
    mission_objective TEXT,
    propulsion_type TEXT,
    max_speed_c TEXT,
    fuel_type TEXT,
    fuel_consumed_tonnes REAL,
    scientific_payload_weight_kg INTEGER,
    total_distance_lightyears REAL,
    mission_status TEXT,
    findings_summary TEXT,
    data_volume_tb REAL,
    communication_latency_seconds REAL,
    risk_assessment_level TEXT,
    budget_usd INTEGER,
    sponsor_agency TEXT,
    notes TEXT,
    post_mission_review_score INTEGER
);

INSERT INTO interstellar_mission_log VALUES (301,'OdysseyAlpha','2123-06-01','2125-09-15','Terra','ZetaPrime','StarlightVessel','ElaraNox',12,'Explore habitable zone','AntimatterDrive','0.2c','Antimatter',450.5,12000,4.2,'Successful','Discovered liquid water','3.5','15.2','Medium',8500000,'SpaceExplorationAgency','No major issues','92');
INSERT INTO interstellar_mission_log VALUES (302,'VanguardBeta','2124-01-20','2126-04-30','Mars','OmegaCentauri','NovaCruiser','DariusKell',9,'Collect mineral samples','FusionCore','0.15c','DeuteriumFusion',380.0,9500,5.0,'PartialSuccess','High mineral density detected','4.1','18.7','High',7200000,'GalacticMiningConsortium','Minor system fault','85');
INSERT INTO interstellar_mission_log VALUES (303,'SurveyGamma','2124-11-05','2127-01-22','Vulcan','SigmaNebula','QuantumRover','LinaMyrr',7,'Map magnetic fields','WarpDrive','0.25c','ExoticMatter',520.3,8000,6.8,'Failed','Instrument malfunction, data incomplete','2.0','22.5','Critical',9600000,'InterstellarResearchInstitute','Mission aborted mid-course','60');

-- Multiverse crossover index
CREATE TABLE multiverse_crossover_index
(
    crossover_id INTEGER PRIMARY KEY,
    primary_universe TEXT,
    secondary_universe TEXT,
    crossover_event_name TEXT,
    event_date DATE,
    involved_hero_ids TEXT,
    involved_villain_ids TEXT,
    narrative_impact_score INTEGER,
    timeline_branch TEXT,
    paradox_risk_level TEXT,
    resolution_method TEXT,
    audience_rating INTEGER,
    critical_acclaim_score INTEGER,
    viewership_millions REAL,
    merchandise_sales_millions INTEGER,
    streaming_platforms TEXT,
    director_name TEXT,
    writer_team TEXT,
    production_budget_usd INTEGER,
    box_office_usd INTEGER,
    awards_won INTEGER,
    sequel_potential TEXT,
    fan_theory_count INTEGER,
    official_briefing TEXT,
    archival_reference TEXT
);

INSERT INTO multiverse_crossover_index VALUES (401,'Prime','Omega','ConvergenceDawn','2125-07-04','1,23,45','12,34','88','BranchA','Low','TemporalSeal','95','92','4.3','150','StreamX,StreamY','AriaVale','TeamNova','120000000','340000000','8','High','452','Multiverse event stabilized','MX-001');
INSERT INTO multiverse_crossover_index VALUES (402,'Alpha','Beta','EchoesReborn','2126-02-18','7,19,33','8,22','76','BranchB','Medium','ChronoReset','88','85','3.9','115','StreamZ','KaneRex','TeamEcho','95000000','210000000','5','Medium','317','Temporal anomalies addressed','MX-002');
INSERT INTO multiverse_crossover_index VALUES (403,'Gamma','Delta','ShadowsCollide','2127-05-12','14,27,39','16,28','81','BranchC','High','RealityMerge','90','87','4.1','130','StreamA,StreamB','LunaSer','TeamShade','110000000','275000000','7','Low','389','Paradox resolved via sacrifice','MX-003');

-- Mythic artifact loan agreement
CREATE TABLE mythic_artifact_loan_agreement
(
    agreement_id INTEGER PRIMARY KEY,
    artifact_name TEXT,
    artifact_origin TEXT,
    lender_institution TEXT,
    borrower_institution TEXT,
    loan_start_date DATE,
    loan_end_date DATE,
    insurance_policy_number TEXT,
    transport_method TEXT,
    temperature_control_required INTEGER,
    security_clearance_level TEXT,
    estimated_value_usd INTEGER,
    custodial_staff TEXT,
    condition_at_loan TEXT,
    condition_at_return TEXT,
    restoration_notes TEXT,
    legal_clause_reference TEXT,
    signed_by_lender TEXT,
    signed_by_borrower TEXT,
    notarized INTEGER,
    amendment_count INTEGER,
    dispute_resolution_mechanism TEXT,
    archival_document_id TEXT,
    remarks TEXT,
    last_updated TIMESTAMP
);

INSERT INTO mythic_artifact_loan_agreement VALUES (501,'AegisOfEons','Elderon','GalacticMuseum','NovaArchive','2125-01-10','2125-12-31','INS-8001','CryogenicPod',1,'TopSecret',25000000,'RheaKal','Excellent','Excellent','None','Clause12A','DrMira','ProfTalon',1,0,'Mediation','DOC-502','Returned without damage','2125-12-31 10:00:00');
INSERT INTO mythic_artifact_loan_agreement VALUES (502,'OrbOfLuminescence','Solaris','StarObservatory','CelestialLibrary','2124-06-15','2125-06-14','INS-9002','GravitonDrone',0,'Restricted',18000000,'NoxVera','Good','Good','Minor polishing required','Clause7B','DrZen','CuratorLia',1,1,'Arbitration','DOC-638','Minor surface wear observed','2125-06-15 09:30:00');
INSERT INTO mythic_artifact_loan_agreement VALUES (503,'ChronoSphere','Tempus','TemporalInstitute','QuantumVault','2123-09-01','2125-09-01','INS-7703','TemporalShift',1,'Classified',32000000,'TaraQuill','Pristine','Slight deterioration','Restored facets','Clause3C','DrChron','HeadOfVault',1,2,'Legal arbitration','DOC-751','Restoration completed','2125-09-01 14:45:00');

-- Quantum energy transaction record
CREATE TABLE quantum_energy_transaction_record
(
    transaction_id INTEGER PRIMARY KEY,
    transaction_date DATE,
    sender_entity TEXT,
    receiver_entity TEXT,
    energy_type TEXT,
    quantity_qubits REAL,
    price_per_qubit REAL,
    total_price_usd REAL,
    contract_reference TEXT,
    transmission_method TEXT,
    latency_microseconds REAL,
    verification_status TEXT,
    regulator_approval INTEGER,
    settlement_date DATE,
    notes TEXT,
    audit_trail_id TEXT,
    compliance_flag INTEGER,
    exchange_platform TEXT,
    transaction_fee_usd REAL,
    blockchain_hash TEXT,
    linked_project TEXT,
    risk_assessment TEXT,
    external_audit_report TEXT,
    created_timestamp TIMESTAMP,
    updated_timestamp TIMESTAMP
);

INSERT INTO quantum_energy_transaction_record VALUES (601,'2125-03-20','QuantumGridAlpha','NebulaCorp','QubitFlux',15000.5,12.8,192006.4,'CTR-1001','EntanglementLink',250.3,'Verified',1,'2125-03-25','Standard delivery','AUD-3001',0,'QExchange','240.5','HASH-A1B2C3','ProjectAurora','Low','Report-900','2125-03-20 08:00:00','2125-03-25 12:00:00');
INSERT INTO quantum_energy_transaction_record VALUES (602,'2125-04-10','StellarNode','CosmoEnergy','QubitPulse',22000,11.5,253000, 'CTR-1002','PhotonTunnel',300.0,'Pending',0,'2125-04-20','Expedited transaction','AUD-3002',1,'QExchange','300.0','HASH-D4E5F6','ProjectNebula','Medium','Report-901','2125-04-10 09:15:00','2125-04-20 14:45:00');
INSERT INTO quantum_energy_transaction_record VALUES (603,'2125-05-05','QuantumGridBeta','ArcadiaLabs','QubitWave',18000,13.0,234000, 'CTR-1003','QuantumRelay',275.5,'Verified',1,'2125-05-12','Routine transfer','AUD-3003',0,'QExchange','210.0','HASH-G7H8I9','ProjectEclipse','Low','Report-902','2125-05-05 07:30:00','2125-05-12 11:00:00');

-- Renewable energy grid node performance
CREATE TABLE renewable_energy_grid_node_performance
(
    node_id INTEGER PRIMARY KEY,
    grid_region TEXT,
    node_name TEXT,
    installation_date DATE,
    capacity_mw REAL,
    current_output_mw REAL,
    capacity_factor_percent REAL,
    average_daily_generation_mwh REAL,
    availability_percent REAL,
    maintenance_last_date DATE,
    maintenance_next_due DATE,
    fault_count INTEGER,
    average_fault_resolution_minutes REAL,
    solar_panel_efficiency_percent REAL,
    wind_turbine_efficiency_percent REAL,
    storage_capacity_mwh REAL,
    current_storage_level_mwh REAL,
    grid_stability_index REAL,
    emissions_reduction_tonnes INTEGER,
    operational_cost_usd INTEGER,
    regulatory_compliance_status TEXT,
    operator_name TEXT,
    notes TEXT,
    last_report_timestamp TIMESTAMP,
    data_quality_score INTEGER
);

INSERT INTO renewable_energy_grid_node_performance VALUES (701,'NorthSector','SolarNodeA','2123-05-01',150.0,145.2,96.8,3400.5,99.2,'2125-01-15','2125-07-15',2,45.0,22.5,0.0,500.0,250.0,0.98,12000,850000,'Compliant','AlexRoe','Stable performance','2125-03-31 10:00:00',9);
INSERT INTO renewable_energy_grid_node_performance VALUES (702,'EastSector','WindNodeB','2124-03-10',200.0,190.7,95.3,4600.3,98.5,'2125-02-20','2125-08-20',1,30.0,0.0,18.7,800.0,400.0,0.95,15000,950000,'Compliant','MiaLiu','Minor turbine wear','2125-04-01 09:30:00',8);
INSERT INTO renewable_energy_grid_node_performance VALUES (703,'SouthSector','HybridNodeC','2125-01-20',250.0,240.1,96.0,5800.8,99.0,'2125-03-05','2025-09-05',0,0.0,21.0,17.5,1200.0,600.0,0.99,20000,1100000,'Compliant','RajPatel','Optimal hybrid operation','2125-05-15 11:45:00',10);