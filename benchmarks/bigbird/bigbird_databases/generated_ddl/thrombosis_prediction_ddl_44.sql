-- FacilityInspectionReport
CREATE TABLE FacilityInspectionReport (
    InspectionID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    InspectionDate DATE,
    InspectorName TEXT,
    OverallScore INTEGER,
    StructuralIntegrity INTEGER,
    FireSafetyScore INTEGER,
    ElectricalSafetyScore INTEGER,
    HVACPerformance INTEGER,
    CleanlinessScore INTEGER,
    WasteManagementScore INTEGER,
    SecurityScore INTEGER,
    AccessibilityScore INTEGER,
    ComplianceNotes TEXT,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    ReportDocumentPath TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    IsActive INTEGER
);

INSERT INTO FacilityInspectionReport VALUES (1, 101, '2025-01-15', 'Alice_Smith', 88, 90, 85, 87, 92, 89, 84, 90, 88, 'All_good', 0, NULL, '/reports/ins_1.pdf', '2025-01-15', '2025-01-15', 1);
INSERT INTO FacilityInspectionReport VALUES (2, 102, '2025-02-20', 'Bob_Jones', 75, 78, 70, 73, 80, 76, 68, 74, 72, 'Minor_issues', 1, '2025-03-05', '/reports/ins_2.pdf', '2025-02-20', '2025-02-20', 1);
INSERT INTO FacilityInspectionReport VALUES (3, 103, '2025-03-10', 'Carol_Tan', 95, 96, 94, 95, 97, 95, 96, 98, 97, 'Excellent', 0, NULL, '/reports/ins_3.pdf', '2025-03-10', '2025-03-10', 1);

-- EquipmentLifecycleEvent
CREATE TABLE EquipmentLifecycleEvent (
    EventID INTEGER PRIMARY KEY,
    EquipmentID INTEGER,
    EventType TEXT,
    EventDate DATE,
    PerformedBy TEXT,
    Cost REAL,
    VendorID INTEGER,
    WarrantyRemainingMonths INTEGER,
    CalibrationStatus TEXT,
    MaintenanceNotes TEXT,
    NextDueDate DATE,
    DowntimeHours INTEGER,
    ProductionImpactScore INTEGER,
    DisposalPlan TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    IsCritical INTEGER,
    Location TEXT,
    SerialNumber TEXT,
    AssetTag TEXT
);

INSERT INTO EquipmentLifecycleEvent VALUES (1, 5001, 'Calibration', '2025-01-10', 'Tech_A', 150.00, 201, 12, 'Passed', 'All_good', '2025-07-10', 2, 5, 'Retain', '2025-01-10', '2025-01-10', 0, 'Radiology', 'SN5001A', 'AT5001');
INSERT INTO EquipmentLifecycleEvent VALUES (2, 5002, 'Repair', '2025-02-05', 'Tech_B', 1200.00, 202, 6, 'N/A', 'Replaced_motor', '2025-08-05', 8, 9, 'Retain', '2025-02-05', '2025-02-05', 1, 'Cardiology', 'SN5002B', 'AT5002');
INSERT INTO EquipmentLifecycleEvent VALUES (3, 5003, 'Decommission', '2025-03-12', 'Tech_C', 0.00, 0, 0, 'N/A', 'End_of_life', NULL, 0, 0, 'Recycle', '2025-03-12', '2025-03-12', 1, 'Pathology', 'SN5003C', 'AT5003');

-- MedicationAdherenceSurvey
CREATE TABLE MedicationAdherenceSurvey (
    SurveyID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    SurveyDate DATE,
    MedicationList TEXT,
    DoseFrequency TEXT,
    MissedDosesLastWeek INTEGER,
    ReasonForMissedDoses TEXT,
    SideEffectsReported TEXT,
    SatisfactionScore INTEGER,
    EducationProvided INTEGER,
    FollowUpCallScheduled INTEGER,
    FollowUpDate DATE,
    SurveyorName TEXT,
    Comments TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    IsComplete INTEGER,
    AdherenceScore REAL,
    PharmacyContacted INTEGER,
    ReminderMethod TEXT
);

INSERT INTO MedicationAdherenceSurvey VALUES (1, 1001, '2025-01-20', 'DrugA,DrugB', 'TwiceDaily', 1, 'Forgot', 'Nausea', 8, 1, 1, '2025-01-27', 'Nurse_K', 'Improved', '2025-01-20', '2025-01-20', 1, 0.85, 1, 'SMS');
INSERT INTO MedicationAdherenceSurvey VALUES (2, 1002, '2025-02-15', 'DrugC', 'OnceDaily', 0, 'N/A', 'None', 9, 1, 0, NULL, 'Nurse_L', 'No_issues', '2025-02-15', '2025-02-15', 1, 0.95, 0, 'Email');
INSERT INTO MedicationAdherenceSurvey VALUES (3, 1003, '2025-03-08', 'DrugD,DrugE,DrugF', 'ThriceDaily', 3, 'SideEffects', 'Headache', 6, 0, 1, '2025-03-15', 'Nurse_M', 'Needs_counseling', '2025-03-08', '2025-03-08', 1, 0.60, 1, 'Phone');

-- StaffShiftPreferenceLog
CREATE TABLE StaffShiftPreferenceLog (
    PreferenceID INTEGER PRIMARY KEY,
    StaffID INTEGER,
    PreferenceDate DATE,
    PreferredShift TEXT,
    PreferredDays TEXT,
    PreferredStartTime TEXT,
    PreferredEndTime TEXT,
    Reason TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    IsActive INTEGER,
    OverrideRequested INTEGER,
    OverrideReason TEXT,
    ShiftType TEXT,
    Department TEXT,
    MaxWeeklyHours INTEGER,
    MinWeeklyHours INTEGER,
    FlexibilityScore INTEGER
);

INSERT INTO StaffShiftPreferenceLog VALUES (1, 301, '2025-01-05', 'Morning', 'MonTueWed', '07:00', '15:00', 'Family', 'Mgr_A', '2025-01-06', 'Approved', '2025-01-05', '2025-01-05', 1, 0, NULL, 'Fixed', 'ER', 40, 30, 8);
INSERT INTO StaffShiftPreferenceLog VALUES (2, 302, '2025-02-10', 'Evening', 'ThuFriSat', '15:00', '23:00', 'Study', 'Mgr_B', '2025-02-11', 'Pending', '2025-02-10', '2025-02-10', 1, 1, 'Critical_staffing', 'Rotating', 'ICU', 45, 35, 6);
INSERT INTO StaffShiftPreferenceLog VALUES (3, 303, '2025-03-12', 'Night', 'SunMonTue', '23:00', '07:00', 'Personal', 'Mgr_C', '2025-03-13', 'Reviewed', '2025-03-12', '2025-03-12', 1, 0, NULL, 'Fixed', 'Lab', 38, 28, 7);

-- EnergyConsumptionDetail
CREATE TABLE EnergyConsumptionDetail (
    RecordID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    RecordDate DATE,
    ElectricityKWh REAL,
    GasTherms REAL,
    WaterGallons REAL,
    SteamPounds REAL,
    SolarGenerationKWh REAL,
    BackupGeneratorHours INTEGER,
    PeakDemandKW REAL,
    AvgLoadKW REAL,
    EnergyCostUSD REAL,
    CO2EmissionsKg REAL,
    WeatherCondition TEXT,
    TemperatureF REAL,
    HumidityPercent REAL,
    CreatedAt DATE,
    UpdatedAt DATE,
    IsEstimated INTEGER,
    MeterReadingID INTEGER,
    ConsumptionCategory TEXT
);

INSERT INTO EnergyConsumptionDetail VALUES (1, 101, '2025-01-31', 12500.5, 350.2, 80000, 1500, 200.0, 12, 750.3, 620.1, 14500.00, 8500.0, 'Clear', 55.0, 30.0, '2025-01-31', '2025-01-31', 0, 9001, 'Total');
INSERT INTO EnergyConsumptionDetail VALUES (2, 102, '2025-02-28', 11000.0, 320.0, 75000, 1400, 180.0, 10, 720.0, 590.0, 13000.00, 7700.0, 'Cloudy', 48.0, 45.0, '2025-02-28', '2025-02-28', 0, 9002, 'Total');
INSERT INTO EnergyConsumptionDetail VALUES (3, 103, '2025-03-31', 13000.7, 380.5, 82000, 1600, 210.0, 15, 770.5, 640.2, 15000.00, 8800.0, 'Rain', 60.0, 55.0, '2025-03-31', '2025-03-31', 0, 9003, 'Total');

-- GuidelineImplementationAudit
CREATE TABLE GuidelineImplementationAudit (
    AuditID INTEGER PRIMARY KEY,
    GuidelineID INTEGER,
    AuditDate DATE,
    AuditorName TEXT,
    Department TEXT,
    ComplianceLevel INTEGER,
    Findings TEXT,
    Recommendations TEXT,
    FollowUpDate DATE,
    FollowUpCompleted INTEGER,
    Score REAL,
    DocumentPath TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    IsCritical INTEGER,
    AuditedUnits INTEGER,
    NonComplianceCount INTEGER,
    TrainingProvided INTEGER,
    TrainingDate DATE,
    TrainingInstructor TEXT
);

INSERT INTO GuidelineImplementationAudit VALUES (1, 401, '2025-01-20', 'Auditor_X', 'Oncology', 85, 'Minor_gaps', 'Update_procedures', '2025-02-20', 0, 0.85, '/audit/guideline_401_2025_01.pdf', '2025-01-20', '2025-01-20', 1, 12, 2, 1, '2025-02-01', 'Trainer_A');
INSERT INTO GuidelineImplementationAudit VALUES (2, 402, '2025-02-15', 'Auditor_Y', 'Pediatrics', 70, 'Significant_gaps', 'Revise_workflow', '2025-04-01', 0, 0.70, '/audit/guideline_402_2025_02.pdf', '2025-02-15', '2025-02-15', 1, 8, 5, 0, NULL, NULL);
INSERT INTO GuidelineImplementationAudit VALUES (3, 403, '2025-03-10', 'Auditor_Z', 'Emergency', 95, 'All_compliant', 'N/A', NULL, 1, 0.95, '/audit/guideline_403_2025_03.pdf', '2025-03-10', '2025-03-10', 0, 20, 0, 1, '2025-03-20', 'Trainer_B');

-- VendorContractDetail
CREATE TABLE VendorContractDetail (
    ContractID INTEGER PRIMARY KEY,
    VendorID INTEGER,
    ContractStart DATE,
    ContractEnd DATE,
    ContractValueUSD REAL,
    ServiceScope TEXT,
    PrimaryContact TEXT,
    ContactPhone TEXT,
    PaymentTerms TEXT,
    RenewalOption INTEGER,
    SLAResponseHours INTEGER,
    PenaltyClause TEXT,
    ConfidentialityLevel TEXT,
    GoverningLaw TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    IsActive INTEGER,
    ContractNumber TEXT,
    AmendmentCount INTEGER,
    LastAmendmentDate DATE
);

INSERT INTO VendorContractDetail VALUES (1, 8001, '2024-01-01', '2028-12-31', 2500000.00, 'Equipment_Maintenance', 'Contact_A', '5551234', 'Net30', 1, 24, 'Late_fee', 'High', 'NY', '2024-01-01', '2024-01-01', 1, 'CNTR-8001-2024', 0, NULL);
INSERT INTO VendorContractDetail VALUES (2, 8002, '2025-03-15', '2030-03-14', 1500000.00, 'Pharmacy_Supplies', 'Contact_B', '5555678', 'Net45', 0, 48, 'None', 'Medium', 'CA', '2025-03-15', '2025-03-15', 1, 'CNTR-8002-2025', 1, '2026-06-01');
INSERT INTO VendorContractDetail VALUES (3, 8003, '2023-07-01', '2026-06-30', 500000.00, 'Cleaning_Services', 'Contact_C', '5559012', 'Net60', 1, 72, 'Early_termination', 'Low', 'TX', '2023-07-01', '2023-07-01', 0, 'CNTR-8003-2023', 2, '2025-01-20');

-- HospitalConstructionPhase
CREATE TABLE HospitalConstructionPhase (
    PhaseID INTEGER PRIMARY KEY,
    ProjectID INTEGER,
    PhaseName TEXT,
    StartDate DATE,
    EndDate DATE,
    BudgetUSD REAL,
    ExpenditureUSD REAL,
    ContractorName TEXT,
    LeadEngineer TEXT,
    Status TEXT,
    PercentComplete INTEGER,
    SafetyIncidents INTEGER,
    InspectionsCompleted INTEGER,
    EnvironmentalImpactScore INTEGER,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    IsCritical INTEGER,
    DelayDays INTEGER,
    RiskLevel TEXT
);

INSERT INTO HospitalConstructionPhase VALUES (1, 9001, 'Foundation', '2024-04-01', '2024-09-30', 8000000.00, 4100000.00, 'BuildCo', 'Eng_A', 'OnTrack', 60, 0, 3, 2, 'No_issues', '2024-09-30', '2024-09-30', 1, 0, 'Medium');
INSERT INTO HospitalConstructionPhase VALUES (2, 9001, 'Structural', '2024-10-01', '2025-05-31', 12000000.00, 3000000.00, 'BuildCo', 'Eng_B', 'Delayed', 30, 1, 1, 5, 'Weather_delays', '2025-05-31', '2025-05-31', 1, 15, 'High');
INSERT INTO HospitalConstructionPhase VALUES (3, 9002, 'ParkingLot', '2025-01-15', '2025-04-30', 2000000.00, 500000.00, 'LandscapeInc', 'Eng_C', 'Planned', 0, 0, 0, 1, 'Awaiting_permit', '2025-01-15', '2025-01-15', 0, 0, 'Low');

-- BiohazardMaterialTrackingLog
CREATE TABLE BiohazardMaterialTrackingLog (
    LogID INTEGER PRIMARY KEY,
    MaterialID INTEGER,
    MaterialType TEXT,
    Quantity INTEGER,
    Unit TEXT,
    StorageLocation TEXT,
    ReceivedDate DATE,
    ReleasedDate DATE,
    ReleasedTo TEXT,
    HandlingProtocol TEXT,
    HazardLevel INTEGER,
    DecontaminationMethod TEXT,
    DisposalMethod TEXT,
    ResponsiblePerson TEXT,
    Comments TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    IsActive INTEGER,
    IncidentReported INTEGER,
    IncidentDate DATE
);

INSERT INTO BiohazardMaterialTrackingLog VALUES (1, 6001, 'Blood_Sample', 20, 'vials', 'Freezer_A1', '2025-01-05', '2025-02-10', 'Lab_X', 'ColdChain', 3, 'Autoclave', 'Incineration', 'Tech_A', 'No_issues', '2025-01-05', '2025-01-05', 1, 0, NULL);
INSERT INTO BiohazardMaterialTrackingLog VALUES (2, 6002, 'Tissue_Block', 5, 'blocks', 'Freezer_B2', '2025-02-12', NULL, NULL, 'Standard', 4, 'Formalin', 'Landfill', 'Tech_B', 'Pending_release', '2025-02-12', '2025-02-12', 1, 1, '2025-03-01');
INSERT INTO BiohazardMaterialTrackingLog VALUES (3, 6003, 'Chemical_Reagent', 2, 'liters', 'Cabinet_C3', '2025-03-01', '2025-03-15', 'Lab_Y', 'Ventilated', 5, 'Neutralization', 'Hazardous_Waste', 'Tech_C', 'Spill_occurred', '2025-03-01', '2025-03-01', 0, 1, '2025-03-02');

-- WearableDeviceUsageMetric
CREATE TABLE WearableDeviceUsageMetric (
    UsageID INTEGER PRIMARY KEY,
    DeviceID INTEGER,
    Timestamp DATE,
    HeartRate INTEGER,
    Steps INTEGER,
    SleepHours REAL,
    BatteryLevel INTEGER,
    SyncStatus TEXT,
    FirmwareVersion TEXT,
    GPSLatitude REAL,
    GPSLongitude REAL,
    ActivityType TEXT,
    CaloriesBurned REAL,
    SkinTempC REAL,
    AmbientTempC REAL,
    CreatedAt DATE,
    UpdatedAt DATE,
    IsActive INTEGER,
    DataQualityScore INTEGER,
    ErrorCode INTEGER,
    UserID INTEGER
);

INSERT INTO WearableDeviceUsageMetric VALUES (1, 7001, '2025-03-15', 72, 5400, 7.5, 85, 'Synced', 'v1.2', 40.7128, -74.0060, 'Walking', 250.0, 33.2, 22.5, '2025-03-15', '2025-03-15', 1, 95, 0, 1001);
INSERT INTO WearableDeviceUsageMetric VALUES (2, 7002, '2025-03-15', 80, 3000, 6.0, 60, 'Pending', 'v1.1', 34.0522, -118.2437, 'Running', 320.0, 34.0, 21.0, '2025-03-15', '2025-03-15', 1, 88, 2, 1002);
INSERT INTO WearableDeviceUsageMetric VALUES (3, 7003, '2025-03-15', 65, 1200, 8.0, 95, 'Synced', 'v1.3', 51.5074, -0.1278, 'Sleeping', 0.0, 32.5, 20.0, '2025-03-15', '2025-03-15', 1, 99, 0, 1003);