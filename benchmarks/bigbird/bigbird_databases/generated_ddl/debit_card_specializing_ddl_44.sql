-- Wildlife field observations
CREATE TABLE wildlife_observations
(
    ObservationID INTEGER PRIMARY KEY,
    ObserverName TEXT,
    ObservationDate DATE,
    ObservationTime TEXT,
    SpeciesCommonName TEXT,
    SpeciesLatinName TEXT,
    Count INTEGER,
    AgeClass TEXT,
    Sex TEXT,
    Behavior TEXT,
    HabitatType TEXT,
    Latitude REAL,
    Longitude REAL,
    ElevationMeters INTEGER,
    WeatherCondition TEXT,
    TemperatureC REAL,
    WindSpeedKph REAL,
    Notes TEXT,
    PhotoReference TEXT,
    AudioRecordReference TEXT,
    VerificationStatus TEXT,
    RegionCode TEXT
);

INSERT INTO wildlife_observations VALUES
(1,'Alice Smith','2024-07-12','08:15','Red Fox','Vulpes vulpes',2,'Adult','Female','Foraging','Forest','45.1234','-122.5678',350,'Clear',22.5,5.2,'Seen near trailhead','photo_001.jpg','audio_001.wav','Verified','NW');

INSERT INTO wildlife_observations VALUES
(2,'Bob Jones','2024-07-13','14:40','Bald Eagle','Haliaeetus leucocephalus',1,'Juvenile','Male','Soaring','River','45.2345','-122.6789',400,'Partly Cloudy',20.1,12.3,'Hovering over water','photo_002.jpg','audio_002.wav','Pending','NW');

INSERT INTO wildlife_observations VALUES
(3,'Carol Lee','2024-07-14','19:05','Black Bear','Ursus americanus',1,'Adult','Female','Climbing','Mountain','45.3456','-122.7890',1200,'Rainy',16.7,8.9,'At base of pine tree','photo_003.jpg','audio_003.wav','Rejected','NW');

-- Museum exhibit catalog
CREATE TABLE museum_exhibit_catalog
(
    ExhibitID INTEGER PRIMARY KEY,
    ExhibitName TEXT,
    Category TEXT,
    OriginCountry TEXT,
    AcquisitionDate DATE,
    AcquisitionMethod TEXT,
    EstimatedValue REAL,
    DisplayLocation TEXT,
    FloorNumber INTEGER,
    GalleryName TEXT,
    ConservationStatus TEXT,
    MaterialPrimary TEXT,
    MaterialSecondary TEXT,
    DimensionsHeightCm REAL,
    DimensionsWidthCm REAL,
    DimensionsDepthCm REAL,
    WeightKg REAL,
    CuratorInCharge TEXT,
    LastRestorationDate DATE,
    InsurancePolicyNumber TEXT,
    PublicAccess BOOLEAN,
    AudioGuideAvailable BOOLEAN,
    LightingRequirement TEXT,
    ClimateControlRequirement TEXT
);

INSERT INTO museum_exhibit_catalog VALUES
(101,'Ancient Greek Vase','Ceramics','Greece','2019-05-20','Donation',56000,'Hall A',1,'Classics','Stable','Ceramic','Gold',45.0,30.0,30.0,12.5,'Dr Helen Kramer','2022-03-15','POL123456','TRUE','TRUE','Low','Controlled 20C');

INSERT INTO museum_exhibit_catalog VALUES
(102,'Renaissance Painting','Painting','Italy','2015-11-03','Purchase',2500000,'Hall B',2,'Renaissance','Fragile','Oil','Canvas',120.0,80.0,5.0,25.0,'Dr Marco Villa','2021-09-10','POL654321','TRUE','FALSE','Medium','Controlled 22C');

INSERT INTO museum_exhibit_catalog VALUES
(103,'Medieval Sword','Weaponry','England','2020-02-14','Bequest',150000,'Hall C',1,'Arms & Armor','Restored','Steel','Leather',110.0,5.0,2.0,7.0,'Dr Susan Patel','2023-01-05','POL789012','FALSE','FALSE','High','Controlled 18C');

-- Renewable energy investment portfolios
CREATE TABLE renewable_energy_investment_portfolios
(
    PortfolioID INTEGER PRIMARY KEY,
    PortfolioName TEXT,
    ManagerName TEXT,
    CreationDate DATE,
    TotalCapitalMillion REAL,
    Currency TEXT,
    AssetClass TEXT,
    RiskLevel TEXT,
    TargetReturnPercent REAL,
    ESGScore INTEGER,
    NumberOfProjects INTEGER,
    AverageProjectSizeMillion REAL,
    RenewableType TEXT,
    GeographicFocus TEXT,
    LegalStructure TEXT,
    BenchmarkReference TEXT,
    LastValuationDate DATE,
    ValuationMillion REAL,
    DistributionPolicy TEXT,
    FeeManagementPercent REAL,
    FeePerformancePercent REAL,
    CustodianBank TEXT,
    ComplianceStatus TEXT,
    Notes TEXT
);

INSERT INTO renewable_energy_investment_portfolios VALUES
(201,'Green Horizons','Laura Green','2021-06-01',120.5,'USD','Equity','Medium',8.2,85,12,10.0,'Solar','North America','LLC','S&P Green 50','2023-12-31',130.7,'Quarterly','1.5','20','Bank of America','Compliant','Focus on utility scale');

INSERT INTO renewable_energy_investment_portfolios VALUES
(202,'WindWave Fund','Michael Breeze','2019-03-15',85.0,'EUR','Debt','Low',6.5,78,8,9.5,'Wind','Europe','AG','EuroWind Index','2023-11-30',90.2','Semi-Annual','1.2','15','Deutsche Bank','Compliant','Flexible tranche structure');

INSERT INTO renewable_energy_investment_portfolios VALUES
(203,'HydroFuture','Anita Rivers','2020-09-20',45.3,'USD','Hybrid','High',10.1,92,5,12.0,'Hydro','Asia-Pacific','LP','HydroBenchmark','2023-10-15',48.0','Annual','2.0','25','HSBC','Pending','Targeting pumped storage');

-- City permit application log
CREATE TABLE city_permit_application_log
(
    PermitID INTEGER PRIMARY KEY,
    ApplicantName TEXT,
    ApplicantContact TEXT,
    PermitType TEXT,
    ApplicationDate DATE,
    SubmissionMethod TEXT,
    ProjectAddress TEXT,
    ProjectDescription TEXT,
    EstimatedCost REAL,
    ZoningCategory TEXT,
    RequiredStudies TEXT,
    Status TEXT,
    ReviewStartDate DATE,
    ReviewEndDate DATE,
    ReviewerName TEXT,
    Decision TEXT,
    DecisionDate DATE,
    FeePaid REAL,
    FeeDue REAL,
    AppealFiled BOOLEAN,
    AppealDecision TEXT,
    AppealDate DATE,
    Remarks TEXT,
    CityRegionCode TEXT
);

INSERT INTO city_permit_application_log VALUES
(301,'Sunrise Builders','555-1234','Commercial Construction','2023-05-10','Online','123 Main St','Mixed‑use retail/office',2500000,'C-2','Environmental Impact, Traffic Study','Approved','2023-05-15','2023-06-01','Emily Carter','Approve','2023-06-02',5000,0,'FALSE','N/A','N/A','All documents received','NW');

INSERT INTO city_permit_application_log VALUES
(302,'Green Roof Co.','555-5678','Roof Modification','2023-06-20','In‑person','456 Oak Ave','Installation of green roof on existing building',350000,'R-1','Structural Assessment','Pending','2023-06-25','NULL','David Lee','Pending','NULL',1200,1500,'FALSE','N/A','N/A','Awaiting structural report','NW');

INSERT INTO city_permit_application_log VALUES
(303,'Riverfront LLC','555-9012','Waterfront Development','2023-04-01','Online','789 River Rd','Mixed residential with public promenade',5000000,'W-3','Hydrological Study, Archaeology','Denied','2023-04-05','2023-04-20','Susan Miller','Deny','2023-04-21',8000,0,'TRUE','Deny','2023-05-10','Applicant appealed based on revised design','NW');

-- Geospatial tile index
CREATE TABLE geospatial_tile_index
(
    TileID INTEGER PRIMARY KEY,
    ZoomLevel INTEGER,
    TileX INTEGER,
    TileY INTEGER,
    UpperLeftLat REAL,
    UpperLeftLon REAL,
    LowerRightLat REAL,
    LowerRightLon REAL,
    DataSource TEXT,
    CaptureDate DATE,
    ResolutionMeters REAL,
    Projection TEXT,
    CoverageAreaSqKm REAL,
    IsMosaic BOOLEAN,
    CloudCoverPercent REAL,
    ProcessingLevel TEXT,
    FileFormat TEXT,
    FileSizeMb REAL,
    HasMetadata BOOLEAN,
    LicenseType TEXT,
    Attribution TEXT,
    UpdateFrequency TEXT,
    Notes TEXT,
    RegionCode TEXT
);

INSERT INTO geospatial_tile_index VALUES
(401,12,3456,7890,45.1234,-122.5678,45.1123,-122.5567,'Landsat8','2023-08-15',30.0,'EPSG:4326',2.5,'FALSE',12.5,'Level-2','GeoTIFF',150.0,'TRUE','Public Domain','USGS Landsat','Monthly','No notable issues','NW');

INSERT INTO geospatial_tile_index VALUES
(402,14,13890,27654,45.5678,-122.3456,45.5589,-122.3345,'Sentinel-2','2023-09-01',10.0,'EPSG:4326',0.8,'TRUE',5.0,'Level-1C','JPEG2000',90.5,'TRUE','CC-BY','ESA Sentinel','Weekly','Cloud cover low','NW');

INSERT INTO geospatial_tile_index VALUES
(403,10,876,432,'45.0000','-123.0000','44.9890','-122.9890','NAIP','2022-07-20',60.0,'EPSG:4326',5.0,'FALSE',0.0,'Level-3','JPEG',45.2,'TRUE','Public Domain','USDA NAIP','Annual','High resolution orthophoto','NW');

-- Urban garden plots
CREATE TABLE urban_garden_plots
(
    PlotID INTEGER PRIMARY KEY,
    PlotName TEXT,
    Neighborhood TEXT,
    Address TEXT,
    SizeSqM REAL,
    SoilType TEXT,
    SunExposure TEXT,
    WaterSource TEXT,
    AssignedTo TEXT,
    AssignedDate DATE,
    HarvestSeasonStart DATE,
    HarvestSeasonEnd DATE,
    CropTypes TEXT,
    OrganicCertification BOOLEAN,
    CompostAvailable BOOLEAN,
    ToolShareProgram BOOLEAN,
    PlotStatus TEXT,
    MaintenanceFrequency TEXT,
    VolunteerCount INTEGER,
    FundingSource TEXT,
    AnnualBudget REAL,
    ContactPhone TEXT,
    EmailContact TEXT,
    Notes TEXT,
    CityZoneCode TEXT
);

INSERT INTO urban_garden_plots VALUES
(501,'Sunrise Meadow','Maple District','12 Greenway Ln',250.0,'Loam','Full Sun','Municipal', 'Community Group A','2022-03-01','2022-05-15','2022-10-01','Tomatoes, Basil, Lettuce',TRUE,TRUE,TRUE,'Active','Weekly',12,'City Grant',5000,'555-1111','gardenA@example.com','Plot renovated 2022','NW');

INSERT INTO urban_garden_plots VALUES
(502,'Riverbank Refuge','River Edge','34 Creekside Blvd',180.0,'Sandy','Partial Shade','Rain Barrel','Community Group B','2021-04-10','2021-06-01','2021-09-30','Kale, Carrots, Beans',FALSE,FALSE,FALSE,'Active','Biweekly',8,'Donations',3000,'555-2222','gardenB@example.com','Near floodplain, monitor water level','NW');

INSERT INTO urban_garden_plots VALUES
(503,'City Roof Oasis','Downtown','200 Skyline Ave',90.0,'Artificial','Full Sun','Recycled Water','Corporate Sponsor','2023-01-20','2023-04-01','2023-09-30','Herbs, Microgreens',TRUE,TRUE,TRUE,'Planned','Monthly',4,'Corporate Sponsorship',2000,'555-3333','gardenC@example.com','Rooftop container garden','NW');

-- River water quality records
CREATE TABLE river_water_quality_records
(
    SampleID INTEGER PRIMARY KEY,
    RiverName TEXT,
    SampleDate DATE,
    SampleTime TEXT,
    Latitude REAL,
    Longitude REAL,
    TemperatureC REAL,
    pH REAL,
    DissolvedOxygenMgL REAL,
    ConductivityUsCm REAL,
    TurbidityNTU REAL,
    NitratesMgL REAL,
    PhosphatesMgL REAL,
    TotalSuspendedSolidsMgL REAL,
    BacterialCountCFU100ml INTEGER,
    HeavyMetalsPbUgL REAL,
    HeavyMetalsCdUgL REAL,
    SamplingMethod TEXT,
    AnalystName TEXT,
    Laboratory TEXT,
    ResultStatus TEXT,
    Comments TEXT,
    RegionCode TEXT,
    DataQualityFlag TEXT
);

INSERT INTO river_water_quality_records VALUES
(601,'Willow Creek','2023-07-10','08:30',45.1234,-122.5678,15.2,7.4,8.5,120.0,3.2,0.8,0.05,15,250,'0.02','0.001','Grab','Emily Green','State Lab','Accepted','Clear water','NW','A');

INSERT INTO river_water_quality_records VALUES
(602,'Maple River','2023-07-11','14:45',45.2345,-122.6789,17.0,6.9,7.2,150.0,5.0,1.2,0.10,30,1200,'0.05','0.003','Automatic','David Lee','Private Lab','Pending','High turbidity due to recent rain','NW','B');

INSERT INTO river_water_quality_records VALUES
(603,'Cedar Stream','2023-07-12','19:20',45.3456,-122.7890,13.5,8.1,9.0,110.0,2.5,0.4,0.02,10,80,'0.01','0.0005','Grab','Susan Miller','University Lab','Accepted','Good condition','NW','A');

-- Public library catalog
CREATE TABLE public_library_catalog
(
    ItemID INTEGER PRIMARY KEY,
    Title TEXT,
    Subtitle TEXT,
    AuthorFirstName TEXT,
    AuthorLastName TEXT,
    PublicationYear INTEGER,
    ISBN TEXT,
    Edition TEXT,
    Language TEXT,
    Format TEXT,
    PageCount INTEGER,
    Publisher TEXT,
    SubjectArea TEXT,
    DeweyDecimal TEXT,
    CallNumber TEXT,
    AvailabilityStatus TEXT,
    LocationBranch TEXT,
    ShelfLocation TEXT,
    DateAcquired DATE,
    AcquisitionMethod TEXT,
    Cost REAL,
    CurrentValue REAL,
    ConditionRating INTEGER,
    AgeGroup TEXT,
    MediaType TEXT,
    Summary TEXT,
    Keywords TEXT,
    SeriesName TEXT,
    VolumeNumber INTEGER,
    CityRegionCode TEXT
);

INSERT INTO public_library_catalog VALUES
(701,'The Journey Home','A Tale of Discovery','Anna','Keller',2022,'978-1234567890','First','English','Hardcover',352,'River Press','Fiction','823.92','FIC KEL','Available','Central Library','FIC KEL A1','2023-01-15','Purchase',25.00,30.00,9,'Adult','Print','A family adventure across continents','travel, family, adventure','The Journey Series',1,'NW');

INSERT INTO public_library_catalog VALUES
(702,'Data Science Essentials','Practical Guide','Brian','Morris',2021,'978-0987654321','Second','English','eBook',420,'TechWorld','Computer Science','005.133','CS MORS','Checked Out','East Branch','E-BOOK','2022-11-20','License',0.00,15.00,8,'Adult','Digital','Comprehensive guide to data analysis','data, analytics, python','Data Science Series',2,'NW');

INSERT INTO public_library_catalog VALUES
(703,'Kids' Cooking Fun','Recipes for Little Chefs','Carla','Nguyen',2020,'978-1122334455','First','English','Paperback',96,'KidsPress','Cooking','641.5','CUL NGU','Available','West Branch','CUL NGU B2','2021-05-10','Donation',5.00,7.00,10,'Children','Print','Easy recipes for kids aged 5-10','cooking, kids, recipes','Kids Cookbooks',1,'NW');

-- Coastal flood monitoring
CREATE TABLE coastal_flood_monitoring
(
    MonitoringStationID INTEGER PRIMARY KEY,
    StationName TEXT,
    Latitude REAL,
    Longitude REAL,
    ElevationMeters REAL,
    InstallationDate DATE,
    SensorType TEXT,
    MeasurementIntervalMinutes INTEGER,
    WaterLevelMeters REAL,
    TideLevelMeters REAL,
    WaveHeightMeters REAL,
    SalinityPSU REAL,
    TemperatureC REAL,
    PrecipitationMm REAL,
    WindSpeedKph REAL,
    WindDirection TEXT,
    StormSurgeAlert BOOLEAN,
    DataTransmissionMethod TEXT,
    MaintenanceLastDate DATE,
    MaintenanceFrequency TEXT,
    OperatorName TEXT,
    ContactPhone TEXT,
    DataQualityFlag TEXT,
    Notes TEXT,
    RegionCode TEXT,
    AlertLevel TEXT
);

INSERT INTO coastal_flood_monitoring VALUES
(801,'Harbor View','45.1234','-122.5678',2.5,'2020-04-15','Radar','15',0.85,0.90,1.2,35.0,16.5,0.0,12.0,'NE',FALSE,'Cellular','2023-06-01','Annual','Coastal Agency','555-4444','A','Station calibrated','NW','Normal');

INSERT INTO coastal_flood_monitoring VALUES
(802,'Bayside','45.2345','-122.6789',1.8,'2021-09-10','Pressure','10',1.45,1.40,2.0,33.5,17.2,5.0,20.5,'SE',TRUE,'Satellite','2023-05-20','Semi-Annual','Maritime Dept','555-5555','B','High wave activity','NW','Warning');

INSERT INTO coastal_flood_monitoring VALUES
(803,'Dune Edge','45.3456','-122.7890',0.9,'2022-01-20','Acoustic','30',0.30,0.35,0.5,36.0,15.8,0.0,8.0','SW',FALSE,'Radio','2023-04-15','Quarterly','Environmental Agency','555-6666','C','Stable','NW','Normal');

-- Emergency response units
CREATE TABLE emergency_response_units
(
    UnitID INTEGER PRIMARY KEY,
    UnitName TEXT,
    UnitType TEXT,
    StationAddress TEXT,
    ContactNumber TEXT,
    CommanderName TEXT,
    PersonnelCount INTEGER,
    VehicleCount INTEGER,
    EquipmentInventory TEXT,
    OperationalStatus TEXT,
    CoverageAreaSqKm REAL,
    AverageResponseTimeMin REAL,
    ShiftPattern TEXT,
    Accreditation TEXT,
    FundingSource TEXT,
    AnnualBudget REAL,
    LastTrainingDate DATE,
    NextInspectionDate DATE,
    RadioChannel TEXT,
    GPSLatitude REAL,
    GPSLongitude REAL,
    ServiceRegionCode TEXT,
    MutualAidAgreement BOOLEAN,
    PrimaryDisasterType TEXT,
    Notes TEXT,
    CreatedDate DATE
);

INSERT INTO emergency_response_units VALUES
(901,'Northwest Fire Brigade','Fire','123 Main St','555-7777','Chief Aaron Lee',45,10,'Engine, Ladder, Rescue','Active',150.0,6.5,'24/7','NFPA','City Budget',1200000,'2023-02-10','2024-02-10','CH1',45.1234,-122.5678,'NW',TRUE,'Fire','Equipped with modern apparatus','2020-01-01');

INSERT INTO emergency_response_units VALUES
(902,'River Rescue Squad','Medical','456 River Rd','555-8888','Captain Maria Gomez',30,5,'Ambulance, Trauma Kit','Active',80.0,8.3,'Day/Night','EMSC','State Grant',750000,'2023-03-20','2024-03-20','CH2',45.2345,-122.6789,'NW',TRUE,'Flood','Specialized in water rescues','2021-06-15');

INSERT INTO emergency_response_units VALUES
(903,'Eastside Hazmat Team','Hazardous Materials','789 Industrial Ave','555-9999','Lieutenant Kevin Zhou',20,3,'HazMat Suit, Decontamination Unit','Standby',60.0,12.0,'12‑hour','OSHA','Federal Aid',500000,'2023-01-05','2023-12-05','CH3',45.3456,-122.7890,'NW',FALSE,'Chemical Spill','Trained for CBRN incidents','2022-03-30');