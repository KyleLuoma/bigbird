-- District community outreach initiatives and contacts
CREATE TABLE district_community_outreach
(
    OutreachID            TEXT PRIMARY KEY,
    DistrictCode          TEXT,
    InitiativeName        TEXT,
    StartDate             DATE,
    EndDate               DATE,
    TargetPopulation      TEXT,
    BudgetAmount          REAL,
    FundingSource         TEXT,
    CoordinatorFirstName  TEXT,
    CoordinatorLastName   TEXT,
    CoordinatorEmail      TEXT,
    PartnerOrganization   TEXT,
    PartnerContactName    TEXT,
    PartnerContactPhone   TEXT,
    OutreachType          TEXT,
    Region                TEXT,
    ExpectedReachCount    INTEGER,
    ActualReachCount      INTEGER,
    EvaluationScore       REAL,
    Notes                 TEXT,
    CreatedTimestamp      DATE,
    UpdatedTimestamp      DATE
);

INSERT INTO district_community_outreach VALUES
('OUT001','D001','HealthyEatingCampaign','2023-01-15','2023-06-15','Students','15000','StateGrant','Maria','Lopez','mlopez@example.com','LocalFoodBank','John Doe','5551234567','Nutrition','North','5000',NULL,NULL,'Initial rollout','2023-01-10','2023-01-12');

INSERT INTO district_community_outreach VALUES
('OUT002','D002','STEMAfterSchool','2023-03-01','2023-12-31','MiddleSchool','25000','FederalGrant','Alan','Chen','achen@example.com','TechPartners','Sara Lee','5559876543','STEM','South','4000',NULL,NULL,'Pilot phase','2023-02-28','2023-03-02');

INSERT INTO district_community_outreach VALUES
('OUT003','D003','ArtInThePark','2022-05-01','2022-10-01','Community','8000','LocalDonations','Nina','Patel','npatel@example.com','CityArtsCouncil','Mike Ross','5552468135','Arts','East','1200',NULL,NULL,'Completed','2022-04-20','2022-04-22');

-- School facility project planning and status
CREATE TABLE school_facility_projects
(
    ProjectID               TEXT PRIMARY KEY,
    SchoolCode              TEXT,
    ProjectName             TEXT,
    ProjectCategory         TEXT,
    RequestDate             DATE,
    ApprovalDate            DATE,
    StartDate               DATE,
    PlannedEndDate          DATE,
    ActualEndDate           DATE,
    ContractorName          TEXT,
    ContractorLicense      TEXT,
    EstimatedCost           REAL,
    ApprovedBudget          REAL,
    FundingSource           TEXT,
    ProjectManagerFirstName TEXT,
    ProjectManagerLastName  TEXT,
    ProjectManagerEmail     TEXT,
    Status                  TEXT,
    PercentComplete         REAL,
    SafetyInspectionDate    DATE,
    EnvironmentalImpactScore REAL,
    Notes                   TEXT
);

INSERT INTO school_facility_projects VALUES
('PRJ001','SCH001','GymnasiumRoofReplacement','Roofing','2022-07-01','2022-08-15','2022-09-01','2023-02-28',NULL,'BuildIt LLC','LIC12345','120000','115000','DistrictFunds','Laura','Miller','lmiller@example.com','InProgress',45,'2022-08-10',3.2,'Roof leak repairs ongoing');

INSERT INTO school_facility_projects VALUES
('PRJ002','SCH002','ScienceLabRenovation','Renovation','2023-01-10','2023-02-01','2023-03-01','2023-08-15',NULL,'RenovaCo','LIC67890','95000','90000','Grant2023','Kevin','Brown','kbrown@example.com','Planned',0,NULL,2.8,'Awaiting contractor selection');

INSERT INTO school_facility_projects VALUES
('PRJ003','SCH003','PlaygroundModernization','Playground','2021-05-15','2021-06-10','2021-07-01','2021-12-01','2021-11-28','FunFit Inc','LIC54321','50000','48000','CommunityDonations','Emily','Clark','eclark@example.com','Completed',100,'2021-11-20',1.5,'All safety standards met');

-- Student wellness and mental health programs
CREATE TABLE student_wellness_programs
(
    ProgramID               TEXT PRIMARY KEY,
    SchoolCode              TEXT,
    ProgramName             TEXT,
    LaunchDate              DATE,
    EndDate                 DATE,
    TargetGradeLevels       TEXT,
    MaxParticipants         INTEGER,
    EnrollmentCount         INTEGER,
    CounselorFirstName      TEXT,
    CounselorLastName       TEXT,
    CounselorEmail          TEXT,
    FundingSource           TEXT,
    AnnualBudget            REAL,
    SessionsPerMonth        INTEGER,
    SessionDurationMinutes  INTEGER,
    EvaluationMetric        TEXT,
    AvgSatisfactionScore    REAL,
    ReferralCount           INTEGER,
    FollowUpRate            REAL,
    ConfidentialityLevel    TEXT,
    Notes                   TEXT,
    CreatedDate             DATE,
    UpdatedDate             DATE
);

INSERT INTO student_wellness_programs VALUES
('WLP001','SCH001','MindfulKids','2022-09-01','2023-06-30','Grades3-5',150,120,'Olivia','Garcia','ogarcia@example.com','StateGrant',20000,2,45,'PrePostSurvey',4.5,30,0.85,'High','Focused on anxiety reduction','2022-08-15','2022-08-20');

INSERT INTO student_wellness_programs VALUES
('WLP002','SCH002','ActiveLiving','2023-01-15','2023-12-31','Grades6-8',200,180,'Dylan','Nguyen','dnguyen@example.com','DistrictFunds',25000,4,60,'AttendanceRate',92,NULL,0.78,'Medium','Promotes physical activity','2022-12-30','2023-01-05');

INSERT INTO student_wellness_programs VALUES
('WLP003','SCH003','NutritionBoost','2021-05-01','2022-04-30','AllGrades',300,250,'Sophie','Alvarez','salvarez@example.com','Grant2021',18000,3,30,'BMIChange',3.2,45,0.70,'Low','Improves lunch choices','2021-04-10','2021-04-12');

-- Teacher research activity tracking
CREATE TABLE teacher_research_activities
(
    ActivityID              TEXT PRIMARY KEY,
    TeacherID               TEXT,
    SchoolCode              TEXT,
    ResearchTitle           TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    FundingAgency           TEXT,
    GrantNumber             TEXT,
    AwardAmount             REAL,
    PublicationCount        INTEGER,
    ConferenceCount         INTEGER,
    PeerReviewCount         INTEGER,
    ResearchArea            TEXT,
    CollaborationPartner    TEXT,
    PartnerInstitution      TEXT,
    RoleInProject           TEXT,
    HoursPerWeek            REAL,
    Status                  TEXT,
    ImpactScore             REAL,
    LastUpdated             DATE,
    Notes                   TEXT,
    CreatedOn               DATE
);

INSERT INTO teacher_research_activities VALUES
('RA001','T001','SCH001','STEMIntegrationStudy','2022-01-01','2023-12-31','NSF','NSF2022-001',120000,3,2,1,'STEM Education','Dr Emily White','UniversityX','PrincipalInvestigator',10,'Active',4.5,'2023-06-01','Midterm review','2022-01-02');

INSERT INTO teacher_research_activities VALUES
('RA002','T002','SCH002','LiteracyImprovementProject','2021-09-15','2022-09-14','StateEdDept','SED-2021-07',50000,1,1,0,'Literacy','Ms Karen Smith','CollegeY','CoInvestigator',8,'Completed',3.8,'2022-09-20','Final report submitted','2021-09-16');

INSERT INTO teacher_research_activities VALUES
('RA003','T003','SCH003','VirtualFieldTripStudy','2023-03-01','2024-02-28','PrivateFoundation','PF-2023-12',75000,0,1,0,'Technology','Dr Alex Kim','TechInstitute','Investigator',12,'Proposed',NULL,'2023-03-05','Proposal under review','2023-03-02');

-- Environmental sensor deployment details
CREATE TABLE environmental_sensor_deployments_detail
(
    DeploymentID            TEXT PRIMARY KEY,
    SiteID                  TEXT,
    SensorType              TEXT,
    Manufacturer            TEXT,
    ModelNumber             TEXT,
    SerialNumber            TEXT,
    InstallationDate        DATE,
    CalibrationDate         DATE,
    LastMaintenanceDate     DATE,
    Latitude                REAL,
    Longitude               REAL,
    ElevationMeters         REAL,
    MeasurementUnit         TEXT,
    DataLogFrequencyMinutes INTEGER,
    PowerSource             TEXT,
    BatteryLifeHours        REAL,
    NetworkConnectivity     TEXT,
    FirmwareVersion         TEXT,
    CalibrationCoefficient  REAL,
    AccuracyRating          REAL,
    Status                  TEXT,
    Remarks                 TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE
);

INSERT INTO environmental_sensor_deployments_detail VALUES
('DEP001','SITE001','AirQuality','EnviroTech','AQ-100','SN12345','2022-05-10','2022-06-01','2023-05-10',34.0522,-118.2437,89,'PPM',15,'Solar','2000','WiFi','v1.2',0.98,95,'Active','Installed on roof','2022-05-08','2023-05-11');

INSERT INTO environmental_sensor_deployments_detail VALUES
('DEP002','SITE002','NoiseLevel','SoundPro','NL-200','SN67890','2023-01-20','2023-02-01','2023-07-20',40.7128,-74.0060,10,'dB',10,'Mains','N/A','Ethernet','v2.0',1.00,98,'Active','Near main entrance','2023-01-18','2023-07-21');

INSERT INTO environmental_sensor_deployments_detail VALUES
('DEP003','SITE003','WaterQuality','AquaSense','WQ-300','SN54321','2021-09-15','2021-10-01','2022-09-14',41.8781,-87.6298,180,'pH',30,'Battery','1500','Cellular','v1.5',0.95,92,'MaintenanceDue','Replace battery soon','2021-09-13','2022-09-15');

-- Technology asset lifecycle tracking
CREATE TABLE technology_asset_lifecycle
(
    AssetID                 TEXT PRIMARY KEY,
    SchoolCode              TEXT,
    AssetCategory           TEXT,
    AssetSubcategory        TEXT,
    Manufacturer            TEXT,
    ModelNumber             TEXT,
    SerialNumber            TEXT,
    PurchaseDate            DATE,
    WarrantyStartDate       DATE,
    WarrantyEndDate         DATE,
    Cost                    REAL,
    FundingSource           TEXT,
    AssignedToStaffID       TEXT,
    LocationRoom            TEXT,
    InstallationDate        DATE,
    LastServiceDate         DATE,
    ServiceProvider         TEXT,
    DepreciationPeriodYears INTEGER,
    CurrentValue            REAL,
    DisposalDate            DATE,
    DisposalMethod          TEXT,
    DisposalReason          TEXT,
    Status                  TEXT,
    Notes                   TEXT,
    CreatedTimestamp        DATE,
    UpdatedTimestamp        DATE
);

INSERT INTO technology_asset_lifecycle VALUES
('ASSET001','SCH001','Computer','Laptop','Dell','XPS13','DL12345','2020-08-01','2020-08-01','2023-08-01',1200,'DistrictFunds','STF001','Room101','2020-08-15','2022-11-20','TechServCo',3,400,NULL,NULL,NULL,'Retired','Donated to community center','2020-07-30','2023-08-10');

INSERT INTO technology_asset_lifecycle VALUES
('ASSET002','SCH002','Projector','Interactive','Epson','EB-5500','EP67890','2021-02-15','2021-02-15','2024-02-15',850,'Grant2021','STF002','Auditorium','2021-03-01','2023-01-10','ProjTech','5',600,NULL,NULL,NULL,'Active','Calibrated quarterly','2021-02-10','2021-02-18');

INSERT INTO technology_asset_lifecycle VALUES
('ASSET003','SCH003','Network','Switch','Cisco','Catalyst2960','CS54321','2019-05-20','2019-05-20','2022-05-20',450,'DistrictFunds','STF003','ServerRoom','2019-06-01','2022-04-15','NetSolutions','4',150,'2022-05-25','Recycled','End of life','Retired','Replaced with newer model','2019-05-15','2022-05-22');

-- Grant funding distribution across districts
CREATE TABLE grant_funding_distribution
(
    DistributionID          TEXT PRIMARY KEY,
    GrantID                 TEXT,
    GrantName               TEXT,
    AwardingAgency          TEXT,
    AwardDate               DATE,
    TotalAwardAmount        REAL,
    DistrictCode            TEXT,
    AllocatedAmount         REAL,
    AllocationDate          DATE,
    PurposeDescription      TEXT,
    ReportingFrequency     TEXT,
    LastReportDate          DATE,
    ComplianceStatus        TEXT,
    Notes                   TEXT,
    CreatedOn               DATE,
    UpdatedOn               DATE,
    FiscalYear              TEXT,
    FundingCategory         TEXT,
    ApplicationStatus       TEXT,
    ReviewScore             REAL,
    ContactPersonFirstName  TEXT,
    ContactPersonLastName   TEXT,
    ContactEmail            TEXT
);

INSERT INTO grant_funding_distribution VALUES
('DIST001','GNT001','STEM Innovation Grant','FederalEducationDept','2022-03-01',500000,'D001',150000,'2022-04-15','Purchase of lab equipment','Quarterly','2023-01-10','Compliant','First installment transferred','2022-03-01','2022-03-05','2022','Equipment','Approved',4.7,'Linda','Brown','lbrown@example.com');

INSERT INTO grant_funding_distribution VALUES
('DIST002','GNT002','Community Health Initiative','StateHealthAgency','2021-10-15',300000,'D002',120000,'2021-11-01','School nurse staffing','SemiAnnual','2022-06-20','Compliant','Mid-year report submitted','2021-10-10','2021-10-12','2021','Personnel','Approved',4.2,'Mark','Taylor','mtaylor@example.com');

INSERT INTO grant_funding_distribution VALUES
('DIST003','GNT003','Digital Learning Expansion','PrivateFoundation','2023-01-20',400000,'D003',200000,'2023-02-05','Tablet procurement','Annual','2023-12-15','Pending','Awaiting final audit','2023-01-15','2023-01-18','2023','Technology','Pending',NULL,'Sofia','Martinez','smartinez@example.com');

-- Parent engagement event scheduling
CREATE TABLE parent_engagement_events
(
    EventID                 TEXT PRIMARY KEY,
    SchoolCode              TEXT,
    EventName               TEXT,
    EventDate               DATE,
    StartTime               TEXT,
    EndTime                 TEXT,
    Location                TEXT,
    TargetAudience          TEXT,
    ExpectedAttendance      INTEGER,
    RegistrationRequired    TEXT,
    RegistrationDeadline    DATE,
    CoordinatorFirstName    TEXT,
    CoordinatorLastName     TEXT,
    CoordinatorEmail        TEXT,
    EventType               TEXT,
    Theme                   TEXT,
    MaterialsProvided       TEXT,
    FoodProvided            TEXT,
    CostPerFamily           REAL,
    SponsorshipName         TEXT,
    Notes                   TEXT,
    CreatedOn               DATE,
    UpdatedOn               DATE
);

INSERT INTO parent_engagement_events VALUES
('EVT001','SCH001','BackToSchool Night','2023-08-20','18:00','20:00','Gymnasium','All Parents',150,'Yes','2023-08-10','Amy','Wong','awong@example.com','Information','Welcome','Handouts','Snacks',0,'LocalBank','Introduce staff and policies','2023-07-01','2023-07-10');

INSERT INTO parent_engagement_events VALUES
('EVT002','SCH002','College Prep Workshop','2023-11-05','16:30','18:30','Library','Parents of Grades10-12',80,'No',NULL,'Brian','Lee','blee@example.com','Workshop','College Readiness','Brochures','Coffee',5,'EduFoundation','Prepare students for college applications','2023-10-01','2023-10-15');

INSERT INTO parent_engagement_events VALUES
('EVT003','SCH003','Family Math Night','2024-02-12','17:00','19:30','Cafeteria','All Families',200,'Yes','2024-02-01','Carla','Mendoza','cmendoza@example.com','Activity','Math Games','Worksheets','Pizza',2,'TechCorp','Promote math fun at home','2024-01-10','2024-01-20');

-- School arts exhibit catalog (extended)
CREATE TABLE school_arts_exhibit_catalog_extended
(
    ExhibitID               TEXT PRIMARY KEY,
    SchoolCode              TEXT,
    ExhibitTitle            TEXT,
    CuratorFirstName        TEXT,
    CuratorLastName         TEXT,
    CuratorEmail            TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    GalleryLocation         TEXT,
    NumberOfPieces          INTEGER,
    TotalEstimatedValue     REAL,
    ArtworkMedium           TEXT,
    ArtistNames             TEXT,
    FeaturedStudentProjects TEXT,
    SponsorshipAmount       REAL,
    SponsorName             TEXT,
    OpeningReceptionDate    DATE,
    ReceptionTime           TEXT,
    AdmissionFee            REAL,
    AccessibilityFeatures   TEXT,
    MarketingChannels       TEXT,
    VisitorCount            INTEGER,
    FeedbackScore           REAL,
    Notes                   TEXT,
    CreatedTimestamp        DATE,
    UpdatedTimestamp        DATE
);

INSERT INTO school_arts_exhibit_catalog_extended VALUES
('EXH001','SCH001','Visions of Nature','Daniel','Kim','dkim@example.com','2023-03-01','2023-04-15','ArtRoomA',45,12000,'MixedMedia','Alice Smith;Bob Jones','Student mural project',2000,'ArtBank','2023-02-28','18:00',5,'WheelchairRamp','SocialMedia;Flyers',300,4.6,'Positive community response','2023-02-20','2023-02-25');

INSERT INTO school_arts_exhibit_catalog_extended VALUES
('EXH002','SCH002','Modern Expressions','Laura','Diaz','ldiaz@example.com','2023-09-10','2023-10-20','GalleryB',30,8000,'DigitalPrint','Carlos Ruiz;Diana Lee','3D printing showcase',1500,'TechAlliance','2023-09-09','19:00',0,'AudioGuide','EmailNewsletter;SchoolWebsite',180,4.2,'Well attended by students','2023-09-01','2023-09-05');

INSERT INTO school_arts_exhibit_catalog_extended VALUES
('EXH003','SCH003','Historical Perspectives','Michael','Owen','mowen@example.com','2024-01-15','2024-03-01','HallC',60,15000,'OilPainting','Eleanor Finch;George Hall','History art competition',2500,'HeritageFund','2024-01-14','17:30',3,'CaptionedTours','LocalPress;CommunityBoards',220,4.8,'Highlighted local heritage','2024-01-05','2024-01-10');

-- District transportation infrastructure inventory
CREATE TABLE district_transportation_infrastructure_inventory
(
    AssetID                 TEXT PRIMARY KEY,
    DistrictCode            TEXT,
    AssetType               TEXT,
    AssetSubType            TEXT,
    Manufacturer            TEXT,
    ModelNumber             TEXT,
    SerialNumber            TEXT,
    InstallationYear        INTEGER,
    CapacityVehicles        INTEGER,
    LengthMiles             REAL,
    SurfaceMaterial         TEXT,
    MaintenanceStatus       TEXT,
    LastInspectionDate      DATE,
    NextPlannedMaintenance  DATE,
    GPSLatitudeStart        REAL,
    GPSLongitudeStart       REAL,
    GPSLatitudeEnd          REAL,
    GPSLongitudeEnd         REAL,
    EstimatedReplacementYear INTEGER,
    FundingSource           TEXT,
    AnnualMaintenanceCost   REAL,
    ConditionRating         REAL,
    Notes                   TEXT,
    CreatedDate             DATE,
    UpdatedDate             DATE
);

INSERT INTO district_transportation_infrastructure_inventory VALUES
('TIN001','D001','Bridge','Overpass','BridgeCo','BR-200','SN8001',1998,2,NULL,'Concrete','Good','2022-11-15','2024-11-15',34.0500,-118.2500,34.0520,-118.2550,2035,'StateFunds',15000,8.5,'Routine inspections passed','2022-10-01','2022-10-05');

INSERT INTO district_transportation_infrastructure_inventory VALUES
('TIN002','D002','Roadway','Highway','RoadBuildInc','HW-500','SN8002',2005,4,12.5,'Asphalt','Fair','2023-03-20','2025-03-20',40.7128,-74.0060,40.7300,-73.9900,2030,'FederalGrant',30000,7.0,'Pothole repairs scheduled','2022-12-15','2023-01-01');

INSERT INTO district_transportation_infrastructure_inventory VALUES
('TIN003','D003','Rail','FreightLine','RailWorks','RL-310','SN8003',2012,10,NULL,'Steel','Excellent','2023-06-10','2026-06-10',41.8781,-87.6298,41.8800,-87.6200,2040,'PublicPrivate','50000',9.2,'No major issues','2023-05-20','2023-05-22');
