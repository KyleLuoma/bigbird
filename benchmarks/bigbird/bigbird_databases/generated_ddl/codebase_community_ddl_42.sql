-- Digital marketing channel definition
CREATE TABLE digital_marketing_channels
(
    ChannelId            INTEGER          NOT NULL PRIMARY KEY,
    ChannelName          TEXT             NOT NULL,
    PlatformType         TEXT,
    IsActive             INTEGER,  -- 0 = false, 1 = true
    StartDate            DATETIME,
    EndDate              DATETIME,
    BudgetMonthlyUSD     INTEGER,
    CostPerClickUSD      REAL,
    AvgConversionRate    REAL,
    TargetAudience       TEXT,
    GeoTargeting         TEXT,
    LanguageTargeting    TEXT,
    PrimaryContactUserId INTEGER,
    CreatedByUserId      INTEGER,
    CreationTimestamp    DATETIME,
    LastModifiedByUserId INTEGER,
    LastModifiedTimestamp DATETIME,
    CampaignGoal         TEXT,
    AttributionModel     TEXT,
    TrackingPixelUrl     TEXT,
    AnalyticsProvider    TEXT,
    DataRetentionDays    INTEGER,
    IsThirdPartyManaged  INTEGER,
    IntegrationKey       TEXT,
    Notes                TEXT
);

INSERT INTO digital_marketing_channels VALUES (1, 'Email', 'Email', 1, '2023-01-01', NULL, 5000, 0.12, 2.5, 'Subscribers', 'Global', 'EN', 101, 101, '2023-01-01 08:00:00', 102, '2023-06-15 12:30:00', 'Lead Generation', 'FirstTouch', 'https://track.example.com/pixel1', 'GoogleAnalytics', 365, 0, 'EML123', 'Primary newsletter channel');
INSERT INTO digital_marketing_channels VALUES (2, 'PaidSearch', 'SearchEngine', 1, '2023-03-15', NULL, 12000, 0.75, 3.1, 'Prospects', 'NorthAmerica', 'EN', 102, 102, '2023-03-15 09:15:00', 103, '2023-07-01 10:45:00', 'Acquisition', 'LastClick', 'https://track.example.com/pixel2', 'AdobeAnalytics', 180, 1, 'PSEARCH456', 'Managed by agency');
INSERT INTO digital_marketing_channels VALUES (3, 'SocialMedia', 'Social', 0, '2022-05-01', '2023-12-31', 8000, 0.20, 1.8, 'Followers', 'Europe', 'EN,DE,FR', 103, 103, '2022-05-01 07:30:00', 104, '2023-04-20 14:20:00', 'Brand Awareness', 'Linear', 'https://track.example.com/pixel3', 'Mixpanel', 90, 0, 'SOC789', 'Seasonal campaign');

-- User device specific settings
CREATE TABLE user_device_settings
(
    SettingId            INTEGER          NOT NULL PRIMARY KEY,
    UserId               INTEGER,
    DeviceId             TEXT,
    SettingKey           TEXT,
    SettingValue         TEXT,
    IsEncrypted          INTEGER,
    CreatedTimestamp     DATETIME,
    CreatedByUserId      INTEGER,
    ModifiedTimestamp    DATETIME,
    ModifiedByUserId     INTEGER,
    EffectiveStartDate   DATETIME,
    EffectiveEndDate     DATETIME,
    ApplyToAllDevices    INTEGER,
    SyncPriority         INTEGER,
    VersionNumber        INTEGER,
    SourceSystem         TEXT,
    LastSyncTimestamp    DATETIME,
    IsActive             INTEGER,
    Remarks              TEXT,
    AuditLogId           INTEGER,
    ComplianceTag        TEXT,
    RetentionPeriodDays  INTEGER,
    NotificationChannel  TEXT,
    EncryptionAlgorithm  TEXT,
    IsUserOverridden     INTEGER,
    OverrideReason       TEXT
);

INSERT INTO user_device_settings VALUES (1, 201, 'devA01', 'Theme', 'Dark', 0, '2023-02-10 11:00:00', 201, '2023-07-01 09:15:00', 202, '2023-01-01 00:00:00', NULL, 1, 5, 3, 'MobileApp', '2023-07-01 09:15:00', 1, 'User prefers dark mode', 301, 'Privacy', 365, 'Email', 'AES256', 0, NULL);
INSERT INTO user_device_settings VALUES (2, 202, 'devB07', 'Notifications', 'Enabled', 1, '2023-03-05 08:30:00', 202, '2023-08-10 14:45:00', 203, '2023-03-01 00:00:00', NULL, 1, 10, 1, 'WebPortal', '2023-08-10 14:45:00', 1, 'Standard notification setting', 302, 'Compliance', 180, 'Push', 'RSA2048', 0, NULL);
INSERT INTO user_device_settings VALUES (3, 203, 'devC12', 'Language', 'EN', 0, '2023-01-20 13:25:00', 203, '2023-06-20 16:00:00', 204, '2023-01-01 00:00:00', NULL, 0, 2, 4, 'DesktopApp', '2023-06-20 16:00:00', 1, 'Default language', 303, 'General', 730, 'SMS', 'None', 0, NULL);

-- System patch history log
CREATE TABLE system_patch_history
(
    PatchId              INTEGER          NOT NULL PRIMARY KEY,
    PatchVersion         TEXT,
    PatchTitle           TEXT,
    Description          TEXT,
    AppliedDate          DATETIME,
    AppliedByUserId      INTEGER,
    ApprovalStatus       TEXT,
    RollbackSupported    INTEGER,
    RollbackDate         DATETIME,
    AffectedSubsystems   TEXT,
    ImpactSeverity       TEXT,
    PrePatchVersion      TEXT,
    PostPatchVersion     TEXT,
    IsCritical           INTEGER,
    ReleaseNotesUrl      TEXT,
    ChangeTicketId       TEXT,
    DeploymentWindow     TEXT,
    VerificationStatus   TEXT,
    VerifiedByUserId     INTEGER,
    VerificationDate     DATETIME,
    DowntimeMinutes      INTEGER,
    NotificationSent     INTEGER,
    PatchFileHash        TEXT,
    ComplianceCheckPassed INTEGER,
    AuditLogReference    TEXT,
    Comments             TEXT,
    CreatedTimestamp     DATETIME,
    ModifiedTimestamp    DATETIME
);

INSERT INTO system_patch_history VALUES (1, 'v1.2.3', 'Security Update', 'Fixes CVE-2023-1234', '2023-04-15 02:00:00', 501, 'Approved', 1, NULL, 'Auth, DB', 'High', 'v1.2.2', 'v1.2.3', 1, 'https://patches.example.com/v1.2.3/notes', 'CHG-1001', '02:00-03:00', 'Verified', 502, '2023-04-15 03:30:00', 15, 1, 'abc123def456', 1, 'LOG-9001', 'No issues', '2023-04-14 20:00:00', '2023-04-15 04:00:00');
INSERT INTO system_patch_history VALUES (2, 'v1.3.0', 'Feature Release', 'Introduces new reporting module', '2023-07-20 01:00:00', 502, 'Pending', 0, NULL, 'Reporting', 'Medium', 'v1.2.9', 'v1.3.0', 0, 'https://patches.example.com/v1.3.0/notes', 'CHG-1050', '01:00-02:00', 'Pending', NULL, NULL, 0, 0, 'def789ghi012', 0, 'LOG-9050', 'Awaiting QA', '2023-07-19 18:00:00', '2023-07-20 02:30:00');
INSERT INTO system_patch_history VALUES (3, 'v1.3.1', 'Bug Fix', 'Resolves memory leak in cache service', '2023-09-10 03:30:00', 503, 'Approved', 1, '2023-09-10 04:45:00', 'Cache', 'Low', 'v1.3.0', 'v1.3.1', 0, 'https://patches.example.com/v1.3.1/notes', 'CHG-1085', '03:30-04:30', 'Verified', 504, '2023-09-10 05:00:00', 5, 1, 'ghi345jkl678', 1, 'LOG-9100', 'Patched successfully', '2023-09-09 22:00:00', '2023-09-10 06:00:00');

-- API documentation pages
CREATE TABLE api_documentation_pages
(
    DocPageId            INTEGER          NOT NULL PRIMARY KEY,
    EndpointPath         TEXT,
    HttpMethod           TEXT,
    Title                TEXT,
    Summary              TEXT,
    DetailedDescription  TEXT,
    RequestSchema        TEXT,
    ResponseSchema       TEXT,
    AuthenticationType   TEXT,
    RateLimitPerMinute   INTEGER,
    DeprecationDate      DATE,
    VersionIntroduced    TEXT,
    IsPublic             INTEGER,
    LastUpdatedTimestamp DATETIME,
    UpdatedByUserId      INTEGER,
    ExampleRequest       TEXT,
    ExampleResponse      TEXT,
    ChangeLog            TEXT,
    Tags                 TEXT,
    RelatedEndpoints     TEXT,
    DocumentationUrl    TEXT,
    OwnerTeam            TEXT,
    Status               TEXT,
    SupportedPlatforms   TEXT,
    IsBeta               INTEGER,
    ReleaseNotesUrl      TEXT,
    CreatedTimestamp     DATETIME,
    ModifiedTimestamp    DATETIME,
    Comments             TEXT
);

INSERT INTO api_documentation_pages VALUES (1, '/users/{id}', 'GET', 'Get User', 'Retrieves a user by ID', 'Provides full user profile information', 'UserRequestSchema', 'UserResponseSchema', 'OAuth2', 120, NULL, 'v1.0', 1, '2023-06-01 10:00:00', 601, '{"id":123}', '{"id":123,"name":"John"}', 'Initial release', 'users,profile', '/users', 'https://docs.example.com/users-get', 'UserTeam', 'Active', 'Web,Mobile', 0, 'https://docs.example.com/release/v1.0', '2023-01-15 08:00:00', '2023-06-01 10:00:00', NULL);
INSERT INTO api_documentation_pages VALUES (2, '/posts/search', 'POST', 'Search Posts', 'Advanced post search', 'Supports full‑text and tag filters', 'SearchRequestSchema', 'SearchResponseSchema', 'APIKey', 60, '2024-01-01', 'v2.1', 0, '2023-08-15 14:30:00', 602, '{"query":"sql"}', '{"results":[...] }', 'Added pagination', 'search,posts', '/posts', 'https://docs.example.com/posts-search', 'SearchTeam', 'Deprecated', 'Web', 0, 'https://docs.example.com/release/v2.1', '2023-03-10 09:20:00', '2023-08-15 14:30:00', NULL);
INSERT INTO api_documentation_pages VALUES (3, '/analytics/events', 'PUT', 'Submit Event', 'Record analytics event', 'Tracks custom events for analytics', 'EventRequestSchema', 'EventResponseSchema', 'None', 300, NULL, 'v3.0', 1, '2023-09-20 11:45:00', 603, '{"event":"click","label":"signup"}', '{"status":"accepted"}', 'Added validation', 'analytics,events', '/analytics', 'https://docs.example.com/analytics-events', 'AnalyticsTeam', 'Active', 'Web,Mobile', 1, 'https://docs.example.com/release/v3.0', '2023-05-01 07:15:00', '2023-09-20 11:45:00', NULL);

-- Legal document versioning
CREATE TABLE legal_document_versions
(
    LegalDocId           INTEGER          NOT NULL PRIMARY KEY,
    DocumentName         TEXT,
    VersionNumber        TEXT,
    EffectiveDate        DATE,
    ExpirationDate       DATE,
    DocumentType         TEXT,
    IsMandatory          INTEGER,
    AuthorUserId         INTEGER,
    ReviewerUserId       INTEGER,
    ApprovalStatus       TEXT,
    ChangeSummary        TEXT,
    StoragePath          TEXT,
    SignatureRequired    INTEGER,
    SignedByUserId       INTEGER,
    SignedDate           DATETIME,
    ConfidentialLevel    TEXT,
    Jurisdiction         TEXT,
    Language             TEXT,
    CreatedTimestamp     DATETIME,
    ModifiedTimestamp    DATETIME,
    IsActive             INTEGER,
    RetentionPeriodDays  INTEGER,
    ArchivedPath         TEXT,
    LastAccessed         DATETIME,
    ComplianceCheck      TEXT,
    LegalTeamOwner       TEXT,
    Notes                TEXT,
    AuditLogId           INTEGER,
    VersionHash          TEXT,
    PublishedDate        DATE
);

INSERT INTO legal_document_versions VALUES (1, 'TermsOfService', '2023.04', '2023-04-01', NULL, 'Agreement', 1, 701, 702, 'Approved', 'Annual update to privacy clause', '/legal/tos/2023_04.pdf', 1, 703, '2023-04-02 10:00:00', 'High', 'US', 'EN', '2023-03-30 08:00:00', '2023-04-02 12:00:00', 1, 3650, '/archive/tos/2022_04.pdf', '2023-04-02 12:00:00', 'Passed', 'LegalOps', 'No issues', 801, 'hashabc123', '2023-04-01');
INSERT INTO legal_document_versions VALUES (2, 'PrivacyPolicy', '2022.12', '2022-12-15', NULL, 'Policy', 1, 704, 705, 'Approved', 'Updated data retention schedule', '/legal/privacy/2022_12.pdf', 1, 706, '2022-12-16 09:30:00', 'Medium', 'EU', 'EN', '2022-12-10 07:45:00', '2022-12-16 10:00:00', 1, 7300, '/archive/privacy/2021_12.pdf', '2022-12-16 10:00:00', 'Passed', 'PrivacyTeam', 'Reviewed by EU counsel', 802, 'hashdef456', '2022-12-15');
INSERT INTO legal_document_versions VALUES (3, 'CookieConsent', '2023.01', '2023-01-05', NULL, 'Notice', 0, 707, 708, 'Pending', 'Initial draft for new consent banner', '/legal/cookie/2023_01.pdf', 0, NULL, NULL, 'Low', 'Global', 'EN', '2022-12-20 11:20:00', '2023-01-04 14:00:00', 0, 365, NULL, NULL, 'Pending Review', 'CookieTeam', 'Awaiting approval', 803, 'hashghi789', '2023-01-05');

-- Environmental incident reports
CREATE TABLE environmental_incident_reports
(
    IncidentId           INTEGER          NOT NULL PRIMARY KEY,
    IncidentType         TEXT,
    ReportedDate         DATETIME,
    DetectedByUserId     INTEGER,
    LocationId           INTEGER,
    SeverityLevel        TEXT,
    Description          TEXT,
    ImmediateActionTaken TEXT,
    FollowUpActionPlan   TEXT,
    Status               TEXT,
    ClosedDate           DATETIME,
    EstimatedImpactUSD   INTEGER,
    RegulatoryAgencyNotified INTEGER,
    NotificationDate     DATETIME,
    RootCauseAnalysis   TEXT,
    RemediationCostUSD   INTEGER,
    PreventionMeasures   TEXT,
    DocumentationPath    TEXT,
    IsPublicReport       INTEGER,
    CreatedTimestamp     DATETIME,
    ModifiedTimestamp    DATETIME,
    AuditLogId           INTEGER,
    ComplianceReference  TEXT,
    GeoCoordinates       TEXT,
    WeatherConditions    TEXT,
    Witnesses            TEXT,
    AssignedTeamId       INTEGER,
    ReviewNotes          TEXT,
    RiskScore            REAL,
    FollowUpDueDate      DATE
);

INSERT INTO environmental_incident_reports VALUES (1, 'Spill', '2023-05-12 08:30:00', 801, 301, 'High', 'Oil spill in storage tank', 'Shut down valve', 'Cleanup and investigation', 'Open', NULL, 250000, 1, '2023-05-12 09:00:00', 'Valve failure due to corrosion', 200000, 'Implement corrosion monitoring', '/incidents/spill_20230512.pdf', 0, '2023-05-12 08:35:00', '2023-05-15 10:00:00', 901, 'EPA-2023-005', '45.123N, -122.456W', 'Rainy', 'John Doe; Jane Smith', 401, 'Awaiting senior manager review', 8.7, '2023-06-15');
INSERT INTO environmental_incident_reports VALUES (2, 'AirEmission', '2023-07-20 14:15:00', 802, 302, 'Medium', 'Excessive NOx emission detected', 'Adjusted combustion parameters', 'Install additional scrubbers', 'Closed', '2023-08-01 12:00:00', 50000, 1, '2023-07-20 14:45:00', 'Calibration drift in sensors', 30000, 'Upgrade sensor suite', '/incidents/air_20230720.pdf', 1, '2023-07-20 14:20:00', '2023-08-02 09:00:00', 902, 'EPA-2023-012', '36.7783N, -119.4179W', 'Clear', 'Mike Lee', 402, 'Completed without issues', 5.2, '2023-09-01');
INSERT INTO environmental_incident_reports VALUES (3, 'Noise', '2023-09-05 19:00:00', 803, 303, 'Low', 'Noise level exceeded limits near residential area', 'Reduced machine speed', 'Install sound barriers', 'Open', NULL, 10000, 0, NULL, NULL, NULL, NULL, '/incidents/noise_20230905.pdf', 0, '2023-09-05 19:05:00', '2023-09-06 08:00:00', 903, 'LocalCouncil-2023-07', '34.0522N, -118.2437W', 'Windy', 'Emily Zhang', 403, 'Pending community feedback', 2.5, '2023-10-01');

-- Customer onboarding tasks
CREATE TABLE customer_onboarding_tasks
(
    TaskId               INTEGER          NOT NULL PRIMARY KEY,
    CustomerId           INTEGER,
    TaskName             TEXT,
    Description          TEXT,
    AssignedToUserId     INTEGER,
    DueDate              DATE,
    CompletionDate       DATE,
    Status               TEXT,
    PriorityLevel        TEXT,
    CreatedTimestamp     DATETIME,
    ModifiedTimestamp    DATETIME,
    ReminderSent         INTEGER,
    ReminderDate         DATE,
    TaskCategory         TEXT,
    EstimatedHours       INTEGER,
    ActualHoursSpent     INTEGER,
    DependenciesTaskId   INTEGER,
    FollowUpTaskId       INTEGER,
    DocumentationLink    TEXT,
    IsMandatory          INTEGER,
    EscalationLevel      TEXT,
    LastComment          TEXT,
    ApprovalRequired     INTEGER,
    ApprovedByUserId     INTEGER,
    ApprovalDate         DATE,
    RiskLevel            TEXT,
    SatisfactionRating   INTEGER,
    FeedbackNotes        TEXT,
    AuditLogId           INTEGER,
    ChangeLog            TEXT,
    IsDelayed            INTEGER,
    DelayReason          TEXT
);

INSERT INTO customer_onboarding_tasks VALUES (1, 1001, 'Initial Call', 'Kick‑off call with customer', 901, '2023-06-01', '2023-06-01', 'Completed', 'High', '2023-05-20 09:00:00', '2023-06-01 10:15:00', 1, '2023-05-25', 'Communication', 2, 1, NULL, 2, 'https://docs.example.com/kickoff', 1, 'Level1', 'Call went well', 0, NULL, NULL, 'Low', 5, 'Great start', 801, 'Added notes after call', 0, NULL);
INSERT INTO customer_onboarding_tasks VALUES (2, 1001, 'System Provisioning', 'Setup accounts and environment', 902, '2023-06-05', NULL, 'InProgress', 'Medium', '2023-05-21 10:30:00', '2023-06-02 14:00:00', 0, NULL, 'Setup', 8, NULL, 1, NULL, 'https://docs.example.com/provision', 1, 'Level2', NULL, 1, 903, '2023-06-03', 'Medium', NULL, NULL, 802, 'Provisioning delayed due to resource constraints', 1, 'Resource shortage');
INSERT INTO customer_onboarding_tasks VALUES (3, 1002, 'Training Session', 'Provide product training', 904, '2023-07-10', NULL, 'Pending', 'Low', '2023-06-15 11:00:00', '2023-06-15 11:00:00', 0, NULL, 'Education', 4, NULL, NULL, NULL, 'https://docs.example.com/training', 0, 'Level1', NULL, 0, NULL, NULL, 'Low', NULL, NULL, 803, 'Awaiting trainer assignment', 0, NULL);

-- Network topology nodes
CREATE TABLE network_topology_nodes
(
    NodeId               INTEGER          NOT NULL PRIMARY KEY,
    NodeName             TEXT,
    NodeType             TEXT,
    IPAddress            TEXT,
    MACAddress           TEXT,
    FirmwareVersion      TEXT,
    OperatingSystem      TEXT,
    LocationId           INTEGER,
    RackNumber           TEXT,
    UplinkPort           TEXT,
    DownlinkPort         TEXT,
    IsActive             INTEGER,
    LastSeenTimestamp    DATETIME,
    InstalledDate        DATE,
    MaintenanceWindow    TEXT,
    SupportsPoE          INTEGER,
    SerialNumber         TEXT,
    Vendor               TEXT,
    Model                TEXT,
    BandwidthGbps        REAL,
    LatencyMs            REAL,
    TemperatureCelsius   REAL,
    PowerSupplyStatus    TEXT,
    RedundancyGroupId    INTEGER,
    IsVirtual            INTEGER,
    Hostname             TEXT,
    ManagementURL        TEXT,
    ConfigBackupPath     TEXT,
    SecurityZone         TEXT,
    IsMonitored          INTEGER,
    MonitoringAgentId    INTEGER,
    CreatedTimestamp     DATETIME,
    ModifiedTimestamp    DATETIME,
    Comments             TEXT,
    AuditLogId           INTEGER
);

INSERT INTO network_topology_nodes VALUES (1, 'CoreSwitch01', 'Switch', '10.0.0.1', 'AA:BB:CC:DD:EE:01', 'v2.1', 'CiscoIOS', 10, 'R01', 'Te0/1', 'Te0/24', 1, '2023-07-01 12:00:00', '2022-01-15', 'Sat 02:00-04:00', 1, 'SN123456', 'Cisco', 'Catalyst9500', 40, 0.5, 35.2, 'Good', 101, 0, 'core-sw-01', 'https://mgmt.example.com/core01', '/backups/core01.cfg', 'DMZ', 1, 201, '2023-01-10 08:00:00', '2023-08-15 09:30:00', 'Primary core switch', 901);
INSERT INTO network_topology_nodes VALUES (2, 'WebServer01', 'Server', '10.0.1.10', 'AA:BB:CC:DD:EE:02', 'Ubuntu20.04', 'Linux', 12, 'R02', 'eth0', NULL, 1, '2023-07-02 14:20:00', '2022-02-20', 'Sun 01:00-03:00', 0, 'SN234567', 'Dell', 'PowerEdgeR740', 1, 2.1, 45.0, 'Good', 102, 1, 'web-srv-01', 'https://mgmt.example.com/web01', '/backups/web01.cfg', 'Internal', 1, 202, '2023-02-12 09:15:00', '2023-08-16 10:45:00', 'Front‑end web server', 902);
INSERT INTO network_topology_nodes VALUES (3, 'WirelessAP01', 'AccessPoint', '10.0.2.5', 'AA:BB:CC:DD:EE:03', 'v5.0', 'OpenWrt', 14, 'R03', ' wlan0', NULL, 1, '2023-07-03 09:45:00', '2023-03-05', 'Fri 03:00-05:00', 1, 'SN345678', 'Ubiquiti', 'UniFiAP-AC', 0.3, 0.8, 40.5, 'Good', 103, 0, 'wifi-ap-01', 'https://mgmt.example.com/ap01', '/backups/ap01.cfg', 'Guest', 1, 203, '2023-03-10 10:30:00', '2023-08-17 11:00:00', 'Guest Wi‑Fi AP', 903);

-- Hardware asset register
CREATE TABLE hardware_asset_register
(
    AssetId               INTEGER          NOT NULL PRIMARY KEY,
    AssetTag              TEXT,
    AssetType             TEXT,
    Manufacturer          TEXT,
    ModelNumber           TEXT,
    SerialNumber          TEXT,
    PurchaseDate          DATE,
    WarrantyExpiration    DATE,
    OwnerDepartmentId     INTEGER,
    AssignedUserId        INTEGER,
    LocationId            INTEGER,
    CostUSD               INTEGER,
    DepreciationMethod    TEXT,
    CurrentValueUSD       INTEGER,
    AssetStatus           TEXT,
    AssetCondition        TEXT,
    MaintenanceSchedule   TEXT,
    LastMaintenanceDate   DATE,
    NextMaintenanceDue    DATE,
    CalibrationRequired   INTEGER,
    CalibrationDueDate    DATE,
    SupportContractId     INTEGER,
    SupportContractExpiry DATE,
    DisposalDate           DATE,
    DisposalMethod         TEXT,
    InsurancePolicyNumber  TEXT,
    InsuranceExpiryDate    DATE,
    AssetLifecycleStage    TEXT,
    AssetCategory          TEXT,
    PowerRequirementWatt   INTEGER,
    RackUnitPosition       TEXT,
    NetworkPort            TEXT,
    AssetNotes             TEXT,
    CreatedTimestamp       DATETIME,
    ModifiedTimestamp      DATETIME,
    AuditLogId             INTEGER,
    ComplianceTag          TEXT,
    AssetImagePath         TEXT,
    IsCriticalAsset        INTEGER
);

INSERT INTO hardware_asset_register VALUES (1, 'TAG-001', 'Server', 'Dell', 'PowerEdge R730', 'SN001', '2021-04-15', '2024-04-15', 10, 901, 20, 15000, 'StraightLine', 12000, 'InService', 'Good', 'Quarterly', '2023-06-01', '2023-09-01', 0, NULL, 1001, '2023-12-31', NULL, NULL, 'POL-12345', '2024-03-31', 'Operational', 'Compute', 500, 'U01', 'eth0', 'Primary database server', '2021-04-20 08:00:00', '2023-08-10 09:30:00', 1101, 'PCI-DSS', '/images/assets/server001.png', 1);
INSERT INTO hardware_asset_register VALUES (2, 'TAG-002', 'Router', 'Cisco', 'ISR 4451', 'SN002', '2020-09-10', '2023-09-10', 11, 902, 21, 8000, 'DecliningBalance', 6000, 'InService', 'Fair', 'SemiAnnual', '2023-05-15', '2023-11-15', 0, NULL, 1002, '2023-09-30', NULL, NULL, 'POL-67890', '2024-01-31', 'Operational', 'Network', 250, 'U02', 'ge-0/0/0', 'Edge router for branch office', '2020-09-15 09:00:00', '2023-08-12 10:45:00', 1102, 'ISO27001', '/images/assets/router002.png', 0);
INSERT INTO hardware_asset_register VALUES (3, 'TAG-003', 'Laptop', 'Lenovo', 'ThinkPad X1', 'SN003', '2022-01-20', '2025-01-20', 12, 903, 22, 2000, 'StraightLine', 1800, 'InService', 'Good', 'Annual', '2023-07-20', '2024-07-20', 1, '2023-12-15', 1003, '2024-06-30', NULL, NULL, 'POL-24680', '2025-02-28', 'Operational', 'Endpoint', 65, NULL, NULL, 'Executive laptop', '2022-01-25 10:30:00', '2023-08-14 11:15:00', 1103, 'GDPR', '/images/assets/laptop003.png', 0);

-- Training course materials
CREATE TABLE training_course_materials
(
    MaterialId            INTEGER          NOT NULL PRIMARY KEY,
    CourseId              INTEGER,
    MaterialType          TEXT,
    Title                 TEXT,
    Description           TEXT,
    FilePath              TEXT,
    FileSizeBytes         INTEGER,
    MimeType              TEXT,
    UploadedByUserId      INTEGER,
    UploadTimestamp       DATETIME,
    VersionNumber         TEXT,
    IsPublic              INTEGER,
    Language              TEXT,
    DurationMinutes       INTEGER,
    AssociatedTopicIds    TEXT,
    PrerequisiteMaterialId INTEGER,
    Tags                  TEXT,
    AccessLevel           TEXT,
    Status                TEXT,
    ReviewStatus          TEXT,
    ReviewedByUserId      INTEGER,
    ReviewDate            DATE,
    RatingAverage         REAL,
    RatingCount           INTEGER,
    CopyrightHolder       TEXT,
    LicenseType           TEXT,
    ExpirationDate        DATE,
    IsDeprecated          INTEGER,
    DeprecatedDate        DATE,
    ReplacementMaterialId INTEGER,
    CreatedTimestamp      DATETIME,
    ModifiedTimestamp     DATETIME,
    AuditLogId            INTEGER,
    Comments              TEXT,
    ExternalReferenceUrl  TEXT,
    IsArchived            INTEGER,
    ArchiveDate           DATE,
    RetentionPolicy       TEXT
);

INSERT INTO training_course_materials VALUES (1, 301, 'Video', 'Introduction to SQL', 'Basic concepts of relational databases', '/materials/sql_intro.mp4', 250000000, 'video/mp4', 401, '2023-02-10 09:00:00', '1.0', 1, 'EN', 45, 'SQL,Basics', NULL, 'SQL,Relational', 'Beginner', 'Approved', 402, '2023-02-12', 4.5, 120, 'Company', 'CC-BY', NULL, 0, NULL, NULL, '2023-02-10 09:00:00', '2023-08-01 10:00:00', 501, 'Well received', 'https://videos.example.com/sql_intro', 0, NULL, 'Standard');
INSERT INTO training_course_materials VALUES (2, 302, 'PDF', 'Advanced Data Modeling', 'In‑depth guide to entity‑relationship modeling', '/materials/adv_data_model.pdf', 5200000, 'application/pdf', 402, '2023-03-15 11:30:00', '2.1', 0, 'EN', 60, 'DataModeling,Advanced', 1, 'Data Modeling,Design', 'Intermediate', 'PendingReview', NULL, NULL, NULL, 0, 'Company', 'Proprietary', '2024-12-31', 0, NULL, NULL, '2023-03-15 11:30:00', '2023-08-02 14:20:00', 502, 'Awaiting reviewer assignment', 'https://docs.example.com/adv_data_model', 0, NULL, 'Retention12Months');
INSERT INTO training_course_materials VALUES (3, 303, 'SlideDeck', 'Security Best Practices', 'Presentation on securing web applications', '/materials/security_best_practices.pptx', 3100000, 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 403, '2023-04-20 16:45:00', '3.0', 1, 'EN', 30, 'Security,Web', NULL, 'Security,Web', 'All', 'Approved', 404, '2023-04-22', 4.8, 200, 'Company', 'CC0', NULL, 0, NULL, NULL, '2023-04-20 16:45:00', '2023-08-03 09:10:00', 503, 'Highly rated by learners', 'https://slides.example.com/security_best', 0, NULL, 'Standard');