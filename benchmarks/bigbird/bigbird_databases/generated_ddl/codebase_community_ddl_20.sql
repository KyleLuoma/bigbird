-- Search index documents metadata
CREATE TABLE search_index_documents
(
    DocumentId          INTEGER          NOT NULL PRIMARY KEY,
    Title               TEXT,
    Summary             TEXT,
    ContentHash         TEXT,
    LanguageCode        TEXT,
    SourceType          TEXT,
    SourceId            INTEGER,
    CreatedAt           DATETIME,
    UpdatedAt           DATETIME,
    IndexVersion        INTEGER,
    WordCount           INTEGER,
    CharCount           INTEGER,
    IsActive            INTEGER,
    PriorityScore       REAL,
    Category            TEXT,
    Tags                TEXT,
    AuthorName          TEXT,
    AuthorId            INTEGER,
    Url                 TEXT,
    CrawlDepth          INTEGER,
    LastCrawled         DATETIME,
    IndexingStatus      TEXT
);

INSERT INTO search_index_documents VALUES
(1,'DocTitle1','Summary1','hash1','en','web',1001,'2025-01-01 00:00:00','2025-01-01 00:00:00',1,500,3000,1,0.9,'Tech','tag1,tag2','AuthorOne',10,'http://example.com/1',2,'2025-01-02 00:00:00','completed');

INSERT INTO search_index_documents VALUES
(2,'DocTitle2','Summary2','hash2','es','api',1002,'2025-02-01 00:00:00','2025-02-01 00:00:00',2,750,4500,1,0.85,'Science','tag3,tag4','AuthorTwo',20,'http://example.com/2',3,'2025-02-02 00:00:00','pending');

INSERT INTO search_index_documents VALUES
(3,'DocTitle3','Summary3','hash3','fr','mobile',1003,'2025-03-01 00:00:00','2025-03-01 00:00:00',1,1200,7200,0,0.75,'Health','tag5,tag6','AuthorThree',30,'http://example.com/3',1,'2025-03-02 00:00:00','failed');

-- Content quality assessment scores
CREATE TABLE content_quality_assessments
(
    AssessmentId        INTEGER          NOT NULL PRIMARY KEY,
    ContentId           INTEGER,
    ContentType         TEXT,
    ReviewerId          INTEGER,
    ReviewDate          DATETIME,
    Score               REAL,
    ReadabilityScore    REAL,
    RelevanceScore      REAL,
    OriginalityScore    REAL,
    DepthScore          REAL,
    GrammarScore        REAL,
    SpellingScore       REAL,
    ToneScore           REAL,
    BiasScore           REAL,
    OverallRating       REAL,
    Comments            TEXT,
    IsFlagged           INTEGER,
    FlagReason          TEXT,
    ResolutionStatus    TEXT,
    FollowUpDate        DATETIME
);

INSERT INTO content_quality_assessments VALUES
(1,101,'post',201,'2025-04-10 10:00:00',4.5,4.0,4.2,4.8,4.1,4.3,4.6,4.2,0.5,4.4,'Good overall',0,NULL,'resolved','2025-04-15 00:00:00');

INSERT INTO content_quality_assessments VALUES
(2,102,'comment',202,'2025-04-11 11:30:00',3.0,2.5,3.2,2.8,2.9,3.1,2.7,2.9,0.7,2.8,'Needs improvement',1,'spam','open','2025-04-20 00:00:00');

INSERT INTO content_quality_assessments VALUES
(3,103,'answer',203,'2025-04-12 09:45:00',4.8,4.5,4.7,4.9,4.6,4.8,4.9,4.7,0.2,4.7,'Excellent',0,NULL,'closed','2025-04-18 00:00:00');

-- API usage session tracking
CREATE TABLE api_usage_sessions
(
    SessionId           INTEGER          NOT NULL PRIMARY KEY,
    ApiKeyId            INTEGER,
    UserId              INTEGER,
    IpAddress           TEXT,
    DeviceId            TEXT,
    StartTime           DATETIME,
    EndTime             DATETIME,
    TotalCalls          INTEGER,
    SuccessCalls        INTEGER,
    FailedCalls         INTEGER,
    AvgLatencyMs        REAL,
    MaxLatencyMs        REAL,
    MinLatencyMs        REAL,
    DataTransferBytes   INTEGER,
    EndpointCount       INTEGER,
    LastEndpoint        TEXT,
    UserAgent           TEXT,
    GeoCountry          TEXT,
    GeoRegion           TEXT,
    GeoCity             TEXT,
    ISP                 TEXT,
    PlanTier            TEXT,
    IsActive            INTEGER,
    CreatedAt           DATETIME
);

INSERT INTO api_usage_sessions VALUES
(1,10001,301,'192.168.1.10','dev123','2025-05-01 08:00:00','2025-05-01 09:00:00',5000,4950,50,120.5,300.0,80.0,1048576,25,'/v1/resource','Mozilla/5.0','US','CA','SanFrancisco','Comcast','premium',1,'2025-05-01 08:00:00');

INSERT INTO api_usage_sessions VALUES
(2,10002,302,'192.168.1.11','dev124','2025-05-02 10:15:00','2025-05-02 10:45:00',3000,2980,20,95.2,250.0,70.0,524288,15,'/v1/search','Chrome/90.0','GB','London','London','BT','standard',1,'2025-05-02 10:15:00');

INSERT INTO api_usage_sessions VALUES
(3,10003,303,'192.168.1.12','dev125','2025-05-03 14:30:00','2025-05-03 15:00:00',2000,1995,5,150.0,400.0,100.0,262144,10,'/v2/analytics','Safari/14.0','AU','NSW','Sydney','Telstra','enterprise',0,'2025-05-03 14:30:00');

-- Regional content availability mapping
CREATE TABLE regional_content_availability
(
    AvailabilityId      INTEGER          NOT NULL PRIMARY KEY,
    ContentId           INTEGER,
    ContentType         TEXT,
    RegionCode          TEXT,
    LanguageCode        TEXT,
    IsAvailable         INTEGER,
    AvailableFrom       DATETIME,
    AvailableTo         DATETIME,
    Restrictions        TEXT,
    LicenseType         TEXT,
    ProviderId          INTEGER,
    ProviderName        TEXT,
    AccessMethod        TEXT,
    BandwidthLimitMbps  INTEGER,
    MaxViewsPerDay      INTEGER,
    CurrentViews        INTEGER,
    Rating              REAL,
    ReviewDate          DATETIME,
    ReviewerId          INTEGER,
    Notes               TEXT,
    CreatedAt           DATETIME
);

INSERT INTO regional_content_availability VALUES
(1,201,'post','US','en',1,'2025-06-01 00:00:00','2026-06-01 00:00:00','none','standard',501,'ProviderA','streaming',1000,5000,1200,4.5,'2025-06-05 12:00:00',401,'first rollout','2025-06-01 00:00:00');

INSERT INTO regional_content_availability VALUES
(2,202,'post','EU','de',0,'2025-07-01 00:00:00','2025-12-31 23:59:59','geo-block','restricted',502,'ProviderB','download',500,2000,800,3.8,'2025-07-10 09:30:00',402,'pending compliance','2025-07-01 00:00:00');

INSERT INTO regional_content_availability VALUES
(3,203,'post','AP','ja',1,'2025-08-15 00:00:00','2027-08-15 00:00:00','none','premium',503,'ProviderC','streaming',1500,10000,3000,4.9,'2025-08-20 15:45:00',403,'beta region','2025-08-15 00:00:00');

-- Knowledge graph annotation records
CREATE TABLE knowledge_graph_annotations
(
    AnnotationId        INTEGER          NOT NULL PRIMARY KEY,
    NodeId              INTEGER,
    EdgeId              INTEGER,
    AnnotationType      TEXT,
    Source              TEXT,
    CreatedAt           DATETIME,
    CreatedBy           INTEGER,
    UpdatedAt           DATETIME,
    UpdatedBy           INTEGER,
    ConfidenceScore     REAL,
    TextSnippet         TEXT,
    StartOffset         INTEGER,
    EndOffset           INTEGER,
    Language            TEXT,
    IsPublic            INTEGER,
    TagSet              TEXT,
    RelatedDocumentId   INTEGER,
    Relevance           REAL,
    Provenance          TEXT,
    Comment             TEXT,
    Version             INTEGER,
    Status              TEXT,
    ExtraMetadata       TEXT
);

INSERT INTO knowledge_graph_annotations VALUES
(1,301,401,'entity','system','2025-09-01 08:00:00',501,'2025-09-02 09:00:00',502,0.95,'sample snippet 1',0,25,'en',1,'tagA,tagB',601,0.9,'auto','initial annotation',1,'active','meta1');

INSERT INTO knowledge_graph_annotations VALUES
(2,302,402,'relation','user','2025-09-05 10:30:00',503,'2025-09-06 11:45:00',504,0.88,'sample snippet 2',5,30,'es',0,'tagC',602,0.7,'manual','review needed',2,'pending','meta2');

INSERT INTO knowledge_graph_annotations VALUES
(3,303,403,'attribute','api','2025-09-10 14:15:00',505,'2025-09-11 15:20:00',506,0.99,'sample snippet 3',10,45,'fr',1,'tagD,tagE',603,0.98,'auto','validated',3,'verified','meta3');

-- Advertiser target segment definitions
CREATE TABLE advertiser_target_segments
(
    SegmentId           INTEGER          NOT NULL PRIMARY KEY,
    AdvertiserId        INTEGER,
    SegmentName         TEXT,
    Description         TEXT,
    CreatedAt           DATETIME,
    UpdatedAt           DATETIME,
    IsActive            INTEGER,
    TargetAgeMin        INTEGER,
    TargetAgeMax        INTEGER,
    TargetGender        TEXT,
    TargetLocations     TEXT,
    IncomeBracket       TEXT,
    Interests           TEXT,
    DeviceTypes         TEXT,
    Platform            TEXT,
    FrequencyCap        INTEGER,
    Budget              REAL,
    SpendToDate         REAL,
    CPC                 REAL,
    CPM                 REAL,
    AttributionModel    TEXT,
    Status              TEXT
);

INSERT INTO advertiser_target_segments VALUES
(1,701,'YoungAdults','Targets 18-25 year olds','2025-10-01 00:00:00','2025-10-02 00:00:00',1,18,25,'any','US,CA','middle','gaming,tech','mobile','iOS',1000,5000.00,1200.00,0.5,5.0,'lastclick','running');

INSERT INTO advertiser_target_segments VALUES
(2,702,'Professionals','Targets 30-45 year old professionals','2025-10-05 00:00:00','2025-10-06 00:00:00',1,30,45,'male','US,UK','high','finance,software','desktop','windows',800,8000.00,3000.00,0.8,8.0,'firstclick','running');

INSERT INTO advertiser_target_segments VALUES
(3,703,'Retirees','Targets 65+ demographic','2025-10-10 00:00:00','2025-10-11 00:00:00',0,65,99,'female','AU,NZ','low','travel,health','tablet','android',500,2000.00,500.00,1.2,12.0,'linear','paused');

-- Forum thread statistical aggregates
CREATE TABLE forum_thread_statistics
(
    ThreadId            INTEGER          NOT NULL PRIMARY KEY,
    ForumId             INTEGER,
    TotalPosts          INTEGER,
    TotalViews          INTEGER,
    UniqueViewers       INTEGER,
    FirstPostDate       DATETIME,
    LastPostDate        DATETIME,
    AveragePostLength   REAL,
    MaxPostLength       INTEGER,
    MinPostLength       INTEGER,
    ContributorCount   INTEGER,
    ReplyRate           REAL,
    UpvoteCount         INTEGER,
    DownvoteCount       INTEGER,
    FlagCount           INTEGER,
    IsClosed            INTEGER,
    IsPinned            INTEGER,
    ModeratorId         INTEGER,
    LastModeratorAction DATETIME,
    Tags                TEXT
);

INSERT INTO forum_thread_statistics VALUES
(1,801,150,2500,1200,'2025-11-01 08:00:00','2025-11-15 12:30:00',350.5,800,120,25,0.75,300,5,2,0,1,900,'2025-11-15 13:00:00','tagX,tagY');

INSERT INTO forum_thread_statistics VALUES
(2,802,80,1800,900,'2025-12-01 09:15:00','2025-12-10 14:45:00',420.0,950,200,15,0.60,180,3,1,0,0,0,'2025-12-10 15:00:00','tagA');

INSERT INTO forum_thread_statistics VALUES
(3,803,200,5000,3000,'2025-12-20 07:30:00','2025-12-25 18:20:00',500.2,1200,150,40,0.85,600,10,5,1,0,950,'2025-12-25 19:00:00','tagB,tagC,tagD');

-- Device power event logging
CREATE TABLE device_power_events
(
    EventId             INTEGER          NOT NULL PRIMARY KEY,
    DeviceId            INTEGER,
    PowerState          TEXT,
    EventTimestamp      DATETIME,
    BatteryLevel        REAL,
    BatteryHealth       TEXT,
    TemperatureC        REAL,
    Voltage             REAL,
    Current             REAL,
    PowerSource         TEXT,
    FirmwareVersion     TEXT,
    OSVersion           TEXT,
    LocationLat         REAL,
    LocationLong        REAL,
    UserId              INTEGER,
    AppRunning          TEXT,
    NetworkType         TEXT,
    SignalStrength      INTEGER,
    EventDescription    TEXT,
    IsCritical          INTEGER,
    ResolvedAt          DATETIME
);

INSERT INTO device_power_events VALUES
(1,1001,'charging','2025-01-10 08:00:00',85.0,'good',35.0,5.0,1.2,'ac','v1.2','10.0',37.7749,-122.4194,501,'yes','wifi',80,'charger connected',0,NULL);

INSERT INTO device_power_events VALUES
(2,1002,'discharging','2025-01-11 09:30:00',45.0,'fair',40.0,3.7,0.8,'battery','v1.3','11.0',34.0522,-118.2437,502,'no','cellular',70,'battery low',1,'2025-01-11 10:00:00');

INSERT INTO device_power_events VALUES
(3,1003,'offline','2025-01-12 12:15:00',0.0,'bad',45.0,0.0,0.0,'none','v1.0','9.5',40.7128,-74.0060,503,'no','none',0,'2025-01-12 12:30:00');

-- Learning path module definitions
CREATE TABLE learning_path_modules
(
    ModuleId            INTEGER          NOT NULL PRIMARY KEY,
    PathId              INTEGER,
    Title               TEXT,
    Description         TEXT,
    OrderIndex          INTEGER,
    EstimatedTimeMinutes INTEGER,
    ContentType         TEXT,
    ContentId           INTEGER,
    IsMandatory         INTEGER,
    PrerequisiteModuleId INTEGER,
    CreatedAt           DATETIME,
    UpdatedAt           DATETIME,
    AuthorId            INTEGER,
    AuthorName          TEXT,
    DifficultyLevel     TEXT,
    Rating              REAL,
    ReviewCount         INTEGER,
    CompletionRate      REAL,
    LastAccessed        DATETIME,
    Status              TEXT
);

INSERT INTO learning_path_modules VALUES
(1,901,'Intro to SQL','Basics of SQL queries',1,45,'video',10001,1,NULL,'2025-02-01 08:00:00','2025-02-05 09:00:00',601,'JaneDoe','beginner',4.6,120,0.85,'2025-04-01 10:00:00','published');

INSERT INTO learning_path_modules VALUES
(2,902,'Advanced Joins','Deep dive into join strategies',2,60,'article',10002,1,1,'2025-02-10 08:30:00','2025-02-12 11:00:00',602,'JohnSmith','intermediate',4.2,80,0.70,'2025-04-02 11:30:00','published');

INSERT INTO learning_path_modules VALUES
(3,903,'Performance Tuning','Optimizing query performance',3,90,'video',10003,0,2,'2025-03-01 09:00:00','2025-03-03 12:00:00',603,'AliceLee','advanced',4.8,150,0.60,'2025-04-03 14:15:00','draft');

-- Supplier delivery records
CREATE TABLE supplier_delivery_records
(
    DeliveryId          INTEGER          NOT NULL PRIMARY KEY,
    SupplierId          INTEGER,
    PurchaseOrderId     INTEGER,
    DeliveryDate        DATETIME,
    ReceivedDate        DATETIME,
    Status              TEXT,
    ReceivedByUserId    INTEGER,
    WarehouseId         INTEGER,
    ItemCount           INTEGER,
    TotalWeightKg       REAL,
    VolumeCubicMeters   REAL,
    CarrierName         TEXT,
    TrackingNumber      TEXT,
    IsDamaged           INTEGER,
    DamageDescription   TEXT,
    QualityScore        REAL,
    InvoiceNumber       TEXT,
    PaymentStatus       TEXT,
    Remarks             TEXT,
    CreatedAt           DATETIME,
    UpdatedAt           DATETIME,
    CreatedByUserId     INTEGER
);

INSERT INTO supplier_delivery_records VALUES
(1,801,9001,'2025-05-01 10:00:00','2025-05-02 08:30:00','received',701,401,150,1200.5,3.2,'FastShip','TRK12345',0,NULL,9.5,'INV9001','paid','on time','2025-05-01 09:00:00','2025-05-03 12:00:00',701);

INSERT INTO supplier_delivery_records VALUES
(2,802,9002,'2025-05-05 14:00:00','2025-05-06 09:15:00','received',702,402,200,1800.0,4.5,'QuickLogistics','TRK67890',1,'minor dent',8.0,'INV9002','pending','requires inspection','2025-05-05 13:30:00','2025-05-07 10:45:00',702);

INSERT INTO supplier_delivery_records VALUES
(3,803,9003,'2025-05-10 16:30:00','2025-05-11 11:45:00','delayed',703,403,100,800.0,2.0,'ShipNow','TRK11223',0,NULL,7.5,'INV9003','overdue','delayed due to weather','2025-05-10 16:00:00','2025-05-12 14:20:00',703);