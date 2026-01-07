-- Teacher remote collaboration sessions
CREATE TABLE teacher_remote_collaboration_sessions
(
    SessionID               INTEGER PRIMARY KEY AUTOINCREMENT,
    TeacherID               TEXT NOT NULL,
    SchoolCDSCode           TEXT NOT NULL,
    SessionDate             DATE NOT NULL,
    SessionStartTime        TEXT NOT NULL,
    SessionEndTime          TEXT NOT NULL,
    PlatformUsed            TEXT,
    Topic                   TEXT,
    ParticipantCount        INTEGER,
    SessionDurationMinutes  INTEGER,
    RecordingAvailable      INTEGER,
    FollowUpActions         TEXT,
    Notes                   TEXT,
    CreatedBy               TEXT,
    CreatedDate             DATE,
    ModifiedBy              TEXT,
    ModifiedDate            DATE,
    SessionRating           INTEGER,
    FeedbackComments        TEXT,
    ExternalLink            TEXT,
    AccreditationCredit     INTEGER
);
INSERT INTO teacher_remote_collaboration_sessions (TeacherID,SchoolCDSCode,SessionDate,SessionStartTime,SessionEndTime,PlatformUsed,Topic,ParticipantCount,SessionDurationMinutes,RecordingAvailable,FollowUpActions,Notes,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,SessionRating,FeedbackComments,ExternalLink,AccreditationCredit) VALUES ('T001','CDS001','2024-01-15','09:00','10:30','Zoom','DifferentiatedInstruction',15,90,1,'UploadMaterials','First session','admin','2024-01-15','admin','2024-01-15',5,'Excellent','http://example.com/session1',1);
INSERT INTO teacher_remote_collaboration_sessions (TeacherID,SchoolCDSCode,SessionDate,SessionStartTime,SessionEndTime,PlatformUsed,Topic,ParticipantCount,SessionDurationMinutes,RecordingAvailable,FollowUpActions,Notes,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,SessionRating,FeedbackComments,ExternalLink,AccreditationCredit) VALUES ('T047','CDS023','2024-02-20','13:00','14:45','Teams','ProjectBasedLearning',20,105,1,'DistributeSurvey','Mid‑year review','admin','2024-02-20','admin','2024-02-20',4,'Good','http://example.com/session2',0);
INSERT INTO teacher_remote_collaboration_sessions (TeacherID,SchoolCDSCode,SessionDate,SessionStartTime,SessionEndTime,PlatformUsed,Topic,ParticipantCount,SessionDurationMinutes,RecordingAvailable,FollowUpActions,Notes,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,SessionRating,FeedbackComments,ExternalLink,AccreditationCredit) VALUES ('T112','CDS077','2024-03-10','15:30','16:30','GoogleMeet','DataAnalytics',12,60,0,'None','Closing session','admin','2024-03-10','admin','2024-03-10',5,'Outstanding','http://example.com/session3',1);

-- Student artisan workshop participation
CREATE TABLE student_artisan_workshop_participation
(
    ParticipationID   INTEGER PRIMARY KEY AUTOINCREMENT,
    StudentID         TEXT NOT NULL,
    SchoolCDSCode     TEXT NOT NULL,
    WorkshopID        TEXT NOT NULL,
    WorkshopTitle     TEXT,
    InstructorID      TEXT,
    StartDate         DATE,
    EndDate           DATE,
    HoursCompleted    REAL,
    MaterialsProvided TEXT,
    Outcome           TEXT,
    CertificateIssued INTEGER,
    CreatedBy         TEXT,
    CreatedDate       DATE,
    ModifiedBy        TEXT,
    ModifiedDate      DATE,
    EvaluationScore   INTEGER,
    Comments          TEXT,
    SkillLevel        TEXT,
    FundingSource     TEXT
);
INSERT INTO student_artisan_workshop_participation (StudentID,SchoolCDSCode,WorkshopID,WorkshopTitle,InstructorID,StartDate,EndDate,HoursCompleted,MaterialsProvided,Outcome,CertificateIssued,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,EvaluationScore,Comments,SkillLevel,FundingSource) VALUES ('S2001','CDS045','W001','WoodworkingBasics','I300','2024-01-05','2024-01-12',16,'Lumber,Tools','Completed',1,'admin','2024-01-13','admin','2024-01-13',85,'Very engaged','Intermediate','DistrictGrant');
INSERT INTO student_artisan_workshop_participation (StudentID,SchoolCDSCode,WorkshopID,WorkshopTitle,InstructorID,StartDate,EndDate,HoursCompleted,MaterialsProvided,Outcome,CertificateIssued,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,EvaluationScore,Comments,SkillLevel,FundingSource) VALUES ('S3045','CDS067','W014','CeramicMosaic','I412','2024-02-20','2024-02-27',14,'Clay,Glaze','Completed',1,'admin','2024-02-28','admin','2024-02-28',78,'Creative designs','Beginner','CommunitySponsor');
INSERT INTO student_artisan_workshop_participation (StudentID,SchoolCDSCode,WorkshopID,WorkshopTitle,InstructorID,StartDate,EndDate,HoursCompleted,MaterialsProvided,Outcome,CertificateIssued,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,EvaluationScore,Comments,SkillLevel,FundingSource) VALUES ('S1189','CDS102','W022','DigitalFabrication','I519','2024-03-10','2024-03-17',18,'3DPrinter,Filament','Completed',0,'admin','2024-03-18','admin','2024-03-18',92,'Outstanding project','Advanced','TechGrant');

-- School energy grid status
CREATE TABLE school_energy_grid_status
(
    RecordID                    INTEGER PRIMARY KEY AUTOINCREMENT,
    SchoolCDSCode               TEXT NOT NULL,
    StatusDate                  DATE NOT NULL,
    GridConnectionStatus        TEXT,
    VoltageLevel                REAL,
    Frequency                   REAL,
    PowerFactor                 REAL,
    PeakDemandKW                REAL,
    AverageDemandKW             REAL,
    OutageFlag                  INTEGER,
    MaintenanceScheduled        DATE,
    LastInspectionDate          DATE,
    InspectorID                 TEXT,
    Notes                       TEXT,
    UpdatedBy                   TEXT,
    UpdatedDate                 DATE,
    RenewableContributionPct    REAL,
    BatteryStorageStatus        TEXT,
    BackupGeneratorStatus       TEXT,
    EnergyCostPerKWh            REAL,
    GridReliabilityScore       INTEGER
);
INSERT INTO school_energy_grid_status (SchoolCDSCode,StatusDate,GridConnectionStatus,VoltageLevel,Frequency,PowerFactor,PeakDemandKW,AverageDemandKW,OutageFlag,MaintenanceScheduled,LastInspectionDate,InspectorID,Notes,UpdatedBy,UpdatedDate,RenewableContributionPct,BatteryStorageStatus,BackupGeneratorStatus,EnergyCostPerKWh,GridReliabilityScore) VALUES ('CDS001','2024-03-15','Connected',120.5,60.0,0.97,350.2,250.1,0,'2024-06-01','2024-02-20','INSP01','All systems nominal','admin','2024-03-15',15.2,'Operational','Operational',0.12,92);
INSERT INTO school_energy_grid_status (SchoolCDSCode,StatusDate,GridConnectionStatus,VoltageLevel,Frequency,PowerFactor,PeakDemandKW,AverageDemandKW,OutageFlag,MaintenanceScheduled,LastInspectionDate,InspectorID,Notes,UpdatedBy,UpdatedDate,RenewableContributionPct,BatteryStorageStatus,BackupGeneratorStatus,EnergyCostPerKWh,GridReliabilityScore) VALUES ('CDS045','2024-03-15','Connected',118.0,60.0,0.95,420.0,300.5,1,'2024-05-15','2024-02-28','INSP03','Partial outage on 2024‑03‑01','admin','2024-03-15',10.5,'Charging','Operational',0.11,78);
INSERT INTO school_energy_grid_status (SchoolCDSCode,StatusDate,GridConnectionStatus,VoltageLevel,Frequency,PowerFactor,PeakDemandKW,AverageDemandKW,OutageFlag,MaintenanceScheduled,LastInspectionDate,InspectorID,Notes,UpdatedBy,UpdatedDate,RenewableContributionPct,BatteryStorageStatus,BackupGeneratorStatus,EnergyCostPerKWh,GridReliabilityScore) VALUES ('CDS102','2024-03-15','Disconnected',0,0,0,0,0,1,'2024-07-01','2024-01-15','INSP07','Grid shutdown for upgrades','admin','2024-03-15',0,'N/A','UnderRepair',0.00,45);

-- District award recognition programs
CREATE TABLE district_award_recognition_programs
(
    AwardID               INTEGER PRIMARY KEY AUTOINCREMENT,
    DistrictID            TEXT NOT NULL,
    ProgramName           TEXT,
    Year                  INTEGER,
    Category              TEXT,
    NomineeID             TEXT,
    NomineeName           TEXT,
    AwardLevel            TEXT,
    Sponsor               TEXT,
    MonetaryAmount        REAL,
    RecognitionDate       DATE,
    CertificateIssued     INTEGER,
    MediaLink             TEXT,
    CreatedBy             TEXT,
    CreatedDate           DATE,
    ModifiedBy            TEXT,
    ModifiedDate          DATE,
    SelectionCriteria     TEXT,
    JudgingPanel          TEXT,
    Remarks               TEXT,
    Status                TEXT
);
INSERT INTO district_award_recognition_programs (DistrictID,ProgramName,Year,Category,NomineeID,NomineeName,AwardLevel,Sponsor,MonetaryAmount,RecognitionDate,CertificateIssued,MediaLink,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,SelectionCriteria,JudgingPanel,Remarks,Status) VALUES ('D001','ExcellenceInSTEM','2023','STEM','T845','JaneDoe','Gold','StateEducationDept',5000,'2023-11-12',1,'http://example.com/award1','admin','2023-11-13','admin','2023-11-13','Innovation','PanelA','Outstanding project','Awarded');
INSERT INTO district_award_recognition_programs (DistrictID,ProgramName,Year,Category,NomineeID,NomineeName,AwardLevel,Sponsor,MonetaryAmount,RecognitionDate,CertificateIssued,MediaLink,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,SelectionCriteria,JudgingPanel,Remarks,Status) VALUES ('D003','CommunityEngagementAward','2022','Community','S210','JohnSmith','Silver','LocalCharity',2000,'2022-09-05',1,'http://example.com/award2','admin','2022-09-06','admin','2022-09-06','Impact','PanelB','Positive feedback','Awarded');
INSERT INTO district_award_recognition_programs (DistrictID,ProgramName,Year,Category,NomineeID,NomineeName,AwardLevel,Sponsor,MonetaryAmount,RecognitionDate,CertificateIssued,MediaLink,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,SelectionCriteria,JudgingPanel,Remarks,Status) VALUES ('D007','GreenSchoolInitiative','2024','Sustainability','S330','EmilyLee','Bronze','EcoFund',1000,'2024-04-20',0,'http://example.com/award3','admin','2024-04-21','admin','2024-04-21','Sustainability','PanelC','Pending verification','Pending');

-- Community transportation hub usage
CREATE TABLE community_transportation_hub_usage
(
    HubUsageID               INTEGER PRIMARY KEY AUTOINCREMENT,
    HubID                    TEXT NOT NULL,
    UsageDate                DATE NOT NULL,
    TotalPassengers          INTEGER,
    PeakHourPassengers       INTEGER,
    AvgWaitTimeMinutes       REAL,
    NumberOfBuses            INTEGER,
    FuelType                 TEXT,
    EmissionsKgCO2           REAL,
    MaintenanceIncidents     INTEGER,
    StaffOnDuty              INTEGER,
    SecurityIncidents        INTEGER,
    RevenueUSD               REAL,
    SubsidyUSD               REAL,
    Comments                 TEXT,
    RecordedBy               TEXT,
    RecordDate               DATE,
    WeatherCondition         TEXT,
    TrafficLevel             TEXT,
    AccessibilityScore       INTEGER,
    CapacityUtilizationPct   REAL
);
INSERT INTO community_transportation_hub_usage (HubID,UsageDate,TotalPassengers,PeakHourPassengers,AvgWaitTimeMinutes,NumberOfBuses,FuelType,EmissionsKgCO2,MaintenanceIncidents,StaffOnDuty,SecurityIncidents,RevenueUSD,SubsidyUSD,Comments,RecordedBy,RecordDate,WeatherCondition,TrafficLevel,AccessibilityScore,CapacityUtilizationPct) VALUES ('HUB01','2024-03-10',1240,210,5.2,12,'Diesel',340.5,2,8,1,7800,1500,'Smooth operation','admin','2024-03-11','Clear','Medium',85,78.5);
INSERT INTO community_transportation_hub_usage (HubID,UsageDate,TotalPassengers,PeakHourPassengers,AvgWaitTimeMinutes,NumberOfBuses,FuelType,EmissionsKgCO2,MaintenanceIncidents,StaffOnDuty,SecurityIncidents,RevenueUSD,SubsidyUSD,Comments,RecordedBy,RecordDate,WeatherCondition,TrafficLevel,AccessibilityScore,CapacityUtilizationPct) VALUES ('HUB02','2024-03-10',980,180,6.0,10,'Electric',120.0,0,6,0,6200,1300,'Low emissions','admin','2024-03-11','Rain','High',90,65.2);
INSERT INTO community_transportation_hub_usage (HubID,UsageDate,TotalPassengers,PeakHourPassengers,AvgWaitTimeMinutes,NumberOfBuses,FuelType,EmissionsKgCO2,MaintenanceIncidents,StaffOnDuty,SecurityIncidents,RevenueUSD,SubsidyUSD,Comments,RecordedBy,RecordDate,WeatherCondition,TrafficLevel,AccessibilityScore,CapacityUtilizationPct) VALUES ('HUB03','2024-03-10',1500,250,4.8,15,'Hybrid',210.3,1,10,2,8500,2000,'High demand','admin','2024-03-11','Clear','Low',80,88.1);

-- School food waste audit
CREATE TABLE school_food_waste_audit
(
    AuditID                INTEGER PRIMARY KEY AUTOINCREMENT,
    SchoolCDSCode          TEXT NOT NULL,
    AuditDate              DATE NOT NULL,
    TotalFoodWasteKg       REAL,
    RecycledKg             REAL,
    CompostKg              REAL,
    LandfilledKg           REAL,
    WasteDiversionPct      REAL,
    AuditTeamLead          TEXT,
    FindingsSummary        TEXT,
    Recommendations        TEXT,
    FollowUpDate           DATE,
    ImplementedFlag        INTEGER,
    CostSavingsUSD         REAL,
    CarbonReductionKgCO2   REAL,
    DataSource             TEXT,
    CreatedBy               TEXT,
    CreatedDate             DATE,
    ModifiedBy              TEXT,
    ModifiedDate            DATE,
    AdditionalNotes         TEXT
);
INSERT INTO school_food_waste_audit (SchoolCDSCode,AuditDate,TotalFoodWasteKg,RecycledKg,CompostKg,LandfilledKg,WasteDiversionPct,AuditTeamLead,FindingsSummary,Recommendations,FollowUpDate,ImplementedFlag,CostSavingsUSD,CarbonReductionKgCO2,DataSource,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,AdditionalNotes) VALUES ('CDS001','2024-02-20',1200.5,300.0,400.0,500.5,58.3,'L001','High waste in cafeteria','Introduce trayless meals', '2024-05-01',0,2500,1200,'WasteLog','admin','2024-02-21','admin','2024-02-21','Awaiting budget approval');
INSERT INTO school_food_waste_audit (SchoolCDSCode,AuditDate,TotalFoodWasteKg,RecycledKg,CompostKg,LandfilledKg,WasteDiversionPct,AuditTeamLead,FindingsSummary,Recommendations,FollowUpDate,ImplementedFlag,CostSavingsUSD,CarbonReductionKgCO2,DataSource,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,AdditionalNotes) VALUES ('CDS045','2024-02-20',950.0,250.0,300.0,400.0,58.9,'L045','Excess packaging','Switch to bulk dispensing', '2024-06-15',1,1800,950,'AuditTool','admin','2024-02-21','admin','2024-02-21','Implemented pilot program');
INSERT INTO school_food_waste_audit (SchoolCDSCode,AuditDate,TotalFoodWasteKg,RecycledKg,CompostKg,LandfilledKg,WasteDiversionPct,AuditTeamLead,FindingsSummary,Recommendations,FollowUpDate,ImplementedFlag,CostSavingsUSD,CarbonReductionKgCO2,DataSource,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,AdditionalNotes) VALUES ('CDS102','2024-02-20',1350.2,350.0,450.0,550.2,59.3,'L102','Inefficient portion sizes','Adjust menu planning', '2024-04-30',0,3000,1500,'Survey','admin','2024-02-21','admin','2024-02-21','Data collection ongoing');

-- Teacher exhibit contributions
CREATE TABLE teacher_exhibit_contributions
(
    ContributionID        INTEGER PRIMARY KEY AUTOINCREMENT,
    TeacherID             TEXT NOT NULL,
    ExhibitID             TEXT NOT NULL,
    ExhibitTitle          TEXT,
    ContributionDate      DATE,
    Role                  TEXT,
    HoursContributed      REAL,
    MaterialsProvided     TEXT,
    AudienceCount         INTEGER,
    FeedbackScore         INTEGER,
    Comments              TEXT,
    PhotoURL              TEXT,
    VideoURL              TEXT,
    Sponsor               TEXT,
    FundingAmountUSD      REAL,
    CreatedBy             TEXT,
    CreatedDate           DATE,
    ModifiedBy            TEXT,
    ModifiedDate          DATE,
    RecognitionAwarded    TEXT,
    ImpactRating          INTEGER
);
INSERT INTO teacher_exhibit_contributions (TeacherID,ExhibitID,ExhibitTitle,ContributionDate,Role,HoursContributed,MaterialsProvided,AudienceCount,FeedbackScore,Comments,PhotoURL,VideoURL,Sponsor,FundingAmountUSD,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,RecognitionAwarded,ImpactRating) VALUES ('T015','E001','LocalHistory','2024-01-20','Curator',30,'Photos,Documents',200,9,'Well received','http://example.com/photo1','http://example.com/video1','HistoricalSociety',1500,'admin','2024-01-21','admin','2024-01-21','ExhibitBadge',8);
INSERT INTO teacher_exhibit_contributions (TeacherID,ExhibitID,ExhibitTitle,ContributionDate,Role,HoursContributed,MaterialsProvided,AudienceCount,FeedbackScore,Comments,PhotoURL,VideoURL,Sponsor,FundingAmountUSD,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,RecognitionAwarded,ImpactRating) VALUES ('T099','E014','ScienceFair','2024-02-15','Mentor',45,'Lab kits',350,8,'Engaging demos','http://example.com/photo2','http://example.com/video2','TechCorp',2000,'admin','2024-02-16','admin','2024-02-16','MentorAward',9);
INSERT INTO teacher_exhibit_contributions (TeacherID,ExhibitID,ExhibitTitle,ContributionDate,Role,HoursContributed,MaterialsProvided,AudienceCount,FeedbackScore,Comments,PhotoURL,VideoURL,Sponsor,FundingAmountUSD,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,RecognitionAwarded,ImpactRating) VALUES ('T207','E022','ArtShowcase','2024-03-05','Organizer',25,'Art supplies',150,7,'Positive feedback','http://example.com/photo3','http://example.com/video3','ArtsFoundation',1200,'admin','2024-03-06','admin','2024-03-06','OrganizerCertificate',7);

-- Student technology experiment results
CREATE TABLE student_technology_experiment_results
(
    ExperimentID          INTEGER PRIMARY KEY AUTOINCREMENT,
    StudentID             TEXT NOT NULL,
    SchoolCDSCode         TEXT NOT NULL,
    ProjectTitle          TEXT,
    StartDate             DATE,
    EndDate               DATE,
    TechnologyUsed        TEXT,
    Hypothesis            TEXT,
    ResultSummary         TEXT,
    DataFilePath          TEXT,
    SuccessFlag           INTEGER,
    GradeAwarded          INTEGER,
    AdvisorID             TEXT,
    ReviewComments        TEXT,
    PublicationLink       TEXT,
    CreatedBy             TEXT,
    CreatedDate           DATE,
    ModifiedBy            TEXT,
    ModifiedDate          DATE,
    FundingSource         TEXT,
    ExperimentDurationHours REAL
);
INSERT INTO student_technology_experiment_results (StudentID,SchoolCDSCode,ProjectTitle,StartDate,EndDate,TechnologyUsed,Hypothesis,ResultSummary,DataFilePath,SuccessFlag,GradeAwarded,AdvisorID,ReviewComments,PublicationLink,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,FundingSource,ExperimentDurationHours) VALUES ('S0501','CDS001','AIChatbot','2024-01-10','2024-02-20','Python','Chatbot improves response time','Achieved 30% faster replies','/data/exp1.csv',1,95,'A300','Excellent work','http://example.com/pub1','admin','2024-02-21','admin','2024-02-21','SchoolGrant',150);
INSERT INTO student_technology_experiment_results (StudentID,SchoolCDSCode,ProjectTitle,StartDate,EndDate,TechnologyUsed,Hypothesis,ResultSummary,DataFilePath,SuccessFlag,GradeAwarded,AdvisorID,ReviewComments,PublicationLink,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,FundingSource,ExperimentDurationHours) VALUES ('S1123','CDS045','SolarTracker','2024-02-01','2024-03-15','Arduino','Tracker maximizes sun exposure','Increased efficiency by 20%','/data/exp2.csv',1,88,'A412','Good methodology','http://example.com/pub2','admin','2024-03-16','admin','2024-03-16','CommunityFund',120);
INSERT INTO student_technology_experiment_results (StudentID,SchoolCDSCode,ProjectTitle,StartDate,EndDate,TechnologyUsed,Hypothesis,ResultSummary,DataFilePath,SuccessFlag,GradeAwarded,AdvisorID,ReviewComments,PublicationLink,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,FundingSource,ExperimentDurationHours) VALUES ('S2078','CDS102','VRPhysicsLab','2024-01-20','2024-04-10','Unity3D','VR enhances comprehension','Students scored 15% higher','/data/exp3.csv',1,92,'A521','Innovative approach','http://example.com/pub3','admin','2024-04-11','admin','2024-04-11','TechSponsor',210);

-- Facility ventilation systems
CREATE TABLE facility_ventilation_systems
(
    SystemID                INTEGER PRIMARY KEY AUTOINCREMENT,
    FacilityID              TEXT NOT NULL,
    InstallationDate        DATE,
    SystemType              TEXT,
    AirFlowCFM              REAL,
    FilterType              TEXT,
    FilterChangeIntervalMonths INTEGER,
    LastFilterChangeDate    DATE,
    EnergyConsumptionKWh    REAL,
    MaintenanceFrequencyMonths INTEGER,
    LastMaintenanceDate     DATE,
    TechnicianID            TEXT,
    WarrantyEndDate         DATE,
    CO2SensorInstalled     INTEGER,
    NoiseLevelDb            REAL,
    ControlMethod           TEXT,
    RemoteMonitoringFlag    INTEGER,
    CreatedBy               TEXT,
    CreatedDate             DATE,
    ModifiedBy              TEXT,
    ModifiedDate            DATE,
    AdditionalInfo          TEXT
);
INSERT INTO facility_ventilation_systems (FacilityID,InstallationDate,SystemType,AirFlowCFM,FilterType,FilterChangeIntervalMonths,LastFilterChangeDate,EnergyConsumptionKWh,MaintenanceFrequencyMonths,LastMaintenanceDate,TechnicianID,WarrantyEndDate,CO2SensorInstalled,NoiseLevelDb,ControlMethod,RemoteMonitoringFlag,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,AdditionalInfo) VALUES ('F001','2020-06-15','ERV','12000','HEPA',12,'2023-12-01',4500,6,'2024-02-01','TECH01','2025-06-15',1,55.0,'BEMS',1,'admin','2024-03-01','admin','2024-03-01','Operates within spec');
INSERT INTO facility_ventilation_systems (FacilityID,InstallationDate,SystemType,AirFlowCFM,FilterType,FilterChangeIntervalMonths,LastFilterChangeDate,EnergyConsumptionKWh,MaintenanceFrequencyMonths,LastMaintenanceDate,TechnicianID,WarrantyEndDate,CO2SensorInstalled,NoiseLevelDb,ControlMethod,RemoteMonitoringFlag,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,AdditionalInfo) VALUES ('F045','2019-09-10','VRF','15000','Carbon','9','2023-09-15',6200,4,'2024-01-20','TECH03','2024-09-10',1,48.5','DALI',0,'admin','2024-03-01','admin','2024-03-01','Upgrade pending');
INSERT INTO facility_ventilation_systems (FacilityID,InstallationDate,SystemType,AirFlowCFM,FilterType,FilterChangeIntervalMonths,LastFilterChangeDate,EnergyConsumptionKWh,MaintenanceFrequencyMonths,LastMaintenanceDate,TechnicianID,WarrantyEndDate,CO2SensorInstalled,NoiseLevelDb,ControlMethod,RemoteMonitoringFlag,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,AdditionalInfo) VALUES ('F102','2021-01-20','MEV','10000','MERV13',10,'2024-01-10',3800,5,'2024-02-15','TECH07','2026-01-20',0,60.2,'Modbus',1,'admin','2024-03-01','admin','2024-03-01','No CO2 sensor installed');

-- District heritage preservation projects
CREATE TABLE district_heritage_preservation_projects
(
    ProjectID                INTEGER PRIMARY KEY AUTOINCREMENT,
    DistrictID               TEXT NOT NULL,
    SiteName                 TEXT,
    ProjectStartDate         DATE,
    ProjectEndDate           DATE,
    FundingAmountUSD         REAL,
    GrantProvider            TEXT,
    PreservationType         TEXT,
    ContractorID             TEXT,
    MilestonesCompleted      INTEGER,
    TotalMilestones          INTEGER,
    CurrentStatus            TEXT,
    PublicAccessFlag         INTEGER,
    EducationalProgramFlag   INTEGER,
    VisitorCount             INTEGER,
    MediaCoverageLink        TEXT,
    CreatedBy                TEXT,
    CreatedDate              DATE,
    ModifiedBy               TEXT,
    ModifiedDate             DATE,
    ImpactAssessmentScore    INTEGER,
    FutureFundingNeedsUSD    REAL
);
INSERT INTO district_heritage_preservation_projects (DistrictID,SiteName,ProjectStartDate,ProjectEndDate,FundingAmountUSD,GrantProvider,PreservationType,ContractorID,MilestonesCompleted,TotalMilestones,CurrentStatus,PublicAccessFlag,EducationalProgramFlag,VisitorCount,MediaCoverageLink,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,ImpactAssessmentScore,FutureFundingNeedsUSD) VALUES ('D001','OldTownHall','2023-05-01','2024-12-31',850000,'StateHeritageFund','Restoration','C100',5,8,'InProgress',1,1,12000,'http://example.com/media1','admin','2024-03-01','admin','2024-03-01',78,150000);
INSERT INTO district_heritage_preservation_projects (DistrictID,SiteName,ProjectStartDate,ProjectEndDate,FundingAmountUSD,GrantProvider,PreservationType,ContractorID,MilestonesCompleted,TotalMilestones,CurrentStatus,PublicAccessFlag,EducationalProgramFlag,VisitorCount,MediaCoverageLink,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,ImpactAssessmentScore,FutureFundingNeedsUSD) VALUES ('D004','HistoricSchoolGym','2022-09-15','2024-06-30',620000,'LocalLegacyGrant','Renovation','C305',8,8,'Completed',1,1,8000,'http://example.com/media2','admin','2024-03-01','admin','2024-03-01',85,0);
INSERT INTO district_heritage_preservation_projects (DistrictID,SiteName,ProjectStartDate,ProjectEndDate,FundingAmountUSD,GrantProvider,PreservationType,ContractorID,MilestonesCompleted,TotalMilestones,CurrentStatus,PublicAccessFlag,EducationalProgramFlag,VisitorCount,MediaCoverageLink,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,ImpactAssessmentScore,FutureFundingNeedsUSD) VALUES ('D007','RailroadDepot','2023-11-01','2025-04-15',970000,'FederalPreserveGrant','AdaptiveReuse','C210',3,6,'Planning',0,0,0,'http://example.com/media3','admin','2024-03-01','admin','2024-03-01',70,300000);