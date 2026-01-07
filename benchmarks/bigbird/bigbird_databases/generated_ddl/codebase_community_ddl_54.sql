-- Table storing links to third‑party resources associated with posts
CREATE TABLE post_thirdparty_links
(
    Id                 INTEGER PRIMARY KEY,
    PostId             INTEGER,
    ProviderName       TEXT,
    ProviderUrl        TEXT,
    LinkType           TEXT,
    CreatedAt          DATETIME,
    UpdatedAt          DATETIME,
    IsActive           INTEGER,
    ClickCount         INTEGER,
    LastClickedAt      DATETIME,
    ReferrerDomain     TEXT,
    CampaignId         INTEGER,
    UTMSource          TEXT,
    UTMMedium          TEXT,
    UTMCampaign        TEXT,
    UTMTerm            TEXT,
    UTMContent         TEXT,
    MetadataJson       TEXT,
    OwnerUserId        INTEGER,
    ReviewStatus       TEXT,
    ReviewComment      TEXT
);

INSERT INTO post_thirdparty_links VALUES (1, 101, 'GitHub', 'https://github.com/example', 'source', '2023-01-10 08:00:00', '2023-01-12 09:15:00', 1, 25, '2023-01-12 09:10:00', 'example.com', 5, 'newsletter', 'email', 'launch', 'python', 'code', '{"type":"repo"}', 12, 'approved', 'initial review');
INSERT INTO post_thirdparty_links VALUES (2, 102, 'YouTube', 'https://youtube.com/watch?v=abc', 'video', '2023-02-05 14:30:00', '2023-02-07 10:00:00', 1, 40, '2023-02-07 09:55:00', 'socialmedia.com', 8, 'social', 'video', 'demo', 'javascript', 'tutorial', '{"length":"5m"}', 15, 'pending', 'awaiting moderation');
INSERT INTO post_thirdparty_links VALUES (3, 103, 'StackOverflow', 'https://stackoverflow.com/q/12345', 'reference', '2023-03-01 11:20:00', '2023-03-02 12:45:00', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{}', NULL, 'rejected', 'spam link');

-- Table capturing users' educational background records
CREATE TABLE user_educational_background
(
    Id                 INTEGER PRIMARY KEY,
    UserId             INTEGER,
    InstitutionName    TEXT,
    Degree             TEXT,
    FieldOfStudy       TEXT,
    StartDate          DATE,
    EndDate            DATE,
    GPA                REAL,
    Honors             TEXT,
    Description        TEXT,
    CreatedAt          DATETIME,
    UpdatedAt          DATETIME,
    IsVerified         INTEGER,
    VerificationDate   DATE,
    VerificationSource TEXT,
    TranscriptUrl      TEXT,
    AdvisorName        TEXT,
    AdvisorEmail       TEXT,
    ProgramLengthMonths INTEGER,
    GraduationStatus   TEXT,
    LinkedInProfileUrl TEXT
);

INSERT INTO user_educational_background VALUES (1, 201, 'University A', 'BSc', 'Computer Science', '2015-09-01', '2019-06-30', 3.8, 'Dean List', 'Studied algorithms', '2020-01-15 10:00:00', '2020-01-15 10:00:00', 1, '2020-02-01', 'admin', 'http://example.com/transcript1.pdf', 'Dr Smith', 'smith@example.com', 48, 'graduated', 'http://linkedin.com/in/user1');
INSERT INTO user_educational_background VALUES (2, 202, 'College B', 'MSc', 'Data Science', '2019-09-01', '2021-06-30', 4.0, 'Magna Cum Laude', 'Focus on machine learning', '2021-07-10 14:20:00', '2021-07-10 14:20:00', 0, NULL, NULL, NULL, NULL, NULL, 24, 'in progress', NULL);
INSERT INTO user_educational_background VALUES (3, 203, 'Institute C', 'PhD', 'Artificial Intelligence', '2021-09-01', NULL, NULL, NULL, 'Research on deep reinforcement learning', '2022-03-05 09:45:00', '2022-04-01 11:30:00', 0, NULL, NULL, NULL, NULL, NULL, 36, 'enrolled', NULL);

-- Table defining hierarchical semantic relationships between tags
CREATE TABLE tag_semantic_hierarchy
(
    Id                 INTEGER PRIMARY KEY,
    ParentTagId        INTEGER,
    ChildTagId         INTEGER,
    RelationshipType   TEXT,
    Weight             REAL,
    CreatedAt          DATETIME,
    UpdatedAt          DATETIME,
    Source             TEXT,
    ConfidenceScore    REAL,
    Comments           TEXT,
    IsActive           INTEGER,
    Version            INTEGER,
    ExpirationDate     DATE,
    SynonymGroupId     INTEGER,
    RelatedArticleId   INTEGER,
    PromotionScore     REAL,
    DisplayOrder       INTEGER,
    IsPrimary          INTEGER,
    Alias              TEXT,
    MetadataXml        TEXT,
    OwnerUserId        INTEGER
);

INSERT INTO tag_semantic_hierarchy VALUES (1, 10, 20, 'broader', 0.9, '2023-01-01 08:00:00', '2023-01-05 09:00:00', 'system', 0.95, 'auto generated', 1, 1, NULL, 2, 1001, 0.8, 1, 1, 'ml', '<meta></meta>', 5);
INSERT INTO tag_semantic_hierarchy VALUES (2, 15, 25, 'related', 0.6, '2023-02-10 12:30:00', '2023-02-12 13:45:00', 'user', 0.7, 'manual entry', 1, 1, '2024-12-31', 3, 1002, 0.5, 2, 0, 'ai', '<meta></meta>', 12);
INSERT INTO tag_semantic_hierarchy VALUES (3, 30, 40, 'narrower', 0.4, '2023-03-15 15:20:00', '2023-03-16 16:10:00', 'system', 0.85, 'derived from usage', 0, 1, NULL, 5, 1003, 0.3, 3, 0, 'dl', '<meta></meta>', 8);

-- Table storing common search query patterns and statistics
CREATE TABLE search_query_patterns
(
    Id                 INTEGER PRIMARY KEY,
    PatternText        TEXT,
    ExampleQuery       TEXT,
    Frequency          INTEGER,
    AvgResults         INTEGER,
    MedianResults      INTEGER,
    StdDevResults      REAL,
    FirstSeen          DATETIME,
    LastSeen           DATETIME,
    IsActive           INTEGER,
    Category           TEXT,
    SourceSystem       TEXT,
    Confidence         REAL,
    CreatedByUserId    INTEGER,
    UpdatedByUserId    INTEGER,
    ReviewStatus       TEXT,
    ReviewComment      TEXT,
    TagsInvolved       TEXT,
    Language           TEXT,
    Region             TEXT,
    IsSpam             INTEGER
);

INSERT INTO search_query_patterns VALUES (1, 'how to *', 'how to install python', 1500, 42, 40, 5.2, '2022-01-01 00:00:00', '2023-12-31 23:59:59', 1, 'tutorial', 'search', 0.98, 101, 102, 'approved', 'common pattern', 'python,install', 'en', 'US', 0);
INSERT INTO search_query_patterns VALUES (2, '* vs *', 'java vs python', 800, 30, 28, 3.1, '2022-06-15 08:20:00', '2023-11-20 14:45:00', 1, 'comparison', 'search', 0.95, 103, 104, 'pending', 'needs review', 'java,python', 'en', 'GB', 0);
INSERT INTO search_query_patterns VALUES (3, '* error code *', 'error code 500', 300, 12, 10, 2.0, '2023-01-10 09:00:00', '2023-09-05 17:30:00', 0, 'debug', 'search', 0.80, 105, 106, 'rejected', 'spam pattern', '500,error', 'en', 'CA', 1);

-- Table for moderators to add free‑form notes about content under review
CREATE TABLE content_moderation_notes
(
    Id                 INTEGER PRIMARY KEY,
    ContentId          INTEGER,
    ContentType        TEXT,
    ModeratorUserId    INTEGER,
    NoteText           TEXT,
    CreatedAt          DATETIME,
    UpdatedAt          DATETIME,
    ActionTaken        TEXT,
    ActionReason       TEXT,
    ReviewStage        TEXT,
    Priority           INTEGER,
    IsResolved         INTEGER,
    ResolvedAt         DATETIME,
    ResolutionUserId   INTEGER,
    FollowUpNeeded     INTEGER,
    FollowUpByUserId   INTEGER,
    FollowUpDueDate    DATE,
    Tags               TEXT,
    SentimentScore     REAL,
    FlagCount          INTEGER,
    Confidential       INTEGER
);

INSERT INTO content_moderation_notes VALUES (1, 201, 'post', 301, 'Possible plagiarism detected', '2023-04-01 10:15:00', '2023-04-01 10:15:00', 'hold', 'investigate', 'initial', 2, 0, NULL, NULL, 1, 302, '2023-04-05', 'plagiarism,copy', -0.7, 3, 0);
INSERT INTO content_moderation_notes VALUES (2, 202, 'comment', 302, 'Off‑topic but benign', '2023-04-02 11:20:00', '2023-04-02 12:00:00', 'no_action', 'N/A', 'final', 5, 1, '2023-04-02 12:00:00', 303, 0, NULL, NULL, 'offtopic', 0.2, 1, 0);
INSERT INTO content_moderation_notes VALUES (3, 203, 'post', 303, 'Contains personal data', '2023-04-03 09:05:00', '2023-04-04 08:30:00', 'remove', 'privacy violation', 'escalated', 1, 1, '2023-04-04 08:30:00', 304, 0, NULL, NULL, 'privacy,personal', -0.9, 5, 1);

-- Summary of API client usage per month
CREATE TABLE api_client_usage_summary
(
    Id                 INTEGER PRIMARY KEY,
    ClientId           INTEGER,
    ClientName         TEXT,
    ApiVersion         TEXT,
    TotalCalls         INTEGER,
    SuccessfulCalls    INTEGER,
    FailedCalls        INTEGER,
    AvgLatencyMs       REAL,
    MaxLatencyMs       INTEGER,
    MinLatencyMs       INTEGER,
    FirstCallAt        DATETIME,
    LastCallAt         DATETIME,
    IsActive           INTEGER,
    QuotaLimit         INTEGER,
    QuotaUsed          INTEGER,
    RateLimitEnabled   INTEGER,
    RateLimitThreshold INTEGER,
    RateLimitWindowSec INTEGER,
    LastRateLimitReset DATETIME,
    BillingAccountId   INTEGER,
    SupportContactEmail TEXT
);

INSERT INTO api_client_usage_summary VALUES (1, 401, 'MobileApp', 'v2', 120000, 118500, 1500, 85.3, 2000, 20, '2023-01-01 00:00:00', '2023-12-31 23:59:59', 1, 200000, 120000, 1, 1000, 60, '2023-12-31 23:00:00', 501, 'support@example.com');
INSERT INTO api_client_usage_summary VALUES (2, 402, 'WebPortal', 'v1', 80000, 79500, 500, 70.1, 1500, 15, '2023-02-01 08:30:00', '2023-11-30 22:15:00', 1, 150000, 80000, 1, 1500, 60, '2023-11-30 21:45:00', 502, 'websupport@example.com');
INSERT INTO api_client_usage_summary VALUES (3, 403, 'ThirdPartyPartner', 'v3', 50000, 48000, 2000, 120.5, 3000, 30, '2023-03-10 12:00:00', '2023-09-20 18:45:00', 0, 100000, 50000, 0, NULL, NULL, NULL, 503, 'partner@example.com');

-- Events generated by devices with geo‑location data
CREATE TABLE geo_location_events
(
    Id                 INTEGER PRIMARY KEY,
    DeviceId           INTEGER,
    Latitude           REAL,
    Longitude          REAL,
    Altitude           REAL,
    AccuracyMeters     REAL,
    EventTimestamp     DATETIME,
    EventType          TEXT,
    Source             TEXT,
    IsTrusted          INTEGER,
    CountryCode        TEXT,
    RegionCode         TEXT,
    CityName           TEXT,
    PostalCode         TEXT,
    ISP                TEXT,
    ConnectionType     TEXT,
    BatteryLevel       REAL,
    SignalStrength     INTEGER,
    FirmwareVersion    TEXT,
    Notes              TEXT
);

INSERT INTO geo_location_events VALUES (1, 601, 37.7749, -122.4194, 15.2, 5.0, '2023-05-01 08:00:00', 'login', 'app', 1, 'US', 'CA', 'SanFrancisco', '94103', 'Comcast', 'wifi', 0.85, -70, '1.2.3', 'first login location');
INSERT INTO geo_location_events VALUES (2, 602, 51.5074, -0.1278, 30.0, 10.0, '2023-05-02 09:30:00', 'data_sync', 'service', 1, 'GB', 'ENG', 'London', 'EC1A', 'BT', 'ethernet', 0.60, -65, '2.0.1', 'night sync');
INSERT INTO geo_location_events VALUES (3, 603, -33.8688, 151.2093, 5.5, 3.0, '2023-05-03 10:45:00', 'error', 'device', 0, 'AU', 'NSW', 'Sydney', '2000', 'Telstra', 'cellular', 0.30, -80, '0.9.8', 'low battery error');

-- Rules that advertisers can configure to target specific audiences
CREATE TABLE advertiser_targeting_rules
(
    Id                 INTEGER PRIMARY KEY,
    AdvertiserId       INTEGER,
    RuleName           TEXT,
    TargetAudienceId   INTEGER,
    DemographicGroup   TEXT,
    InterestCategory   TEXT,
    DeviceType         TEXT,
    Platform           TEXT,
    Geography          TEXT,
    FrequencyCap       INTEGER,
    StartDate          DATE,
    EndDate            DATE,
    IsActive           INTEGER,
    CreatedByUserId    INTEGER,
    UpdatedByUserId    INTEGER,
    BudgetAllocation   REAL,
    BidMultiplier      REAL,
    ExclusionList      TEXT,
    Priority           INTEGER,
    ReviewStatus       TEXT,
    ReviewComment      TEXT
);

INSERT INTO advertiser_targeting_rules VALUES (1, 701, 'YoungAdultsTech', 1001, '18-24', 'technology', 'mobile', 'iOS', 'US', 3, '2023-06-01', '2023-12-31', 1, 801, 802, 5000.00, 1.2, 'blocked_domains', 10, 'approved', 'initial rule');
INSERT INTO advertiser_targeting_rules VALUES (2, 702, 'SeniorHealth', 1002, '55-70', 'health', 'desktop', 'Windows', 'EU', 2, '2023-07-15', '2024-01-15', 1, 803, 804, 3000.00, 1.0, NULL, 20, 'pending', 'awaiting budget');
INSERT INTO advertiser_targeting_rules VALUES (3, 703, 'TravelEnthusiasts', 1003, '25-40', 'travel', 'tablet', 'Android', 'APAC', 5, '2023-08-01', '2023-11-30', 0, 805, 806, 2000.00, 0.9, 'exclude_countries', 30, 'rejected', 'low performance');

-- Detailed progress records for users moving through learning paths
CREATE TABLE learning_path_progress_detail
(
    Id                 INTEGER PRIMARY KEY,
    UserId             INTEGER,
    LearningPathId     INTEGER,
    ModuleId           INTEGER,
    StartDate          DATE,
    CompletionDate     DATE,
    Status             TEXT,
    Score              REAL,
    TimeSpentSeconds   INTEGER,
    Attempts           INTEGER,
    LastAccessedAt     DATETIME,
    IsCertified        INTEGER,
    CertificateId      INTEGER,
    ReviewerUserId     INTEGER,
    ReviewDate         DATE,
    FeedbackText       TEXT,
    RevisionNumber     INTEGER,
    IsRetakeAllowed   INTEGER,
    RetakeCount        INTEGER,
    ProgressPercentage REAL,
    Notes              TEXT
);

INSERT INTO learning_path_progress_detail VALUES (1, 901, 10001, 2001, '2023-01-10', '2023-01-20', 'completed', 92.5, 7200, 1, '2023-01-20 15:30:00', 1, 3001, 401, '2023-01-21', 'well done', 1, 0, 0, 100.0, 'first module completed');
INSERT INTO learning_path_progress_detail VALUES (2, 902, 10002, 2002, '2023-02-05', NULL, 'in_progress', 78.0, 3600, 2, '2023-03-01 09:15:00', 0, NULL, NULL, NULL, 'needs improvement on quiz', 2, 1, 0, 45.0, 'midway through');
INSERT INTO learning_path_progress_detail VALUES (3, 903, 10003, 2003, '2023-03-15', '2023-04-01', 'failed', 55.0, 5400, 3, '2023-04-01 12:00:00', 0, NULL, 402, '2023-04-02', 'review recommended', 1, 1, 1, 30.0, 're‑attempt scheduled');

-- Participants of forum threads with their activity metrics
CREATE TABLE forum_thread_participants
(
    Id                 INTEGER PRIMARY KEY,
    ThreadId           INTEGER,
    UserId             INTEGER,
    JoinDate           DATE,
    LastPostDate       DATE,
    PostCount          INTEGER,
    ReputationAtJoin   INTEGER,
    ReputationNow      INTEGER,
    Role               TEXT,
    IsModerator        INTEGER,
    IsOwner            INTEGER,
    NotificationPreference TEXT,
    LastReadAt         DATETIME,
    UnreadCount        INTEGER,
    Rating             REAL,
    BadgesEarned      TEXT,
    TagsFollowed       TEXT,
    IsActive           INTEGER,
    DeclineReason      TEXT,
    Remarks            TEXT
);

INSERT INTO forum_thread_participants VALUES (1, 1101, 1201, '2023-03-01', '2023-04-10', 15, 250, 300, 'member', 0, 0, 'email', '2023-04-10 08:00:00', 0, 4.5, 'gold,silver', 'sql,python', 1, NULL, 'active contributor');
INSERT INTO forum_thread_participants VALUES (2, 1102, 1202, '2023-02-15', '2023-03-20', 5, 500, 520, 'moderator', 1, 0, 'none', '2023-03-20 14:30:00', 0, 4.8, 'platinum', 'java', 1, NULL, 'moderation duties');
INSERT INTO forum_thread_participants VALUES (3, 1103, 1203, '2023-01-10', NULL, 0, 100, 100, 'member', 0, 0, 'push', NULL, NULL, NULL, NULL, NULL, 0, 'not accepted', 'did not join thread');

-- End of generated schema script.