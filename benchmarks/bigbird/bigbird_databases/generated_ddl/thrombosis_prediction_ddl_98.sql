-- Table: ExaminationProcedure
CREATE TABLE ExaminationProcedure (
    ExamID INTEGER,
    ProcedureCode TEXT,
    ProcedureDesc TEXT,
    PerformedBy TEXT,
    StartTime DATE,
    EndTime DATE,
    Location TEXT,
    AnesthesiaType TEXT,
    SurgeonID INTEGER,
    AssistantID INTEGER,
    Notes TEXT,
    Complications TEXT,
    Outcome TEXT,
    FollowUpRequired INTEGER,
    FollowUpDays INTEGER,
    Cost REAL,
    BillingCode TEXT,
    EquipmentUsed TEXT,
    RadiationDose REAL,
    ConsentObtained INTEGER,
    PRIMARY KEY (ExamID, ProcedureCode)
);

INSERT INTO ExaminationProcedure VALUES (1,'PROC001','KidneyBiopsy','DrSmith','2025-03-01','2025-03-01','OR1','General','101','102','No issues','None','Successful',1,30,2500.00,'BILL001','BiopsyNeedle',0.0,1);
INSERT INTO ExaminationProcedure VALUES (2,'PROC002','LiverUltrasound','DrJones','2025-04-10','2025-04-10','Radiology','None','201','202','Patient comfortable','None','Completed',0,0,350.00,'BILL002','UltrasoundProbe',0.0,1);
INSERT INTO ExaminationProcedure VALUES (3,'PROC003','Angiography','DrLee','2025-05-15','2025-05-15','CathLab','Local','301','302','Minor bleeding','Bleeding','Successful',1,14,4800.00,'BILL003','Catheter',5.3,1);

-- Table: PatientFamilyHistory
CREATE TABLE PatientFamilyHistory (
    PatientID INTEGER,
    FH_ID INTEGER,
    Relation TEXT,
    Condition TEXT,
    AgeAtDiagnosis INTEGER,
    LivingStatus TEXT,
    GeneticTestResult TEXT,
    Note TEXT,
    RecordedDate DATE,
    Source TEXT,
    Verified INTEGER,
    ImpactLevel TEXT,
    CounselingProvided INTEGER,
    FollowUpDate DATE,
    FamilyID INTEGER,
    ContactInfo TEXT,
    RiskScore REAL,
    Deceased INTEGER,
    CauseOfDeath TEXT,
    LastUpdate DATE,
    PRIMARY KEY (PatientID, FH_ID)
);

INSERT INTO PatientFamilyHistory VALUES (1,1,'Mother','Hypertension',55,'Alive','Negative','N/A','2025-01-20','PatientReport',1,'Medium',0,'2025-03-01',1001,'5551234',0.3,0,'', '2025-02-01');
INSERT INTO PatientFamilyHistory VALUES (2,1,'Father','Diabetes',60,'Deceased','Positive','N/A','2025-02-10','MedicalRecord',1,'High',1,'2025-04-15',1002,'5555678',0.7,1,'HeartAttack','2025-03-05');
INSERT INTO PatientFamilyHistory VALUES (3,1,'Sibling','Asthma',30,'Alive','Negative','Mild','2025-03-12','PatientInterview',1,'Low',0,'2025-06-01',1003,'5559012',0.2,0,'', '2025-04-10');

-- Table: LaboratoryReagentInventory
CREATE TABLE LaboratoryReagentInventory (
    LabID INTEGER,
    ReagentID INTEGER,
    ReagentName TEXT,
    BatchNumber TEXT,
    ExpirationDate DATE,
    QuantityReal REAL,
    Unit TEXT,
    Supplier TEXT,
    ReceivedDate DATE,
    StorageTemp REAL,
    HazardLevel TEXT,
    MSDSAvailable INTEGER,
    LotNumber TEXT,
    VolumeML REAL,
    Concentration REAL,
    ContainerType TEXT,
    OwnerID INTEGER,
    LastAuditDate DATE,
    Status TEXT,
    Comments TEXT,
    PRIMARY KEY (LabID, ReagentID)
);

INSERT INTO LaboratoryReagentInventory VALUES (1,1,'Glucose','BN001','2026-01-01',500.0,'g','Sigma','2025-01-15',4.0,'Low',1,'LT001',100.0,1.0,'Bottle',101,'2025-12-01','Active','Stored at 4C');
INSERT INTO LaboratoryReagentInventory VALUES (1,2,'Ethanol','BN002','2025-12-31',2000.0,'ml','Fisher','2025-02-01',-20.0,'High',1,'LT002',500.0,95.0,'Canister',102,'2025-11-20','Active','Flammable');
INSERT INTO LaboratoryReagentInventory VALUES (2,1,'NaCl','BN003','2027-06-30',1000.0,'g','Merck','2025-03-10',22.0,'Low',1,'LT003',250.0,0.9,'Bag',201,'2025-10-15','Active',''); 

-- Table: ExaminationImagingCorrelation
CREATE TABLE ExaminationImagingCorrelation (
    ExamID INTEGER,
    ImagingStudyID INTEGER,
    Modality TEXT,
    ImageDate DATE,
    Radiologist TEXT,
    Findings TEXT,
    CorrelationScore REAL,
    DiscrepancyFlag INTEGER,
    Recommendation TEXT,
    FollowUpNeeded INTEGER,
    FollowUpDays INTEGER,
    ImageQuality TEXT,
    ContrastUsed TEXT,
    RadiationDose REAL,
    Protocol TEXT,
    ImageResolution TEXT,
    Notes TEXT,
    ReviewedDate DATE,
    Reviewer TEXT,
    ActionTaken TEXT,
    PRIMARY KEY (ExamID, ImagingStudyID)
);

INSERT INTO ExaminationImagingCorrelation VALUES (1,101,'CT','2025-03-02','DrRadA','No acute findings',0.95,0,'Routine follow-up',0,0,'High','Iodine',5.0,'CTHead','512x512','All clear','2025-03-03','DrRadA','No action');
INSERT INTO ExaminationImagingCorrelation VALUES (2,102,'MRI','2025-04-12','DrRadB','Small lesion noted',0.78,1,'Further imaging',1,30,'Medium','Gadolinium',0.0,'MRIAbdomen','256x256','Need contrast repeat','2025-04-13','DrRadB','Schedule repeat MRI');
INSERT INTO ExaminationImagingCorrelation VALUES (3,103,'XRay','2025-05-16','DrRadC','Fracture line visible',0.88,0,'Cast application',1,14,'Low','None',0.2,'XRayArm','1024x1024','Patient pain noted','2025-05-17','DrRadC','Apply cast');

-- Table: PatientSocialSupport
CREATE TABLE PatientSocialSupport (
    PatientID INTEGER,
    SupportID INTEGER,
    SupportType TEXT,
    ProviderName TEXT,
    ContactNumber TEXT,
    Relationship TEXT,
    Frequency TEXT,
    DurationMonths INTEGER,
    SatisfactionScore REAL,
    AssistanceArea TEXT,
    Active INTEGER,
    StartDate DATE,
    EndDate DATE,
    Notes TEXT,
    ReferralSource TEXT,
    AssessmentDate DATE,
    Assessor TEXT,
    RiskLevel TEXT,
    InterventionPlan TEXT,
    LastUpdate DATE,
    PRIMARY KEY (PatientID, SupportID)
);

INSERT INTO PatientSocialSupport VALUES (1,1,'Family','Alice Smith','5551111','Spouse','Weekly',12,4.5,'Daily living',1,'2024-01-01','','Positive engagement','Self','2025-01-10','NurseA','Low','Maintain current support','2025-02-01');
INSERT INTO PatientSocialSupport VALUES (2,1,'Community','Local Aid','5552222','Volunteer','Biweekly',6,3.8,'Transportation',1,'2024-06-15','','Needs improvement','SocialWorker','2025-02-20','SocialWorkerB','Medium','Add additional services','2025-03-05');
INSERT INTO PatientSocialSupport VALUES (3,1,'Professional','Caregiver Inc','5553333','Paid caregiver','Daily',24,4.2,'Medical assistance',1,'2023-09-01','','Consistent','Physician','2025-03-01','PhysicianC','Low','Continue schedule','2025-03-15');

-- Table: LaboratoryCalibrationLog
CREATE TABLE LaboratoryCalibrationLog (
    LabID INTEGER,
    InstrumentID INTEGER,
    InstrumentName TEXT,
    CalibrationDate DATE,
    CalibratedBy TEXT,
    CalibrationMethod TEXT,
    StandardUsed TEXT,
    ResultPass INTEGER,
    Deviation REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    Notes TEXT,
    NextDueDate DATE,
    CalibrationLab TEXT,
    CertificateID TEXT,
    TechnicianID INTEGER,
    CalibrationType TEXT,
    CalibrationDurationMin INTEGER,
    ValidationResult TEXT,
    Status TEXT,
    PRIMARY KEY (LabID, InstrumentID, CalibrationDate)
);

INSERT INTO LaboratoryCalibrationLog VALUES (1,101,'Spectrophotometer','2025-01-15','TechA','External','NIST','1',0.02,22.5,45.0,'All within spec','2025-07-15','CentralLab','CERT001',501,'Full','60','Pass','Active');
INSERT INTO LaboratoryCalibrationLog VALUES (1,102,'Centrifuge','2025-02-20','TechB','Internal','LabStandard','1',0.00,20.0,40.0,'No issues','2025-08-20','CentralLab','CERT002',502,'Partial','30','Pass','Active');
INSERT INTO LaboratoryCalibrationLog VALUES (2,201,'pH Meter','2025-03-10','TechC','External','ISO','0',0.15,21.0,50.0,'Deviation high','2025-09-10','BranchLab','CERT003',503,'Full','45','Fail','Pending Review');

-- Table: ExaminationFollowupSchedule
CREATE TABLE ExaminationFollowupSchedule (
    ExamID INTEGER,
    FollowupID INTEGER,
    FollowupDate DATE,
    FollowupType TEXT,
    ProviderID INTEGER,
    Location TEXT,
    Purpose TEXT,
    Instructions TEXT,
    ExpectedOutcome TEXT,
    Status TEXT,
    RescheduleFlag INTEGER,
    RescheduleDate DATE,
    ContactMethod TEXT,
    ReminderSent INTEGER,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    FollowupResult TEXT,
    PRIMARY KEY (ExamID, FollowupID)
);

INSERT INTO ExaminationFollowupSchedule VALUES (1,1,'2025-04-01','Lab','301','LabRoom1','Check blood markers','Fast 12h','Assess treatment response','Scheduled',0,NULL,'Phone',1,'','SchedulerA','2025-03-20','SchedulerA','2025-03-20','');
INSERT INTO ExaminationFollowupSchedule VALUES (2,1,'2025-05-10','Imaging','302','Radiology','Repeat imaging','No contrast','Monitor lesion','Scheduled',0,NULL,'Email',1,'','SchedulerB','2025-04-25','SchedulerB','2025-04-25','');
INSERT INTO ExaminationFollowupSchedule VALUES (3,1,'2025-06-15','Consult','303','Clinic','Post-op review','Bring meds','Evaluate healing','Scheduled',0,NULL,'Phone',1,'','SchedulerC','2025-05-30','SchedulerC','2025-05-30','');

-- Table: PatientMedicationAdherence
CREATE TABLE PatientMedicationAdherence (
    PatientID INTEGER,
    MedAdherenceID INTEGER,
    MedicationName TEXT,
    PrescriptionDate DATE,
    Dosage TEXT,
    Frequency TEXT,
    StartDate DATE,
    EndDate DATE,
    AdherenceScore REAL,
    MissedDoses INTEGER,
    ReasonForMissed TEXT,
    SideEffects TEXT,
    CounselingProvided INTEGER,
    FollowUpDate DATE,
    ProviderID INTEGER,
    Notes TEXT,
    RecordedBy TEXT,
    RecordedDate DATE,
    Status TEXT,
    ActionPlan TEXT,
    PRIMARY KEY (PatientID, MedAdherenceID)
);

INSERT INTO PatientMedicationAdherence VALUES (1,1,'Warfarin','2025-01-01','5mg','Daily','2025-01-02','2025-12-31',0.9,2,'Forgot','Bleeding minor',1,'2025-02-15',401,'','NurseA','2025-01-05','Active','Continue monitoring');
INSERT INTO PatientMedicationAdherence VALUES (2,1,'Metformin','2025-02-10','500mg','TwiceDaily','2025-02-11','2025-08-11',0.75,5,'Travel','Nausea',0,'2025-03-01',402,'','PharmacistB','2025-02-12','Active','Review dosing');
INSERT INTO PatientMedicationAdherence VALUES (3,1,'Atorvastatin','2025-03-20','20mg','Daily','2025-03-21','2025-09-21',0.95,1,'Forgot','None',1,'2025-04-10',403,'','NurseC','2025-03-22','Active','Maintain adherence');

-- Table: LaboratorySpecimenProcessing
CREATE TABLE LaboratorySpecimenProcessing (
    LabID INTEGER,
    SpecimenID INTEGER,
    SpecimenType TEXT,
    CollectionDate DATE,
    CollectorID INTEGER,
    TransportTemp REAL,
    ReceivedDate DATE,
    ReceivedBy INTEGER,
    ProcessingStart DATE,
    ProcessingEnd DATE,
    ProcessedBy INTEGER,
    AliquotCount INTEGER,
    StorageLocation TEXT,
    StorageTemp REAL,
    PreservationMethod TEXT,
    QCResult TEXT,
    AnalystNotes TEXT,
    ReleaseDate DATE,
    ReleasedBy INTEGER,
    FinalStatus TEXT,
    PRIMARY KEY (LabID, SpecimenID)
);

INSERT INTO LaboratorySpecimenProcessing VALUES (1,1001,'Blood','2025-01-05',501,4.0,'2025-01-05',601,'2025-01-05','2025-01-05',701,3,'FreezerA',-80,'Frozen','Pass','All good','2025-01-06',801,'Available');
INSERT INTO LaboratorySpecimenProcessing VALUES (1,1002,'Urine','2025-02-10',502,2.0,'2025-02-10',602,'2025-02-10','2025-02-10',702,2,'RefrigeratorB',4,'Cold','Pass','Clear','2025-02-11',802,'Available');
INSERT INTO LaboratorySpecimenProcessing VALUES (2,2001,'Tissue','2025-03-15',503,4.5,'2025-03-15',603,'2025-03-15','2025-03-16',703,5,'FreezerC',-80,'Formalin','Fail','Contamination suspected','2025-03-20',803,'Rejected');

-- Table: ExaminationRiskScore
CREATE TABLE ExaminationRiskScore (
    ExamID INTEGER,
    RiskScoreID INTEGER,
    ScoreDate DATE,
    RiskScore REAL,
    Category TEXT,
    Factors TEXT,
    ClinicianID INTEGER,
    Comments TEXT,
    ActionRecommended TEXT,
    FollowUpNeeded INTEGER,
    FollowUpDays INTEGER,
    RiskLevel TEXT,
    AlertSent INTEGER,
    AlertDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    ReviewStatus TEXT,
    ReviewedBy INTEGER,
    ReviewDate DATE,
    NextEvaluationDate DATE,
    PRIMARY KEY (ExamID, RiskScoreID)
);

INSERT INTO ExaminationRiskScore VALUES (1,1,'2025-03-02',0.85,'Moderate','Age,LabValues','201','','Schedule cardiac eval',1,30,'Medium',1,'2025-03-02','System','2025-03-02','Pending',0,NULL,'2025-04-01');
INSERT INTO ExaminationRiskScore VALUES (2,1,'2025-04-12',0.45,'Low','BMI,Symptoms','202','','Routine monitoring',0,0,'Low',0,NULL,'System','2025-04-12','Completed',301,'2025-04-13','2025-07-01');
INSERT INTO ExaminationRiskScore VALUES (3,1,'2025-05-16',0.95,'High','FamilyHistory,LabAbnormal','203','','Immediate intervention',1,7,'High',1,'2025-05-16','System','2025-05-16','Pending',0,NULL,'2025-05-23');