-- Learning Center Resources
CREATE TABLE learning_center_resources (
    ResourceId INTEGER NOT NULL PRIMARY KEY,
    Title TEXT,
    Description TEXT,
    ResourceType TEXT,
    Category TEXT,
    PublishedDate DATETIME,
    AuthorId INTEGER,
    DurationMinutes INTEGER,
    LanguageCode TEXT,
    AccessLevel TEXT,
    FileSizeKB INTEGER,
    Url TEXT,
    ThumbnailUrl TEXT,
    Rating REAL,
    ReviewCount INTEGER,
    Tags TEXT,
    IsFeatured INTEGER,
    Version INTEGER,
    License TEXT,
    DownloadCount INTEGER,
    LastUpdated DATETIME,
    SupplierId INTEGER
);

INSERT INTO learning_center_resources VALUES
(1,'Intro to SQL','Basics of SQL queries','Video','Database','2022-05-10 09:00:00',101,45,'en','public',20480,'https://example.com/intro_sql','https://example.com/thumb1.jpg',4.5,120,'sql,basics',1,1,'CCBY4.0',350,'2023-01-15 12:00:00',10),
(2,'Advanced Python','Deep dive into Python features','Article','Programming','2021-11-20 14:30:00',102,0,'en','registered',5120,'https://example.com/adv_python','https://example.com/thumb2.jpg',4.8,85,'python,advanced',0,2,'MIT',210,'2023-02-10 08:45:00',12),
(3,'Data Viz Workshop','Interactive workshop on data visualization','Live','Analytics','2023-02-01 10:00:00',103,180,'en','public',0,'https://example.com/dataviz','https://example.com/thumb3.jpg',4.7,60,'visualization,workshop',1,1,'GPL',500,'2023-03-01 09:30:00',15);

-- Partner API Endpoints
CREATE TABLE partner_api_endpoints (
    EndpointId INTEGER PRIMARY KEY,
    PartnerName TEXT,
    ServiceName TEXT,
    HttpMethod TEXT,
    UrlPattern TEXT,
    AuthType TEXT,
    RateLimitPerMinute INTEGER,
    IsActive INTEGER,
    CreatedDate DATETIME,
    UpdatedDate DATETIME,
    Version INTEGER,
    SLAHours INTEGER,
    ContactEmail TEXT,
    DocumentationUrl TEXT,
    TimeoutSeconds INTEGER,
    PayloadFormat TEXT,
    ResponseFormat TEXT,
    MaxPayloadSizeKB INTEGER,
    SupportedEnvironments TEXT,
    OwnerTeam TEXT
);

INSERT INTO partner_api_endpoints VALUES
(1001,'AcmeCorp','Payments','POST','/api/v1/pay','OAuth',500,1,'2022-01-01 00:00:00','2023-01-01 00:00:00',2,24,'api@acme.com','https://acme.com/docs/payments',30,'JSON','JSON',1024,'prod,stage','IntegrationTeam'),
(1002,'BetaSoft','Messaging','GET','/api/v2/messages','APIKey',1000,1,'2021-06-15 12:00:00','2023-02-10 12:00:00',3,12,'support@betasoft.com','https://betasoft.com/docs/messaging',15,'XML','XML',2048,'prod','MessagingTeam'),
(1003,'GammaInc','Analytics','POST','/api/collect','None',2000,0,'2020-03-20 08:30:00','2022-12-20 08:30:00',1,48,'ops@gammainc.com','https://gammainc.com/docs/analytics',45,'JSON','JSON',512,'stage','AnalyticsTeam');

-- Regional Market Metrics
CREATE TABLE regional_market_metrics (
    MetricId INTEGER PRIMARY KEY,
    RegionCode TEXT,
    Country TEXT,
    City TEXT,
    MetricDate DATE,
    ActiveUsers INTEGER,
    NewRegistrations INTEGER,
    Sessions INTEGER,
    AvgSessionDurationSeconds INTEGER,
    BounceRate REAL,
    RevenueUSD REAL,
    AdImpressions INTEGER,
    ClickThroughRate REAL,
    ConversionRate REAL,
    AvgOrderValue REAL,
    NetPromoterScore INTEGER,
    ChurnRate REAL,
    SupportTickets INTEGER,
    SatisfactionScore REAL,
    MarketingSpendUSD REAL,
    GrossProfitUSD REAL,
    UpdatedAt DATETIME
);

INSERT INTO regional_market_metrics VALUES
(5001,'NA','UnitedStates','NewYork','2023-02-28',15000,350,42000,180,0.45,125000.00,800000,0.07,0.04,45.60,68,0.02,120,4.5,25000.00,95000.00,'2023-03-01 10:00:00'),
(5002,'EU','Germany','Berlin','2023-02-28',12000,300,35000,200,0.38,98000.00,600000,0.09,0.05,48.20,71,0.015,95,4.7,22000.00,78000.00,'2023-03-01 10:05:00'),
(5003,'AP','Japan','Tokyo','2023-02-28',18000,420,53000,160,0.42,140000.00,900000,0.08,0.045,49.10,73,0.018,140,4.6,30000.00,110000.00,'2023-03-01 10:10:00');

-- Asset Management Log
CREATE TABLE asset_management_log (
    LogId INTEGER PRIMARY KEY,
    AssetTag TEXT,
    AssetType TEXT,
    SerialNumber TEXT,
    PurchaseDate DATETIME,
    SupplierId INTEGER,
    WarrantyExpiration DATETIME,
    LocationId INTEGER,
    CurrentUserId INTEGER,
    Status TEXT,
    LastMaintenanceDate DATETIME,
    NextMaintenanceDue DATETIME,
    MaintenanceFrequencyDays INTEGER,
    CostUSD REAL,
    DepreciationRate REAL,
    CurrentValueUSD REAL,
    DisposalDate DATETIME,
    DisposalMethod TEXT,
    Notes TEXT,
    CreatedBy INTEGER,
    CreatedAt DATETIME
);

INSERT INTO asset_management_log VALUES
(20001,'LT-001','Laptop','SN12345','2020-03-15 00:00:00',301,'2023-03-15 00:00:00',101,1001,'InUse','2022-12-01 00:00:00','2023-06-01 00:00:00',180,1500.00,0.15,950.00,NULL,NULL,'Replaced battery 2022',501,'2020-03-15 09:30:00'),
(20002,'PR-045','Projector','SN67890','2019-07-22 00:00:00',302,'2022-07-22 00:00:00',102,1002,'InRepair','2022-01-10 00:00:00','2022-07-10 00:00:00',180,800.00 0.20 560.00,NULL,NULL,'Lamp failure',502,'2019-07-22 10:00:00'),
(20003,'PH-210','Phone','SN54321','2021-11-05 00:00:00',303,'2024-11-05 00:00:00',103,1003,'Available','2022-11-05 00:00:00','2023-05-05 00:00:00',180,600.00,0.12,530.00,NULL,NULL,'Ready for assignment',503,'2021-11-05 11:15:00');

-- Audit Compliance Checks
CREATE TABLE audit_compliance_checks (
    CheckId INTEGER PRIMARY KEY,
    CheckName TEXT,
    Description TEXT,
    Category TEXT,
    FrequencyDays INTEGER,
    LastRunDate DATETIME,
    NextScheduledDate DATETIME,
    Status TEXT,
    Result TEXT,
    SeverityLevel TEXT,
    OwnerTeam TEXT,
    ResponsibleUserId INTEGER,
    CreatedDate DATETIME,
    UpdatedDate DATETIME,
    IsCritical INTEGER,
    EscalationContact TEXT,
    DocumentationUrl TEXT,
    FindingsCount INTEGER,
    ResolvedCount INTEGER,
    OpenIssues INTEGER,
    Tags TEXT,
    ComplianceStandard TEXT,
    Score REAL
);

INSERT INTO audit_compliance_checks VALUES
(3001,'PasswordPolicy','Verify password complexity rules','Security',30,'2023-02-20 08:00:00','2023-03-22 08:00:00','Completed','Pass','High','SecOps',401,'2022-01-01 00:00:00','2023-02-21 09:00:00',1,'seclead@example.com','https://docs.example.com/pwdpolicy',0,0,0,'password,security','ISO27001',98.5),
(3002,'DataRetention','Check data retention compliance','Governance',90,'2023-01-15 10:30:00','2023-04-15 10:30:00','Completed','Pass','Medium','Compliance',402,'2021-06-10 00:00:00','2023-01-16 11:00:00',0,'complead@example.com','https://docs.example.com/retention',2,1,1,'retention,governance','GDPR',85.0),
(3003,'AccessLogReview','Review privileged access logs','Security',7,'2023-03-01 07:45:00','2023-03-08 07:45:00','InProgress','Pending','Critical','SecOps',403,'2022-05-05 00:00:00','2023-03-02 08:15:00',1,'seclead@example.com','https://docs.example.com/accesslog',5,2,3,'access,logs','SOC2',70.2);

-- User Interest Profiles
CREATE TABLE user_interest_profiles (
    ProfileId INTEGER PRIMARY KEY,
    UserId INTEGER,
    InterestCategory TEXT,
    SubCategory TEXT,
    InterestScore REAL,
    Weight INTEGER,
    LastInteractionDate DATETIME,
    Source TEXT,
    IsActive INTEGER,
    CreatedDate DATETIME,
    UpdatedDate DATETIME,
    ConfidenceLevel REAL,
    Tags TEXT,
    SuggestedContentId INTEGER,
    PreferenceRank INTEGER,
    Remark TEXT,
    GeoRegion TEXT,
    DeviceType TEXT,
    LanguagePreference TEXT,
    SubscriptionLevel TEXT
);

INSERT INTO user_interest_profiles VALUES
(4001,1001,'Technology','ArtificialIntelligence',0.92,5,'2023-02-28 14:00:00','Web','1','2022-01-10 09:00:00','2023-02-28 14:05:00',0.88,'AI,ML',501,1,'Highly engaged','NA','Desktop','en','Premium'),
(4002,1002,'Health','Nutrition',0.78,3,'2023-02-25 10:30:00','Mobile','1','2021-05-20 11:00:00','2023-02-25 10:35:00',0.80,'diet,wellness',502,2,'Occasional reader','EU','Mobile','en','Free'),
(4003,1003,'Finance','Investing',0.85,4,'2023-02-27 16:45:00','Email','1','2020-09-15 08:20:00','2023-02-27 16:50:00',0.82,'stocks,portfolio',503,3,'Regular subscriber','AP','Tablet','en','Premium');

-- Content Curation Rules
CREATE TABLE content_curation_rules (
    RuleId INTEGER PRIMARY KEY,
    RuleName TEXT,
    Description TEXT,
    ContentType TEXT,
    TagPattern TEXT,
    MinScore REAL,
    MaxScore REAL,
    Priority INTEGER,
    Action TEXT,
    IsActive INTEGER,
    CreatedBy INTEGER,
    CreatedDate DATETIME,
    UpdatedBy INTEGER,
    UpdatedDate DATETIME,
    EffectiveFrom DATETIME,
    EffectiveTo DATETIME,
    AppliesToRegion TEXT,
    AppliesToLanguage TEXT,
    ReviewRequired INTEGER,
    NotificationChannel TEXT,
    MaxItemsPerBatch INTEGER,
    BatchIntervalMinutes INTEGER,
    OwnerTeam TEXT
);

INSERT INTO content_curation_rules VALUES
(6001,'PromoteHighScore','Boost articles with high community score','Article','tech*',4.5,5.0,1,'Feature',1,101,'2022-01-01 00:00:00',102,'2023-01-15 12:00:00','2023-01-01 00:00:00','2024-01-01 00:00:00','NA','en',0,'Email',10,60,'ContentTeam'),
(6002,'FlagLowQuality','Hide low quality posts','Post','spam*',0.0,2.0,5,'Hide',1,103,'2021-06-01 00:00:00',104,'2023-02-10 09:30:00','2023-02-01 00:00:00','2023-12-31 23:59:59','EU','de',1,'Slack',20,30,'ModerationTeam'),
(6003,'CurateRegional','Select region-specific tutorials','Video','region_us*',3.0,4.5,3,'Recommend',1,105,'2023-02-01 00:00:00',106,'2023-02-20 14:20:00','2023-02-01 00:00:00','2023-12-31 23:59:59','US','en',0,'Push',5,120,'RegionalTeam');

-- Device Sensor Readings
CREATE TABLE device_sensor_readings (
    ReadingId INTEGER PRIMARY KEY,
    DeviceId INTEGER,
    SensorType TEXT,
    Value REAL,
    Unit TEXT,
    RecordedAt DATETIME,
    Latitude REAL,
    Longitude REAL,
    AccuracyMeters REAL,
    FirmwareVersion TEXT,
    BatteryLevel REAL,
    SignalStrength INTEGER,
    IsCalibrated INTEGER,
    CalibrationDate DATETIME,
    LocationId INTEGER,
    UserId INTEGER,
    EventType TEXT,
    Status TEXT,
    Remarks TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    DataHash TEXT,
    SequenceNumber INTEGER,
    SourceSystem TEXT
);

INSERT INTO device_sensor_readings VALUES
(70001, 9001,'Temperature',22.5,'C','2023-03-01 08:00:00',37.7749,-122.4194,5.0,'v1.2.3',0.85, -70,1,'2023-02-28 12:00:00',101,1001,'Periodic','OK','No issues','2023-03-01 08:01:00','2023-03-01 08:02:00','abc123def','1001','IoTPlatform'),
(70002, 9002,'Humidity',55.2,'%','2023-03-01 08:05:00',34.0522,-118.2437,4.0,'v1.3.0',0.78, -65,1,'2023-02-28 12:05:00',102,1002,'Alert','Warning','High humidity','2023-03-01 08:06:00','2023-03-01 08:07:00','def456ghi','1002','IoTPlatform'),
(70003, 9003,'Pressure',1013.25,'hPa','2023-03-01 08:10:00',40.7128,-74.0060,3.5,'v2.0.1',0.90, -60,1,'2023-02-28 12:10:00',103,1003,'Periodic','OK','Normal pressure','2023-03-01 08:11:00','2023-03-01 08:12:00','ghi789jkl','1003','IoTPlatform');

-- Sponsor Contributions
CREATE TABLE sponsor_contributions (
    ContributionId INTEGER PRIMARY KEY,
    SponsorName TEXT,
    CampaignName TEXT,
    ContributionDate DATETIME,
    AmountUSD REAL,
    CurrencyCode TEXT,
    PaymentMethod TEXT,
    IsMatched INTEGER,
    MatchingSponsor TEXT,
    MatchAmountUSD REAL,
    ContributionType TEXT,
    AudienceSegment TEXT,
    RegionCode TEXT,
    EventId INTEGER,
    ReceiptNumber TEXT,
    TaxDeductible INTEGER,
    TaxReceiptUrl TEXT,
    CreatedBy INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Notes TEXT
);

INSERT INTO sponsor_contributions VALUES
(8001,'TechCorp','OpenSourceFund','2023-01-15 10:00:00',50000.00,'USD','BankTransfer',1,'PartnerInc',25000.00,'Corporate','Developers','NA',301,'RCPT-001','1','https://tax.example.com/rcpt001',601,'2023-01-15 10:05:00','2023-02-01 09:00:00','First major donation of the year'),
(8002,'HealthPlus','WellnessDrive','2023-02-10 14:30:00',30000.00,'USD','CreditCard',0,NULL,0.00,'Individual','Patients','EU',302,'RCPT-002','1','https://tax.example.com/rcpt002',602,'2023-02-10 14:35:00','2023-02-20 11:00:00','Matched by internal budget'),
(8003,'EcoLiving','GreenInitiative','2023-03-05 09:15:00',45000.00,'USD','Wire',1,'EcoPartner','22500.00','Corporate','Environmentalists','AP',303,'RCPT-003','0','',603,'2023-03-05 09:20:00','2023-03-10 08:00:00','Awaiting tax documentation');

-- Metadata Snapshots
CREATE TABLE metadata_snapshots (
    SnapshotId INTEGER PRIMARY KEY,
    EntityType TEXT,
    EntityId INTEGER,
    SnapshotDate DATETIME,
    CreatedBy INTEGER,
    SourceSystem TEXT,
    Version INTEGER,
    JsonHash TEXT,
    BlobPath TEXT,
    RecordCount INTEGER,
    TotalSizeKB INTEGER,
    Status TEXT,
    ReviewComments TEXT,
    ApprovedBy INTEGER,
    ApprovedDate DATETIME,
    RetentionPeriodDays INTEGER,
    IsEncrypted INTEGER,
    EncryptionKeyId INTEGER,
    ArchiveLocation TEXT,
    ParentSnapshotId INTEGER,
    ChangeType TEXT,
    DiffSummary TEXT
);

INSERT INTO metadata_snapshots VALUES
(9001,'User',1001,'2023-02-28 23:59:59',501,'AuthService',3,'hash123','/snapshots/user_1001_v3.json',1,15,'Complete','No issues',601,'2023-03-01 08:00:00',365,1,900,'ColdStorage',NULL,'Update','Changed display name'),
(9002,'Post',2005,'2023-02-28 23:59:59',502,'ContentAPI',2,'hash456','/snapshots/post_2005_v2.json',1,10,'Complete','Verified',602,'2023-03-01 08:10:00',180,0,NULL,'HotStorage',9001,'Delete','Removed post due to policy violation'),
(9003,'Tag',300,'2023-02-28 23:59:59',503,'TagService',1,'hash789','/snapshots/tag_300_v1.json',1,5,'Complete','New tag added',603,'2023-03-01 08:20:00',730,0,NULL,'HotStorage',NULL,'Insert','Created tag for emerging technology');