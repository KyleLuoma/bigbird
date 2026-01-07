-- Bicycle share stations information
CREATE TABLE bicycle_share_stations
(
    StationID INTEGER PRIMARY KEY,
    Name TEXT,
    Latitude REAL,
    Longitude REAL,
    Capacity INTEGER,
    InstallationDate DATE,
    Operator TEXT,
    Status TEXT,
    DockCount INTEGER,
    BikeCount INTEGER,
    LastMaintenanceDate DATE,
    MaintenanceVendor TEXT,
    Region TEXT,
    CityZone TEXT,
    AddressLine1 TEXT,
    AddressLine2 TEXT,
    PostalCode TEXT,
    ContactPhone TEXT,
    Email TEXT,
    GeoHash TEXT
);

INSERT INTO bicycle_share_stations VALUES (1,'Downtown Hub',40.7128,-74.0060,30,'2020-05-10','BikeCo','Active',30,12,'2023-02-15','RapidMaint','North','A1','100 Main St','', '10001','5551234567','info@bikeco.com','dr5ru7');
INSERT INTO bicycle_share_stations VALUES (2,'Uptown Loop',40.7831,-73.9712,25,'2019-09-20','CycleNet','Active',25,20,'2023-03-01','CycleService','North','B3','200 Broadway','Suite 5','10024','5559876543','support@cyclenet.com','dr5ru8');
INSERT INTO bicycle_share_stations VALUES (3,'Eastside Plaza',40.7306,-73.9352,20,'2021-01-15','BikeCo','Maintenance',20,5,'2023-01-20','RapidMaint','East','C2','300 East St','', '10009','5555551212','contact@bikeco.com','dr5ru9');

-- City parking permits data
CREATE TABLE city_parking_permits
(
    PermitID INTEGER PRIMARY KEY,
    PermitNumber TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    VehicleMake TEXT,
    VehicleModel TEXT,
    VehicleYear INTEGER,
    LicensePlate TEXT,
    OwnerName TEXT,
    OwnerAddress TEXT,
    OwnerCity TEXT,
    OwnerState TEXT,
    OwnerZip TEXT,
    PermitType TEXT,
    PermitZone TEXT,
    FeeAmount REAL,
    PaymentStatus TEXT,
    IssuingOfficer TEXT,
    GPSLatitude REAL,
    GPSLongitude REAL
);

INSERT INTO city_parking_permits VALUES (101,'PK001','2022-06-01','2023-06-01','Toyota','Camry',2020,'ABC123','John Doe','123 Oak St','Metropolis','NY','10001','Resident','Zone1',120.00,'Paid','OfficerSmith',40.7128,-74.0060);
INSERT INTO city_parking_permits VALUES (102,'PK002','2022-07-15','2023-07-15','Honda','Civic',2019,'XYZ789','Jane Smith','456 Pine Ave','Metropolis','NY','10002','Visitor','Zone2',80.00,'Pending','OfficerLee',40.7130,-74.0055);
INSERT INTO city_parking_permits VALUES (103,'PK003','2022-08-20','2024-08-20','Ford','Explorer',2021,'LMN456','Acme Corp','789 Maple Blvd','Metropolis','NY','10003','Commercial','Zone3',250.00,'Paid','OfficerBrown',40.7140,-74.0050);

-- Public event ticketing records
CREATE TABLE public_event_ticketing
(
    TicketID INTEGER PRIMARY KEY,
    EventID INTEGER,
    EventName TEXT,
    EventDate DATE,
    VenueName TEXT,
    SeatSection TEXT,
    SeatRow TEXT,
    SeatNumber TEXT,
    TicketPrice REAL,
    PurchaseDate DATE,
    PurchaserFirstName TEXT,
    PurchaserLastName TEXT,
    PurchaserEmail TEXT,
    PurchaserPhone TEXT,
    TicketStatus TEXT,
    Barcode TEXT,
    GateNumber TEXT,
    PaymentMethod TEXT,
    DiscountCode TEXT,
    LoyaltyPointsEarned INTEGER
);

INSERT INTO public_event_ticketing VALUES (5001,2001,'Summer Music Fest','2023-07-20','Central Park Arena','A','12','15',150.00,'2023-06-01','Emily','Clark','emily.clark@example.com','5551112222','Confirmed','BC123456','G1','CreditCard','SUMMER10',150);
INSERT INTO public_event_ticketing VALUES (5002,2002,'Tech Conference 2023','2023-09-05','Convention Center Hall B','B','5','22',300.00,'2023-07-15','Michael','Jordan','michael.jordan@example.com','5553334444','Confirmed','BC223344','G2','PayPal','TECH20',300);
INSERT INTO public_event_ticketing VALUES (5003,2003,'Food Expo','2023-10-12','Exhibit Hall C','C','9','7',75.00,'2023-08-20','Sarah','Lee','sarah.lee@example.com','5555556666','Pending','BC334455','G3','DebitCard','FOOD5',75);

-- Urban noise monitoring sensors
CREATE TABLE urban_noise_monitoring
(
    SensorID INTEGER PRIMARY KEY,
    LocationName TEXT,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    LastCalibrated DATE,
    NoiseLevelAvg REAL,
    NoiseLevelPeak REAL,
    MeasurementUnit TEXT,
    SensorStatus TEXT,
    FirmwareVersion TEXT,
    BatteryLevel REAL,
    SignalStrength REAL,
    DataUploadInterval INTEGER,
    NoiseThreshold REAL,
    AlertSent TEXT,
    OwnerCompany TEXT,
    MaintenanceContractID INTEGER,
    CalibrationDueDate DATE,
    Zone TEXT
);

INSERT INTO urban_noise_monitoring VALUES (9001,'5th Ave & 34th St',40.7484,-73.9857,'2021-04-10','2023-01-15',55.2,78.5,'dB','Active','v1.3',87.5, -65,15,80.0,'No','CitySensorsInc',3001,'2023-12-01','Midtown');
INSERT INTO urban_noise_monitoring VALUES (9002,'Broadway & 14th St',40.7340,-73.9905,'2020-09-20','2022-11-05',62.8,90.1,'dB','Active','v1.2',76.3,-70,10,85.0,'Yes','UrbanTech',3002,'2023-11-15','Downtown');
INSERT INTO urban_noise_monitoring VALUES (9003,'Lexington Ave & 59th St',40.7625,-73.9679,'2022-02-01','2023-02-20',48.5,70.0,'dB','Maintenance','v1.4',92.0,-60,20,78.0,'No','CitySensorsInc',3003,'2024-01-10','Uptown');

-- Electric grid substations
CREATE TABLE electric_grid_substations
(
    SubstationID INTEGER PRIMARY KEY,
    SubstationName TEXT,
    VoltageLevel REAL,
    TransformerCount INTEGER,
    CapacityMW REAL,
    Latitude REAL,
    Longitude REAL,
    ConstructionDate DATE,
    Operator TEXT,
    Status TEXT,
    PrimaryFuelType TEXT,
    MaintenanceCompany TEXT,
    LastInspectionDate DATE,
    NextInspectionDue DATE,
    SubstationType TEXT,
    Region TEXT,
    City TEXT,
    PostalCode TEXT,
    ContactPhone TEXT,
    Email TEXT
);

INSERT INTO electric_grid_substations VALUES (4001,'North Ridge Substation',345.0,4,120.5,40.7000,-74.0100,'1995-06-15','PowerCorp','Operational','Coal','MidwestMaint','2022-12-01','2024-12-01','Step-Up','North','NewYork','10002','5557778888','northridge@powercorp.com');
INSERT INTO electric_grid_substations VALUES (4002,'East Valley Substation',230.0,3,80.0,40.7200,-73.9500,'2000-09-20','EnergyGrid','Operational','NaturalGas','EastSideMaint','2023-03-10','2025-03-10','Step-Down','East','NewYork','10003','5558889999','eastvalley@energygrid.com');
INSERT INTO electric_grid_substations VALUES (4003,'South Harbor Substation',138.0,2,45.0,40.6800,-74.0500,'2010-11-05','UtilityCo','Planned','Hydro','SouthMaint','2021-07-15','2023-07-15','Distribution','South','NewYork','10004','5559990000','southharbor@utilityco.com');

-- Water supply network pipes
CREATE TABLE water_supply_network
(
    PipeID INTEGER PRIMARY KEY,
    PipeDiameterMM INTEGER,
    Material TEXT,
    LengthKM REAL,
    StartNodeID INTEGER,
    EndNodeID INTEGER,
    InstallationYear INTEGER,
    PressureBar REAL,
    FlowRateLps REAL,
    Status TEXT,
    InspectionDate DATE,
    InspectorName TEXT,
    Region TEXT,
    City TEXT,
    MaintenanceSchedule TEXT,
    LastRepairDate DATE,
    RepairCost REAL,
    OwnerAgency TEXT,
    GPSStartLat REAL,
    GPSStartLong REAL
);

INSERT INTO water_supply_network VALUES (20001,300,'DuctileIron',12.5,101,102,1998,5.5,120.0,'Active','2022-10-12','InspectorGale','North','NewYork','Annual','2023-02-20',1500.00,'WaterDept','40.7125','-74.0059');
INSERT INTO water_supply_network VALUES (20002,250,'PVC',8.3,103,104,2005,4.2,95.0,'Active','2023-01-08','InspectorLee','East','NewYork','Biannual','2023-03-15',800.00,'WaterDept','40.7300','-73.9950');
INSERT INTO water_supply_network VALUES (20003,400,'Concrete',20.0,105,106,1990,6.0,150.0,'UnderRepair','2023-04-01','InspectorKim','South','NewYork','Quarterly','2023-04-10',2500.00,'WaterDept','40.6800','-74.0200');

-- Waste collection routes
CREATE TABLE waste_collection_routes
(
    RouteID INTEGER PRIMARY KEY,
    RouteName TEXT,
    Zone TEXT,
    VehicleID INTEGER,
    DriverID INTEGER,
    StartTime TEXT,
    EndTime TEXT,
    TotalDistanceKM REAL,
    NumberOfStops INTEGER,
    CollectionFrequency TEXT,
    LastRunDate DATE,
    NextScheduledRun DATE,
    SupervisorName TEXT,
    WasteType TEXT,
    BinCapacityLiters INTEGER,
    AvgLoadWeightKG REAL,
    FuelConsumptionL REAL,
    EmissionCO2kg REAL,
    RouteStatus TEXT,
    GPSRouteHash TEXT
);

INSERT INTO waste_collection_routes VALUES (301,'RouteA','North',5001,7001,'06:00','08:30',25.4,120,'Weekly','2023-03-20','2023-03-27','John Manager','General',1200,850.0,45.0,120.0,'Active','ab12cd34');
INSERT INTO waste_collection_routes VALUES (302,'RouteB','East',5002,7002,'07:00','09:45',30.1,140,'Biweekly','2023-03-15','2023-04-01','Lisa Supervisor','Recyclable',1100,780.0,50.0,130.0,'Active','ef56gh78');
INSERT INTO waste_collection_routes VALUES (303,'RouteC','South',5003,7003,'05:30','08:00',22.8,100,'Weekly','2023-03-22','2023-03-29','Mike Overseer','Organic',1300,900.0,42.0,112.0,'Planned','ij90kl12');

-- Municipal building permits
CREATE TABLE municipal_building_permits
(
    PermitID INTEGER PRIMARY KEY,
    PermitNumber TEXT,
    ApplicantName TEXT,
    ApplicantAddress TEXT,
    ProjectDescription TEXT,
    PermitType TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    EstimatedCost REAL,
    ContractorName TEXT,
    ContractorLicense TEXT,
    ZoningArea TEXT,
    LotSizeSqft REAL,
    FloorsCount INTEGER,
    HeightFeet REAL,
    Status TEXT,
    InspectorAssigned TEXT,
    InspectionDate DATE,
    ViolationNotes TEXT,
    FeePaid REAL
);

INSERT INTO municipal_building_permits VALUES (8001,'BP1001','Acme Developers','123 Elm St','Mixed use residential-commercial','Construction','2023-01-15','2025-01-15',2500000.00,'BuildRight LLC','LIC12345','Commercial','50000',10,120.0,'Issued','InspectorSmith','2023-02-20','None',5000.00);
INSERT INTO municipal_building_permits VALUES (8002,'BP1002','Green Homes','456 Oak Ave','Single family residence','Renovation','2023-02-01','2024-02-01',350000.00,'Renova Corp','LIC67890','Residential','2500',2,25.0,'Pending','InspectorLee','2023-03-05','Minor code deviation',800.00);
INSERT INTO municipal_building_permits VALUES (8003,'BP1003','City Library Board','789 Pine Rd','Public library expansion','Construction','2023-03-10','2026-03-10',4500000.00,'Civic Builders','LIC54321','Public','120000',3,40.0,'Issued','InspectorKim','2023-04-01','None',10000.00);

-- Smart lighting control units
CREATE TABLE smart_lighting_controls
(
    LightID INTEGER PRIMARY KEY,
    LocationName TEXT,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    LightModel TEXT,
    Wattage REAL,
    Lumens INTEGER,
    ColorTempK INTEGER,
    ControlProtocol TEXT,
    FirmwareVersion TEXT,
    PowerStatus TEXT,
    LastMaintenance DATE,
    MaintenanceProvider TEXT,
    EnergyConsumptionKWh REAL,
    DimmingLevelPercent INTEGER,
    MotionSensorEnabled TEXT,
    ScheduleProfile TEXT,
    AlertStatus TEXT,
    Zone TEXT
);

INSERT INTO smart_lighting_controls VALUES (6001,'Main St & 1st Ave',40.7150,-74.0010,'2021-07-10','LumenX200',120.0,20000,4000,'Zigbee','v2.1','On','2023-02-10','LightCo','3500.0',80,'Yes','WeekdayEvening','None','Downtown');
INSERT INTO smart_lighting_controls VALUES (6002,'Broadway & 5th St',40.7205,-73.9955,'2020-10-22','LumenX150',100.0,18000,3500,'Z-Wave','v2.0','On','2023-01-15','BrightLights','2800.0',70,'Yes','WeekendNight','LowBattery','Midtown');
INSERT INTO smart_lighting_controls VALUES (6003,'Elm St Park',40.7300,-73.9850,'2022-03-05','LumenX100',80.0,15000,3000,'WiFi','v1.9','Off','2023-03-01','EcoLight','1200.0',60,'No','AlwaysOn','None','Uptown');

-- Community garden plots
CREATE TABLE community_garden_plots
(
    PlotID INTEGER PRIMARY KEY,
    GardenName TEXT,
    PlotNumber TEXT,
    SizeSqft REAL,
    SoilType TEXT,
    SunExposure TEXT,
    AssignedTo TEXT,
    AssignmentDate DATE,
    LeaseEndDate DATE,
    WaterAccess TEXT,
    CompostBinAvailable TEXT,
    MulchType TEXT,
    HarvestYieldKg REAL,
    MaintenanceFrequency TEXT,
    VolunteerGroup TEXT,
    PlotStatus TEXT,
    LastInspection DATE,
    InspectorName TEXT,
    Notes TEXT,
    GPSLatitude REAL,
    GPSLongitude REAL
);

INSERT INTO community_garden_plots VALUES (90001,'Green Thumb Garden','A1',250.0,'Loam','Full','Alice Johnson','2022-04-01','2023-04-01','Tap','Yes','Straw',45.0,'Monthly','NeighborhoodClub','Active','2023-02-20','InspectorMiller','Good condition',40.7120,-74.0100);
INSERT INTO community_garden_plots VALUES (90002,'Green Thumb Garden','B3',300.0,'Sandy','Partial','Bob Lee','2022-05-15','2023-05-15','Well','No','Wood Chips',60.0,'Biweekly','GardenFriends','Active','2023-03-05','InspectorMiller','Needs extra irrigation',40.7135,-74.0090);
INSERT INTO community_garden_plots VALUES (90003,'Sunrise Community Garden','C7',200.0,'Clay','Full','Carol Smith','2022-06-10','2023-06-10','Tap','Yes','Compost',35.0,'Monthly','SunriseVolunteers','Vacant','2023-01-30','InspectorMiller','Awaiting new assignment',40.7140,-74.0080);