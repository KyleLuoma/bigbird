-- Water quality monitoring stations
CREATE TABLE water_quality_station
(
    station_id              INTEGER PRIMARY KEY,
    station_name            TEXT NOT NULL,
    region                  TEXT NOT NULL,
    latitude                REAL NOT NULL,
    longitude               REAL NOT NULL,
    install_date            DATE NOT NULL,
    water_source            TEXT NOT NULL,
    max_capacity            INTEGER NOT NULL,
    sensor_count            INTEGER NOT NULL,
    last_maintenance        DATE NOT NULL,
    status                  TEXT NOT NULL,
    ph_level                REAL NOT NULL,
    turbidity               REAL NOT NULL,
    temperature             REAL NOT NULL,
    dissolved_oxygen        REAL NOT NULL,
    nitrate_level           REAL NOT NULL,
    phosphate_level         REAL NOT NULL,
    lead_concentration      REAL NOT NULL,
    mercury_concentration   REAL NOT NULL,
    operator_contact        TEXT NOT NULL,
    data_upload_interval    INTEGER NOT NULL
);

INSERT INTO water_quality_station (station_id, station_name, region, latitude, longitude, install_date, water_source, max_capacity, sensor_count, last_maintenance, status, ph_level, turbidity, temperature, dissolved_oxygen, nitrate_level, phosphate_level, lead_concentration, mercury_concentration, operator_contact, data_upload_interval) VALUES
(1, 'RiverSide', 'North', 45.1234, -122.5678, '2020-03-15', 'River', 5000, 12, '2023-06-01', 'Active', 7.2, 3.5, 15.0, 8.1, 2.4, 0.5, 0.01, 0.002, 'john.doe@example.com', 60),
(2, 'LakeView', 'South', 44.9876, -121.4321, '2019-11-20', 'Lake', 3000, 8, '2023-04-12', 'Active', 7.5, 2.1, 14.2, 7.9, 1.8, 0.3, 0.008, 0.0015, 'jane.smith@example.com', 30),
(3, 'SpringField', 'East', 46.5432, -123.0987, '2021-01-10', 'Spring', 2500, 10, '2023-05-20', 'Inactive', 6.9, 4.0, 13.8, 7.5, 2.0, 0.6, 0.012, 0.0022, 'alice.wang@example.com', 45);

-- Distribution centers
CREATE TABLE distribution_center
(
    center_id               INTEGER PRIMARY KEY,
    center_name             TEXT NOT NULL,
    address                 TEXT NOT NULL,
    city                    TEXT NOT NULL,
    state                   TEXT NOT NULL,
    zip_code                TEXT NOT NULL,
    country                 TEXT NOT NULL,
    latitude                REAL NOT NULL,
    longitude               REAL NOT NULL,
    opening_date            DATE NOT NULL,
    total_area_sqft         INTEGER NOT NULL,
    dock_count              INTEGER NOT NULL,
    forklift_count          INTEGER NOT NULL,
    manager_name            TEXT NOT NULL,
    manager_contact         TEXT NOT NULL,
    security_level          TEXT NOT NULL,
    climate_control         BOOLEAN NOT NULL,
    loading_capacity_tons   REAL NOT NULL,
    annual_throughput_units INTEGER NOT NULL,
    last_audit              DATE NOT NULL,
    compliance_status       TEXT NOT NULL,
    operational_status      TEXT NOT NULL
);

INSERT INTO distribution_center (center_id, center_name, address, city, state, zip_code, country, latitude, longitude, opening_date, total_area_sqft, dock_count, forklift_count, manager_name, manager_contact, security_level, climate_control, loading_capacity_tons, annual_throughput_units, last_audit, compliance_status, operational_status) VALUES
(101, 'Central Hub', '123 Main St', 'Metropolis', 'NY', '10001', 'USA', 40.7128, -74.0060, '2015-06-01', 250000, 20, 35, 'Bob Johnson', 'bob.johnson@example.com', 'High', 1, 1500.5, 2000000, '2023-02-15', 'Compliant', 'Active'),
(102, 'West Coast Facility', '456 Ocean Ave', 'San Francisco', 'CA', '94102', 'USA', 37.7749, -122.4194, '2018-09-15', 180000, 15, 28, 'Lisa Martinez', 'lisa.martinez@example.com', 'Medium', 1, 1200.0, 1500000, '2023-03-10', 'Compliant', 'Active'),
(103, 'Midwest Depot', '789 River Rd', 'Chicago', 'IL', '60605', 'USA', 41.8781, -87.6298, '2020-01-20', 210000, 18, 30, 'Tom Lee', 'tom.lee@example.com', 'High', 0, 1300.8, 1700000, '2023-01-05', 'Pending', 'Maintenance');

-- Employee learning paths
CREATE TABLE employee_learning_path
(
    path_id                 INTEGER PRIMARY KEY,
    employee_id             INTEGER NOT NULL,
    path_name               TEXT NOT NULL,
    start_date              DATE NOT NULL,
    end_date                DATE,
    total_modules           INTEGER NOT NULL,
    completed_modules       INTEGER NOT NULL,
    completion_rate         REAL NOT NULL,
    certification_obtained  BOOLEAN NOT NULL,
    certification_name      TEXT,
    trainer_id              INTEGER,
    trainer_name            TEXT,
    assessment_score        REAL,
    feedback_score          REAL,
    last_accessed           DATE,
    status                  TEXT NOT NULL,
    next_module_id          INTEGER,
    next_module_name        TEXT,
    hours_spent             REAL,
    learning_mode           TEXT,
    platform                TEXT
);

INSERT INTO employee_learning_path (path_id, employee_id, path_name, start_date, end_date, total_modules, completed_modules, completion_rate, certification_obtained, certification_name, trainer_id, trainer_name, assessment_score, feedback_score, last_accessed, status, next_module_id, next_module_name, hours_spent, learning_mode, platform) VALUES
(1001, 501, 'Leadership Essentials', '2022-01-10', '2022-04-10', 12, 12, 100.0, 1, 'Leadership Cert', 301, 'Karen Patel', 95.5, 4.8, '2022-04-09', 'Completed', NULL, NULL, 36.0, 'Online', 'LMS Pro'),
(1002, 502, 'Data Analytics Track', '2022-02-01', NULL, 20, 8, 40.0, 0, NULL, 302, 'Mike Chen', 78.0, 4.2, '2022-06-15', 'InProgress', 209, 'Advanced Visualization', 48.5, 'Blended', 'SkillShare'),
(1003, 503, 'Compliance Basics', '2023-03-05', NULL, 8, 2, 25.0, 0, NULL, 303, 'Sara Gomez', 62.0, 3.9, '2023-03-20', 'InProgress', 105, 'Regulatory Updates', 12.0, 'SelfPaced', 'Udemy');

-- Scientific studies
CREATE TABLE scientific_study
(
    study_id                INTEGER PRIMARY KEY,
    title                   TEXT NOT NULL,
    principal_investigator TEXT NOT NULL,
    start_date              DATE NOT NULL,
    end_date                DATE,
    funding_amount          REAL NOT NULL,
    funding_agency          TEXT NOT NULL,
    field_of_research       TEXT NOT NULL,
    methodology             TEXT NOT NULL,
    sample_size             INTEGER NOT NULL,
    data_repository         TEXT NOT NULL,
    ethics_approval         BOOLEAN NOT NULL,
    ethics_committee        TEXT,
    public_access           BOOLEAN NOT NULL,
    publication_status      TEXT NOT NULL,
    journal_name            TEXT,
    doi                     TEXT,
    last_update             DATE NOT NULL,
    status                  TEXT NOT NULL,
    confidentiality_level   TEXT NOT NULL,
    associated_grant_id     INTEGER
);

INSERT INTO scientific_study (study_id, title, principal_investigator, start_date, end_date, funding_amount, funding_agency, field_of_research, methodology, sample_size, data_repository, ethics_approval, ethics_committee, public_access, publication_status, journal_name, doi, last_update, status, confidentiality_level, associated_grant_id) VALUES
(2001, 'Urban Heat Island Effects', 'Dr Emily Carter', '2021-05-01', '2023-04-30', 350000.00, 'National Science Fund', 'Environmental Science', 'Remote Sensing', 120, 'GeoDataHub', 1, 'Eco Ethics Board', 1, 'Published', 'Journal of Climate', '10.1234/jc.2023.001', '2023-05-15', 'Closed', 'Public', 4001),
(2002, 'AI in Financial Forecasting', 'Prof Daniel Liu', '2022-01-15', NULL, 500000.00, 'Tech Innovation Grant', 'Computer Science', 'Machine Learning', 2000, 'FinDataVault', 1, 'Data Ethics Council', 0, 'In Review', NULL, NULL, '2023-06-01', 'Active', 'Restricted', 4002),
(2003, 'Genomic Markers for Diabetes', 'Dr Sophia Nguyen', '2020-09-10', '2022-12-31', 750000.00, 'Health Research Agency', 'Medical Genetics', 'Case-Control Study', 800, 'MedBioArchive', 1, 'Health Ethics Committee', 1, 'Published', 'Medical Genomics', '10.5678/mg.2022.045', '2023-01-20', 'Closed', 'Public', 4003);

-- Solar farm output records
CREATE TABLE solar_farm_output
(
    farm_id                     INTEGER PRIMARY KEY,
    farm_name                   TEXT NOT NULL,
    location                    TEXT NOT NULL,
    latitude                    REAL NOT NULL,
    longitude                   REAL NOT NULL,
    installation_date           DATE NOT NULL,
    panel_count                 INTEGER NOT NULL,
    total_capacity_mw          REAL NOT NULL,
    average_daily_output_mwh    REAL NOT NULL,
    peak_output_mwh            REAL NOT NULL,
    inverter_count              INTEGER NOT NULL,
    maintenance_schedule        TEXT NOT NULL,
    last_maintenance            DATE NOT NULL,
    performance_ratio           REAL NOT NULL,
    temperature_coefficient     REAL NOT NULL,
    shading_factor              REAL NOT NULL,
    degradation_rate            REAL NOT NULL,
    ownership_type              TEXT NOT NULL,
    operator_company            TEXT NOT NULL,
    grid_connection_status      TEXT NOT NULL,
    monitoring_system           TEXT NOT NULL,
    annual_energy_produced_mwh  REAL NOT NULL
);

INSERT INTO solar_farm_output (farm_id, farm_name, location, latitude, longitude, installation_date, panel_count, total_capacity_mw, average_daily_output_mwh, peak_output_mwh, inverter_count, maintenance_schedule, last_maintenance, performance_ratio, temperature_coefficient, shading_factor, degradation_rate, ownership_type, operator_company, grid_connection_status, monitoring_system, annual_energy_produced_mwh) VALUES
(301, 'SunnyVale', 'Nevada', 36.7783, -119.4179, '2018-03-12', 250000, 75.0, 260.5, 300.0, 120, 'Quarterly', '2023-04-01', 0.89, -0.0045, 0.03, 0.005, 'Private', 'SunPower Inc', 'Connected', 'SolarEye', 95000.0),
(302, 'DesertGlow', 'Arizona', 33.4484, -112.0740, '2019-07-25', 180000, 54.0, 190.2, 220.0, 90, 'Biannual', '2023-02-15', 0.86, -0.0048, 0.04, 0.006, 'Public', 'EnergyGov', 'Connected', 'BrightMonitor', 69500.0),
(303, 'CoastalRay', 'California', 34.0522, -118.2437, '2020-11-05', 300000, 90.0, 310.0, 360.0, 150, 'Annual', '2023-01-20', 0.91, -0.0039, 0.02, 0.004, 'Joint Venture', 'GreenWave LLC', 'Pending', 'SolarWatch', 113500.0);

-- Artifact restoration records
CREATE TABLE artifact_restoration_record
(
    record_id               INTEGER PRIMARY KEY,
    artifact_id             INTEGER NOT NULL,
    restoration_date        DATE NOT NULL,
    conservator_name        TEXT NOT NULL,
    technique_used          TEXT NOT NULL,
    materials_used          TEXT NOT NULL,
    duration_hours          REAL NOT NULL,
    condition_before        TEXT NOT NULL,
    condition_after         TEXT NOT NULL,
    cost_estimate           REAL NOT NULL,
    funding_source          TEXT NOT NULL,
    notes                   TEXT,
    location                TEXT NOT NULL,
    storage_temperature     REAL,
    humidity_level          REAL,
    light_exposure_lux      REAL,
    risk_assessment         TEXT,
    compliance_standard     TEXT,
    approval_status         TEXT,
    next_review_date        DATE,
    documentation_url       TEXT,
    restoration_status      TEXT NOT NULL
);

INSERT INTO artifact_restoration_record (record_id, artifact_id, restoration_date, conservator_name, technique_used, materials_used, duration_hours, condition_before, condition_after, cost_estimate, funding_source, notes, location, storage_temperature, humidity_level, light_exposure_lux, risk_assessment, compliance_standard, approval_status, next_review_date, documentation_url, restoration_status) VALUES
(401, 8001, '2022-05-14', 'Anna Bell', 'Solvent Cleaning', 'Distilled Water; Ethanol', 15.5, 'Discoloration and dust', 'Color restored, dust removed', 1200.00, 'Museum Grant', 'Minor surface cleaning', 'Exhibit Hall A', 20.0, 45.0, 200.0, 'Low', 'ISO 9001', 'Approved', '2023-05-14', 'http://museum.org/docs/record401.pdf', 'Completed'),
(402, 8002, '2023-01-22', 'Luis Ortega', 'Structural Consolidation', 'Epoxy Resin', 32.0, 'Cracks in base', 'Cracks filled, stable', 2500.00, 'Private Donation', 'Performed under limited lighting', 'Storage Vault B', 18.0, 50.0, 150.0, 'Medium', 'Conservation Standard 2020', 'Pending', '2024-01-22', 'http://museum.org/docs/record402.pdf', 'InProgress'),
(403, 8003, '2023-08-05', 'Mei Lin', 'Laser Cleaning', 'Nitrogen Gas; Laser', 20.0, 'Surface grime', 'Surface pristine', 1800.00, 'Cultural Fund', NULL, 'Exhibit Hall C', 22.0, 40.0, 250.0, 'Low', 'ISO 14001', 'Approved', '2024-08-05', 'http://museum.org/docs/record403.pdf', 'Completed');

-- Bus route schedules
CREATE TABLE bus_route_schedule
(
    schedule_id           INTEGER PRIMARY KEY,
    route_number          TEXT NOT NULL,
    departure_time        TIME NOT NULL,
    arrival_time          TIME NOT NULL,
    stop_sequence         INTEGER NOT NULL,
    stop_name             TEXT NOT NULL,
    stop_id               INTEGER NOT NULL,
    day_of_week           TEXT NOT NULL,
    service_type          TEXT NOT NULL,
    vehicle_type          TEXT NOT NULL,
    driver_id             INTEGER NOT NULL,
    driver_name           TEXT NOT NULL,
    fare                  REAL NOT NULL,
    distance_km           REAL NOT NULL,
    average_speed_kmh     REAL NOT NULL,
    layover_minutes       INTEGER NOT NULL,
    wheelchair_access    BOOLEAN NOT NULL,
    wifi_available        BOOLEAN NOT NULL,
    rank_in_route         INTEGER NOT NULL,
    notes                 TEXT,
    last_updated          DATE NOT NULL,
    active                BOOLEAN NOT NULL
);

INSERT INTO bus_route_schedule (schedule_id, route_number, departure_time, arrival_time, stop_sequence, stop_name, stop_id, day_of_week, service_type, vehicle_type, driver_id, driver_name, fare, distance_km, average_speed_kmh, layover_minutes, wheelchair_access, wifi_available, rank_in_route, notes, last_updated, active) VALUES
(501, '12A', '08:00', '08:45', 1, 'Central Station', 1001, 'Weekday', 'Regular', 'Hybrid', 2001, 'Carlos Ruiz', 2.5, 15.0, 30.0, 3, 1, 1, 1, 'Morning peak', '2023-06-10', 1),
(502, '12A', '17:00', '17:45', 1, 'Central Station', 1001, 'Weekday', 'Regular', 'Hybrid', 2002, 'Maria Gomez', 2.5, 15.0, 30.0, 2, 1, 1, 1, 'Evening peak', '2023-06-10', 1),
(503, '7B', '09:30', '10:15', 1, 'North Plaza', 1005, 'Weekend', 'Express', 'Electric', 2003, 'James Lee', 3.0, 18.0, 32.0, 4, 1, 0, 1, NULL, '2023-06-11', 1);

-- Facility safety audits
CREATE TABLE facility_safety_audit
(
    audit_id                INTEGER PRIMARY KEY,
    facility_id             INTEGER NOT NULL,
    audit_date              DATE NOT NULL,
    auditor_name            TEXT NOT NULL,
    auditor_id              INTEGER NOT NULL,
    safety_score            REAL NOT NULL,
    violations_count        INTEGER NOT NULL,
    critical_violations    INTEGER NOT NULL,
    non_critical_violations INTEGER NOT NULL,
    corrective_actions      TEXT NOT NULL,
    follow_up_date          DATE NOT NULL,
    compliance_status       TEXT NOT NULL,
    equipment_inspected     INTEGER NOT NULL,
    fire_extinguishers_passed BOOLEAN NOT NULL,
    emergency_exits_passed BOOLEAN NOT NULL,
    electrical_safety_passed BOOLEAN NOT NULL,
    hvac_inspection_passed BOOLEAN NOT NULL,
    chemical_storage_passed BOOLEAN NOT NULL,
    training_records_verified BOOLEAN NOT NULL,
    notes                   TEXT,
    overall_rating          TEXT NOT NULL,
    next_audit_due         DATE NOT NULL,
    audit_status            TEXT NOT NULL
);

INSERT INTO facility_safety_audit (audit_id, facility_id, audit_date, auditor_name, auditor_id, safety_score, violations_count, critical_violations, non_critical_violations, corrective_actions, follow_up_date, compliance_status, equipment_inspected, fire_extinguishers_passed, emergency_exits_passed, electrical_safety_passed, hvac_inspection_passed, chemical_storage_passed, training_records_verified, notes, overall_rating, next_audit_due, audit_status) VALUES
(601, 3001, '2023-03-15', 'Helen Brooks', 4001, 92.5, 2, 0, 2, 'Replace worn seals, retrain staff', '2023-04-15', 'Compliant', 150, 1, 1, 1, 1, 1, 1, 'All good', 'A', '2024-03-15', 'Closed'),
(602, 3002, '2023-04-20', 'Mark Daniels', 4002, 78.0, 5, 1, 4, 'Install additional fire alarms, update SDS', '2023-05-20', 'Conditional', 120, 1, 0, 1, 0, 1, 0, 'Needs follow‑up on exits', 'B', '2024-04-20', 'Open'),
(603, 3003, '2023-05-10', 'Laura Kim', 4003, 85.0, 3, 0, 3, 'Conduct HVAC filter replacement', '2023-06-10', 'Compliant', 140, 1, 1, 1, 1, 0, 1, NULL, 'Minor chemical storage issue', 'B+', '2024-05-10', 'Closed');

-- Threat intelligence alerts
CREATE TABLE threat_intelligence_alert
(
    alert_id                INTEGER PRIMARY KEY,
    indicator_type          TEXT NOT NULL,
    indicator_value         TEXT NOT NULL,
    threat_actor            TEXT,
    confidence_score        REAL NOT NULL,
    observed_date           DATE NOT NULL,
    source                  TEXT NOT NULL,
    description             TEXT NOT NULL,
    mitigations             TEXT,
    severity                TEXT NOT NULL,
    TTP                     TEXT,
    related_campaign        TEXT,
    affected_assets         TEXT,
    remediation_status      TEXT,
    analyst_name            TEXT NOT NULL,
    analyst_id              INTEGER NOT NULL,
    ticket_id               INTEGER,
    status                  TEXT NOT NULL,
    escalation_level        TEXT,
    notification_method     TEXT,
    last_updated            DATE NOT NULL,
    resolution_date         DATE
);

INSERT INTO threat_intelligence_alert (alert_id, indicator_type, indicator_value, threat_actor, confidence_score, observed_date, source, description, mitigations, severity, TTP, related_campaign, affected_assets, remediation_status, analyst_name, analyst_id, ticket_id, status, escalation_level, notification_method, last_updated, resolution_date) VALUES
(701, 'IP Address', '192.168.45.23', 'APT28', 0.92, '2023-06-01', 'External Feed', 'Suspicious login attempts from foreign IP', 'Block IP, enforce MFA', 'High', 'Credential Dumping', 'Operation Winter', 'Web Server, DB Server', 'Mitigated', 'Olivia Reed', 5001, 3001, 'Resolved', 'Tier 2', 'Email', '2023-06-02', '2023-06-02'),
(702, 'Domain', 'malicious-example.com', 'Unknown', 0.78, '2023-06-10', 'Internal IDS', 'Phishing email detected with malicious link', 'User education, URL filter', 'Medium', 'Phishing', NULL, 'Employee Workstations', 'In Progress', 'James Patel', 5002, 3002, 'Open', 'Tier 1', 'SMS', '2023-06-11', NULL),
(703, 'Hash', 'a3f5c9e2b7d1f4a6', 'FIN7', 0.85, '2023-06-15', 'Threat Feed', 'Malware sample observed in network traffic', 'Quarantine file, update AV signatures', 'High', 'Malware Delivery', 'Operation Smoke', 'File Server', 'Mitigated', 'Sara Ng', 5003, 3003, 'Resolved', 'Tier 3', 'Dashboard', '2023-06-16', '2023-06-16');

-- Digital NFT registry
CREATE TABLE digital_nft_registry
(
    nft_id                 INTEGER PRIMARY KEY,
    token_id               TEXT NOT NULL,
    collection_name        TEXT NOT NULL,
    creator_address        TEXT NOT NULL,
    owner_address          TEXT NOT NULL,
    mint_date              DATE NOT NULL,
    metadata_uri           TEXT NOT NULL,
    file_format            TEXT NOT NULL,
    file_size_bytes        INTEGER NOT NULL,
    royalty_percentage     REAL NOT NULL,
    transaction_hash       TEXT NOT NULL,
    blockchain             TEXT NOT NULL,
    current_price          REAL,
    last_sale_date         DATE,
    sale_count             INTEGER,
    provenance_notes       TEXT,
    verification_status    TEXT NOT NULL,
    escrow_status          BOOLEAN NOT NULL,
    listed                 BOOLEAN NOT NULL,
    listing_price          REAL,
    listing_date           DATE,
    delist_reason          TEXT
);

INSERT INTO digital_nft_registry (nft_id, token_id, collection_name, creator_address, owner_address, mint_date, metadata_uri, file_format, file_size_bytes, royalty_percentage, transaction_hash, blockchain, current_price, last_sale_date, sale_count, provenance_notes, verification_status, escrow_status, listed, listing_price, listing_date, delist_reason) VALUES
(801, '0x1a2b3c', 'PixelPunks', '0xCreatorA', '0xOwnerX', '2022-02-14', 'https://ipfs.io/ipfs/Qm123', 'PNG', 204800, 5.0, '0xTxHash001', 'Ethereum', 3.5, '2023-01-20', 2, 'First sale to OwnerX', 'Verified', 0, 1, 4.0, '2023-06-01', NULL),
(802, '0x4d5e6f', 'MetaMosaics', '0xCreatorB', '0xOwnerY', '2021-11-05', 'https://ipfs.io/ipfs/Qm456', 'GIF', 512000, 7.5, '0xTxHash002', 'Polygon', 1.2, '2022-12-15', 1, 'Minted and immediately sold', 'Verified', 0, 0, NULL, NULL, 'Owner delisted after sale'),
(803, '0x7g8h9i', 'CryptoCanvas', '0xCreatorC', '0xOwnerZ', '2023-03-22', 'https://ipfs.io/ipfs/Qm789', 'MP4', 10485760, 10.0, '0xTxHash003', 'Solana', NULL, NULL, 0, 'Never listed', 'Pending Verification', 0, 0, NULL, NULL, NULL);