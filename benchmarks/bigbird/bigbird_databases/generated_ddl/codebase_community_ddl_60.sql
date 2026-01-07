-- System metrics collected daily for each data center
CREATE TABLE system_metrics_daily
(
    Id INTEGER NOT NULL PRIMARY KEY,
    MetricDate DATE NULL,
    CpuUtilization INTEGER NULL,
    MemoryUtilization INTEGER NULL,
    DiskReadOps INTEGER NULL,
    DiskWriteOps INTEGER NULL,
    NetworkInBytes INTEGER NULL,
    NetworkOutBytes INTEGER NULL,
    ActiveSessions INTEGER NULL,
    FailedLogins INTEGER NULL,
    ErrorCount INTEGER NULL,
    AvgResponseTimeMs INTEGER NULL,
    DbConnectionCount INTEGER NULL,
    CacheHitRate INTEGER NULL,
    DiskSpaceFreeGb INTEGER NULL,
    UptimeSeconds INTEGER NULL,
    TemperatureC INTEGER NULL,
    PowerUsageKw INTEGER NULL,
    DataCenterId INTEGER NULL,
    RecordedBy TEXT NULL
);

INSERT INTO system_metrics_daily (Id,MetricDate,CpuUtilization,MemoryUtilization,DiskReadOps,DiskWriteOps,NetworkInBytes,NetworkOutBytes,ActiveSessions,FailedLogins,ErrorCount,AvgResponseTimeMs,DbConnectionCount,CacheHitRate,DiskSpaceFreeGb,UptimeSeconds,TemperatureC,PowerUsageKw,DataCenterId,RecordedBy) VALUES (1,'2023-01-01',45,68,12345,6789,1024000,2048000,120,3,5,250,85,92,250,86400,22,150,1,'monitor1');
INSERT INTO system_metrics_daily (Id,MetricDate,CpuUtilization,MemoryUtilization,DiskReadOps,DiskWriteOps,NetworkInBytes,NetworkOutBytes,ActiveSessions,FailedLogins,ErrorCount,AvgResponseTimeMs,DbConnectionCount,CacheHitRate,DiskSpaceFreeGb,UptimeSeconds,TemperatureC,PowerUsageKw,DataCenterId,RecordedBy) VALUES (2,'2023-01-02',52,71,13400,7200,1152000,2150000,135,4,2,230,90,94,240,87000,21,148,1,'monitor2');
INSERT INTO system_metrics_daily (Id,MetricDate,CpuUtilization,MemoryUtilization,DiskReadOps,DiskWriteOps,NetworkInBytes,NetworkOutBytes,ActiveSessions,FailedLogins,ErrorCount,AvgResponseTimeMs,DbConnectionCount,CacheHitRate,DiskSpaceFreeGb,UptimeSeconds,TemperatureC,PowerUsageKw,DataCenterId,RecordedBy) VALUES (3,'2023-01-03',48,65,12800,6900,1100000,2100000,128,2,3,240,88,93,245,86500,23,149,2,'monitor3');

-- Log of calls made to external services
CREATE TABLE external_api_call_log
(
    Id INTEGER NOT NULL PRIMARY KEY,
    CallTimestamp DATETIME NULL,
    ServiceName TEXT NULL,
    Endpoint TEXT NULL,
    HttpMethod TEXT NULL,
    HttpStatus INTEGER NULL,
    ResponseTimeMs INTEGER NULL,
    RequestPayloadSize INTEGER NULL,
    ResponsePayloadSize INTEGER NULL,
    ApiKeyId INTEGER NULL,
    ClientIp TEXT NULL,
    ServerIp TEXT NULL,
    ErrorMessage TEXT NULL,
    Retries INTEGER NULL,
    CorrelationId TEXT NULL,
    UserAgent TEXT NULL,
    AuthTokenId INTEGER NULL,
    Region TEXT NULL,
    ServiceVersion TEXT NULL,
    LatencyMs INTEGER NULL,
    Platform TEXT NULL
);

INSERT INTO external_api_call_log (Id,CallTimestamp,ServiceName,Endpoint,HttpMethod,HttpStatus,ResponseTimeMs,RequestPayloadSize,ResponsePayloadSize,ApiKeyId,ClientIp,ServerIp,ErrorMessage,Retries,CorrelationId,UserAgent,AuthTokenId,Region,ServiceVersion,LatencyMs,Platform) VALUES (1,'2023-01-01 10:15:00','WeatherAPI','/v1/forecast','GET',200,120,512,1024,101,'192.168.1.10','10.0.0.5','',0,'corr-001','AppClient/1.0',201,'us-east','1.3',15,'web');
INSERT INTO external_api_call_log (Id,CallTimestamp,ServiceName,Endpoint,HttpMethod,HttpStatus,ResponseTimeMs,RequestPayloadSize,ResponsePayloadSize,ApiKeyId,ClientIp,ServerIp,ErrorMessage,Retries,CorrelationId,UserAgent,AuthTokenId,Region,ServiceVersion,LatencyMs,Platform) VALUES (2,'2023-01-01 11:20:30','PaymentGateway','/v2/charge','POST',502,3500,2048,0,102,'192.168.1.15','10.0.0.6','Gateway timeout',2,'corr-002','MobileApp/2.5',202,'eu-west','2.0',200,'mobile');
INSERT INTO external_api_call_log (Id,CallTimestamp,ServiceName,Endpoint,HttpMethod,HttpStatus,ResponseTimeMs,RequestPayloadSize,ResponsePayloadSize,ApiKeyId,ClientIp,ServerIp,ErrorMessage,Retries,CorrelationId,UserAgent,AuthTokenId,Region,ServiceVersion,LatencyMs,Platform) VALUES (3,'2023-01-02 09:05:45','MapsService','/maps/search','GET',200,80,256,512,103,'192.168.2.20','10.0.0.7','',0,'corr-003','WebBrowser/5.1',203,'ap-south','1.0',10,'web');

-- Catalog of learning modules offered on the platform
CREATE TABLE learning_module_catalog
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ModuleCode TEXT NULL,
    Title TEXT NULL,
    Description TEXT NULL,
    Category TEXT NULL,
    DifficultyLevel INTEGER NULL,
    EstimatedHours INTEGER NULL,
    PrerequisiteModuleId INTEGER NULL,
    AuthorUserId INTEGER NULL,
    CreatedDate DATETIME NULL,
    UpdatedDate DATETIME NULL,
    Language TEXT NULL,
    IsActive INTEGER NULL,
    Version INTEGER NULL,
    PublishDate DATETIME NULL,
    Rating INTEGER NULL,
    ReviewCount INTEGER NULL,
    ThumbnailUrl TEXT NULL,
    ContentUrl TEXT NULL,
    LicenseType TEXT NULL,
    MaxEnrollments INTEGER NULL
);

INSERT INTO learning_module_catalog (Id,ModuleCode,Title,Description,Category,DifficultyLevel,EstimatedHours,PrerequisiteModuleId,AuthorUserId,CreatedDate,UpdatedDate,Language,IsActive,Version,PublishDate,Rating,ReviewCount,ThumbnailUrl,ContentUrl,LicenseType,MaxEnrollments) VALUES (1,'ML101','Intro to Machine Learning','Basics of ML concepts','Data Science',2,10,NULL,10,'2023-01-01 08:00:00','2023-01-10 12:00:00','en',1,1,'2023-01-15 00:00:00',4,120,'http://example.com/thumb1.png','http://example.com/content1','cc-by',500);
INSERT INTO learning_module_catalog (Id,ModuleCode,Title,Description,Category,DifficultyLevel,EstimatedHours,PrerequisiteModuleId,AuthorUserId,CreatedDate,UpdatedDate,Language,IsActive,Version,PublishDate,Rating,ReviewCount,ThumbnailUrl,ContentUrl,LicenseType,MaxEnrollments) VALUES (2,'DS202','Advanced Data Visualization','Deep dive into visual analytics','Data Science',3,15,1,12,'2023-02-01 09:30:00','2023-02-05 14:20:00','en',1,1,'2023-02-10 00:00:00',5,85,'http://example.com/thumb2.png','http://example.com/content2','cc-by-nc',300);
INSERT INTO learning_module_catalog (Id,ModuleCode,Title,Description,Category,DifficultyLevel,EstimatedHours,PrerequisiteModuleId,AuthorUserId,CreatedDate,UpdatedDate,Language,IsActive,Version,PublishDate,Rating,ReviewCount,ThumbnailUrl,ContentUrl,LicenseType,MaxEnrollments) VALUES (3,'PRJ303','Project Management Essentials','Core PM skills','Management',1,8,2,15,'2023-03-01 10:15:00','2023-03-03 11:45:00','en',1,1,'2023-03-07 00:00:00',4,60,'http://example.com/thumb3.png','http://example.com/content3','cc0',1000);

-- Corporate policy documents metadata
CREATE TABLE corporate_policy_documents
(
    Id INTEGER NOT NULL PRIMARY KEY,
    PolicyNumber TEXT NULL,
    Title TEXT NULL,
    EffectiveDate DATE NULL,
    ExpirationDate DATE NULL,
    Department TEXT NULL,
    OwnerUserId INTEGER NULL,
    RevisionNumber INTEGER NULL,
    ApprovalStatus TEXT NULL,
    ApprovedByUserId INTEGER NULL,
    ReviewDate DATE NULL,
    DocumentUrl TEXT NULL,
    Summary TEXT NULL,
    ConfidentialityLevel TEXT NULL,
    DocumentType TEXT NULL,
    IsMandatory INTEGER NULL,
    LastModifiedBy INTEGER NULL,
    LastModifiedDate DATETIME NULL,
    VersionHistoryUrl TEXT NULL,
    Tags TEXT NULL
);

INSERT INTO corporate_policy_documents (Id,PolicyNumber,Title,EffectiveDate,ExpirationDate,Department,OwnerUserId,RevisionNumber,ApprovalStatus,ApprovedByUserId,ReviewDate,DocumentUrl,Summary,ConfidentialityLevel,DocumentType,IsMandatory,LastModifiedBy,LastModifiedDate,VersionHistoryUrl,Tags) VALUES (1,'POL-001','Data Retention Policy','2022-01-01','2025-12-31','Legal',20,3,'Approved',30,'2023-01-15','http://example.com/pol1.pdf','Guidelines for retaining data','High','Policy',1,40,'2023-02-01 09:00:00','http://example.com/pol1_versions','data,retention');
INSERT INTO corporate_policy_documents (Id,PolicyNumber,Title,EffectiveDate,ExpirationDate,Department,OwnerUserId,RevisionNumber,ApprovalStatus,ApprovedByUserId,ReviewDate,DocumentUrl,Summary,ConfidentialityLevel,DocumentType,IsMandatory,LastModifiedBy,LastModifiedDate,VersionHistoryUrl,Tags) VALUES (2,'POL-002','Remote Work Guidelines','2021-06-01','2024-06-01','HR',22,5,'Approved',33,'2022-12-10','http://example.com/pol2.pdf','Rules for remote employees','Medium','Guideline',1,44,'2023-01-20 10:30:00','http://example.com/pol2_versions','remote,work');
INSERT INTO corporate_policy_documents (Id,PolicyNumber,Title,EffectiveDate,ExpirationDate,Department,OwnerUserId,RevisionNumber,ApprovalStatus,ApprovedByUserId,ReviewDate,DocumentUrl,Summary,ConfidentialityLevel,DocumentType,IsMandatory,LastModifiedBy,LastModifiedDate,VersionHistoryUrl,Tags) VALUES (3,'POL-003','Acceptable Use Policy','2020-03-01','2026-03-01','IT',25,2,'Approved',35,'2022-08-05','http://example.com/pol3.pdf','Proper use of IT resources','Low','Policy',1,45,'2023-03-05 14:45:00','http://example.com/pol3_versions','it,acceptable,use');

-- Supplier performance review records
CREATE TABLE supplier_performance_review
(
    Id INTEGER NOT NULL PRIMARY KEY,
    SupplierId INTEGER NULL,
    ReviewPeriodStart DATE NULL,
    ReviewPeriodEnd DATE NULL,
    OnTimeDeliveryPct INTEGER NULL,
    DefectRatePct INTEGER NULL,
    ComplianceScore INTEGER NULL,
    ContractValueUsd INTEGER NULL,
    ContactPerson TEXT NULL,
    ContactEmail TEXT NULL,
    ReviewDate DATETIME NULL,
    ReviewerUserId INTEGER NULL,
    OverallRating INTEGER NULL,
    Comments TEXT NULL,
    RatingScale INTEGER NULL,
    Category TEXT NULL,
    Region TEXT NULL,
    PaymentTerms TEXT NULL,
    RenewalLikelihoodPct INTEGER NULL,
    LastUpdated DATETIME NULL,
    DocumentationUrl TEXT NULL
);

INSERT INTO supplier_performance_review (Id,SupplierId,ReviewPeriodStart,ReviewPeriodEnd,OnTimeDeliveryPct,DefectRatePct,ComplianceScore,ContractValueUsd,ContactPerson,ContactEmail,ReviewDate,ReviewerUserId,OverallRating,Comments,RatingScale,Category,Region,PaymentTerms,RenewalLikelihoodPct,LastUpdated,DocumentationUrl) VALUES (1,1001,'2023-01-01','2023-06-30',95,2,88,500000,'Alice Smith','alice@example.com','2023-07-15 10:00:00',200,5,'Excellent service',5,'Logistics','NA','Net30',90,'2023-07-16 12:00:00','http://example.com/review1.pdf');
INSERT INTO supplier_performance_review (Id,SupplierId,ReviewPeriodStart,ReviewPeriodEnd,OnTimeDeliveryPct,DefectRatePct,ComplianceScore,ContractValueUsd,ContactPerson,ContactEmail,ReviewDate,ReviewerUserId,OverallRating,Comments,RatingScale,Category,Region,PaymentTerms,RenewalLikelihoodPct,LastUpdated,DocumentationUrl) VALUES (2,1002,'2023-01-01','2023-06-30',88,4,80,300000,'Bob Jones','bob@example.com','2023-07-15 11:30:00',201,4,'Good but occasional delays',5,'Materials','EU','Net45',75,'2023-07-16 13:15:00','http://example.com/review2.pdf');
INSERT INTO supplier_performance_review (Id,SupplierId,ReviewPeriodStart,ReviewPeriodEnd,OnTimeDeliveryPct,DefectRatePct,ComplianceScore,ContractValueUsd,ContactPerson,ContactEmail,ReviewDate,ReviewerUserId,OverallRating,Comments,RatingScale,Category,Region,PaymentTerms,RenewalLikelihoodPct,LastUpdated,DocumentationUrl) VALUES (3,1003,'2023-01-01','2023-06-30',92,3,85,750000,'Carol Lee','carol@example.com','2023-07-15 14:20:00',202,5,'Reliable and high quality',5,'Components','APAC','Net60',85,'2023-07-16 15:45:00','http://example.com/review3.pdf');

-- Detailed schedule for conference events
CREATE TABLE event_schedule_details
(
    Id INTEGER NOT NULL PRIMARY KEY,
    EventId INTEGER NULL,
    SessionNumber INTEGER NULL,
    SessionTitle TEXT NULL,
    SpeakerName TEXT NULL,
    SpeakerBio TEXT NULL,
    StartTime DATETIME NULL,
    EndTime DATETIME NULL,
    RoomName TEXT NULL,
    Capacity INTEGER NULL,
    Track TEXT NULL,
    SessionType TEXT NULL,
    Abstract TEXT NULL,
    SlidesUrl TEXT NULL,
    VideoUrl TEXT NULL,
    Language TEXT NULL,
    IsKeynote INTEGER NULL,
    Tags TEXT NULL,
    RegistrationRequired INTEGER NULL,
    UpdatedAt DATETIME NULL,
    CreatedAt DATETIME NULL
);

INSERT INTO event_schedule_details (Id,EventId,SessionNumber,SessionTitle,SpeakerName,SpeakerBio,StartTime,EndTime,RoomName,Capacity,Track,SessionType,Abstract,SlidesUrl,VideoUrl,Language,IsKeynote,Tags,RegistrationRequired,UpdatedAt,CreatedAt) VALUES (1,5001,1,'Opening Keynote','Dr Jane Doe','Expert in AI','2023-09-01 09:00:00','2023-09-01 10:00:00','Main Hall',500,'AI','Keynote','Future of AI','http://example.com/slides1.pdf','http://example.com/video1.mp4','en',1,'ai,future','0','2023-08-15 12:00:00','2023-07-01 08:30:00');
INSERT INTO event_schedule_details (Id,EventId,SessionNumber,SessionTitle,SpeakerName,SpeakerBio,StartTime,EndTime,RoomName,Capacity,Track,SessionType,Abstract,SlidesUrl,VideoUrl,Language,IsKeynote,Tags,RegistrationRequired,UpdatedAt,CreatedAt) VALUES (2,5001,2,'Data Ethics Panel','Panelists','Discussion on ethics','2023-09-01 10:30:00','2023-09-01 11:30:00','Room A',200,'Ethics','Panel','Panel on data ethics','http://example.com/slides2.pdf','http://example.com/video2.mp4','en',0,'ethics,data','1','2023-08-16 09:45:00','2023-07-02 09:00:00');
INSERT INTO event_schedule_details (Id,EventId,SessionNumber,SessionTitle,SpeakerName,SpeakerBio,StartTime,EndTime,RoomName,Capacity,Track,SessionType,Abstract,SlidesUrl,VideoUrl,Language,IsKeynote,Tags,RegistrationRequired,UpdatedAt,CreatedAt) VALUES (3,5001,3,'Machine Learning Workshop','Prof John Smith','ML researcher','2023-09-01 13:00:00','2023-09-01 15:00:00','Lab 1',100,'ML','Workshop','Hands‑on ML','http://example.com/slides3.pdf','http://example.com/video3.mp4','en',0,'ml,workshop','1','2023-08-17 11:20:00','2023-07-03 10:15:00');

-- Inventory of device firmware versions
CREATE TABLE device_firmware_inventory
(
    Id INTEGER NOT NULL PRIMARY KEY,
    DeviceId INTEGER NULL,
    FirmwareVersion TEXT NULL,
    ReleaseDate DATE NULL,
    Checksum TEXT NULL,
    FileSizeKb INTEGER NULL,
    DownloadUrl TEXT NULL,
    SupportedDevices TEXT NULL,
    Deprecated INTEGER NULL,
    ReleaseNotes TEXT NULL,
    Vendor TEXT NULL,
    Platform TEXT NULL,
    Architecture TEXT NULL,
    Signed INTEGER NULL,
    Signature TEXT NULL,
    VerificationStatus TEXT NULL,
    InstalledDate DATE NULL,
    InstallerUserId INTEGER NULL,
    InstallationStatus TEXT NULL,
    LastChecked DATETIME NULL,
    UpdatePolicy TEXT NULL
);

INSERT INTO device_firmware_inventory (Id,DeviceId,FirmwareVersion,ReleaseDate,Checksum,FileSizeKb,DownloadUrl,SupportedDevices,Deprecated,ReleaseNotes,Vendor,Platform,Architecture,Signed,Signature,VerificationStatus,InstalledDate,InstallerUserId,InstallationStatus,LastChecked,UpdatePolicy) VALUES (1,2001,'v1.2.3','2023-03-15','abc123def','20480','http://example.com/firmware1.bin','DeviceA,DeviceB',0,'Bug fixes','AcmeCorp','Linux','arm64',1,'sig123','Verified','2023-04-01',101,'Installed','2023-04-02 09:00:00','Automatic');
INSERT INTO device_firmware_inventory (Id,DeviceId,FirmwareVersion,ReleaseDate,Checksum,FileSizeKb,DownloadUrl,SupportedDevices,Deprecated,ReleaseNotes,Vendor,Platform,Architecture,Signed,Signature,VerificationStatus,InstalledDate,InstallerUserId,InstallationStatus,LastChecked,UpdatePolicy) VALUES (2,2002,'v2.0.0','2023-05-20','def456ghi','30720','http://example.com/firmware2.bin','DeviceC',0,'New features','BetaTech','Windows','x86',1,'sig456','Verified','2023-06-01',102,'Installed','2023-06-02 10:15:00','Manual');
INSERT INTO device_firmware_inventory (Id,DeviceId,FirmwareVersion,ReleaseDate,Checksum,FileSizeKb,DownloadUrl,SupportedDevices,Deprecated,ReleaseNotes,Vendor,Platform,Architecture,Signed,Signature,VerificationStatus,InstalledDate,InstallerUserId,InstallationStatus,LastChecked,UpdatePolicy) VALUES (3,2003,'v0.9.8','2022-12-01','ghi789jkl','10240','http://example.com/firmware3.bin','DeviceD,DeviceE',1,'Deprecated version','OldInc','Embedded','mips',0,'','Unverified','2023-01-10',103,'Failed','2023-01-11 08:30:00','None');

-- Audience definitions for marketing campaigns
CREATE TABLE marketing_campaign_audience
(
    Id INTEGER NOT NULL PRIMARY KEY,
    CampaignId INTEGER NULL,
    AudienceSegmentId INTEGER NULL,
    Region TEXT NULL,
    AgeRange TEXT NULL,
    Gender TEXT NULL,
    InterestTags TEXT NULL,
    EstimatedSize INTEGER NULL,
    Source TEXT NULL,
    InclusionCriteria TEXT NULL,
    ExclusionCriteria TEXT NULL,
    CreatedDate DATETIME NULL,
    UpdatedDate DATETIME NULL,
    IsActive INTEGER NULL,
    Priority INTEGER NULL,
    BudgetAllocationUsd INTEGER NULL,
    ReachPercentage INTEGER NULL,
    ExpectedCpaUsd INTEGER NULL,
    ExpectedCpcUsd INTEGER NULL,
    ExpectedCpmUsd INTEGER NULL,
    Notes TEXT NULL
);

INSERT INTO marketing_campaign_audience (Id,CampaignId,AudienceSegmentId,Region,AgeRange,Gender,InterestTags,EstimatedSize,Source,InclusionCriteria,ExclusionCriteria,CreatedDate,UpdatedDate,IsActive,Priority,BudgetAllocationUsd,ReachPercentage,ExpectedCpaUsd,ExpectedCpcUsd,ExpectedCpmUsd,Notes) VALUES (1,3001,4001,'North America','25-34','Female','tech,gaming','150000','CRM','Active users','No opt‑out','2023-07-01 09:00:00','2023-07-10 15:30:00',1,1,20000,30,5,0.75,12,'First wave audience');
INSERT INTO marketing_campaign_audience (Id,CampaignId,AudienceSegmentId,Region,AgeRange,Gender,InterestTags,EstimatedSize,Source,InclusionCriteria,ExclusionCriteria,CreatedDate,UpdatedDate,IsActive,Priority,BudgetAllocationUsd,ReachPercentage,ExpectedCpaUsd,ExpectedCpcUsd,ExpectedCpmUsd,Notes) VALUES (2,3001,4002,'Europe','35-44','Male','finance,travel','80000','DataLake','High spenders','Low engagement','2023-07-02 10:15:00','2023-07-11 16:45:00',1,2,15000,25,7,0.65,10,'Second segment');
INSERT INTO marketing_campaign_audience (Id,CampaignId,AudienceSegmentId,Region,AgeRange,Gender,InterestTags,EstimatedSize,Source,InclusionCriteria,ExclusionCriteria,CreatedDate,UpdatedDate,IsActive,Priority,BudgetAllocationUsd,ReachPercentage,ExpectedCpaUsd,ExpectedCpcUsd,ExpectedCpmUsd,Notes) VALUES (3,3002,4003,'Asia','18-24','All','social,entertainment','200000','ThirdParty','New registrants','None','2023-07-03 11:30:00','2023-07-12 14:20:00',1,1,25000,35,4,0.80,13,'Launch campaign');

-- Jobs that import data into the knowledge graph
CREATE TABLE knowledge_graph_import_job
(
    Id INTEGER NOT NULL PRIMARY KEY,
    JobName TEXT NULL,
    SourceSystem TEXT NULL,
    StartedAt DATETIME NULL,
    CompletedAt DATETIME NULL,
    Status TEXT NULL,
    TotalNodes INTEGER NULL,
    TotalEdges INTEGER NULL,
    NodesImported INTEGER NULL,
    EdgesImported INTEGER NULL,
    ErrorsEncountered INTEGER NULL,
    WarningCount INTEGER NULL,
    InitiatedByUserId INTEGER NULL,
    ImportMethod TEXT NULL,
    Version TEXT NULL,
    FilePath TEXT NULL,
    FileSizeMb INTEGER NULL,
    RetryCount INTEGER NULL,
    LastRetryAt DATETIME NULL,
    Comments TEXT NULL,
    IsScheduled INTEGER NULL
);

INSERT INTO knowledge_graph_import_job (Id,JobName,SourceSystem,StartedAt,CompletedAt,Status,TotalNodes,TotalEdges,NodesImported,EdgesImported,ErrorsEncountered,WarningCount,InitiatedByUserId,ImportMethod,Version,FilePath,FileSizeMb,RetryCount,LastRetryAt,Comments,IsScheduled) VALUES (1,'KG_Import_Jan','CRM','2023-01-05 02:00:00','2023-01-05 04:30:00','Success',50000,75000,50000,75000,0,5,201,'Batch','v1.0','/imports/jan.csv',120,0,NULL,'Initial load','0');
INSERT INTO knowledge_graph_import_job (Id,JobName,SourceSystem,StartedAt,CompletedAt,Status,TotalNodes,TotalEdges,NodesImported,EdgesImported,ErrorsEncountered,WarningCount,InitiatedByUserId,ImportMethod,Version,FilePath,FileSizeMb,RetryCount,LastRetryAt,Comments,IsScheduled) VALUES (2,'KG_Import_Feb','ERP','2023-02-10 03:15:00','2023-02-10 05:45:00','Success',60000,90000,60000,90000,1,8,202,'Incremental','v1.1','/imports/feb.csv',150,0,NULL,'Feb update','0');
INSERT INTO knowledge_graph_import_job (Id,JobName,SourceSystem,StartedAt,CompletedAt,Status,TotalNodes,TotalEdges,NodesImported,EdgesImported,ErrorsEncountered,WarningCount,InitiatedByUserId,ImportMethod,Version,FilePath,FileSizeMb,RetryCount,LastRetryAt,Comments,IsScheduled) VALUES (3,'KG_Import_Mar','LegacyDB','2023-03-15 01:30:00','2023-03-15 04:00:00','Failed',55000,80000,30000,40000,10,12,203,'Full','v1.0','/imports/mar.csv',130,2,'2023-03-16 02:00:00','Retry after failure','1');

-- Extended education history records for users
CREATE TABLE user_education_history_extended
(
    Id INTEGER NOT NULL PRIMARY KEY,
    UserId INTEGER NULL,
    InstitutionName TEXT NULL,
    Degree TEXT NULL,
    FieldOfStudy TEXT NULL,
    StartDate DATE NULL,
    EndDate DATE NULL,
    GPA INTEGER NULL,
    Honors TEXT NULL,
    Activities TEXT NULL,
    ThesisTitle TEXT NULL,
    AdvisorName TEXT NULL,
    GraduationStatus TEXT NULL,
    ProgramType TEXT NULL,
    CreditsEarned INTEGER NULL,
    TranscriptUrl TEXT NULL,
    Verified INTEGER NULL,
    VerificationDate DATETIME NULL,
    AddedByUserId INTEGER NULL,
    AddedAt DATETIME NULL,
    Notes TEXT NULL
);

INSERT INTO user_education_history_extended (Id,UserId,InstitutionName,Degree,FieldOfStudy,StartDate,EndDate,GPA,Honors,Activities,ThesisTitle,AdvisorName,GraduationStatus,ProgramType,CreditsEarned,TranscriptUrl,Verified,VerificationDate,AddedByUserId,AddedAt,Notes) VALUES (1,10,'State University','BSc','Computer Science','2015-09-01','2019-05-15',3,'Summa Cum Laude','Chess Club','Optimizing Queries','Dr Allen','Completed','Full-time',120,'http://example.com/transcript1.pdf',1,'2023-01-10 09:00:00',200,'2023-01-12 10:30:00','Verified by admin');
INSERT INTO user_education_history_extended (Id,UserId,InstitutionName,Degree,FieldOfStudy,StartDate,EndDate,GPA,Honors,Activities,ThesisTitle,AdvisorName,GraduationStatus,ProgramType,CreditsEarned,TranscriptUrl,Verified,VerificationDate,AddedByUserId,AddedAt,Notes) VALUES (2,12,'Tech Institute','MSc','Data Analytics','2020-01-10','2022-06-20',4,'Dean List','Data Club','Predictive Models','Prof Baker','Completed','Part-time',60,'http://example.com/transcript2.pdf',1,'2023-02-05 11:15:00',201,'2023-02-07 13:45:00','Verified after review');
INSERT INTO user_education_history_extended (Id,UserId,InstitutionName,Degree,FieldOfStudy,StartDate,EndDate,GPA,Honors,Activities,ThesisTitle,AdvisorName,GraduationStatus,ProgramType,CreditsEarned,TranscriptUrl,Verified,VerificationDate,AddedByUserId,AddedAt,Notes) VALUES (3,15,'Online Academy','Certificate','Project Management','2021-03-01','2021-09-01',5,'','Online Forums','Agile Methodologies','Ms Patel','Completed','Online',30,'http://example.com/transcript3.pdf',1,'2023-03-12 14:20:00',202,'2023-03-14 15:55:00','Self‑paced program');