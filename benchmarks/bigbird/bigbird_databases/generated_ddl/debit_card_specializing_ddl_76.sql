-- Vehicle geofence events tracking
CREATE TABLE vehicle_geofence_events
(
    EventID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    GeofenceID INTEGER,
    EntryTime TEXT,
    ExitTime TEXT,
    DurationSec INTEGER,
    SpeedAtEntry REAL,
    SpeedAtExit REAL,
    LatitudeEntry REAL,
    LongitudeEntry REAL,
    LatitudeExit REAL,
    LongitudeExit REAL,
    EventType TEXT,
    BatteryLevel REAL,
    FirmwareVersion TEXT,
    DriverID INTEGER,
    OdometerKm REAL,
    AlertSeverity TEXT,
    NotificationSent INTEGER,
    ProcessedFlag INTEGER,
    CreatedAt TEXT,
    UpdatedAt TEXT
);

INSERT INTO vehicle_geofence_events (EventID,VehicleID,GeofenceID,EntryTime,ExitTime,DurationSec,SpeedAtEntry,SpeedAtExit,LatitudeEntry,LongitudeEntry,LatitudeExit,LongitudeExit,EventType,BatteryLevel,FirmwareVersion,DriverID,OdometerKm,AlertSeverity,NotificationSent,ProcessedFlag,CreatedAt,UpdatedAt) VALUES
(1,101,5001,'2023-07-01 08:15:00','2023-07-01 08:20:00',300,45.2,47.5,40.7128,-74.0060,40.7135,-74.0055,'Entry',78.5,'v1.3.2',2001,15234.7,'High',1,0,'2023-07-01 08:21:00','2023-07-01 08:21:00');

INSERT INTO vehicle_geofence_events (EventID,VehicleID,GeofenceID,EntryTime,ExitTime,DurationSec,SpeedAtEntry,SpeedAtExit,LatitudeEntry,LongitudeEntry,LatitudeExit,LongitudeExit,EventType,BatteryLevel,FirmwareVersion,DriverID,OdometerKm,AlertSeverity,NotificationSent,ProcessedFlag,CreatedAt,UpdatedAt) VALUES
(2,102,5002,'2023-07-02 12:05:00','2023-07-02 12:12:00',420,30.0,32.1,34.0522,-118.2437,34.0528,-118.2430,'Exit',65.0,'v1.3.5',2002,20345.2,'Medium',1,1,'2023-07-02 12:13:00','2023-07-02 12:13:00');

INSERT INTO vehicle_geofence_events (EventID,VehicleID,GeofenceID,EntryTime,ExitTime,DurationSec,SpeedAtEntry,SpeedAtExit,LatitudeEntry,LongitudeEntry,LatitudeExit,LongitudeExit,EventType,BatteryLevel,FirmwareVersion,DriverID,OdometerKm,AlertSeverity,NotificationSent,ProcessedFlag,CreatedAt,UpdatedAt) VALUES
(3,103,5003,'2023-07-03 15:45:00','2023-07-03 15:50:00',300,55.0,54.3,51.5074,-0.1278,51.5080,-0.1270,'Dwell',82.1,'v1.4.0',2003,9876.4,'Low',0,0,'2023-07-03 15:51:00','2023-07-03 15:51:00');

-- Gas station solar generation records
CREATE TABLE gas_station_solar_generation
(
    RecordID INTEGER PRIMARY KEY,
    StationID INTEGER,
    Date TEXT,
    EnergyGeneratedKWh REAL,
    PanelCount INTEGER,
    AvgPanelEfficiency REAL,
    WeatherCondition TEXT,
    TemperatureC REAL,
    SunlightHours REAL,
    MaintenanceStatus TEXT,
    InverterHealth REAL,
    CO2OffsetKg REAL,
    GridFeedInKWh REAL,
    PeakPowerKW REAL,
    SystemAgeYears INTEGER,
    LastInspectionDate TEXT,
    TechnicianID INTEGER,
    FundingSource TEXT,
    CostPerKWh REAL,
    RevenueGenerated REAL,
    CreatedAt TEXT,
    UpdatedAt TEXT
);

INSERT INTO gas_station_solar_generation (RecordID,StationID,Date,EnergyGeneratedKWh,PanelCount,AvgPanelEfficiency,WeatherCondition,TemperatureC,SunlightHours,MaintenanceStatus,InverterHealth,CO2OffsetKg,GridFeedInKWh,PeakPowerKW,SystemAgeYears,LastInspectionDate,TechnicianID,FundingSource,CostPerKWh,RevenueGenerated,CreatedAt,UpdatedAt) VALUES
(1,10,'2023-06-30',1200.5,250,18.5,'Clear',25.3,8.2,'Good',96.7,720.3,1150.0,150.0,5,'2023-06-15',301,'GovernmentGrant',0.08,96.0,'2023-06-30 00:00:00','2023-06-30 00:00:00');

INSERT INTO gas_station_solar_generation (RecordID,StationID,Date,EnergyGeneratedKWh,PanelCount,AvgPanelEfficiency,WeatherCondition,TemperatureC,SunlightHours,MaintenanceStatus,InverterHealth,CO2OffsetKg,GridFeedInKWh,PeakPowerKW,SystemAgeYears,LastInspectionDate,TechnicianID,FundingSource,CostPerKWh,RevenueGenerated,CreatedAt,UpdatedAt) VALUES
(2,11,'2023-06-30',980.2,200,17.9,'PartlyCloudy',22.1,7.5,'Good',94.2,590.1,940.0,130.0,4,'2023-06-10',302,'Corporate',0.09,88.2,'2023-06-30 00:00:00','2023-06-30 00:00:00');

INSERT INTO gas_station_solar_generation (RecordID,StationID,Date,EnergyGeneratedKWh,PanelCount,AvgPanelEfficiency,WeatherCondition,TemperatureC,SunlightHours,MaintenanceStatus,InverterHealth,CO2OffsetKg,GridFeedInKWh,PeakPowerKW,SystemAgeYears,LastInspectionDate,TechnicianID,FundingSource,CostPerKWh,RevenueGenerated,CreatedAt,UpdatedAt) VALUES
(3,12,'2023-06-30',1505.0,300,19.0,'Sunny',27.0,9.0,'Good',98.1,903.0,1450.0,170.0,6,'2023-06-20',303,'UtilityPartner',0.07,120.4,'2023-06-30 00:00:00','2023-06-30 00:00:00');

-- Customer complaint cases
CREATE TABLE customer_complaint_cases
(
    ComplaintID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    IssueCategory TEXT,
    IssueDescription TEXT,
    ReportedDate TEXT,
    ResolvedDate TEXT,
    ResolutionStatus TEXT,
    AssignedAgentID INTEGER,
    PriorityLevel TEXT,
    ContactMethod TEXT,
    FollowUpRequired INTEGER,
    FollowUpDate TEXT,
    SatisfactionScore INTEGER,
    EscalatedFlag INTEGER,
    RefundAmount REAL,
    CompensationType TEXT,
    ProductID INTEGER,
    TransactionID INTEGER,
    CreatedAt TEXT,
    UpdatedAt TEXT
);

INSERT INTO customer_complaint_cases (ComplaintID,CustomerID,IssueCategory,IssueDescription,ReportedDate,ResolvedDate,ResolutionStatus,AssignedAgentID,PriorityLevel,ContactMethod,FollowUpRequired,FollowUpDate,SatisfactionScore,EscalatedFlag,RefundAmount,CompensationType,ProductID,TransactionID,CreatedAt,UpdatedAt) VALUES
(1,1001,'Pricing','Incorrect price displayed at pump','2023-07-01','2023-07-03','Resolved',5001,'High','Email',1,'2023-07-05',9,0,5.00,'Refund',200,3001,'2023-07-01 09:00:00','2023-07-03 15:00:00');

INSERT INTO customer_complaint_cases (ComplaintID,CustomerID,IssueCategory,IssueDescription,ReportedDate,ResolvedDate,ResolutionStatus,AssignedAgentID,PriorityLevel,ContactMethod,FollowUpRequired,FollowUpDate,SatisfactionScore,EscalatedFlag,RefundAmount,CompensationType,ProductID,TransactionID,CreatedAt,UpdatedAt) VALUES
(2,1002,'Service','Card declined despite sufficient balance','2023-07-02','2023-07-04','Resolved',5002,'Medium','Phone',0,NULL,8,0,0.00,'None',201,3002,'2023-07-02 11:30:00','2023-07-04 14:20:00');

INSERT INTO customer_complaint_cases (ComplaintID,CustomerID,IssueCategory,IssueDescription,ReportedDate,ResolvedDate,ResolutionStatus,AssignedAgentID,PriorityLevel,ContactMethod,FollowUpRequired,FollowUpDate,SatisfactionScore,EscalatedFlag,RefundAmount,CompensationType,ProductID,TransactionID,CreatedAt,UpdatedAt) VALUES
(3,1003,'Quality','Fuel smelled contaminated','2023-07-03','2023-07-06','Escalated',5003,'Critical','Chat',1,'2023-07-08',5,1,20.00,'PartialRefund',202,3003,'2023-07-03 14:45:00','2023-07-06 10:00:00');

-- Supplier contract milestones
CREATE TABLE supplier_contract_milestones
(
    MilestoneID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    ContractID INTEGER,
    MilestoneName TEXT,
    DueDate TEXT,
    CompletionDate TEXT,
    Status TEXT,
    ResponsibleDept TEXT,
    BudgetAllocated REAL,
    ActualSpend REAL,
    PenaltyClause TEXT,
    PerformanceScore INTEGER,
    DocumentationURL TEXT,
    ApprovedBy INTEGER,
    CreatedAt TEXT,
    UpdatedAt TEXT,
    Notes TEXT,
    RiskLevel TEXT,
    Currency TEXT,
    ExchangeRate REAL
);

INSERT INTO supplier_contract_milestones (MilestoneID,SupplierID,ContractID,MilestoneName,DueDate,CompletionDate,Status,ResponsibleDept,BudgetAllocated,ActualSpend,PenaltyClause,PerformanceScore,DocumentationURL,ApprovedBy,CreatedAt,UpdatedAt,Notes,RiskLevel,Currency,ExchangeRate) VALUES
(1,3001,4001,'InitialSupply','2023-08-01','2023-07-28','Completed','Procurement',50000.00,49500.00,'5% per week delay',92,'http://docs.example.com/m1',6001,'2023-07-01','2023-07-28','On time delivery','Low','USD',1.0);

INSERT INTO supplier_contract_milestones (MilestoneID,SupplierID,ContractID,MilestoneName,DueDate,CompletionDate,Status,ResponsibleDept,BudgetAllocated,ActualSpend,PenaltyClause,PerformanceScore,DocumentationURL,ApprovedBy,CreatedAt,UpdatedAt,Notes,RiskLevel,Currency,ExchangeRate) VALUES
(2,3002,4002,'MidtermAudit','2023-09-15',NULL,'Pending','Compliance',20000.00,0.00,'10% penalty after 30 days',0,'http://docs.example.com/m2',6002,'2023-08-01','2023-08-01','Awaiting supplier response','Medium','EUR',0.92);

INSERT INTO supplier_contract_milestones (MilestoneID,SupplierID,ContractID,MilestoneName,DueDate,CompletionDate,Status,ResponsibleDept,BudgetAllocated,ActualSpend,PenaltyClause,PerformanceScore,DocumentationURL,ApprovedBy,CreatedAt,UpdatedAt,Notes,RiskLevel,Currency,ExchangeRate) VALUES
(3,3003,4003,'FinalDelivery','2023-12-31',NULL,'Planned','Logistics',150000.00,0.00,'2% per day delay',0,'http://docs.example.com/m3',6003,'2023-09-01','2023-09-01','Contract renewal pending','High','GBP',0.81);

-- Regional fuel price variance
CREATE TABLE regional_fuel_price_variance
(
    VarianceID INTEGER PRIMARY KEY,
    RegionID INTEGER,
    YearMonth TEXT,
    BasePrice REAL,
    AvgPrice REAL,
    MaxPrice REAL,
    MinPrice REAL,
    StdDev REAL,
    PriceChangePct REAL,
    FuelType TEXT,
    Currency TEXT,
    DataSource TEXT,
    AdjustedForInflationFlag INTEGER,
    InflationRate REAL,
    AnalystID INTEGER,
    Comments TEXT,
    PriceIndex REAL,
    VolumeSold REAL,
    SeasonalityFactor REAL,
    CreatedAt TEXT,
    UpdatedAt TEXT
);

INSERT INTO regional_fuel_price_variance (VarianceID,RegionID,YearMonth,BasePrice,AvgPrice,MaxPrice,MinPrice,StdDev,PriceChangePct,FuelType,Currency,DataSource,AdjustedForInflationFlag,InflationRate,AnalystID,Comments,PriceIndex,VolumeSold,SeasonalityFactor,CreatedAt,UpdatedAt) VALUES
(1,101,'2023-06',2.85,2.92,3.10,2.70,0.12,1.5,'Diesel','USD','Internal',1,0.03,9001,'Stable market',110.5,250000,1.02,'2023-06-30 00:00:00','2023-06-30 00:00:00');

INSERT INTO regional_fuel_price_variance (VarianceID,RegionID,YearMonth,BasePrice,AvgPrice,MaxPrice,MinPrice,StdDev,PriceChangePct,FuelType,Currency,DataSource,AdjustedForInflationFlag,InflationRate,AnalystID,Comments,PriceIndex,VolumeSold,SeasonalityFactor,CreatedAt,UpdatedAt) VALUES
(2,102,'2023-06',2.70,2.78,2.95,2.55,0.10,2.0,'Petrol','EUR','External',0,0.00,9002,'Higher demand due to holidays',105.3,180000,0.98,'2023-06-30 00:00:00','2023-06-30 00:00:00');

INSERT INTO regional_fuel_price_variance (VarianceID,RegionID,YearMonth,BasePrice,AvgPrice,MaxPrice,MinPrice,StdDev,PriceChangePct,FuelType,Currency,DataSource,AdjustedForInflationFlag,InflationRate,AnalystID,Comments,PriceIndex,VolumeSold,SeasonalityFactor,CreatedAt,UpdatedAt) VALUES
(3,103,'2023-06',2.95,3.02,3.25,2.80,0.15,1.2,'Diesel','GBP','Internal',1,0.02,9003,'Supply constraints observed',112.7,300000,1.05,'2023-06-30 00:00:00','2023-06-30 00:00:00');

-- Vehicle fleet emissions targets
CREATE TABLE vehicle_fleet_emissions_targets
(
    TargetID INTEGER PRIMARY KEY,
    VehicleModel TEXT,
    TargetYear INTEGER,
    CO2ePerKm REAL,
    EmissionStandard TEXT,
    RegulatoryBody TEXT,
    TargetSetBy TEXT,
    ApprovalDate TEXT,
    Status TEXT,
    CurrentEmission REAL,
    GapToTarget REAL,
    IncentiveProgram TEXT,
    FundingAmount REAL,
    Currency TEXT,
    VerificationMethod TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT,
    Remarks TEXT,
    ComplianceDeadline TEXT,
    PenaltyClause TEXT
);

INSERT INTO vehicle_fleet_emissions_targets (TargetID,VehicleModel,TargetYear,CO2ePerKm,EmissionStandard,RegulatoryBody,TargetSetBy,ApprovalDate,Status,CurrentEmission,GapToTarget,IncentiveProgram,FundingAmount,Currency,VerificationMethod,CreatedAt,UpdatedAt,Remarks,ComplianceDeadline,PenaltyClause) VALUES
(1,'ModelX',2025,0.12,'EURO VI','EU','Corporate','2023-01-15','Active',0.20,0.08,'GreenBonus',500000,'EUR','ThirdPartyAudit','2023-01-20','2023-01-20','Initial target set','2025-12-31','5% of profit');

INSERT INTO vehicle_fleet_emissions_targets (TargetID,VehicleModel,TargetYear,CO2ePerKm,EmissionStandard,RegulatoryBody,TargetSetBy,ApprovalDate,Status,CurrentEmission,GapToTarget,IncentiveProgram,FundingAmount,Currency,VerificationMethod,CreatedAt,UpdatedAt,Remarks,ComplianceDeadline,PenaltyClause) VALUES
(2,'ModelY',2026,0.10,'EPA Tier 3','EPA','Corporate','2023-02-10','Planned',0.15,0.05,'TaxCredit',750000,'USD','InternalMonitoring','2023-02-15','2023-02-15','Pending technology upgrade','2026-12-31','2% surcharge');

INSERT INTO vehicle_fleet_emissions_targets (TargetID,VehicleModel,TargetYear,CO2ePerKm,EmissionStandard,RegulatoryBody,TargetSetBy,ApprovalDate,Status,CurrentEmission,GapToTarget,IncentiveProgram,FundingAmount,Currency,VerificationMethod,CreatedAt,UpdatedAt,Remarks,ComplianceDeadline,PenaltyClause) VALUES
(3,'ModelZ',2027,0.09,'EURO VI','EU','Corporate','2023-03-05','Planned',0.13,0.04,'EmissionTrading',600000,'EUR','ThirdPartyAudit','2023-03-10','2023-03-10','Research phase','2027-12-31','3% of revenue');

-- Employee training sessions
CREATE TABLE employee_training_sessions
(
    SessionID INTEGER PRIMARY KEY,
    EmployeeID INTEGER,
    TrainingModule TEXT,
    TrainerName TEXT,
    StartDate TEXT,
    EndDate TEXT,
    DurationHours REAL,
    CompletionStatus TEXT,
    Score REAL,
    CertificateIssuedFlag INTEGER,
    CertificateID TEXT,
    Location TEXT,
    TrainingMethod TEXT,
    Cost REAL,
    Currency TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT,
    FeedbackScore REAL,
    FollowUpRequired INTEGER,
    FollowUpDate TEXT
);

INSERT INTO employee_training_sessions (SessionID,EmployeeID,TrainingModule,TrainerName,StartDate,EndDate,DurationHours,CompletionStatus,Score,CertificateIssuedFlag,CertificateID,Location,TrainingMethod,Cost,Currency,CreatedAt,UpdatedAt,FeedbackScore,FollowUpRequired,FollowUpDate) VALUES
(1,4001,'Safety Awareness','John Doe','2023-07-01','2023-07-01',4.0,'Completed',95.0,1,'CERT1001','Headquarters','InPerson',200.00,'USD','2023-07-01','2023-07-01',4.5,0,NULL);

INSERT INTO employee_training_sessions (SessionID,EmployeeID,TrainingModule,TrainerName,StartDate,EndDate,DurationHours,CompletionStatus,Score,CertificateIssuedFlag,CertificateID,Location,TrainingMethod,Cost,Currency,CreatedAt,UpdatedAt,FeedbackScore,FollowUpRequired,FollowUpDate) VALUES
(2,4002,'Advanced Analytics','Jane Smith','2023-07-05','2023-07-07',12.0,'Completed',88.0,1,'CERT1002','Regional Office','Online',500.00,'USD','2023-07-05','2023-07-07',4.0,1,'2023-08-01');

INSERT INTO employee_training_sessions (SessionID,EmployeeID,TrainingModule,TrainerName,StartDate,EndDate,DurationHours,CompletionStatus,Score,CertificateIssuedFlag,CertificateID,Location,TrainingMethod,Cost,Currency,CreatedAt,UpdatedAt,FeedbackScore,FollowUpRequired,FollowUpDate) VALUES
(3,4003,'Leadership Development','Emily Clark','2023-07-10','2023-07-12',15.0,'Pending',NULL,0,NULL,'HQ','InPerson',800.00,'USD','2023-07-10','2023-07-10',NULL,0,NULL);

-- Fuel station air quality measurements
CREATE TABLE fuel_station_air_quality
(
    MeasurementID INTEGER PRIMARY KEY,
    StationID INTEGER,
    MeasurementDate TEXT,
    PM2_5 REAL,
    PM10 REAL,
    NO2 REAL,
    SO2 REAL,
    CO REAL,
    O3 REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    WindSpeedMps REAL,
    WindDirectionDeg INTEGER,
    AQI INTEGER,
    MeasurementDeviceID INTEGER,
    CalibrationDate TEXT,
    TechnicianID INTEGER,
    Remarks TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT,
    DataSource TEXT
);

INSERT INTO fuel_station_air_quality (MeasurementID,StationID,MeasurementDate,PM2_5,PM10,NO2,SO2,CO,O3,TemperatureC,HumidityPercent,WindSpeedMps,WindDirectionDeg,AQI,MeasurementDeviceID,CalibrationDate,TechnicianID,Remarks,CreatedAt,UpdatedAt,DataSource) VALUES
(1,10,'2023-07-01',12.5,25.0,0.018,0.004,0.5,30.0,22.0,55.0,3.2,180,45,501,'2023-06-15',301,'Normal conditions','2023-07-01','2023-07-01','Internal');

INSERT INTO fuel_station_air_quality (MeasurementID,StationID,MeasurementDate,PM2_5,PM10,NO2,SO2,CO,O3,TemperatureC,HumidityPercent,WindSpeedMps,WindDirectionDeg,AQI,MeasurementDeviceID,CalibrationDate,TechnicianID,Remarks,CreatedAt,UpdatedAt,DataSource) VALUES
(2,11,'2023-07-01',18.0,35.0,0.030,0.006,0.7,28.0,24.0,60.0,2.8,200,60,502,'2023-06-20',302,'Slightly elevated PM','2023-07-01','2023-07-01','Internal');

INSERT INTO fuel_station_air_quality (MeasurementID,StationID,MeasurementDate,PM2_5,PM10,NO2,SO2,CO,O3,TemperatureC,HumidityPercent,WindSpeedMps,WindDirectionDeg,AQI,MeasurementDeviceID,CalibrationDate,TechnicianID,Remarks,CreatedAt,UpdatedAt,DataSource) VALUES
(3,12,'2023-07-01',9.0,20.0,0.012,0.003,0.4,32.0,20.0,50.0,4.0,150,30,503,'2023-06-10',303,'Good air quality','2023-07-01','2023-07-01','Internal');

-- Vehicle OEM warranty details
CREATE TABLE vehicle_oem_warranty_details
(
    WarrantyID INTEGER PRIMARY KEY,
    OEMID INTEGER,
    VehicleModel TEXT,
    VIN TEXT,
    WarrantyStartDate TEXT,
    WarrantyEndDate TEXT,
    CoverageType TEXT,
    MileageLimitKm REAL,
    ServiceProviderID INTEGER,
    ClaimCount INTEGER,
    ClaimsApproved INTEGER,
    ClaimsRejected INTEGER,
    WarrantyStatus TEXT,
    ExtendedWarrantyFlag INTEGER,
    ExtensionEndDate TEXT,
    Cost REAL,
    Currency TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT,
    Notes TEXT
);

INSERT INTO vehicle_oem_warranty_details (WarrantyID,OEMID,VehicleModel,VIN,WarrantyStartDate,WarrantyEndDate,CoverageType,MileageLimitKm,ServiceProviderID,ClaimCount,ClaimsApproved,ClaimsRejected,WarrantyStatus,ExtendedWarrantyFlag,ExtensionEndDate,Cost,Currency,CreatedAt,UpdatedAt,Notes) VALUES
(1,8001,'ModelA','1HGCM82633A004352','2022-01-01','2025-01-01','Powertrain',120000,9001,3,2,1,'Active',0,NULL,1500.00,'USD','2022-01-01','2022-01-01','Standard warranty');

INSERT INTO vehicle_oem_warranty_details (WarrantyID,OEMID,VehicleModel,VIN,WarrantyStartDate,WarrantyEndDate,CoverageType,MileageLimitKm,ServiceProviderID,ClaimCount,ClaimsApproved,ClaimsRejected,WarrantyStatus,ExtendedWarrantyFlag,ExtensionEndDate,Cost,Currency,CreatedAt,UpdatedAt,Notes) VALUES
(2,8002,'ModelB','2FTRX18W1XCA12345','2021-06-15','2024-06-15','Comprehensive',150000,9002,5,4,1,'Active',1,'2026-06-15',2000.00,'EUR','2021-06-15','2021-06-15','Extended until 2026');

INSERT INTO vehicle_oem_warranty_details (WarrantyID,OEMID,VehicleModel,VIN,WarrantyStartDate,WarrantyEndDate,CoverageType,MileageLimitKm,ServiceProviderID,ClaimCount,ClaimsApproved,ClaimsRejected,WarrantyStatus,ExtendedWarrantyFlag,ExtensionEndDate,Cost,Currency,CreatedAt,UpdatedAt,Notes) VALUES
(3,8003,'ModelC','3VWFE21C04M000001','2020-03-01','2023-03-01','Basic',100000,9003,2,2,0,'Expired',0,NULL,1200.00,'GBP','2020-03-01','2020-03-01','Warranty expired');

-- Corporate event participation records
CREATE TABLE corporate_event_participation
(
    ParticipationID INTEGER PRIMARY KEY,
    EventID INTEGER,
    EmployeeID INTEGER,
    Role TEXT,
    AttendanceStatus TEXT,
    ArrivalTime TEXT,
    DepartureTime TEXT,
    TravelMode TEXT,
    TravelCost REAL,
    Currency TEXT,
    AccommodationProvidedFlag INTEGER,
    AccommodationCost REAL,
    MealsProvidedFlag INTEGER,
    MealsCost REAL,
    SponsorshipLevel TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT,
    FeedbackScore REAL,
    Remarks TEXT
);

INSERT INTO corporate_event_participation (ParticipationID,EventID,EmployeeID,Role,AttendanceStatus,ArrivalTime,DepartureTime,TravelMode,TravelCost,Currency,AccommodationProvidedFlag,AccommodationCost,MealsProvidedFlag,MealsCost,SponsorshipLevel,CreatedAt,UpdatedAt,FeedbackScore,Remarks) VALUES
(1,2001,5001,'Speaker','Attended','2023-07-10 08:30:00','2023-07-10 17:30:00','Air','350.00','USD',1,500.00,1,120.00,'Gold','2023-06-15','2023-07-11',4.8,'Keynote presentation');

INSERT INTO corporate_event_participation (ParticipationID,EventID,EmployeeID,Role,AttendanceStatus,ArrivalTime,DepartureTime,TravelMode,TravelCost,Currency,AccommodationProvidedFlag,AccommodationCost,MealsProvidedFlag,MealsCost,SponsorshipLevel,CreatedAt,UpdatedAt,FeedbackScore,Remarks) VALUES
(2,2002,5002,'Attendee','Attended','2023-08-05 09:00:00','2023-08-05 18:00:00','Train','80.00','EUR',0,0.00,1,60.00,'Silver','2023-07-01','2023-08-06',4.2,'Participated in panel');

INSERT INTO corporate_event_participation (ParticipationID,EventID,EmployeeID,Role,AttendanceStatus,ArrivalTime,DepartureTime,TravelMode,TravelCost,Currency,AccommodationProvidedFlag,AccommodationCost,MealsProvidedFlag,MealsCost,SponsorshipLevel,CreatedAt,UpdatedAt,FeedbackScore,Remarks) VALUES
(3,2003,5003,'Volunteer','Cancelled','NULL','NULL','Car','0.00','USD',0,0.00,0,0.00,'Bronze','2023-07-20','2023-07-20',NULL,'Was unable to attend due to scheduling conflict');