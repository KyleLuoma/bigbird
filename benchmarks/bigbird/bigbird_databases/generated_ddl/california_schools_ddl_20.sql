-- School career fairs information
CREATE TABLE school_career_fairs
(
    FairID               TEXT NOT NULL PRIMARY KEY,
    SchoolCDS            TEXT NOT NULL,
    Year                 INTEGER NOT NULL,
    Season               TEXT NOT NULL,
    FairDate             DATE NOT NULL,
    HostOrganization     TEXT NOT NULL,
    NumberOfCompanies    INTEGER NOT NULL,
    StudentAttendees     INTEGER NOT NULL,
    FacultyVolunteers    INTEGER NOT NULL,
    Location             TEXT NOT NULL,
    City                 TEXT NOT NULL,
    State                TEXT NOT NULL,
    ZipCode              TEXT NOT NULL,
    BudgetUSD            REAL NOT NULL,
    SponsorshipUSD       REAL,
    MediaCoverage        TEXT,
    OutcomeSummary       TEXT,
    FollowUpActions      TEXT,
    CreatedAt            DATE NOT NULL,
    UpdatedAt            DATE NOT NULL
);

INSERT INTO school_career_fairs VALUES
('CF2023SPR001','12345678',2023,'Spring','2023-04-15','LocalChamber','12','250','5','Gymnasium','Springfield','CA','90210',5000.00,1500.00,'LocalNews','High employer interest','Send thank‑you letters','2023-01-10','2023-03-01');

INSERT INTO school_career_fairs VALUES
('CF2023SUM002','87654321',2023,'Summer','2023-07-20','TechPartners','8','180','3','Auditorium','Rivertown','TX','75001',4000.00,1200.00,'SchoolWebsite','Good student feedback','Collect survey data','2023-02-05','2023-06-15');

INSERT INTO school_career_fairs VALUES
('CF2024FAL003','11223344',2024,'Fall','2024-10-10','CommunityCollege','15','300','7','Cafeteria','Lakeview','NY','10001',6000.00,2000.00,'Radio','Excellent networking','Create internship list','2024-01-20','2024-09-01');

-- Teacher retention metrics per district
CREATE TABLE teacher_retention_metrics
(
    MetricID                TEXT NOT NULL PRIMARY KEY,
    DistrictCode            TEXT NOT NULL,
    AcademicYear            TEXT NOT NULL,
    TotalTeachersStart      INTEGER NOT NULL,
    TotalTeachersEnd        INTEGER NOT NULL,
    RetentionRatePct        REAL NOT NULL,
    NewHires                INTEGER NOT NULL,
    Retirements             INTEGER,
    Resignations            INTEGER,
    TransfersIn             INTEGER,
    TransfersOut            INTEGER,
    AvgYearsOfService       REAL,
    AvgSalaryUSD            REAL,
    ProfessionalDevHours    INTEGER,
    MentorAssignments       INTEGER,
    AvgClassSize            REAL,
    StudentPerformanceScore REAL,
    FundingAdjustmentUSD    REAL,
    ReportGeneratedOn       DATE NOT NULL,
    DataVerifiedBy          TEXT NOT NULL,
    Comments                TEXT
);

INSERT INTO teacher_retention_metrics VALUES
('TRM2023D01','D001','2022-2023',120,115,95.8,10,2,3,4,5,8.2,62000.00,40,15,22.5,78.4,5000.00,'2023-06-30','Superintendent','Stable district');

INSERT INTO teacher_retention_metrics VALUES
('TRM2023D02','D002','2022-2023',95,90,94.7,8,1,2,3,4,7.5,58000.00,35,12,20.1,74.2,3000.00,'2023-07-01','DirectorHR','Minor turnover');

INSERT INTO teacher_retention_metrics VALUES
('TRM2023D03','D003','2022-2023',140,132,94.3,12,3,4,5,6,9.1,65000.00,45,18,24.0,80.5,7000.00,'2023-06-28','ChiefAcademicOfficer','Improving support');

-- Regional education workshops
CREATE TABLE regional_education_workshops
(
    WorkshopID          TEXT NOT NULL PRIMARY KEY,
    RegionCode          TEXT NOT NULL,
    Title               TEXT NOT NULL,
    ProviderOrganization TEXT NOT NULL,
    StartDate           DATE NOT NULL,
    EndDate             DATE NOT NULL,
    City                TEXT NOT NULL,
    State               TEXT NOT NULL,
    Capacity            INTEGER NOT NULL,
    RegisteredAttendees INTEGER,
    CostPerParticipant  REAL,
    FundingSource       TEXT,
    MaterialsProvided   TEXT,
    EvaluationScore     REAL,
    FollowUpWebinarLink TEXT,
    Notes               TEXT,
    CreatedOn           DATE NOT NULL,
    UpdatedOn           DATE NOT NULL,
    OrganizerContact    TEXT,
    AccreditationStatus TEXT
);

INSERT INTO regional_education_workshops VALUES
('RW2023A','R01','Inclusive Teaching Strategies','EduConsult','2023-03-10','2023-03-12','Midtown','FL',50,48,150.00,'StateGrant','Handouts,OnlineAccess','4.7','http://example.com/webinar1','Positive feedback','2023-01-15','2023-02-28','jane.smith@example.com','Accredited');

INSERT INTO regional_education_workshops VALUES
('RW2023B','R02','Data Literacy for Teachers','TechEdCo','2023-05-05','2023-05-07','River City','OH',40,38,200.00,'DistrictFunds','USBDrives,Workbook','4.5','http://example.com/webinar2','Need more hands‑on labs','2023-02-10','2023-04-20','mark.jones@example.com','Accredited');

INSERT INTO regional_education_workshops VALUES
('RW2023C','R03','Social‑Emotional Learning','WellnessPartners','2023-09-15','2023-09-16','Lake Town','WA',60,55,120.00,'FederalGrant','Toolkit,VideoSeries','4.8','http://example.com/webinar3','High demand for follow‑up','2023-06-01','2023-08-10','lisa.wang@example.com','Pending');

-- Student virtual exchange programs
CREATE TABLE student_virtual_exchange
(
    ExchangeID          TEXT NOT NULL PRIMARY KEY,
    HostingSchoolCDS    TEXT NOT NULL,
    PartnerSchoolName   TEXT NOT NULL,
    PartnerCountry      TEXT NOT NULL,
    StartDate           DATE NOT NULL,
    EndDate             DATE NOT NULL,
    PlatformUsed        TEXT NOT NULL,
    NumberOfStudents    INTEGER NOT NULL,
    TeacherCoordinator  TEXT NOT NULL,
    CurriculumFocus     TEXT,
    TimeZoneDifference  INTEGER,
    LanguageSupport     TEXT,
    EvaluationScore     REAL,
    ArtifactsLink       TEXT,
    FundingAmountUSD    REAL,
    Status              TEXT,
    CreatedTimestamp    DATE NOT NULL,
    UpdatedTimestamp    DATE NOT NULL,
    Notes               TEXT,
    RiskAssessment      TEXT
);

INSERT INTO student_virtual_exchange VALUES
('VE2023-001','12345678','International High School','Canada','2023-02-01','2023-06-30','Zoom','25','mr.brown','STEM Collaboration',-3,'Bilingual','4.6','http://example.com/artifacts1',3000.00,'Completed','2023-01-20','2023-07-01','Smooth execution','Low');

INSERT INTO student_virtual_exchange VALUES
('VE2023-002','87654321','Global Academy','Japan','2023-09-01','2024-01-31','MicrosoftTeams','30','ms.green','Cultural Studies',13,'EnglishSupport','4.2','http://example.com/artifacts2',3500.00,'Ongoing','2023-08-10','2023-09-05','Time zone coordination needed','Medium');

INSERT INTO student_virtual_exchange VALUES
('VE2023-003','11223344','European School','Germany','2023-04-15','2023-10-15','GoogleMeet','20','dr.white','Language Arts',6,'GermanSupport','4.8','http://example.com/artifacts3',2800.00,'Completed','2023-03-20','2023-10-20','Excellent student engagement','Low');

-- District infrastructure maintenance log
CREATE TABLE district_infrastructure_maintenance
(
    MaintenanceID        TEXT NOT NULL PRIMARY KEY,
    FacilityID           TEXT NOT NULL,
    FacilityType         TEXT NOT NULL,
    MaintenanceDate      DATE NOT NULL,
    ContractorName       TEXT NOT NULL,
    WorkDescription      TEXT NOT NULL,
    CostUSD              REAL NOT NULL,
    DurationHours        INTEGER,
    PriorityLevel        TEXT,
    InspectionPassed     TEXT,
    FollowUpNeeded       TEXT,
    CreatedBy            TEXT NOT NULL,
    CreatedOn            DATE NOT NULL,
    UpdatedBy            TEXT,
    UpdatedOn            DATE,
    Comments             TEXT,
    AssetConditionBefore TEXT,
    AssetConditionAfter  TEXT,
    WarrantyExpiresOn    DATE,
    NextScheduledMaintenance DATE,
    Status               TEXT
);

INSERT INTO district_infrastructure_maintenance VALUES
('MI2023001','F001','Gymnasium','2023-02-10','StrongBuildCo','Roof repair',12000.00,48,'High','Yes','No','admin1','2023-02-01','admin2','2023-02-12','Replaced shingles','Fair','Good','2025-02-10','2024-02-10','Closed');

INSERT INTO district_infrastructure_maintenance VALUES
('MI2023002','F025','Science Lab','2023-05-22','LabTechServices','HVAC upgrade',8500.00,36,'Medium','Yes','Yes','admin3','2023-05-10','admin3','2023-05-23','Improved ventilation','Good','Excellent','2026-05-22','2025-05-22','Open');

INSERT INTO district_infrastructure_maintenance VALUES
('MI2023003','F078','Parking Lot','2023-08-15','PaveRight','Resurfacing',15000.00,72,'Low','No','Yes','admin4','2023-08-01','admin4','2023-08-20','Cracks repaired','Poor','Fair','2027-08-15','2026-08-15','Open');

-- Community sustainability projects
CREATE TABLE community_sustainability_projects
(
    ProjectID           TEXT NOT NULL PRIMARY KEY,
    CommunityName       TEXT NOT NULL,
    ProjectTitle        TEXT NOT NULL,
    StartDate           DATE NOT NULL,
    EndDate             DATE,
    LeadOrganization    TEXT NOT NULL,
    FundingSource       TEXT NOT NULL,
    TotalBudgetUSD      REAL NOT NULL,
    AreaSqFt            REAL,
    TargetParticipants  INTEGER,
    PrimaryGoal         TEXT,
    SecondaryGoal       TEXT,
    MetricsCollected    TEXT,
    Status              TEXT,
    CreatedOn           DATE NOT NULL,
    UpdatedOn           DATE NOT NULL,
    CoordinatorName     TEXT,
    ContactEmail        TEXT,
    Description         TEXT,
    OutcomesSummary     TEXT,
    FuturePlans         TEXT
);

INSERT INTO community_sustainability_projects VALUES
('SP2023-001','GreenVille','Community Garden Initiative','2023-03-01','2023-12-31','EcoFriends','LocalGrant',25000.00,5000,120,'Increase local food production','Educate residents on sustainable agriculture','YieldKg,ParticipantHours','Completed','2023-02-15','2023-12-01','alice.wilson','alice.wilson@example.com','Raised 3,000 lbs of produce','High community engagement','Expand to neighboring districts');

INSERT INTO community_sustainability_projects VALUES
('SP2023-002','RiverSide','Rainwater Harvesting Program','2023-04-15',NULL,'WaterWiseOrg','StateFund',18000.00,2000,80,'Reduce potable water use','Demonstrate rainwater reuse','GallonsCollected,CostSavings','Ongoing','2023-04-01','2023-09-10','bob.miller','bob.miller@example.com','Installed 10 rain barrels','30% reduction in outdoor irrigation','Add more barrels in 2024');

INSERT INTO community_sustainability_projects VALUES
('SP2023-003','HillTown','Solar Panel Installation at School','2023-01-20','2023-06-30','SolarFuture','FederalGrant',50000.00,3000,200,'Provide renewable energy','Educate students on solar tech','kWhGenerated,CO2Reduced','Completed','2022-12-10','2023-07-05','carla.lee','carla.lee@example.com','Installed 40kW system','Generated 45,000 kWh in first year','Plan battery storage addition');

-- State education standards reference
CREATE TABLE state_education_standards
(
    StandardID          TEXT NOT NULL PRIMARY KEY,
    StateCode           TEXT NOT NULL,
    SubjectArea         TEXT NOT NULL,
    GradeLevel          TEXT NOT NULL,
    StandardNumber      TEXT NOT NULL,
    Description         TEXT NOT NULL,
    YearAdopted         INTEGER NOT NULL,
    AlignmentDomain     TEXT,
    PerformanceLevel1   TEXT,
    PerformanceLevel2   TEXT,
    PerformanceLevel3   TEXT,
    PerformanceLevel4   TEXT,
    UpdateCycleYears    INTEGER,
    SourceDocumentURL   TEXT,
    Status              TEXT,
    CreatedOn           DATE NOT NULL,
    UpdatedOn           DATE NOT NULL,
    Notes               TEXT,
    AuthoringBody       TEXT,
    RevisionNumber      INTEGER
);

INSERT INTO state_education_standards VALUES
('STSTD-CA-MATH-4','CA','Mathematics','4','4.NBT.A','Understand place value','2020','Number and Operations','Limited','Partial','Proficient','Advanced',5,'http://example.com/ca_math4','Active','2020-01-01','2023-01-01','Revised 2022','CA Dept of Education',2);

INSERT INTO state_education_standards VALUES
('STSTD-TX-ENG-9','TX','English Language Arts','9','9.RL.1','Cite textual evidence','2019','Reading','Below','Approaching','Meeting','Exceeding',4,'http://example.com/tx_ela9','Active','2019-07-15','2023-07-15','Minor wording changes','TX Education Agency',3);

INSERT INTO state_education_standards VALUES
('STSTD-NY-SCI-6','NY','Science','6','6.LS2','Understand ecosystems','2021','Life Sciences','Limited','Developing','Competent','Advanced',5,'http://example.com/ny_science6','Active','2021-03-01','2023-03-01','Pending next review','NY Dept of Education',1);

-- School parking permit fee schedule
CREATE TABLE school_parking_permit_fees
(
    PermitID            TEXT NOT NULL PRIMARY KEY,
    SchoolCDS           TEXT NOT NULL,
    PermitType          TEXT NOT NULL,
    VehicleCategory     TEXT NOT NULL,
    FeeAmountUSD        REAL NOT NULL,
    EffectiveStartDate  DATE NOT NULL,
    EffectiveEndDate    DATE,
    PaymentDueDate      DATE NOT NULL,
    LateFeeUSD          REAL,
    DiscountEligibility TEXT,
    MaxVehiclesAllowed  INTEGER,
    CreatedBy           TEXT NOT NULL,
    CreatedOn           DATE NOT NULL,
    UpdatedBy           TEXT,
    UpdatedOn           DATE,
    Notes               TEXT,
    RenewalRequired     TEXT,
    OnlinePaymentLink   TEXT,
    ContactPhone        TEXT,
    ContactEmail        TEXT
);

INSERT INTO school_parking_permit_fees VALUES
('PPF-001','12345678','Student','Sedan',75.00,'2023-08-01','2024-07-31','2023-09-01',10.00,'None',1,'admin','2023-07-15','admin','2023-08-10','Standard student permit','Yes','http://pay.example.com/ppf001','5551234567','permits@example.com');

INSERT INTO school_parking_permit_fees VALUES
('PPF-002','12345678','Faculty','SUV',120.00,'2023-08-01','2024-07-31','2023-09-01',15.00,'EarlyBird',2,'admin','2023-07-15','admin','2023-08-10','Faculty parking with discount for early payment','Yes','http://pay.example.com/ppf002','5551234568','permits@example.com');

INSERT INTO school_parking_fees VALUES
('PPF-003','87654321','Visitor','Compact',30.00,'2023-08-01','2023-12-31','2023-08-15',5.00,'None',1,'admin','2023-07-20','admin','2023-08-05','Short‑term visitor permit','No','http://pay.example.com/ppf003','5551234569','permits@example.com');

-- Teacher peer mentoring program
CREATE TABLE teacher_peer_mentoring
(
    MentoringID         TEXT NOT NULL PRIMARY KEY,
    SchoolCDS           TEXT NOT NULL,
    MentorTeacherID     TEXT NOT NULL,
    MenteeTeacherID     TEXT NOT NULL,
    StartDate           DATE NOT NULL,
    EndDate             DATE,
    MeetingFrequency    TEXT,
    TopicsCovered       TEXT,
    ProgressNotes       TEXT,
    FeedbackScore       REAL,
    HoursSpent          REAL,
    CreatedOn           DATE NOT NULL,
    CreatedBy           TEXT NOT NULL,
    UpdatedOn           DATE,
    UpdatedBy           TEXT,
    MentorEmail         TEXT,
    MenteeEmail         TEXT,
    OutcomeSummary      TEXT,
    ProgramCoordinator  TEXT,
    Status              TEXT
);

INSERT INTO teacher_peer_mentoring VALUES
('MTG-2023-001','12345678','T001','T045','2023-01-15','2023-12-15','Biweekly','Classroom management, Assessment','Improved classroom climate','4.5',30.0,'2023-01-10','admin','2023-12-20','admin','mentor1@example.com','mentee45@example.com','Positive growth','coord1','Closed');

INSERT INTO teacher_peer_mentoring VALUES
('MTG-2023-002','87654321','T010','T022','2023-03-01',NULL,'Monthly','Curriculum design, Technology integration','Ongoing collaboration','4.2',15.0,'2023-02-20','admin','2023-09-10','admin','mentor10@example.com','mentee22@example.com','Mid‑year review pending','coord2','Active');

INSERT INTO teacher_peer_mentoring VALUES
('MTG-2023-003','11223344','T005','T078','2023-05-10','2023-11-10','Weekly','Differentiated instruction','Mentee demonstrated proficiency increase','4.8',25.0,'2023-05-05','admin','2023-11-12','admin','mentor5@example.com','mentee78@example.com','Exceeds expectations','coord3','Closed');

-- School technology investments tracker
CREATE TABLE school_technology_investments
(
    InvestmentID        TEXT NOT NULL PRIMARY KEY,
    SchoolCDS           TEXT NOT NULL,
    FiscalYear          TEXT NOT NULL,
    Category            TEXT NOT NULL,
    ItemDescription     TEXT NOT NULL,
    VendorName          TEXT NOT NULL,
    Quantity            INTEGER NOT NULL,
    UnitCostUSD         REAL NOT NULL,
    TotalCostUSD        REAL NOT NULL,
    PurchaseDate        DATE NOT NULL,
    WarrantyEndDate     DATE,
    FundingSource       TEXT,
    ApprovalStatus      TEXT,
    ApprovedBy          TEXT,
    ApprovalDate        DATE,
    ImplementationPhase TEXT,
    CurrentStatus       TEXT,
    ExpectedLifeYears   INTEGER,
    MaintenancePlan     TEXT,
    CreatedOn           DATE NOT NULL,
    UpdatedOn           DATE NOT NULL,
    Notes               TEXT
);

INSERT INTO school_technology_investments VALUES
('INV2023-001','12345678','2023','Hardware','Interactive Whiteboard Model X','TechSupplyCo',20,1500.00,30000.00,'2023-02-15','2028-02-15','DistrictBudget','Approved','supervisor1','2023-01-30','Installation','Completed',5,'Annual servicing contract','2023-01-20','2023-03-01','Installed in 10 classrooms');

INSERT INTO school_technology_investments VALUES
('INV2023-002','87654321','2023','Software','Learning Management System License','EduSoft Inc',1,25000.00,25000.00,'2023-04-01','2026-04-01','Grant','Pending','director2','2023-03-20','Deployment','InProgress',3,'Quarterly updates','2023-03-15','2023-04-10','License covers 500 users');

INSERT INTO school_technology_investments VALUES
('INV2023-003','11223344','2023','Networking','WiFi Access Points Outdoor','NetGear','50',200.00,10000.00,'2023-06-10','2028-06-10','CapitalFunds','Approved','admin','2023-05-25','Testing','Pending',7,'Biannual firmware updates','2023-05-20','2023-06-15','Deploy across campus perimeter');