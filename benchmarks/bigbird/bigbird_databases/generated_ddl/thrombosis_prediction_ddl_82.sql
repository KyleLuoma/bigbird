-- Imaging device calibration details
CREATE TABLE ImagingDeviceCalibrationLog (
    LogID INTEGER PRIMARY KEY,
    DeviceID TEXT,
    CalibrationDate DATE,
    Technician TEXT,
    CalibrationType TEXT,
    CalibrationResult TEXT,
    Voltage REAL,
    Current REAL,
    Temperature REAL,
    Humidity REAL,
    SoftwareVersion TEXT,
    FirmwareVersion TEXT,
    CenterID TEXT,
    Shift TEXT,
    DurationMinutes INTEGER,
    OperatorID TEXT,
    ApprovalStatus TEXT,
    CalibrationIntervalDays INTEGER,
    NextDueDate DATE,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO ImagingDeviceCalibrationLog VALUES (1,'CT01','2025-01-15','JohnDoe','Full','Pass',120.5,0.8,22.5,45.0,'v3_2','fw1_4','CEN01','Day',90,'OP123','Approved',180,'2025-07-14','2025-01-15','2025-01-15');
INSERT INTO ImagingDeviceCalibrationLog VALUES (2,'MR02','2025-02-10','JaneSmith','Partial','Pass',110.0,0.7,21.0,40.0,'v2_9','fw1_2','CEN02','Night',60,'OP124','Approved',365,'2026-02-09','2025-02-10','2025-02-10');
INSERT INTO ImagingDeviceCalibrationLog VALUES (3,'XR03','2025-03-05','AliceLee','Full','Fail',130.2,0.9,23.5,48.0,'v4_1','fw1_5','CEN03','Day',120,'OP125','Pending',180,'2025-09-01','2025-03-05','2025-03-05');

-- Pharmacy cold chain temperature log
CREATE TABLE PharmacyColdChainLog (
    RecordID INTEGER PRIMARY KEY,
    BatchID TEXT,
    ProductCode TEXT,
    StorageLocation TEXT,
    TemperatureC REAL,
    HumidityPercent REAL,
    MonitoringStart DATE,
    MonitoringEnd DATE,
    RecordedBy TEXT,
    DeviceID TEXT,
    AlertFlag INTEGER,
    ReasonForAlert TEXT,
    ActionTaken TEXT,
    TemperatureUnit TEXT,
    ComplianceStatus TEXT,
    Shift TEXT,
    Zone TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT
);

INSERT INTO PharmacyColdChainLog VALUES (101,'BCH001','VAC123','FreezerA',2.5,30.0,'2025-04-01','2025-04-07','MikeBrown','DEV01',0,'','', 'Celsius','Compliant','Day','Zone1','2025-04-01','2025-04-01','');
INSERT INTO PharmacyColdChainLog VALUES (102,'BCH002','INS456','RefrigeratorB',5.0,45.0,'2025-04-03','2025-04-09','SaraWhite','DEV02',1,'TempAboveRange','AdjustedThermostat','Celsius','NonCompliant','Night','Zone2','2025-04-03','2025-04-03','Temp spike detected');
INSERT INTO PharmacyColdChainLog VALUES (103,'BCH003','ANT789','FreezerC',-1.2,25.0,'2025-04-05','2025-04-11','TomGreen','DEV03',0,'','', 'Celsius','Compliant','Day','Zone3','2025-04-05','2025-04-05','');

-- Environmental sensor reading log
CREATE TABLE EnvironmentalSensorReading (
    ReadingID INTEGER PRIMARY KEY,
    SensorID TEXT,
    Location TEXT,
    ReadingDate DATE,
    TemperatureC REAL,
    HumidityPercent REAL,
    CO2ppm REAL,
    PM25ugm3 REAL,
    NoiseDb REAL,
    LightLux REAL,
    VoltageV REAL,
    BatteryLevelPercent INTEGER,
    Status TEXT,
    FirmwareVersion TEXT,
    CalibrationDate DATE,
    Shift TEXT,
    OperatorID TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Comments TEXT,
    Latitude REAL,
    Longitude REAL
);

INSERT INTO EnvironmentalSensorReading VALUES (5001,'SNS001','WardA','2025-05-01',22.1,40.2,415,12.5,55.0,300,3.3,85,'OK','v1_0','2024-12-20','Day','OP200','2025-05-01','2025-05-01','',37.7749,-122.4194);
INSERT INTO EnvironmentalSensorReading VALUES (5002,'SNS002','Pharmacy','2025-05-02',20.5,38.0,380,10.0,50.0,250,3.2,90,'OK','v1_0','2024-12-25','Night','OP201','2025-05-02','2025-05-02','',34.0522,-118.2437);
INSERT INTO EnvironmentalSensorReading VALUES (5003,'SNS003','Radiology','2025-05-03',23.0,42.5,430,15.2,60.0,350,3.4,80,'Alert','v1_1','2025-01-10','Day','OP202','2025-05-03','2025-05-03','CO2 high',40.7128,-74.0060);

-- Transport schedule for patient escorts
CREATE TABLE TransportSchedule (
    ScheduleID INTEGER PRIMARY KEY,
    TransportDate DATE,
    DepartureTime TEXT,
    ArrivalTime TEXT,
    VehicleID TEXT,
    DriverID TEXT,
    EscortID TEXT,
    FromLocation TEXT,
    ToLocation TEXT,
    PatientID INTEGER,
    Reason TEXT,
    Priority INTEGER,
    Status TEXT,
    Mileage INTEGER,
    FuelUsedLiters REAL,
    EstimatedCost REAL,
    ActualCost REAL,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT,
    Shift TEXT,
    ContactPhone TEXT
);

INSERT INTO TransportSchedule VALUES (9001,'2025-06-01','08:00','08:30','VHC01','DRV100','ESC200','Ward5','Imaging','12','RoutineScan',1,'Completed',10,2.5,15.0,15.0,'2025-06-01','2025-06-01','', 'Day','5551234');
INSERT INTO TransportSchedule VALUES (9002,'2025-06-01','09:15','09:45','VHC02','DRV101','ESC201','ER','Surgery','15','Urgent','8','InProgress',12,3.0,18.0,0.0,'2025-06-01','2025-06-01','Waiting for clearance','Night','5555678');
INSERT INTO TransportSchedule VALUES (9003,'2025-06-02','10:00','10:20','VHC03','DRV102','ESC202','Lab','Ward3','22','LabResult','3','Scheduled',5,1.2,8.0,0.0,'2025-06-02','2025-06-02','', 'Day','5559012');

-- Research biobank sample metadata
CREATE TABLE ResearchBiobankSample (
    SampleID TEXT PRIMARY KEY,
    StudyID TEXT,
    ParticipantID INTEGER,
    CollectionDate DATE,
    SampleType TEXT,
    VolumeML REAL,
    StorageLocation TEXT,
    FreezeTempC REAL,
    ProcessingProtocol TEXT,
    ConsentID TEXT,
    QualityScore INTEGER,
    AliquotCount INTEGER,
    CurrentAliquotNumber INTEGER,
    LastAccessed DATE,
    AccessPermission TEXT,
    CreatedBy TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT,
    Barcode TEXT,
    Status TEXT
);

INSERT INTO ResearchBiobankSample VALUES ('SMP001','STU001',1001,'2025-03-10','Blood',5.0,'FreezerA',-80,'PROC01','CONS001',95,10,1,'2025-03-12','ReadOnly','TechA','2025-03-10','2025-03-12','Initial storage','BC12345','Stored');
INSERT INTO ResearchBiobankSample VALUES ('SMP002','STU002',1002,'2025-03-12','Tissue',2.5,'FreezerB',-80,'PROC02','CONS002',88,5,2,'2025-03-14','ReadWrite','TechB','2025-03-12','2025-03-14','Processed for RNA','BC12346','Stored');
INSERT INTO ResearchBiobankSample VALUES ('SMP003','STU001',1003,'2025-03-15','Saliva',1.0,'FreezerC',-20,'PROC03','CONS001',92,8,1,'2025-03-16','ReadOnly','TechC','2025-03-15','2025-03-16','Sent to external lab','BC12347','InTransit');

-- Facility energy metric details
CREATE TABLE FacilityEnergyMetricDetail (
    MetricID INTEGER PRIMARY KEY,
    FacilityID TEXT,
    MetricDate DATE,
    EnergySource TEXT,
    ConsumptionKWh REAL,
    CostUSD REAL,
    PeakDemandKW REAL,
    AvgVoltageV REAL,
    AvgCurrentA REAL,
    CO2EmissionsKg REAL,
    RenewablePercentage REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    Shift TEXT,
    RecordedBy TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT,
    MeterReadingStart REAL,
    MeterReadingEnd REAL,
    DurationHours REAL
);

INSERT INTO FacilityEnergyMetricDetail VALUES (2001,'FAC01','2025-04-30','Electric','1500.5','1800.0','250.0','230.0','15.2','1250.0','15.0','22.0','40.0','Day','ENG001','2025-04-30','2025-04-30','','5000.0','6500.5','24');
INSERT INTO FacilityEnergyMetricDetail VALUES (2002,'FAC02','2025-04-30','Solar','300.0','45.0','80.0','225.0','10.5','300.0','85.0','21.5','38.0','Night','ENG002','2025-04-30','2025-04-30','','1200.0','1500.0','24');
INSERT INTO FacilityEnergyMetricDetail VALUES (2003,'FAC03','2025-04-30','NaturalGas','800.0','960.0','150.0','235.0','12.8','800.0','0.0','23.0','42.0','Day','ENG003','2025-04-30','2025-04-30','','3000.0','3800.0','24');

-- Staff credential audit log
CREATE TABLE StaffCredentialAudit (
    AuditID INTEGER PRIMARY KEY,
    StaffID TEXT,
    CredentialType TEXT,
    CredentialNumber TEXT,
    IssuingAuthority TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    VerificationStatus TEXT,
    VerifiedBy TEXT,
    VerificationDate DATE,
    AuditResult TEXT,
    Comments TEXT,
    Department TEXT,
    Position TEXT,
    Shift TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    AuditScore INTEGER,
    RiskLevel TEXT,
    FollowUpAction TEXT,
    FollowUpDue DATE,
    DocumentPath TEXT
);

INSERT INTO StaffCredentialAudit VALUES (3001,'STF001','MedicalLicense','ML12345','StateBoard','2020-05-01','2025-04-30','Verified','AUD001','2025-04-01','Pass','All good','Cardiology','Physician','Day','2025-04-01','2025-04-01',95,'Low','None','2025-04-01','/docs/ML12345.pdf');
INSERT INTO StaffCredentialAudit VALUES (3002,'STF002','NursingCert','NC54321','NursingCouncil','2019-07-15','2024-07-14','Expired','AUD002','2024-07-15','Fail','Certificate expired','Oncology','Nurse','Night','2024-07-15','2024-07-15',60,'High','Renewal required','2024-08-15','/docs/NC54321.pdf');
INSERT INTO StaffCredentialAudit VALUES (3003,'STF003','RadiologyLicense','RL98765','RadiologyBoard','2021-03-20','2026-03-19','Verified','AUD003','2025-03-01','Pass','Valid','Radiology','Radiologist','Day','2025-03-01','2025-03-01',88,'Medium','Annual review','2025-12-31','/docs/RL98765.pdf');

-- Patient wearable device data
CREATE TABLE PatientWearableDeviceData (
    RecordID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    DeviceID TEXT,
    MeasurementDate DATE,
    HeartRateBPM INTEGER,
    StepsCount INTEGER,
    SleepHours REAL,
    CaloriesBurned REAL,
    BloodOxygenPercent REAL,
    SkinTemperatureC REAL,
    ActivityLevel TEXT,
    BatteryLevelPercent INTEGER,
    FirmwareVersion TEXT,
    SyncTime TEXT,
    DataQualityScore INTEGER,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT,
    GPSLatitude REAL,
    GPSLongitude REAL,
    SignalStrength INTEGER
);

INSERT INTO PatientWearableDeviceData VALUES (4001,1001,'WD001','2025-07-01',72,8500,7.5,2200.0,98.5,33.2,'Active',95,'v2_1','08:00',92,'2025-07-01','2025-07-01','',37.7749,-122.4194,80);
INSERT INTO PatientWearableDeviceData VALUES (4002,1002,'WD002','2025-07-01',65,6000,6.0,1800.0,97.0,32.8,'Moderate',88,'v2_0','08:05',88,'2025-07-01','2025-07-01','',34.0522,-118.2437,75);
INSERT INTO PatientWearableDeviceData VALUES (4003,1003,'WD003','2025-07-01',80,12000,8.0,2500.0,99.2,34.0,'VeryActive',90,'v2_1','08:10',95,'2025-07-01','2025-07-01','',40.7128,-74.0060,85);

-- Surgical instrument inventory
CREATE TABLE SurgicalInstrumentInventory (
    InstrumentID TEXT PRIMARY KEY,
    InstrumentName TEXT,
    Category TEXT,
    QuantityOnHand INTEGER,
    SupplierID TEXT,
    PurchaseDate DATE,
    LastMaintenanceDate DATE,
    MaintenanceIntervalDays INTEGER,
    SterilizationMethod TEXT,
    Status TEXT,
    Location TEXT,
    RFIDTag TEXT,
    CostUSD REAL,
    Currency TEXT,
    WarrantyMonths INTEGER,
    ResponsibleStaffID TEXT,
    InspectionDate DATE,
    InspectionResult TEXT,
    NextInspectionDue DATE,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT,
    SerialNumber TEXT,
    Department TEXT
);

INSERT INTO SurgicalInstrumentInventory VALUES ('SI001','Scalpel #10','Cutting',50,'SUP001','2023-01-15','2025-01-10',180,'Autoclave','Available','OR1','RF001',25.0,'USD',24,'STF010','2025-01-10','Pass','2025-07-10','2025-01-15','2025-01-15','Sharp edges checked','SN001','Surgery');
INSERT INTO SurgicalInstrumentInventory VALUES ('SI002','Forceps Medium','Grasping',30,'SUP002','2022-06-20','2025-02-05',365,'Steam','In Use','OR2','RF002',40.0,'USD',36,'STF011','2025-02-05','Pass','2026-02-05','2022-06-20','2025-02-05','Handles inspected','SN002','Surgery');
INSERT INTO SurgicalInstrumentInventory VALUES ('SI003','Retractor Large','Retraction',15,'SUP003','2021-11-10','2024-12-01',730,'Chemical','Under Maintenance','OR3','RF003',120.0,'USD',48,'STF012','2024-12-01','Fail','2026-12-01','2021-11-10','2024-12-01','Requires part replacement','SN003','Surgery');

-- Community health survey responses
CREATE TABLE CommunityHealthSurveyResponse (
    ResponseID INTEGER PRIMARY KEY,
    SurveyID TEXT,
    RespondentID TEXT,
    ResponseDate DATE,
    Age INTEGER,
    Gender TEXT,
    ZipCode TEXT,
    EmploymentStatus TEXT,
    IncomeLevel TEXT,
    HasChronicCondition TEXT,
    Smokes TEXT,
    AlcoholUseFrequency TEXT,
    PhysicalActivityDaysPerWeek INTEGER,
    DailyFruitVegServings INTEGER,
    HealthCareAccess TEXT,
    SatisfactionScore INTEGER,
    Comments TEXT,
    InterviewerID TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    HouseholdSize INTEGER,
    EducationLevel TEXT,
    InsuranceStatus TEXT,
    LanguageSpoken TEXT,
    TravelTimeToClinicMinutes INTEGER,
    WeightKg REAL,
    HeightCm REAL
);

INSERT INTO CommunityHealthSurveyResponse VALUES (6001,'SURV001','RESP001','2025-08-01',45,'Female','94102','Employed','Middle','Yes','No','Occasional',3,2,'Good',8,'','INT001','2025-08-01','2025-08-01',3,'College','Insured','English',15,78.5,165);
INSERT INTO CommunityHealthSurveyResponse VALUES (6002,'SURV001','RESP002','2025-08-02',60,'Male','94103','Retired','Low','No','Yes','Frequent',1,1,'Limited',5,'','INT002','2025-08-02','2025-08-02',2,'HighSchool','Uninsured','Spanish',30,85.0,170);
INSERT INTO CommunityHealthSurveyResponse VALUES (6003,'SURV001','RESP003','2025-08-03',30,'Other','94104','Student','Low','No','No','Never',5,3,'Excellent',9,'','INT001','2025-08-03','2025-08-03',1,'Bachelor','Insured','English',10,68.0,175);