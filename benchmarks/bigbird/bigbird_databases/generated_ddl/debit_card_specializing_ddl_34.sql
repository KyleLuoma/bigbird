-- Public library branches information
CREATE TABLE public_library_branches
(
    BranchID INTEGER PRIMARY KEY,
    Name TEXT,
    City TEXT,
    State TEXT,
    ZipCode TEXT,
    OpenDate DATE,
    TotalBooks INTEGER,
    StaffCount INTEGER,
    Seats INTEGER,
    WifiAvailable TEXT,
    AnnualVisitors INTEGER,
    FundingSource TEXT,
    Latitude REAL,
    Longitude REAL,
    HoursMon TEXT,
    HoursTue TEXT,
    HoursWed TEXT,
    HoursThu TEXT,
    HoursFri TEXT,
    HoursSat TEXT
);
INSERT INTO public_library_branches VALUES (1,'Central Library','Metropolis','NY','12345','2001-06-15',250000,25,300,'Y',120000,'Municipal','40.7128','-74.0060','9am-6pm','9am-6pm','9am-8pm','9am-6pm','9am-5pm','10am-4pm');
INSERT INTO public_library_branches VALUES (2,'Eastside Branch','Metropolis','NY','12346','2005-09-20',75000,12,120,'Y',45000,'State Grant','40.7130','-74.0010','10am-6pm','10am-6pm','10am-6pm','10am-6pm','10am-5pm','10am-3pm');
INSERT INTO public_library_branches VALUES (3,'Westside Branch','Metropolis','NY','12347','2010-03-10',50000,10,100,'N',30000,'Private Donation','40.7100','-74.0100','9am-5pm','9am-5pm','9am-5pm','9am-5pm','9am-5pm','Closed');

-- Solar farm production statistics
CREATE TABLE solar_farm_production
(
    FarmID INTEGER PRIMARY KEY,
    FarmName TEXT,
    Location TEXT,
    CapacityMW REAL,
    YearCommissioned INTEGER,
    AvgSunHours REAL,
    AnnualGenerationMWh REAL,
    OwnerCompany TEXT,
    GridConnectionID TEXT,
    Latitude REAL,
    Longitude REAL,
    MaintenanceContractID INTEGER,
    Status TEXT,
    AvgPanelEfficiency REAL,
    NumPanels INTEGER,
    AvgTempC REAL,
    InverterCount INTEGER,
    TrackerType TEXT,
    Region TEXT,
    AvgDowntimeHours REAL
);
INSERT INTO solar_farm_production VALUES (101,'Sunrise Farm','Desert Valley',50.0,2015,8.5,420000,'SolarCo','GC123','35.1234','-115.1234',2001,'Active',0.19,250000,30.5,120,'SingleAxis','West',12.5);
INSERT INTO solar_farm_production VALUES (102,'Blue Sky Farm','Hilltop',30.0,2018,7.2,210000,'GreenEnergy','GC124','36.5678','-115.5678',2002,'Active',0.18,150000,28.0,80,'DualAxis','North',8.3);
INSERT INTO solar_farm_production VALUES (103,'Riverbank Solar','River Bend',20.0,2020,7.8,150000,'EcoPower','GC125','34.9876','-116.9876',2003,'Planned',0.17,100000,27.5,50,'Fixed','South',0.0);

-- Municipal road permits records
CREATE TABLE municipal_road_permits
(
    PermitID INTEGER PRIMARY KEY,
    PermitNumber TEXT,
    IssueDate DATE,
    ExpiryDate DATE,
    ContractorName TEXT,
    ProjectDescription TEXT,
    RoadSegmentID INTEGER,
    LaneCount INTEGER,
    EstimatedCost REAL,
    ApprovalStatus TEXT,
    InspectorName TEXT,
    InspectionDate DATE,
    WorkStartDate DATE,
    WorkEndDate DATE,
    TrafficImpactLevel TEXT,
    DetourPlan TEXT,
    EnvironmentalImpact TEXT,
    FundingSource TEXT,
    PermitFee REAL,
    Notes TEXT
);
INSERT INTO municipal_road_permits VALUES (5001,'PR-2023-001','2023-01-10','2024-01-09','BuildCo','Resurfacing Main St',210,4,500000,'Approved','John Doe','2023-01-12','2023-02-01','2023-04-30','Medium','DetourA','Low','City Budget',2500,'N/A');
INSERT INTO municipal_road_permits VALUES (5002,'PR-2023-002','2023-02-15','2024-02-14','FastBuild','Adding Bike Lane',215,2,200000,'Pending','Jane Smith','2023-02-20','2023-03-10','2023-05-15','Low','DetourB','Moderate','State Grant',1500,'Awaiting approval');
INSERT INTO municipal_road_permits VALUES (5003,'PR-2023-003','2023-03-05','2024-03-04','ConstructInc','Bridge Reinforcement',220,6,800000,'Approved','Mike Lee','2023-03-07','2023-04-01','2023-09-30','High','DetourC','High','Federal Aid',4000,'Critical path');

-- Water treatment plant daily logs
CREATE TABLE water_treatment_plant_logs
(
    LogID INTEGER PRIMARY KEY,
    PlantID INTEGER,
    PlantName TEXT,
    SampleDate DATE,
    pH REAL,
    TurbidityNTU REAL,
    ChlorineMgL REAL,
    LeadPPB REAL,
    ArsenicPPB REAL,
    FluoridePPB REAL,
    TemperatureC REAL,
    FlowRateLPM REAL,
    EnergyConsumptionKWh REAL,
    OperatorName TEXT,
    Shift TEXT,
    MaintenanceFlag TEXT,
    Comments TEXT,
    SampleLocation TEXT,
    TestMethod TEXT,
    ComplianceStatus TEXT
);
INSERT INTO water_treatment_plant_logs VALUES (9001,1,'North Plant','2023-06-01',7.2,0.3,0.5,2.0,1.5,0.7,15.0,1200,3500,'Alice','Day','N','All parameters within range','Intake','Standard','Compliant');
INSERT INTO water_treatment_plant_logs VALUES (9002,1,'North Plant','2023-06-02',7.1,0.4,0.6,2.1,1.6,0.8,15.2,1180,3490,'Bob','Night','N','Slight increase in turbidity','Filtration','Standard','Compliant');
INSERT INTO water_treatment_plant_logs VALUES (9003,2,'East Plant','2023-06-01',7.3,0.2,0.4,1.8,1.4,0.6,14.8,1300,3600,'Carol','Day','Y','Scheduled maintenance performed','Outlet','Standard','Compliant');

-- Bike share station inventory
CREATE TABLE bike_share_station_inventory
(
    StationID INTEGER PRIMARY KEY,
    StationName TEXT,
    City TEXT,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    DockCount INTEGER,
    BikeCount INTEGER,
    MaintenanceStatus TEXT,
    LastServiceDate DATE,
    OperatorCompany TEXT,
    PowerSource TEXT,
    AreaSqM REAL,
    NearbyTransit TEXT,
    AvgDailyTrips INTEGER,
    MaxCapacity INTEGER,
    CurrentAvailability INTEGER,
    WarrantyExpiration DATE,
    SupplierID INTEGER,
    GPSAccuracy TEXT
);
INSERT INTO bike_share_station_inventory VALUES (1010,'Central Plaza','Metropolis',40.7128,-74.0060,'2018-05-10',30,25,'Good','2023-05-20','BikeCo','Solar','120','Metro Line 1',150,30,25,'2025-05-10',5001,'High');
INSERT INTO bike_share_station_inventory VALUES (1011,'Riverfront','Metropolis',40.7135,-74.0015,'2019-07-15',25,20,'Fair','2023-04-18','BikeCo','Grid','100','Bus 22',120,25,20,'2024-07-15',5002,'Medium');
INSERT INTO bike_share_station_inventory VALUES (1012,'University Loop','Metropolis',40.7102,-74.0105,'2020-09-01',20,18,'Good','2023-06-01','BikeCo','Solar','80','Campus Shuttle',100,20,18,'2026-09-01',5003,'High');

-- Air quality monitoring stations
CREATE TABLE air_quality_monitoring_stations
(
    StationID INTEGER PRIMARY KEY,
    StationName TEXT,
    City TEXT,
    State TEXT,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    SensorType TEXT,
    PM25_ugm3 REAL,
    PM10_ugm3 REAL,
    NO2_ppb REAL,
    O3_ppb REAL,
    CO_ppb REAL,
    SO2_ppb REAL,
    TemperatureC REAL,
    HumidityPct REAL,
    DataTransmissionIntervalSec INTEGER,
    Status TEXT,
    MaintenanceDueDate DATE,
    Notes TEXT
);
INSERT INTO air_quality_monitoring_stations VALUES (2001,'Downtown Station','Metropolis','NY',40.7125,-74.0059,'2015-03-20','Electrochemical',12.5,25.0,30.0,40.0,0.6,5.0,22.0,55,300,'Active','2023-12-01','No issues');
INSERT INTO air_quality_monitoring_stations VALUES (2002,'Uptown Station','Metropolis','NY',40.7200,-74.0100,'2016-07-15','Optical',15.0,35.0,28.0,38.0,0.5,4.5,21.5,60,300,'Active','2024-01-15','Calibration due');
INSERT INTO air_quality_monitoring_stations VALUES (2003,'Industrial Edge','Metropolis','NY',40.7300,-74.0200,'2018-11-05','Electrochemical',35.0,80.0,55.0,20.0,1.2,12.0,23.0,70,300,'Active','2024-03-20','High traffic area');

-- Renewable energy certificate registry
CREATE TABLE renewable_energy_certificate_registry
(
    CertificateID INTEGER PRIMARY KEY,
    SerialNumber TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    EnergyType TEXT,
    QuantityMWh REAL,
    IssuerOrganization TEXT,
    OwnerOrganization TEXT,
    Status TEXT,
    VerificationMethod TEXT,
    Region TEXT,
    ProjectID INTEGER,
    ProjectName TEXT,
    GridNodeID TEXT,
    PricePerMWh REAL,
    Currency TEXT,
    TransferCount INTEGER,
    LastTransferDate DATE,
    Notes TEXT,
    ComplianceStandard TEXT
);
INSERT INTO renewable_energy_certificate_registry VALUES (3001,'REC-2023-0001','2023-01-01','2033-01-01','Solar',1000,'RenewCertAgency','GreenCo','Active','Blockchain','North','4001','Sunrise Farm','GN100',12.5,'USD',5,'2023-06-01','First issuance','ISO14001');
INSERT INTO renewable_energy_certificate_registry VALUES (3002,'REC-2023-0002','2023-02-15','2033-02-15','Wind',1500,'RenewCertAgency','WindCorp','Active','DigitalSignature','West','4002','Wind Ridge','GN101',10.0,'USD',3,'2023-07-10','Second issuance','ISO14001');
INSERT INTO renewable_energy_certificate_registry VALUES (3003,'REC-2023-0003','2023-03-20','2033-03-20','Hydro',2000,'RenewCertAgency','HydroEnergy','Pending','Manual','South','4003','River Hydro','GN102',8.0,'USD',0,'NULL','Awaiting verification','ISO14001');

-- Logistics warehouse inventory details
CREATE TABLE logistics_warehouse_inventory
(
    WarehouseID INTEGER PRIMARY KEY,
    WarehouseName TEXT,
    Location TEXT,
    CapacityCubicM REAL,
    CurrentUtilizationPct REAL,
    ManagerName TEXT,
    ContactPhone TEXT,
    ReceivingDockCount INTEGER,
    ShippingDockCount INTEGER,
    TemperatureControl TEXT,
    HazardousMaterialAllowed TEXT,
    YearEstablished INTEGER,
    LastInspectionDate DATE,
    InspectionScore INTEGER,
    AutomationLevel TEXT,
    IPAddress TEXT,
    SoftwareVersion TEXT,
    SecurityLevel TEXT,
    FireSuppressionType TEXT,
    BackupPowerHours REAL
);
INSERT INTO logistics_warehouse_inventory VALUES (401,'Central Hub','Metropolis',50000,78.5,'Laura','5551234567',5,4,'Y','N',2005,'2023-04-10',92,'High','192.168.1.10','v3.2','Level3','Sprinkler',4.5);
INSERT INTO logistics_warehouse_inventory VALUES (402,'East Distribution','Metropolis',30000,65.0,'Mark','5559876543',3,3,'N','Y',2010,'2023-03-22',88,'Medium','192.168.2.20','v2.9','Level2','Foam',3.0);
INSERT INTO logistics_warehouse_inventory VALUES (403,'West Storage','Metropolis',20000,45.0,'Susan','5555551212',2,2,'Y','N',2015,'2023-05-05',85,'Low','192.168.3.30','v1.5','Level1','CO2',2.0);

-- Digital content assets metadata
CREATE TABLE digital_content_assets
(
    AssetID INTEGER PRIMARY KEY,
    AssetType TEXT,
    FileName TEXT,
    FileExtension TEXT,
    FileSizeKB INTEGER,
    UploadDate DATE,
    UploadedBy TEXT,
    Category TEXT,
    Tags TEXT,
    Description TEXT,
    URL TEXT,
    LicenseType TEXT,
    DurationSec INTEGER,
    WidthPx INTEGER,
    HeightPx INTEGER,
    BitrateKbps INTEGER,
    Language TEXT,
    CopyrightHolder TEXT,
    AccessLevel TEXT,
    ExpirationDate DATE
);
INSERT INTO digital_content_assets VALUES (6001,'Image','banner_home','jpg',1500,'2023-05-01','Mia','Marketing','promo,home','Home page banner','https://cdn.example.com/banner_home.jpg','RoyaltyFree',0,1920,1080,0,'EN','ExampleCorp','Public','NULL');
INSERT INTO digital_content_assets VALUES (6002,'Video','product_demo','mp4',25000,'2023-06-10','Liam','Product','demo,product','Demo video for product X','https://cdn.example.com/product_demo.mp4','Standard',180,1280,720,2500,'EN','ExampleCorp','Restricted','2024-06-10');
INSERT INTO digital_content_assets VALUES (6003,'Document','annual_report_2022','pdf',850,'2023-01-15','Olivia','Finance','report,2022','Annual financial report 2022','https://cdn.example.com/annual_report_2022.pdf','Confidential',0,0,0,0,'EN','ExampleCorp','Internal','2025-01-15');

-- Municipal noise complaints registry
CREATE TABLE municipal_noise_complaints
(
    ComplaintID INTEGER PRIMARY KEY,
    DateReceived DATE,
    ReporterName TEXT,
    ReporterPhone TEXT,
    Location TEXT,
    NoiseSource TEXT,
    DecibelLevel REAL,
    TimeOfDay TEXT,
    ResolutionStatus TEXT,
    AssignedOfficer TEXT,
    InvestigationDate DATE,
    ActionTaken TEXT,
    FollowUpDate DATE,
    Notes TEXT,
    Latitude REAL,
    Longitude REAL,
    Neighborhood TEXT,
    ComplaintCategory TEXT,
    PriorityLevel TEXT,
    ClosureDate DATE
);
INSERT INTO municipal_noise_complaints VALUES (8001,'2023-06-01','John Doe','5551112222','123 Main St','Construction',85,'Night','Resolved','Officer A','2023-06-03','Fine Issued','2023-06-05','Noise exceeded limits','40.7128','-74.0060','Downtown','Construction','High','2023-06-06');
INSERT INTO municipal_noise_complaints VALUES (8002,'2023-06-02','Jane Smith','5553334444','456 Oak Ave','Music',95,'Evening','In Progress','Officer B','2023-06-04','Warning Issued','2023-06-08','Recurring issue','40.7130','-74.0010','Uptown','Entertainment','Medium','NULL');
INSERT INTO municipal_noise_complaints VALUES (8003,'2023-06-03','Mike Lee','5555556666','789 Pine Rd','Traffic','78','Morning','Pending','Officer C','NULL','Pending Investigation','NULL','Awaiting officer assignment','40.7100','-74.0100','Midtown','Traffic','Low','NULL');