-- Facility Energy Budget
CREATE TABLE FacilityEnergyBudget
(
    Year INTEGER,
    FacilityID INTEGER,
    ElectricityCost REAL,
    WaterCost REAL,
    GasCost REAL,
    RenewablePercentage REAL,
    AvgTemp REAL,
    AvgHumidity REAL,
    EnergySavingInitiatives TEXT,
    MaintenanceCost REAL,
    TotalArea REAL,
    OccupancyRate REAL,
    CoolingLoad REAL,
    HeatingLoad REAL,
    EnergyStarRating INTEGER,
    SolarPanelCount INTEGER,
    BackupGeneratorHours INTEGER,
    LightingUpgrade BOOLEAN,
    HVACUpgrade BOOLEAN,
    WasteReductionMetric REAL
);

INSERT INTO FacilityEnergyBudget VALUES (2022, 1, 120000.50, 15000.20, 8000.75, 22.5, 21.3, 45.0, 'LED retrofit; solar shading', 5000.00, 35000.0, 0.85, 1800.5, 1400.2, 4, 150, 200, 1, 1, 12.3);
INSERT INTO FacilityEnergyBudget VALUES (2023, 1, 115000.00, 14800.00, 7900.00, 25.0, 20.8, 44.5, 'building automation upgrade', 5200.00, 35200.0, 0.88, 1750.0, 1350.0, 5, 160, 190, 1, 1, 13.0);
INSERT INTO FacilityEnergyBudget VALUES (2024, 2, 90000.75, 12000.60, 6000.40, 30.0, 22.0, 46.0, 'green roof installation', 4800.00, 28000.0, 0.90, 1500.0, 1100.0, 5, 120, 150, 1, 0, 11.5);

-- Staff Training Module
CREATE TABLE StaffTrainingModule
(
    ModuleID INTEGER,
    Title TEXT,
    Description TEXT,
    Department TEXT,
    DurationHours INTEGER,
    DeliveryMethod TEXT,
    TrainerName TEXT,
    CertificationRequired BOOLEAN,
    PassScore INTEGER,
    CreatedDate DATE,
    UpdatedDate DATE,
    Version INTEGER,
    Language TEXT,
    AudienceLevel TEXT,
    SeatsAvailable INTEGER,
    EnrollmentCount INTEGER,
    OnlineLink TEXT,
    AssessmentType TEXT,
    CreditsEarned INTEGER,
    IsMandatory BOOLEAN
);

INSERT INTO StaffTrainingModule VALUES (101, 'Infection Control Basics', 'Fundamentals of infection prevention', 'Nursing', 4, 'Classroom', 'Alice Smith', 1, 80, '2022-01-15', '2022-06-01', 2, 'English', 'Beginner', 30, 25, 'http://training.hospital.org/infection', 'Quiz', 1, 1);
INSERT INTO StaffTrainingModule VALUES (102, 'Advanced EHR Navigation', 'Deep dive into electronic health record system', 'IT', 6, 'Online', 'Bob Lee', 0, 70, '2021-11-01', '2022-02-20', 3, 'English', 'Intermediate', 40, 38, 'http://training.hospital.org/ehr', 'Practical', 2, 0);
INSERT INTO StaffTrainingModule VALUES (103, 'Leadership Skills for Supervisors', 'Developing leadership competencies', 'Administration', 8, 'Hybrid', 'Carol Jones', 0, 85, '2023-03-10', '2023-04-15', 1, 'English', 'Advanced', 20, 15, 'http://training.hospital.org/leadership', 'Project', 3, 1);

-- Environmental Sensor Station
CREATE TABLE EnvironmentalSensorStation
(
    StationID INTEGER,
    Name TEXT,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    SensorType TEXT,
    MeasurementUnit TEXT,
    CalibrationDate DATE,
    FirmwareVersion TEXT,
    BatteryLevel REAL,
    SignalStrength REAL,
    DataTransmissionInterval INTEGER,
    UptimeHours INTEGER,
    LastMaintenanceDate DATE,
    Status TEXT,
    OwnerDepartment TEXT,
    AlertThreshold REAL,
    CurrentReading REAL,
    LatitudeOffset REAL,
    LongitudeOffset REAL
);

INSERT INTO EnvironmentalSensorStation VALUES (201, 'North Wing Temp', 40.7128, -74.0060, '2022-02-01', 'Temperature', 'Celsius', '2023-01-10', 'v1.2.3', 95.0, -70.0, 15, 8000, '2023-05-20', 'Active', 'Facilities', 30.0, 22.5, 0.0001, -0.0002);
INSERT INTO EnvironmentalSensorStation VALUES (202, 'East Wing Humidity', 40.7130, -74.0055, '2022-03-15', 'Humidity', 'Percent', '2023-02-12', 'v1.2.4', 88.0, -68.0, 10, 7500, '2023-06-10', 'Active', 'Facilities', 70.0, 55.2, 0.0002, -0.0001);
INSERT INTO EnvironmentalSensorStation VALUES (203, 'South Wing CO2', 40.7125, -74.0065, '2021-12-20', 'CO2', 'ppm', '2022-12-01', 'v1.1.9', 92.0, -72.0, 20, 9000, '2023-04-05', 'Active', 'Facilities', 1000.0, 620.0, -0.0001, 0.0003);

-- Supply Chain Vendor Performance
CREATE TABLE SupplyChainVendorPerformance
(
    VendorID INTEGER,
    VendorName TEXT,
    ContractStartDate DATE,
    ContractEndDate DATE,
    OnTimeDeliveryRate REAL,
    DefectRate REAL,
    AvgLeadTimeDays REAL,
    ServiceScore INTEGER,
    ComplianceScore INTEGER,
    AnnualSpend REAL,
    Rating TEXT,
    LastAuditDate DATE,
    ContactPerson TEXT,
    ContactEmail TEXT,
    PhoneNumber TEXT,
    PaymentTerms TEXT,
    WarrantyCoverage TEXT,
    SustainabilityScore INTEGER,
    RiskLevel TEXT,
    Notes TEXT
);

INSERT INTO SupplyChainVendorPerformance VALUES (301, 'MediSupply Co', '2020-01-01', '2025-12-31', 96.5, 1.2, 4.5, 88, 92, 250000.00, 'A', '2023-03-15', 'David Clark', 'david.clark@medisupply.com', '555-1234', 'Net30', '2 years parts', 85, 'Low', 'Preferred vendor for consumables');
INSERT INTO SupplyChainVendorPerformance VALUES (302, 'HealthTech Instruments', '2019-06-01', '2024-05-31', 92.0, 0.8, 6.0, 85, 90, 400000.00, 'B', '2023-01-20', 'Emma Liu', 'emma.liu@healthtech.com', '555-5678', 'Net45', '3 years service', 78, 'Medium', 'Key supplier for imaging devices');
INSERT INTO SupplyChainVendorPerformance VALUES (303, 'CleanAir Solutions', '2021-04-15', '2026-04-14', 98.0, 0.5, 3.0, 90, 95, 120000.00, 'A', '2023-02-10', 'Frank Moore', 'frank.moore@cleanair.com', '555-9012', 'Net30', '5 years filter warranty', 90, 'Low', 'Handles HVAC filters and ducts');

-- Hospital Construction Phase
CREATE TABLE HospitalConstructionPhase
(
    PhaseID INTEGER,
    PhaseName TEXT,
    StartDate DATE,
    EndDate DATE,
    BudgetAllocated REAL,
    BudgetUsed REAL,
    ContractorName TEXT,
    ContractorContact TEXT,
    Milestone1Date DATE,
    Milestone2Date DATE,
    Milestone3Date DATE,
    Status TEXT,
    PercentComplete REAL,
    SafetyIncidents INTEGER,
    InspectionScore INTEGER,
    PermitsAcquired INTEGER,
    EnvironmentalImpactScore REAL,
    EnergyEfficiencyTarget REAL,
    Notes TEXT,
    ProjectManager TEXT
);

INSERT INTO HospitalConstructionPhase VALUES (401, 'East Wing Expansion', '2022-05-01', '2024-12-31', 5000000.00, 2100000.00, 'BuildRight LLC', '555-2000', '2022-08-15', '2023-04-20', '2024-06-10', 'InProgress', 42.0, 0, 88, 5, 3.2, 15.0, 'Phase includes new ICU floors', 'Laura Green');
INSERT INTO HospitalConstructionPhase VALUES (402, 'Parking Structure Upgrade', '2021-09-15', '2023-09-30', 2000000.00, 1800000.00, 'StoneWorks Inc', '555-2100', '2021-12-01', '2022-07-10', '2023-03-05', 'InProgress', 90.0, 1, 92, 4, 2.5, 18.0, 'Added electric vehicle charging stations', 'Mark Davis');
INSERT INTO HospitalConstructionPhase VALUES (403, 'Roof Replacement', '2023-01-10', '2023-11-30', 800000.00, 250000.00, 'RoofMasters', '555-2200', '2023-02-15', '2023-06-20', '2023-10-01', 'Planned', 0.0, 0, 0, 0, 1.0, 20.0, 'Eco-friendly roofing material', 'Samantha Lee');

-- Medical Device Warranty Info
CREATE TABLE MedicalDeviceWarrantyInfo
(
    DeviceID INTEGER,
    SerialNumber TEXT,
    ModelNumber TEXT,
    Manufacturer TEXT,
    PurchaseDate DATE,
    WarrantyStartDate DATE,
    WarrantyEndDate DATE,
    WarrantyPeriodMonths INTEGER,
    CoverageDetails TEXT,
    ServiceLevelAgreement TEXT,
    SupportContact TEXT,
    SupportPhone TEXT,
    SupportEmail TEXT,
    ReplacementPolicy TEXT,
    ExtendedWarranty BOOLEAN,
    ExtendedWarrantyEndDate DATE,
    WarrantyCost REAL,
    LastServiceDate DATE,
    NextServiceDue DATE,
    IsUnderWarranty BOOLEAN
);

INSERT INTO MedicalDeviceWarrantyInfo VALUES (501, 'SN12345A', 'MD-2000', 'MedTech Corp', '2021-03-15', '2021-04-01', '2023-04-01', 24, 'Parts and labor', '24/7 onsite', 'John Doe', '555-3001', 'support@medtech.com', 'Replace if defective', 0, NULL, 5000.00, '2022-12-01', '2023-12-01', 1);
INSERT INTO MedicalDeviceWarrantyInfo VALUES (502, 'SN67890B', 'XR-500', 'Imaging Solutions', '2020-07-20', '2020-08-01', '2022-08-01', 24, 'Components only', 'Business hours', 'Jane Smith', '555-3002', 'service@imagingsol.com', 'Repair only', 1, '2024-08-01', 3000.00, '2022-05-15', '2023-05-15', 0);
INSERT INTO MedicalDeviceWarrantyInfo VALUES (503, 'SN11223C', 'INF-100', 'Infusion Devices Inc', '2022-01-10', '2022-02-01', '2024-02-01', 24, 'Full coverage', '24/7 phone', 'Mike Brown', '555-3003', 'help@infusiondev.com', 'Replace after 2 failures', 0, NULL, 2500.00, '2022-11-20', '2023-11-20', 1);

-- Research Data Access Log Summary
CREATE TABLE ResearchDataAccessLogSummary
(
    LogID INTEGER,
    ResearcherID INTEGER,
    DatasetID INTEGER,
    AccessDate DATE,
    AccessTime TEXT,
    AccessType TEXT,
    Purpose TEXT,
    ApprovalStatus TEXT,
    ReviewerID INTEGER,
    ReviewDate DATE,
    DataExported BOOLEAN,
    ExportFormat TEXT,
    DataVolumeMB REAL,
    SecurityClearanceLevel INTEGER,
    IPAddress TEXT,
    DeviceID TEXT,
    SessionDurationSeconds INTEGER,
    Notes TEXT,
    ConfidentialityFlag BOOLEAN,
    AuditTrailID INTEGER
);

INSERT INTO ResearchDataAccessLogSummary VALUES (601, 1001, 3001, '2023-04-12', '09:15:00', 'Read', 'Genetic analysis', 'Approved', 2001, '2023-04-10', 0, NULL, 0.0, 3, '192.168.1.10', 'PC-01', 300, 'Initial query', 1, 9001);
INSERT INTO ResearchDataAccessLogSummary VALUES (602, 1002, 3002, '2023-05-03', '14:45:00', 'Export', 'Meta‑analysis', 'Approved', 2002, '2023-05-01', 1, 'CSV', 125.5, 4, '192.168.1.22', 'Laptop-07', 720, 'Exported full cohort', 1, 9002);
INSERT INTO ResearchDataAccessLogSummary VALUES (603, 1003, 3003, '2023-06-18', '11:30:00', 'Read', 'Method validation', 'Pending', 2003, '2023-06-15', 0, NULL, 0.0, 2, '192.168.1.35', 'Desktop-03', 180, 'Awaiting reviewer response', 0, 9003);

-- Facility Air Quality Monitoring Station
CREATE TABLE FacilityAirQualityMonitoringStation
(
    StationID INTEGER,
    BuildingName TEXT,
    FloorNumber INTEGER,
    RoomNumber TEXT,
    InstallationDate DATE,
    PM2_5 REAL,
    PM10 REAL,
    CO2 REAL,
    VOC REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    NoiseLevelDB REAL,
    CalibrationDate DATE,
    FirmwareVersion TEXT,
    BatteryStatus REAL,
    LastReadingTimestamp DATE,
    SensorStatus TEXT,
    MaintenanceDueDate DATE,
    AlertLevel TEXT,
    OperatorName TEXT
);

INSERT INTO FacilityAirQualityMonitoringStation VALUES (701, 'Main Hospital', 2, 'Room 210', '2021-11-20', 12.5, 25.0, 420.0, 0.35, 22.1, 45.0, 55.0, '2023-02-10', 'v2.0', 98.0, '2023-06-01', 'Active', '2023-12-01', 'Normal', 'Karen White');
INSERT INTO FacilityAirQualityMonitoringStation VALUES (702, 'Research Center', 1, 'Lab A', '2022-03-15', 8.0, 15.0, 380.0, 0.20, 21.5, 40.0, 48.0, '2023-03-05', 'v2.1', 95.0, '2023-06-02', 'Active', '2023-11-15', 'Normal', 'Luis Gomez');
INSERT INTO FacilityAirQualityMonitoringStation VALUES (703, 'Outpatient Clinic', 3, 'Room 315', '2022-07-01', 20.0, 35.0, 500.0, 0.60, 23.0, 50.0, 60.0, '2023-04-20', 'v2.0', 92.0, '2023-06-03', 'Active', '2024-01-20', 'High', 'Emily Zhao');

-- Staff Competency Matrix Detail
CREATE TABLE StaffCompetencyMatrixDetail
(
    StaffID INTEGER,
    Department TEXT,
    Role TEXT,
    CompetencyArea TEXT,
    SkillLevel INTEGER,
    Certification TEXT,
    CertificationDate DATE,
    RenewalDueDate DATE,
    ExperienceYears REAL,
    LastAssessmentDate DATE,
    AssessorName TEXT,
    AssessmentScore INTEGER,
    DevelopmentPlan TEXT,
    TrainingNeeded BOOLEAN,
    TrainingCourseID INTEGER,
    TrainingScheduledDate DATE,
    TrainingCompletedDate DATE,
    Comments TEXT,
    IsActive BOOLEAN,
    RecordCreated DATE
);

INSERT INTO StaffCompetencyMatrixDetail VALUES (801, 'Radiology', 'Technician', 'Imaging', 4, 'Certified Imaging Specialist', '2020-06-15', '2023-06-15', 6.5, '2022-12-01', 'Dr. Allen', 88, 'Advanced MRI certification', 1, 401, '2023-09-10', NULL, 'Pending MRI course', 1, '2021-01-20');
INSERT INTO StaffCompetencyMatrixDetail VALUES (802, 'Pharmacy', 'Pharmacist', 'Pharmacology', 5, 'Board Certified Pharmacist', '2018-03-20', '2022-03-20', 9.0, '2021-11-15', 'Dr. Baker', 92, 'Leadership training', 0, NULL, NULL, NULL, 'Excellent performance', 1, '2018-04-01');
INSERT INTO StaffCompetencyMatrixDetail VALUES (803, 'Nursing', 'RN', 'Critical Care', 3, 'Critical Care Nursing', '2021-09-05', '2024-09-05', 4.0, '2022-08-20', 'Dr. Chen', 80, 'ICU orientation', 1, 402, '2023-10-05', NULL, 'Needs ICU simulation', 1, '2021-09-10');

-- Hospital Energy Metric Detail
CREATE TABLE HospitalEnergyMetricDetail
(
    MetricID INTEGER,
    FacilityID INTEGER,
    MetricName TEXT,
    MetricValue REAL,
    Unit TEXT,
    RecordDate DATE,
    RecordedBy TEXT,
    VerificationStatus TEXT,
    ConfidenceInterval REAL,
    SourceSystem TEXT,
    Notes TEXT,
    IsProjected BOOLEAN,
    ProjectionYear INTEGER,
    BaselineValue REAL,
    TargetValue REAL,
    DeviationPercent REAL,
    KPI BOOLEAN,
    TrendingDirection TEXT,
    ReviewDate DATE,
    ReviewerName TEXT
);

INSERT INTO HospitalEnergyMetricDetail VALUES (901, 1, 'Electricity Consumption', 125000.00, 'kWh', '2023-06-30', 'EnergyOps', 'Verified', 1.5, 'EMS', 'Monthly total', 0, NULL, 120000.00, 115000.00, 4.2, 1, 'Upward', '2023-07-05', 'Helen Green');
INSERT INTO HospitalEnergyMetricDetail VALUES (902, 2, 'Water Usage', 45000.00, 'm3', '2023-06-30', 'Facilities', 'Verified', 0.8, 'WMS', 'Includes all wards', 0, NULL, 44000.00, 43000.00, 2.3, 1, 'Stable', '2023-07-06', 'Mark Turner');
INSERT INTO HospitalEnergyMetricDetail VALUES (903, 1, 'Solar Energy Generation', 20000.00, 'kWh', '2023-06-30', 'EnergyOps', 'Estimated', 2.0, 'SolarMonitor', 'Projected based on panel performance', 1, 2024, 19000.00, 21000.00, -4.8, 0, 'Upward', '2023-07-07', 'Laura Kim');