-- Hospital facilities and resources
CREATE TABLE HospitalFacility (
    FacilityID INTEGER PRIMARY KEY,
    FacilityName TEXT,
    Type TEXT,
    Building TEXT,
    Floor INTEGER,
    Wing TEXT,
    Capacity INTEGER,
    OpenDate DATE,
    RenovationDate DATE,
    ManagerName TEXT,
    ContactNumber TEXT,
    Email TEXT,
    OperationalStatus TEXT,
    EmergencyLevel INTEGER,
    AccreditationCode TEXT,
    AreaSqM REAL,
    BedCount INTEGER,
    ICUCount INTEGER,
    ORCount INTEGER,
    PharmacyCount INTEGER,
    LaboratoryCount INTEGER,
    ParkingSpots INTEGER,
    WalkInAvailable INTEGER,
    HelipadAvailable INTEGER,
    WasteManagementProtocol TEXT,
    EnergySource TEXT
);

INSERT INTO HospitalFacility VALUES (1,'Central Medical Center','Hospital','Main','1','North',500,'2005-06-15','2020-01-10','Alice Smith','5551234567','alice@cmc.org','Active',3,'ACC12345',1200.5,400,30,15,2,200,1,1,'Standard','Solar');
INSERT INTO HospitalFacility VALUES (2,'Westside Clinic','Clinic','West Wing','2','West',120,'2010-03-22','2018-07-05','Bob Jones','5559876543','bob@wclinic.org','Active',1,'ACC67890',300.0,50,5,0,1,30,0,0,'Standard','Grid');
INSERT INTO HospitalFacility VALUES (3,'East Research Pavilion','Research','East Annex','3','East',80,'2015-11-01','2022-05-12','Carol Lee','5555551212','carol@erp.org','Active',0,'ACC54321',150.0,20,0,0,0,10,0,0,'Enhanced','Wind');

-- Insurance policies linked to patients (no clinical data)
CREATE TABLE InsurancePolicy (
    PolicyID INTEGER PRIMARY KEY,
    ProviderName TEXT,
    PolicyNumber TEXT,
    PlanType TEXT,
    CoverageStart DATE,
    CoverageEnd DATE,
    Deductible REAL,
    CopayPercentage REAL,
    OutOfPocketMax REAL,
    NetworkType TEXT,
    PriorAuthorizationRequired INTEGER,
    LifetimeBenefitAmount REAL,
    AnnualBenefitAmount REAL,
    Exclusions TEXT,
    PremiumAmount REAL,
    PremiumFrequency TEXT,
    PolicyHolderName TEXT,
    PolicyHolderDOB DATE,
    RelationshipToHolder TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    AddressLine1 TEXT,
    City TEXT,
    State TEXT,
    PostalCode TEXT,
    Country TEXT,
    ClaimsProcessingCenter TEXT,
    OnlinePortalURL TEXT,
    CustomerServiceHours TEXT,
    PolicyStatus TEXT
);

INSERT INTO InsurancePolicy VALUES (101,'HealthSure','HS123456','PPO','2022-01-01','2025-12-31',500.0,20.0,5000.0,'Broad',1,100000.0,20000.0,'None',350.0,'Monthly','John Doe','1980-04-12','Self','5551112222','john.doe@healthsure.com','123 Main St','Metropolis','NY','10101','USA','CenterA','https://portal.healthsure.com','9am-5pm','Active');
INSERT INTO InsurancePolicy VALUES (102,'MediCover','MC654321','HMO','2021-06-15','2024-06-14',300.0,15.0,3000.0,'Restricted',0,80000.0,15000.0,'Dental,Vision','280.0','Quarterly','Jane Smith','1975-09-30','Spouse','5553334444','jane.smith@medicover.com','456 Oak Ave','Gotham','CA','90210','USA','CenterB','https://my.medicover.com','8am-6pm','Lapsed');
INSERT INTO InsurancePolicy VALUES (103,'SecureLife','SL987654','EPO','2023-03-01','2026-02-28',400.0,18.0,4000.0,'Mixed',1,120000.0,25000.0,'Orthodontics','400.0','Monthly','Emily Davis','1990-12-05','Child','5557778888','emily.davis@securelife.com','789 Pine Rd','Star City','TX','73301','USA','CenterC','https://securelife.com/portal','7am-7pm','Pending');

-- Medications dispensed to patients (no diagnostic overlap)
CREATE TABLE Medication (
    MedID INTEGER PRIMARY KEY,
    GenericName TEXT,
    BrandName TEXT,
    DosageMg REAL,
    DosageForm TEXT,
    Route TEXT,
    Frequency TEXT,
    DurationDays INTEGER,
    PrescribedDate DATE,
    StartDate DATE,
    EndDate DATE,
    PrescriberID INTEGER,
    PharmacyID INTEGER,
    BatchNumber TEXT,
    ExpirationDate DATE,
    StorageCondition TEXT,
    CostPerUnit REAL,
    TotalUnits INTEGER,
    TotalCost REAL,
    InsuranceCovered INTEGER,
    CopayAmount REAL,
    RefillAllowed INTEGER,
    MaxRefills INTEGER,
    Indication TEXT,
    Contraindications TEXT,
    SideEffects TEXT,
    MonitoringRequired INTEGER,
    Notes TEXT,
    ActiveIngredient TEXT,
    Strength TEXT,
    Manufacturer TEXT
);

INSERT INTO Medication VALUES (201,'Atorvastatin','Lipitor',20.0,'Tablet','Oral','Once daily',180,'2023-01-10','2023-01-12','2023-07-10',301,401,'B12345','2025-12-31','Room temperature',0.8,180,144.0,1,5.0,1,2,'Hyperlipidemia','Liver disease','Muscle pain',1,'Take with evening meal','Atorvastatin calcium','20 mg','Pfizer');
INSERT INTO Medication VALUES (202,'Metformin','Glucophage',500.0,'Tablet','Oral','Twice daily',365,'2022-05-01','2022-05-03','2023-05-03',302,402,'M67890','2024-11-30','Room temperature',0.2,730,146.0,1,2.0,1,3,'Type 2 Diabetes','Kidney failure','GI upset',1,'Take with food','Metformin hydrochloride','500 mg','Merck');
INSERT INTO Medication VALUES (203,'Lisinopril','Prinivil',10.0,'Tablet','Oral','Once daily',90,'2023-03-15','2023-03-16','2023-06-14',303,403,'L54321','2026-01-31','Room temperature',0.5,90,45.0,0,0.0,0,0,'Hypertension','Pregnancy','Cough',0,'','Lisinopril','10 mg','AstraZeneca');

-- Imaging studies metadata (no clinical results)
CREATE TABLE ImagingStudy (
    StudyID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    Modality TEXT,
    BodyPart TEXT,
    StudyDate DATE,
    OrderingPhysicianID INTEGER,
    PerformingTechnicianID INTEGER,
    DeviceSerial TEXT,
    ProtocolName TEXT,
    RadiationDose REAL,
    ContrastUsed INTEGER,
    ContrastType TEXT,
    InjectionVolumeMl REAL,
    ScanDurationMin REAL,
    ImageCount INTEGER,
    ImageFormat TEXT,
    StorageLocation TEXT,
    ReportStatus TEXT,
    PreliminaryFindings TEXT,
    FinalInterpretation TEXT,
    ReviewDate DATE,
    ReviewerID INTEGER,
    Notes TEXT,
    AccessionNumber TEXT,
    StudyDescription TEXT,
    BillingCode TEXT,
    PriorityLevel TEXT,
    ReferralSource TEXT,
    FollowUpRequired INTEGER,
    FollowUpDate DATE
);

INSERT INTO ImagingStudy VALUES (301,1001,'CT','Abdomen','2023-02-20',501,601,'CT12345','Abdomen Contrast','15.2',1,'Iodine',80.0,5.0,250,'DICOM','/archive/ct/2023/02/','Pending','','','','', 'Routine CT abdomen with contrast','CT-AB-001','73110','Routine','Physician Referral',0,NULL);
INSERT INTO ImagingStudy VALUES (302,1002,'MRI','Brain','2023-04-10',502,602,'MR67890','Brain MR','0',0,'',0.0,30.0,120,'DICOM','/archive/mr/2023/04/','Completed','No acute bleed','Normal','2023-04-12',701,'','MR-BR-001','Brain MR without contrast','70551','Urgent','ER',1,'2023-04-20');
INSERT INTO ImagingStudy VALUES (303,1003,'Ultrasound','Pelvis','2023-01-05',503,603,'US54321','Pelvic US','0',0,'',0.0,15.0,60,'DICOM','/archive/us/2023/01/','Completed','','Unremarkable','2023-01-07',702,'','US-PE-001','Transabdominal pelvic ultrasound','76856','Standard','Clinic',0,NULL);

-- Genetic test panels (no disease diagnosis)
CREATE TABLE GeneticTest (
    TestID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    TestName TEXT,
    SampleType TEXT,
    CollectionDate DATE,
    ReceivedDate DATE,
    DNAExtractionMethod TEXT,
    LibraryPrepKit TEXT,
    SequencingPlatform TEXT,
    TargetRegion TEXT,
    CoverageDepth INTEGER,
    VariantCount INTEGER,
    PathogenicVariants INTEGER,
    LikelyPathogenicVariants INTEGER,
    VUSCount INTEGER,
    ReportReleaseDate DATE,
    ReportingLab TEXT,
    ReportVersion TEXT,
    Interpretation TEXT,
    ClinicalSignificance TEXT,
    GeneList TEXT,
    AnnotationDatabase TEXT,
    BioinformaticsPipeline TEXT,
    QualityMetric REAL,
    ConcurrentTests TEXT,
    ConsentObtained INTEGER,
    ConsentDate DATE,
    FollowUpRecommendation TEXT,
    BillingCode TEXT,
    TestStatus TEXT,
    ReviewPhysicianID INTEGER
);

INSERT INTO GeneticTest VALUES (401,2001,'CardioGene Panel','Blood','2023-03-01','2023-03-03','SpinColumn','KitA','Illumina NovaSeq','Exons 1-20',200,15,1,0,2,'2023-03-10','GenLab','v1.2','No actionable findings','Negative','GeneA,GeneB,GeneC','ClinVar','GATK4',98.5,'','1','2023-02-28','Re-test in 5 years','81100','Completed',801);
INSERT INTO GeneticTest VALUES (402,2002,'OncoRisk Panel','Saliva','2023-05-12','2023-05-14','MagBead','KitB','Thermo S5','Full exome',100,30,0,2,5,'2023-05-20','OncoLab','v2.0','Potential actionable variant','VUS','BRCA1,BRCA2,TP53','COSMIC','BWA-MEM',95.0,'','1','2023-05-10','Genetic counseling','81200','Pending',802);
INSERT INTO GeneticTest VALUES (403,2003,'Pharmacogenomics','Blood','2023-02-20','2023-02-22','Silica','KitC','Ion Torrent','ADME genes',250,8,0,0,0,'2023-03-01','PharmaLab','v1.0','All tested variants are normal','Negative','CYP2D6,CYP2C19','PharmGKB','Samtools',99.2,'','1','2023-02-18','No dosage adjustment needed','81400','Completed',803);

-- Physicians and staff directory (no patient clinical data)
CREATE TABLE Physician (
    PhysicianID INTEGER PRIMARY KEY,
    FirstName TEXT,
    LastName TEXT,
    Specialty TEXT,
    Subspecialty TEXT,
    LicenseNumber TEXT,
    LicenseState TEXT,
    BoardCertified INTEGER,
    YearsInPractice INTEGER,
    HospitalAffiliation TEXT,
    Department TEXT,
    OfficePhone TEXT,
    MobilePhone TEXT,
    Email TEXT,
    PagerNumber TEXT,
    OfficeLocation TEXT,
    OfficeHours TEXT,
    ResearchInterests TEXT,
    AcademicRank TEXT,
    MedicalSchool TEXT,
    ResidencyProgram TEXT,
    FellowshipProgram TEXT,
    PublicationsCount INTEGER,
    ClinicalTrialsParticipated INTEGER,
    NPI TEXT,
    TaxID TEXT,
    EmploymentStatus TEXT,
    SalaryBand TEXT,
    LanguagesSpoken TEXT,
    EmergencyOnCall INTEGER,
    OnCallStart DATE,
    OnCallEnd DATE
);

INSERT INTO Physician VALUES (501,'David','Brown','Cardiology','Interventional','LIC123456','NY',1,15,'Central Medical Center','Cardiology','5551110001','5552220001','david.brown@cmc.org','5553330001','Room 210','Mon-Fri 8-12','Stent design','Associate Professor','Harvard','NYU','Stanford','25','3','1234567890','987654321','Full-time','$300k-$350k','English,Spanish',1,'2023-06-01','2023-06-07');
INSERT INTO Physician VALUES (502,'Emily','Clark','Radiology','Neuroradiology','LIC654321','CA',1,10,'Westside Clinic','Radiology','5554440002','5555550002','emily.clark@wclinic.org','5556660002','Room 45','Mon-Thu 9-5','MRI brain mapping','Assistant Professor','UCLA','UCSF','Mayo','18','5','2345678901','876543210','Part-time','$150k-$180k','English,French',0,NULL,NULL);
INSERT INTO Physician VALUES (503,'Frank','Davis','Pathology','Molecular','LIC789012','TX',0,8,'East Research Pavilion','Pathology','5557770003','5558880003','frank.davis@erp.org','5559990003','Lab 3','Tue-Thu 7-3','Genomic biomarkers','Research Fellow','MIT','UTHealth','Johns Hopkins','30','2','3456789012','765432109','Contract','$120k-$150k','English,German',0,NULL,NULL);

-- Appointment scheduling (no diagnostic info)
CREATE TABLE Appointment (
    AppointmentID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    PhysicianID INTEGER,
    AppointmentDate DATE,
    AppointmentTime TEXT,
    Department TEXT,
    VisitType TEXT,
    ReasonForVisit TEXT,
    CheckInStatus INTEGER,
    CheckInTime TEXT,
    CheckOutTime TEXT,
    RoomNumber TEXT,
    SchedulerID INTEGER,
    BookingMethod TEXT,
    AppointmentStatus TEXT,
    FollowUpNeeded INTEGER,
    FollowUpDate DATE,
    Notes TEXT,
    InsuranceVerified INTEGER,
    CoPayAmount REAL,
    CopayCollected INTEGER,
    CancellationReason TEXT,
    RescheduleFlag INTEGER,
    ReminderSent INTEGER,
    ArrivalMode TEXT,
    DurationMinutes INTEGER,
    TelehealthLink TEXT,
    ConsentFormSigned INTEGER,
    LanguagePreference TEXT,
    InterpreterNeeded INTEGER
);

INSERT INTO Appointment VALUES (601,3001,501,'2023-07-15','09:30','Cardiology','New Patient','Chest pain assessment',1,'09:25','10:15','210',701,'Phone','Completed',0,NULL,'','1',20,1,'','',0,1,'Walk-in',45,'','1','English',0);
INSERT INTO Appointment VALUES (602,3002,502,'2023-07-16','14:00','Radiology','Follow-up','Post-MRI review',1,'13:55','14:30','45',702,'Online','Completed',1,'2023-08-01','Review findings','1',0,1,'','0',1,'Patient portal',30,'https://telehealth.example.com/602','1','English',0);
INSERT INTO Appointment VALUES (603,3003,503,'2023-07-17','11:15','Pathology','Result Discussion','Biopsy results',0,NULL,NULL,'Lab 3',703,'Phone','No Show',0,NULL,'Attempted contact','0',0,0,'No answer','0',0,'Phone',0,'','0','Spanish',1);

-- Billing records (financial, no medical details)
CREATE TABLE BillingRecord (
    BillingID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    EncounterDate DATE,
    ServiceCode TEXT,
    ServiceDescription TEXT,
    ChargeAmount REAL,
    DiscountAmount REAL,
    NetAmount REAL,
    TaxAmount REAL,
    TotalPaid REAL,
    PaymentDate DATE,
    PaymentMethod TEXT,
    InsurancePaid REAL,
    PatientResponsibility REAL,
    ClaimNumber TEXT,
    ClaimStatus TEXT,
    BilledByStaffID INTEGER,
    BillingDepartment TEXT,
    AuditTrail TEXT,
    Adjustments TEXT,
    WriteOffAmount REAL,
    CollectionAgency TEXT,
    CollectionStatus TEXT,
    DateSentToCollection DATE,
    Notes TEXT,
    PriorBalance REAL,
    CurrentBalance REAL,
    PaymentPlan INTEGER,
    PaymentPlanDetails TEXT,
    LateFeeApplied INTEGER,
    LateFeeAmount REAL
);

INSERT INTO BillingRecord VALUES (701,4001,'2023-06-20','99213','Office visit','150.00','0.00','150.00','13.50','150.00','2023-06-21','Credit Card','0.00','150.00','CLM123456','Paid',801,'Outpatient','','',0.00,'','N/A',NULL,'','0.00','0.00','0','',0,0.00);
INSERT INTO BillingRecord VALUES (702,4002,'2023-07-05','70450','CT Scan','800.00','50.00','750.00','67.50','817.50','2023-07-06','Check','300.00','517.50','CLM654321','Pending',802,'Radiology','','',0.00,'','N/A',NULL,'','0.00','0.00','0','',0,0.00);
INSERT INTO BillingRecord VALUES (703,4003,'2023-07-12','83036','Genetic testing','1200.00','100.00','1100.00','99.00','1199.00','2023-07-13','Bank Transfer','800.00','399.00','CLM987654','Paid',803,'Genomics','','',0.00,'','N/A',NULL,'','0.00','0.00','0','',0,0.00);

-- Device inventory for hospital equipment
CREATE TABLE DeviceInventory (
    DeviceID INTEGER PRIMARY KEY,
    DeviceName TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyExpiration DATE,
    Location TEXT,
    Department TEXT,
    CurrentStatus TEXT,
    AssignedToStaffID INTEGER,
    CalibrationDate DATE,
    CalibrationDue DATE,
    MaintenanceContract INTEGER,
    MaintenanceProvider TEXT,
    LeaseTermMonths INTEGER,
    LeaseProvider TEXT,
    DepreciationMethod TEXT,
    OriginalCost REAL,
    CurrentBookValue REAL,
    LastServiceDate DATE,
    ServiceProvider TEXT,
    ServiceNotes TEXT,
    PowerRequirements TEXT,
    SoftwareVersion TEXT,
    NetworkIP TEXT,
    MACAddress TEXT,
    ComplianceStandard TEXT,
    RiskClassification TEXT,
    DisposalDate DATE,
    DisposalMethod TEXT,
    ReplacementDeviceID INTEGER
);

INSERT INTO DeviceInventory VALUES (801,'MRI Scanner','Siemens','MAGNETOM Skyra','SN12345','2020-01-15','2025-01-15','Radiology Wing','Radiology','Operational',502,'2023-06-01','2024-06-01',1,'Siemens Service',36,'MedicalLease','Straight Line',5000000.00,3500000.00,'2023-06-01','Siemens Service','Annual calibration','230V 50Hz','v1.2.3','192.168.1.10','00:1A:2B:3C:4D:5E','ISO 13485','High',NULL,NULL,NULL);
INSERT INTO DeviceInventory VALUES (802,'Ventilator','Philips','Respironics','SN67890','2019-05-20','2024-05-20','ICU','Intensive Care','In Maintenance',503,'2023-04-15','2024-04-15',1,'Philips Service',24,'LeasingCo','Declining Balance',120000.00,75000.00,'2023-04-15','Philips Service','Filter replacement','220V 60Hz','v3.4','192.168.2.20','00:1B:2C:3D:4E:5F','ISO 14971','Medium',NULL,NULL,NULL);
INSERT INTO DeviceInventory VALUES (803,'Laboratory Analyzer','Roche','cobas 6000','SN54321','2021-09-10','2026-09-10','Lab 3','Laboratory','Operational',504,'2023-07-10','2024-07-10',0,NULL,0,NULL,'Straight Line',250000.00,200000.00,'2023-07-10','Roche Service','Reagent calibration','110V 50Hz','v2.0','192.168.3.30','00:1C:2D:3E:4F:5A','ISO 15189','Low',NULL,NULL,NULL);

-- Research trial registry (no patient clinical mapping)
CREATE TABLE ResearchTrial (
    TrialID INTEGER PRIMARY KEY,
    TrialName TEXT,
    Sponsor TEXT,
    Phase TEXT,
    TherapeuticArea TEXT,
    StartDate DATE,
    EndDate DATE,
    EnrollmentTarget INTEGER,
    CurrentEnrollment INTEGER,
    InclusionCriteria TEXT,
    ExclusionCriteria TEXT,
    PrimaryOutcome TEXT,
    SecondaryOutcome TEXT,
    RandomizationMethod TEXT,
    Blinding TEXT,
    StudyDesign TEXT,
    RegulatoryApprovalDate DATE,
    RegulatoryBody TEXT,
    InvestigatorID INTEGER,
    SiteLocation TEXT,
    FundingAmount REAL,
    BudgetCode TEXT,
    DataSafetyMonitoringBoard INTEGER,
    DSMBChair TEXT,
    IRBApproval INTEGER,
    IRBApprovalDate DATE,
    PublicationPlan TEXT,
    DataSharingStatement TEXT,
    Status TEXT,
    LastUpdate DATE,
    Notes TEXT,
    ContactEmail TEXT,
    ContactPhone TEXT
);

INSERT INTO ResearchTrial VALUES (901,'CARDIO-101','HealthPharma','Phase II','Cardiology','2023-01-01','2024-12-31',200,85,'Age 18-65, LDL>130','Pregnancy, Liver disease','Reduction in LDL','Safety profile','Block randomization','Double blind','Randomized Controlled','2022-11-15','FDA',601,'Central Medical Center',5000000.00,'BGT001',1,'Dr Alice Smith',1,'2022-12-01','Manuscript submission','De-identified data repository','Active','2023-06-20','Monitor adverse events','alice.smith@healthpharma.com','5551112222');
INSERT INTO ResearchTrial VALUES (902,'NEURO-202','NeuroTech','Phase I','Neurology','2023-05-10','2025-05-09',50,20,'Diagnosed MS, Age 21-55','Concurrent immunotherapy','MRI lesion count','Cognitive scores','Simple randomization','Single blind','Open label','2023-04-01','EMA',602,'Westside Clinic',2000000.00,'BGT002',0,NULL,1,'2023-04-15','Conference abstract','Aggregate data only','Recruiting','2023-07-01','Screening ongoing','john.doe@neurotech.com','5553334444');
INSERT INTO ResearchTrial VALUES (903,'ONCO-303','OncoLife','Phase III','Oncology','2022-09-01','2026-08-31',500,300,'Stage II-III breast cancer','Previous chemo','Overall survival','Progression free survival','Stratified randomization','Triple blind','Multicenter','2022-07-20','Health Canada',603,'East Research Pavilion',8000000.00,'BGT003',1,'Dr Emily Clark',1,'2022-08-01','Peer reviewed journal','Public database with access controls','Ongoing','2023-06-30','Data monitoring quarterly','emily.clark@oncology.org','5555556666');