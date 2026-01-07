-- Stores information about external social accounts linked to a user
CREATE TABLE user_external_accounts
(
    Id               INTEGER    NOT NULL PRIMARY KEY,
    UserId           INTEGER    NULL,
    ProviderName     TEXT       NULL,
    AccountId        TEXT       NULL,
    ProfileUrl       TEXT       NULL,
    Verified         INTEGER    NULL,            -- 0 = false, 1 = true
    LinkDate         DATETIME   NULL,
    LastSyncDate     DATETIME   NULL,
    SyncStatus       TEXT       NULL,
    AccessToken      TEXT       NULL,
    RefreshToken     TEXT       NULL,
    TokenExpiresAt   DATETIME   NULL,
    IsPrimary        INTEGER    NULL,
    Bio              TEXT       NULL,
    FollowersCount   INTEGER    NULL,
    FollowingCount   INTEGER    NULL,
    PostsCount       INTEGER    NULL,
    LikesCount       INTEGER    NULL,
    ReputationScore  INTEGER    NULL,
    Role             TEXT       NULL
);

INSERT INTO user_external_accounts VALUES (1, 101, 'GitHub', 'gh_12345', 'https://github.com/user1', 1, '2023-01-10 08:30:00', '2023-06-01 12:00:00', 'synced', 'tokenabc', 'refreshtokenxyz', '2024-01-10 08:30:00', 1, 'Open source contributor', 150, 75, 20, 300, 1200, 'developer');
INSERT INTO user_external_accounts VALUES (2, 102, 'Twitter', 'tw_67890', 'https://twitter.com/user2', 0, '2022-11-05 14:20:00', NULL, 'pending', NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 'viewer');
INSERT INTO user_external_accounts VALUES (3, 103, 'LinkedIn', 'li_24680', 'https://linkedin.com/in/user3', 1, '2023-03-15 09:45:00', '2023-09-20 10:10:00', 'synced', 'tokendef', 'refreshtokenuvw', '2024-03-15 09:45:00', 0, 'Project manager', 500, 200, 45, 120, 800, 'manager');

-- Records advertising campaigns associated with individual posts
CREATE TABLE post_advertising
(
    Id               INTEGER    NOT NULL PRIMARY KEY,
    PostId           INTEGER    NULL,
    CampaignId       INTEGER    NULL,
    ImpressionCount  INTEGER    NULL,
    ClickCount       INTEGER    NULL,
    CostPerClick     DECIMAL(10,4) NULL,
    TotalSpend       DECIMAL(12,4) NULL,
    StartDate        DATE       NULL,
    EndDate          DATE       NULL,
    TargetRegion     TEXT       NULL,
    TargetDevice     TEXT       NULL,
    AdFormat         TEXT       NULL,
    CreativeId       INTEGER    NULL,
    IsActive         INTEGER    NULL,
    CreatedByUserId  INTEGER    NULL,
    CreatedAt        DATETIME   NULL,
    UpdatedAt        DATETIME   NULL,
    LastModifiedBy   INTEGER    NULL,
    Budget           DECIMAL(12,2) NULL,
    BidAmount        DECIMAL(10,4) NULL
);

INSERT INTO post_advertising VALUES (1, 201, 301, 15000, 230, 0.2500, 57.50, '2023-05-01', '2023-05-31', 'US', 'Desktop', 'Banner', 401, 1, 101, '2023-04-28 10:00:00', '2023-05-10 15:30:00', 101, 5000.00, 0.3000);
INSERT INTO post_advertising VALUES (2, 202, 302, 8000, 120, 0.4000, 48.00, '2023-06-01', '2023-06-30', 'CA', 'Mobile', 'Video', 402, 1, 102, '2023-05-20 09:15:00', '2023-06-05 11:45:00', 102, 4000.00, 0.3500);
INSERT INTO post_advertising VALUES (3, 203, 303, 20000, 400, 0.1500, 60.00, '2023-07-01', '2023-07-31', 'EU', 'All', 'Native', 403, 0, 103, '2023-06-25 08:00:00', '2023-07-20 14:20:00', 103, 6000.00, 0.2000);

-- Associates subject‑matter experts with specific tags
CREATE TABLE tag_expert_assignments
(
    Id                 INTEGER    NOT NULL PRIMARY KEY,
    TagId              INTEGER    NULL,
    UserId             INTEGER    NULL,
    AssignmentDate     DATE       NULL,
    ExpirationDate     DATE       NULL,
    ExpertiseLevel     TEXT       NULL,
    IsPrimary          INTEGER    NULL,
    Notes              TEXT       NULL,
    ApprovedByUserId   INTEGER    NULL,
    ApprovalDate       DATE       NULL,
    ReviewCycleDays    INTEGER    NULL,
    ScoreThreshold     INTEGER    NULL,
    NotificationEnabled INTEGER   NULL,
    LastNotifiedAt     DATETIME   NULL,
    RemindersSent      INTEGER    NULL,
    LegacyTagId        INTEGER    NULL,
    SourceSystem       TEXT       NULL,
    CreatedAt          DATETIME   NULL,
    CreatedBy          INTEGER    NULL,
    UpdatedAt          DATETIME   NULL,
    UpdatedBy          INTEGER    NULL
);

INSERT INTO tag_expert_assignments VALUES (1, 501, 101, '2023-01-01', '2024-01-01', 'Advanced', 1, 'Lead expert for tag', 201, '2023-01-02', 30, 85, 1, '2023-06-15 09:00:00', 3, NULL, 'internal', '2023-01-01 08:00:00', 201, '2023-06-20 12:00:00', 201);
INSERT INTO tag_expert_assignments VALUES (2, 502, 102, '2022-07-15', '2023-07-15', 'Intermediate', 0, 'Secondary reviewer', 202, '2022-07-16', 60, 70, 0, NULL, 0, NULL, 'partner', '2022-07-15 10:30:00', 202, '2023-01-10 11:45:00', 202);
INSERT INTO tag_expert_assignments VALUES (3, 503, 103, '2023-03-20', '2025-03-20', 'Beginner', 0, 'Newly assigned', 203, '2023-03-21', 90, 60, 1, '2023-04-01 14:20:00', 1, NULL, 'external', '2023-03-20 09:15:00', 203, '2023-05-05 16:00:00', 203);

-- Defines policies governing access to various content objects
CREATE TABLE content_access_policies
(
    PolicyId               INTEGER    NOT NULL PRIMARY KEY,
    ContentType            TEXT       NULL,
    ContentId              INTEGER    NULL,
    AllowedUserGroupId     INTEGER    NULL,
    DeniedUserGroupId      INTEGER    NULL,
    EffectiveFrom          DATETIME   NULL,
    EffectiveTo            DATETIME   NULL,
    MaxViews               INTEGER    NULL,
    ExpirationAction       TEXT       NULL,
    NotificationMessage    TEXT       NULL,
    CreatedByUserId        INTEGER    NULL,
    CreatedAt              DATETIME   NULL,
    UpdatedByUserId        INTEGER    NULL,
    UpdatedAt              DATETIME   NULL,
    IsActive               INTEGER    NULL,
    AuditLogId             INTEGER    NULL,
    VersionNumber          INTEGER    NULL,
    ReviewRequired         INTEGER    NULL,
    ReviewDueDate          DATE       NULL,
    Comment                TEXT       NULL
);

INSERT INTO content_access_policies VALUES (1, 'post', 201, 301, NULL, '2023-01-01 00:00:00', '2023-12-31 23:59:59', 1000, 'revoke', 'Access will expire soon', 101, '2023-01-01 08:00:00', 102, '2023-06-01 09:00:00', 1, 401, 2, 1, '2023-06-30', 'Initial policy');
INSERT INTO content_access_policies VALUES (2, 'tag', 502, 302, 303, '2023-03-01 00:00:00', NULL, NULL, 'notify', 'Tag access update', 102, '2023-03-01 10:15:00', 103, '2023-08-01 11:20:00', 1, 402, 1, 0, NULL, 'Tag specific rule');
INSERT INTO content_access_policies VALUES (3, 'user', 103, NULL, 304, '2023-05-15 00:00:00', '2023-11-15 23:59:59', 500, 'archive', 'User profile will be archived', 103, '2023-05-15 09:30:00', 104, '2023-10-10 14:45:00', 0, 403, 3, 1, '2023-10-01', 'Legacy user policy');

-- Tracks learning activities performed by users within the platform
CREATE TABLE user_learning_activities
(
    ActivityId      INTEGER    NOT NULL PRIMARY KEY,
    UserId          INTEGER    NULL,
    ActivityType    TEXT       NULL,
    ContentId       INTEGER    NULL,
    ContentType     TEXT       NULL,
    StartTime       DATETIME   NULL,
    EndTime         DATETIME   NULL,
    DurationSeconds INTEGER    NULL,
    Score           INTEGER    NULL,
    Passed          INTEGER    NULL,
    CertificateId   INTEGER    NULL,
    InstructorId    INTEGER    NULL,
    Location        TEXT       NULL,
    DeviceType      TEXT       NULL,
    Browser         TEXT       NULL,
    IpAddress       TEXT       NULL,
    SessionId       TEXT       NULL,
    CreatedAt       DATETIME   NULL,
    UpdatedAt       DATETIME   NULL,
    Remarks         TEXT       NULL,
    Source          TEXT       NULL
);

INSERT INTO user_learning_activities VALUES (1, 101, 'quiz', 1001, 'course', '2023-04-01 09:00:00', '2023-04-01 09:30:00', 1800, 85, 1, 5001, 201, 'Online', 'Desktop', 'Chrome', '192.168.1.10', 'sess_abc123', '2023-04-01 09:00:00', '2023-04-01 09:35:00', 'Good performance', 'internal');
INSERT INTO user_learning_activities VALUES (2, 102, 'video', 1002, 'course', '2023-04-02 14:15:00', '2023-04-02 15:45:00', 5400, NULL, NULL, NULL, 202, 'Online', 'Mobile', 'Safari', '192.168.1.20', 'sess_def456', '2023-04-02 14:15:00', '2023-04-02 15:50:00', 'Viewed entire video', 'external');
INSERT INTO user_learning_activities VALUES (3, 103, 'assignment', 1003, 'module', '2023-04-03 10:00:00', '2023-04-03 12:00:00', 7200, 92, 1, 5002, 203, 'Campus', 'Desktop', 'Firefox', '192.168.1.30', 'sess_ghi789', '2023-04-03 10:00:00', '2023-04-03 12:05:00', 'Submitted on time', 'partner');

-- Stores collaborative edit session details for posts
CREATE TABLE post_collaborative_edits
(
    EditSessionId       INTEGER    NOT NULL PRIMARY KEY,
    PostId              INTEGER    NULL,
    UserId              INTEGER    NULL,
    EditStart           DATETIME   NULL,
    EditEnd             DATETIME   NULL,
    EditDurationSeconds INTEGER    NULL,
    ChangeCount         INTEGER    NULL,
    ConflictDetected    INTEGER    NULL,
    ConflictResolved    INTEGER    NULL,
    MergeStrategy       TEXT       NULL,
    Comments            TEXT       NULL,
    ReviewStatus        TEXT       NULL,
    ReviewedByUserId    INTEGER    NULL,
    ReviewDate          DATE       NULL,
    IsFinalized         INTEGER    NULL,
    VersionNumber       INTEGER    NULL,
    SnapshotUrl         TEXT       NULL,
    CreatedAt           DATETIME   NULL,
    UpdatedAt           DATETIME   NULL,
    TagsAdded           TEXT       NULL,
    TagsRemoved         TEXT       NULL
);

INSERT INTO post_collaborative_edits VALUES (1, 201, 101, '2023-05-01 09:00:00', '2023-05-01 09:45:00', 2700, 12, 0, 0, 'fast-forward', 'Initial draft', 'pending', NULL, NULL, 0, 1, 'http://snapshots/1', '2023-05-01 09:00:00', '2023-05-01 09:46:00', 'sql,performance', '');
INSERT INTO post_collaborative_edits VALUES (2, 202, 102, '2023-05-02 10:30:00', '2023-05-02 11:20:00', 3000, 8, 1, 1, 'manual-merge', 'Resolved merge conflicts', 'approved', 201, '2023-05-03', 1, 2, 'http://snapshots/2', '2023-05-02 10:30:00', '2023-05-02 11:21:00', 'java', 'c#');
INSERT INTO post_collaborative_edits VALUES (3, 203, 103, '2023-05-03 14:00:00', '2023-05-03 15:15:00', 4500, 20, 0, 0, 'rebase', 'Added examples', 'pending', NULL, NULL, 0, 1, 'http://snapshots/3', '2023-05-03 14:00:00', '2023-05-03 15:16:00', 'python', 'ruby');

-- Aggregated statistics per geographic region
CREATE TABLE site_region_statistics
(
    RegionId                     INTEGER    NOT NULL PRIMARY KEY,
    RegionName                   TEXT       NULL,
    DailyActiveUsers             INTEGER    NULL,
    MonthlyActiveUsers           INTEGER    NULL,
    NewUserCount                 INTEGER    NULL,
    PostCount                    INTEGER    NULL,
    CommentCount                 INTEGER    NULL,
    VoteCount                    INTEGER    NULL,
    AvgSessionLengthSeconds      INTEGER    NULL,
    BounceRatePercent            INTEGER    NULL,
    PeakConcurrentUsers          INTEGER    NULL,
    AvgResponseTimeMs            INTEGER    NULL,
    DataCenterId                 INTEGER    NULL,
    LastUpdated                  DATETIME   NULL,
    CreatedAt                    DATETIME   NULL,
    IsActive                     INTEGER    NULL,
    NotificationSent             INTEGER    NULL,
    AlertLevel                   TEXT       NULL,
    MaintenanceWindowStart       DATETIME   NULL,
    MaintenanceWindowEnd         DATETIME   NULL
);

INSERT INTO site_region_statistics VALUES (1, 'NorthAmerica', 12000, 300000, 5000, 80000, 250000, 400000, 350, 45, 1500, 120, 10, '2023-06-01 12:00:00', '2023-01-01 08:00:00', 1, 0, 'low', NULL, NULL);
INSERT INTO site_region_statistics VALUES (2, 'Europe', 9500, 250000, 4200, 72000, 210000, 350000, 320, 50, 1300, 140, 11, '2023-06-01 12:05:00', '2023-01-02 09:00:00', 1, 1, 'medium', '2023-07-01 02:00:00', '2023-07-01 04:00:00');
INSERT INTO site_region_statistics VALUES (3, 'Asia', 15000, 400000, 8000, 95000, 300000, 500000, 410, 40, 1700, 110, 12, '2023-06-01 12:10:00', '2023-01-03 10:00:00', 1, 0, 'high', NULL, NULL);

-- Tracks usage metrics for third‑party applications accessing the API
CREATE TABLE api_application_usage
(
    AppId                INTEGER    NOT NULL PRIMARY KEY,
    AppName              TEXT       NULL,
    ApiKey               TEXT       NULL,
    OwnerUserId          INTEGER    NULL,
    RequestCount         INTEGER    NULL,
    SuccessCount         INTEGER    NULL,
    ErrorCount           INTEGER    NULL,
    AvgLatencyMs         INTEGER    NULL,
    QuotaLimit           INTEGER    NULL,
    QuotaUsed            INTEGER    NULL,
    SubscriptionLevel    TEXT       NULL,
    StartDate            DATE       NULL,
    EndDate              DATE       NULL,
    IsActive             INTEGER    NULL,
    LastAccessed         DATETIME   NULL,
    CreatedAt            DATETIME   NULL,
    UpdatedAt            DATETIME   NULL,
    ContactEmail         TEXT       NULL,
    SupportPhone         TEXT       NULL,
    DocumentationUrl     TEXT       NULL,
    TermsAccepted        INTEGER    NULL
);

INSERT INTO api_application_usage VALUES (1, 'AnalyticsTool', 'key_abc123', 101, 250000, 240000, 10000, 150, 500000, 250000, 'premium', '2022-01-01', NULL, 1, '2023-06-01 10:00:00', '2022-01-01 09:00:00', '2023-05-30 11:00:00', 'support@analyticstool.com', '555-0100', 'http://docs.analyticstool.com', 1);
INSERT INTO api_application_usage VALUES (2, 'MobileApp', 'key_def456', 102, 120000, 115000, 5000, 200, 200000, 120000, 'standard', '2023-03-01', '2024-03-01', 1, '2023-06-01 11:15:00', '2023-03-01 08:30:00', '2023-05-28 14:20:00', 'mobile@app.com', '555-0200', 'http://docs.mobileapp.com', 1);
INSERT INTO api_application_usage VALUES (3, 'LegacyIntegration', 'key_ghi789', 103, 50000, 48000, 2000, 300, 100000, 50000, 'basic', '2021-07-01', '2022-07-01', 0, '2022-12-31 16:45:00', '2021-07-01 07:45:00', '2022-12-31 17:00:00', 'legacy@integration.com', '555-0300', 'http://docs.legacy.com', 0);

-- Stores creative assets used in advertising campaigns
CREATE TABLE advertisement_creative_assets
(
    CreativeId            INTEGER    NOT NULL PRIMARY KEY,
    CampaignId            INTEGER    NULL,
    AssetType             TEXT       NULL,
    FileName              TEXT       NULL,
    FilePath              TEXT       NULL,
    FileSizeBytes         INTEGER    NULL,
    WidthPx               INTEGER    NULL,
    HeightPx              INTEGER    NULL,
    DurationSeconds       INTEGER    NULL,
    MimeType              TEXT       NULL,
    UploadDate            DATE       NULL,
    UploadedByUserId      INTEGER    NULL,
    IsActive              INTEGER    NULL,
    Tags                  TEXT       NULL,
    Description           TEXT       NULL,
    ApprovalStatus        TEXT       NULL,
    ApprovedByUserId      INTEGER    NULL,
    ApprovalDate          DATE       NULL,
    VersionNumber         INTEGER    NULL,
    Language              TEXT       NULL,
    TargetAudience        TEXT       NULL
);

INSERT INTO advertisement_creative_assets VALUES (1, 301, 'image', 'banner1.png', '/assets/banner1.png', 204800, 728, 90, NULL, 'image/png', '2023-04-01', 101, 1, 'sale,summer', 'Summer sale banner', 'approved', 201, '2023-04-02', 1, 'en', 'general');
INSERT INTO advertisement_creative_assets VALUES (2, 302, 'video', 'intro.mp4', '/assets/intro.mp4', 5080000, 1280, 720, 30, 'video/mp4', '2023-05-15', 102, 1, 'intro,product', 'Product introduction video', 'pending', NULL, NULL, 1, 'en', 'tech');
INSERT INTO advertisement_creative_assets VALUES (3, 303, 'html', 'interactive.html', '/assets/interactive.html', 102400, NULL, NULL, NULL, 'text/html', '2023-06-20', 103, 0, 'interactive,game', 'Interactive ad unit', 'rejected', 203, '2023-06-21', 1, 'en', 'gaming');

-- Metrics collected for each knowledge‑base article
CREATE TABLE knowledge_base_article_metrics
(
    ArticleId                INTEGER    NOT NULL PRIMARY KEY,
    ViewCount                INTEGER    NULL,
    HelpfulCount             INTEGER    NULL,
    UnhelpfulCount           INTEGER    NULL,
    AvgReadTimeSeconds      INTEGER    NULL,
    ShareCount               INTEGER    NULL,
    BookmarkCount            INTEGER    NULL,
    LastViewedAt             DATETIME   NULL,
    CreatedAt                DATETIME   NULL,
    UpdatedAt                DATETIME   NULL,
    AuthorUserId             INTEGER    NULL,
    CategoryId               INTEGER    NULL,
    RatingScore              INTEGER    NULL,
    CommentCount             INTEGER    NULL,
    FlagCount                INTEGER    NULL,
    IsFeatured               INTEGER    NULL,
    TrendingScore            INTEGER    NULL,
    SEOScore                 INTEGER    NULL,
    InternalLinkCount        INTEGER    NULL,
    ExternalLinkCount        INTEGER    NULL
);

INSERT INTO knowledge_base_article_metrics VALUES (1001, 1500, 1200, 100, 180, 300, 250, '2023-06-01 12:00:00', '2022-01-01 08:00:00', '2023-06-01 12:05:00', 101, 10, 85, 45, 5, 1, 90, 75, 20, 5);
INSERT INTO knowledge_base_article_metrics VALUES (1002, 800, 600, 50, 120, 150, 100, '2023-06-02 13:30:00', '2022-02-15 09:30:00', '2023-06-02 13:35:00', 102, 12, 78, 30, 2, 0, 70, 65, 15, 3);
INSERT INTO knowledge_base_article_metrics VALUES (1003, 2300, 2000, 150, 210, 500, 400, '2023-06-03 15:45:00', '2021-11-20 07:45:00', '2023-06-03 15:50:00', 103, 15, 92, 60, 8, 1, 95, 80, 25, 7);