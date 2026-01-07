-- System audit trail records capturing configuration and operational changes
CREATE TABLE system_audit_trail
(
    Id INTEGER PRIMARY KEY,
    EventType TEXT,
    EventTimestamp DATETIME,
    InitiatorUserId INTEGER,
    TargetObject TEXT,
    TargetObjectId INTEGER,
    OldValue TEXT,
    NewValue TEXT,
    SourceIP TEXT,
    UserAgent TEXT,
    SessionId TEXT,
    ApplicationVersion TEXT,
    Hostname TEXT,
    ProcessId INTEGER,
    ThreadId INTEGER,
    CorrelationId TEXT,
    Outcome TEXT,
    ErrorCode INTEGER,
    Comments TEXT,
    AdditionalInfo1 TEXT,
    AdditionalInfo2 TEXT,
    AdditionalInfo3 TEXT
);

INSERT INTO system_audit_trail VALUES (1, 'ConfigUpdate', '2023-11-01 08:15:00', 42, 'SiteSetting', 101, 'max_posts=100', 'max_posts=200', '192.168.1.10', 'Mozilla/5.0', 'sessA1', 'v2.3.5', 'server01', 1234, 5678, 'corrX01', 'Success', NULL, 'Increased limit', 'InfoA', 'InfoB', 'InfoC');
INSERT INTO system_audit_trail VALUES (2, 'UserLogin', '2023-11-01 09:00:12', 57, 'UserAccount', 57, NULL, NULL, '203.0.113.45', 'Chrome/112.0', 'sessB2', 'v2.3.5', 'auth01', 2233, 7788, 'corrX02', 'Success', NULL, 'Login succeeded', 'InfoD', 'InfoE', 'InfoF');
INSERT INTO system_audit_trail VALUES (3, 'DataExport', '2023-11-01 10:45:30', 12, 'ExportJob', 3001, 'status=Pending', 'status=Completed', '10.0.0.5', 'Python-requests/2.28', 'sessC3', 'v2.3.5', 'export01', 3344, 8899, 'corrX03', 'Success', NULL, 'Export completed', 'InfoG', 'InfoH', 'InfoI');

-- Data center environment metrics per rack
CREATE TABLE data_center_environment
(
    Id INTEGER PRIMARY KEY,
    DataCenterId INTEGER,
    Location TEXT,
    RackId TEXT,
    TemperatureC NUMERIC,
    HumidityPct NUMERIC,
    PowerUsageKw NUMERIC,
    CoolingCapacityKw NUMERIC,
    PowerSupplyStatus TEXT,
    NetworkLatencyMs INTEGER,
    DiskFailureCount INTEGER,
    FanSpeedRpm INTEGER,
    SmokeDetected BOOLEAN,
    FireAlarm BOOLEAN,
    MaintenanceWindowStart DATETIME,
    MaintenanceWindowEnd DATETIME,
    LastInspectionDate DATE,
    TechnicianId INTEGER,
    Notes TEXT,
    FirmwareVersion TEXT,
    UptimeHours INTEGER,
    EnergyCostPerKwh NUMERIC
);

INSERT INTO data_center_environment VALUES (1, 1, 'US_East', 'RackA12', 22.5, 45.0, 150.0, 200.0, 'OK', 2, 0, 1200, 0, 0, '2023-12-01 01:00:00', '2023-12-01 05:00:00', '2023-11-20', 101, 'All normal', 'FW_1.4', 8760, 0.12);
INSERT INTO data_center_environment VALUES (2, 1, 'US_East', 'RackB07', 24.0, 48.0, 165.0, 210.0, 'OK', 3, 1, 1150, 0, 0, '2023-12-02 02:00:00', '2023-12-02 06:00:00', '2023-11-22', 102, 'Disk failure reported', 'FW_1.4', 8700, 0.12);
INSERT INTO data_center_environment VALUES (3, 2, 'EU_West', 'RackC03', 21.0, 42.0, 140.0, 190.0, 'Degraded', 5, 0, 1300, 0, 0, '2023-12-03 00:00:00', '2023-12-03 04:00:00', '2023-11-25', 103, 'Cooling issue pending', 'FW_2.0', 8800, 0.15);

-- API consumer quota tracking
CREATE TABLE api_consumer_quota
(
    Id INTEGER PRIMARY KEY,
    ConsumerId INTEGER,
    ApiEndpoint TEXT,
    DailyQuota INTEGER,
    DailyUsed INTEGER,
    MonthlyQuota INTEGER,
    MonthlyUsed INTEGER,
    LastResetDate DATE,
    QuotaResetFrequency TEXT,
    OverrunPenalty NUMERIC,
    NotificationSent BOOLEAN,
    ContactEmail TEXT,
    ContactPhone TEXT,
    Status TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    OwnerTeam TEXT,
    ServiceLevel TEXT,
    AllowedIPs TEXT,
    RateLimitPerMinute INTEGER,
    BurstLimit INTEGER,
    Comments TEXT
);

INSERT INTO api_consumer_quota VALUES (1, 2001, '/v1/orders', 1000, 250, 20000, 4500, '2023-10-01', 'Daily', 0.01, 0, 'teamA@example.com', '5551234567', 'Active', '2023-01-15 09:00:00', '2023-11-30 12:00:00', 'TeamA', 'Gold', '10.0.0.0/24', 200, 500, 'No issues');
INSERT INTO api_consumer_quota VALUES (2, 2002, '/v1/payments', 500, 480, 15000, 13200, '2023-11-01', 'Daily', 0.02, 1, 'teamB@example.com', '5559876543', 'Warning', '2023-02-20 10:30:00', '2023-11-28 08:45:00', 'TeamB', 'Silver', '10.0.1.0/24', 100, 300, 'Approaching limit');
INSERT INTO api_consumer_quota VALUES (3, 2003, '/v1/inventory', 2000, 1500, 30000, 21000, '2023-09-01', 'Monthly', 0.00, 0, 'teamC@example.com', '5555555555', 'Active', '2023-03-05 14:20:00', '2023-11-29 16:10:00', 'TeamC', 'Platinum', '10.0.2.0/24', 300, 800, 'Stable usage');

-- Detailed learning path progress per module
CREATE TABLE learning_path_progress_detail
(
    Id INTEGER PRIMARY KEY,
    UserId INTEGER,
    LearningPathId INTEGER,
    ModuleId INTEGER,
    ModuleName TEXT,
    StartDate DATETIME,
    CompletionDate DATETIME,
    TimeSpentSeconds INTEGER,
    Score NUMERIC,
    Passed BOOLEAN,
    Attempts INTEGER,
    LastAttemptDate DATETIME,
    InstructorId INTEGER,
    CertificationEarned BOOLEAN,
    CertificateId TEXT,
    FeedbackScore NUMERIC,
    FeedbackComments TEXT,
    ResourcesAccessed INTEGER,
    QuizAttempts INTEGER,
    AssignmentScore NUMERIC,
    ProjectScore NUMERIC,
    OverallStatus TEXT,
    Remarks TEXT
);

INSERT INTO learning_path_progress_detail VALUES (1, 101, 5001, 30001, 'Intro_SQL', '2023-10-01 08:00:00', '2023-10-02 09:30:00', 5400, 85.5, 1, 1, '2023-10-02 09:00:00', 201, 1, 'CERT123', 4.5, 'Good understanding', 12, 2, 90.0, 0, 'Completed', 'N/A');
INSERT INTO learning_path_progress_detail VALUES (2, 102, 5001, 30002, 'Advanced_SQL', '2023-10-05 10:00:00', NULL, 7200, 78.0, 0, 2, '2023-10-07 12:15:00', 202, 0, NULL, 3.8, 'Needs more practice', 15, 3, 70.0, 0, 'InProgress', 'Review material');
INSERT INTO learning_path_progress_detail VALUES (3, 103, 5002, 30010, 'Data_Modeling', '2023-09-20 09:30:00', '2023-09-22 11:45:00', 10800, 92.0, 1, 1, '2023-09-22 11:00:00', 203, 1, 'CERT456', 4.9, 'Excellent work', 20, 1, 95.0, 88.0, 'Completed', 'Outstanding');

-- Advertisement creative metadata
CREATE TABLE advertisement_creative_metadata
(
    Id INTEGER PRIMARY KEY,
    CampaignId INTEGER,
    CreativeId INTEGER,
    CreativeType TEXT,
    FileName TEXT,
    FileSizeBytes INTEGER,
    Dimensions TEXT,
    DurationSeconds NUMERIC,
    Format TEXT,
    Language TEXT,
    TargetAudience TEXT,
    BudgetCents INTEGER,
    SpendCents INTEGER,
    ClickThroughRate NUMERIC,
    ConversionRate NUMERIC,
    StartDate DATE,
    EndDate DATE,
    ApprovalStatus TEXT,
    ReviewNotes TEXT,
    Publisher TEXT,
    Placement TEXT,
    FrequencyCap INTEGER,
    ViewabilityScore NUMERIC,
    Comments TEXT
);

INSERT INTO advertisement_creative_metadata VALUES (1, 4001, 80001, 'Video', 'promo1.mp4', 25000000, '1920x1080', 30.0, 'MP4', 'en', 'Adults_18_35', 500000, 250000, 0.025, 0.004, '2023-11-01', '2023-12-31', 'Approved', 'High quality', 'GoogleAds', 'Sidebar', 3, 0.92, 'Seasonal campaign');
INSERT INTO advertisement_creative_metadata VALUES (2, 4002, 80002, 'Image', 'banner2.jpg', 450000, '728x90', NULL, 'JPG', 'es', 'Adults_25_45', 300000, 150000, 0.018, 0.002, '2023-10-15', '2023-11-30', 'Pending', 'Awaiting review', 'FacebookAds', 'Header', 2, 0.85, 'New product launch');
INSERT INTO advertisement_creative_metadata VALUES (3, 4003, 80003, 'Audio', 'jingle3.mp3', 8000000, NULL, 15.0, 'MP3', 'fr', 'Adults_30_50', 200000, 120000, 0.010, 0.001, '2023-09-01', '2023-10-15', 'Approved', 'Clear audio', 'SpotifyAds', 'Midroll', 1, 0.78, 'Brand awareness');

-- Supply chain shipment event log
CREATE TABLE supply_chain_shipment_event
(
    Id INTEGER PRIMARY KEY,
    ShipmentId INTEGER,
    EventType TEXT,
    EventTimestamp DATETIME,
    Location TEXT,
    Carrier TEXT,
    TrackingNumber TEXT,
    Status TEXT,
    EstimatedArrival DATETIME,
    ActualArrival DATETIME,
    DelayReason TEXT,
    TemperatureC NUMERIC,
    HumidityPct NUMERIC,
    HandlerId INTEGER,
    SignatureImagePath TEXT,
    Notes TEXT,
    WeightKg NUMERIC,
    VolumeCubicM NUMERIC,
    CustomsClearanceStatus TEXT,
    DutyPaidAmount NUMERIC,
    HazardousMaterialFlag BOOLEAN,
    InspectionResult TEXT
);

INSERT INTO supply_chain_shipment_event VALUES (1, 90001, 'Pickup', '2023-11-01 06:30:00', 'Warehouse_A', 'CarrierX', 'TRK123456', 'InTransit', '2023-11-05 17:00:00', NULL, NULL, 22.5, 55.0, 301, '/signatures/90001.png', 'Loaded with care', 1500.0, 12.5, 'Pending', 0.0, 0, 'Pending');
INSERT INTO supply_chain_shipment_event VALUES (2, 90001, 'Customs', '2023-11-04 14:20:00', 'Port_B', 'CarrierX', 'TRK123456', 'CustomsHold', '2023-11-05 17:00:00', NULL, 'Documentation missing', 22.5, 55.0, 302, NULL, 'Awaiting docs', 1500.0, 12.5, 'Held', 0.0, 0, 'Pending');
INSERT INTO supply_chain_shipment_event VALUES (3, 90001, 'Delivery', '2023-11-06 09:45:00', 'CustomerSite', 'CarrierX', 'TRK123456', 'Delivered', NULL, '2023-11-06 09:40:00', NULL, 22.0, 54.0, 303, '/signatures/90001_del.png', 'Delivered on time', 1500.0, 12.5, 'Cleared', 250.0, 0, 'Passed');

-- Forum user reputation history
CREATE TABLE forum_user_reputation_history
(
    Id INTEGER PRIMARY KEY,
    UserId INTEGER,
    ChangeDate DATETIME,
    ChangeReason TEXT,
    ReputationChange INTEGER,
    TotalReputation INTEGER,
    ModeratorId INTEGER,
    RelatedPostId INTEGER,
    RelatedCommentId INTEGER,
    BadgeEarned TEXT,
    TagInvolved TEXT,
    Region TEXT,
    DeviceType TEXT,
    SessionId TEXT,
    IPAddress TEXT,
    Browser TEXT,
    OS TEXT,
    ReferralSource TEXT,
    Notes TEXT,
    AuditLogId INTEGER,
    AdjustmentFlag BOOLEAN
);

INSERT INTO forum_user_reputation_history VALUES (1, 501, '2023-11-01 12:00:00', 'AnswerUpvote', 10, 1520, NULL, 3001, NULL, NULL, 'sql', 'NA', 'Desktop', 'sessU1', '203.0.113.10', 'Chrome', 'Windows10', 'Search', 'Positive feedback', 1001, 0);
INSERT INTO forum_user_reputation_history VALUES (2, 502, '2023-11-02 15:30:00', 'BadgeAwarded', 50, 2100, 101, NULL, NULL, 'Enthusiast', NULL, 'EU', 'Mobile', 'sessU2', '198.51.100.23', 'Safari', 'iOS14', 'Referral', 'First badge', 1002, 0);
INSERT INTO forum_user_reputation_history VALUES (3, 503, '2023-11-03 09:45:00', 'PostDeletion', -20, 980, 102, 3005, NULL, NULL, 'python', 'APAC', 'Tablet', 'sessU3', '192.0.2.45', 'Firefox', 'Linux', 'Direct', 'Spam removal', 1003, 1);

-- Content localization job queue
CREATE TABLE content_localization_job_queue
(
    Id INTEGER PRIMARY KEY,
    ContentId INTEGER,
    ContentType TEXT,
    SourceLanguage TEXT,
    TargetLanguage TEXT,
    QueueDate DATETIME,
    AssignedTranslatorId INTEGER,
    TranslationStatus TEXT,
    WordCount INTEGER,
    EstimatedCompletionHours NUMERIC,
    Priority TEXT,
    Deadline DATETIME,
    CompletedDate DATETIME,
    QualityScore NUMERIC,
    RevisionCount INTEGER,
    Comments TEXT,
    ClientId INTEGER,
    ProjectCode TEXT,
    BillingRatePerWord NUMERIC,
    TotalCost NUMERIC,
    IssueFlag BOOLEAN,
    ReviewerId INTEGER
);

INSERT INTO content_localization_job_queue VALUES (1, 7001, 'Post', 'en', 'de', '2023-11-01 08:00:00', 401, 'InProgress', 350, 5.0, 'High', '2023-11-05 23:59:59', NULL, NULL, 0, 'Urgent translation', 501, 'PRJ001', 0.12, 42.0, 0, NULL);
INSERT INTO content_localization_job_queue VALUES (2, 7002, 'Comment', 'en', 'fr', '2023-11-02 09:30:00', 402, 'Pending', 120, 2.0, 'Medium', '2023-11-07 23:59:59', NULL, NULL, 0, 'Standard request', 502, 'PRJ002', 0.10, 12.0, 0, NULL);
INSERT INTO content_localization_job_queue VALUES (3, 7003, 'TagWiki', 'en', 'es', '2023-10-28 14:15:00', 403, 'Completed', 80, 1.0, 'Low', '2023-11-01 23:59:59', '2023-10-30 16:45:00', 4.8, 1, 'Reviewed and approved', 503, 'PRJ003', 0.08, 6.4, 0, 601);

-- Device firmware update log
CREATE TABLE device_firmware_update_log
(
    Id INTEGER PRIMARY KEY,
    DeviceId INTEGER,
    FirmwareVersion TEXT,
    UpdateStartTime DATETIME,
    UpdateEndTime DATETIME,
    UpdateStatus TEXT,
    InitiatedBy TEXT,
    SourceURL TEXT,
    Checksum TEXT,
    SizeBytes INTEGER,
    RetryCount INTEGER,
    ErrorCode INTEGER,
    ErrorMessage TEXT,
    RebootRequired BOOLEAN,
    RebootTime DATETIME,
    PostUpdateValidationPassed BOOLEAN,
    ValidationErrors TEXT,
    AdminNotes TEXT,
    Location TEXT,
    NetworkSignalStrength INTEGER,
    BatteryLevel INTEGER
);

INSERT INTO device_firmware_update_log VALUES (1, 90001, 'v3.2.1', '2023-11-01 02:00:00', '2023-11-01 02:05:30', 'Success', 'AutoScheduler', 'http://firmware.repo/v3.2.1.bin', 'abc123def456', 5242880, 0, NULL, NULL, 1, '2023-11-01 02:06:00', 1, NULL, 'Update smooth', 'DataCenter_A', -70, 90);
INSERT INTO device_firmware_update_log VALUES (2, 90002, 'v3.2.1', '2023-11-01 03:10:00', '2023-11-01 03:12:45', 'Failed', 'AdminUser', 'http://firmware.repo/v3.2.1.bin', 'abc123def456', 5242880, 2, 101, 'Checksum mismatch', 0, NULL, 0, 'Checksum error', 'RemoteSite_B', -85, 55);
INSERT INTO device_firmware_update_log VALUES (3, 90003, 'v3.2.2', '2023-11-02 01:20:00', '2023-11-02 01:25:10', 'Success', 'AutoScheduler', 'http://firmware.repo/v3.2.2.bin', 'def789ghi012', 6291456, 0, NULL, NULL, 1, '2023-11-02 01:26:00', 1, NULL, 'Rebooted successfully', 'EdgeNode_C', -60, 80);

-- Knowledge graph relationship change log
CREATE TABLE knowledge_graph_relationship_change
(
    Id INTEGER PRIMARY KEY,
    NodeFromId INTEGER,
    NodeToId INTEGER,
    RelationshipType TEXT,
    ChangeType TEXT,
    ChangedByUserId INTEGER,
    ChangeTimestamp DATETIME,
    OldProperties TEXT,
    NewProperties TEXT,
    ConfidenceScore NUMERIC,
    SourceSystem TEXT,
    ValidationStatus TEXT,
    Reason TEXT,
    EffectiveFrom DATETIME,
    EffectiveTo DATETIME,
    Comment TEXT,
    Version INTEGER,
    BatchId INTEGER,
    AuditTrailId INTEGER,
    Tags TEXT
);

INSERT INTO knowledge_graph_relationship_change VALUES (1, 10001, 20001, 'AuthoredBy', 'Add', 501, '2023-11-01 07:45:00', NULL, '{"role":"author"}', 0.98, 'IngestionEngine', 'Validated', 'Initial import', '2023-11-01 00:00:00', NULL, 'Added author relationship', 1, 3001, 4001, 'author,initial');
INSERT INTO knowledge_graph_relationship_change VALUES (2, 10002, 20002, 'Cites', 'Update', 502, '2023-11-02 10:20:00', '{"strength":"low"}', '{"strength":"high"}', 0.92, 'UserEditTool', 'PendingReview', 'User increased citation strength', '2023-11-02 00:00:00', NULL, 'Updated citation strength', 2, 3002, 4002, 'citation,update');
INSERT INTO knowledge_graph_relationship_change VALUES (3, 10003, 20003, 'RelatedTo', 'Delete', 503, '2023-11-03 15:05:00', '{"type":"see_also"}', NULL, 0.85, 'CleanupJob', 'Deleted', 'Removed obsolete link', '2023-11-03 00:00:00', '2023-11-03 15:05:00', 'Deleted relationship as part of cleanup', 3, 3003, 4003, 'obsolete,cleanup');