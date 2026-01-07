-- Table storing user favorite topics and related metrics
CREATE TABLE user_favorite_topics
(
    Id INTEGER NOT NULL PRIMARY KEY,
    UserId INTEGER,
    TopicId INTEGER,
    PreferenceScore INTEGER,
    Weight FLOAT,
    LastUpdated DATETIME,
    CreatedAt DATETIME,
    Source TEXT,
    ConfidenceLevel INTEGER,
    TagList TEXT,
    Category TEXT,
    Subcategory TEXT,
    IsActive INTEGER,
    Rank INTEGER,
    ViewCount INTEGER,
    ClickCount INTEGER,
    ShareCount INTEGER,
    CommentCount INTEGER,
    LikeCount INTEGER,
    DislikeCount INTEGER,
    Note TEXT,
    ExternalRefId TEXT
);
INSERT INTO user_favorite_topics VALUES (1,101,5001,85,0.9,'2024-12-01 10:00:00','2024-01-01 09:00:00','system',95,'tech,ai','Technology','ArtificialIntelligence',1,10,1500,300,45,20,500,10,'high interest','REF123');
INSERT INTO user_favorite_topics VALUES (2,102,5002,70,0.8,'2024-12-02 11:00:00','2024-02-01 10:00:00','user',80,'science,space','Science','Astronomy',1,20,1200,250,30,15,400,5,'moderate interest','REF124');
INSERT INTO user_favorite_topics VALUES (3,103,5003,60,0.7,'2024-12-03 12:00:00','2024-03-01 11:00:00','import',70,'health,fitness','Health','Wellness',0,30,800,200,20,8,300,3,'low interest','REF125');

-- Table capturing detailed audience statistics per post
CREATE TABLE post_audience_stats
(
    Id INTEGER NOT NULL PRIMARY KEY,
    PostId INTEGER,
    Date DATE,
    UniqueVisitors INTEGER,
    PageViews INTEGER,
    AvgTimeOnPage FLOAT,
    BounceRate FLOAT,
    ScrollDepthAvg INTEGER,
    DeviceDesktop INTEGER,
    DeviceMobile INTEGER,
    DeviceTablet INTEGER,
    BrowserChrome INTEGER,
    BrowserFirefox INTEGER,
    BrowserSafari INTEGER,
    OSWindows INTEGER,
    OSLinux INTEGER,
    OSMac INTEGER,
    CountryUS INTEGER,
    CountryCA INTEGER,
    CountryGB INTEGER,
    CountryAU INTEGER,
    ReferralSearch INTEGER,
    ReferralSocial INTEGER,
    ReferralDirect INTEGER,
    ReferralEmail INTEGER,
    ConversionCount INTEGER,
    Revenue FLOAT
);
INSERT INTO post_audience_stats VALUES (1,2001,'2024-12-01',1200,2500,85.5,0.45,70,800,300,100,500,400,300,200,150,250,600,200,100,80,300,150,250,100,20,15.75);
INSERT INTO post_audience_stats VALUES (2,2002,'2024-12-02',1500,3000,90.2,0.40,75,900,350,120,600,450,350,250,180,270,650,250,120,90,350,180,320,110,25,18.20);
INSERT INTO post_audience_stats VALUES (3,2003,'2024-12-03',1100,2100,80.1,0.48,68,750,280,90,480,380,290,190,140,230,580,180,95,70,280,130,240,90,18,13.60);

-- Table logging content translation jobs for posts and comments
CREATE TABLE content_translation_jobs
(
    Id INTEGER NOT NULL PRIMARY KEY,
    SourceObjectId INTEGER,
    SourceObjectType TEXT,
    TargetLanguageCode TEXT,
    JobStatus TEXT,
    SubmittedAt DATETIME,
    StartedAt DATETIME,
    CompletedAt DATETIME,
    WordCount INTEGER,
    CharacterCount INTEGER,
    TranslatorVendor TEXT,
    CostUSD FLOAT,
    ConfidenceScore FLOAT,
    SourceLanguageCode TEXT,
    TranslationEngine TEXT,
    QualityAuditScore INTEGER,
    ReviewerId INTEGER,
    ReviewComments TEXT,
    IsMachineGenerated INTEGER,
    IsHumanReviewed INTEGER,
    PriorityLevel INTEGER,
    EstimatedCompletionHours FLOAT,
    ActualDurationHours FLOAT,
    ErrorMessage TEXT,
    RetryCount INTEGER,
    NotificationSent INTEGER
);
INSERT INTO content_translation_jobs VALUES (1,2001,'post','es','completed','2024-12-01 08:00:00','2024-12-01 08:15:00','2024-12-01 09:00:00',500,3000,'VendorA',12.5,0.96,'en','EngineX',90,301,'good translation',1,1,2,0.75,0.9,'',0,1);
INSERT INTO content_translation_jobs VALUES (2,3005,'comment','fr','failed','2024-12-02 10:30:00','2024-12-02 10:45:00',NULL,120,720,'VendorB',3.2,0.45,'en','EngineY',60,302,'timeout error',0,0,3,1.0,1.5,'timeout_exception',1,0);
INSERT INTO content_translation_jobs VALUES (3,4002,'post','de','in_progress','2024-12-03 14:20:00','2024-12-03 14:35:00',NULL,800,4800,'VendorC',20.0,0.88,'en','EngineZ',85,303,'',1,0,1,2.0,NULL,'',0,0);

-- Table storing advertisement inventory slots and pricing
CREATE TABLE advertisement_inventory
(
    Id INTEGER NOT NULL PRIMARY KEY,
    SlotName TEXT,
    Placement TEXT,
    PageSection TEXT,
    DeviceTarget TEXT,
    SizeWidth INTEGER,
    SizeHeight INTEGER,
    BaseCPM FLOAT,
    CurrentCPM FLOAT,
    AvailabilityStart DATE,
    AvailabilityEnd DATE,
    MaxImpressions INTEGER,
    ServedImpressions INTEGER,
    ClickThroughs INTEGER,
    ViewabilityRate FLOAT,
    FraudScore INTEGER,
    BrandSafetyScore INTEGER,
    AudienceAgeGroup TEXT,
    AudienceGender TEXT,
    GeographicTarget TEXT,
    LanguageTarget TEXT,
    FrequencyCap INTEGER,
    RevenueEarned FLOAT,
    LastUpdated DATETIME,
    IsActive INTEGER,
    CreatorUserId INTEGER,
    Notes TEXT,
    Vendor TEXT,
    ContractId INTEGER,
    BillingCycle TEXT
);
INSERT INTO advertisement_inventory VALUES (1,'TopBanner','Header','AboveFold','Desktop',728,90,5.0,6.2,'2024-01-01','2024-12-31',1000000,850000,4500,0.95,12,85,'18-34','All','US','en',3,5270.0,'2024-12-01 12:00:00',1,101,'high demand slot','VendorX',2001,'Monthly');
INSERT INTO advertisement_inventory VALUES (2,'SideSkyscraper','Sidebar','RightRail','Mobile',300,250,4.0,4.8,'2024-06-01','2025-05-31',800000,600000,3200,0.92,10,80,'25-44','Male','EU','en',2,2880.0,'2024-12-01 12:10:00',1,102,'stable performance','VendorY',2002,'Quarterly');
INSERT INTO advertisement_inventory VALUES (3,'FooterStrip','Footer','Bottom','Tablet',970,90,3.5,3.9,'2024-03-15','2024-09-15',500000,300000,1900,0.88,8,78,'35-54','Female','APAC','en',1,1170.0,'2024-12-01 12:20:00',0,103,'seasonal slot','VendorZ',2003,'Monthly');

-- Table tracking external content links referenced in posts
CREATE TABLE external_content_links
(
    Id INTEGER NOT NULL PRIMARY KEY,
    PostId INTEGER,
    Url TEXT,
    LinkType TEXT,
    AnchorText TEXT,
    IsAffiliate INTEGER,
    ClickCount INTEGER,
    LastClicked DATETIME,
    DomainAuthority INTEGER,
    PageRank INTEGER,
    AddedAt DATETIME,
    AddedByUserId INTEGER,
    IsNoFollow INTEGER,
    IsSponsored INTEGER,
    LanguageCode TEXT,
    ContentCategory TEXT,
    TrustScore INTEGER,
    IsBroken INTEGER,
    BrokenDetectedAt DATETIME,
    RepairAttempts INTEGER,
    RepairStatus TEXT,
    SourcePlatform TEXT,
    ApprovalStatus TEXT,
    ModerationNotes TEXT,
    IsArchived INTEGER,
    ArchiveDate DATETIME,
    TagList TEXT,
    RelatedPostId INTEGER,
    EvaluationScore FLOAT,
    ReviewUserId INTEGER
);
INSERT INTO external_content_links VALUES (1,2001,'https://example.com/article','reference','example article',0,150,'2024-11-30 14:00:00',80,5,'2024-10-01 09:00:00',101,0,0,'en','Technology',90,0,NULL,0,'none','system','approved','',0,NULL,'tech,reference',2005,85.5,301);
INSERT INTO external_content_links VALUES (2,2003,'https://partner.org/resource','download','partner resource',1,45,'2024-11-28 10:30:00',70,3,'2024-09-15 08:30:00',102,1,1,'en','Education',75,0,NULL,0,'none','system','approved','',0,NULL,'education,download',2007,78.2,302);
INSERT INTO external_content_links VALUES (3,2005,'https://brokenlink.net','reference','broken link',0,0,NULL,50,2,'2024-08-20 11:00:00',103,0,0,'en','Misc',40,1,'2024-12-01 09:00:00',2,'failed','system','rejected','link not reachable',0,NULL,'misc',0,60.0,303);

-- Table representing forum category hierarchy and metadata
CREATE TABLE forum_category_hierarchy
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ParentCategoryId INTEGER,
    CategoryName TEXT,
    Description TEXT,
    DisplayOrder INTEGER,
    IsVisible INTEGER,
    CreationDate DATETIME,
    CreatedByUserId INTEGER,
    LastModifiedDate DATETIME,
    ModifiedByUserId INTEGER,
    IconName TEXT,
    ThemeColor TEXT,
    ThreadCount INTEGER,
    PostCount INTEGER,
    SubscriberCount INTEGER,
    ModeratorUserId INTEGER,
    AccessLevel TEXT,
    LanguageCode TEXT,
    SEOKeywords TEXT,
    SEODescription TEXT,
    FriendlyUrl TEXT,
    ExternalReferenceId TEXT,
    IsArchived INTEGER,
    ArchiveDate DATETIME,
    RetentionPolicyDays INTEGER,
    MetaTitle TEXT,
    MetaRobots TEXT,
    AnalyticsTag TEXT,
    FeaturedPostId INTEGER,
    CustomCssClass TEXT,
    AuditLogId INTEGER
);
INSERT INTO forum_category_hierarchy VALUES (1,NULL,'General Discussion','Open forum for all topics',1,1,'2023-01-01 00:00:00',1,'2024-11-01 12:00:00',2,'icon_general','#FFFFFF',1500,35000,5000,10,'public','en','general,discussion','general discussion forum','/forum/general','EXT001',0,NULL,365,'General Forum','index','analytics_general',2001,'','5001');
INSERT INTO forum_category_hierarchy VALUES (2,1,'Technology','Tech news and talks',2,1,'2023-02-15 00:00:00',3,'2024-10-20 09:30:00',4,'icon_tech','#0000FF',800,20000,3000,12,'public','en','tech,software','technology forum','/forum/technology','EXT002',0,NULL,730,'Technology Forum','index','analytics_tech',2002,'tech-bg','5002');
INSERT INTO forum_category_hierarchy VALUES (3,1,'Community','Community events and polls',3,1,'2023-03-10 00:00:00',5,'2024-09-15 08:45:00',6,'icon_community','#00FF00',400,9000,1500,14,'public','en','community,events','community forum','/forum/community','EXT003',0,NULL,180,'Community Forum','index','analytics_comm',2003,'comm-bg','5003');

-- Table for knowledge graph relationships between entities
CREATE TABLE knowledge_graph_relationships
(
    Id INTEGER NOT NULL PRIMARY KEY,
    SourceNodeId INTEGER,
    TargetNodeId INTEGER,
    RelationType TEXT,
    Weight FLOAT,
    CreatedAt DATETIME,
    CreatedByUserId INTEGER,
    UpdatedAt DATETIME,
    UpdatedByUserId INTEGER,
    ConfidenceScore FLOAT,
    IsDirected INTEGER,
    SourceLabel TEXT,
    TargetLabel TEXT,
    SourceCategory TEXT,
    TargetCategory TEXT,
    Provenance TEXT,
    EvidenceCount INTEGER,
    IsInferred INTEGER,
    InferenceMethod TEXT,
    ValidationStatus TEXT,
    ValidationDate DATETIME,
    ValidationByUserId INTEGER,
    Comments TEXT,
    IsActive INTEGER,
    DeactivationDate DATETIME,
    DeactivatedByUserId INTEGER,
    RelationshipId TEXT,
    SnapshotsTaken INTEGER,
    LastSnapshotAt DATETIME,
    ExternalReference TEXT,
    AuditTrailId INTEGER
);
INSERT INTO knowledge_graph_relationships VALUES (1,1001,2001,'authorship',0.95,'2024-01-01 10:00:00',101,'2024-06-01 12:00:00',102,0.98,1,'User','Post','Person','Content','system',5,0,'','validated','2024-06-02 13:00:00',103,'author link validated',1,NULL,NULL,'REL001',3,'2024-06-02 13:00:00','',2001);
INSERT INTO knowledge_graph_relationships VALUES (2,3005,4002,'citation',0.85,'2023-11-15 09:30:00',104,'2024-04-20 11:15:00',105,0.88,1,'Article','Article','Publication','Publication','import',2,0,'','validated','2024-04-21 12:00:00',106,'citation link validated',1,NULL,NULL,'REL002',2,'2024-04-21 12:00:00','',2002);
INSERT INTO knowledge_graph_relationships VALUES (3,5003,6004,'related_to',0.70,'2022-08-05 14:45:00',107,'2023-02-10 15:30:00',108,0.72,0,'Tag','Tag','Keyword','Keyword','system',1,1,'semantic','pending',NULL,NULL,'pending inference',1,NULL,NULL,'REL003',1,'2023-02-10 15:30:00','',2003);

-- Table for learning path enrollments and progress tracking
CREATE TABLE learning_path_enrollments
(
    Id INTEGER NOT NULL PRIMARY KEY,
    UserId INTEGER,
    LearningPathId INTEGER,
    EnrollmentDate DATETIME,
    CompletionDate DATETIME,
    CurrentModuleId INTEGER,
    ProgressPercentage FLOAT,
    IsActive INTEGER,
    LastAccessed DATETIME,
    TotalModules INTEGER,
    CompletedModules INTEGER,
    EarnedBadgeId INTEGER,
    CertificateId INTEGER,
    AdvisorUserId INTEGER,
    ReferralSource TEXT,
    EnrollmentMethod TEXT,
    ExpectedCompletionDate DATETIME,
    HoursInvested FLOAT,
    AverageScore FLOAT,
    IsCertified INTEGER,
    CertificationDate DATETIME,
    CertificationProvider TEXT,
    FeedbackScore INTEGER,
    FeedbackComments TEXT,
    IsPremium INTEGER,
    DiscountCode TEXT,
    PaymentTransactionId TEXT,
    RefundRequested INTEGER,
    RefundProcessed INTEGER,
    RefundAmount FLOAT,
    NotificationSent INTEGER,
    ReminderCount INTEGER,
    LastReminderSent DATETIME,
    SuspensionReason TEXT,
    IsSuspended INTEGER,
    SuspensionDate DATETIME,
    ReactivationDate DATETIME,
    AuditLogId INTEGER,
    CustomField1 TEXT,
    CustomField2 TEXT
);
INSERT INTO learning_path_enrollments VALUES (1,101,3001,'2024-01-15 08:00:00','2024-04-20 16:30:00',3105,100.0,1,'2024-04-20 16:30:00',12,12,401,'CERT5001',201,'email','self','2024-04-30 23:59:59',45.5,92.3,1,'2024-04-20 16:30:00','PlatformX',5,'great course',1,'SPRING2024','TXN12345',0,0,0.0,1,2,'2024-04-15 09:00:00',NULL,0,NULL,NULL,NULL,5001,'','');
INSERT INTO learning_path_enrollments VALUES (2,102,3002,'2024-02-10 09:30:00',NULL,3202,45.0,1,'2024-12-01 10:15:00',10,4,402,NULL,202,'partner','referral','2024-09-15 23:59:59',30.0,78.0,0,NULL,NULL,3,'needs improvement',0,'SUMMER2024','TXN12346',0,0,0.0,1,1,'2024-03-01 08:45:00',NULL,0,NULL,NULL,NULL,5002,'','');
INSERT INTO learning_path_enrollments VALUES (3,103,3003,'2023-11-05 11:20:00','2024-01-20 14:00:00',3301,100.0,1,'2024-01-20 14:00:00',8,8,403,'CERT5003',203,'ad','self','2024-02-28 23:59:59',20.0,85.5,1,'2024-01-20 14:00:00','PlatformY',4,'satisfactory',1,'WINTER2023','TXN12347',0,0,0.0,1,3,'2024-01-15 12:00:00',NULL,0,NULL,NULL,NULL,5003,'','');

-- Table logging advertisement click events with detailed attributes
CREATE TABLE ad_clicks
(
    Id INTEGER NOT NULL PRIMARY KEY,
    AdId INTEGER,
    UserId INTEGER,
    ClickTimestamp DATETIME,
    CampaignId INTEGER,
    Placement TEXT,
    DeviceType TEXT,
    Browser TEXT,
    OperatingSystem TEXT,
    CountryCode TEXT,
    Region TEXT,
    City TEXT,
    ReferrerUrl TEXT,
    ClickCost FLOAT,
    IsViewable INTEGER,
    ViewabilityScore FLOAT,
    InteractionType TEXT,
    IsDuplicate INTEGER,
    ConversionId INTEGER,
    ConversionValue FLOAT,
    AttributionModel TEXT,
    ClickId TEXT,
    FraudScore INTEGER,
    IsBlocked INTEGER,
    BlockReason TEXT,
    SessionId TEXT,
    IsBotTraffic INTEGER,
    BotScore FLOAT,
    CreativeId INTEGER,
    ExperimentGroup TEXT,
    A/BTestVariant TEXT,
    LoggedAt DATETIME,
    ProcessedAt DATETIME,
    ProcessingStatus TEXT,
    ErrorMessage TEXT,
    SourceIP TEXT,
    IsIPInWhitelist INTEGER,
    IsIPInBlacklist INTEGER,
    GeoAccuracyMeters INTEGER,
    Latitude FLOAT,
    Longitude FLOAT,
    IsVerified INTEGER,
    VerificationMethod TEXT,
    VerificationTimestamp DATETIME
);
INSERT INTO ad_clicks VALUES (1,501,101,'2024-12-01 08:15:00',2001,'Header','Desktop','Chrome','Windows','US','CA','LosAngeles','https://search.example.com',0.05,1,0.98,'click',0,3001,15.0,'last_click','CLK001',10,0,'', 'SID001',0,0.2,601,'control','A', '2024-12-01 08:15:05','2024-12-01 08:15:10','processed','', '192.0.2.1',1,0,30,34.0522,-118.2437,1,'ip_check','2024-12-01 08:15:10');
INSERT INTO ad_clicks VALUES (2,502,102,'2024-12-01 09:30:00',2002,'Sidebar','Mobile','Safari','iOS','GB','ENG','London','https://social.example.com',0.07,1,0.95,'click',0,3002,20.0,'first_click','CLK002',5,0,'', 'SID002',0,0.1,602,'variant','B', '2024-12-01 09:30:05','2024-12-01 09:30:10','processed','', '198.51.100.2',1,0,15,51.5074,-0.1278,1,'ip_check','2024-12-01 09:30:10');
INSERT INTO ad_clicks VALUES (3,503,103,'2024-12-01 10:45:00',2003,'Footer','Tablet','Firefox','Android','AU','NSW','Sydney','https://news.example.com',0.06,1,0.97,'click',1,3003,0.0,'none','CLK003',20,1,'fraud','SID003',1,0.9,603,'control','A', '2024-12-01 10:45:05','2024-12-01 10:45:10','rejected','fraud_detected','203.0.113.3',0,1,5,-33.8688,151.2093,0,'','');

-- Table for project milestones tracking across teams
CREATE TABLE project_milestones
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ProjectId INTEGER,
    MilestoneName TEXT,
    Description TEXT,
    StartDate DATETIME,
    TargetDate DATETIME,
    EndDate DATETIME,
    OwnerTeamId INTEGER,
    OwnerUserId INTEGER,
    Status TEXT,
    PriorityLevel INTEGER,
    RiskLevel TEXT,
    BudgetAllocated FLOAT,
    BudgetSpent FLOAT,
    PercentComplete FLOAT,
    Dependencies TEXT,
    Deliverables TEXT,
    AcceptanceCriteria TEXT,
    StakeholderIds TEXT,
    CommunicationPlan TEXT,
    ChangeLog TEXT,
    IsCritical INTEGER,
    CreatedAt DATETIME,
    CreatedByUserId INTEGER,
    UpdatedAt DATETIME,
    UpdatedByUserId INTEGER,
    ReviewDate DATETIME,
    ReviewerUserId INTEGER,
    IsApproved INTEGER,
    ApprovalDate DATETIME,
    ApprovalUserId INTEGER,
    Comments TEXT,
    Tags TEXT,
    ExternalReference TEXT,
    AuditLogId INTEGER,
    CustomFieldA TEXT,
    CustomFieldB TEXT,
    CustomFieldC TEXT,
    CustomFieldD TEXT,
    CustomFieldE TEXT
);
INSERT INTO project_milestones VALUES (1,1001,'Design Phase','Complete UI/UX designs', '2024-01-01 00:00:00','2024-02-15 00:00:00',NULL,10,501,'in_progress',2,'medium',50000.0,20000.0,40.0,'','','', '201,202','weekly_updates','',1,'2024-01-01 09:00:00',501,'2024-03-01 10:00:00',502,NULL,NULL,0,NULL,NULL,'Initial design started','design,ui','DES001',6001,'','','','','');
INSERT INTO project_milestones VALUES (2,1002,'Implementation','Develop core features', '2024-02-20 00:00:00','2024-05-30 00:00:00',NULL,12,502,'planned',3,'high',150000.0,0.0,0.0,'Design Phase','Feature Set A','All tests pass','203,204','biweekly_meetings','',0,'2024-02-20 09:30:00',502,'2024-02-20 09:30:00',502,NULL,NULL,0,NULL,NULL,'Implementation not started yet','development,core','IMP001',6002,'','','','','');
INSERT INTO project_milestones VALUES (3,1003,'Launch','Public release of product', '2024-06-01 00:00:00','2024-07-15 00:00:00',NULL,15,503,'planned',1,'low',80000.0,0.0,0.0,'Implementation','Release Candidate','Beta feedback collected','205,206','monthly_report','',0,'2024-06-01 08:00:00',503,'2024-06-01 08:00:00',503,NULL,NULL,0,NULL,NULL,'Launch preparations','release,marketing','LCH001',6003,'','','','','');

-- Table logging user device inventory details with hardware specs
CREATE TABLE device_inventory_snapshot
(
    Id INTEGER NOT NULL PRIMARY KEY,
    DeviceId INTEGER,
    UserId INTEGER,
    SnapshotTimestamp DATETIME,
    DeviceType TEXT,
    Manufacturer TEXT,
    Model TEXT,
    OSVersion TEXT,
    CPU TEXT,
    RAMGB INTEGER,
    StorageGB INTEGER,
    ScreenSizeInches FLOAT,
    ScreenResolution TEXT,
    BatteryCapacityMah INTEGER,
    IsCharging INTEGER,
    NetworkType TEXT,
    WifiMacAddress TEXT,
    BluetoothMacAddress TEXT,
    SerialNumber TEXT,
    WarrantyExpiration DATE,
    LastFirmwareUpdate DATETIME,
    CurrentFirmwareVersion TEXT,
    SecurityPatchLevel DATE,
    EncryptionEnabled INTEGER,
    IsRooted INTEGER,
    DeviceLocation TEXT,
    IPAddress TEXT,
    GeoLatitude FLOAT,
    GeoLongitude FLOAT,
    IsActive INTEGER,
    DecommissionDate DATE,
    DecommissionReason TEXT,
    AssignedGroup TEXT,
    OwnerContact TEXT,
    AssetTag TEXT,
    PurchaseDate DATE,
    PurchaseVendor TEXT,
    CostUSD FLOAT,
    MaintenanceContractId INTEGER,
    LastMaintenanceDate DATE,
    MaintenanceNotes TEXT,
    AuditLogId INTEGER,
    CustomAttribute1 TEXT,
    CustomAttribute2 TEXT
);
INSERT INTO device_inventory_snapshot VALUES (1,9001,101,'2024-12-01 07:00:00','Laptop','Dell','XPS13','Windows10','Intel i7',16,512,13.3,'1920x1080',4500,0,'WiFi','00:1A:2B:3C:4D:5E','00:1A:2B:3C:4D:5F','SN12345','2026-12-31','2024-11-15 09:00:00','v1.2.3','2024-10-01',1,0,'Office1','192.0.2.10',37.7749,-122.4194,1,NULL,NULL,'Engineering','john.doe@example.com','AT001','2022-01-15','TechVendor','1500.0',3001,'2024-06-01','','6001','Custom1','Custom2');
INSERT INTO device_inventory_snapshot VALUES (2,9002,102,'2024-12-01 07:05:00','Mobile','Apple','iPhone12','iOS14','A14 Bionic',4,128,6.1,'1170x2532',2815,1,'Cellular','00:1A:2B:3C:4D:6E','00:1A:2B:3C:4D:6F','SN54321','2025-08-15','2024-11-20 10:00:00','v14.4','2024-09-15',1,0,'Remote','192.0.2.20',40.7128,-74.0060,1,NULL,NULL,'Sales','jane.smith@example.com','AT002','2022-05-20','AppleStore','999.0',3002,'2024-07-15','','6002','CustomA','CustomB');
INSERT INTO device_inventory_snapshot VALUES (3,9003,103,'2024-12-01 07:10:00','Tablet','Samsung','GalaxyTabS7','Android11','Snapdragon 865+',6,256,11.0,'2560x1600',8000,0,'WiFi','00:1A:2B:3C:4D:7E','00:1A:2B:3C:4D:7F','SN98765','2027-03-01','2024-11-25 11:30:00','v3.1','2024-11-01',1,0,'Field','192.0.2.30',34.0522,-118.2437,1,NULL,NULL,'Support','alice.wong@example.com','AT003','2023-03-10','SamsungStore','799.0',3003,'2024-08-20','','6003','CustomX','CustomY');