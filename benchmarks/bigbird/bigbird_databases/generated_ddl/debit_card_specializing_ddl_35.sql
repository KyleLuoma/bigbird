-- Parking permit applications submitted by residents
CREATE TABLE parking_permit_applications
(
    ApplicationID INTEGER PRIMARY KEY,
    ApplicantName TEXT,
    VehicleID TEXT,
    PermitType TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    FeeAmount REAL,
    PaymentMethod TEXT,
    Status TEXT,
    StreetAddress TEXT,
    City TEXT,
    State TEXT,
    ZipCode TEXT,
    ContactPhone TEXT,
    EmailAddress TEXT,
    VehicleMake TEXT,
    VehicleModel TEXT,
    VehicleYear INTEGER,
    LicensePlate TEXT,
    ZoneCode TEXT
);

INSERT INTO parking_permit_applications VALUES (1,'Alice Smith','V001','Residential','2023-01-15','2024-01-14',75.00,'CreditCard','Approved','123 Main St','Springfield','IL','62704','5551234567','alice@example.com','Toyota','Camry',2018,'ABC123','Z01');
INSERT INTO parking_permit_applications VALUES (2,'Bob Johnson','V002','Commercial','2023-03-20','2024-03-19',150.00,'Check','Pending','456 Oak Ave','Springfield','IL','62705','5559876543','bob@example.com','Ford','Transit',2020,'XYZ789','Z02');
INSERT INTO parking_permit_applications VALUES (3,'Carol Lee','V003','Residential','2023-06-10','2024-06-09',75.00,'DebitCard','Approved','789 Pine Rd','Springfield','IL','62706','5555551212','carol@example.com','Honda','Civic',2019,'LMN456','Z01');

-- City bike infrastructure components
CREATE TABLE city_bike_infrastructure
(
    InfrastructureID INTEGER PRIMARY KEY,
    ComponentType TEXT,
    LocationDescription TEXT,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    LastInspectionDate DATE,
    ConditionScore INTEGER,
    Material TEXT,
    LengthMeters REAL,
    WidthMeters REAL,
    BikeLaneID TEXT,
    StationID TEXT,
    LightingType TEXT,
    MaintenanceResponsible TEXT,
    ProjectedCost REAL,
    FundingSource TEXT,
    ActiveFlag INTEGER,
    Remarks TEXT,
    PhotoReference TEXT
);

INSERT INTO city_bike_infrastructure VALUES (101,'BikeLane','Main St between 1st and 3rd','39.7817','-89.6501','2021-04-12','2023-02-20',9,'Asphalt',500.0,2.5,'BL001','ST01','LED','PublicWorks',25000.00,'CityBudget',1,'Near park','photo_101.jpg');
INSERT INTO city_bike_infrastructure VALUES (102,'BikeRack','Central Library Parking Lot','39.7990','-89.6430','2020-09-05','2023-01-15',8,'Steel',0,0,'','BR12','Solar','FacilitiesDept',5000.00,'Grant2022',1,'Covered rack','photo_102.jpg');
INSERT INTO city_bike_infrastructure VALUES (103,'ProtectedCycleTrack','Riverfront Trail','39.8025','-89.6200','2022-06-18','2023-03-10',10,'Concrete',1200.0,3.0,'CT005','', 'LED','Transportation',75000.00,'FederalFunds',1,'Scenic view','photo_103.jpg');

-- Electric grid substation inspection records
CREATE TABLE electric_grid_substation_inspections
(
    InspectionID INTEGER PRIMARY KEY,
    SubstationID TEXT,
    InspectionDate DATE,
    InspectorName TEXT,
    VoltageLevel INTEGER,
    TransformerCount INTEGER,
    BreakerStatus TEXT,
    CoolantLevel REAL,
    FireSuppressionStatus TEXT,
    GroundResistance REAL,
    Comments TEXT,
    NextInspectionDue DATE,
    AuditScore INTEGER,
    ComplianceFlag INTEGER,
    TemperatureC REAL,
    HumidityPercent REAL,
    LoadMW REAL,
    MaintenancePlan TEXT,
    SafetyEquipmentStatus TEXT,
    Latitude REAL,
    Longitude REAL,
    Region TEXT
);

INSERT INTO electric_grid_substation_inspections VALUES (5001,'SS001','2023-02-10','John Doe',138,4,'Good',85.5,'Operational',0.12,'All systems normal','2024-02-10',95,1,22.5,45.0,120.0,'Quarterly','Pass','39.7900','-89.6400','North');
INSERT INTO electric_grid_substation_inspections VALUES (5002,'SS002','2023-05-22','Jane Smith',230,6,'NeedsRepair',78.0,'Operational',0.15,'Breaker wear observed','2024-05-22',88,0,24.0,50.0,200.0,'Biannual','Conditional','39.8050','-89.6300','South');
INSERT INTO electric_grid_substation_inspections VALUES (5003,'SS003','2023-11-05','Mike Lee',115,3,'Good',90.0,'Operational',0.10,'No issues','2024-11-05',97,1,21.0,40.0,95.0,'Annual','Pass','39.7700','-89.6550','East');

-- Renewable energy project funding details
CREATE TABLE renewable_energy_project_funding
(
    FundingID INTEGER PRIMARY KEY,
    ProjectID TEXT,
    FundingAgency TEXT,
    FundingAmount REAL,
    AwardDate DATE,
    StartDate DATE,
    EndDate DATE,
    FundingType TEXT,
    ProjectPhase TEXT,
    Country TEXT,
    State TEXT,
    County TEXT,
    Currency TEXT,
    ExchangeRate REAL,
    DisbursementSchedule TEXT,
    MatchingFunds REAL,
    ReportingRequirements TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Status TEXT
);

INSERT INTO renewable_energy_project_funding VALUES (9001,'RE001','DOE','5000000','2022-01-15','2022-06-01','2025-05-31','Grant','Construction','USA','IL','Cook','USD',1.0,'Milestones','500000','QuarterlyReport','Laura Green','5551112222','lgreen@doe.gov','Active');
INSERT INTO renewable_energy_project_funding VALUES (9002,'RE002','EPA','2000000','2021-09-10','2022-01-01','2024-12-31','Loan','Development','USA','IL','DuPage','USD',1.0,'Annual','200000','AnnualAudit','Mark Brown','5553334444','mbrown@epa.gov','Active');
INSERT INTO renewable_energy_project_funding VALUES (9003,'RE003','PrivateInvestor','750000','2023-03-20','2023-04-15','2026-04-14','Equity','Planning','USA','IL','Kane','USD',1.0,'Quarterly','0','None','Susan White','5557778888','swhite@invest.com','Pending');

-- Municipal waste audit records
CREATE TABLE municipal_waste_audit
(
    AuditID INTEGER PRIMARY KEY,
    Year INTEGER,
    Month INTEGER,
    TotalWasteTons REAL,
    RecycledTons REAL,
    CompostTons REAL,
    LandfilledTons REAL,
    HazardousTons REAL,
    AuditConductedBy TEXT,
    AuditDate DATE,
    Notes TEXT,
    PerCapitaWasteKG REAL,
    Population INTEGER,
    AverageRecyclingRate REAL,
    PolicyComplianceFlag INTEGER,
    FundingSource TEXT,
    CoordinatorName TEXT,
    CoordinatorPhone TEXT,
    CoordinatorEmail TEXT,
    DataSource TEXT
);

INSERT INTO municipal_waste_audit VALUES (1,2023,1,1200.5,350.2,150.0,650.0,0.5,'CityDept','2023-02-15','January audit','1.8',670000,0.292,1,'GeneralFund','Tom Davis','5552223333','tdavis@city.gov','WasteMgmtSystem');
INSERT INTO municipal_waste_audit VALUES (2,2023,2,1150.0,340.0,140.0,630.0,0.4,'CityDept','2023-03-16','February audit','1.7',670000,0.296,1,'GeneralFund','Tom Davis','5552223333','tdavis@city.gov','WasteMgmtSystem');
INSERT INTO municipal_waste_audit VALUES (3,2023,3,1185.3,360.5,145.0,640.0,0.6,'CityDept','2023-04-14','March audit','1.75',670000,0.304,1,'GeneralFund','Tom Davis','5552223333','tdavis@city.gov','WasteMgmtSystem');

-- Public art commissions registry
CREATE TABLE public_art_commissions
(
    CommissionID INTEGER PRIMARY KEY,
    ArtistName TEXT,
    ArtworkTitle TEXT,
    Medium TEXT,
    HeightCM REAL,
    WidthCM REAL,
    DepthCM REAL,
    LocationDescription TEXT,
    InstallationDate DATE,
    CommissionAmount REAL,
    FundingSource TEXT,
    Status TEXT,
    MaintenancePlan TEXT,
    InsurancePolicy TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    CoordinatesLat REAL,
    CoordinatesLong REAL,
    PublicFeedbackScore INTEGER,
    PermitNumber TEXT,
    ApprovalDate DATE,
    Notes TEXT
);

INSERT INTO public_art_commissions VALUES (4001,'Emma Rivera','River Flow','Bronze',250.0,120.0,80.0,'Riverfront Plaza','2022-09-10',75000,'CityArtsFund','Installed','AnnualInspection','Policy123','5554445555','emma.rivera@artist.com',39.8020,-89.6205,85,'PN-2022-07','2022-06-15','Dedicated to water conservation');
INSERT INTO public_art_commissions VALUES (4002,'Liam Chen','Skyline Pulse','Steel',300.0,200.0,150.0,'Downtown Atrium','2023-04-22',120000,'CorporateSponsor','Pending','QuarterlyCheck','Policy456','5556667777','liam.chen@artist.com',39.7950,-89.6400,70,'PN-2023-03','2023-03-01','Awaiting final permits');
INSERT INTO public_art_commissions VALUES (4003,'Olivia Patel','Harvest Circle','Wood',180.0,180.0,30.0,'Community Garden','2021-05-15',50000,'GrantProgram','Installed','BiannualCleaning','Policy789','5558889999','olivia.patel@artist.com',39.7885,-89.6350,92,'PN-2021-04','2021-04-20','Celebrates local agriculture');

-- Traffic signal timing configurations
CREATE TABLE traffic_signal_timings
(
    SignalID INTEGER PRIMARY KEY,
    IntersectionID TEXT,
    SignalType TEXT,
    CycleLengthSeconds REAL,
    GreenTimeNorthSouth REAL,
    YellowTimeNorthSouth REAL,
    RedTimeNorthSouth REAL,
    GreenTimeEastWest REAL,
    YellowTimeEastWest REAL,
    RedTimeEastWest REAL,
    CoordinationGroup TEXT,
    LastAdjusted DATE,
    AdjustmentReason TEXT,
    ProgrammedBy TEXT,
    Status TEXT,
    PedestrianPhaseFlag INTEGER,
    BikePhaseFlag INTEGER,
    PeakHourFactor REAL,
    OffPeakHourFactor REAL,
    Comments TEXT,
    Latitude REAL,
    Longitude REAL
);

INSERT INTO traffic_signal_timings VALUES (8001,'INT001','Fixed','120',45,5,70,60,5,55,'GroupA','2023-01-20','SeasonalAdjustment','Emily Clark','Active',1,1,1.2,0.8,'Optimized for morning rush','39.8001','-89.6420');
INSERT INTO traffic_signal_timings VALUES (8002,'INT002','Adaptive','110',40,4,66,50,4,56,'GroupB','2023-03-15','TrafficStudy','David Lee','Active',1,0,1.3,0.9,'Adaptive based on sensors','39.8055','-89.6305');
INSERT INTO traffic_signal_timings VALUES (8003,'INT003','Fixed','130',55,5,70,55,5,70,'GroupA','2022-12-05','RoutineUpdate','Sarah Kim','Inactive',1,1,1.1,0.7,'Currently under maintenance','39.7920','-89.6480');

-- Water quality sampling station data
CREATE TABLE water_quality_sampling
(
    SampleID INTEGER PRIMARY KEY,
    StationID TEXT,
    SampleDate DATE,
    SampleTime TEXT,
    pH REAL,
    ConductivityUS REAL,
    TurbidityNTU REAL,
    TemperatureC REAL,
    DissolvedOxygenMG_L REAL,
    NitrateMG_L REAL,
    PhosphateMG_L REAL,
    ColiformCountCFU INTEGER,
    SampleCollector TEXT,
    Methodology TEXT,
    ResultStatus TEXT,
    AnalysisLab TEXT,
    ReportDate DATE,
    Comments TEXT,
    Latitude REAL,
    Longitude REAL
);

INSERT INTO water_quality_sampling VALUES (3001,'WS001','2023-02-10','08:30',7.2,150.5,2.5,12.1,8.3,3.1,0.4,200,'John Miller','StandardMethod','Approved','EnvLab','2023-02-15','Clear sample','39.8010','-89.6405');
INSERT INTO water_quality_sampling VALUES (3002,'WS002','2023-02-11','09:15',6.8,142.0,3.0,13.0,7.9,2.8,0.5,350,'Maria Gomez','StandardMethod','Approved','EnvLab','2023-02-16','Slightly turbid','39.8035','-89.6380');
INSERT INTO water_quality_sampling VALUES (3003,'WS003','2023-02-12','07:45',7.5,160.2,1.8,11.5,8.7,3.3,0.3,150,'Carlos Ruiz','StandardMethod','Approved','EnvLab','2023-02-17','No issues','39.7990','-89.6425');

-- Smart lighting maintenance activities
CREATE TABLE smart_lighting_maintenance
(
    MaintenanceID INTEGER PRIMARY KEY,
    PoleID TEXT,
    LocationDescription TEXT,
    MaintenanceDate DATE,
    TechnicianName TEXT,
    LEDIntensityLumens REAL,
    PowerSupplyVoltage REAL,
    ControlModuleVersion TEXT,
    FaultCode TEXT,
    ReplacementPart TEXT,
    BatteryStatus TEXT,
    NetworkSignalStrength REAL,
    FirmwareVersion TEXT,
    ScheduledFlag INTEGER,
    CostREAL REAL,
    Notes TEXT,
    Latitude REAL,
    Longitude REAL,
    Region TEXT,
    Status TEXT,
    NextMaintenanceDue DATE
);

INSERT INTO smart_lighting_maintenance VALUES (2101,'P001','Main St & 1st','2023-01-25','Alex Turner','8000','120','v2.1','FC01','LEDModuleA','Good','-70','fw1.4',1,250.00,'Replaced LED module','39.8005','-89.6410','North','Completed','2024-01-25');
INSERT INTO smart_lighting_maintenance VALUES (2102,'P045','Broadway & 5th','2023-03-10','Bethany Lee','7500','115','v2.0','FC03','LEDModuleB','Fair','-68','fw1.3',0,300.00,'Adjusted control module','39.8050','-89.6390','South','Pending','2024-03-10');
INSERT INTO smart_lighting_maintenance VALUES (2103,'P078','Elm St & 9th','2023-06-05','Carlos Mendes','8200','122','v2.2','FC00','LEDModuleC','Good','-72','fw1.5',1,200.00,'Routine check, no issues','39.7925','-89.6475','East','Completed','2024-06-05');

-- Drone delivery operation logs
CREATE TABLE drone_delivery_operations
(
    OperationID INTEGER PRIMARY KEY,
    DroneID TEXT,
    OperatorName TEXT,
    LaunchSite TEXT,
    DestinationSite TEXT,
    PackageID TEXT,
    WeightKG REAL,
    LaunchTime TEXT,
    LandingTime TEXT,
    FlightDistanceKM REAL,
    BatteryStartPercent INTEGER,
    BatteryEndPercent INTEGER,
    WeatherCondition TEXT,
    MissionStatus TEXT,
    FlightAltitudeM REAL,
    SpeedKMH REAL,
    NoFlyZoneFlag INTEGER,
    RegulatoryApprovalID TEXT,
    CostUSD REAL,
    IncidentReport TEXT,
    CreatedDate DATE,
    Notes TEXT
);

INSERT INTO drone_delivery_operations VALUES (50001,'DR001','Emily Fox','Warehouse_A','Customer_123','PKG789',2.5,'08:15','08:25',3.2,100,85,'Clear','Success',120,60,0,'RA-2023-001',45.00,'None','2023-02-01','First trial delivery');
INSERT INTO drone_delivery_operations VALUES (50002,'DR002','Michael Chen','Warehouse_B','Customer_456','PKG456',1.8,'09:40','09:55',5.0,100,78,'Windy','Success',150,55,0,'RA-2023-002',60.00,'Minor GPS glitch','2023-03-12','Adjusted route');
INSERT INTO drone_delivery_operations VALUES (50003,'DR003','Sofia Patel','Warehouse_C','Customer_789','PKG321',3.0,'10:05','10:20',4.5,100,70,'Rain','Failed',100,50,1,'RA-2023-003',55.00,'Landing gear issue','2023-04-20','Rescheduled delivery');