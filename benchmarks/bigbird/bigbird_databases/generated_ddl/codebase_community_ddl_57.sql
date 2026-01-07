-- Table storing requests for collaboration on posts
CREATE TABLE post_collaboration_requests
(
    Id                      INTEGER PRIMARY KEY,
    PostId                  INTEGER,
    RequesterUserId         INTEGER,
    RequestedUserId         INTEGER,
    Message                 TEXT,
    Status                  TEXT,
    CreatedAt               DATETIME,
    UpdatedAt               DATETIME,
    ExpirationDate          DATETIME,
    AcceptedAt              DATETIME,
    RejectedAt              DATETIME,
    ReviewCount             INTEGER,
    Priority                INTEGER,
    CollaborationType       TEXT,
    EstimatedHours          INTEGER,
    RatePerHour             INTEGER,
    Currency                TEXT,
    ConfidentialFlag       BOOLEAN,
    AttachmentCount         INTEGER,
    NotificationSentFlag    BOOLEAN
);

INSERT INTO post_collaboration_requests VALUES (1, 101, 10, 20, 'Please review my draft', 'Pending', '2023-01-10 09:00:00', '2023-01-10 09:00:00', '2023-02-01 00:00:00', NULL, NULL, 0, 2, 'Edit', 5, 50, 'USD', 0, 1, 0);
INSERT INTO post_collaboration_requests VALUES (2, 102, 11, 21, 'Need assistance with graphics', 'Accepted', '2023-01-12 14:30:00', '2023-01-13 10:20:00', '2023-02-15 00:00:00', '2023-01-13 10:20:00', NULL, 1, 1, 'Design', 3, 75, 'EUR', 1, 2, 1);
INSERT INTO post_collaboration_requests VALUES (3, 103, 12, 22, 'Can you co‑author this article?', 'Rejected', '2023-01-15 08:45:00', '2023-01-16 11:00:00', '2023-02-20 00:00:00', NULL, '2023-01-16 11:00:00', 2, 3, 'Writing', 8, 60, 'GBP', 0, 0, 1);

-- Table describing hierarchical relationships between tags
CREATE TABLE tag_relationships
(
    Id                    INTEGER PRIMARY KEY,
    ParentTagId           INTEGER,
    ChildTagId            INTEGER,
    RelationshipType      TEXT,
    CreatedOn             DATETIME,
    UpdatedOn             DATETIME,
    Weight                REAL,
    IsActive              BOOLEAN,
    SourceSystem          TEXT,
    ConfidenceScore       REAL,
    Description           TEXT,
    SuggestedByUserId     INTEGER,
    ApprovalStatus        TEXT,
    ApprovedByUserId      INTEGER,
    ApprovalDate          DATETIME,
    LastUsedDate          DATETIME,
    UsageCount            INTEGER,
    SynonymGroupId        INTEGER,
    MergeCandidateFlag    BOOLEAN,
    DeprecatedFlag        BOOLEAN
);

INSERT INTO tag_relationships VALUES (1, 1001, 2001, 'ParentChild', '2022-06-01 12:00:00', '2022-06-01 12:00:00', 0.95, 1, 'SystemA', 0.98, 'Core taxonomy link', 5, 'Approved', 2, '2022-06-02 09:00:00', '2023-01-01 00:00:00', 1500, 10, 0, 0);
INSERT INTO tag_relationships VALUES (2, 1002, 2002, 'Synonym', '2022-07-15 08:30:00', '2022-07-20 14:45:00', 0.80, 1, 'UserInput', 0.85, 'Alternative naming', 8, 'Pending', NULL, NULL, '2023-02-10 00:00:00', 300, 11, 1, 0);
INSERT INTO tag_relationships VALUES (3, 1003, 2003, 'Related', '2022-09-10 10:15:00', '2022-09-12 16:00:00', 0.60, 0, 'ImportTool', 0.70, 'Loose association', 12, 'Rejected', NULL, NULL, '2022-12-31 00:00:00', 75, 12, 0, 1);

-- Table tracking the moderation workflow for various content types
CREATE TABLE content_moderation_workflow
(
    Id                  INTEGER PRIMARY KEY,
    ContentId           INTEGER,
    ContentType         TEXT,
    SubmittedByUserId   INTEGER,
    SubmittedAt         DATETIME,
    CurrentStage        TEXT,
    AssignedModeratorId INTEGER,
    AssignedAt          DATETIME,
    ReviewDeadline      DATETIME,
    Decision            TEXT,
    DecisionByUserId    INTEGER,
    DecisionAt          DATETIME,
    Remarks             TEXT,
    EscalationLevel    INTEGER,
    Priority            INTEGER,
    Tags                TEXT,
    ReopenCount         INTEGER,
    LastReopenedAt      DATETIME,
    ArchiveFlag        BOOLEAN,
    VersionNumber       INTEGER
);

INSERT INTO content_moderation_workflow VALUES (1, 5001, 'Post', 10, '2023-01-05 07:20:00', 'Review', 30, '2023-01-05 08:00:00', '2023-01-07 00:00:00', 'Approved', 30, '2023-01-06 15:30:00', 'All good', 0, 2, 'spam,offensive', 0, NULL, 0, 1);
INSERT INTO content_moderation_workflow VALUES (2, 5002, 'Comment', 11, '2023-01-06 09:45:00', 'Escalated', 31, '2023-01-06 10:15:00', '2023-01-09 00:00:00', 'Rejected', 31, '2023-01-08 12:00:00', 'Contains harassment', 1, 3, 'harassment', 1, '2023-01-10 11:00:00', 0, 2);
INSERT INTO content_moderation_workflow VALUES (3, 5003, 'UserProfile', 12, '2023-01-07 14:30:00', 'Pending', NULL, NULL, '2023-01-14 00:00:00', NULL, NULL, NULL, 'Awaiting assignment', 0, 1, 'profile,abuse', 0, NULL, 0, 1);

-- Table logging issued API tokens
CREATE TABLE api_token_issued
(
    Id                INTEGER PRIMARY KEY,
    TokenValue        TEXT,
    IssuedToUserId    INTEGER,
    IssuedAt          DATETIME,
    ExpiresAt         DATETIME,
    Scopes            TEXT,
    IsRevoked         BOOLEAN,
    RevokedAt         DATETIME,
    RevokedByUserId   INTEGER,
    IssueReason       TEXT,
    ClientAppId       INTEGER,
    DeviceId          TEXT,
    IpAddress         TEXT,
    UserAgent         TEXT,
    RefreshToken      TEXT,
    RefreshExpiresAt  DATETIME,
    LastUsedAt        DATETIME,
    UsageCount        INTEGER,
    CreatedByAdminId  INTEGER,
    Notes             TEXT
);

INSERT INTO api_token_issued VALUES (1, 'tokenabc123', 10, '2023-01-01 00:00:00', '2024-01-01 00:00:00', 'read,write', 0, NULL, NULL, 'Initial issuance', 100, 'dev001', '192.168.1.10', 'Mozilla/5.0', 'refreshtoken123', '2024-01-01 00:00:00', '2023-06-15 12:00:00', 150, 1, 'First token for user');
INSERT INTO api_token_issued VALUES (2, 'tokendef456', 11, '2023-02-15 08:30:00', '2024-02-15 08:30:00', 'read', 0, NULL, NULL, 'User requested read‑only token', 101, 'dev002', '10.0.0.5', 'Chrome/112.0', 'refreshtoken456', '2024-02-15 08:30:00', '2023-08-20 09:45:00', 45, 2, 'Read‑only token');
INSERT INTO api_token_issued VALUES (3, 'tokenghi789', 12, '2023-03-10 14:00:00', '2023-09-10 14:00:00', 'write', 1, '2023-08-01 10:00:00', 5, 'Revoked due to abuse', 102, 'dev003', '172.16.0.3', 'Safari/16.0', 'refreshtoken789', '2023-09-10 14:00:00', '2023-07-22 16:20:00', 200, 3, 'Token revoked');

-- Table for analysis of search queries
CREATE TABLE search_query_analysis
(
    Id                    INTEGER PRIMARY KEY,
    QueryText             TEXT,
    SearchEngineId        INTEGER,
    ExecutedAt            DATETIME,
    UserId                INTEGER,
    SessionId             TEXT,
    ResultCount           INTEGER,
    ClickedResultId       INTEGER,
    ClickPosition         INTEGER,
    DurationMs            INTEGER,
    IsSuccessful          BOOLEAN,
    GeoRegion             TEXT,
    DeviceType            TEXT,
    Browser               TEXT,
    OperatingSystem       TEXT,
    Language              TEXT,
    IsPersonalized        BOOLEAN,
    SuggestedCorrections  TEXT,
    DidYouMean            TEXT,
    RankingAlgorithmVersion TEXT,
    FeedbackScore         INTEGER
);

INSERT INTO search_query_analysis VALUES (1, 'how to write sql script', 1, '2023-04-01 10:15:00', 10, 'sess001', 12, 5, 5, 320, 1, 'NA', 'Desktop', 'Chrome', 'Windows', 'en', 1, '', '', 'v2', 4);
INSERT INTO search_query_analysis VALUES (2, 'best practices for api rate limiting', 1, '2023-04-02 11:45:00', 11, 'sess002', 8, 2, 2, 210, 1, 'EU', 'Mobile', 'Firefox', 'Android', 'en', 0, '', '', 'v2', 5);
INSERT INTO search_query_analysis VALUES (3, 'sql injection examples', 2, '2023-04-03 09:30:00', 12, 'sess003', 5, NULL, NULL, 150, 0, 'APAC', 'Tablet', 'Edge', 'iOS', 'en', 1, 'sql injection example', 'Did you mean: sql injection example', 'v3', 2);

-- Table logging site access events
CREATE TABLE site_access_logs
(
    Id                     INTEGER PRIMARY KEY,
    SiteId                 INTEGER,
    UserId                 INTEGER,
    AccessTime             DATETIME,
    IpAddress              TEXT,
    UserAgent              TEXT,
    ReferrerUrl            TEXT,
    SessionId              TEXT,
    AccessType             TEXT,
    ResourcePath           TEXT,
    ResponseStatus         INTEGER,
    ResponseTimeMs         INTEGER,
    BytesTransferred       INTEGER,
    GeoLocation            TEXT,
    DeviceCategory         TEXT,
    BrowserVersion         TEXT,
    OsVersion              TEXT,
    IsBot                  BOOLEAN,
    AuthenticationMethod   TEXT,
    TwoFactorPassed        BOOLEAN,
    Notes                  TEXT
);

INSERT INTO site_access_logs VALUES (1, 1, 10, '2023-05-01 08:00:00', '203.0.113.5', 'Mozilla/5.0', 'https://example.com', 'sess001', 'PageView', '/home', 200, 120, 45230, 'NA', 'Desktop', '86.0', '10', 0, 'Password', 1, '');
INSERT INTO site_access_logs VALUES (2, 1, 11, '2023-05-01 08:05:30', '198.51.100.23', 'Chrome/112.0', 'https://search.example.com', 'sess002', 'ApiCall', '/api/v1/data', 200, 85, 1024, 'EU', 'Mobile', '112.0', '13', 0, 'OAuth', 1, '');
INSERT INTO site_access_logs VALUES (3, 1, NULL, '2023-05-01 08:10:15', '192.0.2.45', 'curl/7.68.0', '', 'sess003', 'HealthCheck', '/health', 200, 30, 256, 'APAC', 'Server', '', '', 0, 'None', 0, 'Automated monitor');

-- Summary table for advertiser campaigns
CREATE TABLE advertiser_campaign_summary
(
    CampaignId               INTEGER PRIMARY KEY,
    AdvertiserId             INTEGER,
    CampaignName             TEXT,
    StartDate                DATE,
    EndDate                  DATE,
    BudgetAmount             INTEGER,
    Currency                 TEXT,
    Impressions              INTEGER,
    Clicks                   INTEGER,
    Conversions              INTEGER,
    CostPerClick             REAL,
    CostPerConversion        REAL,
    Status                   TEXT,
    TargetAudienceId         INTEGER,
    PlacementIds             TEXT,
    CreativeCount            INTEGER,
    FrequencyCap             INTEGER,
    DailyBudget              INTEGER,
    SpendToDate              INTEGER,
    OptimizationGoal         TEXT,
    Remarks                  TEXT
);

INSERT INTO advertiser_campaign_summary VALUES (1001, 500, 'Spring Sale', '2023-03-01', '2023-04-30', 50000, 'USD', 1200000, 35000, 4800, 1.43, 10.42, 'Active', 2001, '101,102,103', 8, 3, 2000, 31200, 'Conversions', '');
INSERT INTO advertiser_campaign_summary VALUES (1002, 501, 'Summer Promo', '2023-06-01', '2023-08-31', 75000, 'EUR', 1800000, 45000, 6000, 1.67, 12.50, 'Planned', 2002, '104,105', 10, 2, 2500, 0, 'Clicks', 'Awaiting launch');
INSERT INTO advertiser_campaign_summary VALUES (1003, 502, 'Winter Clearance', '2023-11-15', '2024-01-15', 30000, 'GBP', 900000, 22000, 3000, 1.36, 10.00, 'Paused', 2003, '106,107', 5, 4, 1500, 15000, 'Impressions', 'Seasonal pause');

-- Extended annotations for knowledge graph nodes (version 2)
CREATE TABLE knowledge_graph_annotations_v2
(
    AnnotationId          INTEGER PRIMARY KEY,
    NodeId                INTEGER,
    PropertyKey           TEXT,
    PropertyValue         TEXT,
    AnnotationType        TEXT,
    CreatedByUserId       INTEGER,
    CreatedAt             DATETIME,
    UpdatedByUserId       INTEGER,
    UpdatedAt             DATETIME,
    ConfidenceScore       REAL,
    SourceSystem          TEXT,
    IsAutomated           BOOLEAN,
    ReviewStatus          TEXT,
    ReviewedByUserId      INTEGER,
    ReviewedAt            DATETIME,
    ValidFrom             DATETIME,
    ValidTo               DATETIME,
    Language              TEXT,
    Version               INTEGER,
    Tags                  TEXT,
    Comments              TEXT
);

INSERT INTO knowledge_graph_annotations_v2 VALUES (1, 9001, 'category', 'Technology', 'Classification', 10, '2023-01-01 10:00:00', 12, '2023-02-01 12:00:00', 0.96, 'IngestEngine', 1, 'Approved', 15, '2023-02-02 09:30:00', '2023-01-01 00:00:00', '2024-01-01 00:00:00', 'en', 2, 'tech,ai', '');
INSERT INTO knowledge_graph_annotations_v2 VALUES (2, 9002, 'status', 'Deprecated', 'Lifecycle', 11, '2023-03-05 08:15:00', 13, '2023-04-10 14:45:00', 0.88, 'ManualEntry', 0, 'PendingReview', NULL, NULL, '2023-03-05 00:00:00', '2025-12-31 00:00:00', 'en', 1, 'deprecated', '');
INSERT INTO knowledge_graph_annotations_v2 VALUES (3, 9003, 'region', 'EMEA', 'Geography', 12, '2023-05-20 11:30:00', 12, '2023-06-01 16:00:00', 0.99, 'SyncService', 1, 'Approved', 18, '2023-06-02 10:00:00', '2023-05-20 00:00:00', '2024-05-20 00:00:00', 'en', 3, 'region,emea', '');

-- Responses within forum threads
CREATE TABLE forum_thread_responses
(
    ResponseId            INTEGER PRIMARY KEY,
    ThreadId              INTEGER,
    AuthorUserId          INTEGER,
    PostedAt              DATETIME,
    BodyText              TEXT,
    IsAccepted            BOOLEAN,
    UpvoteCount           INTEGER,
    DownvoteCount         INTEGER,
    EditCount             INTEGER,
    LastEditedAt          DATETIME,
    EditedByUserId        INTEGER,
    AttachmentCount       INTEGER,
    MentionedUserIds      TEXT,
    FlagsCount            INTEGER,
    IsDeleted             BOOLEAN,
    DeletedAt             DATETIME,
    DeletedByUserId       INTEGER,
    SpamScore             REAL,
    SentimentScore        REAL,
    RevisionGuid          TEXT
);

INSERT INTO forum_thread_responses VALUES (1, 3001, 20, '2023-07-01 09:15:00', 'I think the solution is to use a CTE.', 0, 12, 1, 0, NULL, NULL, 0, '21,22', 0, 0, NULL, NULL, 0.05, 0.8, 'rev001');
INSERT INTO forum_thread_responses VALUES (2, 3001, 21, '2023-07-01 10:45:00', 'Alternatively, you can achieve this with a window function.', 1, 25, 0, 1, '2023-07-01 12:00:00', 21, 1, '', 0, 0, NULL, NULL, 0.02, 0.9, 'rev002');
INSERT INTO forum_thread_responses VALUES (3, 3002, 22, '2023-07-02 14:20:00', 'Can you clarify the expected output format?', 0, 5, 2, 0, NULL, NULL, 0, '', 1, 0, NULL, NULL, 0.10, 0.3, 'rev003');

-- User privacy preference settings
CREATE TABLE user_privacy_preferences
(
    UserId                 INTEGER PRIMARY KEY,
    ShareEmail             BOOLEAN,
    ShareProfilePicture    BOOLEAN,
    ShareActivityStatus    BOOLEAN,
    SharePosts             BOOLEAN,
    ShareComments          BOOLEAN,
    ShareReputation        BOOLEAN,
    AllowDirectMessages    BOOLEAN,
    AllowFriendRequests    BOOLEAN,
    TwoFactorEnabled      BOOLEAN,
    LastPrivacyUpdate      DATETIME,
    DataExportRequested   BOOLEAN,
    DataDeletionRequested BOOLEAN,
    PreferredLanguage      TEXT,
    Timezone               TEXT,
    EmailDigestFrequency   TEXT,
    MobilePushEnabled      BOOLEAN,
    ProfileVisibility      TEXT,
    SearchEngineIndexing   BOOLEAN,
    AdvertisingOptOut      BOOLEAN
);

INSERT INTO user_privacy_preferences VALUES (10, 0, 1, 1, 1, 1, 1, 1, 0, 1, '2023-08-01 12:00:00', 0, 0, 'en', 'UTC', 'weekly', 1, 'public', 1, 0);
INSERT INTO user_privacy_preferences VALUES (11, 1, 0, 0, 0, 0, 0, 0, 1, 0, '2023-08-02 09:30:00', 1, 0, 'es', 'Europe/Madrid', 'daily', 0, 'private', 0, 1);
INSERT INTO user_privacy_preferences VALUES (12, 0, 0, 1, 1, 0, 1, 1, 1, 1, '2023-08-03 15:45:00', 0, 1, 'fr', 'Europe/Paris', 'monthly', 1, 'friends-only', 1, 0);