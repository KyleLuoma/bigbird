-- Art Gallery Acquisition Records
CREATE TABLE art_gallery_acquisition
(
    acquisition_id        INTEGER PRIMARY KEY,
    gallery_id            INTEGER NOT NULL,
    artwork_title         TEXT NOT NULL,
    artist_name           TEXT NOT NULL,
    creation_year         INTEGER,
    acquisition_date      DATE NOT NULL,
    purchase_price        REAL,
    currency_code         TEXT,
    provenance_details    TEXT,
    medium                TEXT,
    dimensions_cm         TEXT,
    insurance_policy_num  TEXT,
    insurance_company     TEXT,
    condition_report     TEXT,
    display_location      TEXT,
    curator_responsible   TEXT,
    acquisition_method    TEXT,
    donor_name            TEXT,
    donor_contact         TEXT,
    tax_exempt_flag       INTEGER,
    appraisal_value       REAL,
    confidentiality_level INTEGER,
    notes                 TEXT,
    created_timestamp     DATE DEFAULT CURRENT_DATE
);

INSERT INTO art_gallery_acquisition VALUES (1, 101, 'Sunrise Over River', 'Liam Verma', 2015, '2022-03-15', 12500.00, 'USD', 'Private collection', 'Oil on canvas', '120x80', 'POL12345', 'GlobalInsure', 'Excellent', 'Hall A1', 'Maria Lopez', 'Purchase', NULL, NULL, 0, 13000.00, 2, 'First acquisition of the year', '2022-03-15');
INSERT INTO art_gallery_acquisition VALUES (2, 102, 'Abstract Forms', 'Ana Ruiz', 1998, '2021-11-02', 8000.00, 'EUR', 'Auction house', 'Acrylic', '60x60', 'POL67890', 'EuroSafe', 'Good', 'Hall B3', 'John Smith', 'Auction', 'Art Foundation', 'contact@artfd.org', 1, 8500.00, 1, 'Donated portion of purchase', '2021-11-02');
INSERT INTO art_gallery_acquisition VALUES (3, 103, 'Sculpture of Light', 'Mika Tanaka', 2020, '2023-01-20', 20000.00, 'USD', 'Artist commission', 'Mixed media', '200x150x200', 'POL54321', 'SecureArt', 'New', 'Sculpture Garden', 'Emily Chen', 'Commission', NULL, NULL, 0, 21000.00, 3, 'Installed outdoors', '2023-01-20');

-- Space Mission Control Log
CREATE TABLE space_mission_control
(
    mission_id                INTEGER PRIMARY KEY,
    mission_name              TEXT NOT NULL,
    launch_date               DATE,
    launch_vehicle            TEXT,
    destination               TEXT,
    mission_status            TEXT,
    control_center_code       TEXT,
    chief_controller          TEXT,
    communication_band        TEXT,
    frequency_mhz             REAL,
    telemetry_interval_sec    INTEGER,
    fuel_mass_kg              REAL,
    payload_mass_kg           REAL,
    crew_size                 INTEGER,
    orbit_type                TEXT,
    mission_duration_days     INTEGER,
    primary_objective         TEXT,
    secondary_objective       TEXT,
    risk_level                INTEGER,
    budget_million_usd        REAL,
    sponsor_agency            TEXT,
    data_downlink_rate_mbps   REAL,
    software_version         TEXT,
    last_update_timestamp     DATE DEFAULT CURRENT_DATE,
    notes                     TEXT
);

INSERT INTO space_mission_control VALUES (1001, 'Lunar Surface Survey', '2024-07-12', 'Falcon Heavy', 'Moon', 'In Progress', 'CC01', 'Dr. Alan Reed', 'X-Band', 8.4, 30, 15000.0, 5000.0, 4, 'Lunar Orbit', 180, 'Geological mapping', 'Radiation measurement', 2, 750.0, 'NASA', 12.5, 'v3.2.1', '2024-07-15', 'All systems nominal');
INSERT INTO space_mission_control VALUES (1002, 'Mars Atmospheric Probe', '2025-03-05', 'Atlas V', 'Mars', 'Planned', 'CC02', 'Dr. Nina Patel', 'Ka-Band', 14.2, 60, 20000.0, 3000.0, 0, 'Solar Orbit', 365, 'Atmospheric sampling', 'Dust analysis', 3, 950.0, 'ESA', 8.0, 'v4.0.0', '2025-02-28', 'Awaiting final review');
INSERT INTO space_mission_control VALUES (1003, 'Asteroid Redirect', '2023-11-20', 'Delta IV', 'Near-Earth Asteroid', 'Completed', 'CC03', 'Dr. Luis Gomez', 'S-Band', 5.6, 45, 12000.0, 2500.0, 2, 'Heliocentric', 90, 'Sample collection', 'Resource mapping', 1, 600.0, 'JAXA', 10.2, 'v2.9.4', '2024-01-10', 'Mission successful');

-- Marine Fishing Permit Registry
CREATE TABLE marine_fishing_permit
(
    permit_id               INTEGER PRIMARY KEY,
    vessel_id               INTEGER NOT NULL,
    permit_number           TEXT NOT NULL,
    issue_date              DATE NOT NULL,
    expiry_date             DATE NOT NULL,
    fish_species_allowed    TEXT,
    quota_tons              REAL,
    fishing_zone_code       TEXT,
    gear_type               TEXT,
    captain_name            TEXT,
    captain_license_number  TEXT,
    owner_name              TEXT,
    owner_contact           TEXT,
    compliance_status       TEXT,
    inspection_date         DATE,
    inspector_name          TEXT,
    penalty_amount_usd      REAL,
    emission_class          TEXT,
    vessel_length_m         REAL,
    vessel_tonnage          REAL,
    registration_country    TEXT,
    insurance_policy        TEXT,
    notes                   TEXT,
    last_updated            DATE DEFAULT CURRENT_DATE
);

INSERT INTO marine_fishing_permit VALUES (5001, 3001, 'PERM-2022-001', '2022-01-01', '2023-01-01', 'Tuna;Mackerel', 150.0, 'ZC-12', 'Purse Seine', 'Carlos Mendes', 'CLN-987654', 'Oceanic Fisheries Ltd', '+1234567890', 'Compliant', '2022-06-15', 'Anna Liu', 0.0, 'ECO-1', 30.5, 1200.0, 'Portugal', 'POL-555', 'No issues', '2022-06-15');
INSERT INTO marine_fishing_permit VALUES (5002, 3002, 'PERM-2022-002', '2022-03-10', '2023-03-10', 'Salmon', 80.0, 'ZC-05', 'Trawl', 'Nina Petrova', 'CLN-112233', 'North Sea Co.', '+1987654321', 'Pending Inspection', NULL, NULL, 500.0, 'ECO-2', 45.0, 2500.0, 'Russia', 'POL-777', 'Inspection overdue', '2022-09-01');
INSERT INTO marine_fishing_permit VALUES (5003, 3003, 'PERM-2021-015', '2021-07-20', '2022-07-20', 'Cod;Haddock', 200.0, 'ZC-09', 'Longline', 'James O\'Connor', 'CLN-445566', 'Atlantic Harvest Inc', '+1122334455', 'Non-compliant', '2021-12-05', 'Mark Davis', 1500.0, 'ECO-3', 38.2, 1800.0, 'Ireland', 'POL-999', 'Quota exceeded', '2021-12-05');

-- Renewable Energy Certificate Log
CREATE TABLE renewable_energy_certificate_log
(
    cert_id                INTEGER PRIMARY KEY,
    producer_id            INTEGER NOT NULL,
    certificate_number     TEXT NOT NULL,
    issue_date             DATE NOT NULL,
    expiration_date        DATE,
    energy_type            TEXT,
    capacity_mw            REAL,
    generated_mwh          REAL,
    location_code          TEXT,
    grid_operator          TEXT,
    verification_body      TEXT,
    status                 TEXT,
    buyer_id               INTEGER,
    purchase_price_usd     REAL,
    contract_type          TEXT,
    renewable_attribute    TEXT,
    carbon_offset_tons     REAL,
    metadata_hash          TEXT,
    created_by             TEXT,
    created_timestamp      DATE DEFAULT CURRENT_DATE,
    last_modified_by       TEXT,
    last_modified_timestamp DATE,
    notes                  TEXT
);

INSERT INTO renewable_energy_certificate_log VALUES (9001, 4001, 'REC-2023-0001', '2023-02-01', NULL, 'Solar', 50.0, 180000.0, 'LOC-01', 'GridCo', 'VeriEco', 'Active', 8010, 2500000.00, 'Power Purchase Agreement', 'Solar PV', 15000.0, 'hash123abc', 'system', '2023-02-01', 'admin', NULL, 'Initial issuance');
INSERT INTO renewable_energy_certificate_log VALUES (9002, 4002, 'REC-2023-0002', '2023-03-15', NULL, 'Wind', 120.0, 500000.0, 'LOC-07', 'GridCo', 'VeriEco', 'Pending', NULL, NULL, 'Spot Market', 'Onshore Wind', 30000.0, 'hash456def', 'system', '2023-03-15', 'admin', NULL, 'Awaiting buyer assignment');
INSERT INTO renewable_energy_certificate_log VALUES (9003, 4003, 'REC-2022-0150', '2022-11-20', '2025-11-20', 'Hydro', 30.0, 90000.0, 'LOC-12', 'GridCo', 'VeriEco', 'Retired', 9025, 1200000.00, 'Long Term Contract', 'Run-of-River', 8000.0, 'hash789ghi', 'system', '2022-11-20', 'admin', NULL, 'Certificate retired after contract end');

-- Urban Tree Inventory
CREATE TABLE urban_tree_inventory
(
    tree_id                INTEGER PRIMARY KEY,
    district_id            INTEGER NOT NULL,
    species_name           TEXT NOT NULL,
    planting_date          DATE,
    height_m               REAL,
    canopy_radius_m        REAL,
    health_status          TEXT,
    condition_rating       INTEGER,
    last_pruned_date       DATE,
    soil_type              TEXT,
    irrigation_type        TEXT,
    protected_status       INTEGER,
    GPS_latitude           REAL,
    GPS_longitude          REAL,
    street_address         TEXT,
    block_number           TEXT,
    neighborhood           TEXT,
    manager_responsible    TEXT,
    maintenance_cycle_days INTEGER,
    estimated_age_years    INTEGER,
    carbon_sequestration_kg REAL,
    notes                  TEXT,
    record_created         DATE DEFAULT CURRENT_DATE,
    last_updated           DATE
);

INSERT INTO urban_tree_inventory VALUES (12001, 10, 'Quercus robur', '2005-04-12', 15.2, 6.5, 'Good', 4, '2023-06-01', 'Loam', 'Drip', 1, 45.12345, -73.56789, '123 Maple St', 'B12', 'Westside', 'John Doe', 180, 18, 1200.5, 'No issues', '2005-04-12', NULL);
INSERT INTO urban_tree_inventory VALUES (12002, 11, 'Acer saccharum', '2010-09-23', 12.0, 5.0, 'Fair', 3, '2022-09-15', 'Sandy', 'Sprinkler', 0, 45.12400, -73.56800, '456 Oak Ave', 'C34', 'Eastside', 'Emily Smith', 365, 13, 850.0, 'Minor pest damage', '2010-09-23', NULL);
INSERT INTO urban_tree_inventory VALUES (12003, 12, 'Platanus × acerifolia', '1998-05-30', 20.5, 8.2, 'Excellent', 5, '2023-01-10', 'Clay', 'None', 1, 45.12555, -73.56911, '789 Pine Rd', 'D56', 'Northside', 'Michael Lee', 90, 25, 2000.0, 'Under canopy monitoring', '1998-05-30', NULL);

-- Clinical Trial Subject Registry
CREATE TABLE clinical_trial_subject
(
    subject_id              INTEGER PRIMARY KEY,
    trial_id                INTEGER NOT NULL,
    enrollment_date         DATE NOT NULL,
    consent_date            DATE NOT NULL,
    gender                  TEXT,
    age_years               INTEGER,
    ethnicity               TEXT,
    weight_kg               REAL,
    height_cm               REAL,
    baseline_blood_pressure TEXT,
    baseline_heart_rate     INTEGER,
    medication_status       TEXT,
    smoking_status          TEXT,
    alcohol_use_frequency   TEXT,
    adverse_event_flag      INTEGER,
    visit_schedule_code     TEXT,
    primary_outcome_measure TEXT,
    secondary_outcome_measure TEXT,
    investigator_name       TEXT,
    site_location           TEXT,
    site_contact            TEXT,
    randomization_group     TEXT,
    blinding_status         TEXT,
    notes                   TEXT,
    last_update_timestamp   DATE DEFAULT CURRENT_DATE
);

INSERT INTO clinical_trial_subject VALUES (20001, 301, '2023-01-15', '2023-01-10', 'Female', 45, 'Hispanic', 68.5, 162, '120/80', 72, 'None', 'Never', 'Never', 0, 'V-SCH-01', 'Blood glucose', 'HbA1c', 'Dr. Susan Clark', 'City Hospital', '+123456789', 'Placebo', 'Double-blind', 'No issues', '2023-06-01');
INSERT INTO clinical_trial_subject VALUES (20002, 301, '2023-01-16', '2023-01-11', 'Male', 52, 'Caucasian', 85.0, 175, '130/85', 78, 'Metformin', 'Former', 'Occasional', 1, 'V-SCH-01', 'Blood glucose', 'HbA1c', 'Dr. Susan Clark', 'City Hospital', '+123456789', 'Active', 'Double-blind', 'Mild headache reported', '2023-06-02');
INSERT INTO clinical_trial_subject VALUES (20003, 302, '2023-02-05', '2023-02-01', 'Female', 37, 'Asian', 58.0, 160, '115/75', 68, 'None', 'Never', 'Never', 0, 'V-SCH-02', 'Blood pressure', 'Cholesterol', 'Dr. Ahmed Khan', 'Regional Clinic', '+987654321', 'Control', 'Single-blind', 'Baseline measurements complete', '2023-06-03');

-- Biotech Lab Equipment Registry
CREATE TABLE biotech_lab_equipment
(
    equipment_id            INTEGER PRIMARY KEY,
    lab_id                  INTEGER NOT NULL,
    equipment_name          TEXT NOT NULL,
    model_number            TEXT,
    manufacturer            TEXT,
    serial_number           TEXT,
    purchase_date           DATE,
    warranty_expiration     DATE,
    calibration_date        DATE,
    maintenance_interval_days INTEGER,
    last_maintenance_date   DATE,
    status                  TEXT,
    location_room           TEXT,
    power_requirement_kw    REAL,
    operating_temperature_c REAL,
    max_load_kg             REAL,
    software_version        TEXT,
    firmware_version        TEXT,
    compliance_cert_number  TEXT,
    certified_by            TEXT,
    usage_hours_total       REAL,
    last_inspection_date    DATE,
    inspection_outcome      TEXT,
    notes                   TEXT,
    record_created          DATE DEFAULT CURRENT_DATE
);

INSERT INTO biotech_lab_equipment VALUES (35001, 501, 'Centrifuge', 'CF-3000', 'ThermoFisher', 'SN12345', '2020-06-15', '2023-06-15', '2022-12-01', 180, '2022-12-01', 'Operational', 'Room A1', 2.5, 22.0, 500.0, 'v2.1', 'fw1.4', 'CERT-9876', 'QA Dept', 1200.0, '2023-03-15', 'Pass', 'No issues', '2020-06-15');
INSERT INTO biotech_lab_equipment VALUES (35002, 502, 'PCR Thermocycler', 'PCR-480', 'Bio-Rad', 'SN67890', '2021-03-20', '2024-03-20', '2023-01-10', 365, '2023-01-10', 'Operational', 'Room B2', 1.2, 25.0, 0.0, 'v3.0', 'fw2.0', 'CERT-5432', 'QA Dept', 800.0, '2023-02-20', 'Pass', 'Calibration due soon', '2021-03-20');
INSERT INTO biotech_lab_equipment VALUES (35003, 503, 'Laminar Flow Hood', 'LFH-1000', 'Esco', 'SN54321', '2019-11-05', '2022-11-05', '2022-07-20', 730, '2022-07-20', 'Under Maintenance', 'Room C3', 3.0, 20.0, 0.0, 'v1.5', 'fw1.0', 'CERT-1122', 'Maintenance Team', 2500.0, '2023-04-10', 'Fail - filter replacement needed', 'Filter replaced 2023-04-10', '2019-11-05');

-- Cultural Heritage Site Registry
CREATE TABLE cultural_heritage_site
(
    site_id                 INTEGER PRIMARY KEY,
    site_name               TEXT NOT NULL,
    location_city           TEXT,
    location_country        TEXT,
    designation_year        INTEGER,
    heritage_type           TEXT,
    managing_authority      TEXT,
    latitude                REAL,
    longitude               REAL,
    area_sq_m               REAL,
    visitor_capacity_daily INTEGER,
    annual_visitors_est    INTEGER,
    conservation_status    TEXT,
    last_restoration_date   DATE,
    restoration_cost_usd    REAL,
    protective_zone_code    TEXT,
    UNESCO_status           TEXT,
    associated_events       TEXT,
    accessibility_rating    INTEGER,
    parking_available       INTEGER,
    onsite_guides           INTEGER,
    educational_programs    TEXT,
    research_permits_issued INTEGER,
    notes                   TEXT,
    record_created          DATE DEFAULT CURRENT_DATE
);

INSERT INTO cultural_heritage_site VALUES (8001, 'Old Fortress', 'Krakow', 'Poland', 1995, 'Architectural', 'National Heritage Board', 50.0647, 19.9450, 35000.0, 1200, 450000, 'Stable', '2022-05-10', 2500000.00, 'PZ-01', 'Yes', 'Medieval reenactments', 4, 1, 5, 'School tours, workshops', 30, 'Ongoing preservation project', '2022-05-10');
INSERT INTO cultural_heritage_site VALUES (8002, 'Ancient Burial Mound', 'Yunnan', 'China', 2008, 'Archaeological', 'Provincial Cultural Dept.', 24.8800, 102.8300, 15000.0, 300, 120000, 'Vulnerable', '2021-11-20', 750000.00, 'YN-03', 'No', 'Annual excavation festival', 3, 0, 2, 'Junior archaeology camp', 12, 'Erosion control measures in place', '2021-11-20');
INSERT INTO cultural_heritage_site VALUES (8003, 'Historic Trading Post', 'Santa Fe', 'USA', 1987, 'Historical', 'State Preservation Office', 35.6870, -105.9378, 8000.0, 800, 200000, 'Stable', '2020-08-15', 1200000.00, 'NM-07', 'No', 'Living history weekends', 5, 1, 4, 'Docent program', 20, 'Recent roof restoration completed', '2020-08-15');

-- Satellite Ground Station Inventory
CREATE TABLE satellite_ground_station
(
    station_id              INTEGER PRIMARY KEY,
    station_name            TEXT NOT NULL,
    operator_company        TEXT,
    location_city           TEXT,
    location_country        TEXT,
    latitude                REAL,
    longitude               REAL,
    elevation_m             REAL,
    frequency_band          TEXT,
    antenna_diameter_m      REAL,
    max_power_watts         REAL,
    modulation_type         TEXT,
    encryption_standard     TEXT,
    uplink_capacity_mbps    REAL,
    downlink_capacity_mbps  REAL,
    operational_status      TEXT,
    last_maintenance_date   DATE,
    maintenance_interval_days INTEGER,
    software_version        TEXT,
    firmware_version        TEXT,
    backup_power_source     TEXT,
    redundancy_level        INTEGER,
    notes                   TEXT,
    record_created          DATE DEFAULT CURRENT_DATE,
    last_updated            DATE
);

INSERT INTO satellite_ground_station VALUES (9101, 'North Ridge Station', 'SpaceComm Ltd', 'Moscow', 'Russia', 55.7512, 37.6184, 200.0, 'X', 12.0, 5000.0, 'QPSK', 'AES256', 1500.0, 2000.0, 'Active', '2023-04-10', 180, 'v5.4', 'fw3.2', 'Diesel Generator', 2, 'Supports low earth orbit satellites', '2023-04-10', NULL);
INSERT INTO satellite_ground_station VALUES (9102, 'Pacific Edge Ground', 'Orbital Networks', 'Los Angeles', 'USA', 34.0522, -118.2437, 150.0, 'Ka', 8.5, 3000.0, '8PSK', 'AES128', 1200.0, 1600.0, 'Active', '2023-02-18', 365, 'v6.1', 'fw4.0', 'Battery Bank', 1, 'Primary hub for weather satellite downlink', '2023-02-18', NULL);
INSERT INTO satellite_ground_station VALUES (9103, 'Southern Cross Station', 'GlobalSat', 'Sydney', 'Australia', -33.8688, 151.2093, 250.0, 'S', 10.0, 4000.0, 'BPSK', 'None', 1000.0, 1300.0, 'Under Maintenance', '2022-11-05', 730, 'v4.8', 'fw2.5', 'Solar Panels', 3, 'Scheduled upgrade pending', '2022-11-05', NULL);

-- Smart City IoT Device Registry
CREATE TABLE smart_city_iot_device
(
    device_id               INTEGER PRIMARY KEY,
    device_type             TEXT NOT NULL,
    manufacturer            TEXT,
    model_number            TEXT,
    firmware_version        TEXT,
    installation_date       DATE,
    last_maintenance_date   DATE,
    location_latitude       REAL,
    location_longitude      REAL,
    city_zone_code          TEXT,
    connectivity_method     TEXT,
    power_source            TEXT,
    battery_capacity_mah    INTEGER,
    sensor_count            INTEGER,
    data_rate_kbps          REAL,
    encryption_enabled      INTEGER,
    status                  TEXT,
    assigned_manager        TEXT,
    maintenance_interval_days INTEGER,
    calibration_required    INTEGER,
    last_calibration_date   DATE,
    firmware_update_pending INTEGER,
    notes                   TEXT,
    record_created          DATE DEFAULT CURRENT_DATE,
    last_updated            DATE
);

INSERT INTO smart_city_iot_device VALUES (15001, 'Air Quality Sensor', 'EnviroTech', 'AQ-200', 'v1.0.3', '2022-01-15', '2023-06-01', 40.7128, -74.0060, 'Z01', 'LoRaWAN', 'Battery', 2000, 3, 250.5, 1, 'Active', 'Alice Johnson', 180, 1, '2023-05-20', 0, 'Located on traffic light pole', '2022-01-15', NULL);
INSERT INTO smart_city_iot_device VALUES (15002, 'Smart Street Light', 'LumenCo', 'SL-500', 'v2.2.1', '2021-07-10', '2023-04-12', 34.0522, -118.2437, 'Z02', 'Cellular', 'Mains', NULL, 0, 0.0, 1, 'Active', 'Bob Martinez', 365, 0, NULL, 1, 'LED upgrade planned', '2021-07-10', NULL);
INSERT INTO smart_city_iot_device VALUES (15003, 'Parking Occupancy Detector', 'ParkSense', 'PDX-100', 'v3.0.0', '2020-03-05', '2023-01-30', 51.5074, -0.1278, 'Z03', 'WiFi', 'Solar', 5000, 1, 150.0, 1, 'Inactive', 'Catherine Lee', 730, 1, '2022-12-15', 0, 'Awaiting firmware rollout', '2020-03-05', NULL);