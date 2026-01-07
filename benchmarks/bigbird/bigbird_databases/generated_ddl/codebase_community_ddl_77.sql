-- Research collaborator profiles
CREATE TABLE research_collaborator_profiles
(
    CollaboratorId INTEGER PRIMARY KEY,
    FirstName TEXT,
    LastName TEXT,
    Institution TEXT,
    Department TEXT,
    Email TEXT,
    Phone TEXT,
    ORCID TEXT,
    Role TEXT,
    StartDate DATE,
    EndDate DATE,
    FundingAmount REAL,
    ProjectCount INTEGER,
    PublicationsCount INTEGER,
    HIndex INTEGER,
    ExpertiseAreas TEXT,
    Bio TEXT,
    IsActive INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Notes TEXT
);

INSERT INTO research_collaborator_profiles VALUES (1,'Alice','Smith','UniversityA','Physics','alice.smith@unia.edu','1234567890','0000-0001-2345-6789','Principal Investigator','2020-01-15',NULL,250000.00,5,30,12,'Quantum Mechanics;Optics','Researcher in quantum optics',1,'2023-01-01 10:00:00','2023-01-01 10:00:00','');
INSERT INTO research_collaborator_profiles VALUES (2,'Bob','Johnson','InstituteB','Chemistry','bob.johnson@instb.org','0987654321','0000-0002-3456-7890','Co-Investigator','2019-06-01','2024-05-30',150000.00,3,15,8,'Organic Synthesis;Catalysis','Experienced in catalytic processes',1,'2023-01-02 11:30:00','2023-01-02 11:30:00','');
INSERT INTO research_collaborator_profiles VALUES (3,'Carol','Lee','LabC','Biology','carol.lee@labc.net','5551234567','0000-0003-4567-8901','Research Assistant','2021-09-10',NULL,50000.00,1,5,2,'Cell Biology;Genetics','Supports lab activities',1,'2023-01-03 09:15:00','2023-01-03 09:15:00','');

-- Satellite imagery metadata
CREATE TABLE satellite_imagery_metadata
(
    ImageId INTEGER PRIMARY KEY,
    SatelliteName TEXT,
    CaptureDate DATETIME,
    Resolution REAL,
    BandCount INTEGER,
    CloudCoverage REAL,
    Latitude REAL,
    Longitude REAL,
    FileSizeMB REAL,
    Format TEXT,
    SensorType TEXT,
    ProcessingLevel TEXT,
    Provider TEXT,
    OrbitNumber INTEGER,
    SunElevation REAL,
    SunAzimuth REAL,
    GroundSampleDistance REAL,
    Country TEXT,
    Region TEXT,
    Tiled INTEGER,
    ThumbnailUrl TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO satellite_imagery_metadata VALUES (101,'Landsat8','2022-07-15 10:20:00',30.0,8,12.5,34.056,-117.195,250.5,'GeoTIFF','OLI','Level2','USGS',14567,45.0,135.0,0.5,'USA','California',1,'http://example.com/thumb1.jpg','2023-01-01 12:00:00','2023-01-01 12:00:00');
INSERT INTO satellite_imagery_metadata VALUES (102,'Sentinel2','2022-08-02 14:45:00',10.0,13,5.0,48.856,2.352,150.2,'JP2','MSI','Level1C','ESA',8732,50.0,140.0,0.2,'France','Île-de-France',0,'http://example.com/thumb2.jp2','2023-01-02 13:30:00','2023-01-02 13:30:00');
INSERT INTO satellite_imagery_metadata VALUES (103,'WorldView3','2022-09-10 08:15:00',0.31,8,0.0,55.755,37.617,500.0,'GeoTIFF','PAN+MS','Level2A','Maxar',3210,60.0,150.0,0.31,'Russia','Moscow',1,'http://example.com/thumb3.tif','2023-01-03 14:45:00','2023-01-03 14:45:00');

-- Food nutrition facts
CREATE TABLE food_nutrition_facts
(
    FoodId INTEGER PRIMARY KEY,
    FoodName TEXT,
    ServingSize REAL,
    ServingUnit TEXT,
    Calories INTEGER,
    TotalFat_g REAL,
    SaturatedFat_g REAL,
    TransFat_g REAL,
    Cholesterol_mg REAL,
    Sodium_mg REAL,
    TotalCarbohydrate_g REAL,
    DietaryFiber_g REAL,
    Sugars_g REAL,
    Protein_g REAL,
    VitaminA_IU REAL,
    VitaminC_mg REAL,
    Calcium_mg REAL,
    Iron_mg REAL,
    Category TEXT,
    SubCategory TEXT,
    IsOrganic INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO food_nutrition_facts VALUES (1,'Apple',182,'g',95,0.3,0.1,0.0,0,2,25.1,4.4,18.9,0.5,98,8.4,11,0.22,'Fruit','Fresh',1,'2023-01-01 08:00:00','2023-01-01 08:00:00');
INSERT INTO food_nutrition_facts VALUES (2,'Almonds',28,'g',164,14.2,1.1,0.0,0,0,6.1,3.5,1.2,6.0,1,0,76,1.0,'Nut','Raw',0,'2023-01-02 09:15:00','2023-01-02 09:15:00');
INSERT INTO food_nutrition_facts VALUES (3,'Whole Milk',244,'ml',149,8.0,5.0,0.0,24,120,12.0,0,12.0,8.0,496,0,276,0.1,'Dairy','Milk',0,'2023-01-03 10:30:00','2023-01-03 10:30:00');

-- Fleet vehicle service records
CREATE TABLE fleet_vehicle_service_records
(
    ServiceRecordId INTEGER PRIMARY KEY,
    VehicleId INTEGER,
    ServiceDate DATE,
    Odometer_km INTEGER,
    ServiceType TEXT,
    ServiceProvider TEXT,
    Cost_usd REAL,
    PartsReplaced TEXT,
    TechnicianName TEXT,
    NextServiceDate DATE,
    ServiceNotes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    MileageAtNextService INTEGER,
    ServiceCategory TEXT,
    WarrantyCovered INTEGER,
    ServiceLocation TEXT,
    FuelLevel_percent INTEGER,
    TireCondition TEXT,
    BrakeCondition TEXT,
    BatteryHealth_percent INTEGER,
    EmissionTestPassed INTEGER,
    AdditionalInfo TEXT
);

INSERT INTO fleet_vehicle_service_records VALUES (1001,20001,'2023-01-10',45200,'Oil Change','AutoShopA',199.99,'Oil Filter;Engine Oil','John Doe','2023-07-10','Routine oil change','2023-01-10 08:00:00','2023-01-10 08:00:00',50200,'Maintenance',1,'Garage A',80,'Good','Good',95,1,'');
INSERT INTO fleet_vehicle_service_records VALUES (1002,20002,'2023-02-05',123500,'Brake Replacement','BrakeCenter','750.00','Brake Pads;Rotors','Jane Smith','2023-08-05','Replaced front brakes','2023-02-05 09:30:00','2023-02-05 09:30:00',129500,'Repair',0,'Garage B',60,'Replaced','New',88,1,'');
INSERT INTO fleet_vehicle_service_records VALUES (1003,20003,'2023-03-12',30000,'Tire Rotation','TireWorld','0.00','None','Mike Lee','2023-09-12','Rotated all four tires','2023-03-12 07:45:00','2023-03-12 07:45:00',36000,'Maintenance',1,'Garage C',90,'Excellent','Good',92,1,'');

-- Library digital collection
CREATE TABLE library_digital_collection
(
    CollectionId INTEGER PRIMARY KEY,
    Title TEXT,
    Description TEXT,
    Creator TEXT,
    PublicationYear INTEGER,
    Language TEXT,
    FileFormat TEXT,
    FileSizeMB REAL,
    AccessLevel TEXT,
    License TEXT,
    DOI TEXT,
    ISBN TEXT,
    Keywords TEXT,
    Category TEXT,
    SubCategory TEXT,
    UploadDate DATE,
    LastModified DATE,
    URL TEXT,
    ThumbnailPath TEXT,
    RightsHolder TEXT,
    Reviewer TEXT,
    ReviewDate DATE,
    Rating REAL,
    CommentCount INTEGER,
    IsPublic INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO library_digital_collection VALUES (1,'Ancient Coins Catalog','A high‑resolution scan of ancient coins collection','MuseumX',2015,'English','PDF',15.2,'Restricted','CC-BY','10.1234/coin.2015','', 'coins;archaeology;history','Archaeology','Coins','2023-01-01','2023-01-15','http://example.com/coins.pdf','/thumbs/coins.jpg','MuseumX','Dr. Historian','2023-01-20',4.5,12,0,'2023-01-01 12:00:00','2023-01-15 12:00:00');
INSERT INTO library_digital_collection VALUES (2,'Modern Poetry Anthology','Collection of modern poems','PoetOrg',2020,'English','EPUB',2.5,'Open','CC0','10.5678/poetry.2020','', 'poetry;modern;literature','Literature','Poetry','2023-02-05','2023-02-07','http://example.com/poetry.epub','/thumbs/poetry.jpg','PoetOrg','Editor A','2023-02-10',4.8,5,1,'2023-02-05 09:00:00','2023-02-07 09:00:00');
INSERT INTO library_digital_collection VALUES (3,'Data Science Handbook','Comprehensive guide to data science techniques','DataPress',2018,'English','MOBI',8.0,'Open','CC-BY-NC','10.9012/ds.2018','', 'data science;machine learning;statistics','Technology','Data Science','2023-03-01','2023-03-02','http://example.com/ds_handbook.mobi','/thumbs/ds.jpg','DataPress','Reviewer B','2023-03-05',4.2,8,1,'2023-03-01 10:30:00','2023-03-02 10:30:00');

-- Urban traffic sensor readings
CREATE TABLE urban_traffic_sensor_readings
(
    SensorId INTEGER,
    LocationDescription TEXT,
    Latitude REAL,
    Longitude REAL,
    Timestamp DATETIME,
    VehicleCount INTEGER,
    AvgSpeed_kmh REAL,
    HeavyVehicleCount INTEGER,
    PedestrianCount INTEGER,
    CyclistCount INTEGER,
    AirQualityIndex INTEGER,
    NoiseLevel_dB REAL,
    Temperature_C REAL,
    Humidity_percent REAL,
    WeatherCondition TEXT,
    RoadCondition TEXT,
    IncidentReported INTEGER,
    IncidentType TEXT,
    CameraActive INTEGER,
    DataQualityScore REAL,
    FirmwareVersion TEXT,
    BatteryLevel_percent INTEGER,
    SignalStrength_dbm REAL,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    PRIMARY KEY (SensorId, Timestamp)
);

INSERT INTO urban_traffic_sensor_readings VALUES (301,'5th Ave & Main St',40.7128,-74.0060,'2023-01-15 08:00:00',120,45.5,12,30,5,45,68.0,22.5,55.0,'Clear','Dry',0,'',1,0.98,'v1.2.3',85, -70,'2023-01-15 08:05:00','2023-01-15 08:05:00');
INSERT INTO urban_traffic_sensor_readings VALUES (301,'5th Ave & Main St',40.7128,-74.0060,'2023-01-15 09:00:00',200,38.2,20,45,8,50,70.0,23.0,60.0,'Clear','Dry',0,'',1,0.96,'v1.2.3',83, -68,'2023-01-15 09:05:00','2023-01-15 09:05:00');
INSERT INTO urban_traffic_sensor_readings VALUES (301,'5th Ave & Main St',40.7128,-74.0060,'2023-01-15 10:00:00',250,32.0,25,55,10,55,72.5,23.5,58.0,'Clear','Wet',1,'Minor Accident',1,0.94,'v1.2.3',80, -65,'2023-01-15 10:05:00','2023-01-15 10:05:00');

-- Wildlife observation log
CREATE TABLE wildlife_observation_log
(
    ObservationId INTEGER PRIMARY KEY,
    SpeciesCommonName TEXT,
    SpeciesScientificName TEXT,
    ObserverId INTEGER,
    ObservationDate DATE,
    Latitude REAL,
    Longitude REAL,
    HabitatType TEXT,
    CountObserved INTEGER,
    Sex TEXT,
    AgeClass TEXT,
    BehaviorNotes TEXT,
    PhotoUrl TEXT,
    AudioUrl TEXT,
    Weather TEXT,
    Temperature_C REAL,
    WindSpeed_kmh REAL,
    Visibility TEXT,
    ConservationStatus TEXT,
    ThreatLevel TEXT,
    ReportingAgency TEXT,
    ValidationStatus TEXT,
    ValidatedBy TEXT,
    ValidationDate DATE,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO wildlife_observation_log VALUES (5001,'Bald Eagle','Haliaeetus leucocephalus',101,'2023-04-10',45.123,-122.456,'Forest',2,'Male','Adult','Soaring over river','http://example.com/eagle1.jpg','', 'Sunny',18.0,12.0,'Good','Least Concern','Low','State Wildlife Dept','Pending','','', '2023-04-11 09:00:00','2023-04-11 09:00:00');
INSERT INTO wildlife_observation_log VALUES (5002,'American Bison','Bison bison',102,'2023-04-12',44.987,-123.321,'Grassland',5,'Female','Subadult','Grazing near herd','http://example.com/bison1.jpg','', 'Partly Cloudy',15.0,8.0,'Moderate','Near Threatened','Medium','National Park Service','Approved','Officer J','2023-04-13', '2023-04-12 10:30:00','2023-04-12 10:30:00');
INSERT INTO wildlife_observation_log VALUES (5003,'Eastern Box Turtle','Terrapene carolina',103,'2023-04-15',42.678,-121.789,'Wetland',1,'Female','Juvenile','Moving slowly near water edge','http://example.com/turtle1.jpg','', 'Rainy',12.0,5.0,'Low','Least Concern','Low','County Conservation Dept','Pending','','', '2023-04-16 08:45:00','2023-04-16 08:45:00');

-- Manufacturing shift output
CREATE TABLE manufacturing_shift_output
(
    ShiftId INTEGER PRIMARY KEY,
    PlantId INTEGER,
    ShiftDate DATE,
    ShiftType TEXT,
    OperatorId INTEGER,
    UnitsProduced INTEGER,
    DefectiveUnits INTEGER,
    ProductionHours REAL,
    DowntimeMinutes INTEGER,
    ReasonForDowntime TEXT,
    EnergyConsumption_kWh REAL,
    MaterialUsed_kg REAL,
    WasteGenerated_kg REAL,
    OEE_percent REAL,
    Yield_percent REAL,
    MaintenancePerformed INTEGER,
    MaintenanceDetails TEXT,
    SafetyIncidents INTEGER,
    Comments TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    SupervisorId INTEGER,
    ShiftTargetUnits INTEGER
);

INSERT INTO manufacturing_shift_output VALUES (9001,10,'2023-03-01','Day',2001,5000,45,8.0,30,'Machine setup',1200.5,2500.0,150.0,85.0,90.0,1,'Lubrication','0','No major issues','2023-03-01 17:00:00','2023-03-01 17:00:00',3001,5200);
INSERT INTO manufacturing_shift_output VALUES (9002,10,'2023-03-02','Night',2002,4800,30,8.0,20,'Power outage',1150.0,2400.0,140.0,88.0,92.0,0,'','1','Brief power flicker','2023-03-02 17:30:00','2023-03-02 17:30:00',3002,5000);
INSERT INTO manufacturing_shift_output VALUES (9003,11,'2023-03-01','Day',2003,5200,60,8.0,45,'Tool change',1250.8,2600.0,160.0,82.0,87.0,1,'Tool replacement','0','All good','2023-03-01 18:00:00','2023-03-01 18:00:00',3003,5400);

-- Clinical trial participant metrics
CREATE TABLE clinical_trial_participant_metrics
(
    ParticipantId INTEGER PRIMARY KEY,
    TrialId INTEGER,
    EnrollmentDate DATE,
    Age INTEGER,
    Sex TEXT,
    Height_cm REAL,
    Weight_kg REAL,
    BMI REAL,
    BaselineScore REAL,
    Week1Score REAL,
    Week2Score REAL,
    Week4Score REAL,
    AdverseEventsCount INTEGER,
    MedicationDosage_mg REAL,
    ComplianceRate_percent REAL,
    LabResult1 REAL,
    LabResult2 REAL,
    LabResult3 REAL,
    OutcomeStatus TEXT,
    FollowUpDate DATE,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    InvestigatorId INTEGER,
    Notes TEXT
);

INSERT INTO clinical_trial_participant_metrics VALUES (30001,4001,'2023-01-10',45,'Female',165.0,68.0,24.98,5.0,4.5,4.2,3.8,1,50.0,95.0,1.2,0.8,1.0,'Completed','2023-06-10','2023-01-10 09:00:00','2023-01-10 09:00:00',5001,'No issues');
INSERT INTO clinical_trial_participant_metrics VALUES (30002,4001,'2023-01-12',52,'Male',178.0,85.0,26.80,6.0,5.5,5.2,4.9,0,50.0,98.0,1.3,0.9,1.1,'Ongoing','2023-07-12','2023-01-12 10:15:00','2023-01-12 10:15:00',5002,'Minor headache at week 2');
INSERT INTO clinical_trial_participant_metrics VALUES (30003,4002,'2023-02-05',37,'Female',160.0,55.0,21.48,4.0,3.8,3.6,3.2,2,75.0,90.0,1.0,0.7,0.9,'Withdrawn','2023-05-05','2023-02-05 08:30:00','2023-02-05 08:30:00',5003,'Discontinued due to adverse reaction');

-- Energy grid substation status
CREATE TABLE energy_grid_substation_status
(
    SubstationId INTEGER PRIMARY KEY,
    Name TEXT,
    Region TEXT,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    VoltageLevel_kV REAL,
    Capacity_MW REAL,
    CurrentLoad_MW REAL,
    LoadPercentage REAL,
    Frequency_Hz REAL,
    Temperature_C REAL,
    Humidity_percent REAL,
    FaultCount INTEGER,
    MaintenanceScheduled INTEGER,
    NextMaintenanceDate DATE,
    OperatorContact TEXT,
    PowerQualityScore REAL,
    RenewableIntegrationPercent REAL,
    BackupPowerAvailable INTEGER,
    TransformerHealthScore REAL,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Status TEXT,
    LastInspectionDate DATE
);

INSERT INTO energy_grid_substation_status VALUES (8001,'Substation Alpha','North Region',45.123,-120.456,'2010-05-20',138.0,200.0,150.0,75.0,60.0,40.5,55.0,2,1,'2023-09-01','operatorA@example.com',92.5,30.0,1,88.0,'2023-01-01 12:00:00','2023-01-01 12:00:00','Operational','2023-06-15');
INSERT INTO energy_grid_substation_status VALUES (8002,'Substation Beta','South Region',36.789,-115.321,'2015-11-10',115.0,150.0,120.0,80.0,59.9,38.0,60.0,0,0,NULL,'operatorB@example.com',95.0,45.0,1,90.0,'2023-01-05 09:30:00','2023-01-05 09:30:00','Operational','2023-07-20');
INSERT INTO energy_grid_substation_status VALUES (8003,'Substation Gamma','East Region',40.567,-122.987,'2008-03-15',230.0,300.0,270.0,90.0,60.2,42.0,58.0,5,1,'2023-10-10','operatorC@example.com',89.0,20.0,0,85.0,'2023-01-10 15:45:00','2023-01-10 15:45:00','Maintenance','2023-05-05');