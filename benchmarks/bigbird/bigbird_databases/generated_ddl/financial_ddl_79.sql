-- Art gallery exhibit information
CREATE TABLE art_gallery_exhibit
(
    exhibit_id              INTEGER PRIMARY KEY,
    gallery_id              INTEGER NOT NULL,
    title                   TEXT NOT NULL,
    artist                  TEXT NOT NULL,
    medium                  TEXT,
    year_created            INTEGER,
    acquisition_date        DATE,
    cost                    REAL,
    insurance_value         REAL,
    dimensions              TEXT,
    location                TEXT,
    curator                 TEXT,
    exhibition_start        DATE,
    exhibition_end          DATE,
    status                  TEXT,
    provenance              TEXT,
    donor                   TEXT,
    loaned                  INTEGER,            -- 0 = false, 1 = true
    display_case            TEXT,
    remarks                 TEXT
);

INSERT INTO art_gallery_exhibit VALUES (1, 101, 'Sunrise', 'Alice Smith', 'Oil on canvas', 2015, '2016-03-10', 12000.00, 15000.00, '120x80 cm', 'Room A', 'John Doe', '2023-01-15', '2023-06-15', 'On display', 'Private collection', 'XYZ Foundation', 0, 'Case 5', 'First major exhibition');
INSERT INTO art_gallery_exhibit VALUES (2, 102, 'River Flow', 'Bob Lee', 'Acrylic', 2018, '2019-07-22', 8500.00, 10000.00, '90x60 cm', 'Room B', 'Maria Chan', '2023-02-01', '2023-07-01', 'On display', 'Artist donation', 'ABC Corp', 1, 'Case 2', 'On loan from museum');
INSERT INTO art_gallery_exhibit VALUES (3, 103, 'City Lights', 'Catherine Zhou', 'Digital print', 2020, '2020-11-05', 5000.00, 6000.00, '100x70 cm', 'Room C', 'Linda Park', '2023-03-10', '2023-08-10', 'In storage', 'Gallery acquisition', 'None', 0, 'Case 7', 'Awaiting next exhibition');

-- Marine ecosystem survey data
CREATE TABLE marine_ecosystem_survey
(
    survey_id               INTEGER PRIMARY KEY,
    region_code             TEXT NOT NULL,
    survey_date             DATE NOT NULL,
    water_temp              REAL,
    salinity                REAL,
    ph_level                REAL,
    dissolved_oxygen        REAL,
    turbidity               REAL,
    chlorophyll_a           REAL,
    plankton_count          INTEGER,
    fish_species_count     INTEGER,
    coral_cover_percent     REAL,
    seagrass_density        REAL,
    substrate_type          TEXT,
    surveyor_name           TEXT,
    vessel_id               INTEGER,
    gps_latitude            REAL,
    gps_longitude           REAL,
    notes                   TEXT,
    data_quality_flag       TEXT
);

INSERT INTO marine_ecosystem_survey VALUES (1001, 'RC01', '2022-05-12', 22.5, 35.0, 8.1, 6.2, 1.5, 2.3, 1200, 45, 35.7, 12.4, 'Sandy', 'Emma Liu', 12, -33.865, 151.209, 'Clear conditions', 'Good');
INSERT INTO marine_ecosystem_survey VALUES (1002, 'RC02', '2022-06-18', 24.0, 34.5, 8.0, 5.8, 2.0, 2.9, 1500, 52, 40.2, 14.1, 'Rocky', 'Mark Tan', 15, -34.928, 138.600, 'Moderate waves', 'Acceptable');
INSERT INTO marine_ecosystem_survey VALUES (1003, 'RC03', '2022-07-25', 21.8, 36.2, 8.3, 6.5, 1.2, 2.1, 1100, 38, 30.5, 10.8, 'Mud', 'Sofia Rivera', 9, -31.950, 115.860, 'High visibility', 'Excellent');

-- Space observation log
CREATE TABLE space_observation_log
(
    observation_id          INTEGER PRIMARY KEY,
    satellite_id            TEXT NOT NULL,
    observation_time        DATE NOT NULL,
    target_name             TEXT,
    ra                      REAL,
    dec                     REAL,
    magnitude               REAL,
    exposure_seconds        INTEGER,
    filter_band             TEXT,
    instrument              TEXT,
    data_volume_mb          REAL,
    processing_status       TEXT,
    qc_flag                 TEXT,
    observer                TEXT,
    project_code            TEXT,
    pipeline_version        TEXT,
    storage_path            TEXT,
    calibration_applied     INTEGER,
    notes                   TEXT,
    archive_status          TEXT
);

INSERT INTO space_observation_log VALUES (5001, 'SAT-A1', '2023-01-10', 'Andromeda', 10.684, 41.269, 3.44, 1200, 'V', 'SpectroCam', 250.5, 'Processed', 'Pass', 'Dr. Allen', 'PROJ-001', 'v2.3', '/data/obs/5001/', 1, 'No issues', 'Archived');
INSERT INTO space_observation_log VALUES (5002, 'SAT-B2', '2023-02-15', 'Orion Nebula', 83.822, -5.391, 4.0, 800, 'R', 'ImagerX', 180.2, 'Pending', 'Review', 'Dr. Chen', 'PROJ-002', 'v2.5', '/data/obs/5002/', 0, 'Calibration pending', 'Pending');
INSERT INTO space_observation_log VALUES (5003, 'SAT-C3', '2023-03-20', 'Pleiades', 56.75, 24.116, 1.6, 600, 'B', 'WideField', 95.7, 'Processed', 'Pass', 'Dr. Patel', 'PROJ-003', 'v2.4', '/data/obs/5003/', 1, 'High SNR', 'Archived');

-- Nanotechnology inventory
CREATE TABLE nanotech_inventory
(
    item_id                 INTEGER PRIMARY KEY,
    batch_number            TEXT NOT NULL,
    material                TEXT NOT NULL,
    particle_size_nm        REAL,
    surface_area_m2g        REAL,
    purity_percent          REAL,
    supplier                TEXT,
    received_date           DATE,
    quantity                INTEGER,
    storage_location        TEXT,
    hazard_class            TEXT,
    temperature_control     INTEGER,   -- 0 = no, 1 = yes
    humidity_control        INTEGER,
    expiration_date         DATE,
    safety_data_sheet       TEXT,
    handling_instructions   TEXT,
    current_stock           INTEGER,
    reorder_level           INTEGER,
    cost_per_unit           REAL,
    comments                TEXT
);

INSERT INTO nanotech_inventory VALUES (20001, 'BN-1001', 'Silicon Dioxide', 15.2, 250.0, 99.5, 'NanoSupplies', '2023-04-01', 500, 'Freezer A', 'Class 3', 1, 1, '2025-04-01', 'SDS2001.pdf', 'Wear gloves', 500, 100, 12.5, 'Initial stock');
INSERT INTO nanotech_inventory VALUES (20002, 'BN-1002', 'Gold Nanoparticles', 8.5, 120.0, 98.0, 'GoldTech', '2023-04-10', 300, 'Shelf B', 'Class 2', 0, 0, '2024-10-15', 'SDS2002.pdf', 'Avoid light exposure', 300, 50, 45.0, 'Used for sensor prototypes');
INSERT INTO nanotech_inventory VALUES (20003, 'BN-1003', 'Carbon Nanotubes', 25.0, 500.0, 95.0, 'CarbonWorks', '2023-04-20', 200, 'Cabinet C', 'Class 1', 0, 1, '2026-01-30', 'SDS2003.pdf', 'Handle in fume hood', 200, 30, 78.0, 'High purity batch');

-- Cultural festival schedule
CREATE TABLE cultural_festival_schedule
(
    festival_id                 INTEGER PRIMARY KEY,
    name                        TEXT NOT NULL,
    city                        TEXT NOT NULL,
    start_date                  DATE,
    end_date                    DATE,
    organizer                   TEXT,
    sponsor                     TEXT,
    expected_attendance         INTEGER,
    main_stage                  TEXT,
    secondary_stage             TEXT,
    ticket_price                REAL,
    ticket_currency             TEXT,
    website                     TEXT,
    social_media_handle         TEXT,
    theme                       TEXT,
    weather_forecast            TEXT,
    security_plan               TEXT,
    waste_management_plan       TEXT,
    accessibility_info          TEXT,
    legacy_plan                 TEXT
);

INSERT INTO cultural_festival_schedule VALUES (301, 'Summer Beats', 'Sydney', '2023-12-01', '2023-12-07', 'City Arts Council', 'TechCo', 25000, 'Stage Alpha', 'Stage Beta', 75.00, 'AUD', 'www.summerbeats.com', '@summerbeats', 'Music and Unity', 'Sunny', 'Crowd control officers', 'Recycling stations', 'Wheelchair ramps', 'Community art program');
INSERT INTO cultural_festival_schedule VALUES (302, 'Heritage Days', 'Melbourne', '2024-03-15', '2024-03-20', 'Heritage Org', 'BankPlus', 18000, 'Heritage Plaza', 'Cultural Hall', 50.00, 'AUD', 'www.heritagedays.org', '@heritagedays', 'Celebrating History', 'Mild', 'Volunteer security', 'Compost bins', 'Sign language interpreters', 'Historical archive donation');
INSERT INTO cultural_festival_schedule VALUES (303, 'Tech Expo', 'Brisbane', '2024-06-10', '2024-06-12', 'Innovate Ltd', 'FutureFund', 30000, 'Expo Center Main', 'Expo Center West', 120.00, 'AUD', 'www.techexpo.com.au', '@techexpo', 'Future Innovations', 'Clear', 'Electronic badge access', 'Electronic waste collection', 'Assistive devices', 'Startup mentorship program');

-- Quantum experiment run
CREATE TABLE quantum_experiment_run
(
    run_id                      INTEGER PRIMARY KEY,
    experiment_name             TEXT NOT NULL,
    lab_location                TEXT,
    run_date                    DATE,
    qubit_count                 INTEGER,
    gate_fidelity               REAL,
    coherence_time_us           REAL,
    temperature_mK              REAL,
    pulse_sequence              TEXT,
    measurement_basis           TEXT,
    result_status               TEXT,
    error_rate                  REAL,
    runtime_seconds             INTEGER,
    operator                    TEXT,
    hardware_version            TEXT,
    software_version            TEXT,
    calibration_date            DATE,
    notes                       TEXT,
    data_path                   TEXT,
    publication_ref             TEXT,
    funding_agency              TEXT
);

INSERT INTO quantum_experiment_run VALUES (4001, 'Entanglement Test', 'Quantum Lab A', '2023-05-20', 20, 0.998, 45.2, 15.0, 'Seq-A', 'Z', 'Success', 0.002, 3600, 'Dr. Novak', 'HW-1.2', 'SW-3.4', '2023-04-30', 'No anomalies', '/data/qr/4001/', 'DOI10.1234/qt2023', 'National Science Fund');
INSERT INTO quantum_experiment_run VALUES (4002, 'Error Correction Demo', 'Quantum Lab B', '2023-08-12', 30, 0.985, 38.7, 12.5, 'Seq-B', 'X', 'Partial', 0.015, 5400, 'Dr. Liu', 'HW-2.0', 'SW-4.1', '2023-07-25', 'Higher error observed', '/data/qr/4002/', 'DOI10.5678/ec2023', 'Tech Innovation Grant');
INSERT INTO quantum_experiment_run VALUES (4003, 'Quantum Supremacy', 'Quantum Lab C', '2023-11-03', 50, 0.992, 30.1, 10.0, 'Seq-C', 'Y', 'Success', 0.008, 7200, 'Dr. Patel', 'HW-3.5', 'SW-5.0', '2023-10-20', 'Benchmark achieved', '/data/qr/4003/', 'DOI10.9012/qs2023', 'Global Research Initiative');

-- Biotech clinical trial
CREATE TABLE biotech_clinical_trial
(
    trial_id                    INTEGER PRIMARY KEY,
    drug_name                   TEXT NOT NULL,
    phase                       TEXT,
    indication                  TEXT,
    sponsor                     TEXT,
    start_date                  DATE,
    end_date                    DATE,
    enrollment_target           INTEGER,
    actual_enrollment           INTEGER,
    primary_endpoint            TEXT,
    secondary_endpoint          TEXT,
    status                      TEXT,
    principal_investigator      TEXT,
    site_count                  INTEGER,
    site_locations              TEXT,
    regulatory_status           TEXT,
    ethics_approval_date        DATE,
    data_lock_date              DATE,
    results_summary             TEXT,
    adverse_event_rate          REAL
);

INSERT INTO biotech_clinical_trial VALUES (501, 'NeuroRelief', 'Phase II', 'Alzheimer', 'HealthCorp', '2022-01-15', '2023-06-30', 200, 185, 'Cognitive score improvement', 'MRI biomarkers', 'Completed', 'Dr. Green', 12, 'NY,CA,TX,FL,IL,PA,OH,GA,NC,MI,WA,CO', 'Approved', '2021-12-01', '2023-07-10', 'Significant improvement in memory', 0.04);
INSERT INTO biotech_clinical_trial VALUES (502, 'CardioGuard', 'Phase III', 'Heart Failure', 'CardioPharma', '2021-03-01', '2024-02-28', 500, 470, 'Reduction in hospitalization', 'Ejection fraction', 'Ongoing', 'Dr. Allen', 20, 'NY,CA,TX,FL,IL,PA,OH,GA,NC,MI,WA,CO,NJ,VA,AZ,MD,TN,MA,KS,IN', 'Pending', '2021-02-10', '2024-03-15', 'Interim analysis shows trend', 0.07);
INSERT INTO biotech_clinical_trial VALUES (503, 'OncoShield', 'Phase I', 'Lung Cancer', 'OncoVentures', '2023-05-01', '2023-12-31', 50, 45, 'Safety and tolerability', 'Tumor size reduction', 'Recruiting', 'Dr. Patel', 5, 'CA,TX,FL,NY,IL', 'Approved', '2023-04-15', '2024-01-20', 'No dose-limiting toxicities', 0.02);

-- Renewable energy certificate
CREATE TABLE renewable_energy_certificate
(
    cert_id                     INTEGER PRIMARY KEY,
    project_id                  INTEGER NOT NULL,
    certificate_type            TEXT,
    issue_date                  DATE,
    expiry_date                 DATE,
    volume_mwh                  REAL,
    issuer                      TEXT,
    holder                      TEXT,
    transaction_id              TEXT,
    price_per_mwh               REAL,
    currency                    TEXT,
    status                      TEXT,
    verification_method         TEXT,
    audit_report                TEXT,
    renewable_source            TEXT,
    region_code                 TEXT,
    metadata_hash               TEXT,
    blockchain_tx_hash          TEXT,
    comments                    TEXT,
    compliance_status          TEXT
);

INSERT INTO renewable_energy_certificate VALUES (6001, 301, 'Guarantee', '2023-01-01', '2033-01-01', 5000.0, 'RenewPower', 'EcoInvest', 'TXN-1001', 25.0, 'USD', 'Active', 'ThirdParty', 'Audit2023.pdf', 'Solar', 'RG01', 'hashabc123', 'bchash001', 'First issuance', 'Compliant');
INSERT INTO renewable_energy_certificate VALUES (6002, 302, 'REC', '2023-02-15', '2033-02-15', 3000.0, 'WindEnergyCo', 'GreenFund', 'TXN-1002', 22.5, 'USD', 'Active', 'Self', 'Audit2023b.pdf', 'Wind', 'RG02', 'hashdef456', 'bchash002', 'Mid-year issuance', 'Compliant');
INSERT INTO renewable_energy_certificate VALUES (6003, 303, 'Guarantee', '2023-03-20', '2033-03-20', 7500.0, 'HydroFlow', 'SustainCap', 'TXN-1003', 20.0, 'USD', 'Pending', 'ThirdParty', 'Audit2023c.pdf', 'Hydro', 'RG03', 'hashghi789', 'bchash003', 'Awaiting verification', 'Pending');

-- Public art installation
CREATE TABLE public_art_installation
(
    installation_id             INTEGER PRIMARY KEY,
    title                       TEXT NOT NULL,
    artist                      TEXT,
    year_installed              INTEGER,
    location_description        TEXT,
    latitude                    REAL,
    longitude                   REAL,
    material                    TEXT,
    dimensions                  TEXT,
    funding_source              TEXT,
    sponsor                     TEXT,
    maintenance_contract        TEXT,
    condition_status            TEXT,
    last_inspection_date        DATE,
    illumination                INTEGER,   -- 0 = No, 1 = Yes
    interactive                 INTEGER,
    audio_component             INTEGER,
    visitor_count_estimate      INTEGER,
    website                     TEXT,
    notes                       TEXT
);

INSERT INTO public_art_installation VALUES (7001, 'Wave', 'Lara Kim', 2019, 'Riverfront Plaza', -33.870, 151.206, 'Stainless steel', '12x3m', 'City Council', 'MarineCo', 'MC-2025', 'Good', '2022-11-10', 1, 0, 0, 12000, 'www.waveart.com', 'Popular photo spot');
INSERT INTO public_art_installation VALUES (7002, 'Light Dome', 'Santiago Ruiz', 2021, 'Central Park', -33.873, 151.209, 'Glass and LED', '8m diameter', 'Private Donor', 'Lumen Ltd', 'LD-2024', 'Excellent', '2023-03-05', 1, 1, 1, 25000, 'www.lightdome.org', 'Nighttime illumination shows patterns');
INSERT INTO public_art_installation VALUES (7003, 'Heritage Tree', 'Mina Patel', 2020, 'University Campus', -33.877, 151.215, 'Bronze', '5m height', 'University Fund', 'EcoPartners', 'ET-2026', 'Fair', '2022-08-20', 0, 0, 0, 8000, 'www.heritagetree.edu', 'Educational plaques installed');

-- City traffic signal
CREATE TABLE city_traffic_signal
(
    signal_id                   INTEGER PRIMARY KEY,
    intersection_id             INTEGER NOT NULL,
    latitude                    REAL,
    longitude                   REAL,
    installation_date           DATE,
    manufacturer                TEXT,
    model                       TEXT,
    hardware_version            TEXT,
    firmware_version            TEXT,
    status                      TEXT,
    last_maintenance            DATE,
    bulb_type                   TEXT,
    bulb_lifespan_hours         INTEGER,
    power_consumption_watts     REAL,
    adaptive_control            INTEGER,   -- 0 = No, 1 = Yes
    pedestrian_phase            INTEGER,
    vehicle_phase               INTEGER,
    cycle_time_seconds          INTEGER,
    coordination_group          TEXT,
    notes                       TEXT
);

INSERT INTO city_traffic_signal VALUES (8001, 4501, -33.870, 151.208, '2018-06-15', 'SignalTech', 'ST-500', 'v3.1', 'fw2.0', 'Operational', '2023-01-12', 'LED', 50000, 120.5, 1, 30, 90, 120, 'Group-A', 'Upgraded to adaptive control 2022');
INSERT INTO city_traffic_signal VALUES (8002, 4502, -33.872, 151.210, '2019-09-20', 'UrbanSignal', 'US-200', 'v2.5', 'fw1.8', 'Operational', '2023-03-05', 'LED', 45000, 110.0, 0, 20, 80, 100, 'Group-B', 'Scheduled for retrofit');
INSERT INTO city_traffic_signal VALUES (8003, 4503, -33.874, 151.212, '2020-11-05', 'TrafficPro', 'TP-300', 'v4.0', 'fw3.1', 'Maintenance', '2023-02-20', 'LED', 60000, 130.2, 1, 25, 85, 110, 'Group-C', 'Bulb replaced March 2023');