-- Planetary exploration missions
CREATE TABLE planetary_exploration_log (
    log_id INTEGER PRIMARY KEY,
    mission_name TEXT,
    launch_date TEXT,
    landing_site TEXT,
    duration_days INTEGER,
    crew_size INTEGER,
    primary_scientist TEXT,
    program_agency TEXT,
    budget_million_usd INTEGER,
    objectives TEXT,
    findings_summary TEXT,
    equipment_list TEXT,
    telemetry_data_path TEXT,
    atmospheric_pressure_hpa REAL,
    surface_temperature_c REAL,
    radiation_level_sv REAL,
    sample_collection INTEGER,
    sample_type TEXT,
    data_transmission_rate_mbps REAL,
    status TEXT
);
INSERT INTO planetary_exploration_log VALUES (1, 'AlphaPrime', '2031-04-12', 'ElysiumValley', 180, 6, 'DrKhan', 'SpaceAgencyX', 320, 'GeologySurvey', 'MineralRich', 'DrillCam', '/data/alpha1', 1013.25, -55.2, 0.12, 1, 'Rock', 15.4, 'Completed');
INSERT INTO planetary_exploration_log VALUES (2, 'BetaQuest', '2033-09-05', 'CrimsonCliffs', 240, 8, 'DrMira', 'InterstellarResearch', 450, 'AtmosphericStudy', 'MethaneDetection', 'Spectrograph', '/data/beta2', 850.5, -12.0, 0.08, 0, '', 10.2, 'Ongoing');
INSERT INTO planetary_exploration_log VALUES (3, 'GammaVoyage', '2035-01-20', 'OceanicPlain', 365, 10, 'DrLiu', 'CosmicExplorers', 600, 'HydrothermalMapping', 'NewLifeForms', 'Submersible', '/data/gamma3', 1010.0, 2.5, 0.09, 1, 'Biological', 20.1, 'Planned');

-- Galactic trade routes
CREATE TABLE galactic_trade_route (
    route_id INTEGER PRIMARY KEY,
    route_name TEXT,
    origin_system TEXT,
    destination_system TEXT,
    distance_lightyears REAL,
    typical_cargo TEXT,
    security_level TEXT,
    governing_body TEXT,
    annual_volume_million_credits INTEGER,
    average_transit_time_days REAL,
    primary_transport_mode TEXT,
    customs_fee_percent REAL,
    insurance_rate_percent REAL,
    dominant_faction TEXT,
    last_inspection_date TEXT,
    route_status TEXT,
    max_ship_size_meter INTEGER,
    approved_ports INTEGER,
    regulatory_compliance INTEGER,
    notes TEXT
);
INSERT INTO galactic_trade_route VALUES (101, 'SilkRoad', 'Sol', 'AlphaCentauri', 4.3, 'Electronics', 'Medium', 'TradeCouncil', 1200, 7.5, 'Freighter', 2.5, 1.2, 'EmpireA', '2032-11-15', 'Active', 250, 5, 1, 'Stable');
INSERT INTO galactic_trade_route VALUES (102, 'Starlight', 'Vega', 'Betelgeuse', 27.8, 'Minerals', 'High', 'GalacticUnion', 3000, 15.2, 'BulkCarrier', 3.0, 1.5, 'AllianceB', '2034-02-10', 'Active', 400, 8, 1, 'HighTraffic');
INSERT INTO galactic_trade_route VALUES (103, 'NebulaPass', 'Sirius', 'Deneb', 15.6, 'Foodstuffs', 'Low', 'FreeTraders', 800, 10.0, 'CargoShip', 1.8, 1.0, 'ConfederationC', '2031-08-05', 'Suspended', 180, 3, 0, 'Seasonal');

-- Alien species registry
CREATE TABLE alien_species_registry (
    species_id INTEGER PRIMARY KEY,
    common_name TEXT,
    scientific_name TEXT,
    classification TEXT,
    home_planet TEXT,
    average_lifespan_years INTEGER,
    typical_height_m REAL,
    typical_weight_kg REAL,
    diet_type TEXT,
    sentience_level TEXT,
    language_name TEXT,
    population_estimate INTEGER,
    discovery_date TEXT,
    discovered_by TEXT,
    biohazard_rating INTEGER,
    planetary_biome TEXT,
    reproductive_method TEXT,
    notable_abilities TEXT,
    cultural_traits TEXT,
    conservation_status TEXT
);
INSERT INTO alien_species_registry VALUES (1001, 'Glintwing', 'Aurelia luminis', 'Insectoid', 'Luminara', 30, 0.45, 1.2, 'Nectar', 'High', 'GlowSpeak', 5000000, '2028-05-22', 'DrHolt', 2, 'Forest', 'EggLaying', 'Bioluminescence', 'HiveMind', 'Stable');
INSERT INTO alien_species_registry VALUES (1002, 'Stoneback', 'Terranox durus', 'Reptilian', 'Granitus', 80, 2.1, 150, 'Carnivore', 'Medium', 'Rumble', 120000, '2030-09-10', 'ExpeditionX', 4, 'Mountain', 'LiveBirth', 'Regeneration', 'Territorial', 'Vulnerable');
INSERT INTO alien_species_registry VALUES (1003, 'Skywhale', 'Celestis leviathan', 'Mammal', 'Aerios', 200, 30.5, 25000, 'Plankton', 'Low', 'Whisper', 8000, '2029-12-01', 'TeamNova', 1, 'Atmosphere', 'LiveBirth', 'GravityManipulation', 'Nomadic', 'Endangered');

-- Cosmic event observations
CREATE TABLE cosmic_event_observation (
    observation_id INTEGER PRIMARY KEY,
    event_type TEXT,
    event_name TEXT,
    detection_date TEXT,
    observed_by TEXT,
    instrument TEXT,
    wavelength_nm REAL,
    peak_intensity_joules REAL,
    duration_seconds REAL,
    source_coordinates TEXT,
    redshift REAL,
    estimated_distance_lightyears REAL,
    followup_required INTEGER,
    data_archive_path TEXT,
    notes TEXT,
    classification TEXT,
    confidence_level_percent REAL,
    alert_level TEXT,
    public_release_date TEXT,
    affiliated_agency TEXT
);
INSERT INTO cosmic_event_observation VALUES (5001, 'Supernova', 'SN2025A', '2025-03-14', 'ObservatoryX', 'Spectrometer', 550.0, 3.2e45, 86400, 'RA13h45m Dec-22d30m', 0.03, 1300000, 1, '/archive/sn2025a', 'TypeIa', 'Confirmed', 99.5, 'High', '2025-04-01', 'SpaceAgencyY');
INSERT INTO cosmic_event_observation VALUES (5002, 'GammaRayBurst', 'GRB2109B', '2021-09-08', 'SatelliteZ', 'GammaDetector', 0.5, 1.1e48, 45, 'RA02h15m Dec+07d45m', 1.2, 9500000, 1, '/archive/grb2109b', 'ShortBurst', 'Probable', 87.0, 'Critical', '2021-09-20', 'AstroConsortium');
INSERT INTO cosmic_event_observation VALUES (5003, 'SolarFlare', 'SF2024X', '2024-11-02', 'SolarProbe', 'XRayImager', 10.0, 5.5e30, 1800, 'RA00h00m Dec+00d00m', 0.0, 0, 0, '/archive/sf2024x', 'ClassX', 'Confirmed', 99.9, 'Medium', '2024-11-05', 'HelioResearch');

-- Renewable energy grid nodes
CREATE TABLE renewable_energy_grid_node (
    node_id INTEGER PRIMARY KEY,
    node_name TEXT,
    location_region TEXT,
    energy_type TEXT,
    capacity_mw REAL,
    current_output_mw REAL,
    operational_status TEXT,
    date_commissioned TEXT,
    maintenance_cycle_days INTEGER,
    last_maintenance_date TEXT,
    uptime_percent REAL,
    average_efficiency_percent REAL,
    connected_substations INTEGER,
    grid_zone TEXT,
    temperature_c REAL,
    wind_speed_mps REAL,
    solar_irradiance_wpm2 REAL,
    storage_capacity_mwh REAL,
    peak_demand_mw REAL,
    notes TEXT
);
INSERT INTO renewable_energy_grid_node VALUES (2001, 'SolarHarbor', 'CoastlineA', 'Solar', 150.0, 145.3, 'Online', '2022-06-01', 180, '2023-12-15', 98.7, 92.5, 12, 'Zone5', 28.5, 0.0, 850.0, 30.0, 140.0, 'Stable');
INSERT INTO renewable_energy_grid_node VALUES (2002, 'WindRidge', 'HighPlains', 'Wind', 300.0, 287.0, 'Online', '2020-03-15', 210, '2023-10-02', 96.3, 88.0, 20, 'Zone2', 15.2, 12.5, 0.0, 120.0, 260.0, 'HighWind');
INSERT INTO renewable_energy_grid_node VALUES (2003, 'HydroValley', 'RiverBasin', 'Hydro', 500.0, 492.5, 'Maintenance', '2018-11-20', 365, '2023-08-30', 92.1, 85.0, 25, 'Zone8', 12.0, 0.0, 0.0, 250.0, 480.0, 'Scheduled');

-- Quantum computing jobs
CREATE TABLE quantum_computing_job (
    job_id INTEGER PRIMARY KEY,
    job_name TEXT,
    submit_date TEXT,
    user_id INTEGER,
    algorithm_type TEXT,
    qubits_requested INTEGER,
    estimated_runtime_minutes REAL,
    priority_level TEXT,
    status TEXT,
    result_location TEXT,
    memory_gb REAL,
    error_rate_percent REAL,
    gate_depth INTEGER,
    circuit_complexity TEXT,
    hardware_node TEXT,
    node_temperature_mk REAL,
    cooling_power_watts REAL,
    job_tags TEXT,
    completion_date TEXT,
    notes TEXT
);
INSERT INTO quantum_computing_job VALUES (9001, 'PrimeFactor', '2025-01-10', 42, 'Shor', 127, 180.5, 'High', 'Running', '/results/pf9001', 64.0, 0.02, 210, 'Medium', 'NodeA', 15.0, 3500.0, 'Crypto,Research', '', 'Pending');
INSERT INTO quantum_computing_job VALUES (9002, 'MoleculeSim', '2024-11-22', 87, 'VQE', 64, 95.0, 'Medium', 'Completed', '/results/ms9002', 32.0, 0.05, 150, 'High', 'NodeB', 12.5, 2800.0, 'Chemistry,Simulation', '2024-12-01', 'Successful');
INSERT INTO quantum_computing_job VALUES (9003, 'Optimization', '2025-03-05', 63, 'QAOA', 32, 45.3, 'Low', 'Failed', '/results/opt9003', 16.0, 0.12, 80, 'Low', 'NodeC', 18.0, 4000.0, 'Logistics,Research', '2025-03-10', 'HardwareError');

-- Metahuman clinic records
CREATE TABLE metahuman_clinic_record (
    record_id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    metahuman_name TEXT,
    admission_date TEXT,
    discharge_date TEXT,
    primary_diagnosis TEXT,
    secondary_diagnosis TEXT,
    treatment_plan TEXT,
    attending_physician TEXT,
    facility_branch TEXT,
    isolation_required INTEGER,
    genetic_marker TEXT,
    ability_status TEXT,
    recovery_progress_percent REAL,
    medication_list TEXT,
    therapy_sessions INTEGER,
    followup_date TEXT,
    insurance_provider TEXT,
    billing_code TEXT,
    notes TEXT
);
INSERT INTO metahuman_clinic_record VALUES (3001, 501, 'VoltMan', '2025-02-14', '2025-02-20', 'EnergyOverload', 'NONE', 'StabilizationProtocol', 'DrReed', 'Central', 0, 'E-Alpha', 'Stable', 100.0, 'NeuroSerum', 3, '2025-03-01', 'MetaHealth', 'MH-001', 'Recovered');
INSERT INTO metahuman_clinic_record VALUES (3002, 702, 'AquaSprite', '2024-12-01', '', 'HydrokineticLeak', 'RespiratoryDistress', 'FluidReplacement', 'DrMira', 'Coastal', 1, 'H-Beta', 'Critical', 45.0, 'AquaGel', 5, '2025-01-15', 'OceanicCare', 'OC-045', 'Under observation');
INSERT INTO metahuman_clinic_record VALUES (3003, 889, 'StoneGiant', '2023-07-10', '2023-07-25', 'BoneFracture', 'MuscleTear', 'RegenerativeTherapy', 'DrKhan', 'Mountain', 0, 'S-Gamma', 'Recovering', 78.0, 'CalciumBoost', 4, '2023-08-05', 'PeakMed', 'PM-078', 'Improving');

-- Interstellar supply chain logs
CREATE TABLE interstellar_supply_chain (
    shipment_id INTEGER PRIMARY KEY,
    cargo_name TEXT,
    origin_station TEXT,
    destination_station TEXT,
    departure_date TEXT,
    arrival_date TEXT,
    carrier_type TEXT,
    carrier_id INTEGER,
    cargo_weight_tons REAL,
    cargo_volume_m3 REAL,
    handling_instructions TEXT,
    customs_status TEXT,
    insurance_covered INTEGER,
    value_credits INTEGER,
    priority_level TEXT,
    tracking_url TEXT,
    delay_reason TEXT,
    current_status TEXT,
    last_update TEXT,
    notes TEXT
);
INSERT INTO interstellar_supply_chain VALUES (7001, 'TitaniumAlloys', 'ForgePrime', 'OrbitStation7', '2031-05-12', '2031-05-20', 'Freighter', 112, 45.6, 120.0, 'SecureLock', 'Cleared', 1, 2500000, 'High', 'http://track/7001', '', 'Delivered', '2031-05-20', '');
INSERT INTO interstellar_supply_chain VALUES (7002, 'ExoticSpices', 'SpiceWorld', 'GalaPort', '2032-08-01', '2032-08-10', 'CargoShip', 145, 8.3, 22.5, 'TemperatureControlled', 'Pending', 1, 750000, 'Medium', 'http://track/7002', 'WeatherDelay', 'InTransit', '2022-08-05', '');
INSERT INTO interstellar_supply_chain VALUES (7003, 'QuantumProcessors', 'TechHubX', 'NebulaBase', '2030-11-15', '', 'Courier', 207, 0.9, 1.2, 'Fragile', 'CustomsHold', 0, 15000000, 'Critical', 'http://track/7003', 'RegulatoryReview', 'Hold', '2030-11-18', '');

-- Archaeological site records
CREATE TABLE archaeological_site_record (
    site_id INTEGER PRIMARY KEY,
    site_name TEXT,
    planet TEXT,
    region TEXT,
    discovery_date TEXT,
    discoverer TEXT,
    era TEXT,
    primary_artifact TEXT,
    artifact_age_years INTEGER,
    excavation_status TEXT,
    lead_archaeologist TEXT,
    team_size INTEGER,
    funding_source TEXT,
    estimated_budget_credits INTEGER,
    preservation_method TEXT,
    GPS_coordinates TEXT,
    climate_zone TEXT,
    notes TEXT,
    public_access INTEGER,
    last_report_date TEXT
);
INSERT INTO archaeological_site_record VALUES (4001, 'AncientRuins', 'Mars', 'VallesMarineris', '2030-04-22', 'DrKhan', 'BronzeAge', 'ObsidianStatue', 4500, 'Ongoing', 'DrLiu', 12, 'SpaceHeritageFund', 800000, 'ClimateControlled', 'RA-15h30m Dec-30d00m', 'Arid', 'WellPreserved', 0, '2031-01-15');
INSERT INTO archaeological_site_record VALUES (4002, 'CrystalCavern', 'Europa', 'SouthPole', '2029-09-10', 'DrMira', 'IceAge', 'CrystalShard', 12000, 'Completed', 'DrSato', 8, 'InterstellarScience', 1200000, 'CryoSeal', 'RA-23h45m Dec+10d20m', 'Frozen', 'Fragile', 1, '2029-12-05');
INSERT INTO archaeological_site_record VALUES (4003, 'StoneCircle', 'Kepler-62f', 'NorthernPlains', '2032-02-14', 'ExpeditionZ', 'StoneAge', 'StoneObelisk', 8000, 'Planned', 'DrRossi', 15, 'GalacticArchives', 600000, 'UndergroundVault', 'RA-08h15m Dec-05d30m', 'Temperate', 'Intact', 0, '');

-- Artificial intelligence model deployments
CREATE TABLE artificial_intelligence_model_deployment (
    deployment_id INTEGER PRIMARY KEY,
    model_name TEXT,
    version TEXT,
    deployment_date TEXT,
    environment TEXT,
    compute_node TEXT,
    gpu_count INTEGER,
    cpu_cores INTEGER,
    memory_gb REAL,
    storage_tb REAL,
    latency_ms REAL,
    throughput_qps REAL,
    monitoring_endpoint TEXT,
    status TEXT,
    rollback_allowed INTEGER,
    responsible_engineer TEXT,
    associated_project TEXT,
    compliance_certified INTEGER,
    last_update TEXT,
    notes TEXT
);
INSERT INTO artificial_intelligence_model_deployment VALUES (8001, 'VisionNet', 'v1.2', '2025-01-05', 'Production', 'NodeX', 8, 32, 128.0, 4.0, 45.3, 1200.0, 'http://monitor/8001', 'Active', 1, 'Alice', 'ImageAnalysis', 1, '2025-02-01', '');
INSERT INTO artificial_intelligence_model_deployment VALUES (8002, 'LangGen', 'v3.0', '2024-11-20', 'Staging', 'NodeY', 4, 16, 64.0, 2.0, 30.1, 800.0, 'http://monitor/8002', 'Testing', 1, 'Bob', 'Chatbot', 0, '2024-12-10', '');
INSERT INTO artificial_intelligence_model_deployment VALUES (8003, 'PredictiveAI', 'v0.9-beta', '2025-03-12', 'Development', 'NodeZ', 2, 8, 32.0, 1.0, 60.5, 500.0, 'http://monitor/8003', 'Inactive', 0, 'Carol', 'Forecasting', 0, '2025-03-15', 'Awaiting approval');

-- Interdimensional portal logs
CREATE TABLE interdimensional_portal_log (
    portal_id INTEGER PRIMARY KEY,
    portal_name TEXT,
    origin_dimension TEXT,
    destination_dimension TEXT,
    activation_date TEXT,
    deactivation_date TEXT,
    stability_rating INTEGER,
    energy_consumption_mw REAL,
    max_transfer_rate_mbps REAL,
    security_level TEXT,
    controlling_faction TEXT,
    access_protocol TEXT,
    last_maintenance_date TEXT,
    anomaly_detected INTEGER,
    anomaly_description TEXT,
    current_status TEXT,
    linked_facility TEXT,
    observation_notes TEXT,
    authorized_personnel TEXT,
    compliance_status TEXT
);
INSERT INTO interdimensional_portal_log VALUES (6001, 'GateAlpha', 'Dim001', 'Dim002', '2033-07-01', '', 85, 250.0, 500.0, 'High', 'CouncilX', 'QuantumKey', '2035-01-10', 0, '', 'Online', 'ResearchLabA', 'StableFlux', 'DrKhan', 'Compliant');
INSERT INTO interdimensional_portal_log VALUES (6002, 'GateBeta', 'Dim003', 'Dim004', '2032-03-15', '2034-08-20', 70, 180.0, 400.0, 'Medium', 'SyndicateY', 'BioCipher', '2033-11-05', 1, 'SpatioTemporalShift', 'Offline', 'DockingBayB', 'MinorDistortion', 'DrMira', 'ReviewPending');
INSERT INTO interdimensional_portal_log VALUES (6003, 'GateGamma', 'Dim005', 'Dim006', '2035-12-10', '', 92, 300.0, 650.0, 'Critical', 'AllianceZ', 'DimKey', '2036-02-20', 0, '', 'Online', 'CommandCenter', 'PeakStability', 'DrLiu', 'Compliant');