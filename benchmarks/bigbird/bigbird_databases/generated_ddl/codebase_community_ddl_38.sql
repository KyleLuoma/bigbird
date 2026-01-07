-- Research grants awarded to investigators
CREATE TABLE research_grants
(
    GrantId               INTEGER NOT NULL PRIMARY KEY,
    GrantNumber           TEXT,
    Title                 TEXT,
    InvestigatorId        INTEGER,
    FundingAgency         TEXT,
    AmountUSD             INTEGER,
    Currency              TEXT,
    StartDate             DATETIME,
    EndDate               DATETIME,
    Status                TEXT,
    ReviewScore           INTEGER,
    AwardedYear           INTEGER,
    ExpirationYear        INTEGER,
    IsRenewable           INTEGER,
    Department            TEXT,
    ProgramArea           TEXT,
    GrantType             TEXT,
    MatchingFundsUSD      INTEGER,
    IndirectCostRatePct   INTEGER,
    PublicationCount      INTEGER,
    CreatedAt             DATETIME,
    UpdatedAt             DATETIME
);
INSERT INTO research_grants VALUES (1,'RG-2021-001','AI for Health',101,'NationalScienceFoundation',250000,'USD','2021-06-01','2024-05-31','Active',85,2021,2024,1,'Engineering','Artificial Intelligence','Federal',50000,10,3,'2021-06-01','2021-06-01');
INSERT INTO research_grants VALUES (2,'RG-2020-014','Renewable Energy Storage',102,'DepartmentOfEnergy',400000,'USD','2020-01-15','2025-01-14','Active',90,2020,2025,0,'Science','Energy','Federal',80000,12,5,'2020-01-15','2020-01-15');
INSERT INTO research_grants VALUES (3,'RG-2019-078','Quantum Computing Algorithms',103,'DefenseAdvancedResearch',350000,'USD','2019-09-01','2022-08-31','Completed',92,2019,2022,0,'Physics','Quantum Computing','Federal',70000,15,8,'2019-09-01','2022-09-01');

-- Digital marketing campaigns run on the platform
CREATE TABLE digital_campaigns
(
    CampaignId            INTEGER NOT NULL PRIMARY KEY,
    CampaignName          TEXT,
    AdvertiserId          INTEGER,
    StartDate             DATETIME,
    EndDate               DATETIME,
    BudgetUSD             INTEGER,
    SpendUSD              INTEGER,
    Impressions           INTEGER,
    Clicks                INTEGER,
    Conversions           INTEGER,
    ConversionValueUSD    INTEGER,
    DeviceTargeting       TEXT,
    GeoTargeting          TEXT,
    LanguageTargeting     TEXT,
    CreativeType          TEXT,
    PlacementType         TEXT,
    BiddingStrategy       TEXT,
    DailyCapUSD           INTEGER,
    FrequencyCap          INTEGER,
    Status                TEXT,
    CreatedAt             DATETIME,
    UpdatedAt             DATETIME
);
INSERT INTO digital_campaigns VALUES (1,'Summer Sale 2023',201,'2023-06-01','2023-08-31',120000,95000,5000000,75000,3000,180000,'Mobile','US,CA','English','Banner','Sidebar','CPC',5000,2,'Active','2023-05-20','2023-05-20');
INSERT INTO digital_campaigns VALUES (2,'Back to School',202,'2023-08-01','2023-09-30',80000,60000,3000000,40000,1500,90000,'Desktop','US,UK','English','Video','Feed','CPM',4000,1,'Paused','2023-07-15','2023-07-15');
INSERT INTO digital_campaigns VALUES (3,'Winter Promo',203,'2023-12-01','2024-01-31',150000,130000,7000000,90000,5000,250000,'All','CA,AU','French','Carousel','Story','CPA',6000,3,'Active','2023-11-25','2023-11-25');

-- Logs of goods transport between warehouses
CREATE TABLE warehouse_transport_logs
(
    TransportId           INTEGER NOT NULL PRIMARY KEY,
    ShipmentNumber        TEXT,
    OriginWarehouseId     INTEGER,
    DestinationWarehouseId INTEGER,
    CarrierName           TEXT,
    VehicleId             TEXT,
    DriverId              INTEGER,
    DepartureTime         DATETIME,
    ArrivalTime           DATETIME,
    Status                TEXT,
    WeightKg              INTEGER,
    VolumeCubicMeters     REAL,
    PalletCount           INTEGER,
    TemperatureCelsius    REAL,
    HazardousMaterialFlag INTEGER,
    TrackingUrl           TEXT,
    EstimatedDeliveryDate DATETIME,
    ActualDeliveryDate    DATETIME,
    DelayReason           TEXT,
    CreatedAt             DATETIME,
    UpdatedAt             DATETIME
);
INSERT INTO warehouse_transport_logs VALUES (1,'SHIP-1001',10,20,'FastFreight','VH-001',3001,'2023-09-01 08:00:00','2023-09-01 14:30:00','Delivered',1200,3.5,24,22.0,0,'http://track.example.com/SHIP-1001','2023-09-01','2023-09-01','', '2023-09-01 08:05:00','2023-09-01 14:35:00');
INSERT INTO warehouse_transport_logs VALUES (2,'SHIP-1002',15,25,'GlobalLogistics','VH-045',3002,'2023-09-02 09:15:00','2023-09-02 18:00:00','Delayed',800,2.0,16,5.0,1,'http://track.example.com/SHIP-1002','2023-09-03','2023-09-03','Traffic congestion','2023-09-02 09:20:00','2023-09-02 18:30:00');
INSERT INTO warehouse_transport_logs VALUES (3,'SHIP-1003',12,30,'QuickShip','VH-078',3003,'2023-09-03 07:45:00','2023-09-03 12:15:00','Delivered',1500,4.2,30,18.0,0,'http://track.example.com/SHIP-1003','2023-09-03','2023-09-03','', '2023-09-03 07:50:00','2023-09-03 12:20:00');

-- Matrix of employee skills and proficiency levels
CREATE TABLE employee_skill_matrix
(
    EmployeeId            INTEGER NOT NULL,
    SkillId               INTEGER NOT NULL,
    SkillName             TEXT,
    ProficiencyLevel      INTEGER,
    YearsExperience       INTEGER,
    CertifiedFlag         INTEGER,
    LastAssessmentDate    DATETIME,
    AssessmentScore       INTEGER,
    TrainingRequiredFlag  INTEGER,
    TrainingPlanId        INTEGER,
    ManagerId             INTEGER,
    DepartmentId          INTEGER,
    RoleId                INTEGER,
    SkillCategory         TEXT,
    PriorityFlag          INTEGER,
    Comment               TEXT,
    CreatedAt             DATETIME,
    UpdatedAt             DATETIME,
    PRIMARY KEY (EmployeeId, SkillId)
);
INSERT INTO employee_skill_matrix VALUES (101,1,'Python',5,8,1,'2023-06-15',95,0,NULL,201,10,5,'Programming',1,'', '2023-01-01','2023-06-15');
INSERT INTO employee_skill_matrix VALUES (102,2,'Data Analysis',4,5,0,'2023-05-10',88,1,301,202,12,6,'Analytics',0,'Needs advanced training','2023-02-10','2023-05-10');
INSERT INTO employee_skill_matrix VALUES (103,3,'Project Management',3,3,1,'2023-04-20',80,0,NULL,203,14,7,'Management',1,'', '2023-03-01','2023-04-20');

-- Mapping of customer journey stages and touchpoints
CREATE TABLE customer_journey_maps
(
    JourneyId             INTEGER NOT NULL PRIMARY KEY,
    CustomerSegment       TEXT,
    StageName             TEXT,
    StageOrder            INTEGER,
    TouchpointId          INTEGER,
    TouchpointName        TEXT,
    Channel               TEXT,
    ExpectedDurationDays  INTEGER,
    SuccessMetric         TEXT,
    ConversionRatePct     REAL,
    AvgTimeSpentSeconds   INTEGER,
    RequiredAction        TEXT,
    NotificationTemplate  TEXT,
    IsMandatory           INTEGER,
    OwnerTeamId           INTEGER,
    CreatedAt             DATETIME,
    UpdatedAt             DATETIME,
    Description           TEXT,
    FrequencyPerMonth     INTEGER,
    SLAHours              INTEGER
);
INSERT INTO customer_journey_maps VALUES (1,'Enterprise','Awareness',1,101,'Website Visit','Web','2','Page Views',12.5,30,'View Homepage','welcome_template',0,301,'2023-01-01','2023-01-01','Initial contact via web','4',24);
INSERT INTO customer_journey_maps VALUES (2,'SMB','Consideration',2,102,'Product Demo','Webinar','3','Demo Attendance',25.0,180,'Attend Demo','demo_invite',1,302,'2023-02-01','2023-02-01','Demo scheduled','2',48);
INSERT INTO customer_journey_maps VALUES (3,'Consumer','Purchase',3,103,'Checkout','Mobile','1','Transaction Complete',45.0,60,'Complete Purchase','checkout_thankyou',1,303,'2023-03-01','2023-03-01','Final purchase step','1',12);

-- Definitions of IoT sensors used across deployments
CREATE TABLE iot_sensor_definitions
(
    SensorId              INTEGER NOT NULL PRIMARY KEY,
    SensorName            TEXT,
    SensorType            TEXT,
    Manufacturer          TEXT,
    ModelNumber           TEXT,
    FirmwareVersion       TEXT,
    CommunicationProtocol TEXT,
    MeasurementUnit       TEXT,
    AccuracyPct           REAL,
    RangeMin              REAL,
    RangeMax              REAL,
    PowerRequirementW    REAL,
    BatteryLifeHours      INTEGER,
    InstallationDate      DATETIME,
    CalibrationDate       DATETIME,
    IsActive              INTEGER,
    LocationId            INTEGER,
    DataRetentionDays     INTEGER,
    CreatedAt             DATETIME,
    UpdatedAt             DATETIME,
    DocumentationUrl      TEXT,
    MaintenanceIntervalDays INTEGER
);
INSERT INTO iot_sensor_definitions VALUES (1,'TempSensorA','Temperature','AcmeCorp','TS-100','1.0.3','MQTT','Celsius',0.5,-40,125,0.5,7200,'2022-01-10','2022-06-10',1,501,365,'2022-01-10','2022-06-10','http://docs.example.com/TS-100',180);
INSERT INTO iot_sensor_definitions VALUES (2,'PressureSensorX','Pressure','BetaSensors','PX-200','2.1.0','HTTP','Pascal',1.2,0,5000,1.2,5400,'2022-03-15','2022-09-15',1,502,180,'2022-03-15','2022-09-15','http://docs.example.com/PX-200',365);
INSERT INTO iot_sensor_definitions VALUES (3,'HumiditySensorZ','Humidity','GammaTech','HZ-300','3.0.1','CoAP','Percent',2.0,0,100,0.8,6000,'2022-05-20','2022-11-20',0,503,730,'2022-05-20','2022-11-20','http://docs.example.com/HZ-300',90);

-- Versions of legal documents and their approval workflow
CREATE TABLE legal_document_versions
(
    DocumentId            INTEGER NOT NULL,
    VersionNumber         INTEGER NOT NULL,
    Title                 TEXT,
    EffectiveDate         DATETIME,
    ExpirationDate        DATETIME,
    Status                TEXT,
    ApprovedByUserId      INTEGER,
    ApprovalDate          DATETIME,
    RevisionSummary       TEXT,
    ChangeLogUrl          TEXT,
    ConfidentialFlag      INTEGER,
    DocumentType          TEXT,
    DepartmentId          INTEGER,
    Region                TEXT,
    Language              TEXT,
    CreatedAt             DATETIME,
    UpdatedAt             DATETIME,
    PrimaryKey (DocumentId, VersionNumber)
);
INSERT INTO legal_document_versions VALUES (1,1,'Privacy Policy','2023-01-01','2025-01-01','Approved',401,'2022-12-15','Initial release','http://policies.example.com/privacy/v1',0,'Policy',10,'Global','English','2022-12-01','2022-12-15');
INSERT INTO legal_document_versions VALUES (1,2,'Privacy Policy','2024-01-01','2026-01-01','Pending',NULL,NULL,'Added GDPR clause','http://policies.example.com/privacy/v2',0,'Policy',10,'Global','English','2023-12-01','2023-12-01');
INSERT INTO legal_document_versions VALUES (2,1,'Terms of Service','2023-03-01','2025-03-01','Approved',402,'2023-02-20','Initial terms','http://policies.example.com/tos/v1',0,'Contract',12,'Global','English','2023-02-01','2023-02-20');

-- Rules for personalized content delivery
CREATE TABLE content_personalization_rules
(
    RuleId                INTEGER NOT NULL PRIMARY KEY,
    RuleName              TEXT,
    Priority              INTEGER,
    AudienceSegmentId     INTEGER,
    ConditionExpression   TEXT,
    ActionType            TEXT,
    TargetContentId       INTEGER,
    FrequencyCapPerDay    INTEGER,
    IsActive              INTEGER,
    CreatedByUserId       INTEGER,
    CreatedAt             DATETIME,
    UpdatedAt             DATETIME,
    Description           TEXT,
    ExpirationDate        DATETIME,
    StartDate             DATETIME,
    AttributionModel      TEXT,
    RequiredConsentFlag   INTEGER,
    EvaluationWindowHours INTEGER,
    LastRunAt             DATETIME,
    SuccessCount          INTEGER,
    FailureCount          INTEGER
);
INSERT INTO content_personalization_rules VALUES (1,'New Visitor Promo',10,201,'visit_count = 0','ShowBanner',301,1,1,401,'2023-01-01','2023-01-01','Show promo banner to first‑time visitors','2023-12-31','2023-01-01','LastClick','0',24,'2023-09-15 08:00:00',1500,20);
INSERT INTO content_personalization_rules VALUES (2,'High Value Buyer',20,202,'total_spend > 1000','RecommendProduct',302,3,1,402,'2023-02-01','2023-02-01','Recommend premium product to high spenders','2024-02-01','2023-02-01','LastPurchase','1',48,'2023-09-15 09:30:00',800,5);
INSERT INTO content_personalization_rules VALUES (3,'Abandoned Cart',15,203,'cart_items > 0 AND last_activity < NOW() - INTERVAL 1 DAY','SendEmail',303,5,1,403,'2023-03-01','2023-03-01','Email reminder for abandoned carts','2023-09-30','2023-03-01','FirstOpen','1',24,'2023-09-15 10:45:00',1200,30);

-- Schedule for deprecation of API endpoints
CREATE TABLE api_endpoint_deprecation
(
    EndpointId            INTEGER NOT NULL PRIMARY KEY,
    HttpMethod            TEXT,
    Path                  TEXT,
    DeprecatedVersion     TEXT,
    RemovalVersion        TEXT,
    DeprecationDate       DATETIME,
    RemovalDate           DATETIME,
    NotificationSentFlag  INTEGER,
    ImpactLevel           TEXT,
    OwnerTeamId           INTEGER,
    DocumentationUrl      TEXT,
    MigrationGuideUrl     TEXT,
    CreatedAt             DATETIME,
    UpdatedAt             DATETIME,
    Reason                TEXT,
    ReplacementEndpointId INTEGER,
    IsCritical            INTEGER,
    LastNotifiedAt        DATETIME,
    AcknowledgedByUserId  INTEGER,
    AcknowledgedAt        DATETIME
);
INSERT INTO api_endpoint_deprecation VALUES (1,'GET','/v1/users','v1','v2','2023-06-01','2023-12-31',1,'Medium',301,'http://api.example.com/docs/v1/users','http://api.example.com/migration/v1-to-v2','2023-01-15','2023-01-15','Version upgrade','2',0,'2023-11-15','401','2023-11-20');
INSERT INTO api_endpoint_deprecation VALUES (2,'POST','/v1/comments','v1','v2','2023-07-01','2024-01-31',0,'High',302,'http://api.example.com/docs/v1/comments','http://api.example.com/migration/v1-to-v2','2023-02-01','2023-02-01','Removing deprecated POST','3',1,NULL,NULL,NULL);
INSERT INTO api_endpoint_deprecation VALUES (3,'DELETE','/v1/posts','v1','v2','2023-08-15','2024-02-28',0,'Low',303,'http://api.example.com/docs/v1/posts','http://api.example.com/migration/v1-to-v2','2023-03-10','2023-03-10','Simplifying API surface','4',0,NULL,NULL,NULL);

-- Localized UI strings for the site
CREATE TABLE site_localization_strings
(
    StringId              INTEGER NOT NULL PRIMARY KEY,
    LanguageCode          TEXT,
    Namespace             TEXT,
    Key                   TEXT,
    Value                 TEXT,
    Description           TEXT,
    CreatedAt             DATETIME,
    UpdatedAt             DATETIME,
    IsTranslated          INTEGER,
    TranslatorUserId      INTEGER,
    TranslationDate       DATETIME,
    SourceStringId        INTEGER,
    Context               TEXT,
    PluralForm            TEXT,
    MaxLength             INTEGER,
    IsHtml                INTEGER,
    PlaceholderCount      INTEGER,
    ReviewStatus          TEXT,
    LastReviewedByUserId  INTEGER,
    LastReviewedAt        DATETIME
);
INSERT INTO site_localization_strings VALUES (1,'en','ui','welcome_message','Welcome to our platform','Main welcome banner','2023-01-01','2023-01-01',1,101,'2023-01-01',NULL,'HomePage','singular',200,0,0,'Approved',201,'2023-01-01');
INSERT INTO site_localization_strings VALUES (2,'es','ui','welcome_message','Bienvenido a nuestra plataforma','Main welcome banner','2023-01-01','2023-02-01',1,102,'2023-02-01',1,'HomePage','singular',200,0,0,'Approved',202,'2023-02-01');
INSERT INTO site_localization_strings VALUES (3,'fr','ui','welcome_message','Bienvenue sur notre plateforme','Main welcome banner','2023-01-01','2023-03-01',0,NULL,NULL,1,'HomePage','singular',200,0,0,'Pending',NULL,NULL);