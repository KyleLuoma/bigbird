-- Content syndication sources metadata
CREATE TABLE content_syndication_sources
(
    Id INTEGER NOT NULL PRIMARY KEY,
    SourceName TEXT,
    SourceUrl TEXT,
    FeedType TEXT,
    RefreshIntervalMinutes INTEGER,
    LastRefreshDate DATETIME,
    IsActive INTEGER,
    Category TEXT,
    Region TEXT,
    ContactEmail TEXT,
    ApiKey TEXT,
    TokenExpiration DATETIME,
    MaxItemsPerFetch INTEGER,
    CreatedDate DATETIME,
    CreatedBy TEXT,
    ModifiedDate DATETIME,
    ModifiedBy TEXT,
    Priority INTEGER,
    Notes TEXT,
    Checksum TEXT,
    RetryCount INTEGER
);

INSERT INTO content_syndication_sources VALUES (1, 'TechBlog', 'https://tech.example.com/feed', 'RSS', 60, '2025-12-01 10:00:00', 1, 'Technology', 'NA', 'tech@example.com', 'ABC123KEY', '2026-06-01 00:00:00', 100, '2025-01-10 08:30:00', 'system', '2025-12-01 09:55:00', 'system', 10, 'Initial source', 'CHK001', 0);
INSERT INTO content_syndication_sources VALUES (2, 'HealthNews', 'https://health.example.org/rss', 'ATOM', 120, '2025-12-01 09:45:00', 1, 'Health', 'EU', 'contact@health.org', 'XYZ789KEY', '2026-01-15 00:00:00', 200, '2025-02-05 11:20:00', 'admin', '2025-12-01 09:40:00', 'admin', 20, 'High priority', 'CHK002', 1);
INSERT INTO content_syndication_sources VALUES (3, 'FinanceDaily', 'https://finance.example.net/feed', 'RSS', 30, '2025-12-01 10:05:00', 0, 'Finance', 'APAC', 'info@finance.net', 'FIN456KEY', '2025-12-31 23:59:59', 150, '2025-03-12 14:00:00', 'scheduler', '2025-12-01 10:00:00', 'scheduler', 5, 'Paused source', 'CHK003', 2);


-- User activity logs unrelated to core posts
CREATE TABLE user_activity_logs
(
    LogId INTEGER NOT NULL PRIMARY KEY,
    UserIdentifier TEXT,
    SessionToken TEXT,
    ActivityType TEXT,
    ActivityTimestamp DATETIME,
    DeviceId TEXT,
    DeviceType TEXT,
    OsVersion TEXT,
    AppVersion TEXT,
    IpAddress TEXT,
    GeoCountry TEXT,
    GeoRegion TEXT,
    GeoCity TEXT,
    Browser TEXT,
    ReferrerUrl TEXT,
    EventPayload TEXT,
    IsSuccessful INTEGER,
    ErrorCode INTEGER,
    ErrorMessage TEXT,
    ProcessingTimeMs INTEGER,
    CpuUsagePercent REAL,
    MemoryUsageMb REAL,
    NetworkLatencyMs INTEGER,
    AdditionalInfo TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO user_activity_logs VALUES (101, 'U001', 'TOK123', 'Login', '2025-12-01 08:15:00', 'DEV001', 'Mobile', 'Android10', '1.4.2', '192.168.1.10', 'US', 'CA', 'LosAngeles', 'Chrome', 'https://example.com/home', '{}', 1, NULL, NULL, 120, 15.5, 200.3, 45, 'First login', '2025-12-01 08:15:01', '2025-12-01 08:15:01');
INSERT INTO user_activity_logs VALUES (102, 'U002', 'TOK124', 'PasswordChange', '2025-12-01 09:00:00', 'DEV002', 'Desktop', 'Windows10', '2.0.0', '10.0.0.5', 'GB', 'England', 'London', 'Firefox', 'https://example.com/settings', '{}', 1, NULL, NULL, 250, 20.1, 350.0, 30, 'Changed password', '2025-12-01 09:00:10', '2025-12-01 09:00:10');
INSERT INTO user_activity_logs VALUES (103, 'U003', 'TOK125', 'FileDownload', '2025-12-01 10:30:00', 'DEV003', 'Tablet', 'iOS13', '3.1.1', '172.16.0.3', 'DE', 'Bavaria', 'Munich', 'Safari', 'https://example.com/files', '{"fileId":42}', 0, 404, 'File not found', 300, 18.0, 400.5, 60, 'Download error', '2025-12-01 10:30:05', '2025-12-01 10:30:05');


-- API client session tracking
CREATE TABLE api_client_sessions
(
    SessionId INTEGER NOT NULL PRIMARY KEY,
    ClientId TEXT,
    ClientName TEXT,
    ApiKey TEXT,
    SessionStart DATETIME,
    SessionEnd DATETIME,
    IpAddress TEXT,
    UserAgent TEXT,
    RequestCount INTEGER,
    DataTransferredBytes INTEGER,
    AvgResponseTimeMs REAL,
    MaxResponseTimeMs REAL,
    MinResponseTimeMs REAL,
    ErrorsEncountered INTEGER,
    LastErrorCode INTEGER,
    LastErrorMessage TEXT,
    IsActive INTEGER,
    RefreshToken TEXT,
    TokenExpiry DATETIME,
    Scope TEXT,
    Permissions TEXT,
    RateLimitRemaining INTEGER,
    RateLimitReset DATETIME,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Notes TEXT,
    Region TEXT,
    Environment TEXT,
    MonitoringStatus TEXT
);

INSERT INTO api_client_sessions VALUES (201, 'C001', 'AnalyticsApp', 'KEYA1B2C3', '2025-12-01 07:00:00', NULL, '203.0.113.5', 'PythonRequests/2.25', 1500, 10485760, 120.5, 450.0, 80.0, 2, 500, 'Internal server error', 1, 'REF123', '2026-01-01 00:00:00', 'read:metrics', 'read,write', 9900, '2025-12-01 08:00:00', '2025-12-01 07:00:00', '2025-12-01 07:05:00', 'Initial session', 'NA', 'Production', 'Healthy');
INSERT INTO api_client_sessions VALUES (202, 'C002', 'MobileApp', 'KEYD4E5F6', '2025-12-01 08:30:00', '2025-12-01 09:15:00', '198.51.100.23', 'OkHttp/4.9', 300, 2097152, 200.0, 600.0, 150.0, 0, NULL, NULL, 0, 'REF456', '2025-12-15 00:00:00', 'read:user', 'read', 7500, '2025-12-01 09:00:00', '2025-12-01 08:30:00', '2025-12-01 08:35:00', 'Short session', 'EU', 'Staging', 'Healthy');
INSERT INTO api_client_sessions VALUES (203, 'C003', 'ThirdPartyIntegrator', 'KEYG7H8I9', '2025-12-01 06:00:00', NULL, '192.0.2.45', 'JavaHttpClient/11', 5000, 52428800, 95.0, 300.0, 50.0, 5, 401, 'Unauthorized', 1, 'REF789', '2025-12-31 23:59:59', 'write:data', 'write', 9800, '2025-12-01 07:00:00', '2025-12-01 06:00:00', '2025-12-01 06:05:00', 'Ongoing session', 'APAC', 'Production', 'Degraded');


-- Advertisement inventory items
CREATE TABLE advertisement_inventory_items
(
    InventoryItemId INTEGER NOT NULL PRIMARY KEY,
    CampaignId INTEGER,
    CreativeId INTEGER,
    Placement TEXT,
    AdFormat TEXT,
    WidthPixels INTEGER,
    HeightPixels INTEGER,
    StartDate DATETIME,
    EndDate DATETIME,
    BudgetCents INTEGER,
    SpendCents INTEGER,
    Impressions INTEGER,
    Clicks INTEGER,
    Conversions INTEGER,
    CPM REAL,
    CPC REAL,
    CPA REAL,
    TargetAudience TEXT,
    GeoTarget TEXT,
    DeviceTarget TEXT,
    LanguageTarget TEXT,
    FrequencyCap INTEGER,
    ViewabilityScore REAL,
    BrandSafetyScore REAL,
    IsActive INTEGER,
    CreatedBy TEXT,
    CreatedAt DATETIME,
    UpdatedBy TEXT,
    UpdatedAt DATETIME,
    Notes TEXT,
    Status TEXT
);

INSERT INTO advertisement_inventory_items VALUES (301, 1001, 501, 'Header', 'Banner', 728, 90, '2025-12-01 00:00:00', '2026-01-01 23:59:59', 500000, 120000, 1500000, 8000, 200, 80.0, 0.015, 0.03, 'Adults', 'US,CA', 'Desktop', 'en', 3, 0.85, 0.95, 1, 'admin', '2025-11-20 10:00:00', 'admin', '2025-11-25 12:00:00', 'Top banner', 'Running');
INSERT INTO advertisement_inventory_items VALUES (302, 1002, 502, 'Sidebar', 'Native', 300, 250, '2025-12-15 00:00:00', '2026-02-15 23:59:59', 300000, 80000, 900000, 5000, 150, 70.0, 0.016, 0.028, 'YoungAdults', 'UK,IE', 'Mobile', 'en', 2, 0.78, 0.88, 1, 'marketer', '2025-12-01 09:30:00', 'marketer', '2025-12-05 14:20:00', 'Sidebar native ad', 'Running');
INSERT INTO advertisement_inventory_items VALUES (303, 1003, 503, 'Footer', 'Video', 640, 360, '2025-11-01 00:00:00', '2025-12-31 23:59:59', 200000, 200000, 500000, 2500, 80, 400.0, 0.08, 0.25, 'All', 'Global', 'All', 'en,es,fr', 1, 0.90, 0.92, 0, 'system', '2025-10-15 08:00:00', 'system', '2025-10-20 11:00:00', 'Footer video', 'Completed');


-- Knowledge graph edges extended
CREATE TABLE knowledge_graph_edges_extended
(
    EdgeId INTEGER NOT NULL PRIMARY KEY,
    SourceNodeId INTEGER,
    TargetNodeId INTEGER,
    EdgeType TEXT,
    Weight REAL,
    CreatedDate DATETIME,
    CreatedBy TEXT,
    ModifiedDate DATETIME,
    ModifiedBy TEXT,
    IsActive INTEGER,
    ConfidenceScore REAL,
    Provenance TEXT,
    SourceDataset TEXT,
    RelationLabel TEXT,
    InverseRelationLabel TEXT,
    TemporalValidityStart DATETIME,
    TemporalValidityEnd DATETIME,
    MetadataJson TEXT,
    Tags TEXT,
    Annotation TEXT,
    Version INTEGER,
    Language TEXT,
    Context TEXT,
    SourceSystem TEXT,
    ValidationStatus TEXT,
    ReviewCount INTEGER,
    LastReviewed DATETIME,
    ReviewComments TEXT,
    Scope TEXT,
    Status TEXT
);

INSERT INTO knowledge_graph_edges_extended VALUES (401, 10001, 20001, 'relatedTo', 0.85, '2025-01-10 12:00:00', 'engineer', '2025-06-01 09:30:00', 'engineer', 1, 0.92, 'derived', 'DatasetA', 'relates', 'relatedFrom', '2025-01-01 00:00:00', '2026-01-01 00:00:00', '{}', 'finance,market', 'Edge between entities', 1, 'en', 'global', 'KGService', 'Validated', 3, '2025-05-20 10:15:00', 'Reviewed by team', 'global', 'active');
INSERT INTO knowledge_graph_edges_extended VALUES (402, 10002, 20002, 'partOf', 1.00, '2025-02-15 08:45:00', 'analyst', '2025-07-10 14:20:00', 'analyst', 1, 0.98, 'manual', 'DatasetB', 'part_of', 'has_part', '2025-02-01 00:00:00', '2025-12-31 23:59:59', '{}', 'engineering,component', 'Component relationship', 2, 'en', 'regional', 'KGService', 'Validated', 2, '2025-06-30 11:00:00', 'Checked consistency', 'regional', 'active');
INSERT INTO knowledge_graph_edges_extended VALUES (403, 10003, 20003, 'dependsOn', 0.70, '2025-03-20 10:10:00', 'scientist', '2025-08-05 16:40:00', 'scientist', 0, 0.60, 'inferred', 'DatasetC', 'depends_on', 'required_by', '2025-03-01 00:00:00', '2025-09-01 00:00:00', '{}', 'research,dependency', 'Dependency edge', 1, 'en', 'local', 'KGService', 'Pending', 0, NULL, NULL, 'local', 'inactive');


-- Forum user badges
CREATE TABLE forum_user_badges
(
    BadgeRecordId INTEGER NOT NULL PRIMARY KEY,
    ForumUserId INTEGER,
    BadgeName TEXT,
    AwardedDate DATETIME,
    AwardedBy TEXT,
    Reason TEXT,
    ExpirationDate DATETIME,
    IsRevoked INTEGER,
    RevokedDate DATETIME,
    RevokedBy TEXT,
    BadgeLevel INTEGER,
    BadgeCategory TEXT,
    BadgeIconUrl TEXT,
    Visibility TEXT,
    DisplayOrder INTEGER,
    NotificationSent INTEGER,
    NotificationMethod TEXT,
    BadgePoints INTEGER,
    RelatedThreadId INTEGER,
    RelatedPostId INTEGER,
    Tags TEXT,
    Description TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    CreatedBy TEXT,
    UpdatedBy TEXT,
    IsActive INTEGER,
    SourceSystem TEXT,
    AuditLogId INTEGER,
    Comments TEXT
);

INSERT INTO forum_user_badges VALUES (501, 1001, 'Veteran', '2025-01-05 12:00:00', 'system', '5 years participation', NULL, 0, NULL, NULL, 3, 'Participation', 'https://example.com/icons/veteran.png', 'public', 1, 1, 'email', 150, NULL, NULL, 'participation,loyalty', 'Awarded for long term activity', '2025-01-05 12:01:00', '2025-01-05 12:01:00', 'system', 'system', 1, 'ForumEngine', 10001, NULL);
INSERT INTO forum_user_badges VALUES (502, 1002, 'Contributor', '2025-03-10 09:30:00', 'moderator', 'Top contributor of month', NULL, 0, NULL, NULL, 2, 'Contribution', 'https://example.com/icons/contributor.png', 'public', 2, 1, 'inapp', 100, NULL, NULL, 'contribution,monthly', 'Awarded for highest post count in March', '2025-03-10 09:31:00', '2025-03-10 09:31:00', 'moderator', 'moderator', 1, 'ForumEngine', 10002, NULL);
INSERT INTO forum_user_badges VALUES (503, 1003, 'Helper', '2025-02-20 15:45:00', 'system', 'Provided 50 helpful answers', NULL, 0, NULL, NULL, 1, 'Support', 'https://example.com/icons/helper.png', 'private', 3, 0, NULL, 75, NULL, NULL, 'support,answers', 'Recognized for assisting members', '2025-02-20 15:46:00', '2025-02-20 15:46:00', 'system', 'system', 1, 'ForumEngine', 10003, NULL);


-- Post related resources
CREATE TABLE post_related_resources
(
    ResourceId INTEGER NOT NULL PRIMARY KEY,
    PostId INTEGER,
    ResourceType TEXT,
    ResourceUrl TEXT,
    Title TEXT,
    Description TEXT,
    AuthorName TEXT,
    PublicationDate DATETIME,
    Language TEXT,
    License TEXT,
    AccessLevel TEXT,
    Format TEXT,
    SizeBytes INTEGER,
    Checksum TEXT,
    ThumbnailUrl TEXT,
    Tags TEXT,
    Category TEXT,
    Rating INTEGER,
    ReviewCount INTEGER,
    AverageRating REAL,
    IsFeatured INTEGER,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    UpdatedAt DATETIME,
    UpdatedBy TEXT,
    IsActive INTEGER,
    SourceSystem TEXT,
    MetadataJson TEXT,
    UsageCount INTEGER,
    LastAccessed DATETIME,
    Notes TEXT,
    Status TEXT
);

INSERT INTO post_related_resources VALUES (601, 2001, 'Video', 'https://videos.example.com/vid123', 'Intro to SQL', 'A short introduction video', 'JohnDoe', '2024-12-15 00:00:00', 'en', 'CC-BY', 'public', 'mp4', 104857600, 'CHKVID001', 'https://images.example.com/thumb123', 'sql,video', 'Education', 5, 120, 4.5, 1, '2025-01-01 08:00:00', 'system', '2025-01-02 09:00:00', 'system', 1, 'MediaHub', '{}', 250, '2025-01-10 10:00:00', 'High engagement', 'available');
INSERT INTO post_related_resources VALUES (602, 2002, 'Document', 'https://docs.example.com/doc456', 'SQL Cheat Sheet', 'One-page cheat sheet', 'JaneSmith', '2023-06-01 00:00:00', 'en', 'MIT', 'public', 'pdf', 5242880, 'CHKDOC002', NULL, 'sql,cheatsheet', 'Reference', 4, 80, 4.2, 0, '2025-01-05 12:30:00', 'system', '2025-01-06 13:00:00', 'system', 1, 'DocStore', '{}', 150, '2025-01-12 14:00:00', 'Frequently downloaded', 'available');
INSERT INTO post_related_resources VALUES (603, 2003, 'Link', 'https://external.example.org/article789', 'Advanced Query Tuning', 'External article on query optimization', 'ExternalAuthor', '2022-09-20 00:00:00', 'en', 'AllRightsReserved', 'restricted', 'html', NULL, NULL, NULL, 'sql,performance', 'Article', 5, 200, 4.8, 1, '2025-01-10 16:45:00', 'system', '2025-01-11 17:00:00', 'system', 1, 'External', '{}', 300, '2025-01-15 18:00:00', 'Linked from post', 'available');


-- Tag category assignments
CREATE TABLE tag_category_assignments
(
    AssignmentId INTEGER NOT NULL PRIMARY KEY,
    TagId INTEGER,
    CategoryId INTEGER,
    AssignedBy TEXT,
    AssignedAt DATETIME,
    Source TEXT,
    ConfidenceScore REAL,
    IsPrimary INTEGER,
    Reason TEXT,
    ExpirationDate DATETIME,
    IsActive INTEGER,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    UpdatedAt DATETIME,
    UpdatedBy TEXT,
    Notes TEXT,
    MetadataJson TEXT,
    ReviewStatus TEXT,
    ReviewComments TEXT,
    ReviewerId INTEGER,
    ReviewDate DATETIME,
    Version INTEGER,
    ChangeLog TEXT,
    TagSynonym TEXT,
    CategoryName TEXT,
    CategoryDescription TEXT,
    HierarchyLevel INTEGER,
    ParentCategoryId INTEGER,
    IsDeprecated INTEGER,
    DeprecatedAt DATETIME,
    ReplacementCategoryId INTEGER
);

INSERT INTO tag_category_assignments VALUES (701, 3001, 4001, 'admin', '2025-01-01 10:00:00', 'manual', 0.98, 1, 'Initial classification', NULL, 1, '2025-01-01 10:00:00', 'admin', '2025-01-01 10:00:00', 'admin', NULL, '{}', 'approved', NULL, NULL, 1, NULL, NULL, 'Technology', 'Technology related topics', 1, NULL, 0, NULL, NULL);
INSERT INTO tag_category_assignments VALUES (702, 3002, 4002, 'system', '2025-02-15 14:30:00', 'algorithm', 0.85, 0, 'Auto assign', NULL, 1, '2025-02-15 14:30:00', 'system', '2025-02-15 14:30:00', 'system', NULL, '{}', 'pending', NULL, NULL, 1, NULL, NULL, 'Health', 'Health and medicine', 1, NULL, 0, NULL, NULL);
INSERT INTO tag_category_assignments VALUES (703, 3003, 4003, 'moderator', '2025-03-10 09:20:00', 'manual', 0.99, 1, 'Reviewed by moderator', NULL, 1, '2025-03-10 09:20:00', 'moderator', '2025-03-10 09:20:00', 'moderator', NULL, '{}', 'approved', 'All good', 2001, '2025-03-11 10:00:00', 2, NULL, NULL, 'Finance', 'Finance and economics', 1, NULL, 0, NULL, NULL);


-- External data feeds metadata
CREATE TABLE external_data_feeds_metadata
(
    FeedId INTEGER NOT NULL PRIMARY KEY,
    FeedName TEXT,
    FeedUrl TEXT,
    ProviderName TEXT,
    Format TEXT,
    ScheduleCron TEXT,
    LastFetched DATETIME,
    NextFetch DATETIME,
    IsEnabled INTEGER,
    AuthenticationMethod TEXT,
    ApiKey TEXT,
    OAuthToken TEXT,
    TokenExpiration DATETIME,
    DataSchemaVersion INTEGER,
    RecordCount INTEGER,
    AvgRecordSizeBytes REAL,
    TotalSizeBytes REAL,
    Compression TEXT,
    Encryption TEXT,
    Checksum TEXT,
    RetentionDays INTEGER,
    IsArchived INTEGER,
    ArchivePath TEXT,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    UpdatedAt DATETIME,
    UpdatedBy TEXT,
    Description TEXT,
    Tags TEXT,
    Category TEXT,
    Status TEXT,
    SourceSystem TEXT,
    MonitoringEnabled INTEGER,
    AlertThreshold INTEGER,
    AlertEmail TEXT,
    Notes TEXT,
    MetadataJson TEXT,
    LastErrorCode INTEGER,
    LastErrorMessage TEXT
);

INSERT INTO external_data_feeds_metadata VALUES (801, 'WeatherStations', 'https://feeds.example.com/weather', 'WeatherCorp', 'JSON', '0 0 * * *', '2025-12-01 00:00:00', '2025-12-02 00:00:00', 1, 'APIKey', 'WX123KEY', NULL, NULL, 2, 1440, 512.5, 737280, 'gzip', 'AES256', 'CHKWX001', 30, 0, NULL, '2025-01-01 08:00:00', 'system', '2025-01-05 09:00:00', 'system', 'Daily weather station data', 'weather,stations', 'Environment', 'active', 'WeatherSystem', 1, 100, 'ops@example.com', 'No issues', '{}', NULL, NULL);
INSERT INTO external_data_feeds_metadata VALUES (802, 'StockPrices', 'https://feeds.example.com/stocks', 'FinanceDataInc', 'CSV', '*/5 * * * *', '2025-12-01 12:35:00', '2025-12-01 12:40:00', 1, 'OAuth', NULL, 'OAUTHSTOCKTOKEN', '2026-01-01 00:00:00', 3, 7200, 1024.0, 7372800, 'none', 'TLS', 'CHKSF001', 7, 0, NULL, '2025-01-02 07:30:00', 'system', '2025-01-03 08:45:00', 'system', 'Intraday stock price feed', 'finance,stocks', 'Finance', 'active', 'FinanceSystem', 1, 50, 'finops@example.com', 'Stable', '{}', NULL, NULL);
INSERT INTO external_data_feeds_metadata VALUES (803, 'NewsHeadlines', 'https://feeds.example.com/news', 'NewsWorld', 'XML', '0 */6 * * *', '2025-12-01 06:00:00', '2025-12-01 12:00:00', 1, 'APIKey', 'NEWSKEY123', NULL, NULL, 1, 360, 256.0, 92160, 'zip', 'none', 'CHKNEWS001', 15, 0, NULL, '2025-01-03 09:15:00', 'system', '2025-01-04 10:20:00', 'system', 'Six-hourly news headlines', 'news,headlines', 'Media', 'active', 'NewsSystem', 1, 200, 'newsops@example.com', 'All good', '{}', NULL, NULL);


-- Site search custom filters
CREATE TABLE site_search_custom_filters
(
    FilterId INTEGER NOT NULL PRIMARY KEY,
    FilterName TEXT,
    Description TEXT,
    CreatedBy TEXT,
    CreatedAt DATETIME,
    UpdatedBy TEXT,
    UpdatedAt DATETIME,
    IsActive INTEGER,
    FilterLogic TEXT,
    IncludeTags TEXT,
    ExcludeTags TEXT,
    MinScore INTEGER,
    MaxScore INTEGER,
    DateFrom DATETIME,
    DateTo DATETIME,
    UserSegment TEXT,
    DeviceType TEXT,
    GeographyRegion TEXT,
    Language TEXT,
    ContentType TEXT,
    RankBoost REAL,
    BoostCondition TEXT,
    Priority INTEGER,
    IsPublic INTEGER,
    Category TEXT,
    OwnerTeam TEXT,
    Version INTEGER,
    ChangeLog TEXT,
    AuditLogId INTEGER,
    Notes TEXT,
    MetadataJson TEXT,
    EnabledForApi INTEGER,
    EnabledForWeb INTEGER,
    DailyQuota INTEGER,
    MonthlyQuota INTEGER,
    AlertEmail TEXT,
    AlertThreshold INTEGER,
    LastDeployed DATETIME,
    DeploymentStatus TEXT,
    SourceSystem TEXT,
    MaintenanceWindow TEXT
);

INSERT INTO site_search_custom_filters VALUES (901, 'HighScorePosts', 'Filters to surface posts with high scores', 'admin', '2025-01-01 00:00:00', 'admin', '2025-01-10 12:00:00', 1, 'Score >= 100', NULL, NULL, 100, NULL, NULL, NULL, 'all', 'all', 'global', 'en', 'post', 1.5, 'score', 1, 1, 'Quality', 'SearchTeam', 1, NULL, 10001, NULL, '{}', 1, 1, 1000, 30000, 'searchops@example.com', 900, '2025-01-15 08:00:00', 'deployed', 'SearchEngine', NULL);
INSERT INTO site_search_custom_filters VALUES (902, 'RecentPythonQuestions', 'Show recent questions tagged python', 'moderator', '2025-02-01 09:30:00', 'moderator', '2025-02-05 10:45:00', 1, 'Tags CONTAINS "python"', NULL, NULL, NULL, NULL, '2025-02-01 00:00:00', NULL, 'newcomers', 'desktop', 'NA', 'en', 'question', 1.2, 'recency', 2, 0, 'Topic', 'CommunityTeam', 1, NULL, 10002, NULL, '{}', 1, 1, 500, 15000, 'modops@example.com', 800, '2025-02-10 07:30:00', 'deployed', 'SearchEngine', NULL);
INSERT INTO site_search_custom_filters VALUES (903, 'GeoUSAds', 'Filter ads for US region', 'adops', '2025-03-01 11:15:00', 'adops', '2025-03-02 12:00:00', 1, 'GeographyRegion = "US"', NULL, NULL, NULL, NULL, NULL, NULL, 'advertisers', 'mobile', 'US', 'en', 'ad', 2.0, 'region', 3, 0, 'Advertising', 'AdTeam', 1, NULL, 10003, NULL, '{}', 1, 0, 2000, 60000, 'adops@example.com', 950, '2025-03-05 09:00:00', 'deployed', 'AdEngine', '02:00-03:00');