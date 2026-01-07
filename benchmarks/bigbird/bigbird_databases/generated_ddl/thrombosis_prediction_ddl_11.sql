-- Pharmacy supplier contract table
CREATE TABLE PharmacySupplierContract (
    ContractID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    SupplierName TEXT,
    ContractStartDate DATE,
    ContractEndDate DATE,
    DiscountRate REAL,
    Preferred INTEGER,
    DeliveryFrequency TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Address TEXT,
    PaymentTerms TEXT,
    MinimumOrderQty INTEGER,
    LeadTimeDays INTEGER,
    ProductCategory TEXT,
    QualityScore INTEGER,
    CertificationStatus TEXT,
    ContractValue REAL,
    Currency TEXT,
    RenewalOption TEXT,
    Notes TEXT
);

INSERT INTO PharmacySupplierContract VALUES (1, 101, 'HealthSupplyCo', '2022-01-15', '2025-01-14', 5.0, 1, 'Weekly', '5551234567', 'contact@healthsupplyco.com', '123 Main St', 'Net30', 100, 5, 'Pharmaceuticals', 90, 'ISO9001', 250000.00, 'USD', 'Automatic', 'First contract');
INSERT INTO PharmacySupplierContract VALUES (2, 102, 'MediLogistics', '2021-06-01', '2024-05-31', 3.5, 0, 'Biweekly', '5559876543', 'info@medilogistics.com', '456 Oak Ave', 'Net45', 200, 7, 'Medical Devices', 85, 'ISO13485', 400000.00, 'USD', 'Manual', 'Preferred vendor');
INSERT INTO PharmacySupplierContract VALUES (3, 103, 'GlobalPharma', '2023-03-01', '2026-02-28', 4.2, 1, 'Monthly', '5555551212', 'sales@globalpharma.com', '789 Pine Rd', 'Net60', 150, 10, 'Vaccines', 92, 'GMP', 350000.00, 'USD', 'Automatic', 'New partnership');

-- Medical research equipment inventory table
CREATE TABLE MedicalResearchEquipmentInventory (
    EquipmentID INTEGER PRIMARY KEY,
    SerialNumber TEXT,
    Model TEXT,
    Manufacturer TEXT,
    PurchaseDate DATE,
    WarrantyEndDate DATE,
    Location TEXT,
    Department TEXT,
    CalibrationStatus TEXT,
    LastCalibrationDate DATE,
    NextCalibrationDue DATE,
    MaintenanceProvider TEXT,
    MaintenanceContractID INTEGER,
    AssetTag TEXT,
    ConditionRating INTEGER,
    UsageHours REAL,
    DepreciationMethod TEXT,
    DepreciationStartDate DATE,
    CurrentValue REAL,
    Currency TEXT
);

INSERT INTO MedicalResearchEquipmentInventory VALUES (1001, 'SN001', 'X200', 'LabTech', '2020-02-10', '2025-02-09', 'Building A Room 12', 'Genetics', 'Calibrated', '2022-12-01', '2023-12-01', 'CalibCo', 5001, 'AT1001', 8, 1200.5, 'StraightLine', '2020-02-10', 75000.00, 'USD');
INSERT INTO MedicalResearchEquipmentInventory VALUES (1002, 'SN002', 'M500', 'Bio Instruments', '2019-07-22', '2024-07-21', 'Building B Lab 3', 'Imaging', 'Pending', '2023-01-15', '2024-01-15', 'MaintPro', 5002, 'AT1002', 7, 1800.0, 'DecliningBalance', '2019-07-22', 54000.00, 'USD');
INSERT INTO MedicalResearchEquipmentInventory VALUES (1003, 'SN003', 'C300', 'MediEquip', '2021-11-05', '2026-11-04', 'Building C Suite 5', 'Pathology', 'Calibrated', '2023-06-30', '2024-06-30', 'CalibCo', 5003, 'AT1003', 9, 900.75, 'StraightLine', '2021-11-05', 67000.00, 'USD');

-- Hospital staff performance metric table
CREATE TABLE HospitalStaffPerformanceMetric (
    StaffID INTEGER,
    ReviewPeriodStart DATE,
    ReviewPeriodEnd DATE,
    AttendanceRate REAL,
    PunctualityScore INTEGER,
    PatientSatisfactionScore INTEGER,
    ProcedureSuccessRate REAL,
    DocumentationAccuracy INTEGER,
    TrainingHoursCompleted INTEGER,
    CertificationsEarned INTEGER,
    DisciplinaryActions INTEGER,
    PeerFeedbackScore INTEGER,
    SupervisorRating INTEGER,
    OvertimeHours REAL,
    ShiftCoverageRate REAL,
    AbsenceDays INTEGER,
    ComplaintCount INTEGER,
    InnovationScore INTEGER,
    LeadershipScore INTEGER,
    OverallRating REAL,
    PRIMARY KEY (StaffID, ReviewPeriodStart)
);

INSERT INTO HospitalStaffPerformanceMetric VALUES (2001, '2023-01-01', '2023-12-31', 98.5, 9, 87, 96.2, 94, 40, 3, 0, 8, 9, 120.0, 99.0, 2, 0, 7, 8, 88.5);
INSERT INTO HospitalStaffPerformanceMetric VALUES (2002, '2023-01-01', '2023-12-31', 95.0, 7, 80, 92.5, 90, 35, 2, 1, 7, 8, 80.5, 97.5, 3, 1, 6, 7, 81.3);
INSERT INTO HospitalStaffPerformanceMetric VALUES (2003, '2023-01-01', '2023-12-31', 99.0, 10, 92, 98.0, 96, 45, 4, 0, 9, 10, 150.0, 100.0, 1, 0, 9, 9, 94.7);

-- Clinical trial site visit log table
CREATE TABLE ClinicalTrialSiteVisitLog (
    VisitID INTEGER PRIMARY KEY,
    TrialID INTEGER,
    SiteID INTEGER,
    VisitDate DATE,
    VisitorName TEXT,
    VisitorRole TEXT,
    FindingsSummary TEXT,
    ComplianceScore INTEGER,
    SafetyObservations TEXT,
    DataIntegrityScore INTEGER,
    PatientRecruitmentStatus TEXT,
    EnrollmentCount INTEGER,
    RetentionRate REAL,
    AdverseEventCount INTEGER,
    TrainingCompleted INTEGER,
    DocumentationStatus TEXT,
    ActionItems TEXT,
    FollowUpDate DATE,
    OverallAssessment TEXT,
    Notes TEXT
);

INSERT INTO ClinicalTrialSiteVisitLog VALUES (3001, 501, 801, '2023-03-15', 'Laura Smith', 'Monitor', 'All procedures followed', 92, 'No issues', 95, 'On track', 120, 96.5, 2, 1, 'Complete', 'Update consent forms', '2023-04-01', 'Satisfactory', 'No major concerns');
INSERT INTO ClinicalTrialSiteVisitLog VALUES (3002, 502, 802, '2023-04-20', 'Mark Lee', 'Auditor', 'Minor documentation gaps', 85, 'Safety equipment missing in one area', 88, 'Delayed recruitment', 95, 88.0, 5, 0, 'Partial', 'Provide missing equipment', '2023-05-10', 'Conditional', 'Follow up on safety');
INSERT INTO ClinicalTrialSiteVisitLog VALUES (3003, 503, 803, '2023-05-10', 'Nina Patel', 'Monitor', 'Excellent compliance', 98, 'All safety checks passed', 99, 'Ahead of schedule', 130, 99.2, 1, 1, 'Complete', 'None', '2023-06-01', 'Excellent', 'Consider expanding site');

-- Hospital energy consumption detail table
CREATE TABLE HospitalEnergyConsumptionDetail (
    RecordID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    RecordDate DATE,
    HourOfDay INTEGER,
    ElectricityKWh REAL,
    GasTherms REAL,
    WaterLiters REAL,
    SteamKg REAL,
    RenewableSourcePercentage REAL,
    PeakDemandKW REAL,
    LoadFactor REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    OccupancyLevel INTEGER,
    EquipmentRunningCount INTEGER,
    HVACStatus TEXT,
    LightingStatus TEXT,
    BackupGeneratorRunHours REAL,
    CO2EmissionsKg REAL,
    CostUSD REAL
);

INSERT INTO HospitalEnergyConsumptionDetail VALUES (4001, 1, '2023-06-01', 0, 120.5, 30.2, 5000, 200, 15.0, 250.0, 0.75, 22.5, 45.0, 350, 45, 'On', 'On', 2.0, 85.0, 3200.00);
INSERT INTO HospitalEnergyConsumptionDetail VALUES (4002, 1, '2023-06-01', 12, 140.8, 28.5, 4800, 210, 18.5, 260.0, 0.78, 24.0, 48.0, 370, 50, 'On', 'Dimmed', 1.5, 92.0, 3500.00);
INSERT INTO HospitalEnergyConsumptionDetail VALUES (4003, 1, '2023-06-01', 18, 100.3, 25.0, 4600, 190, 12.0, 240.0, 0.70, 20.0, 42.0, 330, 40, 'Off', 'Off', 0.0, 70.0, 2800.00);

-- Biohazard material tracking table
CREATE TABLE BiohazardMaterialTracking (
    TrackingID INTEGER PRIMARY KEY,
    WasteType TEXT,
    CollectionDate DATE,
    CollectionMethod TEXT,
    ContainerID TEXT,
    VolumeLiters REAL,
    WeightKg REAL,
    HazardLevel INTEGER,
    DecontaminationStatus TEXT,
    DisposalMethod TEXT,
    DisposalDate DATE,
    DisposalFacility TEXT,
    ResponsibleStaffID INTEGER,
    ComplianceCode TEXT,
    SealNumber TEXT,
    TemperatureDuringTransport REAL,
    IncidentReport TEXT,
    Comments TEXT,
    RecordCreatedBy TEXT,
    RecordTimestamp DATE
);

INSERT INTO BiohazardMaterialTracking VALUES (5001, 'Sharps', '2023-04-05', 'Cyclic', 'C001', 2.5, 3.2, 5, 'Completed', 'Incineration', '2023-04-06', 'CityIncinerator', 2001, 'HC123', 'SN987', 4.0, 'None', 'Handled per protocol', 'tech1', '2023-04-05');
INSERT INTO BiohazardMaterialTracking VALUES (5002, 'Pathological', '2023-04-10', 'OnDemand', 'C002', 1.8, 2.0, 4, 'Pending', 'Autoclave', NULL, NULL, 2002, 'HC124', 'SN988', 5.0, 'Spill noted', 'Spill cleaned', 'tech2', '2023-04-10');
INSERT INTO BiohazardMaterialTracking VALUES (5003, 'Chemical', '2023-04-12', 'Cyclic', 'C003', 3.0, 4.5, 3, 'Completed', 'Landfill', '2023-04-13', 'SafeLand', 2003, 'HC125', 'SN989', 3.5, 'None', 'All good', 'tech3', '2023-04-12');

-- Nutrition supplement prescription table
CREATE TABLE NutritionSupplementPrescription (
    PrescriptionID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    SupplementName TEXT,
    DosageMg REAL,
    FrequencyPerDay INTEGER,
    Route TEXT,
    StartDate DATE,
    EndDate DATE,
    PrescribingPhysicianID INTEGER,
    PharmacyID INTEGER,
    ApprovalStatus TEXT,
    Reason TEXT,
    Notes TEXT,
    RefillsAllowed INTEGER,
    RefillCount INTEGER,
    LastRefillDate DATE,
    ComplianceScore REAL,
    SideEffectsObserved TEXT,
    MonitoringPlan TEXT,
    CreatedAt DATE
);

INSERT INTO NutritionSupplementPrescription VALUES (6001, 301, 'VitaminD', 2000, 1, 'Oral', '2023-01-15', '2023-07-15', 401, 801, 'Approved', 'Bone health', 'Take with food', 2, 0, NULL, 95.0, 'None', 'Check levels quarterly', '2023-01-15');
INSERT INTO NutritionSupplementPrescription VALUES (6002, 302, 'Omega3', 1000, 2, 'Oral', '2023-02-01', '2023-08-01', 402, 802, 'Approved', 'Cardiac support', 'Take after meals', 3, 1, '2023-04-01', 88.5, 'Mild stomach upset', 'Monitor lipid profile', '2023-02-01');
INSERT INTO NutritionSupplementPrescription VALUES (6003, 303, 'Iron', 65, 1, 'Oral', '2023-03-10', '2023-09-10', 403, 803, 'Pending', 'Anemia', 'Avoid calcium', 1, 0, NULL, 70.0, 'None', 'Check hemoglobin monthly', '2023-03-10');

-- Telehealth device usage log table
CREATE TABLE TelehealthDeviceUsageLog (
    LogID INTEGER PRIMARY KEY,
    DeviceID TEXT,
    PatientID INTEGER,
    SessionID TEXT,
    StartTimestamp DATE,
    EndTimestamp DATE,
    DataTransferredMB REAL,
    VideoQuality TEXT,
    AudioQuality TEXT,
    ConnectionType TEXT,
    SignalStrength REAL,
    BatteryLevelStart REAL,
    BatteryLevelEnd REAL,
    ErrorsEncountered TEXT,
    FirmwareVersion TEXT,
    RemoteControlEnabled INTEGER,
    PatientFeedbackScore INTEGER,
    ClinicianFeedbackScore INTEGER,
    SessionOutcome TEXT,
    RecordedBy TEXT
);

INSERT INTO TelehealthDeviceUsageLog VALUES (7001, 'DEV001', 301, 'S001', '2023-06-01', '2023-06-01', 150.5, 'HD', 'Clear', 'WiFi', 85.0, 100.0, 95.0, 'None', 'v1.2', 1, 9, 8, 'Successful', 'techA');
INSERT INTO TelehealthDeviceUsageLog VALUES (7002, 'DEV002', 302, 'S002', '2023-06-02', '2023-06-02', 200.0, 'FullHD', 'Clear', 'Cellular', 78.0, 90.0, 80.0, 'Dropout', 'v1.3', 0, 7, 6, 'Partial', 'techB');
INSERT INTO TelehealthDeviceUsageLog VALUES (7003, 'DEV003', 303, 'S003', '2023-06-03', '2023-06-03', 120.0, 'SD', 'Muffled', 'WiFi', 92.0, 95.0, 98.0, 'None', 'v1.2', 1, 8, 9, 'Successful', 'techC');

-- Hospital construction project table
CREATE TABLE HospitalConstructionProject (
    ProjectID INTEGER PRIMARY KEY,
    ProjectName TEXT,
    StartDate DATE,
    PlannedEndDate DATE,
    ActualEndDate DATE,
    BudgetUSD REAL,
    SpentUSD REAL,
    ContractorName TEXT,
    ProjectManagerID INTEGER,
    Status TEXT,
    Phase TEXT,
    CriticalPathMilestones TEXT,
    RiskLevel INTEGER,
    SafetyIncidents INTEGER,
    EnvironmentalImpactScore INTEGER,
    RegulatoryApprovalDate DATE,
    PermitNumber TEXT,
    Description TEXT,
    StakeholderComments TEXT,
    LastUpdated DATE
);

INSERT INTO HospitalConstructionProject VALUES (8001, 'East Wing Expansion', '2022-01-15', '2024-12-31', NULL, 15000000.00, 8500000.00, 'BuildRight Ltd', 501, 'InProgress', 'Construction', 'Foundation,Framing,Electrical', 3, 0, 85, '2021-11-20', 'PERM12345', 'Add 200 beds', 'Positive', '2023-03-01');
INSERT INTO HospitalConstructionProject VALUES (8002, 'New Imaging Center', '2023-03-01', '2025-06-30', NULL, 8000000.00, 2000000.00, 'AlphaConstruct', 502, 'Planning', 'Design', 'Architectural,Licensing,Procurement', 2, 1, 78, '2022-12-10', 'PERM67890', 'State-of-the-art MRI', 'Awaiting final budget', '2023-04-15');
INSERT INTO HospitalConstructionProject VALUES (8003, 'Parking Garage Renovation', '2021-05-20', '2022-11-30', '2022-11-28', 3000000.00, 3000000.00, 'CityBuild', 503, 'Completed', 'Renovation', 'Demolition,Reconstruction,Finishing', 1, 0, 90, '2020-09-05', 'PERM11223', 'Increase capacity to 500 cars', 'Completed on time', '2022-11-30');

-- Patient family contact table
CREATE TABLE PatientFamilyContact (
    ContactID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    Relation TEXT,
    ContactName TEXT,
    PhoneNumber TEXT,
    Email TEXT,
    Address TEXT,
    PreferredContactMethod TEXT,
    ConsentGiven INTEGER,
    EmergencyContactFlag INTEGER,
    LastUpdated DATE,
    Notes TEXT,
    AlternatePhone TEXT,
    AlternateEmail TEXT,
    PreferredLanguage TEXT,
    Timezone TEXT,
    CommunicationFrequency TEXT,
    ContactPriority INTEGER,
    VerificationStatus TEXT,
    CreatedDate DATE
);

INSERT INTO PatientFamilyContact VALUES (9001, 301, 'Spouse', 'Emily Doe', '5551112222', 'emily.doe@example.com', '123 Maple St', 'Phone', 1, 1, '2023-05-01', 'Primary emergency contact', '5553334444', 'emily.alt@example.com', 'English', 'EST', 'Monthly', 1, 'Verified', '2023-04-15');
INSERT INTO PatientFamilyContact VALUES (9002, 302, 'Parent', 'John Smith', '5552223333', 'john.smith@example.com', '456 Oak Ave', 'Email', 1, 0, '2023-04-20', 'Guardian', NULL, NULL, 'Spanish', 'CST', 'Quarterly', 2, 'Pending', '2023-04-01');
INSERT INTO PatientFamilyContact VALUES (9003, 303, 'Sibling', 'Laura Jones', '5553334444', 'laura.jones@example.com', '789 Pine Rd', 'Phone', 0, 0, '2023-03-15', 'No consent for contact', '5555556666', NULL, 'French', 'PST', 'Annually', 3, 'NotVerified', '2023-02-28');