-- External data feeds metadata
CREATE TABLE external_data_feeds
(
    Id INTEGER NOT NULL PRIMARY KEY,
    FeedName TEXT NULL,
    SourceSystem TEXT NULL,
    Format TEXT NULL,
    FrequencyHours INTEGER NULL,
    IsActive BOOLEAN NULL,
    LastFetched DATETIME NULL,
    RecordCount INTEGER NULL,
    ErrorCount INTEGER NULL,
    AvgLatencyMs INTEGER NULL,
    CreatedAt DATETIME NULL,
    UpdatedAt DATETIME NULL,
    OwnerUserId INTEGER NULL,
    Description TEXT NULL,
    ApiEndpoint TEXT NULL,
    AuthToken TEXT NULL,
    DataRetentionDays INTEGER NULL,
    PartitionKey TEXT NULL,
    CompressionType TEXT NULL,
    ChecksumAlgorithm TEXT NULL
);

INSERT INTO external_data_feeds (Id,FeedName,SourceSystem,Format,FrequencyHours,IsActive,LastFetched,RecordCount,ErrorCount,AvgLatencyMs,CreatedAt,UpdatedAt,OwnerUserId,Description,ApiEndpoint,AuthToken,DataRetentionDays,PartitionKey,CompressionType,ChecksumAlgorithm)
VALUES (1,'UserActivity','AnalyticsPlatform','JSON',24,1,'2025-12-01 08:15:00',124500,2,350,'2025-01-10 09:00:00','2025-12-01 08:15:00',42,'Daily dump of user activity','https://api.example.com/feeds/useractivity','token123',30,'region_us','gzip','MD5');

INSERT INTO external_data_feeds (Id,FeedName,SourceSystem,Format,FrequencyHours,IsActive,LastFetched,RecordCount,ErrorCount,AvgLatencyMs,CreatedAt,UpdatedAt,OwnerUserId,Description,ApiEndpoint,AuthToken,DataRetentionDays,PartitionKey,CompressionType,ChecksumAlgorithm)
VALUES (2,'SalesMetrics','CRM','CSV',12,1,'2025-12-01 07:45:00',8760,0,210,'2024-11-15 10:30:00','2025-12-01 07:45:00',57,'CSV export of sales metrics','https://api.example.com/feeds/sales','saleskey','60','region_eu','zip','SHA1');

INSERT INTO external_data_feeds (Id,FeedName,SourceSystem,Format,FrequencyHours,IsActive,LastFetched,RecordCount,ErrorCount,AvgLatencyMs,CreatedAt,UpdatedAt,OwnerUserId,Description,ApiEndpoint,AuthToken,DataRetentionDays,PartitionKey,CompressionType,ChecksumAlgorithm)
VALUES (3,'InventorySnapshot','WarehouseSystem','XML',48,0,NULL,0,0,NULL,'2023-06-20 14:00:00','2023-06-20 14:00:00',89,'Periodic inventory snapshot','https://api.example.com/feeds/inventory','invtoken','90','region_apac','none','SHA256');

-- Device inventory records
CREATE TABLE device_inventory
(
    Id INTEGER NOT NULL PRIMARY KEY,
    DeviceSerial TEXT NULL,
    ModelNumber TEXT NULL,
    FirmwareVersion TEXT NULL,
    PurchaseDate DATE NULL,
    WarrantyEndDate DATE NULL,
    LocationId INTEGER NULL,
    OwnerUserId INTEGER NULL,
    Status TEXT NULL,
    LastMaintenanceDate DATE NULL,
    NextMaintenanceDue DATE NULL,
    IpAddress TEXT NULL,
    MacAddress TEXT NULL,
    CpuCores INTEGER NULL,
    MemoryGb INTEGER NULL,
    StorageGb INTEGER NULL,
    PowerSource TEXT NULL,
    TemperatureC REAL NULL,
    IsOnline BOOLEAN NULL,
    SerialNumberHash TEXT NULL,
    AssetTag TEXT NULL
);

INSERT INTO device_inventory (Id,DeviceSerial,ModelNumber,FirmwareVersion,PurchaseDate,WarrantyEndDate,LocationId,OwnerUserId,Status,LastMaintenanceDate,NextMaintenanceDue,IpAddress,MacAddress,CpuCores,MemoryGb,StorageGb,PowerSource,TemperatureC,IsOnline,SerialNumberHash,AssetTag)
VALUES (101,'SN1001','MDL-X1','v1.2.3','2022-03-15','2025-03-15',12,34,'Active','2025-06-01','2025-12-01','10.0.0.5','AA:BB:CC:DD:EE:01',4,16,256,'Mains',35.5,1,'hash001','AT-1001');

INSERT INTO device_inventory (Id,DeviceSerial,ModelNumber,FirmwareVersion,PurchaseDate,WarrantyEndDate,LocationId,OwnerUserId,Status,LastMaintenanceDate,NextMaintenanceDue,IpAddress,MacAddress,CpuCores,MemoryGb,StorageGb,PowerSource,TemperatureC,IsOnline,SerialNumberHash,AssetTag)
VALUES (102,'SN1002','MDL-X2','v2.0.0','2021-11-20','2024-11-20',7,58,'Decommissioned','2024-05-10','2024-11-10','10.0.0.6','AA:BB:CC:DD:EE:02',8,32,512,'Battery',40.0,0,'hash002','AT-1002');

INSERT INTO device_inventory (Id,DeviceSerial,ModelNumber,FirmwareVersion,PurchaseDate,WarrantyEndDate,LocationId,OwnerUserId,Status,LastMaintenanceDate,NextMaintenanceDue,IpAddress,MacAddress,CpuCores,MemoryGb,StorageGb,PowerSource,TemperatureC,IsOnline,SerialNumberHash,AssetTag)
VALUES (103,'SN1003','MDL-Z1','v3.1.4','2023-01-10','2026-01-10',3,22,'Active','2025-02-20','2025-08-20','10.0.0.7','AA:BB:CC:DD:EE:03',2,8,128,'Solar',30.2,1,'hash003','AT-1003');

-- Corporate training modules
CREATE TABLE corporate_training_modules
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ModuleCode TEXT NULL,
    Title TEXT NULL,
    Category TEXT NULL,
    DifficultyLevel TEXT NULL,
    EstimatedDurationMin INTEGER NULL,
    CreatorUserId INTEGER NULL,
    CreatedDate DATETIME NULL,
    LastUpdatedDate DATETIME NULL,
    IsMandatory BOOLEAN NULL,
    Language TEXT NULL,
    VersionNumber TEXT NULL,
    PrerequisiteModuleId INTEGER NULL,
    CertificationEarned TEXT NULL,
    MaxAttempts INTEGER NULL,
    PassScore REAL NULL,
    VideoUrl TEXT NULL,
    SlideDeckUrl TEXT NULL,
    ResourceLink TEXT NULL,
    FeedbackScoreAvg REAL NULL
);

INSERT INTO corporate_training_modules (Id,ModuleCode,Title,Category,DifficultyLevel,EstimatedDurationMin,CreatorUserId,CreatedDate,LastUpdatedDate,IsMandatory,Language,VersionNumber,PrerequisiteModuleId,CertificationEarned,MaxAttempts,PassScore,VideoUrl,SlideDeckUrl,ResourceLink,FeedbackScoreAvg)
VALUES (201,'TM101','Introduction to Data Ethics','Compliance','Beginner',45,12,'2022-05-01 09:00:00','2024-11-20 12:30:00',1,'English','1.0',NULL,'Data Ethics Certificate',3,80.0,'https://videos.example.com/tm101.mp4','https://slides.example.com/tm101.pdf','https://resources.example.com/tm101','4.5');

INSERT INTO corporate_training_modules (Id,ModuleCode,Title,Category,DifficultyLevel,EstimatedDurationMin,CreatorUserId,CreatedDate,LastUpdatedDate,IsMandatory,Language,VersionNumber,PrerequisiteModuleId,CertificationEarned,MaxAttempts,PassScore,VideoUrl,SlideDeckUrl,ResourceLink,FeedbackScoreAvg)
VALUES (202,'TM202','Advanced Cloud Security','Security','Advanced',120,27,'2023-01-15 10:15:00','2025-03-10 08:45:00',0,'English','2.1',201,'Cloud Security Expert',2,85.0,'https://videos.example.com/tm202.mp4','https://slides.example.com/tm202.pdf','https://resources.example.com/tm202','4.2');

INSERT INTO corporate_training_modules (Id,ModuleCode,Title,Category,DifficultyLevel,EstimatedDurationMin,CreatorUserId,CreatedDate,LastUpdatedDate,IsMandatory,Language,VersionNumber,PrerequisiteModuleId,CertificationEarned,MaxAttempts,PassScore,VideoUrl,SlideDeckUrl,ResourceLink,FeedbackScoreAvg)
VALUES (203,'TM303','Project Management Essentials','Management','Intermediate',90,33,'2021-09-20 14:00:00','2024-07-05 11:20:00',1,'Spanish','3.0',NULL,'PM Fundamentals Certificate',3,75.0,'https://videos.example.com/tm303.mp4','https://slides.example.com/tm303.pdf','https://resources.example.com/tm303','4.7');

-- Supplier invoice records
CREATE TABLE supplier_invoice_records
(
    Id INTEGER NOT NULL PRIMARY KEY,
    SupplierId INTEGER NULL,
    InvoiceNumber TEXT NULL,
    InvoiceDate DATE NULL,
    DueDate DATE NULL,
    TotalAmount REAL NULL,
    Currency TEXT NULL,
    PaidDate DATE NULL,
    PaymentMethod TEXT NULL,
    Status TEXT NULL,
    CreatedByUserId INTEGER NULL,
    ApprovedByUserId INTEGER NULL,
    RemittanceAdviceUrl TEXT NULL,
    TaxAmount REAL NULL,
    DiscountAmount REAL NULL,
    NetAmount REAL NULL,
    Comments TEXT NULL,
    BatchNumber TEXT NULL,
    ExchangeRate REAL NULL,
    FiscalYear INTEGER NULL
);

INSERT INTO supplier_invoice_records (Id,SupplierId,InvoiceNumber,InvoiceDate,DueDate,TotalAmount,Currency,PaidDate,PaymentMethod,Status,CreatedByUserId,ApprovedByUserId,RemittanceAdviceUrl,TaxAmount,DiscountAmount,NetAmount,Comments,BatchNumber,ExchangeRate,FiscalYear)
VALUES (301,45,'INV-1001','2024-04-01','2024-04-30',15000.00,'USD','2024-04-25','WireTransfer','Paid',12,18,'https://docs.example.com/remit/1001.pdf',1500.00,200.00,13300.00,'Quarterly supply','BATCH-01',1.0,2024);

INSERT INTO supplier_invoice_records (Id,SupplierId,InvoiceNumber,InvoiceDate,DueDate,TotalAmount,Currency,PaidDate,PaymentMethod,Status,CreatedByUserId,ApprovedByUserId,RemittanceAdviceUrl,TaxAmount,DiscountAmount,NetAmount,Comments,BatchNumber,ExchangeRate,FiscalYear)
VALUES (302,78,'INV-1002','2024-05-15','2024-06-14',8000.00,'EUR',NULL,'CreditCard','Pending',14,NULL,'https://docs.example.com/remit/1002.pdf',800.00,0.00,7200.00,'May services','BATCH-02',1.1,2024);

INSERT INTO supplier_invoice_records (Id,SupplierId,InvoiceNumber,InvoiceDate,DueDate,TotalAmount,Currency,PaidDate,PaymentMethod,Status,CreatedByUserId,ApprovedByUserId,RemittanceAdviceUrl,TaxAmount,DiscountAmount,NetAmount,Comments,BatchNumber,ExchangeRate,FiscalYear)
VALUES (303,52,'INV-1003','2023-12-20','2024-01-19',23000.00,'GBP','2024-01-10','Check','Paid',22,27,'https://docs.example.com/remit/1003.pdf',2300.00,500.00,20100.00,'Year end purchase','BATCH-03',1.3,2023);

-- Marketing campaign performance
CREATE TABLE marketing_campaign_performance
(
    Id INTEGER NOT NULL PRIMARY KEY,
    CampaignId INTEGER NULL,
    StartDate DATE NULL,
    EndDate DATE NULL,
    BudgetUsd REAL NULL,
    SpendUsd REAL NULL,
    Impressions INTEGER NULL,
    Clicks INTEGER NULL,
    Conversions INTEGER NULL,
    CostPerClickUsd REAL NULL,
    CostPerConversionUsd REAL NULL,
    RevenueUsd REAL NULL,
    ReturnOnAdSpend REAL NULL,
    TargetAudience TEXT NULL,
    Channel TEXT NULL,
    CreativeId INTEGER NULL,
    ABTestGroup TEXT NULL,
    GeoTarget TEXT NULL,
    DeviceTarget TEXT NULL,
    FrequencyCap INTEGER NULL
);

INSERT INTO marketing_campaign_performance (Id,CampaignId,StartDate,EndDate,BudgetUsd,SpendUsd,Impressions,Clicks,Conversions,CostPerClickUsd,CostPerConversionUsd,RevenueUsd,ReturnOnAdSpend,TargetAudience,Channel,CreativeId,ABTestGroup,GeoTarget,DeviceTarget,FrequencyCap)
VALUES (401,9001,'2024-01-01','2024-03-31',50000.00,46200.00,12000000,35000,4200,1.32,11.00,78000.00,1.69,'Tech Professionals','Search',301,'A','NorthAmerica','Mobile',3);

INSERT INTO marketing_campaign_performance (Id,CampaignId,StartDate,EndDate,BudgetUsd,SpendUsd,Impressions,Clicks,Conversions,CostPerClickUsd,CostPerConversionUsd,RevenueUsd,ReturnOnAdSpend,TargetAudience,Channel,CreativeId,ABTestGroup,GeoTarget,DeviceTarget,FrequencyCap)
VALUES (402,9002,'2024-04-01','2024-06-30',75000.00,72000.00,18000000,54000,6000,1.33,12.00,95000.00,1.32,'Small Business','Display',302,'B','Europe','Desktop',2);

INSERT INTO marketing_campaign_performance (Id,CampaignId,StartDate,EndDate,BudgetUsd,SpendUsd,Impressions,Clicks,Conversions,CostPerClickUsd,CostPerConversionUsd,RevenueUsd,ReturnOnAdSpend,TargetAudience,Channel,CreativeId,ABTestGroup,GeoTarget,DeviceTarget,FrequencyCap)
VALUES (403,9003,'2024-07-01','2024-09-30',60000.00,58000.00,15000000,42000,5000,1.38,11.60,82000.00,1.41,'Enterprise','Social',303,'Control','Asia','Tablet',4);

-- Knowledge base revision history
CREATE TABLE knowledge_base_revision_history
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ArticleId INTEGER NULL,
    RevisionNumber INTEGER NULL,
    RevisedByUserId INTEGER NULL,
    RevisionDate DATETIME NULL,
    ChangeSummary TEXT NULL,
    ContentHash TEXT NULL,
    WordCount INTEGER NULL,
    SectionCount INTEGER NULL,
    TagsAdded TEXT NULL,
    TagsRemoved TEXT NULL,
    IsApproved BOOLEAN NULL,
    ApprovalDate DATETIME NULL,
    ApproverUserId INTEGER NULL,
    RevisionUrl TEXT NULL,
    EditDurationSec INTEGER NULL,
    ReviewerComments TEXT NULL,
    PriorVersionId INTEGER NULL,
    NextVersionId INTEGER NULL,
    PublicationStatus TEXT NULL
);

INSERT INTO knowledge_base_revision_history (Id,ArticleId,RevisionNumber,RevisedByUserId,RevisionDate,ChangeSummary,ContentHash,WordCount,SectionCount,TagsAdded,TagsRemoved,IsApproved,ApprovalDate,ApproverUserId,RevisionUrl,EditDurationSec,ReviewerComments,PriorVersionId,NextVersionId,PublicationStatus)
VALUES (501,1001,3,45,'2025-01-10 14:20:00','Added new FAQ section','hashrev3',2450,12,'faq,updates','oldtag',1,'2025-01-11 09:00:00',12,'https://kb.example.com/articles/1001/rev3','180','Looks good',2,4,'Published');

INSERT INTO knowledge_base_revision_history (Id,ArticleId,RevisionNumber,RevisedByUserId,RevisionDate,ChangeSummary,ContentHash,WordCount,SectionCount,TagsAdded,TagsRemoved,IsApproved,ApprovalDate,ApproverUserId,RevisionUrl,EditDurationSec,ReviewerComments,PriorVersionId,NextVersionId,PublicationStatus)
VALUES (502,1002,1,58,'2024-11-05 10:05:00','Initial draft','hashrev1',1300,8,'intro,setup','',0,NULL,NULL,'https://kb.example.com/articles/1002/rev1','240','Pending review',NULL,2,'Draft');

INSERT INTO knowledge_base_revision_history (Id,ArticleId,RevisionNumber,RevisedByUserId,RevisionDate,ChangeSummary,ContentHash,WordCount,SectionCount,TagsAdded,TagsRemoved,IsApproved,ApprovalDate,ApproverUserId,RevisionUrl,EditDurationSec,ReviewerComments,PriorVersionId,NextVersionId,PublicationStatus)
VALUES (503,1003,2,62,'2024-12-20 16:45:00','Updated code examples','hashrev2',1800,10,'code,example','example-old',1,'2024-12-22 08:30:00',22,'https://kb.example.com/articles/1003/rev2','300','Approved',1,3,'Published');

-- Legal case events
CREATE TABLE legal_case_events
(
    Id INTEGER NOT NULL PRIMARY KEY,
    CaseId INTEGER NULL,
    EventDate DATETIME NULL,
    EventType TEXT NULL,
    Description TEXT NULL,
    RecordedByUserId INTEGER NULL,
    DocumentUrl TEXT NULL,
    CourtLocation TEXT NULL,
    JudgeName TEXT NULL,
    Outcome TEXT NULL,
    PenaltyAmount REAL NULL,
    SettlementAmount REAL NULL,
    AttorneyId INTEGER NULL,
    PlaintiffId INTEGER NULL,
    DefendantId INTEGER NULL,
    HearingNumber INTEGER NULL,
    MotionFiled TEXT NULL,
    EvidenceCount INTEGER NULL,
    ConfidentialFlag BOOLEAN NULL,
    FollowUpDate DATE NULL
);

INSERT INTO legal_case_events (Id,CaseId,EventDate,EventType,Description,RecordedByUserId,DocumentUrl,CourtLocation,JudgeName,Outcome,PenaltyAmount,SettlementAmount,AttorneyId,PlaintiffId,DefendantId,HearingNumber,MotionFiled,EvidenceCount,ConfidentialFlag,FollowUpDate)
VALUES (601,2001,'2024-02-15 09:30:00','Filing','Complaint filed','34','https://legal.example.com/docs/complaint2001.pdf','Los Angeles District Court','Judge Smith','Pending',NULL,NULL,78,101,202,NULL,'Motion to Dismiss',5,0,'2024-03-01');

INSERT INTO legal_case_events (Id,CaseId,EventDate,EventType,Description,RecordedByUserId,DocumentUrl,CourtLocation,JudgeName,Outcome,PenaltyAmount,SettlementAmount,AttorneyId,PlaintiffId,DefendantId,HearingNumber,MotionFiled,EvidenceCount,ConfidentialFlag,FollowUpDate)
VALUES (602,2001,'2024-04-10 11:00:00','Hearing','Preliminary hearing','45','https://legal.example.com/docs/hearing2001.pdf','Los Angeles District Court','Judge Smith','Adjourned',NULL,NULL,78,101,202,1,'Motion for Summary Judgment',12,0,'2024-05-05');

INSERT INTO legal_case_events (Id,CaseId,EventDate,EventType,Description,RecordedByUserId,DocumentUrl,CourtLocation,JudgeName,Outcome,PenaltyAmount,SettlementAmount,AttorneyId,PlaintiffId,DefendantId,HearingNumber,MotionFiled,EvidenceCount,ConfidentialFlag,FollowUpDate)
VALUES (603,2001,'2024-07-20 14:15:00','Verdict','Final judgment rendered','58','https://legal.example.com/docs/verdict2001.pdf','Los Angeles District Court','Judge Smith','Defendant',250000.00,0,78,101,202,3,NULL,20,0,NULL);

-- Environmental monitoring stations
CREATE TABLE environmental_monitoring_stations
(
    Id INTEGER NOT NULL PRIMARY KEY,
    StationCode TEXT NULL,
    Name TEXT NULL,
    Latitude REAL NULL,
    Longitude REAL NULL,
    ElevationM REAL NULL,
    InstallationDate DATE NULL,
    LastCalibrationDate DATE NULL,
    SensorCount INTEGER NULL,
    DataRetentionDays INTEGER NULL,
    OwnerOrganization TEXT NULL,
    ContactEmail TEXT NULL,
    PowerSource TEXT NULL,
    NetworkType TEXT NULL,
    FirmwareVersion TEXT NULL,
    IsActive BOOLEAN NULL,
    AvgTemperatureC REAL NULL,
    AvgHumidityPct REAL NULL,
    AvgPM25 REAL NULL,
    SatelliteLink BOOLEAN NULL,
    MaintenanceSchedule TEXT NULL
);

INSERT INTO environmental_monitoring_stations (Id,StationCode,Name,Latitude,Longitude,ElevationM,InstallationDate,LastCalibrationDate,SensorCount,DataRetentionDays,OwnerOrganization,ContactEmail,PowerSource,NetworkType,FirmwareVersion,IsActive,AvgTemperatureC,AvgHumidityPct,AvgPM25,SatelliteLink,MaintenanceSchedule)
VALUES (701,'STN-01','River Valley','34.05','-118.25',250,'2021-06-15','2024-06-01',12,365,'Enviro Corp','contact@envirocorp.com','Solar','Cellular','v5.2',1,22.5,55.0,12.3,0,'Quarterly');

INSERT INTO environmental_monitoring_stations (Id,StationCode,Name,Latitude,Longitude,ElevationM,InstallationDate,LastCalibrationDate,SensorCount,DataRetentionDays,OwnerOrganization,ContactEmail,PowerSource,NetworkType,FirmwareVersion,IsActive,AvgTemperatureC,AvgHumidityPct,AvgPM25,SatelliteLink,MaintenanceSchedule)
VALUES (702,'STN-02','Mountain Peak','40.71','-74.00',1500,'2020-03-20','2024-03-20',8,730,'Geo Sensors','info@geosensors.io','Wind','Satellite','v4.9',1,5.2,30.0,3.1,1,'Biannual');

INSERT INTO environmental_monitoring_stations (Id,StationCode,Name,Latitude,Longitude,ElevationM,InstallationDate,LastCalibrationDate,SensorCount,DataRetentionDays,OwnerOrganization,ContactEmail,PowerSource,NetworkType,FirmwareVersion,IsActive,AvgTemperatureC,AvgHumidityPct,AvgPM25,SatelliteLink,MaintenanceSchedule)
VALUES (703,'STN-03','Coastal Edge','36.12','-115.17',5,'2022-11-05','2024-11-01',10,180,'Oceanic Labs','support@oceaniclabs.org','Mains','WiFi','v6.0',0,NULL,NULL,NULL,0,NULL);

-- Product release cycles
CREATE TABLE product_release_cycles
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ProductId INTEGER NULL,
    ReleaseVersion TEXT NULL,
    ReleaseDate DATE NULL,
    BuildNumber TEXT NULL,
    ReleaseManagerUserId INTEGER NULL,
    PlannedFeaturesCount INTEGER NULL,
    ImplementedFeaturesCount INTEGER NULL,
    BugsFound INTEGER NULL,
    BugsFixed INTEGER NULL,
    RegressionTestsRun INTEGER NULL,
    PassedRegressionPct REAL NULL,
    DeploymentEnvironment TEXT NULL,
    RolloutStartDate DATE NULL,
    RolloutEndDate DATE NULL,
    ReleaseNotesUrl TEXT NULL,
    IsHotfix BOOLEAN NULL,
    HotfixDetails TEXT NULL,
    CustomerImpactScore REAL NULL,
    PostReleaseReviewDate DATE NULL
);

INSERT INTO product_release_cycles (Id,ProductId,ReleaseVersion,ReleaseDate,BuildNumber,ReleaseManagerUserId,PlannedFeaturesCount,ImplementedFeaturesCount,BugsFound,BugsFixed,RegressionTestsRun,PassedRegressionPct,DeploymentEnvironment,RolloutStartDate,RolloutEndDate,ReleaseNotesUrl,IsHotfix,HotfixDetails,CustomerImpactScore,PostReleaseReviewDate)
VALUES (801,12,'1.2.0','2024-05-20','bld-20240520-01',34,25,24,40,38,1500,96.5,'Production','2024-05-21','2024-05-27','https://releases.example.com/1.2.0/notes','0',NULL,8.2,'2024-06-10');

INSERT INTO product_release_cycles (Id,ProductId,ReleaseVersion,ReleaseDate,BuildNumber,ReleaseManagerUserId,PlannedFeaturesCount,ImplementedFeaturesCount,BugsFound,BugsFixed,RegressionTestsRun,PassedRegressionPct,DeploymentEnvironment,RolloutStartDate,RolloutEndDate,ReleaseNotesUrl,IsHotfix,HotfixDetails,CustomerImpactScore,PostReleaseReviewDate)
VALUES (802,12,'1.2.1','2024-06-15','bld-20240615-02',34,5,5,10,10,500,98.0,'Production','2024-06-16','2024-06-18','https://releases.example.com/1.2.1/notes','1','Critical security patch',9.5,'2024-06-25');

INSERT INTO product_release_cycles (Id,ProductId,ReleaseVersion,ReleaseDate,BuildNumber,ReleaseManagerUserId,PlannedFeaturesCount,ImplementedFeaturesCount,BugsFound,BugsFixed,RegressionTestsRun,PassedRegressionPct,DeploymentEnvironment,RolloutStartDate,RolloutEndDate,ReleaseNotesUrl,IsHotfix,HotfixDetails,CustomerImpactScore,PostReleaseReviewDate)
VALUES (803,13,'3.0.0','2025-01-10','bld-20250110-01',45,30,30,50,48,2000,97.2,'Staging','2025-01-11','2025-01-20','https://releases.example.com/3.0.0/notes','0',NULL,7.8,'2025-02-05');

-- User reward programs
CREATE TABLE user_reward_programs
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ProgramName TEXT NULL,
    StartDate DATE NULL,
    EndDate DATE NULL,
    RewardType TEXT NULL,
    PointsRequired INTEGER NULL,
    RedemptionLimit INTEGER NULL,
    IsActive BOOLEAN NULL,
    CreatedByUserId INTEGER NULL,
    CreatedDate DATETIME NULL,
    UpdatedByUserId INTEGER NULL,
    UpdatedDate DATETIME NULL,
    EligibilityCriteria TEXT NULL,
    Description TEXT NULL,
    ImageUrl TEXT NULL,
    NotificationTemplateId INTEGER NULL,
    TierLevel INTEGER NULL,
    BonusMultiplier REAL NULL,
    ExpirationDays INTEGER NULL,
    RedemptionUrl TEXT NULL
);

INSERT INTO user_reward_programs (Id,ProgramName,StartDate,EndDate,RewardType,PointsRequired,RedemptionLimit,IsActive,CreatedByUserId,CreatedDate,UpdatedByUserId,UpdatedDate,EligibilityCriteria,Description,ImageUrl,NotificationTemplateId,TierLevel,BonusMultiplier,ExpirationDays,RedemptionUrl)
VALUES (901,'Q2 Contributor Bonus','2024-04-01','2024-06-30','Badge',1500,1,1,12,'2024-03-20 08:00:00',14,'2024-04-05 09:30:00','Post count > 100','Awarded for high contribution in Q2','https://images.example.com/reward/q2.png',301,2,1.5,90,'https://rewards.example.com/redeem/q2');

INSERT INTO user_reward_programs (Id,ProgramName,StartDate,EndDate,RewardType,PointsRequired,RedemptionLimit,IsActive,CreatedByUserId,CreatedDate,UpdatedByUserId,UpdatedDate,EligibilityCriteria,Description,ImageUrl,NotificationTemplateId,TierLevel,BonusMultiplier,ExpirationDays,RedemptionUrl)
VALUES (902,'Annual Loyalty Program','2024-01-01','2024-12-31','Points',5000,5,1,22,'2023-12-15 10:00:00',23,'2024-01-02 11:15:00','Membership > 1 year','Earn points for yearly activity','https://images.example.com/reward/annual.png',302,3,2.0,365,'https://rewards.example.com/redeem/annual');

INSERT INTO user_reward_programs (Id,ProgramName,StartDate,EndDate,RewardType,PointsRequired,RedemptionLimit,IsActive,CreatedByUserId,CreatedDate,UpdatedByUserId,UpdatedDate,EligibilityCriteria,Description,ImageUrl,NotificationTemplateId,TierLevel,BonusMultiplier,ExpirationDays,RedemptionUrl)
VALUES (903,'Bug Bash Sprint','2024-09-01','2024-09-15','Voucher',800,2,0,31,'2024-08-20 12:00:00',33,'2024-09-02 14:45:00','Report > 5 bugs','Voucher for top bug reporters','https://images.example.com/reward/bugbash.png',303,1,1.2,30,'https://rewards.example.com/redeem/bugbash');