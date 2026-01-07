-- ImagingDeviceLog: log of imaging device operations and maintenance
CREATE TABLE ImagingDeviceLog (
    LogID INTEGER PRIMARY KEY,
    DeviceSerial TEXT,
    DeviceModel TEXT,
    ManufactureDate DATE,
    LastCalibration DATE,
    CalibrationTechnician TEXT,
    SoftwareVersion TEXT,
    OperatingHours INTEGER,
    ErrorCode INTEGER,
    ErrorDescription TEXT,
    TemperatureC REAL,
    HumidityPercent REAL,
    VoltageV REAL,
    CurrentA REAL,
    LocationWard TEXT,
    OperatorID TEXT,
    Shift TEXT,
    MaintenanceDue DATE,
    FirmwareChecksum TEXT,
    ImageCount INTEGER,
    LastServiceDate DATE
);

INSERT INTO ImagingDeviceLog VALUES (1, 'SN1001', 'CT2000', '2018-05-10', '2023-12-01', 'JohnDoe', 'v3.2.1', 12000, 0, 'None', 22.5, 45.0, 230.0, 5.0, 'WardA', 'OP123', 'Day', '2024-06-15', 'ABCDEF123456', 35000, '2023-11-20');
INSERT INTO ImagingDeviceLog VALUES (2, 'SN1002', 'MRI_X1', '2019-03-22', '2023-11-20', 'JaneSmith', 'v4.0.0', 8500, 101, 'CoolingFailure', 19.8, 50.2, 240.0, 4.8, 'WardB', 'OP124', 'Night', '2024-07-01', '123456ABCDEF', 22000, '2023-10-30');
INSERT INTO ImagingDeviceLog VALUES (3, 'SN1003', 'UltrasoundPro', '2020-11-05', '2024-01-15', 'MikeBrown', 'v2.5.4', 5000, 0, 'None', 25.0, 40.0, 220.0, 3.5, 'WardC', 'OP125', 'Evening', '2025-01-10', 'FEDCBA654321', 15000, '2024-02-01');

-- AllergyRecord: catalog of recorded allergies and related details
CREATE TABLE AllergyRecord (
    AllergyID INTEGER PRIMARY KEY,
    Allergen TEXT,
    ReactionSeverity TEXT,
    OnsetDate DATE,
    ResolutionDate DATE,
    ManagementPlan TEXT,
    AllergyType TEXT,
    DocumentedBy TEXT,
    Verified BOOLEAN,
    Notes TEXT,
    ClinicalStatus TEXT,
    AllergyCategory TEXT,
    RiskScore INTEGER,
    FirstObserved DATE,
    LastObserved DATE,
    RelatedMedication TEXT,
    ExposureRoute TEXT,
    SeverityScore INTEGER,
    FollowUpRequired BOOLEAN,
    LastUpdated DATE
);

INSERT INTO AllergyRecord VALUES (1, 'Peanuts', 'High', '2015-04-12', NULL, 'EpinephrineAutoInjector', 'Food', 'DrAllen', 1, 'Carry auto-injector', 'Active', 'IgE-mediated', 9, '2015-04-12', '2023-08-01', 'None', 'Ingestion', 9, 1, '2023-08-01');
INSERT INTO AllergyRecord VALUES (2, 'Penicillin', 'Medium', '2010-09-20', NULL, 'AvoidBetaLactams', 'Drug', 'DrBaker', 1, 'Documented in EMR', 'Active', 'IgE-mediated', 7, '2010-09-20', '2022-12-15', 'Amoxicillin', 'Injection', 7, 0, '2022-12-15');
INSERT INTO AllergyRecord VALUES (3, 'Latex', 'Low', '2018-01-05', '2020-03-10', 'Use non-latex gloves', 'Environmental', 'DrClark', 1, 'Resolved after avoidance', 'Resolved', 'Contact', 3, '2018-01-05', '2020-03-10', 'None', 'SkinContact', 3, 0, '2020-03-10');

-- SurgicalProcedure: details of scheduled and completed surgeries
CREATE TABLE SurgicalProcedure (
    ProcedureID INTEGER PRIMARY KEY,
    ProcedureName TEXT,
    Specialty TEXT,
    ScheduledDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    SurgeonID TEXT,
    AssistantSurgeonID TEXT,
    AnesthesiologistID TEXT,
    OperatingRoom TEXT,
    ProcedureStatus TEXT,
    IncisionType TEXT,
    EstimatedBloodLossML INTEGER,
    ActualBloodLossML INTEGER,
    ImplantsUsed TEXT,
    DurationMinutes INTEGER,
    ComplicationFlag BOOLEAN,
    PostOpNotes TEXT,
    FollowUpDate DATE,
    ConsentFormID TEXT,
    PreOpDiagnosis TEXT,
    PostOpDiagnosis TEXT
);

INSERT INTO SurgicalProcedure VALUES (1, 'Appendectomy', 'GeneralSurgery', '2024-03-15', '08:30', '10:15', 'S001', 'S002', 'A001', 'OR1', 'Completed', 'Midline', 200, 250, 'None', 105, 0, 'Uneventful', '2024-04-01', 'CF1001', 'Appendicitis', 'AppendicitisResolved');
INSERT INTO SurgicalProcedure VALUES (2, 'CABG', 'Cardiothoracic', '2024-04-20', '07:00', '12:45', 'S010', 'S011', 'A005', 'OR5', 'Completed', 'MedianSternotomy', 800, 950, 'BypassGraftKit', 345, 1, 'Minor bleeding controlled', '2024-05-10', 'CF2002', 'CoronaryArteryDisease', 'Revascularized');
INSERT INTO SurgicalProcedure VALUES (3, 'HipReplacement', 'Orthopedics', '2024-05-05', '09:00', '11:30', 'S020', 'S021', 'A010', 'OR3', 'Scheduled', 'Lateral', 300, NULL, 'ProstheticHip', 150, 0, NULL, NULL, 'CF3003', 'Osteoarthritis', NULL);

-- AnesthesiaLog: records of anesthesia administration for procedures
CREATE TABLE AnesthesiaLog (
    AnesthesiaLogID INTEGER PRIMARY KEY,
    ProcedureID INTEGER,
    AnesthesiologistID TEXT,
    StartTime TEXT,
    EndTime TEXT,
    AnestheticAgent TEXT,
    DosageMg REAL,
    DeliveryMethod TEXT,
    AirwayDevice TEXT,
    VentilationMode TEXT,
    PeakPressureCmH2O REAL,
    FiO2Percent REAL,
    EtCO2MmHg REAL,
    SpO2Percent REAL,
    BloodPressureSys INTEGER,
    BloodPressureDia INTEGER,
    HeartRate INTEGER,
    TemperatureC REAL,
    RecoveryTimeMin INTEGER,
    ComplicationNotes TEXT,
    RecordDate DATE
);

INSERT INTO AnesthesiaLog VALUES (1, 1, 'A001', '08:20', '10:25', 'Propofol', 120.5, 'IV', 'LMA', 'AssistVent', 25.0, 50.0, 35.0, 98, 120, 80, 78, 36.5, 30, NULL, '2024-03-15');
INSERT INTO AnesthesiaLog VALUES (2, 2, 'A005', '06:45', '13:00', 'Sevoflurane', 210.0, 'Inhalation', 'Endotracheal', 'ControlledVent', 28.0, 60.0, 38.0, 99, 130, 85, 82, 36.8, 45, 'Transient hypotension', '2024-04-20');
INSERT INTO AnesthesiaLog VALUES (3, 3, 'A010', '08:45', '11:40', 'Desflurane', 150.0, 'Inhalation', 'LMA', 'Spontaneous', 22.0, 55.0, 33.0, 97, 115, 75, 70, 36.3, 25, NULL, '2024-05-05');

-- PhysicalTherapySession: documentation of therapy sessions
CREATE TABLE PhysicalTherapySession (
    SessionID INTEGER PRIMARY KEY,
    TherapistID TEXT,
    ClientID INTEGER,
    SessionDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    TherapyType TEXT,
    IntensityLevel TEXT,
    ExercisesPerformed TEXT,
    Repetitions INTEGER,
    DurationMinutes INTEGER,
    PainScoreBefore INTEGER,
    PainScoreAfter INTEGER,
    MobilityScoreBefore INTEGER,
    MobilityScoreAfter INTEGER,
    Notes TEXT,
    FollowUpScheduled DATE,
    EquipmentUsed TEXT,
    TherapyOutcome TEXT,
    SessionLocation TEXT
);

INSERT INTO PhysicalTherapySession VALUES (1, 'T001', 2001, '2024-02-10', '09:00', '09:45', 'Strengthening', 'Moderate', 'LegPress,Squat', 12, 45, 6, 3, 4, 7, 'Improved tolerance', '2024-02-24', 'LegPressMachine', 'Improved', 'TherapyRoom1');
INSERT INTO PhysicalTherapySession VALUES (2, 'T002', 2002, '2024-02-12', '10:15', '11:00', 'RangeOfMotion', 'Low', 'HipFlexion,AnkleCircle', 15, 45, 5, 2, 3, 6, 'Slight swelling noted', '2024-02-26', 'ExerciseMat', 'Stable', 'TherapyRoom2');
INSERT INTO PhysicalTherapySession VALUES (3, 'T003', 2003, '2024-02-14', '14:00', '14:50', 'BalanceTraining', 'High', 'TandemWalk,SingleLegStand', 10, 50, 7, 4, 5, 8, 'Patient steady', '2024-03-01', 'BalanceBoard', 'Significant', 'TherapyRoom3');

-- VaccinationRecord: records of vaccine administrations
CREATE TABLE VaccinationRecord (
    VaccinationID INTEGER PRIMARY KEY,
    VaccineName TEXT,
    Manufacturer TEXT,
    BatchNumber TEXT,
    AdministrationDate DATE,
    AdministratorID TEXT,
    DosageML REAL,
    Route TEXT,
    Site TEXT,
    LotNumber TEXT,
    ExpirationDate DATE,
    AdverseEventFlag BOOLEAN,
    AdverseEventDescription TEXT,
    ImmunityLevel INTEGER,
    NextDoseDue DATE,
    Notes TEXT,
    RecordStatus TEXT,
    PatientConsent BOOLEAN,
    VerificationDate DATE,
    TrackingCode TEXT
);

INSERT INTO VaccinationRecord VALUES (1, 'Influenza', 'PharmaInc', 'B12345', '2023-10-15', 'N001', 0.5, 'IM', 'Deltoid', 'L98765', '2024-12-31', 0, NULL, 85, '2024-10-15', 'Annual flu shot', 'Verified', 1, '2023-10-15', 'TRK1001');
INSERT INTO VaccinationRecord VALUES (2, 'COVID19', 'BioHealth', 'C67890', '2022-05-20', 'N002', 0.3, 'IM', 'Deltoid', 'L54321', '2023-05-20', 1, 'MildFever', 70, '2023-05-20', 'Second dose', 'Pending', 1, '2022-05-20', 'TRK1002');
INSERT INTO VaccinationRecord VALUES (3, 'HepatitisB', 'MediCo', 'H11122', '2021-03-01', 'N003', 0.5, 'IM', 'Thigh', 'L11223', '2025-03-01', 0, NULL, 90, NULL, 'Completed series', 'Verified', 1, '2021-03-01', 'TRK1003');

-- BloodTransfusion: logging of blood product transfusions
CREATE TABLE BloodTransfusion (
    TransfusionID INTEGER PRIMARY KEY,
    DonorID TEXT,
    RecipientCode TEXT,
    TransfusionDate DATE,
    TransfusionTime TEXT,
    BloodGroup TEXT,
    RhFactor TEXT,
    VolumeML INTEGER,
    ProductType TEXT,
    Leukoreduced BOOLEAN,
    Irradiated BOOLEAN,
    CrossmatchResult TEXT,
    TransfusionReactionFlag BOOLEAN,
    ReactionDescription TEXT,
    PreTransfusionHemoglobin REAL,
    PostTransfusionHemoglobin REAL,
    AdministeringNurseID TEXT,
    PhysicianID TEXT,
    Comments TEXT,
    VerificationTimestamp DATETIME,
    QualityControlStatus TEXT
);

INSERT INTO BloodTransfusion VALUES (1, 'D001', 'RC1001', '2024-01-12', '14:30', 'A', 'Positive', 500, 'PackedRBC', 1, 0, 'Compatible', 0, NULL, 9.2, 10.5, 'NUR101', 'DR201', 'No issues', '2024-01-12 14:30:00', 'Passed');
INSERT INTO BloodTransfusion VALUES (2, 'D002', 'RC1002', '2024-02-05', '09:15', 'O', 'Negative', 350, 'Platelets', 0, 1, 'Compatible', 1, 'Fever', 8.8, 9.0, 'NUR102', 'DR202', 'Mild reaction', '2024-02-05 09:15:00', 'Investigated');
INSERT INTO BloodTransfusion VALUES (3, 'D003', 'RC1003', '2024-03-20', '16:45', 'B', 'Positive', 450, 'Plasma', 1, 1, 'Compatible', 0, NULL, 10.0, 10.8, 'NUR103', 'DR203', 'Smooth transfusion', '2024-03-20 16:45:00', 'Passed');

-- MedicalDeviceUsage: tracking usage of medical devices in procedures
CREATE TABLE MedicalDeviceUsage (
    UsageID INTEGER PRIMARY KEY,
    DeviceID TEXT,
    DeviceModel TEXT,
    StudyID TEXT,
    UsageDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    OperatorID TEXT,
    ProcedureCode TEXT,
    SettingsJSON TEXT,
    BatteryLevelPercent INTEGER,
    FirmwareVersion TEXT,
    CalibrationStatus TEXT,
    ErrorLog TEXT,
    UsageDurationSec INTEGER,
    DataRecordedGB REAL,
    SterilizationMethod TEXT,
    LocationRoom TEXT,
    MaintenanceFlag BOOLEAN,
    Notes TEXT,
    AdditionalInfo TEXT,
    RecordTimestamp DATETIME
);

INSERT INTO MedicalDeviceUsage VALUES (1, 'MD1001', 'DefibrillatorX', 'ST001', '2024-04-01', '08:00', '08:05', 'OP301', 'PROC100', '{"energy":"200J"}', 85, 'v1.0', 'Calibrated', NULL, 300, 0.02, 'Autoclave', 'ER1', 0, 'Routine use', NULL, '2024-04-01 08:05:00');
INSERT INTO MedicalDeviceUsage VALUES (2, 'MD1002', 'VentilatorV2', 'ST002', '2024-04-03', '10:15', '15:45', 'OP302', 'PROC101', '{"mode":"SIMV"}', 70, 'v2.3', 'Pending', 'Alarm30', 18900, 0.15, 'Chemical', 'ICU3', 1, 'Battery low warning', NULL, '2024-04-03 15:45:00');
INSERT INTO MedicalDeviceUsage VALUES (3, 'MD1003', 'InfusionPumpZ', 'ST003', '2024-04-05', '12:00', '12:30', 'OP303', 'PROC102', '{"rate":"50ml/h"}', 95, 'v3.1', 'Calibrated', NULL, 1800, 0.01, 'None', 'Ward5', 0, 'Standard infusion', NULL, '2024-04-05 12:30:00');

-- StaffLeaveRequest: requests submitted by staff for leave
CREATE TABLE StaffLeaveRequest (
    LeaveRequestID INTEGER PRIMARY KEY,
    StaffID TEXT,
    RequestDate DATE,
    StartLeaveDate DATE,
    EndLeaveDate DATE,
    LeaveType TEXT,
    Reason TEXT,
    ApprovalStatus TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    TotalDays INTEGER,
    PartialDayFlag BOOLEAN,
    DocumentationProvided BOOLEAN,
    Notes TEXT,
    ContactDuringLeave TEXT,
    EmergencyContact TEXT,
    ReplacementStaffID TEXT,
    ShiftImpactScore INTEGER,
    HRComments TEXT,
    LeaveBalanceBefore INTEGER,
    LeaveBalanceAfter INTEGER,
    RequestTimestamp DATETIME,
    ManagerComments TEXT
);

INSERT INTO StaffLeaveRequest VALUES (1, 'S001', '2024-02-01', '2024-03-10', '2024-03-15', 'Vacation', 'Family trip', 'Approved', 'MGR01', '2024-02-05', 5, 0, 1, 'Approved quickly', '5551234', '5555678', 'S010', 3, 'All good', 15, 10, '2024-02-01 09:00:00', 'Enjoy');
INSERT INTO StaffLeaveRequest VALUES (2, 'S002', '2024-02-10', '2024-04-01', '2024-04-01', 'Sick', 'Flu', 'Pending', NULL, NULL, 1, 1, 0, 'Awaiting doctor note', '5552345', '5556789', 'S011', 5, NULL, 12, 11, '2024-02-10 10:30:00', NULL);
INSERT INTO StaffLeaveRequest VALUES (3, 'S003', '2024-01-20', '2024-02-20', '2024-02-25', 'Personal', 'Moving house', 'Rejected', 'MGR02', '2024-01-25', 5, 0, 1, 'Insufficient staffing', '5553456', '5557890', 'S012', 8, 'Denied due to coverage', 20, 20, '2024-01-20 08:45:00', 'Resubmit later');

-- ClinicalPathologyReport: results and interpretations of pathology specimens
CREATE TABLE ClinicalPathologyReport (
    ReportID INTEGER PRIMARY KEY,
    SpecimenID TEXT,
    SpecimenType TEXT,
    CollectionDate DATE,
    ReceivedDate DATE,
    AnalysisDate DATE,
    PathologistID TEXT,
    ReportDate DATE,
    ResultSummary TEXT,
    Interpretation TEXT,
    Conclusion TEXT,
    StainingMethod TEXT,
    MicroscopyFindings TEXT,
    MolecularTestingPerformed BOOLEAN,
    MolecularResult TEXT,
    Immunohistochemistry BOOLEAN,
    IHCResult TEXT,
    QualityScore INTEGER,
    ReportStatus TEXT,
    Signature TEXT,
    ElectronicSignatureID TEXT,
    Notes TEXT,
    ReviewDate DATE,
    Comments TEXT
);

INSERT INTO ClinicalPathologyReport VALUES (1, 'SP001', 'Biopsy', '2024-01-05', '2024-01-06', '2024-01-08', 'P001', '2024-01-09', 'Benign tissue', 'No malignant cells identified', 'Benign', 'H&E', 'Normal architecture', 0, NULL, 0, NULL, 9, 'Final', 'DrPatel', 'ES12345', 'No further action', '2024-01-10', 'Reviewed by senior pathologist');
INSERT INTO ClinicalPathologyReport VALUES (2, 'SP002', 'Cytology', '2024-02-12', '2024-02-13', '2024-02-15', 'P002', '2024-02-16', 'Atypical cells', 'Suspicious for malignancy', 'Indeterminate', 'PapStain', 'Cellular atypia noted', 1, 'KRASmut', 1, 'Positive', 7, 'Preliminary', 'DrLee', 'ES67890', 'Recommend repeat sampling', '2024-02-17', 'Awaiting further tests');
INSERT INTO ClinicalPathologyReport VALUES (3, 'SP003', 'SurgicalResection', '2024-03-20', '2024-03-21', '2024-03-23', 'P003', '2024-03-24', 'Invasive carcinoma', 'High grade tumor present', 'Malignant', 'IHC', 'Strong HER2 expression', 1, 'HER2Amplified', 1, 'Positive', 8, 'Final', 'DrKim', 'ES54321', 'Patient referred to oncology', '2024-03-25', 'All criteria met');