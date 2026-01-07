-- Policy information for regional transportation initiatives
CREATE TABLE regional_transport_policy
(
    policy_id                INTEGER PRIMARY KEY,
    region_code              TEXT    NOT NULL,
    effective_date           DATE    NOT NULL,
    policy_type              TEXT    NOT NULL,
    vehicle_emission_limit   REAL    NOT NULL,
    public_transit_subsidy   REAL    NOT NULL,
    bike_lane_km             INTEGER NOT NULL,
    pedestrian_zone          INTEGER NOT NULL,          -- 0 = false, 1 = true
    average_commute_time    REAL    NOT NULL,
    carbon_offset_target     REAL    NOT NULL,
    funding_source           TEXT    NOT NULL,
    approved_by              TEXT    NOT NULL,
    revision_number          INTEGER NOT NULL,
    notes                    TEXT,
    created_at               DATE    NOT NULL,
    updated_at               DATE    NOT NULL,
    monitoring_frequency     TEXT    NOT NULL,
    enforcement_agency       TEXT    NOT NULL,
    compliance_rate          REAL    NOT NULL,
    penalty_amount           REAL    NOT NULL,
    last_audit_date          DATE    NOT NULL,
    status                   TEXT    NOT NULL
);
INSERT INTO regional_transport_policy VALUES (1, 'R01', '2023-01-01', 'EmissionControl', 45.5, 1200000.00, 150, 1, 32.5, 20000.0, 'StateGrant', 'DeptTransport', 3, 'Initial rollout', '2023-01-01', '2023-06-01', 'Quarterly', 'EnvAgency', 92.5, 5000.00, '2023-05-15', 'Active');
INSERT INTO regional_transport_policy VALUES (2, 'R02', '2022-07-15', 'BikeInfrastructure', 0.0, 800000.00, 80, 1, 28.0, 0.0, 'MunicipalBond', 'CityCouncil', 5, 'Expanded network', '2022-07-15', '2023-01-10', 'Annual', 'TransportDept', 98.0, 0.00, '2022-12-20', 'Active');
INSERT INTO regional_transport_policy VALUES (3, 'R03', '2021-04-20', 'TransitSubsidy', 0.0, 1500000.00, 0, 0, 35.0, 0.0, 'FederalFund', 'GovAgency', 2, 'Reduced fares', '2021-04-20', '2022-11-05', 'Biannual', 'TransitAuthority', 85.0, 2500.00, '2022-09-30', 'Suspended');

-- Log of digital payment gateway events
CREATE TABLE digital_payment_gateway_log
(
    event_id                 INTEGER PRIMARY KEY,
    gateway_id               TEXT    NOT NULL,
    event_timestamp          DATETIME NOT NULL,
    event_type               TEXT    NOT NULL,
    source_ip                TEXT    NOT NULL,
    destination_ip           TEXT    NOT NULL,
    transaction_id           TEXT,
    amount                   REAL,
    currency                 TEXT,
    response_code            TEXT,
    latency_ms               INTEGER,
    user_agent               TEXT,
    client_id                INTEGER,
    merchant_id              INTEGER,
    protocol_version         TEXT,
    ssl_cipher               TEXT,
    error_message            TEXT,
    processed_by             TEXT,
    retry_count              INTEGER,
    session_id               TEXT,
    geo_location             TEXT,
    compliance_flag          INTEGER,
    settlement_status        TEXT,
    audit_log_id             INTEGER
);
INSERT INTO digital_payment_gateway_log VALUES (101, 'GW01', '2023-08-01 10:15:32', 'TransactionStart', '192.168.1.10', '10.0.0.5', 'TXN12345', 250.75, 'USD', '200', 120, 'Chrome', 1001, 2001, 'v1.2', 'TLS_AES_256_GCM', NULL, 'ProcessorA', 0, 'SID9876', 'NY_US', 1, 'Pending', 5001);
INSERT INTO digital_payment_gateway_log VALUES (102, 'GW01', '2023-08-01 10:15:34', 'TransactionEnd', '192.168.1.10', '10.0.0.5', 'TXN12345', 250.75, 'USD', '200', 118, 'Chrome', 1001, 2001, 'v1.2', 'TLS_AES_256_GCM', NULL, 'ProcessorA', 0, 'SID9876', 'NY_US', 1, 'Completed', 5002);
INSERT INTO digital_payment_gateway_log VALUES (103, 'GW02', '2023-08-01 11:05:12', 'AuthFailure', '172.16.4.22', '10.0.0.8', NULL, NULL, NULL, '401', 85, 'Firefox', NULL, NULL, 'v2.0', 'TLS_CHACHA20_POLY1305', 'Invalid credentials', 'ProcessorB', 1, 'SID5432', 'CA_US', 0, 'Failed', 5003);

-- Contracts for cloud services
CREATE TABLE cloud_service_contract
(
    contract_id              INTEGER PRIMARY KEY,
    provider_name            TEXT    NOT NULL,
    service_type             TEXT    NOT NULL,
    contract_start_date      DATE    NOT NULL,
    contract_end_date        DATE    NOT NULL,
    monthly_fee_usd          REAL    NOT NULL,
    annual_cap_gb            INTEGER NOT NULL,
    sla_uptime_percent       REAL    NOT NULL,
    support_level            TEXT    NOT NULL,
    contact_person           TEXT    NOT NULL,
    contact_email            TEXT    NOT NULL,
    billing_cycle            TEXT    NOT NULL,
    auto_renew               INTEGER NOT NULL,   -- 0 = false, 1 = true
    termination_notice_days INTEGER NOT NULL,
    data_residency_country   TEXT    NOT NULL,
    encryption_at_rest       TEXT    NOT NULL,
    encryption_in_transit    TEXT    NOT NULL,
    backup_frequency         TEXT    NOT NULL,
    backup_retention_days    INTEGER NOT NULL,
    compliance_certificates  TEXT,
    notes                    TEXT,
    created_by               TEXT    NOT NULL,
    created_at               DATE    NOT NULL,
    updated_at               DATE    NOT NULL,
    status                   TEXT    NOT NULL
);
INSERT INTO cloud_service_contract VALUES (3001, 'CloudNova', 'IaaS', '2022-03-01', '2025-02-28', 4500.00, 20000, 99.9, 'Premium', 'Alice Smith', 'alice.smith@cloudnova.com', 'Monthly', 1, 30, 'USA', 'AES256', 'TLS1.3', 'Daily', 30, 'ISO27001, SOC2', 'Initial contract', 'SystemAdmin', '2022-03-01', '2022-03-01', 'Active');
INSERT INTO cloud_service_contract VALUES (3002, 'DataSphere', 'SaaS', '2021-07-15', '2024-07-14', 1200.00, 5000, 99.5, 'Standard', 'Bob Lee', 'bob.lee@datasphere.com', 'Annual', 0, 60, 'Germany', 'AES256', 'TLS1.2', 'Weekly', 14, 'GDPR', 'Renewal pending', 'Procurement', '2021-07-15', '2023-01-10', 'PendingRenewal');
INSERT INTO cloud_service_contract VALUES (3003, 'SecureCloud', 'PaaS', '2023-01-01', '2026-12-31', 3100.00, 15000, 99.99, 'Enterprise', 'Carol Tan', 'carol.tan@securecloud.com', 'Quarterly', 1, 45, 'Canada', 'AES256', 'TLS1.3', 'Daily', 90, 'ISO27001, PCI-DSS', 'Added new modules', 'ITManager', '2023-01-01', '2023-06-01', 'Active');

-- Inventory of trees in urban areas
CREATE TABLE urban_tree_canopy
(
    canopy_id                INTEGER PRIMARY KEY,
    city_code                TEXT    NOT NULL,
    park_name                TEXT    NOT NULL,
    tree_species             TEXT    NOT NULL,
    planting_date            DATE,
    height_meters            REAL,
    canopy_radius_meters     REAL,
    health_status            TEXT,
    last_pruned_date         DATE,
    maintenance_schedule     TEXT,
    gps_latitude             REAL,
    gps_longitude            REAL,
    soil_type                TEXT,
    irrigation_type          TEXT,
    shade_coverage_percent   REAL,
    carbon_sequestration_kg  REAL,
    leaf_area_index          REAL,
    biodiversity_index       REAL,
    protected_status         INTEGER,   -- 0 = no, 1 = yes
    notes                    TEXT,
    surveyed_by              TEXT,
    survey_date              DATE,
    data_source              TEXT,
    created_at               DATE,
    updated_at               DATE,
    status                   TEXT
);
INSERT INTO urban_tree_canopy VALUES (9001, 'C01', 'CentralPark', 'QuercusRubra', '2015-04-20', 15.2, 6.8, 'Good', '2023-03-10', 'Annual', 40.7128, -74.0060, 'Loam', 'Drip', 75.0, 120.5, 3.2, 0.85, 1, 'Mature specimen', 'EnvTeam', '2023-04-01', 'FieldSurvey', '2023-04-01', '2023-04-01', 'Active');
INSERT INTO urban_tree_canopy VALUES (9002, 'C01', 'RiversidePark', 'AcerSaccharum', '2018-09-12', 12.0, 5.1, 'Fair', '2022-11-05', 'Biannual', 40.7135, -74.0012, 'Silt', 'Sprinkler', 60.0, 90.0, 2.8, 0.70, 0, 'Needs pest control', 'EnvTeam', '2022-12-01', 'AerialSurvey', '2022-12-01', '2022-12-01', 'Monitoring');
INSERT INTO urban_tree_canopy VALUES (9003, 'C02', 'LakeSide', 'PinusStrobus', '2020-05-30', 8.5, 4.0, 'Excellent', '2023-05-20', 'Annual', 41.0012, -73.9500, 'Sand', 'None', 80.0, 70.3, 3.5, 0.90, 1, 'Recent planting', 'EnvTeam', '2023-05-25', 'GroundSurvey', '2023-05-25', '2023-05-25', 'Active');

-- Data about marine conservation areas
CREATE TABLE marine_conservation_area
(
    area_id                  INTEGER PRIMARY KEY,
    name                     TEXT    NOT NULL,
    country                  TEXT    NOT NULL,
    designation_year         INTEGER NOT NULL,
    protected_status         TEXT    NOT NULL,
    surface_area_km2         REAL    NOT NULL,
    habitat_type             TEXT    NOT NULL,
    primary_species          TEXT,
    threat_level             TEXT,
    monitoring_frequency     TEXT,
    last_assessment_date     DATE,
    managing_authority       TEXT,
    funding_source           TEXT,
    permit_required          INTEGER,   -- 0 = no, 1 = yes
    depth_range_meters       TEXT,
    water_temperature_c      REAL,
    salinity_psu             REAL,
    biodiversity_index       REAL,
    coral_cover_percent      REAL,
    fish_stock_estimate      INTEGER,
    tourism_allowed          INTEGER,   -- 0 = no, 1 = yes
    research_permits_issued  INTEGER,
    notes                    TEXT,
    created_at               DATE,
    updated_at               DATE,
    status                   TEXT
);
INSERT INTO marine_conservation_area VALUES (4001, 'GreatBarrier', 'Australia', 1975, 'NationalPark', 344400.0, 'CoralReef', 'AcroporaPalmata', 'Medium', 'Annual', '2022-09-15', 'DeptEnvironment', 'GovernmentGrant', 0, '0-30', 27.5, 35.0, 0.92, 45.0, 1500000, 1, 250, 'World heritage site', '2022-09-15', '2022-09-15', 'Active');
INSERT INTO marine_conservation_area VALUES (4002, 'BonaireMarinePark', 'NetherlandsAntilles', 1987, 'MarinePark', 160.0, 'Seagrass', 'ThalassiaTestudinum', 'Low', 'Biannual', '2023-01-20', 'MarineAuthority', 'PrivateDonations', 1, '5-25', 26.0, 34.5, 0.78, 12.0, 45000, 0, 30, 'Popular diving spot', '2023-01-20', '2023-01-20', 'Active');
INSERT INTO marine_conservation_area VALUES (4003, 'GalapagosMarineReserve', 'Ecuador', 1998, 'Reserve', 13300.0, 'Islands', 'Marine Iguana', 'High', 'Quarterly', '2023-05-10', 'NationalMarineAgency', 'InternationalAid', 1, '0-50', 22.3, 35.8, 0.85, 30.0, 250000, 0, 120, 'Endemic species protection', '2023-05-10', '2023-05-10', 'Active');

-- Ground stations for satellite communications
CREATE TABLE satellite_ground_station
(
    station_id               INTEGER PRIMARY KEY,
    station_code             TEXT    NOT NULL,
    location_name            TEXT    NOT NULL,
    latitude                 REAL    NOT NULL,
    longitude                REAL    NOT NULL,
    elevation_meters         REAL    NOT NULL,
    antenna_diameter_meters  REAL    NOT NULL,
    frequency_band           TEXT    NOT NULL,
    modem_type               TEXT    NOT NULL,
    power_output_watts       REAL    NOT NULL,
    operational_status       TEXT    NOT NULL,
    installed_date           DATE    NOT NULL,
    last_maintenance_date    DATE,
    maintenance_interval_days INTEGER,
    operator_company         TEXT,
    contact_email            TEXT,
    data_rate_mbps           REAL,
    supported_satellites     TEXT,
    redundancy_level         INTEGER,
    backup_power_type        TEXT,
    notes                    TEXT,
    created_by               TEXT,
    created_at               DATE,
    updated_at               DATE,
    status                   TEXT
);
INSERT INTO satellite_ground_station VALUES (501, 'SGS01', 'MountKirk', 45.1234, -122.5678, 850.0, 12.0, 'Ka', 'ModemX', 1500.0, 'Active', '2020-06-15', '2023-04-01', 180, 'SpaceCom', 'tech@spacecom.com', 500.0, 'SatA,SatB', 2, 'DieselGenerator', 'Primary station for Ka band', 'Admin', '2020-06-15', '2023-04-01', 'Active');
INSERT INTO satellite_ground_station VALUES (502, 'SGS02', 'DesertBase', 33.9876, -115.4321, 300.0, 8.5, 'X', 'ModemY', 800.0, 'Maintenance', '2019-03-10', '2023-05-20', 365, 'OrbitNet', 'ops@orbitnet.com', 250.0, 'SatC', 1, 'BatteryBackup', 'Scheduled upgrade in Q3', 'OpsLead', '2019-03-10', '2023-05-20', 'Inactive');
INSERT INTO satellite_ground_station VALUES (503, 'SGS03', 'CoastalSite', 36.7783, -119.4179, 15.0, 5.0, 'L', 'ModemZ', 500.0, 'Active', '2021-11-05', '2023-02-15', 90, 'GlobalSat', 'support@globalsat.com', 150.0, 'SatD,SatE', 3, 'SolarPanels', 'L‑band backup station', 'Engineer', '2021-11-05', '2023-02-15', 'Active');

-- Maintenance records for renewable energy installations
CREATE TABLE renewable_energy_maintenance
(
    maintenance_id           INTEGER PRIMARY KEY,
    asset_id                 TEXT    NOT NULL,
    asset_type               TEXT    NOT NULL,
    location_id              TEXT    NOT NULL,
    maintenance_date         DATE    NOT NULL,
    technician_name          TEXT    NOT NULL,
    work_order_number        TEXT    NOT NULL,
    description_of_work      TEXT,
    downtime_hours           REAL,
    parts_replaced           TEXT,
    cost_usd                 REAL,
    safety_incident          INTEGER,   -- 0 = no, 1 = yes
    follow_up_required       INTEGER,   -- 0 = no, 1 = yes
    next_scheduled_date      DATE,
    warranty_claim_number    TEXT,
    vendor_contact           TEXT,
    compliance_check_passed  INTEGER,   -- 0 = fail, 1 = pass
    notes                    TEXT,
    created_by               TEXT,
    created_at               DATE,
    updated_at               DATE,
    status                   TEXT
);
INSERT INTO renewable_energy_maintenance VALUES (7001, 'WF001', 'WindTurbine', 'LOC01', '2023-03-12', 'John Doe', 'WO12345', 'Gearbox oil replacement', 4.5, 'GearboxOil,Seal', 1200.00, 0, 1, '2023-09-12', 'WC7890', 'WindTech', 1, 'All systems nominal after service', 'Supervisor', '2023-03-12', '2023-03-12', 'Completed');
INSERT INTO renewable_energy_maintenance VALUES (7002, 'PV045', 'SolarPanelArray', 'LOC02', '2023-04-05', 'Maria Lee', 'WO12346', 'Inverter inspection and cleaning', 2.0, 'CleaningKit', 800.00, 0, 0, NULL, NULL, 'SolarSolutions', 1, 'No issues found', 'Supervisor', '2023-04-05', '2023-04-05', 'Completed');
INSERT INTO renewable_energy_maintenance VALUES (7003, 'HYD12', 'HydroPlant', 'LOC03', '2023-02-20', 'Ahmed Khan', 'WO12347', 'Turbine blade pitch adjustment', 3.0, 'PitchActuator', 1500.00, 1, 1, '2023-08-20', 'HC4567', 'HydroWorks', 0, 'Minor safety incident reported, investigation pending', 'Supervisor', '2023-02-20', '2023-02-20', 'PendingReview');

-- Funding records for public art projects
CREATE TABLE public_art_funding
(
    funding_id               INTEGER PRIMARY KEY,
    project_name             TEXT    NOT NULL,
    artist_name              TEXT    NOT NULL,
    grant_amount_usd         REAL    NOT NULL,
    funding_agency           TEXT    NOT NULL,
    application_date         DATE    NOT NULL,
    approval_date            DATE,
    start_date               DATE,
    end_date                 DATE,
    location_description     TEXT,
    medium_used              TEXT,
    installation_type        TEXT,
    community_engagement     TEXT,
    maintenance_budget_usd   REAL,
    expected_visitors_per_year INTEGER,
    accessibility_features   TEXT,
    sustainability_plan      TEXT,
    notes                    TEXT,
    created_by               TEXT,
    created_at               DATE,
    updated_at               DATE,
    status                   TEXT
);
INSERT INTO public_art_funding VALUES (8001, 'RiverFlow', 'Lena Ortiz', 75000.00, 'CityArtsCouncil', '2022-05-10', '2022-08-15', '2023-01-01', '2023-12-31', 'Riverfront Park', 'Metal', 'Sculpture', 'Workshops, Tours', 10000.00, 20000, 'Ramp, Braille plaques', 'Recyclable materials', 'Inaugural public piece', 'Admin', '2022-05-10', '2022-05-10', 'Active');
INSERT INTO public_art_funding VALUES (8002, 'SkyMural', 'Ravi Patel', 50000.00, 'StateCulturalFund', '2021-09-01', '2021-11-20', '2022-03-15', '2022-09-15', 'Downtown Plaza', 'Paint', 'Mural', 'School outreach', 5000.00, 15000, 'Low‑vision contrast', 'Eco‑friendly paint', 'Community co‑design', 'Coordinator', '2021-09-01', '2021-09-01', 'Completed');
INSERT INTO public_art_funding VALUES (8003, 'LightWave', 'Aisha Khan', 62000.00, 'NationalArtsEndowment', '2023-01-05', NULL, NULL, NULL, 'City Hall Atrium', 'LED', 'Installation', 'Public lectures', 8000.00, 30000, 'Audio description', 'Solar powered', 'Pending design finalization', 'ProjectLead', '2023-01-05', '2023-01-05', 'Pending');

-- Healthcare quality metrics for hospitals
CREATE TABLE healthcare_quality_metric
(
    metric_id                INTEGER PRIMARY KEY,
    hospital_id              INTEGER NOT NULL,
    metric_name              TEXT    NOT NULL,
    measurement_date         DATE    NOT NULL,
    value_numeric            REAL,
    value_category           TEXT,
    target_value             REAL,
    deviation_percent        REAL,
    source_system            TEXT,
    data_quality_flag        INTEGER,   -- 0 = low, 1 = medium, 2 = high
    reporting_frequency      TEXT,
    responsible_department   TEXT,
    notes                    TEXT,
    created_by               TEXT,
    created_at               DATE,
    updated_at               DATE,
    status                   TEXT
);
INSERT INTO healthcare_quality_metric VALUES (9001, 201, 'ReadmissionRate30Days', '2023-06-30', 12.5, NULL, 10.0, 25.0, 'EHR', 2, 'Monthly', 'QualityDept', 'Slightly above target', 'AnalystA', '2023-07-01', '2023-07-01', 'Reviewed');
INSERT INTO healthcare_quality_metric VALUES (9002, 202, 'PatientSatisfactionScore', '2023-06-30', NULL, 'High', 85.0, -5.0, 'SurveyTool', 1, 'Quarterly', 'PatientRelations', 'Improved from previous quarter', 'AnalystB', '2023-07-01', '2023-07-01', 'Reviewed');
INSERT INTO healthcare_quality_metric VALUES (9003, 203, 'AverageLengthOfStay', '2023-06-30', 4.2, NULL, 3.8, 10.5, 'HospitalInfoSys', 2, 'Monthly', 'Operations', 'Within acceptable range', 'AnalystC', '2023-07-01', '2023-07-01', 'Reviewed');

-- Records of AI model training runs
CREATE TABLE ai_model_training_run
(
    run_id                   INTEGER PRIMARY KEY,
    model_name               TEXT    NOT NULL,
    version                  TEXT    NOT NULL,
    start_timestamp          DATETIME NOT NULL,
    end_timestamp            DATETIME,
    training_data_snapshot   TEXT,
    algorithm                TEXT,
    hyperparameters          TEXT,
    epochs_completed         INTEGER,
    training_accuracy        REAL,
    validation_accuracy      REAL,
    loss_value               REAL,
    hardware_type            TEXT,
    gpu_count                INTEGER,
    cpu_cores                INTEGER,
    memory_gb                REAL,
    storage_gb               REAL,
    framework                TEXT,
    library_version          TEXT,
    author_user_id           INTEGER,
    notes                    TEXT,
    created_at               DATE,
    updated_at               DATE,
    status                   TEXT
);
INSERT INTO ai_model_training_run VALUES (10001, 'FraudDetector', 'v1.2', '2023-05-01 08:00:00', '2023-05-01 12:30:00', 'snapshot20230501', 'GradientBoosting', 'max_depth=5,learning_rate=0.1', 10, 0.953, 0.921, 0.085, 'GPU', 2, 16, 64.0, 200.0, 'TensorFlow', '2.8.0', 501, 'Successful run with balanced data', '2023-05-01', '2023-05-01', 'Completed');
INSERT INTO ai_model_training_run VALUES (10002, 'ChurnPredictor', 'v3.0', '2023-06-10 09:15:00', '2023-06-10 14:45:00', 'snapshot20230610', 'NeuralNetwork', 'layers=3,units=128,dropout=0.2', 20, 0.887, 0.845, 0.132, 'CPU', 0, 32, 128.0, 500.0, 'PyTorch', '1.12.1', 502, 'Overfitting observed, regularization needed', '2023-06-10', '2023-06-10', 'Completed');
INSERT INTO ai_model_training_run VALUES (10003, 'CreditScoring', 'v2.1', '2023-07-15 07:00:00', NULL, 'snapshot20230715', 'RandomForest', 'trees=200,max_features=auto', 0, NULL, NULL, NULL, 'GPU', 1, 8, 32.0, 100.0, 'ScikitLearn', '1.3.0', 503, 'Run aborted due to out‑of‑memory error', '2023-07-15', '2023-07-15', 'Failed');