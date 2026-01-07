-- Course enrollment details linking users to educational courses
CREATE TABLE course_enrollments
(
    EnrollmentId          INTEGER      NOT NULL PRIMARY KEY,
    UserId                INTEGER      NULL,
    CourseId              INTEGER      NULL,
    EnrollmentDate        DATETIME     NULL,
    CompletionDate        DATETIME     NULL,
    Status                TEXT         NULL,
    Grade                 TEXT         NULL,
    CreditsEarned         INTEGER      NULL,
    InstructorId          INTEGER      NULL,
    Term                  TEXT         NULL,
    CampusLocation        TEXT         NULL,
    PaymentMethod         TEXT         NULL,
    TuitionAmount         INTEGER      NULL,
    ScholarshipAwarded    TEXT         NULL,
    IsPaid                INTEGER      NULL,
    LastAccessed          DATETIME     NULL,
    ProgressPercent       INTEGER      NULL,
    Notes                 TEXT         NULL,
    CreatedByAdminId      INTEGER      NULL,
    CreatedTimestamp      DATETIME     NULL
);
INSERT INTO course_enrollments VALUES (1, 101, 2001, '2023-01-15 09:00:00', NULL, 'Enrolled', NULL, 3, 501, 'Fall2023', 'MainCampus', 'CreditCard', 1500, NULL, 0, '2023-02-20 10:30:00', 20, 'N/A', 10, '2023-01-15 09:05:00');
INSERT INTO course_enrollments VALUES (2, 102, 2002, '2022-09-01 08:30:00', '2022-12-20 14:00:00', 'Completed', 'A', 4, 502, 'Fall2022', 'NorthCampus', 'BankTransfer', 2000, 'Merit', 1, '2022-12-01 12:00:00', 100, 'Good performance', 11, '2022-09-01 08:35:00');
INSERT INTO course_enrollments VALUES (3, 103, 2003, '2023-03-10 11:15:00', NULL, 'Withdrawn', NULL, 0, 503, 'Spring2023', 'EastCampus', 'PayPal', 1200, NULL, 0, '2023-04-05 09:45:00', 10, 'Personal reasons', 12, '2023-03-10 11:20:00');

-- Funding records for research projects
CREATE TABLE research_project_funding
(
    FundingId               INTEGER      NOT NULL PRIMARY KEY,
    ProjectId               INTEGER      NULL,
    FunderName              TEXT         NULL,
    GrantNumber             TEXT         NULL,
    AmountAwarded           INTEGER      NULL,
    Currency                TEXT         NULL,
    FundingStartDate        DATETIME     NULL,
    FundingEndDate          DATETIME     NULL,
    IsMultiYear             INTEGER      NULL,
    AllocationMethod        TEXT         NULL,
    ReportingFrequency     TEXT         NULL,
    ContactPerson           TEXT         NULL,
    ContactEmail            TEXT         NULL,
    ApprovedByCommittee     TEXT         NULL,
    ReviewScore             INTEGER      NULL,
    DisbursementDate        DATETIME     NULL,
    FundingStatus           TEXT         NULL,
    Notes                   TEXT         NULL,
    CreatedByUserId         INTEGER      NULL,
    CreatedTimestamp        DATETIME     NULL
);
INSERT INTO research_project_funding VALUES (1, 3001, 'NationalScienceFoundation', 'NSF-2022-001', 500000, 'USD', '2022-07-01 00:00:00', '2025-06-30 23:59:59', 1, 'Milestone', 'Annual', 'DrSmith', 'smith@example.com', 'CommitteeA', 85, '2022-07-15 10:00:00', 'Active', 'Initial award', 20, '2022-07-01 08:00:00');
INSERT INTO research_project_funding VALUES (2, 3002, 'HealthResearchCouncil', 'HRC-2021-045', 250000, 'USD', '2021-01-01 00:00:00', '2023-12-31 23:59:59', 0, 'Direct', 'Biannual', 'DrJones', 'jones@example.com', 'CommitteeB', 78, '2021-01-10 09:30:00', 'Completed', 'Final report submitted', 21, '2021-01-01 07:45:00');
INSERT INTO research_project_funding VALUES (3, 3003, 'TechInnovateInc', 'TI-2023-108', 100000, 'USD', '2023-03-01 00:00:00', '2024-02-28 23:59:59', 0, 'Equity', 'Quarterly', 'MsLee', 'lee@example.com', 'CommitteeC', 92, '2023-03-05 14:20:00', 'Pending', 'Awaiting final approval', 22, '2023-03-01 06:50:00');

-- Maintenance logs for hardware assets
CREATE TABLE hardware_asset_maintenance
(
    MaintenanceId          INTEGER      NOT NULL PRIMARY KEY,
    AssetId                INTEGER      NULL,
    MaintenanceDate        DATETIME     NULL,
    TechnicianId           INTEGER      NULL,
    MaintenanceType        TEXT         NULL,
    IssueDescription       TEXT         NULL,
    ResolutionDetails      TEXT         NULL,
    DowntimeMinutes        INTEGER      NULL,
    PartsReplaced          TEXT         NULL,
    CostIncurred           INTEGER      NULL,
    WarrantyCovered        INTEGER      NULL,
    FollowUpRequired       INTEGER      NULL,
    FollowUpDate           DATETIME     NULL,
    MaintenanceStatus      TEXT         NULL,
    Notes                  TEXT         NULL,
    CreatedByUserId        INTEGER      NULL,
    CreatedTimestamp       DATETIME     NULL,
    UpdatedByUserId        INTEGER      NULL,
    UpdatedTimestamp       DATETIME     NULL,
    ComplianceCheckPassed  INTEGER      NULL
);
INSERT INTO hardware_asset_maintenance VALUES (1, 4001, '2023-05-10 08:00:00', 501, 'Routine', 'N/A', 'Replaced fan', 30, 'FanModelX', 150, 1, 0, NULL, 'Completed', 'No further action', 30, '2023-05-10 08:05:00', 31, '2023-05-10 08:40:00', 1);
INSERT INTO hardware_asset_maintenance VALUES (2, 4002, '2023-04-22 14:30:00', 502, 'Repair', 'Overheating', 'Cleaned heatsink and applied new thermal paste', 45, 'ThermalPasteY', 80, 0, 1, '2023-05-01 09:00:00', 'Closed', 'Monitoring temperature', 32, '2023-04-22 14:35:00', 33, '2023-04-22 15:20:00', 1);
INSERT INTO hardware_asset_maintenance VALUES (3, 4003, '2023-03-15 11:20:00', 503, 'Upgrade', 'Insufficient RAM', 'Added 16GB RAM module', 60, 'RAM16GBZ', 200, 0, 0, NULL, 'Completed', 'Performance improved', 34, '2023-03-15 11:25:00', 35, '2023-03-15 12:30:00', 1);

-- Vendor service agreement details
CREATE TABLE vendor_service_agreements
(
    AgreementId            INTEGER      NOT NULL PRIMARY KEY,
    VendorId               INTEGER      NULL,
    ServiceCategory        TEXT         NULL,
    AgreementStartDate     DATETIME     NULL,
    AgreementEndDate       DATETIME     NULL,
    RenewalOption          TEXT         NULL,
    PaymentTerms           TEXT         NULL,
    ServiceLevelAgreement  TEXT         NULL,
    PrimaryContactName     TEXT         NULL,
    PrimaryContactEmail    TEXT         NULL,
    BillingContactName     TEXT         NULL,
    BillingContactEmail    TEXT         NULL,
    ContractValue          INTEGER      NULL,
    Currency               TEXT         NULL,
    IsActive               INTEGER      NULL,
    TerminationNoticeDays INTEGER      NULL,
    NoticeGivenDate        DATETIME     NULL,
    ReasonForTermination   TEXT         NULL,
    CreatedByUserId        INTEGER      NULL,
    CreatedTimestamp       DATETIME     NULL
);
INSERT INTO vendor_service_agreements VALUES (1, 6001, 'CloudHosting', '2022-01-01 00:00:00', '2024-12-31 23:59:59', 'AutoRenew', 'Net30', '99.9Uptime', 'AliceBrown', 'alice.brown@vendor.com', 'BobWhite', 'bob.white@vendor.com', 120000, 'USD', 1, 60, NULL, NULL, 40, '2022-01-01 09:00:00');
INSERT INTO vendor_service_agreements VALUES (2, 6002, 'ITSupport', '2021-06-15 00:00:00', '2023-06-14 23:59:59', 'ManualRenew', 'Net45', 'ResponseWithin2Hours', 'CarolGreen', 'carol.green@vendor.com', 'DaveBlack', 'dave.black@vendor.com', 80000, 'USD', 0, 30, '2023-05-01 10:00:00', 'CostReduction', 41, '2021-06-15 08:30:00');
INSERT INTO vendor_service_agreements VALUES (3, 6003, 'DataAnalytics', '2023-03-01 00:00:00', '2025-02-28 23:59:59', 'AutoRenew', 'Net15', 'MonthlyReport', 'EveGray', 'eve.gray@vendor.com', 'FrankBlue', 'frank.blue@vendor.com', 150000, 'USD', 1, 90, NULL, NULL, 42, '2023-03-01 07:45:00');

-- Custom user content settings
CREATE TABLE user_content_customizations
(
    CustomizationId        INTEGER      NOT NULL PRIMARY KEY,
    UserId                 INTEGER      NULL,
    ThemeName              TEXT         NULL,
    FontSize               INTEGER      NULL,
    LayoutPreference       TEXT         NULL,
    ShowAds                INTEGER      NULL,
    LanguageCode           TEXT         NULL,
    EnableAnimations       INTEGER      NULL,
    PreferredDateFormat    TEXT         NULL,
    TimezoneOffsetMinutes  INTEGER      NULL,
    NotificationFrequency TEXT         NULL,
    DarkModeEnabled        INTEGER      NULL,
    CustomCSS              TEXT         NULL,
    ContentFilterLevel     TEXT         NULL,
    SavedSearchesCount     INTEGER      NULL,
    DashboardWidgets       TEXT         NULL,
    LastModifiedByUserId   INTEGER      NULL,
    LastModifiedTimestamp  DATETIME     NULL,
    IsActive               INTEGER      NULL,
    CreationTimestamp      DATETIME     NULL
);
INSERT INTO user_content_customizations VALUES (1, 101, 'Classic', 14, 'Grid', 0, 'en-US', 1, 'MM/DD/YYYY', -300, 'Daily', 1, NULL, 'Medium', 5, 'News,Stats', 20, '2023-07-01 12:00:00', 1, '2023-01-10 08:00:00');
INSERT INTO user_content_customizations VALUES (2, 102, 'Modern', 16, 'List', 1, 'es-ES', 0, 'DD/MM/YYYY', 60, 'Weekly', 0, NULL, 'High', 2, 'Messages,Alerts', 21, '2023-07-02 09:30:00', 1, '2023-02-15 09:15:00');
INSERT INTO user_content_customizations VALUES (3, 103, 'Dark', 13, 'Masonry', 0, 'fr-FR', 1, 'YYYY-MM-DD', 0, 'Monthly', 1, NULL, 'Low', 8, 'Tasks,Calendar', 22, '2023-07-03 14:45:00', 1, '2023-03-20 10:20:00');

-- Status tracking for external data feeds
CREATE TABLE external_data_feed_status
(
    FeedStatusId           INTEGER      NOT NULL PRIMARY KEY,
    FeedName               TEXT         NULL,
    SourceSystem           TEXT         NULL,
    LastFetchTimestamp     DATETIME     NULL,
    RecordCount            INTEGER      NULL,
    SuccessFlag            INTEGER      NULL,
    ErrorMessage           TEXT         NULL,
    NextScheduledFetch     DATETIME     NULL,
    IsEnabled              INTEGER      NULL,
    PriorityLevel          INTEGER      NULL,
    DataFormat             TEXT         NULL,
    CompressionType        TEXT         NULL,
    RetentionDays          INTEGER      NULL,
    ContactPerson          TEXT         NULL,
    ContactEmail           TEXT         NULL,
    CreatedByUserId        INTEGER      NULL,
    CreatedTimestamp       DATETIME     NULL,
    UpdatedByUserId        INTEGER      NULL,
    UpdatedTimestamp       DATETIME     NULL,
    Notes                  TEXT         NULL
);
INSERT INTO external_data_feed_status VALUES (1, 'WeatherStationFeed', 'WeatherAPI', '2023-07-10 06:00:00', 1440, 1, NULL, '2023-07-10 18:00:00', 1, 1, 'JSON', 'gzip', 30, 'TomGrey', 'tom.grey@example.com', 50, '2023-01-01 09:00:00', 51, '2023-07-10 06:05:00', 'Hourly weather data');
INSERT INTO external_data_feed_status VALUES (2, 'FinancialMarketFeed', 'FinanceProvider', '2023-07-10 08:15:00', 300, 0, 'ConnectionTimeout', '2023-07-10 20:15:00', 1, 2, 'XML', 'none', 7, 'SaraBlue', 'sara.blue@example.com', 52, '2023-02-01 10:30:00', 53, '2023-07-10 08:20:00', 'Daily market snapshot');
INSERT INTO external_data_feed_status VALUES (3, 'SocialMediaSentiment', 'SocialAPI', '2023-07-09 22:45:00', 5000, 1, NULL, '2023-07-10 22:45:00', 0, 3, 'CSV', 'zip', 14, 'LiamRed', 'liam.red@example.com', 54, '2023-03-15 11:00:00', 55, '2023-07-09 22:50:00', 'Suspended due to policy change');

-- Sponsor details for events
CREATE TABLE event_sponsor_details
(
    SponsorId              INTEGER      NOT NULL PRIMARY KEY,
    EventId                INTEGER      NULL,
    SponsorName            TEXT         NULL,
    SponsorshipLevel       TEXT         NULL,
    ContributionAmount     INTEGER      NULL,
    Currency               TEXT         NULL,
    ContactPersonName      TEXT         NULL,
    ContactPersonEmail     TEXT         NULL,
    AgreementSignedDate    DATETIME     NULL,
    LogoUrl                TEXT         NULL,
    BoothNumber            TEXT         NULL,
    PromotionalMaterials   TEXT         NULL,
    IsFeaturedSponsor      INTEGER      NULL,
    SponsorWebsite         TEXT         NULL,
    SocialMediaHandle      TEXT         NULL,
    CreatedByUserId        INTEGER      NULL,
    CreatedTimestamp       DATETIME     NULL,
    UpdatedByUserId        INTEGER      NULL,
    UpdatedTimestamp       DATETIME     NULL,
    Notes                  TEXT         NULL
);
INSERT INTO event_sponsor_details VALUES (1, 8001, 'TechCorp', 'Platinum', 50000, 'USD', 'OliviaWhite', 'olivia.white@techcorp.com', '2023-04-01 09:00:00', 'http://example.com/logo1.png', 'A12', 'Brochures,Swag', 1, 'http://techcorp.com', '@TechCorp', 60, '2023-04-01 09:05:00', 61, '2023-06-15 14:20:00', 'Main sponsor for keynote');
INSERT INTO event_sponsor_details VALUES (2, 8002, 'DataSolutions', 'Gold', 30000, 'USD', 'EthanBlack', 'ethan.black@datasolutions.com', '2023-05-10 10:30:00', 'http://example.com/logo2.png', 'B07', 'Flyers,USBSticks', 0, 'http://datasolutions.com', '@DataSol', 62, '2023-05-10 10:35:00', 63, '2023-07-01 11:00:00', 'Sponsor for breakout sessions');
INSERT INTO event_sponsor_details VALUES (3, 8003, 'EcoEnergy', 'Silver', 15000, 'USD', 'MiaGreen', 'mia.green@ecoenergy.com', '2023-06-20 08:45:00', 'http://example.com/logo3.png', 'C03', 'Posters,Stickers', 0, 'http://ecoenergy.com', '@EcoEnergy', 64, '2023-06-20 08:50:00', 65, '2023-07-05 09:15:00', 'Sustainability track sponsor');

-- Updates to the knowledge graph taxonomy
CREATE TABLE knowledge_graph_taxonomy_updates
(
    UpdateId               INTEGER      NOT NULL PRIMARY KEY,
    TaxonomyVersion        TEXT         NULL,
    EntityType             TEXT         NULL,
    EntityId               INTEGER      NULL,
    ChangeType             TEXT         NULL,
    OldValue               TEXT         NULL,
    NewValue               TEXT         NULL,
    ChangedByUserId        INTEGER      NULL,
    ChangeTimestamp        DATETIME     NULL,
    ApprovalStatus         TEXT         NULL,
    ApprovedByUserId       INTEGER      NULL,
    ApprovalTimestamp      DATETIME     NULL,
    ReasonForChange        TEXT         NULL,
    ImpactAssessment       TEXT         NULL,
    NotificationSent       INTEGER      NULL,
    NotificationChannel    TEXT         NULL,
    DocumentationUrl       TEXT         NULL,
    IsCriticalUpdate       INTEGER      NULL,
    RollbackPlanUrl        TEXT         NULL,
    Comments               TEXT         NULL
);
INSERT INTO knowledge_graph_taxonomy_updates VALUES (1, 'v2.1', 'Concept', 9001, 'Rename', 'OldConceptName', 'NewConceptName', 70, '2023-07-01 12:00:00', 'Approved', 71, '2023-07-02 09:30:00', 'Standardization', 'Low', 1, 'Email', 'http://docs.example.com/update1', 0, 'http://docs.example.com/rollback1', 'No issues observed');
INSERT INTO knowledge_graph_taxonomy_updates VALUES (2, 'v2.1', 'Relation', 9002, 'Add', NULL, 'RelatedTo', 72, '2023-07-03 14:15:00', 'Pending', NULL, NULL, 'New relationship needed for analytics', 'Medium', 0, NULL, NULL, 0, NULL, 'Awaiting review');
INSERT INTO knowledge_graph_taxonomy_updates VALUES (3, 'v2.2', 'Attribute', 9003, 'Delete', 'ObsoleteAttr', NULL, 73, '2023-07-05 10:45:00', 'Approved', 74, '2023-07-06 08:20:00', 'Removal of deprecated attribute', 'Low', 1, 'Slack', 'http://docs.example.com/update3', 0, 'http://docs.example.com/rollback3', 'Rollback completed successfully');

-- API client quota usage tracking
CREATE TABLE api_client_quota_usage
(
    UsageId                INTEGER      NOT NULL PRIMARY KEY,
    ApiClientId            INTEGER      NULL,
    EndpointName           TEXT         NULL,
    RequestCount           INTEGER      NULL,
    SuccessCount           INTEGER      NULL,
    FailureCount           INTEGER      NULL,
    QuotaLimit             INTEGER      NULL,
    PeriodStart            DATETIME     NULL,
    PeriodEnd              DATETIME     NULL,
    LastRequestTimestamp   DATETIME     NULL,
    IsThrottled            INTEGER      NULL,
    ThrottleReason         TEXT         NULL,
    ResetTimestamp         DATETIME     NULL,
    CreatedByUserId        INTEGER      NULL,
    CreatedTimestamp       DATETIME     NULL,
    UpdatedByUserId        INTEGER      NULL,
    UpdatedTimestamp       DATETIME     NULL,
    Notes                  TEXT         NULL,
    AlertSent              INTEGER      NULL,
    AlertTimestamp         DATETIME     NULL
);
INSERT INTO api_client_quota_usage VALUES (1, 80001, '/v1/posts', 1200, 1150, 50, 5000, '2023-07-01 00:00:00', '2023-07-01 23:59:59', '2023-07-01 22:30:00', 0, NULL, '2023-07-02 00:00:00', 80, '2023-07-01 09:00:00', 81, '2023-07-01 22:35:00', NULL, 0, NULL);
INSERT INTO api_client_quota_usage VALUES (2, 80002, '/v1/comments', 3000, 2900, 100, 3000, '2023-07-01 00:00:00', '2023-07-01 23:59:59', '2023-07-01 21:50:00', 1, 'QuotaExceeded', '2023-07-02 00:00:00', 82, '2023-07-01 08:45:00', 83, '2023-07-01 21:55:00', 'Client reached limit early', 1, '2023-07-01 22:00:00');
INSERT INTO api_client_quota_usage VALUES (3, 80003, '/v1/users', 800, 795, 5, 2000, '2023-07-01 00:00:00', '2023-07-01 23:59:59', '2023-07-01 20:10:00', 0, NULL, '2023-07-02 00:00:00', 84, '2023-07-01 07:30:00', 85, '2023-07-01 20:12:00', NULL, 0, NULL);

-- Detailed logs of advertisement creative assets
CREATE TABLE ad_creative_assets
(
    AssetId                INTEGER      NOT NULL PRIMARY KEY,
    CampaignId             INTEGER      NULL,
    AssetType              TEXT         NULL,
    FileName               TEXT         NULL,
    FilePath               TEXT         NULL,
    FileSizeBytes          INTEGER      NULL,
    WidthPixels            INTEGER      NULL,
    HeightPixels           INTEGER      NULL,
    MimeType               TEXT         NULL,
    UploadedByUserId       INTEGER      NULL,
    UploadedTimestamp      DATETIME     NULL,
    IsActive               INTEGER      NULL,
    ApprovalStatus         TEXT         NULL,
    ApprovedByUserId       INTEGER      NULL,
    ApprovalTimestamp      DATETIME     NULL,
    TargetAudienceSegment  TEXT         NULL,
    ClickThroughRate       REAL         NULL,
    ConversionRate         REAL         NULL,
    LastPerformanceReview  DATETIME     NULL,
    Notes                  TEXT         NULL
);
INSERT INTO ad_creative_assets VALUES (1, 9001, 'Image', 'banner1.jpg', '/assets/banners/banner1.jpg', 204800, 728, 90, 'image/jpeg', 90, '2023-06-01 10:00:00', 1, 'Approved', 91, '2023-06-02 09:30:00', 'TechEnthusiasts', 0.025, 0.005, '2023-07-01 12:00:00', 'High engagement in Q2');
INSERT INTO ad_creative_assets VALUES (2, 9002, 'Video', 'intro.mp4', '/assets/videos/intro.mp4', 5242880, 1280, 720, 'video/mp4', 92, '2023-06-10 11:15:00', 1, 'Pending', NULL, NULL, 'GeneralAudience', 0.015, 0.003, '2023-07-01 13:20:00', 'Awaiting approval');
INSERT INTO ad_creative_assets VALUES (3, 9003, 'HTML', 'ad_snippet.html', '/assets/html/ad_snippet.html', 10240, NULL, NULL, 'text/html', 93, '2023-06-20 14:45:00', 0, 'Rejected', 94, '2023-06-21 08:00:00', 'YoungAdults', 0.0, 0.0, '2023-07-01 14:30:00', 'Did not meet policy guidelines');

-- Mapping of knowledge graph entity properties
CREATE TABLE knowledge_graph_entity_properties
(
    MappingId              INTEGER      NOT NULL PRIMARY KEY,
    EntityId               INTEGER      NULL,
    PropertyName           TEXT         NULL,
    PropertyType           TEXT         NULL,
    DataType               TEXT         NULL,
    IsIndexed              INTEGER      NULL,
    IsUnique               INTEGER      NULL,
    DefaultValue           TEXT         NULL,
    IsDeprecated           INTEGER      NULL,
    DeprecationDate        DATETIME     NULL,
    CreatedByUserId        INTEGER      NULL,
    CreatedTimestamp       DATETIME     NULL,
    UpdatedByUserId        INTEGER      NULL,
    UpdatedTimestamp       DATETIME     NULL,
    ValidationRule         TEXT         NULL,
    DocumentationUrl       TEXT         NULL,
    ExampleValue           TEXT         NULL,
    SensitivityLevel       TEXT         NULL,
    IsSearchable           INTEGER      NULL,
    Notes                  TEXT         NULL
);
INSERT INTO knowledge_graph_entity_properties VALUES (1, 10001, 'title', 'Attribute', 'String', 1, 0, NULL, 0, NULL, 100, '2023-01-01 09:00:00', 101, '2023-06-01 10:15:00', 'NonEmpty', 'http://docs.example.com/prop_title', 'Sample Title', 'Low', 1, 'Primary display name');
INSERT INTO knowledge_graph_entity_properties VALUES (2, 10002, 'created_at', 'Attribute', 'DateTime', 1, 0, NULL, 0, NULL, 102, '2023-01-05 12:30:00', 103, '2023-06-02 11:20:00', 'PastOrPresent', 'http://docs.example.com/prop_created_at', '2023-07-01 08:00:00', 'Medium', 1, 'Timestamp of creation');
INSERT INTO knowledge_graph_entity_properties VALUES (3, 10003, 'status', 'Attribute', 'Enum', 1, 0, 'active', 0, NULL, 104, '2023-02-10 14:45:00', 105, '2023-06-03 13:05:00', 'OneOf(active,inactive,archived)', 'http://docs.example.com/prop_status', 'active', 'Low', 1, 'Current lifecycle state');

-- Detailed log of data pipeline jobs
CREATE TABLE data_pipeline_jobs
(
    JobId                  INTEGER      NOT NULL PRIMARY KEY,
    JobName                TEXT         NULL,
    ScheduleCron           TEXT         NULL,
    LastRunStartTime       DATETIME     NULL,
    LastRunEndTime         DATETIME     NULL,
    Status                 TEXT         NULL,
    RecordsProcessed       INTEGER      NULL,
    RecordsFailed          INTEGER      NULL,
    SourceSystem           TEXT         NULL,
    DestinationSystem      TEXT         NULL,
    RuntimeSeconds         INTEGER      NULL,
    CpuUsagePercent        REAL         NULL,
    MemoryUsageMb          INTEGER      NULL,
    TriggeredByUserId      INTEGER      NULL,
    CreatedTimestamp       DATETIME     NULL,
    UpdatedTimestamp       DATETIME     NULL,
    ErrorMessage           TEXT         NULL,
    AlertSent              INTEGER      NULL,
    AlertTimestamp         DATETIME     NULL,
    OwnerTeam              TEXT         NULL
);
INSERT INTO data_pipeline_jobs VALUES (1, 'UserActivityIngestion', '0 2 * * *', '2023-07-01 02:00:00', '2023-07-01 02:15:00', 'Success', 1500000, 0, 'AppLogs', 'DataWarehouse', 900, 45.5, 2048, 110, '2023-01-01 09:00:00', '2023-07-01 02:16:00', NULL, 0, NULL, 'DataEngineering');
INSERT INTO data_pipeline_jobs VALUES (2, 'DailySalesAggregation', '0 4 * * *', '2023-07-01 04:00:00', '2023-07-01 04:05:00', 'Success', 250000, 0, 'SalesDB', 'AnalyticsDB', 300, 30.2, 1024, 111, '2023-01-05 10:00:00', '2023-07-01 04:06:00', NULL, 0, NULL, 'AnalyticsTeam');
INSERT INTO data_pipeline_jobs VALUES (3, 'ETL_FailedRecordsExport', '30 1 * * *', '2023-07-01 01:30:00', '2023-07-01 01:45:00', 'Failed', 50000, 1200, 'StagingDB', 'ErrorArchive', 900, 55.0, 1536, 112, '2023-02-10 11:30:00', '2023-07-01 01:46:00', 'Connection timeout to destination', 1, '2023-07-01 01:47:00', 'DataOps');

-- Records for regional ad placement metrics
CREATE TABLE regional_ad_placement_metrics
(
    PlacementId            INTEGER      NOT NULL PRIMARY KEY,
    RegionCode             TEXT         NULL,
    CampaignId             INTEGER      NULL,
    Impressions            INTEGER      NULL,
    Clicks                 INTEGER      NULL,
    Conversions            INTEGER      NULL,
    CostUsd                REAL         NULL,
    RevenueUsd             REAL         NULL,
    Date                   DATE         NULL,
    DeviceType             TEXT         NULL,
    Browser                TEXT         NULL,
    OperatingSystem        TEXT         NULL,
    Cpm                    REAL         NULL,
    Cpc                    REAL         NULL,
    Cpa                    REAL         NULL,
    IsViewable             INTEGER      NULL,
    ViewabilityRate        REAL         NULL,
    FraudScore             REAL         NULL,
    CreatedTimestamp       DATETIME     NULL,
    UpdatedTimestamp       DATETIME     NULL
);
INSERT INTO regional_ad_placement_metrics VALUES (1, 'US-CA', 9001, 120000, 3400, 210, 1500.00, 1800.00, '2023-07-01', 'Desktop', 'Chrome', 'Windows', 12.5, 0.44, 0.71, 1, 0.85, 0.02, '2023-07-01 08:00:00', '2023-07-01 12:00:00');
INSERT INTO regional_ad_placement_metrics VALUES (2, 'EU-DE', 9002, 95000, 2700, 180, 1300.00, 1600.00, '2023-07-01', 'Mobile', 'Safari', 'iOS', 13.7, 0.48, 0.73, 1, 0.80, 0.03, '2023-07-01 09:00:00', '2023-07-01 13:00:00');
INSERT INTO regional_ad_placement_metrics VALUES (3, 'AP-JP', 9003, 80000, 2200, 150, 1100.00, 1400.00, '2023-07-01', 'Tablet', 'Firefox', 'Android', 13.75, 0.50, 0.75, 0, 0.0, 0.05, '2023-07-01 10:00:00', '2023-07-01 14:00:00');

-- Tracking of user learning achievements
CREATE TABLE user_learning_achievements
(
    AchievementId          INTEGER      NOT NULL PRIMARY KEY,
    UserId                 INTEGER      NULL,
    AchievementName        TEXT         NULL,
    AchievementLevel       TEXT         NULL,
    PointsEarned           INTEGER      NULL,
    DateEarned             DATETIME     NULL,
    BadgeId                INTEGER      NULL,
    IsShared               INTEGER      NULL,
    SharedPlatform         TEXT         NULL,
    Description            TEXT         NULL,
    ExpirationDate         DATETIME     NULL,
    CreatedByAdminId       INTEGER      NULL,
    CreatedTimestamp       DATETIME     NULL,
    UpdatedByAdminId       INTEGER      NULL,
    UpdatedTimestamp       DATETIME     NULL,
    VerificationStatus     TEXT         NULL,
    VerifiedByUserId       INTEGER      NULL,
    VerificationTimestamp  DATETIME     NULL,
    Notes                  TEXT         NULL,
    IsActive               INTEGER      NULL
);
INSERT INTO user_learning_achievements VALUES (1, 101, 'SQL Mastery', 'Gold', 500, '2023-06-15 10:00:00', 1, 1, 'Twitter', 'Completed advanced SQL course', NULL, 120, '2023-06-15 10:05:00', 121, '2023-06-15 11:00:00', 'Verified', 122, '2023-06-15 11:05:00', 'Awarded automatically', 1);
INSERT INTO user_learning_achievements VALUES (2, 102, 'Data Visualization', 'Silver', 300, '2023-05-20 14:30:00', 2, 0, NULL, 'Created 5 interactive dashboards', NULL, 122, '2023-05-20 14:35:00', 123, '2023-05-20 15:00:00', 'Pending', NULL, NULL, 'Awaiting manager approval', 1);
INSERT INTO user_learning_achievements VALUES (3, 103, 'Python Basics', 'Bronze', 150, '2023-04-10 09:45:00', 3, 1, 'LinkedIn', 'Finished introductory Python module', '2024-04-10 09:45:00', 124, '2023-04-10 09:50:00', 125, '2023-04-10 10:30:00', 'Verified', 126, '2023-04-10 10:35:00', 'Shared publicly', 1);

-- Detailed logs of content translation job queue
CREATE TABLE content_translation_job_queue
(
    QueueId                INTEGER      NOT NULL PRIMARY KEY,
    ContentId              INTEGER      NULL,
    SourceLanguage         TEXT         NULL,
    TargetLanguage         TEXT         NULL,
    SubmittedByUserId      INTEGER      NULL,
    SubmissionTimestamp    DATETIME     NULL,
    PriorityLevel          INTEGER      NULL,
    Status                 TEXT         NULL,
    StartedTimestamp       DATETIME     NULL,
    CompletedTimestamp     DATETIME     NULL,
    TranslatorId           INTEGER      NULL,
    TranslationEngine      TEXT         NULL,
    WordCount              INTEGER      NULL,
    EstimatedCostUsd       REAL         NULL,
    ActualCostUsd          REAL         NULL,
    Comments               TEXT         NULL,
    ErrorMessage           TEXT         NULL,
    RetryCount             INTEGER      NULL,
    LastRetryTimestamp     DATETIME     NULL,
    IsAutomated            INTEGER      NULL
);
INSERT INTO content_translation_job_queue VALUES (1, 2001, 'en', 'es', 101, '2023-07-01 08:00:00', 1, 'InProgress', '2023-07-01 08:05:00', NULL, NULL, 'Machine', 1200, 15.00, NULL, NULL, NULL, 0, NULL, 1);
INSERT INTO content_translation_job_queue VALUES (2, 2002, 'de', 'en', 102, '2023-07-01 09:30:00', 2, 'Completed', '2023-07-01 09:35:00', '2023-07-01 09:50:00', 201, 'Human', 800, 10.00, 9.50, 'Accurate translation', NULL, 0, NULL, 0);
INSERT INTO content_translation_job_queue VALUES (3, 2003, 'fr', 'zh', 103, '2023-07-01 10:15:00', 3, 'Failed', '2023-07-01 10:20:00', NULL, NULL, 'Machine', 1500, 18.75, NULL, NULL, 'Network timeout', 1, '2023-07-01 10:25:00', 1);