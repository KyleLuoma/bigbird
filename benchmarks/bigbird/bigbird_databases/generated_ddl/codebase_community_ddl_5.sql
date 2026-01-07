-- Forum categories information
CREATE TABLE forum_categories
(
    Id INTEGER NOT NULL PRIMARY KEY,
    Name TEXT,
    Description TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    ParentCategoryId INTEGER,
    IsPrivate INTEGER,
    DisplayOrder INTEGER,
    IconPath TEXT,
    ColorCode TEXT,
    ModeratorUserId INTEGER,
    PostCount INTEGER,
    ThreadCount INTEGER,
    LastThreadId INTEGER,
    LastThreadTitle TEXT,
    LastThreadCreatedAt DATETIME,
    LastThreadUserId INTEGER,
    SeoKeywords TEXT,
    SeoDescription TEXT,
    AnalyticsSegment TEXT
);

INSERT INTO forum_categories (Id, Name, Description, CreatedAt, UpdatedAt, ParentCategoryId, IsPrivate, DisplayOrder, IconPath, ColorCode, ModeratorUserId, PostCount, ThreadCount, LastThreadId, LastThreadTitle, LastThreadCreatedAt, LastThreadUserId, SeoKeywords, SeoDescription, AnalyticsSegment) VALUES (1, 'General', 'General discussion area', '2023-01-01 00:00:00', '2023-01-01 00:00:00', NULL, 0, 1, '/icons/general.png', '#FFFFFF', NULL, 0, 0, NULL, NULL, NULL, 'general discussion', 'general category for all topics', 'default');
INSERT INTO forum_categories (Id, Name, Description, CreatedAt, UpdatedAt, ParentCategoryId, IsPrivate, DisplayOrder, IconPath, ColorCode, ModeratorUserId, PostCount, ThreadCount, LastThreadId, LastThreadTitle, LastThreadCreatedAt, LastThreadUserId, SeoKeywords, SeoDescription, AnalyticsSegment) VALUES (2, 'Announcements', 'Official site announcements', '2023-01-02 00:00:00', '2023-01-02 00:00:00', NULL, 0, 2, '/icons/announcements.png', '#FFCC00', NULL, 0, 0, NULL, NULL, NULL, 'site updates', 'official announcements and news', 'high');
INSERT INTO forum_categories (Id, Name, Description, CreatedAt, UpdatedAt, ParentCategoryId, IsPrivate, DisplayOrder, IconPath, ColorCode, ModeratorUserId, PostCount, ThreadCount, LastThreadId, LastThreadTitle, LastThreadCreatedAt, LastThreadUserId, SeoKeywords, SeoDescription, AnalyticsSegment) VALUES (3, 'Feedback', 'User feedback and suggestions', '2023-01-03 00:00:00', '2023-01-03 00:00:00', NULL, 0, 3, '/icons/feedback.png', '#00CCFF', NULL, 0, 0, NULL, NULL, NULL, 'user feedback', 'suggestions and bug reports', 'medium');

-- Files attached to posts
CREATE TABLE attachment_files
(
    Id INTEGER NOT NULL PRIMARY KEY,
    PostId INTEGER,
    UserId INTEGER,
    FileName TEXT,
    FileExtension TEXT,
    FileSizeBytes INTEGER,
    MimeType TEXT,
    StoragePath TEXT,
    UploadedAt DATETIME,
    ChecksumMd5 TEXT,
    IsImage INTEGER,
    WidthPx INTEGER,
    HeightPx INTEGER,
    DurationSeconds INTEGER,
    ThumbnailPath TEXT,
    IsDeleted INTEGER,
    DeletionReason TEXT,
    AccessLevel TEXT,
    DownloadCount INTEGER,
    VirusScanStatus TEXT
);

INSERT INTO attachment_files (Id, PostId, UserId, FileName, FileExtension, FileSizeBytes, MimeType, StoragePath, UploadedAt, ChecksumMd5, IsImage, WidthPx, HeightPx, DurationSeconds, ThumbnailPath, IsDeleted, DeletionReason, AccessLevel, DownloadCount, VirusScanStatus) VALUES (1, 10, 5, 'screenshot', 'png', 204800, 'image/png', '/files/10/1.png', '2023-02-01 12:00:00', 'd41d8cd98f00b204e9800998ecf8427e', 1, 800, 600, NULL, '/thumbs/10/1.png', 0, NULL, 'public', 5, 'clean');
INSERT INTO attachment_files (Id, PostId, UserId, FileName, FileExtension, FileSizeBytes, MimeType, StoragePath, UploadedAt, ChecksumMd5, IsImage, WidthPx, HeightPx, DurationSeconds, ThumbnailPath, IsDeleted, DeletionReason, AccessLevel, DownloadCount, VirusScanStatus) VALUES (2, 12, 8, 'demo', 'mp4', 10485760, 'video/mp4', '/files/12/2.mp4', '2023-02-02 13:30:00', '0cc175b9c0f1b6a831c399e269772661', 0, NULL, NULL, 120, '/thumbs/12/2.png', 0, NULL, 'restricted', 2, 'clean');
INSERT INTO attachment_files (Id, PostId, UserId, FileName, FileExtension, FileSizeBytes, MimeType, StoragePath, UploadedAt, ChecksumMd5, IsImage, WidthPx, HeightPx, DurationSeconds, ThumbnailPath, IsDeleted, DeletionReason, AccessLevel, DownloadCount, VirusScanStatus) VALUES (3, 15, 3, 'document', 'pdf', 512000, 'application/pdf', '/files/15/3.pdf', '2023-02-03 09:15:00', '92eb5ffee6ae2fec3ad71c777531578f', 0, NULL, NULL, NULL, NULL, 0, NULL, 'public', 10, 'clean');

-- Geolocation data for IP addresses
CREATE TABLE geo_locations
(
    Id INTEGER NOT NULL PRIMARY KEY,
    IpAddress TEXT,
    CountryCode TEXT,
    Region TEXT,
    City TEXT,
    Latitude REAL,
    Longitude REAL,
    Isp TEXT,
    Organization TEXT,
    Timezone TEXT,
    Continent TEXT,
    ZipCode TEXT,
    AsNumber INTEGER,
    AsName TEXT,
    ProxyType TEXT,
    ProxyAnonymity TEXT,
    LatencyMs INTEGER,
    ConnectionType TEXT,
    LastSeenAt DATETIME,
    ConfidenceScore REAL
);

INSERT INTO geo_locations (Id, IpAddress, CountryCode, Region, City, Latitude, Longitude, Isp, Organization, Timezone, Continent, ZipCode, AsNumber, AsName, ProxyType, ProxyAnonymity, LatencyMs, ConnectionType, LastSeenAt, ConfidenceScore) VALUES (1, '192.168.1.1', 'US', 'CA', 'SanFrancisco', 37.7749, -122.4194, 'Comcast', 'Comcast Cable', 'PST', 'NorthAmerica', '94105', 7922, 'Comcast Cable', 'none', 'transparent', 20, 'fiber', '2023-03-01 08:00:00', 0.99);
INSERT INTO geo_locations (Id, IpAddress, CountryCode, Region, City, Latitude, Longitude, Isp, Organization, Timezone, Continent, ZipCode, AsNumber, AsName, ProxyType, ProxyAnonymity, LatencyMs, ConnectionType, LastSeenAt, ConfidenceScore) VALUES (2, '203.0.113.5', 'DE', 'BE', 'Berlin', 52.5200, 13.4050, 'Deutsche Telekom', 'Telekom', 'CET', 'Europe', '10115', 3320, 'Deutsche Telekom AG', 'http', 'anonymous', 45, 'dsl', '2023-03-02 09:30:00', 0.95);
INSERT INTO geo_locations (Id, IpAddress, CountryCode, Region, City, Latitude, Longitude, Isp, Organization, Timezone, Continent, ZipCode, AsNumber, AsName, ProxyType, ProxyAnonymity, LatencyMs, ConnectionType, LastSeenAt, ConfidenceScore) VALUES (3, '198.51.100.20', 'JP', '13', 'Tokyo', 35.6895, 139.6917, 'NTT', 'NTT Communications', 'JST', 'Asia', '100-0001', 2914, 'NTT Communications', 'none', 'transparent', 30, 'fiber', '2023-03-03 10:45:00', 0.98);

-- User generated content ratings
CREATE TABLE content_ratings
(
    Id INTEGER NOT NULL PRIMARY KEY,
    PostId INTEGER,
    UserId INTEGER,
    RatingValue INTEGER,
    RatingType TEXT,
    Comment TEXT,
    RatedAt DATETIME,
    DeviceType TEXT,
    AppVersion TEXT,
    OsVersion TEXT,
    Latitude REAL,
    Longitude REAL,
    Source TEXT,
    IsVerified INTEGER,
    Weight REAL,
    Category TEXT,
    ReviewStatus TEXT,
    ModeratorId INTEGER,
    ModerationNote TEXT,
    CreatedAt DATETIME
);

INSERT INTO content_ratings (Id, PostId, UserId, RatingValue, RatingType, Comment, RatedAt, DeviceType, AppVersion, OsVersion, Latitude, Longitude, Source, IsVerified, Weight, Category, ReviewStatus, ModeratorId, ModerationNote, CreatedAt) VALUES (1, 100, 7, 5, 'upvote', 'Great answer', '2023-04-01 11:00:00', 'mobile', '1.2.0', 'iOS14', 37.7749, -122.4194, 'web', 1, 1.0, 'quality', 'approved', NULL, NULL, '2023-04-01 11:00:01');
INSERT INTO content_ratings (Id, PostId, UserId, RatingValue, RatingType, Comment, RatedAt, DeviceType, AppVersion, OsVersion, Latitude, Longitude, Source, IsVerified, Weight, Category, ReviewStatus, ModeratorId, ModerationNote, CreatedAt) VALUES (2, 101, 9, 1, 'downvote', 'Not helpful', '2023-04-02 12:15:00', 'desktop', '3.5.1', 'Windows10', 52.5200, 13.4050, 'mobile', 0, 0.5, 'relevance', 'pending', NULL, NULL, '2023-04-02 12:15:01');
INSERT INTO content_ratings (Id, PostId, UserId, RatingValue, RatingType, Comment, RatedAt, DeviceType, AppVersion, OsVersion, Latitude, Longitude, Source, IsVerified, Weight, Category, ReviewStatus, ModeratorId, ModerationNote, CreatedAt) VALUES (3, 102, 12, 4, 'upvote', 'Useful info', '2023-04-03 14:20:00', 'tablet', '2.0.5', 'Android11', 35.6895, 139.6917, 'api', 1, 0.9, 'accuracy', 'approved', NULL, NULL, '2023-04-03 14:20:01');

-- Newsletter subscription records
CREATE TABLE newsletter_subscriptions
(
    Id INTEGER NOT NULL PRIMARY KEY,
    Email TEXT,
    SubscriptionDate DATETIME,
    IsActive INTEGER,
    Frequency TEXT,
    Format TEXT,
    Topics TEXT,
    Source TEXT,
    CampaignId INTEGER,
    ConfirmedAt DATETIME,
    ConfirmationCode TEXT,
    UnsubscribeToken TEXT,
    LastSentAt DATETIME,
    BounceCount INTEGER,
    ComplaintCount INTEGER,
    Language TEXT,
    Timezone TEXT,
    ReferralCode TEXT,
    Segment TEXT,
    OptInSource TEXT
);

INSERT INTO newsletter_subscriptions (Id, Email, SubscriptionDate, IsActive, Frequency, Format, Topics, Source, CampaignId, ConfirmedAt, ConfirmationCode, UnsubscribeToken, LastSentAt, BounceCount, ComplaintCount, Language, Timezone, ReferralCode, Segment, OptInSource) VALUES (1, 'user1@example.com', '2023-05-01 08:00:00', 1, 'weekly', 'html', 'tech,news', 'site', 101, '2023-05-01 08:05:00', 'confcode1', 'unsub1', '2023-06-01 08:00:00', 0, 0, 'en', 'UTC', 'ref123', 'engaged', 'signup');
INSERT INTO newsletter_subscriptions (Id, Email, SubscriptionDate, IsActive, Frequency, Format, Topics, Source, CampaignId, ConfirmedAt, ConfirmationCode, UnsubscribeToken, LastSentAt, BounceCount, ComplaintCount, Language, Timezone, ReferralCode, Segment, OptInSource) VALUES (2, 'user2@example.com', '2023-05-02 09:30:00', 1, 'daily', 'text', 'updates', 'ads', 102, '2023-05-02 09:35:00', 'confcode2', 'unsub2', '2023-06-02 09:30:00', 1, 0, 'es', 'CET', 'ref456', 'new', 'promo');
INSERT INTO newsletter_subscriptions (Id, Email, SubscriptionDate, IsActive, Frequency, Format, Topics, Source, CampaignId, ConfirmedAt, ConfirmationCode, UnsubscribeToken, LastSentAt, BounceCount, ComplaintCount, Language, Timezone, ReferralCode, Segment, OptInSource) VALUES (3, 'user3@example.com', '2023-05-03 10:15:00', 0, 'monthly', 'html', 'community', 'referral', 103, '2023-05-03 10:20:00', 'confcode3', 'unsub3', NULL, 0, 1, 'fr', 'GMT', 'ref789', 'inactive', 'referral');

-- External link crawl metadata
CREATE TABLE external_links
(
    Id INTEGER NOT NULL PRIMARY KEY,
    Url TEXT,
    Domain TEXT,
    Subdomain TEXT,
    Path TEXT,
    QueryString TEXT,
    Anchor TEXT,
    HttpStatus INTEGER,
    ContentType TEXT,
    FetchedAt DATETIME,
    LastModified DATETIME,
    ContentLength INTEGER,
    Sha256Hash TEXT,
    LinkType TEXT,
    IsNofollow INTEGER,
    AnchorText TEXT,
    Relation TEXT,
    SiteId INTEGER,
    CategoryId INTEGER,
    PriorityScore REAL,
    CrawlFrequency INTEGER
);

INSERT INTO external_links (Id, Url, Domain, Subdomain, Path, QueryString, Anchor, HttpStatus, ContentType, FetchedAt, LastModified, ContentLength, Sha256Hash, LinkType, IsNofollow, AnchorText, Relation, SiteId, CategoryId, PriorityScore, CrawlFrequency) VALUES (1, 'https://example.com/articles/1', 'example.com', NULL, '/articles/1', NULL, NULL, 200, 'text/html', '2023-07-01 12:00:00', '2023-06-30 12:00:00', 10240, 'a3f5c6d7e8b9...', 'outbound', 0, 'Read more', 'related', 1, 10, 0.8, 1440);
INSERT INTO external_links (Id, Url, Domain, Subdomain, Path, QueryString, Anchor, HttpStatus, ContentType, FetchedAt, LastModified, ContentLength, Sha256Hash, LinkType, IsNofollow, AnchorText, Relation, SiteId, CategoryId, PriorityScore, CrawlFrequency) VALUES (2, 'https://blog.example.org/post?id=5', 'example.org', 'blog', '/post', 'id=5', NULL, 200, 'text/html', '2023-07-02 13:30:00', '2023-07-01 13:30:00', 20480, 'b4e6f7a8c9d0...', 'outbound', 1, 'Details', 'author', 2, 12, 0.6, 720);
INSERT INTO external_links (Id, Url, Domain, Subdomain, Path, QueryString, Anchor, HttpStatus, ContentType, FetchedAt, LastModified, ContentLength, Sha256Hash, LinkType, IsNofollow, AnchorText, Relation, SiteId, CategoryId, PriorityScore, CrawlFrequency) VALUES (3, 'https://media.example.net/video.mp4', 'example.net', 'media', '/video.mp4', NULL, NULL, 200, 'video/mp4', '2023-07-03 15:45:00', '2023-07-02 15:45:00', 5120000, 'c5d7e8f9a0b1...', 'media', 0, NULL, NULL, 3, 15, 0.9, 2880);

-- API token management
CREATE TABLE api_tokens
(
    Id INTEGER NOT NULL PRIMARY KEY,
    UserId INTEGER,
    TokenValue TEXT,
    CreatedAt DATETIME,
    ExpiresAt DATETIME,
    Scope TEXT,
    IsRevoked INTEGER,
    LastUsedAt DATETIME,
    UsageCount INTEGER,
    IpWhitelist TEXT,
    DeviceId TEXT,
    Description TEXT,
    RotationIntervalDays INTEGER,
    NextRotationAt DATETIME,
    IssuedBy TEXT,
    RevokedBy TEXT,
    RevocationReason TEXT,
    Version TEXT,
    Algorithm TEXT,
    KeyType TEXT
);

INSERT INTO api_tokens (Id, UserId, TokenValue, CreatedAt, ExpiresAt, Scope, IsRevoked, LastUsedAt, UsageCount, IpWhitelist, DeviceId, Description, RotationIntervalDays, NextRotationAt, IssuedBy, RevokedBy, RevocationReason, Version, Algorithm, KeyType) VALUES (1, 4, 'tokenvalue1', '2023-08-01 00:00:00', '2024-08-01 00:00:00', 'read', 0, '2023-09-01 12:00:00', 150, '192.168.1.0/24', 'device123', 'read access token', 30, '2023-09-01 00:00:00', 'system', NULL, NULL, 'v1', 'HS256', 'bearer');
INSERT INTO api_tokens (Id, UserId, TokenValue, CreatedAt, ExpiresAt, Scope, IsRevoked, LastUsedAt, UsageCount, IpWhitelist, DeviceId, Description, RotationIntervalDays, NextRotationAt, IssuedBy, RevokedBy, RevocationReason, Version, Algorithm, KeyType) VALUES (2, 6, 'tokenvalue2', '2023-08-15 00:00:00', '2023-12-15 00:00:00', 'write', 0, '2023-09-10 15:30:00', 45, NULL, 'device456', 'write access token', 15, '2023-09-01 00:00:00', 'admin', NULL, NULL, 'v2', 'RS256', 'jwt');
INSERT INTO api_tokens (Id, UserId, TokenValue, CreatedAt, ExpiresAt, Scope, IsRevoked, LastUsedAt, UsageCount, IpWhitelist, DeviceId, Description, RotationIntervalDays, NextRotationAt, IssuedBy, RevokedBy, RevocationReason, Version, Algorithm, KeyType) VALUES (3, 9, 'tokenvalue3', '2023-09-01 00:00:00', NULL, 'admin', 1, '2023-09-20 08:45:00', 200, '10.0.0.0/8', 'device789', 'revoked admin token', 0, NULL, 'system', 'admin', 'compromised', 'v1', 'HS512', 'bearer');

-- Search facet usage analytics
CREATE TABLE search_facet_usage
(
    Id INTEGER NOT NULL PRIMARY KEY,
    FacetName TEXT,
    FacetValue TEXT,
    UserId INTEGER,
    SessionId TEXT,
    QueryId INTEGER,
    Timestamp DATETIME,
    ResultCount INTEGER,
    ClickThroughRate REAL,
    AvgPosition REAL,
    IsDynamic INTEGER,
    Source TEXT,
    DeviceType TEXT,
    Os TEXT,
    Browser TEXT,
    Locale TEXT,
    Country TEXT,
    Region TEXT,
    City TEXT,
    DwellTimeMs INTEGER,
    ConversionFlag INTEGER
);

INSERT INTO search_facet_usage (Id, FacetName, FacetValue, UserId, SessionId, QueryId, Timestamp, ResultCount, ClickThroughRate, AvgPosition, IsDynamic, Source, DeviceType, Os, Browser, Locale, Country, Region, City, DwellTimeMs, ConversionFlag) VALUES (1, 'tag', 'python', 3, 'sess1', 1001, '2023-10-01 10:00:00', 120, 0.15, 3.2, 0, 'web', 'desktop', 'Windows10', 'Chrome', 'en-US', 'US', 'CA', 'SanFrancisco', 5000, 0);
INSERT INTO search_facet_usage (Id, FacetName, FacetValue, UserId, SessionId, QueryId, Timestamp, ResultCount, ClickThroughRate, AvgPosition, IsDynamic, Source, DeviceType, Os, Browser, Locale, Country, Region, City, DwellTimeMs, ConversionFlag) VALUES (2, 'author', 'johnDoe', 5, 'sess2', 1002, '2023-10-02 11:30:00', 80, 0.20, 2.8, 1, 'mobile', 'tablet', 'iOS14', 'Safari', 'en-GB', 'GB', 'London', 'London', 3000, 1);
INSERT INTO search_facet_usage (Id, FacetName, FacetValue, UserId, SessionId, QueryId, Timestamp, ResultCount, ClickThroughRate, AvgPosition, IsDynamic, Source, DeviceType, Os, Browser, Locale, Country, Region, City, DwellTimeMs, ConversionFlag) VALUES (3, 'date', '2023', 7, 'sess3', 1003, '2023-10-03 13:45:00', 200, 0.10, 4.5, 0, 'api', 'desktop', 'Linux', 'Firefox', 'de-DE', 'DE', 'Berlin', 'Berlin', 7000, 0);

-- Advertising campaign budget tracking
CREATE TABLE ad_campaign_budget
(
    Id INTEGER NOT NULL PRIMARY KEY,
    CampaignId INTEGER,
    PeriodStart DATETIME,
    PeriodEnd DATETIME,
    AllocatedBudget REAL,
    SpentAmount REAL,
    Currency TEXT,
    CpcLimit REAL,
    CpmLimit REAL,
    CtrTarget REAL,
    ConversionGoal TEXT,
    Status TEXT,
    CreatedBy TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATETIME,
    Notes TEXT,
    BudgetUtilizationPct REAL,
    RemainingBudget REAL,
    ForecastedSpend REAL,
    LastUpdatedAt DATETIME,
    Version INTEGER
);

INSERT INTO ad_campaign_budget (Id, CampaignId, PeriodStart, PeriodEnd, AllocatedBudget, SpentAmount, Currency, CpcLimit, CpmLimit, CtrTarget, ConversionGoal, Status, CreatedBy, ApprovedBy, ApprovalDate, Notes, BudgetUtilizationPct, RemainingBudget, ForecastedSpend, LastUpdatedAt, Version) VALUES (1, 201, '2023-11-01 00:00:00', '2023-11-30 23:59:59', 10000, 2500, 'USD', 0.5, 10, 0.02, 'signup', 'active', 'admin', 'manager', '2023-10-20 09:00:00', 'initial allocation', 25, 7500, 12000, '2023-11-15 12:00:00', 1);
INSERT INTO ad_campaign_budget (Id, CampaignId, PeriodStart, PeriodEnd, AllocatedBudget, SpentAmount, Currency, CpcLimit, CpmLimit, CtrTarget, ConversionGoal, Status, CreatedBy, ApprovedBy, ApprovalDate, Notes, BudgetUtilizationPct, RemainingBudget, ForecastedSpend, LastUpdatedAt, Version) VALUES (2, 202, '2023-12-01 00:00:00', '2023-12-31 23:59:59', 15000, 0, 'EUR', 0.6, 12, 0.025, 'purchase', 'planned', 'marketing', 'director', '2023-11-10 10:30:00', 'Q4 campaign', 0, 15000, 15000, '2023-11-20 08:45:00', 1);
INSERT INTO ad_campaign_budget (Id, CampaignId, PeriodStart, PeriodEnd, AllocatedBudget, SpentAmount, Currency, CpcLimit, CpmLimit, CtrTarget, ConversionGoal, Status, CreatedBy, ApprovedBy, ApprovalDate, Notes, BudgetUtilizationPct, RemainingBudget, ForecastedSpend, LastUpdatedAt, Version) VALUES (3, 203, '2024-01-01 00:00:00', '2024-01-31 23:59:59', 20000, 5000, 'GBP', 0.55, 11, 0.03, 'lead', 'active', 'sales', 'vp', '2023-12-15 14:20:00', 'January push', 25, 15000, 18000, '2023-12-30 16:00:00', 2);

-- Moderator shift logging
CREATE TABLE moderator_shift_log
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ModeratorUserId INTEGER,
    ShiftStart DATETIME,
    ShiftEnd DATETIME,
    TotalCasesHandled INTEGER,
    AvgHandleTimeSec REAL,
    CasesEscalated INTEGER,
    Notes TEXT,
    Location TEXT,
    DeviceUsed TEXT,
    IpAddress TEXT,
    ShiftType TEXT,
    BreakCount INTEGER,
    BreakDurationSec INTEGER,
    IncidentsReported INTEGER,
    PerformanceScore REAL,
    SupervisorId INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    ShiftStatus TEXT
);

INSERT INTO moderator_shift_log (Id, ModeratorUserId, ShiftStart, ShiftEnd, TotalCasesHandled, AvgHandleTimeSec, CasesEscalated, Notes, Location, DeviceUsed, IpAddress, ShiftType, BreakCount, BreakDurationSec, IncidentsReported, PerformanceScore, SupervisorId, CreatedAt, UpdatedAt, ShiftStatus) VALUES (1, 15, '2023-06-01 08:00:00', '2023-06-01 16:00:00', 120, 45.5, 5, 'smooth shift', 'NYC', 'desktop', '203.0.113.10', 'day', 2, 600, 0, 92.5, 3, '2023-06-01 08:05:00', '2023-06-01 16:05:00', 'completed');
INSERT INTO moderator_shift_log (Id, ModeratorUserId, ShiftStart, ShiftEnd, TotalCasesHandled, AvgHandleTimeSec, CasesEscalated, Notes, Location, DeviceUsed, IpAddress, ShiftType, BreakCount, BreakDurationSec, IncidentsReported, PerformanceScore, SupervisorId, CreatedAt, UpdatedAt, ShiftStatus) VALUES (2, 18, '2023-06-02 20:00:00', '2023-06-03 04:00:00', 85, 60.2, 8, 'high volume', 'London', 'laptop', '198.51.100.20', 'night', 1, 300, 1, 78.0, 4, '2023-06-02 20:10:00', '2023-06-03 04:10:00', 'completed');
INSERT INTO moderator_shift_log (Id, ModeratorUserId, ShiftStart, ShiftEnd, TotalCasesHandled, AvgHandleTimeSec, CasesEscalated, Notes, Location, DeviceUsed, IpAddress, ShiftType, BreakCount, BreakDurationSec, IncidentsReported, PerformanceScore, SupervisorId, CreatedAt, UpdatedAt, ShiftStatus) VALUES (3, 22, '2023-06-04 12:00:00', '2023-06-04 20:00:00', 100, 50.0, 3, 'average', 'Tokyo', 'tablet', '203.0.113.30', 'day', 3, 900, 0, 85.0, 5, '2023-06-04 12:05:00', '2023-06-04 20:05:00', 'completed');