-- Healthcare Provider Network information
CREATE TABLE HealthcareProviderNetwork
(
    NetworkID               INTEGER       NOT NULL,
    NetworkName             TEXT          NOT NULL,
    EstablishedDate         DATE          NOT NULL,
    PrimaryContactName      TEXT,
    PrimaryContactPhone     TEXT,
    Region                  TEXT,
    NumberOfProviders       INTEGER,
    ProviderType1           TEXT,
    ProviderType2           TEXT,
    ProviderType3           TEXT,
    AccreditationStatus     TEXT,
    TotalAnnualBudget       REAL,
    AnnualPatientVolume     INTEGER,
    AvgPatientSatisfaction  REAL,
    TelehealthCapability    INTEGER,
    EMRIntegrationLevel    TEXT,
    DataSharingAgreement    TEXT,
    RegulatoryCompliance    TEXT,
    NetworkWebsite          TEXT,
    HeadquartersAddress     TEXT,
    HeadquartersCity        TEXT,
    HeadquartersState       TEXT,
    HeadquartersZIP         TEXT,
    PrimaryLanguage         TEXT
);

INSERT INTO HealthcareProviderNetwork VALUES (1,'AlphaHealthNetwork','2010-06-15','John Doe','5551234567','Midwest',250,'PrimaryCare','Cardiology','Oncology','Accredited',12500000.00,150000,4.5,1,'Full','Signed','Compliant','www.alphanet.org','123 Main St','Springfield','IL','62701','English');
INSERT INTO HealthcareProviderNetwork VALUES (2,'BetaCareAlliance','2015-03-22','Jane Smith','5559876543','Southeast',180,'Pediatrics','Dermatology','Psychiatry','Accredited',9800000.00,90000,4.2,0,'Partial','Pending','Compliant','www.betacare.org','456 Oak Ave','Greenville','NC','27834','English');
INSERT INTO HealthcareProviderNetwork VALUES (3,'GammaMedicalGroup','2008-11-05','Mike Johnson','5555551212','Northwest',320,'Neurology','Orthopedics','Radiology','Accredited',15200000.00,200000,4.7,1,'Full','Signed','Compliant','www.gammamed.org','789 Pine Rd','Eureka','CA','95501','English');

-- Medical Research Funding details
CREATE TABLE MedicalResearchFunding
(
    FundingID                INTEGER      NOT NULL,
    GrantTitle               TEXT         NOT NULL,
    FundingAgency            TEXT,
    AwardAmount              REAL,
    StartDate                DATE,
    EndDate                  DATE,
    PrincipalInvestigator    TEXT,
    PIInstitution             TEXT,
    PIContactEmail           TEXT,
    ResearchArea             TEXT,
    FundingMechanism         TEXT,
    ReviewScore              REAL,
    FundingStatus            TEXT,
    BudgetYear1              REAL,
    BudgetYear2              REAL,
    BudgetYear3              REAL,
    BudgetYear4              REAL,
    BudgetYear5              REAL,
    PublicationsExpected     INTEGER,
    PublicationsProduced     INTEGER,
    PatentsFiled             INTEGER,
    PatentsGranted           INTEGER,
    ProjectPhase             TEXT,
    DataManagementPlan       TEXT
);

INSERT INTO MedicalResearchFunding VALUES (101,'CardioGenomics','National Institutes of Health',1200000.00,'2022-01-01','2025-12-31','Dr Emily Clark','University of Midwest','eclark@umw.edu','Genomics','R01',85.5,'Active',300000.00,300000.00,300000.00,300000.00,0.00,5,3,1,1,'Execution','Completed');
INSERT INTO MedicalResearchFunding VALUES (102,'NeuroInflammation Study','Foundation for Brain Health',850000.00,'2021-07-01','2024-06-30','Dr Alan Murphy','West Coast Institute','amurphy@wci.org','Neuroscience','U01',78.2,'Active',212500.00,212500.00,212500.00,212500.00,0.00,4,2,0,0,'Execution','InProgress');
INSERT INTO MedicalResearchFunding VALUES (103,'Pediatric Immunology','Kids Health Trust',600000.00,'2023-03-15','2026-03-14','Dr Susan Lee','Children Hospital','slee@chospital.org','Immunology','R21',82.0,'Pending',150000.00,150000.00,150000.00,150000.00,0.00,2,0,0,0,'Planning','NotStarted');

-- Clinical Decision Support Log entries
CREATE TABLE ClinicalDecisionSupportLog
(
    LogID                INTEGER      NOT NULL,
    EncounterID          INTEGER,
    ProviderID           INTEGER,
    PatientID            INTEGER,
    DecisionSupportRule  TEXT,
    TriggerEvent         TEXT,
    RuleVersion          TEXT,
    AlertSeverity        TEXT,
    ActionTaken          TEXT,
    OverrideReason       TEXT,
    Timestamp            DATETIME,
    SystemName           TEXT,
    ModuleName           TEXT,
    RuleCategory         TEXT,
    ClinicalDomain       TEXT,
    PatientAge           INTEGER,
    PatientGender        TEXT,
    DiagnosisCode        TEXT,
    MedicationCode       TEXT,
    LabResultCode        TEXT,
    ImagingResultCode    TEXT,
    FollowUpRecommendation TEXT,
    DocumentationStatus  TEXT,
    ReviewStatus         TEXT
);

INSERT INTO ClinicalDecisionSupportLog VALUES (1001,55501,2001,3001,'HighRiskBleed','MedicationOrder','v2.3','High','HoldMedication','ClinicianOverride','2025-05-01 09:15:00','CDSS_System','MedicationModule','Safety','Hematology',67,'Male','D65','B01AA03','LAB001','IMG001','RepeatCBC','Documented','Reviewed');
INSERT INTO ClinicalDecisionSupportLog VALUES (1002,55502,2002,3002,'SepsisAlert','VitalSign','v1.9','Medium','OrderLactate','NoOverride','2025-05-01 11:42:00','CDSS_System','VitalsModule','Alert','InfectiousDisease',54,'Female','A41.9','', 'LAB002','', 'ObtainBloodCultures','Documented','Pending');
INSERT INTO ClinicalDecisionSupportLog VALUES (1003,55503,2003,3003,'DrugInteraction','MedicationOrder','v3.0','High','CancelOrder','PharmacistOverride','2025-05-02 08:05:00','CDSS_System','PharmacyModule','Safety','Pharmacology',45,'Male','E11.9','CYP3A4', 'LAB003','', 'AdjustDose','Documented','Reviewed');

-- Hospital Infrastructure Project tracking
CREATE TABLE HospitalInfrastructureProject
(
    ProjectID               INTEGER      NOT NULL,
    ProjectName             TEXT,
    ProjectType             TEXT,
    StartDate               DATE,
    PlannedEndDate          DATE,
    ActualEndDate           DATE,
    BudgetAllocated         REAL,
    BudgetSpent             REAL,
    ProjectManager          TEXT,
    SponsorDepartment       TEXT,
    Status                  TEXT,
    PriorityLevel           TEXT,
    Description             TEXT,
    Location                TEXT,
    SquareFootage           INTEGER,
    ContractorName          TEXT,
    ContractStartDate       DATE,
    ContractEndDate         DATE,
    PermitsRequired         TEXT,
    SafetyInspectionScore   REAL,
    SustainabilityRating    TEXT,
    RiskAssessmentScore     REAL,
    StakeholderCount        INTEGER,
    CommunicationPlan       TEXT,
    CompletionPercentage    REAL
);

INSERT INTO HospitalInfrastructureProject VALUES (301,'East Wing Expansion','Construction','2023-01-15','2025-12-31',NULL,25000000.00,10250000.00,'Laura King','Facilities','InProgress','High','Add 4 floors to east side','East Wing',200000,'BuildCo Ltd','2023-02-01','2025-11-30','Yes',92.5,'Gold',4.2,12,'WeeklyUpdates','45');
INSERT INTO HospitalInfrastructureProject VALUES (302,'MRI Suite Upgrade','Equipment','2024-04-01','2024-10-15',NULL,3000000.00,850000.00,'Mark Patel','Radiology','InProgress','Medium','Replace old MRI with 3T scanner','Radiology Dept',15000,'MedTech Solutions','2024-04-15','2024-09-30','No',88.0,'Silver',3.1,5,'BiWeekly','30');
INSERT INTO HospitalInfrastructureProject VALUES (303,'HVAC Modernization','Utilities','2022-09-01','2023-06-30','2023-06-28',1200000.00,1195000.00,'Sofia Gomez','Facilities','Completed','Low','Upgrade HVAC across campus','All Buildings',50000,'ClimateControl Inc','2022-09-15','2023-06-15','Yes',95.0,'Platinum',2.5,8,'Monthly','100');

-- Staff Continuing Education records
CREATE TABLE StaffContinuingEducation
(
    RecordID                INTEGER      NOT NULL,
    StaffID                 INTEGER,
    StaffName               TEXT,
    Department              TEXT,
    CourseTitle             TEXT,
    CourseProvider          TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    CreditsEarned           REAL,
    CompletionStatus        TEXT,
    CertificationAwarded    TEXT,
    AccreditationBody       TEXT,
    ModeOfDelivery          TEXT,
    Cost                    REAL,
    FundingSource           TEXT,
    InstructorName          TEXT,
    InstructorContactEmail  TEXT,
    EvaluationScore         REAL,
    FeedbackComments        TEXT,
    RenewalRequired         TEXT,
    RenewalDate             DATE,
    FollowUpAction          TEXT,
    DocumentReference       TEXT,
    SupervisorApproval      TEXT,
    HRApproval              TEXT
);

INSERT INTO StaffContinuingEducation VALUES (4001,2005,'Dr Alice Monroe','Cardiology','Advanced Echocardiography','Heart Institute','2024-02-01','2024-02-05',3.0,'Completed','EchoPro','ABEC','InPerson',1200.00,'DepartmentBudget','Dr Robert Lee','rlee@heartinst.org',4.8,'Excellent content','Yes','2027-02-01','Schedule refresher','doc4001.pdf','Approved','Approved');
INSERT INTO StaffContinuingEducation VALUES (4002,2006,'Nurse Brian Clark','Emergency','Trauma Nursing Certification','Trauma Edu','2023-11-10','2023-11-12',2.5,'Completed','TNCC','NCSBN','Online',800.00,'SelfFunded','Ms Karen White','kwhite@traumaedu.com',4.5,'Very useful','No',NULL,'Maintain record','doc4002.pdf','Approved','Approved');
INSERT INTO StaffContinuingEducation VALUES (4003,2007,'Therapist Carla Diaz','Rehab','Neurorehab Techniques','Rehab Academy','2024-06-15','2024-06-17',1.5,'Planned',NULL,'ACPR','Hybrid',600.00,'Scholarship','Dr Luis Gomez','lgomez@rehabacad.org',NULL,NULL,'Yes','2029-06-15','Notify when starts','doc4003.pdf','Pending','Pending');

-- Patient Safety Incident reporting
CREATE TABLE PatientSafetyIncident
(
    IncidentID                INTEGER      NOT NULL,
    IncidentDate              DATE,
    ReportedBy                TEXT,
    Department                TEXT,
    IncidentType              TEXT,
    SeverityLevel             TEXT,
    Description               TEXT,
    ImmediateActionTaken      TEXT,
    RootCauseAnalysis        TEXT,
    ContributingFactors       TEXT,
    PatientID                 INTEGER,
    PatientAge                INTEGER,
    PatientGender             TEXT,
    Outcome                   TEXT,
    FollowUpPlan              TEXT,
    ClosedDate                DATE,
    ClosureStatus             TEXT,
    LessonsLearned            TEXT,
    PreventiveAction          TEXT,
    RiskScore                 REAL,
    NotificationSent          TEXT,
    NotificationDate          DATE,
    ReviewCommittee           TEXT,
    AuditTrailReference       TEXT,
    ActionOwner               TEXT
);

INSERT INTO PatientSafetyIncident VALUES (5001,'2025-04-12','Nurse Jenna Lee','Surgery','WrongSiteSurgery','High','Left knee operated instead of right','Surgery halted, patient reassessed','Site marking protocol failure','Inadequate time-out','3001',58,'Female','No permanent harm','Repeat procedure on correct site','2025-04-20','Closed','Emphasize time-out compliance','Mandatory checklist training',8.5,'Yes','2025-04-13','SafetyCommittee','audit5001.pdf','Dr Steven Hart');
INSERT INTO PatientSafetyIncident VALUES (5002,'2025-04-18','Pharmacist Omar Khan','Pharmacy','MedicationError','Medium','Patient received 5mg instead of 0.5mg','Dose corrected, patient monitored','Label misreading','High workload','3002',45,'Male','Mild nausea resolved','Educate patient on dosing','2025-04-22','Closed','Double‑check labeling','Implement barcode scanning',5.2,'Yes','2025-04-19','PharmacySafetyTeam','audit5002.pdf','Pharmacist Omar Khan');
INSERT INTO PatientSafetyIncident VALUES (5003,'2025-05-01','Resident Lisa Wong','ICU','VentilatorAssociatedPneumonia','Low','Developed pneumonia after 5 days ventilated','Antibiotics initiated','Extended ventilation duration','Patient’s underlying COPD','3003',72,'Male','Improved, discharged','Follow‑up pulmonary clinic','2025-05-10','Closed','Early extubation protocol','Daily sedation vacation',3.4,'Yes','2025-05-02','ICUQualityCommittee','audit5003.pdf','Dr Michael Zhou');

-- Pharmacy Compounding Formula repository
CREATE TABLE PharmacyCompoundingFormula
(
    FormulaID               INTEGER      NOT NULL,
    FormulaName             TEXT,
    CompoundType            TEXT,
    Indication              TEXT,
    Strength                TEXT,
    BaseVehicle             TEXT,
    ActiveIngredient1       TEXT,
    Amount1                 REAL,
    ActiveIngredient2       TEXT,
    Amount2                 REAL,
    ActiveIngredient3       TEXT,
    Amount3                 REAL,
    PrescriberRequirement   TEXT,
    StabilityNote           TEXT,
    StorageCondition        TEXT,
    ExpiryAfterPreparation  INTEGER,
    CompoundingMethod       TEXT,
    PreparationDate         DATE,
    PreparedBy              TEXT,
    BatchNumber             TEXT,
    QCResult                TEXT,
    QCPerformedBy           TEXT,
    ReleaseStatus           TEXT,
    DocumentationLink       TEXT,
    RegulatoryApproval      TEXT
);

INSERT INTO PharmacyCompoundingFormula VALUES (6001,'Pain Relief Gel','Topical','Localized pain','5%','Carbomer','Lidocaine',2.0,'Ketoprofen',1.5,NULL,0,'Physician order','Stable 30 days','RoomTemp',30,'Mixing','2025-04-20','Tech Amy Chen','BATCH20250420A','Passed','QC John Doe','Released','doc6001.pdf','Approved');
INSERT INTO PharmacyCompoundingFormula VALUES (6002,'Antibiotic Suspension','Oral','Pediatric infection','250mg/5ml','Water','Amoxicillin',125.0,'ClavulanicAcid',31.25,NULL,0,'Physician order','Stable 14 days','Refrigerated',14,'Stirring','2025-04-22','Tech Brian Lee','BATCH20250422B','Passed','QC Sarah Kim','Released','doc6002.pdf','Approved');
INSERT INTO PharmacyCompoundingFormula VALUES (6003,'Hormone Replacement Cream','Topical','Hormone deficiency','0.5%','BaseCream','Estradiol',0.5,NULL,0,NULL,0,'Physician order','Stable 60 days','RoomTemp',60,'Blending','2025-04-25','Tech Carla Ruiz','BATCH20250425C','Passed','QC Liam Patel','Released','doc6003.pdf','Approved');

-- Radiology Quality Assurance records
CREATE TABLE RadiologyQualityAssurance
(
    QAID                     INTEGER      NOT NULL,
    Modality                 TEXT,
    EquipmentID              TEXT,
    InspectionDate           DATE,
    InspectorName            TEXT,
    PassFail                 TEXT,
    ImageQualityScore        REAL,
    DoseAccuracyScore        REAL,
    ContrastPerformanceScore REAL,
    ArtifactPresenceScore    REAL,
    CalibrationStatus        TEXT,
    MaintenanceDueDate       DATE,
    SoftwareVersion          TEXT,
    FirmwareVersion          TEXT,
    NoiseLevel               REAL,
    SpatialResolution        REAL,
    LowContrastDetectability REAL,
    LinearizerStatus         TEXT,
    Recommendations          TEXT,
    FollowUpAction           TEXT,
    CompletionDate           DATE,
    DocumentationLink        TEXT,
    RegulatoryCompliance     TEXT,
    OperatorTrainingStatus   TEXT,
    QualityMetricTrend       TEXT
);

INSERT INTO RadiologyQualityAssurance VALUES (7001,'CT','CT-01','2025-03-15','John Miller','Pass',4.8,4.5,4.7,4.0,'Calibrated','2025-09-15','v5.2','fw3.1',0.2,0.5,0.4','OK','Continue routine QC','None','2025-03-16','qa7001.pdf','Compliant','Current','Stable');
INSERT INTO RadiologyQualityAssurance VALUES (7002,'MRI','MRI-03','2025-04-01','Emily Davis','Pass',4.9,4.6,4.8,4.2,'Calibrated','2025-10-01','v4.9','fw2.4',0.15,0.45,0.38','OK','Replace aging coil','Order spare parts','2025-04-02','qa7002.pdf','Compliant','Current','Improving');
INSERT INTO RadiologyQualityAssurance VALUES (7003,'XRay','XR-07','2025-04-10','Mark Thompson','Fail',3.2,2.9,3.0,2.5','Recalibration needed','2025-07-10','v3.5','fw1.8',0.35,0.8,0.7','Pending','Perform recalibration','Schedule service technician','2025-04-11','qa7003.pdf','NonCompliant','Outdated','Degrading');

-- Laboratory Supply Chain tracking
CREATE TABLE LaboratorySupplyChain
(
    SupplyID                 INTEGER      NOT NULL,
    ItemName                 TEXT,
    SupplierName             TEXT,
    Category                 TEXT,
    UnitCost                 REAL,
    QuantityOrdered          INTEGER,
    OrderDate                DATE,
    ExpectedDeliveryDate     DATE,
    ActualDeliveryDate       DATE,
    ReceivingDepartment      TEXT,
    BatchNumber              TEXT,
    ExpirationDate           DATE,
    StorageLocation          TEXT,
    QCStatus                 TEXT,
    QCPerformedBy            TEXT,
    TemperatureControlRequired TEXT,
    TemperatureRecorded      REAL,
    MoistureControlRequired TEXT,
    MoistureRecorded         REAL,
    HazardousMaterial        TEXT,
    SafetyDataSheetLink      TEXT,
    InvoiceNumber            TEXT,
    PaymentStatus            TEXT,
    Comments                 TEXT,
    LastUpdated              DATETIME
);

INSERT INTO LaboratorySupplyChain VALUES (8001,'Hemoglobin Reagent','BioChem Corp','Reagents',45.75,20,'2025-03-20','2025-03-27','2025-03-26','Chemistry','BATCHHGB20250320','2027-03-20','ShelfA4','Passed','QC Alice','No',0.0,'No',0.0,'No','sds8001.pdf','INV8001','Paid','Received in good condition','2025-03-27 10:15:00');
INSERT INTO LaboratorySupplyChain VALUES (8002,'Serum Separator Tubes','Medical Supplies Ltd','Consumables',0.12,5000,'2025-04-05','2025-04-08','2025-04-07','Hematology','BATCHSST20250405','2028-04-05','Refrigerated','Passed','QC Bob','Yes',4.0,'No',0.0,'No','sds8002.pdf','INV8002','Pending','Temperature within range','2025-04-07 14:30:00');
INSERT INTO LaboratorySupplyChain VALUES (8003,'Formalin','CleanChem','Fixatives',12.00,100,'2025-04-12','2025-04-15','2025-04-14','Pathology','BATCHFORM20250412','2026-04-12','VentilatedCabinet','Passed','QC Carol','No',0.0,'No',0.0,'Yes','sds8003.pdf','INV8003','Paid','Handled with PPE','2025-04-14 09:45:00');

-- Health Data Exchange Log entries
CREATE TABLE HealthDataExchangeLog
(
    ExchangeID               INTEGER      NOT NULL,
    MessageID                TEXT,
    SourceSystem             TEXT,
    DestinationSystem        TEXT,
    MessageType              TEXT,
    TransmissionDate         DATETIME,
    ReceiptDate              DATETIME,
    Status                   TEXT,
    ErrorCode                TEXT,
    RetryCount               INTEGER,
    PayloadSizeBytes         INTEGER,
    EncryptionMethod         TEXT,
    CompressionMethod        TEXT,
    HL7Version               TEXT,
    FHIRResourceType         TEXT,
    PatientIdentifier        TEXT,
    EncounterIdentifier      TEXT,
    CorrelationID            TEXT,
    InitiatorUserID          TEXT,
    InitiatorUserRole        TEXT,
    AcknowledgementCode      TEXT,
    AuditTrailReference      TEXT,
    ProcessingTimeMs         INTEGER,
    DataSensitivityLevel     TEXT,
    RetentionPolicy          TEXT,
    Notes                    TEXT
);

INSERT INTO HealthDataExchangeLog VALUES (9001,'MSG001','EHR_System','Lab_Info_Hub','ADT','2025-04-20 08:00:00','2025-04-20 08:00:05','Success','',0,2048,'AES256','None','2.5','Observation','PAT3001','ENC4001','CORR9001','user123','Clinician','AA','audit9001.pdf',500,'High','7Years','Patient admission ADT sent');
INSERT INTO HealthDataExchangeLog VALUES (9002,'MSG002','Radiology_PACS','EHR_System','ORU','2025-04-21 10:15:30','2025-04-21 10:15:35','Success','',0,5120,'AES256','gzip','2.6','ImagingStudy','PAT3002','ENC4002','CORR9002','tech456','Technician','AA','audit9002.pdf',450,'Medium','5Years','Radiology report transmitted');
INSERT INTO HealthDataExchangeLog VALUES (9003,'MSG003','Pharmacy_System','EHR_System','RXE','2025-04-22 14:05:10','2025-04-22 14:05:12','Failed','ERR_TIMEOUT',3,1024,'AES256','None','2.5','MedicationStatement','PAT3003','ENC4003','CORR9003','pharm789','Pharmacist','AE','audit9003.pdf',1200,'Low','3Years','Prescription transmission timed out');

-- Biobank Specimen Tracking records
CREATE TABLE BiobankSpecimenTracking
(
    SpecimenID              INTEGER      NOT NULL,
    BiobankID               TEXT,
    CollectionDate          DATE,
    ReceivedDate            DATE,
    SpecimenType            TEXT,
    SourcePatientID         INTEGER,
    SourceVisitID           INTEGER,
    TissueSubtype           TEXT,
    PreservationMethod      TEXT,
    StorageTemperature      REAL,
    StorageLocation         TEXT,
    VolumeML                REAL,
    ConcentrationNGperML    REAL,
    QualityScore            REAL,
    ConsentID               TEXT,
    ProcessingTechnician    TEXT,
    QCStatus                TEXT,
    QCPerformedBy           TEXT,
    ReleaseStatus           TEXT,
    ReleaseDate             DATE,
    UsedForStudyID          TEXT,
    StudyPhase              TEXT,
    Notes                   TEXT,
    LastInventoryCheck      DATE,
    CurrentStatus           TEXT,
    AuditTrailReference     TEXT
);

INSERT INTO BiobankSpecimenTracking VALUES (10001,'BB001','2024-12-10','2024-12-11','Blood','3001',4001,'Plasma','Cryo','-80','FreezerA1',5.0,50.0,9.1,'CONS001','Tech Anne','Passed','QC Dave','Available',NULL,'STUDY100','Phase1','No issues','2025-03-01','Stored','audit10001.pdf');
INSERT INTO BiobankSpecimenTracking VALUES (10002,'BB002','2025-01-05','2025-01-06','Tissue','3002',4002,'Liver','Formalin','4','FreezerB2',0.3,200.0,8.5,'CONS002','Tech Ben','Passed','QC Eva','Allocated','2025-02-15','STUDY101','Phase2','Used for gene expression','2025-03-01','Allocated','audit10002.pdf');
INSERT INTO BiobankSpecimenTracking VALUES (10003,'BB003','2025-02-20','2025-02-20','Saliva','3003',4003,'Whole','RoomTemp','-20','ShelfC3',2.0,30.0,7.8,'CONS003','Tech Carla','Failed','QC Frank','Quarantined',NULL,NULL,NULL,'Sample degraded','2025-03-01','Quarantined','audit10003.pdf');