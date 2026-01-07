-- Galactic resource allocation across sectors
CREATE TABLE galactic_resource_allocation (
    allocation_id INTEGER PRIMARY KEY,
    galaxy_name TEXT,
    sector_name TEXT,
    resource_type TEXT,
    resource_quantity NUMERIC,
    allocation_date DATE,
    approved_by TEXT,
    budget_usd NUMERIC,
    priority_level INTEGER,
    status TEXT,
    distribution_method TEXT,
    source_planet TEXT,
    destination_planet TEXT,
    transport_mode TEXT,
    estimated_arrival DATE,
    actual_arrival DATE,
    variance_days INTEGER,
    comments TEXT,
    created_timestamp TIMESTAMP,
    updated_timestamp TIMESTAMP
);

INSERT INTO galactic_resource_allocation (allocation_id, galaxy_name, sector_name, resource_type, resource_quantity, allocation_date, approved_by, budget_usd, priority_level, status, distribution_method, source_planet, destination_planet, transport_mode, estimated_arrival, actual_arrival, variance_days, comments, created_timestamp, updated_timestamp)
VALUES (1, 'Andromeda', 'SectorA', 'Helium', 5000, '2025-03-15', 'CouncilLeader', 1200000, 1, 'Pending', 'Warp', 'Xenon', 'Talos', 'Freighter', '2025-04-01', NULL, NULL, 'Initial allocation', '2025-03-15 08:00:00', '2025-03-15 08:00:00');

INSERT INTO galactic_resource_allocation (allocation_id, galaxy_name, sector_name, resource_type, resource_quantity, allocation_date, approved_by, budget_usd, priority_level, status, distribution_method, source_planet, destination_planet, transport_mode, estimated_arrival, actual_arrival, variance_days, comments, created_timestamp, updated_timestamp)
VALUES (2, 'MilkyWay', 'SectorB', 'Titanium', 8500, '2025-04-10', 'MinisterKara', 2500000, 2, 'Approved', 'Hyperlane', 'Vulcan', 'Erebus', 'CargoShip', '2025-05-20', NULL, NULL, 'Urgent defense material', '2025-04-10 09:30:00', '2025-04-10 09:30:00');

INSERT INTO galactic_resource_allocation (allocation_id, galaxy_name, sector_name, resource_type, resource_quantity, allocation_date, approved_by, budget_usd, priority_level, status, distribution_method, source_planet, destination_planet, transport_mode, estimated_arrival, actual_arrival, variance_days, comments, created_timestamp, updated_timestamp)
VALUES (3, 'Triangulum', 'SectorC', 'Water', 12000, '2025-05-05', 'GovernorZen', 900000, 3, 'InTransit', 'Subspace', 'Aqua', 'Hydra', 'Shuttle', '2025-06-01', NULL, NULL, 'Human settlement support', '2025-05-05 07:45:00', '2025-05-05 07:45:00');

-- Interstellar citizen registry
CREATE TABLE interstellar_citizen_registry (
    citizen_id INTEGER PRIMARY KEY,
    full_name TEXT,
    species TEXT,
    birth_date DATE,
    birth_planet TEXT,
    citizenship_status TEXT,
    registration_date DATE,
    assigned_sector TEXT,
    rank TEXT,
    occupation TEXT,
    language_spoken TEXT,
    dna_sequence TEXT,
    biometric_id TEXT,
    residency_permit TEXT,
    tax_id TEXT,
    health_status TEXT,
    last_mission TEXT,
    reputation_score INTEGER,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

INSERT INTO interstellar_citizen_registry (citizen_id, full_name, species, birth_date, birth_planet, citizenship_status, registration_date, assigned_sector, rank, occupation, language_spoken, dna_sequence, biometric_id, residency_permit, tax_id, health_status, last_mission, reputation_score, notes, created_at, updated_at)
VALUES (1001, 'Lara Voss', 'Human', '1990-07-12', 'Earth', 'Full', '2025-01-20', 'SectorAlpha', 'Officer', 'Engineer', 'English', 'ATCGGCTA', 'BIO12345', 'PERM001', 'TX987654', 'Good', 'MissionX1', 85, 'Veteran crew member', '2025-01-20 10:00:00', '2025-01-20 10:00:00');

INSERT INTO interstellar_citizen_registry (citizen_id, full_name, species, birth_date, birth_planet, citizenship_status, registration_date, assigned_sector, rank, occupation, language_spoken, dna_sequence, biometric_id, residency_permit, tax_id, health_status, last_mission, reputation_score, notes, created_at, updated_at)
VALUES (1002, 'Zarok Thal', 'Zorgon', '2125-03-05', 'ZorgonPrime', 'Resident', '2025-02-15', 'SectorBeta', 'Technician', 'Miner', 'Zorgian', 'GGATCCGA', 'BIO67890', 'PERM002', 'TX123456', 'Stable', 'MiningRun7', 70, 'Recently transferred', '2025-02-15 11:15:00', '2025-02-15 11:15:00');

INSERT INTO interstellar_citizen_registry (citizen_id, full_name, species, birth_date, birth_planet, citizenship_status, registration_date, assigned_sector, rank, occupation, language_spoken, dna_sequence, biometric_id, residency_permit, tax_id, health_status, last_mission, reputation_score, notes, created_at, updated_at)
VALUES (1003, 'Kira Nox', 'Andromedan', '2078-11-22', 'AndromedaVII', 'Full', '2025-03-03', 'SectorGamma', 'Commander', 'Pilot', 'Andro', 'CCTAGGTA', 'BIO54321', 'PERM003', 'TX654321', 'Excellent', 'PatrolDelta', 92, 'Highly decorated', '2025-03-03 09:45:00', '2025-03-03 09:45:00');

-- Cosmic event finance tracking
CREATE TABLE cosmic_event_finance (
    event_id INTEGER PRIMARY KEY,
    event_name TEXT,
    event_type TEXT,
    start_date DATE,
    end_date DATE,
    total_budget NUMERIC,
    sponsor_name TEXT,
    sponsor_contribution NUMERIC,
    host_organization TEXT,
    location TEXT,
    expected_attendance INTEGER,
    actual_attendance INTEGER,
    revenue_generated NUMERIC,
    expenses_incurred NUMERIC,
    net_profit NUMERIC,
    currency TEXT,
    financial_audit_status TEXT,
    audit_firm TEXT,
    notes TEXT,
    created_on DATE,
    updated_on DATE
);

INSERT INTO cosmic_event_finance (event_id, event_name, event_type, start_date, end_date, total_budget, sponsor_name, sponsor_contribution, host_organization, location, expected_attendance, actual_attendance, revenue_generated, expenses_incurred, net_profit, currency, financial_audit_status, audit_firm, notes, created_on, updated_on)
VALUES (2001, 'Starlight Expo', 'Convention', '2025-08-01', '2025-08-05', 5000000, 'GalacticBank', 2000000, 'ExpoCorp', 'NovaCity', 15000, 15820, 6200000, 4800000, 1400000, 'GAL', 'Completed', 'AuditStars', 'Successful event', '2025-08-01', '2025-08-10');

INSERT INTO cosmic_event_finance (event_id, event_name, event_type, start_date, end_date, total_budget, sponsor_name, sponsor_contribution, host_organization, location, expected_attendance, actual_attendance, revenue_generated, expenses_incurred, net_profit, currency, financial_audit_status, audit_firm, notes, created_on, updated_on)
VALUES (2002, 'Quantum Summit', 'Conference', '2025-09-12', '2025-09-14', 3000000, 'QuantumTech', 1200000, 'SummitOrg', 'QuantumHub', 8000, 7950, 3500000, 2800000, 700000, 'GAL', 'Pending', 'AuditQuantum', 'Awaiting final audit', '2025-09-12', '2025-09-20');

INSERT INTO cosmic_event_finance (event_id, event_name, event_type, start_date, end_date, total_budget, sponsor_name, sponsor_contribution, host_organization, location, expected_attendance, actual_attendance, revenue_generated, expenses_incurred, net_profit, currency, financial_audit_status, audit_firm, notes, created_on, updated_on)
VALUES (2003, 'Nebula Music Fest', 'Festival', '2025-10-05', '2025-10-07', 2500000, 'HarmonyCorp', 900000, 'FestivalsInc', 'NebulaPark', 20000, 21050, 2800000, 2300000, 500000, 'GAL', 'Completed', 'AuditWave', 'High turnout', '2025-10-05', '2025-10-12');

-- Dimensional portal maintenance log
CREATE TABLE dimensional_portal_maintenance_log (
    log_id INTEGER PRIMARY KEY,
    portal_id TEXT,
    galaxy TEXT,
    sector TEXT,
    maintenance_type TEXT,
    scheduled_date DATE,
    performed_date DATE,
    technician_name TEXT,
    duration_hours NUMERIC,
    equipment_used TEXT,
    material_consumed TEXT,
    safety_status TEXT,
    energy_consumption NUMERIC,
    stability_rating INTEGER,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    priority_level INTEGER,
    downtime_minutes INTEGER,
    compliance_check TEXT
);

INSERT INTO dimensional_portal_maintenance_log (log_id, portal_id, galaxy, sector, maintenance_type, scheduled_date, performed_date, technician_name, duration_hours, equipment_used, material_consumed, safety_status, energy_consumption, stability_rating, notes, created_at, updated_at, priority_level, downtime_minutes, compliance_check)
VALUES (3001, 'DP-AX12', 'Andromeda', 'SectorX', 'Calibration', '2025-04-01', '2025-04-02', 'TechRae', 5.5, 'CalibratorV2', 'LubricantX', 'Pass', 120.3, 9, 'All parameters within limits', '2025-04-01 06:00:00', '2025-04-02 12:00:00', 1, 30, 'Checked');

INSERT INTO dimensional_portal_maintenance_log (log_id, portal_id, galaxy, sector, maintenance_type, scheduled_date, performed_date, technician_name, duration_hours, equipment_used, material_consumed, safety_status, energy_consumption, stability_rating, notes, created_at, updated_at, priority_level, downtime_minutes, compliance_check)
VALUES (3002, 'DP-BR07', 'MilkyWay', 'SectorB', 'Repair', '2025-05-10', '2025-05-11', 'TechLuna', 8, 'WeldKit', 'AlloyPlate', 'Pass', 210.0, 7, 'Replaced fractured frame', '2025-05-10 08:30:00', '2025-05-11 15:45:00', 2, 45, 'Checked');

INSERT INTO dimensional_portal_maintenance_log (log_id, portal_id, galaxy, sector, maintenance_type, scheduled_date, performed_date, technician_name, duration_hours, equipment_used, material_consumed, safety_status, energy_consumption, stability_rating, notes, created_at, updated_at, priority_level, downtime_minutes, compliance_check)
VALUES (3003, 'DP-CT03', 'Triangulum', 'SectorC', 'Inspection', '2025-06-20', '2025-06-20', 'TechOrion', 3, 'ScannerPro', 'None', 'Pass', 75.2, 10, 'No issues detected', '2025-06-20 09:00:00', '2025-06-20 12:00:00', 3, 0, 'Checked');

-- Quantum energy distribution records
CREATE TABLE quantum_energy_distribution (
    distribution_id INTEGER PRIMARY KEY,
    grid_region TEXT,
    source_station TEXT,
    destination_station TEXT,
    energy_type TEXT,
    total_mwh NUMERIC,
    distribution_date DATE,
    operator_name TEXT,
    efficiency_percent NUMERIC,
    loss_mwh NUMERIC,
    capacity_limit_mwh NUMERIC,
    status TEXT,
    contract_id TEXT,
    tariff_rate NUMERIC,
    billing_cycle TEXT,
    notes TEXT,
    created_timestamp TIMESTAMP,
    updated_timestamp TIMESTAMP,
    priority_level INTEGER,
    verification_code TEXT
);

INSERT INTO quantum_energy_distribution (distribution_id, grid_region, source_station, destination_station, energy_type, total_mwh, distribution_date, operator_name, efficiency_percent, loss_mwh, capacity_limit_mwh, status, contract_id, tariff_rate, billing_cycle, notes, created_timestamp, updated_timestamp, priority_level, verification_code)
VALUES (4001, 'NorthSector', 'StationA1', 'StationB3', 'QuantumFlux', 15000, '2025-07-01', 'OpsTeamX', 96.5, 520, 20000, 'Active', 'CNT-5001', 0.12, 'Monthly', 'Stable flow', '2025-07-01 07:00:00', '2025-07-01 07:00:00', 1, 'VC-ABC123');

INSERT INTO quantum_energy_distribution (distribution_id, grid_region, source_station, destination_station, energy_type, total_mwh, distribution_date, operator_name, efficiency_percent, loss_mwh, capacity_limit_mwh, status, contract_id, tariff_rate, billing_cycle, notes, created_timestamp, updated_timestamp, priority_level, verification_code)
VALUES (4002, 'SouthSector', 'StationC2', 'StationD4', 'PhotonWave', 9000, '2025-07-15', 'OpsTeamY', 94.2, 340, 12000, 'Active', 'CNT-5002', 0.10, 'Quarterly', 'Minor fluctuations', '2025-07-15 09:30:00', '2025-07-15 09:30:00', 2, 'VC-DEF456');

INSERT INTO quantum_energy_distribution (distribution_id, grid_region, source_station, destination_station, energy_type, total_mwh, distribution_date, operator_name, efficiency_percent, loss_mwh, capacity_limit_mwh, status, contract_id, tariff_rate, billing_cycle, notes, created_timestamp, updated_timestamp, priority_level, verification_code)
VALUES (4003, 'EastSector', 'StationE5', 'StationF6', 'GravitonPulse', 12000, '2025-08-05', 'OpsTeamZ', 97.0, 360, 18000, 'Scheduled', 'CNT-5003', 0.13, 'Monthly', 'Preparing for load increase', '2025-08-05 06:45:00', '2025-08-05 06:45:00', 1, 'VC-GHI789');

-- Alien species habitat monitoring
CREATE TABLE alien_species_habitat_monitor (
    monitor_id INTEGER PRIMARY KEY,
    species_name TEXT,
    habitat_location TEXT,
    region_code TEXT,
    observation_date DATE,
    temperature_c NUMERIC,
    humidity_percent NUMERIC,
    atmospheric_composition TEXT,
    food_availability TEXT,
    predator_presence TEXT,
    population_estimate INTEGER,
    migration_pattern TEXT,
    health_index NUMERIC,
    human_interaction_level TEXT,
    protection_status TEXT,
    research_conducted_by TEXT,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    data_source TEXT
);

INSERT INTO alien_species_habitat_monitor (monitor_id, species_name, habitat_location, region_code, observation_date, temperature_c, humidity_percent, atmospheric_composition, food_availability, predator_presence, population_estimate, migration_pattern, health_index, human_interaction_level, protection_status, research_conducted_by, notes, created_at, updated_at, data_source)
VALUES (5001, 'Veloran', 'NebulaForest', 'NF-01', '2025-04-12', 22.5, 68, 'NitrogenOxygen', 'Abundant', 'Low', 3400, 'Seasonal', 87.3, 'None', 'Protected', 'InstituteX', 'Stable ecosystem', '2025-04-12 10:20:00', '2025-04-12 10:20:00', 'SatelliteA');

INSERT INTO alien_species_habitat_monitor (monitor_id, species_name, habitat_location, region_code, observation_date, temperature_c, humidity_percent, atmospheric_composition, food_availability, predator_presence, population_estimate, migration_pattern, health_index, human_interaction_level, protection_status, research_conducted_by, notes, created_at, updated_at, data_source)
VALUES (5002, 'Krell', 'CrystalCavern', 'CC-07', '2025-05-03', -15.0, 30, 'CarbonDioxide', 'Sparse', 'Medium', 1200, 'Nomadic', 65.0, 'Monitoring', 'Endangered', 'InstituteY', 'Temperature drop observed', '2025-05-03 14:05:00', '2025-05-03 14:05:00', 'DroneB');

INSERT INTO alien_species_habitat_monitor (monitor_id, species_name, habitat_location, region_code, observation_date, temperature_c, humidity_percent, atmospheric_composition, food_availability, predator_presence, population_estimate, migration_pattern, health_index, human_interaction_level, protection_status, research_conducted_by, notes, created_at, updated_at, data_source)
VALUES (5003, 'Xelari', 'OceanicTrench', 'OT-09', '2025-06-18', 4.2, 85, 'Methane', 'Rich', 'High', 5600, 'Yearly', 92.1, 'Limited', 'Protected', 'InstituteZ', 'No anomalies', '2025-06-18 08:40:00', '2025-06-18 08:40:00', 'SubmersibleC');

-- Meta-universe policy documents
CREATE TABLE meta_universe_policy_document (
    policy_id INTEGER PRIMARY KEY,
    title TEXT,
    version_number TEXT,
    effective_date DATE,
    expiration_date DATE,
    governing_body TEXT,
    policy_type TEXT,
    scope TEXT,
    summary TEXT,
    full_text TEXT,
    amendment_history TEXT,
    status TEXT,
    approval_date DATE,
    approved_by TEXT,
    review_cycle_months INTEGER,
    responsible_department TEXT,
    compliance_requirements TEXT,
    related_regulations TEXT,
    notes TEXT,
    created_timestamp TIMESTAMP,
    updated_timestamp TIMESTAMP
);

INSERT INTO meta_universe_policy_document (policy_id, title, version_number, effective_date, expiration_date, governing_body, policy_type, scope, summary, full_text, amendment_history, status, approval_date, approved_by, review_cycle_months, responsible_department, compliance_requirements, related_regulations, notes, created_timestamp, updated_timestamp)
VALUES (6001, 'Interdimensional Trade Regulation', 'v1.0', '2025-01-01', '2030-12-31', 'CouncilOfRealms', 'Trade', 'Universal', 'Sets standards for trade across dimensions', 'Full policy text here', 'None', 'Active', '2024-12-15', 'ChancellorAra', 12, 'TradeDept', 'Report quarterly', 'TradeAct2023', 'Initial release', '2025-01-01 09:00:00', '2025-01-01 09:00:00');

INSERT INTO meta_universe_policy_document (policy_id, title, version_number, effective_date, expiration_date, governing_body, policy_type, scope, summary, full_text, amendment_history, status, approval_date, approved_by, review_cycle_months, responsible_department, compliance_requirements, related_regulations, notes, created_timestamp, updated_timestamp)
VALUES (6002, 'Quantum Energy Usage Policy', 'v2.1', '2025-06-01', '2035-05-31', 'EnergyCommission', 'Energy', 'Galactic', 'Guidelines for quantum energy consumption', 'Full policy text here', 'Amendment2026', 'Active', '2025-05-20', 'DirectorQuark', 24, 'EnergyDept', 'Audit annually', 'EnergyAct2024', 'Revised for newer tech', '2025-06-01 10:30:00', '2025-06-01 10:30:00');

INSERT INTO meta_universe_policy_document (policy_id, title, version_number, effective_date, expiration_date, governing_body, policy_type, scope, summary, full_text, amendment_history, status, approval_date, approved_by, review_cycle_months, responsible_department, compliance_requirements, related_regulations, notes, created_timestamp, updated_timestamp)
VALUES (6003, 'Dimensional Portal Safety Standards', 'v3.0', '2025-09-15', '2030-09-14', 'SafetyCouncil', 'Safety', 'All sectors', 'Defines safety protocols for portal operation', 'Full policy text here', 'None', 'Draft', '2025-09-01', 'ChiefSafety', 6, 'SafetyDept', 'Incident report monthly', 'SafetyAct2022', 'Pending final review', '2025-09-15 08:45:00', '2025-09-15 08:45:00');

-- Starship logistics snapshot
CREATE TABLE starship_logistics_snapshot (
    snapshot_id INTEGER PRIMARY KEY,
    starship_name TEXT,
    fleet_id TEXT,
    snapshot_date DATE,
    cargo_weight_tons NUMERIC,
    passenger_count INTEGER,
    fuel_level_percent NUMERIC,
    destination_planet TEXT,
    estimated_arrival DATE,
    current_velocity_kmh NUMERIC,
    crew_onboard INTEGER,
    mission_status TEXT,
    maintenance_due DATE,
    last_docking_port TEXT,
    cargo_manifest TEXT,
    alerts TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    operational_status TEXT,
    severity_level INTEGER
);

INSERT INTO starship_logistics_snapshot (snapshot_id, starship_name, fleet_id, snapshot_date, cargo_weight_tons, passenger_count, fuel_level_percent, destination_planet, estimated_arrival, current_velocity_kmh, crew_onboard, mission_status, maintenance_due, last_docking_port, cargo_manifest, alerts, created_at, updated_at, operational_status, severity_level)
VALUES (7001, 'SS Aurora', 'FleetAlpha', '2025-07-20', 250.5, 120, 78.2, 'NovaPrime', '2025-08-15', 56000, 45, 'EnRoute', '2025-09-01', 'PortZeta', 'MedicalSupplies,FoodRations', 'None', '2025-07-20 12:00:00', '2025-07-20 12:00:00', 'Operational', 1);

INSERT INTO starship_logistics_snapshot (snapshot_id, starship_name, fleet_id, snapshot_date, cargo_weight_tons, passenger_count, fuel_level_percent, destination_planet, estimated_arrival, current_velocity_kmh, crew_onboard, mission_status, maintenance_due, last_docking_port, cargo_manifest, alerts, created_at, updated_at, operational_status, severity_level)
VALUES (7002, 'SS Vanguard', 'FleetBeta', '2025-07-22', 180.0, 80, 65.0, 'EpsilonStation', '2025-08-05', 48000, 38, 'Docked', '2025-08-20', 'PortGamma', 'EngineeringTools,SpareParts', 'EngineWarning', '2025-07-22 09:15:00', '2025-07-22 09:15:00', 'Standby', 2);

INSERT INTO starship_logistics_snapshot (snapshot_id, starship_name, fleet_id, snapshot_date, cargo_weight_tons, passenger_count, fuel_level_percent, destination_planet, estimated_arrival, current_velocity_kmh, crew_onboard, mission_status, maintenance_due, last_docking_port, cargo_manifest, alerts, created_at, updated_at, operational_status, severity_level)
VALUES (7003, 'SS Horizon', 'FleetGamma', '2025-07-25', 300.2, 150, 90.5, 'OmegaOutpost', '2025-08-20', 62000, 50, 'Cruising', '2025-09-10', 'PortDelta', 'ResearchEquipment,HabitatModules', 'RadiationAlert', '2025-07-25 14:40:00', '2025-07-25 14:40:00', 'Operational', 1);

-- Exoplanet climate records
CREATE TABLE exoplanet_climate_record (
    record_id INTEGER PRIMARY KEY,
    exoplanet_name TEXT,
    discovery_year INTEGER,
    orbital_period_days NUMERIC,
    star_system TEXT,
    avg_surface_temp_c NUMERIC,
    atmospheric_pressure_pas NUMERIC,
    weather_pattern TEXT,
    precipitation_mm NUMERIC,
    wind_speed_mps NUMERIC,
    seasonality TEXT,
    greenhouse_gas_concentration NUMERIC,
    albedo_percent NUMERIC,
    habitability_score INTEGER,
    detection_method TEXT,
    observation_date DATE,
    data_source TEXT,
    notes TEXT,
    created_on DATE,
    updated_on DATE
);

INSERT INTO exoplanet_climate_record (record_id, exoplanet_name, discovery_year, orbital_period_days, star_system, avg_surface_temp_c, atmospheric_pressure_pas, weather_pattern, precipitation_mm, wind_speed_mps, seasonality, greenhouse_gas_concentration, albedo_percent, habitability_score, detection_method, observation_date, data_source, notes, created_on, updated_on)
VALUES (8001, 'Kepler-442b', 2015, 112.3, 'Kepler-442', 15.2, 101325, 'Mild', 120.5, 5.6, 'Four', 0.04, 30, 78, 'Transit', '2025-04-10', 'SpaceTelescopeA', 'Potentially habitable', '2025-04-10', '2025-04-10');

INSERT INTO exoplanet_climate_record (record_id, exoplanet_name, discovery_year, orbital_period_days, star_system, avg_surface_temp_c, atmospheric_pressure_pas, weather_pattern, precipitation_mm, wind_speed_mps, seasonality, greenhouse_gas_concentration, albedo_percent, habitability_score, detection_method, observation_date, data_source, notes, created_on, updated_on)
VALUES (8002, 'Proxima Centauri b', 2016, 11.2, 'ProximaCentauri', -39.0, 95000, 'Harsh', 0.0, 12.3, 'Tidal', 0.12, 15, 22, 'RadialVelocity', '2025-05-12', 'SpaceProbeB', 'Extreme temperature variations', '2025-05-12', '2025-05-12');

INSERT INTO exoplanet_climate_record (record_id, exoplanet_name, discovery_year, orbital_period_days, star_system, avg_surface_temp_c, atmospheric_pressure_pas, weather_pattern, precipitation_mm, wind_speed_mps, seasonality, greenhouse_gas_concentration, albedo_percent, habitability_score, detection_method, observation_date, data_source, notes, created_on, updated_on)
VALUES (8003, 'TRAPPIST-1e', 2017, 6.1, 'TRAPPIST-1', 6.5, 110000, 'Cloudy', 80.0, 4.1, 'Three', 0.05, 35, 65, 'Transit', '2025-06-18', 'SpaceObservatoryC', 'Stable climate zones', '2025-06-18', '2025-06-18');

-- Nanotech component quality control
CREATE TABLE nanotech_component_quality_control (
    qc_id INTEGER PRIMARY KEY,
    component_id TEXT,
    batch_number TEXT,
    production_date DATE,
    tester_name TEXT,
    test_type TEXT,
    result_passed BOOLEAN,
    measurement_nm NUMERIC,
    defect_rate_percent NUMERIC,
    tolerance_range TEXT,
    equipment_used TEXT,
    operator_shift TEXT,
    temperature_c NUMERIC,
    humidity_percent NUMERIC,
    comments TEXT,
    approved_by TEXT,
    approval_date DATE,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    quality_score INTEGER
);

INSERT INTO nanotech_component_quality_control (qc_id, component_id, batch_number, production_date, tester_name, test_type, result_passed, measurement_nm, defect_rate_percent, tolerance_range, equipment_used, operator_shift, temperature_c, humidity_percent, comments, approved_by, approval_date, created_at, updated_at, quality_score)
VALUES (9001, 'NC-101', 'B-5001', '2025-03-01', 'TechAlia', 'DimensionalCheck', 1, 12.5, 0.02, '10-15', 'NanoScopeX', 'Night', 22.0, 45, 'All parameters within spec', 'SupervisorRex', '2025-03-02', '2025-03-02 08:00:00', '2025-03-02 08:00:00', 95);

INSERT INTO nanotech_component_quality_control (qc_id, component_id, batch_number, production_date, tester_name, test_type, result_passed, measurement_nm, defect_rate_percent, tolerance_range, equipment_used, operator_shift, temperature_c, humidity_percent, comments, approved_by, approval_date, created_at, updated_at, quality_score)
VALUES (9002, 'NC-202', 'B-5002', '2025-03-05', 'TechBryn', 'Conductivity', 0, 14.3, 0.15, '13-18', 'NanoMeterZ', 'Day', 24.5, 50, 'Slight variance observed', 'SupervisorLuna', '2025-03-06', '2025-03-06 09:30:00', '2025-03-06 09:30:00', 78);

INSERT INTO nanotech_component_quality_control (qc_id, component_id, batch_number, production_date, tester_name, test_type, result_passed, measurement_nm, defect_rate_percent, tolerance_range, equipment_used, operator_shift, temperature_c, humidity_percent, comments, approved_by, approval_date, created_at, updated_at, quality_score)
VALUES (9003, 'NC-303', 'B-5003', '2025-03-10', 'TechCade', 'StructuralIntegrity', 1, 11.8, 0.01, '9-14', 'NanoForceY', 'Night', 21.0, 48, 'Excellent performance', 'SupervisorZed', '2025-03-11', '2025-03-11 07:45:00', '2025-03-11 07:45:00', 99);