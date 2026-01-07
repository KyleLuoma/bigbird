-- Examination equipment usage and maintenance log
CREATE TABLE ExaminationEquipmentLog
(
    LogID               INTEGER PRIMARY KEY,
    ExaminationID       INTEGER,
    EquipmentID         INTEGER,
    EquipmentName       TEXT,
    SerialNumber        TEXT,
    CalibrationDate     DATE,
    MaintenanceDue      DATE,
    Status              TEXT,
    OperatorID          INTEGER,
    Location            TEXT,
    UsageHours          REAL,
    LastServiceDate     DATE,
    WarrantyEnd         DATE,
    Manufacturer        TEXT,
    Model               TEXT,
    FirmwareVersion     TEXT,
    InspectionScore     INTEGER,
    Notes               TEXT,
    CreatedAt           DATE,
    UpdatedAt           DATE
);

INSERT INTO ExaminationEquipmentLog VALUES (1, 101, 2001, 'AutoAnalyzer', 'SN12345', '2022-06-15', '2023-06-15', 'Active', 501, 'LabA', 350.5, '2022-12-01', '2025-06-15', 'MedTech', 'AA-100', 'v1.2', 95, 'Routine check', '2023-01-01', '2023-01-01');
INSERT INTO ExaminationEquipmentLog VALUES (2, 102, 2002, 'Centrifuge', 'SN54321', '2021-09-10', '2022-09-10', 'Active', 502, 'LabB', 1200.0, '2022-03-20', '2024-09-10', 'BioSpin', 'CF-300', 'v3.0', 88, 'No issues', '2023-01-02', '2023-01-02');
INSERT INTO ExaminationEquipmentLog VALUES (3, 103, 2003, 'Spectrometer', 'SN98765', '2022-01-20', '2023-01-20', 'Inactive', 503, 'LabC', 0.0, NULL, '2025-01-20', 'SpecTech', 'SP-500', 'v2.5', 0, 'Decommissioned', '2023-01-03', '2023-01-03');

-- Reference ranges for laboratory tests
CREATE TABLE LaboratoryReferenceRange
(
    TestID              INTEGER PRIMARY KEY,
    TestName            TEXT,
    Unit                TEXT,
    MaleLow             REAL,
    MaleHigh            REAL,
    FemaleLow           REAL,
    FemaleHigh          REAL,
    AgeGroup            TEXT,
    Method              TEXT,
    ReferenceSource    TEXT,
    CreatedDate         DATE,
    UpdatedDate         DATE,
    Comment             TEXT,
    FlagLow             TEXT,
    FlagHigh            TEXT,
    IsCritical          INTEGER,
    StandardDeviation   REAL,
    SampleType          TEXT,
    SpecimenVolume      REAL,
    CalibrationDate     DATE,
    AnalystID           INTEGER
);

INSERT INTO LaboratoryReferenceRange VALUES (1, 'Hemoglobin', 'g/dL', 13.5, 17.5, 12.0, 15.5, 'Adult', 'Cyanmet', 'HospitalLab', '2023-01-01', '2023-01-01', 'Standard reference', 'Low', 'High', 1, 0.5, 'Blood', 5.0, '2022-12-01', 301);
INSERT INTO LaboratoryReferenceRange VALUES (2, 'Glucose', 'mg/dL', 70, 99, 70, 99, 'Fasting', 'Hexokinase', 'CDC', '2023-01-02', '2023-01-02', 'Fasting range', 'Low', 'High', 1, 5.0, 'Serum', 2.0, '2022-12-15', 302);
INSERT INTO LaboratoryReferenceRange VALUES (3, 'TSH', 'µIU/mL', 0.4, 4.0, 0.4, 4.0, 'Adult', 'Immunoassay', 'WHO', '2023-01-03', '2023-01-03', 'Thyroid function', 'Low', 'High', 0, 0.2, 'Serum', 1.5, '2022-11-20', 303);

-- Imaging study protocol definitions
CREATE TABLE ImagingStudyProtocol
(
    ProtocolID          INTEGER PRIMARY KEY,
    StudyType           TEXT,
    Modality            TEXT,
    ContrastUsed        TEXT,
    DoseLevel           TEXT,
    SequenceName        TEXT,
    TR                  REAL,
    TE                  REAL,
    FlipAngle           REAL,
    VoxelSize           TEXT,
    SliceThickness      REAL,
    FieldOfView         TEXT,
    AcquisitionTime     TEXT,
    ReconstructionAlgorithm TEXT,
    RadiologistID       INTEGER,
    ApprovalDate        DATE,
    Status              TEXT,
    Description         TEXT,
    CreatedBy           TEXT,
    UpdatedBy           TEXT
);

INSERT INTO ImagingStudyProtocol VALUES (1, 'Brain MRI', 'MRI', 'Gadolinium', 'Standard', 'T1Weighted', 500.0, 10.0, 90.0, '1x1x1', 1.0, '240mm', '5min', 'Fourier', 401, '2023-01-01', 'Active', 'Routine brain scan', 'admin', 'admin');
INSERT INTO ImagingStudyProtocol VALUES (2, 'Chest CT', 'CT', 'Iodine', 'Low', 'Helical', 0.0, 0.0, 0.0, '0.5x0.5x1', 1.5, '350mm', '1min', 'Iterative', 402, '2023-01-02', 'Active', 'High-resolution chest', 'admin', 'admin');
INSERT INTO ImagingStudyProtocol VALUES (3, 'Abdominal Ultrasound', 'US', 'None', 'N/A', 'BMode', 0.0, 0.0, 0.0, '0.3x0.3x0.5', 0.5, 'N/A', 'N/A', 'Standard', 403, '2023-01-03', 'Inactive', 'Basic abdominal exam', 'admin', 'admin');

-- Versions of clinical guidelines
CREATE TABLE ClinicalGuidelineVersion
(
    GuidelineID         INTEGER,
    VersionNumber       TEXT,
    EffectiveDate       DATE,
    ExpirationDate      DATE,
    Author              TEXT,
    Department          TEXT,
    Scope               TEXT,
    Summary             TEXT,
    DocumentPath        TEXT,
    ReviewCycleMonths   INTEGER,
    Status              TEXT,
    CreatedAt           DATE,
    UpdatedAt           DATE,
    ReviewerID          INTEGER,
    ChangeLog           TEXT,
    IsMandatory         INTEGER,
    ClinicalArea        TEXT,
    Keywords            TEXT,
    ApprovalSignature   TEXT,
    ImplementationDate  DATE,
    PRIMARY KEY (GuidelineID, VersionNumber)
);

INSERT INTO ClinicalGuidelineVersion VALUES (101, 'v1.0', '2023-01-01', '2025-12-31', 'DrSmith', 'Cardiology', 'Adult', 'Management of hypertension', '/guidelines/hypertn_v1.pdf', 12, 'Active', '2023-01-01', '2023-01-01', 501, 'Initial release', 1, 'Cardiology', 'hypertension,blood pressure', 'DrSmithSig', '2023-02-01');
INSERT INTO ClinicalGuidelineVersion VALUES (101, 'v1.1', '2024-01-01', '2026-12-31', 'DrJones', 'Cardiology', 'Adult', 'Updated hypertension thresholds', '/guidelines/hypertn_v1.1.pdf', 12, 'Active', '2024-01-01', '2024-01-01', 502, 'Adjusted thresholds', 1, 'Cardiology', 'hypertension,thresholds', 'DrJonesSig', '2024-02-01');
INSERT INTO ClinicalGuidelineVersion VALUES (102, 'v1.0', '2023-03-15', '2025-03-14', 'DrLee', 'Endocrinology', 'Pediatric', 'Diabetes care in children', '/guidelines/diabetes_ped_v1.pdf', 24, 'Active', '2023-03-15', '2023-03-15', 503, 'First version', 1, 'Endocrinology', 'diabetes,pediatrics', 'DrLeeSig', '2023-04-01');

-- Detailed results of genetic tests
CREATE TABLE GeneticTestResultDetails
(
    ResultID            INTEGER PRIMARY KEY,
    GeneticTestID       INTEGER,
    GeneSymbol          TEXT,
    VariantID           TEXT,
    VariantType         TEXT,
    NucleotideChange    TEXT,
    ProteinChange       TEXT,
    Zygosity            TEXT,
    AlleleFrequency     REAL,
    ClinVarSignificance TEXT,
    Interpretation      TEXT,
    ReportDate          DATE,
    Analyst             TEXT,
    Methodology         TEXT,
    QualityScore        REAL,
    CoverageDepth       INTEGER,
    ReferenceGenome     TEXT,
    Comments            TEXT,
    CreatedAt           DATE,
    UpdatedAt           DATE
);

INSERT INTO GeneticTestResultDetails VALUES (1, 3001, 'BRCA1', 'c.68_69del', 'Deletion', 'c.68_69del', 'p.Glu23Valfs', 'Heterozygous', 0.001, 'Pathogenic', 'High risk for breast cancer', '2023-01-10', 'AnalystA', 'NGS', 99.5, 250, 'GRCh38', 'Confirmed by Sanger', '2023-01-11', '2023-01-11');
INSERT INTO GeneticTestResultDetails VALUES (2, 3002, 'CFTR', 'c.1521_1523del', 'Deletion', 'c.1521_1523del', 'p.Phe508del', 'Homozygous', 0.005, 'Pathogenic', 'Cystic fibrosis diagnosis', '2023-01-12', 'AnalystB', 'NGS', 98.0, 200, 'GRCh38', 'Consistent with phenotype', '2023-01-13', '2023-01-13');
INSERT INTO GeneticTestResultDetails VALUES (3, 3003, 'APOE', 'rs429358', 'SNP', 'c.388T>C', 'p.Cys130Arg', 'Heterozygous', 0.15, 'Risk', 'Increased Alzheimer risk', '2023-01-14', 'AnalystC', 'Microarray', 95.0, 150, 'GRCh38', 'No clinical action', '2023-01-15', '2023-01-15');

-- Pharmacy batch receipt records
CREATE TABLE PharmacyBatchRecord
(
    BatchID             INTEGER PRIMARY KEY,
    DrugName            TEXT,
    DosageForm          TEXT,
    Strength            TEXT,
    Quantity            INTEGER,
    Manufacturer        TEXT,
    LotNumber           TEXT,
    ExpirationDate      DATE,
    ReceivedDate        DATE,
    StoredLocation      TEXT,
    TemperatureControl  TEXT,
    QAStatus            TEXT,
    ReleaseDate         DATE,
    ApprovedBy          TEXT,
    BatchStatus         TEXT,
    UnitPrice           REAL,
    TotalCost           REAL,
    SupplierID          INTEGER,
    CreatedBy           TEXT,
    UpdatedBy           TEXT
);

INSERT INTO PharmacyBatchRecord VALUES (1001, 'Amoxicillin', 'Capsule', '500mg', 20000, 'PharmaInc', 'L12345', '2024-12-31', '2023-01-05', 'WarehouseA', 'RoomTemp', 'Passed', '2023-01-06', 'PharmTech1', 'Available', 0.05, 1000.0, 401, 'admin', 'admin');
INSERT INTO PharmacyBatchRecord VALUES (1002, 'Lisinopril', 'Tablet', '10mg', 15000, 'MediCorp', 'L67890', '2025-06-30', '2023-01-07', 'WarehouseB', 'RoomTemp', 'Passed', '2023-01-08', 'PharmTech2', 'Available', 0.08, 1200.0, 402, 'admin', 'admin');
INSERT INTO PharmacyBatchRecord VALUES (1003, 'Metformin', 'Tablet', '850mg', 25000, 'HealWell', 'L54321', '2024-03-31', '2023-01-09', 'WarehouseC', 'RoomTemp', 'Pending', NULL, 'PharmTech3', 'Quarantine', 0.04, 1000.0, 403, 'admin', 'admin');

-- Maintenance logs for medical equipment
CREATE TABLE EquipmentMaintenanceLog
(
    MaintenanceID       INTEGER PRIMARY KEY,
    EquipmentID         INTEGER,
    EquipmentName       TEXT,
    MaintenanceType     TEXT,
    PerformedBy         TEXT,
    ServiceDate         DATE,
    NextDueDate         DATE,
    DowntimeHours       REAL,
    Cost                REAL,
    Vendor              TEXT,
    PartsReplaced       TEXT,
    WorkOrderNumber     TEXT,
    ChecklistCompleted  TEXT,
    Comments            TEXT,
    CreatedAt           DATE,
    UpdatedAt           DATE,
    Status              TEXT,
    Location            TEXT,
    WarrantyCovered     INTEGER,
    ApprovalSignature   TEXT
);

INSERT INTO EquipmentMaintenanceLog VALUES (5001, 2001, 'AutoAnalyzer', 'Calibration', 'TechA', '2023-01-10', '2023-07-10', 2.0, 150.0, 'CalibCo', 'SensorModule', 'WO1001', 'Yes', 'All parameters within specs', '2023-01-10', '2023-01-10', 'Completed', 'LabA', 1, 'DrSmith');
INSERT INTO EquipmentMaintenanceLog VALUES (5002, 2002, 'Centrifuge', 'Preventive', 'TechB', '2023-01-12', '2023-07-12', 1.5, 200.0, 'MaintCo', 'Rotor', 'WO1002', 'Yes', 'Rotor balanced', '2023-01-12', '2023-01-12', 'Completed', 'LabB', 1, 'DrJones');
INSERT INTO EquipmentMaintenanceLog VALUES (5003, 2003, 'Spectrometer', 'Repair', 'TechC', '2023-01-15', '2023-07-15', 4.0, 500.0, 'RepairCo', 'LaserModule', 'WO1003', 'No', 'Laser alignment needed', '2023-01-15', '2023-01-15', 'InProgress', 'LabC', 0, 'DrLee');

-- Enrollment records for research trials
CREATE TABLE ResearchTrialEnrollment
(
    EnrollmentID        INTEGER PRIMARY KEY,
    TrialID             INTEGER,
    ParticipantID       INTEGER,
    EnrollmentDate      DATE,
    ConsentFormID       INTEGER,
    RandomizationGroup  TEXT,
    DoseLevel           TEXT,
    VisitSchedule       TEXT,
    InvestigatorID      INTEGER,
    SiteID              INTEGER,
    EligibilityStatus   TEXT,
    ScreeningResult     TEXT,
    BaselineVisitDate   DATE,
    FollowUpDurationMonths INTEGER,
    Status              TEXT,
    CreatedAt           DATE,
    UpdatedAt           DATE,
    Notes               TEXT,
    DataLockDate        DATE,
    MonitoringContact   TEXT
);

INSERT INTO ResearchTrialEnrollment VALUES (7001, 9001, 10101, '2023-01-20', 8001, 'Placebo', 'Low', 'Monthly', 601, 701, 'Eligible', 'Pass', '2023-02-01', 12, 'Active', '2023-01-20', '2023-01-20', 'No issues', '2023-06-30', 'MonitorA');
INSERT INTO ResearchTrialEnrollment VALUES (7002, 9002, 10102, '2023-01-22', 8002, 'Active', 'High', 'Biweekly', 602, 702, 'Eligible', 'Pass', '2023-02-05', 24, 'Active', '2023-01-22', '2023-01-22', 'Requires extra monitoring', '2023-12-31', 'MonitorB');
INSERT INTO ResearchTrialEnrollment VALUES (7003, 9003, 10103, '2023-01-25', 8003, 'Placebo', 'Medium', 'Quarterly', 603, 703, 'Ineligible', 'Fail', NULL, 0, 'Withdrawn', '2023-01-25', '2023-01-25', 'Did not meet inclusion criteria', NULL, 'MonitorC');

-- Detailed facility energy metrics
CREATE TABLE FacilityEnergyMetricDetail
(
    MetricID            INTEGER PRIMARY KEY,
    FacilityID          INTEGER,
    MetricDate          DATE,
    EnergyType          TEXT,
    ConsumptionKWh      REAL,
    CostUSD             REAL,
    CO2EmissionsKg     REAL,
    PeakDemandKW        REAL,
    OffPeakConsumptionKWh REAL,
    RenewableSharePct   REAL,
    SourceDetail        TEXT,
    RecordedBy          TEXT,
    CreatedAt           DATE,
    UpdatedAt           DATE,
    VerificationStatus  TEXT,
    Comments            TEXT,
    MeterID             TEXT,
    Voltage             REAL,
    Current             REAL,
    PowerFactor         REAL
);

INSERT INTO FacilityEnergyMetricDetail VALUES (9001, 1, '2023-01-01', 'Electricity', 12000.5, 1500.0, 8000.0, 250.0, 8000.0, 15.0, 'Grid', 'EngTech1', '2023-01-01', '2023-01-01', 'Verified', 'Normal month', 'MTR1001', 230.0, 52.0, 0.95);
INSERT INTO FacilityEnergyMetricDetail VALUES (9002, 1, '2023-02-01', 'Electricity', 11500.0, 1430.0, 7700.0, 240.0, 7700.0, 16.5, 'Grid', 'EngTech2', '2023-02-01', '2023-02-01', 'Verified', 'Slight decrease', 'MTR1002', 230.0, 50.0, 0.96);
INSERT INTO FacilityEnergyMetricDetail VALUES (9003, 1, '2023-03-01', 'Electricity', 13000.3, 1625.0, 8600.0, 260.0, 9000.0, 14.0, 'Grid', 'EngTech3', '2023-03-01', '2023-03-01', 'Verified', 'Higher usage due to HVAC', 'MTR1003', 230.0, 57.0, 0.94);

-- Wearable device data captured from patients
CREATE TABLE PatientWearableDeviceData
(
    RecordID            INTEGER PRIMARY KEY,
    PatientID           INTEGER,
    DeviceID            INTEGER,
    DeviceType          TEXT,
    Timestamp           DATE,
    HeartRate           INTEGER,
    Steps               INTEGER,
    SleepHours          REAL,
    CaloriesBurned      REAL,
    SkinTempC           REAL,
    SpO2                INTEGER,
    ActivityLevel       TEXT,
    BatteryLevelPct     INTEGER,
    FirmwareVersion     TEXT,
    DataQualityFlag     TEXT,
    SyncStatus          TEXT,
    CreatedAt           DATE,
    UpdatedAt           DATE,
    Location            TEXT,
    Notes               TEXT
);

INSERT INTO PatientWearableDeviceData VALUES (10001, 101, 501, 'FitBand', '2023-01-01', 72, 5000, 7.5, 2200.0, 36.5, 98, 'Moderate', 85, 'v1.0', 'Good', 'Synced', '2023-01-01', '2023-01-01', 'Room101', '');
INSERT INTO PatientWearableDeviceData VALUES (10002, 102, 502, 'SmartWatch', '2023-01-01', 80, 7500, 6.0, 2500.0, 37.0, 97, 'Active', 90, 'v2.1', 'Good', 'Synced', '2023-01-01', '2023-01-01', 'Room202', '');
INSERT INTO PatientWearableDeviceData VALUES (10003, 103, 503, 'HealthPatch', '2023-01-01', 65, 3000, 8.0, 1800.0, 35.8, 99, 'Rest', 70, 'v1.5', 'Good', 'Synced', '2023-01-01', '2023-01-01', 'Room303', '');