-- Hospital Energy Contract information
CREATE TABLE HospitalEnergyContract
(
    ContractID               INTEGER PRIMARY KEY,
    ProviderName             TEXT,
    StartDate                DATE,
    EndDate                  DATE,
    ContractType             TEXT,
    CapacityMW               REAL,
    CostPerMW                REAL,
    FixedFee                 REAL,
    VariableFee              REAL,
    Currency                 TEXT,
    RenewablePercentage      INTEGER,
    ContractStatus           TEXT,
    ContactPerson            TEXT,
    ContactPhone             TEXT,
    BillingCycle             TEXT,
    PenaltyClause            TEXT,
    RenewableSource          TEXT,
    CarbonOffsetCredits      INTEGER,
    SLAHours                 INTEGER,
    SLAPenaltyHours          INTEGER,
    Notes                    TEXT
);

INSERT INTO HospitalEnergyContract (ContractID, ProviderName, StartDate, EndDate, ContractType, CapacityMW, CostPerMW, FixedFee, VariableFee, Currency, RenewablePercentage, ContractStatus, ContactPerson, ContactPhone, BillingCycle, PenaltyClause, RenewableSource, CarbonOffsetCredits, SLAHours, SLAPenaltyHours, Notes) VALUES
(1, 'GreenPower', '2021-04-01', '2026-03-31', 'Supply', 150.5, 45.2, 10000, 5, 'USD', 80, 'Active', 'John Doe', '5551234567', 'Monthly', 'LatePayment', 'Solar', 200, 24, 2, 'Initial contract'),
(2, 'EcoEnergy', '2022-01-15', '2027-01-14', 'Supply', 200.0, 42.0, 12000, 4, 'USD', 90, 'Pending', 'Jane Smith', '5559876543', 'Quarterly', 'EarlyTermination', 'Wind', 150, 48, 1, 'Awaiting approval'),
(3, 'PowerGrid', '2020-07-01', '2025-06-30', 'Purchase', 100.0, 50.0, 8000, 6, 'USD', 60, 'Expired', 'Mike Brown', '5555551212', 'Annual', 'None', 'Hydro', 100, 12, 0, 'Contract completed');

-- Biomedical Equipment Warranty details
CREATE TABLE BiomedicalEquipmentWarranty
(
    WarrantyID               INTEGER PRIMARY KEY,
    EquipmentID              INTEGER,
    Manufacturer             TEXT,
    ModelNumber              TEXT,
    SerialNumber             TEXT,
    PurchaseDate             DATE,
    WarrantyStartDate        DATE,
    WarrantyEndDate          DATE,
    WarrantyPeriodMonths    INTEGER,
    CoverageDetails          TEXT,
    ServiceLevel             TEXT,
    ContactPhone             TEXT,
    ContactEmail             TEXT,
    ReplacementPolicy        TEXT,
    ExtendedWarrantyFlag     INTEGER,
    ExtendedWarrantyCost     REAL,
    ExtendedWarrantyMonths   INTEGER,
    ClaimProcedure           TEXT,
    ClaimContact             TEXT,
    Notes                    TEXT
);

INSERT INTO BiomedicalEquipmentWarranty (WarrantyID, EquipmentID, Manufacturer, ModelNumber, SerialNumber, PurchaseDate, WarrantyStartDate, WarrantyEndDate, WarrantyPeriodMonths, CoverageDetails, ServiceLevel, ContactPhone, ContactEmail, ReplacementPolicy, ExtendedWarrantyFlag, ExtendedWarrantyCost, ExtendedWarrantyMonths, ClaimProcedure, ClaimContact, Notes) VALUES
(101, 5001, 'MedTech', 'MTX-200', 'SN12345', '2020-03-10', '2020-03-10', '2023-03-09', 36, 'PartsAndLabor', 'Standard', '5551112222', 'support@medtech.com', 'Full', 0, 0, 0, 'OnlineForm', 'TechSupport', 'Initial warranty'),
(102, 5002, 'HealthEquip', 'HE-500', 'SN67890', '2019-11-05', '2019-11-05', '2022-11-04', 36, 'PartsOnly', 'Basic', '5553334444', 'service@healthequip.com', 'ReplacementOnly', 1, 1500, 24, 'PhoneCall', 'WarrantyDesk', 'Extended purchased'),
(103, 5003, 'BioDevices', 'BD-1000', 'SN24680', '2021-06-20', '2021-06-20', '2024-06-19', 36, 'FullCoverage', 'Premium', '5557778888', 'contact@biodevices.com', 'Full', 0, 0, 0, 'EmailForm', 'CustomerCare', 'Standard coverage');

-- Telehealth Provider Credential records
CREATE TABLE TelehealthProviderCredential
(
    ProviderID               INTEGER PRIMARY KEY,
    ProviderName             TEXT,
    LicenseNumber            TEXT,
    LicenseState             TEXT,
    Specialty                TEXT,
    CredentialDate           DATE,
    CredentialExpiration     DATE,
    CredentialingAgency      TEXT,
    AccreditationStatus      TEXT,
    AccreditationNumber      TEXT,
    TelehealthPlatform       TEXT,
    PlatformAccountID        TEXT,
    NetworkID                TEXT,
    BandwidthMbps            INTEGER,
    VideoResolution          TEXT,
    AudioQuality             TEXT,
    SecureConnectionType     TEXT,
    DataEncryptionLevel      TEXT,
    SupportContact           TEXT,
    SupportPhone             TEXT,
    Notes                    TEXT
);

INSERT INTO TelehealthProviderCredential (ProviderID, ProviderName, LicenseNumber, LicenseState, Specialty, CredentialDate, CredentialExpiration, CredentialingAgency, AccreditationStatus, AccreditationNumber, TelehealthPlatform, PlatformAccountID, NetworkID, BandwidthMbps, VideoResolution, AudioQuality, SecureConnectionType, DataEncryptionLevel, SupportContact, SupportPhone, Notes) VALUES
(1, 'DrAlice', 'LIC12345', 'CA', 'Dermatology', '2021-02-01', '2024-02-01', 'NationalBoard', 'Accredited', 'ACC9876', 'HealConnect', 'ACC001', 'NET01', 50, '1080p', 'HD', 'TLS', 'AES256', 'TechSupport', '5552223333', 'First credential'),
(2, 'DrBob', 'LIC54321', 'NY', 'Psychiatry', '2020-07-15', '2023-07-15', 'StateMedical', 'Pending', 'ACC1234', 'TeleMedPlus', 'ACC002', 'NET02', 30, '720p', 'Standard', 'SSL', 'AES128', 'HelpDesk', '5554445555', 'Awaiting final approval'),
(3, 'DrCarol', 'LIC67890', 'TX', 'Cardiology', '2022-01-10', '2025-01-10', 'NationalBoard', 'Accredited', 'ACC5678', 'MediLink', 'ACC003', 'NET03', 100, '4K', 'HD', 'TLS', 'AES256', 'SupportTeam', '5556667777', 'Credential renewed');

-- Medical Device Failure Analysis records
CREATE TABLE MedicalDeviceFailureAnalysis
(
    FailureID                INTEGER PRIMARY KEY,
    DeviceID                 INTEGER,
    DeviceType               TEXT,
    FailureDate              DATE,
    DetectionMethod          TEXT,
    FailureMode              TEXT,
    RootCause                TEXT,
    ImpactSeverity           TEXT,
    DowntimeHours            REAL,
    RepairCost               REAL,
    ReplacementRequired      INTEGER,
    AnalystName              TEXT,
    AnalysisDate             DATE,
    FindingsSummary          TEXT,
    Recommendations          TEXT,
    FollowUpAction           TEXT,
    FollowUpDueDate          DATE,
    Status                   TEXT,
    DocumentationLink        TEXT,
    Notes                    TEXT
);

INSERT INTO MedicalDeviceFailureAnalysis (FailureID, DeviceID, DeviceType, FailureDate, DetectionMethod, FailureMode, RootCause, ImpactSeverity, DowntimeHours, RepairCost, ReplacementRequired, AnalystName, AnalysisDate, FindingsSummary, Recommendations, FollowUpAction, FollowUpDueDate, Status, DocumentationLink, Notes) VALUES
(1001, 2001, 'Ventilator', '2023-03-12', 'Alarm', 'PowerLoss', 'BatteryFailure', 'High', 12.5, 2500, 1, 'Ellen', '2023-03-15', 'Battery degraded', 'Replace battery pack', 'Inspect other units', '2023-04-01', 'Open', 'doc1001.pdf', 'Urgent action needed'),
(1002, 2002, 'InfusionPump', '2023-05-08', 'ManualCheck', 'SoftwareGlitch', 'FirmwareBug', 'Medium', 4.0, 1200, 0, 'Mark', '2023-05-10', 'Software reset required', 'Apply firmware patch', 'Verify patch effectiveness', '2023-05-20', 'Closed', 'doc1002.pdf', 'Patch applied'),
(1003, 2003, 'MRI_Scanner', '2023-01-22', 'RoutineQC', 'CoolingFailure', 'CoolantLeak', 'Critical', 48.0, 15000, 1, 'Susan', '2023-01-25', 'Leak in cooling system', 'Replace coolant circuit', 'Schedule maintenance', '2023-02-15', 'Open', 'doc1003.pdf', 'Order parts');

-- Imaging Study Quality Control logs
CREATE TABLE ImagingStudyQualityControl
(
    QCID                     INTEGER PRIMARY KEY,
    StudyID                  INTEGER,
    Modality                 TEXT,
    QCDate                   DATE,
    TechnicianID             INTEGER,
    QAProcedure              TEXT,
    PassedFlag               INTEGER,
    FailureReason            TEXT,
    ImageQualityScore        INTEGER,
    NoiseLevel               REAL,
    Resolution               TEXT,
    Contrast                 REAL,
    ArtifactScore            INTEGER,
    ReviewRadiologistID      INTEGER,
    ReviewDate               DATE,
    Comments                 TEXT,
    CorrectiveActionTaken    TEXT,
    ActionDate               DATE,
    Status                   TEXT,
    Notes                    TEXT
);

INSERT INTO ImagingStudyQualityControl (QCID, StudyID, Modality, QCDate, TechnicianID, QAProcedure, PassedFlag, FailureReason, ImageQualityScore, NoiseLevel, Resolution, Contrast, ArtifactScore, ReviewRadiologistID, ReviewDate, Comments, CorrectiveActionTaken, ActionDate, Status, Notes) VALUES
(5001, 3001, 'CT', '2023-02-10', 401, 'StandardQC', 1, '', 95, 0.8, '1mm', 1.2, 2, 601, '2023-02-11', 'All parameters ok', '', NULL, 'Closed', 'No issues'),
(5002, 3002, 'MRI', '2023-04-05', 402, 'AdvancedQC', 0, 'MotionArtifact', 70, 1.5, '2mm', 0.9, 5, 602, '2023-04-06', 'Patient moved', 'Repeat scan with sedation', '2023-04-07', 'Open', 'Reschedule needed'),
(5003, 3003, 'XRay', '2023-01-20', 403, 'BasicQC', 1, '', 88, 0.4, '5mm', 1.0, 1, 603, '2023-01-21', 'Good quality', '', NULL, 'Closed', 'Accepted');

-- Hospital Waste Disposal records
CREATE TABLE HospitalWasteDisposalRecord
(
    DisposalID               INTEGER PRIMARY KEY,
    WasteType                TEXT,
    CollectionDate           DATE,
    DisposalMethod           TEXT,
    VolumeLiters             REAL,
    WeightKg                 REAL,
    ContainerID              TEXT,
    HazardLevel              TEXT,
    Department               TEXT,
    ResponsibleStaffID       INTEGER,
    DisposalCompany          TEXT,
    ContractNumber           TEXT,
    InvoiceNumber            TEXT,
    Cost                     REAL,
    ApprovalStatus           TEXT,
    ApprovedBy               TEXT,
    ApprovalDate             DATE,
    Remarks                  TEXT,
    FollowUpRequired         INTEGER,
    FollowUpDate             DATE,
    Notes                    TEXT
);

INSERT INTO HospitalWasteDisposalRecord (DisposalID, WasteType, CollectionDate, DisposalMethod, VolumeLiters, WeightKg, ContainerID, HazardLevel, Department, ResponsibleStaffID, DisposalCompany, ContractNumber, InvoiceNumber, Cost, ApprovalStatus, ApprovedBy, ApprovalDate, Remarks, FollowUpRequired, FollowUpDate, Notes) VALUES
(9001, 'Biohazard', '2023-03-15', 'Incineration', 120.5, 85.3, 'C001', 'High', 'Pathology', 701, 'CleanInc', 'CN1001', 'INV9001', 1500, 'Approved', 'DrSmith', '2023-03-16', 'All regulations met', 0, NULL, ''),
(9002, 'Sharp', '2023-04-10', 'SharpsContainer', 45.2, 30.0, 'C002', 'Medium', 'Surgery', 702, 'SharpSafe', 'CN1002', 'INV9002', 800, 'Pending', 'DrJones', '2023-04-11', 'Awaiting inspection', 1, '2023-04-20', ''),
(9003, 'Pharma', '2023-02-28', 'ChemicalNeutralization', 200.0, 150.0, 'C003', 'Low', 'Pharmacy', 703, 'ChemDispose', 'CN1003', 'INV9003', 2500, 'Approved', 'DrLee', '2023-03-01', 'Disposed per protocol', 0, NULL, '');

-- Research Data Access Request Log
CREATE TABLE ResearchDataAccessRequestLog
(
    RequestID                INTEGER PRIMARY KEY,
    ResearcherID             INTEGER,
    ProjectID                INTEGER,
    DataSetName              TEXT,
    RequestDate              DATE,
    AccessLevel              TEXT,
    ApprovedFlag             INTEGER,
    ApprovalDate             DATE,
    ApprovalOfficerID        INTEGER,
    ReasonForAccess          TEXT,
    DataUseAgreementSigned   INTEGER,
    ExpirationDate           DATE,
    AccessDurationDays       INTEGER,
    DataRetrievalMethod      TEXT,
    SecurityProtocol         TEXT,
    EncryptionUsed           TEXT,
    AuditTrailEnabled        INTEGER,
    Comments                 TEXT,
    Status                   TEXT,
    Notes                    TEXT
);

INSERT INTO ResearchDataAccessRequestLog (RequestID, ResearcherID, ProjectID, DataSetName, RequestDate, AccessLevel, ApprovedFlag, ApprovalDate, ApprovalOfficerID, ReasonForAccess, DataUseAgreementSigned, ExpirationDate, AccessDurationDays, DataRetrievalMethod, SecurityProtocol, EncryptionUsed, AuditTrailEnabled, Comments, Status, Notes) VALUES
(2001, 801, 301, 'GenomicsSeq', '2023-05-01', 'ReadOnly', 1, '2023-05-03', 901, 'Analysis', 1, '2024-05-01', 365, 'SecureFTP', 'TLS1.2', 'AES256', 1, '', 'Completed', ''),
(2002, 802, 302, 'ClinicalTrials', '2023-06-10', 'ReadWrite', 0, NULL, NULL, 'DataIntegration', 0, NULL, 180, 'API', 'OAuth2', 'AES128', 1, 'Pending IRB approval', 'Pending', ''),
(2003, 803, 303, 'ImagingRepo', '2023-04-15', 'ReadOnly', 1, '2023-04-18', 902, 'AlgorithmTraining', 1, '2023-10-15', 180, 'VPN', 'SSL', 'AES256', 1, 'Access granted for 6 months', 'Active', '');

-- Facility Airflow Analysis records
CREATE TABLE FacilityAirflowAnalysis
(
    AnalysisID               INTEGER PRIMARY KEY,
    ZoneID                   TEXT,
    MeasurementDate          DATE,
    AirflowCfm               REAL,
    PressureDiffPa           REAL,
    TemperatureC             REAL,
    HumidityPercent          REAL,
    FilterStatus             TEXT,
    DuctInspectionFlag      INTEGER,
    Findings                 TEXT,
    RecommendedActions       TEXT,
    EngineerID               INTEGER,
    ReviewDate               DATE,
    Status                   TEXT,
    Notes                    TEXT,
    EquipmentID              INTEGER,
    SensorID                 INTEGER,
    CalibrationDate          DATE,
    CalibrationDueDate       DATE,
    DataLoggerID             TEXT,
    AnomalyDetectedFlag     INTEGER
);

INSERT INTO FacilityAirflowAnalysis (AnalysisID, ZoneID, MeasurementDate, AirflowCfm, PressureDiffPa, TemperatureC, HumidityPercent, FilterStatus, DuctInspectionFlag, Findings, RecommendedActions, EngineerID, ReviewDate, Status, Notes, EquipmentID, SensorID, CalibrationDate, CalibrationDueDate, DataLoggerID, AnomalyDetectedFlag) VALUES
(3001, 'Z01', '2023-03-05', 350.0, 12.5, 22.5, 45.0, 'Clean', 1, 'Flow meets spec', 'No action needed', 1001, '2023-03-06', 'Closed', '', 5001, 2001, '2023-02-01', '2023-08-01', 'DL001', 0),
(3002, 'Z02', '2023-04-12', 280.0, 8.0, 21.0, 50.0, 'Dirty', 0, 'Reduced flow due to filter', 'Replace filter', 1002, '2023-04-13', 'Open', '', 5002, 2002, '2023-01-15', '2023-07-15', 'DL002', 1),
(3003, 'Z03', '2023-05-20', 400.0, 15.0, 23.0, 40.0, 'Clean', 1, 'Optimal performance', 'Maintain schedule', 1003, '2023-05-21', 'Closed', '', 5003, 2003, '2023-03-10', '2023-09-10', 'DL003', 0);

-- Pharmaceutical Batch Recall Notice
CREATE TABLE PharmaceuticalBatchRecallNotice
(
    RecallID                 INTEGER PRIMARY KEY,
    BatchNumber              TEXT,
    DrugName                 TEXT,
    Manufacturer             TEXT,
    DistributionDate         DATE,
    RecallDate               DATE,
    Reason                   TEXT,
    SeverityLevel            TEXT,
    AffectedRegions          TEXT,
    ContactPhone             TEXT,
    ContactMail              TEXT,
    Instructions             TEXT,
    Status                   TEXT,
    InitiatedBy              TEXT,
    ApprovalDate             DATE,
    VerificationDate         DATE,
    DistributionChannels     TEXT,
    RecallQuantity           INTEGER,
    RemainingStock           INTEGER,
    Notes                    TEXT
);

INSERT INTO PharmaceuticalBatchRecallNotice (RecallID, BatchNumber, DrugName, Manufacturer, DistributionDate, RecallDate, Reason, SeverityLevel, AffectedRegions, ContactPhone, ContactMail, Instructions, Status, InitiatedBy, ApprovalDate, VerificationDate, DistributionChannels, RecallQuantity, RemainingStock, Notes) VALUES
(4001, 'BCH001', 'PainRelief', 'PharmaCo', '2023-01-15', '2023-03-01', 'Contamination', 'High', 'NorthAmerica', '5551230000', 'recall@pharmaco.com', 'Return to pharmacy', 'Active', 'QualityDept', '2023-03-02', '2023-03-05', 'Retail,Hospital', 5000, 1200, ''),
(4002, 'BCH002', 'AntibioticX', 'HealthMeds', '2022-11-20', '2023-02-15', 'LabelError', 'Medium', 'Europe', '5559870000', 'alert@healthmeds.com', 'Do not use', 'Closed', 'Regulatory', '2023-02-16', '2023-02-18', 'Wholesale', 3000, 0, ''),
(4003, 'BCH003', 'VaccineY', 'BioLife', '2023-04-10', '2023-04-20', 'StabilityIssue', 'Critical', 'Asia', '5555550000', 'safety@b lif e.com', 'Quarantine stock', 'Active', 'SafetyOffice', '2023-04-21', '2023-04-23', 'Hospital,Clinic', 2000, 500, '');

-- Hospital Construction Phase tracking
CREATE TABLE HospitalConstructionPhase
(
    PhaseID                  INTEGER PRIMARY KEY,
    ProjectID                INTEGER,
    PhaseName                TEXT,
    StartDate                DATE,
    EndDate                  DATE,
    BudgetAllocated          REAL,
    BudgetSpent              REAL,
    ContractorName           TEXT,
    SupervisorID             INTEGER,
    Milestone1CompleteFlag   INTEGER,
    Milestone2CompleteFlag   INTEGER,
    Milestone3CompleteFlag   INTEGER,
    RiskLevel                TEXT,
    Comments                 TEXT,
    Status                   TEXT,
    ApprovalDate             DATE,
    ApprovedBy               TEXT,
    ChangeOrderCount         INTEGER,
    LastChangeOrderDate      DATE,
    Notes                    TEXT
);

INSERT INTO HospitalConstructionPhase (PhaseID, ProjectID, PhaseName, StartDate, EndDate, BudgetAllocated, BudgetSpent, ContractorName, SupervisorID, Milestone1CompleteFlag, Milestone2CompleteFlag, Milestone3CompleteFlag, RiskLevel, Comments, Status, ApprovalDate, ApprovedBy, ChangeOrderCount, LastChangeOrderDate, Notes) VALUES
(6001, 701, 'Foundation', '2022-01-10', '2022-06-30', 2000000, 1800000, 'BuildCorp', 1101, 1, 1, 0, 'Medium', 'On schedule', 'Closed', '2022-07-01', 'DirectorOps', 2, '2022-05-15', ''),
(6002, 701, 'Structural', '2022-07-01', '2023-03-15', 5000000, 3500000, 'ConstructInc', 1102, 1, 0, 0, 'High', 'Delayed due to material shortage', 'Open', '2023-03-20', 'DirectorOps', 3, '2023-02-10', ''),
(6003, 701, 'Finishing', '2023-04-01', '2023-12-31', 3000000, 500000, 'DesignBuild', 1103, 0, 0, 0, 'Low', 'Planning phase', 'Planned', '2023-04-05', 'DirectorOps', 0, NULL, '');
