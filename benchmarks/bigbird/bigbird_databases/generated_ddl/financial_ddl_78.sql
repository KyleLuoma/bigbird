-- Branch utilization metrics
CREATE TABLE branch_utilization
(
    branch_id                     INTEGER NOT NULL,
    util_year                     INTEGER NOT NULL,
    total_customers               INTEGER NOT NULL,
    avg_daily_visits              INTEGER NOT NULL,
    peak_hour_visits              INTEGER NOT NULL,
    staff_count                   INTEGER NOT NULL,
    teller_count                  INTEGER NOT NULL,
    atm_count                     INTEGER NOT NULL,
    loan_offers                   INTEGER NOT NULL,
    credit_card_issuances         INTEGER NOT NULL,
    deposit_volume                REAL NOT NULL,
    withdrawal_volume             REAL NOT NULL,
    fraud_reports                 INTEGER NOT NULL,
    maintenance_requests          INTEGER NOT NULL,
    energy_consumption_kwh        REAL NOT NULL,
    water_usage_m3                REAL NOT NULL,
    security_incidents            INTEGER NOT NULL,
    marketing_events              INTEGER NOT NULL,
    satisfaction_score            REAL NOT NULL,
    net_profit                    REAL NOT NULL,
    PRIMARY KEY (branch_id, util_year)
);

INSERT INTO branch_utilization VALUES
(101,2022,12500,340,120,45,12,6,350,410,1250000.50,820000.75,3,7,45000.20,8500.40,2,5,4.6,780000.00),
(102,2022,9800,275,95,38,10,5,280,330,950000.30,610000.10,1,5,38000.15,7200.22,1,3,4.2,620000.10),
(103,2022,14320,410,140,52,14,8,470,525,1580000.80,1012000.45,4,9,52000.75,9600.55,3,6,4.8,910000.20);

-- Employee training records
CREATE TABLE employee_training
(
    training_id          INTEGER NOT NULL PRIMARY KEY,
    employee_id          INTEGER NOT NULL,
    department           TEXT NOT NULL,
    training_name        TEXT NOT NULL,
    trainer              TEXT NOT NULL,
    start_date           DATE NOT NULL,
    end_date             DATE NOT NULL,
    duration_hours       INTEGER NOT NULL,
    certification_obtained TEXT,
    score_percent        REAL NOT NULL,
    training_type        TEXT NOT NULL,
    location             TEXT NOT NULL,
    cost_usd             REAL NOT NULL,
    external_provider    TEXT,
    material_url         TEXT,
    feedback_rating      INTEGER NOT NULL,
    completed_flag       INTEGER NOT NULL,
    revision_number      INTEGER NOT NULL,
    notes                TEXT,
    approval_manager     TEXT NOT NULL
);

INSERT INTO employee_training VALUES
(2001,5001,Finance,AdvancedRiskManagement,JohnDoe,2022-03-01,2022-03-05,24,CertifiedRiskAnalyst,95.5,Workshop,MainCampus,1500.00,SkillPartner,https://materials.example.com/risk,5,1,2,ExcellentPerformance,JaneSmith),
(2002,5002,IT,CloudSecurityBasics,MaryLee,2022-04-10,2022-04-12,16,,88.0,Online,Remote,800.00,CloudSecInc,https://materials.example.com/cloud,4,1,1,NeedsImprovement,TomBrown),
(2003,5003,HR,LeadershipDevelopment,AlanWong,2022-05-15,2022-05-20,30,LeadershipCert,92.0,Seminar,NorthWing,1200.00,,https://materials.example.com/leadership,5,1,3,Outstanding,EmilyDavis);

-- Environmental sensor station metadata
CREATE TABLE environmental_sensor_station
(
    station_id                INTEGER NOT NULL PRIMARY KEY,
    station_name              TEXT NOT NULL,
    latitude                  REAL NOT NULL,
    longitude                 REAL NOT NULL,
    elevation_m               REAL NOT NULL,
    install_date              DATE NOT NULL,
    sensor_type               TEXT NOT NULL,
    measurement_unit          TEXT NOT NULL,
    calibration_date          DATE NOT NULL,
    status                    TEXT NOT NULL,
    data_frequency_secs       INTEGER NOT NULL,
    battery_level_percent    REAL NOT NULL,
    firmware_version          TEXT NOT NULL,
    last_maintenance_date    DATE NOT NULL,
    alerts_triggered          INTEGER NOT NULL,
    avg_measurement          REAL NOT NULL,
    max_measurement          REAL NOT NULL,
    min_measurement          REAL NOT NULL,
    uptime_hours             REAL NOT NULL,
    location_description     TEXT NOT NULL
);

INSERT INTO environmental_sensor_station VALUES
(301,StationAlpha,45.12,-122.34,250.0,2020-06-15,AirQuality,PPM,2022-01-10,Active,300,85.5,v1.4,2022-07-01,12,35.2,78.9,12.5,UrbanNorth),
(302,StationBeta,46.78,-123.45,180.0,2019-09-20,WaterQuality,MG/L,2021-11-05,Active,600,92.0,v2.1,2022-06-15,5,0.8,1.5,0.3,10.2,RuralSouth),
(303,StationGamma,44.56,-121.67,320.0,2021-02-10,SoilMoisture,Percent,2022-03-12,Maintenance,900,78.0,v1.8,2022-08-20,0,23.4,45.0,12.0,8.8,SuburbanEast);

-- Logistic hub inventory
CREATE TABLE logistic_hub_inventory
(
    hub_id                INTEGER NOT NULL,
    hub_name              TEXT NOT NULL,
    item_sku              TEXT NOT NULL,
    item_description      TEXT NOT NULL,
    category              TEXT NOT NULL,
    quantity_on_hand      INTEGER NOT NULL,
    reorder_point         INTEGER NOT NULL,
    supplier_id           INTEGER NOT NULL,
    last_restock_date     DATE NOT NULL,
    next_expected_arrival DATE,
    unit_price_usd        REAL NOT NULL,
    total_value_usd       REAL NOT NULL,
    storage_temperature_c REAL,
    hazardous_flag        INTEGER NOT NULL,
    barcode               TEXT NOT NULL,
    aisle_location        TEXT NOT NULL,
    shelf_number          TEXT NOT NULL,
    pallet_count          INTEGER NOT NULL,
    received_by           TEXT NOT NULL,
    inspected_by          TEXT NOT NULL,
    PRIMARY KEY (hub_id, item_sku)
);

INSERT INTO logistic_hub_inventory VALUES
(401,NorthHub,SKU12345,HighPerformanceCPU,Electronics,150,30,9001,2022-06-10,2022-07-05,250.00,37500.00,20.0,0,1234567890123,A1,5,12,JohnDoe,JaneSmith),
(401,NorthHub,SKU67890,IndustrialLubricant,Consumables,500,100,9023,2022-05-22,2022-06-15,15.00,7500.00,25.0,1,9876543210987,B2,12,8,MaryLee,TomBrown),
(402,SouthHub,SKU54321,HeavyDutyBolt,Hardware,1200,200,9045,2022-07-01,NULL,0.75,900.00,15.0,0,5678901234567,C3,3,20,AlanWong,EmilyDavis);

-- Vendor contract detail
CREATE TABLE vendor_contract_detail
(
    contract_id            INTEGER NOT NULL PRIMARY KEY,
    vendor_id              INTEGER NOT NULL,
    contract_start_date    DATE NOT NULL,
    contract_end_date      DATE NOT NULL,
    contract_value_usd     REAL NOT NULL,
    service_type           TEXT NOT NULL,
    payment_terms          TEXT NOT NULL,
    renewal_option         TEXT NOT NULL,
    performance_score      REAL NOT NULL,
    compliance_status      TEXT NOT NULL,
    primary_contact        TEXT NOT NULL,
    contact_email          TEXT NOT NULL,
    contact_phone          TEXT NOT NULL,
    jurisdiction           TEXT NOT NULL,
    currency               TEXT NOT NULL,
    escrow_required        INTEGER NOT NULL,
    penalty_rate_percent   REAL NOT NULL,
    amendment_number       INTEGER NOT NULL,
    signed_by              TEXT NOT NULL,
    notes                  TEXT
);

INSERT INTO vendor_contract_detail VALUES
(501,3001,2021-01-01,2024-12-31,2500000.00,ITSupport,Net30,Automatic,92.5,Compliant,LauraHill,laura.hill@example.com,5551234567,NY,USD,1,2.5,3,RobertKing,InitialAgreement),
(502,3002,2020-06-15,2023-06-14,1800000.00,FacilityManagement,Quarterly,Manual,88.0,Conditional,MarkSun,mark.sun@example.com,5559876543,CA,USD,0,3.0,1,SusanLee,ExtendedTerms),
(503,3003,2022-03-20,2025-03-19,3200000.00,Consulting,Net45,Automatic,95.0,Compliant,NinaPark,nina.park@example.com,5553217890,TX,USD,1,1.8,2,JamesMo,ScopeUpdate);

-- Digital asset registry
CREATE TABLE digital_asset_registry
(
    asset_id               INTEGER NOT NULL PRIMARY KEY,
    asset_type             TEXT NOT NULL,
    asset_name             TEXT NOT NULL,
    file_path              TEXT NOT NULL,
    file_size_bytes        INTEGER NOT NULL,
    checksum               TEXT NOT NULL,
    created_date           DATE NOT NULL,
    modified_date          DATE NOT NULL,
    owner_id               INTEGER NOT NULL,
    access_level           TEXT NOT NULL,
    encryption_status      TEXT NOT NULL,
    expiration_date        DATE,
    retention_policy       TEXT NOT NULL,
    usage_count            INTEGER NOT NULL,
    last_accessed          DATE NOT NULL,
    tags                   TEXT,
    description            TEXT,
    version_number         INTEGER NOT NULL,
    status                 TEXT NOT NULL,
    archiving_location     TEXT NOT NULL
);

INSERT INTO digital_asset_registry VALUES
(601,Image,CorporateLogo,/assets/images/logo.png,254000,abc123def456,2021-02-01,2022-08-10,1001,Public,Encrypted,2025-12-31,KeepIndefinitely,45,2022-08-09,branding,PrimaryCompanyLogo,1,Active,ArchiveA),
(602,Document,AnnualReport2022,/documents/reports/annual2022.pdf,1024000,def789ghi012,2022-01-15,2022-07-20,1002,Restricted,NotEncrypted,2027-03-31,KeepIndefinitely,12,2022-07-19,finance,AnnualFinancialReport,3,Active,ArchiveB),
(603,Video,ProductDemo,/media/videos/demo.mp4,20480000,ghi345jkl678,2020-11-05,2022-06-30,1003,Internal,Encrypted,2024-11-30,Retention2Years,78,2022-06-29,marketing,DemoOfNewProduct,2,Archived,ArchiveC);

-- Health inspection log
CREATE TABLE health_inspection_log
(
    inspection_id          INTEGER NOT NULL PRIMARY KEY,
    facility_id            INTEGER NOT NULL,
    facility_name          TEXT NOT NULL,
    inspection_date        DATE NOT NULL,
    inspector_name         TEXT NOT NULL,
    score                  REAL NOT NULL,
    violations_count       INTEGER NOT NULL,
    major_violations       INTEGER NOT NULL,
    minor_violations       INTEGER NOT NULL,
    corrective_actions     TEXT,
    follow_up_date         DATE,
    compliance_status      TEXT NOT NULL,
    notes                  TEXT,
    city                   TEXT NOT NULL,
    state                  TEXT NOT NULL,
    zip_code               TEXT NOT NULL,
    phone_number           TEXT NOT NULL,
    email                  TEXT NOT NULL,
    inspection_type        TEXT NOT NULL,
    overall_rating         TEXT NOT NULL
);

INSERT INTO health_inspection_log VALUES
(701,4001,Sunrise Diner,2022-04-12,AnnaWhite,92.0,2,0,2,RefrigeratorCleaning,2022-05-10,Compliant,AllGood,Portland,OR,97201,5551112222,anna.white@example.com,Routine,Excellent),
(702,4002,Green Garden Cafe,2022-05-20,MarkBrown,85.5,5,1,4,HandwashingStations,2022-06-15,Conditional,FollowUpNeeded,Seattle,WA,98109,5553334444,mark.brown@example.com,Routine,Good),
(703,4003,Blue Bay Restaurant,2022-06-08,LisaGreen,78.0,8,2,6,FoodStorageUpgrade,2022-07-01,NonCompliant,RepeatedIssues,SanFrancisco,CA,94103,5555556666,lisa.green@example.com,FollowUp,Poor);

-- City infrastructure project
CREATE TABLE city_infrastructure_project
(
    project_id               INTEGER NOT NULL PRIMARY KEY,
    project_name             TEXT NOT NULL,
    project_type             TEXT NOT NULL,
    start_date               DATE NOT NULL,
    projected_end_date       DATE NOT NULL,
    actual_end_date          DATE,
    budget_usd               REAL NOT NULL,
    spent_usd                REAL NOT NULL,
    contractor_id            INTEGER NOT NULL,
    project_manager          TEXT NOT NULL,
    status                   TEXT NOT NULL,
    priority_level           TEXT NOT NULL,
    affected_area_sqkm       REAL NOT NULL,
    permits_obtained         INTEGER NOT NULL,
    environmental_impact_score REAL NOT NULL,
    public_feedback_score   REAL NOT NULL,
    milestones_completed    INTEGER NOT NULL,
    risk_level               TEXT NOT NULL,
    notes                    TEXT,
    url                      TEXT NOT NULL
);

INSERT INTO city_infrastructure_project VALUES
(801,RiverBridgeRehab,Bridge,2021-03-01,2023-12-31,NULL,12000000.00,8500000.00,9001,EmilyClark,InProgress,High,2.5,4,3.2,4.5,6,Medium,PhaseTwoPending,https://city.gov/projects/riverbridge),
(802,EastSideParkExpansion,Park,2020-07-15,2022-11-30,2022-10-20,5000000.00,5000000.00,9023,JamesLee,Completed,Medium,1.8,2,2.0,4.8,4,Low,CompletedAheadOfSchedule,https://city.gov/projects/eastsidepark),
(803,MetroLine3,Transit,2022-01-10,2025-06-30,NULL,25000000.00,13000000.00,9045,SarahKim,Planning,High,5.0,5,4.5,3.9,2,High,EnvironmentalReviewOngoing,https://city.gov/projects/metroline3);

-- Renewable energy farm status
CREATE TABLE renewable_energy_farm_status
(
    farm_id                     INTEGER NOT NULL PRIMARY KEY,
    farm_name                   TEXT NOT NULL,
    energy_type                 TEXT NOT NULL,
    capacity_mw                 REAL NOT NULL,
    current_output_mw           REAL NOT NULL,
    capacity_factor_percent     REAL NOT NULL,
    operational_since           DATE NOT NULL,
    maintenance_last_date       DATE NOT NULL,
    fault_events                INTEGER NOT NULL,
    total_fuel_consumed_tons   REAL,
    emissions_reduced_tons      REAL,
    site_area_hectares          REAL NOT NULL,
    grid_connection_status      TEXT NOT NULL,
    average_wind_speed_ms       REAL,
    solar_irradiance_wpm2       REAL,
    battery_storage_mwh         REAL,
    regulatory_compliance       TEXT NOT NULL,
    owner_company               TEXT NOT NULL,
    latitude                    REAL NOT NULL,
    longitude                   REAL NOT NULL
);

INSERT INTO renewable_energy_farm_status VALUES
(901,SunriseWindFarm,Wind,150.0,112.5,75.0,2018-05-01,2022-04-15,3,0,NULL,3000.0,Connected,8.5,NULL,20.0,Compliant,GreenEnergyCo,45.123,-122.456),
(902,BlueSolarField,Solar,80.0,68.0,85.0,2020-09-15,2022-06-20,1,NULL,55.0,1200.0,Connected,NULL,550.0,15.0,Compliant,SolarPowerInc,46.789,-123.321),
(903,HybridEcoPark,Hybrid,200.0,150.0,78.0,2019-03-10,2022-07-05,2,150.0,120.0,2500.0,Connected,7.0,620.0,30.0,Compliant,EcoRenewables,44.567,-121.987);

-- Public art inventory
CREATE TABLE public_art_inventory
(
    art_id                     INTEGER NOT NULL PRIMARY KEY,
    title                      TEXT NOT NULL,
    artist                     TEXT NOT NULL,
    creation_year              INTEGER NOT NULL,
    medium                     TEXT NOT NULL,
    dimensions_cm              TEXT NOT NULL,
    location_name              TEXT NOT NULL,
    city                       TEXT NOT NULL,
    latitude                   REAL NOT NULL,
    longitude                  REAL NOT NULL,
    acquisition_date           DATE NOT NULL,
    acquisition_price_usd      REAL NOT NULL,
    condition_rating           REAL NOT NULL,
    conservation_status        TEXT NOT NULL,
    insurance_policy_number    TEXT NOT NULL,
    display_status             TEXT NOT NULL,
    public_interaction_allowed INTEGER NOT NULL,
    lighting_type              TEXT NOT NULL,
    audio_description_available INTEGER NOT NULL,
    comments                   TEXT
);

INSERT INTO public_art_inventory VALUES
(1001,Starburst,JaneDoe,2015,Metal,150x150x30,Central Plaza,Metropolis,45.678,-122.345,2016-04-20,25000.00,9.5,Excellent,INS123456,OnDisplay,1,LED,1,SymbolicModernPiece),
(1002,WaveForm,JohnSmith,2010,Stone,200x80x50,Riverwalk Park,Portland,46.123,-123.456,2011-09-15,18000.00,8.7,Good,INS654321,OnDisplay,0,Solar,0,InstalledNearRiver),
(1003,ShadowPlay,EmilyClark,2020,Glass,120x120x100,University Campus,Seattle,47.890,-124.567,2020-11-05,30000.00,9.9,Excellent,INS987654,OnDisplay,1,Spotlight,1,InteractiveLightInstallation).