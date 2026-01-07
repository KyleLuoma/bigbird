-- Table storing advertisement performance metrics per post
CREATE TABLE post_ad_performance
(
    AdPerformanceId      INTEGER PRIMARY KEY,
    PostId               INTEGER,
    AdCampaignId         INTEGER,
    Impressions          INTEGER,
    Clicks               INTEGER,
    CTR                  REAL,
    Revenue              REAL,
    DisplayedAt          DATETIME,
    DeviceType           TEXT,
    Browser              TEXT,
    CountryCode          TEXT,
    Region               TEXT,
    City                 TEXT,
    UserSegment          TEXT,
    AdPlacement          TEXT,
    CreativeId           INTEGER,
    CreativeType         TEXT,
    BidAmount            REAL,
    AuctionType          TEXT,
    ViewabilityScore     REAL,
    ConversionCount      INTEGER,
    ConversionValue      REAL,
    IsViewable           BOOLEAN,
    FOREIGN KEY (PostId) REFERENCES posts (Id)
);

INSERT INTO post_ad_performance VALUES (1, 101, 2001, 1500, 45, 0.03, 12.5, '2025-01-10 08:15:00', 'Desktop', 'Chrome', 'US', 'California', 'SanFrancisco', 'TechEnthusiasts', 'Sidebar', 3001, 'Banner', 0.75, 'SecondPrice', 0.88, 5, 25.0, 1);
INSERT INTO post_ad_performance VALUES (2, 102, 2002, 2300, 78, 0.034, 19.2, '2025-01-11 09:30:00', 'Mobile', 'Safari', 'CA', 'BritishColumbia', 'Vancouver', 'Developers', 'Inline', 3002, 'Video', 1.20, 'FirstPrice', 0.92, 12, 60.0, 1);
INSERT INTO post_ad_performance VALUES (3, 103, 2003, 980, 22, 0.022, 5.8, '2025-01-12 14:45:00', 'Tablet', 'Firefox', 'GB', 'England', 'London', 'Scientists', 'Header', 3003, 'Native', 0.55, 'SecondPrice', 0.81, 3, 15.0, 0);

-- Table containing enriched semantic metadata for tags
CREATE TABLE tag_semantic_metadata
(
    TagSemanticId        INTEGER PRIMARY KEY,
    TagId                INTEGER,
    CanonicalForm        TEXT,
    SynonymCount         INTEGER,
    Hypernym             TEXT,
    HyponymCount         INTEGER,
    Domain               TEXT,
    SubDomain            TEXT,
    TypicalAudience      TEXT,
    PopularityScore      REAL,
    DifficultyLevel     TEXT,
    AverageAnswerTime    INTEGER,
    AverageScore         REAL,
    RelatedConcepts      TEXT,
    SentimentScore       REAL,
    Language             TEXT,
    CreationDate         DATETIME,
    LastUpdated          DATETIME,
    IsActive             BOOLEAN,
    IsDeprecated         BOOLEAN,
    SourceOntology       TEXT,
    ConfidenceLevel      REAL,
    FOREIGN KEY (TagId) REFERENCES tags (Id)
);

INSERT INTO tag_semantic_metadata VALUES (1, 10, 'machinelearning', 5, 'artificialintelligence', 12, 'ComputerScience', 'AI', 'Researchers', 0.87, 'Advanced', 7200, 4.5, 'neuralnetworks,deeplearning', 0.15, 'en', '2024-12-01 00:00:00', '2025-01-05 12:00:00', 1, 0, 'SKOS', 0.92);
INSERT INTO tag_semantic_metadata VALUES (2, 20, 'datastructures', 3, 'computerprogramming', 8, 'ComputerScience', 'Programming', 'Students', 0.73, 'Intermediate', 5400, 3.8, 'arrays,linkedlists', -0.05, 'en', '2024-11-15 00:00:00', '2025-01-02 08:30:00', 1, 0, 'Schema.org', 0.88);
INSERT INTO tag_semantic_metadata VALUES (3, 30, 'quantumphysics', 7, 'physics', 4, 'Science', 'Physics', 'Physicists', 0.62, 'Expert', 10800, 4.9, 'wavefunction,entanglement', 0.22, 'en', '2024-10-20 00:00:00', '2025-01-03 15:45:00', 0, 1, 'FOAF', 0.79);

-- Table capturing user preferences for content categories and delivery settings
CREATE TABLE user_content_preferences
(
    PreferenceId         INTEGER PRIMARY KEY,
    UserId               INTEGER,
    PreferredLanguage    TEXT,
    PreferredTimezone    TEXT,
    PreferredDevice      TEXT,
    ContentCategory1     TEXT,
    ContentCategory2     TEXT,
    ContentCategory3     TEXT,
    ReceiveEmailDigest   BOOLEAN,
    EmailFrequency       TEXT,
    EnablePushNotifications BOOLEAN,
    PushFrequency        TEXT,
    ShowMatureContent    BOOLEAN,
    AllowThirdPartyTracking BOOLEAN,
    ThemeSelection       TEXT,
    FontSizePreference   TEXT,
    LayoutPreference     TEXT,
    AccessibilityMode    BOOLEAN,
    NotificationSound    TEXT,
    DailyQuota           INTEGER,
    WeeklyQuota          INTEGER,
    MonthlyQuota         INTEGER,
    LastPreferenceUpdate DATETIME,
    FOREIGN KEY (UserId) REFERENCES users (Id)
);

INSERT INTO user_content_preferences VALUES (1, 101, 'en', 'UTC', 'Desktop', 'Programming', 'DataScience', 'AI', 1, 'Weekly', 1, 'Immediate', 0, 0, 'Dark', 'Medium', 'Compact', 0, 'Ping', 50, 300, 1200, '2025-01-04 10:00:00');
INSERT INTO user_content_preferences VALUES (2, 102, 'es', 'CET', 'Mobile', 'Photography', 'Travel', 'Food', 0, 'Monthly', 0, 'Never', 1, 1, 'Light', 'Large', 'Spacious', 1, 'Chime', 30, 200, 800, '2025-01-06 14:20:00');
INSERT INTO user_content_preferences VALUES (3, 103, 'de', 'EST', 'Tablet', 'History', 'Politics', 'Economics', 1, 'Daily', 1, 'Hourly', 0, 0, 'System', 'Small', 'Standard', 0, 'Ding', 70, 350, 1500, '2025-01-07 09:15:00');

-- Table auditing content access events for compliance and analytics
CREATE TABLE content_access_audit
(
    AccessAuditId        INTEGER PRIMARY KEY,
    UserId               INTEGER,
    PostId               INTEGER,
    AccessTimestamp      DATETIME,
    AccessMethod         TEXT,
    DeviceId             TEXT,
    IPAddress            TEXT,
    GeoCountry           TEXT,
    GeoRegion            TEXT,
    GeoCity              TEXT,
    ReferrerUrl          TEXT,
    SessionId            TEXT,
    IsSuccessful         BOOLEAN,
    FailureReason        TEXT,
    IsSensitiveContent   BOOLEAN,
    ComplianceFlag       BOOLEAN,
    DataRetentionPolicy  TEXT,
    AccessDurationMs     INTEGER,
    BandwidthUsedKb      INTEGER,
    BrowserInfo          TEXT,
    OSInfo               TEXT,
    IsAutomatedAgent     BOOLEAN,
    FOREIGN KEY (UserId) REFERENCES users (Id),
    FOREIGN KEY (PostId) REFERENCES posts (Id)
);

INSERT INTO content_access_audit VALUES (1, 101, 101, '2025-01-08 08:05:00', 'Web', 'DEV12345', '192.0.2.1', 'US', 'California', 'SanFrancisco', 'https://search.example.com', 'SID001', 1, NULL, 0, 0, 'Standard30Days', 1500, 250, 'Chrome/115.0', 'Windows10', 0);
INSERT INTO content_access_audit VALUES (2, 102, 102, '2025-01-08 09:12:00', 'API', 'DEV67890', '203.0.113.5', 'CA', 'Ontario', 'Toronto', 'https://api.example.com', 'SID002', 1, NULL, 1, 1, 'Standard90Days', 300, 45, 'Python-Requests/2.31', 'Ubuntu20.04', 1);
INSERT INTO content_access_audit VALUES (3, 103, 103, '2025-01-08 10:45:00', 'MobileApp', 'DEV54321', '198.51.100.23', 'GB', 'England', 'London', 'app://home', 'SID003', 0, 'Timeout', 0, 0, 'Standard30Days', 0, 0, 'WebView/1.0', 'iOS14', 0);

-- Table linking external reference URLs to posts
CREATE TABLE external_reference_links
(
    ReferenceId          INTEGER PRIMARY KEY,
    PostId               INTEGER,
    Url                  TEXT,
    LinkType             TEXT,
    Description          TEXT,
    Publisher            TEXT,
    PublicationDate      DATE,
    AccessedDate         DATE,
    IsPeerReviewed       BOOLEAN,
    CitationCount        INTEGER,
    DOI                  TEXT,
    ISBN                 TEXT,
    Language             TEXT,
    License              TEXT,
    ConfidenceScore      REAL,
    RelevanceScore       REAL,
    Category             TEXT,
    SubCategory          TEXT,
    Tags                 TEXT,
    CreatedAt            DATETIME,
    UpdatedAt            DATETIME,
    FOREIGN KEY (PostId) REFERENCES posts (Id)
);

INSERT INTO external_reference_links VALUES (1, 101, 'https://doi.org/10.1000/xyz123', 'Citation', 'Deep Learning Survey', 'TechJournal', '2022-05-10', '2025-01-01', 1, 45, '10.1000/xyz123', NULL, 'en', 'CC-BY', 0.95, 0.88, 'Research', 'MachineLearning', 'deeplearning,survey', '2025-01-02 11:00:00', '2025-01-05 09:30:00');
INSERT INTO external_reference_links VALUES (2, 102, 'https://example.org/dataset/abc', 'Dataset', 'ImageNet Subset', 'OpenData', '2020-01-01', '2025-01-03', 0, 0, NULL, NULL, 'en', 'PublicDomain', 0.85, 0.73, 'Data', 'ComputerVision', 'imagenet,subset', '2025-01-04 14:20:00', '2025-01-06 08:15:00');
INSERT INTO external_reference_links VALUES (3, 103, 'https://arxiv.org/abs/2101.00001', 'Preprint', 'Quantum Entanglement Basics', 'arXiv', '2021-01-01', '2025-01-04', 1, 12, '2101.00001', NULL, 'en', 'CC0', 0.78, 0.64, 'Research', 'QuantumPhysics', 'entanglement,basics', '2025-01-05 16:45:00', '2025-01-07 10:10:00');

-- Table recording collaborative editing sessions on posts
CREATE TABLE post_collaboration_sessions
(
    SessionId            INTEGER PRIMARY KEY,
    PostId               INTEGER,
    InitiatorUserId      INTEGER,
    StartTime            DATETIME,
    EndTime              DATETIME,
    ParticipantCount    INTEGER,
    ParticipantUserIds   TEXT,
    EditMode             TEXT,
    ConflictCount        INTEGER,
    ResolvedConflicts   INTEGER,
    ChangesMade          INTEGER,
    LinesAdded           INTEGER,
    LinesDeleted         INTEGER,
    TotalDurationMs      INTEGER,
    IsSuccessful         BOOLEAN,
    SessionRating        INTEGER,
    FeedbackComments     TEXT,
    Platform             TEXT,
    VersionControlSystem TEXT,
    RepositoryUrl        TEXT,
    BranchName           TEXT,
    FOREIGN KEY (PostId) REFERENCES posts (Id),
    FOREIGN KEY (InitiatorUserId) REFERENCES users (Id)
);

INSERT INTO post_collaboration_sessions VALUES (1, 101, 101, '2025-01-09 08:00:00', '2025-01-09 09:15:00', 3, '101,102,103', 'Realtime', 2, 2, 45, 120, 15, 4500000, 1, 5, 'Smooth collaboration', 'Web', 'Git', 'https://git.example.com/repo1', 'feature/collab');
INSERT INTO post_collaboration_sessions VALUES (2, 102, 102, '2025-01-10 10:30:00', '2025-01-10 12:00:00', 2, '102,104', 'Async', 1, 1, 30, 80, 10, 5400000, 1, 4, 'Minor merge issues', 'Desktop', 'Mercurial', 'https://hg.example.com/repo2', 'default');
INSERT INTO post_collaboration_sessions VALUES (3, 103, 103, '2025-01-11 14:00:00', '2025-01-11 15:45:00', 4, '103,105,106,107', 'Realtime', 0, 0, 60, 200, 25, 6300000, 1, 5, 'Excellent teamwork', 'Mobile', 'Git', 'https://git.example.com/repo3', 'bugfix/typo');

-- Table defining advertising schedule per tag
CREATE TABLE tag_advertising_schedule
(
    ScheduleId           INTEGER PRIMARY KEY,
    TagId                INTEGER,
    CampaignId           INTEGER,
    StartDate            DATE,
    EndDate              DATE,
    DailyBudget          REAL,
    WeeklyBudget         REAL,
    MonthlyBudget        REAL,
    TargetImpressions    INTEGER,
    TargetClicks         INTEGER,
    CPM                  REAL,
    CPC                  REAL,
    CountryTarget        TEXT,
    RegionTarget         TEXT,
    DeviceTarget         TEXT,
    AgeRange             TEXT,
    GenderTarget         TEXT,
    LanguageTarget       TEXT,
    PlacementType        TEXT,
    FrequencyCap         INTEGER,
    IsActive             BOOLEAN,
    CreatedAt            DATETIME,
    UpdatedAt            DATETIME,
    FOREIGN KEY (TagId) REFERENCES tags (Id)
);

INSERT INTO tag_advertising_schedule VALUES (1, 10, 2001, '2025-01-01', '2025-03-31', 150.0, 1000.0, 4000.0, 50000, 2000, 5.0, 0.25, 'US,CA', 'California,Ontario', 'Desktop,Mobile', '18-35', 'All', 'en', 'Sidebar', 3, 1, '2025-01-02 08:00:00', '2025-01-05 12:00:00');
INSERT INTO tag_advertising_schedule VALUES (2, 20, 2002, '2025-02-01', '2025-04-30', 200.0, 1400.0, 5600.0, 75000, 3000, 4.5, 0.22, 'GB,AU', 'England,NewSouthWales', 'Desktop', '25-45', 'Female', 'en', 'Header', 5, 1, '2025-02-02 09:30:00', '2025-02-06 14:20:00');
INSERT INTO tag_advertising_schedule VALUES (3, 30, 2003, '2025-03-01', '2025-05-31', 180.0, 1260.0, 5040.0, 60000, 2500, 4.8, 0.24, 'DE,FR', 'Bavaria,ÎleDeFrance', 'Mobile', '30-50', 'Male', 'en', 'Footer', 2, 0, '2025-03-02 11:15:00', '2025-03-07 16:45:00');

-- Table storing computed engagement scores for users
CREATE TABLE user_engagement_scores
(
    ScoreId               INTEGER PRIMARY KEY,
    UserId                INTEGER,
    OverallScore          REAL,
    PostingScore          REAL,
    AnsweringScore        REAL,
    VotingScore           REAL,
    CommentingScore       REAL,
    BadgeScore            REAL,
    ReviewScore           REAL,
    ReputationScore       REAL,
    ActivityFrequency     REAL,
    DaysSinceLastLogin    INTEGER,
    AvgSessionLengthMin  REAL,
    QuestionsAsked        INTEGER,
    AnswersProvided       INTEGER,
    CommentsMade          INTEGER,
    VotesCast             INTEGER,
    AcceptedAnswers       INTEGER,
    UpvotesReceived       INTEGER,
    DownvotesReceived     INTEGER,
    TagsFollowedCount    INTEGER,
    InterestsScore        REAL,
    LastCalculatedAt      DATETIME,
    FOREIGN KEY (UserId) REFERENCES users (Id)
);

INSERT INTO user_engagement_scores VALUES (1, 101, 87.5, 90.0, 85.0, 80.0, 75.0, 92.0, 78.0, 95.0, 0.9, 5, 45.0, 30, 120, 250, 500, 40, 300, 20, 15, 0.85, '2025-01-09 12:00:00');
INSERT INTO user_engagement_scores VALUES (2, 102, 72.3, 68.0, 70.5, 65.0, 60.0, 78.0, 70.0, 80.0, 0.7, 12, 30.0, 20, 45, 80, 200, 15, 150, 10, 8, 0.65, '2025-01-10 14:30:00');
INSERT INTO user_engagement_scores VALUES (3, 103, 95.1, 98.0, 97.0, 96.0, 94.0, 99.0, 92.0, 100.0, 0.98, 2, 60.0, 50, 200, 400, 800, 60, 500, 30, 25, 0.95, '2025-01-11 09:45:00');

-- Table extending post metadata with additional attributes
CREATE TABLE post_metadata_extended
(
    ExtMetaId            INTEGER PRIMARY KEY,
    PostId               INTEGER,
    Language             TEXT,
    License              TEXT,
    IsSponsored          BOOLEAN,
    SponsorName          TEXT,
    SponsoredStartDate   DATE,
    SponsoredEndDate     DATE,
    IsFeatured           BOOLEAN,
    FeaturedStartDate    DATE,
    FeaturedEndDate      DATE,
    ContentRating        TEXT,
    IsMatureContent      BOOLEAN,
    WordCount            INTEGER,
    ReadingTimeMinutes   REAL,
    PrimaryImageUrl      TEXT,
    ThumbnailUrl         TEXT,
    VideoEmbedUrl        TEXT,
    AudioEmbedUrl        TEXT,
    ExternalReferenceId  INTEGER,
    IsPlagiarized        BOOLEAN,
    PlagiarismScore      REAL,
    CreatedAt            DATETIME,
    UpdatedAt            DATETIME,
    FOREIGN KEY (PostId) REFERENCES posts (Id),
    FOREIGN KEY (ExternalReferenceId) REFERENCES external_reference_links (ReferenceId)
);

INSERT INTO post_metadata_extended VALUES (1, 101, 'en', 'CC-BY', 0, NULL, NULL, NULL, 1, '2025-01-01', '2025-01-31', 'General', 0, 1500, 7.5, 'https://example.com/img1.jpg', 'https://example.com/thumb1.jpg', 'https://youtube.com/embed/abc123', NULL, 1, 0, 0.0, '2025-01-02 08:00:00', '2025-01-05 12:00:00');
INSERT INTO post_metadata_extended VALUES (2, 102, 'es', 'PublicDomain', 1, 'AcmeAds', '2025-02-01', '2025-02-28', 0, NULL, NULL, 'General', 0, 800, 4.2, 'https://example.com/img2.jpg', 'https://example.com/thumb2.jpg', NULL, 'https://soundcloud.com/track/xyz', 2, 0, 0.0, '2025-02-03 09:30:00', '2025-02-06 14:20:00');
INSERT INTO post_metadata_extended VALUES (3, 103, 'de', 'CC0', 0, NULL, NULL, NULL, 0, NULL, NULL, 'Mature', 1, 2000, 10.0, 'https://example.com/img3.jpg', 'https://example.com/thumb3.jpg', 'https://vimeo.com/123456', NULL, 3, 1, 0.85, '2025-03-04 11:15:00', '2025-03-07 16:45:00');

-- Table capturing community insights per tag
CREATE TABLE tag_community_insights
(
    InsightId            INTEGER PRIMARY KEY,
    TagId                INTEGER,
    ActiveUserCount      INTEGER,
    MonthlyQuestionCount INTEGER,
    MonthlyAnswerCount   INTEGER,
    AverageAnswerScore   REAL,
    UnansweredQuestionPct REAL,
    TopContributorUserId INTEGER,
    TopContributorScore  REAL,
    RecentGrowthRatePct  REAL,
    AvgResponseTimeMin   REAL,
    FavoriteCount        INTEGER,
    WatchCount           INTEGER,
    IsTrending           BOOLEAN,
    TrendScore           REAL,
    RelatedTags          TEXT,
    CommonKeywords       TEXT,
    SeasonalPeakMonth    TEXT,
    LanguageDistribution TEXT,
    SentimentScore       REAL,
    CommunityHealthScore REAL,
    LastInsightUpdate   DATETIME,
    FOREIGN KEY (TagId) REFERENCES tags (Id),
    FOREIGN KEY (TopContributorUserId) REFERENCES users (Id)
);

INSERT INTO tag_community_insights VALUES (1, 10, 1200, 350, 800, 4.2, 12.5, 101, 95.0, 8.3, 45.0, 500, 300, 1, 0.91, 'deeplearning,neuralnetworks', 'training,optimizer,loss', 'June', 'en:80,es:10,de:10', 0.15, 0.88, '2025-01-08 10:00:00');
INSERT INTO tag_community_insights VALUES (2, 20, 850, 200, 450, 3.8, 18.0, 102, 88.5, 5.2, 60.0, 300, 180, 0, 0.67, 'arrays,linkedlists', 'algorithm,complexity,search', 'September', 'en:70,fr:20,es:10', -0.05, 0.74, '2025-01-09 11:30:00');
INSERT INTO tag_community_insights VALUES (3, 30, 400, 90, 110, 4.9, 5.0, 103, 99.0, 12.0, 30.0, 150, 90, 1, 0.96, 'wavefunction,entanglement', 'quantum,physics,experiment', 'December', 'en:95,de:5', 0.25, 0.93, '2025-01-10 14:45:00');

-- Table tracking post advertising placements
CREATE TABLE post_advertising
(
    PostAdId             INTEGER PRIMARY KEY,
    PostId               INTEGER,
    AdPlacementId        INTEGER,
    CampaignId           INTEGER,
    StartDate            DATE,
    EndDate              DATE,
    Impressions          INTEGER,
    Clicks               INTEGER,
    Revenue              REAL,
    CPM                  REAL,
    CPC                  REAL,
    TargetAudience       TEXT,
    DeviceTarget         TEXT,
    GeoTarget            TEXT,
    IsActive             BOOLEAN,
    CreatedAt            DATETIME,
    UpdatedAt            DATETIME,
    LastServedAt         DATETIME,
    FrequencyCap         INTEGER,
    IsPremiumPlacement   BOOLEAN,
    ReservedBudget       REAL,
    FOREIGN KEY (PostId) REFERENCES posts (Id)
);

INSERT INTO post_advertising VALUES (1, 101, 501, 2001, '2025-01-01', '2025-02-28', 1200, 35, 9.8, 8.2, 0.28, 'TechEnthusiasts', 'Desktop', 'US', 1, '2025-01-02 08:00:00', '2025-02-01 12:00:00', '2025-02-15 14:00:00', 3, 0, 500.0);
INSERT INTO post_advertising VALUES (2, 102, 502, 2002, '2025-02-01', '2025-03-31', 1800, 60, 14.5, 7.9, 0.24, 'Developers', 'Mobile', 'CA', 1, '2025-02-03 09:30:00', '2025-03-05 15:20:00', '2025-03-20 10:30:00', 2, 1, 800.0);
INSERT INTO post_advertising VALUES (3, 103, 503, 2003, '2025-03-01', '2025-04-30', 950, 20, 5.2, 9.0, 0.26, 'Scientists', 'Tablet', 'GB', 0, '2025-03-04 11:15:00', '2025-04-10 16:45:00', NULL, 4, 0, 300.0);

-- Table describing tag categorization hierarchy
CREATE TABLE tag_category_hierarchy
(
    HierarchyId          INTEGER PRIMARY KEY,
    TagId                INTEGER,
    CategoryLevel1       TEXT,
    CategoryLevel2       TEXT,
    CategoryLevel3       TEXT,
    CategoryLevel4       TEXT,
    PrimaryCategory      TEXT,
    SecondaryCategory    TEXT,
    TertiaryCategory     TEXT,
    IsLeafNode           BOOLEAN,
    ChildCount           INTEGER,
    ParentTagId          INTEGER,
    PathFromRoot         TEXT,
    DisplayOrder         INTEGER,
    CreatedAt            DATETIME,
    UpdatedAt            DATETIME,
    IsActive             BOOLEAN,
    Description          TEXT,
    PopularityScore      REAL,
    RelevanceScore       REAL,
    AssociatedTopics     TEXT,
    TagSynonymGroupId    INTEGER,
    FOREIGN KEY (TagId) REFERENCES tags (Id),
    FOREIGN KEY (ParentTagId) REFERENCES tags (Id)
);

INSERT INTO tag_category_hierarchy VALUES (1, 10, 'Technology', 'Programming', 'MachineLearning', 'DeepLearning', 'MachineLearning', 'DeepLearning', NULL, 0, 0, 5, '/Technology/Programming/MachineLearning/DeepLearning', 1, '2025-01-02 08:00:00', '2025-01-05 12:00:00', 1, 'Advanced deep learning techniques', 0.92, 0.88, 'neuralnetworks,cnn', 1001);
INSERT INTO tag_category_hierarchy VALUES (2, 20, 'Technology', 'Programming', 'DataStructures', NULL, 'DataStructures', NULL, NULL, 0, 0, 5, '/Technology/Programming/DataStructures', 2, '2025-01-03 09:30:00', '2025-01-06 14:20:00', 1, 'Fundamental data structure concepts', 0.78, 0.75, 'arrays,linkedlists', 1002);
INSERT INTO tag_category_hierarchy VALUES (3, 30, 'Science', 'Physics', 'QuantumMechanics', NULL, 'QuantumMechanics', NULL, NULL, 0, 0, 12, '/Science/Physics/QuantumMechanics', 3, '2025-01-04 11:15:00', '2025-01-07 16:45:00', 1, 'Core quantum mechanics topics', 0.85, 0.80, 'entanglement,wavefunction', 1003);

-- Table logging post collaboration edit details
CREATE TABLE post_collaborative_edits
(
    EditId               INTEGER PRIMARY KEY,
    PostId               INTEGER,
    EditorUserId         INTEGER,
    EditTimestamp        DATETIME,
    SectionEdited        TEXT,
    ChangeType           TEXT,
    LinesAdded           INTEGER,
    LinesDeleted         INTEGER,
    WordCountDelta       INTEGER,
    IsMajorEdit          BOOLEAN,
    ReviewStatus         TEXT,
    ReviewerUserId       INTEGER,
    ReviewTimestamp      DATETIME,
    Comments             TEXT,
    ConflictDetected     BOOLEAN,
    ResolvedByUserId     INTEGER,
    ResolutionTimestamp  DATETIME,
    EditSource           TEXT,
    DeviceId             TEXT,
    IPAddress            TEXT,
    SessionId            TEXT,
    FOREIGN KEY (PostId) REFERENCES posts (Id),
    FOREIGN KEY (EditorUserId) REFERENCES users (Id),
    FOREIGN KEY (ReviewerUserId) REFERENCES users (Id)
);

INSERT INTO post_collaborative_edits VALUES (1, 101, 101, '2025-01-09 08:10:00', 'Introduction', 'Addition', 15, 0, 120, 1, 'Approved', 102, '2025-01-09 08:20:00', 'Added overview paragraph', 0, NULL, NULL, 'Web', 'DEV12345', '192.0.2.1', 'SID001');
INSERT INTO post_collaborative_edits VALUES (2, 101, 103, '2025-01-09 08:30:00', 'CodeExample', 'Modification', 5, 3, -30, 0, 'Pending', NULL, NULL, 'Adjusted code syntax', 1, 102, '2025-01-09 08:45:00', 'Web', 'DEV67890', '203.0.113.5', 'SID002');
INSERT INTO post_collaborative_edits VALUES (3, 102, 104, '2025-01-10 10:35:00', 'Conclusion', 'Deletion', 0, 8, -80, 0, 'Approved', 103, '2025-01-10 11:00:00', 'Removed outdated summary', 0, NULL, NULL, 'Desktop', 'DEV54321', '198.51.100.23', 'SID003');