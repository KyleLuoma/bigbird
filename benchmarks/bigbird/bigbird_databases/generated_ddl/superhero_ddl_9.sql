-- Cosmetic product line details
CREATE TABLE cosmetic_product_line
(
    product_id               INTEGER   NOT NULL PRIMARY KEY,
    product_name             TEXT,
    brand                    TEXT,
    category                 TEXT,
    launch_date              DATE,
    volume_ml                INTEGER,
    price_usd                DECIMAL(12,2),
    ingredient_count        INTEGER,
    is_organic               BOOLEAN,
    certification            TEXT,
    target_audience          TEXT,
    skin_type                TEXT,
    fragrance_type           TEXT,
    packaging_material      TEXT,
    country_of_origin        TEXT,
    sustainability_score     INTEGER,
    marketing_budget_usd    DECIMAL(12,2),
    shelf_life_months       INTEGER,
    regulatory_approval_date DATE,
    batch_number             TEXT
);

INSERT INTO cosmetic_product_line VALUES (1, 'HydraGlow', 'AquaBeauty', 'Moisturizer', '2022-03-15', 50, 19.99, 12, 1, 'EcoCert', 'Adults', 'Normal', 'Floral', 'Plastic', 'USA', 85, 50000.00, 24, '2022-02-20', 'BATCHA001');
INSERT INTO cosmetic_product_line VALUES (2, 'SunShield SPF50', 'RadiantSun', 'Sunscreen', '2021-06-01', 100, 29.99, 8, 0, 'None', 'AllAges', 'All', 'Citrus', 'Tube', 'Germany', 70, 75000.00, 36, '2021-05-10', 'BATCHS050');
INSERT INTO cosmetic_product_line VALUES (3, 'Velvet Matte Lip', 'ColorPulse', 'Lipstick', '2023-01-20', 15, 14.50, 5, 0, 'Vegan', 'Teenagers', 'Dry', 'Berry', 'Paper', 'France', 90, 30000.00, 12, '2022-12-05', 'BATCHL123');

-- Research study metadata
CREATE TABLE research_study
(
    study_id                 INTEGER   NOT NULL PRIMARY KEY,
    study_title              TEXT,
    principal_investigator  TEXT,
    institution              TEXT,
    start_date               DATE,
    end_date                 DATE,
    funding_amount_usd       DECIMAL(12,2),
    study_type               TEXT,
    methodology              TEXT,
    sample_size              INTEGER,
    anonymized_data          BOOLEAN,
    ethics_approval_id       TEXT,
    data_repository_url      TEXT,
    published_journal        TEXT,
    doi                      TEXT,
    impact_factor            DECIMAL(4,2),
    citation_count           INTEGER,
    field_of_study           TEXT,
    keywords                 TEXT,
    status                   TEXT
);

INSERT INTO research_study VALUES (101, 'QuantumEntanglementEffects', 'DrSmith', 'TechUniversity', '2020-01-15', '2022-12-31', 1250000.00, 'Experimental', 'DoubleBlind', 250, 1, 'EA2020Q1', 'http://repo.example.com/qe', 'PhysicsLetters', '10.1234/qe2020', 5.67, 45, 'Physics', 'quantum,entanglement,teleportation', 'Completed');
INSERT INTO research_study VALUES (102, 'AIAdoptionInHealthcare', 'ProfLee', 'MedicalInstitute', '2021-05-01', '2023-04-30', 800000.00, 'Observational', 'Survey', 1200, 1, 'EA2021AI', 'http://repo.example.com/aihealth', 'HealthTechJournal', '10.5678/ai2021', 4.21, 30, 'ComputerScience', 'AI,healthcare,adoption', 'Ongoing');
INSERT INTO research_study VALUES (103, 'ClimateImpactOnCropYield', 'DrGarcía', 'AgriScienceCenter', '2019-09-10', '2022-09-09', 950000.00, 'Longitudinal', 'FieldStudy', 500, 0, 'EA2019CL', 'http://repo.example.com/climatecrop', 'AgronomyToday', '10.9012/cc2020', 3.89, 60, 'Agriculture', 'climate,crop,yield', 'Closed');

-- Energy grid station specifications
CREATE TABLE energy_grid_station
(
    station_id               INTEGER   NOT NULL PRIMARY KEY,
    station_name             TEXT,
    grid_region              TEXT,
    capacity_mw              DECIMAL(8,2),
    operational_status       TEXT,
    commissioning_date       DATE,
    decommission_date        DATE,
    primary_fuel_type        TEXT,
    secondary_fuel_type      TEXT,
    owner_company            TEXT,
    latitude                 DECIMAL(9,6),
    longitude                DECIMAL(9,6),
    elevation_m              INTEGER,
    maintenance_window       TEXT,
    contact_email            TEXT,
    contact_phone            TEXT,
    emissions_tco2_per_mwh   DECIMAL(6,2),
    average_load_factor      DECIMAL(4,2),
    outage_history           TEXT,
    regulatory_zone          TEXT
);

INSERT INTO energy_grid_station VALUES (2001, 'NorthRiver', 'NorthZone', 850.00, 'Active', '2010-04-22', NULL, 'Coal', 'NaturalGas', 'PowerGenCorp', 45.123456, -120.654321, 250, 'Q1', 'info@northriver.com', '+18005551234', 0.75, 0.85, 'None', 'ZoneA');
INSERT INTO energy_grid_station VALUES (2002, 'SunValleySolar', 'SouthZone', 150.00, 'Active', '2018-09-15', NULL, 'Solar', NULL, 'SolarEnergyLtd', 34.567890, -98.123456, 15, 'Monthly', 'contact@sunvalley.com', '+18005556789', 0.00, 0.45, 'Minor2021', 'ZoneB');
INSERT INTO energy_grid_station VALUES (2003, 'LakeWindFarm', 'EastZone', 300.00, 'Retired', '2005-06-01', '2025-12-31', 'Wind', NULL, 'WindPowerInc', 39.876543, -84.345678, 80, 'Biannual', 'admin@lakewind.com', '+18005559876', 0.00, 0.30, 'Minor2020,Major2022', 'ZoneC');

-- Navigation satellite registry
CREATE TABLE navigation_satellite
(
    sat_id                   INTEGER   NOT NULL PRIMARY KEY,
    sat_name                 TEXT,
    launch_date              DATE,
    deorbit_date             DATE,
    operator_agency          TEXT,
    orbit_type               TEXT,
    orbital_slot             TEXT,
    payload_type             TEXT,
    transponder_count        INTEGER,
    frequency_band           TEXT,
    power_watts              INTEGER,
    mission_duration_years  INTEGER,
    status                   TEXT,
    manufacturer             TEXT,
    launch_vehicle           TEXT,
    launch_site              TEXT,
    expected_lifespan_years INTEGER,
    encryption_enabled       BOOLEAN,
    ground_control_station  TEXT,
    data_rate_mbps           DECIMAL(6,2)
);

INSERT INTO navigation_satellite VALUES (301, 'GeoNav-1', '2015-11-20', NULL, 'SpaceAgencyA', 'Geostationary', 'Slot45W', 'Navigation', 12, 'L1', 150, 15, 'Operational', 'AeroTech', 'Ariane5', 'Kourou', 20, 1, 'StationAlpha', 150.75);
INSERT INTO navigation_satellite VALUES (302, 'MediumOrbit-X', '2018-03-10', NULL, 'SpaceAgencyB', 'MediumEarth', 'Slot12E', 'Timing', 8, 'L2', 120, 12, 'Operational', 'OrbitalSystems', 'Falcon9', 'CapeCanaveral', 15, 0, 'StationBeta', 100.50);
INSERT INTO navigation_satellite VALUES (303, 'PolarScout', '2020-07-05', NULL, 'SpaceAgencyC', 'Polar', 'N/A', 'Imaging', 4, 'S', 200, 8, 'Testing', 'SkyWorks', 'Vulcan', 'Munich', 10, 0, 'StationGamma', 75.25);

-- Archaeological site registry
CREATE TABLE archaeological_site
(
    site_id                  INTEGER   NOT NULL PRIMARY KEY,
    site_name                TEXT,
    country                  TEXT,
    region                   TEXT,
    discovery_year           INTEGER,
    primary_culture          TEXT,
    period                   TEXT,
    surface_area_sqkm        DECIMAL(8,2),
    excavation_status        TEXT,
    lead_archaeologist       TEXT,
    institution_affiliation  TEXT,
    artifact_count           INTEGER,
    dating_method            TEXT,
    GPS_latitude             DECIMAL(9,6),
    GPS_longitude            DECIMAL(9,6),
    climate_zone             TEXT,
    funding_source           TEXT,
    UNESCO_status            TEXT,
    tourism_visitors_annual  INTEGER,
    preservation_rating      INTEGER
);

INSERT INTO archaeological_site VALUES (4001, 'TempleOfSun', 'Egypt', 'NileDelta', 1922, 'AncientEgyptian', 'OldKingdom', 2.35, 'Completed', 'DrAli', 'NationalMuseum', 1245, 'Radiocarbon', 30.123456, 31.654321, 'Arid', 'GovernmentGrant', 'WorldHeritage', 35000, 9);
INSERT INTO archaeological_site VALUES (4002, 'MayaRuins', 'Mexico', 'Yucatan', 1975, 'Maya', 'Classic', 5.80, 'Active', 'ProfLopez', 'UniversityX', 3420, 'Stratigraphy', 18.987654, -89.123456, 'Tropical', 'PrivateDonor', 'TentativeList', 120000, 8);
INSERT INTO archaeological_site VALUES (4003, 'StoneCircle', 'UK', 'Somerset', 2001, 'BronzeAge', 'LateBronze', 0.75, 'Planned', 'DrMurray', 'HeritageTrust', 560, 'Dendrochronology', 51.123456, -2.987654, 'Temperate', 'EUFund', 'WorldHeritage', 80000, 7);

-- Climate observation station catalog
CREATE TABLE climate_observation_station
(
    station_id               INTEGER   NOT NULL PRIMARY KEY,
    station_name             TEXT,
    country                  TEXT,
    latitude                 DECIMAL(9,6),
    longitude                DECIMAL(9,6),
    elevation_m              INTEGER,
    established_year         INTEGER,
    operating_agency         TEXT,
    measurement_type         TEXT,
    temperature_avg_c        DECIMAL(5,2),
    precipitation_mm         DECIMAL(7,2),
    wind_speed_kmh           DECIMAL(6,2),
    humidity_percent         DECIMAL(5,2),
    solar_radiation_wm2      DECIMAL(6,2),
    CO2_ppm                  DECIMAL(7,2),
    data_quality_flag        TEXT,
    last_maintenance_date    DATE,
    contact_person           TEXT,
    contact_email            TEXT,
    data_access_url          TEXT
);

INSERT INTO climate_observation_station VALUES (5001, 'AlpinePeak', 'Switzerland', 46.620000, 7.880000, 1800, 1995, 'FederalMeteo', 'Full', -2.50, 820.00, 15.20, 78.00, 250.00, 410.25, 'A', '2023-06-10', 'AnnaK', 'anna.k@federal.ch', 'http://climate.swiss/alpinepeak');
INSERT INTO climate_observation_station VALUES (5002, 'CoastalBay', 'Australia', -33.860000, 151.210000, 5, 2005, 'BureauWeather', 'Marine', 21.30, 1120.50, 22.40, 68.00, 300.00, 415.75, 'B', '2023-05-22', 'LiamS', 'liam.s@bureau.au', 'http://weather.au/coastalbay');
INSERT INTO climate_observation_station VALUES (5003, 'DesertOasis', 'SaudiArabia', 24.715000, 46.675000, 250, 2010, 'NationalClimatology', 'Partial', 35.80, 45.20, 10.00, 20.00, 150.00, 420.10, 'C', '2023-04-15', 'MonaR', 'mona.r@ncl.sa', 'http://climate.sa/desertoasis');

-- Transportation hub directory
CREATE TABLE transportation_hub
(
    hub_id                   INTEGER   NOT NULL PRIMARY KEY,
    hub_name                 TEXT,
    hub_type                 TEXT,
    city                     TEXT,
    state_province           TEXT,
    country                  TEXT,
    latitude                 DECIMAL(9,6),
    longitude                DECIMAL(9,6),
    annual_passenger_volume INTEGER,
    annual_freight_volume_tons INTEGER,
    number_of_terminals      INTEGER,
    number_of_gates          INTEGER,
    primary_operator         TEXT,
    opening_date             DATE,
    renovation_date          DATE,
    accessibility_rating     INTEGER,
    security_level           TEXT,
    parking_capacity         INTEGER,
    public_transport_links   TEXT,
    hub_manager              TEXT
);

INSERT INTO transportation_hub VALUES (6001, 'GrandCentral', 'RailStation', 'NewYork', 'NY', 'USA', 40.752726, -73.977229, 80000000, 1200000, 5, 0, 'MetroCorp', '1913-10-27', '2019-11-15', 9, 'High', 5000, 'SubwayBus', 'JohnD');
INSERT INTO transportation_hub VALUES (6002, 'SkyPortIntl', 'Airport', 'Dubai', 'Dubai', 'UAE', 25.253174, 55.365673, 90000000, 2500000, 3, 150, 'EmiratesAir', '1960-04-30', '2021-08-01', 10, 'VeryHigh', 20000, 'MetroTram', 'FatimaK');
INSERT INTO transportation_hub VALUES (6003, 'HarborDock', 'Seaport', 'Hamburg', 'Hamburg', 'Germany', 53.543764, 9.966658, 5000000, 80000000, 2, 0, 'PortAuthority', '1888-05-01', '2015-03-20', 8, 'Medium', 3500, 'TramBus', 'KlausM');

-- Financial instrument reference
CREATE TABLE financial_instrument
(
    instrument_id            INTEGER   NOT NULL PRIMARY KEY,
    instrument_name          TEXT,
    instrument_type          TEXT,
    ticker_symbol            TEXT,
    exchange                 TEXT,
    currency                 TEXT,
    issue_date               DATE,
    maturity_date            DATE,
    face_value               DECIMAL(12,2),
    coupon_rate_percent      DECIMAL(5,2),
    credit_rating            TEXT,
    issuer                   TEXT,
    underlying_asset         TEXT,
    sector                   TEXT,
    market_cap_usd           DECIMAL(15,2),
    dividend_yield_percent   DECIMAL(4,2),
    beta_coefficient         DECIMAL(4,3),
    trading_volume_daily     INTEGER,
    last_close_price         DECIMAL(10,2),
    isin_code                TEXT
);

INSERT INTO financial_instrument VALUES (7001, 'AlphaBond2028', 'Bond', 'AB2028', 'NYSE', 'USD', '2023-01-01', '2028-12-31', 1000.00, 3.50, 'AA', 'AlphaCorp', 'Corporate', 'Finance', 50000000.00, 2.10, 0.85, 150000, 101.25, 'US1234567890');
INSERT INTO financial_instrument VALUES (7002, 'BetaEquity', 'Stock', 'BET', 'NASDAQ', 'USD', '2010-06-15', NULL, 0.00, 0.00, 'A+', 'BetaIndustries', 'Equity', 'Technology', 2500000000.00, 1.45, 1.20, 2000000, 45.60, 'US0987654321');
INSERT INTO financial_instrument VALUES (7003, 'GammaETF', 'ETF', 'GME', 'AMEX', 'USD', '2015-09-30', NULL, 0.00, 0.00, 'AAA', 'GammaInvest', 'BroadMarket', 'Health', 750000000.00, 0.80, 0.95, 500000, 27.40, 'US1122334455');

-- Pharmaceutical clinical trial register
CREATE TABLE pharmaceutical_trial
(
    trial_id                 INTEGER   NOT NULL PRIMARY KEY,
    trial_name               TEXT,
    phase                    TEXT,
    indication               TEXT,
    sponsor_company          TEXT,
    principal_investigator   TEXT,
    start_date               DATE,
    end_date                 DATE,
    enrollment_target        INTEGER,
    enrollment_actual        INTEGER,
    randomization_scheme     TEXT,
    blinding_type            TEXT,
    primary_endpoint         TEXT,
    secondary_endpoint       TEXT,
    adverse_event_rate       DECIMAL(5,2),
    approval_status          TEXT,
    regulatory_body          TEXT,
    data_monitoring_committee TEXT,
    results_publication_journal TEXT,
    doi                      TEXT
);

INSERT INTO pharmaceutical_trial VALUES (8001, 'CardioHealStudy', 'PhaseIII', 'HeartFailure', 'HeartPharma', 'DrNelson', '2021-01-15', '2023-12-31', 500, 492, '1:1', 'DoubleBlind', 'MortalityReduction', 'QualityOfLife', 2.35, 'Approved', 'FDA', 'DMCHeart', 'CardioJournal', '10.1111/ch2024');
INSERT INTO pharmaceutical_trial VALUES (8002, 'OncoBlockTrial', 'PhaseII', 'LungCancer', 'OncoBiotech', 'ProfMiller', '2020-06-01', '2022-11-30', 300, 298, '2:1', 'SingleBlind', 'TumorShrinkage', 'ProgressionFreeSurvival', 5.10, 'Pending', 'EMA', 'DMCOndo', 'OncologyToday', '10.2222/ot2023');
INSERT INTO pharmaceutical_trial VALUES (8003, 'NeuroProtect', 'PhaseI', 'Alzheimer', 'NeuroHealth', 'DrChen', '2022-03-20', '2024-09-15', 120, 110, 'None', 'OpenLabel', 'SafetyProfile', 'BiomarkerChange', 1.80, 'Ongoing', 'PMDA', 'DMCCog', 'NeurologyReview', '10.3333/nr2025');

-- Educational course catalog
CREATE TABLE educational_course_catalog
(
    course_id                INTEGER   NOT NULL PRIMARY KEY,
    course_code              TEXT,
    course_title             TEXT,
    department               TEXT,
    faculty                  TEXT,
    credit_hours             INTEGER,
    level                    TEXT,
    delivery_mode            TEXT,
    semester_offered         TEXT,
    academic_year            TEXT,
    enrollment_capacity      INTEGER,
    prerequisite_course_code TEXT,
    corequisite_course_code  TEXT,
    syllabus_url             TEXT,
    textbook_isbn            TEXT,
    lab_required             BOOLEAN,
    classroom_location       TEXT,
    lecture_hours_per_week   INTEGER,
    tutorial_hours_per_week  INTEGER,
    assessment_method        TEXT,
    accreditation_body       TEXT
);

INSERT INTO educational_course_catalog VALUES (9001, 'CS101', 'IntroToComputerScience', 'ComputerScience', 'DrAllen', 3, 'Undergraduate', 'InPerson', 'Fall', '2025-2026', 200, NULL, NULL, 'http://univ.edu/cs101/syllabus', '9780134093413', 0, 'BuildingA101', 3, 1, 'ExamProject', 'ABET');
INSERT INTO educational_course_catalog VALUES (9002, 'BIO210', 'MolecularBiology', 'Biology', 'ProfKim', 4, 'Undergraduate', 'Hybrid', 'Spring', '2025-2026', 120, 'BIO110', NULL, 'http://univ.edu/bio210/syllabus', '9780321731025', 1, 'ScienceHall202', 4, 2, 'LabReportExam', 'AACSB');
INSERT INTO educational_course_catalog VALUES (9003, 'ENG505', 'AdvancedLiteraryTheory', 'English', 'DrSantiago', 3, 'Graduate', 'Online', 'Summer', '2025-2026', 30, 'ENG405', 'ENG403', 'http://univ.edu/eng505/syllabus', '9780199726958', 0, 'N/A', 2, 1, 'ResearchPaper', 'NEASC');