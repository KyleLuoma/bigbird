-- Audit log of system events
CREATE TABLE site_audit_log
(
    Id INTEGER NOT NULL PRIMARY KEY,
    EventTimestamp DATETIME NULL,
    EventType TEXT NULL,
    ActorUserId INTEGER NULL,
    ActorIp TEXT NULL,
    TargetObject TEXT NULL,
    TargetId INTEGER NULL,
    Description TEXT NULL,
    Severity INTEGER NULL,
    SourceModule TEXT NULL,
    ProcessId INTEGER NULL,
    ThreadId INTEGER NULL,
    CorrelationId TEXT NULL,
    MessageCode TEXT NULL,
    AdditionalInfo TEXT NULL,
    SessionId TEXT NULL,
    DeviceId TEXT NULL,
    Browser TEXT NULL,
    Os TEXT NULL,
    Region TEXT NULL
);
INSERT INTO site_audit_log (Id,EventTimestamp,EventType,ActorUserId,ActorIp,TargetObject,TargetId,Description,Severity,SourceModule,ProcessId,ThreadId,CorrelationId,MessageCode,AdditionalInfo,SessionId,DeviceId,Browser,Os,Region) VALUES (1,'2025-12-01 08:15:00','Login',42,'192.168.1.10','User',42,'User logged in',1,'Auth',1234,56,'sess001','MSG001','None','sess001','dev001','Chrome','Windows','NA');
INSERT INTO site_audit_log (Id,EventTimestamp,EventType,ActorUserId,ActorIp,TargetObject,TargetId,Description,Severity,SourceModule,ProcessId,ThreadId,CorrelationId,MessageCode,AdditionalInfo,SessionId,DeviceId,Browser,Os,Region) VALUES (2,'2025-12-01 09:00:12','DataExport',13,'10.0.0.5','ExportRequest',7,'Export completed',2,'ExportService',5678,78,'sess002','MSG002','Rows5000','sess002','dev002','Firefox','Linux','EU');
INSERT INTO site_audit_log (Id,EventTimestamp,EventType,ActorUserId,ActorIp,TargetObject,TargetId,Description,Severity,SourceModule,ProcessId,ThreadId,CorrelationId,MessageCode,AdditionalInfo,SessionId,DeviceId,Browser,Os,Region) VALUES (3,'2025-12-01 10:27:45','PermissionChange',99,'172.16.0.3','User',99,'Admin granted moderator role',3,'UserService',9101,34,'sess003','MSG003','Role=Moderator','sess003','dev003','Edge','macOS','AP');

-- Translations for various content items
CREATE TABLE content_translation
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ContentId INTEGER NULL,
    ContentType TEXT NULL,
    SourceLang TEXT NULL,
    TargetLang TEXT NULL,
    TranslatorUserId INTEGER NULL,
    TranslationDate DATETIME NULL,
    QualityScore INTEGER NULL,
    WordCount INTEGER NULL,
    CharCount INTEGER NULL,
    MachineTranslatedFlag INTEGER NULL,
    ReviewStatus TEXT NULL,
    ReviewerUserId INTEGER NULL,
    ReviewDate DATETIME NULL,
    Comments TEXT NULL,
    ProjectId INTEGER NULL,
    Version INTEGER NULL,
    SourceChecksum TEXT NULL,
    TargetChecksum TEXT NULL,
    ReviewNotes TEXT NULL,
    PublishFlag INTEGER NULL
);
INSERT INTO content_translation (Id,ContentId,ContentType,SourceLang,TargetLang,TranslatorUserId,TranslationDate,QualityScore,WordCount,CharCount,MachineTranslatedFlag,ReviewStatus,ReviewerUserId,ReviewDate,Comments,ProjectId,Version,SourceChecksum,TargetChecksum,ReviewNotes,PublishFlag) VALUES (1,1001,'Post','en','es',23,'2025-11-30 14:05:00',92,350,2100,0,'Approved',45,'2025-11-30 16:00:00','Good translation',5,2,'abc123','def456','No issues',1);
INSERT INTO content_translation (Id,ContentId,ContentType,SourceLang,TargetLang,TranslatorUserId,TranslationDate,QualityScore,WordCount,CharCount,MachineTranslatedFlag,ReviewStatus,ReviewerUserId,ReviewDate,Comments,ProjectId,Version,SourceChecksum,TargetChecksum,ReviewNotes,PublishFlag) VALUES (2,1002,'Comment','en','fr',27,'2025-12-01 09:15:00',85,45,300,1,'Pending',NULL,NULL,'Machine generated, needs review',5,1,'ghi789','jkl012','Check terminology',0);
INSERT INTO content_translation (Id,ContentId,ContentType,SourceLang,TargetLang,TranslatorUserId,TranslationDate,QualityScore,WordCount,CharCount,MachineTranslatedFlag,ReviewStatus,ReviewerUserId,ReviewDate,Comments,ProjectId,Version,SourceChecksum,TargetChecksum,ReviewNotes,PublishFlag) VALUES (3,1003,'TagWiki','en','de',30,'2025-12-02 11:20:00',78,120,800,0,'Rejected',52,'2025-12-02 12:00:00','Inaccurate terms',5,1,'mno345','pqr678','Revise translation',0);

-- Advertising campaign definition
CREATE TABLE advertisement_campaign
(
    Id INTEGER NOT NULL PRIMARY KEY,
    CampaignName TEXT NULL,
    StartDate DATE NULL,
    EndDate DATE NULL,
    Budget INTEGER NULL,
    Spend INTEGER NULL,
    Impressions INTEGER NULL,
    Clicks INTEGER NULL,
    Conversions INTEGER NULL,
    CostPerClick REAL NULL,
    CostPerConversion REAL NULL,
    TargetAudience TEXT NULL,
    Platform TEXT NULL,
    AdFormat TEXT NULL,
    CreativeId INTEGER NULL,
    LandingPageUrl TEXT NULL,
    TrafficSource TEXT NULL,
    Status TEXT NULL,
    CreatedByUserId INTEGER NULL,
    CreatedDate DATETIME NULL,
    UpdatedByUserId INTEGER NULL,
    UpdatedDate DATETIME NULL
);
INSERT INTO advertisement_campaign (Id,CampaignName,StartDate,EndDate,Budget,Spend,Impressions,Clicks,Conversions,CostPerClick,CostPerConversion,TargetAudience,Platform,AdFormat,CreativeId,LandingPageUrl,TrafficSource,Status,CreatedByUserId,CreatedDate,UpdatedByUserId,UpdatedDate) VALUES (1,'WinterSale','2025-12-01','2026-01-31',50000,12000,250000,3400,210,3.53,57.14,'Adults 25-45','Web','Banner',101,'https://example.com/winter','Direct','Active',12,'2025-11-20 10:00:00',14,'2025-12-02 09:30:00');
INSERT INTO advertisement_campaign (Id,CampaignName,StartDate,EndDate,Budget,Spend,Impressions,Clicks,Conversions,CostPerClick,CostPerConversion,TargetAudience,Platform,AdFormat,CreativeId,LandingPageUrl,TrafficSource,Status,CreatedByUserId,CreatedDate,UpdatedByUserId,UpdatedDate) VALUES (2,'SpringLaunch','2026-03-01','2026-04-30',75000,30000,400000,5200,350,5.77,85.71,'Professionals','Mobile','Video',102,'https://example.com/spring','Referral','Planned',15,'2025-12-15 14:45:00',NULL,NULL);
INSERT INTO advertisement_campaign (Id,CampaignName,StartDate,EndDate,Budget,Spend,Impressions,Clicks,Conversions,CostPerClick,CostPerConversion,TargetAudience,Platform,AdFormat,CreativeId,LandingPageUrl,TrafficSource,Status,CreatedByUserId,CreatedDate,UpdatedByUserId,UpdatedDate) VALUES (3,'SummerPromo','2026-06-01','2026-08-31',60000,0,0,0,0,NULL,NULL,'Students','Web','Native',103,'https://example.com/summer','Organic','Draft',18,'2025-12-20 08:20:00',NULL,NULL);

-- API access logging
CREATE TABLE api_access_log
(
    Id INTEGER NOT NULL PRIMARY KEY,
    AccessTimestamp DATETIME NULL,
    ApiKeyId INTEGER NULL,
    Endpoint TEXT NULL,
    HttpMethod TEXT NULL,
    ResponseStatus INTEGER NULL,
    ResponseTimeMs INTEGER NULL,
    CallerIp TEXT NULL,
    UserAgent TEXT NULL,
    Referrer TEXT NULL,
    RequestPayloadHash TEXT NULL,
    ResponsePayloadHash TEXT NULL,
    RateLimitBucket TEXT NULL,
    RateLimitRemaining INTEGER NULL,
    RateLimitReset DATETIME NULL,
    AuthSuccessFlag INTEGER NULL,
    ErrorCode INTEGER NULL,
    ErrorMessage TEXT NULL,
    SessionToken TEXT NULL,
    GeoLocation TEXT NULL,
    DeviceType TEXT NULL
);
INSERT INTO api_access_log (Id,AccessTimestamp,ApiKeyId,Endpoint,HttpMethod,ResponseStatus,ResponseTimeMs,CallerIp,UserAgent,Referrer,RequestPayloadHash,ResponsePayloadHash,RateLimitBucket,RateLimitRemaining,RateLimitReset,AuthSuccessFlag,ErrorCode,ErrorMessage,SessionToken,GeoLocation,DeviceType) VALUES (1,'2025-12-01 07:45:10',2001,'/v1/posts','GET',200,124,'203.0.113.5','Mozilla/5.0','https://example.com','hashreq1','hashresp1','bucketA',98,'2025-12-01 08:00:00',1,NULL,NULL,'sessTokenA','US','Desktop');
INSERT INTO api_access_log (Id,AccessTimestamp,ApiKeyId,Endpoint,HttpMethod,ResponseStatus,ResponseTimeMs,CallerIp,UserAgent,Referrer,RequestPayloadHash,ResponsePayloadHash,RateLimitBucket,RateLimitRemaining,RateLimitReset,AuthSuccessFlag,ErrorCode,ErrorMessage,SessionToken,GeoLocation,DeviceType) VALUES (2,'2025-12-01 08:10:22',2002,'/v1/comments','POST',201,256,'198.51.100.12','curl/7.68.0','https://app.example.com','hashreq2','hashresp2','bucketB',45,'2025-12-01 09:00:00',1,NULL,NULL,'sessTokenB','CA','Mobile');
INSERT INTO api_access_log (Id,AccessTimestamp,ApiKeyId,Endpoint,HttpMethod,ResponseStatus,ResponseTimeMs,CallerIp,UserAgent,Referrer,RequestPayloadHash,ResponsePayloadHash,RateLimitBucket,RateLimitRemaining,RateLimitReset,AuthSuccessFlag,ErrorCode,ErrorMessage,SessionToken,GeoLocation,DeviceType) VALUES (3,'2025-12-01 09:30:55',2003,'/v1/users','DELETE',403,87,'192.0.2.45','PostmanRuntime/7.28.4','https://admin.example.com','hashreq3','hashresp3','bucketC',20,'2025-12-01 10:00:00',0,403,'Forbidden','sessTokenC','GB','Tablet');

-- Scheduled job execution history
CREATE TABLE scheduled_job_history
(
    Id INTEGER NOT NULL PRIMARY KEY,
    JobName TEXT NULL,
    ScheduledRunTime DATETIME NULL,
    ActualStartTime DATETIME NULL,
    ActualEndTime DATETIME NULL,
    DurationSeconds INTEGER NULL,
    Status TEXT NULL,
    TriggeredBy TEXT NULL,
    RetryCount INTEGER NULL,
    MaxRetries INTEGER NULL,
    LastErrorMessage TEXT NULL,
    NextRunTime DATETIME NULL,
    JobPriority INTEGER NULL,
    CpuUsagePercent REAL NULL,
    MemoryUsageMb INTEGER NULL,
    DiskIoMb REAL NULL,
    NetworkIoMb REAL NULL,
    LogFilePath TEXT NULL,
    OwnerUserId INTEGER NULL,
    CreatedDate DATETIME NULL
);
INSERT INTO scheduled_job_history (Id,JobName,ScheduledRunTime,ActualStartTime,ActualEndTime,DurationSeconds,Status,TriggeredBy,RetryCount,MaxRetries,LastErrorMessage,NextRunTime,JobPriority,CpuUsagePercent,MemoryUsageMb,DiskIoMb,NetworkIoMb,LogFilePath,OwnerUserId,CreatedDate) VALUES (1,'DailyStats','2025-12-01 02:00:00','2025-12-01 02:00:05','2025-12-01 02:01:20',75,'Success','Scheduler',0,3,NULL,'2025-12-02 02:00:00',5,12.5,256,1.2,0.8,'/var/log/jobs/dailystats.log',10,'2025-11-15 09:30:00');
INSERT INTO scheduled_job_history (Id,JobName,ScheduledRunTime,ActualStartTime,ActualEndTime,DurationSeconds,Status,TriggeredBy,RetryCount,MaxRetries,LastErrorMessage,NextRunTime,JobPriority,CpuUsagePercent,MemoryUsageMb,DiskIoMb,NetworkIoMb,LogFilePath,OwnerUserId,CreatedDate) VALUES (2,'CacheRefresh','2025-12-01 04:00:00','2025-12-01 04:00:03','2025-12-01 04:00:25',22,'Failed','Scheduler',1,3,'Timeout error','2025-12-01 04:10:00',4,45.0,512,2.5,1.0,'/var/log/jobs/cacherefresh.log',12,'2025-11-20 11:00:00');
INSERT INTO scheduled_job_history (Id,JobName,ScheduledRunTime,ActualStartTime,ActualEndTime,DurationSeconds,Status,TriggeredBy,RetryCount,MaxRetries,LastErrorMessage,NextRunTime,JobPriority,CpuUsagePercent,MemoryUsageMb,DiskIoMb,NetworkIoMb,LogFilePath,OwnerUserId,CreatedDate) VALUES (3,'EmailDigest','2025-12-01 06:00:00','2025-12-01 06:00:10','2025-12-01 06:02:45',155,'Success','Scheduler',0,2,NULL,'2025-12-02 06:00:00',3,30.2,128,0.7,0.3,'/var/log/jobs/emaildigest.log',14,'2025-11-25 13:45:00');

-- Data export request tracking
CREATE TABLE data_export_requests
(
    Id INTEGER NOT NULL PRIMARY KEY,
    RequestorUserId INTEGER NULL,
    ExportType TEXT NULL,
    RequestedAt DATETIME NULL,
    CompletedAt DATETIME NULL,
    Status TEXT NULL,
    FilePath TEXT NULL,
    FileSizeBytes INTEGER NULL,
    RowCount INTEGER NULL,
    ColumnCount INTEGER NULL,
    CompressionType TEXT NULL,
    EncryptionKeyId INTEGER NULL,
    NotificationSentFlag INTEGER NULL,
    NotificationEmail TEXT NULL,
    ExpirationDate DATETIME NULL,
    DownloadToken TEXT NULL,
    Checksum TEXT NULL,
    FilterExpression TEXT NULL,
    SortOrder TEXT NULL,
    Notes TEXT NULL
);
INSERT INTO data_export_requests (Id,RequestorUserId,ExportType,RequestedAt,CompletedAt,Status,FilePath,FileSizeBytes,RowCount,ColumnCount,CompressionType,EncryptionKeyId,NotificationSentFlag,NotificationEmail,ExpirationDate,DownloadToken,Checksum,FilterExpression,SortOrder,Notes) VALUES (1,42,'CSV','2025-12-01 08:00:00','2025-12-01 08:05:00','Completed','/exports/export1.csv',1048576,5000,20,'gzip',7,1,'user42@example.com','2025-12-08 08:00:00','token123','abcde12345','Score>100','Score DESC','Monthly export');
INSERT INTO data_export_requests (Id,RequestorUserId,ExportType,RequestedAt,CompletedAt,Status,FilePath,FileSizeBytes,RowCount,ColumnCount,CompressionType,EncryptionKeyId,NotificationSentFlag,NotificationEmail,ExpirationDate,DownloadToken,Checksum,FilterExpression,SortOrder,Notes) VALUES (2,55,'JSON','2025-12-02 09:30:00','2025-12-02 09:45:00','Completed','/exports/export2.json',2097152,12000,25,'zip',9,1,'user55@example.com','2025-12-09 09:30:00','token456','fghij67890','Tag=python','CreatedAt ASC','Weekly export');
INSERT INTO data_export_requests (Id,RequestorUserId,ExportType,RequestedAt,CompletedAt,Status,FilePath,FileSizeBytes,RowCount,ColumnCount,CompressionType,EncryptionKeyId,NotificationSentFlag,NotificationEmail,ExpirationDate,DownloadToken,Checksum,FilterExpression,SortOrder,Notes) VALUES (3,78,'XML','2025-12-03 10:15:00',NULL,'Pending','/exports/export3.xml',0,0,0,NULL,NULL,0,'user78@example.com','2025-12-10 10:15:00','token789','', 'PostTypeId=2','Id ASC','Ad-hoc request');

-- Feature flag change audit
CREATE TABLE feature_flag_audit
(
    Id INTEGER NOT NULL PRIMARY KEY,
    FlagName TEXT NULL,
    ChangeTimestamp DATETIME NULL,
    ChangedByUserId INTEGER NULL,
    OldValue TEXT NULL,
    NewValue TEXT NULL,
    ChangeReason TEXT NULL,
    Environment TEXT NULL,
    ServiceName TEXT NULL,
    RolloutPercentage INTEGER NULL,
    IsEnabled INTEGER NULL,
    Comment TEXT NULL,
    DeploymentId TEXT NULL,
    ReleaseVersion TEXT NULL,
    AffectedRegions TEXT NULL,
    FlagType TEXT NULL,
    CreatorUserId INTEGER NULL,
    CreatedAt DATETIME NULL,
    UpdatedByUserId INTEGER NULL,
    UpdatedAt DATETIME NULL
);
INSERT INTO feature_flag_audit (Id,FlagName,ChangeTimestamp,ChangedByUserId,OldValue,NewValue,ChangeReason,Environment,ServiceName,RolloutPercentage,IsEnabled,Comment,DeploymentId,ReleaseVersion,AffectedRegions,FlagType,CreatorUserId,CreatedAt,UpdatedByUserId,UpdatedAt) VALUES (1,'new_search_ui','2025-11-20 12:00:00',31,'false','true','Beta test','staging','search','20',1,'Enable for early users','dep001','v2.1','US,CA','boolean',31,'2025-11-15 09:00:00',32,'2025-11-20 12:00:00');
INSERT INTO feature_flag_audit (Id,FlagName,ChangeTimestamp,ChangedByUserId,OldValue,NewValue,ChangeReason,Environment,ServiceName,RolloutPercentage,IsEnabled,Comment,DeploymentId,ReleaseVersion,AffectedRegions,FlagType,CreatorUserId,CreatedAt,UpdatedByUserId,UpdatedAt) VALUES (2,'dark_mode','2025-12-01 08:30:00',45,'false','true','User request','production','ui','100',1,'Mandatory rollout','dep002','v3.0','EU,APAC','boolean',45,'2025-12-01 08:00:00',46,'2025-12-01 08:30:00');
INSERT INTO feature_flag_audit (Id,FlagName,ChangeTimestamp,ChangedByUserId,OldValue,NewValue,ChangeReason,Environment,ServiceName,RolloutPercentage,IsEnabled,Comment,DeploymentId,ReleaseVersion,AffectedRegions,FlagType,CreatorUserId,CreatedAt,UpdatedByUserId,UpdatedAt) VALUES (3,'experimental_algo','2025-12-05 14:45:00',58,'off','on','Performance test','development','recommendation','0',0,'Not ready for production','dep003','v0.9','NA','string',58,'2025-12-04 16:20:00',59,'2025-12-05 14:45:00');

-- Search index statistics
CREATE TABLE search_index_stats
(
    Id INTEGER NOT NULL PRIMARY KEY,
    IndexName TEXT NULL,
    DocumentCount INTEGER NULL,
    TermCount INTEGER NULL,
    AvgDocLength REAL NULL,
    IndexSizeMb REAL NULL,
    LastUpdated DATETIME NULL,
    CrawlStartTime DATETIME NULL,
    CrawlEndTime DATETIME NULL,
    CrawlDurationSec INTEGER NULL,
    ErrorsEncountered INTEGER NULL,
    PendingDocs INTEGER NULL,
    QueueLength INTEGER NULL,
    RefreshRateSec INTEGER NULL,
    ShardCount INTEGER NULL,
    ReplicaCount INTEGER NULL,
    AllocationRegion TEXT NULL,
    CompressionRatio REAL NULL,
    SegmentCount INTEGER NULL,
    MergeOps INTEGER NULL
);
INSERT INTO search_index_stats (Id,IndexName,DocumentCount,TermCount,AvgDocLength,IndexSizeMb,LastUpdated,CrawlStartTime,CrawlEndTime,CrawlDurationSec,ErrorsEncountered,PendingDocs,QueueLength,RefreshRateSec,ShardCount,ReplicaCount,AllocationRegion,CompressionRatio,SegmentCount,MergeOps) VALUES (1,'posts_index',1500000,35000000,125.4,8200.5,'2025-12-01 03:00:00','2025-12-01 02:00:00','2025-12-01 02:45:00',2700,0,0,5,30,2,'us-east',1.8,150,12);
INSERT INTO search_index_stats (Id,IndexName,DocumentCount,TermCount,AvgDocLength,IndexSizeMb,LastUpdated,CrawlStartTime,CrawlEndTime,CrawlDurationSec,ErrorsEncountered,PendingDocs,QueueLength,RefreshRateSec,ShardCount,ReplicaCount,AllocationRegion,CompressionRatio,SegmentCount,MergeOps) VALUES (2,'users_index',500000,8000000,78.9,2100.3,'2025-12-01 04:00:00','2025-12-01 03:30:00','2025-12-01 03:50:00',1200,2,50,10,10,20,1,'eu-west',2.1,80,5);
INSERT INTO search_index_stats (Id,IndexName,DocumentCount,TermCount,AvgDocLength,IndexSizeMb,LastUpdated,CrawlStartTime,CrawlEndTime,CrawlDurationSec,ErrorsEncountered,PendingDocs,QueueLength,RefreshRateSec,ShardCount,ReplicaCount,AllocationRegion,CompressionRatio,SegmentCount,MergeOps) VALUES (3,'tags_index',20000,500000,10.2,150.7,'2025-12-01 05:00:00','2025-12-01 04:45:00','2025-12-01 04:55:00',600,0,0,2,5,0,'ap-southeast',1.5,25,2);

-- Email campaign performance metrics
CREATE TABLE email_campaign_metrics
(
    Id INTEGER NOT NULL PRIMARY KEY,
    CampaignId INTEGER NULL,
    SentDate DATE NULL,
    OpenCount INTEGER NULL,
    ClickCount INTEGER NULL,
    BounceCount INTEGER NULL,
    UnsubscribeCount INTEGER NULL,
    SpamReportCount INTEGER NULL,
    DeliveryRatePercent REAL NULL,
    OpenRatePercent REAL NULL,
    ClickThroughRatePercent REAL NULL,
    AvgOpenDelaySec INTEGER NULL,
    AvgClickDelaySec INTEGER NULL,
    DeviceDesktop INTEGER NULL,
    DeviceMobile INTEGER NULL,
    DeviceTablet INTEGER NULL,
    CountryUS INTEGER NULL,
    CountryCA INTEGER NULL,
    CountryGB INTEGER NULL,
    CountryAU INTEGER NULL
);
INSERT INTO email_campaign_metrics (Id,CampaignId,SentDate,OpenCount,ClickCount,BounceCount,UnsubscribeCount,SpamReportCount,DeliveryRatePercent,OpenRatePercent,ClickThroughRatePercent,AvgOpenDelaySec,AvgClickDelaySec,DeviceDesktop,DeviceMobile,DeviceTablet,CountryUS,CountryCA,CountryGB,CountryAU) VALUES (1,101,'2025-12-01',1200,300,20,5,2,98.5,80.0,25.0,180,45,900,250,50,800,150,100,50);
INSERT INTO email_campaign_metrics (Id,CampaignId,SentDate,OpenCount,ClickCount,BounceCount,UnsubscribeCount,SpamReportCount,DeliveryRatePercent,OpenRatePercent,ClickThroughRatePercent,AvgOpenDelaySec,AvgClickDelaySec,DeviceDesktop,DeviceMobile,DeviceTablet,CountryUS,CountryCA,CountryGB,CountryAU) VALUES (2,102,'2025-12-02',800,120,15,3,1,97.0,70.0,15.0,210,60,500,200,30,600,100,80,40);
INSERT INTO email_campaign_metrics (Id,CampaignId,SentDate,OpenCount,ClickCount,BounceCount,UnsubscribeCount,SpamReportCount,DeliveryRatePercent,OpenRatePercent,ClickThroughRatePercent,AvgOpenDelaySec,AvgClickDelaySec,DeviceDesktop,DeviceMobile,DeviceTablet,CountryUS,CountryCA,CountryGB,CountryAU) VALUES (3,103,'2025-12-03',1500,450,25,8,3,99.0,85.0,30.0,150,35,1000,300,70,950,200,150,70);

-- User feedback records
CREATE TABLE user_feedback
(
    Id INTEGER NOT NULL PRIMARY KEY,
    FeedbackId TEXT NULL,
    UserId INTEGER NULL,
    FeedbackType TEXT NULL,
    SubmittedAt DATETIME NULL,
    Rating INTEGER NULL,
    Comments TEXT NULL,
    Category TEXT NULL,
    Subcategory TEXT NULL,
    Platform TEXT NULL,
    AppVersion TEXT NULL,
    DeviceModel TEXT NULL,
    OsVersion TEXT NULL,
    NetworkType TEXT NULL,
    Locale TEXT NULL,
    ResolvedFlag INTEGER NULL,
    ResolverUserId INTEGER NULL,
    ResolvedAt DATETIME NULL,
    FollowUpRequiredFlag INTEGER NULL,
    FollowUpDueDate DATE NULL
);
INSERT INTO user_feedback (Id,FeedbackId,UserId,FeedbackType,SubmittedAt,Rating,Comments,Category,Subcategory,Platform,AppVersion,DeviceModel,OsVersion,NetworkType,Locale,ResolvedFlag,ResolverUserId,ResolvedAt,FollowUpRequiredFlag,FollowUpDueDate) VALUES (1,'fb001',42,'Bug','2025-11-28 14:20:00',2,'App crashes on login','Stability','Crash','Web','1.4.2','N/A','Windows 10','WiFi','en-US',0,NULL,NULL,1,'2025-12-10');
INSERT INTO user_feedback (Id,FeedbackId,UserId,FeedbackType,SubmittedAt,Rating,Comments,Category,Subcategory,Platform,AppVersion,DeviceModel,OsVersion,NetworkType,Locale,ResolvedFlag,ResolverUserId,ResolvedAt,FollowUpRequiredFlag,FollowUpDueDate) VALUES (2,'fb002',55,'FeatureRequest','2025-12-01 09:45:00',5,'Add dark mode support','Usability','Theme','Mobile','2.0.0','Pixel 6','Android 13','4G','en-GB',1,33,'2025-12-02 10:00:00',0,NULL);
INSERT INTO user_feedback (Id,FeedbackId,UserId,FeedbackType,SubmittedAt,Rating,Comments,Category,Subcategory,Platform,AppVersion,DeviceModel,OsVersion,NetworkType,Locale,ResolvedFlag,ResolverUserId,ResolvedAt,FollowUpRequiredFlag,FollowUpDueDate) VALUES (3,'fb003',78,'General','2025-12-03 11:30:00',4,'Great experience, but loading is slow','Performance','Latency','Web','1.4.2','N/A','macOS 12','Ethernet','en-AU',0,NULL,NULL,1,'2025-12-15');