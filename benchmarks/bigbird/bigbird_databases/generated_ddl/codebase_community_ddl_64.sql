-- Research grant applications details
CREATE TABLE research_grant_applications (
    Id INTEGER NOT NULL PRIMARY KEY,
    GrantName TEXT NULL,
    ApplicantId INTEGER NULL,
    Department TEXT NULL,
    RequestedAmount REAL NULL,
    ApprovedAmount REAL NULL,
    SubmissionDate DATETIME NULL,
    ReviewScore INTEGER NULL,
    FundingCycle TEXT NULL,
    GrantStatus TEXT NULL,
    PrincipalInvestigator TEXT NULL,
    CoInvestigator TEXT NULL,
    ProjectStartDate DATETIME NULL,
    ProjectEndDate DATETIME NULL,
    Abstract TEXT NULL,
    Keywords TEXT NULL,
    FundingAgency TEXT NULL,
    ContactEmail TEXT NULL,
    PhoneNumber TEXT NULL,
    IsInternational INTEGER NULL
);
INSERT INTO research_grant_applications VALUES (1,'GrantAlpha',101,'Physics',50000,45000,'2023-01-15',85,'2023','Approved','DrSmith','DrJones','2023-06-01','2025-06-01','Study of quantum fields','quantum,fields','NationalScience','alpha@example.com','5551234',0);
INSERT INTO research_grant_applications VALUES (2,'GrantBeta',102,'Chemistry',75000,75000,'2023-02-20',92,'2023','Approved','DrLee','DrKim','2023-09-01','2026-09-01','Catalyst development','catalyst,chemistry','ScienceFund','beta@example.com','5555678',0);
INSERT INTO research_grant_applications VALUES (3,'GrantGamma',103,'Biology',30000,0,'2023-03-10',70,'2023','Rejected','DrPatel','',NULL,NULL,'Marine biodiversity assessment','marine,biodiversity','EcoGrant','gamma@example.com','5559012',0);

-- Employee skill assessments
CREATE TABLE employee_skill_assessments (
    Id INTEGER NOT NULL PRIMARY KEY,
    EmployeeId INTEGER NULL,
    AssessmentDate DATETIME NULL,
    SkillCategory TEXT NULL,
    SkillName TEXT NULL,
    ProficiencyLevel INTEGER NULL,
    YearsExperience INTEGER NULL,
    Certified INTEGER NULL,
    CertificationBody TEXT NULL,
    LastCertificationDate DATETIME NULL,
    NextReviewDate DATETIME NULL,
    AssessorId INTEGER NULL,
    Comments TEXT NULL,
    RatingScore INTEGER NULL,
    DevelopmentPlan TEXT NULL,
    TrainingHours INTEGER NULL,
    TrainingProvider TEXT NULL,
    IsCoreSkill INTEGER NULL,
    SkillImportance INTEGER NULL,
    SalaryImpact REAL NULL
);
INSERT INTO employee_skill_assessments VALUES (1,2001,'2023-04-01','Programming','Python',4,5,1,'PythonInstitute','2022-05-10','2024-05-10',3001,'Excellent problem solving',9,'Advanced data science course',40,'DataAcademy',1,5,1200.00);
INSERT INTO employee_skill_assessments VALUES (2,2002,'2023-04-15','Management','ProjectManagement',3,3,0,'','',NULL,3002,'Needs leadership training',6,'Enroll in PMP prep',20,'PMI',1,4,800.00);
INSERT INTO employee_skill_assessments VALUES (3,2003,'2023-05-01','Design','UIUX',5,7,1,'DesignCertOrg','2021-09-20','2023-09-20',3003,'Mentors junior designers',9,'Lead upcoming redesign',60,'CreativeLabs',1,5,1500.00);

-- Digital marketing channels statistics
CREATE TABLE digital_marketing_channels_stats (
    Id INTEGER NOT NULL PRIMARY KEY,
    ChannelName TEXT NULL,
    CampaignId INTEGER NULL,
    StartDate DATETIME NULL,
    EndDate DATETIME NULL,
    Impressions INTEGER NULL,
    Clicks INTEGER NULL,
    Conversions INTEGER NULL,
    SpendAmount REAL NULL,
    CostPerClick REAL NULL,
    CostPerConversion REAL NULL,
    CTR REAL NULL,
    ConversionRate REAL NULL,
    BounceRate REAL NULL,
    AvgSessionDuration REAL NULL,
    AudienceReach INTEGER NULL,
    NewUsers INTEGER NULL,
    ReturningUsers INTEGER NULL,
    RevenueGenerated REAL NULL,
    ROI REAL NULL,
    CountryTarget TEXT NULL
);
INSERT INTO digital_marketing_channels_stats VALUES (1,'Search',1001,'2023-01-01','2023-01-31',150000,3000,200,12000.00,4.00,60.00,0.02,0.067,0.40,180.5,50000,2000,3000,25000.00,2.08,'USA');
INSERT INTO digital_marketing_channels_stats VALUES (2,'Social',1002,'2023-02-01','2023-02-28',200000,2500,150,15000.00,6.00,100.00,0.0125,0.06,0.35,210.0,60000,2500,3500,18000.00,1.20,'Canada');
INSERT INTO digital_marketing_channels_stats VALUES (3,'Email',1003,'2023-03-01','2023-03-31',50000,5000,400,8000.00,1.60,20.00,0.10,0.08,0.20,300.0,30000,10000,20000,30000.00,3.75,'UK');

-- IoT device firmware information
CREATE TABLE iot_device_firmware (
    Id INTEGER NOT NULL PRIMARY KEY,
    DeviceId INTEGER NULL,
    FirmwareVersion TEXT NULL,
    ReleaseDate DATETIME NULL,
    SupportedHardware TEXT NULL,
    IsCriticalUpdate INTEGER NULL,
    ReleaseNotes TEXT NULL,
    FileChecksum TEXT NULL,
    FileSizeKB INTEGER NULL,
    DownloadUrl TEXT NULL,
    Manufacturer TEXT NULL,
    DeviceModel TEXT NULL,
    OSVersion TEXT NULL,
    UpdateStatus TEXT NULL,
    ScheduledUpdateDate DATETIME NULL,
    AppliedDate DATETIME NULL,
    FailureCount INTEGER NULL,
    RollbackVersion TEXT NULL,
    ComplianceStatus TEXT NULL,
    SecurityPatchLevel INTEGER NULL
);
INSERT INTO iot_device_firmware VALUES (1,5001,'v1.2.3','2023-02-10','HW_X1',1,'Bug fixes and security patches','abc123def','2048','http://firmware.example.com/v1.2.3.bin','AcmeCorp','SensorX','Linux','Pending','2023-02-20',NULL,0,'v1.2.2','Compliant',5);
INSERT INTO iot_device_firmware VALUES (2,5002,'v3.4.0','2023-03-05','HW_Y2',0,'Feature update','def456ghi','4096','http://firmware.example.com/v3.4.0.bin','BetaTech','GatewayY','FreeRTOS','Installed','2023-03-06','2023-03-06',1,'v3.3.5','Compliant',3);
INSERT INTO iot_device_firmware VALUES (3,5003,'v2.0.1','2023-01-15','HW_Z3',1,'Critical security patch','ghi789jkl','1024','http://firmware.example.com/v2.0.1.bin','GammaInc','ControllerZ','RTOS','Failed','2023-01-20',NULL,2,'v2.0.0','NonCompliant',7);

-- Customer journey map details
CREATE TABLE customer_journey_maps_detail (
    Id INTEGER NOT NULL PRIMARY KEY,
    JourneyName TEXT NULL,
    StageOrder INTEGER NULL,
    StageName TEXT NULL,
    TouchpointType TEXT NULL,
    Channel TEXT NULL,
    AverageDurationSec INTEGER NULL,
    DropOffRate REAL NULL,
    SuccessMetric TEXT NULL,
    GoalCompletionRate REAL NULL,
    AssociatedCampaignId INTEGER NULL,
    FunnelId INTEGER NULL,
    OwnerUserId INTEGER NULL,
    CreatedDate DATETIME NULL,
    UpdatedDate DATETIME NULL,
    Notes TEXT NULL,
    ExpectedConversion REAL NULL,
    ActualConversion REAL NULL,
    RevenueImpact REAL NULL,
    CustomerSegment TEXT NULL
);
INSERT INTO customer_journey_maps_detail VALUES (1,'Onboarding',1,'Awareness','Ad','SocialMedia',30,0.15,'Views',0.60,2001,10,3001,'2023-01-01','2023-02-01','Initial campaign','0.05','0.04','20000','NewCustomers');
INSERT INTO customer_journey_maps_detail VALUES (2,'Onboarding',2,'Consideration','Email','Email',120,0.20,'Clicks',0.45,2002,10,3002,'2023-01-05','2023-02-02','Follow‑up emails','0.07','0.06','35000','ReturningCustomers');
INSERT INTO customer_journey_maps_detail VALUES (3,'Onboarding',3,'Conversion','LandingPage','Web',240,0.10,'SignUps',0.80,2003,10,3003,'2023-01-10','2023-02-05','Final offer page','0.10','0.09','50000','Prospects');

-- Knowledge graph label assignments
CREATE TABLE knowledge_graph_label_assignments (
    Id INTEGER NOT NULL PRIMARY KEY,
    NodeId INTEGER NULL,
    Label TEXT NULL,
    AssignedByUserId INTEGER NULL,
    AssignedDate DATETIME NULL,
    ConfidenceScore REAL NULL,
    SourceSystem TEXT NULL,
    IsActive INTEGER NULL,
    ExpirationDate DATETIME NULL,
    Comments TEXT NULL,
    Version INTEGER NULL,
    LabelType TEXT NULL,
    TaxonomyLevel INTEGER NULL,
    RelatedNodeId INTEGER NULL,
    RelationshipType TEXT NULL,
    Weight REAL NULL,
    ReviewStatus TEXT NULL,
    ReviewedByUserId INTEGER NULL,
    ReviewDate DATETIME NULL,
    TagId INTEGER NULL,
    TagSource TEXT NULL
);
INSERT INTO knowledge_graph_label_assignments VALUES (1,9001,'MachineLearning',4001,'2023-03-01',0.95,'KGSystem',1,'2025-03-01','Initial assignment',1,'Domain',3,9002,'relatedTo',0.8,'Approved',4002,'2023-03-05',101,'Internal');
INSERT INTO knowledge_graph_label_assignments VALUES (2,9003,'DataScience',4001,'2023-03-02',0.88,'KGSystem',1,'2025-03-02','Secondary label',1,'Topic',2,9004,'partOf',0.6,'Pending',NULL,NULL,102,'External');
INSERT INTO knowledge_graph_label_assignments VALUES (3,9005,'ArtificialIntelligence',4003,'2023-03-03',0.92,'KGSystem',1,'2025-03-03','Reviewed label',1,'Field',4,9006,'subCategoryOf',0.9,'Approved',4004,'2023-03-06',103,'Internal');

-- Warehouse temperature logs
CREATE TABLE warehouse_temperature_logs (
    Id INTEGER NOT NULL PRIMARY KEY,
    WarehouseId INTEGER NULL,
    SensorId INTEGER NULL,
    LogTimestamp DATETIME NULL,
    TemperatureC REAL NULL,
    HumidityPercent REAL NULL,
    AlertThresholdC REAL NULL,
    AlertTriggered INTEGER NULL,
    RecordedBySystem TEXT NULL,
    MaintenanceFlag INTEGER NULL,
    BatteryLevelPercent REAL NULL,
    FirmwareVersion TEXT NULL,
    SignalStrength INTEGER NULL,
    Latitude REAL NULL,
    Longitude REAL NULL,
    Zone TEXT NULL,
    RecordedTemperatureC REAL NULL,
    AdjustedTemperatureC REAL NULL,
    CalibrationDate DATETIME NULL,
    Comments TEXT NULL
);
INSERT INTO warehouse_temperature_logs VALUES (1,1,101,'2023-04-01 08:00:00',4.5,55.0,2.0,0,'SensorNode',0,98.5,'1.0.3',-70,40.7128,-74.0060,'A1',4.5,4.5,'2023-01-01','Normal operation');
INSERT INTO warehouse_temperature_logs VALUES (2,1,102,'2023-04-01 08:05:00',2.0,60.0,2.0,1,'SensorNode',0,97.0,'1.0.3',-68,40.7128,-74.0060,'A2',2.0,1.8,'2023-01-01','Alert triggered');
INSERT INTO warehouse_temperature_logs VALUES (3,2,201,'2023-04-01 08:10:00',5.0,50.0,2.0,0,'SensorNode',0,99.0,'2.1.0',-72,34.0522,-118.2437,'B1',5.0,5.0,'2023-02-15','All clear');

-- Legal case outcomes
CREATE TABLE legal_case_outcomes (
    Id INTEGER NOT NULL PRIMARY KEY,
    CaseNumber TEXT NULL,
    PlaintiffId INTEGER NULL,
    DefendantId INTEGER NULL,
    FilingDate DATETIME NULL,
    ResolutionDate DATETIME NULL,
    OutcomeType TEXT NULL,
    SettlementAmount REAL NULL,
    JuryAward REAL NULL,
    CourtFees REAL NULL,
    Penalties REAL NULL,
    AppealStatus TEXT NULL,
    JudgeId INTEGER NULL,
    CourtRoom TEXT NULL,
    Verdict TEXT NULL,
    Summary TEXT NULL,
    LegalTeamLeadId INTEGER NULL,
    CaseCategory TEXT NULL,
    ConfidentialFlag INTEGER NULL,
    SourceDocument TEXT NULL
);
INSERT INTO legal_case_outcomes VALUES (1,'2023-001',3001,4001,'2023-01-10','2023-04-20','Settlement',250000.00,0.00,15000.00,0.00,'None',5001,'Room12','InFavorPlaintiff','Contract breach settlement',6001,'Civil',0,'DocA');
INSERT INTO legal_case_outcomes VALUES (2,'2023-002',3002,4002,'2023-02-05','2023-06-15','Verdict',0.00,0.00,20000.00,5000.00,'Pending',5002,'Room8','InFavorDefendant','Patent infringement case',6002,'IntellectualProperty',1,'DocB');
INSERT INTO legal_case_outcomes VALUES (3,'2023-003',3003,4003,'2023-03-12','2023-07-30','Dismissed',0.00,0.00,10000.00,0.00,'Appealed',5003,'Room5','Dismissed','Failure to state a claim',6003,'Civil',0,'DocC');

-- Project resource allocations
CREATE TABLE project_resource_allocations (
    Id INTEGER NOT NULL PRIMARY KEY,
    ProjectId INTEGER NULL,
    ResourceType TEXT NULL,
    ResourceId INTEGER NULL,
    AllocationStartDate DATETIME NULL,
    AllocationEndDate DATETIME NULL,
    AllocationPercent REAL NULL,
    HourlyRate REAL NULL,
    TotalCost REAL NULL,
    ManagerId INTEGER NULL,
    Department TEXT NULL,
    PriorityLevel INTEGER NULL,
    Status TEXT NULL,
    Comments TEXT NULL,
    RiskLevel TEXT NULL,
    AdjustedHours INTEGER NULL,
    ForecastedCompletionDate DATETIME NULL,
    ActualCompletionDate DATETIME NULL,
    CreatedByUserId INTEGER NULL,
    CreatedDate DATETIME NULL,
    UpdatedDate DATETIME NULL
);
INSERT INTO project_resource_allocations VALUES (1,8001,'Developer',9001,'2023-01-01','2023-06-30',75.0,80.00,144000.00,7001,'Engineering',1,'Active','Core development',Medium,500,'2023-07-15',NULL,7002,'2023-01-01','2023-04-01');
INSERT INTO project_resource_allocations VALUES (2,8002,'Designer',9002,'2023-02-15','2023-05-15',50.0,70.00,42000.00,7003,'Design',2,'Pending','UI/UX design',Low,150,'2023-06-01',NULL,7004,'2023-02-15','2023-03-01');
INSERT INTO project_resource_allocations VALUES (3,8003,'QA Engineer',9003,'2023-03-01','2023-08-31',60.0,60.00,108000.00,7005,'QualityAssurance',3,'Planned','Testing phase',High,300,'2023-09-15',NULL,7006,'2023-03-01','2023-04-01');

-- Site content translation logs
CREATE TABLE site_content_translation_logs (
    Id INTEGER NOT NULL PRIMARY KEY,
    ContentId INTEGER NULL,
    LanguageCode TEXT NULL,
    TranslatorUserId INTEGER NULL,
    TranslationStartDate DATETIME NULL,
    TranslationEndDate DATETIME NULL,
    WordCount INTEGER NULL,
    CharactersCount INTEGER NULL,
    TranslationQualityScore REAL NULL,
    SourceVersion INTEGER NULL,
    TargetVersion INTEGER NULL,
    ApprovalStatus TEXT NULL,
    ApprovedByUserId INTEGER NULL,
    ApprovalDate DATETIME NULL,
    RevisionNumber INTEGER NULL,
    Comments TEXT NULL,
    GlossaryUsed INTEGER NULL,
    MachineTranslationFlag INTEGER NULL,
    Cost REAL NULL,
    ReviewComments TEXT NULL
);
INSERT INTO site_content_translation_logs VALUES (1,1101,'es',8001,'2023-04-01','2023-04-03',1200,7200,4.5,1,2,'Approved',8002,'2023-04-04',2,'Smooth translation',1,0,150.00,'No issues');
INSERT INTO site_content_translation_logs VALUES (2,1102,'fr',8003,'2023-04-05','2023-04-07',950,5700,4.2,1,2,'Pending',NULL,NULL,1,'Awaiting review',0,1,120.00,'Machine generated, needs review');
INSERT INTO site_content_translation_logs VALUES (3,1103,'de',8005,'2023-04-08','2023-04-10',1300,7800,4.8,2,3,'Approved',8006,'2023-04-11',3,'Excellent quality',1,0,170.00,'Ready for publication');