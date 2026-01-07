-- Table storing search engine robot configuration details
CREATE TABLE search_engine_robots
(
    Id               INTEGER PRIMARY KEY,
    UserAgent        TEXT,
    CrawlDelay       INTEGER,
    DisallowPath     TEXT,
    AllowPath        TEXT,
    LastUpdated      DATETIME,
    IsActive         INTEGER,
    SiteId           INTEGER,
    Priority         INTEGER,
    Remarks          TEXT,
    CreatedBy        TEXT,
    CreatedAt        DATETIME,
    UpdatedBy        TEXT,
    UpdatedAt        DATETIME,
    Hostname         TEXT,
    IPAddress        TEXT,
    ContactEmail     TEXT,
    Version          TEXT,
    FetchCount       INTEGER,
    ErrorCount       INTEGER
);

INSERT INTO search_engine_robots (Id,UserAgent,CrawlDelay,DisallowPath,AllowPath,LastUpdated,IsActive,SiteId,Priority,Remarks,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,Hostname,IPAddress,ContactEmail,Version,FetchCount,ErrorCount) VALUES (1,'GoogleBot',10,'/private','/public','2023-01-10 08:00:00',1,100,1,'initial','admin','2023-01-01 00:00:00','admin','2023-01-10 08:00:00','crawler01.example.com','192.168.1.1','admin@example.com','v1',1000,5);
INSERT INTO search_engine_robots (Id,UserAgent,CrawlDelay,DisallowPath,AllowPath,LastUpdated,IsActive,SiteId,Priority,Remarks,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,Hostname,IPAddress,ContactEmail,Version,FetchCount,ErrorCount) VALUES (2,'BingBot',15,'/secret','/','2023-01-12 09:30:00',1,101,2,'updated','system','2023-01-02 00:00:00','system','2023-01-12 09:30:00','crawler02.example.com','192.168.1.2','sys@example.com','v2',800,3);
INSERT INTO search_engine_robots (Id,UserAgent,CrawlDelay,DisallowPath,AllowPath,LastUpdated,IsActive,SiteId,Priority,Remarks,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,Hostname,IPAddress,ContactEmail,Version,FetchCount,ErrorCount) VALUES (3,'DuckDuckBot',5,'/tmp','/','2023-01-15 11:15:00',0,102,3,'inactive','operator','2023-01-03 00:00:00','operator','2023-01-15 11:15:00','crawler03.example.com','192.168.1.3','op@example.com','v1',200,0);

-- Table logging data import job executions
CREATE TABLE data_import_jobs
(
    Id                INTEGER PRIMARY KEY,
    JobName           TEXT,
    SourceSystem      TEXT,
    DestinationTable  TEXT,
    StartedAt         DATETIME,
    CompletedAt       DATETIME,
    Status            TEXT,
    RowCount          INTEGER,
    ErrorCount        INTEGER,
    TriggeredBy       TEXT,
    ScheduleCron      TEXT,
    FilePath          TEXT,
    FileSizeBytes     INTEGER,
    Checksum          TEXT,
    IsFullLoad        INTEGER,
    RetryCount        INTEGER,
    MaxRetries        INTEGER,
    NotificationEmail TEXT,
    CreatedAt         DATETIME,
    UpdatedAt         DATETIME
);

INSERT INTO data_import_jobs (Id,JobName,SourceSystem,DestinationTable,StartedAt,CompletedAt,Status,RowCount,ErrorCount,TriggeredBy,ScheduleCron,FilePath,FileSizeBytes,Checksum,IsFullLoad,RetryCount,MaxRetries,NotificationEmail,CreatedAt,UpdatedAt) VALUES (1,'ImportUsers','CRM','users','2023-02-01 02:00:00','2023-02-01 02:30:00','Success',1500,0,'scheduler','0 2 * * *','/data/users_20230201.csv',204800,'abc123',1,0,3,'admin@example.com','2023-01-31 12:00:00','2023-02-01 02:30:00');
INSERT INTO data_import_jobs (Id,JobName,SourceSystem,DestinationTable,StartedAt,CompletedAt,Status,RowCount,ErrorCount,TriggeredBy,ScheduleCron,FilePath,FileSizeBytes,Checksum,IsFullLoad,RetryCount,MaxRetries,NotificationEmail,CreatedAt,UpdatedAt) VALUES (2,'ImportPosts','LegacyDB','posts','2023-02-02 03:00:00','2023-02-02 03:45:00','Success',3200,5,'scheduler','0 3 * * *','/data/posts_20230202.csv',512000,'def456',0,0,3,'ops@example.com','2023-01-31 12:00:00','2023-02-02 03:45:00');
INSERT INTO data_import_jobs (Id,JobName,SourceSystem,DestinationTable,StartedAt,CompletedAt,Status,RowCount,ErrorCount,TriggeredBy,ScheduleCron,FilePath,FileSizeBytes,Checksum,IsFullLoad,RetryCount,MaxRetries,NotificationEmail,CreatedAt,UpdatedAt) VALUES (3,'ImportTags','API','tags','2023-02-03 04:00:00','2023-02-03 04:10:00','Failed',0,1,'manual','', '/data/tags_20230203.json',10240,'ghi789',1,1,3,'dev@example.com','2023-02-03 04:05:00','2023-02-03 04:10:00');

-- Table tracking API key rotation activities
CREATE TABLE api_key_rotation
(
    Id                 INTEGER PRIMARY KEY,
    ApiKeyId           INTEGER,
    OldKeyValue        TEXT,
    NewKeyValue        TEXT,
    RotatedAt          DATETIME,
    RotatedBy          TEXT,
    Reason             TEXT,
    ExpirationDate     DATE,
    IsActive           INTEGER,
    NotificationSent   INTEGER,
    AuditLogId         INTEGER,
    PreviousRotationId INTEGER,
    RotationMethod     TEXT,
    RotationNotes      TEXT,
    CreatedAt          DATETIME,
    UpdatedAt          DATETIME,
    SourceEnvironment  TEXT,
    TargetEnvironment  TEXT,
    RotationDurationSec INTEGER,
    ValidationStatus   TEXT,
    BackupLocation     TEXT
);

INSERT INTO api_key_rotation (Id,ApiKeyId,OldKeyValue,NewKeyValue,RotatedAt,RotatedBy,Reason,ExpirationDate,IsActive,NotificationSent,AuditLogId,PreviousRotationId,RotationMethod,RotationNotes,CreatedAt,UpdatedAt,SourceEnvironment,TargetEnvironment,RotationDurationSec,ValidationStatus,BackupLocation) VALUES (1,101,'oldkey123','newkey456','2023-03-01 01:00:00','admin','Routine','2024-03-01',1,1,5001,NULL,'Automated','no issues','2023-02-28 12:00:00','2023-03-01 01:00:00','prod','prod',60,'Valid','/backups/key101');
INSERT INTO api_key_rotation (Id,ApiKeyId,OldKeyValue,NewKeyValue,RotatedAt,RotatedBy,Reason,ExpirationDate,IsActive,NotificationSent,AuditLogId,PreviousRotationId,RotationMethod,RotationNotes,CreatedAt,UpdatedAt,SourceEnvironment,TargetEnvironment,RotationDurationSec,ValidationStatus,BackupLocation) VALUES (2,102,'oldkey789','newkey012','2023-03-05 02:30:00','security','Compromise','2024-03-05',0,1,5002,1,'Manual','key revoked','2023-03-04 15:00:00','2023-03-05 02:30:00','staging','prod',120,'Invalid','/backups/key102');
INSERT INTO api_key_rotation (Id,ApiKeyId,OldKeyValue,NewKeyValue,RotatedAt,RotatedBy,Reason,ExpirationDate,IsActive,NotificationSent,AuditLogId,PreviousRotationId,RotationMethod,RotationNotes,CreatedAt,UpdatedAt,SourceEnvironment,TargetEnvironment,RotationDurationSec,ValidationStatus,BackupLocation) VALUES (3,103,'oldkey555','newkey777','2023-03-10 04:45:00','admin','PolicyUpdate','2025-03-10',1,0,5003,2,'Automated','scheduled rotation','2023-03-09 09:00:00','2023-03-10 04:45:00','prod','prod',45,'Valid','/backups/key103');

-- Table describing properties of nodes in the knowledge graph
CREATE TABLE knowledge_graph_properties
(
    Id                   INTEGER PRIMARY KEY,
    NodeId               INTEGER,
    PropertyName         TEXT,
    PropertyValue        TEXT,
    DataType             TEXT,
    IsIndexed            INTEGER,
    IsUnique             INTEGER,
    CreatedBy            TEXT,
    CreatedAt            DATETIME,
    UpdatedBy            TEXT,
    UpdatedAt            DATETIME,
    SourceSystem         TEXT,
    ConfidenceScore      REAL,
    ValidationStatus     TEXT,
    Language             TEXT,
    Version              TEXT,
    EffectiveDate        DATE,
    ExpirationDate       DATE,
    IsDeprecated         INTEGER,
    DeprecatedBy         TEXT,
    DeprecationReason    TEXT,
    AuditLogId           INTEGER,
    Notes                TEXT,
    MetadataJson         TEXT,
    LastSyncedAt         DATETIME,
    SyncSource           TEXT,
    SyncStatus           TEXT,
    SyncAttempts         INTEGER,
    ExpectedValueFormat  TEXT,
    IsSensitive          INTEGER
);

INSERT INTO knowledge_graph_properties (Id,NodeId,PropertyName,PropertyValue,DataType,IsIndexed,IsUnique,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,SourceSystem,ConfidenceScore,ValidationStatus,Language,Version,EffectiveDate,ExpirationDate,IsDeprecated,DeprecatedBy,DeprecationReason,AuditLogId,Notes,MetadataJson,LastSyncedAt,SyncSource,SyncStatus,SyncAttempts,ExpectedValueFormat,IsSensitive) VALUES (1,2001,'title','Artificial Intelligence','string',1,0,'engineer','2023-01-01 10:00:00','engineer','2023-01-02 12:00:00','sourceA',0.98,'Validated','en','v1','2023-01-01','2025-01-01',0,NULL,NULL,3001,'initial load','{}','2023-01-02 12:00:00','sourceA','Success',1,'text',0);
INSERT INTO knowledge_graph_properties (Id,NodeId,PropertyName,PropertyValue,DataType,IsIndexed,IsUnique,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,SourceSystem,ConfidenceScore,ValidationStatus,Language,Version,EffectiveDate,ExpirationDate,IsDeprecated,DeprecatedBy,DeprecationReason,AuditLogId,Notes,MetadataJson,LastSyncedAt,SyncSource,SyncStatus,SyncAttempts,ExpectedValueFormat,IsSensitive) VALUES (2,2002,'author','John Doe','string',1,1,'curator','2023-02-15 09:30:00','curator','2023-02-16 11:45:00','sourceB',0.92,'Validated','en','v2','2023-02-15',NULL,0,NULL,NULL,3002,'verified author','{}','2023-02-16 11:45:00','sourceB','Success',1,'text',0);
INSERT INTO knowledge_graph_properties (Id,NodeId,PropertyName,PropertyValue,DataType,IsIndexed,IsUnique,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,SourceSystem,ConfidenceScore,ValidationStatus,Language,Version,EffectiveDate,ExpirationDate,IsDeprecated,DeprecatedBy,DeprecationReason,AuditLogId,Notes,MetadataJson,LastSyncedAt,SyncSource,SyncStatus,SyncAttempts,ExpectedValueFormat,IsSensitive) VALUES (3,2003,'publishedDate','2022-12-31','date',0,0,'import','2023-03-01 08:20:00','import','2023-03-01 08:20:00','sourceC',0.85,'Pending','en','v1','2022-12-31',NULL,0,NULL,NULL,3003,'awaiting validation','{}','2023-03-01 08:20:00','sourceC','Pending',0,'yyyy-mm-dd',0);

-- Table logging CDN origin server details
CREATE TABLE cdn_origin_servers
(
    Id                 INTEGER PRIMARY KEY,
    Hostname           TEXT,
    IpAddress          TEXT,
    Region             TEXT,
    IsActive           INTEGER,
    LastChecked        DATETIME,
    CpuUtilization     REAL,
    MemoryUsageGB      REAL,
    DiskSpaceGB        REAL,
    NetworkIngressMb   REAL,
    NetworkEgressMb    REAL,
    SslCertificateId   INTEGER,
    HttpsEnabled       INTEGER,
    Http2Enabled       INTEGER,
    CacheControlHeader TEXT,
    MaxConcurrentConns INTEGER,
    AvgResponseTimeMs  REAL,
    ErrorRatePercent   REAL,
    MaintenanceWindow  TEXT,
    CreatedAt          DATETIME,
    UpdatedAt          DATETIME,
    OperatorContact    TEXT,
    FirmwareVersion    TEXT,
    LoadBalancerId     INTEGER,
    HealthStatus       TEXT,
    ServiceLevel       TEXT,
    ConnectivityStatus TEXT,
    GeoCoordinates     TEXT,
    MaxBandwidthGbps   REAL,
    IsEdgeNode         INTEGER
);

INSERT INTO cdn_origin_servers (Id,Hostname,IpAddress,Region,IsActive,LastChecked,CpuUtilization,MemoryUsageGB,DiskSpaceGB,NetworkIngressMb,NetworkEgressMb,SslCertificateId,HttpsEnabled,Http2Enabled,CacheControlHeader,MaxConcurrentConns,AvgResponseTimeMs,ErrorRatePercent,MaintenanceWindow,CreatedAt,UpdatedAt,OperatorContact,FirmwareVersion,LoadBalancerId,HealthStatus,ServiceLevel,ConnectivityStatus,GeoCoordinates,MaxBandwidthGbps,IsEdgeNode) VALUES (1,'origin01.cdn.example.com','10.0.0.1','us-east',1,'2023-04-01 03:00:00',45.5,32.1,500,1200,1150,9001,1,1,'public,max-age=3600',5000,85.2,0.02,'Sun02:00-03:00','2023-01-01 00:00:00','2023-04-01 03:00:00','ops@example.com','v1.2.3',4001,'Healthy','Premium','Online','40.7128,-74.0060',10.0,0);
INSERT INTO cdn_origin_servers (Id,Hostname,IpAddress,Region,IsActive,LastChecked,CpuUtilization,MemoryUsageGB,DiskSpaceGB,NetworkIngressMb,NetworkEgressMb,SslCertificateId,HttpsEnabled,Http2Enabled,CacheControlHeader,MaxConcurrentConns,AvgResponseTimeMs,ErrorRatePercent,MaintenanceWindow,CreatedAt,UpdatedAt,OperatorContact,FirmwareVersion,LoadBalancerId,HealthStatus,ServiceLevel,ConnectivityStatus,GeoCoordinates,MaxBandwidthGbps,IsEdgeNode) VALUES (2,'origin02.cdn.example.com','10.0.0.2','eu-west',1,'2023-04-01 03:05:00',55.0,48.5,750,1500,1450,9002,1,1,'public,max-age=7200',6000,90.1,0.05,'Sat01:00-02:00','2023-01-15 00:00:00','2023-04-01 03:05:00','europs@example.com','v1.3.0',4002,'Healthy','Premium','Online','51.5074,-0.1278',15.0,0);
INSERT INTO cdn_origin_servers (Id,Hostname,IpAddress,Region,IsActive,LastChecked,CpuUtilization,MemoryUsageGB,DiskSpaceGB,NetworkIngressMb,NetworkEgressMb,SslCertificateId,HttpsEnabled,Http2Enabled,CacheControlHeader,MaxConcurrentConns,AvgResponseTimeMs,ErrorRatePercent,MaintenanceWindow,CreatedAt,UpdatedAt,OperatorContact,FirmwareVersion,LoadBalancerId,HealthStatus,ServiceLevel,ConnectivityStatus,GeoCoordinates,MaxBandwidthGbps,IsEdgeNode) VALUES (3,'origin03.cdn.example.com','10.0.0.3','ap-south',0,'2023-04-01 02:50:00',0,0,0,0,0,9003,0,0,'private,max-age=0',0,0,100.0,'NA','2023-02-01 00:00:00','2023-04-01 02:50:00','asiaops@example.com','v1.0.0',4003,'Down','Standard','Offline','28.6139,77.2090',5.0,1);

-- Table storing versions of newsletter templates
CREATE TABLE newsletter_template_versions
(
    Id                INTEGER PRIMARY KEY,
    TemplateId        INTEGER,
    VersionNumber     INTEGER,
    Title             TEXT,
    SubjectLine       TEXT,
    HtmlContent       TEXT,
    TextContent       TEXT,
    CreatedBy         TEXT,
    CreatedAt         DATETIME,
    UpdatedBy         TEXT,
    UpdatedAt         DATETIME,
    IsActive          INTEGER,
    ApprovalStatus    TEXT,
    ApprovedBy        TEXT,
    ApprovedAt        DATETIME,
    Language          TEXT,
    LayoutType        TEXT,
    HeaderImageUrl    TEXT,
    FooterImageUrl    TEXT,
    TrackingPixelUrl  TEXT,
    A/BTestGroup      TEXT,
    ScheduledSendTime DATETIME,
    SendCount         INTEGER,
    OpenRate          REAL,
    ClickRate         REAL,
    UnsubscribeRate   REAL,
    SpamReportCount   INTEGER,
    Notes             TEXT,
    ValidationHash    TEXT,
    LastValidatedAt   DATETIME
);

INSERT INTO newsletter_template_versions (Id,TemplateId,VersionNumber,Title,SubjectLine,HtmlContent,TextContent,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,IsActive,ApprovalStatus,ApprovedBy,ApprovedAt,Language,LayoutType,HeaderImageUrl,FooterImageUrl,TrackingPixelUrl,A/BTestGroup,ScheduledSendTime,SendCount,OpenRate,ClickRate,UnsubscribeRate,SpamReportCount,Notes,ValidationHash,LastValidatedAt) VALUES (1,10,1,'Weekly Update','Your Weekly News','<html>...</html>','Weekly news text','alice','2023-03-01 08:00:00','alice','2023-03-01 08:00:00',1,'Approved','bob','2023-03-01 09:00:00','en','TwoColumn','/img/header.png','/img/footer.png','/pixel/123','A','2023-03-02 10:00:00',1000,0.45,0.12,0.02,5,'initial release','hash123','2023-03-01 09:15:00');
INSERT INTO newsletter_template_versions (Id,TemplateId,VersionNumber,Title,SubjectLine,HtmlContent,TextContent,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,IsActive,ApprovalStatus,ApprovedBy,ApprovedAt,Language,LayoutType,HeaderImageUrl,FooterImageUrl,TrackingPixelUrl,A/BTestGroup,ScheduledSendTime,SendCount,OpenRate,ClickRate,UnsubscribeRate,SpamReportCount,Notes,ValidationHash,LastValidatedAt) VALUES (2,10,2,'Weekly Update Revised','Your Weekly News - Updated','<html>...rev...</html>','Updated weekly news text','charlie','2023-03-08 08:00:00','charlie','2023-03-08 08:00:00',1,'Pending',NULL,NULL,'en','TwoColumn','/img/header2.png','/img/footer2.png','/pixel/124','B','2023-03-09 10:00:00',0,0,0,0,0,'awaiting approval','hash124',NULL);
INSERT INTO newsletter_template_versions (Id,TemplateId,VersionNumber,Title,SubjectLine,HtmlContent,TextContent,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt,IsActive,ApprovalStatus,ApprovedBy,ApprovedAt,Language,LayoutType,HeaderImageUrl,FooterImageUrl,TrackingPixelUrl,A/BTestGroup,ScheduledSendTime,SendCount,OpenRate,ClickRate,UnsubscribeRate,SpamReportCount,Notes,ValidationHash,LastValidatedAt) VALUES (3,11,1,'Monthly Digest','Top Stories This Month','<html>...monthly...</html>','Monthly digest text','diana','2023-02-25 07:30:00','diana','2023-02-25 07:30:00',0,'Rejected','eve','2023-02-26 08:00:00','en','SingleColumn','/img/header3.png','/img/footer3.png','/pixel/125','A','2023-03-01 09:00:00',0,0,0,0,0,'rejected due to branding','hash125','2023-02-26 08:15:00');

-- Table logging advertiser invoice history
CREATE TABLE advertiser_invoice_history
(
    Id                INTEGER PRIMARY KEY,
    AdvertiserId      INTEGER,
    InvoiceNumber     TEXT,
    InvoiceDate       DATE,
    DueDate           DATE,
    AmountCents       INTEGER,
    Currency          TEXT,
    PaidAmountCents   INTEGER,
    PaidDate          DATE,
    Status            TEXT,
    PaymentMethod     TEXT,
    BillingContact    TEXT,
    BillingAddress    TEXT,
    TaxId             TEXT,
    LineItemCount     INTEGER,
    CampaignIds       TEXT,
    CreatedAt         DATETIME,
    CreatedBy         TEXT,
    UpdatedAt         DATETIME,
    UpdatedBy         TEXT,
    Notes             TEXT,
    AdjustmentsCents  INTEGER,
    DiscountCents     INTEGER,
    TaxAmountCents    INTEGER,
    TotalDueCents     INTEGER,
    PaymentReference  TEXT,
    SettlementDate    DATE,
    IsEscrowed        INTEGER,
    EscrowHolder      TEXT,
    EscrowAmountCents INTEGER,
    ApprovalStatus    TEXT,
    ApprovedBy        TEXT,
    ApprovedAt        DATETIME,
    RejectionReason   TEXT,
    LastReminderSent  DATETIME,
    ReminderCount     INTEGER,
    ExternalReference TEXT,
    AuditLogId        INTEGER,
    DocumentUrl       TEXT
);

INSERT INTO advertiser_invoice_history (Id,AdvertiserId,InvoiceNumber,InvoiceDate,DueDate,AmountCents,Currency,PaidAmountCents,PaidDate,Status,PaymentMethod,BillingContact,BillingAddress,TaxId,LineItemCount,CampaignIds,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy,Notes,AdjustmentsCents,DiscountCents,TaxAmountCents,TotalDueCents,PaymentReference,SettlementDate,IsEscrowed,EscrowHolder,EscrowAmountCents,ApprovalStatus,ApprovedBy,ApprovedAt,RejectionReason,LastReminderSent,ReminderCount,ExternalReference,AuditLogId,DocumentUrl) VALUES (1,5001,'INV-20230301', '2023-03-01','2023-03-31',150000,'USD',0,NULL,'Pending','CreditCard','john.doe','123 Main St','TAX123',3,'101,102,103','2023-03-01 09:00:00','billing','2023-03-01 09:00:00','billing','first invoice',0,0,15000,165000,'PAY-REF-001',NULL,0,NULL,0,'Submitted',NULL,NULL,NULL,'','2023-03-15 10:00:00',1,'EXT-001',3001,'/docs/inv_20230301.pdf');
INSERT INTO advertiser_invoice_history (Id,AdvertiserId,InvoiceNumber,InvoiceDate,DueDate,AmountCents,Currency,PaidAmountCents,PaidDate,Status,PaymentMethod,BillingContact,BillingAddress,TaxId,LineItemCount,CampaignIds,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy,Notes,AdjustmentsCents,DiscountCents,TaxAmountCents,TotalDueCents,PaymentReference,SettlementDate,IsEscrowed,EscrowHolder,EscrowAmountCents,ApprovalStatus,ApprovedBy,ApprovedAt,RejectionReason,LastReminderSent,ReminderCount,ExternalReference,AuditLogId,DocumentUrl) VALUES (2,5002,'INV-20230415', '2023-04-15','2023-05-15',250000,'USD',250000,'2023-04-20','Paid','BankTransfer','jane.smith','456 Oak Ave','TAX456',5,'104,105,106,107,108','2023-04-15 08:30:00','billing','2023-04-20 14:00:00','billing','paid in full',0,0,25000,275000,'PAY-REF-002','2023-04-20',0,NULL,0,'Approved','manager','2023-04-15 12:00:00',NULL,NULL,'','2023-04-20 14:00:00',0,'EXT-002',3002,'/docs/inv_20230415.pdf');
INSERT INTO advertiser_invoice_history (Id,AdvertiserId,InvoiceNumber,InvoiceDate,DueDate,AmountCents,Currency,PaidAmountCents,PaidDate,Status,PaymentMethod,BillingContact,BillingAddress,TaxId,LineItemCount,CampaignIds,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy,Notes,AdjustmentsCents,DiscountCents,TaxAmountCents,TotalDueCents,PaymentReference,SettlementDate,IsEscrowed,EscrowHolder,EscrowAmountCents,ApprovalStatus,ApprovedBy,ApprovedAt,RejectionReason,LastReminderSent,ReminderCount,ExternalReference,AuditLogId,DocumentUrl) VALUES (3,5003,'INV-20230510', '2023-05-10','2023-06-10',100000,'USD',0,NULL,'Overdue','CreditCard','alice.wang','789 Pine Rd','TAX789',2,'109,110','2023-05-10 10:00:00','billing','2023-05-20 11:00:00','billing','overdue reminder sent',0,0,10000,110000,'PAY-REF-003',NULL,0,NULL,0,'Submitted',NULL,NULL,'Late payment','2023-05-25 09:30:00',2,'EXT-003',3003,'/docs/inv_20230510.pdf');

-- Table tracking user content bookmarks
CREATE TABLE user_content_bookmarks
(
    Id                 INTEGER PRIMARY KEY,
    UserId             INTEGER,
    ContentType        TEXT,
    ContentId          INTEGER,
    BookmarkCreatedAt  DATETIME,
    BookmarkTitle      TEXT,
    Tags               TEXT,
    Notes              TEXT,
    IsPublic           INTEGER,
    FolderName         TEXT,
    PositionIndex      INTEGER,
    ClickCount         INTEGER,
    LastAccessedAt     DATETIME,
    SharedWithUserIds  TEXT,
    ExpirationDate     DATE,
    ReminderEnabled    INTEGER,
    ReminderDate       DATE,
    ViewMode           TEXT,
    HighlightedText    TEXT,
    ScreenshotUrl      TEXT,
    CreatedBySystem    TEXT,
    SyncStatus         TEXT,
    SyncErrorMessage   TEXT,
    LastSyncAt         DATETIME,
    SourceApplication  TEXT,
    DeviceType         TEXT,
    BrowserInfo        TEXT,
    OperatingSystem    TEXT,
    IsArchived         INTEGER,
    ArchiveDate        DATE,
    ArchiveReason      TEXT,
    OriginalUrl        TEXT,
    ShortUrl           TEXT,
    AccessPermission   TEXT,
    Rating             INTEGER,
    ReviewComment      TEXT,
    ReviewDate         DATE,
    ReviewerUserId     INTEGER,
    AuditLogId         INTEGER,
    MetadataJson       TEXT
);

INSERT INTO user_content_bookmarks (Id,UserId,ContentType,ContentId,BookmarkCreatedAt,BookmarkTitle,Tags,Notes,IsPublic,FolderName,PositionIndex,ClickCount,LastAccessedAt,SharedWithUserIds,ExpirationDate,ReminderEnabled,ReminderDate,ViewMode,HighlightedText,ScreenshotUrl,CreatedBySystem,SyncStatus,SyncErrorMessage,LastSyncAt,SourceApplication,DeviceType,BrowserInfo,OperatingSystem,IsArchived,ArchiveDate,ArchiveReason,OriginalUrl,ShortUrl,AccessPermission,Rating,ReviewComment,ReviewDate,ReviewerUserId,AuditLogId,MetadataJson) VALUES (1,200,'post',3456,'2023-03-01 12:00:00','Interesting Post','sql,performance','check later',0,'Research',1,5,'2023-03-05 14:20:00','210,215',NULL,1,'2023-04-01','full','important part','/screens/1.png','systemA','Synced',NULL,'2023-03-02 08:00:00','WebApp','Desktop','Chrome','Windows',0,NULL,NULL,'https://example.com/q/3456','https://ex.am/ab1','private',4,'good clarity','2023-03-10','300',4001,'{}');
INSERT INTO user_content_bookmarks (Id,UserId,ContentType,ContentId,BookmarkCreatedAt,BookmarkTitle,Tags,Notes,IsPublic,FolderName,PositionIndex,ClickCount,LastAccessedAt,SharedWithUserIds,ExpirationDate,ReminderEnabled,ReminderDate,ViewMode,HighlightedText,ScreenshotUrl,CreatedBySystem,SyncStatus,SyncErrorMessage,LastSyncAt,SourceApplication,DeviceType,BrowserInfo,OperatingSystem,IsArchived,ArchiveDate,ArchiveReason,OriginalUrl,ShortUrl,AccessPermission,Rating,ReviewComment,ReviewDate,ReviewerUserId,AuditLogId,MetadataJson) VALUES (2,201,'comment',7890,'2023-03-15 09:30:00','Helpful Comment','clarification','needs follow-up',1,'ToReview',2,2,'2023-03-16 10:00:00','',NULL,0,NULL,'compact','note text','/screens/2.png','systemB','Pending','Network error','2023-03-15 09:35:00','MobileApp','Mobile','Safari','iOS',0,NULL,NULL,'https://example.com/c/7890','https://ex.am/ab2','shared',3,'ok','2023-03-20','301',4002,'{}');
INSERT INTO user_content_bookmarks (Id,UserId,ContentType,ContentId,BookmarkCreatedAt,BookmarkTitle,Tags,Notes,IsPublic,FolderName,PositionIndex,ClickCount,LastAccessedAt,SharedWithUserIds,ExpirationDate,ReminderEnabled,ReminderDate,ViewMode,HighlightedText,ScreenshotUrl,CreatedBySystem,SyncStatus,SyncErrorMessage,LastSyncAt,SourceApplication,DeviceType,BrowserInfo,OperatingSystem,IsArchived,ArchiveDate,ArchiveReason,OriginalUrl,ShortUrl,AccessPermission,Rating,ReviewComment,ReviewDate,ReviewerUserId,AuditLogId,MetadataJson) VALUES (3,202,'tag',55,'2023-04-01 16:45:00','Tag Overview','metadata','review later',0,'Tags',3,0,NULL,'',NULL,0,NULL,'full','definition','/screens/3.png','systemC','Synced',NULL,'2023-04-01 17:00:00','DesktopApp','Desktop','Edge','Linux',0,NULL,NULL,'https://example.com/t/55','https://ex.am/ab3','private',5,'very useful','2023-04-05','302',4003,'{}');

-- Table storing recommendation scores for posts
CREATE TABLE post_recommendation_scores
(
    Id                     INTEGER PRIMARY KEY,
    PostId                 INTEGER,
    ModelVersion           TEXT,
    Score                  REAL,
    Confidence             REAL,
    ReasonCode             TEXT,
    GeneratedAt            DATETIME,
    GeneratedByUserId      INTEGER,
    SourceSignalCount      INTEGER,
    ClickThroughRate       REAL,
    ViewThroughRate        REAL,
    EngagementScore        REAL,
    SpamProbability        REAL,
    IsPersonalized         INTEGER,
    AudienceSegmentId      INTEGER,
    CountryCode            TEXT,
    LanguageCode           TEXT,
    DeviceType             TEXT,
    Platform               TEXT,
    SessionId              TEXT,
    ExperimentGroup        TEXT,
    IsTestGroup            INTEGER,
    CalibrationFactor      REAL,
    NormalizedScore        REAL,
    RankingPosition        INTEGER,
    IsTopK                 INTEGER,
    TopKSize               INTEGER,
    RefreshCount           INTEGER,
    LastRefreshAt          DATETIME,
    FeedbackCount          INTEGER,
    PositiveFeedbackCount  INTEGER,
    NegativeFeedbackCount  INTEGER,
    OverrideScore          REAL,
    OverrideReason         TEXT,
    IsFinal                INTEGER,
    CreatedAt              DATETIME,
    CreatedBy              TEXT,
    UpdatedAt              DATETIME,
    UpdatedBy              TEXT,
    Notes                  TEXT,
    AuditLogId             INTEGER,
    MetadataJson           TEXT,
    FeatureVectorChecksum  TEXT
);

INSERT INTO post_recommendation_scores (Id,PostId,ModelVersion,Score,Confidence,ReasonCode,GeneratedAt,GeneratedByUserId,SourceSignalCount,ClickThroughRate,ViewThroughRate,EngagementScore,SpamProbability,IsPersonalized,AudienceSegmentId,CountryCode,LanguageCode,DeviceType,Platform,SessionId,ExperimentGroup,IsTestGroup,CalibrationFactor,NormalizedScore,RankingPosition,IsTopK,TopKSize,RefreshCount,LastRefreshAt,FeedbackCount,PositiveFeedbackCount,NegativeFeedbackCount,OverrideScore,OverrideReason,IsFinal,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy,Notes,AuditLogId,MetadataJson,FeatureVectorChecksum) VALUES (1,3456,'v1.0',0.87,0.95,'relevance','2023-04-01 10:00:00',1001,15,0.12,0.30,0.45,0.02,1,200,'US','en','Desktop','Web','sess123','A',0,1.0,0.87,5,1,10,2,'2023-04-02 08:00:00',3,2,1,NULL,NULL,1,'2023-04-01 10:00:00','system','2023-04-01 12:00:00','system','auto generated',4001,'{}','chk123');
INSERT INTO post_recommendation_scores (Id,PostId,ModelVersion,Score,Confidence,ReasonCode,GeneratedAt,GeneratedByUserId,SourceSignalCount,ClickThroughRate,ViewThroughRate,EngagementScore,SpamProbability,IsPersonalized,AudienceSegmentId,CountryCode,LanguageCode,DeviceType,Platform,SessionId,ExperimentGroup,IsTestGroup,CalibrationFactor,NormalizedScore,RankingPosition,IsTopK,TopKSize,RefreshCount,LastRefreshAt,FeedbackCount,PositiveFeedbackCount,NegativeFeedbackCount,OverrideScore,OverrideReason,IsFinal,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy,Notes,AuditLogId,MetadataJson,FeatureVectorChecksum) VALUES (2,7890,'v1.1',0.65,0.80,'freshness','2023-04-02 11:30:00',1002,8,0.05,0.20,0.30,0.10,0,210,'CA','fr','Mobile','App','sess456','B',1,0.9,0.58,12,0,20,1,'2023-04-03 09:00:00',5,3,2,NULL,NULL,0,'2023-04-02 11:30:00','system','2023-04-02 13:00:00','system','auto generated',4002,'{}','chk456');
INSERT INTO post_recommendation_scores (Id,PostId,ModelVersion,Score,Confidence,ReasonCode,GeneratedAt,GeneratedByUserId,SourceSignalCount,ClickThroughRate,ViewThroughRate,EngagementScore,SpamProbability,IsPersonalized,AudienceSegmentId,CountryCode,LanguageCode,DeviceType,Platform,SessionId,ExperimentGroup,IsTestGroup,CalibrationFactor,NormalizedScore,RankingPosition,IsTopK,TopKSize,RefreshCount,LastRefreshAt,FeedbackCount,PositiveFeedbackCount,NegativeFeedbackCount,OverrideScore,OverrideReason,IsFinal,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy,Notes,AuditLogId,MetadataJson,FeatureVectorChecksum) VALUES (3,1011,'v2.0',0.92,0.98,'authority','2023-04-03 14:45:00',1003,20,0.20,0.50,0.70,0.01,1,220,'GB','en','Tablet','Web','sess789','C',0,1.05,0.88,3,1,15,3,'2023-04-04 07:30:00',1,1,0,NULL,NULL,1,'2023-04-03 14:45:00','system','2023-04-03 16:00:00','system','auto generated',4003,'{}','chk789');