-- Gas station extended maintenance logs
CREATE TABLE gas_station_maintenance_logs_ext
(
    LogID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    MaintenanceDate DATE,
    TechnicianID INTEGER,
    Shift TEXT,
    WorkOrderNumber TEXT,
    EquipmentID INTEGER,
    IssueCode TEXT,
    IssueDescription TEXT,
    PartsUsed TEXT,
    PartsCost REAL,
    LaborHours REAL,
    LaborRate REAL,
    TotalCost REAL,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    SafetyCheckPassed INTEGER,
    InspectionLevel TEXT,
    Comments TEXT,
    RecordedBy TEXT,
    RecordTimestamp DATETIME
);

INSERT INTO gas_station_maintenance_logs_ext VALUES (1,101,'2024-01-15','T001','Night','WO-1001',501,'E01','Fuel dispenser nozzle clog','NozzleSeal;CleaningFluid',150.75,2.5,45.0,263.25,0,NULL,1,'Level1','Replaced nozzle seal','TechJohn','2024-01-15 22:30:00');
INSERT INTO gas_station_maintenance_logs_ext VALUES (2,102,'2024-02-03','T007','Day','WO-1015',502,'E04','Air compressor pressure drop','CompressorFilter;Lubricant',85.40,1.8,45.0,176.12,1,'2024-02-10',1,'Level2','Filter replaced, pressure normal','TechAnna','2024-02-03 09:15:00');
INSERT INTO gas_station_maintenance_logs_ext VALUES (3,103,'2024-03-20','T012','Evening','WO-1032',503,'E09','HVAC fan malfunction','FanMotor;Sealant',230.00,3.2,45.0,376.00,0,NULL,0,'Level1','Awaiting spare motor','TechMike','2024-03-20 18:45:00');

-- Fleet driver schedule
CREATE TABLE fleet_driver_schedule
(
    ScheduleID INTEGER PRIMARY KEY,
    DriverID INTEGER,
    VehicleID INTEGER,
    RouteID INTEGER,
    ShiftDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    AssignedRegion TEXT,
    LoadType TEXT,
    ExpectedMileage REAL,
    EstimatedFuelConsumption REAL,
    BreakCount INTEGER,
    BreakDurationMinutes INTEGER,
    OvertimeHours REAL,
    Status TEXT,
    Notes TEXT,
    SupervisorID INTEGER,
    ApprovedBy INTEGER,
    CreationTimestamp DATETIME,
    LastModifiedTimestamp DATETIME
);

INSERT INTO fleet_driver_schedule VALUES (1,2001,3001,4001,'2024-04-01','08:00','16:00','North','Freight',120.5,15.2,2,30,0.0,'Scheduled','No issues',5001,5002,'2024-03-28 10:00:00','2024-04-01 07:45:00');
INSERT INTO fleet_driver_schedule VALUES (2,2002,3002,4002,'2024-04-01','09:00','17:30','South','Parcel',95.0,10.8,1,45,1.5,'Scheduled','Overtime approved',5003,5004,'2024-03-29 11:20:00','2024-04-01 08:55:00');
INSERT INTO fleet_driver_schedule VALUES (3,2003,3003,4003,'2024-04-02','07:30','15:30','East','Refrigerated',150.0,20.0,2,30,0.0,'Scheduled','Temperature monitor required',5001,5005,'2024-03-30 09:15:00','2024-04-02 07:10:00');

-- Customer device inventory
CREATE TABLE customer_device_inventory
(
    DeviceInventoryID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    DeviceID TEXT,
    DeviceType TEXT,
    Manufacturer TEXT,
    Model TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyEndDate DATE,
    FirmwareVersion TEXT,
    OSVersion TEXT,
    MACAddress TEXT,
    IPAddress TEXT,
    AssignedLocation TEXT,
    Status TEXT,
    LastSyncTimestamp DATETIME,
    BatteryHealthPercent REAL,
    StorageCapacityGB REAL,
    IsPrimaryDevice INTEGER,
    Notes TEXT,
    RecordedBy TEXT
);

INSERT INTO customer_device_inventory VALUES (1,1,'DEV-1001','Smartphone','Acme','XPhone','SN12345','2023-05-10','2025-05-10','v1.2.3','iOS14','00:11:22:33:44:55','192.168.1.10','Home','Active','2024-01-12 08:00:00',95.0,64,1,'Main personal device','AdminUser');
INSERT INTO customer_device_inventory VALUES (2,2,'DEV-2002','Tablet','BetaTech','TabPlus','SN54321','2022-11-22','2024-11-22','v2.0.1','Android11','AA:BB:CC:DD:EE:FF','192.168.1.11','Office','Active','2024-01-10 09:30:00',88.5,128,0,'Secondary work tablet','AdminUser');
INSERT INTO customer_device_inventory VALUES (3,3,'DEV-3003','SmartWatch','Gamma','WatchPro','SN98765','2023-02-15','2024-08-15','v3.5','watchOS7','11:22:33:44:55:66','192.168.1.12','Gym','Inactive','2023-12-01 07:45:00',60.0,0,0,'Battery degraded','AdminUser');

-- Energy certificate audit
CREATE TABLE energy_certificate_audit
(
    AuditID INTEGER PRIMARY KEY,
    CertificateID TEXT,
    Issuer TEXT,
    IssueDate DATE,
    ExpiryDate DATE,
    AssetID INTEGER,
    AssetType TEXT,
    CertifiedCapacityMWh REAL,
    ActualGenerationMWh REAL,
    ComplianceStatus TEXT,
    AuditDate DATE,
    AuditorName TEXT,
    Findings TEXT,
    CorrectiveActionRequired INTEGER,
    CorrectiveActionDueDate DATE,
    FollowUpDate DATE,
    Remarks TEXT,
    DocumentReference TEXT,
    CreatedTimestamp DATETIME,
    ModifiedTimestamp DATETIME
);

INSERT INTO energy_certificate_audit VALUES (1,'CERT-001','GreenCert','2023-01-01','2028-01-01',6001,'SolarFarm',50000,48500,'Compliant','2024-01-15','AuditorA','All parameters within tolerance',0,NULL,NULL,'No issues','DOC-1001','2024-01-15 10:00:00','2024-01-15 10:00:00');
INSERT INTO energy_certificate_audit VALUES (2,'CERT-002','EcoVerify','2022-06-15','2027-06-15',6002,'WindTurbine',30000,29500,'Conditional','2024-02-20','AuditorB','Minor deviation in output during low wind','1','2024-04-01','2024-04-10','Pending corrective measures','DOC-1002','2024-02-20 14:30:00','2024-02-20 14:30:00');
INSERT INTO energy_certificate_audit VALUES (3,'CERT-003','RenewableAccord','2021-09-10','2026-09-10',6003,'HydroPlant',80000,80000,'Compliant','2024-03-05','AuditorC','Full compliance','0',NULL,NULL,'Excellent performance','DOC-1003','2024-03-05 09:45:00','2024-03-05 09:45:00');

-- Roadway construction permits
CREATE TABLE roadway_construction_permits
(
    PermitID INTEGER PRIMARY KEY,
    PermitNumber TEXT,
    Authority TEXT,
    IssueDate DATE,
    ExpiryDate DATE,
    ProjectID INTEGER,
    ProjectName TEXT,
    StartDate DATE,
    EndDate DATE,
    ContractorID INTEGER,
    ContractorName TEXT,
    PermitStatus TEXT,
    EnvironmentalImpactAssessment TEXT,
    NoiseMitigationPlan TEXT,
    TrafficManagementPlan TEXT,
    PublicNotificationSent INTEGER,
    NotificationDate DATE,
    Remarks TEXT,
    CreatedBy TEXT,
    CreatedTimestamp DATETIME,
    ModifiedTimestamp DATETIME
);

INSERT INTO roadway_construction_permits VALUES (1,'RP-1001','DeptOfTransport','2023-12-01','2024-12-01',7001,'MainSt Expansion','2024-01-10','2024-10-30',8001,'BuildCo Ltd','Active','EIA-2023-01','NoisePlan-2023-01','TrafficPlan-2023-02',1,'2023-12-05','All approvals in place','PlannerA','2023-12-01 08:00:00','2024-01-08 12:15:00');
INSERT INTO roadway_construction_permits VALUES (2,'RP-1002','CityCouncil','2024-02-15','2025-02-15',7002,'RiverRd Bridge','2024-03-01','2024-11-15',8002,'BridgeBuilders Inc','Pending','EIA-2024-02','NoisePlan-2024-02','TrafficPlan-2024-03',0,NULL,'Awaiting public notification','PlannerB','2024-02-15 09:30:00','2024-02-20 10:45:00');
INSERT INTO roadway_construction_permits VALUES (3,'RP-1003','StateAgency','2023-08-20','2024-08-20',7003,'OakLane Resurfacing','2023-09-10','2024-06-30',8003,'RoadWorks Co','Completed','EIA-2023-08','NoisePlan-2023-08','TrafficPlan-2023-09',1,'2023-08-25','Project completed successfully','PlannerC','2023-08-20 07:45:00','2024-06-30 16:20:00');

-- Station staff training records
CREATE TABLE station_staff_training_records
(
    TrainingRecordID INTEGER PRIMARY KEY,
    StaffID INTEGER,
    GasStationID INTEGER,
    TrainingCourseID TEXT,
    CourseName TEXT,
    Provider TEXT,
    StartDate DATE,
    EndDate DATE,
    DurationHours REAL,
    CompletionStatus TEXT,
    Score REAL,
    CertificationGranted INTEGER,
    CertificationNumber TEXT,
    TrainerName TEXT,
    TrainingLocation TEXT,
    MaterialsProvided TEXT,
    Feedback TEXT,
    CreatedBy TEXT,
    CreatedTimestamp DATETIME,
    ModifiedTimestamp DATETIME
);

INSERT INTO station_staff_training_records VALUES (1,9001,101,'TC-001','Safety Protocols','SafetyFirst','2024-01-05','2024-01-07',16,'Completed',92.5,1,'CERT-9001','TrainerA','Station101','Handouts;Slides','Very good','HRAdmin','2024-01-07 17:00:00','2024-01-07 17:00:00');
INSERT INTO station_staff_training_records VALUES (2,9002,102,'TC-005','Customer Service','ServicePlus','2024-02-10','2024-02-12',12,'Completed',88.0,1,'CERT-9002','TrainerB','Station102','Workbook','Excellent participation','HRAdmin','2024-02-12 15:30:00','2024-02-12 15:30:00');
INSERT INTO station_staff_training_records VALUES (3,9003,103,'TC-009','Fuel Handling','FuelSafe','2024-03-20','2024-03-22',18,'Completed',95.0,1,'CERT-9003','TrainerC','Station103','Manuals;Videos','Needs refresher on safety','HRAdmin','2024-03-22 18:45:00','2024-03-22 18:45:00');

-- Vehicle fleet lease terms
CREATE TABLE vehicle_fleet_lease_terms
(
    LeaseTermID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    LeaseStartDate DATE,
    LeaseEndDate DATE,
    LeasingCompany TEXT,
    MonthlyRate REAL,
    MileageAllowance INTEGER,
    ExcessMileageRate REAL,
    MaintenanceIncluded INTEGER,
    InsuranceProvided INTEGER,
    EarlyTerminationFee REAL,
    PurchaseOptionPrice REAL,
    ResidualValue REAL,
    LeaseStatus TEXT,
    AssignedDriverID INTEGER,
    FleetCategory TEXT,
    Remarks TEXT,
    CreatedBy TEXT,
    CreatedTimestamp DATETIME,
    ModifiedTimestamp DATETIME
);

INSERT INTO vehicle_fleet_lease_terms VALUES (1,3001,'2023-06-01','2026-05-31','LeaseCo A',650.00,25000,0.15,1,1,5000.00,12000.00,8000.00,'Active',2001,'Delivery','Standard lease','LeaseMgr','2023-05-20 09:00:00','2024-01-10 11:20:00');
INSERT INTO vehicle_fleet_lease_terms VALUES (2,3002,'2024-01-01','2027-12-31','LeaseCo B',720.00,30000,0.12,0,1,6000.00,15000.00,9000.00,'Pending',2002,'Utility','Lease pending approval','LeaseMgr','2023-12-15 10:30:00','2024-01-05 14:45:00');
INSERT INTO vehicle_fleet_lease_terms VALUES (3,3003,'2022-09-15','2025-09-14','LeaseCo C',580.00,22000,0.10,1,0,4500.00,11000.00,7500.00,'Active',2003,'Service','Includes maintenance package','LeaseMgr','2022-08-30 08:15:00','2024-01-02 09:50:00');

-- Digital advertising inventory
CREATE TABLE digital_advertising_inventory
(
    InventoryID INTEGER PRIMARY KEY,
    CampaignID TEXT,
    AdFormat TEXT,
    Placement TEXT,
    Platform TEXT,
    StartDate DATE,
    EndDate DATE,
    ImpressionsAllocated INTEGER,
    ClicksAllocated INTEGER,
    CPM REAL,
    CPC REAL,
    TargetAudience TEXT,
    GeoTarget TEXT,
    DeviceTarget TEXT,
    FrequencyCap INTEGER,
    BudgetAllocated REAL,
    SpendToDate REAL,
    Status TEXT,
    CreativeID TEXT,
    OwnerTeam TEXT,
    CreatedTimestamp DATETIME,
    ModifiedTimestamp DATETIME
);

INSERT INTO digital_advertising_inventory VALUES (1,'CMP-1001','Banner','Header','Web','2024-02-01','2024-04-30',500000,25000,12.5,0.45,'Adults 25-45','NorthAmerica','Desktop',3,20000.00,8500.00,'Active','CR-5001','Marketing','2024-01-20 09:00:00','2024-03-10 12:30:00');
INSERT INTO digital_advertising_inventory VALUES (2,'CMP-1002','Video','Pre-roll','Mobile','2024-03-15','2024-06-15',300000,18000,15.0,0.60,'Teens 13-19','Europe','Mobile',2,15000.00,4000.00,'Paused','CR-5002','Digital','2024-02-28 10:15:00','2024-04-01 14:45:00');
INSERT INTO digital_advertising_inventory VALUES (3,'CMP-1003','Native','Feed','App','2024-01-10','2024-05-10',400000,20000,10.0,0.40,'Adults 30-55','Asia','Tablet',4,18000.00,6500.00,'Active','CR-5003','Performance','2024-01-05 08:30:00','2024-03-20 11:00:00');

-- Public transport vehicle fuel usage
CREATE TABLE public_transport_vehicle_fuel_usage
(
    RecordID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    ServiceDate DATE,
    FuelType TEXT,
    FuelVolumeLiters REAL,
    DistanceKm REAL,
    AvgFuelConsumptionLper100km REAL,
    RouteID INTEGER,
    DriverID INTEGER,
    Shift TEXT,
    EmissionCategory TEXT,
    CO2EmissionsKg REAL,
    TemperatureC REAL,
    LoadFactor REAL,
    MaintenanceFlag INTEGER,
    Notes TEXT,
    RecordedBy TEXT,
    RecordTimestamp DATETIME,
    Verified INTEGER,
    VerificationDate DATE
);

INSERT INTO public_transport_vehicle_fuel_usage VALUES (1,90001,'2024-01-12','Diesel',120.5,800,15.06,5001,2001,'Morning','Euro5',285.0,5.2,0.78,0,'Normal operation','SupervisorA','2024-01-12 18:00:00',1,'2024-01-13');
INSERT INTO public_transport_vehicle_fuel_usage VALUES (2,90002,'2024-02-05','CNG',85.0,600,14.17,5002,2002,'Evening','Euro6',210.0,2.0,0.85,1,'Engine check required','SupervisorB','2024-02-05 20:30:00',0,NULL);
INSERT INTO public_transport_vehicle_fuel_usage VALUES (3,90003,'2024-03-20','Electric',0.0,500,0.0,5003,2003,'Night','Zero','0.0',-1.5,0.90,0,'Battery fully charged','SupervisorC','2024-03-20 22:15:00',1,'2024-03-21');

-- Supplier quality control checks
CREATE TABLE supplier_quality_control_checks
(
    QCCheckID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    ProductCategory TEXT,
    InspectionDate DATE,
    InspectorName TEXT,
    SampleBatchNumber TEXT,
    QuantityInspected INTEGER,
    DefectCount INTEGER,
    DefectRate REAL,
    CriticalDefectFlag INTEGER,
    CorrectiveActionTaken TEXT,
    FollowUpDate DATE,
    PassFailStatus TEXT,
    Remarks TEXT,
    DocumentReference TEXT,
    CreatedBy TEXT,
    CreatedTimestamp DATETIME,
    ModifiedTimestamp DATETIME,
    ApprovedBy TEXT,
    ApprovalTimestamp DATETIME
);

INSERT INTO supplier_quality_control_checks VALUES (1,801,'Fuel','2024-01-20','InspectorA','BATCH-1001',500,2,0.4,0,'Reworked defective units','2024-02-05','Pass','All parameters within limits','DOC-2001','QCLead','2024-01-20 09:30:00','2024-01-20 09:30:00','QCManager','2024-01-20 10:00:00');
INSERT INTO supplier_quality_control_checks VALUES (2,802,'Lubricants','2024-02-15','InspectorB','BATCH-2002',300,8,2.67,1,'Supplier notified for root cause','2024-03-10','Fail','High defect rate in viscosity','DOC-2002','QCLead','2024-02-15 10:45:00','2024-02-15 10:45:00','QCManager','2024-02-15 11:15:00');
INSERT INTO supplier_quality_control_checks VALUES (3,803,'SpareParts','2024-03-05','InspectorC','BATCH-3003',400,0,0.0,0,'No action required','2024-03-20','Pass','Perfect batch','DOC-2003','QCLead','2024-03-05 08:20:00','2024-03-05 08:20:00','QCManager','2024-03-05 08:55:00');

-- Regional demand forecast models
CREATE TABLE regional_demand_forecast_models
(
    ModelID INTEGER PRIMARY KEY,
    RegionCode TEXT,
    ForecastYear INTEGER,
    ForecastMonth INTEGER,
    ProductID INTEGER,
    ModelName TEXT,
    Algorithm TEXT,
    TrainingDataStart DATE,
    TrainingDataEnd DATE,
    ValidationRMSE REAL,
    ForecastedDemand REAL,
    ConfidenceIntervalLow REAL,
    ConfidenceIntervalHigh REAL,
    SeasonalityFactor REAL,
    TrendFactor REAL,
    LastUpdated DATE,
    UpdatedBy TEXT,
    ModelStatus TEXT,
    Notes TEXT,
    CreatedTimestamp DATETIME
);

INSERT INTO regional_demand_forecast_models VALUES (1,'US-NE',2024,1,1,'DemandModelA','ARIMA','2021-01-01','2023-12-31',2.35,15000,14000,16000,1.05,0.98,'2024-01-02','DataScientistA','Deployed','Quarterly forecast model','2024-01-01 12:00:00');
INSERT INTO regional_demand_forecast_models VALUES (2,'EU-W',2024,1,2,'DemandModelB','Prophet','2020-01-01','2023-12-31',3.10,23000,21000,25000,0.97,1.02,'2024-01-03','DataScientistB','Testing','Model being validated','2024-01-02 15:30:00');
INSERT INTO regional_demand_forecast_models VALUES (3,'AP-SE',2024,1,3,'DemandModelC','LSTM','2019-01-01','2023-12-31',1.80,12000,11500,12500,1.00,1.00,'2024-01-04','DataScientistC','Deployed','Neural network based model','2024-01-03 09:45:00');

-- Vehicle telemetry summary
CREATE TABLE vehicle_telemetry_summary
(
    SummaryID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    SummaryDate DATE,
    TotalDistanceKm REAL,
    AvgSpeedKph REAL,
    MaxSpeedKph REAL,
    TotalEngineHours REAL,
    FuelConsumedLiters REAL,
    AvgFuelEfficiencyLper100km REAL,
    HardBrakesCount INTEGER,
    RapidAccelerations INTEGER,
    IdleTimeMinutes REAL,
    AvgEngineLoadPercent REAL,
    MaxEngineLoadPercent REAL,
    EmissionCO2Kg REAL,
    TirePressureAvgBar REAL,
    BatteryHealthPercent REAL,
    GPSSignalLossCount INTEGER,
    DataQualityScore REAL,
    Remarks TEXT,
    CreatedTimestamp DATETIME,
    ModifiedTimestamp DATETIME
);

INSERT INTO vehicle_telemetry_summary VALUES (1,3001,'2024-03-31',1250.5,55.2,108.0,250.0,180.0,14.4,5,8,120.5,68.0,95.0,2100.0,2.3,92.5,2,0.96,'Normal operation','2024-04-01 08:00:00','2024-04-01 08:00:00');
INSERT INTO vehicle_telemetry_summary VALUES (2,3002,'2024-03-31',980.0,48.7,95.0,210.0,155.0,15.8,3,4,95.0,62.0,90.0,1800.0,2.2,88.0,1,0.93,'Slightly lower efficiency','2024-04-01 08:10:00','2024-04-01 08:10:00');
INSERT INTO vehicle_telemetry_summary VALUES (3,3003,'2024-03-31',1430.2,60.1,112.5,300.0,210.0,13.5,7,10,140.0,72.0,98.0,2500.0,2.4,95.0,3,0.98,'Excellent performance','2024-04-01 08:20:00','2024-04-01 08:20:00');

-- Fleet operator metrics
CREATE TABLE fleet_operator_metrics
(
    MetricID INTEGER PRIMARY KEY,
    OperatorID INTEGER,
    ReportingPeriod TEXT,
    TotalVehicles INTEGER,
    ActiveVehicles INTEGER,
    InactiveVehicles INTEGER,
    TotalMileageKm REAL,
    AvgVehicleAgeYears REAL,
    MaintenanceCostTotal REAL,
    FuelCostTotal REAL,
    EmissionsCO2TotalKg REAL,
    AccidentCount INTEGER,
    IncidentSeverityAvg REAL,
    DriverTurnoverRate REAL,
    ComplianceScore REAL,
    SafetyTrainingHours REAL,
    AvgIdleTimeMinutes REAL,
    UtilizationRate REAL,
    CostPerMile REAL,
    Remarks TEXT,
    CreatedTimestamp DATETIME,
    ModifiedTimestamp DATETIME
);

INSERT INTO fleet_operator_metrics VALUES (1,90001,'2023-Q4',350,320,30,210000.0,4.5,125000.0,85000.0,310000.0,12,2.1,0.08,92.5,1500.0,45.0,0.89,0.62,'Steady performance','2024-01-05 09:00:00','2024-01-05 09:00:00');
INSERT INTO fleet_operator_metrics VALUES (2,90002,'2023-Q4',200,180,20,120000.0,5.0,75000.0,60000.0,180000.0,8,1.9,0.06,94.0,1300.0,38.0,0.85,0.68,'Improving safety','2024-01-06 10:15:00','2024-01-06 10:15:00');
INSERT INTO fleet_operator_metrics VALUES (3,90003,'2023-Q4',500,470,30,340000.0,3.8,200000.0,150000.0,500000.0,20,2.5,0.10,89.0,1800.0,52.0,0.92,0.71,'High utilization','2024-01-07 11:30:00','2024-01-07 11:30:00');