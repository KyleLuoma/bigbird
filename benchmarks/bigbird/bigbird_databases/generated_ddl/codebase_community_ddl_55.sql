-- Project timeline details
CREATE TABLE project_timelines
(
    TimelineId            INTEGER PRIMARY KEY,
    ProjectId             INTEGER,
    PhaseId               INTEGER,
    PhaseName             TEXT,
    StartDate             DATETIME,
    EndDate               DATETIME,
    OwnerDept             TEXT,
    Budget                REAL,
    Status                TEXT,
    RiskLevel             TEXT,
    Milestone1Date        DATETIME,
    Milestone2Date        DATETIME,
    Milestone3Date        DATETIME,
    KeyDeliverable        TEXT,
    Dependencies          TEXT,
    Comments              TEXT,
    UpdatedBy             INTEGER,
    UpdatedAt             DATETIME,
    CreatedBy             INTEGER,
    CreatedAt             DATETIME,
    CompletionPercent     REAL,
    ReviewDueDate         DATETIME
);

INSERT INTO project_timelines VALUES (1,101,1,'Planning','2023-01-01','2023-02-01','Engineering',50000,'Open','Low','2023-01-15','2023-01-20','2023-01-25','RequirementDoc','None','Initial entry',10,'2023-01-01',20,'2022-12-15',0.0,'2023-02-15');
INSERT INTO project_timelines VALUES (2,101,2,'Design','2023-02-02','2023-04-01','Engineering',150000,'Open','Medium','2023-02-15','2023-03-01','2023-03-15','DesignSpecs','Planning','Design phase started',10,'2023-02-02',20,'2023-01-10',0.0,'2023-04-15');
INSERT INTO project_timelines VALUES (3,101,3,'Implementation','2023-04-02','2023-09-30','Engineering',300000,'Planned','High','2023-04-15','2023-07-01','2023-09-01','BetaRelease','Design','Implementation phase',10,'2023-04-02',20,'2023-02-20',0.0,'2023-10-15');

-- Supplier quality audit records
CREATE TABLE supplier_quality_audits
(
    AuditId                INTEGER PRIMARY KEY,
    SupplierId             INTEGER,
    AuditDate              DATETIME,
    AuditorName            TEXT,
    Score                  REAL,
    FindingsSummary        TEXT,
    CorrectiveActionDue    DATETIME,
    AuditScope             TEXT,
    InspectionTeamSize     INTEGER,
    SiteVisitRequired      TEXT,
    FollowUpDate           DATETIME,
    FollowUpCompleted      TEXT,
    DocumentationLink      TEXT,
    RiskCategory           TEXT,
    ComplianceStatus       TEXT,
    ActionOwner            TEXT,
    ActionStatus           TEXT,
    ActionComments         TEXT,
    CreatedBy              INTEGER,
    CreatedAt              DATETIME,
    UpdatedBy              INTEGER,
    UpdatedAt              DATETIME,
    OverallRating          TEXT,
    NextAuditPlanned       DATETIME,
    AuditType              TEXT
);

INSERT INTO supplier_quality_audits VALUES (1,2001,'2023-03-10','AliceSmith',85.5,'Minor non‑conformities','2023-04-10','Annual','3','No','2023-05-01','No','http://example.com/doc1','Medium','Pass','JohnDoe','InProgress','Awaiting documents',10,'2023-03-11',11,'2023-03-20','Good','2024-03-10','Internal');
INSERT INTO supplier_quality_audits VALUES (2,2002,'2023-02-15','BobJones',92.0,'All criteria met','2023-03-15','Quarterly','4','Yes','2023-04-01','Yes','http://example.com/doc2','Low','Pass','JaneDoe','Completed','No issues',12,'2023-02-16',13,'2023-02-25','Excellent','2023-08-15','External');
INSERT INTO supplier_quality_audits VALUES (3,2003,'2023-01-20','CarolLee',78.0,'Critical gaps identified','2023-02-20','Special','5','Yes','2023-03-01','No','http://example.com/doc3','High','Fail','MikeBrown','Pending','Action plan needed',14,'2023-01-21',15,'2023-02-01','Poor','2023-07-20','Internal');

-- Vehicle fleet usage logs
CREATE TABLE vehicle_fleet_usage
(
    RecordId               INTEGER PRIMARY KEY,
    VehicleId              INTEGER,
    DriverId               INTEGER,
    TripStart              DATETIME,
    TripEnd                DATETIME,
    StartOdometer          INTEGER,
    EndOdometer            INTEGER,
    FuelConsumed           REAL,
    CargoWeight            REAL,
    RouteCode              TEXT,
    Purpose                TEXT,
    Mileage                REAL,
    AverageSpeed           REAL,
    IdleTimeMinutes       INTEGER,
    StopsCount             INTEGER,
    MaintenanceFlag       TEXT,
    IncidentReported      TEXT,
    IncidentDetails       TEXT,
    WeatherCondition      TEXT,
    TrafficLevel           TEXT,
    CreatedBy              INTEGER,
    CreatedAt              DATETIME,
    UpdatedBy              INTEGER,
    UpdatedAt              DATETIME,
    TripStatus             TEXT,
    Remarks                TEXT,
    GPSLogReference        TEXT,
    FuelCost               REAL,
    EmissionFactor         REAL
);

INSERT INTO vehicle_fleet_usage VALUES (1,301,401,'2023-04-01 08:00','2023-04-01 12:30',12000,12450,45.2,1200,'RC100','Delivery',450,60,30,3,'No','No','', 'Clear','Moderate',10,'2023-04-01',11,'2023-04-01','Completed','Delivered on time','gpslog001',85.4,0.32);
INSERT INTO vehicle_fleet_usage VALUES (2,302,402,'2023-04-02 09:15','2023-04-02 14:00',8500,8880,38.7,800,'RC200','Service',380,55,20,2,'Yes','Yes','Flat tire','Rain','Heavy',12,'2023-04-02',13,'2023-04-02','Completed','Tire replaced','gpslog002',70.1,0.30);
INSERT INTO vehicle_fleet_usage VALUES (3,303,403,'2023-04-03 07:45','2023-04-03 11:15',5000,5310,42.0,500,'RC300','Pickup',310,58,15,1,'No','No','', 'Clear','Light',14,'2023-04-03',15,'2023-04-03','Completed','Pickup successful','gpslog003',78.6,0.31);

-- Environmental monitoring stations
CREATE TABLE environmental_monitoring_stations
(
    StationId               INTEGER PRIMARY KEY,
    LocationName            TEXT,
    Latitude                REAL,
    Longitude               REAL,
    InstallDate             DATETIME,
    SensorType              TEXT,
    MeasurementUnit         TEXT,
    DailyAvg                REAL,
    DailyMax                REAL,
    DailyMin                REAL,
    LastCalibrationDate     DATETIME,
    Status                  TEXT,
    MaintenanceDueDate      DATETIME,
    DataUploadFrequencyMin  INTEGER,
    BatteryLevelPercent     REAL,
    FirmwareVersion         TEXT,
    NetworkSignalStrength   REAL,
    OwnerDept               TEXT,
    ContactPerson           TEXT,
    ContactEmail            TEXT,
    CreatedBy               INTEGER,
    CreatedAt               DATETIME,
    UpdatedBy               INTEGER,
    UpdatedAt               DATETIME,
    ElevationMeters         REAL,
    ClimateZone             TEXT,
    DataQualityFlag         TEXT,
    LastDataTimestamp       DATETIME,
    CalibrationNotes        TEXT
);

INSERT INTO environmental_monitoring_stations VALUES (1,'StationAlpha',34.05,-118.25,'2022-01-10','AirQuality','µg/m3',12.5,35.0,5.0,'2023-01-15','Active','2023-07-01',60,92.0,'v1.3',-70,'Operations','MikeSmith','mike.smith@example.com',10,'2022-01-11',11,'2022-12-01',89.0,'Coastal','Good','2023-04-30 10:00','Calibration OK');
INSERT INTO environmental_monitoring_stations VALUES (2,'StationBeta',40.71,-74.01,'2021-06-20','Noise','dB',55.2,78.0,30.5,'2022-12-05','Active','2023-06-15',30,85.0,'v1.2',-65,'Research','LauraLee','laura.lee@example.com',12,'2021-06-21',13,'2022-11-20',45.0,'Urban','Moderate','2023-04-30 10:05','Calibration OK');
INSERT INTO environmental_monitoring_stations VALUES (3,'StationGamma',37.77,-122.42,'2020-03-15','Temperature','C',18.7,28.4,10.2,'2023-02-28','Active','2023-08-20',15,78.0,'v1.1',-60,'Facilities','TomClark','tom.clark@example.com',14,'2020-03-16',15,'2023-02-01',20.0','Mild','Good','2023-04-30 10:10','Calibration OK');

-- Conference speaker profiles
CREATE TABLE conference_speaker_profiles
(
    SpeakerId               INTEGER PRIMARY KEY,
    FirstName               TEXT,
    LastName                TEXT,
    Organization            TEXT,
    Bio                     TEXT,
    Email                   TEXT,
    Phone                   TEXT,
    Topics                  TEXT,
    SessionIds              TEXT,
    PhotoUrl                TEXT,
    LinkedInUrl             TEXT,
    TwitterHandle           TEXT,
    Country                 TEXT,
    Rating                  REAL,
    SessionsCount           INTEGER,
    KeynoteFlag             TEXT,
    AvailabilityStatus      TEXT,
    PreferredContactMethod  TEXT,
    TravelRequirement       TEXT,
    VisaNeeded              TEXT,
    CreatedBy               INTEGER,
    CreatedAt               DATETIME,
    UpdatedBy               INTEGER,
    UpdatedAt               DATETIME,
    SpeakerLevel            TEXT,
    LanguageProficiency     TEXT,
    SocialMediaFollowers    INTEGER,
    PresentationEquipment   TEXT,
    HonorariumApproved      TEXT,
    Notes                   TEXT
);

INSERT INTO conference_speaker_profiles VALUES (1,'Alice','Brown','TechCorp','Expert in AI','alice.brown@example.com','5551234','AI,ML','101,102','http://example.com/photos/alice.jpg','http://linkedin.com/in/alicebrown','aliceAI','USA',4.8,2,'Yes','Confirmed','Email','Yes','No',10,'2023-03-01',11,'2023-03-10','Senior','English,Spanish',15000,'Projector,Microphone','Yes','Keynote speaker');
INSERT INTO conference_speaker_profiles VALUES (2,'Bob','Green','DataInsights','Data analytics specialist','bob.green@example.com','5555678','DataViz,BigData','103','http://example.com/photos/bob.jpg','http://linkedin.com/in/bobgreen','bobData','Canada',4.5,1,'No','Pending','Phone','No','No',12,'2023-03-05',13,'2023-03-12','Mid','English',12000,'Laptop','No','Workshop presenter');
INSERT INTO conference_speaker_profiles VALUES (3,'Carol','White','HealthTech','Healthcare technology advisor','carol.white@example.com','5559012','HealthIT,IoT','104,105','http://example.com/photos/carol.jpg','http://linkedin.com/in/carolwhite','carolHealth','UK',4.7,2,'No','Confirmed','Email','Yes','Yes',14,'2023-03-07',15,'2023-03-14','Senior','English,French',20000,'Whiteboard','Yes','Panelist');

-- Product release cycles
CREATE TABLE product_release_cycles
(
    ReleaseId               INTEGER PRIMARY KEY,
    ProductId               INTEGER,
    VersionNumber           TEXT,
    ReleaseDate             DATETIME,
    LeadEngineer            TEXT,
    QAStatus                TEXT,
    DeploymentRegion        TEXT,
    ReleaseNotesUrl         TEXT,
    RollbackPlanUrl         TEXT,
    IsCritical              TEXT,
    BuildNumber             TEXT,
    ChangeLog               TEXT,
    ReleaseType             TEXT,
    ComplianceCheckPassed   TEXT,
    SecurityReviewDate      DATETIME,
    DocumentationUrl        TEXT,
    SupportContact          TEXT,
    EndOfLifeDate           DATETIME,
    IncidentCountPostRelease INTEGER,
    PostReleaseRating       REAL,
    CreatedBy               INTEGER,
    CreatedAt               DATETIME,
    UpdatedBy               INTEGER,
    UpdatedAt               DATETIME,
    ReleaseManager          TEXT,
    ReleasePhase            TEXT,
    FeatureCount            INTEGER,
    RegressionTestCoverage  REAL,
    ReleaseNotesSummary     TEXT,
    DeploymentMethod        TEXT
);

INSERT INTO product_release_cycles VALUES (1,5001,'1.0.0','2023-02-15','DaveLee','Passed','Global','http://example.com/releasenotes/1.0.0','http://example.com/rollback/1.0.0','Yes','B123','Initial release','Major','Yes','2023-02-10','http://example.com/doc/1.0.0','support@example.com','2025-02-15',2,4.5,20,'2023-02-01',21,'2023-02-20','EmmaWhite','Planning',10,95.0,'Base platform release','Automatic');
INSERT INTO product_release_cycles VALUES (2,5001,'1.1.0','2023-06-20','EveKim','Passed','EMEA','http://example.com/releasenotes/1.1.0','http://example.com/rollback/1.1.0','No','B124','Feature update','Minor','Yes','2023-06-18','http://example.com/doc/1.1.0','support@example.com','2025-06-20',1,4.7,22,'2023-05-30',23,'2023-06-22','LiamBrown','Testing',5,98.0,'Added analytics module','BlueGreen');
INSERT INTO product_release_cycles VALUES (3,5002,'2.0.0','2023-11-01','FrankYang','Pending','APAC','http://example.com/releasenotes/2.0.0','http://example.com/rollback/2.0.0','Yes','B200','Major architecture upgrade','Major','No','2023-10-28','http://example.com/doc/2.0.0','support2@example.com','2026-11-01',0,0.0,24,'2023-09-15',25,'2023-11-02','SophieGreen','Release',15,85.0','Complete system overhaul','Canary');

-- Learning module resources
CREATE TABLE learning_module_resources
(
    ResourceId               INTEGER PRIMARY KEY,
    ModuleId                 INTEGER,
    ResourceType             TEXT,
    Title                    TEXT,
    Url                      TEXT,
    FileSizeKb               INTEGER,
    Language                 TEXT,
    AccessLevel              TEXT,
    CreatedDate              DATETIME,
    UpdatedDate              DATETIME,
    OwnerId                  INTEGER,
    Description              TEXT,
    Tags                     TEXT,
    ExpirationDate           DATETIME,
    IsActive                 TEXT,
    Rating                   REAL,
    DownloadCount            INTEGER,
    ViewerCount              INTEGER,
    LastAccessed             DATETIME,
    ReviewStatus             TEXT,
    ApprovedBy               INTEGER,
    ApprovedDate             DATETIME,
    Version                  TEXT,
    ContentHash              TEXT,
    LicenseType              TEXT,
    AttributionRequired      TEXT,
    RelatedModuleIds         TEXT,
    DurationMinutes          INTEGER,
    DifficultyLevel          TEXT,
    PrerequisiteResourceId  INTEGER
);

INSERT INTO learning_module_resources VALUES (1,801,'Video','Intro to SQL','http://example.com/video/intro_sql.mp4',25000,'English','Public','2023-01-10','2023-04-01',10,'Basic SQL concepts','SQL,Database','2025-01-10','Yes',4.6,1200,800,'2023-04-01','Approved',20,'2023-01-15','v1.0','abc123','CC-BY','No','802,803',45,'Beginner',0);
INSERT INTO learning_module_resources VALUES (2,802,'PDF','Advanced Data Modeling','http://example.com/pdf/adv_data_model.pdf',1500,'English','Restricted','2023-02-05','2023-03-20',11,'Deep dive into data models','DataModeling,Design','2025-02-05','Yes',4.8,300,150,'2023-03-20','Pending',21,'2023-02-10','v1.1','def456','CC-BY-SA','Yes','801',60,'Intermediate',1);
INSERT INTO learning_module_resources VALUES (3,803,'Article','Performance Tuning Tips','http://example.com/articles/perf_tuning.html',500,'English','Public','2023-03-12','2023-04-10',12,'Tips for optimizing queries','Performance,SQL','2025-03-12','Yes',4.7,500,300,'2023-04-10','Approved',22,'2023-03-15','v2.0','ghi789','PublicDomain','No','801,802',30,'Advanced',2);

-- Warehouse inventory movements
CREATE TABLE warehouse_inventory_movements
(
    MovementId               INTEGER PRIMARY KEY,
    WarehouseId              INTEGER,
    SKU                      TEXT,
    Quantity                 INTEGER,
    FromLocation             TEXT,
    ToLocation               TEXT,
    MovementDate             DATETIME,
    HandlerId                INTEGER,
    ReasonCode               TEXT,
    BatchNumber              TEXT,
    ExpiryDate               DATETIME,
    ReceivedDate             DATETIME,
    Status                   TEXT,
    Comments                 TEXT,
    TemperatureControlled    TEXT,
    WeightKg                 REAL,
    VolumeCubicMeters        REAL,
    ShippingMethod           TEXT,
    Carrier                  TEXT,
    TrackingNumber           TEXT,
    CreatedBy                INTEGER,
    CreatedAt                DATETIME,
    UpdatedBy                INTEGER,
    UpdatedAt                DATETIME,
    InspectionPassed         TEXT,
    DamageReportUrl          TEXT,
    ReorderLevelMet          TEXT,
    UnitCost                 REAL,
    TotalValue               REAL,
    AllocationId             INTEGER
);

INSERT INTO warehouse_inventory_movements VALUES (1,10,'SKU12345',100,'ReceivingDock','Aisle5','2023-04-01',1001,'IN','BATCH001','2024-12-31','2023-04-01','Completed','', 'No',200.0,0.5,'Truck','CarrierX','TRK001',10,'2023-04-01',11,'2023-04-02','Yes','http://example.com/damage/none','Yes',5.00,500.00,2001);
INSERT INTO warehouse_inventory_movements VALUES (2,10,'SKU54321',-20,'Aisle3','ShippingDock','2023-04-03',1002,'OUT','BATCH002','2025-06-30','2023-04-03','Completed','', 'No',40.0,0.1,'Air','CarrierY','TRK002',12,'2023-04-03',13,'2023-04-04','Yes','http://example.com/damage/none','Yes',7.50,150.00,2002);
INSERT INTO warehouse_inventory_movements VALUES (3,11,'SKU98765',50,'ReceivingDock','Aisle1','2023-04-05',1003,'IN','BATCH003','2025-01-15','2023-04-05','Pending','Awaiting inspection', 'Yes',75.0,0.3,'Rail','CarrierZ','TRK003',14,'2023-04-05',15,'2023-04-06','No','http://example.com/damage/report1','No',6.20,310.00,2003);

-- Customer journey maps
CREATE TABLE customer_journey_maps
(
    MapId                   INTEGER PRIMARY KEY,
    CustomerId              INTEGER,
    StageName               TEXT,
    EntryDate               DATETIME,
    ExitDate                DATETIME,
    Touchpoint              TEXT,
    Channel                 TEXT,
    Outcome                 TEXT,
    SatisfactionScore       REAL,
    FollowUpNeeded          TEXT,
    AssignedRepId           INTEGER,
    Notes                   TEXT,
    CreatedBy               INTEGER,
    CreatedAt               DATETIME,
    UpdatedBy               INTEGER,
    UpdatedAt               DATETIME,
    JourneyOwner            TEXT,
    CampaignSource          TEXT,
    ReferralCode            TEXT,
    LoyaltyTier             TEXT,
    RevenueGenerated        REAL,
    InteractionCount        INTEGER,
    LastInteractionDate     DATETIME,
    NextPlannedInteraction  DATETIME,
    FeedbackScore           REAL,
    NPSRating               INTEGER,
    ChurnRiskLevel         TEXT,
    RetentionStrategy       TEXT,
    SurveyCompleted         TEXT,
    IncentiveOffered        TEXT,
    IncentiveRedeemed       TEXT
);

INSERT INTO customer_journey_maps VALUES (1,50001,'Awareness','2023-01-01','2023-01-07','WebVisit','Organic','Visited landing page',4.2,'No',3001,'First contact',10,'2023-01-01',11,'2023-01-08','MarketingTeam','SocialMedia','REF123','Silver',1200.00,3,'2023-01-07','2023-02-01',4.5,8,'Low','EmailNurture','Yes','Discount10','Yes');
INSERT INTO customer_journey_maps VALUES (2,50001,'Consideration','2023-01-08','2023-01-20','ProductDemo','Webinar','Attended demo',4.8,'Yes',3002,'Asked detailed questions',12,'2023-01-08',13,'2023-01-21','SalesTeam','EmailCampaign','REF124','Gold',2500.00,5,'2023-01-20','2023-02-15',4.9,9,'Medium','PersonalizedOffer','Yes','FreeTrial','No');
INSERT INTO customer_journey_maps VALUES (3,50001,'Purchase','2023-01-22','2023-01-22','Checkout','Ecommerce','Completed purchase',5.0,'No',3003,'First order placed',14,'2023-01-22',15,'2023-01-23','SalesTeam','PaidSearch','REF125','Platinum',5000.00,1,'2023-01-22','2023-06-01',5.0,10,'Low','UpsellCampaign','Yes','LoyaltyPoints','Yes');

-- IoT device profiles
CREATE TABLE iot_device_profiles
(
    DeviceId                INTEGER PRIMARY KEY,
    DeviceType              TEXT,
    FirmwareVersion         TEXT,
    MACAddress              TEXT,
    IPAddress               TEXT,
    InstallDate             DATETIME,
    LocationId              INTEGER,
    OwnerDept               TEXT,
    Status                  TEXT,
    LastSeen                DATETIME,
    BatteryLevelPercent     REAL,
    SignalStrength          REAL,
    ModelNumber             TEXT,
    SerialNumber            TEXT,
    WarrantyEndDate         DATETIME,
    ConfigVersion           TEXT,
    IsGateway               TEXT,
    SupportsOTA             TEXT,
    Manufacturer            TEXT,
    Description             TEXT,
    CreatedBy               INTEGER,
    CreatedAt               DATETIME,
    UpdatedBy               INTEGER,
    UpdatedAt               DATETIME,
    CalibrationDate         DATETIME,
    CalibrationTech         TEXT,
    DeploymentZone          TEXT,
    ConnectivityType        TEXT,
    PowerSource             TEXT,
    FirmwareChecksum        TEXT,
    MaintenanceSchedule     TEXT,
    LastMaintenanceDate     DATETIME,
    SecurityPatchLevel      TEXT,
    DeviceGroup             TEXT,
    AssetTag                TEXT
);

INSERT INTO iot_device_profiles VALUES (1001,'Sensor','v2.4','AA:BB:CC:DD:EE:01','192.168.1.10','2022-05-01',501,'Operations','Active','2023-04-30',95.0,-70,'M100','SN1001','2025-05-01','cfg01','No','Yes','AcmeCorp','Temperature sensor',10,'2022-05-02',11,'2023-04-01','2023-04-01','TechA','ZoneA','WiFi','Battery','checksum123','Monthly','2023-04-01','Patch5','GroupA','TAG001');
INSERT INTO iot_device_profiles VALUES (1002,'Camera','v3.1','AA:BB:CC:DD:EE:02','192.168.1.11','2021-11-15',502,'Security','Active','2023-04-30',88.0,-65,'C200','SN2002','2024-11-15','cfg02','Yes','Yes','SecureCam','HD security camera',12,'2021-11-16',13,'2023-04-02','2023-04-02','TechB','ZoneB','Ethernet','Mains','checksum456','Quarterly','2023-04-02','Patch3','GroupB','TAG002');
INSERT INTO iot_device_profiles VALUES (1003,'Actuator','v1.9','AA:BB:CC:DD:EE:03','192.168.1.12','2023-01-20',503,'Manufacturing','Inactive','2023-03-15',0.0,-80,'A300','SN3003','2026-01-20','cfg03','No','No','MotionInc','Industrial actuator',14,'2023-01-21',15,'2023-03-16','2023-03-16','TechC','ZoneC','Cellular','Mains','checksum789','Biannual','2023-03-16','Patch1','GroupC','TAG003');