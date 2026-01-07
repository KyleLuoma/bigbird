-- Documentation pages metadata
CREATE TABLE documentation_pages
(
    Id INTEGER NOT NULL PRIMARY KEY,
    Title TEXT,
    Slug TEXT,
    ContentSummary TEXT,
    BodyText TEXT,
    AuthorUserId INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    VersionNumber INTEGER,
    IsPublished INTEGER,
    ViewCount INTEGER,
    LikeCount INTEGER,
    CategoryId INTEGER,
    TagList TEXT,
    LanguageCode TEXT,
    WordCount INTEGER,
    ReadTimeMinutes INTEGER,
    LastEditorUserId INTEGER,
    LastEditDate DATETIME,
    ApprovalStatus TEXT
);
INSERT INTO documentation_pages VALUES (1,'Getting Started','getting-started','Intro guide','Full content here',101,'2023-01-10 08:00:00','2023-01-12 09:30:00',1,1,150,25,10,'intro,setup','en',800,5,102,'2023-01-12 09:30:00','approved');
INSERT INTO documentation_pages VALUES (2,'API Overview','api-overview','API guide','API details',102,'2023-02-01 10:15:00','2023-02-02 11:00:00',2,1,300,40,12,'api,reference','en',1200,7,103,'2023-02-02 11:00:00','pending');
INSERT INTO documentation_pages VALUES (3,'Advanced Topics','advanced-topics','Deep dive','Advanced content',103,'2023-03-05 14:20:00','2023-03-06 15:45:00',1,0,80,10,15,'advanced,performance','en',600,4,NULL,NULL,'draft');

-- API error codes catalog
CREATE TABLE api_error_codes
(
    Id INTEGER NOT NULL PRIMARY KEY,
    HttpStatus INTEGER,
    ErrorCode TEXT,
    ErrorMessage TEXT,
    Module TEXT,
    Severity INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    IsTransient INTEGER,
    DocumentationUrl TEXT,
    SupportContact TEXT,
    RetryAfterSeconds INTEGER,
    LogLevel TEXT,
    Deprecated INTEGER,
    ReplacementCode TEXT,
    Category TEXT,
    AffectedVersion TEXT,
    SourceFile TEXT,
    LineNumber INTEGER,
    IsCritical INTEGER
);
INSERT INTO api_error_codes VALUES (1,400,'ERR_INVALID_INPUT','Invalid request payload','UserService',2,'2023-01-01 00:00:00','2023-01-01 00:00:00',0,'https://docs.example.com/err_invalid_input','support@example.com',0,'WARN',0,NULL,'Client', 'v1.0','userservice.py',120,0);
INSERT INTO api_error_codes VALUES (2,500,'ERR_DB_FAILURE','Database unavailable','DataLayer',5,'2023-01-01 00:00:00','2023-01-01 00:00:00',1,'https://docs.example.com/err_db_failure','dba@example.com',30,'ERROR',0,NULL,'Server','v2.3','datalayer.py',45,1);
INSERT INTO api_error_codes VALUES (3,429,'ERR_RATE_LIMIT','Too many requests','RateLimiter',3,'2023-01-01 00:00:00','2023-01-01 00:00:00',1,'https://docs.example.com/err_rate_limit','ops@example.com',60,'INFO',0,NULL,'Client','v1.5','ratelimiter.py',78,0);

-- External API providers registry
CREATE TABLE external_api_providers
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ProviderName TEXT,
    BaseUrl TEXT,
    AuthMethod TEXT,
    ApiKey TEXT,
    RateLimitPerMinute INTEGER,
    SupportsBatch INTEGER,
    DocumentationUrl TEXT,
    ContactEmail TEXT,
    SupportPhone TEXT,
    ServiceLevelAgreement TEXT,
    Region TEXT,
    IsActive INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    LastTestedAt DATETIME,
    TestResult TEXT,
    FailureCount INTEGER,
    SuccessCount INTEGER,
    PrimaryContactName TEXT,
    PrimaryContactPhone TEXT
);
INSERT INTO external_api_providers VALUES (1,'GeoMapAPI','https://api.geomap.com','APIKey','GM12345',500,1,'https://geomap.com/docs','geo@example.com','555-0100','99.9% uptime','US',1,'2023-01-15 09:00:00','2023-02-01 10:00:00','2023-02-01 10:00:00','Success',0,150,'Alice Smith','555-0101');
INSERT INTO external_api_providers VALUES (2,'WeatherNow','https://api.weathernow.io','OAuth','WN98765',300,0,'https://weathernow.com/api','weather@example.com','555-0200','99.5% uptime','EU',1,'2023-01-20 11:30:00','2023-02-02 12:45:00','2023-02-02 12:45:00','Success',2,98,'Bob Johnson','555-0202');
INSERT INTO external_api_providers VALUES (3,'PaymentGate','https://paygate.example.com','HMAC','PG55555',1000,1,'https://paygate.com/docs','payments@example.com','555-0300','99.99% uptime','APAC',0,'2022-12-01 08:00:00','2022-12-15 09:15:00','2022-12-15 09:15:00','Failure',5,0,'Carol Lee','555-0303');

-- User training modules catalogue
CREATE TABLE user_training_modules
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ModuleName TEXT,
    Description TEXT,
    DifficultyLevel TEXT,
    EstimatedDurationMinutes INTEGER,
    Category TEXT,
    IsMandatory INTEGER,
    ReleaseDate DATE,
    RetireDate DATE,
    CreatedByUserId INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    LastAccessedAt DATETIME,
    CompletionRate REAL,
    PassScore INTEGER,
    MaxScore INTEGER,
    Language TEXT,
    CertificationId INTEGER,
    PrerequisiteModuleId INTEGER,
    VideoUrl TEXT
);
INSERT INTO user_training_modules VALUES (1,'Security Basics','Fundamentals of platform security','Beginner',45,'Security',1,'2022-01-01','2025-12-31',100,'2022-01-01 09:00:00','2023-01-10 10:00:00','2023-01-09 15:30:00',0.85,80,100,'en',200,NULL,'https://videos.example.com/sec_basics');
INSERT INTO user_training_modules VALUES (2,'Advanced Analytics','Deep dive into analytics features','Advanced',120,'Analytics',0,'2023-03-15','2026-03-14',101,'2023-03-15 08:30:00','2023-06-20 11:20:00','2023-06-19 14:00:00',0.60,70,100,'en',201,1,'https://videos.example.com/adv_analytics');
INSERT INTO user_training_modules VALUES (3,'API Integration','How to integrate external APIs','Intermediate',90,'Development',0,'2023-05-01','2026-05-01',102,'2023-05-01 07:45:00','2023-07-10 09:55:00','2023-07-09 13:20:00',0.72,75,100,'en',202,1,'https://videos.example.com/api_integration');

-- Content moderator assignments
CREATE TABLE content_moderator_assignments
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ModeratorUserId INTEGER,
    ContentType TEXT,
    AssignmentDate DATETIME,
    ExpirationDate DATETIME,
    Region TEXT,
    IsActive INTEGER,
    WorkloadScore REAL,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    ReviewCount INTEGER,
    EscalationCount INTEGER,
    AvgDecisionTimeSeconds REAL,
    ShiftId INTEGER,
    PriorityLevel INTEGER,
    AssignedByUserId INTEGER,
    ReassignmentCount INTEGER,
    LastActionDate DATETIME,
    FeedbackScore REAL
);
INSERT INTO content_moderator_assignments VALUES (1,150,'Comment','2023-01-05 08:00:00','2023-12-31 23:59:59','US',1,0.75,'Initial assignment','2023-01-05 08:00:00','2023-01-10 09:15:00',120,5,45.2,3,2,200,0,'2023-01-20 10:30:00',4.5);
INSERT INTO content_moderator_assignments VALUES (2,151,'Post','2023-02-01 09:30:00','2023-12-31 23:59:59','EU',1,0.60,'High volume area','2023-02-01 09:30:00','2023-02-15 11:00:00',200,12,38.7,4,1,201,1,'2023-03-01 14:20:00',4.2);
INSERT INTO content_moderator_assignments VALUES (3,152,'Tag','2023-03-10 07:45:00','2023-12-31 23:59:59','APAC',0,0.40,'Seasonal assignment','2023-03-10 07:45:00','2023-03-20 08:10:00',80,2,52.1,2,3,202,0,'2023-04-01 12:00:00',3.8);

-- Scheduled maintenance tasks
CREATE TABLE scheduled_maintenance_tasks
(
    Id INTEGER NOT NULL PRIMARY KEY,
    TaskName TEXT,
    Description TEXT,
    ScheduledStart DATETIME,
    ScheduledEnd DATETIME,
    EstimatedDurationMinutes INTEGER,
    AffectedServices TEXT,
    Priority INTEGER,
    CreatedByUserId INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Status TEXT,
    IsAutomatic INTEGER,
    RunOnServers TEXT,
    NotifyUsers INTEGER,
    NotificationTemplateId INTEGER,
    RollbackPlan TEXT,
    SuccessFlag INTEGER,
    ErrorMessage TEXT,
    LastRunTimestamp DATETIME
);
INSERT INTO scheduled_maintenance_tasks VALUES (1,'Database Index Rebuild','Rebuild indexes for performance','2023-04-01 02:00:00','2023-04-01 04:00:00',120,'DBCluster',2,300,'2023-03-20 10:00:00','2023-03-25 11:00:00','Completed',0,'db01,db02',1,400,'Rollback script v1',1,'', '2023-04-01 04:05:00');
INSERT INTO scheduled_maintenance_tasks VALUES (2,'Cache Server Refresh','Clear and warm up cache','2023-04-10 01:00:00','2023-04-10 01:30:00',30,'CacheLayer',1,301,'2023-04-01 09:00:00','2023-04-05 12:00:00','Completed',1,'cache01',1,401,'No rollback needed',1,'', '2023-04-10 01:35:00');
INSERT INTO scheduled_maintenance_tasks VALUES (3,'SSL Certificate Rotation','Rotate expiring certificates','2023-04-20 03:00:00','2023-04-20 04:30:00',90,'WebFrontEnd',3,302,'2023-04-10 08:00:00','2023-04-15 10:20:00','Failed',0,'web01,web02',1,402,'Revert to old certs',0,'Timeout during reload','2023-04-20 04:45:00');

-- Marketing campaigns metadata
CREATE TABLE marketing_campaigns
(
    Id INTEGER NOT NULL PRIMARY KEY,
    CampaignName TEXT,
    StartDate DATE,
    EndDate DATE,
    BudgetUsd REAL,
    SpendUsd REAL,
    TargetAudience TEXT,
    Channel TEXT,
    CreativeId INTEGER,
    LandingPageUrl TEXT,
    GoalMetric TEXT,
    GoalTarget REAL,
    ActualMetric REAL,
    ConversionRate REAL,
    ClickThroughRate REAL,
    Impressions INTEGER,
    LeadsGenerated INTEGER,
    IsActive INTEGER,
    CreatedByUserId INTEGER,
    CreatedAt DATETIME
);
INSERT INTO marketing_campaigns VALUES (1,'Spring Launch','2023-03-01','2023-04-30',50000,42000,'Developers','Email',101,'https://example.com/spring','SignUps',1000,950,0.159,0.025,200000,300,1,400,'2023-02-20 09:15:00');
INSERT INTO marketing_campaigns VALUES (2,'Summer Promo','2023-06-01','2023-07-31',75000,60000,'Designers','Social',102,'https://example.com/summer','Purchases',800,820,0.205,0.030,300000,450,1,401,'2023-05-15 10:00:00');
INSERT INTO marketing_campaigns VALUES (3,'Fall Webinar','2023-09-10','2023-09-20',20000,15000,'Product Managers','Webinar',103,'https://example.com/fall','Registrations',500,480,0.192,0.015,100000,120,0,402,'2023-08-30 11:45:00');

-- Data backup jobs log
CREATE TABLE data_backup_jobs
(
    Id INTEGER NOT NULL PRIMARY KEY,
    JobName TEXT,
    SourceDatabase TEXT,
    DestinationLocation TEXT,
    ScheduleCron TEXT,
    LastRunAt DATETIME,
    NextRunAt DATETIME,
    Status TEXT,
    FilesBackedUp INTEGER,
    TotalSizeMb REAL,
    DurationSeconds INTEGER,
    RetentionDays INTEGER,
    IsEncrypted INTEGER,
    EncryptionKeyId INTEGER,
    CreatedByUserId INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    FailureReason TEXT,
    SuccessFlag INTEGER,
    Comments TEXT
);
INSERT INTO data_backup_jobs VALUES (1,'Nightly Full','maindb','s3://backups/maindb','0 2 * * *','2023-04-01 02:10:00','2023-04-02 02:10:00','Success',120,8500.5,7200,30,1,500,600,'2023-01-01 08:00:00','2023-04-01 02:15:00',NULL,1,'All good');
INSERT INTO data_backup_jobs VALUES (2,'Hourly Incremental','maindb','s3://backups/inc','0 * * * *','2023-04-01 14:00:00','2023-04-01 15:00:00','Success',15,250.3,300,7,1,501,601,'2023-01-01 08:00:00','2023-04-01 14:05:00',NULL,1,'');
INSERT INTO data_backup_jobs VALUES (3,'Weekly Archive','archive_db','gs://archive/backups','0 3 * * 0','2023-03-26 03:05:00','2023-04-02 03:05:00','Failed',0,0,0,90,0,NULL,602,'2023-01-01 08:00:00','2023-03-26 03:10:00','Network timeout',0,'Investigate connectivity');

-- Product licenses inventory
CREATE TABLE product_licenses
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ProductName TEXT,
    LicenseKey TEXT,
    LicenseType TEXT,
    IssueDate DATE,
    ExpiryDate DATE,
    MaxUsers INTEGER,
    AssignedToUserId INTEGER,
    IsActive INTEGER,
    CreatedByUserId INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    RenewalDate DATE,
    SupportLevel TEXT,
    PaymentPlan TEXT,
    PriceUsd REAL,
    Currency TEXT,
    Region TEXT,
    UsageCount INTEGER,
    LastVerifiedAt DATETIME
);
INSERT INTO product_licenses VALUES (1,'AnalyticsPro','ANL-XYZ-12345','Enterprise','2022-06-01','2025-06-01',500,150,1,700,'2022-05-20 09:00:00','2023-01-10 10:30:00','2025-05-01','Premium','Annual',12000,'USD','US',320,'2023-01-09 08:45:00');
INSERT INTO product_licenses VALUES (2,'DevSuite','DEV-ABC-67890','Standard','2023-01-15','2024-01-15',100,151,1,701,'2023-01-10 11:00:00','2023-06-20 12:15:00','2024-01-01','Standard','Monthly',500,'USD','EU',45,'2023-06-19 09:20:00');
INSERT INTO product_licenses VALUES (3,'SecureMail','SEC-DEF-24680','Trial','2023-03-01','2023-06-01',10,NULL,0,702,'2023-02-28 14:00:00','2023-03-01 09:05:00','2023-05-30','Basic','Free',0,'USD','APAC',0,'2023-03-01 08:55:00');

-- Third‑party applications registry
CREATE TABLE third_party_applications
(
    Id INTEGER NOT NULL PRIMARY KEY,
    AppName TEXT,
    Vendor TEXT,
    IntegrationType TEXT,
    ApiEndpoint TEXT,
    AuthMethod TEXT,
    ClientId TEXT,
    ClientSecret TEXT,
    Scopes TEXT,
    RedirectUri TEXT,
    ConsentStatus TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    IsActive INTEGER,
    LastSyncAt DATETIME,
    SyncFrequencyMinutes INTEGER,
    DataCategories TEXT,
    DataRetentionDays INTEGER,
    SupportContact TEXT,
    SLAHours INTEGER,
    DocumentationUrl TEXT
);
INSERT INTO third_party_applications VALUES (1,'SlackConnector','Slack','Webhook','https://hooks.slack.com/services','None','SLK-001','secret123','chat:write','https://app.example.com/redirect','Granted','2023-01-05 08:00:00','2023-04-01 09:30:00',1,'2023-04-01 09:31:00',5,'Messages,Channels',30,'support@slack.com',24,'https://api.slack.com/docs');
INSERT INTO third_party_applications VALUES (2,'GitHubSync','GitHub','OAuth','https://api.github.com','OAuth','GHB-002','secret456','repo,admin','https://app.example.com/gh_redirect','Pending','2023-02-10 10:15:00','2023-04-01 10:00:00',0,NULL,NULL,'Repositories,Commits',90,'support@github.com',12,'https://docs.github.com');
INSERT INTO third_party_applications VALUES (3,'SalesforceCRM','Salesforce','REST','https://instance.salesforce.com/services/data','OAuth','SFC-003','secret789','api,refresh_token','https://app.example.com/sf_redirect','Revoked','2023-03-20 12:30:00','2023-04-01 11:45:00',1,'2023-04-01 11:46:00',15,'Leads,Opportunities',180,'support@salesforce.com',8,'https://developer.salesforce.com/docs');