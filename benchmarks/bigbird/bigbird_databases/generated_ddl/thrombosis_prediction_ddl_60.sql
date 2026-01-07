-- Table: BiomedicalResearchProject
CREATE TABLE BiomedicalResearchProject (
    ProjectID INTEGER PRIMARY KEY,
    Title TEXT,
    LeadInvestigator TEXT,
    StartDate DATE,
    EndDate DATE,
    FundingAgency TEXT,
    GrantNumber TEXT,
    Budget REAL,
    Phase TEXT,
    Status TEXT,
    ResearchArea TEXT,
    CollaboratingInstitution TEXT,
    EthicalApprovalDate DATE,
    DataSharingPlan TEXT,
    PublicationsExpected INTEGER,
    SamplesCollected INTEGER,
    CoreFacilityUsed TEXT,
    BioSafetyLevel INTEGER,
    ProjectCoordinator TEXT,
    ContactEmail TEXT
);

INSERT INTO BiomedicalResearchProject VALUES (1, 'GenomicMarkersStudy', 'DrSmith', '2023-01-15', '2025-12-31', 'NationalScienceFund', 'NSF12345', 1250000.00, 'PhaseI', 'Active', 'Genomics', 'UniversityA', '2022-11-20', 'OpenAccess', 5, 2000, 'SequencingCore', 2, 'MsLee', 'lee@example.com');
INSERT INTO BiomedicalResearchProject VALUES (2, 'ImmunotherapyTrial', 'DrJones', '2022-06-01', '2024-05-30', 'HealthInstitute', 'HI98765', 980000.00, 'PhaseII', 'Completed', 'Immunology', 'HospitalB', '2022-04-10', 'Controlled', 8, 1500, 'CellCultureLab', 1, 'MrKim', 'kim@example.com');
INSERT INTO BiomedicalResearchProject VALUES (3, 'NeurodegenerationBiomarkers', 'DrPatel', '2024-03-10', '2026-08-20', 'BrainResearchCouncil', 'BRC54321', 750000.00, 'Planning', 'Pending', 'Neurology', 'InstituteC', '2024-01-05', 'Restricted', 3, 500, 'MRIFacility', 3, 'DrNg', 'ng@example.com');

-- Table: ClinicalEquipmentUtilization
CREATE TABLE ClinicalEquipmentUtilization (
    UtilizationID INTEGER PRIMARY KEY,
    EquipmentID INTEGER,
    Department TEXT,
    UtilizationDate DATE,
    HoursUsed REAL,
    PatientCount INTEGER,
    MaintenanceFlag INTEGER,
    OperatorID INTEGER,
    Shift TEXT,
    UtilizationRate REAL,
    CalibrationDueDate DATE,
    EnergyConsumption REAL,
    DowntimeMinutes INTEGER,
    ReasonForDowntime TEXT,
    SoftwareVersion TEXT,
    FirmwareVersion TEXT,
    LastServiceDate DATE,
    NextServiceDate DATE,
    Comment TEXT,
    RecordedBy TEXT
);

INSERT INTO ClinicalEquipmentUtilization VALUES (101, 2001, 'Radiology', '2025-02-15', 6.5, 12, 0, 301, 'Day', 0.85, '2025-12-01', 42.3, 0, '', 'v2.4', 'fw1.2', '2024-11-20', '2025-11-20', 'Routine use', 'admin');
INSERT INTO ClinicalEquipmentUtilization VALUES (102, 2002, 'Cardiology', '2025-02-16', 4.0, 8, 1, 302, 'Night', 0.60, '2025-10-15', 35.0, 30, 'Calibration', 'v3.1', 'fw2.0', '2024-12-05', '2025-12-05', 'Calibration needed', 'tech');
INSERT INTO ClinicalEquipmentUtilization VALUES (103, 2003, 'Surgery', '2025-02-17', 8.0, 15, 0, 303, 'Evening', 0.95, '2026-01-30', 50.7, 0, '', 'v1.9', 'fw0.9', '2024-10-10', '2025-10-10', 'High demand', 'nurse');

-- Table: HospitalParkingPermitDetail
CREATE TABLE HospitalParkingPermitDetail (
    PermitID INTEGER PRIMARY KEY,
    VehiclePlate TEXT,
    PermitType TEXT,
    IssueDate DATE,
    ExpiryDate DATE,
    AssignedStaffID INTEGER,
    ParkingZone TEXT,
    AccessLevel INTEGER,
    IssueAuthority TEXT,
    PaymentMethod TEXT,
    FeeAmount REAL,
    VehicleMake TEXT,
    VehicleModel TEXT,
    Color TEXT,
    OwnerName TEXT,
    OwnerContact TEXT,
    ValidationCode TEXT,
    Barcode TEXT,
    IsActive INTEGER,
    Notes TEXT
);

INSERT INTO HospitalParkingPermitDetail VALUES (5001, 'AB123CD', 'Staff', '2024-01-01', '2024-12-31', 1001, 'A', 3, 'HRDept', 'CreditCard', 150.00, 'Toyota', 'Corolla', 'White', 'Alice Green', '5551234', 'VAL001', 'BC12345', 1, '');
INSERT INTO HospitalParkingPermitDetail VALUES (5002, 'EF456GH', 'Visitor', '2024-03-15', '2024-09-15', 0, 'B', 1, 'Security', 'Cash', 20.00, 'Honda', 'Civic', 'Blue', 'Bob Brown', '5555678', 'VAL002', 'BC54321', 1, 'Temporary visitor');
INSERT INTO HospitalParkingPermitDetail VALUES (5003, 'IJ789KL', 'Patient', '2024-05-20', '2025-05-19', 0, 'C', 2, 'PatientServices', 'DebitCard', 0.00, 'Ford', 'Focus', 'Red', 'Carol White', '5559012', 'VAL003', 'BC67890', 1, 'Patient family');

-- Table: EnvironmentalSensorCalibration
CREATE TABLE EnvironmentalSensorCalibration (
    CalibrationID INTEGER PRIMARY KEY,
    SensorID INTEGER,
    SensorType TEXT,
    CalibrationDate DATE,
    TechnicianID INTEGER,
    CalibrationMethod TEXT,
    CalibrationFactor REAL,
    Offset REAL,
    TemperatureReference REAL,
    HumidityReference REAL,
    PressureReference REAL,
    ValidUntil DATE,
    CalibrationCertificate TEXT,
    LabLocation TEXT,
    EquipmentUsed TEXT,
    Notes TEXT,
    IsApproved INTEGER,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    NextCalibrationDue DATE
);

INSERT INTO EnvironmentalSensorCalibration VALUES (9001, 301, 'Temperature', '2025-01-10', 401, 'StandardGas', 1.02, 0.05, 22.5, 45.0, 1013.25, '2026-01-09', 'CERT001', 'LabA', 'ThermometerX', '', 1, 'SupervisorA', '2025-01-12', '2026-01-10');
INSERT INTO EnvironmentalSensorCalibration VALUES (9002, 302, 'Humidity', '2025-02-05', 402, 'Gravimetric', 0.98, -0.03, 23.0, 50.0, 1012.80, '2026-02-04', 'CERT002', 'LabB', 'HygrometerY', 'Check seals', 1, 'SupervisorB', '2025-02-07', '2026-02-05');
INSERT INTO EnvironmentalSensorCalibration VALUES (9003, 303, 'CO2', '2025-03-12', 403, 'GasCell', 1.00, 0.00, 21.5, 40.0, 1013.00, '2026-03-11', 'CERT003', 'LabC', 'CO2AnalyzerZ', '', 0, '', '0000-00-00', '2026-03-12');

-- Table: RemotePatientMonitoringSession
CREATE TABLE RemotePatientMonitoringSession (
    SessionID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    DeviceID INTEGER,
    SessionStart DATE,
    SessionEnd DATE,
    DataPointsCollected INTEGER,
    AvgHeartRate REAL,
    AvgBloodPressureSystolic REAL,
    AvgBloodPressureDiastolic REAL,
    AvgSpO2 REAL,
    AlertsTriggered INTEGER,
    TechnicianID INTEGER,
    SessionNotes TEXT,
    FirmwareVersion TEXT,
    BatteryLevelStart REAL,
    BatteryLevelEnd REAL,
    ConnectivityStatus TEXT,
    DataUploadStatus TEXT,
    IsSuccessful INTEGER,
    RecordedBy TEXT
);

INSERT INTO RemotePatientMonitoringSession VALUES (20001, 1010, 501, '2025-02-01', '2025-02-01', 1440, 72.5, 120.0, 80.0, 98.2, 0, 601, '', 'fw1.0', 100.0, 95.0, 'Online', 'Uploaded', 1, 'techA');
INSERT INTO RemotePatientMonitoringSession VALUES (20002, 1020, 502, '2025-02-02', '2025-02-02', 720, 68.0, 115.0, 75.0, 97.5, 1, 602, 'Low SpO2 alert', 'fw1.1', 95.0, 90.0, 'Online', 'Uploaded', 1, 'techB');
INSERT INTO RemotePatientMonitoringSession VALUES (20003, 1030, 503, '2025-02-03', '2025-02-03', 0, 0, 0, 0, 0, 0, 603, 'Device malfunction', 'fw0.9', 80.0, 80.0, 'Offline', 'Failed', 0, 'techC');

-- Table: PharmacyBatchProcurement
CREATE TABLE PharmacyBatchProcurement (
    BatchProcurementID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    MedicationCategory TEXT,
    OrderDate DATE,
    ExpectedDeliveryDate DATE,
    ReceivedDate DATE,
    TotalUnits INTEGER,
    TotalCost REAL,
    Currency TEXT,
    ProcurementMethod TEXT,
    ApprovedBy TEXT,
    PurchaseOrderNumber TEXT,
    InvoiceNumber TEXT,
    BatchNumber TEXT,
    StorageCondition TEXT,
    ShelfLifeMonths INTEGER,
    QualityCheckStatus TEXT,
    ReceivedBy INTEGER,
    Comments TEXT,
    IsCompleted INTEGER
);

INSERT INTO PharmacyBatchProcurement VALUES (3001, 701, 'Antibiotics', '2025-01-15', '2025-01-20', '2025-01-19', 5000, 25000.00, 'USD', 'Direct', 'MgrA', 'PO12345', 'INV98765', 'BN001', 'Cool', 24, 'Passed', 801, '', 1);
INSERT INTO PharmacyBatchProcurement VALUES (3002, 702, 'Analgesics', '2025-02-05', '2025-02-12', '2025-02-11', 3000, 18000.00, 'USD', 'Tender', 'MgrB', 'PO12346', 'INV98766', 'BN002', 'RoomTemp', 36, 'Pending', 802, 'Delay due to customs', 0);
INSERT INTO PharmacyBatchProcurement VALUES (3003, 703, 'Vaccines', '2025-03-01', '2025-03-07', '2025-03-07', 2000, 40000.00, 'USD', 'Direct', 'MgrC', 'PO12347', 'INV98767', 'BN003', 'Cold', 12, 'Passed', 803, '', 1);

-- Table: FacilityAirflowAnalysis
CREATE TABLE FacilityAirflowAnalysis (
    AnalysisID INTEGER PRIMARY KEY,
    Zone TEXT,
    AnalysisDate DATE,
    AirChangeRate REAL,
    AvgTemp REAL,
    AvgHumidity REAL,
    CO2Level REAL,
    ParticleCount REAL,
    FilterEfficiency REAL,
    FanSpeedRPM REAL,
    PowerConsumption REAL,
    NoiseLevelDB REAL,
    Status TEXT,
    TechnicianID INTEGER,
    Remarks TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    IsCompliant INTEGER,
    SuggestedAction TEXT,
    FollowUpDate DATE,
    DocumentReference TEXT
);

INSERT INTO FacilityAirflowAnalysis VALUES (4001, 'ICU', '2025-02-10', 12.5, 22.0, 45.0, 600.0, 1500.0, 0.98, 1500.0, 5.2, 55.0, 'Good', 901, '', 'EngLead', '2025-02-12', 1, '', '2025-03-01', 'DOC001');
INSERT INTO FacilityAirflowAnalysis VALUES (4002, 'ER', '2025-02-12', 10.0, 23.5, 50.0, 800.0, 2000.0, 0.95, 1400.0, 6.0, 60.0, 'Review', 902, 'Increase filter change frequency', 'EngLead', '2025-02-14', 0, 'Replace pre-filters', '2025-03-15', 'DOC002');
INSERT INTO FacilityAirflowAnalysis VALUES (4003, 'Lobby', '2025-02-15', 8.0, 21.5, 40.0, 400.0, 1200.0, 0.99, 1300.0, 4.5, 50.0, 'Good', 903, '', 'EngLead', '2025-02-16', 1, '', '2025-04-01', 'DOC003');

-- Table: StaffCompetencyAssessment
CREATE TABLE StaffCompetencyAssessment (
    AssessmentID INTEGER PRIMARY KEY,
    StaffID INTEGER,
    AssessmentDate DATE,
    CompetencyArea TEXT,
    Score INTEGER,
    Passed INTEGER,
    EvaluatorID INTEGER,
    Comments TEXT,
    ReassessmentDue DATE,
    CertificationNumber TEXT,
    CertificationExpiry DATE,
    TrainingHours INTEGER,
    TrainingProvider TEXT,
    IsMandatory INTEGER,
    Department TEXT,
    Role TEXT,
    Level INTEGER,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    IsActive INTEGER,
    RecordVersion INTEGER
);

INSERT INTO StaffCompetencyAssessment VALUES (6001, 1101, '2025-01-20', 'Phlebotomy', 88, 1, 701, '', '2026-01-20', 'CERTPHL001', '2027-01-19', 20, 'HealthAcademy', 1, 'Lab', 'Technician', 2, 'HRHead', '2025-01-22', 1, 1);
INSERT INTO StaffCompetencyAssessment VALUES (6002, 1102, '2025-02-10', 'EKG Interpretation', 75, 1, 702, 'Needs improvement in waveform analysis', '2026-02-10', 'CERTEKG002', '2028-02-09', 15, 'CardioInstitute', 1, 'Cardiology', 'Nurse', 3, 'DeptHead', '2025-02-12', 1, 1);
INSERT INTO StaffCompetencyAssessment VALUES (6003, 1103, '2025-03-05', 'MRI Safety', 65, 0, 703, 'Failed safety protocol quiz', '2025-09-05', 'CERTMRI003', '2026-03-04', 10, 'ImagingCenter', 1, 'Radiology', 'Technician', 1, 'SafetyOfficer', '2025-03-07', 0, 1);

-- Table: MedicalDeviceFirmwareVersion
CREATE TABLE MedicalDeviceFirmwareVersion (
    FirmwareID INTEGER PRIMARY KEY,
    DeviceModel TEXT,
    FirmwareVersion TEXT,
    ReleaseDate DATE,
    SupportedDevices INTEGER,
    ReleaseNotes TEXT,
    Checksum TEXT,
    FileSizeMB REAL,
    CompatibleOS TEXT,
    CriticalPatch INTEGER,
    Deprecated INTEGER,
    Maintainer TEXT,
    ContactEmail TEXT,
    DocumentationURL TEXT,
    InstallationProcedure TEXT,
    RollbackSupported INTEGER,
    MinimumHardwareVersion TEXT,
    MaximumHardwareVersion TEXT,
    IsStableRelease INTEGER,
    ChangeLog TEXT
);

INSERT INTO MedicalDeviceFirmwareVersion VALUES (8001, 'VentX200', 'v5.3.1', '2024-12-01', 150, 'Improved alarm handling', 'ABC123DEF', 12.5, 'Linux', 1, 0, 'EngTeamA', 'engA@example.com', 'http://docs.example.com/ventx200', 'StandardInstall', 1, 'HW1.0', 'HW2.5', 1, 'Added support for new sensors');
INSERT INTO MedicalDeviceFirmwareVersion VALUES (8002, 'InfusionPumpZ', 'v3.0.0', '2025-01-15', 200, 'Security patch release', 'XYZ789GHI', 8.2, 'RTOS', 1, 0, 'EngTeamB', 'engB@example.com', 'http://docs.example.com/infusionpumpz', 'SecureInstall', 1, 'HW2.0', 'HW3.0', 1, 'Fixed buffer overflow');
INSERT INTO MedicalDeviceFirmwareVersion VALUES (8003, 'ECGMonitorA', 'v2.1.4', '2024-11-20', 120, 'Minor bug fixes', 'LMN456OPQ', 5.0, 'Embedded', 0, 0, 'EngTeamC', 'engC@example.com', 'http://docs.example.com/ecgmonitora', 'StandardInstall', 0, 'HW1.5', 'HW2.0', 0, 'Corrected timing issue');

-- Table: ClinicalTrialSiteVisitSchedule
CREATE TABLE ClinicalTrialSiteVisitSchedule (
    VisitScheduleID INTEGER PRIMARY KEY,
    TrialID INTEGER,
    SiteID INTEGER,
    VisitNumber INTEGER,
    PlannedDate DATE,
    VisitType TEXT,
    LeadInvestigator TEXT,
    Coordinator TEXT,
    ExpectedDurationHours REAL,
    RequiredDocuments TEXT,
    TravelArrangements TEXT,
    Accommodation TEXT,
    BudgetAllocation REAL,
    Status TEXT,
    Notes TEXT,
    CreatedBy TEXT,
    CreationDate DATE,
    UpdatedBy TEXT,
    UpdateDate DATE,
    IsConfirmed INTEGER,
    FollowUpActions TEXT
);

INSERT INTO ClinicalTrialSiteVisitSchedule VALUES (90001, 4001, 201, 1, '2025-04-10', 'Initial', 'DrMiller', 'AnnaLee', 8.0, 'IRBApproval', 'Air', 'HotelA', 5000.00, 'Planned', '', 'SchedulerA', '2025-02-01', 'SchedulerB', '2025-02-05', 0, '');
INSERT INTO ClinicalTrialSiteVisitSchedule VALUES (90002, 4001, 202, 2, '2025-07-15', 'Monitoring', 'DrMiller', 'AnnaLee', 6.0, 'ProgressReport', 'Train', 'HotelB', 3000.00, 'Scheduled', '', 'SchedulerA', '2025-03-01', 'SchedulerB', '2025-03-10', 1, '');
INSERT INTO ClinicalTrialSiteVisitSchedule VALUES (90003, 4002, 203, 1, '2025-05-20', 'Initial', 'DrNg', 'BrianKim', 9.0, 'IRBApproval,ConsentForms', 'Car', 'HotelC', 5500.00, 'Planned', '', 'SchedulerC', '2025-02-15', 'SchedulerD', '2025-02-20', 0, '');