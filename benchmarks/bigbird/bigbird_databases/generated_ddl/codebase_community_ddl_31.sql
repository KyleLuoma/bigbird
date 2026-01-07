-- Daily search trend statistics
CREATE TABLE search_trends_daily
(
    TrendDate DATE,
    SearchTerm TEXT,
    Searches INTEGER,
    Clicks INTEGER,
    CTR REAL,
    Impressions INTEGER,
    AvgPosition REAL,
    DeviceType TEXT,
    Region TEXT,
    Language TEXT,
    IsMobile INTEGER,
    UserSegment TEXT,
    QueryLength INTEGER,
    ResultCount INTEGER,
    RelevanceScore REAL,
    BounceRate REAL,
    ConversionRate REAL,
    Revenue REAL,
    CostPerClick REAL,
    AdImpressionCount INTEGER
);

INSERT INTO search_trends_daily VALUES
('2024-12-01','sql tutorial',12000,3400,0.2833,50000,2.5,'desktop','NA','en',0,'students',3,10,0.92,0.45,0.12,450.00,0.75,1500),
('2024-12-01','python pandas',8500,2100,0.2471,30000,3.2,'mobile','EU','en',1,'data_scientists',2,8,0.88,0.38,0.09,380.00,0.68,1100),
('2024-12-01','react hooks',6300,1800,0.2857,25000,2.9,'tablet','AP','en',1,'frontend_dev',2,12,0.91,0.42,0.11,315.00,0.70,950);

-- Summary of API errors per day
CREATE TABLE api_error_summary
(
    SummaryDate DATE,
    ApiEndpoint TEXT,
    TotalRequests INTEGER,
    ErrorCount INTEGER,
    AvgResponseTimeMs REAL,
    MaxResponseTimeMs REAL,
    MinResponseTimeMs REAL,
    ErrorRate REAL,
    Http5xxCount INTEGER,
    Http4xxCount INTEGER,
    TimeoutCount INTEGER,
    AuthFailureCount INTEGER,
    RateLimitCount INTEGER,
    UniqueUsers INTEGER,
    ClientApp TEXT,
    Platform TEXT,
    Region TEXT,
    LastErrorCode INTEGER,
    LastErrorMessage TEXT,
    IsCritical INTEGER
);

INSERT INTO api_error_summary VALUES
('2024-12-01','/v1/users',150000,320,120.5,450.0,85.0,0.00213,150,120,30,10,5,4800,'mobile_app','iOS','NA',500,'InternalServerError',1),
('2024-12-01','/v1/posts',200000,210,98.2,320.0,70.0,0.00105,80,120,5,4,2,5600,'web_portal','Chrome','EU',404,'NotFound',0),
('2024-12-01','/v1/comments',175000,95,85.7,250.0,60.0,0.00054,20,70,3,2,1,4300,'desktop_app','Windows','AP',429,'TooManyRequests',0);

-- Device network performance metrics
CREATE TABLE device_network_metrics
(
    CaptureTimestamp DATETIME,
    DeviceId INTEGER,
    IpAddress TEXT,
    MacAddress TEXT,
    SignalStrength INTEGER,
    ConnectionType TEXT,
    RxBytes BIGINT,
    TxBytes BIGINT,
    RxPackets BIGINT,
    TxPackets BIGINT,
    PacketLossPercent REAL,
    LatencyMs REAL,
    JitterMs REAL,
    Ssid TEXT,
    Bssid TEXT,
    Channel INTEGER,
    Band TEXT,
    CountryCode TEXT,
    FirmwareVersion TEXT,
    IsOnline INTEGER
);

INSERT INTO device_network_metrics VALUES
('2024-12-01 08:15:00',101,'192.168.1.10','AA:BB:CC:DD:EE:01',-65,'wifi',1250000,890000,1500,1200,0.12,30.5,5.2,'OfficeNet','11:22:33:44:55:66',6,'2.4GHz','US','v1.2.3',1),
('2024-12-01 08:20:00',102,'192.168.1.11','AA:BB:CC:DD:EE:02',-70,'ethernet',2350000,1650000,2500,2100,0.00,5.1,0.8,'','',0,'','US','v2.0.0',1),
('2024-12-01 08:25:00',103,'10.0.0.5','AA:BB:CC:DD:EE:03',-80,'cellular',560000,430000,800,650,1.45,120.0,15.3','MobileNet','33:44:55:66:77:88',11,'5G','CA','v3.1.4',1);

-- Forum moderator shift schedule
CREATE TABLE forum_moderator_schedule
(
    ScheduleId INTEGER PRIMARY KEY,
    ModeratorId INTEGER,
    ForumId INTEGER,
    ShiftDate DATE,
    ShiftStartTime TEXT,
    ShiftEndTime TEXT,
    TimeZone TEXT,
    AssignedBy INTEGER,
    Notes TEXT,
    IsOvertime INTEGER,
    BreakDurationMinutes INTEGER,
    MaxPostsReviewed INTEGER,
    MaxCommentsReviewed INTEGER,
    MaxFlagsHandled INTEGER,
    ShiftType TEXT,
    RemoteAllowed INTEGER,
    NotificationSent INTEGER,
    ScheduleCreated DATETIME,
    ScheduleUpdated DATETIME,
    ApprovalStatus TEXT
);

INSERT INTO forum_moderator_schedule VALUES
(1,201,10,'2024-12-02','08:00:00','16:00:00','UTC',100,'Morning shift',0,30,200,500,150,'regular',1,1,'2024-11-20 09:00:00','2024-11-25 10:15:00','approved'),
(2,202,12,'2024-12-02','16:00:00','00:00:00','UTC',100,'Evening shift',0,25,180,450,130,'regular',1,1,'2024-11-21 10:00:00','2024-11-26 11:20:00','approved'),
(3,203,15,'2024-12-03','00:00:00','08:00:00','UTC',100,'Night shift',1,20,150,400,120,'overtime',0,0,'2024-11-22 11:00:00','2024-11-27 12:30:00','pending');

-- Knowledge graph snapshot metadata
CREATE TABLE knowledge_graph_snapshot
(
    SnapshotId INTEGER PRIMARY KEY,
    SnapshotDate DATE,
    NodeCount INTEGER,
    EdgeCount INTEGER,
    PropertyCount INTEGER,
    AvgDegree REAL,
    MaxDegree INTEGER,
    MinDegree INTEGER,
    ConnectedComponents INTEGER,
    LargestComponentSize INTEGER,
    Density REAL,
    ClusteringCoefficient REAL,
    AvgPathLength REAL,
    Diameter INTEGER,
    IsDirected INTEGER,
    SourceSystem TEXT,
    Version TEXT,
    HashValue TEXT,
    CreatedBy INTEGER,
    CreationTimestamp DATETIME
);

INSERT INTO knowledge_graph_snapshot VALUES
(1,'2024-12-01',1500000,3000000,7500000,4.0,120,1,12,800000,0.00133,0.42,5.8,25,1,'kg_core','v2.5','abc123def456',99,'2024-12-01 00:00:00'),
(2,'2024-11-01',1400000,2800000,7000000,3.99,115,1,13,750000,0.00131,0.41,5.9,24,1,'kg_core','v2.4','def789ghi012',99,'2024-11-01 00:00:00'),
(3,'2024-10-01',1300000,2600000,6500000,3.99,110,1,14,700000,0.00128,0.40,6.0,23,1,'kg_core','v2.3','ghi345jkl678',99,'2024-10-01 00:00:00');

-- Content moderation policy definitions
CREATE TABLE content_moderation_policy
(
    PolicyId INTEGER PRIMARY KEY,
    PolicyName TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    SeverityLevel INTEGER,
    ContentType TEXT,
    MaxLength INTEGER,
    ProhibitedWords TEXT,
    AllowedFormats TEXT,
    ReviewRequired INTEGER,
    AutoFlagThreshold INTEGER,
    ActionOnViolation TEXT,
    NotifyUser INTEGER,
    EscalationLevel INTEGER,
    CreatedBy INTEGER,
    CreationTimestamp DATETIME,
    UpdatedBy INTEGER,
    UpdateTimestamp DATETIME,
    IsActive INTEGER,
    Comments TEXT
);

INSERT INTO content_moderation_policy VALUES
(1,'AdultContentPolicy','2023-01-01','2099-12-31',5,'text',5000,'explicit,violence','markdown,html',1,80,'remove','1',3,100,'2023-01-01 08:00:00',101,'2024-11-15 09:30:00',1,'Policy for adult material'),
(2,'SpamDetectionPolicy','2022-06-15','2099-12-31',3,'text',10000,'spam,advertisement','plain,markdown',1,70,'flag','1',2,102,'2022-06-15 09:00:00',102,'2024-10-20 11:45:00',1,'Detects spammy content'),
(3,'ImageQualityPolicy','2024-01-01','2099-12-31',2,'image',0,'','jpeg,png,gif',0,0,'reject','0',1,103,'2024-01-01 10:00:00',103,'2024-11-01 12:00:00',1,'Ensures image format compliance');

-- Advertiser target audience specifications
CREATE TABLE advertiser_target_audience
(
    AudienceId INTEGER PRIMARY KEY,
    CampaignId INTEGER,
    Demographic TEXT,
    AgeRange TEXT,
    Gender TEXT,
    IncomeBracket TEXT,
    LocationRegion TEXT,
    Interests TEXT,
    DeviceType TEXT,
    Platform TEXT,
    FrequencyCap INTEGER,
    DailyBudget REAL,
    BidAmount REAL,
    EstimatedReach INTEGER,
    CPM REAL,
    CPC REAL,
    ConversionGoal TEXT,
    MetricScore REAL,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO advertiser_target_audience VALUES
(1,5001,'Young Professionals','25-34','female','50k-75k','NorthAmerica','technology,travel','mobile','iOS',3,1500.00,0.75,250000,12.5,0.45,'signup',78.5,'2024-11-01 08:30:00','2024-11-20 10:15:00'),
(2,5002,'College Students','18-24','male','0-30k','Europe','gaming,entertainment','desktop','Windows',5,2000.00,1.10,300000,10.0,0.55,'purchase',82.3,'2024-11-05 09:00:00','2024-11-22 11:45:00'),
(3,5003,'Retirees','55-70','any','30k-50k','Asia','health,finance','tablet','Android',2,1200.00,0.60,180000,9.8,0.40,'newsletter',71.2,'2024-11-10 07:45:00','2024-11-25 13:20:00');

-- User learning achievement records
CREATE TABLE user_learning_achievement
(
    AchievementId INTEGER PRIMARY KEY,
    UserId INTEGER,
    PathId INTEGER,
    AchievementName TEXT,
    DateEarned DATE,
    Points INTEGER,
    Level INTEGER,
    Category TEXT,
    IsSecret INTEGER,
    BadgeUrl TEXT,
    Description TEXT,
    RelatedModuleId INTEGER,
    ProgressPercent REAL,
    ExpirationDate DATE,
    IsRenewable INTEGER,
    Issuer TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    SourceSystem TEXT,
    Metadata TEXT
);

INSERT INTO user_learning_achievement VALUES
(1,301,10,'SQL Mastery','2024-09-15',1500,5,'database',0,'/badges/sql_mastery.png','Awarded for completing advanced SQL modules',200,100.0,'2099-12-31',0,'LearningPlatform','2024-09-15 08:00:00','2024-11-01 09:30:00','internal','{}'),
(2,302,12,'Data Science Rookie','2024-10-01',500,2,'data_science',0,'/badges/ds_rookie.png','First steps in data science',150,100.0,'2099-12-31',0,'LearningPlatform','2024-10-01 09:15:00','2024-11-02 10:45:00','internal','{}'),
(3,303,15,'AI Specialist','2024-11-05',2000,7,'ai',1,'/badges/ai_specialist.png','Secret achievement for AI experts',250,100.0,'2099-12-31',0,'LearningPlatform','2024-11-05 10:30:00','2024-11-06 11:00:00','internal','{}');

-- Supplementary information for posts
CREATE TABLE post_supplementary_info
(
    PostId INTEGER PRIMARY KEY,
    Summary TEXT,
    Highlights TEXT,
    ReadingTimeMinutes INTEGER,
    DifficultyLevel TEXT,
    AudienceTag TEXT,
    RelatedPostIds TEXT,
    ExternalReferenceUrl TEXT,
    ImageCount INTEGER,
    VideoCount INTEGER,
    AudioCount INTEGER,
    TableCount INTEGER,
    CodeSnippetCount INTEGER,
    WordCount INTEGER,
    CharCount INTEGER,
    PublishStatus TEXT,
    ReviewScore REAL,
    SEOScore REAL,
    Language TEXT,
    LastUpdated DATETIME
);

INSERT INTO post_supplementary_info VALUES
(1001,'Overview of indexing strategies','Key points: B-tree, hash, GiST','12','intermediate','developers','1002,1003','https://example.com/indexing','2','0','0','1','3','1500','9500','published',4.5,78.2,'en','2024-11-20 14:00:00'),
(1002,'Guide to transaction isolation','Highlights: read committed, repeatable read','10','intermediate','db_admins','1001,1004','https://example.com/transactions','1','0','0','0','2','1200','7200','published',4.2,80.5,'en','2024-11-18 09:30:00'),
(1003,'Understanding query planners','Key takeaways: cost models, hints','8','beginner','students','1001','https://example.com/query-planner','0','0','0','0','1','900','5400','draft',3.9,70.1,'en','2024-11-15 11:45:00');

-- Geographic traffic statistics
CREATE TABLE geo_traffic_stats
(
    StatId INTEGER PRIMARY KEY,
    CountryCode TEXT,
    Region TEXT,
    City TEXT,
    Latitude REAL,
    Longitude REAL,
    Visits INTEGER,
    UniqueVisitors INTEGER,
    PageViews INTEGER,
    BounceRate REAL,
    AvgSessionDurationSeconds REAL,
    NewVisitorPercent REAL,
    ReturningVisitorPercent REAL,
    TrafficSource TEXT,
    DeviceCategory TEXT,
    Date DATE,
    Hour INTEGER,
    IsMobile INTEGER,
    ConversionCount INTEGER,
    Revenue REAL,
    DataCollectedAt DATETIME
);

INSERT INTO geo_traffic_stats VALUES
(1,'US','California','San Francisco',37.7749,-122.4194,4500,3800,7200,0.45,210.5,0.60,0.40,'organic','desktop','2024-11-30',14,0,120,5600.00,'2024-11-30 14:15:00'),
(2,'GB','England','London',51.5074,-0.1278,3200,2700,5000,0.38,185.2,0.55,0.45,'referral','mobile','2024-11-30',16,1,95,4200.00,'2024-11-30 16:05:00'),
(3,'JP','Tokyo','Tokyo',35.6895,139.6917,2800,2400,4600,0.42,200.0,0.50,0.50,'paid','tablet','2024-11-30',18,1,85,3800.00,'2024-11-30 18:20:00');