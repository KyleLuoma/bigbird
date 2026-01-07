-- Geospatial boundary definitions for school districts and zones
CREATE TABLE geospatial_boundary_definitions (
    BoundaryID TEXT PRIMARY KEY,
    BoundaryName TEXT,
    BoundaryType TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    Description TEXT,
    SourceAgency TEXT,
    Scale1 INTEGER,
    Scale2 INTEGER,
    GeoJSON TEXT,
    Latitude REAL,
    Longitude REAL,
    AreaSqKm REAL,
    PerimeterKm REAL,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    MetadataVersion INTEGER,
    IsActive INTEGER
);

INSERT INTO geospatial_boundary_definitions VALUES
('BND001','AlphaDistrict','SchoolDistrict','2020-01-01','2030-12-31','Primary district boundary','StateDept','1000','500','{type:Feature,properties:{},geometry:{type:Polygon,coordinates:[]}}',34.56,-117.89,150.2,45.3,'admin1','2020-01-01','admin2','2022-06-15',1,1);

INSERT INTO geospatial_boundary_definitions VALUES
('BND002','BetaZone','AttendanceZone','2021-07-15','2040-07-14','Secondary attendance zone','CountyOffice','2000','1000','{type:Feature,properties:{},geometry:{type:Polygon,coordinates:[]}}',35.12,-118.45,80.5,30.1,'admin3','2021-07-15','admin4','2023-01-20',2,1);

INSERT INTO geospatial_boundary_definitions VALUES
('BND003','GammaRegion','SpecialProgram','2019-05-01','2029-04-30','Region for magnet program','EducationBoard','1500','750','{type:Feature,properties:{},geometry:{type:Polygon,coordinates:[]}}',33.98,-116.73,60.0,22.5,'admin5','2019-05-01','admin6','2021-11-05',1,0);

-- State assessment test items catalogue
CREATE TABLE state_assessment_test_items (
    ItemID TEXT PRIMARY KEY,
    AssessmentName TEXT,
    GradeLevel TEXT,
    SubjectArea TEXT,
    ItemType TEXT,
    DifficultyLevel INTEGER,
    EstimatedTimeSec INTEGER,
    AlignmentStandard TEXT,
    ReleaseYear INTEGER,
    Language TEXT,
    ItemText TEXT,
    CorrectResponse TEXT,
    Distractor1 TEXT,
    Distractor2 TEXT,
    Distractor3 TEXT,
    ScoringMethod TEXT,
    ItemStatus TEXT,
    RevisionNumber INTEGER,
    CreatedBy TEXT,
    CreatedDate DATE,
    LastModifiedBy TEXT,
    LastModifiedDate DATE
);

INSERT INTO state_assessment_test_items VALUES
('ITM1001','MathAssess2022','5','Mathematics','MultipleChoice',3,45,'CCSS.MATH.CONTENT.5.NBT.A.1',2022,'English','What is 7 x 8?','56','54','58','60','Standard','Active',1,'analyst1','2022-02-01','analyst2','2022-03-15');

INSERT INTO state_assessment_test_items VALUES
('ITM1002','ReadingAssess2021','8','Reading','Passage','2',120,'CCSS.ELA-LITERACY.RI.8.1',2021,'English','Passage about ecosystems...','', '','', '','Holistic','Active',2,'analyst3','2021-05-10','analyst4','2021-06-20');

INSERT INTO state_assessment_test_items VALUES
('ITM1003','ScienceAssess2023','11','Science','ConstructedResponse',4,180,'NGSS.HS-PS2-2',2023,'English','Explain Newton''s second law.','', '', '', '', 'Rubric','Draft',1,'analyst5','2023-01-12','analyst6','2023-02-05');

-- School technology adoption survey results
CREATE TABLE school_technology_adoption_surveys (
    SurveyID TEXT PRIMARY KEY,
    SchoolCDSCode TEXT,
    SurveyYear INTEGER,
    RespondentRole TEXT,
    DeviceType TEXT,
    UsageFrequency TEXT,
    PerceivedEffectiveness TEXT,
    TrainingProvided TEXT,
    TrainingHours INTEGER,
    SupportSatisfaction TEXT,
    BandwidthRating INTEGER,
    CloudServiceUsage TEXT,
    LearningManagementSystem TEXT,
    BYODPolicy TEXT,
    SecurityConcerns TEXT,
    FutureNeeds TEXT,
    Comments TEXT,
    CompletedDate DATE,
    Analyst TEXT,
    ReviewStatus TEXT,
    Version INTEGER,
    IsPublished INTEGER
);

INSERT INTO school_technology_adoption_surveys VALUES
('SURV001','C12345',2022,'Teacher','Laptop','Daily','High','Yes',12,'Satisfied',4,'Yes','Canvas','Yes','DataPrivacy','VRIntegration','All good','2022-11-15','analystA','Approved',1,1);

INSERT INTO school_technology_adoption_surveys VALUES
('SURV002','D67890',2021,'Student','Tablet','Weekly','Medium','No',0,'Neutral',3,'No','GoogleClassroom','No','DeviceLoss','ARModules','Needs improvement','2021-09-30','analystB','Pending',1,0);

INSERT INTO school_technology_adoption_surveys VALUES
('SURV003','E24680',2023,'Administrator','Desktop','Monthly','Low','Yes',5,'Dissatisfied',2,'Yes','Moodle','Partial','NetworkSecurity','AIAnalytics','Consider upgrade','2023-03-20','analystC','Approved',2,1);

-- Facility lease contracts for non‑educational spaces
CREATE TABLE facility_lease_contracts (
    LeaseID TEXT PRIMARY KEY,
    FacilityName TEXT,
    LeaseType TEXT,
    LeaseStartDate DATE,
    LeaseEndDate DATE,
    LessorName TEXT,
    LesseeDepartment TEXT,
    SquareFootage INTEGER,
    AnnualRent REAL,
    SecurityDeposit REAL,
    RentEscalationPercent REAL,
    MaintenanceResponsibility TEXT,
    UtilitiesIncluded TEXT,
    InsuranceCoverage TEXT,
    EarlyTerminationClause TEXT,
    RenewalOption TEXT,
    GoverningLaw TEXT,
    SignatureDate DATE,
    SignedBy TEXT,
    ContractStatus TEXT,
    RecordedDate DATE,
    Notes TEXT
);

INSERT INTO facility_lease_contracts VALUES
('LC001','CommunityGym','Full','2020-06-01','2025-05-31','CitySportsDept','PhysicalEducation','3500',75000.00,15000.00,2.5,'Lessee','Yes','Standard','Yes','Option','StateX','2020-05-20','manager1','Active','2020-05-22','Gym lease for varsity teams');

INSERT INTO facility_lease_contracts VALUES
('LC002','Auditorium','Partial','2021-01-15','2026-01-14','CountyArtsCouncil','DramaClub','5000',120000.00,20000.00,3.0,'Lessor','No','Extended','No','None','StateY','2020-12-30','manager2','Active','2021-01-01','Auditorium shared with community events');

INSERT INTO facility_lease_contracts VALUES
('LC003','ScienceLab','Full','2019-09-01','2024-08-31','PrivateCorp','STEMProgram','2000',50000.00,10000.00,2.0,'Lessee','Yes','Limited','Yes','Option','StateZ','2019-08-15','manager3','Terminated','2019-08-20','Early termination due to renovation');

-- District policy documents archive
CREATE TABLE district_policy_documents_archive (
    DocumentID TEXT PRIMARY KEY,
    DocumentTitle TEXT,
    PolicyArea TEXT,
    VersionNumber INTEGER,
    EffectiveDate DATE,
    ExpirationDate DATE,
    Author TEXT,
    Approver TEXT,
    ReviewCycleMonths INTEGER,
    DocumentStatus TEXT,
    ConfidentialityLevel TEXT,
    FilePath TEXT,
    FileSizeKB INTEGER,
    Checksum TEXT,
    Language TEXT,
    DistributionMethod TEXT,
    ArchivedDate DATE,
    ArchivedBy TEXT,
    RetentionPeriodYears INTEGER,
    AccessRestrictions TEXT,
    RelatedRegulation TEXT,
    Comments TEXT
);

INSERT INTO district_policy_documents_archive VALUES
('DOC001','Student Data Privacy','Privacy',3,'2021-07-01','2026-06-30','legal1','supervisor1',12,'Active','High','/archive/policy1.pdf',250,'abc123','English','Email','2022-01-10','archiver1',5,'StaffOnly','FERPA','Initial version superseded');

INSERT INTO district_policy_documents_archive VALUES
('DOC002','Emergency Evacuation Procedure','Safety',2,'2020-01-01','2025-12-31','safetylead','director','24','Active','Medium','/archive/evacuation.pdf',320,'def456','English','Intranet','2021-03-05','archiver2',5,'AllStaff','OSHA','Updated after drill');

INSERT INTO district_policy_documents_archive VALUES
('DOC003','Technology Acceptable Use','IT',5,'2019-09-15','2024-09-14','itadmin','ciso','18','Retired','Low','/archive/acceptable_use.pdf',180,'ghi789','English','Printed','2020-11-20','archiver3',5,'StudentsOnly','StateITPolicy','Final revision');

-- Community event media assets repository
CREATE TABLE community_event_media_assets (
    AssetID TEXT PRIMARY KEY,
    EventName TEXT,
    MediaType TEXT,
    FileName TEXT,
    FileExtension TEXT,
    FileSizeKB INTEGER,
    Resolution TEXT,
    DurationSec INTEGER,
    CaptureDate DATE,
    Photographer TEXT,
    CopyrightHolder TEXT,
    LicenseType TEXT,
    Description TEXT,
    Tags TEXT,
    PublishedPlatform TEXT,
    Views INTEGER,
    Likes INTEGER,
    CommentsCount INTEGER,
    IsFeatured INTEGER,
    ArchiveLocation TEXT,
    QualityRating INTEGER,
    AccessibilityNotes TEXT
);

INSERT INTO community_event_media_assets VALUES
('ASSET001','SpringFestival','Image','spring_fest_01','jpg',2048,'1920x1080',0,'2022-04-15','johnsmith','citydept','CreativeCommons','Crowds enjoying performances','festival,spring,community','Website',1500,120,15,1,'/media/archive/spring_fest','5','AltTextProvided');

INSERT INTO community_event_media_assets VALUES
('ASSET002','HealthFair2023','Video','health_fair_highlights','mp4',51200,'1280x720',180,'2023-02-20','janedoe','healthdept','Standard','Highlights of health fair activities','health,fair,2023','YouTube',3500,250,40,0,'/media/archive/health_fair','4','CaptionsIncluded');

INSERT INTO community_event_media_assets VALUES
('ASSET003','ArtExhibit','Audio','artist_interview','mp3',3200,'','300','2021-11-05','mikelee','artcouncil','RoyaltyFree','Interview with lead artist','art,exhibit,interview','Podcast',800,60,10,0,'/media/archive/art_exhibit','3',''); 

-- School energy storage metrics
CREATE TABLE school_energy_storage_metrics (
    StorageID TEXT PRIMARY KEY,
    SchoolCDSCode TEXT,
    BatterySystemType TEXT,
    CapacityKWh REAL,
    CurrentChargeKWh REAL,
    DepthOfDischargePercent REAL,
    RoundTripEfficiencyPercent REAL,
    InstallationDate DATE,
    LastMaintenanceDate DATE,
    Manufacturer TEXT,
    WarrantyEndDate DATE,
    PeakDischargePowerKW REAL,
    PeakChargePowerKW REAL,
    StateOfHealthPercent REAL,
    GridInteractionMode TEXT,
    MonitoringSystem TEXT,
    DataLogFrequencySec INTEGER,
    AverageDailyCycles INTEGER,
    YearlyEnergySavedKWh REAL,
    CO2ReductionKg REAL,
    FundingSource TEXT,
    Notes TEXT
);

INSERT INTO school_energy_storage_metrics VALUES
('STG001','C12345','LithiumIon',500.0,350.0,20.0,92.0,'2020-08-01','2022-07-15','PowerTech','2025-08-01',250.0,240.0,95.0,'PeakShaving','SCADA','300','2',1500.0,1200.0,'Grant2020','Installed on roof');

INSERT INTO school_energy_storage_metrics VALUES
('STG002','D67890','FlowBattery',800.0,600.0,15.0,88.0,'2021-03-20','2023-03-10','EnergyFlow','2026-03-20',300.0,280.0,93.0,'LoadBalancing','BMS','600','3',2500.0,2000.0,'BondFunding','Located in basement');

INSERT INTO school_energy_storage_metrics VALUES
('STG003','E24680','LeadAcid',300.0,150.0,25.0,80.0,'2019-11-05','2022-10-01','BatteryCo','2024-11-05','120.0','110.0','88.0','Backup','LegacySystem','900','1',800.0,640.0,'DistrictBudget','Older system pending replacement');

-- District legal case outcomes
CREATE TABLE district_legal_case_outcomes (
    CaseID TEXT PRIMARY KEY,
    CaseName TEXT,
    FilingDate DATE,
    ResolutionDate DATE,
    CaseType TEXT,
    Plaintiff TEXT,
    Defendant TEXT,
    Court TEXT,
    CaseStatus TEXT,
    Outcome TEXT,
    SettlementAmount REAL,
    JudgmentAmount REAL,
    LegalCounsel TEXT,
    AssignedJudge TEXT,
    AppealFiled INTEGER,
    AppealOutcome TEXT,
    Notes TEXT,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    ConfidentialityLevel TEXT,
    RelatedPolicy TEXT,
    PublicDisclosure INTEGER
);

INSERT INTO district_legal_case_outcomes VALUES
('LC001','Doe vs District','2020-02-10','2021-06-15','Employment','JohnDoe','District','StateCourt','Closed','Settled',250000.00,0.00,'LawFirmA','JudgeSmith',0,'','Settled out of court','admin1','2021-06-16','Medium','HRPolicy',1);

INSERT INTO district_legal_case_outcomes VALUES
('LC002','Smith vs District','2019-09-05','2020-12-20','Discrimination','JaneSmith','District','FederalCourt','Closed','Judgment',0.00,500000.00,'LawFirmB','JudgeDoe',1,'Rejected','Appeal denied','admin2','2020-12-21','High','EquityPolicy',0);

INSERT INTO district_legal_case_outcomes VALUES
('LC003','Brown vs District','2021-03-22','2022-01-10','Contract','ABC Supplies','District','StateCircuit','Closed','Dismissed',0.00,0.00,'LawFirmC','JudgeLee',0,'','Case dismissed for lack of standing','admin3','2022-01-11','Low','ProcurementPolicy',1);

-- Student transportation route map references
CREATE TABLE student_transportation_route_maps (
    RouteMapID TEXT PRIMARY KEY,
    RouteNumber TEXT,
    MapVersion INTEGER,
    CreationDate DATE,
    GeographicArea TEXT,
    TotalStops INTEGER,
    AverageRideTimeMin REAL,
    DistanceMiles REAL,
    PrimaryVehicleType TEXT,
    SchedulePDFPath TEXT,
    GeoJSONPath TEXT,
    UpdatedBy TEXT,
    UpdateDate DATE,
    AccessibilityFeatures TEXT,
    Note TEXT,
    IsActive INTEGER,
    ApprovalStatus TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    GIS Analyst TEXT,
    Comments TEXT,
    DataSource TEXT
);

INSERT INTO student_transportation_route_maps VALUES
('RM001','R10',1,'2021-08-01','NorthernZone',25,35.5,12.3,'Bus','/maps/R10_v1.pdf','/maps/R10_v1.geojson','plannerA','2021-08-05','WheelchairRamp','Initial release',1,'Approved','DirectorA','2021-08-10','analystA','All stops verified','InternalGIS');

INSERT INTO student_transportation_route_maps VALUES
('RM002','R22',2,'2022-05-15','SouthernZone',30,40.0,15.0,'MiniBus','/maps/R22_v2.pdf','/maps/R22_v2.geojson','plannerB','2022-05-20','LowFloor','Updated for new housing',1,'Pending','',NULL,'analystB','Awaiting approval','ExternalConsultant');

INSERT INTO student_transportation_route_maps VALUES
('RM003','R5',1,'2020-01-20','CentralZone',18,28.0,9.5,'Bus','/maps/R5_v1.pdf','/maps/R5_v1.geojson','plannerC','2020-01-25','None','Legacy map retained',0,'Retired','DirectorB','2020-02-01','analystC','Route discontinued','HistoricalArchive');

-- Teacher professional networks extended
CREATE TABLE teacher_professional_networks_extended (
    NetworkID TEXT PRIMARY KEY,
    TeacherID TEXT,
    NetworkName TEXT,
    RoleInNetwork TEXT,
    JoinDate DATE,
    ActivityLevel TEXT,
    ProjectsParticipated INTEGER,
    PublicationsCount INTEGER,
    ConferenceAttendances INTEGER,
    MentorFlag INTEGER,
    MentorID TEXT,
    SpecialtyArea TEXT,
    CollaborationTool TEXT,
    CommunicationFrequency TEXT,
    LastInteractionDate DATE,
    NetworkStatus TEXT,
    FundingSource TEXT,
    AnnualBudget REAL,
    ImpactScore REAL,
    Notes TEXT,
    UpdatedBy TEXT,
    UpdatedDate DATE
);

INSERT INTO teacher_professional_networks_extended VALUES
('NET001','T123','STEM Leaders','Member','2018-09-01','High',5,2,8,1,'T200','STEM','Slack','Weekly','2023-06-10','Active','Grant2021',15000.00,85.5,'Lead STEM curriculum development','adminN1','2023-06-12');

INSERT INTO teacher_professional_networks_extended VALUES
('NET002','T456','Literacy Circle','Coordinator','2020-01-15','Medium',3,1,4,0,NULL,'Reading','Teams','Monthly','2023-05-20','Active','DistrictFund',8000.00,70.2,'Organized reading workshops','adminN2','2023-05-22');

INSERT INTO teacher_professional_networks_extended VALUES
('NET003','T789','Arts Collaborative','Mentor','2015-03-10','Low',2,0,2,1,'T990','VisualArts','Email','Quarterly','2022-12-05','Inactive','SelfFunded',0.00,45.0,'Mentored new art teachers','adminN3','2022-12-07');

-- School technology adoption survey results (duplicate name avoided, already defined) 

-- Additional table (ensuring ten total) – District technology asset audit
CREATE TABLE district_technology_asset_audit (
    AssetAuditID TEXT PRIMARY KEY,
    AssetTag TEXT,
    AssetType TEXT,
    Manufacturer TEXT,
    Model TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyEndDate DATE,
    AssignedLocation TEXT,
    AssignedDepartment TEXT,
    CurrentUser TEXT,
    ConditionStatus TEXT,
    LastInspectionDate DATE,
    InspectionResult TEXT,
    DepreciationMethod TEXT,
    OriginalCost REAL,
    CurrentBookValue REAL,
    DisposalPlan TEXT,
    DisposalDate DATE,
    DisposedBy TEXT,
    Comments TEXT,
    Auditor TEXT,
    AuditDate DATE
);

INSERT INTO district_technology_asset_audit VALUES
('AUD001','TAG1001','Laptop','Dell','Latitude 5420','SN12345','2019-09-15','2022-09-15','School A','IT','teacher1','Good','2022-06-01','Pass','StraightLine',1200.00,450.00','Recycle','2023-01-10','techlead','Replaced with newer model','auditor1','2023-01-15');

INSERT INTO district_technology_asset_audit VALUES
('AUD002','TAG2002','Projector','Epson','PowerLite X30','SN67890','2020-02-20','2023-02-20','School B','Media','teacher2','Fair','2022-08-15','Pass','DecliningBalance',800.00,300.00','Donate','2024-03-05','admin2','Donated to community center','auditor2','2024-03-10');

INSERT INTO district_technology_asset_audit VALUES
('AUD003','TAG3003','Desktop','HP','EliteDesk 800','SN54321','2018-05-10','2021-05-10','Administration','Finance','accountant1','Poor','2021-12-01','Fail','StraightLine',1500.00,200.00','Recycle','2022-07-20','techsupport','Scheduled for disposal due to failure','auditor3','2022-07-25');