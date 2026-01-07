-- Table storing AI generated insights for posts
CREATE TABLE content_ai_insights
(
    Id INTEGER PRIMARY KEY,
    PostId INTEGER,
    InsightText TEXT,
    ConfidenceScore REAL,
    GeneratedAt DATETIME,
    ModelVersion TEXT,
    Source TEXT,
    TagSuggestions TEXT,
    Summary TEXT,
    KeywordList TEXT,
    Language TEXT,
    EntityCount INTEGER,
    SentimentScore REAL,
    RelevanceScore REAL,
    IsFlagged INTEGER,
    ReviewerId INTEGER,
    ReviewComment TEXT,
    ReviewDate DATETIME,
    PriorityLevel INTEGER,
    Category TEXT
);

INSERT INTO content_ai_insights VALUES (1, 101, 'Insight about algorithm performance', 0.92, '2023-11-01 10:15:00', 'v1.2', 'internal', 'machinelearning,performance', 'AI suggests optimizing loop', 'loop,optimization,complexity', 'en', 5, 0.1, 0.85, 0, 12, 'Looks good', '2023-11-02 09:00:00', 2, 'performance');
INSERT INTO content_ai_insights VALUES (2, 102, 'Potential security issue detected', 0.88, '2023-11-03 14:20:00', 'v1.2', 'external', 'security,sqlinjection', 'Check for input sanitization', 'sql,injection,input', 'en', 3, -0.5, 0.78, 1, 15, 'Needs review', '2023-11-04 11:30:00', 1, 'security');
INSERT INTO content_ai_insights VALUES (3, 103, 'Content relevance to tag python', 0.95, '2023-11-05 08:45:00', 'v1.3', 'internal', 'python,code', 'Highly relevant to python tag', 'python,code,example', 'en', 7, 0.6, 0.92, 0, 18, 'Approved', '2023-11-06 13:10:00', 3, 'relevance');

-- Table tracking user digital wallets
CREATE TABLE user_wallets
(
    Id INTEGER PRIMARY KEY,
    UserId INTEGER,
    WalletId TEXT,
    Balance REAL,
    Currency TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    IsActive INTEGER,
    LastTransactionId INTEGER,
    TransactionCount INTEGER,
    LastDepositDate DATETIME,
    LastWithdrawalDate DATETIME,
    PromoCredit REAL,
    RewardPoints INTEGER,
    VerificationStatus TEXT,
    KycLevel INTEGER,
    WithdrawalLimit REAL,
    DepositLimit REAL,
    FraudScore REAL,
    Note TEXT
);

INSERT INTO user_wallets VALUES (1, 201, 'WLT001', 150.75, 'USD', '2022-01-10 09:00:00', '2023-10-20 12:30:00', 1, 5001, 45, '2023-10-15 08:00:00', '2023-10-18 14:20:00', 10.00, 1200, 'verified', 3, 5000.00, 10000.00, 0.02, 'Primary wallet');
INSERT INTO user_wallets VALUES (2, 202, 'WLT002', 20.00, 'EUR', '2022-05-22 11:15:00', '2023-09-30 16:45:00', 1, 5002, 12, '2023-09-25 10:05:00', '2023-09-28 09:40:00', 5.00, 300, 'pending', 2, 2000.00, 8000.00, 0.10, 'Promo wallet');
INSERT INTO user_wallets VALUES (3, 203, 'WLT003', 0.00, 'USD', '2023-02-01 13:20:00', '2023-10-01 07:55:00', 0, NULL, 0, NULL, NULL, 0.00, 0, 'unverified', 0, 0.00, 0.00, 0.95, 'Closed account');

-- Table describing external knowledge data sources
CREATE TABLE external_knowledge_sources
(
    Id INTEGER PRIMARY KEY,
    SourceName TEXT,
    SourceType TEXT,
    ApiEndpoint TEXT,
    AuthMethod TEXT,
    ApiKey TEXT,
    RateLimit INTEGER,
    DailyQuota INTEGER,
    AvgResponseTimeMs INTEGER,
    ReliabilityScore REAL,
    DataFormat TEXT,
    LastSync DATETIME,
    ContactEmail TEXT,
    DocumentationUrl TEXT,
    IsActive INTEGER,
    ContractStart DATETIME,
    ContractEnd DATETIME,
    SLAHours INTEGER,
    SupportLevel TEXT,
    Notes TEXT
);

INSERT INTO external_knowledge_sources VALUES (1, 'OpenScienceDB', 'rest', 'https://api.opensciencedb.org/v1', 'apikey', 'OSDB123KEY', 1000, 20000, 250, 0.99, 'json', '2023-10-31 23:00:00', 'support@opensciencedb.org', 'https://docs.opensciencedb.org', 1, '2022-01-01 00:00:00', '2025-01-01 00:00:00', 24, 'gold', 'Primary research source');
INSERT INTO external_knowledge_sources VALUES (2, 'NewsFeedAPI', 'rest', 'https://newsfeed.example.com/api', 'oauth2', 'NFAPI456TOKEN', 500, 10000, 150, 0.95, 'xml', '2023-10-30 22:15:00', 'contact@newsfeed.example.com', 'https://newsfeed.example.com/docs', 1, '2021-06-15 00:00:00', '2024-06-15 00:00:00', 12, 'silver', 'News articles aggregation');
INSERT INTO external_knowledge_sources VALUES (3, 'LegacyCSVArchive', 'file', '/data/legacy/archive.csv', 'none', '', 0, 0, 0, 0.80, 'csv', '2023-09-20 18:00:00', 'admin@legacyarchive.local', '', 0, NULL, NULL, 0, 'none', 'Historical offline data');

-- Detailed API usage logs
CREATE TABLE api_usage_detail
(
    Id INTEGER PRIMARY KEY,
    ApiKeyId INTEGER,
    Endpoint TEXT,
    HttpMethod TEXT,
    RequestTimestamp DATETIME,
    ResponseTimeMs INTEGER,
    StatusCode INTEGER,
    BytesSent INTEGER,
    BytesReceived INTEGER,
    UserAgent TEXT,
    IPAddress TEXT,
    Referrer TEXT,
    IsCached INTEGER,
    RateLimitRemaining INTEGER,
    QuotaUsed INTEGER,
    Region TEXT,
    ServiceVersion TEXT,
    ErrorMessage TEXT,
    CorrelationId TEXT,
    ProcessingNode TEXT
);

INSERT INTO api_usage_detail VALUES (1, 301, '/v1/posts', 'GET', '2023-10-31 10:05:12', 120, 200, 0, 5420, 'Mozilla/5.0', '192.168.10.5', '', 0, 980, 1, 'us-east', '1.4', '', 'corr-abc123', 'node-12');
INSERT INTO api_usage_detail VALUES (2, 302, '/v1/users/45', 'PUT', '2023-10-31 10:07:45', 250, 400, 350, 1280, 'PostmanRuntime/7.28.4', '10.0.2.15', '', 0, 970, 2, 'eu-west', '1.4', 'Validation error', 'corr-def456', 'node-07');
INSERT INTO api_usage_detail VALUES (3, 301, '/v1/comments', 'POST', '2023-10-31 10:10:03', 180, 201, 480, 1024, 'curl/7.68.0', '203.0.113.9', '', 1, 969, 3, 'ap-south', '1.4', '', 'corr-ghi789', 'node-12');

-- Device power consumption measurements
CREATE TABLE device_power_consumption
(
    Id INTEGER PRIMARY KEY,
    DeviceId INTEGER,
    Timestamp DATETIME,
    PowerWatts REAL,
    Voltage REAL,
    CurrentAmps REAL,
    TemperatureC REAL,
    Location TEXT,
    Mode TEXT,
    BatteryLevel INTEGER,
    CpuUtilization REAL,
    MemoryUtilization REAL,
    DiskIO REAL,
    NetworkIO REAL,
    IsCharging INTEGER,
    FirmwareVersion TEXT,
    PowerSource TEXT,
    Operator TEXT,
    EventType TEXT,
    Comment TEXT
);

INSERT INTO device_power_consumption VALUES (1, 401, '2023-10-31 09:00:00', 45.6, 3.3, 13.8, 42.5, 'DataCenterA', 'idle', 85, 12.5, 30.2, 0.5, 1.2, 0, 'FW1.2.3', 'ac', 'system', 'snapshot', 'Normal operation');
INSERT INTO device_power_consumption VALUES (2, 402, '2023-10-31 09:05:00', 78.2, 5.0, 15.6, 55.0, 'DataCenterB', 'active', 70, 65.0, 75.0, 3.1, 4.5, 1, 'FW2.0.1', 'battery', 'operator1', 'peak', 'High load period');
INSERT INTO device_power_consumption VALUES (3, 403, '2023-10-31 09:10:00', 12.0, 3.3, 3.6, 38.0, 'RemoteSite', 'sleep', 95, 5.0, 20.0, 0.1, 0.2, 0, 'FW0.9.8', 'solar', 'system', 'maintenance', 'Power check after maintenance');

-- Sentiment analysis results for forum threads
CREATE TABLE forum_thread_sentiments
(
    Id INTEGER PRIMARY KEY,
    ThreadId INTEGER,
    SentimentScore REAL,
    PositiveWordCount INTEGER,
    NegativeWordCount INTEGER,
    NeutralWordCount INTEGER,
    AvgSentenceLength REAL,
    Language TEXT,
    AnalyzedAt DATETIME,
    AnalyzerVersion TEXT,
    Keywords TEXT,
    Summary TEXT,
    Topic TEXT,
    Category TEXT,
    IsFlagged INTEGER,
    ReviewerId INTEGER,
    ReviewComment TEXT,
    ReviewDate DATETIME,
    Confidence REAL,
    Source TEXT
);

INSERT INTO forum_thread_sentiments VALUES (1, 501, 0.73, 45, 5, 20, 14.2, 'en', '2023-10-30 16:20:00', 'sentim-2.0', 'performance,optimization', 'Overall positive tone', 'Performance Tuning', 'technical', 0, 12, '', NULL, 0.88, 'nlpservice');
INSERT INTO forum_thread_sentiments VALUES (2, 502, -0.42, 10, 30, 15, 12.8, 'en', '2023-10-30 16:45:00', 'sentim-2.0', 'bug,crash', 'Negative feedback on recent release', 'Release Issues', 'support', 1, 15, 'Needs moderator attention', '2023-10-31 09:00:00', 0.95, 'nlpservice');
INSERT INTO forum_thread_sentiments VALUES (3, 503, 0.15, 20, 18, 25, 13.5, 'en', '2023-10-30 17:10:00', 'sentim-2.0', 'question,help', 'Mixed sentiment, seeking help', 'General Question', 'community', 0, 18, '', NULL, 0.70, 'nlpservice');

-- Advertisement campaign budget allocations
CREATE TABLE advertisement_budget_allocations
(
    Id INTEGER PRIMARY KEY,
    CampaignId INTEGER,
    FiscalYear INTEGER,
    Quarter INTEGER,
    BudgetAmount REAL,
    Currency TEXT,
    AllocatedDate DATETIME,
    ApprovedBy INTEGER,
    ApprovalStatus TEXT,
    SpendToDate REAL,
    RemainingBudget REAL,
    CostPerImpression REAL,
    CostPerClick REAL,
    TargetRegion TEXT,
    TargetAudience TEXT,
    Channel TEXT,
    IsRecurring INTEGER,
    RenewalDate DATETIME,
    Notes TEXT,
    CreatedAt DATETIME
);

INSERT INTO advertisement_budget_allocations VALUES (1, 601, 2023, 4, 50000.00, 'USD', '2023-10-01 08:00:00', 22, 'approved', 12000.00, 38000.00, 0.05, 0.80, 'NorthAmerica', 'developers', 'search', 1, '2024-10-01 08:00:00', 'Quarterly budget', '2023-09-20 12:30:00');
INSERT INTO advertisement_budget_allocations VALUES (2, 602, 2023, 4, 30000.00, 'USD', '2023-10-01 09:15:00', 23, 'pending', 5000.00, 25000.00, 0.07, 1.20, 'Europe', 'dataScientists', 'display', 0, NULL, 'Waiting for finance approval', '2023-09-22 14:45:00');
INSERT INTO advertisement_budget_allocations VALUES (3, 603, 2023, 4, 20000.00, 'EUR', '2023-10-02 10:00:00', 24, 'approved', 8000.00, 12000.00, 0.06, 0.95, 'Asia', 'students', 'video', 1, '2024-10-02 10:00:00', 'Annual recurring', '2023-09-25 11:20:00');

-- Links representing prerequisite relationships between learning paths
CREATE TABLE learning_path_prerequisite_links
(
    Id INTEGER PRIMARY KEY,
    LearningPathId INTEGER,
    PrerequisitePathId INTEGER,
    LinkType TEXT,
    CreatedAt DATETIME,
    CreatedBy INTEGER,
    IsMandatory INTEGER,
    OrderIndex INTEGER,
    Reason TEXT,
    Notes TEXT,
    EffectiveFrom DATETIME,
    EffectiveTo DATETIME,
    Status TEXT,
    ReviewerId INTEGER,
    ReviewDate DATETIME,
    ConfidenceLevel REAL,
    SourceSystem TEXT,
    ExternalReference TEXT,
    OverrideFlag INTEGER,
    UpdateTimestamp DATETIME,
    UpdatedBy INTEGER
);

INSERT INTO learning_path_prerequisite_links VALUES (1, 701, 600, 'hard', '2023-09-15 08:30:00', 31, 1, 1, 'Foundation skill', 'Core requirement', '2023-09-15 00:00:00', NULL, 'active', 45, '2023-09-20 12:00:00', 0.99, 'learninghub', 'REF123', 0, '2023-09-20 12:00:00', 31);
INSERT INTO learning_path_prerequisite_links VALUES (2, 702, 701, 'soft', '2023-09-18 09:45:00', 32, 0, 2, 'Recommended after basics', 'Optional', '2023-09-18 00:00:00', NULL, 'active', 46, '2023-09-22 14:10:00', 0.85, 'learninghub', 'REF124', 0, '2023-09-22 14:10:00', 32);
INSERT INTO learning_path_prerequisite_links VALUES (3, 703, 702, 'hard', '2023-09-20 10:00:00', 33, 1, 3, 'Critical for certification', 'Must complete', '2023-09-20 00:00:00', '2024-09-20 00:00:00', 'active', 47, '2023-09-25 09:30:00', 0.95, 'learninghub', 'REF125', 0, '2023-09-25 09:30:00', 33);

-- Reviews of post quality performed by moderators
CREATE TABLE post_quality_reviews
(
    Id INTEGER PRIMARY KEY,
    PostId INTEGER,
    ReviewerId INTEGER,
    ReviewDate DATETIME,
    QualityScore REAL,
    ReadabilityScore REAL,
    TechnicalDepthScore REAL,
    AccuracyScore REAL,
    OriginalityScore REAL,
    RelevanceScore REAL,
    Comments TEXT,
    IsApproved INTEGER,
    ApprovedBy INTEGER,
    ApprovalDate DATETIME,
    SuggestedEdits TEXT,
    TagRecommendations TEXT,
    Language TEXT,
    WordCount INTEGER,
    SentenceCount INTEGER,
    AvgWordLength REAL,
    PlagiarismFlag INTEGER
);

INSERT INTO post_quality_reviews VALUES (1, 801, 55, '2023-10-28 11:20:00', 0.88, 0.80, 0.85, 0.90, 0.75, 0.82, 'Well structured and accurate', 1, 55, '2023-10-28 12:00:00', 'None', 'python,algorithm', 'en', 1200, 55, 4.5, 0);
INSERT INTO post_quality_reviews VALUES (2, 802, 56, '2023-10-29 09:45:00', 0.62, 0.55, 0.60, 0.58, 0.50, 0.65, 'Needs more details on edge cases', 0, NULL, NULL, 'Add examples', 'java,exception', 'en', 800, 40, 5.0, 0);
INSERT INTO post_quality_reviews VALUES (3, 803, 57, '2023-10-30 14:10:00', 0.95, 0.92, 0.94, 0.97, 0.90, 0.93, 'Excellent answer with thorough explanation', 1, 57, '2023-10-30 15:00:00', 'None', 'c++,templates', 'en', 1500, 70, 4.8, 0);

-- Supplier shipping methods catalog
CREATE TABLE supplier_shipping_methods
(
    Id INTEGER PRIMARY KEY,
    SupplierId INTEGER,
    MethodName TEXT,
    CarrierCode TEXT,
    ServiceLevel TEXT,
    EstimatedDays INTEGER,
    CostPerKg REAL,
    CostFlatRate REAL,
    TrackingAvailable INTEGER,
    International INTEGER,
    HazardousSupported INTEGER,
    MaxWeightKg REAL,
    MaxDimensionsCm TEXT,
    RequiresSignature INTEGER,
    InsuranceAvailable INTEGER,
    DefaultMethod INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    IsActive INTEGER,
    Notes TEXT
);

INSERT INTO supplier_shipping_methods VALUES (1, 901, 'ExpressAir', 'AA', 'express', 2, 3.50, 15.00, 1, 1, 0, 30.0, '120x80x60', 1, 1, 1, '2023-01-10 08:00:00', '2023-09-15 10:20:00', 1, 'Fastest service');
INSERT INTO supplier_shipping_methods VALUES (2, 902, 'StandardGround', 'GG', 'standard', 7, 1.20, 5.00, 1, 0, 0, 100.0, '200x150x120', 0, 1, 0, '2023-02-05 09:30:00', '2023-08-20 11:45:00', 1, 'Economical option');
INSERT INTO supplier_shipping_methods VALUES (3, 903, 'HazardousSpecial', 'HS', 'special', 5, 5.00, 25.00, 1, 1, 1, 20.0, '100x80x50', 1, 0, 0, '2023-03-12 07:15:00', '2023-09-01 14:00:00', 0, 'Currently suspended due to regulations');