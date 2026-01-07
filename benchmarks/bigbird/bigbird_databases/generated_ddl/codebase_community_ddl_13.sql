-- System event logs
CREATE TABLE system_event_logs (
    Id INTEGER PRIMARY KEY,
    EventType TEXT,
    EventTimestamp DATETIME,
    SourceServer TEXT,
    UserId INTEGER,
    SessionId TEXT,
    ProcessId INTEGER,
    ThreadId INTEGER,
    SeverityLevel INTEGER,
    Message TEXT,
    StackTrace TEXT,
    CorrelationId TEXT,
    TenantId INTEGER,
    ApplicationName TEXT,
    ModuleName TEXT,
    OperationName TEXT,
    DurationMs INTEGER,
    PayloadSizeBytes INTEGER,
    IpAddress TEXT,
    UserAgent TEXT,
    LocationCountry TEXT,
    LocationRegion TEXT,
    LocationCity TEXT,
    IsHandled INTEGER,
    ErrorCode INTEGER
);
INSERT INTO system_event_logs VALUES (1, 'LoginSuccess', '2023-01-01 08:15:00', 'web01', 101, 'sessA1', 2001, 10, 1, 'User logged in', '', 'corr001', 1, 'AuthApp', 'AuthModule', 'ValidateCredentials', 120, 0, '192.168.1.10', 'Chrome/112', 'US', 'CA', 'SanFrancisco', 1, 0);
INSERT INTO system_event_logs VALUES (2, 'FileUpload', '2023-01-02 14:22:13', 'filesrv02', 202, 'sessB2', 2002, 11, 2, 'File uploaded', '', 'corr002', 2, 'FileService', 'UploadModule', 'StoreFile', 850, 204800, '10.0.0.5', 'Firefox/111', 'GB', 'ENG', 'London', 1, 0);
INSERT INTO system_event_logs VALUES (3, 'DataExport', '2023-01-03 09:05:45', 'db01', 303, 'sessC3', 2003, 12, 3, 'Export completed', '', 'corr003', 3, 'ExportTool', 'ExportModule', 'GenerateCSV', 4500, 1024000, '172.16.0.8', 'Edge/110', 'AU', 'NSW', 'Sydney', 0, 1001);

-- User learning journal
CREATE TABLE user_learning_journal (
    Id INTEGER PRIMARY KEY,
    UserId INTEGER,
    JournalDate DATE,
    Topic TEXT,
    HoursSpent INTEGER,
    CompletionStatus TEXT,
    Notes TEXT,
    MentorId INTEGER,
    SkillLevelBefore INTEGER,
    SkillLevelAfter INTEGER,
    LearningMethod TEXT,
    ResourceUrl TEXT,
    CertificateEarned INTEGER,
    PointsEarned INTEGER,
    Reflection TEXT,
    NextSteps TEXT,
    ConfidenceScore INTEGER,
    FeedbackScore INTEGER,
    ExternalProvider TEXT,
    CourseId TEXT,
    SessionCount INTEGER,
    DurationMinutes INTEGER
);
INSERT INTO user_learning_journal VALUES (1, 101, '2023-01-10', 'SQLBasics', 3, 'Completed', 'Covered SELECT and JOIN', 201, 1, 3, 'OnlineCourse', 'http://example.com/sql', 1, 150, 'Good progress', 'Practice complex queries', 80, 85, 'Coursera', 'SQL101', 1, 180);
INSERT INTO user_learning_journal VALUES (2, 102, '2023-01-12', 'DataViz', 2, 'InProgress', 'Exploring chart types', 202, 2, 2, 'Webinar', 'http://example.com/dataviz', 0, 80, 'Need more hands‑on', 'Create dashboard project', 65, 70, 'Udemy', 'DV202', 1, 120);
INSERT INTO user_learning_journal VALUES (3, 103, '2023-01-15', 'MachineLearning', 4, 'Completed', 'Implemented linear regression', 203, 1, 4, 'Bootcamp', 'http://example.com/ml', 1, 200, 'Challenging but rewarding', 'Start deep learning module', 90, 95, 'edX', 'ML303', 2, 240);

-- Content translation requests
CREATE TABLE content_translation_requests (
    Id INTEGER PRIMARY KEY,
    ContentId INTEGER,
    ContentType TEXT,
    SourceLanguage TEXT,
    TargetLanguage TEXT,
    RequestDate DATETIME,
    RequestedByUserId INTEGER,
    TranslatorId INTEGER,
    TranslationStatus TEXT,
    WordCount INTEGER,
    EstimatedCost DECIMAL(10,2),
    ActualCost DECIMAL(10,2),
    DeliveryDate DATETIME,
    RevisionNumber INTEGER,
    Comments TEXT,
    QualityScore INTEGER,
    EngineUsed TEXT,
    PriorityLevel INTEGER,
    ProjectCode TEXT,
    Tags TEXT
);
INSERT INTO content_translation_requests VALUES (1, 5001, 'Post', 'en', 'es', '2023-01-05 10:00:00', 101, 301, 'Completed', 250, 12.50, 12.00, '2023-01-07 09:30:00', 1, 'No issues', 95, 'Neural', 2, 'PRJ001', 'tech;faq');
INSERT INTO content_translation_requests VALUES (2, 5002, 'Comment', 'en', 'fr', '2023-01-06 14:20:00', 102, 302, 'InProgress', 80, 4.00, NULL, NULL, 0, 'Waiting for translator', NULL, 'Statistical', 3, 'PRJ002', 'support');
INSERT INTO content_translation_requests VALUES (3, 5003, 'TagWiki', 'en', 'de', '2023-01-08 08:45:00', 103, 303, 'Pending', 150, 7.50, NULL, 0, 'High priority', NULL, NULL, 'Neural', 1, 'PRJ003', 'documentation');

-- API partner credentials
CREATE TABLE api_partner_credentials (
    Id INTEGER PRIMARY KEY,
    PartnerName TEXT,
    ApiKey TEXT,
    SecretKey TEXT,
    CreatedAt DATETIME,
    ExpirationDate DATE,
    IsActive INTEGER,
    RateLimitPerMinute INTEGER,
    AllowedEndpoints TEXT,
    ContactEmail TEXT,
    SupportPhone TEXT,
    ContractId INTEGER,
    BillingCycle TEXT,
    MonthlyFee DECIMAL(10,2),
    UsageQuota INTEGER,
    LastUsed DATETIME,
    FailedAttempts INTEGER,
    LockoutUntil DATETIME,
    Region TEXT,
    Timezone TEXT,
    Notes TEXT
);
INSERT INTO api_partner_credentials VALUES (1, 'PartnerA', 'keyA123', 'secretA456', '2022-12-01 09:00:00', '2024-12-01', 1, 5000, '/v1/*', 'partnera@example.com', '123-456-7890', 1001, 'Monthly', 199.99, 1000000, '2023-01-09 11:20:00', 0, NULL, 'US-East', 'EST', 'Initial onboarding');
INSERT INTO api_partner_credentials VALUES (2, 'PartnerB', 'keyB789', 'secretB012', '2023-01-01 10:30:00', '2025-01-01', 1, 3000, '/v2/*', 'partnerb@example.com', '234-567-8901', 1002, 'Quarterly', 299.99, 2000000, '2023-01-10 14:05:00', 1, '2023-01-15 00:00:00', 'EU-West', 'CET', 'Pending SLA review');
INSERT INTO api_partner_credentials VALUES (3, 'PartnerC', 'keyC345', 'secretC678', '2021-06-15 08:15:00', '2023-06-15', 0, 1000, '/v1/reports/*', 'partnerc@example.com', '345-678-9012', 1003, 'Annual', 499.99, 500000, '2023-01-08 09:55:00', 5, '2023-01-20 00:00:00', 'APAC', 'JST', 'Contract expired');

-- Geographic targeting zones
CREATE TABLE geographic_targeting_zones (
    Id INTEGER PRIMARY KEY,
    ZoneName TEXT,
    CountryCode TEXT,
    RegionCode TEXT,
    City TEXT,
    PostalCodePattern TEXT,
    LatitudeMin DECIMAL(9,6),
    LatitudeMax DECIMAL(9,6),
    LongitudeMin DECIMAL(9,6),
    LongitudeMax DECIMAL(9,6),
    Population INTEGER,
    Language TEXT,
    Timezone TEXT,
    IsActive INTEGER,
    CreatedByUserId INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    TargetingStrategy TEXT,
    MaxBid DECIMAL(10,2),
    DailyBudget DECIMAL(10,2),
    ImpressionsLimit INTEGER,
    ClickThroughRateTarget DECIMAL(5,2),
    ConversionRateTarget DECIMAL(5,2),
    Notes TEXT
);
INSERT INTO geographic_targeting_zones VALUES (1, 'WestCoastUS', 'US', 'CA', 'SanFrancisco', '94*', 37.600000, 37.820000, -122.530000, -122.350000, 883305, 'en', 'PST', 1, 101, '2022-11-01 12:00:00', '2023-01-01 09:00:00', 'CPC', 2.50, 1500.00, 1000000, 1.20, 0.05, 'High tech concentration');
INSERT INTO geographic_targeting_zones VALUES (2, 'LondonCentral', 'GB', 'ENG', 'London', 'EC1*', 51.500000, 51.530000, -0.120000, -0.080000, 8908081, 'en', 'GMT', 1, 102, '2022-12-15 08:30:00', '2023-01-05 10:15:00', 'CPM', 1.80, 1200.00, 800000, 1.00, 0.04, 'Financial district focus');
INSERT INTO geographic_targeting_zones VALUES (3, 'SydneyMetro', 'AU', 'NSW', 'Sydney', '2000', -33.880000, -33.860000, 151.200000, 151.240000, 5312163, 'en', 'AEST', 0, 103, '2021-07-20 14:45:00', '2023-01-03 11:20:00', 'CPA', 3.00, 2000.00, 1500000, 1.50, 0.06, 'Seasonal campaign');

-- Newsletter campaign assets
CREATE TABLE newsletter_campaign_assets (
    Id INTEGER PRIMARY KEY,
    CampaignId INTEGER,
    AssetType TEXT,
    AssetUrl TEXT,
    Description TEXT,
    UploadedByUserId INTEGER,
    UploadedAt DATETIME,
    FileSizeBytes INTEGER,
    WidthPixels INTEGER,
    HeightPixels INTEGER,
    DurationSeconds INTEGER,
    Format TEXT,
    IsPrimary INTEGER,
    IsActive INTEGER,
    Version INTEGER,
    LicenseType TEXT,
    Attribution TEXT,
    Tags TEXT,
    HashValue TEXT,
    ThumbnailUrl TEXT
);
INSERT INTO newsletter_campaign_assets VALUES (1, 50001, 'Image', 'http://cdn.example.com/img1.jpg', 'Header image', 101, '2023-01-02 07:30:00', 204800, 1200, 400, 0, 'JPEG', 1, 1, 1, 'RoyaltyFree', 'PhotographerA', 'header;promo', 'abc123def456', 'http://cdn.example.com/thumb1.jpg');
INSERT INTO newsletter_campaign_assets VALUES (2, 50001, 'PDF', 'http://cdn.example.com/guide.pdf', 'Product guide', 102, '2023-01-03 09:15:00', 1048576, 0, 0, 0, 'PDF', 0, 1, 2, 'Standard', '', 'guide;product', 'def789ghi012', '');
INSERT INTO newsletter_campaign_assets VALUES (3, 50002, 'Video', 'http://cdn.example.com/intro.mp4', 'Intro video', 103, '2023-01-04 11:45:00', 5242880, 1920, 1080, 60, 'MP4', 1, 0, 1, 'Proprietary', 'StudioB', 'intro;video', 'ghi345jkl678', 'http://cdn.example.com/thumb3.jpg');

-- Forum moderation rules
CREATE TABLE forum_moderation_rules (
    Id INTEGER PRIMARY KEY,
    RuleName TEXT,
    Description TEXT,
    AppliesTo TEXT,
    Severity INTEGER,
    AutoAction TEXT,
    NotificationTemplate TEXT,
    CreatedByUserId INTEGER,
    CreatedAt DATETIME,
    UpdatedByUserId INTEGER,
    UpdatedAt DATETIME,
    IsEnabled INTEGER,
    HiddenFromUsers INTEGER,
    EscalationLevel INTEGER,
    TimeoutMinutes INTEGER,
    BanDurationDays INTEGER,
    RepeatOffenseCount INTEGER,
    Keywords TEXT,
    Category TEXT,
    Scope TEXT,
    EnforcementTeam TEXT,
    ReviewRequired INTEGER
);
INSERT INTO forum_moderation_rules VALUES (1, 'SpamDetection', 'Detects repeated identical posts', 'Post', 3, 'Delete', 'SpamAlert', 101, '2022-10-01 08:00:00', 102, '2023-01-01 09:00:00', 1, 0, 2, 0, 30, 3, 'buy now;free', 'Spam', 'Global', 'TeamAlpha', 1);
INSERT INTO forum_moderation_rules VALUES (2, 'ProfanityFilter', 'Blocks offensive language', 'Comment', 2, 'Hide', 'ProfanityWarning', 103, '2022-11-15 10:30:00', 104, '2023-01-05 12:00:00', 1, 0, 1, 0, 0, 5, 'badword1;badword2', 'Content', 'Global', 'TeamBeta', 0);
INSERT INTO forum_moderation_rules VALUES (3, 'LinkRestriction', 'Limits promotional links', 'Post', 2, 'Flag', 'LinkFlag', 105, '2022-12-20 14:45:00', 106, '2023-01-07 16:20:00', 1, 0, 1, 0, 0, 2, 'http://spam.com;http://promo.net', 'Links', 'Global', 'TeamGamma', 1);

-- Data retention audit
CREATE TABLE data_retention_audit (
    Id INTEGER PRIMARY KEY,
    TableName TEXT,
    ColumnName TEXT,
    RetentionPeriodDays INTEGER,
    LastPurgeDate DATETIME,
    NextPurgeDate DATETIME,
    PurgedRowsCount INTEGER,
    RetentionPolicyId INTEGER,
    CreatedByUserId INTEGER,
    CreatedAt DATETIME,
    ApprovedByUserId INTEGER,
    ApprovedAt DATETIME,
    Status TEXT,
    Notes TEXT,
    AuditLogId INTEGER,
    ComplianceStatus TEXT,
    RiskLevel INTEGER,
    ActionTaken TEXT,
    ExceptionReason TEXT,
    ReviewCycleDays INTEGER,
    IsActive INTEGER
);
INSERT INTO data_retention_audit VALUES (1, 'comments', 'Text', 365, '2023-01-01 00:00:00', '2024-01-01 00:00:00', 1200, 2001, 101, '2022-12-01 09:00:00', 102, '2022-12-15 10:00:00', 'Completed', 'No issues', 3001, 'Compliant', 1, 'Deleted', '', 180, 1);
INSERT INTO data_retention_audit VALUES (2, 'post_history', 'Text', 730, '2022-12-15 00:00:00', '2024-12-15 00:00:00', 3500, 2002, 103, '2022-11-20 08:30:00', 104, '2022-12-01 11:20:00', 'InProgress', 'Pending review', 3002, 'Pending', 2, 'Scheduled', 'Legal hold', 365, 1);
INSERT INTO data_retention_audit VALUES (3, 'user_devices', 'DeviceId', 1095, '2022-11-30 00:00:00', '2025-11-30 00:00:00', 800, 2003, 105, '2022-10-10 07:45:00', 106, '2022-10-20 09:15:00', 'Deferred', 'Awaiting policy update', 3003, 'NonCompliant', 3, 'Retain', 'Critical for security', 730, 0);

-- Product feature usage
CREATE TABLE product_feature_usage (
    Id INTEGER PRIMARY KEY,
    ProductId INTEGER,
    FeatureName TEXT,
    UserId INTEGER,
    SessionId TEXT,
    UsageDate DATETIME,
    DurationMs INTEGER,
    ClickCount INTEGER,
    SuccessCount INTEGER,
    FailureCount INTEGER,
    ErrorCode INTEGER,
    DeviceType TEXT,
    OsVersion TEXT,
    AppVersion TEXT,
    Region TEXT,
    CountryCode TEXT,
    IsPremiumUser INTEGER,
    SubscriptionTier TEXT,
    RevenueGenerated DECIMAL(10,2),
    FeedbackScore INTEGER,
    SurveyResponse TEXT,
    ABTestGroup TEXT,
    ExperimentId INTEGER,
    Notes TEXT
);
INSERT INTO product_feature_usage VALUES (1, 10, 'Search', 101, 'sessX1', '2023-01-03 13:20:00', 2500, 15, 14, 1, 0, 'Desktop', 'Windows10', '1.4.2', 'NorthAmerica', 'US', 1, 'Gold', 5.00, 80, 'Good', 'GroupA', 4001, '');
INSERT INTO product_feature_usage VALUES (2, 10, 'Export', 102, 'sessY2', '2023-01-04 09:45:00', 4700, 8, 7, 1, 101, 'Mobile', 'iOS14', '1.4.2', 'Europe', 'DE', 0, 'Free', 0.00, 70, 'Average', 'GroupB', 4002, '');
INSERT INTO product_feature_usage VALUES (3, 11, 'Collaboration', 103, 'sessZ3', '2023-01-05 16:10:00', 8200, 22, 20, 2, 202, 'Tablet', 'Android11', '2.0.0', 'AsiaPacific', 'JP', 1, 'Platinum', 12.00, 90, 'Excellent', 'GroupA', 4003, 'Beta tester');

-- Knowledge base feedback
CREATE TABLE knowledge_base_feedback (
    Id INTEGER PRIMARY KEY,
    ArticleId INTEGER,
    UserId INTEGER,
    FeedbackDate DATETIME,
    Rating INTEGER,
    Comment TEXT,
    WasHelpful INTEGER,
    SuggestedEdit TEXT,
    FollowUpNeeded INTEGER,
    FollowUpByUserId INTEGER,
    FollowUpDate DATETIME,
    Category TEXT,
    Tags TEXT,
    Source TEXT,
    SessionId TEXT,
    DeviceId TEXT,
    Browser TEXT,
    Os TEXT,
    ResolutionStatus TEXT,
    Notes TEXT
);
INSERT INTO knowledge_base_feedback VALUES (1, 8001, 101, '2023-01-06 10:00:00', 5, 'Very clear article', 1, '', 0, NULL, NULL, 'Documentation', 'setup;installation', 'Web', 'sessA1', 'dev001', 'Chrome', 'Windows10', 'Resolved', '');
INSERT INTO knowledge_base_feedback VALUES (2, 8002, 102, '2023-01-07 11:30:00', 3, 'Missing step 3', 0, 'Add step 3 description', 1, 103, '2023-01-08 09:00:00', 'Documentation', 'troubleshooting', 'MobileApp', 'sessB2', 'dev002', 'Safari', 'iOS14', 'Pending', '');
INSERT INTO knowledge_base_feedback VALUES (3, 8003, 103, '2023-01-08 14:45:00', 4, 'Helpful but could use more examples', 1, 'Include example code', 1, 104, '2023-01-09 10:15:00', 'APIReference', 'examples', 'API', 'sessC3', 'dev003', 'Edge', 'Windows11', 'InProgress', '');