-- Synthetic large schema extension

-- 1. User activity summary per user
CREATE TABLE user_activity_summary
(
    Id INTEGER NOT NULL PRIMARY KEY,
    UserId INTEGER,
    SessionCount INTEGER,
    PageViews INTEGER,
    QuestionViews INTEGER,
    AnswerViews INTEGER,
    CommentsMade INTEGER,
    VotesCast INTEGER,
    BadgesEarned INTEGER,
    ReputationChange INTEGER,
    LastActiveDate DATETIME,
    FirstActiveDate DATETIME,
    AvgSessionDuration INTEGER,
    MaxSessionDuration INTEGER,
    MinSessionDuration INTEGER,
    DevicesUsed INTEGER,
    LocationsVisited INTEGER,
    LanguagesUsed INTEGER,
    ReferralSource TEXT,
    IsPremiumMember INTEGER,
    Notes TEXT
);

INSERT INTO user_activity_summary (Id,UserId,SessionCount,PageViews,QuestionViews,AnswerViews,CommentsMade,VotesCast,BadgesEarned,ReputationChange,LastActiveDate,FirstActiveDate,AvgSessionDuration,MaxSessionDuration,MinSessionDuration,DevicesUsed,LocationsVisited,LanguagesUsed,ReferralSource,IsPremiumMember,Notes) VALUES (1,101,50,1200,300,250,80,400,5,1500,'2025-12-30 14:23:00','2025-01-01 09:00:00',300,900,60,3,5,2,'search',1,'top user');
INSERT INTO user_activity_summary (Id,UserId,SessionCount,PageViews,QuestionViews,AnswerViews,CommentsMade,VotesCast,BadgesEarned,ReputationChange,LastActiveDate,FirstActiveDate,AvgSessionDuration,MaxSessionDuration,MinSessionDuration,DevicesUsed,LocationsVisited,LanguagesUsed,ReferralSource,IsPremiumMember,Notes) VALUES (2,102,20,500,120,90,30,150,2,300,'2025-12-28 10:15:00','2025-02-15 08:45:00',250,720,45,2,3,1,'referral',0,'active');
INSERT INTO user_activity_summary (Id,UserId,SessionCount,PageViews,QuestionViews,AnswerViews,CommentsMade,VotesCast,BadgesEarned,ReputationChange,LastActiveDate,FirstActiveDate,AvgSessionDuration,MaxSessionDuration,MinSessionDuration,DevicesUsed,LocationsVisited,LanguagesUsed,ReferralSource,IsPremiumMember,Notes) VALUES (3,103,5,150,20,15,5,20,0,50,'2025-12-20 18:00:00','2025-06-10 12:00:00',180,300,30,1,1,1,'direct',0,'newbie');

-- 2. Media assets linked to posts
CREATE TABLE post_media_assets
(
    Id INTEGER NOT NULL PRIMARY KEY,
    PostId INTEGER,
    MediaType TEXT,
    Url TEXT,
    Width INTEGER,
    Height INTEGER,
    FileSizeBytes INTEGER,
    DurationSeconds INTEGER,
    ThumbnailUrl TEXT,
    Description TEXT,
    UploadDate DATETIME,
    UploadedByUserId INTEGER,
    LicenseType TEXT,
    Attribution TEXT,
    IsFeatured INTEGER,
    SortOrder INTEGER,
    MimeType TEXT,
    HashSHA256 TEXT,
    WidthOriginal INTEGER,
    HeightOriginal INTEGER,
    Caption TEXT
);

INSERT INTO post_media_assets (Id,PostId,MediaType,Url,Width,Height,FileSizeBytes,DurationSeconds,ThumbnailUrl,Description,UploadDate,UploadedByUserId,LicenseType,Attribution,IsFeatured,SortOrder,MimeType,HashSHA256,WidthOriginal,HeightOriginal,Caption) VALUES (1,2001,'image','https://example.com/img1.png',800,600,150000,0,'https://example.com/thumb1.png','sample image','2025-12-01 08:00:00',101,'CC0','user101',1,1,'image/png','abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890',800,600,'image caption 1');
INSERT INTO post_media_assets (Id,PostId,MediaType,Url,Width,Height,FileSizeBytes,DurationSeconds,ThumbnailUrl,Description,UploadDate,UploadedByUserId,LicenseType,Attribution,IsFeatured,SortOrder,MimeType,HashSHA256,WidthOriginal,HeightOriginal,Caption) VALUES (2,2002,'video','https://example.com/vid1.mp4',1280,720,5000000,120,'https://example.com/vidthumb1.png','sample video','2025-12-05 10:30:00',102,'Standard','user102',0,2,'video/mp4','123456abcdef123456abcdef123456abcdef123456abcdef123456abcdef123456',1280,720,'video caption 1');
INSERT INTO post_media_assets (Id,PostId,MediaType,Url,Width,Height,FileSizeBytes,DurationSeconds,ThumbnailUrl,Description,UploadDate,UploadedByUserId,LicenseType,Attribution,IsFeatured,SortOrder,MimeType,HashSHA256,WidthOriginal,HeightOriginal,Caption) VALUES (3,2003,'image','https://example.com/img2.jpg',1024,768,200000,0,'https://example.com/thumb2.jpg','another image','2025-12-10 14:45:00',103,'CC-BY','user103',0,3,'image/jpeg','fedcba9876543210fedcba9876543210fedcba9876543210fedcba9876543210',1024,768,'image caption 2');

-- 3. Analytics per tag
CREATE TABLE tag_analytics
(
    Id INTEGER NOT NULL PRIMARY KEY,
    TagId INTEGER,
    DailyViews INTEGER,
    DailyQuestions INTEGER,
    DailyAnswers INTEGER,
    WeeklyViews INTEGER,
    WeeklyQuestions INTEGER,
    WeeklyAnswers INTEGER,
    MonthlyViews INTEGER,
    MonthlyQuestions INTEGER,
    MonthlyAnswers INTEGER,
    AvgQuestionScore REAL,
    AvgAnswerScore REAL,
    NewUsersUsingTag INTEGER,
    TotalFollowers INTEGER,
    IsTrending INTEGER,
    TrendScore REAL,
    LastUpdated DATETIME,
    RelatedTagIds TEXT,
    Category TEXT,
    OriginCountry TEXT
);

INSERT INTO tag_analytics (Id,TagId,DailyViews,DailyQuestions,DailyAnswers,WeeklyViews,WeeklyQuestions,WeeklyAnswers,MonthlyViews,MonthlyQuestions,MonthlyAnswers,AvgQuestionScore,AvgAnswerScore,NewUsersUsingTag,TotalFollowers,IsTrending,TrendScore,LastUpdated,RelatedTagIds,Category,OriginCountry) VALUES (1,501,1200,30,45,8000,210,340,32000,900,1500,2.3,3.1,15,5000,1,0.87,'2025-12-31 23:59:00','502,503','technology','US');
INSERT INTO tag_analytics (Id,TagId,DailyViews,DailyQuestions,DailyAnswers,WeeklyViews,WeeklyQuestions,WeeklyAnswers,MonthlyViews,MonthlyQuestions,MonthlyAnswers,AvgQuestionScore,AvgAnswerScore,NewUsersUsingTag,TotalFollowers,IsTrending,TrendScore,LastUpdated,RelatedTagIds,Category,OriginCountry) VALUES (2,502,800,20,25,5600,150,200,22000,600,900,1.8,2.5,10,3000,0,0.45,'2025-12-30 22:00:00','501,504','programming','CA');
INSERT INTO tag_analytics (Id,TagId,DailyViews,DailyQuestions,DailyAnswers,WeeklyViews,WeeklyQuestions,WeeklyAnswers,MonthlyViews,MonthlyQuestions,MonthlyAnswers,AvgQuestionScore,AvgAnswerScore,NewUsersUsingTag,TotalFollowers,IsTrending,TrendScore,LastUpdated,RelatedTagIds,Category,OriginCountry) VALUES (3,503,400,10,12,2800,70,100,11000,300,450,1.2,1.9,5,1500,0,0.22,'2025-12-29 20:15:00','501,502','database','GB');

-- 4. Content moderation rules
CREATE TABLE content_moderation_rules
(
    Id INTEGER NOT NULL PRIMARY KEY,
    RuleName TEXT,
    Description TEXT,
    SeverityLevel INTEGER,
    ActionType TEXT,
    AppliesTo TEXT,
    CreatedByUserId INTEGER,
    CreatedDate DATETIME,
    UpdatedByUserId INTEGER,
    UpdatedDate DATETIME,
    IsActive INTEGER,
    IsDeprecated INTEGER,
    RegexPattern TEXT,
    MinReputation INTEGER,
    MaxReputation INTEGER,
    MinAge INTEGER,
    MaxAge INTEGER,
    TagConstraint TEXT,
    LanguageConstraint TEXT,
    AutoApprove INTEGER,
    ReviewRequired INTEGER
);

INSERT INTO content_moderation_rules (Id,RuleName,Description,SeverityLevel,ActionType,AppliesTo,CreatedByUserId,CreatedDate,UpdatedByUserId,UpdatedDate,IsActive,IsDeprecated,RegexPattern,MinReputation,MaxReputation,MinAge,MaxAge,TagConstraint,LanguageConstraint,AutoApprove,ReviewRequired) VALUES (1,'spam_link','detect spam links in posts',5,'delete','post',101,'2025-01-01 00:00:00',101,'2025-12-01 12:00:00',1,0,'http://.*spam.*',0,10000,0,0,'','any',0,1);
INSERT INTO content_moderation_rules (Id,RuleName,Description,SeverityLevel,ActionType,AppliesTo,CreatedByUserId,CreatedDate,UpdatedByUserId,UpdatedDate,IsActive,IsDeprecated,RegexPattern,MinReputation,MaxReputation,MinAge,MaxAge,TagConstraint,LanguageConstraint,AutoApprove,ReviewRequired) VALUES (2,'offensive_language','detect offensive words',4,'flag','comment',102,'2025-02-15 09:30:00',103,'2025-11-20 15:45:00',1,0,'badword1|badword2',0,5000,0,0,'','en',0,1);
INSERT INTO content_moderation_rules (Id,RuleName,Description,SeverityLevel,ActionType,AppliesTo,CreatedByUserId,CreatedDate,UpdatedByUserId,UpdatedDate,IsActive,IsDeprecated,RegexPattern,MinReputation,MaxReputation,MinAge,MaxAge,TagConstraint,LanguageConstraint,AutoApprove,ReviewRequired) VALUES (3,'low_quality','low quality posts',3,'review','post',104,'2025-03-10 14:00:00',104,'2025-12-15 08:20:00',1,0,'',2000,999999,0,0,'','any',0,1);

-- 5. Daily advertisement metrics
CREATE TABLE advertisement_metrics_daily
(
    Id INTEGER NOT NULL PRIMARY KEY,
    AdCampaignId INTEGER,
    Date DATE,
    Impressions INTEGER,
    Clicks INTEGER,
    Conversions INTEGER,
    SpendUSD REAL,
    RevenueUSD REAL,
    CTR REAL,
    CPC REAL,
    CPM REAL,
    CPA REAL,
    AvgPosition REAL,
    DeviceType TEXT,
    GeographicRegion TEXT,
    Browser TEXT,
    OperatingSystem TEXT,
    CreativeId INTEGER,
    AudienceSegment TEXT,
    IsViewable INTEGER,
    ViewabilityRate REAL
);

INSERT INTO advertisement_metrics_daily (Id,AdCampaignId,Date,Impressions,Clicks,Conversions,SpendUSD,RevenueUSD,CTR,CPC,CPM,CPA,AvgPosition,DeviceType,GeographicRegion,Browser,OperatingSystem,CreativeId,AudienceSegment,IsViewable,ViewabilityRate) VALUES (1,301,'2025-12-31',50000,2500,120,750.00,900.00,0.05,0.30,15.00,6.25,2.1,'mobile','NA','Chrome','Android',401,'tech','1',0.92);
INSERT INTO advertisement_metrics_daily (Id,AdCampaignId,Date,Impressions,Clicks,Conversions,SpendUSD,RevenueUSD,CTR,CPC,CPM,CPA,AvgPosition,DeviceType,GeographicRegion,Browser,OperatingSystem,CreativeId,AudienceSegment,IsViewable,ViewabilityRate) VALUES (2,302,'2025-12-30',30000,900,45,450.00,550.00,0.03,0.50,15.00,10.00,3.5,'desktop','EU','Firefox','Windows',402,'finance','1',0.85);
INSERT INTO advertisement_metrics_daily (Id,AdCampaignId,Date,Impressions,Clicks,Conversions,SpendUSD,RevenueUSD,CTR,CPC,CPM,CPA,AvgPosition,DeviceType,GeographicRegion,Browser,OperatingSystem,CreativeId,AudienceSegment,IsViewable,ViewabilityRate) VALUES (3,303,'2025-12-29',20000,400,20,300.00,400.00,0.02,0.75,15.00,15.00,4.0,'tablet','AS','Safari','iOS',403,'gaming','0',0.70);

-- 6. API endpoint access log
CREATE TABLE api_endpoint_access_log
(
    Id INTEGER NOT NULL PRIMARY KEY,
    EndpointName TEXT,
    HttpMethod TEXT,
    RequestTimestamp DATETIME,
    ResponseTimeMs INTEGER,
    StatusCode INTEGER,
    CallerIp TEXT,
    CallerUserId INTEGER,
    ApiKeyId INTEGER,
    PayloadSizeBytes INTEGER,
    ResponseSizeBytes INTEGER,
    AuthMethod TEXT,
    RateLimitBucket TEXT,
    WasThrottled INTEGER,
    IsSuccessful INTEGER,
    ErrorCode INTEGER,
    UserAgent TEXT,
    ReferrerUrl TEXT,
    GeoCountry TEXT,
    GeoCity TEXT
);

INSERT INTO api_endpoint_access_log (Id,EndpointName,HttpMethod,RequestTimestamp,ResponseTimeMs,StatusCode,CallerIp,CallerUserId,ApiKeyId,PayloadSizeBytes,ResponseSizeBytes,AuthMethod,RateLimitBucket,WasThrottled,IsSuccessful,ErrorCode,UserAgent,ReferrerUrl,GeoCountry,GeoCity) VALUES (1,'/v1/posts','GET','2025-12-31 23:59:59',120,200,'192.0.2.1',101,1001,0,1024,'Bearer','standard',0,1,0,'PostmanRuntime/7.28.4','https://example.com','US','NewYork');
INSERT INTO api_endpoint_access_log (Id,EndpointName,HttpMethod,RequestTimestamp,ResponseTimeMs,StatusCode,CallerIp,CallerUserId,ApiKeyId,PayloadSizeBytes,ResponseSizeBytes,AuthMethod,RateLimitBucket,WasThrottled,IsSuccessful,ErrorCode,UserAgent,ReferrerUrl,GeoCountry,GeoCity) VALUES (2,'/v1/comments','POST','2025-12-31 22:45:10',250,201,'198.51.100.2',102,1002,512,2048,'ApiKey','premium',0,1,0,'curl/7.68.0','https://referrer.com','CA','Toronto');
INSERT INTO api_endpoint_access_log (Id,EndpointName,HttpMethod,RequestTimestamp,ResponseTimeMs,StatusCode,CallerIp,CallerUserId,ApiKeyId,PayloadSizeBytes,ResponseSizeBytes,AuthMethod,RateLimitBucket,WasThrottled,IsSuccessful,ErrorCode,UserAgent,ReferrerUrl,GeoCountry,GeoCity) VALUES (3,'/v1/users','GET','2025-12-31 21:30:05',80,403,'203.0.113.5',NULL,1003,0,512,'None','standard',0,0,403,'Mozilla/5.0','https://app.example.com','GB','London');

-- 7. Forum thread metadata
CREATE TABLE forum_thread_metadata
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ThreadId INTEGER,
    CategoryId INTEGER,
    StarterUserId INTEGER,
    CreatedAt DATETIME,
    LastPostAt DATETIME,
    PostCount INTEGER,
    ViewCount INTEGER,
    IsLocked INTEGER,
    IsPinned INTEGER,
    HasPoll INTEGER,
    PollOptionsCount INTEGER,
    PollDurationDays INTEGER,
    HasBestAnswer INTEGER,
    BestAnswerPostId INTEGER,
    TagsCsv TEXT,
    Language TEXT,
    SentimentScore REAL,
    AvgResponseTimeSec INTEGER,
    ModeratorUserId INTEGER,
    FlagCount INTEGER,
    SubscriptionCount INTEGER
);

INSERT INTO forum_thread_metadata (Id,ThreadId,CategoryId,StarterUserId,CreatedAt,LastPostAt,PostCount,ViewCount,IsLocked,IsPinned,HasPoll,PollOptionsCount,PollDurationDays,HasBestAnswer,BestAnswerPostId,TagsCsv,Language,SentimentScore,AvgResponseTimeSec,ModeratorUserId,FlagCount,SubscriptionCount) VALUES (1,601,10,101,'2025-12-01 09:00:00','2025-12-30 18:20:00',25,1500,0,1,0,0,0,1,701,'sql,performance','en',0.75,3600,201,2,300);
INSERT INTO forum_thread_metadata (Id,ThreadId,CategoryId,StarterUserId,CreatedAt,LastPostAt,PostCount,ViewCount,IsLocked,IsPinned,HasPoll,PollOptionsCount,PollDurationDays,HasBestAnswer,BestAnswerPostId,TagsCsv,Language,SentimentScore,AvgResponseTimeSec,ModeratorUserId,FlagCount,SubscriptionCount) VALUES (2,602,12,102,'2025-11-15 14:30:00','2025-12-28 10:10:00',10,800,1,0,1,4,7,0,NULL,'python,asyncio','en',-0.20,7200,202,5,120);
INSERT INTO forum_thread_metadata (Id,ThreadId,CategoryId,StarterUserId,CreatedAt,LastPostAt,PostCount,ViewCount,IsLocked,IsPinned,HasPoll,PollOptionsCount,PollDurationDays,HasBestAnswer,BestAnswerPostId,TagsCsv,Language,SentimentScore,AvgResponseTimeSec,ModeratorUserId,FlagCount,SubscriptionCount) VALUES (3,603,15,103,'2025-10-05 08:15:00','2025-12-20 16:45:00',40,2500,0,0,0,0,0,1,801,'javascript,react','en',0.40,1800,203,1,450);

-- 8. Newsletter issue statistics
CREATE TABLE newsletter_issue_stats
(
    Id INTEGER NOT NULL PRIMARY KEY,
    IssueNumber INTEGER,
    SendDate DATETIME,
    RecipientCount INTEGER,
    OpenCount INTEGER,
    ClickCount INTEGER,
    UnsubscribeCount INTEGER,
    BounceCount INTEGER,
    SpamComplaintCount INTEGER,
    UniqueOpens INTEGER,
    UniqueClicks INTEGER,
    AvgOpenDelaySec INTEGER,
    AvgClickDelaySec INTEGER,
    DeviceDesktop INTEGER,
    DeviceMobile INTEGER,
    DeviceTablet INTEGER,
    EmailClientGmail INTEGER,
    EmailClientOutlook INTEGER,
    EmailClientYahoo INTEGER,
    ABTestGroup TEXT,
    SubjectLineId INTEGER
);

INSERT INTO newsletter_issue_stats (Id,IssueNumber,SendDate,RecipientCount,OpenCount,ClickCount,UnsubscribeCount,BounceCount,SpamComplaintCount,UniqueOpens,UniqueClicks,AvgOpenDelaySec,AvgClickDelaySec,DeviceDesktop,DeviceMobile,DeviceTablet,EmailClientGmail,EmailClientOutlook,EmailClientYahoo,ABTestGroup,SubjectLineId) VALUES (1,45,'2025-12-01 07:00:00',10000,2500,300,20,50,5,2400,290,180,60,4000,5500,500,3000,2000,500,'A',9001);
INSERT INTO newsletter_issue_stats (Id,IssueNumber,SendDate,RecipientCount,OpenCount,ClickCount,UnsubscribeCount,BounceCount,SpamComplaintCount,UniqueOpens,UniqueClicks,AvgOpenDelaySec,AvgClickDelaySec,DeviceDesktop,DeviceMobile,DeviceTablet,EmailClientGmail,EmailClientOutlook,EmailClientYahoo,ABTestGroup,SubjectLineId) VALUES (2,46,'2025-12-15 07:00:00',12000,3000,400,25,60,8,2900,380,150,55,5000,6200,600,3500,2500,600,'B',9002);
INSERT INTO newsletter_issue_stats (Id,IssueNumber,SendDate,RecipientCount,OpenCount,ClickCount,UnsubscribeCount,BounceCount,SpamComplaintCount,UniqueOpens,UniqueClicks,AvgOpenDelaySec,AvgClickDelaySec,DeviceDesktop,DeviceMobile,DeviceTablet,EmailClientGmail,EmailClientOutlook,EmailClientYahoo,ABTestGroup,SubjectLineId) VALUES (3,47,'2025-12-31 07:00:00',15000,3500,500,30,70,10,3400,460,120,45,6000,7500,700,4000,3000,700,'A',9003);

-- 9. External data source import log
CREATE TABLE external_data_source_log
(
    Id INTEGER NOT NULL PRIMARY KEY,
    SourceName TEXT,
    SourceType TEXT,
    ImportDate DATETIME,
    RecordCount INTEGER,
    SuccessCount INTEGER,
    FailureCount INTEGER,
    DurationSeconds INTEGER,
    FilePath TEXT,
    TriggeredByUserId INTEGER,
    ScheduleId INTEGER,
    IsIncremental INTEGER,
    LastProcessedId INTEGER,
    Checksum TEXT,
    DataSchemaVersion TEXT,
    ApiEndpoint TEXT,
    AuthTokenId INTEGER,
    Region TEXT,
    CompressionUsed TEXT,
    ErrorLogUrl TEXT
);

INSERT INTO external_data_source_log (Id,SourceName,SourceType,ImportDate,RecordCount,SuccessCount,FailureCount,DurationSeconds,FilePath,TriggeredByUserId,ScheduleId,IsIncremental,LastProcessedId,Checksum,DataSchemaVersion,ApiEndpoint,AuthTokenId,Region,CompressionUsed,ErrorLogUrl) VALUES (1,'UserExport','CSV','2025-12-20 02:00:00',50000,49800,200,3600,'/exports/users_20251220.csv',101,301,1,49999,'abcdef123456','v1','https://api.example.com/users',401,'us-east-1','gzip','https://logs.example.com/error1');
INSERT INTO external_data_source_log (Id,SourceName,SourceType,ImportDate,RecordCount,SuccessCount,FailureCount,DurationSeconds,FilePath,TriggeredByUserId,ScheduleId,IsIncremental,LastProcessedId,Checksum,DataSchemaVersion,ApiEndpoint,AuthTokenId,Region,CompressionUsed,ErrorLogUrl) VALUES (2,'PostArchive','JSON','2025-12-22 03:30:00',200000,199500,500,5400,'/archives/posts_20251222.json',102,302,0,NULL,'123456abcdef','v2','https://api.example.com/posts',402,'eu-west-2','zip','https://logs.example.com/error2');
INSERT INTO external_data_source_log (Id,SourceName,SourceType,ImportDate,RecordCount,SuccessCount,FailureCount,DurationSeconds,FilePath,TriggeredByUserId,ScheduleId,IsIncremental,LastProcessedId,Checksum,DataSchemaVersion,ApiEndpoint,AuthTokenId,Region,CompressionUsed,ErrorLogUrl) VALUES (3,'TagSynonyms','XML','2025-12-25 01:15:00',15000,14980,20,1800,'/synonyms/tags_20251225.xml',103,303,1,14979,'fedcba654321','v1','https://api.example.com/tagsynonyms',403,'ap-southeast-1','none','https://logs.example.com/error3');

-- 10. User device inventory
CREATE TABLE user_device_inventory
(
    Id INTEGER NOT NULL PRIMARY KEY,
    UserId INTEGER,
    DeviceId TEXT,
    DeviceType TEXT,
    Manufacturer TEXT,
    Model TEXT,
    OSVersion TEXT,
    IsPrimary INTEGER,
    RegistrationDate DATETIME,
    LastSyncDate DATETIME,
    PushToken TEXT,
    BatteryLevel INTEGER,
    StorageCapacityGB INTEGER,
    NetworkType TEXT,
    IsRooted INTEGER,
    IsEmulator INTEGER,
    Locale TEXT,
    Timezone TEXT,
    ScreenResolution TEXT,
    AppVersion TEXT,
    IsActive INTEGER
);

INSERT INTO user_device_inventory (Id,UserId,DeviceId,DeviceType,Manufacturer,Model,OSVersion,IsPrimary,RegistrationDate,LastSyncDate,PushToken,BatteryLevel,StorageCapacityGB,NetworkType,IsRooted,IsEmulator,Locale,Timezone,ScreenResolution,AppVersion,IsActive) VALUES (1,101,'dev-001','mobile','Apple','iPhone12','iOS14.6',1,'2025-01-10 10:00:00','2025-12-30 09:00:00','token123',85,128,'wifi',0,0,'en_US','America/New_York','1170x2532','5.2.1',1);
INSERT INTO user_device_inventory (Id,UserId,DeviceId,DeviceType,Manufacturer,Model,OSVersion,IsPrimary,RegistrationDate,LastSyncDate,PushToken,BatteryLevel,StorageCapacityGB,NetworkType,IsRooted,IsEmulator,Locale,Timezone,ScreenResolution,AppVersion,IsActive) VALUES (2,102,'dev-002','desktop','Dell','XPS13','Windows10',0,'2025-02-15 12:30:00','2025-12-29 14:20:00','token456',65,256,'ethernet',0,0,'en_GB','Europe/London','1920x1080','5.2.1',1);
INSERT INTO user_device_inventory (Id,UserId,DeviceId,DeviceType,Manufacturer,Model,OSVersion,IsPrimary,RegistrationDate,LastSyncDate,PushToken,BatteryLevel,StorageCapacityGB,NetworkType,IsRooted,IsEmulator,Locale,Timezone,ScreenResolution,AppVersion,IsActive) VALUES (3,103,'dev-003','tablet','Samsung','GalaxyTabS7','Android11',0,'2025-03-20 08:45:00','2025-12-28 07:50:00','token789',40,64,'4g',0,0,'ko_KR','Asia/Seoul','1600x2560','5.2.1',0);