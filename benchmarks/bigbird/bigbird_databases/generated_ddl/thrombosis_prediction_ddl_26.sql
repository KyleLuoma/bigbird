-- Table storing records of medical devices that have been taken out of service
CREATE TABLE DeviceDecommissionLog
(
    LogID                     INTEGER PRIMARY KEY,
    DeviceID                  INTEGER,
    Model                     TEXT,
    SerialNumber              TEXT,
    DecommissionDate          DATE,
    Reason                    TEXT,
    ApprovedBy                TEXT,
    Department                TEXT,
    CostRecovery              REAL,
    WarrantyRemainingMonths   INTEGER,
    LastMaintenanceDate       DATE,
    DecommissionMethod        TEXT,
    ScrapLocation             TEXT,
    EnvironmentalImpactScore  INTEGER,
    Notes                     TEXT,
    RecordedBy                TEXT,
    RecordTimestamp           TEXT,
    DisposalVendor            TEXT,
    InvoiceNumber             TEXT,
    ApprovalStatus            TEXT
);

INSERT INTO DeviceDecommissionLog VALUES (1, 101, 'MRI_Scanner', 'SN12345', '2024-06-01', 'Obsolete', 'DrSmith', 'Radiology', 5000.00, 12, '2024-05-15', 'Recycle', 'WarehouseA', 85, 'Decommissioned per policy', 'TechJohn', '2024-06-02 10:00:00', 'VendorX', 'INV1001', 'Approved');
INSERT INTO DeviceDecommissionLog VALUES (2, 102, 'Ventilator_X', 'SN67890', '2024-07-15', 'Faulty', 'DrLee', 'ICU', 3000.00, 6, '2024-07-01', 'Incinerate', 'WarehouseB', 70, 'Battery failure', 'TechAmy', '2024-07-16 14:30:00', 'VendorY', 'INV1002', 'Pending');
INSERT INTO DeviceDecommissionLog VALUES (3, 103, 'XRay_Unit', 'SN54321', '2024-08-20', 'Upgrade', 'DrBrown', 'Radiology', 4000.00, 0, '2024-08-10', 'Donate', 'WarehouseC', 90, 'Replaced by newer model', 'TechMike', '2024-08-21 09:15:00', 'VendorZ', 'INV1003', 'Approved');

-- Table describing energy generation sources used by hospital facilities
CREATE TABLE HospitalEnergySource
(
    SourceID               INTEGER PRIMARY KEY,
    FacilityID             INTEGER,
    SourceType             TEXT,
    InstallationDate       DATE,
    CapacityMW             REAL,
    CurrentOutputMW        REAL,
    EfficiencyPercent     REAL,
    Supplier               TEXT,
    ContractStartDate      DATE,
    ContractEndDate        DATE,
    MaintenanceSchedule    TEXT,
    LastInspectionDate     DATE,
    CO2EmissionTon         REAL,
    RenewableFlag          INTEGER,
    SubsidyAmountUSD       REAL,
    Location               TEXT,
    Status                 TEXT,
    Remarks                TEXT,
    RecordedBy             TEXT,
    RecordDate             DATE
);

INSERT INTO HospitalEnergySource VALUES (1, 10, 'Solar', '2022-03-01', 5.0, 4.2, 85.0, 'SunPower', '2022-03-01', '2032-03-01', 'Annual', '2024-04-10', 0.0, 1, 250000.00, 'NorthRoof', 'Active', 'Peak performance', 'EngAnna', '2024-05-01');
INSERT INTO HospitalEnergySource VALUES (2, 11, 'NaturalGas', '2018-07-15', 12.0, 10.5, 78.0, 'GasCo', '2018-07-15', '2028-07-15', 'Biannual', '2024-03-22', 2.5, 0, 0.0, 'EastWing', 'Active', 'Scheduled upgrade', 'EngBob', '2024-04-20');
INSERT INTO HospitalEnergySource VALUES (3, 12, 'Wind', '2020-11-20', 8.0, 6.8, 82.0, 'WindInc', '2020-11-20', '2030-11-20', 'Annual', '2024-02-18', 0.8, 1, 150000.00, 'SouthField', 'Maintenance', 'Blade wear observed', 'EngCathy', '2024-03-05');

-- Table storing templates for clinical documentation
CREATE TABLE ClinicalDocumentationTemplate
(
    TemplateID                INTEGER PRIMARY KEY,
    Name                      TEXT,
    Version                   TEXT,
    Category                  TEXT,
    CreatedBy                 TEXT,
    CreatedDate               DATE,
    LastModifiedBy            TEXT,
    LastModifiedDate          DATE,
    IsActive                  INTEGER,
    Language                  TEXT,
    ApplicableDept            TEXT,
    ApprovalStatus            TEXT,
    ReviewCycleMonths         INTEGER,
    AssociatedGuideline       TEXT,
    WordCount                 INTEGER,
    PageCount                 INTEGER,
    ConfidentialLevel         TEXT,
    TemplateFilePath          TEXT,
    Tags                      TEXT,
    Description               TEXT
);

INSERT INTO ClinicalDocumentationTemplate VALUES (1, 'DischargeSummary', 'v2.1', 'Discharge', 'DrWhite', '2023-05-01', 'DrGreen', '2024-01-15', 1, 'EN', 'GeneralMedicine', 'Approved', 12, 'GuidelineA', 1500, 10, 'High', '/templates/discharge_v2_1.docx', 'discharge,summary', 'Standard discharge summary template');
INSERT INTO ClinicalDocumentationTemplate VALUES (2, 'SurgicalReport', 'v1.0', 'Surgery', 'DrBlack', '2022-09-10', 'DrGray', '2024-02-20', 1, 'EN', 'Surgery', 'Pending', 6, 'GuidelineB', 2000, 12, 'Medium', '/templates/surgical_v1_0.docx', 'surgery,report', 'Template for operative reports');
INSERT INTO ClinicalDocumentationTemplate VALUES (3, 'PhysicalTherapyNote', 'v3.3', 'Therapy', 'TherapistLee', '2021-03-15', 'TherapistKim', '2024-03-30', 1, 'EN', 'PhysicalTherapy', 'Approved', 9, 'GuidelineC', 800, 5, 'Low', '/templates/pt_note_v3_3.docx', 'pt,note', 'Physical therapy session note template');

-- Table for quality control checks performed on pharmacy batches
CREATE TABLE PharmacyBatchQualityControl
(
    QCID                INTEGER PRIMARY KEY,
    BatchID             TEXT,
    TestDate            DATE,
    Tester              TEXT,
    TemperatureC        REAL,
    HumidityPercent     REAL,
    VisualInspectionResult TEXT,
    pHLevel             REAL,
    Osmolality          REAL,
    SterilityResult     TEXT,
    EndotoxinUnits      REAL,
    PotencyPercent      REAL,
    ExpirationDate      DATE,
    ReleaseStatus       TEXT,
    Comments            TEXT,
    StorageLocation     TEXT,
    ReviewedBy          TEXT,
    ReviewDate          DATE,
    DeviationFlag      INTEGER,
    CorrectiveAction    TEXT
);

INSERT INTO PharmacyBatchQualityControl VALUES (1, 'BCH001', '2024-04-01', 'QC_Jane', 22.5, 45.0, 'Pass', 7.2, 280.0, 'Pass', 0.0, 99.5, '2025-04-01', 'Released', 'All parameters within limits', 'ColdRoomA', 'QC_Mark', '2024-04-02', 0, 'None');
INSERT INTO PharmacyBatchQualityControl VALUES (2, 'BCH002', '2024-04-05', 'QC_John', 23.0, 50.0, 'Fail', 6.8, 300.0, 'Fail', 0.5, 97.0, '2025-04-05', 'Hold', 'Sterility failed', 'ColdRoomB', 'QC_Sara', '2024-04-06', 1, 'Repeat sterility test');
INSERT INTO PharmacyBatchQualityControl VALUES (3, 'BCH003', '2024-04-10', 'QC_Alice', 21.8, 40.0, 'Pass', 7.0, 275.0, 'Pass', 0.0, 100.0, '2025-04-10', 'Released', 'Potency slightly above target but acceptable', 'ColdRoomC', 'QC_Bob', '2024-04-11', 0, 'None');

-- Table logging accesses to research data sets
CREATE TABLE ResearchDataAccessLog
(
    AccessID          INTEGER PRIMARY KEY,
    DatasetID         TEXT,
    UserID            TEXT,
    AccessDate        DATE,
    AccessTime        TEXT,
    AccessType        TEXT,
    Purpose           TEXT,
    ApprovedBy        TEXT,
    ApprovalDate      DATE,
    DataScope         TEXT,
    RecordCount       INTEGER,
    ExportFormat      TEXT,
    EncryptionUsed    TEXT,
    DurationSeconds   INTEGER,
    IPAddress         TEXT,
    DeviceID          TEXT,
    ComplianceFlag    INTEGER,
    Notes             TEXT,
    RevokedFlag       INTEGER,
    RevocationDate    DATE
);

INSERT INTO ResearchDataAccessLog VALUES (1, 'DS1001', 'U123', '2024-05-01', '09:15:00', 'Download', 'Analysis', 'AdminA', '2024-04-30', 'Full', 5000, 'CSV', 'AES256', 120, '192.168.1.10', 'DEV001', 1, 'No issues', 0, NULL);
INSERT INTO ResearchDataAccessLog VALUES (2, 'DS1002', 'U456', '2024-05-03', '14:45:00', 'View', 'Review', 'AdminB', '2024-05-02', 'Partial', 200, 'PDF', 'None', 30, '192.168.1.20', 'DEV002', 1, 'Viewed summary only', 0, NULL);
INSERT INTO ResearchDataAccessLog VALUES (3, 'DS1003', 'U789', '2024-05-05', '11:00:00', 'Export', 'Report Generation', 'AdminC', '2024-05-04', 'Full', 10000, 'XLSX', 'AES128', 250, '192.168.1.30', 'DEV003', 0, 'Encryption not applied', 1, '2024-05-10');

-- Table tracking renovation projects for hospital facilities
CREATE TABLE FacilityRenovationProject
(
    ProjectID                 INTEGER PRIMARY KEY,
    FacilityID                INTEGER,
    ProjectName               TEXT,
    Phase                     TEXT,
    StartDate                 DATE,
    EstimatedEndDate          DATE,
    ActualEndDate             DATE,
    BudgetUSD                 REAL,
    ExpenditureUSD            REAL,
    Contractor                TEXT,
    ProjectManager            TEXT,
    Status                    TEXT,
    RiskLevel                 TEXT,
    PermitNumber              TEXT,
    SafetyInspectionDate      DATE,
    EnvironmentalImpactAssessment TEXT,
    Comments                  TEXT,
    LastUpdatedBy             TEXT,
    LastUpdatedDate           DATE,
    StakeholderGroup          TEXT
);

INSERT INTO FacilityRenovationProject VALUES (1, 20, 'East Wing Expansion', 'Planning', '2024-01-15', '2025-06-30', NULL, 2000000.00, 750000.00, 'BuildCo', 'MgrA', 'InProgress', 'Medium', 'PN12345', '2024-02-10', 'Completed', 'Awaiting final approvals', 'MgrA', '2024-04-01', 'Facilities, Finance');
INSERT INTO FacilityRenovationProject VALUES (2, 21, 'Lobby Modernization', 'Construction', '2023-09-01', '2024-12-31', NULL, 500000.00, 320000.00, 'RenovateLtd', 'MgrB', 'InProgress', 'Low', 'PN67890', '2023-10-05', 'Pending', 'Phase 2 to start next month', 'MgrB', '2024-03-15', 'Operations, Marketing');
INSERT INTO FacilityRenovationProject VALUES (3, 22, 'ICU Upgrade', 'Design', '2024-03-01', '2025-03-01', NULL, 1500000.00, 0.00, 'HealthBuild', 'MgrC', 'Pending', 'High', 'PN54321', '2024-04-20', 'Completed', 'Design documents under review', 'MgrC', '2024-04-25', 'Clinical, Safety');

-- Table for tracking renewal of staff credentials
CREATE TABLE StaffCredentialRenewal
(
    RenewalID            INTEGER PRIMARY KEY,
    StaffID              INTEGER,
    CredentialType      TEXT,
    CredentialNumber    TEXT,
    IssueDate           DATE,
    ExpiryDate          DATE,
    RenewalDate         DATE,
    RenewalMethod       TEXT,
    IssuingAuthority    TEXT,
    RenewalStatus       TEXT,
    Remarks             TEXT,
    ApprovedBy          TEXT,
    ApprovalDate        DATE,
    DocumentPath        TEXT,
    BatchNumber         TEXT,
    NotificationSent    INTEGER,
    NotificationDate    DATE,
    RenewalFeeUSD       REAL,
    PaymentStatus       TEXT,
    PaymentDate         DATE
);

INSERT INTO StaffCredentialRenewal VALUES (1, 1001, 'NurseLicense', 'NL-55555', '2020-06-01', '2024-06-01', '2024-05-20', 'Online', 'StateBoard', 'Approved', 'All docs received', 'AdminX', '2024-05-22', '/docs/renewal1.pdf', 'BN001', 1, '2024-05-10', 150.00, 'Paid', '2024-05-15');
INSERT INTO StaffCredentialRenewal VALUES (2, 1002, 'PhysicianLicense', 'PL-77777', '2019-09-15', '2023-09-15', NULL, NULL, 'MedicalBoard', 'Pending', 'Awaiting submission', 'AdminY', NULL, NULL, NULL, 0, NULL, 200.00, 'Unpaid', NULL);
INSERT INTO StaffCredentialRenewal VALUES (3, 1003, 'PharmacistCertification', 'PC-88888', '2021-01-20', '2025-01-20', '2024-12-01', 'Mail', 'PharmacyBoard', 'Approved', 'Renewed early', 'AdminZ', '2024-12-05', '/docs/renewal3.pdf', 'BN003', 1, '2024-11-20', 180.00, 'Paid', '2024-11-25');

-- Table assessing risk of supply chain vendors
CREATE TABLE SupplyChainRiskAssessment
(
    AssessmentID          INTEGER PRIMARY KEY,
    VendorID              INTEGER,
    AssessmentDate        DATE,
    Assessor              TEXT,
    RiskScore             INTEGER,
    FinancialStabilityScore INTEGER,
    RegulatoryComplianceScore INTEGER,
    DeliveryReliabilityScore INTEGER,
    QualityScore          INTEGER,
    CyberSecurityScore    INTEGER,
    EnvironmentalScore    INTEGER,
    PoliticalRiskScore    INTEGER,
    MitigationPlan        TEXT,
    FollowUpDate          DATE,
    Status                TEXT,
    Notes                 TEXT,
    ContactPerson         TEXT,
    ContactEmail          TEXT,
    UpdatedBy             TEXT,
    UpdateDate            DATE
);

INSERT INTO SupplyChainRiskAssessment VALUES (1, 3001, '2024-04-15', 'AnalystA', 65, 80, 75, 70, 85, 60, 70, 55, 'Increase audits', '2024-07-15', 'Open', 'Vendor improving delivery times', 'John Doe', 'john.doe@example.com', 'AnalystA', '2024-04-20');
INSERT INTO SupplyChainRiskAssessment VALUES (2, 3002, '2024-03-10', 'AnalystB', 40, 90, 85, 80, 90, 70, 80, 45, 'Maintain current level', '2024-06-10', 'Closed', 'Vendor meets all criteria', 'Jane Smith', 'jane.smith@example.com', 'AnalystB', '2024-03-12');
INSERT INTO SupplyChainRiskAssessment VALUES (3, 3003, '2024-05-05', 'AnalystC', 80, 60, 55, 50, 65, 40, 50, 70, 'Consider alternative suppliers', '2024-08-05', 'Open', 'Financial instability observed', 'Bob Lee', 'bob.lee@example.com', 'AnalystC', '2024-05-07');

-- Table recording environmental compliance audits
CREATE TABLE EnvironmentalComplianceAudit
(
    AuditID               INTEGER PRIMARY KEY,
    FacilityID            INTEGER,
    AuditDate             DATE,
    Auditor               TEXT,
    Regulation            TEXT,
    ComplianceStatus      TEXT,
    FindingsCount         INTEGER,
    CriticalFindings      INTEGER,
    MinorFindings         INTEGER,
    CorrectiveActionDueDate DATE,
    FollowUpDate          DATE,
    SummaryRemarks        TEXT,
    DocumentLink          TEXT,
    ScorePercent          REAL,
    TierLevel             TEXT,
    ObservationNotes      TEXT,
    UpdatedBy             TEXT,
    UpdateTimestamp       TEXT,
    NextAuditPlannedDate  DATE,
    AuditType             TEXT
);

INSERT INTO EnvironmentalComplianceAudit VALUES (1, 40, '2024-02-20', 'AuditorA', 'EPA_2023', 'Compliant', 3, 0, 3, '2024-04-20', '2024-05-01', 'Minor waste segregation issues', '/docs/audit1.pdf', 95.5, 'Tier1', 'All major systems meet standards', 'AuditorA', '2024-02-21 10:00:00', '2025-02-20', 'Annual');
INSERT INTO EnvironmentalComplianceAudit VALUES (2, 41, '2024-03-15', 'AuditorB', 'ISO14001', 'NonCompliant', 7, 2, 5, '2024-06-01', '2024-07-01', 'Air filtration failures observed', '/docs/audit2.pdf', 78.0, 'Tier2', 'Immediate corrective actions required', 'AuditorB', '2024-03-16 14:30:00', '2025-03-15', 'Biannual');
INSERT INTO EnvironmentalComplianceAudit VALUES (3, 42, '2024-01-10', 'AuditorC', 'LocalHealthCode', 'Compliant', 1, 0, 1, '2024-03-10', '2024-04-01', 'Excellent waste management', '/docs/audit3.pdf', 99.0, 'Tier1', 'No issues', 'AuditorC', '2024-01-11 09:15:00', '2025-01-10', 'Annual');

-- Table archiving medical imaging studies metadata
CREATE TABLE MedicalImagingArchive
(
    ArchiveID               INTEGER PRIMARY KEY,
    StudyID                 TEXT,
    PatientAnonID           TEXT,
    Modality                TEXT,
    AcquisitionDate         DATE,
    FilePath                TEXT,
    FileSizeMB              REAL,
    CompressionType         TEXT,
    EncryptFlag             INTEGER,
    RetentionPeriodYears   INTEGER,
    AccessLevel             TEXT,
    LastAccessDate          DATE,
    ArchiveStatus           TEXT,
    StorageLocation         TEXT,
    BackupFrequencyDays     INTEGER,
    Checksum                TEXT,
    MetadataVersion         TEXT,
    CreatedBy               TEXT,
    CreationDate            DATE,
    Notes                   TEXT
);

INSERT INTO MedicalImagingArchive VALUES (1, 'ST1001', 'PA001', 'CT', '2023-12-01', '/archive/ct/st1001.dcm', 250.5, 'Lossless', 1, 10, 'Restricted', '2024-04-01', 'Active', 'VaultA', 30, 'ABC123DEF456', 'v1.0', 'TechSam', '2023-12-02', 'Initial upload');
INSERT INTO MedicalImagingArchive VALUES (2, 'ST1002', 'PA002', 'MRI', '2024-01-15', '/archive/mri/st1002.dcm', 500.0, 'Lossless', 1, 10, 'Restricted', '2024-04-05', 'Active', 'VaultB', 30, 'XYZ789GHI012', 'v1.0', 'TechLiu', '2024-01-16', 'Reviewed by radiology');
INSERT INTO MedicalImagingArchive VALUES (3, 'ST1003', 'PA003', 'XRay', '2023-11-20', '/archive/xray/st1003.dcm', 75.2, 'Lossless', 0, 5, 'Public', '2024-03-28', 'Archived', 'VaultC', 90, 'LMN345OPQ678', 'v1.0', 'TechAna', '2023-11-21', 'Legacy study');