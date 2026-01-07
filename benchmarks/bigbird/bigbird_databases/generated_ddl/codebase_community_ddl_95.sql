-- Research studies meta data
CREATE TABLE research_studies
(
    StudyId                INTEGER PRIMARY KEY,
    Title                  TEXT,
    LeadResearcherId       INTEGER,
    Institution            TEXT,
    StartDate              DATETIME,
    EndDate                DATETIME,
    FundingAmount          REAL,
    FundingAgency          TEXT,
    StudyType              TEXT,
    Status                 TEXT,
    Description            TEXT,
    NumberOfParticipants   INTEGER,
    DataRepositoryUrl      TEXT,
    EthicsApprovalDate    DATETIME,
    IsPublished            INTEGER,
    PublicationDoi         TEXT,
    PrimaryField           TEXT,
    SecondaryField         TEXT,
    StudyPhase             TEXT,
    ConfidentialFlag       INTEGER
);

INSERT INTO research_studies VALUES (1,'Study on AI Ethics',101,'Tech University','2022-01-15','2024-06-30',250000.00,'National Science Foundation','Observational','Active','A study examining the ethical implications of AI systems',150,'http://datarepo.org/aiethics','2021-12-01',0,'','Computer Science','Philosophy','Phase2',0);
INSERT INTO research_studies VALUES (2,'Renewable Energy Adoption',102,'Green Institute','2021-05-01','2023-12-31',180000.00,'Energy Department','Experimental','Completed','Assessment of renewable energy uptake in rural areas',200,'http://datarepo.org/renewable','2021-04-20',1,'10.1234/renew2023','Environmental Science','Economics','Phase3',0);
INSERT INTO research_studies VALUES (3,'Urban Mobility Patterns',103,'City Planning College','2023-03-10','2025-09-30',300000.00,'Urban Development Fund','Survey','Ongoing','Analysis of commuting behaviors in metropolitan regions',500,'http://datarepo.org/urbanmobility','2023-02-15',0,'','Urban Studies','Transportation Engineering','Phase1',1);


-- Medical trial records (non‑clinical)
CREATE TABLE medical_trials
(
    TrialId                INTEGER PRIMARY KEY,
    TrialName              TEXT,
    SponsorId              INTEGER,
    TherapeuticArea        TEXT,
    Phase                  TEXT,
    EnrollmentTarget       INTEGER,
    EnrollmentActual       INTEGER,
    StartDate              DATETIME,
    CompletionDate         DATETIME,
    Status                 TEXT,
    PrimaryInvestigatorId  INTEGER,
    LocationCity           TEXT,
    LocationCountry        TEXT,
    FundingAmount          REAL,
    RegulatoryApprovalDate DATETIME,
    IsPlaceboControlled    INTEGER,
    BlindingType           TEXT,
    OutcomeMeasure         TEXT,
    DataCaptureSystem      TEXT,
    ConfidentialFlag       INTEGER
);

INSERT INTO medical_trials VALUES (1,'Heart Health Study',201,'Cardiology','Phase2',300,250,'2022-02-01','2024-08-15','Active',301,'Boston','USA',500000.00,'2021-12-20',1,'Double','Blood Pressure Reduction','EHR System',0);
INSERT INTO medical_trials VALUES (2,'Diabetes Management Trial',202,'Endocrinology','Phase3',500,500,'2021-06-10','2023-11-30','Completed',302,'London','UK',750000.00,'2021-04-05',0,'None','HbA1c Levels','Clinical Data Warehouse',0);
INSERT INTO medical_trials VALUES (3,'Asthma Inhaler Efficacy',203,'Pulmonology','Phase1',100,80,'2023-01-15','2024-05-20','Ongoing',303,'Sydney','Australia',250000.00,'2022-12-01',1,'Single','Peak Flow Improvement','Electronic Diary',1);


-- Artifact collections for cultural heritage
CREATE TABLE artifact_collections
(
    CollectionId           INTEGER PRIMARY KEY,
    CollectionName         TEXT,
    CuratorId              INTEGER,
    MuseumName             TEXT,
    AcquisitionDate        DATETIME,
    TotalItems             INTEGER,
    Category               TEXT,
    Period                 TEXT,
    Region                 TEXT,
    ConservationStatus    TEXT,
    DisplayLocation        TEXT,
    InsuranceValue         REAL,
    Source                 TEXT,
    CatalogReference       TEXT,
    IsDigitalAvailable    INTEGER,
    DigitalArchiveUrl      TEXT,
    ExhibitionStatus       TEXT,
    LastRestorationDate    DATETIME,
    AccessibilityLevel    TEXT,
    ConfidentialFlag       INTEGER
);

INSERT INTO artifact_collections VALUES (1,'Ancient Pottery',401,'National Museum','2018-03-22',120,'Ceramics','Bronze Age','Mesopotamia','Stable','Gallery A1',300000.00,'Archaeological Dig','AC-001',1,'http://archive.org/ancientpottery','On Display','2020-09-10','Public',0);
INSERT INTO artifact_collections VALUES (2,'Medieval Manuscripts',402,'Historical Library','2015-11-05',45,'Manuscripts','12th Century','Europe','Fragile','Restricted Room',800000.00,'Donation','MM-045',0,'','In Storage','2019-04-15','Restricted',0);
INSERT INTO artifact_collections VALUES (3,'Modern Art Sculptures',403,'City Art Center','2020-07-14',30,'Sculpture','Contemporary','Global','Excellent','Outdoor Plaza',1500000.00,'Commission','MS-210',1,'http://cityartcenter.org/sculptures','Outdoor Exhibit','2021-06-01','Public',0);


-- Energy grid assets inventory
CREATE TABLE energy_grid_assets
(
    AssetId                INTEGER PRIMARY KEY,
    AssetTag               TEXT,
    AssetType              TEXT,
    Manufacturer           TEXT,
    ModelNumber            TEXT,
    InstallationDate       DATETIME,
    CommissioningDate      DATETIME,
    CapacityMW             REAL,
    VoltageLevelKV         REAL,
    LocationLatitude       REAL,
    LocationLongitude      REAL,
    OwnerOrganizationId    INTEGER,
    ServiceStatus          TEXT,
    LastInspectionDate     DATETIME,
    NextInspectionDue      DATETIME,
    MaintenanceContractId  INTEGER,
    IsCriticalInfrastructure INTEGER,
    OperationalSinceYear   INTEGER,
    DecommissionDate       DATETIME,
    ConfidentialFlag       INTEGER
);

INSERT INTO energy_grid_assets VALUES (1,'EG-001','Transformer','GE','TRX-5000','2010-05-20','2010-07-01',250.0,115.0,40.7128,-74.0060,501,'Operational','2023-03-15','2024-03-15',801,1,2010,'','0');
INSERT INTO energy_grid_assets VALUES (2,'EG-002','Substation','Siemens','SUB-300','2015-09-10','2015-11-05',0.0,220.0,34.0522,-118.2437,502,'Operational','2022-11-20','2023-11-20',802,1,2015,'','0');
INSERT INTO energy_grid_assets VALUES (3,'EG-003','Solar Panel Array','First Solar','FS-AP-100','2022-01-12','2022-02-01',50.0,0.0,37.7749,-122.4194,503,'Operational','2023-06-30','2024-06-30',803,0,2022,'','0');


-- City infrastructure projects (new)
CREATE TABLE city_infrastructure_projects
(
    ProjectId              INTEGER PRIMARY KEY,
    ProjectName            TEXT,
    ProjectCode            TEXT,
    ManagingAgencyId       INTEGER,
    StartDate              DATETIME,
    PlannedEndDate         DATETIME,
    ActualEndDate          DATETIME,
    BudgetUSD              REAL,
    ExpenditureUSD         REAL,
    ProjectStatus          TEXT,
    PrimarySector          TEXT,
    SecondarySector        TEXT,
    LeadEngineerId         INTEGER,
    GeographicRegion       TEXT,
    IsPublicPrivatePartnership INTEGER,
    FundingSource          TEXT,
    EnvironmentalImpactScore REAL,
    CommunityEngagementLevel TEXT,
    RiskAssessmentLevel   TEXT,
    ConfidentialFlag       INTEGER
);

INSERT INTO city_infrastructure_projects VALUES (1,'Downtown Water Main Replacement','DWR-2022',601,'2022-02-01','2024-12-31','',12000000.00,4500000.00,'In Progress','Water','Utilities',701,'Central District',1,'Municipal Bonds',3.2,'High','Medium',0);
INSERT INTO city_infrastructure_projects VALUES (2,'Eastside Light Rail Expansion','LR-EXP-2021',602,'2021-05-15','2025-08-30','',25000000.00,10000000.00,'Ongoing','Transportation','Transit',702,'Eastside',0,'Federal Grant',4.5,'Medium','High',0);
INSERT INTO city_infrastructure_projects VALUES (3,'North Park Solar Lighting','SOLA-NP-2023',603,'2023-03-10','2023-11-30','',800000.00,200000.00,'Completed','Energy','Public Spaces',703,'North Park',0,'City Budget',2.1,'Low','Low',0);


-- Marine biology sample records
CREATE TABLE marine_biology_samples
(
    SampleId               INTEGER PRIMARY KEY,
    SampleCode             TEXT,
    SpeciesName            TEXT,
    SampleType             TEXT,
    CollectionDate         DATETIME,
    CollectionMethod       TEXT,
    Latitude               REAL,
    Longitude              REAL,
    DepthMeters            REAL,
    CollectorId            INTEGER,
    LaboratoryId           INTEGER,
    PreservationMethod     TEXT,
    StorageTemperatureC    REAL,
    DNAExtracted           INTEGER,
    SequencingRunId        INTEGER,
    DataAvailable          INTEGER,
    DataRepositoryUrl      TEXT,
    PermitNumber           TEXT,
    FundingAgency          TEXT,
    ConfidentialFlag       INTEGER
);

INSERT INTO marine_biology_samples VALUES (1,'MB-001','Pacific Salmon','Tissue','2023-06-12','Gill Net',45.1234,-123.4567,15.0,901,1001,'Freezer','-80.0',1,1501,1,'http://marinebio.org/data/MB-001','PERM-2023-01','National Marine Agency',0);
INSERT INTO marine_biology_samples VALUES (2,'MB-002','Blue Whale','Skin','2022-09-05','Biopsy Pole',33.9876,-120.5432,0.0,902,1002,'Ethanol','-20.0',0,1502,0,'','PERM-2022-07','Oceanic Research Fund',0);
INSERT INTO marine_biology_samples VALUES (3,'MB-003','Coral Reef','Water','2023-01-20','Water Bottle',22.3344,-80.1122,5.0,903,1003,'Filtration','4.0',1,1503,1,'http://marinebio.org/data/MB-003','PERM-2023-03','Coastal Conservation Trust',0);


-- Satellite imagery catalog
CREATE TABLE satellite_imagery_catalog
(
    ImageId                INTEGER PRIMARY KEY,
    SatelliteName          TEXT,
    SensorType             TEXT,
    CaptureDate            DATETIME,
    CloudCoverPercent      REAL,
    ResolutionMeters       REAL,
    LatitudeNorth          REAL,
    LatitudeSouth          REAL,
    LongitudeEast          REAL,
    LongitudeWest          REAL,
    ProcessingLevel        TEXT,
    FileFormat             TEXT,
    FileSizeMB             REAL,
    DataProviderId         INTEGER,
    AccessRights           TEXT,
    IsOrthorectified       INTEGER,
    IsPanSharpened         INTEGER,
    ProductUrl             TEXT,
    GeoReferenceSystem     TEXT,
    ConfidentialFlag       INTEGER
);

INSERT INTO satellite_imagery_catalog VALUES (1,'Landsat8','Multispectral','2023-04-15',12.5,30.0,45.0,44.5,-120.0,-119.5,'Level2','GeoTIFF',500.0,1101,'Public',1,0,'http://satdata.org/landsat8/001','WGS84',0);
INSERT INTO satellite_imagery_catalog VALUES (2,'Sentinel2','Multispectral','2022-11-02',5.0,10.0,34.0,33.5,-118.0,-117.5,'Level1C','JPEG2000',250.0,1102,'Restricted',1,1,'http://satdata.org/sentinel2/045','UTM33N',0);
INSERT INTO satellite_imagery_catalog VALUES (3,'WorldView3','Panchromatic','2023-07-20',0.0,0.31,40.5,40.4,-122.3,-122.2,'Level1A','TIFF',1200.0,1103,'Commercial',1,1,'http://satdata.org/worldview3/789','WGS84',1);


-- Food nutrition label registry
CREATE TABLE food_nutrition_labels
(
    LabelId                INTEGER PRIMARY KEY,
    ProductId              INTEGER,
    ProductName            TEXT,
    BrandName              TEXT,
    ServingSizeGrams       REAL,
    CaloriesPerServing     INTEGER,
    TotalFatGrams          REAL,
    SaturatedFatGrams      REAL,
    TransFatGrams          REAL,
    CholesterolMg          REAL,
    SodiumMg               REAL,
    TotalCarbohydrateGrams REAL,
    DietaryFiberGrams      REAL,
    TotalSugarsGrams       REAL,
    AddedSugarsGrams       REAL,
    ProteinGrams           REAL,
    VitaminARatioPercent   REAL,
    CalciumRatioPercent    REAL,
    IronRatioPercent       REAL,
    LabelDate              DATETIME,
    ConfidentialFlag       INTEGER
);

INSERT INTO food_nutrition_labels VALUES (1,301,'Granola Bar','HealthySnacks',40.0,180,6.0,1.5,0.0,0.0,150,22.0,3.0,12.0,0.0,5.0,0.0,10.0,15.0,20.0,'2023-05-01',0);
INSERT INTO food_nutrition_labels VALUES (2,302,'Almond Milk','NutriMilk',240.0,30,2.5,0.0,0.0,0.0,150,1.0,0.5,0.0,0.0,1.0,0.0,2.0,0.0,35.0,'2022-12-15',0);
INSERT INTO food_nutrition_labels VALUES (3,303,'Whole Wheat Bread','Baker\'s Choice',50.0,120,2.0,0.5,0.0,0.0,200,22.0,3.0,3.0,0.0,5.0,0.0,8.0,10.0,15.0,'2023-03-20',0);


-- Wildlife tracking device registry
CREATE TABLE wildlife_tracking_devices
(
    DeviceId               INTEGER PRIMARY KEY,
    DeviceSerialNumber     TEXT,
    SpeciesTracked         TEXT,
    DeploymentDate         DATETIME,
    RecoveryDate           DATETIME,
    Latitude               REAL,
    Longitude              REAL,
    BatteryLifeHours       INTEGER,
    TransmissionIntervalSec INTEGER,
    DataProviderId         INTEGER,
    FirmwareVersion        TEXT,
    IsActive               INTEGER,
    LastSignalStrengthDbm  REAL,
    AntennaType            TEXT,
    AttachmentMethod       TEXT,
    EstimatedWeightKg      REAL,
    Manufacturer           TEXT,
    WarrantyExpirationDate DATETIME,
    ConfidentialFlag       INTEGER,
    Notes                  TEXT
);

INSERT INTO wildlife_tracking_devices VALUES (1,'WT-1001','African Elephant','2022-01-10','', -1.2921,36.8219,5000,3600,1201,'v2.3',1,-75.0,'UHF','Collar',6000.0,'WildTech','2025-01-10',0,'');
INSERT INTO wildlife_tracking_devices VALUES (2,'WT-1002','Bald Eagle','2023-04-22','',45.1234,-122.5678,2000,1800,1202,'v1.7',1,-80.5,'VHF','Leg Band',3.5,'EcoSensors','2026-04-22',0,'');
INSERT INTO wildlife_tracking_devices VALUES (3,'WT-1003','Sea Turtle','2021-09-15','2023-06-30',-33.8688,151.2093,3000,7200,1203,'v3.0',0,NULL,'Satellite','Shell Attachment',180.0,'Oceanic Devices','2024-09-15',1,'Recovered after nesting season');


-- Renewable energy inspection logs
CREATE TABLE renewable_energy_inspections
(
    InspectionId           INTEGER PRIMARY KEY,
    FacilityId             INTEGER,
    FacilityName           TEXT,
    InspectionDate         DATETIME,
    InspectorId            INTEGER,
    InspectionType         TEXT,
    FindingsSummary        TEXT,
    SafetyComplianceScore  REAL,
    MaintenanceRequired   INTEGER,
    FollowUpDate           DATETIME,
    ReportUrl              TEXT,
    WeatherConditions      TEXT,
    TemperatureC           REAL,
    WindSpeedMps           REAL,
    SolarIrradianceWm2     REAL,
    IsCriticalIssue        INTEGER,
    CorrectiveActionTaken  TEXT,
    DocumentationComplete  INTEGER,
    ConfidentialFlag       INTEGER,
    Notes                  TEXT
);

INSERT INTO renewable_energy_inspections VALUES (1,401,'Sunrise Solar Farm','2023-05-12',901,'Annual','All panels functional',9.5,0,'','http://inspections.org/sunrise2023','Sunny',25.0,5.0,800.0,0,'','1','0','');
INSERT INTO renewable_energy_inspections VALUES (2,402,'Windridge Wind Park','2022-11-03',902,'Quarterly','One turbine vibration detected',7.2,1,'2023-02-15','http://inspections.org/windridge2022','Windy',12.0,12.5,0.0,1,'Replaced bearing','1','0','');
INSERT INTO renewable_energy_inspections VALUES (3,403,'Riverbend Hydro Plant','2023-08-20',903,'Special','Low water flow impacting generation',8.0,0,'','http://inspections.org/riverbend2023','Rainy',18.0,2.0,0.0,0,'','1','0','');