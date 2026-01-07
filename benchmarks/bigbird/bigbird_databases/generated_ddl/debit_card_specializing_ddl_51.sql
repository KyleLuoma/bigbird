-- Road infrastructure assets metadata
CREATE TABLE road_infrastructure_assets
(
    AssetID                 INTEGER PRIMARY KEY,
    AssetType               TEXT,
    InstallationDate        DATE,
    Latitude                REAL,
    Longitude               REAL,
    LengthMeters            REAL,
    WidthMeters             REAL,
    Material                TEXT,
    ConditionRating         INTEGER,
    LastInspectionDate      DATE,
    OwnerAgency             TEXT,
    MaintenanceCostAnnual   REAL,
    WarrantyEndDate         DATE,
    SerialNumber            TEXT,
    VoltageLevel            TEXT,
    CapacityMW              REAL,
    InstallationYear        INTEGER,
    DecommissionFlag        INTEGER,
    GeographicRegion        TEXT,
    AssetStatus             TEXT,
    FundingSource           TEXT,
    AssetLifecycleStage     TEXT,
    GPSPrecision            REAL,
    ContractorID            INTEGER,
    InspectionFrequencyDays INTEGER
);

INSERT INTO road_infrastructure_assets VALUES (1,'Bridge','2020-03-15',45.12,-93.34,120.5,15.0,'Steel',8,'2023-07-01','DeptTransportation',25000.0,'2025-03-15','BRG001','Medium',5.0,2020,0,'Midwest','Active','FederalGrant','Operational',0.5,101,180);
INSERT INTO road_infrastructure_assets VALUES (2,'Tunnel','2018-11-20',46.78,-94.21,800.0,10.0,'Concrete',9,'2023-06-15','DeptTransportation',50000.0','2024-11-20','TNL045','High',0.0,2018,0,'Midwest','Active','StateFund','Operational',0.3,102,365);
INSERT INTO road_infrastructure_assets VALUES (3,'TrafficSignal','2021-01-05',44.98,-92.58,0.0,0.0,'Aluminum',7,'2023-08-10','DeptTransportation',12000.0,'2026-01-05','TSG210','Low',0.0,2021,0,'Midwest','Active','Municipal','Operational',0.2,103,90);

-- Public transport vehicle maintenance records
CREATE TABLE public_transport_vehicle_maintenance
(
    MaintenanceID            INTEGER PRIMARY KEY,
    VehicleID               TEXT,
    ServiceDate             DATE,
    Odometer                INTEGER,
    ServiceType             TEXT,
    ServiceProvider         TEXT,
    Cost                    REAL,
    PartsReplaced           TEXT,
    TechnicianID            INTEGER,
    ServiceDurationHours    REAL,
    NextDueDate             DATE,
    MaintenanceStatus       TEXT,
    WarrantyApplied         INTEGER,
    FuelType                TEXT,
    EmissionStandard        TEXT,
    Notes                   TEXT,
    ServiceCenterLocation   TEXT,
    ServiceCenterContact    TEXT,
    InspectionScore         INTEGER,
    DowntimeHours           REAL
);

INSERT INTO public_transport_vehicle_maintenance VALUES (1001,'BUS123','2023-04-12',45200,'EngineCheck','AutoCareInc',350.75,'Filter_Gas;Belt_Titanium',501,5.0,'2023-10-12','Completed',1,'Diesel','EuroVI','Routine check','DepotA','5551234',92,2.5);
INSERT INTO public_transport_vehicle_maintenance VALUES (1002,'TRM456','2023-05-20',120500,'BrakeReplace','BrakeMasters',420.00,'BrakePad_Front;BrakePad_Rear',502,6.5,'2023-11-20','Completed',0,'Electric','EURO5','Brake wear high','DepotB','5555678',88,3.0);
INSERT INTO public_transport_vehicle_maintenance VALUES (1003,'BUS789','2023-06-05',78000,'TransmissionService','TransTech',610.40,'ClutchKit;Fluid_Trans',503,8.0,'2024-06-05','Scheduled',1,'Diesel','EuroVI','Scheduled transmission overhaul','DepotC','5559012',85,4.0);

-- Environmental sensor network metadata
CREATE TABLE environmental_sensor_network
(
    SensorID                INTEGER PRIMARY KEY,
    SensorType              TEXT,
    InstallationDate        DATE,
    Latitude                REAL,
    Longitude               REAL,
    ElevationMeters         REAL,
    OwnerOrganization       TEXT,
    CalibrationDate         DATE,
    CalibrationDueDate      DATE,
    FirmwareVersion         TEXT,
    BatteryLevelPercent    INTEGER,
    ConnectivityType        TEXT,
    DataTransmissionIntervalSec INTEGER,
    LastDataTimestamp       DATETIME,
    Status                  TEXT,
    AlertThreshold          REAL,
    CurrentReading          REAL,
    Unit                    TEXT,
    MaintenanceContractID  INTEGER,
    GPSAccuracyMeters       REAL
);

INSERT INTO environmental_sensor_network VALUES (2001,'AirQuality','2022-01-10',45.01,-93.02,250.0,'EnviroDept','2023-01-10','2024-01-10','v1.2',85,'Cellular',300,'2023-09-01 08:15:00','Online',75.0,55.2,'µg/m3',301,1.5);
INSERT INTO environmental_sensor_network VALUES (2002,'Noise','2021-07-22',45.15,-92.88,180.0,'EnviroDept','2022-07-22','2023-07-22','v2.0',78,'WiFi',600,'2023-09-01 08:20:00','Online',70.0,62.5,'dB',302,2.0);
INSERT INTO environmental_sensor_network VALUES (2003,'WaterLevel','2020-05-15',44.90,-93.30,15.0,'EnviroDept','2021-05-15','2022-05-15','v1.5',92,'LoRa',900,'2023-09-01 08:25:00','Online',3.5,2.8,'m',303,0.8);

-- Digital marketing initiatives details
CREATE TABLE digital_marketing_initiatives
(
    InitiativeID            INTEGER PRIMARY KEY,
    InitiativeName          TEXT,
    Platform                TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    BudgetUSD               REAL,
    TargetAudience          TEXT,
    CreativeType            TEXT,
    ImpressionsGoal         INTEGER,
    ClickThroughGoal        INTEGER,
    ConversionGoal          INTEGER,
    ActualImpressions       INTEGER,
    ActualClicks            INTEGER,
    ActualConversions       INTEGER,
    CostPerClickUSD         REAL,
    CostPerConversionUSD    REAL,
    AOVUSD                  REAL,
    RevenueGeneratedUSD     REAL,
    Status                  TEXT,
    OwnerTeam               TEXT
);

INSERT INTO digital_marketing_initiatives VALUES (3001,'SummerSale','Facebook','2023-06-01','2023-08-31',150000.0,'Adults_25-45','Video',2000000,50000,10000,2100000,52000,10500,2.88,14.29,120.0,1890000,'Completed','DigitalTeamA');
INSERT INTO digital_marketing_initiatives VALUES (3002,'WinterPromo','GoogleAds','2023-11-01','2024-01-31',200000.0,'Adults_30-55','Search',2500000,70000,15000,2600000,72000,15800,2.78,12.66,130.0,2104000,'Active','DigitalTeamB');
INSERT INTO digital_marketing_initiatives VALUES (3003,'SpringLaunch','Instagram','2023-03-01','2023-05-31',100000.0,'YoungAdults_18-30','Story',1500000,40000,8000,1550000,41000,8200,2.44,12.20,115.0,945000,'Completed','DigitalTeamC');

-- Logistics warehouse inventory snapshot
CREATE TABLE logistics_warehouse_inventory
(
    WarehouseID            INTEGER,
    ItemSKU                TEXT,
    ItemDescription        TEXT,
    QuantityOnHand         INTEGER,
    UnitCostUSD            REAL,
    LocationAisle          TEXT,
    LocationShelf          TEXT,
    ReceivedDate           DATE,
    ExpirationDate         DATE,
    SupplierID             INTEGER,
    Category               TEXT,
    TemperatureControlledFlag INTEGER,
    HazardousMaterialFlag INTEGER,
    LastAuditDate          DATE,
    NextAuditDue           DATE,
    InventoryStatus        TEXT,
    OwnerDepartment        TEXT,
    ReorderPoint           INTEGER,
    LeadTimeDays           INTEGER,
    LastTransferDate       DATE,
    PRIMARY KEY (WarehouseID, ItemSKU)
);

INSERT INTO logistics_warehouse_inventory VALUES (1,'SKU001','SteelBeams',500,120.5,'A','01','2023-01-15','2028-01-15',101,'Construction',0,0,'2023-06-01','2023-12-01','Available','Construction',100,30,'2023-08-20');
INSERT INTO logistics_warehouse_inventory VALUES (1,'SKU002','PaintRed',200,15.75,'B','12','2023-02-05','2024-02-05',102,'Finishing',1,1,'2023-06-01','2023-12-01','Available','Finishing',50,14,'2023-07-15');
INSERT INTO logistics_warehouse_inventory VALUES (2,'SKU010','LithiumCells',800,2.35,'C','05','2023-03-10','2026-03-10',103,'Electronics',0,0,'2023-06-01','2023-12-01','Available','Electronics',200,21,'2023-08-01');

-- Renewable energy project registry
CREATE TABLE renewable_energy_project_registry
(
    ProjectID               INTEGER PRIMARY KEY,
    ProjectName             TEXT,
    EnergyType              TEXT,
    CapacityMW              REAL,
    CommissionDate          DATE,
    OwnerCompany            TEXT,
    Region                  TEXT,
    Status                  TEXT,
    FundingSource           TEXT,
    TotalInvestmentUSD      REAL,
    ExpectedLifetimeYears   INTEGER,
    CO2OffsetTonnes         REAL,
    OperatingCompany        TEXT,
    GridConnectionPoint     TEXT,
    PermitNumber            TEXT,
    EnvironmentalImpactScore INTEGER,
    TaxCreditAmountUSD      REAL,
    MaintenanceProvider     TEXT,
    LastInspectionDate      DATE,
    CurrentPhase            TEXT
);

INSERT INTO renewable_energy_project_registry VALUES (4001,'SunriseSolar','Solar',150.0,'2022-09-30','SolarCo','SouthWest','Operational','Equity',250000000,25,500000,'SolarOps','SCGP01','PN12345',85,12000000,'SolarMaintCo','2023-06-15','Generation');
INSERT INTO renewable_energy_project_registry VALUES (4002,'WindHarbor','Wind',300.0,'2021-06-15','WindPowerLtd','Midwest','Operational','Debt',500000000,30,1200000,'WindOps','WGP02','PN67890',90,25000000,'WindMaintInc','2023-05-20','Generation');
INSERT INTO renewable_energy_project_registry VALUES (4003,'RiverFlowHydro','Hydro',80.0,'2023-03-01','HydroEnergy','NorthEast','Construction','Grant',180000000,40,300000,'HydroOps','HGP03','PN11223',78,8000000,'HydroMaintLLC','2023-07-01','Construction');

-- Smart city sensor inventory
CREATE TABLE smart_city_sensor_inventory
(
    DeviceID               INTEGER PRIMARY KEY,
    DeviceType             TEXT,
    DeploymentDate         DATE,
    CityDistrict           TEXT,
    Latitude               REAL,
    Longitude              REAL,
    FirmwareVersion        TEXT,
    ConnectivityProtocol   TEXT,
    PowerSource            TEXT,
    BatteryHealthPercent   INTEGER,
    DataRetentionPeriodDays INTEGER,
    Status                 TEXT,
    Manufacturer           TEXT,
    WarrantyExpiry         DATE,
    CalibrationDate        DATE,
    CalibrationDue         DATE,
    LastDataUpload         DATETIME,
    AlertLevel             TEXT,
    MaintenanceTicketID    INTEGER,
    InstalledBy            TEXT
);

INSERT INTO smart_city_sensor_inventory VALUES (5001,'TrafficCamera','2022-02-01','DistrictA',45.02,-93.04,'v3.1','Ethernet','Mains',100,365,'Online','CamTech','2025-02-01','2023-02-01','2024-02-01','2023-09-01 07:00:00','Low',601,'InstallerX');
INSERT INTO smart_city_sensor_inventory VALUES (5002,'AirQuality','2021-07-15','DistrictB',45.15,-93.22,'v2.4','LoRa','Solar',85,730,'Online','EnviroSensors','2024-07-15','2022-07-15','2023-07-15','2023-09-01 07:15:00','Medium',602,'InstallerY');
INSERT INTO smart_city_sensor_inventory VALUES (5003,'ParkingSpot','2023-01-10','DistrictC',44.95,-93.10,'v1.8','WiFi','Battery',70,180,'Online','ParkSys','2026-01-10','2023-01-10','2024-01-10','2023-09-01 07:30:00','Low',603,'InstallerZ');

-- Waste management logs
CREATE TABLE waste_management_logs
(
    LogID                  INTEGER PRIMARY KEY,
    FacilityID             INTEGER,
    WasteType              TEXT,
    QuantityTonnes         REAL,
    CollectionDate         DATE,
    TruckID                INTEGER,
    DriverID               INTEGER,
    DisposalMethod         TEXT,
    LandfillID             INTEGER,
    RecyclingRatePercent   REAL,
    HazardousFlag          INTEGER,
    ReceiptNumber          TEXT,
    EntryTimestamp         DATETIME,
    ApprovedBy             TEXT,
    Comments               TEXT,
    TemperatureCelsius     REAL,
    MoistureContentPercent REAL,
    WeightMeasurementMethod TEXT,
    GPSLatitude            REAL,
    GPSLongitude           REAL
);

INSERT INTO waste_management_logs VALUES (6001,10,'Organic',12.5,'2023-08-15',3001,701,'Compost',0,85.0,0,'RCPT001','2023-08-15 10:20:00','SupervisorA','No issues',22.5,12.0,'Scale',45.01,-93.02);
INSERT INTO waste_management_logs VALUES (6002,11,'Plastic',8.3,'2023-08-16',3002,702,'Recycling',0,78.0,0,'RCPT002','2023-08-16 11:05:00','SupervisorB','Minor contamination',20.0,10.5,'Scale',45.15,-93.15);
INSERT INTO waste_management_logs VALUES (6003,12,'Hazardous',1.2,'2023-08-17',3003,703,'SpecialDisposal',5,0.0,1,'RCPT003','2023-08-17 09:45:00','SupervisorC','Handled with care',18.0,8.0,'Weighbridge',44.99,-93.25);

-- Public transport fare structure
CREATE TABLE public_transport_fare_structure
(
    FareID                 INTEGER PRIMARY KEY,
    TransportMode          TEXT,
    ZoneStart              INTEGER,
    ZoneEnd                INTEGER,
    FareAmount             REAL,
    Currency               TEXT,
    EffectiveStartDate     DATE,
    EffectiveEndDate       DATE,
    DiscountCategory       TEXT,
    EligibilityCriteria    TEXT,
    TicketType             TEXT,
    ValidityPeriodDays     INTEGER,
    DailyCapAmount         REAL,
    WeeklyCapAmount        REAL,
    MonthlyCapAmount       REAL,
    PriceChangeReason      TEXT,
    ApprovedBy             TEXT,
    ModificationTimestamp  DATETIME,
    RevenueCenterID        INTEGER,
    SpecialEventFlag      INTEGER
);

INSERT INTO public_transport_fare_structure VALUES (7001,'Bus',1,3,2.5,'USD','2023-01-01','2023-12-31','Student','StudentID','Electronic',30,7.0,25.0,90.0,'AnnualAdjustment','FinanceMgr','2023-01-01 08:00:00',101,0);
INSERT INTO public_transport_fare_structure VALUES (7002,'Metro',1,5,3.0,'USD','2023-01-01','2023-12-31','Senior','Age65Plus','Paper',60,8.0,30.0,100.0,'AnnualAdjustment','FinanceMgr','2023-01-01 08:05:00',102,0);
INSERT INTO public_transport_fare_structure VALUES (7003,'Tram',2,4,2.8,'USD','2023-06-01','2023-12-31','None','None','Electronic',30,9.0,35.0,120.0','MidYearUpdate','FinanceMgr','2023-06-01 09:00:00',103,1);

-- Vehicle fleet depreciation schedule
CREATE TABLE vehicle_fleet_depreciation_schedule
(
    ScheduleID                INTEGER PRIMARY KEY,
    VehicleID                TEXT,
    PurchaseDate             DATE,
    PurchasePrice            REAL,
    DepreciationMethod      TEXT,
    UsefulLifeYears         INTEGER,
    SalvageValue            REAL,
    AnnualDepreciationAmount REAL,
    AccumulatedDepreciation REAL,
    BookValue               REAL,
    DepreciationStartDate   DATE,
    DepreciationEndDate     DATE,
    Department               TEXT,
    CostCenter               TEXT,
    LeaseFlag                INTEGER,
    LeaseEndDate             DATE,
    ResidualValue            REAL,
    TaxDepreciationAmount   REAL,
    AuditStatus              TEXT,
    Comments                 TEXT
);

INSERT INTO vehicle_fleet_depreciation_schedule VALUES (8001,'BUS1001','2020-03-01',250000.0,'StraightLine',10,25000.0,22500.0,67500.0,182500.0,'2020-03-01','2030-03-01','Operations','CC101',0,NULL,25000.0,22500.0,'Approved','Standard depreciation');
INSERT INTO vehicle_fleet_depreciation_schedule VALUES (8002,'TRM2002','2021-07-15',180000.0,'DecliningBalance',8,18000.0,30000.0,72000.0,108000.0,'2021-07-15','2029-07-15','Maintenance','CC102',0,NULL,18000.0,30000.0,'Pending','Accelerated depreciation');
INSERT INTO vehicle_fleet_depreciation_schedule VALUES (8003,'EV3003','2022-11-20',350000.0,'StraightLine',12,35000.0,26250.0,78750.0,272250.0,'2022-11-20','2034-11-20','Sustainability','CC103',1,'2025-11-20',35000.0,26250.0,'Approved','Leased electric vehicle');