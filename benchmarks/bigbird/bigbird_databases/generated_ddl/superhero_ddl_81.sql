-- Planetary mining site information
CREATE TABLE planetary_mining_site
(
    id                         INTEGER PRIMARY KEY,
    site_name                  TEXT,
    planet_name                TEXT,
    region                     TEXT,
    latitude                   REAL,
    longitude                  REAL,
    resource_type              TEXT,
    estimated_reserves         INTEGER,
    operating_company          TEXT,
    start_date                 DATE,
    end_date                   DATE,
    status                     TEXT,
    workforce_size             INTEGER,
    equipment_count            INTEGER,
    annual_production          INTEGER,
    environmental_impact_score INTEGER,
    safety_incident_count     INTEGER,
    regulatory_approval        BOOLEAN,
    last_inspection_date       DATE,
    contact_email              TEXT,
    contact_phone              TEXT
);

INSERT INTO planetary_mining_site (id, site_name, planet_name, region, latitude, longitude, resource_type, estimated_reserves, operating_company, start_date, end_date, status, workforce_size, equipment_count, annual_production, environmental_impact_score, safety_incident_count, regulatory_approval, last_inspection_date, contact_email, contact_phone)
VALUES (1, 'Aquila Mine', 'Xenon', 'Northern Basin', -12.34, 45.67, 'Titanium', 5000000, 'Nova Extractors', '2022-03-01', NULL, 'Active', 250, 120, 300000, 78, 2, TRUE, '2024-01-15', 'contact@novaxtract.com', '+1234567890');

INSERT INTO planetary_mining_site (id, site_name, planet_name, region, latitude, longitude, resource_type, estimated_reserves, operating_company, start_date, end_date, status, workforce_size, equipment_count, annual_production, environmental_impact_score, safety_incident_count, regulatory_approval, last_inspection_date, contact_email, contact_phone)
VALUES (2, 'Orion Quarry', 'Vesper', 'Southern Ridge', 23.45, -67.89, 'Uranium', 2000000, 'Stellar Mining Co', '2020-07-15', '2030-07-15', 'Planned', 0, 0, 0, 0, 0, FALSE, NULL, 'info@stellarmining.com', '+1987654321');

INSERT INTO planetary_mining_site (id, site_name, planet_name, region, latitude, longitude, resource_type, estimated_reserves, operating_company, start_date, end_date, status, workforce_size, equipment_count, annual_production, environmental_impact_score, safety_incident_count, regulatory_approval, last_inspection_date, contact_email, contact_phone)
VALUES (3, 'Helios Dig Site', 'Aurelia', 'Equatorial Plains', 5.67, 12.34, 'Gold', 750000, 'Galactic Resources', '2024-01-01', NULL, 'Active', 180, 95, 120000, 65, 1, TRUE, '2024-06-10', 'helio@gresources.com', '+1122334455');

-- Quantum energy allocation records
CREATE TABLE quantum_energy_allocation
(
    id                         INTEGER PRIMARY KEY,
    allocation_name            TEXT,
    allocation_year            INTEGER,
    total_energy_mw            INTEGER,
    source_type                TEXT,
    region                     TEXT,
    project_lead               TEXT,
    department                 TEXT,
    approval_status            TEXT,
    allocation_date            DATE,
    expiry_date                DATE,
    budget_usd                 INTEGER,
    notes                      TEXT,
    allocation_percentage      REAL,
    grid_connection_status     TEXT,
    priority_level             INTEGER,
    review_cycle_months        INTEGER,
    last_review_date           DATE,
    risk_assessment_score      INTEGER,
    compliance_flag            BOOLEAN,
    contact_person             TEXT
);

INSERT INTO quantum_energy_allocation (id, allocation_name, allocation_year, total_energy_mw, source_type, region, project_lead, department, approval_status, allocation_date, expiry_date, budget_usd, notes, allocation_percentage, grid_connection_status, priority_level, review_cycle_months, last_review_date, risk_assessment_score, compliance_flag, contact_person)
VALUES (1, 'Q-Alpha', 2023, 1500, 'Fusion', 'Sector 7', 'Dr Selene', 'Energy Research', 'Approved', '2023-02-01', '2028-02-01', 50000000, 'Initial rollout', 100.0, 'Connected', 1, 12, '2024-01-20', 5, TRUE, 'Kara Dane');

INSERT INTO quantum_energy_allocation (id, allocation_name, allocation_year, total_energy_mw, source_type, region, project_lead, department, approval_status, allocation_date, expiry_date, budget_usd, notes, allocation_percentage, grid_connection_status, priority_level, review_cycle_months, last_review_date, risk_assessment_score, compliance_flag, contact_person)
VALUES (2, 'Q-Beta', 2024, 800, 'ZeroPoint', 'Sector 3', 'Dr Milo', 'Advanced Physics', 'Pending', '2024-05-10', '2029-05-10', 30000000, 'Awaiting clearance', 80.0, 'Pending', 2, 6, NULL, 7, FALSE, 'Lena Ortiz');

INSERT INTO quantum_energy_allocation (id, allocation_name, allocation_year, total_energy_mw, source_type, region, project_lead, department, approval_status, allocation_date, expiry_date, budget_usd, notes, allocation_percentage, grid_connection_status, priority_level, review_cycle_months, last_review_date, risk_assessment_score, compliance_flag, contact_person)
VALUES (3, 'Q-Gamma', 2025, 1200, 'Particle', 'Sector 9', 'Dr Arun', 'Quantum Ops', 'Approved', '2025-01-15', '2030-01-15', 40000000, 'Second phase', 90.0, 'Connected', 1, 12, '2025-02-01', 4, TRUE, 'Mira Chen');

-- Galactic trade route metrics
CREATE TABLE galactic_trade_route_metric
(
    id                         INTEGER PRIMARY KEY,
    route_id                   INTEGER,
    metric_name                TEXT,
    metric_value               REAL,
    measurement_unit           TEXT,
    recorded_at                DATE,
    source_system              TEXT,
    confidence_score           INTEGER,
    notes                      TEXT,
    analyst                    TEXT,
    verification_status        TEXT,
    period_start               DATE,
    period_end                 DATE,
    average_speed              REAL,
    cargo_volume               INTEGER,
    traffic_density            REAL,
    incident_count             INTEGER,
    regulation_compliance      BOOLEAN,
    update_timestamp           DATE,
    data_quality_score         INTEGER
);

INSERT INTO galactic_trade_route_metric (id, route_id, metric_name, metric_value, measurement_unit, recorded_at, source_system, confidence_score, notes, analyst, verification_status, period_start, period_end, average_speed, cargo_volume, traffic_density, incident_count, regulation_compliance, update_timestamp, data_quality_score)
VALUES (1, 101, 'Throughput', 54000, 'TEU', '2024-03-12', 'RouteMonitorX', 92, 'Stable growth', 'Ana V', 'Verified', '2024-01-01', '2024-03-31', 15000.5, 320000, 0.78, 2, TRUE, '2024-04-01', 88);

INSERT INTO galactic_trade_route_metric (id, route_id, metric_name, metric_value, measurement_unit, recorded_at, source_system, confidence_score, notes, analyst, verification_status, period_start, period_end, average_speed, cargo_volume, traffic_density, incident_count, regulation_compliance, update_timestamp, data_quality_score)
VALUES (2, 102, 'DelayRate', 3.5, 'Percent', '2024-03-15', 'NavSys', 85, 'Minor congestion', 'Ben K', 'Pending', '2024-01-01', '2024-03-31', 12000.0, 210000, 0.65, 5, FALSE, '2024-04-02', 73);

INSERT INTO galactic_trade_route_metric (id, route_id, metric_name, metric_value, measurement_unit, recorded_at, source_system, confidence_score, notes, analyst, verification_status, period_start, period_end, average_speed, cargo_volume, traffic_density, incident_count, regulation_compliance, update_timestamp, data_quality_score)
VALUES (3, 103, 'EnergyConsumption', 7800, 'MWhr', '2024-03-18', 'EcoTrack', 90, 'Within limits', 'Cara L', 'Verified', '2024-01-01', '2024-03-31', 14000.2, 275000, 0.70, 1, TRUE, '2024-04-03', 91);

-- Meta‑universe event log
CREATE TABLE meta_universe_event_log
(
    id                         INTEGER PRIMARY KEY,
    event_uuid                 TEXT,
    event_type                 TEXT,
    description                TEXT,
    originated_at              DATE,
    resolved_at                DATE,
    severity_level             INTEGER,
    involved_entities          TEXT,
    impact_score               INTEGER,
    status                     TEXT,
    reporter                   TEXT,
    assigned_to                TEXT,
    resolution_notes           TEXT,
    escalation_level           INTEGER,
    audit_timestamp            DATE,
    source_module              TEXT,
    priority                   INTEGER,
    mitigation_plan            TEXT,
    followup_required          BOOLEAN,
    compliance_status          TEXT
);

INSERT INTO meta_universe_event_log (id, event_uuid, event_type, description, originated_at, resolved_at, severity_level, involved_entities, impact_score, status, reporter, assigned_to, resolution_notes, escalation_level, audit_timestamp, source_module, priority, mitigation_plan, followup_required, compliance_status)
VALUES (1, 'EVT-001', 'Anomaly', 'Temporal distortion detected', '2024-02-10', NULL, 4, 'Chrono Council', 85, 'Open', 'Liam S', 'Dr Nova', '', 2, '2024-02-15', 'TimeSync', 1, 'Deploy stabilizer', TRUE, 'Pending');

INSERT INTO meta_universe_event_log (id, event_uuid, event_type, description, originated_at, resolved_at, severity_level, involved_entities, impact_score, status, reporter, assigned_to, resolution_notes, escalation_level, audit_timestamp, source_module, priority, mitigation_plan, followup_required, compliance_status)
VALUES (2, 'EVT-002', 'Security', 'Unauthorized access to FTL gateway', '2024-01-22', '2024-01-23', 5, 'GateOps Unit', 95, 'Closed', 'Mara K', 'Sec Chief', 'Patch applied', 3, '2024-01-24', 'GateControl', 1, 'Upgrade firewall', FALSE, 'Compliant');

INSERT INTO meta_universe_event_log (id, event_uuid, event_type, description, originated_at, resolved_at, severity_level, involved_entities, impact_score, status, reporter, assigned_to, resolution_notes, escalation_level, audit_timestamp, source_module, priority, mitigation_plan, followup_required, compliance_status)
VALUES (3, 'EVT-003', 'Maintenance', 'Routine calibration of quantum sensors', '2024-03-05', '2024-03-05', 2, 'Quantum Lab', 30, 'Completed', 'Jin P', 'Tech Lead', 'Calibration successful', 1, '2024-03-06', 'SensorNet', 3, 'Schedule next quarterly', FALSE, 'Compliant');

-- Nanotech research facility directory
CREATE TABLE nanotech_research_facility
(
    id                         INTEGER PRIMARY KEY,
    facility_name              TEXT,
    location_city              TEXT,
    location_country           TEXT,
    established_year           INTEGER,
    floor_area_sqm             INTEGER,
    nanotech_focus_area        TEXT,
    number_of_labs            INTEGER,
    total_staff                INTEGER,
    chief_scientist           TEXT,
    safety_certification       TEXT,
    operating_budget_usd       INTEGER,
    active_projects            INTEGER,
    collaborations_count       INTEGER,
    iso_certification          BOOLEAN,
    waste_treatment_capacity   INTEGER,
    max_nanoparticle_size_nm  REAL,
    equipment_inventory        TEXT,
    last_accreditation_date    DATE,
    contact_phone              TEXT
);

INSERT INTO nanotech_research_facility (id, facility_name, location_city, location_country, established_year, floor_area_sqm, nanotech_focus_area, number_of_labs, total_staff, chief_scientist, safety_certification, operating_budget_usd, active_projects, collaborations_count, iso_certification, waste_treatment_capacity, max_nanoparticle_size_nm, equipment_inventory, last_accreditation_date, contact_phone)
VALUES (1, 'NanoCore Lab', 'Arcadia', 'Euronia', 2015, 3400, 'Medical Nanobots', 12, 85, 'Dr Elaine', 'Level 3', 18000000, 7, 14, TRUE, 500, 150.5, 'Electron Microscopes; NanoAssemblers', '2023-11-20', '+447700112233');

INSERT INTO nanotech_research_facility (id, facility_name, location_city, location_country, established_year, floor_area_sqm, nanotech_focus_area, number_of_labs, total_staff, chief_scientist, safety_certification, operating_budget_usd, active_projects, collaborations_count, iso_certification, waste_treatment_capacity, max_nanoparticle_size_nm, equipment_inventory, last_accreditation_date, contact_phone)
VALUES (2, 'Quantum Nano Institute', 'Vespera', 'Andara', 2018, 4200, 'Energy Harvesting', 15, 110, 'Prof Kiran', 'Level 4', 25000000, 9, 20, TRUE, 650, 200.0, 'Plasma Chambers; NanoFabricators', '2024-02-10', '+33123456789');

INSERT INTO nanotech_research_facility (id, facility_name, location_city, location_country, established_year, floor_area_sqm, nanotech_focus_area, number_of_labs, total_staff, chief_scientist, safety_certification, operating_budget_usd, active_projects, collaborations_count, iso_certification, waste_treatment_capacity, max_nanoparticle_size_nm, equipment_inventory, last_accreditation_date, contact_phone)
VALUES (3, 'PicoTech Center', 'Lumin', 'Novara', 2020, 2800, 'Catalytic Nanostructures', 9, 60, 'Dr Sora', 'Level 2', 12000000, 4, 8, FALSE, 300, 80.3, 'Laser Etchers; NanoCVD Units', '2023-09-05', '+61234567890');

-- Hero legacy rights registry
CREATE TABLE hero_legacy_rights_registry
(
    id                         INTEGER PRIMARY KEY,
    hero_id                    INTEGER,
    rights_type                TEXT,
    region                     TEXT,
    start_date                 DATE,
    end_date                   DATE,
    licensee                   TEXT,
    royalty_percentage         REAL,
    contract_value_usd         INTEGER,
    exclusive                  BOOLEAN,
    renewal_option             BOOLEAN,
    legal_status               TEXT,
    notes                      TEXT,
    governing_body             TEXT,
    registration_timestamp     DATE,
    expiration_timestamp       DATE,
    compliance_audit_date      DATE,
    audit_result               TEXT,
    dispute_count              INTEGER,
    dispute_resolution         TEXT
);

INSERT INTO hero_legacy_rights_registry (id, hero_id, rights_type, region, start_date, end_date, licensee, royalty_percentage, contract_value_usd, exclusive, renewal_option, legal_status, notes, governing_body, registration_timestamp, expiration_timestamp, compliance_audit_date, audit_result, dispute_count, dispute_resolution)
VALUES (1, 101, 'Image Use', 'North America', '2022-05-01', '2027-05-01', 'Global Media Corp', 7.5, 3500000, TRUE, TRUE, 'Active', 'First contract for movie rights', 'Hero Rights Council', '2022-04-20', '2027-04-20', '2023-06-15', 'Pass', 0, 'None');

INSERT INTO hero_legacy_rights_registry (id, hero_id, rights_type, region, start_date, end_date, licensee, royalty_percentage, contract_value_usd, exclusive, renewal_option, legal_status, notes, governing_body, registration_timestamp, expiration_timestamp, compliance_audit_date, audit_result, dispute_count, dispute_resolution)
VALUES (2, 102, 'Merchandise', 'Europe', '2021-01-10', '2026-01-10', 'EuroToy Ltd', 5.0, 2100000, FALSE, TRUE, 'Active', 'Action figure line', 'Hero Rights Council', '2020-12-01', '2026-12-01', '2022-11-20', 'Pass', 1, 'Mediated');

INSERT INTO hero_legacy_rights_registry (id, hero_id, rights_type, region, start_date, end_date, licensee, royalty_percentage, contract_value_usd, exclusive, renewal_option, legal_status, notes, governing_body, registration_timestamp, expiration_timestamp, compliance_audit_date, audit_result, dispute_count, dispute_resolution)
VALUES (3, 103, 'Video Game', 'Asia Pacific', '2023-03-15', '2028-03-15', 'PlaySphere Studios', 8.0, 4800000, TRUE, FALSE, 'Pending', 'Negotiations ongoing', 'Hero Rights Council', '2023-02-28', '2028-02-28', NULL, NULL, 0, NULL);

-- Cosmic radiation monitoring station data
CREATE TABLE cosmic_radiation_monitoring_station
(
    id                         INTEGER PRIMARY KEY,
    station_name               TEXT,
    orbit_type                 TEXT,
    altitude_km                REAL,
    latitude                   REAL,
    longitude                  REAL,
    detector_type              TEXT,
    sensitivity_level          INTEGER,
    daily_dose_msv             REAL,
    operational_status         TEXT,
    last_calibration           DATE,
    maintenance_cycle_days     INTEGER,
    power_source               TEXT,
    data_transmission_rate_mbps REAL,
    firmware_version           TEXT,
    backup_system_present      BOOLEAN,
    operator_agency            TEXT,
    installation_date          DATE,
    decommission_date          DATE,
    notes                      TEXT
);

INSERT INTO cosmic_radiation_monitoring_station (id, station_name, orbit_type, altitude_km, latitude, longitude, detector_type, sensitivity_level, daily_dose_msv, operational_status, last_calibration, maintenance_cycle_days, power_source, data_transmission_rate_mbps, firmware_version, backup_system_present, operator_agency, installation_date, decommission_date, notes)
VALUES (1, 'Helios-3', 'Geostationary', 35786, 0.0, 0.0, 'Scintillation', 9, 0.12, 'Active', '2024-01-10', 180, 'Solar', 250.5, 'v3.2.1', TRUE, 'Space Agency X', '2020-06-15', NULL, 'Monitoring solar flare radiation');

INSERT INTO cosmic_radiation_monitoring_station (id, station_name, orbit_type, altitude_km, latitude, longitude, detector_type, sensitivity_level, daily_dose_msv, operational_status, last_calibration, maintenance_cycle_days, power_source, data_transmission_rate_mbps, firmware_version, backup_system_present, operator_agency, installation_date, decommission_date, notes)
VALUES (2, 'Nebula-7', 'Low Earth', 550, 45.2, -120.5, 'Geiger-Muller', 7, 0.08, 'Active', '2023-11-05', 365, 'Battery', 120.0, 'v2.8.4', FALSE, 'Astro Research Corp', '2019-03-22', NULL, 'Focused on cosmic background radiation');

INSERT INTO cosmic_radiation_monitoring_station (id, station_name, orbit_type, altitude_km, latitude, longitude, detector_type, sensitivity_level, daily_dose_msv, operational_status, last_calibration, maintenance_cycle_days, power_source, data_transmission_rate_mbps, firmware_version, backup_system_present, operator_agency, installation_date, decommission_date, notes)
VALUES (3, 'Vortex-1', 'Polar', 800, -78.4, 15.3, 'Semiconductor', 8, 0.10, 'Maintenance', '2022-07-19', 730, 'Nuclear', 300.0, 'v1.5.0', TRUE, 'International Space Union', '2015-09-10', '2026-09-10', 'Scheduled for deorbit');

-- Alien cultural exchange program records
CREATE TABLE alien_cultural_exchange_program
(
    id                         INTEGER PRIMARY KEY,
    program_name               TEXT,
    host_planet                TEXT,
    partner_species            TEXT,
    exchange_start_date        DATE,
    exchange_end_date          DATE,
    number_of_participants    INTEGER,
    focus_theme                TEXT,
    funding_source             TEXT,
    total_budget_usd           INTEGER,
    coordinator                TEXT,
    status                     TEXT,
    outcomes_summary           TEXT,
    publications_count         INTEGER,
    media_coverage_level       INTEGER,
    followup_actions           TEXT,
    evaluation_score           INTEGER,
    risk_level                 INTEGER,
    compliance_requirements    TEXT,
    last_review_date           DATE
);

INSERT INTO alien_cultural_exchange_program (id, program_name, host_planet, partner_species, exchange_start_date, exchange_end_date, number_of_participants, focus_theme, funding_source, total_budget_usd, coordinator, status, outcomes_summary, publications_count, media_coverage_level, followup_actions, evaluation_score, risk_level, compliance_requirements, last_review_date)
VALUES (1, 'Starlight Dialogues', 'Luminara', 'Vortans', '2023-04-01', '2023-09-30', 120, 'Artistic Collaboration', 'Galactic Council', 8000000, 'Mira Tal', 'Completed', 'Joint art installations displayed', 5, 3, 'Plan follow‑up exhibit', 88, 2, 'Standard Protocol', '2023-10-15');

INSERT INTO alien_cultural_exchange_program (id, program_name, host_planet, partner_species, exchange_start_date, exchange_end_date, number_of_participants, focus_theme, funding_source, total_budget_usd, coordinator, status, outcomes_summary, publications_count, media_coverage_level, followup_actions, evaluation_score, risk_level, compliance_requirements, last_review_date)
VALUES (2, 'Quantum Horizons', 'Zenith', 'Quorans', '2024-01-15', '2024-07-15', 95, 'Scientific Research', 'Interstellar Science Fund', 12000000, 'Dr Kellan', 'Ongoing', 'Joint paper on quantum entanglement', 2, 4, 'Prepare joint conference', 92, 1, 'Ethics Review Required', '2024-08-01');

INSERT INTO alien_cultural_exchange_program (id, program_name, host_planet, partner_species, exchange_start_date, exchange_end_date, number_of_participants, focus_theme, funding_source, total_budget_usd, coordinator, status, outcomes_summary, publications_count, media_coverage_level, followup_actions, evaluation_score, risk_level, compliance_requirements, last_review_date)
VALUES (3, 'Harmony Festival', 'Eldoria', 'Sylphids', '2022-06-10', '2022-12-10', 150, 'Music and Dance', 'Cultural Heritage Alliance', 5000000, 'Lena R', 'Completed', 'Recorded album released', 3, 5, 'Tour across member worlds', 85, 3, 'Cultural Exchange Agreement', '2023-01-05');

-- Renewable energy investment fund details
CREATE TABLE renewable_energy_investment_fund
(
    id                         INTEGER PRIMARY KEY,
    fund_name                  TEXT,
    inception_year             INTEGER,
    total_committed_usd        INTEGER,
    investment_focus           TEXT,
    geographic_scope           TEXT,
    manager_name               TEXT,
    management_fee_percent     REAL,
    performance_fee_percent    REAL,
    net_asset_value_usd        INTEGER,
    number_of_portfolios       INTEGER,
    average_holding_period_years REAL,
    ESG_rating                 TEXT,
    compliance_status          TEXT,
    last_audit_date            DATE,
    next_closure_date          DATE,
    minimum_investment_usd     INTEGER,
    currency                   TEXT,
    reporting_frequency        TEXT,
    notes                      TEXT
);

INSERT INTO renewable_energy_investment_fund (id, fund_name, inception_year, total_committed_usd, investment_focus, geographic_scope, manager_name, management_fee_percent, performance_fee_percent, net_asset_value_usd, number_of_portfolios, average_holding_period_years, ESG_rating, compliance_status, last_audit_date, next_closure_date, minimum_investment_usd, currency, reporting_frequency, notes)
VALUES (1, 'SolarFuture Fund', 2018, 250000000, 'Solar Power Plants', 'Global', 'Ana Vega', 1.2, 10.0, 190000000, 12, 5.4, 'AA', 'Compliant', '2023-12-01', '2028-12-01', 500000, 'USD', 'Quarterly', 'Focus on emerging markets');

INSERT INTO renewable_energy_investment_fund (id, fund_name, inception_year, total_committed_usd, investment_focus, geographic_scope, manager_name, management_fee_percent, performance_fee_percent, net_asset_value_usd, number_of_portfolios, average_holding_period_years, ESG_rating, compliance_status, last_audit_date, next_closure_date, minimum_investment_usd, currency, reporting_frequency, notes)
VALUES (2, 'WindGrowth Capital', 2020, 180000000, 'Offshore Wind', 'North Atlantic', 'Marco Liu', 1.0, 9.5, 150000000, 8, 4.2, 'A+', 'Compliant', '2024-06-15', '2029-06-15', 300000, 'USD', 'Semi‑Annual', 'Partnership with coastal municipalities');

INSERT INTO renewable_energy_investment_fund (id, fund_name, inception_year, total_committed_usd, investment_focus, geographic_scope, manager_name, management_fee_percent, performance_fee_percent, net_asset_value_usd, number_of_portfolios, average_holding_period_years, ESG_rating, compliance_status, last_audit_date, next_closure_date, minimum_investment_usd, currency, reporting_frequency, notes)
VALUES (3, 'HydroNova Trust', 2016, 320000000, 'Hydropower Dams', 'South America', 'Rita Gomez', 1.5, 12.0, 280000000, 15, 6.1, 'AAA', 'Compliant', '2023-03-20', '2028-03-20', 750000, 'USD', 'Annual', 'Emphasis on low‑impact designs');

-- Interdimensional gateway operation log
CREATE TABLE interdimensional_gateway_operation
(
    id                         INTEGER PRIMARY KEY,
    gateway_id                 TEXT,
    dimension_target           TEXT,
    activation_date            DATE,
    deactivation_date          DATE,
    operator                   TEXT,
    security_level             INTEGER,
    power_consumption_mw       INTEGER,
    status                     TEXT,
    maintenance_schedule       TEXT,
    last_maintenance           DATE,
    throughput_capacity        INTEGER,
    error_rate_percent         REAL,
    protocol_version           TEXT,
    access_control_list        TEXT,
    audit_timestamp            DATE,
    compliance_status          TEXT,
    incident_report            TEXT,
    downtime_minutes           INTEGER,
    notes                      TEXT
);

INSERT INTO interdimensional_gateway_operation (id, gateway_id, dimension_target, activation_date, deactivation_date, operator, security_level, power_consumption_mw, status, maintenance_schedule, last_maintenance, throughput_capacity, error_rate_percent, protocol_version, access_control_list, audit_timestamp, compliance_status, incident_report, downtime_minutes, notes)
VALUES (1, 'GW-Alpha', 'Epsilon Realm', '2023-02-01', NULL, 'Dr Nova', 5, 2500, 'Online', 'Quarterly', '2024-01-10', 1000000, 0.02, 'v5.4', 'TeamA;TeamB', '2024-02-15', 'Compliant', 'None', 0, 'Stable operation');

INSERT INTO interdimensional_gateway_operation (id, gateway_id, dimension_target, activation_date, deactivation_date, operator, security_level, power_consumption_mw, status, maintenance_schedule, last_maintenance, throughput_capacity, error_rate_percent, protocol_version, access_control_list, audit_timestamp, compliance_status, incident_report, downtime_minutes, notes)
VALUES (2, 'GW-Beta', 'Delta Nexus', '2022-07-15', '2025-07-15', 'Sec Team X', 4, 1800, 'Scheduled Decommission', 'Bi‑Annual', '2024-03-05', 750000, 0.05, 'v4.9', 'TeamC', '2024-03-10', 'Pending Review', 'Power surge detected', 30, 'Prepare for safe shutdown');

INSERT INTO interdimensional_gateway_operation (id, gateway_id, dimension_target, activation_date, deactivation_date, operator, security_level, power_consumption_mw, status, maintenance_schedule, last_maintenance, throughput_capacity, error_rate_percent, protocol_version, access_control_list, audit_timestamp, compliance_status, incident_report, downtime_minutes, notes)
VALUES (3, 'GW-Gamma', 'Omega Sector', '2024-04-20', NULL, 'Dr Selene', 6, 3200, 'Online', 'Monthly', '2024-04-25', 1200000, 0.01, 'v5.7', 'TeamD;TeamE', '2024-05-01', 'Compliant', 'Minor latency spike', 5, 'Performance tuning underway');