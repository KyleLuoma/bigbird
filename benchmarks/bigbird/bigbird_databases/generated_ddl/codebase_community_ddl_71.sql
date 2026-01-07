-- Research project funding details for external grants and contracts
CREATE TABLE research_project_funding_details (
    FundingId          INTEGER NOT NULL PRIMARY KEY,
    ProjectId          INTEGER,
    GrantNumber        TEXT,
    FundingAgency      TEXT,
    Amount             REAL,
    Currency           TEXT,
    StartDate          DATETIME,
    EndDate            DATETIME,
    AwardDate          DATETIME,
    PrincipalInvestigator TEXT,
    CoInvestigator    TEXT,
    FundingType        TEXT,
    Status             TEXT,
    ReviewScore        REAL,
    AwardedBy          TEXT,
    FundingPeriodMonths INTEGER,
    ProgramArea        TEXT,
    FundingSourceUrl   TEXT,
    IsMultiYear        INTEGER,
    ComplianceFlag    INTEGER
);

INSERT INTO research_project_funding_details VALUES (1, 101, GNT-001, NationalScienceFoundation, 250000.00, USD, '2023-01-01 00:00:00', '2025-12-31 00:00:00', '2022-12-15 00:00:00', DrAliceSmith, DrBobJones, Grant, Awarded, 4.5, NSFOffice, 36, Engineering, http://nsf.gov/gnt001, 1, 1);
INSERT INTO research_project_funding_details VALUES (2, 102, GNT-002, HealthResearchCouncil, 150000.00, USD, '2023-06-01 00:00:00', '2024-05-31 00:00:00', '2023-05-20 00:00:00', DrCarolLee, DrDanBrown, Fellowship, Pending, 0.0, HRCBoard, 12, Medicine, http://hrc.org/gnt002, 0, 0);
INSERT INTO research_project_funding_details VALUES (3, 103, GNT-003, EnergyDept, 500000.00, USD, '2024-01-15 00:00:00', '2027-01-14 00:00:00', '2023-12-30 00:00:00', DrEveWhite, DrFrankGreen, Contract, Approved, 5.0, EnergyDeptOffice, 36, RenewableEnergy, http://energy.gov/gnt003, 1, 1);

-- Clinical trial participant enrollment records
CREATE TABLE clinical_trial_participants (
    ParticipantId          INTEGER NOT NULL PRIMARY KEY,
    TrialId                INTEGER,
    EnrollmentDate         DATETIME,
    ConsentGiven           INTEGER,
    Age                    INTEGER,
    Gender                 TEXT,
    Ethnicity              TEXT,
    Country                TEXT,
    State                  TEXT,
    City                   TEXT,
    ZipCode                TEXT,
    MedicalCondition      TEXT,
    TreatmentArm           TEXT,
    DosageMg               REAL,
    VisitCount             INTEGER,
    AdverseEventsReported INTEGER,
    PrimaryOutcomeAchieved INTEGER,
    FollowUpDate           DATETIME,
    InvestigatorNotes      TEXT,
    DataRetentionPolicy   TEXT,
    IsActive               INTEGER
);

INSERT INTO clinical_trial_participants VALUES (1001, 201, '2023-02-10 09:30:00', 1, 45, Male, Hispanic, USA, CA, SanFrancisco, 94107, Hypertension, ArmA, 50.0, 5, 0, 1, '2024-02-10 00:00:00', Note1, Standard, 1);
INSERT INTO clinical_trial_participants VALUES (1002, 202, '2023-03-15 11:00:00', 1, 38, Female, Asian, USA, NY, NewYork, 10001, Diabetes, ArmB, 75.0, 4, 1, 0, '2024-03-15 00:00:00', Note2, Extended, 1);
INSERT INTO clinical_trial_participants VALUES (1003, 203, '2023-04-20 14:20:00', 0, 60, Male, Caucasian, USA, TX, Austin, 73301, Arthritis, ArmA, 100.0, 6, 0, 1, '2024-04-20 00:00:00', Note3, Standard, 0);

-- Environmental monitoring station sensor readings
CREATE TABLE environmental_monitoring_station_readings (
    ReadingId                INTEGER NOT NULL PRIMARY KEY,
    StationId                INTEGER,
    Timestamp                DATETIME,
    TemperatureC             REAL,
    HumidityPercent          REAL,
    PM25UgM3                 REAL,
    PM10UgM3                 REAL,
    OzoneDob                 REAL,
    NO2Dob                   REAL,
    SO2Dob                   REAL,
    COppm                    REAL,
    WindSpeedMps             REAL,
    WindDirectionDeg         REAL,
    RainfallMm               REAL,
    SolarRadiationWm2        REAL,
    SoilMoisturePercent      REAL,
    WaterLevelM              REAL,
    AirPressurehPa           REAL,
    BatteryVoltageV          REAL,
    DataQualityFlag          INTEGER,
    TransmissionStatus       TEXT
);

INSERT INTO environmental_monitoring_station_readings VALUES (5001, 301, '2023-07-01 00:00:00', 22.5, 55.0, 12.3, 25.6, 0.030, 0.020, 0.010, 0.5, 3.2, 180, 0.0, 200, 35.0, 0.8, 1013.2, 12.5, 1, Success);
INSERT INTO environmental_monitoring_station_readings VALUES (5002, 302, '2023-07-01 00:10:00', 21.8, 57.2, 14.1, 28.9, 0.028, 0.018, 0.012, 0.4, 2.9, 190, 0.1, 210, 34.5, 0.9, 1012.8, 12.6, 1, Success);
INSERT INTO environmental_monitoring_station_readings VALUES (5003, 303, '2023-07-01 00:20:00', 23.0, 53.5, 13.0, 27.0, 0.032, 0.022, 0.011, 0.6, 3.5, 175, 0.0, 205, 35.2, 0.7, 1013.5, 12.4, 0, Failed);

-- Digital asset license agreements
CREATE TABLE digital_asset_license_agreements (
    LicenseId               INTEGER NOT NULL PRIMARY KEY,
    AssetId                 INTEGER,
    LicenseType             TEXT,
    LicenseName             TEXT,
    StartDate               DATETIME,
    EndDate                 DATETIME,
    AllowedCopies           INTEGER,
    Territory               TEXT,
    ExclusiveFlag           INTEGER,
    FeeAmount               REAL,
    Currency                TEXT,
    RoyaltyPercentage      REAL,
    AttributionRequired    INTEGER,
    ModificationAllowed    INTEGER,
    RedistributionAllowed  INTEGER,
    TerminationClause      TEXT,
    GoverningLaw            TEXT,
    ContactPerson           TEXT,
    ContactEmail            TEXT,
    LicenseUrl              TEXT,
    Notes                   TEXT
);

INSERT INTO digital_asset_license_agreements VALUES (7001, 401, Commercial, StandardLicense, '2023-01-01 00:00:00', '2025-12-31 00:00:00', 1000, Worldwide, 0, 5000.00, USD, 5.0, 1, 0, 1, ClauseA, USLaw, JohnDoe, john@example.com, http://licenses.com/standard, NoteA);
INSERT INTO digital_asset_license_agreements VALUES (7002, 402, CreativeCommons, CC-BY, '2022-06-01 00:00:00', '2024-05-31 00:00:00', 0, Global, 0, 0.00, USD, 0.0, 1, 1, 1, ClauseB, UKLaw, JaneSmith, jane@example.co.uk, http://creativecommons.org/cc-by, NoteB);
INSERT INTO digital_asset_license_agreements VALUES (7003, 403, Enterprise, PremiumLicense, '2023-09-15 00:00:00', '2028-09-14 00:00:00', 5000, NorthAmerica, 1, 20000.00, USD, 7.5, 1, 0, 0, ClauseC, CALaw, MikeBrown, mike@enterprise.com, http://enterprise.com/license, NoteC);

-- Supplier performance audit records
CREATE TABLE supplier_performance_audit (
    AuditId               INTEGER NOT NULL PRIMARY KEY,
    SupplierId            INTEGER,
    AuditDate             DATETIME,
    AuditorName           TEXT,
    AuditScore            REAL,
    OnTimeDeliveryPct     REAL,
    DefectRatePct         REAL,
    ComplianceScore       REAL,
    SustainabilityScore   REAL,
    CommunicationScore    REAL,
    RiskLevel             TEXT,
    FindingsSummary       TEXT,
    ActionPlan            TEXT,
    FollowUpDate          DATETIME,
    IsCritical            INTEGER,
    AuditCategory         TEXT,
    Region                TEXT,
    ContractValue         REAL,
    Currency              TEXT,
    Remarks               TEXT,
    DocumentUrl           TEXT
);

INSERT INTO supplier_performance_audit VALUES (9001, 501, '2023-05-10 00:00:00', AliceAudit, 85.5, 96.0, 1.2, 88.0, 75.0, 90.0, Medium, SummaryA, PlanA, '2023-06-10 00:00:00', 0, Quality, Europe, 250000.00, EUR, RemarksA, http://auditdocs.com/9001);
INSERT INTO supplier_performance_audit VALUES (9002, 502, '2023-06-12 00:00:00', BobAudit, 78.0, 89.5, 2.5, 80.0, 70.0, 85.0, High, SummaryB, PlanB, '2023-07-12 00:00:00', 1, Safety, Asia, 150000.00, USD, RemarksB, http://auditdocs.com/9002);
INSERT INTO supplier_performance_audit VALUES (9003, 503, '2023-07-15 00:00:00', CarolAudit, 92.0, 99.0, 0.5, 95.0, 85.0, 93.0, Low, SummaryC, PlanC, '2023-08-15 00:00:00', 0, Delivery, NorthAmerica, 300000.00, USD, RemarksC, http://auditdocs.com/9003);

-- Vehicle fleet maintenance schedule
CREATE TABLE vehicle_fleet_maintenance_schedule (
    ScheduleId             INTEGER NOT NULL PRIMARY KEY,
    VehicleId              INTEGER,
    MaintenanceType        TEXT,
    ScheduledDate          DATETIME,
    EstimatedDurationHours REAL,
    ServiceProvider        TEXT,
    CostAmount             REAL,
    Currency               TEXT,
    OdometerKm             INTEGER,
    ServiceNotes           TEXT,
    PartsReplaced          TEXT,
    LaborHours             REAL,
    WarrantyFlag           INTEGER,
    NextDueDate            DATETIME,
    PriorityLevel          TEXT,
    Department             TEXT,
    ApprovedBy             TEXT,
    ApprovalDate           DATETIME,
    IsRecurring            INTEGER,
    RecurrenceIntervalDays INTEGER,
    NotificationSent       INTEGER
);

INSERT INTO vehicle_fleet_maintenance_schedule VALUES (11001, 601, OilChange, '2023-08-01 08:00:00', 2.0, QuickLube, 120.00, USD, 45000, NoteOil, OilFilter, 1.5, 1, '2024-08-01 00:00:00', High, Operations, ManagerA, '2023-07-25 00:00:00', 1, 180, 1);
INSERT INTO vehicle_fleet_maintenance_schedule VALUES (11002, 602, TireRotation, '2023-09-15 09:30:00', 1.5, TirePro, 80.00, USD, 30000, NoteTire, Tires, 1.0, 0, '2024-09-15 00:00:00', Medium, Logistics, ManagerB, '2023-09-01 00:00:00', 1, 180, 1);
INSERT INTO vehicle_fleet_maintenance_schedule VALUES (11003, 603, BrakeInspection, '2023-10-20 10:00:00', 3.0, BrakeCo, 250.00, USD, 75000, NoteBrake, BrakePads, 2.0, 0, '2024-10-20 00:00:00', Low, Maintenance, ManagerC, '2023-10-05 00:00:00', 0, 0, 0);

-- Learning path prerequisite links
CREATE TABLE learning_path_prerequisite_links (
    LinkId                 INTEGER NOT NULL PRIMARY KEY,
    LearningPathId         INTEGER,
    PrerequisitePathId     INTEGER,
    CreatedDate            DATETIME,
    CreatedBy              TEXT,
    IsMandatory            INTEGER,
    MinimumScoreRequired   REAL,
    MinimumCompletionPct   REAL,
    AllowedAttempts        INTEGER,
    ReviewRequired         INTEGER,
    ApprovalStatus         TEXT,
    EffectiveFrom          DATETIME,
    EffectiveTo            DATETIME,
    Comments               TEXT,
    VersionNumber          INTEGER,
    LastUpdated            DATETIME,
    UpdatedBy              TEXT,
    DeprecationDate        DATETIME,
    IsActive               INTEGER,
    OverrideFlag           INTEGER
);

INSERT INTO learning_path_prerequisite_links VALUES (13001, 701, 702, '2023-01-15 00:00:00', AdminA, 1, 85.0, 90.0, 3, 1, Approved, '2023-02-01 00:00:00', '2024-02-01 00:00:00', CommentA, 1, '2023-03-01 00:00:00', AdminB, NULL, 1, 0);
INSERT INTO learning_path_prerequisite_links VALUES (13002, 703, 704, '2023-04-10 00:00:00', AdminC, 0, 75.0, 80.0, 2, 0, Pending, '2023-04-15 00:00:00', '2025-04-15 00:00:00', CommentB, 2, '2023-05-01 00:00:00', AdminD, NULL, 1, 1);
INSERT INTO learning_path_prerequisite_links VALUES (13003, 705, 706, '2023-06-20 00:00:00', AdminE, 1, 90.0, 95.0, 4, 1, Approved, '2023-07-01 00:00:00', '2026-07-01 00:00:00', CommentC, 3, '2023-08-01 00:00:00', AdminF, NULL, 0, 0);

-- Advertisement creative assets catalog
CREATE TABLE advertisement_creative_assets (
    AssetId               INTEGER NOT NULL PRIMARY KEY,
    CampaignId            INTEGER,
    AssetType             TEXT,
    FileName              TEXT,
    FilePath              TEXT,
    FileSizeBytes         INTEGER,
    WidthPx               INTEGER,
    HeightPx              INTEGER,
    DurationSec           INTEGER,
    Format                TEXT,
    CreatedDate           DATETIME,
    UploadedBy            TEXT,
    IsApproved            INTEGER,
    ApprovalDate          DATETIME,
    ApprovalBy            TEXT,
    TargetAudience        TEXT,
    Language              TEXT,
    HasAudio              INTEGER,
    HasSubtitle           INTEGER,
    LicenseType           TEXT,
    UsageCount            INTEGER
);

INSERT INTO advertisement_creative_assets VALUES (15001, 801, Image, banner1.jpg, /assets/banners/, 204800, 1200, 300, 0, JPEG, '2023-02-01 00:00:00', DesignerA, 1, '2023-02-02 00:00:00', ManagerA, Adults, EN, 0, 0, Standard, 120);
INSERT INTO advertisement_creative_assets VALUES (15002, 802, Video, video_ad.mp4, /assets/videos/, 5242880, 1920, 1080, 30, MP4, '2023-03-05 00:00:00', DesignerB, 1, '2023-03-06 00:00:00', ManagerB, Teens, EN, 1, 1, Premium, 85);
INSERT INTO advertisement_creative_assets VALUES (15003, 803, Audio, ad_spot.wav, /assets/audio/, 1024000, 0, 0, 15, WAV, '2023-04-10 00:00:00', DesignerC, 0, NULL, NULL, Professionals, EN, 1, 0, Basic, 0);

-- Knowledge graph entity property definitions
CREATE TABLE knowledge_graph_entity_properties (
    PropertyId            INTEGER NOT NULL PRIMARY KEY,
    EntityId              INTEGER,
    PropertyName          TEXT,
    PropertyValue         TEXT,
    DataType              TEXT,
    CreatedAt             DATETIME,
    CreatedBy             TEXT,
    UpdatedAt             DATETIME,
    UpdatedBy             TEXT,
    IsActive              INTEGER,
    SourceSystem          TEXT,
    ConfidenceScore       REAL,
    ValidationStatus      TEXT,
    EffectiveFrom         DATETIME,
    EffectiveTo           DATETIME,
    Version               INTEGER,
    IsDeprecated          INTEGER,
    DeprecationReason    TEXT,
    AuditTrailUrl         TEXT,
    Tags                  TEXT
);

INSERT INTO knowledge_graph_entity_properties VALUES (16001, 901, Name, AlphaNode, String, '2023-01-01 00:00:00', SystemA, '2023-06-01 00:00:00', SystemB, 1, SourceX, 0.98, Verified, '2023-01-01 00:00:00', NULL, 1, 0, NULL, http://audit.com/16001, tag1,tag2);
INSERT INTO knowledge_graph_entity_properties VALUES (16002, 902, Weight, 12.5, Float, '2023-02-15 00:00:00', SystemC, '2023-07-15 00:00:00', SystemD, 1, SourceY, 0.95, Verified, '2023-02-15 00:00:00', NULL, 1, 0, NULL, http://audit.com/16002, tag3);
INSERT INTO knowledge_graph_entity_properties VALUES (16003, 903, Status, Active, String, '2023-03-20 00:00:00', SystemE, '2023-08-20 00:00:00', SystemF, 1, SourceZ, 0.99, Verified, '2023-03-20 00:00:00', NULL, 1, 0, NULL, http://audit.com/16003, tag4,tag5);

-- Customer journey step definitions
CREATE TABLE customer_journey_steps (
    StepId                INTEGER NOT NULL PRIMARY KEY,
    JourneyId             INTEGER,
    StepName              TEXT,
    SequenceNumber        INTEGER,
    TriggerEvent          TEXT,
    ActionTaken           TEXT,
    Channel               TEXT,
    ExpectedOutcome       TEXT,
    ActualOutcome         TEXT,
    DurationSeconds       INTEGER,
    SuccessFlag           INTEGER,
    FailureReason         TEXT,
    OwnerTeam             TEXT,
    CreatedDate           DATETIME,
    UpdatedDate           DATETIME,
    IsActive              INTEGER,
    MetricsCollected      INTEGER,
    SurveyLink            TEXT,
    FeedbackScore         REAL,
    FollowUpRequired      INTEGER,
    FollowUpDueDate       DATETIME
);

INSERT INTO customer_journey_steps VALUES (17001, 1001, Signup, 1, VisitSite, FillForm, Web, AccountCreated, AccountCreated, 120, 1, NULL, Marketing, '2023-01-10 00:00:00', '2023-01-10 00:00:00', 1, 1, http://survey.com/17001, 4.5, 0, NULL);
INSERT INTO customer_journey_steps VALUES (17002, 1001, EmailVerification, 2, SendEmail, ClickLink, Email, Verified, Verified, 300, 1, NULL, Support, '2023-01-10 00:00:00', '2023-01-10 00:00:00', 1, 1, http://survey.com/17002, 4.8, 0, NULL);
INSERT INTO customer_journey_steps VALUES (17003, 1001, FirstPurchase, 3, AddToCart, Checkout, Web, PurchaseCompleted, PurchaseCompleted, 600, 1, NULL, Sales, '2023-01-15 00:00:00', '2023-01-15 00:00:00', 1, 1, http://survey.com/17003, 4.7, 0, NULL);