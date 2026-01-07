-- Hospital architecture planning details
CREATE TABLE HospitalArchitecturePlan (
    PlanID INTEGER PRIMARY KEY,
    PlanName TEXT,
    CreatedDate DATE,
    RevisionNumber INTEGER,
    ArchitectFirm TEXT,
    LeadArchitect TEXT,
    TotalFloors INTEGER,
    TotalSquareFootage INTEGER,
    ProjectBudget REAL,
    FundingSource TEXT,
    ExpectedCompletionDate DATE,
    ConstructionPhase TEXT,
    PhaseStartDate DATE,
    PhaseEndDate DATE,
    StructuralEngineer TEXT,
    MEPEngineer TEXT,
    LandscapeArchitect TEXT,
    SustainabilityRating TEXT,
    BuildingCodeCompliance TEXT,
    RiskAssessmentLevel TEXT,
    Comment TEXT,
    Status TEXT,
    ApprovalDate DATE,
    ApprovedBy TEXT
);

INSERT INTO HospitalArchitecturePlan VALUES (1,'North Expansion', '2023-01-15', 2, 'AlphaDesign', 'John Doe', 5, 250000, 12.5, 'Capital Grants', '2025-06-30', 'Design', '2023-01-15', '2023-07-31', 'Emily Smith', 'Raj Patel', 'Greenscape', 'LEED Gold', 'Full', 'Medium', 'Initial design complete', 'In Progress', '2023-02-01', 'Board Committee');
INSERT INTO HospitalArchitecturePlan VALUES (2,'East Wing Renovation', '2022-05-10', 3, 'BetaStudio', 'Laura Chen', 3, 120000, 8.2, 'Bond Issue', '2024-12-15', 'Construction', '2022-06-01', '2023-12-31', 'Michael Lee', 'Sonia Gomez', 'Urban Gardens', 'LEED Silver', 'Partial', 'Low', 'Renovation of surgical suites', 'Completed', '2022-06-15', 'Facilities Director');
INSERT INTO HospitalArchitecturePlan VALUES (3,'South Parking Garage', '2024-03-20', 1, 'Gamma Architects', 'Ahmed Khan', 1, 50000, 4.0, 'Private Investment', '2026-09-20', 'Planning', '2024-04-01', '2024-10-31', 'Nina Rossi', 'Carlos Diaz', 'OpenSpace', 'LEED Platinum', 'Full', 'High', 'Feasibility study', 'Pending', '2024-04-15', 'Finance Committee');

-- Firmware updates for medical devices
CREATE TABLE MedicalDeviceFirmwareUpdate (
    UpdateID INTEGER PRIMARY KEY,
    DeviceSerialNumber TEXT,
    DeviceModel TEXT,
    Manufacturer TEXT,
    FirmwareVersion TEXT,
    ReleaseDate DATE,
    InstallationDate DATE,
    InstalledBy TEXT,
    UpdateType TEXT,
    ChangeLog TEXT,
    ValidationStatus TEXT,
    ValidationDate DATE,
    RollbackAvailable TEXT,
    RollbackVersion TEXT,
    AffectedModules TEXT,
    ComplianceStandard TEXT,
    RiskLevel TEXT,
    DowntimeMinutes INTEGER,
    PostUpdateTestResult TEXT,
    Notes TEXT,
    Status TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    SignatureHash TEXT
);

INSERT INTO MedicalDeviceFirmwareUpdate VALUES (101,'SN123456','HeartMonitorX','MediTech','v2.3.1','2023-11-01','2023-11-05','Tech John','Security','Patched vulnerability CVE-2023-1234','Validated','2023-11-06','Yes','v2.2.9','ISO13485','Low',5,'Pass','No issues','Deployed','Chief Engineer','2023-11-01','ABCDEF123456');
INSERT INTO MedicalDeviceFirmwareUpdate VALUES (102,'SN987654','InfusionPumpZ','HealthEquip','v5.0.0','2024-02-15','2024-02-20','Tech Maria','Feature','Added dosage calculation module','Pending',NULL,'Yes','v4.9.8','FDA 21CFR820','Medium',10,'Pending','Awaiting validation','Scheduled','Regulatory Lead','2024-02-15','XYZ789012');
INSERT INTO MedicalDeviceFirmwareUpdate VALUES (103,'SN555555','VentilatorPro','LifeSystems','v1.1.5','2023-08-10','2023-08-12','Tech Ahmed','Bugfix','Fixed alarm escalation bug','Validated','2023-08-13','No','',NULL,'ISO14971','Low',2,'Pass','Resolved alarm issue','Deployed','QA Manager','2023-08-10','LMN345678');

-- Survey capturing clinical outcomes
CREATE TABLE ClinicalOutcomeSurvey (
    SurveyID INTEGER PRIMARY KEY,
    SurveyDate DATE,
    PatientID INTEGER,
    Department TEXT,
    SurveyMethod TEXT,
    OverallSatisfaction INTEGER,
    PainScore INTEGER,
    MobilityScore INTEGER,
    EmotionalWellbeing INTEGER,
    FollowUpNeeded INTEGER,
    Comments TEXT,
    SurveyorName TEXT,
    SurveyDurationMinutes INTEGER,
    ConsentGiven TEXT,
    DataVerified TEXT,
    Version INTEGER,
    RepeatSurveyFlag TEXT,
    ReferralMade INTEGER,
    ReferralDepartment TEXT,
    OutcomeClassification TEXT,
    RiskScore REAL,
    ActionTaken TEXT,
    ReviewDate DATE,
    ReviewerName TEXT,
    AuditTrail TEXT
);

INSERT INTO ClinicalOutcomeSurvey VALUES (2001,'2023-09-10',301,'Cardiology','Paper',8,3,7,6,0,'Patient reports steady improvement','Nurse Kelly',12,'Yes','Yes',1,'No',0,'', 'Stable',1.2,'Continue current regimen','2023-09-15','Dr Smith','Log001');
INSERT INTO ClinicalOutcomeSurvey VALUES (2002,'2023-10-05',302,'Orthopedics','Electronic',6,5,5,4,1,'Needs additional physiotherapy','Therapist Luis',15,'Yes','No',1,'Yes',1,'Physical Therapy','Improving',2.8,'Schedule extra sessions','2023-10-10','Dr Lee','Log002');
INSERT INTO ClinicalOutcomeSurvey VALUES (2003,'2023-11-20',303,'Neurology','Phone',9,2,8,9,0,'Excellent recovery','Nurse Maya',10,'Yes','Yes',2,'No',0,'', 'Recovered',0.5,'Discharge planned','2023-11-25','Dr Patel','Log003');

-- Mood and affect assessment for patients
CREATE TABLE PatientMoodAssessment (
    AssessmentID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    AssessmentDate DATE,
    MoodScale INTEGER,
    AnxietyLevel INTEGER,
    DepressionScore INTEGER,
    StressLevel INTEGER,
    SleepQuality INTEGER,
    AppetiteChange INTEGER,
    EnergyLevel INTEGER,
    SocialInteractionScore INTEGER,
    CopingStrategy TEXT,
    TherapistNotes TEXT,
    FollowUpRecommended INTEGER,
    FollowUpDate DATE,
    AssessmentMethod TEXT,
    DurationMinutes INTEGER,
    ConsentProvided TEXT,
    RecordedBy TEXT,
    RevisionNumber INTEGER,
    ValidationStatus TEXT,
    ValidationDate DATE,
    RiskFlag TEXT,
    ActionPlan TEXT,
    ReviewedBy TEXT,
    ReviewDate DATE
);

INSERT INTO PatientMoodAssessment VALUES (5001,401,'2023-07-12',7,3,2,4,6,5,7,'Exercise and journaling','Patient appears stable','0',NULL,'Questionnaire',8,'Yes','Nurse Ana',1,'Validated','2023-07-13','Low','Monitor monthly','Dr Gomez','2023-07-14');
INSERT INTO PatientMoodAssessment VALUES (5002,402,'2023-08-22',5,6,5,7,4,3,5,'Mindfulness meditation','Elevated anxiety observed','1','2023-09-01','Interview',12,'Yes','Therapist Ben',2,'Pending',NULL,'Medium','Refer to psychiatrist','Dr Chen','2023-08-23');
INSERT INTO PatientMoodAssessment VALUES (5003,403,'2023-09-30',9,2,1,3,8,7,9,'Regular walking','Positive outlook','0',NULL,'Electronic',5,'Yes','Nurse Carla',1,'Validated','2023-10-01','Low','Continue current care','Dr Patel','2023-10-02');

-- Records of pharmacy regulatory submissions
CREATE TABLE PharmacyRegulatorySubmission (
    SubmissionID INTEGER PRIMARY KEY,
    SubmissionDate DATE,
    ProductName TEXT,
    ProductCode TEXT,
    SubmissionType TEXT,
    RegulatoryBody TEXT,
    Status TEXT,
    ReviewStartDate DATE,
    ReviewEndDate DATE,
    Reviewer TEXT,
    Outcome TEXT,
    Comments TEXT,
    SupportingDocumentCount INTEGER,
    ElectronicSignature TEXT,
    AuthorizedBy TEXT,
    AuthorizationDate DATE,
    ExpirationDate DATE,
    RenewalRequired TEXT,
    RenewalDueDate DATE,
    AmendmentFlag TEXT,
    AmendmentDate DATE,
    FeeAmount REAL,
    FeeCurrency TEXT,
    FileReference TEXT,
    InternalTrackingNumber TEXT
);

INSERT INTO PharmacyRegulatorySubmission VALUES (8001,'2023-04-15','PainReliefPlus','PRP001','New Drug','FDA','Pending','2023-04-20',NULL,'Reviewer A','', 'Initial submission','3','Sig123','Director John','2023-04-16','2025-04-15','No',NULL,'No',NULL,15000.00,'USD','FR001','TRK8001');
INSERT INTO PharmacyRegulatorySubmission VALUES (8002,'2023-06-01','AntibioticX','ABX500','Supplemental','EMA','Approved','2023-06-05','2023-07-10','Reviewer B','Approved','All requirements met','5','Sig456','Director Mary','2023-06-02','2026-06-01','Yes','2025-06-01','No',NULL,20000.00,'EUR','FR002','TRK8002');
INSERT INTO PharmacyRegulatorySubmission VALUES (8003,'2023-09-10','VaccineZ','VCZ202','Renewal','Health Canada','Under Review','2023-09-15',NULL,'Reviewer C','', 'Submitted renewal documents','4','Sig789','Director Lee','2023-09-11','2024-09-10','Yes','2024-09-09','Yes','2023-10-01',5000.00,'CAD','FR003','TRK8003');

-- Logs of laboratory instrument failures
CREATE TABLE LaboratoryInstrumentFailureLog (
    FailureID INTEGER PRIMARY KEY,
    InstrumentID TEXT,
    InstrumentModel TEXT,
    Manufacturer TEXT,
    FailureDate DATE,
    DetectedBy TEXT,
    FailureMode TEXT,
    ImpactedTests TEXT,
    DowntimeHours INTEGER,
    RootCause TEXT,
    CorrectiveAction TEXT,
    CorrectiveActionDate DATE,
    VerificationStatus TEXT,
    VerificationDate DATE,
    SparePartUsed TEXT,
    SparePartCost REAL,
    ServiceProvider TEXT,
    ServiceContractID TEXT,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    Comments TEXT,
    PriorityLevel TEXT,
    NotificationSent TEXT,
    NotificationDate DATE,
    ResolutionCode TEXT,
    AuditLog TEXT
);

INSERT INTO LaboratoryInstrumentFailureLog VALUES (3001,'INST1001','Centrifuge X200','LabCo','2023-03-12','Tech Mark','Mechanical jam','CBC, Chemistry',4,'Worn bearing','Replaced bearing','2023-03-15','Completed','2023-03-16','Bearing-XYZ',250.00,'ServicePro','SC001','0',NULL,'Replaced part and calibrated','High','Yes','2023-03-13','RC01','LogA');
INSERT INTO LaboratoryInstrumentFailureLog VALUES (3002,'INST2002','Spectrometer S500','OptiLab','2023-07-05','Tech Sara','Laser drift','Mass Spec',8,'Laser diode degradation','Swapped laser module','2023-07-10','Completed','2023-07-11','LaserMod-A1',1200.00,'OptiServ','SC045','1','2023-07-20','Scheduled preventive check','Medium','Yes','2023-07-06','RC02','LogB');
INSERT INTO LaboratoryInstrumentFailureLog VALUES (3003,'INST3003','Analyzer A300','BioAnalyte','2023-11-20','Tech Luis','Software crash','Urine analysis',2,'Corrupt firmware','Reinstalled firmware','2023-11-22','Completed','2023-11-23','',0.00,'InHouse','SC000','0',NULL,'Firmware update applied','Low','No',NULL,'RC03','LogC');

-- Economic analyses related to health services
CREATE TABLE HealthEconomicsAnalysis (
    AnalysisID INTEGER PRIMARY KEY,
    AnalysisDate DATE,
    StudyTitle TEXT,
    LeadAnalyst TEXT,
    Department TEXT,
    CostPerspective TEXT,
    TimeHorizonYears INTEGER,
    DiscountRate REAL,
    PopulationSize INTEGER,
    InterventionName TEXT,
    ComparatorName TEXT,
    IncrementalCost REAL,
    IncrementalQALY REAL,
    ICER REAL,
    SensitivityAnalysisPerformed TEXT,
    ProbabilisticAnalysis TEXT,
    ResultSummary TEXT,
    PublicationStatus TEXT,
    PublicationReference TEXT,
    FundingSource TEXT,
    GrantNumber TEXT,
    EthicalApproval TEXT,
    ApprovalDate DATE,
    DataAvailability TEXT,
    Notes TEXT,
    Version INTEGER
);

INSERT INTO HealthEconomicsAnalysis VALUES (9001,'2023-02-01','Cost Effectiveness of Telehealth','Dr Allen','Health Economics','Societal',5,3.5,15000,'Telehealth Consult','In‑person Visit',-20000.00,0.5,-40000.00,'Yes','Yes','Telehealth reduces costs and improves QALY','Submitted','', 'National Health Fund','NHF2022','Approved','2022-12-15','Restricted','Preliminary results',1);
INSERT INTO HealthEconomicsAnalysis VALUES (9002,'2023-08-15','Budget Impact of New Oncology Drug','Dr Patel','Pharmacy','Provider',3,0,2500,'OncoMedX','Standard Chemotherapy',500000.00,1.2,416666.67,'No','No','High budget impact anticipated','In Review','J Med Econ','PharmaCo Grant','Pending','Pending','2023-07-20','Public','',2);
INSERT INTO HealthEconomicsAnalysis VALUES (9003,'2023-11-30','Economic Evaluation of Preventive Screening','Dr Kim','Epidemiology','Payer',10,4.0,50000,'Screening A','No Screening',-1500000.00,2.0,-750000.00,'Yes','Yes','Screening yields cost savings over decade','Published','J Public Health','Govt Research','GR2023','Approved','2023-05-10','Open','',3);

-- Funding records for community health initiatives
CREATE TABLE CommunityHealthFunding (
    FundingID INTEGER PRIMARY KEY,
    ProgramName TEXT,
    FundingAgency TEXT,
    AwardDate DATE,
    Amount REAL,
    Currency TEXT,
    DurationMonths INTEGER,
    TargetPopulation TEXT,
    GeographicRegion TEXT,
    ObjectiveSummary TEXT,
    EligibilityCriteria TEXT,
    MatchingRequirement REAL,
    ReportingFrequency TEXT,
    ReportDueDate DATE,
    ContactPerson TEXT,
    ContactEmail TEXT,
    Status TEXT,
    DisbursementDate DATE,
    DisbursementAmount REAL,
    ExpirationDate DATE,
    RenewalOption TEXT,
    RenewalDeadline DATE,
    EvaluationMetric TEXT,
    EvaluationScore REAL,
    Notes TEXT,
    InternalProjectCode TEXT
);

INSERT INTO CommunityHealthFunding VALUES (12001,'Youth Nutrition Outreach','City Health Dept','2023-01-20',75000.00,'USD',24,'Children 5‑12','Urban','Improve nutrition knowledge','Non‑profit orgs',0.2,'Quarterly','2023-04-30','Maria Lopez','mlopez@cityhealth.org','Active','2023-02-15',37500.00,'2025-01-20','Yes','2024-12-31','Attendance Rate',85.5,'First half disbursed','CHF001');
INSERT INTO CommunityHealthFunding VALUES (12002,'Rural Diabetes Screening','State Grant Agency','2023-05-10',120000.00,'USD',36,'Adults 30‑65','Rural','Early detection of diabetes','Local clinics',0.1,'Annually','2024-05-10','John Miller','jmiller@stategrant.org','Pending','2023-06-01',60000.00,'2026-05-10','No',NULL,'Screening Coverage',78.0,'Awaiting approval for next tranche','CHF002');
INSERT INTO CommunityHealthFunding VALUES (12003,'Mental Health Awareness Campaign','National Health Foundation','2023-09-01',50000.00,'USD',12,'General public','National','Reduce stigma','Non‑profits, NGOs',0.0,'Semi‑annual','2024-02-01','Emily Davis','edavis@nhf.org','Awarded','2023-09-15',25000.00,'2024-09-01','Yes','2024-08-15','Public Survey Score',92.3,'Phase one completed','CHF003');

-- Records of donations of medical supplies
CREATE TABLE MedicalSupplyDonations (
    DonationID INTEGER PRIMARY KEY,
    DonorName TEXT,
    DonorType TEXT,
    DonationDate DATE,
    ItemDescription TEXT,
    Quantity INTEGER,
    Unit TEXT,
    ExpirationDate DATE,
    ReceivedBy TEXT,
    StorageLocation TEXT,
    ConditionStatus TEXT,
    ValuationAmount REAL,
    ValuationCurrency TEXT,
    AllocationPurpose TEXT,
    AllocationDate DATE,
    AllocatedTo TEXT,
    DistributionMethod TEXT,
    Notes TEXT,
    TaxDeductionEligible TEXT,
    TaxDeductionAmount REAL,
    TaxDeductionCurrency TEXT,
    ReceiptIssued TEXT,
    ReceiptNumber TEXT,
    ComplianceChecked TEXT,
    ComplianceCheckDate DATE,
    AuditReference TEXT,
    InternalReference TEXT
);

INSERT INTO MedicalSupplyDonations VALUES (4501,'HealthAid Org','Non‑profit','2023-03-05','Surgical masks','5000','pieces','2024-12-31','Nurse Jane','Warehouse A','New',2500.00,'USD','COVID‑19 response','2023-03-10','Emergency Dept','Direct distribution','Donated during pandemic','Yes',2500.00,'USD','Yes','REC001','Yes','2023-03-06','AUD001','MDN001');
INSERT INTO MedicalSupplyDonations VALUES (4502,'PharmaCo','Corporation','2023-07-12','Gloves (latex)','20000','boxes','2025-06-30','Logistics Mike','Warehouse B','New',4000.00,'USD','General hygiene','2023-07-20','All Wards','Inventory replenishment','Standard corporate donation','Yes',4000.00,'USD','Yes','REC002','Yes','2023-07-13','AUD002','MDN002');
INSERT INTO MedicalSupplyDonations VALUES (4503,'Community Fund','Private','2023-11-22','Bandages','1500','rolls','2026-01-15','Volunteer Sam','Storage Room 3','New',750.00,'USD','First aid kits','2023-11-28','Outpatient Clinic','Package distribution','Local community support','Yes',750.00,'USD','Yes','REC003','Yes','2023-11-23','AUD003','MDN003');

-- Usage metrics for telehealth platforms
CREATE TABLE TelehealthPlatformUsage (
    SessionID INTEGER PRIMARY KEY,
    PlatformName TEXT,
    SessionDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    ProviderID INTEGER,
    ProviderSpecialty TEXT,
    PatientID INTEGER,
    PatientAge INTEGER,
    PatientGender TEXT,
    SessionType TEXT,
    ConnectionQuality TEXT,
    AudioOnly TEXT,
    VideoResolution TEXT,
    BandwidthMbps REAL,
    DataTransferredMB REAL,
    PlatformVersion TEXT,
    AuthenticationMethod TEXT,
    SessionOutcome TEXT,
    FollowUpScheduled INTEGER,
    FollowUpDate DATE,
    Notes TEXT,
    RecordedBy TEXT,
    RecordingAvailable TEXT,
    RecordingPath TEXT,
    BillingCode TEXT,
    ChargeAmount REAL,
    ChargeCurrency TEXT,
    AuditLog TEXT,
    ComplianceStatus TEXT
);

INSERT INTO TelehealthPlatformUsage VALUES (701,'MediConnect','2023-08-01','09:00','09:30',110,'Cardiology',401,58,'Female','Consultation','Good','No','720p',2.5,15.2,'v2.1','OAuth','Completed',1,'2023-08-15','Routine follow‑up','Nurse Lily','Yes','/recordings/701.mp4','C101',150.00,'USD','Log701','Compliant');
INSERT INTO TelehealthPlatformUsage VALUES (702,'HealthLink','2023-09-12','14:15','14:45',115,'Dermatology',402,34,'Male','Consultation','Fair','Yes','480p',1.8,10.5,'v3.0','SAML','Completed',0,NULL,'Skin rash assessment','Nurse Omar','No',NULL,'C102',120.00,'USD','Log702','Compliant');
INSERT INTO TelehealthPlatformUsage VALUES (703,'VirtualCare','2023-10-20','11:00','11:20',120,'Psychology',403,45,'Female','Therapy','Excellent','No','1080p',3.2,20.0,'v1.9','Password','Completed',1,'2023-11-05','Coping strategies','Therapist Ana','Yes','/recordings/703.mp4','C103',200.00,'USD','Log703','Compliant');