-- Table storing references to external resources linked from posts
CREATE TABLE post_external_references
(
    Id                 INTEGER PRIMARY KEY,
    PostId             INTEGER,
    ReferenceUrl       TEXT,
    ReferenceTitle     TEXT,
    Source             TEXT,
    IsArchived         INTEGER,
    CreatedAt          DATETIME,
    UpdatedAt          DATETIME,
    AccessCount        INTEGER,
    Domain             TEXT,
    LinkType           TEXT,
    ConfidenceScore    REAL,
    Notes              TEXT,
    AddedByUserId      INTEGER,
    IsOfficial         INTEGER,
    LanguageCode       TEXT,
    Checksum           TEXT,
    FileSizeBytes      INTEGER,
    MimeType           TEXT,
    ExpirationDate     DATETIME,
    TagList            TEXT,
    CustomFlag         INTEGER,
    FOREIGN KEY (PostId) REFERENCES posts (Id)
);

INSERT INTO post_external_references VALUES (1, 1001, 'https://example.com/doc1', 'Documentation 1', 'ExternalSite', 0, '2025-01-02 09:15:00', '2025-01-05 14:30:00', 12, 'example.com', 'document', 0.92, 'Initial import', 2001, 1, 'en', 'abc123def', 204800, 'application/pdf', '2026-01-01 00:00:00', 'doc,reference', 0);
INSERT INTO post_external_references VALUES (2, 1002, 'https://data.org/api', 'Data API', 'DataProvider', 0, '2025-02-10 11:00:00', '2025-02-12 16:45:00', 5, 'data.org', 'api', 0.85, 'Verified source', 2002, 1, 'en', 'def456ghi', 0, 'application/json', NULL, 'api,data', 1);
INSERT INTO post_external_references VALUES (3, 1003, 'https://archive.net/video', 'Historical Video', 'ArchiveNet', 1, '2024-12-20 08:00:00', '2025-01-01 10:00:00', 0, 'archive.net', 'video', 0.78, 'Archived content', 2003, 0, 'en', 'ghi789jkl', 104857600, 'video/mp4', '2025-12-31 23:59:59', 'video,history', 0);


-- Table describing user skills and related metadata
CREATE TABLE user_skill_matrix
(
    Id                 INTEGER PRIMARY KEY,
    UserId             INTEGER,
    SkillName          TEXT,
    ProficiencyLevel  INTEGER,
    YearsExperience    INTEGER,
    LastUsedDate       DATETIME,
    Certification      TEXT,
    CertificationDate  DATETIME,
    IsVerified         INTEGER,
    SkillCategory      TEXT,
    SkillSubcategory   TEXT,
    SkillScore         REAL,
    AssessmentDate     DATETIME,
    AssessorId         INTEGER,
    Comments           TEXT,
    SkillSource        TEXT,
    SkillVersion       TEXT,
    IsCoreSkill        INTEGER,
    SkillPriority      INTEGER,
    SkillUrl           TEXT,
    SkillNotes         TEXT,
    SkillIndustry      TEXT,
    SkillRegion        TEXT,
    FOREIGN KEY (UserId) REFERENCES users (Id)
);

INSERT INTO user_skill_matrix VALUES (1, 3001, 'Python', 5, 8, '2025-01-15 12:00:00', 'Certified Python Developer', '2022-06-01 00:00:00', 1, 'Programming', 'Scripting', 92.5, '2025-01-20 09:30:00', 4001, 'Strong in data analysis', 'OnlineCourse', 'v3.2', 1, 10, 'https://python.org', 'Used in web services', 'Software', 'NorthAmerica');
INSERT INTO user_skill_matrix VALUES (2, 3002, 'Project Management', 4, 5, '2024-11-05 09:00:00', 'PMP', '2020-03-15 00:00:00', 1, 'Management', 'Agile', 88.0, '2024-11-06 10:45:00', 4002, 'Experienced with SCRUM', 'WorkExperience', '2021', 1, 8, 'https://pmi.org', 'Leading cross‑functional teams', 'Consulting', 'Europe');
INSERT INTO user_skill_matrix VALUES (3, 3003, 'SQL', 5, 10, '2025-02-01 14:20:00', 'Microsoft Certified: Azure Data Engineer', '2023-01-10 00:00:00', 1, 'Database', 'Relational', 95.0, '2025-02-02 08:15:00', 4003, 'Optimized complex queries', 'Certification', '2023', 1, 9, 'https://microsoft.com/sql', 'Designed data warehouses', 'Finance', 'Asia');


-- Table capturing co‑occurrence statistics between tags
CREATE TABLE tag_cooccurrence_matrix
(
    Id                 INTEGER PRIMARY KEY,
    TagAId             INTEGER,
    TagBId             INTEGER,
    CooccurrenceCount  INTEGER,
    JointPostCount     INTEGER,
    AvgScore           REAL,
    MaxScore           INTEGER,
    MinScore           INTEGER,
    FirstCooccurDate   DATETIME,
    LastCooccurDate    DATETIME,
    Confidence         REAL,
    IsStrong           INTEGER,
    CategoryA          TEXT,
    CategoryB          TEXT,
    RelatedTopic       TEXT,
    Weight             REAL,
    Source             TEXT,
    UpdateTimestamp    DATETIME,
    Notes              TEXT,
    IsActive           INTEGER,
    AlgorithmVersion   TEXT,
    Threshold          REAL,
    FOREIGN KEY (TagAId) REFERENCES tags (Id),
    FOREIGN KEY (TagBId) REFERENCES tags (Id)
);

INSERT INTO tag_cooccurrence_matrix VALUES (1, 10, 20, 150, 140, 3.45, 10, 1, '2023-01-01 00:00:00', '2025-01-01 00:00:00', 0.92, 1, 'Programming', 'Database', 'DataAccess', 0.85, 'AnalyticsEngine', '2025-01-02 10:00:00', 'High relevance', 1, 'v2.1', 0.8);
INSERT INTO tag_cooccurrence_matrix VALUES (2, 15, 25, 75, 70, 2.80, 8, 0, '2022-06-15 00:00:00', '2025-01-05 00:00:00', 0.78, 0, 'Web', 'Design', 'Responsive', 0.60, 'StatisticalModel', '2025-01-03 12:30:00', 'Moderate link', 1, 'v2.1', 0.6);
INSERT INTO tag_cooccurrence_matrix VALUES (3, 30, 40, 30, 28, 1.90, 5, 0, '2021-09-10 00:00:00', '2025-01-07 00:00:00', 0.55, 0, 'Security', 'Networking', 'Encryption', 0.40, 'MLPredictor', '2025-01-04 14:45:00', 'Low frequency', 0, 'v2.1', 0.5);


-- Table storing AI‑generated summaries for posts
CREATE TABLE content_ai_summary
(
    Id                 INTEGER PRIMARY KEY,
    PostId             INTEGER,
    SummaryText        TEXT,
    GeneratedAt        DATETIME,
    ModelVersion       TEXT,
    ConfidenceScore    REAL,
    TokenCount         INTEGER,
    PromptUsed         TEXT,
    LanguageCode       TEXT,
    IsApproved         INTEGER,
    ApproverUserId     INTEGER,
    ApprovalDate       DATETIME,
    RevisionNumber     INTEGER,
    Source             TEXT,
    Keywords           TEXT,
    SentimentScore     REAL,
    ReadabilityScore   REAL,
    LengthChars        INTEGER,
    ErrorFlag          INTEGER,
    ProcessingTimeMs   INTEGER,
    Notes              TEXT,
    IsDraft            INTEGER,
    VersionLabel       TEXT,
    FOREIGN KEY (PostId) REFERENCES posts (Id)
);

INSERT INTO content_ai_summary VALUES (1, 1001, 'This post explains how to implement a binary search algorithm in Python.', '2025-01-10 08:00:00', 'gpt-4.0', 0.94, 45, 'Summarize code example', 'en', 1, 2001, '2025-01-11 09:15:00', 1, 'AIEngine', 'binary search,python,algorithm', 0.1, 65.2, 120, 0, 250, 'No issues', 0, 'v1');
INSERT INTO content_ai_summary VALUES (2, 1002, 'A detailed overview of RESTful API design principles and best practices.', '2025-01-12 10:30:00', 'gpt-4.0', 0.89, 60, 'Summarize technical article', 'en', 0, NULL, NULL, 1, 'AIEngine', 'REST,API,design', -0.05, 70.3, 150, 0, 300, 'Pending review', 1, 'draft');
INSERT INTO content_ai_summary VALUES (3, 1003, 'The article discusses recent advancements in quantum computing hardware.', '2025-01-15 14:45:00', 'gpt-4.0', 0.91, 55, 'Summarize research paper', 'en', 1, 2002, '2025-01-16 08:20:00', 2, 'AIEngine', 'quantum computing,hardware,advancements', 0.2, 68.7, 140, 0, 275, 'Approved after edit', 0, 'v2');


-- Table for user‑customizable search facet settings
CREATE TABLE search_facet_customizations
(
    Id                 INTEGER PRIMARY KEY,
    FacetName          TEXT,
    UserId             INTEGER,
    DisplayOrder       INTEGER,
    IsEnabled          INTEGER,
    CustomLabel        TEXT,
    ColorCode          TEXT,
    IconName           TEXT,
    CreatedAt          DATETIME,
    UpdatedAt          DATETIME,
    UsageCount         INTEGER,
    LastUsedAt         DATETIME,
    FilterExpression   TEXT,
    IsGlobal           INTEGER,
    Scope              TEXT,
    Visibility         TEXT,
    DataSource         TEXT,
    IsEditable         INTEGER,
    MaxResults         INTEGER,
    MinResults         INTEGER,
    Description        TEXT,
    DefaultValue       TEXT,
    IsDeprecated       INTEGER,
    FOREIGN KEY (UserId) REFERENCES users (Id)
);

INSERT INTO search_facet_customizations VALUES (1, 'Tag', 3001, 1, 1, 'Topic Tag', '#FFCC00', 'tag-icon', '2025-01-01 09:00:00', '2025-01-10 12:00:00', 250, '2025-01-10 12:00:00', 'tag:python', 0, 'personal', 'public', 'posts', 1, 100, 0, 'Custom tag facet for personal view', 'any', 0);
INSERT INTO search_facet_customizations VALUES (2, 'DateRange', 3002, 2, 1, 'Published Date', '#00CCFF', 'calendar-icon', '2025-01-02 10:15:00', '2025-01-12 11:30:00', 180, '2025-01-12 11:30:00', 'date>2024-01-01', 0, 'personal', 'private', 'posts', 1, 200, 10, 'Allows filtering by recent dates', 'last30days', 0);
INSERT INTO search_facet_customizations VALUES (3, 'Score', 3003, 3, 0, 'Quality Score', '#CCCCCC', 'star-icon', '2025-01-03 08:45:00', '2025-01-15 14:20:00', 75, '2025-01-15 14:20:00', 'score>=8', 0, 'personal', 'private', 'posts', 0, 50, 5, 'Facet disabled by default', '8', 0);


-- Table describing sponsor advertising campaigns
CREATE TABLE sponsor_campaigns
(
    Id                 INTEGER PRIMARY KEY,
    SponsorName        TEXT,
    CampaignName       TEXT,
    StartDate          DATETIME,
    EndDate            DATETIME,
    BudgetAmount       REAL,
    Currency           TEXT,
    TargetAudience     TEXT,
    Impressions        INTEGER,
    Clicks             INTEGER,
    Conversions        INTEGER,
    CostPerClick       REAL,
    CostPerConversion  REAL,
    IsActive           INTEGER,
    CreatedByUserId    INTEGER,
    CreatedAt          DATETIME,
    UpdatedAt          DATETIME,
    CreativeId         INTEGER,
    LandingPageUrl     TEXT,
    Region             TEXT,
    DeviceTarget       TEXT,
    AdFormat           TEXT,
    Notes              TEXT,
    ComplianceStatus   TEXT,
    FOREIGN KEY (CreatedByUserId) REFERENCES users (Id)
);

INSERT INTO sponsor_campaigns VALUES (1, 'TechCorp', 'Spring Launch', '2025-03-01 00:00:00', '2025-06-01 00:00:00', 50000.00, 'USD', 'Developers', 1200000, 4500, 300, 0.11, 166.67, 1, 2001, '2025-02-20 09:00:00', '2025-02-20 09:00:00', 501, 'https://techcorp.com/launch', 'NorthAmerica', 'Desktop', 'Banner', 'First quarter push', 'Compliant');
INSERT INTO sponsor_campaigns VALUES (2, 'DataSolutions', 'Data Week', '2025-04-15 00:00:00', '2025-04-22 00:00:00', 20000.00, 'EUR', 'Data Scientists', 800000, 2100, 150, 0.09, 133.33, 1, 2002, '2025-04-01 10:30:00', '2025-04-10 14:20:00', 502, 'https://datasolutions.eu/week', 'Europe', 'Mobile', 'Video', 'Focus on analytics', 'Pending Review');
INSERT INTO sponsor_campaigns VALUES (3, 'GreenEnergy', 'Eco Initiative', '2025-05-01 00:00:00', '2025-12-31 00:00:00', 75000.00, 'USD', 'General Public', 2500000, 8000, 500, 0.09, 150.00, 1, 2003, '2025-04-20 08:45:00', '2025-04-25 12:00:00', 503, 'https://greenenergy.org/initiative', 'Global', 'All', 'Interstitial', 'Long term branding', 'Approved');


-- Table logging moderator actions on content
CREATE TABLE moderator_activity_logs
(
    Id                 INTEGER PRIMARY KEY,
    ModeratorUserId    INTEGER,
    PostId             INTEGER,
    ActionType         TEXT,
    ActionTimestamp    DATETIME,
    Reason             TEXT,
    Comment            TEXT,
    IsResolved         INTEGER,
    ResolutionTimestamp DATETIME,
    ResolutionUserId   INTEGER,
    PenaltyPoints      INTEGER,
    PreviousStatus     TEXT,
    NewStatus          TEXT,
    WorkflowStage      TEXT,
    EscalationLevel    INTEGER,
    Channel            TEXT,
    WasNotified        INTEGER,
    NotificationMethod TEXT,
    RelatedTicketId    INTEGER,
    DurationSeconds    INTEGER,
    AuditTrailId       INTEGER,
    Metadata           TEXT,
    IsFlagged          INTEGER,
    FOREIGN KEY (ModeratorUserId) REFERENCES users (Id),
    FOREIGN KEY (PostId) REFERENCES posts (Id)
);

INSERT INTO moderator_activity_logs VALUES (1, 4001, 1001, 'Close', '2025-01-20 15:30:00', 'Spam', 'Removed promotional content', 1, '2025-01-20 16:00:00', 4002, 10, 'Open', 'Closed', 'Review', 2, 'Web', 1, 'Email', 9001, 1800, 7001, 'action=close;reason=spam', 1);
INSERT INTO moderator_activity_logs VALUES (2, 4003, 1002, 'Delete', '2025-02-05 11:45:00', 'Harassment', 'User harassed others in comments', 1, '2025-02-05 12:10:00', 4004, 20, 'Visible', 'Deleted', 'Moderation', 3, 'App', 1, 'InApp', 9002, 1500, 7002, 'action=delete;reason=harassment', 1);
INSERT INTO moderator_activity_logs VALUES (3, 4005, 1003, 'Warn', '2025-03-10 09:20:00', 'Low Quality', 'Provided guidance on improvement', 0, NULL, NULL, 0, 'Open', 'Open', 'Warning', 1, 'Email', 0, NULL, 9003, 0, 7003, 'action=warn;reason=low_quality', 0);


-- Table tracking historical quota usage for API consumers
CREATE TABLE api_consumer_quota_history
(
    Id                 INTEGER PRIMARY KEY,
    ConsumerId         INTEGER,
    ApiEndpoint        TEXT,
    QuotaLimit         INTEGER,
    QuotaUsed          INTEGER,
    ResetPeriod        TEXT,
    LastReset          DATETIME,
    CurrentPeriodStart DATETIME,
    CurrentPeriodEnd   DATETIME,
    OverageCharges     REAL,
    IsOverLimit        INTEGER,
    AlertSent          INTEGER,
    AlertThreshold     INTEGER,
    AdjustedQuota      INTEGER,
    AdjustmentReason   TEXT,
    CreatedAt          DATETIME,
    UpdatedAt          DATETIME,
    Notes              TEXT,
    Region             TEXT,
    ServiceTier        TEXT,
    EffectiveDate      DATETIME,
    ExpirationDate     DATETIME,
    RequestCount       INTEGER
);

INSERT INTO api_consumer_quota_history VALUES (1, 5001, '/v1/posts', 10000, 7325, 'monthly', '2025-01-01 00:00:00', '2025-01-01 00:00:00', '2025-01-31 23:59:59', 0.00, 0, 0, 80, 10000, 'Initial allocation', '2025-01-01 09:00:00', '2025-01-15 10:20:00', 'No issues', 'US-East', 'Standard', '2025-01-01 00:00:00', '2025-12-31 23:59:59', 7325);
INSERT INTO api_consumer_quota_history VALUES (2, 5002, '/v1/comments', 5000, 5120, 'monthly', '2025-01-01 00:00:00', '2025-01-01 00:00:00', '2025-01-31 23:59:59', 12.00, 1, 1, 5500, 'Temporary increase due to campaign', '2025-01-02 08:00:00', '2025-01-20 14:30:00', 'Overage charged', 'EU-West', 'Premium', '2025-01-01 00:00:00', '2025-06-30 23:59:59', 5120);
INSERT INTO api_consumer_quota_history VALUES (3, 5003, '/v1/users', 2000, 1995, 'monthly', '2025-01-01 00:00:00', '2025-01-01 00:00:00', '2025-01-31 23:59:59', 0.00, 0, 0, 2000, 'Standard allocation', '2025-01-03 11:15:00', '2025-01-25 09:45:00', 'Near limit', 'AP-South', 'Basic', '2025-01-01 00:00:00', '2025-12-31 23:59:59', 1995);


-- Table storing history of user‑generated content flags
CREATE TABLE user_content_flag_history
(
    Id                 INTEGER PRIMARY KEY,
    UserId             INTEGER,
    ContentId          INTEGER,
    ContentType        TEXT,
    FlagReason         TEXT,
    FlagDetail         TEXT,
    FlaggedAt          DATETIME,
    HandledByUserId    INTEGER,
    HandlingResult     TEXT,
    ResolutionDate     DATETIME,
    IsEscalated        INTEGER,
    EscalationLevel    INTEGER,
    ReviewComments     TEXT,
    PenaltyPoints      INTEGER,
    IsClosed           INTEGER,
    CloseReason        TEXT,
    ReopenCount        INTEGER,
    LastModified       DATETIME,
    Tagging            TEXT,
    ConfidenceScore    REAL,
    Notes              TEXT,
    IsDuplicate        INTEGER,
    FOREIGN KEY (UserId) REFERENCES users (Id)
);

INSERT INTO user_content_flag_history VALUES (1, 3001, 1001, 'post', 'Spam', 'Contains promotional links', '2025-01-12 10:00:00', 4001, 'Removed', '2025-01-12 11:15:00', 0, 0, 'Flag verified, content removed', 5, 1, 'Spam removal', 0, '2025-01-12 11:20:00', 'spam,advertising', 0.96, 'Action taken quickly', 0);
INSERT INTO user_content_flag_history VALUES (2, 3002, 2002, 'comment', 'Harassment', 'User insulted others', '2025-02-08 14:30:00', 4002, 'Warning issued', '2025-02-08 15:00:00', 0, 0, 'User warned, no delete', 2, 0, NULL, 0, '2025-02-08 15:05:00', 'harassment,abuse', 0.88, 'First offense', 0);
INSERT INTO user_content_flag_history VALUES (3, 3003, 3003, 'post', 'Low Quality', 'Post lacks detail', '2025-03-15 09:45:00', NULL, 'Pending Review', NULL, 0, 0, 'Awaiting moderator', 0, 0, NULL, 0, '2025-03-15 09:50:00', 'low_quality', 0.70, 'Needs improvement', 0);


-- Table describing the editorial workflow stages for posts
CREATE TABLE post_editorial_workflow
(
    Id                 INTEGER PRIMARY KEY,
    PostId             INTEGER,
    StageName          TEXT,
    EnteredAt          DATETIME,
    ExitedAt           DATETIME,
    EnteredByUserId    INTEGER,
    ExitedByUserId     INTEGER,
    IsApproved         INTEGER,
    ApprovalDate       DATETIME,
    ApprovedByUserId   INTEGER,
    Comments           TEXT,
    ReviewScore        REAL,
    RevisionId         INTEGER,
    NextStageId        INTEGER,
    PreviousStageId    INTEGER,
    DurationSeconds    INTEGER,
    IsCriticalPath    INTEGER,
    EscalationFlag    INTEGER,
    Metadata           TEXT,
    WorkflowInstanceId INTEGER,
    IsActive           INTEGER,
    CreatedAt          DATETIME,
    UpdatedAt          DATETIME,
    Notes              TEXT,
    FOREIGN KEY (PostId) REFERENCES posts (Id),
    FOREIGN KEY (EnteredByUserId) REFERENCES users (Id),
    FOREIGN KEY (ExitedByUserId) REFERENCES users (Id),
    FOREIGN KEY (ApprovedByUserId) REFERENCES users (Id)
);

INSERT INTO post_editorial_workflow VALUES (1, 1001, 'Draft', '2025-01-01 08:00:00', '2025-01-02 09:30:00', 2001, 2002, 0, NULL, NULL, 'Initial creation', 0.0, 1, 2, NULL, 5400, 1, 0, 'stage=draft', 3001, 0, '2025-01-01 08:00:00', '2025-01-02 09:30:00', 'Prepared for review');
INSERT INTO post_editorial_workflow VALUES (2, 1001, 'Review', '2025-01-02 09:30:00', '2025-01-04 14:45:00', 2002, 2003, 1, '2025-01-04 15:00:00', 2004, 'Reviewed and approved', 4.8, 2, 3, 1, 18900, 1, 0, 'stage=review', 3001, 1, '2025-01-02 09:30:00', '2025-01-04 14:45:00', 'Approved for publishing');
INSERT INTO post_editorial_workflow VALUES (3, 1001, 'Publish', '2025-01-04 14:45:00', NULL, 2004, NULL, 1, NULL, NULL, 'Published to site', 5.0, 3, NULL, 2, 0, 1, 0, 'stage=publish', 3001, 1, '2025-01-04 14:45:00', NULL, 'Live on platform');