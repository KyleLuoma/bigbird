-- School Infrastructure Assets
CREATE TABLE school_infrastructure_assets
(
    AssetID               TEXT NOT NULL PRIMARY KEY,
    CDSCode               TEXT NOT NULL,
    AssetType             TEXT NULL,
    InstallDate           DATE NULL,
    WarrantyExpDate       DATE NULL,
    VendorName            TEXT NULL,
    CostUSD               REAL NULL,
    CurrentValueUSD       REAL NULL,
    ConditionRating       INTEGER NULL,
    LastInspectionDate    DATE NULL,
    InspectionScore       INTEGER NULL,
    MaintenanceCycleMonths INTEGER NULL,
    NextMaintenanceDue    DATE NULL,
    LocationDescription   TEXT NULL,
    Latitude              REAL NULL,
    Longitude             REAL NULL,
    AssetSerialNumber     TEXT NULL,
    AssetTagNumber        TEXT NULL,
    FundingSourceCode     TEXT NULL,
    DepreciationYears     INTEGER NULL,
    IsCritical            INTEGER NULL,
    Notes                 TEXT NULL
);
INSERT INTO school_infrastructure_assets VALUES ('A001','001','HVAC','2020-06-15','2025-06-15','CoolTech','25000','18000',8,'2023-01-10',85,12,'2023-07-10','MainHall','34.0567','-118.2456','SN12345','TAG001','FS01',5,1,'Installed2020');
INSERT INTO school_infrastructure_assets VALUES ('A002','001','SolarPanel','2019-03-01','2034-03-01','SunPower','120000','95000',9,'2023-02-20',92,24,'2023-08-20','RooftopEast','34.0569','-118.2458','SN54321','TAG002','FS02',15,1,'PerformanceGood');
INSERT INTO school_infrastructure_assets VALUES ('A003','002','SecurityCamera','2021-09-12','2026-09-12','SecureCam','8000','6500',7,'2023-03-05',78,6,'2023-09-05','EntranceWest','34.0678','-118.2501','SN67890','TAG003','FS03',5,0,'NeedsReposition');

-- Student Alumni Network
CREATE TABLE student_alumni_network
(
    AlumniID               TEXT NOT NULL PRIMARY KEY,
    CDSCode                TEXT NOT NULL,
    GraduationYear         INTEGER NULL,
    DegreeEarned           TEXT NULL,
    Major                  TEXT NULL,
    CurrentEmployer        TEXT NULL,
    PositionTitle          TEXT NULL,
    EmploymentStartDate    DATE NULL,
    LinkedInProfile        TEXT NULL,
    Email                  TEXT NULL,
    PhoneNumber            TEXT NULL,
    City                   TEXT NULL,
    State                  TEXT NULL,
    Country                TEXT NULL,
    SalaryBracketUSD       TEXT NULL,
    AlumniStatus           TEXT NULL,
    LastContactDate        DATE NULL,
    PreferredContactMethod TEXT NULL,
    VolunteerInterest      TEXT NULL,
    DonationYear           INTEGER NULL,
    DonationAmountUSD      REAL NULL,
    Notes                  TEXT NULL
);
INSERT INTO student_alumni_network VALUES ('ALU001','001',2015,'Bachelors','Science','TechCorp','Engineer','2015-07-01','linkedin.com/in/jdoe','jdoe@example.com','5551234567','Springfield','IL','USA','50000-75000','Active','2023-01-15','Email','Mentoring',2018,2000,'Frequent donor');
INSERT INTO student_alumni_network VALUES ('ALU002','001',2018,'Masters','Education','EduLearn','Curriculum Designer','2018-09-15','linkedin.com/in/asmith','asmith@example.com','5559876543','Riverdale','CA','USA','75000-100000','Active','2023-02-20','Phone','GuestSpeaker',2020,1500,'Speaker at 2022 event');
INSERT INTO student_alumni_network VALUES ('ALU003','002',2012,'PhD','Mathematics','DataAnalytics Inc','Data Scientist','2013-01-10','linkedin.com/in/blee','blee@example.com','5555551212','MetroCity','NY','USA','100000-150000','Alumni','2022-12-05','Email','BoardMember',2019,5000,'Board member since 2020');

-- District Policy Change Log
CREATE TABLE district_policy_change_log
(
    ChangeID                TEXT NOT NULL PRIMARY KEY,
    DistrictCode            TEXT NOT NULL,
    PolicyName              TEXT NULL,
    EffectiveDate           DATE NULL,
    RevisionNumber          INTEGER NULL,
    ChangeDescription       TEXT NULL,
    InitiatedBy             TEXT NULL,
    ApprovedBy              TEXT NULL,
    ApprovalDate            DATE NULL,
    Status                  TEXT NULL,
    ImpactArea              TEXT NULL,
    DocumentationLink       TEXT NULL,
    StakeholderFeedback     TEXT NULL,
    TrainingRequired        INTEGER NULL,
    TrainingCompletionDate  DATE NULL,
    ResourcesAllocatedUSD   REAL NULL,
    ComplianceCheckDate     DATE NULL,
    ComplianceStatus        TEXT NULL,
    Notes                   TEXT NULL,
    Archived                INTEGER NULL,
    ArchiveDate             DATE NULL,
    LastUpdated             DATE NULL
);
INSERT INTO district_policy_change_log VALUES ('PC001','D001','AttendancePolicy','2023-08-01',2,'Extended excused absence to 5 days','Superintendent','BoardChair','2023-07-15','Approved','StudentAttendance','/docs/attendance2023.pdf','Positive','1','2023-09-01',5000,'2023-09-15','Compliant','N/A','0',NULL,'2023-07-20');
INSERT INTO district_policy_change_log VALUES ('PC002','D001','NutritionGuidelines','2023-01-10',1,'Added fruit option to lunch menu','NutritionDirector','BoardMember','2022-12-20','Approved','StudentHealth','/docs/nutrition2023.pdf','Mixed','1','2023-02-01',3000,'2023-02-10','Compliant','Reviewed quarterly','0',NULL,'2022-12-22');
INSERT INTO district_policy_change_log VALUES ('PC003','D002','RemoteLearningPolicy','2022-09-01',3,'Standardized virtual classroom tools','ITChief','BoardChair','2022-08-15','Approved','Instruction','/docs/remote2022.pdf','Positive','0',NULL,8000,'2022-09-10','Compliant','Implementation ongoing','0',NULL,'2022-08-20');

-- Community Transport Access
CREATE TABLE community_transport_access
(
    AccessID                TEXT NOT NULL PRIMARY KEY,
    CommunityID            TEXT NOT NULL,
    TransportMode          TEXT NULL,
    ProviderName           TEXT NULL,
    ServiceStartDate       DATE NULL,
    ServiceEndDate         DATE NULL,
    RouteNumber            TEXT NULL,
    StopsCount             INTEGER NULL,
    AvgTravelTimeMinutes   INTEGER NULL,
    FareUSD                REAL NULL,
    EligibilityCriteria    TEXT NULL,
    AccessibilityFeatures  TEXT NULL,
    ScheduleLink           TEXT NULL,
    ContactPhone           TEXT NULL,
    ContactEmail           TEXT NULL,
    AnnualRidership        INTEGER NULL,
    FundingSourceCode      TEXT NULL,
    MaintenanceContractID  TEXT NULL,
    Notes                  TEXT NULL,
    LastUpdated            DATE NULL,
    DataSource             TEXT NULL,
    IsActive               INTEGER NULL
);
INSERT INTO community_transport_access VALUES ('CT001','C001','Bus','MetroTransit','2019-01-01',NULL,'M12',15,35,1.5,'LowIncome','WheelchairRamp','/schedules/m12.pdf','5551112222','info@metro.com',120000,'FS04','MC001','Provides service to downtown','2023-01-10','TransitDept','1');
INSERT INTO community_transport_access VALUES ('CT002','C001','Van','CommunityRide','2020-06-15',NULL,'VR5',8,20,0.8,'AllResidents','None','/schedules/vr5.pdf','5553334444','contact@communityride.org',45000,'FS05','MC002','Supplemental senior transport','2023-02-05','TransitDept','1');
INSERT INTO community_transport_access VALUES ('CT003','C002','BikeShare','CityBikes','2021-03-01',NULL,'BS3',25,12,0.0,'AllResidents','BikeRacks','/schedules/bs3.pdf','5557778888','support@citybikes.com',80000,'FS06','MC003','Station near high school','2023-03-12','TransitDept','1');

-- School Funding Source Details
CREATE TABLE school_funding_source_details
(
    FundingDetailID        TEXT NOT NULL PRIMARY KEY,
    CDSCode                TEXT NOT NULL,
    SourceName             TEXT NULL,
    SourceType             TEXT NULL,
    FundingYear            INTEGER NULL,
    AmountUSD              REAL NULL,
    GrantNumber            TEXT NULL,
    AwardDate              DATE NULL,
    ExpirationDate         DATE NULL,
    MatchingRequirementUSD REAL NULL,
    DisbursementSchedule   TEXT NULL,
    ReportingFrequency    TEXT NULL,
    ContactPerson          TEXT NULL,
    ContactPhone           TEXT NULL,
    ContactEmail           TEXT NULL,
    Status                 TEXT NULL,
    Notes                  TEXT NULL,
    LastUpdated            DATE NULL,
    DataVerified           INTEGER NULL,
    VerificationDate       DATE NULL,
    FundingProgramCode     TEXT NULL,
    AllocationMethod       TEXT NULL
);
INSERT INTO school_funding_source_details VALUES ('FS001','001','State Education Grant','Grant',2023,500000,'GR12345','2023-02-01','2025-01-31','25000','Quarterly','Quarterly','Jane Doe','5551230000','jdoe@stateedu.gov','Active','Used for STEM labs','2023-06-01',1,'2023-06-05','SEG01','Formula');
INSERT INTO school_funding_source_details VALUES ('FS002','001','Local Business Sponsorship','Private',2022,120000,'SP67890','2022-05-15','2024-05-14','0','Annual','Annual','John Smith','5559870000','jsmith@bizcorp.com','Active','Funding for athletic equipment','2022-12-10',1,'2022-12-12','LBS01','Direct');
INSERT INTO school_funding_source_details VALUES ('FS003','002','Federal Title I','Federal',2023,300000,'FTI1122','2023-01-10','2026-01-09','15000','SemiAnnual','SemiAnnual','Emily Green','5555550000','egreen@ed.gov','Pending','Awaiting approval','2023-04-20',0,NULL,'FTI02','Formula');

-- Environmental Noise Events
CREATE TABLE environmental_noise_events
(
    EventID                TEXT NOT NULL PRIMARY KEY,
    SensorID               TEXT NOT NULL,
    EventDateTime          DATETIME NULL,
    DecibelLevel           REAL NULL,
    FrequencyHz            REAL NULL,
    DurationSeconds        INTEGER NULL,
    EventType              TEXT NULL,
    SourceDescription      TEXT NULL,
    AffectedAreaSqMeters   REAL NULL,
    MitigationActionTaken  TEXT NULL,
    ActionDate             DATE NULL,
    ResponsibleAgency      TEXT NULL,
    DocumentationLink      TEXT NULL,
    Remarks                TEXT NULL,
    Verified               INTEGER NULL,
    VerificationDate       DATE NULL,
    Latitude               REAL NULL,
    Longitude              REAL NULL,
    Status                 TEXT NULL,
    CreatedBy              TEXT NULL,
    CreatedDate            DATE NULL,
    UpdatedDate            DATE NULL
);
INSERT INTO environmental_noise_events VALUES ('NE001','SENS01','2023-03-15 08:30:00',85.2,500,120,'Construction','Roadwork on 5th Ave',2500,'Added sound barrier','2023-03-16','CityPublicWorks','/docs/noise_ne001.pdf','No complaints','1','2023-03-17',34.0560,-118.2450','Resolved','EnvOfficer','2023-03-15','2023-03-18');
INSERT INTO environmental_noise_events VALUES ('NE002','SENS02','2023-04-10 14:45:00',92.5,1000,45,'Aircraft','Overflight from nearby airport',1800,'Implemented flight path adjustment','2023-04-11','AirportAuthority','/docs/noise_ne002.pdf','Monitoring continued','0',NULL,34.0600,-118.2500,'Under Review','EnvOfficer','2023-04-10','2023-04-12');
INSERT INTO environmental_noise_events VALUES ('NE003','SENS03','2023-05-22 19:20:00',78.0,250,180,'Concert','Outdoor concert in park',3500,'Reduced volume after 2 hrs','2023-05-22','ParkManagement','/docs/noise_ne003.pdf','Positive feedback from community','1','2023-05-23',34.0700,-118.2600','Closed','EnvOfficer','2023-05-22','2023-05-24');

-- Teacher Professional Learning Pathways
CREATE TABLE teacher_professional_learning_pathways
(
    PathwayID              TEXT NOT NULL PRIMARY KEY,
    TeacherID              TEXT NOT NULL,
    CDSCode                TEXT NOT NULL,
    PathwayName            TEXT NULL,
    StartDate              DATE NULL,
    EndDate                DATE NULL,
    TotalHours             REAL NULL,
    CreditsEarned          INTEGER NULL,
    ModeOfDelivery         TEXT NULL,
    ProviderOrganization   TEXT NULL,
    CertificationTarget    TEXT NULL,
    Status                 TEXT NULL,
    CompletionDate         DATE NULL,
    EvidenceLink           TEXT NULL,
    MentorAssigned         TEXT NULL,
    MentorContact          TEXT NULL,
    EvaluationScore        REAL NULL,
    NextStepRecommended   TEXT NULL,
    FundingSourceCode      TEXT NULL,
    Notes                  TEXT NULL,
    CreatedBy              TEXT NULL,
    CreatedDate            DATE NULL,
    UpdatedDate            DATE NULL
);
INSERT INTO teacher_professional_learning_pathways VALUES ('TP001','T001','001','Advanced STEM Instruction','2023-01-15','2023-06-30',120.5,3,'Online','EduTech','STEM_Cert','Completed','2023-07-01','/evidence/tp001.pdf','MentorA','mentorA@school.org',4.5,'Lead STEM coordinator','FS07','Excellent progress','Admin','2023-01-10','2023-07-02');
INSERT INTO teacher_professional_learning_pathways VALUES ('TP002','T002','001','Classroom Management','2022-09-01','2023-02-28',60,2,'InPerson','LocalInstitute','Mgmt_Cert','Completed','2023-03-05','/evidence/tp002.pdf','MentorB','mentorB@school.org',4.2,'Observe peer classrooms','FS08','Consistent improvement','Admin','2022-08-20','2023-03-06');
INSERT INTO teacher_professional_learning_pathways VALUES ('TP003','T003','002','Differentiated Instruction','2023-03-01','2023-09-30',80,2,'Hybrid','NationalEd','Diff_Cert','InProgress',NULL,NULL,'MentorC','mentorC@district.org',NULL,'Finish coursework','FS09','On track','Admin','2023-02-25',NULL);

-- Parent Communication Devices
CREATE TABLE parent_communication_devices
(
    DeviceID               TEXT NOT NULL PRIMARY KEY,
    ParentID               TEXT NOT NULL,
    CDSCode                TEXT NOT NULL,
    DeviceType             TEXT NULL,
    DeviceModel            TEXT NULL,
    OSVersion              TEXT NULL,
    SerialNumber           TEXT NULL,
    PurchaseDate           DATE NULL,
    WarrantyEndDate        DATE NULL,
    AssignedBy             TEXT NULL,
    AssignmentDate         DATE NULL,
    Status                 TEXT NULL,
    LastSyncDate           DATE NULL,
    SyncMethod             TEXT NULL,
    SupportedFeatures      TEXT NULL,
    NotificationPreference TEXT NULL,
    DataPlanProvider       TEXT NULL,
    DataPlanLimitGB        REAL NULL,
    CurrentDataUsedGB      REAL NULL,
    Notes                  TEXT NULL,
    CreatedBy              TEXT NULL,
    CreatedDate            DATE NULL,
    UpdatedDate            DATE NULL
);
INSERT INTO parent_communication_devices VALUES ('PD001','P001','001','Smartphone','GalaxyS22','Android12','SN001','2022-04-10','2025-04-10','Admin','2022-04-15','Active','2023-07-01','WiFi','Messaging,Email','Email','CarrierX',10,3.2,'Primary contact device','Admin','2022-04-12','2023-07-02');
INSERT INTO parent_communication_devices VALUES ('PD002','P002','001','Tablet','iPadAir','iOS15','SN002','2021-09-05','2024-09-05','Admin','2021-09-10','Active','2023-06-20','Cellular','Messaging,Video','SMS','CarrierY',5,1.1,'Secondary device for newsletters','Admin','2021-09-07','2023-06-21');
INSERT INTO parent_communication_devices VALUES ('PD003','P003','002','Laptop','LenovoThinkPad','Windows10','SN003','2020-01-20','2023-01-20','Admin','2020-01-25','Inactive',NULL,NULL,'Email,Portal','Email','CarrierZ',0,0,'Device retired','Admin','2020-01-22','2023-01-01');

-- District Cybersecurity Incidents
CREATE TABLE district_cybersecurity_incidents
(
    IncidentID             TEXT NOT NULL PRIMARY KEY,
    DistrictCode           TEXT NOT NULL,
    IncidentDateTime       DATETIME NULL,
    DetectionMethod        TEXT NULL,
    AttackVector           TEXT NULL,
    AffectedSystems        TEXT NULL,
    DataCompromised        TEXT NULL,
    ImpactSeverityLevel    TEXT NULL,
    EstimatedLossUSD       REAL NULL,
    ContainmentDate        DATE NULL,
    RemediationActions     TEXT NULL,
    ResponsibleTeam        TEXT NULL,
    NotificationSent       INTEGER NULL,
    NotificationDate       DATE NULL,
    RegulatoryReportFiled  INTEGER NULL,
    ReportFilingDate       DATE NULL,
    LessonsLearned         TEXT NULL,
    FollowUpPlanID         TEXT NULL,
    Status                 TEXT NULL,
    ReportLink             TEXT NULL,
    CreatedBy              TEXT NULL,
    CreatedDate            DATE NULL,
    UpdatedDate            DATE NULL
);
INSERT INTO district_cybersecurity_incidents VALUES ('CI001','D001','2023-02-14 10:45:00','IDS','Phishing','EmailServer','StudentRecords','High',250000,'2023-02-16','Password reset, MFA rollout','ITSecurity','1','2023-02-17','1','2023-02-20','Improved email filtering','FP001','Closed','/reports/ci001.pdf','SecLead','2023-02-14','2023-02-21');
INSERT INTO district_cybersecurity_incidents VALUES ('CI002','D001','2023-05-05 22:30:00','EndpointAV','Ransomware','FileServer','FinancialData','Critical',750000,'2023-05-07','System isolation, backup restore','ITSecurity','1','2023-05-08','1','2023-05-10','Quarterly audits added','FP002','Resolved','/reports/ci002.pdf','SecLead','2023-05-05','2023-05-11');
INSERT INTO district_cybersecurity_incidents VALUES ('CI003','D002','2023-07-12 14:15:00','UserReport','SQLInjection','WebApp','None','Medium',0,'2023-07-13','Patch applied, code review','WebTeam','0',NULL,'0',NULL,'Update dev training','FP003','Monitoring','/reports/ci003.pdf','SecLead','2023-07-12','2023-07-14');

-- School Renewable Energy Metrics
CREATE TABLE school_renewable_energy_metrics
(
    MetricID               TEXT NOT NULL PRIMARY KEY,
    CDSCode                TEXT NOT NULL,
    EnergySource           TEXT NULL,
    InstallationDate       DATE NULL,
    CapacityKW             REAL NULL,
    AnnualGenerationMWh    REAL NULL,
    CO2ReductionTons       REAL NULL,
    PerformanceRatio       REAL NULL,
    MaintenanceCostUSDYear REAL NULL,
    LastInspectionDate    DATE NULL,
    InspectionScore        INTEGER NULL,
    FundingSourceCode      TEXT NULL,
    OperationalStatus      TEXT NULL,
    Notes                  TEXT NULL,
    CreatedBy              TEXT NULL,
    CreatedDate            DATE NULL,
    UpdatedDate            DATE NULL,
    DataVerified           INTEGER NULL,
    VerificationDate       DATE NULL,
    Latitude               REAL NULL,
    Longitude              REAL NULL
);
INSERT INTO school_renewable_energy_metrics VALUES ('RE001','001','Solar','2020-04-01',150.0,210.0,180.0,0.85,1200,'2023-01-10',92,'FS10','Active','North roof panels','Admin','2020-04-05','2023-02-01',1,'2023-02-02',34.0565,-118.2453');
INSERT INTO school_renewable_energy_metrics VALUES ('RE002','001','Wind','2022-09-15',75.0,95.0,70.0,0.78,800,'2023-03-20',88,'FS11','Active','Small turbine near field','Admin','2022-09-20','2023-04-01',1,'2023-04-02',34.0580,-118.2470');
INSERT INTO school_renewable_energy_metrics VALUES ('RE003','002','Geothermal','2019-06-10',200.0,260.0,210.0,0.90,1500,'2023-02-15',95,'FS12','Active','HVAC integration','Admin','2019-06-15','2023-05-01',1,'2023-05-02',34.0675,-118.2505');

-- District Policy Change Log (Additional Table with Different Focus)
CREATE TABLE district_policy_change_audit
(
    AuditID                TEXT NOT NULL PRIMARY KEY,
    ChangeID               TEXT NOT NULL,
    ReviewerID             TEXT NOT NULL,
    ReviewDate             DATE NULL,
    ComplianceCheckPassed  INTEGER NULL,
    Comments               TEXT NULL,
    ActionRequired         TEXT NULL,
    ActionDueDate          DATE NULL,
    FollowUpCompleted      INTEGER NULL,
    FollowUpDate           DATE NULL,
    UpdatedBy              TEXT NULL,
    UpdatedDate            DATE NULL,
    ArchiveFlag            INTEGER NULL,
    ArchiveDate            DATE NULL,
    VersionNumber          INTEGER NULL,
    DocumentHash           TEXT NULL,
    ApprovalStatus         TEXT NULL,
    ReviewMethod           TEXT NULL,
    RiskLevel              TEXT NULL,
    ImpactScore            REAL NULL,
    Notes                  TEXT NULL,
    CreatedBy              TEXT NULL,
    CreatedDate            DATE NULL
);
INSERT INTO district_policy_change_audit VALUES ('AUD001','PC001','RV001','2023-07-21',1,'All criteria met','None','2023-08-01',1,'2023-07-30','Admin','2023-07-21',0,NULL,1,'ABC123','Approved','Manual','Low',0.2','No issues','Admin','2023-07-20');
INSERT INTO district_policy_change_audit VALUES ('AUD002','PC002','RV002','2023-01-15',1,'Satisfactory','Update signage','2023-02-01',0,NULL,'Admin','2023-01-16',0,NULL,1,'DEF456','Pending','Automated','Medium',0.5','Pending actions','Admin','2023-01-14');
INSERT INTO district_policy_change_audit VALUES ('AUD003','PC003','RV003','2022-09-10',0,'Missing documentation','Provide evidence','2022-10-01',0,NULL,'Admin','2022-09-11',0,NULL,1,'GHI789','Rejected','Manual','High',0.9','Requires rework','Admin','2022-09-09');

-- School Energy Consumption Daily
CREATE TABLE school_energy_consumption_daily
(
    RecordID               TEXT NOT NULL PRIMARY KEY,
    CDSCode                TEXT NOT NULL,
    RecordDate             DATE NOT NULL,
    ElectricityKWh         REAL NULL,
    GasTherms              REAL NULL,
    WaterGallons           REAL NULL,
    SolarGenerationKWh     REAL NULL,
    WindGenerationKWh      REAL NULL,
    PeakDemandKW           REAL NULL,
    LoadFactor             REAL NULL,
    TemperatureC           REAL NULL,
    HumidityPercent        REAL NULL,
    WeatherCondition      TEXT NULL,
    OccupancyRatePercent  REAL NULL,
    LightingHours          REAL NULL,
    HVACHours              REAL NULL,
    EnergyCostUSD          REAL NULL,
    CarbonEmissionKg       REAL NULL,
    MeterReadTimestamp     DATETIME NULL,
    DataSource             TEXT NULL,
    VerifiedFlag           INTEGER NULL,
    VerificationDate       DATE NULL,
    Notes                  TEXT NULL,
    CreatedBy              TEXT NULL,
    CreatedDate            DATE NULL,
    UpdatedDate            DATE NULL
);
INSERT INTO school_energy_consumption_daily VALUES ('EC001','001','2023-07-01',4500.5,1200.0,15000.0,800.0,0.0,350.0,0.78,30.5,45.0,'Clear',85.0,10.0,12.0,2500.0,3200.0,'2023-07-01 23:59:00','Meter','1','2023-07-02','Daily intake','Admin','2023-07-01','2023-07-02');
INSERT INTO school_energy_consumption_daily VALUES ('EC002','001','2023-07-02',4600.0,1185.5,14950.0,820.0,0.0,355.0,0.80,31.0,50.0,'Cloudy',84.0,10.5,12.5,2550.0,3225.0,'2023-07-02 23:59:00','Meter','1','2023-07-03','Slight increase','Admin','2023-07-02','2023-07-03');
INSERT INTO school_energy_consumption_daily VALUES ('EC003','002','2023-07-01',3800.0,1000.0,13000.0,600.0,0.0,300.0,0.75,29.0,48.0,'Rain',78.0,9.0,11.0,2100.0,2800.0,'2023-07-01 23:59:00','Meter','1','2023-07-02','Baseline data','Admin','2023-07-01','2023-07-02');

-- School Arts Exhibit Catalog
CREATE TABLE school_arts_exhibit_catalog
(
    ExhibitID              TEXT NOT NULL PRIMARY KEY,
    CDSCode                TEXT NOT NULL,
    ExhibitName            TEXT NULL,
    Category               TEXT NULL,
    StartDate              DATE NULL,
    EndDate                DATE NULL,
    CuratorName            TEXT NULL,
    LocationDescription    TEXT NULL,
    NumberOfWorks          INTEGER NULL,
    TotalVisitorCount      INTEGER NULL,
    AdmissionFeeUSD        REAL NULL,
    SponsorshipDetails     TEXT NULL,
    FundingSourceCode      TEXT NULL,
    InstallationCostUSD    REAL NULL,
    MaintenanceCostUSDYear REAL NULL,
        -- Additional descriptive fields
    ArtworkType            TEXT NULL,
    MediaUsed              TEXT NULL,
    ArtistNames            TEXT NULL,
    EducationalProgramLink TEXT NULL,
    AccessibilityFeatures  TEXT NULL,
    OnlineGalleryLink      TEXT NULL,
    PressReleaseLink       TEXT NULL,
    EvaluationScore        REAL NULL,
    Notes                  TEXT NULL,
    CreatedBy              TEXT NULL,
    CreatedDate            DATE NULL,
    UpdatedDate            DATE NULL
);
INSERT INTO school_arts_exhibit_catalog VALUES ('AE001','001','Colors of Community','VisualArts','2023-05-01','2023-08-01','Laura Miller','Main Hall','45','5000','5.0','LocalBusinessCo','FS13',2000.0,500.0,'Painting','Acrylic','Various Local Artists','/programs/ae001','WheelchairRamp','/online/ae001','/press/ae001','4.7','Positive feedback','Admin','2023-04-15','2023-08-05');
INSERT INTO school_arts_exhibit_catalog VALUES ('AE002','001','Digital Dreams','DigitalArt','2023-09-15','2023-12-15','Mark Rivera','Tech Lab','30','3000','0.0','TechGrant','FS14',1500.0,300.0,'Digital','Projection','Student Projects','/programs/ae002','ScreenReaderSupport','/online/ae002','/press/ae002','4.5','Well received','Admin','2023-08-20','2023-12-20');
INSERT INTO school_arts_exhibit_catalog VALUES ('AE003','002','Sculpture Garden','Sculpture','2023-04-10','2023-07-10','Nina Patel','Outdoor Grounds','20','2500','2.0','ArtFoundation','FS15',3000.0,600.0,'Sculpture','Stone/Metal','Regional Artists','/programs/ae003','PathwayLighting','/online/ae003','/press/ae003','4.8','Community involvement high','Admin','2023-03-25','2023-07-15');