-- Learning path success metrics
CREATE TABLE learning_path_success_metrics
(
    Id INTEGER PRIMARY KEY,
    LearningPathId INTEGER,
    UserId INTEGER,
    CompletionRate REAL,
    AvgScore REAL,
    TimeToComplete INTEGER,
    SessionsCount INTEGER,
    ResourcesViewed INTEGER,
    AssessmentsTaken INTEGER,
    CertificationsEarned INTEGER,
    DropoutFlag INTEGER,
    LastActivityDate DATETIME,
    FirstStartDate DATETIME,
    GoalAchievedFlag INTEGER,
    MentorId INTEGER,
    FeedbackScore REAL,
    SurveyResponseCount INTEGER,
    SkillImprovementScore REAL,
    EngagementLevel INTEGER,
    UpdatedAt DATETIME
);

INSERT INTO learning_path_success_metrics (Id,LearningPathId,UserId,CompletionRate,AvgScore,TimeToComplete,SessionsCount,ResourcesViewed,AssessmentsTaken,CertificationsEarned,DropoutFlag,LastActivityDate,FirstStartDate,GoalAchievedFlag,MentorId,FeedbackScore,SurveyResponseCount,SkillImprovementScore,EngagementLevel,UpdatedAt)
VALUES (1,101,1001,0.85,92.5,3600,12,45,8,2,0,'2025-01-10 12:34:56','2025-01-01 09:00:00',1,2001,4.7,15,3.2,5,'2025-01-10 12:35:00');

INSERT INTO learning_path_success_metrics (Id,LearningPathId,UserId,CompletionRate,AvgScore,TimeToComplete,SessionsCount,ResourcesViewed,AssessmentsTaken,CertificationsEarned,DropoutFlag,LastActivityDate,FirstStartDate,GoalAchievedFlag,MentorId,FeedbackScore,SurveyResponseCount,SkillImprovementScore,EngagementLevel,UpdatedAt)
VALUES (2,102,1002,0.60,78.3,5400,9,30,5,0,1,'2025-01-12 08:20:15','2025-01-05 10:15:00',0,2002,3.9,10,2.1,3,'2025-01-12 08:21:00');

INSERT INTO learning_path_success_metrics (Id,LearningPathId,UserId,CompletionRate,AvgScore,TimeToComplete,SessionsCount,ResourcesViewed,AssessmentsTaken,CertificationsEarned,DropoutFlag,LastActivityDate,FirstStartDate,GoalAchievedFlag,MentorId,FeedbackScore,SurveyResponseCount,SkillImprovementScore,EngagementLevel,UpdatedAt)
VALUES (3,103,1003,0.95,98.0,2700,15,60,10,3,0,'2025-01-15 14:45:30','2025-01-02 11:30:00',1,2003,4.9,20,4.5,7,'2025-01-15 14:46:00');

-- Knowledge graph evolution
CREATE TABLE knowledge_graph_evolution
(
    Id INTEGER PRIMARY KEY,
    NodeId INTEGER,
    PrevVersionId INTEGER,
    NewVersionId INTEGER,
    ChangeType TEXT,
    ChangedByUserId INTEGER,
    ChangeDate DATETIME,
    ImpactScore REAL,
    AffectedEdgesCount INTEGER,
    NewPropertiesCount INTEGER,
    RemovedPropertiesCount INTEGER,
    IsCriticalChange INTEGER,
    Comments TEXT,
    ReviewStatus TEXT,
    ReviewerId INTEGER,
    ReviewDate DATETIME,
    ApprovalFlag INTEGER,
    SyncStatus TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO knowledge_graph_evolution (Id,NodeId,PrevVersionId,NewVersionId,ChangeType,ChangedByUserId,ChangeDate,ImpactScore,AffectedEdgesCount,NewPropertiesCount,RemovedPropertiesCount,IsCriticalChange,Comments,ReviewStatus,ReviewerId,ReviewDate,ApprovalFlag,SyncStatus,CreatedAt,UpdatedAt)
VALUES (1,5001,3,4,'AddProperty',101,'2025-02-01 09:10:00',0.75,12,5,0,0,'Added confidenceScore','Pending',0,NULL,0,'NotSynced','2025-02-01 09:15:00','2025-02-01 09:15:00');

INSERT INTO knowledge_graph_evolution (Id,NodeId,PrevVersionId,NewVersionId,ChangeType,ChangedByUserId,ChangeDate,ImpactScore,AffectedEdgesCount,NewPropertiesCount,RemovedPropertiesCount,IsCriticalChange,Comments,ReviewStatus,ReviewerId,ReviewDate,ApprovalFlag,SyncStatus,CreatedAt,UpdatedAt)
VALUES (2,5002,1,2,'MergeNode',102,'2025-02-03 14:25:00',0.90,20,0,3,1,'Merged duplicate entity','Approved',103,'2025-02-04 10:00:00',1,'Synced','2025-02-03 14:30:00','2025-02-03 14:30:00');

INSERT INTO knowledge_graph_evolution (Id,NodeId,PrevVersionId,NewVersionId,ChangeType,ChangedByUserId,ChangeDate,ImpactScore,AffectedEdgesCount,NewPropertiesCount,RemovedPropertiesCount,IsCriticalChange,Comments,ReviewStatus,ReviewerId,ReviewDate,ApprovalFlag,SyncStatus,CreatedAt,UpdatedAt)
VALUES (3,5003,5,6,'DeleteEdge',103,'2025-02-05 11:45:00',0.40,1,0,0,0,'Removed obsolete relation','Rejected',104,'2025-02-06 08:20:00',0,'NotSynced','2025-02-05 11:50:00','2025-02-05 11:50:00');

-- API consumer engagement
CREATE TABLE api_consumer_engagement
(
    Id INTEGER PRIMARY KEY,
    ConsumerId INTEGER,
    ApiEndpointId INTEGER,
    CallCount INTEGER,
    SuccessCount INTEGER,
    FailureCount INTEGER,
    AvgLatencyMs REAL,
    MaxLatencyMs REAL,
    MinLatencyMs REAL,
    DataTransferredBytes INTEGER,
    ErrorRate REAL,
    LastCallDate DATETIME,
    FirstCallDate DATETIME,
    SubscriptionTier TEXT,
    QuotaUsed INTEGER,
    QuotaLimit INTEGER,
    AlertFlag INTEGER,
    Region TEXT,
    DeviceType TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO api_consumer_engagement (Id,ConsumerId,ApiEndpointId,CallCount,SuccessCount,FailureCount,AvgLatencyMs,MaxLatencyMs,MinLatencyMs,DataTransferredBytes,ErrorRate,LastCallDate,FirstCallDate,SubscriptionTier,QuotaUsed,QuotaLimit,AlertFlag,Region,DeviceType,CreatedAt,UpdatedAt)
VALUES (1,2001,301,15000,14800,200,120.5,350.0,80.0,12500000,0.013,'2025-03-01 16:20:00','2025-01-15 08:00:00','Gold',14000,20000,0,'NA','Server','2025-01-15 08:05:00','2025-03-01 16:25:00');

INSERT INTO api_consumer_engagement (Id,ConsumerId,ApiEndpointId,CallCount,SuccessCount,FailureCount,AvgLatencyMs,MaxLatencyMs,MinLatencyMs,DataTransferredBytes,ErrorRate,LastCallDate,FirstCallDate,SubscriptionTier,QuotaUsed,QuotaLimit,AlertFlag,Region,DeviceType,CreatedAt,UpdatedAt)
VALUES (2,2002,302,8000,7950,50,95.2,210.0,60.0,6200000,0.006,'2025-03-02 10:05:00','2025-02-01 09:30:00','Silver',7500,10000,0,'EU','Mobile','2025-02-01 09:35:00','2025-03-02 10:10:00');

INSERT INTO api_consumer_engagement (Id,ConsumerId,ApiEndpointId,CallCount,SuccessCount,FailureCount,AvgLatencyMs,MaxLatencyMs,MinLatencyMs,DataTransferredBytes,ErrorRate,LastCallDate,FirstCallDate,SubscriptionTier,QuotaUsed,QuotaLimit,AlertFlag,Region,DeviceType,CreatedAt,UpdatedAt)
VALUES (3,2003,303,2500,2400,100,210.7,500.0,100.0,2100000,0.040,'2025-03-03 14:40:00','2025-02-15 12:00:00','Bronze',2300,5000,1,'APAC','Desktop','2025-02-15 12:05:00','2025-03-03 14:45:00');

-- Content personalization ruleset
CREATE TABLE content_personalization_ruleset
(
    Id INTEGER PRIMARY KEY,
    RuleSetName TEXT,
    RuleId INTEGER,
    ConditionExpression TEXT,
    ActionType TEXT,
    TargetAudience TEXT,
    Priority INTEGER,
    IsActive INTEGER,
    CreatedByUserId INTEGER,
    CreatedDate DATETIME,
    ModifiedByUserId INTEGER,
    ModifiedDate DATETIME,
    ValidFrom DATETIME,
    ValidTo DATETIME,
    FrequencyLimit INTEGER,
    MaxImpressions INTEGER,
    Weight REAL,
    Description TEXT,
    Version INTEGER,
    Hash TEXT
);

INSERT INTO content_personalization_ruleset (Id,RuleSetName,RuleId,ConditionExpression,ActionType,TargetAudience,Priority,IsActive,CreatedByUserId,CreatedDate,ModifiedByUserId,ModifiedDate,ValidFrom,ValidTo,FrequencyLimit,MaxImpressions,Weight,Description,Version,Hash)
VALUES (1,'NewUserWelcome',1,'signup_date <= 7','ShowBanner','AllNewUsers',10,1,101,'2025-01-01 00:00:00',101,'2025-01-01 00:00:00','2025-01-01 00:00:00','2025-12-31 23:59:59',1,5,0.8,'Shows welcome banner to recent signups',1,'abc123def');

INSERT INTO content_personalization_ruleset (Id,RuleSetName,RuleId,ConditionExpression,ActionType,TargetAudience,Priority,IsActive,CreatedByUserId,CreatedDate,ModifiedByUserId,ModifiedDate,ValidFrom,ValidTo,FrequencyLimit,MaxImpressions,Weight,Description,Version,Hash)
VALUES (2,'HighValuePromo',2,'total_spent > 1000','ApplyDiscount','HighSpenders',5,1,102,'2025-02-01 09:00:00',102,'2025-02-01 09:00:00','2025-02-01 09:00:00','2025-06-30 23:59:59',2,10,0.95,'Discount for users with high lifetime spend',1,'def456ghi');

INSERT INTO content_personalization_ruleset (Id,RuleSetName,RuleId,ConditionExpression,ActionType,TargetAudience,Priority,IsActive,CreatedByUserId,CreatedDate,ModifiedByUserId,ModifiedDate,ValidFrom,ValidTo,FrequencyLimit,MaxImpressions,Weight,Description,Version,Hash)
VALUES (3,'SeasonalBanner',3,'current_month = 12','ShowBanner','AllUsers',15,1,103,'2025-11-15 12:00:00',103,'2025-11-15 12:00:00','2025-12-01 00:00:00','2025-12-31 23:59:59',1,3,0.7,'Display holiday season banner',1,'ghi789jkl');

-- Forum moderator performance
CREATE TABLE forum_moderator_performance
(
    Id INTEGER PRIMARY KEY,
    ModeratorUserId INTEGER,
    ForumId INTEGER,
    ReviewsPerformed INTEGER,
    FlagsHandled INTEGER,
    AvgResolutionTimeSec REAL,
    SatisfactionScore REAL,
    Escalations INTEGER,
    ActiveDays INTEGER,
    SessionsCount INTEGER,
    IsOnCall INTEGER,
    TrainingCompletedDate DATETIME,
    LastActiveDate DATETIME,
    ShiftStartTime DATETIME,
    ShiftEndTime DATETIME,
    PenaltyCount INTEGER,
    BonusPoints INTEGER,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Status TEXT
);

INSERT INTO forum_moderator_performance (Id,ModeratorUserId,ForumId,ReviewsPerformed,FlagsHandled,AvgResolutionTimeSec,SatisfactionScore,Escalations,ActiveDays,SessionsCount,IsOnCall,TrainingCompletedDate,LastActiveDate,ShiftStartTime,ShiftEndTime,PenaltyCount,BonusPoints,Notes,CreatedAt,UpdatedAt,Status)
VALUES (1,3001,10,250,300,180.5,4.6,12,30,45,1,'2024-12-01 00:00:00','2025-03-01 08:30:00','2025-03-01 08:00:00','2025-03-01 16:00:00',0,150,'Consistently high performance', '2025-01-01 00:00:00','2025-03-01 16:05:00','Active');

INSERT INTO forum_moderator_performance (Id,ModeratorUserId,ForumId,ReviewsPerformed,FlagsHandled,AvgResolutionTimeSec,SatisfactionScore,Escalations,ActiveDays,SessionsCount,IsOnCall,TrainingCompletedDate,LastActiveDate,ShiftStartTime,ShiftEndTime,PenaltyCount,BonusPoints,Notes,CreatedAt,UpdatedAt,Status)
VALUES (2,3002,11,180,210,210.0,4.2,20,25,38,0,'2024-11-15 00:00:00','2025-02-28 17:45:00','2025-02-28 09:00:00','2025-02-28 17:00:00',2,80,'Needs improvement in response time', '2025-01-10 00:00:00','2025-02-28 17:50:00','Active');

INSERT INTO forum_moderator_performance (Id,ModeratorUserId,ForumId,ReviewsPerformed,FlagsHandled,AvgResolutionTimeSec,SatisfactionScore,Escalations,ActiveDays,SessionsCount,IsOnCall,TrainingCompletedDate,LastActiveDate,ShiftStartTime,ShiftEndTime,PenaltyCount,BonusPoints,Notes,CreatedAt,UpdatedAt,Status)
VALUES (3,3003,12,300,350,150.2,4.9,5,40,55,1,'2025-01-05 00:00:00','2025-03-02 12:10:00','2025-03-02 08:00:00','2025-03-02 16:00:00',0,200,'Top performer, eligible for promotion', '2025-01-15 00:00:00','2025-03-02 12:15:00','Active');

-- Advertiser audience segments
CREATE TABLE advertiser_audience_segments
(
    Id INTEGER PRIMARY KEY,
    AdvertiserId INTEGER,
    SegmentName TEXT,
    DemographicInfo TEXT,
    InterestKeywords TEXT,
    Reach INTEGER,
    AvgFrequency INTEGER,
    CPM REAL,
    CPC REAL,
    ConversionRate REAL,
    StartDate DATETIME,
    EndDate DATETIME,
    IsActive INTEGER,
    CreatedByUserId INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    BudgetAllocated REAL,
    SpendToDate REAL,
    PerformanceScore REAL,
    AttributionModel TEXT,
    Notes TEXT
);

INSERT INTO advertiser_audience_segments (Id,AdvertiserId,SegmentName,DemographicInfo,InterestKeywords,Reach,AvgFrequency,CPM,CPC,ConversionRate,StartDate,EndDate,IsActive,CreatedByUserId,CreatedAt,UpdatedAt,BudgetAllocated,SpendToDate,PerformanceScore,AttributionModel,Notes)
VALUES (1,4001,'TechEnthusiasts','Age18-35|Male','AI,Cloud,Gaming',120000,3,5.5,0.75,0.08,'2025-01-01 00:00:00','2025-06-30 23:59:59',1,101,'2024-12-15 10:00:00','2025-01-02 09:30:00',50000,25000,0.78,'LastClick','High engagement segment');

INSERT INTO advertiser_audience_segments (Id,AdvertiserId,SegmentName,DemographicInfo,InterestKeywords,Reach,AvgFrequency,CPM,CPC,ConversionRate,StartDate,EndDate,IsActive,CreatedByUserId,CreatedAt,UpdatedAt,BudgetAllocated,SpendToDate,PerformanceScore,AttributionModel,Notes)
VALUES (2,4002,'FitnessFans','Age25-45|Female','Yoga,Running,Health',80000,2,4.2,0.60,0.12,'2025-02-01 00:00:00','2025-07-31 23:59:59',1,102,'2025-01-20 11:15:00','2025-02-02 10:00:00',40000,15000,0.71,'FirstClick','Strong ROI observed');

INSERT INTO advertiser_audience_segments (Id,AdvertiserId,SegmentName,DemographicInfo,InterestKeywords,Reach,AvgFrequency,CPM,CPC,ConversionRate,StartDate,EndDate,IsActive,CreatedByUserId,CreatedAt,UpdatedAt,BudgetAllocated,SpendToDate,PerformanceScore,AttributionModel,Notes)
VALUES (3,4003,'TravelSeekers','Age30-55|All','Flights,Hotels,Adventure',150000,4,6.0,0.85,0.05,'2025-03-01 00:00:00','2025-12-31 23:59:59',1,103,'2025-02-10 09:45:00','2025-03-02 08:30:00',75000,30000,0.83,'Linear','Seasonal campaign target');

-- Site performance snapshot
CREATE TABLE site_performance_snapshot
(
    Id INTEGER PRIMARY KEY,
    SnapshotDate DATETIME,
    AvgResponseTimeMs REAL,
    MaxResponseTimeMs REAL,
    P95ResponseTimeMs REAL,
    ErrorRate REAL,
    ThroughputRps REAL,
    ActiveUsers INTEGER,
    CPUUtilizationPercent REAL,
    MemoryUtilizationPercent REAL,
    DiskIOBytesPerSec REAL,
    NetworkInBytesPerSec REAL,
    NetworkOutBytesPerSec REAL,
    CacheHitRate REAL,
    DBConnectionCount INTEGER,
    QueueLength INTEGER,
    ThreadCount INTEGER,
    GCtimeMs REAL,
    DeploymentVersion TEXT,
    Notes TEXT
);

INSERT INTO site_performance_snapshot (Id,SnapshotDate,AvgResponseTimeMs,MaxResponseTimeMs,P95ResponseTimeMs,ErrorRate,ThroughputRps,ActiveUsers,CPUUtilizationPercent,MemoryUtilizationPercent,DiskIOBytesPerSec,NetworkInBytesPerSec,NetworkOutBytesPerSec,CacheHitRate,DBConnectionCount,QueueLength,ThreadCount,GCtimeMs,DeploymentVersion,Notes)
VALUES (1,'2025-03-01 00:00:00',120.5,450.0,200.0,0.002,350.0,12000,65.3,71.2,1500000,2500000,2400000,0.92,120,15,80,35.0,'v2.3.1','Normal operation');

INSERT INTO site_performance_snapshot (Id,SnapshotDate,AvgResponseTimeMs,MaxResponseTimeMs,P95ResponseTimeMs,ErrorRate,ThroughputRps,ActiveUsers,CPUUtilizationPercent,MemoryUtilizationPercent,DiskIOBytesPerSec,NetworkInBytesPerSec,NetworkOutBytesPerSec,CacheHitRate,DBConnectionCount,QueueLength,ThreadCount,GCtimeMs,DeploymentVersion,Notes)
VALUES (2,'2025-03-02 00:00:00',135.0,500.0,250.0,0.004,300.0,11000,72.0,78.5,1800000,2600000,2500000,0.88,130,20,85,40.0,'v2.3.2','Slight slowdown observed');

INSERT INTO site_performance_snapshot (Id,SnapshotDate,AvgResponseTimeMs,MaxResponseTimeMs,P95ResponseTimeMs,ErrorRate,ThroughputRps,ActiveUsers,CPUUtilizationPercent,MemoryUtilizationPercent,DiskIOBytesPerSec,NetworkInBytesPerSec,NetworkOutBytesPerSec,CacheHitRate,DBConnectionCount,QueueLength,ThreadCount,GCtimeMs,DeploymentVersion,Notes)
VALUES (3,'2025-03-03 00:00:00',118.0,420.0,190.0,0.0015,380.0,12500,60.5,68.0,1400000,2400000,2300000,0.94,115,10,78,30.0,'v2.3.3','Performance improved after tuning');

-- User content interaction log
CREATE TABLE user_content_interaction_log
(
    Id INTEGER PRIMARY KEY,
    UserId INTEGER,
    ContentId INTEGER,
    InteractionType TEXT,
    InteractionTimestamp DATETIME,
    DeviceId TEXT,
    Browser TEXT,
    OS TEXT,
    SessionId TEXT,
    ReferrerUrl TEXT,
    GeoCountry TEXT,
    GeoRegion TEXT,
    GeoCity TEXT,
    DurationSeconds INTEGER,
    ScrollDepthPercent REAL,
    ClickCount INTEGER,
    Rating INTEGER,
    CommentText TEXT,
    IsFlagged INTEGER,
    ProcessedFlag INTEGER,
    InsertedAt DATETIME
);

INSERT INTO user_content_interaction_log (Id,UserId,ContentId,InteractionType,InteractionTimestamp,DeviceId,Browser,OS,SessionId,ReferrerUrl,GeoCountry,GeoRegion,GeoCity,DurationSeconds,ScrollDepthPercent,ClickCount,Rating,CommentText,IsFlagged,ProcessedFlag,InsertedAt)
VALUES (1,1001,5001,'View','2025-03-01 09:15:00','devA1','Chrome','Windows','sess001','https://search.example.com','US','CA','LosAngeles',45,85.5,3,5,'Great article','0','0','2025-03-01 09:15:05');

INSERT INTO user_content_interaction_log (Id,UserId,ContentId,InteractionType,InteractionTimestamp,DeviceId,Browser,OS,SessionId,ReferrerUrl,GeoCountry,GeoRegion,GeoCity,DurationSeconds,ScrollDepthPercent,ClickCount,Rating,CommentText,IsFlagged,ProcessedFlag,InsertedAt)
VALUES (2,1002,5002,'Like','2025-03-01 10:20:30','devB2','Firefox','Linux','sess002','https://forum.example.com','UK','England','London',5,0,0,1,'','0','0','2025-03-01 10:20:35');

INSERT INTO user_content_interaction_log (Id,UserId,ContentId,InteractionType,InteractionTimestamp,DeviceId,Browser,OS,SessionId,ReferrerUrl,GeoCountry,GeoRegion,GeoCity,DurationSeconds,ScrollDepthPercent,ClickCount,Rating,CommentText,IsFlagged,ProcessedFlag,InsertedAt)
VALUES (3,1003,5003,'Comment','2025-03-01 11:45:10','devC3','Safari','iOS','sess003','https://blog.example.com','AU','NSW','Sydney',120,100.0,7,4,'Informative post','0','0','2025-03-01 11:45:15');

-- Search algorithm experiments
CREATE TABLE search_algorithm_experiments
(
    Id INTEGER PRIMARY KEY,
    ExperimentName TEXT,
    VariantId INTEGER,
    QuerySample TEXT,
    ClickedResultId INTEGER,
    RankPosition INTEGER,
    IsClick INTEGER,
    DwellTimeSeconds INTEGER,
    ConversionFlag INTEGER,
    UserId INTEGER,
    SessionId TEXT,
    DeviceType TEXT,
    Browser TEXT,
    OS TEXT,
    StartedAt DATETIME,
    EndedAt DATETIME,
    ExperimentStatus TEXT,
    MetricScore REAL,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO search_algorithm_experiments (Id,ExperimentName,VariantId,QuerySample,ClickedResultId,RankPosition,IsClick,DwellTimeSeconds,ConversionFlag,UserId,SessionId,DeviceType,Browser,OS,StartedAt,EndedAt,ExperimentStatus,MetricScore,Notes,CreatedAt,UpdatedAt)
VALUES (1,'AlgA_Test','1','how to tie shoes',2001,2,1,30,0,1001,'sessA1','Desktop','Chrome','Windows','2025-03-01 09:00:00','2025-03-01 09:00:05','Running',0.85,'Baseline variant','2025-03-01 08:55:00','2025-03-01 09:05:00');

INSERT INTO search_algorithm_experiments (Id,ExperimentName,VariantId,QuerySample,ClickedResultId,RankPosition,IsClick,DwellTimeSeconds,ConversionFlag,UserId,SessionId,DeviceType,Browser,OS,StartedAt,EndedAt,ExperimentStatus,MetricScore,Notes,CreatedAt,UpdatedAt)
VALUES (2,'AlgA_Test','2','how to tie shoes',2002,1,1,45,1,1002,'sessA2','Mobile','Safari','iOS','2025-03-01 10:15:00','2025-03-01 10:15:04','Running',0.92,'New ranking algorithm','2025-03-01 10:10:00','2025-03-01 10:20:00');

INSERT INTO search_algorithm_experiments (Id,ExperimentName,VariantId,QuerySample,ClickedResultId,RankPosition,IsClick,DwellTimeSeconds,ConversionFlag,UserId,SessionId,DeviceType,Browser,OS,StartedAt,EndedAt,ExperimentStatus,MetricScore,Notes,CreatedAt,UpdatedAt)
VALUES (3,'AlgB_Test','1','best pizza in town',3001,3,0,0,0,1003,'sessB1','Desktop','Edge','Windows','2025-03-01 11:30:00','2025-03-01 11:30:02','Running',0.60,'Control group','2025-03-01 11:25:00','2025-03-01 11:35:00');

-- Regional ad coverage
CREATE TABLE regional_ad_coverage
(
    Id INTEGER PRIMARY KEY,
    RegionCode TEXT,
    AdvertiserId INTEGER,
    CampaignId INTEGER,
    CoveragePercentage REAL,
    Impressions INTEGER,
    Clicks INTEGER,
    Conversions INTEGER,
    Revenue REAL,
    StartDate DATETIME,
    EndDate DATETIME,
    IsActive INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    TargetCpm REAL,
    TargetCpc REAL,
    FrequencyCap INTEGER,
    ViewabilityRate REAL,
    BrandSafetyScore REAL,
    Notes TEXT,
    LastReviewed DATETIME
);

INSERT INTO regional_ad_coverage (Id,RegionCode,AdvertiserId,CampaignId,CoveragePercentage,Impressions,Clicks,Conversions,Revenue,StartDate,EndDate,IsActive,CreatedAt,UpdatedAt,TargetCpm,TargetCpc,FrequencyCap,ViewabilityRate,BrandSafetyScore,Notes,LastReviewed)
VALUES (1,'US-CA',4001,5001,92.5,120000,4500,300,75000,'2025-01-01 00:00:00','2025-06-30 23:59:59',1,'2024-12-20 09:00:00','2025-01-02 10:00:00',5.5,0.80,3,0.95,0.98,'Strong performance in California','2025-01-05 12:00:00');

INSERT INTO regional_ad_coverage (Id,RegionCode,AdvertiserId,CampaignId,CoveragePercentage,Impressions,Clicks,Conversions,Revenue,StartDate,EndDate,IsActive,CreatedAt,UpdatedAt,TargetCpm,TargetCpc,FrequencyCap,ViewabilityRate,BrandSafetyScore,Notes,LastReviewed)
VALUES (2,'EU-DE',4002,5002,85.0,90000,3000,200,56000,'2025-02-01 00:00:00','2025-07-31 23:59:59',1,'2025-01-15 11:00:00','2025-02-02 12:00:00',4.8,0.70,2,0.92,0.96,'Good coverage in Germany','2025-02-06 14:30:00');

INSERT INTO regional_ad_coverage (Id,RegionCode,AdvertiserId,CampaignId,CoveragePercentage,Impressions,Clicks,Conversions,Revenue,StartDate,EndDate,IsActive,CreatedAt,UpdatedAt,TargetCpm,TargetCpc,FrequencyCap,ViewabilityRate,BrandSafetyScore,Notes,LastReviewed)
VALUES (3,'AP-JP',4003,5003,78.3,75000,2500,150,42000,'2025-03-01 00:00:00','2025-12-31 23:59:59',1,'2025-02-20 13:00:00','2025-03-03 15:00:00',5.0,0.85,4,0.90,0.94,'Expanding reach in Japan','2025-03-07 09:45:00');