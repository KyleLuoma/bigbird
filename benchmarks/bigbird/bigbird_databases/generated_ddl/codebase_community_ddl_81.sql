-- User activity logging table (tracks detailed user actions)
CREATE TABLE user_activity_log
(
    LogId               INTEGER PRIMARY KEY,
    UserId              INTEGER,
    ActivityType        TEXT,
    ActivityTimestamp   DATETIME,
    SessionId           TEXT,
    DeviceId            TEXT,
    IPAddress           TEXT,
    Browser             TEXT,
    OS                  TEXT,
    ReferrerUrl         TEXT,
    PageUrl             TEXT,
    ActionDetail        TEXT,
    SuccessFlag         INTEGER,
    ErrorCode           INTEGER,
    DurationMs          INTEGER,
    GeoCountry          TEXT,
    GeoRegion           TEXT,
    GeoCity             TEXT,
    IsMobile            INTEGER,
    IsBot               INTEGER
);

INSERT INTO user_activity_log (LogId,UserId,ActivityType,ActivityTimestamp,SessionId,DeviceId,IPAddress,Browser,OS,ReferrerUrl,PageUrl,ActionDetail,SuccessFlag,ErrorCode,DurationMs,GeoCountry,GeoRegion,GeoCity,IsMobile,IsBot) VALUES (1,101,'login','2025-12-01 08:15:00',NULL,NULL,'192.168.1.10','Chrome','Windows',NULL,NULL,NULL,1,NULL,200,NULL,NULL,NULL,1,0);
INSERT INTO user_activity_log (LogId,UserId,ActivityType,ActivityTimestamp,SessionId,DeviceId,IPAddress,Browser,OS,ReferrerUrl,PageUrl,ActionDetail,SuccessFlag,ErrorCode,DurationMs,GeoCountry,GeoRegion,GeoCity,IsMobile,IsBot) VALUES (2,102,'view_post','2025-12-01 08:20:45',NULL,NULL,'192.168.1.11','Firefox','Linux',NULL,'/posts/55',NULL,1,NULL,150,NULL,NULL,NULL,0,0);
INSERT INTO user_activity_log (LogId,UserId,ActivityType,ActivityTimestamp,SessionId,DeviceId,IPAddress,Browser,OS,ReferrerUrl,PageUrl,ActionDetail,SuccessFlag,ErrorCode,DurationMs,GeoCountry,GeoRegion,GeoCity,IsMobile,IsBot) VALUES (3,103,'vote','2025-12-01 08:25:30',NULL,NULL,'192.168.1.12','Safari','macOS',NULL,'/posts/55',NULL,1,NULL,100,NULL,NULL,NULL,0,0);


-- Content translation job tracking
CREATE TABLE content_translation_jobs
(
    JobId               INTEGER PRIMARY KEY,
    PostId              INTEGER,
    SourceLang          TEXT,
    TargetLang          TEXT,
    RequestedByUserId   INTEGER,
    RequestedAt         DATETIME,
    CompletedAt         DATETIME,
    Status              TEXT,
    WordCount           INTEGER,
    TranslatorId        INTEGER,
    TranslationEngine   TEXT,
    QualityScore        REAL,
    ReviewUserId        INTEGER,
    ReviewDate          DATETIME,
    Comments            TEXT,
    IsAutoTranslated    INTEGER,
    CostCents           INTEGER,
    Currency            TEXT,
    PriorityLevel       INTEGER,
    BatchId             INTEGER,
    FailureReason       TEXT
);

INSERT INTO content_translation_jobs (JobId,PostId,SourceLang,TargetLang,RequestedByUserId,RequestedAt,CompletedAt,Status,WordCount,TranslatorId,TranslationEngine,QualityScore,ReviewUserId,ReviewDate,Comments,IsAutoTranslated,CostCents,Currency,PriorityLevel,BatchId,FailureReason) VALUES (1,55,'en','es',101,'2025-12-01 09:00:00','2025-12-01 09:05:00','completed',250,NULL,'engine_a',0.95,NULL,NULL,NULL,0,500,'USD',1,10,NULL);
INSERT INTO content_translation_jobs (JobId,PostId,SourceLang,TargetLang,RequestedByUserId,RequestedAt,CompletedAt,Status,WordCount,TranslatorId,TranslationEngine,QualityScore,ReviewUserId,ReviewDate,Comments,IsAutoTranslated,CostCents,Currency,PriorityLevel,BatchId,FailureReason) VALUES (2,56,'en','fr',102,'2025-12-01 09:10:00',NULL,'pending',300,NULL,'engine_b',NULL,NULL,NULL,NULL,1,600,'USD',2,11,NULL);
INSERT INTO content_translation_jobs (JobId,PostId,SourceLang,TargetLang,RequestedByUserId,RequestedAt,CompletedAt,Status,WordCount,TranslatorId,TranslationEngine,QualityScore,ReviewUserId,ReviewDate,Comments,IsAutoTranslated,CostCents,Currency,PriorityLevel,BatchId,FailureReason) VALUES (3,57,'en','de',103,'2025-12-01 09:20:00','2025-12-01 09:25:00','failed',200,NULL,'engine_c',0.60,NULL,NULL,'timeout',0,400,'USD',3,12,'timeout');


-- Advertising campaign budget history
CREATE TABLE ad_campaign_budget_history
(
    BudgetId                INTEGER PRIMARY KEY,
    CampaignId              INTEGER,
    Date                    DATE,
    DailyBudgetCents        INTEGER,
    MonthlyBudgetCents      INTEGER,
    RemainingCents          INTEGER,
    SpendCents              INTEGER,
    Currency                TEXT,
    BudgetSource            TEXT,
    AdjustedByUserId       INTEGER,
    AdjustedAt              DATETIME,
    Reason                  TEXT,
    IsActive                INTEGER,
    ForecastedSpendCents    INTEGER,
    AllocationPercent       REAL,
    Region                  TEXT,
    DeviceType              TEXT,
    Platform                TEXT,
    CreatedAt               DATETIME,
    UpdatedAt               DATETIME,
    Notes                   TEXT
);

INSERT INTO ad_campaign_budget_history (BudgetId,CampaignId,Date,DailyBudgetCents,MonthlyBudgetCents,RemainingCents,SpendCents,Currency,BudgetSource,AdjustedByUserId,AdjustedAt,Reason,IsActive,ForecastedSpendCents,AllocationPercent,Region,DeviceType,Platform,CreatedAt,UpdatedAt,Notes) VALUES (1,2001,'2025-12-01',5000,150000,145000,5000,'USD','manual',101,'2025-12-01 07:00:00','initial allocation',1,120000,0.8,'NA','mobile','web','2025-11-30 12:00:00','2025-12-01 07:00:00',NULL);
INSERT INTO ad_campaign_budget_history (BudgetId,CampaignId,Date,DailyBudgetCents,MonthlyBudgetCents,RemainingCents,SpendCents,Currency,BudgetSource,AdjustedByUserId,AdjustedAt,Reason,IsActive,ForecastedSpendCents,AllocationPercent,Region,DeviceType,Platform,CreatedAt,UpdatedAt,Notes) VALUES (2,2002,'2025-12-01',7000,210000,203000,7000,'USD','automated',102,'2025-12-01 08:00:00','performance boost',1,180000,0.85,'EU','desktop','app','2025-11-30 13:00:00','2025-12-01 08:00:00',NULL);
INSERT INTO ad_campaign_budget_history (BudgetId,CampaignId,Date,DailyBudgetCents,MonthlyBudgetCents,RemainingCents,SpendCents,Currency,BudgetSource,AdjustedByUserId,AdjustedAt,Reason,IsActive,ForecastedSpendCents,AllocationPercent,Region,DeviceType,Platform,CreatedAt,UpdatedAt,Notes) VALUES (3,2003,'2025-12-01',3000,90000,87000,3000,'USD','manual',103,'2025-12-01 09:00:00','budget cut',1,80000,0.75,'APAC','tablet','web','2025-11-30 14:00:00','2025-12-01 09:00:00',NULL);


-- External API provider metrics
CREATE TABLE external_api_provider_metrics
(
    MetricId                INTEGER PRIMARY KEY,
    ProviderName            TEXT,
    Endpoint                TEXT,
    RequestCount            INTEGER,
    SuccessCount            INTEGER,
    FailureCount            INTEGER,
    AvgLatencyMs            REAL,
    DataTransferredBytes    INTEGER,
    ErrorRatePercent        REAL,
    LastUpdated             DATETIME,
    ApiKeyId                INTEGER,
    RateLimit               INTEGER,
    QuotaUsed               INTEGER,
    QuotaLimit              INTEGER,
    Region                  TEXT,
    AuthenticationMethod    TEXT,
    ServiceLevel            TEXT,
    Version                 TEXT,
    CreatedAt               DATETIME,
    UpdatedAt               DATETIME,
    Comments                TEXT
);

INSERT INTO external_api_provider_metrics (MetricId,ProviderName,Endpoint,RequestCount,SuccessCount,FailureCount,AvgLatencyMs,DataTransferredBytes,ErrorRatePercent,LastUpdated,ApiKeyId,RateLimit,QuotaUsed,QuotaLimit,Region,AuthenticationMethod,ServiceLevel,Version,CreatedAt,UpdatedAt,Comments) VALUES (1,'ProviderA','/v1/data',10000,9850,150,120.5,2048000,1.5,'2025-12-01 10:00:00',201,5000,4500,5000,'NA','OAuth','premium','1.0','2025-11-01 00:00:00','2025-12-01 10:00:00',NULL);
INSERT INTO external_api_provider_metrics (MetricId,ProviderName,Endpoint,RequestCount,SuccessCount,FailureCount,AvgLatencyMs,DataTransferredBytes,ErrorRatePercent,LastUpdated,ApiKeyId,RateLimit,QuotaUsed,QuotaLimit,Region,AuthenticationMethod,ServiceLevel,Version,CreatedAt,UpdatedAt,Comments) VALUES (2,'ProviderB','/v2/lookup',8000,7900,100,95.2,1500000,1.25,'2025-12-01 11:00:00',202,4000,3500,4000,'EU','APIKey','standard','2.1','2025-11-05 00:00:00','2025-12-01 11:00:00',NULL);
INSERT INTO external_api_provider_metrics (MetricId,ProviderName,Endpoint,RequestCount,SuccessCount,FailureCount,AvgLatencyMs,DataTransferredBytes,ErrorRatePercent,LastUpdated,ApiKeyId,RateLimit,QuotaUsed,QuotaLimit,Region,AuthenticationMethod,ServiceLevel,Version,CreatedAt,UpdatedAt,Comments) VALUES (3,'ProviderC','/metrics',12000,11800,200,130.0,2500000,1.67,'2025-12-01 12:00:00',203,6000,5800,6000,'APAC','Bearer','enterprise','3.3','2025-11-10 00:00:00','2025-12-01 12:00:00',NULL);


-- Knowledge graph node properties
CREATE TABLE knowledge_graph_node_properties
(
    PropertyId          INTEGER PRIMARY KEY,
    NodeId              INTEGER,
    PropertyName        TEXT,
    PropertyValue       TEXT,
    DataType            TEXT,
    CreatedByUserId     INTEGER,
    CreatedAt           DATETIME,
    UpdatedByUserId     INTEGER,
    UpdatedAt           DATETIME,
    IsActive            INTEGER,
    ConfidenceScore     REAL,
    SourceSystem        TEXT,
    SourceReference     TEXT,
    ValidFrom           DATETIME,
    ValidTo             DATETIME,
    IsDeprecated        INTEGER,
    DeprecationReason   TEXT,
    Version             TEXT,
    Tags                TEXT,
    Description         TEXT,
    LastVerifiedAt      DATETIME
);

INSERT INTO knowledge_graph_node_properties (PropertyId,NodeId,PropertyName,PropertyValue,DataType,CreatedByUserId,CreatedAt,UpdatedByUserId,UpdatedAt,IsActive,ConfidenceScore,SourceSystem,SourceReference,ValidFrom,ValidTo,IsDeprecated,DeprecationReason,Version,Tags,Description,LastVerifiedAt) VALUES (1,1001,'label','Person','string',101,'2025-01-01 00:00:00',101,'2025-06-01 00:00:00',1,0.99,'system_a','ref_001','2025-01-01 00:00:00',NULL,0,NULL,'v1','core,entity',NULL,'2025-06-01 00:00:00');
INSERT INTO knowledge_graph_node_properties (PropertyId,NodeId,PropertyName,PropertyValue,DataType,CreatedByUserId,CreatedAt,UpdatedByUserId,UpdatedAt,IsActive,ConfidenceScore,SourceSystem,SourceReference,ValidFrom,ValidTo,IsDeprecated,DeprecationReason,Version,Tags,Description,LastVerifiedAt) VALUES (2,1002,'birthDate','1990-05-20','date',102,'2025-02-01 00:00:00',102,'2025-07-01 00:00:00',1,0.95,'system_b','ref_002','2025-02-01 00:00:00',NULL,0,NULL,'v1','personal',NULL,'2025-07-01 00:00:00');
INSERT INTO knowledge_graph_node_properties (PropertyId,NodeId,PropertyName,PropertyValue,DataType,CreatedByUserId,CreatedAt,UpdatedByUserId,UpdatedAt,IsActive,ConfidenceScore,SourceSystem,SourceReference,ValidFrom,ValidTo,IsDeprecated,DeprecationReason,Version,Tags,Description,LastVerifiedAt) VALUES (3,1003,'status','inactive','string',103,'2025-03-01 00:00:00',103,'2025-08-01 00:00:00',0,0.80,'system_c','ref_003','2025-03-01 00:00:00','2025-12-31 23:59:59',1,'merged','v2','legacy',NULL,'2025-08-01 00:00:00');


-- Product license usage tracking
CREATE TABLE product_license_usage
(
    LicenseUsageId          INTEGER PRIMARY KEY,
    LicenseId               INTEGER,
    OrganizationId          INTEGER,
    UserId                  INTEGER,
    DeviceId                TEXT,
    ActivationDate          DATETIME,
    ExpirationDate          DATETIME,
    IsActive                INTEGER,
    UsageCount              INTEGER,
    LastUsedAt              DATETIME,
    LicenseKey              TEXT,
    LicenseType             TEXT,
    MaxActivations          INTEGER,
    CurrentActivations      INTEGER,
    FeatureSet              TEXT,
    LicenseStatus           TEXT,
    RenewalDate             DATETIME,
    RenewalAttemptCount     INTEGER,
    RenewalStatus           TEXT,
    CreatedAt               DATETIME,
    UpdatedAt               DATETIME
);

INSERT INTO product_license_usage (LicenseUsageId,LicenseId,OrganizationId,UserId,DeviceId,ActivationDate,ExpirationDate,IsActive,UsageCount,LastUsedAt,LicenseKey,LicenseType,MaxActivations,CurrentActivations,FeatureSet,LicenseStatus,RenewalDate,RenewalAttemptCount,RenewalStatus,CreatedAt,UpdatedAt) VALUES (1,5001,3001,101,NULL,'2025-01-15 00:00:00','2026-01-15 00:00:00',1,120,'2025-11-20 12:00:00','LK-ABC-123','enterprise',5,3,'full','active','2025-12-15 00:00:00',0,'pending','2025-01-10 09:00:00','2025-11-20 12:10:00');
INSERT INTO product_license_usage (LicenseUsageId,LicenseId,OrganizationId,UserId,DeviceId,ActivationDate,ExpirationDate,IsActive,UsageCount,LastUsedAt,LicenseKey,LicenseType,MaxActivations,CurrentActivations,FeatureSet,LicenseStatus,RenewalDate,RenewalAttemptCount,RenewalStatus,CreatedAt,UpdatedAt) VALUES (2,5002,3002,102,NULL,'2025-02-01 00:00:00','2025-08-01 00:00:00',0,45,'2025-07-30 15:30:00','LK-DEF-456','standard',3,2,'basic','expired','2025-07-31 00:00:00',1,'failed','2025-02-01 10:00:00','2025-07-30 15:35:00');
INSERT INTO product_license_usage (LicenseUsageId,LicenseId,OrganizationId,UserId,DeviceId,ActivationDate,ExpirationDate,IsActive,UsageCount,LastUsedAt,LicenseKey,LicenseType,MaxActivations,CurrentActivations,FeatureSet,LicenseStatus,RenewalDate,RenewalAttemptCount,RenewalStatus,CreatedAt,UpdatedAt) VALUES (3,5003,3003,103,NULL,'2025-03-10 00:00:00','2025-09-10 00:00:00',1,200,'2025-08-15 09:45:00','LK-GHI-789','enterprise',10,8,'premium','active','2025-09-09 00:00:00',0,'pending','2025-03-05 08:00:00','2025-08-15 09:50:00');


-- Forum thread analytics
CREATE TABLE forum_thread_analytics
(
    AnalyticsId                 INTEGER PRIMARY KEY,
    ThreadId                    INTEGER,
    Date                        DATE,
    ViewCount                   INTEGER,
    UniqueVisitorCount          INTEGER,
    ReplyCount                  INTEGER,
    LikeCount                   INTEGER,
    DislikeCount                INTEGER,
    ShareCount                  INTEGER,
    AvgResponseTimeSec          REAL,
    PeakHour                    INTEGER,
    ActiveUserCount             INTEGER,
    NewUserCount                INTEGER,
    SpamFlagCount               INTEGER,
    ModerationActionCount       INTEGER,
    SentimentScore              REAL,
    Category                    TEXT,
    Subcategory                 TEXT,
    Language                    TEXT,
    IsClosed                    INTEGER,
    CreatedAt                   DATETIME,
    UpdatedAt                   DATETIME
);

INSERT INTO forum_thread_analytics (AnalyticsId,ThreadId,Date,ViewCount,UniqueVisitorCount,ReplyCount,LikeCount,DislikeCount,ShareCount,AvgResponseTimeSec,PeakHour,ActiveUserCount,NewUserCount,SpamFlagCount,ModerationActionCount,SentimentScore,Category,Subcategory,Language,IsClosed,CreatedAt,UpdatedAt) VALUES (1,4001,'2025-12-01',1500,1200,45,300,10,25,12.5,20,80,5,2,1,0.75,'technology','programming','en',0,'2025-11-01 00:00:00','2025-12-01 10:00:00');
INSERT INTO forum_thread_analytics (AnalyticsId,ThreadId,Date,ViewCount,UniqueVisitorCount,ReplyCount,LikeCount,DislikeCount,ShareCount,AvgResponseTimeSec,PeakHour,ActiveUserCount,NewUserCount,SpamFlagCount,ModerationActionCount,SentimentScore,Category,Subcategory,Language,IsClosed,CreatedAt,UpdatedAt) VALUES (2,4002,'2025-12-01',800,650,20,120,5,10,8.0,14,40,2,0,0,0.60,'science','biology','en',0,'2025-11-15 00:00:00','2025-12-01 10:05:00');
INSERT INTO forum_thread_analytics (AnalyticsId,ThreadId,Date,ViewCount,UniqueVisitorCount,ReplyCount,LikeCount,DislikeCount,ShareCount,AvgResponseTimeSec,PeakHour,ActiveUserCount,NewUserCount,SpamFlagCount,ModerationActionCount,SentimentScore,Category,Subcategory,Language,IsClosed,CreatedAt,UpdatedAt) VALUES (3,4003,'2025-12-01',3000,2500,120,800,20,150,15.2,22,150,10,5,3,0.85,'gaming','esports','en',1,'2025-10-20 00:00:00','2025-12-01 10:10:00');


-- Supplier contract detail
CREATE TABLE supplier_contract_detail
(
    ContractDetailId          INTEGER PRIMARY KEY,
    ContractId                INTEGER,
    SupplierId                INTEGER,
    EffectiveDate             DATE,
    ExpirationDate            DATE,
    ContractValueCents        INTEGER,
    Currency                  TEXT,
    PaymentTerms              TEXT,
    DeliverySchedule          TEXT,
    ServiceLevelAgreement     TEXT,
    PenaltyClause             TEXT,
    RenewalOption             TEXT,
    ConfidentialityLevel      TEXT,
    GoverningLaw              TEXT,
    SignedByUserId            INTEGER,
    SignedAt                  DATETIME,
    Status                    TEXT,
    AmendmentsCount           INTEGER,
    LastAmendmentDate         DATETIME,
    CreatedAt                 DATETIME,
    UpdatedAt                 DATETIME,
    Notes                     TEXT
);

INSERT INTO supplier_contract_detail (ContractDetailId,ContractId,SupplierId,EffectiveDate,ExpirationDate,ContractValueCents,Currency,PaymentTerms,DeliverySchedule,ServiceLevelAgreement,PenaltyClause,RenewalOption,ConfidentialityLevel,GoverningLaw,SignedByUserId,SignedAt,Status,AmendmentsCount,LastAmendmentDate,CreatedAt,UpdatedAt,Notes) VALUES (1,9001,6001,'2025-01-01','2026-01-01',5000000,'USD','net30','monthly','99.9% uptime','late delivery penalty','auto','high','NY','101','2024-12-15 09:00:00','active',2,'2025-06-15 10:00:00','2025-01-01 08:00:00','2025-06-15 10:05:00',NULL);
INSERT INTO supplier_contract_detail (ContractDetailId,ContractId,SupplierId,EffectiveDate,ExpirationDate,ContractValueCents,Currency,PaymentTerms,DeliverySchedule,ServiceLevelAgreement,PenaltyClause,RenewalOption,ConfidentialityLevel,GoverningLaw,SignedByUserId,SignedAt,Status,AmendmentsCount,LastAmendmentDate,CreatedAt,UpdatedAt,Notes) VALUES (2,9002,6002,'2025-02-01','2025-12-31',2000000,'EUR','net45','quarterly','99.5% uptime','quality breach penalty','manual','medium','DE','102','2025-01-20 14:30:00','pending',0,NULL,'2025-02-01 09:00:00','2025-02-01 09:05:00',NULL);
INSERT INTO supplier_contract_detail (ContractDetailId,ContractId,SupplierId,EffectiveDate,ExpirationDate,ContractValueCents,Currency,PaymentTerms,DeliverySchedule,ServiceLevelAgreement,PenaltyClause,RenewalOption,ConfidentialityLevel,GoverningLaw,SignedByUserId,SignedAt,Status,AmendmentsCount,LastAmendmentDate,CreatedAt,UpdatedAt,Notes) VALUES (3,9003,6003,'2025-03-15','2027-03-14',7500000,'GBP','net60','bi-monthly','99.7% uptime','early termination fee','auto','high','UK','103','2025-03-01 11:15:00','active',1,'2025-09-01 12:00:00','2025-03-15 08:30:00','2025-09-01 12:05:00',NULL);


-- Climate observations
CREATE TABLE climate_observations
(
    ObservationId         INTEGER PRIMARY KEY,
    StationId             INTEGER,
    ObservationTimestamp  DATETIME,
    TemperatureC          REAL,
    HumidityPercent       REAL,
    WindSpeedKph          REAL,
    WindDirectionDeg      INTEGER,
    PrecipitationMm       REAL,
    PressureHpa           REAL,
    SolarRadiationWm2     REAL,
    AirQualityIndex       INTEGER,
    CO2ppm                REAL,
    NO2ppb                REAL,
    O3ppb                 REAL,
    SO2ppb                REAL,
    PM25ugm3              REAL,
    PM10ugm3              REAL,
    WeatherCondition      TEXT,
    Latitude              REAL,
    Longitude             REAL,
    CreatedAt             DATETIME
);

INSERT INTO climate_observations (ObservationId,StationId,ObservationTimestamp,TemperatureC,HumidityPercent,WindSpeedKph,WindDirectionDeg,PrecipitationMm,PressureHpa,SolarRadiationWm2,AirQualityIndex,CO2ppm,NO2ppb,O3ppb,SO2ppb,PM25ugm3,PM10ugm3,WeatherCondition,Latitude,Longitude,CreatedAt) VALUES (1,101,'2025-12-01 00:00:00',12.5,78.0,15.2,180,0.0,1013.2,250.0,42,415.0,12.5,30.0,5.0,12.0,20.0,'Clear',45.4215,-75.6972,'2025-12-01 00:05:00');
INSERT INTO climate_observations (ObservationId,StationId,ObservationTimestamp,TemperatureC,HumidityPercent,WindSpeedKph,WindDirectionDeg,PrecipitationMm,PressureHpa,SolarRadiationWm2,AirQualityIndex,CO2ppm,NO2ppb,O3ppb,SO2ppb,PM25ugm3,PM10ugm3,WeatherCondition,Latitude,Longitude,CreatedAt) VALUES (2,102,'2025-12-01 01:00:00',11.0,80.5,10.0,200,0.2,1012.8,200.0,55,418.0,14.0,28.0,4.5,15.0,25.0,'Cloudy',40.7128,-74.0060,'2025-12-01 01:05:00');
INSERT INTO climate_observations (ObservationId,StationId,ObservationTimestamp,TemperatureC,HumidityPercent,WindSpeedKph,WindDirectionDeg,PrecipitationMm,PressureHpa,SolarRadiationWm2,AirQualityIndex,CO2ppm,NO2ppb,O3ppb,SO2ppb,PM25ugm3,PM10ugm3,WeatherCondition,Latitude,Longitude,CreatedAt) VALUES (3,103,'2025-12-01 02:00:00',9.8,85.0,8.5,220,0.5,1011.5,150.0,70,420.0,16.0,25.0,6.0,18.0,30.0,'Rain',34.0522,-118.2437,'2025-12-01 02:05:00');


-- Learning path prerequisite links
CREATE TABLE learning_path_prerequisite_links
(
    LinkId                     INTEGER PRIMARY KEY,
    LearningPathId             INTEGER,
    PrerequisitePathId         INTEGER,
    IsMandatory                INTEGER,
    CreatedByUserId            INTEGER,
    CreatedAt                  DATETIME,
    UpdatedByUserId            INTEGER,
    UpdatedAt                  DATETIME,
    Reason                     TEXT,
    DependencyType             TEXT,
    MinimumScoreRequired       REAL,
    MinimumCompletionPercentage REAL,
    ActiveFrom                 DATE,
    ActiveTo                   DATE,
    IsActive                   INTEGER,
    Notes                      TEXT,
    ApprovalStatus             TEXT,
    ApprovedByUserId           INTEGER,
    ApprovedAt                 DATETIME,
    Version                    TEXT
);

INSERT INTO learning_path_prerequisite_links (LinkId,LearningPathId,PrerequisitePathId,IsMandatory,CreatedByUserId,CreatedAt,UpdatedByUserId,UpdatedAt,Reason,DependencyType,MinimumScoreRequired,MinimumCompletionPercentage,ActiveFrom,ActiveTo,IsActive,Notes,ApprovalStatus,ApprovedByUserId,ApprovedAt,Version) VALUES (1,301,300,1,101,'2025-01-01 08:00:00',101,'2025-01-01 08:00:00','core prerequisite','hard',80.0,90.0,'2025-01-01','2025-12-31',1,NULL,'approved',102,'2025-01-02 09:00:00','v1');
INSERT INTO learning_path_prerequisite_links (LinkId,LearningPathId,PrerequisitePathId,IsMandatory,CreatedByUserId,CreatedAt,UpdatedByUserId,UpdatedAt,Reason,DependencyType,MinimumScoreRequired,MinimumCompletionPercentage,ActiveFrom,ActiveTo,IsActive,Notes,ApprovalStatus,ApprovedByUserId,ApprovedAt,Version) VALUES (2,302,301,0,102,'2025-02-01 09:00:00',102,'2025-02-01 09:00:00','optional supplement','soft',70.0,80.0,'2025-02-01','2025-11-30',1,NULL,'pending',NULL,NULL,NULL);
INSERT INTO learning_path_prerequisite_links (LinkId,LearningPathId,PrerequisitePathId,IsMandatory,CreatedByUserId,CreatedAt,UpdatedByUserId,UpdatedAt,Reason,DependencyType,MinimumScoreRequired,MinimumCompletionPercentage,ActiveFrom,ActiveTo,IsActive,Notes,ApprovalStatus,ApprovedByUserId,ApprovedAt,Version) VALUES (3,303,302,1,103,'2025-03-01 10:00:00',103,'2025-03-01 10:00:00','mandatory for certification','hard',85.0,95.0,'2025-03-01','2025-12-31',1,'Requires prior badge','approved',104,'2025-03-02 11:00:00','v2');