-- Corporate shareholder registry details
CREATE TABLE corporate_shareholder_registry (
    ShareholderID INTEGER PRIMARY KEY,
    CompanyID INTEGER,
    ShareholderName TEXT,
    ShareType TEXT,
    SharesOwned INTEGER,
    PurchaseDate DATE,
    PurchasePrice REAL,
    Country TEXT,
    State TEXT,
    City TEXT,
    PostalCode TEXT,
    ContactEmail TEXT,
    ContactPhone TEXT,
    IsBeneficialOwner INTEGER,
    VotingRightsPercent REAL,
    ShareClass TEXT,
    RegistrationNumber TEXT,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    TaxIDNumber TEXT,
    IndustrySector TEXT,
    LastTransactionID INTEGER
);
INSERT INTO corporate_shareholder_registry (ShareholderID,CompanyID,ShareholderName,ShareType,SharesOwned,PurchaseDate,PurchasePrice,Country,State,City,PostalCode,ContactEmail,ContactPhone,IsBeneficialOwner,VotingRightsPercent,ShareClass,RegistrationNumber,Notes,CreatedAt,UpdatedAt,TaxIDNumber,IndustrySector,LastTransactionID) VALUES (1,100,'JohnDoe','Common',5000,'2022-05-10',12.5,'USA','CA','LosAngeles','90001','johndoe@example.com','5551234',1,15.0,'ClassA','REG12345','InitialPurchase','2022-05-10 08:30:00','2022-05-10 08:30:00','TAX987654','Technology',101);
INSERT INTO corporate_shareholder_registry (ShareholderID,CompanyID,ShareholderName,ShareType,SharesOwned,PurchaseDate,PurchasePrice,Country,State,City,PostalCode,ContactEmail,ContactPhone,IsBeneficialOwner,VotingRightsPercent,ShareClass,RegistrationNumber,Notes,CreatedAt,UpdatedAt,TaxIDNumber,IndustrySector,LastTransactionID) VALUES (2,100,'AcmeInvestments','Preferred',20000,'2021-11-20',10.0,'USA','NY','NewYork','10001','acme@example.com','5555678',0,5.0,'ClassB','REG67890','SecondaryPurchase','2021-11-20 14:15:00','2021-11-20 14:15:00','TAX123456','Finance',102);
INSERT INTO corporate_shareholder_registry (ShareholderID,CompanyID,ShareholderName,ShareType,SharesOwned,PurchaseDate,PurchasePrice,Country,State,City,PostalCode,ContactEmail,ContactPhone,IsBeneficialOwner,VotingRightsPercent,ShareClass,RegistrationNumber,Notes,CreatedAt,UpdatedAt,TaxIDNumber,IndustrySector,LastTransactionID) VALUES (3,101,'GlobalVentures','Common',7500,'2023-02-05',13.2,'USA','TX','Houston','77002','global@example.com','5559012',1,12.0,'ClassA','REG24680','NewShareholder','2023-02-05 09:45:00','2023-02-05 09:45:00','TAX654321','Energy',103);

-- Utility meter readings
CREATE TABLE utility_meter_readings (
    MeterReadingID INTEGER PRIMARY KEY,
    UtilityAccountID INTEGER,
    MeterID TEXT,
    ReadingDate DATE,
    ReadingValue REAL,
    Unit TEXT,
    Latitude REAL,
    Longitude REAL,
    TechnicianID INTEGER,
    Status TEXT,
    AdjustedValue REAL,
    AdjustmentReason TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    BillingPeriod TEXT,
    EstimatedConsumption REAL,
    HouseNumber TEXT,
    StreetName TEXT,
    City TEXT,
    State TEXT,
    ZipCode TEXT
);
INSERT INTO utility_meter_readings (MeterReadingID,UtilityAccountID,MeterID,ReadingDate,ReadingValue,Unit,Latitude,Longitude,TechnicianID,Status,AdjustedValue,AdjustmentReason,CreatedAt,UpdatedAt,BillingPeriod,EstimatedConsumption,HouseNumber,StreetName,City,State,ZipCode) VALUES (1,2001,'MTR-001','2023-01-15',1250.5,'kWh',29.7604,-95.3698,301,'Verified',1250.5,'None','2023-01-15 07:20:00','2023-01-15 07:20:00','202301','1200','101','MainSt','Houston','TX','77001');
INSERT INTO utility_meter_readings (MeterReadingID,UtilityAccountID,MeterID,ReadingDate,ReadingValue,Unit,Latitude,Longitude,TechnicianID,Status,AdjustedValue,AdjustmentReason,CreatedAt,UpdatedAt,BillingPeriod,EstimatedConsumption,HouseNumber,StreetName,City,State,ZipCode) VALUES (2,2002,'MTR-002','2023-01-16',980.0,'kWh',34.0522,-118.2437,302,'Verified',980.0,'None','2023-01-16 08:15:00','2023-01-16 08:15:00','202301','950','202','ElmSt','LosAngeles','CA','90001');
INSERT INTO utility_meter_readings (MeterReadingID,UtilityAccountID,MeterID,ReadingDate,ReadingValue,Unit,Latitude,Longitude,TechnicianID,Status,AdjustedValue,AdjustmentReason,CreatedAt,UpdatedAt,BillingPeriod,EstimatedConsumption,HouseNumber,StreetName,City,State,ZipCode) VALUES (3,2003,'MTR-003','2023-01-17',1500.75,'kWh',40.7128,-74.0060,303,'Adjusted',1498.0,'Calibration','2023-01-17 09:05:00','2023-01-17 09:05:00','202301','1480','303','Broadway','NewYork','NY','10001');

-- Fleet route optimization data
CREATE TABLE fleet_route_optimization (
    OptimizationID INTEGER PRIMARY KEY,
    FleetID INTEGER,
    VehicleID INTEGER,
    RouteID INTEGER,
    StartLocation TEXT,
    EndLocation TEXT,
    DistanceKm REAL,
    EstimatedTimeMin INTEGER,
    FuelEstimateLiters REAL,
    TrafficLevel TEXT,
    WeatherCondition TEXT,
    OptimizationAlgorithm TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    OperatorID INTEGER,
    PriorityLevel INTEGER,
    RouteScore REAL,
    IsActive INTEGER,
    Notes TEXT,
    SuggestedDepartureTime TEXT,
    SuggestedArrivalTime TEXT,
    ComplianceFlag INTEGER
);
INSERT INTO fleet_route_optimization (OptimizationID,FleetID,VehicleID,RouteID,StartLocation,EndLocation,DistanceKm,EstimatedTimeMin,FuelEstimateLiters,TrafficLevel,WeatherCondition,OptimizationAlgorithm,CreatedAt,UpdatedAt,OperatorID,PriorityLevel,RouteScore,IsActive,Notes,SuggestedDepartureTime,SuggestedArrivalTime,ComplianceFlag) VALUES (1,10,1001,5001,'DepotA','StoreX',120.5,180,15.2,'Medium','Clear','Dijkstra','2023-03-01 06:00:00','2023-03-01 06:00:00',9001,1,92.5,1,'No issues','07:00','10:00',0);
INSERT INTO fleet_route_optimization (OptimizationID,FleetID,VehicleID,RouteID,StartLocation,EndLocation,DistanceKm,EstimatedTimeMin,FuelEstimateLiters,TrafficLevel,WeatherCondition,OptimizationAlgorithm,CreatedAt,UpdatedAt,OperatorID,PriorityLevel,RouteScore,IsActive,Notes,SuggestedDepartureTime,SuggestedArrivalTime,ComplianceFlag) VALUES (2,10,1002,5002,'DepotB','StoreY',85.0,130,10.5,'Low','Rain','A*','2023-03-02 07:30:00','2023-03-02 07:30:00',9002,2,88.0,1,'Rain delay','08:30','11:00',0);
INSERT INTO fleet_route_optimization (OptimizationID,FleetID,VehicleID,RouteID,StartLocation,EndLocation,DistanceKm,EstimatedTimeMin,FuelEstimateLiters,TrafficLevel,WeatherCondition,OptimizationAlgorithm,CreatedAt,UpdatedAt,OperatorID,PriorityLevel,RouteScore,IsActive,Notes,SuggestedDepartureTime,SuggestedArrivalTime,ComplianceFlag) VALUES (3,11,1003,5003,'DepotC','StoreZ',200.0,300,25.0,'High','Snow','Genetic','2023-03-03 05:45:00','2023-03-03 05:45:00',9003,1,95.0,0,'Snow route suspended',NULL,NULL,1);

-- Environmental incident reports
CREATE TABLE environmental_incident_reports (
    IncidentID INTEGER PRIMARY KEY,
    SiteID INTEGER,
    IncidentDate DATE,
    IncidentTime TEXT,
    IncidentType TEXT,
    SeverityLevel INTEGER,
    Description TEXT,
    ReportedBy TEXT,
    ContactPhone TEXT,
    MitigationSteps TEXT,
    FollowUpDate DATE,
    FollowUpStatus TEXT,
    EstimatedImpact REAL,
    RegulatoryAgency TEXT,
    PermitNumber TEXT,
    Latitude REAL,
    Longitude REAL,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Status TEXT,
    ResolutionDate DATE
);
INSERT INTO environmental_incident_reports (IncidentID,SiteID,IncidentDate,IncidentTime,IncidentType,SeverityLevel,Description,ReportedBy,ContactPhone,MitigationSteps,FollowUpDate,FollowUpStatus,EstimatedImpact,RegulatoryAgency,PermitNumber,Latitude,Longitude,CreatedAt,UpdatedAt,Status,ResolutionDate) VALUES (1,3001,'2023-02-10','14:30','Spill','3','Oil spill near storage tank','JaneSmith','5551111','Containment and cleanup','2023-02-20','InProgress',2500.0,'EPA','PERM123','36.7783','-119.4179','2023-02-10 15:00:00','2023-02-10 15:00:00','Open',NULL);
INSERT INTO environmental_incident_reports (IncidentID,SiteID,IncidentDate,IncidentTime,IncidentType,SeverityLevel,Description,ReportedBy,ContactPhone,MitigationSteps,FollowUpDate,FollowUpStatus,EstimatedImpact,RegulatoryAgency,PermitNumber,Latitude,Longitude,CreatedAt,UpdatedAt,Status,ResolutionDate) VALUES (2,3002,'2023-03-05','09:15','AirEmission','2','Excessive NOx emission detected','BobLee','5552222','Adjust scrubbers','2023-03-12','Pending',1200.0,'StateEnv','PERM456','34.0522','-118.2437','2023-03-05 09:45:00','2023-03-05 09:45:00','Open',NULL);
INSERT INTO environmental_incident_reports (IncidentID,SiteID,IncidentDate,IncidentTime,IncidentType,SeverityLevel,Description,ReportedBy,ContactPhone,MitigationSteps,FollowUpDate,FollowUpStatus,EstimatedImpact,RegulatoryAgency,PermitNumber,Latitude,Longitude,CreatedAt,UpdatedAt,Status,ResolutionDate) VALUES (3,3003,'2023-01-22','22:00','Noise','1','Unexpected noise during night shift','AliceWong','5553333','Install sound barriers','2023-02-01','Resolved',300.0,'LocalGov','PERM789','40.7128','-74.0060','2023-01-22 22:30:00','2023-01-22 22:30:00','Closed','2023-01-30');

-- Digital wallet transaction log
CREATE TABLE digital_wallet_transactions (
    TransactionID INTEGER PRIMARY KEY,
    WalletID INTEGER,
    UserID INTEGER,
    TransactionDate DATE,
    TransactionTime TEXT,
    TransactionType TEXT,
    Amount REAL,
    Currency TEXT,
    MerchantID INTEGER,
    MerchantCategory TEXT,
    DeviceID TEXT,
    IPAddress TEXT,
    GeoLocation TEXT,
    AuthMethod TEXT,
    TransactionStatus TEXT,
    Fee REAL,
    NetAmount REAL,
    ReferenceCode TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Notes TEXT,
    Channel TEXT
);
INSERT INTO digital_wallet_transactions (TransactionID,WalletID,UserID,TransactionDate,TransactionTime,TransactionType,Amount,Currency,MerchantID,MerchantCategory,DeviceID,IPAddress,GeoLocation,AuthMethod,TransactionStatus,Fee,NetAmount,ReferenceCode,CreatedAt,UpdatedAt,Notes,Channel) VALUES (1,5001,4001,'2023-04-01','10:15','Purchase',45.99,'USD',8001,'Retail','DEV-001','192.168.1.10','34.0522,-118.2437','PIN','Completed',0.99,45.00,'REF12345','2023-04-01 10:20:00','2023-04-01 10:20:00','First purchase','MobileApp');
INSERT INTO digital_wallet_transactions (TransactionID,WalletID,UserID,TransactionDate,TransactionTime,TransactionType,Amount,Currency,MerchantID,MerchantCategory,DeviceID,IPAddress,GeoLocation,AuthMethod,TransactionStatus,Fee,NetAmount,ReferenceCode,CreatedAt,UpdatedAt,Notes,Channel) VALUES (2,5002,4002,'2023-04-02','14:45','TopUp',100.00,'USD',NULL,'N/A','DEV-002','192.168.1.20','40.7128,-74.0060','Password','Completed',0.00,100.00,'REF67890','2023-04-02 14:50:00','2023-04-02 14:50:00','Wallet top-up','Web');
INSERT INTO digital_wallet_transactions (TransactionID,WalletID,UserID,TransactionDate,TransactionTime,TransactionType,Amount,Currency,MerchantID,MerchantCategory,DeviceID,IPAddress,GeoLocation,AuthMethod,TransactionStatus,Fee,NetAmount,ReferenceCode,CreatedAt,UpdatedAt,Notes,Channel) VALUES (3,5003,4003,'2023-04-03','09:05','Refund',20.00,'USD',8002,'Services','DEV-003','192.168.1.30','37.7749,-122.4194','Biometric','Completed',0.00,20.00,'REF54321','2023-04-03 09:10:00','2023-04-03 09:10:00','Refund processed','MobileApp');

-- Supply chain carrier contracts
CREATE TABLE supply_chain_carrier_contracts (
    ContractID INTEGER PRIMARY KEY,
    CarrierID INTEGER,
    ContractNumber TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    ServiceRegion TEXT,
    ModeOfTransport TEXT,
    RatePerKm REAL,
    MinimumLoadKg REAL,
    MaxLoadKg REAL,
    PaymentTerms TEXT,
    SLAHours INTEGER,
    PenaltyRate REAL,
    Currency TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Status TEXT,
    Remarks TEXT,
    IsExclusive INTEGER
);
INSERT INTO supply_chain_carrier_contracts (ContractID,CarrierID,ContractNumber,EffectiveDate,ExpirationDate,ServiceRegion,ModeOfTransport,RatePerKm,MinimumLoadKg,MaxLoadKg,PaymentTerms,SLAHours,PenaltyRate,Currency,ContactPerson,ContactPhone,ContactEmail,CreatedAt,UpdatedAt,Status,Remarks,IsExclusive) VALUES (1,6001,'CNT-1001','2023-01-01','2025-12-31','NorthAmerica','Truck',1.25,500,20000,'Net30',48,0.05,'USD','JohnCarrier','5557777','johncarrier@example.com','2023-01-01 09:00:00','2023-01-01 09:00:00','Active','Standard contract',1);
INSERT INTO supply_chain_carrier_contracts (ContractID,CarrierID,ContractNumber,EffectiveDate,ExpirationDate,ServiceRegion,ModeOfTransport,RatePerKm,MinimumLoadKg,MaxLoadKg,PaymentTerms,SLAHours,PenaltyRate,Currency,ContactPerson,ContactPhone,ContactEmail,CreatedAt,UpdatedAt,Status,Remarks,IsExclusive) VALUES (2,6002,'CNT-1002','2022-06-15','2024-06-14','Europe','Rail',0.90,1000,50000,'Net45',72,0.07,'EUR','AnnaRail','5558888','annarail@example.eu','2022-06-15 10:15:00','2022-06-15 10:15:00','Active','Includes priority lanes',0);
INSERT INTO supply_chain_carrier_contracts (ContractID,CarrierID,ContractNumber,EffectiveDate,ExpirationDate,ServiceRegion,ModeOfTransport,RatePerKm,MinimumLoadKg,MaxLoadKg,PaymentTerms,SLAHours,PenaltyRate,Currency,ContactPerson,ContactPhone,ContactEmail,CreatedAt,UpdatedAt,Status,Remarks,IsExclusive) VALUES (3,6003,'CNT-1003','2023-03-01','2026-02-28','Asia','Air',3.50,200,2000,'Net60',24,0.10,'USD','MikeAir','5559999','mikeair@example.com','2023-03-01 08:30:00','2023-03-01 08:30:00','Pending','Awaiting regulatory approval',0);

-- Employee training modules catalog
CREATE TABLE employee_training_modules (
    ModuleID INTEGER PRIMARY KEY,
    ModuleCode TEXT,
    Title TEXT,
    Description TEXT,
    Category TEXT,
    DurationMinutes INTEGER,
    SkillLevel TEXT,
    DeliveryMethod TEXT,
    PrerequisiteModuleID INTEGER,
    IsMandatory INTEGER,
    ExpirationMonths INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Author TEXT,
    Version TEXT,
    Language TEXT,
    CertificationRequired INTEGER,
    AssessmentScoreThreshold REAL,
    MaxAttempts INTEGER,
    TrainingCost REAL,
    Department TEXT,
    AvailabilityStatus TEXT
);
INSERT INTO employee_training_modules (ModuleID,ModuleCode,Title,Description,Category,DurationMinutes,SkillLevel,DeliveryMethod,PrerequisiteModuleID,IsMandatory,ExpirationMonths,CreatedAt,UpdatedAt,Author,Version,Language,CertificationRequired,AssessmentScoreThreshold,MaxAttempts,TrainingCost,Department,AvailabilityStatus) VALUES (1,'TRN-001','Safety Basics','Fundamental safety procedures','Safety',60,'Beginner','Online',NULL,1,24,'2023-01-10 08:00:00','2023-01-10 08:00:00','SafetyTeam','1.0','EN',1,85.0,3,0.00,'Operations','Active');
INSERT INTO employee_training_modules (ModuleID,ModuleCode,Title,Description,Category,DurationMinutes,SkillLevel,DeliveryMethod,PrerequisiteModuleID,IsMandatory,ExpirationMonths,CreatedAt,UpdatedAt,Author,Version,Language,CertificationRequired,AssessmentScoreThreshold,MaxAttempts,TrainingCost,Department,AvailabilityStatus) VALUES (2,'TRN-002','Advanced Data Analysis','Deep dive into data analytics techniques','Analytics',180,'Advanced','InstructorLed',1,0,36,'2023-02-15 09:30:00','2023-02-15 09:30:00','DataTeam','2.1','EN',1,90.0,2,500.00,'DataScience','Planned');
INSERT INTO employee_training_modules (ModuleID,ModuleCode,Title,Description,Category,DurationMinutes,SkillLevel,DeliveryMethod,PrerequisiteModuleID,IsMandatory,ExpirationMonths,CreatedAt,UpdatedAt,Author,Version,Language,CertificationRequired,AssessmentScoreThreshold,MaxAttempts,TrainingCost,Department,AvailabilityStatus) VALUES (3,'TRN-003','Customer Service Excellence','Techniques for superior customer interaction','CustomerService',90,'Intermediate','Online',NULL,1,12,'2023-03-05 10:00:00','2023-03-05 10:00:00','CSDept','1.2','EN',0,80.0,3,0.00,'Support','Active');

-- Geofence definitions for asset monitoring
CREATE TABLE geofence_definitions (
    GeofenceID INTEGER PRIMARY KEY,
    Name TEXT,
    Description TEXT,
    LatitudeCenter REAL,
    LongitudeCenter REAL,
    RadiusMeters REAL,
    ShapeType TEXT,
    CreatedBy TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    IsActive INTEGER,
    EffectiveStart DATE,
    EffectiveEnd DATE,
    MonitoringFrequencySec INTEGER,
    AlertType TEXT,
    NotificationChannel TEXT,
    PriorityLevel INTEGER,
    AssociatedAssetID INTEGER,
    AssociatedAssetType TEXT,
    ZoneCategory TEXT,
    MaxSpeedLimit REAL,
    MinDwellTimeSec INTEGER
);
INSERT INTO geofence_definitions (GeofenceID,Name,Description,LatitudeCenter,LongitudeCenter,RadiusMeters,ShapeType,CreatedBy,CreatedAt,UpdatedAt,IsActive,EffectiveStart,EffectiveEnd,MonitoringFrequencySec,AlertType,NotificationChannel,PriorityLevel,AssociatedAssetID,AssociatedAssetType,ZoneCategory,MaxSpeedLimit,MinDwellTimeSec) VALUES (1,'DepotZone','Area around main depot',34.0522,-118.2437,5000,'Circle','GeoAdmin','2023-01-20 07:00:00','2023-01-20 07:00:00',1,'2023-01-01','2025-12-31',60,'EntryExit','SMS',1,1001,'Vehicle','Operational',80.0,30);
INSERT INTO geofence_definitions (GeofenceID,Name,Description,LatitudeCenter,LongitudeCenter,RadiusMeters,ShapeType,CreatedBy,CreatedAt,UpdatedAt,IsActive,EffectiveStart,EffectiveEnd,MonitoringFrequencySec,AlertType,NotificationChannel,PriorityLevel,AssociatedAssetID,AssociatedAssetType,ZoneCategory,MaxSpeedLimit,MinDwellTimeSec) VALUES (2,'RestrictedArea','No‑go zone near airport',33.9416,-118.4085,2000,'Polygon','GeoAdmin','2023-02-10 09:15:00','2023-02-10 09:15:00',1,'2023-02-01','2024-02-01',30,'Violation','Email',2,2002,'Vehicle','Security',0.0,0);
INSERT INTO geofence_definitions (GeofenceID,Name,Description,LatitudeCenter,LongitudeCenter,RadiusMeters,ShapeType,CreatedBy,CreatedAt,UpdatedAt,IsActive,EffectiveStart,EffectiveEnd,MonitoringFrequencySec,AlertType,NotificationChannel,PriorityLevel,AssociatedAssetID,AssociatedAssetType,ZoneCategory,MaxSpeedLimit,MinDwellTimeSec) VALUES (3,'ChargingStationArea','EV charging station proximity',37.7749,-122.4194,300,'Circle','GeoAdmin','2023-03-05 11:00:00','2023-03-05 11:00:00',1,'2023-03-01','2026-12-31',45,'Entry','Push',3,3003,'EVStation','Support',30.0,10);

-- Renewable energy project finance records
CREATE TABLE renewable_energy_project_finance (
    FinanceID INTEGER PRIMARY KEY,
    ProjectID INTEGER,
    InvestorID INTEGER,
    InvestmentDate DATE,
    InvestmentAmount REAL,
    Currency TEXT,
    OwnershipPercent REAL,
    DebtAmount REAL,
    EquityAmount REAL,
    InterestRate REAL,
    MaturityDate DATE,
    RepaymentSchedule TEXT,
    TaxIncentiveAmount REAL,
    SubsidyAmount REAL,
    Status TEXT,
    ExpectedROI REAL,
    PaybackPeriodYears REAL,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    FinancialAdvisor TEXT,
    RiskRating TEXT,
    Comments TEXT
);
INSERT INTO renewable_energy_project_finance (FinanceID,ProjectID,InvestorID,InvestmentDate,InvestmentAmount,Currency,OwnershipPercent,DebtAmount,EquityAmount,InterestRate,MaturityDate,RepaymentSchedule,TaxIncentiveAmount,SubsidyAmount,Status,ExpectedROI,PaybackPeriodYears,CreatedAt,UpdatedAt,FinancialAdvisor,RiskRating,Comments) VALUES (1,4001,7001,'2022-04-01',2500000.00,'USD',20.0,1500000.00,1000000.00,5.5,'2027-04-01','Annual','200000.00','150000.00','Active',8.0,7.5,'2022-04-01 10:00:00','2022-04-01 10:00:00','GreenFinanceCo','Medium','Initial funding round');
INSERT INTO renewable_energy_project_finance (FinanceID,ProjectID,InvestorID,InvestmentDate,InvestmentAmount,Currency,OwnershipPercent,DebtAmount,EquityAmount,InterestRate,MaturityDate,RepaymentSchedule,TaxIncentiveAmount,SubsidyAmount,Status,ExpectedROI,PaybackPeriodYears,CreatedAt,UpdatedAt,FinancialAdvisor,RiskRating,Comments) VALUES (2,4002,7002,'2023-01-15',5000000.00,'EUR',35.0,3000000.00,2000000.00,4.2,'2028-01-15','SemiAnnual','500000.00','300000.00','Pending',10.5,6.0,'2023-01-15 09:30:00','2023-01-15 09:30:00','EcoInvest','Low','Awaiting regulatory approval');
INSERT INTO renewable_energy_project_finance (FinanceID,ProjectID,InvestorID,InvestmentDate,InvestmentAmount,Currency,OwnershipPercent,DebtAmount,EquityAmount,InterestRate,MaturityDate,RepaymentSchedule,TaxIncentiveAmount,SubsidyAmount,Status,ExpectedROI,PaybackPeriodYears,CreatedAt,UpdatedAt,FinancialAdvisor,RiskRating,Comments) VALUES (3,4003,7003,'2021-09-20',1200000.00,'USD',15.0,800000.00,400000.00,6.0,'2026-09-20','Quarterly','150000.00','100000.00','Closed',7.2,9.0,'2021-09-20 11:45:00','2021-09-20 11:45:00','SolarCapital','High','Project completed successfully');

-- Public event permits database
CREATE TABLE public_event_permits (
    PermitID INTEGER PRIMARY KEY,
    EventID INTEGER,
    PermitNumber TEXT,
    IssuingAuthority TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    EventDate DATE,
    Location TEXT,
    ExpectedAttendance INTEGER,
    OrganizerName TEXT,
    OrganizerContact TEXT,
    SecurityPlanSubmitted INTEGER,
    NoiseLevelLimitDb REAL,
    AlcoholLicense INTEGER,
    FoodVendorApproved INTEGER,
    InsuranceProvider TEXT,
    PolicyNumber TEXT,
    ComplianceOfficer TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Status TEXT,
    Remarks TEXT
);
INSERT INTO public_event_permits (PermitID,EventID,PermitNumber,IssuingAuthority,IssueDate,ExpirationDate,EventDate,Location,ExpectedAttendance,OrganizerName,OrganizerContact,SecurityPlanSubmitted,NoiseLevelLimitDb,AlcoholLicense,FoodVendorApproved,InsuranceProvider,PolicyNumber,ComplianceOfficer,CreatedAt,UpdatedAt,Status,Remarks) VALUES (1,8001,'PERM-01','CityCouncil','2023-05-01','2023-06-01','2023-06-15','CentralPark','5000','LiveMusicCo','5551234',1,95.0,1,1,'SafeEventIns','POL12345','OfficerA','2023-05-01 08:00:00','2023-05-01 08:00:00','Approved','First annual festival');
INSERT INTO public_event_permits (PermitID,EventID,PermitNumber,IssuingAuthority,IssueDate,ExpirationDate,EventDate,Location,ExpectedAttendance,OrganizerName,OrganizerContact,SecurityPlanSubmitted,NoiseLevelLimitDb,AlcoholLicense,FoodVendorApproved,InsuranceProvider,PolicyNumber,ComplianceOfficer,CreatedAt,UpdatedAt,Status,Remarks) VALUES (2,8002,'PERM-02','StateAgency','2023-07-10','2023-08-10','2023-08-20','RiverFront','2000','FoodTruckFest','5555678',1,85.0,0,1,'EventCover','POL67890','OfficerB','2023-07-10 09:15:00','2023-07-10 09:15:00','Approved','Summer food event');
INSERT INTO public_event_permits (PermitID,EventID,PermitNumber,IssuingAuthority,IssueDate,ExpirationDate,EventDate,Location,ExpectedAttendance,OrganizerName,OrganizerContact,SecurityPlanSubmitted,NoiseLevelLimitDb,AlcoholLicense,FoodVendorApproved,InsuranceProvider,PolicyNumber,ComplianceOfficer,CreatedAt,UpdatedAt,Status,Remarks) VALUES (3,8003,'PERM-03','MunicipalDept','2023-09-05','2023-10-05','2023-10-12','DowntownSquare','8000','TechExpoInc','5559012',1,100.0,1,0,'TechEventIns','POL24680','OfficerC','2023-09-05 10:30:00','2023-09-05 10:30:00','Pending','Large technology exhibition');