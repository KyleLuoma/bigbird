-- API endpoint definitions
CREATE TABLE api_endpoint_definitions
(
    Id                     INTEGER PRIMARY KEY,
    EndpointName           TEXT,
    HttpMethod             TEXT,
    UrlPattern             TEXT,
    Description            TEXT,
    Version                TEXT,
    IsDeprecated           INTEGER,
    CreatedDate            DATETIME,
    UpdatedDate            DATETIME,
    OwnerTeam              TEXT,
    RateLimitPerMinute     INTEGER,
    AvgResponseTimeMs      INTEGER,
    MaxResponseTimeMs      INTEGER,
    MinResponseTimeMs      INTEGER,
    ErrorRatePct           REAL,
    AuthRequired           INTEGER,
    Cacheable              INTEGER,
    ThrottlingPolicy       TEXT,
    DocumentationUrl       TEXT,
    ChangeLog              TEXT,
    DeprecationDate        DATETIME,
    ServiceArea            TEXT
);
INSERT INTO api_endpoint_definitions VALUES (1,'GetUser','GET','/api/v1/users/{id}','Retrieve user details','v1',0,'2024-01-10 08:00:00','2024-06-15 12:30:00','UserTeam',500,120,250,80,0.2,1,1,'Standard','https://docs.example.com/getuser','Initial release',NULL,'UserManagement');
INSERT INTO api_endpoint_definitions VALUES (2,'CreatePost','POST','/api/v1/posts','Create a new post','v2',0,'2024-02-05 09:15:00','2024-07-20 14:45:00','ContentTeam',300,200,500,150,0.5,1,0,'Strict','https://docs.example.com/createpost','Added validation',NULL,'Content');
INSERT INTO api_endpoint_definitions VALUES (3,'Search','GET','/api/v1/search','Search across content','v1',0,'2023-11-01 07:30:00','2024-05-01 10:00:00','SearchTeam',1000,90,180,60,0.1,0,1,'Loose','https://docs.example.com/search','Optimized indexing','2025-01-01 00:00:00','Search');

-- Content tagging rules
CREATE TABLE content_tagging_rules
(
    RuleId                 INTEGER PRIMARY KEY,
    RuleName               TEXT,
    TargetContentType     TEXT,
    TagPattern            TEXT,
    MinimumScore          INTEGER,
    MaximumScore          INTEGER,
    ApplyOnCreate         INTEGER,
    ApplyOnUpdate         INTEGER,
    Priority              INTEGER,
    IsActive              INTEGER,
    CreatedByUserId       INTEGER,
    CreatedDate           DATETIME,
    ModifiedByUserId      INTEGER,
    ModifiedDate          DATETIME,
    Description           TEXT,
    NotifyUser            INTEGER,
    AutoApprove           INTEGER,
    TagSource             TEXT,
    RegexFlag             TEXT,
    ExecutionOrder        INTEGER,
    FailureAction         TEXT,
    RuleCategory          TEXT
);
INSERT INTO content_tagging_rules VALUES (101,'SpamDetection','Comment','spam|viagra|lottery',0,100,1,1,10,1,5,'2024-01-01 00:00:00',5,'2024-03-01 12:00:00','Detects obvious spam patterns',0,0,'UserGenerated','i',1,'Reject','Safety');
INSERT INTO content_tagging_rules VALUES (102,'TechTagger','Post','[\\w]+-tech',50,100,1,0,5,1,8,'2024-02-10 08:30:00',8,'2024-04-15 09:45:00','Assigns tech related tags',1,1,'System','g',2,'Apply','Categorization');
INSERT INTO content_tagging_rules VALUES (103,'LanguageNormalizer','Answer','[A-Za-z]{3,}',0,0,0,1,8,1,12,'2024-03-20 14:00:00',12,'2024-05-22 16:10:00','Normalizes language usage',0,1,'AI','m',3,'Warn','Quality');

-- User engagement surveys
CREATE TABLE user_engagement_surveys
(
    SurveyId               INTEGER PRIMARY KEY,
    SurveyTitle            TEXT,
    LaunchDate             DATETIME,
    CloseDate              DATETIME,
    TargetSegment          TEXT,
    SampleSize             INTEGER,
    QuestionCount          INTEGER,
    AvgCompletionTimeMin  REAL,
    IncentiveOffered       TEXT,
    IsAnonymous            INTEGER,
    CreatedByUserId        INTEGER,
    CreatedDate            DATETIME,
    ModifiedByUserId       INTEGER,
    ModifiedDate           DATETIME,
    Status                 TEXT,
    ResponseRatePct        REAL,
    Language               TEXT,
    SurveyUrl              TEXT,
    RelatedCampaignId      INTEGER,
    FollowUpSurveyId       INTEGER,
    SurveyVersion          TEXT,
    DataRetentionDays     INTEGER
);
INSERT INTO user_engagement_surveys VALUES (201,'Feature Feedback','2024-04-01 09:00:00','2024-04-15 23:59:59','ActiveUsers',500,10,5.2,'GiftCard','1',10,'2024-03-20 11:00:00',10,'2024-04-01 09:00:00','Open',12.5,'en','https://survey.example.com/201',301,NULL,'v1',365);
INSERT INTO user_engagement_surveys VALUES (202,'UI Usability','2024-05-10 08:00:00','2024-05-20 23:59:59','NewRegistrants',300,15,7.8,'DiscountCode','0',12,'2024-04-30 10:30:00',12,'2024-05-10 08:00:00','Closed',18.0,'en','https://survey.example.com/202',302,201,'v2',180);
INSERT INTO user_engagement_surveys VALUES (203,'Retention Study','2024-06-01 00:00:00','2024-06-30 23:59:59','AllUsers',1000,20,9.1,'None','1',15,'2024-05-15 14:45:00',15,'2024-06-01 00:00:00','Open',9.3,'en','https://survey.example.com/203',303,NULL,'v1',730);

-- System backup jobs
CREATE TABLE system_backup_jobs
(
    BackupId                INTEGER PRIMARY KEY,
    JobName                 TEXT,
    ScheduleCron            TEXT,
    LastRunDate             DATETIME,
    NextRunDate             DATETIME,
    RetentionDays           INTEGER,
    BackupLocation          TEXT,
    StorageProvider         TEXT,
    CompressionEnabled      INTEGER,
    EncryptionEnabled       INTEGER,
    BackupSizeGb            REAL,
    DurationMinutes         INTEGER,
    CreatedByUserId         INTEGER,
    CreatedDate             DATETIME,
    ModifiedByUserId        INTEGER,
    ModifiedDate            DATETIME,
    Status                  TEXT,
    FailureReason           TEXT,
    IsFullBackup            INTEGER,
    IsIncremental           INTEGER,
    NotificationEmail       TEXT,
    TargetDatabase          TEXT,
    ChecksumEnabled        INTEGER
);
INSERT INTO system_backup_jobs VALUES (301,'DailyFull','0 2 * * *','2024-07-01 02:05:00','2024-07-02 02:00:00',30,'/backups/daily','S3',1,1,120.5,45,1,'2024-01-01 00:00:00',1,'2024-07-01 02:05:00','Success',NULL,1,0,'admin@example.com','main_db',1);
INSERT INTO system_backup_jobs VALUES (302,'HourlyInc','0 * * * *','2024-07-01 14:00:00','2024-07-01 15:00:00',7,'/backups/hourly','AzureBlob',1,1,5.2,10,2,'2024-02-15 12:00:00',2,'2024-07-01 14:00:00','Success',NULL,0,1,'ops@example.com','main_db',1);
INSERT INTO system_backup_jobs VALUES (303,'WeeklyFull','0 3 * * 0','2024-06-30 03:10:00','2024-07-07 03:00:00',90,'/backups/weekly','GoogleDrive',1,1,350.0,120,3,'2024-03-10 09:30:00',3,'2024-06-30 03:10:00','Failed','NetworkTimeout',1,0,'backup@example.com','archive_db',1);

-- Mobile app versions
CREATE TABLE mobile_app_versions
(
    VersionId               INTEGER PRIMARY KEY,
    Platform                TEXT,
    VersionNumber           TEXT,
    ReleaseDate             DATETIME,
    BuildNumber             TEXT,
    MinOSVersion            TEXT,
    MaxOSVersion            TEXT,
    StoreUrl                TEXT,
    ReleaseNotes            TEXT,
    IsBeta                  INTEGER,
    DownloadSizeMb          REAL,
    CrashRatePct            REAL,
    AvgSessionLengthMin    REAL,
    ActiveUserCount         INTEGER,
    CreatedByUserId         INTEGER,
    CreatedDate             DATETIME,
    ModifiedByUserId        INTEGER,
    ModifiedDate            DATETIME,
    IsDeprecated            INTEGER,
    DeprecationDate         DATETIME,
    SupportedLanguages      TEXT,
    FeatureFlagSet          TEXT
);
INSERT INTO mobile_app_versions VALUES (401,'iOS','1.4.2','2024-05-20 10:00:00','20240520','12.0','15.5','https://appstore.example.com/app/401','Minor bug fixes',0,78.5,0.3,5.2,150000,5,'2024-04-01 09:15:00',5,'2024-05-21 11:30:00',0,NULL,'en,es,fr','standard');
INSERT INTO mobile_app_versions VALUES (402,'Android','2.1.0','2024-06-10 08:30:00','20240610','8.0','12.0','https://playstore.example.com/app/402','New UI redesign',1,85.0,0.9,6.1,80000,6,'2024-05-01 14:45:00',6,'2024-06-11 09:00:00',0,NULL,'en,de','beta');
INSERT INTO mobile_app_versions VALUES (403,'iOS','1.3.0','2023-12-01 07:00:00','20231201','10.0','14.0','https://appstore.example.com/app/403','Initial release',0,70.0,0.1,4.8,50000,7,'2023-11-15 12:00:00',7,'2023-12-02 08:20:00',1,'2025-01-01 00:00:00','en','legacy');

-- Partner API usage
CREATE TABLE partner_api_usage
(
    UsageId               INTEGER PRIMARY KEY,
    PartnerId             INTEGER,
    ApiEndpointId         INTEGER,
    CallTimestamp         DATETIME,
    CallCount             INTEGER,
    SuccessfulCalls       INTEGER,
    FailedCalls           INTEGER,
    AvgLatencyMs          INTEGER,
    DataTransferredMb     REAL,
    RateLimitRemaining    INTEGER,
    BillingPeriod         TEXT,
    CostUsd               REAL,
    Currency              TEXT,
    SubscriptionTier      TEXT,
    IsAnomalous           INTEGER,
    AlertSent             INTEGER,
    LastAlertDate         DATETIME,
    CreatedDate           DATETIME,
    ModifiedDate          DATETIME,
    Notes                 TEXT,
    ApiVersion            TEXT,
    IntegrationType       TEXT
);
INSERT INTO partner_api_usage VALUES (501,1001,1,'2024-07-01 10:15:00',1500,1495,5,120,12.5,350,'2024-07','45.00','USD','Gold',0,0,NULL,'2024-07-01 10:15:00','2024-07-01 10:20:00','Routine usage','v1','REST');
INSERT INTO partner_api_usage VALUES (502,1002,3,'2024-07-01 11:00:00',3000,2980,20,200,25.0,150,'2024-07','120.00','USD','Platinum',1,1,'2024-07-01 12:00:00','2024-07-01 11:00:00','Latency spike detected','v2','GraphQL');
INSERT INTO partner_api_usage VALUES (503,1003,2,'2024-07-01 09:45:00',800,800,0,90,5.0,500,'2024-07','20.00','USD','Silver',0,0,NULL,'2024-07-01 09:45:00','2024-07-01 09:50:00','All good','v1','SOAP');

-- Knowledge base topics
CREATE TABLE knowledge_base_topics
(
    TopicId               INTEGER PRIMARY KEY,
    TopicName             TEXT,
    ParentTopicId         INTEGER,
    Description           TEXT,
    CreatedByUserId       INTEGER,
    CreatedDate           DATETIME,
    ModifiedByUserId      INTEGER,
    ModifiedDate          DATETIME,
    ArticleCount          INTEGER,
    ViewCount             INTEGER,
    LikeCount             INTEGER,
    DislikeCount          INTEGER,
    IsFeatured            INTEGER,
    VisibilityLevel       TEXT,
    Language              TEXT,
    Category              TEXT,
    Tags                  TEXT,
    RelatedTopicIds       TEXT,
    IsArchived            INTEGER,
    ArchiveDate           DATETIME,
    ImportanceScore       REAL,
    EstimatedReadTimeMin INTEGER
);
INSERT INTO knowledge_base_topics VALUES (601,'Getting Started',NULL,'Introduction to the platform',10,'2023-01-15 08:00:00',12,'2024-01-10 09:30:00',25,4500,350,15,1,'Public','en','Onboarding','intro,setup','602,603',0,NULL,9.5,5);
INSERT INTO knowledge_base_topics VALUES (602,'Account Management',601,'Managing user accounts and settings',11,'2023-02-10 10:20:00',13,'2024-02-05 11:45:00',40,6200,420,20,0,'Public','en','Administration','account,profile','601,604',0,NULL,8.7,7);
INSERT INTO knowledge_base_topics VALUES (603,'Advanced Features',601,'Deep dive into advanced functionalities',12,'2023-03-01 14:10:00',14,'2024-03-12 15:00:00',30,3000,200,10,0,'Public','en','Features','advanced,pro','601',0,NULL,8.2,6);

-- Forum user activity
CREATE TABLE forum_user_activity
(
    ActivityId            INTEGER PRIMARY KEY,
    ForumId               INTEGER,
    UserId                INTEGER,
    ActivityType          TEXT,
    ActivityDate          DATETIME,
    ThreadId              INTEGER,
    PostId                INTEGER,
    CommentId             INTEGER,
    DurationSeconds       INTEGER,
    PointsEarned          INTEGER,
    ReputationChange      INTEGER,
    DeviceType            TEXT,
    Browser               TEXT,
    OS                    TEXT,
    IPAddress             TEXT,
    LocationId            INTEGER,
    SessionId             TEXT,
    IsModeratorAction    INTEGER,
    ReasonCode            TEXT,
    MetadataJson          TEXT,
    CreatedDate           DATETIME,
    ProcessedFlag        INTEGER
);
INSERT INTO forum_user_activity VALUES (701,1,200,'PostCreated','2024-07-01 08:30:00',301,1001,NULL,120,10,5,'Desktop','Chrome','Windows','192.168.1.10',10,'sess123',0,'','{}','2024-07-01 08:31:00',0);
INSERT INTO forum_user_activity VALUES (702,1,201,'CommentAdded','2024-07-01 09:00:00',301,NULL,5001,45,2,1,'Mobile','Safari','iOS','192.168.1.11',11,'sess124',0,'','{}','2024-07-01 09:01:00',0);
INSERT INTO forum_user_activity VALUES (703,2,202,'ThreadClosed','2024-07-01 10:15:00',302,NULL,NULL,30,0,-2,'Desktop','Firefox','Linux','192.168.1.12',12,'sess125',1,'Spam','{}','2024-07-01 10:16:00',0);

-- Ad creative performance
CREATE TABLE ad_creative_performance
(
    CreativeId            INTEGER PRIMARY KEY,
    CampaignId            INTEGER,
    CreativeType          TEXT,
    FileUrl               TEXT,
    SizePx                TEXT,
    DurationSec           INTEGER,
    Impressions           INTEGER,
    Clicks                INTEGER,
    CTRPct                REAL,
    Conversions           INTEGER,
    ConversionRatePct     REAL,
    CostUsd               REAL,
    RevenueUsd            REAL,
    ROI                   REAL,
    Region                TEXT,
    Language              TEXT,
    TargetAudience        TEXT,
    StartDate             DATETIME,
    EndDate               DATETIME,
    IsActive              INTEGER,
    ApprovedByUserId      INTEGER,
    ApprovalDate          DATETIME,
    Notes                 TEXT
);
INSERT INTO ad_creative_performance VALUES (801,100,'Image','https://cdn.example.com/creatives/801.jpg','300x250',0,50000,1200,2.4,150,3.0,800.00,1200.00,1.5,'NA','en','Adults','2024-06-01 00:00:00','2024-08-31 23:59:59',1,5,'2024-05-28 10:00:00','Seasonal banner');
INSERT INTO ad_creative_performance VALUES (802,101,'Video','https://cdn.example.com/creatives/802.mp4','728x90',30,20000,600,3.0,80,4.0,500.00,900.00,1.8,'EU','fr','Professionals','2024-07-01 00:00:00','2024-09-30 23:59:59',1,6,'2024-06-20 09:30:00','Product launch video');
INSERT INTO ad_creative_performance VALUES (803,102,'Carousel','https://cdn.example.com/creatives/803','1080x1920',0,30000,900,3.0,200,6.7,1000.00,1800.00,1.8,'APAC','zh','YoungAdults','2024-05-15 00:00:00','2024-07-15 23:59:59',0,7,'2024-05-10 08:45:00','Paused for A/B test');

-- Resource access logs
CREATE TABLE resource_access_logs
(
    LogId                INTEGER PRIMARY KEY,
    ResourceId           INTEGER,
    ResourceType         TEXT,
    UserId               INTEGER,
    AccessTimestamp      DATETIME,
    AccessType           TEXT,
    Outcome              TEXT,
    IpAddress            TEXT,
    GeoLocationId        INTEGER,
    DeviceId             TEXT,
    SessionId            TEXT,
    ReferrerUrl          TEXT,
    UserAgent            TEXT,
    TransferBytes        INTEGER,
    DurationMs           INTEGER,
    PermissionLevel      TEXT,
    IsSensitive          INTEGER,
    ComplianceFlag       TEXT,
    CreatedDate          DATETIME,
    ProcessedDate        DATETIME,
    Notes                TEXT,
    ArchiveFlag          INTEGER
);
INSERT INTO resource_access_logs VALUES (901,1001,'Document',200,'2024-07-01 07:45:00','Read','Success','10.0.0.1',1,'dev123','sess200','https://ref.example.com','Mozilla/5.0',2048,120,'Read','0','None','2024-07-01 07:46:00','2024-07-01 08:00:00','Initial import',0);
INSERT INTO resource_access_logs VALUES (902,1002,'Image',201,'2024-07-01 08:15:00','Download','Success','10.0.0.2',2,'dev124','sess201','https://ref.example.com','Mozilla/5.0',5120,80,'Read','0','None','2024-07-01 08:16:00','2024-07-01 08:30:00','Cache warmup',0);
INSERT INTO resource_access_logs VALUES (903,1003,'API',202,'2024-07-01 09:00:00','Write','Failure','10.0.0.3',3,'dev125','sess202','https://ref.example.com','Mozilla/5.0',0,200,'Write','1','GDPR','2024-07-01 09:01:00','2024-07-01 09:15:00','Permission denied',0);