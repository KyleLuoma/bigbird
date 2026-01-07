-- Equipment Calibration Records
CREATE TABLE equipment_calibration_records
(
    RecordID INTEGER PRIMARY KEY AUTOINCREMENT,
    EquipmentID INTEGER,
    CalibrationDate DATE,
    CalibrationDueDate DATE,
    TechnicianID INTEGER,
    CalibrationType TEXT,
    CalibrationResult TEXT,
    MeasurementUnit TEXT,
    UpperTolerance REAL,
    LowerTolerance REAL,
    MeasuredValue REAL,
    CalibrationLocation TEXT,
    Shift TEXT,
    Department TEXT,
    CalibrationNotes TEXT,
    Certified INTEGER,
    CalibrationCertificateID TEXT,
    CalibrationMethod TEXT,
    CalibrationStandard TEXT,
    NextCalibrationIntervalDays INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO equipment_calibration_records VALUES
(1,101,'2023-01-15','2024-01-15',12,'Full','Pass','psi',150.0,50.0,100.5,'StationA','Day','Maintenance','All good',1,'CERT123','Manual','ISO9001',365,'2023-01-15 08:00:00','2023-01-15 09:00:00');

INSERT INTO equipment_calibration_records VALUES
(2,102,'2023-02-20','2024-02-20',15,'Partial','Fail','bar',12.0,8.0,9.5,'StationB','Night','Operations','Recalibrate needed',0,'CERT124','Automated','ISO14001',180,'2023-02-20 14:30:00','2023-02-20 15:00:00');

INSERT INTO equipment_calibration_records VALUES
(3,103,'2023-03-10','2024-03-10',9,'Full','Pass','psi',160.0,55.0,110.2,'StationC','Evening','Quality','Within limits',1,'CERT125','Manual','ISO9001',365,'2023-03-10 10:20:00','2023-03-10 10:45:00');


-- Employee Performance Reviews
CREATE TABLE employee_performance_reviews
(
    ReviewID INTEGER PRIMARY KEY AUTOINCREMENT,
    EmployeeID INTEGER,
    ReviewPeriodStart DATE,
    ReviewPeriodEnd DATE,
    ReviewerID INTEGER,
    OverallScore REAL,
    JobKnowledgeScore REAL,
    CommunicationScore REAL,
    TeamworkScore REAL,
    InitiativeScore REAL,
    DependabilityScore REAL,
    AdaptabilityScore REAL,
    LeadershipScore REAL,
    GoalsMet INTEGER,
    GoalsPlanned INTEGER,
    Comments TEXT,
    PromotionRecommended INTEGER,
    SalaryIncreasePercent REAL,
    ReviewDate DATE,
    Department TEXT,
    PositionTitle TEXT,
    CreatedAt DATETIME
);

INSERT INTO employee_performance_reviews VALUES
(1,2001,'2022-01-01','2022-12-31',301,4.5,4.7,4.6,4.8,4.2,4.9,4.3,4.5,5,5,'Exceeds expectations',1,5.0,'2023-01-10','Sales','Senior Sales Associate','2023-01-10 09:00:00');

INSERT INTO employee_performance_reviews VALUES
(2,2002,'2022-01-01','2022-12-31',302,3.8,4.0,3.9,4.1,3.5,4.2,3.7,3.8,4,5,'Meets expectations',0,2.5,'2023-01-12','Operations','Logistics Coordinator','2023-01-12 10:15:00');

INSERT INTO employee_performance_reviews VALUES
(3,2003,'2022-01-01','2022-12-31',303,4.2,4.3,4.1,4.4,4.0,4.5,4.2,4.3,5,5,'Strong performer',1,4.0,'2023-01-15','Engineering','Mechanical Engineer','2023-01-15 11:30:00');


-- Supplier Delivery Schedules
CREATE TABLE supplier_delivery_schedules
(
    ScheduleID INTEGER PRIMARY KEY AUTOINCREMENT,
    SupplierID INTEGER,
    ProductID INTEGER,
    DeliveryWindowStart DATE,
    DeliveryWindowEnd DATE,
    ExpectedQuantity INTEGER,
    Unit TEXT,
    DeliveryMode TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ReceivingDock TEXT,
    PriorityLevel INTEGER,
    ShipmentReference TEXT,
    Status TEXT,
    CreatedBy INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    EstimatedCost REAL,
    FreightCarrier TEXT,
    FreightCost REAL,
    Notes TEXT,
    IsRecurring INTEGER
);

INSERT INTO supplier_delivery_schedules VALUES
(1,4001,5001,'2023-04-01','2023-04-03',2000,'Liters','Truck','John Doe','555-0101','DockA',1,'REF123','Scheduled',101,'2023-03-20 08:00:00','2023-03-21 09:00:00',15000.0,'CarrierX',500.0,'Urgent delivery',0);

INSERT INTO supplier_delivery_schedules VALUES
(2,4002,5002,'2023-04-05','2023-04-07',1500,'Units','Rail','Jane Smith','555-0102','DockB',2,'REF124','Pending',102,'2023-03-22 10:30:00','2023-03-22 11:00:00',12000.0,'CarrierY',400.0,'Standard priority',1);

INSERT INTO supplier_delivery_schedules VALUES
(3,4003,5003,'2023-04-10','2023-04-12',3000,'Barrels','Ship','Mike Lee','555-0103','DockC',1,'REF125','Confirmed',103,'2023-03-25 14:45:00','2023-03-25 15:30:00',20000.0,'CarrierZ',800.0,'Include temperature control',0);


-- Public Art Event Financials
CREATE TABLE public_art_event_financials
(
    EventID INTEGER PRIMARY KEY AUTOINCREMENT,
    ArtProjectID INTEGER,
    EventName TEXT,
    StartDate DATE,
    EndDate DATE,
    SponsorID INTEGER,
    BudgetAllocated REAL,
    ExpenditureRealized REAL,
    RevenueGenerated REAL,
    TicketPrice REAL,
    TicketsSold INTEGER,
    Venue TEXT,
    City TEXT,
    State TEXT,
    Country TEXT,
    OrganizerContact TEXT,
    OrganizerPhone TEXT,
    FundingSource TEXT,
    GrantAmount REAL,
    MiscExpenses REAL,
    ProfitLoss REAL,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO public_art_event_financials VALUES
(1,6001,'River Lights','2023-05-10','2023-05-12',7001,50000.0,42000.0,75000.0,25.0,3000,'Riverfront Park','Springfield','IL','USA','Alice Brown','555-0201','Corporate','20000.0','3000.0',33000.0,'2023-04-01 09:00:00','2023-04-15 12:00:00');

INSERT INTO public_art_event_financials VALUES
(2,6002,'Sky Murals','2023-06-01','2023-06-03',7002,80000.0,85000.0,0.0,0.0,0,'City Hall Plaza','Metropolis','NY','USA','Bob Green','555-0202','Grant','50000.0','5000.0',-5000.0,'2023-05-01 10:15:00','2023-05-20 14:30:00');

INSERT INTO public_art_event_financials VALUES
(3,6003,'Night Sculptures','2023-07-15','2023-07-17',7003,60000.0,58000.0,90000.0,30.0,2500,'Downtown Amphitheater','Gotham','CA','USA','Carol White','555-0203','Corporate','15000.0','2000.0',17000.0,'2023-06-01 11:45:00','2023-06-25 13:20:00');


-- Digital Wallet Transaction Logs
CREATE TABLE digital_wallet_transaction_logs
(
    LogID INTEGER PRIMARY KEY AUTOINCREMENT,
    WalletID INTEGER,
    UserID INTEGER,
    TransactionID INTEGER,
    TransactionDate DATE,
    TransactionTime TEXT,
    Amount REAL,
    Currency TEXT,
    MerchantID INTEGER,
    MerchantCategory TEXT,
    TransactionType TEXT,
    Status TEXT,
    DeviceID TEXT,
    IPAddress TEXT,
    GeoLocation TEXT,
    AuthMethod TEXT,
    FeeAmount REAL,
    RefundFlag INTEGER,
    OriginalTransactionID INTEGER,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO digital_wallet_transaction_logs VALUES
(1,8001,9001,10001,'2023-04-15','13:45:22',45.75,'USD',1101,'Grocery','Purchase','Completed','DEV001','192.168.1.10','40.7128,-74.0060','PIN',0.75,0,0,'No issues','2023-04-15 14:00:00','2023-04-15 14:00:30');

INSERT INTO digital_wallet_transaction_logs VALUES
(2,8002,9002,10002,'2023-04-16','09:12:05',120.00,'EUR',1102,'Travel','Purchase','Pending','DEV002','192.168.1.11','48.8566,2.3522','Biometric',1.20,0,0,'Awaiting merchant settlement','2023-04-16 09:30:00','2023-04-16 09:30:45');

INSERT INTO digital_wallet_transaction_logs VALUES
(3,8003,9003,10003,'2023-04-17','18:20:40',15.00,'USD',1103,'Entertainment','Refund','Completed','DEV003','192.168.1.12','34.0522,-118.2437','Password',0.30,1,10001,'Partial refund','2023-04-17 18:45:00','2023-04-17 18:45:10');


-- Hydroelectric Plant Operational Logs
CREATE TABLE hydroelectric_plant_operational_logs
(
    LogID INTEGER PRIMARY KEY AUTOINCREMENT,
    PlantID INTEGER,
    LogDate DATE,
    Shift TEXT,
    TurbineID INTEGER,
    PowerGeneratedMWh REAL,
    WaterFlowCubicMetersPerSec REAL,
    ReservoirLevelMeters REAL,
    InletGatePosition INTEGER,
    OutletGatePosition INTEGER,
    MaintenanceFlag INTEGER,
    FaultCode TEXT,
    OperatorID INTEGER,
    WeatherCondition TEXT,
    TemperatureCelsius REAL,
    Remarks TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    EnergyPricePerMWh REAL,
    RevenueGenerated REAL,
    DowntimeMinutes INTEGER,
    NetEfficiencyPercent REAL
);

INSERT INTO hydroelectric_plant_operational_logs VALUES
(1,9001,'2023-04-01','Day',1,250.5,300.0,150.0,80,70,0,'',501,'Clear',22.5,'Normal operation','2023-04-01 06:00:00','2023-04-01 06:30:00',55.0,13762.5,0,92.0);

INSERT INTO hydroelectric_plant_operational_logs VALUES
(2,9002,'2023-04-01','Night',2,180.0,250.0,140.0,75,65,1,'F001',502,'Rain',18.0,'Minor valve issue','2023-04-01 22:00:00','2023-04-01 22:15:00',55.0,9900.0,30,88.5);

INSERT INTO hydroelectric_plant_operational_logs VALUES
(3,9003,'2023-04-02','Evening',3,210.3,280.0,148.0,78,68,0,'',503,'Cloudy',20.0,'Routine check','2023-04-02 18:00:00','2023-04-02 18:20:00',55.0,11566.5,10,90.2);


-- Vehicle OEM Service Contracts
CREATE TABLE vehicle_oem_service_contracts
(
    ContractID INTEGER PRIMARY KEY AUTOINCREMENT,
    VehicleID INTEGER,
    OEMID INTEGER,
    ContractStartDate DATE,
    ContractEndDate DATE,
    ServiceLevel TEXT,
    CoveredComponents TEXT,
    ExcludedComponents TEXT,
    AnnualFee REAL,
    MileageLimit INTEGER,
    OvertimeRate REAL,
    RenewalOption INTEGER,
    GracePeriodDays INTEGER,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ServiceCenterID INTEGER,
    SLAResponseHours INTEGER,
    PenaltyClause TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Currency TEXT,
    PaymentTermDays INTEGER,
    Status TEXT
);

INSERT INTO vehicle_oem_service_contracts VALUES
(1,10001,2001,'2022-01-01','2024-12-31','Gold','Engine,Transmission','Tires','15000.0',50000,150.0,1,30,'Sam Wilson','555-0301',301,24,'Late penalty 5%','2022-01-01 09:00:00','2022-01-01 09:05:00','USD',30,'Active');

INSERT INTO vehicle_oem_service_contracts VALUES
(2,10002,2002,'2023-03-15','2025-03-14','Silver','Brakes,Electrical','Battery','12000.0',40000,120.0,0,45,'Dana Lee','555-0302',302,48,'Late penalty 3%','2023-03-15 10:30:00','2023-03-15 10:35:00','EUR',45,'Pending');

INSERT INTO vehicle_oem_service_contracts VALUES
(3,10003,2003,'2021-07-01','2023-06-30','Platinum','Full Coverage','None','20000.0',60000,200.0,1,15,'Alex Kim','555-0303',303,12,'Late penalty 7%','2021-07-01 08:45:00','2021-07-01 08:50:00','GBP',15,'Expired');


-- Station Utility Consumption Forecasts
CREATE TABLE station_utility_consumption_forecasts
(
    ForecastID INTEGER PRIMARY KEY AUTOINCREMENT,
    StationID INTEGER,
    ForecastMonth TEXT,
    ElectricityKWh REAL,
    WaterLiters REAL,
    GasCubicMeters REAL,
    SolarGenerationKWh REAL,
    WindGenerationKWh REAL,
    ForecastCreatedDate DATE,
    CreatedBy INTEGER,
    ConfidenceLevel REAL,
    Scenario TEXT,
    Notes TEXT,
    UpdatedAt DATETIME,
    VerifiedBy INTEGER,
    VerificationDate DATE,
    EstimatedCostUSD REAL,
    CO2EmissionKg REAL,
    PeakDemandKW REAL,
    DemandChargeUSD REAL,
    FixedChargeUSD REAL,
    TotalUtilityCostUSD REAL,
    CreatedAt DATETIME
);

INSERT INTO station_utility_consumption_forecasts VALUES
(1,1101,'2023-06',12000.0,50000.0,3000.0,1500.0,0.0,'2023-05-20',401,0.9,'Base','Initial forecast','2023-05-21 08:00:00',501,'2023-05-22',8000.0,2500.0,180.0,2000.0,500.0,10500.0,'2023-05-20 07:30:00');

INSERT INTO station_utility_consumption_forecasts VALUES
(2,1102,'2023-07',13000.0,52000.0,3200.0,1600.0,0.0,'2023-06-20',402,0.85,'Growth','Adjusted for new store','2023-06-21 09:15:00',502,'2023-06-22',8500.0,2700.0,190.0,2100.0,550.0,11200.0,'2023-06-20 08:45:00');

INSERT INTO station_utility_consumption_forecasts VALUES
(3,1103,'2023-08',12500.0,51000.0,3100.0,1550.0,0.0,'2023-07-20',403,0.88,'Seasonal','Summer peak expected','2023-07-21 10:30:00',503,'2023-07-22',8200.0,2600.0,185.0,2050.0,525.0,10975.0,'2023-07-20 09:00:00');


-- Corporate Social Media Metrics
CREATE TABLE corporate_social_media_metrics
(
    MetricID INTEGER PRIMARY KEY AUTOINCREMENT,
    Platform TEXT,
    AccountID TEXT,
    Date DATE,
    Followers INTEGER,
    Impressions INTEGER,
    Reach INTEGER,
    Engagements INTEGER,
    ClickThroughRate REAL,
    VideoViews INTEGER,
    Shares INTEGER,
    Comments INTEGER,
    Likes INTEGER,
    Mentions INTEGER,
    HashtagUsage INTEGER,
    SentimentScore REAL,
    CampaignID INTEGER,
    PaidSpendUSD REAL,
    OrganicReach INTEGER,
    PaidReach INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Notes TEXT,
    AudienceDemographic TEXT
);

INSERT INTO corporate_social_media_metrics VALUES
(1,'Twitter','corp_tw','2023-04-30',15000,200000,180000,5000,0.025,3000,400,250,4500,120,80,0.78,101,2000.0,150000,50000,'2023-04-30 12:00:00','2023-04-30 12:15:00','Quarterly report','18-34 M');

INSERT INTO corporate_social_media_metrics VALUES
(2,'LinkedIn','corp_li','2023-04-30',12000,150000,130000,4000,0.030,0,350,300,3800,200,60,0.82,102,1500.0,120000,30000,'2023-04-30 13:00:00','2023-04-30 13:20:00','Professional outreach','25-45 M');

INSERT INTO corporate_social_media_metrics VALUES
(3,'Instagram','corp_ig','2023-04-30',18000,250000,220000,7000,0.028,8000,600,500,6800,150,100,0.80,103,2500.0,200000,60000,'2023-04-30 14:00:00','2023-04-30 14:10:00','Brand campaign','18-34 F');


-- Waste Management Collection Routes
CREATE TABLE waste_management_collection_routes
(
    RouteID INTEGER PRIMARY KEY AUTOINCREMENT,
    ZoneID INTEGER,
    VehicleID INTEGER,
    DriverID INTEGER,
    RouteStartDate DATE,
    RouteEndDate DATE,
    TotalDistanceKm REAL,
    TotalStops INTEGER,
    AverageLoadKg REAL,
    CollectionTimeHours REAL,
    WasteType TEXT,
    Shift TEXT,
    ScheduleFrequencyDays INTEGER,
    RouteStatus TEXT,
    SupervisorID INTEGER,
    FuelConsumptionLiters REAL,
    EmissionKgCO2 REAL,
    MaintenanceFlag INTEGER,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    EstimatedCostUSD REAL,
    ActualCostUSD REAL
);

INSERT INTO waste_management_collection_routes VALUES
(1,2101,3101,4101,'2023-04-01','2023-04-01',120.5,25,800.0,4.5,'Recyclables','Morning',7,'Active',5101,85.0,200.0,0,'No issues','2023-04-01 06:00:00','2023-04-01 10:45:00',500.0,520.0);

INSERT INTO waste_management_collection_routes VALUES
(2,2102,3102,4102,'2023-04-02','2023-04-02',150.0,30,950.0,5.0,'Organic','Evening',7,'Active',5102,95.0,225.0,1,'Minor delay due to traffic','2023-04-02 16:00:00','2023-04-02 21:15:00',600.0,630.0);

INSERT INTO waste_management_collection_routes VALUES
(3,2103,3103,4103,'2023-04-03','2023-04-03',110.0,20,700.0,4.0,'General Waste','Night',7,'Active',5103,78.0,185.0,0,'All on time','2023-04-03 22:00:00','2023-04-04 02:00:00',450.0,470.0');