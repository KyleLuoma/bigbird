-- Health insurance providers and their contracts
CREATE TABLE HealthInsuranceProvider
(
    ProviderID          INTEGER PRIMARY KEY,
    ProviderName        TEXT,
    ContactNumber       TEXT,
    Address             TEXT,
    City                TEXT,
    State               TEXT,
    ZIPCode             TEXT,
    Country             TEXT,
    NetworkLevel        TEXT,
    EstablishedDate     DATE,
    CEO                 TEXT,
    PhoneSupportHours   TEXT,
    Email               TEXT,
    TaxID               TEXT,
    ContractStartDate   DATE,
    ContractEndDate     DATE,
    CoverageTypes       TEXT,
    NetworkSize         INTEGER,
    Rating              REAL,
    Website             TEXT,
    AdditionalNotes     TEXT
);

INSERT INTO HealthInsuranceProvider VALUES (1, 'Acme Health', '5551234567', '123 Main St', 'Metropolis', 'NY', '10001', 'USA', 'Gold', '1995-04-10', 'John Doe', '9am-5pm', 'contact@acmehealth.com', '12-3456789', '2022-01-01', '2025-12-31', 'Medical,Dental,Vision', 2500, 4.5, 'http://www.acmehealth.com', 'Preferred regional provider');
INSERT INTO HealthInsuranceProvider VALUES (2, 'Blue Shield Co', '5559876543', '456 Oak Ave', 'Gotham', 'IL', '60605', 'USA', 'Platinum', '2000-09-15', 'Jane Smith', '8am-6pm', 'info@blueshield.com', '98-7654321', '2021-06-15', '2024-06-14', 'Medical,Pharmacy', 1800, 4.2, 'http://www.blueshield.com', '');
INSERT INTO HealthInsuranceProvider VALUES (3, 'HealthPlus', '5555551212', '789 Pine Rd', 'Star City', 'CA', '90002', 'USA', 'Silver', '2010-01-20', 'Alan Brown', '24/7', 'support@healthplus.org', '34-5678901', '2023-03-01', '2026-02-28', 'Medical', 950, 3.9, 'http://www.healthplus.org', 'Newly added provider');

-- References to clinical guidelines
CREATE TABLE ClinicalGuidelineReference
(
    GuidelineID          INTEGER PRIMARY KEY,
    Title                TEXT,
    Version              TEXT,
    PublishDate          DATE,
    Specialty            TEXT,
    AuthorOrganization   TEXT,
    Summary              TEXT,
    URL                  TEXT,
    DOI                  TEXT,
    Status               TEXT,
    EffectiveDate        DATE,
    ReviewDate           DATE,
    Category             TEXT,
    LevelOfEvidence      TEXT,
    TargetPopulation     TEXT,
    ImplementationScore  INTEGER,
    LastUpdated          DATE,
    RelatedGuidelineID   INTEGER,
    Keywords             TEXT,
    Abstract             TEXT,
    DocumentType         TEXT
);

INSERT INTO ClinicalGuidelineReference VALUES (101, 'Management of Hypertension', '1.2', '2020-05-10', 'Cardiology', 'American Heart Association', 'Guideline for treating adult hypertension', 'http://aha.org/hypertension', '10.1000/xyz123', 'Active', '2020-06-01', '2022-06-01', 'Therapeutics', 'A', 'Adults', 85, '2023-01-15', NULL, 'hypertension, blood pressure, cardiology', 'Comprehensive review of pharmacologic and lifestyle interventions.', 'PDF');
INSERT INTO ClinicalGuidelineReference VALUES (102, 'Pediatric Asthma Care', '3.0', '2019-11-20', 'Pulmonology', 'National Asthma Council', 'Recommendations for diagnosis and management of asthma in children', 'http://nas.org/paediatric-asthma', '10.2000/abc456', 'Active', '2020-01-01', '2021-12-31', 'Prevention', 'B', 'Children', 78, '2022-08-05', 101, 'asthma, pediatrics, inhalers', 'Focuses on stepwise therapy and patient education.', 'HTML');
INSERT INTO ClinicalGuidelineReference VALUES (103, 'Diabetes Nutrition Guidelines', '2.1', '2021-02-14', 'Endocrinology', 'International Diabetes Federation', 'Nutrition recommendations for type 2 diabetes management', 'http://idf.org/diabetes-nutrition', '10.3000/def789', 'Draft', '2021-03-01', '2023-03-01', 'Nutrition', 'C', 'Adults with type 2 diabetes', 65, '2023-04-01', NULL, 'diabetes, nutrition, diet', 'Emphasizes low glycemic index foods and portion control.', 'Word');

-- Service records for medical devices
CREATE TABLE MedicalDeviceServiceRecord
(
    ServiceID            INTEGER PRIMARY KEY,
    DeviceSerialNumber   TEXT,
    DeviceModel          TEXT,
    ServiceDate          DATE,
    TechnicianID         INTEGER,
    ServiceType          TEXT,
    Findings             TEXT,
    PartsReplaced        TEXT,
    Cost                 REAL,
    NextServiceDue       DATE,
    ServiceLocation      TEXT,
    WarrantyStatus       TEXT,
    CalibrationPerformed INTEGER,
    SoftwareVersion      TEXT,
    DowntimeHours        REAL,
    ServiceReportURL     TEXT,
    Manufacturer         TEXT,
    ContactNumber        TEXT,
    ServiceNotes         TEXT,
    ServiceStatus        TEXT
);

INSERT INTO MedicalDeviceServiceRecord VALUES (5001, 'SN12345', 'XRayModelA', '2023-07-15', 12, 'Preventive', 'All functions normal', 'None', 250.00, '2024-07-15', 'Radiology Dept', 'Valid', 1, 'v3.4.2', 2.5, 'http://hospital.org/reports/5001.pdf', 'MediTech', '5551112222', 'No issues', 'Completed');
INSERT INTO MedicalDeviceServiceRecord VALUES (5002, 'SN67890', 'MRIPro2000', '2023-08-02', 15, 'Repair', 'Cooling fan malfunction', 'Fan Assembly', 1200.00, '2024-08-02', 'Imaging Center', 'Expired', 0, 'v5.1.0', 5.0, 'http://hospital.org/reports/5002.pdf', 'HealthEquip', '5553334444', 'Replaced fan, tested functionality', 'Completed');
INSERT INTO MedicalDeviceServiceRecord VALUES (5003, 'SN54321', 'VentilatorX', '2023-09-10', 8, 'Calibration', 'Calibration within acceptable range', 'Sensor Kit', 300.00, '2024-09-10', 'ICU', 'Valid', 1, 'v2.0.1', 1.0, 'http://hospital.org/reports/5003.pdf', 'LifeSupport Inc', '5557778888', 'Performed routine calibration', 'Scheduled');

-- Environmental impact assessments for facilities
CREATE TABLE EnvironmentalImpactAssessment
(
    AssessmentID         INTEGER PRIMARY KEY,
    FacilityID           INTEGER,
    AssessmentDate       DATE,
    AssessorName         TEXT,
    AirQualityIndex      INTEGER,
    WaterQualityIndex    INTEGER,
    NoiseLevelDB         INTEGER,
    WasteGeneratedKg     REAL,
    RenewableEnergyPct   REAL,
    CarbonFootprintTon   REAL,
    ComplianceStatus     TEXT,
    Recommendations      TEXT,
    FollowUpDate         DATE,
    DocumentLink         TEXT,
    RiskLevel            TEXT,
    EnergyConsumptionMWh REAL,
    EmissionSources      TEXT,
    MitigationMeasures   TEXT,
    AssessmentScore      INTEGER,
    Comments             TEXT
);

INSERT INTO EnvironmentalImpactAssessment VALUES (9001, 10, '2023-04-20', 'Emily Green', 42, 78, 65, 1200.5, 25.0, 3.4, 'Compliant', 'Increase solar panels', '2023-10-20', 'http://envreports.org/9001.pdf', 'Medium', 4500.0, 'HVAC, Generators', 'Install energy‑efficient lighting', 78, '');
INSERT INTO EnvironmentalImpactAssessment VALUES (9002, 12, '2023-05-15', 'Robert White', 55, 80, 70, 1500.0, 15.0, 5.2, 'Non‑Compliant', 'Upgrade waste water treatment', '2024-01-15', 'http://envreports.org/9002.pdf', 'High', 5200.0, 'Boilers, Trucks', 'Add water recycling system', 62, 'Urgent actions needed');
INSERT INTO EnvironmentalImpactAssessment VALUES (9003, 14, '2023-06-01', 'Laura Black', 38, 90, 58, 900.3, 30.0, 2.8, 'Compliant', 'Maintain current practices', '2024-06-01', 'http://envreports.org/9003.pdf', 'Low', 3800.0, 'Solar panels, Insulation', 'Continue monitoring', 85, '');

-- Logs of facility renovation projects
CREATE TABLE FacilityRenovationLog
(
    RenovationID         INTEGER PRIMARY KEY,
    FacilityID           INTEGER,
    StartDate            DATE,
    EndDate              DATE,
    ProjectManager       TEXT,
    ContractorName       TEXT,
    Budget               REAL,
    ActualCost           REAL,
    ScopeDescription     TEXT,
    FloorsRenovated      INTEGER,
    AreaSqM              REAL,
    PermitNumber         TEXT,
    SafetyInspectionDate DATE,
    InspectionResult     TEXT,
    MaterialsUsed        TEXT,
    SustainabilityRating TEXT,
    Comments             TEXT,
    Status               TEXT,
    FundingSource        TEXT,
    UpdatedOn            DATE
);

INSERT INTO FacilityRenovationLog VALUES (3001, 10, '2022-01-10', '2022-06-30', 'Mark Daniels', 'BuildIt LLC', 500000.00, 475000.00, 'East wing patient rooms upgrade', 3, 2500.0, 'PERM-2021-078', '2022-01-05', 'Pass', 'Low‑VOC paint, LED lighting', 'Gold', 'Completed ahead of schedule', 'Completed', 'Hospital Capital Fund', '2022-07-01');
INSERT INTO FacilityRenovationLog VALUES (3002, 12, '2023-03-01', NULL, 'Sofia Patel', 'RenovateCo', 750000.00, NULL, 'Main lobby expansion', 1, 1800.0, 'PERM-2022-101', NULL, NULL, 'Marble, Granite', 'Silver', 'Phase 1 underway', 'In Progress', 'Donor Grant', '2023-08-15');
INSERT INTO FacilityRenovationLog VALUES (3003, 14, '2021-09-15', '2022-02-28', 'Luis Garcia', 'EcoBuilders', 300000.00, 310000.00, 'Installation of green roofs', 0, 0.0, 'PERM-2021-045', '2022-01-20', 'Pass', 'Sedum, Solar tiles', 'Platinum', 'Exceeded sustainability goals', 'Completed', 'Environmental Initiative', '2022-03-01');

-- Metrics for community health programs
CREATE TABLE CommunityHealthProgramMetrics
(
    ProgramID            INTEGER PRIMARY KEY,
    ProgramName          TEXT,
    StartDate            DATE,
    EndDate              DATE,
    TargetPopulation     INTEGER,
    ParticipantsEnrolled INTEGER,
    SessionsConducted    INTEGER,
    AverageAttendance    REAL,
    HealthImprovementScore INTEGER,
    FundingAmount        REAL,
    PartnerOrganizations TEXT,
    Region               TEXT,
    OutcomeSummary       TEXT,
    EvaluationDate       DATE,
    SurveyResponseRate   REAL,
    DataSource           TEXT,
    ContactPerson        TEXT,
    ContactEmail         TEXT,
    Status               TEXT,
    LastModified         DATE
);

INSERT INTO CommunityHealthProgramMetrics VALUES (4001, 'Heart Health Outreach', '2022-02-01', '2022-12-31', 5000, 3500, 24, 85.5, 78, 120000.00, 'Local Clinics; Red Cross', 'North District', 'Reduced average blood pressure by 5 mmHg', '2023-01-15', 68.0, 'Survey', 'Anna Lee', 'anna.lee@hospital.org', 'Completed', '2023-01-20');
INSERT INTO CommunityHealthProgramMetrics VALUES (4002, 'Youth Diabetes Prevention', '2023-01-15', NULL, 3000, 1800, 12, 92.0, 82, 90000.00, 'School Boards; YMCA', 'South Region', 'Improved HbA1c levels in participants', '2023-09-01', 75.0, 'Electronic Health Records', 'Carlos Mendes', 'carlos.mendes@hospital.org', 'Ongoing', '2023-09-05');
INSERT INTO CommunityHealthProgramMetrics VALUES (4003, 'Senior Fall Prevention', '2021-05-01', '2022-04-30', 2000, 1500, 20, 88.0, 70, 60000.00, 'Senior Centers; PT Dept', 'East Zone', 'Decrease in fall incidents by 15%', '2022-05-15', 80.0, 'Incident Reports', 'Emily Clarke', 'emily.clarke@hospital.org', 'Completed', '2022-05-20');

-- Orders of medical supplies
CREATE TABLE MedicalSupplyOrder
(
    OrderID              INTEGER PRIMARY KEY,
    SupplierID           INTEGER,
    OrderDate            DATE,
    ExpectedDelivery     DATE,
    ReceivedDate         DATE,
    TotalItems           INTEGER,
    TotalCost            REAL,
    OrderStatus          TEXT,
    PurchasingAgent      TEXT,
    ShippingMethod       TEXT,
    TrackingNumber       TEXT,
    Currency             TEXT,
    ExchangeRate         REAL,
    PaymentTerms         TEXT,
    Comments             TEXT,
    PriorityLevel        TEXT,
    Department           TEXT,
    ApprovalDate         DATE,
    ApprovedBy           TEXT,
    DeliveryAddress      TEXT
);

INSERT INTO MedicalSupplyOrder VALUES (7001, 21, '2023-07-01', '2023-07-10', '2023-07-09', 150, 32500.00, 'Received', 'Laura Kim', 'Air Freight', 'TRK123456', 'USD', 1.0, 'Net30', 'Urgent restock of gloves', 'High', 'Surgery', '2023-06-25', 'Michael Ross', '123 Hospital Rd, Metropolis');
INSERT INTO MedicalSupplyOrder VALUES (7002, 23, '2023-08-15', '2023-08-22', NULL, 80, 12000.00, 'Pending', 'David Lee', 'Ground', 'TRK789012', 'USD', 1.0, 'Net45', 'Routine order of syringes', 'Medium', 'Outpatient', '2023-08-10', 'Susan Patel', '456 Clinic Ave, Gotham');
INSERT INTO MedicalSupplyOrder VALUES (7003, 25, '2023-09-05', '2023-09-12', NULL, 200, 48000.00, 'Shipped', 'Anna Wu', 'Sea Freight', 'TRK345678', 'USD', 1.0, 'Net60', 'Bulk purchase of IV sets', 'Low', 'ICU', '2023-08-30', 'Robert Chen', '789 Care St, Star City');

-- Detailed log of radiology procedures
CREATE TABLE RadiologyProcedureLog
(
    ProcedureLogID       INTEGER PRIMARY KEY,
    PatientID            INTEGER,
    StudyID              INTEGER,
    Modality             TEXT,
    ProcedureDate        DATE,
    RadiologistID        INTEGER,
    Findings             TEXT,
    Impression           TEXT,
    DoseMgy              REAL,
    ContrastUsed         TEXT,
    ProcedureDurationMin INTEGER,
    ReportGeneratedDate  DATE,
    ReportURL            TEXT,
    BillingCode          TEXT,
    CPTCode              TEXT,
    Notes                TEXT,
    FollowUpRecommended  INTEGER,
    FollowUpDate         DATE,
    ImageArchiveLocation TEXT,
    Status               TEXT
);

INSERT INTO RadiologyProcedureLog VALUES (90001, 101, 50001, 'CT', '2023-06-12', 12, 'No acute intracranial hemorrhage', 'Normal study', 5.2, 'Iodine', 15, '2023-06-13', 'http://radiology.org/reports/90001.pdf', 'RC101', '70450', 'Good image quality', 0, NULL, '/archive/ct/2023/06/12/50001.dcm', 'Completed');
INSERT INTO RadiologyProcedureLog VALUES (90002, 102, 50002, 'MRI', '2023-07-20', 15, 'Small left temporal lesion', 'Suggestive of demyelination', 3.8, 'Gadolinium', 30, '2023-07-21', 'http://radiology.org/reports/90002.pdf', 'RC102', '70553', 'Patient moved slightly', 1, '2023-09-01', '/archive/mri/2023/07/20/50002.dcm', 'Completed');
INSERT INTO RadiologyProcedureLog VALUES (90003, 103, 50003, 'XRay', '2023-08-05', 9, 'Fracture of distal radius', 'Displaced fracture', 0.2, 'None', 5, '2023-08-06', 'http://radiology.org/reports/90003.pdf', 'RC103', '73090', 'Cast applied later', 1, '2023-08-15', '/archive/xray/2023/08/05/50003.dcm', 'Completed');

-- Audit trail for pharmacy transactions
CREATE TABLE PharmacyAuditTrail
(
    AuditID              INTEGER PRIMARY KEY,
    TransactionID        INTEGER,
    UserID               INTEGER,
    ActionType           TEXT,
    ActionTimestamp      DATE,
    MedicationID         INTEGER,
    Quantity             INTEGER,
    BatchNumber          TEXT,
    ExpirationDate       DATE,
    SourceLocation       TEXT,
    DestinationLocation  TEXT,
    Reason               TEXT,
    ApprovalStatus       TEXT,
    ApprovedBy           INTEGER,
    Comments             TEXT,
    DeviceUsed           TEXT,
    IPAddress            TEXT,
    SessionID            TEXT,
    AuditResult          TEXT,
    RecordedBy           TEXT
);

INSERT INTO PharmacyAuditTrail VALUES (11001, 3001, 45, 'Dispense', '2023-06-01', 501, 30, 'BATCHA1', '2025-12-31', 'Main Pharmacy', 'Ward 3A', 'Routine administration', 'Approved', 12, 'No issues', 'BarcodeScanner', '192.168.1.10', 'SID12345', 'Success', 'System');
INSERT INTO PharmacyAuditTrail VALUES (11002, 3002, 46, 'Return', '2023-06-15', 502, 15, 'BATCHB2', '2024-08-15', 'Ward 5B', 'Main Pharmacy', 'Medication not needed', 'Pending', NULL, 'Awaiting manager approval', 'WebPortal', '192.168.1.11', 'SID12346', 'Pending', 'NurseA');
INSERT INTO PharmacyAuditTrail VALUES (11003, 3003, 47, 'AdjustInventory', '2023-07-10', 503, -5, 'BATCHC3', '2023-11-30', 'Main Pharmacy', 'Main Pharmacy', 'Loss due to breakage', 'Approved', 14, 'Recorded loss', 'MobileApp', '192.168.1.12', 'SID12347', 'Success', 'System');

-- Clinical outcome prediction models metadata
CREATE TABLE ClinicalOutcomePredictionModel
(
    ModelID               INTEGER PRIMARY KEY,
    ModelName             TEXT,
    Version               TEXT,
    DevelopedBy           TEXT,
    DevelopmentDate       DATE,
    AlgorithmType         TEXT,
    InputFeatures         TEXT,
    TargetOutcome         TEXT,
    Accuracy              REAL,
    AUROC                 REAL,
    ValidationDataset     TEXT,
    ExternalValidation    INTEGER,
    DeploymentStatus      TEXT,
    LastTrained           DATE,
    RetrainingFrequency   TEXT,
    PerformanceNotes      TEXT,
    RegulatoryApproval    TEXT,
    ClinicalTrialID       INTEGER,
    UsageGuidelines       TEXT,
    DocumentationURL      TEXT
);

INSERT INTO ClinicalOutcomePredictionModel VALUES (2101, 'SepsisRiskScore', '1.0', 'DataScienceTeam', '2022-09-01', 'GradientBoosting', 'VitalSigns,LabResults,Comorbidities', 'SepsisWithin48h', 0.89, 0.92, 'HospitalDataset2021', 1, 'Deployed', '2023-03-01', 'Quarterly', 'Stable performance across units', 'FDA 510(k)', 301, 'Use for adult in‑patient population', 'http://models.hospital.org/sepsis_v1.pdf');
INSERT INTO ClinicalOutcomePredictionModel VALUES (2102, 'ReadmissionPredictor', '2.1', 'AIGroup', '2021-05-15', 'NeuralNetwork', 'Age,DischargeDiagnosis,LengthOfStay', '30DayReadmission', 0.81, 0.85, 'MultiHospitalData2020', 0, 'Testing', '2022-11-20', 'Annually', 'Needs external validation', 'Pending', NULL, 'Research use only', 'http://models.hospital.org/readmission_v2.pdf');
INSERT INTO ClinicalOutcomePredictionModel VALUES (2103, 'MortalityRiskModel', '3.0', 'ClinicalAnalytics', '2023-01-10', 'LogisticRegression', 'Age,ICUStay,VentilatorDays,LabScores', 'InHospitalMortality', 0.94, 0.96, 'ICURegistry2022', 1, 'Deployed', '2023-06-15', 'Monthly', 'High accuracy, low bias', 'FDA Breakthrough', 402, 'Apply to ICU patients only', 'http://models.hospital.org/mortality_v3.pdf');