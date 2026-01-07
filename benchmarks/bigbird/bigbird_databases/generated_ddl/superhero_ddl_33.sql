-- Planetary security incident log
CREATE TABLE planetary_security_incident (
    incident_id INTEGER PRIMARY KEY,
    planet_name TEXT,
    incident_date DATE,
    incident_type TEXT,
    severity_level INTEGER,
    reported_by TEXT,
    resolution_status TEXT,
    description TEXT,
    latitude REAL,
    longitude REAL,
    affected_population INTEGER,
    infrastructure_damage TEXT,
    response_team_id INTEGER,
    time_to_resolve_hours INTEGER,
    cost_usd DECIMAL,
    mitigation_measures TEXT,
    weather_conditions TEXT,
    satellite_image_ref TEXT,
    follow_up_date DATE,
    notes TEXT
);
INSERT INTO planetary_security_incident VALUES (1, Earth, 2025-03-12, Tornado, 3, AgencyX, Resolved, Severe tornado impacted coastal region, 34.05, -118.25, 50000, Bridge_collapse, 101, 48, 2500000.00, Reinforced_building_codes, Storm, IMG001, 2025-04-01, All_clear);
INSERT INTO planetary_security_incident VALUES (2, Mars, 2026-01-05, DustStorm, 2, MarsGuard, Ongoing, Large dust storm affecting colony, -4.5, 137.4, 1200, Habitat_damage, 202, 72, 150000.00, Air_filter_upgrades, High_winds, IMG045, 2026-02-10, Monitoring);
INSERT INTO planetary_security_incident VALUES (3, Venus, 2025-11-20, VolcanicEruption, 5, VenusObservatory, Resolved, Massive eruption on Aphrodite region, 12.0, 45.3, 3000, Lava_flow, 303, 96, 4300000.00, Evacuation_routes, Sulfurous, IMG078, 2025-12-15, Recovery_phase);

-- Metahuman genetic sequence repository
CREATE TABLE metahuman_genetic_sequence (
    sequence_id INTEGER PRIMARY KEY,
    metahuman_id INTEGER,
    genome_version TEXT,
    chromosome TEXT,
    start_position INTEGER,
    end_position INTEGER,
    gene_name TEXT,
    mutation_type TEXT,
    nucleotide_change TEXT,
    amino_acid_change TEXT,
    expression_level DECIMAL,
    sample_source TEXT,
    collection_date DATE,
    processed_by TEXT,
    sequencing_method TEXT,
    quality_score INTEGER,
    read_depth INTEGER,
    coverage_percent DECIMAL,
    validation_status TEXT,
    notes TEXT
);
INSERT INTO metahuman_genetic_sequence VALUES (1001, 501, GRCh38, 7, 5500000, 5600000, XGBoost, Substitution, A_T, Lys_Arg, 2.5, Blood, 2025-06-01, LabA, Illumina, 98, 150, 99.5, Validated, No_issues);
INSERT INTO metahuman_genetic_sequence VALUES (1002, 502, GRCh38, X, 12000000, 12005000, AlphaGene, Deletion, -, -, 0.0, Saliva, 2025-08-15, LabB, PacBio, 92, 80, 85.0, Pending, Low_quality);
INSERT INTO metahuman_genetic_sequence VALUES (1003, 503, GRCh38, 12, 34000000, 34001000, BetaGene, Insertion, -, InsG, 1.2, Tissue, 2025-09-20, LabC, Nanopore, 95, 200, 97.0, Validated, Confirmed_variant);

-- Cosmic artifact exhibit schedule
CREATE TABLE cosmic_artifact_exhibit_schedule (
    exhibit_id INTEGER PRIMARY KEY,
    artifact_name TEXT,
    start_date DATE,
    end_date DATE,
    museum_name TEXT,
    hall_number INTEGER,
    curatorial_lead TEXT,
    security_level TEXT,
    insurance_value_usd DECIMAL,
    visitor_capacity INTEGER,
    ticket_price_usd DECIMAL,
    sponsor_name TEXT,
    lighting_type TEXT,
    climate_control TEXT,
    installation_date DATE,
    deinstallation_date DATE,
    exhibit_theme TEXT,
    audio_guide_available TEXT,
    interactive_display TEXT,
    social_media_hashtag TEXT
);
INSERT INTO cosmic_artifact_exhibit_schedule VALUES (2001, StarShard, 2026-03-01, 2026-09-30, GalacticMuseum, 3, DrNova, High, 5000000.00, 2000, 25.00, CosmoCorp, LED, Controlled, 2026-02-20, 2026-10-05, Celestial_Energies, Yes, Yes, #StarShard);
INSERT INTO cosmic_artifact_exhibit_schedule VALUES (2002, VoidCrystal, 2025-11-15, 2026-04-15, NebulaGallery, 1, ProfQuark, Medium, 3200000.00, 1500, 20.00, VoidEnterprises, Spotlight, Regulated, 2025-11-01, 2026-04-20, Dark_Matter, No, Yes, #VoidCrystal);
INSERT INTO cosmic_artifact_exhibit_schedule VALUES (2003, AuroraRelic, 2026-06-10, 2026-12-10, AuroraHall, 2, MsLumen, Low, 2100000.00, 1800, 22.50, LightWorks, Ambient, Standard, 2026-05-28, 2026-12-20, Light_Spectra, Yes, No, #AuroraRelic);

-- Interstellar trade route metrics
CREATE TABLE interstellar_trade_route_metrics (
    route_id INTEGER PRIMARY KEY,
    origin_system TEXT,
    destination_system TEXT,
    distance_ly DECIMAL,
    travel_time_days INTEGER,
    cargo_type TEXT,
    average_load_tons DECIMAL,
    freight_rate_usd_per_ton DECIMAL,
    number_of_ships INTEGER,
    incidents_reported INTEGER,
    regulatory_body TEXT,
    customs_fee_usd DECIMAL,
    insurance_rate_percent DECIMAL,
    average_speed_ly_per_day DECIMAL,
    last_inspection_date DATE,
    route_status TEXT,
    environmental_impact_score INTEGER,
    trade_volume_usd DECIMAL,
    primary_commodity TEXT,
    route_manager TEXT
);
INSERT INTO interstellar_trade_route_metrics VALUES (3001, AlphaCentauri, ProximaB, 4.3, 12, Minerals, 1500.5, 250.00, 18, 2, InterstellarCouncil, 50000.00, 1.2, 0.36, 2025-12-01, Active, 45, 7200000.00, Titanium, ManagerA);
INSERT INTO interstellar_trade_route_metrics VALUES (3002, Vega, OrionNebula, 27.8, 85, BioMaterials, 800.0, 400.00, 10, 0, SpaceTradeAuthority, 30000.00, 1.5, 0.33, 2025-10-15, Scheduled, 38, 3200000.00, Synthetic_Protein, ManagerB);
INSERT INTO interstellar_trade_route_metrics VALUES (3003, Sirius, AndromedaGate, 120.5, 310, EnergyCells, 2500.0, 150.00, 25, 5, GalacticRegulator, 120000.00, 2.0, 0.39, 2025-08-20, Under_Maintenance, 60, 11250000.00, Dark_Matter, ManagerC);

-- Quantum computing job queue snapshot
CREATE TABLE quantum_computing_job_queue_snapshot (
    snapshot_id INTEGER PRIMARY KEY,
    snapshot_timestamp DATETIME,
    total_jobs INTEGER,
    pending_jobs INTEGER,
    running_jobs INTEGER,
    completed_jobs INTEGER,
    failed_jobs INTEGER,
    average_wait_time_ms DECIMAL,
    average_execution_time_ms DECIMAL,
    max_memory_gb DECIMAL,
    max_cpu_cores INTEGER,
    queue_name TEXT,
    priority_level TEXT,
    scheduler_version TEXT,
    node_count INTEGER,
    average_gpu_utilization_percent DECIMAL,
    power_consumption_kw DECIMAL,
    maintenance_window_flag TEXT,
    last_error_message TEXT,
    snapshot_notes TEXT
);
INSERT INTO quantum_computing_job_queue_snapshot VALUES (4001, 2025-12-01 08:00:00, 1200, 300, 150, 700, 50, 350.5, 1200.2, 128.0, 64, MainQueue, High, v2.3, 32, 78.5, 450.0, No, None, Daily_snapshot);
INSERT INTO quantum_computing_job_queue_snapshot VALUES (4002, 2025-12-01 20:00:00, 1150, 250, 200, 650, 40, 400.0, 1180.0, 130.0, 68, MainQueue, Medium, v2.3, 32, 80.0, 460.0, Yes, Temp_node_failure, Evening_snapshot);
INSERT INTO quantum_computing_job_queue_snapshot VALUES (4003, 2025-12-02 08:00:00, 1300, 320, 180, 770, 30, 340.0, 1150.5, 135.0, 70, MainQueue, High, v2.4, 34, 82.0, 470.0, No, None, Morning_snapshot);

-- Alien language translation project
CREATE TABLE alien_language_translation_project (
    project_id INTEGER PRIMARY KEY,
    language_name TEXT,
    script_type TEXT,
    start_date DATE,
    end_date DATE,
    lead_linguist TEXT,
    team_size INTEGER,
    total_phrases INTEGER,
    phrases_translated INTEGER,
    translation_accuracy_percent DECIMAL,
    software_tool TEXT,
    funding_usd DECIMAL,
    sponsor_org TEXT,
    publication_status TEXT,
    dataset_location TEXT,
    quality_assurance_passed TEXT,
    number_of_dialects INTEGER,
    associated_species TEXT,
    cultural_notes TEXT,
    project_status TEXT,
    last_update DATE
);
INSERT INTO alien_language_translation_project VALUES (5001, Zorbian, Logographic, 2025-01-10, 2025-12-10, DrZara, 12, 50000, 45000, 94.5, LexiSoft, 850000.00, ZorCorp, Published, /datasets/zorbian, Yes, 3, Zorbians, Rich_mythology, Completed, 2025-12-01);
INSERT INTO alien_language_translation_project VALUES (5002, Krylam, Alphabetic, 2025-03-15, 2026-03-14, ProfKlyn, 9, 75000, 50000, 88.0, PolyTranslate, 620000.00, KrylaInstitute, In_Progress, /datasets/krylam, No, 2, Krylamites, Emerging_culture, Ongoing, 2025-11-20);
INSERT INTO alien_language_translation_project VALUES (5003, Velox, Syllabary, 2024-09-01, 2025-08-31, MsVela, 15, 60000, 59000, 98.3, LinguaSuite, 970000.00, VeloxAlliance, Published, /datasets/velox, Yes, 4, Veloxians, Advanced_technology, Completed, 2025-08-30);

-- Renewable energy grid node performance
CREATE TABLE renewable_energy_grid_node_performance (
    node_id INTEGER PRIMARY KEY,
    location TEXT,
    grid_section TEXT,
    install_date DATE,
    capacity_mw DECIMAL,
    current_output_mw DECIMAL,
    availability_percent DECIMAL,
    downtime_hours_last_month INTEGER,
    maintenance_cycle_months INTEGER,
    last_maintenance_date DATE,
    operator_company TEXT,
    weather_impact_index INTEGER,
    solar_irradiance_w_per_m2 DECIMAL,
    wind_speed_mps DECIMAL,
    temperature_c DECIMAL,
    humidity_percent DECIMAL,
    carbon_offset_tonnes DECIMAL,
    operational_cost_usd_per_month DECIMAL,
    compliance_status TEXT,
    notes TEXT
);
INSERT INTO renewable_energy_grid_node_performance VALUES (6001, SunCity, NorthSector, 2022-05-20, 150.0, 138.5, 96.5, 4, 12, 2025-09-15, SunPowerInc, 12, 850.0, 5.2, 22.5, 55.0, 1200.0, 45000.00, Compliant, Stable_operation);
INSERT INTO renewable_energy_grid_node_performance VALUES (6002, WindVale, WestSector, 2021-11-10, 200.0, 180.0, 90.0, 12, 10, 2025-08-01, WindFlowLtd, 8, 0.0, 12.5, 18.0, 60.0, 1800.0, 56000.00, Compliant, Minor_wind_fluctuations);
INSERT INTO renewable_energy_grid_node_performance VALUES (6003, HydroTown, EastSector, 2020-03-05, 250.0, 245.0, 98.0, 2, 18, 2025-07-20, HydroGenCo, 5, 0.0, 0.0, 15.0, 70.0, 2500.0, 72000.00, Compliant, Optimal_water_flow);

-- Virtual reality exhibit interaction log
CREATE TABLE virtual_reality_exhibit_interaction_log (
    log_id INTEGER PRIMARY KEY,
    exhibit_id INTEGER,
    visitor_id INTEGER,
    session_start DATETIME,
    session_end DATETIME,
    duration_seconds INTEGER,
    headset_model TEXT,
    interaction_type TEXT,
    objects_touched INTEGER,
    achievements_unlocked INTEGER,
    feedback_score INTEGER,
    headset_serial TEXT,
    software_version TEXT,
    network_latency_ms INTEGER,
    room_temperature_c DECIMAL,
    ambient_light_lux INTEGER,
    safety_incident_flag TEXT,
    comments TEXT,
    sponsor_name TEXT,
    vr_platform TEXT,
    log_created_at DATETIME
);
INSERT INTO virtual_reality_exhibit_interaction_log VALUES (7001, 2001, 9001, 2025-12-01 10:15:00, 2025-12-01 10:45:00, 1800, OculusQuest, Exploration, 45, 3, 9, SN12345, 1.4.2, 30, 22.5, 350, No, Great_experience, MetaVR, 2025-12-01 10:45:10);
INSERT INTO virtual_reality_exhibit_interaction_log VALUES (7002, 2002, 9002, 2025-12-01 11:00:00, 2025-12-01 11:20:00, 1200, HTC_Vive, Puzzle, 30, 2, 7, SN67890, 2.0.1, 45, 21.0, 300, No, Challenging_levels, ValveVR, 2025-12-01 11:20:15);
INSERT INTO virtual_reality_exhibit_interaction_log VALUES (7003, 2003, 9003, 2025-12-01 12:05:00, 2025-12-01 12:35:00, 1800, PlayStationVR, Combat, 60, 4, 8, SN54321, 3.1.0, 25, 23.0, 400, Yes, Minor_latency_spike, SonyVR, 2025-12-01 12:35:05);

-- Metahuman clinic record
CREATE TABLE metahuman_clinic_record (
    record_id INTEGER PRIMARY KEY,
    metahuman_id INTEGER,
    clinic_name TEXT,
    visit_date DATE,
    reason_for_visit TEXT,
    diagnosis TEXT,
    treatment_given TEXT,
    medication_prescribed TEXT,
    dosage_mg DECIMAL,
    follow_up_date DATE,
    attending_physician TEXT,
    insurance_provider TEXT,
    claim_number TEXT,
    outcome TEXT,
    notes TEXT,
    vital_signs_json TEXT,
    lab_results_json TEXT,
    imaging_studies_json TEXT,
    consent_form_signed TEXT,
    billing_amount_usd DECIMAL
);
INSERT INTO metahuman_clinic_record VALUES (8001, 501, NeoHealthCenter, 2025-10-12, Fatigue, Energy_Deficiency, Nutrient_Therapy, VitaminBoost, 500.0, 2025-11-12, DrSmith, HealthPlus, CLM12345, Improved, Patient_reported_more_energy, {"HR":80,"BP":"120/80"}, {"CBC":"Normal"}, {"MRI":"Clear"}, Yes, 250.00);
INSERT INTO metahuman_clinic_record VALUES (8002, 502, StarMedClinic, 2025-11-05, Regeneration, Cell_Damage, Regenerative_Therapy, BioGel, 0.0, 2025-12-05, DrLee, StarInsure, CLM54321, Stable, Minor_scarring_healed, {"HR":78,"BP":"115/75"}, {"CBC":"Elevated_WBC"}, {"CT":"No_findings"}, Yes, 1800.00);
INSERT INTO metahuman_clinic_record VALUES (8003, 503, CosmicCare, 2025-12-01, Genetic_Test, Mutation_Analysis, Gene_Silencing, GeneDrugX, 250.0, 2026-01-01, DrKhan, CosmicHealth, CLM98765, Resolved, Mutation_suppressed, {"HR":82,"BP":"118/78"}, {"CBC":"Normal"}, {"PET":"Negative"}, Yes, 3200.00);

-- Galactic trade hub operations log
CREATE TABLE galactic_trade_hub_operations_log (
    log_entry_id INTEGER PRIMARY KEY,
    hub_id INTEGER,
    operation_date DATE,
    cargo_type TEXT,
    volume_tons DECIMAL,
    inbound_ships INTEGER,
    outbound_ships INTEGER,
    customs_clearance_time_hours DECIMAL,
    fuel_consumption_mt DECIMAL,
    staffing_level INTEGER,
    security_alerts INTEGER,
    weather_conditions TEXT,
    orbital_position TEXT,
    docking_ports_used INTEGER,
    maintenance_issues TEXT,
    revenue_usd DECIMAL,
    tax_paid_usd DECIMAL,
    regulatory_compliance_status TEXT,
    comments TEXT,
    shift_supervisor TEXT
);
INSERT INTO galactic_trade_hub_operations_log VALUES (9001, 301, 2025-12-01, Minerals, 1200.5, 8, 7, 2.5, 350.0, 45, 1, Clear, LEO, 12, None, 8500000.00, 850000.00, Compliant, Smooth_day, SupervisorA);
INSERT INTO galactic_trade_hub_operations_log VALUES (9002, 302, 2025-12-01, Bio_Products, 800.0, 5, 6, 3.0, 280.0, 38, 0, Mild_storm, GEO, 9, Minor_leak, 6200000.00, 620000.00, Compliant, Minor_delay, SupervisorB);
INSERT INTO galactic_trade_hub_operations_log VALUES (9003, 303, 2025-12-01, Energy_Cells, 1500.0, 10, 9, 1.8, 410.0, 52, 2, Radiative_sunflare, Lagrange, 15, Sensor_malfunction, 10200000.00, 1020000.00, Compliant, Resolved_security_alert, SupervisorC);