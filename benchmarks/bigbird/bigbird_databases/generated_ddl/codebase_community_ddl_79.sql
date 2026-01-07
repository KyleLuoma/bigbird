-- User content interaction events
CREATE TABLE user_content_interactions
(
    InteractionId       INTEGER          NOT NULL PRIMARY KEY,
    UserId              INTEGER          NULL,
    PostId              INTEGER          NULL,
    CommentId           INTEGER          NULL,
    InteractionType     TEXT             NULL,
    InteractionDate     DATETIME         NULL,
    DeviceId            TEXT             NULL,
    SessionId           TEXT             NULL,
    IPAddress           TEXT             NULL,
    Browser             TEXT             NULL,
    OS                  TEXT             NULL,
    Location            TEXT             NULL,
    ReferrerUrl         TEXT             NULL,
    IsMobile            INTEGER          NULL,
    InteractionScore    INTEGER          NULL,
    ContentLength       INTEGER          NULL,
    Platform            TEXT             NULL,
    SourceChannel       TEXT             NULL,
    CampaignId          INTEGER          NULL,
    ABTestGroup         TEXT             NULL
);

INSERT INTO user_content_interactions VALUES (1, 101, 201, NULL, click, '2024-12-01 08:15:00', dev123, sessA, 192168001, Chrome, Windows, US, https://example.com, 1, 10, 350, web, organic, 5, groupA);
INSERT INTO user_content_interactions VALUES (2, 102, 202, 301, like, '2024-12-01 09:20:00', dev124, sessB, 192168002, Firefox, Linux, CA, https://referrer.com, 0, 8, 200, mobile, email, 6, groupB);
INSERT INTO user_content_interactions VALUES (3, 103, 203, NULL, share, '2024-12-01 10:05:00', dev125, sessC, 192168003, Safari, macOS, UK, https://another.com, 1, 12, 500, web, social, 7, groupA);


-- Post collaboration session records
CREATE TABLE post_collaboration_sessions
(
    SessionId           INTEGER          NOT NULL PRIMARY KEY,
    PostId              INTEGER          NULL,
    InitiatorUserId     INTEGER          NULL,
    ParticipantUserId   INTEGER          NULL,
    StartedAt           DATETIME         NULL,
    EndedAt             DATETIME         NULL,
    SessionStatus       TEXT             NULL,
    EditCount           INTEGER          NULL,
    CommentCount        INTEGER          NULL,
    RevisionGuid        TEXT             NULL,
    Platform            TEXT             NULL,
    DeviceId            TEXT             NULL,
    IPAddress           TEXT             NULL,
    IsRemote            INTEGER          NULL,
    CollaborationMode   TEXT             NULL,
    Language            TEXT             NULL,
    Region              TEXT             NULL,
    ProjectCode         TEXT             NULL,
    EstimatedDuration   INTEGER          NULL,
    ActualDuration      INTEGER          NULL,
    SuccessFlag         INTEGER          NULL,
    FeedbackScore       INTEGER          NULL,
    Tags                TEXT             NULL,
    RelatedLink         TEXT             NULL,
    SourceChannel       TEXT             NULL,
    CampaignId          INTEGER          NULL,
    ABTestGroup         TEXT             NULL
);

INSERT INTO post_collaboration_sessions VALUES (1001, 201, 101, 102, '2024-11-30 14:00:00', '2024-11-30 15:30:00', completed, 5, 2, guidA, web, dev123, 192168001, 0, synchronous, en, NA, PRJ01, 90, 95, 1, 9, sql, https://link.com, organic, 3, groupA);
INSERT INTO post_collaboration_sessions VALUES (1002, 202, 103, 104, '2024-11-30 16:10:00', '2024-11-30 16:45:00', completed, 3, 1, guidB, mobile, dev124, 192168002, 1, asynchronous, en, EU, PRJ02, 45, 40, 1, 8, python, https://another.com, email, 4, groupB);
INSERT INTO post_collaboration_sessions VALUES (1003, 203, 105, 106, '2024-12-01 09:00:00', NULL, active, 2, 0, guidC, web, dev125, 192168003, 0, synchronous, en, APAC, PRJ03, 60, NULL, 0, 0, java, https://third.com, social, 5, groupA);


-- Extended tag semantic metadata
CREATE TABLE tag_semantic_metadata_ext
(
    TagId                     INTEGER          NOT NULL PRIMARY KEY,
    TagName                   TEXT             NULL,
    SynonymCount              INTEGER          NULL,
    RelatedTagCount           INTEGER          NULL,
    PopularityScore           INTEGER          NULL,
    CreationDate              DATETIME         NULL,
    LastUpdated               DATETIME         NULL,
    IsActive                  INTEGER          NULL,
    Category                  TEXT             NULL,
    SubCategory               TEXT             NULL,
    Language                  TEXT             NULL,
    Region                    TEXT             NULL,
    ConfidenceLevel           INTEGER          NULL,
    Description               TEXT             NULL,
    ExampleUsage              TEXT             NULL,
    ExternalReferenceId       TEXT             NULL,
    NormalizedForm            TEXT             NULL,
    StemmedForm               TEXT             NULL,
    LemmaForm                 TEXT             NULL,
    PartOfSpeech              TEXT             NULL,
    SemanticGroupId           INTEGER          NULL,
    TaxonomyLevel             INTEGER          NULL,
    AliasCount                INTEGER          NULL,
    RelatedEntityId           INTEGER          NULL,
    SourceSystem              TEXT             NULL,
    DataQualityScore          INTEGER          NULL,
    ReviewStatus              TEXT             NULL,
    ReviewerId                INTEGER          NULL,
    ReviewDate                DATETIME         NULL,
    IsDeprecated              INTEGER          NULL,
    DeprecationDate           DATETIME         NULL
);

INSERT INTO tag_semantic_metadata_ext VALUES (1, sql, 12, 8, 95, '2020-01-15 00:00:00', '2024-10-10 12:00:00', 1, programming, database, en, global, 90, language for relational databases, SELECT * FROM table, extref001, sql, sql, sql, noun, 10, 2, 3, 200, systemA, 85, approved, 101, '2024-09-01 08:00:00', 0, NULL);
INSERT INTO tag_semantic_metadata_ext VALUES (2, python, 15, 10, 98, '2019-05-20 00:00:00', '2024-09-15 09:30:00', 1, programming, scripting, en, global, 92, high-level programming language, print('Hello'), extref002, python, python, python, noun, 11, 2, 4, 201, systemB, 88, pending, 102, '2024-08-20 10:15:00', 0, NULL);
INSERT INTO tag_semantic_metadata_ext VALUES (3, javascript, 9, 6, 93, '2021-03-10 00:00:00', '2024-08-05 14:45:00', 1, programming, web, en, global, 89, client-side scripting language, console.log('Hi'), extref003, javascript, javascript, javascript, noun, 12, 2, 2, 202, systemC, 80, approved, 103, '2024-07-30 11:20:00', 0, NULL);


-- Site performance snapshot extended
CREATE TABLE site_performance_snapshot_ext
(
    SnapshotId                INTEGER          NOT NULL PRIMARY KEY,
    CaptureTime               DATETIME         NULL,
    CpuUsagePercent           INTEGER          NULL,
    MemoryUsageMB             INTEGER          NULL,
    DiskReadIOPS              INTEGER          NULL,
    DiskWriteIOPS             INTEGER          NULL,
    NetworkInMbps             INTEGER          NULL,
    NetworkOutMbps            INTEGER          NULL,
    ActiveConnections         INTEGER          NULL,
    AvgResponseTimeMs         INTEGER          NULL,
    ErrorRatePercent          INTEGER          NULL,
    RequestCount              INTEGER          NULL,
    CacheHitRatePercent       INTEGER          NULL,
    QueueLength               INTEGER          NULL,
    ThreadCount               INTEGER          NULL,
    Http2Enabled              INTEGER          NULL,
    SslTerminationTimeMs      INTEGER          NULL,
    LoadBalancerLatencyMs     INTEGER          NULL,
    BackendLatencyMs          INTEGER          NULL,
    DbQueryTimeMs             INTEGER          NULL,
    DbConnectionCount         INTEGER          NULL,
    CpuTemperatureC           INTEGER          NULL,
    FanSpeedRpm               INTEGER          NULL,
    PowerConsumptionWatt      INTEGER          NULL,
    AmbientTempC              INTEGER          NULL,
    HumidityPercent           INTEGER          NULL,
    DataCenterId              INTEGER          NULL,
    Region                    TEXT             NULL,
    AvailabilityStatus        TEXT             NULL,
    MaintenanceWindowFlag     INTEGER          NULL,
    AlertCount                INTEGER          NULL,
    IncidentCount             INTEGER          NULL,
    ServiceLevelAgreement     TEXT             NULL,
    MonitoringAgentVersion    TEXT             NULL,
    SnapshotNotes             TEXT             NULL
);

INSERT INTO site_performance_snapshot_ext VALUES (5001, '2024-12-01 00:00:00', 55, 16384, 1200, 1100, 850, 760, 3400, 125, 0, 250000, 98, 12, 64, 1, 35, 20, 45, 30, 120, 68, 1500, 400, 22, 45, 1, US-East, operational, 0, 2, 0, SLA-99.9, v1.4.2, daily snapshot);
INSERT INTO site_performance_snapshot_ext VALUES (5002, '2024-12-01 01:00:00', 48, 15800, 1150, 1050, 800, 720, 3300, 110, 0, 240000, 97, 10, 60, 1, 33, 18, 42, 28, 28, 60, 1400, 380, 21, 44, 1, US-West, operational, 0, 1, 0, SLA-99.9, v1.4.2, hourly snapshot);
INSERT INTO site_performance_snapshot_ext VALUES (5003, '2024-12-01 02:00:00', 62, 17000, 1300, 1200, 900, 800, 3500, 130, 0, 260000, 99, 14, 68, 1, 38, 22, 48, 35, 35, 72, 1600, 420, 23, 46, 1, EU-Central, operational, 0, 3, 0, SLA-99.9, v1.4.2, hourly snapshot);


-- API endpoint access detail
CREATE TABLE api_endpoint_access_detail
(
    AccessId                  INTEGER          NOT NULL PRIMARY KEY,
    EndpointName              TEXT             NULL,
    HttpMethod                TEXT             NULL,
    RequestTimestamp          DATETIME         NULL,
    ResponseStatusCode        INTEGER          NULL,
    LatencyMs                 INTEGER          NULL,
    ClientIp                  TEXT             NULL,
    ApiKeyId                  INTEGER          NULL,
    UserId                    INTEGER          NULL,
    AuthTokenId               INTEGER          NULL,
    RequestSizeBytes          INTEGER          NULL,
    ResponseSizeBytes         INTEGER          NULL,
    ReferrerUrl               TEXT             NULL,
    UserAgent                 TEXT             NULL,
    IsSuccessful              INTEGER          NULL,
    ErrorCode                 TEXT             NULL,
    ErrorMessage              TEXT             NULL,
    RateLimitRemaining        INTEGER          NULL,
    RateLimitReset            DATETIME         NULL,
    GeoLocation               TEXT             NULL,
    DeviceType                TEXT             NULL,
    Platform                  TEXT             NULL,
    ApiVersion                TEXT             NULL,
    CorrelationId             TEXT             NULL,
    BackendService            TEXT             NULL,
    BackendLatencyMs          INTEGER          NULL,
    ClusterNodeId             INTEGER          NULL,
    SessionId                 TEXT             NULL,
    RequestId                 TEXT             NULL,
    IsCached                  INTEGER          NULL,
    CacheHit                  INTEGER          NULL,
    CacheMissCount            INTEGER          NULL,
    PayloadHash               TEXT             NULL,
    EncryptionUsed           INTEGER          NULL,
    ComplianceFlag            INTEGER          NULL,
    AuditLogId                INTEGER          NULL,
    Notes                     TEXT             NULL
);

INSERT INTO api_endpoint_access_detail VALUES (9001, getUser, GET, '2024-12-01 07:15:00', 200, 45, 192168010, 301, 101, 401, 512, 1024, https://ref.com, Mozilla/5.0, 1, NULL, NULL, 98, '2024-12-01 07:20:00', US, desktop, windows, v2, corr123, userService, 30, 5, sessA, reqA, 0, 0, 0, hashA, 1, 1, 8001, normal request);
INSERT INTO api_endpoint_access_detail VALUES (9002, createPost, POST, '2024-12-01 08:00:00', 201, 120, 192168011, 302, 102, 402, 1024, 2048, https://ref2.com, Chrome/112.0, 1, NULL, NULL, 95, '2024-12-01 08:05:00', CA, mobile, ios, v2, corr124, postService, 80, 6, sessB, reqB, 0, 0, 0, hashB, 1, 1, 8002, created new post);
INSERT INTO api_endpoint_access_detail VALUES (9003, deleteComment, DELETE, '2024-12-01 09:30:00', 403, 60, 192168012, 303, 103, 403, 256, 512, https://ref3.com, Safari/16.0, 0, AUTH_FAIL, Unauthorized, 100, '2024-12-01 09:35:00', UK, desktop, macos, v2, corr125, commentService, 40, 7, sessC, reqC, 0, 0, 0, hashC, 1, 1, 8003, auth failure);


-- Advertisement budget allocation detail
CREATE TABLE advertisement_budget_allocation_detail
(
    AllocationId               INTEGER          NOT NULL PRIMARY KEY,
    CampaignId                 INTEGER          NULL,
    AdGroupId                  INTEGER          NULL,
    StartDate                  DATETIME         NULL,
    EndDate                    DATETIME         NULL,
    BudgetAmount               INTEGER          NULL,
    Currency                   TEXT             NULL,
    DailyCap                   INTEGER          NULL,
    TotalImpressionsCap        INTEGER          NULL,
    TotalClicksCap             INTEGER          NULL,
    TargetRegion               TEXT             NULL,
    TargetAgeMin               INTEGER          NULL,
    TargetAgeMax               INTEGER          NULL,
    GenderTarget               TEXT             NULL,
    DeviceTarget               TEXT             NULL,
    PlatformTarget             TEXT             NULL,
    LanguageTarget             TEXT             NULL,
    BidStrategy                TEXT             NULL,
    CPM                        INTEGER          NULL,
    CPC                        INTEGER          NULL,
    CPA                        INTEGER          NULL,
    AllocationStatus           TEXT             NULL,
    CreatedByUserId            INTEGER          NULL,
    CreatedAt                  DATETIME         NULL,
    ApprovedByUserId           INTEGER          NULL,
    ApprovedAt                 DATETIME         NULL,
    LastModifiedByUserId       INTEGER          NULL,
    LastModifiedAt             DATETIME         NULL,
    ForecastedImpressions      INTEGER          NULL,
    ForecastedClicks           INTEGER          NULL,
    ForecastedConversions      INTEGER          NULL,
    ActualImpressions          INTEGER          NULL,
    ActualClicks               INTEGER          NULL,
    ActualConversions          INTEGER          NULL,
    SpendToDate                INTEGER          NULL,
    RemainingBudget            INTEGER          NULL,
    Notes                      TEXT             NULL,
    RiskLevel                  TEXT             NULL,
    ComplianceFlag             INTEGER          NULL,
    AuditLogId                 INTEGER          NULL
);

INSERT INTO advertisement_budget_allocation_detail VALUES (4001, 10, 101, '2024-11-01 00:00:00', '2025-01-31 23:59:59', 50000, USD, 2000, 1000000, 50000, US, 18, 65, all, all, web, en, target_cpa, 5, 1, 10, pending, 101, '2024-10-15 09:00:00', NULL, NULL, NULL, NULL, NULL, 300000, 15000, 500, 200000, 12000, 400, 25000, 25000, initial allocation, medium, 1, 9001);
INSERT INTO advertisement_budget_allocation_detail VALUES (4002, 11, 102, '2024-12-01 00:00:00', '2025-02-28 23:59:59', 75000, EUR, 2500, 1500000, 75000, DE, 25, 55, female, mobile, app, de, max_cpc, 6, 2, 12, approved, 102, '2024-11-20 10:30:00', 103, '2024-11-25 11:00:00', 104, '2024-12-01 08:45:00', 350000, 20000, 800, 250000, 16000, 600, 35000, 40000, mid-campaign review, high, 1, 9002);
INSERT INTO advertisement_budget_allocation_detail VALUES (4003, 12, 103, '2025-01-01 00:00:00', '2025-03-31 23:59:59', 60000, GBP, 2200, 1200000, 60000, UK, 30, 60, male, desktop, web, en, target_cpm, 4, 1, 8, draft, 103, '2024-12-10 14:20:00', NULL, NULL, NULL, NULL, NULL, 280000, 18000, 700, 210000, 13000, 500, 30000, 30000, awaiting approval, low, 0, 9003);


-- Knowledge graph relationship changes
CREATE TABLE knowledge_graph_relationship_changes
(
    ChangeId                INTEGER          NOT NULL PRIMARY KEY,
    EntityId                INTEGER          NULL,
    RelatedEntityId         INTEGER          NULL,
    RelationshipType        TEXT             NULL,
    ChangeType              TEXT             NULL,
    ChangeTimestamp         DATETIME         NULL,
    InitiatedByUserId       INTEGER          NULL,
    ApprovedByUserId        INTEGER          NULL,
    ApprovalTimestamp       DATETIME         NULL,
    ChangeReason            TEXT             NULL,
    PreviousWeight          INTEGER          NULL,
    NewWeight               INTEGER          NULL,
    IsActive                INTEGER          NULL,
    EffectiveStartDate      DATETIME         NULL,
    EffectiveEndDate        DATETIME         NULL,
    ConfidenceScore         INTEGER          NULL,
    SourceSystem            TEXT             NULL,
    SourceRecordId          TEXT             NULL,
    ValidationStatus        TEXT             NULL,
    ValidationTimestamp     DATETIME         NULL,
    ReviewerUserId          INTEGER          NULL,
    ReviewComments          TEXT             NULL,
    ImpactScore             INTEGER          NULL,
    AffectedModules         TEXT             NULL,
    NotificationSent        INTEGER          NULL,
    NotificationChannel     TEXT             NULL,
    AuditLogId              INTEGER          NULL,
    AdditionalMetadata      TEXT             NULL,
    ChangeCategory          TEXT             NULL,
    IsDeprecated            INTEGER          NULL,
    DeprecationDate         DATETIME         NULL,
    ReplacementEntityId     INTEGER          NULL,
    Comments                TEXT             NULL,
    Tags                    TEXT             NULL,
    Version                 TEXT             NULL,
    IsAutomated             INTEGER          NULL,
    AutomationRuleId        INTEGER          NULL,
    ScheduleId              INTEGER          NULL,
    RiskLevel               TEXT             NULL,
    ComplianceFlag          INTEGER          NULL,
    GovernanceOwnerId       INTEGER          NULL
);

INSERT INTO knowledge_graph_relationship_changes VALUES (7001, 2001, 3001, parent_child, addition, '2024-11-30 12:00:00', 101, 102, '2024-11-30 13:00:00', initial import, 0, 1, 1, '2024-12-01 00:00:00', NULL, 95, ingestion_service, rec001, validated, '2024-12-01 01:00:00', 103, good, 10, moduleA, 1, email, 8001, meta1, structural, 0, NULL, NULL, none, tagA, v1, 0, NULL, NULL, medium, 1, 201);
INSERT INTO knowledge_graph_relationship_changes VALUES (7002, 2002, 3002, synonymous, update, '2024-12-01 09:30:00', 104, 105, '2024-12-01 10:15:00', typo correction, 5, 8, 1, '2024-12-01 00:00:00', NULL, 98, manual_edit, rec002, approved, '2024-12-01 11:00:00', 106, corrected weight, 12, moduleB, 1, slack, 8002, meta2, semantic, 0, NULL, NULL, none, tagB, v2, 0, NULL, NULL, low, 0, 202);
INSERT INTO knowledge_graph_relationship_changes VALUES (7003, 2003, 3003, related, deprecation, '2024-12-02 14:45:00', 107, 108, '2024-12-02 15:30:00', obsolete relationship, 7, 0, 0, NULL, NULL, 60, governance_tool, rec003, deprecated, '2024-12-02 16:00:00', 109, marked deprecated, 5, moduleC, 1, sms, 8003, meta3, policy, 1, '2025-01-01 00:00:00', 3100, replaced by new relation, tagC, v3, 0, NULL, NULL, high, 1, 203);


-- External data feed status log
CREATE TABLE external_data_feed_status_log
(
    FeedLogId               INTEGER          NOT NULL PRIMARY KEY,
    FeedName                TEXT             NULL,
    SourceSystem            TEXT             NULL,
    RetrievalTimestamp      DATETIME         NULL,
    RecordCount             INTEGER          NULL,
    SuccessFlag             INTEGER          NULL,
    ErrorCode               TEXT             NULL,
    ErrorMessage            TEXT             NULL,
    ProcessingDurationSec   INTEGER          NULL,
    LastProcessedRecordId   TEXT             NULL,
    NextExpectedRun         DATETIME         NULL,
    FrequencyMinutes        INTEGER          NULL,
    IsActive                INTEGER          NULL,
    OwnerTeam               TEXT             NULL,
    ContactEmail            TEXT             NULL,
    SLAComplianceMinutes    INTEGER          NULL,
    LastSLAComplianceCheck DATETIME         NULL,
    DataQualityScore        INTEGER          NULL,
    ValidationStatus        TEXT             NULL,
    ValidationTimestamp     DATETIME         NULL,
    RecordsInserted         INTEGER          NULL,
    RecordsUpdated          INTEGER          NULL,
    RecordsDeleted          INTEGER          NULL,
    DuplicateCount          INTEGER          NULL,
    MissingFieldCount       INTEGER          NULL,
    NullValueCount          INTEGER          NULL,
    WarningCount            INTEGER          NULL,
    CriticalCount           INTEGER          NULL,
    AuditLogId              INTEGER          NULL,
    Notes                   TEXT             NULL,
    RetryCount              INTEGER          NULL,
    BackoffSeconds          INTEGER          NULL,
    IsScheduled             INTEGER          NULL,
    ScheduleId              INTEGER          NULL,
    LastScheduleRun         DATETIME         NULL,
    NextScheduleRun         DATETIME         NULL,
    IsManualTrigger         INTEGER          NULL,
    TriggerUserId           INTEGER          NULL,
    TriggerTimestamp        DATETIME         NULL,
    ChangeLog               TEXT             NULL,
    DataRetentionDays       INTEGER          NULL,
    EncryptionUsed          INTEGER          NULL,
    CompressionAlgorithm    TEXT             NULL,
    TransferProtocol        TEXT             NULL,
    EndpointUrl             TEXT             NULL,
    AuthenticationMethod    TEXT             NULL,
    Region                  TEXT             NULL,
    ComplianceFlag          INTEGER          NULL
);

INSERT INTO external_data_feed_status_log VALUES (6001, weather_feed, external_api, '2024-12-01 06:00:00', 1440, 1, NULL, NULL, 30, rec001, '2024-12-01 07:00:00', 60, 1, ops, ops@example.com, 5, '2024-12-01 06:05:00', 95, validated, '2024-12-01 06:10:00', 1440, 0, 0, 0, 0, 0, 0, 0, 8001, initial load, 0, 0, 1, 101, '2024-12-01 06:00:00', '2024-12-01 07:00:00', 0, NULL, NULL, NULL, 30, 1, gzip, https, api_key, US, 1);
INSERT INTO external_data_feed_status_log VALUES (6002, stock_prices, third_party, '2024-12-01 08:00:00', 5000, 0, 504, GatewayTimeout, 45, rec002, '2024-12-01 09:00:00', 15, 1, finance, finance@example.com, 10, '2024-12-01 08:05:00', 80, failed, '2024-12-01 08:10:00', 0, 0, 0, 0, 10, 5, 2, 1, 8002, timeout issue, 3, 120, 1, 102, '2024-12-01 08:00:00', '2024-12-01 09:00:00', 0, NULL, NULL, NULL, 15, 1, none, https, oauth, EU, 1);
INSERT INTO external_data_feed_status_log VALUES (6003, census_data, gov_source, '2024-12-01 22:00:00', 200000, 1, NULL, NULL, 120, rec003, '2024-12-02 00:00:00', 1440, 1, demographics, demo@example.com, 5, '2024-12-01 22:05:00', 99, validated, '2024-12-01 22:10:00', 200000, 0, 0, 0, 0, 0, 0, 0, 8003, daily ingest, 0, 0, 1, 103, '2024-12-01 22:00:00', '2024-12-02 00:00:00', 0, NULL, NULL, NULL, 60, 1, zip, sftp, password, EU, 1);


-- Learning path progress detail extended
CREATE TABLE learning_path_progress_detail_ext
(
    ProgressId                INTEGER          NOT NULL PRIMARY KEY,
    UserId                    INTEGER          NULL,
    LearningPathId            INTEGER          NULL,
    ModuleId                  INTEGER          NULL,
    ModuleName                TEXT             NULL,
    StartedAt                 DATETIME         NULL,
    CompletedAt               DATETIME         NULL,
    Status                    TEXT             NULL,
    Score                     INTEGER          NULL,
    TimeSpentSeconds          INTEGER          NULL,
    Attempts                  INTEGER          NULL,
    PassThreshold             INTEGER          NULL,
    CertificationEarned       INTEGER          NULL,
    CertificateId             INTEGER          NULL,
    InstructorId              INTEGER          NULL,
    InstructorName            TEXT             NULL,
    IsMandatory               INTEGER          NULL,
    PrerequisiteModuleId      INTEGER          NULL,
    PrerequisiteMet          INTEGER          NULL,
    LearningMode              TEXT             NULL,
    DeviceUsed                TEXT             NULL,
    Platform                  TEXT             NULL,
    Locale                    TEXT             NULL,
    AccessMethod              TEXT             NULL,
    CompletionMethod          TEXT             NULL,
    FeedbackRating            INTEGER          NULL,
    FeedbackComments          TEXT             NULL,
    MentorAssignedId          INTEGER          NULL,
    MentorName                TEXT             NULL,
    ReviewStatus              TEXT             NULL,
    ReviewDate                DATETIME         NULL,
    ReviewerId                INTEGER          NULL,
    ReviewerName              TEXT             NULL,
    IsRetakeAllowed          INTEGER          NULL,
    RetakeCount               INTEGER          NULL,
    BonusPointsEarned         INTEGER          NULL,
    BadgeId                   INTEGER          NULL,
    BadgeName                 TEXT             NULL,
    ProgressNotes             TEXT             NULL,
    ExternalReferenceId       TEXT             NULL,
    SourceSystem              TEXT             NULL,
    SyncTimestamp             DATETIME         NULL,
    AuditLogId                INTEGER          NULL,
    Tags                      TEXT             NULL,
    Version                   TEXT             NULL,
    ComplianceFlag            INTEGER          NULL,
    RiskLevel                 TEXT             NULL,
    GovernanceOwnerId         INTEGER          NULL
);

INSERT INTO learning_path_progress_detail_ext VALUES (3001, 101, 501, 701, IntroSQL, '2024-11-15 09:00:00', '2024-11-15 10:30:00', completed, 85, 5400, 1, 70, 1, 9001, 2001, AliceSmith, 1, NULL, 1, self_paced, laptop, web, en-US, direct, auto, 5, great content, 3001, BobTutor, approved, '2024-11-15 11:00:00', 4001, CarolReviewer, 1, 0, 10, 6001, SQLBeginner, progress good, ref001, learning_system, '2024-11-15 11:05:00', 8001, tagSQL, v1, 1, low, 5001);
INSERT INTO learning_path_progress_detail_ext VALUES (3002, 102, 502, 702, AdvancedPython, '2024-12-01 08:00:00', NULL, in_progress, 70, 3600, 2, 80, 0, NULL, 2002, DaveJones, 1, 701, 1, instructor_led, tablet, mobile, en-GB, app, manual, 4, needs improvement, 3002, EveMentor, pending, NULL, NULL, NULL, 1, 1, 5, 6002, PyMaster, ongoing, ref002, learning_system, '2024-12-01 09:00:00', 8002, tagPython, v2, 0, medium, 5002);
INSERT INTO learning_path_progress_detail_ext VALUES (3003, 103, 503, 703, DataScienceCapstone, '2024-11-20 13:00:00', '2024-11-27 16:45:00', completed, 92, 65000, 1, 85, 1, 9002, 2003, FionaLee, 1, 702, 1, blended, desktop, web, en-CA, portal, auto, 5, excellent, 3003, GeorgeMentor, approved, '2024-11-27 17:00:00', 4002, HannahReviewer, 1, 0, 15, 6003, DataGuru, final project, ref003, learning_system, '2024-11-27 17:05:00', 8003, tagDataScience, v3, 1, high, 5003);


-- Forum thread participation statistics
CREATE TABLE forum_thread_participation_stats
(
    StatId                     INTEGER          NOT NULL PRIMARY KEY,
    ThreadId                   INTEGER          NULL,
    UserId                     INTEGER          NULL,
    ParticipationDate          DATETIME         NULL,
    PostsMade                  INTEGER          NULL,
    CommentsMade               INTEGER          NULL,
    LikesGiven                 INTEGER          NULL,
    LikesReceived              INTEGER          NULL,
    ViewsGenerated             INTEGER          NULL,
    TimeSpentSeconds           INTEGER          NULL,
    FirstPostTimestamp         DATETIME         NULL,
    LastPostTimestamp          DATETIME         NULL,
    IsThreadStarter            INTEGER          NULL,
    RoleInThread               TEXT             NULL,
    ReputationImpact           INTEGER          NULL,
    BadgeEarned                TEXT             NULL,
    DeviceUsed                 TEXT             NULL,
    Platform                   TEXT             NULL,
    Location                   TEXT             NULL,
    ReferralSource             TEXT             NULL,
    EngagementScore            INTEGER          NULL,
    SentimentScore             INTEGER          NULL,
    WordsWritten               INTEGER          NULL,
    AvgWordLength              INTEGER          NULL,
    ReadingTimeSeconds         INTEGER          NULL,
    RepliesReceived            INTEGER          NULL,
    MentionsMade               INTEGER          NULL,
    MentionsReceived           INTEGER          NULL,
    FlagsRaised                INTEGER          NULL,
    FlagsReceived              INTEGER          NULL,
    ModeratorInterventions     INTEGER          NULL,
    SpamScore                  INTEGER          NULL,
    ContentQualityRating       INTEGER          NULL,
    IsActiveParticipant        INTEGER          NULL,
    LastActiveTimestamp        DATETIME         NULL,
    NextExpectedActivity       DATETIME         NULL,
    NotificationSent           INTEGER          NULL,
    NotificationChannel        TEXT             NULL,
    AuditLogId                 INTEGER          NULL,
    Notes                      TEXT             NULL,
    TagCloud                   TEXT             NULL,
    TopicClusters              TEXT             NULL,
    GrowthRatePercent          INTEGER          NULL,
    RetentionRatePercent       INTEGER          NULL,
    InfluenceScore             INTEGER          NULL,
    NetworkCentrality          INTEGER          NULL,
    IsVerifiedUser             INTEGER          NULL,
    VerifiedTimestamp          DATETIME         NULL,
    ComplianceFlag             INTEGER          NULL,
    GovernanceOwnerId          INTEGER          NULL
);

INSERT INTO forum_thread_participation_stats VALUES (90001, 1111, 101, '2024-11-20 10:00:00', 5, 12, 20, 15, 300, 7200, '2024-11-20 10:05:00', '2024-11-27 15:45:00', 1, starter, 150, gold_badge, desktop, web, US, organic, 85, 8, 2500, 5, 600, 3, 2, 1, 0, 0, 0, 5, 80, 1, '2024-11-27 15:45:00', '2024-12-04 10:00:00', 1, email, 8001, active contributor, sql, data_analysis, 12, 90, 75, 30, 1, '2024-11-27 15:45:00', 1, 5001);
INSERT INTO forum_thread_participation_stats VALUES (90002, 1112, 102, '2024-11-21 11:30:00', 2, 5, 8, 10, 150, 3600, '2024-11-21 11:35:00', '2024-11-23 14:20:00', 0, responder, 80, silver_badge, mobile, app, CA, referral, 60, 5, 800, 4, 400, 1, 0, 0, 0, 0, 0, 2, 70, 1, '2024-11-23 14:20:00', '2024-12-01 12:00:00', 1, push, 8002, helpful member, python, scripting, 8, 80, 65, 20, 1, '2024-11-23 14:20:00', 0, 5002);
INSERT INTO forum_thread_participation_stats VALUES (90003, 1113, 103, '2024-11-22 09:15:00', 0, 0, 0, 0, 20, 600, NULL, NULL, 0, observer, 0, NULL, tablet, web, UK, social, 30, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 5, 40, 20, 10, 0, NULL, 0, 5003);