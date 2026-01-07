-- Research grant allocation details
CREATE TABLE research_grant_allocation
(
    grant_id               INTEGER PRIMARY KEY,
    project_id             INTEGER NOT NULL,
    agency                 TEXT NOT NULL,
    fiscal_year            INTEGER NOT NULL,
    amount_requested       REAL NOT NULL,
    amount_approved        REAL NOT NULL,
    start_date             DATE NOT NULL,
    end_date               DATE NOT NULL,
    principal_investigator TEXT NOT NULL,
    pi_department          TEXT NOT NULL,
    co_pi                  TEXT,
    status                 TEXT NOT NULL,
    review_score           REAL,
    funding_type           TEXT,
    grant_type             TEXT,
    award_number           TEXT,
    expiration_date        DATE,
    reporting_frequency    TEXT,
    compliance_status      TEXT,
    notes                  TEXT
);

INSERT INTO research_grant_allocation VALUES (1, 1001, "NationalScienceFoundation", 2023, 500000.00, 450000.00, "2023-06-01", "2025-05-31", "DrSmith", "Physics", "DrJones", "Approved", 4.5, "Federal", "Research", "NSF-2023-001", "2025-05-31", "Annual", "Compliant", "First phase completed");
INSERT INTO research_grant_allocation VALUES (2, 1002, "HealthResearchCouncil", 2022, 300000.00, 300000.00, "2022-01-15", "2024-12-31", "DrLee", "Biology", NULL, "Active", 4.8, "Grant", "Study", "HRC-2022-045", "2024-12-31", "Semiannual", "Compliant", "Data collection ongoing");
INSERT INTO research_grant_allocation VALUES (3, 1003, "EducationInnovationFund", 2021, 200000.00, 180000.00, "2021-09-01", "2023-08-31", "DrPatel", "Education", "DrKim", "Closed", 3.9, "Private", "Pilot", "EIF-2021-009", "2023-08-31", "Quarterly", "Closed", "Project successfully completed");

-- Environmental sensor station registry
CREATE TABLE environmental_sensor_station
(
    station_id               INTEGER PRIMARY KEY,
    name                     TEXT NOT NULL,
    latitude                 REAL NOT NULL,
    longitude                REAL NOT NULL,
    elevation                INTEGER,
    installed_date           DATE NOT NULL,
    sensor_type              TEXT NOT NULL,
    measurement_unit         TEXT NOT NULL,
    calibration_date         DATE,
    firmware_version         TEXT,
    battery_level            REAL,
    connectivity_status      TEXT,
    data_upload_interval     INTEGER,
    last_maintenance         DATE,
    responsible_technician   TEXT,
    region_code              TEXT,
    urban_rural_indicator    TEXT,
    data_quality_flag        TEXT,
    maintenance_contract     TEXT,
    notes                    TEXT,
    owner_agency             TEXT,
    warranty_expiry          DATE
);

INSERT INTO environmental_sensor_station VALUES (101, "RiverValley", 45.1234, -122.5678, 250, "2020-04-12", "Temperature", "Celsius", "2022-03-01", "v2.1", 85.5, "Online", "2023-02-15", "AliceBrown", "RV01", "Rural", "Good", "ContractA", "No issues", "EnvAgency", "2025-04-12");
INSERT INTO environmental_sensor_station VALUES (102, "CityCenter", 40.7128, -74.0060, 15, "2019-09-30", "AirQuality", "PM2.5", "2021-11-20", "v3.0", 60.0, "Online", "2023-01-10", "BobSmith", "CC02", "Urban", "Moderate", "ContractB", "Calibration needed", "MetroEnv", "2024-09-30");
INSERT INTO environmental_sensor_station VALUES (103, "MountainPeak", 35.6895, 139.6917, 800, "2021-07-05", "Humidity", "Percent", "2022-12-12", "v1.8", 92.0, "Offline", "2023-03-20", "CarolLee", "MP03", "Rural", "Excellent", "ContractC", "Battery replacement", "NationalEnv", "2026-07-05");

-- Fleet vehicle maintenance records
CREATE TABLE fleet_vehicle_maintenance
(
    maintenance_id          INTEGER PRIMARY KEY,
    vehicle_id              INTEGER NOT NULL,
    maintenance_date        DATE NOT NULL,
    odometer                INTEGER NOT NULL,
    service_center          TEXT NOT NULL,
    service_type            TEXT NOT NULL,
    labor_hours             REAL,
    labor_cost              REAL,
    parts_cost              REAL,
    total_cost              REAL,
    next_due_km             INTEGER,
    next_due_date           DATE,
    inspector               TEXT,
    warranty_covered        TEXT,
    notes                   TEXT,
    fuel_type               TEXT,
    engine_hours            REAL,
    tire_pressure           REAL,
    oil_change              INTEGER,
    brake_inspection        INTEGER,
    alignment_check         INTEGER
);

INSERT INTO fleet_vehicle_maintenance VALUES (5001, 3001, "2023-03-10", 45200, "AutoGarageOne", "FullService", 5.5, 275.00, 180.00, 455.00, 50000, "2023-09-10", "MikeDavis", "Yes", "Replaced brake pads", "Diesel", 1500.0, 35.0, 1, 1, 0);
INSERT INTO fleet_vehicle_maintenance VALUES (5002, 3002, "2022-11-22", 128000, "SpeedyRepair", "OilChange", 1.0, 45.00, 20.00, 65.00, 132000, "2023-05-22", "SaraKim", "No", "Synthetic oil used", "Petrol", 3200.0, 33.5, 1, 0, 0);
INSERT INTO fleet_vehicle_maintenance VALUES (5003, 3003, "2023-01-15", 75200, "FleetCenter", "TireRotation", 2.0, 80.00, 0.00, 80.00, 80000, "2023-07-15", "JohnLee", "Yes", "All tires balanced", "Hybrid", 2100.0, 34.0, 0, 0, 1);

-- Digital asset registry
CREATE TABLE digital_asset_registry
(
    asset_id                INTEGER PRIMARY KEY,
    asset_type              TEXT NOT NULL,
    asset_name              TEXT NOT NULL,
    file_path               TEXT NOT NULL,
    size_bytes              INTEGER NOT NULL,
    checksum                TEXT,
    created_at              DATE,
    modified_at             DATE,
    owner_user              TEXT,
    access_level            TEXT,
    encryption_status       TEXT,
    retention_policy        TEXT,
    archival_location       TEXT,
    usage_count             INTEGER,
    last_accessed           DATE,
    compliance_tag          TEXT,
    storage_class           TEXT,
    version                 INTEGER,
    description             TEXT,
    tags                    TEXT
);

INSERT INTO digital_asset_registry VALUES (9001, "Image", "CampusMap", "/assets/images/campus_map.png", 2048000, "a1b2c3d4", "2022-05-01", "2023-02-10", "admin", "Public", "None", "Indefinite", "ArchiveA", 12, "2023-02-10", "GDPR", "Standard", 3, "High resolution campus map", "map,campus,visual");
INSERT INTO digital_asset_registry VALUES (9002, "Document", "PolicyManual", "/docs/policy_manual.pdf", 524288, "d4e5f6g7", "2021-01-15", "2022-12-20", "compliance_officer", "Restricted", "AES256", "7Years", "ArchiveB", 5, "2022-12-20", "PCI", "Cold", 2, "Corporate policy manual", "policy,compliance,doc");
INSERT INTO digital_asset_registry VALUES (9003, "Video", "ProductLaunch", "/media/videos/product_launch.mp4", 1073741824, "h8i9j0k1", "2023-03-01", "2023-03-01", "marketing", "Internal", "AES256", "5Years", "ArchiveC", 1, "2023-03-01", "None", "Hot", 1, "Launch video for new product", "video,launch,marketing");

-- Public transport schedule
CREATE TABLE public_transport_schedule
(
    schedule_id            INTEGER PRIMARY KEY,
    route_id               TEXT NOT NULL,
    vehicle_type           TEXT NOT NULL,
    departure_time         TEXT NOT NULL,
    arrival_time           TEXT NOT NULL,
    stop_sequence          INTEGER NOT NULL,
    stop_id                TEXT NOT NULL,
    stop_name              TEXT NOT NULL,
    day_type               TEXT NOT NULL,
    service_day            DATE,
    frequency_minutes      INTEGER,
    driver_id              INTEGER,
    bus_capacity           INTEGER,
    wheelchair_accessible TEXT,
    fare_zone              INTEGER,
    fare_amount            REAL,
    mileage                REAL,
    average_speed          REAL,
    added_by               TEXT,
    last_updated           DATE,
    notes                  TEXT,
    admin_contact          TEXT,
    status                 TEXT
);

INSERT INTO public_transport_schedule VALUES (2001, "R10", "Bus", "08:00", "08:45", 1, "ST001", "Main Street", "Weekday", "2023-03-01", 15, 501, 50, "Yes", 2, 2.5, 12.0, 40.0, "SchedulerA", "2023-02-20", "Morning peak", "contact1@transit.com", "Active");
INSERT INTO public_transport_schedule VALUES (2002, "R10", "Bus", "09:00", "09:45", 2, "ST002", "Central Plaza", "Weekday", "2023-03-01", 15, 502, 50, "Yes", 2, 2.5, 15.0, 38.0, "SchedulerA", "2023-02-20", "Mid-morning", "contact1@transit.com", "Active");
INSERT INTO public_transport_schedule VALUES (2003, "R20", "Tram", "07:30", "08:20", 1, "ST010", "River Station", "Weekend", "2023-03-05", 30, 601, 80, "No", 1, 1.8, 8.5, 35.0, "SchedulerB", "2023-02-25", "Weekend service", "contact2@transit.com", "Active");

-- Energy grid node status
CREATE TABLE energy_grid_node_status
(
    node_id               INTEGER PRIMARY KEY,
    node_name             TEXT NOT NULL,
    region                TEXT NOT NULL,
    voltage               REAL,
    current               REAL,
    power_factor          REAL,
    frequency             REAL,
    load_mw               REAL,
    status                TEXT,
    last_reported         DATE,
    maintenance_due       DATE,
    firmware_version      TEXT,
    temperature           REAL,
    humidity              REAL,
    alarm_code            TEXT,
    operator              TEXT,
    capacity_mw           REAL,
    outage_flag           INTEGER,
    generation_type       TEXT,
    notes                 TEXT
);

INSERT INTO energy_grid_node_status VALUES (301, "NodeA", "NorthZone", 138.5, 250.0, 0.98, 60.0, 120.5, "Online", "2023-03-10", "2023-09-10", "v5.2", 45.0, 30.0, "None", "OperatorX", 150.0, 0, "Wind", "Stable operation");
INSERT INTO energy_grid_node_status VALUES (302, "NodeB", "SouthZone", 135.0, 300.0, 0.95, 60.0, 200.0, "Online", "2023-03-09", "2023-08-01", "v5.1", 48.5, 32.0, "A12", "OperatorY", 250.0, 0, "Solar", "Minor voltage fluctuation");
INSERT INTO energy_grid_node_status VALUES (303, "NodeC", "EastZone", 140.0, 180.0, 0.99, 60.0, 80.0, "Offline", "2023-02-28", "2023-07-15", "v4.9", 50.0, 35.0, "B03", "OperatorZ", 100.0, 1, "Hydro", "Scheduled maintenance");

-- Vendor contract detail
CREATE TABLE vendor_contract_detail
(
    contract_id               INTEGER PRIMARY KEY,
    vendor_id                 INTEGER NOT NULL,
    vendor_name               TEXT NOT NULL,
    contract_start            DATE NOT NULL,
    contract_end              DATE NOT NULL,
    contract_value            REAL NOT NULL,
    currency                  TEXT,
    service_type              TEXT,
    payment_terms             TEXT,
    renewal_option            TEXT,
    performance_score         REAL,
    compliance_status         TEXT,
    escalation_contact        TEXT,
    jurisdiction              TEXT,
    confidentiality_clause    TEXT,
    liability_limit           REAL,
    indemnification_clause    TEXT,
    termination_notice_days   INTEGER,
    amendment_count           INTEGER,
    last_amended              DATE,
    contract_status           TEXT,
    notes                     TEXT
);

INSERT INTO vendor_contract_detail VALUES (4001, 9001, "TechSupplyCo", "2022-01-01", "2024-12-31", 750000.00, "USD", "IT Services", "Net30", "Automatic", 4.6, "Compliant", "john.doe@techsupply.com", "NY", "Standard", 500000.00, "Standard", 60, 2, "2023-01-15", "Active", "All deliverables met");
INSERT INTO vendor_contract_detail VALUES (4002, 9002, "CleanEnergyLtd", "2021-06-15", "2025-06-14", 1200000.00, "EUR", "Renewable Energy", "Net45", "Manual", 4.2, "Pending", "anna.smith@cleanenergy.eu", "DE", "High", 800000.00, "High", 90, 1, "2022-12-01", "Active", "Upcoming renewal negotiation");
INSERT INTO vendor_contract_detail VALUES (4003, 9003, "LogisticsPartners", "2020-03-01", "2023-02-28", 500000.00, "GBP", "Transport", "Net60", "None", 3.9, "NonCompliant", "mark.taylor@logipartners.co.uk", "UK", "Standard", 300000.00, "Standard", 30, 3, "2022-11-20", "Closed", "Contract terminated due to performance issues");

-- Clinical trial subject data
CREATE TABLE clinical_trial_subject
(
    subject_id               INTEGER PRIMARY KEY,
    trial_id                 INTEGER NOT NULL,
    enrollment_date          DATE NOT NULL,
    site_id                  INTEGER NOT NULL,
    age                      INTEGER,
    gender                   TEXT,
    ethnicity                TEXT,
    diagnosis                TEXT,
    treatment_arm            TEXT,
    dosage_mg                REAL,
    visit_number             INTEGER,
    visit_date               DATE,
    adverse_event            TEXT,
    severity                 TEXT,
    outcome                  TEXT,
    investigator             TEXT,
    consent_signed           DATE,
    follow_up_date           DATE,
    status                   TEXT,
    notes                    TEXT,
    data_locked              INTEGER
);

INSERT INTO clinical_trial_subject VALUES (6001, 2001, "2023-01-10", 101, 45, "Female", "Caucasian", "Hypertension", "Placebo", 0.0, 1, "2023-01-10", "None", "None", "Completed", "DrAllen", "2023-01-09", "2023-06-10", "Completed", "No issues", 1);
INSERT INTO clinical_trial_subject VALUES (6002, 2001, "2023-01-12", 101, 52, "Male", "Asian", "Hypertension", "DrugA", 50.0, 1, "2023-01-12", "Headache", "Mild", "Ongoing", "DrAllen", "2023-01-11", "2023-06-12", "Active", "Monitoring side effects", 0);
INSERT INTO clinical_trial_subject VALUES (6003, 2002, "2023-02-05", 102, 37, "Female", "Hispanic", "Diabetes", "DrugB", 100.0, 1, "2023-02-05", "None", "None", "Ongoing", "DrBaker", "2023-02-04", "2023-07-05", "Active", "Baseline measurements taken", 0);

-- Satellite observation metadata
CREATE TABLE satellite_observation_meta
(
    observation_id          INTEGER PRIMARY KEY,
    satellite_name          TEXT NOT NULL,
    sensor_name             TEXT NOT NULL,
    acquisition_date        DATE NOT NULL,
    acquisition_time        TEXT NOT NULL,
    orbit_number            INTEGER,
    latitude                REAL,
    longitude               REAL,
    cloud_cover_percent    REAL,
    resolution_m            REAL,
    processing_level        TEXT,
    file_format             TEXT,
    file_path               TEXT,
    data_provider           TEXT,
    processing_center       TEXT,
    quality_flag            TEXT,
    calibration_version     TEXT,
    metadata_version        TEXT,
    notes                   TEXT,
    archive_status          TEXT
);

INSERT INTO satellite_observation_meta VALUES (7001, "Sentinel-2A", "MSI", "2023-02-20", "10:15:00", 34567, 48.8566, 2.3522, 12.5, 10.0, "Level-2A", "GeoTIFF", "/data/sentinel2a/20230220.tif", "ESA", "ESACenter", "Good", "v3.2", "1.0", "Urban area image", "Archived");
INSERT INTO satellite_observation_meta VALUES (7002, "Landsat-8", "OLI", "2023-01-15", "08:45:00", 21034, 34.0522, -118.2437, 5.0, 30.0, "Level-1", "GeoTIFF", "/data/landsat8/20230115.tif", "USGS", "USGSCenter", "Excellent", "v2.9", "1.1", "Coastal monitoring", "Archived");
INSERT INTO satellite_observation_meta VALUES (7003, "WorldView-3", "PAN", "2022-12-05", "14:30:00", 9876, -33.8688, 151.2093, 0.2, 0.31, "Level-2", "JPEG2000", "/data/worldview3/20221205.jp2", "Maxar", "MaxarCenter", "Excellent", "v4.0", "2.0", "High-res cityscape", "Archived");

-- City infrastructure project details
CREATE TABLE city_infrastructure_project
(
    project_id               INTEGER PRIMARY KEY,
    project_name             TEXT NOT NULL,
    project_type             TEXT,
    start_date               DATE,
    planned_end_date         DATE,
    actual_end_date          DATE,
    budget_estimated         REAL,
    budget_actual            REAL,
    funding_source           TEXT,
    contractor_id            INTEGER,
    contractor_name          TEXT,
    permit_number            TEXT,
    environmental_impact     TEXT,
    stakeholder_group        TEXT,
    status                   TEXT,
    percent_complete         REAL,
    risk_level               TEXT,
    primary_contact          TEXT,
    contact_phone            TEXT,
    location_lat             REAL,
    location_long            REAL,
    description              TEXT,
    regulatory_approval      TEXT,
    notes                    TEXT
);

INSERT INTO city_infrastructure_project VALUES (8001, "River Bridge Replacement", "Bridge", "2022-05-01", "2024-12-31", NULL, 25000000.00, 0.00, "FederalGrant", 501, "BuildCo Ltd", "PERM-12345", "Low", "LocalResidents", "Planning", 45.0, "Medium", "EmilyGreen", "5551234567", 40.7128, -74.0060, "Replace aging bridge over Hudson River", "Pending", "Awaiting final design");
INSERT INTO city_infrastructure_project VALUES (8002, "Downtown Light Rail Expansion", "Transit", "2021-09-15", "2025-06-30", NULL, 180000000.00, 0.00, "MunicipalBond", 502, "TransitBuilders Inc", "PERM-67890", "Medium", "BusinessCommunity", "Design", 30.0, "High", "MichaelBrown", "5559876543", 34.0522, -118.2437, "Extend light rail to new downtown stations", "Approved", "Environmental study in progress");
INSERT INTO city_infrastructure_project VALUES (8003, "Solar Farm Development", "Energy", "2023-01-20", "2026-12-31", NULL, 75000000.00, 0.00, "PrivateInvestment", 503, "SunPower Solutions", "PERM-54321", "Low", "EnergyConsumers", "Planning", 10.0, "Low", "SamanthaWhite", "5555551234", 35.6895, 139.6917, "Build 50MW solar farm on outskirts", "Pending", "Land acquisition pending");