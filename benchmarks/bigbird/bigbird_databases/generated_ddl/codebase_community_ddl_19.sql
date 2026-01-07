-- Table storing user security questions and hashed answers
CREATE TABLE user_security_questions
(
    Id INTEGER PRIMARY KEY,
    UserId INTEGER,
    QuestionId INTEGER,
    QuestionText TEXT,
    AnswerHash TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    IsActive INTEGER,
    AttemptCount INTEGER,
    LastAttemptAt DATETIME,
    LockoutUntil DATETIME,
    NotificationSent INTEGER,
    CreatedBy INTEGER,
    UpdatedBy INTEGER,
    SourceIp TEXT,
    DeviceId TEXT,
    Region TEXT,
    LanguageCode TEXT,
    Salt TEXT,
    HashMethod TEXT
);
INSERT INTO user_security_questions VALUES (1, 1, 101, 'What is your mothers maiden name', 'hash001', '2023-01-01 10:00:00', '2023-01-01 10:00:00', 1, 0, NULL, NULL, 0, 1, 1, '10.0.0.1', 'devA', 'US', 'en', 'saltA', 'SHA256');
INSERT INTO user_security_questions VALUES (2, 2, 102, 'What was the name of your first pet', 'hash002', '2023-01-02 11:30:00', '2023-01-02 11:30:00', 1, 1, '2023-01-03 09:00:00', NULL, 0, 2, 2, '10.0.0.2', 'devB', 'CA', 'en', 'saltB', 'SHA256');
INSERT INTO user_security_questions VALUES (3, 3, 103, 'What city were you born in', 'hash003', '2023-01-03 09:15:00', '2023-01-04 12:45:00', 0, 3, '2023-01-05 08:20:00', '2023-01-07 00:00:00', 1, 3, 3, '10.0.0.3', 'devC', 'GB', 'en', 'saltC', 'SHA256');

-- Table recording detailed edit audit information for posts
CREATE TABLE post_edit_audits
(
    Id INTEGER PRIMARY KEY,
    PostId INTEGER,
    EditorUserId INTEGER,
    EditStartTime DATETIME,
    EditEndTime DATETIME,
    EditDurationSeconds INTEGER,
    OriginalBody TEXT,
    UpdatedBody TEXT,
    ChangeSummary TEXT,
    IsMinorEdit INTEGER,
    ApprovedByUserId INTEGER,
    ApprovalTime DATETIME,
    RejectionReason TEXT,
    RollbackCount INTEGER,
    EditSessionId TEXT,
    ClientIp TEXT,
    UserAgent TEXT,
    Platform TEXT,
    BrowserVersion TEXT,
    JsonPatch TEXT
);
INSERT INTO post_edit_audits VALUES (1, 10, 5, '2023-02-01 08:00:00', '2023-02-01 08:02:30', 150, 'Old body A', 'New body A', 'Fixed typo', 1, 7, '2023-02-01 09:00:00', '', 0, 'sess001', '192.168.10.1', 'Chrome', 'Windows', '89.0', '{}');
INSERT INTO post_edit_audits VALUES (2, 11, 6, '2023-02-02 14:15:00', '2023-02-02 14:20:45', 345, 'Old body B', 'New body B', 'Added example code', 0, 8, '2023-02-02 15:00:00', '', 1, 'sess002', '192.168.10.2', 'Firefox', 'Linux', '78.0', '{}');
INSERT INTO post_edit_audits VALUES (3, 12, 7, '2023-02-03 20:05:00', '2023-02-03 20:07:10', 130, 'Old body C', 'New body C', 'Removed irrelevant paragraph', 1, NULL, NULL, 'Spam content', 0, 'sess003', '192.168.10.3', 'Safari', 'macOS', '14.0', '{}');

-- Table storing private messages between forum users
CREATE TABLE forum_private_messages
(
    Id INTEGER PRIMARY KEY,
    SenderUserId INTEGER,
    ReceiverUserId INTEGER,
    Subject TEXT,
    Body TEXT,
    SentAt DATETIME,
    IsRead INTEGER,
    ReadAt DATETIME,
    IsDeletedBySender INTEGER,
    IsDeletedByReceiver INTEGER,
    AttachmentCount INTEGER,
    ThreadId INTEGER,
    ParentMessageId INTEGER,
    MessagePriority INTEGER,
    EncryptionKeyId INTEGER,
    ExpirationDate DATETIME,
    SpamScore REAL,
    IsFlagged INTEGER,
    FlagReason TEXT,
    FlaggedByUserId INTEGER,
    FlaggedAt DATETIME,
    ConversationState TEXT,
    ReplyCount INTEGER,
    LastReplyAt DATETIME
);
INSERT INTO forum_private_messages VALUES (1, 1, 2, 'Welcome', 'Hello welcome to the forum', '2023-03-01 09:00:00', 0, NULL, 0, 0, 0, 1001, NULL, 1, NULL, NULL, 0.1, 0, NULL, NULL, NULL, 'active', 0, NULL);
INSERT INTO forum_private_messages VALUES (2, 2, 1, 'Re: Welcome', 'Thanks for the warm welcome', '2023-03-01 09:15:00', 0, NULL, 0, 0, 0, 1001, 1, 1, NULL, NULL, 0.0, 0, NULL, NULL, NULL, 'active', 1, '2023-03-01 09:15:00');
INSERT INTO forum_private_messages VALUES (3, 3, 4, 'Question about post', 'Can you clarify your last point?', '2023-03-02 11:20:00', 1, '2023-03-02 12:00:00', 0, 0, 0, 1002, NULL, 2, NULL, NULL, 0.2, 1, 'Offtopic', 2, '2023-03-02 12:10:00', 'closed', 0, NULL);

-- Table defining target audiences for advertising campaigns
CREATE TABLE advertiser_campaign_targets
(
    Id INTEGER PRIMARY KEY,
    CampaignId INTEGER,
    TargetSegmentId INTEGER,
    Geography TEXT,
    AgeMin INTEGER,
    AgeMax INTEGER,
    Gender TEXT,
    InterestCategory TEXT,
    DeviceType TEXT,
    Platform TEXT,
    LanguageCode TEXT,
    BidMultiplier REAL,
    DailyBudget REAL,
    StartDate DATE,
    EndDate DATE,
    IsActive INTEGER,
    CreatedAt DATETIME,
    CreatedByUserId INTEGER,
    UpdatedAt DATETIME,
    UpdatedByUserId INTEGER,
    ExclusionList TEXT,
    FrequencyCap INTEGER,
    FrequencyCapPeriod TEXT
);
INSERT INTO advertiser_campaign_targets VALUES (1, 2001, 301, 'US', 18, 35, 'any', 'technology', 'mobile', 'iOS', 'en', 1.2, 500.0, '2023-04-01', '2023-04-30', 1, '2023-03-20 10:00:00', 10, '2023-03-25 12:00:00', 10, 'blockedDomains', 3, 'day');
INSERT INTO advertiser_campaign_targets VALUES (2, 2002, 302, 'CA', 25, 45, 'female', 'fashion', 'desktop', 'Windows', 'en', 1.0, 300.0, '2023-05-01', '2023-05-31', 1, '2023-04-01 09:30:00', 11, '2023-04-05 11:15:00', 11, 'none', 5, 'hour');
INSERT INTO advertiser_campaign_targets VALUES (3, 2003, 303, 'GB', 30, 60, 'male', 'finance', 'tablet', 'Android', 'en', 0.9, 400.0, '2023-06-01', '2023-06-30', 0, '2023-05-10 08:45:00', 12, '2023-05-12 14:20:00', 12, 'excludedIPs', 2, 'day');

-- Table tracking historical changes of API keys
CREATE TABLE api_key_history
(
    Id INTEGER PRIMARY KEY,
    ApiKeyId INTEGER,
    ActionType TEXT,
    PerformedByUserId INTEGER,
    PerformedAt DATETIME,
    IpAddress TEXT,
    UserAgent TEXT,
    ExpirationDate DATETIME,
    RevokedReason TEXT,
    IsActive INTEGER,
    Scope TEXT,
    RateLimit INTEGER,
    Notes TEXT,
    PreviousHash TEXT,
    NewHash TEXT,
    RotationCount INTEGER,
    LastUsedAt DATETIME,
    LastUsedIp TEXT,
    LastUsedUserAgent TEXT,
    AuditTrailId INTEGER
);
INSERT INTO api_key_history VALUES (1, 5001, 'create', 1, '2023-01-10 08:00:00', '10.1.1.1', 'Postman', '2024-01-10', '', 1, 'read,write', 1000, 'initial key', '', 'hashA', 0, NULL, NULL, NULL, 9001);
INSERT INTO api_key_history VALUES (2, 5001, 'rotate', 2, '2023-06-15 14:30:00', '10.1.1.2', 'curl', '2024-06-15', '', 1, 'read,write', 1000, 'rotated key', 'hashA', 'hashB', 1, NULL, NULL, NULL, 9002);
INSERT INTO api_key_history VALUES (3, 5001, 'revoke', 3, '2023-12-01 09:45:00', '10.1.1.3', 'browser', NULL, 'security breach', 0, 'read,write', 1000, 'revoked due to breach', 'hashB', '', 2, NULL, NULL, NULL, 9003);

-- Table logging content access events
CREATE TABLE content_access_logs
(
    Id INTEGER PRIMARY KEY,
    ContentId INTEGER,
    ContentType TEXT,
    AccessedByUserId INTEGER,
    AccessedAt DATETIME,
    AccessMethod TEXT,
    IpAddress TEXT,
    GeoCountry TEXT,
    DeviceType TEXT,
    Browser TEXT,
    ReferrerUrl TEXT,
    IsSuccessful INTEGER,
    HttpStatusCode INTEGER,
    ResponseTimeMs INTEGER,
    SessionId TEXT,
    UserAgent TEXT,
    AuthenticationMethod TEXT,
    PermissionLevel TEXT,
    DownloadSizeBytes INTEGER,
    CacheHit INTEGER,
    ErrorMessage TEXT
);
INSERT INTO content_access_logs VALUES (1, 100, 'post', 1, '2023-07-01 10:05:00', 'view', '192.0.2.1', 'US', 'desktop', 'Chrome', 'https://search.example.com', 1, 200, 120, 'sessA', 'Chrome/92.0', 'token', 'full', 0, 1, '');
INSERT INTO content_access_logs VALUES (2, 101, 'badge', 2, '2023-07-01 10:07:30', 'download', '192.0.2.2', 'CA', 'mobile', 'Safari', 'https://profile.example.com', 1, 200, 80, 'sessB', 'Safari/14.0', 'oauth', 'read', 2048, 0, '');
INSERT INTO content_access_logs VALUES (3, 102, 'user', 3, '2023-07-01 10:10:15', 'api', '192.0.2.3', 'GB', 'tablet', 'Firefox', 'https://api.example.com', 0, 403, 150, 'sessC', 'Firefox/89.0', 'apiKey', 'none', 0, 0, 'Access denied');

-- Table storing user profile image metadata
CREATE TABLE user_profile_images
(
    Id INTEGER PRIMARY KEY,
    UserId INTEGER,
    ImageUrl TEXT,
    ThumbnailUrl TEXT,
    UploadDate DATETIME,
    Width INTEGER,
    Height INTEGER,
    FileSizeBytes INTEGER,
    ContentType TEXT,
    IsPrimary INTEGER,
    IsVerified INTEGER,
    VerificationDate DATETIME,
    UploadedByUserId INTEGER,
    SourceDevice TEXT,
    GeoLocation TEXT,
    CameraModel TEXT,
    Aperture REAL,
    ExposureTime REAL,
    Iso INTEGER,
    Orientation TEXT,
    ColorProfile TEXT,
    Tags TEXT,
    Description TEXT,
    License TEXT
);
INSERT INTO user_profile_images VALUES (1, 1, 'https://cdn.example.com/img1.jpg', 'https://cdn.example.com/thumb1.jpg', '2023-08-01 09:00:00', 800, 600, 150000, 'image/jpeg', 1, 1, '2023-08-02 10:00:00', 1, 'iPhone', 'US', 'iPhone12', 1.8, 0.01, 100, 'portrait', 'sRGB', 'selfie,profile', 'User profile picture', 'CC0');
INSERT INTO user_profile_images VALUES (2, 2, 'https://cdn.example.com/img2.png', 'https://cdn.example.com/thumb2.png', '2023-08-05 14:30:00', 1024, 768, 250000, 'image/png', 0, 0, NULL, 2, 'Android', 'CA', 'Pixel5', 2.0, 0.008, 200, 'landscape', 'AdobeRGB', 'vacation,beach', 'Beach photo', 'AllRightsReserved');
INSERT INTO user_profile_images VALUES (3, 3, 'https://cdn.example.com/img3.gif', 'https://cdn.example.com/thumb3.gif', '2023-08-10 11:15:00', 500, 500, 50000, 'image/gif', 0, 0, NULL, 3, 'Desktop', 'GB', 'N/A', 0, 0, 0, 'square', 'None', 'avatar,fun', 'Animated avatar', 'CCBY');

-- Table summarizing daily site traffic statistics
CREATE TABLE site_traffic_summary
(
    Id INTEGER PRIMARY KEY,
    SummaryDate DATE,
    TotalVisits INTEGER,
    UniqueVisitors INTEGER,
    PageViews INTEGER,
    AvgSessionDurationSeconds INTEGER,
    BounceRate REAL,
    NewVisitorRate REAL,
    MobileVisits INTEGER,
    DesktopVisits INTEGER,
    TabletVisits INTEGER,
    TopReferrerDomain TEXT,
    TopLandingPage TEXT,
    AvgPagesPerVisit REAL,
    TrafficSourceOrganic INTEGER,
    TrafficSourcePaid INTEGER,
    TrafficSourceReferral INTEGER,
    TrafficSourceDirect INTEGER,
    GeoTopCountry TEXT,
    GeoTopRegion TEXT,
    GeoTopCity TEXT,
    ServerResponseTimeMs INTEGER,
    ErrorsCount INTEGER,
    DataCollectedAt DATETIME
);
INSERT INTO site_traffic_summary VALUES (1, '2023-09-01', 12000, 8000, 35000, 300, 0.45, 0.55, 7000, 4000, 1000, 'google.com', '/home', 2.9, 6000, 2000, 3000, 3000, 'US', 'California', 'LosAngeles', 120, 5, '2023-09-01 23:59:59');
INSERT INTO site_traffic_summary VALUES (2, '2023-09-02', 13000, 8500, 38000, 320, 0.42, 0.58, 7500, 4200, 1300, 'bing.com', '/questions', 3.0, 6200, 2100, 3200, 3500, 'CA', 'Ontario', 'Toronto', 115, 3, '2023-09-02 23:59:59');
INSERT INTO site_traffic_summary VALUES (3, '2023-09-03', 11000, 7500, 33000, 290, 0.48, 0.52, 6500, 3800, 700, 'yahoo.com', '/tags', 2.8, 5800, 1900, 2800, 2500, 'GB', 'England', 'London', 130, 4, '2023-09-03 23:59:59');

-- Table recording assessments for learning modules
CREATE TABLE learning_module_assessments
(
    Id INTEGER PRIMARY KEY,
    ModuleId INTEGER,
    UserId INTEGER,
    AttemptNumber INTEGER,
    StartedAt DATETIME,
    CompletedAt DATETIME,
    Score REAL,
    PassFail TEXT,
    TimeTakenSeconds INTEGER,
    HintUsedCount INTEGER,
    QuestionCount INTEGER,
    CorrectAnswerCount INTEGER,
    IncorrectAnswerCount INTEGER,
    SkippedQuestionCount INTEGER,
    ProctoringSessionId TEXT,
    DeviceType TEXT,
    Browser TEXT,
    IpAddress TEXT,
    GeoCountry TEXT,
    FeedbackText TEXT,
    InstructorComments TEXT,
    RegradeRequested INTEGER,
    RegradeStatus TEXT,
    RegradeDecisionAt DATETIME,
    CertificationAwarded INTEGER
);
INSERT INTO learning_module_assessments VALUES (1, 301, 1, 1, '2023-10-01 08:00:00', '2023-10-01 08:30:00', 85.5, 'Pass', 1800, 0, 20, 17, 3, 0, 'prov001', 'desktop', 'Chrome', '203.0.113.1', 'US', 'Good', 'Well done', 0, 'none', NULL, 1);
INSERT INTO learning_module_assessments VALUES (2, 301, 2, 1, '2023-10-01 09:15:00', '2023-10-01 09:45:00', 72.0, 'Pass', 1800, 1, 20, 14, 6, 0, 'prov002', 'mobile', 'Safari', '203.0.113.2', 'CA', 'Need review', 'Please revisit module', 0, 'none', NULL, 0);
INSERT INTO learning_module_assessments VALUES (3, 301, 3, 2, '2023-10-02 10:00:00', '2023-10-02 10:40:00', 65.0, 'Fail', 2400, 2, 20, 13, 7, 0, 'prov003', 'tablet', 'Firefox', '203.0.113.3', 'GB', 'Challenging', 'Consider extra tutoring', 1, 'pending', NULL, 0);

-- Table tracking financial settlements with partners
CREATE TABLE partner_financial_settlements
(
    Id INTEGER PRIMARY KEY,
    PartnerId INTEGER,
    SettlementDate DATE,
    CurrencyCode TEXT,
    GrossAmount REAL,
    TaxAmount REAL,
    NetAmount REAL,
    PaymentMethod TEXT,
    TransactionReference TEXT,
    InvoiceNumber TEXT,
    PaymentStatus TEXT,
    ProcessedByUserId INTEGER,
    ProcessedAt DATETIME,
    Notes TEXT,
    ExchangeRateToUSD REAL,
    SettlementPeriodStart DATE,
    SettlementPeriodEnd DATE,
    DisputedAmount REAL,
    DisputeReason TEXT,
    DisputeResolved INTEGER,
    ResolutionDate DATE,
    AdjustedNetAmount REAL,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);
INSERT INTO partner_financial_settlements VALUES (1, 401, '2023-11-01', 'USD', 10000.00, 1500.00, 8500.00, 'bank_transfer', 'TXN1001', 'INV1001', 'completed', 10, '2023-11-02 10:00:00', 'monthly settlement', 1.0, '2023-10-01', '2023-10-31', 0.0, '', 0, NULL, 8500.00, '2023-11-01 09:00:00', '2023-11-01 09:00:00');
INSERT INTO partner_financial_settlements VALUES (2, 402, '2023-11-15', 'EUR', 8000.00, 1200.00, 6800.00, 'paypal', 'TXN1002', 'INV1002', 'pending', 11, '2023-11-16 11:30:00', 'quarterly settlement', 1.1, '2023-10-01', '2023-12-31', 200.00, 'late invoice', 0, NULL, 6600.00, '2023-11-15 10:00:00', '2023-11-15 10:00:00');
INSERT INTO partner_financial_settlements VALUES (3, 403, '2023-12-01', 'GBP', 5000.00, 750.00, 4250.00, 'check', 'TXN1003', 'INV1003', 'completed', 12, '2023-12-02 14:20:00', 'annual settlement', 1.3, '2022-12-01', '2023-11-30', 0.0, '', 0, NULL, 4250.00, '2023-12-01 13:00:00', '2023-12-01 13:00:00');