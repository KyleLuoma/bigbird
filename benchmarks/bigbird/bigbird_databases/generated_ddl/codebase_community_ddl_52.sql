-- Table storing each user's education background
CREATE TABLE user_education_history (
    Id INTEGER PRIMARY KEY,
    UserId INTEGER,
    InstitutionName TEXT,
    Degree TEXT,
    FieldOfStudy TEXT,
    StartDate DATE,
    EndDate DATE,
    GPA REAL,
    Honors TEXT,
    Activities TEXT,
    Country TEXT,
    City TEXT,
    ThesisTitle TEXT,
    AdvisorName TEXT,
    IsCurrent INTEGER,
    CreditsEarned INTEGER,
    ProgramLevel TEXT,
    LanguageOfInstruction TEXT,
    AccreditationBody TEXT,
    TranscriptUrl TEXT,
    CreatedAt DATETIME
);
INSERT INTO user_education_history VALUES (1, 101, 'UniversityX', 'Bachelors', 'ComputerScience', '2015-09-01', '2019-06-01', 3.5, 'SummaCumLaude', 'ChessClub', 'USA', 'Springfield', 'DistributedSystems', 'ProfSmith', 0, 120, 'Undergrad', 'English', 'RegionalAccreditor', 'http://example.com/transcript1.pdf', '2023-01-01 08:00:00');
INSERT INTO user_education_history VALUES (2, 102, 'InstituteY', 'Masters', 'DataScience', '2020-01-15', '2022-05-30', 3.8, 'MagnaCumLaude', 'DataClub', 'Canada', 'Toronto', 'DeepLearning', 'ProfLee', 0, 45, 'Graduate', 'English', 'NationalAccreditor', 'http://example.com/transcript2.pdf', '2023-02-10 09:30:00');
INSERT INTO user_education_history VALUES (3, 103, 'CollegeZ', 'PhD', 'ArtificialIntelligence', '2018-09-01', NULL, 4.0, 'DeanList', 'ResearchGroup', 'UK', 'London', 'NeuralNetworks', 'ProfBrown', 1, 60, 'Doctorate', 'English', 'InternationalAccreditor', 'http://example.com/transcript3.pdf', '2023-03-20 11:45:00');

-- Table linking posts to their media assets
CREATE TABLE post_media_metadata (
    Id INTEGER PRIMARY KEY,
    PostId INTEGER,
    MediaType TEXT,
    Url TEXT,
    Width INTEGER,
    Height INTEGER,
    DurationSeconds INTEGER,
    FileSizeBytes INTEGER,
    MimeType TEXT,
    Caption TEXT,
    AltText TEXT,
    UploadedByUserId INTEGER,
    UploadDate DATETIME,
    License TEXT,
    CopyrightHolder TEXT,
    IsPrimary INTEGER,
    SortOrder INTEGER,
    ThumbnailUrl TEXT,
    AspectRatio REAL,
    Description TEXT,
    Tags TEXT
);
INSERT INTO post_media_metadata VALUES (1, 2001, 'image', 'http://example.com/img1.png', 800, 600, NULL, 152300, 'image/png', 'Diagram of algorithm', 'Algorithm diagram', 101, '2023-04-01 10:00:00', 'CC0', 'OpenSourceOrg', 1, 1, 'http://example.com/thumb1.png', 1.33, 'An illustrative diagram', 'algorithm,diagram');
INSERT INTO post_media_metadata VALUES (2, 2002, 'video', 'http://example.com/vid1.mp4', 1280, 720, 180, 25000000, 'video/mp4', 'Demo walk‑through', 'Demo video', 102, '2023-04-02 11:15:00', 'StandardLicense', 'CompanyX', 0, 2, 'http://example.com/thumb2.png', 1.78, 'A short demonstration video', 'demo,video');
INSERT INTO post_media_metadata VALUES (3, 2003, 'audio', 'http://example.com/audio1.mp3', NULL, NULL, 240, 8000000, 'audio/mpeg', 'Explanation audio', 'Explanation audio', 103, '2023-04-03 12:30:00', 'CreativeCommons', 'AuthorY', 0, 3, 'http://example.com/thumb3.png', NULL, 'Audio explanation of concept', 'audio,explanation');

-- Table storing community metrics per tag
CREATE TABLE tag_community_metrics (
    Id INTEGER PRIMARY KEY,
    TagId INTEGER,
    WeeklyQuestionCount INTEGER,
    WeeklyAnswerCount INTEGER,
    WeeklyViewCount INTEGER,
    MonthlyQuestionCount INTEGER,
    MonthlyAnswerCount INTEGER,
    MonthlyViewCount INTEGER,
    ReputationEarned INTEGER,
    NewUsersJoined INTEGER,
    ActiveUsers INTEGER,
    AvgScore REAL,
    TopUserId INTEGER,
    TrendingScore REAL,
    LastUpdated DATETIME,
    SuggestedEditCount INTEGER,
    FlagCount INTEGER,
    BadgesAwarded INTEGER,
    SynonymCount INTEGER,
    RelatedTagCount INTEGER,
    Description TEXT
);
INSERT INTO tag_community_metrics VALUES (1, 10, 25, 80, 5400, 100, 350, 22000, 1500, 30, 200, 4.2, 101, 78.5, '2023-04-10 00:00:00', 12, 5, 20, 3, 15, 'Metrics for tag python');
INSERT INTO tag_community_metrics VALUES (2, 20, 15, 45, 3200, 60, 210, 13000, 800, 20, 120, 3.8, 102, 55.3, '2023-04-11 00:00:00', 8, 2, 12, 1, 10, 'Metrics for tag sql');
INSERT INTO tag_community_metrics VALUES (3, 30, 40, 100, 7200, 150, 480, 3000, 500, 45, 250, 4.7, 103, 92.1, '2023-04-12 00:00:00', 20, 7, 30, 4, 18, 'Metrics for tag javascript');

-- Table defining each user's privacy preferences
CREATE TABLE user_privacy_settings (
    Id INTEGER PRIMARY KEY,
    UserId INTEGER,
    ShowEmail INTEGER,
    ShowLocation INTEGER,
    ShowWebsite INTEGER,
    AllowMessages INTEGER,
    AllowAds INTEGER,
    DataExportConsent INTEGER,
    TwoFactorEnabled INTEGER,
    LoginAlertEnabled INTEGER,
    ProfileVisibility TEXT,
    SearchEngineIndexing INTEGER,
    EmailNotificationsEnabled INTEGER,
    SmsNotificationsEnabled INTEGER,
    PushNotificationsEnabled INTEGER,
    ActivityVisibility TEXT,
    FriendRequestPolicy TEXT,
    DataSharingAgreement INTEGER,
    MarketingEmailsOptIn INTEGER,
    ThemePreference TEXT,
    LanguagePreference TEXT
);
INSERT INTO user_privacy_settings VALUES (1, 101, 0, 1, 0, 1, 0, 1, 1, 1, 'Public', 1, 1, 0, 1, 'FriendsOnly', 'Anyone', 1, 0, 'Dark', 'en');
INSERT INTO user_privacy_settings VALUES (2, 102, 1, 0, 1, 0, 1, 0, 0, 1, 'Private', 0, 0, 1, 0, 'OnlyMe', 'FriendsOfFriends', 0, 1, 'Light', 'fr');
INSERT INTO user_privacy_settings VALUES (3, 103, 0, 0, 0, 1, 1, 1, 1, 0, 'Public', 1, 1, 1, 1, 'Public', 'Anyone', 1, 1, 'System', 'es');

-- Table listing supplementary resources attached to posts
CREATE TABLE post_supplementary_resources (
    Id INTEGER PRIMARY KEY,
    PostId INTEGER,
    ResourceType TEXT,
    Title TEXT,
    Url TEXT,
    Description TEXT,
    AddedByUserId INTEGER,
    AddedDate DATETIME,
    IsVerified INTEGER,
    ViewCount INTEGER,
    DownloadCount INTEGER,
    License TEXT,
    FileSize INTEGER,
    Format TEXT,
    Language TEXT,
    Tags TEXT,
    Rating REAL,
    ReviewCount INTEGER,
    ApprovedByModeratorId INTEGER,
    ApprovalDate DATETIME
);
INSERT INTO post_supplementary_resources VALUES (1, 2001, 'pdf', 'ResearchPaper', 'http://example.com/paper1.pdf', 'Full research paper', 101, '2023-04-05 09:00:00', 1, 150, 45, 'CCBY', 2000000, 'PDF', 'en', 'research,ai', 4.5, 10, 201, '2023-04-06 10:00:00');
INSERT INTO post_supplementary_resources VALUES (2, 2002, 'code', 'GitHubRepo', 'http://github.com/example/repo', 'Source code example', 102, '2023-04-06 10:30:00', 0, 80, 20, 'MIT', 500000, 'ZIP', 'en', 'code,example', 4.0, 5, 202, '2023-04-07 11:00:00');
INSERT INTO post_supplementary_resources VALUES (3, 2003, 'slide', 'PresentationSlides', 'http://example.com/slides.pptx', 'Slide deck from talk', 103, '2023-04-07 12:15:00', 1, 200, 60, 'CC0', 3000000, 'PPTX', 'en', 'presentation,talk', 4.8, 12, 203, '2023-04-08 13:00:00');

-- Table aggregating metrics for each forum category
CREATE TABLE forum_category_metrics (
    Id INTEGER PRIMARY KEY,
    CategoryId INTEGER,
    TotalThreads INTEGER,
    TotalPosts INTEGER,
    ActiveUsersLast30Days INTEGER,
    NewThreadsLast30Days INTEGER,
    AvgThreadLength INTEGER,
    AvgPostsPerThread REAL,
    MostActiveUserId INTEGER,
    MostRecentThreadId INTEGER,
    LastActivityDate DATETIME,
    CategoryDescription TEXT,
    IconUrl TEXT,
    ColorHex TEXT,
    Position INTEGER,
    IsVisible INTEGER,
    ModerationQueueSize INTEGER,
    SpamCount INTEGER,
    FlagCount INTEGER,
    SubscriptionCount INTEGER
);
INSERT INTO forum_category_metrics VALUES (1, 1, 350, 5400, 120, 45, 12, 3.8, 101, 2005, '2023-04-10 14:00:00', 'General discussion', 'http://example.com/icons/gen.png', 'FFAA00', 1, 1, 5, 2, 10, 300);
INSERT INTO forum_category_metrics VALUES (2, 2, 210, 3200, 80, 30, 15, 4.5, 102, 2010, '2023-04-11 15:30:00', 'Technical help', 'http://example.com/icons/tech.png', '00AAFF', 2, 1, 8, 1, 7, 180);
INSERT INTO forum_category_metrics VALUES (3, 3, 500, 8000, 200, 70, 10, 3.2, 103, 2020, '2023-04-12 16:45:00', 'Feature requests', 'http://example.com/icons/feat.png', 'AAFF00', 3, 1, 12, 3, 15, 420);

-- Audit log for API key actions
CREATE TABLE api_key_audit_log (
    Id INTEGER PRIMARY KEY,
    ApiKeyId INTEGER,
    ActionType TEXT,
    PerformedByUserId INTEGER,
    PerformedAt DATETIME,
    IpAddress TEXT,
    UserAgent TEXT,
    Reason TEXT,
    SuccessFlag INTEGER,
    TokenHash TEXT,
    ExpirationDate DATETIME,
    Scope TEXT,
    RateLimitTier TEXT,
    RevokedByUserId INTEGER,
    RevokedAt DATETIME,
    Notes TEXT,
    RequestCount INTEGER,
    ErrorCount INTEGER,
    LastUsedAt DATETIME,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);
INSERT INTO api_key_audit_log VALUES (1, 1001, 'Create', 101, '2023-04-01 08:00:00', '192.168.1.10', 'PostmanRuntime', 'Initial creation', 1, 'abc123hash', '2024-04-01 08:00:00', 'read,write', 'Standard', NULL, NULL, 'First key for service X', 0, 0, NULL, '2023-04-01 08:00:00', '2023-04-01 08:00:00');
INSERT INTO api_key_audit_log VALUES (2, 1002, 'Revoke', 102, '2023-04-05 09:30:00', '10.0.0.5', 'curl/7.68.0', 'User requested revocation', 1, 'def456hash', '2023-10-05 09:30:00', 'read', 'Premium', 102, '2023-04-05 09:30:00', 'Key revoked due to inactivity', 150, 2, '2023-04-04 12:00:00', '2023-03-01 07:45:00', '2023-04-05 09:30:00');
INSERT INTO api_key_audit_log VALUES (3, 1003, 'Update', 103, '2023-04-10 11:15:00', '172.16.0.2', 'Mozilla/5.0', 'Extended scope', 1, 'ghi789hash', '2025-04-10 11:15:00', 'read,write,admin', 'Enterprise', NULL, NULL, 'Scope expanded for integration', 300, 0, '2023-04-09 16:45:00', '2023-02-20 10:20:00', '2023-04-10 11:15:00');

-- Schedule for device firmware updates
CREATE TABLE device_firmware_update_schedule (
    Id INTEGER PRIMARY KEY,
    DeviceId INTEGER,
    FirmwareVersion TEXT,
    ReleaseDate DATE,
    ScheduledStart DATETIME,
    ScheduledEnd DATETIME,
    UpdateStatus TEXT,
    InitiatedByUserId INTEGER,
    InitiatedAt DATETIME,
    RollbackVersion TEXT,
    RollbackRequired INTEGER,
    EstimatedDurationMinutes INTEGER,
    DownloadUrl TEXT,
    Checksum TEXT,
    ReleaseNotes TEXT,
    Priority INTEGER,
    RetryCount INTEGER,
    LastRetryAt DATETIME,
    FailureReason TEXT,
    CreatedAt DATETIME
);
INSERT INTO device_firmware_update_schedule VALUES (1, 5001, 'v2.1.0', '2023-03-20', '2023-04-15 01:00:00', '2023-04-15 01:30:00', 'Completed', 101, '2023-04-10 09:00:00', 'v2.0.5', 0, 30, 'http://example.com/firmware/v2.1.0.bin', 'checksum123', 'Bug fixes and performance improvements', 1, 0, NULL, NULL, '2023-04-01 08:30:00');
INSERT INTO device_firmware_update_schedule VALUES (2, 5002, 'v3.0.1', '2023-04-01', '2023-04-20 02:00:00', '2023-04-20 02:45:00', 'Failed', 102, '2023-04-12 10:15:00', 'v2.9.9', 1, 45, 'http://example.com/firmware/v3.0.1.bin', 'checksum456', 'Security patch', 2, 2, '2023-04-21 02:30:00', 'Network timeout', '2023-04-02 09:45:00');
INSERT INTO device_firmware_update_schedule VALUES (3, 5003, 'v1.5.3', '2023-02-10', '2023-04-25 03:00:00', '2023-04-25 03:20:00', 'InProgress', 103, '2023-04-15 11:00:00', 'v1.5.2', 0, 20, 'http://example.com/firmware/v1.5.3.bin', 'checksum789', 'Minor UI tweaks', 3, 0, NULL, NULL, '2023-04-05 12:10:00');

-- Workflow tracking for content translation
CREATE TABLE content_translation_workflow (
    Id INTEGER PRIMARY KEY,
    ContentId INTEGER,
    ContentType TEXT,
    SourceLanguage TEXT,
    TargetLanguage TEXT,
    TranslatorUserId INTEGER,
    TranslationStatus TEXT,
    SubmittedAt DATETIME,
    CompletedAt DATETIME,
    QualityScore REAL,
    WordCount INTEGER,
    ReviewUserId INTEGER,
    ReviewStatus TEXT,
    ReviewComments TEXT,
    IntegratedAt DATETIME,
    IntegrationUserId INTEGER,
    VersionNumber INTEGER,
    ChangeLog TEXT,
    MetadataJson TEXT,
    CreatedAt DATETIME
);
INSERT INTO content_translation_workflow VALUES (1, 2001, 'post', 'en', 'es', 101, 'Completed', '2023-04-01 08:00:00', '2023-04-02 09:30:00', 4.7, 350, 102, 'Approved', 'Good translation', '2023-04-03 10:00:00', 103, 1, 'Initial version', '{}', '2023-04-01 07:45:00');
INSERT INTO content_translation_workflow VALUES (2, 2002, 'comment', 'en', 'fr', 102, 'InReview', '2023-04-05 11:15:00', NULL, NULL, 120, 103, 'Pending', '', NULL, NULL, 0, '', '{}', '2023-04-05 11:00:00');
INSERT INTO content_translation_workflow VALUES (3, 2003, 'tag', 'en', 'de', 103, 'Draft', '2023-04-08 14:20:00', NULL, NULL, 15, NULL, NULL, '', NULL, NULL, 0, '', '{}', '2023-04-08 14:00:00');

-- Allocation of budgets for advertising campaigns
CREATE TABLE advertisement_budget_allocation (
    Id INTEGER PRIMARY KEY,
    CampaignId INTEGER,
    Year INTEGER,
    Quarter INTEGER,
    Region TEXT,
    BudgetAmount REAL,
    Currency TEXT,
    AllocatedByUserId INTEGER,
    AllocationDate DATETIME,
    SpendToDate REAL,
    RemainingBudget REAL,
    SpendPercentage REAL,
    ApprovedFlag INTEGER,
    ApprovalUserId INTEGER,
    ApprovalDate DATETIME,
    Notes TEXT,
    CostPerImpression REAL,
    CostPerClick REAL,
    TargetCpm REAL,
    TargetCpc REAL
);
INSERT INTO advertisement_budget_allocation VALUES (1, 3001, 2023, 2, 'NorthAmerica', 50000.00, 'USD', 101, '2023-04-01 09:00:00', 12000.00, 38000.00, 24.0, 1, 102, '2023-04-02 10:15:00', 'Q2 budget', 0.25, 1.00, 5.00, 2.00);
INSERT INTO advertisement_budget_allocation VALUES (2, 3002, 2023, 2, 'Europe', 40000.00, 'EUR', 102, '2023-04-03 11:30:00', 8000.00, 32000.00, 20.0, 1, 103, '2023-04-04 12:45:00', 'Mid‑year adjustment', 0.30, 1.20, 6.00, 2.50);
INSERT INTO advertisement_budget_allocation VALUES (3, 3003, 2023, 3, 'AsiaPacific', 60000.00, 'USD', 103, '2023-04-05 14:00:00', 15000.00, 45000.00, 25.0, 0, NULL, NULL, 'Planned for Q3', 0.22, 0.90, 4.50, 1.80);