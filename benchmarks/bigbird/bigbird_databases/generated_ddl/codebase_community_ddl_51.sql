-- System audit events capturing internal actions and changes
CREATE TABLE system_audit_events
(
    EventId               INTEGER        NOT NULL PRIMARY KEY,
    EventTimestamp        DATETIME       NOT NULL,
    EventCategory         TEXT           NOT NULL,
    EventAction           TEXT           NOT NULL,
    SourceModule          TEXT           NOT NULL,
    InitiatingProcess     TEXT           NOT NULL,
    HostName              TEXT           NOT NULL,
    IPAddress             TEXT           NOT NULL,
    ThreadId              INTEGER        NOT NULL,
    ProcessId             INTEGER        NOT NULL,
    CorrelationId         TEXT           NOT NULL,
    SeverityLevel         TEXT           NOT NULL,
    PayloadHash           TEXT           NOT NULL,
    WasSuccessful         INTEGER        NOT NULL,
    ErrorCode             INTEGER,
    ErrorMessage          TEXT,
    DestinationService    TEXT,
    DestinationEndpoint   TEXT,
    AuditLogVersion       INTEGER        NOT NULL,
    RetentionPeriodDays   INTEGER        NOT NULL,
    ArchivedFlag          INTEGER        NOT NULL,
    OperatorId            INTEGER,
    SessionToken          TEXT,
    CustomField1          TEXT,
    CustomField2          TEXT,
    CustomField3          TEXT
);

INSERT INTO system_audit_events (EventId,EventTimestamp,EventCategory,EventAction,SourceModule,InitiatingProcess,HostName,IPAddress,ThreadId,ProcessId,CorrelationId,SeverityLevel,PayloadHash,WasSuccessful,ErrorCode,ErrorMessage,DestinationService,DestinationEndpoint,AuditLogVersion,RetentionPeriodDays,ArchivedFlag,OperatorId,SessionToken,CustomField1,CustomField2,CustomField3) VALUES (1,'2025-12-01 08:15:30','Authentication','Login','AuthService','login.exe','srv01','10.0.0.1',101,5001,'corr123','Info','hashabc123',1,NULL,NULL,'UserService','/login',1,365,0,12,'tokenxyz','fieldA','fieldB','fieldC');
INSERT INTO system_audit_events VALUES (2,'2025-12-01 09:20:45','DataExport','ExportStarted','ExportEngine','exporter.exe','srv02','10.0.0.2',102,5002,'corr124','Warning','hashdef456',0,1001,'TimeoutError','ExportService','/export',1,365,0,15,'tokenabc','fieldD','fieldE','fieldF');
INSERT INTO system_audit_events VALUES (3,'2025-12-01 10:05:12','Configuration','Update','ConfigManager','config.exe','srv03','10.0.0.3',103,5003,'corr125','Info','hashghi789',1,NULL,NULL,'ConfigService','/update',1,365,0,18,'tokenlmn','fieldG','fieldH','fieldI');

-- External API usage tracking for third‑party integrations
CREATE TABLE external_api_usage
(
    UsageId               INTEGER        NOT NULL PRIMARY KEY,
    RecordedAt            DATETIME       NOT NULL,
    ApiProvider           TEXT           NOT NULL,
    EndpointPath          TEXT           NOT NULL,
    HttpMethod            TEXT           NOT NULL,
    RequestSizeBytes      INTEGER        NOT NULL,
    ResponseSizeBytes     INTEGER        NOT NULL,
    ResponseTimeMs        INTEGER        NOT NULL,
    StatusCode            INTEGER        NOT NULL,
    ClientAppId           TEXT           NOT NULL,
    ClientVersion         TEXT           NOT NULL,
    AuthTokenHash         TEXT           NOT NULL,
    GeoCountry            TEXT           NOT NULL,
    GeoRegion             TEXT,
    UserAgentString       TEXT,
    RateLimitBucket       TEXT,
    RateLimitRemaining    INTEGER,
    RetryCount            INTEGER,
    ErrorCategory         TEXT,
    ErrorDetail           TEXT,
    CorrelationId         TEXT,
    PayloadChecksum       TEXT,
    IsCachedResponse      INTEGER,
    CacheHitMiss          TEXT,
    CustomMetric1         INTEGER,
    CustomMetric2         INTEGER,
    CustomMetric3         TEXT
);

INSERT INTO external_api_usage VALUES (101,'2025-12-02 11:00:00','PaymentsAPI','/v1/charge','POST',850,1240,215,200,'appA','1.2.0','hashpay001','US','CA','AgentX','bucketA',95,0,0,NULL,NULL,'corr501','chk001',0,'Miss',10,5,'metricX');
INSERT INTO external_api_usage VALUES (102,'2025-12-02 11:05:30','GeoIP','/lookup','GET',210,340,78,200,'appB','3.4.1','hashgeo002','DE',NULL,'AgentY','bucketB',120,0,0,NULL,NULL,'corr502','chk002',1,'Hit',12,7,'metricY');
INSERT INTO external_api_usage VALUES (103,'2025-12-02 11:10:45','WeatherAPI','/current','GET',190,310,102,503,'appC','2.0.5','hashwet003','FR','IDF','AgentZ','bucketC',0,0,1,'ServerError','Timeout','corr503','chk003',0,'Miss',8,3,'metricZ');

-- Device telemetry log for IoT sensors
CREATE TABLE device_telemetry_log
(
    TelemetryId           INTEGER        NOT NULL PRIMARY KEY,
    DeviceSerial          TEXT           NOT NULL,
    LoggedAt              DATETIME       NOT NULL,
    TemperatureC          REAL           NOT NULL,
    HumidityPercent       REAL           NOT NULL,
    PressurePa            REAL           NOT NULL,
    BatteryVoltage        REAL           NOT NULL,
    SignalStrengthDbm     INTEGER        NOT NULL,
    FirmwareVersion       TEXT           NOT NULL,
    OperationalState      TEXT           NOT NULL,
    ErrorCode             INTEGER,
    Latitude              REAL,
    Longitude             REAL,
    AltitudeMeters        REAL,
    MotionDetected        INTEGER,
    LightLevelLux         REAL,
    CO2Ppm                INTEGER,
    VOCIndex              INTEGER,
    FirmwareChecksum      TEXT,
    LastMaintenanceDate   DATETIME,
    MaintenanceDueInDays  INTEGER,
    OwnerOrganization     TEXT,
    DeploymentZone        TEXT,
    ConfigProfileId       INTEGER,
    CustomTag1            TEXT,
    CustomTag2            TEXT,
    CustomTag3            TEXT
);

INSERT INTO device_telemetry_log VALUES (1001,'SN001','2025-12-03 12:00:00',22.5,45.0,101325,3.7,-70,'v1.0.3','Active',NULL,52.5200,13.4050,34.0,0,350.0,400,12,'chkdev001','2025-06-01',180,'AcmeCorp','ZoneA',5,'tagA','tagB','tagC');
INSERT INTO device_telemetry_log VALUES (1002,'SN002','2025-12-03 12:05:00',19.8,50.2,100800,3.8,-68,'v1.0.3','Active',2,48.8566,2.3522,35.0,1,120.0,800,25,'chkdev002','2025-05-15',150,'BetaInc','ZoneB',7,'tagD','tagE','tagF');
INSERT INTO device_telemetry_log VALUES (1003,'SN003','2025-12-03 12:10:00',25.1,40.5,101500,3.6,-72,'v1.0.3','Maintenance',5,40.7128,-74.0060,10.0,0,500.0,300,8,'chkdev003','2025-04-20',200,'GammaLLC','ZoneC',9,'tagG','tagH','tagI');

-- Content localization queue for translating UI strings
CREATE TABLE content_localization_queue
(
    QueueId               INTEGER        NOT NULL PRIMARY KEY,
    EnqueueTimestamp      DATETIME       NOT NULL,
    SourceLocale          TEXT           NOT NULL,
    TargetLocale          TEXT           NOT NULL,
    ContentKey            TEXT           NOT NULL,
    ContentType           TEXT           NOT NULL,
    OriginalText          TEXT           NOT NULL,
    PriorityLevel         INTEGER        NOT NULL,
    AssignedTranslatorId  INTEGER,
    EstimatedCompletion   DATETIME,
    ActualCompletion      DATETIME,
    TranslationStatus     TEXT           NOT NULL,
    WordCount             INTEGER,
    CharacterCount        INTEGER,
    RevisionNumber        INTEGER,
    IsHtml                INTEGER,
    ContextualNote        TEXT,
    GlossaryApplied       INTEGER,
    MachineTranslationScore INTEGER,
    QualityScore          INTEGER,
    ReviewRequired        INTEGER,
    ReviewComments        TEXT,
    LastUpdatedBy         TEXT,
    LastUpdatedAt         DATETIME,
    CustomFlag1           TEXT,
    CustomFlag2           TEXT,
    CustomFlag3           TEXT
);

INSERT INTO content_localization_queue VALUES (5001,'2025-12-04 08:00:00','en-US','fr-FR','UI_LOGIN_BUTTON','String','Login',1,NULL,NULL,NULL,'Pending',1,5,1,0,'ButtonLabel',0,85,NULL,NULL,0,NULL,'system','2025-12-04 08:00:00','flagA','flagB','flagC');
INSERT INTO content_localization_queue VALUES (5002,'2025-12-04 08:05:00','en-US','de-DE','UI_WELCOME_MESSAGE','String','Welcome to the platform',2,42,'2025-12-04 12:00:00','2025-12-04 11:58:00','Completed',6,36,2,0,'MessageBody',1,92,95,0,'Good','admin','2025-12-04 12:00:00','flagD','flagE','flagF');
INSERT INTO content_localization_queue VALUES (5003,'2025-12-04 08:10:00','en-US','es-ES','EMAIL_RESET_SUBJECT','EmailSubject','Password Reset Request',3,NULL,NULL,NULL,'InProgress',5,32,1,0,'EmailSubject',0,78,NULL,NULL,0,NULL,'system','2025-12-04 08:10:00','flagG','flagH','flagI');

-- Marketing campaign budget allocations
CREATE TABLE marketing_campaign_budget
(
    BudgetId               INTEGER        NOT NULL PRIMARY KEY,
    CampaignName           TEXT           NOT NULL,
    FiscalYear             INTEGER        NOT NULL,
    StartDate              DATETIME       NOT NULL,
    EndDate                DATETIME       NOT NULL,
    TotalAllocatedUsd      REAL           NOT NULL,
    MediaSpendUsd          REAL,
    CreativeSpendUsd       REAL,
    TechnologySpendUsd     REAL,
    AgencyFeeUsd           REAL,
    ContingencyPct         REAL,
    ApprovedBy             TEXT,
    ApprovalDate           DATETIME,
    CurrencyCode           TEXT,
    ExchangeRateToUsd      REAL,
    BudgetVersion          INTEGER,
    IsActive               INTEGER,
    ChannelDigitalPct      REAL,
    ChannelPrintPct        REAL,
    ChannelTVPct           REAL,
    ChannelRadioPct        REAL,
    ChannelOutOfHomePct    REAL,
    KPIImpressionsGoal    INTEGER,
    KPIClicksGoal          INTEGER,
    KPIConversionsGoal     INTEGER,
    Remarks                TEXT,
    LastModifiedBy         TEXT,
    LastModifiedAt         DATETIME,
    CustomMetricA          REAL,
    CustomMetricB          REAL,
    CustomMetricC          REAL
);

INSERT INTO marketing_campaign_budget VALUES (9001,'SummerLaunch','2025','2025-06-01','2025-08-31',500000,200000,150000,50000,30000,5,'jdoe','2025-05-20','USD',1.0,1,1,40.0,30.0,20.0,5.0,5.0,5000000,250000,50000,'Initial allocation','asmith','2025-05-21',0.95,1.2,0.5);
INSERT INTO marketing_campaign_budget VALUES (9002,'WinterPromo','2025','2025-11-01','2026-01-31',300000,120000,80000,30000,20000,4,'asmith','2025-10-15','USD',1.0,1,1,35.0,25.0,15.0,10.0,15.0,3000000,150000,30000,'Adjusted after Q4 review','jdoe','2025-10-16',0.85,1.1,0.3);
INSERT INTO marketing_campaign_budget VALUES (9003,'SpringRefresh','2025','2025-03-01','2025-05-31',400000,160000,120000,40000,25000,6,'bjones','2025-02-20','USD',1.0,1,1,38.0,28.0,17.0,8.0,9.0,4000000,200000,40000,'Reallocated from unused funds','bjones','2025-02-21',0.90,1.15,0.4);

-- Knowledge graph metadata for semantic entities
CREATE TABLE knowledge_graph_metadata
(
    KgNodeId               INTEGER        NOT NULL PRIMARY KEY,
    NodeLabel              TEXT           NOT NULL,
    NodeType               TEXT           NOT NULL,
    CreatedAt              DATETIME       NOT NULL,
    UpdatedAt              DATETIME,
    SourceSystem           TEXT,
    SourceId               TEXT,
    IsActive               INTEGER,
    ConfidenceScore        REAL,
    VersionNumber          INTEGER,
    LanguageCode           TEXT,
    LastCuratedBy          TEXT,
    CuratedAt              DATETIME,
    TaxonomyPath           TEXT,
    RelationCount          INTEGER,
    IncomingEdgeCount      INTEGER,
    OutgoingEdgeCount      INTEGER,
    DeprecatedSince        DATETIME,
    DeprecationReason      TEXT,
    SynonymCount           INTEGER,
    AliasList              TEXT,
    RelatedConcepts        TEXT,
    DocumentationUrl       TEXT,
    OwnerTeam              TEXT,
    AccessLevel            TEXT,
    ReviewStatus           TEXT,
    ReviewDueDate          DATETIME,
    CustomMeta1            TEXT,
    CustomMeta2            TEXT,
    CustomMeta3            TEXT
);

INSERT INTO knowledge_graph_metadata VALUES (2001,'Person','Entity','2024-01-10','2025-11-20','HRSystem','HR123',1,0.97,3,'en','alice','2025-11-01','/People','12','5','7',NULL,NULL,2,'JohnDoe,JDoe','Employee,Staff','http://docs/company/person','PeopleTeam','Public','Approved','2025-12-31','metaA','metaB','metaC');
INSERT INTO knowledge_graph_metadata VALUES (2002,'Invoice','Document','2023-07-15','2025-09-05','FinanceSystem','INV987',1,0.92,5,'en','bob','2025-08-30','/Finance/Invoices','8','3','5',NULL,NULL,1,'Inv2023,Inv24','Bill,Statement','http://docs/company/invoice','FinanceTeam','Restricted','Pending','2025-12-15','metaD','metaE','metaF');
INSERT INTO knowledge_graph_metadata VALUES (2003,'Location','Geography','2022-03-22','2025-10-10','GIS','LOC456',1,0.99,2,'en','carol','2025-09-25','/Geography','15','9','6','2025-12-01','Obsolete region','0','NYC,NewYork','City,Metro','http://docs/company/location','GeoTeam','Public','Approved','2025-11-30','metaG','metaH','metaI');

-- Ad network targeting rules for campaign delivery
CREATE TABLE ad_network_targeting_rules
(
    RuleId                  INTEGER        NOT NULL PRIMARY KEY,
    RuleName                TEXT           NOT NULL,
    CreatedOn               DATETIME       NOT NULL,
    ModifiedOn              DATETIME,
    TargetCountry           TEXT,
    TargetRegion            TEXT,
    TargetCity              TEXT,
    AgeGroupMin             INTEGER,
    AgeGroupMax             INTEGER,
    Gender                  TEXT,
    DeviceType              TEXT,
    Platform                TEXT,
    Browser                 TEXT,
    ConnectionSpeedMbps     REAL,
    LanguagePreference      TEXT,
    InterestCategory        TEXT,
    PurchaseIntentScore     REAL,
    FrequencyCap            INTEGER,
    DailyBudgetUsd          REAL,
    IsActive                INTEGER,
    PriorityLevel           INTEGER,
    ExclusionList           TEXT,
    InclusionList           TEXT,
    CustomParameter1        TEXT,
    CustomParameter2        TEXT,
    CustomParameter3        TEXT,
    Remark                  TEXT,
    LastReviewedBy          TEXT,
    LastReviewedAt          DATETIME,
    ValidationStatus        TEXT,
    ValidationMessage       TEXT,
    RuleVersion             INTEGER,
    ArchivedFlag            INTEGER
);

INSERT INTO ad_network_targeting_rules VALUES (301,'TechEnthusiasts','2025-01-05','2025-11-10','US','CA','SanFrancisco',18,45,'All','Mobile','iOS','Safari',25.0,'en','Technology',0.85,3,1500.0,1,5,'excludeListA','includeListA','paramA','paramB','paramC','High value tech audience','jdoe','2025-11-12','Validated','All checks passed',2,0);
INSERT INTO ad_network_targeting_rules VALUES (302,'TravelSeekers','2025-02-15','2025-11-20','GB','ENG','London',25,60,'All','Desktop','Windows','Chrome',15.0,'en','Travel',0.78,5,1200.0,1,4,'excludeListB','includeListB','paramD','paramE','paramF','Targeting frequent travelers','asmith','2025-11-22','Validated','All checks passed',1,0);
INSERT INTO ad_network_targeting_rules VALUES (303,'HealthConscious','2025-03-01','2025-11-25','AU','NSW','Sydney',30,55,'Female','Mobile','Android','Firefox',10.0,'en','Health',0.82,2,1000.0,1,6,'excludeListC','includeListC','paramG','paramH','paramI','Focus on wellness products','bjones','2025-11-27','Pending','Awaiting final review',3,0);

-- User behavior segments for personalization
CREATE TABLE user_behavior_segments
(
    SegmentId               INTEGER        NOT NULL PRIMARY KEY,
    SegmentName             TEXT           NOT NULL,
    CreationDate            DATETIME       NOT NULL,
    LastModifiedDate        DATETIME,
    Description             TEXT,
    MinVisitCount           INTEGER,
    MaxVisitCount           INTEGER,
    AvgSessionDurationSec   INTEGER,
    PreferredContentType    TEXT,
    DevicePreference        TEXT,
    LanguagePreference      TEXT,
    CountryFocus            TEXT,
    AgeRangeStart           INTEGER,
    AgeRangeEnd             INTEGER,
    GenderTarget            TEXT,
    PurchaseLikelihoodScore REAL,
    ChurnRiskScore          REAL,
    EngagementScore         REAL,
    IsActive                INTEGER,
    IsDefault               INTEGER,
    SourceModelVersion      TEXT,
    FeatureSetHash          TEXT,
    SampleUserCount         INTEGER,
    CalibrationDate         DATETIME,
    RefreshFrequencyDays    INTEGER,
    CustomTagA              TEXT,
    CustomTagB              TEXT,
    CustomTagC              TEXT,
    OwnerTeam               TEXT,
    ReviewStatus            TEXT,
    ReviewNotes             TEXT,
    LastReviewedBy          TEXT,
    LastReviewedAt          DATETIME,
    ValidationFlag          INTEGER,
    ArchivedFlag            INTEGER
);

INSERT INTO user_behavior_segments VALUES (401,'HighSpenders','2025-04-01','2025-11-01','Users with high purchase frequency',50,200,600,'Product','Mobile','en','US',25,45,'All',0.92,0.1,0.88,1,0,'v2','hashseg1',1500,'2025-10-15',30,'tagX','tagY','tagZ','Marketing','Approved','All good','jdoe','2025-11-02',1,0);
INSERT INTO user_behavior_segments VALUES (402,'CasualReaders','2025-04-10','2025-11-05','Infrequent visitors with low engagement',5,20,300,'Article','Desktop','en','GB',18,34,'All',0.35,0.45,0.40,1,0,'v2','hashseg2',2400,'2025-10-20',45,'tagA','tagB','tagC','Content','Pending','Needs review','asmith','2025-11-06',0,0);
INSERT INTO user_behavior_segments VALUES (403,'MobileGamers','2025-04-20','2025-11-10','Users who primarily use mobile devices for gaming',30,120,720,'Game','Mobile','en','AU',15,30,'Male',0.78,0.25,0.80,1,0,'v2','hashseg3',1800,'2025-10-25',60,'tagD','tagE','tagF','Product','Approved','Ready for rollout','bjones','2025-11-11',1,0);

-- Forum thread archival metadata
CREATE TABLE forum_thread_archival
(
    ArchiveId               INTEGER        NOT NULL PRIMARY KEY,
    ThreadId                INTEGER        NOT NULL,
    ArchiveDate             DATETIME       NOT NULL,
    ArchivedByUserId        INTEGER,
    ArchiveReason           TEXT,
    OriginalPostCount       INTEGER,
    OriginalViewCount       INTEGER,
    OriginalReplyCount      INTEGER,
    StorageLocationUri      TEXT,
    FileFormat              TEXT,
    CompressionMethod       TEXT,
    EncryptionKeyId         TEXT,
    RetentionPeriodDays    INTEGER,
    IsPermanentArchive      INTEGER,
    AccessPermissionLevel   TEXT,
    AuditLogId              INTEGER,
    Checksum               TEXT,
    FileSizeBytes          BIGINT,
    ArchiveStatus           TEXT,
    VerificationStatus      TEXT,
    RestoredFlag            INTEGER,
    RestorationDate         DATETIME,
    RestoredByUserId        INTEGER,
    MetadataVersion        INTEGER,
    CustomAttribute1        TEXT,
    CustomAttribute2        TEXT,
    CustomAttribute3        TEXT,
    Notes                  TEXT,
    LastModifiedBy          TEXT,
    LastModifiedAt          DATETIME,
    ValidationResult       TEXT,
    ValidationTimestamp    DATETIME,
    ArchivedFlag           INTEGER,
    DeletedFlag            INTEGER
);

INSERT INTO forum_thread_archival VALUES (701,15001,'2025-07-01',1001,'Outdated content',250,5000,80,'s3://archive/forum/15001','json','gzip','key123',365,0,'ReadOnly',9001,'chkarch001',1250000,'Completed','Verified',0,NULL,NULL,1,'attrA','attrB','attrC','No issues','admin','2025-07-02','Pass','2025-07-02',1,0);
INSERT INTO forum_thread_archival VALUES (702,15002,'2025-07-15',1002,'Legal hold',400,8000,120,'s3://archive/forum/15002','xml','zip','key124',730,0,'Restricted',9002,'chkarch002',2100000,'InProgress','Pending',0,NULL,NULL,2,'attrD','attrE','attrF','Awaiting verification','moderator','2025-07-16','Pending','2025-07-16',1,0);
INSERT INTO forum_thread_archival VALUES (703,15003,'2025-08-01',1003,'User request',150,3000,45,'s3://archive/forum/15003','json','gzip','key125',180,0,'ReadOnly',9003,'chkarch003',850000,'Completed','Verified',1,'2025-09-01',1004,3,'attrG','attrH','attrI','Restored successfully','admin','2025-09-02','Pass','2025-09-02',1,0);

-- Supplier compliance audit records
CREATE TABLE supplier_compliance_audit
(
    AuditId                 INTEGER        NOT NULL PRIMARY KEY,
    SupplierId              INTEGER        NOT NULL,
    AuditDate               DATETIME       NOT NULL,
    AuditorName             TEXT           NOT NULL,
    AuditScope              TEXT,
    FindingsCount           INTEGER,
    CriticalFindings        INTEGER,
    MajorFindings           INTEGER,
    MinorFindings           INTEGER,
    ComplianceScore         REAL,
    FollowUpRequired        INTEGER,
    FollowUpDueDate         DATETIME,
    CorrectiveActionPlan    TEXT,
    DocumentationVerified   INTEGER,
    SiteVisitPerformed      INTEGER,
    SiteVisitDate           DATETIME,
    RiskCategory            TEXT,
    ContractStatus          TEXT,
    ContractExpirationDate  DATETIME,
    PaymentTerms            TEXT,
    InsuranceValidThrough   DATETIME,
    CertificationsHeld      TEXT,
    CertificationsExpiry    TEXT,
    ESGRating               REAL,
    SustainabilityScore     REAL,
    LastUpdatedBy           TEXT,
    LastUpdatedAt           DATETIME,
    Remarks                 TEXT,
    CustomFieldA            TEXT,
    CustomFieldB            TEXT,
    CustomFieldC            TEXT,
    ArchivedFlag            INTEGER,
    DeletedFlag             INTEGER,
    ValidationStatus        TEXT,
    ValidationTimestamp     DATETIME
);

INSERT INTO supplier_compliance_audit VALUES (801,3001,'2025-05-10','LauraSmith','Financial','5','1','2','2',87.5,1,'2025-06-15','Update policy documents',1,1,'2025-05-08','Medium','Active','2026-12-31','Net30','2025-12-31','ISO9001','2026-01-01',78.0,85.0,'admin','2025-05-11','All good','fieldA','fieldB','fieldC',0,0,'Validated','2025-05-12');
INSERT INTO supplier_compliance_audit VALUES (802,3002,'2025-06-20','MarkTaylor','Operational','3','0','2','1',92.0,0,NULL,'N/A',1,0,NULL,'Low','Active','2027-03-30','Net45','2027-03-30','ISO14001','2028-04-01',82.5,88.0,'admin','2025-06-21','No issues','fieldD','fieldE','fieldF',0,0,'Validated','2025-06-22');
INSERT INTO supplier_compliance_audit VALUES (803,3003,'2025-07-15','NinaLee','Safety','7','2','3','2',79.0,1,'2025-08-20','Implement safety training',0,1,'2025-07-12','High','Pending','2025-12-31','Net60','2025-12-31','OHSAS18001','2026-02-01',70.0,65.0,'admin','2025-07-16','Follow‑up needed','fieldG','fieldH','fieldI',0,0,'Pending','2025-07-17');

-- Device firmware update log for hardware inventory
CREATE TABLE device_firmware_update_log
(
    UpdateLogId            INTEGER        NOT NULL PRIMARY KEY,
    DeviceId               TEXT           NOT NULL,
    FirmwareVersionBefore  TEXT           NOT NULL,
    FirmwareVersionAfter   TEXT           NOT NULL,
    UpdateInitiatedAt      DATETIME       NOT NULL,
    UpdateCompletedAt      DATETIME,
    InitiatedByUserId      INTEGER,
    InitiatedBySystem      TEXT,
    UpdateMethod           TEXT,
    UpdateStatus           TEXT,
    FailureReason          TEXT,
    RollbackPerformed      INTEGER,
    RollbackVersion        TEXT,
    ChecksumBefore         TEXT,
    ChecksumAfter          TEXT,
    PatchSizeBytes         BIGINT,
    DistributionChannel    TEXT,
    DeviceLocation         TEXT,
    DeviceModel            TEXT,
    SerialNumber           TEXT,
    Manufacturer           TEXT,
    WarrantyExpirationDate DATETIME,
    LastMaintenanceDate    DATETIME,
    NextScheduledUpdate    DATETIME,
    ComplianceVerified     INTEGER,
    SecurityScanResult     TEXT,
    Notes                  TEXT,
    ReviewedBy             TEXT,
    ReviewDate             DATETIME,
    ValidationFlag         INTEGER,
    ArchivedFlag           INTEGER,
    CustomMeta1            TEXT,
    CustomMeta2            TEXT,
    CustomMeta3            TEXT
);

INSERT INTO device_firmware_update_log VALUES (901,'DEV001','v1.0.0','v1.1.0','2025-09-01 02:00:00','2025-09-01 02:15:00',1005,'systemA','OTA','Success',NULL,0,NULL,'chkbef001','chk aft001',2048000,'cloud','DatacenterA','ModelX','SN1001','AcmeCorp','2027-12-31','2025-06-01','2026-03-01',1,'Clean','Routine update','admin','2025-09-02',1,0,'metaU1','metaU2','metaU3');
INSERT INTO device_firmware_update_log VALUES (902,'DEV002','v2.3.4','v2.4.0','2025-09-05 04:30:00',NULL,1006,'systemB','Manual','Failed','Checksum mismatch',1,'v2.3.3','chkbef002','chk aft002',1024000,'local','SiteB','ModelY','SN1002','BetaTech','2025-12-31','2025-07-15','2026-01-15',0,'Warning','Rollback performed','admin','2025-09-06',0,0,'metaU4','metaU5','metaU6');
INSERT INTO device_firmware_update_log VALUES (903,'DEV003','v3.1.1','v3.2.0','2025-09-10 01:45:00','2025-09-10 02:05:00',1007,'systemC','OTA','Success',NULL,0,NULL,'chkbef003','chk aft003',3072000,'cloud','DatacenterB','ModelZ','SN1003','GammaInc','2028-06-30','2025-08-20','2026-05-20',1,'Clean','Major feature update','admin','2025-09-11',1,0,'metaU7','metaU8','metaU9');

-- Content translation job queue for multilingual publishing
CREATE TABLE content_translation_job_queue
(
    JobId                  INTEGER        NOT NULL PRIMARY KEY,
    ContentId              INTEGER        NOT NULL,
    SourceLocale           TEXT           NOT NULL,
    TargetLocale           TEXT           NOT NULL,
    JobSubmittedAt         DATETIME       NOT NULL,
    AssignedTranslatorId   INTEGER,
    TranslationStartAt     DATETIME,
    TranslationEndAt       DATETIME,
    TranslationStatus      TEXT           NOT NULL,
    WordCount              INTEGER,
    CharacterCount         INTEGER,
    MachineTranslationUsed INTEGER,
    QualityScore           REAL,
    GlossaryApplied        INTEGER,
    ReviewRequired         INTEGER,
    ReviewerId             INTEGER,
    ReviewCompletedAt      DATETIME,
    ReviewScore            REAL,
    Comments               TEXT,
    PriorityLevel          INTEGER,
    EstimatedCompletion    DATETIME,
    ActualCompletion       DATETIME,
    CostUsd                REAL,
    Currency               TEXT,
    ExchangeRate           REAL,
    BillingAccountId       INTEGER,
    ProjectCode            TEXT,
    CustomTagA             TEXT,
    CustomTagB             TEXT,
    CustomTagC             TEXT,
    LastUpdatedBy          TEXT,
    LastUpdatedAt          DATETIME,
    ValidationFlag         INTEGER,
    ValidationMessage      TEXT,
    ArchivedFlag           INTEGER,
    DeletedFlag            INTEGER
);

INSERT INTO content_translation_job_queue VALUES (10001,50001,'en-US','de-DE','2025-10-01 09:00:00',2001,'2025-10-01 10:00:00','2025-10-01 12:30:00','Completed',1200,7500,0,0.96,1,0,NULL,NULL,NULL,'Excellent',2,'2025-10-01 13:00:00','2025-10-01 12:45:00',250.0,'USD',1.0,3001,'PRJ001','tagX','tagY','tagZ','admin','2025-10-01 13:05:00',1,'All good',0,0);
INSERT INTO content_translation_job_queue VALUES (10002,50002,'en-US','fr-FR','2025-10-02 08:30:00',2002,'2025-10-02 09:15:00','2025-10-02 11:00:00','InProgress',800,5000,1,0.88,0,1,NULL,NULL,NULL,'Pending',3,'2025-10-02 14:00:00',NULL,NULL,180.0,'EUR',0.95,3002,'PRJ002','tagA','tagB','tagC','admin','2025-10-02 11:05:00',0,'Awaiting review',0,0);
INSERT INTO content_translation_job_queue VALUES (10003,50003,'en-US','es-ES','2025-10-03 07:45:00',2003,NULL,NULL,'Pending',600,4000,0,0.0,0,0,NULL,NULL,NULL,NULL,1,'2025-10-03 12:00:00',NULL,NULL,150.0,'USD',1.0,3003,'PRJ003','tagD','tagE','tagF','admin','2025-10-03 08:00:00',0,'Not started',0,0);

-- Advertisement creative assets metadata
CREATE TABLE ad_creative_assets
(
    AssetId               INTEGER        NOT NULL PRIMARY KEY,
    CampaignId            INTEGER        NOT NULL,
    AssetType             TEXT           NOT NULL,
    FileName              TEXT           NOT NULL,
    FileExtension         TEXT           NOT NULL,
    FileSizeBytes         BIGINT,
    WidthPixels           INTEGER,
    HeightPixels          INTEGER,
    DurationSeconds       REAL,
    AspectRatio           TEXT,
    ColorProfile          TEXT,
    LanguageCode          TEXT,
    TargetDevice          TEXT,
    TargetPlatform        TEXT,
    CreativeVersion       INTEGER,
    CreationTimestamp     DATETIME,
    LastModifiedTimestamp DATETIME,
    UploadedByUserId      INTEGER,
    ApprovalStatus        TEXT,
    ApprovedByUserId      INTEGER,
    ApprovalTimestamp     DATETIME,
    RejectionReason       TEXT,
    IsActive              INTEGER,
    IsArchived            INTEGER,
    ExposureCount         INTEGER,
    ClickThroughCount     INTEGER,
    ConversionCount       INTEGER,
    CostPerMilleUsd       REAL,
    CostPerClickUsd       REAL,
    EstimatedReach        INTEGER,
    TargetAudienceSegment TEXT,
    GeoTargetCountry      TEXT,
    GeoTargetRegion       TEXT,
    TargetGender          TEXT,
    AgeRangeStart         INTEGER,
    AgeRangeEnd           INTEGER,
    CustomMeta1           TEXT,
    CustomMeta2           TEXT,
    CustomMeta3           TEXT,
    Tags                  TEXT,
    ReviewNotes           TEXT,
    LastReviewedBy        TEXT,
    LastReviewedAt        DATETIME,
    ValidationStatus      TEXT,
    ValidationMessage     TEXT,
    ArchivedFlag          INTEGER,
    DeletedFlag           INTEGER
);

INSERT INTO ad_creative_assets VALUES (11001,9001,'Image','banner_home','jpg',204800,1200,800,0,'16:9','sRGB','en','Desktop','Web',1,'2025-08-01 10:00:00','2025-08-01 12:00:00',1001,'Approved',2001,'2025-08-02 09:30:00',NULL,1,0,5000,250,10,5.0,0.75,100000,'TechEnthusiasts','US','CA','All',18,45,'metaA','metaB','metaC','banner,home','No issues','admin','2025-08-03 08:00:00','Validated','All good',0,0);
INSERT INTO ad_creative_assets VALUES (11002,9002,'Video','promo_winter','mp4',5242880,1920,1080,30,'16:9','Rec709','en','Mobile','App',2,'2025-09-05 14:00:00','2025-09-05 15:30:00',1002,'Pending',NULL,NULL,NULL,0,0,3000,150,5,7.5,0.60,80000,'TravelSeekers','GB','ENG','All',25,60,'metaD','metaE','metaF','promo,winter','Awaiting approval','moderator','2025-09-06 10:00:00','Pending','Review needed',0,0);
INSERT INTO ad_creative_assets VALUES (11003,9003,'HTML','health_banner','html',102400,800,200,0,'4:1','UTF-8','en','Desktop','Web',1,'2025-10-10 09:00:00','2025-10-10 09:45:00',1003,'Approved',2003,'2025-10-11 08:15:00',NULL,1,0,4000,200,15,6.0,0.80,90000,'HealthConscious','AU','NSW','Female',30,55,'metaG','metaH','metaI','health,banner','Approved','admin','2025-10-12 07:30:00','Validated','All good',0,0);