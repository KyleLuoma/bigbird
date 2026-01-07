-- Public transport schedule information
CREATE TABLE public_transport_schedule
(
    ScheduleID INTEGER PRIMARY KEY,
    RouteNumber TEXT,
    AgencyName TEXT,
    StartStop TEXT,
    EndStop TEXT,
    DayOfWeek TEXT,
    ServiceType TEXT,
    FirstDepartureTime TEXT,
    LastDepartureTime TEXT,
    FrequencyMinutes INTEGER,
    VehicleType TEXT,
    Capacity INTEGER,
    AccessibilityLevel TEXT,
    TicketPrice REAL,
    Currency TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    WeekdayOperation INTEGER,
    WeekendOperation INTEGER,
    IsHolidayService INTEGER
);
INSERT INTO public_transport_schedule VALUES (1,'R100','CityTransit','CentralStation','NorthPark','Monday','Regular','06:00:00','22:00:00',15,'Bus',40,'Full',2.5,'USD','2024-01-01','2024-12-31',1,0,0);
INSERT INTO public_transport_schedule VALUES (2,'R200','MetroLine','EastSide','WestEnd','Saturday','Weekend','08:00:00','20:00:00',10,'Tram',120,'Partial',3.0,'EUR','2024-03-01','2024-11-30',0,1,1);
INSERT INTO public_transport_schedule VALUES (3,'R300','RapidRail','NorthStation','SouthStation','Sunday','Holiday','09:00:00','18:00:00',20,'Train',200,'Full',5.0,'GBP','2024-05-15','2024-10-15',0,0,1);

-- Energy grid node metadata
CREATE TABLE energy_grid_nodes
(
    NodeID INTEGER PRIMARY KEY,
    NodeName TEXT,
    Region TEXT,
    VoltageLevel TEXT,
    SubstationID INTEGER,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    CapacityMW REAL,
    CurrentLoadMW REAL,
    Status TEXT,
    OwnerCompany TEXT,
    MaintenanceContact TEXT,
    LastInspectionDate DATE,
    NextInspectionDate DATE,
    IsCritical INTEGER,
    TransformerCount INTEGER,
    CableLengthKM REAL,
    RenewableSharePercent REAL,
    GridType TEXT
);
INSERT INTO energy_grid_nodes VALUES (101,'NodeAlpha','NorthRegion','HV','2001',45.1234,12.5678,'2015-06-01',150.0,95.3,'Active','PowerCo','JohnDoe','2023-12-01','2024-12-01',1,4,120.5,35.0,'Transmission');
INSERT INTO energy_grid_nodes VALUES (102,'NodeBeta','SouthRegion','MV','2002',44.9876,13.4321,'2017-09-15',80.0,60.2,'Active','GridSystems','JaneSmith','2023-11-20','2024-11-20',0,2,78.3,20.0,'Distribution');
INSERT INTO energy_grid_nodes VALUES (103,'NodeGamma','EastRegion','LV','2003',46.0011,11.9988,'2020-01-10',30.0,12.5,'Planned','EnergyNet','MikeBrown','2023-10-05','2024-10-05',0,1,45.0,10.0,'Substation');

-- Emission monitoring records
CREATE TABLE emission_monitoring
(
    RecordID INTEGER PRIMARY KEY,
    StationID INTEGER,
    Pollutant TEXT,
    ConcentrationPPM REAL,
    MeasurementDate DATE,
    MeasurementTime TEXT,
    SensorSerial TEXT,
    CalibrationDate DATE,
    TechnicianID INTEGER,
    Status TEXT,
    Unit TEXT,
    Latitude REAL,
    Longitude REAL,
    Methodology TEXT,
    AccuracyPercent REAL,
    ReportingPeriod TEXT,
    LegalLimit REAL,
    ExceedanceFlag INTEGER,
    Comments TEXT,
    DataSource TEXT
);
INSERT INTO emission_monitoring VALUES (5001,10,'NO2',0.042,'2024-01-12','08:15:00','SN1001','2023-12-01',301,'Approved','ppm',45.123,-73.456,'Optical','98.5','Monthly',0.05,0,'Normal operation','Automated');
INSERT INTO emission_monitoring VALUES (5002,12,'SO2',0.018,'2024-01-12','09:30:00','SN1002','2023-11-20',302,'Pending','ppm',44.987,-73.321,'Electrochemical','97.0','Monthly',0.02,0,'Calibration due soon','Manual');
INSERT INTO emission_monitoring VALUES (5003,15,'CO',1.2,'2024-01-12','10:45:00','SN1003','2023-10-15',303,'Approved','ppm',45.001,-73.200,'NDIR','99.0','Monthly',9.0,0,'Within limits','Automated');

-- Customer feedback collection (non‑identifying)
CREATE TABLE customer_feedback
(
    FeedbackID INTEGER PRIMARY KEY,
    SurveyDate DATE,
    SurveyTime TEXT,
    RespondentAgeGroup TEXT,
    RespondentGender TEXT,
    Region TEXT,
    FeedbackScore INTEGER,
    SatisfactionLevel TEXT,
    CommentSummary TEXT,
    ProductLine TEXT,
    ServiceAspect TEXT,
    RecommendationLikelihood INTEGER,
    ContactMethod TEXT,
    FollowUpRequested INTEGER,
    ResponseTimeHours INTEGER,
    SurveyMode TEXT,
    IncentiveProvided INTEGER,
    IncentiveValue REAL,
    SurveyVersion TEXT,
    DataCollectorID INTEGER
);
INSERT INTO customer_feedback VALUES (9001,'2024-02-01','14:20:00','25-34','Female','Midwest',8,'High','Quick service','Fuel','Speed','9','Email',0,24,'Online',1,5.0,'v1',401);
INSERT INTO customer_feedback VALUES (9002,'2024-02-03','09:45:00','35-44','Male','Northeast',6,'Medium','Price high','Convenience','Pricing','5','Phone',1,48,'Phone',0,0.0,'v1',402);
INSERT INTO customer_feedback VALUES (9003,'2024-02-05','18:10:00','45-54','Other','Southwest',9,'Very High','Friendly staff','Loyalty','Support','10','App',0,12,'App',1,10.0,'v2',403);

-- Advertising media inventory
CREATE TABLE advertising_media_inventory
(
    MediaID INTEGER PRIMARY KEY,
    MediaType TEXT,
    PlatformName TEXT,
    CampaignID INTEGER,
    PlacementDate DATE,
    PlacementTime TEXT,
    DurationSeconds INTEGER,
    Cost REAL,
    Currency TEXT,
    TargetAudience TEXT,
    ReachEstimate INTEGER,
    FrequencyCap INTEGER,
    CreativeID TEXT,
    Format TEXT,
    Size TEXT,
    Position TEXT,
    ViewabilityRate REAL,
    ClickThroughRate REAL,
    ConversionRate REAL,
    BillingStatus TEXT,
    VendorID INTEGER
);
INSERT INTO advertising_media_inventory VALUES (20001,'Display','WebPortal','3001','2024-03-01','08:00:00',30,1500.0,'USD','Adults 25-40',50000,3,'CR2024A','Banner','300x250','Top','0.85','0.04','0.02','Pending',601);
INSERT INTO advertising_media_inventory VALUES (20002,'Video','StreamingService','3002','2024-03-05','12:30:00',15,2500.0,'EUR','Teens 13-19',75000,2,'CR2024B','PreRoll','N/A','Mid','0.78','0.06','0.03','Approved',602);
INSERT INTO advertising_media_inventory VALUES (20003,'Audio','RadioStation','3003','2024-03-10','17:45:00',60,800.0,'GBP','Drivers 30-55',30000,1,'CR2024C','Spot','30s','Mid','0.90','0.02','0.01','Invoiced',603);

-- Maintenance parts catalog
CREATE TABLE maintenance_parts_catalog
(
    PartID INTEGER PRIMARY KEY,
    PartNumber TEXT,
    Description TEXT,
    Category TEXT,
    Manufacturer TEXT,
    SupplierID INTEGER,
    UnitCost REAL,
    Currency TEXT,
    StockQuantity INTEGER,
    ReorderLevel INTEGER,
    LeadTimeDays INTEGER,
    WarrantyMonths INTEGER,
    CompatibilityNotes TEXT,
    WeightKg REAL,
    DimensionsCM TEXT,
    ShelfLocation TEXT,
    HazardousFlag INTEGER,
    DisposalMethod TEXT,
    LastUpdated DATE,
    CreatedDate DATE,
    IsActive INTEGER
);
INSERT INTO maintenance_parts_catalog VALUES (4001,'PN-1001','Oil filter','Fluid','FilterCo',701,12.5,'USD',250,50,7,24,'Fits model X','0.3','10x10x5','A1',0,'Recycle','2024-01-20','2023-07-15',1);
INSERT INTO maintenance_parts_catalog VALUES (4002,'PN-2002','Brake pad set','Brake','BrakeMakers',702,45.0,'EUR',120,30,14,36,'Front axle only','2.5','20x15x5','B3',0,'Landfill','2024-02-05','2023-08-01',1);
INSERT INTO maintenance_parts_catalog VALUES (4003,'PN-3003','Battery pack','Electrical','PowerCells',703,120.0,'GBP',60,10,21,48,'Vehicle Y compatible','15.0','30x20x10','C2',1,'Hazardous Waste','2024-01-30','2023-09-12',1);

-- Fleet telemetry points
CREATE TABLE fleet_telemetry
(
    TelemetryID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    Timestamp TEXT,
    Latitude REAL,
    Longitude REAL,
    SpeedKph REAL,
    EngineRPM INTEGER,
    FuelLevelPercent REAL,
    BatteryVoltage REAL,
    OutsideTempC REAL,
    OdometerKm REAL,
    TirePressureFrontLeft REAL,
    TirePressureFrontRight REAL,
    TirePressureRearLeft REAL,
    TirePressureRearRight REAL,
    AccelerationG REAL,
    BrakeStatus INTEGER,
    GearPosition TEXT,
    TripID INTEGER,
    DriverID INTEGER
);
INSERT INTO fleet_telemetry VALUES (60001,15001,'2024-03-15 08:12:30',45.1234,12.5678,65.0,2500,78.5,13.6,22.0,15230.5,32.0,31.8,30.5,30.2,0.02,0,'D',9001,301);
INSERT INTO fleet_telemetry VALUES (60002,15002,'2024-03-15 08:13:05',45.1240,12.5680,70.0,2600,75.0,13.5,21.8,15231.0,32.1,31.9,30.6,30.3,0.03,1,'N',9001,302);
INSERT INTO fleet_telemetry VALUES (60003,15003,'2024-03-15 08:14:20',45.1245,12.5685,55.0,2400,82.0,13.7,23.5,15231.8,31.9,31.7,30.4,30.1,-0.01,0,'R',9002,303);

-- Supply chain inventory snapshots
CREATE TABLE supply_chain_inventory
(
    InventoryID INTEGER PRIMARY KEY,
    WarehouseID INTEGER,
    ProductSKU TEXT,
    BatchNumber TEXT,
    ReceivedDate DATE,
    ExpirationDate DATE,
    QuantityOnHand INTEGER,
    UnitCost REAL,
    Currency TEXT,
    SupplierID INTEGER,
    StorageSection TEXT,
    TemperatureC REAL,
    HumidityPercent REAL,
    InspectionStatus TEXT,
    LastAuditDate DATE,
    NextAuditDate DATE,
    ReservedQuantity INTEGER,
    InTransitQuantity INTEGER,
    DamageFlag INTEGER,
    Notes TEXT,
    LastUpdated DATE
);
INSERT INTO supply_chain_inventory VALUES (8001,10,'SKU-AX100','BN-001','2024-01-10','2025-01-10',5000,1.2,'USD',701,'A1',5.0,60.0,'Passed','2024-02-01','2024-08-01',200,150,0,'Good condition','2024-03-01');
INSERT INTO supply_chain_inventory VALUES (8002,12,'SKU-BY200','BN-002','2024-02-15','2025-02-15',3000,2.5,'EUR',702,'B3',2.0,55.0,'Pending','2024-02-20','2024-08-20',100,80,1,'Minor dents','2024-03-05');
INSERT INTO supply_chain_inventory VALUES (8003,15,'SKU-CZ300','BN-003','2024-03-01','2025-03-01',7500,0.9,'GBP',703,'C2',7.0,65.0,'Passed','2024-03-10','2024-09-10',500,200,0,'Ready for dispatch','2024-03-10');

-- Regulatory reports metadata
CREATE TABLE regulatory_reports
(
    ReportID INTEGER PRIMARY KEY,
    ReportName TEXT,
    PeriodStart DATE,
    PeriodEnd DATE,
    SubmissionDate DATE,
    Authority TEXT,
    ReportType TEXT,
    Status TEXT,
    ReviewerID INTEGER,
    ApprovalDate DATE,
    FilePath TEXT,
    FileSizeKB INTEGER,
    RecordCount INTEGER,
    SummaryScore REAL,
    ComplianceScore REAL,
    NonComplianceCount INTEGER,
    PenaltyAmount REAL,
    Currency TEXT,
    Remarks TEXT,
    DataVersion TEXT,
    CreatedBy INTEGER
);
INSERT INTO regulatory_reports VALUES (10001,'EmissionsReportQ1','2024-01-01','2024-03-31','2024-04-10','EnvAgency','Environmental','Submitted',501,'2024-04-12','/reports/emissions_q1.pdf',2560,1250,92.5,88.0,2,15000.0,'USD','On time','v1',601);
INSERT INTO regulatory_reports VALUES (10002,'SafetyAuditFY2023','2023-01-01','2023-12-31','2024-01-20','SafetyBoard','Safety','Approved',502,'2024-01-22','/reports/safety_fy2023.pdf',3400,980,95.0,93.5,0,0.0,'EUR','No issues','v2',602);
INSERT INTO regulatory_reports VALUES (10003,'FinancialDisclosure2023','2023-01-01','2023-12-31','2024-02-05','FinanceReg','Financial','Pending',503,NULL,'/reports/finance_2023.pdf',4200,2100,87.0,85.0,5,30000.0,'GBP','Awaiting audit','v1',603);

-- Environmental audit records
CREATE TABLE environmental_audits
(
    AuditID INTEGER PRIMARY KEY,
    SiteID INTEGER,
    AuditDate DATE,
    AuditorID INTEGER,
    Scope TEXT,
    FindingsCount INTEGER,
    CriticalFindings INTEGER,
    NonCriticalFindings INTEGER,
    Recommendations TEXT,
    FollowUpDate DATE,
    CompletionStatus TEXT,
    TotalScore REAL,
    ComplianceLevel TEXT,
    WeatherConditions TEXT,
    TemperatureC REAL,
    HumidityPercent REAL,
    EquipmentUsed TEXT,
    DocumentationPath TEXT,
    Remarks TEXT,
    CreatedTimestamp TEXT,
    UpdatedTimestamp TEXT
);
INSERT INTO environmental_audits VALUES (15001,200,'2024-01-18',601,'Air Quality',12,2,10,'Install filters','2024-04-01','Open',88.5,'High','Clear',5.0,30.0,'PortableAnalyzer','/audits/air_2024_01.pdf','Follow up needed','2024-01-18 09:00:00','2024-02-01 10:15:00');
INSERT INTO environmental_audits VALUES (15002,201,'2024-02-05',602,'Water Discharge',8,0,8,'Adjust valve timings','2024-05-10','Closed',92.0,'Very High','Rainy',12.0,70.0,'FlowMeter','/audits/water_2024_02.pdf','All compliant','2024-02-05 11:30:00','2024-02-20 14:45:00');
INSERT INTO environmental_audits VALUES (15003,202,'2024-03-12',603,'Soil Contamination',15,3,12,'Remediate hotspots','2024-06-30','Open',81.0,'Medium','Cloudy',8.5,55.0,'SoilSampler','/audits/soil_2024_03.pdf','Critical issues noted','2024-03-12 08:45:00','2024-03-25 16:20:00');