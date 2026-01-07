-- Medical imaging device catalog
CREATE TABLE MedicalImagingDeviceCatalog
(
    DeviceID INTEGER NOT NULL,
    DeviceType TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyEndDate DATE,
    ServiceContractID INTEGER,
    Status TEXT,
    Location TEXT,
    CalibrationDate DATE,
    LastMaintenanceDate DATE,
    SoftwareVersion TEXT,
    RadiationSafetyLevel TEXT,
    PowerRequirement TEXT,
    Connectivity TEXT,
    ImageResolution TEXT,
    FieldOfView TEXT,
    WeightKg REAL,
    DimensionsCm TEXT,
    PRIMARY KEY (DeviceID)
);

INSERT INTO MedicalImagingDeviceCatalog VALUES (1, 'CT', 'Siemens', 'Somatom', 'SN001', '2020-01-15', '2025-01-15', 101, 'Active', 'Radiology', '2022-06-01', '2023-06-01', 'v5.2', 'Level2', '220V', 'Ethernet', '512x512', '50cm', 1500.5, '200x150x180');
INSERT INTO MedicalImagingDeviceCatalog VALUES (2, 'MRI', 'GE', 'Signa', 'SN002', '2019-03-20', '2024-03-20', 102, 'Active', 'MRI Suite', '2021-09-10', '2023-09-10', 'v3.8', 'Level3', '240V', 'WiFi', '1024x1024', '60cm', 3500.0, '250x200x210');
INSERT INTO MedicalImagingDeviceCatalog VALUES (3, 'XRay', 'Philips', 'DigitalX', 'SN003', '2021-07-05', '2026-07-05', 103, 'UnderMaintenance', 'ER', '2023-01-15', '2023-07-15', 'v2.1', 'Level1', '110V', 'USB', '2048x2048', '45cm', 800.2, '150x120x140');

-- Patient insurance coverage details
CREATE TABLE PatientInsuranceCoverage
(
    CoverageID INTEGER NOT NULL,
    PatientID INTEGER,
    InsurerName TEXT,
    PolicyNumber TEXT,
    GroupNumber TEXT,
    CoverageType TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    DeductibleAmount REAL,
    CopayAmount REAL,
    OutOfPocketMax REAL,
    PrimaryHolderRelation TEXT,
    PrimaryHolderDOB DATE,
    CoverageStatus TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    CoveragePlan TEXT,
    BenefitCategory TEXT,
    ExclusionList TEXT,
    PRIMARY KEY (CoverageID)
);

INSERT INTO PatientInsuranceCoverage VALUES (1001, 1, 'BlueCross', 'PC12345', 'GRP01', 'Full', '2022-01-01', '2023-01-01', 500.0, 20.0, 2000.0, 'Self', '1980-04-12', 'Active', 'N/A', '2022-01-01', '2022-06-01', 'PlanA', 'Medical', 'None');
INSERT INTO PatientInsuranceCoverage VALUES (1002, 2, 'Aetna', 'PC54321', 'GRP02', 'Partial', '2021-07-01', '2022-07-01', 1000.0, 30.0, 3000.0, 'Spouse', '1975-09-30', 'Expired', 'Renewal pending', '2021-07-01', '2022-05-15', 'PlanB', 'Dental', 'Orthodontics');
INSERT INTO PatientInsuranceCoverage VALUES (1003, 3, 'UnitedHealth', 'PC98765', 'GRP03', 'Full', '2023-03-15', '2024-03-15', 250.0, 15.0, 1500.0, 'Child', '2010-12-05', 'Active', 'N/A', '2023-03-15', '2023-04-10', 'PlanC', 'Vision', 'LaserSurgery');

-- Hospital staff training modules
CREATE TABLE HospitalStaffTrainingModule
(
    ModuleID INTEGER NOT NULL,
    Title TEXT,
    Description TEXT,
    Category TEXT,
    DurationHours INTEGER,
    PrerequisiteModuleID INTEGER,
    InstructorID INTEGER,
    CertificationRequired TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    Language TEXT,
    DeliveryMethod TEXT,
    AssessmentType TEXT,
    PassScore INTEGER,
    MaxAttempts INTEGER,
    ValidityPeriodDays INTEGER,
    TargetRole TEXT,
    Version TEXT,
    IsMandatory TEXT,
    AccessLevel TEXT,
    PRIMARY KEY (ModuleID)
);

INSERT INTO HospitalStaffTrainingModule VALUES (201, 'InfectionControl', 'Training on infection prevention', 'Safety', 4, NULL, 301, 'Yes', '2022-02-01', '2022-06-01', 'English', 'Online', 'Quiz', 80, 3, 365, 'All', 'v1', 'Yes', 'All');
INSERT INTO HospitalStaffTrainingModule VALUES (202, 'RadiationSafety', 'Radiation protection principles', 'Safety', 3, 201, 302, 'Yes', '2022-03-15', '2022-07-15', 'English', 'Classroom', 'Exam', 85, 2, 730, 'Radiology', 'v2', 'Yes', 'Radiology');
INSERT INTO HospitalStaffTrainingModule VALUES (203, 'DataPrivacy', 'HIPAA compliance overview', 'Compliance', 2, NULL, 303, 'No', '2022-04-10', '2022-08-10', 'English', 'Online', 'Survey', 70, 1, 365, 'All', 'v1', 'No', 'All');

-- Clinical trial participant consents
CREATE TABLE ClinicalTrialParticipantConsent
(
    ConsentID INTEGER NOT NULL,
    ParticipantID INTEGER,
    TrialID INTEGER,
    ConsentDate DATE,
    Version TEXT,
    SignedBy TEXT,
    Witness TEXT,
    ConsentMethod TEXT,
    DocumentLocation TEXT,
    ConsentStatus TEXT,
    ExpirationDate DATE,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Language TEXT,
    ElectronicSignature TEXT,
    ConsentFormType TEXT,
    StudyPhase TEXT,
    EligibilityConfirmed TEXT,
    WithdrawalDate DATE,
    PRIMARY KEY (ConsentID)
);

INSERT INTO ClinicalTrialParticipantConsent VALUES (5001, 1, 100, '2022-05-01', 'v1', 'Patient', 'NurseA', 'Electronic', '/docs/consent5001.pdf', 'Signed', '2023-05-01', 'N/A', '2022-05-01', '2022-05-05', 'English', 'Yes', 'Initial', 'Phase1', 'Yes', NULL);
INSERT INTO ClinicalTrialParticipantConsent VALUES (5002, 2, 101, '2022-06-15', 'v2', 'Guardian', 'NurseB', 'Paper', '/docs/consent5002.pdf', 'Signed', '2023-06-15', 'Minor consent', '2022-06-15', '2022-06-20', 'English', 'No', 'Amendment', 'Phase2', 'Yes', NULL);
INSERT INTO ClinicalTrialParticipantConsent VALUES (5003, 3, 102, '2022-07-20', 'v1', 'Patient', 'NurseC', 'Electronic', '/docs/consent5003.pdf', 'Withdrawn', '2023-07-20', 'Adverse event', '2022-07-20', '2022-08-01', 'English', 'Yes', 'Initial', 'Phase1', 'Yes', '2022-12-01');

-- Facility utility usage log
CREATE TABLE FacilityUtilityUsageLog
(
    LogID INTEGER NOT NULL,
    FacilityID INTEGER,
    UtilityType TEXT,
    MeterReading REAL,
    Unit TEXT,
    ReadingDate DATE,
    StartPeriod DATE,
    EndPeriod DATE,
    EstimatedCost REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    CO2ppm REAL,
    Voltage REAL,
    Current REAL,
    PowerFactor REAL,
    LoadCategory TEXT,
    Remarks TEXT,
    CreatedBy TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    PRIMARY KEY (LogID)
);

INSERT INTO FacilityUtilityUsageLog VALUES (8001, 10, 'Electricity', 1250.5, 'kWh', '2022-12-31', '2022-12-01', '2022-12-31', 320.75, 22.5, 45.0, 600, 230, 5, 'Peak', 'Monthly reading', 'System', '2023-01-01', '2023-01-02');
INSERT INTO FacilityUtilityUsageLog VALUES (8002, 11, 'Water', 4500.0, 'gallons', '2022-12-31', '2022-12-01', '2022-12-31', 150.20, 21.0, 40.0, NULL, NULL, NULL, 'Baseline', 'Monthly reading', 'System', '2023-01-01', '2023-01-02');
INSERT INTO FacilityUtilityUsageLog VALUES (8003, 12, 'Gas', 300.8, 'therms', '2022-12-31', '2022-12-01', '2022-12-31', 210.60, 23.0, 50.0, NULL, NULL, NULL, 'OffPeak', 'Monthly reading', 'System', '2023-01-01', '2023-01-02');

-- Pharmacy lot traceability
CREATE TABLE PharmacyLotTraceability
(
    LotID INTEGER NOT NULL,
    DrugName TEXT,
    NDC TEXT,
    Manufacturer TEXT,
    BatchNumber TEXT,
    ExpirationDate DATE,
    ReceivedDate DATE,
    QuantityUnits INTEGER,
    UnitCost REAL,
    StorageLocation TEXT,
    TemperatureRequirement TEXT,
    CurrentStock INTEGER,
    DispensedUnits INTEGER,
    ReturnedUnits INTEGER,
    RecallStatus TEXT,
    QAStatus TEXT,
    CreatedBy TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Comments TEXT,
    PRIMARY KEY (LotID)
);

INSERT INTO PharmacyLotTraceability VALUES (9001, 'Aspirin', '12345-6789', 'PharmaInc', 'B001', '2024-05-01', '2022-01-15', 1000, 0.05, 'ShelfA1', 'RoomTemp', 800, 150, 10, 'None', 'Passed', 'PharmacistA', '2022-01-15', '2022-06-01', 'Initial stock');
INSERT INTO PharmacyLotTraceability VALUES (9002, 'Lisinopril', '98765-4321', 'HealthMeds', 'B002', '2025-08-15', '2022-02-20', 500, 0.12, 'ShelfB2', 'RoomTemp', 350, 120, 5, 'None', 'Passed', 'PharmacistB', '2022-02-20', '2022-07-01', 'Routine restock');
INSERT INTO PharmacyLotTraceability VALUES (9003, 'Metformin', '55555-1111', 'MediCo', 'B003', '2023-12-31', '2022-03-10', 800, 0.08, 'ShelfC3', 'Refrigerated', 600, 180, 0, 'RecallPending', 'Pending', 'PharmacistC', '2022-03-10', '2022-08-01', 'Awaiting recall decision');

-- Patient wearable device data
CREATE TABLE PatientWearableDeviceData
(
    RecordID INTEGER NOT NULL,
    PatientID INTEGER,
    DeviceSerial TEXT,
    DeviceType TEXT,
    FirmwareVersion TEXT,
    RecordingDate DATE,
    HeartRateBPM INTEGER,
    BloodOxygenSat REAL,
    StepsCount INTEGER,
    SleepDurationMin INTEGER,
    SkinTempC REAL,
    ActivityLevel TEXT,
    BatteryLevelPercent INTEGER,
    SignalQuality TEXT,
    DataQualityFlag TEXT,
    UploadedToServer TEXT,
    SyncTimestamp DATE,
    LocationLat REAL,
    LocationLong REAL,
    Notes TEXT,
    PRIMARY KEY (RecordID)
);

INSERT INTO PatientWearableDeviceData VALUES (11001, 1, 'WS001', 'FitBand', '1.2.3', '2022-12-01', 72, 98.5, 5000, 420, 36.5, 'Moderate', 85, 'Good', 'Pass', 'Yes', '2022-12-01', 40.7128, -74.0060, 'No issues');
INSERT INTO PatientWearableDeviceData VALUES (11002, 2, 'WS002', 'SmartWatch', '2.0.1', '2022-12-01', 80, 97.0, 7500, 380, 37.0, 'High', 70, 'Fair', 'Pass', 'Yes', '2022-12-01', 34.0522, -118.2437, 'Battery low');
INSERT INTO PatientWearableDeviceData VALUES (11003, 3, 'WS003', 'HealthClip', '3.1.0', '2022-12-01', 65, 99.0, 3000, 460, 35.8, 'Low', 95, 'Excellent', 'Pass', 'Yes', '2022-12-01', 41.8781, -87.6298, 'Normal');

-- Supply chain vendor performance
CREATE TABLE SupplyChainVendorPerformance
(
    VendorID INTEGER NOT NULL,
    VendorName TEXT,
    ContactPerson TEXT,
    PhoneNumber TEXT,
    Email TEXT,
    ContractStartDate DATE,
    ContractEndDate DATE,
    AvgDeliveryTimeDays REAL,
    OnTimeDeliveryPct REAL,
    DefectRatePct REAL,
    ComplianceScore INTEGER,
    InsuranceCoverage TEXT,
    Certifications TEXT,
    LastAuditDate DATE,
    AuditScore INTEGER,
    PreferredStatus TEXT,
    PaymentTerms TEXT,
    Currency TEXT,
    AnnualSpend REAL,
    Notes TEXT,
    PRIMARY KEY (VendorID)
);

INSERT INTO SupplyChainVendorPerformance VALUES (3001, 'MedSuppliesCo', 'Alice Smith', '555-1234', 'alice@medsupplies.com', '2021-01-01', '2024-12-31', 2.5, 95.0, 1.2, 88, 'Liability100K', 'ISO9001', '2022-06-15', 90, 'Yes', 'Net30', 'USD', 250000.0, 'Good partner');
INSERT INTO SupplyChainVendorPerformance VALUES (3002, 'HealthEquipLtd', 'Bob Jones', '555-5678', 'bob@healthequip.com', '2020-05-15', '2025-05-14', 3.0, 92.0, 0.8, 85, 'Liability200K', 'ISO13485', '2022-08-20', 85, 'No', 'Net45', 'USD', 180000.0, 'Improvement needed');
INSERT INTO SupplyChainVendorPerformance VALUES (3003, 'PharmaLogistics', 'Carol Lee', '555-9012', 'carol@pharmalog.com', '2022-03-01', '2027-02-28', 1.8, 98.0, 0.5, 92, 'Liability150K', 'ISO9001,ISO14001', '2023-01-10', 95, 'Yes', 'Net30', 'USD', 320000.0, 'Excellent service');

-- Community health screening events
CREATE TABLE CommunityHealthScreeningEvent
(
    EventID INTEGER NOT NULL,
    CommunityName TEXT,
    EventDate DATE,
    Organizer TEXT,
    Venue TEXT,
    ScreeningType TEXT,
    TargetPopulation TEXT,
    EstimatedAttendees INTEGER,
    ActualAttendees INTEGER,
    ScreenedConditions TEXT,
    FollowUpRatePct REAL,
    StaffVolunteers INTEGER,
    ResourcesProvided TEXT,
    FundingSource TEXT,
    BudgetAmount REAL,
    OutcomeSummary TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Latitude REAL,
    Longitude REAL,
    PRIMARY KEY (EventID)
);

INSERT INTO CommunityHealthScreeningEvent VALUES (4001, 'Springfield', '2022-09-15', 'CityHealthDept', 'CommunityCenter', 'General', 'Adults', 200, 185, 'Hypertension, Diabetes', 78.5, 12, 'Brochures, FreeGloves', 'GrantABC', 15000.0, 'Positive response', '2022-08-01', '2022-09-16', 39.7817, -89.6501);
INSERT INTO CommunityHealthScreeningEvent VALUES (4002, 'Riverside', '2022-10-10', 'NonProfitOrg', 'SchoolGym', 'Cardio', 'Seniors', 120, 110, 'Cholesterol, ECG', 65.0, 8, 'BloodPressureCuffs', 'Donations', 8000.0, 'Good turnout', '2022-09-01', '2022-10-11', 38.6270, -90.1994);
INSERT INTO CommunityHealthScreeningEvent VALUES (4003, 'Lakeside', '2022-11-05', 'HospitalOutreach', 'Park Pavilion', 'Vision', 'Children', 150, 140, 'VisionAcuity', 82.0, 10, 'EyeCharts, Glasses', 'HospitalFunds', 12000.0, 'High engagement', '2022-10-01', '2022-11-06', 40.1106, -88.2073);

-- Hospital construction project phases
CREATE TABLE HospitalConstructionProjectPhase
(
    PhaseID INTEGER NOT NULL,
    ProjectName TEXT,
    PhaseName TEXT,
    StartDate DATE,
    EndDate DATE,
    BudgetAllocated REAL,
    BudgetSpent REAL,
    Contractor TEXT,
    ProjectManager TEXT,
    Status TEXT,
    RiskLevel TEXT,
    MilestonesCompleted INTEGER,
    IssuesLogged INTEGER,
    SafetyIncidents INTEGER,
    PermitNumber TEXT,
    InspectionDate DATE,
    InspectionResult TEXT,
    Comments TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    PRIMARY KEY (PhaseID)
);

INSERT INTO HospitalConstructionProjectPhase VALUES (6001, 'EastWingExpansion', 'Design', '2022-01-01', '2022-04-30', 500000.0, 450000.0, 'DesignCo', 'Mike Turner', 'Completed', 'Low', 5, 0, 0, 'PERM1001', '2022-04-28', 'Pass', 'All designs approved', '2022-01-01', '2022-04-30');
INSERT INTO HospitalConstructionProjectPhase VALUES (6002, 'EastWingExpansion', 'Construction', '2022-05-01', '2023-03-31', 3000000.0, 1500000.0, 'BuildIt Ltd', 'Sara Lee', 'InProgress', 'Medium', 3, 2, 0, 'PERM1002', '2022-12-15', 'Pass', 'On schedule', '2022-05-01', '2022-12-15');
INSERT INTO HospitalConstructionProjectPhase VALUES (6003, 'EastWingExpansion', 'Commissioning', '2023-04-01', '2023-06-30', 800000.0, 200000.0, 'CommissionCo', 'Alan Green', 'Planned', 'Low', 0, 0, 0, 'PERM1003', NULL, NULL, 'Pending permits', '2023-04-01', '2023-04-01');