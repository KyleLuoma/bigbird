-- Records of medical device calibration activities
CREATE TABLE MedicalDeviceCalibrationRecord
(
    CalibrationID          INTEGER PRIMARY KEY,
    DeviceSerialNumber     TEXT,
    DeviceModel            TEXT,
    CalibrationDate        DATE,
    TechnicianID           INTEGER,
    TechnicianName         TEXT,
    CalibrationType        TEXT,
    StandardReference      TEXT,
    CalibrationResult      TEXT,
    TemperatureCelsius     REAL,
    HumidityPercent        REAL,
    PressureKPa            REAL,
    VoltageVolts           REAL,
    CurrentAmps            REAL,
    DurationMinutes        INTEGER,
    Comments               TEXT,
    ApprovedByID           INTEGER,
    ApprovedByName         TEXT,
    ApprovalDate           DATE,
    FollowUpRequired       INTEGER,
    FollowUpDate           DATE,
    CalibrationLocation    TEXT
);
INSERT INTO MedicalDeviceCalibrationRecord VALUES (1, 'SN12345', 'ECG-2000', '2023-03-15', 101, 'Alice Smith', 'Full', 'ISO17025', 'Pass', 22.5, 45.0, 101.3, 5.0, 0.2, 30, 'All parameters within range', 201, 'Dr Jones', '2023-03-16', 0, NULL, 'LabA');
INSERT INTO MedicalDeviceCalibrationRecord VALUES (2, 'SN67890', 'VentilatorX', '2023-04-01', 102, 'Bob Lee', 'Partial', 'ASME', 'Pass', 23.0, 50.0, 102.0, 12.0, 0.5, 45, 'Minor drift corrected', 202, 'Dr Kim', '2023-04-02', 1, '2023-05-01', 'ICU1');
INSERT INTO MedicalDeviceCalibrationRecord VALUES (3, 'SN54321', 'InfusionPump', '2023-04-20', 103, 'Carol Ng', 'Full', 'FDA', 'Fail', 21.0, 40.0, 100.5, 3.5, 0.1, 25, 'Leak detected', 203, 'Dr Patel', '2023-04-21', 1, '2023-05-15', 'WardB');

-- Contracts with supply chain vendors
CREATE TABLE SupplyChainVendorContract
(
    ContractID                INTEGER PRIMARY KEY,
    VendorID                  INTEGER,
    VendorName                TEXT,
    ContractNumber            TEXT,
    StartDate                 DATE,
    EndDate                   DATE,
    ContractType              TEXT,
    Currency                  TEXT,
    TotalValue                REAL,
    PaymentTerms              TEXT,
    DeliveryMethod            TEXT,
    WarrantyPeriodMonths      INTEGER,
    ServiceLevelAgreement     TEXT,
    PenaltyClause             TEXT,
    ConfidentialityLevel      TEXT,
    ContactPerson             TEXT,
    ContactEmail              TEXT,
    ContactPhone              TEXT,
    RenewalOption             TEXT,
    NoticePeriodDays          INTEGER,
    ApprovedByID              INTEGER,
    ApprovedByName            TEXT,
    ApprovalDate              DATE,
    Status                    TEXT
);
INSERT INTO SupplyChainVendorContract VALUES (1001, 5001, 'MediSupplyCo', 'MSC-2023-001', '2023-01-01', '2025-12-31', 'Supply', 'USD', 250000.00, 'Net30', 'Air', 12, 'SLA001', 'LateDeliveryPenalty', 'High', 'John Doe', 'jdoe@medisupply.com', '5551234567', 'Automatic', 90, 9001, 'CFO', '2022-12-15', 'Active');
INSERT INTO SupplyChainVendorContract VALUES (1002, 5002, 'LabEquip Inc', 'LEI-2022-045', '2022-06-01', '2024-05-31', 'Equipment', 'EUR', 180000.00, 'Net45', 'Sea', 24, 'SLA002', 'QualityPenalty', 'Medium', 'Maria Rossi', 'mrossi@labequip.eu', '5559876543', 'Manual', 60, 9002, 'COO', '2022-05-20', 'Active');
INSERT INTO SupplyChainVendorContract VALUES (1003, 5003, 'PharmaLogistics', 'PL-2021-099', '2021-09-15', '2023-09-14', 'Logistics', 'USD', 95000.00, 'Net15', 'Ground', 6, 'SLA003', 'TemperatureDeviationPenalty', 'Low', 'Ahmed Khan', 'akhan@pharmalog.com', '5557654321', 'Automatic', 30, 9003, 'VP Operations', '2021-08-30', 'Expired');

-- Patient outcome survey responses
CREATE TABLE PatientOutcomeSurvey
(
    SurveyID                 INTEGER PRIMARY KEY,
    PatientID                INTEGER,
    SurveyDate               DATE,
    OverallSatisfaction      INTEGER,
    PainLevel                INTEGER,
    MobilityScore            INTEGER,
    DailyActivityScore       INTEGER,
    MedicationAdherence      INTEGER,
    FollowUpVisitCompleted   INTEGER,
    CommunicationScore       INTEGER,
    StaffCourtesyScore      INTEGER,
    FacilityCleanlinessScore INTEGER,
    LikelihoodToRecommend   INTEGER,
    OpenEndedFeedback        TEXT,
    SurveyMethod             TEXT,
    SurveyVersion            TEXT,
    CompletedByStaffID       INTEGER,
    CompletedByStaffName     TEXT,
    DurationMinutes          INTEGER,
    ConsentGiven             INTEGER,
    EmailContact             TEXT,
    PhoneContact             TEXT,
    AddressLine1             TEXT,
    City                     TEXT,
    State                    TEXT,
    ZipCode                  TEXT
);
INSERT INTO PatientOutcomeSurvey VALUES (2001, 1, '2023-04-10', 8, 3, 7, 6, 9, 1, 8, 9, 9, 9, 'Good service overall', 'Online', 'v1', 301, 'Nurse Joy', 12, 1, 'patient1@example.com', '5551112222', '123 Main St', 'Springfield', 'IL', '62701');
INSERT INTO PatientOutcomeSurvey VALUES (2002, 2, '2023-04-12', 6, 5, 5, 5, 7, 0, 7, 6, 8, 7, 'Waiting time was long', 'Paper', 'v1', 302, 'Nurse Sam', 15, 1, 'patient2@example.com', '5553334444', '456 Oak Ave', 'Greenville', 'TX', '75402');
INSERT INTO PatientOutcomeSurvey VALUES (2003, 3, '2023-04-15', 9, 2, 8, 8, 10, 1, 9, 9, 9, 10, 'Excellent care', 'Phone', 'v2', 303, 'Nurse Lee', 10, 1, 'patient3@example.com', '5555556666', '789 Pine Rd', 'Lakeview', 'CA', '90210');

-- Log of clinical guideline implementation activities
CREATE TABLE ClinicalGuidelineImplementationLog
(
    ImplementationID          INTEGER PRIMARY KEY,
    GuidelineID               INTEGER,
    GuidelineName             TEXT,
    Department                TEXT,
    ImplementationStartDate   DATE,
    ImplementationEndDate     DATE,
    LeadCoordinatorID         INTEGER,
    LeadCoordinatorName       TEXT,
    TrainingSessionsConducted INTEGER,
    StaffTrainedCount         INTEGER,
    ComplianceRatePercent     REAL,
    AuditFindingsCount        INTEGER,
    IssuesResolvedCount       INTEGER,
    DocumentationLink         TEXT,
    FundingSource             TEXT,
    BudgetAllocated           REAL,
    BudgetUtilized            REAL,
    Remarks                   TEXT,
    Status                    TEXT,
    ReviewDate                DATE,
    ReviewedByID              INTEGER,
    ReviewedByName            TEXT,
    ApprovalDate              DATE,
    ApprovedByID              INTEGER,
    ApprovedByName            TEXT
);
INSERT INTO ClinicalGuidelineImplementationLog VALUES (3001, 4001, 'Sepsis Management', 'Intensive Care', '2023-01-15', '2023-04-15', 401, 'Dr Allen', 4, 45, 92.5, 2, 2, 'http://guidelines.org/sepsis', 'Grant A', 50000.00, 47000.00, 'Successful rollout', 'Completed', '2023-04-20', 501, 'Dr Baker', '2023-04-22', 601, 'Dr Clark');
INSERT INTO ClinicalGuidelineImplementationLog VALUES (3002, 4002, 'Blood Transfusion Protocol', 'Transfusion Service', '2023-02-01', '2023-05-01', 402, 'Dr Davis', 3, 30, 88.0, 3, 2, 'http://guidelines.org/blood', 'Hospital Funds', 30000.00, 26000.00, 'Minor adjustments needed', 'InProgress', '2023-05-05', 502, 'Dr Evans', '2023-05-06', 602, 'Dr Foster');
INSERT INTO ClinicalGuidelineImplementationLog VALUES (3003, 4003, 'Pain Management', 'Outpatient', '2023-03-10', '2023-06-10', 403, 'Dr Green', 5, 60, 95.0, 1, 1, 'http://guidelines.org/pain', 'Grant B', 40000.00, 38000.00, 'High compliance', 'Completed', '2023-06-15', 503, 'Dr Hall', '2023-06-16', 603, 'Dr Ivy');

-- Attendance records for staff training modules
CREATE TABLE StaffTrainingAttendance
(
    AttendanceID            INTEGER PRIMARY KEY,
    StaffID                 INTEGER,
    StaffName               TEXT,
    TrainingModuleID        INTEGER,
    TrainingModuleName      TEXT,
    SessionDate             DATE,
    SessionStartTime        TEXT,
    SessionEndTime          TEXT,
    TrainerID               INTEGER,
    TrainerName             TEXT,
    Location                TEXT,
    DurationMinutes         INTEGER,
    CompletionStatus        TEXT,
    ScorePercent            REAL,
    CertificateIssued      INTEGER,
    CertificateNumber       TEXT,
    FeedbackScore           INTEGER,
    Comments                TEXT,
    Department              TEXT,
    Role                    TEXT,
    HoursCredited           REAL,
    CEUsEarned              REAL,
    RecordedByID            INTEGER,
    RecordedByName          TEXT,
    RecordDate              DATE
);
INSERT INTO StaffTrainingAttendance VALUES (4001, 701, 'Emily Turner', 801, 'Infection Control', '2023-03-05', '09:00', '12:00', 901, 'Dr Jones', 'Room 101', 180, 'Completed', 85.0, 1, 'IC20230305', 4, 'Very useful', 'Nursing', 'RN', 3.0, 0.5, 1001, 'Admin A', '2023-03-06');
INSERT INTO StaffTrainingAttendance VALUES (4002, 702, 'Michael Brown', 802, 'Data Privacy', '2023-04-12', '13:00', '15:00', 902, 'Ms Lee', 'Conference Hall', 120, 'Completed', 92.0, 1, 'DP20230412', 5, 'Excellent', 'Administration', 'Clerk', 2.0, 0.3, 1002, 'Admin B', '2023-04-13');
INSERT INTO StaffTrainingAttendance VALUES (4003, 703, 'Sarah Kim', 803, 'Advanced Cardiac Life Support', '2023-05-20', '08:00', '11:30', 903, 'Dr Patel', 'Simulation Lab', 210, 'Incomplete', 60.0, 0, NULL, 2, 'Need more practice', 'Emergency', 'Physician', 3.5, 0.6, 1003, 'Admin C', '2023-05-21');

-- Environmental sensor stations and their configurations
CREATE TABLE EnvironmentalSensorStation
(
    StationID               INTEGER PRIMARY KEY,
    StationCode             TEXT,
    LocationDescription     TEXT,
    InstallationDate        DATE,
    Manufacturer            TEXT,
    ModelNumber             TEXT,
    FirmwareVersion         TEXT,
    SensorTypeTemperature   TEXT,
    SensorTypeHumidity      TEXT,
    SensorTypePressure      TEXT,
    TempCalibrationOffset   REAL,
    HumidityCalibrationOffset REAL,
    PressureCalibrationOffset REAL,
    DataTransmissionMethod  TEXT,
    TransmissionIntervalSec INTEGER,
    PowerSource             TEXT,
    BatteryCapacityMah      INTEGER,
    MaintenanceDueDate      DATE,
    LastMaintenanceDate     DATE,
    CalibrationDueDate      DATE,
    NetworkSSID             TEXT,
    IPAddress               TEXT,
    MACAddress              TEXT,
    Latitude                REAL,
    Longitude               REAL,
    Status                  TEXT,
    Notes                   TEXT
);
INSERT INTO EnvironmentalSensorStation VALUES (5001, 'ES-A1', 'North Wing Corridor', '2022-11-01', 'EnviroTech', 'XT100', 'v1.2.3', 'Thermistor', 'Capacitive', 'Barometric', 0.0, 0.0, 0.0, 'WiFi', 300, 'AC', NULL, '2023-04-01', '2023-03-01', '2023-09-01', 'HospitalWiFi', '192.168.1.101', 'AA:BB:CC:DD:EE:01', 40.7128, -74.0060, 'Active', 'Installed during renovation');
INSERT INTO EnvironmentalSensorStation VALUES (5002, 'ES-B2', 'ICU Room 5', '2023-01-15', 'SafeSense', 'ICU-200', 'v2.0.1', 'Thermistor', 'Resistive', 'Piezo', -0.2, 1.5, 0.1, 'Ethernet', 60, 'Mains', NULL, '2023-05-15', '2023-04-15', '2023-10-15', 'HospitalLAN', '192.168.1.102', 'AA:BB:CC:DD:EE:02', 40.7130, -74.0062, 'Active', 'Critical care area');
INSERT INTO EnvironmentalSensorStation VALUES (5003, 'ES-C3', 'Pharmacy Storage', '2023-02-20', 'CleanAir', 'PH-300', 'v3.1.0', 'Thermistor', 'Capacitive', 'Barometric', 0.1, -0.5, 0.0, 'WiFi', 120, 'Battery', 2000, '2023-08-20', '2023-07-20', '2023-12-20', 'PharmacyWiFi', '192.168.1.103', 'AA:BB:CC:DD:EE:03', 40.7132, -74.0064, 'Active', 'Monitors medication storage temperature');

-- Hospital parking lot usage statistics
CREATE TABLE HospitalParkingUsage
(
    RecordID                INTEGER PRIMARY KEY,
    ParkingLotID            INTEGER,
    ParkingLotName          TEXT,
    Date                    DATE,
    TotalSpaces             INTEGER,
    OccupiedSpaces          INTEGER,
    ReservedSpaces          INTEGER,
    HandicappedSpaces       INTEGER,
    ElectricVehicleSpaces   INTEGER,
    AverageOccupancyPercent REAL,
    PeakHourStartTime       TEXT,
    PeakHourEndTime         TEXT,
    PeakOccupancyPercent    REAL,
    Weekday                 TEXT,
    Month                   TEXT,
    Year                    INTEGER,
    WeatherCondition        TEXT,
    EventFlag               INTEGER,
    MaintenanceFlag         INTEGER,
    Notes                   TEXT,
    UpdatedByID             INTEGER,
    UpdatedByName           TEXT,
    UpdateTimestamp         DATE,
    DataSource              TEXT,
    ValidationStatus        TEXT,
    Comments                TEXT,
    ReportGeneratedDate     DATE
);
INSERT INTO HospitalParkingUsage VALUES (6001, 1, 'MainLot', '2023-04-01', 200, 150, 10, 5, 8, 75.0, '08:00', '09:00', 90.0, 'Saturday', 'April', 2023, 'Sunny', 0, 0, 'Normal day', 701, 'Emily Turner', '2023-04-02', 'AutomatedSensor', 'Validated', 'No issues', '2023-04-02');
INSERT INTO HospitalParkingUsage VALUES (6002, 2, 'EastWingLot', '2023-04-15', 120, 110, 5, 2, 4, 91.7, '12:00', '13:00', 98.0, 'Saturday', 'April', 2023, 'Rain', 0, 0, 'High usage due to event', 702, 'Michael Brown', '2023-04-16', 'ManualCount', 'Validated', 'Event parking', '2023-04-16');
INSERT INTO HospitalParkingUsage VALUES (6003, 3, 'VisitorLot', '2023-04-20', 80, 30, 5, 1, 2, 37.5, '10:00', '11:00', 45.0, 'Thursday', 'April', 2023, 'Cloudy', 0, 0, 'Low weekday traffic', 703, 'Sarah Kim', '2023-04-21', 'AutomatedSensor', 'Validated', 'All good', '2023-04-21');

-- Requests for access to research data repositories
CREATE TABLE ResearchDataAccessRequest
(
    RequestID               INTEGER PRIMARY KEY,
    ResearcherID            INTEGER,
    ResearcherName          TEXT,
    ProjectID               INTEGER,
    ProjectTitle            TEXT,
    DataSetID               INTEGER,
    DataSetName             TEXT,
    RequestDate             DATE,
    AccessLevelRequested    TEXT,
    PurposeDescription      TEXT,
    ApprovalStatus          TEXT,
    ApprovedByID            INTEGER,
    ApprovedByName          TEXT,
    ApprovalDate            DATE,
    ExpirationDate          DATE,
    ConfidentialityAgreementSigned INTEGER,
    TrainingCompleted       INTEGER,
    DataUseAgreementVersion TEXT,
    Comments                TEXT,
    ReviewComments          TEXT,
    DenialReason            TEXT,
    RevokedFlag             INTEGER,
    RevocationDate          DATE,
    UpdatedByID             INTEGER,
    UpdatedByName           TEXT,
    LastUpdateDate          DATE,
    RecordStatus            TEXT,
    Notes                   TEXT
);
INSERT INTO ResearchDataAccessRequest VALUES (7001, 801, 'Dr Alice Monroe', 901, 'Autoimmune Study', 1001, 'Cytokine Profiles', '2023-03-01', 'Full', 'Analysis of biomarkers', 'Approved', 801, 'Dr Alice Monroe', '2023-03-05', '2024-03-01', 1, 1, 'v2.0', 'All good', 'Reviewed and approved', NULL, 0, NULL, 801, 'Dr Alice Monroe', '2023-03-05', 'Active', '');
INSERT INTO ResearchDataAccessRequest VALUES (7002, 802, 'Dr Brian Lee', 902, 'Thrombosis Genetics', 1002, 'Gene Expression', '2023-04-10', 'Restricted', 'Genome-wide association', 'Pending', NULL, NULL, NULL, NULL, 0, 0, 'v2.0', '', '', NULL, 0, NULL, 802, 'Dr Brian Lee', '2023-04-10', 'Pending', '');
INSERT INTO ResearchDataAccessRequest VALUES (7003, 803, 'Dr Clara Singh', 903, 'Viral Infection Survey', 1003, 'Viral Load Data', '2023-02-20', 'Full', 'Epidemiological modeling', 'Denied', NULL, NULL, NULL, NULL, 0, 0, 'v2.0', '', '', 'Insufficient IRB approval', 0, NULL, 803, 'Dr Clara Singh', '2023-02-21', 'Closed', '');

-- Participation records for community health programs
CREATE TABLE CommunityHealthProgramParticipation
(
    ParticipationID         INTEGER PRIMARY KEY,
    ParticipantID           INTEGER,
    ParticipantName         TEXT,
    ProgramID               INTEGER,
    ProgramName             TEXT,
    EnrollmentDate          DATE,
    CompletionDate          DATE,
    SessionsAttended        INTEGER,
    TotalSessions           INTEGER,
    OutcomeScore            REAL,
    SatisfactionRating      INTEGER,
    ReferralSource          TEXT,
    EligibilityCriteria    TEXT,
    FundingSource           TEXT,
    CommunityPartner        TEXT,
    Location                TEXT,
    CoordinatorID           INTEGER,
    CoordinatorName         TEXT,
    Notes                   TEXT,
    Status                  TEXT,
    FollowUpNeeded          INTEGER,
    FollowUpDate            DATE,
    RecordedByID            INTEGER,
    RecordedByName          TEXT,
    RecordDate              DATE,
    VerificationFlag        INTEGER,
    VerificationDate        DATE,
    VerifierID              INTEGER,
    VerifierName            TEXT,
    Comments                TEXT
);
INSERT INTO CommunityHealthProgramParticipation VALUES (8001, 901, 'John Doe', 101, 'Diabetes Prevention', '2023-01-10', '2023-03-20', 8, 8, 85.0, 9, 'Clinic', 'BMI>25', 'Grant X', 'LocalHealthOrg', 'Community Center', 301, 'Nurse Amy', 'Completed successfully', 'Completed', 0, NULL, 401, 'Admin Jane', '2023-03-21', 1, '2023-03-22', 501, 'Supervisor Sam', '');
INSERT INTO CommunityHealthProgramParticipation VALUES (8002, 902, 'Jane Smith', 102, 'Heart Health Workshop', '2023-02-05', NULL, 3, 5, NULL, 7, 'Community Flyer', 'Age>40', 'Hospital Funds', 'HeartSafe', 'Gym Hall', 302, 'Nurse Ben', 'Pending final session', 'InProgress', 1, '2023-04-01', 402, 'Admin Mark', '2023-03-30', 0, NULL, NULL, NULL, '');
INSERT INTO CommunityHealthProgramParticipation VALUES (8003, 903, 'Carlos Ruiz', 103, 'Smoking Cessation', '2023-01-20', '2023-04-20', 6, 6, 92.0, 10, 'Physician Referral', 'Smoker', 'State Grant', 'SmokeFree', 'Health Dept', 303, 'Nurse Carla', 'Excellent engagement', 'Completed', 0, NULL, 403, 'Admin Lily', '2023-04-21', 1, '2023-04-22', 502, 'Supervisor Eva', '');

-- Inventory of telehealth devices deployed across the hospital
CREATE TABLE TelehealthDeviceInventory
(
    DeviceID                INTEGER PRIMARY KEY,
    DeviceSerialNumber      TEXT,
    DeviceModel             TEXT,
    Manufacturer            TEXT,
    DeploymentDate          DATE,
    Department              TEXT,
    Location                TEXT,
    FirmwareVersion         TEXT,
    ConnectivityType        TEXT,
    BatteryLifeHours        INTEGER,
    LastMaintenanceDate     DATE,
    MaintenanceIntervalMonths INTEGER,
    WarrantyExpirationDate  DATE,
    Status                  TEXT,
    AssignedToStaffID       INTEGER,
    AssignedToStaffName     TEXT,
    CalibrationDate         DATE,
    CalibrationDueDate      DATE,
    NetworkIP               TEXT,
    MACAddress              TEXT,
    SoftwareLicenseKey      TEXT,
    UsageHoursThisMonth     REAL,
    LastUsedDate            DATE,
    RemoteAccessEnabled     INTEGER,
    EncryptionEnabled       INTEGER,
    Notes                   TEXT,
    DecommissionDate        DATE,
    DisposalMethod          TEXT,
    UpdatedByID             INTEGER,
    UpdatedByName           TEXT,
    UpdateTimestamp         DATE
);
INSERT INTO TelehealthDeviceInventory VALUES (9001, 'TH-001', 'VideoPad X1', 'TeleMed Corp', '2023-01-15', 'Cardiology', 'Room 210', 'v1.0.5', 'WiFi', 48, '2023-03-01', 6, '2025-01-15', 'Active', 701, 'Emily Turner', '2023-03-01', '2023-09-01', '10.0.0.101', 'AA:BB:CC:DD:EE:10', 'LIC12345', 12.5, '2023-04-10', 1, 1, 'No issues', NULL, NULL, 801, 'Admin A', '2023-04-12');
INSERT INTO TelehealthDeviceInventory VALUES (9002, 'TH-002', 'VideoPad X2', 'TeleMed Corp', '2023-02-20', 'Oncology', 'Room 315', 'v1.0.8', 'Ethernet', 72, '2023-04-05', 6, '2025-02-20', 'Active', 702, 'Michael Brown', '2023-04-05', '2024-10-05', '10.0.0.102', 'AA:BB:CC:DD:EE:11', 'LIC12346', 20.0, '2023-04-09', 1, 1, 'Scheduled maintenance due', NULL, NULL, 802, 'Admin B', '2023-04-11');
INSERT INTO TelehealthDeviceInventory VALUES (9003, 'TH-003', 'VideoPad X1', 'TeleMed Corp', '2022-12-01', 'Pediatrics', 'Room 112', 'v0.9.9', 'WiFi', 24, '2023-01-15', 6, '2024-12-01', 'Decommissioned', 703, 'Sarah Kim', '2023-01-15', '2023-07-15', '10.0.0.103', 'AA:BB:CC:DD:EE:12', 'LIC12347', 5.0, '2023-03-30', 0, 0, 'Failed battery test', '2023-04-01', 'Recycle', 803, 'Admin C', '2023-04-02');

-- Detailed logs of hospital energy consumption per meter
CREATE TABLE HospitalEnergyMeterReading
(
    ReadingID               INTEGER PRIMARY KEY,
    MeterID                 INTEGER,
    MeterLocation           TEXT,
    ReadingDate             DATE,
    ConsumptionKWh          REAL,
    VoltageV                REAL,
    CurrentA                REAL,
    PowerFactor             REAL,
    LoadCategory            TEXT,
    PeakDemandKW            REAL,
    DemandDateTime          TEXT,
    MeterStatus             TEXT,
    ReadingMethod           TEXT,
    MeterType               TEXT,
    InstallationDate        DATE,
    MaintenanceDate         DATE,
    NextCalibrationDate     DATE,
    EstimatedAnnualCostUSD  REAL,
    EnergySource            TEXT,
    CarbonEmissionKgCO2     REAL,
    Remarks                 TEXT,
    RecordedByID            INTEGER,
    RecordedByName          TEXT,
    RecordTimestamp         DATE,
    VerificationFlag        INTEGER,
    VerificationDate        DATE,
    VerifiedByID            INTEGER,
    VerifiedByName          TEXT,
    Notes                   TEXT,
    AdjustedConsumptionKWh  REAL,
    AdjustmentReason        TEXT
);
INSERT INTO HospitalEnergyMeterReading VALUES (10001, 1, 'North Wing', '2023-04-01', 12500.5, 230.0, 54.3, 0.95, 'Lighting', 200.0, '2023-04-01 14:00', 'Active', 'Automatic', 'Digital', '2020-01-01', '2023-03-01', '2023-09-01', 15000.0, 'Electric', 12000.0, 'Normal operation', 801, 'Admin A', '2023-04-02', 1, '2023-04-03', 901, 'Engineer X', '', 12500.5, '');
INSERT INTO HospitalEnergyMeterReading VALUES (10002, 2, 'East Wing', '2023-04-01', 9800.0, 230.0, 42.5, 0.92, 'HVAC', 180.0, '2023-04-01 13:30', 'Active', 'Manual', 'Analog', '2019-06-15', '2023-02-15', '2023-08-15', 12000.0, 'Electric', 9500.0, 'Slight overload', 802, 'Admin B', '2023-04-02', 1, '2023-04-03', 902, 'Engineer Y', '', 9800.0, '');
INSERT INTO HospitalEnergyMeterReading VALUES (10003, 3, 'South Wing', '2023-04-01', 11200.75, 230.0, 48.1, 0.94, 'Medical Equipment', 190.0, '2023-04-01 15:00', 'Active', 'Automatic', 'Digital', '2021-03-20', '2023-03-20', '2023-09-20', 13500.0, 'Electric', 10800.0, 'Peak due to MRI', 803, 'Admin C', '2023-04-02', 1, '2023-04-03', 903, 'Engineer Z', '', 11200.75, '');

-- Records of research biobank sample inventories
CREATE TABLE ResearchBiobankSample
(
    SampleID                INTEGER PRIMARY KEY,
    BiobankID               INTEGER,
    SampleType              TEXT,
    CollectionDate          DATE,
    FreezeDate              DATE,
    StorageLocation         TEXT,
    VolumeMicroliters       REAL,
    ConcentrationNgPerUl    REAL,
    TotalQuantityNg         REAL,
    DonorID                 INTEGER,
    DonorConsentDate       DATE,
    ConsentVersion          TEXT,
    ProcessingMethod        TEXT,
    AliquotCount            INTEGER,
    AliquotVolumeMicroliters REAL,
    QualityScore            REAL,
    QCPerformedDate         DATE,
    QCResult                TEXT,
    Notes                   TEXT,
    RetrievalCount          INTEGER,
    LastRetrievalDate       DATE,
    CurrentStatus           TEXT,
    ResponsibleScientistID  INTEGER,
    ResponsibleScientistName TEXT,
    EntryCreatedByID        INTEGER,
    EntryCreatedByName      TEXT,
    EntryCreatedDate        DATE,
    LastModifiedByID        INTEGER,
    LastModifiedByName      TEXT,
    LastModifiedDate        DATE,
    VerificationFlag        INTEGER,
    VerificationDate        DATE,
    VerifiedByID            INTEGER,
    VerifiedByName          TEXT,
    Remarks                 TEXT
);
INSERT INTO ResearchBiobankSample VALUES (20001, 1, 'Plasma', '2022-11-10', '2022-11-12', 'Freezer A1', 500.0, 2.5, 1250.0, 901, '2022-11-01', 'v1', 'Centrifuge', 5, 100.0, 9.5, '2022-11-15', 'Pass', '', 2, '2023-01-20', 'Stored', 801, 'Dr Alice Monroe', 701, 'Admin A', '2022-11-12', 702, 'Admin B', '2022-11-13', 1, '2022-11-14', 901, 'Dr Alice Monroe', '');
INSERT INTO ResearchBiobankSample VALUES (20002, 1, 'DNA', '2023-01-05', '2023-01-07', 'Freezer B3', 200.0, 10.0, 2000.0, 902, '2023-01-01', 'v1', 'Extraction', 3, 66.7, 8.8, '2023-01-10', 'Pass', '', 1, '2023-02-15', 'Stored', 802, 'Dr Brian Lee', 702, 'Admin B', '2023-01-07', 703, 'Admin C', '2023-01-08', 1, '2023-01-09', 902, 'Dr Brian Lee', '');
INSERT INTO ResearchBiobankSample VALUES (20003, 2, 'Serum', '2022-12-20', '2022-12-22', 'Freezer C2', 300.0, 1.8, 540.0, 903, '2022-12-10', 'v1', 'Clotting', 4, 75.0, 9.0, '2022-12-25', 'Pass', '', 0, NULL, 'Stored', 803, 'Dr Clara Singh', 703, 'Admin C', '2022-12-22', 704, 'Admin D', '2022-12-23', 1, '2022-12-24', 903, 'Dr Clara Singh', '');

-- Logs of hospital waste management activities
CREATE TABLE HospitalWasteManagementLog
(
    WasteLogID               INTEGER PRIMARY KEY,
    WasteID                  INTEGER,
    WasteType                TEXT,
    GenerationDate           DATE,
    QuantityKg               REAL,
    Department               TEXT,
    StorageLocation          TEXT,
    HandlingProcedure        TEXT,
    CollectedByID            INTEGER,
    CollectedByName          TEXT,
    CollectionDate           DATE,
    TransportMethod          TEXT,
    TransportCompany         TEXT,
    DeliveredToFacilityID    INTEGER,
    DeliveredToFacilityName  TEXT,
    DeliveryDate             DATE,
    DisposalMethod           TEXT,
    DisposalCompany          TEXT,
    DisposalDate             DATE,
    ComplianceStatus         TEXT,
    InspectorID              INTEGER,
    InspectorName            TEXT,
    InspectionDate           DATE,
    Notes                    TEXT,
    RecordedByID             INTEGER,
    RecordedByName           TEXT,
    RecordDate               DATE,
    VerificationFlag         INTEGER,
    VerificationDate         DATE,
    VerifiedByID             INTEGER,
    VerifiedByName           TEXT,
    Remarks                  TEXT,
    FollowUpActionRequired   INTEGER,
    FollowUpDueDate          DATE,
    FollowUpCompletedDate    DATE
);
INSERT INTO HospitalWasteManagementLog VALUES (30001, 1, 'Biohazard', '2023-03-15', 2.5, 'Pathology', 'Room 101', 'Sealed container', 801, 'Emily Turner', '2023-03-16', 'Vehicle', 'CleanTrans', 501, 'Medical Waste Facility', '2023-03-17', 'Incineration', 'EcoDispose', '2023-03-18', 'Compliant', 901, 'Dr Alice Monroe', '2023-03-18', '', 701, 'Admin A', '2023-03-19', 1, '2023-03-20', 801, 'Emily Turner', '', 0, NULL, NULL);
INSERT INTO HospitalWasteManagementLog VALUES (30002, 2, 'Pharmaceutical', '2023-04-05', 1.2, 'Pharmacy', 'Storage B', 'Locked cabinet', 802, 'Michael Brown', '2023-04-06', 'Truck', 'MediLogistics', 502, 'Pharma Waste Center', '2023-04-07', 'Neutralization', 'PharmaClean', '2023-04-08', 'Compliant', 902, 'Dr Brian Lee', '2023-04-08', '', 702, 'Admin B', '2023-04-09', 1, '2023-04-10', 802, 'Michael Brown', '', 0, NULL, NULL);
INSERT INTO HospitalWasteManagementLog VALUES (30003, 3, 'Sharps', '2023-02-20', 0.8, 'Emergency', 'ER Room 3', 'Puncture-resistant container', 803, 'Sarah Kim', '2023-02-21', 'Van', 'SharpTrans', 503, 'Sharp Waste Facility', '2023-02-22', 'Incineration', 'SharpDispose', '2023-02-23', 'Compliant', 903, 'Dr Clara Singh', '2023-02-23', '', 703, 'Admin C', '2023-02-24', 1, '2023-02-25', 803, 'Sarah Kim', '', 0, NULL, NULL);