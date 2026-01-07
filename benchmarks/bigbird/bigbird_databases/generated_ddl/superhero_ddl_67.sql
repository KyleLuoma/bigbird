-- Exoplanet observation logs
CREATE TABLE exoplanet_observation_log
(
    id INTEGER PRIMARY KEY,
    observation_date TEXT,
    telescope_id INTEGER,
    exoplanet_name TEXT,
    stellar_system TEXT,
    distance_ly REAL,
    orbital_period_days REAL,
    mass_earths REAL,
    radius_earths REAL,
    equilibrium_temp_k REAL,
    discovery_method TEXT,
    signal_to_noise REAL,
    data_file_path TEXT,
    observer_name TEXT,
    observation_status TEXT,
    priority_level INTEGER,
    comments TEXT,
    exposure_time_seconds INTEGER,
    wavelength_nm REAL,
    spectral_type TEXT
);

INSERT INTO exoplanet_observation_log (id, observation_date, telescope_id, exoplanet_name, stellar_system, distance_ly, orbital_period_days, mass_earths, radius_earths, equilibrium_temp_k, discovery_method, signal_to_noise, data_file_path, observer_name, observation_status, priority_level, comments, exposure_time_seconds, wavelength_nm, spectral_type) VALUES (1, '2024-01-15', 101, 'Kepler442b', 'Kepler442', 1200.5, 112.3, 2.34, 1.21, 350, 'Transit', 45.6, '/data/obs1.fits', 'DrSmith', 'Complete', 2, 'High priority follow up', 3600, 550.5, 'G2');
INSERT INTO exoplanet_observation_log (id, observation_date, telescope_id, exoplanet_name, stellar_system, distance_ly, orbital_period_days, mass_earths, radius_earths, equilibrium_temp_k, discovery_method, signal_to_noise, data_file_path, observer_name, observation_status, priority_level, comments, exposure_time_seconds, wavelength_nm, spectral_type) VALUES (2, '2024-02-10', 102, 'ProximaCentauriB', 'ProximaCentauri', 4.24, 11.2, 1.27, 1.08, 260, 'RadialVelocity', 30.2, '/data/obs2.fits', 'DrLee', 'Pending', 1, 'Awaiting calibration', 2400, 620.0, 'M5');
INSERT INTO exoplanet_observation_log (id, observation_date, telescope_id, exoplanet_name, stellar_system, distance_ly, orbital_period_days, mass_earths, radius_earths, equilibrium_temp_k, discovery_method, signal_to_noise, data_file_path, observer_name, observation_status, priority_level, comments, exposure_time_seconds, wavelength_nm, spectral_type) VALUES (3, '2024-03-05', 103, 'TRAPPIST1e', 'TRAPPIST1', 39.5, 6.1, 0.62, 0.92, 251, 'Transit', 52.1, '/data/obs3.fits', 'DrKhan', 'Complete', 3, 'Data ready for analysis', 4200, 700.0, 'M8');

-- AI model training runs
CREATE TABLE ai_model_training_run
(
    run_id INTEGER PRIMARY KEY,
    model_name TEXT,
    version TEXT,
    training_dataset TEXT,
    start_time TEXT,
    end_time TEXT,
    epochs INTEGER,
    batch_size INTEGER,
    learning_rate REAL,
    optimizer TEXT,
    training_accuracy REAL,
    validation_accuracy REAL,
    loss_function TEXT,
    gpu_hours REAL,
    cpu_cores INTEGER,
    memory_gb REAL,
    data_augmentation TEXT,
    notes TEXT,
    hyperparameter_tuning TEXT,
    deployment_status TEXT
);

INSERT INTO ai_model_training_run (run_id, model_name, version, training_dataset, start_time, end_time, epochs, batch_size, learning_rate, optimizer, training_accuracy, validation_accuracy, loss_function, gpu_hours, cpu_cores, memory_gb, data_augmentation, notes, hyperparameter_tuning, deployment_status) VALUES (101, 'VisionNet', 'v1.2', 'ImageNet2023', '2024-01-01 08:00', '2024-01-03 14:30', 50, 128, 0.001, 'Adam', 0.94, 0.91, 'CrossEntropy', 120.5, 16, 64.0, 'FlipRotate', 'Baseline run', 'GridSearch', 'Staging');
INSERT INTO ai_model_training_run (run_id, model_name, version, training_dataset, start_time, end_time, epochs, batch_size, learning_rate, optimizer, training_accuracy, validation_accuracy, loss_function, gpu_hours, cpu_cores, memory_gb, data_augmentation, notes, hyperparameter_tuning, deployment_status) VALUES (102, 'LangModel', 'v3.0', 'ContentCorpus2024', '2024-02-10 09:15', '2024-02-20 17:45', 30, 64, 0.0005, 'AdamW', 0.88, 0.85, 'BCE', 250.0, 32, 128.0, 'Masking', 'Increased vocab', 'BayesianOpt', 'Production');
INSERT INTO ai_model_training_run (run_id, model_name, version, training_dataset, start_time, end_time, epochs, batch_size, learning_rate, optimizer, training_accuracy, validation_accuracy, loss_function, gpu_hours, cpu_cores, memory_gb, data_augmentation, notes, hyperparameter_tuning, deployment_status) VALUES (103, 'RecommenderX', 'v0.9', 'UserClicks2023', '2024-03-05 11:00', '2024-03-07 20:30', 40, 256, 0.002, 'RMSProp', 0.91, 0.89, 'MSE', 85.0, 12, 48.0, 'None', 'Preliminary', 'RandomSearch', 'Testing');

-- Galactic trade agreement details
CREATE TABLE galactic_trade_agreement_detail
(
    agreement_id INTEGER PRIMARY KEY,
    trade_route_id INTEGER,
    partner_faction TEXT,
    start_date TEXT,
    end_date TEXT,
    commodities TEXT,
    tariff_rate REAL,
    volume_limit REAL,
    special_clauses TEXT,
    approval_status TEXT,
    signed_by TEXT,
    document_hash TEXT,
    amendment_count INTEGER,
    renewal_option TEXT,
    dispute_resolution TEXT,
    governing_law TEXT,
    ledger_entry_id INTEGER,
    compliance_score REAL,
    last_review_date TEXT,
    notes TEXT
);

INSERT INTO galactic_trade_agreement_detail (agreement_id, trade_route_id, partner_faction, start_date, end_date, commodities, tariff_rate, volume_limit, special_clauses, approval_status, signed_by, document_hash, amendment_count, renewal_option, dispute_resolution, governing_law, ledger_entry_id, compliance_score, last_review_date, notes) VALUES (201, 301, 'ZoraxEmpire', '2120-05-01', '2220-05-01', 'Dilithium,Trillum', 2.5, 1000000, 'No weapons', 'Approved', 'EnvoyKara', 'AB12CD34EF56', 1, 'Automatic', 'Arbitration', 'ZoraxCode', 5001, 94.5, '2130-04-20', 'First term exchange');
INSERT INTO galactic_trade_agreement_detail (agreement_id, trade_route_id, partner_faction, start_date, end_date, commodities, tariff_rate, volume_limit, special_clauses, approval_status, signed_by, document_hash, amendment_count, renewal_option, dispute_resolution, governing_law, ledger_entry_id, compliance_score, last_review_date, notes) VALUES (202, 302, 'HeliosCollective', '2135-01-15', '2235-01-15', 'Helium3,QuantumDots', 1.8, 800000, 'Environmental safeguards', 'Pending', 'EnvoyMira', 'CD78EF90AB12', 0, 'Manual', 'Mediation', 'HeliosStatute', 5002, 88.0, '2140-12-01', 'Awaiting ratification');
INSERT INTO galactic_trade_agreement_detail (agreement_id, trade_route_id, partner_faction, start_date, end_date, commodities, tariff_rate, volume_limit, special_clauses, approval_status, signed_by, document_hash, amendment_count, renewal_option, dispute_resolution, governing_law, ledger_entry_id, compliance_score, last_review_date, notes) VALUES (203, 303, 'VaraSyndicate', '2145-07-20', '2245-07-20', 'RareMetals,Spice', 3.2, 500000, 'Strict embargo on tech', 'Approved', 'EnvoyJax', 'EF34AB56CD78', 2, 'Automatic', 'Legal', 'VaraCovenant', 5003, 91.3, '2155-06-10', 'Third amendment added');

-- Mythic artifact preservation records
CREATE TABLE mythic_artifact_preservation
(
    artifact_id INTEGER PRIMARY KEY,
    artifact_name TEXT,
    origin_culture TEXT,
    discovery_location TEXT,
    discovery_date TEXT,
    current_location TEXT,
    preservation_method TEXT,
    temperature_celsius REAL,
    humidity_percent REAL,
    light_exposure_lux INTEGER,
    handling_instructions TEXT,
    curator_name TEXT,
    insurance_value_usd REAL,
    condition_rating INTEGER,
    last_restoration_date TEXT,
    restoration_notes TEXT,
    exhibit_status TEXT,
    loan_status TEXT,
    accession_number TEXT,
    catalog_reference TEXT
);

INSERT INTO mythic_artifact_preservation (artifact_id, artifact_name, origin_culture, discovery_location, discovery_date, current_location, preservation_method, temperature_celsius, humidity_percent, light_exposure_lux, handling_instructions, curator_name, insurance_value_usd, condition_rating, last_restoration_date, restoration_notes, exhibit_status, loan_status, accession_number, catalog_reference) VALUES (301, 'Solar Scepter', 'Aetherian', 'Temple of Dawn', '2105-03-12', 'Vault A', 'ClimateControlled', 22.5, 45.0, 150, 'Gloves mandatory', 'DrHale', 2500000, 9, '2120-09-01', 'Replaced missing gem', 'OnDisplay', 'Available', 'ACC-001', 'CAT-Alpha');
INSERT INTO mythic_artifact_preservation (artifact_id, artifact_name, origin_culture, discovery_location, discovery_date, current_location, preservation_method, temperature_celsius, humidity_percent, light_exposure_lux, handling_instructions, curator_name, insurance_value_usd, condition_rating, last_restoration_date, restoration_notes, exhibit_status, loan_status, accession_number, catalog_reference) VALUES (302, 'Chrono Relic', 'Tempus', 'Lost City', '2098-11-23', 'Research Lab B', 'VacuumSeal', 18.0, 30.0, 0, 'No contact', 'DrMira', 1800000, 8, '2115-04-15', 'Stabilized temporal flux', 'InStorage', 'OnLoan', 'ACC-002', 'CAT-Beta');
INSERT INTO mythic_artifact_preservation (artifact_id, artifact_name, origin_culture, discovery_location, discovery_date, current_location, preservation_method, temperature_celsius, humidity_percent, light_exposure_lux, handling_instructions, curator_name, insurance_value_usd, condition_rating, last_restoration_date, restoration_notes, exhibit_status, loan_status, accession_number, catalog_reference) VALUES (303, 'Nebula Crown', 'Stellarian', 'Astral Crater', '2110-07-05', 'Exhibit Hall C', 'LowLight', 20.0, 50.0, 200, 'Handle with magnetic field', 'DrYuen', 3200000, 10, '2125-12-20', 'Polished outer facets', 'OnDisplay', 'Available', 'ACC-003', 'CAT-Gamma');

-- Renewable energy project fund allocations
CREATE TABLE renewable_energy_project_fund
(
    fund_id INTEGER PRIMARY KEY,
    project_name TEXT,
    fund_type TEXT,
    approval_date TEXT,
    allocated_amount_usd REAL,
    spent_amount_usd REAL,
    remaining_amount_usd REAL,
    lead_organization TEXT,
    project_manager TEXT,
    start_date TEXT,
    expected_completion_date TEXT,
    energy_type TEXT,
    capacity_mw REAL,
    region TEXT,
    environmental_impact_score REAL,
    compliance_status TEXT,
    reporting_period TEXT,
    audit_status TEXT,
    next_milestone_date TEXT,
    remarks TEXT
);

INSERT INTO renewable_energy_project_fund (fund_id, project_name, fund_type, approval_date, allocated_amount_usd, spent_amount_usd, remaining_amount_usd, lead_organization, project_manager, start_date, expected_completion_date, energy_type, capacity_mw, region, environmental_impact_score, compliance_status, reporting_period, audit_status, next_milestone_date, remarks) VALUES (401, 'SolarArrayAlpha', 'Grant', '2023-06-01', 50000000, 12000000, 38000000, 'SolarTech', 'AvaLiu', '2023-07-15', '2025-12-31', 'Solar', 250, 'NorthernSector', 85.4, 'Compliant', 'Q1-2024', 'Pending', '2024-09-30', 'On schedule');
INSERT INTO renewable_energy_project_fund (fund_id, project_name, fund_type, approval_date, allocated_amount_usd, spent_amount_usd, remaining_amount_usd, lead_organization, project_manager, start_date, expected_completion_date, energy_type, capacity_mw, region, environmental_impact_score, compliance_status, reporting_period, audit_status, next_milestone_date, remarks) VALUES (402, 'WindFarmBeta', 'Loan', '2022-11-20', 75000000, 30000000, 45000000, 'WindWorks', 'LiamCho', '2023-01-10', '2026-06-30', 'Wind', 400, 'CoastalRegion', 78.2, 'Compliant', 'Q4-2023', 'Approved', '2024-12-15', 'Phase 2 planning');
INSERT INTO renewable_energy_project_fund (fund_id, project_name, fund_type, approval_date, allocated_amount_usd, spent_amount_usd, remaining_amount_usd, lead_organization, project_manager, start_date, expected_completion_date, energy_type, capacity_mw, region, environmental_impact_score, compliance_status, reporting_period, audit_status, next_milestone_date, remarks) VALUES (403, 'HydroPulseDelta', 'Equity', '2024-02-05', 60000000, 15000000, 45000000, 'AquaPower', 'MiaZhang', '2024-03-01', '2028-09-30', 'Hydro', 350, 'RiverBasin', 82.0, 'Pending', 'Q2-2024', 'UnderReview', '2025-03-20', 'Land acquisition ongoing');

-- Nanobot deployment records
CREATE TABLE nanobot_deployment_record
(
    deployment_id INTEGER PRIMARY KEY,
    nanobot_batch_id TEXT,
    target_site TEXT,
    deployment_date TEXT,
    operator_name TEXT,
    quantity_deployed INTEGER,
    success_rate REAL,
    observation_notes TEXT,
    sensor_reading_avg REAL,
    temperature_celsius REAL,
    pressure_atm REAL,
    duration_minutes INTEGER,
    clearance_status TEXT,
    regulatory_approval TEXT,
    firmware_version TEXT,
    battery_life_hours REAL,
    maintenance_required BOOLEAN,
    followup_scheduled_date TEXT,
    incident_report_id INTEGER,
    comments TEXT
);

INSERT INTO nanobot_deployment_record (deployment_id, nanobot_batch_id, target_site, deployment_date, operator_name, quantity_deployed, success_rate, observation_notes, sensor_reading_avg, temperature_celsius, pressure_atm, duration_minutes, clearance_status, regulatory_approval, firmware_version, battery_life_hours, maintenance_required, followup_scheduled_date, incident_report_id, comments) VALUES (501, 'NB-AX12', 'Sector4_Mine', '2024-01-20', 'EngRosa', 12000, 96.5, 'Stable operation', 0.78, 22.1, 1.02, 180, 'Cleared', 'Approved', 'v3.5', 12.5, 0, '2024-04-01', 9001, 'No issues');
INSERT INTO nanobot_deployment_record (deployment_id, nanobot_batch_id, target_site, deployment_date, operator_name, quantity_deployed, success_rate, observation_notes, sensor_reading_avg, temperature_celsius, pressure_atm, duration_minutes, clearance_status, regulatory_approval, firmware_version, battery_life_hours, maintenance_required, followup_scheduled_date, incident_report_id, comments) VALUES (502, 'NB-BZ09', 'Lab_CleanRoom', '2024-02-15', 'TechJin', 8000, 89.2, 'Minor aggregation', 0.65, 20.0, 1.00, 240, 'Pending', 'UnderReview', 'v3.4', 10.0, 1, '2024-05-10', 9002, 'Firmware update required');
INSERT INTO nanobot_deployment_record (deployment_id, nanobot_batch_id, target_site, deployment_date, operator_name, quantity_deployed, success_rate, observation_notes, sensor_reading_avg, temperature_celsius, pressure_atm, duration_minutes, clearance_status, regulatory_approval, firmware_version, battery_life_hours, maintenance_required, followup_scheduled_date, incident_report_id, comments) VALUES (503, 'NB-CT07', 'OrbitalStation_Alpha', '2024-03-05', 'CmdLea', 15000, 98.0, 'Optimal dispersion', 0.82, 18.5, 0.98, 300, 'Cleared', 'Approved', 'v3.6', 14.0, 0, '2024-06-20', 9003, 'All systems nominal');

-- Interdimensional market analysis
CREATE TABLE interdimensional_market_analysis
(
    analysis_id INTEGER PRIMARY KEY,
    market_name TEXT,
    dimension_id INTEGER,
    start_period TEXT,
    end_period TEXT,
    total_volume_usd REAL,
    average_price_usd REAL,
    volatility_index REAL,
    top_trader TEXT,
    regulatory_environment TEXT,
    trade_barriers TEXT,
    currency_used TEXT,
    exchange_rate_to_usd REAL,
    market_sentiment TEXT,
    forecast_growth_percent REAL,
    data_source TEXT,
    analyst_name TEXT,
    report_version INTEGER,
    confidentiality_level TEXT,
    notes TEXT
);

INSERT INTO interdimensional_market_analysis (analysis_id, market_name, dimension_id, start_period, end_period, total_volume_usd, average_price_usd, volatility_index, top_trader, regulatory_environment, trade_barriers, currency_used, exchange_rate_to_usd, market_sentiment, forecast_growth_percent, data_source, analyst_name, report_version, confidentiality_level, notes) VALUES (601, 'ArcaneSpice', 11, '2120-01', '2120-12', 4500000, 120.5, 0.32, 'MageGuild', 'Loose', 'TariffFree', 'ArcaneCoin', 1.0, 'Bullish', 5.8, 'ChronicleDB', 'EldaRin', 1, 'Public', 'Stable market');
INSERT INTO interdimensional_market_analysis (analysis_id, market_name, dimension_id, start_period, end_period, total_volume_usd, average_price_usd, volatility_index, top_trader, regulatory_environment, trade_barriers, currency_used, exchange_rate_to_usd, market_sentiment, forecast_growth_percent, data_source, analyst_name, report_version, confidentiality_level, notes) VALUES (602, 'QuantumFlux', 9, '2121-Q1', '2121-Q4', 7800000, 250.0, 0.45, 'FluxCorp', 'Strict', 'ImportQuota', 'FluxToken', 0.85, 'Neutral', 3.2, 'QuantumLedger', 'TarnVex', 2, 'Confidential', 'Volatility rising');
INSERT INTO interdimensional_market_analysis (analysis_id, market_name, dimension_id, start_period, end_period, total_volume_usd, average_price_usd, volatility_index, top_trader, regulatory_environment, trade_barriers, currency_used, exchange_rate_to_usd, market_sentiment, forecast_growth_percent, data_source, analyst_name, report_version, confidentiality_level, notes) VALUES (603, 'StellarMetals', 15, '2122-01', '2122-06', 12000000, 340.7, 0.28, 'MetalMancers', 'Moderate', 'ExportTax', 'StarCredit', 1.12, 'Bullish', 6.5, 'GalacticExchange', 'RynKell', 1, 'Public', 'High demand projected');

-- Space mission logistics
CREATE TABLE space_mission_logistics
(
    mission_id INTEGER PRIMARY KEY,
    launch_vehicle TEXT,
    payload_name TEXT,
    payload_mass_kg REAL,
    destination_body TEXT,
    launch_date TEXT,
    launch_site TEXT,
    mission_director TEXT,
    contract_agency TEXT,
    fuel_type TEXT,
    fuel_quantity_kg REAL,
    crew_size INTEGER,
    support_staff INTEGER,
    mission_duration_days INTEGER,
    budget_usd REAL,
    risk_assessment_score REAL,
    contingency_plan TEXT,
    supply_vendor TEXT,
    delivery_schedule TEXT,
    post_mission_review TEXT
);

INSERT INTO space_mission_logistics (mission_id, launch_vehicle, payload_name, payload_mass_kg, destination_body, launch_date, launch_site, mission_director, contract_agency, fuel_type, fuel_quantity_kg, crew_size, support_staff, mission_duration_days, budget_usd, risk_assessment_score, contingency_plan, supply_vendor, delivery_schedule, post_mission_review) VALUES (701, 'AstraX', 'DeepSpaceProbe1', 7200, 'Kepler-62f', '2125-04-12', 'LunaLaunchPad', 'DrKhan', 'InterstellarAgency', 'LiquidHydrogen', 210000, 0, 45, 1095, 850000000, 4.7, 'RedundantSystems', 'NovaSupplyCo', 'JustInTime', 'Pending');
INSERT INTO space_mission_logistics (mission_id, launch_vehicle, payload_name, payload_mass_kg, destination_body, launch_date, launch_site, mission_director, contract_agency, fuel_type, fuel_quantity_kg, crew_size, support_staff, mission_duration_days, budget_usd, risk_assessment_score, contingency_plan, supply_vendor, delivery_schedule, post_mission_review) VALUES (702, 'StellarCarrier', 'HabitatModuleX', 15000, 'Mars', '2126-09-30', 'MarsBase', 'DrLiu', 'MarsColonizationDept', 'Methane', 340000, 12, 60, 730, 1200000000, 5.2, 'EscapePods', 'RedPlanetLogistics', 'Staggered', 'Completed');
INSERT INTO space_mission_logistics (mission_id, launch_vehicle, payload_name, payload_mass_kg, destination_body, launch_date, launch_site, mission_director, contract_agency, fuel_type, fuel_quantity_kg, crew_size, support_staff, mission_duration_days, budget_usd, risk_assessment_score, contingency_plan, supply_vendor, delivery_schedule, post_mission_review) VALUES (703, 'QuantumLift', 'AsteroidMiningUnit', 5400, 'Ceres', '2127-03-18', 'OrbitalDock', 'DrYen', 'AsteroidResourcesCorp', 'SolidFuel', 95000, 4, 30, 365, 600000000, 4.3, 'RemoteControlBackup', 'SpaceMineralsInc', 'Continuous', 'Pending');

-- Astrophysics publications
CREATE TABLE astrophysics_publication
(
    pub_id INTEGER PRIMARY KEY,
    title TEXT,
    journal TEXT,
    publication_date TEXT,
    doi TEXT,
    corresponding_author TEXT,
    author_list TEXT,
    abstract TEXT,
    keywords TEXT,
    citation_count INTEGER,
    impact_factor REAL,
    pages INTEGER,
    volume INTEGER,
    issue INTEGER,
    funding_agency TEXT,
    grant_number TEXT,
    dataset_url TEXT,
    code_repository TEXT,
    peer_review_status TEXT,
    notes TEXT
);

INSERT INTO astrophysics_publication (pub_id, title, journal, publication_date, doi, corresponding_author, author_list, abstract, keywords, citation_count, impact_factor, pages, volume, issue, funding_agency, grant_number, dataset_url, code_repository, peer_review_status, notes) VALUES (801, 'Dark Matter Distribution in Spiral Galaxies', 'Journal of Cosmology', '2123-07-10', '10.1234/jc.2023.001', 'DrAvery', 'Avery; Chen; Patel', 'Study of DM halos...', 'dark matter,spiral galaxies', 42, 9.5, 12, 45, 2, 'SpaceScienceFund', 'SSF-2022-07', 'http://data.space.org/dm2023', 'http://github.com/space/dmanalysis', 'Accepted', 'Open access');
INSERT INTO astrophysics_publication (pub_id, title, journal, publication_date, doi, corresponding_author, author_list, abstract, keywords, citation_count, impact_factor, pages, volume, issue, funding_agency, grant_number, dataset_url, code_repository, peer_review_status, notes) VALUES (802, 'Gravitational Wave Signatures from Binary Neutron Stars', 'Astrophysical Letters', '2124-01-22', '10.5678/al.2024.015', 'DrMona', 'Mona; Liu; Singh', 'Analysis of GW data...', 'gravitational waves,binary neutron stars', 55, 11.2, 8, 12, 1, 'NationalAstroGrant', 'NAG-2023-11', 'http://gwdata.org/obs2024', 'http://github.com/astro/gwanalysis', 'Published', 'Supplementary material uploaded');
INSERT INTO astrophysics_publication (pub_id, title, journal, publication_date, doi, corresponding_author, author_list, abstract, keywords, citation_count, impact_factor, pages, volume, issue, funding_agency, grant_number, dataset_url, code_repository, peer_review_status, notes) VALUES (803, 'Exoplanet Atmospheric Composition via Transmission Spectroscopy', 'Exoplanet Review', '2125-05-14', '10.9101/er.2025.030', 'DrKato', 'Kato; Alvarez; Zhou', 'Spectroscopic survey results...', 'exoplanets,atmosphere,spectroscopy', 30, 8.7, 15, 7, 3, 'PlanetaryScienceCouncil', 'PSC-2024-03', 'http://exodata.org/2025', 'http://github.com/exoplanet/analysis', 'Under Review', 'Preprint available');

-- Planetary climate modeling
CREATE TABLE planetary_climate_model
(
    model_id INTEGER PRIMARY KEY,
    planet_name TEXT,
    model_version TEXT,
    simulation_start_year INTEGER,
    simulation_end_year INTEGER,
    grid_resolution_km REAL,
    atmospheric_composition TEXT,
    greenhouse_gas_concentration_ppm REAL,
    solar_constant_w_m2 REAL,
    albedo REAL,
    surface_pressure_pa REAL,
    ocean_coverage_percent REAL,
    ice_coverage_percent REAL,
    run_time_hours REAL,
    output_data_path TEXT,
    validation_metric REAL,
    calibration_status TEXT,
    responsible_scientist TEXT,
    version_release_date TEXT,
    comments TEXT
);

INSERT INTO planetary_climate_model (model_id, planet_name, model_version, simulation_start_year, simulation_end_year, grid_resolution_km, atmospheric_composition, greenhouse_gas_concentration_ppm, solar_constant_w_m2, albedo, surface_pressure_pa, ocean_coverage_percent, ice_coverage_percent, run_time_hours, output_data_path, validation_metric, calibration_status, responsible_scientist, version_release_date, comments) VALUES (901, 'Terra', 'v2.1', 2020, 2100, 25.0, 'N2O2CO2', 415.0, 1361.0, 0.30, 101325, 71.0, 15.0, 480.5, '/models/terra_v2_1/output', 0.92, 'Calibrated', 'DrEllen', '2123-06-01', 'Baseline scenario');
INSERT INTO planetary_climate_model (model_id, planet_name, model_version, simulation_start_year, simulation_end_year, grid_resolution_km, atmospheric_composition, greenhouse_gas_concentration_ppm, solar_constant_w_m2, albedo, surface_pressure_pa, ocean_coverage_percent, ice_coverage_percent, run_time_hours, output_data_path, validation_metric, calibration_status, responsible_scientist, version_release_date, comments) VALUES (902, 'Kepler-442b', 'v1.0', 2100, 2300, 10.0, 'CO2N2', 800.0, 1400.0, 0.25, 95000, 65.0, 20.0, 720.0, '/models/k442b_v1/output', 0.85, 'Partial', 'DrRossi', '2125-01-15', 'High greenhouse scenario');
INSERT INTO planetary_climate_model (model_id, planet_name, model_version, simulation_start_year, simulation_end_year, grid_resolution_km, atmospheric_composition, greenhouse_gas_concentration_ppm, solar_constant_w_m2, albedo, surface_pressure_pa, ocean_coverage_percent, ice_coverage_percent, run_time_hours, output_data_path, validation_metric, calibration_status, responsible_scientist, version_release_date, comments) VALUES (903, 'ProximaCentauriB', 'v3.3', 2050, 2150, 15.0, 'CO2N2O', 1200.0, 1500.0, 0.28, 120000, 50.0, 30.0, 600.0, '/models/prox_b_v3_3/output', 0.78, 'Uncalibrated', 'DrMira', '2126-09-10', 'Extreme greenhouse case');