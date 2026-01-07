-- Knowledge graph entities table
CREATE TABLE knowledge_graph_entities
(
    Id                 INTEGER          NOT NULL PRIMARY KEY,
    EntityType         TEXT,
    Name               TEXT,
    Description        TEXT,
    CreatedDate        DATETIME,
    UpdatedDate        DATETIME,
    SourceSystem       TEXT,
    ExternalId         TEXT,
    IsActive           INTEGER,
    ConfidenceScore    REAL,
    Category           TEXT,
    Subcategory        TEXT,
    OwnerTeam          TEXT,
    Tags               TEXT,
    Version            TEXT,
    LastSynced         DATETIME,
    DataSchema         TEXT,
    OwnerContact       TEXT,
    RelatedCount       INTEGER,
    MetadataJson       TEXT
);

INSERT INTO knowledge_graph_entities VALUES
(1, 'Person', 'Alice Smith', 'Researcher in AI', '2022-05-01 09:00:00', '2023-03-10 14:30:00', 'HRSystem', 'HR12345', 1, 0.96, 'Employee', 'Research', 'AI Team', 'ml,ai', 'v1.2', '2023-03-10 14:30:00', 'schema_v5', 'alice.smith@example.com', 5, '{"key":"value"}'),
(2, 'Project', 'QuantumX', 'Quantum computing project', '2021-11-15 08:15:00', '2023-01-20 11:45:00', 'PMTool', 'PRJ6789', 1, 0.89, 'Research', 'Quantum', 'Quantum Lab', 'quantum,computing', 'v3.0', '2023-01-20 11:45:00', 'schema_v7', 'lead@quantumlab.com', 12, '{"status":"active"}'),
(3, 'Asset', 'Server01', 'Primary database server', '2020-02-10 07:00:00', '2022-12-05 16:20:00', 'ITInventory', 'SVR001', 0, 0.75, 'Infrastructure', 'Server', 'DB Team', 'db,server', 'v2.5', '2022-12-05 16:20:00', 'schema_v2', 'admin@it.com', 0, '{"notes":"decommissioned"}');

-- API consumer quota logs
CREATE TABLE api_consumer_quota_logs
(
    LogId            INTEGER NOT NULL PRIMARY KEY,
    ConsumerId       INTEGER,
    ApiEndpoint      TEXT,
    QuotaLimit       INTEGER,
    QuotaUsed        INTEGER,
    QuotaRemaining   INTEGER,
    PeriodStart      DATETIME,
    PeriodEnd        DATETIME,
    RequestCount     INTEGER,
    ErrorCount       INTEGER,
    AvgLatencyMs     REAL,
    MaxLatencyMs     REAL,
    MinLatencyMs     REAL,
    SuccessRate      REAL,
    Throttled        INTEGER,
    CreatedAt        DATETIME,
    UpdatedAt        DATETIME,
    Region           TEXT,
    ServiceName      TEXT,
    Notes            TEXT
);

INSERT INTO api_consumer_quota_logs VALUES
(101, 2001, '/v1/orders', 10000, 4523, 5477, '2023-04-01 00:00:00', '2023-04-30 23:59:59', 4600, 23, 120.5, 450.0, 80.2, 0.985, 0, '2023-04-15 10:12:00', '2023-04-20 14:05:00', 'us-east', 'OrderService', 'monthly quota'),
(102, 2002, '/v2/payments', 5000, 4980, 20, '2023-04-01 00:00:00', '2023-04-30 23:59:59', 5005, 56, 210.0, 600.0, 95.6, 0, '2023-04-16 09:30:00', '2023-04-21 11:45:00', 'eu-west', 'PaymentGateway', 'near limit'),
(103, 2003, '/v1/reports', 20000, 15000, 5000, '2023-04-01 00:00:00', '2023-04-30 23:59:59', 15200, 12, 98.3, 300.0, 99.2, 1, '2023-04-17 08:20:00', '2023-04-22 13:55:00', 'ap-south', 'ReportingService', 'throttling applied');

-- Regional weather patterns
CREATE TABLE regional_weather_patterns
(
    PatternId          INTEGER NOT NULL PRIMARY KEY,
    RegionCode         TEXT,
    Season             TEXT,
    AvgTempC           REAL,
    AvgPrecipMm        REAL,
    HumidityPct        REAL,
    WindSpeedKmh       REAL,
    SunHours           REAL,
    SnowDays           INTEGER,
    WeatherCode        TEXT,
    Description        TEXT,
    RecordedYear       INTEGER,
    DataSource         TEXT,
    IsAnomalous        INTEGER,
    ConfidenceLevel    REAL,
    CreatedOn          DATETIME,
    UpdatedOn          DATETIME,
    Analyst            TEXT,
    TrendScore         REAL,
    Remarks            TEXT
);

INSERT INTO regional_weather_patterns VALUES
(5001, 'US-NE', 'Winter', -5.2, 78.5, 85.0, 12.3, 5.0, 28, 'SN', 'Heavy snowfall with cold temps', 2022, 'NOAA', 0, 0.92, '2023-01-15 07:00:00', '2023-01-20 10:30:00', 'John Doe', 1.2, 'normal pattern'),
(5002, 'EU-IT', 'Summer', 27.4, 12.0, 55.0, 8.5, 210.0, 0, 'CL', 'Clear and warm', 2022, 'MeteoIT', 0, 0.97, '2023-07-05 06:45:00', '2023-07-10 09:20:00', 'Maria Rossi', 1.8, 'no anomalies'),
(5003, 'AS-JP', 'Spring', 15.8, 45.3, 70.0, 10.0, 150.0, 0, 'RA', 'Mild rain showers', 2022, 'JMA', 1, 0.80, '2023-04-12 08:10:00', '2023-04-18 11:55:00', 'Ken Tanaka', -0.5, 'early rain anomaly');

-- Enterprise taxonomy mappings
CREATE TABLE enterprise_taxonomy_mappings
(
    MappingId          INTEGER NOT NULL PRIMARY KEY,
    TaxonomyId         INTEGER,
    ExternalSystem     TEXT,
    ExternalCode       TEXT,
    InternalCode       TEXT,
    Description        TEXT,
    EffectiveDate      DATETIME,
    ExpiryDate         DATETIME,
    Status             TEXT,
    CreatedBy          TEXT,
    CreatedOn          DATETIME,
    UpdatedBy          TEXT,
    UpdatedOn          DATETIME,
    MappingType        TEXT,
    Priority           INTEGER,
    Confidence         REAL,
    Notes              TEXT,
    OwnerDept          TEXT,
    IsPrimary          INTEGER,
    ValidationRule    TEXT
);

INSERT INTO enterprise_taxonomy_mappings VALUES
(9001, 101, 'SAP', 'SAPMAT001', 'INT001', 'Material code mapping', '2022-01-01 00:00:00', '2025-12-31 23:59:59', 'Active', 'alice', '2022-01-02 09:15:00', 'bob', '2023-02-10 14:20:00', 'OneToOne', 1, 0.99, 'verified annually', 'SupplyChain', 1, 'length=8'),
(9002, 102, 'Oracle', 'ORCLACC45', 'INT045', 'Account number mapping', '2021-06-15 00:00:00', '2024-06-14 23:59:59', 'Active', 'carol', '2021-06-16 10:05:00', 'dave', '2022-11-22 16:40:00', 'ManyToOne', 2, 0.95, 'needs quarterly review', 'Finance', 0, 'numeric'),
(9003, 103, 'Workday', 'WDHR001', 'INT099', 'Employee ID mapping', '2020-03-01 00:00:00', NULL, 'Inactive', 'eve', '2020-03-02 08:30:00', 'frank', '2021-08-15 12:55:00', 'OneToMany', 3, 0.88, 'legacy mapping', 'HR', 0, 'alphanumeric');

-- Digital asset usage
CREATE TABLE digital_asset_usage
(
    UsageId            INTEGER NOT NULL PRIMARY KEY,
    AssetId            INTEGER,
    AssetType          TEXT,
    UserId             INTEGER,
    SessionId          TEXT,
    AccessTime         DATETIME,
    DurationSec        INTEGER,
    DeviceType         TEXT,
    Browser            TEXT,
    IPAddress          TEXT,
    Location           TEXT,
    ActionType         TEXT,
    Result             TEXT,
    SizeBytes          INTEGER,
    BandwidthKbps      REAL,
    ThumbnailGenerated INTEGER,
    Tags               TEXT,
    Rating             INTEGER,
    Comments           TEXT,
    ProcessedFlag      INTEGER
);

INSERT INTO digital_asset_usage VALUES
(30001, 555, 'Image', 2001, 'S0001', '2023-03-10 14:22:00', 45, 'Desktop', 'Chrome', '192.168.1.10', 'NY', 'View', 'Success', 2048000, 3500.5, 1, 'marketing,summer', 4, 'cleared', 1),
(30002, 556, 'Video', 2002, 'S0002', '2023-03-11 09:15:00', 180, 'Mobile', 'Safari', '10.0.0.5', 'CA', 'Play', 'Success', 50000000, 8000.0, 1, 'product,launch', 5, 'high quality', 1),
(30003, 557, 'Document', 2003, 'S0003', '2023-03-12 11:05:00', 30, 'Tablet', 'Firefox', '172.16.0.3', 'TX', 'Download', 'Success', 1024000, 2500.2, 0, 'tech,whitepaper', 3, 'needs review', 0);

-- Learning path milestone events
CREATE TABLE learning_path_milestone_events
(
    EventId            INTEGER NOT NULL PRIMARY KEY,
    PathId             INTEGER,
    MilestoneId        INTEGER,
    UserId             INTEGER,
    EventDate          DATETIME,
    EventType          TEXT,
    Status             TEXT,
    Score              REAL,
    TimeSpentSec       INTEGER,
    CompletionDate     DATETIME,
    CertificateId      TEXT,
    Issuer             TEXT,
    Remarks            TEXT,
    CreatedBy          TEXT,
    CreatedAt          DATETIME,
    UpdatedBy          TEXT,
    UpdatedAt          DATETIME,
    Source             TEXT,
    IsManual           INTEGER,
    Metadata           TEXT
);

INSERT INTO learning_path_milestone_events VALUES
(7001, 10, 101, 2001, '2023-02-20 10:00:00', 'Start', 'InProgress', 0.0, 0, NULL, NULL, 'initiated', 'system', '2023-02-20 10:05:00', 'system', '2023-02-20 10:05:00', 'WebPortal', 0, '{"initial":true}'),
(7002, 10, 101, 2001, '2023-02-25 15:30:00', 'Complete', 'Completed', 92.5, 3600, '2023-02-25 16:30:00', 'CERT001', 'LearningDept', 'passed with high score', 'system', '2023-02-25 15:35:00', 'system', '2023-02-25 15:35:00', 'WebPortal', 0, '{"score":92.5}'),
(7003, 11, 202, 2002, '2023-03-01 09:45:00', 'Start', 'InProgress', 0.0, 0, NULL, NULL, 'started module', 'admin', '2023-03-01 09:50:00', 'admin', '2023-03-01 09:50:00', 'MobileApp', 1, '{"device":"iOS"}');

-- Customer journey steps
CREATE TABLE customer_journey_steps
(
    StepId                INTEGER NOT NULL PRIMARY KEY,
    JourneyId             INTEGER,
    StepName              TEXT,
    StepOrder             INTEGER,
    Description           TEXT,
    ExpectedDurationSec   INTEGER,
    ActualDurationSec     INTEGER,
    SuccessFlag           INTEGER,
    DropOffRate           REAL,
    ConversionRate        REAL,
    OwnerTeam             TEXT,
    CreatedDate           DATETIME,
    ModifiedDate          DATETIME,
    Channel               TEXT,
    CampaignId            INTEGER,
    AudienceSegment       TEXT,
    MetricsJson           TEXT,
    Notes                 TEXT,
    IsActive              INTEGER,
    LastRunDate           DATETIME
);

INSERT INTO customer_journey_steps VALUES
(4001, 900, 'Landing Page', 1, 'User arrives on homepage', 30, 28, 1, 0.05, 0.10, 'Marketing', '2023-01-10 08:00:00', '2023-03-15 12:00:00', 'Web', 101, 'Prospects', '{"views":1200}', 'no issues', 1, '2023-03-15 12:00:00'),
(4002, 900, 'Signup Form', 2, 'User fills registration', 120, 130, 0, 0.15, 0.05, 'Product', '2023-01-10 08:05:00', '2023-03-15 12:05:00', 'Web', 101, 'New Users', '{"submits":300}', 'high dropout', 1, '2023-03-15 12:05:00'),
(4003, 900, 'Onboarding Email', 3, 'Welcome email sent', 86400, 86000, 1, 0.02, 0.80, 'Support', '2023-01-10 08:10:00', '2023-03-15 12:10:00', 'Email', 101, 'All Users', '{"opens":250}', 'good engagement', 1, '2023-03-15 12:10:00');

-- Device network topology
CREATE TABLE device_network_topology
(
    NodeId               INTEGER NOT NULL PRIMARY KEY,
    DeviceId             TEXT,
    DeviceType           TEXT,
    ParentNodeId         INTEGER,
    ConnectionType       TEXT,
    BandwidthMbps        REAL,
    LatencyMs            REAL,
    Status               TEXT,
    FirmwareVersion      TEXT,
    IPAddress            TEXT,
    MACAddress           TEXT,
    Location             TEXT,
    Rack                 TEXT,
    UPosition            INTEGER,
    PowerSupply          TEXT,
    CreatedAt            DATETIME,
    UpdatedAt            DATETIME,
    Manufacturer         TEXT,
    ModelNumber          TEXT,
    SerialNumber         TEXT,
    Comments             TEXT
);

INSERT INTO device_network_topology VALUES
(1, 'DEV001', 'Router', NULL, 'Fiber', 10000, 2.5, 'Active', 'v1.3', '10.0.0.1', 'AA:BB:CC:DD:EE:01', 'DataCenterA', 'Rack12', 4, 'Dual', '2022-02-01 09:00:00', '2023-03-01 10:15:00', 'Cisco', 'RV340', 'SN123456', 'core router'),
(2, 'DEV002', 'Switch', 1, 'Ethernet', 1000, 0.8, 'Active', 'v2.0', '10.0.0.2', 'AA:BB:CC:DD:EE:02', 'DataCenterA', 'Rack12', 5, 'Single', '2022-02-02 10:00:00', '2023-03-02 11:20:00', 'Juniper', 'EX2200', 'SN223456', 'edge switch'),
(3, 'DEV003', 'Server', 2, 'Ethernet', 1000, 1.2, 'Maintenance', 'v3.1', '10.0.0.10', 'AA:BB:CC:DD:EE:0A', 'DataCenterA', 'Rack14', 2, 'Dual', '2022-03-15 08:30:00', '2023-03-05 09:45:00', 'Dell', 'PowerEdgeR740', 'SN323456', 'application server');

-- Advertiser audience segments
CREATE TABLE advertiser_audience_segments
(
    SegmentId            INTEGER NOT NULL PRIMARY KEY,
    AdvertiserId         INTEGER,
    SegmentName          TEXT,
    Description          TEXT,
    AudienceSize         INTEGER,
    DemographicInfo     TEXT,
    InterestCategories   TEXT,
    Geography            TEXT,
    CreationDate         DATETIME,
    LastUpdated          DATETIME,
    Source               TEXT,
    ConfidenceScore      REAL,
    IsActive             INTEGER,
    TargetingLogic       TEXT,
    ExclusionList        TEXT,
    FrequencyCap         INTEGER,
    BudgetAllocation     REAL,
    ExpectedCPC          REAL,
    ExpectedCTR          REAL,
    Notes                TEXT
);

INSERT INTO advertiser_audience_segments VALUES
(6001, 3001, 'Tech Enthusiasts', 'Users interested in technology', 150000, 'Age18-35', 'Gadgets,Software', 'US,CA', '2022-05-10 12:00:00', '2023-03-10 14:00:00', 'Internal', 0.92, 1, 'lookalike', 'none', 3, 25000.0, 0.45, 0.03, 'high ROI segment'),
(6002, 3002, 'Health Conscious', 'Fitness and wellness audience', 200000, 'Age25-45', 'Fitness,Nutrition', 'EU,AU', '2022-06-15 09:30:00', '2023-03-12 16:20:00', 'ThirdParty', 0.85, 1, 'behavioral', 'smokers', 2, 18000.0, 0.55, 0.025, 'seasonal peaks'),
(6003, 3003, 'Travel Lovers', 'Frequent travelers', 120000, 'Age30-60', 'Travel,Adventure', 'AS,EU', '2022-07-20 11:45:00', '2023-03-14 10:10:00', 'Internal', 0.78, 0, 'geo-targeted', 'political', 1, 15000.0, 0.60, 0.02, 'low conversion');

-- Forum thread sentiment analysis
CREATE TABLE forum_thread_sentiment_analysis
(
    AnalysisId          INTEGER NOT NULL PRIMARY KEY,
    ThreadId            INTEGER,
    SentimentScore      REAL,
    SentimentLabel      TEXT,
    PositiveScore       REAL,
    NeutralScore        REAL,
    NegativeScore       REAL,
    Keywords            TEXT,
    Language            TEXT,
    AnalyzedAt          DATETIME,
    AnalyzerVersion     TEXT,
    Confidence          REAL,
    Source              TEXT,
    IsFlagged           INTEGER,
    ReviewNotes         TEXT,
    CreatedBy           TEXT,
    CreatedAt           DATETIME,
    UpdatedBy           TEXT,
    UpdatedAt           DATETIME,
    Remarks             TEXT,
    Tags                TEXT
);

INSERT INTO forum_thread_sentiment_analysis VALUES
(8001, 9001, 0.12, 'Neutral', 0.35, 0.55, 0.10, 'question,help', 'en', '2023-03-01 08:00:00', 'v1.0', 0.88, 'Auto', 0, 'no action needed', 'system', '2023-03-01 08:05:00', 'system', '2023-03-01 08:05:00', 'initial analysis', 'support,faq'),
(8002, 9002, -0.45, 'Negative', 0.10, 0.20, 0.70, 'complaint,bug', 'en', '2023-03-02 09:15:00', 'v1.0', 0.91, 'Auto', 1, 'escalate to moderation', 'system', '2023-03-02 09:20:00', 'system', '2023-03-02 09:20:00', 'requires review', 'bug,issue'),
(8003, 9003, 0.78, 'Positive', 0.80, 0.15, 0.05, 'thanks,solution', 'en', '2023-03-03 10:30:00', 'v1.0', 0.95, 'Auto', 0, 'good feedback', 'system', '2023-03-03 10:35:00', 'system', '2023-03-03 10:35:00', 'positive response', 'thankyou,answer');