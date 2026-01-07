-- Project Documents table stores files attached to projects and their metadata
CREATE TABLE project_documents
(
    Id INTEGER PRIMARY KEY,
    ProjectId INTEGER,
    DocumentType TEXT,
    Title TEXT,
    Description TEXT,
    FilePath TEXT,
    UploadedByUserId INTEGER,
    UploadDate DATETIME,
    FileSizeBytes INTEGER,
    VersionNumber INTEGER,
    IsActive INTEGER,
    TagList TEXT,
    Checksum TEXT,
    ConfidentialLevel TEXT,
    ReviewedByUserId INTEGER,
    ReviewDate DATETIME,
    ApprovalStatus TEXT,
    ExpirationDate DATETIME,
    AccessCount INTEGER,
    MimeType TEXT
);
INSERT INTO project_documents VALUES (1,101,'Specification','System Spec','Detailed system specification','/docs/spec_v1.pdf',12,'2024-05-01 09:30:00',245760,1,1,'spec,system','abcd1234','High',14,'2024-05-02 10:00:00','Approved','2025-05-01 00:00:00',5,'application/pdf');
INSERT INTO project_documents VALUES (2,101,'Design','UI Design','User interface mockups','/docs/ui_design_v2.png',12,'2024-06-10 14:20:00',102400,2,1,'ui,design','efgh5678','Medium',15,'2024-06-11 09:00:00','Approved','2025-06-10 00:00:00',12,'image/png');
INSERT INTO project_documents VALUES (3,102,'Report','Quarterly Report','Q1 performance report','/docs/q1_report.docx',20,'2024-04-15 08:00:00',512000,1,1,'report,quarterly','ijkl9012','Low',22,'2024-04-16 11:30:00','Pending','2025-04-15 00:00:00',0,'application/vnd.openxmlformats-officedocument.wordprocessingml.document');

-- Webinar Sessions table captures scheduled webinars and participation details
CREATE TABLE webinar_sessions
(
    Id INTEGER PRIMARY KEY,
    WebinarTitle TEXT,
    HostUserId INTEGER,
    ScheduledStart DATETIME,
    ScheduledEnd DATETIME,
    ActualStart DATETIME,
    ActualEnd DATETIME,
    Description TEXT,
    MaxAttendees INTEGER,
    RegistrationsCount INTEGER,
    AttendedCount INTEGER,
    RecordingUrl TEXT,
    SlidesUrl TEXT,
    Language TEXT,
    Category TEXT,
    IsLive INTEGER,
    ChatEnabled INTEGER,
    QASessionEnabled INTEGER,
    SponsorName TEXT,
    SponsorLogoUrl TEXT,
    FeedbackScore REAL
);
INSERT INTO webinar_sessions VALUES (1,'Intro to SQL',10,'2024-07-01 10:00:00','2024-07-01 11:30:00','2024-07-01 10:05:00','2024-07-01 11:25:00','Fundamentals of SQL queries',200,180,165,'https://example.com/recordings/intro_sql.mp4','https://example.com/slides/intro_sql.pdf','English','Education',1,1,1,'TechCo','https://example.com/logos/techco.png',4.5);
INSERT INTO webinar_sessions VALUES (2,'Advanced Python',11,'2024-07-15 14:00:00','2024-07-15 15:30:00',NULL,NULL,'Deep dive into Python features',150,140,130,NULL,NULL,'English','Programming',0,1,0,'DataWorks','https://example.com/logos/dataworks.png',0);
INSERT INTO webinar_sessions VALUES (3,'Data Visualization Basics',12,'2024-08-05 09:00:00','2024-08-05 10:30:00','2024-08-05 09:02:00','2024-08-05 10:28:00','Creating effective charts and dashboards',250,230,220,'https://example.com/recordings/dataviz.mp4','https://example.com/slides/dataviz.pdf','English','Analytics',1,1,1,'VisuaLab','https://example.com/logos/visualab.png',4.8);

-- API Service Dependencies table tracks which services depend on others
CREATE TABLE api_service_dependencies
(
    Id INTEGER PRIMARY KEY,
    ServiceName TEXT,
    DependentServiceName TEXT,
    DependencyType TEXT,
    Version TEXT,
    CriticalityLevel TEXT,
    CreatedDate DATETIME,
    UpdatedDate DATETIME,
    OwnerTeam TEXT,
    ContactEmail TEXT,
    SLAHours INTEGER,
    RetryPolicy TEXT,
    CircuitBreakerEnabled INTEGER,
    TimeoutMs INTEGER,
    MaxConcurrentCalls INTEGER,
    DocumentationUrl TEXT,
    MonitoringEndpoint TEXT,
    LastDeployedVersion TEXT,
    DeployedByUserId INTEGER,
    DeploymentDate DATETIME
);
INSERT INTO api_service_dependencies VALUES (1,'UserService','AuthService','Hard','v2.3','High','2023-01-10 08:00:00','2024-02-12 09:15:00','IdentityTeam','identity@example.com',24,'ExponentialBackoff',1,3000,100,'https://docs.example.com/userservice','https://monitor.example.com/userservice','v2.3.1',34,'2024-02-12 09:10:00');
INSERT INTO api_service_dependencies VALUES (2,'OrderService','InventoryService','Soft','v1.7','Medium','2023-03-05 10:20:00','2024-01-20 11:45:00','CommerceTeam','commerce@example.com',12,'FixedInterval',0,5000,200,'https://docs.example.com/orderservice','https://monitor.example.com/orderservice','v1.7.4',45,'2024-01-20 11:40:00');
INSERT INTO api_service_dependencies VALUES (3,'ReportingService','DataWarehouse','Hard','v3.0','High','2022-11-01 07:30:00','2024-03-01 08:00:00','AnalyticsTeam','analytics@example.com',48,'CircuitBreaker',1,10000  ,150,'https://docs.example.com/reporting','https://monitor.example.com/reporting','v3.0.2',56,'2024-03-01 07:55:00');

-- Marketing Content Assets table holds assets used in marketing campaigns
CREATE TABLE marketing_content_assets
(
    Id INTEGER PRIMARY KEY,
    AssetName TEXT,
    AssetType TEXT,
    CampaignId INTEGER,
    CreatedByUserId INTEGER,
    CreationDate DATETIME,
    FilePath TEXT,
    FileSize INTEGER,
    Resolution TEXT,
    DurationSeconds INTEGER,
    CreativeTag TEXT,
    TargetAudience TEXT,
    Region TEXT,
    Language TEXT,
    IsApproved INTEGER,
    ApprovalDate DATETIME,
    ApprovedByUserId INTEGER,
    ExpirationDate DATETIME,
    CostUSD REAL,
    PerformanceScore REAL,
    LastAccessed DATETIME
);
INSERT INTO marketing_content_assets VALUES (1,'Spring Banner','Image',301,22,'2024-03-15 09:00:00','/assets/spring_banner.jpg',204800,'1920x1080',0,'seasonal','general','NorthAmerica','English',1,'2024-03-16 10:00:00',30,'2025-03-15 00:00:00',500.00,85.6,'2024-07-01 12:30:00');
INSERT INTO marketing_content_assets VALUES (2,'Product Demo Video','Video',302,23,'2024-04-10 14:20:00','/assets/product_demo.mp4',52428800,'1280x720',180,'product','techSavvy','Europe','English',0,NULL,NULL,'2025-04-10 00:00:00',1200.00,0,NULL);
INSERT INTO marketing_content_assets VALUES (3,'Email Footer','HTML',303,24,'2024-02-01 08:45:00','/assets/email_footer.html',10240,NULL,0,'email','subscribers','Global','English',1,'2024-02-02 09:15:00',31,'2025-02-01 00:00:00',150.00,92.3,'2024-06-20 16:05:00');

-- Supplier Quality Audits table records quality audit results for suppliers
CREATE TABLE supplier_quality_audits
(
    Id INTEGER PRIMARY KEY,
    SupplierId INTEGER,
    AuditDate DATETIME,
    AuditorUserId INTEGER,
    AuditScore REAL,
    FindingsSummary TEXT,
    CorrectiveActionPlan TEXT,
    DueDate DATETIME,
    FollowUpDate DATETIME,
    Status TEXT,
    OverallRating TEXT,
    ComplianceLevel TEXT,
    RiskCategory TEXT,
    DocumentUrl TEXT,
    ApprovedByUserId INTEGER,
    ApprovalDate DATETIME,
    Comments TEXT,
    ReauditRequired INTEGER,
    ReauditDate DATETIME,
    AuditType TEXT
);
INSERT INTO supplier_quality_audits VALUES (1,501,'2024-05-20 10:00:00',41,88.5,'Minor packaging issues','Improve packaging standards','2024-06-30 00:00:00','2024-07-10 00:00:00','Closed','B','Full','Low','https://example.com/audits/501_20240520.pdf',55,'2024-05-22 09:30:00','All issues resolved',0,NULL,'Routine');
INSERT INTO supplier_quality_audits VALUES (2,502,'2024-04-15 09:30:00',42,72.0,'Late deliveries noted','Implement stricter logistics tracking','2024-05-31 00:00:00','2024-06-15 00:00:00','Open','C','Partial','Medium','https://example.com/audits/502_20240415.pdf',56,'2024-04-16 11:00:00','Pending corrective actions',1,'2024-08-01 00:00:00','Compliance');
INSERT INTO supplier_quality_audits VALUES (3,503,'2024-03-10 14:45:00',43,95.2,'Excellent compliance','N/A','2024-04-20 00:00:00','2024-04-25 00:00:00','Closed','A','Full','Low','https://example.com/audits/503_20240310.pdf',57,'2024-03-11 08:20:00','No issues found',0,NULL,'Annual');

-- Employee Training Records table tracks completion of training courses by employees
CREATE TABLE employee_training_records
(
    Id INTEGER PRIMARY KEY,
    EmployeeId INTEGER,
    TrainingCourseId INTEGER,
    EnrollmentDate DATETIME,
    CompletionDate DATETIME,
    Status TEXT,
    Score REAL,
    CertificateUrl TEXT,
    TrainerUserId INTEGER,
    TrainingMode TEXT,
    DurationHours REAL,
    Location TEXT,
    Department TEXT,
    IsMandatory INTEGER,
    ExpirationDate DATETIME,
    RenewalRequired INTEGER,
    RenewalDate DATETIME,
    FeedbackScore REAL,
    Comments TEXT,
    TrainingProvider TEXT,
    CostUSD REAL
);
INSERT INTO employee_training_records VALUES (1,1001,2001,'2024-01-10 09:00:00','2024-01-20 16:30:00','Completed',92.5,'https://example.com/certs/1001_2001.pdf',78,'Online',10.5,'Remote','Engineering',1,'2025-01-20 00:00:00',0,NULL,4.6,'Excellent training', 'SkillBridge',300.00);
INSERT INTO employee_training_records VALUES (2,1002,2002,'2024-02-05 10:15:00',NULL,'InProgress',NULL,NULL,79,'Classroom',8.0,'HQ Building','Sales',1,'2025-02-05 00:00:00',1,NULL,NULL,'Looking forward', 'LeadershipAcademy',450.00);
INSERT INTO employee_training_records VALUES (3,1003,2003,'2023-12-01 08:00:00','2023-12-15 15:45:00','Completed',85.0,'https://example.com/certs/1003_2003.pdf',80,'Hybrid',12.0,'Remote','HR',0,'2024-12-15 00:00:00',0,NULL,3.9,'Good but could improve', 'HRInstitute',200.00);

-- Data Center Power Events table logs power incidents affecting data centers
CREATE TABLE data_center_power_events
(
    Id INTEGER PRIMARY KEY,
    DataCenterId INTEGER,
    EventStart DATETIME,
    EventEnd DATETIME,
    EventType TEXT,
    AffectedSystemsCount INTEGER,
    ImpactSeverity TEXT,
    Description TEXT,
    MitigationSteps TEXT,
    ResolvedByUserId INTEGER,
    ResolutionTimeMinutes INTEGER,
    PowerSource TEXT,
    BackupUtilized INTEGER,
    EnergyConsumedKWh REAL,
    WeatherCondition TEXT,
    NotificationSent INTEGER,
    EscalationLevel TEXT,
    RootCauseAnalysisUrl TEXT,
    PostEventReviewDate DATETIME,
    ReviewByUserId INTEGER
);
INSERT INTO data_center_power_events VALUES (1,10,'2024-06-01 02:15:00','2024-06-01 03:05:00','Outage',15,'High','Unexpected grid failure','Switched to diesel generators',101,50,'Grid','1',120.5,'Storm','1','Level2','https://example.com/reports/power_event_1.pdf','2024-06-10 09:00:00',102);
INSERT INTO data_center_power_events VALUES (2,11,'2024-07-12 14:30:00','2024-07-12 14:45:00','Spike',4,'Medium','Voltage spike detected','Activated surge protectors',103,10,'UPS','0',5.2,'Clear','1','Level1','https://example.com/reports/power_event_2.pdf','2024-07-20 10:30:00',104);
INSERT INTO data_center_power_events VALUES (3,12,'2024-08-20 23:00:00','2024-08-21 01:30:00','Outage',22,'Critical','Extended power loss due to maintenance error','Manual restart of backup generators',105,150,'Grid','1',350.0,'Rain','1','Level3','https://example.com/reports/power_event_3.pdf','2024-09-01 11:00:00',106);

-- Vehicle Fleet Maintenance table records service history for fleet vehicles
CREATE TABLE vehicle_fleet_maintenance
(
    Id INTEGER PRIMARY KEY,
    VehicleId INTEGER,
    ServiceDate DATETIME,
    OdometerKm INTEGER,
    ServiceType TEXT,
    ServiceCenter TEXT,
    TechnicianId INTEGER,
    CostUSD REAL,
    PartsReplaced TEXT,
    NextServiceDueKm INTEGER,
    WarrantyCovered INTEGER,
    ServiceNotes TEXT,
    ApprovedByUserId INTEGER,
    ApprovalDate DATETIME,
    ServiceStatus TEXT,
    DurationHours REAL,
    FuelLevelAfterService REAL,
    EmissionTestResult TEXT,
    InsuranceRenewalDate DATETIME,
    RegistrationExpiryDate DATETIME
);
INSERT INTO vehicle_fleet_maintenance VALUES (1,3001,'2024-03-10 08:00:00',45200,'Oil Change','AutoCare Center',201,150.00,'Oil Filter',50000,1,'Changed oil and filter','301','2024-03-10 10:15:00','Completed',2.25,85.0,'Pass','2025-03-01 00:00:00','2025-02-28 00:00:00');
INSERT INTO vehicle_fleet_maintenance VALUES (2,3002,'2024-04-22 09:30:00',78500,'Brake Replacement','BrakeWorks',202,800.00,'Brake Pads, Rotors',85000,0,'Replaced front and rear brakes','302','2024-04-22 12:00:00','Completed',3.5,70.0,'Pass','2025-04-15 00:00:00','2025-04-14 00:00:00');
INSERT INTO vehicle_fleet_maintenance VALUES (3,3003,'2024-05-05 07:45:00',12000,'Tire Rotation','Quick Tires',203,60.00,'None',20000,1,'Rotated all four tires','303','2024-05-05 08:30:00','Completed',1.0,90.0,'Pass','2025-05-01 00:00:00','2025-04-30 00:00:00');

-- Clinical Trial Participants table stores participant information for clinical studies
CREATE TABLE clinical_trial_participants
(
    Id INTEGER PRIMARY KEY,
    TrialId INTEGER,
    ParticipantId INTEGER,
    EnrollmentDate DATETIME,
    ConsentDate DATETIME,
    Demographics TEXT,
    MedicalHistorySummary TEXT,
    CurrentMedication TEXT,
    VisitSchedule TEXT,
    AssignedCohort TEXT,
    RandomizationGroup TEXT,
    Status TEXT,
    AdverseEvents TEXT,
    LabResultsUrl TEXT,
    ImagingUrl TEXT,
    InvestigatorUserId INTEGER,
    FollowUpDate DATETIME,
    WithdrawalDate DATETIME,
    CompensationAmount REAL,
    Notes TEXT
);
INSERT INTO clinical_trial_participants VALUES (1,9001,50001,'2024-01-15 09:00:00','2024-01-10 14:30:00','Age45Male','Hypertension','Lisinopril','Monthly','CohortA','Group1','Active',NULL,'https://example.com/labs/50001.pdf','https://example.com/imaging/50001.jpg',601,'2024-07-15 00:00:00',NULL,1500.00,'No issues');
INSERT INTO clinical_trial_participants VALUES (2,9001,50002,'2024-02-20 10:15:00','2024-02-15 11:00:00','Age38Female','None','None','Biweekly','CohortB','Group2','Active',NULL,'https://example.com/labs/50002.pdf','https://example.com/imaging/50002.jpg',602,'2024-08-20 00:00:00',NULL,1500.00,'N/A');
INSERT INTO clinical_trial_participants VALUES (3,9002,50003,'2024-03-05 08:45:00','2024-03-01 12:20:00','Age60Male','Diabetes','Metformin','Monthly','CohortA','Group1','Withdrawn','Mild nausea','https://example.com/labs/50003.pdf','https://example.com/imaging/50003.jpg',603,'2024-09-10 00:00:00','2024-07-01 00:00:00',0.00,'Withdrawn due to adverse event');

-- Library Book Circulation table tracks borrowing activity of library books
CREATE TABLE library_book_circulation
(
    Id INTEGER PRIMARY KEY,
    BookId INTEGER,
    MemberId INTEGER,
    CheckoutDate DATETIME,
    DueDate DATETIME,
    ReturnDate DATETIME,
    RenewalCount INTEGER,
    FineAccrued REAL,
    FinePaid REAL,
    CheckoutLocation TEXT,
    ReturnLocation TEXT,
    ShelfLocation TEXT,
    BookCondition TEXT,
    StaffProcessedBy INTEGER,
    CheckoutMethod TEXT,
    ReturnMethod TEXT,
    OverdueNoticeSent INTEGER,
    LostFlag INTEGER,
    ReplacementCost REAL,
    Comments TEXT
);
INSERT INTO library_book_circulation VALUES (1,8001,4001,'2024-06-01 10:00:00','2024-06-15 00:00:00','2024-06-14 16:30:00',1,0.00,0.00,'MainDesk','ReturnDesk','A3','Good',501,'InPerson','InPerson',1,0,25.00,'Returned early');
INSERT INTO library_book_circulation VALUES (2,8002,4002,'2024-06-05 11:15:00','2024-06-19 00:00:00',NULL,0,2.50,NULL,'MainDesk',NULL,'B7','Fair',502,'InPerson','DropBox',0,0,30.00,'Overdue notice sent');
INSERT INTO library_book_circulation VALUES (3,8003,4003,'2024-05-20 09:30:00','2024-06-03 00:00:00','2024-07-01 10:00:00',0,0.00,0.00,'MainDesk','MainDesk','C2','Lost',503,'InPerson','InPerson',1,1,45.00,'Lost, replacement charged');