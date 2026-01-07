-- Surgical outcome metrics table
CREATE TABLE SurgicalOutcomeMetrics
(
    ID INTEGER PRIMARY KEY,
    SurgeryDate DATE,
    SurgeonID INTEGER,
    ProcedureCode TEXT,
    ProcedureName TEXT,
    DurationMinutes INTEGER,
    BloodLoss_ml INTEGER,
    ComplicationFlag INTEGER,
    ComplicationDescription TEXT,
    LengthOfStayDays INTEGER,
    Readmission30d INTEGER,
    MortalityFlag INTEGER,
    PainScore INTEGER,
    MobilityScore INTEGER,
    DischargeDisposition TEXT,
    FollowUpDate DATE,
    SatisfactionScore INTEGER,
    Notes TEXT,
    HospitalID INTEGER,
    DepartmentID INTEGER
);

INSERT INTO SurgicalOutcomeMetrics (ID, SurgeryDate, SurgeonID, ProcedureCode, ProcedureName, DurationMinutes, BloodLoss_ml, ComplicationFlag, ComplicationDescription, LengthOfStayDays, Readmission30d, MortalityFlag, PainScore, MobilityScore, DischargeDisposition, FollowUpDate, SatisfactionScore, Notes, HospitalID, DepartmentID) VALUES (1, '2025-01-10', 101, 'PROC123', 'Appendectomy', 90, 200, 0, '', 3, 0, 0, 2, 8, 'Home', '2025-02-10', 9, 'All good', 1, 10);
INSERT INTO SurgicalOutcomeMetrics (ID, SurgeryDate, SurgeonID, ProcedureCode, ProcedureName, DurationMinutes, BloodLoss_ml, ComplicationFlag, ComplicationDescription, LengthOfStayDays, Readmission30d, MortalityFlag, PainScore, MobilityScore, DischargeDisposition, FollowUpDate, SatisfactionScore, Notes, HospitalID, DepartmentID) VALUES (2, '2025-02-15', 102, 'PROC456', 'Hip Replacement', 180, 350, 1, 'Minor bleed', 7, 1, 0, 4, 6, 'Rehab', '2025-04-01', 8, 'Bleed controlled', 2, 12);
INSERT INTO SurgicalOutcomeMetrics (ID, SurgeryDate, SurgeonID, ProcedureCode, ProcedureName, DurationMinutes, BloodLoss_ml, ComplicationFlag, ComplicationDescription, LengthOfStayDays, Readmission30d, MortalityFlag, PainScore, MobilityScore, DischargeDisposition, FollowUpDate, SatisfactionScore, Notes, HospitalID, DepartmentID) VALUES (3, '2025-03-20', 103, 'PROC789', 'Coronary Bypass', 240, 500, 0, '', 10, 0, 0, 3, 5, 'Home', '2025-05-20', 7, 'Smooth recovery', 3, 15);

-- Patient transportation analytics table
CREATE TABLE PatientTransportationAnalytics
(
    TransportID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    RequestDate DATE,
    TransportMode TEXT,
    Distance_km REAL,
    DurationMinutes INTEGER,
    CostUSD REAL,
    StaffID INTEGER,
    VehicleID INTEGER,
    PickupLocation TEXT,
    DropoffLocation TEXT,
    ReasonForTransport TEXT,
    PriorityLevel INTEGER,
    CancelledFlag INTEGER,
    CancellationReason TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT,
    ComplianceScore INTEGER,
    SurveyScore INTEGER
);

INSERT INTO PatientTransportationAnalytics (TransportID, PatientID, RequestDate, TransportMode, Distance_km, DurationMinutes, CostUSD, StaffID, VehicleID, PickupLocation, DropoffLocation, ReasonForTransport, PriorityLevel, CancelledFlag, CancellationReason, CreatedAt, UpdatedAt, Notes, ComplianceScore, SurveyScore) VALUES (1001, 2001, '2025-04-01', 'Ambulance', 12.5, 30, 150.00, 301, 401, 'Ward A', 'Radiology', 'MRI Scan', 2, 0, '', '2025-04-01', '2025-04-01', 'On time', 95, 9);
INSERT INTO PatientTransportationAnalytics (TransportID, PatientID, RequestDate, TransportMode, Distance_km, DurationMinutes, CostUSD, StaffID, VehicleID, PickupLocation, DropoffLocation, ReasonForTransport, PriorityLevel, CancelledFlag, CancellationReason, CreatedAt, UpdatedAt, Notes, ComplianceScore, SurveyScore) VALUES (1002, 2002, '2025-04-05', 'Wheelchair', 0.8, 5, 20.00, 302, 402, 'Room 12B', 'Lobby', 'Discharge', 1, 0, '', '2025-04-05', '2025-04-05', 'Assisted', 98, 10);
INSERT INTO PatientTransportationAnalytics (TransportID, PatientID, RequestDate, TransportMode, Distance_km, DurationMinutes, CostUSD, StaffID, VehicleID, PickupLocation, DropoffLocation, ReasonForTransport, PriorityLevel, CancelledFlag, CancellationReason, CreatedAt, UpdatedAt, Notes, ComplianceScore, SurveyScore) VALUES (1003, 2003, '2025-04-10', 'Van', 25.0, 45, 200.00, 303, 403, 'ER', 'Cardiology', 'Consultation', 3, 1, 'Patient no-show', '2025-04-10', '2025-04-10', 'Cancelled', 80, 5);

-- Facility energy renewable sources table
CREATE TABLE FacilityEnergyRenewableSources
(
    RecordID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    SourceType TEXT,
    CapacityMW REAL,
    GenerationDate DATE,
    GeneratedMWh REAL,
    CO2Avoided_tons REAL,
    OperationalStatus TEXT,
    MaintenanceDate DATE,
    Vendor TEXT,
    ContractStart DATE,
    ContractEnd DATE,
    CostPerMWh REAL,
    IncentiveAmount REAL,
    GridConnectionID INTEGER,
    Latitude REAL,
    Longitude REAL,
    Notes TEXT,
    CreatedBy INTEGER,
    UpdatedBy INTEGER
);

INSERT INTO FacilityEnergyRenewableSources (RecordID, FacilityID, SourceType, CapacityMW, GenerationDate, GeneratedMWh, CO2Avoided_tons, OperationalStatus, MaintenanceDate, Vendor, ContractStart, ContractEnd, CostPerMWh, IncentiveAmount, GridConnectionID, Latitude, Longitude, Notes, CreatedBy, UpdatedBy) VALUES (5001, 1, 'Solar', 5.0, '2025-01-01', 12000.0, 8.5, 'Active', '2025-06-01', 'SunPower', '2024-01-01', '2029-12-31', 45.00, 5000.00, 101, 40.7128, -74.0060, 'North roof panels', 100, 100);
INSERT INTO FacilityEnergyRenewableSources (RecordID, FacilityID, SourceType, CapacityMW, GenerationDate, GeneratedMWh, CO2Avoided_tons, OperationalStatus, MaintenanceDate, Vendor, ContractStart, ContractEnd, CostPerMWh, IncentiveAmount, GridConnectionID, Latitude, Longitude, Notes, CreatedBy, UpdatedBy) VALUES (5002, 2, 'Wind', 10.0, '2025-02-15', 25000.0, 20.0, 'Active', '2025-07-15', 'WindTech', '2023-05-01', '2028-04-30', 55.00, 8000.00, 102, 41.8781, -87.6298, 'East field turbines', 101, 101);
INSERT INTO FacilityEnergyRenewableSources (RecordID, FacilityID, SourceType, CapacityMW, GenerationDate, GeneratedMWh, CO2Avoided_tons, OperationalStatus, MaintenanceDate, Vendor, ContractStart, ContractEnd, CostPerMWh, IncentiveAmount, GridConnectionID, Latitude, Longitude, Notes, CreatedBy, UpdatedBy) VALUES (5003, 3, 'Geothermal', 3.5, '2025-03-10', 8000.0, 5.2, 'Planned', '2025-12-01', 'GeoEnergy', '2025-01-01', '2030-12-31', 60.00, 3000.00, 103, 34.0522, -118.2437, 'Phase 1 drilling', 102, 102);

-- Medical equipment warranty claims table
CREATE TABLE MedicalEquipmentWarrantyClaims
(
    ClaimID INTEGER PRIMARY KEY,
    EquipmentID INTEGER,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyStart DATE,
    WarrantyEnd DATE,
    ClaimDate DATE,
    IssueDescription TEXT,
    Resolution TEXT,
    ClaimAmountUSD REAL,
    ApprovedFlag INTEGER,
    ApprovedBy INTEGER,
    ServiceVendor TEXT,
    ServiceDate DATE,
    DowntimeHours INTEGER,
    ReplacementPart TEXT,
    TechnicianID INTEGER,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT
);

INSERT INTO MedicalEquipmentWarrantyClaims (ClaimID, EquipmentID, SerialNumber, PurchaseDate, WarrantyStart, WarrantyEnd, ClaimDate, IssueDescription, Resolution, ClaimAmountUSD, ApprovedFlag, ApprovedBy, ServiceVendor, ServiceDate, DowntimeHours, ReplacementPart, TechnicianID, CreatedAt, UpdatedAt, Notes) VALUES (9001, 301, 'SN12345', '2022-05-01', '2022-05-01', '2025-05-01', '2025-03-20', 'Display flicker', 'Replaced display module', 1200.00, 1, 501, 'MedTech Services', '2025-03-22', 48, 'DisplayModuleX', 601, '2025-03-20', '2025-03-22', 'Warranty honored');
INSERT INTO MedicalEquipmentWarrantyClaims (ClaimID, EquipmentID, SerialNumber, PurchaseDate, WarrantyStart, WarrantyEnd, ClaimDate, IssueDescription, Resolution, ClaimAmountUSD, ApprovedFlag, ApprovedBy, ServiceVendor, ServiceDate, DowntimeHours, ReplacementPart, TechnicianID, CreatedAt, UpdatedAt, Notes) VALUES (9002, 302, 'SN67890', '2021-09-15', '2021-09-15', '2024-09-15', '2025-01-10', 'Battery failure', 'Battery replaced under warranty', 800.00, 1, 502, 'BioEquip Ltd', '2025-01-12', 24, 'BatteryPackZ', 602, '2025-01-10', '2025-01-12', 'No charge for parts');
INSERT INTO MedicalEquipmentWarrantyClaims (ClaimID, EquipmentID, SerialNumber, PurchaseDate, WarrantyStart, WarrantyEnd, ClaimDate, IssueDescription, Resolution, ClaimAmountUSD, ApprovedFlag, ApprovedBy, ServiceVendor, ServiceDate, DowntimeHours, ReplacementPart, TechnicianID, CreatedAt, UpdatedAt, Notes) VALUES (9003, 303, 'SN54321', '2020-11-20', '2020-11-20', '2023-11-20', '2024-12-05', 'Software crash', 'Software patch applied', 0.00, 0, NULL, 'SoftwareCo', '2024-12-06', 12, NULL, 603, '2024-12-05', '2024-12-06', 'Warranty expired');

-- Clinical trial regulatory review table
CREATE TABLE ClinicalTrialRegulatoryReview
(
    ReviewID INTEGER PRIMARY KEY,
    TrialID INTEGER,
    ReviewDate DATE,
    ReviewerName TEXT,
    ReviewType TEXT,
    Findings TEXT,
    ActionRequired TEXT,
    ActionDueDate DATE,
    ComplianceScore INTEGER,
    ApprovedFlag INTEGER,
    Comments TEXT,
    DocumentReference TEXT,
    UpdatedBy INTEGER,
    UpdatedAt DATE,
    CreatedAt DATE,
    ReviewStatus TEXT,
    RegulatoryBody TEXT,
    SubmissionVersion INTEGER,
    FollowUpDate DATE,
    Notes TEXT
);

INSERT INTO ClinicalTrialRegulatoryReview (ReviewID, TrialID, ReviewDate, ReviewerName, ReviewType, Findings, ActionRequired, ActionDueDate, ComplianceScore, ApprovedFlag, Comments, DocumentReference, UpdatedBy, UpdatedAt, CreatedAt, ReviewStatus, RegulatoryBody, SubmissionVersion, FollowUpDate, Notes) VALUES (2001, 3001, '2025-02-01', 'DrSmith', 'Initial', 'Protocol meets guidelines', 'Submit amendment for consent form', '2025-03-01', 92, 0, 'Pending amendment', 'DOC1001', 701, '2025-02-01', '2025-02-01', 'Pending', 'FDA', 1, '2025-04-01', '');
INSERT INTO ClinicalTrialRegulatoryReview (ReviewID, TrialID, ReviewDate, ReviewerName, ReviewType, Findings, ActionRequired, ActionDueDate, ComplianceScore, ApprovedFlag, Comments, DocumentReference, UpdatedBy, UpdatedAt, CreatedAt, ReviewStatus, RegulatoryBody, SubmissionVersion, FollowUpDate, Notes) VALUES (2002, 3002, '2025-03-15', 'DrLee', 'Midterm', 'Minor deviations noted', 'Update adverse event reporting', '2025-04-15', 85, 0, 'Requires clarification', 'DOC1002', 702, '2025-03-15', '2025-03-15', 'Pending', 'EMA', 2, '2025-06-01', '');
INSERT INTO ClinicalTrialRegulatoryReview (ReviewID, TrialID, ReviewDate, ReviewerName, ReviewType, Findings, ActionRequired, ActionDueDate, ComplianceScore, ApprovedFlag, Comments, DocumentReference, UpdatedBy, UpdatedAt, CreatedAt, ReviewStatus, RegulatoryBody, SubmissionVersion, FollowUpDate, Notes) VALUES (2003, 3003, '2025-04-20', 'DrKim', 'Final', 'All requirements satisfied', 'Close trial file', '2025-05-01', 98, 1, 'Approved without conditions', 'DOC1003', 703, '2025-04-20', '2025-04-20', 'Approved', 'HealthCanada', 3, NULL, '');

-- Hospital incident response log table
CREATE TABLE HospitalIncidentResponseLog
(
    IncidentID INTEGER PRIMARY KEY,
    IncidentDate DATE,
    IncidentType TEXT,
    Description TEXT,
    SeverityLevel INTEGER,
    ReportedBy INTEGER,
    DepartmentID INTEGER,
    ActionsTaken TEXT,
    ResolutionDate DATE,
    ClosedFlag INTEGER,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    ImpactScore INTEGER,
    Witnesses TEXT,
    NotificationsSent TEXT,
    RootCauseAnalysis TEXT,
    PreventiveMeasures TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT
);

INSERT INTO HospitalIncidentResponseLog (IncidentID, IncidentDate, IncidentType, Description, SeverityLevel, ReportedBy, DepartmentID, ActionsTaken, ResolutionDate, ClosedFlag, FollowUpRequired, FollowUpDate, ImpactScore, Witnesses, NotificationsSent, RootCauseAnalysis, PreventiveMeasures, CreatedAt, UpdatedAt, Notes) VALUES (3001, '2025-01-12', 'Fire', 'Small kitchen fire', 3, 401, 10, 'Extinguished with fire extinguisher', '2025-01-12', 1, 0, NULL, 70, 'Chef, KitchenStaff', 'SafetyTeam, Management', 'Faulty stove', 'Install automatic shutoff', '2025-01-12', '2025-01-12', '');
INSERT INTO HospitalIncidentResponseLog (IncidentID, IncidentDate, IncidentType, Description, SeverityLevel, ReportedBy, DepartmentID, ActionsTaken, ResolutionDate, ClosedFlag, FollowUpRequired, FollowUpDate, ImpactScore, Witnesses, NotificationsSent, RootCauseAnalysis, PreventiveMeasures, CreatedAt, UpdatedAt, Notes) VALUES (3002, '2025-02-05', 'DataBreaches', 'Unauthorized access to patient portal', 4, 402, 20, 'Revoked credentials, reset passwords', '2025-02-06', 1, 1, '2025-03-01', 85, 'ITStaff', 'Legal, Compliance', 'Weak password policy', 'Enforce multi‑factor authentication', '2025-02-05', '2025-02-06', '');
INSERT INTO HospitalIncidentResponseLog (IncidentID, IncidentDate, IncidentType, Description, SeverityLevel, ReportedBy, DepartmentID, ActionsTaken, ResolutionDate, ClosedFlag, FollowUpRequired, FollowUpDate, ImpactScore, Witnesses, NotificationsSent, RootCauseAnalysis, PreventiveMeasures, CreatedAt, UpdatedAt, Notes) VALUES (3003, '2025-03-20', 'EquipmentFailure', 'MRI machine stopped mid‑scan', 2, 403, 30, 'Technician reset system, performed calibration', '2025-03-21', 1, 0, NULL, 60, 'RadiologyStaff', 'RadiologyHead', 'Software crash due to outdated patch', 'Apply regular updates', '2025-03-20', '2025-03-21', '');

-- Pharmacy compounding analytics table
CREATE TABLE PharmacyCompoundingAnalytics
(
    BatchID INTEGER PRIMARY KEY,
    CompoundName TEXT,
    FormulationDate DATE,
    TechnicianID INTEGER,
    IngredientCount INTEGER,
    TotalWeight_g REAL,
    Volume_ml REAL,
    PurityPercent REAL,
    YieldPercent REAL,
    StabilityDays INTEGER,
    StorageTempC REAL,
    ExpiryDate DATE,
    QCResult TEXT,
    DeviationFlag INTEGER,
    DeviationDescription TEXT,
    CostUSD REAL,
    ProductionLine TEXT,
    QualityScore INTEGER,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT
);

INSERT INTO PharmacyCompoundingAnalytics (BatchID, CompoundName, FormulationDate, TechnicianID, IngredientCount, TotalWeight_g, Volume_ml, PurityPercent, YieldPercent, StabilityDays, StorageTempC, ExpiryDate, QCResult, DeviationFlag, DeviationDescription, CostUSD, ProductionLine, QualityScore, CreatedAt, UpdatedAt, Notes) VALUES (4001, 'CeftriaxoneIV', '2025-01-15', 501, 5, 250.0, 500.0, 99.5, 98.0, 365, 4.0, '2026-01-15', 'Pass', 0, '', 1500.00, 'LineA', 96, '2025-01-15', '2025-01-15', '');
INSERT INTO PharmacyCompoundingAnalytics (BatchID, CompoundName, FormulationDate, TechnicianID, IngredientCount, TotalWeight_g, Volume_ml, PurityPercent, YieldPercent, StabilityDays, StorageTempC, ExpiryDate, QCResult, DeviationFlag, DeviationDescription, CostUSD, ProductionLine, QualityScore, CreatedAt, UpdatedAt, Notes) VALUES (4002, 'HeparinSodium', '2025-02-10', 502, 4, 200.0, 400.0, 98.0, 97.5, 730, 2.0, '2027-02-10', 'Pass', 1, 'Minor weight variance', 1200.00, 'LineB', 92, '2025-02-10', '2025-02-10', 'Investigated variance');
INSERT INTO PharmacyCompoundingAnalytics (BatchID, CompoundName, FormulationDate, TechnicianID, IngredientCount, TotalWeight_g, Volume_ml, PurityPercent, YieldPercent, StabilityDays, StorageTempC, ExpiryDate, QCResult, DeviationFlag, DeviationDescription, CostUSD, ProductionLine, QualityScore, CreatedAt, UpdatedAt, Notes) VALUES (4003, 'MorphineHydrochloride', '2025-03-05', 503, 6, 300.0, 600.0, 99.0, 99.2, 180, 3.0, '2025-09-05', 'Fail', 1, 'Purity below threshold', 2000.00, 'LineC', 78, '2025-03-05', '2025-03-05', 'Reprocess required');

-- Radiology image archive table
CREATE TABLE RadiologyImageArchive
(
    ImageID INTEGER PRIMARY KEY,
    StudyID INTEGER,
    PatientID INTEGER,
    Modality TEXT,
    AcquisitionDate DATE,
    FilePath TEXT,
    FileSizeKB INTEGER,
    RadiationDose_mGy REAL,
    ContrastUsed TEXT,
    BodyPart TEXT,
    RadiologistID INTEGER,
    ReportID INTEGER,
    CompressionRatio REAL,
    StorageLocation TEXT,
    ArchiveStatus TEXT,
    AccessCount INTEGER,
    LastAccessed DATE,
    RetentionPeriodDays INTEGER,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO RadiologyImageArchive (ImageID, StudyID, PatientID, Modality, AcquisitionDate, FilePath, FileSizeKB, RadiationDose_mGy, ContrastUsed, BodyPart, RadiologistID, ReportID, CompressionRatio, StorageLocation, ArchiveStatus, AccessCount, LastAccessed, RetentionPeriodDays, CreatedAt, UpdatedAt) VALUES (6001, 7001, 2001, 'CT', '2025-01-20', '/archive/ct/6001.dcm', 8500, 12.5, 'Iodine', 'Abdomen', 801, 9001, 1.2, 'ColdRoomA', 'Active', 5, '2025-06-01', 3650, '2025-01-20', '2025-01-20');
INSERT INTO RadiologyImageArchive (ImageID, StudyID, PatientID, Modality, AcquisitionDate, FilePath, FileSizeKB, RadiationDose_mGy, ContrastUsed, BodyPart, RadiologistID, ReportID, CompressionRatio, StorageLocation, ArchiveStatus, AccessCount, LastAccessed, RetentionPeriodDays, CreatedAt, UpdatedAt) VALUES (6002, 7002, 2002, 'MRI', '2025-02-15', '/archive/mri/6002.dcm', 12500, 0.0, 'Gadolinium', 'Brain', 802, 9002, 1.0, 'ColdRoomB', 'Active', 3, '2025-06-05', 3650, '2025-02-15', '2025-02-15');
INSERT INTO RadiologyImageArchive (ImageID, StudyID, PatientID, Modality, AcquisitionDate, FilePath, FileSizeKB, RadiationDose_mGy, ContrastUsed, BodyPart, RadiologistID, ReportID, CompressionRatio, StorageLocation, ArchiveStatus, AccessCount, LastAccessed, RetentionPeriodDays, CreatedAt, UpdatedAt) VALUES (6003, 7003, 2003, 'XRay', '2025-03-10', '/archive/xray/6003.dcm', 4500, 0.3, '', 'Chest', 803, 9003, 1.5, 'ColdRoomC', 'Archived', 10, '2025-06-10', 1825, '2025-03-10', '2025-03-10');

-- Lab specimen processing table
CREATE TABLE LabSpecimenProcessing
(
    ProcessID INTEGER PRIMARY KEY,
    SpecimenID INTEGER,
    ReceivedDate DATE,
    ReceivedBy INTEGER,
    ProcessingStage TEXT,
    StartTime TEXT,
    EndTime TEXT,
    TechnicianID INTEGER,
    InstrumentID INTEGER,
    ResultStatus TEXT,
    ResultValue TEXT,
    Units TEXT,
    ReferenceRange TEXT,
    QCFlag INTEGER,
    Comments TEXT,
    StorageTempC REAL,
    StorageLocation TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO LabSpecimenProcessing (ProcessID, SpecimenID, ReceivedDate, ReceivedBy, ProcessingStage, StartTime, EndTime, TechnicianID, InstrumentID, ResultStatus, ResultValue, Units, ReferenceRange, QCFlag, Comments, StorageTempC, StorageLocation, CreatedAt, UpdatedAt) VALUES (8001, 9001, '2025-01-05', 601, 'Centrifugation', '08:00', '08:15', 701, 801, 'Completed', '5.6', 'mmol/L', '3.5-5.5', 0, '', 4.0, 'FreezerA', '2025-01-05', '2025-01-05');
INSERT INTO LabSpecimenProcessing (ProcessID, SpecimenID, ReceivedDate, ReceivedBy, ProcessingStage, StartTime, EndTime, TechnicianID, InstrumentID, ResultStatus, ResultValue, Units, ReferenceRange, QCFlag, Comments, StorageTempC, StorageLocation, CreatedAt, UpdatedAt) VALUES (8002, 9002, '2025-02-12', 602, 'PCR', '09:30', '10:45', 702, 802, 'Completed', 'Positive', '', '', 0, '', -20.0, 'FreezerB', '2025-02-12', '2025-02-12');
INSERT INTO LabSpecimenProcessing (ProcessID, SpecimenID, ReceivedDate, ReceivedBy, ProcessingStage, StartTime, EndTime, TechnicianID, InstrumentID, ResultStatus, ResultValue, Units, ReferenceRange, QCFlag, Comments, StorageTempC, StorageLocation, CreatedAt, UpdatedAt) VALUES (8003, 9003, '2025-03-20', 603, 'DNA Extraction', '11:00', '11:30', 703, 803, 'Failed', '', '', '', 1, 'Low yield', -20.0, 'FreezerC', '2025-03-20', '2025-03-20');

-- Health IT system inventory table
CREATE TABLE HealthITSystemInventory
(
    SystemID INTEGER PRIMARY KEY,
    SystemName TEXT,
    Vendor TEXT,
    PurchaseDate DATE,
    LicenseKey TEXT,
    LicenseExpiry DATE,
    SupportContact TEXT,
    Version TEXT,
    DeploymentEnvironment TEXT,
    ServerCount INTEGER,
    DatabaseName TEXT,
    PrimaryOwner INTEGER,
    BackupFrequencyDays INTEGER,
    LastPatchDate DATE,
    PatchLevel TEXT,
    ComplianceStatus TEXT,
    CostUSD REAL,
    Status TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO HealthITSystemInventory (SystemID, SystemName, Vendor, PurchaseDate, LicenseKey, LicenseExpiry, SupportContact, Version, DeploymentEnvironment, ServerCount, DatabaseName, PrimaryOwner, BackupFrequencyDays, LastPatchDate, PatchLevel, ComplianceStatus, CostUSD, Status, CreatedAt, UpdatedAt) VALUES (10001, 'EHR_Main', 'HealthSoft', '2022-03-01', 'LIC12345', '2025-03-01', 'support@healthsoft.com', 'v5.2', 'OnPremise', 12, 'EHR_DB', 901, 1, '2025-01-15', 'Patch12', 'Compliant', 250000.00, 'Active', '2022-03-01', '2025-01-15');
INSERT INTO HealthITSystemInventory (SystemID, SystemName, Vendor, PurchaseDate, LicenseKey, LicenseExpiry, SupportContact, Version, DeploymentEnvironment, ServerCount, DatabaseName, PrimaryOwner, BackupFrequencyDays, LastPatchDate, PatchLevel, ComplianceStatus, CostUSD, Status, CreatedAt, UpdatedAt) VALUES (10002, 'LabInfoSys', 'LabTech', '2021-07-15', 'LIC67890', '2024-07-15', 'labtechsupport@labtech.com', 'v3.8', 'Cloud', 4, 'Lab_DB', 902, 7, '2025-02-20', 'Patch7', 'Compliant', 95000.00, 'Active', '2021-07-15', '2025-02-20');
INSERT INTO HealthITSystemInventory (SystemID, SystemName, Vendor, PurchaseDate, LicenseKey, LicenseExpiry, SupportContact, Version, DeploymentEnvironment, ServerCount, DatabaseName, PrimaryOwner, BackupFrequencyDays, LastPatchDate, PatchLevel, ComplianceStatus, CostUSD, Status, CreatedAt, UpdatedAt) VALUES (10003, 'PharmaMgmt', 'MediCorp', '2020-11-30', 'LIC54321', '2023-11-30', 'support@medicorp.com', 'v2.5', 'Hybrid', 6, 'Pharma_DB', 903, 3, '2025-03-10', 'Patch3', 'NonCompliant', 180000.00, 'Maintenance', '2020-11-30', '2025-03-10');