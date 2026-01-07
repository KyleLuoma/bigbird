-- Fuel station visitor logs capturing individual visits and transaction details
CREATE TABLE fuel_station_visitor_logs (
    LogID INTEGER PRIMARY KEY,
    StationID INTEGER,
    VisitorID INTEGER,
    VisitDate DATE,
    VisitTime TEXT,
    VehiclePlate TEXT,
    VisitorAge INTEGER,
    VisitorGender TEXT,
    Purpose TEXT,
    DurationMinutes INTEGER,
    FuelType TEXT,
    AmountDispensed REAL,
    PaymentMethod TEXT,
    CardID INTEGER,
    LoyaltyID INTEGER,
    PromoCode TEXT,
    SurveyScore INTEGER,
    FeedbackText TEXT,
    WeatherCondition TEXT,
    OperatorID INTEGER
);

INSERT INTO fuel_station_visitor_logs (LogID,StationID,VisitorID,VisitDate,VisitTime,VehiclePlate,VisitorAge,VisitorGender,Purpose,DurationMinutes,FuelType,AmountDispensed,PaymentMethod,CardID,LoyaltyID,PromoCode,SurveyScore,FeedbackText,WeatherCondition,OperatorID) VALUES (1,101,5001,'2025-12-01','08:15','ABC1234',35,'Male','Refuel',30,'Diesel',45.6,'CreditCard',2001,301,'SAVE10',8,'Good service','Sunny',12);
INSERT INTO fuel_station_visitor_logs (LogID,StationID,VisitorID,VisitDate,VisitTime,VehiclePlate,VisitorAge,VisitorGender,Purpose,DurationMinutes,FuelType,AmountDispensed,PaymentMethod,CardID,LoyaltyID,PromoCode,SurveyScore,FeedbackText,WeatherCondition,OperatorID) VALUES (2,102,5002,'2025-12-02','14:45','XYZ5678',28,'Female','SnackPurchase',10,'Petrol',12.3,'Cash',NULL,302,'NONE',9,'Fast checkout','Cloudy',13);
INSERT INTO fuel_station_visitor_logs (LogID,StationID,VisitorID,VisitDate,VisitTime,VehiclePlate,VisitorAge,VisitorGender,Purpose,DurationMinutes,FuelType,AmountDispensed,PaymentMethod,CardID,LoyaltyID,PromoCode,SurveyScore,FeedbackText,WeatherCondition,OperatorID) VALUES (3,103,5003,'2025-12-03','19:20','LMN9012',42,'Male','CarWash',20,'Hybrid',0,'DebitCard',2003,303,'CARWASH5',7,'Average experience','Rainy',14);

-- Carbon credit transactions for compliance and trading
CREATE TABLE carbon_credit_transactions (
    TransactionID INTEGER PRIMARY KEY,
    AccountID INTEGER,
    CreditType TEXT,
    CreditsAmount REAL,
    TransactionDate DATE,
    TransactionTime TEXT,
    PricePerCredit REAL,
    TotalValue REAL,
    VerificationCode TEXT,
    SourceProject TEXT,
    DestinationEntity TEXT,
    ComplianceStatus TEXT,
    AuditorID INTEGER,
    SettlementMethod TEXT,
    Currency TEXT,
    ExchangeRate REAL,
    Notes TEXT,
    Region TEXT,
    RegistryID INTEGER,
    ExpirationDate DATE
);

INSERT INTO carbon_credit_transactions (TransactionID,AccountID,CreditType,CreditsAmount,TransactionDate,TransactionTime,PricePerCredit,TotalValue,VerificationCode,SourceProject,DestinationEntity,ComplianceStatus,AuditorID,SettlementMethod,Currency,ExchangeRate,Notes,Region,RegistryID,ExpirationDate) VALUES (1001,20001,'Renewable','1500.5','2025-11-15','10:30',12.5,18756.25,'VC12345','WindFarmA','CorpX','Approved',301,'BankTransfer','USD',1.0,'Quarterly settlement','NorthAmerica',4001,'2026-11-15');
INSERT INTO carbon_credit_transactions (TransactionID,AccountID,CreditType,CreditsAmount,TransactionDate,TransactionTime,PricePerCredit,TotalValue,VerificationCode,SourceProject,DestinationEntity,ComplianceStatus,AuditorID,SettlementMethod,Currency,ExchangeRate,Notes,Region,RegistryID,ExpirationDate) VALUES (1002,20002,'Forestry','800','2025-11-20','14:45',10.0,8000.0,'VC67890','ReforestationB','CorpY','Pending',302,'Crypto','EUR',0.9,'Pending verification','Europe',4002,'2026-11-20');
INSERT INTO carbon_credit_transactions (TransactionID,AccountID,CreditType,CreditsAmount,TransactionDate,TransactionTime,PricePerCredit,TotalValue,VerificationCode,SourceProject,DestinationEntity,ComplianceStatus,AuditorID,SettlementMethod,Currency,ExchangeRate,Notes,Region,RegistryID,ExpirationDate) VALUES (1003,20003,'MethaneCapture','500','2025-12-01','09:15',15.0,7500.0,'VC54321','MethanePlantC','CorpZ','Approved',303,'WireTransfer','USD',1.0,'Annual contract','Asia',4003,'2026-12-01');

-- Regional road accident statistics aggregated monthly
CREATE TABLE regional_road_accident_statistics (
    StatID INTEGER PRIMARY KEY,
    RegionCode TEXT,
    Year INTEGER,
    Month INTEGER,
    TotalAccidents INTEGER,
    Fatalities INTEGER,
    Injuries INTEGER,
    PedestrianAccidents INTEGER,
    VehicleTypeInvolved TEXT,
    WeatherCondition TEXT,
    RoadSurface TEXT,
    LightCondition TEXT,
    SpeedLimit INTEGER,
    EnforcementPresence TEXT,
    AvgResponseTimeMinutes REAL,
    CostEstimate REAL,
    ReportingAgency TEXT,
    DataSource TEXT,
    UpdatedOn DATE,
    AnalystID INTEGER
);

INSERT INTO regional_road_accident_statistics (StatID,RegionCode,Year,Month,TotalAccidents,Fatalities,Injuries,PedestrianAccidents,VehicleTypeInvolved,WeatherCondition,RoadSurface,LightCondition,SpeedLimit,EnforcementPresence,AvgResponseTimeMinutes,CostEstimate,ReportingAgency,DataSource,UpdatedOn,AnalystID) VALUES (5001,'RC01',2025,11,120,5,30,12,'Cars','Rainy','Wet','Night',55,'Camera',8.5,250000.0,'StatePolice','DeptOfTransport','2025-12-01',9001);
INSERT INTO regional_road_accident_statistics (StatID,RegionCode,Year,Month,TotalAccidents,Fatalities,Injuries,PedestrianAccidents,VehicleTypeInvolved,WeatherCondition,RoadSurface,LightCondition,SpeedLimit,EnforcementPresence,AvgResponseTimeMinutes,CostEstimate,ReportingAgency,DataSource,UpdatedOn,AnalystID) VALUES (5002,'RC02',2025,11,85,2,20,5,'Trucks','Snow','Icy','Day',65,'Patrol',12.0,180000.0,'CountySheriff','DeptOfTransport','2025-12-01',9002);
INSERT INTO regional_road_accident_statistics (StatID,RegionCode,Year,Month,TotalAccidents,Fatalities,Injuries,PedestrianAccidents,VehicleTypeInvolved,WeatherCondition,RoadSurface,LightCondition,SpeedLimit,EnforcementPresence,AvgResponseTimeMinutes,CostEstimate,ReportingAgency,DataSource,UpdatedOn,AnalystID) VALUES (5003,'RC03',2025,11,45,0,10,1,'Motorcycles','Clear','Dry','Evening',50,'None',6.0,95000.0,'CityTraffic','DeptOfTransport','2025-12-01',9003);

-- Satellite communication link status monitoring
CREATE TABLE satellite_comm_link_status (
    LinkID INTEGER PRIMARY KEY,
    SatelliteID TEXT,
    GroundStationID TEXT,
    FrequencyMHz REAL,
    BandwidthMHz REAL,
    Polarization TEXT,
    Status TEXT,
    LastContactUTC TEXT,
    SignalStrengthdB REAL,
    NoiseLeveldB REAL,
    BitErrorRate REAL,
    UptimeHours REAL,
    DowntimeHours REAL,
    FirmwareVersion TEXT,
    Operator TEXT,
    ScheduledMaintenanceUTC TEXT,
    LastMaintenanceUTC TEXT,
    TemperatureC REAL,
    VoltageV REAL,
    AntennaAzimuthDeg REAL
);

INSERT INTO satellite_comm_link_status (LinkID,SatelliteID,GroundStationID,FrequencyMHz,BandwidthMHz,Polarization,Status,LastContactUTC,SignalStrengthdB,NoiseLeveldB,BitErrorRate,UptimeHours,DowntimeHours,FirmwareVersion,Operator,ScheduledMaintenanceUTC,LastMaintenanceUTC,TemperatureC,VoltageV,AntennaAzimuthDeg) VALUES (8001,'SAT101','GS001',2200.5,40.0,'Horizontal','Active','2025-12-01T08:00:00Z',-68.2,-110.5,0.00001,720.0,0.0,'v3.2.1','SpaceNet','2025-12-10T00:00:00Z','2025-11-15T00:00:00Z',15.5,28.0,180.0);
INSERT INTO satellite_comm_link_status (LinkID,SatelliteID,GroundStationID,FrequencyMHz,BandwidthMHz,Polarization,Status,LastContactUTC,SignalStrengthdB,NoiseLeveldB,BitErrorRate,UptimeHours,DowntimeHours,FirmwareVersion,Operator,ScheduledMaintenanceUTC,LastMaintenanceUTC,TemperatureC,VoltageV,AntennaAzimuthDeg) VALUES (8002,'SAT102','GS002',1450.0,20.0,'Vertical','Degraded','2025-12-01T07:45:00Z',-75.0,-115.0,0.0001,710.0,10.0,'v3.1.0','OrbitComm','2025-12-15T00:00:00Z','2025-11-20T00:00:00Z',22.0,27.5,175.0);
INSERT INTO satellite_comm_link_status (LinkID,SatelliteID,GroundStationID,FrequencyMHz,BandwidthMHz,Polarization,Status,LastContactUTC,SignalStrengthdB,NoiseLeveldB,BitErrorRate,UptimeHours,DowntimeHours,FirmwareVersion,Operator,ScheduledMaintenanceUTC,LastMaintenanceUTC,TemperatureC,VoltageV,AntennaAzimuthDeg) VALUES (8003,'SAT103','GS003',3600.0,50.0,'Circular','Inactive','2025-11-30T23:55:00Z',-999.0,-999.0,0.0,0.0,720.0,'v2.9.8','GlobalSat','2025-12-20T00:00:00Z','2025-10-30T00:00:00Z',-5.0,26.0,190.0);

-- Customer device profiles linked to mobile app usage
CREATE TABLE customer_device_profiles (
    DeviceID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    DeviceType TEXT,
    OSVersion TEXT,
    AppVersion TEXT,
    RegistrationDate DATE,
    LastActiveDate DATE,
    PushToken TEXT,
    DeviceModel TEXT,
    Manufacturer TEXT,
    ScreenSizeInches REAL,
    BatteryHealthPercent INTEGER,
    IsRooted INTEGER,
    Locale TEXT,
    TimeZone TEXT,
    IPAddress TEXT,
    MACAddress TEXT,
    PreferredLanguage TEXT,
    NotificationEnabled INTEGER,
    AdvertisingID TEXT
);

INSERT INTO customer_device_profiles (DeviceID,CustomerID,DeviceType,OSVersion,AppVersion,RegistrationDate,LastActiveDate,PushToken,DeviceModel,Manufacturer,ScreenSizeInches,BatteryHealthPercent,IsRooted,Locale,TimeZone,IPAddress,MACAddress,PreferredLanguage,NotificationEnabled,AdvertisingID) VALUES (9001,1001,'Smartphone','iOS14.6','3.2.1','2025-10-01','2025-12-01','token123','iPhone12','Apple',6.1,95,0,'en_US','America/New_York','192.168.1.10','AA:BB:CC:DD:EE:FF','en',1,'adsid001');
INSERT INTO customer_device_profiles (DeviceID,CustomerID,DeviceType,OSVersion,AppVersion,RegistrationDate,LastActiveDate,PushToken,DeviceModel,Manufacturer,ScreenSizeInches,BatteryHealthPercent,IsRooted,Locale,TimeZone,IPAddress,MACAddress,PreferredLanguage,NotificationEnabled,AdvertisingID) VALUES (9002,1002,'Tablet','Android12','3.2.1','2025-09-15','2025-12-01','token456','GalaxyTabS8','Samsung',10.5,88,0,'es_ES','Europe/Madrid','192.168.1.20','11:22:33:44:55:66','es',1,'adsid002');
INSERT INTO customer_device_profiles (DeviceID,CustomerID,DeviceType,OSVersion,AppVersion,RegistrationDate,LastActiveDate,PushToken,DeviceModel,Manufacturer,ScreenSizeInches,BatteryHealthPercent,IsRooted,Locale,TimeZone,IPAddress,MACAddress,PreferredLanguage,NotificationEnabled,AdvertisingID) VALUES (9003,1003,'Smartwatch','watchOS8','3.2.1','2025-11-05','2025-12-01','token789','WatchSeries7','Apple',1.78,92,0,'fr_FR','Europe/Paris','192.168.1.30','22:33:44:55:66:77','fr',0,'adsid003');

-- Waste recycling center inventory tracking
CREATE TABLE waste_recycling_center_inventory (
    ItemID INTEGER PRIMARY KEY,
    CenterID INTEGER,
    Category TEXT,
    SubCategory TEXT,
    QuantityUnits INTEGER,
    WeightKg REAL,
    ReceivedDate DATE,
    ExpirationDate DATE,
    SupplierID INTEGER,
    Hazardous INTEGER,
    Recyclable INTEGER,
    Condition TEXT,
    StorageLocation TEXT,
    TemperatureC REAL,
    MoisturePercent REAL,
    BatchNumber TEXT,
    InspectionScore INTEGER,
    Remarks TEXT,
    UpdatedBy INTEGER,
    UpdateTimestamp TEXT
);

INSERT INTO waste_recycling_center_inventory (ItemID,CenterID,Category,SubCategory,QuantityUnits,WeightKg,ReceivedDate,ExpirationDate,SupplierID,Hazardous,Recyclable,Condition,StorageLocation,TemperatureC,MoisturePercent,BatchNumber,InspectionScore,Remarks,UpdatedBy,UpdateTimestamp) VALUES (3001,501,'Plastic','PET','200','150.0','2025-11-20','2026-11-20',7001,0,1,'Good','A1',22.5,5.0,'BATCHA1',95,'No issues',4001,'2025-12-01T10:00:00Z');
INSERT INTO waste_recycling_center_inventory (ItemID,CenterID,Category,SubCategory,QuantityUnits,WeightKg,ReceivedDate,ExpirationDate,SupplierID,Hazardous,Recyclable,Condition,StorageLocation,TemperatureC,MoisturePercent,BatchNumber,InspectionScore,Remarks,UpdatedBy,UpdateTimestamp) VALUES (3002,502,'Metal','Aluminum','150','120.0','2025-11-22','2026-11-22',7002,0,1,'Excellent','B3',18.0,2.0,'BATCHB3',98,'Ready for processing',4002,'2025-12-01T11:00:00Z');
INSERT INTO waste_recycling_center_inventory (ItemID,CenterID,Category,SubCategory,QuantityUnits,WeightKg,ReceivedDate,ExpirationDate,SupplierID,Hazardous,Recyclable,Condition,StorageLocation,TemperatureC,MoisturePercent,BatchNumber,InspectionScore,Remarks,UpdatedBy,UpdateTimestamp) VALUES (3003,503,'Electronic','Battery','50','75.0','2025-11-25','2025-12-25',7003,1,0,'Damaged','C2',25.0,10.0,'BATCHC2',80,'Handle with care',4003,'2025-12-01T12:00:00Z');

-- Public transport operator contracts management
CREATE TABLE public_transport_operator_contracts (
    ContractID INTEGER PRIMARY KEY,
    OperatorID INTEGER,
    AuthorityID INTEGER,
    ContractStartDate DATE,
    ContractEndDate DATE,
    ServiceArea TEXT,
    VehicleType TEXT,
    FleetSize INTEGER,
    AnnualFee REAL,
    PerformanceMetric TEXT,
    PenaltyClause TEXT,
    RenewalOption TEXT,
    GoverningLaw TEXT,
    Currency TEXT,
    ExchangeRate REAL,
    SignedBy TEXT,
    SignedDate DATE,
    DocumentReference TEXT,
    Status TEXT,
    LastAmendmentDate DATE
);

INSERT INTO public_transport_operator_contracts (ContractID,OperatorID,AuthorityID,ContractStartDate,ContractEndDate,ServiceArea,VehicleType,FleetSize,AnnualFee,PerformanceMetric,PenaltyClause,RenewalOption,GoverningLaw,Currency,ExchangeRate,SignedBy,SignedDate,DocumentReference,Status,LastAmendmentDate) VALUES (4001,601,701,'2024-01-01','2028-12-31','MetroCity','Bus',120,5000000.0,'OnTime%90','LateFee5','Optional','StateLaw','USD',1.0,'JohnDoe','2023-12-15','DOC4001','Active','2025-11-01');
INSERT INTO public_transport_operator_contracts (ContractID,OperatorID,AuthorityID,ContractStartDate,ContractEndDate,ServiceArea,VehicleType,FleetSize,AnnualFee,PerformanceMetric,PenaltyClause,RenewalOption,GoverningLaw,Currency,ExchangeRate,SignedBy,SignedDate,DocumentReference,Status,LastAmendmentDate) VALUES (4002,602,702,'2025-03-01','2030-02-28','RiverTown','Tram',45,2000000.0,'RidershipTarget','Penalty2','Mandatory','FederalLaw','EUR',0.9,'JaneSmith','2025-02-20','DOC4002','Pending','2025-11-15');
INSERT INTO public_transport_operator_contracts (ContractID,OperatorID,AuthorityID,ContractStartDate,ContractEndDate,ServiceArea,VehicleType,FleetSize,AnnualFee,PerformanceMetric,PenaltyClause,RenewalOption,GoverningLaw,Currency,ExchangeRate,SignedBy,SignedDate,DocumentReference,Status,LastAmendmentDate) VALUES (4003,603,703,'2023-06-15','2027-06-14','CoastalRegion','Ferry',30,3500000.0,'SafetyScore','FinePerIncident','Optional','MaritimeLaw','GBP',1.3,'AliceBrown','2023-06-01','DOC4003','Active','2025-10-20');

-- Smart parking sensor calibration records
CREATE TABLE smart_parking_sensor_calibrations (
    CalibrationID INTEGER PRIMARY KEY,
    SensorID INTEGER,
    ParkingLotID INTEGER,
    CalibrationDate DATE,
    TechnicianID INTEGER,
    VoltageV REAL,
    CurrentmA REAL,
    Sensitivity REAL,
    Threshold REAL,
    CalibrationResult TEXT,
    FirmwareVersion TEXT,
    BatteryLevelPercent INTEGER,
    TemperatureC REAL,
    HumidityPercent REAL,
    CalibrationNotes TEXT,
    GPSLatitude REAL,
    GPSLongitude REAL,
    UpdatedBy INTEGER,
    UpdateTimestamp TEXT,
    Status TEXT
);

INSERT INTO smart_parking_sensor_calibrations (CalibrationID,SensorID,ParkingLotID,CalibrationDate,TechnicianID,VoltageV,CurrentmA,Sensitivity,Threshold,CalibrationResult,FirmwareVersion,BatteryLevelPercent,TemperatureC,HumidityPercent,CalibrationNotes,GPSLatitude,GPSLongitude,UpdatedBy,UpdateTimestamp,Status) VALUES (6001,801,901,'2025-11-30',1001,3.3,15.0,0.95,0.5,'Pass','v1.4','95',22.0,45.0,'Routine check',40.7128,-74.0060,2001,'2025-12-01T08:00:00Z','Active');
INSERT INTO smart_parking_sensor_calibrations (CalibrationID,SensorID,ParkingLotID,CalibrationDate,TechnicianID,VoltageV,CurrentmA,Sensitivity,Threshold,CalibrationResult,FirmwareVersion,BatteryLevelPercent,TemperatureC,HumidityPercent,CalibrationNotes,GPSLatitude,GPSLongitude,UpdatedBy,UpdateTimestamp,Status) VALUES (6002,802,902,'2025-11-28',1002,3.2,14.5,0.93,0.55,'Pass','v1.4','90',21.5,47.0,'Recalibration after firmware update',34.0522,-118.2437,2002,'2025-12-01T09:00:00Z','Active');
INSERT INTO smart_parking_sensor_calibrations (CalibrationID,SensorID,ParkingLotID,CalibrationDate,TechnicianID,VoltageV,CurrentmA,Sensitivity,Threshold,CalibrationResult,FirmwareVersion,BatteryLevelPercent,TemperatureC,HumidityPercent,CalibrationNotes,GPSLatitude,GPSLongitude,UpdatedBy,UpdateTimestamp,Status) VALUES (6003,803,903,'2025-11-25',1003,3.1,16.0,0.90,0.60,'Fail','v1.3','80',20.0,50.0,'Battery replacement needed',51.5074,-0.1278,2003,'2025-12-01T10:00:00Z','Inactive');

-- Fleet driver shift preferences and constraints
CREATE TABLE fleet_driver_shift_preferences (
    PreferenceID INTEGER PRIMARY KEY,
    DriverID INTEGER,
    PreferredShiftStart TEXT,
    PreferredShiftEnd TEXT,
    PreferredDays TEXT,
    MaxHoursPerWeek INTEGER,
    MinRestHours INTEGER,
    PreferredRouteTypes TEXT,
    VehiclePreference TEXT,
    WeekendPreference TEXT,
    NightShiftAllowed INTEGER,
    OvertimePreference INTEGER,
    LanguageProficiency TEXT,
    CertificationLevel TEXT,
    PreferredPayRate REAL,
    PreferredBreakDurationMin INTEGER,
    Comments TEXT,
    UpdatedOn DATE,
    UpdatedBy INTEGER,
    ActiveFlag INTEGER
);

INSERT INTO fleet_driver_shift_preferences (PreferenceID,DriverID,PreferredShiftStart,PreferredShiftEnd,PreferredDays,MaxHoursPerWeek,MinRestHours,PreferredRouteTypes,VehiclePreference,WeekendPreference,NightShiftAllowed,OvertimePreference,LanguageProficiency,CertificationLevel,PreferredPayRate,PreferredBreakDurationMin,Comments,UpdatedOn,UpdatedBy,ActiveFlag) VALUES (7001,801,'06:00','14:00','Mon,Tue,Wed,Thu,Fri',40,12,'Urban,Suburban','Van','PreferWeekend',0,1,'English','Level2',25.0,15,'Prefers morning shifts',2025-12-01,3001,1);
INSERT INTO fleet_driver_shift_preferences (PreferenceID,DriverID,PreferredShiftStart,PreferredShiftEnd,PreferredDays,MaxHoursPerWeek,MinRestHours,PreferredRouteTypes,VehiclePreference,WeekendPreference,NightShiftAllowed,OvertimePreference,LanguageProficiency,CertificationLevel,PreferredPayRate,PreferredBreakDurationMin,Comments,UpdatedOn,UpdatedBy,ActiveFlag) VALUES (7002,802,'14:00','22:00','Mon,Tue,Wed,Thu,Fri',45,10,'LongHaul','Truck','AvoidWeekend',1,0,'Spanish','Level3',28.5,20,'Open to night shifts',2025-12-01,3002,1);
INSERT INTO fleet_driver_shift_preferences (PreferenceID,DriverID,PreferredShiftStart,PreferredShiftEnd,PreferredDays,MaxHoursPerWeek,MinRestHours,PreferredRouteTypes,VehiclePreference,WeekendPreference,NightShiftAllowed,OvertimePreference,LanguageProficiency,CertificationLevel,PreferredPayRate,PreferredBreakDurationMin,Comments,UpdatedOn,UpdatedBy,ActiveFlag) VALUES (7003,803,'22:00','06:00','Sat,Sun',30,14,'Regional','Hybrid','PreferWeekend',1,1,'French','Level1',30.0,10,'Willing for weekend night shifts',2025-12-01,3003,1);

-- Carbon offset project registry with detailed metadata
CREATE TABLE carbon_offset_project_registry (
    ProjectID INTEGER PRIMARY KEY,
    RegistryName TEXT,
    ProjectName TEXT,
    Country TEXT,
    Region TEXT,
    ProjectType TEXT,
    CreditsGenerated REAL,
    VerificationDate DATE,
    IssuerID INTEGER,
    ContactPerson TEXT,
    ContactEmail TEXT,
    ProjectStatus TEXT,
    StartDate DATE,
    EndDate DATE,
    Methodology TEXT,
    FundingSource TEXT,
    TotalInvestmentUSD REAL,
    ExpectedYieldYearly REAL,
    CO2eReducedTonnes REAL,
    LastUpdated TEXT
);

INSERT INTO carbon_offset_project_registry (ProjectID,RegistryName,ProjectName,Country,Region,ProjectType,CreditsGenerated,VerificationDate,IssuerID,ContactPerson,ContactEmail,ProjectStatus,StartDate,EndDate,Methodology,FundingSource,TotalInvestmentUSD,ExpectedYieldYearly,CO2eReducedTonnes,LastUpdated) VALUES (9001,'Verra','WindFarmAlpha','USA','Midwest','Renewable','1800.0','2025-11-30',5001,'MikeJohnson','mikej@example.com','Active','2025-01-01','2030-12-31','MethodA','PrivateEquity',12000000.0,'350.0','1400.0','2025-12-01T09:00:00Z');
INSERT INTO carbon_offset_project_registry (ProjectID,RegistryName,ProjectName,Country,Region,ProjectType,CreditsGenerated,VerificationDate,IssuerID,ContactPerson,ContactEmail,ProjectStatus,StartDate,EndDate,Methodology,FundingSource,TotalInvestmentUSD,ExpectedYieldYearly,CO2eReducedTonnes,LastUpdated) VALUES (9002,'GoldStandard','ReforestationBeta','Brazil','Amazon','Forestry','1200.5','2025-12-10',5002,'AnaSilva','anas@example.com','Pending','2025-06-01','2035-05-31','MethodB','GovernmentGrant',8000000.0,'200.0','1000.0','2025-12-01T10:00:00Z');
INSERT INTO carbon_offset_project_registry (ProjectID,RegistryName,ProjectName,Country,Region,ProjectType,CreditsGenerated,VerificationDate,IssuerID,ContactPerson,ContactEmail,ProjectStatus,StartDate,EndDate,Methodology,FundingSource,TotalInvestmentUSD,ExpectedYieldYearly,CO2eReducedTonnes,LastUpdated) VALUES (9003,'CDM','MethaneCaptureGamma','India','Gujarat','MethaneCapture','500.0','2025-12-20',5003,'RohanPatel','rohanp@example.com','Active','2025-03-15','2030-03-14','MethodC','Corporate',5000000.0,'120.0','500.0','2025-12-01T11:00:00Z');