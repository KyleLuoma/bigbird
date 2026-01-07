-- Public library catalog
CREATE TABLE public_library_catalog (
    Id INTEGER NOT NULL PRIMARY KEY,
    ISBN TEXT,
    Title TEXT,
    Author TEXT,
    Publisher TEXT,
    PublicationYear INTEGER,
    Edition TEXT,
    Language TEXT,
    PageCount INTEGER,
    ShelfLocation TEXT,
    Category TEXT,
    DeweyDecimal TEXT,
    CopiesOwned INTEGER,
    CopiesAvailable INTEGER,
    AcquisitionDate DATETIME,
    Cost REAL,
    Format TEXT,
    SubjectKeywords TEXT,
    Summary TEXT,
    MetadataJson TEXT,
    LastInventoried DATETIME
);

INSERT INTO public_library_catalog VALUES (1, '9781234567890', 'Algorithms Unlocked', 'Thomas Cormen', 'MIT Press', 2013, '1st', 'English', 240, 'A1', 'Computer Science', '005.1', 5, 5, '2020-03-15 00:00:00', 45.99, 'Hardcover', 'algorithms,computing', 'An introduction to algorithms', '{"pages":240}', '2023-12-01 10:00:00');
INSERT INTO public_library_catalog VALUES (2, '9780987654321', 'Modern Art History', 'Susan Miller', 'Art Press', 2018, '2nd', 'English', 320, 'B4', 'Art History', '700', 3, 2, '2021-07-22 00:00:00', 60.00, 'Paperback', 'art,history,modern', 'Survey of modern art movements', '{"pages":320}', '2024-01-10 14:30:00');
INSERT INTO public_library_catalog VALUES (3, '9781111111111', 'Data Science Basics', 'Anita Patel', 'DataPub', 2022, '1st', 'English', 410, 'C3', 'Data Science', '658.8', 7, 6, '2022-11-05 00:00:00', 78.50, 'eBook', 'data,science,statistics', 'Fundamentals of data science', '{"pages":410}', '2024-02-20 09:15:00');

-- Transport fleet assets
CREATE TABLE transport_fleet_assets (
    AssetId INTEGER NOT NULL PRIMARY KEY,
    VehicleVIN TEXT,
    LicensePlate TEXT,
    Make TEXT,
    Model TEXT,
    Year INTEGER,
    VehicleType TEXT,
    FuelType TEXT,
    EngineSize REAL,
    Color TEXT,
    PurchaseDate DATETIME,
    PurchasePrice REAL,
    CurrentMileage INTEGER,
    ServiceIntervalMiles INTEGER,
    LastServiceDate DATETIME,
    AssignedDriverId INTEGER,
    Status TEXT,
    RegistrationExpiry DATETIME,
    InsurancePolicyNumber TEXT,
    InsuranceExpiry DATETIME,
    GPSDeviceId TEXT,
    Notes TEXT
);

INSERT INTO transport_fleet_assets VALUES (101, '1HGCM82633A004352', 'ABC1234', 'Toyota', 'Camry', 2019, 'Sedan', 'Gasoline', 2.5, 'Silver', '2019-05-20 00:00:00', 22000.00, 45200, 10000, '2023-09-15 00:00:00', 12, 'Active', '2024-05-20 00:00:00', 'INS-987654', '2024-05-20 00:00:00', 'GPS-001', 'Routine maintenance in June');
INSERT INTO transport_fleet_assets VALUES (102, '2FTZF1724WCA1234', 'XYZ5678', 'Ford', 'Transit', 2020, 'Van', 'Diesel', 3.2, 'White', '2020-03-10 00:00:00', 35000.00, 31000, 15000, '2023-12-01 00:00:00', 15, 'In Service', '2025-03-10 00:00:00', 'INS-123456', '2025-03-10 00:00:00', 'GPS-002', 'Used for parcel delivery');
INSERT INTO transport_fleet_assets VALUES (103, 'JH4KA8260MC001234', 'LMN8901', 'Honda', 'Accord', 2021, 'Sedan', 'Hybrid', 2.0, 'Blue', '2021-08-18 00:00:00', 28000.00, 12000, 8000, '2023-11-20 00:00:00', 18, 'Active', '2024-08-18 00:00:00', 'INS-555555', '2024-08-18 00:00:00', 'GPS-003', 'Assigned to sales team');

-- Grid substation status
CREATE TABLE grid_substation_status (
    SubstationId INTEGER NOT NULL PRIMARY KEY,
    Name TEXT,
    Region TEXT,
    VoltageLevel INTEGER,
    TransformerCount INTEGER,
    CapacityMVA REAL,
    PrimaryFuel TEXT,
    CommissionDate DATETIME,
    LastInspectionDate DATETIME,
    OperationalStatus TEXT,
    Latitude REAL,
    Longitude REAL,
    OwnerCompany TEXT,
    MaintenanceContractId INTEGER,
    FaultCountYear INTEGER,
    NetLossMW REAL,
    EnergyExportedMWh REAL,
    EnergyImportedMWh REAL,
    SensorsOnline INTEGER,
    SensorsTotal INTEGER,
    AlertLevel TEXT,
    Remarks TEXT
);

INSERT INTO grid_substation_status VALUES (2001, 'North Ridge Sub', 'North', 115, 4, 150.5, 'Coal', '2005-04-12 00:00:00', '2023-06-30 00:00:00', 'Operational', 45.1234, -122.5678, 'PowerCo', 3001, 2, 0.8, 12000.5, 11500.3, 18, 20, 'Low', 'All systems nominal');
INSERT INTO grid_substation_status VALUES (2002, 'East Valley Sub', 'East', 230, 6, 250.0, 'NaturalGas', '2010-09-05 00:00:00', '2023-05-15 00:00:00', 'Operational', 46.7890, -123.0123, 'EnergyGrid Ltd', 3002, 0, 0.2, 18000.0, 17500.0, 22, 22, 'None', 'Scheduled upgrade Q3');
INSERT INTO grid_substation_status VALUES (2003, 'South Plains Sub', 'South', 345, 5, 300.0, 'Wind', '2018-01-20 00:00:00', '2023-07-20 00:00:00', 'Partial', 44.5555, -121.3333, 'RenewPower', 3003, 1, 0.5, 21000.2, 20500.1, 20, 20, 'Medium', 'Minor transformer issue resolved');

-- Deep sea species records
CREATE TABLE deep_sea_species_records (
    RecordId INTEGER NOT NULL PRIMARY KEY,
    SpeciesCode TEXT,
    ScientificName TEXT,
    CommonName TEXT,
    DepthMeters INTEGER,
    TemperatureC REAL,
    SalinityPSU REAL,
    ObservationDate DATETIME,
    Latitude REAL,
    Longitude REAL,
    ObservationMethod TEXT,
    SampleCollected TEXT,
    SampleWeightGrams REAL,
    CollectorId INTEGER,
    VesselName TEXT,
    ExpeditionId INTEGER,
    HabitatType TEXT,
    FeedingBehavior TEXT,
    ConservationStatus TEXT,
    Notes TEXT,
    PhotoReference TEXT,
    DataSource TEXT,
    VerifiedFlag INTEGER
);

INSERT INTO deep_sea_species_records VALUES (5001, 'DS001', 'Gadus morhua', 'Atlantic Cod', 2500, 2.1, 35.0, '2022-06-15 00:00:00', -30.1234, 150.5678, 'ROV', 'Tissue', 12.5, 45, 'RV Ocean Explorer', 300, 'Benthic', 'Predatory', 'LeastConcern', 'Healthy population observed', 'IMG_5001.jpg', 'NAFO', 1);
INSERT INTO deep_sea_species_records VALUES (5002, 'DS002', 'Bathypelagicus giganteus', 'Giant Squid', 3400, 1.8, 34.5, '2021-09-03 00:00:00', -28.9876, 148.1234, 'Manned Sub', 'None', 0.0, 46, 'SS Deep Voyager', 301, 'Pelagic', 'Carnivorous', 'DataDeficient', 'Rare sighting, specimen not captured', 'IMG_5002.jpg', 'DeepSeaWatch', 0);
INSERT INTO deep_sea_species_records VALUES (5003, 'DS003', 'Abyssocetus profundus', 'Deep Sea Whale', 4000, 1.5, 34.8, '2020-12-20 00:00:00', -31.4567, 152.3456, 'Sonar', 'Acoustic', 0.0, 47, 'RV Neptune', 302, 'Abyssal', 'FilterFeeder', 'Endangered', 'Population declining due to noise', 'IMG_5003.jpg', 'MarineBioConsortium', 1);

-- Clinical study enrollees
CREATE TABLE clinical_study_enrollees (
    EnrolleeId INTEGER NOT NULL PRIMARY KEY,
    StudyId INTEGER,
    ParticipantCode TEXT,
    FirstName TEXT,
    LastName TEXT,
    BirthDate DATE,
    Gender TEXT,
    EnrollmentDate DATETIME,
    ConsentDate DATETIME,
    SiteId INTEGER,
    InvestigatorId INTEGER,
    BaselineWeightKg REAL,
    BaselineHeightCm INTEGER,
    MedicalHistorySummary TEXT,
    CurrentMedications TEXT,
    Allergies TEXT,
    RandomizationGroup TEXT,
    TreatmentStartDate DATETIME,
    TreatmentEndDate DATETIME,
    AdverseEventCount INTEGER,
    FollowUpVisitsCompleted INTEGER,
    Status TEXT,
    Notes TEXT
);

INSERT INTO clinical_study_enrollees VALUES (10001, 200, 'P001', 'Alice', 'Smith', '1978-04-12', 'Female', '2023-01-15 09:30:00', '2023-01-10 14:00:00', 10, 501, 68.2, 165, 'Hypertension', 'Lisinopril', 'Penicillin', 'Placebo', '2023-02-01 00:00:00', '2023-08-01 00:00:00', 0, 5, 'Completed', 'No issues');
INSERT INTO clinical_study_enrollees VALUES (10002, 200, 'P002', 'Bob', 'Johnson', '1985-09-23', 'Male', '2023-01-20 10:45:00', '2023-01-15 11:20:00', 10, 502, 82.5, 180, 'None', 'None', 'None', 'Active', '2023-02-05 00:00:00', NULL, 1, 3, 'Active', 'Mild headache reported');
INSERT INTO clinical_study_enrollees VALUES (10003, 201, 'P003', 'Clara', 'Lee', '1992-07-08', 'Female', '2023-02-10 08:15:00', '2023-02-05 13:40:00', 11, 503, 55.0, 158, 'Asthma', 'Albuterol', 'Nuts', 'Treatment', '2023-02-15 00:00:00', '2023-09-15 00:00:00', 2, 4, 'Withdrawn', 'Discontinued due to adverse event');

-- Astronomy observation sessions
CREATE TABLE astronomy_observation_sessions (
    SessionId INTEGER NOT NULL PRIMARY KEY,
    ObservatoryCode TEXT,
    TelescopeId TEXT,
    Instrument TEXT,
    ObservationDate DATE,
    StartTime TIME,
    EndTime TIME,
    RightAscension TEXT,
    Declination TEXT,
    ExposureSeconds INTEGER,
    FilterUsed TEXT,
    SkyCondition TEXT,
    SeeingArcSec REAL,
    ObserverId INTEGER,
    WeatherStationId INTEGER,
    TemperatureC REAL,
    HumidityPercent INTEGER,
    WindSpeedMps REAL,
    DataFilePath TEXT,
    CalibrationFilePath TEXT,
    Notes TEXT,
    DataQualityFlag TEXT,
    PublicationReference TEXT
);

INSERT INTO astronomy_observation_sessions VALUES (3001, 'OBS001', 'TEL-01', 'Spectrograph', '2023-07-12', '21:30:00', '23:45:00', '12h34m56s', '+12d34m56s', 1800, 'V', 'Clear', 0.8, 101, 201, -5.2, 12, 3.5, '/data/obs3001.fits', '/calib/flat3001.fits', 'Good S/N', 'A', 'Doe2024ApJ');
INSERT INTO astronomy_observation_sessions VALUES (3002, 'OBS002', 'TEL-02', 'Imager', '2023-08-05', '20:00:00', '22:30:00', '15h20m30s', '-05d12m30s', 1200, 'R', 'Partly Cloudy', 1.2, 102, 202, -3.0, 20, 5.0, '/data/obs3002.fits', '/calib/dark3002.fits', 'Some clouds', 'B', 'Smith2024MNRAS');
INSERT INTO astronomy_observation_sessions VALUES (3003, 'OBS001', 'TEL-03', 'Photometer', '2023-09-18', '02:15:00', '04:00:00', '08h45m10s', '+22d11m33s', 900, 'I', 'Clear', 0.6, 103, 203, -7.5, 10, 2.8, '/data/obs3003.fits', '/calib/bias3003.fits', 'Excellent conditions', 'A', 'Lee2024A&A');

-- Heritage artifact records
CREATE TABLE heritage_artifact_records (
    ArtifactId INTEGER NOT NULL PRIMARY KEY,
    CatalogNumber TEXT,
    Title TEXT,
    Description TEXT,
    Culture TEXT,
    Period TEXT,
    Material TEXT,
    DimensionsCm TEXT,
    WeightKg REAL,
    DiscoveryDate DATE,
    Discoverer TEXT,
    SiteName TEXT,
    GPSLatitude REAL,
    GPSLongitude REAL,
    CurrentLocation TEXT,
    PreservationStatus TEXT,
    AcquisitionMethod TEXT,
    AcquisitionDate DATE,
    FundingSource TEXT,
    ImageFileName TEXT,
    RelatedArtifacts TEXT,
    ConservationNotes TEXT,
    PublicAccessFlag INTEGER,
    CuratorId INTEGER
);

INSERT INTO heritage_artifact_records VALUES (7001, 'HA-001', 'Bronze Age Sword', 'A well-preserved bronze sword with hilt', 'Bronze Age', '1200-900 BCE', 'Bronze', '90x5x1', 2.3, '2019-06-10', 'Dr. Helen Carter', 'Riverbank Site', 45.6789, -122.3456, 'National Museum', 'Stable', 'Excavation', '2019-07-15', 'National Heritage Fund', 'sword_7001.jpg', 'HA-002;HA-003', 'Routine cleaning performed', 1, 301);
INSERT INTO heritage_artifact_records VALUES (7002, 'HA-002', 'Ceramic Vessel', 'Decorated vessel with geometric patterns', 'Neolithic', '4000-3500 BCE', 'Clay', '30x20x20', 1.1, '2020-03-22', 'Team Alpha', 'Hilltop Dig', 46.1111, -123.2222, 'Regional Archive', 'Fragile', 'Donation', '2020-04-05', 'Private Collector', 'vessel_7002.png', 'HA-001', 'Consolidated cracks', 0, 302);
INSERT INTO heritage_artifact_records VALUES (7003, 'HA-003', 'Iron Age Shield', 'Large iron shield with wooden backing', 'Iron Age', '800-400 BCE', 'Iron', '120x80x15', 15.0, '2021-11-05', 'Prof. Mark Liu', 'Fortress Ruins', 44.9999, -121.8888, 'City Museum', 'Restored', 'Purchase', '2022-01-20', 'Cultural Grant', 'shield_7003.tif', 'HA-001;HA-002', 'Repaired handle', 1, 303);

-- Agricultural yield reports
CREATE TABLE agricultural_yield_reports (
    ReportId INTEGER NOT NULL PRIMARY KEY,
    FarmId INTEGER,
    CropType TEXT,
    Variety TEXT,
    SeasonYear INTEGER,
    PlantingDate DATE,
    HarvestDate DATE,
    AreaHectares REAL,
    ExpectedYieldTon REAL,
    ActualYieldTon REAL,
    YieldPerHectare REAL,
    FertilizerUsedKg REAL,
    IrrigationVolumeM3 REAL,
    PestIncidents INTEGER,
    DiseaseIncidents INTEGER,
    LaborHours INTEGER,
    HarvestCostUSD REAL,
    SalePricePerTonUSD REAL,
    TotalRevenueUSD REAL,
    ProfitUSD REAL,
    ReportGeneratedDate DATETIME,
    AnalystId INTEGER,
    Remarks TEXT,
    DataSource TEXT,
    Notes TEXT
);

INSERT INTO agricultural_yield_reports VALUES (9001, 501, 'Wheat', 'WinterRed', 2022, '2022-10-01', '2023-06-15', 120.5, 350.0, 340.2, 2.82, 18000.0, 250000.0, 2, 1, 800, 56000.0, 210.0, 71442.0, 15442.0, '2023-07-01 10:00:00', 401, 'Yield slightly below expectation', 'FarmManagementSystem', 'Reviewed by agronomist');
INSERT INTO agricultural_yield_reports VALUES (9002, 502, 'Corn', 'GoldenHarvest', 2022, '2022-04-15', '2022-11-30', 80.0, 240.0, 250.5, 3.13, 15000.0, 180000.0, 0, 0, 600, 42000.0, 180.0, 90180.0, 48180.0, '2022-12-10 09:30:00', 402, 'Excellent yield, low pest pressure', 'FieldSensors', 'No anomalies');
INSERT INTO agricultural_yield_reports VALUES (9003, 503, 'Soybeans', 'EcoSoy', 2023, '2023-05-10', '2023-10-20', 95.0, 210.0, 215.0, 2.26, 12000.0, 150000.0, 1, 2, 700, 39000.0, 150.0, 32250.0, -6750.0, '2023-11-01 14:20:00', 403, 'Negative profit due to market price drop', 'AgriDataHub', 'Consider alternative markets');

-- Public transport route schedule
CREATE TABLE public_transport_route_schedule (
    RouteId INTEGER NOT NULL PRIMARY KEY,
    RouteNumber TEXT,
    RouteName TEXT,
    ServiceType TEXT,
    StartStation TEXT,
    EndStation TEXT,
    TotalStops INTEGER,
    OperatingCompany TEXT,
    FirstDepartureTime TIME,
    LastDepartureTime TIME,
    FrequencyMinutes INTEGER,
    DaysOfOperation TEXT,
    PeakHoursStart TIME,
    PeakHoursEnd TIME,
    AverageTravelTimeMins INTEGER,
    AccessibilityLevel TEXT,
    VehicleType TEXT,
    FareZone TEXT,
    TicketPrice REAL,
    Capacity INTEGER,
    OnTimePerformancePct REAL,
    DelayReasonCodes TEXT,
    ScheduleVersion TEXT,
    LastUpdated DATETIME,
    Comments TEXT
);

INSERT INTO public_transport_route_schedule VALUES (4001, 'R10', 'Downtown Loop', 'Bus', 'Central Station', 'West Terminal', 18, 'CityTransit', '05:30:00', '23:45:00', 10, 'MonTueWedThuFriSatSun', '07:00:00', '09:30:00', 45, 'Full', 'Electric Bus', 'Zone1', 2.50, 60, 92.5, 'LT;TR', 'v2.1', '2024-01-15 08:00:00', 'Added express service during peak');
INSERT INTO public_transport_route_schedule VALUES (4002, 'L5', 'Lake Line', 'Light Rail', 'Lakefront', 'University', 12, 'MetroRail', '06:00:00', '22:30:00', 8, 'MonTueWedThuFriSatSun', '08:00:00', '10:00:00', 30, 'Partial', 'Tram', 'Zone2', 3.00, 200, 88.0, 'SC;MA', 'v3.0', '2023-12-01 12:00:00', 'Extended to new campus');
INSERT INTO public_transport_route_schedule VALUES (4003, 'B22', 'Broadway Express', 'Bus', 'East Depot', 'South Station', 22, 'MetroBus', '04:45:00', '01:15:00', 15, 'MonTueWedThuFriSatSun', '06:30:00', '09:00:00', 55, 'Full', 'Hybrid Bus', 'Zone1', 2.75, 70, 90.3, 'TR;LA', 'v1.7', '2024-02-10 09:30:00', 'Increased frequency for weekend service');

-- Carbon emission audits
CREATE TABLE carbon_emission_audits (
    AuditId INTEGER NOT NULL PRIMARY KEY,
    FacilityId INTEGER,
    FacilityName TEXT,
    LocationCity TEXT,
    LocationState TEXT,
    Country TEXT,
    AuditDate DATE,
    AuditorId INTEGER,
    Scope TEXT,
    EmissionSource TEXT,
    CO2eTonnes REAL,
    CH4Tonnes REAL,
    N2OTonnes REAL,
    CO2eIntensityPerUnit REAL,
    Methodology TEXT,
    DataCollectionPeriodStart DATE,
    DataCollectionPeriodEnd DATE,
    VerificationStatus TEXT,
    FindingsSummary TEXT,
    RecommendedActions TEXT,
    FollowUpDate DATE,
    Status TEXT,
    Remarks TEXT,
    DocumentReference TEXT,
    Notes TEXT
);

INSERT INTO carbon_emission_audits VALUES (6001, 801, 'Solar Plant Alpha', 'San Diego', 'CA', 'USA', '2023-11-20', 701, 'Scope 1', 'Combustion', 0.0, 0.0, 0.0, 0.0, 'GHG Protocol', '2023-01-01', '2023-12-31', 'Verified', 'No emissions detected', 'Maintain current operations', '2024-06-15', 'Closed', 'Excellent performance', 'DOC-6001.pdf', '');
INSERT INTO carbon_emission_audits VALUES (6002, 802, 'Industrial Boiler Plant', 'Houston', 'TX', 'USA', '2023-09-12', 702, 'Scope 1', 'Fuel Combustion', 1250.5, 3.2, 1.1, 0.85, 'EPA Method 21', '2023-01-01', '2023-12-31', 'Pending', 'Emissions above baseline', 'Install carbon capture system', '2024-03-01', 'Open', 'Awaiting management response', 'DOC-6002.pdf', '');
INSERT INTO carbon_emission_audits VALUES (6003, 803, 'Automotive Manufacturing', 'Detroit', 'MI', 'USA', '2023-10-05', 703, 'Scope 2', 'Electricity Use', 800.0, 0.0, 0.0, 0.65, 'ISO 14064-1', '2023-01-01', '2023-12-31', 'Verified', 'High electricity consumption', 'Shift to renewable energy contracts', '2024-04-20', 'Open', 'Negotiations underway', 'DOC-6003.pdf', '');