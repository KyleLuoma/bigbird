-- Medical staff scheduling details
CREATE TABLE MedicalStaffSchedule
(
    ScheduleID          INTEGER          NOT NULL,
    StaffID             INTEGER          NOT NULL,
    Role                TEXT,
    ShiftDate           DATE,
    ShiftStart          TEXT,
    ShiftEnd            TEXT,
    Department          TEXT,
    Location            TEXT,
    AssignedRoom        TEXT,
    OnCallFlag          INTEGER,
    Notes               TEXT,
    CreatedAt           DATE,
    UpdatedAt           DATE,
    WeekNumber          INTEGER,
    Year                INTEGER,
    PayrollCode         TEXT,
    ScheduledHours      REAL,
    OvertimeHours       REAL,
    BreakMinutes        INTEGER,
    ShiftPattern        TEXT,
    CoverageLevel       TEXT,
    ManagerID           INTEGER,
    PRIMARY KEY (ScheduleID)
);

INSERT INTO MedicalStaffSchedule VALUES (1, 1001, 'Nurse', '2024-03-01', '07:00', '15:00', 'Cardiology', 'WingA', 'Room101', 0, 'Morning shift', '2024-02-20', '2024-02-25', 9, 2024, 'PC001', 8.0, 0.0, 30, 'Standard', 'Full', 5001);
INSERT INTO MedicalStaffSchedule VALUES (2, 1002, 'Physician', '2024-03-01', '15:00', '23:00', 'Oncology', 'WingB', 'Room202', 1, 'Evening on‑call', '2024-02-21', '2024-02-26', 9, 2024, 'PC002', 8.0, 2.0, 45, 'Rotating', 'Partial', 5002);
INSERT INTO MedicalStaffSchedule VALUES (3, 1003, 'Technician', '2024-03-02', '23:00', '07:00', 'Radiology', 'WingC', 'Room303', 0, 'Night shift', '2024-02-22', '2024-02-27', 10, 2024, 'PC003', 8.0, 1.5, 60, 'Night', 'Full', 5003);


-- Hospital waste audit records
CREATE TABLE HospitalWasteAudit
(
    AuditID                 INTEGER          NOT NULL,
    WasteCategory           TEXT,
    WasteType               TEXT,
    CollectionDate          DATE,
    QuantityKg              REAL,
    UnitNumber              TEXT,
    ContainerID             TEXT,
    DisposalMethod          TEXT,
    ResponsibleStaffID      INTEGER,
    Department              TEXT,
    AuditStatus             TEXT,
    Findings                TEXT,
    Recommendations         TEXT,
    FollowUpDate            DATE,
    AuditorID               INTEGER,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    VerifiedFlag            INTEGER,
    ComplianceScore         REAL,
    TemperatureCelsius      REAL,
    HazardLevel             TEXT,
    StorageLocation         TEXT,
    IncidentReportID        INTEGER,
    PRIMARY KEY (AuditID)
);

INSERT INTO HospitalWasteAudit VALUES (101, 'Infectious', 'Biohazard', '2024-02-15', 12.5, 'U123', 'C001', 'Incineration', 2001, 'Infection Control', 'Completed', 'No leakage observed', 'Continue segregation', '2024-02-22', 3001, '2024-02-10', '2024-02-15', 1, 98.5, 4.0, 'High', 'Basement Storage', 4001);
INSERT INTO HospitalWasteAudit VALUES (102, 'Chemical', 'Disinfectant', '2024-02-18', 8.0, 'U124', 'C002', 'Neutralization', 2002, 'Facilities', 'Pending', 'Container labeling inconsistent', 'Update labels', '2024-02-25', 3002, '2024-02-12', '2024-02-18', 0, 85.0, 22.0, 'Medium', 'Chem Lab', 4002);
INSERT INTO HospitalWasteAudit VALUES (103, 'Radioactive', 'Isotope', '2024-02-20', 3.2, 'U125', 'C003', 'Decay Storage', 2003, 'Radiology', 'Completed', 'All containers within limits', 'Maintain current protocol', '2024-02-27', 3003, '2024-02-14', '2024-02-20', 1, 99.0, 0.0, 'Very High', 'Radiology Vault', 4003);


-- Biomedical research grant details
CREATE TABLE BiomedicalResearchGrant
(
    GrantID                 INTEGER          NOT NULL,
    GrantTitle              TEXT,
    PrincipalInvestigator  TEXT,
    FundingAgency           TEXT,
    AwardAmountUSD          REAL,
    StartDate               DATE,
    EndDate                 DATE,
    GrantStatus             TEXT,
    ReviewScore             REAL,
    FundingCategory         TEXT,
    ResearchArea            TEXT,
    EligibilityCriteria    TEXT,
    RequiredReportFrequency TEXT,
    ContactEmail            TEXT,
    ContactPhone            TEXT,
    Currency                TEXT,
    ExchangeRateToUSD       REAL,
    AllocationMethod        TEXT,
    MatchingFundsRequired   INTEGER,
    OverheadPercentage      REAL,
    SubmittedProposalID     INTEGER,
    ApprovalDate            DATE,
    PRIMARY KEY (GrantID)
);

INSERT INTO BiomedicalResearchGrant VALUES (50001, 'Genomics of Autoimmune Diseases', 'Dr Smith', 'NIH', 1500000, '2024-01-01', '2026-12-31', 'Awarded', 92.5, 'Federal', 'Immunology', 'US institutions only', 'Annual', 'smith@hospital.org', '5551234567', 'USD', 1.0, 'Direct', 0, 15.0, 60001, '2023-12-15');
INSERT INTO BiomedicalResearchGrant VALUES (50002, 'Novel Antimicrobial Peptides', 'Dr Lee', 'EU Horizon', 1200000, '2024-06-01', '2027-05-31', 'Pending', 0, 'International', 'Microbiology', 'EU member states', 'Biannual', 'lee@research.org', '5559876543', 'EUR', 1.1, 'Co‑funded', 1, 12.0, 60002, NULL);
INSERT INTO BiomedicalResearchGrant VALUES (50003, 'AI‑Driven Radiology Workflow', 'Dr Patel', 'Private Foundation', 800000, '2023-09-15', '2025-09-14', 'Completed', 88.0, 'Private', 'Medical Imaging', 'Open to all', 'Quarterly', 'patel@AIhealth.com', '5552223333', 'USD', 1.0, 'Milestone', 0, 10.0, 60003, '2023-08-20');


-- Patient engagement metrics
CREATE TABLE PatientEngagementMetric
(
    MetricID                INTEGER          NOT NULL,
    PatientID               INTEGER,
    EngagementDate          DATE,
    PortalLoginCount        INTEGER,
    MessagesSent            INTEGER,
    AppointmentsBooked     INTEGER,
    SurveysCompleted        INTEGER,
    HealthGoalsSet          INTEGER,
    GoalCompletionRate      REAL,
    EducationModulesViewed  INTEGER,
    VideoViews              INTEGER,
    TelehealthSessions      INTEGER,
    MedicationAdherencePct  REAL,
    WearableDataSubmitted   INTEGER,
    FeedbackScore           REAL,
    SatisfactionScore       REAL,
    RiskStratificationLevel TEXT,
    LanguagePreference      TEXT,
    NotificationPreference  TEXT,
    LastInteractionMethod   TEXT,
    FollowUpDueDate         DATE,
    CareCoordinatorID       INTEGER,
    PRIMARY KEY (MetricID)
);

INSERT INTO PatientEngagementMetric VALUES (9001, 10001, '2024-02-10', 5, 12, 2, 1, 3, 0.75, 4, 3, 1, 92.5, 7, 4.5, 4.8, 'Medium', 'English', 'Email', 'Portal', '2024-03-01', 7001);
INSERT INTO PatientEngagementMetric VALUES (9002, 10002, '2024-02-12', 2, 5, 1, 0, 1, 0.20, 1, 0, 0, 80.0, 3, 3.0, 4.2, 'High', 'Spanish', 'SMS', 'App', '2024-02-25', 7002);
INSERT INTO PatientEngagementMetric VALUES (9003, 10003, '2024-02-15', 8, 20, 3, 2, 5, 0.90, 6, 5, 2, 98.0, 10, 5.0, 4.9, 'Low', 'English', 'Push', 'Phone', '2024-03-10', 7003);


-- Facility water usage log
CREATE TABLE FacilityWaterUsageLog
(
    RecordID                INTEGER          NOT NULL,
    FacilityID              INTEGER,
    LogDate                 DATE,
    TotalConsumptionLiters  REAL,
    ColdWaterLiters         REAL,
    HotWaterLiters          REAL,
    CycleCount              INTEGER,
    PressureBar             REAL,
    TemperatureCelsius      REAL,
    MeterReadingStart       REAL,
    MeterReadingEnd         REAL,
    ConsumptionRateLperH    REAL,
    PeakHourStart           TEXT,
    PeakHourEnd             TEXT,
    LowUsageHourStart       TEXT,
    LowUsageHourEnd         TEXT,
    LeakDetectedFlag       INTEGER,
    MaintenanceTicketID     INTEGER,
    EnergyUsedKWh           REAL,
    BillingPeriodID         INTEGER,
    WaterSourceType         TEXT,
    FilterChangeDate        DATE,
    PRIMARY KEY (RecordID)
);

INSERT INTO FacilityWaterUsageLog VALUES (20001, 1, '2024-02-01', 15000.0, 9000.0, 6000.0, 350, 3.2, 55.0, 12000.0, 15000.0, 625.0, '08:00', '10:00', '02:00', '04:00', 0, 3001, 1200.0, 4001, 'Municipal', '2024-01-15');
INSERT INTO FacilityWaterUsageLog VALUES (20002, 2, '2024-02-01', 8000.0, 5000.0, 3000.0, 210, 2.8, 50.0, 6500.0, 8000.0, 333.3, '09:00', '11:00', '01:00', '03:00', 1, 3002, 640.0, 4002, 'Well', '2024-01-20');
INSERT INTO FacilityWaterUsageLog VALUES (20003, 3, '2024-02-01', 12000.0, 7000.0, 5000.0, 280, 3.0, 52.0, 10000.0, 12000.0, 500.0, '07:00', '09:00', '03:00', '05:00', 0, 3003, 960.0, 4003, 'River', '2024-01-25');


-- Clinical outcome trend analysis
CREATE TABLE ClinicalOutcomeTrend
(
    TrendID                 INTEGER          NOT NULL,
    Condition               TEXT,
    MetricName              TEXT,
    TimePeriodStart         DATE,
    TimePeriodEnd           DATE,
    AvgValue                REAL,
    MedianValue             REAL,
    StdDev                  REAL,
    MinValue                REAL,
    MaxValue                REAL,
    SampleSize              INTEGER,
    ConfidenceIntervalLow   REAL,
    ConfidenceIntervalHigh  REAL,
    TrendDirection          TEXT,
    SignificantFlag         INTEGER,
    AdjustedPValue          REAL,
    DataSource              TEXT,
    AnalystID               INTEGER,
    ReviewDate              DATE,
    Notes                   TEXT,
    PRIMARY KEY (TrendID)
);

INSERT INTO ClinicalOutcomeTrend VALUES (3001, 'Myocardial Infarction', '30DayReadmissionRate', '2023-01-01', '2023-12-31', 12.5, 12.0, 2.1, 8.0, 18.0, 1500, 11.8, 13.2, 'Decreasing', 1, 0.03, 'EHR', 8001, '2024-01-10', 'Improved post‑discharge program');
INSERT INTO ClinicalOutcomeTrend VALUES (3002, 'Stroke', 'InHospitalMortality', '2023-01-01', '2023-12-31', 5.2, 5.0, 0.9, 3.0, 7.5, 1200, 5.0, 5.4, 'Stable', 0, 0.45, 'EHR', 8002, '2024-01-12', 'No significant change');
INSERT INTO ClinicalOutcomeTrend VALUES (3003, 'Pneumonia', 'AverageLengthOfStay', '2023-01-01', '2023-12-31', 4.8, 4.5, 0.7, 3.0, 6.5, 1800, 4.6, 5.0, 'Increasing', 1, 0.02, 'EHR', 8003, '2024-01-15', 'Potential staffing impact');


-- Supply chain risk assessment log
CREATE TABLE SupplyChainRiskAssessmentLog
(
    AssessmentID            INTEGER          NOT NULL,
    SupplierID              INTEGER,
    AssessmentDate          DATE,
    RiskScoreOverall        REAL,
    FinancialStabilityScore REAL,
    GeopoliticalRiskScore   REAL,
    DeliveryPerformanceScore REAL,
    QualityComplianceScore  REAL,
    CyberSecurityScore      REAL,
    ContractExpiryDate      DATE,
    MitigationPlanID        INTEGER,
    AuditorID               INTEGER,
    Comments                TEXT,
    RecommendedAction       TEXT,
    FollowUpDate            DATE,
    Status                  TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    HighRiskFlag            INTEGER,
    RiskCategory            TEXT,
    PRIMARY KEY (AssessmentID)
);

INSERT INTO SupplyChainRiskAssessmentLog VALUES (4001, 9001, '2024-02-05', 78.5, 85.0, 60.0, 90.0, 88.0, 70.0, '2025-12-31', 5001, 6001, 'Supplier financials stable', 'Maintain current contracts', '2024-08-01', 'Completed', '2024-02-05', '2024-02-05', 0, 'Medium');
INSERT INTO SupplyChainRiskAssessmentLog VALUES (4002, 9002, '2024-02-07', 45.0, 55.0, 80.0, 50.0, 60.0, 40.0, '2024-09-30', 5002, 6002, 'High geopolitical risk', 'Seek alternative sourcing', '2024-06-15', 'InProgress', '2024-02-07', '2024-02-07', 1, 'High');
INSERT INTO SupplyChainRiskAssessmentLog VALUES (4003, 9003, '2024-02-10', 92.0, 95.0, 30.0, 98.0, 96.0, 85.0, '2026-03-31', 5003, 6003, 'Excellent overall performance', 'Continue partnership', '2025-01-01', 'Completed', '2024-02-10', '2024-02-10', 0, 'Low');


-- Medical device inventory audit
CREATE TABLE MedicalDeviceInventoryAudit
(
    AuditRecordID           INTEGER          NOT NULL,
    DeviceID                INTEGER,
    AuditDate               DATE,
    Location                TEXT,
    Status                  TEXT,
    LastMaintenanceDate     DATE,
    NextMaintenanceDueDate  DATE,
    CalibrationDate         DATE,
    CalibrationDueDate      DATE,
    FirmwareVersion         TEXT,
    SoftwareVersion         TEXT,
    AssignedToStaffID       INTEGER,
    UsageHours              REAL,
    PowerCycles             INTEGER,
    IncidentCount           INTEGER,
    DecommissionFlag        INTEGER,
    AuditorID               INTEGER,
    Notes                   TEXT,
    VerifiedFlag            INTEGER,
    ComplianceScore         REAL,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    PRIMARY KEY (AuditRecordID)
);

INSERT INTO MedicalDeviceInventoryAudit VALUES (50001, 30001, '2024-02-12', 'Radiology Wing', 'Operational', '2024-01-15', '2025-01-15', '2024-01-10', '2025-01-10', 'v2.3', 's1.4', 8001, 1500.5, 300, 0, 0, 9001, 'All parameters within spec', 1, 99.0, '2024-02-12', '2024-02-12');
INSERT INTO MedicalDeviceInventoryAudit VALUES (50002, 30002, '2024-02-13', 'ICU', 'Under Maintenance', '2023-12-01', '2024-12-01', '2023-11-20', '2024-11-20', 'v1.9', 's1.2', 8002, 1200.0, 250, 1, 0, 9002, 'Battery replacement needed', 0, 85.0, '2024-02-13', '2024-02-13');
INSERT INTO MedicalDeviceInventoryAudit VALUES (50003, 30003, '2024-02-14', 'Lab', 'Decommissioned', '2022-06-30', NULL, '2022-06-15', NULL, 'v3.0', 's2.0', 8003, 0.0, 0, 0, 1, 9003, 'Device retired due to obsolescence', 1, 0.0, '2024-02-14', '2024-02-14');


-- Health IT system change log
CREATE TABLE HealthITSystemChangeLog
(
    ChangeLogID             INTEGER          NOT NULL,
    SystemName              TEXT,
    ChangeDate              DATE,
    ChangeType              TEXT,
    Description             TEXT,
    IssueTicketID           INTEGER,
    ResolvedFlag            INTEGER,
    ResolutionDate          DATE,
    ImpactedModules         TEXT,
    DowntimeMinutes         INTEGER,
    PerformedByUserID       INTEGER,
    ApprovalStatus          TEXT,
    ApprovedByUserID        INTEGER,
    RollbackRequiredFlag    INTEGER,
    RollbackDate            DATE,
    TestEnvironmentUsed     TEXT,
    ValidationResult        TEXT,
    DocumentationLink       TEXT,
    RiskAssessmentScore     REAL,
    ComplianceImpact        TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    PRIMARY KEY (ChangeLogID)
);

INSERT INTO HealthITSystemChangeLog VALUES (60001, 'EHR_Core', '2024-01-20', 'Patch', 'Security update for CVE‑2024‑1234', 70001, 1, '2024-01-21', 'Authentication,Audit', 15, 9001, 'Approved', 8001, 0, NULL, 'Staging', 'Pass', 'http://docs.hospital.org/patches/2024_01', 92.5, 'Low', '2024-01-20', '2024-01-22');
INSERT INTO HealthITSystemChangeLog VALUES (60002, 'Lab_Interface', '2024-02-05', 'Upgrade', 'Version upgrade to support new assay types', 70002, 0, NULL, 'DataImport,Reporting', 30, 9002, 'Pending', NULL, 1, NULL, 'Test', 'Pending', 'http://docs.hospital.org/upgrades/lab_interface_v2', 75.0, 'Medium', '2024-02-05', '2024-02-05');
INSERT INTO HealthITSystemChangeLog VALUES (60003, 'PatientPortal', '2024-02-15', 'Feature', 'Added mobile push notifications for appointment reminders', 70003, 1, '2024-02-16', 'Notification,UI', 5, 9003, 'Approved', 8003, 0, NULL, 'Prod', 'Pass', 'http://docs.hospital.org/features/push_notifications', 88.0, 'Low', '2024-02-15', '2024-02-16');


-- Community health partner engagement
CREATE TABLE CommunityHealthPartnerEngagement
(
    EngagementID            INTEGER          NOT NULL,
    PartnerID               INTEGER,
    PartnerName             TEXT,
    EngagementStartDate     DATE,
    EngagementEndDate       DATE,
    ProgramName             TEXT,
    ActivityType            TEXT,
    TargetPopulation        TEXT,
    EstimatedReach          INTEGER,
    FundingAmountUSD        REAL,
    ContributionsInKind     TEXT,
    CoordinatorStaffID      INTEGER,
    AgreementSignedFlag     INTEGER,
    MemorandumLink          TEXT,
    EvaluationScore         REAL,
    FeedbackSummary         TEXT,
    NextPlannedActivityDate DATE,
    Status                  TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    PRIMARY KEY (EngagementID)
);

INSERT INTO CommunityHealthPartnerEngagement VALUES (70001, 11001, 'City Youth Center', '2023-05-01', '2024-04-30', 'Healthy Teens Initiative', 'Workshop', 'Adolescents', 500, 20000, 'Volunteer trainers', 1001, 1, 'http://partners.org/docs/mou1', 4.5, 'Positive reception', '2024-09-15', 'Active', '2023-05-01', '2024-02-01');
INSERT INTO CommunityHealthPartnerEngagement VALUES (70002, 11002, 'Local Farm Co‑op', '2023-09-15', '2024-09-14', 'Nutrition Gardens Project', 'Community Garden', 'Low‑income families', 300, 15000, 'Seeds and tools', 1002, 1, 'http://partners.org/docs/mou2', 4.0, 'Good community participation', '2024-10-01', 'Active', '2023-09-15', '2024-02-01');
INSERT INTO CommunityHealthPartnerEngagement VALUES (70003, 11003, 'Senior Advocacy Group', '2022-01-01', '2024-12-31', 'Fall Prevention Campaign', 'Outreach', 'Seniors', 800, 25000, 'Venue space', 1003, 1, 'http://partners.org/docs/mou3', 4.8, 'High satisfaction', '2024-11-20', 'Ongoing', '2022-01-01', '2024-02-01');


-- Community health partner engagement (duplicate name was used above; corrected to new table name)
CREATE TABLE PatientDeviceLog
(
    LogID                   INTEGER          NOT NULL,
    PatientID               INTEGER,
    DeviceSerialNumber      TEXT,
    DeviceType              TEXT,
    AssignmentDate          DATE,
    RetrievalDate           DATE,
    UsageHours              REAL,
    BatteryLevelStart       REAL,
    BatteryLevelEnd         REAL,
    FirmwareVersion         TEXT,
    SoftwareVersion         TEXT,
    AssignedByStaffID       INTEGER,
    RetrievalByStaffID      INTEGER,
    ConditionAtAssignment   TEXT,
    ConditionAtRetrieval    TEXT,
    Notes                   TEXT,
    LastSyncDate            DATE,
    SyncStatus              TEXT,
    DataUploadFlag          INTEGER,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    PRIMARY KEY (LogID)
);

INSERT INTO PatientDeviceLog VALUES (80001, 10001, 'SN12345', 'WearableMonitor', '2024-01-10', NULL, 120.5, 100.0, 85.0, 'v1.2', 's3.0', 9001, NULL, 'Good', NULL, 'Patient uses daily', '2024-02-15', 'Synced', 1, '2024-01-10', '2024-02-15');
INSERT INTO PatientDeviceLog VALUES (80002, 10002, 'SN54321', 'GlucoMeter', '2024-01-20', '2024-02-10', 200.0, 100.0, 20.0, 'v2.0', 's1.5', 9002, 9003, 'Excellent', 'Battery low', 'Replaced battery', '2024-02-10', 'Completed', 1, '2024-01-20', '2024-02-10');
INSERT INTO PatientDeviceLog VALUES (80003, 10003, 'SN98765', 'BloodPressureCuff', '2024-02-01', NULL, 80.0, 100.0, 95.0, 'v1.0', 's2.1', 9004, NULL, 'Good', NULL, 'No issues', '2024-02-20', 'Pending', 0, '2024-02-01', '2024-02-20');