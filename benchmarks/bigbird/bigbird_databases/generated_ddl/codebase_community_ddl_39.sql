-- Academic Courses
CREATE TABLE academic_courses
(
    CourseId            INTEGER PRIMARY KEY,
    CourseCode          TEXT,
    Title               TEXT,
    Description         TEXT,
    Credits             INTEGER,
    Department          TEXT,
    Level               TEXT,
    Semester            TEXT,
    Year                INTEGER,
    InstructorId        INTEGER,
    MaxEnrollment       INTEGER,
    CurrentEnrollment   INTEGER,
    Location            TEXT,
    ScheduleDays        TEXT,
    StartTime           TEXT,
    EndTime             TEXT,
    PrerequisiteCourseId INTEGER,
    SyllabusUrl         TEXT,
    CreatedDate         DATETIME,
    LastUpdated         DATETIME
);

INSERT INTO academic_courses VALUES (1,'CS101','Intro_to_Computer_Science','Basics_of_computing',3,'Computer_Science','Undergraduate','Fall','2023',10,100,45,'Room_101','MonWedFri','09:00','10:30',NULL,'http://example.com/cs101.pdf','2023-01-15 08:00:00','2023-02-01 12:00:00');
INSERT INTO academic_courses VALUES (2,'MATH201','Calculus_I','Differential_and_integral_calculus',4,'Mathematics','Undergraduate','Spring','2024',20,80,60,'Room_202','TueThu','11:00','12:30',1,'http://example.com/math201.pdf','2023-03-10 09:30:00','2023-03-12 14:20:00');
INSERT INTO academic_courses VALUES (3,'ENG305','Advanced_Writing','Technical_and_academic_writing',3,'English','Graduate','Fall','2023',30,30,28,'Room_303','MonWed','14:00','15:30',2,'http://example.com/eng305.pdf','2023-05-05 10:15:00','2023-05-06 11:45:00');

-- Vendor Compliance Checks
CREATE TABLE vendor_compliance_checks
(
    CheckId               INTEGER PRIMARY KEY,
    VendorId              INTEGER,
    CheckDate             DATETIME,
    ComplianceArea        TEXT,
    Result                TEXT,
    Score                 INTEGER,
    AuditorId             INTEGER,
    Notes                 TEXT,
    FollowUpRequired      INTEGER,
    FollowUpDate          DATETIME,
    DocumentReference     TEXT,
    RiskLevel             TEXT,
    RegulationCode        TEXT,
    IsCritical            INTEGER,
    CorrectiveActionPlan  TEXT,
    ActionOwnerId         INTEGER,
    ActionDueDate         DATETIME,
    Verified              INTEGER,
    VerificationDate      DATETIME,
    CreatedBy              INTEGER,
    CreatedAt              DATETIME,
    UpdatedAt              DATETIME
);

INSERT INTO vendor_compliance_checks VALUES (1,1001,'2023-02-10 10:00:00','Data_Privacy','Pass',95,501,'All_documents_up_to_date',0,NULL,'DP-REF-2023','Low','GDPR',1,'N/A',NULL,NULL,1,'2023-02-15 09:00:00',200,'2023-02-10 10:05:00','2023-02-12 14:30:00');
INSERT INTO vendor_compliance_checks VALUES (2,1002,'2023-03-05 11:30:00','Security','Fail',60,502,'Missing_encryption_policy',1,'2023-03-20 00:00:00','SEC-REF-2023','High','PCI-DSS',1,'Implement_AES_256',503,'2023-04-01 00:00:00',0,NULL,201,'2023-03-05 11:35:00','2023-03-06 16:20:00');
INSERT INTO vendor_compliance_checks VALUES (3,1003,'2023-04-12 09:45:00','Environmental','Pass',88,503,'Compliant_with_local_regulations',0,NULL,'ENV-REF-2023','Medium','ISO-14001',0,'N/A',NULL,NULL,1,'2023-04-14 10:00:00',202,'2023-04-12 09:50:00','2023-04-13 13:15:00');

-- Internal Wiki Pages
CREATE TABLE internal_wiki_pages
(
    PageId            INTEGER PRIMARY KEY,
    Title             TEXT,
    Slug              TEXT,
    Content           TEXT,
    AuthorUserId      INTEGER,
    CreatedAt         DATETIME,
    UpdatedAt         DATETIME,
    Version           INTEGER,
    IsPublished       INTEGER,
    Category          TEXT,
    Tags              TEXT,
    ViewCount         INTEGER,
    LikeCount         INTEGER,
    DislikeCount      INTEGER,
    LastEditorUserId  INTEGER,
    LastEditDate      DATETIME,
    Summary           TEXT,
    LanguageCode      TEXT,
    IsLocked          INTEGER,
    LockReason        TEXT,
    Deleted           INTEGER
);

INSERT INTO internal_wiki_pages VALUES (1,'Onboarding_Guide','onboarding-guide','Content_of_onboarding',101,'2023-01-01 08:00:00','2023-01-10 09:15:00',3,1,'HR','onboarding,guide',120,30,2,102,'2023-01-09 14:00:00','Brief_summary', 'en',0,NULL,0);
INSERT INTO internal_wiki_pages VALUES (2,'API_Reference','api-reference','API_details',103,'2023-02-15 10:30:00','2023-03-01 11:45:00',5,1,'Engineering','api,reference',250,80,5,104,'2023-02-28 16:20:00','API_overview','en',0,NULL,0);
INSERT INTO internal_wiki_pages VALUES (3,'Security_Policies','security-policies','Policy_content',105,'2023-03-20 09:00:00','2023-04-05 12:30:00',2,1,'Compliance','security,policy',90,45,1,106,'2023-04-04 15:00:00','Security_overview','en',1,'Legal_review_pending',0);

-- Software Release Notes
CREATE TABLE software_release_notes
(
    ReleaseId            INTEGER PRIMARY KEY,
    VersionNumber        TEXT,
    ReleaseDate          DATETIME,
    ProductName          TEXT,
    MajorChanges         TEXT,
    BugFixes             TEXT,
    KnownIssues          TEXT,
    ReleaseNotesUrl      TEXT,
    IsCriticalUpdate     INTEGER,
    DeployEnvironment    TEXT,
    ApprovedByUserId     INTEGER,
    ApprovedAt           DATETIME,
    CreatedByUserId      INTEGER,
    CreatedAt            DATETIME,
    UpdatedByUserId      INTEGER,
    UpdatedAt            DATETIME,
    RollbackPlan         TEXT,
    SecurityPatch        INTEGER,
    SupportContact       TEXT,
    DownloadUrl          TEXT
);

INSERT INTO software_release_notes VALUES (1,'1.0.0','2023-01-15 00:00:00','ProductX','Initial_release','None','None','http://example.com/release/1.0.0','0','Production',201,'2023-01-14 18:00:00',202,'2023-01-10 09:00:00',203,'2023-01-10 09:05:00','N/A',0,'support@example.com','http://example.com/download/productx/1.0.0');
INSERT INTO software_release_notes VALUES (2,'1.1.0','2023-04-20 00:00:00','ProductX','Feature_A_added','Fixed_login_bug','Issue_with_export','http://example.com/release/1.1.0','1','Staging',204,'2023-04-18 12:30:00',205,'2023-04-10 10:45:00',206,'2023-04-11 11:00:00','Rollback_to_1.0.0',1,'support@example.com','http://example.com/download/productx/1.1.0');
INSERT INTO software_release_notes VALUES (3,'2.0.0','2023-09-05 00:00:00','ProductX','Major_UI_overhaul','Various_bug_fixes','Compatibility_with_legacy_systems','http://example.com/release/2.0.0','1','Production',207,'2023-09-03 14:20:00',208,'2023-08-20 08:30:00',209,'2023-08-25 09:00:00','Rollback_to_1.1.0',1,'support@example.com','http://example.com/download/productx/2.0.0');

-- Global Event Calendar
CREATE TABLE global_event_calendar
(
    EventId            INTEGER PRIMARY KEY,
    EventName          TEXT,
    EventType          TEXT,
    StartDate          DATETIME,
    EndDate            DATETIME,
    Location           TEXT,
    TimeZone           TEXT,
    OrganizerId        INTEGER,
    Description        TEXT,
    Category           TEXT,
    Audience           TEXT,
    IsVirtual          INTEGER,
    VirtualLink        TEXT,
    Capacity           INTEGER,
    RegisteredCount   INTEGER,
    IsPublic           INTEGER,
    TagList            TEXT,
    CreatedAt          DATETIME,
    CreatedBy          INTEGER,
    UpdatedAt          DATETIME,
    UpdatedBy          INTEGER,
    Status             TEXT
);

INSERT INTO global_event_calendar VALUES (1,'Annual_Summit','Conference','2023-11-01 09:00:00','2023-11-03 17:00:00','Convention_Center','America/New_York',301,'Company_wide_summit','Business','All_Employees',0,NULL,500,340,1,'summit,2023', '2023-06-01 08:00:00',300,'2023-07-15 10:30:00',301,'Scheduled');
INSERT INTO global_event_calendar VALUES (2,'Webinar_Cloud_Security','Webinar','2023-08-15 15:00:00','2023-08-15 16:30:00','Online','America/Los_Angeles',302,'Security_best_practices','Education','Customers',1,'https://zoom.us/j/123456789',0,150,1,'security,cloud', '2023-05-20 09:30:00',302,'2023-07-01 11:00:00',303,'Confirmed');
INSERT INTO global_event_calendar VALUES (3,'Product_Launch_EU','Launch','2023-12-10 10:00:00','2023-12-10 12:00:00','Berlin_Expo','Europe/Berlin',304,'Introducing_new_product_line','Marketing','Partners',0,NULL,300,200,0,'launch,europe', '2023-08-15 14:45:00',304,'2023-09-30 16:20:00',305,'Planned');

-- Client Survey Responses
CREATE TABLE client_survey_responses
(
    ResponseId            INTEGER PRIMARY KEY,
    SurveyId              INTEGER,
    ClientId              INTEGER,
    ResponseDate          DATETIME,
    Question1Rating       INTEGER,
    Question2Rating       INTEGER,
    Question3Rating       INTEGER,
    Question4Rating       INTEGER,
    Question5Rating       INTEGER,
    OverallScore          INTEGER,
    Comments              TEXT,
    FollowUpNeeded        INTEGER,
    FollowUpDate          DATETIME,
    ResponderUserId       INTEGER,
    ContactMethod         TEXT,
    PreferredContactTime  TEXT,
    NetPromoterScore      INTEGER,
    Industry              TEXT,
    CompanySize           TEXT,
    Region                TEXT,
    CreatedAt             DATETIME,
    CreatedBy             INTEGER,
    UpdatedAt             DATETIME
);

INSERT INTO client_survey_responses VALUES (1,10,10001,'2023-04-01 10:20:00',5,4,5,4,5,23,'Great_service',0,NULL,501,'Email','Morning',9,'Technology','Enterprise','North_America','2023-04-01 10:25:00',500,'2023-04-01 10:30:00');
INSERT INTO client_survey_responses VALUES (2,10,10002,'2023-04-02 11:15:00',3,3,4,2,3,15,'Average_experience',1,'2023-04-10 00:00:00',502,'Phone','Afternoon',5,'Finance','SMB','Europe','2023-04-02 11:20:00',501,'2023-04-02 11:25:00');
INSERT INTO client_survey_responses VALUES (3,10,10003,'2023-04-03 09:45:00',4,5,5,5,4,23,'Excellent_support',0,NULL,503,'Email','Evening',10,'Healthcare','Enterprise','Asia','2023-04-03 09:50:00',502,'2023-04-03 09:55:00');

-- IoT Device Profiles
CREATE TABLE iot_device_profiles
(
    ProfileId            INTEGER PRIMARY KEY,
    DeviceModel          TEXT,
    Manufacturer         TEXT,
    FirmwareVersion      TEXT,
    HardwareRevision     TEXT,
    SupportedProtocols   TEXT,
    PowerSource          TEXT,
    BatteryLifeHours    INTEGER,
    ConnectivityType     TEXT,
    MaxThroughputMbps   INTEGER,
    OperatingTempMin    INTEGER,
    OperatingTempMax    INTEGER,
    Dimensions          TEXT,
    WeightGrams          INTEGER,
    DefaultConfig       TEXT,
    IsSecureBootEnabled INTEGER,
    EncryptionStandard   TEXT,
    Certification        TEXT,
    ReleaseDate          DATETIME,
    CreatedAt            DATETIME,
    UpdatedAt            DATETIME
);

INSERT INTO iot_device_profiles VALUES (1,'TempSensorX','AcmeCorp','v1.2.3','RevA','WiFi,MQTT','Battery',2400,'WiFi',150,0,50,'10x5x2mm',15,'{"sampling_rate":60}',1,'AES-128','CE', '2023-01-10 00:00:00','2023-01-12 08:00:00','2023-02-01 09:30:00');
INSERT INTO iot_device_profiles VALUES (2,'SmartPlugY','BetaTech','v3.4.1','RevB','Zigbee','Mains',0,'Zigbee',300, -10, 60,'45x30x20mm',80,'{"max_load":2000}',1,'AES-256','UL', '2023-03-05 00:00:00','2023-03-06 10:15:00','2023-03-20 12:00:00');
INSERT INTO iot_device_profiles VALUES (3,'CamProZ','GammaVision','v2.0.0','RevC','WiFi,RTSP','PoE',0,'Ethernet',1000, -20, 70,'120x80x60mm',350,'{"resolution":"1080p"}',0,'None','None','2023-05-20 00:00:00','2023-05-21 14:45:00','2023-06-10 16:30:00');

-- Streaming Content Metadata
CREATE TABLE streaming_content_metadata
(
    ContentId            INTEGER PRIMARY KEY,
    Title                TEXT,
    Description          TEXT,
    MediaType            TEXT,
    DurationSeconds      INTEGER,
    Resolution           TEXT,
    Codec                TEXT,
    BitrateKbps          INTEGER,
    Language             TEXT,
    SubtitleLanguages    TEXT,
    ReleaseYear          INTEGER,
    Genre                TEXT,
    Rating               TEXT,
    ProviderId           INTEGER,
    LicenseStart         DATETIME,
    LicenseEnd           DATETIME,
    IsLive               INTEGER,
    LiveStart            DATETIME,
    LiveEnd              DATETIME,
    ThumbnailUrl         TEXT,
    CreatedAt            DATETIME,
    UpdatedAt            DATETIME
);

INSERT INTO streaming_content_metadata VALUES (1,'Nature_Documentary','Explore_wildlife','Video',5400,'4K','H.264',15000,'en','es,fr',2023,'Documentary','PG','10','2023-01-01 00:00:00','2024-01-01 00:00:00',0,NULL,NULL,'http://example.com/thumb1.jpg','2023-01-10 08:00:00','2023-01-12 09:15:00');
INSERT INTO streaming_content_metadata VALUES (2,'Live_Concert_2023','Rock_band_live','Video',7200,'1080p','H.265',25000,'en','de',2023,'Music','PG-13','11','2023-06-01 20:00:00','2023-06-01 22:00:00',1,'2023-06-01 20:00:00','2023-06-01 22:00:00','http://example.com/thumb2.jpg','2023-05-15 12:30:00','2023-05-15 13:00:00');
INSERT INTO streaming_content_metadata VALUES (3,'Podcast_Episode_45','Tech_trends','Audio',1800,'N/A','AAC',192,'en','',2023,'Technology','G','12','2023-03-01 00:00:00','2025-03-01 00:00:00',0,NULL,NULL,'http://example.com/thumb3.jpg','2023-02-28 07:45:00','2023-03-01 08:00:00');

-- Marketing Audience Segments
CREATE TABLE marketing_audience_segments
(
    SegmentId           INTEGER PRIMARY KEY,
    SegmentName         TEXT,
    Description         TEXT,
    CriteriaJson        TEXT,
    AudienceSize        INTEGER,
    AvgAge              INTEGER,
    GenderDistribution  TEXT,
    LocationDistribution TEXT,
    Interests           TEXT,
    PurchaseIntentScore INTEGER,
    LastUpdated         DATETIME,
    CreatedAt           DATETIME,
    CreatedBy           INTEGER,
    IsActive            INTEGER,
    ChannelPreference   TEXT,
    CpcBid              REAL,
    CpmBid              REAL,
    Platform            TEXT,
    Seasonality         TEXT,
    Notes               TEXT,
    Priority            INTEGER
);

INSERT INTO marketing_audience_segments VALUES (1,'Tech_Enthusiasts','Users_interested_in_latest_tech','{\"device\":\"mobile\",\"category\":\"tech\"}',120000,29,'Male:60,Female:40','North_America:70,Europe:30','gadgets,software',85,'2023-07-01 10:00:00','2023-01-15 09:00:00',1001,1,'Social','0.75','12.50','Google','Q4','High_spend','1');
INSERT INTO marketing_audience_segments VALUES (2,'Health_Conscious','People_focusing_on_wellness','{\"interest\":\"health\",\"age_range\":\"25-45\"}',80000,34,'Male:45,Female:55','Asia:50,Europe:25,North_America:25','fitness,nutrition',70,'2023-06-15 14:30:00','2023-02-20 11:30:00',1002,1,'Email','0.60','10.00','Facebook','Year_Round','Moderate_spend','2');
INSERT INTO marketing_audience_segments VALUES (3,'Budget_Shoppers','Price_sensitive_shoppers','{\"spending\":\"low\",\"category\":\"all\"}',200000,31,'Male:50,Female:50','Global','discounts,coupons',55,'2023-05-20 09:45:00','2023-03-05 08:15:00',1003,1,'Search','0.40','8.00','Bing','Summer','Low_spend','3');

-- Enterprise Taxonomy Entities
CREATE TABLE enterprise_taxonomy_entities
(
    EntityId            INTEGER PRIMARY KEY,
    EntityName          TEXT,
    EntityType          TEXT,
    ParentEntityId      INTEGER,
    HierarchyLevel      INTEGER,
    Description         TEXT,
    CreatedAt           DATETIME,
    CreatedBy           INTEGER,
    UpdatedAt           DATETIME,
    UpdatedBy           INTEGER,
    IsActive            INTEGER,
    MetadataJson        TEXT,
    OwnerDepartment     TEXT,
    EffectiveFrom       DATETIME,
    EffectiveTo         DATETIME,
    TagList             TEXT,
    Synonyms            TEXT,
    RelatedEntityIds    TEXT,
    Status              TEXT,
    Version             INTEGER,
    SourceSystem        TEXT,
    Deleted             INTEGER
);

INSERT INTO enterprise_taxonomy_entities VALUES (1,'Product_Line_A','ProductLine',NULL,1,'Primary_product_line','2023-01-01 08:00:00',400,'2023-02-01 09:00:00',401,1,'{\"category\":\"software\"}','Product','2023-01-01 00:00:00','2025-12-31 23:59:59','lineA,core','PL_A','2,3','Active',1,'ERP','0');
INSERT INTO enterprise_taxonomy_entities VALUES (2,'Feature_X','Feature',1,2,'Key_feature_of_product_A','2023-01-15 10:30:00',402,'2023-03-01 11:45:00',403,1,'{\"module\":\"analytics\"}','Engineering','2023-01-15 00:00:00','2024-12-31 23:59:59','featureX,analytics','FX','1,4','Active',2,'ERP','0');
INSERT INTO enterprise_taxonomy_entities VALUES (3,'Regulation_Compliance','Policy',NULL,1,'Compliance_policies','2023-02-01 09:15:00',404,'2023-04-01 10:20:00',405,1,'{\"region\":\"EU\"}','Legal','2023-02-01 00:00:00','2026-12-31 23:59:59','compliance,gdpr','RC','2','Active',1,'HRIS','0');