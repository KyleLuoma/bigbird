-- Environmental exposure logs for patients
CREATE TABLE EnvironmentalExposureLog (
    LogID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    ExposureDate DATE,
    PM25Level REAL,
    PM10Level REAL,
    NO2Level REAL,
    SO2Level REAL,
    O3Level REAL,
    COLevel REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    WindSpeedMps REAL,
    LocationType TEXT,
    IndoorOutdoor TEXT,
    ExposureDurationMinutes INTEGER,
    ActivityDuringExposure TEXT,
    ProtectiveEquipmentUsed TEXT,
    ExposureRating INTEGER,
    Notes TEXT,
    RecordedBy TEXT
);

INSERT INTO EnvironmentalExposureLog VALUES (1, 101, '2025-01-10', 12.5, 35.2, 0.018, 0.004, 0.030, 0.6, 22.1, 45.0, 3.2, 'Urban', 'Outdoor', 120, 'Walking', 'Mask', 3, 'No issues', 'NurseA');
INSERT INTO EnvironmentalExposureLog VALUES (2, 102, '2025-02-05', 8.7, 20.1, 0.012, 0.003, 0.025, 0.5, 19.8, 50.5, 2.8, 'Rural', 'Indoor', 45, 'OfficeWork', 'None', 1, 'Mild irritation', 'NurseB');
INSERT INTO EnvironmentalExposureLog VALUES (3, 103, '2025-03-12', 15.3, 40.0, 0.022, 0.006, 0.035, 0.8, 24.5, 40.2, 4.0, 'Industrial', 'Outdoor', 180, 'Construction', 'Mask', 4, 'Severe cough', 'NurseC');

-- Maintenance log for medical devices
CREATE TABLE MedicalDeviceMaintenanceLog (
    MaintenanceID INTEGER PRIMARY KEY,
    DeviceID TEXT,
    MaintenanceDate DATE,
    TechnicianID INTEGER,
    ServiceVendor TEXT,
    MaintenanceType TEXT,
    DurationHours REAL,
    PartsReplaced TEXT,
    CalibrationPerformed INTEGER,
    SoftwareVersion TEXT,
    FirmwareVersion TEXT,
    NextDueDate DATE,
    Status TEXT,
    Comments TEXT,
    Cost REAL,
    WarrantyRemainingMonths INTEGER,
    DeviceLocation TEXT,
    PriorityLevel INTEGER,
    SafetyCheckPassed INTEGER,
    UpdatedBy TEXT
);

INSERT INTO MedicalDeviceMaintenanceLog VALUES (1001, 'ECG_2001', '2025-01-15', 201, 'MediServ', 'Preventive', 2.5, 'LeadSet', 1, 'v3.2', 'fw1.4', '2025-07-15', 'Completed', 'All good', 250.00, 12, 'CardiologyLab', 2, 1, 'TechA');
INSERT INTO MedicalDeviceMaintenanceLog VALUES (1002, 'MRI_07B', '2025-02-20', 202, 'HealthTech', 'Repair', 4.0, 'CoolantPump', 0, 'v5.1', 'fw2.0', '2025-08-20', 'Completed', 'Replaced pump', 1200.00, 6, 'ImagingSuite', 1, 1, 'TechB');
INSERT INTO MedicalDeviceMaintenanceLog VALUES (1003, 'Vent_12X', '2025-03-05', 203, 'VentSolutions', 'Calibration', 1.8, 'None', 1, 'v2.9', 'fw3.3', '2025-09-05', 'Completed', 'Calibration within tolerance', 150.00, 18, 'ICU', 3, 1, 'TechC');

-- Reference table for clinical guidelines
CREATE TABLE ClinicalGuidelineReference (
    GuidelineID INTEGER PRIMARY KEY,
    GuidelineName TEXT,
    Version TEXT,
    EffectiveDate DATE,
    SpecialtyArea TEXT,
    TargetPopulation TEXT,
    RecommendationSummary TEXT,
    EvidenceLevel TEXT,
    ReferenceDOI TEXT,
    URL TEXT,
    CreatedBy TEXT,
    ReviewedBy TEXT,
    ReviewDate DATE,
    ImplementationStatus TEXT,
    LastUpdated DATE,
    AssociatedProcedure TEXT,
    ClinicalDomain TEXT,
    KeyMetrics TEXT,
    Notes TEXT,
    ActiveFlag INTEGER
);

INSERT INTO ClinicalGuidelineReference VALUES (1, 'HypertensionManagement', '2023', '2023-01-01', 'Cardiology', 'Adults', 'Control BP <130/80', 'A', '10.1000/xyz123', 'http://guidelines.org/hyper', 'DrSmith', 'DrJones', '2024-06-15', 'Implemented', '2025-01-01', 'BPMeasurement', 'Cardiovascular', 'BPReduction', 'Annual review', 1);
INSERT INTO ClinicalGuidelineReference VALUES (2, 'DiabetesScreening', '2022', '2022-03-01', 'Endocrinology', 'Adults', 'HbA1c >=6.5% diagnosis', 'B', '10.1000/abc456', 'http://guidelines.org/diab', 'DrLee', 'DrKim', '2023-09-10', 'Partial', '2024-03-01', 'GlucoseTest', 'Metabolic', 'ScreenRate', 'Review pending', 1);
INSERT INTO ClinicalGuidelineReference VALUES (3, 'StrokePrevention', '2024', '2024-07-01', 'Neurology', 'HighRisk', 'Aspirin 81mg daily', 'A', '10.1000/def789', 'http://guidelines.org/stroke', 'DrPatel', 'DrNguyen', '2025-02-20', 'Draft', '2025-05-01', 'RiskAssessment', 'Neurological', 'EventReduction', 'Needs stakeholder input', 0);

-- Wearable device data captured from patients
CREATE TABLE PatientWearableDeviceData (
    RecordID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    DeviceSerial TEXT,
    RecordTimestamp DATETIME,
    HeartRate INTEGER,
    StepCount INTEGER,
    SleepHours REAL,
    SpO2 REAL,
    SkinTempC REAL,
    BloodPressureSystolic INTEGER,
    BloodPressureDiastolic INTEGER,
    RespiratoryRate INTEGER,
    ActivityLevel TEXT,
    BatteryLevelPercent INTEGER,
    FirmwareVersion TEXT,
    SignalQuality INTEGER,
    Latitude REAL,
    Longitude REAL,
    DataQualityFlag INTEGER,
    UploadedBy TEXT
);

INSERT INTO PatientWearableDeviceData VALUES (5001, 101, 'WX1001', '2025-01-10 08:00:00', 72, 3500, 6.5, 98.2, 33.1, 120, 78, 16, 'Moderate', 85, 'v1.0', 1, 40.7128, -74.0060, 1, 'NurseA');
INSERT INTO PatientWearableDeviceData VALUES (5002, 102, 'WX1002', '2025-02-05 09:30:00', 68, 4200, 7.0, 97.5, 32.8, 115, 75, 15, 'Active', 78, 'v1.0', 1, 34.0522, -118.2437, 1, 'NurseB');
INSERT INTO PatientWearableDeviceData VALUES (5003, 103, 'WX1003', '2025-03-12 07:45:00', 80, 2800, 5.8, 99.0, 34.0, 130, 85, 18, 'Low', 90, 'v1.1', 1, 51.5074, -0.1278, 1, 'NurseC');

-- Detailed energy metrics for each facility
CREATE TABLE HospitalEnergyMetricDetail (
    MetricID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    MetricDate DATE,
    ElectricityKWh REAL,
    GasTherms REAL,
    WaterLiters REAL,
    SteamKg REAL,
    RenewablePercentage REAL,
    PeakDemandKW REAL,
    CO2EmissionsKg REAL,
    EnergyCostUSD REAL,
    Notes TEXT,
    ReportedBy TEXT,
    VerificationStatus TEXT,
    LastAuditDate DATE,
    EnergySourceMix TEXT,
    HVACPowerKWh REAL,
    LightingPowerKWh REAL,
    ITPowerKWh REAL,
    MedicalEquipmentPowerKWh REAL,
    TotalEnergyKWh REAL
);

INSERT INTO HospitalEnergyMetricDetail VALUES (2001, 1, '2025-01-31', 120000.5, 3500.2, 450000.0, 1200.0, 22.5, 800.0, 56000.0, 25000.0, 'No anomalies', 'AnalystA', 'Verified', '2025-02-15', 'ElectricityGas', 30000.0, 20000.0, 15000.0, 10000.0, 120000.5);
INSERT INTO HospitalEnergyMetricDetail VALUES (2002, 2, '2025-01-31', 95000.0, 2800.0, 380000.0, 950.0, 18.0, 650.0, 42000.0, 21000.0, 'Leaner usage', 'AnalystB', 'Verified', '2025-02-16', 'ElectricityGas', 25000.0, 18000.0, 12000.0, 8000.0, 95000.0);
INSERT INTO HospitalEnergyMetricDetail VALUES (2003, 3, '2025-01-31', 105000.0, 3000.0, 410000.0, 1100.0, 20.0, 700.0, 47000.0, 23000.0, 'Within target', 'AnalystC', 'Verified', '2025-02-17', 'ElectricityGas', 27000.0, 19000.0, 13000.0, 9000.0, 105000.0);

-- Forecasts for pharmacy inventory needs
CREATE TABLE PharmacyInventoryForecast (
    ForecastID INTEGER PRIMARY KEY,
    DrugID TEXT,
    ForecastMonth DATE,
    ProjectedDemandUnits INTEGER,
    CurrentStockUnits INTEGER,
    SafetyStockUnits INTEGER,
    ReorderPointUnits INTEGER,
    SupplierLeadTimeDays INTEGER,
    AvgMonthlyConsumption INTEGER,
    SeasonalityFactor REAL,
    PricePerUnit REAL,
    BudgetAllocationUSD REAL,
    ApprovedBy TEXT,
    ForecastAccuracy REAL,
    Notes TEXT,
    LastUpdated DATE,
    Category TEXT,
    Formulation TEXT,
    Packaging TEXT,
    CriticalFlag INTEGER
);

INSERT INTO PharmacyInventoryForecast VALUES (3001, 'DRG001', '2025-02-01', 5000, 2000, 800, 1200, 30, 4500, 1.05, 2.5, 12500.0, 'PharmMgrA', 0.92, 'Increase due to flu season', '2025-01-20', 'Antibiotic', 'OralTablet', 'BlisterPack', 1);
INSERT INTO PharmacyInventoryForecast VALUES (3002, 'DRG002', '2025-02-01', 3000, 1500, 600, 900, 25, 2800, 0.98, 1.8, 5400.0, 'PharmMgrB', 0.88, 'Stable demand', '2025-01-22', 'Analgesic', 'Capsule', 'Bottle', 0);
INSERT INTO PharmacyInventoryForecast VALUES (3003, 'DRG003', '2025-02-01', 7500, 3500, 1200, 2100, 35, 7000, 1.10, 3.2, 24000.0, 'PharmMgrC', 0.95, 'Prep for surgical camp', '2025-01-25', 'Antiseptic', 'Solution', 'Bag', 1);

-- Calibration logs for radiology equipment
CREATE TABLE RadiologyEquipmentCalibrationLog (
    CalibrationID INTEGER PRIMARY KEY,
    EquipmentID TEXT,
    CalibrationDate DATE,
    CalibratedBy TEXT,
    CalibrationType TEXT,
    TargetParameter TEXT,
    MeasuredValue REAL,
    ToleranceUpper REAL,
    ToleranceLower REAL,
    ResultPass INTEGER,
    Comments TEXT,
    NextCalibrationDue DATE,
    SoftwareVersion TEXT,
    FirmwareVersion TEXT,
    MaintenanceCycleDays INTEGER,
    Location TEXT,
    CalibrationCertificateID TEXT,
    DeviceStatus TEXT,
    VerifiedBy TEXT,
    VerificationDate DATE
);

INSERT INTO RadiologyEquipmentCalibrationLog VALUES (4001, 'XRAY_A1', '2025-01-10', 'TechA', 'Annual', 'DoseOutput', 0.98, 1.05, 0.95, 1, 'Within specs', '2025-07-10', 'v4.0', 'fw2.1', 180, 'RadiologyDept', 'CERT123', 'Operational', 'TechLeadA', '2025-01-11');
INSERT INTO RadiologyEquipmentCalibrationLog VALUES (4002, 'CT_B2', '2025-02-05', 'TechB', 'Quarterly', 'SpatialResolution', 1.02, 1.08, 0.98, 1, 'Excellent', '2025-05-05', 'v5.3', 'fw3.0', 90, 'ImagingSuite', 'CERT456', 'Operational', 'TechLeadB', '2025-02-06');
INSERT INTO RadiologyEquipmentCalibrationLog VALUES (4003, 'MRI_C3', '2025-03-01', 'TechC', 'Biannual', 'MagneticFieldHomogeneity', 0.99, 1.04, 0.96, 1, 'Acceptable', '2025-09-01', 'v6.1', 'fw4.2', 180, 'MRIRoom', 'CERT789', 'Operational', 'TechLeadC', '2025-03-02');

-- Inventory of laboratory reagents
CREATE TABLE LaboratoryReagentInventory (
    ReagentID TEXT PRIMARY KEY,
    BatchNumber TEXT,
    ReceivedDate DATE,
    ExpirationDate DATE,
    QuantityUnits REAL,
    UnitMeasure TEXT,
    StorageTemperatureC REAL,
    StorageLocation TEXT,
    SupplierName TEXT,
    CostPerUnit REAL,
    TotalCost REAL,
    HazardClassification TEXT,
    MSDSLink TEXT,
    QCStatus TEXT,
    VerifiedBy TEXT,
    VerificationDate DATE,
    LotNumber TEXT,
    ReorderLevelUnits REAL,
    Available BOOLEAN,
    Notes TEXT
);

INSERT INTO LaboratoryReagentInventory VALUES ('RG001', 'BN12345', '2025-01-05', '2026-01-05', 500.0, 'ml', 4.0, 'ColdRoom1', 'ChemCo', 0.75, 375.0, 'Flammable', 'http://checo.com/msds/rg001', 'Passed', 'LabTechA', '2025-01-06', 'LOT001', 100.0, 1, 'First lot received');
INSERT INTO LaboratoryReagentInventory VALUES ('RG002', 'BN67890', '2025-01-12', '2025-12-12', 250.0, 'g', 22.0, 'ShelfA', 'BioLab', 1.20, 300.0, 'Toxic', 'http://biolab.com/msds/rg002', 'Passed', 'LabTechB', '2025-01-13', 'LOT002', 50.0, 1, 'Stable');
INSERT INTO LaboratoryReagentInventory VALUES ('RG003', 'BN54321', '2025-02-01', '2025-08-01', 1000.0, 'ml', -20.0, 'Freezer1', 'PharmaInc', 0.60, 600.0, 'Corrosive', 'http://pharmainc.com/msds/rg003', 'Pending', 'LabTechC', '2025-02-02', 'LOT003', 200.0, 0, 'Awaiting QC');

-- Inventory of surgical instruments
CREATE TABLE SurgicalInstrumentInventory (
    InstrumentID TEXT PRIMARY KEY,
    InstrumentName TEXT,
    Category TEXT,
    QuantityInUse INTEGER,
    QuantityInStock INTEGER,
    SterilizationMethod TEXT,
    LastSterilizedDate DATE,
    NextScheduledSterilization DATE,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    CostPerInstrument REAL,
    WarrantyExpiry DATE,
    LocationInOR TEXT,
    MaintenanceStatus TEXT,
    LastMaintenanceDate DATE,
    CalibrationRequired INTEGER,
    CalibrationDueDate DATE,
    Notes TEXT
);

INSERT INTO SurgicalInstrumentInventory VALUES ('SI001', 'Scalpel', 'Cutting', 12, 30, 'Autoclave', '2025-03-01', '2025-03-08', 'SurgToolsCo', 'M100', 'SN001', '2022-05-15', 45.0, '2027-05-15', 'OR1', 'Good', '2025-02-20', 0, NULL, 'Standard stainless steel');
INSERT INTO SurgicalInstrumentInventory VALUES ('SI002', 'Forceps', 'Grasping', 20, 50, 'Steam', '2025-02-28', '2025-03-07', 'MediInstruments', 'F200', 'SN002', '2021-11-10', 30.0, '2026-11-10', 'OR2', 'Good', '2025-02-18', 1, '2025-06-01', 'Requires tip calibration');
INSERT INTO SurgicalInstrumentInventory VALUES ('SI003', 'Retractor', 'Retracting', 8, 20, 'EOx', '2025-03-02', '2025-03-09', 'SurgEquip', 'R300', 'SN003', '2023-01-20', 120.0, '2028-01-20', 'OR3', 'NeedsRepair', '2025-01-30', 0, NULL, 'Minor hinge wear');

-- Participation records for community health programs
CREATE TABLE CommunityHealthProgramParticipation (
    ParticipationID INTEGER PRIMARY KEY,
    ProgramID TEXT,
    ProgramName TEXT,
    CommunityID TEXT,
    StartDate DATE,
    EndDate DATE,
    ParticipantCount INTEGER,
    TargetPopulation TEXT,
    FundingSource TEXT,
    BudgetUSD REAL,
    CoordinatorName TEXT,
    CoordinatorContact TEXT,
    OutreachMethods TEXT,
    EvaluationScore REAL,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    Notes TEXT,
    ReportedBy TEXT,
    ReportDate DATE,
    ActiveFlag INTEGER
);

INSERT INTO CommunityHealthProgramParticipation VALUES (6001, 'CHP01', 'HeartHealth', 'COMM001', '2025-01-01', '2025-03-31', 250, 'Adults45plus', 'GovGrant', 15000.0, 'AliceBrown', '555-1234', 'Flyers,Workshops', 4.5, 1, '2025-04-15', 'High attendance', 'AnalystA', '2025-04-01', 1);
INSERT INTO CommunityHealthProgramParticipation VALUES (6002, 'CHP02', 'DiabetesAwareness', 'COMM002', '2025-02-15', '2025-05-15', 180, 'Adults30plus', 'PrivateDonor', 10000.0, 'BobSmith', '555-5678', 'Radio,SocialMedia', 4.0, 0, NULL, 'Good engagement', 'AnalystB', '2025-05-20', 1);
INSERT INTO CommunityHealthProgramParticipation VALUES (6003, 'CHP03', 'VaccinationDrive', 'COMM003', '2025-03-01', '2025-04-30', 320, 'AllAges', 'HealthDept', 20000.0, 'CarolLee', '555-9012', 'Clinics,MobileUnits', 4.8, 1, '2025-05-10', 'Reached target coverage', 'AnalystC', '2025-05-01', 1);