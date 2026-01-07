-- Community Outreach Program information
CREATE TABLE CommunityOutreach (
    OutreachID INTEGER PRIMARY KEY,
    ProgramName TEXT,
    StartDate DATE,
    EndDate DATE,
    TargetPopulation TEXT,
    Budget REAL,
    CoordinatorName TEXT,
    Location TEXT,
    NumSessions INTEGER,
    AvgAttendance INTEGER,
    MaterialsProvided INTEGER,
    FollowUpRequired INTEGER,
    FeedbackScore REAL,
    FundingSource TEXT,
    ContactPhone TEXT,
    Email TEXT,
    OutcomeDescription TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO CommunityOutreach (OutreachID,ProgramName,StartDate,EndDate,TargetPopulation,Budget,CoordinatorName,Location,NumSessions,AvgAttendance,MaterialsProvided,FollowUpRequired,FeedbackScore,FundingSource,ContactPhone,Email,OutcomeDescription,Notes,CreatedAt,UpdatedAt) VALUES (1,'HeartHealth', '2023-01-15','2023-06-15','Adults',15000.00,'Alice Smith','Downtown Clinic',12,45,200,1,4.5,'CityGrant','5551234','alice@hospital.org','Reduced cholesterol levels','', '2023-01-01','2023-01-01');
INSERT INTO CommunityOutreach VALUES (2,'DiabetesEducation','2023-02-01','2023-07-01','Seniors',12000.00,'Bob Jones','Community Center',10,30,150,1,4.2,'HealthFund','5555678','bob@hospital.org','Improved glucose monitoring',NULL,'2023-02-01','2023-02-01');
INSERT INTO CommunityOutreach VALUES (3,'YouthFitness','2023-03-10','2023-09-10','Teens',18000.00,'Carol Lee','High School Gym',15,60,250,0,4.8,'YouthGrant','5559012','carol@hospital.org','Increased activity rates',NULL,'2023-03-01','2023-03-01');

-- Blood Bank Inventory tracking
CREATE TABLE BloodBankInventory (
    BatchID INTEGER PRIMARY KEY,
    CollectionDate DATE,
    ExpiryDate DATE,
    BloodType TEXT,
    RhFactor TEXT,
    UnitsCollected INTEGER,
    UnitsUsed INTEGER,
    UnitsDiscarded INTEGER,
    ProcessingCenter TEXT,
    StorageLocation TEXT,
    TemperatureC REAL,
    HemolysisLevel REAL,
    LeukoreductionFlag INTEGER,
    PathogenInactivationFlag INTEGER,
    QualityScore REAL,
    InvestigatorName TEXT,
    Comments TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    DonorID INTEGER
);

INSERT INTO BloodBankInventory (BatchID,CollectionDate,ExpiryDate,BloodType,RhFactor,UnitsCollected,UnitsUsed,UnitsDiscarded,ProcessingCenter,StorageLocation,TemperatureC,HemolysisLevel,LeukoreductionFlag,PathogenInactivationFlag,QualityScore,InvestigatorName,Comments,CreatedAt,UpdatedAt,DonorID) VALUES (101,'2023-01-05','2023-07-05','A','Positive',50,30,2,'CenterA','Freezer1',-80.0,0.02,1,0,95.5,'DrSmith','All good', '2023-01-06','2023-01-06',1001);
INSERT INTO BloodBankInventory VALUES (102,'2023-02-10','2023-08-10','O','Negative',60,40,1,'CenterB','Freezer2',-80.0,0.015,1,1,96.0,'DrLee','Minor hemolysis', '2023-02-11','2023-02-11',1002);
INSERT INTO BloodBankInventory VALUES (103,'2023-03-12','2023-09-12','B','Positive',45,20,0,'CenterC','Freezer3',-80.0,0.01,0,1,94.8,'DrKim','No issues', '2023-03-13','2023-03-13',1003);

-- Medical Device Calibration records
CREATE TABLE MedicalDeviceCalibration (
    CalibrationID INTEGER PRIMARY KEY,
    DeviceSerial TEXT,
    DeviceModel TEXT,
    CalibrationDate DATE,
    TechnicianName TEXT,
    CalibrationMethod TEXT,
    FrequencyMonths INTEGER,
    NextDueDate DATE,
    CalibrationResult TEXT,
    DriftValue REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    PressureKPa REAL,
    PassFailFlag INTEGER,
    Comments TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Location TEXT,
    Department TEXT,
    CalibrationAgency TEXT,
    Cost REAL
);

INSERT INTO MedicalDeviceCalibration (CalibrationID,DeviceSerial,DeviceModel,CalibrationDate,TechnicianName,CalibrationMethod,FrequencyMonths,NextDueDate,CalibrationResult,DriftValue,TemperatureC,HumidityPercent,PressureKPa,PassFailFlag,Comments,CreatedAt,UpdatedAt,Location,Department,CalibrationAgency,Cost) VALUES (5001,'SN12345','ECG9000','2023-04-01','Emily Clark','Standard','12','2024-04-01','Pass',0.001,22.5,45,101.3,1,'Routine check','2023-04-01','2023-04-01','BuildingA','Cardiology','MedCal Inc',250.00);
INSERT INTO MedicalDeviceCalibration VALUES (5002,'SN67890','VentX200','2023-05-15','Frank Miller','Advanced','6','2023-11-15','Pass',0.0005,21.0,40,101.0,1,'Calibrated after service','2023-05-15','2023-05-15','BuildingB','ICU','HealthCal LLC',400.00);
INSERT INTO MedicalDeviceCalibration VALUES (5003,'SN24680','MRI3T','2023-06-20','Grace Lee','Standard','24','2025-06-20','Fail',0.005,20.0,50,100.8,0,'Recalibration required','2023-06-20','2023-06-20','BuildingC','Radiology','MedCal Inc',1200.00);

-- Clinical Guideline repository
CREATE TABLE ClinicalGuideline (
    GuidelineID INTEGER PRIMARY KEY,
    Title TEXT,
    Version TEXT,
    EffectiveDate DATE,
    ReviewDate DATE,
    Specialty TEXT,
    AuthorName TEXT,
    Organization TEXT,
    Summary TEXT,
    Scope TEXT,
    TargetAudience TEXT,
    Classification TEXT,
    Status TEXT,
    DocumentURL TEXT,
    Keywords TEXT,
    RevisionNumber INTEGER,
    ApprovalDate DATE,
    ApprovedBy TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO ClinicalGuideline (GuidelineID,Title,Version,EffectiveDate,ReviewDate,Specialty,AuthorName,Organization,Summary,Scope,TargetAudience,Classification,Status,DocumentURL,Keywords,RevisionNumber,ApprovalDate,ApprovedBy,Notes,CreatedAt,UpdatedAt) VALUES (1,'Hypertension Management','1.0','2022-01-01','2024-01-01','Cardiology','DrHelen Wu','Heart Institute','Guideline for BP control','Adults','Physicians','A','Active','http://guidelines.org/hypertension','BP,Hypertension,Control',1,'2022-01-01','Medical Board','', '2022-01-01','2022-01-01');
INSERT INTO ClinicalGuideline VALUES (2,'Diabetes Care','2.1','2021-07-15','2023-07-15','Endocrinology','DrMark Tan','Diabetes Center','Comprehensive diabetes management','All ages','Clinicians','B','Active','http://guidelines.org/diabetes','Glucose,Insulin,Monitoring',3,'2021-07-15','Endocrine Committee','Updated with new meds', '2021-07-15','2021-07-15');
INSERT INTO ClinicalGuideline VALUES (3,'Postoperative Pain','1.3','2020-03-10','2022-03-10','Surgery','DrSusan Park','Surgical Society','Pain control after surgery','Post-op patients','Surgeons','C','Retired','http://guidelines.org/pain','Analgesia,Opioids,NSAIDs',2,'2020-03-10','Surgical Board','', '2020-03-10','2020-03-10');

-- Staff Certification records
CREATE TABLE StaffCertification (
    CertID INTEGER PRIMARY KEY,
    StaffID INTEGER,
    StaffName TEXT,
    CertificationName TEXT,
    IssuingBody TEXT,
    IssueDate DATE,
    ExpiryDate DATE,
    CertificationLevel TEXT,
    Status TEXT,
    RenewalRequired INTEGER,
    RenewalDate DATE,
    CredentialNumber TEXT,
    Specialty TEXT,
    Department TEXT,
    VerifiedBy TEXT,
    VerificationDate DATE,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    LastAuditDate DATE,
    AuditResult TEXT
);

INSERT INTO StaffCertification (CertID,StaffID,StaffName,CertificationName,IssuingBody,IssueDate,ExpiryDate,CertificationLevel,Status,RenewalRequired,RenewalDate,CredentialNumber,Specialty,Department,VerifiedBy,VerificationDate,Notes,CreatedAt,UpdatedAt,LastAuditDate,AuditResult) VALUES (10001,2001,'John Doe','Advanced Cardiac Life Support','AHA','2021-05-01','2023-05-01','Level2','Active',1,'2023-04-30','ACLS12345','Cardiology','Emergency', 'Anna Clark','2021-05-02','', '2021-05-01','2021-05-01','2022-05-01','Pass');
INSERT INTO StaffCertification VALUES (10002,2002,'Jane Smith','Pediatric Advanced Life Support','AHA','2020-08-15','2022-08-15','Level1','Expired',1,'2022-08-14','PALS67890','Pediatrics','Pediatrics', 'Mike Brown','2020-08-16','Pending renewal','2020-08-15','2020-08-15','2021-08-15','Fail');
INSERT INTO StaffCertification VALUES (10003,2003,'Emily Green','Neonatal Resuscitation Program','NRP','2022-01-10','2024-01-10','Level1','Active',0,NULL,'NRP11223','Neonatology','Neonatal ICU','Laura White','2022-01-11','', '2022-01-10','2022-01-10','2023-01-10','Pass');

-- Research Grant tracking
CREATE TABLE ResearchGrant (
    GrantID INTEGER PRIMARY KEY,
    GrantTitle TEXT,
    Agency TEXT,
    PrincipalInvestigator TEXT,
    StartDate DATE,
    EndDate DATE,
    TotalAmount REAL,
    FundingYear INTEGER,
    GrantType TEXT,
    Status TEXT,
    AwardNumber TEXT,
    ReviewScore REAL,
    Collaborators TEXT,
    BudgetBreakdown TEXT,
    ReportingFrequency TEXT,
    LastReportDate DATE,
    ContactPhone TEXT,
    ContactEmail TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO ResearchGrant (GrantID,GrantTitle,Agency,PrincipalInvestigator,StartDate,EndDate,TotalAmount,FundingYear,GrantType,Status,AwardNumber,ReviewScore,Collaborators,BudgetBreakdown,ReportingFrequency,LastReportDate,ContactPhone,ContactEmail,CreatedAt,UpdatedAt) VALUES (501,'Autoimmune Biomarkers','NIH','DrLaura Kim','2023-01-01','2025-12-31',750000.00,2023,'Federal','Active','NIH2023-001',4.7,'DrAllen,DrBaker','Personnel:300k;Supplies:200k;Equipment:250k','Quarterly','2023-06-30','5553210','laura.kim@research.org','2023-01-01','2023-01-01');
INSERT INTO ResearchGrant VALUES (502,'Genomic Sequencing of Rare Diseases','EU Horizon','DrMarco Rossi','2022-04-15','2024-04-14',500000.00,2022,'International','Completed','EUH2022-045',4.2,'DrSofia,DrLiu','Personnel:250k;Sequencing:200k;Analysis:50k','Annual','2024-03-20','5556543','marco.rossi@eugrant.eu','2022-04-15','2022-04-15');
INSERT INTO ResearchGrant VALUES (503,'Telemedicine Impact Study','Private Foundation','DrAisha Patel','2023-09-01','2026-08-31',300000.00,2023,'Private','Pending','TF2023-789',NULL,'DrChen,DrDavis','Personnel:150k;Technology:100k;Other:50k','Semiannual',NULL,'5559876','aisha.patel@foundation.org','2023-09-01','2023-09-01');

-- Public Health Report archive
CREATE TABLE PublicHealthReport (
    ReportID INTEGER PRIMARY KEY,
    ReportName TEXT,
    PublicationDate DATE,
    Region TEXT,
    PopulationCovered INTEGER,
    IncidenceRate REAL,
    MortalityRate REAL,
    PrimaryCause TEXT,
    DataSource TEXT,
    Methodology TEXT,
    FindingsSummary TEXT,
    Recommendations TEXT,
    AuthorTeam TEXT,
    FundingSource TEXT,
    ReportURL TEXT,
    ConfidentialityLevel TEXT,
    ReviewedBy TEXT,
    ReviewDate DATE,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO PublicHealthReport (ReportID,ReportName,PublicationDate,Region,PopulationCovered,IncidenceRate,MortalityRate,PrimaryCause,DataSource,Methodology,FindingsSummary,Recommendations,AuthorTeam,FundingSource,ReportURL,ConfidentialityLevel,ReviewedBy,ReviewDate,Notes,CreatedAt,UpdatedAt) VALUES (9001,'Respiratory Illness 2022','2023-01-20','Midwest',500000,12.5,2.3,'Influenza','Hospital Records','Retrospective Cohort','Increased hospitalizations in winter','Promote vaccination','DrKim,DrLee','Health Dept','http://reports.org/resp2022','Public','DrKim','2023-01-15','', '2023-01-01','2023-01-01');
INSERT INTO PublicHealthReport VALUES (9002,'Cardiovascular Events 2021','2022-12-10','Northeast',750000,8.4,1.9,'Ischemic Heart Disease','Insurance Claims','Case-Control','Higher risk in smokers','Implement smoking cessation','DrAllen,DrBaker','State Grant','http://reports.org/cv2021','Public','DrAllen','2022-12-05','', '2022-11-01','2022-11-01');
INSERT INTO PublicHealthReport VALUES (9003,'Diabetes Prevalence 2020','2021-11-05','Southwest',600000,10.2,1.5,'Type 2 Diabetes','Survey Data','Cross-sectional','Prevalence rising among adults','Increase screening','DrSofia,DrLiu','Federal Funding','http://reports.org/diab2020','Public','DrSofia','2021-10-30','', '2021-10-01','2021-10-01');

-- Pharmacy Order History tracking
CREATE TABLE PharmacyOrderHistory (
    OrderID INTEGER PRIMARY KEY,
    PharmacyLocation TEXT,
    OrderDate DATE,
    SupplierName TEXT,
    ItemSKU TEXT,
    ItemDescription TEXT,
    QuantityOrdered INTEGER,
    UnitPrice REAL,
    TotalCost REAL,
    ReceivedDate DATE,
    ReceivedBy TEXT,
    BatchNumber TEXT,
    ExpiryDate DATE,
    StorageCondition TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    Status TEXT,
    BackorderFlag INTEGER,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO PharmacyOrderHistory (OrderID,PharmacyLocation,OrderDate,SupplierName,ItemSKU,ItemDescription,QuantityOrdered,UnitPrice,TotalCost,ReceivedDate,ReceivedBy,BatchNumber,ExpiryDate,StorageCondition,ApprovedBy,ApprovalDate,Status,BackorderFlag,Notes,CreatedAt,UpdatedAt) VALUES (3001,'Main Pharmacy','2023-03-10','HealthSupply Co','SKU12345','Aspirin 100mg',500,0.05,25.00,'2023-03-12','Mike Turner','BN001','2025-03-10','RoomTemp','DrAllen','2023-03-09','Received',0,'', '2023-03-10','2023-03-10');
INSERT INTO PharmacyOrderHistory VALUES (3002,'East Wing Pharmacy','2023-04-05','MediDistrib','SKU67890','Insulin Glargine',200,8.00,1600.00,'2023-04-07','Sara Lopez','BN002','2024-04-05','Refrigerated','DrBaker','2023-04-04','Pending',1,'Awaiting shipment', '2023-04-05','2023-04-05');
INSERT INTO PharmacyOrderHistory VALUES (3003,'West Pharmacy','2023-05-20','PharmaPlus','SKU24680','Ceftriaxone 1g',100,12.50,1250.00,'2023-05-22','John Patel','BN003','2025-05-20','RoomTemp','DrChen','2023-05-19','Received',0,'', '2023-05-20','2023-05-20');

-- Environmental Monitoring data
CREATE TABLE EnvironmentalMonitor (
    MonitorID INTEGER PRIMARY KEY,
    Location TEXT,
    MonitoringDate DATE,
    TemperatureC REAL,
    HumidityPercent REAL,
    CO2ppm INTEGER,
    VOCppm INTEGER,
    ParticulatePM2_5 REAL,
    ParticulatePM10 REAL,
    NoiseDb REAL,
    LightLux INTEGER,
    AirflowCfm INTEGER,
    FilterStatus TEXT,
    MaintenanceDueDate DATE,
    TechnicianName TEXT,
    CalibrationDate DATE,
    Remarks TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    SensorSerial TEXT,
    BatteryLevelPercent INTEGER
);

INSERT INTO EnvironmentalMonitor (MonitorID,Location,MonitoringDate,TemperatureC,HumidityPercent,CO2ppm,VOCppm,ParticulatePM2_5,ParticulatePM10,NoiseDb,LightLux,AirflowCfm,FilterStatus,MaintenanceDueDate,TechnicianName,CalibrationDate,Remarks,CreatedAt,UpdatedAt,SensorSerial,BatteryLevelPercent) VALUES (8001,'ICU Ward','2023-06-01',22.1,45,600,150,12.5,25.0,55,350,300,'Good','2023-12-01','Anna Green','2023-01-01','All within limits','2023-06-01','2023-06-01','SN-ICU-001',85);
INSERT INTO EnvironmentalMonitor VALUES (8002,'Operating Room','2023-06-02',20.5,40,550,120,8.0,15.0,48,500,250,'Good','2023-11-15','Brian Hall','2023-01-10','Stable conditions','2023-06-02','2023-06-02','SN-OR-002',90);
INSERT INTO EnvironmentalMonitor VALUES (8003,'Pharmacy Storage','2023-06-03',18.0,50,500,100,5.0,10.0,42,400,200,'Good','2023-10-20','Clara Ivy','2023-02-01','Temperature slightly low','2023-06-03','2023-06-03','SN-PH-003',80);

-- Volunteer Program participation
CREATE TABLE VolunteerProgram (
    VolunteerID INTEGER PRIMARY KEY,
    ProgramName TEXT,
    StartDate DATE,
    EndDate DATE,
    VolunteerHours INTEGER,
    RoleDescription TEXT,
    SupervisorName TEXT,
    Department TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    BackgroundCheckFlag INTEGER,
    TrainingCompletedFlag INTEGER,
    Certifications TEXT,
    AvailabilityDays TEXT,
    ShiftPattern TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    EvaluationScore REAL,
    FeedbackText TEXT,
    FundingSource TEXT
);

INSERT INTO VolunteerProgram (VolunteerID,ProgramName,StartDate,EndDate,VolunteerHours,RoleDescription,SupervisorName,Department,ContactPhone,ContactEmail,BackgroundCheckFlag,TrainingCompletedFlag,Certifications,AvailabilityDays,ShiftPattern,Notes,CreatedAt,UpdatedAt,EvaluationScore,FeedbackText,FundingSource) VALUES (4001,'Hospital Greeters','2023-01-01','2023-12-31',150,'Greet visitors and assist with directions','Linda Brown','Volunteer Services','5551122','volunteer1@hospital.org',1,1,'First Aid','Mon,Tue,Wed','Morning','Excellent attendance','2023-01-01','2023-01-01',4.9','Very helpful','Community Grant');
INSERT INTO VolunteerProgram VALUES (4002,'Patient Companion','2023-02-15','2023-11-30',200,'Accompany patients during appointments','James White','Volunteer Services','5553344','volunteer2@hospital.org',1,0,'None','Tue,Thu','Afternoon','Needs training completion','2023-02-15','2023-02-15',4.2','Good interaction','Hospital Fund');
INSERT INTO VolunteerProgram VALUES (4003,'Health Fair Assistant','2023-03-10','2023-09-10',80,'Assist with booths and distribute literature','Sarah Green','Community Outreach','5555566','volunteer3@hospital.org',0,1,'CPR','Sat','Weekend','Reliable','2023-03-10','2023-03-10',4.5','Positive feedback','Local Sponsor');