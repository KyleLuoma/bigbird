-- Universe expansion plans for multiverse growth
CREATE TABLE universe_expansion_plan
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    plan_name              TEXT,
    description            TEXT,
    start_year             INTEGER,
    end_year               INTEGER,
    budget_million          INTEGER,
    galactic_region        TEXT,
    tech_level             TEXT,
    lead_scientist_id      INTEGER,
    risk_level             TEXT,
    status                 TEXT,
    creation_date          DATE,
    last_update            DATE,
    estimated_population   INTEGER,
    resource_requirements  TEXT,
    approval_status        TEXT,
    review_cycle           INTEGER,
    external_partner       TEXT,
    milestones             TEXT,
    notes                  TEXT,
    archived_flag          INTEGER
);

INSERT INTO universe_expansion_plan VALUES (1, 'AlphaExpansion', 'First wave of expansion', 2025, 2030, 5000, 'SectorA', 'Level5', 101, 'Medium', 'Pending', '2024-01-15', '2024-06-01', 1000000, 'HydrogenFuel', 'Approved', 12, 'PartnerX', 'Milestone1', 'Initial setup', 0);
INSERT INTO universe_expansion_plan VALUES (2, 'BetaGrowth', 'Secondary expansion phase', 2028, 2035, 8000, 'SectorB', 'Level6', 102, 'High', 'Planned', '2025-03-10', '2025-07-20', 2000000, 'QuantumCore', 'UnderReview', 18, 'PartnerY', 'Milestone2', 'Scaling infrastructure', 0);
INSERT INTO universe_expansion_plan VALUES (3, 'GammaOutreach', 'Outreach to new realms', 2030, 2040, 12000, 'SectorC', 'Level7', 103, 'Low', 'Draft', '2026-02-05', '2026-08-12', 3000000, 'DarkMatter', 'Pending', 24, 'PartnerZ', 'Milestone3', 'Finalizing contracts', 0);


-- Energy consumption logs for facilities
CREATE TABLE energy_consumption_log
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    facility_name          TEXT,
    log_date               DATE,
    hour_of_day            INTEGER,
    consumption_kwh        REAL,
    peak_demand_kw         REAL,
    source_type            TEXT,
    region                 TEXT,
    operator_id            INTEGER,
    temperature_c          REAL,
    humidity_percent       REAL,
    equipment_status       TEXT,
    maintenance_flag       INTEGER,
    notes                  TEXT,
    logged_by              TEXT,
    shift                  TEXT,
    tariff_category        TEXT,
    carbon_offset_kg       REAL,
    renewable_percent      REAL,
    anomaly_flag           INTEGER
);

INSERT INTO energy_consumption_log VALUES (1, 'FacilityAlpha', '2024-01-01', 9, 1250.5, 300.2, 'Solar', 'North', 201, 22.5, 45.0, 'Optimal', 0, 'Normal operation', 'Alice', 'Day', 'A', 15.0, 80.0, 0);
INSERT INTO energy_consumption_log VALUES (2, 'FacilityBeta', '2024-01-01', 14, 1400.0, 350.0, 'Wind', 'East', 202, 24.0, 50.0, 'Optimal', 0, 'Slight variance', 'Bob', 'Day', 'B', 20.0, 75.0, 0);
INSERT INTO energy_consumption_log VALUES (3, 'FacilityGamma', '2024-01-01', 20, 1100.3, 280.1, 'Hydro', 'South', 203, 20.0, 55.0, 'Maintenance', 1, 'Scheduled maintenance', 'Carol', 'Night', 'C', 10.0, 85.0, 1);


-- Satellite telemetry records
CREATE TABLE satellite_telemetry
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    satellite_id           INTEGER,
    telemetry_timestamp    DATETIME,
    altitude_km            REAL,
    velocity_km_s          REAL,
    temperature_c          REAL,
    battery_level_percent  REAL,
    solar_panel_output_w   REAL,
    communication_status   TEXT,
    error_code             INTEGER,
    ground_station_id      INTEGER,
    orbit_type             TEXT,
    mission_phase          TEXT,
    fuel_remaining_kg      REAL,
    payload_status         TEXT,
    signal_strength_db     REAL,
    downlink_rate_mbps     REAL,
    uplink_rate_mbps       REAL,
    firmware_version       TEXT,
    notes                  TEXT
);

INSERT INTO satellite_telemetry VALUES (1, 301, '2024-01-01 00:00:00', 35000.0, 7.66, -15.0, 92.5, 2000.0, 'Nominal', 0, 401, 'LEO', 'OrbitInsertion', 500.0, 'Active', -75.0, 150.0, 20.0, 'v1.2', 'First entry');
INSERT INTO satellite_telemetry VALUES (2, 302, '2024-01-01 01:00:00', 35786.0, 3.07, -10.0, 88.0, 1800.0, 'Nominal', 0, 402, 'GEO', 'StationKeeping', 450.0, 'Active', -70.0, 120.0, 15.0, 'v2.0', 'Stable');
INSERT INTO satellite_telemetry VALUES (3, 303, '2024-01-01 02:30:00', 2000.0, 7.8, 20.0, 95.0, 2100.0, 'Warning', 101, 403, 'MEO', 'Maneuver', 600.0, 'Docked', -65.0, 200.0, 25.0, 'v1.5', 'Maneuver performed');


-- Artifact discovery records
CREATE TABLE artifacts_discovery
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    artifact_name          TEXT,
    discovery_date         DATE,
    site_name              TEXT,
    latitude               REAL,
    longitude              REAL,
    material               TEXT,
    estimated_age_years    INTEGER,
    discoverer_name        TEXT,
    category               TEXT,
    preservation_status    TEXT,
    current_location       TEXT,
    description            TEXT,
    cultural_significance  TEXT,
    legal_status           TEXT,
    funding_source         TEXT,
    photo_reference        TEXT,
    catalog_number         TEXT,
    notes                  TEXT,
    accession_date         DATE,
    curator_id             INTEGER
);

INSERT INTO artifacts_discovery VALUES (1, 'ObsidianStatue', '2023-06-15', 'SiteAlpha', 34.05, -118.25, 'Obsidian', 2500, 'DrSmith', 'Sculpture', 'Stable', 'MuseumA', 'Tall statue of unknown deity', 'High', 'PublicDomain', 'GrantX', 'photo1.jpg', 'CAT001', 'No damage', '2023-07-01', 501);
INSERT INTO artifacts_discovery VALUES (2, 'BronzeCoin', '2022-11-02', 'SiteBeta', 48.85, 2.35, 'Bronze', 1800, 'ProfLee', 'Currency', 'Corroded', 'ArchiveB', 'Coin from ancient empire', 'Medium', 'Protected', 'DonationY', 'photo2.jpg', 'CAT002', 'Requires cleaning', '2022-12-10', 502);
INSERT INTO artifacts_discovery VALUES (3, 'CeramicVase', '2021-09-20', 'SiteGamma', 35.68, 139.69, 'Ceramic', 1200, 'MsTanaka', 'Pottery', 'Fragile', 'ExhibitC', 'Vase with intricate patterns', 'Low', 'OnLoan', 'GrantZ', 'photo3.jpg', 'CAT003', 'Handle with care', '2021-10-05', 503);


-- Climate projection data
CREATE TABLE climate_projection
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    region                 TEXT,
    projection_year        INTEGER,
    avg_temp_c             REAL,
    precipitation_mm       REAL,
    sea_level_rise_cm      REAL,
    greenhouse_gas_ppm     REAL,
    scenario               TEXT,
    model_name             TEXT,
    confidence_level       TEXT,
    notes                  TEXT,
    created_by             TEXT,
    creation_date          DATE,
    updated_by             TEXT,
    update_date            DATE,
    data_source            TEXT,
    projection_type        TEXT,
    variance               REAL,
    min_temp_c             REAL,
    max_temp_c             REAL,
    extreme_event_prob    REAL
);

INSERT INTO climate_projection VALUES (1, 'RegionNorth', 2050, 14.5, 800.0, 25.0, 420.0, 'Medium', 'ModelX', 'High', 'Baseline scenario', 'AnalystA', '2024-01-10', 'AnalystB', '2024-06-15', 'Agency1', 'Temperature', 0.3, 13.5, 15.6, 0.12);
INSERT INTO climate_projection VALUES (2, 'RegionSouth', 2050, 27.1, 1200.0, 30.0, 425.0, 'High', 'ModelY', 'Medium', 'Optimistic emissions', 'AnalystC', '2024-02-20', 'AnalystD', '2024-07-20', 'Agency2', 'Precipitation', 0.5, 26.0, 28.3, 0.08);
INSERT INTO climate_projection VALUES (3, 'RegionEast', 2050, 19.8, 950.0, 28.0, 422.0, 'Low', 'ModelZ', 'Low', 'Pessimistic emissions', 'AnalystE', '2024-03-15', 'AnalystF', '2024-08-05', 'Agency3', 'SeaLevel', 0.1, 19.5, 20.2, 0.15);


-- Transportation route details
CREATE TABLE transportation_route
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    route_name             TEXT,
    start_location         TEXT,
    end_location           TEXT,
    distance_km            REAL,
    transport_mode         TEXT,
    average_speed_kmh      REAL,
    capacity_vehicles      INTEGER,
    operating_company      TEXT,
    schedule_interval_min  INTEGER,
    first_departure_time   TIME,
    last_departure_time    TIME,
    fare_currency          TEXT,
    fare_amount            REAL,
    max_load_tons          REAL,
    maintenance_cycle_days INTEGER,
    status                 TEXT,
    last_inspection_date   DATE,
    next_inspection_date   DATE,
    notes                  TEXT
);

INSERT INTO transportation_route VALUES (1, 'RouteAlpha', 'CityA', 'CityB', 250.0, 'Rail', 120.0, 30, 'RailCorp', 30, '05:00:00', '23:00:00', 'USD', 45.0, 500.0, 180, 'Active', '2023-12-01', '2024-12-01', 'High demand');
INSERT INTO transportation_route VALUES (2, 'RouteBeta', 'PortX', 'PortY', 1200.0, 'Maritime', 30.0, 10, 'OceanicLtd', 1440, '08:00:00', '20:00:00', 'EUR', 300.0, 20000.0, 365, 'Scheduled', '2023-06-15', '2024-06-15', 'Seasonal variations');
INSERT INTO transportation_route VALUES (3, 'RouteGamma', 'Hub1', 'Hub2', 80.0, 'Road', 80.0, 50, 'RoadWays', 15, '06:00:00', '22:00:00', 'GBP', 20.0, 20.0, 90, 'Maintenance', '2024-01-10', '2024-07-10', 'Roadworks upcoming');


-- Financial derivative contracts
CREATE TABLE financial_derivative
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    derivative_name        TEXT,
    underlying_asset       TEXT,
    contract_type          TEXT,
    notional_amount        INTEGER,
    currency               TEXT,
    expiration_date        DATE,
    strike_price           REAL,
    premium                REAL,
    settlement_method      TEXT,
    exchange_name          TEXT,
    clearing_house         TEXT,
    margin_requirement     REAL,
    risk_rating            TEXT,
    issuer_id              INTEGER,
    counterparty_id        INTEGER,
    creation_date          DATE,
    last_trade_date        DATE,
    status                 TEXT,
    notes                  TEXT,
    regulator              TEXT
);

INSERT INTO financial_derivative VALUES (1, 'DerivAlpha', 'Oil', 'Future', 5000000, 'USD', '2025-12-31', 70.5, 150000, 'Cash', 'NYMEX', 'ClearCo', 200000, 'A', 1001, 2002, '2024-01-01', '2024-06-01', 'Active', 'Standard contract', 'SEC');
INSERT INTO financial_derivative VALUES (2, 'DerivBeta', 'Gold', 'Option', 2000000, 'EUR', '2026-06-30', 1800.0, 50000, 'Physical', 'EUREX', 'ClearCo', 120000, 'B', 1003, 2004, '2024-02-15', '2024-07-20', 'Pending', 'European market', 'ESMA');
INSERT INTO financial_derivative VALUES (3, 'DerivGamma', 'S&P500', 'Swap', 10000000, 'USD', '2027-03-31', 4200.0, 250000, 'Net', 'CME', 'ClearCo', 500000, 'AA', 1005, 2006, '2024-03-10', '2024-08-05', 'Cancelled', 'High volatility', 'CFTC');


-- Pharmaceutical trial phase data
CREATE TABLE pharma_trial_phase
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    trial_name             TEXT,
    drug_name              TEXT,
    phase                  TEXT,
    start_date             DATE,
    end_date               DATE,
    sponsor_company        TEXT,
    principal_investigator TEXT,
    site_count             INTEGER,
    patient_enrolled       INTEGER,
    primary_endpoint       TEXT,
    secondary_endpoint     TEXT,
    success_metric         TEXT,
    adverse_event_rate     REAL,
    regulatory_status      TEXT,
    data_lock_date         DATE,
    analysis_method        TEXT,
    results_summary        TEXT,
    publication_reference  TEXT,
    notes                  TEXT,
    archived_flag          INTEGER
);

INSERT INTO pharma_trial_phase VALUES (1, 'TrialAlpha', 'DrugA', 'PhaseI', '2023-01-01', '2023-12-31', 'PharmaCorp', 'DrJones', 10, 200, 'Safety', 'Pharmacokinetics', 'No serious', 0.02, 'Approved', '2023-12-15', 'Statistical', 'Positive safety', 'PMID12345', 'First in human', 0);
INSERT INTO pharma_trial_phase VALUES (2, 'TrialBeta', 'DrugB', 'PhaseII', '2022-06-01', '2024-05-31', 'HealthInc', 'DrSmith', 25, 500, 'Efficacy', 'Biomarker', 'Improved', 0.05, 'Pending', '2024-05-20', 'Mixed', 'Mixed efficacy', 'PMID67890', 'Dose ranging', 0);
INSERT INTO pharma_trial_phase VALUES (3, 'TrialGamma', 'DrugC', 'PhaseIII', '2021-03-15', '2025-03-14', 'MediLife', 'DrLee', 50, 1200, 'Survival', 'QualityOfLife', 'Significant', 0.03, 'Approved', '2025-02-28', 'SurvivalAnalysis', 'Statistically significant', 'PMID11223', 'Large scale trial', 0);


-- Educational course enrollment records
CREATE TABLE educational_course_enrollment
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    enrollment_id          INTEGER,
    student_id             INTEGER,
    course_code            TEXT,
    term                   TEXT,
    year                   INTEGER,
    enrollment_status      TEXT,
    grade                  TEXT,
    credits                INTEGER,
    instructor_id          INTEGER,
    department             TEXT,
    campus_location        TEXT,
    enrollment_date        DATE,
    completion_date        DATE,
    attendance_percentage  REAL,
    withdrawal_reason      TEXT,
    academic_advisor       TEXT,
    scholarship_flag       INTEGER,
    notes                  TEXT,
    last_updated           DATE,
    updated_by             TEXT
);

INSERT INTO educational_course_enrollment VALUES (1, 10001, 5001, 'CS101', 'Fall', 2023, 'Enrolled', 'A', 3, 3001, 'ComputerScience', 'MainCampus', '2023-08-15', '2023-12-20', 95.0, NULL, 'ProfWhite', 1, 'Excellent performance', '2023-12-21', 'Registrar');
INSERT INTO educational_course_enrollment VALUES (2, 10002, 5002, 'ENG202', 'Spring', 2024, 'Completed', 'B+', 4, 3002, 'English', 'NorthCampus', '2024-01-10', '2024-05-05', 88.5, NULL, 'ProfGreen', 0, 'Good participation', '2024-05-06', 'Registrar');
INSERT INTO educational_course_enrollment VALUES (3, 10003, 5003, 'MATH303', 'Summer', 2024, 'Withdrawn', NULL, 3, 3003, 'Mathematics', 'SouthCampus', '2024-06-01', NULL, 60.0, 'Personal', 'ProfBrown', 0, 'Consider re-enrollment', '2024-06-15', 'Registrar');


-- Archaeological dig site information
CREATE TABLE archaeological_dig_site
(
    id                     INTEGER NOT NULL PRIMARY KEY,
    site_name              TEXT,
    country                TEXT,
    region                 TEXT,
    discovery_year         INTEGER,
    managing_institution   TEXT,
    lead_archaeologist     TEXT,
    area_hectares          REAL,
    period                 TEXT,
    significance           TEXT,
    funding_agency         TEXT,
    total_excavated_volume_m3 REAL,
    artifact_count         INTEGER,
    preservation_status    TEXT,
    public_accessibility   TEXT,
    site_status            TEXT,
    last_field_season      DATE,
    next_planned_season    DATE,
    notes                  TEXT,
    geo_coordinates        TEXT
);

INSERT INTO archaeological_dig_site VALUES (1, 'SiteAlpha', 'CountryX', 'RegionNorth', 1998, 'UniversityA', 'DrMiller', 12.5, 'BronzeAge', 'High', 'GrantA', 2500.0, 3400, 'Excellent', 'Limited', 'Active', '2023-09-15', '2024-06-01', 'Ongoing research', '34.05N_118.25W');
INSERT INTO archaeological_dig_site VALUES (2, 'SiteBeta', 'CountryY', 'RegionEast', 2005, 'InstituteB', 'ProfChen', 8.0, 'IronAge', 'Medium', 'GrantB', 1800.0, 2100, 'Good', 'Open', 'Paused', '2022-07-20', '2024-04-10', 'Awaiting funding', '48.85N_2.35E');
INSERT INTO archaeological_dig_site VALUES (3, 'SiteGamma', 'CountryZ', 'RegionSouth', 2012, 'MuseumC', 'DrKumar', 5.5, 'Classical', 'Low', 'GrantC', 950.0, 1200, 'Fair', 'Closed', 'Completed', '2021-05-05', '2025-03-20', 'Site closed for preservation', '35.68N_139.69E');