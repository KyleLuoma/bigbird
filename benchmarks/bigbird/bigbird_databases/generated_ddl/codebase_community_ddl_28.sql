-- Records of hardware failures and associated diagnostics
CREATE TABLE hardware_failure_events
(
    EventId                INTEGER PRIMARY KEY,
    ServerId               TEXT,
    RackLocation           TEXT,
    FailureType            TEXT,
    DetectedAt             DATETIME,
    ResolvedAt             DATETIME,
    TechnicianId           TEXT,
    RootCause              TEXT,
    ImpactLevel            INTEGER,
    DowntimeMinutes        INTEGER,
    PowerSupplyStatus      TEXT,
    TemperatureCelsius     INTEGER,
    FanSpeedRPM            INTEGER,
    ErrorCode              INTEGER,
    FirmwareVersion        TEXT,
    OSVersion              TEXT,
    IncidentReportUrl      TEXT,
    RecoveryProcedure      TEXT,
    Notes                  TEXT,
    IsCritical             INTEGER
);
INSERT INTO hardware_failure_events VALUES (1,'SVR001','RACKA1','PowerLoss','2025-03-01 02:15:00','2025-03-01 03:45:00','TECH01','UPSFailure',5,90,'Failed','45',1200,101,'v2.3.4','Ubuntu20.04','http://reports/1','ReplaceUPS','N/A',1);
INSERT INTO hardware_failure_events VALUES (2,'SVR045','RACKB3','Overheating','2025-04-10 14:20:00','2025-04-10 15:05:00','TECH07','CoolingFanStuck',3,45,'OK','78',1800,202,'v2.5.1','CentOS7','http://reports/2','CleanFans','Temp spiked to 78C',0);
INSERT INTO hardware_failure_events VALUES (3,'SVR078','RACKC2','DiskFailure','2025-05-22 09:00:00','2025-05-22 10:30:00','TECH03','RAIDDegraded',4,90,'OK','40',1000,303,'v2.1.0','Debian10','http://reports/3','ReplaceDisk','RAID rebuild completed',1);

-- Legal case management records
CREATE TABLE legal_case_records
(
    CaseId                 INTEGER PRIMARY KEY,
    CaseNumber             TEXT,
    PlaintiffName          TEXT,
    DefendantName          TEXT,
    FilingDate             DATE,
    ClosingDate            DATE,
    Jurisdiction           TEXT,
    CaseType               TEXT,
    AssignedAttorneyId     TEXT,
    LeadCounselId          TEXT,
    Status                 TEXT,
    SettlementAmount       INTEGER,
    PenaltyAmount          INTEGER,
    ConfidentialityLevel   INTEGER,
    CourtRoom              TEXT,
    JudgeName              TEXT,
    AppealStatus           TEXT,
    DocumentCount          INTEGER,
    EvidenceFilePath       TEXT,
    Notes                  TEXT
);
INSERT INTO legal_case_records VALUES (1,'2025-001','AcmeCorp','GlobexInc','2025-01-15','2025-06-20','Federal','IPInfringement','ATT100','COU200','Closed',500000,0,2,'Room12','JudgeSmith','None',12,'/evidence/2025-001','Final settlement reached');
INSERT INTO legal_case_records VALUES (2,'2025-002','JohnDoe','XYZLLC','2025-02-10','2025-05-05','State','ContractBreach','ATT101','COU201','Closed',0,25000,1,'Room5','JudgeLee','Appealed',8,'/evidence/2025-002','Appeal filed by defendant');
INSERT INTO legal_case_records VALUES (3,'2025-003','BetaLtd','OmegaCo','2025-03-22','2025-08-30','Federal','PatentDispute','ATT102','COU202','Open',0,0,3,'Room9','JudgeBrown','Pending',15,'/evidence/2025-003','Discovery phase ongoing');

-- Supplier quality audit logs
CREATE TABLE supplier_quality_audits
(
    AuditId                INTEGER PRIMARY KEY,
    SupplierId             TEXT,
    AuditDate              DATE,
    AuditorId              TEXT,
    AuditScope             TEXT,
    ScoreOverall           INTEGER,
    ScoreDelivery          INTEGER,
    ScoreCompliance        INTEGER,
    ScoreDocumentation     INTEGER,
    FindingsCount          INTEGER,
    CriticalFindings       INTEGER,
    NonCriticalFindings    INTEGER,
    FollowUpRequired       INTEGER,
    FollowUpDueDate        DATE,
    CorrectiveActionPlan   TEXT,
    SiteVisitRequired      INTEGER,
    SiteVisitDate          DATE,
    Remarks                TEXT,
    ContractReferenceId    TEXT,
    ArchiveLocation        TEXT
);
INSERT INTO supplier_quality_audits VALUES (1,'SUP001','2025-01-05','AUD001','ComponentQuality',85,90,80,75,4,1,3,1,'2025-02-01','Revise QC procedures',0,NULL,'All issues addressed','CTR100','/archive/2025/01');
INSERT INTO supplier_quality_audits VALUES (2,'SUP045','2025-03-12','AUD002','Logistics',78,70,85,65,6,2,4,1,'2025-04-15','Improve packaging standards',1,'2025-03-20','Site visit scheduled','CTR115','/archive/2025/03');
INSERT INTO supplier_quality_audits VALUES (3,'SUP078','2025-04-25','AUD003','Documentation',92,95,90,93,2,0,2,0,NULL,'N/A','No actions needed',0,NULL,'Excellent performance','CTR130','/archive/2025/04');

-- Corporate policy document catalog
CREATE TABLE corporate_policy_documents
(
    DocumentId             INTEGER PRIMARY KEY,
    PolicyCode             TEXT,
    Title                  TEXT,
    Version                TEXT,
    EffectiveDate          DATE,
    ExpirationDate         DATE,
    OwnerDepartment        TEXT,
    ApprovalStatus         TEXT,
    ApprovedBy             TEXT,
    ReviewCycleMonths      INTEGER,
    LastReviewedDate       DATE,
    ConfidentialityLevel   INTEGER,
    DocumentFormat         TEXT,
    StoragePath            TEXT,
    Tags                   TEXT,
    Summary                TEXT,
    LegalReferenceId       TEXT,
    PublicationChannel     TEXT,
    IsActive               INTEGER,
    ArchiveStatus          TEXT
);
INSERT INTO corporate_policy_documents VALUES (1,'CP-001','Data Privacy Policy','v3.2','2024-01-01','2029-12-31','Legal','Approved','CFO','12','2024-12-01',2,'PDF','/policies/CP-001.pdf','privacy,gdpr','Guidelines for handling personal data','LR-100','Intranet',1,'Current');
INSERT INTO corporate_policy_documents VALUES (2,'CP-015','Remote Work Guidelines','v1.0','2023-06-15','2028-06-14','HR','Pending','CHRO','24','2023-06-10',1,'DOCX','/policies/CP-015.docx','remote,work','Procedures for remote employment','LR-115','Email',0,'Draft');
INSERT INTO corporate_policy_documents VALUES (3,'CP-042','Cybersecurity Incident Response','v2.5','2022-09-01','2027-08-31','IT','Approved','CISO','6','2024-02-15',3,'HTML','/policies/CP-042.html','security,incident','Steps to respond to cyber incidents','LR-130','Intranet',1,'Current');

-- Employee training session logs
CREATE TABLE employee_training_sessions
(
    SessionId              INTEGER PRIMARY KEY,
    CourseCode             TEXT,
    CourseName             TEXT,
    TrainerId              TEXT,
    TrainingDate           DATE,
    DurationMinutes        INTEGER,
    Location               TEXT,
    Mode                   TEXT,
    ParticipantCount       INTEGER,
    CompletedCount         INTEGER,
    PassRatePercentage     INTEGER,
    CertificationIssued    INTEGER,
    FeedbackScoreAverage   INTEGER,
    MaterialsProvided      TEXT,
    EquipmentRequired      TEXT,
    PreRequisiteCourseId   TEXT,
    DepartmentTargeted     TEXT,
    CostUsd                INTEGER,
    EvaluationReportPath   TEXT,
    Notes                  TEXT
);
INSERT INTO employee_training_sessions VALUES (1,'TRN-101','Advanced SQL','TRN001','2025-02-10',180,'RoomA','InPerson',25,24,96,1,85,'Slides,Exercises','Laptop','TRN-001','Engineering',1200,'/reports/TRN-101-2025.pdf','Well received');
INSERT INTO employee_training_sessions VALUES (2,'TRN-202','Effective Communication','TRN002','2025-03-05',120,'RoomB','Hybrid',30,30,100,0,90,'Handout','Projector','', 'All',800,'/reports/TRN-202-2025.pdf','High engagement');
INSERT INTO employee_training_sessions VALUES (3,'TRN-303','Data Privacy Basics','TRN003','2025-04-15',90,'Online','Virtual',40,38,95,1,80,'Video,Quiz','None','TRN-101','Legal',500,'/reports/TRN-303-2025.pdf','Questions on GDPR');

-- Intellectual property filing records
CREATE TABLE intellectual_property_filings
(
    FilingId               INTEGER PRIMARY KEY,
    PatentNumber           TEXT,
    Title                  TEXT,
    FilingDate             DATE,
    PublicationDate        DATE,
    Status                 TEXT,
    InventorIds            TEXT,
    AssigneeOrganization   TEXT,
    CountryCode            TEXT,
    ApplicationType        TEXT,
    ClaimsCount            INTEGER,
    PagesCount             INTEGER,
    PriorArtReferences     TEXT,
    FeeAmountUsd           INTEGER,
    ExaminerId             TEXT,
    OfficeActionDate       DATE,
    ResponseDueDate        DATE,
    LegalRepresentativeId  TEXT,
    MaintenanceFeeDueDate  DATE,
    Notes                  TEXT
);
INSERT INTO intellectual_property_filings VALUES (1,'US1234567','Method for Data Compression','2025-01-20','2025-07-15','Pending','INV001;INV002','AcmeCorp','US','Utility',12,8,'REF123;REF124',1500,'EX001','2025-09-01','2025-10-01','LR001','2027-01-01','Awaiting examiner review');
INSERT INTO intellectual_property_filings VALUES (2,'EP7654321','Improved Solar Panel Design','2025-02-10','2025-08-20','Granted','INV010','GlobexInc','EP','Utility',9,7,'REF200;REF201',2000,'EX050','2025-12-01','2026-01-01','LR010','2028-02-01','Granted without objections');
INSERT INTO intellectual_property_filings VALUES (3,'WO202500123','AI-Based Image Recognition','2025-03-05','2025-09-30','Pending','INV020;INV021;INV022','OmegaTech','WO','PCT',15,10,'REF300;REF301;REF302',2500,'EX075','2026-02-15','2026-03-15','LR020','2029-04-01','International filing pending');

-- Environmental compliance reporting
CREATE TABLE environmental_compliance_reports
(
    ReportId               INTEGER PRIMARY KEY,
    ReportPeriodStart      DATE,
    ReportPeriodEnd        DATE,
    FacilityId             TEXT,
    EmissionCO2Tonnes      REAL,
    EmissionCH4Tonnes      REAL,
    WasteGeneratedTonnes   REAL,
    WaterUsageCubicMeters  REAL,
    EnergyConsumptionMWh   REAL,
    ComplianceStatus       TEXT,
    InspectorId            TEXT,
    InspectionDate         DATE,
    FindingsCount          INTEGER,
    CriticalFindings       INTEGER,
    NonCriticalFindings    INTEGER,
    CorrectiveActionPlan   TEXT,
    FollowUpDate           DATE,
    RegulatoryAgency      TEXT,
    ReportFilePath         TEXT,
    Remarks                TEXT
);
INSERT INTO environmental_compliance_reports VALUES (1,'2024-01-01','2024-12-31','FAC001',125.5,3.2,45.0,12000.0,850.0,'Compliant','INSP01','2025-01-15',2,0,2,'Monitor waste segregation',NULL,'EPA','/env/reports/2024_FAC001.pdf','All targets met');
INSERT INTO environmental_compliance_reports VALUES (2,'2024-01-01','2024-12-31','FAC045','210.0','4.5','78.0','15000.0','1300.0','NonCompliant','INSP02','2025-02-20',5,2,3,'Upgrade filtration system', '2025-06-30','EPA','/env/reports/2024_FAC045.pdf','Excess CO2 emissions');
INSERT INTO environmental_compliance_reports VALUES (3,'2024-01-01','2024-12-31','FAC078','95.0','1.8','30.0','9000.0','600.0','Compliant','INSP03','2025-03-10',1,0,1,'Routine maintenance',NULL,'EPA','/env/reports/2024_FAC078.pdf','Minor water usage spike');

-- Data center power usage statistics
CREATE TABLE data_center_power_usage
(
    RecordId               INTEGER PRIMARY KEY,
    DataCenterId           TEXT,
    Timestamp               DATETIME,
    TotalPowerKw           REAL,
    ITLoadKw               REAL,
    CoolingPowerKw         REAL,
    UPSLoadKw              REAL,
    GridSupplyKw           REAL,
    RenewableSupplyKw      REAL,
    PowerFactor            REAL,
    VoltageLevel           REAL,
    FrequencyHz            REAL,
    TemperatureCelsius     REAL,
    HumidityPercent        REAL,
    AlarmStatus            TEXT,
    OperatorId             TEXT,
    Shift                  TEXT,
    Remarks                TEXT,
    EnergyCostUsd          REAL,
    CarbonEmissionKg       REAL
);
INSERT INTO data_center_power_usage VALUES (1,'DC001','2025-05-01 00:00:00',3500.5,1800.0,1300.0,200.0,3000.0,500.0,0.95,230.0,60.0,22.5,45.0,'Normal','OP001','Night','All systems stable',42000.0,2000.0);
INSERT INTO data_center_power_usage VALUES (2,'DC002','2025-05-01 00:00:00',4200.0,2100.0,1600.0,250.0,3500.0,600.0,0.93,235.0,60.0,23.0,48.0,'Alert: HighTemp','OP002','Night','Cooling units approaching limit',50400.0,2400.0);
INSERT INTO data_center_power_usage VALUES (3,'DC003','2025-05-01 00:00:00',3100.2,1500.5,1200.3,150.4,2700.0,400.2,0.96,228.0,60.0,21.8,42.0,'Normal','OP003','Night','Stable operation',37200.0,1800.0);

-- Customer churn analysis snapshots
CREATE TABLE customer_churn_analysis
(
    SnapshotId             INTEGER PRIMARY KEY,
    AnalysisDate           DATE,
    TotalCustomers         INTEGER,
    ChurnedCustomers       INTEGER,
    ChurnRatePercent       REAL,
    AvgSubscriptionMonths  REAL,
    NetRevenueLossUsd      INTEGER,
    AtRiskCustomers        INTEGER,
    HighRiskCount          INTEGER,
    MediumRiskCount        INTEGER,
    LowRiskCount           INTEGER,
    PrimaryReason          TEXT,
    SegmentWithHighestChurn TEXT,
    InterventionSuggested  TEXT,
    ModelVersion           TEXT,
    DataSource             TEXT,
    AnalystId              TEXT,
    Comments               TEXT,
    FollowUpDate           DATE,
    Status                 TEXT
);
INSERT INTO customer_churn_analysis VALUES (1,'2025-04-30',12500,750,6.0,14.2,375000,'1200',200,500,500,'Pricing','SMB','Offer discounted renewal',v1.2,'CRM','AN001','Review pricing strategy','2025-05-15','Open');
INSERT INTO customer_churn_analysis VALUES (2,'2025-03-31',13000,620,4.8,16.5,298000,'950',150,400,400,'SupportQuality','Enterprise','Increase support staff',v1.2,'CRM','AN002','Improve SLA compliance','2025-04-20','Closed');
INSERT INTO customer_churn_analysis VALUES (3,'2025-02-28',12800,680,5.3,13.8,354000,'1100',180,460,460,'Feature Gaps','Education','Accelerate feature rollout',v1.2,'CRM','AN003','Prioritize roadmap items','2025-03-15','Open');

-- API deprecation scheduling
CREATE TABLE api_deprecation_schedule
(
    DeprecationId          INTEGER PRIMARY KEY,
    ApiEndpointId          TEXT,
    EndpointName           TEXT,
    Version                TEXT,
    DeprecationStartDate   DATE,
    DeprecationEndDate     DATE,
    ReplacementEndpointId  TEXT,
    ReplacementVersion     TEXT,
    NoticePeriodDays       INTEGER,
    AffectedClientsCount   INTEGER,
    CommunicationSent      INTEGER,
    DocumentationUrl       TEXT,
    MigrationGuidanceUrl   TEXT,
    OwnerTeam              TEXT,
    RiskLevel              TEXT,
    Status                 TEXT,
    LastUpdated            DATE,
    Comments               TEXT,
    IsCritical             INTEGER,
    AuditLogId             INTEGER
);
INSERT INTO api_deprecation_schedule VALUES (1,'API001','/v1/users','1.0','2025-06-01','2025-12-01','API101','/v2/users','2.0','2000',1,'/docs/api001','/guides/migrate_user','BackendTeam','Medium','Scheduled','2025-01-15','Notify clients early','0',1001);
INSERT INTO api_deprecation_schedule VALUES (2,'API002','/v1/payments','1.3','2025-07-15','2026-01-15','API102','/v2/payments','2.1','3500',0,'/docs/api002','/guides/migrate_payment','PaymentsTeam','High','Planned','2025-02-10','Requires extensive testing','1',1002);
INSERT INTO api_deprecation_schedule VALUES (3,'API003','/v1/search','1.5','2025-08-01','2025-11-01','API103','/v2/search','2.0','1500',1,'/docs/api003','/guides/migrate_search','SearchTeam','Low','Scheduled','2025-03-05','Low impact on clients','0',1003);