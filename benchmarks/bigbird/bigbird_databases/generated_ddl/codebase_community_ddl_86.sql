-- Library assets catalog
CREATE TABLE library_assets
(
    Id INTEGER NOT NULL PRIMARY KEY,
    Title TEXT,
    Author TEXT,
    Publisher TEXT,
    PublicationYear INTEGER,
    ISBN TEXT,
    PageCount INTEGER,
    Language TEXT,
    Genre TEXT,
    ShelfLocation TEXT,
    AcquisitionDate DATETIME,
    Condition TEXT,
    MediaType TEXT,
    DigitalCopyUrl TEXT,
    IsReferenceOnly INTEGER,
    CatalogId TEXT,
    DeweyDecimal TEXT,
    SubjectHeadings TEXT,
    LastCheckedOutDate DATETIME,
    TimesCheckedOut INTEGER,
    CurrentHolderUserId INTEGER,
    Notes TEXT
);
INSERT INTO library_assets VALUES (1,'The Great Gatsby','F Scott Fitzgerald','Scribner',1925,'9780743273565',180,'English','Fiction','A1','2020-01-15 10:00:00','Good','Book','',0,'CAT001','813.52','Novel;Classic',NULL,5,NULL,'First edition copy');
INSERT INTO library_assets VALUES (2,'A Brief History of Time','Stephen Hawking','Bantam',1988,'9780553380163',212,'English','Science','B2','2019-06-20 14:30:00','Excellent','Book','',0,'CAT045','523.1','Science;Physics',NULL,12,NULL,'');
INSERT INTO library_assets VALUES (3,'Inception DVD','Christopher Nolan','Warner Bros',2010,'',0,'English','Film','C3','2021-03-05 09:15:00','New','DVD','http://example.com/inception.mp4',0,'CAT078','791.43','Movie;SciFi',NULL,0,NULL,'Blu-ray version');

-- Museum exhibit items inventory
CREATE TABLE museum_exhibit_items
(
    Id INTEGER NOT NULL PRIMARY KEY,
    Name TEXT,
    Description TEXT,
    Category TEXT,
    OriginCountry TEXT,
    AcquisitionDate DATETIME,
    AcquisitionMethod TEXT,
    EstimatedValue FLOAT,
    CurrentLocation TEXT,
    ExhibitStartDate DATETIME,
    ExhibitEndDate DATETIME,
    CuratorId INTEGER,
    IsOnDisplay INTEGER,
    ConservationStatus TEXT,
    Material TEXT,
    Dimensions TEXT,
    Weight FLOAT,
    PhotoUrl TEXT,
    AudioGuideUrl TEXT,
    Tags TEXT,
    DisplayCaseId INTEGER,
    InsurancePolicyNumber TEXT,
    ConditionRating INTEGER
);
INSERT INTO museum_exhibit_items VALUES (1,'Venetian Mask','18th century ceremonial mask','Costume','Italy','2018-04-12 00:00:00','Donation',12000.00,'Hall A','2022-01-01 00:00:00','2023-01-01 00:00:00',10,1,'Stable','Paper Mache','30x20x10 cm',0.5,'http://example.com/mask.jpg','http://example.com/maskaudio.mp3','Mask;Baroque',101,'POL12345',9);
INSERT INTO museum_exhibit_items VALUES (2,'Ancient Greek Vase','Black-figure pottery','Ceramics','Greece','2015-09-30 00:00:00','Purchase',8500.00,'Hall B','2021-05-15 00:00:00','2022-05-15 00:00:00',12,1,'Good','Terracotta','45x30 cm',2.0,'http://example.com/vase.jpg','', 'Vase;Greek',102,'POL67890',8);
INSERT INTO museum_exhibit_items VALUES (3,'Modern Art Sculpture','Abstract metal sculpture','Sculpture','USA','2020-11-20 00:00:00','Commission',25000.00,'Garden','2023-03-01 00:00:00','2025-03-01 00:00:00',15,0,'Excellent','Steel','200x150x300 cm',150.0,'http://example.com/sculpture.jpg','', 'Abstract;Metal',103,'POL54321',10);

-- Renewable energy facilities registry
CREATE TABLE renewable_energy_facilities
(
    Id INTEGER NOT NULL PRIMARY KEY,
    FacilityName TEXT,
    FacilityType TEXT,
    CapacityMW FLOAT,
    CommissionDate DATETIME,
    OwnerOrganization TEXT,
    Country TEXT,
    StateOrProvince TEXT,
    City TEXT,
    Latitude FLOAT,
    Longitude FLOAT,
    GridConnectionStatus TEXT,
    AnnualGenerationMWh FLOAT,
    OperationalStatus TEXT,
    MaintenanceContact TEXT,
    ContactPhone TEXT,
    LatitudeDegrees INTEGER,
    LongitudeDegrees INTEGER,
    PrimaryFuelSource TEXT,
    EnvironmentalImpactScore INTEGER,
    RenewableEnergyCertificateId TEXT,
    PermitNumber TEXT,
    LastInspectionDate DATETIME,
    Notes TEXT
);
INSERT INTO renewable_energy_facilities VALUES (1,'Sunnyvale Solar Farm','Solar',150.0,'2016-07-15 00:00:00','SunPower Inc','USA','California','Sunnyvale',37.3688,-122.0363,'Connected',300000.0,'Operational','John Doe','5551234567',37,-122,'Solar',85,'REC001','PN12345','2022-12-01 00:00:00','Panel upgrade in 2024');
INSERT INTO renewable_energy_facilities VALUES (2,'Wind Ridge Wind Park','Wind',75.5,'2018-03-20 00:00:00','WindCo Ltd','Canada','Alberta','Calgary',51.0447,-114.0719,'Connected',180000.0,'Operational','Jane Smith','5559876543',51,-114,'Wind',78,'REC042','PN67890','2023-03-10 00:00:00','Turbine blade inspection pending');
INSERT INTO renewable_energy_facilities VALUES (3,'Riverbend Hydro Plant','Hydro',200.0,'2012-11-05 00:00:00','HydroGen Corp','Germany','Bavaria','Munich',48.1351,11.5820,'Connected',900000.0,'Operational','Karl Müller','5555551212',48,11,'Hydro',92,'REC099','PN54321','2023-01-20 00:00:00','Drought affecting water flow');

-- Space mission logs
CREATE TABLE space_mission_logs
(
    Id INTEGER NOT NULL PRIMARY KEY,
    MissionName TEXT,
    LaunchDate DATETIME,
    Vehicle TEXT,
    Destination TEXT,
    MissionStatus TEXT,
    CrewSize INTEGER,
    DurationDays INTEGER,
    PrimaryObjective TEXT,
    SecondaryObjective TEXT,
    LaunchSite TEXT,
    CommandCenter TEXT,
    DataLinkUrl TEXT,
    Summary TEXT,
    Outcome TEXT,
    BudgetMillions FLOAT,
    LeadScientist TEXT,
    AnomalyCount INTEGER,
    SuccessfulExperiments INTEGER,
    FailedExperiments INTEGER,
    LastUpdate DATETIME,
    Remarks TEXT
);
INSERT INTO space_mission_logs VALUES (1,'Artemis I','2022-08-29 12:33:00','Space Launch System','Lunar Orbit','Completed',0,25,'Test lunar trajectory','Technology demonstration','Kennedy Space Center','NASA Mission Control','http://nasa.gov/artemis1/data','First integrated flight of SLS and Orion','Success',4500.0,'Dr Emily Clark',2,12,0,'2023-01-15 00:00:00','All primary goals met');
INSERT INTO space_mission_logs VALUES (2,'Mars Sample Return','2026-05-14 08:20:00','Atlas V','Mars','Planned',0,730,'Collect Martian soil','Return samples to Earth','Cape Canaveral','JPL','http://jpl.nasa.gov/msr','International collaboration mission','Pending',8000.0,'Dr Carlos Ramirez',0,0,0,'2025-12-01 00:00:00','Funding approved');
INSERT INTO space_mission_logs VALUES (3,'Europa Clipper','2024-10-10 03:45:00','Falcon Heavy','Europa','In Progress',0,365,'Study Europa’s ice shell','Search for biosignatures','Vandenberg AFB','ESA Mission Control','http://esa.int/europa/data','High priority for astrobiology','Ongoing',3200.0,'Dr Hana Lee',1,8,1,'2025-02-20 00:00:00','Flyby #3 scheduled for 2026');

-- Archaeology sites database
CREATE TABLE archaeology_sites
(
    Id INTEGER NOT NULL PRIMARY KEY,
    SiteName TEXT,
    Country TEXT,
    Region TEXT,
    Latitude FLOAT,
    Longitude FLOAT,
    DiscoveryYear INTEGER,
    Discoverer TEXT,
    Period TEXT,
    SiteType TEXT,
    AreaSqMeters FLOAT,
    ExcavationStartDate DATETIME,
    ExcavationEndDate DATETIME,
    LeadArchaeologist TEXT,
    FindingsSummary TEXT,
    PreservationStatus TEXT,
    Threats TEXT,
    FundingAgency TEXT,
    BudgetUSD FLOAT,
    PublicAccess INTEGER,
    CoordinatesUTM TEXT
);
INSERT INTO archaeology_sites VALUES (1,'Çatalhöyük','Turkey','Anatolia',37.6667,32.8167,1958,'James Mellaart','Neolithic','Settlement',20000.0,'1993-04-01 00:00:00','2020-12-31 00:00:00','Prof Ayse Ertug','Pottery, wall paintings','Excellent','Urban development','UNESCO',12000000.0,1,'35T 704000 4152000');
INSERT INTO archaeology_sites VALUES (2,'Machu Picchu','Peru','Andes',-13.1631,-72.5450,1911,'Hiram Bingham','Inca','Citadel',32500.0,'2000-01-15 00:00:00','2005-11-30 00:00:00','Dr Luis Rivera','Stone architecture, terraces','Good','Tourism pressure','World Heritage Fund',8000000.0,1,'19L 2970000 8780000');
INSERT INTO archaeology_sites VALUES (3,'Pompeii','Italy','Campania',40.7460,14.4989,1748,'Karl Weber','Roman','City','66000.0','2005-06-01 00:00:00','2015-09-30 00:00:00','Prof Maria Rossi','Mosaics, frescoes','Stable','Earthquake risk','EU Cultural Heritage',15000000.0,1,'33T 652000 4495000');

-- Cultural heritage artifacts register
CREATE TABLE cultural_heritage_artifacts
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ArtifactName TEXT,
    Culture TEXT,
    Century INTEGER,
    Material TEXT,
    Dimensions TEXT,
    Weight FLOAT,
    CurrentLocation TEXT,
    AcquisitionDate DATETIME,
    AcquiredFrom TEXT,
    Provenance TEXT,
    Condition TEXT,
    DisplayStatus INTEGER,
    ConservationNotes TEXT,
    CatalogNumber TEXT,
    LegalStatus TEXT,
    OwnerInstitution TEXT,
    InsuranceValue FLOAT,
    ImageUrl TEXT,
    AudioDescriptionUrl TEXT,
    Significance TEXT,
    LastRestorationDate DATETIME
);
INSERT INTO cultural_heritage_artifacts VALUES (1,'Terracotta Warrior','Han','2','Terracotta','180cm','70.0','National Museum','2008-05-20 00:00:00','Private collector','Excavated from Yinxu','Excellent',1,'Stored in climate controlled case','CH001','Owned','National Museum',500000.0,'http://museum.org/warrior.jpg','', 'Symbol of imperial power','2019-07-15 00:00:00');
INSERT INTO cultural_heritage_artifacts VALUES (2,'Mayan Jade Mask','Maya','9','Jade','20cm','0.3','Ancient Art Gallery','2012-11-11 00:00:00','Estate sale','Found in Palenque','Good',0,'Requires cleaning','CH045','On loan','Ancient Art Gallery',250000.0,'http://gallery.org/jademask.jpg','http://gallery.org/jademaskaudio.mp3','Rare ceremonial object','2021-03-22 00:00:00');
INSERT INTO cultural_heritage_artifacts VALUES (3,'Roman Bronze Coin','Roman','1','Bronze','2.5cm','0.02','City Coin Museum','1999-02-14 00:00:00','Archaeological dig','Recovered from Thames','Fair',1,'Minor corrosion','CH078','Public domain','City Coin Museum',12000.0,'http://coinmuseum.org/bronze1.jpg','', 'Economic history','2005-06-10 00:00:00');

-- Food nutrition facts database
CREATE TABLE food_nutrition_facts
(
    Id INTEGER NOT NULL PRIMARY KEY,
    FoodItem TEXT,
    Brand TEXT,
    ServingSize TEXT,
    Calories INTEGER,
    TotalFatGram INTEGER,
    SaturatedFatGram INTEGER,
    TransFatGram INTEGER,
    CholesterolMg INTEGER,
    SodiumMg INTEGER,
    TotalCarbGram INTEGER,
    DietaryFiberGram INTEGER,
    SugarsGram INTEGER,
    ProteinGram INTEGER,
    VitaminA_IU INTEGER,
    VitaminC_mg INTEGER,
    Calcium_mg INTEGER,
    Iron_mg INTEGER,
    AddedSugarGram INTEGER,
    SugarAlcoholGram INTEGER,
    CaffeineMg INTEGER,
    ServingWeightGram INTEGER,
    Source TEXT,
    LastUpdated DATETIME
);
INSERT INTO food_nutrition_facts VALUES (1,'Granola Bar','NatureSnack','40g',180,6,1,0,0,120,22,3,12,4,500,0,30,1,5,0,0,40,'USDA', '2023-01-10 00:00:00');
INSERT INTO food_nutrition_facts VALUES (2,'Almond Milk','NutriMilk','240ml',30,2,0,0,0,150,1,0,0,1,0,0,350,0,0,0,0,240,'USDA', '2023-02-05 00:00:00');
INSERT INTO food_nutrition_facts VALUES (3,'Chocolate Chip Cookies','BakeHouse','30g',150,8,5,0,0,200,18,1,12,2,0,0,20,0,8,0,0,30,'USDA', '2023-03-12 00:00:00');

-- Public health records repository
CREATE TABLE public_health_records
(
    Id INTEGER NOT NULL PRIMARY KEY,
    RecordDate DATETIME,
    Region TEXT,
    Population INTEGER,
    NewCases INTEGER,
    NewDeaths INTEGER,
    Hospitalizations INTEGER,
    ICUAdmissions INTEGER,
    VaccinationsAdministered INTEGER,
    VaccineType TEXT,
    TestPositivityRate FLOAT,
    ReproductionNumber FLOAT,
    PublicHealthAlertLevel INTEGER,
    ContactTracingCalls INTEGER,
    SchoolsClosed INTEGER,
    MaskMandate INTEGER,
    MobilityIndex FLOAT,
    AirQualityIndex INTEGER,
    WeatherImpactScore INTEGER,
    HealthResourcesAvailable TEXT,
    Notes TEXT,
    DataSource TEXT,
    LastReviewedBy TEXT
);
INSERT INTO public_health_records VALUES (1,'2023-07-01 00:00:00','Midwest',5000000,1200,25,300,50,2500000,'mRNA',5.2,1.1,2,1500,1,1,0.75,45,3,'Hospitals, Clinics','Increasing trend observed','State Health Dept','Dr Alice Green');
INSERT INTO public_health_records VALUES (2,'2023-07-01 00:00:00','Coastal',2000000,800,10,150,20,1800000,'Vector',2.1,0.9,1,800,0,1,0.60,30,1,'Vaccination centers','Stable situation','County Health Office','Dr Bob Lee');
INSERT INTO public_health_records VALUES (3,'2023-07-01 00:00:00','Mountain',800000,300,5,80,10,900000,'mRNA',1.5,0.7,0,400,0,0,0.40,20,0,'Mobile clinics','Low incidence','Regional Health Agency','Dr Carol Smith');

-- Transportation infrastructure catalog
CREATE TABLE transportation_infrastructure
(
    Id INTEGER NOT NULL PRIMARY KEY,
    InfrastructureType TEXT,
    Name TEXT,
    Location TEXT,
    City TEXT,
    State TEXT,
    Country TEXT,
    ConstructionYear INTEGER,
    LengthKm FLOAT,
    Lanes INTEGER,
    CapacityVehiclesPerDay INTEGER,
    OwnerAgency TEXT,
    MaintenanceSchedule TEXT,
    ConditionRating INTEGER,
    LastInspectionDate DATETIME,
    TrafficVolumeDaily INTEGER,
    AvgSpeedKmh FLOAT,
    IncidentCountYear INTEGER,
    FundingSource TEXT,
    ProjectCostMillions FLOAT,
    GPSLatitude FLOAT,
    GPSLongitude FLOAT,
    IsTollRoad INTEGER,
    Status TEXT,
    Notes TEXT
);
INSERT INTO transportation_infrastructure VALUES (1,'Highway','I-95','East Coast Corridor','Boston','Massachusetts','USA',1956,730.5,6,250000,'Dept of Transportation','Annual','8','2022-11-15 00:00:00',220000,105.0,450,'Federal','8000',42.3601,-71.0589,1,'Operational','Major north-south artery');
INSERT INTO transportation_infrastructure VALUES (2,'Railway','TransEuro Line','Central Europe','Berlin','Berlin','Germany',1998,1200.0,2,150000,'National Railways','Biannual','7','2023-02-20 00:00:00',90000,80.5,120,'EU Funds','5000',52.5200,13.4050,0,'Operational','High-speed passenger service');
INSERT INTO transportation_infrastructure VALUES (3,'Bridge','Golden Gate','San Francisco Bay','San Francisco','California','USA',1937,2.7,6,200000,'City of San Francisco','Quarterly','6','2023-05-10 00:00:00',180000,65.0,300,'State Bonds','3500',37.8199,-122.4783,0,'Operational','Iconic suspension bridge');

-- Climate change models repository
CREATE TABLE climate_change_models
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ModelName TEXT,
    Institution TEXT,
    Version TEXT,
    ReleaseDate DATETIME,
    SpatialResolutionKm FLOAT,
    TemporalResolutionDays INTEGER,
    VariablesIncluded TEXT,
    EmissionScenario TEXT,
    CalibrationMethod TEXT,
    ValidationMetric FLOAT,
    GlobalMeanTempAnomalyC FLOAT,
    SeaLevelRiseCm FLOAT,
    ArcticIceExtentSqKm FLOAT,
    CO2ConcentrationPpm FLOAT,
    MethaneConcentrationPpb FLOAT,
    ModelRunTimeHours INTEGER,
    RequiresHighPerformanceComputing INTEGER,
    License TEXT,
    DocumentationUrl TEXT,
    LastUpdate DATETIME,
    Remarks TEXT
);
INSERT INTO climate_change_models VALUES (1,'CMIP6-ESM','Global Climate Institute','v1.2','2022-05-01 00:00:00',0.5,30,'Temp;Precip;Wind','SSP2-4.5','Bayesian','0.92',1.2,15.0,1400000,415.5,1850,48,1,'Open','http://gci.org/models/cmip6','2023-01-20 00:00:00','Widely used for policy analysis');
INSERT INTO climate_change_models VALUES (2,'EcoSim-X','EcoScience Lab','v3.0','2023-02-14 00:00:00',1.0,15,'Temp;OceanAcid;Cryosphere','SSP5-8.5','Ensemble','0.88',2.1,22.5,1250000,420.3,2100,36,1,'Restricted','http://ecosci.org/ecosimx/docs','2023-06-05 00:00:00','High resolution for coastal studies');
INSERT INTO climate_change_models VALUES (3,'AtmosFuture','Atmospheric Research Center','v0.9','2021-11-30 00:00:00',0.25,7,'Temp;CO2;Aerosols','SSP1-2.6','Analytical','0.95',0.8,10.0,1500000,410.0,1700,24,0,'Open','http://arc.org/atmosfuture','2022-12-12 00:00:00','Optimized for rapid scenario testing');