-- Medical supply forecast table
CREATE TABLE MedicalSupplyForecast (
    ForecastID INTEGER PRIMARY KEY,
    ForecastDate DATE,
    ItemCode TEXT,
    ItemDescription TEXT,
    Category TEXT,
    Supplier TEXT,
    UnitPrice REAL,
    QuantityPlanned INTEGER,
    QuantityOnHand INTEGER,
    ReorderLevel INTEGER,
    LeadTimeDays INTEGER,
    StorageLocation TEXT,
    ForecastedCost REAL,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    Currency TEXT,
    PriorityLevel TEXT,
    SeasonalityFactor REAL,
    DemandVariance REAL,
    LastOrderDate DATE
);

INSERT INTO MedicalSupplyForecast VALUES (1, '2023-06-01', 'MS001', 'Surgical Gloves', 'Protective Equipment', 'MediSupplyCo', 0.25, 10000, 2500, 2000, 7, 'Warehouse A', 2500.00, 'DrSmith', '2023-05-20', 'USD', 'High', 1.2, 5.0, '2023-04-15');
INSERT INTO MedicalSupplyForecast VALUES (2, '2023-07-01', 'MS002', 'IV Saline 0.9%', 'Fluids', 'HealthCorp', 1.10, 5000, 1200, 800, 5, 'Warehouse B', 5500.00, 'NurseLee', '2023-06-15', 'USD', 'Medium', 0.9, 3.5, '2023-05-30');
INSERT INTO MedicalSupplyForecast VALUES (3, '2023-08-01', 'MS003', 'Disposable Syringes', 'Consumables', 'PharmaPlus', 0.05, 20000, 8000, 5000, 10, 'Warehouse C', 1000.00, 'AdminJones', '2023-07-20', 'USD', 'Low', 1.0, 2.0, '2023-06-10');

-- Clinical trial budget table
CREATE TABLE ClinicalTrialBudget (
    TrialID INTEGER,
    BudgetYear INTEGER,
    TotalBudget REAL,
    FederalFunding REAL,
    PrivateFunding REAL,
    Sponsor TEXT,
    Phase TEXT,
    SiteCount INTEGER,
    EstimatedPatientRecruitment INTEGER,
    PersonnelCosts REAL,
    EquipmentCosts REAL,
    ConsumablesCost REAL,
    TravelAndSubsistence REAL,
    RegulatoryFees REAL,
    OverheadRate REAL,
    Currency TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    Comments TEXT,
    LastUpdated DATE
);

INSERT INTO ClinicalTrialBudget VALUES (101, 2023, 1500000.00, 800000.00, 500000.00, 'BioHealth', 'Phase II', 12, 250, 400000.00, 300000.00, 150000.00, 200000.00, 50000.00, 0.15, 'USD', 'DrBrown', '2023-02-10', 'Initial allocation', '2023-02-10');
INSERT INTO ClinicalTrialBudget VALUES (102, 2023, 2000000.00, 1200000.00, 600000.00, 'GenomicsInc', 'Phase III', 15, 500, 600000.00, 400000.00, 200000.00, 250000.00, 70000.00, 0.12, 'USD', 'DrGreen', '2023-03-05', 'Budget revised Q1', '2023-03-05');
INSERT INTO ClinicalTrialBudget VALUES (103, 2024, 1800000.00, 900000.00, 600000.00, 'MedTech', 'Phase I', 8, 120, 350000.00, 250000.00, 120000.00, 180000.00, 60000.00, 0.10, 'USD', 'DrWhite', '2023-04-15', 'Planned for next year', '2023-04-15');

-- Hospital board meeting table
CREATE TABLE HospitalBoardMeeting (
    MeetingID INTEGER PRIMARY KEY,
    MeetingDate DATE,
    Location TEXT,
    Chairperson TEXT,
    Secretary TEXT,
    AttendanceCount INTEGER,
    AgendaItemCount INTEGER,
    MinutesDocument TEXT,
    ActionItems INTEGER,
    FollowUpDate DATE,
    BudgetApproval REAL,
    StrategicPlanUpdate TEXT,
    RiskAssessmentScore REAL,
    ComplianceStatus TEXT,
    KeyDecision TEXT,
    NextMeetingDate DATE,
    DurationMinutes INTEGER,
    Facilitator TEXT,
    MeetingType TEXT,
    ConfidentialLevel TEXT
);

INSERT INTO HospitalBoardMeeting VALUES (1, '2023-01-15', 'Conference Room A', 'DrAllen', 'MsTaylor', 12, 8, 'minutes_20230115.pdf', 5, '2023-02-01', 2500000.00, 'Q1 Strategy Update', 4.5, 'Compliant', 'Approve new wing', '2023-04-15', 120, 'MrClark', 'Quarterly', 'High');
INSERT INTO HospitalBoardMeeting VALUES (2, '2023-04-20', 'Conference Room B', 'DrAllen', 'MsTaylor', 13, 9, 'minutes_20230420.pdf', 6, '2023-05-05', 2600000.00, 'Midyear Review', 4.2, 'Compliant', 'Budget reallocation', '2023-07-20', 130, 'MrsDavis', 'Quarterly', 'Medium');
INSERT INTO HospitalBoardMeeting VALUES (3, '2023-07-18', 'Conference Room C', 'DrAllen', 'MsTaylor', 11, 7, 'minutes_20230718.pdf', 4, '2023-08-02', 2700000.00, 'Annual Planning', 4.8, 'Compliant', 'Launch telehealth program', '2023-10-18', 115, 'MrLee', 'Quarterly', 'High');

-- Patient portal login table
CREATE TABLE PatientPortalLogin (
    LoginID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    Username TEXT,
    PasswordHash TEXT,
    LoginTimestamp DATE,
    IPAddress TEXT,
    DeviceType TEXT,
    Browser TEXT,
    Successful INTEGER,
    FailureReason TEXT,
    SessionDuration INTEGER,
    TwoFactorEnabled INTEGER,
    LastPasswordChange DATE,
    AccountStatus TEXT,
    FailedAttempts INTEGER,
    LockoutTime DATE,
    Locale TEXT,
    ThemePreference TEXT,
    NotificationEnabled INTEGER,
    ConsentGiven INTEGER
);

INSERT INTO PatientPortalLogin VALUES (1001, 1, 'jdoe', 'hash123', '2023-06-10', '192.168.1.10', 'Mobile', 'Chrome', 1, '', 15, 1, '2023-01-01', 'Active', 0, NULL, 'en-US', 'Light', 1, 1);
INSERT INTO PatientPortalLogin VALUES (1002, 2, 'asmith', 'hash456', '2023-06-11', '192.168.1.20', 'Desktop', 'Firefox', 0, 'InvalidPassword', 0, 1, '2023-02-15', 'Active', 3, '2023-06-12', 'en-GB', 'Dark', 1, 1);
INSERT INTO PatientPortalLogin VALUES (1003, 3, 'bwhite', 'hash789', '2023-06-12', '192.168.1.30', 'Tablet', 'Safari', 1, '', 30, 0, '2022-12-01', 'Locked', 5, '2023-06-13', 'fr-FR', 'Light', 0, 0);

-- Medical device failure log table
CREATE TABLE MedicalDeviceFailureLog (
    FailureID INTEGER PRIMARY KEY,
    DeviceID INTEGER,
    DeviceModel TEXT,
    SerialNumber TEXT,
    FailureDate DATE,
    FailureType TEXT,
    Description TEXT,
    DowntimeHours REAL,
    ImpactSeverity TEXT,
    ReportedBy TEXT,
    RootCause TEXT,
    CorrectiveAction TEXT,
    ResolutionDate DATE,
    WarrantyStatus TEXT,
    ServiceVendor TEXT,
    CostOfRepair REAL,
    PartsReplaced INTEGER,
    MaintenanceDueDate DATE,
    CalibrationStatus TEXT,
    FollowUpInspectionDate DATE
);

INSERT INTO MedicalDeviceFailureLog VALUES (5001, 200, 'VentX200', 'SN12345', '2023-05-20', 'Software', 'Unexpected shutdown', 4.5, 'High', 'TechMike', 'FirmwareBug', 'FirmwareUpdate', '2023-05-22', 'InWarranty', 'MedTechServ', 0.00, 0, '2023-12-01', 'Calibrated', '2023-06-01');
INSERT INTO MedicalDeviceFailureLog VALUES (5002, 201, 'InfusePro', 'SN54321', '2023-06-05', 'Mechanical', 'Pump failure', 8.0, 'Critical', 'TechAnna', 'WearAndTear', 'PartReplacement', '2023-06-10', 'OutOfWarranty', 'BioRepair', 1200.00, 2, '2024-01-15', 'Pending', '2023-07-01');
INSERT INTO MedicalDeviceFailureLog VALUES (5003, 202, 'ECG2020', 'SN67890', '2023-06-15', 'Electrical', 'Signal loss', 2.0, 'Medium', 'TechJohn', 'CableDefect', 'CableReplace', '2023-06-16', 'InWarranty', 'ElectroFix', 150.00, 1, '2023-11-20', 'Calibrated', '2023-07-15');

-- Research data sharing agreement table
CREATE TABLE ResearchDataSharingAgreement (
    AgreementID INTEGER PRIMARY KEY,
    ProjectID INTEGER,
    DataOwner TEXT,
    DataRecipient TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    DataType TEXT,
    SecurityLevel TEXT,
    AccessMethod TEXT,
    ConfidentialityClause TEXT,
    PublicationRights TEXT,
    DataRetentionPeriod INTEGER,
    GoverningLaw TEXT,
    SignatureDataOwner TEXT,
    SignatureDataRecipient TEXT,
    AmendmentCount INTEGER,
    LastAmendmentDate DATE,
    Status TEXT,
    AuditedBy TEXT,
    AuditDate DATE
);

INSERT INTO ResearchDataSharingAgreement VALUES (9001, 3001, 'UniversityA', 'InstituteB', '2023-01-01', '2025-12-31', 'Genomic', 'High', 'SecurePortal', 'Confidential', 'CoAuthor', 5, 'USA', 'DrA', 'DrB', 1, '2023-06-01', 'Active', 'AuditTeam1', '2023-06-10');
INSERT INTO ResearchDataSharingAgreement VALUES (9002, 3002, 'CompanyX', 'HospitalY', '2023-03-15', '2024-03-14', 'Imaging', 'Medium', 'VPN', 'Restricted', 'InternalUse', 3, 'EU', 'DrC', 'DrD', 0, NULL, 'Pending', 'AuditTeam2', '2023-04-20');
INSERT INTO ResearchDataSharingAgreement VALUES (9003, 3003, 'LabZ', 'ConsortiumQ', '2022-07-01', '2026-06-30', 'Clinical', 'Low', 'EncryptedEmail', 'Public', 'None', 7, 'Canada', 'DrE', 'DrF', 2, '2023-05-05', 'Active', 'AuditTeam3', '2023-05-15');

-- Clinical trial recruitment log table
CREATE TABLE ClinicalTrialRecruitmentLog (
    LogID INTEGER PRIMARY KEY,
    TrialID INTEGER,
    SiteID INTEGER,
    RecruitmentDate DATE,
    ParticipantsScreened INTEGER,
    ParticipantsEnrolled INTEGER,
    EligibilityRate REAL,
    ReasonForExclusion TEXT,
    RecruiterName TEXT,
    ConsentObtained INTEGER,
    SourceOfReferral TEXT,
    AdvertisingChannel TEXT,
    CostPerRecruit INTEGER,
    EnrollmentTarget INTEGER,
    CurrentEnrollment INTEGER,
    ProjectedCompletionDate DATE,
    Comments TEXT,
    FollowUpNeeded INTEGER,
    FollowUpDate DATE,
    DataVerified INTEGER
);

INSERT INTO ClinicalTrialRecruitmentLog VALUES (2001, 101, 10, '2023-05-01', 30, 12, 0.40, 'AgeCriteria', 'Alice', 1, 'Physician', 'Flyer', 150, 200, 50, '2024-12-31', 'Good response', 0, NULL, 1);
INSERT INTO ClinicalTrialRecruitmentLog VALUES (2002, 102, 12, '2023-05-15', 45, 20, 0.44, 'Comorbidity', 'Bob', 1, 'Online', 'SocialMedia', 200, 250, 80, '2025-03-15', 'Need more elderly', 1, '2023-06-01', 0);
INSERT INTO ClinicalTrialRecruitmentLog VALUES (2003, 103, 14, '2023-06-01', 25, 10, 0.40, 'Location', 'Carol', 1, 'Clinic', 'Radio', 120, 150, 60, '2024-09-30', 'Steady enrollment', 0, NULL, 1);

-- Medical device recall notice table
CREATE TABLE MedicalDeviceRecallNotice (
    RecallID INTEGER PRIMARY KEY,
    DeviceID INTEGER,
    DeviceModel TEXT,
    SerialNumber TEXT,
    RecallDate DATE,
    Reason TEXT,
    FDAClassification TEXT,
    Manufacturer TEXT,
    DistributionScope TEXT,
    CorrectiveAction TEXT,
    PatientImpact TEXT,
    NotificationDate DATE,
    Status TEXT,
    EstimatedAffectedUnits INTEGER,
    ReplacementAvailable INTEGER,
    RecallCoordinator TEXT,
    ContactPhone TEXT,
    WebLink TEXT,
    AdditionalInfo TEXT,
    ClosingDate DATE
);

INSERT INTO MedicalDeviceRecallNotice VALUES (3001, 200, 'VentX200', 'SN12345', '2023-06-10', 'BatteryFailure', 'ClassI', 'MediTech', 'Global', 'ReplaceBattery', 'Low', '2023-06-12', 'Open', 1500, 1, 'JohnDoe', '555-1234', 'http://recall.example.com/3001', 'Battery batch 2023A', NULL);
INSERT INTO MedicalDeviceRecallNotice VALUES (3002, 201, 'InfusePro', 'SN54321', '2023-06-20', 'InfusionPumpOverheat', 'ClassII', 'HealthEquip', 'Regional', 'SoftwarePatch', 'Medium', '2023-06-22', 'Open', 800, 0, 'JaneSmith', '555-5678', 'http://recall.example.com/3002', 'Overheat issue in firmware v2.1', NULL);
INSERT INTO MedicalDeviceRecallNotice VALUES (3003, 202, 'ECG2020', 'SN67890', '2023-07-01', 'LeadConnectorFault', 'ClassI', 'CardioSystems', 'National', 'ReplaceLeads', 'Low', '2023-07-03', 'Closed', 300, 1, 'MikeBrown', '555-9012', 'http://recall.example.com/3003', 'Leads may detach during use', '2023-09-30');

-- Clinical pharmacy audit table
CREATE TABLE ClinicalPharmacyAudit (
    AuditID INTEGER PRIMARY KEY,
    PharmacyID INTEGER,
    AuditDate DATE,
    AuditorName TEXT,
    ComplianceScore REAL,
    ControlledSubstancesScore REAL,
    DocumentationScore REAL,
    StorageScore REAL,
    TemperatureLogScore REAL,
    DiscrepancyCount INTEGER,
    FindingsSummary TEXT,
    Recommendations TEXT,
    FollowUpDate DATE,
    CorrectiveActionTaken INTEGER,
    OverallRating TEXT,
    AuditType TEXT,
    RegulatoryReference TEXT,
    Comments TEXT,
    InspectorBadgeID TEXT,
    ReAuditRequired INTEGER,
    ReAuditDate DATE
);

INSERT INTO ClinicalPharmacyAudit VALUES (4001, 1, '2023-04-15', 'AuditorA', 92.5, 95.0, 90.0, 88.0, 93.0, 2, 'Minor labeling issues', 'Update labels', '2023-05-15', 1, 'Excellent', 'Routine', '21CFR', 'All good', 'IB123', 0, NULL);
INSERT INTO ClinicalPharmacyAudit VALUES (4002, 2, '2023-07-20', 'AuditorB', 85.0, 80.0, 82.5, 78.0, 84.0, 5, 'Temperature excursions', 'Install new monitor', '2023-08-20', 0, 'Good', 'Targeted', '21CFR', 'Need follow‑up', 'IB124', 1, '2023-09-01');
INSERT INTO ClinicalPharmacyAudit VALUES (4003, 3, '2023-10-05', 'AuditorC', 90.0, 92.0, 88.0, 91.0, 89.0, 1, 'Documentation complete', 'Maintain current practices', '2023-11-05', 1, 'Very Good', 'Routine', '21CFR', 'No issues', 'IB125', 0, NULL);

-- Patient consent form table
CREATE TABLE PatientConsentForm (
    ConsentID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    FormType TEXT,
    Version INTEGER,
    SignedDate DATE,
    SignedBy TEXT,
    WitnessName TEXT,
    ConsentScope TEXT,
    ExpirationDate DATE,
    Revoked INTEGER,
    RevocationDate DATE,
    Notes TEXT,
    DocumentLocation TEXT,
    ElectronicSignature INTEGER,
    ConsentStatus TEXT,
    Language TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    RevisionNumber INTEGER,
    LastUpdated DATE
);

INSERT INTO PatientConsentForm VALUES (6001, 1, 'Surgery', 2, '2023-01-15', 'DrAllen', 'NurseKelly', 'Full', '2025-01-15', 0, NULL, 'Patient consented to procedure', '/docs/consent6001.pdf', 1, 'Active', 'en-US', 'DrAllen', '2023-01-16', 1, '2023-01-16');
INSERT INTO PatientConsentForm VALUES (6002, 2, 'Research', 1, '2023-03-10', 'DrBrown', 'NurseLee', 'Limited', '2024-03-10', 1, '2023-08-01', 'Patient withdrew consent', '/docs/consent6002.pdf', 1, 'Revoked', 'en-GB', 'DrBrown', '2023-03-11', 2, '2023-08-01');
INSERT INTO PatientConsentForm VALUES (6003, 3, 'DataSharing', 3, '2023-05-20', 'DrWhite', 'NurseSmith', 'Full', '2026-05-20', 0, NULL, 'Consent for data sharing granted', '/docs/consent6003.pdf', 1, 'Active', 'fr-FR', 'DrWhite', '2023-05-21', 1, '2023-05-21');