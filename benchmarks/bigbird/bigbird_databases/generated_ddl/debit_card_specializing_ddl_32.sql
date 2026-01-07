-- Fleet driver certifications
CREATE TABLE fleet_driver_certifications
(
    CertificationID INTEGER PRIMARY KEY,
    DriverID INTEGER,
    CertificationName TEXT,
    IssuingAuthority TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    CertificationLevel TEXT,
    TrainingHours INTEGER,
    ExamScore REAL,
    CertifiedVehicleType TEXT,
    Status TEXT,
    RenewalReminderSent INTEGER,
    DocumentPath TEXT,
    Comments TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Country TEXT,
    Region TEXT,
    Language TEXT,
    ValidityPeriodDays INTEGER
);

INSERT INTO fleet_driver_certifications VALUES (1,101,'HeavyVehicleOperator','NationalTransportAgency','2022-01-15','2025-01-14','LevelA',40,88.5,'Truck','Active',0,'/docs/cert1.pdf','',datetime('now'),datetime('now'),'US','Midwest','English',1095);
INSERT INTO fleet_driver_certifications VALUES (2,102,'HazardousMaterials','FederalSafetyBoard','2021-06-20','2024-06-19','LevelB',35,91.2,'Van','Active',1,'/docs/cert2.pdf','',datetime('now'),datetime('now'),'US','South','English',1095);
INSERT INTO fleet_driver_certifications VALUES (3,103,'PassengerTransport','StateMotorDept','2020-03-10','2023-03-09','LevelC',30,85.0,'Bus','Expired',0,'/docs/cert3.pdf','Renewal needed',datetime('now'),datetime('now'),'US','West','English',1095);

-- Station energy audit
CREATE TABLE station_energy_audit
(
    AuditID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    AuditDate DATE,
    AuditorName TEXT,
    EnergySource TEXT,
    TotalConsumptionKWh REAL,
    PeakDemandKW REAL,
    BaselineYear INTEGER,
    SavingsProjectedKWh REAL,
    SavingsAchievedKWh REAL,
    RecommendationsCount INTEGER,
    FollowUpDate DATE,
    AuditScore REAL,
    ComplianceStatus TEXT,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Country TEXT,
    State TEXT,
    City TEXT,
    AuditType TEXT
);

INSERT INTO station_energy_audit VALUES (1,201,'2023-04-12','AliceSmith','Electric','15000',120,2020,2000,1800,5,'2023-07-12',92.5,'Compliant','',datetime('now'),datetime('now'),'US','TX','Austin','Annual');
INSERT INTO station_energy_audit VALUES (2,202,'2023-05-08','BobJones','Solar','8000',95,2020,1200,1100,3,'2023-08-08',88.0,'Compliant','',datetime('now'),datetime('now'),'US','CA','LosAngeles','Quarterly');
INSERT INTO station_energy_audit VALUES (3,203,'2023-03-20','CarolLee','Hybrid','12000',110,2020,1500,1400,4,'2023-06-20',90.3,'Compliant','',datetime('now'),datetime('now'),'US','NY','NewYork','Annual');

-- Vehicle fuel efficiency metrics
CREATE TABLE vehicle_fuel_efficiency_metrics
(
    RecordID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    Date DATE,
    OdometerStartKM INTEGER,
    OdometerEndKM INTEGER,
    FuelConsumedLiters REAL,
    DistanceKM REAL,
    EfficiencyKMPerL REAL,
    FuelType TEXT,
    EngineLoadAvg REAL,
    AvgSpeedKMH REAL,
    EmissionsCO2Kg REAL,
    DriverID INTEGER,
    RouteID INTEGER,
    WeatherCondition TEXT,
    TrafficLevel TEXT,
    TripPurpose TEXT,
    RideDurationMin INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO vehicle_fuel_efficiency_metrics VALUES (1,501,'2023-06-01',12000,12200,150.5,200,1.33,'Diesel',75.2,60,35.4,101,301,'Sunny','Medium','Delivery',180,datetime('now'),datetime('now'));
INSERT INTO vehicle_fuel_efficiency_metrics VALUES (2,502,'2023-06-02',5000,5200,120.0,200,1.67,'Gasoline',68.0,55,30.2,102,302,'Rain','High','Pickup',150,datetime('now'),datetime('now'));
INSERT INTO vehicle_fuel_efficiency_metrics VALUES (3,503,'2023-06-03',25000,25250,140.8,250,1.78,'Hybrid',65.5,58,28.0,103,303,'Cloudy','Low','Service',200,datetime('now'),datetime('now'));

-- Supplier quality assessments
CREATE TABLE supplier_quality_assessments
(
    AssessmentID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    AssessmentDate DATE,
    AssessorName TEXT,
    QualityScore REAL,
    DeliveryTimelinessScore REAL,
    ComplianceScore REAL,
    DefectRatePercent REAL,
    AuditFindingsCount INTEGER,
    CorrectiveActionsTaken INTEGER,
    OverallRating TEXT,
    Comments TEXT,
    FollowUpDate DATE,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    ProductCategory TEXT,
    Region TEXT,
    ContractID INTEGER,
    AssessmentType TEXT,
    RiskLevel TEXT,
    ScoreWeight REAL
);

INSERT INTO supplier_quality_assessments VALUES (1,301,'2023-04-15','DianaBrown',88.5,92.0,90.0,1.2,4,3,'A','', '2023-07-15',datetime('now'),datetime('now'),'Lubricants','Midwest',1001,'Annual','Medium',1.0);
INSERT INTO supplier_quality_assessments VALUES (2,302,'2023-05-10','EdwardWhite',80.0,85.5,78.0,2.5,6,5,'B','Improvement needed','2023-08-10',datetime('now'),datetime('now'),'Filters','South',1002,'Quarterly','High',0.9);
INSERT INTO supplier_quality_assessments VALUES (3,303,'2023-03-20','FionaGreen',92.0,95.0,93.5,0.8,2,2,'A','', '2023-06-20',datetime('now'),datetime('now'),'Tires','West',1003,'Annual','Low',1.1);

-- Road network maintenance logs
CREATE TABLE road_network_maintenance_logs
(
    LogID INTEGER PRIMARY KEY,
    SegmentID INTEGER,
    MaintenanceDate DATE,
    MaintenanceType TEXT,
    DurationHours REAL,
    CrewSize INTEGER,
    MaterialsUsed TEXT,
    CostUSD REAL,
    TrafficImpactLevel TEXT,
    WeatherConditions TEXT,
    SupervisorName TEXT,
    InspectionPassed INTEGER,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Region TEXT,
    HighwayNumber TEXT,
    LaneCount INTEGER,
    EquipmentUsed TEXT,
    Remarks TEXT
);

INSERT INTO road_network_maintenance_logs VALUES (1,401,'2023-04-01','PavementResurfacing',48.0,12,'Asphalt',250000,'High','Sunny','MikeTaylor',1,0,NULL,datetime('now'),datetime('now'),'North','I-90',4,'Paver,Roller','');
INSERT INTO road_network_maintenance_logs VALUES (2,402,'2023-05-10','BridgeInspection',8.0,5,'N/A',15000,'Low','Rain','SusanLee',1,1,'2023-06-10',datetime('now'),datetime('now'),'South','US-1',2,'InspectionRig','Found minor corrosion');
INSERT INTO road_network_maintenance_logs VALUES (3,403,'2023-03-15','DrainageCleaning',16.0,8,'Concrete',50000,'Medium','Cloudy','TomHarris',1,0,NULL,datetime('now'),datetime('now'),'East','I-75',3,'Excavator','Cleared debris');

-- City transportation policy
CREATE TABLE city_transportation_policy
(
    PolicyID INTEGER PRIMARY KEY,
    CityID INTEGER,
    PolicyName TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    Category TEXT,
    Description TEXT,
    TargetMetric TEXT,
    TargetValue REAL,
    MeasurementUnit TEXT,
    ResponsibleDepartment TEXT,
    FundingAmountUSD REAL,
    Status TEXT,
    ReviewDate DATE,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    StakeholderGroup TEXT,
    LegalReference TEXT,
    ImplementationPhase TEXT,
    PriorityLevel TEXT,
    KPIReference TEXT
);

INSERT INTO city_transportation_policy VALUES (1,1001,'ZeroEmissionZones','2023-01-01','2026-12-31','Environmental','Restrict diesel vehicles in downtown','EmissionReductionPercent',30,'Percent','TransportationDept',2000000,'Active','2024-01-01',datetime('now'),datetime('now'),'Residents','CityCode2022','Phase1','High','KPI-EM01');
INSERT INTO city_transportation_policy VALUES (2,1002,'BikeLaneExpansion','2023-06-01','2025-05-31','Infrastructure','Add 50 miles of protected bike lanes','NewBikeLaneMiles',50,'Miles','PublicWorks',1500000,'Planned','2023-12-01',datetime('now'),datetime('now'),'Cyclists','CityOrdinance45','Phase2','Medium','KPI-BL02');
INSERT INTO city_transportation_policy VALUES (3,1003,'PublicTransitFareReduction','2024-01-01','2025-12-31','FarePolicy','Reduce bus fare by 10%','FareDecreasePercent',10,'Percent','TransitAuthority',800000,'Draft','2023-11-15',datetime('now'),datetime('now'),'Commuters','TransitAct2021','Phase0','Low','KPI-FA03');

-- Energy consumption forecast
CREATE TABLE energy_consumption_forecast
(
    ForecastID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    ForecastMonth INTEGER,
    ForecastYear INTEGER,
    PredictedConsumptionMWh REAL,
    PredictedPeakDemandMW REAL,
    ConfidenceIntervalLow REAL,
    ConfidenceIntervalHigh REAL,
    ForecastMethod TEXT,
    ModelVersion TEXT,
    CreatedBy TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Scenario TEXT,
    WeatherAdjustmentFactor REAL,
    EconomicGrowthFactor REAL,
    RegulatoryImpactFactor REAL,
    HistoricalAvgConsumptionMWh REAL,
    SeasonalAdjustment REAL,
    ForecastStatus TEXT,
    Comments TEXT
);

INSERT INTO energy_consumption_forecast VALUES (1,501,7,2023,1200.5,85.2,1150.0,1250.0,'TimeSeries','v1.2','AnalystA',datetime('now'),datetime('now'),'Base',1.05,1.02,0.98,1100.0,0.03,'Submitted','');
INSERT INTO energy_consumption_forecast VALUES (2,502,7,2023,950.0,70.0,900.0,1000.0,'MachineLearning','v2.0','AnalystB',datetime('now'),datetime('now'),'Optimistic',1.08,1.05,1.00,880.0,0.04,'Reviewed','');
INSERT INTO energy_consumption_forecast VALUES (3,503,7,2023,1300.0,90.5,1250.0,1350.0,'Hybrid','v1.5','AnalystC',datetime('now'),datetime('now'),'Pessimistic',0.97,0.99,1.01,1250.0,0.02,'Approved','');

-- Digital invoice processing
CREATE TABLE digital_invoice_processing
(
    InvoiceID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    InvoiceNumber TEXT,
    InvoiceDate DATE,
    DueDate DATE,
    AmountUSD REAL,
    Currency TEXT,
    TaxAmountUSD REAL,
    DiscountUSD REAL,
    NetAmountUSD REAL,
    PaymentStatus TEXT,
    ProcessingStage TEXT,
    ReceivedByUserID INTEGER,
    ApproverUserID INTEGER,
    ApprovalDate DATE,
    PaidDate DATE,
    PaymentMethod TEXT,
    DocumentURL TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Category TEXT,
    Remarks TEXT
);

INSERT INTO digital_invoice_processing VALUES (1,301,'INV-1001','2023-05-10','2023-06-10',5000.00,'USD',400.00,50.00,4550.00,'Pending','Received',2001,3001,NULL,NULL,'WireTransfer','/invoices/inv1001.pdf',datetime('now'),datetime('now'),'Fuel','');
INSERT INTO digital_invoice_processing VALUES (2,302,'INV-1002','2023-05-15','2023-06-15',3200.00,'USD',256.00,0.00,2944.00,'Approved','Reviewed',2002,3002,'2023-05-20',NULL,'CreditCard','/invoices/inv1002.pdf',datetime('now'),datetime('now'),'Lubricants','Urgent');
INSERT INTO digital_invoice_processing VALUES (3,303,'INV-1003','2023-05-20','2023-06-20',4500.00,'USD',360.00,100.00,4040.00,'Paid','Completed',2003,3003,'2023-05-25','2023-06-05','Check','/invoices/inv1003.pdf',datetime('now'),datetime('now'),'Parts','');

-- Air quality regulation compliance
CREATE TABLE air_quality_regulation_compliance
(
    ComplianceID INTEGER PRIMARY KEY,
    MonitoringStationID INTEGER,
    InspectionDate DATE,
    RegulationCode TEXT,
    ComplianceStatus TEXT,
    ViolationsCount INTEGER,
    FineAmountUSD REAL,
    CorrectiveActionRequired INTEGER,
    ActionDueDate DATE,
    InspectorName TEXT,
    Comments TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    City TEXT,
    State TEXT,
    Country TEXT,
    MeasurementParameter TEXT,
    MeasuredValue REAL,
    ThresholdValue REAL,
    ComplianceScore REAL,
    FollowUpInspectionDate DATE
);

INSERT INTO air_quality_regulation_compliance VALUES (1,601,'2023-04-10','AQ-2020-01','Compliant',0,0.0,0,NULL,'LauraSmith','',datetime('now'),datetime('now'),'Denver','CO','US','PM2.5',12.5,15.0,95.0,NULL);
INSERT INTO air_quality_regulation_compliance VALUES (2,602,'2023-05-12','AQ-2020-02','NonCompliant',2,1500.0,1,'2023-06-12','MarkJones','Exceeds NO2 limit',datetime('now'),datetime('now'),'LosAngeles','CA','US','NO2',70.0,50.0,78.0,'2023-07-01');
INSERT INTO air_quality_regulation_compliance VALUES (3,603,'2023-03-08','AQ-2020-03','Compliant',0,0.0,0,NULL,'EmilyBrown','',datetime('now'),datetime('now'),'Chicago','IL','US','O3',0.060,0.070,92.0,NULL);

-- Logistics vehicle assignment
CREATE TABLE logistics_vehicle_assignment
(
    AssignmentID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    DriverID INTEGER,
    RouteID INTEGER,
    AssignmentStartDate DATE,
    AssignmentEndDate DATE,
    ShiftType TEXT,
    LoadCapacityKG INTEGER,
    AssignedCargoType TEXT,
    Status TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    DispatcherID INTEGER,
    PriorityLevel TEXT,
    EstimatedTravelHours REAL,
    ActualTravelHours REAL,
    FuelAllocationLiters REAL,
    MaintenanceDueDate DATE,
    GPSDeviceID TEXT,
    Notes TEXT
);

INSERT INTO logistics_vehicle_assignment VALUES (1,701,101,801,'2023-06-01','2023-06-07','Day',15000,'ConstructionMaterials','Active',datetime('now'),datetime('now'),9001,'High',12.5,13.0,200.0,'2023-12-01','GPS-001','');
INSERT INTO logistics_vehicle_assignment VALUES (2,702,102,802,'2023-06-03','2023-06-10','Night',12000,'FoodProducts','Pending',datetime('now'),datetime('now'),9002,'Medium',10.0,0.0,150.0,'2023-11-15','GPS-002','Awaiting driver confirmation');
INSERT INTO logistics_vehicle_assignment VALUES (3,703,103,803,'2023-06-05','2023-06-12','Day',20000,'IndustrialMachinery','Completed',datetime('now'),datetime('now'),9003,'Low',14.0,13.8,250.0,'2024-01-20','GPS-003','Delivered ahead of schedule');