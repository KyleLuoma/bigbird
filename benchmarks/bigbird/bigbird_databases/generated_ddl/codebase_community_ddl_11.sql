-- Project milestones tracking
CREATE TABLE project_milestones (
    MilestoneId INTEGER NOT NULL PRIMARY KEY,
    ProjectId INTEGER NULL,
    MilestoneName TEXT NULL,
    Description TEXT NULL,
    PlannedStartDate DATETIME NULL,
    PlannedEndDate DATETIME NULL,
    ActualStartDate DATETIME NULL,
    ActualEndDate DATETIME NULL,
    StatusCode INTEGER NULL,
    OwnerUserId INTEGER NULL,
    BudgetAmount REAL NULL,
    SpendToDate REAL NULL,
    RiskLevel INTEGER NULL,
    Priority INTEGER NULL,
    Dependencies TEXT NULL,
    CreatedByUserId INTEGER NULL,
    CreatedDate DATETIME NULL,
    UpdatedByUserId INTEGER NULL,
    UpdatedDate DATETIME NULL,
    Notes TEXT NULL,
    IsCritical INTEGER NULL
);
INSERT INTO project_milestones VALUES (1,101,'Design phase','Initial design work','2023-01-01','2023-02-01','2023-01-02','2023-01-30',1,12,50000.00,25000.00,2,1,'',10,'2023-01-01',11,'2023-01-30','',1);
INSERT INTO project_milestones VALUES (2,101,'Implementation','Core development','2023-02-05','2023-05-10','2023-02-07','2023-05-08',2,13,150000.00,75000.00,3,2,'Design phase',10,'2023-02-05',13,'2023-05-08','',0);
INSERT INTO project_milestones VALUES (3,102,'Testing','QA and regression','2023-05-15','2023-06-30','2023-05-16','2023-06-28',0,14,40000.00,0.00,1,3,'Implementation',10,'2023-05-15',14,'2023-06-28','',0);

-- Supplier contract records
CREATE TABLE supplier_contracts (
    ContractId INTEGER NOT NULL PRIMARY KEY,
    SupplierId INTEGER NULL,
    ContractReference TEXT NULL,
    StartDate DATE NULL,
    EndDate DATE NULL,
    RenewalOption INTEGER NULL,
    TotalValue REAL NULL,
    CurrencyCode TEXT NULL,
    PaymentTerms TEXT NULL,
    ServiceLevel TEXT NULL,
    ContactName TEXT NULL,
    ContactEmail TEXT NULL,
    ContactPhone TEXT NULL,
    SignedByUserId INTEGER NULL,
    SignedDate DATETIME NULL,
    StatusCode INTEGER NULL,
    NoticePeriodDays INTEGER NULL,
    ComplianceScore INTEGER NULL,
    AuditFrequencyMonths INTEGER NULL,
    CreatedByUserId INTEGER NULL,
    CreatedDate DATETIME NULL,
    ModifiedByUserId INTEGER NULL,
    ModifiedDate DATETIME NULL,
    Remarks TEXT NULL,
    IsActive INTEGER NULL
);
INSERT INTO supplier_contracts VALUES (1001,201,'SC-2023-001','2023-01-01','2024-01-01',1,250000.00,'USD','Net30','Gold','Alice Smith','alice@example.com','5551234567',12,'2023-01-02',1,30,85,12,10,'2023-01-01',11,'2023-06-01','Initial contract',1);
INSERT INTO supplier_contracts VALUES (1002,202,'SC-2023-002','2023-03-15','2025-03-14',0,500000.00,'EUR','Net45','Silver','Bob Jones','bob@example.com','5559876543',13,'2023-03-16',2,60,90,6,12,'2023-03-15',13,'2023-07-01','Extended term',1);
INSERT INTO supplier_contracts VALUES (1003,203,'SC-2022-010','2022-07-01','2023-06-30',1,120000.00,'GBP','Net60','Bronze','Carol Lee','carol@example.com','5552223344',14,'2022-07-02',3,45,70,12,15,'2022-07-01',14,'2023-05-15','Renewal pending',0);

-- Device firmware version history
CREATE TABLE device_firmware_versions (
    FirmwareId INTEGER NOT NULL PRIMARY KEY,
    DeviceModel TEXT NULL,
    FirmwareVersion TEXT NULL,
    ReleaseDate DATE NULL,
    MinimumSupportedVersion TEXT NULL,
    MaximumSupportedVersion TEXT NULL,
    Checksum TEXT NULL,
    FileSizeBytes INTEGER NULL,
    DownloadUrl TEXT NULL,
    IsMandatory INTEGER NULL,
    ReleaseNotes TEXT NULL,
    CreatedByUserId INTEGER NULL,
    CreatedDate DATETIME NULL,
    ApprovedByUserId INTEGER NULL,
    ApprovedDate DATETIME NULL,
    Deprecated INTEGER NULL,
    SupportedPlatforms TEXT NULL,
    SecurityPatchLevel INTEGER NULL,
    CompatibilityScore INTEGER NULL,
    RolloutPercentage INTEGER NULL,
    RolloutStartDate DATETIME NULL,
    RolloutEndDate DATETIME NULL,
    FailureRatePercent REAL NULL,
    Remarks TEXT NULL
);
INSERT INTO device_firmware_versions VALUES (1,'ModelX','1.2.3','2023-02-15','1.0.0','2.0.0','abc123def','2048576','https://example.com/fw1.bin',1,'Bug fixes and performance improvements',10,'2023-02-10',12,'2023-02-12',0,'Android,iOS',5,92,100,'2023-02-20','2023-03-01',0.2,'Stable release');
INSERT INTO device_firmware_versions VALUES (2,'ModelY','3.4.0','2023-05-01','3.0.0','4.0.0','def456ghi','3072000','https://example.com/fw2.bin',0,'New UI features',11,'2023-04-28',13,'2023-04-30',0,'Android',3,85,50,'2023-05-05','2023-05-20',1.5,'Beta rollout');
INSERT INTO device_firmware_versions VALUES (3,'ModelZ','2.1.1','2022-11-10','2.0.0','2.5.0','ghi789jkl','1024000','https://example.com/fw3.bin',0,'Security patches',12,'2022-11-05',14,'2022-11-07',1,'iOS',7,78,0,NULL,NULL,0.0,'Deprecated');

-- Conference session schedule
CREATE TABLE conference_sessions (
    SessionId INTEGER NOT NULL PRIMARY KEY,
    ConferenceId INTEGER NULL,
    SessionTitle TEXT NULL,
    SessionAbstract TEXT NULL,
    SessionType TEXT NULL,
    TrackName TEXT NULL,
    PresenterName TEXT NULL,
    PresenterAffiliation TEXT NULL,
    PresenterEmail TEXT NULL,
    StartTime DATETIME NULL,
    EndTime DATETIME NULL,
    RoomName TEXT NULL,
    Capacity INTEGER NULL,
    RegisteredAttendees INTEGER NULL,
    WaitlistCount INTEGER NULL,
    IsKeynote INTEGER NULL,
    LanguageCode TEXT NULL,
    RecordingUrl TEXT NULL,
    SlidesUrl TEXT NULL,
    LiveStreamUrl TEXT NULL,
    CreatedByUserId INTEGER NULL,
    CreatedDate DATETIME NULL,
    ModifiedByUserId INTEGER NULL,
    ModifiedDate DATETIME NULL,
    Notes TEXT NULL,
    IsCancelled INTEGER NULL
);
INSERT INTO conference_sessions VALUES (101,1,'Future of AI','Exploring upcoming trends in artificial intelligence','Talk','AI','Dr Jane Doe','Tech University','jane.doe@tech.edu','2023-09-10 09:00:00','2023-09-10 10:00:00','Hall A',200,150,5,0,'en','https://example.com/recording101','https://example.com/slides101','https://example.com/live101',10,'2023-06-01','11','2023-07-15','',0);
INSERT INTO conference_sessions VALUES (102,1,'Data Privacy Panel','Panel discussion on data protection laws','Panel','Security','John Smith','Privacy Corp','john.smith@privacy.com','2023-09-10 11:00:00','2023-09-10 12:30:00','Hall B',150,120,10,0,'en','https://example.com/recording102','https://example.com/slides102','https://example.com/live102',12,'2023-06-02','13','2023-07-20','',0);
INSERT INTO conference_sessions VALUES (103,1,'Opening Keynote','Keynote address by industry leader','Keynote','General','Emily Chen','Innovate Inc','emily.chen@innovate.com','2023-09-10 08:00:00','2023-09-10 08:45:00','Main Auditorium',500,480,0,1,'en','https://example.com/recording103','https://example.com/slides103','https://example.com/live103',14,'2023-06-03','15','2023-07-25','',0);

-- Academic publication metadata
CREATE TABLE academic_publications (
    PublicationId INTEGER NOT NULL PRIMARY KEY,
    DOI TEXT NULL,
    Title TEXT NULL,
    Abstract TEXT NULL,
    PublicationDate DATE NULL,
    JournalName TEXT NULL,
    Volume INTEGER NULL,
    Issue INTEGER NULL,
    PageStart INTEGER NULL,
    PageEnd INTEGER NULL,
    AuthorList TEXT NULL,
    CorrespondingAuthor TEXT NULL,
    CorrespondingEmail TEXT NULL,
    FundingAgency TEXT NULL,
    GrantNumber TEXT NULL,
    Keywords TEXT NULL,
    CitationCount INTEGER NULL,
    OpenAccess INTEGER NULL,
    LicenseType TEXT NULL,
    PDFUrl TEXT NULL,
    CreatedByUserId INTEGER NULL,
    CreatedDate DATETIME NULL,
    ModifiedByUserId INTEGER NULL,
    ModifiedDate DATETIME NULL,
    RetractionFlag INTEGER NULL,
    Notes TEXT NULL
);
INSERT INTO academic_publications VALUES (5001,'10.1000/xyz123','Deep Learning for Image Classification','An extensive study on CNN architectures','2022-05-15','Journal of AI Research',12,3,101,120,'Doe J; Smith A','Doe J','jdoe@example.com','National Science Foundation','NSF-2021-1234','deep learning,cnn,image classification',45,1,'CC-BY','https://example.com/paper5001.pdf',10,'2022-05-01',11,'2022-06-10',0,'');
INSERT INTO academic_publications VALUES (5002,'10.2000/abc456','Quantum Computing Advances','Review of recent breakthroughs in quantum algorithms','2023-01-20','Quantum Computing Letters',5,2,15,30,'Lee K; Patel R','Lee K','klee@quantum.org','Department of Energy','DOE-2022-5678','quantum computing,algorithms,entanglement',12,0,'All Rights Reserved','https://example.com/paper5002.pdf',12,'2023-01-10',13,'2023-02-05',0,'');
INSERT INTO academic_publications VALUES (5003,'10.3000/def789','Sustainable Energy Systems','Analysis of renewable energy integration','2021-09-10','Energy & Environment',22,1,200,220,'Garcia M; Wang L','Garcia M','mgarcia@energy.org','European Commission','EC-2020-8910','sustainable energy,renewables,grid',78,1,'CC-BY-NC','https://example.com/paper5003.pdf',14,'2021-08-30',15,'2021-09-15',0,'');

-- Media playback log entries
CREATE TABLE media_playback_logs (
    PlaybackId INTEGER NOT NULL PRIMARY KEY,
    MediaId INTEGER NULL,
    UserId INTEGER NULL,
    DeviceId INTEGER NULL,
    SessionId INTEGER NULL,
    PlaybackStart DATETIME NULL,
    PlaybackEnd DATETIME NULL,
    DurationSeconds INTEGER NULL,
    PlaybackQuality TEXT NULL,
    BufferCount INTEGER NULL,
    BufferDurationMs INTEGER NULL,
    IsLive INTEGER NULL,
    IsFullScreen INTEGER NULL,
    VolumeLevel INTEGER NULL,
    SubtitlesEnabled INTEGER NULL,
    AudioTrack TEXT NULL,
    VideoResolution TEXT NULL,
    GeoCountryCode TEXT NULL,
    ISPName TEXT NULL,
    NetworkType TEXT NULL,
    AppVersion TEXT NULL,
    CreatedDate DATETIME NULL,
    UpdatedDate DATETIME NULL,
    ErrorCode INTEGER NULL,
    ErrorMessage TEXT NULL,
    IsCompleted INTEGER NULL
);
INSERT INTO media_playback_logs VALUES (9001,301,45,12,8001,'2023-08-01 14:00:00','2023-08-01 14:45:00',2700,'1080p',3,1500,0,1,80,0,'English','1920x1080','US','Comcast','WiFi','1.4.2','2023-08-01 14:45:01','2023-08-01 14:45:01',0,'',1);
INSERT INTO media_playback_logs VALUES (9002,302,46,13,8002,'2023-08-02 09:15:00','2023-08-02 09:35:00',1200,'720p',5,2000,0,0,60,1,'Spanish','1280x720','CA','Rogers','Mobile','1.4.3','2023-08-02 09:35:01','2023-08-02 09:35:01',0,'',1);
INSERT INTO media_playback_logs VALUES (9003,303,47,14,8003,'2023-08-03 20:00:00','2023-08-03 20:10:00',600,'480p',2,800,1,0,40,0,'None','640x480','GB','BT','Fiber','1.5.0','2023-08-03 20:10:01','2023-08-03 20:10:02',101,'Network timeout',0);

-- Learning module progress tracking
CREATE TABLE learning_module_progress (
    ProgressId INTEGER NOT NULL PRIMARY KEY,
    UserId INTEGER NULL,
    ModuleId INTEGER NULL,
    EnrollmentDate DATETIME NULL,
    CompletionDate DATETIME NULL,
    LastAccessed DATETIME NULL,
    PercentComplete INTEGER NULL,
    QuizScore INTEGER NULL,
    Attempts INTEGER NULL,
    TimeSpentSeconds INTEGER NULL,
    CertificateIssued INTEGER NULL,
    CertificateId TEXT NULL,
    MentorId INTEGER NULL,
    FeedbackScore INTEGER NULL,
    FeedbackComments TEXT NULL,
    CurrentStage TEXT NULL,
    IsActive INTEGER NULL,
    IsLocked INTEGER NULL,
    UnlockDate DATETIME NULL,
    ExpirationDate DATETIME NULL,
    CreatedByUserId INTEGER NULL,
    CreatedDate DATETIME NULL,
    ModifiedByUserId INTEGER NULL,
    ModifiedDate DATETIME NULL,
    Remarks TEXT NULL,
    IsArchived INTEGER NULL
);
INSERT INTO learning_module_progress VALUES (2001,55,301,'2023-01-15 09:00:00','2023-03-20 16:30:00','2023-03-20 16:30:00',100,92,2,5400,1,'CERT-2023-001',60,5,'Great module','Completed',0,0,NULL,NULL,10,'2023-01-15 09:00:00',11,'2023-03-20 16:30:01','',0);
INSERT INTO learning_module_progress VALUES (2002,56,302,'2023-02-10 10:15:00',NULL,'2023-04-01 11:00:00',45,0,1,1800,0,NULL,61,0,NULL,'In Progress',1,0,NULL,NULL,12,'2023-02-10 10:15:00',13,'2023-04-01 11:00:01','',0);
INSERT INTO learning_module_progress VALUES (2003,57,303,'2022-11-05 08:30:00','2023-01-12 14:45:00','2023-01-12 14:45:00',100,85,3,7200,1,'CERT-2022-045',62,4,'Needs improvement','Completed',0,0,NULL,NULL,14,'2022-11-05 08:30:00',15,'2023-01-12 14:45:01','',0);

-- Customer support ticket system
CREATE TABLE customer_support_tickets (
    TicketId INTEGER NOT NULL PRIMARY KEY,
    UserId INTEGER NULL,
    Subject TEXT NULL,
    Description TEXT NULL,
    Category TEXT NULL,
    Priority INTEGER NULL,
    StatusCode INTEGER NULL,
    AssignedAgentId INTEGER NULL,
    CreatedDate DATETIME NULL,
    UpdatedDate DATETIME NULL,
    ResolvedDate DATETIME NULL,
    SLAHours INTEGER NULL,
    FirstResponseTimeSeconds INTEGER NULL,
    TotalResponseTimeSeconds INTEGER NULL,
    CustomerSatisfaction INTEGER NULL,
    Tags TEXT NULL,
    Platform TEXT NULL,
    AttachmentCount INTEGER NULL,
    IsEscalated INTEGER NULL,
    EscalationLevel INTEGER NULL,
    ResolutionNotes TEXT NULL,
    CreatedByUserId INTEGER NULL,
    ModifiedByUserId INTEGER NULL,
    ClosedByUserId INTEGER NULL,
    ClosedDate DATETIME NULL,
    FeedbackComments TEXT NULL,
    IsDuplicate INTEGER NULL
);
INSERT INTO customer_support_tickets VALUES (4001,78,'Login failure','User cannot log in with correct credentials','Authentication',2,1,101,'2023-07-01 08:45:00','2023-07-01 09:15:00','2023-07-01 10:00:00',24,1800,5400,5,'login,auth','Web',0,0,0,'Password reset performed',10,11,12,'2023-07-01 10:00:01','Thank you','0');
INSERT INTO customer_support_tickets VALUES (4002,79,'Billing discrepancy','Invoice amount higher than expected','Billing',3,2,102,'2023-07-02 11:30:00','2023-07-02 12:00:00',NULL,48,1200,0,0,'billing,invoices','Mobile',1,0,0,'',13,14,0,NULL,'','0');
INSERT INTO customer_support_tickets VALUES (4003,80,'Feature request','Add dark mode to the app','Feature Request',1,3,103,'2023-07-03 14:20:00','2023-07-04 09:00:00','2023-07-10 15:00:00',72,3600,20000,4,'ui,theme','Web',0,0,0,'Planned for next release',15,16,17,'2023-07-10 15:00:01','Nice','0');

-- Inventory stock level records
CREATE TABLE inventory_stock_levels (
    StockId INTEGER NOT NULL PRIMARY KEY,
    WarehouseId INTEGER NULL,
    ProductSku TEXT NULL,
    ProductName TEXT NULL,
    Category TEXT NULL,
    QuantityOnHand INTEGER NULL,
    QuantityAllocated INTEGER NULL,
    QuantityOnOrder INTEGER NULL,
    ReorderPoint INTEGER NULL,
    ReorderQuantity INTEGER NULL,
    SafetyStock INTEGER NULL,
    UnitCost REAL NULL,
    UnitPrice REAL NULL,
    LastRestockDate DATE NULL,
    NextRestockDate DATE NULL,
    SupplierId INTEGER NULL,
    LeadTimeDays INTEGER NULL,
    BinLocation TEXT NULL,
    ShelfLifeDays INTEGER NULL,
    IsPerishable INTEGER NULL,
    TemperatureRequirement TEXT NULL,
    HazardousMaterial INTEGER NULL,
    CreatedByUserId INTEGER NULL,
    CreatedDate DATETIME NULL,
    ModifiedByUserId INTEGER NULL,
    ModifiedDate DATETIME NULL,
    Notes TEXT NULL,
    IsActive INTEGER NULL
);
INSERT INTO inventory_stock_levels VALUES (7001,1,'SKU-001','Wireless Mouse','Electronics',150,20,50,30,100,20,15.00,25.00,'2023-06-15','2023-07-10',201,5,'A1-01',0,0,'',0,10,'2023-06-15 09:00:00',11,'2023-07-05 10:00:00','',1);
INSERT INTO inventory_stock_levels VALUES (7002,2,'SKU-002','Organic Apples','Food',500,100,200,150,300,50,0.30,0.60,'2023-07-01','2023-07-20',202,2,'B2-04',30,1,'Cool','',12,'2023-07-01 08:00:00',13,'2023-07-15 09:30:00','',1);
INSERT INTO inventory_stock_levels VALUES (7003,1,'SKU-003','Laptop Stand','Accessories',80,10,0,20,50,10,12.50,30.00,'2023-05-20','2023-08-01',203,7,'C3-09',0,0,'',0,14,'2023-05-20 07:45:00',15,'2023-07-30 11:15:00','',1);

-- Weather station reading logs
CREATE TABLE weather_station_readings (
    ReadingId INTEGER NOT NULL PRIMARY KEY,
    StationId INTEGER NULL,
    RecordTimestamp DATETIME NULL,
    TemperatureC REAL NULL,
    HumidityPercent REAL NULL,
    WindSpeedKph REAL NULL,
    WindDirectionDegrees INTEGER NULL,
    PrecipitationMm REAL NULL,
    SolarRadiationWm2 REAL NULL,
    AtmosphericPressureHpa REAL NULL,
    DewPointC REAL NULL,
    VisibilityKm REAL NULL,
    CloudCoverPercent INTEGER NULL,
    UVIndex INTEGER NULL,
    SnowDepthCm REAL NULL,
    WeatherConditionCode INTEGER NULL,
    BatteryVoltage REAL NULL,
    FirmwareVersion TEXT NULL,
    Latitude REAL NULL,
    Longitude REAL NULL,
    ElevationMeters REAL NULL,
    DataQualityFlag INTEGER NULL,
    CreatedByUserId INTEGER NULL,
    CreatedDate DATETIME NULL,
    ModifiedByUserId INTEGER NULL,
    ModifiedDate DATETIME NULL,
    Remarks TEXT NULL,
    IsArchived INTEGER NULL
);
INSERT INTO weather_station_readings VALUES (90001,10,'2023-08-01 12:00:00',22.5,55.0,15.2,180,0.0,500.0,1013.2,12.3,10.0,20,5,0,12.5,'v1.2.3',45.4215,-75.6972,70.0,0,10,'2023-08-01 12:05:00',11,'2023-08-01 12:10:00','',0);
INSERT INTO weather_station_readings VALUES (90002,10,'2023-08-01 13:00:00',23.0,52.0,13.5,190,0.0,520.0,1012.8,12.8,9.5,15,6,0,12.5,'v1.2.3',45.4215,-75.6972,70.0,0,10,'2023-08-01 13:05:00',11,'2023-08-01 13:10:00','',0);
INSERT INTO weather_station_readings VALUES (90003,10,'2023-08-01 14:00:00',24.1,48.5,10.0,200,0.0,540.0,1012.5,13.5,9.0,10,7,0,12.5,'v1.2.3',45.4215,-75.6972,70.0,0,10,'2023-08-01 14:05:00',11,'2023-08-01 14:10:00','',0);