-- System error codes definition
CREATE TABLE system_error_codes
(
    CodeId               INTEGER PRIMARY KEY,
    ErrorName            TEXT,
    Description          TEXT,
    Severity             INTEGER,
    Module               TEXT,
    HttpStatus           INTEGER,
    IsCritical           INTEGER,
    CreatedAt            DATETIME,
    UpdatedAt            DATETIME,
    OwnerTeam            TEXT,
    DocumentationUrl     TEXT,
    Retryable            INTEGER,
    AlertThreshold       INTEGER,
    LastOccurrence       DATETIME,
    OccurrenceCount      INTEGER,
    MitigationPlan       TEXT,
    Decommissioned       INTEGER,
    DecommissionDate     DATETIME,
    ParentCodeId         INTEGER,
    ErrorCategory        TEXT,
    Platform             TEXT
);

INSERT INTO system_error_codes VALUES (1001,'DB_CONNECTION_FAILURE','Unable to connect to database',5,'Database',503,1,'2023-01-01 00:00:00','2023-01-02 00:00:00','BackendTeam','http://docs.example.com/errors/1001',0,10,'2023-01-02 00:00:00',42,'Restart DB service',0,NULL,0,'Database','Backend');
INSERT INTO system_error_codes VALUES (2002,'CACHE_MISS','Cache lookup returned no result',3,'Cache',404,0,'2023-02-01 08:15:00','2023-02-01 09:20:00','CacheTeam','http://docs.example.com/errors/2002',1,5,'2023-02-01 09:19:00',128,'Check cache refresh',0,NULL,0,'Cache','Infrastructure');
INSERT INTO system_error_codes VALUES (3003,'API_RATE_LIMIT','Client exceeded rate limit',4,'API',429,0,'2023-03-10 12:00:00','2023-03-10 12:30:00','APITeam','http://docs.example.com/errors/3003',0,0,'2023-03-10 12:15:00',256,'Increase quota',0,NULL,0,'API','Public');

-- CDN node performance metrics
CREATE TABLE cdn_node_metrics
(
    NodeId                 INTEGER PRIMARY KEY,
    Region                 TEXT,
    DataCenter             TEXT,
    IpAddress              TEXT,
    CpuUtilization         REAL,
    MemoryUtilization      REAL,
    DiskUsage              REAL,
    NetworkInMbps          REAL,
    NetworkOutMbps         REAL,
    CacheHitRate           REAL,
    CacheMissRate          REAL,
    RequestsPerSecond      INTEGER,
    ErrorsPerSecond        INTEGER,
    ActiveConnections      INTEGER,
    Timestamp              DATETIME,
    FirmwareVersion        TEXT,
    HardwareModel          TEXT,
    TemperatureC           REAL,
    PowerStatus            TEXT,
    MaintenanceWindowStart DATETIME,
    MaintenanceWindowEnd   DATETIME
);

INSERT INTO cdn_node_metrics VALUES (1,'us-east','DC1','192.0.2.1',45.2,68.5,55.0,1200.5,850.3,0.92,0.08,35000,12,5000,'2023-04-01 00:00:00','v1.2.3','C1000','42.1','Online','2023-04-10 01:00:00','2023-04-10 03:00:00');
INSERT INTO cdn_node_metrics VALUES (2,'eu-west','DC2','192.0.2.2',55.1,70.2,60.4,1100.0,900.0,0.89,0.11,30000,8,4200,'2023-04-01 00:05:00','v1.2.3','C1000','40.3','Online','2023-04-12 02:00:00','2023-04-12 04:00:00');
INSERT INTO cdn_node_metrics VALUES (3,'ap-southeast','DC3','192.0.2.3',60.0,75.0,65.0,1300.2,950.7,0.94,0.06,38000,15,4800,'2023-04-01 00:10:00','v1.2.4','C2000','38.7','Online','2023-04-15 03:00:00','2023-04-15 05:00:00');

-- Third‑party integration activity log
CREATE TABLE third_party_integration_log
(
    LogId               INTEGER PRIMARY KEY,
    IntegrationName     TEXT,
    Vendor              TEXT,
    ApiEndpoint         TEXT,
    RequestId           TEXT,
    RequestTimestamp    DATETIME,
    ResponseTimestamp   DATETIME,
    HttpMethod          TEXT,
    HttpStatusCode      INTEGER,
    RequestPayload      TEXT,
    ResponsePayload     TEXT,
    LatencyMs           INTEGER,
    SuccessFlag         INTEGER,
    RetryCount          INTEGER,
    ErrorCode           TEXT,
    ErrorMessage        TEXT,
    CorrelationId       TEXT,
    UserAgent           TEXT,
    SourceIp            TEXT,
    CreatedAt           DATETIME,
    UpdatedAt           DATETIME
);

INSERT INTO third_party_integration_log VALUES (101,'PaymentGateway','PayFast','https://api.payfast.com/charge','REQ123','2023-05-01 10:00:00','2023-05-01 10:00:02','POST',200,'{amount:100}','{status:success}',2000,1,0,NULL,NULL,'CORR001','MyApp/1.0','203.0.113.5','2023-05-01 10:00:02','2023-05-01 10:00:02');
INSERT INTO third_party_integration_log VALUES (102,'EmailService','MailJet','https://api.mailjet.com/send','REQ124','2023-05-01 10:05:00','2023-05-01 10:05:01','POST',500,'{to:user@example.com}','{error:timeout}',1000,0,2,'ETIMEDOUT','Timeout reached','CORR002','MyApp/1.0','203.0.113.5','2023-05-01 10:05:01','2023-05-01 10:05:01');
INSERT INTO third_party_integration_log VALUES (103,'Analytics','GoogleAnalytics','https://www.google-analytics.com/collect','REQ125','2023-05-01 10:10:00','2023-05-01 10:10:00','GET',204,'{event:click}','',50,1,0,NULL,NULL,'CORR003','MyApp/1.0','203.0.113.5','2023-05-01 10:10:00','2023-05-01 10:10:00');

-- AI suggested edits repository
CREATE TABLE ai_suggested_edits
(
    SuggestionId            INTEGER PRIMARY KEY,
    ModelVersion            TEXT,
    GeneratedAt             DATETIME,
    DocumentHash            TEXT,
    SuggestedField          TEXT,
    OriginalValue           TEXT,
    SuggestedValue          TEXT,
    ConfidenceScore         REAL,
    Explanation             TEXT,
    AppliedFlag             INTEGER,
    AppliedAt               DATETIME,
    ReviewStatus            TEXT,
    ProcessingTimeMs        INTEGER,
    ModelParameters         TEXT,
    BatchId                 TEXT,
    CreatedAt               DATETIME,
    UpdatedAt               DATETIME,
    SourceSystem            TEXT,
    Locale                  TEXT,
    WordCount               INTEGER,
    CharacterCount          INTEGER,
    IsSensitive             INTEGER,
    SuggestedByEngine       TEXT,
    ReviewComments          TEXT,
    ReviewTimestamp         DATETIME,
    ReviewUserId            INTEGER,
    ReviewOutcome           TEXT
);

INSERT INTO ai_suggested_edits VALUES (5001,'v2.1','2023-06-01 08:00:00','AB12CD34','Title','Old Title','New Title',0.92,'NLP analysis suggests clearer wording',0,NULL,'Pending',120,'paramA=1;paramB=2','BATCH01','2023-06-01 08:00:00','2023-06-01 08:01:00','AutoEngine','en-US',5,30,0,'EngineX',NULL,NULL,NULL,'');
INSERT INTO ai_suggested_edits VALUES (5002,'v2.1','2023-06-01 09:15:00','EF56GH78','Body','Lorem ipsum...','Lorem ipsum revised...',0.87,'Improved readability',0,NULL,'Pending',150,'paramA=1;paramB=2','BATCH01','2023-06-01 09:15:00','2023-06-01 09:16:00','AutoEngine','en-US',45,300,0,'EngineX',NULL,NULL,NULL,'');
INSERT INTO ai_suggested_edits VALUES (5003,'v2.2','2023-06-01 10:30:00','IJ90KL12','Tags','java,sql','java,sql,performance',0.95,'Adds missing tag',0,NULL,'Pending',80,'paramA=3;paramB=4','BATCH02','2023-06-01 10:30:00','2023-06-01 10:31:00','AutoEngine','en-US',3,20,0,'EngineY',NULL,NULL,NULL,'');

-- Device heartbeat logs
CREATE TABLE device_heartbeat_log
(
    LogId                INTEGER PRIMARY KEY,
    DeviceId             TEXT,
    FirmwareVersion      TEXT,
    HeartbeatTimestamp   DATETIME,
    CpuTempC             REAL,
    BatteryLevel         INTEGER,
    SignalStrength       INTEGER,
    UptimeSeconds        INTEGER,
    MemoryFreeMb         INTEGER,
    DiskFreeMb           INTEGER,
    NetworkStatus        TEXT,
    LastErrorCode        TEXT,
    LocationId           TEXT,
    Latitude             REAL,
    Longitude            REAL,
    IsCharging           INTEGER,
    SensorCount          INTEGER,
    ActiveProcessCount   INTEGER,
    CloudSyncStatus      TEXT,
    CreatedAt            DATETIME,
    UpdatedAt            DATETIME,
    FirmwareReleaseNotes TEXT,
    DeviceModel          TEXT,
    Manufacturer         TEXT,
    ConnectivityType     TEXT,
    LastRebootAt         DATETIME,
    HealthScore          INTEGER,
    ErrorMessage         TEXT,
    MaintenanceMode      INTEGER,
    PowerSource          TEXT
);

INSERT INTO device_heartbeat_log VALUES (9001,'DEV001','1.0.3','2023-07-01 00:00:00',55.2,80,4,86400,1024,20480,'Online',NULL,'LOC001',37.7749,-122.4194,0,12,45,'Synced','2023-07-01 00:00:00','2023-07-01 00:00:00','Bug fixes','ModelX','AcmeCorp','WiFi','2023-06-30 23:55:00',95,NULL,0,'Mains');
INSERT INTO device_heartbeat_log VALUES (9002,'DEV002','2.1.0','2023-07-01 00:05:00',60.1,45,3,43200,512,10240,'Offline','E1001','LOC002',40.7128,-74.0060,1,8,30,'Pending','2023-07-01 00:05:00','2023-07-01 00:05:00','Feature update','ModelY','BetaTech','Cellular','2023-06-30 23:50:00',70,'Battery low',0,'Battery');
INSERT INTO device_heartbeat_log VALUES (9003,'DEV003','3.0.5','2023-07-01 00:10:00',48.0,100,5,172800,2048,40960,'Online',NULL,'LOC003',51.5074,-0.1278,0,15,60,'Synced','2023-07-01 00:10:00','2023-07-01 00:10:00','Security patch','ModelZ','GammaInc','Ethernet','2023-06-30 23:45:00',98,NULL,0,'Mains');

-- Mobile push token registry
CREATE TABLE mobile_push_tokens
(
    TokenId               INTEGER PRIMARY KEY,
    DeviceUuid            TEXT,
    Platform              TEXT,
    TokenValue            TEXT,
    CreatedAt             DATETIME,
    UpdatedAt             DATETIME,
    ExpirationDate        DATETIME,
    IsActive              INTEGER,
    AppVersion            TEXT,
    OsVersion             TEXT,
    Manufacturer          TEXT,
    Model                 TEXT,
    Region                TEXT,
    Language              TEXT,
    NotificationPreferences TEXT,
    LastSentAt            DATETIME,
    FailureCount          INTEGER,
    LastFailureReason     TEXT,
    PushServiceProvider   TEXT,
    PushServiceEndpoint   TEXT,
    SandboxFlag           INTEGER,
    Alias                 TEXT,
    Tags                  TEXT,
    CreatedBySystem       TEXT,
    UpdatedBySystem       TEXT
);

INSERT INTO mobile_push_tokens VALUES (2001,'UUID-001','iOS','tokenABC123','2023-08-01 09:00:00','2023-08-01 09:30:00','2024-08-01 09:00:00',1,'5.1','14.4','Apple','iPhone12','US','en','all','2023-08-10 12:00:00',0,NULL,'APNs','api.push.apple.com',0,'user001','promo','system','system');
INSERT INTO mobile_push_tokens VALUES (2002,'UUID-002','Android','tokenDEF456','2023-08-01 10:00:00','2023-08-01 10:15:00','2024-08-01 10:00:00',1,'11','30','Samsung','GalaxyS20','EU','de','all','2023-08-11 13:00:00',1,'NetworkError','FCM','fcm.googleapis.com',0,'user002','update','system','system');
INSERT INTO mobile_push_tokens VALUES (2003,'UUID-003','iOS','tokenGHI789','2023-08-01 11:00:00','2023-08-01 11:45:00','2024-08-01 11:00:00',0,'4.2','13.2','Apple','iPadPro','APAC','ja','none',NULL,3,'InvalidToken','APNs','api.push.apple.com',1,'user003','none','system','system');

-- Data retention policies catalog
CREATE TABLE data_retention_policies
(
    PolicyId               INTEGER PRIMARY KEY,
    EntityType             TEXT,
    RetentionPeriodDays   INTEGER,
    ArchiveAfterDays       INTEGER,
    DeleteAfterDays        INTEGER,
    LegalHoldFlag         INTEGER,
    CreatedBySystem        TEXT,
    CreatedAt              DATETIME,
    UpdatedAt              DATETIME,
    Description            TEXT,
    IsEnabled              INTEGER,
    ReviewCycleDays        INTEGER,
    LastReviewedAt         DATETIME,
    ReviewerSystem         TEXT,
    NotifyOnExpiryFlag     INTEGER,
    NotificationEmail      TEXT,
    EncryptionAtRestFlag   INTEGER,
    CompressionEnabledFlag INTEGER,
    BackupFrequencyDays    INTEGER,
    AuditLogEnabledFlag    INTEGER,
    RetentionScope         TEXT,
    DataClassification     TEXT,
    OwnerTeam              TEXT,
    ApprovalStatus         TEXT,
    EffectiveDate          DATETIME,
    ExpirationDate         DATETIME,
    PolicyVersion          TEXT,
    ChangeLog              TEXT,
    DeletionMethod         TEXT,
    RetentionTrigger       TEXT
);

INSERT INTO data_retention_policies VALUES (301,'UserActivity',365,180,730,0,'PolicyEngine','2023-09-01 00:00:00','2023-09-10 00:00:00','Retain user activity logs for one year',1,30,'2023-09-10 00:00:00','ComplianceTeam',1,'compliance@example.com',1,1,7,1,'Global','Public','Security','Approved','2023-09-01 00:00:00','2025-09-01 00:00:00','v1.0','Initial creation','Purge','TimeBased');
INSERT INTO data_retention_policies VALUES (302,'TransactionLogs',730,365,1095,1,'PolicyEngine','2023-09-15 00:00:00','2023-09-20 00:00:00','Financial transaction logs retention',1,60,'2023-09-20 00:00:00','FinanceTeam',1,'finance@example.com',1,1,30,1,'EU','Sensitive','Finance','Pending','2023-09-15 00:00:00','2026-09-15 00:00:00','v1.1','Updated for new regulation','Archive','EventBased');
INSERT INTO data_retention_policies VALUES (303,'AuditTrail',1825,365,2190,0,'PolicyEngine','2023-10-01 00:00:00','2023-10-05 00:00:00','Audit trail for compliance',1,90,'2023-10-05 00:00:00','AuditTeam',0,NULL,1,1,14,1,'Global','Confidential','Audit','Approved','2023-10-01 00:00:00','2028-10-01 00:00:00','v2.0','Extended retention','Delete','TimeBased');

-- Audit rule definitions
CREATE TABLE audit_rule_definitions
(
    RuleId                INTEGER PRIMARY KEY,
    RuleName              TEXT,
    Description           TEXT,
    SeverityLevel         INTEGER,
    IsActive              INTEGER,
    CreatedAt             DATETIME,
    UpdatedAt             DATETIME,
    AppliesToEntity       TEXT,
    ConditionExpression   TEXT,
    ActionOnTrigger       TEXT,
    NotificationChannel   TEXT,
    EscalationLevel       INTEGER,
    OwnerTeam             TEXT,
    FrequencyDays         INTEGER,
    LastRunAt             DATETIME,
    NextRunAt             DATETIME,
    CreatedBySystem       TEXT,
    UpdatedBySystem       TEXT,
    RunCount              INTEGER,
    SuccessCount          INTEGER,
    FailureCount          INTEGER,
    LastErrorMessage      TEXT,
    AutoRemediation       INTEGER,
    RemediationScriptPath TEXT,
    DocumentationUrl      TEXT,
    Tags                  TEXT,
    AuditLogEnabled       INTEGER,
    AlertThreshold        INTEGER,
    SuppressionWindowMins INTEGER,
    RetentionDays         INTEGER,
    ReviewRequired        INTEGER,
    ReviewPeriodDays      INTEGER
);

INSERT INTO audit_rule_definitions VALUES (401,'StaleSession','Detect sessions older than 30 days',2,1,'2023-11-01 00:00:00','2023-11-10 00:00:00','Session','last_activity < now() - interval 30 day','Notify','Email',3,'OpsTeam',1,'2023-11-11 00:00:00','2023-12-11 00:00:00','System','System',5,5,0,NULL,0,NULL,'http://docs.example.com/rules/401','maintenance,session',1,10,60,365,0,0);
INSERT INTO audit_rule_definitions VALUES (402,'HighErrorRate','Flag services with error rate >5%',3,1,'2023-11-02 00:00:00','2023-11-12 00:00:00','ServiceMetric','error_rate > 0.05','ScaleUp','PagerDuty',5,'SRETeam',1,'2023-11-13 00:00:00','2023-12-13 00:00:00','System','System',10,9,1,'Timeout fetching metrics',1,'/scripts/remediate_high_error.sh','http://docs.example.com/rules/402','service,monitoring',1,5,30,180,1,7);
INSERT INTO audit_rule_definitions VALUES (403,'DataLeak','Detect unencrypted sensitive data transfer',4,0,'2023-11-03 00:00:00','2023-11-15 00:00:00','NetworkFlow','payload_contains_sensitive and not encrypted','Block','Slack',4,'SecTeam',7,'2023-11-20 00:00:00','2023-12-20 00:00:00','System','System',2,2,0,NULL,0,NULL,'http://docs.example.com/rules/403','security,leak',0,3,120,365,1,14);

-- Search synonym dictionary
CREATE TABLE search_synonym_dictionary
(
    SynonymId            INTEGER PRIMARY KEY,
    Term                 TEXT,
    SynonymGroupId       INTEGER,
    Language             TEXT,
    CreatedAt            DATETIME,
    UpdatedAt            DATETIME,
    Source               TEXT,
    IsActive             INTEGER,
    ConfidenceScore      REAL,
    UsageCount           INTEGER,
    LastUsedAt           DATETIME,
    OwnerTeam            TEXT,
    Comments             TEXT,
    ApprovedBySystem     TEXT,
    ApprovalDate         DATETIME,
    ExpirationDate       DATETIME,
    CaseSensitiveFlag   INTEGER,
    WholeWordFlag        INTEGER,
    RegexPattern         TEXT,
    ReplacementTerm      TEXT,
    Priority             INTEGER,
    Tag                  TEXT,
    Category             TEXT,
    Domain               TEXT,
    Region               TEXT,
    Context              TEXT,
    AuditedFlag          INTEGER,
    ReviewNotes          TEXT,
    ReviewDate           DATETIME,
    ReviewerSystem       TEXT,
    DeprecatedFlag       INTEGER,
    MigrationPath        TEXT
);

INSERT INTO search_synonym_dictionary VALUES (601,'car','1','en','2023-12-01 00:00:00','2023-12-10 00:00:00','Manual',1,0.95,1200,'2023-12-09 12:00:00','SearchTeam','Common vehicle term','System','2023-12-01 00:00:00','2024-12-01 00:00:00',0,1,NULL,'automobile',10,'transport','Automotive','Automotive','NA','general',1,NULL,NULL,'2023-12-10 00:00:00','System',0,NULL);
INSERT INTO search_synonym_dictionary VALUES (602,'bug','2','en','2023-12-02 00:00:00','2023-12-11 00:00:00','CrowdSourced',1,0.88,850,'2023-12-10 15:30:00','SearchTeam','Software defect','System','2023-12-02 00:00:00','2025-12-02 00:00:00',0,1,NULL,'defect',20,'software','IT','IT','NA','issue',1,NULL,NULL,'2023-12-11 00:00:00','System',0,NULL);
INSERT INTO search_synonym_dictionary VALUES (603,'click','3','en','2023-12-03 00:00:00','2023-12-12 00:00:00','Algorithmic',1,0.92,640,'2023-12-11 09:45:00','SearchTeam','User interaction','System','2023-12-03 00:00:00','2024-12-03 00:00:00',0,1,NULL,'press',30,'ui','UX','UX','NA','action',1,NULL,NULL,'2023-12-12 00:00:00','System',0,NULL);

-- Regional server status table
CREATE TABLE regional_server_status
(
    ServerId                INTEGER PRIMARY KEY,
    Region                  TEXT,
    DataCenter              TEXT,
    Hostname                TEXT,
    IpAddress               TEXT,
    OperatingSystem         TEXT,
    UptimeDays              INTEGER,
    CpuLoadAvg              REAL,
    MemoryUsagePercent      REAL,
    DiskUsagePercent        REAL,
    NetworkLatencyMs        INTEGER,
    ActiveConnections       INTEGER,
    LastRestartAt           DATETIME,
    ScheduledMaintenanceStart DATETIME,
    ScheduledMaintenanceEnd DATETIME,
    HealthScore             INTEGER,
    Status                  TEXT,
    MonitoringAgentVersion  TEXT,
    AlertsPending           INTEGER,
    CreatedAt               DATETIME,
    UpdatedAt               DATETIME,
    OwnerTeam               TEXT,
    SupportContactEmail     TEXT,
    PowerSupplyStatus       TEXT,
    TemperatureCelsius      REAL,
    FirmwareVersion         TEXT,
    RackLocation            TEXT,
    BackupStatus            TEXT,
    VirtualizationHost      TEXT,
    LicenseExpirationDate   DATETIME,
    ComplianceStatus        TEXT
);

INSERT INTO regional_server_status VALUES (701,'us-east','DC1','server-ue-01','10.0.0.1','Linux','124','0.45','68.2','55.1',12,340,'2023-06-01 02:00:00','2023-08-01 01:00:00','2023-08-01 03:00:00',92,'Online','v3.5.2',0,'2023-01-01 00:00:00','2023-12-31 23:59:59','OpsTeam','ops@example.com','OK','42.5','fw1.2','Rack12U','OK','hypervisor-01','2024-12-31 00:00:00','Compliant');
INSERT INTO regional_server_status VALUES (702,'eu-west','DC2','server-ew-02','10.0.1.2','Windows','98','0.55','73.4','62.0',20,210,'2023-07-15 04:30:00','2023-09-10 02:00:00','2023-09-10 04:00:00',85,'Degraded','v3.6.0',3,'2023-01-15 00:00:00','2023-12-20 23:59:59','OpsTeam','ops-eu@example.com','Warning','38.1','fw2.0','Rack7U','Pending','hypervisor-02','2025-03-15 00:00:00','NonCompliant');
INSERT INTO regional_server_status VALUES (703,'ap-southeast','DC3','server-ap-03','10.0.2.3','Linux','210','0.30','55.0','40.5',8,560,'2023-05-20 01:15:00','2023-10-05 03:00:00','2023-10-05 05:00:00',97,'Online','v3.5.9',0,'2023-01-20 00:00:00','2023-12-25 23:59:59','OpsTeam','ops-ap@example.com','OK','45.0','fw1.5','Rack3U','OK','hypervisor-03','2024-06-30 00:00:00','Compliant');