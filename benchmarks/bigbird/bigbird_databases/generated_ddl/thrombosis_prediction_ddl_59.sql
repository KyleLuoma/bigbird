-- Facility maintenance schedule for hospital buildings
CREATE TABLE FacilityMaintenanceSchedule (
    ScheduleID INTEGER PRIMARY KEY,
    BuildingName TEXT,
    Wing TEXT,
    Floor INTEGER,
    MaintenanceType TEXT,
    VendorName TEXT,
    ContactPhone TEXT,
    StartDate DATE,
    EndDate DATE,
    EstimatedCost REAL,
    PriorityLevel INTEGER,
    WorkOrderNumber TEXT,
    Description TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    Status TEXT,
    Remarks TEXT,
    LastUpdatedBy TEXT,
    LastUpdatedDate DATE,
    IsRecurring INTEGER
);

INSERT INTO FacilityMaintenanceSchedule VALUES
(1, 'North Tower', 'A', 2, 'HVAC', 'CoolAir Services', '5551234567', '2024-03-01', '2024-03-05', 12000.50, 1, 'WO-1001', 'Quarterly HVAC filter replacement', 'jdoe', '2024-02-20', 'asmith', '2024-02-25', 'Planned', 'N/A', 'asmith', '2024-02-25', 1),
(2, 'South Wing', 'B', 1, 'Plumbing', 'PipeFix Co', '5559876543', '2024-04-10', '2024-04-12', 8000.00, 2, 'WO-1002', 'Leak inspection in restroom area', 'mbrown', '2024-03-28', 'jdoe', '2024-04-01', 'Planned', 'Urgent due to recent leak', 'jdoe', '2024-04-01', 0),
(3, 'East Annex', 'C', 3, 'Electrical', 'VoltWorks', '5555551212', '2024-05-15', '2024-05-18', 15000.75, 1, 'WO-1003', 'Upgrade lighting to LED', 'klee', '2024-05-01', 'klee', '2024-05-02', 'Planned', 'Energy saving project', 'klee', '2024-05-02', 1);

-- Staff training program catalog
CREATE TABLE StaffTrainingProgram (
    ProgramID INTEGER PRIMARY KEY,
    ProgramName TEXT,
    Department TEXT,
    TrainerName TEXT,
    TrainerCertification TEXT,
    DurationHours INTEGER,
    Frequency TEXT,
    AccreditationBody TEXT,
    StartDate DATE,
    EndDate DATE,
    MaxParticipants INTEGER,
    Location TEXT,
    CostPerParticipant REAL,
    MaterialsProvided TEXT,
    OnlineAvailable INTEGER,
    EvaluationMethod TEXT,
    PassScore INTEGER,
    CreatedDate DATE,
    UpdatedDate DATE,
    IsMandatory INTEGER,
    ProgramCode TEXT,
    Notes TEXT
);

INSERT INTO StaffTrainingProgram VALUES
(101, 'Advanced Cardiac Life Support', 'Emergency', 'Dr Susan Lee', 'ACLS Certified', 16, 'Annual', 'American Heart Association', '2024-06-01', '2024-06-02', 20, 'Room 12B', 250.00, 'Manual, Video', 1, 'Written Test', 85, '2024-01-15', '2024-03-10', 1, 'ACLS2024', 'Required for all ER staff'),
(102, 'Medical Device Safety', 'Biomedical', 'John Carter', 'ISO 14971', 8, 'Biannual', 'ISO', '2024-07-10', '2024-07-10', 30, 'Conference Hall', 150.00, 'Slides, Handbook', 0, 'Practical Demo', 80, '2024-02-20', '2024-04-05', 0, 'MDS2024', 'Open to all technical staff'),
(103, 'Infection Control Basics', 'All', 'Nurse Amy Patel', 'CIC Certification', 4, 'Quarterly', 'CDC', '2024-05-05', '2024-05-05', 50, 'Room 3A', 100.00, 'Brochure', 1, 'Quiz', 75, '2024-01-30', '2024-03-22', 1, 'ICB2024', 'Mandatory for new hires');

-- Medical device inventory master table
CREATE TABLE MedicalDeviceInventory (
    DeviceID INTEGER PRIMARY KEY,
    DeviceName TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyEndDate DATE,
    Location TEXT,
    Department TEXT,
    Status TEXT,
    CalibrationDate DATE,
    CalibrationDueDate DATE,
    LastMaintenanceDate DATE,
    NextMaintenanceDue DATE,
    AssignedStaffID INTEGER,
    AssetTag TEXT,
    Cost REAL,
    DepreciationRate REAL,
    LeaseFlag INTEGER,
    LeaseEndDate DATE,
    MaintenanceVendor TEXT
);

INSERT INTO MedicalDeviceInventory VALUES
(5001, 'MRI Scanner', 'Siemens', 'MAGNETOM Skyra', 'SN123456', '2020-01-15', '2025-01-15', 'Imaging Center', 'Radiology', 'Operational', '2024-02-01', '2025-02-01', '2024-01-20', '2025-01-20', 2001, 'MD-5001', 3000000.00, 0.15, 0, NULL, 'MedTech Services'),
(5002, 'Ventilator', 'GE Healthcare', 'Carescape R860', 'SN987654', '2022-07-10', '2027-07-10', 'ICU Room 5', 'Intensive Care', 'Operational', '2024-03-15', '2025-03-15', '2024-03-01', '2025-03-01', 2002, 'MD-5002', 75000.00, 0.20, 0, NULL, 'LifeSupport Ltd'),
(5003, 'Defibrillator', 'Philips', 'HeartStart FRx', 'SN555777', '2021-05-20', '2026-05-20', 'ER Bay 2', 'Emergency', 'In Service', '2024-04-10', '2025-04-10', '2024-04-01', '2025-04-01', 2003, 'MD-5003', 12000.00, 0.25, 0, NULL, 'RapidMed Repairs');

-- Supply chain vendor performance metrics
CREATE TABLE SupplyChainVendorPerformance (
    VendorID INTEGER PRIMARY KEY,
    VendorName TEXT,
    Category TEXT,
    ContractStartDate DATE,
    ContractEndDate DATE,
    AvgDeliveryDays REAL,
    OnTimeDeliveryPct REAL,
    QualityScore INTEGER,
    ComplianceScore INTEGER,
    AvgPriceVariancePct REAL,
    LastAuditDate DATE,
    NextAuditPlanned DATE,
    ContactPerson TEXT,
    ContactEmail TEXT,
    PhoneNumber TEXT,
    Rating INTEGER,
    Notes TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    ActiveFlag INTEGER
);

INSERT INTO SupplyChainVendorPerformance VALUES
(301, 'MediSupply Co', 'Medical Consumables', '2020-01-01', '2025-12-31', 2.5, 97.0, 92, 88, 1.5, '2023-11-15', '2024-11-15', 'Laura Green', 'laura.green@medisupply.com', '5551112222', 5, 'Excellent overall performance', '2023-01-10', '2023-12-01', 1),
(302, 'PharmaLogistics', 'Pharmaceuticals', '2019-06-15', '2024-06-14', 3.2, 93.5, 85, 80, 2.8, '2023-10-05', '2024-10-05', 'Mark Daniels', 'mark.daniels@pharmalog.com', '5553334444', 4, 'Minor delays observed in Q3', '2023-02-20', '2023-11-20', 1),
(303, 'SterileEquip Inc', 'Surgical Instruments', '2021-03-01', '2026-02-28', 1.8, 99.0, 95, 90, 0.9, '2023-12-01', '2024-12-01', 'Sofia Patel', 'sofia.patel@sterileequip.com', '5557778888', 5, 'Consistently high quality', '2023-03-05', '2023-12-10', 1);

-- Environmental sensor station registry
CREATE TABLE EnvironmentalSensorStation (
    StationID INTEGER PRIMARY KEY,
    StationName TEXT,
    Location TEXT,
    SensorType TEXT,
    InstallationDate DATE,
    LastCalibrationDate DATE,
    CalibrationIntervalDays INTEGER,
    CurrentValue REAL,
    Unit TEXT,
    Status TEXT,
    BatteryLevel INTEGER,
    FirmwareVersion TEXT,
    IPAddress TEXT,
    MACAddress TEXT,
    DataUploadFrequencyMin INTEGER,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    MaintenanceDueDate DATE,
    AlertThresholdHigh REAL,
    AlertThresholdLow REAL
);

INSERT INTO EnvironmentalSensorStation VALUES
(1, 'NorthWing_Air', 'North Wing, Floor 1', 'AirQuality', '2022-01-10', '2024-01-15', 180, 45.2, 'PPM', 'Active', 85, 'v1.3', '192.168.10.10', 'AA:BB:CC:DD:EE:01', 15, 'admin', '2022-01-12', 'tech1', '2024-02-01', '2024-06-01', 75.0, 25.0),
(2, 'SouthWing_Temp', 'South Wing, Floor 2', 'Temperature', '2021-07-05', '2024-02-20', 365, 22.5, 'C', 'Active', 90, 'v2.0', '192.168.10.20', 'AA:BB:CC:DD:EE:02', 10, 'admin', '2021-07-07', 'tech2', '2024-03-01', '2024-07-01', 27.0, 18.0),
(3, 'EastAnnex_Humidity', 'East Annex, Floor 3', 'Humidity', '2023-03-12', '2024-03-10', 180, 55.0, '%', 'Active', 70, 'v1.1', '192.168.10.30', 'AA:BB:CC:DD:EE:03', 20, 'admin', '2023-03-14', 'tech3', '2024-04-15', '2024-08-15', 65.0, 30.0);

-- Detailed hospital energy metrics
CREATE TABLE HospitalEnergyMetricDetail (
    MetricID INTEGER PRIMARY KEY,
    MetricName TEXT,
    Unit TEXT,
    CollectionDate DATE,
    Value REAL,
    Building TEXT,
    Wing TEXT,
    Floor INTEGER,
    Source TEXT,
    RecordedBy TEXT,
    VerificationStatus TEXT,
    Comments TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    IsForecast INTEGER,
    ForecastValue REAL,
    ForecastDate DATE,
    EnergyType TEXT,
    Season TEXT,
    WeekNumber INTEGER
);

INSERT INTO HospitalEnergyMetricDetail VALUES
(1001, 'Electricity Consumption', 'kWh', '2024-04-01', 45230.5, 'Main Campus', 'East', 1, 'SmartMeter', 'alice', 'Verified', 'Normal operation', '2024-04-02', '2024-04-02', 0, NULL, NULL, 'Electric', 'Spring', 14),
(1002, 'Steam Usage', 'kg', '2024-04-01', 7800.0, 'Main Campus', 'West', 2, 'SteamMeter', 'bob', 'Verified', 'Stable demand', '2024-04-02', '2024-04-02', 0, NULL, NULL, 'Thermal', 'Spring', 14),
(1003, 'Gas Consumption', 'Therms', '2024-04-01', 3125.75, 'North Tower', 'A', 3, 'GasMeter', 'carol', 'Estimated', 'Forecast based on weather', '2024-04-02', '2024-04-02', 1, 3200.00, '2024-04-08', 'NaturalGas', 'Spring', 14);

-- Research grant allocation records
CREATE TABLE ResearchGrantAllocation (
    GrantID INTEGER PRIMARY KEY,
    GrantTitle TEXT,
    FundingAgency TEXT,
    AmountAwarded REAL,
    StartDate DATE,
    EndDate DATE,
    PrincipalInvestigator TEXT,
    Department TEXT,
    GrantNumber TEXT,
    FundingCategory TEXT,
    AllocationMethod TEXT,
    MatchingFunds REAL,
    IndirectCostRate REAL,
    ReportingFrequency TEXT,
    LastReportDate DATE,
    NextReportDue DATE,
    Status TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    Notes TEXT,
    Currency TEXT,
    ExchangeRate REAL
);

INSERT INTO ResearchGrantAllocation VALUES
(4001, 'AI for Diagnostic Imaging', 'National Institutes of Health', 1250000.00, '2023-01-01', '2026-12-31', 'Dr Emily Zhang', 'Radiology', 'NIH-2023-AIIMG', 'Federal', 250000.00, 0.30, 'Annual', '2024-01-15', '2025-01-15', 'Active', '2023-02-01', '2024-02-01', 'High impact project', 'USD', 1.0),
(4002, 'Pharmacogenomics Study', 'PharmaCorp Foundation', 750000.00, '2022-06-01', '2025-05-31', 'Dr Michael Lee', 'Pharmacy', 'PCF-2022-PG', 'Industry', 150000.00, 0.25, 'Semi-Annual', '2023-12-01', '2024-06-01', 'Ongoing', '2022-07-10', '2023-07-10', 'Collaboration with industry', 'USD', 1.0),
(4003, 'Community Health Outreach', 'World Health Organization', 500000.00, '2024-01-01', '2027-12-31', 'Dr Sara Patel', 'Public Health', 'WHO-2024-CH', 'International', 100000.00, 0.20, 'Quarterly', '2024-03-01', '2024-06-01', 'Planned', '2024-01-15', '2024-02-15', 'Focus on underserved areas', 'USD', 1.0);

-- Clinical guideline version history
CREATE TABLE ClinicalGuidelineVersionHistory (
    GuidelineID INTEGER PRIMARY KEY,
    GuidelineName TEXT,
    VersionNumber TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    CreatedBy TEXT,
    CreatedDate DATE,
    ReviewedBy TEXT,
    ReviewedDate DATE,
    ApprovalStatus TEXT,
    DocumentURL TEXT,
    Summary TEXT,
    ClinicalArea TEXT,
    Specialty TEXT,
    ChangeSummary TEXT,
    IsActive INTEGER,
    DeprecatedReason TEXT,
    LastModifiedBy TEXT,
    LastModifiedDate DATE,
    PublicationReference TEXT,
    RevisionNumber INTEGER
);

INSERT INTO ClinicalGuidelineVersionHistory VALUES
(2001, 'Hypertension Management', 'v3.2', '2024-01-01', NULL, 'drkelley', '2023-12-01', 'drmiller', '2023-12-15', 'Approved', 'http://guidelines.org/hypertn/v3_2.pdf', 'Updated BP thresholds', 'Cardiology', 'Internal Medicine', 'Lowered systolic goal to 130', 1, NULL, 'drlee', '2024-02-10', 'JAMA Cardiology 2024', 5),
(2002, 'Sepsis Protocol', 'v2.5', '2023-07-01', NULL, 'dradams', '2023-06-20', 'drwhite', '2023-06-30', 'Approved', 'http://guidelines.org/sepsis/v2_5.pdf', 'Added rapid bundle steps', 'Critical Care', 'Emergency Medicine', 'Increased lactate monitoring frequency', 1, NULL, 'drbrown', '2023-07-15', 'Critical Care Med 2023', 3),
(2003, 'Pediatric Asthma Care', 'v1.8', '2022-03-01', '2025-02-28', 'drclark', '2022-02-15', 'drgreen', '2022-02-28', 'Approved', 'http://guidelines.org/asthma/ped/v1_8.pdf', 'Introduced new inhaler guidelines', 'Pulmonology', 'Pediatrics', 'Added stepwise therapy algorithm', 1, NULL, 'drhill', '2022-03-10', 'Pediatrics Today 2022', 2);

-- Extended hospital asset tracking
CREATE TABLE HospitalAssetTrackingExtended (
    AssetID INTEGER PRIMARY KEY,
    AssetName TEXT,
    AssetType TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    Cost REAL,
    CurrentLocation TEXT,
    CustodianID INTEGER,
    Department TEXT,
    WarrantyExpiration DATE,
    MaintenanceScheduleID INTEGER,
    DepreciationStartDate DATE,
    DepreciatedValue REAL,
    CurrentValue REAL,
    DisposalDate DATE,
    DisposalMethod TEXT,
    InsurancePolicyNumber TEXT,
    AssetStatus TEXT,
    AssetTag TEXT,
    Barcode TEXT,
    LastInspectionDate DATE,
    NextInspectionDue DATE
);

INSERT INTO HospitalAssetTrackingExtended VALUES
(9001, 'Ultrasound Machine', 'Imaging Equipment', 'US-223344', '2019-09-15', 85000.00, 'Radiology Suite 3', 2101, 'Radiology', '2024-09-15', 3001, '2019-09-15', 17000.00, 68000.00, NULL, NULL, 'POL-98765', 'In Service', 'AS-9001', 'BC-9001', '2024-01-20', '2025-01-20'),
(9002, 'Hospital Bed', 'Furniture', 'HB-778899', '2021-03-01', 2500.00, 'Ward 12A', 2202, 'Inpatient Care', '2026-03-01', 3002, '2021-03-01', 500.00, 2000.00, NULL, NULL, 'POL-12345', 'In Service', 'AS-9002', 'BC-9002', '2024-02-10', '2025-02-10'),
(9003, 'Defibrillator Portable', 'Emergency Device', 'DF-445566', '2020-11-20', 12000.00, 'ER Mobile Unit', 2303, 'Emergency', '2025-11-20', 3003, '2020-11-20', 2400.00, 9600.00, NULL, NULL, 'POL-54321', 'In Service', 'AS-9003', 'BC-9003', '2024-03-05', '2025-03-05');

-- Telehealth device usage log (no direct patient linkage)
CREATE TABLE TelehealthDeviceUsageLog (
    LogID INTEGER PRIMARY KEY,
    DeviceID INTEGER,
    SessionID TEXT,
    StartTime DATETIME,
    EndTime DATETIME,
    DataUploadedGB REAL,
    ConnectionType TEXT,
    ProviderID INTEGER,
    ProviderRole TEXT,
    DiagnosisCode TEXT,
    Notes TEXT,
    FirmwareVersion TEXT,
    BatteryLevelStart INTEGER,
    BatteryLevelEnd INTEGER,
    NetworkQualityScore INTEGER,
    CreatedDate DATE,
    UpdatedDate DATE,
    IsSuccessful INTEGER,
    FailureReason TEXT,
    DurationMinutes INTEGER
);

INSERT INTO TelehealthDeviceUsageLog VALUES
(1, 401, 'SES-1001', '2024-04-10 09:00:00', '2024-04-10 09:30:00', 0.45, 'WiFi', 1201, 'Physician', 'I10', 'Routine hypertension follow-up', 'v2.1', 90, 85, 95, '2024-04-10', '2024-04-10', 1, NULL, 30),
(2, 402, 'SES-1002', '2024-04-11 14:15:00', '2024-04-11 14:45:00', 0.60, 'Cellular', 1202, 'Nurse Practitioner', 'J45', 'Asthma medication review', 'v1.9', 80, 70, 88, '2024-04-11', '2024-04-11', 1, NULL, 30),
(3, 403, 'SES-1003', '2024-04-12 11:00:00', '2024-04-12 11:10:00', 0.10, 'WiFi', 1203, 'Therapist', 'F41.1', 'Anxiety counselling session', 'v2.0', 95, 92, 99, '2024-04-12', '2024-04-12', 0, 'Connection timeout', 10);