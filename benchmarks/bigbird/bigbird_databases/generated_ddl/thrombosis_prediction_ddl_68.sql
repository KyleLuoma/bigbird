-- Examination equipment used during examinations
CREATE TABLE ExaminationEquipment (
    ID INTEGER,
    ExamID INTEGER,
    EquipmentID INTEGER,
    EquipmentName TEXT,
    SerialNumber TEXT,
    CalibrationDate DATE,
    CalibrationDue DATE,
    Manufacturer TEXT,
    Model TEXT,
    Location TEXT,
    Status TEXT,
    MaintenanceLog TEXT,
    WarrantyExp DATE,
    UsageHours REAL,
    LastServicedBy TEXT,
    InspectionScore INTEGER,
    Notes TEXT,
    PowerRequirement TEXT,
    Connectivity TEXT,
    SoftwareVersion TEXT
);

INSERT INTO ExaminationEquipment (ID,ExamID,EquipmentID,EquipmentName,SerialNumber,CalibrationDate,CalibrationDue,Manufacturer,Model,Location,Status,MaintenanceLog,WarrantyExp,UsageHours,LastServicedBy,InspectionScore,Notes,PowerRequirement,Connectivity,SoftwareVersion) VALUES (1,101,5001,'Coagulation Analyzer','SN12345','2023-01-15','2024-01-15','MedTech','CA-200','Lab A','Active','Checked quarterly','2025-12-31',150.5,'John Doe',95,'All good','220V','USB','v2.1');
INSERT INTO ExaminationEquipment (ID,ExamID,EquipmentID,EquipmentName,SerialNumber,CalibrationDate,CalibrationDue,Manufacturer,Model,Location,Status,MaintenanceLog,WarrantyExp,UsageHours,LastServicedBy,InspectionScore,Notes,PowerRequirement,Connectivity,SoftwareVersion) VALUES (2,102,5002,'Auto Analyzer','SN67890','2022-12-01','2023-12-01','BioLab','AA-500','Lab B','Active','Replaced filter','2024-11-30',300.0,'Emily Smith',88,'Minor wear','110V','Ethernet','v3.0');
INSERT INTO ExaminationEquipment (ID,ExamID,EquipmentID,EquipmentName,SerialNumber,CalibrationDate,CalibrationDue,Manufacturer,Model,Location,Status,MaintenanceLog,WarrantyExp,UsageHours,LastServicedBy,InspectionScore,Notes,PowerRequirement,Connectivity,SoftwareVersion) VALUES (3,103,5003,'Microscope','SN54321','2023-02-20','2024-02-20','OptiView','MS-100','Lab C','Maintenance','Lens cleaned','2026-05-15',75.2,'Michael Lee',92,'Good condition','120V','WiFi','v1.8');

-- Reference ranges for laboratory tests
CREATE TABLE LaboratoryReferenceRange (
    ID INTEGER,
    TestCode TEXT,
    TestName TEXT,
    Unit TEXT,
    LowerLimit REAL,
    UpperLimit REAL,
    AgeGroup TEXT,
    Sex TEXT,
    Method TEXT,
    Source TEXT,
    UpdatedDate DATE,
    CreatedBy TEXT,
    FlagLow TEXT,
    FlagHigh TEXT,
    Interpretation TEXT,
    ClinicalSignificance TEXT,
    SampleType TEXT,
    SpecimenCondition TEXT,
    ReferencePopulation TEXT,
    Comment TEXT
);

INSERT INTO LaboratoryReferenceRange VALUES (1,'GLU','Glucose','mg/dL',70,99,'Adult','Both','Enzymatic','Lab Handbook','2023-01-10','Lab Admin','Low','High','Normal fasting','Diabetes screening','Serum','Fresh','General population','');
INSERT INTO LaboratoryReferenceRange VALUES (2,'CRP','C-Reactive Protein','mg/L',0,5,'Adult','Both','Immunoturbidimetric','Lab Handbook','2023-02-05','Lab Admin','Low','High','Low risk','Inflammation marker','Serum','Fresh','General population','');
INSERT INTO LaboratoryReferenceRange VALUES (3,'WBC','White Blood Cells','10^9/L',4.0,11.0,'Adult','Both','Cytometric','Lab Handbook','2023-03-12','Lab Admin','Low','High','Normal','Infection monitoring','Whole Blood','EDTA','General population','');

-- Lifestyle survey for patients
CREATE TABLE PatientLifestyleSurvey (
    SurveyID INTEGER,
    PatientID INTEGER,
    SurveyDate DATE,
    SmokingStatus TEXT,
    AlcoholUnitsPerWeek INTEGER,
    ExerciseFrequencyPerWeek INTEGER,
    AvgSleepHours REAL,
    DietType TEXT,
    BMI REAL,
    BloodPressureSystolic INTEGER,
    BloodPressureDiastolic INTEGER,
    StressLevel TEXT,
    MaritalStatus TEXT,
    EmploymentStatus TEXT,
    EducationLevel TEXT,
    HouseholdIncome INTEGER,
    ResidenceType TEXT,
    TrafficExposure TEXT,
    ScreenTimeHours INTEGER,
    VitaminSupplement TEXT
);

INSERT INTO PatientLifestyleSurvey VALUES (1,101,'2023-04-01','Never',0,3,7.5,'Mediterranean',22.1,120,78,'Low','Married','Employed','College',55000,'Urban','Low',2,'Yes');
INSERT INTO PatientLifestyleSurvey VALUES (2,102,'2023-04-15','Former',5,1,6.0,'Western',28.4,135,85,'Medium','Single','Unemployed','High School',30000,'Suburban','Medium',4,'No');
INSERT INTO PatientLifestyleSurvey VALUES (3,103,'2023-05-01','Current',10,0,5.5,'Fast Food',31.2,140,90,'High','Divorced','Retired','Graduate',75000,'Rural','High',6,'Yes');

-- Calibration logs for imaging devices
CREATE TABLE ImagingDeviceCalibration (
    CalibID INTEGER,
    DeviceID INTEGER,
    DeviceType TEXT,
    CalibrationDate DATE,
    TechnicianName TEXT,
    CalibrationFactor REAL,
    NoiseLevel REAL,
    Resolution TEXT,
    DoseRate REAL,
    FrequencyHz REAL,
    SoftwareVersion TEXT,
    FirmwareVersion TEXT,
    CalibrationStatus TEXT,
    Comments TEXT,
    NextDueDate DATE,
    CalibrationMethod TEXT,
    StandardUsed TEXT,
    TemperatureC REAL,
    HumidityPercent REAL,
    VoltageVolts REAL
);

INSERT INTO ImagingDeviceCalibration VALUES (1,2001,'CT Scanner','2023-03-20','Alice Green',1.02,0.5,'1mm','0.8',60,'v5.3','fw1.2','Pass','No issues','2024-03-20','Phantom','IEC','22.0',45,230);
INSERT INTO ImagingDeviceCalibration VALUES (2,2002,'MRI','2023-02-15','Bob White',0.98,0.3,'0.5mm','0.0',64,'v4.9','fw2.0','Pass','All parameters within spec','2024-02-15','Phantom','ISO','20.5',40,240);
INSERT INTO ImagingDeviceCalibration VALUES (3,2003,'X-Ray','2023-01-10','Carol Black',1.00,0.6,'0.2mm','1.2',50,'v3.7','fw0.9','Fail','Detector gain out of range','2023-07-10','Source Check','NIST','23.0',50,220);

-- Pharmacy inventory batch records
CREATE TABLE PharmacyInventoryBatch (
    BatchID INTEGER,
    DrugName TEXT,
    NDCCode TEXT,
    Manufacturer TEXT,
    LotNumber TEXT,
    ExpirationDate DATE,
    ReceivedDate DATE,
    Quantity INTEGER,
    Unit TEXT,
    StorageTempC REAL,
    StorageLocation TEXT,
    ShelfLifeDays INTEGER,
    CurrentStock INTEGER,
    ReorderLevel INTEGER,
    SupplierName TEXT,
    PurchaseOrderNumber TEXT,
    ReceivedBy TEXT,
    QCResult TEXT,
    Comments TEXT,
    BatchStatus TEXT
);

INSERT INTO PharmacyInventoryBatch VALUES (1,'Aspirin','12345-6789','PharmaCorp','L001','2025-12-31','2023-04-01',1000,'tablet',25.0,'Pharmacy Shelf A',730,800,200,'HealthSupply','PO12345','John Doe','Pass','','Active');
INSERT INTO PharmacyInventoryBatch VALUES (2,'Metformin','98765-4321','MediLife','L002','2024-06-30','2023-03-15',500,'tablet',20.0,'Pharmacy Shelf B',548,450,100,'MediDistrib','PO54321','Jane Smith','Pass','Stored in controlled area','Active');
INSERT INTO PharmacyInventoryBatch VALUES (3,'Lisinopril','55555-1111','CardioMed','L003','2023-11-30','2023-02-20',300,'tablet',22.0,'Pharmacy Shelf C',334,250,80,'CardioSupply','PO67890','Emily Jones','Fail','Color deviation','Quarantined');

-- Biobank sample tracking
CREATE TABLE ResearchBiobankSample (
    SampleID INTEGER,
    BiobankID INTEGER,
    PatientID INTEGER,
    SampleType TEXT,
    CollectionDate DATE,
    VolumeML REAL,
    StorageTempC REAL,
    ContainerID TEXT,
    BarCode TEXT,
    AliquotCount INTEGER,
    ConsentGiven TEXT,
    Diagnosis TEXT,
    ProcessingMethod TEXT,
    FreezeThawCycles INTEGER,
    QualityScore INTEGER,
    LabTechnician TEXT,
    Notes TEXT,
    LocationRack TEXT,
    LocationBox TEXT,
    RetrievalCount INTEGER
);

INSERT INTO ResearchBiobankSample VALUES (1,10,101,'Blood','2023-03-01',5.0,-80,'C001','BC001',3,'Yes','RA','Centrifuge',1,90,'Anna Lee','No issues','RackA','Box01',2);
INSERT INTO ResearchBiobankSample VALUES (2,10,102,'Tissue','2023-02-20',2.5,-80,'C002','BC002',1,'Yes','Cancer','Fixation',0,85,'Brian Kim','Partial degradation','RackB','Box02',1);
INSERT INTO ResearchBiobankSample VALUES (3,10,103,'Saliva','2023-04-10',1.0,-20,'C003','BC003',2,'No','Control','Freezing',2,80,'Catherine Wu','Insufficient volume','RackC','Box03',0);

-- Clinical guideline versions
CREATE TABLE ClinicalGuidelineVersion (
    GuidelineID INTEGER,
    GuidelineName TEXT,
    VersionNumber TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    AuthoringBody TEXT,
    Scope TEXT,
    TargetPopulation TEXT,
    ClinicalDomain TEXT,
    UpdateReason TEXT,
    ReviewCommittee TEXT,
    ApprovalStatus TEXT,
    ChangeSummary TEXT,
    ReferenceURL TEXT,
    Keywords TEXT,
    ImplementationDate DATE,
    MonitoringPlan TEXT,
    MetricsDefined TEXT,
    LastReviewedBy TEXT,
    Comments TEXT
);

INSERT INTO ClinicalGuidelineVersion VALUES (1,'Hypertension Management','v2.0','2023-01-01','2025-12-31','Cardiology Society','Diagnosis and treatment','Adults','Cardiology','Incorporate new BP targets','Guideline Review Board','Approved','Updated BP thresholds and lifestyle advice','http://example.org/hypertension','BP, lifestyle','2023-02-01','Quarterly audits','BP control rates','Dr. Smith','');
INSERT INTO ClinicalGuidelineVersion VALUES (2,'Diabetes Care','v3.1','2022-07-01','2026-06-30','Endocrine Association','Management of type 2 diabetes','Adults','Endocrinology','Add SGLT2 inhibitors recommendation','Guideline Review Board','Approved','Added newer drug classes','http://example.org/diabetes','SGLT2, HbA1c','2022-08-01','Annual outcomes','HbA1c <7%','Dr. Lee','');
INSERT INTO ClinicalGuidelineVersion VALUES (3,'Asthma Guidelines','v1.5','2021-05-15','2024-05-14','Pulmonary Society','Treatment algorithms','Children','Pulmonology','Incorporate biologics','Guideline Review Board','Approved','Biologics for severe asthma','http://example.org/asthma','Biologics, inhaler','2021-06-01','Biannual spirometry','Exacerbation rate','Dr. Patel','');

-- Utility meter readings for facilities
CREATE TABLE FacilityUtilityMeter (
    MeterID INTEGER,
    FacilityID INTEGER,
    MeterType TEXT,
    ReadingDate DATE,
    ReadingValue REAL,
    Unit TEXT,
    CumulativeReading REAL,
    PreviousReading REAL,
    Consumption REAL,
    CostUSD REAL,
    MeterLocation TEXT,
    MaintenanceDate DATE,
    CalibrationDate DATE,
    Supplier TEXT,
    ContractNumber TEXT,
    Notes TEXT,
    Status TEXT,
    AlertThreshold REAL,
    AlertTriggered TEXT,
    VerificationBy TEXT
);

INSERT INTO FacilityUtilityMeter VALUES (1,100,'Electricity','2023-04-30',1250.5,'kWh',1250.5,1200.0,50.5,6000,'Main Building','2023-01-15','2023-01-10','EnergyCo','C001','Monthly reading','Active',600,'No','Engineer A');
INSERT INTO FacilityUtilityMeter VALUES (2,100,'Water','2023-04-30',350.0,'m3',350.0,340.0,10.0,420,'Main Building','2023-02-20','2023-02-18','WaterSupply','C002','Monthly reading','Active',400,'No','Engineer B');
INSERT INTO FacilityUtilityMeter VALUES (3,101,'Gas','2023-04-30',800.0,'therms',800.0,750.0,50.0,950,'Annex','2023-03-05','2023-03-01','GasCorp','C003','Monthly reading','Active',900,'No','Engineer C');

-- Environmental sensor readings
CREATE TABLE EnvironmentalSensorReading (
    SensorID INTEGER,
    FacilityID INTEGER,
    SensorType TEXT,
    ReadingTimestamp DATETIME,
    Value REAL,
    Unit TEXT,
    CalibrationDate DATE,
    BatteryLevelPercent INTEGER,
    SignalStrength INTEGER,
    LocationDescription TEXT,
    FirmwareVersion TEXT,
    Status TEXT,
    AlertLevel TEXT,
    Remarks TEXT,
    MaintenanceDueDate DATE,
    Operator TEXT,
    DataQualityFlag TEXT,
    SamplingIntervalSec INTEGER,
    Latitude REAL,
    Longitude REAL
);

INSERT INTO EnvironmentalSensorReading VALUES (1,100,'Temperature','2023-04-30 08:00:00',22.5,'C','2022-12-01',85,78,'Lobby','v1.0','OK','Normal','','2024-12-01','Mike','Good',300,40.7128,-74.0060);
INSERT INTO EnvironmentalSensorReading VALUES (2,100,'Humidity','2023-04-30 08:05:00',45.0,'%','2022-12-01',80,80,'Lobby','v1.0','OK','Normal','','2024-12-01','Mike','Good',300,40.7128,-74.0060);
INSERT INTO EnvironmentalSensorReading VALUES (3,101,'AirQuality','2023-04-30 08:10:00',12.0,'AQI','2023-01-15',90,85,'Laboratory','v2.1','OK','Normal','','2025-01-15','Sarah','Good',600,34.0522,-118.2437);

-- Telehealth device usage logs
CREATE TABLE TelehealthDeviceUsageLog (
    UsageID INTEGER,
    DeviceID INTEGER,
    PatientID INTEGER,
    SessionID INTEGER,
    StartTimestamp DATETIME,
    EndTimestamp DATETIME,
    DataTransferredMB REAL,
    VideoQuality TEXT,
    AudioQuality TEXT,
    ConnectionType TEXT,
    NetworkProvider TEXT,
    DeviceOS TEXT,
    AppVersion TEXT,
    BandwidthMbps REAL,
    LatencyMs INTEGER,
    ErrorsEncountered TEXT,
    UserFeedback TEXT,
    TechnicianSupport TEXT,
    BillingCode TEXT,
    SessionOutcome TEXT
);

INSERT INTO TelehealthDeviceUsageLog VALUES (1,3001,101,9001,'2023-04-20 09:00:00','2023-04-20 09:30:00',150.5,'HD','Clear','WiFi','ProviderA','Android','1.2',5.0,40,'None','Good','No','TC001','Completed');
INSERT INTO TelehealthDeviceUsageLog VALUES (2,3002,102,9002,'2023-04-21 14:15:00','2023-04-21 14:45:00',120.0,'SD','Clear','Cellular','ProviderB','iOS','2.0',3.5,55,'Video freeze','Fair','Yes','TC002','Completed with issues');
INSERT INTO TelehealthDeviceUsageLog VALUES (3,3003,103,9003,'2023-04-22 11:00:00','2023-04-22 11:20:00',80.0,'HD','Clear','WiFi','ProviderC','Android','1.5',6.2,30,'None','Excellent','No','TC003','Completed');