-- Clinical Research Molecular Pathology Repository
CREATE TABLE MolecularPathologyRepository (
    RepoID INTEGER NOT NULL,
    SpecimenCode TEXT NOT NULL,
    TissueType TEXT,
    PreservationMethod TEXT,
    ExtractionDate DATE,
    NucleicAcidYield REAL,
    NucleicAcidQuality REAL,
    LibraryPrepMethod TEXT,
    SequencingPlatform TEXT,
    RunID TEXT,
    ReadLength INTEGER,
    CoverageDepth REAL,
    VariantCount INTEGER,
    CNVCount INTEGER,
    SVCount INTEGER,
    AnnotationVersion TEXT,
    BioinformaticsPipeline TEXT,
    DataAccessLevel TEXT,
    StorageLocation TEXT,
    Custodian TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    PRIMARY KEY (RepoID)
);
INSERT INTO MolecularPathologyRepository VALUES (1,'SPC001','Liver','FFPE','2023-05-12',12.5,0.92,'IlluminaTruSeq','Illumina NovaSeq','RUNA01',150,30.5,45,2,5,'v3.2','GATK4','Restricted','FreezerA','DrSmith','2023-05-13','2023-05-13');
INSERT INTO MolecularPathologyRepository VALUES (2,'SPC002','Kidney','FreshFrozen','2023-06-01',9.8,0.88,'NEBNext','Illumina MiSeq','RUNB07',100,25.0,30,1,3,'v3.2','GATK4','Public','FreezerB','DrLee','2023-06-02','2023-06-02');
INSERT INTO MolecularPathologyRepository VALUES (3,'SPC003','Brain','FFPE','2023-07-20',15.2,0.95,'IlluminaTruSeq','Illumina HiSeq','RUNC12',200,40.0,60,4,7,'v4.0','Sentieon','Restricted','FreezerC','DrPatel','2023-07-21','2023-07-21');

-- Epidemiology Outbreak Log
CREATE TABLE EpidemiologyOutbreakLog (
    OutbreakID INTEGER NOT NULL,
    DiseaseName TEXT NOT NULL,
    FirstReportedDate DATE,
    LastReportedDate DATE,
    TotalCases INTEGER,
    TotalDeaths INTEGER,
    AffectedRegions TEXT,
    TransmissionMode TEXT,
    PrimaryVector TEXT,
    PublicHealthResponse TEXT,
    VaccinationStatus TEXT,
    GenomicSubtype TEXT,
    CaseDefinition TEXT,
    ReportingAgency TEXT,
    DataSource TEXT,
    AlertLevel TEXT,
    InterventionStartDate DATE,
    InterventionEndDate DATE,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    PRIMARY KEY (OutbreakID)
);
INSERT INTO EpidemiologyOutbreakLog VALUES (101,'Dengue','2023-01-10','2023-04-02',2500,30,'RegionA;RegionB','Mosquito','Aedes aegypti','VectorControl','Partial','DENV-2','Fever>38C','CDC','Surveillance','2023-01-15','2023-03-30','Outbreak linked to rainy season','EpiAnalyst','2023-01-11','2023-04-03');
INSERT INTO EpidemiologyOutbreakLog VALUES (102,'COVID19','2022-11-01','2023-01-20',15000,200,'RegionC;RegionD','Respiratory','Human','Lockdown','High','Omicron','Positive PCR','WHO','LabReports','High','2022-11-05','2023-01-15','Peak in winter months','EpiAnalyst','2022-11-02','2023-01-21');
INSERT INTO EpidemiologyOutbreakLog VALUES (103,'Cholera','2023-05-05','2023-06-10',800,5,'RegionE','Waterborne','Vibrio cholerae','WaterTreatment','Low','ElTor','Watery diarrhea','LocalHealthDept','FieldInvestigation','Medium','2023-05-07','2023-06-05','Improved sanitation reduced cases','EpiAnalyst','2023-05-06','2023-06-11');

-- Device Failure Analysis Report
CREATE TABLE DeviceFailureAnalysisReport (
    ReportID INTEGER NOT NULL,
    DeviceSerial TEXT NOT NULL,
    DeviceModel TEXT,
    FailureDate DATE,
    FailureMode TEXT,
    RootCause TEXT,
    FailureImpact TEXT,
    DowntimeHours REAL,
    RepairCost REAL,
    Manufacturer TEXT,
    WarrantyStatus TEXT,
    ServiceProvider TEXT,
    RepairActionTaken TEXT,
    PartsReplaced INTEGER,
    FollowUpDate DATE,
    PreventiveAction TEXT,
    RiskRating TEXT,
    DocumentationLink TEXT,
    AnalystName TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    PRIMARY KEY (ReportID)
);
INSERT INTO DeviceFailureAnalysisReport VALUES (5001,'SN12345','VentilatorX','2023-03-12','PowerLoss','FaultyPowerSupply','ICU downtime','4.5','1500','MedEquipCo','InWarranty','ServiceInc','Replaced PSU','1','2023-04-01','Add surge protector','High','http://reports/hospital/5001','AliceKim','2023-03-13','2023-04-02');
INSERT INTO DeviceFailureAnalysisReport VALUES (5002,'SN67890','InfusionPumpY','2023-07-08','SoftwareCrash','CorruptFirmware','Delayed medication','2.0','800','HealthTech','OutOfWarranty','ExternalVendor','Firmware reflash','0','2023-07-15','Implement firmware integrity checks','Medium','http://reports/hospital/5002','BobLee','2023-07-09','2023-07-16');
INSERT INTO DeviceFailureAnalysisReport VALUES (5003,'SN54321','MRI_Z','2023-09-20','CoolingFailure','FanMechanism','Scan interruption','6.0','2500','Imagix','InWarranty','VendorService','Replaced fan assembly','1','2023-09-28','Upgrade to redundant cooling','Critical','http://reports/hospital/5003','CarolNg','2023-09-21','2023-09-29');

-- Hospital Construction Project Timeline
CREATE TABLE HospitalConstructionTimeline (
    ProjectID INTEGER NOT NULL,
    ProjectName TEXT NOT NULL,
    Phase TEXT,
    StartDate DATE,
    PlannedEndDate DATE,
    ActualEndDate DATE,
    BudgetAllocated REAL,
    BudgetSpent REAL,
    Contractor TEXT,
    ProjectManager TEXT,
    MilestoneDescription TEXT,
    MilestoneDate DATE,
    Status TEXT,
    RiskLevel TEXT,
    PermitNumber TEXT,
    RegulatoryAgency TEXT,
    EnvironmentalImpact TEXT,
    SafetyIncidents INTEGER,
    ChangeOrderCount INTEGER,
    Comments TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    PRIMARY KEY (ProjectID)
);
INSERT INTO HospitalConstructionTimeline VALUES (2001,'EastWingExpansion','Design','2022-01-10','2022-06-30','2022-06-25',5000000,4800000,'BuildCorp','JohnDoe','Architectural drawings completed','2022-02-15','Completed','Low','PERM123','CityPlanning','Minor','0','2','All permits obtained','2022-01-11','2022-07-01');
INSERT INTO HospitalConstructionTimeline VALUES (2002,'NewICU','Construction','2023-03-01','2023-12-31','2024-01-10',8000000,8200000,'HealthBuild','JaneSmith','Structural steel erected','2023-08-20','Delayed','Medium','PERM456','HealthDept','Medium','1','3','Delay due to material shortage','2023-03-02','2024-01-11');
INSERT INTO HospitalConstructionTimeline VALUES (2003,'ParkingGarage','Commissioning','2024-02-15','2024-09-30','NULL',2000000,1200000,'GaragePros','MikeBrown','Electrical systems testing','2024-07-10','InProgress','Low','PERM789','TransportAuthority','Low','0','1','Testing ongoing','2024-02-16','2024-07-15');

-- Employee Mental Health Survey
CREATE TABLE EmployeeMentalHealthSurvey (
    SurveyID INTEGER NOT NULL,
    EmployeeID INTEGER NOT NULL,
    SurveyDate DATE,
    StressLevel INTEGER,
    AnxietyScore INTEGER,
    DepressionScore INTEGER,
    WorkLifeBalance INTEGER,
    SleepQuality INTEGER,
    PhysicalActivityFrequency INTEGER,
    SupportResourcesUsed TEXT,
    ManagerSupportRating INTEGER,
    PeerSupportRating INTEGER,
    RemoteWorkPreference TEXT,
    SuggestedImprovements TEXT,
    FollowUpNeeded TEXT,
    FollowUpDate DATE,
    CounselorAssigned TEXT,
    ConfidentialFlag INTEGER,
    CreatedAt DATE,
    UpdatedAt DATE,
    PRIMARY KEY (SurveyID)
);
INSERT INTO EmployeeMentalHealthSurvey VALUES (9001,101,'2023-05-20',3,2,1,4,3,5,'EmployeeAssistanceProgram',5,4,'Hybrid','More flexible hours','No','NULL','NULL',1,'2023-05-21','2023-05-21');
INSERT INTO EmployeeMentalHealthSurvey VALUES (9002,202,'2023-06-15',4,3,2,2,2,2,'None',2,3,'OnSite','Increase mental health days','Yes','2023-07-01','CounselorA',1,'2023-06-16','2023-06-16');
INSERT INTO EmployeeMentalHealthSurvey VALUES (9003,303,'2023-07-10',2,1,0,5,4,6,'WellnessHub',5,5,'Hybrid','Maintain current programs','No','NULL','NULL',1,'2023-07-11','2023-07-11');

-- Patient Engagement Activity Log
CREATE TABLE PatientEngagementActivityLog (
    LogID INTEGER NOT NULL,
    PatientID INTEGER NOT NULL,
    ActivityDate DATE,
    ActivityType TEXT,
    Channel TEXT,
    ContentTopic TEXT,
    DurationMinutes INTEGER,
    Outcome TEXT,
    FollowUpRequired TEXT,
    FollowUpDate DATE,
    StaffResponsible TEXT,
    SatisfactionScore INTEGER,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    PRIMARY KEY (LogID)
);
INSERT INTO PatientEngagementActivityLog VALUES (3001,1501,'2023-04-05','Education','Portal','MedicationAdherence',15,'Understood','No','NULL','NurseAmy',5,'Patient viewed video','2023-04-06','2023-04-06');
INSERT INTO PatientEngagementActivityLog VALUES (3002,1502,'2023-05-12','Reminder','SMS','AppointmentReminder',0,'Confirmed','Yes','2023-05-15','ReceptionistJoe',4,'Patient confirmed attendance','2023-05-13','2023-05-13');
INSERT INTO PatientEngagementActivityLog VALUES (3003,1503,'2023-06-20','Survey','Email','PostDischargeFeedback',5,'Provided feedback','No','NULL','HealthCoachLia',5,'Positive feedback on care','2023-06-21','2023-06-21');

-- Telehealth Platform Performance Metrics
CREATE TABLE TelehealthPerformanceMetrics (
    MetricID INTEGER NOT NULL,
    PlatformName TEXT NOT NULL,
    Date DATE,
    TotalSessions INTEGER,
    AvgSessionDuration REAL,
    ConnectionSuccessRate REAL,
    AudioQualityScore REAL,
    VideoQualityScore REAL,
    DropRate REAL,
    PatientSatisfactionScore REAL,
    TechnicianAlertCount INTEGER,
    BandwidthUtilization REAL,
    ConcurrentUsersPeak INTEGER,
    ServerResponseTime REAL,
    ErrorRate REAL,
    UpdateVersion TEXT,
    MaintenanceWindow TEXT,
    Comments TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    PRIMARY KEY (MetricID)
);
INSERT INTO TelehealthPerformanceMetrics VALUES (4001,'TeleMedPro','2023-07-01',1200,27.5,0.96,4.8,4.7,0.02,4.9,5,0.68,150,0.45,0.01,'v2.3','02:00-03:00','Stable performance','2023-07-02','2023-07-02');
INSERT INTO TelehealthPerformanceMetrics VALUES (4002,'HealthConnect','2023-07-01',950,30.1,0.93,4.5,4.4,0.03,4.6,7,0.72,130,0.52,0.015,'v1.9','01:00-02:00','Minor latency spikes','2023-07-02','2023-07-02');
INSERT INTO TelehealthPerformanceMetrics VALUES (4003,'VirtualCareX','2023-07-01',800,25.0,0.98,4.9,4.9,0.01,4.95,3,0.60,110,0.38,0.008,'v3.0','03:00-04:00','Excellent QoS','2023-07-02','2023-07-02');

-- Community Health Partner Agreement
CREATE TABLE CommunityHealthPartnerAgreement (
    AgreementID INTEGER NOT NULL,
    PartnerName TEXT NOT NULL,
    AgreementStartDate DATE,
    AgreementEndDate DATE,
    ScopeOfWork TEXT,
    FundingAmount REAL,
    FundingSource TEXT,
    Deliverables TEXT,
    ReportingFrequency TEXT,
    ContactPerson TEXT,
    ContactEmail TEXT,
    Status TEXT,
    RenewalOption TEXT,
    ConfidentialityLevel TEXT,
    ReviewDate DATE,
    SignedBy TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    PRIMARY KEY (AgreementID)
);
INSERT INTO CommunityHealthPartnerAgreement VALUES (7001,'LocalHealthOrg','2023-01-01','2023-12-31','Community screening and education',250000,'GrantABC','Quarterly reports, data dashboards','Quarterly','Maria Ruiz','maria@lho.org','Active','OneYear','High','2023-01-05','DirectorJohn','Agreement signed electronically','2023-01-02','2023-01-02');
INSERT INTO CommunityHealthPartnerAgreement VALUES (7002,'WellnessCenter','2023-03-15','2024-03-14','Nutrition workshops and fitness programs',150000,'CorporateDonorXYZ','Monthly newsletters, participant surveys','Monthly','Thomas Lee','t.lee@wellness.org','Active','TwoYear','Medium','2023-03-20','DirectorAnna','Includes performance bonuses','2023-03-16','2023-03-16');
INSERT INTO CommunityHealthPartnerAgreement VALUES (7003,'YouthOutreach','2022-09-01','2023-08-31','Mental health awareness campaigns',100000,'CityCouncil','Biannual impact assessments','Biannual','Sofia Patel','s.patel@youthoutreach.org','Expired','None','Low','2022-09-05','DirectorMark','Agreement concluded successfully','2022-09-02','2022-09-02');

-- Hospital Sustainability Initiative
CREATE TABLE SustainabilityInitiative (
    InitiativeID INTEGER NOT NULL,
    Name TEXT NOT NULL,
    LaunchDate DATE,
    TargetCompletionDate DATE,
    GoalDescription TEXT,
    MetricToTrack TEXT,
    CurrentValue REAL,
    TargetValue REAL,
    ResponsibleDept TEXT,
    LeadCoordinator TEXT,
    FundingAllocated REAL,
    FundingSource TEXT,
    Status TEXT,
    KeyMilestones TEXT,
    Challenges TEXT,
    StakeholderEngagement TEXT,
    DocumentationLink TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    PRIMARY KEY (InitiativeID)
);
INSERT INTO SustainabilityInitiative VALUES (9001,'SolarPowerUpgrade','2023-02-01','2025-12-31','Install rooftop solar panels', 'SolarGeneration (kWh)', 0, 500000,'Facilities','Emily Green',200000,'GreenFund','InProgress','Phase1 completed; Phase2 pending','Supply chain delays','Monthly town halls','http://sustainability/hospital/solar','2023-02-02','2023-02-02');
INSERT INTO SustainabilityInitiative VALUES (9002,'ZeroWasteProgram','2022-05-15','2024-05-15','Reduce landfill waste by 80%', 'LandfillWeight (tons)', 120, 24,'Environmental Services','James White',150000,'EnvironmentalGrant','InProgress','Implemented composting; recycling stations installed','Staff training gaps','Quarterly workshops','http://sustainability/hospital/zerowaste','2022-05-16','2022-05-16');
INSERT INTO SustainabilityInitiative VALUES (9003,'WaterConservation','2023-01-10','2024-12-31','Decrease water consumption 30%', 'WaterUsage (gallons per day)', 1500, 1050,'Facilities','Laura Blue',100000,'UtilitySavings','Planning','Pending audit of fixtures','Budget approval','Stakeholder meetings','http://sustainability/hospital/water','2023-01-11','2023-01-11');

-- Biomedical Research Data Pipeline
CREATE TABLE ResearchDataPipeline (
    PipelineID INTEGER NOT NULL,
    ProjectName TEXT NOT NULL,
    SourceSystem TEXT,
    ExtractionMethod TEXT,
    TransformationLogic TEXT,
    LoadDestination TEXT,
    ScheduleFrequency TEXT,
    LastRunDate DATE,
    Status TEXT,
    ErrorLog TEXT,
    RecordsProcessed INTEGER,
    DataQualityScore REAL,
    OwnerTeam TEXT,
    DataSteward TEXT,
    SecurityClassification TEXT,
    RetentionPeriod TEXT,
    DocumentationURL TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    PRIMARY KEY (PipelineID)
);
INSERT INTO ResearchDataPipeline VALUES (11001,'GenomicVariantStudy','Sequencer','BatchExport','NormalizeVariants','DataWarehouse','Daily','2023-07-20','Success','',2500000,0.98,'GenomicsTeam','DrKim','Restricted','2Years','http://research/pipeline/genomic','2023-01-05','2023-07-21');
INSERT INTO ResearchDataPipeline VALUES (11002,'ClinicalOutcomes','EHR','API','MapCodes','AnalyticsDB','Hourly','2023-07-20','Success','',150000,0.95,'ClinicalTeam','DrLee','Confidential','5Years','http://research/pipeline/outcomes','2023-02-10','2023-07-21');
INSERT INTO ResearchDataPipeline VALUES (11003,'ImagingAnalysis','PACS','DICOMExport','AnonymizeImages','ImageLake','Weekly','2023-07-19','Failed','Missing DICOM tags',5000,0.60,'ImagingTeam','DrPatel','HighlyRestricted','1Year','http://research/pipeline/imaging','2023-03-12','2023-07-20');

-- Patient Mobility Device Inventory
CREATE TABLE PatientMobilityDeviceInventory (
    DeviceID INTEGER NOT NULL,
    DeviceType TEXT NOT NULL,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyExpiration DATE,
    CurrentLocation TEXT,
    AssignedPatientID INTEGER,
    AssignmentDate DATE,
    Status TEXT,
    MaintenanceSchedule TEXT,
    LastMaintenanceDate DATE,
    NextMaintenanceDue DATE,
    InspectionScore INTEGER,
    BatteryLifeHours REAL,
    WeightKg REAL,
    MaxLoadKg REAL,
    CalibrationDate DATE,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    PRIMARY KEY (DeviceID)
);
INSERT INTO PatientMobilityDeviceInventory VALUES (601,'Wheelchair','MobiTech','W-200','SNW200001','2022-04-15','2025-04-15','Ward3',1501,'2022-05-01','InUse','Quarterly','2023-04-01','2023-10-01',9,12.5,15.0,120.0,'2023-04-01','Routine check completed','2022-04-16','2023-04-02');
INSERT INTO PatientMobilityDeviceInventory VALUES (602,'Walker','HealthAid','WALK-X','SNWALKX01','2021-09-10','2024-09-10','PhysicalTherapy',1502,'2021-09-15','InUse','BiAnnual','2023-03-15','2023-09-15',8,0,NULL,80.0,'2023-03-15','Slight wear on grips','2021-09-11','2023-03-16');
INSERT INTO PatientMobilityDeviceInventory VALUES (603,'Rollator','SeniorMob','R-300','SNR300501','2020-01-20','2023-01-20','StorageRoom',NULL,NULL,'Available','Annual','2022-12-01','2022-12-01',10,0,NULL,100.0,'2022-12-01','Ready for assignment','2020-01-21','2022-12-02');