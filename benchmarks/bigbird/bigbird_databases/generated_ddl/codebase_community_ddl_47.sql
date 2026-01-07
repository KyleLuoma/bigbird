-- Research funding grants
CREATE TABLE research_funding_grants
(
    GrantId INTEGER PRIMARY KEY,
    FundingAgency TEXT,
    GrantTitle TEXT,
    AwardAmount REAL,
    Currency TEXT,
    StartDate DATETIME,
    EndDate DATETIME,
    PrincipalInvestigatorId INTEGER,
    CoInvestigatorIds TEXT,
    ProjectCode TEXT,
    FundingProgram TEXT,
    Status TEXT,
    ReviewScore REAL,
    AwardNumber TEXT,
    AllocationYear INTEGER,
    ResearchArea TEXT,
    Department TEXT,
    PublicationCount INTEGER,
    PatentCount INTEGER,
    LastModified DATETIME
);

INSERT INTO research_funding_grants VALUES (1,'NationalScienceFoundation','QuantumComputingResearch',250000.00,'USD','2022-01-15 09:00:00','2025-01-14 23:59:59',101,'102,103','QC2022','BasicScience','Active',4.5,'NSF-2022-001',2022,'ComputerScience','Physics',12,2,'2023-03-01 12:00:00');
INSERT INTO research_funding_grants VALUES (2,'HealthResearchCouncil','VaccineDevelopment',500000.00,'USD','2021-06-01 00:00:00','2024-05-31 23:59:59',202,'203,204','VD2021','MedicalResearch','Completed',4.8,'HRC-2021-045',2021,'Biology','Medicine',30,5,'2024-06-01 08:30:00');
INSERT INTO research_funding_grants VALUES (3,'EnergyDepartment','SolarPanelEfficiency',120000.00,'USD','2023-03-20 08:15:00','2026-03-19 17:45:00',301,'302','SP2023','EnergyInnovation','Pending',0.0,'ED-2023-010',2023,'Engineering','ElectricalEngineering',0,0,'2023-03-20 08:15:00');

-- Corporate event attendees
CREATE TABLE corporate_event_attendees
(
    AttendanceId INTEGER PRIMARY KEY,
    EventId INTEGER,
    UserId INTEGER,
    RegistrationDate DATETIME,
    AttendanceStatus TEXT,
    TicketType TEXT,
    SeatNumber TEXT,
    CheckInTime DATETIME,
    FeedbackScore INTEGER,
    Comments TEXT,
    CompanyName TEXT,
    Department TEXT,
    Role TEXT,
    MealPreference TEXT,
    BadgeNumber TEXT,
    WifiAccess BOOLEAN,
    ContactEmail TEXT,
    PhoneNumber TEXT,
    LinkedInProfile TEXT,
    LastUpdated DATETIME
);

INSERT INTO corporate_event_attendees VALUES (1,1001,501,'2023-05-01 10:00:00','Confirmed','VIP','A12','2023-05-10 09:05:00',5,'Great event','TechCorp','Engineering','SeniorEngineer','Vegetarian','TC001',1,'jane.doe@techcorp.com','5551234567','linkedin.com/in/janedoe','2023-05-11 12:00:00');
INSERT INTO corporate_event_attendees VALUES (2,1001,502,'2023-05-02 11:30:00','Cancelled','Standard','B07',NULL,0,'','TechCorp','Marketing','Manager','None','TC002',0,'john.smith@techcorp.com','5559876543','linkedin.com/in/johnsmith','2023-05-02 11:30:00');
INSERT INTO corporate_event_attendees VALUES (3,1002,503,'2023-06-15 09:45:00','Confirmed','Standard','C03','2023-07-01 08:50:00',4,'Informative','BizSolutions','Sales','Director','GlutenFree','BS003',1,'alice.wang@bizsolutions.com','5555551212','linkedin.com/in/alicewang','2023-07-02 14:20:00');

-- IoT device maintenance
CREATE TABLE iot_device_maintenance
(
    MaintenanceId INTEGER PRIMARY KEY,
    DeviceId INTEGER,
    MaintenanceDate DATETIME,
    TechnicianId INTEGER,
    MaintenanceType TEXT,
    DurationMinutes INTEGER,
    PartsReplaced TEXT,
    Cost REAL,
    Notes TEXT,
    FollowUpRequired BOOLEAN,
    FollowUpDate DATETIME,
    FirmwareVersionBefore TEXT,
    FirmwareVersionAfter TEXT,
    BatteryHealth INTEGER,
    SignalStrength INTEGER,
    LocationId INTEGER,
    ComplianceCheck BOOLEAN,
    CalibrationStatus TEXT,
    UpdatedBy INTEGER,
    UpdatedAt DATETIME
);

INSERT INTO iot_device_maintenance VALUES (1,2001,'2023-04-10 14:00:00',301,'FirmwareUpdate',30,'None',150.00,'Replaced firmware to improve stability',0,NULL,'v1.2.3','v1.3.0',95,80,10,1,'Calibrated',301,'2023-04-10 14:35:00');
INSERT INTO iot_device_maintenance VALUES (2,2002,'2023-05-22 09:30:00',302,'BatteryReplacement',45,'BatteryModelX',75.50,'Battery health dropped to 40%',1,'2023-06-01 09:00:00','v2.0.0','v2.0.0',100,85,11,1,'Verified',302,'2023-05-22 10:20:00');
INSERT INTO iot_device_maintenance VALUES (3,2003,'2023-06-15 16:20:00',303,'SensorCalibration',20,'SensorY',0.00,'Calibration performed after drift detection',0,NULL,'v3.1.1','v3.1.1',88,70,12,1,'Calibrated',303,'2023-06-15 16:45:00');

-- Legal case documents
CREATE TABLE legal_case_documents
(
    DocumentId INTEGER PRIMARY KEY,
    CaseId INTEGER,
    DocumentType TEXT,
    Title TEXT,
    FilePath TEXT,
    UploadedBy INTEGER,
    UploadDate DATETIME,
    Version INTEGER,
    Confidential BOOLEAN,
    ReviewStatus TEXT,
    Author TEXT,
    PageCount INTEGER,
    Language TEXT,
    HashValue TEXT,
    RetentionPeriodDays INTEGER,
    AccessLevel TEXT,
    RelatedDocumentIds TEXT,
    Tags TEXT,
    Notes TEXT,
    LastModified DATETIME
);

INSERT INTO legal_case_documents VALUES (1,9001,'Complaint','BreachOfContract','/docs/9001/complaint_v1.pdf',401,'2023-01-15 09:00:00',1,1,'Pending','AttorneyA',12,'English','abc123def456',365,'Restricted','2,3','Contract,Legal','Initial filing','2023-01-15 09:00:00');
INSERT INTO legal_case_documents VALUES (2,9001,'Evidence','EmailCorrespondence','/docs/9001/evidence_email.pdf',402,'2023-02-10 11:30:00',2,1,'Approved','AttorneyB',5,'English','def789ghi012',365,'Restricted','1','Email,Evidence','Supplemental evidence','2023-02-10 11:30:00');
INSERT INTO legal_case_documents VALUES (3,9002,'Judgment','FinalJudgment','/docs/9002/judgment.pdf',403,'2023-03-05 14:45:00',1,0,'Finalized','JudgeC',20,'English','ghi345jkl678',730,'Public','', 'Judgment,Legal','Public record','2023-03-05 14:45:00');

-- Marketing channel performance
CREATE TABLE marketing_channel_performance
(
    RecordId INTEGER PRIMARY KEY,
    ChannelName TEXT,
    CampaignId INTEGER,
    Date DATE,
    Impressions INTEGER,
    Clicks INTEGER,
    Conversions INTEGER,
    Spend REAL,
    Revenue REAL,
    CostPerClick REAL,
    ClickThroughRate REAL,
    ConversionRate REAL,
    AvgPosition REAL,
    AudienceSegment TEXT,
    DeviceType TEXT,
    GeoRegion TEXT,
    CreativeId INTEGER,
    LandingPageId INTEGER,
    AttributionModel TEXT,
    LastUpdated DATETIME
);

INSERT INTO marketing_channel_performance VALUES (1,'GoogleAds',10001,'2023-07-01',150000,4500,300,2000.00,7500.00,0.44,0.03,0.067,1.5,'TechEnthusiasts','Mobile','NorthAmerica',501,601,'LastClick','2023-07-02 08:00:00');
INSERT INTO marketing_channel_performance VALUES (2,'Facebook',10002,'2023-07-01',120000,3600,250,1800.00,6200.00,0.50,0.03,0.069,2.0,'BusinessOwners','Desktop','Europe',502,602,'Linear','2023-07-02 08:15:00');
INSERT INTO marketing_channel_performance VALUES (3,'LinkedIn',10003,'2023-07-01',80000,2000,180,1500.00,5400.00,0.75,0.025,0.09,3.0,'Professionals','Mobile','AsiaPacific',503,603,'TimeDecay','2023-07-02 08:30:00');

-- Knowledge graph transfer log
CREATE TABLE knowledge_graph_transfer_log
(
    TransferId INTEGER PRIMARY KEY,
    SourceGraphId INTEGER,
    DestinationGraphId INTEGER,
    TransferStart DATETIME,
    TransferEnd DATETIME,
    RecordCount INTEGER,
    TransferStatus TEXT,
    InitiatedBy INTEGER,
    TransferMethod TEXT,
    DataSizeGB REAL,
    ErrorMessage TEXT,
    RetryCount INTEGER,
    Checksum TEXT,
    ValidationStatus TEXT,
    NotificationSent BOOLEAN,
    PriorityLevel INTEGER,
    Comments TEXT,
    LastChecked DATETIME,
    ArchivePath TEXT,
    RetentionDays INTEGER
);

INSERT INTO knowledge_graph_transfer_log VALUES (1,10,20,'2023-06-01 02:00:00','2023-06-01 04:30:00',250000,'Success',601,'Batch',12.5,'',0,'checksum123','Validated',1,5,'Nightly sync','2023-06-02 01:00:00','/archive/graph10_to_20_20230601.tar','365');
INSERT INTO knowledge_graph_transfer_log VALUES (2,11,21,'2023-06-15 01:30:00','2023-06-15 03:45:00',180000,'Failed',602,'Streaming',9.8,'Network timeout',2,'checksum456','Invalid',0,7,'Retry after fixing network','2023-06-16 02:00:00','/archive/graph11_to_21_20230615.tar','365');
INSERT INTO knowledge_graph_transfer_log VALUES (3,12,22,'2023-07-01 00:00:00','2023-07-01 02:20:00',300000,'Success',603,'Batch',15.2,'',0,'checksum789','Validated',1,3,'Quarterly bulk load','2023-07-02 00:30:00','/archive/graph12_to_22_20230701.tar','730');

-- Supplier compliance checks
CREATE TABLE supplier_compliance_checks
(
    CheckId INTEGER PRIMARY KEY,
    SupplierId INTEGER,
    CheckDate DATETIME,
    AuditorId INTEGER,
    ComplianceArea TEXT,
    Score INTEGER,
    Passed BOOLEAN,
    Findings TEXT,
    Recommendations TEXT,
    FollowUpDate DATETIME,
    DocumentationLink TEXT,
    RiskLevel TEXT,
    CorrectiveActionPlan TEXT,
    ActionTaken BOOLEAN,
    ActionCompletionDate DATETIME,
    DurationHours INTEGER,
    Cost REAL,
    Comments TEXT,
    Status TEXT,
    LastUpdated DATETIME
);

INSERT INTO supplier_compliance_checks VALUES (1,3001,'2023-05-10 10:00:00',701,'Safety',85,1,'Minor safety gap','Install additional guards','2023-06-01','/docs/supplier3001/safety_report.pdf','Medium','Update safety protocol','1','2023-05-25',20,500.00,'Follow-up scheduled','Closed','2023-05-25 12:00:00');
INSERT INTO supplier_compliance_checks VALUES (2,3002,'2023-04-22 09:30:00',702,'Quality',70,0,'Quality variance exceeds limits','Implement stricter QC','2023-05-15','/docs/supplier3002/quality_report.pdf','High','Revise QC procedures','0',NULL,30,1200.00,'Awaiting corrective action','Open','2023-04-22 09:30:00');
INSERT INTO supplier_compliance_checks VALUES (3,3003,'2023-03-15 14:45:00',703,'Environmental',92,1,'All standards met','Maintain current practices','2023-04-01','/docs/supplier3003/env_report.pdf','Low','N/A','1','2023-03-16',10,0.00,'No issues','Closed','2023-03-16 08:00:00');

-- Data center environmental metrics
CREATE TABLE data_center_environmental_metrics
(
    MetricId INTEGER PRIMARY KEY,
    DataCenterId INTEGER,
    Timestamp DATETIME,
    TemperatureC REAL,
    HumidityPercent REAL,
    PowerUsageKW REAL,
    CoolingLoadKW REAL,
    AirflowCfm REAL,
    UPSLoadPercent INTEGER,
    GeneratorStatus TEXT,
    SmokeDetected BOOLEAN,
    WaterLeakDetected BOOLEAN,
    RackUtilizationPercent INTEGER,
    EnergyEfficiencyRatio REAL,
    CarbonFootprintKg REAL,
    NoiseLevelDb REAL,
    PowerQualityScore REAL,
    MaintenanceRequired BOOLEAN,
    Notes TEXT,
    RecordedBy INTEGER
);

INSERT INTO data_center_environmental_metrics VALUES (1,1,'2023-07-01 00:00:00',22.5,45.0,3500.00,1200.00,8000.00,70,'Online',0,0,85,1.25,2500.00,55.0,0.98,0,'Normal operation',101);
INSERT INTO data_center_environmental_metrics VALUES (2,1,'2023-07-01 01:00:00',23.0,46.5,3550.00,1220.00,8050.00,72,'Online',0,0,86,1.23,2510.00,56.0,0.97,0,'Slight temperature rise',101);
INSERT INTO data_center_environmental_metrics VALUES (3,1,'2023-07-01 02:00:00',24.2,48.0,3600.00,1250.00,8100.00,75,'Online',0,0,87,1.22,2525.00,57.5,0.96,1,'Check cooling units',101);

-- User content recommendations
CREATE TABLE user_content_recommendations
(
    RecommendationId INTEGER PRIMARY KEY,
    UserId INTEGER,
    ContentId INTEGER,
    ContentType TEXT,
    RecommendationScore REAL,
    Reason TEXT,
    Rank INTEGER,
    Displayed BOOLEAN,
    Clicked BOOLEAN,
    Dismissed BOOLEAN,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    SourceAlgorithm TEXT,
    ConfidenceLevel REAL,
    SessionId INTEGER,
    DeviceId INTEGER,
    Locale TEXT,
    Platform TEXT,
    ExpirationDate DATETIME,
    Feedback TEXT
);

INSERT INTO user_content_recommendations VALUES (1,501,10001,'Post',0.92,'BasedOnTags',1,1,0,0,'2023-07-10 08:00:00','2023-07-10 08:05:00','CollaborativeFiltering',0.95,9001,4001,'en-US','Web','2023-07-17 08:00:00','');
INSERT INTO user_content_recommendations VALUES (2,502,20002,'Article',0.85,'TrendingInRegion',2,1,1,0,'2023-07-10 09:30:00','2023-07-10 09:35:00','ContentBased',0.88,9002,4002,'en-GB','Mobile','2023-07-17 09:30:00','Helpful');
INSERT INTO user_content_recommendations VALUES (3,503,30003,'Question',0.78,'SimilarUserInterest',3,0,0,1,'2023-07-10 10:15:00','2023-07-10 10:20:00','Hybrid',0.80,9003,4003,'fr-FR','Web','2023-07-17 10:15:00','NotInterested');

-- Forum thread moderation log
CREATE TABLE forum_thread_moderation_log
(
    LogId INTEGER PRIMARY KEY,
    ThreadId INTEGER,
    ModeratorId INTEGER,
    ActionType TEXT,
    ActionTimestamp DATETIME,
    Reason TEXT,
    Details TEXT,
    AffectedPostId INTEGER,
    Reverted BOOLEAN,
    RevertTimestamp DATETIME,
    Notes TEXT,
    DurationMinutes INTEGER,
    PriorStatus TEXT,
    NewStatus TEXT,
    VisibilityChanged BOOLEAN,
    LockStateChanged BOOLEAN,
    TagChanges TEXT,
    UserNotificationSent BOOLEAN,
    Escalated BOOLEAN,
    EscalationLevel INTEGER,
    LastModified DATETIME
);

INSERT INTO forum_thread_moderation_log VALUES (1,8001,901,'Close','2023-06-20 14:00:00','Spam','Thread contained repeated spam links',NULL,0,NULL,'Closed by moderator',5,'Open','Closed',1,0,'spam,offtopic',1,0,0,'2023-06-20 14:05:00');
INSERT INTO forum_thread_moderation_log VALUES (2,8002,902,'Edit','2023-06-22 09:30:00','InaccurateInfo','Corrected factual error in post',12345,0,NULL,'Edited content for accuracy',2,'Open','Open',0,0,'',1,0,0,'2023-06-22 09:32:00');
INSERT INTO forum_thread_moderation_log VALUES (3,8003,903,'Delete','2023-06-25 11:15:00','Harassment','Removed harassing comment',67890,1,'2023-06-25 12:00:00','Deletion later reverted',0,'Open','Open',0,0,'',1,1,2,'2023-06-25 12:05:00');