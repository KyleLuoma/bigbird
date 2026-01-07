-- Table to track patient outcomes after clinical encounters
CREATE TABLE PatientOutcomeTracking
(
    RecordID                 INTEGER PRIMARY KEY,
    PatientID                INTEGER,
    EncounterDate            DATE,
    OutcomeScore             INTEGER,
    FollowUpDate             DATE,
    ClinicianID              INTEGER,
    MedicationAdherence      INTEGER,
    LifestyleScore           INTEGER,
    MobilityStatus           TEXT,
    PainLevel                INTEGER,
    DepressionScore          INTEGER,
    AnxietyScore             INTEGER,
    HospitalStayDays         INTEGER,
    ReadmissionFlag          INTEGER,
    DischargeDisposition     TEXT,
    Notes                    TEXT,
    SurveyCompleted          INTEGER,
    InterventionType         TEXT,
    RiskCategory             TEXT,
    UpdateTimestamp          DATE
);

INSERT INTO PatientOutcomeTracking VALUES (1, 101, '2023-01-15', 85, '2023-02-15', 201, 1, 70, 'Independent', 2, 5, 3, 4, 0, 'Home', 'All good', 1, 'PhysicalTherapy', 'Low', '2023-01-16');
INSERT INTO PatientOutcomeTracking VALUES (2, 102, '2023-02-10', 60, '2023-03-10', 202, 0, 50, 'Assisted', 5, 12, 10, 7, 1, 'Rehab', 'Needs follow up', 0, 'MedicationAdjustment', 'Medium', '2023-02-11');
INSERT INTO PatientOutcomeTracking VALUES (3, 103, '2023-03-05', 92, '2023-04-05', 203, 1, 80, 'Independent', 1, 2, 1, 2, 0, 'Home', 'Excellent recovery', 1, 'DietaryCounseling', 'Low', '2023-03-06');

-- Extended competency matrix for staff members
CREATE TABLE StaffCompetencyMatrixExtended
(
    MatrixID               INTEGER PRIMARY KEY,
    StaffID                INTEGER,
    Department             TEXT,
    Role                   TEXT,
    CompetencyLevel        INTEGER,
    LastAssessmentDate     DATE,
    AssessmentScore        INTEGER,
    TrainingHours          INTEGER,
    CertificationStatus    TEXT,
    YearsExperience        INTEGER,
    SupervisorID           INTEGER,
    SkillArea1             TEXT,
    SkillArea2             TEXT,
    SkillArea3             TEXT,
    SkillArea4             TEXT,
    SkillArea5             TEXT,
    DevelopmentPlan        TEXT,
    NextReviewDate         DATE,
    Remarks                TEXT,
    RecordCreated          DATE
);

INSERT INTO StaffCompetencyMatrixExtended VALUES (1, 301, 'Radiology', 'Technician', 4, '2023-01-20', 88, 30, 'Certified', 5, 401, 'Imaging', 'Safety', 'Calibration', 'DataEntry', 'Quality', 'AdvancedImagingCourse', '2023-07-01', 'Meets expectations', '2023-01-21');
INSERT INTO StaffCompetencyMatrixExtended VALUES (2, 302, 'Pathology', 'LabScientist', 5, '2023-02-15', 94, 45, 'BoardCertified', 8, 402, 'Microscopy', 'Molecular', 'DataAnalysis', 'Regulation', 'Research', 'LeadershipProgram', '2023-08-15', 'Outstanding', '2023-02-16');
INSERT INTO StaffCompetencyMatrixExtended VALUES (3, 303, 'Administration', 'Coordinator', 3, '2023-03-10', 76, 20, 'Certified', 3, 403, 'Scheduling', 'Reporting', 'Compliance', 'Communication', 'Budgeting', 'ProjectManagementCourse', '2023-09-10', 'Satisfactory', '2023-03-11');

-- Monitoring of cold chain conditions for pharmacy shipments
CREATE TABLE PharmacyColdChainMonitoring
(
    MonitoringID          INTEGER PRIMARY KEY,
    BatchID               TEXT,
    ProductName           TEXT,
    StorageLocation       TEXT,
    StartTemp             REAL,
    EndTemp               REAL,
    AvgTemp               REAL,
    TempDeviationFlag    INTEGER,
    MonitoringStart       DATE,
    MonitoringEnd         DATE,
    OperatorID            INTEGER,
    DeviceID              TEXT,
    AlarmTriggered        INTEGER,
    LogNotes              TEXT,
    ComplianceStatus      TEXT,
    VerifiedBy            INTEGER,
    VerificationDate      DATE,
    ShipmentID            TEXT,
    CarrierName           TEXT,
    RecordTimestamp       DATE
);

INSERT INTO PharmacyColdChainMonitoring VALUES (1, 'BATCH001', 'VaccineA', 'Freezer1', -70.0, -68.5, -69.2, 0, '2023-01-01', '2023-01-02', 501, 'DEV1001', 0, 'All temps within range', 'Compliant', 601, '2023-01-03', 'SHIP123', 'CarrierX', '2023-01-03');
INSERT INTO PharmacyColdChainMonitoring VALUES (2, 'BATCH002', 'InsulinB', 'Refrigerator2', 2.0, 4.5, 3.0, 1, '2023-02-10', '2023-02-11', 502, 'DEV1002', 1, 'Temp spike detected', 'NonCompliant', 602, '2023-02-12', 'SHIP124', 'CarrierY', '2023-02-12');
INSERT INTO PharmacyColdChainMonitoring VALUES (3, 'BATCH003', 'AntibioticC', 'RoomTemp3', 20.0, 22.0, 21.0, 0, '2023-03-15', '2023-03-16', 503, 'DEV1003', 0, 'Stable', 'Compliant', 603, '2023-03-17', 'SHIP125', 'CarrierZ', '2023-03-17');

-- Records of radiation exposure from radiology studies
CREATE TABLE RadiologyRadiationExposure
(
    ExposureID                INTEGER PRIMARY KEY,
    PatientID                 INTEGER,
    StudyID                   TEXT,
    Modality                  TEXT,
    ExposureDate              DATE,
    Dose_mGy                  REAL,
    DoseRate_mGy_per_s        REAL,
    BodyPart                  TEXT,
    Technique                 TEXT,
    TechnicianID              INTEGER,
    PhysicianID               INTEGER,
    CumulativeDose_mGy        REAL,
    PriorExposures            INTEGER,
    Comments                  TEXT,
    RadiationSafetyOfficerID  INTEGER,
    ApprovalStatus            TEXT,
    AuditFlag                 INTEGER,
    RecordCreated             DATE,
    UpdatedBy                 INTEGER,
    UpdateTimestamp           DATE
);

INSERT INTO RadiologyRadiationExposure VALUES (1, 101, 'STUDY001', 'CT', '2023-01-10', 12.5, 0.8, 'Chest', 'Helical', 701, 801, 45.0, 3, 'Normal', 901, 'Approved', 0, '2023-01-11', 1001, '2023-01-12');
INSERT INTO RadiologyRadiationExposure VALUES (2, 102, 'STUDY002', 'XRay', '2023-02-20', 0.5, 0.2, 'Arm', 'SingleView', 702, 802, 22.0, 1, 'Low dose', 902, 'Approved', 0, '2023-02-21', 1002, '2023-02-22');
INSERT INTO RadiologyRadiationExposure VALUES (3, 103, 'STUDY003', 'Fluoroscopy', '2023-03-15', 8.0, 1.5, 'Abdomen', 'Continuous', 703, 803, 30.0, 2, 'Monitor closely', 903, 'Pending', 1, '2023-03-16', 1003, '2023-03-17');

-- Depreciation tracking for laboratory equipment
CREATE TABLE LaboratoryEquipmentDepreciation
(
    AssetID                  INTEGER PRIMARY KEY,
    EquipmentName            TEXT,
    PurchaseDate             DATE,
    PurchaseCost             REAL,
    DepreciationMethod      TEXT,
    UsefulLifeYears         INTEGER,
    AccumulatedDepreciation REAL,
    CurrentBookValue        REAL,
    Location                 TEXT,
    Supplier                 TEXT,
    WarrantyEndDate          DATE,
    MaintenanceContractID    INTEGER,
    LastMaintenanceDate      DATE,
    NextMaintenanceDue       DATE,
    ResponsibleTechnicianID  INTEGER,
    AssetTag                 TEXT,
    SerialNumber             TEXT,
    Department               TEXT,
    Status                   TEXT,
    RecordTimestamp          DATE
);

INSERT INTO LaboratoryEquipmentDepreciation VALUES (1, 'Centrifuge', '2020-05-01', 15000.0, 'StraightLine', 10, 4500.0, 10500.0, 'LabA', 'BioSupplies', '2023-05-01', 301, '2023-01-15', '2023-07-15', 401, 'TAG001', 'SN12345', 'Hematology', 'Active', '2023-01-16');
INSERT INTO LaboratoryEquipmentDepreciation VALUES (2, 'Spectrometer', '2019-03-10', 25000.0, 'DoubleDeclining', 8, 12500.0, 12500.0, 'LabB', 'ChemTech', '2022-03-10', 302, '2022-12-01', '2023-06-01', 402, 'TAG002', 'SN67890', 'Chemistry', 'Active', '2022-12-02');
INSERT INTO LaboratoryEquipmentDepreciation VALUES (3, 'Microscope', '2021-11-20', 8000.0, 'StraightLine', 5, 2400.0, 5600.0, 'LabC', 'OptiLens', '2024-11-20', 303, '2023-02-20', '2023-08-20', 403, 'TAG003', 'SN11223', 'Pathology', 'Active', '2023-02-21');

-- Schedule for implementing clinical guidelines
CREATE TABLE ClinicalGuidelineImplementationSchedule
(
    ScheduleID            INTEGER PRIMARY KEY,
    GuidelineID           TEXT,
    GuidelineName         TEXT,
    Department            TEXT,
    ImplementationStart   DATE,
    ImplementationEnd     DATE,
    LeadClinicianID       INTEGER,
    StakeholderGroup      TEXT,
    Milestone1            TEXT,
    Milestone1Date        DATE,
    Milestone2            TEXT,
    Milestone2Date        DATE,
    Milestone3            TEXT,
    Milestone3Date        DATE,
    CurrentPhase          TEXT,
    ProgressPercent       INTEGER,
    IssuesRaised          TEXT,
    ResolutionPlan        TEXT,
    ReviewDate            DATE,
    Status                TEXT
);

INSERT INTO ClinicalGuidelineImplementationSchedule VALUES (1, 'GL001', 'SepsisManagement', 'Emergency', '2023-01-01', '2023-06-30', 501, 'Multidisciplinary', 'Education', '2023-02-01', 'ProtocolDraft', '2023-03-15', 'FullRollout', '2023-06-01', 'Rollout', 70, 'StaffTrainingDelay', 'AdditionalWorkshops', '2023-04-01', 'InProgress');
INSERT INTO ClinicalGuidelineImplementationSchedule VALUES (2, 'GL002', 'DVTProphylaxis', 'Surgery', '2023-02-15', '2023-08-15', 502, 'SurgicalTeam', 'PolicyApproval', '2023-03-01', 'EHRIntegration', '2023-04-20', 'Audit', '2023-07-01', 'Audit', 45, 'EHRCustomization', 'VendorSupport', '2023-05-10', 'Pending');
INSERT INTO ClinicalGuidelineImplementationSchedule VALUES (3, 'GL003', 'AntibioticStewardship', 'Pharmacy', '2023-03-01', '2023-09-30', 503, 'PharmacyCommittee', 'BaselineData', '2023-04-01', 'InterventionDesign', '2023-05-15', 'FullImplementation', '2023-09-01', 'Implementation', 30, 'DataCollectionIssues', 'IncreaseSampling', '2023-06-01', 'Planned');

-- Log of medical supply recalls
CREATE TABLE MedicalSupplyRecallLog
(
    RecallID            INTEGER PRIMARY KEY,
    ProductCode         TEXT,
    ProductName         TEXT,
    RecallDate          DATE,
    RecallReason        TEXT,
    Manufacturer        TEXT,
    BatchNumber         TEXT,
    ExpirationDate      DATE,
    QuantityAffected    INTEGER,
    DistributionChannel TEXT,
    NotificationSent    DATE,
    ActionRequired      TEXT,
    Status              TEXT,
    FollowUpDate        DATE,
    ResponsibleOfficerID INTEGER,
    DocumentationLink   TEXT,
    Comments            TEXT,
    VerifiedBy          INTEGER,
    VerificationDate    DATE,
    RecordTimestamp     DATE
);

INSERT INTO MedicalSupplyRecallLog VALUES (1, 'PROD001', 'SurgicalGlove', '2023-01-20', 'SterilityCompromise', 'MediCo', 'BATCH100', '2025-12-31', 5000, 'Wholesale', '2023-01-21', 'RetrieveFromInventory', 'Open', '2023-02-01', 701, 'http://docs/recall1', 'No adverse events', 801, '2023-01-22', '2023-01-22');
INSERT INTO MedicalSupplyRecallLog VALUES (2, 'PROD002', 'IVFluid', '2023-02-15', 'Contamination', 'HealthSupplies', 'BATCH200', '2024-06-30', 2000, 'HospitalDirect', '2023-02-16', 'DisposeAndReplace', 'Closed', '2023-03-01', 702, 'http://docs/recall2', 'Two patient reports', 802, '2023-02-17', '2023-02-17');
INSERT INTO MedicalSupplyRecallLog VALUES (3, 'PROD003', 'Catheter', '2023-03-10', 'MaterialDefect', 'MedEquip', 'BATCH300', '2026-01-15', 1500, 'Regional', '2023-03-11', 'ReplaceWithNewBatch', 'Open', '2023-04-01', 703, 'http://docs/recall3', 'Awaiting lab analysis', 803, '2023-03-12', '2023-03-12');

-- Information about renewable energy sources used by the hospital
CREATE TABLE HospitalEnergyRenewableSource
(
    SourceID                INTEGER PRIMARY KEY,
    SourceType              TEXT,
    InstallationDate        DATE,
    CapacityMW              REAL,
    CurrentOutputMW         REAL,
    OperatorID              INTEGER,
    MaintenanceSchedule     TEXT,
    LastInspectionDate      DATE,
    NextInspectionDate      DATE,
    EnergyProvider          TEXT,
    Location                TEXT,
    Status                  TEXT,
    CO2ReductionTonnes      REAL,
    FundingSource           TEXT,
    ContractEndDate         DATE,
    PerformanceRatio        REAL,
    AvgAvailabilityPercent INTEGER,
    Notes                   TEXT,
    CreatedBy               INTEGER,
    CreatedDate             DATE
);

INSERT INTO HospitalEnergyRenewableSource VALUES (1, 'Solar', '2020-06-01', 5.0, 4.2, 901, 'Annual', '2023-01-10', '2024-01-10', 'GreenPowerCo', 'RooftopA', 'Active', 12.5, 'Grant2020', '2025-06-01', 0.84, 95, 'PanelCleaningQuarterly', 1001, '2023-01-11');
INSERT INTO HospitalEnergyRenewableSource VALUES (2, 'Wind', '2019-03-15', 3.0, 2.5, 902, 'BiAnnual', '2023-02-05', '2023-08-05', 'WindEnergyLtd', 'FieldB', 'Active', 8.0, 'Bond2021', '2026-03-15', 0.83, 92, 'TurbineMaintenanceMonthly', 1002, '2023-02-06');
INSERT INTO HospitalEnergyRenewableSource VALUES (3, 'Geothermal', '2021-11-20', 2.5, 2.4, 903, 'Quarterly', '2023-03-12', '2023-09-12', 'GeoHeatInc', 'SiteC', 'Active', 9.2, 'Capital2022', '2028-11-20', 0.96, 98, 'WellPressureMonitoring', 1003, '2023-03-13');

-- Roster of members in the emergency response team
CREATE TABLE EmergencyResponseTeamRoster
(
    RosterID               INTEGER PRIMARY KEY,
    TeamName               TEXT,
    MemberID               INTEGER,
    MemberName             TEXT,
    Role                   TEXT,
    ShiftStart             TEXT,
    ShiftEnd               TEXT,
    Certification          TEXT,
    CertificationExpiry    DATE,
    ContactNumber          TEXT,
    AssignedStation        TEXT,
    AvailabilityFlag       INTEGER,
    LastTrainingDate       DATE,
    NextTrainingDue        DATE,
    SupervisorID           INTEGER,
    Remarks                TEXT,
    CreatedDate            DATE,
    UpdatedBy              INTEGER,
    UpdateTimestamp        DATE,
    ActiveFlag             INTEGER
);

INSERT INTO EmergencyResponseTeamRoster VALUES (1, 'MedicalTeam', 1001, 'AliceSmith', 'Paramedic', '08:00', '16:00', 'EMT', '2025-12-31', '5551234', 'StationA', 1, '2023-01-15', '2024-01-15', 2001, 'Experienced', '2023-01-01', 3001, '2023-01-02', 1);
INSERT INTO EmergencyResponseTeamRoster VALUES (2, 'FireResponse', 1002, 'BobJones', 'Firefighter', '16:00', '00:00', 'FireSafety', '2024-06-30', '5555678', 'StationB', 1, '2022-12-10', '2023-12-10', 2002, 'Lead', '2022-12-01', 3002, '2022-12-02', 1);
INSERT INTO EmergencyResponseTeamRoster VALUES (3, 'Logistics', 1003, 'CarolLee', 'Driver', '00:00', '08:00', 'Transport', '2026-03-31', '5559012', 'StationC', 1, '2023-02-20', '2024-02-20', 2003, 'NewMember', '2023-02-01', 3003, '2023-02-02', 1);

-- Summary of research data access logs
CREATE TABLE ResearchDataAccessLogSummary
(
    SummaryID               INTEGER PRIMARY KEY,
    ResearchProjectID       TEXT,
    AccessCount             INTEGER,
    LastAccessDate          DATE,
    MostFrequentUserID      INTEGER,
    DataCategory            TEXT,
    AccessLevel             TEXT,
    ComplianceStatus        TEXT,
    ReviewDate              DATE,
    AuditorID               INTEGER,
    Findings                TEXT,
    ActionItems             TEXT,
    ResolutionStatus        TEXT,
    UpdatedBy               INTEGER,
    UpdateTimestamp         DATE,
    CreatedBy               INTEGER,
    CreatedDate             DATE,
    DataVolumeGB            REAL,
    RetentionPeriodDays     INTEGER,
    Notes                   TEXT
);

INSERT INTO ResearchDataAccessLogSummary VALUES (1, 'RP001', 120, '2023-03-15', 801, 'Genomics', 'Restricted', 'Compliant', '2023-04-01', 901, 'No violations', 'UpdateAccessControls', 'Closed', 1001, '2023-04-02', 1101, '2023-03-01', 15.2, 365, 'Monthly review');
INSERT INTO ResearchDataAccessLogSummary VALUES (2, 'RP002', 85, '2023-02-28', 802, 'Imaging', 'Open', 'Pending', '2023-03-20', 902, 'Two minor breaches', 'UserTraining', 'InProgress', 1002, '2023-03-21', 1102, '2023-02-15', 8.5, 730, 'Quarterly audit');
INSERT INTO ResearchDataAccessLogSummary VALUES (3, 'RP003', 200, '2023-04-10', 803, 'ClinicalTrials', 'HighlyRestricted', 'Compliant', '2023-04-15', 903, 'All good', 'MaintainCurrentPolicy', 'Closed', 1003, '2023-04-16', 1103, '2023-04-01', 22.7, 180, 'Annual summary');