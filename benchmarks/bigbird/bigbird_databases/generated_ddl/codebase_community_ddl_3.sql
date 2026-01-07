-- Table storing information about user devices
CREATE TABLE user_devices
(
    Id INTEGER NOT NULL PRIMARY KEY,
    UserId INTEGER,
    DeviceId TEXT,
    DeviceType TEXT,
    OSVersion TEXT,
    AppVersion TEXT,
    LastSync DATETIME,
    IsActive INTEGER,
    RegistrationDate DATETIME,
    PushToken TEXT,
    Manufacturer TEXT,
    Model TEXT,
    ScreenWidth INTEGER,
    ScreenHeight INTEGER,
    BatteryLevel INTEGER,
    NetworkType TEXT,
    Locale TEXT,
    Timezone TEXT,
    IPAddress TEXT,
    FirmwareVersion TEXT,
    IsRooted INTEGER,
    SecureEnclaveAvailable INTEGER,
    FOREIGN KEY (UserId) REFERENCES users (Id) ON UPDATE CASCADE ON DELETE CASCADE
);
INSERT INTO user_devices (Id,UserId,DeviceId,DeviceType,OSVersion,AppVersion,LastSync,IsActive,RegistrationDate,PushToken,Manufacturer,Model,ScreenWidth,ScreenHeight,BatteryLevel,NetworkType,Locale,Timezone,IPAddress,FirmwareVersion,IsRooted,SecureEnclaveAvailable) VALUES (1,10,'dev001','smartphone','Android10','1.2.3','2025-12-01 08:30:00',1,'2025-01-10 09:00:00','token123','Google','Pixel5',1080,2280,85,'wifi','en-US','UTC+0','192.168.1.10','RQ3A.211001.001',0,1);
INSERT INTO user_devices (Id,UserId,DeviceId,DeviceType,OSVersion,AppVersion,LastSync,IsActive,RegistrationDate,PushToken,Manufacturer,Model,ScreenWidth,ScreenHeight,BatteryLevel,NetworkType,Locale,Timezone,IPAddress,FirmwareVersion,IsRooted,SecureEnclaveAvailable) VALUES (2,15,'dev002','tablet','iOS14','2.0.1','2025-11-20 14:45:00',1,'2025-02-15 10:15:00','token456','Apple','iPadPro',2048,2732,73,'cellular','en-GB','UTC+1','10.0.0.5','17A577','0','0');
INSERT INTO user_devices (Id,UserId,DeviceId,DeviceType,OSVersion,AppVersion,LastSync,IsActive,RegistrationDate,PushToken,Manufacturer,Model,ScreenWidth,ScreenHeight,BatteryLevel,NetworkType,Locale,Timezone,IPAddress,FirmwareVersion,IsRooted,SecureEnclaveAvailable) VALUES (3,20,'dev003','desktop','Windows10','3.5.0','2025-10-05 11:00:00',0,'2025-03-20 12:00:00','token789','Dell','XPS15',1920,1080,100,'ethernet','fr-FR','UTC+2','172.16.0.2','19041','0','0');

-- Table storing translations of posts
CREATE TABLE post_translations
(
    Id INTEGER NOT NULL PRIMARY KEY,
    PostId INTEGER,
    LanguageCode TEXT,
    Title TEXT,
    Body TEXT,
    TranslatorUserId INTEGER,
    TranslationDate DATETIME,
    SourceLanguageCode TEXT,
    WordCount INTEGER,
    CharacterCount INTEGER,
    IsMachineGenerated INTEGER,
    ReviewStatus TEXT,
    ReviewedByUserId INTEGER,
    ReviewDate DATETIME,
    QualityScore INTEGER,
    ConfidenceScore INTEGER,
    License TEXT,
    AttributionUrl TEXT,
    Notes TEXT,
    Version INTEGER,
    UpdateCount INTEGER,
    FOREIGN KEY (PostId) REFERENCES posts (Id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (TranslatorUserId) REFERENCES users (Id) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (ReviewedByUserId) REFERENCES users (Id) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO post_translations (Id,PostId,LanguageCode,Title,Body,TranslatorUserId,TranslationDate,SourceLanguageCode,WordCount,CharacterCount,IsMachineGenerated,ReviewStatus,ReviewedByUserId,ReviewDate,QualityScore,ConfidenceScore,License,AttributionUrl,Notes,Version,UpdateCount) VALUES (1,100,'es','Titulo en español','Cuerpo traducido',12,'2025-09-01 07:20:00','en',250,1500,0,'approved',14,'2025-09-02 09:00:00',92,98,'CCBYSA4','http://example.com/source','',1,0);
INSERT INTO post_translations (Id,PostId,LanguageCode,Title,Body,TranslatorUserId,TranslationDate,SourceLanguageCode,WordCount,CharacterCount,IsMachineGenerated,ReviewStatus,ReviewedByUserId,ReviewDate,QualityScore,ConfidenceScore,License,AttributionUrl,Notes,Version,UpdateCount) VALUES (2,101,'de','Deutscher Titel','Deutscher Inhalt',0,'2025-08-15 13:45:00','en',300,1800,1,'pending',0,NULL,0,85,'CC0','http://example.com/source','Machine translation',1,0);
INSERT INTO post_translations (Id,PostId,LanguageCode,Title,Body,TranslatorUserId,TranslationDate,SourceLanguageCode,WordCount,CharacterCount,IsMachineGenerated,ReviewStatus,ReviewedByUserId,ReviewDate,QualityScore,ConfidenceScore,License,AttributionUrl,Notes,Version,UpdateCount) VALUES (3,102,'ja','日本語のタイトル','日本語の本文',23,'2025-07-30 22:10:00','en',200,1200,0,'rejected',25,'2025-07-31 08:00:00',55,60,'CCBYSA4','http://example.com/source','Inaccurate translation',1,0);

-- Table tracking items in moderation queues
CREATE TABLE moderation_queue
(
    Id INTEGER NOT NULL PRIMARY KEY,
    QueueType TEXT,
    ItemId INTEGER,
    ItemType TEXT,
    ReportedByUserId INTEGER,
    ReportReason TEXT,
    ReportDate DATETIME,
    AssignedModeratorId INTEGER,
    AssignmentDate DATETIME,
    Status TEXT,
    Resolution TEXT,
    ResolvedByUserId INTEGER,
    ResolutionDate DATETIME,
    CommentsCount INTEGER,
    PriorityLevel INTEGER,
    Tags TEXT,
    ContentSnippet TEXT,
    IsEscalated INTEGER,
    EscalationLevel INTEGER,
    AuditLogId INTEGER,
    ReviewCount INTEGER,
    LastReviewDate DATETIME,
    FOREIGN KEY (ReportedByUserId) REFERENCES users (Id) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (AssignedModeratorId) REFERENCES users (Id) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (ResolvedByUserId) REFERENCES users (Id) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO moderation_queue (Id,QueueType,ItemId,ItemType,ReportedByUserId,ReportReason,ReportDate,AssignedModeratorId,AssignmentDate,Status,Resolution,ResolvedByUserId,ResolutionDate,CommentsCount,PriorityLevel,Tags,ContentSnippet,IsEscalated,EscalationLevel,AuditLogId,ReviewCount,LastReviewDate) VALUES (1,'spam',5001,'post',30,'advertising',2025-06-01 10:00:00,45,'2025-06-01 12:00:00','open',NULL,NULL,NULL,0,2,'spam,advert','Check out my site...',0,0,NULL,0,NULL);
INSERT INTO moderation_queue (Id,QueueType,ItemId,ItemType,ReportedByUserId,ReportReason,ReportDate,AssignedModeratorId,AssignmentDate,Status,Resolution,ResolvedByUserId,ResolutionDate,CommentsCount,PriorityLevel,Tags,ContentSnippet,IsEscalated,EscalationLevel,AuditLogId,ReviewCount,LastReviewDate) VALUES (2,'rude',6002,'comment',31,'harassment',2025-05-20 15:30:00,46,'2025-05-20 16:00:00','closed','deleted',46,'2025-05-20 17:00:00',1,3,'harassment','You are stupid',1,1,2001,1,'2025-05-20 16:30:00');
INSERT INTO moderation_queue (Id,QueueType,ItemId,ItemType,ReportedByUserId,ReportReason,ReportDate,AssignedModeratorId,AssignmentDate,Status,Resolution,ResolvedByUserId,ResolutionDate,CommentsCount,PriorityLevel,Tags,ContentSnippet,IsEscalated,EscalationLevel,AuditLogId,ReviewCount,LastReviewDate) VALUES (3,'off-topic',7003,'post',32,'off-topic',2025-04-10 09:15:00,47,'2025-04-10 10:00:00','open',NULL,NULL,NULL,2,1,'offtopic','This question belongs to another site',0,0,2002,0,NULL);

-- Table logging analytics events
CREATE TABLE analytics_events
(
    EventId INTEGER NOT NULL PRIMARY KEY,
    EventName TEXT,
    UserId INTEGER,
    SessionId INTEGER,
    EventTimestamp DATETIME,
    Browser TEXT,
    BrowserVersion TEXT,
    OS TEXT,
    OSVersion TEXT,
    DeviceType TEXT,
    Country TEXT,
    Region TEXT,
    City TEXT,
    Latitude REAL,
    Longitude REAL,
    ReferrerUrl TEXT,
    CampaignId INTEGER,
    ExperimentGroup TEXT,
    IsConversion INTEGER,
    Revenue DECIMAL,
    DurationMs INTEGER,
    PageUrl TEXT,
    ClickX INTEGER,
    ClickY INTEGER,
    ScrollDepth INTEGER,
    FOREIGN KEY (UserId) REFERENCES users (Id) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO analytics_events (EventId,EventName,UserId,SessionId,EventTimestamp,Browser,BrowserVersion,OS,OSVersion,DeviceType,Country,Region,City,Latitude,Longitude,ReferrerUrl,CampaignId,ExperimentGroup,IsConversion,Revenue,DurationMs,PageUrl,ClickX,ClickY,ScrollDepth) VALUES (1,'page_view',10,1001,'2025-03-01 08:00:00','Chrome','112.0','Windows','10','desktop','US','CA','SanFrancisco',37.7749,-122.4194,'http://search.example.com',5,'A',0,0.00,5000,'/questions/123',0,0,75);
INSERT INTO analytics_events (EventId,EventName,UserId,SessionId,EventTimestamp,Browser,BrowserVersion,OS,OSVersion,DeviceType,Country,Region,City,Latitude,Longitude,ReferrerUrl,CampaignId,ExperimentGroup,IsConversion,Revenue,DurationMs,PageUrl,ClickX,ClickY,ScrollDepth) VALUES (2,'click',15,1002,'2025-03-02 09:15:30','Firefox','96.0','Linux','5.4','desktop','DE','BE','Berlin',52.5200,13.4050,'http://example.com',7,'B',1,2.50,1200,'/answers/456',250,340,100);
INSERT INTO analytics_events (EventId,EventName,UserId,SessionId,EventTimestamp,Browser,BrowserVersion,OS,OSVersion,DeviceType,Country,Region,City,Latitude,Longitude,ReferrerUrl,CampaignId,ExperimentGroup,IsConversion,Revenue,DurationMs,PageUrl,ClickX,ClickY,ScrollDepth) VALUES (3,'scroll',20,1003,'2025-03-03 10:45:10','Safari','15.4','iOS','14.6','smartphone','JP','TK','Tokyo',35.6895,139.6917,'http://mobile.example.com',3,'C',0,0.00,3000,'/questions/789',0,0,90);

-- Table recording ad click details
CREATE TABLE ad_clicks
(
    ClickId INTEGER NOT NULL PRIMARY KEY,
    ImpressionId INTEGER,
    UserId INTEGER,
    AdId INTEGER,
    CampaignId INTEGER,
    ClickTimestamp DATETIME,
    IPAddress TEXT,
    Country TEXT,
    Region TEXT,
    City TEXT,
    DeviceType TEXT,
    Browser TEXT,
    OS TEXT,
    ClickPositionX INTEGER,
    ClickPositionY INTEGER,
    ViewabilityScore INTEGER,
    IsValidClick INTEGER,
    Revenue DECIMAL,
    CostPerClick DECIMAL,
    ClickType TEXT,
    InteractionCount INTEGER,
    FOREIGN KEY (UserId) REFERENCES users (Id) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO ad_clicks (ClickId,ImpressionId,UserId,AdId,CampaignId,ClickTimestamp,IPAddress,Country,Region,City,DeviceType,Browser,OS,ClickPositionX,ClickPositionY,ViewabilityScore,IsValidClick,Revenue,CostPerClick,ClickType,InteractionCount) VALUES (1,2001,10,3001,4001,'2025-02-20 14:05:00','203.0.113.10','US','NY','NewYork','desktop','Chrome','Windows',250,120,85,1,0.75,0.50,'cpc',1);
INSERT INTO ad_clicks (ClickId,ImpressionId,UserId,AdId,CampaignId,ClickTimestamp,IPAddress,Country,Region,City,DeviceType,Browser,OS,ClickPositionX,ClickPositionY,ViewabilityScore,IsValidClick,Revenue,CostPerClick,ClickType,InteractionCount) VALUES (2,2002,15,3002,4002,'2025-02-21 09:30:15','198.51.100.22','GB','LN','London','mobile','Safari','iOS',80,200,90,1,1.20,0.60,'cpm',3);
INSERT INTO ad_clicks (ClickId,ImpressionId,UserId,AdId,CampaignId,ClickTimestamp,IPAddress,Country,Region,City,DeviceType,Browser,OS,ClickPositionX,ClickPositionY,ViewabilityScore,IsValidClick,Revenue,CostPerClick,ClickType,InteractionCount) VALUES (3,2003,20,3003,4003,'2025-02-22 18:45:30','192.0.2.5','AU','NSW','Sydney','tablet','Firefox','Android',300,400,70,0,0.00,0.00,'none',0);

-- Table tracking history of tag merges
CREATE TABLE tag_merge_history
(
    MergeId INTEGER NOT NULL PRIMARY KEY,
    SourceTagId INTEGER,
    TargetTagId INTEGER,
    MergedByUserId INTEGER,
    MergeDate DATETIME,
    Reason TEXT,
    PostCountBefore INTEGER,
    PostCountAfter INTEGER,
    AliasCreated INTEGER,
    SynonymCreated INTEGER,
    Comments TEXT,
    ReviewStatus TEXT,
    ReviewedByUserId INTEGER,
    ReviewDate DATETIME,
    ConflictResolution TEXT,
    IsAutomatic INTEGER,
    MergeBatchId INTEGER,
    AffectedPostIds TEXT,
    NotificationSent INTEGER,
    LogEntryId INTEGER,
    TagWeightDelta INTEGER,
    TagPopularityDelta INTEGER,
    FOREIGN KEY (SourceTagId) REFERENCES tags (Id) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (TargetTagId) REFERENCES tags (Id) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (MergedByUserId) REFERENCES users (Id) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (ReviewedByUserId) REFERENCES users (Id) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO tag_merge_history (MergeId,SourceTagId,TargetTagId,MergedByUserId,MergeDate,Reason,PostCountBefore,PostCountAfter,AliasCreated,SynonymCreated,Comments,ReviewStatus,ReviewedByUserId,ReviewDate,ConflictResolution,IsAutomatic,MergeBatchId,AffectedPostIds,NotificationSent,LogEntryId,TagWeightDelta,TagPopularityDelta) VALUES (1,101,201,30,'2025-01-15 11:00:00','duplicate',1500,1500,1,0,'Merged due to synonym','approved',45,'2025-01-15 12:00:00','none',0,10,'1001,1002,1003',1,5001,0,0);
INSERT INTO tag_merge_history (MergeId,SourceTagId,TargetTagId,MergedByUserId,MergeDate,Reason,PostCountBefore,PostCountAfter,AliasCreated,SynonymCreated,Comments,ReviewStatus,ReviewedByUserId,ReviewDate,ConflictResolution,IsAutomatic,MergeBatchId,AffectedPostIds,NotificationSent,LogEntryId,TagWeightDelta,TagPopularityDelta) VALUES (2,102,202,31,'2025-02-10 09:30:00','misspelling',800,795,0,1,'Correcting typo','pending',0,NULL,'manual',0,11,'2001,2002',0,5002,-5,-3);
INSERT INTO tag_merge_history (MergeId,SourceTagId,TargetTagId,MergedByUserId,MergeDate,Reason,PostCountBefore,PostCountAfter,AliasCreated,SynonymCreated,Comments,ReviewStatus,ReviewedByUserId,ReviewDate,ConflictResolution,IsAutomatic,MergeBatchId,AffectedPostIds,NotificationSent,LogEntryId,TagWeightDelta,TagPopularityDelta) VALUES (3,103,203,32,'2025-03-05 14:45:00','redundant',1200,1190,1,1,'Consolidating similar tags','rejected',46,'2025-03-05 16:00:00','merge conflict',0,12,'3001,3002,3003',1,5003,-10,-8);

-- Table defining badge criteria
CREATE TABLE badge_criteria
(
    BadgeId INTEGER NOT NULL PRIMARY KEY,
    BadgeName TEXT,
    Description TEXT,
    Category TEXT,
    IsGold INTEGER,
    IsSilver INTEGER,
    IsBronze INTEGER,
    MinReputation INTEGER,
    RequiredTagId INTEGER,
    RequiredPostTypeId INTEGER,
    RequiredAnswerScore INTEGER,
    RequiredVoteCount INTEGER,
    TimeWindowDays INTEGER,
    IsStackExchangeOnly INTEGER,
    EarnedCount INTEGER,
    CreationDate DATETIME,
    LastModified DATETIME,
    IsHidden INTEGER,
    DisplayOrder INTEGER,
    IconUrl TEXT,
    CriteriaHash TEXT,
    TriggerEvent TEXT,
    FOREIGN KEY (RequiredTagId) REFERENCES tags (Id) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO badge_criteria (BadgeId,BadgeName,Description,Category,IsGold,IsSilver,IsBronze,MinReputation,RequiredTagId,RequiredPostTypeId,RequiredAnswerScore,RequiredVoteCount,TimeWindowDays,IsStackExchangeOnly,EarnedCount,CreationDate,LastModified,IsHidden,DisplayOrder,IconUrl,CriteriaHash,TriggerEvent) VALUES (1,'Great Question','Asked a question with score of 100','question',1,0,0,20000,101,1,100,0,0,1,500,'2024-01-01 00:00:00','2025-01-01 00:00:00',0,10,'http://example.com/icon1.png','hash1','question_upvoted');
INSERT INTO badge_criteria (BadgeId,BadgeName,Description,Category,IsGold,IsSilver,IsBronze,MinReputation,RequiredTagId,RequiredPostTypeId,RequiredAnswerScore,RequiredVoteCount,TimeWindowDays,IsStackExchangeOnly,EarnedCount,CreationDate,LastModified,IsHidden,DisplayOrder,IconUrl,CriteriaHash,TriggerEvent) VALUES (2,'Tag Expert','Provided 500 answers in a specific tag','answer',0,1,0,15000,102,2,0,500,365,0,250,'2024-02-15 00:00:00','2025-02-15 00:00:00',0,20,'http://example.com/icon2.png','hash2','answer_created');
INSERT INTO badge_criteria (BadgeId,BadgeName,Description,Category,IsGold,IsSilver,IsBronze,MinReputation,RequiredTagId,RequiredPostTypeId,RequiredAnswerScore,RequiredVoteCount,TimeWindowDays,IsStackExchangeOnly,EarnedCount,CreationDate,LastModified,IsHidden,DisplayOrder,IconUrl,CriteriaHash,TriggerEvent) VALUES (3,'Enthusiast','Visited site for 30 consecutive days','participation',0,0,1,0,NULL,NULL,0,0,30,0,10000,'2024-03-10 00:00:00','2025-03-10 00:00:00',0,30,'http://example.com/icon3.png','hash3','daily_visit');

-- Table recording user achievements (badge instances)
CREATE TABLE user_achievement
(
    AchievementId INTEGER NOT NULL PRIMARY KEY,
    UserId INTEGER,
    BadgeId INTEGER,
    AchievementDate DATETIME,
    Source TEXT,
    IsRevoked INTEGER,
    RevokedDate DATETIME,
    Reason TEXT,
    PointsEarned INTEGER,
    Level INTEGER,
    StreakDays INTEGER,
    RelatedPostId INTEGER,
    RelatedCommentId INTEGER,
    IsPublic INTEGER,
    NotificationSent INTEGER,
    ExpirationDate DATETIME,
    MetaData TEXT,
    ReviewStatus TEXT,
    ReviewedByUserId INTEGER,
    ReviewDate DATETIME,
    AuditLogId INTEGER,
    Version INTEGER,
    FOREIGN KEY (UserId) REFERENCES users (Id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (BadgeId) REFERENCES badge_criteria (BadgeId) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (ReviewedByUserId) REFERENCES users (Id) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO user_achievement (AchievementId,UserId,BadgeId,AchievementDate,Source,IsRevoked,RevokedDate,Reason,PointsEarned,Level,StreakDays,RelatedPostId,RelatedCommentId,IsPublic,NotificationSent,ExpirationDate,MetaData,ReviewStatus,ReviewedByUserId,ReviewDate,AuditLogId,Version) VALUES (1,10,1,'2025-01-20 12:00:00','system',0,NULL,NULL,100,1,0,5001,NULL,1,1,NULL,'{}','approved',45,'2025-01-20 12:05:00',9001,1);
INSERT INTO user_achievement (AchievementId,UserId,BadgeId,AchievementDate,Source,IsRevoked,RevokedDate,Reason,PointsEarned,Level,StreakDays,RelatedPostId,RelatedCommentId,IsPublic,NotificationSent,ExpirationDate,MetaData,ReviewStatus,ReviewedByUserId,ReviewDate,AuditLogId,Version) VALUES (2,15,2,'2025-02-10 15:30:00','manual',0,NULL,NULL,50,2,5,6002,7002,1,1,NULL,'{}','pending',46,'2025-02-10 16:00:00',9002,1);
INSERT INTO user_achievement (AchievementId,UserId,BadgeId,AchievementDate,Source,IsRevoked,RevokedDate,Reason,PointsEarned,Level,StreakDays,RelatedPostId,RelatedCommentId,IsPublic,NotificationSent,ExpirationDate,MetaData,ReviewStatus,ReviewedByUserId,ReviewDate,AuditLogId,Version) VALUES (3,20,3,'2025-03-05 09:00:00','system',0,NULL,NULL,10,1,30,8003,NULL,1,1,NULL,'{}','approved',47,'2025-03-05 09:10:00',9003,1);

-- Table describing scheduled maintenance windows
CREATE TABLE site_maintenance_window
(
    WindowId INTEGER NOT NULL PRIMARY KEY,
    StartTime DATETIME,
    EndTime DATETIME,
    AffectedServices TEXT,
    Reason TEXT,
    InitiatedByUserId INTEGER,
    NotificationSent INTEGER,
    IsEmergency INTEGER,
    ExpectedImpact TEXT,
    Status TEXT,
    CreatedDate DATETIME,
    UpdatedDate DATETIME,
    EstimatedDowntimeMinutes INTEGER,
    ActualDowntimeMinutes INTEGER,
    PostponedCount INTEGER,
    RollbackPlanUrl TEXT,
    CommunicationChannel TEXT,
    BackupCompleted INTEGER,
    TestRunCompleted INTEGER,
    FollowUpTaskId INTEGER,
    OwnerTeam TEXT,
    DocumentationUrl TEXT,
    FOREIGN KEY (InitiatedByUserId) REFERENCES users (Id) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO site_maintenance_window (WindowId,StartTime,EndTime,AffectedServices,Reason,InitiatedByUserId,NotificationSent,IsEmergency,ExpectedImpact,Status,CreatedDate,UpdatedDate,EstimatedDowntimeMinutes,ActualDowntimeMinutes,PostponedCount,RollbackPlanUrl,CommunicationChannel,BackupCompleted,TestRunCompleted,FollowUpTaskId,OwnerTeam,DocumentationUrl) VALUES (1,'2025-04-01 02:00:00','2025-04-01 04:30:00','database,search','hardware upgrade',30,1,0,'moderate','scheduled','2025-03-20 10:00:00','2025-03-21 12:00:00',150,160,0,'http://example.com/rollback','email',1,1,5001,'Infrastructure','http://example.com/docs/maintenance1');
INSERT INTO site_maintenance_window (WindowId,StartTime,EndTime,AffectedServices,Reason,InitiatedByUserId,NotificationSent,IsEmergency,ExpectedImpact,Status,CreatedDate,UpdatedDate,EstimatedDowntimeMinutes,ActualDowntimeMinutes,PostponedCount,RollbackPlanUrl,CommunicationChannel,BackupCompleted,TestRunCompleted,FollowUpTaskId,OwnerTeam,DocumentationUrl) VALUES (2,'2025-05-15 01:00:00','2025-05-15 02:00:00','cache','security patch',31,1,1,'high','in_progress','2025-04-30 09:00:00','2025-05-10 16:00:00',60,NULL,1,'http://example.com/rollback2','slack',1,0,5002,'Security','http://example.com/docs/maintenance2');
INSERT INTO site_maintenance_window (WindowId,StartTime,EndTime,AffectedServices,Reason,InitiatedByUserId,NotificationSent,IsEmergency,ExpectedImpact,Status,CreatedDate,UpdatedDate,EstimatedDowntimeMinutes,ActualDowntimeMinutes,PostponedCount,RollbackPlanUrl,CommunicationChannel,BackupCompleted,TestRunCompleted,FollowUpTaskId,OwnerTeam,DocumentationUrl) VALUES (3,'2025-06-20 23:00:00','2025-06-21 01:00:00','search','index rebuild',32,0,0,'low','planned','2025-05-25 11:30:00','2025-06-01 08:45:00',120,NULL,0,'http://example.com/rollback3','email',1,1,5003,'Search','http://example.com/docs/maintenance3');

-- Table tracking API rate limits per user/key
CREATE TABLE api_rate_limits
(
    LimitId INTEGER NOT NULL PRIMARY KEY,
    UserId INTEGER,
    ApiKeyId INTEGER,
    Endpoint TEXT,
    PeriodSeconds INTEGER,
    MaxCalls INTEGER,
    CurrentCount INTEGER,
    ResetTime DATETIME,
    LastCallTime DATETIME,
    IsThrottled INTEGER,
    ThrottleReason TEXT,
    BanUntil DATETIME,
    CreatedDate DATETIME,
    UpdatedDate DATETIME,
    WindowStart DATETIME,
    WindowEnd DATETIME,
    OverrunCount INTEGER,
    AlertSent INTEGER,
    AlertThreshold INTEGER,
    NotificationChannel TEXT,
    Notes TEXT,
    IsActive INTEGER,
    FOREIGN KEY (UserId) REFERENCES users (Id) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO api_rate_limits (LimitId,UserId,ApiKeyId,Endpoint,PeriodSeconds,MaxCalls,CurrentCount,ResetTime,LastCallTime,IsThrottled,ThrottleReason,BanUntil,CreatedDate,UpdatedDate,WindowStart,WindowEnd,OverrunCount,AlertSent,AlertThreshold,NotificationChannel,Notes,IsActive) VALUES (1,10,1001,'/questions',3600,1000,200,'2025-07-01 00:00:00','2025-06-30 23:45:00',0,NULL,NULL,'2025-01-01 00:00:00','2025-06-30 23:45:00','2025-06-30 23:00:00','2025-06-30 23:59:59',0,0,900,'email','initial limit',1);
INSERT INTO api_rate_limits (LimitId,UserId,ApiKeyId,Endpoint,PeriodSeconds,MaxCalls,CurrentCount,ResetTime,LastCallTime,IsThrottled,ThrottleReason,BanUntil,CreatedDate,UpdatedDate,WindowStart,WindowEnd,OverrunCount,AlertSent,AlertThreshold,NotificationChannel,Notes,IsActive) VALUES (2,15,1002,'/answers',86400,5000,4800,'2025-07-02 00:00:00','2025-06-30 22:30:00',1,'rate limit exceeded','2025-07-03 00:00:00','2025-02-01 00:00:00','2025-06-30 22:00:00','2025-06-30 22:59:59',5,1,4500,'slack','approaching limit',1);
INSERT INTO api_rate_limits (LimitId,UserId,ApiKeyId,Endpoint,PeriodSeconds,MaxCalls,CurrentCount,ResetTime,LastCallTime,IsThrottled,ThrottleReason,BanUntil,CreatedDate,UpdatedDate,WindowStart,WindowEnd,OverrunCount,AlertSent,AlertThreshold,NotificationChannel,Notes,IsActive) VALUES (3,20,1003,'/users',600,200,200,'2025-07-01 01:00:00','2025-06-30 23:59:00',1,'hard limit','2025-08-01 00:00:00','2025-03-01 00:00:00','2025-06-30 23:00:00','2025-06-30 23:59:59',10,1,150,'email','blocked due to abuse',0);