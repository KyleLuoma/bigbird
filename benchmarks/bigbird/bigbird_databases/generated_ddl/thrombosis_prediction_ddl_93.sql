-- Wearable device session logs
CREATE TABLE WearableDeviceSessionLog
(
    SessionID            INTEGER PRIMARY KEY,
    DeviceSerial         TEXT,
    UserID               INTEGER,
    StartTime            DATE,
    EndTime              DATE,
    StepCount            INTEGER,
    HeartRateAvg         REAL,
    SleepHours           REAL,
    BatteryLevel         INTEGER,
    FirmwareVersion      TEXT,
    SyncStatus           TEXT,
    Location             TEXT,
    ActivityType         TEXT,
    CaloriesBurned       REAL,
    DistanceMeters       REAL,
    AlertCount           INTEGER,
    DataQualityScore     REAL,
    UploadedFlag         INTEGER,
    Notes                TEXT,
    OSVersion            TEXT,
    SensorCount          INTEGER,
    Connectivity         TEXT
);

INSERT INTO WearableDeviceSessionLog VALUES (1, 'WS001', 101, '2023-01-10', '2023-01-10', 7500, 72.5, 7.2, 85, 'v1.2', 'Synced', 'Room101', 'Walking', 350.0, 5600.0, 0, 0.98, 1, 'No issues', 'iOS14', 5, 'Bluetooth');
INSERT INTO WearableDeviceSessionLog VALUES (2, 'WS002', 102, '2023-01-11', '2023-01-11', 12000, 78.0, 6.5, 90, 'v1.3', 'Pending', 'Gym', 'Running', 620.0, 8500.0, 2, 0.95, 0, 'Sync delayed', 'Android11', 6, 'WiFi');
INSERT INTO WearableDeviceSessionLog VALUES (3, 'WS003', 103, '2023-01-12', '2023-01-12', 3000, 68.0, 8.0, 70, 'v1.2', 'Synced', 'Home', 'Rest', 120.0, 2400.0, 0, 0.99, 1, 'All good', 'iOS13', 4, 'Bluetooth');

-- Radiology device maintenance records
CREATE TABLE RadiologyDeviceMaintenance
(
    MaintenanceID        INTEGER PRIMARY KEY,
    DeviceID             TEXT,
    DeviceType           TEXT,
    MaintenanceDate      DATE,
    TechnicianID         INTEGER,
    ServiceType          TEXT,
    IssueDescription     TEXT,
    PartsReplaced        TEXT,
    Cost                 REAL,
    DowntimeHours        REAL,
    NextDueDate          DATE,
    CalibrationStatus    TEXT,
    FirmwareVersion      TEXT,
    WarrantyFlag         INTEGER,
    MaintenanceNotes     TEXT,
    SupplierName         TEXT,
    ContactNumber        TEXT,
    MaintenanceLocation  TEXT,
    PriorityLevel        TEXT,
    ApprovalStatus       TEXT
);

INSERT INTO RadiologyDeviceMaintenance VALUES (1, 'RD001', 'XRay', '2023-02-05', 201, 'Preventive', 'Routine check', 'None', 250.0, 2.0, '2023-08-05', 'Calibrated', 'FW3.1', 1, 'All good', 'MedSuppliesCo', '5551234', 'RadiologyDept', 'Medium', 'Approved');
INSERT INTO RadiologyDeviceMaintenance VALUES (2, 'RD002', 'CT', '2023-03-12', 202, 'Repair', 'Image distortion', 'DetectorPanel', 1500.0, 5.5, '2023-09-12', 'Recalibrated', 'FW2.8', 0, 'Replaced panel', 'TechEquip', '5555678', 'CTSuite', 'High', 'Pending');
INSERT INTO RadiologyDeviceMaintenance VALUES (3, 'RD003', 'MRI', '2023-04-20', 203, 'Upgrade', 'Software update', 'ControlBoard', 800.0, 3.0, '2024-04-20', 'Updated', 'FW4.0', 1, 'Version upgrade', 'ImagingInc', '5559012', 'MRILab', 'Low', 'Approved');

-- Clinical trial adverse events
CREATE TABLE ClinicalTrialAdverseEvent
(
    EventID              INTEGER PRIMARY KEY,
    TrialID              TEXT,
    SubjectID            TEXT,
    EventDate            DATE,
    EventType            TEXT,
    Severity             INTEGER,
    Outcome              TEXT,
    RelatedDrug          TEXT,
    Description          TEXT,
    ActionTaken          TEXT,
    Investigator         TEXT,
    ReportingDate        DATE,
    FollowUpDate         DATE,
    SeriousFlag          INTEGER,
    ExpectedFlag         INTEGER,
    CausalityAssessment  TEXT,
    SponsorContact       TEXT,
    DocumentationURL     TEXT,
    EventStatus          TEXT,
    ResolutionDate       DATE
);

INSERT INTO ClinicalTrialAdverseEvent VALUES (1, 'CT001', 'SUBJ01', '2023-05-10', 'Headache', 2, 'Recovered', 'DrugA', 'Mild headache reported', 'Medication adjusted', 'DrSmith', '2023-05-12', '2023-05-20', 0, 1, 'Possible', 'contact@pharma.com', 'http://doc1', 'Closed', '2023-05-22');
INSERT INTO ClinicalTrialAdverseEvent VALUES (2, 'CT002', 'SUBJ02', '2023-06-15', 'Nausea', 3, 'Ongoing', 'DrugB', 'Severe nausea episodes', 'Dose reduced', 'DrJones', '2023-06-16', '2023-06-25', 0, 0, 'Probable', 'support@biotech.com', 'http://doc2', 'Open', NULL);
INSERT INTO ClinicalTrialAdverseEvent VALUES (3, 'CT001', 'SUBJ03', '2023-07-01', 'Rash', 4, 'Recovered', 'DrugA', 'Dermatological rash', 'Discontinued drug', 'DrSmith', '2023-07-02', '2023-07-10', 1, 0, 'Definite', 'contact@pharma.com', 'http://doc3', 'Closed', '2023-07-12');

-- Surgical instrument log
CREATE TABLE SurgicalInstrumentLog
(
    LogID                INTEGER PRIMARY KEY,
    InstrumentID         TEXT,
    InstrumentType       TEXT,
    SterilizationDate    DATE,
    SterilizationMethod  TEXT,
    CycleNumber          INTEGER,
    TemperatureC         REAL,
    PressureKPa          REAL,
    OperatorID           INTEGER,
    Location             TEXT,
    InspectionResult     TEXT,
    MaintenanceDueDate   DATE,
    RepairFlag           INTEGER,
    ReplacementFlag      INTEGER,
    Comments             TEXT,
    UsageCount           INTEGER,
    LastUsedDate         DATE,
    CurrentStatus        TEXT,
    Manufacturer         TEXT,
    WarrantyExpiry       DATE
);

INSERT INTO SurgicalInstrumentLog VALUES (1, 'SI001', 'Scalpel', '2023-08-01', 'Steam', 15, 121.5, 200.0, 301, 'OR1', 'Pass', '2024-08-01', 0, 0, 'Sharp', 120, '2023-08-15', 'Ready', 'MedTools', '2025-12-31');
INSERT INTO SurgicalInstrumentLog VALUES (2, 'SI002', 'Forceps', '2023-07-20', 'EO', 22, 134.0, 210.0, 302, 'OR2', 'Pass', '2024-07-20', 0, 0, 'No wear', 250, '2023-08-05', 'Ready', 'SurgEquip', '2026-03-31');
INSERT INTO SurgicalInstrumentLog VALUES (3, 'SI003', 'Retractor', '2023-06-15', 'Plasma', 8, 128.0, 205.0, 303, 'OR3', 'Fail', '2023-12-15', 1, 0, 'Handle cracked', 80, '2023-07-01', 'RepairPending', 'OrthoInc', '2024-11-30');

-- Immunology panel result
CREATE TABLE ImmunologyPanelResult
(
    ResultID             INTEGER PRIMARY KEY,
    PanelID              TEXT,
    TestDate             DATE,
    PatientCode          TEXT,
    IgGLevel            REAL,
    IgMLevel            REAL,
    IgALevel            REAL,
    ComplementC3         REAL,
    ComplementC4         REAL,
    ANAFlag              INTEGER,
    AntiDsDNA           REAL,
    AntiSmith           REAL,
    AntiRNP             TEXT,
    LupusAnticoagulant  TEXT,
    CRPLevel            REAL,
    ESR                  REAL,
    RheumatoidFactor    REAL,
    AntiCCP             REAL,
    LabTechnician       TEXT,
    ReportGeneratedDate DATE,
    Interpretation      TEXT
);

INSERT INTO ImmunologyPanelResult VALUES (1, 'IP001', '2023-09-01', 'P001', 12.5, 1.2, 3.4, 0.9, 0.2, 1, 15.0, 5.0, 'Negative', 'Negative', 0.8, 12, 14.0, 25.0, 'TechA', '2023-09-02', 'Within normal limits');
INSERT INTO ImmunologyPanelResult VALUES (2, 'IP002', '2023-09-15', 'P002', 8.0, 0.8, 2.1, 0.7, 0.1, 0, 0.0, 0.0, 'Positive', 'Positive', 1.5, 20, 30.0, 45.0, 'TechB', '2023-09-16', 'Elevated antibodies');
INSERT INTO ImmunologyPanelResult VALUES (3, 'IP003', '2023-10-05', 'P003', 10.2, 1.0, 2.8, 0.85, 0.15, 1, 8.0, 2.5, 'Negative', 'Negative', 0.6, 10, 10.0, 15.0, 'TechC', '2023-10-06', 'Borderline results');

-- Blood bank inventory detail
CREATE TABLE BloodBankInventoryDetail
(
    InventoryID          INTEGER PRIMARY KEY,
    BloodUnitID          TEXT,
    BloodType            TEXT,
    RhFactor             TEXT,
    CollectionDate       DATE,
    ExpirationDate       DATE,
    VolumeML             INTEGER,
    DonorID              TEXT,
    ScreeningResult      TEXT,
    StorageLocation      TEXT,
    TemperatureC         REAL,
    QuantityUnits        INTEGER,
    ReservedFlag         INTEGER,
    IssueDate            DATE,
    RecipientID          TEXT,
    ComponentType        TEXT,
    ProcessingMethod     TEXT,
    PathogenReduction    TEXT,
    QualityGrade         TEXT,
    Notes                TEXT
);

INSERT INTO BloodBankInventoryDetail VALUES (1, 'BU001', 'A', '+', '2023-08-01', '2023-10-01', 450, 'D001', 'Pass', 'Freezer1', -196.0, 1, 0, NULL, NULL, 'WholeBlood', 'Standard', 'None', 'A', 'First unit');
INSERT INTO BloodBankInventoryDetail VALUES (2, 'BU002', 'O', '-', '2023-08-15', '2023-10-15', 350, 'D002', 'Pass', 'Freezer2', -195.5, 1, 1, '2023-09-01', 'R001', 'Plasma', 'Standard', 'PathogenX', 'B', 'Reserved for surgery');
INSERT INTO BloodBankInventoryDetail VALUES (3, 'BU003', 'B', '+', '2023-09-05', '2023-11-05', 250, 'D003', 'Fail', 'Freezer3', -194.0, 1, 0, NULL, NULL, 'Platelets', 'Apheresis', 'None', 'C', 'Low volume');

-- Hospital energy source mix
CREATE TABLE HospitalEnergySourceMix
(
    RecordID             INTEGER PRIMARY KEY,
    FacilityID           TEXT,
    RecordDate           DATE,
    ElectricitySource    TEXT,
    Percentage           REAL,
    NaturalGasSource     TEXT,
    GasPercentage        REAL,
    SolarGenerationKWh   REAL,
    WindGenerationKWh    REAL,
    HydroGenerationKWh   REAL,
    BiomassGenerationKWh REAL,
    TotalConsumptionKWh REAL,
    CO2EmissionsKg      REAL,
    RenewablePercentage  REAL,
    GridReliability      TEXT,
    EnergyCostUSD        REAL,
    PeakDemandKW         REAL,
    OffPeakDemandKW      REAL,
    DemandResponseParticipation TEXT,
    Comments             TEXT
);

INSERT INTO HospitalEnergySourceMix VALUES (1, 'H001', '2023-09-30', 'Grid', 70.0, 'PipelineA', 30.0, 1200.0, 800.0, 500.0, 200.0, 8000.0, 1500.0, 35.0, 'High', 25000.0, 950.0, 450.0, 'Enrolled', 'Monthly report');
INSERT INTO HospitalEnergySourceMix VALUES (2, 'H002', '2023-09-30', 'Grid', 80.0, 'PipelineB', 20.0, 900.0, 600.0, 400.0, 150.0, 7500.0, 1300.0, 30.0, 'Medium', 23000.0, 890.0, 420.0, 'NotEnrolled', 'Quarterly review');
INSERT INTO HospitalEnergySourceMix VALUES (3, 'H003', '2023-09-30', 'Grid', 75.0, 'PipelineC', 25.0, 1000.0, 700.0, 450.0, 180.0, 7700.0, 1400.0, 32.0, 'High', 24000.0, 910.0, 440.0, 'Enrolled', 'Annual summary');

-- Pharmacy cold chain log
CREATE TABLE PharmacyColdChainLog
(
    LogID                INTEGER PRIMARY KEY,
    ShipmentID           TEXT,
    ProductBatch         TEXT,
    ArrivalTempC         REAL,
    ArrivalDate          DATE,
    DepartureTempC       REAL,
    DepartureDate        DATE,
    StorageTempC         REAL,
    MonitoringDeviceID   TEXT,
    AlertFlag            INTEGER,
    DurationHours        REAL,
    ComplianceStatus     TEXT,
    ResponsibleTechnician TEXT,
    RefrigerationUnitID  TEXT,
    MaintenanceDueDate   DATE,
    CalibrationStatus    TEXT,
    TemperatureTrend     TEXT,
    ViolationReason      TEXT,
    CorrectiveAction     TEXT,
    FinalDisposition     TEXT
);

INSERT INTO PharmacyColdChainLog VALUES (1, 'SH001', 'PB001', 2.5, '2023-08-10', 2.3, '2023-08-12', 2.2, 'MD001', 0, 48.0, 'Compliant', 'TechA', 'RU01', '2024-01-01', 'Calibrated', 'Stable', NULL, 'None', 'Released');
INSERT INTO PharmacyColdChainLog VALUES (2, 'SH002', 'PB002', 5.0, '2023-08-15', 5.2, '2023-08-17', 5.1, 'MD002', 1, 72.0, 'NonCompliant', 'TechB', 'RU02', '2023-12-15', 'Due', 'Rising', 'Temp excursion', 'Repackaged', 'Returned');
INSERT INTO PharmacyColdChainLog VALUES (3, 'SH003', 'PB003', 3.0, '2023-08-20', 3.1, '2023-08-22', 3.0, 'MD003', 0, 36.0, 'Compliant', 'TechC', 'RU03', '2024-03-10', 'Calibrated', 'Stable', NULL, 'None', 'Released');

-- Environmental sensor reading
CREATE TABLE EnvironmentalSensorReading
(
    ReadingID            INTEGER PRIMARY KEY,
    SensorID             TEXT,
    SensorType           TEXT,
    ReadingTimestamp     DATE,
    TemperatureC         REAL,
    HumidityPercent      REAL,
    CO2ppm               REAL,
    PM25ugm3             REAL,
    NoiseDb              REAL,
    LightLux             REAL,
    PressurePa           REAL,
    VOCppb               REAL,
    BatteryLevel         INTEGER,
    SignalStrength       INTEGER,
    FirmwareVersion      TEXT,
    LocationDescription  TEXT,
    CalibrationDate      DATE,
    AnomalyFlag          INTEGER,
    DataQualityScore     REAL,
    Notes                TEXT
);

INSERT INTO EnvironmentalSensorReading VALUES (1, 'ES001', 'Temperature', '2023-09-01', 22.5, 45.0, 400.0, 12.0, 55.0, 300.0, 101325.0, 0.5, 80, 75, 'v1.0', 'Lobby', '2023-01-01', 0, 0.99, 'Normal day');
INSERT INTO EnvironmentalSensorReading VALUES (2, 'ES002', 'AirQuality', '2023-09-01', 23.0, 50.0, 800.0, 35.0, 60.0, 350.0, 101400.0, 1.2, 78, 70, 'v1.1', 'ICU', '2023-02-15', 1, 0.85, 'High CO2');
INSERT INTO EnvironmentalSensorReading VALUES (3, 'ES003', 'Noise', '2023-09-01', 21.0, 40.0, 350.0, 8.0, 70.0, 200.0, 101300.0, 0.3, 90, 80, 'v0.9', 'ParkingLot', '2022-12-20', 0, 0.95, 'Quiet evening');

-- Genomic variant interpretation
CREATE TABLE GenomicVariantInterpretation
(
    InterpretationID     INTEGER PRIMARY KEY,
    VariantID            TEXT,
    GeneSymbol           TEXT,
    NucleotideChange     TEXT,
    ProteinChange        TEXT,
    ClinicalSignificance TEXT,
    ACMGClassification   TEXT,
    FrequencyPopulation  REAL,
    InheritancePattern   TEXT,
    DiseaseAssociation   TEXT,
    EvidenceLevel        TEXT,
    ReviewStatus         TEXT,
    ReviewerID           INTEGER,
    ReviewDate           DATE,
    Comment              TEXT,
    ReferencePubMedID    TEXT,
    TherapeuticImplication TEXT,
    TestingMethod        TEXT,
    ValidationStatus     TEXT,
    UpdatedDate          DATE
);

INSERT INTO GenomicVariantInterpretation VALUES (1, 'VAR001', 'BRCA1', 'c.68_69del', 'p.Glu23Valfs', 'Pathogenic', 'Pathogenic', 0.0001, 'AutosomalDominant', 'BreastCancer', 'Strong', 'Approved', 401, '2023-06-01', 'Well supported', 'PM123456', 'PARPInhibitor', 'NGS', 'Validated', '2023-06-10');
INSERT INTO GenomicVariantInterpretation VALUES (2, 'VAR002', 'CFTR', 'c.1521_1523del', 'p.Phe508del', 'LikelyPathogenic', 'LikelyPathogenic', 0.02, 'AutosomalRecessive', 'CysticFibrosis', 'Moderate', 'Pending', 402, '2023-07-15', 'Requires further data', 'PM234567', 'CFTRModulator', 'Sanger', 'PendingValidation', '2023-07-20');
INSERT INTO GenomicVariantInterpretation VALUES (3, 'VAR003', 'APOE', 'c.388T>C', 'p.Cys130Arg', 'Benign', 'Benign', 0.15, 'None', 'AlzheimerRisk', 'Low', 'Approved', 403, '2023-05-20', 'Common variant', 'PM345678', 'RiskAssessment', 'Array', 'Validated', '2023-05-25');