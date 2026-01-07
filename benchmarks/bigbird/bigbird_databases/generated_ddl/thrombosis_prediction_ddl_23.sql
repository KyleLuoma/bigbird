-- RadiologyProcedure: details of radiology exams performed for patients
CREATE TABLE RadiologyProcedure
(
    ID                     INTEGER          NOT NULL,
    ProcedureDate          DATE             NOT NULL,
    Modality               TEXT,
    BodyPart               TEXT,
    ContrastUsed           TEXT,
    Dose                   REAL,
    RadiologistID          INTEGER,
    Findings               TEXT,
    Impression             TEXT,
    FollowUpRecommended    INTEGER,
    ReportURL              TEXT,
    ImageCount             INTEGER,
    StudyID                TEXT,
    ProcedureDuration      REAL,
    PatientWeightKg        REAL,
    PatientHeightCm        REAL,
    TechnicianID           INTEGER,
    EquipmentID            INTEGER,
    BillingCode            TEXT,
    InsuranceClaimID       INTEGER,
    Notes                  TEXT,
    Status                 TEXT,
    PRIMARY KEY (ID, ProcedureDate)
);

INSERT INTO RadiologyProcedure VALUES (1, '2023-01-15', 'MRI', 'Brain', 'Yes', 2.5, 101, 'No acute hemorrhage', 'Normal study', 0, 'http://example.com/report/1', 120, 'STDY001', 45.0, 70.0, 175.0, 201, 301, 'R101', 5001, 'Routine check', 'Completed');
INSERT INTO RadiologyProcedure VALUES (2, '2023-02-20', 'CT', 'Chest', 'No', 1.8, 102, 'Small nodule', 'Follow up recommended', 1, 'http://example.com/report/2', 85, 'STDY002', 30.0, 80.0, 180.0, 202, 302, 'C202', 5002, 'Nodule observed', 'Pending');
INSERT INTO RadiologyProcedure VALUES (3, '2023-03-05', 'Ultrasound', 'Abdomen', 'No', 0.5, 103, 'Gallstones present', 'Requires surgery', 1, 'http://example.com/report/3', 60, 'STDY003', 20.0, 68.0, 165.0, 203, 303, 'U303', 5003, 'Patient symptomatic', 'Completed');

-- PhysicalTherapyPlan: prescribed therapy regimens for patients
CREATE TABLE PhysicalTherapyPlan
(
    PlanID                 INTEGER          NOT NULL,
    PatientID              INTEGER,
    StartDate              DATE,
    EndDate                DATE,
    TherapistID            INTEGER,
    FrequencyPerWeek       INTEGER,
    SessionDurationMin     INTEGER,
    GoalMobility           TEXT,
    GoalStrength           TEXT,
    GoalPainLevel          TEXT,
    ModalitiesUsed         TEXT,
    EquipmentNeeded        TEXT,
    HomeExercisePrescribed TEXT,
    ProgressNotes          TEXT,
    TotalSessionsPlanned   INTEGER,
    SessionsCompleted      INTEGER,
    BillingCode            TEXT,
    InsuranceAuthorization TEXT,
    ReferringPhysicianID   INTEGER,
    InitialAssessmentScore INTEGER,
    FinalAssessmentScore   INTEGER,
    ProgramStatus          TEXT,
    Comments               TEXT
);

INSERT INTO PhysicalTherapyPlan VALUES (1001, 1, '2023-01-20', '2023-04-20', 401, 3, 45, 'Walk 500m', 'Increase quad strength', 'Pain < 3', 'ManualTherapy,Heat', 'Theraband', 'Quad stretch daily', 'Good compliance', 36, 12, 'PT100', 'Auth001', 501, 15, 30, 'Active', 'N/A');
INSERT INTO PhysicalTherapyPlan VALUES (1002, 2, '2023-02-01', '2023-05-01', 402, 2, 30, 'Climb stairs', 'Improve balance', 'Pain <= 2', 'BalanceBoard', 'None', 'Ankle circles', 'Needs motivation', 24, 8, 'PT200', 'Auth002', 502, 10, 22, 'Active', 'Follow up required');
INSERT INTO PhysicalTherapyPlan VALUES (1003, 3, '2023-03-10', '2023-06-10', 403, 4, 60, 'Run 2km', 'Hip strengthening', 'Pain free', 'ElectricalStimulation', 'ResistanceBand', 'Hip abduction', 'Excellent progress', 48, 20, 'PT300', 'Auth003', 503, 12, 28, 'Active', 'Consider discharge soon');

-- NutritionSupplement: records of dietary supplements prescribed
CREATE TABLE NutritionSupplement
(
    SupplementID           INTEGER          NOT NULL,
    PatientID              INTEGER,
    PrescriptionDate       DATE,
    SupplementName         TEXT,
    DosageMg               REAL,
    FrequencyPerDay        INTEGER,
    Route                  TEXT,
    PrescribingPhysicianID INTEGER,
    StartDate              DATE,
    EndDate                DATE,
    ReasonForUse           TEXT,
    Contraindications      TEXT,
    VerifiedByPharmacist   TEXT,
    PharmacyID             INTEGER,
    BillingCode            TEXT,
    InsuranceCoverage      TEXT,
    Notes                  TEXT,
    Status                 TEXT,
    FollowUpDate           DATE,
    AdverseEventReported   INTEGER,
    EventDescription       TEXT,
    CreatedAt              DATE,
    UpdatedAt              DATE,
    Comments               TEXT
);

INSERT INTO NutritionSupplement VALUES (2001, 1, '2023-01-05', 'VitaminD', 2000, 1, 'Oral', 601, '2023-01-06', '2023-07-06', 'Bone health', 'None', 'Yes', 701, 'NS100', 'Covered', 'No side effects', 'Active', '2023-04-01', 0, NULL, '2023-01-05', '2023-01-05', 'First prescription');
INSERT INTO NutritionSupplement VALUES (2002, 2, '2023-02-12', 'Omega3', 1000, 2, 'Oral', 602, '2023-02-13', '2023-08-13', 'Cardiovascular', 'Fish allergy', 'Yes', 702, 'NS200', 'Partial', 'Monitor triglycerides', 'Active', '2023-05-01', 0, NULL, '2023-02-12', '2023-02-12', 'Initial order');
INSERT INTO NutritionSupplement VALUES (2003, 3, '2023-03-20', 'Calcium', 500, 1, 'Oral', 603, '2023-03-21', '2023-09-21', 'Osteoporosis', 'Kidney stones', 'No', 703, 'NS300', 'NotCovered', 'Check serum calcium', 'Pending', '2023-06-15', 1, 'Mild GI upset', '2023-03-20', '2023-03-20', 'Awaiting approval');

-- GeneticVariantAnnotation: annotations of detected genetic variants
CREATE TABLE GeneticVariantAnnotation
(
    VariantID              INTEGER          NOT NULL,
    PatientID              INTEGER,
    TestDate               DATE,
    GeneSymbol             TEXT,
    NucleotideChange       TEXT,
    ProteinChange          TEXT,
    Zygosity               TEXT,
    ClinicalSignificance   TEXT,
    AlleleFrequency        REAL,
    InheritancePattern     TEXT,
    AssociatedCondition    TEXT,
    Interpretation          TEXT,
    ReportingLab           TEXT,
    ReportVersion          TEXT,
    ReviewStatus           TEXT,
    CuratorID              INTEGER,
    EvidenceLevel          TEXT,
    PublicationReference   TEXT,
    Actionable             INTEGER,
    RecommendedAction      TEXT,
    FollowUpRequired       INTEGER,
    FollowUpDate           DATE,
    Notes                  TEXT,
    CreatedAt              DATE,
    UpdatedAt              DATE
);

INSERT INTO GeneticVariantAnnotation VALUES (3001, 1, '2023-01-10', 'BRCA1', 'c.68_69del', 'p.Glu23Valfs', 'Heterozygous', 'Pathogenic', 0.0001, 'AutosomalDominant', 'BreastCancer', 'High risk', 'LabA', 'v1.0', 'Reviewed', 801, 'Strong', 'PMID123456', 1, 'Enhanced surveillance', 1, '2023-04-01', 'Patient counseled', '2023-01-10', '2023-01-10');
INSERT INTO GeneticVariantAnnotation VALUES (3002, 2, '2023-02-15', 'CFTR', 'c.1521_1523del', 'p.Phe508del', 'Homozygous', 'Pathogenic', 0.002, 'AutosomalRecessive', 'CysticFibrosis', 'Disease causing', 'LabB', 'v2.1', 'Pending', 802, 'Moderate', 'PMID234567', 0, NULL, 0, NULL, 'Awaiting confirmatory test', '2023-02-15', '2023-02-15');
INSERT INTO GeneticVariantAnnotation VALUES (3003, 3, '2023-03-22', 'APOE', 'c.526C>T', 'p.Arg176Cys', 'Heterozygous', 'RiskFactor', 0.14, 'None', 'AlzheimerDisease', 'Increased risk', 'LabC', 'v3.0', 'Reviewed', 803, 'Weak', 'PMID345678', 0, NULL, 0, NULL, 'Discussed lifestyle modifications', '2023-03-22', '2023-03-22');

-- EnvironmentalExposure: records of patient exposure to environmental factors
CREATE TABLE EnvironmentalExposure
(
    ExposureID             INTEGER          NOT NULL,
    PatientID              INTEGER,
    AssessmentDate         DATE,
    ExposureType           TEXT,
    SourceLocation         TEXT,
    DurationHours          REAL,
    PeakConcentration      REAL,
    AverageConcentration   REAL,
    ProtectiveEquipment    TEXT,
    SymptomsReported       TEXT,
    MedicalEvaluation      TEXT,
    ExposureLevel          TEXT,
    RiskCategory           TEXT,
    MitigationPlan         TEXT,
    FollowUpDate           DATE,
    EvaluatorID            INTEGER,
    Notes                  TEXT,
    CreatedAt              DATE,
    UpdatedAt              DATE,
    Status                 TEXT,
    DocumentationURL       TEXT,
    ConfirmedByLab         TEXT,
    LabResultValue         REAL,
    LabResultUnit          TEXT
);

INSERT INTO EnvironmentalExposure VALUES (4001, 1, '2023-01-18', 'AirPollution', 'IndustrialZone', 5.5, 120.0, 80.0, 'Mask', 'Cough,Headache', 'Normal', 'Moderate', 'Medium', 'Air purifier at home', '2023-02-10', 901, 'Patient works nearby', '2023-01-18', '2023-01-18', 'Open', 'http://example.com/doc/4001', 'Yes', 85.0, 'µg/m3');
INSERT INTO EnvironmentalExposure VALUES (4002, 2, '2023-02-25', 'Noise', 'ConstructionSite', 8.0, 95.0, 70.0, 'EarPlugs', 'Tinnitus', 'Audiology referral', 'High', 'High', 'Change worksite', '2023-03-15', 902, 'Long term exposure', '2023-02-25', '2023-02-25', 'Open', 'http://example.com/doc/4002', 'No', NULL, NULL);
INSERT INTO EnvironmentalExposure VALUES (4003, 3, '2023-03-30', 'Chemical', 'Laboratory', 2.0, 30.0, 20.0, 'Gloves,LabCoat', 'None', 'No issues', 'Low', 'Low', 'Standard protocols', '2023-04-20', 903, 'Handled with PPE', '2023-03-30', '2023-03-30', 'Closed', 'http://example.com/doc/4003', 'Yes', 5.0, 'ppm');

-- PatientDeviceLog: log of wearable or implanted medical devices assigned to patients
CREATE TABLE PatientDeviceLog
(
    LogID                  INTEGER          NOT NULL,
    PatientID              INTEGER,
    DeviceID               TEXT,
    DeviceType             TEXT,
    AssignmentDate         DATE,
    RemovalDate            DATE,
    SerialNumber           TEXT,
    FirmwareVersion        TEXT,
    BatteryLevelPercent    INTEGER,
    CalibrationDate        DATE,
    LastSyncDate           DATE,
    DataUploadFrequencyMin INTEGER,
    AlertsEnabled          INTEGER,
    LocationOnBody         TEXT,
    Manufacturer           TEXT,
    ReasonForUse           TEXT,
    AssignedByStaffID      INTEGER,
    Status                 TEXT,
    Notes                  TEXT,
    CreatedAt              DATE,
    UpdatedAt              DATE,
    DecommissionReason     TEXT,
    DecommissionDate       DATE,
    WarrantyExpirationDate DATE
);

INSERT INTO PatientDeviceLog VALUES (5001, 1, 'DEV001', 'HeartMonitor', '2023-01-12', NULL, 'SN12345', 'v1.2', 85, '2023-02-01', '2023-03-01', 15, 1, 'Chest', 'MedTech', 'Arrhythmia monitoring', 601, 'Active', 'Patient tolerates well', '2023-01-12', '2023-01-12', NULL, NULL, '2025-01-12');
INSERT INTO PatientDeviceLog VALUES (5002, 2, 'DEV002', 'GlucoseSensor', '2023-02-05', NULL, 'SN67890', 'v3.4', 92, '2023-02-10', '2023-03-05', 5, 1, 'Arm', 'GlucoInc', 'Diabetes management', 602, 'Active', 'Calibration needed soon', '2023-02-05', '2023-02-05', NULL, NULL, '2026-02-05');
INSERT INTO PatientDeviceLog VALUES (5003, 3, 'DEV003', 'PulseOximeter', '2023-03-20', '2023-04-15', 'SN54321', 'v2.1', 70, '2023-03-22', '2023-04-01', 10, 0, 'Finger', 'OxiHealth', 'Oxygen saturation monitoring', 603, 'Removed', 'Device malfunction', '2023-03-20', '2023-04-15', 'Device failure', '2023-04-15', '2024-03-20');

-- ClinicalTrialAdverseEvent: records of adverse events during clinical trials
CREATE TABLE ClinicalTrialAdverseEvent
(
    EventID                INTEGER          NOT NULL,
    TrialID                TEXT,
    PatientID              INTEGER,
    EventDate              DATE,
    EventType              TEXT,
    SeverityGrade          INTEGER,
    Outcome                TEXT,
    RelatedToStudyDrug     INTEGER,
    Description            TEXT,
    ActionTaken            TEXT,
    InvestigatorID         INTEGER,
    ReportedByStaffID      INTEGER,
    FollowUpRequired       INTEGER,
    FollowUpDate           DATE,
    ConcomitantMedications TEXT,
    LabValuesAtEvent       TEXT,
    ImagingFindings        TEXT,
    ResolutionDate         DATE,
    Status                 TEXT,
    CreatedAt              DATE,
    UpdatedAt              DATE,
    Comments               TEXT,
    ReportingFormVersion   TEXT,
    RegulatorySubmission   TEXT
);

INSERT INTO ClinicalTrialAdverseEvent VALUES (6001, 'CT001', 1, '2023-02-10', 'Nausea', 2, 'Resolved', 1, 'Patient reported mild nausea after dose', 'Antiemetic administered', 701, 801, 0, NULL, 'None', 'WBC normal', 'None', '2023-02-12', 'Closed', '2023-02-10', '2023-02-12', 'No further action', 'v1.0', 'Submitted');
INSERT INTO ClinicalTrialAdverseEvent VALUES (6002, 'CT002', 2, '2023-03-08', 'Headache', 1, 'Ongoing', 0, 'Mild headache reported', 'Observation only', 702, 802, 1, '2023-04-01', 'Acetaminophen', 'ALT elevated', 'MRI normal', NULL, 'Open', '2023-03-08', '2023-03-08', 'Monitoring continues', 'v1.2', 'Pending');
INSERT INTO ClinicalTrialAdverseEvent VALUES (6003, 'CT003', 3, '2023-04-15', 'Rash', 3, 'Resolved', 1, 'Dermatologic rash on torso', 'Topical steroid prescribed', 703, 803, 0, NULL, 'Antihistamine', 'CBC normal', 'None', '2023-04-20', 'Closed', '2023-04-15', '2023-04-20', 'Resolved without sequelae', 'v2.0', 'Submitted');

-- InsuranceCoverageDetail: detailed insurance coverage per patient per service
CREATE TABLE InsuranceCoverageDetail
(
    CoverageID             INTEGER          NOT NULL,
    PatientID              INTEGER,
    InsurancePolicyID      INTEGER,
    ServiceCode            TEXT,
    ServiceDescription     TEXT,
    CoveragePercent        REAL,
    CopayAmount            REAL,
    DeductibleRemaining    REAL,
    PriorAuthorization    INTEGER,
    AuthorizationNumber    TEXT,
    EffectiveDate          DATE,
    ExpirationDate         DATE,
    ClaimSubmissionMethod  TEXT,
    ClaimStatus            TEXT,
    PaidAmount             REAL,
    BalanceDue             REAL,
    Adjustments            REAL,
    Notes                  TEXT,
    CreatedAt              DATE,
    UpdatedAt              DATE,
    ProcessedByStaffID     INTEGER,
    AppealFiled            INTEGER,
    AppealOutcome          TEXT,
    RefundAmount           REAL
);

INSERT INTO InsuranceCoverageDetail VALUES (7001, 1, 901, 'LAB001', 'Basic Lab Panel', 80.0, 20.0, 150.0, 1, 'AUTH123', '2023-01-01', '2024-01-01', 'Electronic', 'Paid', 120.0, 30.0, 0.0, 'Routine coverage', '2023-01-15', '2023-01-15', 601, 0, NULL, 0.0);
INSERT INTO InsuranceCoverageDetail VALUES (7002, 2, 902, 'IMG002', 'MRI Brain', 70.0, 150.0, 200.0, 1, 'AUTH456', '2023-02-01', '2024-02-01', 'Paper', 'Pending', 0.0, 0.0, 0.0, 'Requires pre-approval', '2023-02-20', '2023-02-20', 602, 0, NULL, 0.0);
INSERT INTO InsuranceCoverageDetail VALUES (7003, 3, 903, 'MED003', 'Chemotherapy', 90.0, 0.0, 0.0, 1, 'AUTH789', '2023-03-01', '2025-03-01', 'Electronic', 'Denied', 0.0, 0.0, 0.0, 'Denied due to policy limit', '2023-03-10', '2023-03-10', 603, 1, 'Approved after appeal', 500.0);

-- SocialDeterminantsSurvey: patient responses to social determinants of health questionnaire
CREATE TABLE SocialDeterminantsSurvey
(
    SurveyID               INTEGER          NOT NULL,
    PatientID              INTEGER,
    SurveyDate             DATE,
    HousingStability       INTEGER,
    FoodSecurity           INTEGER,
    EmploymentStatus       TEXT,
    IncomeLevel            TEXT,
    EducationLevel         TEXT,
    TransportationAccess   INTEGER,
    SocialSupportScore     INTEGER,
    SubstanceUse           TEXT,
    MentalHealthScreening  TEXT,
    LanguagePreference     TEXT,
    HealthLiteracyScore    INTEGER,
    AccessToCare           INTEGER,
    InsuranceStability     INTEGER,
    CommunityEngagement    INTEGER,
    StressLevel            INTEGER,
    PhysicalActivityFreq   INTEGER,
    SleepQualityScore      INTEGER,
    Notes                  TEXT,
    CreatedAt              DATE,
    UpdatedAt              DATE,
    FollowUpNeeded         INTEGER,
    FollowUpDate           DATE,
    SurveyVersion          TEXT
);

INSERT INTO SocialDeterminantsSurvey VALUES (8001, 1, '2023-01-20', 4, 3, 'Employed', 'Middle', 'College', 5, 80, 'None', 'Negative', 'English', 85, 4, 5, 3, 2, 3, 6, 'Patient reports stable housing', '2023-01-20', '2023-01-20', 0, NULL, 'v1');
INSERT INTO SocialDeterminantsSurvey VALUES (8002, 2, '2023-02-15', 2, 2, 'Unemployed', 'Low', 'HighSchool', 2, 45, 'Alcohol', 'Positive', 'Spanish', 60, 2, 3, 2, 4, 1, 3, 'Needs assistance with food security', '2023-02-15', '2023-02-15', 1, '2023-03-01', 'v1');
INSERT INTO SocialDeterminantsSurvey VALUES (8003, 3, '2023-03-10', 5, 5, 'Retired', 'High', 'Graduate', 5, 90, 'None', 'Negative', 'English', 95, 5, 5, 5, 1, 5, 8, 'No concerns reported', '2023-03-10', '2023-03-10', 0, NULL, 'v1');

-- ResearchBiobankSample: metadata for biological samples stored in a biobank
CREATE TABLE ResearchBiobankSample
(
    SampleID               INTEGER          NOT NULL,
    PatientID              INTEGER,
    CollectionDate         DATE,
    SampleType             TEXT,
    TissueOrigin           TEXT,
    PreservationMethod     TEXT,
    VolumeML               REAL,
    ConcentrationNGUL      REAL,
    StorageLocation        TEXT,
    FreezerTemperatureC    REAL,
    Barcode                TEXT,
    ConsentID              INTEGER,
    ProcessingLabID        INTEGER,
    QCStatus               TEXT,
    SequencingBatchID      TEXT,
    DNAExtracted           INTEGER,
    RNAExtracted           INTEGER,
    ProteinExtracted       INTEGER,
    Notes                  TEXT,
    CreatedAt              DATE,
    UpdatedAt              DATE,
    RetrievalCount         INTEGER,
    LastRetrievedDate      DATE,
    AssociatedStudyID      TEXT
);

INSERT INTO ResearchBiobankSample VALUES (9001, 1, '2023-01-05', 'Blood', 'Peripheral', 'Cryopreservation', 10.0, 150.0, 'FreezerA-01', -80.0, 'BC001', 1001, 2001, 'Pass', 'BATCH01', 1, 0, 0, 'Sample used for DNA sequencing', '2023-01-05', '2023-01-05', 2, '2023-02-10', 'STUDY01');
INSERT INTO ResearchBiobankSample VALUES (9002, 2, '2023-02-12', 'Tissue', 'Liver', 'FormalinFixation', 5.0, 200.0, 'FreezerB-02', -20.0, 'BC002', 1002, 2002, 'Pass', 'BATCH02', 0, 0, 1, 'Protein extraction pending', '2023-02-12', '2023-02-12', 0, NULL, 'STUDY02');
INSERT INTO ResearchBiobankSample VALUES (9003, 3, '2023-03-20', 'Saliva', 'Oral', 'RoomTempStabilizer', 2.0, 120.0, 'ShelfC-03', 4.0, 'BC003', 1003, 2003, 'Fail', 'BATCH03', 0, 1, 0, 'RNA degraded, re-collection advised', '2023-03-20', '2023-03-20', 1, '2023-04-01', 'STUDY03');

-- HospitalAssetMaintenance: maintenance records for hospital assets
CREATE TABLE HospitalAssetMaintenance
(
    MaintenanceID           INTEGER          NOT NULL,
    AssetID                 TEXT,
    AssetType               TEXT,
    MaintenanceDate         DATE,
    TechnicianID            INTEGER,
    MaintenanceType         TEXT,
    Description             TEXT,
    DowntimeHours           REAL,
    PartsReplaced           TEXT,
    CostUSD                 REAL,
    NextScheduledDate       DATE,
    WarrantyStatus          TEXT,
    ServiceProvider         TEXT,
    ApprovalStatus          TEXT,
    ApprovedByStaffID       INTEGER,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    FollowUpRequired        INTEGER,
    FollowUpDate            DATE,
    Comments                TEXT,
    PriorityLevel           TEXT,
    AssetLocation           TEXT,
    SerialNumber            TEXT,
    MaintenanceRecordURL    TEXT
);

INSERT INTO HospitalAssetMaintenance VALUES (10001, 'ASSET001', 'MRI Scanner', '2023-02-05', 401, 'Preventive', 'Standard calibration', 2.0, 'Coil', 1500.0, '2023-08-05', 'Valid', 'TechCorp', 'Approved', 601, '2023-02-05', '2023-02-05', 0, NULL, 'All parameters within spec', 'High', 'RadiologyDept', 'SN-MRI-001', 'http://example.com/maint/10001');
INSERT INTO HospitalAssetMaintenance VALUES (10002, 'ASSET002', 'Ventilator', '2023-03-12', 402, 'Repair', 'Battery replacement', 4.5, 'Battery', 800.0, '2024-03-12', 'Expired', 'MedServ', 'Pending', 602, '2023-03-12', '2023-03-12', 1, '2023-04-01', 'Monitor performance post-repair', 'Medium', 'ICU', 'SN-VEN-002', 'http://example.com/maint/10002');
INSERT INTO HospitalAssetMaintenance VALUES (10003, 'ASSET003', 'Infusion Pump', '2023-04-20', 403, 'Calibration', 'Flow rate verification', 1.0, 'None', 300.0, '2023-10-20', 'Valid', 'HealthEquip', 'Approved', 603, '2023-04-20', '2023-04-20', 0, NULL, 'Calibration successful', 'Low', 'OncologyWard', 'SN-INF-003', 'http://example.com/maint/10003');

-- InsuranceClaim: detailed claim submissions from the hospital to insurers
CREATE TABLE InsuranceClaim
(
    ClaimID                INTEGER          NOT NULL,
    PatientID              INTEGER,
    InsurancePolicyID      INTEGER,
    ClaimDate              DATE,
    ServiceCode            TEXT,
    ServiceDescription     TEXT,
    BilledAmountUSD        REAL,
    ApprovedAmountUSD      REAL,
    ClaimStatus            TEXT,
    SubmissionMethod       TEXT,
    ProcessingDate         DATE,
    AdjustedAmountUSD      REAL,
    DenialReasonCode       TEXT,
    AppealFiled            INTEGER,
    AppealDecision         TEXT,
    PaidDate               DATE,
    PaymentMethod          TEXT,
    Remarks                TEXT,
    CreatedAt              DATE,
    UpdatedAt              DATE,
    ProcessedByStaffID     INTEGER,
    ResubmissionNeeded    INTEGER,
    ResubmissionDate       DATE,
    ClaimReferenceNumber   TEXT
);

INSERT INTO InsuranceClaim VALUES (11001, 1, 901, '2023-01-20', 'LAB001', 'Basic Lab Panel', 200.0, 160.0, 'Approved', 'Electronic', '2023-01-25', 0.0, NULL, 0, NULL, '2023-01-30', 'Check', 'Paid in full', '2023-01-20', '2023-01-30', 701, 0, NULL, 'CLM001');
INSERT INTO InsuranceClaim VALUES (11002, 2, 902, '2023-02-15', 'IMG002', 'MRI Brain', 1500.0, 0.0, 'Denied', 'Paper', '2023-02-22', 0.0, 'RC01', 1, 'Approved after appeal', '2023-03-01', 'Electronic', 'Partial payment after appeal', '2023-02-15', '2023-03-01', 702, 0, NULL, 'CLM002');
INSERT INTO InsuranceClaim VALUES (11003, 3, 903, '2023-03-10', 'MED003', 'Chemotherapy', 5000.0, 4500.0, 'Approved', 'Electronic', '2023-03-18', 0.0, NULL, 0, NULL, '2023-03-25', 'Check', 'Payment scheduled', '2023-03-10', '2023-03-25', 703, 0, NULL, 'CLM003');

-- PatientSocialDeterminant: structured capture of specific social factors per patient
CREATE TABLE PatientSocialDeterminant
(
    RecordID               INTEGER          NOT NULL,
    PatientID              INTEGER,
    AssessmentDate         DATE,
    IncomeBracket          TEXT,
    EmploymentStatus       TEXT,
    HousingType            TEXT,
    FoodInsecurityScore    INTEGER,
    TransportationMode     TEXT,
    LiteracyLevel          TEXT,
    SocialSupportNetwork   TEXT,
    SubstanceUseRisk       TEXT,
    MentalHealthStatus    TEXT,
    LanguageProficiency    TEXT,
    CulturalIdentity       TEXT,
    VeteranStatus          TEXT,
    DisabilityStatus       TEXT,
    ChronicStressScore     INTEGER,
    AccessToCareScore      INTEGER,
    InsuranceStability     TEXT,
    CommunityResourcesUse  TEXT,
    Notes                  TEXT,
    CreatedAt              DATE,
    UpdatedAt              DATE,
    FollowUpPlan           TEXT,
    FollowUpDueDate        DATE,
    DataSource             TEXT
);

INSERT INTO PatientSocialDeterminant VALUES (12001, 1, '2023-01-15', 'Middle', 'FullTime', 'Apartment', 2, 'PublicTransit', 'High', 'Family', 'Low', 'Stable', 'English', 'None', 'No', 'None', 3, 5, 'Stable', 'Occasional', 'No additional notes', '2023-01-15', '2023-01-15', 'Annual review', '2024-01-15', 'SelfReport');
INSERT INTO PatientSocialDeterminant VALUES (12002, 2, '2023-02-20', 'Low', 'Unemployed', 'Shelter', 4, 'None', 'Low', 'None', 'High', 'Unstable', 'Spanish', 'Latino', 'Yes', 'Physical', 5, 2, 'Unstable', 'Frequent', 'Needs assistance', '2023-02-20', '2023-02-20', 'Immediate case management', '2023-03-01', 'SocialWorker');
INSERT INTO PatientSocialDeterminant VALUES (12003, 3, '2023-03-25', 'High', 'Retired', 'OwnHome', 1, 'Car', 'College', 'Friends', 'None', 'Good', 'English', 'Caucasian', 'No', 'None', 1, 8, 'Stable', 'Rare', 'All good', '2023-03-25', '2023-03-25', 'Routine check', '2024-03-25', 'SelfReport');

-- GeneticTestResult: detailed results from genetic testing
CREATE TABLE GeneticTestResult
(
    TestResultID           INTEGER          NOT NULL,
    PatientID              INTEGER,
    TestDate               DATE,
    LabID                  TEXT,
    PanelName              TEXT,
    GeneSymbol             TEXT,
    VariantID              TEXT,
    NucleotideChange       TEXT,
    ProteinChange          TEXT,
    Zygosity               TEXT,
    AlleleFrequency        REAL,
    ClinicalSignificance   TEXT,
    InheritancePattern     TEXT,
    AssociatedDisorder      TEXT,
    Interpretation          TEXT,
    ReportURL              TEXT,
    ReviewedByGeneticistID INTEGER,
    ReviewStatus           TEXT,
    Comments               TEXT,
    CreatedAt              DATE,
    UpdatedAt              DATE,
    FollowUpRecommended    INTEGER,
    FollowUpDate           DATE,
    Actionable             TEXT
);

INSERT INTO GeneticTestResult VALUES (13001, 1, '2023-01-22', 'LabX', 'CardioPanel', 'MYH7', 'VAR001', 'c.1507C>T', 'p.Arg503Cys', 'Heterozygous', 0.0005, 'Pathogenic', 'AutosomalDominant', 'HypertrophicCardiomyopathy', 'High risk of cardiac events', 'http://example.com/genetic/13001', 801, 'Reviewed', 'Patient advised cardiology referral', '2023-01-22', '2023-01-22', 1, '2023-03-01', 'Yes');
INSERT INTO GeneticTestResult VALUES (13002, 2, '2023-02-18', 'LabY', 'OncoPanel', 'TP53', 'VAR002', 'c.818G>A', 'p.Arg273His', 'Heterozygous', 0.0012, 'LikelyPathogenic', 'AutosomalDominant', 'LiFraumingioma', 'Increased cancer risk', 'http://example.com/genetic/13002', 802, 'Pending', 'Awaiting confirmatory test', '2023-02-18', '2023-02-18', 0, NULL, 'No');
INSERT INTO GeneticTestResult VALUES (13003, 3, '2023-03-30', 'LabZ', 'PharmaPanel', 'CYP2D6', 'VAR003', 'c.100C>T', 'p.Ala34Val', 'Homozygous', 0.025, 'Benign', 'None', 'DrugMetabolism', 'Normal metabolism', 'Result indicates standard dosage', 'http://example.com/genetic/13003', 803, 'Reviewed', 'No clinical action needed', '2023-03-30', '2023-03-30', 0, NULL, 'No');