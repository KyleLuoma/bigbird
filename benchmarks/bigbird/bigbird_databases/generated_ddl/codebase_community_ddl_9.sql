-- Search A/B test configurations
CREATE TABLE search_ab_tests
(
    TestId               INTEGER PRIMARY KEY,
    TestName             TEXT,
    VariantAName         TEXT,
    VariantBName         TEXT,
    StartDate            DATETIME,
    EndDate              DATETIME,
    TrafficAllocationA   INTEGER,
    TrafficAllocationB   INTEGER,
    MetricKey            TEXT,
    GoalValue            REAL,
    IsActive             INTEGER,
    CreatedByUserId      INTEGER,
    CreatedAt            DATETIME,
    UpdatedByUserId      INTEGER,
    UpdatedAt            DATETIME,
    Notes                TEXT,
    RegionCode           TEXT,
    DeviceTypeFilter     TEXT,
    LanguageFilter       TEXT,
    MinVersion           TEXT,
    MaxVersion           TEXT,
    RandomSeed           INTEGER,
    SampleSize           INTEGER,
    ConfidenceLevel      REAL,
    PreviousTestId       INTEGER,
    OwnerTeam            TEXT,
    ApprovalStatus       TEXT,
    RolloutPercentage    INTEGER,
    ExperimentGroup      TEXT,
    MonitoringEndpoint   TEXT
);

INSERT INTO search_ab_tests VALUES (1, 'SearchSpeedBoost', 'Control', 'VariantX', '2024-01-01 00:00:00', '2024-06-30 23:59:59', 50, 50, 'latency', 0.2, 1, 101, '2023-12-15 09:30:00', 102, '2024-01-02 10:00:00', 'Initial rollout', 'US', 'Mobile', 'en', '1.0', '2.5', 12345, 10000, 0.95, NULL, 'SearchTeam', 'Pending', 100, 'GroupA', 'http://monitor.example.com/ab1');
INSERT INTO search_ab_tests VALUES (2, 'ResultRanking', 'Baseline', 'NewAlgo', '2024-03-01 00:00:00', '2024-12-31 23:59:59', 40, 60, 'clickThrough', 0.05, 1, 103, '2024-02-20 14:15:00', 104, '2024-03-01 08:00:00', 'Scaling test', 'EU', 'Desktop', 'de', '3.0', '4.0', 67890, 20000, 0.99, 1, 'RankingTeam', 'Approved', 80, 'GroupB', 'http://monitor.example.com/ab2');
INSERT INTO search_ab_tests VALUES (3, 'FacetDisplay', 'OldUI', 'NewUI', '2024-05-15 00:00:00', NULL, 70, 30, 'engagement', 0.12, 0, 105, '2024-04-30 11:45:00', NULL, NULL, 'Pending UI test', 'APAC', 'All', 'ja', '5.0', '6.0', 54321, 15000, 0.9, NULL, 'UITeam', 'InReview', 60, 'GroupC', 'http://monitor.example.com/ab3');

-- Content quality scoring per post
CREATE TABLE content_quality_scores
(
    ScoreId               INTEGER PRIMARY KEY,
    PostId                INTEGER,
    QualityScore          REAL,
    ReadabilityScore      REAL,
    SpamProbability       REAL,
    OffensiveProbability  REAL,
    RelevanceScore        REAL,
    LanguageCode          TEXT,
    ComputationDate       DATETIME,
    ComputedByUserId      INTEGER,
    ModelVersion          TEXT,
    FeatureVectorHash     TEXT,
    IsFlagged             INTEGER,
    FlagReason            TEXT,
    ReviewStatus          TEXT,
    ConfidenceIntervalLow REAL,
    ConfidenceIntervalHi  REAL,
    SourceDatasetId       INTEGER,
    ProcessingTimeMs      INTEGER,
    Comments              TEXT,
    ReviewerNotes         TEXT,
    AuditTrailId          INTEGER,
    ValidationScore       REAL,
    ThresholdBreach       INTEGER,
    CategoryTag           TEXT,
    SentimentScore        REAL,
    KeywordDensityScore   REAL,
    TopicCoherenceScore   REAL,
    PlagiarismScore       REAL
);

INSERT INTO content_quality_scores VALUES (1, 1001, 0.87, 0.92, 0.02, 0.01, 0.95, 'en', '2024-01-10 08:30:00', 201, 'v1.2', 'a1b2c3', 0, NULL, 'Pending', 0.80, 0.94, 10, 120, 'Initial score', 'N/A', 5001, 0.88, 0, 'tech', 0.5, 0.7, 0.85, 0.03);
INSERT INTO content_quality_scores VALUES (2, 1002, 0.45, 0.60, 0.40, 0.30, 0.55, 'de', '2024-01-12 09:15:00', 202, 'v1.2', 'd4e5f6', 1, 'spam', 'Reviewed', 0.30, 0.60, 11, 250, 'Low quality flagged', 'Needs rewrite', 5002, 0.46, 1, 'spam', 0.2, 0.3, 0.4, 0.70);
INSERT INTO content_quality_scores VALUES (3, 1003, 0.78, 0.85, 0.05, 0.02, 0.88, 'ja', '2024-01-15 11:00:00', 203, 'v1.3', 'g7h8i9', 0, NULL, 'Approved', 0.72, 0.84, 12, 95, 'Good content', 'No issues', 5003, 0.79, 0, 'lifestyle', 0.6, 0.8, 0.90, 0.01);

-- User learning path progress
CREATE TABLE user_learning_paths
(
    PathId                 INTEGER PRIMARY KEY,
    UserId                 INTEGER,
    PathName               TEXT,
    StartDate              DATETIME,
    EndDate                DATETIME,
    CurrentStage           TEXT,
    CompletedStagesCount   INTEGER,
    TotalStagesCount       INTEGER,
    ProgressPercentage     REAL,
    LastActivityDate       DATETIME,
    IsActive               INTEGER,
    CreatedByAdminId       INTEGER,
    CreatedAt              DATETIME,
    UpdatedByAdminId       INTEGER,
    UpdatedAt              DATETIME,
    CertificationEarned    TEXT,
    BadgeAwarded           TEXT,
    TimeSpentMinutes       INTEGER,
    AvgScorePerStage       REAL,
    FeedbackScore          REAL,
    PreferredLearningMode TEXT,
    DeviceUsed             TEXT,
    Locale                 TEXT,
    SubscriptionTier       TEXT,
    NotificationOptIn      INTEGER,
    MentorAssignedId       INTEGER,
    GoalDescription        TEXT,
    RewardsPointsEarned    INTEGER,
    LastQuizScore          REAL,
    CompletionEligibility  TEXT,
    AccessLevel            TEXT
);

INSERT INTO user_learning_paths VALUES (1, 301, 'SQL Fundamentals', '2024-02-01 00:00:00', NULL, 'Stage3', 2, 5, 40.0, '2024-03-20 14:20:00', 1, 100, '2024-02-01 08:00:00', 101, '2024-03-20 15:00:00', 'SQL Basics Cert', 'BadgeSQL', 480, 85.5, 4.2, 'Video', 'Desktop', 'en-US', 'Premium', 1, 5001, 'Learn basic queries', 1500, 78.0, 'Eligible', 'User');
INSERT INTO user_learning_paths VALUES (2, 302, 'Advanced Python', '2024-01-15 00:00:00', NULL, 'Stage5', 4, 7, 57.1, '2024-03-18 10:05:00', 1, 102, '2024-01-15 09:30:00', 103, '2024-03-18 10:10:00', NULL, NULL, 720, 90.0, 4.8, 'Interactive', 'Mobile', 'fr-FR', 'Standard', 0, 5002, 'Master Python ecosystem', 2100, 88.0, 'Pending', 'User');
INSERT INTO user_learning_paths VALUES (3, 303, 'Data Science Track', '2023-12-01 00:00:00', '2024-06-30 00:00:00', 'Completed', 10, 10, 100.0, '2024-03-19 16:45:00', 0, 104, '2023-12-01 07:45:00', 105, '2024-03-19 16:50:00', 'Data Science Cert', 'BadgeDS', 1500, 92.3, 5.0, 'Mixed', 'Tablet', 'es-ES', 'Enterprise', 1, 5003, 'Become data scientist', 3000, 95.0, 'Completed', 'Admin');

-- API throttle event logs
CREATE TABLE api_throttle_events
(
    EventId               INTEGER PRIMARY KEY,
    ApiKeyId              INTEGER,
    UserId                INTEGER,
    EndpointName          TEXT,
    RequestMethod         TEXT,
    RequestTimestamp      DATETIME,
    ResponseStatusCode    INTEGER,
    ThrottleReason        TEXT,
    RetryAfterSeconds     INTEGER,
    ClientIp              TEXT,
    UserAgent             TEXT,
    GeoCountryCode        TEXT,
    IsBlocked             INTEGER,
    BlockDurationSeconds  INTEGER,
    AppliedPolicyId       INTEGER,
    PolicyVersion         TEXT,
    RequestPayloadSize    INTEGER,
    ResponsePayloadSize   INTEGER,
    RateLimitWindowSec    INTEGER,
    CurrentWindowCount    INTEGER,
    MaxAllowedInWindow    INTEGER,
    QuotaRemaining        INTEGER,
    QuotaResetTimestamp   DATETIME,
    Notes                 TEXT,
    CorrelationId         TEXT,
    TraceId               TEXT,
    ServiceInstanceId     TEXT,
    ErrorMessage          TEXT,
    HandledByMiddleware   INTEGER
);

INSERT INTO api_throttle_events VALUES (1, 9001, 301, '/search', 'GET', '2024-03-20 12:30:45', 429, 'RateLimit', 30, '192.0.2.1', 'Mozilla/5.0', 'US', 1, 300, 2001, 'v1', 0, 0, 60, 120, 100, 0, 0, '2024-03-20 13:00:45', 'Exceeded per minute', 'corr-abc-1', 'trace-xyz-1', 'svc-01', 'Rate limit exceeded', 1);
INSERT INTO api_throttle_events VALUES (2, 9002, 302, '/post', 'POST', '2024-03-20 12:31:10', 403, 'IPBlock', 0, '198.51.100.23', 'curl/7.68.0', 'DE', 1, 86400, 2002, 'v1', 512, 1024, 86400, 1, 5000, 4999, '2024-03-21 12:31:10', 'IP temporarily blocked', 'corr-abc-2', 'trace-xyz-2', 'svc-02', 'IP block applied', 1);
INSERT INTO api_throttle_events VALUES (3, 9003, NULL, '/metrics', 'GET', '2024-03-20 12:32:00', 200, 'None', 0, '203.0.113.5', 'Prometheus/2.26.0', 'JP', 0, 0, 2003, 'v2', 0, 256, 60, 10, 1000, 990, '2024-03-20 13:00:00', 'Normal request', 'corr-abc-3', 'trace-xyz-3', 'svc-03', NULL, 0);

-- External API calls tracking
CREATE TABLE external_api_calls
(
    CallId                INTEGER PRIMARY KEY,
    ServiceName           TEXT,
    EndpointUrl           TEXT,
    HttpMethod            TEXT,
    RequestTimestamp      DATETIME,
    ResponseTimestamp     DATETIME,
    RequestHeadersHash    TEXT,
    ResponseHeadersHash   TEXT,
    RequestBodySize       INTEGER,
    ResponseBodySize      INTEGER,
    HttpStatusCode        INTEGER,
    ErrorCode             TEXT,
    ErrorMessage          TEXT,
    RetryCount            INTEGER,
    IsSuccessful          INTEGER,
    LatencyMs             INTEGER,
    CallerApplicationId   INTEGER,
    CallerInstanceId      TEXT,
    CorrelationId         TEXT,
    TraceId               TEXT,
    ServiceRegion         TEXT,
    AuthenticationMethod  TEXT,
    ApiVersion            TEXT,
    RateLimitRemaining    INTEGER,
    RateLimitReset        DATETIME,
    PayloadChecksum       TEXT,
    DestinationIp         TEXT,
    DestinationPort       INTEGER,
    Protocol              TEXT,
    EncryptionEnabled     INTEGER,
    LoggingLevel          TEXT
);

INSERT INTO external_api_calls VALUES (1, 'PaymentGateway', 'https://pay.example.com/charge', 'POST', '2024-03-20 10:00:00', '2024-03-20 10:00:02', 'hashreq1', 'hashres1', 1024, 256, 200, NULL, NULL, 0, 1, 2000, 4001, 'inst-01', 'corr-001', 'trace-001', 'us-east', 'OAuth2', 'v2', 999, '2024-03-20 10:05:00', 'chk123', '203.0.113.10', 443, 'HTTPS', 1, 'INFO');
INSERT INTO external_api_calls VALUES (2, 'GeoIPService', 'https://geo.example.com/lookup', 'GET', '2024-03-20 10:05:10', '2024-03-20 10:05:11', 'hashreq2', 'hashres2', 0, 512, 200, NULL, NULL, 0, 1, 1000, 4002, 'inst-02', 'corr-002', 'trace-002', 'eu-west', 'APIKey', 'v1', 5000, '2024-03-20 11:00:00', 'chk124', '198.51.100.20', 443, 'HTTPS', 1, 'DEBUG');
INSERT INTO external_api_calls VALUES (3, 'EmailProvider', 'https://mail.example.com/send', 'POST', '2024-03-20 10:10:00', '2024-03-20 10:10:05', 'hashreq3', 'hashres3', 2048, 128, 500, 'SMTP500', 'Server error', 2, 0, 5000, 4003, 'inst-03', 'corr-003', 'trace-003', 'ap-south', 'SMTP', 'v3', 0, '2024-03-20 10:15:00', 'chk125', '192.0.2.55', 25, 'SMTP', 0, 'ERROR');

-- Device fingerprint data
CREATE TABLE device_fingerprint
(
    FingerprintId         INTEGER PRIMARY KEY,
    UserId                INTEGER,
    DeviceId              TEXT,
    BrowserName           TEXT,
    BrowserVersion        TEXT,
    OSName                TEXT,
    OSVersion             TEXT,
    ScreenResolution      TEXT,
    ColorDepth            INTEGER,
    TimezoneOffsetMinutes INTEGER,
    Language              TEXT,
    Platform              TEXT,
    HardwareConcurrency   INTEGER,
    DeviceMemoryGB        REAL,
    TouchSupport          INTEGER,
    WebGLVendor           TEXT,
    WebGLRenderer         TEXT,
    AudioContextFingerprint TEXT,
    CanvasFingerprint     TEXT,
    FontListHash          TEXT,
    PluginsHash           TEXT,
    UserAgentHash         TEXT,
    CreatedAt             DATETIME,
    UpdatedAt             DATETIME,
    IsActive              INTEGER,
    LastSeenAt            DATETIME,
    RiskScore             REAL,
    FlaggedReason         TEXT,
    SessionCount          INTEGER,
    AvgSessionDurationSec INTEGER
);

INSERT INTO device_fingerprint VALUES (1, 301, 'dev-001', 'Chrome', '115.0', 'Windows', '10', '1920x1080', 24, -300, 'en-US', 'Desktop', 8, 8.0, 1, 'Google Inc.', 'Intel(R) Iris(TM) Xe', 'afp123', 'cfp123', 'flh123', 'phh123', 'uah123', '2024-03-20 08:00:00', '2024-03-20 12:30:00', 1, '2024-03-20 12:30:00', 0.12, NULL, 15, 1800);
INSERT INTO device_fingerprint VALUES (2, 302, 'dev-002', 'Firefox', '112.0', 'Linux', 'Ubuntu 20.04', '1366x768', 24, 60, 'de-DE', 'Desktop', 12, 16.0, 0, 'Mozilla', 'AMD Radeon', 'afp124', 'cfp124', 'flh124', 'phh124', 'uah124', '2024-03-19 09:15:00', '2024-03-20 10:45:00', 1, '2024-03-20 10:45:00', 0.08, NULL, 22, 2100);
INSERT INTO device_fingerprint VALUES (3, 303, 'dev-003', 'Safari', '16.4', 'iOS', '16.2', '828x1792', 24, -420, 'ja-JP', 'Mobile', 6, 4.0, 1, 'Apple', 'Apple A13', 'afp125', 'cfp125', 'flh125', 'phh125', 'uah125', '2024-03-18 07:30:00', '2024-03-20 11:20:00', 1, '2024-03-20 11:20:00', 0.05, NULL, 30, 1500);

-- Session metadata details
CREATE TABLE session_metadata
(
    SessionId            INTEGER PRIMARY KEY,
    UserId               INTEGER,
    SessionToken         TEXT,
    CreatedAt            DATETIME,
    LastAccessedAt       DATETIME,
    ExpirationAt         DATETIME,
    IPAddress            TEXT,
    DeviceId             TEXT,
    UserAgent            TEXT,
    Locale               TEXT,
    IsPersistent         INTEGER,
    AuthMethod           TEXT,
    LoginProvider        TEXT,
    MFACompleted         INTEGER,
    PermissionsHash      TEXT,
    FeatureFlagsHash     TEXT,
    GeoRegion            TEXT,
    BrowserFingerprint   TEXT,
    IsActive             INTEGER,
    TerminationReason    TEXT,
    SessionLengthSec     INTEGER,
    DataTransferBytes    INTEGER,
    ApiCallCount         INTEGER,
    ErrorsEncountered    INTEGER,
    LastErrorCode        TEXT,
    LastErrorMessage     TEXT,
    RefreshCount         INTEGER,
    SuspendedUntil       DATETIME,
    ParentSessionId      INTEGER,
    SourceApplication    TEXT,
    Remarks              TEXT
);

INSERT INTO session_metadata VALUES (1, 301, 'tok-abc-001', '2024-03-20 08:00:00', '2024-03-20 12:45:00', '2024-04-20 08:00:00', '192.0.2.10', 'dev-001', 'Mozilla/5.0', 'en-US', 1, 'Password', 'Local', 1, 'permhash1', 'ffhash1', 'US', 'bf123', 1, NULL, 16500, 5000000, 120, 0, NULL, NULL, 2, NULL, NULL, 'WebApp', 'Standard session');
INSERT INTO session_metadata VALUES (2, 302, 'tok-def-002', '2024-03-20 09:15:00', '2024-03-20 10:45:00', '2024-04-20 09:15:00', '198.51.100.20', 'dev-002', 'Mozilla/5.0', 'de-DE', 0, 'OAuth2', 'Google', 1, 'permhash2', 'ffhash2', 'DE', 'bf124', 1, NULL, 5400, 2000000, 45, 1, 'E001', 'Invalid token', 1, NULL, NULL, 'MobileApp', 'Short session');
INSERT INTO session_metadata VALUES (3, 303, 'tok-ghi-003', '2024-03-20 07:30:00', '2024-03-20 11:20:00', '2024-04-20 07:30:00', '203.0.113.30', 'dev-003', 'Mozilla/5.0', 'ja-JP', 1, 'Password', 'Local', 0, 'permhash3', 'ffhash3', 'JP', 'bf125', 0, 'Logout', 13800, 3500000, 80, 0, NULL, NULL, 0, NULL, NULL, 'WebApp', 'Session ended by user');

-- Advertising network metrics per day
CREATE TABLE ad_network_metrics
(
    MetricId                 INTEGER PRIMARY KEY,
    NetworkName              TEXT,
    Date                     DATE,
    Impressions              INTEGER,
    Clicks                   INTEGER,
    Conversions              INTEGER,
    SpendUSD                 REAL,
    RevenueUSD               REAL,
    CPM                      REAL,
    CPC                      REAL,
    CPA                      REAL,
    ViewabilityRate          REAL,
    FraudScore               REAL,
    GeoCountryCode           TEXT,
    DeviceCategory           TEXT,
    BrowserFamily            TEXT,
    AdFormat                 TEXT,
    PlacementType            TEXT,
    CampaignId               INTEGER,
    CreativeId               INTEGER,
    AudienceSegment          TEXT,
    FrequencyCap             INTEGER,
    FrequencyCapReached     INTEGER,
    AvgViewTimeSec          REAL,
    LoadTimeMs               INTEGER,
    ErrorsCount              INTEGER,
    BlockedRequests          INTEGER,
    InvalidRequests          INTEGER,
    EstimatedReach           INTEGER,
    EstimatedFrequency       REAL,
    AttributionModel         TEXT
);

INSERT INTO ad_network_metrics VALUES (1, 'GoogleAds', '2024-03-19', 1500000, 35000, 5000, 1200.75, 1800.50, 8.0, 0.034, 0.24, 0.6, 0.02, 'US', 'Desktop', 'Chrome', 'Banner', 'AboveFold', 101, 1001, 'TechEnthusiasts', 3, 0, 15.2, 120, 5, 0, 2, 200000, 4.5, 'LastClick');
INSERT INTO ad_network_metrics VALUES (2, 'MetaAds', '2024-03-19', 800000, 22000, 3000, 950.40, 1300.10, 11.9, 0.043, 0.32, 0.55, 0.03, 'DE', 'Mobile', 'Safari', 'Video', 'InFeed', 102, 1002, 'TravelSeekers', 2, 10, 12.8, 140, 8, 1, 0, 150000, 5.0, 'FirstClick');
INSERT INTO ad_network_metrics VALUES (3, 'TwitterAds', '2024-03-19', 500000, 12000, 1500, 600.25, 800.75, 12.0, 0.05, 0.40, 0.5, 0.04, 'JP', 'Tablet', 'Firefox', 'Native', 'Sidebar', 103, 1003, 'GamingFans', 4, 2, 9.5, 110, 3, 0, 1, 100000, 3.8, 'Linear');

-- Regional content consumption metrics
CREATE TABLE regional_content_metrics
(
    RecordId                INTEGER PRIMARY KEY,
    RegionCode              TEXT,
    ContentCategory         TEXT,
    Date                    DATE,
    Views                   INTEGER,
    UniqueVisitors          INTEGER,
    AvgSessionDurationSec   REAL,
    BounceRate              REAL,
    ShareCount              INTEGER,
    DownloadCount           INTEGER,
    LikeCount               INTEGER,
    DislikeCount            INTEGER,
    CommentCount            INTEGER,
    AvgRating               REAL,
    MedianRating            REAL,
    TopArticleId            INTEGER,
    TopAuthorId             INTEGER,
    AvgWordsPerArticle      REAL,
    AvgImagesPerArticle     REAL,
    MobileTrafficPct        REAL,
    DesktopTrafficPct       REAL,
    TabletTrafficPct        REAL,
    AvgScrollDepthPct       REAL,
    AvgEngagementScore      REAL,
    ContentFreshnessDays    INTEGER,
    TrendingScore           REAL,
    LanguageDistribution   TEXT,
    TimeOnPageAvgSec        REAL,
    InteractionRate         REAL,
    ConversionRate          REAL,
    ReferralTrafficPct      REAL
);

INSERT INTO regional_content_metrics VALUES (1, 'US', 'Technology', '2024-03-19', 2500000, 800000, 300.5, 0.45, 15000, 8000, 12000, 300, 5000, 4.2, 4, 11001, 201, 850.0, 3.2, 0.60, 0.35, 0.05, 0.70, 0.75, 10, 85.0, 'en:90,es:5,fr:5', 250.0, 0.12, 0.03, 0.20);
INSERT INTO regional_content_metrics VALUES (2, 'DE', 'Health', '2024-03-19', 1800000, 600000, 420.0, 0.38, 12000, 5000, 9000, 250, 3000, 4.5, 5, 11002, 202, 900.0, 2.5, 0.40, 0.55, 0.05, 0.65, 0.70, 8, 78.0, 'de:85,en:10,fr:5', 380.0, 0.10, 0.025, 0.18);
INSERT INTO regional_content_metrics VALUES (3, 'JP', 'Gaming', '2024-03-19', 1200000, 450000, 280.0, 0.50, 8000, 3000, 11000, 400, 2500, 4.0, 3, 11003, 203, 800.0, 4.0, 0.70, 0.20, 0.10, 0.75, 0.80, 12, 90.5, 'ja:95,en:3,zh:2', 210.0, 0.15, 0.04, 0.25);

-- Knowledge base articles repository
CREATE TABLE knowledge_base_articles
(
    ArticleId               INTEGER PRIMARY KEY,
    Title                   TEXT,
    Summary                 TEXT,
    Body                    TEXT,
    Category                TEXT,
    Tags                    TEXT,
    AuthorUserId            INTEGER,
    CreatedAt               DATETIME,
    UpdatedAt               DATETIME,
    PublishedAt             DATETIME,
    IsPublished             INTEGER,
    ViewCount               INTEGER,
    LikeCount               INTEGER,
    DislikeCount            INTEGER,
    CommentCount            INTEGER,
    RatingAverage           REAL,
    RatingCount             INTEGER,
    LanguageCode            TEXT,
    Version                 TEXT,
    RevisionNumber          INTEGER,
    LastRevisionByUserId    INTEGER,
    AccessLevel             TEXT,
    RequiresAuth            INTEGER,
    RelatedArticleIds       TEXT,
    PrerequisiteArticleIds TEXT,
    EstimatedReadTimeSec    INTEGER,
    Featured                INTEGER,
    SEOScore                REAL,
    ExternalReferenceUrl    TEXT,
    SourceSystem            TEXT,
    ApprovalStatus          TEXT,
    ApprovedByUserId        INTEGER,
    ApprovalDate            DATETIME,
    Keywords                TEXT,
    ContentType             TEXT,
    MediaAttachmentIds      TEXT,
    AuditTrailId            INTEGER,
    IsArchived              INTEGER
);

INSERT INTO knowledge_base_articles VALUES (1, 'How to Write SQL Joins', 'Guide on writing joins', 'Full article body here', 'Database', 'sql,joins,relational', 301, '2024-01-10 09:00:00', '2024-02-15 10:30:00', '2024-02-20 08:00:00', 1, 25000, 1800, 50, 300, 4.6, 1200, 'en', 'v1.0', 3, 302, 'Public', 0, '2,3', '0', 900, 1, 85.5, NULL, 'InternalKB', 'Approved', 401, '2024-02-21 12:00:00', 'sql,joins,database', 'Article', NULL, 5001, 0);
INSERT INTO knowledge_base_articles VALUES (2, 'Understanding REST APIs', 'Basics of REST', 'Full article body here', 'Programming', 'api,rest,http', 302, '2024-02-01 11:15:00', '2024-02-20 14:00:00', '2024-02-25 09:30:00', 1, 18000, 1500, 30, 200, 4.4, 950, 'en', 'v1.1', 2, 303, 'Public', 0, '4,5', '1', 800, 0, 78.0, NULL, 'InternalKB', 'Pending', NULL, NULL, 'api,rest,web', 'Article', NULL, 5002, 0);
INSERT INTO knowledge_base_articles VALUES (3, 'Advanced CSS Grid Layouts', 'Deep dive into CSS Grid', 'Full article body here', 'Web Design', 'css,grid,layout', 303, '2024-01-20 08:45:00', '2024-02-18 16:20:00', NULL, 0, 9000, 800, 20, 120, 4.2, 600, 'en', 'v2.0', 1, 304, 'Public', 0, '6,7', '2', 750, 0, 70.0, NULL, 'ExternalDocs', 'Draft', NULL, NULL, 'css,grid,design', 'Article', NULL, 5003, 0);