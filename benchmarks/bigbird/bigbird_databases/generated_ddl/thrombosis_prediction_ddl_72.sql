-- Hospital construction project budgeting details
CREATE TABLE HospitalConstructionProjectBudget
(
    BudgetID           INTEGER PRIMARY KEY,
    ProjectID          INTEGER,
    FiscalYear         INTEGER,
    EstimatedTotal     REAL,
    ApprovedTotal      REAL,
    FundingSource      TEXT,
    CapitalGrant       REAL,
    LoanAmount         REAL,
    Contingency        REAL,
    DeptResponsible    TEXT,
    Phase              TEXT,
    StartDate          DATE,
    EndDate            DATE,
    Currency           TEXT,
    CostBreakdown      TEXT,
    Notes              TEXT,
    UpdatedBy          TEXT,
    UpdateTimestamp    DATE,
    ApprovalStatus     TEXT,
    ReviewCycle        INTEGER
);

INSERT INTO HospitalConstructionProjectBudget VALUES (1, 101, 2024, 2500000.00, 2400000.00, 'StateGrant', 1500000.00, 800000.00, 200000.00, 'Facilities', 'Planning', '2024-01-15', '2025-06-30', 'USD', 'Foundation,Electrical,HVAC', 'Initial budget submission', 'jdoe', '2024-01-10', 'Pending', 1);
INSERT INTO HospitalConstructionProjectBudget VALUES (2, 101, 2025, 2600000.00, 2500000.00, 'StateGrant', 1600000.00, 850000.00, 210000.00, 'Facilities', 'Construction', '2025-07-01', '2027-12-31', 'USD', 'Structural,Plumbing,Finishing', 'Revised after design change', 'asmith', '2025-06-20', 'Approved', 2);
INSERT INTO HospitalConstructionProjectBudget VALUES (3, 102, 2024, 1200000.00, 1150000.00, 'PrivateDonor', 800000.00, 300000.00, 100000.00, 'Operations', 'Planning', '2024-03-01', '2025-02-28', 'USD', 'ITInfrastructure,Security', 'Donor earmarked funds', 'bwhite', '2024-02-25', 'Pending', 1);


-- Pharmacy regulatory inspection records
CREATE TABLE PharmacyRegulatoryInspection
(
    InspectionID          INTEGER PRIMARY KEY,
    PharmacyID            INTEGER,
    InspectionDate        DATE,
    InspectorName         TEXT,
    InspectionType        TEXT,
    LicenseStatus         TEXT,
    FindingsSummary       TEXT,
    CriticalFindings      TEXT,
    NonCriticalFindings   TEXT,
    CorrectiveActionPlan  TEXT,
    FollowUpDate          DATE,
    InspectionScore       INTEGER,
    ComplianceLevel       TEXT,
    Notes                 TEXT,
    DocumentReference     TEXT,
    RecordedBy            TEXT,
    RecordTimestamp       DATE,
    InspectionLocation    TEXT,
    InspectionDurationHrs INTEGER,
    ViolationCount        INTEGER
);

INSERT INTO PharmacyRegulatoryInspection VALUES (1, 201, '2024-02-15', 'carlson', 'Annual', 'Active', 'All standards met', '', 'Minor storage issue', 'Reorganize shelves', '2024-03-01', 95, 'High', 'No major concerns', 'DOC12345', 'mlee', '2024-02-15', 'MainPharmacy', 4, 1);
INSERT INTO PharmacyRegulatoryInspection VALUES (2, 202, '2024-03-10', 'davis', 'Special', 'Active', 'Temperature controls out of range', 'Temp logger failure', 'Expired product labeling', 'Replace logger, retrain staff', '2024-04-01', 78, 'Medium', 'Immediate corrective action required', 'DOC67890', 'sng', '2024-03-10', 'SatellitePharmacy', 3, 3);
INSERT INTO PharmacyRegulatoryInspection VALUES (3, 203, '2024-04-05', 'evans', 'Routine', 'Suspended', 'Controlled substance logs missing', 'Log discrepancy', 'Unsecured storage area', 'Implement digital logging', '2024-05-20', 60, 'Low', 'License under review', 'DOC54321', 'kpatel', '2024-04-05', 'EmergencyPharmacy', 5, 5);


-- Clinical trial monitoring visit logs
CREATE TABLE ClinicalTrialMonitoringVisit
(
    VisitID               INTEGER PRIMARY KEY,
    TrialID               INTEGER,
    SiteID                INTEGER,
    VisitDate             DATE,
    MonitorName           TEXT,
    VisitType             TEXT,
    FindingsSummary       TEXT,
    ProtocolDeviations    TEXT,
    DataQualityIssues    TEXT,
    PatientSafetyObservations TEXT,
    ActionItems           TEXT,
    FollowUpDate          DATE,
    Status                TEXT,
    DurationHours         INTEGER,
    DocumentsReviewed     TEXT,
    Notes                 TEXT,
    RecordedBy            TEXT,
    RecordTimestamp       DATE,
    RegulatoryContact     TEXT,
    VisitNumber           INTEGER
);

INSERT INTO ClinicalTrialMonitoringVisit VALUES (1, 301, 401, '2024-01-20', 'harrington', 'Initial', 'Site ready, no issues', '', '', 'All safety procedures in place', 'Provide additional training on consent', '2024-02-05', 'Completed', 6, 'ConsentForms,CRFs', 'Site staff cooperative', 'tnguyen', '2024-01-20', 'mriverson', 1);
INSERT INTO ClinicalTrialMonitoringVisit VALUES (2, 301, 401, '2024-03-22', 'harrington', 'Follow-up', 'Minor data entry delays', 'Late CRF submission', 'Missing lab results', 'No adverse events', 'Implement weekly data upload', '2024-04-10', 'Completed', 4, 'CRFs,LabReports', 'Improvement noted', 'tnguyen', '2024-03-22', 'mriverson', 2);
INSERT INTO ClinicalTrialMonitoringVisit VALUES (3, 302, 402, '2024-02-15', 'kim', 'Routine', 'All procedures compliant', '', '', 'No safety concerns', 'Continue current monitoring plan', '2024-03-01', 'Completed', 5, 'ProtocolDoc,IRBApproval', 'Site exceeds expectations', 'jmartin', '2024-02-15', 'lsanders', 1);


-- Biomedical equipment software update tracking
CREATE TABLE BiomedicalEquipmentSoftwareUpdate
(
    UpdateID               INTEGER PRIMARY KEY,
    EquipmentID            INTEGER,
    Manufacturer           TEXT,
    Model                  TEXT,
    SerialNumber           TEXT,
    CurrentVersion         TEXT,
    NewVersion             TEXT,
    UpdateReleaseDate      DATE,
    UpdateAppliedDate      DATE,
    AppliedBy              TEXT,
    VerificationStatus     TEXT,
    ReleaseNotes           TEXT,
    UpdateMethod           TEXT,
    DowntimeMinutes        INTEGER,
    ImpactLevel            TEXT,
    ComplianceRequirement  TEXT,
    AuditTrailReference    TEXT,
    Notes                  TEXT,
    RecordedBy             TEXT,
    RecordTimestamp        DATE
);

INSERT INTO BiomedicalEquipmentSoftwareUpdate VALUES (1, 501, 'GE Healthcare', 'CT7500', 'SN12345', 'v3.2', 'v3.3', '2024-01-05', '2024-01-07', 'tech01', 'Verified', 'Bug fixes and performance improvements', 'Remote', 15, 'Low', 'ISO13485', 'AUD9876', 'Update successful', 'miller', '2024-01-07');
INSERT INTO BiomedicalEquipmentSoftwareUpdate VALUES (2, 502, 'Philips', 'IntelliVue MX800', 'SN67890', 'v2.5', 'v2.6', '2024-02-10', '2024-02-12', 'tech02', 'Verified', 'Security patch', 'Onsite', 30, 'Medium', 'FDA 21 CFR Part 820', 'AUD5432', 'No issues observed', 'johnson', '2024-02-12');
INSERT INTO BiomedicalEquipmentSoftwareUpdate VALUES (3, 503, 'Siemens', 'MAGNETOM Skyra', 'SN24680', 'v1.9', 'v2.0', '2024-03-15', '2024-03-18', 'tech03', 'Pending', 'Major firmware upgrade', 'Onsite', 120, 'High', 'EU MDR', 'AUD1122', 'Extended downtime for calibration', 'wilson', '2024-03-18');


-- Patient safety event log
CREATE TABLE PatientSafetyEventLog
(
    EventID               INTEGER PRIMARY KEY,
    PatientID             INTEGER,
    EventDate             DATE,
    EventTime             TEXT,
    EventType             TEXT,
    Description           TEXT,
    SeverityLevel         TEXT,
    ImmediateActionTaken  TEXT,
    RootCauseAnalysis    TEXT,
    PreventiveActionPlan  TEXT,
    FollowUpDate          DATE,
    Status                TEXT,
    ReportedBy            TEXT,
    Department            TEXT,
    Location              TEXT,
    Witnesses             TEXT,
    DocumentationLink     TEXT,
    Notes                 TEXT,
    RecordedBy            TEXT,
    RecordTimestamp       DATE
);

INSERT INTO PatientSafetyEventLog VALUES (1, 1001, '2024-01-12', '08:15', 'MedicationError', 'Wrong dose administered', 'Moderate', 'Stopped infusion, administered correct dose', 'Labeling confusion', 'Implement barcode scanning', '2024-01-30', 'Closed', 'nurse01', 'Pharmacy', 'Ward A', 'nurse02,pharm01', 'DOC001', 'Education session held', 'admin01', '2024-01-12');
INSERT INTO PatientSafetyEventLog VALUES (2, 1002, '2024-02-05', '14:45', 'Fall', 'Patient slipped in bathroom', 'Severe', 'Assisted patient, evaluated for injury', 'Wet floor', 'Install non-slip mats', '2024-02-20', 'Closed', 'caregiver03', 'Geriatrics', 'Room 210', 'tech01', 'DOC002', 'Floor signage updated', 'admin02', '2024-02-05');
INSERT INTO PatientSafetyEventLog VALUES (3, 1003, '2024-03-22', '10:30', 'EquipmentFailure', 'Ventilator alarm not audible', 'Critical', 'Manually ventilated patient', 'Alarm battery depleted', 'Replace batteries quarterly', '2024-04-10', 'Open', 'resp01', 'ICU', 'ICU Bay 4', 'engineer02', 'DOC003', 'Battery checks added to rounds', 'admin03', '2024-03-22');


-- Hospital energy supply contract details
CREATE TABLE HospitalEnergySupplyContract
(
    ContractID            INTEGER PRIMARY KEY,
    SupplierName          TEXT,
    ContractStartDate     DATE,
    ContractEndDate       DATE,
    EnergyType            TEXT,
    ContractCapacityMW    REAL,
    FixedRateUSDPerMWh    REAL,
    VariableRateFormula   TEXT,
    RenewablePercentage   INTEGER,
    ServiceLevelAgreement TEXT,
    PenaltyClause         TEXT,
    RenewalOption         TEXT,
    ContactPerson         TEXT,
    ContactPhone          TEXT,
    BillingFrequency      TEXT,
    PaymentTerms          TEXT,
    EscalationClause      TEXT,
    Notes                 TEXT,
    RecordedBy            TEXT,
    RecordTimestamp       DATE
);

INSERT INTO HospitalEnergySupplyContract VALUES (1, 'GreenPower Co', '2024-01-01', '2028-12-31', 'Electricity', 25.5, 45.00, 'Base + 0.05*Demand', 40, '99.9% uptime', 'Late payment penalty 2%', 'Option to extend 2 years', 'alice brown', '555-1234', 'Monthly', 'Net30', 'Rate review annually', 'Preferred green supplier', 'energyadmin', '2024-01-01');
INSERT INTO HospitalEnergySupplyContract VALUES (2, 'ThermalEnergy Ltd', '2023-07-01', '2026-06-30', 'Steam', 12.0, 30.00, 'Base + 0.03*Usage', 0, '99% availability', 'Force majeure clause applies', 'No renewal', 'bob smith', '555-5678', 'Quarterly', 'Net45', 'Price cap at 10% increase', 'Secondary steam source', 'energyadmin', '2023-07-01');
INSERT INTO HospitalEnergySupplyContract VALUES (3, 'SolarWave Inc', '2025-03-15', '2030-03-14', 'Solar', 8.0, 20.00, 'Fixed rate', 100, '100% renewable', 'Early termination fee $10k', 'Automatic renewal', 'carol lee', '555-9012', 'Annually', 'Advance payment', 'No escalation', 'Future solar expansion planned', 'energyadmin', '2025-03-15');


-- Nutritional supplement formulation records
CREATE TABLE NutritionalSupplementFormulation
(
    FormulationID          INTEGER PRIMARY KEY,
    SupplementName         TEXT,
    BatchNumber            TEXT,
    ManufactureDate        DATE,
    ExpirationDate         DATE,
    Ingredient1            TEXT,
    Ingredient1AmountMg    INTEGER,
    Ingredient2            TEXT,
    Ingredient2AmountMg    INTEGER,
    Ingredient3            TEXT,
    Ingredient3AmountMg    INTEGER,
    Ingredient4            TEXT,
    Ingredient4AmountMg    INTEGER,
    Ingredient5            TEXT,
    Ingredient5AmountMg    INTEGER,
    TotalWeightMg          INTEGER,
    RecommendedDosageMg   INTEGER,
    UsageInstructions      TEXT,
    AllergensDeclared      TEXT,
    RegulatoryStatus       TEXT,
    Notes                  TEXT,
    RecordedBy             TEXT,
    RecordTimestamp        DATE
);

INSERT INTO NutritionalSupplementFormulation VALUES (1, 'OmegaPlus', 'BCH001', '2024-02-01', '2026-02-01', 'FishOil', 500, 'VitaminE', 50, 'VitaminD', 25, 'Omega3', 300, 'BetaCarotene', 10, 885, 1000, 'Take one capsule daily with food', 'None', 'FDA Approved', 'Batch passed QC', 'labtech1', '2024-02-01');
INSERT INTO NutritionalSupplementFormulation VALUES (2, 'CalciMax', 'BCH002', '2024-03-10', '2027-03-10', 'CalciumCarbonate', 600, 'VitaminD3', 200, 'MagnesiumOxide', 150, 'Zinc', 30, 'Copper', 5, 985, 1200, 'Two tablets after meals', 'Lactose', 'FDA Approved', 'Minor pigment variation noted', 'labtech2', '2024-03-10');
INSERT INTO NutritionalSupplementFormulation VALUES (3, 'ImmuneBoost', 'BCH003', '2024-01-20', '2025-01-20', 'Echinacea', 300, 'VitaminC', 1000, 'Zinc', 25, 'Elderberry', 200, 'Quercetin', 50, 1575, 1500, 'One tablet twice daily', 'None', 'Pending FDA Review', 'Stability testing in progress', 'labtech3', '2024-01-20');


-- Medical waste incineration record
CREATE TABLE MedicalWasteIncinerationRecord
(
    RecordID               INTEGER PRIMARY KEY,
    WasteBatchID           TEXT,
    IncinerationDate       DATE,
    StartTime              TEXT,
    EndTime                TEXT,
    FacilityName           TEXT,
    OperatorName           TEXT,
    WasteType              TEXT,
    TotalWeightKg          REAL,
    TemperaturePeakC       REAL,
    ResidenceTimeMinutes   INTEGER,
    EmissionControlUsed    TEXT,
    CO2EmissionKg         REAL,
    NOxEmissionKg         REAL,
    SO2EmissionKg         REAL,
    AshResidueWeightKg     REAL,
    ComplianceStatus       TEXT,
    InspectorName          TEXT,
    InspectionDate         DATE,
    Notes                  TEXT
);

INSERT INTO MedicalWasteIncinerationRecord VALUES (1, 'WB1001', '2024-01-05', '08:00', '10:30', 'CentralIncinerator', 'john doe', 'Pathological', 12.5, 850.0, 150, 'Scrubber', 1.2, 0.05, 0.02, 0.8, 'Compliant', 'alice smith', '2024-01-06', 'Normal operation');
INSERT INTO MedicalWasteIncinerationRecord VALUES (2, 'WB1002', '2024-02-12', '14:15', '16:45', 'CentralIncinerator', 'jane roe', 'Pharmaceutical', 8.3, 900.0, 140, 'CatalyticConverter', 0.9, 0.04, 0.015, 0.5, 'Compliant', 'bob johnson', '2024-02-13', 'Slight temperature variance');
INSERT INTO MedicalWasteIncinerationRecord VALUES (3, 'WB1003', '2024-03-20', '22:00', '00:30', 'EastSideIncinerator', 'mark lee', 'Sharps', 5.0, 800.0, 130, 'None', 0.6, 0.03, 0.01, 0.3, 'Non‑Compliant', 'carol king', '2024-03-21', 'Emissions exceed limits, corrective action required');


-- Clinical trial monitoring visit (extended) (different from earlier table)
CREATE TABLE ClinicalTrialMonitoringVisitExtended
(
    VisitID               INTEGER PRIMARY KEY,
    TrialID               INTEGER,
    SiteID                INTEGER,
    VisitNumber           INTEGER,
    VisitDate             DATE,
    MonitorID             INTEGER,
    VisitPurpose          TEXT,
    FindingsSummary       TEXT,
    ProtocolDeviations    TEXT,
    DataIntegrityIssues   TEXT,
    PatientSafetyFindings TEXT,
    ActionItems           TEXT,
    FollowUpRequiredDate  DATE,
    VisitStatus           TEXT,
    DurationHours         INTEGER,
    DocumentsReviewed     TEXT,
    Comments              TEXT,
    RecordedBy            TEXT,
    RecordTimestamp       DATE,
    RegulatoryContact     TEXT
);

INSERT INTO ClinicalTrialMonitoringVisitExtended VALUES (1, 401, 501, 1, '2024-01-15', 301, 'Site Initiation', 'Site ready, all documents in order', '', '', 'All safety measures verified', 'Provide additional training on eCRF', '2024-02-01', 'Completed', 5, 'ConsentForms,IRBApproval', 'Positive initial assessment', 'tmiller', '2024-01-15', 'mriverson');
INSERT INTO ClinicalTrialMonitoringVisitExtended VALUES (2, 401, 501, 2, '2024-03-20', 301, 'Routine Monitoring', 'Minor data entry lag observed', 'Late CRF submission', 'Missing lab values', 'No adverse events reported', 'Implement weekly data upload schedule', '2024-04-05', 'Completed', 4, 'CRFs, LabReports', 'Improvement seen compared to previous visit', 'tmiller', '2024-03-20', 'mriverson');
INSERT INTO ClinicalTrialMonitoringVisitExtended VALUES (3, 402, 502, 1, '2024-02-10', 302, 'Pre‑Study Visit', 'Site facilities satisfactory', '', '', 'Safety equipment functional', 'Schedule start-up training', '2024-02-25', 'Completed', 6, 'SiteSurvey,EquipmentList', 'Site qualifies for study start', 'jchen', '2024-02-10', 'lsanders');


-- Hospital construction project budget (additional details)
CREATE TABLE HospitalConstructionProjectBudgetDetail
(
    DetailID               INTEGER PRIMARY KEY,
    BudgetID               INTEGER,
    CostCategory           TEXT,
    Subcategory            TEXT,
    AmountPlanned          REAL,
    AmountActual           REAL,
    Variance               REAL,
    ApprovalDate           DATE,
    ApprovedBy             TEXT,
    Notes                  TEXT,
    LastUpdatedBy          TEXT,
    LastUpdateTimestamp    DATE,
    FiscalYear             INTEGER,
    Currency               TEXT,
    FundingSource          TEXT,
    ProjectPhase           TEXT,
    ResponsibilityCenter   TEXT,
    RiskLevel              TEXT,
    ContingencyApplied     TEXT,
    DocumentationLink      TEXT
);

INSERT INTO HospitalConstructionProjectBudgetDetail VALUES (1, 1, 'Construction', 'Foundation', 800000.00, 795000.00, -5000.00, '2023-12-15', 'jdoe', 'Slight cost saving on concrete', 'asmith', '2024-01-20', 2024, 'USD', 'StateGrant', 'Planning', 'Facilities', 'Medium', 'No', 'DOCFND001');
INSERT INTO HospitalConstructionProjectBudgetDetail VALUES (2, 1, 'Construction', 'Electrical', 400000.00, 410000.00, 10000.00, '2023-12-20', 'jdoe', 'Additional outlets added per code update', 'asmith', '2024-01-22', 2024, 'USD', 'StateGrant', 'Construction', 'Facilities', 'Low', 'Yes', 'DOCELE001');
INSERT INTO HospitalConstructionProjectBudgetDetail VALUES (3, 2, 'Equipment', 'Imaging', 600000.00, 605000.00, 5000.00, '2024-06-10', 'bwhite', 'Price increase from vendor', 'bwhite', '2024-06-12', 2025, 'USD', 'PrivateDonor', 'Construction', 'Radiology', 'High', 'No', 'DOCIMG001');