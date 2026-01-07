-- Clinical equipment maintenance and usage log
CREATE TABLE ClinicalEquipmentLog
(
    LogID INTEGER PRIMARY KEY,
    EquipmentID TEXT,
    EquipmentType TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    InstallationDate DATE,
    LastMaintenanceDate DATE,
    NextMaintenanceDue DATE,
    Location TEXT,
    Status TEXT,
    CalibrationStatus TEXT,
    WarrantyExpiration DATE,
    AssignedToStaffID INTEGER,
    UsageHours REAL,
    Voltage REAL,
    PowerRating REAL,
    HeatDissipation REAL,
    MaintenanceNotes TEXT,
    ComplianceFlag INTEGER,
    CreatedAt DATE
);

INSERT INTO ClinicalEquipmentLog (LogID, EquipmentID, EquipmentType, Manufacturer, ModelNumber, SerialNumber, InstallationDate, LastMaintenanceDate, NextMaintenanceDue, Location, Status, CalibrationStatus, WarrantyExpiration, AssignedToStaffID, UsageHours, Voltage, PowerRating, HeatDissipation, MaintenanceNotes, ComplianceFlag, CreatedAt) VALUES
(1, 'EQ001', 'Ventilator', 'MedTech', 'V100', 'SN12345', '2020-01-15', '2023-06-01', '2024-06-01', 'ICU', 'Active', 'Calibrated', '2025-01-15', 101, 1500.5, 220.0, 5.5, 0.8, 'Routine check completed', 1, '2023-06-01'),
(2, 'EQ002', 'Defibrillator', 'HeartCo', 'D200', 'SN54321', '2019-11-20', '2023-05-20', '2024-05-20', 'ER', 'Active', 'Calibrated', '2024-11-20', 102, 800.0, 110.0, 3.2, 0.5, 'Battery replaced', 1, '2023-05-20'),
(3, 'EQ003', 'InfusionPump', 'FlowMed', 'IP300', 'SN67890', '2021-03-10', '2023-04-15', '2024-04-15', 'Ward5', 'Active', 'Pending', '2026-03-10', 103, 1200.2, 230.0, 4.0, 0.6, 'Software update applied', 0, '2023-04-15');

-- Detailed records of patient transports within the hospital
CREATE TABLE PatientTransportationDetail
(
    TransportID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    TransportDate DATE,
    TransportMode TEXT,
    PickupLocation TEXT,
    DropoffLocation TEXT,
    DriverID INTEGER,
    VehicleID TEXT,
    ReasonForTransport TEXT,
    TransportDurationMinutes INTEGER,
    EscortStaffID INTEGER,
    WheelchairRequired INTEGER,
    OxygenSupport INTEGER,
    SpecialEquipment TEXT,
    TransportNotes TEXT,
    RecordedByStaffID INTEGER,
    CreatedAt DATE,
    UpdatedAt DATE,
    TransportStatus TEXT,
    EstimatedArrival TEXT,
    ActualArrival TEXT
);

INSERT INTO PatientTransportationDetail (TransportID, PatientID, TransportDate, TransportMode, PickupLocation, DropoffLocation, DriverID, VehicleID, ReasonForTransport, TransportDurationMinutes, EscortStaffID, WheelchairRequired, OxygenSupport, SpecialEquipment, TransportNotes, RecordedByStaffID, CreatedAt, UpdatedAt, TransportStatus, EstimatedArrival, ActualArrival) VALUES
(1, 1001, '2023-07-01', 'Wheelchair', 'Room101', 'Radiology', 201, 'VAN01', 'MRI Scan', 30, 301, 1, 0, '', 'No issues', 401, '2023-07-01', '2023-07-01', 'Completed', '08:30', '08:35'),
(2, 1002, '2023-07-02', 'Stretcher', 'ICU', 'Surgery', 202, 'AMB02', 'Pre‑op Transfer', 45, 302, 0, 1, 'Ventilator', 'Patient stable', 402, '2023-07-02', '2023-07-02', 'Completed', '09:00', '09:05'),
(3, 1003, '2023-07-03', 'Ambulance', 'ER', 'Cardiology', 203, 'AMB03', 'Urgent Transfer', 20, 303, 0, 0, '', 'Arrived on time', 403, '2023-07-03', '2023-07-03', 'Completed', '10:15', '10:16');

-- Catalog of radiology imaging protocols
CREATE TABLE RadiologyProtocolCatalog
(
    ProtocolID INTEGER PRIMARY KEY,
    Modality TEXT,
    ProcedureName TEXT,
    ContrastAgent TEXT,
    DoseLevel REAL,
    PatientPosition TEXT,
    ScanDurationMinutes INTEGER,
    ImageResolution TEXT,
    SliceThickness REAL,
    ReconstructionAlgorithm TEXT,
    RadiationSafetyLevel TEXT,
    TechnologistID INTEGER,
    RadiologistID INTEGER,
    CreationDate DATE,
    LastUpdated DATE,
    ApplicableDiagnosis TEXT,
    Notes TEXT,
    PriorityLevel INTEGER,
    Status TEXT,
    VersionNumber INTEGER,
    ApprovalDate DATE
);

INSERT INTO RadiologyProtocolCatalog (ProtocolID, Modality, ProcedureName, ContrastAgent, DoseLevel, PatientPosition, ScanDurationMinutes, ImageResolution, SliceThickness, ReconstructionAlgorithm, RadiationSafetyLevel, TechnologistID, RadiologistID, CreationDate, LastUpdated, ApplicableDiagnosis, Notes, PriorityLevel, Status, VersionNumber, ApprovalDate) VALUES
(1, 'CT', 'HeadCT', 'Iodine', 5.2, 'Supine', 10, '512x512', 1.0, 'Standard', 'Level2', 501, 601, '2022-01-10', '2023-06-01', 'Head Trauma', 'Standard head protocol', 1, 'Active', 3, '2023-05-20'),
(2, 'MRI', 'KneeMRI', 'Gadolinium', 0.0, 'Prone', 45, '256x256', 0.5, 'FFT', 'Level1', 502, 602, '2021-09-15', '2023-05-15', 'Knee Injury', 'High resolution', 2, 'Active', 2, '2023-04-30'),
(3, 'XRay', 'ChestXRay', 'None', 0.1, 'Standing', 5, '1024x1024', 0.0, 'None', 'Level3', 503, 603, '2020-03-20', '2023-04-10', 'Respiratory Symptoms', 'Portable setup', 3, 'Active', 1, '2023-03-01');

-- Batches of pharmacy orders for inventory processing
CREATE TABLE PharmacyOrderBatch
(
    BatchID INTEGER PRIMARY KEY,
    OrderID INTEGER,
    PharmacyID INTEGER,
    BatchNumber TEXT,
    ReceivedDate DATE,
    ProcessedDate DATE,
    ExpirationDate DATE,
    TotalItems INTEGER,
    TotalQuantity INTEGER,
    SupplierID INTEGER,
    TemperatureControlled INTEGER,
    StorageLocation TEXT,
    BatchStatus TEXT,
    PharmacistID INTEGER,
    QualityCheckPassed INTEGER,
    Comments TEXT,
    CreatedBy TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    VerifiedBy INTEGER,
    VerificationDate DATE
);

INSERT INTO PharmacyOrderBatch (BatchID, OrderID, PharmacyID, BatchNumber, ReceivedDate, ProcessedDate, ExpirationDate, TotalItems, TotalQuantity, SupplierID, TemperatureControlled, StorageLocation, BatchStatus, PharmacistID, QualityCheckPassed, Comments, CreatedBy, CreatedAt, UpdatedAt, VerifiedBy, VerificationDate) VALUES
(1, 10001, 10, 'BATCH001', '2023-06-15', '2023-06-16', '2024-06-15', 25, 500, 2001, 1, 'ColdRoomA', 'Processed', 301, 1, 'All items verified', 'admin', '2023-06-15', '2023-06-16', 401, '2023-06-16'),
(2, 10002, 11, 'BATCH002', '2023-06-20', '2023-06-21', '2025-06-20', 30, 750, 2002, 0, 'ShelfB1', 'Pending', 302, 0, 'Awaiting QC', 'tech1', '2023-06-20', '2023-06-21', NULL, NULL),
(3, 10003, 12, 'BATCH003', '2023-06-25', '2023-06-26', '2023-12-25', 15, 300, 2003, 1, 'ColdRoomB', 'Processed', 303, 1, 'Temperature stable', 'tech2', '2023-06-25', '2023-06-26', 402, '2023-06-26');

-- Interpretations of genetic variants for clinical reporting
CREATE TABLE GeneticVariantInterpretation
(
    InterpretationID INTEGER PRIMARY KEY,
    VariantID TEXT,
    GeneSymbol TEXT,
    ClinicalSignificance TEXT,
    Recommendation TEXT,
    EvidenceLevel TEXT,
    ReviewDate DATE,
    ReviewerID INTEGER,
    PatientID INTEGER,
    SampleID TEXT,
    AlleleFrequency REAL,
    PopulationData TEXT,
    PhenotypeAssociated TEXT,
    PathogenicityScore REAL,
    InteractionNotes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    ValidationStatus TEXT,
    LaboratoryID INTEGER,
    ReportVersion INTEGER,
    ConfidentialityFlag INTEGER
);

INSERT INTO GeneticVariantInterpretation (InterpretationID, VariantID, GeneSymbol, ClinicalSignificance, Recommendation, EvidenceLevel, ReviewDate, ReviewerID, PatientID, SampleID, AlleleFrequency, PopulationData, PhenotypeAssociated, PathogenicityScore, InteractionNotes, CreatedAt, UpdatedAt, ValidationStatus, LaboratoryID, ReportVersion, ConfidentialityFlag) VALUES
(1, 'VAR001', 'BRCA1', 'Pathogenic', 'HighRiskManagement', 'Strong', '2023-05-01', 501, 1001, 'SMP001', 0.0003, 'EUR', 'BreastCancer', 9.5, 'Family history noted', '2023-05-01', '2023-05-10', 'Validated', 701, 1, 1),
(2, 'VAR002', 'CFTR', 'LikelyBenign', 'RoutineMonitoring', 'Moderate', '2023-04-15', 502, 1002, 'SMP002', 0.02, 'AFR', 'CysticFibrosisCarrier', 2.1, 'No clinical impact', '2023-04-15', '2023-04-20', 'Validated', 702, 1, 0),
(3, 'VAR003', 'APOE', 'Uncertain', 'FurtherTesting', 'Weak', '2023-06-01', 503, 1003, 'SMP003', 0.15, 'EAS', 'AlzheimerRisk', 5.0, 'Requires longitudinal study', '2023-06-01', '2023-06-05', 'Pending', 703, 2, 1);

-- Simulated emergency response scenarios for drills and training
CREATE TABLE EmergencyResponseScenario
(
    ScenarioID INTEGER PRIMARY KEY,
    ScenarioName TEXT,
    Description TEXT,
    ActivationDate DATE,
    DeactivationDate DATE,
    LeadCoordinatorID INTEGER,
    InvolvedDepartments TEXT,
    RequiredResources TEXT,
    EstimatedDurationMinutes INTEGER,
    DrillPerformed INTEGER,
    EvaluationScore REAL,
    LessonsLearned TEXT,
    UpdatedBy INTEGER,
    UpdatedAt DATE,
    Status TEXT,
    RiskLevel TEXT,
    NotificationMethod TEXT,
    CommandCenterContact TEXT,
    BackupLocation TEXT,
    DrillFrequencyMonths INTEGER,
    ComplianceCheck INTEGER
);

INSERT INTO EmergencyResponseScenario (ScenarioID, ScenarioName, Description, ActivationDate, DeactivationDate, LeadCoordinatorID, InvolvedDepartments, RequiredResources, EstimatedDurationMinutes, DrillPerformed, EvaluationScore, LessonsLearned, UpdatedBy, UpdatedAt, Status, RiskLevel, NotificationMethod, CommandCenterContact, BackupLocation, DrillFrequencyMonths, ComplianceCheck) VALUES
(1, 'FireInWard', 'Simulated fire outbreak in Ward 3', '2023-03-01', '2023-03-01', 801, 'FireDept,Security,Nursing', 'Extinguishers,Alarms,ExitSigns', 30, 1, 88.5, 'Improved alarm response time', 901, '2023-03-01', 'Completed', 'High', 'PASystem', '5551234', 'ControlRoomB', 12, 1),
(2, 'MassCasualty', 'Large scale trauma incident', '2023-05-15', '2023-05-15', 802, 'ER,Surgery,Ambulance,Pharmacy', 'TraumaKits,Stretchers,MedSupplies', 120, 1, 92.0, 'Better triage coordination', 902, '2023-05-15', 'Completed', 'Critical', 'SMSAlert', '5555678', 'BackupSiteA', 6, 1),
(3, 'ChemicalSpill', 'Minor chemical spill in Lab', '2023-07-10', '2023-07-10', 803, 'LabSafety,Environmental,Housekeeping', 'SpillKits,ProtectiveGear', 45, 0, NULL, 'Pending assessment', 903, '2023-07-10', 'Scheduled', 'Medium', 'Email', '5559012', 'SafetyRoom', 9, 0);

-- Facility level energy consumption tracking
CREATE TABLE FacilityEnergyConsumption
(
    RecordID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    RecordDate DATE,
    ElectricityKWh REAL,
    GasTherms REAL,
    WaterLiters REAL,
    SteamKg REAL,
    RenewableSourcePercentage REAL,
    PeakDemandKW REAL,
    AvgLoadKW REAL,
    EnergyCostUSD REAL,
    CarbonEmissionsKg REAL,
    HVACUsageHours REAL,
    LightingUsageHours REAL,
    EquipmentUsageHours REAL,
    WeatherCondition TEXT,
    OccupancyRate REAL,
    CreatedBy INTEGER,
    CreatedAt DATE,
    UpdatedAt DATE,
    AuditFlag INTEGER
);

INSERT INTO FacilityEnergyConsumption (RecordID, FacilityID, RecordDate, ElectricityKWh, GasTherms, WaterLiters, SteamKg, RenewableSourcePercentage, PeakDemandKW, AvgLoadKW, EnergyCostUSD, CarbonEmissionsKg, HVACUsageHours, LightingUsageHours, EquipmentUsageHours, WeatherCondition, OccupancyRate, CreatedBy, CreatedAt, UpdatedAt, AuditFlag) VALUES
(1, 1, '2023-06-30', 125000.5, 4500.2, 300000.0, 1200.0, 22.5, 850.0, 600.0, 15000.0, 75000.0, 720.0, 500.0, 320.0, 'Sunny', 0.85, 1001, '2023-07-01', '2023-07-01', 1),
(2, 2, '2023-06-30', 98000.0, 3800.0, 250000.0, 900.0, 18.0, 720.0, 540.0, 12000.0, 62000.0, 680.0, 460.0, 290.0, 'Rainy', 0.78, 1002, '2023-07-01', '2023-07-01', 1),
(3, 3, '2023-06-30', 112000.0, 4100.5, 270000.0, 1000.0, 20.0, 790.0, 560.0, 13800.0, 69000.0, 700.0, 480.0, 310.0, 'Cloudy', 0.82, 1003, '2023-07-01', '2023-07-01', 0);

-- Matrix of staff competencies and certifications
CREATE TABLE StaffCompetencyMatrix
(
    MatrixID INTEGER PRIMARY KEY,
    StaffID INTEGER,
    Department TEXT,
    Role TEXT,
    CompetencyArea TEXT,
    CompetencyLevel INTEGER,
    CertificationID TEXT,
    CertificationExpiration DATE,
    LastAssessmentDate DATE,
    AssessorID INTEGER,
    TrainingHours REAL,
    SkillGapNotes TEXT,
    DevelopmentPlan TEXT,
    Status TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    ReviewedBy INTEGER,
    ReviewDate DATE,
    ActiveFlag INTEGER,
    Comments TEXT,
    LastPromotionDate DATE
);

INSERT INTO StaffCompetencyMatrix (MatrixID, StaffID, Department, Role, CompetencyArea, CompetencyLevel, CertificationID, CertificationExpiration, LastAssessmentDate, AssessorID, TrainingHours, SkillGapNotes, DevelopmentPlan, Status, CreatedAt, UpdatedAt, ReviewedBy, ReviewDate, ActiveFlag, Comments, LastPromotionDate) VALUES
(1, 2001, 'Radiology', 'Technician', 'Imaging', 4, 'CERT001', '2025-12-31', '2023-04-01', 301, 40.5, 'Need advanced MRI training', 'Enroll in MRIAdvancedCourse', 'Active', '2022-01-15', '2023-04-01', 401, '2023-04-01', 1, 'Good performance', '2022-12-01'),
(2, 2002, 'Pharmacy', 'Pharmacist', 'Compounding', 5, 'CERT002', '2024-06-30', '2023-03-15', 302, 20.0, 'None', 'Maintain certification', 'Active', '2021-06-10', '2023-03-15', 402, '2023-03-15', 1, 'Excellent', '2022-06-10'),
(3, 2003, 'ICU', 'Nurse', 'CriticalCare', 3, 'CERT003', '2023-11-30', '2023-01-20', 303, 35.0, 'Ventilator management', 'Complete ventilator workshop', 'Active', '2020-03-05', '2023-01-20', 403, '2023-01-20', 1, 'Improving', '2021-03-05');

-- Metrics collected from community health programs
CREATE TABLE CommunityHealthMetric
(
    MetricID INTEGER PRIMARY KEY,
    CommunityID INTEGER,
    MetricName TEXT,
    MetricValue REAL,
    MeasurementDate DATE,
    Unit TEXT,
    DataSource TEXT,
    CollectedBy INTEGER,
    ConfidenceIntervalLow REAL,
    ConfidenceIntervalHigh REAL,
    PopulationSampleSize INTEGER,
    AgeGroup TEXT,
    Gender TEXT,
    SocioeconomicStatus TEXT,
    GeographicArea TEXT,
    TrendDirection TEXT,
    TargetValue REAL,
    AchievedFlag INTEGER,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO CommunityHealthMetric (MetricID, CommunityID, MetricName, MetricValue, MeasurementDate, Unit, DataSource, CollectedBy, ConfidenceIntervalLow, ConfidenceIntervalHigh, PopulationSampleSize, AgeGroup, Gender, SocioeconomicStatus, GeographicArea, TrendDirection, TargetValue, AchievedFlag, Notes, CreatedAt, UpdatedAt) VALUES
(1, 10, 'VaccinationRate', 78.5, '2023-05-01', 'Percent', 'Survey', 501, 75.0, 82.0, 1200, 'All', 'All', 'Mixed', 'NorthDistrict', 'Up', 80.0, 0, 'Slightly below target', '2023-05-02', '2023-05-02'),
(2, 11, 'ObesityPrevalence', 22.3, '2023-04-15', 'Percent', 'ClinicData', 502, 20.5, 24.1, 950, 'Adults', 'All', 'LowIncome', 'EastSide', 'Down', 20.0, 0, 'Rising trend', '2023-04-16', '2023-04-16'),
(3, 12, 'AsthmaIncidence', 5.7, '2023-06-10', 'PerThousand', 'HospitalRecords', 503, 5.0, 6.4, 800, 'Children', 'All', 'MiddleIncome', 'SouthZone', 'Stable', 5.0, 0, 'Stable incidence', '2023-06-11', '2023-06-11');

-- Detailed patient outcome surveys
CREATE TABLE PatientOutcomeSurveyDetail
(
    SurveyID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    SurveyDate DATE,
    SurveyType TEXT,
    Question1Rating INTEGER,
    Question2Rating INTEGER,
    Question3Rating INTEGER,
    Question4Rating INTEGER,
    Question5Rating INTEGER,
    OverallSatisfaction INTEGER,
    Comments TEXT,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    SurveyAdminStaffID INTEGER,
    CreatedAt DATE,
    UpdatedAt DATE,
    SurveyMethod TEXT,
    Location TEXT,
    TimeTakenMinutes INTEGER,
    AnonymizedFlag INTEGER,
    VersionNumber INTEGER
);

INSERT INTO PatientOutcomeSurveyDetail (SurveyID, PatientID, SurveyDate, SurveyType, Question1Rating, Question2Rating, Question3Rating, Question4Rating, Question5Rating, OverallSatisfaction, Comments, FollowUpRequired, FollowUpDate, SurveyAdminStaffID, CreatedAt, UpdatedAt, SurveyMethod, Location, TimeTakenMinutes, AnonymizedFlag, VersionNumber) VALUES
(1, 1001, '2023-07-01', 'Discharge', 4, 5, 4, 5, 4, 5, 'Very satisfied', 0, NULL, 601, '2023-07-01', '2023-07-01', 'Paper', 'Room101', 15, 1, 1),
(2, 1002, '2023-07-02', 'FollowUp', 3, 4, 3, 4, 3, 4, 'Good overall', 1, '2023-07-15', 602, '2023-07-02', '2023-07-02', 'Electronic', 'ClinicA', 20, 0, 1),
(3, 1003, '2023-07-03', 'Outpatient', 5, 5, 5, 5, 5, 5, 'Excellent care', 0, NULL, 603, '2023-07-03', '2023-07-03', 'Phone', 'FrontDesk', 10, 1, 1);