-- System configuration settings
CREATE TABLE system_configuration
(
    ConfigId          INTEGER PRIMARY KEY,
    ConfigKey         TEXT NOT NULL,
    ConfigValue       TEXT,
    DataType          TEXT,
    Description       TEXT,
    EffectiveDate     DATETIME,
    ExpiryDate        DATETIME,
    IsActive          INTEGER,      -- 0 = false, 1 = true
    CreatedByUserId   INTEGER,
    CreatedDate       DATETIME,
    UpdatedByUserId   INTEGER,
    UpdatedDate       DATETIME,
    VersionNumber     INTEGER,
    Environment       TEXT,
    Category          TEXT,
    Source            TEXT,
    OwnerTeam         TEXT,
    MinValue          TEXT,
    MaxValue          TEXT,
    IsEncrypted       INTEGER,      -- 0 = false, 1 = true
    Notes             TEXT
);

INSERT INTO system_configuration VALUES
(1, 'MaxLoginAttempts', '5', 'INTEGER', 'Maximum allowed login attempts', '2023-01-01 00:00:00', NULL, 1, 10, '2023-01-01 12:00:00', 12, '2023-06-01 09:30:00', 2, 'Production', 'Security', 'Internal', 'AuthTeam', '1', '10', 0, 'Initial rollout'),
(2, 'SessionTimeoutMinutes', '30', 'INTEGER', 'User session timeout in minutes', '2023-01-01 00:00:00', NULL, 1, 11, '2023-01-02 08:15:00', 13, '2023-06-02 10:00:00', 1, 'Staging', 'Performance', 'ConfigService', 'WebTeam', '5', '120', 0, 'Adjusted after testing'),
(3, 'EnableFeatureX', 'true', 'BOOLEAN', 'Flag to enable experimental feature X', '2023-03-15 00:00:00', '2024-03-15 00:00:00', 0, 14, '2023-03-15 14:20:00', 15, '2023-09-01 11:45:00', 3, 'Development', 'FeatureToggle', 'FeatureService', 'DevTeam', NULL, NULL, 1, 'Disabled by default');

-- Audit trail of system events
CREATE TABLE audit_trail_events
(
    EventId            INTEGER PRIMARY KEY,
    EventType          TEXT,
    EventTimestamp     DATETIME,
    InitiatingUserId   INTEGER,
    TargetUserId       INTEGER,
    TargetObjectId     INTEGER,
    TargetObjectType   TEXT,
    SourceIp           TEXT,
    UserAgent          TEXT,
    SuccessFlag        INTEGER,   -- 0 = false, 1 = true
    Details            TEXT,
    SessionId          TEXT,
    TransactionId      TEXT,
    SeverityLevel      TEXT,
    ApplicationModule  TEXT,
    ThreadId           INTEGER,
    ProcessId          INTEGER,
    Hostname           TEXT,
    RevisionNumber     INTEGER,
    CorrelationId      TEXT,
    Notes              TEXT
);

INSERT INTO audit_trail_events VALUES
(1001, 'Login', '2023-07-01 09:12:34', 23, 23, NULL, NULL, '192.168.1.10', 'Chrome', 1, 'Successful login', 'sess123', 'tx001', 'Info', 'Auth', 45, 2104, 'web01', 1, 'corrA1', ''),
(1002, 'DataExport', '2023-07-01 10:05:12', 45, NULL, 3001, 'ExportJob', '10.0.0.5', 'PythonRequests', 0, 'Export failed due to timeout', 'sess124', 'tx002', 'Error', 'ExportService', 46, 2105, 'web02', 2, 'corrA2', 'Network issue'),
(1003, 'PermissionChange', '2023-07-01 11:20:00', 12, 34, NULL, NULL, '172.16.0.3', 'Firefox', 1, 'Granted admin role', 'sess125', 'tx003', 'Warning', 'UserManagement', 47, 2106, 'web03', 3, 'corrA3', '');

-- Log of content distribution activities
CREATE TABLE content_distribution_log
(
    DistributionId      INTEGER PRIMARY KEY,
    ContentId           INTEGER,
    ContentType         TEXT,
    DistributionChannel TEXT,
    DistributionDate    DATETIME,
    TargetAudienceId    INTEGER,
    TargetRegion        TEXT,
    DeliveredCount      INTEGER,
    ClickThroughCount   INTEGER,
    ConversionCount     INTEGER,
    Cost                REAL,
    Currency            TEXT,
    CampaignId          INTEGER,
    CreativeId          INTEGER,
    VendorId            INTEGER,
    DeliveryStatus      TEXT,
    FailureReason       TEXT,
    LatencyMs           INTEGER,
    BandwidthMbps       REAL,
    Notes               TEXT,
    IsTestRun           INTEGER   -- 0 = false, 1 = true
);

INSERT INTO content_distribution_log VALUES
(5001, 200, 'Article', 'Email', '2023-06-30 08:00:00', 1500, 'NorthAmerica', 1500, 300, 45, 1200.50, 'USD', 101, 501, 9001, 'Delivered', NULL, 250, 15.5, '', 0),
(5002, 201, 'Video', 'SocialMedia', '2023-06-30 09:30:00', 2000, 'Europe', 2000, 500, 80, 2500.00, 'EUR', 102, 502, 9002, 'Failed', 'Invalid API token', 340, 12.0, 'Check credentials', 0),
(5003, 202, 'BlogPost', 'RSS', '2023-06-30 10:45:00', 800, 'Asia', 800, 120, 20, 600.75, 'USD', 103, 503, 9003, 'Delivered', NULL, 180, 20.1, '', 1);

-- Registry of internal API services
CREATE TABLE api_service_registry
(
    ServiceId                INTEGER PRIMARY KEY,
    ServiceName              TEXT,
    BaseUrl                  TEXT,
    HealthCheckUrl           TEXT,
    AuthMethod               TEXT,
    ApiKey                   TEXT,
    RateLimitPerMinute       INTEGER,
    MaxConcurrentRequests    INTEGER,
    OwnerTeam                TEXT,
    CreatedDate              DATETIME,
    UpdatedDate              DATETIME,
    IsActive                 INTEGER,   -- 0 = false, 1 = true
    Version                  TEXT,
    Protocol                 TEXT,
    DocumentationUrl         TEXT,
    SLAResponseTimeMs        INTEGER,
    SLADowntimePct           REAL,
    SupportContactEmail      TEXT,
    DeprecationDate          DATETIME,
    Notes                    TEXT
);

INSERT INTO api_service_registry VALUES
(1, 'UserProfileService', 'https://api.example.com/user', 'https://api.example.com/user/health', 'ApiKey', 'key123', 5000, 200, 'BackendTeam', '2022-01-15 09:00:00', '2023-05-20 14:30:00', 1, 'v2.1', 'HTTPS', 'https://docs.example.com/user', 200, 0.1, 'support@example.com', NULL, ''),
(2, 'ContentSearchService', 'https://search.example.com', 'https://search.example.com/health', 'OAuth2', NULL, 10000, 500, 'SearchTeam', '2022-03-01 10:15:00', '2023-06-10 11:45:00', 1, 'v1.9', 'HTTPS', 'https://docs.example.com/search', 150, 0.05, 'search-support@example.com', NULL, ''),
(3, 'AnalyticsIngestion', 'https://analytics.example.com/ingest', 'https://analytics.example.com/health', 'MutualTLS', NULL, 2000, 100, 'AnalyticsTeam', '2022-06-20 08:30:00', '2023-04-22 13:20:00', 0, 'v3.0-beta', 'HTTPS', 'https://docs.example.com/analytics', 300, 0.2, 'analytics@example.com', '2024-01-01 00:00:00', 'Beta service pending review');

-- Assignments of roles to users
CREATE TABLE user_role_assignments
(
    AssignmentId      INTEGER PRIMARY KEY,
    UserId            INTEGER,
    RoleId            INTEGER,
    RoleName          TEXT,
    AssignedByUserId  INTEGER,
    AssignedDate      DATETIME,
    ExpirationDate    DATETIME,
    IsPermanent       INTEGER,   -- 0 = false, 1 = true
    Reason            TEXT,
    Scope             TEXT,
    Department        TEXT,
    Location          TEXT,
    ApprovalStatus    TEXT,
    ApprovedByUserId  INTEGER,
    ApprovalDate      DATETIME,
    RevokedByUserId   INTEGER,
    RevokedDate       DATETIME,
    RevocationReason  TEXT,
    Comments          TEXT,
    Version           INTEGER,
    IsActive          INTEGER    -- 0 = false, 1 = true
);

INSERT INTO user_role_assignments VALUES
(3001, 45, 5, 'Moderator', 10, '2023-01-05 09:00:00', NULL, 0, 'Community contribution', 'Global', 'Community', 'Remote', 'Approved', 12, '2023-01-06 10:15:00', NULL, NULL, NULL, 'Initial assignment', 1, 1),
(3002, 78, 3, 'Editor', 11, '2023-02-10 11:30:00', '2024-02-10 11:30:00', 0, 'Content quality improvement', 'Site', 'Content', 'OfficeA', 'Pending', NULL, NULL, NULL, NULL, NULL, 'Awaiting approval', 1, 0),
(3003, 92, 7, 'AnalyticsViewer', 14, '2023-03-20 14:45:00', NULL, 1, 'Data analysis role', 'ProjectX', 'Analytics', 'Remote', 'Approved', 15, '2023-03-21 09:00:00', 16, '2023-07-01 08:00:00', 'Role no longer needed', 'Revoked after project end', 2, 0);

-- Parameters for search algorithms
CREATE TABLE search_algorithm_parameters
(
    ParamId          INTEGER PRIMARY KEY,
    AlgorithmName    TEXT,
    ParameterName    TEXT,
    ParameterValue   TEXT,
    DataType         TEXT,
    DefaultValue     TEXT,
    MinValue         TEXT,
    MaxValue         TEXT,
    Description      TEXT,
    IsExperimental   INTEGER,   -- 0 = false, 1 = true
    EffectiveFrom    DATETIME,
    EffectiveTo      DATETIME,
    UpdatedByUserId  INTEGER,
    UpdatedDate      DATETIME,
    Source           TEXT,
    ConfidenceScore  REAL,
    ValidationStatus TEXT,
    RelatedParamId   INTEGER,
    Category         TEXT,
    Notes            TEXT,
    IsActive         INTEGER    -- 0 = false, 1 = true
);

INSERT INTO search_algorithm_parameters VALUES
(4001, 'BM25', 'k1', '1.2', 'FLOAT', '1.2', '0.5', '2.0', 'Term frequency scaling factor', 0, '2023-01-01 00:00:00', NULL, 20, '2023-06-01 12:00:00', 'DefaultConfig', 0.98, 'Validated', NULL, 'Ranking', '', 1),
(4002, 'BM25', 'b', '0.75', 'FLOAT', '0.75', '0.0', '1.0', 'Length normalization parameter', 0, '2023-01-01 00:00:00', NULL, 21, '2023-06-01 12:05:00', 'DefaultConfig', 0.97, 'Validated', NULL, 'Ranking', '', 1),
(4003, 'LearningToRank', 'lambda', '0.01', 'FLOAT', '0.01', '0.0', '0.1', 'Regularization strength for L2 penalty', 1, '2023-05-01 00:00:00', NULL, 22, '2023-06-15 08:30:00', 'ExperimentA', 0.85, 'Pending', 4001, 'Ranking', 'Experimental feature', 0);

-- Terms of advertiser contracts
CREATE TABLE advertiser_contract_terms
(
    ContractTermId    INTEGER PRIMARY KEY,
    AdvertiserId      INTEGER,
    ContractId        INTEGER,
    TermName          TEXT,
    TermValue         TEXT,
    Currency          TEXT,
    EffectiveStartDate DATETIME,
    EffectiveEndDate   DATETIME,
    RenewalFlag       INTEGER,   -- 0 = false, 1 = true
    TermDescription   TEXT,
    IsMandatory       INTEGER,   -- 0 = false, 1 = true
    CreatedByUserId   INTEGER,
    CreatedDate       DATETIME,
    UpdatedByUserId   INTEGER,
    UpdatedDate       DATETIME,
    ComplianceStatus  TEXT,
    PenaltyAmount     REAL,
    NoticePeriodDays  INTEGER,
    ClauseReference   TEXT,
    LegalReviewDate   DATETIME,
    Comments          TEXT
);

INSERT INTO advertiser_contract_terms VALUES
(6001, 300, 9001, 'ImpressionCap', '1000000', 'USD', '2023-01-01 00:00:00', '2023-12-31 23:59:59', 1, 'Maximum number of impressions per year', 1, 5, '2023-01-02 09:00:00', 6, '2023-05-10 11:30:00', 'Compliant', 5000.00, 30, 'Clause12', '2023-04-01 00:00:00', ''),
(6002, 301, 9002, 'CPCFloor', '0.25', 'USD', '2023-02-01 00:00:00', '2024-01-31 23:59:59', 0, 'Minimum cost per click required', 0, 7, '2023-02-02 10:15:00', 8, '2023-06-20 14:45:00', 'Pending', 0.00, 15, 'Clause8', NULL, 'To be approved'),
(6003, 302, 9003, 'GeographicExclusion', 'CN,IR', 'USD', '2023-03-15 00:00:00', NULL, 1, 'Exclude China and Iran from serving', 1, 9, '2023-03-16 08:00:00', 10, '2023-07-01 09:30:00', 'Compliant', 0.00, 0, 'Clause20', '2023-05-15 00:00:00', '');

-- Registry of external datasets
CREATE TABLE external_dataset_registry
(
    DatasetId              INTEGER PRIMARY KEY,
    DatasetName            TEXT,
    ProviderName           TEXT,
    DataFormat             TEXT,
    RecordCount            INTEGER,
    SizeGb                 REAL,
    LastRefreshDate        DATETIME,
    RefreshFrequencyDays   INTEGER,
    AccessUrl              TEXT,
    AuthenticationMethod   TEXT,
    LicenseType            TEXT,
    IsPublic               INTEGER,   -- 0 = false, 1 = true
    CreatedByUserId        INTEGER,
    CreatedDate            DATETIME,
    UpdatedByUserId        INTEGER,
    UpdatedDate            DATETIME,
    Description            TEXT,
    Category               TEXT,
    Tags                   TEXT,
    ComplianceStatus       TEXT,
    Notes                  TEXT
);

INSERT INTO external_dataset_registry VALUES
(7001, 'WorldBankGDP', 'WorldBank', 'CSV', 2500, 2.5, '2023-06-01 00:00:00', 30, 'https://data.worldbank.org/gdp', 'APIKey', 'Open', 1, 12, '2023-01-10 09:00:00', 13, '2023-06-10 11:00:00', 'Annual GDP data by country', 'Economics', 'GDP,Finance', 'Compliant', ''),
(7002, 'OpenStreetMap', 'OSM', 'PBF', 12000000, 150.0, '2023-05-20 00:00:00', 7, 'https://download.geofabrik.de', 'OAuth2', 'Open', 1, 14, '2023-02-15 10:30:00', 15, '2023-06-12 12:45:00', 'Global map data', 'Geography', 'Maps,Navigation', 'Compliant', ''),
(7003, 'SocialMediaSentiment', 'DataVendorX', 'JSON', 500000, 5.0, '2023-06-15 00:00:00', 1, 'https://api.datavendorx.com/sentiment', 'OAuth2', 'Proprietary', 0, 16, '2023-03-20 14:00:00', 17, '2023-06-18 15:30:00', 'Daily social media sentiment scores', 'Analytics', 'Sentiment,Social', 'UnderReview', '');

-- Records of knowledge graph imports
CREATE TABLE knowledge_graph_imports
(
    ImportId                INTEGER PRIMARY KEY,
    GraphNodeId             INTEGER,
    SourceSystem            TEXT,
    ImportDate              DATETIME,
    RecordCount             INTEGER,
    SuccessCount            INTEGER,
    FailureCount            INTEGER,
    ErrorLogUrl             TEXT,
    ImportedByUserId        INTEGER,
    TransformationScript    TEXT,
    Version                 TEXT,
    IsFullRefresh           INTEGER,   -- 0 = false, 1 = true
    DurationSeconds         INTEGER,
    DataQualityScore        REAL,
    IssuesDetected          INTEGER,
    NotificationSent        INTEGER,   -- 0 = false, 1 = true
    BatchId                 TEXT,
    PriorityLevel           TEXT,
    Comments                TEXT,
    MetadataJson            TEXT,
    IsArchived              INTEGER    -- 0 = false, 1 = true
);

INSERT INTO knowledge_graph_imports VALUES
(8001, 1500, 'CRMSystem', '2023-06-01 02:00:00', 20000, 19980, 20, 'https://logs.example.com/err8001', 20, 'transform_crm_v1.sql', 'v1.0', 0, 3600, 0.96, 5, 1, 'batchA', 'High', '', '{}', 0),
(8002, 1501, 'HRSystem', '2023-06-02 03:15:00', 5000, 5000, 0, NULL, 21, 'transform_hr_v2.sql', 'v2.3', 1, 1800, 0.99, 0, 1, 'batchB', 'Medium', 'Full refresh nightly', '{}', 0),
(8003, 1502, 'FinanceAPI', '2023-06-03 04:45:00', 12000, 11950, 50, 'https://logs.example.com/err8003', 22, 'transform_fin_v1.sql', 'v1.5', 0, 2400, 0.92, 12, 0, 'batchC', 'Low', 'Partial import', '{}', 0);

-- Templates for learning paths
CREATE TABLE learning_path_templates
(
    TemplateId               INTEGER PRIMARY KEY,
    TemplateName             TEXT,
    Category                 TEXT,
    DifficultyLevel          TEXT,
    EstimatedDurationHours  INTEGER,
    CreatedByUserId          INTEGER,
    CreatedDate              DATETIME,
    UpdatedByUserId          INTEGER,
    UpdatedDate              DATETIME,
    IsActive                 INTEGER,   -- 0 = false, 1 = true
    Description              TEXT,
    PrerequisiteTemplateId  INTEGER,
    TargetAudience           TEXT,
    Language                 TEXT,
    Locale                   TEXT,
    CertificationAwarded    TEXT,
    MaxEnrollments           INTEGER,
    EnrollmentStartDate      DATETIME,
    EnrollmentEndDate        DATETIME,
    BadgeTemplateId          INTEGER,
    Tags                     TEXT,
    Notes                    TEXT
);

INSERT INTO learning_path_templates VALUES
(9001, 'DataScienceFundamentals', 'DataScience', 'Intermediate', 40, 30, '2023-01-15 09:00:00', 31, '2023-06-01 10:30:00', 1, 'Core concepts in data science', NULL, 'AllUsers', 'English', 'en-US', 'DSFundamentalsCert', 500, '2023-02-01 00:00:00', '2023-04-30 23:59:59', 1001, 'Data,Statistics,ML', ''),
(9002, 'AdvancedSQLQueries', 'Database', 'Advanced', 20, 32, '2023-02-10 11:00:00', 33, '2023-06-05 14:20:00', 1, 'Deep dive into complex SQL patterns', 9001, 'Developers', 'English', 'en-US', 'AdvSQLCert', 300, '2023-03-01 00:00:00', '2023-05-31 23:59:59', 1002, 'SQL,Performance,Optimization', ''),
(9003, 'IntroductionToAI', 'AI', 'Beginner', 25, 34, '2023-03-20 08:45:00', 35, '2023-06-10 09:15:00', 0, 'Basics of artificial intelligence and its applications', NULL, 'Students', 'English', 'en-US', NULL, 1000, '2023-04-01 00:00:00', '2023-06-30 23:59:59', NULL, 'AI,MachineLearning,Intro', '');