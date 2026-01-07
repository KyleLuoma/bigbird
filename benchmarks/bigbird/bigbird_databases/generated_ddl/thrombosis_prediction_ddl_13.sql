-- RadiologyInterpretation table holds radiology study interpretations
CREATE TABLE RadiologyInterpretation (
    ID INTEGER,
    StudyID INTEGER,
    InterpretationDate DATE,
    Modality TEXT,
    BodyPart TEXT,
    Findings TEXT,
    Impression TEXT,
    RadiologistID INTEGER,
    ConfidenceScore REAL,
    FollowUpRecommended INTEGER,
    RadiationDose REAL,
    ContrastUsed INTEGER,
    ImageCount INTEGER,
    ReportStatus TEXT,
    ReviewLevel INTEGER,
    AI_Assistance INTEGER,
    TechniqueDetails TEXT,
    PatientPosition TEXT,
    SliceThickness REAL,
    WindowLevel INTEGER,
    PRIMARY KEY (ID)
);

INSERT INTO RadiologyInterpretation VALUES (1,101,'2023-05-10','CT','Head','No acute hemorrhage','Normal study',12,0.95,0,5.2,0,120,'Final',2,1,'StandardHeadProtocol','Supine',1.25,40);
INSERT INTO RadiologyInterpretation VALUES (2,102,'2023-06-15','MRI','Knee','Meniscal tear observed','Partial tear',15,0.88,1,0.0,1,80,'Preliminary',1,0,'T2Weighted','Prone',3.5,70);
INSERT INTO RadiologyInterpretation VALUES (3,103,'2023-07-20','XRay','Chest','Mild infiltrates','Possible pneumonia',18,0.92,1,0.3,0,1,'Final',3,0,'APView','Upright',0.5,120);

-- PharmacyAdverseEvent records drug related adverse events
CREATE TABLE PharmacyAdverseEvent (
    EventID INTEGER,
    PrescriptionID INTEGER,
    EventDate DATE,
    EventType TEXT,
    Severity INTEGER,
    ReporterID INTEGER,
    ActionTaken TEXT,
    Outcome TEXT,
    DrugName TEXT,
    Dosage REAL,
    Route TEXT,
    Frequency TEXT,
    Duration INTEGER,
    PatientID INTEGER,
    SymptomDescription TEXT,
    CausalityAssessment TEXT,
    ReportStatus TEXT,
    FollowUpDate DATE,
    Notes TEXT,
    RiskLevel TEXT,
    PRIMARY KEY (EventID)
);

INSERT INTO PharmacyAdverseEvent VALUES (1001,5001,'2023-04-12','AllergicReaction',3,2001,'MedicationStopped','Resolved','Amoxicillin',250.0,'Oral','TID',7,3001,'Rash and itching','Probable','Closed','2023-04-20','No further issues','Medium');
INSERT INTO PharmacyAdverseEvent VALUES (1002,5002,'2023-05-05','GastroIntolerance',2,2002,'DoseReduced','Ongoing','Metformin',500.0,'Oral','BID',30,3002,'Nausea','Possible','Open','2023-05-15','Monitoring','Low');
INSERT INTO PharmacyAdverseEvent VALUES (1003,5003,'2023-06-18','Hepatotoxicity',4,2003,'DrugDiscontinued','Resolved','Isoniazid',300.0,'Oral','QD',90,3003,'Elevated LFTs','Definite','Closed','2023-07-01','Liver enzymes normalized','High');

-- ClinicalGuidelineVersion tracks versions of clinical guidelines
CREATE TABLE ClinicalGuidelineVersion (
    GuidelineID INTEGER,
    VersionNumber TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    ClinicalArea TEXT,
    AuthorID INTEGER,
    ReviewerID INTEGER,
    ApprovalStatus TEXT,
    ChangeSummary TEXT,
    DocumentURL TEXT,
    Specialty TEXT,
    Category TEXT,
    Priority INTEGER,
    Scope TEXT,
    ImplementationStatus TEXT,
    LastReviewDate DATE,
    NextReviewDate DATE,
    TargetPopulation TEXT,
    EvidenceLevel TEXT,
    Comments TEXT,
    PRIMARY KEY (GuidelineID, VersionNumber)
);

INSERT INTO ClinicalGuidelineVersion VALUES (1,'v1.0','2022-01-01','2024-12-31','Cardiology',101,201,'Approved','Initial release','http://example.com/guideline1v1','Cardiology','Therapy',1,'National','Implemented','2023-01-15','2025-01-01','Adults','A','First version');
INSERT INTO ClinicalGuidelineVersion VALUES (1,'v1.1','2025-01-02','2027-12-31','Cardiology',102,202,'Pending','Minor updates to dosing','http://example.com/guideline1v1_1','Cardiology','Therapy',1,'National','Planned','2025-01-02','2027-01-01','Adults','A','Revision pending');
INSERT INTO ClinicalGuidelineVersion VALUES (2,'v2.0','2023-06-01','2026-05-31','Endocrinology',103,203,'Approved','New guideline for diabetes management','http://example.com/guideline2v2','Endocrinology','Management',2,'Regional','Implemented','2023-07-01','2025-07-01','Adults','B','Initial release');

-- HospitalAssetTracking records assets and their lifecycle
CREATE TABLE HospitalAssetTracking (
    AssetTag TEXT,
    AssetType TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyEndDate DATE,
    LocationID INTEGER,
    Department TEXT,
    CustodianID INTEGER,
    CurrentStatus TEXT,
    DepreciationStartDate DATE,
    DepreciationMethod TEXT,
    OriginalCost REAL,
    BookValue REAL,
    MaintenanceCycleDays INTEGER,
    LastMaintenanceDate DATE,
    NextMaintenanceDue DATE,
    DisposalDate DATE,
    Remarks TEXT,
    PRIMARY KEY (AssetTag)
);

INSERT INTO HospitalAssetTracking VALUES ('AT001','MRI Scanner','Siemens','Magnetom Aera','SN12345','2019-03-15','2024-03-14',10,'Radiology',301,'In Service','2019-04-01','StraightLine',2500000.0,1800000.0,180,'2023-09-10','2024-03-10',NULL,'Annual service completed');
INSERT INTO HospitalAssetTracking VALUES ('AT002','Infusion Pump','Baxter','SIGMA Spectrum','SN54321','2020-07-20','2025-07-19',12,'Oncology',302,'In Service','2020-08-01','DecliningBalance',15000.0,12000.0,90,'2023-08-01','2023-10-30',NULL,'Calibration pending');
INSERT INTO HospitalAssetTracking VALUES ('AT003','Desktop Computer','Dell','OptiPlex 7070','SN98765','2021-11-05','2024-11-04',5,'Administration',303,'Retired','2021-12-01','StraightLine',1200.0,500.0,365,'2023-01-15','2023-12-15','2024-02-01','Decommissioned');

-- PatientMobilityAssessment stores physiotherapy mobility scores
CREATE TABLE PatientMobilityAssessment (
    AssessmentID INTEGER,
    PatientID INTEGER,
    AssessmentDate DATE,
    MobilityScore INTEGER,
    GaitSpeed REAL,
    DistanceWalked INTEGER,
    UseOfAssistiveDevice TEXT,
    FallRiskScore INTEGER,
    BalanceScore INTEGER,
    StrengthScore INTEGER,
    PainLevel INTEGER,
    TherapistID INTEGER,
    Comments TEXT,
    ReassessmentNeeded INTEGER,
    TargetGoal TEXT,
    MobilityAidPrescribed TEXT,
    FrequencyPerWeek INTEGER,
    DurationWeeks INTEGER,
    ProgressNotes TEXT,
    FollowUpDate DATE,
    PRIMARY KEY (AssessmentID)
);

INSERT INTO PatientMobilityAssessment VALUES (2001,3001,'2023-03-10',75,1.2,30,'Walker',2,80,85,3,401,'Improving','0','Increase distance','None',3,8,'Steady progress','2023-05-10');
INSERT INTO PatientMobilityAssessment VALUES (2002,3002,'2023-04-22',60,0.8,15,'Cane',4,70,65,5,402,'Needs balance training','1','Achieve independent ambulation','Cane',2,6,'Moderate improvement','2023-06-22');
INSERT INTO PatientMobilityAssessment VALUES (2003,3003,'2023-05-15',45,0.5,10,'None',5,60,55,7,403,'High fall risk','1','Safe transfer techniques','Rollator',1,4,'Limited progress','2023-07-15');

-- EmergencyCallRecord logs emergency calls to dispatch center
CREATE TABLE EmergencyCallRecord (
    CallID INTEGER,
    CallTimestamp DATETIME,
    CallerID INTEGER,
    PatientID INTEGER,
    CallReason TEXT,
    PriorityLevel INTEGER,
    DispatchUnit TEXT,
    ArrivalTime DATETIME,
    CrewOnScene TEXT,
    TriageCategory TEXT,
    VitalSignsRecorded TEXT,
    TreatmentProvided TEXT,
    Disposition TEXT,
    TransferHospital TEXT,
    Notes TEXT,
    CallDurationSeconds INTEGER,
    RecordedBy INTEGER,
    GPS_Latitude REAL,
    GPS_Longitude REAL,
    FollowUpRequired INTEGER,
    PRIMARY KEY (CallID)
);

INSERT INTO EmergencyCallRecord VALUES (3001,'2023-07-01 08:15:00',5001,3001,'Chest pain',1,'EMS Unit 1','2023-07-01 08:25:00','ParamedicTeamA','Emergent','BP120/80HR95','Oxygen','Transported','GeneralHospital','Smooth response',600,2001,40.7128,-74.0060,1);
INSERT INTO EmergencyCallRecord VALUES (3002,'2023-07-02 14:30:00',5002,3002,'Fall',2,'EMS Unit 3','2023-07-02 14:45:00','ParamedicTeamC','Urgent','BP130/85HR88','Splint','TreatedOnSite','None','Patient declined transport',900,2002,34.0522,-118.2437,0);
INSERT INTO EmergencyCallRecord VALUES (3003,'2023-07-03 22:05:00',5003,3003,'Shortness of breath',1,'EMS Unit 2','2023-07-03 22:20:00','ParamedicTeamB','Critical','BP110/70HR102','Nebulizer','Transported','CityMedicalCenter','Rapid intervention',750,2003,41.8781,-87.6298,1);

-- MedicalCodingReference stores coding dictionaries
CREATE TABLE MedicalCodingReference (
    CodeID TEXT,
    CodeSystem TEXT,
    CodeValue TEXT,
    Description TEXT,
    EffectiveStartDate DATE,
    EffectiveEndDate DATE,
    IsActive INTEGER,
    Category TEXT,
    SubCategory TEXT,
    ModifierAllowed INTEGER,
    BillingFlag INTEGER,
    ReimbursementRate REAL,
    Version TEXT,
    LastUpdated DATE,
    CreatedBy INTEGER,
    Notes TEXT,
    ClinicalUse TEXT,
    DocumentationRequirement TEXT,
    MappingToICD10 TEXT,
    MappingToSNOMED TEXT,
    PRIMARY KEY (CodeID)
);

INSERT INTO MedicalCodingReference VALUES ('C001','CPT','99213','Office visit','2020-01-01','2099-12-31',1,'Evaluation','Outpatient',1,1,75.00,'2023','2023-06-01',1001,'Standard office visit','Outpatient','Medical record required','99213','423341004');
INSERT INTO MedicalCodingReference VALUES ('D001','ICD10','E11.9','Type 2 diabetes mellitus without complications','2019-10-01','2099-12-31',1,'Diagnosis','Endocrine',0,1,0.00','2022','2022-12-15',1002,'Diagnosis code','Diagnostic','Lab results','E11.9','44054006');
INSERT INTO MedicalCodingReference VALUES ('L001','LOINC','718-7','Hemoglobin A1c','2015-07-01','2099-12-31',1,'Lab','Glycated hemoglobin',0,1,5.00,'2021','2021-03-20',1003,'Lab test','Lab report','718-7','4548-4');

-- LabEquipmentCalibration logs calibrations of lab instruments
CREATE TABLE LabEquipmentCalibration (
    CalibrationID INTEGER,
    EquipmentID INTEGER,
    EquipmentType TEXT,
    CalibrationDate DATE,
    TechnicianID INTEGER,
    CalibrationStatus TEXT,
    CalibrationMethod TEXT,
    StandardUsed TEXT,
    Deviation REAL,
    PassFail INTEGER,
    NextDueDate DATE,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    Location TEXT,
    TemperatureControl INTEGER,
    HumidityControl INTEGER,
    CalibrationReportURL TEXT,
    Remarks TEXT,
    CalibrationDurationMinutes INTEGER,
    CalibrationCost REAL,
    PRIMARY KEY (CalibrationID)
);

INSERT INTO LabEquipmentCalibration VALUES (4001,6001,'Spectrophotometer','2023-03-01',7001,'Passed','External','NIST Standard','0.02',1,'2024-03-01','ThermoFisher','UV-2000','SN11111','Lab A',1,1,'http://example.com/calib4001','All good',60,250.00);
INSERT INTO LabEquipmentCalibration VALUES (4002,6002,'Centrifuge','2023-04-15',7002,'Failed','Internal','Manufacturer Standard','0.15',0,'2023-10-15','Eppendorf','5424','SN22222','Lab B',1,0,'http://example.com/calib4002','Recalibration needed',45,180.00);
INSERT INTO LabEquipmentCalibration VALUES (4003,6003,'pH Meter','2023-05-20',7003,'Passed','External','Standard Buffer','0.01',1,'2024-05-20','Mettler','PH110','SN33333','Lab C',1,1,'http://example.com/calib4003','Stable',30,120.00);

-- StaffShiftPreference stores employee shift preferences
CREATE TABLE StaffShiftPreference (
    PreferenceID INTEGER,
    StaffID INTEGER,
    PreferredShiftStart TIME,
    PreferredShiftEnd TIME,
    PreferredDays TEXT,
    PreferredLocation TEXT,
    FlexibilityScore INTEGER,
    MaxConsecutiveShifts INTEGER,
    MinRestHours INTEGER,
    PreferenceNotes TEXT,
    UpdatedDate DATE,
    CreatedBy INTEGER,
    PreferenceRating INTEGER,
    ShiftType TEXT,
    PreferredRole TEXT,
    SpecialRequirement TEXT,
    AvailabilityStartDate DATE,
    AvailabilityEndDate DATE,
    OverrideAllowed INTEGER,
    PreferenceStatus TEXT,
    PRIMARY KEY (PreferenceID)
);

INSERT INTO StaffShiftPreference VALUES (5001,4001,'07:00:00','15:00:00','Mon,Tue,Wed','Ward 3',8,5,12,'Prefers morning shifts',2023-06-01,2001,9,'Day','Nurse','None','2023-01-01','2025-12-31',0,'Active');
INSERT INTO StaffShiftPreference VALUES (5002,4002,'15:00:00','23:00:00','Thu,Fri,Sat','ER','7',4,10,'Can work evenings',2023-07-15,2002,7,'Evening','Physician','OnCall','2023-03-01','2024-12-31',1,'Active');
INSERT INTO StaffShiftPreference VALUES (5003,4003,'23:00:00','07:00:00','Sun,Mon','ICU','5',3,8,'Night shift only',2023-08-20,2003,6,'Night','RespiratoryTherapist','None','2023-05-01','2026-12-31',0,'Active');

-- CommunityHealthProgram tracks outreach health programs
CREATE TABLE CommunityHealthProgram (
    ProgramID INTEGER,
    ProgramName TEXT,
    StartDate DATE,
    EndDate DATE,
    TargetPopulation TEXT,
    FundingSource TEXT,
    Budget REAL,
    CoordinatorID INTEGER,
    LocationID INTEGER,
    Objectives TEXT,
    Activities TEXT,
    ExpectedOutcomes TEXT,
    EnrollmentCount INTEGER,
    CompletionRate REAL,
    EvaluationMethod TEXT,
    ReportURL TEXT,
    RiskLevel TEXT,
    CommunityPartner TEXT,
    EligibilityCriteria TEXT,
    ProgramStatus TEXT,
    PRIMARY KEY (ProgramID)
);

INSERT INTO CommunityHealthProgram VALUES (6001,'Heart Health Screening','2023-01-15','2023-06-30','Adults 40+','Grant','50000.00',8001,9001,'Early detection of cardiovascular disease','Screenings,Education','Reduced hypertension prevalence','1200','0.85','Surveys','http://example.com/report6001','Low','LocalClinic','BP>140/90','Completed');
INSERT INTO CommunityHealthProgram VALUES (6002,'Diabetes Prevention Workshop','2023-03-01','2023-09-30','Adults 18-35','Corporate','30000.00',8002,9002,'Prevent onset of type 2 diabetes','Workshops,Meal planning','Weight loss,Improved diet','800','0.78','Pre/post tests','http://example.com/report6002','Medium','CommunityCenter','BMI>25','Ongoing');
INSERT INTO CommunityHealthProgram VALUES (6003,'Senior Mobility Initiative','2023-05-01','2024-04-30','Seniors 65+','Government','75000.00',8003,9003,'Improve functional mobility','Exercise classes,Home assessments','Reduced fall incidents','500','0.92','Physical assessments','http://example.com/report6003','Low','SeniorAssociation','Able to walk independently','Planned');