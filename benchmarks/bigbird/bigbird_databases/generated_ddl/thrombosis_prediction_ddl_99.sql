-- Utility provider contract information
CREATE TABLE UtilityProviderContract
(
    ContractID               INTEGER PRIMARY KEY,
    ProviderName             TEXT,
    ServiceType              TEXT,
    ContractStartDate        DATE,
    ContractEndDate          DATE,
    MonthlyFee               REAL,
    ContactPerson            TEXT,
    ContactPhone             TEXT,
    BillingCycle             TEXT,
    ServiceLevelAgreement    TEXT,
    PenaltyClause            TEXT,
    AutoRenew                INTEGER,
    PrimaryContactEmail      TEXT,
    BackupContactEmail       TEXT,
    ServiceArea              TEXT,
    CoverageDetails          TEXT,
    PaymentMethod            TEXT,
    ContractStatus           TEXT,
    LastReviewedDate         DATE,
    Notes                    TEXT
);

INSERT INTO UtilityProviderContract (ContractID, ProviderName, ServiceType, ContractStartDate, ContractEndDate, MonthlyFee, ContactPerson, ContactPhone, BillingCycle, ServiceLevelAgreement, PenaltyClause, AutoRenew, PrimaryContactEmail, BackupContactEmail, ServiceArea, CoverageDetails, PaymentMethod, ContractStatus, LastReviewedDate, Notes)
VALUES (1, 'EnergyCo', 'Electricity', '2022-01-01', '2027-12-31', 12500.75, 'John Doe', '5551234567', 'Monthly', '99.9% uptime', 'Late payment fee', 1, 'jdoe@energyco.com', 'backup@energyco.com', 'North Campus', 'Full building coverage', 'Direct Debit', 'Active', '2023-06-15', 'Standard contract');

INSERT INTO UtilityProviderContract (ContractID, ProviderName, ServiceType, ContractStartDate, ContractEndDate, MonthlyFee, ContactPerson, ContactPhone, BillingCycle, ServiceLevelAgreement, PenaltyClause, AutoRenew, PrimaryContactEmail, BackupContactEmail, ServiceArea, CoverageDetails, PaymentMethod, ContractStatus, LastReviewedDate, Notes)
VALUES (2, 'WaterSupply Ltd', 'Water', '2021-04-01', '2026-03-31', 3400.00, 'Alice Smith', '5559876543', 'Quarterly', 'No service interruption', 'Service interruption fee', 0, 'asmith@watersupply.com', 'alt@watersupply.com', 'All facilities', 'Baseline usage', 'Check', 'Active', '2023-05-20', 'Includes emergency backup');

INSERT INTO UtilityProviderContract (ContractID, ProviderName, ServiceType, ContractStartDate, ContractEndDate, MonthlyFee, ContactPerson, ContactPhone, BillingCycle, ServiceLevelAgreement, PenaltyClause, AutoRenew, PrimaryContactEmail, BackupContactEmail, ServiceArea, CoverageDetails, PaymentMethod, ContractStatus, LastReviewedDate, Notes)
VALUES (3, 'CleanAir Systems', 'HVAC Maintenance', '2023-07-01', '2028-06-30', 7200.50, 'Bob Lee', '5551122334', 'Annual', 'Response within 24h', 'Late service fee', 1, 'blee@cleanair.com', 'support@cleanair.com', 'South Campus', 'Ventilation units', 'Credit Card', 'Pending', '2023-07-10', 'Renewal pending');

-- Hospital ventilation system details
CREATE TABLE HospitalVentilationSystem
(
    SystemID                 INTEGER PRIMARY KEY,
    SystemName               TEXT,
    InstallationDate         DATE,
    Manufacturer             TEXT,
    ModelNumber              TEXT,
    AirFlowCfm               INTEGER,
    FilterType               TEXT,
    FilterChangeIntervalDays INTEGER,
    LastFilterChange         DATE,
    MaintenanceSchedule      TEXT,
    IsActive                 INTEGER,
    ZoneCoverage             TEXT,
    PowerConsumptionKw       REAL,
    NoiseLevelDb             INTEGER,
    ControlMethod            TEXT,
    HVACIntegration          INTEGER,
    ComplianceStandard       TEXT,
    LastInspectionDate       DATE,
    InspectorName            TEXT,
    WarrantyEndDate          DATE,
    AdditionalComments       TEXT
);

INSERT INTO HospitalVentilationSystem (SystemID, SystemName, InstallationDate, Manufacturer, ModelNumber, AirFlowCfm, FilterType, FilterChangeIntervalDays, LastFilterChange, MaintenanceSchedule, IsActive, ZoneCoverage, PowerConsumptionKw, NoiseLevelDb, ControlMethod, HVACIntegration, ComplianceStandard, LastInspectionDate, InspectorName, WarrantyEndDate, AdditionalComments)
VALUES (101, 'MainHallVent', '2020-03-15', 'VentCorp', 'VX-200', 5000, 'HEPA', 180, '2023-01-10', 'Quarterly', 1, 'Main Hall', 12.5, 65, 'BMS', 1, 'ISO9001', '2023-06-01', 'Emma White', '2025-03-15', 'No issues');

INSERT INTO HospitalVentilationSystem (SystemID, SystemName, InstallationDate, Manufacturer, ModelNumber, AirFlowCfm, FilterType, FilterChangeIntervalDays, LastFilterChange, MaintenanceSchedule, IsActive, ZoneCoverage, PowerConsumptionKw, NoiseLevelDb, ControlMethod, HVACIntegration, ComplianceStandard, LastInspectionDate, InspectorName, WarrantyEndDate, AdditionalComments)
VALUES (102, 'ICU_Vent', '2019-11-20', 'AirFlowMax', 'AFM-500', 2500, 'ULPA', 90, '2023-02-05', 'Monthly', 1, 'ICU', 8.3, 58, 'PLC', 1, 'ISO14644', '2023-05-20', 'Liam Green', '2024-11-20', 'Filter upgraded');

INSERT INTO HospitalVentilationSystem (SystemID, SystemName, InstallationDate, Manufacturer, ModelNumber, AirFlowCfm, FilterType, FilterChangeIntervalDays, LastFilterChange, MaintenanceSchedule, IsActive, ZoneCoverage, PowerConsumptionKw, NoiseLevelDb, ControlMethod, HVACIntegration, ComplianceStandard, LastInspectionDate, InspectorName, WarrantyEndDate, AdditionalComments)
VALUES (103, 'LabVentA', '2021-06-05', 'CleanVent', 'CV-320', 1800, 'HEPA', 120, '2023-03-12', 'Biannual', 1, 'Research Lab A', 6.7, 50, 'DCS', 0, 'ISO13485', '2023-04-15', 'Olivia Black', '2026-06-05', 'Integration pending');

-- Emergency response equipment inventory
CREATE TABLE EmergencyResponseEquipment
(
    EquipmentID              INTEGER PRIMARY KEY,
    EquipmentType            TEXT,
    SerialNumber             TEXT,
    PurchaseDate             DATE,
    ExpirationDate           DATE,
    Location                 TEXT,
    AssignedDepartment       TEXT,
    Status                   TEXT,
    CalibrationDate          DATE,
    CalibrationIntervalDays  INTEGER,
    ServiceProvider          TEXT,
    LastServiceDate          DATE,
    NextServiceDue           DATE,
    WeightKg                 REAL,
    Capacity                 INTEGER,
    HazardRating             TEXT,
    StorageCondition         TEXT,
    InspectionFrequencyDays  INTEGER,
    LastInspectionDate       DATE,
    InspectionResult         TEXT,
    Notes                    TEXT
);

INSERT INTO EmergencyResponseEquipment (EquipmentID, EquipmentType, SerialNumber, PurchaseDate, ExpirationDate, Location, AssignedDepartment, Status, CalibrationDate, CalibrationIntervalDays, ServiceProvider, LastServiceDate, NextServiceDue, WeightKg, Capacity, HazardRating, StorageCondition, InspectionFrequencyDays, LastInspectionDate, InspectionResult, Notes)
VALUES (201, 'Defibrillator', 'DF-1001', '2018-05-10', '2028-05-10', 'ER Room 2', 'Emergency', 'Operational', '2023-01-15', 365, 'MedService Inc', '2023-01-15', '2024-01-15', 3.2, 200, 'Low', 'Room temperature', 180, '2023-06-01', 'Pass', '');

INSERT INTO EmergencyResponseEquipment (EquipmentID, EquipmentType, SerialNumber, PurchaseDate, ExpirationDate, Location, AssignedDepartment, Status, CalibrationDate, CalibrationIntervalDays, ServiceProvider, LastServiceDate, NextServiceDue, WeightKg, Capacity, HazardRating, StorageCondition, InspectionFrequencyDays, LastInspectionDate, InspectionResult, Notes)
VALUES (202, 'Portable Oxygen Cylinder', 'OX-4502', '2020-03-22', '2030-03-22', 'ICU Storage', 'ICU', 'In Service', '2023-02-20', 730, 'OxyCare', '2023-02-20', '2025-02-20', 15.0, 0, 'Medium', 'Cool dry', 365, '2023-05-10', 'Pass', '');

INSERT INTO EmergencyResponseEquipment (EquipmentID, EquipmentType, SerialNumber, PurchaseDate, ExpirationDate, Location, AssignedDepartment, Status, CalibrationDate, CalibrationIntervalDays, ServiceProvider, LastServiceDate, NextServiceDue, WeightKg, Capacity, HazardRating, StorageCondition, InspectionFrequencyDays, LastInspectionDate, InspectionResult, Notes)
VALUES (203, 'Fire Extinguisher', 'FE-7703', '2019-11-05', '2029-11-05', 'North Wing Hallway', 'Facilities', 'Ready', '2023-03-01', 0, 'FireSafe Ltd', '2023-03-01', NULL, 2.5, 0, 'Low', 'Mounted', 180, '2023-06-10', 'Pass', '');

-- Radiology shielding inspection log
CREATE TABLE RadiologyShieldingLog
(
    ShieldID                 INTEGER PRIMARY KEY,
    ShieldType               TEXT,
    Material                 TEXT,
    ThicknessMm              REAL,
    InstallationDate         DATE,
    LastInspectionDate       DATE,
    InspectionResult         TEXT,
    RadiationReductionPercent REAL,
    AreaCovered              TEXT,
    Status                   TEXT,
    TechnicianName           TEXT,
    CertificationNumber      TEXT,
    NextInspectionDue        DATE,
    MaintenanceNotes         TEXT,
    Manufacturer             TEXT,
    ModelNumber              TEXT,
    WarrantyExpiration       DATE,
    ComplianceCode           TEXT,
    RecordedBy               TEXT,
    RecordDate               DATE,
    Comments                 TEXT
);

INSERT INTO RadiologyShieldingLog (ShieldID, ShieldType, Material, ThicknessMm, InstallationDate, LastInspectionDate, InspectionResult, RadiationReductionPercent, AreaCovered, Status, TechnicianName, CertificationNumber, NextInspectionDue, MaintenanceNotes, Manufacturer, ModelNumber, WarrantyExpiration, ComplianceCode, RecordedBy, RecordDate, Comments)
VALUES (301, 'WallLead', 'Lead', 12.5, '2015-09-01', '2023-04-15', 'Pass', 99.2, 'XRay Room 1', 'Active', 'Mark Turner', 'CERT-1001', '2024-04-15', '', 'ShieldTech', 'WL-12', '2025-09-01', 'ISO123', 'Anna Lee', '2023-04-15', '');

INSERT INTO RadiologyShieldingLog (ShieldID, ShieldType, Material, ThicknessMm, InstallationDate, LastInspectionDate, InspectionResult, RadiationReductionPercent, AreaCovered, Status, TechnicianName, CertificationNumber, NextInspectionDue, MaintenanceNotes, Manufacturer, ModelNumber, WarrantyExpiration, ComplianceCode, RecordedBy, RecordDate, Comments)
VALUES (302, 'DoorLead', 'Lead', 8.0, '2016-01-20', '2023-05-10', 'Pass', 98.7, 'XRay Room 2', 'Active', 'Sophie Kim', 'CERT-1002', '2024-05-10', '', 'ShieldMakers', 'DL-8', '2026-01-20', 'ISO124', 'John Patel', '2023-05-10', '');

INSERT INTO RadiologyShieldingLog (ShieldID, ShieldType, Material, ThicknessMm, InstallationDate, LastInspectionDate, InspectionResult, RadiationReductionPercent, AreaCovered, Status, TechnicianName, CertificationNumber, NextInspectionDue, MaintenanceNotes, Manufacturer, ModelNumber, WarrantyExpiration, ComplianceCode, RecordedBy, RecordDate, Comments)
VALUES (303, 'FloorLead', 'Lead', 6.5, '2017-07-15', '2023-03-22', 'Pass', 97.5, 'CT Scan Suite', 'Active', 'David Ross', 'CERT-1003', '2024-03-22', '', 'RadiShield', 'FL-6', '2028-07-15', 'ISO125', 'Emily Zhang', '2023-03-22', '');

-- Pharmacy compounding standards
CREATE TABLE PharmacyCompoundingStandard
(
    StandardID                INTEGER PRIMARY KEY,
    CompoundName              TEXT,
    Indication                TEXT,
    FormulaDescription        TEXT,
    BaseConcentrationMgPerMl  REAL,
    Diluent                   TEXT,
    pHTarget                  REAL,
    OsmolarityTarget          INTEGER,
    StabilityHours            INTEGER,
    StorageTemperatureC       REAL,
    LightSensitive            INTEGER,
    RequiredEquipment         TEXT,
    PreparationSteps          TEXT,
    QualityControlTests       TEXT,
    AcceptanceCriteria        TEXT,
    ReviewerName              TEXT,
    ReviewDate                DATE,
    VersionNumber             INTEGER,
    RegulatoryReference       TEXT,
    Notes                     TEXT,
    ApprovalStatus            TEXT
);

INSERT INTO PharmacyCompoundingStandard (StandardID, CompoundName, Indication, FormulaDescription, BaseConcentrationMgPerMl, Diluent, pHTarget, OsmolarityTarget, StabilityHours, StorageTemperatureC, LightSensitive, RequiredEquipment, PreparationSteps, QualityControlTests, AcceptanceCriteria, ReviewerName, ReviewDate, VersionNumber, RegulatoryReference, Notes, ApprovalStatus)
VALUES (401, 'HeparinSolution', 'Anticoagulation', 'Heparin sodium dissolved in sterile water', 1000.0, 'Sterile Water', 7.2, 300, 48, 4.0, 0, 'Laminar Flow Hood', 'Mix, filter, aliquot', 'Potency, sterility', '>=98% potency', 'Dr Allen', '2023-02-15', 2, 'USP 797', '', 'Approved');

INSERT INTO PharmacyCompoundingStandard (StandardID, CompoundName, Indication, FormulaDescription, BaseConcentrationMgPerMl, Diluent, pHTarget, OsmolarityTarget, StabilityHours, StorageTemperatureC, LightSensitive, RequiredEquipment, PreparationSteps, QualityControlTests, AcceptanceCriteria, ReviewerName, ReviewDate, VersionNumber, RegulatoryReference, Notes, ApprovalStatus)
VALUES (402, 'EphedrineComp', 'Bronchodilation', 'Ephedrine HCl in dextrose solution', 500.0, '5% Dextrose', 5.5, 280, 24, 2.0, 1, 'Biological Safety Cabinet', 'Dissolve, filter, label', 'pH, endotoxin', 'pH 5.0-6.0', 'Dr Baker', '2023-03-10', 1, 'USP 795', 'Store protected from light', 'Pending');

INSERT INTO PharmacyCompoundingStandard (StandardID, CompoundName, Indication, FormulaDescription, BaseConcentrationMgPerMl, Diluent, pHTarget, OsmolarityTarget, StabilityHours, StorageTemperatureC, LightSensitive, RequiredEquipment, PreparationSteps, QualityControlTests, AcceptanceCriteria, ReviewerName, ReviewDate, VersionNumber, RegulatoryReference, Notes, ApprovalStatus)
VALUES (403, 'MethylprednisoloneIV', 'Anti-inflammatory', 'Methylprednisolone sodium succinate in saline', 125.0, '0.9% Saline', 7.0, 310, 72, 5.0, 0, 'Cleanroom', 'Reconstitute, dilute, filter', 'Visual inspection, sterility', 'Clear solution, no particles', 'Dr Chen', '2023-04-01', 3, 'USP 796', '', 'Approved');

-- Medical waste segregation plan definitions
CREATE TABLE MedicalWasteSegregationPlan
(
    PlanID                     INTEGER PRIMARY KEY,
    WasteCategory              TEXT,
    ColorCode                  TEXT,
    ContainerSizeL             INTEGER,
    CollectionFrequencyDays    INTEGER,
    DesignatedLocation         TEXT,
    ResponsibleStaff           TEXT,
    TrainingRequired           INTEGER,
    LastTrainingDate           DATE,
    ComplianceStandard         TEXT,
    DisposalMethod             TEXT,
    HazardLevel                TEXT,
    SealMethod                 TEXT,
    RecordKeeping              TEXT,
    EmergencyProcedure         TEXT,
    RevisionNumber             INTEGER,
    EffectiveDate              DATE,
    ExpirationDate             DATE,
    ApprovedBy                 TEXT,
    ApprovalDate               DATE,
    Comments                   TEXT
);

INSERT INTO MedicalWasteSegregationPlan (PlanID, WasteCategory, ColorCode, ContainerSizeL, CollectionFrequencyDays, DesignatedLocation, ResponsibleStaff, TrainingRequired, LastTrainingDate, ComplianceStandard, DisposalMethod, HazardLevel, SealMethod, RecordKeeping, EmergencyProcedure, RevisionNumber, EffectiveDate, ExpirationDate, ApprovedBy, ApprovalDate, Comments)
VALUES (501, 'Sharps', 'Red', 20, 1, 'North Wing Storage', 'Nurse Manager', 1, '2023-01-20', 'OSHA 1910.1030', 'Incineration', 'High', 'TamperProof Cap', 'Logbook', 'Spill containment', 3, '2023-02-01', '2025-02-01', 'Dr Rodgers', '2023-02-01', '');

INSERT INTO MedicalWasteSegregationPlan (PlanID, WasteCategory, ColorCode, ContainerSizeL, CollectionFrequencyDays, DesignatedLocation, ResponsibleStaff, TrainingRequired, LastTrainingDate, ComplianceStandard, DisposalMethod, HazardLevel, SealMethod, RecordKeeping, EmergencyProcedure, RevisionNumber, EffectiveDate, ExpirationDate, ApprovedBy, ApprovalDate, Comments)
VALUES (502, 'Pharmaceutical', 'Blue', 30, 7, 'Pharmacy Backroom', 'Pharmacy Supervisor', 1, '2023-02-15', 'EPA SW-846', 'Reverse Distribution', 'Medium', 'Sealed Liner', 'Electronic DB', 'Leak response', 2, '2023-03-01', '2024-03-01', 'Dr Patel', '2023-03-01', '');

INSERT INTO MedicalWasteSegregationPlan (PlanID, WasteCategory, ColorCode, ContainerSizeL, CollectionFrequencyDays, DesignatedLocation, ResponsibleStaff, TrainingRequired, LastTrainingDate, ComplianceStandard, DisposalMethod, HazardLevel, SealMethod, RecordKeeping, EmergencyProcedure, RevisionNumber, EffectiveDate, ExpirationDate, ApprovedBy, ApprovalDate, Comments)
VALUES (503, 'Pathology', 'Yellow', 15, 3, 'Lab Annex', 'Lab Director', 1, '2023-03-10', 'CLIA', 'Autoclave', 'Low', 'Heat Seal', 'Paper Log', 'Biohazard spill', 1, '2023-04-01', '2026-04-01', 'Dr Liu', '2023-04-01', '');

-- Biomedical research grant tracking
CREATE TABLE BiomedicalResearchGrant
(
    GrantID                    INTEGER PRIMARY KEY,
    GrantTitle                 TEXT,
    FundingAgency              TEXT,
    AmountUSDRounded           INTEGER,
    StartDate                  DATE,
    EndDate                    DATE,
    PrincipalInvestigator      TEXT,
    Department                 TEXT,
    GrantStatus                TEXT,
    AwardNumber                TEXT,
    FundingCategory            TEXT,
    MatchingFundsRequired      INTEGER,
    MatchingFundsAmount        INTEGER,
    ReportingFrequency        TEXT,
    LastReportDate            DATE,
    NextReportDue             DATE,
    BudgetBreakdown           TEXT,
    EthicalApproval            INTEGER,
    EthicalApprovalDate       DATE,
    ContactEmail              TEXT,
    Notes                     TEXT
);

INSERT INTO BiomedicalResearchGrant (GrantID, GrantTitle, FundingAgency, AmountUSDRounded, StartDate, EndDate, PrincipalInvestigator, Department, GrantStatus, AwardNumber, FundingCategory, MatchingFundsRequired, MatchingFundsAmount, ReportingFrequency, LastReportDate, NextReportDue, BudgetBreakdown, EthicalApproval, EthicalApprovalDate, ContactEmail, Notes)
VALUES (601, 'Autoimmune Biomarkers', 'NIH', 250000, '2023-01-01', '2026-12-31', 'Dr Susan Keller', 'Immunology', 'Active', 'NIH-2023-001', 'Research', 1, 50000, 'Quarterly', '2023-06-30', '2023-09-30', 'Personnel:150000;Equipment:50000;Supplies:50000', 1, '2023-02-15', 's.keller@hospital.org', '');

INSERT INTO BiomedicalResearchGrant (GrantID, GrantTitle, FundingAgency, AmountUSDRounded, StartDate, EndDate, PrincipalInvestigator, Department, GrantStatus, AwardNumber, FundingCategory, MatchingFundsRequired, MatchingFundsAmount, ReportingFrequency, LastReportDate, NextReportDue, BudgetBreakdown, EthicalApproval, EthicalApprovalDate, ContactEmail, Notes)
VALUES (602, 'Gene Therapy Platform', 'DARPA', 400000, '2022-07-15', '2025-07-14', 'Dr Michael Chen', 'Genetics', 'Pending', 'DARPA-2022-GT', 'Development', 0, 0, 'Semiannual', '2023-01-31', '2023-07-31', 'Equipment:200000;Staff:150000;Clinical:50000', 0, NULL, 'm.chen@hospital.org', 'Awaiting IRB');

INSERT INTO BiomedicalResearchGrant (GrantID, GrantTitle, FundingAgency, AmountUSDRounded, StartDate, EndDate, PrincipalInvestigator, Department, GrantStatus, AwardNumber, FundingCategory, MatchingFundsRequired, MatchingFundsAmount, ReportingFrequency, LastReportDate, NextReportDue, BudgetBreakdown, EthicalApproval, EthicalApprovalDate, ContactEmail, Notes)
VALUES (603, 'Metabolomics in Cancer', 'Cancer Research Fund', 180000, '2023-04-01', '2026-03-31', 'Dr Laura Gomez', 'Oncology', 'Active', 'CRF-2023-MC', 'Research', 1, 30000, 'Annual', '2023-12-31', '2024-12-31', 'Personnel:120000;Consumables:60000', 1, '2023-05-10', 'l.gomez@hospital.org', '');

-- Clinical decision support configuration
CREATE TABLE ClinicalDecisionSupportConfig
(
    ConfigID                   INTEGER PRIMARY KEY,
    RuleName                   TEXT,
    TriggerEvent               TEXT,
    ConditionExpression        TEXT,
    ActionType                 TEXT,
    ActionParameter            TEXT,
    SeverityLevel              TEXT,
    EffectiveFrom              DATE,
    EffectiveTo                DATE,
    Enabled                    INTEGER,
    CreatedBy                  TEXT,
    CreatedDate                DATE,
    ModifiedBy                 TEXT,
    ModifiedDate               DATE,
    Version                    INTEGER,
    Scope                      TEXT,
    DepartmentAffected         TEXT,
    NotificationMethod         TEXT,
    AlertMessage               TEXT,
    DocumentationLink          TEXT,
    ValidationStatus           TEXT
);

INSERT INTO ClinicalDecisionSupportConfig (ConfigID, RuleName, TriggerEvent, ConditionExpression, ActionType, ActionParameter, SeverityLevel, EffectiveFrom, EffectiveTo, Enabled, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, Version, Scope, DepartmentAffected, NotificationMethod, AlertMessage, DocumentationLink, ValidationStatus)
VALUES (701, 'HighPotassiumAlert', 'LabResult', 'K+ > 6.0', 'Alert', 'NotifyProvider', 'Critical', '2023-01-01', '2025-12-31', 1, 'admin', '2023-01-01', 'admin', '2023-01-01', 1, 'Hospital', 'Nephrology', 'Email', 'Potassium level exceeds safety threshold', 'http://cds.example.com/rules/HighPotassium', 'Validated');

INSERT INTO ClinicalDecisionSupportConfig (ConfigID, RuleName, TriggerEvent, ConditionExpression, ActionType, ActionParameter, SeverityLevel, EffectiveFrom, EffectiveTo, Enabled, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, Version, Scope, DepartmentAffected, NotificationMethod, AlertMessage, DocumentationLink, ValidationStatus)
VALUES (702, 'DuplicateMedicationCheck', 'PrescriptionOrder', 'Medication already active', 'Block', 'PreventOrder', 'High', '2022-06-01', '2024-05-31', 1, 'clinical_admin', '2022-06-01', 'clinical_admin', '2022-06-01', 2, 'Hospital', 'Pharmacy', 'Popup', 'Medication already prescribed to patient', 'http://cds.example.com/rules/DuplicateMedication', 'Validated');

INSERT INTO ClinicalDecisionSupportConfig (ConfigID, RuleName, TriggerEvent, ConditionExpression, ActionType, ActionParameter, SeverityLevel, EffectiveFrom, EffectiveTo, Enabled, CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, Version, Scope, DepartmentAffected, NotificationMethod, AlertMessage, DocumentationLink, ValidationStatus)
VALUES (703, 'AgeBasedScreening', 'Visit', 'PatientAge >= 65', 'Recommend', 'ColonCancerScreening', 'Medium', '2023-03-01', '2026-02-28', 1, 'policy_mgr', '2023-03-01', 'policy_mgr', '2023-03-01', 1, 'Hospital', 'PrimaryCare', 'SMS', 'Consider colon cancer screening for patients 65+', 'http://cds.example.com/rules/AgeScreening', 'Pending');

-- Health IT incident records
CREATE TABLE HealthITIncidentRecord
(
    IncidentID                 INTEGER PRIMARY KEY,
    IncidentType               TEXT,
    DetectionDate              DATE,
    ResolutionDate             DATE,
    SystemAffected             TEXT,
    ImpactLevel                TEXT,
    Description                TEXT,
    RootCause                  TEXT,
    MitigationSteps            TEXT,
    DowntimeHours              REAL,
    ReportedBy                 TEXT,
    AssignedTeam               TEXT,
    Status                     TEXT,
    FollowUpDate               DATE,
    PreventiveAction           TEXT,
    ComplianceImpact           TEXT,
    NotificationSent           INTEGER,
    NotificationDate           DATE,
    LessonsLearned             TEXT,
    ReviewCommittee            TEXT,
    Comments                   TEXT
);

INSERT INTO HealthITIncidentRecord (IncidentID, IncidentType, DetectionDate, ResolutionDate, SystemAffected, ImpactLevel, Description, RootCause, MitigationSteps, DowntimeHours, ReportedBy, AssignedTeam, Status, FollowUpDate, PreventiveAction, ComplianceImpact, NotificationSent, NotificationDate, LessonsLearned, ReviewCommittee, Comments)
VALUES (801, 'SystemOutage', '2023-05-10', '2023-05-12', 'EHR', 'High', 'EHR unavailable for 48 hours', 'Server failure', 'Switched to backup server', 48.0, 'IT Analyst', 'Infrastructure Team', 'Resolved', '2023-05-20', 'Implement redundant servers', 'HIPAA', 1, '2023-05-13', 'Redundancy is critical', 'IT Governance Board', '');

INSERT INTO HealthITIncidentRecord (IncidentID, IncidentType, DetectionDate, ResolutionDate, SystemAffected, ImpactLevel, Description, RootCause, MitigationSteps, DowntimeHours, ReportedBy, AssignedTeam, Status, FollowUpDate, PreventiveAction, ComplianceImpact, NotificationSent, NotificationDate, LessonsLearned, ReviewCommittee, Comments)
VALUES (802, 'DataBreach', '2023-04-01', '2023-04-05', 'Patient Portal', 'Critical', 'Unauthorized access detected', 'Phishing attack', 'Reset passwords, monitor logs', 96.0, 'Security Officer', 'Cybersecurity Team', 'Resolved', '2023-04-15', 'Enhanced email filtering', 'GDPR', 1, '2023-04-02', 'User education needed', 'Data Protection Committee', '');

INSERT INTO HealthITIncidentRecord (IncidentID, IncidentType, DetectionDate, ResolutionDate, SystemAffected, ImpactLevel, Description, RootCause, MitigationSteps, DowntimeHours, ReportedBy, AssignedTeam, Status, FollowUpDate, PreventiveAction, ComplianceImpact, NotificationSent, NotificationDate, LessonsLearned, ReviewCommittee, Comments)
VALUES (803, 'SoftwareBug', '2023-06-20', '2023-06-21', 'Lab Information System', 'Medium', 'Incorrect lab result calculation', 'Algorithm error', 'Patch applied', 12.0, 'Lab Manager', 'Application Support', 'Resolved', '2023-06-25', 'Code review process', 'None', 0, NULL, 'Automated testing required', 'Clinical Safety Committee', '');

-- Facility renewable energy installation records
CREATE TABLE FacilityRenewableEnergyInstallation
(
    InstallationID             INTEGER PRIMARY KEY,
    EnergyType                 TEXT,
    CapacityKw                 REAL,
    InstallationDate           DATE,
    ContractorName             TEXT,
    Location                   TEXT,
    GridConnectionStatus      TEXT,
    MaintenanceContract        INTEGER,
    MaintenanceProvider        TEXT,
    WarrantyExpiration         DATE,
    ExpectedLifeYears          INTEGER,
    ProductionYearToDateKwh    REAL,
    CO2ReductionTonnes         REAL,
    IncentiveProgram           TEXT,
    IncentiveAmount            REAL,
    FundingSource              TEXT,
    ProjectStatus              TEXT,
    ProjectManager             TEXT,
    LastInspectionDate         DATE,
    InspectionResult           TEXT,
    Notes                      TEXT
);

INSERT INTO FacilityRenewableEnergyInstallation (InstallationID, EnergyType, CapacityKw, InstallationDate, ContractorName, Location, GridConnectionStatus, MaintenanceContract, MaintenanceProvider, WarrantyExpiration, ExpectedLifeYears, ProductionYearToDateKwh, CO2ReductionTonnes, IncentiveProgram, IncentiveAmount, FundingSource, ProjectStatus, ProjectManager, LastInspectionDate, InspectionResult, Notes)
VALUES (901, 'SolarPV', 500.0, '2022-09-15', 'SunPower Co', 'West Roof', 'Connected', 1, 'GreenMaintain Ltd', '2032-09-15', 25, 320000.0, 120.5, 'StateTaxCredit', 150000.0, 'Hospital Fund', 'Operational', 'Emma White', '2023-06-01', 'Pass', '');

INSERT INTO FacilityRenewableEnergyInstallation (InstallationID, EnergyType, CapacityKw, InstallationDate, ContractorName, Location, GridConnectionStatus, MaintenanceContract, MaintenanceProvider, WarrantyExpiration, ExpectedLifeYears, ProductionYearToDateKwh, CO2ReductionTonnes, IncentiveProgram, IncentiveAmount, FundingSource, ProjectStatus, ProjectManager, LastInspectionDate, InspectionResult, Notes)
VALUES (902, 'WindTurbine', 300.0, '2021-04-20', 'WindWorks', 'North Field', 'Connected', 0, NULL, '2041-04-20', 30, 450000.0, 200.0, 'FederalGrant', 200000.0, 'Energy Initiative', 'Operational', 'Liam Green', '2023-05-15', 'Pass', '');

INSERT INTO FacilityRenewableEnergyInstallation (InstallationID, EnergyType, CapacityKw, InstallationDate, ContractorName, Location, GridConnectionStatus, MaintenanceContract, MaintenanceProvider, WarrantyExpiration, ExpectedLifeYears, ProductionYearToDateKwh, CO2ReductionTonnes, IncentiveProgram, IncentiveAmount, FundingSource, ProjectStatus, ProjectManager, LastInspectionDate, InspectionResult, Notes)
VALUES (903, 'Geothermal', 150.0, '2023-01-10', 'GeoEnergy Ltd', 'East Annex', 'Pending', 1, 'GeoMaintain Inc', '2038-01-10', 20, 0.0, 0.0, 'UtilityRebate', 100000.0, 'Capital Reserve', 'Installation', 'Olivia Black', '2023-07-01', 'N/A', 'Awaiting grid connection');