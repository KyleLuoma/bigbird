-- Cardiac Echo Report table
CREATE TABLE CardiacEchoReport (
    ReportID INTEGER PRIMARY KEY,
    PatientID INTEGER NOT NULL,
    ExamDate DATE NOT NULL,
    LeftVentricleEF REAL,
    LVEDD REAL,
    LVESD REAL,
    InterventricularSeptumThickness REAL,
    PosteriorWallThickness REAL,
    LA_Area REAL,
    RA_Area REAL,
    MitralValveRegurgitation TEXT,
    TricuspidValveRegurgitation TEXT,
    AorticValveVelocity REAL,
    PulmonaryArteryPressure REAL,
    DiastolicFunctionGrade INTEGER,
    SystolicFunctionGrade INTEGER,
    RightVentricleFunction TEXT,
    PericardialEffusion TEXT,
    Comments TEXT,
    TechnicianID INTEGER,
    DeviceSerial TEXT,
    LabLocation TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);
INSERT INTO CardiacEchoReport VALUES (1, 101, '2025-03-15', 62.5, 5.2, 3.5, 1.1, 0.9, 18.0, 12.5, 'None', 'Mild', 1.8, 25.0, 2, 1, 'Normal', 'None', 'Followup in 6 months', 12, 'Echo12345', 'CardiologyLab');
INSERT INTO CardiacEchoReport VALUES (2, 102, '2025-04-01', 55.0, 5.5, 4.0, 1.2, 1.0, 20.0, 14.0, 'Moderate', 'None', 2.0, 30.0, 3, 2, 'Reduced', 'Small', 'Consider medication', 13, 'Echo54321', 'CardiologyLab');
INSERT INTO CardiacEchoReport VALUES (3, 103, '2025-04-10', 70.0, 4.8, 3.2, 1.0, 0.8, 16.0, 11.0, 'None', 'None', 1.6, 22.0, 1, 1, 'Normal', 'None', 'Stable', 14, 'Echo67890', 'CardiologyLab');

-- Pulmonary Function Test table
CREATE TABLE PulmonaryFunctionTest (
    TestID INTEGER PRIMARY KEY,
    PatientID INTEGER NOT NULL,
    TestDate DATE NOT NULL,
    FEV1 REAL,
    FVC REAL,
    FEV1_FVC_Ratio REAL,
    PEFR REAL,
    MVV REAL,
    DLCO REAL,
    TLC REAL,
    RV REAL,
    IC REAL,
    PEF25_75 REAL,
    BronchodilatorResponse TEXT,
    SmokingStatus TEXT,
    ExposureHistory TEXT,
    SymptomsReported TEXT,
    TechnicianID INTEGER,
    DeviceModel TEXT,
    LabLocation TEXT,
    Comments TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);
INSERT INTO PulmonaryFunctionTest VALUES (1, 101, '2025-05-01', 2.8, 3.2, 0.88, 400, 120, 22, 5.5, 1.2, 250, 'Positive', 'FormerSmoker', 'Dust', 'Dyspnea', 21, 'SpiroX100', 'PulmonaryLab', 'Repeat in 1 year');
INSERT INTO PulmonaryFunctionTest VALUES (2, 104, '2025-05-03', 1.9, 2.5, 0.76, 300, 100, 18, 4.8, 1.0, 200, 'Negative', 'NeverSmoked', 'None', 'Cough', 22, 'SpiroY200', 'PulmonaryLab', 'Start inhaler');
INSERT INTO PulmonaryFunctionTest VALUES (3, 105, '2025-05-05', 3.0, 3.6, 0.83, 420, 130, 24, 6.0, 1.5, 260, 'Positive', 'CurrentSmoker', 'Chemicals', 'Wheeze', 23, 'SpiroZ300', 'PulmonaryLab', 'Smoking cessation advised');

-- Medical Device Warranty table
CREATE TABLE MedicalDeviceWarranty (
    WarrantyID INTEGER PRIMARY KEY,
    DeviceSerial TEXT NOT NULL,
    DeviceType TEXT,
    Manufacturer TEXT,
    PurchaseDate DATE,
    WarrantyStart DATE,
    WarrantyEnd DATE,
    ServiceContractNumber TEXT,
    CoverageDetails TEXT,
    ExtendedWarranty BOOLEAN,
    ExtensionEndDate DATE,
    ServiceLevel TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    InstallationDate DATE,
    Location TEXT,
    AssignedDepartment TEXT,
    CurrentStatus TEXT,
    Notes TEXT,
    UpdatedBy INTEGER,
    UpdateTimestamp DATE,
    FOREIGN KEY (UpdatedBy) REFERENCES StaffShift(StaffID)
);
INSERT INTO MedicalDeviceWarranty VALUES (1, 'MD001A', 'Ventilator', 'MedTech', '2022-01-15', '2022-01-20', '2024-01-20', 'SC1001', 'Full coverage', 1, '2025-01-20', 'Premium', '5551234', 'tech@medtech.com', '2022-02-01', 'ICU', 'IntensiveCare', 'Active', 'No issues', 101, '2025-01-10');
INSERT INTO MedicalDeviceWarranty VALUES (2, 'MD002B', 'MRI Scanner', 'ImagiCo', '2020-06-10', '2020-06-15', '2025-06-15', 'SC2002', 'Limited coverage', 0, NULL, 'Standard', '5555678', 'support@imagico.com', '2020-07-01', 'Radiology', 'Imaging', 'Active', 'Calibration due', 102, '2025-01-12');
INSERT INTO MedicalDeviceWarranty VALUES (3, 'MD003C', 'Infusion Pump', 'HealthEquip', '2023-03-05', '2023-03-10', '2026-03-10', 'SC3003', 'Full coverage with parts', 1, '2027-03-10', 'Gold', '5559012', 'service@healthequip.com', '2023-03-20', 'Oncology', 'Chemotherapy', 'Active', 'Battery replaced', 103, '2025-01-15');

-- Clinical Trial Phase Detail table
CREATE TABLE ClinicalTrialPhaseDetail (
    PhaseDetailID INTEGER PRIMARY KEY,
    TrialID INTEGER NOT NULL,
    PhaseNumber INTEGER NOT NULL,
    StartDate DATE,
    EndDate DATE,
    EnrollmentTarget INTEGER,
    EnrolledCount INTEGER,
    PrimaryEndpoint TEXT,
    SecondaryEndpoint TEXT,
    SuccessCriteria TEXT,
    MonitoringBoard TEXT,
    DataSafetyCommittee TEXT,
    RegulatoryAuthority TEXT,
    Sponsor TEXT,
    FundingAmount REAL,
    SiteCount INTEGER,
    SitesParticipating TEXT,
    AdverseEventRate REAL,
    InterimAnalysisDate DATE,
    FinalReportDate DATE,
    Comments TEXT,
    FOREIGN KEY (TrialID) REFERENCES ClinicalTrialEnrollment(TrialID)
);
INSERT INTO ClinicalTrialPhaseDetail VALUES (1, 1001, 1, '2024-01-01', '2024-06-30', 100, 95, 'Safety', 'Pharmacokinetics', 'No Grade 3+ AEs', 'BoardA', 'DSC1', 'FDA', 'PharmaCo', 5000000, 10, 'SiteA;SiteB;SiteC', 0.02, '2024-04-15', '2024-07-15', 'Phase 1 completed');
INSERT INTO ClinicalTrialPhaseDetail VALUES (2, 1001, 2, '2024-07-01', '2025-12-31', 300, 280, 'Efficacy', 'Quality of Life', 'Improvement >20%', 'BoardB', 'DSC2', 'EMA', 'PharmaCo', 15000000, 25, 'SiteD;SiteE;SiteF', 0.05, '2025-06-01', '2026-01-15', 'Phase 2 ongoing');
INSERT INTO ClinicalTrialPhaseDetail VALUES (3, 1002, 1, '2023-03-01', '2023-09-30', 50, 50, 'Safety', 'Biomarker', 'No serious AEs', 'BoardC', 'DSC3', 'HealthCanada', 'BioGen', 2000000, 5, 'SiteG;SiteH', 0.01, '2023-07-15', '2023-10-15', 'Phase 1 successful');

-- Patient Referral Network table
CREATE TABLE PatientReferralNetwork (
    ReferralID INTEGER PRIMARY KEY,
    PatientID INTEGER NOT NULL,
    ReferringProviderID INTEGER,
    ReferredToProviderID INTEGER,
    ReferralDate DATE,
    Reason TEXT,
    DiagnosisAtReferral TEXT,
    PriorityLevel TEXT,
    FollowUpRequired BOOLEAN,
    FollowUpDate DATE,
    ReferralStatus TEXT,
    Notes TEXT,
    CreatedBy INTEGER,
    CreatedAt DATE,
    UpdatedBy INTEGER,
    UpdatedAt DATE,
    InsuranceCoverage TEXT,
    ExpectedVisitCount INTEGER,
    ActualVisitCount INTEGER,
    Outcome TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);
INSERT INTO PatientReferralNetwork VALUES (1, 101, 201, 301, '2025-02-10', 'Chest Pain', 'Angina', 'High', 1, '2025-02-20', 'Pending', 'Awaiting acceptance', 401, '2025-02-10', 402, '2025-02-11', 'Full', 3, 0, 'Open');
INSERT INTO PatientReferralNetwork VALUES (2, 104, 202, 302, '2025-03-05', 'Elevated BP', 'Hypertension', 'Medium', 1, '2025-03-12', 'Accepted', 'First appointment scheduled', 403, '2025-03-05', 404, '2025-03-06', 'Partial', 2, 0, 'Open');
INSERT INTO PatientReferralNetwork VALUES (3, 105, 203, 303, '2025-04-01', 'Abnormal Liver Tests', 'Hepatitis', 'Low', 0, NULL, 'Closed', 'No further action', 405, '2025-04-01', 406, '2025-04-02', 'None', 1, 1, 'Resolved');

-- Lab Specimen Storage table
CREATE TABLE LabSpecimenStorage (
    StorageID INTEGER PRIMARY KEY,
    SpecimenID TEXT NOT NULL,
    PatientID INTEGER NOT NULL,
    CollectionDate DATE,
    SpecimenType TEXT,
    StorageLocation TEXT,
    TemperatureC REAL,
    ContainerType TEXT,
    VolumeML REAL,
    Barcode TEXT,
    CustodianID INTEGER,
    QualityScore INTEGER,
    FreezeThawCycles INTEGER,
    CurrentStatus TEXT,
    RetrievalDate DATE,
    RetrievalReason TEXT,
    LastInspectionDate DATE,
    InspectionResult TEXT,
    Comments TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);
INSERT INTO LabSpecimenStorage VALUES (1, 'SP001', 101, '2025-01-15', 'Blood', 'FreezerA1', -80.0, 'Cryovial', 1.5, 'BC001', 501, 95, 0, 'Stored', NULL, NULL, '2025-03-01', 'Pass', 'No issues');
INSERT INTO LabSpecimenStorage VALUES (2, 'SP002', 104, '2025-02-20', 'Urine', 'FreezerB2', -20.0, 'Bottle', 10.0, 'BC002', 502, 88, 1, 'Stored', NULL, NULL, '2025-04-01', 'Pass', 'One freeze-thaw');
INSERT INTO LabSpecimenStorage VALUES (3, 'SP003', 105, '2025-03-10', 'Tissue', 'FreezerC3', -80.0, 'SnapFrozen', 0.5, 'BC003', 503, 92, 0, 'Stored', NULL, NULL, '2025-05-01', 'Pass', 'Ready for analysis');

-- Radiology Radiopharmaceutical table
CREATE TABLE RadiologyRadiopharmaceutical (
    RadioPharmID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Manufacturer TEXT,
    ProductionLot TEXT,
    ExpirationDate DATE,
    ActivityMBq REAL,
    DoseMg REAL,
    AdminRoute TEXT,
    AdminTime DATE,
    PatientID INTEGER,
    ImagingStudyID INTEGER,
    StorageTempC REAL,
    ShieldingRequired BOOLEAN,
    DisposalMethod TEXT,
    SafetyNotes TEXT,
    QCResult TEXT,
    ReleasedBy INTEGER,
    ReleaseDate DATE,
    Comments TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);
INSERT INTO RadiologyRadiopharmaceutical VALUES (1, 'FDG', 'Sigma', 'L001', '2025-06-30', 370.0, 0.0, 'IV', '2025-05-10', 101, 901, 4.0, 1, 'RadioactiveWaste', 'No spills', 'Pass', 601, '2025-05-09', 'Standard dose');
INSERT INTO RadiologyRadiopharmaceutical VALUES (2, 'Tc99m_MDP', 'GEHealthcare', 'L002', '2025-07-15', 740.0, 0.0, 'IV', '2025-05-12', 104, 902, 4.0, 1, 'RadioactiveWaste', 'Handle with lead', 'Pass', 602, '2025-05-11', 'Bone scan');
INSERT INTO RadiologyRadiopharmaceutical VALUES (3, 'I123_MIBG', 'Philips', 'L003', '2025-08-01', 185.0, 0.0, 'IV', '2025-05-15', 105, 903, 4.0, 1, 'RadioactiveWaste', 'Isolate', 'Pass', 603, '2025-05-14', 'Cardiac imaging');

-- Pharmacy Compounding Formula table
CREATE TABLE PharmacyCompoundingFormula (
    FormulaID INTEGER PRIMARY KEY,
    FormulaName TEXT NOT NULL,
    CompoundType TEXT,
    Strength TEXT,
    VolumeML REAL,
    BaseIngredient TEXT,
    ActiveIngredient TEXT,
    ConcentrationMgPerML REAL,
    PreparationMethod TEXT,
    EquipmentRequired TEXT,
    ShelfLifeDays INTEGER,
    StorageCondition TEXT,
    StabilityNotes TEXT,
    ApprovedBy INTEGER,
    ApprovalDate DATE,
    BatchNumberPrefix TEXT,
    QCParameters TEXT,
    Notes TEXT,
    CreatedBy INTEGER,
    CreatedDate DATE,
    UpdatedBy INTEGER,
    UpdatedDate DATE
);
INSERT INTO PharmacyCompoundingFormula VALUES (1, 'PainReliefCream', 'Topical', '5%', 30.0, 'AloeVeraGel', 'Ibuprofen', 0.5, 'Mix at 25C', 'MixerA', 365, 'CoolDry', 'Stable for 1 year', 701, '2024-12-01', 'PRC', 'pH7;Viscosity', 'For minor pain', 702, '2024-12-02', 703, '2025-01-01');
INSERT INTO PharmacyCompoundingFormula VALUES (2, 'AntibioticSuspension', 'Oral', '250mg/5ml', 100.0, 'Water', 'Ceftriaxone', 50.0, 'Stir until dissolved', 'StirrerB', 180, 'Refrigerated', 'Protect from light', 704, '2025-02-10', 'ABS', 'Clarity;ParticleCount', 'Pediatric use', 705, '2025-02-11', 706, '2025-03-01');
INSERT INTO PharmacyCompoundingFormula VALUES (3, 'ElectrolyteIV', 'IV', 'NaCl 0.9%', 500.0, 'SterileWater', 'SodiumChloride', 9.0, 'Aseptic fill', 'FillerC', 730, 'RoomTemp', 'Check for precipitation', 707, '2025-01-20', 'ELI', 'Osmolality;pH', 'General hydration', 708, '2025-01-21', 709, '2025-02-15');

-- Health Insurance Claim Log table
CREATE TABLE HealthInsuranceClaimLog (
    ClaimLogID INTEGER PRIMARY KEY,
    ClaimNumber TEXT NOT NULL,
    PatientID INTEGER NOT NULL,
    ProviderID INTEGER,
    ServiceDate DATE,
    BilledAmount REAL,
    AllowedAmount REAL,
    PatientResponsibility REAL,
    ClaimStatus TEXT,
    SubmissionDate DATE,
    AdjudicationDate DATE,
    Payer TEXT,
    ClaimType TEXT,
    DiagnosisCode TEXT,
    ProcedureCode TEXT,
    PriorAuthorization BOOLEAN,
    AuthorizationNumber TEXT,
    AppealFlag BOOLEAN,
    AppealReason TEXT,
    ResolvedDate DATE,
    Comments TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);
INSERT INTO HealthInsuranceClaimLog VALUES (1, 'CLM0001', 101, 301, '2025-04-20', 1500.00, 1200.00, 300.00, 'Pending', '2025-04-22', NULL, 'BlueCross', 'Inpatient', 'I10', '99213', 0, NULL, 0, NULL, NULL, 'Initial submission');
INSERT INTO HealthInsuranceClaimLog VALUES (2, 'CLM0002', 104, 302, '2025-05-01', 200.00, 150.00, 50.00, 'Denied', '2025-05-03', '2025-05-10', 'Medicare', 'Outpatient', 'J45', '90471', 1, 'AUTH123', 1, 'Insufficient documentation', '2025-05-15', 'Appeal filed');
INSERT INTO HealthInsuranceClaimLog VALUES (3, 'CLM0003', 105, 303, '2025-05-12', 800.00, 650.00, 150.00, 'Approved', '2025-05-14', '2025-05-20', 'Aetna', 'Emergency', 'R07.9', '99285', 0, NULL, 0, NULL, NULL, 'Processed without issues');

-- Hospital Room Assignment History table
CREATE TABLE HospitalRoomAssignmentHistory (
    AssignmentID INTEGER PRIMARY KEY,
    PatientID INTEGER NOT NULL,
    RoomNumber TEXT NOT NULL,
    Ward TEXT,
    BedNumber TEXT,
    AdmissionDate DATE,
    DischargeDate DATE,
    AssignedBy INTEGER,
    AssignmentReason TEXT,
    TransferFlag BOOLEAN,
    PreviousRoom TEXT,
    TransferDate DATE,
    AttendingPhysicianID INTEGER,
    Notes TEXT,
    CreatedAt DATE,
    CreatedBy INTEGER,
    UpdatedAt DATE,
    UpdatedBy INTEGER,
    Status TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);
INSERT INTO HospitalRoomAssignmentHistory VALUES (1, 101, '101A', 'Cardiology', 'Bed01', '2025-03-01', '2025-03-10', 401, 'Acute care', 0, NULL, NULL, 501, 'Stable', '2025-03-01', 401, '2025-03-10', 401, 'Discharged');
INSERT INTO HospitalRoomAssignmentHistory VALUES (2, 104, '202B', 'Neurology', 'Bed02', '2025-04-05', NULL, 402, 'Observation', 1, '200A', '2025-04-07', 502, 'Transferred for monitoring', '2025-04-05', 402, NULL, NULL, 'Active');
INSERT INTO HospitalRoomAssignmentHistory VALUES (3, 105, '303C', 'Oncology', 'Bed03', '2025-04-20', NULL, 403, 'Chemotherapy', 0, NULL, NULL, 503, 'Awaiting next cycle', '2025-04-20', 403, NULL, NULL, 'Active');