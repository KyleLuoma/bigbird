-- Patient lifestyle and habits
CREATE TABLE PatientLifestyle
(
    ID                     INTEGER NOT NULL,
    SmokingStatus          TEXT,
    AlcoholFrequency       TEXT,
    ExerciseHoursPerWeek   REAL,
    DietType               TEXT,
    SleepHours             REAL,
    StressLevel            TEXT,
    Occupation             TEXT,
    MaritalStatus          TEXT,
    ChildrenCount          INTEGER,
    EducationLevel         TEXT,
    ResidenceType          TEXT,
    TransportationMode     TEXT,
    IncomeBracket          TEXT,
    HouseholdSize          INTEGER,
    PrimaryLanguage        TEXT,
    Religion               TEXT,
    TravelFrequency        TEXT,
    PetOwnership           TEXT,
    Hobbies                TEXT,
    PRIMARY KEY (ID),
    FOREIGN KEY (ID) REFERENCES Patient(ID)
        ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO PatientLifestyle VALUES (1,'Never','Social','5.0','Mediterranean','7.5','Low','Engineer','Married',2,'Bachelor','Urban','Car','30k-50k',3,'English','None','Monthly','Dog','Reading');
INSERT INTO PatientLifestyle VALUES (2,'Former','Weekly','2.0','Standard','6.5','Medium','Teacher','Single',0,'Master','Suburban','Bike','20k-30k',4,'Spanish','Catholic','Rarely','None','Hiking');
INSERT INTO PatientLifestyle VALUES (3,'Current','Daily','0.5','Vegan','8.0','High','Artist','Divorced',1,'HighSchool','Rural','PublicTransit','<20k',5,'French','None','Never','Cat','Painting');

-- Equipment used for examinations
CREATE TABLE ExaminationEquipment
(
    ExamID                INTEGER,
    DeviceID              INTEGER,
    DeviceName            TEXT,
    Manufacturer          TEXT,
    ModelNumber           TEXT,
    CalibrationDate       DATE,
    MaintenanceDueDate    DATE,
    OperatorID            INTEGER,
    SoftwareVersion       TEXT,
    FirmwareVersion       TEXT,
    DeviceLocation        TEXT,
    InspectionStatus      TEXT,
    WarrantyExpiration    DATE,
    UsageCount            INTEGER,
    LastServiceDate       DATE,
    DiagnosticMode        TEXT,
    PowerSupplyType       TEXT,
    ConnectivityType      TEXT,
    SerialNumber          TEXT,
    Notes                 TEXT,
    FOREIGN KEY (ExamID) REFERENCES Examination(ID)
        ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO ExaminationEquipment VALUES (1,101,'AutoAnalyzer','BioTech','AA-200','2023-01-10','2024-01-10',201,'v2.3','f1.0','LabRoom1','Passed','2025-01-01',1500,'2023-12-01','Standard','AC','Ethernet','SN101A','Routine check');
INSERT INTO ExaminationEquipment VALUES (2,102,'CoagulationAnalyser','MedEquip','CA-500','2022-11-05','2023-11-05',202,'v1.8','f2.2','LabRoom2','Passed','2024-11-05',900,'2023-10-15','Extended','Battery','USB','SN102B','Calibration required');
INSERT INTO ExaminationEquipment VALUES (3,103,'Spectrophotometer','LabCorp','SP-300','2023-02-20','2024-02-20',203,'v3.0','f3.5','LabRoom3','Pending','2026-02-20',200,'2023-12-20','HighSensitivity','AC','WiFi','SN103C','New installation');

-- Reference ranges for laboratory tests
CREATE TABLE LaboratoryReferenceRange
(
    LabID               INTEGER,
    TestName            TEXT,
    Sex                 TEXT,
    AgeLower            INTEGER,
    AgeUpper            INTEGER,
    Unit                TEXT,
    LowerLimit          REAL,
    UpperLimit          REAL,
    Method              TEXT,
    ReferenceSource     TEXT,
    DateEffective       DATE,
    DateExpiry          DATE,
    ClinicalInterpretation TEXT,
    FlagLow             TEXT,
    FlagHigh            TEXT,
    SampleType          TEXT,
    SpecimenCondition   TEXT,
    QCStatus            TEXT,
    Analyst             TEXT,
    Remarks             TEXT,
    FOREIGN KEY (LabID) REFERENCES Laboratory(ID)
        ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO LaboratoryReferenceRange VALUES (1,'Hemoglobin','Male',18,65,'g/dL',13.5,17.5,'Cyanmethemoglobin','HospitalLab','2023-01-01','2025-12-31','Normal range for adults','LowHgb','HighHgb','Blood','Fresh','Pass','Alice','');
INSERT INTO LaboratoryReferenceRange VALUES (2,'Hemoglobin','Female',18,65,'g/dL',12.0,15.5,'Cyanmethemoglobin','HospitalLab','2023-01-01','2025-12-31','Normal range for adults','LowHgb','HighHgb','Blood','Fresh','Pass','Bob','');
INSERT INTO LaboratoryReferenceRange VALUES (3,'Creatinine','Any',0,120,'mg/dL',0.6,1.2,'Jaffe','HospitalLab','2023-01-01','2025-12-31','Kidney function indicator','LowCreat','HighCreat','Serum','Fresh','Pass','Carol','');

-- Genetic counseling sessions
CREATE TABLE GeneticCounselingSession
(
    SessionID               INTEGER PRIMARY KEY,
    PatientID               INTEGER,
    CounselorID             INTEGER,
    SessionDate             DATE,
    SessionType             TEXT,
    RiskAssessment          TEXT,
    RecommendedTesting      TEXT,
    FollowUpDate            DATE,
    Notes                   TEXT,
    ConsentGiven            TEXT,
    ReferralSource          TEXT,
    DurationMinutes         INTEGER,
    CommunicationMode       TEXT,
    Location                TEXT,
    ConfidentialityLevel    TEXT,
    IntakeFormVersion       TEXT,
    Outcome                 TEXT,
    FamilyHistoryDiscussed  TEXT,
    LifestyleDiscussed      TEXT,
    PsychologicalSupportProvided TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
        ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO GeneticCounselingSession VALUES (1001,1,5001,'2023-03-15','Pre-test','Low','BRCA1/2','2023-04-01','Patient educated about risks','Yes','Oncologist','60','InPerson','CounselingRoom','High','v1.0','Counseling completed','Yes','Yes','No');
INSERT INTO GeneticCounselingSession VALUES (1002,2,5002,'2023-04-10','Post-test','Medium','None','2023-05-01','Discussed result implications','Yes','PrimaryCare','45','Video','Telehealth','Medium','v1.1','Result reviewed','Yes','No','Yes');
INSERT INTO GeneticCounselingSession VALUES (1003,3,5003,'2023-05-20','Risk assessment','High','PanelXYZ','2023-06-15','High risk, options explained','Yes','Referral','90','InPerson','ClinicRoom2','High','v1.2','Follow‑up planned','No','Yes','Yes');

-- Imaging study protocols
CREATE TABLE ImagingStudyProtocol
(
    ProtocolID                INTEGER PRIMARY KEY,
    ImagingModality           TEXT,
    BodyPart                  TEXT,
    ContrastUsed              TEXT,
    DoseLevel                 REAL,
    AcquisitionTime           REAL,
    ReconstructionAlgorithm   TEXT,
    SliceThickness            REAL,
    PixelSpacing              TEXT,
    Manufacturer              TEXT,
    Model                     TEXT,
    SoftwareVersion           TEXT,
    ProtocolVersion           TEXT,
    RadiologistID             INTEGER,
    ApprovalDate              DATE,
    Status                    TEXT,
    Notes                     TEXT,
    RadiationSafetyCategory   TEXT,
    PatientPosition           TEXT,
    BackupProtocol            TEXT
);

INSERT INTO ImagingStudyProtocol VALUES (2001,'CT','Head','Iodine','5.6','0.5','FilteredBackProjection','1.0','0.5x0.5','Siemens','Somatom','v3.2','v1','3001','2023-01-15','Active','Standard brain protocol','CategoryA','Supine','BackupCTHead');
INSERT INTO ImagingStudyProtocol VALUES (2002,'MRI','Knee','Gadolinium','0.0','2.0','FFT','3.0','0.8x0.8','GE','Signa','v2.9','v2','3002','2023-02-10','Active','High resolution knee','CategoryB','Prone','BackupMRIKnee');
INSERT INTO ImagingStudyProtocol VALUES (2003,'Ultrasound','Abdomen','None','0.0','0.3','None','0.0','0.3x0.3','Philips','EPIQ','v1.5','v1','3003','2023-03-05','Active','Routine abdominal scan','CategoryC','Supine','BackupUSAbdomen');

-- Pharmacy inventory batches
CREATE TABLE PharmacyInventoryBatch
(
    BatchID                INTEGER PRIMARY KEY,
    DrugName               TEXT,
    Strength               TEXT,
    Form                   TEXT,
    Quantity               INTEGER,
    Unit                   TEXT,
    ExpirationDate         DATE,
    ReceivedDate           DATE,
    SupplierID             INTEGER,
    LotNumber              TEXT,
    StorageTemperature     TEXT,
    Location               TEXT,
    NDCCode                TEXT,
    Manufacturer           TEXT,
    BatchStatus            TEXT,
    InspectionDate         DATE,
    InspectorID            INTEGER,
    RecallFlag             TEXT,
    PharmacyID             INTEGER,
    Comments               TEXT
);

INSERT INTO PharmacyInventoryBatch VALUES (3001,'Atorvastatin','20mg','Tablet',500,'Units','2025-12-31','2023-01-20',4001,'LN12345','RoomTemp','PharmacyA','12345-6789','Pfizer','Available','2023-01-22',6001,'No','1','First lot received');
INSERT INTO PharmacyInventoryBatch VALUES (3002,'Lisinopril','10mg','Tablet',300,'Units','2024-06-30','2023-02-15',4002,'LN54321','RoomTemp','PharmacyB','98765-4321','Novartis','Quarantined','2023-02-18',6002,'No','2','Pending QC');
INSERT INTO PharmacyInventoryBatch VALUES (3003,'Metformin','500mg','Tablet',800,'Units','2026-03-15','2023-03-10',4003,'LN67890','RoomTemp','PharmacyC','11223-3344','Merck','Available','2023-03-12',6003,'No','3','Standard batch');

-- Staff training module completions
CREATE TABLE StaffTrainingModuleCompletion
(
    CompletionID            INTEGER PRIMARY KEY,
    StaffID                 INTEGER,
    ModuleID                INTEGER,
    ModuleName              TEXT,
    CompletionDate          DATE,
    Score                   REAL,
    PassFail                TEXT,
    TrainingType            TEXT,
    TrainerID               INTEGER,
    DurationMinutes         INTEGER,
    CertificationID         TEXT,
    RenewalDate             DATE,
    Mode                    TEXT,
    DeviceUsed              TEXT,
    Location                TEXT,
    Notes                   TEXT,
    SupervisorID            INTEGER,
    AccreditationBody       TEXT,
    Version                 TEXT,
    CreditsEarned           REAL,
    Remarks                 TEXT
);

INSERT INTO StaffTrainingModuleCompletion VALUES (4001,7001,101,'HIPAA Compliance','2023-04-01',95.0,'Pass','Online',8001,120,'CERT001','2025-04-01','Web','Home','Completed without issues',9001,'HCFA','v1','3.0','');
INSERT INTO StaffTrainingModuleCompletion VALUES (4002,7002,102,'Fire Safety','2023-05-10',88.5,'Pass','InPerson',8002,90,'CERT002','2026-05-10','Classroom','TrainingRoom1','Good participation',9002,'NFPA','v2','2.0','');
INSERT INTO StaffTrainingModuleCompletion VALUES (4003,7003,103,'Patient Privacy','2023-06-15',92.0,'Pass','Hybrid',8003,105,'CERT003','2025-06-15','Hybrid','ConferenceHall','Excellent quiz score',9003,'ISO','v1','3.0','');

-- Environmental sensor readings
CREATE TABLE EnvironmentalSensorReading
(
    ReadingID              INTEGER PRIMARY KEY,
    SensorID               INTEGER,
    SensorType             TEXT,
    Location               TEXT,
    ReadingValue           REAL,
    Unit                   TEXT,
    Timestamp              DATE,
    CalibrationDate        DATE,
    BatteryLevel           REAL,
    SignalStrength         REAL,
    AlertFlag              TEXT,
    MaintenanceDue         DATE,
    FirmwareVersion        TEXT,
    Manufacturer           TEXT,
    Model                  TEXT,
    DataQuality            TEXT,
    WeatherCondition       TEXT,
    Altitude               REAL,
    Latitude               REAL,
    Longitude              REAL
);

INSERT INTO EnvironmentalSensorReading VALUES (5001,9001,'Temperature','ICU','22.5','C','2023-07-01','2023-01-01',95.0,80.0,'No','2024-01-01','v1.0','SensTech','T100','Good','Clear',10.5,40.7128,-74.0060);
INSERT INTO EnvironmentalSensorReading VALUES (5002,9002,'Humidity','Pharmacy','45.0','%','2023-07-01','2023-02-01',88.0,75.0,'No','2024-02-01','v1.1','AirSense','H200','Good','Dry',5.0,34.0522,-118.2437);
INSERT INTO EnvironmentalSensorReading VALUES (5003,9003,'AirQuality','Lab','12.0','AQI','2023-07-01','2023-03-01',92.0,78.0,'No','2024-03-01','v2.0','CleanAir','AQ300','Excellent','Polluted',15.0,41.8781,-87.6298);

-- Patient social determinants of health
CREATE TABLE PatientSocialDeterminant
(
    RecordID               INTEGER PRIMARY KEY,
    PatientID              INTEGER,
    IncomeLevel            TEXT,
    EmploymentStatus       TEXT,
    HousingStability       TEXT,
    FoodSecurity           TEXT,
    EducationLevel         TEXT,
    TransportationAccess   TEXT,
    SocialSupportScore     INTEGER,
    LanguageBarrier        TEXT,
    InsuranceType          TEXT,
    CommunityResourcesUtilized TEXT,
    RecentMove             TEXT,
    CriminalJusticeInvolvement TEXT,
    DisabilityStatus       TEXT,
    CaregiverPresence      TEXT,
    MentalHealthHistory   TEXT,
    SubstanceUseHistory    TEXT,
    HealthLiteracyScore    INTEGER,
    AssessmentDate         DATE,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
        ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO PatientSocialDeterminant VALUES (6001,1,'30k-50k','Employed','Stable','Secure','Bachelor','Car',8,'No','Private','Yes','No','No','None','Spouse','None','None',7,'2023-07-15');
INSERT INTO PatientSocialDeterminant VALUES (6002,2,'<20k','Unemployed','Unstable','Insecure','HighSchool','PublicTransit',4,'Yes','Medicaid','No','Yes','No','Physical','Child','Depression','Alcohol',5,'2023-08-01');
INSERT INTO PatientSocialDeterminant VALUES (6003,3,'20k-30k','PartTime','Stable','Secure','SomeCollege','Bicycle',6,'No','Medicare','Yes','No','No','Visual','None','Anxiety','None',6,'2023-09-10');

-- Research biobank samples
CREATE TABLE ResearchBiobankSample
(
    SampleID                INTEGER PRIMARY KEY,
    PatientID               INTEGER,
    CollectionDate          DATE,
    SampleType              TEXT,
    VolumeML                REAL,
    StorageTempC            REAL,
    ContainerType           TEXT,
    CryoBoxID               TEXT,
    Location                TEXT,
    ProcessedFlag           TEXT,
    ProcessingDate          DATE,
    AnalystID               INTEGER,
    ConsentID               INTEGER,
    QualityScore            REAL,
    FreezeThawCycles        INTEGER,
    AliquotCount            INTEGER,
    FreezeDate              DATE,
    ThawDate                DATE,
    Notes                   TEXT,
    BiobankID               INTEGER,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
        ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO ResearchBiobankSample VALUES (7001,1,'2023-06-01','Blood','5.0',-80,'Tube','CBX001','FreezerA','Yes','2023-06-02',8001,9001,9.5,0,3,'2023-06-01','2023-06-10','Initial collection',1);
INSERT INTO ResearchBiobankSample VALUES (7002,2,'2023-06-15','Tissue','2.0',-80,'Vial','CBX002','FreezerB','No',NULL,8002,9002,7.0,0,1,'2023-06-15',NULL,'Pending processing',1);
INSERT INTO ResearchBiobankSample VALUES (7003,3,'2023-07-05','Saliva','1.5',-20,'Cup','CBX003','FreezerC','Yes','2023-07-06',8003,9003,8.2,1,2,'2023-07-05','2023-07-12','Aliquoted for DNA extraction',2);