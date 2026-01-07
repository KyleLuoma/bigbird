-- Energy audit records for each building
CREATE TABLE BuildingEnergyAudit (
    AuditID INTEGER PRIMARY KEY,
    BuildingName TEXT,
    AuditDate DATE,
    EnergySource TEXT,
    TotalKWh REAL,
    PeakDemandKW REAL,
    AvgPowerFactor REAL,
    CO2EmissionsKg REAL,
    AuditorName TEXT,
    Notes TEXT,
    ElectricityCost REAL,
    GasCost REAL,
    WaterCost REAL,
    RenewablePct REAL,
    TemperatureC REAL,
    HumidityPct REAL,
    EquipmentCount INTEGER,
    LightingLoadKW REAL,
    HVACLoadKW REAL,
    MiscLoadKW REAL,
    OverallScore INTEGER
);

INSERT INTO BuildingEnergyAudit VALUES (1, 'NorthWing', '2023-06-15', 'Electric', 125000.5, 450.2, 0.95, 42000.7, 'AliceSmith', 'Annual audit', 15000.0, 3000.0, 1200.0, 12.5, 22.3, 45.0, 350, 80.5, 200.0, 30.5, 88);
INSERT INTO BuildingEnergyAudit VALUES (2, 'SouthWing', '2023-06-20', 'Hybrid', 98000.0, 380.0, 0.93, 34000.0, 'BobJones', 'Mid-year audit', 11800.0, 2500.0, 950.0, 15.0, 21.0, 48.0, 280, 70.0, 180.0, 25.0, 82);
INSERT INTO BuildingEnergyAudit VALUES (3, 'EastAnnex', '2023-07-01', 'Solar', 45000.3, 210.5, 0.98, 15000.2, 'CathyLee', 'Quarterly audit', 6000.0, 1200.0, 500.0, 30.0, 23.5, 42.0, 150, 55.0, 130.0, 20.0, 91);

-- Tracking of logistics shipments between facilities
CREATE TABLE LogisticsShipmentTracking (
    ShipmentID INTEGER PRIMARY KEY,
    Carrier TEXT,
    OriginFacility TEXT,
    DestinationFacility TEXT,
    DepartureDate DATE,
    ArrivalDate DATE,
    ShipmentWeightKG REAL,
    ContainerCount INTEGER,
    HazardousFlag INTEGER,
    TrackingNumber TEXT,
    Status TEXT,
    EstimatedDelivery DATE,
    ActualDelivery DATE,
    TemperatureControlled INTEGER,
    AvgTemperatureC REAL,
    MaxTemperatureC REAL,
    MinTemperatureC REAL,
    MoisturePct REAL,
    HandlingInstructions TEXT,
    CostUSD REAL,
    DelayReason TEXT
);

INSERT INTO LogisticsShipmentTracking VALUES (1001, 'FastTrans', 'MainWarehouse', 'NorthWing', '2023-08-01', '2023-08-03', 1275.5, 3, 0, 'FT123456', 'Delivered', '2023-08-04', '2023-08-03', 1, 4.2, 6.5, 2.1, 12.0, 'Handle with care', 2500.00, '');
INSERT INTO LogisticsShipmentTracking VALUES (1002, 'SafeMove', 'SouthWing', 'EastAnnex', '2023-08-05', '2023-08-07', 980.0, 2, 1, 'SM987654', 'Delivered', '2023-08-08', '2023-08-08', 0, 0.0, 0.0, 0.0, 0.0, 'No liquids', 1800.00, 'Weather');
INSERT INTO LogisticsShipmentTracking VALUES (1003, 'RapidShip', 'MainWarehouse', 'WestWing', '2023-08-10', '2023-08-12', 1500.0, 4, 0, 'RS543210', 'InTransit', '2023-08-13', NULL, 1, 5.0, 8.0, 3.0, 8.5, 'Keep upright', 3000.00, '');

-- Staff participation in fitness programs
CREATE TABLE StaffFitnessProgram (
    ProgramID INTEGER PRIMARY KEY,
    StaffID INTEGER,
    ProgramName TEXT,
    StartDate DATE,
    EndDate DATE,
    SessionsCompleted INTEGER,
    TotalHours REAL,
    CaloriesBurned INTEGER,
    AvgHeartRate INTEGER,
    GoalWeightKg REAL,
    AchievedWeightKg REAL,
    ParticipationLevel TEXT,
    IncentiveEarned TEXT,
    TrainerName TEXT,
    FeedbackScore INTEGER,
    LastSessionDate DATE,
    FrequencyPerWeek INTEGER,
    Notes TEXT,
    EnrollmentStatus TEXT,
    ProgramCategory TEXT,
    Sponsor TEXT
);

INSERT INTO StaffFitnessProgram VALUES (2001, 101, 'CardioBlast', '2023-01-05', '2023-06-05', 20, 30.5, 15000, 135, 78.0, 77.2, 'High', 'GymBag', 'LauraWhite', 9, '2023-05-28', 3, 'Improved stamina', 'Active', 'Cardio', 'HealthDept');
INSERT INTO StaffFitnessProgram VALUES (2002, 102, 'StrengthBuilder', '2023-02-01', '2023-07-01', 15, 22.0, 12000, 110, 85.0, 84.5, 'Medium', 'ProteinShake', 'MarkBrown', 8, '2023-06-20', 2, 'Needs more core work', 'Active', 'Strength', 'WellnessFund');
INSERT INTO StaffFitnessProgram VALUES (2003, 103, 'YogaFlow', '2023-03-10', '2023-09-10', 12, 18.0, 8000, 95, 65.0, 64.8, 'Low', 'YogaMat', 'SaraGreen', 10, '2023-08-15', 1, 'Great flexibility gains', 'Active', 'Flexibility', 'WellbeingCorp');

-- Air quality monitoring readings from sensor stations
CREATE TABLE AirQualityMonitoringLog (
    LogID INTEGER PRIMARY KEY,
    StationID TEXT,
    RecordDate DATE,
    PM25 REAL,
    PM10 REAL,
    OzonePPB REAL,
    NO2PPB REAL,
    SO2PPB REAL,
    COppm REAL,
    AQI INTEGER,
    TemperatureC REAL,
    HumidityPct REAL,
    WindSpeedKph REAL,
    WindDirection TEXT,
    CalibrationDate DATE,
    SensorStatus TEXT,
    Latitude REAL,
    Longitude REAL,
    DataQualityFlag INTEGER,
    Notes TEXT,
    TechnicianName TEXT
);

INSERT INTO AirQualityMonitoringLog VALUES (3001, 'STN001', '2023-08-01', 12.5, 25.0, 30.2, 15.4, 5.1, 0.6, 45, 22.3, 55.0, 12.5, 'NE', '2023-07-15', 'OK', 40.7128, -74.0060, 0, 'Normal', 'JohnDoe');
INSERT INTO AirQualityMonitoringLog VALUES (3002, 'STN002', '2023-08-01', 18.0, 40.0, 45.0, 22.0, 7.5, 0.8, 75, 23.1, 60.0, 8.2, 'SW', '2023-07-20', 'OK', 34.0522, -118.2437, 0, 'Slightly elevated PM', 'JaneSmith');
INSERT INTO AirQualityMonitoringLog VALUES (3003, 'STN003', '2023-08-01', 8.0, 15.0, 20.5, 10.2, 3.0, 0.4, 30, 21.0, 50.0, 5.0, 'N', '2023-07-10', 'OK', 41.8781, -87.6298, 0, 'Good', 'MikeLee');

-- Registry of equipment loans to staff or departments
CREATE TABLE EquipmentLoanRegistry (
    LoanID INTEGER PRIMARY KEY,
    EquipmentID TEXT,
    BorrowerID INTEGER,
    LoanDate DATE,
    ExpectedReturnDate DATE,
    ActualReturnDate DATE,
    ConditionOnLoan TEXT,
    ConditionOnReturn TEXT,
    LoanPurpose TEXT,
    ApprovedBy TEXT,
    Department TEXT,
    Location TEXT,
    InsuranceCoverage TEXT,
    DamageFees REAL,
    Notes TEXT,
    ExtensionRequested INTEGER,
    ExtendedReturnDate DATE,
    RenewalCount INTEGER,
    AssetTag TEXT,
    Status TEXT
);

INSERT INTO EquipmentLoanRegistry VALUES (4001, 'EQP-1001', 101, '2023-05-01', '2023-05-31', '2023-05-30', 'Good', 'Good', 'PatientMonitoring', 'DrSmith', 'Cardiology', 'Room12', 'Full', 0.0, 'Returned on time', 0, NULL, 1, 'TAG1001', 'Closed');
INSERT INTO EquipmentLoanRegistry VALUES (4002, 'EQP-2002', 102, '2023-06-10', '2023-07-10', NULL, 'Excellent', NULL, 'Research', 'DrLee', 'Research', 'Lab3', 'Partial', NULL, 'Pending return', 1, '2023-07-20', 0, 'TAG2002', 'Open');
INSERT INTO EquipmentLoanRegistry VALUES (4003, 'EQP-3003', 103, '2023-07-15', '2023-08-15', NULL, 'Fair', NULL, 'Training', 'MsTaylor', 'Education', 'ConferenceRoom', 'None', NULL, 'Used for demo', 0, NULL, 0, 'TAG3003', 'Open');

-- Attendance records for community health events
CREATE TABLE CommunityHealthEventAttendance (
    AttendanceID INTEGER PRIMARY KEY,
    EventID INTEGER,
    ParticipantID INTEGER,
    AttendanceDate DATE,
    EventType TEXT,
    Location TEXT,
    DurationMinutes INTEGER,
    FeedbackScore INTEGER,
    FollowUpNeeded INTEGER,
    FollowUpDate DATE,
    VolunteerStaffID INTEGER,
    TransportationProvided INTEGER,
    MealProvided INTEGER,
    CostCoveredBy TEXT,
    Sponsor TEXT,
    Notes TEXT,
    RegistrationMethod TEXT,
    AgeGroup TEXT,
    Gender TEXT,
    IncomeBracket TEXT,
    HealthTopic TEXT
);

INSERT INTO CommunityHealthEventAttendance VALUES (5001, 101, 10001, '2023-04-12', 'NutritionWorkshop', 'CommunityCenter', 90, 8, 0, NULL, 201, 1, 1, 'Grant', 'HealthOrg', 'Very engaged', 'Online', 'Adult', 'Female', 'Middle', 'Diet');
INSERT INTO CommunityHealthEventAttendance VALUES (5002, 102, 10002, '2023-05-20', 'BloodPressureScreening', 'LibraryHall', 45, 9, 1, '2023-06-05', 202, 0, 0, 'Self', 'PharmaCo', 'Needs follow-up', 'WalkIn', 'Senior', 'Male', 'Low', 'Cardio');
INSERT INTO CommunityHealthEventAttendance VALUES (5003, 103, 10003, '2023-06-15', 'MentalHealthTalk', 'Auditorium', 60, 7, 0, NULL, 203, 0, 0, 'Donor', 'WellnessFund', 'Good questions', 'Referral', 'YoungAdult', 'NonBinary', 'High', 'MentalHealth');

-- Reports of device failures and corrective actions
CREATE TABLE DeviceFailureReport (
    ReportID INTEGER PRIMARY KEY,
    DeviceID TEXT,
    FailureDate DATE,
    FailureType TEXT,
    SymptomDescription TEXT,
    DowntimeHours REAL,
    RootCause TEXT,
    RepairCost REAL,
    TechnicianID INTEGER,
    ReplacementNeeded INTEGER,
    ReplacementDeviceID TEXT,
    WarrantyClaimed INTEGER,
    WarrantyProvider TEXT,
    FailureSeverity INTEGER,
    ImpactedArea TEXT,
    Notes TEXT,
    PreventiveActionTaken TEXT,
    MTBFHours REAL,
    MTTRHours REAL,
    FailureCode TEXT,
    Status TEXT
);

INSERT INTO DeviceFailureReport VALUES (6001, 'DEV-5001', '2023-03-10', 'PowerLoss', 'Device shut down unexpectedly', 4.5, 'Circuit board failure', 1200.00, 301, 1, 'DEV-5002', 1, 'ManufacturerCo', 3, 'ICU', 'Replaced board', 'Added surge protector', 1500.0, 4.5, 'F001', 'Closed');
INSERT INTO DeviceFailureReport VALUES (6002, 'DEV-6003', '2023-04-22', 'SoftwareCrash', 'System freezes during use', 2.0, 'Software bug v2.3', 0.00, 302, 0, NULL, 0, NULL, 2, 'Radiology', 'Applied patch', 'Updated software', 2000.0, 2.0, 'F002', 'Closed');
INSERT INTO DeviceFailureReport VALUES (6003, 'DEV-7005', '2023-05-15', 'MechanicalWear', 'Motor noise and reduced performance', 6.0, 'Bearing wear', 800.00, 303, 0, NULL, 0, NULL, 2, 'OR', 'Lubricated bearings', 'Scheduled maintenance', 1800.0, 6.0, 'F003', 'Open');

-- Utilization statistics for transport vehicles
CREATE TABLE TransportUtilizationStats (
    StatID INTEGER PRIMARY KEY,
    VehicleID TEXT,
    Date DATE,
    TripsCompleted INTEGER,
    TotalDistanceKm REAL,
    AvgSpeedKph REAL,
    FuelConsumedLiters REAL,
    EmissionsKgCO2 REAL,
    MaintenanceFlag INTEGER,
    DriverID INTEGER,
    LoadWeightKg REAL,
    EmptyReturnFlag INTEGER,
    OnTimePerformancePct REAL,
    DelayMinutes REAL,
    RouteEfficiencyPct REAL,
    MaxLoadKg REAL,
    MinLoadKg REAL,
    UtilizationPct REAL,
    Notes TEXT,
    SupervisorID INTEGER,
    Shift TEXT
);

INSERT INTO TransportUtilizationStats VALUES (7001, 'AMB-01', '2023-08-01', 5, 120.5, 45.0, 30.2, 78.5, 0, 401, 850.0, 0, 96.0, 5.0, 92.0, 900.0, 400.0, 85.0, 'All trips on schedule', 501, 'Day');
INSERT INTO TransportUtilizationStats VALUES (7002, 'AMB-02', '2023-08-01', 3, 85.0, 40.0, 22.5, 58.0, 1, 402, 600.0, 1, 88.0, 12.0, 85.0, 650.0, 300.0, 78.0, 'Minor delay due to traffic', 502, 'Night');
INSERT INTO TransportUtilizationStats VALUES (7003, 'AMB-03', '2023-08-01', 4, 100.0, 42.5, 25.0, 65.0, 0, 403, 750.0, 0, 92.0, 8.0, 90.0, 800.0, 350.0, 82.0, 'Fuel consumption within target', 503, 'Day');

-- Detailed phases of construction projects
CREATE TABLE ConstructionPhaseDetail (
    PhaseID INTEGER PRIMARY KEY,
    ProjectID INTEGER,
    PhaseName TEXT,
    StartDate DATE,
    EndDate DATE,
    BudgetUSD REAL,
    ExpenditureUSD REAL,
    ContractorName TEXT,
    Status TEXT,
    MilestonesCompleted INTEGER,
    TotalMilestones INTEGER,
    RiskLevel TEXT,
    IssuesLogged INTEGER,
    IssuesResolved INTEGER,
    SafetyIncidents INTEGER,
    InspectionDate DATE,
    InspectorName TEXT,
    Notes TEXT,
    FundingSource TEXT,
    PhaseDurationDays INTEGER,
    PercentComplete INTEGER
);

INSERT INTO ConstructionPhaseDetail VALUES (8001, 901, 'FoundationWork', '2023-01-10', '2023-03-15', 500000.0, 460000.0, 'BuildMax', 'Completed', 5, 5, 'Low', 2, 2, 0, '2023-03-14', 'LauraK', 'All foundations passed', 'HospitalFund', 64, 100);
INSERT INTO ConstructionPhaseDetail VALUES (8002, 902, 'StructuralFraming', '2023-04-01', '2023-07-20', 1200000.0, 1150000.0, 'SteelWorks', 'InProgress', 8, 12, 'Medium', 5, 3, 1, '2023-07-18', 'MarkL', 'Delay due to material shortage', 'GrantABC', 111, 67);
INSERT INTO ConstructionPhaseDetail VALUES (8003, 903, 'ElectricalFitout', '2023-08-01', '2023-10-30', 300000.0, 150000.0, 'ElectroPro', 'Planned', 0, 6, 'Low', 0, 0, 0, NULL, NULL, 'Awaiting permits', 'CapitalReserve', 91, 0);

-- Audit log of data access events
CREATE TABLE DataAccessAuditLog (
    LogID INTEGER PRIMARY KEY,
    UserID INTEGER,
    AccessedTable TEXT,
    AccessType TEXT,
    AccessTimestamp DATETIME,
    RecordCount INTEGER,
    QueryText TEXT,
    IPAddress TEXT,
    DeviceType TEXT,
    SuccessFlag INTEGER,
    FailureReason TEXT,
    SessionID TEXT,
    Role TEXT,
    Department TEXT,
    SensitiveDataFlag INTEGER,
    DataClassification TEXT,
    EncryptionUsed INTEGER,
    AuditTrailVersion INTEGER,
    Comments TEXT,
    ComplianceCheckPassed INTEGER,
    ActionTaken TEXT
);

INSERT INTO DataAccessAuditLog VALUES (9001, 101, 'Patient', 'SELECT', '2023-08-15 09:12:30', 1, 'SELECT * FROM Patient WHERE ID=101', '192.168.1.10', 'Desktop', 1, '', 'SID123', 'Physician', 'Cardiology', 1, 'PHI', 1, 2, 'Routine check', 1, 'Logged');
INSERT INTO DataAccessAuditLog VALUES (9002, 202, 'Laboratory', 'UPDATE', '2023-08-15 10:05:12', 1, 'UPDATE Laboratory SET GLU=110 WHERE ID=102 AND Date=''2023-07-01''', '192.168.1.22', 'Laptop', 1, '', 'SID124', 'LabTech', 'Pathology', 0, 'NonSensitive', 1, 2, 'Corrected value', 1, 'Logged');
INSERT INTO DataAccessAuditLog VALUES (9003, 303, 'Examination', 'DELETE', '2023-08-15 11:20:45', 1, 'DELETE FROM Examination WHERE ID=103 AND `Examination Date`=''2023-06-01''', '192.168.1.35', 'WebPortal', 0, 'PermissionDenied', 'SID125', 'Nurse', 'Emergency', 1, 'PHI', 0, 2, 'Attempted unauthorized delete', 0, 'AlertedSecurity');