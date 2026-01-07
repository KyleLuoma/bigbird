-- RadiologyDoseAudit: audit records for radiology dose administration
CREATE TABLE RadiologyDoseAudit
(
    RecordID INTEGER NOT NULL,
    ExamDate DATE NULL,
    Modality TEXT NULL,
    Dose_mGy REAL NULL,
    BodyPart TEXT NULL,
    Technician TEXT NULL,
    Radiologist TEXT NULL,
    MachineID TEXT NULL,
    Protocol TEXT NULL,
    Units TEXT NULL,
    Comments TEXT NULL,
    AuditDate DATE NULL,
    ApprovedBy TEXT NULL,
    AuditStatus TEXT NULL,
    Location TEXT NULL,
    Department TEXT NULL,
    Shift TEXT NULL,
    DoseReference_mGy REAL NULL,
    DeviationPercent REAL NULL,
    FollowUpRequired INTEGER NULL,
    PRIMARY KEY (RecordID)
);

INSERT INTO RadiologyDoseAudit VALUES (1,'2023-01-15','CT',12.5,'Head','JohnDoe','DrSmith','CT01','HeadProtocol','mGy','Routine scan','2023-01-16','AdminA','Approved','WingA','Radiology','Day',10.0,25.0,1);
INSERT INTO RadiologyDoseAudit VALUES (2,'2023-02-10','MRI',0.0,'Knee','JaneDoe','DrLee','MRI02','KneeProtocol','mGy','No dose','2023-02-11','AdminB','Approved','WingB','Radiology','Night',0.0,0.0,0);
INSERT INTO RadiologyDoseAudit VALUES (3,'2023-03-05','XRay',0.8,'Chest','MikeBrown','DrTaylor','XR03','ChestProtocol','mGy','Low dose','2023-03-06','AdminC','Pending','WingC','Radiology','Evening',1.0,-20.0,0);

-- LaboratorySafetyInspection: periodic safety checks of laboratory environments
CREATE TABLE LaboratorySafetyInspection
(
    InspectionID INTEGER NOT NULL,
    InspectionDate DATE NULL,
    InspectorName TEXT NULL,
    LabSection TEXT NULL,
    PPECompliance INTEGER NULL,
    ChemicalStorage INTEGER NULL,
    FireExtinguishers INTEGER NULL,
    EyeWashStatus INTEGER NULL,
    VentilationCheck INTEGER NULL,
    EquipmentCalibration INTEGER NULL,
    BiohazardDisposal INTEGER NULL,
    WasteSegregation INTEGER NULL,
    TrainingRecords INTEGER NULL,
    ObservationNotes TEXT NULL,
    CorrectiveAction TEXT NULL,
    Status TEXT NULL,
    FollowUpDate DATE NULL,
    Score REAL NULL,
    Comments TEXT NULL,
    Signature TEXT NULL,
    PRIMARY KEY (InspectionID)
);

INSERT INTO LaboratorySafetyInspection VALUES (101,'2023-01-20','AliceWhite','Microbiology',1,1,1,1,1,1,1,1,1,'All good','None','Complete',NULL,95.5,'','AliceWhite');
INSERT INTO LaboratorySafetyInspection VALUES (102,'2023-02-18','BobGreen','Chemistry',0,1,0,1,0,1,0,0,0,'PPE lacking','Provide goggles','Pending','2023-03-01',78.0,'Delayed corrective action','BobGreen');
INSERT INTO LaboratorySafetyInspection VALUES (103,'2023-03-22','CarolBlack','Pathology',1,0,1,1,1,0,1,1,1,'Storage issue','Reorganize chemicals','Complete',NULL,88.2,'','CarolBlack');

-- PatientCareCoordination: coordination of multidisciplinary patient care plans
CREATE TABLE PatientCareCoordination
(
    CoordinationID INTEGER NOT NULL,
    StartDate DATE NULL,
    EndDate DATE NULL,
    CareTeamLead TEXT NULL,
    PrimaryNurse TEXT NULL,
    SocialWorker TEXT NULL,
    PhysicalTherapist TEXT NULL,
    OccupationalTherapist TEXT NULL,
    Dietitian TEXT NULL,
    CaseManager TEXT NULL,
    CommunicationMode TEXT NULL,
    Frequency TEXT NULL,
    Goals TEXT NULL,
    Status TEXT NULL,
    NextReviewDate DATE NULL,
    PatientPreference TEXT NULL,
    Language TEXT NULL,
    ConsentGiven INTEGER NULL,
    Notes TEXT NULL,
    EscalationLevel INTEGER NULL,
    PRIMARY KEY (CoordinationID)
);

INSERT INTO PatientCareCoordination VALUES (5001,'2023-01-01','2023-06-30','DrMiller','NurseAnna','SWLaura','PTMark','OTJenna','DietSam','CMEmily','Email','Weekly','Functional recovery','Active','2023-04-01','Home','English',1,'Initial plan','2');
INSERT INTO PatientCareCoordination VALUES (5002,'2023-02-15','2023-08-15','DrChen','NurseBob','SWMike','PTLucy','OTTom','DietRita','CMJohn','Phone','Biweekly','Pain management','Active','2023-05-15','Hospital','Spanish',1,'Adjusted meds','1');
INSERT INTO PatientCareCoordination VALUES (5003,'2023-03-10','2023-09-10','DrPatel','NurseEve','SWNina','PTSteve','OTAmy','DietLee','CMGrace','InPerson','Monthly','Discharge planning','Pending','2023-06-10','Rehab Center','French',0,'Awaiting consent','3');

-- MedicalStaffCredentialing: records of staff professional credentials
CREATE TABLE MedicalStaffCredentialing
(
    CredentialID INTEGER NOT NULL,
    StaffName TEXT NULL,
    StaffRole TEXT NULL,
    CredentialType TEXT NULL,
    CredentialNumber TEXT NULL,
    IssuingAuthority TEXT NULL,
    IssueDate DATE NULL,
    ExpiryDate DATE NULL,
    VerifiedBy TEXT NULL,
    VerificationDate DATE NULL,
    Status TEXT NULL,
    Comments TEXT NULL,
    RenewalNoticeDate DATE NULL,
    LicenseNumber TEXT NULL,
    Specialty TEXT NULL,
    Department TEXT NULL,
    Accreditation TEXT NULL,
    CredentialURL TEXT NULL,
    AuditTrail TEXT NULL,
    LastUpdated DATE NULL,
    PRIMARY KEY (CredentialID)
);

INSERT INTO MedicalStaffCredentialing VALUES (20001,'DrJohnDoe','Physician','BoardCertification','BC12345','MedicalBoard','2018-05-01','2023-05-01','AdminSara','2023-04-20','Active','','2023-04-01','LIC9876','Cardiology','Cardiology','ABCN','http://example.com/cred/20001','Created','2023-04-20');
INSERT INTO MedicalStaffCredentialing VALUES (20002,'NurseJaneSmith','Nurse','RNLicense','RN54321','StateNursingBoard','2019-08-15','2024-08-15','AdminMike','2023-07-10','Active','','2024-07-01','LIC1234','Pediatrics','Pediatrics','XYZ','http://example.com/cred/20002','Created','2023-07-10');
INSERT INTO MedicalStaffCredentialing VALUES (20003,'TechBobLee','LabTechnician','ClinicalLabScientist','CLS1122','LabBoard','2020-01-10','2025-01-10','AdminLia','2023-01-05','Active','','2024-12-31','LIC5566','Microbiology','Microbiology','LMN','http://example.com/cred/20003','Created','2023-01-05');

-- HospitalSustainabilityReport: annual sustainability metrics for the hospital
CREATE TABLE HospitalSustainabilityReport
(
    ReportID INTEGER NOT NULL,
    ReportYear INTEGER NULL,
    EnergyConsumptionMWh REAL NULL,
    WaterUsageLiters REAL NULL,
    WasteGeneratedKg REAL NULL,
    RecyclingRatePercent REAL NULL,
    SolarProductionMWh REAL NULL,
    LEEDCertificationLevel TEXT NULL,
    GreenInitiativesCount INTEGER NULL,
    CarbonFootprintTonnes REAL NULL,
    EmissionsReducedTonnes REAL NULL,
    ProcurementPolicy TEXT NULL,
    StaffTrainingHours INTEGER NULL,
    CommunityOutreachEvents INTEGER NULL,
    ComplianceScore REAL NULL,
    Notes TEXT NULL,
    SubmittedBy TEXT NULL,
    SubmissionDate DATE NULL,
    ReviewStatus TEXT NULL,
    Recommendations TEXT NULL,
    PRIMARY KEY (ReportID)
);

INSERT INTO HospitalSustainabilityReport VALUES (301,2022,15000.5,2500000,50000,45.2,2000.0,'Gold',12,1200.0,300.0,'SustainableProcurement',350,20,88.5,'Improved recycling','EnvOfficer','2023-01-15','Approved','Install more solar panels');
INSERT INTO HospitalSustainabilityReport VALUES (302,2023,14000.0,2400000,48000,48.0,2200.0,'Platinum',15,1100.0,350.0,'GreenSupplyChain',400,25,91.0,'Energy saving measures','EnvOfficer','2024-01-20','Pending','Upgrade HVAC system');
INSERT INTO HospitalSustainabilityReport VALUES (303,2024,13000.8,2300000,46000,50.5,2500.0,'Platinum',18,1000.0,400.0,'ZeroWasteGoal',450,30,93.5,'Excellent performance','EnvOfficer','2025-01-10','Draft','Expand bike parking');

-- ClinicalOutcomeDashboard: key clinical outcome metrics displayed on dashboards
CREATE TABLE ClinicalOutcomeDashboard
(
    DashboardID INTEGER NOT NULL,
    MetricName TEXT NULL,
    MeasurementDate DATE NULL,
    Value REAL NULL,
    Unit TEXT NULL,
    Target REAL NULL,
    Department TEXT NULL,
    PhysicianInCharge TEXT NULL,
    DataSource TEXT NULL,
    Frequency TEXT NULL,
    Trend TEXT NULL,
    Comments TEXT NULL,
    GeneratedBy TEXT NULL,
    GenerationDate DATE NULL,
    Status TEXT NULL,
    AlertFlag INTEGER NULL,
    VisualizationType TEXT NULL,
    AccessLevel TEXT NULL,
    LastUpdated DATE NULL,
    ReviewDate DATE NULL,
    PRIMARY KEY (DashboardID)
);

INSERT INTO ClinicalOutcomeDashboard VALUES (9001,'30DayReadmission','2023-12-31',12.5,'Percent',10.0,'Cardiology','DrMiller','EHR','Monthly','Up','Slight increase','AnalystA','2024-01-05','Review','1','BarChart','Admin','2024-01-05','2024-01-10');
INSERT INTO ClinicalOutcomeDashboard VALUES (9002,'SurgicalSiteInfection','2023-12-31',2.0,'Percent',1.5,'Surgery','DrChen','InfectionDB','Monthly','Stable','Below target','AnalystB','2024-01-06','OK','0','LineChart','Admin','2024-01-06','2024-01-12');
INSERT INTO ClinicalOutcomeDashboard VALUES (9003,'AverageLengthOfStay','2023-12-31',4.8,'Days',5.0,'GeneralMedicine','DrPatel','EHR','Quarterly','Down','Improving','AnalystC','2024-01-07','OK','0','Gauge','Admin','2024-01-07','2024-01-15');

-- PharmacyPricingStrategy: pricing strategies for pharmacy items
CREATE TABLE PharmacyPricingStrategy
(
    StrategyID INTEGER NOT NULL,
    DrugName TEXT NULL,
    GenericName TEXT NULL,
    PricingModel TEXT NULL,
    BasePrice REAL NULL,
    DiscountPercent REAL NULL,
    InsuranceCoverage TEXT NULL,
    OutOfPocketCost REAL NULL,
    EffectiveDate DATE NULL,
    EndDate DATE NULL,
    ApprovalStatus TEXT NULL,
    Committee TEXT NULL,
    Reason TEXT NULL,
    MarketSharePercent REAL NULL,
    ProfitMarginPercent REAL NULL,
    VolumeThreshold INTEGER NULL,
    TierLevel TEXT NULL,
    Notes TEXT NULL,
    CreatedBy TEXT NULL,
    CreationDate DATE NULL,
    PRIMARY KEY (StrategyID)
);

INSERT INTO PharmacyPricingStrategy VALUES (4001,'Atorvastatin','Atorvastatin','Fixed','15.0',10.0,'Full',5.0,'2023-01-01','2023-12-31','Approved','PricingBoard','Standard generic pricing',25.0,20.0,1000,'Tier1','No special notes','PharmacyMgr','2022-12-15');
INSERT INTO PharmacyPricingStrategy VALUES (4002,'Ceftriaxone','Ceftriaxone','Tiered','30.0',15.0,'Partial',12.5,'2023-06-01','2024-05-31','Pending','PricingCommittee','Introduce tiered discounts',10.0,18.0,500,'Tier2','Review after six months','PharmacyMgr','2023-05-20');
INSERT INTO PharmacyPricingStrategy VALUES (4003,'Metformin','Metformin','Fixed','8.0',5.0,'Full',3.5,'2022-01-01','2022-12-31','Expired','PricingBoard','Legacy pricing',30.0,22.0,2000,'Tier1','Discontinued','PharmacyMgr','2021-12-01');

-- MedicalImagingAnnotation: annotations made on medical images
CREATE TABLE MedicalImagingAnnotation
(
    AnnotationID INTEGER NOT NULL,
    ImageID TEXT NULL,
    Modality TEXT NULL,
    Annotator TEXT NULL,
    AnnotationDate DATE NULL,
    RegionOfInterest TEXT NULL,
    Label TEXT NULL,
    ConfidenceScore REAL NULL,
    Description TEXT NULL,
    ReviewStatus TEXT NULL,
    ReviewedBy TEXT NULL,
    ReviewDate DATE NULL,
    Comments TEXT NULL,
    ExportFormat TEXT NULL,
    FilePath TEXT NULL,
    AssociatedReportID TEXT NULL,
    ClinicalSignificance TEXT NULL,
    FollowUpNeeded INTEGER NULL,
    FollowUpDate DATE NULL,
    Tags TEXT NULL,
    PRIMARY KEY (AnnotationID)
);

INSERT INTO MedicalImagingAnnotation VALUES (7001,'IMG001','CT','DrSmith','2023-02-10','LeftLobe','Nodule','0.92','Small nodule observed','Approved','DrLee','2023-02-11','','DICOM','/data/img001.dcm','RPT1001','Potential malignancy',1,'2023-03-01','lung,nodule');
INSERT INTO MedicalImagingAnnotation VALUES (7002,'IMG002','MRI','DrTaylor','2023-03-05','SpinalCord','Compression','0.85','Mild compression noted','Pending','DrPatel','2023-03-06','','JPEG','/data/img002.jpg','RPT1002','Neurological risk',0,NULL,'spine,compression');
INSERT INTO MedicalImagingAnnotation VALUES (7003,'IMG003','XRay','DrLee','2023-01-20','RightFemur','Fracture','0.98','Obvious fracture line','Approved','DrMiller','2023-01-21','','PNG','/data/img003.png','RPT1003','Orthopedic trauma',1,'2023-02-10','bone,fracture');

-- HealthcareProviderNetwork: external provider entities in the network
CREATE TABLE HealthcareProviderNetwork
(
    NetworkID INTEGER NOT NULL,
    ProviderName TEXT NULL,
    ProviderType TEXT NULL,
    NPI TEXT NULL,
    Address TEXT NULL,
    City TEXT NULL,
    State TEXT NULL,
    ZipCode TEXT NULL,
    PhoneNumber TEXT NULL,
    Email TEXT NULL,
    ContractStartDate DATE NULL,
    ContractEndDate DATE NULL,
    ServiceScope TEXT NULL,
    Accreditation TEXT NULL,
    Rating REAL NULL,
    PatientVolume INTEGER NULL,
    ReferralRate REAL NULL,
    NetworkTier TEXT NULL,
    PrimaryContact TEXT NULL,
    Status TEXT NULL,
    PRIMARY KEY (NetworkID)
);

INSERT INTO HealthcareProviderNetwork VALUES (90001,'HealthFirst Clinic','PrimaryCare','1234567890','123 Main St','Springfield','IL','62704','5551234567','contact@healthfirst.com','2022-01-01','2025-12-31','Outpatient','JointCommission',4.5,1200,12.5,'TierA','JaneDoe','Active');
INSERT INTO HealthcareProviderNetwork VALUES (90002,'RiverSide Hospital','Hospital','0987654321','456 River Rd','Riverdale','NY','10001','5559876543','info@riverside.org','2021-06-15','2024-06-14','Inpatient','CMS',4.2,2500,15.0,'TierB','JohnSmith','Active');
INSERT INTO HealthcareProviderNetwork VALUES (90003,'Metro Imaging Center','Imaging','1122334455','789 Center Ave','Metropolis','CA','90002','5552223333','service@metroimaging.com','2023-03-01','2026-02-28','Diagnostic Imaging','Accredited',4.8,800,10.0,'TierA','EmilyWhite','Pending');

-- InpatientMealPlan: meal plans assigned to inpatient wards
CREATE TABLE InpatientMealPlan
(
    MealPlanID INTEGER NOT NULL,
    Ward TEXT NULL,
    DietType TEXT NULL,
    CaloricTarget INTEGER NULL,
    ProteinGrams INTEGER NULL,
    CarbGrams INTEGER NULL,
    FatGrams INTEGER NULL,
    MealFrequency INTEGER NULL,
    BreakfastTime TEXT NULL,
    LunchTime TEXT NULL,
    DinnerTime TEXT NULL,
    SnackTime TEXT NULL,
    Restrictions TEXT NULL,
    Allergens TEXT NULL,
    SpecialInstructions TEXT NULL,
    CreatedBy TEXT NULL,
    CreationDate DATE NULL,
    ReviewDate DATE NULL,
    Status TEXT NULL,
    Notes TEXT NULL,
    PRIMARY KEY (MealPlanID)
);

INSERT INTO InpatientMealPlan VALUES (12001,'Cardiology','LowSodium',1800,80,200,60,3,'07:00','12:00','18:00','10:00','No added salt','None','Provide low‑sodium options','DieticianA','2023-01-05','2023-06-05','Active','');
INSERT INTO InpatientMealPlan VALUES (12002,'Oncology','HighProtein',2200,120,180,70,3,'07:30','12:30','19:00','11:00','Limit sugars','Peanut','Include protein shakes','DieticianB','2023-02-10','2023-07-10','Active','Monitor weight');
INSERT INTO InpatientMealPlan VALUES (12003,'Geriatrics','Diabetic',1500,70,150,50,3,'08:00','13:00','18:30','09:30','Low carbs','Gluten','Use sugar substitutes','DieticianC','2023-03-15','2023-08-15','Pending','Await physician approval');