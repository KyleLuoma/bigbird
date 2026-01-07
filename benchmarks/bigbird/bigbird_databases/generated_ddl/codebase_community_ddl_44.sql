-- Learning modules table
CREATE TABLE learning_modules
(
    ModuleId            INTEGER          NOT NULL PRIMARY KEY,
    Title               TEXT,
    Description         TEXT,
    CreationDate        DATETIME,
    LastUpdateDate      DATETIME,
    DurationMinutes     INTEGER,
    DifficultyLevel     TEXT,
    Language            TEXT,
    IsActive            INTEGER,
    OwnerUserId         INTEGER,
    CategoryId          INTEGER,
    SubCategoryId       INTEGER,
    ThumbnailUrl        TEXT,
    VideoUrl            TEXT,
    DocumentUrl         TEXT,
    EstimatedCost       INTEGER,
    MaxEnrollment       INTEGER,
    CurrentEnrollment   INTEGER,
    PrereqCount         INTEGER,
    RatingAvg           REAL,
    RatingCount         INTEGER,
    Tags                TEXT
);

INSERT INTO learning_modules VALUES (1,'Intro to SQL','Basic SQL concepts','2022-01-10','2022-06-15',120,'Beginner','English',1,101,10,101,'http://example.com/thumb1.png','http://example.com/video1.mp4','http://example.com/doc1.pdf',0,200,150,0,4.5,120,'sql,database');
INSERT INTO learning_modules VALUES (2,'Advanced Python','Deep dive into Python features','2021-09-05','2022-02-20',180,'Advanced','English',1,102,20,202,'http://example.com/thumb2.png','http://example.com/video2.mp4','http://example.com/doc2.pdf',50,300,250,1,4.8,200,'python,advanced');
INSERT INTO learning_modules VALUES (3,'Data Visualization','Techniques for visual data','2023-03-12','2023-04-01',90,'Intermediate','Spanish',1,103,30,303,'http://example.com/thumb3.png','http://example.com/video3.mp4','http://example.com/doc3.pdf',30,150,80,2,4.2,85,'visualization,charts');

-- User module progress table
CREATE TABLE user_module_progress
(
    ProgressId          INTEGER          NOT NULL PRIMARY KEY,
    UserId              INTEGER,
    ModuleId            INTEGER,
    EnrollmentDate      DATETIME,
    CompletionDate      DATETIME,
    ProgressPercent     INTEGER,
    LastAccessDate      DATETIME,
    IsCertified         INTEGER,
    Score               INTEGER,
    TimeSpentMinutes    INTEGER,
    Notes               TEXT,
    Feedback            TEXT,
    CertificateId       INTEGER,
    BadgeEarned         TEXT,
    Attempts            INTEGER,
    PassStatus          TEXT,
    ReviewerId          INTEGER,
    ReviewDate          DATETIME,
    Source              TEXT,
    DeviceId            TEXT,
    IPAddress           TEXT,
    SessionId           TEXT
);

INSERT INTO user_module_progress VALUES (1,201,1,'2022-02-01','2022-02-20',100,'2022-02-20',1,95,120,'Completed all lessons','Great module',5001,'SQL Master',1,'Pass',301,'2022-02-21','Web','dev001','192.168.1.10','sess123');
INSERT INTO user_module_progress VALUES (2,202,2,'2022-03-15',NULL,45,'2022-04-01',0,0,60,'Halfway through','Needs more examples',NULL,NULL,2,'InProgress',NULL,NULL,'Mobile','dev002','192.168.1.11','sess124');
INSERT INTO user_module_progress VALUES (3,203,3,'2023-03-20','2023-04-05',100,'2023-04-05',1,88,95,'All topics covered','Good but could be faster',5003,'Viz Pro',1,'Pass',302,'2023-04-06','Web','dev003','192.168.1.12','sess125');

-- Media assets table
CREATE TABLE media_assets
(
    AssetId                 INTEGER          NOT NULL PRIMARY KEY,
    AssetType               TEXT,
    FileName                TEXT,
    FileExtension           TEXT,
    FileSizeBytes           INTEGER,
    Url                     TEXT,
    UploadedByUserId        INTEGER,
    UploadDate              DATETIME,
    Description             TEXT,
    Width                   INTEGER,
    Height                  INTEGER,
    DurationSeconds         INTEGER,
    IsPublic                INTEGER,
    LicenseType             TEXT,
    OwnerOrganizationId     INTEGER,
    Tags                    TEXT,
    Category                TEXT,
    SubCategory             TEXT,
    MimeType                TEXT,
    Checksum                TEXT,
    ThumbnailUrl            TEXT,
    MetadataJson            TEXT,
    RelatedPostId           INTEGER
);

INSERT INTO media_assets VALUES (1,'Image','intro_sql','png',204800,'http://example.com/assets/intro_sql.png',101,'2022-01-12','SQL module thumbnail',800,600,0,1,'CC-BY',10,'sql,thumbnail','Education','Images','image/png','abc123def','http://example.com/assets/intro_sql_thumb.png','{"resolution":"800x600"}',NULL);
INSERT INTO media_assets VALUES (2,'Video','advanced_python','mp4',52428800,'http://example.com/assets/advanced_python.mp4',102,'2021-09-10','Advanced Python course video',1280,720,3600,0,'Proprietary',20,'python,video','Education','Videos','video/mp4','def456ghi','http://example.com/assets/advanced_python_thumb.png','{"duration":"3600"}',2);
INSERT INTO media_assets VALUES (3,'Document','data_viz_guide','pdf',1048576,'http://example.com/assets/data_viz_guide.pdf',103,'2023-03-14','Data Visualization guide','',0,0,1,'CC0',30,'visualization,guide','Education','Documents','application/pdf','ghi789jkl','http://example.com/assets/data_viz_thumb.png','{"pages":45}',3);

-- Conference speakers table
CREATE TABLE conference_speakers
(
    SpeakerId           INTEGER          NOT NULL PRIMARY KEY,
    FirstName           TEXT,
    LastName            TEXT,
    Bio                 TEXT,
    Company             TEXT,
    Title               TEXT,
    Email               TEXT,
    Phone               TEXT,
    WebsiteUrl          TEXT,
    LinkedInUrl         TEXT,
    TwitterHandle       TEXT,
    Country             TEXT,
    City                TEXT,
    PhotoUrl            TEXT,
    SessionsCount       INTEGER,
    PrimaryTopic        TEXT,
    SecondaryTopic      TEXT,
    RatingAvg           REAL,
    RatingCount         INTEGER,
    RegisteredDate      DATETIME,
    IsKeynote           INTEGER,
    IsPanelist          INTEGER,
    AvailabilityStatus  TEXT
);

INSERT INTO conference_speakers VALUES (1,'Alice','Smith','Database expert with 15 years experience','DataCorp','Chief Data Officer','alice.smith@datacorp.com','555-0101','http://alice.example.com','http://linkedin.com/in/alicesmith','alice_s','USA','New York','http://example.com/photos/alice.png',3,'Data Architecture','Machine Learning',4.7,85,'2022-05-01',1,0,'Available');
INSERT INTO conference_speakers VALUES (2,'Bob','Johnson','AI researcher and author','AI Labs','Senior Scientist','bob.johnson@ailabs.com','555-0202','http://bob.example.com','http://linkedin.com/in/bobjohnson','bob_j','Canada','Toronto','http://example.com/photos/bob.png',2,'Artificial Intelligence','Neural Networks',4.5,60,'2022-06-15',0,1,'Pending');
INSERT INTO conference_speakers VALUES (3,'Clara','Lee','Front‑end developer and speaker','WebWorks','Lead Engineer','clara.lee@webworks.com','555-0303','http://clara.example.com','http://linkedin.com/in/claralee','clara_l','UK','London','http://example.com/photos/clara.png',1,'Web Development','Accessibility',4.2,40,'2022-07-10',0,0,'Confirmed');

-- Feature activation logs table
CREATE TABLE feature_activation_logs
(
    LogId               INTEGER          NOT NULL PRIMARY KEY,
    FeatureId           INTEGER,
    UserId              INTEGER,
    ActivationDate      DATETIME,
    ExpirationDate      DATETIME,
    Source              TEXT,
    DeviceId            TEXT,
    IPAddress           TEXT,
    AppVersion          TEXT,
    OSVersion           TEXT,
    Browser             TEXT,
    IsSuccess           INTEGER,
    FailureReason       TEXT,
    ActivationMethod    TEXT,
    PlanId              INTEGER,
    TierLevel           TEXT,
    Region              TEXT,
    Remarks             TEXT,
    CreatedBy            TEXT,
    CreatedAt           DATETIME,
    UpdatedAt           DATETIME,
    UpdatedBy           TEXT,
    SessionId           TEXT
);

INSERT INTO feature_activation_logs VALUES (1,101,201,'2022-02-01','2023-02-01','Web','dev001','192.168.1.10','1.4.2','Windows 10','Chrome',1,'', 'Automatic',5,'Gold','NA','First activation','system','2022-02-01','2022-02-01','system','sess001');
INSERT INTO feature_activation_logs VALUES (2,102,202,'2022-03-15',NULL,'Mobile','dev002','192.168.1.11','2.0.0','iOS 14','Safari',0,'License expired','Manual',3,'Silver','EU','Retry after renewal','admin','2022-03-15','2022-03-20','admin','sess002');
INSERT INTO feature_activation_logs VALUES (3,103,203,'2023-04-10','2024-04-10','Web','dev003','192.168.1.12','3.1.1','macOS 12','Firefox',1,'','Automatic',7,'Platinum','APAC','Renewed automatically','system','2023-04-10','2023-04-10','system','sess003');

-- Inventory stock movements table
CREATE TABLE inventory_stock_movements
(
    MovementId          INTEGER          NOT NULL PRIMARY KEY,
    ProductId           INTEGER,
    WarehouseId         INTEGER,
    QuantityChange      INTEGER,
    MovementType        TEXT,
    ReasonCode          TEXT,
    PerformedByUserId   INTEGER,
    PerformedDate       DATETIME,
    ReferenceNumber     TEXT,
    BatchNumber         TEXT,
    ExpirationDate      DATETIME,
    CostPerUnit         REAL,
    TotalCost           REAL,
    SourceLocation      TEXT,
    DestinationLocation TEXT,
    Comments            TEXT,
    ApprovalStatus      TEXT,
    ApprovedByUserId    INTEGER,
    ApprovalDate        DATETIME,
    TransactionId       TEXT,
    ExternalSystemId    TEXT,
    CreatedAt           DATETIME,
    UpdatedAt           DATETIME
);

INSERT INTO inventory_stock_movements VALUES (1,1001,10,50,'Inbound','PO','301','2022-01-20','REF123','BATCH001','2023-12-31',15.00,750.00,'Supplier A','Warehouse 10','Received shipment','Approved',401,'2022-01-21','TXN001','EXT001','2022-01-20','2022-01-20');
INSERT INTO inventory_stock_movements VALUES (2,1002,12,-20,'Outbound','SO','302','2022-02-10','REF124','BATCH002','2024-06-30',12.50,250.00,'Warehouse 12','Customer B','Shipped order','Pending',NULL,NULL,'TXN002','EXT002','2022-02-10','2022-02-10');
INSERT INTO inventory_stock_movements VALUES (3,1003,11,30,'Transfer','INTERNAL','303','2022-03-05','REF125','BATCH003','2025-01-15',9.00,270.00,'Warehouse 11','Warehouse 13','Internal transfer','Approved',402,'2022-03-06','TXN003','EXT003','2022-03-05','2022-03-05');

-- Partner API transactions table
CREATE TABLE partner_api_transactions
(
    TransactionId       INTEGER          NOT NULL PRIMARY KEY,
    PartnerId           INTEGER,
    ApiEndpoint         TEXT,
    RequestMethod       TEXT,
    RequestTimestamp    DATETIME,
    ResponseTimestamp   DATETIME,
    RequestPayloadSize  INTEGER,
    ResponsePayloadSize INTEGER,
    HttpStatusCode      INTEGER,
    ErrorCode           TEXT,
    ErrorMessage        TEXT,
    AuthTokenId         INTEGER,
    RateLimitBucket     TEXT,
    ConsumedUnits       INTEGER,
    QuotaRemaining      INTEGER,
    QuotaResetTime      DATETIME,
    ClientIp            TEXT,
    ServerIp            TEXT,
    Protocol            TEXT,
    UserAgent           TEXT,
    CorrelationId       TEXT,
    Notes               TEXT,
    CreatedAt           DATETIME
);

INSERT INTO partner_api_transactions VALUES (1,2001,'/v1/data','GET','2022-05-01 08:00:00','2022-05-01 08:00:01',512,1024,200,NULL,NULL,501,'bucketA',5,95,'2022-05-01 09:00:00','203.0.113.5','198.51.100.10','HTTPS','PartnerApp/1.0','corr001','Successful call','2022-05-01');
INSERT INTO partner_api_transactions VALUES (2,2002,'/v1/update','POST','2022-05-02 10:15:30','2022-05-02 10:15:35',2048,256,400,'ERR123','Invalid payload',502,'bucketB',10,90,'2022-05-02 11:00:00','203.0.113.6','198.51.100.11','HTTPS','PartnerApp/2.1','corr002','Bad request','2022-05-02');
INSERT INTO partner_api_transactions VALUES (3,2003,'/v1/status','GET','2022-05-03 14:20:00','2022-05-03 14:20:00',256,512,200,NULL,NULL,503,'bucketC',2,98,'2022-05-03 15:00:00','203.0.113.7','198.51.100.12','HTTPS','PartnerApp/3.0','corr003','Status check','2022-05-03');

-- Geo traffic stats extended table
CREATE TABLE geo_traffic_stats_extended
(
    StatId               INTEGER          NOT NULL PRIMARY KEY,
    RegionCode           TEXT,
    Country              TEXT,
    City                 TEXT,
    Latitude             REAL,
    Longitude            REAL,
    AvgSessionDuration  INTEGER,
    BounceRate           REAL,
    PageViews            INTEGER,
    UniqueVisitors       INTEGER,
    NewVisitors          INTEGER,
    ReturningVisitors    INTEGER,
    TrafficSourceOrganic REAL,
    TrafficSourcePaid    REAL,
    TrafficSourceReferral REAL,
    TrafficSourceSocial  REAL,
    DeviceDesktop        INTEGER,
    DeviceMobile         INTEGER,
    DeviceTablet         INTEGER,
    AvgPageDepth         REAL,
    ConversionRate       REAL,
    Revenue              REAL,
    Transactions         INTEGER,
    CreatedDate          DATETIME,
    UpdatedDate          DATETIME,
    DataSource           TEXT,
    Notes                TEXT,
    IsActive             INTEGER,
    ConfidenceScore      REAL,
    SampleSize           INTEGER
);

INSERT INTO geo_traffic_stats_extended VALUES (1,'US-CA','USA','San Francisco',37.7749,-122.4194,300,0.45,50000,40000,15000,25000,20000,5000,3000,2000,30000,15000,5000,3.5,0.05,250000.00,1250,'2022-01-01','2022-01-31','WebAnalytics','Q1 data','1',0.95,10000);
INSERT INTO geo_traffic_stats_extended VALUES (2,'GB-LND','UK','London',51.5074,-0.1278,280,0.48,42000,35000,13000,22000,18000,4000,2500,1800,28000,13000,4000,3.2,0.04,210000.00,1050,'2022-01-01','2022-01-31','WebAnalytics','Q1 data','1',0.92,9500);
INSERT INTO geo_traffic_stats_extended VALUES (3,'DE-BE','Germany','Berlin',52.5200,13.4050,310,0.42,46000,38000,16000,22000,21000,4500,2700,1900,32000,14000,4500,3.8,0.06,230000.00,1150,'2022-01-01','2022-01-31','WebAnalytics','Q1 data','1',0.96,10200);

-- User content preferences table
CREATE TABLE user_content_preferences
(
    PreferenceId          INTEGER          NOT NULL PRIMARY KEY,
    UserId                INTEGER,
    ContentType           TEXT,
    PreferenceLevel       INTEGER,
    Category              TEXT,
    SubCategory           TEXT,
    Tag                   TEXT,
    Weight                REAL,
    IsActive              INTEGER,
    CreatedDate           DATETIME,
    UpdatedDate           DATETIME,
    Source                TEXT,
    Notes                 TEXT,
    LastEvaluatedDate    DATETIME,
    EvaluationScore      REAL,
    Frequency             INTEGER,
    RecencyScore         REAL,
    EngagementScore       REAL,
    RecommendationAlgorithm TEXT,
    ModelVersion          TEXT,
    Confidence            REAL,
    OverrideFlag          INTEGER,
    Reason                TEXT,
    ExpirationDate       DATETIME,
    CreatedBy             TEXT,
    UpdatedBy             TEXT,
    SessionId             TEXT,
    DeviceId              TEXT,
    IPAddress             TEXT,
    Locale                TEXT,
    TimeOfDayPreference  TEXT,
    AdditionalInfo        TEXT,
    IsArchived            INTEGER,
    ArchiveDate           DATETIME,
    ArchiveReason         TEXT
);

INSERT INTO user_content_preferences VALUES (1,201,'Article',80,'Technology','Programming','SQL',0.9,1,'2022-01-10','2022-04-01','System','Prefers SQL content','2022-03-30',0.95,5,0.8,0.85,'CollaborativeFiltering','v1.2',0.93,0,'','2023-01-01','system','system','sess001','dev001','192.168.1.10','en-US','Morning','',0,NULL,NULL);
INSERT INTO user_content_preferences VALUES (2,202,'Video',60,'Science','Physics','Quantum',0.7,1,'2022-02-15','2022-05-10','User','Loves quantum videos','2022-05-05',0.89,3,0.6,0.78,'ContentBased','v1.0',0.88,0,'','2023-06-01','user','user','sess002','dev002','192.168.1.11','en-GB','Evening','',0,NULL,NULL);
INSERT INTO user_content_preferences VALUES (3,203,'Podcast',40,'Health','Nutrition','Vitamins',0.5,1,'2022-03-20','2022-06-15','System','Occasional listener','2022-06-10',0.75,2,0.5,0.65,'Hybrid','v2.1',0.80,0,'','2024-01-01','system','system','sess003','dev003','192.168.1.12','en-CA','Afternoon','',0,NULL,NULL);