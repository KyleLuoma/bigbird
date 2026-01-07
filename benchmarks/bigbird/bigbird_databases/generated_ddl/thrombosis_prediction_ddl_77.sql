-- Radiology equipment maintenance log
CREATE TABLE RadiologyEquipmentMaintenanceLog
(
    LogID                       INTEGER PRIMARY KEY,
    EquipmentID                 INTEGER,
    MaintenanceDate             DATE,
    TechnicianName              TEXT,
    ServiceType                 TEXT,
    IssueDescription            TEXT,
    PartsReplaced               TEXT,
    Cost                        REAL,
    DowntimeHours               REAL,
    NextDueDate                 DATE,
    VendorName                  TEXT,
    WarrantyCovered             INTEGER,
    SerialNumber                TEXT,
    ModelNumber                 TEXT,
    Location                    TEXT,
    CalibrationStatus           TEXT,
    SafetyCheckPassed           INTEGER,
    Notes                       TEXT,
    CreatedAt                   DATE,
    UpdatedAt                   DATE,
    MaintenanceDurationMinutes INTEGER
);

INSERT INTO RadiologyEquipmentMaintenanceLog VALUES (1,101,'2023-02-15','Alice Smith','Preventive','Routine check','None',250.00,1.5,'2024-02-15','MedTech Services',1,'SN101X','RX200','Radiology Wing','Calibrated',1,'All good','2023-02-15','2023-02-15',90);
INSERT INTO RadiologyEquipmentMaintenanceLog VALUES (2,102,'2023-03-10','Bob Jones','Repair','Cooling fan failure','Cooling Fan',500.00,3.0,'2024-03-10','HealthEquip Co',0,'SN102Y','RX210','Radiology Wing','Not Calibrated',0,'Replaced fan','2023-03-10','2023-03-10',180);
INSERT INTO RadiologyEquipmentMaintenanceLog VALUES (3,103,'2023-04-05','Carol Lee','Upgrade','Software version outdated','Software Patch',150.00,0.5,'2024-04-05','TechUpgrade Ltd',1,'SN103Z','RX220','Radiology Wing','Calibrated',1,'Updated software','2023-04-05','2023-04-05',30);

-- Pharmacy cold chain monitoring records
CREATE TABLE PharmacyColdChainMonitor
(
    MonitorID                INTEGER PRIMARY KEY,
    SerialNumber             TEXT,
    DeviceLocation           TEXT,
    StartDate                DATE,
    EndDate                  DATE,
    TemperatureMin           REAL,
    TemperatureMax           REAL,
    AvgTemperature           REAL,
    AlarmCount               INTEGER,
    BatteryLevel             INTEGER,
    FirmwareVersion          TEXT,
    CalibrationDate          DATE,
    OperatorName             TEXT,
    ComplianceStatus         TEXT,
    Comments                 TEXT,
    CreatedAt                DATE,
    UpdatedAt                DATE,
    HumidityMin              REAL,
    HumidityMax              REAL,
    AvgHumidity              REAL
);

INSERT INTO PharmacyColdChainMonitor VALUES (1,'CCM-001','Pharmacy Cold Room','2023-01-01','2023-01-31',2.0,8.0,5.0,0,95,'v1.2','2022-12-15','Dana White','Compliant','No issues','2023-01-01','2023-01-31',30.0,45.0,38.0);
INSERT INTO PharmacyColdChainMonitor VALUES (2,'CCM-002','Vaccines Storage','2023-02-01','2023-02-28',2.5,7.5,5.2,1,90,'v1.3','2023-01-20','Evan Green','Compliant','One minor alarm','2023-02-01','2023-02-28',32.0,48.0,39.5);
INSERT INTO PharmacyColdChainMonitor VALUES (3,'CCM-003','Blood Products Area','2023-03-01','2023-03-31',1.8,7.0,4.5,0,98,'v1.2','2023-02-10','Fiona Black','Compliant','All good','2023-03-01','2023-03-31',31.0,46.0,38.8);

-- Facility energy consumption detail
CREATE TABLE FacilityEnergyConsumptionDetail
(
    RecordID                INTEGER PRIMARY KEY,
    FacilityID              INTEGER,
    Date                    DATE,
    ElectricityKWh          REAL,
    GasTherms               REAL,
    WaterCubicMeters        REAL,
    SteamPounds             REAL,
    SolarGenerationKWh      REAL,
    WindGenerationKWh       REAL,
    PeakDemandKW            REAL,
    LoadFactor              REAL,
    CO2EmissionsKg         REAL,
    CostUSD                 REAL,
    MeterReadingStart       REAL,
    MeterReadingEnd         REAL,
    EnergyTariffCode        TEXT,
    OperatorID              INTEGER,
    Shift                   TEXT,
    Notes                   TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE
);

INSERT INTO FacilityEnergyConsumptionDetail VALUES (1,10,'2023-04-01',1200.5,300.0,150.2,0.0,200.0,0.0,75.0,0.85,500.0,25000.0,5000.0,6200.5,'T1',5,'Day','Normal consumption','2023-04-01','2023-04-01');
INSERT INTO FacilityEnergyConsumptionDetail VALUES (2,10,'2023-04-02',1180.3,295.5,148.0,0.0,210.0,0.0,74.5,0.84,495.0,24800.0,4800.0,5980.3,'T1',5,'Day','Slight decrease','2023-04-02','2023-04-02');
INSERT INTO FacilityEnergyConsumptionDetail VALUES (3,10,'2023-04-03',1195.0,298.0,149.5,0.0,205.0,0.0,75.2,0.86,498.0,24950.0,4900.0,6095.0,'T1',5,'Day','Stable','2023-04-03','2023-04-03');

-- Staff competency matrix extended
CREATE TABLE StaffCompetencyMatrixExtended
(
    StaffID                INTEGER,
    CompetencyArea        TEXT,
    Level                  INTEGER,
    CertificationDate     DATE,
    ExpirationDate        DATE,
    CertifiedBy           TEXT,
    TrainingHours         REAL,
    LastAssessmentDate    DATE,
    NextAssessmentDue     DATE,
    SkillNotes            TEXT,
    Department            TEXT,
    Role                  TEXT,
    SupervisorID          INTEGER,
    Status                TEXT,
    CreatedAt             DATE,
    UpdatedAt             DATE,
    CompetencyScore       REAL,
    AssessmentMethod      TEXT,
    EvidenceDocument      TEXT,
    RemediationPlan       TEXT,
    PRIMARY KEY (StaffID, CompetencyArea)
);

INSERT INTO StaffCompetencyMatrixExtended VALUES (101,'Cardiology',4,'2020-06-15','2024-06-15','Board of Medicine',120.0,'2023-01-10','2024-01-10','Advanced ECG interpretation','Cardiology','Senior Cardiologist',90,'Active','2023-01-01','2023-01-01',95.5,'Exam','cert_cardio.pdf','None');
INSERT INTO StaffCompetencyMatrixExtended VALUES (102,'Radiology',3,'2019-09-20','2023-09-20','Radiology Society',80.0,'2022-12-05','2023-12-05','CT imaging protocols','Radiology','Radiologist',91,'Active','2022-12-01','2022-12-01',88.0,'Practical','cert_radio.pdf','Additional CT workshop');
INSERT INTO StaffCompetencyMatrixExtended VALUES (103,'Pharmacy',5,'2021-03-01','2025-03-01','Pharmacy Board',150.0,'2023-02-20','2024-02-20','Compounding sterile products','Pharmacy','Pharmacy Manager',92,'Active','2023-02-01','2023-02-01',97.0,'Exam','cert_pharm.pdf','None');

-- Community health program metrics
CREATE TABLE CommunityHealthProgramMetrics
(
    ProgramID                 INTEGER PRIMARY KEY,
    Year                      INTEGER,
    Quarter                   INTEGER,
    TargetPopulation          INTEGER,
    ParticipantsEnrolled      INTEGER,
    ParticipantsCompleted     INTEGER,
    AvgAttendanceRate        REAL,
    SatisfactionScore         REAL,
    OutreachEvents            INTEGER,
    FundingUSD                REAL,
    ExpenditureUSD            REAL,
    StaffHours                REAL,
    VolunteerHours            REAL,
    NewReferrals              INTEGER,
    HealthOutcomesImproved   INTEGER,
    ChronicDiseaseScreened   INTEGER,
    ImmunizationsAdministered INTEGER,
    EducationSessions        INTEGER,
    MediaImpressions          INTEGER,
    ReportGeneratedDate      DATE
);

INSERT INTO CommunityHealthProgramMetrics VALUES (1,2023,1,5000,1200,1100,0.92,4.6,15,200000.00,150000.00,800.0,400.0,250,300,200,1800,30,35000,'2023-04-15');
INSERT INTO CommunityHealthProgramMetrics VALUES (2,2023,2,6000,1300,1250,0.96,4.8,18,220000.00,160000.00,850.0,420.0,260,320,210,1900,32,38000,'2023-07-15');
INSERT INTO CommunityHealthProgramMetrics VALUES (3,2023,3,5500,1250,1200,0.94,4.7,16,210000.00,155000.00,830.0,410.0,255,310,205,1850,31,36000,'2023-10-15');

-- Medical device warranty information
CREATE TABLE MedicalDeviceWarrantyInfo
(
    WarrantyID            INTEGER PRIMARY KEY,
    DeviceID              INTEGER,
    Manufacturer          TEXT,
    ModelNumber           TEXT,
    SerialNumber          TEXT,
    PurchaseDate          DATE,
    WarrantyStartDate     DATE,
    WarrantyEndDate       DATE,
    CoverageDetails       TEXT,
    ServiceLevel          TEXT,
    SupportPhone          TEXT,
    SupportEmail          TEXT,
    ExtendedWarrantyFlag  INTEGER,
    ExtendedWarrantyEndDate DATE,
    WarrantyCostUSD       REAL,
    ClaimNumber           TEXT,
    ClaimStatus           TEXT,
    LastServiceDate       DATE,
    NextServiceDue        DATE,
    Remarks               TEXT
);

INSERT INTO MedicalDeviceWarrantyInfo VALUES (1,201,'MedEquip Corp','MDX-1000','MDX1000SN','2020-05-10','2020-05-10','2023-05-10','Standard 3-year warranty','Level 1','555-1234','support@medequip.com',0,NULL,1500.00,'CLM-001','Closed','2022-11-20','2023-11-20','No issues');
INSERT INTO MedicalDeviceWarrantyInfo VALUES (2,202,'HealthTech','HT-200','HT200SN','2021-08-15','2021-08-15','2024-08-15','Extended 4-year warranty','Level 2','555-5678','service@healthtech.com',1,'2025-08-15',2500.00,'CLM-002','Open','2023-02-10','2024-02-10','Pending parts delivery');
INSERT INTO MedicalDeviceWarrantyInfo VALUES (3,203,'BioMed','BM-300','BM300SN','2019-11-01','2019-11-01','2022-11-01','Standard 3-year warranty','Level 1','555-8765','info@biomed.com',0,NULL,1800.00,'CLM-003','Resolved','2021-12-05','2022-12-05','Replaced sensor module');

-- Hospital transport fleet schedule
CREATE TABLE HospitalTransportFleetSchedule
(
    ScheduleID          INTEGER PRIMARY KEY,
    VehicleID           INTEGER,
    DriverID            INTEGER,
    RouteID             INTEGER,
    DepartureTime       TEXT,
    ArrivalTime         TEXT,
    Date                DATE,
    Shift               TEXT,
    MileagePlanned      REAL,
    MileageActual       REAL,
    FuelConsumedLiters  REAL,
    MaintenanceDue      DATE,
    CargoType           TEXT,
    PatientTransportFlag INTEGER,
    EmergencyTransportFlag INTEGER,
    Comments            TEXT,
    CreatedAt           DATE,
    UpdatedAt           DATE,
    WeatherCondition    TEXT,
    TrafficLevel        TEXT
);

INSERT INTO HospitalTransportFleetSchedule VALUES (1,301,401,501,'08:00','08:30','2023-04-10','Morning',15.0,15.2,2.5,'2023-06-01','Medical Supplies',0,0,'On time','2023-04-10','2023-04-10','Clear','Low');
INSERT INTO HospitalTransportFleetSchedule VALUES (2,302,402,502,'09:15','09:50','2023-04-10','Morning',20.0,20.5,3.0,'2023-06-15','Patient Transfer',1,0,'Stable patient','2023-04-10','2023-04-10','Cloudy','Medium');
INSERT INTO HospitalTransportFleetSchedule VALUES (3,303,403,503,'22:00','22:40','2023-04-10','Night',18.0,17.8,2.8,'2023-05-30','Emergency Equipment',0,1,'Delayed due to traffic','2023-04-10','2023-04-10','Rain','High');

-- Clinical guideline implementation log
CREATE TABLE ClinicalGuidelineImplementationLog
(
    LogID                INTEGER PRIMARY KEY,
    GuidelineID          INTEGER,
    Department           TEXT,
    ImplementationDate   DATE,
    ResponsiblePerson    TEXT,
    Status               TEXT,
    ComplianceRate       REAL,
    TrainingSessionsHeld INTEGER,
    TrainingHours        REAL,
    ExceptionsMade       INTEGER,
    AuditFindings        TEXT,
    CorrectiveActions    TEXT,
    Notes                TEXT,
    CreatedAt            DATE,
    UpdatedAt            DATE,
    Version              TEXT,
    ReviewDate           DATE,
    ReviewerName         TEXT,
    DocumentationLink    TEXT,
    FollowUpDate         DATE
);

INSERT INTO ClinicalGuidelineImplementationLog VALUES (1,1001,'Cardiology','2023-01-15','Dr. Allen','Completed',0.98,3,12.0,0,'No major issues','N/A','Implementation smooth','2023-01-15','2023-01-15','v1.0','2023-06-15','Dr. Blake','/docs/guideline1001_v1.pdf','2023-07-01');
INSERT INTO ClinicalGuidelineImplementationLog VALUES (2,1002,'Radiology','2023-02-10','Dr. Carter','In Progress',0.85,2,8.0,1,'Minor deviation in protocol','Update SOP','Ongoing monitoring','2023-02-10','2023-02-10','v2.1','2023-07-10','Dr. Davis','/docs/guideline1002_v2.pdf','2023-08-01');
INSERT INTO ClinicalGuidelineImplementationLog VALUES (3,1003,'Pharmacy','2023-03-05','Dr. Evans','Completed',0.92,4,16.0,0,'All compliant','N/A','Round 2 training added','2023-03-05','2023-03-05','v3.3','2023-08-05','Dr. Foster','/docs/guideline1003_v3.pdf','2023-09-01');

-- Environmental sensor station
CREATE TABLE EnvironmentalSensorStation
(
    StationID           INTEGER PRIMARY KEY,
    Location            TEXT,
    InstallDate         DATE,
    SensorType          TEXT,
    Manufacturer        TEXT,
    ModelNumber         TEXT,
    FirmwareVersion     TEXT,
    CalibrationDate     DATE,
    LastDataTimestamp   DATE,
    TemperatureC        REAL,
    HumidityPercent    REAL,
    CO2ppm              REAL,
    PM25ugm3            REAL,
    NoiseDb             REAL,
    BatteryVoltage      REAL,
    SignalStrength      REAL,
    OperationalStatus   TEXT,
    MaintenanceDueDate  DATE,
    Notes               TEXT,
    CreatedAt           DATE
);

INSERT INTO EnvironmentalSensorStation VALUES (1,'North Wing','2022-01-10','TempHumCO2','EnviroTech','ET-100','v2.0','2022-12-01','2023-04-10',22.5,45.0,600,12.0,55.0,3.7, -70,'Active','2023-10-01','No issues','2022-01-10');
INSERT INTO EnvironmentalSensorStation VALUES (2,'South Wing','2022-02-20','TempHumCO2','EnviroTech','ET-101','v2.1','2023-01-15','2023-04-10',23.0,47.0,620,13.5,58.0,3.6, -68,'Active','2023-11-01','Calibration performed','2022-02-20');
INSERT INTO EnvironmentalSensorStation VALUES (3,'East Wing','2022-03-05','TempHumCO2','EnviroTech','ET-102','v2.0','2022-12-20','2023-04-10',21.8,44.5,590,11.8,53.0,3.8, -72,'Active','2023-12-01','Battery replaced','2022-03-05');

-- Patient mobility device log
CREATE TABLE PatientMobilityDeviceLog
(
    LogID               INTEGER PRIMARY KEY,
    PatientID           INTEGER,
    DeviceID            INTEGER,
    DeviceType          TEXT,
    AssignmentDate      DATE,
    ReturnDate          DATE,
    ConditionAtAssignment TEXT,
    ConditionAtReturn   TEXT,
    UsageHours          REAL,
    BatteryStatus       TEXT,
    FirmwareVersion     TEXT,
    MaintenanceDate     DATE,
    Notes               TEXT,
    CreatedAt           DATE,
    UpdatedAt           DATE,
    ProviderName        TEXT,
    WarrantyFlag        INTEGER,
    WarrantyEndDate     DATE,
    TrainingProvided    TEXT,
    ComplianceCheck     TEXT,
    FollowUpDate        DATE
);

INSERT INTO PatientMobilityDeviceLog VALUES (1,101,401,'Wheelchair','2023-01-05','2023-03-20','Good','Minor scratches',150.0,'Full','v1.3','2023-02-15','Patient ambulated well','2023-01-05','2023-03-20','Mobility Services',1,'2024-01-05','Provided','Pass','2023-04-01');
INSERT INTO PatientMobilityDeviceLog VALUES (2,102,402,'Walker','2023-02-10','2023-04-10','Excellent','Excellent',120.0,'Full','v2.0','2023-03-05','No issues','2023-02-10','2023-04-10','Physical Therapy',0,NULL,'Provided','Pass','2023-05-01');
INSERT INTO PatientMobilityDeviceLog VALUES (3,103,403,'Portable Stairlift','2023-03-01','2023-06-01','Good','Good',200.0,'Low','v1.1','2023-04-20','Battery replaced','2023-03-01','2023-06-01','Assistive Devices',1,'2025-03-01','Provided','Pass','2023-07-01');