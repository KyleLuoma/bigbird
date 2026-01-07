-- Conference rooms and facilities information
CREATE TABLE conference_rooms
(
    RoomID INTEGER PRIMARY KEY,
    BuildingName TEXT,
    Floor INTEGER,
    Capacity INTEGER,
    RoomType TEXT,
    HasProjector INTEGER,
    HasVideoConferencing INTEGER,
    HasWhiteboard INTEGER,
    AudioSystem TEXT,
    LightingControl TEXT,
    HVACZone TEXT,
    AvailableFrom TEXT,
    AvailableTo TEXT,
    BookingPolicy TEXT,
    MaintenanceSchedule TEXT,
    LastRenovationDate DATE,
    EquipmentInventory TEXT,
    WiFiSSID TEXT,
    PowerOutletCount INTEGER,
    WindowCount INTEGER,
    NoiseLevelRating REAL,
    AccessibilityFeatures TEXT
);

INSERT INTO conference_rooms VALUES (1,'NorthTower',5,20,'Meeting','1','1','1','Dolby','Automated','ZoneA','08:00','18:00','FirstComeFirstServed','Quarterly','2022-04-15','Projector,Speaker','NorthWiFi','12','2',45.5,'WheelchairRamp');
INSERT INTO conference_rooms VALUES (2,'SouthWing',2,10,'Huddle','0','0','1','Bose','Manual','ZoneB','09:00','17:00','ReservationOnly','Monthly','2021-09-30','Whiteboard,TV','SouthWiFi','8','1',38.2,'None');
INSERT INTO conference_rooms VALUES (3,'EastAnnex',1,50,'Auditorium','1','1','0','Shure','Automated','ZoneC','07:00','21:00','BookingSystem','Annual','2020-12-01','StageLights,PA','EastWiFi','20','4',50.0,'ElevatorAccess');

-- Digital signage inventory across locations
CREATE TABLE digital_signage_inventory
(
    SignageID INTEGER PRIMARY KEY,
    LocationID INTEGER,
    MediaType TEXT,
    Resolution TEXT,
    SizeInches REAL,
    BrightnessNits REAL,
    Orientation TEXT,
    PowerSource TEXT,
    NetworkIP TEXT,
    FirmwareVersion TEXT,
    InstallationDate DATE,
    LastMaintenance DATE,
    OwnerDept TEXT,
    ContentProvider TEXT,
    IsActive INTEGER,
    ExpectedLifespanMonths INTEGER,
    WarrantyExpiry DATE,
    TemperatureRatingC REAL,
    HumidityRating REAL,
    VandalismRating INTEGER,
    SerialNumber TEXT,
    AssetTag TEXT
);

INSERT INTO digital_signage_inventory VALUES (101,10,'LCD','1920x1080',55.0,700.0,'Landscape','AC','192.168.1.10','v1.2','2021-03-10','2023-02-15','Marketing','InHouse','1','60','2026-03-10',45.0,55.0,2,'SN101A','AT101');
INSERT INTO digital_signage_inventory VALUES (102,12,'LED','3840x2160',75.0,1200.0,'Portrait','PoE','192.168.1.12','v2.0','2022-07-22','2023-07-01','Retail','ThirdParty','1','72','2028-07-22',40.0,50.0,1,'SN102B','AT102');
INSERT INTO digital_signage_inventory VALUES (103,15,'OLED','2560x1440',65.0,800.0,'Landscape','AC','192.168.1.15','v1.5','2020-11-05','2023-01-20','HR','InHouse','0','84','2027-11-05',42.0,52.0,3,'SN103C','AT103');

-- Insurance policies for vehicle fleet
CREATE TABLE fleet_insurance_policies
(
    PolicyID INTEGER PRIMARY KEY,
    FleetID INTEGER,
    InsurerName TEXT,
    PolicyNumber TEXT,
    CoverageType TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    PremiumAmount REAL,
    DeductibleAmount REAL,
    LiabilityLimit REAL,
    CollisionLimit REAL,
    ComprehensiveLimit REAL,
    PersonalInjuryLimit REAL,
    UninsuredMotoristLimit REAL,
    IsActive INTEGER,
    AgentContact TEXT,
    ClaimsMade INTEGER,
    TotalClaimsAmount REAL,
    Notes TEXT,
    RenewalNoticeSent INTEGER,
    LastPremiumPayment DATE,
    PaymentMethod TEXT
);

INSERT INTO fleet_insurance_policies VALUES (5001,1,'GlobalInsure','G12345','FullCoverage','2023-01-01','2024-01-01',15000.0,1000.0,500000.0,300000.0,400000.0,200000.0,250000.0,'1','JohnDoe','2',3000.0,'Renewal pending','1','2023-12-15','CreditCard');
INSERT INTO fleet_insurance_policies VALUES (5002,2,'SafeCover','S67890','LiabilityOnly','2022-06-15','2023-06-15',8000.0,500.0,250000.0,0.0,0.0,100000.0,0.0,'0','JaneSmith','0',0.0,'Policy expired','0','2022-06-01','BankTransfer');
INSERT INTO fleet_insurance_policies VALUES (5003,3,'SureProtect','SP24680','FullCoverage','2023-09-01','2024-09-01',12000.0,750.0,400000.0,250000.0,350000.0,150000.0,200000.0,'1','MikeLee','1',1200.0,'All good','1','2023-08-20','Check');

-- Air quality monitoring stations network
CREATE TABLE air_quality_monitoring_stations
(
    StationID INTEGER PRIMARY KEY,
    SiteName TEXT,
    Latitude REAL,
    Longitude REAL,
    ElevationMeters REAL,
    SensorModel TEXT,
    PM25Limit REAL,
    OzoneLimit REAL,
    NO2Limit REAL,
    SO2Limit REAL,
    CO2Level REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    BatteryStatus INTEGER,
    LastCalibration DATE,
    InstallationDate DATE,
    MaintenanceVendor TEXT,
    DataTransmissionMethod TEXT,
    IsActive INTEGER,
    City TEXT,
    Region TEXT,
    Country TEXT,
    OwnerOrganization TEXT
);

INSERT INTO air_quality_monitoring_stations VALUES (3001,'CentralPark','40.785091','-73.968285',15.0,'AQM-100',35.0,0.070,0.053,0.020,410.0,22.5,55.0,1,'2023-05-10','2020-04-01','EnviroTech','Cellular','1','NewYork','NY','USA','CityDept');
INSERT INTO air_quality_monitoring_stations VALUES (3002,'LakeSide','34.052235','-118.243683',30.0,'AQM-200',30.0,0.060,0.040,0.015,380.0,25.0,45.0,1,'2023-06-12','2021-07-15','AirSafe','WiFi','1','LosAngeles','CA','USA','CountyHealth');
INSERT INTO air_quality_monitoring_stations VALUES (3003,'HillTop','41.878113','-87.629799',200.0,'AQM-150',28.0,0.055,0.035,0.012,395.0,20.0,60.0,0,'2022-11-20','2019-10-10','CleanAirCo','Satellite','0','Chicago','IL','USA','StateEPA');

-- Renewable energy project catalogue
CREATE TABLE renewable_energy_projects
(
    ProjectID INTEGER PRIMARY KEY,
    ProjectName TEXT,
    EnergyType TEXT,
    CapacityMW REAL,
    StartDate DATE,
    EndDate DATE,
    Status TEXT,
    DeveloperCompany TEXT,
    FinancingSource TEXT,
    InvestmentAmount REAL,
    ExpectedAnnualGenerationMWh REAL,
    LocationLatitude REAL,
    LocationLongitude REAL,
    GridConnectionPoint TEXT,
    PermitNumber TEXT,
    EnvironmentalImpactScore REAL,
    SubsidyAmount REAL,
    OwnerCompany TEXT,
    OperationStartDate DATE,
    OperationEndDate DATE,
    MaintenanceContractID INTEGER,
    ProjectManager TEXT
);

INSERT INTO renewable_energy_projects VALUES (8001,'SolarRiver','Solar',150.0,'2022-01-15','2024-12-31','Construction','SunPower Inc','Equity','200000000',250000,'35.6895','139.6917','NodeA','PERM123',75.0,5000000,'GreenEnergy Ltd','2025-01-01',NULL,4001,'AliceGreen');
INSERT INTO renewable_energy_projects VALUES (8002,'WindCoast','Wind',300.0,'2021-06-01','2025-05-30','Operational','WindWorks','Debt','350000000',900000,'36.2048','138.2529','NodeB','PERM456',68.5,8000000,'BlueWind Corp','2025-06-01','2035-06-01',4002,'BobWind');
INSERT INTO renewable_energy_projects VALUES (8003,'HydroValley','Hydro',120.0,'2023-03-20','2027-09-15','Planning','AquaFlow','Grant','180000000',400000,'34.0522','-118.2437','NodeC','PERM789',82.0,6000000,'RiverPower LLC','2028-01-01',NULL,4003,'ClaraWaters');

-- Customer contact history log
CREATE TABLE customer_contact_history
(
    ContactID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    ContactDate DATE,
    ContactMethod TEXT,
    ContactAgentID INTEGER,
    Outcome TEXT,
    FollowUpDate DATE,
    Notes TEXT,
    SatisfactionScore REAL,
    CallDurationSeconds INTEGER,
    EmailSubject TEXT,
    EmailThreadID TEXT,
    SurveyCompleted INTEGER,
    SurveyScore REAL,
    Channel TEXT,
    CampaignID INTEGER,
    ResolutionTimeHours REAL,
    Escalated INTEGER,
    EscalationLevel INTEGER,
    PreferredLanguage TEXT,
    Region TEXT,
    ContactTier TEXT
);

INSERT INTO customer_contact_history VALUES (9001,101,'2023-07-10','Phone',12,'Resolved','2023-07-15','Issue fixed remotely',4.5,300,'Account Update','THR123','1',4.8,'Inbound',200,2.0,'0',0,'English','NorthAmerica','Gold');
INSERT INTO customer_contact_history VALUES (9002,102,'2023-07-12','Email',15,'Pending','2023-07-20','Awaiting documents',3.9,0,'Invoice Query','THR124','0',0.0,'Outbound',201,48.0,'1',2,'Spanish','Europe','Silver');
INSERT INTO customer_contact_history VALUES (9003,103,'2023-07-14','Chat',18,'Escalated','2023-07-25','Transferred to specialist',2.5,0,'Technical Issue','THR125','1',3.2,'Chat',202,72.0,'1',3,'French','Asia','Bronze');

-- Fuel station hydrant maintenance records
CREATE TABLE fuel_station_hydrant_maintenance
(
    RecordID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    HydrantID INTEGER,
    InspectionDate DATE,
    InspectorID INTEGER,
    PressureBar REAL,
    FlowRateLPM REAL,
    ValveStatus TEXT,
    SealIntegrity INTEGER,
    CorrosionLevel INTEGER,
    MaintenanceAction TEXT,
    PartsReplaced TEXT,
    NextInspectionDue DATE,
    Comments TEXT,
    IsCritical INTEGER,
    MaintenanceCost REAL,
    ServiceVendor TEXT,
    ServiceContractID INTEGER,
    GPSLatitude REAL,
    GPSLongitude REAL,
    TemperatureC REAL,
    HumidityPercent REAL
);

INSERT INTO fuel_station_hydrant_maintenance VALUES (1101,301,1,'2023-06-01',55,5.2,120.0,'Open',1,0,'PressureAdjustment','SealKit','2024-06-01','All good',1,150.0,'HydrantCo',7001,40.7128,-74.0060,22.0,45.0);
INSERT INTO fuel_station_hydrant_maintenance VALUES (1102,302,2,'2023-05-20',58,4.8,110.0,'Closed',0,1,'CorrosionCleaning','PipeA','2024-05-20','Minor rust observed',0,200.0,'WaterServ',7002,34.0522,-118.2437,24.5,50.0);
INSERT INTO fuel_station_hydrant_maintenance VALUES (1103,303,3,'2023-04-15',60,5.0,115.0,'Open',1,2,'ValveReplacement','ValveB','2024-04-15','Leak fixed',1,300.0,'HydrantFix',7003,41.8781,-87.6298,20.0,55.0);

-- Logistics drone fleet registry
CREATE TABLE logistics_drone_fleet
(
    DroneID INTEGER PRIMARY KEY,
    Model TEXT,
    SerialNumber TEXT,
    Manufacturer TEXT,
    PurchaseDate DATE,
    WarrantyEnd DATE,
    MaxPayloadKg REAL,
    FlightTimeMinutes INTEGER,
    BatteryHealthPercent REAL,
    LastServiceDate DATE,
    NextServiceDue DATE,
    OperatorID INTEGER,
    HomeBaseLocation TEXT,
    FirmwareVersion TEXT,
    GPSLatitude REAL,
    GPSLongitude REAL,
    AltitudeLimitMeters REAL,
    SpeedLimitKmH REAL,
    IsActive INTEGER,
    RegistrationNumber TEXT,
    InsurancePolicyID INTEGER,
    UsageHours INTEGER
);

INSERT INTO logistics_drone_fleet VALUES (2001,'AeroX1','DX1001','SkyTech','2022-01-10','2024-01-10',15.0,45,92.5,'2023-06-01','2023-12-01',101,'WarehouseA','v3.1',36.1699,-115.1398,120.0,80.0,1,'REG2001',5001,120);
INSERT INTO logistics_drone_fleet VALUES (2002,'AeroX2','DX1002','SkyTech','2022-03-15','2024-03-15',20.0,50,88.0,'2023-07-10','2024-01-10',102,'WarehouseB','v3.2',34.0522,-118.2437,130.0,85.0,1,'REG2002',5002,95);
INSERT INTO logistics_drone_fleet VALUES (2003,'AeroY1','DY3001','AeroDynamics','2023-02-20','2025-02-20',12.0,40,95.0,'2023-08-05','2024-02-05',103,'WarehouseC','v1.9',40.7128,-74.0060,110.0,75.0,0,'REG2003',5003,30);

-- Public transit vehicle assignments to routes
CREATE TABLE public_transit_vehicle_assignments
(
    AssignmentID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    RouteID INTEGER,
    DriverID INTEGER,
    AssignmentStart DATE,
    AssignmentEnd DATE,
    ShiftPattern TEXT,
    CapacitySeats INTEGER,
    AccessibilityFeatures TEXT,
    FuelType TEXT,
    ServiceStatus TEXT,
    MileageAtAssignment INTEGER,
    MaintenanceDueDate DATE,
    SupervisorID INTEGER,
    DepotLocation TEXT,
    GPSDeviceID INTEGER,
    IsPrimary INTEGER,
    Notes TEXT,
    WeeklyHours INTEGER,
    OvertimeHours INTEGER,
    OdometerReading INTEGER,
    AssignedBy TEXT
);

INSERT INTO public_transit_vehicle_assignments VALUES (3001,4001,501,601,'2023-06-01','2023-12-31','Day','40','WheelchairRamp','Diesel','Active',120000,'2024-06-01',701,'DepotNorth',8001,1,'Routine assignment',40,5,120500,'SchedulerA');
INSERT INTO public_transit_vehicle_assignments VALUES (3002,4002,502,602,'2023-07-01','2024-01-31','Night','45','ElevatorAccess','Electric','Active',80000,'2024-07-01',702,'DepotSouth',8002,0,'Night shift',45,8,80500,'SchedulerB');
INSERT INTO public_transit_vehicle_assignments VALUES (3003,4003,503,603,'2023-05-15','2023-11-15','Flex','38','None','Hybrid','Maintenance','50000','2023-12-01',703,'DepotEast',8003,0,'Mid‑term replacement',35,2,50200,'SchedulerC');

-- Parking violation records database
CREATE TABLE parking_violation_records
(
    ViolationID INTEGER PRIMARY KEY,
    ParkingLotID INTEGER,
    LicensePlate TEXT,
    ViolationDate DATE,
    ViolationTime TEXT,
    ViolationCode TEXT,
    FineAmount REAL,
    OfficerID INTEGER,
    PhotoReference TEXT,
    PaymentStatus TEXT,
    PaymentDate DATE,
    AppealFiled INTEGER,
    AppealStatus TEXT,
    VehicleMake TEXT,
    VehicleModel TEXT,
    VehicleColor TEXT,
    OwnerContactInfo TEXT,
    Zone TEXT,
    DurationMinutes INTEGER,
    AlertSent INTEGER,
    ResolutionDate DATE,
    Comments TEXT
);

INSERT INTO parking_violation_records VALUES (4001,900,'ABC1234','2023-07-01','09:15','OV001',75.0,1101,'IMG001','Unpaid',NULL,'0',NULL,'Toyota','Camry','White','john.doe@example.com','A','30','1',NULL,'No response yet');
INSERT INTO parking_violation_records VALUES (4002,901,'XYZ5678','2023-07-03','14:45','OV002',150.0,1102,'IMG002','Paid','2023-07-10','1','Pending','Honda','Civic','Black','jane.smith@example.com','B','45','1','2023-07-12','Appeal in process');
INSERT INTO parking_violation_records VALUES (4003,902,'LMN9012','2023-07-05','18:20','OV003',200.0,1103,'IMG003','Unpaid',NULL,'0',NULL,'Ford','Focus','Blue','bob.brown@example.com','C','60','0',NULL,'Awaiting payment');