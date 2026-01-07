-- Patient psychosocial assessment details
CREATE TABLE PatientPsychosocialAssessment (
    ID INTEGER,
    AssessmentDate DATE,
    AnxietyScore INTEGER,
    DepressionScore INTEGER,
    StressLevel INTEGER,
    SocialSupportScore INTEGER,
    EmploymentStatus TEXT,
    LivingSituation TEXT,
    EducationLevel TEXT,
    IncomeBracket TEXT,
    SubstanceUseHistory TEXT,
    SleepQuality TEXT,
    PhysicalActivityLevel TEXT,
    DietaryHabits TEXT,
    MedicationAdherenceScore INTEGER,
    FollowUpNeeded INTEGER,
    CounselorID INTEGER,
    Notes TEXT,
    RiskLevel TEXT,
    CreatedAt DATE
);

INSERT INTO PatientPsychosocialAssessment VALUES (1, '2023-04-12', 5, 7, 4, 8, 'Employed', 'Alone', 'College', 'Mid', 'None', 'Good', 'Moderate', 'Balanced', 9, 1, 23, 'Patient shows progress', 'Low', '2023-04-12');
INSERT INTO PatientPsychosocialAssessment VALUES (2, '2023-05-03', 8, 9, 7, 5, 'Unemployed', 'WithFamily', 'HighSchool', 'Low', 'Alcohol', 'Fair', 'Low', 'HighSugar', 6, 1, 24, 'Needs additional counseling', 'Medium', '2023-05-03');
INSERT INTO PatientPsychosocialAssessment VALUES (3, '2023-06-20', 3, 4, 2, 9, 'Student', 'Dorm', 'Graduate', 'High', 'None', 'Excellent', 'High', 'Vegetarian', 10, 0, 25, 'Stable condition', 'Low', '2023-06-20');

-- Statistics about hospital visitors
CREATE TABLE HospitalVisitorStatistics (
    StatID INTEGER,
    ReportDate DATE,
    TotalVisitors INTEGER,
    AvgVisitDurationMinutes INTEGER,
    PeakHour TEXT,
    VisitorTypeInpatient INTEGER,
    VisitorTypeOutpatient INTEGER,
    VisitorTypeFamily INTEGER,
    VisitorTypeOther INTEGER,
    NewVisitorCount INTEGER,
    ReturningVisitorCount INTEGER,
    VisitorSatisfactionScore REAL,
    SecurityIncidents INTEGER,
    HealthScreeningsPerformed INTEGER,
    VaccinationsAdministered INTEGER,
    AverageAge REAL,
    GenderRatio TEXT,
    MostVisitedWing TEXT,
    AverageCompanionsPerVisitor REAL,
    Notes TEXT
);

INSERT INTO HospitalVisitorStatistics VALUES (101, '2023-07-01', 1240, 45, '14:00', 300, 200, 600, 140, 500, 740, 4.5, 2, 150, 30, 38.2, 'F:M=1.2:1', 'Cardiology', 1.4, 'Seasonal increase in visitors');
INSERT INTO HospitalVisitorStatistics VALUES (102, '2023-08-01', 1150, 42, '13:00', 280, 190, 560, 120, 480, 670, 3.9, 1, 130, 25, 37.5, 'F:M=1.1:1', 'Oncology', 1.3, 'Vaccination drive reduced visitor numbers');
INSERT INTO HospitalVisitorStatistics VALUES (103, '2023-09-01', 1305, 48, '15:00', 320, 210, 650, 125, 520, 785, 4.7, 0, 160, 35, 39.0, 'F:M=1.3:1', 'Emergency', 1.5, 'Policy change extended visiting hours');

-- Requests for medical supplies
CREATE TABLE MedicalSupplyRequisition (
    ReqID INTEGER,
    RequestDate DATE,
    Department TEXT,
    RequestedBy TEXT,
    ItemCode TEXT,
    ItemDescription TEXT,
    QuantityRequested INTEGER,
    UnitPrice REAL,
    TotalCost REAL,
    Supplier TEXT,
    ExpectedDeliveryDate DATE,
    UrgencyLevel TEXT,
    ApprovalStatus TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    ReceivedQuantity INTEGER,
    ReceivedDate DATE,
    DiscrepancyFlag INTEGER,
    Comments TEXT,
    RequisitionBatch TEXT
);

INSERT INTO MedicalSupplyRequisition VALUES (5001, '2023-03-15', 'Surgery', 'DrSmith', 'SC001', 'Surgical Gloves', 200, 0.50, 100.00, 'MedSuppliesCo', '2023-03-20', 'High', 'Approved', 'AdminJones', '2023-03-16', 200, '2023-03-20', 0, 'On time delivery', 'BATCHA1');
INSERT INTO MedicalSupplyRequisition VALUES (5002, '2023-04-10', 'ICU', 'NurseLee', 'SC045', 'IV Tubing', 150, 1.20, 180.00, 'HealthEquipInc', '2023-04-15', 'Medium', 'Pending', NULL, NULL, 0, NULL, 0, 'Awaiting approval', 'BATCHB2');
INSERT INTO MedicalSupplyRequisition VALUES (5003, '2023-05-05', 'Pharmacy', 'PharmClark', 'SC078', 'Pain Relief Medication', 500, 0.30, 150.00, 'PharmaDirect', '2023-05-12', 'Low', 'Approved', 'AdminMiller', '2023-05-06', 480, '2023-05-12', 1, 'Short by 20 units', 'BATCHC3');

-- Versions of radiology protocols
CREATE TABLE RadiologyProtocolVersion (
    ProtocolID INTEGER,
    Modality TEXT,
    VersionNumber TEXT,
    EffectiveDate DATE,
    CreatedBy TEXT,
    ReviewDate DATE,
    Status TEXT,
    Description TEXT,
    RadiationDoseLimit REAL,
    ContrastUsed INTEGER,
    ImageResolution TEXT,
    SliceThickness REAL,
    ScanDurationMinutes INTEGER,
    PatientPreparation TEXT,
    SafetyNotes TEXT,
    EquipmentModel TEXT,
    SoftwareVersion TEXT,
    LastUpdated DATE,
    ChangeLog TEXT,
    ComplianceFlag INTEGER
);

INSERT INTO RadiologyProtocolVersion VALUES (2001, 'CT', 'v1.0', '2022-01-01', 'DrAllen', '2022-01-05', 'Active', 'Standard head CT', 2.5, 1, '512x512', 1.0, 5, 'Fasting 4h', 'Check renal function', 'Siemens SOMATOM', 'SW5.1', '2022-01-05', 'Initial release', 1);
INSERT INTO RadiologyProtocolVersion VALUES (2002, 'MRI', 'v2.1', '2023-03-15', 'DrBaker', '2023-03-20', 'Active', 'Brain MRI with contrast', 0.0, 1, '256x256', 0.8, 30, 'No metal objects', 'Monitor gadolinium dose', 'GE Signa', 'SW7.4', '2023-03-20', 'Added diffusion module', 1);
INSERT INTO RadiologyProtocolVersion VALUES (2003, 'XRay', 'v1.3', '2021-11-10', 'DrClark', '2021-11-12', 'Retired', 'Chest X-ray AP', 0.1, 0, '1024x1024', 0.0, 1, 'Patient standing', 'Standard shielding', 'Philips DigitalDiagnost', 'SW3.2', '2021-11-12', 'Minor parameter tweak', 0);

-- Laboratory quality metrics
CREATE TABLE LaboratoryQualityMetric (
    MetricID INTEGER,
    TestName TEXT,
    MetricDate DATE,
    AccuracyPercent REAL,
    PrecisionPercent REAL,
    TurnaroundTimeMinutes INTEGER,
    SampleRejectionRate REAL,
    ControlLevel INTEGER,
    Technician TEXT,
    InstrumentID TEXT,
    CalibrationStatus TEXT,
    QCResult TEXT,
    Observations TEXT,
    ActionTaken TEXT,
    ReviewedBy TEXT,
    ReviewDate DATE,
    TrendFlag INTEGER,
    TargetAccuracy REAL,
    TargetPrecision REAL,
    Notes TEXT
);

INSERT INTO LaboratoryQualityMetric VALUES (301, 'Glucose', '2023-06-01', 99.5, 98.2, 45, 0.5, 2, 'TechA', 'Inst001', 'Calibrated', 'Pass', 'All within limits', 'None', 'SupervisorX', '2023-06-02', 0, 99.0, 98.0, 'Stable performance');
INSERT INTO LaboratoryQualityMetric VALUES (302, 'Hemoglobin', '2023-06-01', 97.0, 95.5, 60, 1.2, 3, 'TechB', 'Inst005', 'Pending', 'Fail', 'Precision slightly low', 'Recalibration', 'SupervisorY', '2023-06-02', 1, 98.0, 96.0, 'Investigate variance');
INSERT INTO LaboratoryQualityMetric VALUES (303, 'LDH', '2023-06-01', 100.0, 99.0, 40, 0.3, 1, 'TechC', 'Inst009', 'Calibrated', 'Pass', 'Excellent', 'None', 'SupervisorZ', '2023-06-02', 0, 99.5, 98.5, 'Optimal conditions');

-- Staff shift coverage tracking
CREATE TABLE StaffShiftCoverage (
    CoverageID INTEGER,
    ShiftDate DATE,
    ShiftType TEXT,
    Department TEXT,
    RequiredStaff INTEGER,
    AssignedStaff INTEGER,
    VacantPositions INTEGER,
    OvertimeHours REAL,
    ShiftSupervisor TEXT,
    BackupSupervisor TEXT,
    CoverageStatus TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    ShiftStartTime TEXT,
    ShiftEndTime TEXT,
    AverageExperienceYears REAL,
    CertificationRequired TEXT,
    EmergencyCoverageFlag INTEGER,
    ShiftLengthHours INTEGER
);

INSERT INTO StaffShiftCoverage VALUES (401, '2023-07-10', 'Day', 'Emergency', 20, 20, 0, 5.0, 'DrMiller', 'DrLee', 'Full', 'All slots filled', '2023-07-10', '2023-07-10', '08:00', '16:00', 8.5, 'ACLS', 0, 8);
INSERT INTO StaffShiftCoverage VALUES (402, '2023-07-10', 'Night', 'ICU', 15, 13, 2, 2.5, 'DrKim', 'DrPatel', 'Partial', 'Two RN gaps', '2023-07-10', '2023-07-10', '20:00', '04:00', 7.2, 'BLS', 1, 8);
INSERT INTO StaffShiftCoverage VALUES (403, '2023-07-11', 'Evening', 'Surgery', 12, 12, 0, 0.0, 'DrNguyen', 'DrOrozco', 'Full', 'Smooth handover', '2023-07-11', '2023-07-11', '14:00', '22:00', 9.0, 'ATLS', 0, 8);

-- Insurance premium plans
CREATE TABLE InsurancePremiumPlan (
    PlanID INTEGER,
    PlanName TEXT,
    Provider TEXT,
    PremiumAmount REAL,
    DeductibleAmount REAL,
    CoPayAmount REAL,
    OutOfPocketMax REAL,
    CoverageStartDate DATE,
    CoverageEndDate DATE,
    NetworkType TEXT,
    PrescriptionCoverage INTEGER,
    DentalCoverage INTEGER,
    VisionCoverage INTEGER,
    MentalHealthCoverage INTEGER,
    TelehealthCoverage INTEGER,
    WaitingPeriodDays INTEGER,
    EligibilityCriteria TEXT,
    EnrollmentLimit INTEGER,
    CancelationPolicy TEXT,
    PlanNotes TEXT
);

INSERT INTO InsurancePremiumPlan VALUES (9001, 'Standard Health', 'HealthCo', 350.00, 1500.00, 20.00, 5000.00, '2023-01-01', '2023-12-31', 'InNetwork', 1, 0, 1, 1, 1, 30, 'All employees', 500, '30 days notice', 'Basic coverage');
INSERT INTO InsurancePremiumPlan VALUES (9002, 'Premium Plus', 'WellCare', 520.00, 1000.00, 15.00, 3000.00, '2023-01-01', '2023-12-31', 'FullNetwork', 1, 1, 1, 1, 1, 15, 'Full-time staff', 300, 'No penalty within first year', 'Includes dental and vision');
INSERT INTO InsurancePremiumPlan VALUES (9003, 'Selective Plan', 'SecureHealth', 270.00, 2000.00, 25.00, 6000.00, '2023-01-01', '2023-12-31', 'PreferredNetwork', 0, 0, 0, 0, 0, 45, 'Part-time staff', 800, 'Quarterly cancellation', 'Low cost option');

-- Research data processing log
CREATE TABLE ResearchDataProcessingLog (
    LogID INTEGER,
    StudyID TEXT,
    ProcessStep TEXT,
    StartTimestamp DATE,
    EndTimestamp DATE,
    ProcessedBy TEXT,
    RecordsProcessed INTEGER,
    ErrorsEncountered INTEGER,
    ErrorDetails TEXT,
    OutputFilePath TEXT,
    InputFileChecksum TEXT,
    OutputFileChecksum TEXT,
    ValidationStatus TEXT,
    Comments TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    CPUHoursUsed REAL,
    MemoryGBUsed REAL,
    DataVolumeGB REAL,
    Status TEXT
);

INSERT INTO ResearchDataProcessingLog VALUES (7001, 'ST001', 'DataCleaning', '2023-05-01', '2023-05-02', 'AnalystA', 12000, 0, '', '/data/clean/ST001_v1.csv', 'abc123', 'def456', 'Pass', 'Cleaned without issues', '2023-05-02', '2023-05-02', 2.5, 8.0, 3.2, 'Completed');
INSERT INTO ResearchDataProcessingLog VALUES (7002, 'ST002', 'Normalization', '2023-05-10', '2023-05-11', 'AnalystB', 8500, 2, 'Missing values in column 5', '/data/norm/ST002_v1.csv', 'ghi789', 'jkl012', 'Warning', 'Minor imputation applied', '2023-05-11', '2023-05-11', 1.8, 6.5, 2.1, 'Completed');
INSERT INTO ResearchDataProcessingLog VALUES (7003, 'ST003', 'StatisticalAnalysis', '2023-06-01', '2023-06-03', 'AnalystC', 15000, 0, '', '/results/analysis/ST003_results.xlsx', 'mno345', 'pqr678', 'Pass', 'All tests passed', '2023-06-03', '2023-06-03', 4.0, 12.0, 5.0, 'Completed');

-- Facility energy benchmark metrics
CREATE TABLE FacilityEnergyBenchmarkMetric (
    BenchmarkID INTEGER,
    FacilitySection TEXT,
    MeasurementDate DATE,
    EnergyConsumptionKWh REAL,
    PeakDemandKW REAL,
    BaselineConsumptionKWh REAL,
    SavingsPercent REAL,
    CO2EmissionsKg REAL,
    WeatherAdjustmentFactor REAL,
    BenchmarkTargetKWh REAL,
    AchievedTargetFlag INTEGER,
    EnergyCostUSD REAL,
    CostSavingsUSD REAL,
    EnergyProvider TEXT,
    ContractType TEXT,
    MeterID TEXT,
    CalibrationDate DATE,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedAt DATE
);

INSERT INTO FacilityEnergyBenchmarkMetric VALUES (8001, 'EastWing', '2023-06-30', 125000.0, 600.0, 130000.0, 3.8, 52000.0, 1.02, 128000.0, 0, 15000.0, 300.0, 'GreenPowerCo', 'Fixed', 'MTR1001', '2023-01-15', 'Improved HVAC efficiency', 'EnergyTeam', '2023-07-01');
INSERT INTO FacilityEnergyBenchmarkMetric VALUES (8002, 'WestWing', '2023-06-30', 98000.0, 450.0, 100000.0, 2.0, 41000.0, 0.98, 99000.0, 1, 11800.0, 200.0, 'EcoEnergy', 'Variable', 'MTR1002', '2023-02-20', 'Solar panels offset', 'EnergyTeam', '2023-07-01');
INSERT INTO FacilityEnergyBenchmarkMetric VALUES (8003, 'RadiologyDept', '2023-06-30', 56000.0, 300.0, 58000.0, 3.4, 23000.0, 1.00, 57000.0, 0, 6800.0, 250.0, 'PowerGridInc', 'Fixed', 'MTR2001', '2023-03-05', 'New imaging equipment more efficient', 'EnergyTeam', '2023-07-01');

-- Log of patient mobility devices
CREATE TABLE PatientMobilityDeviceLog (
    LogID INTEGER,
    PatientID INTEGER,
    DeviceID TEXT,
    AllocationDate DATE,
    ReturnDate DATE,
    DeviceType TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    ConditionAtIssue TEXT,
    ConditionAtReturn TEXT,
    MaintenancePerformed INTEGER,
    LastMaintenanceDate DATE,
    UsageHours REAL,
    AssignedBy TEXT,
    ReasonForAllocation TEXT,
    Notes TEXT,
    Status TEXT,
    ComplianceChecked INTEGER,
    ReviewedBy TEXT
);

INSERT INTO PatientMobilityDeviceLog VALUES (9001, 101, 'DEV001', '2023-04-01', '2023-06-15', 'Wheelchair', 'MobiCare', 'WC-200', 'SN12345', 'Good', 'Good', 1, '2023-05-01', 150.0, 'NurseA', 'Post-surgery mobility', 'No issues', 'Returned', 1, 'PhysioB');
INSERT INTO PatientMobilityDeviceLog VALUES (9002, 102, 'DEV002', '2023-05-10', NULL, 'Walker', 'HealthStep', 'WK-100', 'SN67890', 'Excellent', NULL, 0, NULL, 80.0, 'TherapistC', 'Fall risk mitigation', 'Awaiting discharge', 'Active', 0, 'NurseD');
INSERT INTO PatientMobilityDeviceLog VALUES (9003, 103, 'DEV003', '2023-03-20', '2023-04-30', 'Crutches', 'StepAid', 'CR-50', 'SN54321', 'Fair', 'Fair', 1, '2023-04-10', 60.0, 'DoctorE', 'Fracture support', 'Minor scuff on frame', 'Returned', 1, 'PhysioF');