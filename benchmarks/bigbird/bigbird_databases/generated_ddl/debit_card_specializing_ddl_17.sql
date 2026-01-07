-- Hydrocarbon storage facilities
CREATE TABLE hydrocarbon_storage_facilities (
    FacilityID INTEGER PRIMARY KEY,
    FacilityName TEXT,
    Country TEXT,
    Region TEXT,
    CapacityBarrels INTEGER,
    CurrentInventory INTEGER,
    OwnerCompany TEXT,
    ConstructionYear INTEGER,
    SafetyRating TEXT,
    InspectionDate DATE,
    ManagerName TEXT,
    ContactNumber TEXT,
    Latitude REAL,
    Longitude REAL,
    SecurityLevel TEXT,
    EmergencyPlanVersion TEXT,
    WasteDisposalMethod TEXT,
    FireSuppressionType TEXT,
    EnvironmentalPermitNumber TEXT,
    ComplianceStatus TEXT
);
INSERT INTO hydrocarbon_storage_facilities VALUES (1,'AlphaFacility','USA','Midwest',500000,350000,'EnergyCorp',1995,'A','2023-05-10','JohnDoe','5551234',40.7128,-74.0060,'High','V2','Incineration','Foam','EP12345','Compliant');
INSERT INTO hydrocarbon_storage_facilities VALUES (2,'BetaDepot','Canada','Ontario',300000,150000,'NorthOil',2002,'B','2023-06-15','JaneSmith','5555678',43.6532,-79.3832,'Medium','V1','Landfill','CO2','EP54321','Pending');
INSERT INTO hydrocarbon_storage_facilities VALUES (3,'GammaReserve','Mexico','Yucatan',400000,280000,'PetraMex',2010,'A','2023-07-20','CarlosRuiz','5559012',21.1619,-86.8515,'High','V3','Recycling','DryChemical','EP98765','Compliant');

-- Electric grid outages
CREATE TABLE electric_grid_outages (
    OutageID INTEGER PRIMARY KEY,
    OutageStartDate DATE,
    OutageStartTime TEXT,
    OutageEndDate DATE,
    OutageEndTime TEXT,
    AffectedRegion TEXT,
    AffectedPopulation INTEGER,
    CauseDescription TEXT,
    RestorationEstimatedHours REAL,
    ActualRestorationHours REAL,
    GridOperator TEXT,
    IncidentReportNumber TEXT,
    Latitude REAL,
    Longitude REAL,
    IsCritical INTEGER,
    NotificationSent INTEGER,
    ResolutionSteps TEXT,
    CostImpactUSD REAL,
    RegulatoryPenaltyFlag INTEGER,
    Remarks TEXT
);
INSERT INTO electric_grid_outages VALUES (101,'2023-08-01','02:15','2023-08-01','05:45','NorthEast',120000,'EquipmentFailure',4.5,3.5,'GridCo','IRN001',42.3601,-71.0589,1,1,'ReplacedTransformer',150000,0,'RestoredEarly');
INSERT INTO electric_grid_outages VALUES (102,'2023-09-12','14:30','2023-09-12','19:10','Midwest',85000,'SevereWeather',5.0,6.0,'PowerNet','IRN002',39.7684,-86.1581,1,1,'ClearedLines',200000,1,'PenaltyApplied');
INSERT INTO electric_grid_outages VALUES (103,'2023-10-20','08:00','2023-10-20','10:20','SouthWest',45000,'CyberAttack',2.5,2.8,'ElecSys','IRN003',34.0522,-118.2437,0,1,'IsolatedNetwork',90000,0,'NoPenalty');

-- Driver behavior scorecards
CREATE TABLE driver_behavior_scorecards (
    ScorecardID INTEGER PRIMARY KEY,
    DriverID INTEGER,
    EvaluationPeriodStart DATE,
    EvaluationPeriodEnd DATE,
    AvgSpeed REAL,
    SpeedingIncidents INTEGER,
    HardBrakingCount INTEGER,
    RapidAccelerations INTEGER,
    PhoneUseDetected INTEGER,
    SeatbeltComplianceRate REAL,
    FatigueAlerts INTEGER,
    RuleViolations INTEGER,
    OverallScore REAL,
    ReviewerName TEXT,
    ReviewDate DATE,
    Comments TEXT,
    TrainingRecommended INTEGER,
    FollowUpDate DATE,
    IncentivePointsAwarded INTEGER,
    Status TEXT
);
INSERT INTO driver_behavior_scorecards VALUES (1001,2001,'2023-07-01','2023-07-31',58.2,3,5,2,0,98.5,1,2,84.3,'AliceBrown','2023-08-05','Good overall',0,'2023-09-01',150,'Approved');
INSERT INTO driver_behavior_scorecards VALUES (1002,2002,'2023-07-01','2023-07-31',62.7,7,12,5,2,89.0,3,5,65.1,'BobClark','2023-08-06','Needs improvement',1,'2023-08-20',50,'PendingTraining');
INSERT INTO driver_behavior_scorecards VALUES (1003,2003,'2023-07-01','2023-07-31',55.0,1,2,1,0,99.9,0,0,92.5,'CarolDavis','2023-08-07','Excellent',0,'2023-09-15',200,'Approved');

-- Mobile app error logs
CREATE TABLE mobile_app_error_logs (
    ErrorLogID INTEGER PRIMARY KEY,
    AppVersion TEXT,
    DeviceModel TEXT,
    OSVersion TEXT,
    ErrorTimestamp DATETIME,
    ErrorCode INTEGER,
    ErrorMessage TEXT,
    UserID INTEGER,
    SessionID TEXT,
    NetworkType TEXT,
    BatteryLevel INTEGER,
    MemoryUsageMB INTEGER,
    CPUUsagePercent REAL,
    DiskSpaceRemainingMB INTEGER,
    ReproducibleFlag INTEGER,
    StepsToReproduce TEXT,
    ResolvedFlag INTEGER,
    ResolutionDate DATE,
    AssignedEngineer TEXT,
    AdditionalInfo TEXT
);
INSERT INTO mobile_app_error_logs VALUES (5001,'1.4.2','Pixel5','Android12','2023-08-15 14:23:10',404,'ResourceNotFound',301,'sessA1','WiFi',78,512,23.5,1500,1,'OpenSettingsThenRefresh',1,'2023-08-16','EveMiller','N/A');
INSERT INTO mobile_app_error_logs VALUES (5002,'2.0.0','iPhone12','iOS15','2023-09-02 09:07:45',500,'ServerError',452,'sessB2','LTE',56,1024,45.0,800,0,'N/A',0,NULL,'JohnDoe','PendingReview');
INSERT INTO mobile_app_error_logs VALUES (5003,'1.9.8','GalaxyS20','Android11','2023-10-10 18:55:30',301,'RedirectLoop',578,'sessC3','5G',90,256,12.0,2000,1,'TapButtonRepeatedly',1,'2023-10-12','SaraLee','IssueEscalated');

-- Supply chain risk assessments
CREATE TABLE supply_chain_risk_assessments (
    AssessmentID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    AssessmentDate DATE,
    RiskCategory TEXT,
    LikelihoodScore INTEGER,
    ImpactScore INTEGER,
    OverallRiskRating TEXT,
    MitigationPlanID INTEGER,
    Reviewer TEXT,
    ReviewComments TEXT,
    FollowUpDate DATE,
    Status TEXT,
    UpdatedScore INTEGER,
    ContingencyPlan TEXT,
    BusinessUnit TEXT,
    Region TEXT,
    ExposureLevel REAL,
    FinancialImpactUSD REAL,
    RegulatoryImpact TEXT,
    InsuranceCoverageFlag INTEGER
);
INSERT INTO supply_chain_risk_assessments VALUES (9001,1501,'2023-06-20','Geopolitical',4,5,'High',3001,'MikeGreen','ReviewComplete','2023-07-15','Open',85,'AlternateSourcePlan','Logistics','Europe',1.2,250000,'Medium',1);
INSERT INTO supply_chain_risk_assessments VALUES (9002,1502,'2023-07-05','Operational',2,3,'Medium',3002,'LindaWhite','MinorIssues','2023-08-01','Closed',60,'BackupEquipment','Manufacturing','Asia',0.7,120000,'Low',0);
INSERT INTO supply_chain_risk_assessments VALUES (9003,1503,'2023-08-12','Financial',5,4,'High',3003,'TomBlack','UrgentActionNeeded','2023-09-10','Open',90,'FinancialHedge','Procurement','NorthAmerica',1.5,500000,'High',1);

-- Regulatory filing deadlines
CREATE TABLE regulatory_filing_deadlines (
    DeadlineID INTEGER PRIMARY KEY,
    RegulationName TEXT,
    FilingYear INTEGER,
    FilingQuarter INTEGER,
    DueDate DATE,
    SubmissionMethod TEXT,
    ResponsibleDept TEXT,
    ContactPerson TEXT,
    ContactEmail TEXT,
    ReminderSentFlag INTEGER,
    ExtensionGrantedFlag INTEGER,
    ExtensionNewDueDate DATE,
    PenaltyAmountUSD REAL,
    Status TEXT,
    LastUpdated DATE,
    Notes TEXT,
    ArchiveLocation TEXT,
    ComplianceOfficer TEXT,
    AuditTrailID INTEGER,
    PriorityLevel INTEGER
);
INSERT INTO regulatory_filing_deadlines VALUES (2001,'EnviroAct','2023',2,'2023-07-31','Online','Legal','AnnaK','anna.k@example.com',1,0,NULL,0,'Submitted','2023-07-15','All good','/archive/2023/enviro','JamesLee',5001,1);
INSERT INTO regulatory_filing_deadlines VALUES (2002,'TaxCode','2023',4,'2023-12-31','Paper','Finance','BobM','bob.m@example.com',0,1,'2024-01-15',5000,'Pending','2023-12-01','Awaiting extension','/archive/2023/tax','SarahKim',5002,2);
INSERT INTO regulatory_filing_deadlines VALUES (2003,'SafetyReg','2024',1,'2024-03-31','Online','Compliance','ClaraN','clara.n@example.com',1,0,NULL,0,'Submitted','2024-03-20','Submitted early','/archive/2024/safety','DavidPark',5003,1);

-- Advertising media spends
CREATE TABLE advertising_media_spends (
    SpendID INTEGER PRIMARY KEY,
    CampaignID INTEGER,
    MediaChannel TEXT,
    StartDate DATE,
    EndDate DATE,
    PlannedSpendUSD REAL,
    ActualSpendUSD REAL,
    Impressions INTEGER,
    Clicks INTEGER,
    CPM REAL,
    CPC REAL,
    CTR REAL,
    Reach INTEGER,
    Frequency REAL,
    TargetAudience TEXT,
    Region TEXT,
    CreativeID INTEGER,
    VendorID INTEGER,
    InvoiceNumber TEXT,
    PaymentStatus TEXT,
    Notes TEXT
);
INSERT INTO advertising_media_spends VALUES (30001,4001,'TV','2023-05-01','2023-05-31',200000,210000,1500000,45000,133.33,4.67,0.03,1200000,1.2,'Adults 25-45','NorthAmerica',501,601,'INV001','Paid','Exceeded budget');
INSERT INTO advertising_media_spends VALUES (30002,4002,'Social','2023-06-01','2023-06-30',80000,75000,2500000,65000,30.00,1.15,0.026,2000000,1.5,'Teens 13-19','Europe',502,602,'INV002','Paid','Within budget');
INSERT INTO advertising_media_spends VALUES (30003,4003,'Radio','2023-07-01','2023-07-31',50000,48000,0,0,0,0,0,0,0,'Adults 35-60','Asia',503,603,'INV003','Pending','Awaiting clearance');

-- Public relation mentions
CREATE TABLE public_relation_mentions (
    MentionID INTEGER PRIMARY KEY,
    PublicationName TEXT,
    PublicationDate DATE,
    ArticleTitle TEXT,
    MentionType TEXT,
    SentimentScore REAL,
    ReachEstimate INTEGER,
    URL TEXT,
    PRContact TEXT,
    CampaignID INTEGER,
    Region TEXT,
    Language TEXT,
    QuoteText TEXT,
    Topic TEXT,
    JournalistName TEXT,
    IssueNumber TEXT,
    PageNumber INTEGER,
    DistributionMethod TEXT,
    FollowUpAction TEXT,
    Status TEXT,
    CreatedAt DATETIME
);
INSERT INTO public_relation_mentions VALUES (4001,'GlobalNews','2023-08-10','Company launches new eco‑fuel','Feature',0.8,500000,'http://globalnews.com/article1','EmmaWhite',5001,'NorthAmerica','English','We are committed to sustainability','Sustainability','JohnDoe','Vol12','5','Print','ScheduleInterview','Published','2023-08-10 09:00:00');
INSERT INTO public_relation_mentions VALUES (4002,'TechWeekly','2023-09-05','Innovative payment options for drivers','Brief',0.6,300000,'http://techweekly.com/article2','LiamGrey',5002,'Europe','English','Our new app integration simplifies payments','Technology','OliviaSmith','Vol8','12','Online','SendPressKit','Published','2023-09-05 14:30:00');
INSERT INTO public_relation_mentions VALUES (4003,'BizInsights','2023-10-02','Market analysis of fuel pricing trends','Analysis',0.4,200000,'http://bizinsights.com/article3','MiaBrown',5003,'Asia','English','Pricing volatility requires adaptive strategies','Market Trends','NoahLee','Vol3','22','Print','ArrangeWebinar','Draft','2023-10-02 11:15:00');

-- Environmental training sessions
CREATE TABLE environmental_training_sessions (
    SessionID INTEGER PRIMARY KEY,
    TrainingName TEXT,
    TrainerName TEXT,
    TrainingDate DATE,
    DurationHours REAL,
    Location TEXT,
    AudienceGroup TEXT,
    NumberAttendees INTEGER,
    CertificationProvidedFlag INTEGER,
    MaterialsProvidedFlag INTEGER,
    FeedbackScore REAL,
    FollowUpRequiredFlag INTEGER,
    FollowUpDate DATE,
    CostUSD REAL,
    Department TEXT,
    SessionType TEXT,
    OnlineLink TEXT,
    RecordingAvailableFlag INTEGER,
    EvaluationReportID INTEGER,
    Notes TEXT
);
INSERT INTO environmental_training_sessions VALUES (6001,'Waste Management Basics','KarenBlue','2023-07-20',4,'HQ Conference Room','Operations',25,1,1,4.5,0,NULL,1500,'Operations','InPerson','',0,7001,'Positive feedback');
INSERT INTO environmental_training_sessions VALUES (6002,'Carbon Footprint Reduction','MarkGreen','2023-08-15',3,'Online','All Employees',120,0,1,4.2,1,'2023-09-01',800,'HR','Webinar','https://trainings.com/carbon','1',7002,'Follow‑up required for action plans');
INSERT INTO environmental_training_sessions VALUES (6003,'Renewable Energy Overview','LauraYellow','2023-09-10',2,'Regional Office','Engineering',40,1,0,4.8,0,NULL,1200,'Engineering','InPerson','',0,7003,'Excellent attendance');

-- Fuel station waste recycling
CREATE TABLE fuel_station_waste_recycling (
    RecordID INTEGER PRIMARY KEY,
    StationID INTEGER,
    CollectionDate DATE,
    WasteType TEXT,
    WasteWeightKg REAL,
    RecyclingPartner TEXT,
    DisposalMethod TEXT,
    HazardousFlag INTEGER,
    ComplianceCertificateNumber TEXT,
    OfficerInCharge TEXT,
    Notes TEXT,
    TemperatureC REAL,
    VolumeLiters REAL,
    ContainerID TEXT,
    SealNumber TEXT,
    TransportVehicleID INTEGER,
    ArrivalTime TEXT,
    DepartureTime TEXT,
    CostUSD REAL,
    Status TEXT
);
INSERT INTO fuel_station_waste_recycling VALUES (8001,1001,'2023-08-01','UsedOil',250.5,'EcoRecycle','Thermal',1,'CCN12345','SamT','Collected after shift',22.5,300,'CONT001','SEAL001',4001,'08:00','09:00',350,'Completed');
INSERT INTO fuel_station_waste_recycling VALUES (8002,1002,'2023-08-15','Cardboard',120.0,'GreenLoop','Landfill',0,'CCN67890','RitaK','No issues',21.0,200,'CONT002','SEAL002',4002,'10:30','11:15',180,'Completed');
INSERT INTO fuel_station_waste_recycling VALUES (8003,1003,'2023-09-05','Battery',45.3,'HazardClean','Special',1,'CCN54321','LeoM','Handled with care',23.0,50,'CONT003','SEAL003',4003,'14:20','15:05',500,'Pending Inspection');