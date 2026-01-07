-- Radiology quality metrics for imaging studies
CREATE TABLE RadiologyQualityMetrics
(
    ID                        INTEGER,
    StudyDate                 DATE,
    Modality                  TEXT,
    TechnicianID              INTEGER,
    ImageCount                INTEGER,
    MotionArtifacts           INTEGER,
    NoiseLevel                REAL,
    ContrastUsed              TEXT,
    DoseLevel                 REAL,
    ReportTurnaroundHours    REAL,
    ReviewerScore             INTEGER,
    CalibrationDate           DATE,
    MachineID                 TEXT,
    SoftwareVersion           TEXT,
    ImageResolution           TEXT,
    PatientCount              INTEGER,
    AvgExamDurationMinutes    REAL,
    QCFlag                    TEXT,
    Comments                  TEXT,
    AuditTimestamp            DATE
);

INSERT INTO RadiologyQualityMetrics VALUES (1,'2023-05-12','CT',101,120,2,0.8,'Iohexol',5.2,24,85,'2023-04-01','CT01','v3.4','512x512',30,12.5,'PASS','All good','2023-05-12');
INSERT INTO RadiologyQualityMetrics VALUES (2,'2023-06-03','MRI',102,85,0,0.5,'Gadobutrol',3.1,30,90,'2023-05-20','MRI02','v2.9','256x256',25,10.0,'PASS','Slight noise','2023-06-03');
INSERT INTO RadiologyQualityMetrics VALUES (3,'2023-07-15','XRAY',103,200,1,0.3,'None',0.9,12,78,'2023-07-01','XR03','v1.7','1024x1024',40,8.0,'FAIL','Artifacts observed','2023-07-15');

-- Clinical nutrition survey data
CREATE TABLE ClinicalNutritionSurvey
(
    SurveyID                INTEGER,
    SurveyDate              DATE,
    PatientID               INTEGER,
    HeightCm                REAL,
    WeightKg                REAL,
    BMI                     REAL,
    CalorieIntake           INTEGER,
    ProteinGram             INTEGER,
    FatGram                 INTEGER,
    CarbohydrateGram        INTEGER,
    VitaminDLevel           REAL,
    IronLevel               REAL,
    SodiumIntake            INTEGER,
    FiberGram               INTEGER,
    WaterIntakeLiters       REAL,
    AppetiteScore           INTEGER,
    NauseaScore             INTEGER,
    DietaryRestrictions    TEXT,
    PhysicianNotes          TEXT,
    RecordedBy              TEXT
);

INSERT INTO ClinicalNutritionSurvey VALUES (1001,'2023-04-10',201,170.0,68.0,23.5,2100,80,70,250,30.2,13.5,2400,25,2.5,8,2,'None','Patient stable','NurseA');
INSERT INTO ClinicalNutritionSurvey VALUES (1002,'2023-05-22',202,160.0,55.0,21.5,1800,65,55,220,25.0,12.0,2100,20,2.0,7,3,'GlutenFree','Recommend supplements','NurseB');
INSERT INTO ClinicalNutritionSurvey VALUES (1003,'2023-06-15',203,175.0,85.0,27.8,2500,90,80,300,35.0,14.5,2500,30,3.0,6,1,'LowSodium','Monitor blood pressure','NurseC');

-- Medical device logistics and shipment tracking
CREATE TABLE MedicalDeviceLogistics
(
    ShipmentID                INTEGER,
    ShipmentDate              DATE,
    DeviceModel               TEXT,
    SerialNumber              TEXT,
    Quantity                  INTEGER,
    OriginWarehouse           TEXT,
    DestinationFacility       TEXT,
    Carrier                   TEXT,
    TrackingNumber            TEXT,
    ExpectedArrival           DATE,
    ReceivedDate              DATE,
    ConditionOnArrival        TEXT,
    WarrantyExpiry            DATE,
    MaintenanceDueDate        DATE,
    AssignedTechnicianID      INTEGER,
    CostUSD                   REAL,
    Currency                  TEXT,
    BatchNumber               TEXT,
    RegulatoryApproval        TEXT,
    Notes                     TEXT
);

INSERT INTO MedicalDeviceLogistics VALUES (5001,'2023-03-01','HeartMonitor','HM12345',10,'WH1','FacilityA','CarrierX','TRK10001','2023-03-05','2023-03-04','Good','2025-03-01','2024-03-01',301,15000.00,'USD','BN001','FDA','First batch');
INSERT INTO MedicalDeviceLogistics VALUES (5002,'2023-04-15','Ventilator','VT67890',5,'WH2','FacilityB','CarrierY','TRK10002','2023-04-20','2023-04-19','Minor scratches','2026-04-15','2025-04-15',302,25000.00,'USD','BN002','CE','Urgent delivery');
INSERT INTO MedicalDeviceLogistics VALUES (5003,'2023-05-10','InfusionPump','IP54321',20,'WH3','FacilityC','CarrierZ','TRK10003','2023-05-14','2023-05-13','Excellent','2027-05-10','2026-05-10',303,12000.00,'USD','BN003','FDA','Routine restock');

-- Hospital safety training records
CREATE TABLE HospitalSafetyTraining
(
    TrainingID               INTEGER,
    TrainingDate             DATE,
    StaffID                  INTEGER,
    Department               TEXT,
    TrainingTopic            TEXT,
    TrainerName              TEXT,
    DurationMinutes          INTEGER,
    CertificationStatus      TEXT,
    Score                    INTEGER,
    ExpirationDate           DATE,
    FeedbackRating           INTEGER,
    MaterialsProvided        TEXT,
    AttendanceMode           TEXT,
    RoomNumber               TEXT,
    EquipmentUsed            TEXT,
    FollowUpRequired         TEXT,
    FollowUpDate             DATE,
    Comments                 TEXT,
    RecordedBy               TEXT,
    AuditLogID               INTEGER
);

INSERT INTO HospitalSafetyTraining VALUES (2001,'2023-02-10',401,'ER','FireSafety','JohnSmith',90,'Certified',95,'2025-02-10',5,'HandoutPDF','InPerson','Room101','FireExtinguisher','No','2023-02-10','Great participation','Admin1',9001);
INSERT INTO HospitalSafetyTraining VALUES (2002,'2023-03-18',402,'ICU','InfectionControl','EmilyJones',120,'Certified',88,'2025-03-18',4,'VideoModule','Online','N/A','PPE','Yes','2023-04-15','Needs refresher','Admin2',9002);
INSERT INTO HospitalSafetyTraining VALUES (2003,'2023-04-25',403,'Radiology','RadiationSafety','MikeBrown',75,'Pending',0,'2025-04-25',3,'SlideDeck','InPerson','Room202','GeigerCounter','No','2023-04-25','Awaiting results','Admin3',9003);

-- Outpatient service performance metrics
CREATE TABLE OutpatientServiceMetrics
(
    MetricID                 INTEGER,
    ServiceDate              DATE,
    ClinicID                 INTEGER,
    ServiceType              TEXT,
    PatientVisits            INTEGER,
    NewPatients              INTEGER,
    FollowUpVisits           INTEGER,
    AvgWaitMinutes           REAL,
    AvgConsultDuration       REAL,
    NoShowCount              INTEGER,
    CancellationCount        INTEGER,
    ReferralCount            INTEGER,
    InsuranceProcessed       INTEGER,
    RevenueUSD               REAL,
    CostUSD                  REAL,
    ProfitUSD                REAL,
    StaffOnDuty              INTEGER,
    EquipmentUtilizationPct  REAL,
    SatisfactionScore        INTEGER,
    Comments                 TEXT
);

INSERT INTO OutpatientServiceMetrics VALUES (3001,'2023-06-01',10,'GeneralPractice',150,30,120,12.5,15.0,5,3,20,45000.00,30000.00,15000.00,8,78.5,85,'Stable month');
INSERT INTO OutpatientServiceMetrics VALUES (3002,'2023-06-02',11,'Cardiology',80,20,60,10.0,20.0,2,1,15,60000.00,35000.00,25000.00,6,85.0,90,'High demand');
INSERT INTO OutpatientServiceMetrics VALUES (3003,'2023-06-03',12,'Dermatology',60,15,45,8.0,12.0,1,2,10,30000.00,18000.00,12000.00,4,70.0,80,'Seasonal variation');

-- Biomedical research funding information
CREATE TABLE BiomedicalResearchFunding
(
    FundingID                INTEGER,
    GrantTitle               TEXT,
    FundingAgency            TEXT,
    StartDate                DATE,
    EndDate                  DATE,
    AmountUSD                REAL,
    Currency                 TEXT,
    PrincipalInvestigator   TEXT,
    CoInvestigator           TEXT,
    Department               TEXT,
    ProjectCode              TEXT,
    AwardNumber              TEXT,
    FundingStatus            TEXT,
    ReportingFrequency      TEXT,
    LastReportDate           DATE,
    NextMilestoneDate        DATE,
    TotalExpenditureUSD      REAL,
    RemainingBalanceUSD      REAL,
    FundingPurpose           TEXT,
    Notes                    TEXT,
    CreatedTimestamp         DATE
);

INSERT INTO BiomedicalResearchFunding VALUES (4001,'Genomics of Autoimmune Disease','NIH','2022-01-01','2025-12-31',1200000.00,'USD','DrAliceWhite','DrBobGreen','Immunology','GEN2022','NIH-12345','Active','Quarterly','2023-12-01','2024-06-30',300000.00,900000.00,'Explore genetic markers','Initial award','2022-01-01');
INSERT INTO BiomedicalResearchFunding VALUES (4002,'Novel Antibiotic Development','Howard Hughes','2021-06-15','2024-06-14',800000.00,'USD','DrCarolBlack','DrDaveBlue','Microbiology','ABX2021','HHMI-67890','Active','SemiAnnual','2023-06-15','2023-12-31',250000.00,550000.00,'Develop new compounds','Phase 2','2021-06-15');
INSERT INTO BiomedicalResearchFunding VALUES (4003,'Cancer Immunotherapy Trial','Cancer Research UK','2023-03-01','2026-02-28',1500000.00,'GBP','DrEveBrown','DrFrankYellow','Oncology','CIT2023','CRUK-11223','Pending','Annual','2023-12-31','2024-12-31',0.00,1500000.00,'Clinical trial setup','Awaiting approval','2023-03-01');

-- Clinical device failure log
CREATE TABLE ClinicalDeviceFailureLog
(
    FailureID                INTEGER,
    DeviceID                 INTEGER,
    FailureDate              DATE,
    FailureType              TEXT,
    Description              TEXT,
    DowntimeHours            REAL,
    RepairedBy               TEXT,
    RepairCostUSD            REAL,
    PartReplaced             TEXT,
    SerialNumber             TEXT,
    Manufacturer             TEXT,
    WarrantyStatus           TEXT,
    Resolution               TEXT,
    FollowUpRequired         TEXT,
    FollowUpDate             DATE,
    ImpactedPatients         INTEGER,
    SeverityLevel            TEXT,
    RootCauseAnalysis       TEXT,
    PreventiveAction         TEXT,
    LoggedBy                 TEXT,
    LogTimestamp            DATE
);

INSERT INTO ClinicalDeviceFailureLog VALUES (6001,101,'2023-04-20','PowerFailure','Battery died unexpectedly',4.5,'TechMike',500.00,'BatteryPack','SN12345','MedTech','InWarranty','Replaced battery','No','2023-04-25',2,'Medium','Battery ageing','Schedule quarterly checks','EngineerA','2023-04-20');
INSERT INTO ClinicalDeviceFailureLog VALUES (6002,102,'2023-05-10','SoftwareCrash','System reboot loop',2.0,'TechSara',300.00,'SoftwarePatch','SN54321','HealthCorp','OutOfWarranty','Installed patch','Yes','2023-05-15',0,'Low','Corrupt update','Implement version control','EngineerB','2023-05-10');
INSERT INTO ClinicalDeviceFailureLog VALUES (6003,103,'2023-06-05','MechanicalWear','Valve leakage',6.0,'TechJohn',750.00,'ValveAssembly','SN98765','BioMed','InWarranty','Replaced valve','Yes','2023-06-12',5,'High','Wear and tear','Introduce preventive maintenance schedule','EngineerC','2023-06-05');

-- Pharmacy cold chain temperature monitoring
CREATE TABLE PharmacyColdChainMonitor
(
    MonitorID                INTEGER,
    DeviceSerial             TEXT,
    Location                 TEXT,
    StartDate                DATE,
    EndDate                  DATE,
    TemperatureMin           REAL,
    TemperatureMax           REAL,
    AvgTemperature           REAL,
    TempDeviationCount       INTEGER,
    AlarmTriggered           TEXT,
    MaintenanceDate          DATE,
    CalibrationDate          DATE,
    BatteryStatus            TEXT,
    FirmwareVersion          TEXT,
    OperatorID               INTEGER,
    Notes                    TEXT,
    DataExported             TEXT,
    ExportDate               DATE,
    ComplianceStatus         TEXT,
    AuditID                  INTEGER
);

INSERT INTO PharmacyColdChainMonitor VALUES (7001,'CS001','ColdRoomA','2023-01-01','2023-06-30',2.0,8.5,5.3,3,'Yes','2023-05-01','2023-04-01','Good','v1.2',101,'Routine check','Yes','2023-06-01','Compliant',1501);
INSERT INTO PharmacyColdChainMonitor VALUES (7002,'CS002','ColdRoomB','2023-02-15','2023-07-15',1.5,9.0,5.5,5,'No','2023-06-10','2023-05-15','Fair','v1.3',102,'Minor deviation','No','2023-07-01','Compliant',1502);
INSERT INTO PharmacyColdChainMonitor VALUES (7003,'CS003','TransitTruck1','2023-03-10','2023-08-10',2.2,8.2,5.1,2,'Yes','2023-07-20','2023-07-01','Good','v1.1',103,'Temperature spike during transit','Yes','2023-08-01','NonCompliant',1503);

-- Imaging device catalog for hospital assets
CREATE TABLE ImagingDeviceCatalog
(
    DeviceID                 INTEGER,
    DeviceName               TEXT,
    Modality                 TEXT,
    Manufacturer             TEXT,
    ModelNumber              TEXT,
    YearOfManufacture       INTEGER,
    SoftwareVersion          TEXT,
    FieldStrength            TEXT,
    DetectorType             TEXT,
    SliceThicknessMM         REAL,
    MaxResolution            TEXT,
    PowerSupply              TEXT,
    WarrantyEndDate          DATE,
    ServiceContractID        INTEGER,
    InstallationDate         DATE,
    LastServiceDate          DATE,
    Status                   TEXT,
    Location                 TEXT,
    AssignedRadiologistID    INTEGER,
    Comments                 TEXT
);

INSERT INTO ImagingDeviceCatalog VALUES (8001,'MRI_A1','MRI','Siemens','MAGNETOM Skyra',2018,'v5.0','3T','HeadCoil',1.0,'2048x2048','220V', '2024-12-31',3001,'2019-03-15','2023-03-10','Active','RadiologyDept','501','No issues');
INSERT INTO ImagingDeviceCatalog VALUES (8002,'CT_B2','CT','GE','Revolution CT',2020,'v3.2','64-slice','Standard',0.5,'1024x1024','220V','2025-06-30',3002,'2020-07-01','2023-07-05','Active','ImagingWing','502','Replaced detector in 2023');
INSERT INTO ImagingDeviceCatalog VALUES (8003,'XRay_C3','XRay','Philips','Diagnost 89',2016,'v2.5','N/A','FlatPanel',0.0,'2048x2048','220V','2023-11-30',3003,'2017-01-10','2022-12-20','Retired','EmergencyDept','503','Decommissioned');

-- Patient wearable device metrics
CREATE TABLE PatientWearableMetrics
(
    WearableID               INTEGER,
    PatientID                INTEGER,
    DeviceModel              TEXT,
    DeploymentDate           DATE,
    DataSyncDate             DATE,
    StepsCount               INTEGER,
    AvgHeartRate             REAL,
    SleepHours               REAL,
    RestingHR                REAL,
    ActiveMinutes            INTEGER,
    CaloriesBurned           REAL,
    SkinTempC                REAL,
    BloodOxygenPct           REAL,
    ECGReadings              TEXT,
    ActivityLevel            TEXT,
    BatteryLevelPct          INTEGER,
    FirmwareVersion          TEXT,
    DataQualityScore         INTEGER,
    AlertsGenerated          INTEGER,
    RecordedBy               TEXT
);

INSERT INTO PatientWearableMetrics VALUES (9001,201,'FitTrackPro','2023-01-15','2023-06-30',15000,72.5,7.2,65,180,850.0,36.5,98,'Normal','Moderate',85,'v2.1',90,2,'NurseA');
INSERT INTO PatientWearableMetrics VALUES (9002,202,'HealthBandX','2023-02-10','2023-06-28',12000,68.0,6.5,62,150,700.0,36.2,97,'Normal','Low',92,'v1.9',88,0,'NurseB');
INSERT INTO PatientWearableMetrics VALUES (9003,203,'WellnessWatch','2023-03-05','2023-06-29',18000,80.0,8.0,70,210,950.0,36.8,99,'Elevated','High',78,'v2.0',85,5,'NurseC');