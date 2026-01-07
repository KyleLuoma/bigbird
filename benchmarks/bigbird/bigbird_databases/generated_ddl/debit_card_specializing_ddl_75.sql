-- Facility maintenance logs capturing detailed service records for company facilities
CREATE TABLE facility_maintenance_logs
(
    LogID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    FacilityName TEXT,
    MaintenanceDate DATE,
    MaintenanceType TEXT,
    TechnicianID INTEGER,
    TechnicianName TEXT,
    Shift TEXT,
    DurationHours REAL,
    CostDECIMAL REAL,
    WorkOrderNumber TEXT,
    PartsUsed TEXT,
    PartsCost REAL,
    Comments TEXT,
    Status TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Region TEXT,
    City TEXT,
    ZipCode TEXT,
    Latitude REAL,
    Longitude REAL,
    VendorID INTEGER,
    VendorName TEXT,
    InspectionScore INTEGER,
    FollowUpRequired TEXT,
    FollowUpDate DATE,
    NextScheduledDate DATE,
    ApprovalCode TEXT,
    IsEmergency INTEGER
);

INSERT INTO facility_maintenance_logs (LogID,FacilityID,FacilityName,MaintenanceDate,MaintenanceType,TechnicianID,TechnicianName,Shift,DurationHours,CostDECIMAL,WorkOrderNumber,PartsUsed,PartsCost,Comments,Status,CreatedAt,UpdatedAt,Region,City,ZipCode,Latitude,Longitude,VendorID,VendorName,InspectionScore,FollowUpRequired,FollowUpDate,NextScheduledDate,ApprovalCode,IsEmergency) VALUES (1,101,'MainDepot','2024-01-15','Electrical',5001,'JohnDoe','Day',4.5,350.75,'WO12345','Cable,Switch',120.00,'Replaced main breaker','Completed','2024-01-15 08:00:00','2024-01-15 12:30:00','North','Springfield','12345',40.7128,-74.0060,2001,'PowerCo',95,'Yes','2024-02-01','2024-03-01','APV01',0);
INSERT INTO facility_maintenance_logs (LogID,FacilityID,FacilityName,MaintenanceDate,MaintenanceType,TechnicianID,TechnicianName,Shift,DurationHours,CostDECIMAL,WorkOrderNumber,PartsUsed,PartsCost,Comments,Status,CreatedAt,UpdatedAt,Region,City,ZipCode,Latitude,Longitude,VendorID,VendorName,InspectionScore,FollowUpRequired,FollowUpDate,NextScheduledDate,ApprovalCode,IsEmergency) VALUES (2,102,'EastWing','2024-02-10','HVAC',5002,'JaneSmith','Night',3.0,210.40,'WO12346','Filter',45.00,'Filter replacement','Completed','2024-02-10 22:00:00','2024-02-11 01:00:00','East','Riverdale','54321',41.2033,-77.1945,2002,'CoolAir',88,'No',NULL,NULL,'APV02',0);
INSERT INTO facility_maintenance_logs (LogID,FacilityID,FacilityName,MaintenanceDate,MaintenanceType,TechnicianID,TechnicianName,Shift,DurationHours,CostDECIMAL,WorkOrderNumber,PartsUsed,PartsCost,Comments,Status,CreatedAt,UpdatedAt,Region,City,ZipCode,Latitude,Longitude,VendorID,VendorName,InspectionScore,FollowUpRequired,FollowUpDate,NextScheduledDate,ApprovalCode,IsEmergency) VALUES (3,103,'WestStorage','2024-03-05','Plumbing',5003,'MikeBrown','Day',2.2,150.00,'WO12347','Pipe,Sealant',30.00,'Fixed leak in storage unit','InProgress','2024-03-05 09:30:00','2024-03-05 11:45:00','West','Lakeside','67890',39.9526,-75.1652,2003,'PipeWorks',80,'Yes','2024-04-01','2024-04-15','APV03',1);

-- Employee benefit enrollment records tracking participation in company benefit plans
CREATE TABLE employee_benefit_enrollments
(
    EnrollmentID INTEGER PRIMARY KEY,
    EmployeeID INTEGER,
    EmployeeFirstName TEXT,
    EmployeeLastName TEXT,
    BenefitPlanID INTEGER,
    BenefitPlanName TEXT,
    EnrollmentDate DATE,
    EffectiveDate DATE,
    TerminationDate DATE,
    CoverageLevel TEXT,
    PremiumAmount REAL,
    EmployerContribution REAL,
    EmployeeContribution REAL,
    DependentCount INTEGER,
    IsActive INTEGER,
    CreatedBy TEXT,
    CreatedAt DATETIME,
    UpdatedBy TEXT,
    UpdatedAt DATETIME,
    Notes TEXT
);

INSERT INTO employee_benefit_enrollments (EnrollmentID,EmployeeID,EmployeeFirstName,EmployeeLastName,BenefitPlanID,BenefitPlanName,EnrollmentDate,EffectiveDate,TerminationDate,CoverageLevel,PremiumAmount,EmployerContribution,EmployeeContribution,DependentCount,IsActive,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,Notes) VALUES (1,1001,'Alice','Johnson',301,'HealthPlus', '2023-06-01','2023-07-01',NULL,'Family',500.00,300.00,200.00,2,1,'HRSystem','2023-06-01 09:00:00','HRSystem','2023-06-01 09:00:00','Initial enrollment');
INSERT INTO employee_benefit_enrollments (EnrollmentID,EmployeeID,EmployeeFirstName,EmployeeLastName,BenefitPlanID,BenefitPlanName,EnrollmentDate,EffectiveDate,TerminationDate,CoverageLevel,PremiumAmount,EmployerContribution,EmployeeContribution,DependentCount,IsActive,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,Notes) VALUES (2,1002,'Bob','Lee',302,'DentalCare', '2023-07-15','2023-08-01',NULL,'Individual',80.00,50.00,30.00,0,1,'HRSystem','2023-07-15 10:30:00','HRSystem','2023-07-15 10:30:00','Enrolled during open enrollment');
INSERT INTO employee_benefit_enrollments (EnrollmentID,EmployeeID,EmployeeFirstName,EmployeeLastName,BenefitPlanID,BenefitPlanName,EnrollmentDate,EffectiveDate,TerminationDate,CoverageLevel,PremiumAmount,EmployerContribution,EmployeeContribution,DependentCount,IsActive,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,Notes) VALUES (3,1003,'Carol','Smith',303,'VisionPlus','2022-12-01','2023-01-01','2024-01-01','Family',120.00,70.00,50.00,1,0,'HRSystem','2022-12-01 08:45:00','HRSystem','2023-06-30 16:00:00','Terminated after one year');

-- Fleet vehicle inspection checklist capturing detailed inspection results
CREATE TABLE fleet_inspection_checklist
(
    InspectionID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    VehicleVIN TEXT,
    InspectorID INTEGER,
    InspectionDate DATE,
    Mileage INTEGER,
    BrakeCondition TEXT,
    TireTreadDepth REAL,
    EngineOilLevel TEXT,
    CoolantLevel TEXT,
    BatteryHealth TEXT,
    LightsFunctional TEXT,
    ExhaustEmissions TEXT,
    SafetyEquipmentStatus TEXT,
    DocumentationComplete TEXT,
    Notes TEXT,
    OverallScore INTEGER,
    Passed INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Location TEXT,
    WeatherConditions TEXT
);

INSERT INTO fleet_inspection_checklist (InspectionID,VehicleID,VehicleVIN,InspectorID,InspectionDate,Mileage,BrakeCondition,TireTreadDepth,EngineOilLevel,CoolantLevel,BatteryHealth,LightsFunctional,ExhaustEmissions,SafetyEquipmentStatus,DocumentationComplete,Notes,OverallScore,Passed,CreatedAt,UpdatedAt,Location,WeatherConditions) VALUES (1,2001,'1HGCM82633A004352',9001,'2024-04-12',45200,'Good',7.5,'Full','Normal','Excellent','All','Meets','All','Yes','No issues','92',1,'2024-04-12 08:00:00','2024-04-12 09:15:00','DepotA','Clear');
INSERT INTO fleet_inspection_checklist (InspectionID,VehicleID,VehicleVIN,InspectorID,InspectionDate,Mileage,BrakeCondition,TireTreadDepth,EngineOilLevel,CoolantLevel,BatteryHealth,LightsFunctional,ExhaustEmissions,SafetyEquipmentStatus,DocumentationComplete,Notes,OverallScore,Passed,CreatedAt,UpdatedAt,Location,WeatherConditions) VALUES (2,2002,'2FTRX18W1XCA12345',9002,'2024-04-13',37800,'Fair',6.0,'Low','Low','Good','Partial','Elevated','Missing','No','Brake pads worn','78',0,'2024-04-13 13:30:00','2024-04-13 15:00:00','DepotB','Rain');
INSERT INTO fleet_inspection_checklist (InspectionID,VehicleID,VehicleVIN,InspectorID,InspectionDate,Mileage,BrakeCondition,TireTreadDepth,EngineOilLevel,CoolantLevel,BatteryHealth,LightsFunctional,ExhaustEmissions,SafetyEquipmentStatus,DocumentationComplete,Notes,OverallScore,Passed,CreatedAt,UpdatedAt,Location,WeatherConditions) VALUES (3,2003,'3N1AB7AP4HY251234',9003,'2024-04-14',52000,'Good',8.0,'Full','Normal','Excellent','All','Meets','All','Yes','All good','95',1,'2024-04-14 07:45:00','2024-04-14 09:05:00','DepotC','Clear');

-- Supplier quality audits evaluating compliance across multiple dimensions
CREATE TABLE supplier_quality_audits
(
    AuditID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    SupplierName TEXT,
    AuditDate DATE,
    AuditorID INTEGER,
    AuditorName TEXT,
    OverallRating INTEGER,
    ScoreCompliance REAL,
    ScoreDelivery REAL,
    ScoreDocumentation REAL,
    ScoreSafety REAL,
    ScoreEnvironment REAL,
    FindingsSummary TEXT,
    CorrectiveActionRequired TEXT,
    CorrectiveActionDueDate DATE,
    FollowUpAuditDate DATE,
    AuditType TEXT,
    AuditScope TEXT,
    Region TEXT,
    Country TEXT,
    ContactPerson TEXT,
    ContactEmail TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO supplier_quality_audits (AuditID,SupplierID,SupplierName,AuditDate,AuditorID,AuditorName,OverallRating,ScoreCompliance,ScoreDelivery,ScoreDocumentation,ScoreSafety,ScoreEnvironment,FindingsSummary,CorrectiveActionRequired,CorrectiveActionDueDate,FollowUpAuditDate,AuditType,AuditScope,Region,Country,ContactPerson,ContactEmail,CreatedAt,UpdatedAt) VALUES (1,4001,'FuelCo', '2024-01-20',8001,'LauraWhite',88,92.5,89.0,85.0,90.0,80.0,'Late delivery of fuel trucks','Update logistics SOP','2024-02-15','2024-04-01','Annual','Operations','Midwest','USA','TomGrey','tom.grey@fuelco.com','2024-01-20 10:00:00','2024-01-20 12:30:00');
INSERT INTO supplier_quality_audits (AuditID,SupplierID,SupplierName,AuditDate,AuditorID,AuditorName,OverallRating,ScoreCompliance,ScoreDelivery,ScoreDocumentation,ScoreSafety,ScoreEnvironment,FindingsSummary,CorrectiveActionRequired,CorrectiveActionDueDate,FollowUpAuditDate,AuditType,AuditScope,Region,Country,ContactPerson,ContactEmail,CreatedAt,UpdatedAt) VALUES (2,4002,'CleanAirTech','2024-02-05',8002,'MarkGreen',91,95.0,93.5,94.0,96.0,92.0,'All criteria met','None','NULL','NULL','Surprise','Manufacturing','Southwest','USA','SaraBlue','sara.blue@cleanair.com','2024-02-05 09:15:00','2024-02-05 11:45:00');
INSERT INTO supplier_quality_audits (AuditID,SupplierID,SupplierName,AuditDate,AuditorID,AuditorName,OverallRating,ScoreCompliance,ScoreDelivery,ScoreDocumentation,ScoreSafety,ScoreEnvironment,FindingsSummary,CorrectiveActionRequired,CorrectiveActionDueDate,FollowUpAuditDate,AuditType,AuditScope,Region,Country,ContactPerson,ContactEmail,CreatedAt,UpdatedAt) VALUES (3,4003,'EcoMaterials','2024-03-12',8003,'NinaBlack',84,80.0,78.5,82.0,79.0,81.0,'Insufficient waste tracking','Implement waste log system','2024-04-30','2024-06-15','Quarterly','Materials','Northeast','USA','LiamRed','liam.red@ecomaterials.com','2024-03-12 14:20:00','2024-03-12 16:00:00');

-- Digital content tags for categorizing multimedia assets
CREATE TABLE digital_content_tags
(
    TagID INTEGER PRIMARY KEY,
    ContentID INTEGER,
    ContentType TEXT,
    Tag TEXT,
    CreatedBy TEXT,
    CreatedAt DATETIME,
    UpdatedBy TEXT,
    UpdatedAt DATETIME,
    IsApproved INTEGER,
    ApprovalDate DATE,
    UsageCount INTEGER,
    LastUsedAt DATETIME,
    Category TEXT,
    SubCategory TEXT,
    RelevanceScore REAL,
    SourceSystem TEXT,
    Language TEXT,
    Version INTEGER,
    Description TEXT,
    MetadataJSON TEXT
);

INSERT INTO digital_content_tags (TagID,ContentID,ContentType,Tag,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,IsApproved,ApprovalDate,UsageCount,LastUsedAt,Category,SubCategory,RelevanceScore,SourceSystem,Language,Version,Description,MetadataJSON) VALUES (1,5001,'Video','SafetyTraining','ContentTeam','2023-05-01 08:00:00','ContentTeam','2023-05-01 08:00:00',1,'2023-05-02',120,'2024-01-10 09:30:00','Training','Safety','0.95','CMS','EN',1,'Annual safety procedures','{}');
INSERT INTO digital_content_tags (TagID,ContentID,ContentType,Tag,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,IsApproved,ApprovalDate,UsageCount,LastUsedAt,Category,SubCategory,RelevanceScore,SourceSystem,Language,Version,Description,MetadataJSON) VALUES (2,5002,'Image','BrandLogo','DesignTeam','2023-06-15 10:20:00','DesignTeam','2023-06-15 10:20:00',1,'2023-06-16',250,'2024-02-20 14:45:00','Branding','Logo','0.99','DAM','EN',2,'Primary corporate logo','{}');
INSERT INTO digital_content_tags (TagID,ContentID,ContentType,Tag,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,IsApproved,ApprovalDate,UsageCount,LastUsedAt,Category,SubCategory,RelevanceScore,SourceSystem,Language,Version,Description,MetadataJSON) VALUES (3,5003,'Document','PolicyHR','LegalTeam','2023-07-01 09:00:00','LegalTeam','2023-07-01 09:00:00',0,NULL,45,'2024-03-05 11:00:00','Policy','HR','0.85','SharePoint','EN',1,'HR policy document','{}');

-- Renewable energy certificate registry tracking issuance and status of RECs
CREATE TABLE renewable_energy_certificate_registry
(
    CertificateID INTEGER PRIMARY KEY,
    ProjectID INTEGER,
    ProjectName TEXT,
    CertificateNumber TEXT,
    IssueDate DATE,
    ExpiryDate DATE,
    CertificateType TEXT,
    CapacityMW REAL,
    GenerationYear INTEGER,
    Issuer TEXT,
    Recipient TEXT,
    Status TEXT,
    ValidationMethod TEXT,
    VerifiedBy TEXT,
    VerifiedDate DATE,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    UpdatedAt DATETIME,
    UpdatedBy TEXT,
    Notes TEXT,
    Region TEXT,
    Country TEXT,
    UnitsIssued REAL
);

INSERT INTO renewable_energy_certificate_registry (CertificateID,ProjectID,ProjectName,CertificateNumber,IssueDate,ExpiryDate,CertificateType,CapacityMW,GenerationYear,Issuer,Recipient,Status,ValidationMethod,VerifiedBy,VerifiedDate,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy,Notes,Region,Country,UnitsIssued) VALUES (1,9001,'SunriseSolar','REC10001','2024-01-01','2034-01-01','Solar','50.0','2023','StateEnergyOffice','GreenPowerCo','Active','MeterReadings','AuditorA','2024-01-02','2024-01-01 07:00:00','Admin','2024-01-01 07:00:00','Admin','First issuance','Midwest','USA','5000');
INSERT INTO renewable_energy_certificate_registry (CertificateID,ProjectID,ProjectName,CertificateNumber,IssueDate,ExpiryDate,CertificateType,CapacityMW,GenerationYear,Issuer,Recipient,Status,ValidationMethod,VerifiedBy,VerifiedDate,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy,Notes,Region,Country,UnitsIssued) VALUES (2,9002,'WindHarbor','REC20002','2024-02-15','2034-02-15','Wind','75.0','2023','FederalEnergyAgency','EcoInvest','Pending','ThirdPartyAudit','AuditorB','2024-02-16','2024-02-15 09:30:00','Admin','2024-02-15 09:30:00','Admin','Awaiting verification','GreatLakes','USA','7500');
INSERT INTO renewable_energy_certificate_registry (CertificateID,ProjectID,ProjectName,CertificateNumber,IssueDate,ExpiryDate,CertificateType,CapacityMW,GenerationYear,Issuer,Recipient,Status,ValidationMethod,VerifiedBy,VerifiedDate,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy,Notes,Region,Country,UnitsIssued) VALUES (3,9003,'RiverHydro','REC30003','2024-03-20','2034-03-20','Hydro','120.0','2023','WaterAuthority','HydroInvest','Active','SensorData','AuditorC','2024-03-21','2024-03-20 11:15:00','Admin','2024-03-20 11:15:00','Admin','Hydro plant certificate','Southwest','USA','12000');

-- Urban noise monitoring stations capturing environmental sound levels
CREATE TABLE urban_noise_monitoring_stations
(
    StationID INTEGER PRIMARY KEY,
    StationName TEXT,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    OperatorID INTEGER,
    OperatorName TEXT,
    FrequencyHz REAL,
    SensitivityDB REAL,
    Status TEXT,
    LastCalibrationDate DATE,
    NextCalibrationDue DATE,
    DataUploadFrequencyMinutes INTEGER,
    PowerSource TEXT,
    HeightMeters REAL,
    City TEXT,
    Region TEXT,
    Country TEXT,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO urban_noise_monitoring_stations (StationID,StationName,Latitude,Longitude,InstallationDate,OperatorID,OperatorName,FrequencyHz,SensitivityDB,Status,LastCalibrationDate,NextCalibrationDue,DataUploadFrequencyMinutes,PowerSource,HeightMeters,City,Region,Country,Notes,CreatedAt,UpdatedAt) VALUES (1,'NoiseStationA',40.7128,-74.0060,'2023-09-01',6001,'CityEnvDept',1000.0,85.0,'Active','2024-01-10','2025-01-10',15,'Solar','12.5','NewYork','Northeast','USA','Near downtown','2023-09-01 08:00:00','2024-01-10 10:00:00');
INSERT INTO urban_noise_monitoring_stations (StationID,StationName,Latitude,Longitude,InstallationDate,OperatorID,OperatorName,FrequencyHz,SensitivityDB,Status,LastCalibrationDate,NextCalibrationDue,DataUploadFrequencyMinutes,PowerSource,HeightMeters,City,Region,Country,Notes,CreatedAt,UpdatedAt) VALUES (2,'NoiseStationB',34.0522,-118.2437,'2023-10-15',6002,'CityEnvDept',950.0,82.0,'Active','2024-02-05','2025-02-05',10,'Grid','15.0','LosAngeles','West','USA','Industrial area','2023-10-15 09:30:00','2024-02-05 11:45:00');
INSERT INTO urban_noise_monitoring_stations (StationID,StationName,Latitude,Longitude,InstallationDate,OperatorID,OperatorName,FrequencyHz,SensitivityDB,Status,LastCalibrationDate,NextCalibrationDue,DataUploadFrequencyMinutes,PowerSource,HeightMeters,City,Region,Country,Notes,CreatedAt,UpdatedAt) VALUES (3,'NoiseStationC',41.8781,-87.6298,'2023-11-20',6003,'CityEnvDept',1020.0,88.0,'Maintenance','2024-03-12','2025-03-12',20,'Battery','10.0','Chicago','Midwest','USA','Scheduled maintenance','2023-11-20 07:45:00','2024-03-12 09:00:00');

-- Smart parking zone occupancy tracking real‑time usage of parking areas
CREATE TABLE smart_parking_zone_occupancy
(
    ZoneID INTEGER PRIMARY KEY,
    ZoneName TEXT,
    Latitude REAL,
    Longitude REAL,
    TotalSpots INTEGER,
    OccupiedSpots INTEGER,
    OccupancyRate REAL,
    LastUpdate DATETIME,
    SensorVendor TEXT,
    SensorModel TEXT,
    InstallationDate DATE,
    MaintenanceStatus TEXT,
    AverageTurnoverTime REAL,
    PeakHourStart TEXT,
    PeakHourEnd TEXT,
    City TEXT,
    Region TEXT,
    Country TEXT,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    UpdatedAt DATETIME,
    UpdatedBy TEXT
);

INSERT INTO smart_parking_zone_occupancy (ZoneID,ZoneName,Latitude,Longitude,TotalSpots,OccupiedSpots,OccupancyRate,LastUpdate,SensorVendor,SensorModel,InstallationDate,MaintenanceStatus,AverageTurnoverTime,PeakHourStart,PeakHourEnd,City,Region,Country,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy) VALUES (1,'DowntownLotA',40.7128,-74.0060,200,150,0.75,'2024-04-01 08:15:00','SensorCo','ModelX','2022-05-10','Good',30.5,'07:00','09:00','NewYork','Northeast','USA','2022-05-10 09:00:00','SystemAdmin','2024-04-01 08:15:00','SystemAdmin');
INSERT INTO smart_parking_zone_occupancy (ZoneID,ZoneName,Latitude,Longitude,TotalSpots,OccupiedSpots,OccupancyRate,LastUpdate,SensorVendor,SensorModel,InstallationDate,MaintenanceStatus,AverageTurnoverTime,PeakHourStart,PeakHourEnd,City,Region,Country,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy) VALUES (2,'UptownLotB',34.0522,-118.2437,150,120,0.80,'2024-04-01 08:20:00','SmartSensors','Alpha','2023-01-15','Good',25.0,'08:00','10:00','LosAngeles','West','USA','2023-01-15 10:30:00','SystemAdmin','2024-04-01 08:20:00','SystemAdmin');
INSERT INTO smart_parking_zone_occupancy (ZoneID,ZoneName,Latitude,Longitude,TotalSpots,OccupiedSpots,OccupancyRate,LastUpdate,SensorVendor,SensorModel,InstallationDate,MaintenanceStatus,AverageTurnoverTime,PeakHourStart,PeakHourEnd,City,Region,Country,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy) VALUES (3,'MidtownLotC',41.8781,-87.6298,180,90,0.50,'2024-04-01 08:25:00','EcoSensors','Beta','2021-09-20','Scheduled','35.0','06:00','08:00','Chicago','Midwest','USA','2021-09-20 11:00:00','SystemAdmin','2024-04-01 08:25:00','SystemAdmin');

-- Logistics route weather conditions linking route performance with weather data
CREATE TABLE logistics_route_weather_conditions
(
    RouteID INTEGER PRIMARY KEY,
    RouteName TEXT,
    Date DATE,
    TemperatureC REAL,
    PrecipitationMM REAL,
    WindSpeedKPH REAL,
    WindDirection TEXT,
    VisibilityKM REAL,
    RoadCondition TEXT,
    IncidentReported INTEGER,
    DelayMinutes INTEGER,
    WeatherAlert TEXT,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    UpdatedAt DATETIME,
    UpdatedBy TEXT,
    SegmentStart TEXT,
    SegmentEnd TEXT,
    AverageSpeedKPH REAL,
    Notes TEXT
);

INSERT INTO logistics_route_weather_conditions (RouteID,RouteName,Date,TemperatureC,PrecipitationMM,WindSpeedKPH,WindDirection,VisibilityKM,RoadCondition,IncidentReported,DelayMinutes,WeatherAlert,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy,SegmentStart,SegmentEnd,AverageSpeedKPH,Notes) VALUES (1,'NorthEastCorridor','2024-04-01',12.5,0.0,15.0,'NE',10.0,'Dry',0,0,'None','2024-04-01 06:00:00','WeatherSystem','2024-04-01 06:00:00','WeatherSystem','NYC','Boston',80.0,'Clear day');
INSERT INTO logistics_route_weather_conditions (RouteID,RouteName,Date,TemperatureC,PrecipitationMM,WindSpeedKPH,WindDirection,VisibilityKM,RoadCondition,IncidentReported,DelayMinutes,WeatherAlert,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy,SegmentStart,SegmentEnd,AverageSpeedKPH,Notes) VALUES (2,'MidwestTransit','2024-04-01',5.0,8.2,20.0,'SW',3.0,'Wet',1,45,'FloodWatch','2024-04-01 07:30:00','WeatherSystem','2024-04-01 07:30:00','WeatherSystem','Chicago','StLouis',55.0,'Heavy rain causing delays');
INSERT INTO logistics_route_weather_conditions (RouteID,RouteName,Date,TemperatureC,PrecipitationMM,WindSpeedKPH,WindDirection,VisibilityKM,RoadCondition,IncidentReported,DelayMinutes,WeatherAlert,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy,SegmentStart,SegmentEnd,AverageSpeedKPH,Notes) VALUES (3,'WestCoastExpress','2024-04-01',18.0,0.0,10.0,'W',12.0,'Dry',0,0,'None','2024-04-01 08:15:00','WeatherSystem','2024-04-01 08:15:00','WeatherSystem','SanFrancisco','LosAngeles',90.0,'Ideal driving conditions');

-- Vehicle telemetry summary aggregating key sensor readings per transmission
CREATE TABLE vehicle_telemetry_summary
(
    TelemetryID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    Timestamp DATETIME,
    Latitude REAL,
    Longitude REAL,
    SpeedKPH REAL,
    RPM INTEGER,
    FuelLevelPercent REAL,
    EngineTempC REAL,
    BatteryVoltage REAL,
    ThrottlePosition REAL,
    BrakePressure REAL,
    SteeringAngle REAL,
    GearPosition TEXT,
    Odometer INTEGER,
    TripID INTEGER,
    DriverID INTEGER,
    AccelerationX REAL,
    AccelerationY REAL,
    AccelerationZ REAL,
    GForce REAL,
    EventCode TEXT,
    EventDescription TEXT,
    CreatedAt DATETIME,
    CreatedBy TEXT
);

INSERT INTO vehicle_telemetry_summary (TelemetryID,VehicleID,Timestamp,Latitude,Longitude,SpeedKPH,RPM,FuelLevelPercent,EngineTempC,BatteryVoltage,ThrottlePosition,BrakePressure,SteeringAngle,GearPosition,Odometer,TripID,DriverID,AccelerationX,AccelerationY,AccelerationZ,GForce,EventCode,EventDescription,CreatedAt,CreatedBy) VALUES (1,3001,'2024-04-01 08:00:00',40.7128,-74.0060,65.0,2500,78.5,90.0,12.6,30.0,0.2,5.0,'D',120450,5001,2001,0.01,0.00,-0.01,1.02,'EV001','Normal operation','2024-04-01 08:00:01','TelemetrySystem');
INSERT INTO vehicle_telemetry_summary (TelemetryID,VehicleID,Timestamp,Latitude,Longitude,SpeedKPH,RPM,FuelLevelPercent,EngineTempC,BatteryVoltage,ThrottlePosition,BrakePressure,SteeringAngle,GearPosition,Odometer,TripID,DriverID,AccelerationX,AccelerationY,AccelerationZ,GForce,EventCode,EventDescription,CreatedAt,CreatedBy) VALUES (2,3002,'2024-04-01 08:05:00',34.0522,-118.2437,45.0,1800,55.0,85.0,12.4,20.0,0.1,-3.0,'N',98000,5002,2002,-0.02,0.00,0.02,0.98,'EV002','Mild braking','2024-04-01 08:05:01','TelemetrySystem');
INSERT INTO vehicle_telemetry_summary (TelemetryID,VehicleID,Timestamp,Latitude,Longitude,SpeedKPH,RPM,FuelLevelPercent,EngineTempC,BatteryVoltage,ThrottlePosition,BrakePressure,SteeringAngle,GearPosition,Odometer,TripID,DriverID,AccelerationX,AccelerationY,AccelerationZ,GForce,EventCode,EventDescription,CreatedAt,CreatedBy) VALUES (3,3003,'2024-04-01 08:10:00',41.8781,-87.6298,80.0,3000,65.0,95.0,12.8,50.0,0.3,2.0,'D',150300,5003,2003,0.00,0.01,-0.01,1.00,'EV003','Accelerating hard','2024-04-01 08:10:01','TelemetrySystem');