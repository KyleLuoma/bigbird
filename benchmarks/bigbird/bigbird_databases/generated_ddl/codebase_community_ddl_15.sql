-- User milestones adjacent to the users table
CREATE TABLE user_milestones
(
    Id               INTEGER NOT NULL PRIMARY KEY,
    UserId           INTEGER NULL,
    MilestoneName    TEXT NULL,
    AchievedDate     DATETIME NULL,
    PointsAwarded    INTEGER NULL,
    Description      TEXT NULL,
    Category         TEXT NULL,
    Level            INTEGER NULL,
    ExpirationDate   DATETIME NULL,
    IsRecurring      INTEGER NULL,            -- 0 = false, 1 = true
    TriggerSource    TEXT NULL,
    BadgeReferenceId INTEGER NULL,
    RewardType       TEXT NULL,
    RewardValue      INTEGER NULL,
    NotificationSent INTEGER NULL,            -- 0 = false, 1 = true
    Visibility       TEXT NULL,
    CreatedByAdminId INTEGER NULL,
    UpdatedAt        DATETIME NULL,
    Notes            TEXT NULL,
    SortOrder        INTEGER NULL
);

INSERT INTO user_milestones (Id, UserId, MilestoneName, AchievedDate, PointsAwarded, Description, Category, Level, ExpirationDate, IsRecurring, TriggerSource, BadgeReferenceId, RewardType, RewardValue, NotificationSent, Visibility, CreatedByAdminId, UpdatedAt, Notes, SortOrder) VALUES (1, 101, 'FirstPost', '2023-01-15 10:00:00', 10, 'Awarded for first post', 'Engagement', 1, NULL, 0, 'PostCreation', NULL, 'Points', 10, 1, 'Public', 5, '2023-01-15 10:05:00', NULL, 1);
INSERT INTO user_milestones (Id, UserId, MilestoneName, AchievedDate, PointsAwarded, Description, Category, Level, ExpirationDate, IsRecurring, TriggerSource, BadgeReferenceId, RewardType, RewardValue, NotificationSent, Visibility, CreatedByAdminId, UpdatedAt, Notes, SortOrder) VALUES (2, 102, 'HundredVotes', '2023-02-20 14:30:00', 50, 'Earned after receiving 100 upvotes', 'Reputation', 2, NULL, 0, 'VoteAccumulation', NULL, 'Badge', 0, 1, 'Public', 5, '2023-02-20 14:35:00', NULL, 2);
INSERT INTO user_milestones (Id, UserId, MilestoneName, AchievedDate, PointsAwarded, Description, Category, Level, ExpirationDate, IsRecurring, TriggerSource, BadgeReferenceId, RewardType, RewardValue, NotificationSent, Visibility, CreatedByAdminId, UpdatedAt, Notes, SortOrder) VALUES (3, 103, 'YearAnniversary', '2024-01-01 09:00:00', 20, 'One year since account creation', 'Loyalty', 1, '2025-01-01 09:00:00', 1, 'AccountAge', NULL, 'Points', 20, 1, 'Private', 7, '2024-01-01 09:05:00', 'Renew annually', 3);


-- Extended metadata for posts
CREATE TABLE post_metadata_ext
(
    Id                 INTEGER NOT NULL PRIMARY KEY,
    PostId             INTEGER NULL,
    WordCount          INTEGER NULL,
    MediaCount         INTEGER NULL,
    CodeBlockCount     INTEGER NULL,
    ExternalLinkCount  INTEGER NULL,
    ReadabilityScore   REAL NULL,
    SentimentScore     REAL NULL,
    Language           TEXT NULL,
    IsSpam             INTEGER NULL,
    IsDuplicate        INTEGER NULL,
    ReviewFlag         INTEGER NULL,
    LastIndexedAt      DATETIME NULL,
    IndexVersion       TEXT NULL,
    CacheKey           TEXT NULL,
    ThumbnailUrl       TEXT NULL,
    SummaryText        TEXT NULL,
    TagsNormalized     TEXT NULL,
    AuthorReputation   INTEGER NULL,
    EngagementScore    REAL NULL
);

INSERT INTO post_metadata_ext (Id, PostId, WordCount, MediaCount, CodeBlockCount, ExternalLinkCount, ReadabilityScore, SentimentScore, Language, IsSpam, IsDuplicate, ReviewFlag, LastIndexedAt, IndexVersion, CacheKey, ThumbnailUrl, SummaryText, TagsNormalized, AuthorReputation, EngagementScore) VALUES (1, 2001, 350, 2, 1, 3, 68.5, 0.12, 'en', 0, 0, 0, '2024-03-10 08:00:00', 'v3', 'post2001_thumb', 'Brief summary of the post', 'sql,performance', 1245, 87.3);
INSERT INTO post_metadata_ext (Id, PostId, WordCount, MediaCount, CodeBlockCount, ExternalLinkCount, ReadabilityScore, SentimentScore, Language, IsSpam, IsDuplicate, ReviewFlag, LastIndexedAt, IndexVersion, CacheKey, ThumbnailUrl, SummaryText, TagsNormalized, AuthorReputation, EngagementScore) VALUES (2, 2002, 120, 0, 0, 0, 72.0, -0.05, 'en', 0, 0, 0, '2024-03-11 09:15:00', 'v3', 'post2002_thumb', 'Short answer post', 'java,syntax', 980, 45.2);
INSERT INTO post_metadata_ext (Id, PostId, WordCount, MediaCount, CodeBlockCount, ExternalLinkCount, ReadabilityScore, SentimentScore, Language, IsSpam, IsDuplicate, ReviewFlag, LastIndexedAt, IndexVersion, CacheKey, ThumbnailUrl, SummaryText, TagsNormalized, AuthorReputation, EngagementScore) VALUES (3, 2003, 800, 5, 3, 7, 60.0, 0.30, 'en', 0, 1, 1, '2024-03-12 11:45:00', 'v3', 'post2003_thumb', 'Comprehensive guide', 'python,data-science', 2100, 120.5);


-- Content review sessions for moderation workflow
CREATE TABLE content_review_sessions
(
    Id               INTEGER NOT NULL PRIMARY KEY,
    ReviewerUserId   INTEGER NULL,
    ContentType      TEXT NULL,
    ContentId        INTEGER NULL,
    SessionStart     DATETIME NULL,
    SessionEnd       DATETIME NULL,
    OverallScore     REAL NULL,
    PassFail         INTEGER NULL,          -- 0 = fail, 1 = pass
    Comments         TEXT NULL,
    IssueCount       INTEGER NULL,
    ResolvedCount    INTEGER NULL,
    Escalated        INTEGER NULL,          -- 0 = no, 1 = yes
    ReviewMode       TEXT NULL,
    ToolVersion      TEXT NULL,
    DeviceId         TEXT NULL,
    IPAddress        TEXT NULL,
    GeoLocation      TEXT NULL,
    Platform         TEXT NULL,
    Browser          TEXT NULL,
    SessionNotes     TEXT NULL,
    AuditLogId       INTEGER NULL
);

INSERT INTO content_review_sessions (Id, ReviewerUserId, ContentType, ContentId, SessionStart, SessionEnd, OverallScore, PassFail, Comments, IssueCount, ResolvedCount, Escalated, ReviewMode, ToolVersion, DeviceId, IPAddress, GeoLocation, Platform, Browser, SessionNotes, AuditLogId) VALUES (1, 501, 'post', 2001, '2024-03-10 08:30:00', '2024-03-10 08:45:00', 92.5, 1, 'Looks good', 2, 2, 0, 'Standard', '1.4.2', 'deviceA', '192.168.1.10', 'US', 'Web', 'Chrome', 'No issues', 1001);
INSERT INTO content_review_sessions (Id, ReviewerUserId, ContentType, ContentId, SessionStart, SessionEnd, OverallScore, PassFail, Comments, IssueCount, ResolvedCount, Escalated, ReviewMode, ToolVersion, DeviceId, IPAddress, GeoLocation, Platform, Browser, SessionNotes, AuditLogId) VALUES (2, 502, 'comment', 3005, '2024-03-11 10:00:00', '2024-03-11 10:12:00', 78.0, 0, 'Spam detected', 1, 0, 0, 'Quick', '1.4.2', 'deviceB', '192.168.1.20', 'CA', 'Mobile', 'Safari', 'Flagged for removal', 1002);
INSERT INTO content_review_sessions (Id, ReviewerUserId, ContentType, ContentId, SessionStart, SessionEnd, OverallScore, PassFail, Comments, IssueCount, ResolvedCount, Escalated, ReviewMode, ToolVersion, DeviceId, IPAddress, GeoLocation, Platform, Browser, SessionNotes, AuditLogId) VALUES (3, 503, 'post', 2003, '2024-03-12 14:20:00', '2024-03-12 14:55:00', 65.0, 0, 'Needs more references', 3, 1, 1, 'InDepth', '1.4.2', 'deviceC', '192.168.1.30', 'GB', 'Web', 'Firefox', 'Escalated to senior moderator', 1003);


-- API consumer profiles for external integrations
CREATE TABLE api_consumer_profiles
(
    Id               INTEGER NOT NULL PRIMARY KEY,
    ApiKey           TEXT NULL,
    ConsumerName     TEXT NULL,
    ContactEmail     TEXT NULL,
    ContactPhone     TEXT NULL,
    IsActive         INTEGER NULL,
    QuotaLimit       INTEGER NULL,
    QuotaUsed        INTEGER NULL,
    RateLimitPerMinute INTEGER NULL,
    AllowedEndpoints TEXT NULL,
    CreatedAt        DATETIME NULL,
    UpdatedAt        DATETIME NULL,
    LastAccessedAt   DATETIME NULL,
    OwnerUserId      INTEGER NULL,
    ServiceLevel     TEXT NULL,
    BillingPlan      TEXT NULL,
    CostCenter       TEXT NULL,
    Tags             TEXT NULL,
    Description      TEXT NULL,
    SupportContact   TEXT NULL
);

INSERT INTO api_consumer_profiles (Id, ApiKey, ConsumerName, ContactEmail, ContactPhone, IsActive, QuotaLimit, QuotaUsed, RateLimitPerMinute, AllowedEndpoints, CreatedAt, UpdatedAt, LastAccessedAt, OwnerUserId, ServiceLevel, BillingPlan, CostCenter, Tags, Description, SupportContact) VALUES (1, 'key12345', 'DataAnalyticsTool', 'support@datatool.com', '5551234567', 1, 100000, 25000, 500, '/v1/queries,/v1/reports', '2023-05-01 12:00:00', '2024-02-20 09:30:00', '2024-03-14 16:45:00', 101, 'Premium', 'Annual', 'FIN001', 'analytics,reporting', 'Provides analytics via API', 'analytics-support');
INSERT INTO api_consumer_profiles (Id, ApiKey, ConsumerName, ContactEmail, ContactPhone, IsActive, QuotaLimit, QuotaUsed, RateLimitPerMinute, AllowedEndpoints, CreatedAt, UpdatedAt, LastAccessedAt, OwnerUserId, ServiceLevel, BillingPlan, CostCenter, Tags, Description, SupportContact) VALUES (2, 'key67890', 'MobileApp', 'mobile@app.com', '5559876543', 1, 50000, 12000, 300, '/v1/users,/v1/posts', '2022-11-15 08:15:00', '2024-03-10 11:20:00', '2024-03-13 14:00:00', 102, 'Standard', 'Monthly', 'MKT002', 'mobile,app', 'Mobile client integration', 'mobile-support');
INSERT INTO api_consumer_profiles (Id, ApiKey, ConsumerName, ContactEmail, ContactPhone, IsActive, QuotaLimit, QuotaUsed, RateLimitPerMinute, AllowedEndpoints, CreatedAt, UpdatedAt, LastAccessedAt, OwnerUserId, ServiceLevel, BillingPlan, CostCenter, Tags, Description, SupportContact) VALUES (3, 'keyABCDEF', 'PartnerCRM', 'crm@partner.com', '5552223344', 0, 200000, 0, 1000, '/v1/customers,/v1/leads', '2021-01-20 10:00:00', '2024-01-05 13:45:00', NULL, 103, 'Enterprise', 'Custom', 'CRM003', 'crm,partner', 'CRM integration (inactive)', 'crm-support');


-- Regional advertisement statistics
CREATE TABLE regional_ad_statistics
(
    Id                INTEGER NOT NULL PRIMARY KEY,
    RegionCode        TEXT NULL,
    AdCampaignId      INTEGER NULL,
    Impressions       INTEGER NULL,
    Clicks            INTEGER NULL,
    Conversions       INTEGER NULL,
    SpendAmount       REAL NULL,
    RevenueGenerated  REAL NULL,
    CPM               REAL NULL,
    CPC               REAL NULL,
    CPA               REAL NULL,
    StatDate          DATE NULL,
    DeviceType        TEXT NULL,
    Browser           TEXT NULL,
    OperatingSystem   TEXT NULL,
    DayOfWeek         TEXT NULL,
    HourOfDay         INTEGER NULL,
    AudienceSegment   TEXT NULL,
    CreativeId        INTEGER NULL,
    PlacementId       INTEGER NULL,
    AttributionModel  TEXT NULL
);

INSERT INTO regional_ad_statistics (Id, RegionCode, AdCampaignId, Impressions, Clicks, Conversions, SpendAmount, RevenueGenerated, CPM, CPC, CPA, StatDate, DeviceType, Browser, OperatingSystem, DayOfWeek, HourOfDay, AudienceSegment, CreativeId, PlacementId, AttributionModel) VALUES (1, 'US', 301, 150000, 3000, 250, 1200.50, 1800.75, 8.00, 0.40, 4.80, '2024-03-01', 'Desktop', 'Chrome', 'Windows', 'Monday', 14, 'TechEnthusiasts', 45, 12, 'LastClick');
INSERT INTO regional_ad_statistics (Id, RegionCode, AdCampaignId, Impressions, Clicks, Conversions, SpendAmount, RevenueGenerated, CPM, CPC, CPA, StatDate, DeviceType, Browser, OperatingSystem, DayOfWeek, HourOfDay, AudienceSegment, CreativeId, PlacementId, AttributionModel) VALUES (2, 'CA', 302, 95000, 1800, 150, 800.00, 1100.20, 8.42, 0.44, 5.33, '2024-03-01', 'Mobile', 'Safari', 'iOS', 'Tuesday', 20, 'Developers', 46, 13, 'Linear');
INSERT INTO regional_ad_statistics (Id, RegionCode, AdCampaignId, Impressions, Clicks, Conversions, SpendAmount, RevenueGenerated, CPM, CPC, CPA, StatDate, DeviceType, Browser, OperatingSystem, DayOfWeek, HourOfDay, AudienceSegment, CreativeId, PlacementId, AttributionModel) VALUES (3, 'GB', 303, 120000, 2500, 200, 1050.75, 1500.00, 8.76, 0.42, 5.25, '2024-03-01', 'Tablet', 'Firefox', 'Android', 'Wednesday', 9, 'Designers', 47, 14, 'PositionBased');


-- Knowledge graph edges representing relationships
CREATE TABLE knowledge_graph_edges
(
    EdgeId            INTEGER NOT NULL PRIMARY KEY,
    FromNodeId        INTEGER NULL,
    ToNodeId          INTEGER NULL,
    RelationType      TEXT NULL,
    Weight            REAL NULL,
    CreatedAt         DATETIME NULL,
    UpdatedAt         DATETIME NULL,
    ConfidenceScore   REAL NULL,
    Source            TEXT NULL,
    IsActive          INTEGER NULL,
    ExpirationDate    DATETIME NULL,
    Provenance        TEXT NULL,
    Context           TEXT NULL,
    Language          TEXT NULL,
    Annotation        TEXT NULL,
    CreatorUserId     INTEGER NULL,
    LastEditorUserId  INTEGER NULL,
    Version           INTEGER NULL,
    Notes             TEXT NULL,
    Tags              TEXT NULL
);

INSERT INTO knowledge_graph_edges (EdgeId, FromNodeId, ToNodeId, RelationType, Weight, CreatedAt, UpdatedAt, ConfidenceScore, Source, IsActive, ExpirationDate, Provenance, Context, Language, Annotation, CreatorUserId, LastEditorUserId, Version, Notes, Tags) VALUES (1, 1001, 2001, 'authored', 0.95, '2023-07-01 12:00:00', '2024-02-20 10:30:00', 0.96, 'system', 1, NULL, 'import_v1', 'publication', 'en', 'author relation', 101, 102, 3, NULL, 'author');
INSERT INTO knowledge_graph_edges (EdgeId, FromNodeId, ToNodeId, RelationType, Weight, CreatedAt, UpdatedAt, ConfidenceScore, Source, IsActive, ExpirationDate, Provenance, Context, Language, Annotation, CreatorUserId, LastEditorUserId, Version, Notes, Tags) VALUES (2, 2002, 3005, 'cites', 0.80, '2023-08-15 09:15:00', '2024-03-10 11:45:00', 0.85, 'crawler', 1, NULL, 'crawl_aug2023', 'research', 'en', 'citation edge', 103, 104, 2, 'verified by moderator', 'citation');
INSERT INTO knowledge_graph_edges (EdgeId, FromNodeId, ToNodeId, RelationType, Weight, CreatedAt, UpdatedAt, ConfidenceScore, Source, IsActive, ExpirationDate, Provenance, Context, Language, Annotation, CreatorUserId, LastEditorUserId, Version, Notes, Tags) VALUES (3, 4001, 5002, 'related_to', 0.60, '2024-01-05 14:20:00', '2024-03-12 16:00:00', 0.62, 'user', 1, NULL, 'user_submission', 'topic', 'en', 'related topic', 105, 105, 1, NULL, 'related');


-- Learning path progress tracking for users
CREATE TABLE learning_path_progress
(
    Id                 INTEGER NOT NULL PRIMARY KEY,
    UserId             INTEGER NULL,
    LearningPathId     INTEGER NULL,
    ModuleId           INTEGER NULL,
    StartedAt          DATETIME NULL,
    CompletedAt        DATETIME NULL,
    Score              REAL NULL,
    TimeSpentSeconds   INTEGER NULL,
    AttemptCount       INTEGER NULL,
    IsPassed           INTEGER NULL,
    CertificateId      INTEGER NULL,
    MentorUserId       INTEGER NULL,
    FeedbackScore      REAL NULL,
    FeedbackComments   TEXT NULL,
    LastAccessedAt     DATETIME NULL,
    ProgressPercentage REAL NULL,
    CurrentStatus      TEXT NULL,
    UpdatedByUserId    INTEGER NULL,
    CreatedAt          DATETIME NULL,
    UpdatedAt          DATETIME NULL,
    Tags               TEXT NULL
);

INSERT INTO learning_path_progress (Id, UserId, LearningPathId, ModuleId, StartedAt, CompletedAt, Score, TimeSpentSeconds, AttemptCount, IsPassed, CertificateId, MentorUserId, FeedbackScore, FeedbackComments, LastAccessedAt, ProgressPercentage, CurrentStatus, UpdatedByUserId, CreatedAt, UpdatedAt, Tags) VALUES (1, 101, 10, 100, '2024-02-01 08:00:00', '2024-02-01 09:30:00', 92.5, 5400, 1, 1, 5001, 201, 4.5, 'Great module', '2024-02-01 09:30:00', 100.0, 'Completed', 101, '2024-02-01 07:55:00', '2024-02-01 09:31:00', 'core');
INSERT INTO learning_path_progress (Id, UserId, LearningPathId, ModuleId, StartedAt, CompletedAt, Score, TimeSpentSeconds, AttemptCount, IsPassed, CertificateId, MentorUserId, FeedbackScore, FeedbackComments, LastAccessedAt, ProgressPercentage, CurrentStatus, UpdatedByUserId, CreatedAt, UpdatedAt, Tags) VALUES (2, 102, 12, 105, '2024-03-10 10:00:00', NULL, NULL, NULL, 2, 0, NULL, 202, NULL, NULL, '2024-03-10 12:15:00', 45.0, 'InProgress', 102, '2024-03-10 09:55:00', '2024-03-10 12:16:00', 'advanced');
INSERT INTO learning_path_progress (Id, UserId, LearningPathId, ModuleId, StartedAt, CompletedAt, Score, TimeSpentSeconds, AttemptCount, IsPassed, CertificateId, MentorUserId, FeedbackScore, FeedbackComments, LastAccessedAt, ProgressPercentage, CurrentStatus, UpdatedByUserId, CreatedAt, UpdatedAt, Tags) VALUES (3, 103, 15, 110, '2024-01-20 14:00:00', '2024-01-20 15:45:00', 78.0, 6300, 1, 0, NULL, 203, 3.8, 'Needs more practice', '2024-01-20 15:45:00', 80.0, 'Failed', 103, '2024-01-20 13:55:00', '2024-01-20 15:46:00', 'expert');


-- External partner metrics for third‑party integrations
CREATE TABLE external_partner_metrics
(
    MetricId           INTEGER NOT NULL PRIMARY KEY,
    PartnerId          INTEGER NULL,
    IntegrationName    TEXT NULL,
    DataVolumeBytes    INTEGER NULL,
    RequestCount       INTEGER NULL,
    ErrorCount         INTEGER NULL,
    AvgLatencyMs       REAL NULL,
    SuccessRate        REAL NULL,
    LastSyncAt         DATETIME NULL,
    SyncFrequencyHours INTEGER NULL,
    IsEnabled          INTEGER NULL,
    ContactPerson      TEXT NULL,
    ContactEmail       TEXT NULL,
    SLACompliance      REAL NULL,
    ContractStart      DATE NULL,
    ContractEnd        DATE NULL,
    BillingCycle       TEXT NULL,
    MonthlyCost        REAL NULL,
    Currency           TEXT NULL,
    Notes              TEXT NULL,
    CreatedAt          DATETIME NULL
);

INSERT INTO external_partner_metrics (MetricId, PartnerId, IntegrationName, DataVolumeBytes, RequestCount, ErrorCount, AvgLatencyMs, SuccessRate, LastSyncAt, SyncFrequencyHours, IsEnabled, ContactPerson, ContactEmail, SLACompliance, ContractStart, ContractEnd, BillingCycle, MonthlyCost, Currency, Notes, CreatedAt) VALUES (1, 9001, 'PaymentGateway', 125000000, 45000, 120, 250.5, 0.97, '2024-03-13 08:00:00', 24, 1, 'Alice', 'alice@paygate.com', 0.99, '2023-01-01', '2024-12-31', 'Monthly', 1500.00, 'USD', 'Stable integration', '2023-01-01 09:00:00');
INSERT INTO external_partner_metrics (MetricId, PartnerId, IntegrationName, DataVolumeBytes, RequestCount, ErrorCount, AvgLatencyMs, SuccessRate, LastSyncAt, SyncFrequencyHours, IsEnabled, ContactPerson, ContactEmail, SLACompliance, ContractStart, ContractEnd, BillingCycle, MonthlyCost, Currency, Notes, CreatedAt) VALUES (2, 9002, 'AnalyticsAPI', 98000000, 30000, 80, 180.2, 0.98, '2024-03-12 07:30:00', 12, 1, 'Bob', 'bob@analytics.com', 0.98, '2022-06-15', '2025-06-14', 'Quarterly', 2000.00, 'USD', 'High volume', '2022-06-15 10:15:00');
INSERT INTO external_partner_metrics (MetricId, PartnerId, IntegrationName, DataVolumeBytes, RequestCount, ErrorCount, AvgLatencyMs, SuccessRate, LastSyncAt, SyncFrequencyHours, IsEnabled, ContactPerson, ContactEmail, SLACompliance, ContractStart, ContractEnd, BillingCycle, MonthlyCost, Currency, Notes, CreatedAt) VALUES (3, 9003, 'CRMConnector', 56000000, 22000, 45, 210.0, 0.95, '2024-03-11 09:45:00', 48, 0, 'Carol', 'carol@crmco.com', 0.92, '2021-03-01', '2024-02-28', 'Annual', 1800.00, 'USD', 'Integration disabled pending renewal', '2021-03-01 08:30:00');


-- Device environment information for user devices
CREATE TABLE device_environment
(
    DeviceId          TEXT NOT NULL PRIMARY KEY,
    UserId            INTEGER NULL,
    OSName            TEXT NULL,
    OSVersion         TEXT NULL,
    DeviceModel       TEXT NULL,
    Manufacturer      TEXT NULL,
    ScreenResolution  TEXT NULL,
    IsEmulator        INTEGER NULL,
    Jailbreaked       INTEGER NULL,
    Rooted            INTEGER NULL,
    BatteryLevel      INTEGER NULL,
    NetworkType       TEXT NULL,
    Carrier            TEXT NULL,
    IPAddress          TEXT NULL,
    MACAddress         TEXT NULL,
    Locale            TEXT NULL,
    Timezone          TEXT NULL,
    InstalledAppsCount INTEGER NULL,
    LastBootTime      DATETIME NULL,
    LastUpdateTime    DATETIME NULL
);

INSERT INTO device_environment (DeviceId, UserId, OSName, OSVersion, DeviceModel, Manufacturer, ScreenResolution, IsEmulator, Jailbreaked, Rooted, BatteryLevel, NetworkType, Carrier, IPAddress, MACAddress, Locale, Timezone, InstalledAppsCount, LastBootTime, LastUpdateTime) VALUES ('devA123', 101, 'Android', '13', 'Pixel6', 'Google', '1080x2400', 0, 0, 0, 85, 'WiFi', 'Verizon', '192.168.10.5', '00-14-22-01-23-45', 'en-US', 'America/New_York', 45, '2024-03-13 07:00:00', '2024-03-14 08:15:00');
INSERT INTO device_environment (DeviceId, UserId, OSName, OSVersion, DeviceModel, Manufacturer, ScreenResolution, IsEmulator, Jailbreaked, Rooted, BatteryLevel, NetworkType, Carrier, IPAddress, MACAddress, Locale, Timezone, InstalledAppsCount, LastBootTime, LastUpdateTime) VALUES ('devB456', 102, 'iOS', '16.5', 'iPhone13', 'Apple', '1170x2532', 0, 1, 0, 60, 'Cellular', 'AT&T', '192.168.10.6', '00-16-17-01-23-46', 'en-US', 'America/Los_Angeles', 30, '2024-03-12 06:30:00', '2024-03-14 09:00:00');
INSERT INTO device_environment (DeviceId, UserId, OSName, OSVersion, DeviceModel, Manufacturer, ScreenResolution, IsEmulator, Jailbreaked, Rooted, BatteryLevel, NetworkType, Carrier, IPAddress, MACAddress, Locale, Timezone, InstalledAppsCount, LastBootTime, LastUpdateTime) VALUES ('devC789', 103, 'Windows', '10', 'SurfacePro7', 'Microsoft', '2736x1824', 0, 0, 1, 40, 'Ethernet', 'Comcast', '192.168.10.7', '00-18-19-01-23-47', 'en-GB', 'Europe/London', 60, '2024-03-10 05:45:00', '2024-03-14 07:30:00');


-- Forum user roles and permissions
CREATE TABLE forum_user_roles
(
    RoleId                 INTEGER NOT NULL PRIMARY KEY,
    UserId                 INTEGER NULL,
    ForumId                INTEGER NULL,
    RoleName               TEXT NULL,
    GrantedAt              DATETIME NULL,
    ExpiresAt              DATETIME NULL,
    IsActive               INTEGER NULL,
    GrantedByAdminId       INTEGER NULL,
    PermissionsMask        INTEGER NULL,
    CustomPermissions      TEXT NULL,
    Note                   TEXT NULL,
    CreatedAt              DATETIME NULL,
    UpdatedAt              DATETIME NULL,
    RevokedAt              DATETIME NULL,
    RevokedByAdminId       INTEGER NULL,
    RoleLevel              INTEGER NULL,
    TagScope               TEXT NULL,
    CategoryScope          TEXT NULL,
    NotificationEnabled    INTEGER NULL,
    AuditLogId             INTEGER NULL,
    LegacyRoleId           INTEGER NULL
);

INSERT INTO forum_user_roles (RoleId, UserId, ForumId, RoleName, GrantedAt, ExpiresAt, IsActive, GrantedByAdminId, PermissionsMask, CustomPermissions, Note, CreatedAt, UpdatedAt, RevokedAt, RevokedByAdminId, RoleLevel, TagScope, CategoryScope, NotificationEnabled, AuditLogId, LegacyRoleId) VALUES (1, 101, 10, 'Moderator', '2023-06-01 09:00:00', NULL, 1, 5, 255, NULL, 'Main forum moderator', '2023-06-01 08:55:00', '2024-02-20 10:00:00', NULL, NULL, 3, NULL, NULL, 1, 1001, 0);
INSERT INTO forum_user_roles (RoleId, UserId, ForumId, RoleName, GrantedAt, ExpiresAt, IsActive, GrantedByAdminId, PermissionsMask, CustomPermissions, Note, CreatedAt, UpdatedAt, RevokedAt, RevokedByAdminId, RoleLevel, TagScope, CategoryScope, NotificationEnabled, AuditLogId, LegacyRoleId) VALUES (2, 102, 12, 'Contributor', '2024-01-15 12:30:00', '2025-01-15 12:30:00', 1, 5, 63, NULL, 'Active contributor', '2024-01-15 12:20:00', '2024-03-10 14:00:00', NULL, NULL, 1, 'python,sql', 'Programming', 1, 1002, 0);
INSERT INTO forum_user_roles (RoleId, UserId, ForumId, RoleName, GrantedAt, ExpiresAt, IsActive, GrantedByAdminId, PermissionsMask, CustomPermissions, Note, CreatedAt, UpdatedAt, RevokedAt, RevokedByAdminId, RoleLevel, TagScope, CategoryScope, NotificationEnabled, AuditLogId, LegacyRoleId) VALUES (3, 103, 14, 'Viewer', '2022-09-10 08:00:00', NULL, 1, 5, 15, NULL, 'Read‑only access', '2022-09-10 07:55:00', '2024-02-25 09:30:00', NULL, NULL, 0, NULL, 'General', 0, 1003, 0);