-- User Subscription Plans
CREATE TABLE user_subscription_plans
(
    Id INTEGER NOT NULL PRIMARY KEY,
    UserId INTEGER,
    PlanName TEXT,
    StartDate DATETIME,
    EndDate DATETIME,
    AutoRenew INTEGER,
    PriceCents INTEGER,
    BillingCycle TEXT,
    PaymentMethod TEXT,
    PromoCode TEXT,
    IsTrial INTEGER,
    MaxProjects INTEGER,
    StorageGB INTEGER,
    Seats INTEGER,
    SupportLevel TEXT,
    LastBillingDate DATETIME,
    NextBillingDate DATETIME,
    CancellationRequested INTEGER,
    CancellationDate DATETIME,
    Notes TEXT
);

INSERT INTO user_subscription_plans (Id,UserId,PlanName,StartDate,EndDate,AutoRenew,PriceCents,BillingCycle,PaymentMethod,PromoCode,IsTrial,MaxProjects,StorageGB,Seats,SupportLevel,LastBillingDate,NextBillingDate,CancellationRequested,CancellationDate,Notes) VALUES
(1,101,'Basic', '2023-01-01','2024-01-01',0,0,'monthly','creditcard','WELCOME',1,2,10,1,'standard','2023-12-01','2024-01-01',0,NULL,'Initial trial plan'),
(2,102,'Pro', '2022-06-15','2023-06-15',1,1999,'annual','paypal','PRO2022',0,10,100,5,'premium','2023-05-15','2023-06-15',0,NULL,'Annual pro subscription'),
(3,103,'Enterprise', '2021-09-01','2024-09-01',1,9999,'annual','invoice','ENTERPRISE',0,50,1000,20,'enterprise','2024-08-01','2024-09-01',0,NULL,'Enterprise level plan');

-- Post Sponsorships
CREATE TABLE post_sponsorships
(
    Id INTEGER NOT NULL PRIMARY KEY,
    PostId INTEGER,
    SponsorUserId INTEGER,
    SponsorName TEXT,
    AmountCents INTEGER,
    SponsorshipDate DATETIME,
    ExpirationDate DATETIME,
    AdLabel TEXT,
    CampaignId INTEGER,
    IsActive INTEGER,
    Impressions INTEGER,
    Clicks INTEGER,
    CPM REAL,
    CPC REAL,
    CreatedByUserId INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Currency TEXT,
    PaymentStatus TEXT,
    Remarks TEXT
);

INSERT INTO post_sponsorships (Id,PostId,SponsorUserId,SponsorName,AmountCents,SponsorshipDate,ExpirationDate,AdLabel,CampaignId,IsActive,Impressions,Clicks,CPM,CPC,CreatedByUserId,CreatedAt,UpdatedAt,Currency,PaymentStatus,Remarks) VALUES
(1,201,301,'TechCorp',5000,'2023-02-10','2023-08-10','TechBanner',401,1,12000,300,0.42,0.17,101,'2023-02-10','2023-03-01','USD','paid','Quarterly sponsorship'),
(2,202,302,'HealthPlus',7500,'2023-01-15','2023-07-15','HealthAd',402,1,15000,450,0.50,0.16,102,'2023-01-15','2023-02-20','USD','paid','Mid-year campaign'),
(3,203,303,'EduLearn',10000,'2022-12-01','2023-12-01','EduBanner',403,0,20000,600,0.55,0.17,103,'2022-12-01','2023-05-10','USD','pending','Annual education sponsorship');

-- Tag Category Hierarchy
CREATE TABLE tag_category_hierarchy
(
    Id INTEGER NOT NULL PRIMARY KEY,
    TagId INTEGER,
    CategoryId INTEGER,
    CategoryName TEXT,
    ParentCategoryId INTEGER,
    DepthLevel INTEGER,
    DisplayOrder INTEGER,
    IsActive INTEGER,
    CreatedAt DATETIME,
    CreatedByUserId INTEGER,
    UpdatedAt DATETIME,
    UpdatedByUserId INTEGER,
    Description TEXT,
    IconUrl TEXT,
    ColorHex TEXT,
    TagCount INTEGER,
    RelatedTagIds TEXT,
    LastSynced DATETIME,
    SyncStatus TEXT,
    Notes TEXT
);

INSERT INTO tag_category_hierarchy (Id,TagId,CategoryId,CategoryName,ParentCategoryId,DepthLevel,DisplayOrder,IsActive,CreatedAt,CreatedByUserId,UpdatedAt,UpdatedByUserId,Description,IconUrl,ColorHex,TagCount,RelatedTagIds,LastSynced,SyncStatus,Notes) VALUES
(1,1,10,'Programming',NULL,1,1,1,'2023-01-01',101,'2023-04-01',102,'Top level programming tags','/icons/prog.png','FF5733',150,'2,3,4','2023-04-01','synced','Initial load'),
(2,2,11,'Web Development',10,2,2,1,'2023-02-01',101,'2023-04-15',103,'Web related tags','/icons/web.png','33FF57',80,'5,6','2023-04-15','synced','Added subcategory'),
((3,3,12,'Data Science',10,2,3,1,'2023-03-01',102,'2023-05-01',104,'Data science tags','/icons/data.png','3357FF',65,'7,8','2023-05-01','synced','Added');

-- Content Migration Log
CREATE TABLE content_migration_log
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ContentId INTEGER,
    ContentType TEXT,
    SourceSystem TEXT,
    TargetSystem TEXT,
    MigrationDate DATETIME,
    MigratedByUserId INTEGER,
    Status TEXT,
    ErrorMessage TEXT,
    RecordCount INTEGER,
    BytesTransferred INTEGER,
    DurationSeconds INTEGER,
    IsVerified INTEGER,
    VerificationDate DATETIME,
    Remarks TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    SourceVersion TEXT,
    TargetVersion TEXT,
    MigrationBatchId INTEGER
);

INSERT INTO content_migration_log (Id,ContentId,ContentType,SourceSystem,TargetSystem,MigrationDate,MigratedByUserId,Status,ErrorMessage,RecordCount,BytesTransferred,DurationSeconds,IsVerified,VerificationDate,Remarks,CreatedAt,UpdatedAt,SourceVersion,TargetVersion,MigrationBatchId) VALUES
(1,501,'post','legacy_db','new_platform','2023-01-10',101,'success','',1200,24567890,3600,1,'2023-01-11','Migrated posts batch 1','2023-01-10','2023-01-12','v1.0','v2.0',1001),
(2,502,'comment','legacy_db','new_platform','2023-01-12',102,'partial','Missing user refs',3000,12345678,5400,0,NULL,'Partial migration of comments','2023-01-12','2023-01-15','v1.0','v2.0',1002),
(3,503,'user','legacy_db','new_platform','2023-01-15',103,'success','',500,9876543,1800,1,'2023-01-16','User accounts migrated','2023-01-15','2023-01-17','v1.0','v2.0',1003);

-- API Client Credentials
CREATE TABLE api_client_credentials
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ClientName TEXT,
    ClientId TEXT,
    ClientSecret TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    IsActive INTEGER,
    RedirectUri TEXT,
    Scopes TEXT,
    RateLimitPerMinute INTEGER,
    QuotaDaily INTEGER,
    LastUsedAt DATETIME,
    UsageCount INTEGER,
    OwnerUserId INTEGER,
    Description TEXT,
    ContactEmail TEXT,
    DeactivatedAt DATETIME,
    DeactivationReason TEXT,
    PublicKey TEXT,
    PrivateKey TEXT
);

INSERT INTO api_client_credentials (Id,ClientName,ClientId,ClientSecret,CreatedAt,UpdatedAt,IsActive,RedirectUri,Scopes,RateLimitPerMinute,QuotaDaily,LastUsedAt,UsageCount,OwnerUserId,Description,ContactEmail,DeactivatedAt,DeactivationReason,PublicKey,PrivateKey) VALUES
(1,'MobileApp','mobile_001','secret123','2023-01-01','2023-04-01',1,'https://app.example.com/callback','read write',1000,10000,'2023-04-01',2500,101,'Mobile application client','dev@example.com',NULL,NULL,'pubkey1','privkey1'),
(2,'AnalyticsTool','analytics_007','secret456','2023-02-15','2023-05-01',1,'https://analytics.example.com/return','read',500,5000,'2023-05-01',1200,102,'Third‑party analytics integration','analytics@example.com',NULL,NULL,'pubkey2','privkey2'),
(3,'DeprecatedService','oldsvc','oldsecret','2022-06-01','2023-01-01',0,NULL,NULL,0,0,NULL,0,103,'Legacy service no longer used','legacy@example.com','2023-01-01','service deprecated','pubkey3','privkey3');

-- Site Feedback Surveys
CREATE TABLE site_feedback_surveys
(
    Id INTEGER NOT NULL PRIMARY KEY,
    SurveyName TEXT,
    StartDate DATETIME,
    EndDate DATETIME,
    TargetAudience TEXT,
    IsActive INTEGER,
    ParticipationCount INTEGER,
    CompletionRate REAL,
    AverageScore REAL,
    CreatedByUserId INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    SurveyUrl TEXT,
    InvitationEmailTemplateId INTEGER,
    ReminderEmailTemplateId INTEGER,
    ClosingRemarks TEXT,
    MaxResponses INTEGER,
    SurveyType TEXT,
    Language TEXT,
    Notes TEXT
);

INSERT INTO site_feedback_surveys (Id,SurveyName,StartDate,EndDate,TargetAudience,IsActive,ParticipationCount,CompletionRate,AverageScore,CreatedByUserId,CreatedAt,UpdatedAt,SurveyUrl,InvitationEmailTemplateId,ReminderEmailTemplateId,ClosingRemarks,MaxResponses,SurveyType,Language,Notes) VALUES
(1,'Post Quality Survey','2023-03-01','2023-04-01','All Users',1,1500,0.78,4.2,101,'2023-02-20','2023-04-02','https://survey.example.com/q1',201,202,'Thank you for your feedback',2000,'rating','en','Quarterly post quality assessment'),
(2,'New Feature Interest','2023-05-10','2023-06-10','Beta Testers',1,800,0.85,4.7,102,'2023-05-01','2023-06-12','https://survey.example.com/feature',203,204,'We appreciate your insights',1000,'multiple_choice','en','Gather interest for upcoming feature'),
(3,'User Experience Feedback','2022-12-01','2023-01-01','Recent Sign‑ups',0,0,0,0,103,'2022-11-20','2023-01-05','https://survey.example.com/ux',205,206,'Survey closed',1500,'open_ended','en','Year‑end UX survey');

-- Ad Creative Assets
CREATE TABLE ad_creative_assets
(
    Id INTEGER NOT NULL PRIMARY KEY,
    CampaignId INTEGER,
    AssetType TEXT,
    FileName TEXT,
    FilePath TEXT,
    FileSizeBytes INTEGER,
    Width INTEGER,
    Height INTEGER,
    DurationSeconds INTEGER,
    MimeType TEXT,
    UploadDate DATETIME,
    UploadedByUserId INTEGER,
    IsActive INTEGER,
    TargetPlatform TEXT,
    AltText TEXT,
    ClickThroughUrl TEXT,
    CostPerAssetCents INTEGER,
    ApprovalStatus TEXT,
    ApprovedByUserId INTEGER,
    ApprovalDate DATETIME
);

INSERT INTO ad_creative_assets (Id,CampaignId,AssetType,FileName,FilePath,FileSizeBytes,Width,Height,DurationSeconds,MimeType,UploadDate,UploadedByUserId,IsActive,TargetPlatform,AltText,ClickThroughUrl,CostPerAssetCents,ApprovalStatus,ApprovedByUserId,ApprovalDate) VALUES
(1,301,'image','banner1.png','/ads/2023/banner1.png',45231,1200,628,0,'image/png','2023-02-05',101,1,'web','Summer Sale','https://example.com/sale',150,'approved',201,'2023-02-06'),
(2,302,'video','promo.mp4','/ads/2023/promo.mp4',10485760,1920,1080,30,'video/mp4','2023-03-10',102,1,'mobile','Promo Video','https://example.com/promo',500,'pending',NULL,NULL),
(3,303,'image','sidebar_ad.jpg','/ads/2023/sidebar_ad.jpg',78522,300,600,0,'image/jpeg','2023-01-20',103,0,'web','Sidebar Ad','https://example.com/sidebar',80,'rejected',202,'2023-01-21');

-- Search Result Clicks
CREATE TABLE search_result_clicks
(
    Id INTEGER NOT NULL PRIMARY KEY,
    QueryId INTEGER,
    UserId INTEGER,
    ResultPostId INTEGER,
    ClickTimestamp DATETIME,
    RankPosition INTEGER,
    IsSponsored INTEGER,
    ClickSource TEXT,
    DeviceType TEXT,
    Browser TEXT,
    OS TEXT,
    Country TEXT,
    SessionId TEXT,
    ReferrerUrl TEXT,
    ClickDurationMs INTEGER,
    IsConversion INTEGER,
    ConvertedPostId INTEGER,
    ConversionTimestamp DATETIME,
    Notes TEXT,
    CreatedAt DATETIME
);

INSERT INTO search_result_clicks (Id,QueryId,UserId,ResultPostId,ClickTimestamp,RankPosition,IsSponsored,ClickSource,DeviceType,Browser,OS,Country,SessionId,ReferrerUrl,ClickDurationMs,IsConversion,ConvertedPostId,ConversionTimestamp,Notes,CreatedAt) VALUES
(1,401,101,201,'2023-04-12 09:15:23',3,0,'organic','desktop','Chrome','Windows','US','sess001','https://search.example.com','350',0,NULL,NULL,'First click on query 401','2023-04-12 09:15:24'),
(2,402,102,202,'2023-04-12 10:05:47',1,1,'ad','mobile','Safari','iOS','CA','sess002','https://search.example.com','210',1,202,'2023-04-12 10:06:10','Sponsored click leading to conversion','2023-04-12 10:05:48'),
(3,403,103,203,'2023-04-13 14:22:10',5,0,'organic','tablet','Firefox','Android','GB','sess003','https://search.example.com','480',0,NULL,NULL,'Longer dwell time before click','2023-04-13 14:22:11');

-- Forum Moderator Notes
CREATE TABLE forum_moderator_notes
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ModeratorUserId INTEGER,
    ThreadId INTEGER,
    NoteText TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Visibility TEXT,
    IsFlagged INTEGER,
    FlagReason TEXT,
    RelatedUserId INTEGER,
    RelatedPostId INTEGER,
    Category TEXT,
    Priority INTEGER,
    Tags TEXT,
    AttachmentIds TEXT,
    Resolved INTEGER,
    ResolvedAt DATETIME,
    ResolvedByUserId INTEGER,
    FollowUpNeeded INTEGER,
    FollowUpDate DATETIME
);

INSERT INTO forum_moderator_notes (Id,ModeratorUserId,ThreadId,NoteText,CreatedAt,UpdatedAt,Visibility,IsFlagged,FlagReason,RelatedUserId,RelatedPostId,Category,Priority,Tags,AttachmentIds,Resolved,ResolvedAt,ResolvedByUserId,FollowUpNeeded,FollowUpDate) VALUES
(1,201,301,'Inappropriate language detected','2023-03-01','2023-03-02','private',1,'offensive','401','501','behavior',2,'spam,offensive','att001,att002',0,NULL,NULL,1,'2023-04-01'),
(2,202,302,'User repeatedly posting duplicate content','2023-03-15','2023-03-16','private',1,'duplicate','402','502','spam',3,'duplicate,spam','att003',0,NULL,NULL,1,'2023-04-15'),
(3,203,303,'Discussion off‑topic, consider moving','2023-04-05','2023-04-05','public',0,NULL,'403','503','moderation',1,'offtopic','',1,'2023-04-06',204,0,NULL');

-- Knowledge Graph Taxonomy
CREATE TABLE knowledge_graph_taxonomy
(
    Id INTEGER NOT NULL PRIMARY KEY,
    NodeId INTEGER,
    NodeType TEXT,
    ParentNodeId INTEGER,
    Level INTEGER,
    Name TEXT,
    Description TEXT,
    IsDeprecated INTEGER,
    CreatedAt DATETIME,
    CreatedByUserId INTEGER,
    UpdatedAt DATETIME,
    UpdatedByUserId INTEGER,
    Synonyms TEXT,
    RelatedNodeIds TEXT,
    ImportanceScore REAL,
    Source TEXT,
    License TEXT,
    URL TEXT,
    Tags TEXT,
    Notes TEXT
);

INSERT INTO knowledge_graph_taxonomy (Id,NodeId,NodeType,ParentNodeId,Level,Name,Description,IsDeprecated,CreatedAt,CreatedByUserId,UpdatedAt,UpdatedByUserId,Synonyms,RelatedNodeIds,ImportanceScore,Source,License,URL,Tags,Notes) VALUES
(1,1001,'concept',NULL,0,'Programming Language','A language used to write software',0,'2022-01-01','101','2023-03-01','102','code,lang','1002,1003',9.5,'Wikipedia','CC-BY','https://en.wikipedia.org/wiki/Programming_language','technology','Core concept'),
(2,1002,'concept',1001,1,'Compiled Language','Languages that are compiled to machine code',0,'2022-02-01','102','2023-03-05','103','C,Go','1001,1004',8.2,'Wikipedia','CC-BY','https://en.wikipedia.org/wiki/Compiled_language','technology','Derived concept'),
(3,1003,'concept',1001,1,'Interpreted Language','Languages executed by an interpreter',0,'2022-03-01','103','2023-03-10','104','Python,Ruby','1001,1005',8.0,'Wikipedia','CC-BY','https://en.wikipedia.org/wiki/Interpreted_language','technology','Derived concept');