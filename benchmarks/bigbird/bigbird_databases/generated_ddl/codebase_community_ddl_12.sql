-- Knowledge graph nodes representing abstract entities linked to the platform content
CREATE TABLE knowledge_graph_nodes
(
    NodeId                INTEGER      NOT NULL PRIMARY KEY,
    NodeType              TEXT,
    Label                 TEXT,
    Description           TEXT,
    CreatedDate           DATETIME,
    UpdatedDate           DATETIME,
    SourceSystem          TEXT,
    ConfidenceScore       DECIMAL(5,2),
    IsActive              BOOLEAN,
    ParentNodeId          INTEGER,
    ChildCount            INTEGER,
    RelatedEntityCount    INTEGER,
    MetadataJson          TEXT,
    OwnerUserId           INTEGER,
    LastEditorUserId      INTEGER,
    LastEditDate          DATETIME,
    VersionNumber         INTEGER,
    Tags                  TEXT,
    LanguageCode          TEXT,
    ExternalReferenceId   TEXT
);

INSERT INTO knowledge_graph_nodes (NodeId,NodeType,Label,Description,CreatedDate,UpdatedDate,SourceSystem,ConfidenceScore,IsActive,ParentNodeId,ChildCount,RelatedEntityCount,MetadataJson,OwnerUserId,LastEditorUserId,LastEditDate,VersionNumber,Tags,LanguageCode,ExternalReferenceId)
VALUES (1,'Concept','GraphNodeA','First test node','2023-01-01 00:00:00','2023-01-02 00:00:00','systemA',99.99,1,NULL,3,5,'{}',10,20,'2023-01-02 00:00:00',1,'tag1,tag2','en','REF001');

INSERT INTO knowledge_graph_nodes (NodeId,NodeType,Label,Description,CreatedDate,UpdatedDate,SourceSystem,ConfidenceScore,IsActive,ParentNodeId,ChildCount,RelatedEntityCount,MetadataJson,OwnerUserId,LastEditorUserId,LastEditDate,VersionNumber,Tags,LanguageCode,ExternalReferenceId)
VALUES (2,'Entity','GraphNodeB','Second test node','2023-02-01 00:00:00','2023-02-05 00:00:00','systemB',85.50,1,1,0,2,'{}',11,21,'2023-02-05 00:00:00',2,'tag3','fr','REF002');

INSERT INTO knowledge_graph_nodes (NodeId,NodeType,Label,Description,CreatedDate,UpdatedDate,SourceSystem,ConfidenceScore,IsActive,ParentNodeId,ChildCount,RelatedEntityCount,MetadataJson,OwnerUserId,LastEditorUserId,LastEditDate,VersionNumber,Tags,LanguageCode,ExternalReferenceId)
VALUES (3,'Concept','GraphNodeC','Third test node','2023-03-01 00:00:00','2023-03-01 00:00:00','systemC',70.00,0,NULL,1,0,'{}',12,22,'2023-03-01 00:00:00',1,'tag4,tag5','es','REF003');

-- Metrics aggregated per API consumer (e.g., third‑party apps)
CREATE TABLE api_consumer_metrics
(
    ConsumerId               INTEGER      NOT NULL PRIMARY KEY,
    ConsumerName             TEXT,
    ApiKeyId                 INTEGER,
    RequestsLastHour         INTEGER,
    RequestsLastDay          INTEGER,
    AverageLatencyMs         DECIMAL(8,2),
    ErrorRatePercent         DECIMAL(5,2),
    DataTransferMB           DECIMAL(10,2),
    IsActive                 BOOLEAN,
    RegistrationDate         DATETIME,
    LastSeenDate             DATETIME,
    QuotaLimit               INTEGER,
    QuotaUsed                INTEGER,
    PlanType                 TEXT,
    ContactEmail             TEXT,
    SupportTier              TEXT,
    AllowedEndpoints         TEXT,
    RateLimitPerMinute       INTEGER,
    BurstCapacity            INTEGER,
    Notes                    TEXT
);

INSERT INTO api_consumer_metrics (ConsumerId,ConsumerName,ApiKeyId,RequestsLastHour,RequestsLastDay,AverageLatencyMs,ErrorRatePercent,DataTransferMB,IsActive,RegistrationDate,LastSeenDate,QuotaLimit,QuotaUsed,PlanType,ContactEmail,SupportTier,AllowedEndpoints,RateLimitPerMinute,BurstCapacity,Notes)
VALUES (1001,'AppAlpha',2001,150,3400,120.50,0.75,500.25,1,'2022-05-01 00:00:00','2023-12-31 12:00:00',100000,45230,'Premium','alpha@example.com','Gold','/posts,/users',5000,1000,'First beta customer');

INSERT INTO api_consumer_metrics (ConsumerId,ConsumerName,ApiKeyId,RequestsLastHour,RequestsLastDay,AverageLatencyMs,ErrorRatePercent,DataTransferMB,IsActive,RegistrationDate,LastSeenDate,QuotaLimit,QuotaUsed,PlanType,ContactEmail,SupportTier,AllowedEndpoints,RateLimitPerMinute,BurstCapacity,Notes)
VALUES (1002,'AppBeta',2002,80,1900,200.00,1.20,300.10,1,'2023-01-15 00:00:00','2023-12-30 08:00:00',50000,21000,'Standard','beta@example.com','Silver','/search,/tags',3000,500,'Recent upgrade');

INSERT INTO api_consumer_metrics (ConsumerId,ConsumerName,ApiKeyId,RequestsLastHour,RequestsLastDay,AverageLatencyMs,ErrorRatePercent,DataTransferMB,IsActive,RegistrationDate,LastSeenDate,QuotaLimit,QuotaUsed,PlanType,ContactEmail,SupportTier,AllowedEndpoints,RateLimitPerMinute,BurstCapacity,Notes)
VALUES (1003,'AppGamma',2003,20,400,350.75,2.50,120.00,0,'2021-11-20 00:00:00','2022-10-10 09:30:00',20000,18000,'Free','gamma@example.com','Bronze','/posts',1000,200,'Deprecated');

-- Per‑user preferences for content filtering and personalization
CREATE TABLE user_content_preferences
(
    PreferenceId          INTEGER      NOT NULL PRIMARY KEY,
    UserId                INTEGER,
    PreferredLanguage    TEXT,
    HideMatureContent    BOOLEAN,
    ShowClosedPosts      BOOLEAN,
    TagFilterMode        TEXT,
    IncludedTags         TEXT,
    ExcludedTags         TEXT,
    MinReputation        INTEGER,
    MaxScoreThreshold    INTEGER,
    NotificationFrequency TEXT,
    EmailDigestEnabled   BOOLEAN,
    PushEnabled          BOOLEAN,
    Theme                 TEXT,
    FontSize              INTEGER,
    LayoutStyle           TEXT,
    SaveSearchesEnabled  BOOLEAN,
    SavedSearchCount     INTEGER,
    SidebarWidgets       TEXT,
    CreatedAt            DATETIME,
    UpdatedAt            DATETIME,
    Remarks               TEXT
);

INSERT INTO user_content_preferences (PreferenceId,UserId,PreferredLanguage,HideMatureContent,ShowClosedPosts,TagFilterMode,IncludedTags,ExcludedTags,MinReputation,MaxScoreThreshold,NotificationFrequency,EmailDigestEnabled,PushEnabled,Theme,FontSize,LayoutStyle,SaveSearchesEnabled,SavedSearchCount,SidebarWidgets,CreatedAt,UpdatedAt,Remarks)
VALUES (1,10,'en',1,0,'whitelist','sql,python','java',100,10,'daily',1,1,'dark',14,'grid',1,5,'recent,stats','2023-01-01 00:00:00','2023-06-01 12:00:00','Initial setup');

INSERT INTO user_content_preferences (PreferenceId,UserId,PreferredLanguage,HideMatureContent,ShowClosedPosts,TagFilterMode,IncludedTags,ExcludedTags,MinReputation,MaxScoreThreshold,NotificationFrequency,EmailDigestEnabled,PushEnabled,Theme,FontSize,LayoutStyle,SaveSearchesEnabled,SavedSearchCount,SidebarWidgets,CreatedAt,UpdatedAt,Remarks)
VALUES (2,11,'fr',0,1,'blacklist','','php,html',0,5,'weekly',0,1,'light',12,'list',0,0,'','2023-02-15 08:30:00','2023-07-20 09:45:00','User prefers all content');

INSERT INTO user_content_preferences (PreferenceId,UserId,PreferredLanguage,HideMatureContent,ShowClosedPosts,TagFilterMode,IncludedTags,ExcludedTags,MinReputation,MaxScoreThreshold,NotificationFrequency,EmailDigestEnabled,PushEnabled,Theme,FontSize,LayoutStyle,SaveSearchesEnabled,SavedSearchCount,SidebarWidgets,CreatedAt,UpdatedAt,Remarks)
VALUES (3,12,'es',1,1,'whitelist','data-science','games',500,20,'none',0,0,'dark',16,'compact',1,2,'trending,bookmarks','2023-03-10 14:20:00','2023-08-01 16:00:00','Low notification preference');

-- Placement records linking ads to geographic regions
CREATE TABLE regional_ad_placements
(
    PlacementId          INTEGER      NOT NULL PRIMARY KEY,
    AdCampaignId        INTEGER,
    RegionCode          TEXT,
    PlacementDate       DATE,
    ImpressionsGoal     INTEGER,
    ClicksGoal          INTEGER,
    BudgetUsd           DECIMAL(12,2),
    IsActive            BOOLEAN,
    TargetDeviceType    TEXT,
    FrequencyCap        INTEGER,
    StartTimeLocal      TIME,
    EndTimeLocal        TIME,
    DayOfWeekMask       TEXT,
    CPMLimitUsd         DECIMAL(8,2),
    ViewabilityScore    DECIMAL(5,2),
    CreatedByUserId     INTEGER,
    ApprovedByUserId    INTEGER,
    ApprovalDate        DATETIME,
    Notes               TEXT,
    LastModifiedDate    DATETIME,
    VersionNumber       INTEGER,
    GeoTargetRadiusKm   INTEGER
);

INSERT INTO regional_ad_placements (PlacementId,AdCampaignId,RegionCode,PlacementDate,ImpressionsGoal,ClicksGoal,BudgetUsd,IsActive,TargetDeviceType,FrequencyCap,StartTimeLocal,EndTimeLocal,DayOfWeekMask,CPMLimitUsd,ViewabilityScore,CreatedByUserId,ApprovedByUserId,ApprovalDate,Notes,LastModifiedDate,VersionNumber,GeoTargetRadiusKm)
VALUES (5001,3001,'US-CA','2023-09-01',100000,2000,15000.00,1,'mobile',5,'08:00:00','20:00:00','MonTueWedThuFri',0.50,85.20,10,20,'2023-08-28 10:15:00','Initial placement','2023-09-01 09:00:00',1,50);

INSERT INTO regional_ad_placements (PlacementId,AdCampaignId,RegionCode,PlacementDate,ImpressionsGoal,ClicksGoal,BudgetUsd,IsActive,TargetDeviceType,FrequencyCap,StartTimeLocal,EndTimeLocal,DayOfWeekMask,CPMLimitUsd,ViewabilityScore,CreatedByUserId,ApprovedByUserId,ApprovalDate,Notes,LastModifiedDate,VersionNumber,GeoTargetRadiusKm)
VALUES (5002,3002,'GB-LND','2023-10-15',50000,800,8000.00,1,'desktop',3,'09:00:00','18:00:00','MonWedFri',0.40,78.50,11,21,'2023-10-10 14:30:00','Weekend boost','2023-10-15 08:45:00',1,30);

INSERT INTO regional_ad_placements (PlacementId,AdCampaignId,RegionCode,PlacementDate,ImpressionsGoal,ClicksGoal,BudgetUsd,IsActive,TargetDeviceType,FrequencyCap,StartTimeLocal,EndTimeLocal,DayOfWeekMask,CPMLimitUsd,ViewabilityScore,CreatedByUserId,ApprovedByUserId,ApprovalDate,Notes,LastModifiedDate,VersionNumber,GeoTargetRadiusKm)
VALUES (5003,3003,'AU-NSW','2023-11-05',75000,1200,12000.00,0,'tablet',4,'07:00:00','22:00:00','TueThuSat',0.45,80.00,12,22,'2023-11-01 11:20:00','Paused for holidays','2023-11-05 10:10:00',2,40);

-- Aggregated usage statistics per device type
CREATE TABLE device_usage_stats
(
    StatId                INTEGER      NOT NULL PRIMARY KEY,
    DeviceType            TEXT,
    OSVersion             TEXT,
    CountryCode           TEXT,
    TotalSessions         INTEGER,
    AvgSessionDurationSec INTEGER,
    SessionsPerUserAvg    DECIMAL(6,2),
    UniqueUsers           INTEGER,
    CrashCount            INTEGER,
    ErrorRatePercent      DECIMAL(5,2),
    DataConsumedGb        DECIMAL(10,2),
    LastUpdated           DATETIME,
    FirstSeen             DATETIME,
    IsCurrent             BOOLEAN,
    FirmwareVersion       TEXT,
    BatteryHealthAvg      DECIMAL(5,2),
    NetworkType           TEXT,
    AvgSignalStrengthDbm  INTEGER,
    AppVersion            TEXT,
    InstallSource         TEXT,
    RetentionDay30Percent DECIMAL(5,2)
);

INSERT INTO device_usage_stats (StatId,DeviceType,OSVersion,CountryCode,TotalSessions,AvgSessionDurationSec,SessionsPerUserAvg,UniqueUsers,CrashCount,ErrorRatePercent,DataConsumedGb,LastUpdated,FirstSeen,IsCurrent,FirmwareVersion,BatteryHealthAvg,NetworkType,AvgSignalStrengthDbm,AppVersion,InstallSource,RetentionDay30Percent)
VALUES (9001,'mobile','Android12','US',250000,420,5.2,48000,350,0.14,1800.75,'2023-12-01 00:00:00','2022-01-15 00:00:00',1,'RF123',87.5,'4G',-85,'1.3.0','playstore',45.20);

INSERT INTO device_usage_stats (StatId,DeviceType,OSVersion,CountryCode,TotalSessions,AvgSessionDurationSec,SessionsPerUserAvg,UniqueUsers,CrashCount,ErrorRatePercent,DataConsumedGb,LastUpdated,FirstSeen,IsCurrent,FirmwareVersion,BatteryHealthAvg,NetworkType,AvgSignalStrengthDbm,AppVersion,InstallSource,RetentionDay30Percent)
VALUES (9002,'desktop','Windows10','GB',150000,600,3.8,39000,120,0.08,2500.10,'2023-12-01 00:00:00','2021-05-10 00:00:00',1,'FW456',92.0,'WiFi',-70,'2.0.1','website',62.35);

INSERT INTO device_usage_stats (StatId,DeviceType,OSVersion,CountryCode,TotalSessions,AvgSessionDurationSec,SessionsPerUserAvg,UniqueUsers,CrashCount,ErrorRatePercent,DataConsumedGb,LastUpdated,FirstSeen,IsCurrent,FirmwareVersion,BatteryHealthAvg,NetworkType,AvgSignalStrengthDbm,AppVersion,InstallSource,RetentionDay30Percent)
VALUES (9003,'tablet','iOS14','AU',80000,500,4.1,21000,200,0.12,900.45,'2023-12-01 00:00:00','2022-07-20 00:00:00',1,'iFW789',85.3,'LTE',-78,'3.5.2','appstore',38.90);

-- Activity logs for forum moderators
CREATE TABLE forum_moderator_activity
(
    LogId                INTEGER      NOT NULL PRIMARY KEY,
    ModeratorUserId      INTEGER,
    ActionType           TEXT,
    TargetThreadId       INTEGER,
    TargetPostId         INTEGER,
    ActionTimestamp      DATETIME,
    ReasonCode           TEXT,
    Comments             TEXT,
    DurationSeconds      INTEGER,
    IsEscalated          BOOLEAN,
    EscalationLevel      INTEGER,
    ResolvedByUserId     INTEGER,
    ResolvedTimestamp    DATETIME,
    TagsInvolved         TEXT,
    PriorStatus          TEXT,
    NewStatus            TEXT,
    NotificationSent     BOOLEAN,
    NotificationMethod   TEXT,
    RelatedTicketId      INTEGER,
    AuditTrailId         INTEGER,
    ReviewOutcome        TEXT,
    CreatedAt            DATETIME,
    UpdatedAt            DATETIME
);

INSERT INTO forum_moderator_activity (LogId,ModeratorUserId,ActionType,TargetThreadId,TargetPostId,ActionTimestamp,ReasonCode,Comments,DurationSeconds,IsEscalated,EscalationLevel,ResolvedByUserId,ResolvedTimestamp,TagsInvolved,PriorStatus,NewStatus,NotificationSent,NotificationMethod,RelatedTicketId,AuditTrailId,ReviewOutcome,CreatedAt,UpdatedAt)
VALUES (4001,30,'delete_post',500,1200,'2023-09-15 10:20:00','spam','Removed spam content',30,0,NULL,NULL,NULL,'spam','visible','removed',1,'email',8001,9001,'approved','2023-09-15 10:20:00','2023-09-15 10:20:00');

INSERT INTO forum_moderator_activity (LogId,ModeratorUserId,ActionType,TargetThreadId,TargetPostId,ActionTimestamp,ReasonCode,Comments,DurationSeconds,IsEscalated,EscalationLevel,ResolvedByUserId,ResolvedTimestamp,TagsInvolved,PriorStatus,NewStatus,NotificationSent,NotificationMethod,RelatedTicketId,AuditTrailId,ReviewOutcome,CreatedAt,UpdatedAt)
VALUES (4002,31,'close_thread',501,NULL,'2023-09-16 14:45:00','offtopic','Thread off topic',0,1,2,32,'2023-09-16 15:00:00','offtopic','open','closed',1,'inapp',8002,9002,'rejected','2023-09-16 14:45:00','2023-09-16 15:00:00');

INSERT INTO forum_moderator_activity (LogId,ModeratorUserId,ActionType,TargetThreadId,TargetPostId,ActionTimestamp,ReasonCode,Comments,DurationSeconds,IsEscalated,EscalationLevel,ResolvedByUserId,ResolvedTimestamp,TagsInvolved,PriorStatus,NewStatus,NotificationSent,NotificationMethod,RelatedTicketId,AuditTrailId,ReviewOutcome,CreatedAt,UpdatedAt)
VALUES (4003,32,'edit_post',502,1205,'2023-09-17 09:30:00','policy','Edited to remove policy violation',15,0,NULL,NULL,NULL,'policy','visible','edited',0,'none',NULL,9003,'approved','2023-09-17 09:30:00','2023-09-17 09:30:00');

-- Catalog of archived content items
CREATE TABLE content_archive_catalog
(
    ArchiveId            INTEGER      NOT NULL PRIMARY KEY,
    OriginalContentId    INTEGER,
    ContentType          TEXT,
    ArchiveDate          DATETIME,
    ArchivedByUserId     INTEGER,
    StorageLocation      TEXT,
    FileSizeBytes        INTEGER,
    ChecksumSha256       TEXT,
    RetentionPeriodDays INTEGER,
    IsEncrypted          BOOLEAN,
    EncryptionKeyId      INTEGER,
    AccessLevel          TEXT,
    Tags                 TEXT,
    Description          TEXT,
    OriginalOwnerUserId  INTEGER,
    ArchiveReason        TEXT,
    RestoreRequested     BOOLEAN,
    RestoreRequestedDate DATETIME,
    RestorationStatus    TEXT,
    LastAccessed         DATETIME,
    CreatedAt            DATETIME,
    UpdatedAt            DATETIME
);

INSERT INTO content_archive_catalog (ArchiveId,OriginalContentId,ContentType,ArchiveDate,ArchivedByUserId,StorageLocation,FileSizeBytes,ChecksumSha256,RetentionPeriodDays,IsEncrypted,EncryptionKeyId,AccessLevel,Tags,Description,OriginalOwnerUserId,ArchiveReason,RestoreRequested,RestoreRequestedDate,RestorationStatus,LastAccessed,CreatedAt,UpdatedAt)
VALUES (6001,300,'post','2023-07-01 00:00:00',15,'s3://archive/posts/300','102400','abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890',365,1,5,'public','archived post','10','user request',0,NULL,NULL,NULL,'2023-11-01 12:00:00','2023-07-01 00:00:00','2023-07-01 00:00:00');

INSERT INTO content_archive_catalog (ArchiveId,OriginalContentId,ContentType,ArchiveDate,ArchivedByUserId,StorageLocation,FileSizeBytes,ChecksumSha256,RetentionPeriodDays,IsEncrypted,EncryptionKeyId,AccessLevel,Tags,Description,OriginalOwnerUserId,ArchiveReason,RestoreRequested,RestoreRequestedDate,RestorationStatus,LastAccessed,CreatedAt,UpdatedAt)
VALUES (6002,301,'comment','2023-08-15 00:00:00',16,'s3://archive/comments/301','20480','123456abcdef123456abcdef123456abcdef123456abcdef123456abcdef123456',180,0,NULL,'restricted','archived comment','11','spam cleanup',1,'2023-09-01 09:00:00','pending','2023-09-01 09:00:00','2023-09-01 09:00:00','2023-09-01 09:00:00');

INSERT INTO content_archive_catalog (ArchiveId,OriginalContentId,ContentType,ArchiveDate,ArchivedByUserId,StorageLocation,FileSizeBytes,ChecksumSha256,RetentionPeriodDays,IsEncrypted,EncryptionKeyId,AccessLevel,Tags,Description,OriginalOwnerUserId,ArchiveReason,RestoreRequested,RestoreRequestedDate,RestorationStatus,LastAccessed,CreatedAt,UpdatedAt)
VALUES (6003,302,'badge','2023-09-20 00:00:00',17,'s3://archive/badges/302','5120','fedcba9876543210fedcba9876543210fedcba9876543210fedcba9876543210',730,1,6,'public','archived badge','12','system maintenance',0,NULL,NULL,NULL,'2023-12-01 15:30:00','2023-09-20 00:00:00','2023-09-20 00:00:00');

-- Rate limit settings for external API endpoints
CREATE TABLE external_api_rate_limits
(
    RateLimitId          INTEGER      NOT NULL PRIMARY KEY,
    ApiEndpointId        INTEGER,
    ClientAppId          INTEGER,
    LimitPerMinute       INTEGER,
    BurstCapacity        INTEGER,
    WindowSeconds        INTEGER,
    IsGlobal             BOOLEAN,
    EffectiveFrom        DATETIME,
    EffectiveTo          DATETIME,
    CreatedByUserId      INTEGER,
    CreationDate         DATETIME,
    UpdatedByUserId      INTEGER,
    UpdateDate           DATETIME,
    Remarks              TEXT,
    EnforcementMode      TEXT,
    NotifyOnViolation    BOOLEAN,
    NotificationEmail    TEXT,
    MaxConcurrentCalls   INTEGER,
    AllowedRegions       TEXT,
    BlockedRegions       TEXT,
    MetadataJson         TEXT,
    IsActive             BOOLEAN,
    LastChecked          DATETIME
);

INSERT INTO external_api_rate_limits (RateLimitId,ApiEndpointId,ClientAppId,LimitPerMinute,BurstCapacity,WindowSeconds,IsGlobal,EffectiveFrom,EffectiveTo,CreatedByUserId,CreationDate,UpdatedByUserId,UpdateDate,Remarks,EnforcementMode,NotifyOnViolation,NotificationEmail,MaxConcurrentCalls,AllowedRegions,BlockedRegions,MetadataJson,IsActive,LastChecked)
VALUES (7001,101,2001,5000,1000,60,0,'2023-01-01 00:00:00','2024-01-01 00:00:00',10,'2023-01-01 00:00:00',11,'2023-06-01 12:00:00','Standard limit','hard',1,'admin@example.com',20,'US,CA,GB','CN,RU','{}',1,'2023-12-31 23:59:59');

INSERT INTO external_api_rate_limits (RateLimitId,ApiEndpointId,ClientAppId,LimitPerMinute,BurstCapacity,WindowSeconds,IsGlobal,EffectiveFrom,EffectiveTo,CreatedByUserId,CreationDate,UpdatedByUserId,UpdateDate,Remarks,EnforcementMode,NotifyOnViolation,NotificationEmail,MaxConcurrentCalls,AllowedRegions,BlockedRegions,MetadataJson,IsActive,LastChecked)
VALUES (7002,102,2002,2000,500,60,1,'2023-03-15 00:00:00','2025-03-15 00:00:00',12,'2023-03-15 00:00:00',13,'2023-09-01 09:30:00','Elevated limit for premium clients','soft',0,'',10,'EU','', '{}',1,'2023-12-31 23:59:59');

INSERT INTO external_api_rate_limits (RateLimitId,ApiEndpointId,ClientAppId,LimitPerMinute,BurstCapacity,WindowSeconds,IsGlobal,EffectiveFrom,EffectiveTo,CreatedByUserId,CreationDate,UpdatedByUserId,UpdateDate,Remarks,EnforcementMode,NotifyOnViolation,NotificationEmail,MaxConcurrentCalls,AllowedRegions,BlockedRegions,MetadataJson,IsActive,LastChecked)
VALUES (7003,103,2003,1000,200,60,0,'2022-12-01 00:00:00','2023-12-01 00:00:00',14,'2022-12-01 00:00:00',15,'2023-05-20 14:00:00','Deprecated endpoint limit','hard',1,'ops@example.com',5,'','', '{}',0,'2023-06-01 00:00:00');

-- Enrollments of users in training courses
CREATE TABLE training_course_enrollments
(
    EnrollmentId          INTEGER      NOT NULL PRIMARY KEY,
    UserId               INTEGER,
    CourseId             INTEGER,
    EnrollmentDate       DATETIME,
    CompletionDate       DATETIME,
    CompletionStatus     TEXT,
    ScorePercent         DECIMAL(5,2),
    CertificateIssued    BOOLEAN,
    CertificateId        TEXT,
    InstructorId         INTEGER,
    ProgressPercent      DECIMAL(5,2),
    LastAccessed         DATETIME,
    ModulesCompleted     INTEGER,
    ModulesTotal         INTEGER,
    TimeSpentMinutes     INTEGER,
    IsActive             BOOLEAN,
    RefundRequested      BOOLEAN,
    RefundProcessedDate  DATETIME,
    PaymentMethod        TEXT,
    AmountPaidUsd        DECIMAL(8,2),
    CurrencyCode         TEXT,
    DiscountCode         TEXT,
    Platform             TEXT,
    RatingGiven          INTEGER,
    FeedbackText         TEXT
);

INSERT INTO training_course_enrollments (EnrollmentId,UserId,CourseId,EnrollmentDate,CompletionDate,CompletionStatus,ScorePercent,CertificateIssued,CertificateId,InstructorId,ProgressPercent,LastAccessed,ModulesCompleted,ModulesTotal,TimeSpentMinutes,IsActive,RefundRequested,RefundProcessedDate,PaymentMethod,AmountPaidUsd,CurrencyCode,DiscountCode,Platform,RatingGiven,FeedbackText)
VALUES (8001,10,501,'2023-01-10 00:00:00','2023-02-15 00:00:00','completed',92.50,1,'CERT001',20,100.0,'2023-02-15 00:00:00',10,10,600,0,0,NULL,'creditcard',150.00,'USD','NEWYEAR','web',5,'Great course');

INSERT INTO training_course_enrollments (EnrollmentId,UserId,CourseId,EnrollmentDate,CompletionDate,CompletionStatus,ScorePercent,CertificateIssued,CertificateId,InstructorId,ProgressPercent,LastAccessed,ModulesCompleted,ModulesTotal,TimeSpentMinutes,IsActive,RefundRequested,RefundProcessedDate,PaymentMethod,AmountPaidUsd,CurrencyCode,DiscountCode,Platform,RatingGiven,FeedbackText)
VALUES (8002,11,502,'2023-03-05 00:00:00',NULL,'in_progress',65.00,0,NULL,21,45.0,'2023-04-10 12:00:00',4,8,300,1,0,NULL,'paypal',80.00,'USD','SPRING','mobile',NULL,NULL);

INSERT INTO training_course_enrollments (EnrollmentId,UserId,CourseId,EnrollmentDate,CompletionDate,CompletionStatus,ScorePercent,CertificateIssued,CertificateId,InstructorId,ProgressPercent,LastAccessed,ModulesCompleted,ModulesTotal,TimeSpentMinutes,IsActive,RefundRequested,RefundProcessedDate,PaymentMethod,AmountPaidUsd,CurrencyCode,DiscountCode,Platform,RatingGiven,FeedbackText)
VALUES (8003,12,503,'2023-04-20 00:00:00','2023-05-30 00:00:00','completed',88.00,1,'CERT003',22,100.0,'2023-05-30 00:00:00',12,12,720,0,0,NULL,'banktransfer',200.00,'EUR','SUMMER','web',4,'Informative but needs more examples');

-- Triggers defined for system events
CREATE TABLE system_event_triggers
(
    TriggerId               INTEGER      NOT NULL PRIMARY KEY,
    EventName               TEXT,
    TriggerAction           TEXT,
    ConditionExpression     TEXT,
    IsEnabled               BOOLEAN,
    ExecutionOrder          INTEGER,
    CreatedByUserId         INTEGER,
    CreationDate            DATETIME,
    UpdatedByUserId         INTEGER,
    UpdateDate              DATETIME,
    Description             TEXT,
    RetryCount              INTEGER,
    RetryDelaySeconds       INTEGER,
    NotificationChannel     TEXT,
    NotificationRecipients TEXT,
    LogLevel                TEXT,
    IsTransactional         BOOLEAN,
    TimeoutSeconds          INTEGER,
    RunAsUserId             INTEGER,
    ScheduleCronExpression  TEXT,
    LastExecuted            DATETIME,
    SuccessCount            INTEGER,
    FailureCount            INTEGER,
    LastErrorMessage        TEXT,
    IsSystemDefined        BOOLEAN,
    Tags                    TEXT,
    MetadataJson            TEXT,
    VersionNumber           INTEGER,
    DeactivatedDate         DATETIME
);

INSERT INTO system_event_triggers (TriggerId,EventName,TriggerAction,ConditionExpression,IsEnabled,ExecutionOrder,CreatedByUserId,CreationDate,UpdatedByUserId,UpdateDate,Description,RetryCount,RetryDelaySeconds,NotificationChannel,NotificationRecipients,LogLevel,IsTransactional,TimeoutSeconds,RunAsUserId,ScheduleCronExpression,LastExecuted,SuccessCount,FailureCount,LastErrorMessage,IsSystemDefined,Tags,MetadataJson,VersionNumber,DeactivatedDate)
VALUES (90001,'UserLogin','SendWelcomeEmail','user.IsFirstLogin = true',1,10,1,'2023-01-01 00:00:00',2,'2023-06-01 12:00:00','Welcomes new users',3,60,'email','user@example.com','info',0,30,5,NULL,2023-12-01 08:00:00,1500,5,NULL,1,'welcome,email','{}',1,NULL);

INSERT INTO system_event_triggers (TriggerId,EventName,TriggerAction,ConditionExpression,IsEnabled,ExecutionOrder,CreatedByUserId,CreationDate,UpdatedByUserId,UpdateDate,Description,RetryCount,RetryDelaySeconds,NotificationChannel,NotificationRecipients,LogLevel,IsTransactional,TimeoutSeconds,RunAsUserId,ScheduleCronExpression,LastExecuted,SuccessCount,FailureCount,LastErrorMessage,IsSystemDefined,Tags,MetadataJson,VersionNumber,DeactivatedDate)
VALUES (90002,'PostCreated','QueueForModeration','post.Score < 0',1,20,3,'2023-02-15 00:00:00',4,'2023-07-10 09:30:00','Automatic moderation queue',2,120,'queue','moderation', 'warning',1,60,6,NULL,2023-12-15 14:30:00,800,20,NULL,0,'moderation,queue','{}',2,NULL);

INSERT INTO system_event_triggers (TriggerId,EventName,TriggerAction,ConditionExpression,IsEnabled,ExecutionOrder,CreatedByUserId,CreationDate,UpdatedByUserId,UpdateDate,Description,RetryCount,RetryDelaySeconds,NotificationChannel,NotificationRecipients,LogLevel,IsTransactional,TimeoutSeconds,RunAsUserId,ScheduleCronExpression,LastExecuted,SuccessCount,FailureCount,LastErrorMessage,IsSystemDefined,Tags,MetadataJson,VersionNumber,DeactivatedDate)
VALUES (90003,'DailySummary','GenerateReport','true',1,5,5,'2023-03-01 00:00:00',6,'2023-08-01 10:00:00','Generates daily usage summary',1,0,'email','admin@example.com','info',0,120,7,'0 0 * * *',2023-12-31 23:55:00,365,0,NULL,1,'report,summary','{}',1,NULL);