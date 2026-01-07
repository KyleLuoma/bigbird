-- Radiology report details
CREATE TABLE RadiologyReport (
    ReportID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    StudyDate DATE,
    Modality TEXT,
    BodyPart TEXT,
    ContrastUsed TEXT,
    Findings TEXT,
    Impression TEXT,
    RadiologistID INTEGER,
    RadiationDose REAL,
    ImageCount INTEGER,
    ReportStatus TEXT,
    FollowUpRecommended INTEGER,
    ImageQualityScore REAL,
    NoiseLevel REAL,
    ScanTimeMinutes INTEGER,
    ProtocolName TEXT,
    FacilityID INTEGER,
    CreationTimestamp DATE,
    LastUpdated DATE,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO RadiologyReport VALUES (1, 101, '2023-02-15', 'CT', 'Head', 'Yes', 'No acute bleed', 'Normal', 12, 3.5, 150, 'Final', 0, 9.2, 0.4, 5, 'HeadCTStandard', 3, '2023-02-15', '2023-02-15');
INSERT INTO RadiologyReport VALUES (2, 102, '2023-03-01', 'MRI', 'Knee', 'No', 'Meniscal tear', 'Partial tear noted', 15, 2.8, 120, 'Preliminary', 1, 8.7, 0.3, 7, 'KneeMRIProtocol', 2, '2023-03-01', '2023-03-02');
INSERT INTO RadiologyReport VALUES (3, 103, '2023-04-10', 'XRay', 'Chest', 'No', 'Clear lungs', 'No abnormality', 8, 0.0, 1, 'Final', 0, 9.5, 0.1, 1, 'ChestXRayStandard', 1, '2023-04-10', '2023-04-10');

-- Pathology report details
CREATE TABLE PathologyReport (
    ReportID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    SpecimenDate DATE,
    SpecimenType TEXT,
    Site TEXT,
    DiagnosisCode TEXT,
    DiagnosisText TEXT,
    PathologistID INTEGER,
    SlideCount INTEGER,
    StainUsed TEXT,
    TumorGrade TEXT,
    MarginStatus TEXT,
    LymphNodeStatus TEXT,
    MolecularTestPerformed TEXT,
    MolecularResult TEXT,
    ReportStatus TEXT,
    Comments TEXT,
    CreationDate DATE,
    UpdateDate DATE,
    LabID INTEGER,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO PathologyReport VALUES (1, 101, '2023-02-20', 'Biopsy', 'Breast', 'C50.9', 'Invasive ductal carcinoma', 21, 5, 'H&E', 'Grade II', 'Negative', 'Positive', 'BRCA1', 'Negative', 'Final', 'Patient to start chemo', '2023-02-25', '2023-02-26', 5);
INSERT INTO PathologyReport VALUES (2, 104, '2023-03-05', 'FineNeedleAspiration', 'Thyroid', 'E04.9', 'Benign nodular goiter', 22, 2, 'Papanicolaou', 'N/A', 'N/A', 'N/A', 'N/A', 'Preliminary', 'Recommend repeat in 6 months', '2023-03-07', '2023-03-07', 6);
INSERT INTO PathologyReport VALUES (3, 105, '2023-04-12', 'Surgical', 'Colon', 'C18.9', 'Adenocarcinoma', 23, 8, 'H&E', 'Grade III', 'Positive', 'Negative', 'KRAS', 'Mutated', 'Final', 'Refer to oncology', '2023-04-18', '2023-04-19', 7);

-- Pharmacy prescription records
CREATE TABLE PharmacyPrescription (
    PrescriptionID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    MedicationID INTEGER,
    PrescriberID INTEGER,
    PrescriptionDate DATE,
    Dosage TEXT,
    Frequency TEXT,
    Route TEXT,
    DurationDays INTEGER,
    RefillsAllowed INTEGER,
    PharmacyID INTEGER,
    DispenseDate DATE,
    QuantityDispensed INTEGER,
    BillingCode TEXT,
    InsuranceID INTEGER,
    Status TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    DrugForm TEXT,
    Strength TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO PharmacyPrescription VALUES (1, 101, 301, 45, '2023-02-16', '500mg', 'BID', 'Oral', 30, 2, 12, '2023-02-17', 60, 'RX001', 2001, 'Active', 'Take with food', '2023-02-16', '2023-02-20', 'Tablet', '500mg');
INSERT INTO PharmacyPrescription VALUES (2, 102, 302, 46, '2023-03-02', '10mg', 'QD', 'Oral', 90, 1, 13, '2023-03-03', 90, 'RX002', 2002, 'Active', 'Monitor blood pressure', '2023-03-02', '2023-03-05', 'Tablet', '10mg');
INSERT INTO PharmacyPrescription VALUES (3, 103, 303, 47, '2023-04-11', '0.5ml', 'TID', 'Inhalation', 60, 0, 14, '2023-04-12', 30, 'RX003', 2003, 'Completed', 'Use spacer', '2023-04-11', '2023-04-15', 'Inhaler', '0.5ml');

-- Surgical schedule information
CREATE TABLE SurgicalSchedule (
    ScheduleID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    SurgeonID INTEGER,
    OperatingRoom TEXT,
    ScheduledDate DATE,
    ScheduledTime TEXT,
    ProcedureCode TEXT,
    ProcedureName TEXT,
    AnesthesiaType TEXT,
    EstimatedDurationMin INTEGER,
    PreOpCheckCompleted INTEGER,
    PostOpBed TEXT,
    PriorityLevel TEXT,
    EmergencyFlag INTEGER,
    InstrumentSet TEXT,
    NursingTeamID INTEGER,
    ConsentObtained INTEGER,
    SurgeryStatus TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO SurgicalSchedule VALUES (1, 101, 55, 'OR1', '2023-03-10', '08:00', '01.23', 'Appendectomy', 'General', 60, 1, 'Bed12', 'Routine', 0, 'SetA', 101, 1, 'Scheduled', '2023-02-20', '2023-02-25', 'NPO after midnight');
INSERT INTO SurgicalSchedule VALUES (2, 104, 56, 'OR3', '2023-04-05', '14:30', '02.34', 'Knee Replacement', 'Spinal', 120, 1, 'Bed7', 'Urgent', 0, 'SetB', 102, 1, 'Confirmed', '2023-03-15', '2023-03-20', 'Patient requires walker');
INSERT INTO SurgicalSchedule VALUES (3, 105, 57, 'OR2', '2023-04-20', '10:15', '03.45', 'Colectomy', 'General', 180, 0, 'Bed3', 'High', 1, 'SetC', 103, 0, 'Pending', '2023-04-01', '2023-04-01', 'Awaiting labs');

-- Rehabilitation plan details
CREATE TABLE RehabilitationPlan (
    PlanID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    TherapistID INTEGER,
    StartDate DATE,
    EndDate DATE,
    TherapyType TEXT,
    SessionCount INTEGER,
    FrequencyPerWeek INTEGER,
    Goal1 TEXT,
    Goal2 TEXT,
    Goal3 TEXT,
    EquipmentNeeded TEXT,
    ProgressNotes TEXT,
    ReviewDate DATE,
    Status TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    FacilityID INTEGER,
    ProgramCode TEXT,
    InsuranceCoverage TEXT,
    Modifier TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO RehabilitationPlan VALUES (1, 101, 61, '2023-02-20', '2023-04-20', 'Physical', 20, 3, 'Increase ROM', 'Improve gait', 'Reduce pain', 'Treadmill', 'Patient making good progress', '2023-03-15', 'Active', '2023-02-20', '2023-03-01', 2, 'PT001', 'Full', 'None');
INSERT INTO RehabilitationPlan VALUES (2, 104, 62, '2023-03-01', '2023-05-01', 'Occupational', 15, 2, 'Enhance ADL', 'Strengthen grip', 'Improve coordination', 'Hand therapy tools', 'Steady improvement', '2023-04-01', 'Active', '2023-03-01', '2023-03-10', 3, 'OT002', 'Partial', 'ModA');
INSERT INTO RehabilitationPlan VALUES (3, 105, 63, '2023-04-05', '2023-06-05', 'Speech', 12, 2, 'Clear articulation', 'Improve swallowing', 'Increase stamina', 'None', 'Patient shows mild dysphagia', '2023-05-05', 'Active', '2023-04-05', '2023-04-12', 4, 'ST003', 'Full', 'None');

-- Mental health assessment records
CREATE TABLE MentalHealthAssessment (
    AssessmentID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    ClinicianID INTEGER,
    AssessmentDate DATE,
    MoodScore INTEGER,
    AnxietyScore INTEGER,
    StressScore INTEGER,
    DepressionScore INTEGER,
    PsychosisScore INTEGER,
    SubstanceUseScore INTEGER,
    SleepQualityScore INTEGER,
    AppetiteScore INTEGER,
    RiskLevel TEXT,
    TreatmentPlan TEXT,
    FollowUpDate DATE,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    AssessmentTool TEXT,
    DurationMinutes INTEGER,
    SeverityLevel TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO MentalHealthAssessment VALUES (1, 101, 71, '2023-02-25', 7, 5, 4, 3, 0, 2, 6, 5, 'Low', 'CBT weekly', '2023-03-25', 'Patient reports improvement', '2023-02-25', '2023-03-01', 'PHQ9', 45, 'Mild');
INSERT INTO MentalHealthAssessment VALUES (2, 104, 72, '2023-03-10', 5, 8, 6, 7, 0, 3, 4, 3, 'Medium', 'Medication adjustment', '2023-04-10', 'Increased anxiety noted', '2023-03-10', '2023-03-15', 'GAD7', 30, 'Moderate');
INSERT INTO MentalHealthAssessment VALUES (3, 105, 73, '2023-04-12', 2, 3, 2, 1, 0, 1, 8, 7, 'Low', 'Maintenance therapy', '2023-05-12', 'Stable mood', '2023-04-12', '2023-04-18', 'PHQ9', 40, 'Mild');

-- Immunization history records
CREATE TABLE ImmunizationHistory (
    RecordID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    VaccineName TEXT,
    VaccineCode TEXT,
    AdministrationDate DATE,
    DoseNumber INTEGER,
    Manufacturer TEXT,
    LotNumber TEXT,
    Site TEXT,
    AdministeredBy TEXT,
    ReactionObserved TEXT,
    ReactionDetails TEXT,
    NextDueDate DATE,
    ImmunizationStatus TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    ProviderID INTEGER,
    FundingSource TEXT,
    BatchNumber TEXT,
    ExpirationDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO ImmunizationHistory VALUES (1, 101, 'Influenza', 'FLU2023', '2023-01-15', 1, 'PharmaInc', 'L12345', 'Arm', 'NurseA', 'None', '', '2024-01-15', 'Completed', '2023-01-15', '2023-01-15', 10, 'State', 'B123', '2025-12-31');
INSERT INTO ImmunizationHistory VALUES (2, 104, 'COVID19', 'COVID19B', '2022-11-20', 2, 'HealthCorp', 'L67890', 'Arm', 'NurseB', 'MildFever', 'Fever resolved in 24h', '2023-11-20', 'Completed', '2022-11-20', '2023-01-01', 11, 'Federal', 'B456', '2024-06-30');
INSERT INTO ImmunizationHistory VALUES (3, 105, 'HepatitisB', 'HEPB', '2021-06-05', 3, 'BioMed', 'L54321', 'Arm', 'NurseC', 'None', '', '2026-06-05', 'Completed', '2021-06-05', '2022-01-10', 12, 'Private', 'B789', '2025-03-31');

-- Patient device assignment log
CREATE TABLE PatientDeviceAssignment (
    AssignmentID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    DeviceID INTEGER,
    DeviceType TEXT,
    SerialNumber TEXT,
    AssignmentDate DATE,
    ReturnDate DATE,
    AssignedBy TEXT,
    DeviceStatus TEXT,
    FirmwareVersion TEXT,
    BatteryLevel REAL,
    CalibrationDate DATE,
    WarrantyExpiry DATE,
    Location TEXT,
    UsageNotes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    DepartmentID INTEGER,
    MaintenanceContractID INTEGER,
    ReasonForAssignment TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO PatientDeviceAssignment VALUES (1, 101, 401, 'PulseOximeter', 'SN1001', '2023-02-01', NULL, 'TechA', 'InUse', 'v1.2', 85.5, '2023-02-01', '2025-02-01', 'Room12', 'Monitoring SpO2', '2023-02-01', '2023-02-10', 5, 200, 'PostOpMonitoring');
INSERT INTO PatientDeviceAssignment VALUES (2, 104, 402, 'InfusionPump', 'SN2002', '2023-03-05', NULL, 'TechB', 'InUse', 'v3.0', 92.0, '2023-03-05', '2026-03-05', 'ICU3', 'Chemotherapy infusion', '2023-03-05', '2023-03-07', 6, 201, 'Chemotherapy');
INSERT INTO PatientDeviceAssignment VALUES (3, 105, 403, 'TelemetryMonitor', 'SN3003', '2023-04-12', NULL, 'TechC', 'InUse', 'v2.5', 78.0, '2023-04-12', '2025-04-12', 'Ward7', 'Cardiac monitoring', '2023-04-12', '2023-04-13', 7, 202, 'PostSurgery');

-- Hospital event log entries
CREATE TABLE HospitalEventLog (
    EventID INTEGER PRIMARY KEY,
    EventDate DATE,
    EventTime TEXT,
    EventType TEXT,
    Description TEXT,
    Location TEXT,
    InitiatedBy TEXT,
    AffectedDepartment TEXT,
    SeverityLevel TEXT,
    DurationMinutes INTEGER,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    ResolvedBy TEXT,
    ResolutionNotes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    IncidentNumber TEXT,
    SourceSystem TEXT,
    Category TEXT,
    ImpactScore INTEGER
);

INSERT INTO HospitalEventLog VALUES (1, '2023-02-28', '09:15', 'PowerOutage', 'Building A lost power for 15 minutes', 'BuildingA', 'Facilities', 'Engineering', 'High', 15, 1, '2023-03-01', 'EngMgr', 'Power restored, backup engaged', '2023-02-28', '2023-03-01', 'INC1001', 'SCADA', 'Infrastructure', 9);
INSERT INTO HospitalEventLog VALUES (2, '2023-03-12', '14:45', 'MedicationError', 'Wrong dose administered to patient 102', 'Ward4', 'NurseJ', 'Pharmacy', 'Medium', 5, 1, '2023-03-15', 'RiskMgr', 'Patient monitored, no adverse effect', '2023-03-12', '2023-03-16', 'INC1002', 'EHR', 'Safety', 6);
INSERT INTO HospitalEventLog VALUES (3, '2023-04-08', '11:30', 'FireAlarm', 'False fire alarm triggered in lobby', 'Lobby', 'Security', 'Security', 'Low', 10, 0, NULL, NULL, 'Alarm reset, no incident', '2023-04-08', '2023-04-08', 'INC1003', 'FireSystem', 'Safety', 3);

-- Clinical outcome metric records
CREATE TABLE ClinicalOutcomeMetric (
    MetricID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    EncounterDate DATE,
    MetricName TEXT,
    MetricValue REAL,
    Unit TEXT,
    ReferenceRangeLow REAL,
    ReferenceRangeHigh REAL,
    Interpretation TEXT,
    ClinicianID INTEGER,
    Source TEXT,
    RecordedAt DATE,
    UpdatedAt DATE,
    Comments TEXT,
    TrendScore INTEGER,
    RiskCategory TEXT,
    FollowUpNeeded INTEGER,
    FollowUpDate DATE,
    ProgramID INTEGER,
    MeasurementMethod TEXT,
    DataQualityFlag TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO ClinicalOutcomeMetric VALUES (1, 101, '2023-02-20', '6MWT_Distance', 450.0, 'meters', 400.0, 600.0, 'Within normal limits', 81, 'Manual', '2023-02-20', '2023-02-22', 'Patient tolerated well', 8, 'Low', 0, NULL, 5, 'TimedWalk', 'Good');
INSERT INTO ClinicalOutcomeMetric VALUES (2, 104, '2023-03-15', 'HbA1c', 7.2, '%', 4.0, 5.6, 'Elevated', 82, 'Lab', '2023-03-15', '2023-03-16', 'Recommend medication review', 4, 'Medium', 1, '2023-04-01', 6, 'BloodTest', 'Acceptable');
INSERT INTO ClinicalOutcomeMetric VALUES (3, 105, '2023-04-10', 'PainScore', 3.0, 'scale', 0.0, 10.0, 'Mild pain', 83, 'PatientReported', '2023-04-10', '2023-04-11', 'Improving', 7, 'Low', 0, NULL, 7, 'NumericRating', 'Good');