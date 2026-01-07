-- City parks facilities information
CREATE TABLE city_parks_facilities
(
    FacilityID            TEXT PRIMARY KEY,
    ParkName              TEXT,
    FacilityType          TEXT,
    FacilityName          TEXT,
    Capacity              INTEGER,
    OpenHours             TEXT,
    ADA_Compliant         INTEGER,
    YearBuilt             INTEGER,
    MaintenanceContact    TEXT,
    Phone                 TEXT,
    Email                 TEXT,
    Latitude              REAL,
    Longitude             REAL,
    SquareFeet            REAL,
    CostAnnual            REAL,
    LastRenovation        DATE,
    HasPlayground         INTEGER,
    HasRestrooms          INTEGER,
    HasWaterFountain      INTEGER,
    LightingType          TEXT,
    SecurityLevel         TEXT,
    InspectionScore       REAL
);

INSERT INTO city_parks_facilities VALUES
('F001','LincolnPark','RecreationCenter','Lincoln Community Center',250,'06:00-22:00',1,1998,'John Doe','555-1234','jdoe@city.gov',40.7128,-74.0060,15000,120000,'2018-06-15',1,1,1,'LED','Medium',92.5);

INSERT INTO city_parks_facilities VALUES
('F002','MaplePark','SwimmingPool','Maple Aquatic Center',120,'07:00-20:00',1,2005,'Jane Smith','555-5678','jsmith@city.gov',40.7150,-74.0105,8000,95000,'2020-09-01',0,1,1,'Halogen','High',88.0);

INSERT INTO city_parks_facilities VALUES
('F003','RiverSide','Gymnasium','RiverSide Gym',80,'05:00-23:00',0,2012,'Mike Lee','555-9012','mlee@city.gov',40.7185,-74.0120,6000,65000,'2019-03-20',0,0,0,'Fluorescent','Low',79.3);


-- Public art installations catalog
CREATE TABLE public_art_installations
(
    InstallationID        TEXT PRIMARY KEY,
    Title                 TEXT,
    Artist                TEXT,
    YearInstalled         INTEGER,
    LocationDescription   TEXT,
    Latitude              REAL,
    Longitude             REAL,
    Material              TEXT,
    HeightFeet            REAL,
    WidthFeet             REAL,
    DepthFeet             REAL,
    FundingSource         TEXT,
    CostUSD               REAL,
    MaintenanceAgency     TEXT,
    ContactPerson         TEXT,
    Phone                 TEXT,
    Email                 TEXT,
    ConditionRating       REAL,
    LastInspectionDate    DATE,
    IsIlluminated         INTEGER,
    LightingPowerWatts    INTEGER,
    AccessibilityScore    REAL,
    VisitorsPerYear       INTEGER,
    GPS_AccuracyMeters    REAL,
    SurveyedYear          INTEGER
);

INSERT INTO public_art_installations VALUES
('A001','Harmony','Lara Chen',2015,'Central Plaza near City Hall',40.7125,-74.0059,'Bronze',12.5,4.0,3.0,'City Arts Fund',85000,'Public Works',Alice Green,'555-1122','agreen@city.gov',4.8,'2022-04-10',1,250,9.2,15000,0.5,2021);

INSERT INTO public_art_installations VALUES
('A002','Waves','Diego Rivera',2010,'Riverwalk promenade',40.7130,-74.0075,'Stainless Steel',9.0,6.0,2.5,'Private Donation',120000,'Cultural Dept',Bob White,'555-3344','bwhite@city.gov',4.5,'2021-09-05',0,0,8.7,23000,0.3,2020);

INSERT INTO public_art_installations VALUES
('A003','Echo','Mina Patel',2018,'Northside park entrance',40.7152,-74.0090,'Recycled Plastic',5.5,5.5,5.5,'Environmental Grant',45000,'Green Initiatives',Carol Black,'555-7788','cblack@city.gov',4.9,'2023-01-22',1,150,9.5,18000,0.2,2019);


-- Smart city sensor deployments
CREATE TABLE smart_city_sensor_deployments
(
    DeploymentID          TEXT PRIMARY KEY,
    SensorType            TEXT,
    ModelNumber           TEXT,
    Manufacturer          TEXT,
    InstallationDate      DATE,
    Latitude              REAL,
    Longitude             REAL,
    FirmwareVersion       TEXT,
    BatteryLifeHours      INTEGER,
    CalibrationDate       DATE,
    CalibrationDueDate    DATE,
    NetworkSSID           TEXT,
    IPAddress             TEXT,
    MACAddress            TEXT,
    DataEndpointURL       TEXT,
    DataFormat            TEXT,
    SamplingIntervalSec   INTEGER,
    TransmissionIntervalSec INTEGER,
    PowerSource           TEXT,
    MountingLocation      TEXT,
    HeightFeet            REAL,
    MaintenanceCycleDays  INTEGER,
    LastMaintenanceDate   DATE,
    Status                TEXT,
    SignalStrengthdBm     REAL,
    TemperatureCelsius    REAL,
    HumidityPercent       REAL,
    PressurePascal        REAL,
    UptimePercent         REAL,
    ErrorCount            INTEGER
);

INSERT INTO smart_city_sensor_deployments VALUES
('S001','AirQuality','AQ-100','EnviroTech','2021-06-15',40.7200,-74.0150,'v2.3',720,'2022-06-15','2023-06-15','CityNet','192.168.1.10','AA:BB:CC:DD:EE:01','https://data.city.gov/aq','JSON',60,300,'Solar','StreetLamp',15.0,180,'2023-05-01','Active',-65.2,22.5,45.0,101325,99.8,2);

INSERT INTO smart_city_sensor_deployments VALUES
('S002','NoiseLevel','NL-250','SoundSense','2020-03-10',40.7225,-74.0180,'v1.8',1080,'2021-03-10','2022-03-10','CityNet','192.168.1.20','AA:BB:CC:DD:EE:02','https://data.city.gov/noise','CSV',30,120,'Battery','TrafficSignal',12.0,365,'2023-04-12','Active',-58.7,0.0,0.0,0.0,98.5,0);

INSERT INTO smart_city_sensor_deployments VALUES
('S003','TrafficCount','TC-500','MoveFlow','2019-11-05',40.7250,-74.0205,'v3.0',2400,'2020-11-05','2021-11-05','CityNet','192.168.1.30','AA:BB:CC:DD:EE:03','https://data.city.gov/traffic','XML',15,60,'Mains','Intersection',10.0,90,'2023-03-20','Active',-70.1,0.0,0.0,0.0,99.2,5);


-- Renewable energy assets registry
CREATE TABLE renewable_energy_assets
(
    AssetID                TEXT PRIMARY KEY,
    AssetType              TEXT,
    CapacityMW             REAL,
    InstallationDate       DATE,
    CommissionDate         DATE,
    OwnerOrganization      TEXT,
    OperatorContact        TEXT,
    Phone                  TEXT,
    Email                  TEXT,
    Latitude               REAL,
    Longitude              REAL,
    SiteName               TEXT,
    GridConnectionPoint    TEXT,
    ExpectedLifetimeYears  INTEGER,
    CurrentOutputMW        REAL,
    CapacityFactorPercent  REAL,
    MaintenanceContract    TEXT,
    LastInspectionDate     DATE,
    NextInspectionDueDate  DATE,
    DecommissionDate       DATE,
    Status                 TEXT,
    IncentiveProgram       TEXT,
    IncentiveAmountUSD     REAL,
    PowerPurchaseAgreement TEXT,
    PPA_TermYears          INTEGER,
    CO2OffsetTonsPerYear   REAL,
    Notes                  TEXT,
    LatitudeAccuracyMeters REAL,
    LongitudeAccuracyMeters REAL,
    RegistrationID         TEXT,
    RenewableCertificate   TEXT,
    FundingSource          TEXT
);

INSERT INTO renewable_energy_assets VALUES
('R001','SolarFarm',25.5,'2018-04-20','2018-09-01','City Power Authority','Linda Gray','555-2121','lgray@city.gov',40.7300,-74.0250,'Westside Solar',NodeA,30,22.3,87.5,'SolarMaintainCo','2023-02-15','2024-02-15',NULL,'Operating','StateSolarIncentive',500000,'PPA_Agreement_01',15,15000,'No major issues',0.3,0.3,'REG-001','CERT-001','Bond');

INSERT INTO renewable_energy_assets VALUES
('R002','WindTurbine',12.0,'2016-06-10','2016-11-15','Wind Energy LLC','Mark Turner','555-4242','mturner@windco.com',40.7355,-74.0300,'North Ridge Wind',NodeB,25,9.5,79.2,'WindCareInc','2022-11-20','2023-11-20',NULL,'Operating','FederalWindCredit',300000,'PPA_Agreement_02',20,8000,'Blade inspection completed',0.5,0.5,'REG-002','CERT-002','Loan');

INSERT INTO renewable_energy_assets VALUES
('R003','BiogasPlant',5.5,'2019-01-05','2019-05-20','GreenBio Solutions','Sara Patel','555-6363','spatel@greenbio.org',40.7400,-74.0350,'Eastside Biogas',NodeC,20,4.2,76.4,'BioMaintainLtd','2023-07-10','2024-07-10',NULL,'Operating','StateRenewableGrant',150000,'PPA_Agreement_03',10,2500,'Awaiting upgrade of gas digesters',0.2,0.2,'REG-003','CERT-003','Grant');


-- Stormwater management projects database
CREATE TABLE stormwater_management_projects
(
    ProjectID               TEXT PRIMARY KEY,
    ProjectName             TEXT,
    Phase                   TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    LeadAgency              TEXT,
    ProjectManager          TEXT,
    Phone                   TEXT,
    Email                   TEXT,
    EstimatedCostUSD        REAL,
    FundingSource           TEXT,
    TotalAreaAcres          REAL,
    Status                  TEXT,
    PermittingAgency        TEXT,
    PermitNumber            TEXT,
    EngineeringFirm         TEXT,
    Contractor              TEXT,
    PercentComplete        REAL,
    LastProgressReportDate  DATE,
    NextMilestoneDate       DATE,
    EnvironmentalImpactScore REAL,
    StormwaterRetentionCapacityCFS REAL,
    NumberOfInfiltrationBasins INTEGER,
    BasinAverageDepthFeet   REAL,
    SoilType                TEXT,
    LandUseBefore           TEXT,
    LandUseAfter            TEXT,
    CommunityBenefitSummary TEXT,
    GIS_ProjectLayerURL     TEXT,
    MonitoringPlanDocument  TEXT,
    DataCollectionFrequencyDays INTEGER,
    ProjectNotes            TEXT,
    Latitude                REAL,
    Longitude               REAL,
    ProjectCode             TEXT,
    RegulatoryComplianceStatus TEXT,
    PublicOutreachEvents    INTEGER,
    OutreachBudgetUSD       REAL
);

INSERT INTO stormwater_management_projects VALUES
('ST001','Riverbank Retention','Design','2022-01-15','2023-06-30','Department of Public Works','Emily Reed','555-7777','ereed@dpw.gov',750000,'City Bond',12.5,'Design','DPW','PERM-101','EcoDesign Ltd','BuildCo',25.0,'2022-12-01','2023-03-15',8.2,350.0,8,10.0,'SiltyLoam','Industrial','Parkland','Creates new recreation area and reduces downstream flooding','https://gis.city.gov/riverbank','riverbank_plan.pdf',30,'Initial design phase completed',40.7120,-74.0400,'PRJ-001','Compliant',2,5000);

INSERT INTO stormwater_management_projects VALUES
('ST002','North Hill Infiltration','Construction','2021-05-01','2022-12-15','Environmental Agency','Carlos Mendez','555-8888','cmendez@envag.gov',1200000,'State Grant',18.0,'Construction','EA','PERM-202','SoilSolutions Inc','ConstructCo',70.0,'2022-08-10','2022-11-01',9.1,500.0,12,8.5,'Clay','Residential','MixedUse','Improves groundwater recharge and community aesthetics','https://gis.city.gov/northhill','northhill_plan.pdf',45,'Mid‑construction review',41.0005,-74.0455,'PRJ-002','Compliant',4,8000);

INSERT INTO stormwater_management_projects VALUES
('ST003','Eastside Greenway','Operation','2020-03-20','2030-12-31','Parks Department','Aisha Khan','555-9999','akhan@parks.gov',2000000,'Federal Infrastructure',25.0,'Operation','PD','PERM-303','GreenWorks','MaintenanceCo',100.0,'2022-11-20','2023-04-15',9.8,650.0,20,9.0,'LoamySand','Commercial','Greenway','Provides recreation trail and annual flood mitigation','https://gis.city.gov/eastgreen','eastgreen_plan.pdf',60,'Annual operational audit',41.0050,-74.0500,'PRJ-003','Compliant',6,12000);


-- Historical building registry
CREATE TABLE historical_building_registry
(
    BuildingID              TEXT PRIMARY KEY,
    BuildingName            TEXT,
    YearConstructed         INTEGER,
    ArchitecturalStyle      TEXT,
    AddressLine1            TEXT,
    City                    TEXT,
    State                   TEXT,
    ZipCode                 TEXT,
    Latitude                REAL,
    Longitude               REAL,
    CurrentUse              TEXT,
    OwnerOrganization       TEXT,
    PreservationStatus      TEXT,
    DesignationDate         DATE,
    RegisteringAgency       TEXT,
    RegisterNumber          TEXT,
    HistoricalSignificance  TEXT,
    StructuralMaterial      TEXT,
    NumberOfStories         INTEGER,
    FloorAreaSqFt           REAL,
    RoofType                TEXT,
    OriginalColor           TEXT,
    CurrentConditionRating  REAL,
    LastRestorationDate     DATE,
    NextInspectionDueDate   DATE,
    AccessibilityScore      REAL,
    EnergyEfficiencyRating  REAL,
    TaxExemptStatus         TEXT,
    FundingSource           TEXT,
    GrantAmountUSD          REAL,
    ConservationPlanURL     TEXT,
    PhotoReferenceID        TEXT,
    GISLayerURL             TEXT,
    NotableEvents           TEXT,
    PeriodOfSignificance    TEXT,
    OriginalBuilder         TEXT,
    AdaptiveReusePlan       TEXT,
    ClimateResilienceScore  REAL,
    HistoricDistrictName    TEXT,
    DocumentationFile       TEXT
);

INSERT INTO historical_building_registry VALUES
('HB001','Old Town Hall','1895','BeauxArts','123 Main St','Metropolis','NY','10001',40.7484,-73.9857,'Municipal Offices','City Government','Listed','1990-04-12','State Historic Preservation Office','SHPO-001','First civic building in the city','Brick',3,12000,'Mansard','Gray','8.5','2018-09-20','2024-09-20','9.0','B','Exempt','State Grant',250000,'https://docs.city.gov/oldtownhall_plan','PH001','https://gis.city.gov/oldtownhall','Hosted inaugural city council meeting','Late 19th Century','John Doe Builders','Partial conversion to community center','7.5','Downtown Historic District','oldtownhall.pdf');

INSERT INTO historical_building_registry VALUES
('HB002','Riverfront Warehouse','1922','Industrial','456 River Rd','Metropolis','NY','10002',40.7500,-73.9900,'Retail Space','Private LLC','Contributing','2005-06-30','National Register of Historic Places','NRHP-045','Key role in early 20th‑century trade','Concrete',4,18000,'Flat','Red','7.2','2015-04-10','2023-04-10','6.5','C','Non‑Exempt','Federal Tax Credit',150000,'https://docs.city.gov/riverwarehouse_plan','PH002','https://gis.city.gov/riverwarehouse','Site of historic labor strike','Early 20th Century','RiverCo Constructors','Conversion to mixed‑use development','6.0','Riverfront Historic Zone','riverwarehouse.pdf');

INSERT INTO historical_building_registry VALUES
('HB003','Maple Schoolhouse','1910','Colonial','789 Maple Ave','Metropolis','NY','10003',40.7525,-73.9950,'Community Center','Non‑Profit Org','Preserved','2012-09-18','Local Heritage Commission','LHC-078','First public school in the district','Wood',2,5000,'Gabled','White','9.1','2020-01-15','2025-01-15','9.5','A','Exempt','Local Donation',50000,'https://docs.city.gov/mapleschool_plan','PH003','https://gis.city.gov/mapleschool','Hosted annual literacy festival','Early 20th Century','Maple Builders Co.','Full restoration as community hub','8.8','Maple Historic Area','mapleschool.pdf');


-- Public Wi‑Fi hotspots inventory
CREATE TABLE public_wifi_hotspots
(
    HotspotID               TEXT PRIMARY KEY,
    SSID                    TEXT,
    LocationName            TEXT,
    Latitude                REAL,
    Longitude               REAL,
    Provider                TEXT,
    InstallationDate        DATE,
    FirmwareVersion         TEXT,
    BandSupported           TEXT,
    MaxClients              INTEGER,
    AvgDailyUsers           INTEGER,
    DataCapGB               REAL,
    CurrentThroughputMbps   REAL,
    EncryptionType          TEXT,
    AuthenticationMethod    TEXT,
    MaintenanceContact      TEXT,
    ContactPhone            TEXT,
    ContactEmail            TEXT,
    PowerSource             TEXT,
    MountingStructure       TEXT,
    HeightFeet              REAL,
    SignalStrengthdBm       REAL,
    LastMaintenanceDate     DATE,
    NextMaintenanceDue      DATE,
    Status                  TEXT,
    CoverageRadiusMeters    REAL,
    CityZone                TEXT,
    InstalledBy             TEXT,
    ServiceLevelAgreement   TEXT,
    SLAExpirationDate       DATE,
    MonthlyCostUSD          REAL,
    WiFi6Support            INTEGER,
    GuestNetworkEnabled     INTEGER,
    CaptivePortalEnabled    INTEGER,
    UsagePolicyURL          TEXT,
    LatitudeAccuracyMeters  REAL,
    LongitudeAccuracyMeters REAL,
    NetworkDiagramURL       TEXT,
    DocumentationFile       TEXT,
    Notes                   TEXT
);

INSERT INTO public_wifi_hotspots VALUES
('W001','CityFreeWiFi','Central Plaza',40.7530,-73.9980,'CityNet','2020-05-01','v1.4','2.4GHz/5GHz',150,200,500,150,'WPA2','Open','John Ops','555-1111','jops@citynet.com','Solar','Pole',12.0,-62.5,'2022-11-15','2023-11-15','Active',150,'Downtown','CityNet Installers','Standard SLA','2025-12-31',250,1,1,1,'https://city.gov/wifi/policy','0.5','0.5','https://city.gov/wifi/diagram','central_plaza_wifi.pdf','Primary hotspot for downtown pedestrians');

INSERT INTO public_wifi_hotspots VALUES
('W002','ParkConnect','Maple Park',40.7555,-74.0005,'GreenWiFi','2021-08-20','v2.0','2.4GHz/5GHz',80,120,250,80,'WPA3','Enterprise','Emily Tech','555-2222','etech@greenwifi.com','Mains','TreeTrunk',8.0,-70.0,'2023-02-10','2024-02-10','Active',100,'Northside','GreenWiFi Team','Premium SLA','2026-03-15',150,1,0,0,'https://city.gov/wifi/parkpolicy','0.3','0.3','https://city.gov/wifi/parkdiagram','maple_park_wifi.pdf','Provides coverage for park visitors and runners');

INSERT INTO public_wifi_hotspots VALUES
('W003','LibraryNet','Main Library',40.7570,-74.0020,'LibraryNet','2019-03-12','v1.2','2.4GHz',120,300,400,120,'WPA2','Open','Mike Admin','555-3333','madmin@librarynet.com','Mains','Ceiling',10.0,-65.0,'2022-06-05','2023-06-05','Active',120,'Cultural','LibraryNet Services','Standard SLA','2024-05-20',200,0,1,0,'https://city.gov/wifi/librarypolicy','0.4','0.4','https://city.gov/wifi/librarydiagram','main_library_wifi.pdf','High capacity for study areas and public computers');


-- Air quality compliance records
CREATE TABLE air_quality_compliance
(
    RecordID                TEXT PRIMARY KEY,
    MonitoringStationID    TEXT,
    StationName            TEXT,
    Latitude               REAL,
    Longitude              REAL,
    MeasurementDate        DATE,
    PM25_Concentration    REAL,
    PM10_Concentration    REAL,
    Ozone_ppb              REAL,
    NO2_ppb                REAL,
    SO2_ppb                REAL,
    CO_ppm                 REAL,
    AQI                    INTEGER,
    ComplianceStatus       TEXT,
    InspectionOfficer      TEXT,
    OfficerPhone           TEXT,
    OfficerEmail           TEXT,
    ReportingAgency        TEXT,
    RegulationReference    TEXT,
    ViolationCode          TEXT,
    FineAmountUSD          REAL,
    CorrectiveActionTaken  TEXT,
    ActionCompletionDate   DATE,
    FollowUpInspectionDate DATE,
    Comments               TEXT,
    DataSource             TEXT,
    DataQualityFlag        TEXT,
    SensorModel            TEXT,
    CalibrationDate        DATE,
    CalibrationDueDate     DATE,
    MaintenanceLogID       TEXT,
    LatitudeAccuracyMeters REAL,
    LongitudeAccuracyMeters REAL,
    WeatherCondition       TEXT,
    TemperatureCelsius     REAL,
    WindSpeedMph           REAL,
    RelativeHumidityPct    REAL,
    PublicationURL         TEXT,
    GEOJSONLocation        TEXT,
    RecordCreatedAt        DATE
);

INSERT INTO air_quality_compliance VALUES
('AQ001','STN-01','Riverfront Monitor',40.7600,-74.0100,'2023-07-15',12.5,30.2,45,22,5,0.3,42,'Compliant','Anna Lee','555-4444','alee@envagency.gov','State EPA','40 CFR Part 58','None',0,'N/A','2023-07-20','2023-10-20','All readings within limits','EPA','Good','AQM-100','2023-01-01','2024-01-01','ML-001',0.2,0.2,'Clear',23.5,5.2,45,'https://data.city.gov/aq001','{""type"":""Point"",""coordinates"":[-74.0100,40.7600]}','2023-07-15');

INSERT INTO air_quality_compliance VALUES
('AQ002','STN-02','Northside Hill',40.7705,-74.0155,'2023-07-15',25.8,55.0,78,40,12,0.6,85,'Non‑Compliant','Brian Kim','555-5555','bkim@envagency.gov','State EPA','40 CFR Part 58','AQ-07',1500,'Installed additional filter','2023-08-30','2023-12-15','Exceeds PM2.5 limit','EPA','Fair','AQM-200','2022-11-20','2023-11-20','ML-002',0.3,0.3,'Partly Cloudy',19.0,7.8,55,'https://data.city.gov/aq002','{""type"":""Point"",""coordinates"":[-74.0155,40.7705]}','2023-07-15');

INSERT INTO air_quality_compliance VALUES
('AQ003','STN-03','Eastside Industrial',40.7750,-74.0200,'2023-07-15',40.2,80.5,110,65,20,1.2,150,'Non‑Compliant','Carlos Ruiz','555-6666','cruiz@envagency.gov','State EPA','40 CFR Part 58','AQ-12',5000,'Shutdown of one furnace','2023-09-10','2024-01-20','Significant NO2 exceedance','EPA','Poor','AQM-300','2021-06-15','2022-06-15','ML-003',0.4,0.4,'Smoky',22.0,10.5,70,'https://data.city.gov/aq003','{""type"":""Point"",""coordinates"":[-74.0200,40.7750]}','2023-07-15');


-- Traffic signal maintenance log
CREATE TABLE traffic_signal_maintenance
(
    MaintenanceID           TEXT PRIMARY KEY,
    SignalID                TEXT,
    IntersectionName        TEXT,
    Latitude                REAL,
    Longitude               REAL,
    InstallationDate        DATE,
    LastServiceDate         DATE,
    NextServiceDueDate      DATE,
    ServiceProvider         TEXT,
    TechnicianName          TEXT,
    TechnicianPhone         TEXT,
    TechnicianEmail         TEXT,
    BulbType                TEXT,
    BulbCount               INTEGER,
    LEDUpgradeCompleted     INTEGER,
    ControllerModel         TEXT,
    FirmwareVersion         TEXT,
    PowerSupplyVoltage      REAL,
    BackupBatteryCapacityAh REAL,
    CameraInstalled         INTEGER,
    PedestrianCrossSignal   INTEGER,
    AudibleSignal           INTEGER,
    TrafficVolumeAADT       INTEGER,
    IncidentReportsSinceLast INTEGER,
    FaultCode               TEXT,
    RepairNotes             TEXT,
    CostUSD                 REAL,
    FundingSource           TEXT,
    WarrantyExpirationDate  DATE,
    InspectionStatus        TEXT,
    InspectionDate          DATE,
    InspectorName           TEXT,
    InspectorPhone          TEXT,
    InspectorEmail          TEXT,
    LatitudeAccuracyMeters  REAL,
    LongitudeAccuracyMeters REAL,
    SignalConditionScore    REAL,
    EnvironmentalImpactScore REAL,
    MunicipalDistrict       TEXT,
    AssetTagNumber          TEXT,
    GeoJSONLocation         TEXT,
    RecordCreatedAt         DATE
);

INSERT INTO traffic_signal_maintenance VALUES
('TSM001','SIG-1001','5th & Main',40.7800,-74.0250,'2010-04-12','2023-03-10','2023-09-10','CityTraffic Services','Laura Perez','555-7777','lperez@citytraffic.gov','LED',4,1,'CTRL-200','v3.5',120,10,1,1,1,25000,2,'F01','Replaced LED modules','1200','City Budget','2028-04-12','Passed','2023-04-01','Mark Allen','555-8888','mallen@citytraffic.gov',0.3,0.3,9.2,2.5,'District 3','TAG-001','{""type"":""Point"",""coordinates"":[-74.0250,40.7800]}','2023-03-10');

INSERT INTO traffic_signal_maintenance VALUES
('TSM002','SIG-1002','Broadway & 7th',40.7855,-74.0302,'2015-09-20','2023-02-05','2023-08-05','CityTraffic Services','Tom Nguyen','555-9999','tnguyen@citytraffic.gov','Incandescent',6,0,'CTRL-150','v2.1',110,8,0,1,0,18000,5,'F03','Adjusted timing plan','800','State Grant','2025-09-20','Conditional','2023-02-20','Sara Kim','555-1112','skim@citytraffic.gov',0.4,0.4,7.8,3.0,'District 4','TAG-002','{""type"":""Point"",""coordinates"":[-74.0302,40.7855]}','2023-02-05');

INSERT INTO traffic_signal_maintenance VALUES
('TSM003','SIG-1003','Elm Street & 3rd',40.7900,-74.0350,'2008-01-15','2023-01-22','2023-07-22','CityTraffic Services','Angela Lee','555-2222','alee@citytraffic.gov','LED',8,1,'CTRL-300','v4.0',130,12,1,1,1,30000,1,'F02','Replaced controller board','1500','Federal Grant','2030-01-15','Passed','2023-02-01','James O\'Connor','555-3333','joconnor@citytraffic.gov',0.2,0.2,9.7,2.0,'District 5','TAG-003','{""type"":""Point"",""coordinates"":[-74.0350,40.7900]}','2023-01-22');


-- Facility energy audit logs
CREATE TABLE facility_energy_audit_logs
(
    AuditID                 TEXT PRIMARY KEY,
    FacilityID              TEXT,
    FacilityName            TEXT,
    AuditDate               DATE,
    AuditorName             TEXT,
    AuditorCompany          TEXT,
    ContactPhone            TEXT,
    ContactEmail            TEXT,
    TotalEnergyUseKWh       REAL,
    ElectricityKWh          REAL,
    NaturalGasMMBtu         REAL,
    FuelOilGallons          REAL,
    RenewableGenerationKWh  REAL,
    PeakDemandKW            REAL,
    LoadFactorPercent       REAL,
    EnergyStarScore         INTEGER,
    BuildingAreaSqFt        REAL,
    YearBuilt               INTEGER,
    OccupancyRatePercent    REAL,
    LightingEfficiencyScore REAL,
    HVACEfficiencyScore     REAL,
    EnvelopeInsulationScore REAL,
    WaterUsageGallons       REAL,
    WasteGeneratedTons      REAL,
    CO2EmissionsTonnes     REAL,
    RecommendationsCount    INTEGER,
    EstimatedSavingsUSD     REAL,
    PaybackPeriodYears      REAL,
    FundingSource           TEXT,
    GrantAmountUSD          REAL,
    IncentiveType           TEXT,
    IncentiveAmountUSD      REAL,
    FollowUpAuditDate       DATE,
    FollowUpStatus          TEXT,
    Notes                   TEXT,
    GISLayerURL             TEXT,
    Latitude                REAL,
    Longitude               REAL,
    LatitudeAccuracyMeters  REAL,
    LongitudeAccuracyMeters REAL,
    RecordCreatedAt         DATE,
    LastUpdatedAt           DATE
);

INSERT INTO facility_energy_audit_logs VALUES
('EA001','F001','Westside High School','2023-03-10','Emily Turner','EcoAudit Corp','555-4444','eturner@ecoaudit.com',2500000,1800000,5000,1200,300000,450,18.0,92,180000,1998,95,85,88,80,600000,30,1200,15,50000,5.2,'City Grant','200000','Rebate','50000','2024-03-10','Scheduled','Upgrade lighting to LEDs','https://gis.city.gov/westside_high','40.8000','-74.0400',0.5,0.5,'2023-03-10','2023-03-10');

INSERT INTO facility_energy_audit_logs VALUES
('EA002','F002','Maple Community Center','2023-04-15','Carlos Mendes','GreenAudit LLC','555-5555','cmendes@greenaudit.com',1800000,1200000,3000,800,150000,350,15.5,88,90000,2005,85,78,70,65,400000,20,800,10,25000,3.0,'State Funds','150000','Tax Credit','30000','2025-04-15','Pending','Install solar panels on roof','https://gis.city.gov/maple_center','40.8050','-74.0450',0.4,0.4,'2023-04-15','2023-04-15');

INSERT INTO facility_energy_audit_logs VALUES
('EA003','F003','Riverfront Library','2023-05-20','Sofia Liu','Sustainable Audits','555-6666','slui@sustaudits.com',2200000,1600000,4500,1000,200000,400,17.2,90,150000,2010,90,82,84,78,500000,25,1000,12,40000,4.5,'Federal Grant','250000','Grant','50000','2024-11-20','Completed','Retrofitting HVAC system','https://gis.city.gov/riverfront_library','40.8100','-74.0500',0.6,0.6,'2023-05-20','2023-05-20');


-- Digital library event series
CREATE TABLE library_event_series
(
    SeriesID                TEXT PRIMARY KEY,
    LibraryID               TEXT,
    LibraryName             TEXT,
    SeriesTitle             TEXT,
    Description             TEXT,
    TargetAudience          TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    RecurrencePattern       TEXT,
    TypicalDayOfWeek        TEXT,
    TypicalStartTime        TEXT,
    TypicalEndTime          TEXT,
    MaxParticipants         INTEGER,
    RegistrationRequired    INTEGER,
    OnlineOptionAvailable   INTEGER,
    CostPerParticipantUSD   REAL,
    SponsoringOrganization  TEXT,
    ContactPerson           TEXT,
    ContactPhone            TEXT,
    ContactEmail            TEXT,
    MaterialsProvided       TEXT,
    EquipmentNeeded         TEXT,
    AccessibilityFeatures   TEXT,
    PromotionalChannels     TEXT,
    ExpectedAttendance      INTEGER,
    ActualAttendance        INTEGER,
    FeedbackScoreAvg        REAL,
    EvaluationReportURL     TEXT,
    LastModifiedDate        DATE,
    CreatedBy               TEXT,
    CreationDate            DATE,
    Status                  TEXT,
    BudgetUSD               REAL,
    FundsAllocatedUSD       REAL,
    FundsSpentUSD           REAL,
    Notes                   TEXT,
    GISLocationURL          TEXT,
    Latitude                REAL,
    Longitude               REAL,
    LatitudeAccuracyMeters  REAL,
    LongitudeAccuracyMeters REAL,
    RecordCreatedAt         DATE,
    RecordUpdatedAt         DATE
);

INSERT INTO library_event_series VALUES
('LES001','L001','Central Library','Summer Reading Challenge','A program encouraging kids to read books over the summer','Children','2023-06-01','2023-08-31','Weekly','Wednesday','15:00','16:30',200,1,0,0,'Local Sponsors','Karen White','555-7777','kwhite@citylibrary.org','Reading packets','Projector','Ramp access,Large print','Social Media,Flyers',500,480,4.5,'https://citylibrary.org/reports/summer2023.pdf','2023-08-31','Library Staff','2023-05-15','Completed',5000,3000,2800,'Program well received','https://gis.city.gov/central_library','40.8150','-74.0550',0.3,0.3,'2023-06-01','2023-08-31');

INSERT INTO library_event_series VALUES
('LES002','L002','Maple Branch','Tech Literacy Workshops','Hands‑on sessions teaching basic computer skills','Adults','2023-09-01','2023-12-15','Bi‑weekly','Saturday','10:00','12:00',30,1,1,5,'TechCorp','Luis Garcia','555-8888','lgarcia@maplebranch.org','Laptop kits','Smartboard,WiFi','Assistive keyboard','Newsletter,Community Boards',120,115,4.2,'https://maplebranch.org/reports/tech2023.pdf','2023-12-15','Program Coordinator','2023-08-20','Ongoing',2000,1500,800,'Need more volunteers','https://gis.city.gov/maple_branch','40.8200','-74.0600',0.4,0.4,'2023-09-01','2023-12-15');

INSERT INTO library_event_series VALUES
('LES003','L003','Eastside Library','Art Exhibit Opening','Showcase of local artists'' work','General Public','2023-11-05','2023-11-05','One‑time','Sunday','18:00','21:00',150,0,0,0,'City Arts Council','Megan Liu','555-9999','mluic@eastside.org','Exhibit catalogs','Lighting,Display panels','Wheelchair access','Press release,Email list',200,190,4.8,'https://eastside.org/reports/art2023.pdf','2023-11-05','Curator','2023-10-01','Completed',3500,3500,3400,'Excellent turnout','https://gis.city.gov/eastside_library','40.8250','-74.0650',0.5,0.5,'2023-11-05','2023-11-05');