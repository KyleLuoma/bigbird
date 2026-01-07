-- Learning path modules details
CREATE TABLE learning_path_modules
(
    Id INTEGER NOT NULL PRIMARY KEY,
    PathId INTEGER,
    ModuleCode TEXT,
    ModuleTitle TEXT,
    Description TEXT,
    DurationMinutes INTEGER,
    OrderInPath INTEGER,
    IsMandatory INTEGER,
    ReleaseDate DATETIME,
    LastUpdated DATETIME,
    AuthorUserId INTEGER,
    VideoUrl TEXT,
    SlideDeckUrl TEXT,
    QuizCount INTEGER,
    AssignmentCount INTEGER,
    PrerequisiteModuleId INTEGER,
    EstimatedEffortPoints INTEGER,
    Language TEXT,
    Region TEXT,
    AccessLevel TEXT,
    MaxAttempts INTEGER,
    CertificationEarned INTEGER
);

INSERT INTO learning_path_modules (Id,PathId,ModuleCode,ModuleTitle,Description,DurationMinutes,OrderInPath,IsMandatory,ReleaseDate,LastUpdated,AuthorUserId,VideoUrl,SlideDeckUrl,QuizCount,AssignmentCount,PrerequisiteModuleId,EstimatedEffortPoints,Language,Region,AccessLevel,MaxAttempts,CertificationEarned) VALUES (1,10,'LP101','Intro to SQL','Basic SQL concepts',60,1,1,'2022-01-01 00:00:00','2022-01-10 00:00:00',5,'http://example.com/video1','http://example.com/slide1',5,1,NULL,10,'en','US','public',3,0);
INSERT INTO learning_path_modules (Id,PathId,ModuleCode,ModuleTitle,Description,DurationMinutes,OrderInPath,IsMandatory,ReleaseDate,LastUpdated,AuthorUserId,VideoUrl,SlideDeckUrl,QuizCount,AssignmentCount,PrerequisiteModuleId,EstimatedEffortPoints,Language,Region,AccessLevel,MaxAttempts,CertificationEarned) VALUES (2,10,'LP102','Advanced SQL','Complex queries and performance',90,2,1,'2022-02-01 00:00:00','2022-02-15 00:00:00',6,'http://example.com/video2','http://example.com/slide2',7,2,1,15,'en','US','public',2,1);
INSERT INTO learning_path_modules (Id,PathId,ModuleCode,ModuleTitle,Description,DurationMinutes,OrderInPath,IsMandatory,ReleaseDate,LastUpdated,AuthorUserId,VideoUrl,SlideDeckUrl,QuizCount,AssignmentCount,PrerequisiteModuleId,EstimatedEffortPoints,Language,Region,AccessLevel,MaxAttempts,CertificationEarned) VALUES (3,11,'LP201','Data Modeling','Design relational schemas',75,1,0,'2022-03-01 00:00:00','2022-03-10 00:00:00',7,'http://example.com/video3','http://example.com/slide3',6,1,NULL,12,'en','EU','private',4,0);


-- External API provider metrics
CREATE TABLE external_api_provider_metrics
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ProviderName TEXT,
    Endpoint TEXT,
    RequestCount INTEGER,
    SuccessCount INTEGER,
    ErrorCount INTEGER,
    AvgLatencyMs INTEGER,
    MaxLatencyMs INTEGER,
    MinLatencyMs INTEGER,
    DataTransferredMB INTEGER,
    FirstSeen DATETIME,
    LastSeen DATETIME,
    AuthMethod TEXT,
    RateLimitPerMinute INTEGER,
    IsActive INTEGER,
    Region TEXT,
    Version TEXT,
    SupportContact TEXT,
    SLACompliancePct INTEGER,
    ErrorRatePct INTEGER,
    DailyQuota INTEGER
);

INSERT INTO external_api_provider_metrics (Id,ProviderName,Endpoint,RequestCount,SuccessCount,ErrorCount,AvgLatencyMs,MaxLatencyMs,MinLatencyMs,DataTransferredMB,FirstSeen,LastSeen,AuthMethod,RateLimitPerMinute,IsActive,Region,Version,SupportContact,SLACompliancePct,ErrorRatePct,DailyQuota) VALUES (1,'MapService','/v1/maps',12000,11800,200,150,300,80,500,'2022-01-01 00:00:00','2022-12-31 23:59:59','OAuth',5000,1,'US','1.4','support@mapservice.com',99,2,100000);
INSERT INTO external_api_provider_metrics (Id,ProviderName,Endpoint,RequestCount,SuccessCount,ErrorCount,AvgLatencyMs,MaxLatencyMs,MinLatencyMs,DataTransferredMB,FirstSeen,LastSeen,AuthMethod,RateLimitPerMinute,IsActive,Region,Version,SupportContact,SLACompliancePct,ErrorRatePct,DailyQuota) VALUES (2,'WeatherAPI','/v2/forecast',8500,8450,50,220,450,110,300,'2022-02-01 00:00:00','2022-12-31 23:59:59','APIKey',3000,1,'EU','2.0','support@weatherapi.com',98,1,80000);
INSERT INTO external_api_provider_metrics (Id,ProviderName,Endpoint,RequestCount,SuccessCount,ErrorCount,AvgLatencyMs,MaxLatencyMs,MinLatencyMs,DataTransferredMB,FirstSeen,LastSeen,AuthMethod,RateLimitPerMinute,IsActive,Region,Version,SupportContact,SLACompliancePct,ErrorRatePct,DailyQuota) VALUES (3,'PaymentGateway','/v1/payments',15000,14900,100,180,350,90,750,'2022-03-01 00:00:00','2022-12-31 23:59:59','Token',10000,1,'ASIA','3.2','support@paygate.com',99,0,120000);


-- Geographic traffic statistics detail
CREATE TABLE geo_traffic_stats_detail
(
    Id INTEGER NOT NULL PRIMARY KEY,
    CountryCode TEXT,
    RegionCode TEXT,
    City TEXT,
    Latitude REAL,
    Longitude REAL,
    VisitCount INTEGER,
    UniqueVisitors INTEGER,
    BounceRatePct INTEGER,
    AvgSessionDurationSec INTEGER,
    PageViews INTEGER,
    Downloads INTEGER,
    Conversions INTEGER,
    Revenue FLOAT,
    TrafficSource TEXT,
    DeviceType TEXT,
    Browser TEXT,
    OS TEXT,
    Date DATE,
    IsPeakHour INTEGER,
    CampaignId INTEGER
);

INSERT INTO geo_traffic_stats_detail (Id,CountryCode,RegionCode,City,Latitude,Longitude,VisitCount,UniqueVisitors,BounceRatePct,AvgSessionDurationSec,PageViews,Downloads,Conversions,Revenue,TrafficSource,DeviceType,Browser,OS,Date,IsPeakHour,CampaignId) VALUES (1,'US','CA','San Francisco',37.7749,-122.4194,5000,3500,45,180,12000,300,45,1250.75,'Organic','Desktop','Chrome','Windows','2022-09-15',1,101);
INSERT INTO geo_traffic_stats_detail (Id,CountryCode,RegionCode,City,Latitude,Longitude,VisitCount,UniqueVisitors,BounceRatePct,AvgSessionDurationSec,PageViews,Downloads,Conversions,Revenue,TrafficSource,DeviceType,Browser,OS,Date,IsPeakHour,CampaignId) VALUES (2,'GB','ENG','London',51.5074,-0.1278,3200,2100,38,200,8000,150,30,980.50,'Paid','Mobile','Safari','iOS','2022-09-15',0,102);
INSERT INTO geo_traffic_stats_detail (Id,CountryCode,RegionCode,City,Latitude,Longitude,VisitCount,UniqueVisitors,BounceRatePct,AvgSessionDurationSec,PageViews,Downloads,Conversions,Revenue,TrafficSource,DeviceType,Browser,OS,Date,IsPeakHour,CampaignId) VALUES (3,'DE','BE','Berlin',52.5200,13.4050,4100,2800,42,190,9500,220,38,1120.30,'Referral','Tablet','Firefox','Android','2022-09-15',1,103);


-- Product license usage summary
CREATE TABLE product_license_usage_summary
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ProductId INTEGER,
    LicenseKey TEXT,
    LicenseType TEXT,
    IssuedDate DATETIME,
    ExpiryDate DATETIME,
    IsActive INTEGER,
    AssignedUserId INTEGER,
    AssignedTeam TEXT,
    SeatCount INTEGER,
    UsedSeats INTEGER,
    RemainingSeats INTEGER,
    OverageAllowed INTEGER,
    OverageUsed INTEGER,
    PurchaseOrderId INTEGER,
    Cost DECIMAL,
    SupportLevel TEXT,
    RenewalReminderSent INTEGER,
    LastValidationDate DATETIME,
    ValidationStatus TEXT,
    ComplianceNotes TEXT,
    CreatedByUserId INTEGER
);

INSERT INTO product_license_usage_summary (Id,ProductId,LicenseKey,LicenseType,IssuedDate,ExpiryDate,IsActive,AssignedUserId,AssignedTeam,SeatCount,UsedSeats,RemainingSeats,OverageAllowed,OverageUsed,PurchaseOrderId,Cost,SupportLevel,RenewalReminderSent,LastValidationDate,ValidationStatus,ComplianceNotes,CreatedByUserId) VALUES (1,200,'ABC123-XYZ','Enterprise','2021-06-01 00:00:00','2023-06-01 00:00:00',1,15,'Engineering',100,78,22,10,0,5001,15000.00,'Premium',0,'2022-12-01 00:00:00','Valid','All good',10);
INSERT INTO product_license_usage_summary (Id,ProductId,LicenseKey,LicenseType,IssuedDate,ExpiryDate,IsActive,AssignedUserId,AssignedTeam,SeatCount,UsedSeats,RemainingSeats,OverageAllowed,OverageUsed,PurchaseOrderId,Cost,SupportLevel,RenewalReminderSent,LastValidationDate,ValidationStatus,ComplianceNotes,CreatedByUserId) VALUES (2,201,'DEF456-UVW','Professional','2022-01-15 00:00:00','2024-01-15 00:00:00',1,22,'Marketing',50,45,5,5,2,5002,8000.00,'Standard',1,'2022-12-15 00:00:00','Valid','Overage used 2',12);
INSERT INTO product_license_usage_summary (Id,ProductId,LicenseKey,LicenseType,IssuedDate,ExpiryDate,IsActive,AssignedUserId,AssignedTeam,SeatCount,UsedSeats,RemainingSeats,OverageAllowed,OverageUsed,PurchaseOrderId,Cost,SupportLevel,RenewalReminderSent,LastValidationDate,ValidationStatus,ComplianceNotes,CreatedByUserId) VALUES (3,202,'GHI789-RST','Standard','2022-09-01 00:00:00','2023-09-01 00:00:00',0,30,'Sales',30,30,0,0,0,5003,3000.00,'Basic',1,'2022-11-20 00:00:00','Expired','License expired',15);


-- Supplier contract audits
CREATE TABLE supplier_contract_audits
(
    Id INTEGER NOT NULL PRIMARY KEY,
    SupplierId INTEGER,
    ContractId INTEGER,
    AuditDate DATE,
    AuditorName TEXT,
    ComplianceScore INTEGER,
    RiskLevel TEXT,
    Notes TEXT,
    PenaltyIncurred DECIMAL,
    ContractValue DECIMAL,
    Currency TEXT,
    EffectiveStartDate DATE,
    EffectiveEndDate DATE,
    IsRenewable INTEGER,
    RenewalOption TEXT,
    ServiceLevel TEXT,
    DeliveryPerformancePct INTEGER,
    QualityScore INTEGER,
    SecurityRating INTEGER,
    InsuranceValid INTEGER,
    InsuranceExpiryDate DATE,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO supplier_contract_audits (Id,SupplierId,ContractId,AuditDate,AuditorName,ComplianceScore,RiskLevel,Notes,PenaltyIncurred,ContractValue,Currency,EffectiveStartDate,EffectiveEndDate,IsRenewable,RenewalOption,ServiceLevel,DeliveryPerformancePct,QualityScore,SecurityRating,InsuranceValid,InsuranceExpiryDate,CreatedAt,UpdatedAt) VALUES (1,3001,4001,'2022-05-10','Alice Smith',92,'Low','All terms met',0.00,250000.00,'USD','2021-01-01','2023-12-31',1,'Auto','Gold',98,95,90,1,'2023-12-31','2022-05-10 09:00:00','2022-05-10 09:30:00');
INSERT INTO supplier_contract_audits (Id,SupplierId,ContractId,AuditDate,AuditorName,ComplianceScore,RiskLevel,Notes,PenaltyIncurred,ContractValue,Currency,EffectiveStartDate,EffectiveEndDate,IsRenewable,RenewalOption,ServiceLevel,DeliveryPerformancePct,QualityScore,SecurityRating,InsuranceValid,InsuranceExpiryDate,CreatedAt,UpdatedAt) VALUES (2,3002,4002,'2022-06-15','Bob Jones',78,'Medium','Late deliveries observed',1500.00,180000.00,'EUR','2020-07-01','2022-06-30',0,'None','Silver',85,80,70,1,'2022-06-30','2022-06-15 10:15:00','2022-06-15 10:45:00');
INSERT INTO supplier_contract_audits (Id,SupplierId,ContractId,AuditDate,AuditorName,ComplianceScore,RiskLevel,Notes,PenaltyIncurred,ContractValue,Currency,EffectiveStartDate,EffectiveEndDate,IsRenewable,RenewalOption,ServiceLevel,DeliveryPerformancePct,QualityScore,SecurityRating,InsuranceValid,InsuranceExpiryDate,CreatedAt,UpdatedAt) VALUES (3,3003,4003,'2022-07-20','Carol Lee',85,'Low','Minor quality issues',0.00,300000.00,'GBP','2021-03-15','2024-03-14',1,'Manual','Platinum',92,88,85,0,NULL,'2022-07-20 11:00:00','2022-07-20 11:30:00');


-- Event sponsor contributions
CREATE TABLE event_sponsor_contributions
(
    Id INTEGER NOT NULL PRIMARY KEY,
    EventId INTEGER,
    SponsorId INTEGER,
    ContributionAmount DECIMAL,
    ContributionType TEXT,
    Currency TEXT,
    ReceivedDate DATETIME,
    Acknowledged INTEGER,
    LogoUrl TEXT,
    SponsorLevel TEXT,
    BenefitDescription TEXT,
    ContactPerson TEXT,
    ContactEmail TEXT,
    PaymentMethod TEXT,
    InvoiceNumber TEXT,
    TaxDeductible INTEGER,
    PublicRecognition INTEGER,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO event_sponsor_contributions (Id,EventId,SponsorId,ContributionAmount,ContributionType,Currency,ReceivedDate,Acknowledged,LogoUrl,SponsorLevel,BenefitDescription,ContactPerson,ContactEmail,PaymentMethod,InvoiceNumber,TaxDeductible,PublicRecognition,Notes,CreatedAt,UpdatedAt) VALUES (1,501,601,5000.00,'Cash','USD','2022-08-01 09:00:00',1,'http://example.com/logo1.png','Gold','Banner placement','Dana White','dana@example.com','Wire','INV-1001',1,1,'First sponsor','2022-08-01 09:15:00','2022-08-01 09:30:00');
INSERT INTO event_sponsor_contributions (Id,EventId,SponsorId,ContributionAmount,ContributionType,Currency,ReceivedDate,Acknowledged,LogoUrl,SponsorLevel,BenefitDescription,ContactPerson,ContactEmail,PaymentMethod,InvoiceNumber,TaxDeductible,PublicRecognition,Notes,CreatedAt,UpdatedAt) VALUES (2,502,602,2500.00,'InKind','USD','2022-08-05 10:00:00',1,'http://example.com/logo2.png','Silver','Swag distribution','Evan Green','evan@example.com','CreditCard','INV-1002',0,1,'Donated merchandise','2022-08-05 10:15:00','2022-08-05 10:30:00');
INSERT INTO event_sponsor_contributions (Id,EventId,SponsorId,ContributionAmount,ContributionType,Currency,ReceivedDate,Acknowledged,LogoUrl,SponsorLevel,BenefitDescription,ContactPerson,ContactEmail,PaymentMethod,InvoiceNumber,TaxDeductible,PublicRecognition,Notes,CreatedAt,UpdatedAt) VALUES (3,503,603,7500.00,'Cash','EUR','2022-08-10 11:30:00',0,'http://example.com/logo3.png','Platinum','Keynote speaker slot','Fiona Blue','fiona@example.eu','BankTransfer','INV-1003',1,0,'Pending acknowledgment','2022-08-10 11:45:00','2022-08-10 12:00:00');


-- Forum thread moderation log extended
CREATE TABLE forum_thread_moderation_log_extended
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ThreadId INTEGER,
    ModeratorUserId INTEGER,
    ActionType TEXT,
    ActionTimestamp DATETIME,
    Reason TEXT,
    Details TEXT,
    DurationMinutes INTEGER,
    IsReversed INTEGER,
    ReversalUserId INTEGER,
    ReversalTimestamp DATETIME,
    AffectedPostId INTEGER,
    PenaltyPoints INTEGER,
    NotificationSent INTEGER,
    Escalated INTEGER,
    EscalationLevel INTEGER,
    ResolutionStatus TEXT,
    FollowUpRequired INTEGER,
    FollowUpByUserId INTEGER,
    FollowUpDueDate DATE,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO forum_thread_moderation_log_extended (Id,ThreadId,ModeratorUserId,ActionType,ActionTimestamp,Reason,Details,DurationMinutes,IsReversed,ReversalUserId,ReversalTimestamp,AffectedPostId,PenaltyPoints,NotificationSent,Escalated,EscalationLevel,ResolutionStatus,FollowUpRequired,FollowUpByUserId,FollowUpDueDate,CreatedAt,UpdatedAt) VALUES (1,1001,10,'CloseThread','2022-09-01 08:00:00','Spam','Thread closed due to spam',NULL,0,NULL,NULL,2001,5,1,0,0,'Closed',0,NULL,NULL,'2022-09-01 08:05:00','2022-09-01 08:05:00');
INSERT INTO forum_thread_moderation_log_extended (Id,ThreadId,ModeratorUserId,ActionType,ActionTimestamp,Reason,Details,DurationMinutes,IsReversed,ReversalUserId,ReversalTimestamp,AffectedPostId,PenaltyPoints,NotificationSent,Escalated,EscalationLevel,ResolutionStatus,FollowUpRequired,FollowUpByUserId,FollowUpDueDate,CreatedAt,UpdatedAt) VALUES (2,1002,12,'EditPost','2022-09-02 09:15:00','Offensive language','Edited to remove profanity',30,0,NULL,NULL,2002,2,1,0,0,'Edited',0,NULL,NULL,'2022-09-02 09:20:00','2022-09-02 09:20:00');
INSERT INTO forum_thread_moderation_log_extended (Id,ThreadId,ModeratorUserId,ActionType,ActionTimestamp,Reason,Details,DurationMinutes,IsReversed,ReversalUserId,ReversalTimestamp,AffectedPostId,PenaltyPoints,NotificationSent,Escalated,EscalationLevel,ResolutionStatus,FollowUpRequired,FollowUpByUserId,FollowUpDueDate,CreatedAt,UpdatedAt) VALUES (3,1003,15,'WarnUser','2022-09-03 10:30:00','Harassment','Issued warning to user',NULL,0,NULL,NULL,2003,3,1,1,2,'Pending','1',20,'2022-09-10','2022-09-03 10:35:00','2022-09-03 10:35:00');


-- Content AI summaries
CREATE TABLE content_ai_summaries
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ContentId INTEGER,
    ModelVersion TEXT,
    SummaryText TEXT,
    GeneratedAt DATETIME,
    ConfidenceScore FLOAT,
    Language TEXT,
    TokenCount INTEGER,
    PromptUsed TEXT,
    ProcessingTimeMs INTEGER,
    IsVerified INTEGER,
    VerifierUserId INTEGER,
    VerificationDate DATETIME,
    RevisionNumber INTEGER,
    Source TEXT,
    Category TEXT,
    Keywords TEXT,
    LengthWords INTEGER,
    SentimentScore FLOAT,
    Notes TEXT
);

INSERT INTO content_ai_summaries (Id,ContentId,ModelVersion,SummaryText,GeneratedAt,ConfidenceScore,Language,TokenCount,PromptUsed,ProcessingTimeMs,IsVerified,VerifierUserId,VerificationDate,RevisionNumber,Source,Category,Keywords,LengthWords,SentimentScore,Notes) VALUES (1,30001,'v1.2','This article explains basic SQL queries', '2022-09-05 12:00:00',0.95,'en',120,'Summarize article',350,1,5,'2022-09-05 12:05:00',1,'posts','Education','SQL,Queries,Basics',250,0.2,'Verified by senior editor');
INSERT INTO content_ai_summaries (Id,ContentId,ModelVersion,SummaryText,GeneratedAt,ConfidenceScore,Language,TokenCount,PromptUsed,ProcessingTimeMs,IsVerified,VerifierUserId,VerificationDate,RevisionNumber,Source,Category,Keywords,LengthWords,SentimentScore,Notes) VALUES (2,30002,'v1.3','Advanced techniques for indexing in relational databases', '2022-09-06 14:30:00',0.92,'en',180,'Summarize technical guide',420,0,NULL,NULL,1,'posts','Technical','Indexing,Performance,Databases',400,0.1,'Pending verification');
INSERT INTO content_ai_summaries (Id,ContentId,ModelVersion,SummaryText,GeneratedAt,ConfidenceScore,Language,TokenCount,PromptUsed,ProcessingTimeMs,IsVerified,VerifierUserId,VerificationDate,RevisionNumber,Source,Category,Keywords,LengthWords,SentimentScore,Notes) VALUES (3,30003,'v2.0','Overview of data modeling best practices', '2022-09-07 09:45:00',0.97,'en',150,'Summarize best practices',380,1,7,'2022-09-07 09:50:00',2,'posts','Guidelines','Modeling,Best Practices,Design',350,0.3,'Confirmed accurate');


-- Ad campaign target audience detail
CREATE TABLE ad_campaign_target_audience_detail
(
    Id INTEGER NOT NULL PRIMARY KEY,
    CampaignId INTEGER,
    AudienceSegmentId INTEGER,
    SegmentName TEXT,
    AgeRange TEXT,
    Gender TEXT,
    Location TEXT,
    InterestCategories TEXT,
    DevicePreferences TEXT,
    BidMultiplier FLOAT,
    BudgetAllocation DECIMAL,
    EstimatedReach INTEGER,
    CpcTarget FLOAT,
    CpmTarget FLOAT,
    StartDate DATETIME,
    EndDate DATETIME,
    IsActive INTEGER,
    ExclusionList TEXT,
    FrequencyCap INTEGER,
    OptimizationGoal TEXT,
    CreatedAt DATETIME
);

INSERT INTO ad_campaign_target_audience_detail (Id,CampaignId,AudienceSegmentId,SegmentName,AgeRange,Gender,Location,InterestCategories,DevicePreferences,BidMultiplier,BudgetAllocation,EstimatedReach,CpcTarget,CpmTarget,StartDate,EndDate,IsActive,ExclusionList,FrequencyCap,OptimizationGoal,CreatedAt) VALUES (1,2001,30001,'Tech Enthusiasts','18-34','All','US','Technology,Programming','Desktop,Mobile',1.2,5000.00,200000,0.50,7.00,'2022-10-01 00:00:00','2022-12-31 23:59:59',1,'None',3,'Clicks','2022-09-15 08:00:00');
INSERT INTO ad_campaign_target_audience_detail (Id,CampaignId,AudienceSegmentId,SegmentName,AgeRange,Gender,Location,InterestCategories,DevicePreferences,BidMultiplier,BudgetAllocation,EstimatedReach,CpcTarget,CpmTarget,StartDate,EndDate,IsActive,ExclusionList,FrequencyCap,OptimizationGoal,CreatedAt) VALUES (2,2002,30002,'Business Professionals','35-54','All','EU','Finance,Business','Desktop',1.0,8000.00,150000,0.75,9.00,'2022-11-01 00:00:00','2023-01-31 23:59:59',1,'Competitor URLs',2,'Conversions','2022-10-01 09:30:00');
INSERT INTO ad_campaign_target_audience_detail (Id,CampaignId,AudienceSegmentId,SegmentName,AgeRange,Gender,Location,InterestCategories,DevicePreferences,BidMultiplier,BudgetAllocation,EstimatedReach,CpcTarget,CpmTarget,StartDate,EndDate,IsActive,ExclusionList,FrequencyCap,OptimizationGoal,CreatedAt) VALUES (3,2003,30003,'Creative Artists','18-44','All','Global','Art,Design','Mobile',1.5,3000.00,100000,0.60,8.50,'2022-12-01 00:00:00','2023-02-28 23:59:59',0,'None',1,'Engagement','2022-11-15 10:15:00');


-- Knowledge graph node properties extended
CREATE TABLE knowledge_graph_node_properties_ext
(
    Id INTEGER NOT NULL PRIMARY KEY,
    NodeId INTEGER,
    PropertyKey TEXT,
    PropertyValue TEXT,
    DataType TEXT,
    CreatedAt DATETIME,
    CreatedByUserId INTEGER,
    UpdatedAt DATETIME,
    UpdatedByUserId INTEGER,
    IsActive INTEGER,
    ConfidenceScore FLOAT,
    SourceSystem TEXT,
    Version INTEGER,
    ExpiryDate DATETIME,
    IsPrimary INTEGER,
    HierarchyLevel INTEGER,
    RelatedNodeId INTEGER,
    Annotation TEXT,
    IsDeprecated INTEGER,
    DeprecationReason TEXT,
    LastSynced DATETIME,
    SyncStatus TEXT
);

INSERT INTO knowledge_graph_node_properties_ext (Id,NodeId,PropertyKey,PropertyValue,DataType,CreatedAt,CreatedByUserId,UpdatedAt,UpdatedByUserId,IsActive,ConfidenceScore,SourceSystem,Version,ExpiryDate,IsPrimary,HierarchyLevel,RelatedNodeId,Annotation,IsDeprecated,DeprecationReason,LastSynced,SyncStatus) VALUES (1,4001,'author','John Doe','string','2022-01-10 08:00:00',10,'2022-06-01 09:00:00',12,1,0.98,'ImportJob','1',NULL,1,0,NULL,'Primary author flag',0,NULL,'2022-06-01 09:05:00','Synced');
INSERT INTO knowledge_graph_node_properties_ext (Id,NodeId,PropertyKey,PropertyValue,DataType,CreatedAt,CreatedByUserId,UpdatedAt,UpdatedByUserId,IsActive,ConfidenceScore,SourceSystem,Version,ExpiryDate,IsPrimary,HierarchyLevel,RelatedNodeId,Annotation,IsDeprecated,DeprecationReason,LastSynced,SyncStatus) VALUES (2,4002,'publishDate','2022-05-15','date','2022-05-16 10:30:00',15,'2022-05-16 10:30:00',15,1,0.99,'CMS','2',NULL,0,1,NULL,'Original publish date',0,NULL,'2022-05-16 10:35:00','Synced');
INSERT INTO knowledge_graph_node_properties_ext (Id,NodeId,PropertyKey,PropertyValue,DataType,CreatedAt,CreatedByUserId,UpdatedAt,UpdatedByUserId,IsActive,ConfidenceScore,SourceSystem,Version,ExpiryDate,IsPrimary,HierarchyLevel,RelatedNodeId,Annotation,IsDeprecated,DeprecationReason,LastSynced,SyncStatus) VALUES (3,4003,'deprecated','true','boolean','2022-03-01 12:00:00',20,'2022-04-01 12:00:00',20,0,0.85,'LegacySystem','3','2022-12-31 23:59:59',0,2,4001,'Deprecated due to new schema','1','Obsolete property','2022-04-01 12:05:00','Pending');