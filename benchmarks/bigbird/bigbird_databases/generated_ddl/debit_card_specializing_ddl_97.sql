-- Station security events log
CREATE TABLE station_security_events
(
    EventID INTEGER PRIMARY KEY,
    StationID INTEGER,
    CameraID INTEGER,
    EventType TEXT,
    EventTimestamp TEXT,
    DetectedObject TEXT,
    ConfidenceScore REAL,
    ImageFileName TEXT,
    VideoClipName TEXT,
    OperatorID INTEGER,
    ShiftID INTEGER,
    LocationDescription TEXT,
    WeatherCondition TEXT,
    Temperature REAL,
    LightLevel REAL,
    MotionVectorX REAL,
    MotionVectorY REAL,
    DurationSeconds INTEGER,
    AlertGenerated INTEGER,
    ResponseTimeSeconds INTEGER,
    Notes TEXT
);

INSERT INTO station_security_events VALUES
(1,101,5,'Motion','2023-07-01T08:15:00','Person',0.93,'img001.jpg','clip001.mp4',2001,301,'North Entrance','Clear',22.5,350.0,0.12,0.03,12,1,30,'No issues'),
(2,102,7,'Tamper','2023-07-02T19:45:00','Camera',0.88,'img002.jpg','clip002.mp4',2002,302,'South Parking','Rain',18.2,280.0,-0.05,0.02,8,1,45,'Camera cover removed'),
(3,103,3,'Motion','2023-07-03T02:30:00','Animal',0.76,'img003.jpg','clip003.mp4',2003,303,'East Alley','Fog',15.0,150.0,0.00,0.00,20,0,0,'False alarm');

-- OEM parts catalog for vehicles
CREATE TABLE vehicle_oem_parts_catalog
(
    PartID INTEGER PRIMARY KEY,
    Manufacturer TEXT,
    PartNumber TEXT,
    Description TEXT,
    Category TEXT,
    SubCategory TEXT,
    VehicleModel TEXT,
    YearStart INTEGER,
    YearEnd INTEGER,
    WeightKg REAL,
    CostUSD REAL,
    SupplierID INTEGER,
    StockQuantity INTEGER,
    ReorderLevel INTEGER,
    LeadTimeDays INTEGER,
    WarrantyMonths INTEGER,
    CompatibilityNotes TEXT,
    HazMatFlag INTEGER,
    DiscontinuedFlag INTEGER,
    LastUpdated TEXT,
    DocumentationURL TEXT
);

INSERT INTO vehicle_oem_parts_catalog VALUES
(1001,'AutoMakersInc','AM1234','Brake Pad Front','Brakes','Pad','ModelX',2018,2022,3.5,45.99,501,120,30,15,24,'Fits ModelX and ModelY',0,0,'2023-06-15','http://docs.automa.com/parts/AM1234'),
(1002,'AutoMakersInc','AM5678','Air Filter','Engine','Filter','ModelZ',2020,2025,0.8,12.50,502,200,50,10,12,'Universal for ModelZ',0,0,'2023-05-20','http://docs.automa.com/parts/AM5678'),
(1003,'GearWorks','GW9012','Gearbox Housing','Transmission','Housing','ModelY',2017,2021,45.0,350.00,503,15,5,30,36,'Requires special tools',0,1,'2022-12-01','http://docs.gearworks.com/parts/GW9012');

-- Fuel distribution routes between stations
CREATE TABLE fuel_distribution_routes
(
    RouteID INTEGER PRIMARY KEY,
    OriginStationID INTEGER,
    DestinationStationID INTEGER,
    RouteName TEXT,
    DistanceKm REAL,
    EstimatedTravelTimeMin INTEGER,
    FuelCapacityLiters INTEGER,
    VehicleType TEXT,
    DriverID INTEGER,
    ScheduleDayOfWeek TEXT,
    StartTime TEXT,
    EndTime TEXT,
    TollCostUSD REAL,
    RoadCondition TEXT,
    WeatherForecast TEXT,
    LoadFactorPercent REAL,
    EmissionKgCO2 REAL,
    MaintenanceWindow TEXT,
    ActiveFlag INTEGER,
    LastServicedDate TEXT,
    RouteNotes TEXT
);

INSERT INTO fuel_distribution_routes VALUES
(2001,101,202,'North Corridor',120.5,90,20000,'Truck','D001','Monday','06:00','08:30',15.75,'Good','Sunny',85.0,3200.5,'2023-07-10 02:00',1,'2023-06-28','Priority route for premium fuel'),
(2002,103,204,'East Loop',85.2,70,15000,'Van','D002','Wednesday','14:00','16:00',8.40,'Fair','Rain',78.0,2100.3,'2023-07-12 01:00',1,'2023-06-30','Includes checkpoint at CityGate'),
(2003,105,206,'South Express',200.0,130,25000,'Truck','D003','Friday','22:00','00:45',22.10,'Excellent','Clear',92.0,4600.0,'2023-07-15 03:00',0,'2023-06-25','Temporary suspension for roadworks');

-- Employee benefits enrollment records
CREATE TABLE employee_benefits_enrollment
(
    EnrollmentID INTEGER PRIMARY KEY,
    EmployeeID INTEGER,
    BenefitPlanID INTEGER,
    EffectiveDate TEXT,
    EndDate TEXT,
    CoverageLevel TEXT,
    PremiumUSD REAL,
    EmployerContributionUSD REAL,
    EmployeeContributionUSD REAL,
    DependentCount INTEGER,
    DependentCoverageLevel TEXT,
    HealthPlanProvider TEXT,
    DentalPlanProvider TEXT,
    VisionPlanProvider TEXT,
    LifeInsuranceAmountUSD INTEGER,
    DisabilityInsuranceAmountUSD INTEGER,
    RetirementPlanContributionPct REAL,
    EnrollmentStatus TEXT,
    EnrollmentSource TEXT,
    HRRepresentativeID INTEGER,
    Notes TEXT
);

INSERT INTO employee_benefits_enrollment VALUES
(3001,4001,501,'2023-01-01','2023-12-31','Family',350.00,200.00,150.00,2,'Family','HealthPlus','DentalCare','VisionOptics',50000,30000,5.0,'Active','Online','HR100','Enrolled during open enrollment'),
(3002,4002,502,'2023-03-15','2024-03-14','Individual',150.00,80.00,70.00,0,'N/A','MediHealth','SmileDental','ClearView',25000,15000,3.0,'Active','HRPortal','HR101','Mid-year enrollment change'),
(3003,4003,503,'2022-07-01','2023-06-30','Family',400.00,220.00,180.00,3,'Family','WellnessCo','BrightDental','EyeCare',60000,35000,6.0,'Terminated','Manual','HR102','Terminated due to resignation');

-- Environmental sensor calibration records
CREATE TABLE environmental_sensor_calibrations
(
    CalibrationID INTEGER PRIMARY KEY,
    SensorID INTEGER,
    SensorType TEXT,
    CalibrationDate TEXT,
    TechnicianID INTEGER,
    CalibrationValue REAL,
    ReferenceValue REAL,
    CalibrationMethod TEXT,
    CalibrationLocation TEXT,
    TemperatureC REAL,
    HumidityPct REAL,
    PressurePa REAL,
    VoltageV REAL,
    CurrentMA REAL,
    CalibrationResult TEXT,
    NextDueDate TEXT,
    CalibrationCertificateURL TEXT,
    Comments TEXT,
    ValidFlag INTEGER,
    CalibrationDurationSec INTEGER,
    LabID INTEGER
);

INSERT INTO environmental_sensor_calibrations VALUES
(4001,701,'AirQuality','2023-06-30',9001,0.985,1.00,'Standard','LabA',22.0,45.0,101325,3.3,15.0,'Pass','2024-06-30','http://labA.com/certs/4001','No deviation observed',1,180,11),
(4002,702,'WaterPH','2023-07-02',9002,7.02,7.00,'BufferSolution','LabB',20.5,50.0,101500,5.0,20.0,'Pass','2025-07-02','http://labB.com/certs/4002','Minor offset corrected',1,240,12),
(4003,703,'SoilMoisture','2023-06-28',9003,0.45,0.50,'Gravimetric','FieldStation',18.0,55.0,100800,2.8,12.0,'Fail','2023-12-28','Recalibration required',0,300,13);

-- Digital ad performance metrics per day
CREATE TABLE digital_ad_performance_metrics
(
    MetricID INTEGER PRIMARY KEY,
    CampaignID INTEGER,
    AdGroupID INTEGER,
    AdID INTEGER,
    Date TEXT,
    Impressions INTEGER,
    Clicks INTEGER,
    Conversions INTEGER,
    SpendUSD REAL,
    RevenueUSD REAL,
    CTR REAL,
    CPC REAL,
    CPM REAL,
    ConversionRate REAL,
    AvgPosition REAL,
    QualityScore INTEGER,
    DeviceType TEXT,
    Country TEXT,
    Platform TEXT,
    AudienceSegment TEXT,
    ViewThroughConversions INTEGER
);

INSERT INTO digital_ad_performance_metrics VALUES
(5001,6001,7001,8001,'2023-07-01',15000,300,45,1200.00,1800.00,0.02,4.00,80.00,0.15,1.5,8,'Mobile','US','Google','YoungAdults',10),
(5002,6002,7002,8002,'2023-07-01',25000,500,60,2000.00,2500.00,0.02,4.00,80.00,0.12,2.0,7,'Desktop','CA','Facebook','Professionals',15),
(5003,6003,7003,8003,'2023-07-01',18000,350,55,1500.00,2100.00,0.0194,4.29,83.33,0.157,1.8,9,'Tablet','UK','LinkedIn','Entrepreneurs',8);

-- Water supply network assets inventory
CREATE TABLE water_supply_network_assets
(
    AssetID INTEGER PRIMARY KEY,
    AssetType TEXT,
    AssetName TEXT,
    LocationCoordinates TEXT,
    InstallationDate TEXT,
    CapacityLiters INTEGER,
    Material TEXT,
    OwnerOrganization TEXT,
    MaintenanceFrequencyDays INTEGER,
    LastMaintenanceDate TEXT,
    ConditionRating INTEGER,
    PressurePa REAL,
    FlowRateLps REAL,
    AgeYears INTEGER,
    RiskLevel TEXT,
    LatitudinalZone TEXT,
    LongitudinalZone TEXT,
    InspectionReportURL TEXT,
    DecommissionDate TEXT,
    ActiveFlag INTEGER,
    Notes TEXT,
    AssetTag TEXT
);

INSERT INTO water_supply_network_assets VALUES
(6001,'PumpStation','NorthPump','45.1234,-73.5678','2010-05-20',500000,'Steel','CityWaterDept',180,'2023-04-15',8,250000,150.0,13,'Medium','ZoneA','Sector1','http://citywater.gov/reports/6001','',1,'Primary pumping for northern district','NP-001'),
(6002,'Reservoir','EastReservoir','46.2345,-74.6789','2005-09-10',2000000,'Concrete','CityWaterDept',365,'2023-01-10',9,200000,300.0,18,'Low','ZoneB','Sector2','http://citywater.gov/reports/6002','',1,'Largest storage facility','ER-002'),
(6003,'Valve','SouthValve','44.9876,-72.5432','2015-03-15',0,'Iron','CityWaterDept',90,'2023-06-01',7,180000,80.0,8,'High','ZoneC','Sector3','http://citywater.gov/reports/6003','',1,'Critical pressure control','SV-003');

-- Renewable energy project funding details
CREATE TABLE renewable_energy_project_funding
(
    FundingID INTEGER PRIMARY KEY,
    ProjectID INTEGER,
    FundingSource TEXT,
    AmountUSD REAL,
    Currency TEXT,
    FundingDate TEXT,
    FundingRound TEXT,
    ApprovalStatus TEXT,
    ApprovalDate TEXT,
    DisbursementDate TEXT,
    Conditions TEXT,
    ContactPerson TEXT,
    ContactEmail TEXT,
    ContractNumber TEXT,
    GrantNumber TEXT,
    MatchingFundsUSD REAL,
    EquityStakePct REAL,
    DebtInstrument TEXT,
    InterestRatePct REAL,
    MaturityDate TEXT,
    Notes TEXT,
    UpdatedAt TEXT
);

INSERT INTO renewable_energy_project_funding VALUES
(7001,8001,'GreenInvest','5000000','USD','2023-02-15','SeriesA','Approved','2023-03-01','2023-03-15','Milestone reporting','Jane Doe','jane.doe@greeninvest.com','CN-1001','GN-2001',0,5.0,'Equity',0,NULL,'Initial seed funding','2023-06-30'),
(7002,8002,'SolarBank','1200000','USD','2023-04-10','Grant','Pending','','','Annual sustainability audit','John Smith','john.smith@solarbk.com','CN-1002','GN-2002',200000,0,'Loan',3.5,'2028-04-10','Awaiting board approval','2023-07-01'),
(7003,8003,'WindFund','3000000','EUR','2023-01-20','SeriesB','Approved','2023-02-05','2023-02-20','Local community benefit','Anna Lee','anna.lee@windfund.eu','CN-1003','GN-2003',500000,10.0,'Equity',0,NULL,'Second round financing','2023-07-02');

-- Public transport vehicle assignments to routes
CREATE TABLE public_transport_vehicle_assignments
(
    AssignmentID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    RouteID INTEGER,
    AssignmentStartDate TEXT,
    AssignmentEndDate TEXT,
    DriverID INTEGER,
    ShiftPattern TEXT,
    CapacitySeats INTEGER,
    AccessibilityFlag INTEGER,
    FuelType TEXT,
    EnergyConsumptionKWh REAL,
    MaintenanceWindow TEXT,
    Status TEXT,
    AssignedBy INTEGER,
    AssignmentNotes TEXT,
    GPSDeviceID INTEGER,
    TelemetryEnabled INTEGER,
    ServiceLevel TEXT,
    OverrideFlag INTEGER,
    LastUpdated TEXT,
    AdditionalInfo TEXT
);

INSERT INTO public_transport_vehicle_assignments VALUES
(8001,9001,1001,'2023-07-01','2023-12-31','D200','Day','45',1,'Diesel',150.0,'2023-08-15','Active','HR300','Regular weekday service',5001,1,'Standard',0,'2023-07-05','No changes planned'),
(8002,9002,1002,'2023-07-15','2024-01-15','D201','Night','30',0,'Electric',80.0,'2023-09-01','Active','HR301','Night line with lower demand',5002,1,'Premium',0,'2023-07-10','Battery health good'),
(8003,9003,1003,'2023-06-01','2023-11-30','D202','Weekend','40',1,'Hybrid',120.0,'2023-07-20','Inactive','HR302','Seasonal route, paused for maintenance',5003,0,'Standard',1,'2023-07-08','Awaiting parts');

-- Waste management collection schedule per zone
CREATE TABLE waste_management_collection_schedule
(
    ScheduleID INTEGER PRIMARY KEY,
    ZoneID INTEGER,
    CollectionDay TEXT,
    CollectionTimeStart TEXT,
    CollectionTimeEnd TEXT,
    VehicleID INTEGER,
    DriverID INTEGER,
    BinType TEXT,
    BinCapacityKg INTEGER,
    RouteID INTEGER,
    CrewSize INTEGER,
    SupervisorID INTEGER,
    PermitNumber TEXT,
    SafetyEquipmentFlag INTEGER,
    EstimatedTravelDistanceKm REAL,
    FuelUsedLiters REAL,
    EmissionKgCO2 REAL,
    WeatherImpactFlag INTEGER,
    Notes TEXT,
    LastModified TEXT,
    ActiveFlag INTEGER
);

INSERT INTO waste_management_collection_schedule VALUES
(9001,1101,'Monday','07:00','09:00',1201,2101,'Recyclable',120,3001,4,4101,'PN-001',1,15.0,2.5,5.5,0,'Standard residential collection','2023-07-01',1),
(9002,1102,'Wednesday','18:00','20:30',1202,2102,'Organic',80,3002,3,4102,'PN-002',1,12.5,2.0,4.5,1,'Delayed due to rain forecast','2023-07-02',1),
(9003,1103,'Friday','22:00','23:45',1203,2103,'General',200,3003,5,4103,'PN-003',0,20.0,3.5,7.0,0,'Night collection for commercial area','2023-07-03',0);