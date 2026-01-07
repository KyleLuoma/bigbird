-- Examination equipment usage log
CREATE TABLE ExaminationEquipmentLog
(
    LogID               INTEGER PRIMARY KEY,
    ExaminationID       INTEGER NOT NULL,
    EquipmentID         INTEGER NOT NULL,
    SerialNumber        TEXT,
    CalibrationDate     DATE,
    OperatorID          INTEGER,
    UsageDurationMin   INTEGER,
    SettingsJSON        TEXT,
    MaintenanceStatus   TEXT,
    Location            TEXT,
    TemperatureC       REAL,
    HumidityPct        REAL,
    VoltageV           REAL,
    CurrentA           REAL,
    PowerW             REAL,
    FirmwareVersion    TEXT,
    BatteryLevelPct    REAL,
    SoftwareVersion    TEXT,
    ErrorCode          TEXT,
    WarningFlag        INTEGER,
    StartTime          DATETIME,
    EndTime            DATETIME,
    CalibrationDueDate DATE,
    InspectionDate     DATE,
    ApprovedBy         TEXT
);

INSERT INTO ExaminationEquipmentLog VALUES (1, 101, 1001, 'SN1001', '2023-01-15', 10, 45, '{"mode":"auto"}', 'Good', 'ER1', 22.5, 45.0, 5.0, 0.2, 1.0, 'v1.2', 85.0, '2.1', 'E01', 0, '2023-06-01 08:00:00', '2023-06-01 08:45:00', '2024-01-15', '2023-12-01', 'DrSmith');
INSERT INTO ExaminationEquipmentLog VALUES (2, 102, 1002, 'SN1002', '2023-02-20', 12, 30, '{"gain":10}', 'Needs Service', 'ER2', 23.0, 40.0, 5.2, 0.25, 1.3, 'v1.3', 78.0, '2.2', 'E02', 1, '2023-06-02 09:15:00', '2023-06-02 09:45:00', '2024-02-20', '2023-12-15', 'DrJones');
INSERT INTO ExaminationEquipmentLog VALUES (3, 103, 1003, 'SN1003', '2023-03-10', 15, 60, '{"filter":"high"}', 'Good', 'ER3', 21.8, 42.5, 4.9, 0.18, 0.9, 'v1.1', 92.0, '2.0', NULL, 0, '2023-06-03 10:00:00', '2023-06-03 11:00:00', '2024-03-10', '2024-01-05', 'DrLee');

-- Laboratory reference ranges
CREATE TABLE LaboratoryReferenceRange
(
    TestID               INTEGER PRIMARY KEY,
    TestName             TEXT,
    Unit                 TEXT,
    MaleLower            REAL,
    MaleUpper            REAL,
    FemaleLower          REAL,
    FemaleUpper          REAL,
    AgeGroup             TEXT,
    Method               TEXT,
    Source               TEXT,
    CreatedDate          DATE,
    UpdatedDate          DATE,
    SampleType           TEXT,
    SpecimenCondition   TEXT,
    Instrument           TEXT,
    CalibrationVersion   TEXT,
    ValidFrom            DATE,
    ValidTo              DATE,
    ClinicalDecision    TEXT,
    ReferencePopulation TEXT,
    ReferenceDocument    TEXT,
    FlagCriticalLow      INTEGER,
    FlagCriticalHigh     INTEGER,
    Comment              TEXT
);

INSERT INTO LaboratoryReferenceRange VALUES (1, 'Hemoglobin', 'g/dL', 13.5, 17.5, 12.0, 15.5, 'Adult', 'Coba', 'LabCorp', '2022-01-01', '2023-01-01', 'Blood', 'Fresh', 'AnalyzerX', 'v5', '2022-01-01', '2025-01-01', 'AssessAnemia', 'GeneralPopulation', 'RefDoc001', 0, 0, 'Standard adult range');
INSERT INTO LaboratoryReferenceRange VALUES (2, 'WBC', '10^9/L', 4.0, 11.0, 4.0, 11.0, 'Adult', 'Flow', 'Quest', '2022-02-15', '2023-02-15', 'Blood', 'EDTA', 'AnalyzerY', 'v3', '2022-02-15', '2025-02-15', 'InfectionCheck', 'UrbanPopulation', 'RefDoc002', 0, 0, 'Includes differential');
INSERT INTO LaboratoryReferenceRange VALUES (3, 'ALT', 'U/L', 7, 55, 7, 45, 'Adult', 'Enzymatic', 'Mayo', '2022-03-10', '2023-03-10', 'Serum', 'Clotted', 'AnalyzerZ', 'v2', '2022-03-10', '2025-03-10', 'LiverFunction', 'MixedPopulation', 'RefDoc003', 0, 0, 'Fasting required');

-- Patient survey responses
CREATE TABLE PatientSurveyResponse
(
    SurveyID          INTEGER PRIMARY KEY,
    PatientID         INTEGER,
    SurveyDate        DATE,
    Q1Score           INTEGER,
    Q2Score           INTEGER,
    Q3Score           INTEGER,
    Q4Score           INTEGER,
    Q5Score           INTEGER,
    Q6Score           INTEGER,
    Q7Score           INTEGER,
    Q8Score           INTEGER,
    Q9Score           INTEGER,
    Q10Score          INTEGER,
    OverallScore      REAL,
    Comments          TEXT,
    CompletedBy       TEXT,
    Mode              TEXT,
    DurationSec       INTEGER,
    FollowUpNeeded    INTEGER,
    FollowUpDate      DATE,
    SurveyVersion     TEXT,
    Department        TEXT,
    Location          TEXT,
    ContactPreference TEXT,
    Language          TEXT,
    ConsentGiven      INTEGER
);

INSERT INTO PatientSurveyResponse VALUES (1, 101, '2023-06-01', 5,4,5,4,5,5,4,5,4,5, 4.6, 'Very satisfied', 'NurseA', 'Online', 300, 0, NULL, 'v1', 'Outpatient', 'Room101', 'Email', 'English', 1);
INSERT INTO PatientSurveyResponse VALUES (2, 102, '2023-06-02', 3,3,4,2,3,4,3,2,3,4, 3.3, 'Average experience', 'NurseB', 'Phone', 420, 1, '2023-06-10', 'v1', 'Inpatient', 'Ward5', 'Phone', 'Spanish', 1);
INSERT INTO PatientSurveyResponse VALUES (3, 103, '2023-06-03', 4,5,5,5,5,5,5,5,5,5, 4.9, 'Excellent care', 'NurseC', 'Online', 250, 0, NULL, 'v1', 'Emergency', 'ERRoom2', 'SMS', 'English', 1);

-- Physician credential information
CREATE TABLE PhysicianCredential
(
    PhysicianID          INTEGER PRIMARY KEY,
    FirstName            TEXT,
    LastName             TEXT,
    LicenseNumber        TEXT,
    Specialty            TEXT,
    SubSpecialty         TEXT,
    BoardCertified       INTEGER,
    CertificationDate    DATE,
    ExpirationDate       DATE,
    HospitalAffiliation  TEXT,
    Department           TEXT,
    Email                TEXT,
    PhoneNumber          TEXT,
    Pager                TEXT,
    NPI                  TEXT,
    TaxID                TEXT,
    Education            TEXT,
    ResidencyProgram     TEXT,
    FellowshipProgram    TEXT,
    ResearchInterest     TEXT,
    PublicationsCount    INTEGER,
    ClinicalTrialsInvolv INTEGER,
    Memberships          TEXT,
    Awards               TEXT,
    LanguageProficiency  TEXT,
    CVLastUpdated        DATE,
    ActiveStatus         INTEGER,
    LastPerformanceReview DATE,
    PerformanceScore     REAL,
    Notes                TEXT
);

INSERT INTO PhysicianCredential VALUES (10, 'Alice', 'Brown', 'LIC12345', 'Cardiology', 'Interventional', 1, '2015-06-01', '2025-06-01', 'GeneralHospital', 'Cardiology', 'alice.brown@gh.org', '5551234567', '321', '1234567890', '987654321', 'MD', 'Cardiology Residency', 'Intervention Fellowship', 'StentTech', 45, 3, 'ACC;AHA', 'BestDoctor2020', 'English;Spanish', '2023-01-15', 1, '2022-12-01', 4.8, 'Lead interventionalist');
INSERT INTO PhysicianCredential VALUES (11, 'Bob', 'Smith', 'LIC67890', 'Neurology', 'Stroke', 1, '2012-09-15', '2022-09-15', 'CityMedicalCenter', 'Neurology', 'bob.smith@cmc.org', '5559876543', '654', '0987654321', '123456789', 'MD', 'Neurology Residency', 'Stroke Fellowship', 'NeuroImaging', 30, 5, 'ASA;AAN', 'ResearchAward2019', 'English', '2022-11-20', 0, '2021-06-30', 3.9, 'Retired');
INSERT INTO PhysicianCredential VALUES (12, 'Carol', 'Lee', 'LIC54321', 'Oncology', 'Medical Oncology', 1, '2018-03-20', '2028-03-20', 'RegionalCancerCenter', 'Oncology', 'carol.lee@rcc.org', '5555555555', '987', '1112223334', '444555666', 'MD', 'Oncology Residency', 'Clinical Oncology Fellowship', 'TargetedTherapy', 20, 2, 'ASCO', 'Young Investigator 2021', 'English;Chinese', '2023-02-28', 1, '2022-08-15', 4.5, 'Active researcher');

-- Imaging study protocol definitions
CREATE TABLE ImagingStudyProtocol
(
    ProtocolID               INTEGER PRIMARY KEY,
    StudyType                TEXT,
    Modality                 TEXT,
    ContrastUsed             TEXT,
    DoseLevel                REAL,
    SliceThicknessMM         REAL,
    ReconstructionAlgorithm  TEXT,
    PatientPosition          TEXT,
    PreparationInstructions  TEXT,
    TimingSec                INTEGER,
    RadiationSafetyLevel    TEXT,
    EquipmentID              INTEGER,
    CalibrationDate          DATE,
    Version                  TEXT,
    ApprovedBy               TEXT,
    ApprovalDate             DATE,
    Description              TEXT,
    TechnicalNotes           TEXT,
    ImageResolution          TEXT,
    FieldOfViewCM            REAL,
    Notes                    TEXT,
    ScanDurationMin          INTEGER,
    PostProcessingMethod    TEXT,
    QualityControlRequired   INTEGER,
    ArchiveLocation          TEXT,
    StandardizedCode        TEXT,
    LastUpdated              DATE,
    ActiveFlag               INTEGER,
    ReviewCycleMonths       INTEGER,
    PerformanceMetric        REAL
);

INSERT INTO ImagingStudyProtocol VALUES (100, 'Brain MRI', 'MRI', 'Gadolinium', 0.0, 1.0, 'MPRAGE', 'Supine', 'Fast', 600, 'Low', 2001, '2022-01-10', 'v1.0', 'DrAdams', '2022-01-12', 'High resolution brain anatomy', 'Use phased-array coil', '1x1x1mm', 22.5, 'Standard protocol', 30, 'None', 1, 'ArchiveA', 'MRI001', '2023-03-01', 1, 12, 0.95);
INSERT INTO ImagingStudyProtocol VALUES (101, 'Chest CT', 'CT', 'Iodine', 5.0, 0.5, 'Standard', 'Supine', 'Hold breath', 300, 'Medium', 2002, '2021-11-05', 'v2.1', 'DrBaker', '2021-11-07', 'Evaluate lung parenchyma', 'Use low-dose protocol when possible', '0.5mm', 35.0, 'Protocol for cancer staging', 45, 'IterativeRecon', 1, 'ArchiveB', 'CT002', '2022-12-15', 1, 24, 0.90);
INSERT INTO ImagingStudyProtocol VALUES (102, 'Abdominal Ultrasound', 'US', 'None', 0.0, NULL, 'Standard', 'Supine', 'Fasting 6h', 180, 'None', 2003, '2023-02-20', 'v1.3', 'DrCarter', '2023-02-22', 'Assess liver and kidneys', 'Use curvilinear probe', '0.3mm', 20.0, 'Standard abdominal scan', 20, 'None', 0, 'ArchiveC', 'US003', '2023-04-10', 1, 6, 0.98);

-- Genetic test results
CREATE TABLE GeneticTestResult
(
    TestResultID        INTEGER PRIMARY KEY,
    PatientID           INTEGER,
    TestDate            DATE,
    Gene                TEXT,
    Variant             TEXT,
    Zygosity            TEXT,
    ClinicalSignificance TEXT,
    Interpretation      TEXT,
    LabID               INTEGER,
    Methodology         TEXT,
    CoverageDepthX      INTEGER,
    ValidationStatus    TEXT,
    ReportVersion       TEXT,
    Analyst             TEXT,
    ReviewedBy          TEXT,
    ReviewDate          DATE,
    Comment             TEXT,
    Actionable          INTEGER,
    RecommendedFollowUp TEXT,
    InheritancePattern  TEXT,
    AlleleFrequencyPct REAL,
    PhenotypeAssociated TEXT,
    DiseaseRiskScore    REAL,
    LastUpdated         DATE,
    Status              TEXT,
    ConfidentialFlag    INTEGER,
    SourceReference     TEXT,
    Note                TEXT,
    DisclosureDate      DATE
);

INSERT INTO GeneticTestResult VALUES (5001, 101, '2023-04-01', 'BRCA1', 'c.5266dupC', 'Heterozygous', 'Pathogenic', 'High risk for breast cancer', 301, 'NGS', 150, 'Validated', 'v1', 'AnalystA', 'DrSmith', '2023-04-05', 'Patient notified', 1, 'Annual MRI', 'AutosomalDominant', 0.12, 'BreastCancer', 0.85, '2023-04-06', 'Final', 0, 'PMID123456', 'No additional notes', '2023-04-07');
INSERT INTO GeneticTestResult VALUES (5002, 102, '2023-05-15', 'CFTR', 'c.1521_1523delCTT', 'Homozygous', 'Pathogenic', 'Cystic fibrosis', 302, 'Sanger', 200, 'Validated', 'v2', 'AnalystB', 'DrJones', '2023-05-18', 'Carrier counseling', 0, 'Genetic counseling', 'AutosomalRecessive', 0.0, 'CysticFibrosis', 0.92, '2023-05-19', 'Final', 0, 'PMID654321', 'Family testing recommended', '2023-05-20');
INSERT INTO GeneticTestResult VALUES (5003, 103, '2023-06-10', 'APOE', 'e4/e4', 'Homozygous', 'RiskFactor', 'Increased Alzheimer risk', 303, 'Microarray', 120, 'Validated', 'v1', 'AnalystC', 'DrLee', '2023-06-12', 'Discussed lifestyle', 0, 'Neuropsych eval', 'AutosomalDominant', 0.15, 'AlzheimerDisease', 0.70, '2023-06-13', 'Preliminary', 0, 'PMID789012', 'No immediate action', '2023-06-14');

-- Pharmacy lot traceability
CREATE TABLE PharmacyLotTraceability
(
    LotID               INTEGER PRIMARY KEY,
    DrugName            TEXT,
    StrengthMG          INTEGER,
    Formulation         TEXT,
    Manufacturer        TEXT,
    BatchNumber         TEXT,
    ExpirationDate      DATE,
    ReceivedDate        DATE,
    StorageLocation     TEXT,
    TemperatureLog      TEXT,
    HumidityLog         TEXT,
    QCStatus            TEXT,
    ReleaseDate         DATE,
    DisposedDate        DATE,
    DisposedBy          TEXT,
    QuantityReceived    INTEGER,
    QuantityDispensed   INTEGER,
    RemainingQuantity   INTEGER,
    RecallStatus        TEXT,
    Notes               TEXT,
    ControlledSubstance INTEGER,
    SerialNumber        TEXT,
    SupplierContact     TEXT,
    InspectionDate      DATE,
    InspectionResult    TEXT,
    HazardLevel         TEXT,
    LastInventoryCheck  DATE,
    AuditTrail          TEXT,
    ComplianceFlag      INTEGER,
    Disposition         TEXT
);

INSERT INTO PharmacyLotTraceability VALUES (8001, 'Aspirin', 100, 'Tablet', 'PharmaInc', 'BCH001', '2025-12-31', '2023-01-10', 'ShelfA1', '2-8C', '30-50%', 'Passed', '2023-01-12', NULL, NULL, 10000, 2500, 7500, 'None', 'Standard analgesic', 0, 'SN8001', 'SupplierA', '2023-01-15', 'OK', 'Low', '2023-06-01', 'Log8001', 1, 'InStock');
INSERT INTO PharmacyLotTraceability VALUES (8002, 'Heparin', 5000, 'Injection', 'HealCo', 'BCH002', '2024-06-30', '2023-02-05', 'ColdRoomB', '2-8C', '30-50%', 'Pending', NULL, NULL, NULL, 5000, 0, 5000, 'Pending', 'Anticoagulant', 1, 'SN8002', 'SupplierB', '2023-02-10', 'Pending', 'Medium', NULL, NULL, 0, 'Quarantine');
INSERT INTO PharmacyLotTraceability VALUES (8003, 'Metformin', 500, 'Tablet', 'MediLife', 'BCH003', '2026-03-15', '2023-03-20', 'ShelfC3', '15-25C', '30-50%', 'Passed', '2023-03-22', NULL, NULL, 20000, 4000, 16000, 'None', 'Diabetes medication', 0, 'SN8003', 'SupplierC', '2023-03-25', 'OK', 'Low', '2023-07-01', 'Log8003', 1, 'InStock');

-- Environmental sensor readings
CREATE TABLE EnvironmentalSensorReading
(
    ReadingID           INTEGER PRIMARY KEY,
    SensorID            INTEGER,
    Timestamp           DATETIME,
    TemperatureC        REAL,
    HumidityPct         REAL,
    CO2ppm              INTEGER,
    PM2_5ugm3           REAL,
    PM10ugm3            REAL,
    VOCppm              REAL,
    NoiseDb             REAL,
    LightLux            REAL,
    PressurehPa         REAL,
    BatteryLevelPct     REAL,
    SignalStrengthDb    REAL,
    FirmwareVersion     TEXT,
    CalibrationDate     DATE,
    Location            TEXT,
    Status              TEXT,
    AlertFlag           INTEGER,
    Notes               TEXT,
    SamplingIntervalSec INTEGER,
    DataQualityScore    REAL,
    MaintenanceDueDate  DATE,
    LastServicedDate    DATE,
    SensorType          TEXT,
    Manufacturer        TEXT,
    ModelNumber         TEXT,
    SerialNumber        TEXT,
    InstallationDate    DATE,
    DecommissionDate    DATE
);

INSERT INTO EnvironmentalSensorReading VALUES (9001, 101, '2023-06-01 08:00:00', 22.4, 45.0, 600, 12.5, 25.0, 150, 55.0, 300, 1013.2, 98.0, -70, 'v1.0', '2022-12-01', 'WardA', 'OK', 0, 'Normal operation', 300, 0.95, '2024-01-01', '2023-05-15', 'TempHumid', 'EnviroTech', 'TH-100', 'SNTH1001', '2022-11-20', NULL);
INSERT INTO EnvironmentalSensorReading VALUES (9002, 102, '2023-06-01 08:05:00', 23.1, 48.0, 580, 15.0, 30.0, 140, 50.0, 350, 1012.8, 96.5, -68, 'v1.1', '2022-12-15', 'ICU', 'OK', 0, 'Slightly high humidity', 300, 0.92, '2024-01-15', '2023-05-20', 'TempHumid', 'EnviroTech', 'TH-100', 'SNTH1002', '2022-12-01', NULL);
INSERT INTO EnvironmentalSensorReading VALUES (9003, 103, '2023-06-01 08:10:00', 21.9, 42.0, 610, 10.0, 20.0, 160, 60.0, 280, 1013.5, 99.0, -72, 'v1.0', '2022-11-30', 'Lab', 'OK', 0, 'All parameters normal', 300, 0.98, '2024-02-01', '2023-05-10', 'TempHumid', 'EnviroTech', 'TH-100', 'SNTH1003', '2022-11-15', NULL);

-- Clinical guideline version tracking
CREATE TABLE ClinicalGuidelineVersion
(
    GuidelineID          INTEGER,
    VersionNumber        TEXT,
    Title                TEXT,
    Specialty            TEXT,
    PublicationDate      DATE,
    EffectiveDate        DATE,
    ExpirationDate       DATE,
    AuthorContact        TEXT,
    RevisionSummary      TEXT,
    ChangeLog            TEXT,
    Status               TEXT,
    ApprovalCommittee    TEXT,
    ReviewCycleMonths   INTEGER,
    LastReviewedDate    DATE,
    NextReviewDate       DATE,
    Scope                TEXT,
    Audience             TEXT,
    ImplementationStatus TEXT,
    MetricsTracked       TEXT,
    Comments             TEXT,
    PrimaryReference     TEXT,
    SupportingDocuments  TEXT,
    Language             TEXT,
    DistributionChannel  TEXT,
    VersionNotes         TEXT,
    ArchivedFlag         INTEGER,
    CreatedBy            TEXT,
    CreatedDate          DATE,
    UpdatedBy            TEXT,
    UpdatedDate          DATE,
    PRIMARY KEY (GuidelineID, VersionNumber)
);

INSERT INTO ClinicalGuidelineVersion VALUES (2001, 'v1.0', 'Management of Acute Myocardial Infarction', 'Cardiology', '2022-01-15', '2022-02-01', '2025-02-01', 'DrHeart', 'Initial release', 'None', 'Active', 'CardioCommittee', 12, '2022-12-01', '2023-12-01', 'Hospital-wide', 'All clinicians', 'Implemented', 'Mortality;Readmission', 'No comments', 'JAMA2021', 'SuppDoc1;SuppDoc2', 'English', 'OnlinePortal', 'Baseline version', 0, 'AdminUser', '2022-01-10', 'AdminUser', '2022-01-10');
INSERT INTO ClinicalGuidelineVersion VALUES (2001, 'v1.1', 'Management of Acute Myocardial Infarction', 'Cardiology', '2023-01-20', '2023-02-01', '2025-02-01', 'DrHeart', 'Added beta‑blocker dosing', 'Added beta‑blocker section', 'Active', 'CardioCommittee', 12, '2023-12-01', '2024-12-01', 'Hospital-wide', 'All clinicians', 'Implemented', 'Mortality;Readmission', 'Minor updates', 'JAMA2021', 'SuppDoc1;SuppDoc2;SuppDoc3', 'English', 'OnlinePortal', 'Beta‑blocker update', 0, 'AdminUser', '2023-01-15', 'AdminUser', '2023-01-15');
INSERT INTO ClinicalGuidelineVersion VALUES (2002, 'v1.0', 'Guideline for Diabetes Type 2 Management', 'Endocrinology', '2021-05-10', '2021-06-01', '2024-06-01', 'DrSugar', 'First edition', 'None', 'Active', 'EndoCommittee', 12, '2021-12-01', '2022-12-01', 'Outpatient', 'Primary care physicians', 'Partial', 'HbA1c;Complications', 'Initial release', 'DiabetesJ2020', 'SuppDocA;SuppDocB', 'English', 'Print&Online', 'Baseline', 0, 'AdminUser', '2021-05-01', 'AdminUser', '2021-05-01');

-- Patient transportation requests
CREATE TABLE PatientTransportationRequest
(
    RequestID            INTEGER PRIMARY KEY,
    PatientID            INTEGER,
    RequestDate          DATE,
    FromLocation         TEXT,
    ToLocation           TEXT,
    TransportMode        TEXT,
    RequestedTime        TIME,
    ScheduledTime        TIME,
    DispatcherID         INTEGER,
    DriverID             INTEGER,
    VehicleID            INTEGER,
    Reason               TEXT,
    PriorityLevel        INTEGER,
    Status               TEXT,
    CompletedTime        TIME,
    FeedbackScore        INTEGER,
    Comments             TEXT,
    EstimatedDurationMin INTEGER,
    ActualDurationMin    INTEGER,
    MileageKm            REAL,
    AssistanceRequired  INTEGER,
    WheelchairAccessible INTEGER,
    SpecialEquipment     TEXT,
    ContactPhone         TEXT,
    ContactName          TEXT,
    InsuranceCoverage    TEXT,
    CompletionNotes      TEXT,
    FollowUpRequired     INTEGER,
    FollowUpDate         DATE,
    CreatedBy            TEXT,
    CreatedDate          DATE,
    UpdatedBy            TEXT,
    UpdatedDate          DATE
);

INSERT INTO PatientTransportationRequest VALUES (3001, 101, '2023-06-01', 'Room101', 'Radiology', 'Wheelchair', '08:30:00', '08:45:00', 501, 601, 701, 'MRI Scan', 2, 'Completed', '09:10:00', 5, 'Smooth ride', 15, 20, 2.5, 1, 1, 'None', '5551112222', 'JohnDoe', 'Full', 'No issues', 0, NULL, 'SchedulerA', '2023-06-01', 'SchedulerA', '2023-06-01');
INSERT INTO PatientTransportationRequest VALUES (3002, 102, '2023-06-02', 'ER', 'OperatingTheater', 'Stretcher', '12:00:00', '12:05:00', 502, 602, 702, 'Emergency surgery', 1, 'InProgress', NULL, NULL, NULL, 5, NULL, 0.8, 1, 0, 'PortableVentilator', '5553334444', 'JaneSmith', 'Partial', NULL, 0, NULL, 'SchedulerB', '2023-06-02', 'SchedulerB', '2023-06-02');
INSERT INTO PatientTransportationRequest VALUES (3003, 103, '2023-06-03', 'Ward5', 'PhysicalTherapy', 'Ambulatory', '15:00:00', '15:10:00', 503, 603, 703, 'Therapy session', 3, 'Scheduled', NULL, NULL, NULL, 10, NULL, 1.2, 0, 1, 'None', '5555556666', 'MikeBrown', 'None', NULL, 0, NULL, 'SchedulerC', '2023-06-03', 'SchedulerC', '2023-06-03');