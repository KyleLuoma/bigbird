-- Facility utility meter readings for various services
CREATE TABLE FacilityUtilityMeterReadings
(
    ReadingID            INTEGER PRIMARY KEY,
    FacilityID           INTEGER,
    MeterType            TEXT,
    ReadingDate          DATE,
    StartReading         REAL,
    EndReading           REAL,
    Units                TEXT,
    RecordedBy           TEXT,
    VerificationCode    TEXT,
    Consumption          REAL,
    CostPerUnit          REAL,
    TotalCost            REAL,
    BillingPeriodStart   DATE,
    BillingPeriodEnd     DATE,
    MeterLocation        TEXT,
    MaintenanceFlag      INTEGER,
    CalibrationDate      DATE,
    CalibrationTechnician TEXT,
    Remarks              TEXT,
    CreatedAt            DATE,
    UpdatedAt            DATE,
    IsActive             INTEGER
);

INSERT INTO FacilityUtilityMeterReadings VALUES (1, 101, 'Electricity', '2023-01-01', 1200.5, 1305.8, 'kWh', 'Alice', 'VC001', 105.3, 0.12, 12.64, '2023-01-01', '2023-01-31', 'MainBuilding', 0, '2022-12-15', 'Bob', 'MonthlyRead', '2023-01-01', '2023-01-02', 1);
INSERT INTO FacilityUtilityMeterReadings VALUES (2, 102, 'Water', '2023-01-01', 300.0, 340.0, 'Gallons', 'Charlie', 'VC002', 40.0, 0.005, 0.20, '2023-01-01', '2023-01-31', 'EastWing', 0, '2022-12-20', 'Dana', 'MonthlyRead', '2023-01-01', '2023-01-02', 1);
INSERT INTO FacilityUtilityMeterReadings VALUES (3, 103, 'Gas', '2023-01-01', 5000.0, 5200.0, 'Therms', 'Eve', 'VC003', 200.0, 0.03, 6.00, '2023-01-01', '2023-01-31', 'LabSection', 0, '2022-12-18', 'Frank', 'MonthlyRead', '2023-01-01', '2023-01-02', 1);


-- Staff training modules offered by the hospital
CREATE TABLE StaffTrainingModule
(
    ModuleID             INTEGER PRIMARY KEY,
    ModuleCode           TEXT,
    Title                TEXT,
    Category             TEXT,
    DurationHours        INTEGER,
    DeliveryMethod       TEXT,
    TargetAudience       TEXT,
    PrerequisiteModule   TEXT,
    InstructorName       TEXT,
    AccreditationBody    TEXT,
    CreditUnits          REAL,
    Language             TEXT,
    IsMandatory          INTEGER,
    EffectiveDate        DATE,
    ExpirationDate       DATE,
    MaxParticipants      INTEGER,
    RegistrationOpenDate DATE,
    RegistrationCloseDate DATE,
    OnlineLink           TEXT,
    MaterialsProvided    TEXT,
    AssessmentType       TEXT,
    PassScore            INTEGER,
    CreatedBy            TEXT,
    CreatedAt            DATE,
    UpdatedAt            DATE,
    IsActive             INTEGER
);

INSERT INTO StaffTrainingModule VALUES (1, 'TM001', 'InfectionControlBasics', 'Safety', 4, 'Online', 'AllStaff', 'None', 'Grace', 'JCAHO', 2.0, 'English', 1, '2023-02-01', '2025-02-01', 100, '2023-01-15', '2023-01-31', 'http://train.hospital.com/ICB', 'SlidesPDF', 'Quiz', 80, 'Helen', '2023-01-01', '2023-01-02', 1);
INSERT INTO StaffTrainingModule VALUES (2, 'TM002', 'AdvancedCardiacLifeSupport', 'Clinical', 8, 'InPerson', 'Physicians', 'TM001', 'Ian', 'AHA', 4.0, 'English', 0, '2023-03-01', '2026-03-01', 25, '2023-02-10', '2023-02-28', 'http://train.hospital.com/ACLS', 'Mannequin', 'Practical', 85, 'Jack', '2023-02-01', '2023-02-02', 1);
INSERT INTO StaffTrainingModule VALUES (3, 'TM003', 'ElectronicHealthRecordUsage', 'IT', 3, 'Hybrid', 'Nurses', 'TM001', 'Karen', 'HIT', 1.5, 'English', 1, '2023-04-01', '2025-04-01', 50, '2023-03-15', '2023-03-31', 'http://train.hospital.com/EHRU', 'VideoSeries', 'Exam', 90, 'Laura', '2023-03-01', '2023-03-02', 1);


-- Log of environmental sensor readings across the facility
CREATE TABLE EnvironmentalSensorLog
(
    SensorLogID          INTEGER PRIMARY KEY,
    SensorID             INTEGER,
    SensorType           TEXT,
    Location             TEXT,
    ReadingTimestamp     DATE,
    TemperatureC         REAL,
    HumidityPercent      REAL,
    CO2PPM               REAL,
    VOCPPM               REAL,
    NoiseDecibel         REAL,
    LightLux             REAL,
    BatteryLevelPercent  INTEGER,
    SignalStrength       INTEGER,
    FirmwareVersion      TEXT,
    CalibrationDate      DATE,
    MaintenanceFlag      INTEGER,
    AlertThresholdBreached INTEGER,
    AlertCode            TEXT,
    RecordedBy           TEXT,
    Remarks              TEXT,
    CreatedAt            DATE,
    UpdatedAt            DATE,
    IsActive             INTEGER
);

INSERT INTO EnvironmentalSensorLog VALUES (1, 201, 'TempHumidity', 'ICU', '2023-01-10', 22.5, 45.0, 0, 0, 55.0, 300, 95, -70, 'v1.2', '2022-12-01', 0, 0, 'None', 'Mike', 'Normal', '2023-01-10', '2023-01-11', 1);
INSERT INTO EnvironmentalSensorLog VALUES (2, 202, 'CO2', 'LabA', '2023-01-10', 20.0, 40.0, 800, 0, 45.0, 200, 88, -68, 'v1.0', '2022-11-15', 0, 1, 'CO2High', 'Nina', 'CO2 above threshold', '2023-01-10', '2023-01-12', 1);
INSERT INTO EnvironmentalSensorLog VALUES (3, 203, 'VOC', 'Pharmacy', '2023-01-10', 21.0, 42.0, 0, 150, 50.0, 250, 90, -69, 'v1.1', '2022-12-20', 0, 0, 'None', 'Oscar', 'Normal', '2023-01-10', '2023-01-11', 1);


-- Orders for medical supplies
CREATE TABLE MedicalSupplyOrder
(
    OrderID              INTEGER PRIMARY KEY,
    SupplierID           INTEGER,
    OrderDate            DATE,
    ExpectedDeliveryDate DATE,
    ReceivedDate         DATE,
    Status               TEXT,
    CreatedBy            TEXT,
    ApprovedBy           TEXT,
    ShippingMethod       TEXT,
    TrackingNumber       TEXT,
    TotalItems           INTEGER,
    TotalCost            REAL,
    Currency             TEXT,
    PaymentTerms         TEXT,
    FreightCost          REAL,
    TaxAmount            REAL,
    DiscountPercent      REAL,
    UrgencyLevel         INTEGER,
    DeliveryLocation     TEXT,
    ContactPerson        TEXT,
    ContactPhone         TEXT,
    Comments             TEXT,
    CreatedAt            DATE,
    UpdatedAt            DATE,
    IsActive             INTEGER
);

INSERT INTO MedicalSupplyOrder VALUES (1, 301, '2023-01-05', '2023-01-12', '2023-01-11', 'Received', 'Alice', 'Bob', 'Ground', 'TRK001', 250, 12500.0, 'USD', 'Net30', 150.0, 750.0, 5.0, 2, 'WarehouseA', 'Charlie', '5551234', 'Routine replenishment', '2023-01-05', '2023-01-12', 1);
INSERT INTO MedicalSupplyOrder VALUES (2, 302, '2023-01-07', '2023-01-15', NULL, 'Pending', 'Dana', 'Eve', 'Air', 'TRK002', 100, 8000.0, 'USD', 'Net15', 200.0, 400.0, 0.0, 3, 'WarehouseB', 'Frank', '5555678', 'Urgent gloves', '2023-01-07', '2023-01-07', 1);
INSERT INTO MedicalSupplyOrder VALUES (3, 303, '2023-01-09', '2023-01-20', NULL, 'Approved', 'Grace', 'Helen', 'Sea', 'TRK003', 500, 20000.0, 'USD', 'Net45', 300.0, 1000.0, 10.0, 1, 'WarehouseC', 'Ian', '5559012', 'Annual bulk order', '2023-01-09', '2023-01-10', 1);


-- Lifecycle events for equipment assets
CREATE TABLE EquipmentLifecycleEvent
(
    EventID              INTEGER PRIMARY KEY,
    EquipmentID          INTEGER,
    EventType            TEXT,
    EventDate            DATE,
    PerformedBy          TEXT,
    VendorID             INTEGER,
    Cost                 REAL,
    WarrantyMonths       INTEGER,
    ServiceProvider      TEXT,
    ServiceContractID    INTEGER,
    PartsReplacedCount   INTEGER,
    DowntimeHours        REAL,
    DiagnosticCode       TEXT,
    ResolutionNotes      TEXT,
    NextMaintenanceDue   DATE,
    DocumentationLink    TEXT,
    ApprovalStatus       TEXT,
    PriorityLevel        INTEGER,
    LocationID           INTEGER,
    IsCritical           INTEGER,
    CreatedAt            DATE,
    UpdatedAt            DATE,
    IsActive             INTEGER
);

INSERT INTO EquipmentLifecycleEvent VALUES (1, 401, 'Installation', '2022-06-01', 'Jack', 501, 15000.0, 24, 'VendorX', 601, 0, 0.0, 'None', 'Installed successfully', '2023-06-01', 'http://docs.hospital.com/install401', 'Approved', 2, 101, 1, '2022-06-01', '2022-06-02', 1);
INSERT INTO EquipmentLifecycleEvent VALUES (2, 402, 'Repair', '2023-01-15', 'Karen', 502, 2000.0, 12, 'VendorY', 602, 2, 5.0, 'E101', 'Replaced valve and sensor', '2023-07-15', 'http://docs.hospital.com/repair402', 'Pending', 1, 102, 0, '2023-01-15', '2023-01-16', 1);
INSERT INTO EquipmentLifecycleEvent VALUES (3, 403, 'Decommission', '2023-02-20', 'Leo', 503, 0.0, 0, 'VendorZ', 603, 0, 0.0, 'D202', 'Equipment retired', NULL, 'http://docs.hospital.com/decom403', 'Approved', 3, 103, 1, '2023-02-20', '2023-02-21', 1);


-- Log of transportation fleet activities
CREATE TABLE TransportationFleetLog
(
    FleetLogID           INTEGER PRIMARY KEY,
    VehicleID            INTEGER,
    DriverID             INTEGER,
    TripDate             DATE,
    OriginLocation       TEXT,
    DestinationLocation  TEXT,
    DistanceKm           REAL,
    FuelUsedLiters       REAL,
    TripDurationMinutes  INTEGER,
    VehicleStatus        TEXT,
    MaintenanceFlag      INTEGER,
    GPSStartedAt         DATETIME,
    GPSEndedAt           DATETIME,
    CargoDescription     TEXT,
    EmergencyFlag        INTEGER,
    WeatherCondition     TEXT,
    Notes                TEXT,
    CreatedBy            TEXT,
    CreatedAt            DATE,
    UpdatedAt            DATE,
    IsActive             INTEGER
);

INSERT INTO TransportationFleetLog VALUES (1, 701, 801, '2023-01-10', 'MainGate', 'LabA', 12.5, 1.2, 25, 'Operational', 0, '2023-01-10 08:00:00', '2023-01-10 08:25:00', 'Specimens', 0, 'Clear', 'On time', 'Mike', '2023-01-10', '2023-01-10', 1);
INSERT INTO TransportationFleetLog VALUES (2, 702, 802, '2023-01-11', 'Pharmacy', 'WardB', 5.0, 0.5, 12, 'Operational', 0, '2023-01-11 09:00:00', '2023-01-11 09:12:00', 'Medications', 0, 'Rain', 'Delayed 2 min', 'Nina', '2023-01-11', '2023-01-11', 1);
INSERT INTO TransportationFleetLog VALUES (3, 703, 803, '2023-01-12', 'ER', 'Radiology', 3.2, 0.3, 8, 'Operational', 0, '2023-01-12 10:15:00', '2023-01-12 10:23:00', 'XRayFilm', 0, 'Clear', 'No issues', 'Oscar', '2023-01-12', '2023-01-12', 1);


-- Log of research data access events
CREATE TABLE ResearchDataAccessLog
(
    AccessLogID          INTEGER PRIMARY KEY,
    ResearcherID         INTEGER,
    DataSetID            INTEGER,
    AccessDateTime       DATETIME,
    AccessType           TEXT,
    AccessLevel          TEXT,
    Purpose              TEXT,
    ApprovedBy           TEXT,
    ApprovalDate         DATE,
    IPAddress            TEXT,
    DeviceID             TEXT,
    DurationMinutes      INTEGER,
    DataVolumeMB         REAL,
    ConfidentialityFlag  INTEGER,
    AuditTrailID         INTEGER,
    Comments             TEXT,
    CreatedAt            DATE,
    UpdatedAt            DATE,
    IsActive             INTEGER
);

INSERT INTO ResearchDataAccessLog VALUES (1, 901, 1001, '2023-01-10 09:30:00', 'Read', 'Level2', 'Analysis', 'DrSmith', '2023-01-09', '192.168.1.10', 'DEV001', 45, 250.5, 1, 1101, 'No issues', '2023-01-10', '2023-01-10', 1);
INSERT INTO ResearchDataAccessLog VALUES (2, 902, 1002, '2023-01-11 14:15:00', 'Export', 'Level3', 'Publication', 'DrJones', '2023-01-10', '192.168.1.11', 'DEV002', 30, 120.0, 1, 1102, 'Exported for manuscript', '2023-01-11', '2023-01-11', 1);
INSERT INTO ResearchDataAccessLog VALUES (3, 903, 1003, '2023-01-12 11:00:00', 'Read', 'Level1', 'QualityCheck', 'DrLee', '2023-01-12', '192.168.1.12', 'DEV003', 20, 80.3, 0, 1103, 'QC review', '2023-01-12', '2023-01-12', 1);


-- Hospital energy audit records
CREATE TABLE HospitalEnergyAudit
(
    AuditID              INTEGER PRIMARY KEY,
    AuditDate            DATE,
    AuditorName          TEXT,
    BuildingWing         TEXT,
    TotalEnergyKWh       REAL,
    RenewablePct         REAL,
    PeakDemandKW         REAL,
    AverageDemandKW      REAL,
    HVACEnergyKWh        REAL,
    LightingEnergyKWh    REAL,
    MedicalEquipmentKWh  REAL,
    ITInfrastructureKWh  REAL,
    WaterHeatingKWh      REAL,
    RecommendationsCount INTEGER,
    FindingsSummary      TEXT,
    FollowUpDate         DATE,
    Status               TEXT,
    CreatedAt            DATE,
    UpdatedAt            DATE,
    IsActive             INTEGER
);

INSERT INTO HospitalEnergyAudit VALUES (1, '2023-01-15', 'Alice', 'NorthWing', 250000.0, 15.0, 1200.0, 300.0, 80000.0, 50000.0, 40000.0, 20000.0, 30000.0, 5, 'Improved insulation needed', '2023-04-01', 'Completed', '2023-01-15', '2023-04-02', 1);
INSERT INTO HospitalEnergyAudit VALUES (2, '2023-01-20', 'Bob', 'SouthWing', 180000.0, 10.0, 950.0, 250.0, 60000.0, 35000.0, 30000.0, 15000.0, 20000.0, 3, 'Upgrade lighting to LEDs', '2023-03-15', 'InProgress', '2023-01-20', '2023-02-01', 1);
INSERT INTO HospitalEnergyAudit VALUES (3, '2023-01-25', 'Carol', 'EastWing', 210000.0, 12.0, 1100.0, 280.0, 70000.0, 40000.0, 35000.0, 18000.0, 25000.0, 4, 'Optimize HVAC schedule', '2023-05-01', 'Planned', '2023-01-25', '2023-01-30', 1);


-- Version history for clinical guidelines
CREATE TABLE ClinicalGuidelineVersionHistory
(
    GuidelineVersionID   INTEGER PRIMARY KEY,
    GuidelineID          INTEGER,
    VersionNumber        TEXT,
    EffectiveDate        DATE,
    ExpirationDate       DATE,
    Author               TEXT,
    Reviewer             TEXT,
    ChangeSummary        TEXT,
    IsMandatory          INTEGER,
    SpecialtyArea        TEXT,
    DocumentURL          TEXT,
    ApprovalStatus       TEXT,
    CreatedAt            DATE,
    UpdatedAt            DATE,
    IsActive             INTEGER,
    ChangeLogCount       INTEGER,
    RelatedGuidelineID   INTEGER,
    ImplementationPhase  TEXT,
    TargetAudience       TEXT,
    ComplianceScore      REAL
);

INSERT INTO ClinicalGuidelineVersionHistory VALUES (1, 10001, 'v1.0', '2022-01-01', '2023-12-31', 'DrSmith', 'DrJones', 'Initial release', 1, 'Cardiology', 'http://guidelines.org/v1', 'Approved', '2022-01-01', '2022-01-01', 1, 0, NULL, 'Implementation', 'Clinicians', 95.0);
INSERT INTO ClinicalGuidelineVersionHistory VALUES (2, 10001, 'v1.1', '2023-01-01', NULL, 'DrLee', 'DrKim', 'Added new medication algorithm', 1, 'Cardiology', 'http://guidelines.org/v1.1', 'Approved', '2023-01-01', '2023-01-02', 1, 1, 10001, 'Update', 'Clinicians', 96.5);
INSERT INTO ClinicalGuidelineVersionHistory VALUES (3, 10002, 'v2.0', '2022-06-01', NULL, 'DrBrown', 'DrWhite', 'Major overhaul', 0, 'Oncology', 'http://guidelines.org/onc/v2', 'Pending', '2022-06-01', '2022-06-01', 1, 0, NULL, 'Draft', 'Oncologists', 80.0);


-- Inventory for waste management facilities
CREATE TABLE WasteManagementFacilityInventory
(
    InventoryID          INTEGER PRIMARY KEY,
    FacilityID           INTEGER,
    ItemName             TEXT,
    ItemCategory         TEXT,
    QuantityOnHand       INTEGER,
    UnitOfMeasure        TEXT,
    StorageLocation      TEXT,
    ExpirationDate       DATE,
    HazardLevel          TEXT,
    LastInspectionDate   DATE,
    NextInspectionDue    DATE,
    SupplierID           INTEGER,
    PurchaseDate         DATE,
    CostPerUnit          REAL,
    TotalCost            REAL,
    SafetyDataSheetURL   TEXT,
    DisposalMethod       TEXT,
    ResponsiblePerson    TEXT,
    Notes                TEXT,
    CreatedAt            DATE,
    UpdatedAt            DATE,
    IsActive             INTEGER
);

INSERT INTO WasteManagementFacilityInventory VALUES (1, 401, 'SharpsContainer', 'Container', 150, 'Units', 'RoomA', '2025-12-31', 'High', '2023-01-01', '2023-07-01', 501, '2022-12-01', 15.0, 2250.0, 'http://sds.org/sharps', 'Incineration', 'Alice', 'Standard size', '2023-01-01', '2023-01-02', 1);
INSERT INTO WasteManagementFacilityInventory VALUES (2, 402, 'BiohazardBag', 'Bag', 2000, 'Bags', 'RoomB', '2024-06-30', 'Medium', '2023-02-15', '2023-08-15', 502, '2023-01-10', 0.10, 200.0, 'http://sds.org/biobag', 'Landfill', 'Bob', '30L capacity', '2023-02-15', '2023-02-16', 1);
INSERT INTO WasteManagementFacilityInventory VALUES (3, 403, 'ChemicalDisposalCan', 'Can', 75, 'Units', 'RoomC', '2026-03-15', 'Low', '2023-03-01', '2023-09-01', 503, '2022-11-20', 20.0, 1500.0, 'http://sds.org/chemcan', 'Specialized treatment', 'Carol', 'Acid-resistant', '2023-03-01', '2023-03-02', 1);