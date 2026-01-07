-- Table describing large‑scale transportation projects managed by the district
CREATE TABLE district_transportation_infrastructure (
    ProjectID            TEXT PRIMARY KEY,
    ProjectName          TEXT,
    StartDate            DATE,
    EndDate              DATE,
    Budget               REAL,
    FundingSource        TEXT,
    County               TEXT,
    District             TEXT,
    Phase                TEXT,
    LengthMiles          REAL,
    Contractors          TEXT,
    PermitNumber         TEXT,
    EnvironmentalImpactScore INTEGER,
    TrafficImpactScore   INTEGER,
    EstimatedVehiclesPerDay INTEGER,
    ConstructionStatus   TEXT,
    LeadEngineer         TEXT,
    ContactPhone         TEXT,
    GISLayerID           INTEGER,
    Notes                TEXT,
    CreatedAt            DATE,
    UpdatedAt            DATE
);

INSERT INTO district_transportation_infrastructure VALUES
('DTI001','River Bridge Replacement','2022-05-01','2024-09-30',12500000,'State Grant','River County','North District','Design','2.5','BridgeCo Ltd','PERM12345',8,7,25000,'In Progress','Laura Mills','5551234567',101,'Critical for flood control','2022-04-15','2023-01-10');

INSERT INTO district_transportation_infrastructure VALUES
('DTI002','Highway 12 Widening','2023-01-15','2025-12-15',9300000,'Federal Funding','Lake County','South District','Construction','15.0','RoadWorks Inc','PERM67890',6,9,54000,'Planning','Mark Chen','5559876543',102,'Includes new bike lanes','2022-12-20','2023-02-05');

INSERT INTO district_transportation_infrastructure VALUES
('DTI003','Community Bus Depot Upgrade','2021-09-01','2023-06-30',2100000,'Local Bond','Mountain County','East District','Implementation','0.0','DepotBuilders','PERM54321',4,3,0,'Completed','Emily Rivera','5552223344',103,'Added EV charging stations','2021-08-10','2023-07-01');


-- Table storing information about music and performing arts programs in each school
CREATE TABLE school_music_programs (
    ProgramID            TEXT PRIMARY KEY,
    SchoolID             TEXT,
    ProgramName          TEXT,
    DirectorName         TEXT,
    StartYear            INTEGER,
    EndYear              INTEGER,
    EnsembleType         TEXT,
    NumberOfStudents     INTEGER,
    WeeklyRehearsalHours REAL,
    AnnualBudget         REAL,
    FundingSource        TEXT,
    InstrumentFocus      TEXT,
    RoomNumber           TEXT,
    EquipmentCount       INTEGER,
    SheetMusicVolume     INTEGER,
    PerformanceCountYear INTEGER,
    CommunityOutreachFlag INTEGER,
    GrantAwarded         TEXT,
    GrantAmount          REAL,
    LastUpdated          DATE,
    CreatedDate          DATE,
    Notes                TEXT,
    AccreditationStatus  TEXT,
    StateProgramCode     TEXT
);

INSERT INTO school_music_programs VALUES
('MP001','SCH1001','Orchestra','James Keller',2015,NULL,'String','48',3.5,75000,'District Funds','String','Room 210',120,300,4,1,'ArtsBoost','15000','2023-03-01','2020-08-15','Participates in regional festivals','Accredited','MUS001');

INSERT INTO school_music_programs VALUES
('MP002','SCH1002','Jazz Band','Tara Singh',2018,NULL,'Jazz','30',2.0,48000,'Grant','Wind','Room 115',80,200,2,0,'JazzRise','8000','2023-01-20','2019-09-10','Collaborates with local jazz club','Accredited','MUS002');

INSERT INTO school_music_programs VALUES
('MP003','SCH1003','Choir','Linda Gomez',2012,2024,'Vocal','55',2.5,60000,'District Funds','Vocal','Room 303',0,250,3,1,'HarmonyGrant','12000','2022-11-05','2018-05-22','Will tour state capital','Pending','MUS003');


-- Table tracking community‑led environmental sustainability projects
CREATE TABLE community_environmental_initiatives (
    InitiativeID          TEXT PRIMARY KEY,
    CommunityGroupName    TEXT,
    ProjectTitle          TEXT,
    StartDate             DATE,
    EndDate               DATE,
    EstimatedCost         REAL,
    FundingSource         TEXT,
    TargetArea            TEXT,
    ProjectType           TEXT,
    VolunteerHoursPlanned INTEGER,
    VolunteerHoursActual  INTEGER,
    TreesPlanted          INTEGER,
    CleanupEventsCount    INTEGER,
    RecyclingStationsAdded INTEGER,
    WaterConservationLiters REAL,
    CarbonOffsetTons      REAL,
    Status                TEXT,
    ProjectLead           TEXT,
    ContactEmail          TEXT,
    ReportSubmissionDate  DATE,
    CreatedOn             DATE,
    UpdatedOn             DATE,
    Notes                 TEXT
);

INSERT INTO community_environmental_initiatives VALUES
('EI001','GreenRiver Citizens','Riverbank Restoration','2023-02-01','2023-11-30',45000,'City Grant','Riverbank','Habitat','800','790',1200,5,8,25000,12.5,'Completed','Carlos Diaz','carlos.diaz@example.com','2023-12-05','2023-01-20','Successful native plantings');

INSERT INTO community_environmental_initiatives VALUES
('EI002','Neighborhood EcoClub','Community Recycling Expansion','2022-05-15','2024-05-15',30000,'Private Donation','Northside','Recycling','500','450',0,12,15,0,0,'In Progress','Megan Lee','megan.lee@example.com','2023-07-10','2022-04-30','Phase 1 complete');

INSERT INTO community_environmental_initiatives VALUES
('EI003','Youth Climate Action','Tree Canopy Drive','2023-04-10','2024-09-30',20000,'State Grant','East District','Afforestation','400','380',800,0,0,0,5.8,'Active','Samir Patel','samir.patel@example.com','2023-10-02','2023-03-25','Targeting schools');


-- Table recording student‑led global service projects
CREATE TABLE student_global_service_projects (
    ProjectID            TEXT PRIMARY KEY,
    SchoolID             TEXT,
    StudentLeaderID      TEXT,
    ProjectName          TEXT,
    Country               TEXT,
    StartDate            DATE,
    EndDate              DATE,
    FundingAmount        REAL,
    FundingSource        TEXT,
    PartnerOrganization  TEXT,
    NumberOfParticipants INTEGER,
    HoursPerParticipant  REAL,
    TotalHoursDelivered  REAL,
    ImpactSummary        TEXT,
    Status               TEXT,
    ApprovalDate         DATE,
    LastModified         DATE,
    CreatedDate          DATE,
    EvaluationScore      INTEGER,
    FollowUpNeededFlag  INTEGER,
    DocumentationLink    TEXT,
    Notes                TEXT,
    Category             TEXT,
    LanguageUsed         TEXT
);

INSERT INTO student_global_service_projects VALUES
('GS001','SCH2001','STU105','Clean Water Initiative','Kenya','2023-06-01','2023-08-15',12000,'Fundraising','AquaAid',25,40,1000,'Installed 5 boreholes','Completed','2023-05-20','2023-09-01','2023-04-30',85,0,'http://example.com/docs/gs001','Received local media coverage','Health','English');

INSERT INTO student_global_service_projects VALUES
('GS002','SCH2002','STU210','Literacy Outreach','Peru','2023-09-01','2024-02-28',8000,'School Grant','ReadForAll',30,35,1050,'Provided 1,200 books','Ongoing','2023-08-15','2023-09-20','2023-08-01',78,1,'http://example.com/docs/gs002','Needs additional volunteers','Education','Spanish');

INSERT INTO student_global_service_projects VALUES
('GS003','SCH2003','STU322','Renewable Energy Workshop','India','2023-11-01','2024-03-31',15000,'Corporate Sponsorship','SolarFuture',20,45,900,'Installed solar panels at 2 schools','Planned','2023-10-10','2023-11-05','2023-10-01',0,0,'http://example.com/docs/gs003','Awaiting equipment delivery','Environment','English');


-- Table capturing district‑wide technology funding allocations
CREATE TABLE district_technology_funding_allocations (
    AllocationID          TEXT PRIMARY KEY,
    FiscalYear            TEXT,
    ProgramName           TEXT,
    TotalAmount           REAL,
    FederalShare          REAL,
    StateShare            REAL,
    LocalShare            REAL,
    EligibleSchoolsCount  INTEGER,
    EligibleStudentsCount INTEGER,
    AllocationDate        DATE,
    ExpirationDate        DATE,
    FundingSourceCode     TEXT,
    GrantNumber           TEXT,
    PurposeDescription    TEXT,
    Status                TEXT,
    ApprovedBy            TEXT,
    ApprovalDate          DATE,
    DisbursementDate      DATE,
    ReportingQuarter      TEXT,
    Notes                 TEXT,
    CreatedTimestamp      DATE,
    UpdatedTimestamp      DATE,
    ContactPhone          TEXT,
    ContactEmail          TEXT
);

INSERT INTO district_technology_funding_allocations VALUES
('TF001','2023-2024','Digital Classroom Upgrade',2500000,1250000,500000,750000,45,18000,'2023-03-01','2026-02-28','EDU01','GR12345','Upgrade interactive whiteboards','Approved','Ms. Parker','2023-02-20','2023-04-15','Q1','', '2023-02-01','2023-04-20','5551112233','techfund@example.com');

INSERT INTO district_technology_funding_allocations VALUES
('TF002','2023-2024','Student Device Provision',4000000,2000000,1200000,800000,50,22000,'2023-04-10','2025-04-09','EDU02','GR67890','Provide laptops to grades 6-12','Pending','Mr. Liu','2023-03-30','2023-05-01','Q2','Awaiting final approval','2023-03-15','2023-05-05','5552223344','devices@example.com');

INSERT INTO district_technology_funding_allocations VALUES
('TF003','2022-2023','Network Infrastructure',1500000,750000,300000,450000,40,15000,'2022-09-05','2024-09-04','EDU03','GR24680','Upgrade district fiber backbone','Closed','Dr. Silva','2022-08-20','2022-10-01','Q3','Completed with underrun','2022-08-01','2022-10-10','5553334455','network@example.com');


-- Table inventorying HVAC systems across district facilities
CREATE TABLE facility_hvac_systems_inventory (
    SystemID             TEXT PRIMARY KEY,
    FacilityID           TEXT,
    SystemType           TEXT,
    Manufacturer         TEXT,
    ModelNumber          TEXT,
    InstallationDate     DATE,
    WarrantyExpiration   DATE,
    CapacityTon          REAL,
    EfficiencyRating     REAL,
    LastInspectionDate   DATE,
    NextScheduledInspect DATE,
    EnergyStarCertified  INTEGER,
    ControlSystemVersion TEXT,
    SerialNumber         TEXT,
    ReplacementYearPlan  INTEGER,
    MaintenanceVendor    TEXT,
    ContactPhone         TEXT,
    ContactEmail          TEXT,
    CurrentStatus        TEXT,
    Notes                TEXT,
    CreatedOn            DATE,
    UpdatedOn            DATE,
    ZoneCount            INTEGER,
    PowerSupplyType      TEXT
);

INSERT INTO facility_hvac_systems_inventory VALUES
('HVAC001','FAC100','VAV','Carrier','C1000','2015-06-15','2025-06-14',250.0,0.92,'2023-05-10','2024-05-10',1,'v2.3','SN12345',2030,'CoolMaintain','5554445566','hvac1@example.com','Operational','Routine maintenance','2015-06-20','2023-05-12',12,'Electric');

INSERT INTO facility_hvac_systems_inventory VALUES
('HVAC002','FAC101','Rooftop','Daikin','D200','2018-09-01','2028-08-31',350.0,0.88,'2023-03-22','2024-03-22',0,'v1.9','SN67890',2032,'AirCare','5555556677','hvac2@example.com','Under Repair','Compressor failure','2018-09-05','2023-03-25',10,'Electric');

INSERT INTO facility_hvac_systems_inventory VALUES
('HVAC003','FAC102','Chilled Water','Trane','T300','2020-01-10','2030-01-09',500.0,0.95,'2023-01-15','2024-01-15',1,'v3.0','SN24680',2035,'ClimateServ','5556667788','hvac3@example.com','Operational','Upgraded controls','2020-01-12','2023-01-18',15,'Water');


-- Table cataloguing detailed school nutrition meal plans
CREATE TABLE school_nutrition_meal_plans (
    MealPlanID           TEXT PRIMARY KEY,
    SchoolID             TEXT,
    PlanName             TEXT,
    AcademicYear         TEXT,
    MealType             TEXT,
    TargetGradeRange     TEXT,
    CaloriesPerMeal      INTEGER,
    ProteinGrams         REAL,
    SodiumMg             INTEGER,
    SugarGrams           REAL,
    FiberGrams           REAL,
    VitaminA_MCU         INTEGER,
    VitaminC_MCU         INTEGER,
    Calcium_MCU          INTEGER,
    Iron_MCU             INTEGER,
    BreakfastItems       TEXT,
    LunchItems           TEXT,
    SnackItems           TEXT,
    SpecialDietFlag      INTEGER,
    ApprovalDate         DATE,
    ReviewedBy           TEXT,
    ReviewDate           DATE,
    CreatedTimestamp     DATE,
    UpdatedTimestamp     DATE,
    Notes                TEXT,
    CostPerMeal          REAL,
    SupplierName         TEXT
);

INSERT INTO school_nutrition_meal_plans VALUES
('MP001','SCH3001','Balanced Growth','2023-2024','Breakfast','K-5',550,20.5,800,12.0,5.0,600,500,300,9,'Oatmeal, Fruit, Milk','Turkey Sandwich, Veggies, Apple','Granola Bar',0,'2023-02-10','Nutritionist Lee','2023-03-01','2023-02-01','2023-03-05','',1.85,'FreshFoods Inc');

INSERT INTO school_nutrition_meal_plans VALUES
('MP002','SCH3002','Low Sodium Plan','2023-2024','Lunch','6-8',700,25.0,400,18.0,7.0,800,600,400,12,'Whole Wheat Pancake, Fruit','Grilled Chicken, Brown Rice, Steamed Broccoli','Yogurt',0,'2023-01-20','Dietitian Patel','2023-02-15','2023-01-05','2023-02-20','Reduced salt version','2.10','HealthHarvest');

INSERT INTO school_nutrition_meal_plans VALUES
('MP003','SCH3003','Gluten Free Menu','2023-2024','Snack','9-12',250,8.0,200,5.0,3.0,300,200,150,5,'Fruit Cup','Rice Cakes with Peanut Butter','Mixed Nuts',1,'2023-03-05','Chef Gomez','2023-04-01','2023-03-01','2023-04-05','Allergen‑free','1.50','AllSafe Foods');


-- Table logging detailed teacher online training session records
CREATE TABLE teacher_online_training_sessions (
    SessionID            TEXT PRIMARY KEY,
    TeacherID            TEXT,
    CourseCode           TEXT,
    CourseTitle          TEXT,
    ProviderOrganization TEXT,
    EnrollmentDate       DATE,
    CompletionDate       DATE,
    CreditsEarned        REAL,
    Status               TEXT,
    InstructorName       TEXT,
    DurationHours        REAL,
    WebinarLink          TEXT,
    AssessmentScore      INTEGER,
    CertificationAwarded TEXT,
    PaymentRequiredFlag  INTEGER,
    CostUSD              REAL,
    Notes                TEXT,
    CreatedOn            DATE,
    UpdatedOn            DATE,
    LastAccessed         DATE,
    DeviceUsed           TEXT,
    IPAddress            TEXT,
    BrowserVersion       TEXT,
    OperatingSystem      TEXT,
    SessionRating        INTEGER,
    FeedbackComments     TEXT
);

INSERT INTO teacher_online_training_sessions VALUES
('TS001','TCH1001','EDU102','Advanced Assessment Strategies','EduWeb','2023-02-01','2023-04-15',3.0,'Completed','Dr. Harper',30.0,'https://webinar.edu/ed102',92,'Certificate of Mastery',0,0,'Highly engaging','2023-01-20','2023-04-16','2023-04-14','Laptop','192.168.10.5','Chrome 112','Windows 10',5,'Will recommend to peers');

INSERT INTO teacher_online_training_sessions VALUES
('TS002','TCH1002','EDU205','Integrating AI in the Classroom','TechTeach','2023-03-10',NULL,2.0,'In Progress','Prof. Lin',20.0,'https://webinar.tech/ai202',NULL,NULL,1,199.99,'Awaiting completion','2023-03-01','2023-03-11','2023-03-20','Tablet','10.0.0.45','Firefox 108','iOS',NULL,NULL');

INSERT INTO teacher_online_training_sessions VALUES
('TS003','TCH1003','EDU310','Culturally Responsive Pedagogy','DiversityEd','2022-11-15','2023-01-20',1.5,'Completed','Ms. Alvarez',15.0,'https://webinar.div/resp',85,'Certificate of Completion',0,0,'Valuable insights','2022-11-01','2023-01-22','2023-01-19','Desktop','172.16.2.22','Edge 105','macOS',4,'Good content but pacing could improve');


-- Table recording district legal case details and outcomes
CREATE TABLE district_legal_case_management (
    CaseID               TEXT PRIMARY KEY,
    CaseNumber           TEXT,
    FilingDate           DATE,
    ClosureDate          DATE,
    CaseType             TEXT,
    PlaintiffName        TEXT,
    DefendantName        TEXT,
    ClaimAmountUSD       REAL,
    SettlementAmountUSD  REAL,
    Status               TEXT,
    AssignedAttorney     TEXT,
    AttorneyContactPhone TEXT,
    AttorneyContactEmail TEXT,
    CourtName            TEXT,
    JudgeName            TEXT,
    HearingDate          DATE,
    Verdict              TEXT,
    AppealFlag           INTEGER,
    AppealDeadline       DATE,
    Notes                TEXT,
    CreatedTimestamp     DATE,
    UpdatedTimestamp     DATE,
    LegalTeamLead        TEXT,
    ConfidentialFlag    INTEGER,
    CaseDescription      TEXT
);

INSERT INTO district_legal_case_management VALUES
('LC001','2023-CA-0045','2023-02-10','2023-08-15','Employment','John Doe','District','85000',85000,'Closed','Attorney Smith','5557778899','smith.law@example.com','County Superior Court','Judge Barnes','2023-06-01','Judgment for Plaintiff',0,NULL,'Settled out of court','2023-02-01','2023-08-20','Lead Counsel Martinez',0,'Alleged wrongful termination');

INSERT INTO district_legal_case_management VALUES
('LC002','2023-ENV-0012','2023-03-05',NULL,'Environmental','EcoWatch Org','District','150000',NULL,'Pending','Attorney Lee','5558889900','lee.law@example.com','State Court of Appeals','Judge Rivera','2023-09-15',NULL,1,'2024-03-01','Pending litigation on emissions','2023-03-01','2023-07-10','Lead Counsel Patel',0,'Violation of state clean air act');

INSERT INTO district_legal_case_management VALUES
('LC003','2022-EDU-0100','2022-11-20','2023-01-30','Contract','Vendor XYZ','District','50000',48000,'Closed','Attorney Green','5559990011','green.law@example.com','District Arbitration Panel','Judge Monroe','2022-12-15','Arbitration award to District',0,NULL,'Contract dispute over services','2022-11-01','2023-02-01','Lead Counsel O\'Connor',1,'Service agreement breach claim');


-- Table tracking community health outreach metrics by program
CREATE TABLE community_health_outreach_metrics (
    ProgramID            TEXT PRIMARY KEY,
    ProgramName          TEXT,
    LaunchDate           DATE,
    TargetPopulation     TEXT,
    ServiceArea          TEXT,
    SessionsConducted    INTEGER,
    TotalParticipants    INTEGER,
    NewRegistrations    INTEGER,
    FollowUpCallsMade    INTEGER,
    AvgSatisfactionScore REAL,
    FundingAmountUSD     REAL,
    FundingSource        TEXT,
    PrimaryPartner       TEXT,
    StaffHoursAllocated  REAL,
    MaterialsDistributed INTEGER,
    HealthScreeningsDone INTEGER,
    ImmunizationsAdministered INTEGER,
    ReferralCount        INTEGER,
    OutcomeNotes         TEXT,
    LastReportDate       DATE,
    CreatedOn            DATE,
    UpdatedOn            DATE,
    ContactPhone         TEXT,
    ContactEmail         TEXT,
    GeographicCoordinates TEXT
);

INSERT INTO community_health_outreach_metrics VALUES
('HOP001','Mobile Wellness Van','2022-05-01','Low‑income families','North District',24,480,320,150,4.6,75000,'County Grant','HealthFirst','350.0',1200,200,180,45,'Improved access to preventive care','2023-04-30','2022-04-15','2023-05-01','5551234567','outreach1@example.com','45.1234,-122.5678');

INSERT INTO community_health_outreach_metrics VALUES
('HOP002','Teen Mental Health Workshops','2023-01-15','High school students','East District',12,300,250,80,4.8,50000,'State Funding','MindWell','210.0',500,0,0,30,'Positive feedback on coping strategies','2023-08-10','2022-12-20','2023-08-15','5552345678','outreach2@example.com','45.6789,-122.3456');

INSERT INTO community_health_outreach_metrics VALUES
('HOP003','Senior Nutrition Program','2021-09-10','Senior citizens','South District',18,150,130,70,4.5,62000,'Federal Grant','GoldenYears','280.0',800,0,0,20,'Reduced food insecurity among participants','2023-03-05','2021-08-01','2023-03-10','5553456789','outreach3@example.com','45.4321,-122.7890');