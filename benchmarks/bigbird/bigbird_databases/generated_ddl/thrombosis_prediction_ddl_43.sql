-- Air quality monitoring stations
CREATE TABLE AirQualityMonitoringStation
(
    StationID          INTEGER PRIMARY KEY,
    StationName        TEXT,
    Location           TEXT,
    InstallDate        DATE,
    Latitude           REAL,
    Longitude          REAL,
    SensorModel        TEXT,
    PM25               REAL,
    PM10               REAL,
    NO2                REAL,
    SO2                REAL,
    CO                 REAL,
    O3                 REAL,
    Temperature        REAL,
    Humidity           REAL,
    BatteryLevel      INTEGER,
    FirmwareVersion    TEXT,
    MaintenanceDate    DATE,
    CalibrationDate    DATE,
    Active             INTEGER
);
INSERT INTO AirQualityMonitoringStation VALUES (1, 'StationA', 'NorthWing', '2022-03-15', 40.7128, -74.0060, 'AQM-1000', 12.5, 25.3, 0.04, 0.01, 0.6, 0.03, 22.1, 45.0, 85, 'v1.2.3', '2023-06-01', '2023-06-01', 1);
INSERT INTO AirQualityMonitoringStation VALUES (2, 'StationB', 'EastWing', '2022-07-20', 40.7130, -74.0055, 'AQM-1000', 15.2, 30.1, 0.05, 0.02, 0.7, 0.04, 23.0, 47.5, 78, 'v1.2.3', '2023-07-10', '2023-07-10', 1);
INSERT INTO AirQualityMonitoringStation VALUES (3, 'StationC', 'SouthWing', '2023-01-10', 40.7140, -74.0040, 'AQM-2000', 10.8, 20.4, 0.03, 0.009, 0.5, 0.02, 21.5, 44.0, 92, 'v2.0.1', '2023-08-05', '2023-08-05', 1);

-- Parking permit transactions
CREATE TABLE ParkingPermitTransaction
(
    TransactionID      INTEGER PRIMARY KEY,
    PermitID           INTEGER,
    VehiclePlate       TEXT,
    OwnerName          TEXT,
    IssueDate          DATE,
    ExpiryDate         DATE,
    PermitType         TEXT,
    Zone               TEXT,
    FeeAmount          REAL,
    PaymentMethod      TEXT,
    IssuedBy           TEXT,
    ProcessedBy        TEXT,
    ValidationCode     TEXT,
    Status             TEXT,
    LastUpdated        DATE,
    Remarks            TEXT,
    OverstayMinutes    INTEGER,
    FineAmount         REAL,
    NotificationSent   INTEGER,
    Cancelled          INTEGER
);
INSERT INTO ParkingPermitTransaction VALUES (101, 5001, 'ABC1234', 'JohnDoe', '2023-01-01', '2023-12-31', 'Annual', 'ZoneA', 120.00, 'CreditCard', 'Admin1', 'Clerk1', 'VAL123', 'Active', '2023-06-01', 'None', 0, 0.00, 0, 0);
INSERT INTO ParkingPermitTransaction VALUES (102, 5002, 'XYZ5678', 'JaneSmith', '2023-02-15', '2024-02-14', 'Annual', 'ZoneB', 130.00, 'Cash', 'Admin2', 'Clerk2', 'VAL456', 'Active', '2023-06-15', 'None', 5, 25.00, 1, 0);
INSERT INTO ParkingPermitTransaction VALUES (103, 5003, 'LMN9012', 'BobBrown', '2022-12-01', '2023-11-30', 'Annual', 'ZoneC', 110.00, 'DebitCard', 'Admin3', 'Clerk3', 'VAL789', 'Expired', '2023-06-30', 'ExpiredNoticeSent', 30, 60.00, 1, 0);

-- Supply recall alerts
CREATE TABLE SupplyRecallAlert
(
    AlertID            INTEGER PRIMARY KEY,
    SupplyID           INTEGER,
    SupplyName         TEXT,
    BatchNumber        TEXT,
    RecallDate         DATE,
    IssuingAgency      TEXT,
    Reason             TEXT,
    HazardLevel        TEXT,
    DistributionArea   TEXT,
    ContactInfo        TEXT,
    Status             TEXT,
    NotificationMethod TEXT,
    FollowUpDate       DATE,
    ResolvedDate       DATE,
    ImpactedUnits      INTEGER,
    EstimatedCost      REAL,
    DocumentationURL   TEXT,
    Comments           TEXT,
    CreatedBy          TEXT,
    CreatedDate        DATE
);
INSERT INTO SupplyRecallAlert VALUES (2001, 3001, 'Syringe', 'BATCHA1', '2023-05-10', 'FDA', 'Contamination', 'High', 'NorthRegion', '1234567890', 'Open', 'Email', '2023-06-01', NULL, 5000, 25000.00, 'http://example.com/recall1', 'Awaiting response', 'AdminA', '2023-05-10');
INSERT INTO SupplyRecallAlert VALUES (2002, 3002, 'IVFluids', 'BATCHB2', '2023-04-22', 'EMA', 'LabelError', 'Medium', 'EastRegion', '0987654321', 'Closed', 'Phone', '2023-05-10', '2023-05-15', 2000, 15000.00, 'http://example.com/recall2', 'Resolved', 'AdminB', '2023-04-22');
INSERT INTO SupplyRecallAlert VALUES (2003, 3003, 'Gloves', 'BATCHC3', '2023-06-01', 'HealthDept', 'MaterialDefect', 'Low', 'SouthRegion', '5551234567', 'Open', 'Letter', '2023-06-15', NULL, 8000, 10000.00, 'http://example.com/recall3', 'Pending investigation', 'AdminC', '2023-06-01');

-- Data access event log
CREATE TABLE DataAccessEventLog
(
    EventID            INTEGER PRIMARY KEY,
    UserID             INTEGER,
    UserName           TEXT,
    AccessDateTime     TEXT,
    ResourceType       TEXT,
    ResourceID         INTEGER,
    ActionPerformed    TEXT,
    Outcome            TEXT,
    SourceIP           TEXT,
    DestinationIP      TEXT,
    SessionID          TEXT,
    AuthenticationMethod TEXT,
    DeviceType         TEXT,
    BrowserInfo        TEXT,
    DataVolumeBytes    INTEGER,
    AccessDurationSec  INTEGER,
    SensitiveFlag      INTEGER,
    ComplianceCheck    TEXT,
    Notes              TEXT,
    RecordedBy         TEXT
);
INSERT INTO DataAccessEventLog VALUES (3001, 101, 'alice', '2023-06-01 08:15:00', 'PatientRecord', 5001, 'View', 'Success', '192.168.1.10', '10.0.0.5', 'SID123', 'Password', 'Desktop', 'Chrome', 0, 5, 1, 'Pass', 'No issues', 'System');
INSERT INTO DataAccessEventLog VALUES (3002, 102, 'bob', '2023-06-01 09:30:00', 'LabResult', 3002, 'Download', 'Success', '192.168.1.11', '10.0.0.6', 'SID124', 'Token', 'Laptop', 'Firefox', 2048, 12, 1, 'Pass', 'Encrypted transfer', 'System');
INSERT INTO DataAccessEventLog VALUES (3003, 103, 'carol', '2023-06-01 10:45:00', 'ImagingStudy', 7003, 'Delete', 'Failed', '192.168.1.12', '10.0.0.7', 'SID125', 'Password', 'Tablet', 'Safari', 0, 2, 1, 'Fail', 'Insufficient rights', 'System');

-- Decision support algorithm
CREATE TABLE DecisionSupportAlgorithm
(
    AlgorithmID        INTEGER PRIMARY KEY,
    AlgorithmName      TEXT,
    Version            TEXT,
    Domain             TEXT,
    TriggerEvent       TEXT,
    InputParameters    TEXT,
    OutputRecommendation TEXT,
    Sensitivity        REAL,
    Specificity        REAL,
    Accuracy           REAL,
    DevelopedBy        TEXT,
    ValidationDate     DATE,
    ApprovalStatus     TEXT,
    RiskScore          REAL,
    Threshold          REAL,
    DocumentationURL   TEXT,
    LastUpdate         DATE,
    Active             INTEGER,
    Remarks            TEXT,
    CreatedAt          DATE
);
INSERT INTO DecisionSupportAlgorithm VALUES (4001, 'SepsisAlert', '1.0', 'CriticalCare', 'VitalSignsChange', 'HR,BP,Temp', 'StartAntibiotics', 0.92, 0.88, 0.90, 'TeamA', '2023-04-01', 'Approved', 0.75, 0.7, 'http://example.com/alg1', '2023-06-01', 1, 'Initial release', '2023-01-15');
INSERT INTO DecisionSupportAlgorithm VALUES (4002, 'DVTRiskScore', '2.1', 'Orthopedics', 'PostOpDay3', 'Mobility,Age,History', 'ApplyCompression', 0.85, 0.80, 0.83, 'TeamB', '2023-03-15', 'Approved', 0.68, 0.6, 'http://example.com/alg2', '2023-06-02', 1, 'Updated thresholds', '2023-02-10');
INSERT INTO DecisionSupportAlgorithm VALUES (4003, 'HyperglycemiaAlert', '1.3', 'Endocrinology', 'GlucoseSpike', 'Glucose,InsulinDose', 'AdjustInsulin', 0.88, 0.85, 0.86, 'TeamC', '2023-02-20', 'Pending', 0.70, 0.65, 'http://example.com/alg3', '2023-06-03', 0, 'Under review', '2023-03-05');

-- Remote health device catalog
CREATE TABLE RemoteHealthDeviceCatalog
(
    DeviceID           INTEGER PRIMARY KEY,
    DeviceName         TEXT,
    Manufacturer       TEXT,
    ModelNumber        TEXT,
    FirmwareVersion    TEXT,
    ReleaseDate        DATE,
    DeviceType         TEXT,
    Connectivity       TEXT,
    BatteryLifeHours   INTEGER,
    SensorCount        INTEGER,
    DataEncryption     TEXT,
    Certification      TEXT,
    WarrantyYears      INTEGER,
    PriceUSD           REAL,
    SupportedOS        TEXT,
    RemoteUpdateCapable INTEGER,
    LastServiceDate    DATE,
    ServiceIntervalDays INTEGER,
    DecommissionDate   DATE,
    Active             INTEGER
);
INSERT INTO RemoteHealthDeviceCatalog VALUES (5001, 'HeartWatch', 'MediTech', 'HW-1000', 'v3.1', '2022-05-10', 'Wearable', 'Bluetooth', 48, 2, 'AES256', 'CE', 2, 199.99, 'iOS,Android', 1, '2023-05-01', 180, NULL, 1);
INSERT INTO RemoteHealthDeviceCatalog VALUES (5002, 'GlucosePro', 'HealthSensors', 'GP-200', 'v2.5', '2021-11-20', 'Portable', 'WiFi', 24, 1, 'RSA2048', 'FDA', 3, 149.99, 'iOS,Android', 1, '2023-04-15', 365, NULL, 1);
INSERT INTO RemoteHealthDeviceCatalog VALUES (5003, 'SleepTrackerX', 'SleepWell', 'STX-300', 'v1.9', '2020-08-05', 'Wearable', 'BLE', 72, 3, 'AES128', 'CE', 1, 99.99, 'Android', 0, '2022-12-01', 730, '2023-12-31', 0);

-- Specimen chain log
CREATE TABLE SpecimenChainLog
(
    LogID              INTEGER PRIMARY KEY,
    SpecimenID         TEXT,
    CollectionDate     DATE,
    CollectorName      TEXT,
    SourceLocation     TEXT,
    TransportMedium    TEXT,
    TemperatureC       REAL,
    ChainID            TEXT,
    TransferStartTime  TEXT,
    TransferEndTime    TEXT,
    ReceivingLab       TEXT,
    ProcessingStatus   TEXT,
    AliquotCount       INTEGER,
    VolumeML           REAL,
    PreservationMethod TEXT,
    Barcode            TEXT,
    QualityScore       REAL,
    Disposition        TEXT,
    Notes              TEXT,
    RecordedBy         TEXT
);
INSERT INTO SpecimenChainLog VALUES (6001, 'SP001', '2023-05-20', 'NurseA', 'ER', 'EDTA', 4.0, 'CH001', '2023-05-20 08:00:00', '2023-05-20 08:30:00', 'LabA', 'Received', 2, 5.0, 'Frozen', 'BC12345', 0.95, 'Stored', 'No issues', 'System');
INSERT INTO SpecimenChainLog VALUES (6002, 'SP002', '2023-05-21', 'NurseB', 'ICU', 'Heparin', 3.5, 'CH002', '2023-05-21 09:15:00', '2023-05-21 09:45:00', 'LabB', 'Processed', 1, 3.0, 'Refrigerated', 'BC12346', 0.88, 'Analyzed', 'Slight delay', 'System');
INSERT INTO SpecimenChainLog VALUES (6003, 'SP003', '2023-05-22', 'NurseC', 'Ward3', 'Citrate', 2.8, 'CH003', '2023-05-22 10:00:00', '2023-05-22 10:20:00', 'LabC', 'Rejected', 0, 0.0, 'RoomTemp', 'BC12347', 0.00, 'Discarded', 'Clotted', 'System');

-- Community program attendance
CREATE TABLE CommunityProgramAttendance
(
    AttendanceID       INTEGER PRIMARY KEY,
    ProgramID          INTEGER,
    ProgramName        TEXT,
    Date               DATE,
    Location           TEXT,
    ParticipantID      INTEGER,
    ParticipantName    TEXT,
    AgeGroup           TEXT,
    Gender             TEXT,
    AttendanceStatus   TEXT,
    ArrivalTime        TEXT,
    DepartureTime      TEXT,
    SessionsAttended   INTEGER,
    FeedbackScore      REAL,
    VolunteerID        INTEGER,
    VolunteerName      TEXT,
    MaterialsProvided  TEXT,
    FollowUpRequired   INTEGER,
    FollowUpDate       DATE,
    Comments           TEXT
);
INSERT INTO CommunityProgramAttendance VALUES (7001, 101, 'HealthFair', '2023-04-10', 'CommunityCenter', 1001, 'JohnDoe', 'Adult', 'Male', 'Present', '09:00', '12:00', 3, 4.5, 2001, 'Emily', 'Brochure', 0, NULL, 'Positive feedback');
INSERT INTO CommunityProgramAttendance VALUES (7002, 102, 'NutritionWorkshop', '2023-05-15', 'Library', 1002, 'JaneSmith', 'Senior', 'Female', 'Present', '14:00', '16:00', 2, 4.8, 2002, 'Michael', 'Handout', 1, '2023-05-20', 'Will join follow‑up');
INSERT INTO CommunityProgramAttendance VALUES (7003, 103, 'ExerciseClass', '2023-06-05', 'Gym', 1003, 'BobBrown', 'Adult', 'Male', 'Absent', NULL, NULL, 0, NULL, 2003, 'Laura', 'None', 0, NULL, 'No show');

-- Energy audit report
CREATE TABLE EnergyAuditReport
(
    ReportID           INTEGER PRIMARY KEY,
    FacilityID         INTEGER,
    FacilityName       TEXT,
    AuditDate          DATE,
    AuditorName        TEXT,
    TotalEnergyKWh     REAL,
    ElectricityKWh     REAL,
    GasTherms          REAL,
    WaterLiters        REAL,
    PeakDemandKW       REAL,
    AvgDemandKW        REAL,
    EnergyCostUSD      REAL,
    CO2EmissionsTon   REAL,
    Recommendations    TEXT,
    SavingsPotentialUSD REAL,
    ImplementationCostUSD REAL,
    PaybackPeriodMonths INTEGER,
    Status             TEXT,
    FollowUpDate       DATE,
    Notes              TEXT
);
INSERT INTO EnergyAuditReport VALUES (8001, 1, 'MainHospital', '2023-03-01', 'AuditorA', 1250000.0, 900000.0, 30000.0, 1500000.0, 2500.0, 800.0, 250000.0, 500.0, 'UpgradeLED,OptimizeHVAC', 50000.0, 20000.0, 12, 'Completed', '2023-06-01', 'All actions approved');
INSERT INTO EnergyAuditReport VALUES (8002, 2, 'EastWing', '2023-04-15', 'AuditorB', 850000.0, 600000.0, 25000.0, 1200000.0, 1800.0, 600.0, 180000.0, 380.0, 'InstallSolar,SealWindows', 40000.0, 25000.0, 15, 'InProgress', '2023-08-01', 'Pending funding');
INSERT INTO EnergyAuditReport VALUES (8003, 3, 'WestWing', '2023-05-20', 'AuditorC', 950000.0, 700000.0, 28000.0, 1300000.0, 2100.0, 700.0, 210000.0, 420.0, 'UpgradeBoilers,ImproveInsulation', 45000.0, 30000.0, 14, 'Planned', '2023-09-15', 'Scheduling installations');

-- Dietary supplement order
CREATE TABLE DietarySupplementOrder
(
    OrderID            INTEGER PRIMARY KEY,
    SupplementID       INTEGER,
    SupplementName     TEXT,
    Manufacturer       TEXT,
    BatchNumber        TEXT,
    ExpirationDate     DATE,
    QuantityOrdered    INTEGER,
    UnitPriceUSD       REAL,
    TotalPriceUSD      REAL,
    OrderDate          DATE,
    ReceivedDate       DATE,
    StorageLocation    TEXT,
    ShelfLifeDays      INTEGER,
    ControlledSubstance INTEGER,
    PrescribedBy       TEXT,
    PatientID          INTEGER,
    DosageInstructions TEXT,
    AdminRoute         TEXT,
    Status             TEXT,
    Notes              TEXT
);
INSERT INTO DietarySupplementOrder VALUES (9001, 301, 'VitaminD3', 'NutriHealth', 'BCH001', '2024-12-31', 100, 0.50, 50.00, '2023-05-01', '2023-05-05', 'PharmacyA', 730, 0, 'DrSmith', 2001, '1000IU daily', 'Oral', 'Delivered', 'No issues');
INSERT INTO DietarySupplementOrder VALUES (9002, 302, 'Omega3', 'SeaBiotics', 'BCH002', '2025-03-15', 50, 1.20, 60.00, '2023-06-10', '2023-06-12', 'PharmacyB', 540, 0, 'DrJones', 2002, '2 capsules daily', 'Oral', 'Pending', 'Awaiting approval');
INSERT INTO DietarySupplementOrder VALUES (9003, 303, 'ProbioticX', 'GutHealth', 'BCH003', '2024-08-20', 30, 2.00, 60.00, '2023-07-20', '2023-07-22', 'PharmacyC', 365, 0, 'DrLee', 2003, 'One packet daily', 'Oral', 'Cancelled', 'Patient withdrew');