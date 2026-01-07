-- Table storing additional social profiles for users
CREATE TABLE user_social_profiles
(
    Id               INTEGER PRIMARY KEY,
    UserId           INTEGER,
    Platform         TEXT,
    ProfileUrl       TEXT,
    Username         TEXT,
    CreatedAt        DATETIME,
    UpdatedAt        DATETIME,
    FollowersCount   INTEGER,
    FollowingCount   INTEGER,
    PostsCount       INTEGER,
    Bio              TEXT,
    Location         TEXT,
    IsVerified       INTEGER,
    Email            TEXT,
    Phone            TEXT,
    LastSync         DATETIME,
    AccessToken      TEXT,
    RefreshToken     TEXT,
    TokenExpiresAt   DATETIME,
    ProfilePictureUrl TEXT,
    PrivacySetting   TEXT
);

INSERT INTO user_social_profiles (Id,UserId,Platform,ProfileUrl,Username,CreatedAt,UpdatedAt,FollowersCount,FollowingCount,PostsCount,Bio,Location,IsVerified,Email,Phone,LastSync,AccessToken,RefreshToken,TokenExpiresAt,ProfilePictureUrl,PrivacySetting)
VALUES (1,101,'Twitter','https://twitter.com/user101','user101','2023-01-01 10:00:00','2023-01-01 10:00:00',1500,300,500,'Tech enthusiast','NYC',1,'user101@example.com','1234567890','2023-09-01 12:00:00','token123','ref123','2023-10-01 10:00:00','https://img.com/user101.png','Public');

INSERT INTO user_social_profiles (Id,UserId,Platform,ProfileUrl,Username,CreatedAt,UpdatedAt,FollowersCount,FollowingCount,PostsCount,Bio,Location,IsVerified,Email,Phone,LastSync,AccessToken,RefreshToken,TokenExpiresAt,ProfilePictureUrl,PrivacySetting)
VALUES (2,102,'LinkedIn','https://linkedin.com/in/user102','user102','2022-06-15 09:30:00','2022-06-15 09:30:00',800,150,200,'Data analyst','SanFrancisco',0,'user102@example.com','0987654321','2023-08-20 08:45:00','token456','ref456','2023-09-20 09:30:00','https://img.com/user102.png','ConnectionsOnly');

INSERT INTO user_social_profiles (Id,UserId,Platform,ProfileUrl,Username,CreatedAt,UpdatedAt,FollowersCount,FollowingCount,PostsCount,Bio,Location,IsVerified,Email,Phone,LastSync,AccessToken,RefreshToken,TokenExpiresAt,ProfilePictureUrl,PrivacySetting)
VALUES (3,103,'GitHub','https://github.com/user103','user103','2021-11-05 14:20:00','2021-11-05 14:20:00',2500,0,1200,'Open source contributor','Berlin',1,'user103@example.com','5551112222','2023-07-10 16:00:00','token789','ref789','2023-08-10 14:20:00','https://img.com/user103.png','Public');

-- Table storing survey responses attached to posts
CREATE TABLE post_survey_responses
(
    Id                INTEGER PRIMARY KEY,
    PostId            INTEGER,
    SurveyId          INTEGER,
    RespondentUserId  INTEGER,
    ResponseDate      DATETIME,
    Q1                INTEGER,
    Q2                INTEGER,
    Q3                INTEGER,
    Q4                INTEGER,
    Q5                TEXT,
    Q6                TEXT,
    Q7                TEXT,
    Q8                TEXT,
    Q9                TEXT,
    Q10               TEXT,
    OverallScore      INTEGER,
    Comments          TEXT,
    DeviceType        TEXT,
    Browser           TEXT,
    OS                TEXT,
    NetworkType       TEXT
);

INSERT INTO post_survey_responses (Id,PostId,SurveyId,RespondentUserId,ResponseDate,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,OverallScore,Comments,DeviceType,Browser,OS,NetworkType)
VALUES (1,201,301,101,'2023-09-01 11:15:00',5,4,5,3,'Good','Clear','Helpful','Well written','Accurate','Relevant',22,'No comments','Desktop','Chrome','Windows','WiFi');

INSERT INTO post_survey_responses (Id,PostId,SurveyId,RespondentUserId,ResponseDate,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,OverallScore,Comments,DeviceType,Browser,OS,NetworkType)
VALUES (2,202,302,102,'2023-09-02 09:45:00',4,4,4,4,'Average','Detailed','Useful','Informative','Precise','Well structured',20,'Could use more examples','Mobile','Safari','iOS','Cellular');

INSERT INTO post_survey_responses (Id,PostId,SurveyId,RespondentUserId,ResponseDate,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,OverallScore,Comments,DeviceType,Browser,OS,NetworkType)
VALUES (3,203,303,103,'2023-09-03 14:20:00',5,5,5,5,'Excellent','Comprehensive','Very helpful','Clear','Accurate','Very relevant',25,'Great answer!','Tablet','Firefox','Android','WiFi');

-- Table storing AI‑generated summaries for posts
CREATE TABLE content_ai_summaries
(
    Id                INTEGER PRIMARY KEY,
    PostId            INTEGER,
    SummaryText       TEXT,
    GeneratedAt       DATETIME,
    ModelVersion      TEXT,
    TokenCount        INTEGER,
    ConfidenceScore   REAL,
    Language          TEXT,
    WordCount         INTEGER,
    CharCount         INTEGER,
    HighlightedSentences TEXT,
    SummaryLength     INTEGER,
    Source            TEXT,
    IsApproved        INTEGER,
    ReviewerUserId    INTEGER,
    ReviewDate        DATETIME,
    Flags             INTEGER,
    Metadata          TEXT,
    IsPublic          INTEGER,
    Category          TEXT
);

INSERT INTO content_ai_summaries (Id,PostId,SummaryText,GeneratedAt,ModelVersion,TokenCount,ConfidenceScore,Language,WordCount,CharCount,HighlightedSentences,SummaryLength,Source,IsApproved,ReviewerUserId,ReviewDate,Flags,Metadata,IsPublic,Category)
VALUES (1,201,'This post explains how to index databases.', '2023-09-01 12:00:00','v1.2',120,0.92,'en',15,85,'Explain indexing, benefits','short','AI','1',101,'2023-09-02 08:00:00',0,'{}',1,'Database');

INSERT INTO content_ai_summaries (Id,PostId,SummaryText,GeneratedAt,ModelVersion,TokenCount,ConfidenceScore,Language,WordCount,CharCount,HighlightedSentences,SummaryLength,Source,IsApproved,ReviewerUserId,ReviewDate,Flags,Metadata,IsPublic,Category)
VALUES (2,202,'Overview of REST API design principles.', '2023-09-02 13:30:00','v1.3',150,0.88,'en',18,102,'REST basics, status codes','medium','AI','0',NULL,NULL,1,'{}',0,'API');

INSERT INTO content_ai_summaries (Id,PostId,SummaryText,GeneratedAt,ModelVersion,TokenCount,ConfidenceScore,Language,WordCount,CharCount,HighlightedSentences,SummaryLength,Source,IsApproved,ReviewerUserId,ReviewDate,Flags,Metadata,IsPublic,Category)
VALUES (3,203,'Guide to unit testing in Python.', '2023-09-03 09:45:00','v1.2',130,0.95,'en',20,115,'Testing frameworks, mock objects','short','AI','1',103,'2023-09-04 10:15:00',0,'{}',1,'Testing');

-- Table storing user‑specific learning roadmaps
CREATE TABLE user_learning_roadmap
(
    Id                 INTEGER PRIMARY KEY,
    UserId             INTEGER,
    RoadmapName        TEXT,
    CreatedAt          DATETIME,
    UpdatedAt          DATETIME,
    TotalModules       INTEGER,
    CompletedModules   INTEGER,
    CurrentModuleId    INTEGER,
    TargetCompletionDate DATETIME,
    ProgressPercentage REAL,
    IsPublic           INTEGER,
    Description        TEXT,
    Category           TEXT,
    Tags               TEXT,
    OwnerNotes         TEXT,
    LastAccessed       DATETIME,
    Rating             INTEGER,
    SubscriberCount   INTEGER,
    ShareCount         INTEGER,
    IsArchived         INTEGER,
    ArchiveDate        DATETIME
);

INSERT INTO user_learning_roadmap (Id,UserId,RoadmapName,CreatedAt,UpdatedAt,TotalModules,CompletedModules,CurrentModuleId,TargetCompletionDate,ProgressPercentage,IsPublic,Description,Category,Tags,OwnerNotes,LastAccessed,Rating,SubscriberCount,ShareCount,IsArchived,ArchiveDate)
VALUES (1,101,'Full Stack Development','2022-01-10 08:00:00','2023-08-01 10:00:00',25,10,11,'2024-01-01 00:00:00',40.0,1,'Roadmap to become a full stack engineer','Programming','fullstack,web,backend','Focus on React and Node','2023-09-01 12:00:00',5,120,30,0,NULL);

INSERT INTO user_learning_roadmap (Id,UserId,RoadmapName,CreatedAt,UpdatedAt,TotalModules,CompletedModules,CurrentModuleId,TargetCompletionDate,ProgressPercentage,IsPublic,Description,Category,Tags,OwnerNotes,LastAccessed,Rating,SubscriberCount,ShareCount,IsArchived,ArchiveDate)
VALUES (2,102,'Data Science Path','2021-05-15 09:30:00','2023-07-20 14:45:00',30,18,19,'2023-12-15 00:00:00',60.0,0,'Comprehensive data science learning plan','DataScience','ml,statistics,python','Include real‑world projects','2023-08-30 16:20:00',4,80,20,0,NULL);

INSERT INTO user_learning_roadmap (Id,UserId,RoadmapName,CreatedAt,UpdatedAt,TotalModules,CompletedModules,CurrentModuleId,TargetCompletionDate,ProgressPercentage,IsPublic,Description,Category,Tags,OwnerNotes,LastAccessed,Rating,SubscriberCount,ShareCount,IsArchived,ArchiveDate)
VALUES (3,103,'Cybersecurity Fundamentals','2020-11-01 07:15:00','2023-06-10 11:10:00',20,20,20,'2023-06-01 00:00:00',100.0,1,'Roadmap covering essential security topics','Security','cyber,network,infosec','All modules completed','2023-06-01 09:00:00',5,150,45,1,'2023-06-01 00:00:00');

-- Table storing target audience definitions for ad campaigns
CREATE TABLE ad_campaign_target_audience
(
    Id                 INTEGER PRIMARY KEY,
    CampaignId         INTEGER,
    AudienceName       TEXT,
    DemographicDesc    TEXT,
    GeographicRegion   TEXT,
    AgeRange           TEXT,
    Interests          TEXT,
    DeviceTypes        TEXT,
    Platform           TEXT,
    BidMultiplier      REAL,
    StartDate          DATETIME,
    EndDate            DATETIME,
    Budget             INTEGER,
    SpendToDate        INTEGER,
    CPM                REAL,
    CPC                REAL,
    CTR                REAL,
    ConversionRate     REAL,
    IsActive           INTEGER,
    CreatedByUserId    INTEGER,
    CreatedAt          DATETIME
);

INSERT INTO ad_campaign_target_audience (Id,CampaignId,AudienceName,DemographicDesc,GeographicRegion,AgeRange,Interests,DeviceTypes,Platform,BidMultiplier,StartDate,EndDate,Budget,SpendToDate,CPM,CPC,CTR,ConversionRate,IsActive,CreatedByUserId,CreatedAt)
VALUES (1,501,'Tech Professionals','College educated, tech jobs','NorthAmerica','25-34','programming,cloud','Desktop,Mobile','Web',1.2,'2023-09-01 00:00:00','2023-12-31 23:59:59',50000,12000,15.5,0.75,0.04,0.02,1,101,'2023-08-20 10:00:00');

INSERT INTO ad_campaign_target_audience (Id,CampaignId,AudienceName,DemographicDesc,GeographicRegion,AgeRange,Interests,DeviceTypes,Platform,BidMultiplier,StartDate,EndDate,Budget,SpendToDate,CPM,CPC,CTR,ConversionRate,IsActive,CreatedByUserId,CreatedAt)
VALUES (2,502,'All Ages Readers','General audience','Europe','18-65','books,reading','Desktop','Web',1.0,'2023-10-01 00:00:00','2024-01-31 23:59:59',30000,5000,10.0,0.60,0.03,0.015,1,102,'2023-09-15 09:30:00');

INSERT INTO ad_campaign_target_audience (Id,CampaignId,AudienceName,DemographicDesc,GeographicRegion,AgeRange,Interests,DeviceTypes,Platform,BidMultiplier,StartDate,EndDate,Budget,SpendToDate,CPM,CPC,CTR,ConversionRate,IsActive,CreatedByUserId,CreatedAt)
VALUES (3,503,'Young Gamers','High school students, gamers','Asia','13-19','gaming,esports','Mobile','App',1.5,'2023-11-01 00:00:00','2024-02-28 23:59:59',40000,8000,20.0,1.20,0.06,0.04,0,103,'2023-10-25 14:45:00');

-- Table storing analytics for forum threads
CREATE TABLE forum_thread_analytics
(
    Id                         INTEGER PRIMARY KEY,
    ThreadId                   INTEGER,
    ViewCount                  INTEGER,
    UniqueVisitorCount         INTEGER,
    ReplyCount                 INTEGER,
    LikeCount                  INTEGER,
    ShareCount                 INTEGER,
    FirstPostDate              DATETIME,
    LastPostDate               DATETIME,
    AvgResponseTimeSeconds     INTEGER,
    MaxResponseTimeSeconds     INTEGER,
    MedianResponseTimeSeconds  INTEGER,
    UserEngagementScore        REAL,
    SentimentScore             REAL,
    SpamFlagCount              INTEGER,
    ModerationActionCount      INTEGER,
    IsClosed                   INTEGER,
    ClosedDate                 DATETIME,
    Category                   TEXT,
    Tags                       TEXT,
    Language                   TEXT
);

INSERT INTO forum_thread_analytics (Id,ThreadId,ViewCount,UniqueVisitorCount,ReplyCount,LikeCount,ShareCount,FirstPostDate,LastPostDate,AvgResponseTimeSeconds,MaxResponseTimeSeconds,MedianResponseTimeSeconds,UserEngagementScore,SentimentScore,SpamFlagCount,ModerationActionCount,IsClosed,ClosedDate,Category,Tags,Language)
VALUES (1,1001,2500,1800,45,120,30,'2023-01-10 08:00:00','2023-09-01 14:20:00',3600,7200,1800,85.5,0.75,2,1,0,NULL,'Technology','sql,performance','en');

INSERT INTO forum_thread_analytics (Id,ThreadId,ViewCount,UniqueVisitorCount,ReplyCount,LikeCount,ShareCount,FirstPostDate,LastPostDate,AvgResponseTimeSeconds,MaxResponseTimeSeconds,MedianResponseTimeSeconds,UserEngagementScore,SentimentScore,SpamFlagCount,ModerationActionCount,IsClosed,ClosedDate,Category,Tags,Language)
VALUES (2,1002,1800,1500,30,80,20,'2023-02-05 09:30:00','2023-08-20 11:45:00',2700,5400,1350,72.0,0.68,0,0,0,NULL,'Science','physics,quantum','en');

INSERT INTO forum_thread_analytics (Id,ThreadId,ViewCount,UniqueVisitorCount,ReplyCount,LikeCount,ShareCount,FirstPostDate,LastPostDate,AvgResponseTimeSeconds,MaxResponseTimeSeconds,MedianResponseTimeSeconds,UserEngagementScore,SentimentScore,SpamFlagCount,ModerationActionCount,IsClosed,ClosedDate,Category,Tags,Language)
VALUES (3,1003,3200,2500,60,200,50,'2023-03-12 07:45:00','2023-09-03 16:10:00',4200,8400,2100,92.3,0.81,1,2,1,'2023-09-02 12:00:00','Lifestyle','travel,photography','en');

-- Table storing usage of product licenses
CREATE TABLE product_license_usage
(
    Id                INTEGER PRIMARY KEY,
    LicenseId         INTEGER,
    ProductId         INTEGER,
    UserId            INTEGER,
    ActivationDate    DATETIME,
    ExpirationDate    DATETIME,
    IsActive          INTEGER,
    DeviceId          TEXT,
    LicenseKey        TEXT,
    SeatsGranted      INTEGER,
    SeatsUsed         INTEGER,
    LastCheckIn       DATETIME,
    Version           TEXT,
    Platform          TEXT,
    Region            TEXT,
    ComplianceStatus  TEXT,
    ViolationCount    INTEGER,
    RenewalReminderSent INTEGER,
    RenewalDate       DATETIME,
    Notes             TEXT
);

INSERT INTO product_license_usage (Id,LicenseId,ProductId,UserId,ActivationDate,ExpirationDate,IsActive,DeviceId,LicenseKey,SeatsGranted,SeatsUsed,LastCheckIn,Version,Platform,Region,ComplianceStatus,ViolationCount,RenewalReminderSent,RenewalDate,Notes)
VALUES (1,9001,3001,101,'2022-01-01 00:00:00','2023-12-31 23:59:59',1,'DEV001','ABC-DEF-123',5,3,'2023-08-15 10:00:00','1.4.2','Windows','EU','Compliant',0,1,'2023-12-01 00:00:00','Primary office workstation');

INSERT INTO product_license_usage (Id,LicenseId,ProductId,UserId,ActivationDate,ExpirationDate,IsActive,DeviceId,LicenseKey,SeatsGranted,SeatsUsed,LastCheckIn,Version,Platform,Region,ComplianceStatus,ViolationCount,RenewalReminderSent,RenewalDate,Notes)
VALUES (2,9002,3002,102,'2021-06-15 00:00:00','2024-06-14 23:59:59',1,'DEV002','XYZ-789-GHI',10,7,'2023-07-20 14:30:00','2.0.0','macOS','NA','Compliant',1,0,'2024-05-30 00:00:00','Used on developer laptop');

INSERT INTO product_license_usage (Id,LicenseId,ProductId,UserId,ActivationDate,ExpirationDate,IsActive,DeviceId,LicenseKey,SeatsGranted,SeatsUsed,LastCheckIn,Version,Platform,Region,ComplianceStatus,ViolationCount,RenewalReminderSent,RenewalDate,Notes)
VALUES (3,9003,3003,103,'2020-09-01 00:00:00','2023-09-01 23:59:59',0,'DEV003','LMN-456-OPQ',3,3,'2023-08-30 09:15:00','3.2.1','Linux','APAC','Expired',2,1,'2023-08-01 00:00:00','Server deployment license');

-- Table storing properties for knowledge graph nodes
CREATE TABLE knowledge_graph_node_properties
(
    Id                INTEGER PRIMARY KEY,
    NodeId            INTEGER,
    PropertyKey       TEXT,
    PropertyValue     TEXT,
    DataType          TEXT,
    CreatedAt         DATETIME,
    UpdatedAt         DATETIME,
    SourceSystem      TEXT,
    ConfidenceScore   REAL,
    IsDeprecated      INTEGER,
    DeprecatedAt      DATETIME,
    DeprecatedByUserId INTEGER,
    Language          TEXT,
    Locale            TEXT,
    Version           INTEGER,
    Tag               TEXT,
    Category          TEXT,
    OwnerUserId       INTEGER,
    OwnerOrgId        INTEGER,
    AuditTrailId      INTEGER
);

INSERT INTO knowledge_graph_node_properties (Id,NodeId,PropertyKey,PropertyValue,DataType,CreatedAt,UpdatedAt,SourceSystem,ConfidenceScore,IsDeprecated,DeprecatedAt,DeprecatedByUserId,Language,Locale,Version,Tag,Category,OwnerUserId,OwnerOrgId,AuditTrailId)
VALUES (1,2001,'name','Quantum Computing','string','2022-05-01 08:00:00','2023-09-01 09:00:00','research_db',0.98,0,NULL,NULL,'en','US',1,'tech','science',101,10,5001);

INSERT INTO knowledge_graph_node_properties (Id,NodeId,PropertyKey,PropertyValue,DataType,CreatedAt,UpdatedAt,SourceSystem,ConfidenceScore,IsDeprecated,DeprecatedAt,DeprecatedByUserId,Language,Locale,Version,Tag,Category,OwnerUserId,OwnerOrgId,AuditTrailId)
VALUES (2,2002,'definition','A distributed ledger technology','string','2021-11-15 10:30:00','2023-08-20 11:45:00','blockchain_api',0.95,0,NULL,NULL,'en','GB',2,'finance','technology',102,12,5002);

INSERT INTO knowledge_graph_node_properties (Id,NodeId,PropertyKey,PropertyValue,DataType,CreatedAt,UpdatedAt,SourceSystem,ConfidenceScore,IsDeprecated,DeprecatedAt,DeprecatedByUserId,Language,Locale,Version,Tag,Category,OwnerUserId,OwnerOrgId,AuditTrailId)
VALUES (3,2003,'status','deprecated','string','2020-01-10 07:20:00','2022-12-31 12:00:00','legacy_system',0.80,1,'2022-12-31 12:00:00',103,'en','AU',3,'legacy','software',103,15,5003);

-- Table storing external API rate limit configurations
CREATE TABLE external_api_rate_limits
(
    Id                    INTEGER PRIMARY KEY,
    ApiProvider           TEXT,
    Endpoint              TEXT,
    LimitPerMinute        INTEGER,
    LimitPerHour          INTEGER,
    LimitPerDay           INTEGER,
    CurrentUsageMinute    INTEGER,
    CurrentUsageHour      INTEGER,
    CurrentUsageDay       INTEGER,
    ResetTimeMinute       DATETIME,
    ResetTimeHour         DATETIME,
    ResetTimeDay          DATETIME,
    PolicyName            TEXT,
    IsThrottled          INTEGER,
    ThrottleStart         DATETIME,
    ThrottleEnd           DATETIME,
    CreatedByUserId       INTEGER,
    CreatedAt             DATETIME,
    UpdatedByUserId       INTEGER,
    UpdatedAt             DATETIME,
    Notes                 TEXT
);

INSERT INTO external_api_rate_limits (Id,ApiProvider,Endpoint,LimitPerMinute,LimitPerHour,LimitPerDay,CurrentUsageMinute,CurrentUsageHour,CurrentUsageDay,ResetTimeMinute,ResetTimeHour,ResetTimeDay,PolicyName,IsThrottled,ThrottleStart,ThrottleEnd,CreatedByUserId,CreatedAt,UpdatedByUserId,UpdatedAt,Notes)
VALUES (1,'Twitter','/tweets',300,18000,432000,120,5000,25000,'2023-09-01 12:00:00','2023-09-01 00:00:00','2023-09-01 00:00:00','Standard','0',NULL,NULL,101,'2023-01-10 09:00:00',102,'2023-08-20 14:30:00','No issues');

INSERT INTO external_api_rate_limits (Id,ApiProvider,Endpoint,LimitPerMinute,LimitPerHour,LimitPerDay,CurrentUsageMinute,CurrentUsageHour,CurrentUsageDay,ResetTimeMinute,ResetTimeHour,ResetTimeDay,PolicyName,IsThrottled,ThrottleStart,ThrottleEnd,CreatedByUserId,CreatedAt,UpdatedByUserId,UpdatedAt,Notes)
VALUES (2,'GitHub','/repos',60,3600,86400,30,1500,20000,'2023-09-01 13:00:00','2023-09-01 00:00:00','2023-09-01 00:00:00','Elevated','1','2023-09-01 14:00:00','2023-09-01 15:00:00',102,'2023-02-05 10:15:00',103,'2023-08-25 11:45:00','Throttle applied due to abuse');

INSERT INTO external_api_rate_limits (Id,ApiProvider,Endpoint,LimitPerMinute,LimitPerHour,LimitPerDay,CurrentUsageMinute,CurrentUsageHour,CurrentUsageDay,ResetTimeMinute,ResetTimeHour,ResetTimeDay,PolicyName,IsThrottled,ThrottleStart,ThrottleEnd,CreatedByUserId,CreatedAt,UpdatedByUserId,UpdatedAt,Notes)
VALUES (3,'GoogleMaps','/geocode',50,3000,72000,10,800,12000,'2023-09-01 14:30:00','2023-09-01 00:00:00','2023-09-01 00:00:00','Standard','0',NULL,NULL,103,'2023-03-12 08:45:00',101,'2023-08-28 09:20:00','Operating normally');

-- Table storing media asset transcoding logs
CREATE TABLE media_asset_transcoding_log
(
    Id                INTEGER PRIMARY KEY,
    AssetId           INTEGER,
    OriginalFormat    TEXT,
    TargetFormat      TEXT,
    Resolution        TEXT,
    Bitrate           INTEGER,
    TranscodeStart    DATETIME,
    TranscodeEnd      DATETIME,
    DurationSeconds   INTEGER,
    Status            TEXT,
    ErrorMessage      TEXT,
    CpuUsagePercent   REAL,
    MemoryUsageMb     INTEGER,
    OutputUrl         TEXT,
    CreatedByUserId   INTEGER,
    CreatedAt         DATETIME,
    UpdatedByUserId   INTEGER,
    UpdatedAt         DATETIME,
    RetryCount        INTEGER,
    IsSuccessful      INTEGER
);

INSERT INTO media_asset_transcoding_log (Id,AssetId,OriginalFormat,TargetFormat,Resolution,Bitrate,TranscodeStart,TranscodeEnd,DurationSeconds,Status,ErrorMessage,CpuUsagePercent,MemoryUsageMb,OutputUrl,CreatedByUserId,CreatedAt,UpdatedByUserId,UpdatedAt,RetryCount,IsSuccessful)
VALUES (1,4001,'mp4','webm','1920x1080',5000,'2023-09-01 10:00:00','2023-09-01 10:05:00',300,'Completed','',45.5,1024,'https://cdn.example.com/assets/4001.webm',101,'2023-09-01 10:00:00',101,'2023-09-01 10:05:00',0,1);

INSERT INTO media_asset_transcoding_log (Id,AssetId,OriginalFormat,TargetFormat,Resolution,Bitrate,TranscodeStart,TranscodeEnd,DurationSeconds,Status,ErrorMessage,CpuUsagePercent,MemoryUsageMb,OutputUrl,CreatedByUserId,CreatedAt,UpdatedByUserId,UpdatedAt,RetryCount,IsSuccessful)
VALUES (2,4002,'wav','mp3','-','320','2023-09-01 11:15:00','2023-09-01 11:20:00',300,'Failed','Codec not supported',60.0,2048,NULL,102,'2023-09-01 11:15:00',102,'2023-09-01 11:20:00',1,0);

INSERT INTO media_asset_transcoding_log (Id,AssetId,OriginalFormat,TargetFormat,Resolution,Bitrate,TranscodeStart,TranscodeEnd,DurationSeconds,Status,ErrorMessage,CpuUsagePercent,MemoryUsageMb,OutputUrl,CreatedByUserId,CreatedAt,UpdatedByUserId,UpdatedAt,RetryCount,IsSuccessful)
VALUES (3,4003,'mov','mp4','1280x720',2500,'2023-09-01 12:30:00','2023-09-01 12:35:30',330,'Completed','',38.2,1500,'https://cdn.example.com/assets/4003.mp4',103,'2023-09-01 12:30:00',103,'2023-09-01 12:35:30',0,1);