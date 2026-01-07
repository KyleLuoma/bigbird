-- User activity metrics per user
CREATE TABLE user_activity_metrics
(
    Id INTEGER PRIMARY KEY,
    UserId INTEGER,
    SessionCount INTEGER,
    AvgSessionDurationSec INTEGER,
    PageViews INTEGER,
    Clicks INTEGER,
    LikesGiven INTEGER,
    LikesReceived INTEGER,
    CommentsPosted INTEGER,
    PostsCreated INTEGER,
    BadgesEarned INTEGER,
    ReputationChange INTEGER,
    LastActiveDate INTEGER,
    FirstActiveDate INTEGER,
    DeviceCount INTEGER,
    PlatformType INTEGER,
    CountryCode INTEGER,
    City INTEGER,
    TimezoneOffset INTEGER,
    IsPremiumMember INTEGER
);
INSERT INTO user_activity_metrics (Id,UserId,SessionCount,AvgSessionDurationSec,PageViews,Clicks,LikesGiven,LikesReceived,CommentsPosted,PostsCreated,BadgesEarned,ReputationChange,LastActiveDate,FirstActiveDate,DeviceCount,PlatformType,CountryCode,City,TimezoneOffset,IsPremiumMember) VALUES (1,101,50,300,2000,150,40,80,20,5,2,150,1672531200,1669852800,2,1,1,1,-300,1);
INSERT INTO user_activity_metrics (Id,UserId,SessionCount,AvgSessionDurationSec,PageViews,Clicks,LikesGiven,LikesReceived,CommentsPosted,PostsCreated,BadgesEarned,ReputationChange,LastActiveDate,FirstActiveDate,DeviceCount,PlatformType,CountryCode,City,TimezoneOffset,IsPremiumMember) VALUES (2,102,30,250,1200,90,25,60,15,3,1,80,1672617600,1669939200,1,2,2,2,-240,0);
INSERT INTO user_activity_metrics (Id,UserId,SessionCount,AvgSessionDurationSec,PageViews,Clicks,LikesGiven,LikesReceived,CommentsPosted,PostsCreated,BadgesEarned,ReputationChange,LastActiveDate,FirstActiveDate,DeviceCount,PlatformType,CountryCode,City,TimezoneOffset,IsPremiumMember) VALUES (3,103,70,320,2500,200,60,120,30,8,3,200,1672704000,1670016000,3,1,3,3,-180,1);

-- Post access pattern statistics
CREATE TABLE post_access_patterns
(
    Id INTEGER PRIMARY KEY,
    PostId INTEGER,
    ViewCount INTEGER,
    UniqueVisitorCount INTEGER,
    AvgViewDurationSec INTEGER,
    BounceRatePct INTEGER,
    HourlyPeakViews INTEGER,
    DailyPeakViews INTEGER,
    ReferralSource INTEGER,
    DeviceType INTEGER,
    Browser INTEGER,
    CountryCode INTEGER,
    City INTEGER,
    AccessDate INTEGER,
    IsFeatured INTEGER,
    ShareCount INTEGER,
    BookmarkCount INTEGER,
    CommentCount INTEGER,
    EditCount INTEGER,
    SpamFlagCount INTEGER,
    RatingAvg INTEGER
);
INSERT INTO post_access_patterns (Id,PostId,ViewCount,UniqueVisitorCount,AvgViewDurationSec,BounceRatePct,HourlyPeakViews,DailyPeakViews,ReferralSource,DeviceType,Browser,CountryCode,City,AccessDate,IsFeatured,ShareCount,BookmarkCount,CommentCount,EditCount,SpamFlagCount,RatingAvg) VALUES (1,201,5000,3000,180,20,200,1500,1,1,1,1,1,1672531200,1,400,250,100,30,5,4);
INSERT INTO post_access_patterns (Id,PostId,ViewCount,UniqueVisitorCount,AvgViewDurationSec,BounceRatePct,HourlyPeakViews,DailyPeakViews,ReferralSource,DeviceType,Browser,CountryCode,City,AccessDate,IsFeatured,ShareCount,BookmarkCount,CommentCount,EditCount,SpamFlagCount,RatingAvg) VALUES (2,202,3000,1800,150,25,150,900,2,2,2,2,2,1672617600,0,250,150,60,20,2,3);
INSERT INTO post_access_patterns (Id,PostId,ViewCount,UniqueVisitorCount,AvgViewDurationSec,BounceRatePct,HourlyPeakViews,DailyPeakViews,ReferralSource,DeviceType,Browser,CountryCode,City,AccessDate,IsFeatured,ShareCount,BookmarkCount,CommentCount,EditCount,SpamFlagCount,RatingAvg) VALUES (3,203,7200,4500,200,15,300,2000,3,1,3,3,3,1672704000,1,600,350,120,45,1,5);

-- Tag relationship metrics
CREATE TABLE tag_relationship_metrics
(
    Id INTEGER PRIMARY KEY,
    TagId INTEGER,
    RelatedTagId INTEGER,
    CooccurrenceCount INTEGER,
    MutualPostsCount INTEGER,
    SimilarityScore INTEGER,
    LastCalculated INTEGER,
    IsPrimary INTEGER,
    CategoryId INTEGER,
    SubCategoryId INTEGER,
    TrendScore INTEGER,
    DailyChangePct INTEGER,
    WeeklyChangePct INTEGER,
    MonthlyChangePct INTEGER,
    SourceAlgorithm INTEGER,
    ConfidenceLevel INTEGER
);
INSERT INTO tag_relationship_metrics (Id,TagId,RelatedTagId,CooccurrenceCount,MutualPostsCount,SimilarityScore,LastCalculated,IsPrimary,CategoryId,SubCategoryId,TrendScore,DailyChangePct,WeeklyChangePct,MonthlyChangePct,SourceAlgorithm,ConfidenceLevel) VALUES (1,301,401,1500,800,85,1672531200,1,10,100,70,5,12,20,2,90);
INSERT INTO tag_relationship_metrics (Id,TagId,RelatedTagId,CooccurrenceCount,MutualPostsCount,SimilarityScore,LastCalculated,IsPrimary,CategoryId,SubCategoryId,TrendScore,DailyChangePct,WeeklyChangePct,MonthlyChangePct,SourceAlgorithm,ConfidenceLevel) VALUES (2,302,402,900,500,78,1672617600,0,11,101,60,3,10,15,3,80);
INSERT INTO tag_relationship_metrics (Id,TagId,RelatedTagId,CooccurrenceCount,MutualPostsCount,SimilarityScore,LastCalculated,IsPrimary,CategoryId,SubCategoryId,TrendScore,DailyChangePct,WeeklyChangePct,MonthlyChangePct,SourceAlgorithm,ConfidenceLevel) VALUES (3,303,403,2000,1200,92,1672704000,1,12,102,80,6,14,25,1,95);

-- Content translation log
CREATE TABLE content_translation_log
(
    Id INTEGER PRIMARY KEY,
    ContentId INTEGER,
    ContentType INTEGER,
    SourceLang INTEGER,
    TargetLang INTEGER,
    TranslatorId INTEGER,
    TranslationDate INTEGER,
    TranslationQualityScore INTEGER,
    WordCount INTEGER,
    CharCount INTEGER,
    IsMachineTranslated INTEGER,
    ReviewStatus INTEGER,
    ReviewerId INTEGER,
    ReviewDate INTEGER,
    Comments INTEGER,
    VersionNumber INTEGER,
    CacheKey INTEGER,
    ApiEndpoint INTEGER,
    RequestDurationMs INTEGER,
    ErrorCode INTEGER
);
INSERT INTO content_translation_log (Id,ContentId,ContentType,SourceLang,TargetLang,TranslatorId,TranslationDate,TranslationQualityScore,WordCount,CharCount,IsMachineTranslated,ReviewStatus,ReviewerId,ReviewDate,Comments,VersionNumber,CacheKey,ApiEndpoint,RequestDurationMs,ErrorCode) VALUES (1,501,1,1,2,1001,1672531200,88,350,2100,1,2,2001,1672531300,0,1,12345,10,250,0);
INSERT INTO content_translation_log (Id,ContentId,ContentType,SourceLang,TargetLang,TranslatorId,TranslationDate,TranslationQualityScore,WordCount,CharCount,IsMachineTranslated,ReviewStatus,ReviewerId,ReviewDate,Comments,VersionNumber,CacheKey,ApiEndpoint,RequestDurationMs,ErrorCode) VALUES (2,502,2,2,3,1002,1672617600,92,500,3000,0,1,2002,1672617700,0,2,12346,11,300,0);
INSERT INTO content_translation_log (Id,ContentId,ContentType,SourceLang,TargetLang,TranslatorId,TranslationDate,TranslationQualityScore,WordCount,CharCount,IsMachineTranslated,ReviewStatus,ReviewerId,ReviewDate,Comments,VersionNumber,CacheKey,ApiEndpoint,RequestDurationMs,ErrorCode) VALUES (3,503,1,1,3,1003,1672704000,85,400,2500,1,3,2003,1672704100,0,3,12347,12,280,1);

-- Moderation review sessions
CREATE TABLE moderation_review_sessions
(
    Id INTEGER PRIMARY KEY,
    ModeratorId INTEGER,
    ReviewStartTime INTEGER,
    ReviewEndTime INTEGER,
    ReviewedPostCount INTEGER,
    ActionTakenCount INTEGER,
    EscalatedCount INTEGER,
    AvgDecisionTimeSec INTEGER,
    Notes INTEGER,
    SessionType INTEGER,
    Platform INTEGER,
    IsRemote INTEGER,
    Region INTEGER,
    ShiftId INTEGER,
    ToolVersion INTEGER,
    ReviewMode INTEGER,
    AutoFlagCount INTEGER,
    ManualFlagCount INTEGER,
    FeedbackScore INTEGER,
    SessionStatus INTEGER
);
INSERT INTO moderation_review_sessions (Id,ModeratorId,ReviewStartTime,ReviewEndTime,ReviewedPostCount,ActionTakenCount,EscalatedCount,AvgDecisionTimeSec,Notes,SessionType,Platform,IsRemote,Region,ShiftId,ToolVersion,ReviewMode,AutoFlagCount,ManualFlagCount,FeedbackScore,SessionStatus) VALUES (1,301,1672531200,1672534800,120,100,5,30,0,1,1,0,1,10,2,1,15,10,8,1);
INSERT INTO moderation_review_sessions (Id,ModeratorId,ReviewStartTime,ReviewEndTime,ReviewedPostCount,ActionTakenCount,EscalatedCount,AvgDecisionTimeSec,Notes,SessionType,Platform,IsRemote,Region,ShiftId,ToolVersion,ReviewMode,AutoFlagCount,ManualFlagCount,FeedbackScore,SessionStatus) VALUES (2,302,1672617600,1672621200,80,70,3,25,0,2,2,1,2,11,3,2,10,8,7,1);
INSERT INTO moderation_review_sessions (Id,ModeratorId,ReviewStartTime,ReviewEndTime,ReviewedPostCount,ActionTakenCount,EscalatedCount,AvgDecisionTimeSec,Notes,SessionType,Platform,IsRemote,Region,ShiftId,ToolVersion,ReviewMode,AutoFlagCount,ManualFlagCount,FeedbackScore,SessionStatus) VALUES (3,303,1672704000,1672707600,150,130,7,35,0,1,1,0,3,12,4,1,20,12,9,1);

-- Post collaboration history
CREATE TABLE post_collaboration_history
(
    Id INTEGER PRIMARY KEY,
    PostId INTEGER,
    CollaboratorUserId INTEGER,
    Role INTEGER,
    InvitationDate INTEGER,
    AcceptanceDate INTEGER,
    ContributionPercentage INTEGER,
    EditsMade INTEGER,
    CommentsMade INTEGER,
    RevisionsCount INTEGER,
    LastContributionDate INTEGER,
    IsActive INTEGER,
    AccessLevel INTEGER,
    NotificationPreference INTEGER,
    RemovedDate INTEGER,
    RemovalReason INTEGER,
    TeamId INTEGER,
    CollaborationStatus INTEGER,
    ReviewScore INTEGER
);
INSERT INTO post_collaboration_history (Id,PostId,CollaboratorUserId,Role,InvitationDate,AcceptanceDate,ContributionPercentage,EditsMade,CommentsMade,RevisionsCount,LastContributionDate,IsActive,AccessLevel,NotificationPreference,RemovedDate,RemovalReason,TeamId,CollaborationStatus,ReviewScore) VALUES (1,601,701,1,1672531200,1672531300,40,20,5,10,1672531400,1,2,1,0,0,1001,1,85);
INSERT INTO post_collaboration_history (Id,PostId,CollaboratorUserId,Role,InvitationDate,AcceptanceDate,ContributionPercentage,EditsMade,CommentsMade,RevisionsCount,LastContributionDate,IsActive,AccessLevel,NotificationPreference,RemovedDate,RemovalReason,TeamId,CollaborationStatus,ReviewScore) VALUES (2,602,702,2,1672617600,1672617700,30,15,3,8,1672617800,1,1,2,0,0,1002,1,78);
INSERT INTO post_collaboration_history (Id,PostId,CollaboratorUserId,Role,InvitationDate,AcceptanceDate,ContributionPercentage,EditsMade,CommentsMade,RevisionsCount,LastContributionDate,IsActive,AccessLevel,NotificationPreference,RemovedDate,RemovalReason,TeamId,CollaborationStatus,ReviewScore) VALUES (3,603,703,1,1672704000,1672704100,50,25,7,12,1672704200,0,2,1,1672800000,2,1003,2,90);

-- User learning path progress detail
CREATE TABLE user_learning_path_progress_detail
(
    Id INTEGER PRIMARY KEY,
    UserId INTEGER,
    LearningPathId INTEGER,
    ModuleId INTEGER,
    StartDate INTEGER,
    CompletionDate INTEGER,
    ProgressPct INTEGER,
    Score INTEGER,
    TimeSpentSec INTEGER,
    AttemptCount INTEGER,
    Passed INTEGER,
    CertificationId INTEGER,
    BadgeEarned INTEGER,
    InstructorId INTEGER,
    Feedback INTEGER,
    RevisionNumber INTEGER,
    IsRetake INTEGER,
    LastAccessed INTEGER,
    CurrentStatus INTEGER,
    LearningMode INTEGER
);
INSERT INTO user_learning_path_progress_detail (Id,UserId,LearningPathId,ModuleId,StartDate,CompletionDate,ProgressPct,Score,TimeSpentSec,AttemptCount,Passed,CertificationId,BadgeEarned,InstructorId,Feedback,RevisionNumber,IsRetake,LastAccessed,CurrentStatus,LearningMode) VALUES (1,801,901,1001,1672531200,1672534800,100,95,3600,1,1,1101,1,1201,5,1,0,1672535000,1,1);
INSERT INTO user_learning_path_progress_detail (Id,UserId,LearningPathId,ModuleId,StartDate,CompletionDate,ProgressPct,Score,TimeSpentSec,AttemptCount,Passed,CertificationId,BadgeEarned,InstructorId,Feedback,RevisionNumber,IsRetake,LastAccessed,CurrentStatus,LearningMode) VALUES (2,802,902,1002,1672617600,0,45,70,1800,2,0,1102,0,1202,3,1,0,1672618000,2,2);
INSERT INTO user_learning_path_progress_detail (Id,UserId,LearningPathId,ModuleId,StartDate,CompletionDate,ProgressPct,Score,TimeSpentSec,AttemptCount,Passed,CertificationId,BadgeEarned,InstructorId,Feedback,RevisionNumber,IsRetake,LastAccessed,CurrentStatus,LearningMode) VALUES (3,803,903,1003,1672704000,1672707600,100,88,4000,1,1,1103,1,1203,4,2,0,1672707700,1,1);

-- Ad campaign target audience
CREATE TABLE ad_campaign_target_audience
(
    Id INTEGER PRIMARY KEY,
    CampaignId INTEGER,
    AudienceSegmentId INTEGER,
    TargetCountry INTEGER,
    TargetRegion INTEGER,
    AgeRangeMin INTEGER,
    AgeRangeMax INTEGER,
    Gender INTEGER,
    Interests INTEGER,
    DeviceType INTEGER,
    BudgetAllocation INTEGER,
    ExpectedReach INTEGER,
    CPM INTEGER,
    CPC INTEGER,
    StartDate INTEGER,
    EndDate INTEGER,
    FrequencyCap INTEGER,
    ExclusionCriteria INTEGER,
    IsActive INTEGER,
    CreatedBy INTEGER,
    CreatedDate INTEGER
);
INSERT INTO ad_campaign_target_audience (Id,CampaignId,AudienceSegmentId,TargetCountry,TargetRegion,AgeRangeMin,AgeRangeMax,Gender,Interests,DeviceType,BudgetAllocation,ExpectedReach,CPM,CPC,StartDate,EndDate,FrequencyCap,ExclusionCriteria,IsActive,CreatedBy,CreatedDate) VALUES (1,2001,3001,1,10,18,35,1,500,1,100000,500000,5,2,1672531200,1675133200,3,0,1,4001,1672500000);
INSERT INTO ad_campaign_target_audience (Id,CampaignId,AudienceSegmentId,TargetCountry,TargetRegion,AgeRangeMin,AgeRangeMax,Gender,Interests,DeviceType,BudgetAllocation,ExpectedReach,CPM,CPC,StartDate,EndDate,FrequencyCap,ExclusionCriteria,IsActive,CreatedBy,CreatedDate) VALUES (2,2002,3002,2,20,25,45,2,600,2,150000,750000,6,3,1672617600,1675219600,4,1,1,4002,1672600000);
INSERT INTO ad_campaign_target_audience (Id,CampaignId,AudienceSegmentId,TargetCountry,TargetRegion,AgeRangeMin,AgeRangeMax,Gender,Interests,DeviceType,BudgetAllocation,ExpectedReach,CPM,CPC,StartDate,EndDate,FrequencyCap,ExclusionCriteria,IsActive,CreatedBy,CreatedDate) VALUES (3,2003,3003,3,30,30,60,0,700,1,200000,1000000,7,4,1672704000,1675292400,5,0,0,4003,1672690000);

-- Knowledge graph node properties
CREATE TABLE knowledge_graph_node_properties
(
    Id INTEGER PRIMARY KEY,
    NodeId INTEGER,
    PropertyKey INTEGER,
    PropertyValue INTEGER,
    DataType INTEGER,
    IsPrimary INTEGER,
    CreatedAt INTEGER,
    UpdatedAt INTEGER,
    SourceSystem INTEGER,
    ConfidenceScore INTEGER,
    ValidFrom INTEGER,
    ValidTo INTEGER,
    Version INTEGER,
    OwnerId INTEGER,
    Annotation INTEGER,
    ConversionRate INTEGER,
    UsageCount INTEGER,
    LastAccessed INTEGER,
    IsDeprecated INTEGER,
    DeprecationReason INTEGER
);
INSERT INTO knowledge_graph_node_properties (Id,NodeId,PropertyKey,PropertyValue,DataType,IsPrimary,CreatedAt,UpdatedAt,SourceSystem,ConfidenceScore,ValidFrom,ValidTo,Version,OwnerId,Annotation,ConversionRate,UsageCount,LastAccessed,IsDeprecated,DeprecationReason) VALUES (1,5001,1,100,1,1,1672531200,1672531300,1,95,1672500000,1672600000,1,6001,10,80,200,1672531400,0,0);
INSERT INTO knowledge_graph_node_properties (Id,NodeId,PropertyKey,PropertyValue,DataType,IsPrimary,CreatedAt,UpdatedAt,SourceSystem,ConfidenceScore,ValidFrom,ValidTo,Version,OwnerId,Annotation,ConversionRate,UsageCount,LastAccessed,IsDeprecated,DeprecationReason) VALUES (2,5002,2,200,2,0,1672617600,1672617700,2,90,1672600000,1672700000,2,6002,12,85,150,1672617800,0,0);
INSERT INTO knowledge_graph_node_properties (Id,NodeId,PropertyKey,PropertyValue,DataType,IsPrimary,CreatedAt,UpdatedAt,SourceSystem,ConfidenceScore,ValidFrom,ValidTo,Version,OwnerId,Annotation,ConversionRate,UsageCount,LastAccessed,IsDeprecated,DeprecationReason) VALUES (3,5003,3,300,1,1,1672704000,1672704100,1,98,1672700000,1672800000,3,6003,15,90,250,1672704200,0,0);

-- External API usage summary
CREATE TABLE external_api_usage_summary
(
    Id INTEGER PRIMARY KEY,
    ApiId INTEGER,
    ConsumerId INTEGER,
    RequestCount INTEGER,
    SuccessCount INTEGER,
    FailureCount INTEGER,
    AvgLatencyMs INTEGER,
    DataTransferredBytes INTEGER,
    PeakHour INTEGER,
    FirstUsedDate INTEGER,
    LastUsedDate INTEGER,
    ApiVersion INTEGER,
    SubscriptionLevel INTEGER,
    RateLimitExceededCount INTEGER,
    QuotaRemaining INTEGER,
    IsActive INTEGER,
    BillingPeriod INTEGER,
    CostIncurred INTEGER,
    AlertFlag INTEGER,
    DocumentationURL INTEGER
);
INSERT INTO external_api_usage_summary (Id,ApiId,ConsumerId,RequestCount,SuccessCount,FailureCount,AvgLatencyMs,DataTransferredBytes,PeakHour,FirstUsedDate,LastUsedDate,ApiVersion,SubscriptionLevel,RateLimitExceededCount,QuotaRemaining,IsActive,BillingPeriod,CostIncurred,AlertFlag,DocumentationURL) VALUES (1,8001,9001,5000,4800,200,120,1048576,14,1672531200,1672617600,1,2,5,1000,1,202301,1500,0,10001);
INSERT INTO external_api_usage_summary (Id,ApiId,ConsumerId,RequestCount,SuccessCount,FailureCount,AvgLatencyMs,DataTransferredBytes,PeakHour,FirstUsedDate,LastUsedDate,ApiVersion,SubscriptionLevel,RateLimitExceededCount,QuotaRemaining,IsActive,BillingPeriod,CostIncurred,AlertFlag,DocumentationURL) VALUES (2,8002,9002,3000,2950,50,100,524288,10,1672617600,1672704000,2,1,2,2000,1,202302,900,0,10002);
INSERT INTO external_api_usage_summary (Id,ApiId,ConsumerId,RequestCount,SuccessCount,FailureCount,AvgLatencyMs,DataTransferredBytes,PeakHour,FirstUsedDate,LastUsedDate,ApiVersion,SubscriptionLevel,RateLimitExceededCount,QuotaRemaining,IsActive,BillingPeriod,CostIncurred,AlertFlag,DocumentationURL) VALUES (3,8003,9003,8000,7900,100,150,2097152,16,1672704000,1672790400,1,3,10,500,1,202303,2500,1,10003);