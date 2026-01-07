-- Fuel card issuance details
CREATE TABLE fuel_card_issuance (
    CardID INTEGER PRIMARY KEY,
    IssueDate DATE,
    ExpirationDate DATE,
    CardType TEXT,
    IssuerBank TEXT,
    CardStatus TEXT,
    CreditLimit REAL,
    Currency TEXT,
    ActivationDate DATE,
    PinSet INTEGER,
    ContactNumber TEXT,
    EmailAddress TEXT,
    AddressLine1 TEXT,
    City TEXT,
    State TEXT,
    ZipCode TEXT,
    Country TEXT,
    BatchNumber TEXT,
    SerialNumber TEXT,
    CardDesign TEXT,
    IssuanceChannel TEXT
);

INSERT INTO fuel_card_issuance VALUES (1001,'2022-01-15','2025-01-14','Visa','BankA','Active',5000.00,'USD','2022-01-16',1,'5551234567','user1@example.com','123 Main St','Metropolis','NY','10001','USA','B001','SN1001','Blue','Online');
INSERT INTO fuel_card_issuance VALUES (1002,'2021-06-20','2024-06-19','Mastercard','BankB','Inactive',3000.00,'EUR','2021-06-21',0,'5559876543','user2@example.com','456 Oak Ave','Gotham','CA','90002','USA','B002','SN1002','Red','Branch');
INSERT INTO fuel_card_issuance VALUES (1003,'2023-03-10','2026-03-09','Amex','BankC','Active',7500.00,'GBP','2023-03-11',1,'5555555555','user3@example.com','789 Pine Rd','StarCity','TX','75003','USA','B003','SN1003','Green','Online');

-- Retail store locations
CREATE TABLE retail_store_locations (
    StoreID INTEGER PRIMARY KEY,
    StoreName TEXT,
    Region TEXT,
    City TEXT,
    State TEXT,
    Country TEXT,
    AddressLine1 TEXT,
    AddressLine2 TEXT,
    ZipCode TEXT,
    Latitude REAL,
    Longitude REAL,
    OpeningDate DATE,
    StoreFormat TEXT,
    SquareFootage INTEGER,
    ParkingSpaces INTEGER,
    ManagerID INTEGER,
    ContactNumber TEXT,
    Email TEXT,
    SalesRegionCode TEXT,
    FranchiseOwner TEXT,
    ChainAffiliation TEXT,
    StoreStatus TEXT
);

INSERT INTO retail_store_locations VALUES (2001,'FuelMart North','North','Albany','NY','USA','10 North St','Suite A','12207',42.6526,-73.7562,'2015-04-01','Supercenter',85000,120,501,'5551112222','store1@example.com','NR01','John Doe','FuelMart','Open');
INSERT INTO retail_store_locations VALUES (2002,'FuelMart South','South','Miami','FL','USA','20 South Ave','',33101,25.7617,-80.1918,'2017-09-15','Midsize',45000,80,502,'5553334444','store2@example.com','SR02','Jane Smith','FuelMart','Open');
INSERT INTO retail_store_locations VALUES (2003,'FuelMart West','West','Seattle','WA','USA','30 West Blvd','Floor 2','98101',47.6062,-122.3321,'2019-02-20','Compact',30000,50,503,'5555556666','store3@example.com','WR03','Bob Lee','FuelMart','Planned');

-- Customer behavior segments
CREATE TABLE customer_behavior_segments (
    SegmentID INTEGER PRIMARY KEY,
    SegmentName TEXT,
    AvgVisitFrequency REAL,
    AvgSpend REAL,
    PreferredFuelType TEXT,
    PreferredPaymentMethod TEXT,
    LoyaltyTier TEXT,
    PromotionResponseRate REAL,
    AgeGroup TEXT,
    IncomeBracket TEXT,
    VehicleCount INTEGER,
    HouseholdSize INTEGER,
    Urbanicity TEXT,
    MarketingChannelPreference TEXT,
    AvgTransactionCount INTEGER,
    AvgTransactionValue REAL,
    AvgFuelEfficiency REAL,
    SeasonalityScore REAL,
    RetentionScore REAL,
    CreationDate DATE
);

INSERT INTO customer_behavior_segments VALUES (1,'Frequent Travelers',12.5,85.30,'Diesel','Card','Gold',0.45,'35-44','70k-100k',2,4,'Urban','Email',30,90.5,25.4,0.8,0.92,'2020-01-01');
INSERT INTO customer_behavior_segments VALUES (2,'Budget Shoppers',4.2,45.10,'Unleaded','Cash','Silver',0.20,'25-34','30k-50k',1,2,'Suburban','SMS',12,48.3,30.1,0.5,0.75,'2021-06-15');
INSERT INTO customer_behavior_segments VALUES (3,'Eco Conscious',6.8,70.00,'E85','Card','Platinum',0.60,'45-54','100k-150k',3,5,'Urban','App',20,72.8,35.0,0.9,0.98,'2019-11-20');

-- Payment gateway error logs
CREATE TABLE payment_gateway_error_logs (
    LogID INTEGER PRIMARY KEY,
    TransactionID INTEGER,
    GatewayID INTEGER,
    ErrorCode TEXT,
    ErrorMessage TEXT,
    Timestamp DATETIME,
    RetryCount INTEGER,
    Resolved INTEGER,
    ResolutionTimeSeconds INTEGER,
    OriginIP TEXT,
    UserAgent TEXT,
    MerchantID INTEGER,
    Amount REAL,
    Currency TEXT,
    CardID INTEGER,
    CardType TEXT,
    SettlementStatus TEXT,
    BatchID INTEGER,
    ProcessedBy TEXT,
    ServerHost TEXT,
    ExceptionStack TEXT,
    IsCritical INTEGER
);

INSERT INTO payment_gateway_error_logs VALUES (3001,50001,10,'E001','Timeout','2023-07-01 10:15:00',2,1,120,'192.168.1.10','Mozilla/5.0',1001,45.67,'USD',2001,'Visa','Pending',9001,'SystemA','host1','StackTraceA',0);
INSERT INTO payment_gateway_error_logs VALUES (3002,50002,12,'E002','InvalidCard','2023-07-01 11:20:30',0,1,30,'192.168.1.11','Chrome/90.0',1002,23.45,'EUR',2002,'Mastercard','Failed',9002,'SystemB','host2','StackTraceB',1);
INSERT INTO payment_gateway_error_logs VALUES (3003,50003,11,'E003','InsufficientFunds','2023-07-02 09:05:45',1,0,NULL,'192.168.1.12','Safari/14.0',1003,78.90,'GBP',2003,'Amex','Pending',9003,'SystemC','host3','StackTraceC',1);

-- Fuel supply logistics
CREATE TABLE fuel_supply_logistics (
    ShipmentID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    OriginFacility TEXT,
    DestinationStationID INTEGER,
    DepartureDate DATE,
    ArrivalDate DATE,
    FuelType TEXT,
    VolumeLiters REAL,
    TemperatureC REAL,
    TransportMode TEXT,
    CarrierName TEXT,
    DriverID INTEGER,
    VehicleID INTEGER,
    SealNumber TEXT,
    HazardousMaterialFlag INTEGER,
    EstimatedCost REAL,
    ActualCost REAL,
    DelayMinutes INTEGER,
    Status TEXT,
    Comments TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE
);

INSERT INTO fuel_supply_logistics VALUES (4001,301,'Refinery Alpha',2001,'2023-06-20','2023-06-22','Diesel',50000,5.2,'Truck','LogisticsCo',701,801,'SN4001',1,25000.00,25500.00,30,'Delivered','No issues','PlannerA','2023-06-15','SupervisorA','2023-06-23');
INSERT INTO fuel_supply_logistics VALUES (4002,302,'Refinery Beta',2002,'2023-07-01','2023-07-03','Unleaded',75000,4.8,'Train','Railways Inc',702,802,'SN4002',1,38000.00,38500.00,0,'Delivered','On schedule','PlannerB','2023-06-25','SupervisorB','2023-07-04');
INSERT INTO fuel_supply_logistics VALUES (4003,303,'Refinery Gamma',2003,'2023-07-10','2023-07-12','E85',30000,6.0,'Truck','FastTransport',703,803,'SN4003',1,15000.00,15200.00,45,'Delayed','Weather delay','PlannerC','2023-07-05','SupervisorC','2023-07-13');

-- Mobile app push campaigns
CREATE TABLE mobile_app_push_campaigns (
    CampaignID INTEGER PRIMARY KEY,
    CampaignName TEXT,
    TargetSegmentID INTEGER,
    StartDate DATE,
    EndDate DATE,
    MessageTitle TEXT,
    MessageBody TEXT,
    Platform TEXT,
    DeliveryCount INTEGER,
    OpenRate REAL,
    ClickThroughRate REAL,
    ConversionRate REAL,
    Budget REAL,
    CostPerPush REAL,
    IsActive INTEGER,
    CreatedBy TEXT,
    CreatedDate DATE,
    ApprovedBy TEXT,
    ApprovedDate DATE,
    ABTestGroup TEXT,
    FrequencyPerUser INTEGER
);

INSERT INTO mobile_app_push_campaigns VALUES (5001,'Summer Savings',1,'2023-07-01','2023-07-15','Save Today','Get 10% off your next fill','iOS',20000,0.30,0.12,0.05,5000.00,0.25,1,'Mark','2023-06-20','Linda','2023-06-22','GroupA',2);
INSERT INTO mobile_app_push_campaigns VALUES (5002,'Winter Warmup',2,'2023-12-01','2023-12-10','Stay Warm','Free winter blend with any purchase','Android',15000,0.25,0.10,0.04,4000.00,0.27,1,'Sue','2023-11-15','Tom','2023-11-17','GroupB',1);
INSERT INTO mobile_app_push_campaigns VALUES (5003,'Eco Drive',3,'2023-09-15','2023-09-30','Go Green','Earn double loyalty points on E85','iOS',18000,0.35,0.15,0.07,6000.00,0.33,1,'Raj','2023-09-01','Anita','2023-09-03','GroupA',3);

-- Roadway maintenance schedule
CREATE TABLE roadway_maintenance_schedule (
    ScheduleID INTEGER PRIMARY KEY,
    RoadSegmentID INTEGER,
    MaintenanceType TEXT,
    StartDate DATE,
    EndDate DATE,
    ContractorID INTEGER,
    EstimatedDurationDays INTEGER,
    EstimatedCost REAL,
    TrafficImpactLevel TEXT,
    DetourRoute TEXT,
    WorkCrewCount INTEGER,
    EquipmentList TEXT,
    SafetyPlanID INTEGER,
    PermitNumber TEXT,
    Status TEXT,
    InspectionDate DATE,
    InspectorID INTEGER,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE
);

INSERT INTO roadway_maintenance_schedule VALUES (6001,101,'Pothole Repair','2023-08-01','2023-08-03',401,3,15000.00,'Medium','Route A','8','Roller,Compactor',701,'PN-8001','Scheduled','2023-07-28',801,'Replace asphalt','SchedulerA','2023-07-20','SupervisorA','2023-08-04');
INSERT INTO roadway_maintenance_schedule VALUES (6002,102,'Bridge Inspection','2023-09-10','2023-09-12',402,2,20000.00,'Low','Route B','5','Inspection Tools',702,'PN-8002','Planned','2023-09-05',802,'Structural assessment','SchedulerB','2023-08-30','SupervisorB','2023-09-13');
INSERT INTO roadway_maintenance_schedule VALUES (6003,103,'Line Marking','2023-10-05','2023-10-06',403,2,8000.00,'Low','Route C','4','Paint Machine',703,'PN-8003','Completed','2023-10-04',803,'Repaint lane dividers','SchedulerC','2023-09-25','SupervisorC','2023-10-07');

-- Electric grid capacity forecast
CREATE TABLE electric_grid_capacity_forecast (
    ForecastID INTEGER PRIMARY KEY,
    RegionCode TEXT,
    ForecastYear INTEGER,
    ForecastMonth INTEGER,
    ProjectedCapacityMW REAL,
    ProjectedDemandMW REAL,
    NetExchangeMW REAL,
    RenewableSharePercent REAL,
    PeakLoadMW REAL,
    AvgLoadMW REAL,
    ReserveMarginPercent REAL,
    ForecastMethod TEXT,
    ConfidenceLevel REAL,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    Scenario TEXT,
    Notes TEXT,
    DataSource TEXT,
    ValidationStatus TEXT
);

INSERT INTO electric_grid_capacity_forecast VALUES (7001,'NE01',2024,7,12000.00,11500.00,500.00,35.0,9500.00,7500.00,8.7,'Statistical','0.90','AnalystA','2023-06-01','AnalystB','2023-06-15','Base','Quarterly update','SCADA','Validated');
INSERT INTO electric_grid_capacity_forecast VALUES (7002,'SW02',2024,7,15000.00,14800.00,200.00,42.0,14000.00,11000.00,5.0,'MachineLearning','0.95','AnalystC','2023-06-02','AnalystD','2023-06-16','HighRenewable','Model refinement','ForecastEngine','Validated');
INSERT INTO electric_grid_capacity_forecast VALUES (7003,'MW03',2024,7,9000.00,8800.00,100.00,28.5,8500.00,6500.00,6.5,'Hybrid','0.92','AnalystE','2023-06-03','AnalystF','2023-06-17','ScenarioA','Seasonal adjustment','MarketData','Pending');

-- Station equipment calibration
CREATE TABLE station_equipment_calibration (
    CalibrationID INTEGER PRIMARY KEY,
    StationID INTEGER,
    EquipmentID INTEGER,
    EquipmentType TEXT,
    CalibrationDate DATE,
    CalibrationDueDate DATE,
    TechnicianID INTEGER,
    CalibrationResult TEXT,
    AdjustmentsMade TEXT,
    CertificateNumber TEXT,
    ValidThroughDate DATE,
    CalibrationMethod TEXT,
    CalibrationDevice TEXT,
    CalibrationNotes TEXT,
    IsCompliant INTEGER,
    NextCalibrationIntervalDays INTEGER,
    RecordedBy TEXT,
    RecordedDate DATE,
    Status TEXT,
    Comments TEXT
);

INSERT INTO station_equipment_calibration VALUES (8001,2001,901,'Dispenser','2023-05-20','2024-05-20',601,'Pass','ZeroAdjustment','CERT-8001','2024-05-20','Standard','CalibratorX','All readings within tolerance',1,365,'TechA','2023-05-21','Completed','No comments');
INSERT INTO station_equipment_calibration VALUES (8002,2002,902,'ATM','2023-04-15','2024-04-15',602,'Fail','ReplacedSensor','CERT-8002','2024-04-15','Advanced','CalibratorY','Sensor drift detected',0,365,'TechB','2023-04-16','Rework','Sensor replaced');
INSERT INTO station_equipment_calibration VALUES (8003,2003,903,'CCTV','2023-06-10','2024-06-10',603,'Pass','LensCleaned','CERT-8003','2024-06-10','Standard','CalibratorZ','No issues',1,365,'TechC','2023-06-11','Completed','Routine check');

-- Regional fuel price comparison
CREATE TABLE regional_fuel_price_comparison (
    ComparisonID INTEGER PRIMARY KEY,
    Region TEXT,
    FuelType TEXT,
    PriceDate DATE,
    AvgPricePerLiter REAL,
    MedianPricePerLiter REAL,
    MinPricePerLiter REAL,
    MaxPricePerLiter REAL,
    PriceStdDev REAL,
    NumberOfStations INTEGER,
    CompetitorAvgPrice REAL,
    CompetitorMedianPrice REAL,
    PriceTrend TEXT,
    WeekOfYear INTEGER,
    Month INTEGER,
    Year INTEGER,
    DataSource TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    ValidationStatus TEXT,
    Comments TEXT
);

INSERT INTO regional_fuel_price_comparison VALUES (9001,'Midwest','Diesel','2023-07-01',1.12,1.10,0.98,1.30,0.09,150,1.15,1.13,'Rising',26,7,2023,'GovData','AnalystG','2023-07-02','Validated','Seasonal increase');
INSERT INTO regional_fuel_price_comparison VALUES (9002,'Southwest','Unleaded','2023-07-01',0.95,0.94,0.80,1.10,0.07,200,0.97,0.96,'Stable',26,7,2023,'GovData','AnalystH','2023-07-02','Validated','Stable market');
INSERT INTO regional_fuel_price_comparison VALUES (9003,'Northeast','E85','2023-07-01',0.85,0.84,0.70,0.95,0.06,120,0.88,0.87,'Falling',26,7,2023,'GovData','AnalystI','2023-07-02','Pending','Impact of subsidies');