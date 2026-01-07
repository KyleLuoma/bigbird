-- Medical research grant information
CREATE TABLE MedicalResearchGrant
(
    GrantID                     INTEGER          NOT NULL,
    GrantName                   TEXT,
    FundingAgency               TEXT,
    StartDate                   DATE,
    EndDate                     DATE,
    Amount                      REAL,
    Currency                    TEXT,
    PrincipalInvestigatorID    INTEGER,
    PIName                      TEXT,
    Department                  TEXT,
    GrantStatus                 TEXT,
    ReviewScore                 INTEGER,
    AwardNumber                 TEXT,
    FundingType                 TEXT,
    SponsorContact              TEXT,
    ComplianceLevel             TEXT,
    ReportingFrequency          TEXT,
    LastReportDate              DATE,
    GrantDescription            TEXT,
    RelatedProjectID            INTEGER,
    IsRenewable                 INTEGER,
    Notes                       TEXT,
    PRIMARY KEY (GrantID)
);

INSERT INTO MedicalResearchGrant VALUES (1,'Cardio Study','NationalHealthFund','2022-01-15','2025-01-14',250000.00,'USD',101,'Dr Smith','Cardiology','Active',85,'NHF-2022-001','Federal','contact@nhf.org','High','Quarterly','2023-07-01','Investigation of arterial plaque','NULL',1,'Initial award');
INSERT INTO MedicalResearchGrant VALUES (2,'Neuro Imaging','BrainScienceCouncil','2021-06-01','2024-05-31',180000.00,'USD',102,'Dr Lee','Neurology','Completed',90,'BSC-2021-045','Grant','info@bsc.org','Medium','Annually','2024-04-15','Functional MRI analysis','NULL',0,'Study concluded');
INSERT INTO MedicalResearchGrant VALUES (3,'Oncology Biomarkers','CancerResearchOrg','2023-03-01','2026-02-28',300000.00,'USD',103,'Dr Patel','Oncology','Pending',NULL,'CRO-2023-010','Private','support@cro.org','Low','Biannual','NULL','Biomarker discovery program','NULL',1,'Awaiting approval');

-- Patient outcome metric definitions
CREATE TABLE PatientOutcomeMetric
(
    MetricID            INTEGER    NOT NULL,
    MetricName          TEXT,
    Description         TEXT,
    Unit                TEXT,
    CalculationMethod   TEXT,
    TargetValue         REAL,
    BaselineValue       REAL,
    Frequency           TEXT,
    DataSource          TEXT,
    ValidFromDate       DATE,
    ValidToDate         DATE,
    Category            TEXT,
    Department          TEXT,
    IsClinical          INTEGER,
    IsResearch          INTEGER,
    OwnerContact        TEXT,
    ReviewCycle         TEXT,
    LastReviewedDate    DATE,
    Status              TEXT,
    Comments            TEXT,
    CreatedBy           TEXT,
    CreatedDate         DATE,
    PRIMARY KEY (MetricID)
);

INSERT INTO PatientOutcomeMetric VALUES (101,'30DayReadmission','Readmission within 30 days','percent','(Readmissions/Discharges)*100',5.0,7.5,'Monthly','EHR','2022-01-01','NULL','Readmission','General Medicine',1,0,'medadmin@hospital.org','Annual','2023-06-01','Active','Monitor trends','system','2022-01-01');
INSERT INTO PatientOutcomeMetric VALUES (102,'AvgLengthStay','Average length of stay per admission','days','TotalDays/Discharges',4.2,5.1,'Quarterly','AdmissionSystem','2021-07-01','NULL','Utilization','Surgery',1,0,'opslead@hospital.org','SemiAnnual','2023-03-15','Active','Improvement needed','admin','2021-07-01');
INSERT INTO PatientOutcomeMetric VALUES (103,'PatientSatisfactionScore','Overall satisfaction score','scale 1-10','SurveyAverage',8.5,7.9,'Monthly','SurveyTool','2020-01-01','NULL','Quality','All Departments',1,0,'quality@hospital.org','Annual','2023-01-10','Active','Target to increase','mgr','2020-01-01');

-- Clinical decision support model metadata
CREATE TABLE ClinicalDecisionSupportModel
(
    ModelID                 INTEGER    NOT NULL,
    ModelName               TEXT,
    Version                 TEXT,
    DevelopedBy             TEXT,
    DevelopmentDate         DATE,
    ClinicalArea            TEXT,
    InputFeaturesCount      INTEGER,
    OutputTypes             TEXT,
    AlgorithmType           TEXT,
    TrainingDatasetSize     INTEGER,
    ValidationMetric        TEXT,
    ValidationScore         REAL,
    DeploymentStatus        TEXT,
    DeploymentDate          DATE,
    LastUpdateDate          DATE,
    OwnerContact            TEXT,
    RiskLevel               TEXT,
    RegulatoryApproval      TEXT,
    ApprovalDate            DATE,
    DocumentationLink       TEXT,
    MaintenanceSchedule     TEXT,
    Notes                   TEXT,
    PRIMARY KEY (ModelID)
);

INSERT INTO ClinicalDecisionSupportModel VALUES (5001,'SepsisAlert','v1.0','DataScienceTeam','2022-05-10','Critical Care',25,'Alert','RandomForest',15000,'AUROC',0.93,'Deployed','2022-08-01','2023-02-01','cdsadmin@hospital.org','High','Approved','2022-07-15','http://example.com/docs/sepsis','Quarterly','Model performs well','Initial release');
INSERT INTO ClinicalDecisionSupportModel VALUES (5002,'FallRiskPredictor','v2.1','ClinicalAnalytics','2021-11-20','Geriatrics',15,'RiskScore','LogisticRegression',8000,'AUC',0.87,'Deployed','2022-01-15','2023-03-10','cdsadmin@hospital.org','Medium','Pending','NULL','http://example.com/docs/fallrisk','SemiAnnual','Awaiting final approval','Updated with new data');
INSERT INTO ClinicalDecisionSupportModel VALUES (5003,'ReadmissionPredictor','v0.9','AIGroup','2023-02-05','Discharge Planning',30,'Probability','NeuralNetwork',12000,'F1',0.78,'Testing','NULL','NULL','cdsadmin@hospital.org','Low','Pending','NULL','http://example.com/docs/readmit','Monthly','In pilot phase','First version');

-- Hospital construction permit records
CREATE TABLE HospitalConstructionPermit
(
    PermitID                INTEGER    NOT NULL,
    PermitNumber            TEXT,
    ProjectName             TEXT,
    IssuingAuthority        TEXT,
    IssueDate               DATE,
    ExpirationDate          DATE,
    PermitStatus            TEXT,
    ProjectStartDate        DATE,
    ProjectEndDate          DATE,
    ContractorCompany       TEXT,
    ContractorContact       TEXT,
    EstimatedCost           REAL,
    Currency                TEXT,
    ScopeDescription        TEXT,
    ZoningCompliance        TEXT,
    EnvironmentalReview     TEXT,
    SafetyPlanSubmitted     INTEGER,
    SafetyPlanApprovalDate  DATE,
    InspectionSchedule      TEXT,
    LastInspectionDate      DATE,
    InspectionOutcome       TEXT,
    Notes                   TEXT,
    CreatedBy               TEXT,
    CreatedDate             DATE,
    PRIMARY KEY (PermitID)
);

INSERT INTO HospitalConstructionPermit VALUES (20001,'HC-2022-001','East Wing Expansion','CityBuildingDept','2022-03-01','2025-03-01','Active','2022-04-15','2024-12-31','BuildCorp','contact@buildcorp.com',5000000.00,'USD','Add 30 beds and ICU','Compliant','Approved','1','2022-04-20','Quarterly','2023-01-15','Pass','No issues','planner','2022-02-28');
INSERT INTO HospitalConstructionPermit VALUES (20002,'HC-2021-045','Parking Structure Renovation','CountyPlanningOffice','2021-06-10','2024-06-10','Completed','2021-07-01','2023-11-30','ConstructIt','info@constructit.com',2500000.00,'USD','Expand parking capacity to 200 spaces','Compliant','Approved','1','2021-07-05','BiAnnual','2023-10-20','Pass','Project completed on time','engineer','2021-05-30');
INSERT INTO HospitalConstructionPermit VALUES (20003,'HC-2023-012','New Laboratory Wing','StateHealthAgency','2023-01-15','2026-01-15','Pending','NULL','NULL','FutureBuild','sales@futurebuild.com',7500000.00,'USD','State‑of‑the‑art research labs','Pending','Pending','0','NULL','Monthly','NULL','Pending','Awaiting final review','projectlead','2023-01-10');

-- BioSpecimen tracking for research biobank
CREATE TABLE BioSpecimenTracking
(
    SpecimenID          INTEGER    NOT NULL,
    AccessionNumber     TEXT,
    CollectionDate      DATE,
    CollectionTime      TEXT,
    SpecimenType        TEXT,
    TissueSource        TEXT,
    VolumeML            REAL,
    ConcentrationNGML   REAL,
    StorageLocation     TEXT,
    StorageTemperature  REAL,
    FreezeThawCycles    INTEGER,
    ConsentGiven        INTEGER,
    DonorID             INTEGER,
    DonorAge            INTEGER,
    DonorSex            TEXT,
    ProcessingLab       TEXT,
    ProcessedBy         TEXT,
    QualityMetricScore  REAL,
    QCStatus            TEXT,
    LastAccessedDate    DATE,
    CurrentStatus       TEXT,
    Remarks             TEXT,
    CreatedBy           TEXT,
    CreatedDate         DATE,
    PRIMARY KEY (SpecimenID)
);

INSERT INTO BioSpecimenTracking VALUES (9001,'BS-20230101-01','2023-01-01','09:30','Blood','Peripheral',5.0,200.0,'FreezerA1',-80,1,1,3001,45,'Male','LabA','TechJohn',0.95,'Pass','2023-07-10','InUse','No issues','labtech','2023-01-02');
INSERT INTO BioSpecimenTracking VALUES (9002,'BS-20230215-07','2023-02-15','14:20','Tissue','Liver',2.0,150.0,'FreezerB3',-80,0,1,3002,60,'Female','LabB','TechAnna',0.88,'Pass','2023-08-05','InUse','Reviewed for RNA','labtech','2023-02-16');
INSERT INTO BioSpecimenTracking VALUES (9003,'BS-20230322-03','2023-03-22','11:00','Urine','Midstream',10.0,0.0,'FreezerC2',-20,2,0,3003,30,'Male','LabC','TechMike',0.70,'Fail','2023-09-01','Quarantined','Low volume','labtech','2023-03-23');

-- Emergency response protocol catalog
CREATE TABLE EmergencyResponseProtocol
(
    ProtocolID                INTEGER    NOT NULL,
    ProtocolName              TEXT,
    Category                  TEXT,
    ActivationCriteria        TEXT,
    PrimaryResponderTeam      TEXT,
    SecondaryResponderTeam    TEXT,
    EstimatedResponseTimeMin  INTEGER,
    CommunicationChannel      TEXT,
    NotificationMethod        TEXT,
    RequiredEquipment         TEXT,
    TrainingFrequencyMonths   INTEGER,
    LastTrainingDate          DATE,
    ReviewDate                DATE,
    ApprovedBy                TEXT,
    ApprovalDate              DATE,
    Status                    TEXT,
    Version                   TEXT,
    DocumentationLink         TEXT,
    RiskLevel                 TEXT,
    CostEstimateUSD           REAL,
    FundingSource             TEXT,
    Notes                     TEXT,
    CreatedBy                 TEXT,
    CreatedDate               DATE,
    PRIMARY KEY (ProtocolID)
);

INSERT INTO EmergencyResponseProtocol VALUES (4001,'Fire Evacuation','Safety','Fire alarm triggered','FireTeamA','SupportTeamB',5,'Radio','Pager','Extinguishers,ExitSigns',12,'2023-04-01','2024-01-01','SafetyOfficer','2023-03-15','Active','v1.0','http://example.com/protocols/fire','High',1500.00,'HospitalBudget','Reviewed quarterly','admin','2023-03-10');
INSERT INTO EmergencyResponseProtocol VALUES (4002,'Mass Casualty Incident','Disaster','Multiple trauma alerts','TraumaTeam','LogisticsTeam',10,'Phone','SMS','Ambulances,Stretcher','6','2023-05-10','2024-02-01','ChiefMedicalOfficer','2023-04-20','Active','v2.1','http://example.com/protocols/mci','Critical',50000.00,'StateGrant','Joint drill scheduled','admin','2023-04-15');
INSERT INTO EmergencyResponseProtocol VALUES (4003,'Pandemic Outbreak','InfectionControl','Confirmed case >5','InfectionControlTeam','PublicHealthTeam',30,'SecureEmail','Email','PPE,IsolationRooms','24','2023-03-15','2024-03-01','InfectionControlDirector','2023-02-28','Active','v3.0','http://example.com/protocols/pandemic','Medium',20000.00,'FederalFunding','Plan under review','admin','2023-03-01');

-- Health analytics dashboard definitions
CREATE TABLE HealthAnalyticsDashboard
(
    DashboardID            INTEGER    NOT NULL,
    DashboardName          TEXT,
    OwnerDepartment        TEXT,
    DataRefreshIntervalMin INTEGER,
    PrimaryDataSource      TEXT,
    SecondaryDataSource    TEXT,
    VisualizationType      TEXT,
    AccessLevel            TEXT,
    LastUpdatedDate        DATE,
    CreatedDate            DATE,
    Description            TEXT,
    KPIList                TEXT,
    ChartCount             INTEGER,
    TileLayout             TEXT,
    FiltersAvailable       TEXT,
    ExportOptions          TEXT,
    UserGuideLink          TEXT,
    MaintenanceContact     TEXT,
    Status                 TEXT,
    Version                TEXT,
    SecurityReviewDate     DATE,
    Notes                  TEXT,
    CreatedBy              TEXT,
    PRIMARY KEY (DashboardID)
);

INSERT INTO HealthAnalyticsDashboard VALUES (8001,'Readmission Overview','Quality','60','EHR','Finance','BarChart','Restricted','2023-07-15','2023-07-01','Shows readmission rates by department','ReadmissionRate,Dept','5','Grid','DateRange,Dept','PDF,CSV','http://example.com/dashboards/readmission','analytics@hospital.org','Active','v1.2','2023-06-30','No issues','dataengineer');
INSERT INTO HealthAnalyticsDashboard VALUES (8002,'Infection Surveillance','InfectionControl','30','LabSystem','EHR','HeatMap','Open','2023-07-14','2023-07-01','Displays infection hotspots across wards','InfectionCount,Ward','6','Matrix','Date,Pathogen','PDF,Excel','http://example.com/dashboards/infection','infocontrol@hospital.org','Active','v2.0','2023-07-01','Updated weekly','dataengineer');
INSERT INTO HealthAnalyticsDashboard VALUES (8003,'Resource Utilization','Operations','15','BedManagement','Finance','LineChart','Restricted','2023-07-13','2023-07-01','Tracks bed occupancy and staff allocation','BedOccupancy,StaffHours','4','Timeline','Date,Facility','PDF','http://example.com/dashboards/utilization','ops@hospital.org','Active','v1.0','2023-06-20','Initial release','dataengineer');

-- Telehealth session summary records
CREATE TABLE TelehealthSessionSummary
(
    SessionID               INTEGER    NOT NULL,
    PatientID               INTEGER,
    ProviderID              INTEGER,
    SessionDate             DATE,
    StartTime               TEXT,
    EndTime                 TEXT,
    Modality                TEXT,
    Platform                TEXT,
    ConnectionQuality       TEXT,
    AudioIssues             INTEGER,
    VideoIssues             INTEGER,
    DurationMinutes         INTEGER,
    DiagnosisCode           TEXT,
    PrescriptionGiven       INTEGER,
    FollowUpRequired        INTEGER,
    FollowUpDate            DATE,
    Notes                   TEXT,
    BillingCode             TEXT,
    ReimbursementAmountUSD  REAL,
    ReimbursementStatus     TEXT,
    CreatedBy               TEXT,
    CreatedDate             DATE,
    PRIMARY KEY (SessionID)
);

INSERT INTO TelehealthSessionSummary VALUES (6001,3001,101,'2023-07-10','09:00','09:30','Video','Zoom','Good',0,0,30,'J02.9',1,0,'NULL','Consult','150.00','Approved','admin','2023-07-11');
INSERT INTO TelehealthSessionSummary VALUES (6002,3002,102,'2023-07-12','14:15','14:45','Audio','Phone','Fair',1,0,30,'I10',0,1,'2023-07-20','Follow up call needed','Consult','120.00','Pending','admin','2023-07-13');
INSERT INTO TelehealthSessionSummary VALUES (6003,3003,103,'2023-07-14','11:00','11:20','Video','Teams','Poor',0,1,20,'E11.9',1,1,'2023-07-22','Patient reported connectivity issues','Consult','100.00','Denied','admin','2023-07-15');

-- Physician credentialing records
CREATE TABLE PhysicianCredentialing
(
    CredentialID            INTEGER    NOT NULL,
    PhysicianID             INTEGER,
    FirstName               TEXT,
    LastName                TEXT,
    Specialty               TEXT,
    LicenseNumber           TEXT,
    LicenseState            TEXT,
    LicenseExpirationDate   DATE,
    BoardCertification      TEXT,
    BoardCertificationDate  DATE,
    CMEHoursLastYear        INTEGER,
    PrimaryHospitalAffiliation TEXT,
    SecondaryHospitalAffiliation TEXT,
    CredentialStatus        TEXT,
    ReviewDate              DATE,
    Reviewer                TEXT,
    CredentialingAgency     TEXT,
    CredentialingAgencyContact TEXT,
    Notes                   TEXT,
    CreatedBy               TEXT,
    CreatedDate             DATE,
    PRIMARY KEY (CredentialID)
);

INSERT INTO PhysicianCredentialing VALUES (7001,101,'John','Doe','Cardiology','LIC12345','CA','2025-06-30','ABIM','2020-04-15',45,'GeneralHospital','HeartCenter','Active','2023-06-01','dradmin','MedicalBoard','contact@medboard.org','No issues','admin','2023-05-01');
INSERT INTO PhysicianCredentialing VALUES (7002,102,'Emily','Smith','Neurology','LIC54321','NY','2024-12-31','ABPN','2019-09-20',38,'NeuroHospital','NULL','Active','2023-05-15','dradmin','MedicalBoard','contact@medboard.org','Pending CME','admin','2023-04-20');
INSERT INTO PhysicianCredentialing VALUES (7003,103,'Michael','Lee','Oncology','LIC98765','TX','2023-11-15','ABP','2018-03-10',30,'CancerCenter','GeneralHospital','Expired','2022-12-01','dradmin','MedicalBoard','contact@medboard.org','License renewal pending','admin','2022-11-01');

-- Pharmacy regulatory compliance logs
CREATE TABLE PharmacyRegulatoryCompliance
(
    ComplianceID           INTEGER    NOT NULL,
    PharmacyID             INTEGER,
    InspectionDate         DATE,
    InspectorName          TEXT,
    InspectionType         TEXT,
    FindingsCount          INTEGER,
    CriticalFindings       INTEGER,
    NonCriticalFindings    INTEGER,
    CorrectiveActionTaken  TEXT,
    FollowUpDate           DATE,
    Status                 TEXT,
    Notes                  TEXT,
    RegulatoryBody         TEXT,
    RegulationReference    TEXT,
    ComplianceScore        REAL,
    PenaltyAmountUSD       REAL,
    PenaltyStatus          TEXT,
    DocumentLink           TEXT,
    ReviewedBy             TEXT,
    ReviewDate             DATE,
    CreatedBy              TEXT,
    CreatedDate            DATE,
    PRIMARY KEY (ComplianceID)
);

INSERT INTO PharmacyRegulatoryCompliance VALUES (9001,201,'2023-03-15','InspectorA','Routine','5','1','4','Corrected temperature logs','2023-04-15','Closed','All issues resolved','StatePharmacyBoard','Rule12.3',95.0,0.00,'None','http://example.com/compliance/9001','pharmacyadmin','2023-04-20','admin','2023-03-16');
INSERT INTO PharmacyRegulatoryCompliance VALUES (9002,202,'2023-06-10','InspectorB','Surprise','3','0','3','Improved labeling','2023-07-10','Open','Pending staff training','StatePharmacyBoard','Rule8.1',88.5,2000.00,'Outstanding','http://example.com/compliance/9002','pharmacyadmin','2023-06-15','admin','2023-06-11');
INSERT INTO PharmacyRegulatoryCompliance VALUES (9003,203,'2022-11-05','InspectorC','Annual','7','2','5','Completed equipment calibration','2022-12-05','Closed','Follow‑up audit scheduled','StatePharmacyBoard','Rule5.4',92.0,0.00,'None','http://example.com/compliance/9003','pharmacyadmin','2022-11-10','admin','2022-11-06');

-- Telehealth device inventory
CREATE TABLE TelehealthDeviceInventory
(
    DeviceID               INTEGER    NOT NULL,
    DeviceSerialNumber     TEXT,
    DeviceType             TEXT,
    Manufacturer           TEXT,
    ModelNumber            TEXT,
    PurchaseDate           DATE,
    WarrantyExpirationDate DATE,
    AssignedDepartment     TEXT,
    AssignedLocation       TEXT,
    FirmwareVersion        TEXT,
    SoftwareVersion        TEXT,
    LastMaintenanceDate    DATE,
    MaintenanceProvider    TEXT,
    Status                 TEXT,
    PowerSource            TEXT,
    ConnectivityMethod     TEXT,
    CalibrationDate        DATE,
    CalibrationDueDate     DATE,
    Notes                  TEXT,
    CreatedBy              TEXT,
    CreatedDate            DATE,
    PRIMARY KEY (DeviceID)
);

INSERT INTO TelehealthDeviceInventory VALUES (11001,'SN-TH-001','Tablet','TechMakers','TM-Tab10','2022-02-01','2025-02-01','Telehealth','Room101','v1.2','s1.0','2023-06-01','TechService','Active','Battery','WiFi','2023-01-15','2024-01-15','No issues','admin','2022-02-02');
INSERT INTO TelehealthDeviceInventory VALUES (11002,'SN-TH-002','Webcam','VisionCorp','VC-720p','2021-08-15','2024-08-15','Telehealth','Room202','v1.0','s0.9','2023-05-20','TechService','Active','USB','Ethernet','2023-02-10','2024-02-10','Lens cleaned','admin','2021-08-16');
INSERT INTO TelehealthDeviceInventory VALUES (11003,'SN-TH-003','Headset','AudioTech','AT-HS5','2023-01-10','2026-01-10','Telehealth','Room303','v2.0','s2.1','2023-07-05','TechService','Active','Battery','Bluetooth','2023-03-01','2024-03-01','Battery replaced','admin','2023-01-11');

-- Research biobank sample metadata
CREATE TABLE ResearchBiobankSample
(
    SampleID               INTEGER    NOT NULL,
    BiobankID              INTEGER,
    SampleCode             TEXT,
    CollectionDate         DATE,
    SampleType             TEXT,
    VolumeML               REAL,
    ConcentrationNGML      REAL,
    PreservationMethod     TEXT,
    StorageLocation        TEXT,
    StorageTemperatureC    REAL,
    AliquotCount           INTEGER,
    ConsentVersion         TEXT,
    DonorID                INTEGER,
    DonorConsentDate       DATE,
    StudyIdentifier        TEXT,
    ProcessingLab          TEXT,
    ProcessedBy            TEXT,
    QCStatus               TEXT,
    QCScore                REAL,
    ReleaseStatus          TEXT,
    ReleaseDate            DATE,
    Notes                  TEXT,
    CreatedBy              TEXT,
    CreatedDate            DATE,
    PRIMARY KEY (SampleID)
);

INSERT INTO ResearchBiobankSample VALUES (20001,1,'RB-2023-001','2023-02-15','Plasma',1.5,250.0,'Cryopreserved','FreezerA1',-80,3,'v1','3005','2023-02-16','StudyA','LabX','TechAnna','Pass',0.97,'Pending','NULL','Sample awaiting QC','admin','2023-02-17');
INSERT INTO ResearchBiobankSample VALUES (20002,1,'RB-2023-002','2023-03-10','Tissue','5.0','NULL','Formalin','FreezerB3',-20,1,'v2','3006','2023-03-11','StudyB','LabY','TechJohn','Pass',0.89,'Released','2023-04-01','Distributed to collaborator','admin','2023-03-12');
INSERT INTO ResearchBiobankSample VALUES (20003,2,'RB-2023-003','2023-04-05','Urine',10.0,0.0,'Frozen','FreezerC2',-80,2,'v1','3007','2023-04-06','StudyC','LabZ','TechMike','Fail',0.45,'Rejected','NULL','Insufficient volume','admin','2023-04-07');