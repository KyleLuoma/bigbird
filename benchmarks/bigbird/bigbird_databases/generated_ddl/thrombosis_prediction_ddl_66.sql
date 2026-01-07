-- FacilityEnergySourceDetail: detailed info about energy sources used by facilities
CREATE TABLE FacilityEnergySourceDetail
(
    SourceID               INTEGER PRIMARY KEY,
    FacilityID             INTEGER,
    SourceType             TEXT,
    CapacityMW             REAL,
    CurrentOutputMW        REAL,
    InstallationDate       DATE,
    Vendor                 TEXT,
    ContractStart          DATE,
    ContractEnd            DATE,
    Status                 TEXT,
    EmissionFactor         REAL,
    Renewable              INTEGER,
    MaintenanceCycleDays   INTEGER,
    LastInspectionDate     DATE,
    NextInspectionDate     DATE,
    CostPerMWh             REAL,
    AvgEfficiency          REAL,
    Region                 TEXT,
    GridConnectionID       INTEGER,
    PowerFactor            REAL,
    Notes                  TEXT
);

INSERT INTO FacilityEnergySourceDetail VALUES (1, 101, 'Solar', 5.0, 4.2, '2020-03-15', 'SunPower', '2020-04-01', '2030-04-01', 'Active', 0.0, 1, 365, '2022-12-01', '2023-12-01', 0.08, 0.22, 'North', 5001, 0.95, 'Main rooftop array');
INSERT INTO FacilityEnergySourceDetail VALUES (2, 102, 'NaturalGas', 12.0, 10.5, '2018-07-20', 'GasCo', '2018-08-01', '2028-08-01', 'Active', 0.45, 0, 180, '2023-01-15', '2024-01-15', 0.12, 0.38, 'South', 5002, 0.97, 'Backup generator');
INSERT INTO FacilityEnergySourceDetail VALUES (3, 103, 'Wind', 8.5, 7.0, '2019-11-05', 'WindWorks', '2019-12-01', '2029-12-01', 'Planned', 0.0, 1, 730, '2023-06-10', '2025-06-10', 0.10, 0.30, 'East', 5003, 0.94, 'Turbine field phase 1');

-- HospitalConstructionPermit: permits for construction projects within hospitals
CREATE TABLE HospitalConstructionPermit
(
    PermitID               INTEGER PRIMARY KEY,
    HospitalID             INTEGER,
    PermitNumber           TEXT,
    IssueDate              DATE,
    ExpirationDate         DATE,
    Contractor             TEXT,
    ProjectName            TEXT,
    EstimatedCost          REAL,
    ApprovedBudget         REAL,
    ScopeDescription       TEXT,
    ZoningCompliance       INTEGER,
    SafetyPlanSubmitted    INTEGER,
    EnvironmentalReviewDate DATE,
    FireSafetyReviewDate   DATE,
    ArchitectFirm          TEXT,
    EngineerFirm           TEXT,
    PermitType             TEXT,
    InspectionCount        INTEGER,
    LastInspectionDate     DATE,
    PermitStatus           TEXT,
    Remarks                TEXT
);

INSERT INTO HospitalConstructionPermit VALUES (1001, 101, 'HC-2023-001', '2023-02-10', '2025-02-10', 'BuildIt', 'East Wing Expansion', 25000000, 24000000, 'Add 3 floors with new ICU', 1, 1, '2023-02-15', '2023-02-20', 'ArchDesignCo', 'EngrPlus', 'Structural', 2, '2023-08-01', 'Approved', 'On schedule');
INSERT INTO HospitalConstructionPermit VALUES (1002, 102, 'HC-2023-002', '2023-03-05', '2026-03-05', 'ConstructPro', 'New Parking Garage', 12000000, 11500000, 'Multi-level underground garage', 1, 1, '2023-03-10', '2023-03-12', 'DesignStudio', 'CivilExperts', 'Civil', 1, '2023-09-15', 'Pending', 'Awaiting final inspection');
INSERT INTO HospitalConstructionPermit VALUES (1003, 103, 'HC-2023-003', '2023-04-01', '2024-10-01', 'RenovateNow', 'Lobby Modernization', 3500000, 3400000, 'Redesign lobby with digital signage', 1, 0, '2023-04-05', '2023-04-07', 'CreativeSpace', 'StructTech', 'Interior', 0, NULL, 'Submitted', 'Safety plan pending');

-- AmbulanceCrewRoster: scheduling of ambulance crew members
CREATE TABLE AmbulanceCrewRoster
(
    RosterID               INTEGER PRIMARY KEY,
    AmbulanceID            INTEGER,
    CrewMemberID           INTEGER,
    Role                   TEXT,
    ShiftDate              DATE,
    ShiftStart             TEXT,
    ShiftEnd               TEXT,
    Certification          TEXT,
    YearsExperience        INTEGER,
    AvailabilityStatus     TEXT,
    ContactNumber          TEXT,
    AssignedHospitalID     INTEGER,
    VehicleBadgeNumber     TEXT,
    TrainingLevel          TEXT,
    LicenseNumber          TEXT,
    LanguageSpoken         TEXT,
    SalaryBand             TEXT,
    OvertimeHours          REAL,
    ShiftDuration          REAL,
    Notes                  TEXT
);

INSERT INTO AmbulanceCrewRoster VALUES (2001, 301, 5001, 'Paramedic', '2023-09-01', '07:00', '19:00', 'EMT-B', 5, 'Available', '5551234001', 101, 'AB-001', 'Advanced', 'LIC12345', 'English', 'BandB', 2.5, 12.0, '');
INSERT INTO AmbulanceCrewRoster VALUES (2002, 302, 5002, 'Driver', '2023-09-01', '07:00', '19:00', ' CDL', 8, 'Available', '5551234002', 102, 'AB-002', 'Basic', 'LIC67890', 'Spanish', 'BandA', 0.0, 12.0, '');
INSERT INTO AmbulanceCrewRoster VALUES (2003, 301, 5003, 'Paramedic', '2023-09-02', '19:00', '07:00', 'EMT-P', 3, 'OnCall', '5551234003', 101, 'AB-001', 'Intermediate', 'LIC54321', 'French', 'BandC', 4.0, 12.0, 'Night shift');

-- ClinicalDecisionSupportMetric: metrics for evaluating CDS rules
CREATE TABLE ClinicalDecisionSupportMetric
(
    MetricID               INTEGER PRIMARY KEY,
    RuleID                 INTEGER,
    MetricName             TEXT,
    Description            TEXT,
    ThresholdValue         REAL,
    CurrentValue           REAL,
    EvaluationDate         DATE,
    Status                 TEXT,
    Severity               INTEGER,
    ActionRequired         TEXT,
    ResponsibleDept        TEXT,
    ReviewCycleDays        INTEGER,
    LastReviewedDate       DATE,
    NextReviewDate         DATE,
    DataSource             TEXT,
    ConfidenceScore        REAL,
    AlertCount             INTEGER,
    IsActive               INTEGER,
    CreatedBy              TEXT,
    CreatedAt              DATE,
    Remarks                TEXT
);

INSERT INTO ClinicalDecisionSupportMetric VALUES (3001, 401, 'AnticoagulationDoseCheck', 'Ensures dose within safe range', 5.0, 4.8, '2023-08-31', 'Pass', 1, 'None', 'Pharmacy', 30, '2023-08-01', '2023-09-01', 'EHR', 0.92, 0, 1, 'DrSmith', '2023-01-15', '');
INSERT INTO ClinicalDecisionSupportMetric VALUES (3002, 402, 'LabResultTurnaround', 'Average lab result turnaround time (hours)', 24.0, 28.5, '2023-08-31', 'Fail', 3, 'Escalate to Lab Manager', 'Laboratory', 30, '2023-08-01', '2023-09-01', 'LabSystem', 0.78, 5, 1, 'LabAdmin', '2023-02-20', 'Above threshold');
INSERT INTO ClinicalDecisionSupportMetric VALUES (3003, 403, 'SepsisAlertSensitivity', 'Sensitivity of sepsis alert algorithm', 0.90, 0.85, '2023-08-31', 'Warning', 2, 'Review algorithm parameters', 'InfectionControl', 30, '2023-08-01', '2023-09-01', 'AnalyticsEngine', 0.81, 2, 1, 'DataScienceLead', '2023-03-10', '');

-- NutrientComposition: nutritional data for food items
CREATE TABLE NutrientComposition
(
    FoodItemID             INTEGER PRIMARY KEY,
    FoodName               TEXT,
    ServingSizeGrams       REAL,
    Calories               REAL,
    ProteinGrams           REAL,
    FatGrams               REAL,
    CarbsGrams             REAL,
    FiberGrams             REAL,
    SugarGrams             REAL,
    SodiumMg               REAL,
    CholesterolMg          REAL,
    VitaminA_IU            REAL,
    VitaminC_Mg            REAL,
    CalciumMg              REAL,
    IronMg                 REAL,
    VitaminD_mcug          REAL,
    PotassiumMg            REAL,
    VitaminB12_mcug        REAL,
    Omega3_Mg              REAL,
    Omega6_Mg              REAL,
    ContainsAllergen       TEXT,
    Category               TEXT,
    Notes                  TEXT
);

INSERT INTO NutrientComposition VALUES (4001, 'GrilledChickenBreast', 100, 165, 31, 3.6, 0, 0, 0, 74, 85, 150, 0, 15, 1, 0, 256, 0.3, 0, 0, 'None', 'Protein', '');
INSERT INTO NutrientComposition VALUES (4002, 'SteamedBroccoli', 100, 35, 2.8, 0.4, 7, 3.3, 1.7, 33, 0, 1200, 89.2, 47, 0.7, 0, 316, 0.5, 30, 50, 'None', 'Vegetable', '');
INSERT INTO NutrientComposition VALUES (4003, 'WholeWheatBread', 50, 130, 5, 1.5, 22, 2.5, 3, 200, 0, 0, 0, 80, 1.2, 0, 0, 0, 0.1, 0.9, 'Gluten', 'Grain', '');

-- PatientContactPreference: patient's preferred ways to be contacted
CREATE TABLE PatientContactPreference
(
    PreferenceID               INTEGER PRIMARY KEY,
    PatientID                 INTEGER,
    PreferredPhone            TEXT,
    PreferredEmail            TEXT,
    PreferredContactMethod    TEXT,
    LanguagePreference        TEXT,
    TimeOfDayPreference       TEXT,
    EmergencyContactName      TEXT,
    EmergencyContactRelation  TEXT,
    EmergencyContactPhone     TEXT,
    ConsentToContact          INTEGER,
    PreferredMailingAddress   TEXT,
    SecondaryPhone            TEXT,
    SecondaryEmail            TEXT,
    CommunicationOptIn        INTEGER,
    DoNotDisturb              INTEGER,
    LastUpdated               DATE,
    UpdatedBy                 TEXT,
    Notes                     TEXT,
    PreferenceScore           REAL
);

INSERT INTO PatientContactPreference VALUES (5001, 1001, '5551112222', 'patient1@example.com', 'Email', 'English', 'Morning', 'John Doe', 'Spouse', '5553334444', 1, '123 Main St', '5552223333', 'alt1@example.com', 1, 0, '2023-08-15', 'NurseA', '', 0.95);
INSERT INTO PatientContactPreference VALUES (5002, 1002, '5552223333', 'patient2@example.com', 'Phone', 'Spanish', 'Evening', 'Maria Lopez', 'Daughter', '5554445555', 1, '456 Oak Ave', '5553334444', 'alt2@example.com', 1, 0, '2023-08-16', 'NurseB', '', 0.88);
INSERT INTO PatientContactPreference VALUES (5003, 1003, '5553334444', 'patient3@example.com', 'SMS', 'French', 'Afternoon', 'Pierre Martin', 'Brother', '5555556666', 0, '789 Pine Rd', '5554445555', 'alt3@example.com', 0, 1, '2023-08-17', 'NurseC', 'No consent for marketing', 0.40);

-- MedicalDeviceSoftwarePatch: patches applied to medical device software
CREATE TABLE MedicalDeviceSoftwarePatch
(
    PatchID                INTEGER PRIMARY KEY,
    DeviceID               INTEGER,
    DeviceModel            TEXT,
    SoftwareVersion        TEXT,
    PatchVersion           TEXT,
    ReleaseDate            DATE,
    AppliedDate            DATE,
    AppliedBy              TEXT,
    PatchType              TEXT,
    Description            TEXT,
    ImpactLevel            INTEGER,
    DowntimeMinutes        INTEGER,
    RollbackAvailable      INTEGER,
    PatchFileHash          TEXT,
    ComplianceStatus       TEXT,
    Verified               INTEGER,
    VerificationDate       DATE,
    Notes                  TEXT,
    PatchSource            TEXT,
    Criticality            INTEGER
);

INSERT INTO MedicalDeviceSoftwarePatch VALUES (6001, 701, 'HeartMonitorX', 'v2.3.1', 'p1.0', '2023-06-01', '2023-06-05', 'TechJohn', 'Security', 'Fixes vulnerability CVE-2023-001', 2, 15, 1, 'ABCD1234EFGH5678', 'Compliant', 1, '2023-06-06', '', 'Vendor', 5);
INSERT INTO MedicalDeviceSoftwarePatch VALUES (6002, 702, 'InfusionPumpA', 'v4.0.0', 'p2.1', '2023-07-10', '2023-07-12', 'TechAmy', 'Feature', 'Adds dosage logging', 1, 5, 0, 'IJKL9012MNOP3456', 'Compliant', 1, '2023-07-13', '', 'InHouse', 3);
INSERT INTO MedicalDeviceSoftwarePatch VALUES (6003, 703, 'VentilatorZ', 'v1.9.5', 'p3.3', '2023-05-20', '2023-05-22', 'TechSam', 'Bugfix', 'Corrects alarm threshold calculation', 1, 10, 1, 'QRST7890UVWX1234', 'Compliant', 1, '2023-05-23', 'Performed during scheduled maintenance', 'Vendor', 4);

-- LabInstrumentCalibrationRecord: calibration records for lab instruments
CREATE TABLE LabInstrumentCalibrationRecord
(
    CalibrationID          INTEGER PRIMARY KEY,
    InstrumentID           INTEGER,
    InstrumentType         TEXT,
    SerialNumber           TEXT,
    CalibrationDate        DATE,
    ExpirationDate         DATE,
    PerformedBy            TEXT,
    CalibrationMethod      TEXT,
    StandardUsed           TEXT,
    Tolerance              REAL,
    Result                 TEXT,
    Deviation              REAL,
    CorrectiveAction       TEXT,
    NextDueDate            DATE,
    CalibrationLab         TEXT,
    LabLocation            TEXT,
    CalibrationCost        REAL,
    CertificationNumber    TEXT,
    Remarks                TEXT,
    IsPass                 INTEGER
);

INSERT INTO LabInstrumentCalibrationRecord VALUES (7001, 801, 'Spectrophotometer', 'SP-1001', '2023-04-15', '2024-04-15', 'CalTechA', 'External', 'NIST SRM 2081', 0.02, 'Pass', 0.001, '', '2023-10-15', 'CentralLab', 'Building1', 1200.00, 'CERT-001', '', 1);
INSERT INTO LabInstrumentCalibrationRecord VALUES (7002, 802, 'pH Meter', 'PH-2002', '2023-03-10', '2024-03-10', 'CalTechB', 'Internal', 'Buffer pH 7', 0.01, 'Fail', -0.05, 'Recalibrated and cleaned electrode', '2023-09-10', 'QC Lab', 'Building2', 300.00, 'CERT-002', 'Initial fail due to drift', 0);
INSERT INTO LabInstrumentCalibrationRecord VALUES (7003, 803, 'Centrifuge', 'CF-3003', '2023-05-20', '2025-05-20', 'CalTechC', 'External', 'ISO 9001', 0.05, 'Pass', 0.02, '', '2023-11-20', 'ResearchLab', 'Building3', 800.00, 'CERT-003', '', 1);

-- PharmacyColdChainEvent: events related to temperature excursions in cold chain
CREATE TABLE PharmacyColdChainEvent
(
    EventID                INTEGER PRIMARY KEY,
    ShipmentID             INTEGER,
    ProductBatch           TEXT,
    TemperatureLogStart    REAL,
    TemperatureLogEnd      REAL,
    AvgTemperature         REAL,
    MaxTemperature         REAL,
    MinTemperature         REAL,
    DurationHours          REAL,
    EventDate              DATE,
    TriggeredBy            TEXT,
    ActionTaken            TEXT,
    Resolved               INTEGER,
    ResolutionDate         DATE,
    Comments               TEXT,
    Location               TEXT,
    MonitoringDeviceID     INTEGER,
    AlertLevel             INTEGER,
    RecordedBy             TEXT,
    VerificationStatus     TEXT
);

INSERT INTO PharmacyColdChainEvent VALUES (8001, 901, 'BATCH-001', 2.0, 8.5, 5.2, 8.5, 2.0, 4.0, '2023-07-01', 'TempSensorA', 'Refrigerated truck stopped, restored cooling', 1, '2023-07-01', '', 'Warehouse A', 301, 2, 'TechnicianMike', 'Verified');
INSERT INTO PharmacyColdChainEvent VALUES (8002, 902, 'BATCH-002', 1.5, 6.0, 3.5, 6.0, 1.5, 12.0, '2023-08-15', 'TempSensorB', 'Adjusted thermostat, added ice packs', 1, '2023-08-15', '', 'Distribution Center', 302, 1, 'TechnicianAnna', 'Verified');
INSERT INTO PharmacyColdChainEvent VALUES (8003, 903, 'BATCH-003', 4.0, 12.0, 8.0, 12.0, 4.0, 6.0, '2023-09-10', 'TempSensorC', 'Shipment returned to vendor', 0, NULL, 'Exceeded maximum allowed temperature', 'Transit', 303, 3, 'TechnicianLee', 'Pending');

-- HealthInsuranceProviderPlan: details of insurance plans offered by providers
CREATE TABLE HealthInsuranceProviderPlan
(
    PlanID                  INTEGER PRIMARY KEY,
    ProviderID              INTEGER,
    PlanName                TEXT,
    PlanType                TEXT,
    CoverageLevel           TEXT,
    DeductibleAmount       REAL,
    CoPayAmount            REAL,
    OutOfPocketMax         REAL,
    EffectiveDate           DATE,
    ExpirationDate          DATE,
    NetworkType             TEXT,
    PrescriptionCoverage    INTEGER,
    DentalCoverage          INTEGER,
    VisionCoverage          INTEGER,
    MentalHealthCoverage   INTEGER,
    TelehealthCoverage      INTEGER,
    PreAuthRequired         INTEGER,
    PlanStatus              TEXT,
    EnrollmentCap           INTEGER,
    URL                     TEXT,
    Notes                   TEXT
);

INSERT INTO HealthInsuranceProviderPlan VALUES (9001, 401, 'GoldPlus', 'PPO', 'Full', 500.00, 20.00, 3000.00, '2023-01-01', '2024-12-31', 'National', 1, 1, 1, 1, 1, 0, 'Active', 10000, 'http://provider.com/goldplus', '');
INSERT INTO HealthInsuranceProviderPlan VALUES (9002, 402, 'SilverBasic', 'HMO', 'Partial', 1000.00, 30.00, 5000.00, '2023-01-01', '2024-12-31', 'Regional', 1, 0, 0, 0, 1, 1, 'Active', 15000, 'http://provider.com/silverbasic', '');
INSERT INTO HealthInsuranceProviderPlan VALUES (9003, 403, 'BronzeStandard', 'EPO', 'Limited', 1500.00, 40.00, 7000.00, '2023-01-01', '2024-12-31', 'Local', 0, 0, 0, 0, 0, 1, 'Pending', 5000, 'http://provider.com/bronzestandard', 'Requires prior authorization for specialist visits');