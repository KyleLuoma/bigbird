-- Hospital Facility Audit information
CREATE TABLE HospitalFacilityAudit
(
    AuditID                INTEGER PRIMARY KEY,
    FacilityCode           TEXT,
    AuditDate              DATE,
    AuditorName            TEXT,
    BuildingAge            INTEGER,
    HVACStatus             TEXT,
    FireSafetyStatus       TEXT,
    ElectricalInspectionScore INTEGER,
    PlumbingInspectionScore INTEGER,
    SecuritySystemStatus   TEXT,
    WasteManagementCompliance TEXT,
    AccessibilityRating    INTEGER,
    EnergyEfficiencyScore  INTEGER,
    RoofCondition          TEXT,
    FlooringCondition      TEXT,
    WindowIntegrity        TEXT,
    LightingLevel          TEXT,
    JanitorialScore        INTEGER,
    PestControlStatus      TEXT,
    EmergencyExitCount     INTEGER
);

INSERT INTO HospitalFacilityAudit VALUES (1, 'FAC01', '2023-03-15', 'John Doe', 25, 'Optimal', 'Pass', 95, 92, 'Active', 'Compliant', 4, 88, 'Good', 'Good', 'Intact', 'Standard', 90, 'Clear', 6);
INSERT INTO HospitalFacilityAudit VALUES (2, 'FAC02', '2023-04-20', 'Jane Smith', 15, 'Moderate', 'Pass', 88, 85, 'Active', 'Compliant', 5, 82, 'Fair', 'Fair', 'Intact', 'Standard', 85, 'Clear', 8);
INSERT INTO HospitalFacilityAudit VALUES (3, 'FAC03', '2023-05-10', 'Alan Brown', 40, 'Poor', 'Fail', 70, 68, 'Inactive', 'Noncompliant', 3, 65, 'Poor', 'Poor', 'Damaged', 'Low', 70, 'Pending', 4);

-- Medical Inventory Log
CREATE TABLE MedicalInventoryLog
(
    LogID                  INTEGER PRIMARY KEY,
    ItemSKU                TEXT,
    ItemName               TEXT,
    Category               TEXT,
    QuantityOnHand         INTEGER,
    ReorderLevel           INTEGER,
    SupplierCode           TEXT,
    ReceivedDate           DATE,
    ExpirationDate         DATE,
    BatchNumber            TEXT,
    UnitCost               REAL,
    StorageLocation        TEXT,
    TemperatureRequirement TEXT,
    HazardousFlag          INTEGER,
    LastAuditDate          DATE,
    AuditorID              INTEGER,
    Comments               TEXT,
    ShelfLifeDays          INTEGER,
    StockStatus            TEXT,
    PurchaseOrderNumber    TEXT
);

INSERT INTO MedicalInventoryLog VALUES (101, 'SKU001', 'Syringe 5ml', 'Consumables', 500, 100, 'SUP01', '2023-01-05', '2025-01-04', 'BATCHA1', 0.12, 'WH-A1', 'RoomTemp', 0, '2023-03-01', 12, 'N/A', 730, 'Adequate', 'PO12345');
INSERT INTO MedicalInventoryLog VALUES (102, 'SKU002', 'Gloves Latex', 'Protective', 2000, 300, 'SUP02', '2023-02-10', '2024-02-09', 'BATCHB2', 0.05, 'WH-B2', 'RoomTemp', 0, '2023-04-12', 13, 'N/A', 365, 'Adequate', 'PO12346');
INSERT INTO MedicalInventoryLog VALUES (103, 'SKU003', 'Ethanol 70%', 'Chemicals', 150, 50, 'SUP03', '2023-03-15', '2025-03-14', 'BATCHC3', 1.20, 'WH-C3', 'Cool', 1, '2023-05-20', 14, 'Flammable', 730, 'Low', 'PO12347');

-- Staff Training Program
CREATE TABLE StaffTrainingProgram
(
    ProgramID               INTEGER PRIMARY KEY,
    ProgramName             TEXT,
    Department              TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    TrainerName             TEXT,
    TrainingMode            TEXT,
    CreditHours             INTEGER,
    RequiredFlag            INTEGER,
    AudienceLevel           TEXT,
    MaxParticipants         INTEGER,
    Location                TEXT,
    MaterialsProvided       TEXT,
    EvaluationScore         REAL,
    CertificationAwarded    TEXT,
    CostPerParticipant      REAL,
    SeatsAvailable          INTEGER,
    OnlineAccessLink        TEXT,
    FeedbackSummary         TEXT,
    Status                  TEXT
);

INSERT INTO StaffTrainingProgram VALUES (201, 'Infection Control', 'Nursing', '2023-06-01', '2023-06-03', 'Dr Lee', 'InPerson', 12, 1, 'All', 30, 'Room 101', 'Handouts', 4.5, 'IC Certificate', 25.00, 5, 'http://trainings.example.com/ic', 'Positive', 'Active');
INSERT INTO StaffTrainingProgram VALUES (202, 'Advanced ECG', 'Cardiology', '2023-07-10', '2023-07-12', 'Dr Patel', 'Hybrid', 15, 1, 'Physicians', 20, 'Lab 3', 'Slides', 4.8, 'ECG Pro', 40.00, 2, 'http://trainings.example.com/ecg', 'Excellent', 'Scheduled');
INSERT INTO StaffTrainingProgram VALUES (203, 'Data Privacy', 'Administration', '2023-08-05', '2023-08-05', 'Ms Gomez', 'Online', 8, 0, 'Staff', 100, 'Virtual', 'PDF', 4.2, 'Privacy Badge', 10.00, 80, 'http://trainings.example.com/privacy', 'Good', 'Completed');

-- Clinical Shift Schedule
CREATE TABLE ClinicalShiftSchedule
(
    ScheduleID                INTEGER PRIMARY KEY,
    UnitCode                  TEXT,
    ShiftDate                 DATE,
    ShiftType                 TEXT,
    PrimaryNurseID           INTEGER,
    SecondaryNurseID         INTEGER,
    ResidentID               INTEGER,
    AttendingPhysicianID     INTEGER,
    PatientCapacity          INTEGER,
    ExpectedAdmissions       INTEGER,
    BedOccupancyRate         REAL,
    HandOffTime              TEXT,
    BreakCount               INTEGER,
    OvertimeHours            REAL,
    NightFloatFlag           INTEGER,
    ShiftNotes               TEXT,
    EquipmentAssigned        TEXT,
    MedicationCartID         INTEGER,
    SafetyBriefCompleted     INTEGER,
    ShiftDurationHours       REAL,
    ShiftStatus              TEXT
);

INSERT INTO ClinicalShiftSchedule VALUES (301, 'ICU01', '2023-09-01', 'Night', 501, 502, 601, 701, 12, 3, 0.85, '19:00', 2, 1.5, 1, 'Stable patients', 'VentilatorSetA', 801, 1, 12.0, 'OnSchedule');
INSERT INTO ClinicalShiftSchedule VALUES (302, 'ER02', '2023-09-01', 'Day', 503, 504, 602, 702, 20, 5, 0.90, '07:30', 3, 0.0, 0, 'High influx expected', 'DefibrillatorB', 802, 1, 8.0, 'OnSchedule');
INSERT INTO ClinicalShiftSchedule VALUES (303, 'WARD03', '2023-09-02', 'Evening', 505, 506, 603, 703, 15, 2, 0.78, '15:00', 2, 0.5, 0, 'Routine care', 'MonitorSetC', 803, 1, 8.0, 'OnSchedule');

-- Equipment Lifecycle
CREATE TABLE EquipmentLifecycle
(
    EquipID                  INTEGER PRIMARY KEY,
    SerialNumber             TEXT,
    Model                    TEXT,
    Manufacturer             TEXT,
    PurchaseDate             DATE,
    WarrantyExpDate          DATE,
    InstallationDate         DATE,
    LocationCode             TEXT,
    CurrentStatus            TEXT,
    LastMaintenanceDate      DATE,
    MaintenanceFrequencyDays INTEGER,
    TotalRuntimeHours        REAL,
    CalibrationDueDate       DATE,
    DecommissionDate         DATE,
    AssetValue               REAL,
    DepreciationRate         REAL,
    AssignedDept             TEXT,
    ResponsibleTechID        INTEGER,
    FailureCount             INTEGER,
    ReplacementPartNeeded    TEXT,
    DisposalMethod           TEXT
);

INSERT INTO EquipmentLifecycle VALUES (401, 'SN1001', 'XRay2000', 'MedTech', '2020-01-15', '2025-01-14', '2020-02-01', 'RAD01', 'Active', '2023-02-20', 180, 2023-08-20, NULL, 150000.00, 0.15, 'Radiology', 901, 2, 'XRayTube', 'Recycle');
INSERT INTO EquipmentLifecycle VALUES (402, 'SN1002', 'VentProX', 'LifeCare', '2019-06-10', '2024-06-09', '2019-07-01', 'ICU02', 'Active', '2023-03-15', 90, 2023-09-15, NULL, 85000.00, 0.20, 'ICU', 902, 5, 'Valve', 'Donate');
INSERT INTO EquipmentLifecycle VALUES (403, 'SN1003', 'InfuseMax', 'HealCo', '2021-03-20', '2026-03-19', '2021-04-05', 'WARD04', 'Retired', '2022-12-01', 365, 2023-01-01, '2025-12-31', 30000.00, 0.10, 'GeneralWard', 903, 1, 'PumpMotor', 'Scrap');

-- Research Data Capture
CREATE TABLE ResearchDataCapture
(
    CaptureID                INTEGER PRIMARY KEY,
    StudyCode                TEXT,
    CaptureDate              DATE,
    CaptureMethod            TEXT,
    DeviceID                 TEXT,
    OperatorID               INTEGER,
    DataFormat               TEXT,
    FilePath                 TEXT,
    RecordCount              INTEGER,
    ErrorFlag                INTEGER,
    ValidationScore          REAL,
    ConsentVerified          INTEGER,
    AnonymizationLevel       TEXT,
    EncryptionUsed           INTEGER,
    StorageTier              TEXT,
    AccessLevel              TEXT,
    Notes                    TEXT,
    DataQualityRating        REAL,
    ArchiveStatus            TEXT,
    RetentionPeriodDays      INTEGER
);

INSERT INTO ResearchDataCapture VALUES (501, 'STDY001', '2023-04-12', 'Manual', 'DEV100', 1101, 'CSV', '/data/study1/20230412.csv', 1200, 0, 4.7, 1, 'High', 1, 'Tier1', 'Restricted', 'Initial capture', 4.8, 'Active', 3650);
INSERT INTO ResearchDataCapture VALUES (502, 'STDY002', '2023-05-18', 'Automated', 'DEV101', 1102, 'JSON', '/data/study2/20230518.json', 2500, 0, 4.9, 1, 'Medium', 1, 'Tier2', 'Limited', 'Follow-up collection', 4.9, 'Active', 7300);
INSERT INTO ResearchDataCapture VALUES (503, 'STDY003', '2023-06-05', 'Manual', 'DEV102', 1103, 'XML', '/data/study3/20230605.xml', 800, 1, 4.2, 0, 'Low', 0, 'Tier3', 'Open', 'Data with minor errors', 4.0, 'Pending', 1825);

-- Pharmacy Batch Record
CREATE TABLE PharmacyBatchRecord
(
    BatchID                  INTEGER PRIMARY KEY,
    DrugName                 TEXT,
    Strength                 TEXT,
    Form                     TEXT,
    BatchNumber              TEXT,
    Manufacturer             TEXT,
    ProductionDate           DATE,
    ExpiryDate               DATE,
    QuantityReceived         INTEGER,
    QuantityDispensed        INTEGER,
    RemainingStock           INTEGER,
    UnitCost                 REAL,
    StorageTemp              TEXT,
    HazardClass              TEXT,
    ReceivedBy               INTEGER,
    VerifiedBy               INTEGER,
    QAStatus                 TEXT,
    RecallFlag               INTEGER,
    DistributionChannel      TEXT,
    LastAuditDate            DATE,
    Comments                 TEXT
);

INSERT INTO PharmacyBatchRecord VALUES (601, 'Aspirin', '500mg', 'Tablet', 'BCH001', 'PharmaInc', '2022-12-01', '2025-11-30', 10000, 3500, 6500, 0.03, 'RoomTemp', 'None', 1201, 1202, 'Pass', 0, 'Retail', '2023-03-01', 'N/A');
INSERT INTO PharmacyBatchRecord VALUES (602, 'Amoxicillin', '250mg', 'Capsule', 'BCH002', 'HealthCorp', '2023-01-15', '2025-01-14', 8000, 2000, 6000, 0.08, 'Cool', 'None', 1203, 1204, 'Pass', 0, 'Hospital', '2023-04-10', 'N/A');
INSERT INTO PharmacyBatchRecord VALUES (603, 'Morphine', '10mg', 'Injection', 'BCH003', 'PainRelief', '2022-09-20', '2024-09-19', 2000, 1500, 500, 1.20, 'Cold', 'Controlled', 1205, 1206, 'Review', 1, 'Controlled', '2023-05-20', 'Possible recall pending');

-- Visitor Interaction Log
CREATE TABLE VisitorInteractionLog
(
    VisitID                  INTEGER PRIMARY KEY,
    VisitorName              TEXT,
    VisitorRelation          TEXT,
    VisitDate                DATE,
    ArrivalTime              TEXT,
    DepartureTime            TEXT,
    DepartmentVisited        TEXT,
    HostEmployeeID           INTEGER,
    PurposeOfVisit           TEXT,
    BadgeID                  TEXT,
    VisitorStatus            TEXT,
    CheckInMethod            TEXT,
    SecurityClearanceLevel   INTEGER,
    EscortRequired           INTEGER,
    FeedbackScore            REAL,
    Comments                 TEXT,
    FollowUpRequired         INTEGER,
    FollowUpDate             DATE,
    DurationMinutes          INTEGER,
    ExitSurveyCompleted      INTEGER
);

INSERT INTO VisitorInteractionLog VALUES (701, 'Emily Clark', 'Family', '2023-07-10', '09:15', '11:45', 'Oncology', 1301, 'VisitingPatient', 'BDG001', 'Approved', 'Kiosk', 2, 0, 4.5, 'Friendly', 0, NULL, 150, 1);
INSERT INTO VisitorInteractionLog VALUES (702, 'Michael Reed', 'Business', '2023-07-12', '14:00', '15:30', 'Administration', 1302, 'Meeting', 'BDG002', 'Approved', 'Reception', 3, 1, 4.0, 'Professional', 1, '2023-07-20', 90, 0);
INSERT INTO VisitorInteractionLog VALUES (703, 'Sofia Lopez', 'Friend', '2023-07-15', '10:30', '12:00', 'Pediatrics', 1303, 'Support', 'BDG003', 'Approved', 'Kiosk', 1, 0, 5.0, 'Very helpful staff', 0, NULL, 90, 1);

-- Emergency Response Team
CREATE TABLE EmergencyResponseTeam
(
    TeamID                INTEGER PRIMARY KEY,
    TeamName              TEXT,
    ActivationDate        DATE,
    LeaderID              INTEGER,
    MemberCount           INTEGER,
    Specialty             TEXT,
    EquipmentPack         TEXT,
    ResponseTimeMinutes   REAL,
    CoverageArea          TEXT,
    ShiftPattern          TEXT,
    TrainingLevel         TEXT,
    CertificationStatus   TEXT,
    LastDrillDate         DATE,
    CurrentStatus         TEXT,
    ContactNumber         TEXT,
    RadioChannel          TEXT,
    IncidentLogID         INTEGER,
    ResourceAllocation    TEXT,
    FundingSource         TEXT,
    EvaluationScore       REAL
);

INSERT INTO EmergencyResponseTeam VALUES (801, 'RapidResponse', '2023-01-01', 1401, 12, 'Trauma', 'PackA', 4.5, 'EastWing', '24/7', 'Advanced', 'Certified', '2023-06-15', 'Ready', '5551234', 'CH1', 2001, 'Full', 'HospitalBudget', 4.7);
INSERT INTO EmergencyResponseTeam VALUES (802, 'CodeBlueTeam', '2023-02-01', 1402, 8, 'Cardiac', 'PackB', 5.0, 'WestWing', 'OnCall', 'Intermediate', 'Certified', '2023-05-20', 'Ready', '5555678', 'CH2', 2002, 'Partial', 'GrantFunding', 4.5);
INSERT INTO EmergencyResponseTeam VALUES (803, 'FireSafetySquad', '2023-03-01', 1403, 10, 'Fire', 'PackC', 6.0, 'AllBuildings', 'Rotating', 'Basic', 'Pending', '2023-04-10', 'Standby', '5559012', 'CH3', 2003, 'Limited', 'Donations', 4.2);

-- Facility Utility Meter
CREATE TABLE FacilityUtilityMeter
(
    MeterID                 INTEGER PRIMARY KEY,
    MeterType               TEXT,
    LocationCode            TEXT,
    InstallationDate        DATE,
    LastReadingDate         DATE,
    CurrentReading          DECIMAL(12,2),
    Unit                    TEXT,
    CalibrationDate         DATE,
    CalibrationDueDate      DATE,
    MaintenanceProvider     TEXT,
    Status                  TEXT,
    ConsumptionRate         REAL,
    PeakUsage               REAL,
    OffPeakUsage            REAL,
    BillingCycleStart       DATE,
    BillingCycleEnd         DATE,
    CostPerUnit             REAL,
    TotalCost               REAL,
    AlertThreshold          DECIMAL(12,2),
    Remarks                 TEXT
);

INSERT INTO FacilityUtilityMeter VALUES (901, 'Electric', 'BLDG01', '2020-05-10', '2023-08-01', 125670.45, 'kWh', '2023-01-15', '2024-01-15', 'EnergyCo', 'Active', 3.2, 5.8, 2.1, '2023-08-01', '2023-08-31', 0.12, 15080.45, 130000.00, 'Monthly review');
INSERT INTO FacilityUtilityMeter VALUES (902, 'Water', 'BLDG02', '2019-03-22', '2023-07-28', 84520.00, 'm3', '2023-02-10', '2024-02-10', 'WaterWorks', 'Active', 2.5, 3.0, 1.5, '2023-07-01', '2023-07-31', 0.03, 2535.60, 25000.00, 'Quarterly check');
INSERT INTO FacilityUtilityMeter VALUES (903, 'Gas', 'BLDG03', '2021-11-05', '2023-08-15', 30240.75, 'Therm', '2023-03-20', '2024-03-20', 'GasSupply', 'Active', 1.8, 2.2, 1.1, '2023-08-01', '2023-08-31', 0.09, 2721.67, 30000.00, 'Annual inspection');