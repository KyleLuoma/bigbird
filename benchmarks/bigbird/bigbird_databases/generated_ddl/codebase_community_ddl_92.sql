-- Table describing automated topic classifications for posts
CREATE TABLE post_topic_classification
(
    Id                     INTEGER PRIMARY KEY,
    PostId                 INTEGER,
    TopicCode              TEXT,
    Confidence             FLOAT,
    ModelVersion           TEXT,
    ClassificationDate     DATETIME,
    SourceSystem           TEXT,
    LanguageCode           TEXT,
    IsPrimary              INTEGER,
    RelatedTopic1          TEXT,
    RelatedTopic2          TEXT,
    RelatedTopic3          TEXT,
    ReviewerId             INTEGER,
    ReviewDate             DATETIME,
    Comments               TEXT,
    ProcessingTimeMs       INTEGER,
    FeatureVectorHash      TEXT,
    Algorithm              TEXT,
    ThresholdUsed          FLOAT,
    Flagged                INTEGER,
    FOREIGN KEY (PostId) REFERENCES posts (Id),
    FOREIGN KEY (ReviewerId) REFERENCES users (Id)
);

INSERT INTO post_topic_classification VALUES (1, 101, 'Tech', 0.92, 'v1.2', '2023-06-01 12:34:56', 'AutoClassifier', 'en', 1, 'AI', 'ML', 'DataScience', 5, '2023-06-02 08:15:00', 'High confidence', 120, 'hashabc123', 'NeuralNet', 0.85, 0);
INSERT INTO post_topic_classification VALUES (2, 102, 'Health', 0.78, 'v1.2', '2023-06-02 09:20:10', 'AutoClassifier', 'en', 0, 'Nutrition', 'Exercise', 'Wellness', 8, '2023-06-03 10:05:30', 'Needs review', 150, 'hashdef456', 'RandomForest', 0.80, 0);
INSERT INTO post_topic_classification VALUES (3, 103, 'Finance', 0.65, 'v1.3', '2023-06-03 14:45:22', 'AutoClassifier', 'en', 0, 'Investing', 'Stocks', 'Economics', NULL, NULL, NULL, 200, 'hashghi789', 'SVM', 0.70, 1);

-- Table storing detailed user skill profiles
CREATE TABLE user_skill_profile
(
    Id                     INTEGER PRIMARY KEY,
    UserId                 INTEGER,
    SkillCategory          TEXT,
    SkillName              TEXT,
    ProficiencyLevel       INTEGER,
    YearsExperience        INTEGER,
    LastUsedDate           DATE,
    Certification          TEXT,
    CertIssueDate          DATE,
    CertExpiryDate         DATE,
    SelfRating             INTEGER,
    PeerRating             INTEGER,
    EndorsementsCount      INTEGER,
    PrimarySkill           INTEGER,
    SkillSource            TEXT,
    ValidationStatus       TEXT,
    ValidationDate         DATETIME,
    SkillVersion           TEXT,
    RelatedSkill1          TEXT,
    RelatedSkill2          TEXT,
    RelatedSkill3          TEXT,
    FOREIGN KEY (UserId) REFERENCES users (Id)
);

INSERT INTO user_skill_profile VALUES (1, 10, 'Programming', 'Python', 5, 4, '2023-05-20', 'PythonCert', '2022-01-15', '2025-01-15', 4, 5, 12, 1, 'SelfDeclared', 'Pending', NULL, '3.9', 'DataAnalysis', 'Automation', 'Scripting');
INSERT INTO user_skill_profile VALUES (2, 11, 'Design', 'UIUX', 3, 2, '2023-04-10', 'UXCert', '2021-06-01', '2024-06-01', 3, 4, 8, 0, 'Interview', 'Approved', '2023-04-15 09:30:00', '1.0', 'GraphicDesign', 'Prototyping', 'UserResearch');
INSERT INTO user_skill_profile VALUES (3, 12, 'DataScience', 'MachineLearning', 4, 3, '2023-03-05', NULL, NULL, NULL, 5, 5, 15, 1, 'Project', 'Approved', '2023-03-10 14:00:00', '2.1', 'DeepLearning', 'Statistics', 'DataMining');

-- Table capturing granular search query user mappings
CREATE TABLE search_query_user_mapping
(
    Id                     INTEGER PRIMARY KEY,
    SearchQueryId          INTEGER,
    UserId                 INTEGER,
    SessionId              TEXT,
    QueryText              TEXT,
    QueryTime              DATETIME,
    DeviceType             TEXT,
    Browser                TEXT,
    OperatingSystem        TEXT,
    GeoCountry             TEXT,
    GeoRegion              TEXT,
    GeoCity                TEXT,
    ResultCount            INTEGER,
    ClickedResultId        INTEGER,
    ClickPosition          INTEGER,
    IsPersonalized         INTEGER,
    RankingAlgorithm       TEXT,
    RankScore              FLOAT,
    IsBot                  INTEGER,
    ReferrerUrl            TEXT,
    LandingPageUrl         TEXT,
    SearchDurationMs       INTEGER,
    FOREIGN KEY (UserId) REFERENCES users (Id)
);

INSERT INTO search_query_user_mapping VALUES (1, 5001, 10, 'sess123', 'python tutorials', '2023-06-10 08:15:00', 'Desktop', 'Chrome', 'Windows', 'US', 'CA', 'SanFrancisco', 12, 3, 1, 1, 'BM25', 0.87, 0, 'google.com', 'example.com/search', 350);
INSERT INTO search_query_user_mapping VALUES (2, 5002, 11, 'sess124', 'ux principles', '2023-06-10 09:20:10', 'Mobile', 'Safari', 'iOS', 'UK', 'London', 'London', 8, 5, 2, 0, 'LM', 0.78, 0, 'bing.com', 'example.com/search', 420);
INSERT INTO search_query_user_mapping VALUES (3, 5003, 12, 'sess125', 'machine learning courses', '2023-06-10 10:05:30', 'Desktop', 'Firefox', 'Linux', 'IN', 'KA', 'Bangalore', 20, 7, 3, 1, 'Neural', 0.92, 0, 'duckduckgo.com', 'example.com/search', 500);

-- Table storing external content attribution metadata
CREATE TABLE external_content_attribution
(
    Id                     INTEGER PRIMARY KEY,
    ExternalContentId      TEXT,
    SourceName             TEXT,
    SourceUrl              TEXT,
    LicenseType            TEXT,
    LicenseUrl             TEXT,
    AttributionText        TEXT,
    RetrievedDate          DATE,
    ContentType            TEXT,
    LanguageCode           TEXT,
    AuthorName             TEXT,
    AuthorUrl              TEXT,
    IsVerifiedSource       INTEGER,
    VerificationDate       DATETIME,
    ContentChecksum        TEXT,
    FileSizeBytes          INTEGER,
    DurationSeconds        INTEGER,
    WidthPixels            INTEGER,
    HeightPixels           INTEGER,
    Format                 TEXT,
    Encoding               TEXT,
    Tags                   TEXT,
    Comments               TEXT
);

INSERT INTO external_content_attribution VALUES (1, 'ext001', 'OpenData', 'opendata.org/dataset/1', 'CC0', 'creativecommons.org/publicdomain/zero/1.0/', 'Open dataset for analysis', '2023-05-01', 'Dataset', 'en', 'DataCorp', 'datacorp.com', 1, '2023-05-02 10:00:00', 'checksum123', 204800, NULL, NULL, NULL, 'CSV', 'UTF8', 'science,climate', 'Initial import');
INSERT INTO external_content_attribution VALUES (2, 'ext002', 'FreeImages', 'freeimages.com/img/45', 'CC-BY', 'creativecommons.org/licenses/by/4.0/', 'Image of sunrise', '2023-04-15', 'Image', 'en', 'JohnDoe', 'johndoe.com', 0, NULL, 'checksum456', 512000, NULL, 1920, 1080, 'JPEG', 'sRGB', 'nature,sunrise', 'Used in blog post');
INSERT INTO external_content_attribution VALUES (3, 'ext003', 'VideoHub', 'videohub.com/video/789', 'Standard', 'videohub.com/license', 'Tutorial video on SQL', '2023-03-20', 'Video', 'en', 'JaneSmith', 'janesmith.com', 1, '2023-03-21 14:30:00', 'checksum789', 10485760, 300, 1280, 720, 'MP4', 'H264', 'education,sql', 'Embedded in article');

-- Table logging detailed moderation rule hits
CREATE TABLE moderation_rule_hits
(
    Id                     INTEGER PRIMARY KEY,
    RuleId                 INTEGER,
    ContentId              INTEGER,
    ContentType            TEXT,
    TriggeredByUserId      INTEGER,
    TriggeredAt            DATETIME,
    SeverityLevel          INTEGER,
    ActionTaken            TEXT,
    ActionByUserId         INTEGER,
    ActionTimestamp        DATETIME,
    ReasonCode             TEXT,
    AdditionalInfo         TEXT,
    ReviewRequired         INTEGER,
    ReviewedByUserId       INTEGER,
    ReviewTimestamp        DATETIME,
    Escalated              INTEGER,
    EscalationLevel        INTEGER,
    EscalationReason       TEXT,
    Resolved               INTEGER,
    ResolutionNotes        TEXT,
    AutoDismissed          INTEGER,
    DismissReason          TEXT,
    FOREIGN KEY (TriggeredByUserId) REFERENCES users (Id),
    FOREIGN KEY (ActionByUserId) REFERENCES users (Id),
    FOREIGN KEY (ReviewedByUserId) REFERENCES users (Id)
);

INSERT INTO moderation_rule_hits VALUES (1, 101, 2001, 'Post', 5, '2023-06-01 11:00:00', 2, 'Flagged', 2, '2023-06-01 11:05:00', 'Spam', 'Contains repeated links', 1, 3, '2023-06-01 12:00:00', 0, NULL, NULL, 1, 'Removed spam content', 0, NULL);
INSERT INTO moderation_rule_hits VALUES (2, 102, 3002, 'Comment', 6, '2023-06-02 09:30:00', 3, 'Deleted', 4, '2023-06-02 09:35:00', 'Harassment', 'Offensive language used', 0, NULL, NULL, 1, 2, 'Escalated to senior moderator', 0, NULL, 0, NULL);
INSERT INTO moderation_rule_hits VALUES (3, 103, 4003, 'User', 7, '2023-06-03 14:45:00', 4, 'Suspended', 5, '2023-06-03 15:00:00', 'BruteForce', 'Multiple failed logins', 1, 8, '2023-06-04 10:00:00', 1, 3, 'Repeated attempts after suspension', 1, 'Account permanently banned', 0, NULL);

-- Table tracking ad impression details
CREATE TABLE ad_impression_detail
(
    Id                     INTEGER PRIMARY KEY,
    AdCampaignId           INTEGER,
    AdCreativeId           INTEGER,
    ImpressionTimestamp    DATETIME,
    UserId                 INTEGER,
    SessionId              TEXT,
    DeviceType             TEXT,
    Browser                TEXT,
    OperatingSystem        TEXT,
    GeoCountry             TEXT,
    GeoRegion              TEXT,
    GeoCity                TEXT,
    ViewabilityScore       FLOAT,
    IsViewable             INTEGER,
    PlacementLocation      TEXT,
    PageUrl                TEXT,
    ReferrerUrl            TEXT,
    Clicked                INTEGER,
    ClickTimestamp         DATETIME,
    RevenueGenerated       FLOAT,
    CostPerMille           FLOAT,
    FrequencyCapReached    INTEGER,
    BidAmount              FLOAT,
    AuctionType            TEXT,
    CampaignBudgetRemaining FLOAT,
    FOREIGN KEY (UserId) REFERENCES users (Id)
);

INSERT INTO ad_impression_detail VALUES (1, 200, 5001, '2023-06-10 08:00:00', 10, 'sess200', 'Desktop', 'Chrome', 'Windows', 'US', 'CA', 'SanFrancisco', 0.92, 1, 'Header', 'example.com/home', 'google.com', 0, NULL, 0.05, 2.5, 0, 1.00, 'SecondPrice', 1500.00);
INSERT INTO ad_impression_detail VALUES (2, 201, 5002, '2023-06-10 09:15:00', 11, 'sess201', 'Mobile', 'Safari', 'iOS', 'UK', 'London', 'London', 0.85, 1, 'Sidebar', 'example.com/article', 'bing.com', 1, '2023-06-10 09:16:10', 0.10, 3.0, 0, 1.20, 'FirstPrice', 1200.00);
INSERT INTO ad_impression_detail VALUES (3, 202, 5003, '2023-06-10 10:30:00', 12, 'sess202', 'Desktop', 'Firefox', 'Linux', 'IN', 'KA', 'Bangalore', 0.78, 0, 'Footer', 'example.com/search', 'duckduckgo.com', 0, NULL, 0.00, 2.0, 1, 0.80, 'SecondPrice', 800.00);

-- Table defining API key permissions
CREATE TABLE api_key_permission
(
    Id                     INTEGER PRIMARY KEY,
    ApiKeyId               INTEGER,
    PermissionName         TEXT,
    AllowedEndpoints       TEXT,
    RateLimitPerMinute     INTEGER,
    ExpirationDate         DATE,
    IsActive               INTEGER,
    CreatedAt              DATETIME,
    CreatedByUserId        INTEGER,
    UpdatedAt              DATETIME,
    UpdatedByUserId        INTEGER,
    Scope                  TEXT,
    Description            TEXT,
    MaxConcurrentCalls     INTEGER,
    RequiresMFA            INTEGER,
    AuditLogEnabled        INTEGER,
    RestrictionReason      TEXT,
    LastUsedAt             DATETIME,
    UsageCount             INTEGER,
    QuotaResetDate         DATE,
    IsReadOnly             INTEGER,
    IsWriteOnly            INTEGER,
    AllowedIPRanges        TEXT,
    DeniedIPRanges         TEXT,
    FOREIGN KEY (CreatedByUserId) REFERENCES users (Id),
    FOREIGN KEY (UpdatedByUserId) REFERENCES users (Id)
);

INSERT INTO api_key_permission VALUES (1, 1001, 'ReadPosts', '/posts/get', 500, '2024-12-31', 1, '2023-01-01 09:00:00', 5, '2023-06-01 10:00:00', 5, 'global', 'Allows read access to posts', 10, 0, 1, NULL, '2023-06-10 12:00:00', 2500, '2023-07-01', 1, 0, '0.0.0.0/0', NULL);
INSERT INTO api_key_permission VALUES (2, 1002, 'WriteComments', '/comments/create', 200, '2025-06-30', 1, '2023-02-15 11:30:00', 6, '2023-06-05 14:20:00', 6, 'global', 'Allows creating comments', 5, 1, 1, 'Requires MFA', '2023-06-10 13:15:00', 1200, '2023-07-01', 0, 1, '192.168.1.0/24', '10.0.0.0/8');
INSERT INTO api_key_permission VALUES (3, 1003, 'AdminAll', '/admin/*', 1000, NULL, 1, '2023-03-20 08:45:00', 7, '2023-06-08 09:00:00', 7, 'admin', 'Full admin permissions', 20, 1, 1, NULL, '2023-06-10 15:40:00', 5000, NULL, 0, 0, '0.0.0.0/0', NULL);

-- Table logging forum thread polls
CREATE TABLE forum_thread_poll
(
    Id                     INTEGER PRIMARY KEY,
    ThreadId               INTEGER,
    PollQuestion           TEXT,
    OptionA                TEXT,
    OptionB                TEXT,
    OptionC                TEXT,
    OptionD                TEXT,
    OptionE                TEXT,
    OptionF                TEXT,
    CreatedByUserId        INTEGER,
    CreationDate           DATETIME,
    IsMultipleChoice       INTEGER,
    AllowComments          INTEGER,
    ExpirationDate         DATE,
    TotalVotes             INTEGER,
    VotesOptionA           INTEGER,
    VotesOptionB           INTEGER,
    VotesOptionC           INTEGER,
    VotesOptionD           INTEGER,
    VotesOptionE           INTEGER,
    VotesOptionF           INTEGER,
    FOREIGN KEY (ThreadId) REFERENCES forum_thread_metadata (Id),
    FOREIGN KEY (CreatedByUserId) REFERENCES users (Id)
);

INSERT INTO forum_thread_poll VALUES (1, 3001, 'Best programming language', 'Python', 'Java', 'CSharp', 'JavaScript', 'Go', NULL, 10, '2023-06-01 10:00:00', 0, 1, '2023-06-15', 120, 50, 30, 20, 15, 5, NULL);
INSERT INTO forum_thread_poll VALUES (2, 3002, 'Preferred IDE', 'VSCode', 'IntelliJ', 'Eclipse', 'Atom', 'Sublime', NULL, 11, '2023-06-02 11:30:00', 0, 1, '2023-06-20', 80, 40, 25, 10, 5, 0, NULL);
INSERT INTO forum_thread_poll VALUES (3, 3003, 'Favorite database', 'PostgreSQL', 'MySQL', 'SQLite', 'MongoDB', 'SQLServer', NULL, 12, '2023-06-03 09:45:00', 0, 1, NULL, 65, 30, 20, 10, 5, 0, NULL);

-- Table storing knowledge graph entity links
CREATE TABLE knowledge_graph_entity_links
(
    Id                     INTEGER PRIMARY KEY,
    SourceEntityId         INTEGER,
    TargetEntityId         INTEGER,
    LinkType               TEXT,
    ConfidenceScore        FLOAT,
    CreatedAt              DATETIME,
    CreatedByUserId        INTEGER,
    UpdatedAt              DATETIME,
    UpdatedByUserId        INTEGER,
    IsActive               INTEGER,
    SourceEntityType       TEXT,
    TargetEntityType       TEXT,
    Description            TEXT,
    MetadataJson           TEXT,
    ExtractionMethod       TEXT,
    ValidationStatus       TEXT,
    ValidationDate         DATETIME,
    ValidatorUserId        INTEGER,
    Reason                 TEXT,
    Weight                 FLOAT,
    Namespace              TEXT,
    Version                TEXT,
    FOREIGN KEY (CreatedByUserId) REFERENCES users (Id),
    FOREIGN KEY (UpdatedByUserId) REFERENCES users (Id),
    FOREIGN KEY (ValidatorUserId) REFERENCES users (Id)
);

INSERT INTO knowledge_graph_entity_links VALUES (1, 10001, 20001, 'cites', 0.95, '2023-05-01 08:00:00', 5, '2023-06-01 09:00:00', 5, 1, 'Paper', 'Dataset', 'Paper cites dataset', '{"key":"value"}', 'NLPParser', 'Approved', '2023-06-02 10:00:00', 6, 'Manual review', 1.0, 'scholar', 'v1');
INSERT INTO knowledge_graph_entity_links VALUES (2, 10002, 20002, 'authored_by', 0.99, '2023-04-15 12:30:00', 6, '2023-06-05 14:20:00', 6, 1, 'Article', 'Author', 'Article authored by person', '{"authorId":123}', 'MetadataExtractor', 'Approved', '2023-06-06 15:00:00', 7, 'Automated', 0.9, 'pubmed', 'v2');
INSERT INTO knowledge_graph_entity_links VALUES (3, 10003, 20003, 'related_to', 0.80, '2023-03-20 09:45:00', 7, '2023-06-10 11:30:00', 7, 1, 'Concept', 'Concept', 'Concepts are related', '{"relation":"semantic"}', 'GraphEngine', 'Pending', NULL, NULL, NULL, 0.5, 'ontology', 'v1');

-- Table for detailed API endpoint performance metrics
CREATE TABLE api_endpoint_performance
(
    Id                     INTEGER PRIMARY KEY,
    EndpointPath           TEXT,
    HttpMethod             TEXT,
    AvgResponseTimeMs      FLOAT,
    MedianResponseTimeMs   FLOAT,
    P95ResponseTimeMs      FLOAT,
    P99ResponseTimeMs      FLOAT,
    ErrorRatePercent       FLOAT,
    RequestCount           INTEGER,
    SuccessCount           INTEGER,
    FailureCount           INTEGER,
    MaxResponseTimeMs      FLOAT,
    MinResponseTimeMs      FLOAT,
    CpuUsagePercent        FLOAT,
    MemoryUsageMb          FLOAT,
    DiskIoOperations       INTEGER,
    NetworkBytesSent       INTEGER,
    NetworkBytesReceived   INTEGER,
    LastSampledAt          DATETIME,
    MonitoringEnabled      INTEGER,
    AlertThresholdMs       FLOAT,
    AlertRecipientEmail    TEXT,
    OwnerTeam              TEXT,
    Description            TEXT,
    IsDeprecated           INTEGER,
    DeprecationDate        DATE,
    ReplacementEndpoint    TEXT,
    Version                TEXT,
    Tags                   TEXT,
    DocumentationUrl       TEXT
);

INSERT INTO api_endpoint_performance VALUES (1, '/posts/get', 'GET', 120.5, 115.0, 250.0, 400.0, 0.2, 10000, 9980, 20, 800.0, 30.0, 65.0, 256.0, 1500, 204800, 198700, '2023-06-10 12:00:00', 1, 500.0, 'devops@example.com', 'PostsTeam', 'Retrieves post details', 0, NULL, NULL, 'v1', 'public,posts', 'https://api.example.com/docs/posts/get');
INSERT INTO api_endpoint_performance VALUES (2, '/comments/create', 'POST', 250.0, 240.0, 600.0, 900.0, 1.5, 5000, 4900, 100, 1200.0, 100.0, 80.0, 512.0, 3000, 102400, 98300, '2023-06-10 12:05:00', 1, 800.0, 'devops@example.com', 'CommentsTeam', 'Creates a new comment', 0, NULL, NULL, 'v2', 'public,comments', 'https://api.example.com/docs/comments/create');
INSERT INTO api_endpoint_performance VALUES (3, '/users/update', 'PUT', 350.0, 340.0, 950.0, 1300.0, 2.0, 2000, 1960, 40, 2000.0, 150.0, 85.0, 1024.0, 5000, 409600, 398400, '2023-06-10 12:10:00', 1, 1200.0, 'devops@example.com', 'UsersTeam', 'Updates user profile', 0, NULL, NULL, 'v3', 'private,users', 'https://api.example.com/docs/users/update');

-- Table for knowledge graph node properties
CREATE TABLE knowledge_graph_node_properties
(
    Id                     INTEGER PRIMARY KEY,
    NodeId                 INTEGER,
    PropertyName           TEXT,
    PropertyValue          TEXT,
    DataType               TEXT,
    IsIndexed              INTEGER,
    IsUnique               INTEGER,
    CreatedAt              DATETIME,
    CreatedByUserId        INTEGER,
    UpdatedAt              DATETIME,
    UpdatedByUserId        INTEGER,
    SourceSystem           TEXT,
    ConfidenceScore        FLOAT,
    ValidationStatus       TEXT,
    ValidationDate         DATETIME,
    ValidatorUserId        INTEGER,
    Description            TEXT,
    Namespace              TEXT,
    Version                TEXT,
    IsActive               INTEGER,
    FOREIGN KEY (CreatedByUserId) REFERENCES users (Id),
    FOREIGN KEY (UpdatedByUserId) REFERENCES users (Id),
    FOREIGN KEY (ValidatorUserId) REFERENCES users (Id)
);

INSERT INTO knowledge_graph_node_properties VALUES (1, 50001, 'title', 'Graph Theory', 'string', 1, 0, '2023-01-10 09:00:00', 5, '2023-06-01 10:00:00', 5, 'ImportTool', 0.98, 'Approved', '2023-06-02 11:00:00', 6, 'Title of the concept', 'academic', 'v1', 1);
INSERT INTO knowledge_graph_node_properties VALUES (2, 50002, 'publication_year', '2020', 'integer', 0, 0, '2023-02-15 12:30:00', 6, '2023-06-05 13:45:00', 6, 'ManualEntry', 0.95, 'Approved', '2023-06-06 14:10:00', 7, 'Year of publication', 'academic', 'v2', 1);
INSERT INTO knowledge_graph_node_properties VALUES (3, 50003, 'doi', '10.1000/xyz123', 'string', 1, 1, '2023-03-20 08:15:00', 7, '2023-06-10 09:20:00', 7, 'AutoExtractor', 0.99, 'Approved', '2023-06-11 10:30:00', 8, 'Digital object identifier', 'academic', 'v1', 1);

-- Table capturing content personalization rule sets
CREATE TABLE content_personalization_ruleset
(
    Id                     INTEGER PRIMARY KEY,
    RuleSetName            TEXT,
    Description            TEXT,
    IsActive               INTEGER,
    CreatedAt              DATETIME,
    CreatedByUserId        INTEGER,
    UpdatedAt              DATETIME,
    UpdatedByUserId        INTEGER,
    Priority               INTEGER,
    TargetAudience         TEXT,
    ConditionExpression    TEXT,
    ActionType             TEXT,
    ActionParameters       TEXT,
    EvaluationFrequencyMin INTEGER,
    LastEvaluatedAt        DATETIME,
    SuccessCount           INTEGER,
    FailureCount           INTEGER,
    ErrorMessage           TEXT,
    Version                TEXT,
    RolloutPercentage      INTEGER,
    MetricsTracked         TEXT,
    OwnerTeam              TEXT,
    ApprovalStatus         TEXT,
    ApprovedByUserId       INTEGER,
    ApprovalDate           DATETIME,
    FOREIGN KEY (CreatedByUserId) REFERENCES users (Id),
    FOREIGN KEY (UpdatedByUserId) REFERENCES users (Id),
    FOREIGN KEY (ApprovedByUserId) REFERENCES users (Id)
);

INSERT INTO content_personalization_ruleset VALUES (1, 'NewUserWelcome', 'Shows welcome banner to new users', 1, '2023-01-01 10:00:00', 5, '2023-06-01 11:00:00', 5, 10, 'new_users', 'UserAge < 30 AND AccountAgeDays < 7', 'ShowBanner', '{"bannerId":101}', 1440, '2023-06-10 12:00:00', 5000, 0, NULL, 'v1', 100, 'views,clicks', 'EngagementTeam', 'Approved', 6, '2023-01-05 09:30:00');
INSERT INTO content_personalization_ruleset VALUES (2, 'HighReputationPromo', 'Promote premium features to high rep users', 1, '2023-02-15 09:30:00', 6, '2023-06-05 10:15:00', 6, 20, 'high_rep', 'UserReputation > 20000', 'ShowPopup', '{"popupId":202}', 720, '2023-06-10 12:05:00', 3000, 10, 'Rate limit exceeded', 'v2', 50, 'impressions,conversions', 'MonetizationTeam', 'Pending', NULL, NULL);
INSERT INTO content_personalization_ruleset VALUES (3, 'LocaleBasedContent', 'Adjust content language based on locale', 1, '2023-03-20 08:45:00', 7, '2023-06-08 09:20:00', 7, 30, 'all_users', 'UserLocale IN (\'en\',\'es\',\'fr\')', 'ReplaceContent', '{"langMap": {"en":"en_US","es":"es_ES","fr":"fr_FR"}}', 1440, '2023-06-10 12:10:00', 8000, 5, NULL, 'v1', 100, 'languageSwitches', 'LocalizationTeam', 'Approved', 8, '2023-03-25 14:00:00');