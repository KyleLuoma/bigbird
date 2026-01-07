-- Table: school_supplemental_funding
CREATE TABLE school_supplemental_funding
(
    FundingID                INTEGER NOT NULL PRIMARY KEY,
    CDSCode                  TEXT    NOT NULL,
    FiscalYear               TEXT    NOT NULL,
    ProgramName              TEXT    NOT NULL,
    AmountAllocated          REAL    NOT NULL,
    AmountSpent              REAL    NULL,
    GrantNumber              TEXT    NULL,
    SourceAgency             TEXT    NULL,
    ApprovalDate             DATE    NULL,
    ExpirationDate           DATE    NULL,
    Status                   TEXT    NULL,
    FundingCategory          TEXT    NULL,
    EligibilityCriteria      TEXT    NULL,
    ApplicationDeadline      DATE    NULL,
    AwardDate                DATE    NULL,
    RenewalFlag              INTEGER NULL,
    PerformanceMetric        TEXT    NULL,
    ContactPerson            TEXT    NULL,
    ContactEmail             TEXT    NULL,
    Notes                    TEXT    NULL,
    CreatedAt                DATE    NOT NULL,
    UpdatedAt                DATE    NOT NULL
);

INSERT INTO school_supplemental_funding VALUES
(1,'123456','2023','AfterSchool Enrichment',50000.00,12000.00,'G-2023-01','State Education Office','2023-02-01','2025-01-31','Active','Supplemental','All Schools','2023-01-15','2023-02-10',0,'Student Participation Rate','John Doe','jdoe@example.com','Initial funding','2023-02-01','2023-02-01');

INSERT INTO school_supplemental_funding VALUES
(2,'234567','2022','STEM Grant',75000.00,30000.00,'G-2022-07','Federal STEM Agency','2022-03-01','2024-02-28','Active','Grant','STEM Programs','2022-02-01','2022-03-05',1,'Test Scores Improvement','Jane Smith','jsmith@example.com','Renewed for 2023','2022-03-01','2022-04-01');

INSERT INTO school_supplemental_funding VALUES
(3,'345678','2021','Arts Initiative',40000.00,15000.00,'G-2021-12','Local Arts Council','2021-04-01','2023-03-31','Completed','Program','Arts Curriculum','2021-03-15','2021-04-10',0,'Exhibition Attendance','Mike Lee','mlee@example.com','Final report submitted','2021-04-01','2021-05-01');

-- Table: student_technology_device_inventory
CREATE TABLE student_technology_device_inventory
(
    DeviceID                 INTEGER NOT NULL PRIMARY KEY,
    CDSCode                  TEXT    NOT NULL,
    StudentID                TEXT    NOT NULL,
    DeviceType               TEXT    NOT NULL,
    SerialNumber             TEXT    NOT NULL,
    PurchaseDate             DATE    NOT NULL,
    WarrantyEndDate          DATE    NULL,
    OSVersion                TEXT    NULL,
    AssignedBy               TEXT    NULL,
    Condition                TEXT    NULL,
    LastMaintenanceDate      DATE    NULL,
    AssetTag                 TEXT    NULL,
    Department               TEXT    NULL,
    Manufacturer             TEXT    NULL,
    ModelNumber              TEXT    NULL,
    StorageCapacityGB        INTEGER NULL,
    RAMGB                    INTEGER NULL,
    BatteryHealthPercent     INTEGER NULL,
    InsurancePolicyNumber    TEXT    NULL,
    InsuranceProvider        TEXT    NULL,
    Notes                    TEXT    NULL,
    CreatedAt                DATE    NOT NULL,
    UpdatedAt                DATE    NOT NULL
);

INSERT INTO student_technology_device_inventory VALUES
(1,'123456','S001','Laptop','SN10001','2022-09-01','2025-09-01','Windows10','TechDept','Good','2023-06-01','AT-001','Science','Dell','Latitude 5410',256,8,90,'POL123','InsureCo','Primary device for student','2022-09-01','2023-06-01');

INSERT INTO student_technology_device_inventory VALUES
(2,'234567','S002','Tablet','SN20002','2021-01-15','2024-01-15','iPadOS14','TechDept','Fair','2022-12-01','AT-002','Math','Apple','iPad Air',64,4,80,'POL456','SecureCover','Used in math lab','2021-01-15','2022-12-01');

INSERT INTO student_technology_device_inventory VALUES
(3,'345678','S003','Chromebook','SN30003','2023-03-10','2026-03-10','ChromeOS','TechDept','New','2023-03-10','AT-003','English','Google','Pixelbook Go',128,8,100,'POL789','EduProtect','Spare device for English class','2023-03-10','2023-03-10');

-- Table: district_infrastructure_project_log
CREATE TABLE district_infrastructure_project_log
(
    ProjectID                INTEGER NOT NULL PRIMARY KEY,
    DistrictID               TEXT    NOT NULL,
    ProjectName              TEXT    NOT NULL,
    ProjectDescription       TEXT    NULL,
    StartDate                DATE    NULL,
    EndDate                  DATE    NULL,
    BudgetAllocated          REAL    NULL,
    BudgetSpent              REAL    NULL,
    ContractorName           TEXT    NULL,
    PermitNumber             TEXT    NULL,
    Status                   TEXT    NULL,
    Phase                    TEXT    NULL,
    EstimatedCompletionDate  DATE    NULL,
    ActualCompletionDate     DATE    NULL,
    FundingSource            TEXT    NULL,
    EnvironmentalImpactScore INTEGER NULL,
    NumberOfWorkers          INTEGER NULL,
    SafetyIncidents          INTEGER NULL,
    PublicCommentsCount      INTEGER NULL,
    CommunityBenefitScore    INTEGER NULL,
    Notes                    TEXT    NULL,
    CreatedAt                DATE    NOT NULL,
    UpdatedAt                DATE    NOT NULL
);

INSERT INTO district_infrastructure_project_log VALUES
(1,'D001','North Wing Renovation','Renovate north wing of high school',2022-05-01,'2023-08-15',1200000.00,1150000.00,'BuildCorp','PN-1001','Completed','Construction','2023-07-31','2023-08-15','District Bond','85',45,2,120,90,'Renovation completed ahead of schedule','2022-05-01','2023-08-16');

INSERT INTO district_infrastructure_project_log VALUES
(2,'D002','Solar Panel Installation','Install solar panels on elementary schools',2023-01-10,NULL,800000.00,250000.00,'EcoEnergy','PN-2002','InProgress','Installation','2024-12-31',NULL,'State Grant','70',30,0,80,75,'Phase 1 completed, awaiting materials for Phase 2','2023-01-10','2023-08-01');

INSERT INTO district_infrastructure_project_log VALUES
(3,'D001','Playground Upgrade','Upgrade playground equipment district-wide',2021-03-15,'2022-02-28',300000.00,295000.00,'PlaySafe Ltd','PN-3003','Completed','Implementation','2022-02-15','2022-02-28','Capital Funds','60',20,1,200,65,'All schools received new equipment','2021-03-15','2022-03-01');

-- Table: community_partner_engagement
CREATE TABLE community_partner_engagement
(
    EngagementID             INTEGER NOT NULL PRIMARY KEY,
    PartnerID                TEXT    NOT NULL,
    PartnerName              TEXT    NOT NULL,
    ContactName              TEXT    NULL,
    ContactEmail             TEXT    NULL,
    PartnershipType          TEXT    NULL,
    StartDate                DATE    NULL,
    EndDate                  DATE    NULL,
    ActivitiesCount          INTEGER NULL,
    FundingProvidedUSD       REAL    NULL,
    ResourcesProvided        TEXT    NULL,
    ImpactScore              INTEGER NULL,
    AgreementDocumentID      TEXT    NULL,
    RenewalDate              DATE    NULL,
    EvaluationScore          INTEGER NULL,
    Notes                    TEXT    NULL,
    CreatedAt                DATE    NOT NULL,
    UpdatedAt                DATE    NOT NULL,
    DistrictID               TEXT    NULL,
    CDSCode                  TEXT    NULL
);

INSERT INTO community_partner_engagement VALUES
(1,'P001','Local Library','Anna White','awhite@library.org','ResourceSharing','2022-01-01','2024-12-31',12,15000.00,'Books, Computers',88,'DOC-1001','2024-12-01',90,'Ongoing collaboration','2022-01-01','2023-06-01','D001','123456');

INSERT INTO community_partner_engagement VALUES
(2,'P002','Community Health Center','Bob Green','bgreen@health.org','WellnessProgram','2021-06-15','2023-06-14',8,20000.00,'Health screenings, Counseling',75,'DOC-2002','2023-05-30',78,'Provided annual health fairs','2021-06-15','2022-11-01','D002','234567');

INSERT INTO community_partner_engagement VALUES
(3,'P003','Tech Company Inc','Cara Blue','cblue@techco.com','STEMSupport','2023-03-01',NULL,5,50000.00,'Robotics kits, Mentors',92,'DOC-3003','2025-02-28',95,'New robotics club launched','2023-03-01','2023-09-01','D001','345678');

-- Table: school_facility_energy_audit
CREATE TABLE school_facility_energy_audit
(
    AuditID                  INTEGER NOT NULL PRIMARY KEY,
    CDSCode                  TEXT    NOT NULL,
    AuditDate                DATE    NOT NULL,
    AuditorName              TEXT    NULL,
    AuditScore               INTEGER NULL,
    RoofInsulationRating     INTEGER NULL,
    WindowEfficiencyRating   INTEGER NULL,
    HVACEfficiencyRating     INTEGER NULL,
    LightingEfficiencyRating INTEGER NULL,
    RenewableEnergyInstalled INTEGER NULL,
    SolarCapacityKW          REAL    NULL,
    BatteryStorageKW         REAL    NULL,
    RecommendationsCount     INTEGER NULL,
    TotalPotentialSavingsUSD REAL    NULL,
    EstimatedPaybackYears    REAL    NULL,
    FollowUpDate             DATE    NULL,
    Notes                    TEXT    NULL,
    CreatedAt                DATE    NOT NULL,
    UpdatedAt                DATE    NOT NULL,
    EnergyStarRating         TEXT    NULL,
    HVACSystemAgeYears       INTEGER NULL,
    LightingControlType      TEXT    NULL
);

INSERT INTO school_facility_energy_audit VALUES
(1,'123456','2023-04-15','EcoAudit LLC',85,8,7,9,8,1,250.5,120.0,12,50000.00,4.5,'2024-04-15','Upgrade lighting to LEDs','2023-04-15','2023-04-15','Gold',10,'Dimmable');

INSERT INTO school_facility_energy_audit VALUES
(2,'234567','2022-11-20','GreenCheck',78,6,5,7,6,0,NULL,NULL,9,30000.00,6.0,'2023-11-20','Install solar panels on roof','2022-11-20','2022-12-01','Silver',12,'SensorBased');

INSERT INTO school_facility_energy_audit VALUES
(3,'345678','2023-07-01','EnergyWise',92,9,8,10,9,1,400.0,200.0,15,80000.00,3.2,'2025-07-01','Full building envelope retrofit','2023-07-01','2023-07-02','Platinum',8,'Smart');

-- Table: student_mental_health_service_usage
CREATE TABLE student_mental_health_service_usage
(
    RecordID                 INTEGER NOT NULL PRIMARY KEY,
    CDSCode                  TEXT    NOT NULL,
    StudentID                TEXT    NOT NULL,
    ServiceDate              DATE    NOT NULL,
    ProviderName             TEXT    NULL,
    ServiceType              TEXT    NULL,
    DurationMinutes          INTEGER NULL,
    Outcome                  TEXT    NULL,
    FollowUpRequired         INTEGER NULL,
    FollowUpDate             DATE    NULL,
    ReferralSource           TEXT    NULL,
    Notes                    TEXT    NULL,
    CreatedAt                DATE    NOT NULL,
    UpdatedAt                DATE    NOT NULL,
    SessionMode              TEXT    NULL,
    ConfidentialityFlag      INTEGER NULL,
    BillingCode              TEXT    NULL,
    InsuranceCoveredFlag     INTEGER NULL,
    Location                 TEXT    NULL,
    SessionScore             INTEGER NULL
);

INSERT INTO student_mental_health_service_usage VALUES
(1,'123456','S001','2023-02-15','Wellness Center','Counseling',45,'Improved coping',0,NULL,'Teacher','First session','2023-02-15','2023-02-15','InPerson',1,'MH001',1,'Room 101',80);

INSERT INTO student_mental_health_service_usage VALUES
(2,'234567','S002','2023-03-10','Wellness Center','GroupTherapy',60,'Increased peer support',1,'2023-04-10','Parent','Second session','2023-03-10','2023-03-10','Virtual',1,'MH002',0,'Online',75);

INSERT INTO student_mental_health_service_usage VALUES
(3,'345678','S003','2023-01-20','Community Clinic','Crisis Intervention',30,'Stabilized',0,NULL,'Self','Immediate assistance','2023-01-20','2023-01-20','InPerson',1,'MH003',1,'Room 202',90);

-- Table: school_arts_program_funding
CREATE TABLE school_arts_program_funding
(
    FundingID                INTEGER NOT NULL PRIMARY KEY,
    CDSCode                  TEXT    NOT NULL,
    FiscalYear               TEXT    NOT NULL,
    ProgramName              TEXT    NOT NULL,
    TotalBudget              REAL    NOT NULL,
    AmountSpent              REAL    NULL,
    FundingSource            TEXT    NULL,
    GrantNumber              TEXT    NULL,
    SponsorName              TEXT    NULL,
    EligibilityCriteria      TEXT    NULL,
    ApplicationDeadline      DATE    NULL,
    AwardDate                DATE    NULL,
    RenewalFlag              INTEGER NULL,
    PerformanceMetrics       TEXT    NULL,
    NumberOfEvents           INTEGER NULL,
    ParticipantCount         INTEGER NULL,
    AudienceReach            INTEGER NULL,
    MediaCoverageCount       INTEGER NULL,
    Notes                    TEXT    NULL,
    CreatedAt                DATE    NOT NULL,
    UpdatedAt                DATE    NOT NULL
);

INSERT INTO school_arts_program_funding VALUES
(1,'123456','2023','Visual Arts Initiative',60000.00,25000.00,'State Arts Council','ART-2023-01','Creative Minds Foundation','Public Schools', '2022-12-01','2023-01-15',0,'Exhibition attendance',5,300,2000,12,'First year funding','2023-01-15','2023-04-01');

INSERT INTO school_arts_program_funding VALUES
(2,'234567','2022','Music Ensemble Support',80000.00,50000.00,'Federal Music Grant','MUS-2022-07','Harmony Partners','K-12 Music Programs','2022-06-01','2022-07-10',1,'Concert ticket sales',8,500,3500,20,'Renewed for second year','2022-07-10','2023-01-01');

INSERT INTO school_arts_program_funding VALUES
(3,'345678','2021','Drama Production',45000.00,40000.00,'Local Arts Trust','DRM-2021-03','Stagecraft Inc','School Drama Clubs','2021-02-15','2021-03-20',0,'Performance reviews',3,150,1200,5,'Successful production','2021-03-20','2022-01-01');

-- Table: district_transportation_fleet_maintenance_log
CREATE TABLE district_transportation_fleet_maintenance_log
(
    LogID                    INTEGER NOT NULL PRIMARY KEY,
    VehicleID                TEXT    NOT NULL,
    FleetNumber              TEXT    NOT NULL,
    ServiceDate              DATE    NOT NULL,
    Odometer                 INTEGER NOT NULL,
    ServiceType              TEXT    NULL,
    ServiceProvider          TEXT    NULL,
    CostUSD                  REAL    NULL,
    PartsReplaced            TEXT    NULL,
    NextServiceDue           DATE    NULL,
    TechnicianName           TEXT    NULL,
    ServiceDurationHours     REAL    NULL,
    FuelLevelAfterService    INTEGER NULL,
    TirePressure             TEXT    NULL,
    EmissionTestResult       TEXT    NULL,
    Notes                    TEXT    NULL,
    CreatedAt                DATE    NOT NULL,
    UpdatedAt                DATE    NOT NULL,
    VehicleMake              TEXT    NULL,
    VehicleModel             TEXT    NULL,
    VIN                      TEXT    NULL
);

INSERT INTO district_transportation_fleet_maintenance_log VALUES
(1,'V1001','F-01','2023-03-10',45200,'Oil Change','AutoCare Ltd',150.00,'Oil Filter',2023-09-10,'Mike Turner',1.5,95,'32psi','Pass','Regular maintenance','2023-03-10','2023-03-10','Ford','Transit','1FTSW21R1YEA12345');

INSERT INTO district_transportation_fleet_maintenance_log VALUES
(2,'V2002','F-02','2023-05-22',123000,'Brake Replacement','BrakeMasters',1200.00,'Brake Pads, Rotors',2024-05-22,'Sara Lee',4.0,90,'30psi','Pass','Replaced front brakes','2023-05-22','2023-05-22','Chevrolet','Express','1GCVKREC2TZ123456');

INSERT INTO district_transportation_fleet_maintenance_log VALUES
(3,'V3003','F-03','2023-01-15',78000,'Tire Rotation','TirePro',80.00,NULL,2023-07-15,'Tom Harris',0.5,93,'35psi','Pass','Rotated all four tires','2023-01-15','2023-01-15','Mercedes','Sprinter','WD3PE8CC3J5567890');

-- Table: library_digital_media_usage_stats
CREATE TABLE library_digital_media_usage_stats
(
    StatID                   INTEGER NOT NULL PRIMARY KEY,
    LibraryID                TEXT    NOT NULL,
    MediaType                TEXT    NOT NULL,
    Title                    TEXT    NOT NULL,
    Author                   TEXT    NULL,
    Publisher                TEXT    NULL,
    AccessCount              INTEGER NULL,
    UniqueUsers              INTEGER NULL,
    AvgSessionDurationSec    INTEGER NULL,
    DownloadCount            INTEGER NULL,
    StreamCount              INTEGER NULL,
    LicenseExpirationDate    DATE    NULL,
    SubscriptionCostUSD      REAL    NULL,
    LastUpdate               DATE    NULL,
    Platform                 TEXT    NULL,
    DRMProtectedFlag        INTEGER NULL,
    ConcurrentUsersPeak      INTEGER NULL,
    Notes                    TEXT    NULL,
    CreatedAt                DATE    NOT NULL,
    UpdatedAt                DATE    NOT NULL
);

INSERT INTO library_digital_media_usage_stats VALUES
(1,'L001','eBook','The Great Adventure','John Author','Adventure Press',3500,1200,1800,2300,1200,'2024-12-31',2000.00,'2023-08-01','OverDrive',1,300,'High popularity among middle school','2023-08-01','2023-08-01');

INSERT INTO library_digital_media_usage_stats VALUES
(2,'L002','Audiobook','Science Explained','Emily Scientist','Knowledge Pub',2100,800,2400,0,2100,'2025-06-30',1500.00,'2023-07-15','Hoopla',1,180,'Used in science club sessions','2023-07-15','2023-07-15');

INSERT INTO library_digital_media_usage_stats VALUES
(3,'L001','Video','Art History Documentary','Various','Visual Media',1800,650,3000,0,1800,'2024-05-31',2500.00,'2023-09-10','Kanopy',0,220,'Featured in art curriculum','2023-09-10','2023-09-10');

-- Table: school_cybersecurity_incident_report
CREATE TABLE school_cybersecurity_incident_report
(
    IncidentID               INTEGER NOT NULL PRIMARY KEY,
    CDSCode                  TEXT    NOT NULL,
    IncidentDate             DATE    NOT NULL,
    DetectedBy               TEXT    NULL,
    IncidentType             TEXT    NULL,
    SeverityLevel            TEXT    NULL,
    SystemsAffected          TEXT    NULL,
    Description              TEXT    NULL,
    ContainmentDate          DATE    NULL,
    ResolutionDate           DATE    NULL,
    ImpactScore              INTEGER NULL,
    MitigationSteps          TEXT    NULL,
    FollowUpActions          TEXT    NULL,
    ReportedToState          INTEGER NULL,
    NotificationSentFlag     INTEGER NULL,
    LessonsLearned           TEXT    NULL,
    ComplianceStatus         TEXT    NULL,
    Notes                    TEXT    NULL,
    CreatedAt                DATE    NOT NULL,
    UpdatedAt                DATE    NOT NULL
);

INSERT INTO school_cybersecurity_incident_report VALUES
(1,'123456','2023-04-20','ITDept','Phishing','Medium','Email System','Multiple staff clicked malicious link','2023-04-20','2023-04-22',65,'Password resets, MFA enforcement','User training refresh','1','1','Improved email filtering','Compliant','Incident resolved with no data loss','2023-04-20','2023-04-22');

INSERT INTO school_cybersecurity_incident_report VALUES
(2,'234567','2023-06-05','Security Team','Ransomware','High','Student Records Server','Encryption of data, demand for payment','2023-06-06','2023-06-15',90,'Restore from backups, patch vulnerabilities','Full system audit','1','1','Incident response plan updated','NonCompliant','Payment not made, data restored from backups','2023-06-05','2023-06-15');

INSERT INTO school_cybersecurity_incident_report VALUES
(3,'345678','2023-01-12','Network Admin','DDoS','Low','School Website','Temporary outage due to traffic spike','2023-01-12','2023-01-12',30,'Traffic filtering, CDN activation','Monitor traffic patterns','0','0','Considered for future scaling','Compliant','Service restored within minutes','2023-01-12','2023-01-12');