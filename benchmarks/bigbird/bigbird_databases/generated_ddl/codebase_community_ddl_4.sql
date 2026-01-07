-- Review audits for various review queues
CREATE TABLE review_audits
(
    Id INTEGER PRIMARY KEY,
    ReviewId INTEGER,
    ReviewerUserId INTEGER,
    ReviewType TEXT,
    ItemId INTEGER,
    ItemType TEXT,
    ActionTaken TEXT,
    Reason TEXT,
    ScoreDelta INTEGER,
    Timestamp DATETIME,
    IPAddress TEXT,
    UserAgent TEXT,
    SessionId TEXT,
    DurationMs INTEGER,
    IsFlagged BOOLEAN,
    Comments TEXT,
    ReviewQueue TEXT,
    Outcome TEXT,
    Weight FLOAT,
    Source TEXT,
    MetaData TEXT
);

INSERT INTO review_audits VALUES (1, 1001, 42, "CloseVote", 2001, "Post", "Closed", "OffTopic", -2, "2023-06-01 12:00:00", "192.168.1.10", "Chrome", "sess123", 350, 0, "No further comment", "CloseQueue", "Success", 1.0, "System", "{}");
INSERT INTO review_audits VALUES (2, 1002, 57, "ReopenVote", 2002, "Post", "Reopened", "Improved", 1, "2023-06-02 15:30:00", "192.168.1.11", "Firefox", "sess124", 420, 0, "User edited", "ReopenQueue", "Success", 1.2, "Manual", "{}");
INSERT INTO review_audits VALUES (3, 1003, 63, "DeleteVote", 2003, "Comment", "Deleted", "Spam", -5, "2023-06-03 09:45:00", "192.168.1.12", "Edge", "sess125", 280, 1, "Spam detected", "DeleteQueue", "Failure", 0.8, "AutoMod", "{}");

-- Content syndication tracking between sites
CREATE TABLE content_syndication
(
    Id INTEGER PRIMARY KEY,
    SourceSiteId INTEGER,
    DestinationSiteId INTEGER,
    ContentId INTEGER,
    ContentType TEXT,
    SyndicationDate DATETIME,
    ExpirationDate DATETIME,
    Status TEXT,
    ErrorMessage TEXT,
    RetryCount INTEGER,
    CreatedByUserId INTEGER,
    UpdatedByUserId INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    IsActive BOOLEAN,
    LicenseType TEXT,
    Attribution TEXT,
    Tags TEXT,
    ViewCount INTEGER,
    ShareCount INTEGER,
    Rating FLOAT
);

INSERT INTO content_syndication VALUES (1, 1, 2, 3001, "Post", "2023-01-15 08:00:00", "2023-12-31 23:59:59", "Completed", "", 0, 42, 42, "2023-01-15 08:00:00", "2023-01-15 08:00:00", 1, "CC0", "OriginalAuthor", "sql,performance", 120, 30, 4.5);
INSERT INTO content_syndication VALUES (2, 1, 3, 3002, "Article", "2023-02-10 09:30:00", "2024-02-09 23:59:59", "Pending", "", 0, 57, 57, "2023-02-10 09:30:00", "2023-02-10 09:30:00", 1, "CCBY", "Contributor", "api,security", 0, 0, 0.0);
INSERT INTO content_syndication VALUES (3, 2, 1, 3003, "Video", "2023-03-05 14:20:00", "2023-09-05 23:59:59", "Failed", "NetworkTimeout", 3, 63, 63, "2023-03-05 14:20:00", "2023-03-06 10:00:00", 0, "Proprietary", "StudioX", "devops,cloud", 0, 0, 0.0);

-- API endpoint performance metrics
CREATE TABLE api_endpoint_metrics
(
    Id INTEGER PRIMARY KEY,
    EndpointPath TEXT,
    HttpMethod TEXT,
    RequestCount INTEGER,
    AvgResponseMs FLOAT,
    MaxResponseMs FLOAT,
    MinResponseMs FLOAT,
    ErrorCount INTEGER,
    SuccessRate FLOAT,
    LastAccessed DATETIME,
    FirstAccessed DATETIME,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    IsDeprecated BOOLEAN,
    OwnerTeam TEXT,
    Version TEXT,
    RateLimit INTEGER,
    BurstLimit INTEGER,
    AvgPayloadSize FLOAT,
    MaxPayloadSize FLOAT,
    Description TEXT
);

INSERT INTO api_endpoint_metrics VALUES (1, "/api/posts", "GET", 15000, 120.5, 450.0, 30.2, 120, 0.992, "2023-06-30 23:59:59", "2022-01-01 00:00:00", "2022-01-01 00:00:00", "2023-06-30 23:00:00", 0, "PostsTeam", "v2", 5000, 1000, 2.5, 10.0, "Retrieve posts list");
INSERT INTO api_endpoint_metrics VALUES (2, "/api/users", "POST", 3200, 210.7, 800.0, 45.0, 45, 0.985, "2023-06-30 23:58:00", "2022-02-15 09:00:00", "2022-02-15 09:00:00", "2023-06-30 22:45:00", 0, "UserTeam", "v1", 2000, 500, 3.2, 12.0, "Create new user");
INSERT INTO api_endpoint_metrics VALUES (3, "/api/search", "GET", 25000, 95.3, 300.0, 20.1, 200, 0.992, "2023-06-30 23:55:00", "2021-12-01 08:00:00", "2021-12-01 08:00:00", "2023-06-30 23:10:00", 0, "SearchTeam", "v3", 10000, 2000, 1.8, 8.0, "Search across content");

-- User point ledger for custom gamified system
CREATE TABLE user_point_ledger
(
    EntryId INTEGER PRIMARY KEY,
    UserId INTEGER,
    PointCategory TEXT,
    PointsEarned INTEGER,
    PointsSpent INTEGER,
    BalanceAfter INTEGER,
    TransactionDate DATETIME,
    ReferenceId INTEGER,
    ReferenceType TEXT,
    Description TEXT,
    Source TEXT,
    ExpirationDate DATETIME,
    IsLocked BOOLEAN,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    AdminNote TEXT,
    AuditId INTEGER,
    Currency TEXT,
    ExchangeRate FLOAT,
    BonusMultiplier FLOAT,
    CampaignId INTEGER
);

INSERT INTO user_point_ledger VALUES (1, 42, "Quiz", 50, 0, 150, "2023-05-01 10:00:00", 0, "None", "Quiz participation", "System", NULL, 0, "2023-05-01 10:00:00", "2023-05-01 10:00:00", "", 1001, "Points", 1.0, 1.0, 0);
INSERT INTO user_point_ledger VALUES (2, 57, "Referral", 200, 0, 550, "2023-05-03 14:20:00", 0, "None", "Referral bonus", "System", NULL, 0, "2023-05-03 14:20:00", "2023-05-03 14:20:00", "", 1002, "Points", 1.0, 1.0, 0);
INSERT INTO user_point_ledger VALUES (3, 63, "Purchase", 0, 120, 380, "2023-05-05 09:15:00", 5001, "Item", "Buy premium badge", "Store", "2024-05-05 00:00:00", 0, "2023-05-05 09:15:00", "2023-05-05 09:15:00", "Approved", 1003, "Points", 1.0, 1.0, 12);

-- Site resource usage snapshots
CREATE TABLE site_resource_usage
(
    RecordId INTEGER PRIMARY KEY,
    SiteId INTEGER,
    CpuUsagePercent FLOAT,
    MemoryUsageMb INTEGER,
    DiskIoOps INTEGER,
    NetworkInMb FLOAT,
    NetworkOutMb FLOAT,
    ProcessCount INTEGER,
    ThreadCount INTEGER,
    UptimeSeconds INTEGER,
    RecordedAt DATETIME,
    AvgLoad1 FLOAT,
    AvgLoad5 FLOAT,
    AvgLoad15 FLOAT,
    SwapUsageMb INTEGER,
    DiskFreeGb FLOAT,
    DiskTotalGb FLOAT,
    AlertsTriggered INTEGER,
    MaintenanceWindowId INTEGER,
    SnapshotId TEXT,
    Region TEXT
);

INSERT INTO site_resource_usage VALUES (1, 1, 35.2, 8192, 12000, 250.5, 190.3, 150, 800, 86400, "2023-06-30 00:00:00", 0.8, 0.7, 0.6, 1024, 150.0, 200.0, 0, 10, "snap001", "us-east");
INSERT INTO site_resource_usage VALUES (2, 2, 55.7, 16384, 25000, 480.2, 410.1, 200, 1200, 172800, "2023-06-30 00:05:00", 1.2, 1.0, 0.9, 2048, 300.0, 500.0, 2, 11, "snap002", "eu-west");
INSERT INTO site_resource_usage VALUES (3, 3, 20.1, 4096, 8000, 120.0, 95.5, 100, 600, 43200, "2023-06-30 00:10:00", 0.5, 0.4, 0.3, 512, 80.0, 120.0, 0, 12, "snap003", "ap-south");

-- Email template version history
CREATE TABLE email_template_history
(
    TemplateId INTEGER,
    VersionNumber INTEGER,
    TemplateName TEXT,
    Subject TEXT,
    Body TEXT,
    CreatedByUserId INTEGER,
    CreatedAt DATETIME,
    UpdatedByUserId INTEGER,
    UpdatedAt DATETIME,
    IsActive BOOLEAN,
    UsageCount INTEGER,
    LastUsedAt DATETIME,
    Locale TEXT,
    Channel TEXT,
    AudienceSegment TEXT,
    ABTestGroup TEXT,
    ApprovalStatus TEXT,
    ApprovedByUserId INTEGER,
    ApprovalDate DATETIME,
    RevisionNotes TEXT,
    RenderTimeMs INTEGER,
    PRIMARY KEY (TemplateId, VersionNumber)
);

INSERT INTO email_template_history VALUES (1, 1, "WelcomeEmail", "Welcome to the site", "Hello welcome you", 42, "2023-01-01 08:00:00", 42, "2023-01-01 08:00:00", 1, 5000, "2023-06-01 12:00:00", "en", "Email", "NewUsers", "A", "Approved", 42, "2023-01-01 08:00:00", "Initial version", 120);
INSERT INTO email_template_history VALUES (1, 2, "WelcomeEmail", "Welcome!", "Hi there welcome", 57, "2023-03-01 09:30:00", 57, "2023-03-01 09:30:00", 1, 8000, "2023-06-15 09:00:00", "en", "Email", "NewUsers", "B", "Approved", 57, "2023-03-01 09:30:00", "Subject line shortened", 110);
INSERT INTO email_template_history VALUES (2, 1, "DigestWeekly", "Your weekly digest", "Summary of activity", 63, "2023-02-15 07:45:00", 63, "2023-02-15 07:45:00", 1, 3000, "2023-06-20 10:00:00", "en", "Email", "ActiveUsers", "A", "Pending", NULL, NULL, "First draft", 150);

-- Search facet definitions
CREATE TABLE search_facet_definitions
(
    FacetId INTEGER PRIMARY KEY,
    FacetName TEXT,
    FieldName TEXT,
    DataType TEXT,
    DisplayOrder INTEGER,
    IsMultiSelect BOOLEAN,
    IsVisible BOOLEAN,
    IsEnabled BOOLEAN,
    CreatedAt DATETIME,
    CreatedByUserId INTEGER,
    UpdatedAt DATETIME,
    UpdatedByUserId INTEGER,
    Description TEXT,
    IconName TEXT,
    ColorHex TEXT,
    DefaultValue TEXT,
    MaxSelections INTEGER,
    MinSelections INTEGER,
    DateRangeStart DATE,
    DateRangeEnd DATE,
    AdditionalInfo TEXT
);

INSERT INTO search_facet_definitions VALUES (1, "TagFacet", "Tags", "String", 1, 1, 1, 1, "2023-01-01 00:00:00", 42, "2023-01-01 00:00:00", 42, "Filter by tags", "tag_icon", "#FF5733", NULL, 5, 0, NULL, NULL, "Used in main search");
INSERT INTO search_facet_definitions VALUES (2, "DateFacet", "CreationDate", "Date", 2, 0, 1, 1, "2023-01-01 00:00:00", 42, "2023-01-01 00:00:00", 42, "Filter by creation date", "calendar_icon", "#33C1FF", NULL, 1, 1, "2020-01-01", "2023-12-31", "Supports range selection");
INSERT INTO search_facet_definitions VALUES (3, "ScoreFacet", "Score", "Integer", 3, 0, 1, 1, "2023-01-01 00:00:00", 42, "2023-01-01 00:00:00", 42, "Filter by score", "score_icon", "#8D33FF", NULL, 1, 0, NULL, NULL, "Allows greater/less than");

-- Advertisement campaign performance aggregates
CREATE TABLE ad_campaign_performance
(
    CampaignId INTEGER PRIMARY KEY,
    CampaignName TEXT,
    StartDate DATE,
    EndDate DATE,
    Impressions INTEGER,
    Clicks INTEGER,
    Conversions INTEGER,
    CostUsd FLOAT,
    RevenueUsd FLOAT,
    CPC FLOAT,
    CPM FLOAT,
    CPA FLOAT,
    ROI FLOAT,
    TargetAudience TEXT,
    GeoTarget TEXT,
    DeviceTarget TEXT,
    Status TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    BudgetUsd FLOAT,
    SpendUsd FLOAT
);

INSERT INTO ad_campaign_performance VALUES (1, "SpringSale", "2023-03-01", "2023-03-31", 120000, 4500, 350, 3000.0, 4500.0, 0.67, 25.0, 8.57, 1.5, "Shoppers", "US", "Mobile", "Active", "2023-02-25 10:00:00", "2023-03-31 23:59:00", 5000.0, 3000.0);
INSERT INTO ad_campaign_performance VALUES (2, "WinterPromo", "2023-12-01", "2023-12-31", 200000, 8000, 600, 5000.0, 8000.0, 0.62, 25.0, 8.33, 1.6, "Travelers", "EU", "Desktop", "Planned", "2023-11-20 09:30:00", "2023-12-01 00:00:00", 10000.0, 0.0);
INSERT INTO ad_campaign_performance VALUES (3, "BetaLaunch", "2023-06-15", "2023-07-15", 80000, 2500, 200, 1500.0, 2500.0, 0.60, 18.75, 7.50, 1.67, "Developers", "Global", "All", "Active", "2023-06-01 08:00:00", "2023-07-15 23:59:00", 2000.0, 1500.0);

-- Moderator shift schedule
CREATE TABLE moderator_shift_schedule
(
    ShiftId INTEGER PRIMARY KEY,
    ModeratorUserId INTEGER,
    ShiftDate DATE,
    StartTime TIME,
    EndTime TIME,
    TimeZone TEXT,
    ShiftType TEXT,
    AssignedQueue TEXT,
    Notes TEXT,
    CreatedAt DATETIME,
    CreatedByUserId INTEGER,
    UpdatedAt DATETIME,
    UpdatedByUserId INTEGER,
    IsOvertime BOOLEAN,
    BreakDurationMinutes INTEGER,
    TotalHours FLOAT,
    Location TEXT,
    ContactNumber TEXT,
    Email TEXT,
    ShiftStatus TEXT,
    AdditionalInfo TEXT
);

INSERT INTO moderator_shift_schedule VALUES (1, 42, "2023-07-01", "08:00:00", "16:00:00", "UTC", "Day", "CloseQueue", "Regular shift", "2023-06-20 09:00:00", 42, "2023-06-20 09:00:00", 42, 0, 30, 8.0, "Remote", "5551234", "mod42@example.com", "Scheduled", "");
INSERT INTO moderator_shift_schedule VALUES (2, 57, "2023-07-01", "16:00:00", "00:00:00", "UTC", "Evening", "DeleteQueue", "Evening shift", "2023-06-20 10:00:00", 57, "2023-06-20 10:00:00", 57, 0, 30, 8.0, "Remote", "5555678", "mod57@example.com", "Scheduled", "");
INSERT INTO moderator_shift_schedule VALUES (3, 63, "2023-07-02", "00:00:00", "08:00:00", "UTC", "Night", "ReviewQueue", "Night shift", "2023-06-21 08:00:00", 63, "2023-06-21 08:00:00", 63, 1, 45, 8.0, "Remote", "5559012", "mod63@example.com", "Scheduled", "Overtime approved");

-- Content language detection results
CREATE TABLE content_language_detection
(
    DetectionId INTEGER PRIMARY KEY,
    ContentId INTEGER,
    ContentType TEXT,
    LanguageCode TEXT,
    ConfidenceScore FLOAT,
    DetectedAt DATETIME,
    ProcessedByUserId INTEGER,
    IsVerified BOOLEAN,
    VerificationUserId INTEGER,
    VerificationDate DATETIME,
    SourceAlgorithm TEXT,
    ModelVersion TEXT,
    WordCount INTEGER,
    CharacterCount INTEGER,
    AvgWordLength FLOAT,
    TextSnippet TEXT,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    AdditionalInfo TEXT
);

INSERT INTO content_language_detection VALUES (1, 3001, "Post", "en", 0.98, "2023-05-10 12:00:00", 42, 1, 42, "2023-05-10 13:00:00", "FastText", "v1.2", 350, 2100, 6.0, "Sample snippet of text", "", "2023-05-10 12:00:00", "2023-05-10 13:00:00", "");
INSERT INTO content_language_detection VALUES (2, 3002, "Article", "es", 0.95, "2023-05-11 09:30:00", 57, 0, NULL, NULL, "LangDetect", "v3.0", 1200, 7200, 6.0, "Otro fragmento de texto", "Needs review", "2023-05-11 09:30:00", "2023-05-11 09:30:00", "");
INSERT INTO content_language_detection VALUES (3, 3003, "Video", "fr", 0.89, "2023-05-12 15:45:00", 63, 1, 63, "2023-05-12 16:00:00", "CustomModel", "v2.1", 0, 0, 0.0, "", "Auto-detected", "2023-05-12 15:45:00", "2023-05-12 16:00:00", "");