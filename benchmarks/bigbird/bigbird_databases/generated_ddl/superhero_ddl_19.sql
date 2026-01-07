-- Interstellar Expedition details
CREATE TABLE interstellar_expedition
(
    id INTEGER PRIMARY KEY,
    expedition_name TEXT,
    launch_date TEXT,
    spacecraft TEXT,
    commander_id INTEGER,
    crew_size INTEGER,
    destination_planet TEXT,
    mission_objective TEXT,
    budget_million REAL,
    duration_days INTEGER,
    status TEXT,
    scientific_instrument_1 TEXT,
    scientific_instrument_2 TEXT,
    payload_mass_kg REAL,
    propellant_type TEXT,
    launch_site TEXT,
    communication_band TEXT,
    radiation_shielding_level TEXT,
    crew_experience_years REAL,
    orbital_insertion_date TEXT,
    return_date TEXT,
    data_volume_tb REAL,
    crew_nationalities TEXT,
    sponsor TEXT,
    notes TEXT
);

INSERT INTO interstellar_expedition VALUES (1, 'Aurora', '2032-05-14', 'Odyssey', 101, 12, 'Kepler-452b', 'BioSurvey', 850.5, 720, 'Planned', 'Spectrometer', 'Lidar', 4200.0, 'Hydrogen', 'Cape Canaveral', 'XBand', 'High', 15.3, '2032-07-01', '2034-10-20', 12.7, 'US,EU,JP', 'SpaceX', 'Initial mission plan');
INSERT INTO interstellar_expedition VALUES (2, 'Helios', '2035-09-02', 'Pioneer', 102, 8, 'ProximaCentauri b', 'Geology', 610.0, 540, 'Active', 'Seismometer', 'Magnetometer', 3100.5, 'Methane', 'Vandenberg', 'KaBand', 'Medium', 12.0, '2035-11-15', '2037-03-30', 8.4, 'DE,CA,AU', 'BlueOrigin', 'Mid‑mission adjustments');
INSERT INTO interstellar_expedition VALUES (3, 'Vega', '2038-01-20', 'Nova', 103, 10, 'TRAPPIST-1e', 'Atmospheric', 720.3, 630, 'Pending', 'GasChromatograph', 'Radiometer', 3800.2, 'LiquidOxygen', 'Kourou', 'SBand', 'Low', 13.7, '2038-04-10', NULL, 0.0, 'UK,IN,BR', 'ESA', 'Awaiting final approval');

-- Tactical Gear Inventory
CREATE TABLE tactical_gear_inventory
(
    id INTEGER PRIMARY KEY,
    gear_name TEXT,
    category TEXT,
    manufacturer TEXT,
    weight_grams INTEGER,
    durability_rating INTEGER,
    stock_quantity INTEGER,
    location_warehouse TEXT,
    last_audit_date TEXT,
    serial_number_prefix TEXT,
    encryption_level TEXT,
    night_vision_capable TEXT,
    waterproof_rating TEXT,
    thermal_resistance TEXT,
    tactical_rating INTEGER,
    procurement_cost_usd REAL,
    maintenance_cycle_days INTEGER,
    assigned_to_unit TEXT,
    condition_status TEXT,
    warranty_expiry_year INTEGER
);

INSERT INTO tactical_gear_inventory VALUES (1, 'StealthRifle', 'Weapon', 'ArmaTech', 3500, 9, 45, 'WH01', '2025-03-01', 'SRF', 'AES256', 'Yes', 'IP68', '30C', 95, 12500.0, 180, 'AlphaSquad', 'New', 2029);
INSERT INTO tactical_gear_inventory VALUES (2, 'NightVisionGoggles', 'Optics', 'OptiCorp', 800, 8, 120, 'WH02', '2025-02-20', 'NVG', 'None', 'Yes', 'IP65', 'N/A', 80, 2500.0, 365, 'BravoTeam', 'Good', 2027);
INSERT INTO tactical_gear_inventory VALUES (3, 'CombatBackpack', 'Gear', 'LoadMaster', 2100, 7, 200, 'WH03', '2025-01-15', 'CBP', 'None', 'No', 'IP67', '15C', 70, 1500.0, 90, 'CharlieUnit', 'Fair', 2026);

-- Mythic Artifact Registry
CREATE TABLE mythic_artifact_registry
(
    id INTEGER PRIMARY KEY,
    artifact_name TEXT,
    origin_culture TEXT,
    period TEXT,
    material TEXT,
    dimensions_cm TEXT,
    weight_kg REAL,
    discovered_by TEXT,
    discovery_location TEXT,
    current_location TEXT,
    preservation_state TEXT,
    estimated_value_usd REAL,
    myth_associated TEXT,
    inscription_text TEXT,
    catalog_number TEXT,
    accession_date TEXT,
    curator_responsible TEXT,
    display_status TEXT,
    loan_history TEXT,
    protective_measures TEXT
);

INSERT INTO mythic_artifact_registry VALUES (1, 'SunDisc', 'Egyptian', 'NewKingdom', 'Gold', '30x30', 2.5, 'DrSmith', 'Luxor', 'NationalMuseum', 'Excellent', 5000000.0, 'Ra', 'HieroglyphicCircle', 'AG001', '2010-06-12', 'MsLee', 'OnDisplay', 'None', 'HumidityControlled');
INSERT INTO mythic_artifact_registry VALUES (2, 'CrystalSkull', 'Mayan', 'PostClassic', 'Obsidian', '15x20x10', 1.8, 'ArchaeologyTeamX', 'Guatemala', 'WorldHeritageCenter', 'Good', 3200000.0, 'Kukulcan', 'Glyphs', 'AG045', '2015-09-05', 'DrKhan', 'InStorage', 'LoanedToCityMuseum2020', 'UVLightProtected');
INSERT INTO mythic_artifact_registry VALUES (3, 'AegisShield', 'Greek', 'Classical', 'Bronze', '100x120', 12.0, 'ProfAllen', 'Athens', 'HistoricalInstitute', 'Fair', 2500000.0, 'Zeus', 'EngravedLions', 'AG112', '2018-11-23', 'MsPatel', 'Restoration', 'None', 'TemperatureStabilized');

-- Quantum Computing Job Queue
CREATE TABLE quantum_computing_job_queue
(
    id INTEGER PRIMARY KEY,
    job_name TEXT,
    submitter_user TEXT,
    submit_date TEXT,
    target_qubits INTEGER,
    circuit_depth INTEGER,
    estimated_runtime_seconds REAL,
    priority_level INTEGER,
    status TEXT,
    result_location TEXT,
    error_rate REAL,
    hardware_node TEXT,
    allocated_memory_mb INTEGER,
    cpu_threads INTEGER,
    gpu_units INTEGER,
    cooling_requirements_kw REAL,
    billing_account TEXT,
    notes TEXT,
    checksum TEXT,
    last_update TEXT
);

INSERT INTO quantum_computing_job_queue VALUES (1, 'PrimeFactorization', 'alice', '2024-02-01', 127, 45, 3600.5, 1, 'Running', '/results/pf_001', 0.00012, 'NodeA', 8192, 16, 2, 5.0, 'Acct123', 'High priority', 'abcde12345', '2024-02-01');
INSERT INTO quantum_computing_job_queue VALUES (2, 'MoleculeSim', 'bob', '2024-02-03', 64, 30, 1800.0, 2, 'Queued', NULL, NULL, NULL, NULL, NULL, NULL, 'Acct456', 'Standard job', 'fghij67890', NULL);
INSERT INTO quantum_computing_job_queue VALUES (3, 'Optimization', 'carol', '2024-02-05', 80, 22, 900.0, 3, 'Completed', '/results/opt_003', 0.00005, 'NodeB', 4096, 8, 1, 3.2, 'Acct789', 'Completed successfully', 'klmno13579', '2024-02-05');

-- Planetary Climatology Record
CREATE TABLE planetary_climatology_record
(
    id INTEGER PRIMARY KEY,
    planet_name TEXT,
    observation_station TEXT,
    record_date TEXT,
    avg_temp_c REAL,
    max_temp_c REAL,
    min_temp_c REAL,
    atmospheric_pressure_pa REAL,
    wind_speed_ms REAL,
    precipitation_mm REAL,
    radiation_level_svy REAL,
    dust_storm_activity TEXT,
    season TEXT,
    solar_insolation_wm2 REAL,
    humidity_percent REAL,
    ozone_concentration_ppb REAL,
    methane_ppm REAL,
    carbon_dioxide_ppm REAL,
    data_source TEXT,
    analyst TEXT
);

INSERT INTO planetary_climatology_record VALUES (1, 'Mars', 'VallesStation', '2030-04-12', -55.3, -12.0, -90.5, 610.0, 5.2, 0.0, 0.45, 'Low', 'Spring', 590.0, 4.5, 120.0, 0.7, 950.0, 'OrbitalSat', 'DrMiller');
INSERT INTO planetary_climatology_record VALUES (2, 'Titan', 'KrakenBay', '2031-08-23', -179.1, -150.0, -200.0, 147000.0, 0.8, 5.3, 0.12, 'None', 'Summer', 15.0, 90.0, 300.0, 1.2, 0.0, 'ProbeLanding', 'DrNguyen');
INSERT INTO planetary_climatology_record VALUES (3, 'Kepler-442b', 'AlphaOutpost', '2032-01-05', 22.5, 45.0, 5.0, 101325.0, 12.0, 2.5, 0.30, 'Moderate', 'Autumn', 1120.0, 55.0, 280.0, 1.8, 400.0, 'SpaceTelescope', 'DrLee');

-- Biotech Trial Phase
CREATE TABLE biotech_trial_phase
(
    id INTEGER PRIMARY KEY,
    trial_name TEXT,
    sponsor_company TEXT,
    compound_code TEXT,
    phase TEXT,
    start_date TEXT,
    end_date TEXT,
    primary_endpoint TEXT,
    secondary_endpoint TEXT,
    patient_enrollment INTEGER,
    sites_count INTEGER,
    adverse_events_reported INTEGER,
    success_metric REAL,
    regulatory_status TEXT,
    data_locked TEXT,
    bioinformatics_tool TEXT,
    sample_storage_location TEXT,
    lead_scientist TEXT,
    budget_million_usd REAL,
    notes TEXT
);

INSERT INTO biotech_trial_phase VALUES (1, 'OncoRev', 'PharmaGen', 'PX-101', 'Phase1', '2024-01-15', '2025-06-30', 'TumorReduction', 'SafetyProfile', 120, 12, 5, 0.78, 'Pending', 'No', 'SeqAnalyzer', 'FreezerA1', 'DrHuang', 12.5, 'Initial dose escalation');
INSERT INTO biotech_trial_phase VALUES (2, 'CardioHeal', 'HeartBio', 'CB-202', 'Phase2', '2023-05-01', '2024-12-15', 'EjectionFraction', 'BiomarkerLevels', 200, 20, 12, 0.65, 'Approved', 'Yes', 'GeneMap', 'ColdRoomB2', 'DrKumar', 18.0, 'Mid‑term interim analysis');
INSERT INTO biotech_trial_phase VALUES (3, 'NeuroBoost', 'NeuroTech', 'NB-303', 'Phase3', '2022-09-10', '2025-03-20', 'CognitiveScore', 'MRIChanges', 350, 30, 20, 0.82, 'Pending', 'No', 'BrainStat', 'LabC3', 'DrSanchez', 25.0, 'Large multicenter study');

-- Virtual Event Stream Log
CREATE TABLE virtual_event_stream_log
(
    id INTEGER PRIMARY KEY,
    event_name TEXT,
    platform TEXT,
    stream_start_utc TEXT,
    stream_end_utc TEXT,
    concurrent_viewers_peak INTEGER,
    total_views INTEGER,
    average_watch_time_minutes REAL,
    chat_messages_count INTEGER,
    likes_count INTEGER,
    shares_count INTEGER,
    geographic_region_majority TEXT,
    bitrate_kbps INTEGER,
    resolution_px TEXT,
    subtitle_languages TEXT,
    sponsor_brand TEXT,
    ad_impressions INTEGER,
    revenue_usd REAL,
    recording_url TEXT,
    moderation_actions TEXT
);

INSERT INTO virtual_event_stream_log VALUES (1, 'CosmicCon2024', 'StreamHub', '2024-05-01 14:00', '2024-05-01 18:00', 45000, 120000, 42.5, 8000, 5400, 1300, 'NA', 4500, '1920x1080', 'EN,ES,FR', 'TechCorp', 25000, 180000.0, 'http://media.com/cosmic2024', 'None');
INSERT INTO virtual_event_stream_log VALUES (2, 'AlphaGamingExpo', 'GameLive', '2024-06-15 10:00', '2024-06-15 15:30', 38000, 95000, 35.2, 6200, 4200, 950, 'EU', 3500, '1280x720', 'EN,DE', 'GameGear', 18000, 95000.0, 'http://media.com/alphaexpo', 'Timeouts5');
INSERT INTO virtual_event_stream_log VALUES (3, 'FutureAI Summit', 'TechTalk', '2024-07-20 16:00', '2024-07-20 20:00', 26000, 73000, 48.9, 4100, 3000, 720, 'APAC', 4000, '1920x1080', 'EN,JA,ZH', 'AIInnovate', 22000, 130000.0, 'http://media.com/ai2024', 'Mute2');

-- Renewable Energy Grid Node
CREATE TABLE renewable_energy_grid_node
(
    id INTEGER PRIMARY KEY,
    node_name TEXT,
    latitude REAL,
    longitude REAL,
    installed_capacity_mw REAL,
    current_output_mw REAL,
    node_type TEXT,
    storage_capacity_mwh REAL,
    battery_soc_percent REAL,
    maintenance_status TEXT,
    last_inspection_date TEXT,
    grid_region TEXT,
    connected_substations TEXT,
    voltage_kv REAL,
    frequency_hz REAL,
    fault_history_count INTEGER,
    operator_company TEXT,
    renewable_source TEXT,
    carbon_offset_tons REAL,
    forecasted_output_next_hour_mw REAL
);

INSERT INTO renewable_energy_grid_node VALUES (1, 'SolarFarmNorth', 45.23, -122.67, 150.0, 132.5, 'Solar', 20.0, 78.5, 'Good', '2024-03-10', 'NorthGrid', 'SubA,SubB', 33.0, 60.0, 2, 'GreenPowerCo', 'Solar', 350.0, 133.0);
INSERT INTO renewable_energy_grid_node VALUES (2, 'WindParkEast', 38.56, -90.12, 200.0, 180.2, 'Wind', 30.0, 85.0, 'Scheduled', '2024-02-20', 'EastGrid', 'SubC,SubD', 33.5, 60.0, 1, 'WindEnergyLtd', 'Wind', 480.0, 181.0);
INSERT INTO renewable_energy_grid_node VALUES (3, 'HybridHubCentral', 51.45, 0.12, 250.0, 210.0, 'Hybrid', 45.0, 90.2, 'Good', '2024-01-15', 'CentralGrid', 'SubE,SubF', 34.0, 60.0, 0, 'EnergyFusionInc', 'Solar+Wind', 620.0, 212.0);

-- AI Model Deployment Log
CREATE TABLE ai_model_deployment_log
(
    id INTEGER PRIMARY KEY,
    model_name TEXT,
    version TEXT,
    deployment_date TEXT,
    environment TEXT,
    serving_endpoint TEXT,
    latency_ms REAL,
    throughput_rps REAL,
    gpu_util_percent REAL,
    cpu_util_percent REAL,
    memory_usage_mb INTEGER,
    request_error_rate REAL,
    data_drift_flag TEXT,
    model_accuracy REAL,
    monitoring_window_hours INTEGER,
    rollback_flag TEXT,
    rollback_version TEXT,
    responsible_engineer TEXT,
    changelog_summary TEXT,
    compliance_status TEXT
);

INSERT INTO ai_model_deployment_log VALUES (1, 'ImageClassifier', 'v2.3', '2024-04-01', 'Production', 'api.company.com/v2/classify', 45.2, 1200.5, 68.0, 55.0, 8192, 0.0012, 'No', 0.94, 24, 'No', NULL, 'AliceW', 'Improved augmentation', 'Compliant');
INSERT INTO ai_model_deployment_log VALUES (2, 'SpeechRecognizer', 'v1.8', '2024-03-15', 'Staging', 'api.company.com/v1/recognize', 60.5, 800.0, 72.5, 60.0, 6144, 0.0025, 'Yes', 0.89, 48, 'Yes', 'v1.7', 'BobK', 'Bug fix in decoder', 'PendingReview');
INSERT INTO ai_model_deployment_log VALUES (3, 'FraudDetector', 'v3.0', '2024-05-10', 'Production', 'api.company.com/v3/fraud', 30.0, 1500.0, 80.0, 65.0, 10240, 0.0008, 'No', 0.97, 12, 'No', NULL, 'CarolM', 'Added new feature set', 'Compliant');

-- Historical Trade Route
CREATE TABLE historical_trade_route
(
    id INTEGER PRIMARY KEY,
    route_name TEXT,
    era TEXT,
    start_point TEXT,
    end_point TEXT,
    distance_km REAL,
    primary_goods TEXT,
    secondary_goods TEXT,
    controlling_empire TEXT,
    peak_year INTEGER,
    decline_year INTEGER,
    known_ports TEXT,
    average_travel_time_days INTEGER,
    taxation_rate_percent REAL,
    piracy_incidents INTEGER,
    archaeological_findings TEXT,
    modern_equivalent TEXT,
    unesco_status TEXT,
    map_reference_id TEXT,
    notes TEXT
);

INSERT INTO historical_trade_route VALUES (1, 'SilkRoad', 'Classical', 'ChangAn', 'Constantinople', 7000.0, 'Silk', 'Spices', 'HanEmpire', 150, 900, 'Samarkand,Petra', 90, 5.0, 120, 'TerracottaSoldiers', 'TransEurRail', 'WorldHeritage', 'Map001', 'Spanned continents');
INSERT INTO historical_trade_route VALUES (2, 'SpiceRoute', 'Medieval', 'Calicut', 'Lisbon', 12000.0, 'Pepper', 'Cloves', 'MughalEmpire', 1600, 1800, 'Mombasa,Goa', 150, 8.0, 85, 'ShipwreckArtifacts', 'MaritimeHighway', 'None', 'Map045', 'Seasonal monsoon winds');
INSERT INTO historical_trade_route VALUES (3, 'AmberRoad', 'BronzeAge', 'BalticSea', 'Mediterranean', 3000.0, 'Amber', 'Furs', 'BalticTribes', 500, 1000, 'Riga,Krakow', 45, 3.5, 30, 'BronzeAxe', 'EuroRail', 'Candidate', 'Map078', 'Early European trade');

