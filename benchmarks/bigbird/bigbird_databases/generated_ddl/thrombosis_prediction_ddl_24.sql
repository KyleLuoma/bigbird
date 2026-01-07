-- RemoteMonitoringSessionLog stores logs of remote device monitoring sessions
CREATE TABLE RemoteMonitoringSessionLog
(
    SessionID               INTEGER PRIMARY KEY,
    DeviceID                INTEGER,
    StartDate               DATE,
    StartTime               TEXT,
    EndTime                 TEXT,
    DurationMinutes        INTEGER,
    DataPointsCollected    INTEGER,
    SignalQuality           TEXT,
    BatteryLevelPercent    INTEGER,
    NetworkType             TEXT,
    AlertTriggered          INTEGER,
    FirmwareVersion         TEXT,
    LocationCode            TEXT,
    OperatorStaffID        INTEGER,
    SessionNotes           TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    SessionStatus           TEXT,
    DataUploadStatus        TEXT,
    ErrorCode               INTEGER,
    ComplianceFlag          INTEGER
);

INSERT INTO RemoteMonitoringSessionLog VALUES (1, 101, '2025-03-01', '08:00', '08:30', 30, 1800, 'Excellent', 95, 'WiFi', 0, 'v1.2.3', 'LOC01', 12, 'Routine check', '2025-03-01', '2025-03-01', 'Completed', 'Uploaded', 0, 1);
INSERT INTO RemoteMonitoringSessionLog VALUES (2, 102, '2025-03-02', '09:15', '09:45', 30, 1750, 'Good', 88, 'LTE', 1, 'v1.2.4', 'LOC02', 15, 'Battery low warning', '2025-03-02', '2025-03-02', 'Completed', 'Uploaded', 101, 1);
INSERT INTO RemoteMonitoringSessionLog VALUES (3, 103, '2025-03-03', '10:00', '10:20', 20, 1200, 'Fair', 70, 'Ethernet', 0, 'v1.3.0', 'LOC03', 18, 'Signal drop', '2025-03-03', '2025-03-03', 'Failed', 'Pending', 202, 0);

-- EquipmentProcurementOrder tracks orders for medical equipment
CREATE TABLE EquipmentProcurementOrder
(
    OrderID                 INTEGER PRIMARY KEY,
    OrderDate               DATE,
    VendorID                INTEGER,
    EquipmentCategory       TEXT,
    EquipmentModel          TEXT,
    SerialNumber            TEXT,
    Quantity                INTEGER,
    UnitPrice               REAL,
    TotalCost               REAL,
    RequestedByStaffID      INTEGER,
    ApprovedByStaffID       INTEGER,
    DeliveryDate            DATE,
    WarrantyYears           INTEGER,
    InstallationDate        DATE,
    Status                  TEXT,
    PaymentTerms            TEXT,
    PurchaseOrderNumber     TEXT,
    AssetTagPrefix          TEXT,
    IsCritical              INTEGER,
    CreatedTimestamp        DATE,
    UpdatedTimestamp        DATE
);

INSERT INTO EquipmentProcurementOrder VALUES (1001, '2025-01-10', 201, 'Imaging', 'XRay2000', 'SNX2000A', 2, 15000.00, 30000.00, 45, 46, '2025-02-15', 5, '2025-02-20', 'Pending', 'Net30', 'PO12345', 'ATX', 1, '2025-01-10', '2025-01-10');
INSERT INTO EquipmentProcurementOrder VALUES (1002, '2025-02-05', 202, 'Lab', 'CentrifugeX', 'SNCXF001', 1, 8000.00, 8000.00, 47, 48, '2025-03-01', 3, '2025-03-05', 'Approved', 'Net45', 'PO12346', 'ATC', 0, '2025-02-05', '2025-02-05');
INSERT INTO EquipmentProcurementOrder VALUES (1003, '2025-03-12', 203, 'Therapy', 'Physio300', 'SNPH300B', 3, 5000.00, 15000.00, 49, 50, '2025-04-10', 2, '2025-04-12', 'Shipped', 'Net60', 'PO12347', 'ATP', 1, '2025-03-12', '2025-03-12');

-- SupplierPerformanceMetric records periodic performance evaluations of suppliers
CREATE TABLE SupplierPerformanceMetric
(
    MetricID                INTEGER PRIMARY KEY,
    SupplierID              INTEGER,
    EvaluationDate          DATE,
    OnTimeDeliveryRate     REAL,
    DefectRate              REAL,
    ComplianceScore         INTEGER,
    ContractValue           REAL,
    LeadTimeDays            INTEGER,
    ResponseTimeHours       INTEGER,
    IncidentCount           INTEGER,
    AuditScore              INTEGER,
    Notes                   TEXT,
    CreatedDate             DATE,
    UpdatedDate             DATE,
    EvaluatorStaffID        INTEGER,
    MetricPeriod            TEXT,
    ScoreWeight             REAL,
    OverallRating           TEXT,
    PenaltyApplied          INTEGER,
    RewardPoints            INTEGER,
    LastContactDate         DATE,
    ContactMethod           TEXT
);

INSERT INTO SupplierPerformanceMetric VALUES (5001, 301, '2025-01-31', 0.96, 0.02, 88, 250000.00, 12, 4, 1, 90, 'Steady performance', '2025-01-31', '2025-01-31', 55, 'Q1', 1.0, 'A', 0, 150, '2025-01-20', 'Email');
INSERT INTO SupplierPerformanceMetric VALUES (5002, 302, '2025-04-30', 0.89, 0.05, 75, 180000.00, 15, 6, 3, 80, 'Needs improvement on defects', '2025-04-30', '2025-04-30', 56, 'Q2', 0.9, 'B', 1, 80, '2025-04-15', 'Phone');
INSERT INTO SupplierPerformanceMetric VALUES (5003, 303, '2025-07-31', 0.99, 0.01, 95, 320000.00, 10, 2, 0, 95, 'Excellent delivery record', '2025-07-31', '2025-07-31', 57, 'Q3', 1.1, 'A+', 0, 200, '2025-07-20', 'InPerson');

-- ClinicalResearchProtocol stores details of research study protocols
CREATE TABLE ClinicalResearchProtocol
(
    ProtocolID              INTEGER PRIMARY KEY,
    StudyTitle              TEXT,
    PrincipalInvestigatorID INTEGER,
    StartDate               DATE,
    EndDate                 DATE,
    Phase                   TEXT,
    DesignType              TEXT,
    SampleSize              INTEGER,
    InclusionCriteria       TEXT,
    ExclusionCriteria       TEXT,
    PrimaryEndpoint         TEXT,
    SecondaryEndpoint       TEXT,
    ApprovalStatus          TEXT,
    IRBApprovalDate         DATE,
    FundingSource           TEXT,
    Budget                  REAL,
    DataMonitoringCommitteeID INTEGER,
    StatisticalAnalysisPlan TEXT,
    RegulatorySubmissionDate DATE,
    Status                  TEXT,
    CreatedByStaffID        INTEGER,
    CreatedDate             DATE,
    UpdatedDate             DATE
);

INSERT INTO ClinicalResearchProtocol VALUES (2001, 'CardioRisk Study', 601, '2025-01-01', '2026-12-31', 'PhaseII', 'Randomized', 250, 'Age 40-70', 'Prior MI', 'EventFreeSurvival', 'QualityOfLife', 'Approved', '2024-12-15', 'NIH', 1200000.00, 701, 'PlanA', '2025-01-10', 'Active', 801, '2025-01-01', '2025-01-02');
INSERT INTO ClinicalResearchProtocol VALUES (2002, 'Diabetes Nutrition Trial', 602, '2025-03-15', '2027-03-14', 'PhaseIII', 'DoubleBlind', 500, 'HbA1c>7', 'Insulin dependent', 'HbA1cReduction', 'WeightChange', 'Pending', NULL, 'Industry', 2000000.00, 702, 'PlanB', NULL, 'Draft', 802, '2025-03-01', '2025-03-01');
INSERT INTO ClinicalResearchProtocol VALUES (2003, 'Sleep Apnea Device Evaluation', 603, '2024-06-01', '2025-05-31', 'PhaseI', 'OpenLabel', 100, 'AHI>15', 'Severe COPD', 'AHIChange', 'DaytimeSleepiness', 'Approved', '2024-05-20', 'PrivateGrant', 300000.00, 703, 'PlanC', '2024-06-05', 'Completed', 803, '2024-06-01', '2024-06-02');

-- HospitalWasteManagement tracks waste handling activities
CREATE TABLE HospitalWasteManagement
(
    WasteRecordID           INTEGER PRIMARY KEY,
    Date                    DATE,
    WardID                  INTEGER,
    WasteType               TEXT,
    QuantityKg              REAL,
    ContainerID             TEXT,
    DisposalMethod          TEXT,
    HandledByStaffID        INTEGER,
    ComplianceFlag          INTEGER,
    Notes                   TEXT,
    IncinerationDate        DATE,
    RecyclingRate           REAL,
    HazardousFlag           INTEGER,
    TransportCompanyID      INTEGER,
    TemperatureDuringTransport REAL,
    ValidatedByStaffID      INTEGER,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    AuditScore              INTEGER,
    RegulationReference     TEXT,
    Signature               TEXT
);

INSERT INTO HospitalWasteManagement VALUES (9001, '2025-02-10', 12, 'General', 45.6, 'C1001', 'Landfill', 91, 1, 'No issues', '2025-02-11', 0.10, 0, 301, 22.5, 92, '2025-02-10', '2025-02-10', 88, 'RegA', 'SignedByQA');
INSERT INTO HospitalWasteManagement VALUES (9002, '2025-03-15', 15, 'Biohazard', 12.3, 'C2002', 'Incineration', 93, 1, 'Handled with PPE', '2025-03-16', 0.00, 1, 302, 25.0, 94, '2025-03-15', '2025-03-15', 92, 'RegB', 'SignedByEnv');
INSERT INTO HospitalWasteManagement VALUES (9003, '2025-04-20', 18, 'Pharmaceutical', 5.8, 'C3003', 'SpecialDisposal', 95, 0, 'Delay in transport', '2025-04-21', 0.05, 1, 303, 20.0, 96, '2025-04-20', '2025-04-20', 85, 'RegC', 'SignedByOps');

-- TransportSchedule records vehicle transport schedules
CREATE TABLE TransportSchedule
(
    ScheduleID              INTEGER PRIMARY KEY,
    VehicleID               INTEGER,
    DriverStaffID           INTEGER,
    DepartureDate           DATE,
    DepartureTime           TEXT,
    ArrivalDate             DATE,
    ArrivalTime             TEXT,
    RouteCode               TEXT,
    EstimatedDurationMinutes INTEGER,
    ActualDurationMinutes   INTEGER,
    CargoDescription        TEXT,
    CargoWeightKg           REAL,
    WeatherCondition        TEXT,
    TrafficLevel            TEXT,
    FuelUsedLiters          REAL,
    MaintenanceFlag         INTEGER,
    DispatchNotes           TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    Status                  TEXT,
    PriorityLevel           INTEGER
);

INSERT INTO TransportSchedule VALUES (4001, 501, 61, '2025-05-01', '07:30', '2025-05-01', '08:15', 'R01', 45, 50, 'MedicalSupplies', 120.5, 'Clear', 'Low', 15.0, 0, 'On time', '2025-05-01', '2025-05-01', 'Completed', 2);
INSERT INTO TransportSchedule VALUES (4002, 502, 62, '2025-05-02', '09:00', '2025-05-02', '10:30', 'R02', 90, 95, 'BloodProducts', 80.0, 'Rain', 'Medium', 20.0, 1, 'Delay due to traffic', '2025-05-02', '2025-05-02', 'Completed', 1);
INSERT INTO TransportSchedule VALUES (4003, 503, 63, '2025-05-03', '14:15', '2025-05-03', '15:00', 'R03', 45, 42, 'EquipmentParts', 60.2, 'Cloudy', 'High', 18.5, 0, 'Early arrival', '2025-05-03', '2025-05-03', 'Completed', 3);

-- BiomedicalEquipmentInventory keeps inventory of biomedical devices
CREATE TABLE BiomedicalEquipmentInventory
(
    InventoryID             INTEGER PRIMARY KEY,
    EquipmentCategory       TEXT,
    EquipmentModel          TEXT,
    SerialNumber            TEXT,
    LocationRoom            TEXT,
    InstallationDate        DATE,
    LastMaintenanceDate     DATE,
    WarrantyEndDate         DATE,
    Status                  TEXT,
    CalibrationDueDate      DATE,
    Manufacturer            TEXT,
    PurchaseDate            DATE,
    PurchasePrice           REAL,
    DepreciationYear        INTEGER,
    AssetTag                TEXT,
    CurrentUserID          INTEGER,
    UsageHours              INTEGER,
    LastUsedDate            DATE,
    Notes                   TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE
);

INSERT INTO BiomedicalEquipmentInventory VALUES (7001, 'Imaging', 'MRI-X200', 'SNMRI200A', 'Room101', '2022-01-15', '2024-12-01', '2027-01-15', 'Active', '2025-06-01', 'MedTech', '2021-12-20', 2500000.00, 2026, 'ATMRI001', 101, 3500, '2025-04-20', 'Routine check', '2025-01-01', '2025-01-01');
INSERT INTO BiomedicalEquipmentInventory VALUES (7002, 'Lab', 'AutoAnalyzer3000', 'SNAUT300B', 'Lab12', '2020-06-10', '2024-06-10', '2025-06-10', 'InRepair', '2025-05-15', 'LabCorp', '2020-05-30', 750000.00, 2024, 'ATLA001', 102, 2100, '2025-03-15', 'Calibration pending', '2025-01-02', '2025-01-02');
INSERT INTO BiomedicalEquipmentInventory VALUES (7003, 'Therapy', 'VentilatorV5', 'SNVENT5C', 'ICU02', '2021-09-05', '2024-09-05', '2026-09-05', 'Active', '2025-09-01', 'HealthEquip', '2021-08-20', 120000.00, 2025, 'ATVNT001', 103, 1800, '2025-04-10', 'No issues', '2025-01-03', '2025-01-03');

-- HealthSurveyResponse records responses to health surveys
CREATE TABLE HealthSurveyResponse
(
    ResponseID              INTEGER PRIMARY KEY,
    SurveyID                INTEGER,
    RespondentID            INTEGER,
    ResponseDate            DATE,
    Age                     INTEGER,
    Gender                  TEXT,
    Region                  TEXT,
    EducationLevel          TEXT,
    EmploymentStatus        TEXT,
    IncomeBracket           TEXT,
    SmokingStatus           TEXT,
    AlcoholConsumption      TEXT,
    PhysicalActivityLevel   TEXT,
    DietaryHabit            TEXT,
    ChronicCondition        TEXT,
    MedicationAdherence     TEXT,
    VaccinationStatus       TEXT,
    HealthScore             REAL,
    Comments                TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    SurveyVersion           TEXT,
    ConsentGiven            INTEGER
);

INSERT INTO HealthSurveyResponse VALUES (15001, 1, 10001, '2025-02-20', 45, 'Female', 'North', 'College', 'Employed', '50k-70k', 'Never', 'Moderate', 'High', 'Balanced', 'None', 'Good', 'UpToDate', 85.5, 'No comments', '2025-02-20', '2025-02-20', 'V1', 1);
INSERT INTO HealthSurveyResponse VALUES (15002, 1, 10002, '2025-03-15', 32, 'Male', 'South', 'HighSchool', 'Unemployed', '30k-50k', 'Former', 'Low', 'Low', 'HighSugar', 'Asthma', 'Fair', 'Partial', 72.0, 'Needs follow up', '2025-03-15', '2025-03-15', 'V1', 1);
INSERT INTO HealthSurveyResponse VALUES (15003, 1, 10003, '2025-04-05', 58, 'Other', 'East', 'Graduate', 'Retired', '70k+', 'Never', 'None', 'Moderate', 'LowFat', 'Diabetes', 'Poor', 'Full', 90.2, 'Excellent health', '2025-04-05', '2025-04-05', 'V1', 1);

-- FacilitySecurityAccessLog tracks badge access events
CREATE TABLE FacilitySecurityAccessLog
(
    AccessLogID             INTEGER PRIMARY KEY,
    BadgeID                 INTEGER,
    EmployeeID              INTEGER,
    AccessPoint             TEXT,
    AccessDate              DATE,
    AccessTime              TEXT,
    AccessResult            TEXT,
    DoorState               TEXT,
    CameraID                INTEGER,
    AlertFlag               INTEGER,
    DurationSeconds         INTEGER,
    ShiftCode               TEXT,
    LocationZone            TEXT,
    AuthorizedByStaffID     INTEGER,
    Notes                   TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    DeviceSerial            TEXT,
    FirmwareVersion         TEXT,
    LastMaintenanceDate     DATE,
    ComplianceCheck         INTEGER
);

INSERT INTO FacilitySecurityAccessLog VALUES (8001, 4001, 201, 'MainEntrance', '2025-05-01', '07:45', 'Granted', 'Open', 101, 0, 5, 'A1', 'NorthWing', 301, 'Normal entry', '2025-05-01', '2025-05-01', 'DS001', 'v2.1', '2025-01-15', 1);
INSERT INTO FacilitySecurityAccessLog VALUES (8002, 4002, 202, 'LabDoor', '2025-05-02', '09:10', 'Denied', 'Closed', 102, 1, 0, 'B2', 'ResearchBlock', 302, 'Invalid badge', '2025-05-02', '2025-05-02', 'DS002', 'v2.0', '2024-12-20', 0);
INSERT INTO FacilitySecurityAccessLog VALUES (8003, 4003, 203, 'Pharmacy', '2025-05-03', '14:30', 'Granted', 'Open', 103, 0, 3, 'C3', 'SouthWing', 303, 'Late entry', '2025-05-03', '2025-05-03', 'DS003', 'v2.2', '2025-02-10', 1);