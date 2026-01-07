-- Pharmacogenomics profile linking patient genetic variants to medication response
CREATE TABLE PharmacogenomicsProfile (
    ProfileID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    Gene TEXT,
    Variant TEXT,
    AlleleFrequency REAL,
    ClinicalSignificance TEXT,
    TestDate DATE,
    LabID TEXT,
    Interpretation TEXT,
    Recommendation TEXT,
    Prescriber TEXT,
    DosageAdjustment TEXT,
    RiskScore REAL,
    Source TEXT,
    Category TEXT,
    Ethnicity TEXT,
    SampleType TEXT,
    Platform TEXT,
    QCFlag TEXT,
    ReportingLab TEXT,
    Notes TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO PharmacogenomicsProfile (ProfileID,PatientID,Gene,Variant,AlleleFrequency,ClinicalSignificance,TestDate,LabID,Interpretation,Recommendation,Prescriber,DosageAdjustment,RiskScore,Source,Category,Ethnicity,SampleType,Platform,QCFlag,ReportingLab,Notes) VALUES
(1,101,'CYP2C19','*2',0.15,'ReducedFunction','2023-01-15','LAB01','Patient likely poor metabolizer','Consider alternative drug','DrSmith','Reduce dose 50%','0.8','ClinicA','Pharmacogenomics','Asian','Blood','Illumina','Pass','LabCentral','Initial report');

INSERT INTO PharmacogenomicsProfile (ProfileID,PatientID,Gene,Variant,AlleleFrequency,ClinicalSignificance,TestDate,LabID,Interpretation,Recommendation,Prescriber,DosageAdjustment,RiskScore,Source,Category,Ethnicity,SampleType,Platform,QCFlag,ReportingLab,Notes) VALUES
(2,102,'VKORC1','-1639G>A',0.35,'Increased sensitivity','2023-02-20','LAB02','High warfarin sensitivity','Lower starting dose','DrLee','Start 2mg','0.6','ClinicB','Pharmacogenomics','Caucasian','Saliva','ThermoFisher','Pass','LabNorth','Follow up in 2 weeks');

INSERT INTO PharmacogenomicsProfile (ProfileID,PatientID,Gene,Variant,AlleleFrequency,ClinicalSignificance,TestDate,LabID,Interpretation,Recommendation,Prescriber,DosageAdjustment,RiskScore,Source,Category,Ethnicity,SampleType,Platform,QCFlag,ReportingLab,Notes) VALUES
(3,103,'SLCO1B1','*5',0.12,'Statin transport reduction','2023-03-05','LAB03','Increased risk of myopathy','Use lower dose statin','DrPatel','Reduce dose 25%','0.7','ClinicC','Pharmacogenomics','African','Blood','Roche','Pass','LabEast','Patient advised');

-- Sleep study results capturing polysomnography metrics
CREATE TABLE SleepStudy (
    StudyID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    StudyDate DATE,
    TotalSleepTime REAL,
    SleepEfficiency REAL,
    REMDuration REAL,
    N1Duration REAL,
    N2Duration REAL,
    N3Duration REAL,
    ArousalIndex REAL,
    ApneaIndex REAL,
    HypopneaIndex REAL,
    OxygenDesaturationIndex REAL,
    SnoreIndex REAL,
    Position TEXT,
    Technician TEXT,
    DeviceModel TEXT,
    CalibrationDate DATE,
    ReportText TEXT,
    FollowUpDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO SleepStudy (StudyID,PatientID,StudyDate,TotalSleepTime,SleepEfficiency,REMDuration,N1Duration,N2Duration,N3Duration,ArousalIndex,ApneaIndex,HypopneaIndex,OxygenDesaturationIndex,SnoreIndex,Position,Technician,DeviceModel,CalibrationDate,ReportText,FollowUpDate) VALUES
(1001,101,'2023-04-10',6.5,85.0,1.2,0.3,2.5,2.5,12.0,5.0,10.0,8.0,150,'Supine','TechA','PolysmithX','2023-03-01','Mild obstructive sleep apnea','2023-05-01');

INSERT INTO SleepStudy (StudyID,PatientID,StudyDate,TotalSleepTime,SleepEfficiency,REMDuration,N1Duration,N2Duration,N3Duration,ArousalIndex,ApneaIndex,HypopneaIndex,OxygenDesaturationIndex,SnoreIndex,Position,Technician,DeviceModel,CalibrationDate,ReportText,FollowUpDate) VALUES
(1002,102,'2023-04-12',7.0,90.0,1.5,0.2,3.0,2.3,8.0,2.0,4.0,2.5,80,'Lateral','TechB','SomnoPlus','2023-03-15','Normal study','2023-06-01');

INSERT INTO SleepStudy (StudyID,PatientID,StudyDate,TotalSleepTime,SleepEfficiency,REMDuration,N1Duration,N2Duration,N3Duration,ArousalIndex,ApneaIndex,HypopneaIndex,OxygenDesaturationIndex,SnoreIndex,Position,Technician,DeviceModel,CalibrationDate,ReportText,FollowUpDate) VALUES
(1003,103,'2023-04-15',5.8,78.0,0.9,0.4,2.0,2.5,20.0,12.0,15.0,18.0,200,'Supine','TechC','SleepTrack2000','2023-03-20','Severe apnea, CPAP recommended','2023-04-30');

-- Daily physical activity logged from wearable devices
CREATE TABLE PhysicalActivityLog (
    LogID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    LogDate DATE,
    Steps INTEGER,
    DistanceKM REAL,
    ActiveMinutes INTEGER,
    SedentaryMinutes INTEGER,
    LightActivityMinutes INTEGER,
    ModerateActivityMinutes INTEGER,
    VigorousActivityMinutes INTEGER,
    CaloriesBurned REAL,
    HeartRateAvg REAL,
    HeartRateMax REAL,
    VO2max REAL,
    ActivityType TEXT,
    DeviceID TEXT,
    GPSStartLat REAL,
    GPSStartLong REAL,
    GPSStopLat REAL,
    GPSStopLong REAL,
    Comments TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO PhysicalActivityLog (LogID,PatientID,LogDate,Steps,DistanceKM,ActiveMinutes,SedentaryMinutes,LightActivityMinutes,ModerateActivityMinutes,VigorousActivityMinutes,CaloriesBurned,HeartRateAvg,HeartRateMax,VO2max,ActivityType,DeviceID,GPSStartLat,GPSStartLong,GPSStopLat,GPSStopLong,Comments) VALUES
(5001,101,'2023-04-20',8500,6.4,80,600,30,45,5,350.5,78.2,120,38.5,'Walking','WATCH001',40.7128,-74.0060,40.7130,-74.0055,'Felt good');

INSERT INTO PhysicalActivityLog (LogID,PatientID,LogDate,Steps,DistanceKM,ActiveMinutes,SedentaryMinutes,LightActivityMinutes,ModerateActivityMinutes,VigorousActivityMinutes,CaloriesBurned,HeartRateAvg,HeartRateMax,VO2max,ActivityType,DeviceID,GPSStartLat,GPSStartLong,GPSStopLat,GPSStopLong,Comments) VALUES
(5002,102,'2023-04-20',3000,2.1,30,900,20,10,0,150.0,65.0,95,30.2,'Office','WATCH002',34.0522,-118.2437,34.0525,-118.2435,'Mostly sitting');

INSERT INTO PhysicalActivityLog (LogID,PatientID,LogDate,Steps,DistanceKM,ActiveMinutes,SedentaryMinutes,LightActivityMinutes,ModerateActivityMinutes,VigorousActivityMinutes,CaloriesBurned,HeartRateAvg,HeartRateMax,VO2max,ActivityType,DeviceID,GPSStartLat,GPSStartLong,GPSStopLat,GPSStopLong,Comments) VALUES
(5003,103,'2023-04-20',12000,9.8,120,480,40,60,20,600.0,85.5,130,42.0,'Running','WATCH003',51.5074,-0.1278,51.5080,-0.1280,'Morning run');

-- Records of environmental pollutant exposure for patients
CREATE TABLE EnvironmentalExposureRecord (
    RecordID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    ExposureDate DATE,
    PollutantPM25 REAL,
    PollutantPM10 REAL,
    NO2 REAL,
    SO2 REAL,
    CO REAL,
    Ozone REAL,
    NoiseLevel REAL,
    TemperatureC REAL,
    Humidity REAL,
    ProximityIndustry TEXT,
    IndoorAirQualityScore REAL,
    VentilationRate REAL,
    ResidenceType TEXT,
    DurationHours REAL,
    ProtectiveEquipmentUsed TEXT,
    SymptomOnset TEXT,
    AssessmentScore REAL,
    FollowUpAction TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO EnvironmentalExposureRecord (RecordID,PatientID,ExposureDate,PollutantPM25,PollutantPM10,NO2,SO2,CO,Ozone,NoiseLevel,TemperatureC,Humidity,ProximityIndustry,IndoorAirQualityScore,VentilationRate,ResidenceType,DurationHours,ProtectiveEquipmentUsed,SymptomOnset,AssessmentScore,FollowUpAction) VALUES
(9001,101,'2023-04-18',35.2,58.1,24.5,12.0,0.8,45.3,65.0,22.5,55,'None',78.5,0.5,'Apartment',8,'Mask','None',2.0,'No action');

INSERT INTO EnvironmentalExposureRecord (RecordID,PatientID,ExposureDate,PollutantPM25,PollutantPM10,NO2,SO2,CO,Ozone,NoiseLevel,TemperatureC,Humidity,ProximityIndustry,IndoorAirQualityScore,VentilationRate,ResidenceType,DurationHours,ProtectiveEquipmentUsed,SymptomOnset,AssessmentScore,FollowUpAction) VALUES
(9002,102,'2023-04-19',80.0,120.0,60.0,30.0,1.5,70.0,80.0,28.0,40,'Factory',45.0,0.2,'House',12,'Respirator','Cough',7.5,'Refer to pulmonology');

INSERT INTO EnvironmentalExposureRecord (RecordID,PatientID,ExposureDate,PollutantPM25,PollutantPM10,NO2,SO2,CO,Ozone,NoiseLevel,TemperatureC,Humidity,ProximityIndustry,IndoorAirQualityScore,VentilationRate,ResidenceType,DurationHours,ProtectiveEquipmentUsed,SymptomOnset,AssessmentScore,FollowUpAction) VALUES
(9003,103,'2023-04-20',12.5,20.0,15.0,5.0,0.5,30.0,55.0,19.0,60,'None',85.0,0.8,'Condo',6,'None','Headache',1.5,'Monitor');

-- Family medical history capturing hereditary conditions
CREATE TABLE FamilyHistory (
    FH_ID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    Relation TEXT,
    Condition TEXT,
    AgeAtDiagnosis INTEGER,
    Outcome TEXT,
    GeneticTestDone TEXT,
    TestResult TEXT,
    Notes TEXT,
    RecordedDate DATE,
    UpdatedDate DATE,
    Source TEXT,
    ConfirmationStatus TEXT,
    CounselingProvided TEXT,
    RiskLevel TEXT,
    PreventiveMeasure TEXT,
    LifestyleFactor TEXT,
    MedHistory TEXT,
    FamilyID INTEGER,
    ConsanguinityFlag INTEGER,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO FamilyHistory (FH_ID,PatientID,Relation,Condition,AgeAtDiagnosis,Outcome,GeneticTestDone,TestResult,Notes,RecordedDate,UpdatedDate,Source,ConfirmationStatus,CounselingProvided,RiskLevel,PreventiveMeasure,LifestyleFactor,MedHistory,FamilyID,ConsanguinityFlag) VALUES
(2001,101,'Mother','BreastCancer',52,'Remission','Yes','BRCA1Positive','Annual MRI','2023-01-10','2023-02-01','EMR','Confirmed','Yes','High','Enhanced screening','Smoking','None',1,0);

INSERT INTO FamilyHistory (FH_ID,PatientID,Relation,Condition,AgeAtDiagnosis,Outcome,GeneticTestDone,TestResult,Notes,RecordedDate,UpdatedDate,Source,ConfirmationStatus,CounselingProvided,RiskLevel,PreventiveMeasure,LifestyleFactor,MedHistory,FamilyID,ConsanguinityFlag) VALUES
(2002,102,'Father','Hypertension',60,'Managed','No','N/A','Lives active lifestyle','2023-03-15','2023-03-20','Paper','Unconfirmed','No','Medium','Low-salt diet','Exercise','None',2,0);

INSERT INTO FamilyHistory (FH_ID,PatientID,Relation,Condition,AgeAtDiagnosis,Outcome,GeneticTestDone,TestResult,Notes,RecordedDate,UpdatedDate,Source,ConfirmationStatus,CounselingProvided,RiskLevel,PreventiveMeasure,LifestyleFactor,MedHistory,FamilyID,ConsanguinityFlag) VALUES
(2003,103,'Sibling','Type2Diabetes',45,'Controlled','Yes','Positive','Dietary counseling','2023-02-05','2023-02-10','EMR','Confirmed','Yes','High','Glucose monitoring','Sedentary','Metformin',3,0);

-- Vaccination schedule and administration details
CREATE TABLE VaccinationSchedule (
    ScheduleID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    VaccineName TEXT,
    DoseNumber INTEGER,
    ScheduledDate DATE,
    AdministeredDate DATE,
    Administrator TEXT,
    LotNumber TEXT,
    Site TEXT,
    Route TEXT,
    Reaction TEXT,
    Severity TEXT,
    TreatmentGiven TEXT,
    FollowUpNeeded TEXT,
    FollowUpDate DATE,
    Notes TEXT,
    ProviderID INTEGER,
    ClinicCode TEXT,
    WarrantyPeriod TEXT,
    RecordStatus TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO VaccinationSchedule (ScheduleID,PatientID,VaccineName,DoseNumber,ScheduledDate,AdministeredDate,Administrator,LotNumber,Site,Route,Reaction,Severity,TreatmentGiven,FollowUpNeeded,FollowUpDate,Notes,ProviderID,ClinicCode,WarrantyPeriod,RecordStatus) VALUES
(3001,101,'Influenza',1,'2023-10-01','2023-10-02','NurseAmy','LF12345','LeftArm','IM','None','None','None','No','NULL','Seasonal flu shot',12,'CL001','2years','Completed');

INSERT INTO VaccinationSchedule (ScheduleID,PatientID,VaccineName,DoseNumber,ScheduledDate,AdministeredDate,Administrator,LotNumber,Site,Route,Reaction,Severity,TreatmentGiven,FollowUpNeeded,FollowUpDate,Notes,ProviderID,ClinicCode,WarrantyPeriod,RecordStatus) VALUES
(3002,102,'COVID19',2,'2023-05-15','2023-05-15','NurseBob','CB67890','RightArm','IM','Fever','Mild','Acetaminophen','Yes','2023-05-22','Second dose',13,'CL002','1year','Completed');

INSERT INTO VaccinationSchedule (ScheduleID,PatientID,VaccineName,DoseNumber,ScheduledDate,AdministeredDate,Administrator,LotNumber,Site,Route,Reaction,Severity,TreatmentGiven,FollowUpNeeded,FollowUpDate,Notes,ProviderID,ClinicCode,WarrantyPeriod,RecordStatus) VALUES
(3003,103,'HepB',3,'2023-08-10','2023-08-10','NurseCara','HB11223','LeftArm','IM','Redness','Mild','None','No','NULL','Booster',14,'CL003','5years','Completed');

-- Features and facilities of hospital rooms
CREATE TABLE HospitalRoomFeature (
    RoomFeatureID INTEGER PRIMARY KEY,
    RoomNumber TEXT,
    Wing TEXT,
    Floor INTEGER,
    BedCount INTEGER,
    IsolationType TEXT,
    NegativePressureFlag INTEGER,
    HEPAFilterFlag INTEGER,
    SmartBedEnabled INTEGER,
    VideoMonitoring INTEGER,
    TemperatureControl TEXT,
    LightingControl TEXT,
    NoiseReduction TEXT,
    PowerBackup INTEGER,
    WiFiAvailable INTEGER,
    CallButtonType TEXT,
    CoffeeMakerFlag INTEGER,
    TVModel TEXT,
    Notes TEXT,
    LastInspectionDate DATE
);

INSERT INTO HospitalRoomFeature (RoomFeatureID,RoomNumber,Wing,Floor,BedCount,IsolationType,NegativePressureFlag,HEPAFilterFlag,SmartBedEnabled,VideoMonitoring,TemperatureControl,LightingControl,NoiseReduction,PowerBackup,WiFiAvailable,CallButtonType,CoffeeMakerFlag,TVModel,Notes,LastInspectionDate) VALUES
(4001,'101A','North','1',2,'None',0,1,1,0,'Auto','Circadian','Standard',1,1,'Standard',0,'Samsung','Newly renovated',2023-03-01);

INSERT INTO HospitalRoomFeature (RoomFeatureID,RoomNumber,Wing,Floor,BedCount,IsolationType,NegativePressureFlag,HEPAFilterFlag,SmartBedEnabled,VideoMonitoring,TemperatureControl,LightingControl,NoiseReduction,PowerBackup,WiFiAvailable,CallButtonType,CoffeeMakerFlag,TVModel,Notes,LastInspectionDate) VALUES
(4002,'202B','South','2',1,'Contact',1,1,0,1,'Manual','Adjustable','Acoustic',1,1,'Advanced',1,'LG','Isolation room with negative pressure',2023-02-15);

INSERT INTO HospitalRoomFeature (RoomFeatureID,RoomNumber,Wing,Floor,BedCount,IsolationType,NegativePressureFlag,HEPAFilterFlag,SmartBedEnabled,VideoMonitoring,TemperatureControl,LightingControl,NoiseReduction,PowerBackup,WiFiAvailable,CallButtonType,CoffeeMakerFlag,TVModel,Notes,LastInspectionDate) VALUES
(4003,'303C','East','3',3,'None',0,0,1,0,'Auto','Smart','Standard',0,1,'Standard',0,'Panasonic','Standard ward',2023-04-10);

-- Maintenance logs for medical devices
CREATE TABLE MedicalDeviceMaintenanceLog (
    MaintenanceID INTEGER PRIMARY KEY,
    DeviceID TEXT,
    DeviceType TEXT,
    SerialNumber TEXT,
    MaintenanceDate DATE,
    Technician TEXT,
    MaintenanceType TEXT,
    PartsReplaced TEXT,
    DowntimeHours REAL,
    CalibrationPerformed INTEGER,
    SoftwareVersion TEXT,
    FirmwareVersion TEXT,
    SafetyCheckPassed INTEGER,
    Comments TEXT,
    NextDueDate DATE,
    Cost REAL,
    Vendor TEXT,
    WarrantyRemainingMonths INTEGER,
    Location TEXT,
    Status TEXT
);

INSERT INTO MedicalDeviceMaintenanceLog (MaintenanceID,DeviceID,DeviceType,SerialNumber,MaintenanceDate,Technician,MaintenanceType,PartsReplaced,DowntimeHours,CalibrationPerformed,SoftwareVersion,FirmwareVersion,SafetyCheckPassed,Comments,NextDueDate,Cost,Vendor,WarrantyRemainingMonths,Location,Status) VALUES
(6001,'DEV1001','EKG','SN12345','2023-03-20','TechMike','Preventive','ElectrodeCable',2.5,1,'v2.1','fw3.0',1,'All good','2024-03-20',150.00,'MediTech',12,'Cardiology','Completed');

INSERT INTO MedicalDeviceMaintenanceLog (MaintenanceID,DeviceID,DeviceType,SerialNumber,MaintenanceDate,Technician,MaintenanceType,PartsReplaced,DowntimeHours,CalibrationPerformed,SoftwareVersion,FirmwareVersion,SafetyCheckPassed,Comments,NextDueDate,Cost,Vendor,WarrantyRemainingMonths,Location,Status) VALUES
(6002,'DEV2002','Ventilator','SN67890','2023-04-05','TechSara','Repair','FilterModule',4.0,0,'v5.0','fw1.2',0,'Filter failure','2024-04-05',500.00,'HealthEquip',6,'ICU','Pending');

INSERT INTO MedicalDeviceMaintenanceLog (MaintenanceID,DeviceID,DeviceType,SerialNumber,MaintenanceDate,Technician,MaintenanceType,PartsReplaced,DowntimeHours,CalibrationPerformed,SoftwareVersion,FirmwareVersion,SafetyCheckPassed,Comments,NextDueDate,Cost,Vendor,WarrantyRemainingMonths,Location,Status) VALUES
(6003,'DEV3003','InfusionPump','SN54321','2023-02-28','TechLee','Upgrade','BatteryPack',1.0,1,'v3.3','fw2.5',1,'Software upgrade','2024-02-28',250.00,'Infusa',18,'Oncology','Completed');

-- Audits of adherence to clinical guidelines
CREATE TABLE ClinicalGuidelineAdherenceAudit (
    AuditID INTEGER PRIMARY KEY,
    GuidelineID TEXT,
    Department TEXT,
    Auditor TEXT,
    AuditDate DATE,
    PatientSampleSize INTEGER,
    AdherenceRate REAL,
    NonAdherenceCount INTEGER,
    CommonDeviation TEXT,
    ActionPlan TEXT,
    FollowUpDate DATE,
    CompletedFlag INTEGER,
    Comments TEXT,
    GuidelineVersion TEXT,
    Scope TEXT,
    RiskLevel TEXT,
    Score REAL,
    Recommendations TEXT,
    DocumentationLink TEXT,
    Status TEXT
);

INSERT INTO ClinicalGuidelineAdherenceAudit (AuditID,GuidelineID,Department,Auditor,AuditDate,PatientSampleSize,AdherenceRate,NonAdherenceCount,CommonDeviation,ActionPlan,FollowUpDate,CompletedFlag,Comments,GuidelineVersion,Scope,RiskLevel,Score,Recommendations,DocumentationLink,Status) VALUES
(8001,'CG001','Cardiology','AuditorJ','2023-03-15',120,0.92,10,'Late anticoagulation','Staff re‑education','2023-04-15',1,'Improvement noted','v1.2','Hospital','Medium',85.0,'Update protocol','doclink1','Closed');

INSERT INTO ClinicalGuidelineAdherenceAudit (AuditID,GuidelineID,Department,Auditor,AuditDate,PatientSampleSize,AdherenceRate,NonAdherenceCount,CommonDeviation,ActionPlan,FollowUpDate,CompletedFlag,Comments,GuidelineVersion,Scope,RiskLevel,Score,Recommendations,DocumentationLink,Status) VALUES
(8002,'CG002','Oncology','AuditorK','2023-04-10',80,0.78,18,'Missing genetic testing','Implement order set','2023-05-10',0,'Pending','v2.0','Unit','High',70.0,'Add reflex testing','doclink2','Open');

INSERT INTO ClinicalGuidelineAdherenceAudit (AuditID,GuidelineID,Department,Auditor,AuditDate,PatientSampleSize,AdherenceRate,NonAdherenceCount,CommonDeviation,ActionPlan,FollowUpDate,CompletedFlag,Comments,GuidelineVersion,Scope,RiskLevel,Score,Recommendations,DocumentationLink,Status) VALUES
(8003,'CG003','Emergency','AuditorL','2023-02-20',150,0.95,7,'Delay in sepsis bundle','Process mapping','2023-03-20',1,'Good compliance','v1.0','Hospital','Low',90.0,'Maintain current practice','doclink3','Closed');

-- Biobank sample tracking for research specimens
CREATE TABLE BiobankSampleTracking (
    SampleID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    SampleType TEXT,
    CollectionDate DATE,
    ProcessingDate DATE,
    StorageLocation TEXT,
    FreezerID TEXT,
    ShelfNumber INTEGER,
    BoxNumber INTEGER,
    Position TEXT,
    VolumeML REAL,
    Concentration REAL,
    ViabilityPercent REAL,
    AliquotCount INTEGER,
    Cryoprotectant TEXT,
    FreezeThawCycles INTEGER,
    ConsentID INTEGER,
    QualityScore REAL,
    LastAccessed DATE,
    Notes TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO BiobankSampleTracking (SampleID,PatientID,SampleType,CollectionDate,ProcessingDate,StorageLocation,FreezerID,ShelfNumber,BoxNumber,Position,VolumeML,Concentration,ViabilityPercent,AliquotCount,Cryoprotectant,FreezeThawCycles,ConsentID,QualityScore,LastAccessed,Notes) VALUES
(7001,101,'Blood','2023-01-12','2023-01-13','RoomA','FZ01',2,15,'A3',5.0,1.2,95.0,10,'DMSO',0,301,9.5,'2023-04-01','First aliquot');

INSERT INTO BiobankSampleTracking (SampleID,PatientID,SampleType,CollectionDate,ProcessingDate,StorageLocation,FreezerID,ShelfNumber,BoxNumber,Position,VolumeML,Concentration,ViabilityPercent,AliquotCount,Cryoprotectant,FreezeThawCycles,ConsentID,QualityScore,LastAccessed,Notes) VALUES
(7002,102,'Tissue','2023-02-05','2023-02-06','RoomB','FZ02',1,8,'B7',2.0,0.8,90.0,5,'Glycerol',1,302,8.0,'2023-03-20','Frozen biopsy');

INSERT INTO BiobankSampleTracking (SampleID,PatientID,SampleType,CollectionDate,ProcessingDate,StorageLocation,FreezerID,ShelfNumber,BoxNumber,Position,VolumeML,Concentration,ViabilityPercent,AliquotCount,Cryoprotectant,FreezeThawCycles,ConsentID,QualityScore,LastAccessed,Notes) VALUES
(7003,103,'Plasma','2023-03-10','2023-03-11','RoomC','FZ03',3,22,'C12',3.5,1.0,92.0,8,'DMSO',0,303,9.0,'2023-04-10','Stored for proteomics');