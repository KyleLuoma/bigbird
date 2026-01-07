-- Radiology Dose Log
CREATE TABLE RadiologyDoseLog
(
    LogID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    StudyID INTEGER,
    Modality TEXT,
    Dose_mGy REAL,
    ExposureTime_ms REAL,
    KVP INTEGER,
    Filter TEXT,
    DatePerformed DATE,
    TechnicianID INTEGER,
    MachineID INTEGER,
    BodyPart TEXT,
    ProtocolName TEXT,
    ContrastUsed TEXT,
    ContrastVolume_ml REAL,
    Height_cm REAL,
    Weight_kg REAL,
    BMI REAL,
    RadiationWarningFlag INTEGER,
    Comments TEXT
);

INSERT INTO RadiologyDoseLog VALUES (1, 101, 5001, 'CT', 12.5, 850, 120, 'Soft', '2025-01-15', 12, 3, 'Abdomen', 'AbdomenCT', 'Iodine', 85, 170, 70, 24.2, 0, 'No issues');
INSERT INTO RadiologyDoseLog VALUES (2, 102, 5002, 'XRay', 0.8, 0.05, 70, 'None', '2025-02-20', 15, 2, 'Chest', 'ChestXRay', 'None', 0, 165, 68, 24.9, 0, 'Standard');
INSERT INTO RadiologyDoseLog VALUES (3, 103, 5003, 'MRI', 0, 0, 0, 'None', '2025-03-05', 20, 5, 'Brain', 'BrainMRI', 'Gadolinium', 12, 180, 80, 24.7, 0, 'Contrast used');

-- Clinical Pathway Mapping
CREATE TABLE ClinicalPathwayMapping
(
    MappingID INTEGER PRIMARY KEY,
    PathwayName TEXT,
    StepNumber INTEGER,
    StepDescription TEXT,
    DepartmentCode TEXT,
    ResponsibleRole TEXT,
    ExpectedDurationDays INTEGER,
    OrderSetID INTEGER,
    CheckpointFlag INTEGER,
    DocumentationTemplate TEXT,
    ClinicalGuidelineID INTEGER,
    DecisionSupportRuleID INTEGER,
    AlertLevel TEXT,
    EscalationProtocol TEXT,
    ReviewFrequencyDays INTEGER,
    LastReviewed DATE,
    CreatedBy INTEGER,
    CreatedDate DATE,
    ModifiedBy INTEGER,
    ModifiedDate DATE,
    ActiveFlag INTEGER,
    Notes TEXT
);

INSERT INTO ClinicalPathwayMapping VALUES (1, 'HeartFailureManagement', 1, 'Initial Assessment', 'CM', 'Cardiologist', 2, 101, 1, 'HF_Assess', 201, 301, 'High', 'NotifyCardiology', 30, '2024-12-01', 10, '2024-12-01', 10, '2024-12-01', 1, 'First step');
INSERT INTO ClinicalPathwayMapping VALUES (2, 'HeartFailureManagement', 2, 'Medication Optimization', 'CM', 'Pharmacist', 5, 102, 1, 'HF_Med', 202, 302, 'Medium', 'EscalatePharmacy', 30, '2024-12-01', 10, '2024-12-01', 11, '2024-12-02', 1, 'Second step');
INSERT INTO ClinicalPathwayMapping VALUES (3, 'DiabetesCarePathway', 1, 'Baseline Labs', 'EN', 'Nurse', 1, 201, 0, 'DM_Labs', 301, 401, 'Low', 'None', 60, '2024-11-15', 12, '2024-11-15', 12, '2024-11-16', 1, 'Start of diabetes pathway');

-- Medical Device Failure Analysis
CREATE TABLE MedicalDeviceFailureAnalysis
(
    FailureID INTEGER PRIMARY KEY,
    DeviceSerial TEXT,
    DeviceModel TEXT,
    FailureDate DATE,
    FailureType TEXT,
    RootCause TEXT,
    DowntimeHours REAL,
    ImpactScore INTEGER,
    ReportedBy INTEGER,
    InvestigationLead INTEGER,
    CorrectiveAction TEXT,
    PreventiveAction TEXT,
    PartsReplaced INTEGER,
    CostRepair REAL,
    WarrantyClaimFlag INTEGER,
    ServiceVendor TEXT,
    ServiceOrderID INTEGER,
    FollowUpDate DATE,
    ResolutionStatus TEXT,
    DocumentationLink TEXT,
    Notes TEXT,
    CreatedDate DATE,
    ModifiedDate DATE,
    ActiveFlag INTEGER
);

INSERT INTO MedicalDeviceFailureAnalysis VALUES (1, 'SN12345', 'VentilatorX', '2025-01-10', 'BatteryFailure', 'BatteryDegradation', 8.5, 7, 21, 31, 'ReplaceBattery', 'ScheduleBatteryCheck', 1, 250.75, 1, 'VendorA', 4001, '2025-01-20', 'Closed', 'doclink1', 'Battery replaced and test passed', '2025-01-10', '2025-01-20', 1);
INSERT INTO MedicalDeviceFailureAnalysis VALUES (2, 'SN98765', 'InfusionPumpY', '2025-02-02', 'SoftwareCrash', 'FirmwareBug', 3.0, 5, 22, 32, 'PatchApplied', 'UpdateFirmwareSchedule', 0, 0, 0, 'VendorB', 4002, '2025-02-10', 'Closed', 'doclink2', 'Patch applied, monitoring', '2025-02-02', '2025-02-10', 1);
INSERT INTO MedicalDeviceFailureAnalysis VALUES (3, 'SN55555', 'ECGMonitorZ', '2025-03-15', 'LeadDisconnection', 'ImproperConnection', 1.2, 3, 23, 33, 'ReattachLeads', 'StaffTraining', 0, 0, 0, 'InHouse', 4003, '2025-03-20', 'Closed', 'doclink3', 'Staff re-trained on lead placement', '2025-03-15', '2025-03-20', 1);

-- Facility Infrastructure Asset
CREATE TABLE FacilityInfrastructureAsset
(
    AssetID INTEGER PRIMARY KEY,
    AssetTag TEXT,
    AssetCategory TEXT,
    LocationCode TEXT,
    InstallationDate DATE,
    VendorName TEXT,
    PurchaseCost REAL,
    DepreciationYears INTEGER,
    CurrentValue REAL,
    MaintenanceCycleDays INTEGER,
    LastMaintenanceDate DATE,
    NextMaintenanceDate DATE,
    WarrantyEndDate DATE,
    AssetStatus TEXT,
    PowerRequirement_kw REAL,
    CapacityUnits INTEGER,
    ComplianceStandard TEXT,
    InspectionScore INTEGER,
    AssignedToStaffID INTEGER,
    RiskLevel TEXT,
    Notes TEXT,
    CreatedDate DATE,
    ModifiedDate DATE,
    ActiveFlag INTEGER
);

INSERT INTO FacilityInfrastructureAsset VALUES (1, 'ASSET001', 'HVAC', 'BLDG1-01', '2020-06-15', 'CoolTech', 150000, 15, 120000, 180, '2025-01-01', '2025-06-30', '2025-12-31', 'Operational', 35.5, 0, 'ASHRAE', 92, 101, 'Medium', 'Main building HVAC', '2020-06-15', '2025-01-01', 1);
INSERT INTO FacilityInfrastructureAsset VALUES (2, 'ASSET002', 'Generator', 'BLDG2-02', '2018-03-20', 'PowerGen', 80000, 10, 50000, 365, '2024-12-15', '2025-12-15', '2028-03-20', 'Operational', 150, 0, 'NFPA', 88, 102, 'High', 'Backup generator for wing B', '2018-03-20', '2024-12-15', 1);
INSERT INTO FacilityInfrastructureAsset VALUES (3, 'ASSET003', 'Elevator', 'BLDG3-ELV', '2015-09-10', 'LiftCo', 200000, 20, 150000, 90, '2025-02-01', '2025-05-02', '2025-09-10', 'Operational', 5.2, 0, 'ISO', 95, 103, 'Low', 'Elevator serving floors 1-5', '2015-09-10', '2025-02-01', 1);

-- Patient Communication Log
CREATE TABLE PatientCommunicationLog
(
    CommID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    CommunicationDate DATE,
    CommunicationMode TEXT,
    StaffID INTEGER,
    Subject TEXT,
    MessageBody TEXT,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    Outcome TEXT,
    DocumentationLink TEXT,
    ConsentObtained INTEGER,
    Language TEXT,
    DurationMinutes REAL,
    CallRecordingLink TEXT,
    EncryptionFlag INTEGER,
    PriorityLevel TEXT,
    EscalationLevel INTEGER,
    Notes TEXT,
    CreatedBy INTEGER,
    CreatedDate DATE,
    ModifiedBy INTEGER,
    ModifiedDate DATE,
    ActiveFlag INTEGER
);

INSERT INTO PatientCommunicationLog VALUES (1, 101, '2025-01-05', 'Phone', 201, 'Appointment Reminder', 'Reminder for upcoming cardiology appointment on Jan 12', 0, NULL, 'Confirmed', 'doclinkA', 1, 'English', 2.5, 'recA', 1, 'Normal', 0, 'Patient confirmed attendance', 201, '2025-01-05', 201, '2025-01-05', 1);
INSERT INTO PatientCommunicationLog VALUES (2, 102, '2025-01-12', 'Email', 202, 'Lab Results', 'Your lab results are available in portal', 1, '2025-01-20', 'Pending', 'doclinkB', 1, 'Spanish', 0, NULL, 0, 'High', 1, 'Awaiting patient acknowledgement', 202, '2025-01-12', 202, '2025-01-12', 1);
INSERT INTO PatientCommunicationLog VALUES (3, 103, '2025-01-18', 'InPerson', 203, 'Medication Counseling', 'Discussed new hypertension regimen', 0, NULL, 'Completed', 'doclinkC', 1, 'English', 15, NULL, 0, 'Low', 0, 'Patient understood instructions', 203, '2025-01-18', 203, '2025-01-18', 1);

-- Pharmacy Pricing Catalog
CREATE TABLE PharmacyPricingCatalog
(
    PriceID INTEGER PRIMARY KEY,
    DrugCode TEXT,
    DrugName TEXT,
    Strength TEXT,
    Form TEXT,
    UnitPrice REAL,
    Currency TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    SupplierID INTEGER,
    PackSize INTEGER,
    DiscountPercent REAL,
    RebateAmount REAL,
    TierLevel INTEGER,
    RestrictedFlag INTEGER,
    TherapeuticClass TEXT,
    ATCCode TEXT,
    Manufacturer TEXT,
    ClinicalUse TEXT,
    MaxQuantityPerPrescription INTEGER,
    PriorAuthorizationRequired INTEGER,
    Notes TEXT,
    CreatedBy INTEGER,
    CreatedDate DATE,
    ModifiedBy INTEGER,
    ModifiedDate DATE,
    ActiveFlag INTEGER
);

INSERT INTO PharmacyPricingCatalog VALUES (1, 'D001', 'Atorvastatin', '10mg', 'Tablet', 0.15, 'USD', '2025-01-01', '2025-12-31', 301, 30, 5.0, 0, 1, 0, 'Statins', 'C10AA05', 'PharmaInc', 'Hyperlipidemia', 90, 0, 'Standard price', 301, '2025-01-01', 301, '2025-01-01', 1);
INSERT INTO PharmacyPricingCatalog VALUES (2, 'D002', 'Metformin', '500mg', 'Tablet', 0.08, 'USD', '2025-01-01', '2025-12-31', 302, 60, 3.0, 0, 1, 0, 'Biguanides', 'A10BA02', 'HealthMeds', 'Type2Diabetes', 180, 0, 'High volume discount', 302, '2025-01-01', 302, '2025-01-01', 1);
INSERT INTO PharmacyPricingCatalog VALUES (3, 'D003', 'Insulin Glargine', '100U/ml', 'Injection', 25.00, 'USD', '2025-01-01', '2025-12-31', 303, 1, 0, 5.00, 2, 1, 'Insulins', 'A10AE04', 'BioPharma', 'Diabetes', 1, 1, 'Requires prior auth', 303, '2025-01-01', 303, '2025-01-01', 1);

-- Lab Quality Control Run
CREATE TABLE LabQualityControlRun
(
    QCID INTEGER PRIMARY KEY,
    LaboratoryID INTEGER,
    RunDate DATE,
    AnalystID INTEGER,
    ControlLevel TEXT,
    SampleCount INTEGER,
    PassedCount INTEGER,
    FailedCount INTEGER,
    MeanValue_REAL REAL,
    StdDev_REAL REAL,
    CV_PERCENT REAL,
    TargetRangeLow REAL,
    TargetRangeHigh REAL,
    ActionTaken TEXT,
    Comments TEXT,
    ReRunFlag INTEGER,
    ReRunDate DATE,
    EquipmentID INTEGER,
    CalibrationStatus TEXT,
    LotNumber TEXT,
    ExpirationDate DATE,
    DocumentationLink TEXT,
    CreatedDate DATE,
    ModifiedDate DATE,
    ActiveFlag INTEGER
);

INSERT INTO LabQualityControlRun VALUES (1, 1, '2025-01-02', 401, 'High', 20, 20, 0, 5.12, 0.05, 0.98, 5.00, 6.00, 'None', 'All values within range', 0, NULL, 501, 'Calibrated', 'LOT123', '2026-01-01', 'docQC1', '2025-01-02', '2025-01-02', 1);
INSERT INTO LabQualityControlRun VALUES (2, 1, '2025-01-09', 402, 'Medium', 20, 18, 2, 5.30, 0.12, 2.26, 5.00, 6.00, 'Investigated outliers', 'Two samples out of range, rechecked', 1, '2025-01-10', 502, 'Calibrated', 'LOT124', '2026-01-15', 'docQC2', '2025-01-09', '2025-01-10', 1);
INSERT INTO LabQualityControlRun VALUES (3, 1, '2025-01-16', 403, 'Low', 20, 20, 0, 5.05, 0.04, 0.79, 5.00, 6.00, 'None', 'Stable performance', 0, NULL, 503, 'Calibrated', 'LOT125', '2026-02-01', 'docQC3', '2025-01-16', '2025-01-16', 1);

-- Staff Training Module Feedback
CREATE TABLE StaffTrainingModuleFeedback
(
    FeedbackID INTEGER PRIMARY KEY,
    StaffID INTEGER,
    ModuleID INTEGER,
    CompletionDate DATE,
    Score INTEGER,
    DifficultyRating INTEGER,
    RelevanceRating INTEGER,
    InstructorRating INTEGER,
    Comments TEXT,
    SuggestedImprovements TEXT,
    DurationMinutes REAL,
    CertificationEarned INTEGER,
    ContinuingEducationUnits INTEGER,
    Language TEXT,
    DeviceUsed TEXT,
    AccessMethod TEXT,
    FollowUpNeeded INTEGER,
    FollowUpDate DATE,
    SupervisorID INTEGER,
    ApprovalStatus TEXT,
    CreatedDate DATE,
    ModifiedDate DATE,
    ActiveFlag INTEGER
);

INSERT INTO StaffTrainingModuleFeedback VALUES (1, 501, 1001, '2025-01-03', 85, 3, 4, 5, 'Informative content', 'Add more case studies', 45, 1, 2, 'English', 'Laptop', 'Online', 0, NULL, 601, 'Approved', '2025-01-03', '2025-01-03', 1);
INSERT INTO StaffTrainingModuleFeedback VALUES (2, 502, 1002, '2025-01-10', 78, 4, 3, 4, 'Good but pacing was fast', 'Provide downloadable slides', 60, 1, 1, 'Spanish', 'Tablet', 'Hybrid', 1, '2025-02-01', 602, 'Pending', '2025-01-10', '2025-01-10', 1);
INSERT INTO StaffTrainingModuleFeedback VALUES (3, 503, 1003, '2025-01-17', 92, 2, 5, 5, 'Excellent practical examples', 'None', 30, 1, 3, 'English', 'Desktop', 'InPerson', 0, NULL, 603, 'Approved', '2025-01-17', '2025-01-17', 1);

-- Research Participant Screening
CREATE TABLE ResearchParticipantScreening
(
    ScreeningID INTEGER PRIMARY KEY,
    StudyID INTEGER,
    ParticipantID INTEGER,
    ScreeningDate DATE,
    Age INTEGER,
    Sex TEXT,
    EligibilityStatus TEXT,
    InclusionCriteriaMet INTEGER,
    ExclusionCriteriaMet INTEGER,
    ConsentObtained INTEGER,
    ConsentDate DATE,
    ScreeningResult TEXT,
    PrimaryInvestigatorID INTEGER,
    ScreeningLocation TEXT,
    RecruitmentSource TEXT,
    Notes TEXT,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    AssignedCohort TEXT,
    RandomizationFlag INTEGER,
    CreatedDate DATE,
    ModifiedDate DATE,
    ActiveFlag INTEGER
);

INSERT INTO ResearchParticipantScreening VALUES (1, 2001, 10001, '2025-01-04', 45, 'Female', 'Eligible', 1, 0, 1, '2025-01-04', 'Pass', 701, 'ClinicA', 'Flyer', 'No concerns', 0, NULL, 'CohortA', 1, '2025-01-04', '2025-01-04', 1);
INSERT INTO ResearchParticipantScreening VALUES (2, 2002, 10002, '2025-01-11', 60, 'Male', 'Ineligible', 0, 1, 0, NULL, 'Fail - Exclusion', 702, 'ClinicB', 'Online', 'Hypertension excluded', 0, NULL, 'N/A', 0, '2025-01-11', '2025-01-11', 1);
INSERT INTO ResearchParticipantScreening VALUES (3, 2001, 10003, '2025-01-18', 30, 'Female', 'Eligible', 1, 0, 1, '2025-01-18', 'Pass', 701, 'ClinicA', 'Referral', 'Ready for randomization', 1, '2025-01-25', 'CohortB', 1, '2025-01-18', '2025-01-18', 1);

-- Medical Procedure Schedule
CREATE TABLE MedicalProcedureSchedule
(
    ScheduleID INTEGER PRIMARY KEY,
    ProcedureCode TEXT,
    ProcedureName TEXT,
    ScheduledDate DATE,
    StartTime TIME,
    EndTime TIME,
    OperatingRoom TEXT,
    SurgeonID INTEGER,
    AnesthesiologistID INTEGER,
    NursingTeamID INTEGER,
    PatientID INTEGER,
    PreOpCheckCompleted INTEGER,
    PreOpChecklistDate DATE,
    EstimatedDurationMinutes INTEGER,
    EquipmentRequired TEXT,
    SuppliesRequired TEXT,
    PriorityLevel TEXT,
    CancelationFlag INTEGER,
    CancelationReason TEXT,
    PostOpRecoveryRoom TEXT,
    FollowUpAppointmentDate DATE,
    Notes TEXT,
    CreatedBy INTEGER,
    CreatedDate DATE,
    ModifiedBy INTEGER,
    ModifiedDate DATE,
    ActiveFlag INTEGER
);

INSERT INTO MedicalProcedureSchedule VALUES (1, 'PROC001', 'HipReplacement', '2025-02-01', '08:00', '12:00', 'OR2', 801, 901, 1001, 101, 1, '2025-01-28', 240, 'HipImplantKit', 'Sutures,Drains', 'High', 0, NULL, 'RecoveryA', '2025-02-15', 'Patient fasting confirmed', 801, '2025-01-27', 801, '2025-01-27', 1);
INSERT INTO MedicalProcedureSchedule VALUES (2, 'PROC002', 'CataractSurgery', '2025-02-03', '09:30', '10:15', 'OR5', 802, 902, 1002, 102, 1, '2025-01-30', 45, 'PhacoMachine', 'IOL,Viscoelastic', 'Medium', 0, NULL, 'RecoveryB', '2025-02-10', 'Eye drops prescribed', 802, '2025-01-29', 802, '2025-01-29', 1);
INSERT INTO MedicalProcedureSchedule VALUES (3, 'PROC003', 'Appendectomy', '2025-02-05', '13:00', '14:30', 'OR1', 803, 903, 1003, 103, 1, '2025-02-01', 90, 'LaparoscopicSet', 'Staples,Antibiotics', 'High', 0, NULL, 'RecoveryC', '2025-02-20', 'NPO after midnight', 803, '2025-02-01', 803, '2025-02-01', 1);