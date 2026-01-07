-- Regional Fundraising Campaigns
CREATE TABLE regional_fundraising_campaigns
(
    CampaignID TEXT PRIMARY KEY,
    CampaignName TEXT NOT NULL,
    StartDate DATE,
    EndDate DATE,
    TargetAmount REAL,
    AmountRaised REAL,
    Region TEXT,
    CoordinatorFirstName TEXT,
    CoordinatorLastName TEXT,
    CoordinatorEmail TEXT,
    SponsorOrg TEXT,
    NumberOfEvents INTEGER,
    AvgDonation REAL,
    DonationMethodCash INTEGER,
    DonationMethodCheck INTEGER,
    DonationMethodOnline INTEGER,
    SocialMediaHashtag TEXT,
    PressReleaseURL TEXT,
    VolunteerCount INTEGER,
    Notes TEXT
);

INSERT INTO regional_fundraising_campaigns VALUES
('CAMP001','SpringGiving2024','2024-03-01','2024-05-31',50000,21500,'NorthRegion','Alice','Miller','alice.miller@example.com','CommunityBank',8,250.0,1,0,1,'#SpringGiving','http://example.com/press1',45,'Initial launch phase');
INSERT INTO regional_fundraising_campaigns VALUES
('CAMP002','SummerAid2024','2024-06-01','2024-08-31',75000,48000,'SouthRegion','Bob','Taylor','bob.taylor@example.com','HealthFoundation',12,300.0,0,1,1,'#SummerAid','http://example.com/press2',70,'Mid‑campaign update');
INSERT INTO regional_fundraising_campaigns VALUES
('CAMP003','FallHope2024','2024-09-01','2024-11-30',60000,32000,'EastRegion','Carol','Nguyen','carol.nguyen@example.com','EducationTrust',10,280.0,1,1,0,'#FallHope','http://example.com/press3',55,'Closing phase');

-- School Bus Driver Rosters
CREATE TABLE school_bus_driver_rosters
(
    DriverID TEXT PRIMARY KEY,
    FirstName TEXT,
    LastName TEXT,
    LicenseNumber TEXT,
    LicenseExpiry DATE,
    Phone TEXT,
    Email TEXT,
    AssignedRouteID TEXT,
    YearsOfExperience INTEGER,
    CertifiedTrainingHours INTEGER,
    CDLClass TEXT,
    BackgroundCheckDate DATE,
    BackgroundCheckResult TEXT,
    UnionMember INTEGER,
    ShiftPattern TEXT,
    BusNumber TEXT,
    VehicleType TEXT,
    MaxPassengerCapacity INTEGER,
    Salary REAL,
    AddressLine1 TEXT,
    City TEXT,
    State TEXT,
    Zip TEXT,
    Notes TEXT
);

INSERT INTO school_bus_driver_rosters VALUES
('DRV001','John','Doe','L1234567','2026-12-31','5551234567','john.doe@example.com','R001',12,40,'A','2023-01-15','Clear',1,'Morning','B100','TransitBus',56,42000,'123 Main St','Springfield','IL','62704','Senior driver');
INSERT INTO school_bus_driver_rosters VALUES
('DRV002','Maria','Lopez','L2345678','2025-07-20','5559876543','maria.lopez@example.com','R002',5,30,'B','2023-03-10','Clear',0,'Afternoon','B101','MiniBus',30,38000,'456 Oak Ave','Greenville','TX','75402','Part‑time');
INSERT INTO school_bus_driver_rosters VALUES
('DRV003','Ethan','Smith','L3456789','2027-04-15','5552223344','ethan.smith@example.com','R003',8,35,'A','2023-02-05','Clear',1,'Evening','B102','TransitBus',56,41000,'789 Pine Rd','Laketown','CA','90210','Experienced night route');

-- Student Art Exhibition Entries
CREATE TABLE student_art_exhibition_entries
(
    EntryID TEXT PRIMARY KEY,
    StudentID TEXT,
    StudentFirstName TEXT,
    StudentLastName TEXT,
    GradeLevel TEXT,
    ArtTitle TEXT,
    Medium TEXT,
    Dimensions TEXT,
    YearCreated INTEGER,
    ExhibitionName TEXT,
    ExhibitionDate DATE,
    Location TEXT,
    CuratorFirstName TEXT,
    CuratorLastName TEXT,
    CuratorEmail TEXT,
    Category TEXT,
    AwardsReceived TEXT,
    EstimatedValue REAL,
    GalleryContact TEXT,
    InsurancePolicyNumber TEXT,
    Status TEXT,
    Notes TEXT
);

INSERT INTO student_art_exhibition_entries VALUES
('ENT001','STU1001','Lily','Brown','10','Sunset Over Hills','Oil','24x36','2024','Spring Art Gala','2024-04-15','Community Center','James','Carter','james.carter@example.com','Landscape','Best Color','1500','gallery@example.com','INS12345','Accepted','First major show');
INSERT INTO student_art_exhibition_entries VALUES
('ENT002','STU1002','Noah','Kim','11','Digital Dreams','Digital','1920x1080','2024','Tech Art Expo','2024-06-20','Tech Hall','Ava','Lopez','ava.lopez@example.com','Digital','People\'s Choice','800','techgallery@example.com','INS67890','Accepted','Interactive piece');
INSERT INTO student_art_exhibition_entries VALUES
('ENT003','STU1003','Emma','Johnson','12','Clay Figures','Sculpture','12x8x6','2023','Sculpture Showcase','2024-09-10','Art Museum','Oliver','Ng','oliver.ng@example.com','Sculpture','Honorable Mention','2500','sculpture@example.com','INS54321','Pending','Awaiting jury decision');

-- District Heritage Site Visits
CREATE TABLE district_heritage_site_visits
(
    VisitID TEXT PRIMARY KEY,
    SiteID TEXT,
    SiteName TEXT,
    VisitDate DATE,
    VisitorGroup TEXT,
    NumberOfVisitors INTEGER,
    GuideName TEXT,
    GuideContact TEXT,
    EducationalFocus TEXT,
    DurationMinutes INTEGER,
    FeedbackScore REAL,
    FollowUpActions TEXT,
    FundingSource TEXT,
    PermitNumber TEXT,
    Latitude REAL,
    Longitude REAL,
    AccessibilityFeatures TEXT,
    WeatherCondition TEXT,
    EquipmentUsed TEXT,
    Notes TEXT
);

INSERT INTO district_heritage_site_visits VALUES
('VIS001','HS001','Old Mill Museum','2024-03-12','HighSchoolClass','35','Samuel Reed','sam.reed@example.com','Industrial History',90,4.5,'Schedule next visit','DistrictGrant','PERM1001',40.7128,-74.0060,'WheelchairRamp','Sunny','AudioGuides','First visit of year');
INSERT INTO district_heritage_site_visits VALUES
('VIS002','HS002','Heritage Farmstead','2024-05-05','ElementaryTour','28','Mia Torres','mia.torres@example.com','Agricultural Practices',75,4.2,'Provide handout','CommunityFund','PERM1002',34.0522,-118.2437,'BrailleSigns','Cloudy','PortableProjector','Positive engagement');
INSERT INTO district_heritage_site_visits VALUES
('VIS003','HS003','Historic Courthouse','2024-10-18','AdultContinuingEd','22','Luis Patel','luis.patel@example.com','Legal History',60,4.8,'Develop online module','StateGrant','PERM1003',41.8781,-87.6298','Elevator','Rain','InteractiveMap','Highly rated session');

-- Community Water Conservation Projects
CREATE TABLE community_water_conservation_projects
(
    ProjectID TEXT PRIMARY KEY,
    ProjectName TEXT,
    StartDate DATE,
    EndDate DATE,
    CommunityArea TEXT,
    LeadOrg TEXT,
    Budget REAL,
    FundsSpent REAL,
    WaterSavedGallons REAL,
    Participants INTEGER,
    VolunteerHours INTEGER,
    EquipmentInstalled TEXT,
    MonitoringMethod TEXT,
    AnnualSavings REAL,
    ProjectStatus TEXT,
    ContactFirstName TEXT,
    ContactLastName TEXT,
    ContactEmail TEXT,
    ReportURL TEXT,
    Notes TEXT,
    GISLocation TEXT
);

INSERT INTO community_water_conservation_projects VALUES
('PROJ001','Rain Barrel Initiative','2024-02-01','2024-11-30','Riverbend','GreenCo','25000','15000','1200000',45,300,'RainBarrels','FlowMeter','1800','Active','Hannah','Lee','hannah.lee@example.com','http://example.com/report1','Phase 2 planning','POINT(40.1 -75.2)');
INSERT INTO community_water_conservation_projects VALUES
('PROJ002','Smart Irrigation Upgrade','2024-04-15','2025-04-14','Lakeside','AquaTech','50000','20000','2500000',60,480,'SmartSensors','Telemetry','3000','Planning','Mark','Davis','mark.davis@example.com','http://example.com/report2','Awaiting city approval','POINT(41.3 -73.9)');
INSERT INTO community_water_conservation_projects VALUES
('PROJ003','Low‑Flow Fixture Retrofit','2023-09-01','2024-12-31','Hillside','EcoBuild','35000','34000','800000',80,560,'LowFlowNozzles','WaterMeter','1200','Completed','Sofia','Martinez','sofia.martinez@example.com','http://example.com/report3','Project completed on schedule','POINT(42.0 -74.5)');

-- School Cybersecurity Training Sessions
CREATE TABLE school_cybersecurity_training_sessions
(
    SessionID TEXT PRIMARY KEY,
    SessionTitle TEXT,
    Date DATE,
    DurationMinutes INTEGER,
    TrainerFirstName TEXT,
    TrainerLastName TEXT,
    TrainerEmail TEXT,
    TargetAudience TEXT,
    NumberAttended INTEGER,
    PlatformUsed TEXT,
    MaterialsProvided TEXT,
    CertificationEarned INTEGER,
    FeedbackScore REAL,
    FollowUpSurveyURL TEXT,
    RecordingsURL TEXT,
    Cost REAL,
    DepartmentResponsible TEXT,
    SessionStatus TEXT,
    Notes TEXT,
    VersionNumber TEXT
);

INSERT INTO school_cybersecurity_training_sessions VALUES
('SEC001','Phishing Awareness','2024-03-20',90,'Laura','Kim','laura.kim@example.com','All Staff',45,'Zoom','PDFGuide',1,4.6,'http://example.com/survey1','http://example.com/record1',500,'ITDept','Completed','Positive response','v1.0');
INSERT INTO school_cybersecurity_training_sessions VALUES
('SEC002','Secure Password Practices','2024-06-10',60,'James','O\'Connor','james.oconnor@example.com','Teachers',30,'Teams','SlideDeck',1,4.8,'http://example.com/survey2','http://example.com/record2',300,'HRDept','Completed','High engagement','v1.1');
INSERT INTO school_cybersecurity_training_sessions VALUES
('SEC003','Data Privacy Fundamentals','2024-09-05',120,'Anita','Patel','anita.patel@example.com','Administrators',20,'Webex','Handout',1,4.9,'http://example.com/survey3','http://example.com/record3',750,'LegalDept','Scheduled','Awaiting attendance roster','v2.0');

-- Parent Workshop Attendance
CREATE TABLE parent_workshop_attendance
(
    AttendanceID TEXT PRIMARY KEY,
    WorkshopID TEXT,
    WorkshopTitle TEXT,
    Date DATE,
    ParentFirstName TEXT,
    ParentLastName TEXT,
    ParentEmail TEXT,
    ChildStudentID TEXT,
    ChildGrade TEXT,
    AttendanceStatus TEXT,
    FeedbackScore REAL,
    FollowUpAction TEXT,
    SponsorOrg TEXT,
    RoomNumber TEXT,
    StartTime TEXT,
    EndTime TEXT,
    MaterialsSent INTEGER,
    SnacksProvided INTEGER,
    Notes TEXT,
    CoordinatorFirstName TEXT,
    CoordinatorLastName TEXT
);

INSERT INTO parent_workshop_attendance VALUES
('ATT001','WK001','Navigating High School','2024-04-12','Emily','Clark','emily.clark@example.com','STU2001','9','Attended',4.5,'Send summary email','ParentAssoc','101','09:00','11:00',1,1,'Very engaged','Karen','Miller');
INSERT INTO parent_workshop_attendance VALUES
('ATT002','WK002','Supporting STEM Learning','2024-07-22','Michael','Brown','michael.brown@example.com','STU2002','10','Attended',4.7,'Provide resource list','STEMClub','202','13:00','15:00',1,0,'Requested additional materials','Laura','Nelson');
INSERT INTO parent_attendance VALUES
('ATT003','WK003','Understanding School Funding','2024-10-05','Sarah','Wilson','sarah.wilson@example.com','STU2003','11','Cancelled',NULL,'Reschedule','FinanceDept','303','10:00','12:00',0,0,'Will attend next session','David','Lee');

-- Student Entrepreneurship Projects
CREATE TABLE student_entrepreneurship_projects
(
    ProjectID TEXT PRIMARY KEY,
    StudentID TEXT,
    StudentFirstName TEXT,
    StudentLastName TEXT,
    GradeLevel TEXT,
    ProjectTitle TEXT,
    BusinessIdea TEXT,
    LaunchDate DATE,
    RevenueYTD REAL,
    ExpensesYTD REAL,
    ProfitYTD REAL,
    MentorFirstName TEXT,
    MentorLastName TEXT,
    MentorEmail TEXT,
    FundingSource TEXT,
    FundingAmount REAL,
    PatentFiled INTEGER,
    PatentNumber TEXT,
    MarketRegion TEXT,
    Status TEXT,
    LessonsLearned TEXT,
    Notes TEXT
);

INSERT INTO student_entrepreneurship_projects VALUES
('ENTP001','STU3001','David','Morris','11','EcoBag Co.','Reusable bags made from recycled material','2024-01-15',12000,8000,4000,'Karen','Smith','karen.smith@example.com','SchoolGrant',5000,1,'US202400123','Regional','Active','Supply chain challenges','Scaling production');
INSERT INTO student_entrepreneurship_projects VALUES
('ENTP002','STU3002','Olivia','Garcia','12','SnackTech','Healthy snack vending machines','2024-03-01',25000,15000,10000,'Luis','Ramirez','luis.ramirez@example.com','FamilyInvest','3000',0,NULL,'Statewide','Active','Marketing outreach needed','Expanding locations');
INSERT INTO student_entrepreneurship_projects VALUES
('ENTP003','STU3003','Ethan','Wong','10','AppLearn','Educational app for math practice','2024-05-20',0,2000,-2000,'Mia','Patel','mia.patel@example.com','Crowdfund','2000',0,NULL,'National','Planning','User testing phase','Developing beta version');

-- District Climate Action Plans
CREATE TABLE district_climate_action_plans
(
    PlanID TEXT PRIMARY KEY,
    PlanName TEXT,
    AdoptionDate DATE,
    ReviewDate DATE,
    TargetYear INTEGER,
    CO2ReductionTarget REAL,
    RenewableEnergyTarget REAL,
    FundingSource TEXT,
    TotalBudget REAL,
    ImplementedProjects INTEGER,
    ProjectDetails TEXT,
    MonitoringFrequency TEXT,
    ResponsibleDept TEXT,
    LeadOfficerFirstName TEXT,
    LeadOfficerLastName TEXT,
    LeadOfficerEmail TEXT,
    PublicCommentsURL TEXT,
    Status TEXT,
    Notes TEXT,
    GISReference TEXT,
    LastUpdated DATE
);

INSERT INTO district_climate_action_plans VALUES
('PLAN001','ZeroCarbon2028','2023-06-01','2024-06-01',2028,15.0,30.0,'StateGrant',1200000,5,'Solar panels, LED streetlights, Green roofs','Annual','Facilities','Anna','Reed','anna.reed@example.com','http://example.com/comments1','InProgress','Initial rollout phase','POLYLINE(0 0,1 1)','2024-05-01');
INSERT INTO district_climate_action_plans VALUES
('PLAN002','RenewableFuture2030','2024-01-15','2025-01-15',2030,20.0,40.0,'FederalGrant',2500000,8,'Wind turbines, Energy storage, EV charging stations','SemiAnnual','Energy','Mark','Huang','mark.huang@example.com','http://example.com/comments2','Planning','Feasibility studies underway','POLYGON((2 2,3 2,3 3,2 3,2 2))','2024-04-20');
INSERT INTO district_climate_action_plans VALUES
('PLAN003','SustainableSchools2027','2022-09-10','2023-09-10',2027,10.0,25.0,'LocalBond','900000',3,'Rainwater harvesting, Green classrooms','Quarterly','Operations','Laura','Kim','laura.kim@example.com','http://example.com/comments3','Completed','All projects finished','POINT(5 5)','2024-03-15');

-- School Vending Machine Inventory
CREATE TABLE school_vending_machine_inventory
(
    MachineID TEXT PRIMARY KEY,
    LocationDescription TEXT,
    InstallDate DATE,
    VendorName TEXT,
    ModelNumber TEXT,
    ServiceContractID TEXT,
    LastServiceDate DATE,
    SnacksCount INTEGER,
    DrinksCount INTEGER,
    HealthyOptionCount INTEGER,
    TotalRevenue REAL,
    CashCollected REAL,
    CardTransactions INTEGER,
    MaintenanceIssues TEXT,
    TemperatureCelsius REAL,
    PowerStatus TEXT,
    NetworkStatus TEXT,
    WarrantyExpiration DATE,
    Notes TEXT,
    AssignedStaffID TEXT,
    LastAuditDate DATE
);

INSERT INTO school_vending_machine_inventory VALUES
('VM001','Main Hall - Near Cafeteria','2023-08-01','VendCo','VC-1000','SC1001','2024-04-10',150,200,45,1200.50,800.00,400,'None',22.5,'On','Connected','2026-08-01','Routine check completed','STAFF001','2024-04-01');
INSERT INTO school_vending_machine_inventory VALUES
('VM002','Gymnasium Entrance','2022-01-15','SnackPro','SP-210','SC2002','2024-03-22',180,250,60,1600.75,1100.00,500,'Refrigeration issue',5.0,'Off','Disconnected','2025-01-15','Awaiting repair','STAFF002','2024-03-01');
INSERT INTO school_vending_machine_inventory VALUES
('VM003','Library - Second Floor','2024-02-10','HealthyVend','HV-300','SC3003','2024-05-05',120,180,80,1400.00,900.00,450,'Screen flicker',18.0,'On','Connected','2027-02-10','Newly installed, stocked with organic options','STAFF003','2024-05-01');