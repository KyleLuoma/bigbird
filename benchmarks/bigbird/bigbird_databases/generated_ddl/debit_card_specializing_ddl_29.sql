-- Table for CCTV cameras installed at fuel stations
CREATE TABLE station_cctv_cameras
(
    CameraID INTEGER PRIMARY KEY,
    StationID INTEGER,
    CameraModel TEXT,
    InstallationDate DATE,
    Resolution TEXT,
    FieldOfView REAL,
    NightVision INTEGER,
    IP_Address TEXT,
    FirmwareVersion TEXT,
    Latitude REAL,
    Longitude REAL,
    MountType TEXT,
    PowerSource TEXT,
    VideoRetentionDays INTEGER,
    EncryptionEnabled INTEGER,
    MaintenanceIntervalDays INTEGER,
    LastMaintenanceDate DATE,
    Status TEXT,
    OperatorContact TEXT,
    NetworkSegment TEXT
);

INSERT INTO station_cctv_cameras (CameraID,StationID,CameraModel,InstallationDate,Resolution,FieldOfView,NightVision,IP_Address,FirmwareVersion,Latitude,Longitude,MountType,PowerSource,VideoRetentionDays,EncryptionEnabled,MaintenanceIntervalDays,LastMaintenanceDate,Status,OperatorContact,NetworkSegment) VALUES
(1,101,'ModelX','2023-05-10','1080p',120.5,1,'192.168.1.10','v1.2',40.7128,-74.0060,'Ceiling','PoE',30,1,90,'2024-01-15','Active','JohnDoe','SegmentA'),
(2,102,'ModelY','2022-11-22','4K',135.0,0,'192.168.1.20','v2.0',34.0522,-118.2437,'Wall','Solar',45,1,120,'2023-12-01','Active','JaneSmith','SegmentB'),
(3,103,'ModelZ','2021-07-05','720p',110.0,1,'192.168.1.30','v1.8',51.5074,-0.1278,'Pole','Battery',60,0,180,'2024-02-10','Inactive','MikeLee','SegmentC');

-- Table recording historic vehicle routes
CREATE TABLE vehicle_route_history
(
    RouteLogID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    DriverID INTEGER,
    StartTimestamp DATETIME,
    EndTimestamp DATETIME,
    StartLocation TEXT,
    EndLocation TEXT,
    DistanceKm REAL,
    AvgSpeedKmh REAL,
    FuelConsumedLiters REAL,
    RouteType TEXT,
    WeatherCondition TEXT,
    TrafficLevel TEXT,
    CargoWeightKg REAL,
    RouteDeviationFlag INTEGER,
    ReportedIssues TEXT,
    ComplianceScore REAL,
    GPSDeviceID INTEGER,
    MileageAtStart INTEGER,
    MileageAtEnd INTEGER
);

INSERT INTO vehicle_route_history (RouteLogID,VehicleID,DriverID,StartTimestamp,EndTimestamp,StartLocation,EndLocation,DistanceKm,AvgSpeedKmh,FuelConsumedLiters,RouteType,WeatherCondition,TrafficLevel,CargoWeightKg,RouteDeviationFlag,ReportedIssues,ComplianceScore,GPSDeviceID,MileageAtStart,MileageAtEnd) VALUES
(1001,2001,3001,'2024-01-01 08:00:00','2024-01-01 10:30:00','DepotA','StationB',150.2,60.5,12.3,'Delivery','Clear','Medium',2000,0,'None',95.6,4001,12000,12150),
(1002,2002,3002,'2024-01-02 09:15:00','2024-01-02 11:45:00','DepotC','StationD',180.7,58.2,14.8,'Pickup','Rain','High',1500,1,'Delay due to traffic',88.4,4002,25000,25180),
(1003,2003,3003,'2024-01-03 07:45:00','2024-01-03 09:20:00','DepotE','StationF',95.4,62.1,7.5,'Maintenance','Fog','Low',0,0,'None',99.1,4003,30000,30095);

-- Table for employee access cards
CREATE TABLE employee_access_cards
(
    CardID INTEGER PRIMARY KEY,
    EmployeeID INTEGER,
    CardNumber TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    AccessLevel INTEGER,
    CardStatus TEXT,
    LastUsedTimestamp DATETIME,
    FacilityID INTEGER,
    DoorID INTEGER,
    ReaderModel TEXT,
    ProvisionedBy INTEGER,
    DeactivationReason TEXT,
    LostFlag INTEGER,
    ContactPhone TEXT,
    EmailAddress TEXT,
    SecurityClearance TEXT,
    BiometricEnabled INTEGER,
    PinCode TEXT,
    Notes TEXT
);

INSERT INTO employee_access_cards (CardID,EmployeeID,CardNumber,IssueDate,ExpirationDate,AccessLevel,CardStatus,LastUsedTimestamp,FacilityID,DoorID,ReaderModel,ProvisionedBy,DeactivationReason,LostFlag,ContactPhone,EmailAddress,SecurityClearance,BiometricEnabled,PinCode,Notes) VALUES
(5001,6001,'CARD1001','2022-03-01','2025-03-01',3,'Active','2024-01-05 08:30:00',101,12,'RDRX','5000',NULL,0,'5551234567','employee1@example.com','Level3',1,'1234','Issued for main office'),
(5002,6002,'CARD1002','2021-08-15','2024-08-15',2,'Suspended','2024-01-04 17:45:00',102,5,'RDRA','5000','Policy violation',0,'5559876543','employee2@example.com','Level2',0,'5678','Suspended due to policy breach'),
(5003,6003,'CARD1003','2023-01-20','2026-01-20',4,'Active','2024-01-06 09:10:00',103,8,'RDRB','5000',NULL,0,'5555555555','employee3@example.com','Level4',1,'9012','Temporary access for project X');

-- Table forecasting regional fuel prices
CREATE TABLE regional_fuel_price_forecast
(
    ForecastID INTEGER PRIMARY KEY,
    RegionCode TEXT,
    FuelType TEXT,
    ForecastDate DATE,
    ProjectedPriceUSD REAL,
    ConfidenceLow REAL,
    ConfidenceHigh REAL,
    SourceAgency TEXT,
    ModelVersion TEXT,
    Scenario TEXT,
    HistoricalAvgPrice REAL,
    SeasonalAdjustment REAL,
    TaxRate REAL,
    ExchangeRate REAL,
    InflationFactor REAL,
    RegulatoryImpact REAL,
    MarketDemandIndex REAL,
    SupplyConstraintScore REAL,
    Notes TEXT,
    CreatedBy INTEGER,
    CreatedAt DATETIME
);

INSERT INTO regional_fuel_price_forecast (ForecastID,RegionCode,FuelType,ForecastDate,ProjectedPriceUSD,ConfidenceLow,ConfidenceHigh,SourceAgency,ModelVersion,Scenario,HistoricalAvgPrice,SeasonalAdjustment,TaxRate,ExchangeRate,InflationFactor,RegulatoryImpact,MarketDemandIndex,SupplyConstraintScore,Notes,CreatedBy,CreatedAt) VALUES
(9001,'US-NE','Diesel','2024-02-01',3.45,3.30,3.60,'EIA','v1.0','Base',3.20,0.05,0.15,1.00,1.02,0.10,1.15,0.20,'Quarterly forecast',101,'2024-01-10 12:00:00'),
(9002,'EU-CH','Petrol','2024-02-01',1.55,1.45,1.65,'Eurostat','v1.2','Optimistic',1.40,0.07,0.20,0.95,1.01,0.05,1.10,0.15,'Scenario assumes low demand',102,'2024-01-11 08:30:00'),
(9003,'AP-SEA','LPG','2024-02-01',0.85,0.78,0.92,'ASEANStat','v0.9','Pessimistic',0.80,0.03,0.10,1.05,1.03,0.12,0.95,0.25,'High supply constraints',103,'2024-01-12 15:45:00');

-- Table describing corporate branch offices
CREATE TABLE corporate_branch_offices
(
    BranchID INTEGER PRIMARY KEY,
    BranchName TEXT,
    Country TEXT,
    City TEXT,
    AddressLine1 TEXT,
    AddressLine2 TEXT,
    PostalCode TEXT,
    PhoneNumber TEXT,
    FaxNumber TEXT,
    ManagerEmployeeID INTEGER,
    OpeningDate DATE,
    NumberOfEmployees INTEGER,
    FloorSpaceSqM REAL,
    OperatingHours TEXT,
    RegionCode TEXT,
    BranchType TEXT,
    RentLeaseStatus TEXT,
    AnnualBudgetUSD REAL,
    ComplianceScore REAL,
    Notes TEXT
);

INSERT INTO corporate_branch_offices (BranchID,BranchName,Country,City,AddressLine1,AddressLine2,PostalCode,PhoneNumber,FaxNumber,ManagerEmployeeID,OpeningDate,NumberOfEmployees,FloorSpaceSqM,OperatingHours,RegionCode,BranchType,RentLeaseStatus,AnnualBudgetUSD,ComplianceScore,Notes) VALUES
(2001,'Northwest Hub','USA','Seattle','123 Pine St','Suite 400','98101','2065550100','2065550199',3001,'2015-06-01',120,3500.5,'08:00-18:00','US-NW','Regional','Leased',2.5e6,94.3,'Flagship branch on west coast'),
(2002,'Central Europe Office','Germany','Frankfurt','45 Main Plaza','Floor 3','60313','0695550200','0695550299',3002,'2018-09-15',85,2800.0,'09:00-17:00','EU-CEN','Regional','Owned',1.8e6,89.7,'Key EU hub'),
(2003,'Asia Pacific Center','Singapore','Singapore','88 Marina Bay','Level 5','018989','6585550300','6585550399',3003,'2020-01-20',60,2100.0,'10:00-19:00','AP-SEA','Regional','Leased',1.2e6,92.1,'Serves AP markets');

-- Table logging utility outages
CREATE TABLE utility_outage_log
(
    OutageID INTEGER PRIMARY KEY,
    UtilityType TEXT,
    RegionCode TEXT,
    StartTime DATETIME,
    EndTime DATETIME,
    DurationMinutes INTEGER,
    AffectedCustomers INTEGER,
    CauseCategory TEXT,
    CauseDescription TEXT,
    RestorationMethod TEXT,
    EstimatedRepairCostUSD REAL,
    CrewTeamID INTEGER,
    VoltageLevel TEXT,
    EquipmentID TEXT,
    ReportedBy INTEGER,
    ResolutionStatus TEXT,
    ImpactSeverity TEXT,
    MitigationActions TEXT,
    Notes TEXT,
    RecordCreatedAt DATETIME
);

INSERT INTO utility_outage_log (OutageID,UtilityType,RegionCode,StartTime,EndTime,DurationMinutes,AffectedCustomers,CauseCategory,CauseDescription,RestorationMethod,EstimatedRepairCostUSD,CrewTeamID,VoltageLevel,EquipmentID,ReportedBy,ResolutionStatus,ImpactSeverity,MitigationActions,Notes,RecordCreatedAt) VALUES
(4001,'Electric','US-NE','2024-01-03 14:20:00','2024-01-03 16:45:00',145,3200,'EquipmentFailure','Transformer burst','Bypass installation',75000.0,7001,'13kV','TRF-4587',9001,'Resolved','High','Deployed mobile substation','No injuries', '2024-01-04 09:00:00'),
(4002,'Water','EU-CH','2024-01-10 08:00:00','2024-01-10 12:30:00',270,1500,'Leakage','Main pipe rupture','Sectional isolation',120000.0,7002,'Low', 'WP-2198',9002,'Resolved','Medium','Rerouted supply','Repair completed', '2024-01-10 13:00:00'),
(4003,'Gas','AP-SEA','2024-01-18 22:15:00','2024-01-19 02:00:00',225,800,'ExternalDamage','Construction impact','Shut‑in and repair',90000.0,7003,'Medium','GS-3345',9003,'InProgress','Low','Temporary supply from neighboring grid','Awaiting contractor', '2024-01-19 03:00:00');

-- Table for public event sponsorships
CREATE TABLE public_event_sponsorships
(
    SponsorshipID INTEGER PRIMARY KEY,
    EventID INTEGER,
    SponsorCompanyID INTEGER,
    SponsorshipLevel TEXT,
    ContributionAmountUSD REAL,
    InKindDescription TEXT,
    StartDate DATE,
    EndDate DATE,
    ContactPerson TEXT,
    ContactPhone TEXT,
    LogoPlacement TEXT,
    BannerLocation TEXT,
    MediaExposureHours REAL,
    ExpectedAttendance INTEGER,
    ContractSignedDate DATE,
    PaymentStatus TEXT,
    Notes TEXT,
    CreatedBy INTEGER,
    CreatedAt DATETIME,
    ActiveFlag INTEGER
);

INSERT INTO public_event_sponsorships (SponsorshipID,EventID,SponsorCompanyID,SponsorshipLevel,ContributionAmountUSD,InKindDescription,StartDate,EndDate,ContactPerson,ContactPhone,LogoPlacement,BannerLocation,MediaExposureHours,ExpectedAttendance,ContractSignedDate,PaymentStatus,Notes,CreatedBy,CreatedAt,ActiveFlag) VALUES
(6001,7001,8001,'Gold',50000,'Vehicles','2024-03-01','2024-03-05','Alice Green','5551112222','MainStage','NorthGate','12.5',20000,'2024-01-15','Paid','High visibility sponsorship',101,'2024-01-20 10:00:00',1),
(6002,7002,8002,'Silver',25000,'Food Supplies','2024-04-10','2024-04-12','Bob White','5553334444','SideStage','EastWall','8.0',15000,'2024-02-20','Pending','Mid‑tier sponsor',102,'2024-02-25 14:30:00',1),
(6003,7003,8003,'Bronze',10000,NULL,'2024-05-20','2024-05-22','Carol Black','5557778888','InfoBooth','WestCorner','4.2',8000,'2024-03-10','Paid','Entry level sponsor',103,'2024-03-15 09:45:00',0);

-- Table for digital security incidents
CREATE TABLE digital_security_incidents
(
    IncidentID INTEGER PRIMARY KEY,
    IncidentDate DATETIME,
    DetectedBy TEXT,
    SeverityLevel TEXT,
    AffectedSystem TEXT,
    Description TEXT,
    RootCause TEXT,
    MitigationAction TEXT,
    ResolutionDate DATETIME,
    DowntimeMinutes INTEGER,
    DataLoss INTEGER,
    ComplianceImpact INTEGER,
    ReportedToAuthority INTEGER,
    IncidentOwnerID INTEGER,
    Status TEXT,
    TicketNumber TEXT,
    PatchApplied INTEGER,
    PatchVersion TEXT,
    Notes TEXT,
    CreatedAt DATETIME
);

INSERT INTO digital_security_incidents (IncidentID,IncidentDate,DetectedBy,SeverityLevel,AffectedSystem,Description,RootCause,MitigationAction,ResolutionDate,DowntimeMinutes,DataLoss,ComplianceImpact,ReportedToAuthority,IncidentOwnerID,Status,TicketNumber,PatchApplied,PatchVersion,Notes,CreatedAt) VALUES
(8001,'2024-01-12 03:45:00','SIEM','Critical','AuthServer','Multiple failed logins leading to lockout','BruteForce','Account lockout policy updated','2024-01-12 05:00:00',75,0,1,1,9001,'Resolved','TCK-1001',1,'v5.3','No data exfiltrated', '2024-01-12 06:00:00'),
(8002,'2024-01-20 14:10:00','IDS','High','WebApp','SQL injection attempt detected','Input validation flaw','Patched query builder','2024-01-20 15:30:00',45,0,0,0,9002,'Resolved','TCK-1002',1,'v2.1','Attack blocked by WAF', '2024-01-20 16:00:00'),
(8003,'2024-02-02 22:05:00','UserReport','Medium','EmailServer','Spam surge causing delayed delivery','Compromised credentials','Password reset and MFA enforcement','2024-02-03 02:00:00',180,0,0,0,9003,'InProgress','TCK-1003',0,NULL,'Investigation ongoing', '2024-02-03 03:00:00');

-- Table for airport terminal facilities
CREATE TABLE airport_terminal_facilities
(
    FacilityID INTEGER PRIMARY KEY,
    TerminalID INTEGER,
    FacilityType TEXT,
    LocationDescription TEXT,
    Capacity INTEGER,
    OpeningYear INTEGER,
    OperatorCompanyID INTEGER,
    SecurityClearanceLevel TEXT,
    MaintenanceContractID INTEGER,
    AverageDailyPassengers INTEGER,
    EnergyConsumptionKWh REAL,
    WaterUsageLiters REAL,
    WasteGeneratedKg REAL,
    FloorAreaSqM REAL,
    AccessibilityFeatures TEXT,
    WiFiBandwidthMbps REAL,
    RetailSpaceSqM REAL,
    ParkingSpots INTEGER,
    Notes TEXT,
    CreatedAt DATETIME
);

INSERT INTO airport_terminal_facilities (FacilityID,TerminalID,FacilityType,LocationDescription,Capacity,OpeningYear,OperatorCompanyID,SecurityClearanceLevel,MaintenanceContractID,AverageDailyPassengers,EnergyConsumptionKWh,WaterUsageLiters,WasteGeneratedKg,FloorAreaSqM,AccessibilityFeatures,WiFiBandwidthMbps,RetailSpaceSqM,ParkingSpots,Notes,CreatedAt) VALUES
(9001,1,'CheckInCounter','Near Gate A1',250,2010,11001,'Level2',5001,35000,1200000.5,800000.0,5000.0,2500.0,'Ramp,Elevator','500','400','150','Renovated 2022','2024-01-01 08:00:00'),
(9002,2,'BaggageHandling','North Wing',500,2015,11002,'Level3',5002,50000,1800000.0,1100000.0,7500.0,3500.0,'Conveyor belts','650','600','200','Expansion project ongoing','2024-01-15 09:30:00'),
(9003,3,'Lounge','Level 4',150,2018,11003,'Level1',5003,20000,900000.0,400000.0,3000.0,1500.0,'Wheelchair access','400','300','80','Premium lounge open 24/7','2024-02-10 07:45:00');

-- Table for electric vehicle incentive applications
CREATE TABLE electric_vehicle_incentive_applications
(
    ApplicationID INTEGER PRIMARY KEY,
    ApplicantID INTEGER,
    VehicleVIN TEXT,
    IncentiveProgram TEXT,
    ApplicationDate DATE,
    ApprovalStatus TEXT,
    ApprovedAmountUSD REAL,
    FundingSource TEXT,
    InstallationCompanyID INTEGER,
    ChargingStationID INTEGER,
    ExpectedDeliveryDate DATE,
    ActualDeliveryDate DATE,
    CancellationReason TEXT,
    Notes TEXT,
    CreatedBy INTEGER,
    CreatedAt DATETIME,
    LastUpdatedAt DATETIME,
    VerifierID INTEGER,
    VerificationStatus TEXT,
    AuditTrail TEXT
);

INSERT INTO electric_vehicle_incentive_applications (ApplicationID,ApplicantID,VehicleVIN,IncentiveProgram,ApplicationDate,ApprovalStatus,ApprovedAmountUSD,FundingSource,InstallationCompanyID,ChargingStationID,ExpectedDeliveryDate,ActualDeliveryDate,CancellationReason,Notes,CreatedBy,CreatedAt,LastUpdatedAt,VerifierID,VerificationStatus,AuditTrail) VALUES
(10001,20001,'1HGCM82633A004352','StateRebate','2023-11-15','Approved',3000.00,'StateFund',31001,41001,'2024-04-01','2024-04-10',NULL,'Eligible vehicle','101','2023-11-20 10:00:00','2024-04-15 12:30:00',9001,'Verified','Created->Reviewed->Approved'),
(10002,20002,'1HGCM82633A004353','FederalGrant','2023-12-01','Pending',5000.00,'FederalBudget',31002,41002,'2024-05-15',NULL,NULL,'Pending documents','102','2023-12-05 09:30:00','2024-01-10 14:45:00',9002,'InReview','Created->PendingDocs'),
(10003,20003,'1HGCM82633A004354','CityPilot','2024-01-10','Cancelled',0.00,'CityFund',31003,41003,'2024-06-01',NULL,'Applicant withdrew','Vehicle no longer needed','103','2024-01-12 11:15:00','2024-01-20 16:00:00',9003,'Cancelled','Created->Cancelled');