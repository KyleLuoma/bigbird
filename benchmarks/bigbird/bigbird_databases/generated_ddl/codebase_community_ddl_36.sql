-- Knowledge base authors metadata
CREATE TABLE knowledge_base_authors
(
    Id INTEGER NOT NULL PRIMARY KEY,
    UserId INTEGER NULL,
    FirstName TEXT NULL,
    LastName TEXT NULL,
    Email TEXT NULL,
    Bio TEXT NULL,
    JoinedDate DATETIME NULL,
    LastContributionDate DATETIME NULL,
    TotalArticles INTEGER NULL,
    ReputationScore INTEGER NULL,
    IsActive BOOLEAN NULL,
    ProfilePictureUrl TEXT NULL,
    Country TEXT NULL,
    Timezone TEXT NULL,
    ExpertiseArea TEXT NULL,
    Role TEXT NULL,
    PhoneNumber TEXT NULL,
    SocialMediaHandle TEXT NULL,
    AwardsCount INTEGER NULL,
    CertificationLevel TEXT NULL
);

INSERT INTO knowledge_base_authors (Id,UserId,FirstName,LastName,Email,Bio,JoinedDate,LastContributionDate,TotalArticles,ReputationScore,IsActive,ProfilePictureUrl,Country,Timezone,ExpertiseArea,Role,PhoneNumber,SocialMediaHandle,AwardsCount,CertificationLevel) VALUES (1,101,John,Doe,john.doe@example.com,Technical writer,2022-01-15 08:30:00,2023-12-01 14:20:00,45,1200,1,https://example.com/pic1.jpg,UnitedStates,EST,Databases,SeniorWriter,5551234567,johndoe,3,Expert);
INSERT INTO knowledge_base_authors (Id,UserId,FirstName,LastName,Email,Bio,JoinedDate,LastContributionDate,TotalArticles,ReputationScore,IsActive,ProfilePictureUrl,Country,Timezone,ExpertiseArea,Role,PhoneNumber,SocialMediaHandle,AwardsCount,CertificationLevel) VALUES (2,102,Jane,Smith,jane.smith@example.com,Content strategist,2021-06-20 09:15:00,2023-11-20 10:05:00,30,950,1,https://example.com/pic2.jpg,Canada,PST,Security,LeadStrategist,5559876543,janesmith,1,Advanced);
INSERT INTO knowledge_base_authors (Id,UserId,FirstName,LastName,Email,Bio,JoinedDate,LastContributionDate,TotalArticles,ReputationScore,IsActive,ProfilePictureUrl,Country,Timezone,ExpertiseArea,Role,PhoneNumber,SocialMediaHandle,AwardsCount,CertificationLevel) VALUES (3,103,Emily,Jones,emily.jones@example.com,Editor,2020-03-05 11:45:00,2023-10-15 16:40:00,60,1800,1,https://example.com/pic3.jpg,UnitedKingdom,GMT,Programming,Editor,5552468101,emilyj,5,Master);


-- External API contracts information
CREATE TABLE external_api_contracts
(
    ContractId INTEGER NOT NULL PRIMARY KEY,
    ProviderName TEXT NULL,
    ApiName TEXT NULL,
    Version TEXT NULL,
    ContractStartDate DATETIME NULL,
    ContractEndDate DATETIME NULL,
    MonthlyFee REAL NULL,
    AnnualFee REAL NULL,
    RequestLimit INTEGER NULL,
    DataRetentionDays INTEGER NULL,
    SupportLevel TEXT NULL,
    SLAHours INTEGER NULL,
    ContactEmail TEXT NULL,
    ContactPhone TEXT NULL,
    IsActive BOOLEAN NULL,
    BillingCycle TEXT NULL,
    PaymentMethod TEXT NULL,
    Currency TEXT NULL,
    LastRenewalDate DATETIME NULL,
    Remarks TEXT NULL
);

INSERT INTO external_api_contracts (ContractId,ProviderName,ApiName,Version,ContractStartDate,ContractEndDate,MonthlyFee,AnnualFee,RequestLimit,DataRetentionDays,SupportLevel,SLAHours,ContactEmail,ContactPhone,IsActive,BillingCycle,PaymentMethod,Currency,LastRenewalDate,Remarks) VALUES (1,AcmeData,UserAnalytics,v1,2022-02-01 00:00:00,2024-01-31 23:59:59,250.00,2800.00,1000000,365,Premium,24,support@acmedata.com,5551112222,1,Monthly,CreditCard,USD,2023-02-01 00:00:00,Renewal pending);
INSERT INTO external_api_contracts (ContractId,ProviderName,ApiName,Version,ContractStartDate,ContractEndDate,MonthlyFee,AnnualFee,RequestLimit,DataRetentionDays,SupportLevel,SLAHours,ContactEmail,ContactPhone,IsActive,BillingCycle,PaymentMethod,Currency,LastRenewalDate,Remarks) VALUES (2,DataStream,ContentFeed,v2,2021-07-15 00:00:00,2023-07-14 23:59:59,150.00,1650.00,500000,180,Standard,12,help@datastream.com,5553334444,0,Annual,Invoice,EUR,2022-07-15 00:00:00,Contract expired);
INSERT INTO external_api_contracts (ContractId,ProviderName,ApiName,Version,ContractStartDate,ContractEndDate,MonthlyFee,AnnualFee,RequestLimit,DataRetentionDays,SupportLevel,SLAHours,ContactEmail,ContactPhone,IsActive,BillingCycle,PaymentMethod,Currency,LastRenewalDate,Remarks) VALUES (3,GeoLocate,LocationLookup,v3,2023-01-01 00:00:00,2025-12-31 23:59:59,300.00,3300.00,2000000,730,Enterprise,48,geo@geolocate.com,5555556666,1,Monthly,WireTransfer,USD,2023-01-01 00:00:00,New contract signed);


-- Device energy consumption metrics
CREATE TABLE device_energy_consumption
(
    RecordId INTEGER NOT NULL PRIMARY KEY,
    DeviceId TEXT NULL,
    DeviceType TEXT NULL,
    LocationId INTEGER NULL,
    Timestamp DATETIME NULL,
    PowerWatts REAL NULL,
    EnergyKWh REAL NULL,
    Voltage REAL NULL,
    CurrentAmps REAL NULL,
    TemperatureC REAL NULL,
    CpuUsagePercent INTEGER NULL,
    MemoryUsagePercent INTEGER NULL,
    DiskIoOps INTEGER NULL,
    NetworkInMb REAL NULL,
    NetworkOutMb REAL NULL,
    BatteryLevelPercent INTEGER NULL,
    IsCharging BOOLEAN NULL,
    FirmwareVersion TEXT NULL,
    Manufacturer TEXT NULL,
    ModelNumber TEXT NULL
);

INSERT INTO device_energy_consumption (RecordId,DeviceId,DeviceType,LocationId,Timestamp,PowerWatts,EnergyKWh,Voltage,CurrentAmps,TemperatureC,CpuUsagePercent,MemoryUsagePercent,DiskIoOps,NetworkInMb,NetworkOutMb,BatteryLevelPercent,IsCharging,FirmwareVersion,Manufacturer,ModelNumber) VALUES (1,devA123,Server,10,2023-12-01 00:00:00,350.5,8.4,230,1.5,45,70,65,1200,200.5,150.3,0,0,FW1.2,TechCorp,SC-900);
INSERT INTO device_energy_consumption (RecordId,DeviceId,DeviceType,LocationId,Timestamp,PowerWatts,EnergyKWh,Voltage,CurrentAmps,TemperatureC,CpuUsagePercent,MemoryUsagePercent,DiskIoOps,NetworkInMb,NetworkOutMb,BatteryLevelPercent,IsCharging,FirmwareVersion,Manufacturer,ModelNumber) VALUES (2,devB456,Router,12,2023-12-01 00:05:00,45.3,0.9,120,0.38,38,30,40,300,80.1,70.2,0,0,FW2.0,NetGear,R-200);
INSERT INTO device_energy_consumption (RecordId,DeviceId,DeviceType,LocationId,Timestamp,PowerWatts,EnergyKWh,Voltage,CurrentAmps,TemperatureC,CpuUsagePercent,MemoryUsagePercent,DiskIoOps,NetworkInMb,NetworkOutMb,BatteryLevelPercent,IsCharging,FirmwareVersion,Manufacturer,ModelNumber) VALUES (3,devC789,Laptop,15,2023-12-01 00:10:00,65.0,1.2,19,3.4,42,55,70,150,30.2,28.5,85,1,FW3.5,CompTech,LT-5500);


-- User subscription history
CREATE TABLE user_subscription_history
(
    SubscriptionId INTEGER NOT NULL PRIMARY KEY,
    UserId INTEGER NULL,
    PlanName TEXT NULL,
    PlanLevel TEXT NULL,
    StartDate DATETIME NULL,
    EndDate DATETIME NULL,
    IsAutoRenew BOOLEAN NULL,
    PaymentMethod TEXT NULL,
    AmountPaid REAL NULL,
    Currency TEXT NULL,
    DiscountCode TEXT NULL,
    DiscountAmount REAL NULL,
    TaxAmount REAL NULL,
    TotalAmount REAL NULL,
    InvoiceNumber TEXT NULL,
    PaymentStatus TEXT NULL,
    CreatedBy TEXT NULL,
    CreatedDate DATETIME NULL,
    UpdatedBy TEXT NULL,
    UpdatedDate DATETIME NULL
);

INSERT INTO user_subscription_history (SubscriptionId,UserId,PlanName,PlanLevel,StartDate,EndDate,IsAutoRenew,PaymentMethod,AmountPaid,Currency,DiscountCode,DiscountAmount,TaxAmount,TotalAmount,InvoiceNumber,PaymentStatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate) VALUES (1,101,Pro,Gold,2023-01-01 00:00:00,2024-01-01 00:00:00,1,CreditCard,99.99,USD,NEWYEAR,10.00,8.99,98.98,INV1001,Completed,system,2023-01-01 00:00:00,system,2023-01-01 00:00:00);
INSERT INTO user_subscription_history (SubscriptionId,UserId,PlanName,PlanLevel,StartDate,EndDate,IsAutoRenew,PaymentMethod,AmountPaid,Currency,DiscountCode,DiscountAmount,TaxAmount,TotalAmount,InvoiceNumber,PaymentStatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate) VALUES (2,102,Basic,Silver,2022-06-15 00:00:00,2023-06-15 00:00:00,0,PayPal,49.99,USD,,0.00,4.00,53.99,INV1002,Failed,admin,2022-06-15 00:00:00,admin,2022-06-15 00:00:00);
INSERT INTO user_subscription_history (SubscriptionId,UserId,PlanName,PlanLevel,StartDate,EndDate,IsAutoRenew,PaymentMethod,AmountPaid,Currency,DiscountCode,DiscountAmount,TaxAmount,TotalAmount,InvoiceNumber,PaymentStatus,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate) VALUES (3,103,Enterprise,Platinum,2023-03-01 00:00:00,2024-03-01 00:00:00,1,WireTransfer,199.99,USD,SPRING,20.00,16.00,195.99,INV1003,Completed,system,2023-03-01 00:00:00,system,2023-03-01 00:00:00);


-- Post content classification tags
CREATE TABLE post_content_classification
(
    ClassificationId INTEGER NOT NULL PRIMARY KEY,
    PostId INTEGER NULL,
    Category TEXT NULL,
    SubCategory TEXT NULL,
    ConfidenceScore REAL NULL,
    ClassifiedBy TEXT NULL,
    ClassificationDate DATETIME NULL,
    Source TEXT NULL,
    IsManual BOOLEAN NULL,
    ReviewStatus TEXT NULL,
    ReviewerId INTEGER NULL,
    ReviewDate DATETIME NULL,
    Comments TEXT NULL,
    AlgorithmVersion TEXT NULL,
    FeatureVector BLOB NULL,
    LanguageCode TEXT NULL,
    SensitiveFlag BOOLEAN NULL,
    SpamScore REAL NULL,
    RelevanceScore REAL NULL,
    SuggestedTags TEXT NULL
);

INSERT INTO post_content_classification (ClassificationId,PostId,Category,SubCategory,ConfidenceScore,ClassifiedBy,ClassificationDate,Source,IsManual,ReviewStatus,ReviewerId,ReviewDate,Comments,AlgorithmVersion,FeatureVector,LanguageCode,SensitiveFlag,SpamScore,RelevanceScore,SuggestedTags) VALUES (1,2001,Technology,Programming,0.95,AutoClassifier,2023-12-01 01:00:00,ModelA,0,Pending,0,NULL,Initial classification,v1.2,NULL,en,0,0.02,0.88,python;sql);
INSERT INTO post_content_classification (ClassificationId,PostId,Category,SubCategory,ConfidenceScore,ClassifiedBy,ClassificationDate,Source,IsManual,ReviewStatus,ReviewerId,ReviewDate,Comments,AlgorithmVersion,FeatureVector,LanguageCode,SensitiveFlag,SpamScore,RelevanceScore,SuggestedTags) VALUES (2,2002,Science,Physics,0.89,AutoClassifier,2023-12-01 01:05:00,ModelB,0,Approved,105,2023-12-01 02:00:00,Verified,v1.3,NULL,en,0,0.01,0.91,quantum;relativity);
INSERT INTO post_content_classification (ClassificationId,PostId,Category,SubCategory,ConfidenceScore,ClassifiedBy,ClassificationDate,Source,IsManual,ReviewStatus,ReviewerId,ReviewDate,Comments,AlgorithmVersion,FeatureVector,LanguageCode,SensitiveFlag,SpamScore,RelevanceScore,SuggestedTags) VALUES (3,2003,Health,Nutrition,0.78,HumanReviewer,2023-12-01 01:10:00,Manual,1,Approved,110,2023-12-01 02:30:00,Good content,v1.0,NULL,en,0,0.00,0.80,diet;vitamins);


-- Tag trend analysis statistics
CREATE TABLE tag_trend_analysis
(
    TrendId INTEGER NOT NULL PRIMARY KEY,
    TagName TEXT NULL,
    StartPeriod DATETIME NULL,
    EndPeriod DATETIME NULL,
    TotalPosts INTEGER NULL,
    NewPosts INTEGER NULL,
    AvgScore REAL NULL,
    AvgViewCount INTEGER NULL,
    GrowthRatePercent REAL NULL,
    DeclineRatePercent REAL NULL,
    SeasonalPeakMonth INTEGER NULL,
    SeasonalLowMonth INTEGER NULL,
    RelatedTags TEXT NULL,
    InfluencerUserId INTEGER NULL,
    InfluencerPostId INTEGER NULL,
    SentimentScore REAL NULL,
    IsTrending BOOLEAN NULL,
    LastUpdated DATETIME NULL,
    DataSource TEXT NULL,
    Notes TEXT NULL
);

INSERT INTO tag_trend_analysis (TrendId,TagName,StartPeriod,EndPeriod,TotalPosts,NewPosts,AvgScore,AvgViewCount,GrowthRatePercent,DeclineRatePercent,SeasonalPeakMonth,SeasonalLowMonth,RelatedTags,InfluencerUserId,InfluencerPostId,SentimentScore,IsTrending,LastUpdated,DataSource,Notes) VALUES (1,python,2023-01-01 00:00:00,2023-12-31 23:59:59,12500,800,2.5,15000,12.5,0,6,1,programming;django,101,2001,0.85,1,2023-12-31 23:59:59,AnalyticsEngine,Steady growth);
INSERT INTO tag_trend_analysis (TrendId,TagName,StartPeriod,EndPeriod,TotalPosts,NewPosts,AvgScore,AvgViewCount,GrowthRatePercent,DeclineRatePercent,SeasonalPeakMonth,SeasonalLowMonth,RelatedTags,InfluencerUserId,InfluencerPostId,SentimentScore,IsTrending,LastUpdated,DataSource,Notes) VALUES (2,java,2023-01-01 00:00:00,2023-12-31 23:59:59,9800,600,2.2,13000,8.0,0,9,2,programming;spring,102,2002,0.78,0,2023-12-31 23:59:59,AnalyticsEngine,Stable);
INSERT INTO tag_trend_analysis (TrendId,TagName,StartPeriod,EndPeriod,TotalPosts,NewPosts,AvgScore,AvgViewCount,GrowthRatePercent,DeclineRatePercent,SeasonalPeakMonth,SeasonalLowMonth,RelatedTags,InfluencerUserId,InfluencerPostId,SentimentScore,IsTrending,LastUpdated,DataSource,Notes) VALUES (3,sql,2023-01-01 00:00:00,2023-12-31 23:59:59,15000,950,2.8,17000,15.0,0,3,11,database;postgresql,103,2003,0.90,1,2023-12-31 23:59:59,AnalyticsEngine,High demand);


-- Forum event attendance records
CREATE TABLE forum_event_attendance
(
    AttendanceId INTEGER NOT NULL PRIMARY KEY,
    EventId INTEGER NULL,
    UserId INTEGER NULL,
    RegistrationDate DATETIME NULL,
    AttendanceStatus TEXT NULL,
    CheckInTime DATETIME NULL,
    CheckOutTime DATETIME NULL,
    TicketType TEXT NULL,
    SeatNumber TEXT NULL,
    FeedbackScore INTEGER NULL,
    Comments TEXT NULL,
    DeviceUsed TEXT NULL,
    IPAddress TEXT NULL,
    LocationId INTEGER NULL,
    IsVirtual BOOLEAN NULL,
    VirtualPlatform TEXT NULL,
    SessionCount INTEGER NULL,
    TotalDurationMinutes INTEGER NULL,
    SponsorCode TEXT NULL,
    CreatedBy TEXT NULL
);

INSERT INTO forum_event_attendance (AttendanceId,EventId,UserId,RegistrationDate,AttendanceStatus,CheckInTime,CheckOutTime,TicketType,SeatNumber,FeedbackScore,Comments,DeviceUsed,IPAddress,LocationId,IsVirtual,VirtualPlatform,SessionCount,TotalDurationMinutes,SponsorCode,CreatedBy) VALUES (1,5001,101,2023-11-01 09:00:00,Confirmed,2023-11-10 09:05:00,2023-11-10 12:30:00,Full,12A,9,Great session,Desktop,192.168.1.10,20,0,,1,210,SP001,system);
INSERT INTO forum_event_attendance (AttendanceId,EventId,UserId,RegistrationDate,AttendanceStatus,CheckInTime,CheckOutTime,TicketType,SeatNumber,FeedbackScore,Comments,DeviceUsed,IPAddress,LocationId,IsVirtual,VirtualPlatform,SessionCount,TotalDurationMinutes,SponsorCode,CreatedBy) VALUES (2,5002,102,2023-11-05 10:15:00,Cancelled,NULL,NULL,Online,NULL,0,Cancelled due to conflict,Mobile,10.0.0.5,21,1,Zoom,0,0,SP002,admin);
INSERT INTO forum_event_attendance (AttendanceId,EventId,UserId,RegistrationDate,AttendanceStatus,CheckInTime,CheckOutTime,TicketType,SeatNumber,FeedbackScore,Comments,DeviceUsed,IPAddress,LocationId,IsVirtual,VirtualPlatform,SessionCount,TotalDurationMinutes,SponsorCode,CreatedBy) VALUES (3,5003,103,2023-11-07 14:20:00,Confirmed,2023-11-20 14:25:00,2023-11-20 17:00:00,Half,7B,8,Informative,Tablet,172.16.0.2,22,0,,2,155,SP003,system);


-- Advertiser payment schedule
CREATE TABLE advertiser_payment_schedule
(
    ScheduleId INTEGER NOT NULL PRIMARY KEY,
    AdvertiserId INTEGER NULL,
    CampaignId INTEGER NULL,
    DueDate DATETIME NULL,
    AmountDue REAL NULL,
    Currency TEXT NULL,
    PaymentMethod TEXT NULL,
    Status TEXT NULL,
    ReminderSent BOOLEAN NULL,
    LateFeeApplied BOOLEAN NULL,
    LateFeeAmount REAL NULL,
    PaidDate DATETIME NULL,
    TransactionId TEXT NULL,
    CreatedBy TEXT NULL,
    CreatedDate DATETIME NULL,
    UpdatedBy TEXT NULL,
    UpdatedDate DATETIME NULL,
    Notes TEXT NULL,
    FiscalQuarter INTEGER NULL,
    FiscalYear INTEGER NULL
);

INSERT INTO advertiser_payment_schedule (ScheduleId,AdvertiserId,CampaignId,DueDate,AmountDue,Currency,PaymentMethod,Status,ReminderSent,LateFeeApplied,LateFeeAmount,PaidDate,TransactionId,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,Notes,FiscalQuarter,FiscalYear) VALUES (1,3001,4001,2023-12-15 00:00:00,5000.00,USD,CreditCard,Pending,1,0,0.00,NULL,TXN1001,system,2023-11-01 09:00:00,system,2023-11-01 09:00:00,First reminder,4,2023);
INSERT INTO advertiser_payment_schedule (ScheduleId,AdvertiserId,CampaignId,DueDate,AmountDue,Currency,PaymentMethod,Status,ReminderSent,LateFeeApplied,LateFeeAmount,PaidDate,TransactionId,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,Notes,FiscalQuarter,FiscalYear) VALUES (2,3002,4002,2023-11-30 00:00:00,7500.00,EUR,WireTransfer,Paid,1,0,0.00,2023-11-28 15:30:00,TXN1002,admin,2023-10-15 10:00:00,admin,2023-10-15 10:00:00,Paid on time,4,2023);
INSERT INTO advertiser_payment_schedule (ScheduleId,AdvertiserId,CampaignId,DueDate,AmountDue,Currency,PaymentMethod,Status,ReminderSent,LateFeeApplied,LateFeeAmount,PaidDate,TransactionId,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,Notes,FiscalQuarter,FiscalYear) VALUES (3,3003,4003,2023-12-01 00:00:00,6200.00,USD,PayPal,Overdue,1,1,200.00,2023-12-10 11:45:00,TXN1003,system,2023-11-05 08:30:00,system,2023-11-05 08:30:00,Late fee applied,4,2023);


-- Site content archive metadata
CREATE TABLE site_content_archive
(
    ArchiveId INTEGER NOT NULL PRIMARY KEY,
    OriginalPostId INTEGER NULL,
    ArchiveDate DATETIME NULL,
    ArchivedBy TEXT NULL,
    ArchiveReason TEXT NULL,
    ContentHash TEXT NULL,
    FilePath TEXT NULL,
    FileSizeBytes INTEGER NULL,
    IsCompressed BOOLEAN NULL,
    CompressionMethod TEXT NULL,
    RetentionPeriodDays INTEGER NULL,
    ExpirationDate DATETIME NULL,
    RestoreRequested BOOLEAN NULL,
    RestoreRequestedDate DATETIME NULL,
    RestoreStatus TEXT NULL,
    RestoreCompletedDate DATETIME NULL,
    AccessLevel TEXT NULL,
    EncryptionKeyId TEXT NULL,
    Notes TEXT NULL,
    LastModified DATETIME NULL
);

INSERT INTO site_content_archive (ArchiveId,OriginalPostId,ArchiveDate,ArchivedBy,ArchiveReason,ContentHash,FilePath,FileSizeBytes,IsCompressed,CompressionMethod,RetentionPeriodDays,ExpirationDate,RestoreRequested,RestoreRequestedDate,RestoreStatus,RestoreCompletedDate,AccessLevel,EncryptionKeyId,Notes,LastModified) VALUES (1,2001,2023-12-01 02:00:00,system,Outdated content,abc123def456,/archives/post2001.xml,204800,1,GZIP,365,2024-12-01 00:00:00,0,NULL,Pending,NULL,Public,Key001,Initial archive,2023-12-01 02:00:00);
INSERT INTO site_content_archive (ArchiveId,OriginalPostId,ArchiveDate,ArchivedBy,ArchiveReason,ContentHash,FilePath,FileSizeBytes,IsCompressed,CompressionMethod,RetentionPeriodDays,ExpirationDate,RestoreRequested,RestoreRequestedDate,RestoreStatus,RestoreCompletedDate,AccessLevel,EncryptionKeyId,Notes,LastModified) VALUES (2,2002,2023-11-20 03:30:00,admin,Policy violation,def789ghi012,/archives/post2002.xml,307200,1,ZIP,180,2024-05-20 00:00:00,1,2023-12-05 09:15:00,Completed,2023-12-05 10:00:00,Restricted,Key002,Restored for audit,2023-12-05 10:00:00);
INSERT INTO site_content_archive (ArchiveId,OriginalPostId,ArchiveDate,ArchivedBy,ArchiveReason,ContentHash,FilePath,FileSizeBytes,IsCompressed,CompressionMethod,RetentionPeriodDays,ExpirationDate,RestoreRequested,RestoreRequestedDate,RestoreStatus,RestoreCompletedDate,AccessLevel,EncryptionKeyId,Notes,LastModified) VALUES (3,2003,2023-10-15 04:45:00,system,Low traffic,ghi345jkl678,/archives/post2003.xml,102400,0,NULL,90,2024-01-14 00:00:00,0,NULL,Pending,NULL,Public,Key003,Scheduled deletion,2023-10-15 04:45:00);


-- Learning path prerequisites mapping
CREATE TABLE learning_path_prerequisites
(
    MappingId INTEGER NOT NULL PRIMARY KEY,
    LearningPathId INTEGER NULL,
    PrerequisitePathId INTEGER NULL,
    RequiredScore INTEGER NULL,
    MinimumCompletionDate DATETIME NULL,
    IsMandatory BOOLEAN NULL,
    CreatedBy TEXT NULL,
    CreatedDate DATETIME NULL,
    UpdatedBy TEXT NULL,
    UpdatedDate DATETIME NULL,
    Notes TEXT NULL,
    SequenceOrder INTEGER NULL,
    IsActive BOOLEAN NULL,
    ApprovalStatus TEXT NULL,
    ApprovedBy TEXT NULL,
    ApprovalDate DATETIME NULL,
    OverrideAllowed BOOLEAN NULL,
    OverrideReason TEXT NULL,
    EffectiveFrom DATETIME NULL,
    EffectiveTo DATETIME NULL
);

INSERT INTO learning_path_prerequisites (MappingId,LearningPathId,PrerequisitePathId,RequiredScore,MinimumCompletionDate,IsMandatory,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,Notes,SequenceOrder,IsActive,ApprovalStatus,ApprovedBy,ApprovalDate,OverrideAllowed,OverrideReason,EffectiveFrom,EffectiveTo) VALUES (1,10,5,80,2023-01-01 00:00:00,1,system,2023-02-01 09:00:00,system,2023-02-01 09:00:00,Core prerequisite,1,1,Approved,admin,2023-02-01 09:15:00,0,NULL,2023-02-01 00:00:00,2025-01-31 23:59:59);
INSERT INTO learning_path_prerequisites (MappingId,LearningPathId,PrerequisitePathId,RequiredScore,MinimumCompletionDate,IsMandatory,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,Notes,SequenceOrder,IsActive,ApprovalStatus,ApprovedBy,ApprovalDate,OverrideAllowed,OverrideReason,EffectiveFrom,EffectiveTo) VALUES (2,12,8,70,2023-05-01 00:00:00,0,admin,2023-06-01 10:30:00,admin,2023-06-01 10:30:00,Optional prerequisite,2,1,Pending,NULL,NULL,0,NULL,2023-06-01 00:00:00,2024-12-31 23:59:59);
INSERT INTO learning_path_prerequisites (MappingId,LearningPathId,PrerequisitePathId,RequiredScore,MinimumCompletionDate,IsMandatory,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,Notes,SequenceOrder,IsActive,ApprovalStatus,ApprovedBy,ApprovalDate,OverrideAllowed,OverrideReason,EffectiveFrom,EffectiveTo) VALUES (3,15,10,85,2023-09-01 00:00:00,1,system,2023-09-15 08:45:00,system,2023-09-15 08:45:00,Required for advanced track,3,1,Approved,admin,2023-09-15 09:00:00,0,NULL,2023-09-15 00:00:00,2026-12-31 23:59:59);


-- Post supplementary information
CREATE TABLE post_supplementary_info
(
    SupplementId INTEGER NOT NULL PRIMARY KEY,
    PostId INTEGER NULL,
    SupplementType TEXT NULL,
    DataKey TEXT NULL,
    DataValue TEXT NULL,
    CreatedBy TEXT NULL,
    CreatedDate DATETIME NULL,
    UpdatedBy TEXT NULL,
    UpdatedDate DATETIME NULL,
    IsActive BOOLEAN NULL,
    SourceSystem TEXT NULL,
    ValidationStatus TEXT NULL,
    ValidationDate DATETIME NULL,
    ConfidenceScore REAL NULL,
    Remarks TEXT NULL,
    AttachmentUrl TEXT NULL,
    ExpirationDate DATETIME NULL,
    RetentionPolicy TEXT NULL,
    AuditLogId INTEGER NULL,
    VersionNumber INTEGER NULL
);

INSERT INTO post_supplementary_info (SupplementId,PostId,SupplementType,DataKey,DataValue,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,IsActive,SourceSystem,ValidationStatus,ValidationDate,ConfidenceScore,Remarks,AttachmentUrl,ExpirationDate,RetentionPolicy,AuditLogId,VersionNumber) VALUES (1,2001,Metadata,author_bio,Senior software engineer,system,2023-12-01 05:00:00,system,2023-12-01 05:00:00,1,ContentEngine,Validated,2023-12-01 05:30:00,0.98,Verified biography,NULL,NULL,Standard,101,1);
INSERT INTO post_supplementary_info (SupplementId,PostId,SupplementType,DataKey,DataValue,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,IsActive,SourceSystem,ValidationStatus,ValidationDate,ConfidenceScore,Remarks,AttachmentUrl,ExpirationDate,RetentionPolicy,AuditLogId,VersionNumber) VALUES (2,2002,Reference,doi,10.1000/xyz123,admin,2023-12-02 06:15:00,admin,2023-12-02 06:15:00,1,ExternalAPI,Pending,NULL,0.85,Pending verification,https://doi.org/10.1000/xyz123,NULL,LongTerm,102,1);
INSERT INTO post_supplementary_info (SupplementId,PostId,SupplementType,DataKey,DataValue,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,IsActive,SourceSystem,ValidationStatus,ValidationDate,ConfidenceScore,Remarks,AttachmentUrl,ExpirationDate,RetentionPolicy,AuditLogId,VersionNumber) VALUES (3,2003,Analytics,read_time_seconds,300,system,2023-12-03 07:45:00,system,2023-12-03 07:45:00,1,AnalyticsEngine,Validated,2023-12-03 08:00:00,0.99,Estimated read time,NULL,NULL,ShortTerm,103,2);