-- District Human Resources information
CREATE TABLE district_human_resources (
    EmployeeID TEXT NOT NULL PRIMARY KEY,
    FirstName TEXT,
    LastName TEXT,
    HireDate DATE,
    PositionTitle TEXT,
    Department TEXT,
    EmploymentType TEXT,
    Salary REAL,
    SalaryGrade INTEGER,
    WorkLocation TEXT,
    SupervisorID TEXT,
    Email TEXT,
    PhoneExtension TEXT,
    BirthDate DATE,
    Gender TEXT,
    Ethnicity TEXT,
    EducationLevel TEXT,
    YearsOfService INTEGER,
    CertificationStatus TEXT,
    PerformanceRating INTEGER,
    LastPromotionDate DATE,
    BenefitPlanCode TEXT,
    UnionMemberFlag INTEGER,
    EmployeeStatus TEXT
);

INSERT INTO district_human_resources VALUES ('E001','Alice','Smith','2010-08-15','ProgramManager','Finance','FullTime',85000,12,'MainOffice','E010','alice.smith@district.edu','101','1975-04-23','F','White','Masters',12,'Certified','4','2018-06-01','BP01',1,'Active');
INSERT INTO district_human_resources VALUES ('E002','Bob','Johnson','2015-03-22','DataAnalyst','IT','FullTime',72000,10,'MainOffice','E011','bob.johnson@district.edu','102','1980-11-12','M','Black','Bachelors',7,'Certified','3','2020-09-15','BP02',0,'Active');
INSERT INTO district_human_resources VALUES ('E003','Carol','Lee','2020-01-10','HRCoordinator','HumanResources','PartTime',48000,8,'BranchOffice','E012','carol.lee@district.edu','103','1990-06-30','F','Asian','Bachelors',2,'NotCertified','5','2021-12-01','BP03',0,'Probation');

-- School Communications Media assets
CREATE TABLE school_communications_media (
    MediaID TEXT NOT NULL PRIMARY KEY,
    SchoolCode TEXT,
    MediaType TEXT,
    Format TEXT,
    FileName TEXT,
    FileSizeMB REAL,
    CreationDate DATE,
    Author TEXT,
    Description TEXT,
    ApprovalStatus TEXT,
    PublishDate DATE,
    ExpirationDate DATE,
    TargetAudience TEXT,
    Language TEXT,
    AccessibilityTag TEXT,
    Channel TEXT,
    Frequency TEXT,
    DistributionList TEXT,
    MetricsViews INTEGER,
    MetricsClicks INTEGER,
    MetricsShares INTEGER,
    LastModified DATE,
    RetentionPolicy TEXT,
    StorageLocation TEXT
);

INSERT INTO school_communications_media VALUES ('M001','SCH001','Newsletter','PDF','Fall2023_Newsletter','2.5','2023-09-01','JaneDoe','Quarterly newsletter for parents','Approved','2023-09-05','2024-01-01','Parents','English','WCAG2.0','Email','Monthly','ParentListA',1500,300,45,'2023-09-10','1Year','ServerA');
INSERT INTO school_communications_media VALUES ('M002','SCH002','Video','MP4','ScienceFair2023','150','2023-04-20','JohnSmith','Student science fair highlights','Pending','2023-05-01','2025-05-01','Students','English','ClosedCaptions','YouTube','Annual','StudentListB',8000,1200,350,'2023-04-25','3Years','ServerB');
INSERT INTO school_communications_media VALUES ('M003','SCH003','Poster','PNG','HealthAwareness','0.8','2023-02-15','EmilyClark','Health awareness poster for hallway','Approved','2023-02-20','2024-02-20','Staff','Spanish','None','Print','Quarterly','StaffListC',0,0,0,'2023-02-18','2Years','ServerC');

-- Community Fundraising Events tracking
CREATE TABLE community_fundraising_events (
    EventID TEXT NOT NULL PRIMARY KEY,
    EventName TEXT,
    EventDate DATE,
    Location TEXT,
    Organizer TEXT,
    TargetAmount REAL,
    AmountRaised REAL,
    NumberOfDonors INTEGER,
    DonationMethod TEXT,
    VolunteerCount INTEGER,
    SponsorList TEXT,
    EventType TEXT,
    Audience TEXT,
    MarketingChannel TEXT,
    RegistrationRequired INTEGER,
    TicketPrice REAL,
    TicketSales INTEGER,
    NetProfit REAL,
    Expenses REAL,
    TaxDeductibleFlag INTEGER,
    FiscalYear TEXT,
    CampaignCode TEXT,
    Remarks TEXT,
    CreatedBy TEXT,
    CreatedDate DATE
);

INSERT INTO community_fundraising_events VALUES ('EV001','Spring Gala','2023-04-10','CommunityCenter','AliceBrown',50000,62000,250,'Online',30,'CompanyA|CompanyB','Gala','Adults','Email','1',100,200,42000,20000,1,'2023','CAM001','Successful event','BobGreen','2023-02-01');
INSERT INTO community_fundraising_events VALUES ('EV002','Fun Run','2023-09-15','CityPark','MikeDavis',15000,14000,180,'Cash',45,'LocalBiz1|LocalBiz2','Run','Families','SocialMedia','0',0,300,2000,5000,1,'2023','CAM002','Slightly under target','CarolLee','2023-07-01');
INSERT INTO community_fundraising_events VALUES ('EV003','Book Fair','2023-11-20','SchoolGym','SaraKim',8000,9500,120,'Check',20,'PublisherX|PublisherY','Fair','Students','Flyers','0',0,0,1200,3000,1','2023','CAM003','Exceeded expectations','DavidCho','2023-10-05');

-- Environmental Grants Research projects
CREATE TABLE environmental_grants_research (
    GrantProjectID TEXT NOT NULL PRIMARY KEY,
    GrantTitle TEXT,
    FundingAgency TEXT,
    AwardAmount REAL,
    StartDate DATE,
    EndDate DATE,
    PrincipalInvestigator TEXT,
    CoInvestigators TEXT,
    ResearchFocus TEXT,
    GeographicScope TEXT,
    ProjectStatus TEXT,
    ReportSubmissionDate DATE,
    PublicationCount INTEGER,
    DataSetURL TEXT,
    EthicsApprovalFlag INTEGER,
    CollaborationPartners TEXT,
    TechnicalArea TEXT,
    ExpectedOutcomes TEXT,
    BudgetCategory TEXT,
    ExpenseTotal REAL,
    FundingPhase TEXT,
    GrantNumber TEXT,
    ContactEmail TEXT,
    LastUpdated DATE,
    Remarks TEXT
);

INSERT INTO environmental_grants_research VALUES ('GP001','Urban Tree Canopy Study','EPA','120000','2023-01-01','2025-12-31','DrAliceWhite','DrBobGreen|DrCarolLee','Tree canopy mapping','MetroArea','Active','2023-12-15',2,'http://data.example.com/gt001',1,'CityDept|UniversityX','GIS','Improved green space assessment','Operations',30000,'Phase1','EPA-2023-UTCS','alice.white@university.edu','2023-06-01','Ongoing');
INSERT INTO environmental_grants_research VALUES ('GP002','River Water Quality Monitoring','USGS','85000','2022-06-15','2024-06-14','DrEvanKim','DrFionaChoi','Water sampling','RiverBasin','Completed','2024-07-01',5,'http://data.example.com/gp002',1,'StateWaterAgency|CollegeY','Chemistry','Reduced pollutant levels','Supplies',15000,'Phase2','USGS-2022-RWQM','evan.kim@research.org','2024-05-20','Final report submitted');
INSERT INTO environmental_grants_research VALUES ('GP003','Solar Panel Efficiency Trial','DOE','200000','2023-03-01','2026-02-28','DrGregoryHall','DrHelenMao','Solar panel testing','Regional','Active','2023-11-30',1,'http://data.example.com/gp003',0,'SolarIndustryConsortium','Physics','Higher conversion rates','Equipment',50000,'Phase1','DOE-2023-SPET','gregory.hall@lab.gov','2023-09-10','Mid‑project data collection');

-- Technology Patent Portfolio
CREATE TABLE technology_patent_portfolio (
    PatentID TEXT NOT NULL PRIMARY KEY,
    Title TEXT,
    InventorList TEXT,
    FilingDate DATE,
    IssueDate DATE,
    PatentNumber TEXT,
    TechnologyDomain TEXT,
    ApplicationStatus TEXT,
    ExpirationDate DATE,
    AssignedTo TEXT,
    LicenseeList TEXT,
    RoyaltyRate REAL,
    MaintenanceFee REAL,
    PriorArtReference TEXT,
    ClaimsCount INTEGER,
    Abstract TEXT,
    TechnicalSummary TEXT,
    FundingSource TEXT,
    ProjectCode TEXT,
    CountryOfProtection TEXT,
    StatusNotes TEXT,
    LastReviewDate DATE,
    CreatedBy TEXT,
    CreatedDate DATE
);

INSERT INTO technology_patent_portfolio VALUES ('PT001','Adaptive Learning Algorithm','AliceSmith|BobJones','2021-02-10','2023-05-20','US12345678','EdTech','Granted','2043-05-20','TechEduInc','SchoolDistrictA|EduPlatformB',0.05,2000,'US2020/098765','15','Algorithm adapts to student pace','Uses AI to personalize content','DistrictGrant','PRJ001','US','Active','2024-01-15','SystemAdmin','2021-03-01');
INSERT INTO technology_patent_portfolio VALUES ('PT002','Energy Efficient HVAC Control','CarolLee|DavidKim','2020-08-05','2022-11-30','US87654321','HVAC','Granted','2042-11-30','GreenBuildCo','','0.03',1500,'US2019/112233','12','Smart sensors optimize airflow','IoT sensors adjust ventilation','CorporateR&D','PRJ045','US','InLicensing','2023-07-10','PatentOfficer','2020-09-01');
INSERT INTO technology_patent_portfolio VALUES ('PT003','Mobile Attendance Tracking App','EmilyClark','2022-01-12','Pending','', 'Mobile','Pending','', 'EduSoftLLC','','',0,'','8','App records student attendance via GPS','Mobile app for real‑time data','GrantProgramX','PRJ078','CA','UnderReview','2023-12-05','LegalTeam','2022-02-01');

-- Teacher Sabbatical Assignments
CREATE TABLE teacher_sabbatical_assignments (
    SabbaticalID TEXT NOT NULL PRIMARY KEY,
    TeacherID TEXT,
    StartDate DATE,
    EndDate DATE,
    SabbaticalType TEXT,
    HostInstitution TEXT,
    ResearchTopic TEXT,
    FundingSource TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    Status TEXT,
    PublicationOutcome TEXT,
    ConferencePresentations INTEGER,
    GrantAmount REAL,
    HoursAllocated INTEGER,
    ReplacementTeacherID TEXT,
    ReplacementStartDate DATE,
    ReplacementEndDate DATE,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    LastModified DATE,
    ReviewScore INTEGER,
    EvaluationComments TEXT
);

INSERT INTO teacher_sabbatical_assignments VALUES ('SB001','T001','2023-07-01','2024-06-30','Research','UniversityX','STEM Curriculum Integration','DistrictFund','PrincipalA','2023-05-15','Approved','JournalArticle','2',50000,200,'T101','2023-07-01','2024-06-30','Successful project','AdminA','2023-04-01','2023-05-20','8','Positive impact on teaching');
INSERT INTO teacher_sabbatical_assignments VALUES ('SB002','T002','2024-01-15','2024-12-14','Professional Development','OnlineCourseProvider','Advanced Assessment Strategies','GrantY','PrincipalB','2023-11-30','Pending','','0',30000,150,'T102','2024-01-15','2024-12-14','Pending approval','AdminB','2023-10-01','2023-11-30','0','Pending evaluation');
INSERT INTO teacher_sabbatical_assignments VALUES ('SB003','T003','2022-09-01','2023-08-31','Research','ResearchInstituteZ','Student Mental Health Framework','FederalGrant','PrincipalC','2022-07-10','Completed','ConferenceProceedings','1',75000,210,'T103','2022-09-01','2023-08-31','Published findings','AdminC','2022-06-01','2023-09-05','9','Highly impactful');

-- Student Extracurricular Logistics
CREATE TABLE student_extracurricular_logistics (
    LogID TEXT NOT NULL PRIMARY KEY,
    StudentID TEXT,
    ActivityCode TEXT,
    Season TEXT,
    RegistrationDate DATE,
    ParticipationStatus TEXT,
    CoachID TEXT,
    PracticeLocation TEXT,
    PracticeStartTime TEXT,
    PracticeEndTime TEXT,
    UniformSize TEXT,
    EquipmentList TEXT,
    TravelMode TEXT,
    TravelDistanceKM REAL,
    TravelCost REAL,
    ParentConsentFlag INTEGER,
    InsurancePolicyNumber TEXT,
    FeePaid REAL,
    FeeDue REAL,
    PaymentMethod TEXT,
    SponsorName TEXT,
    ScholarshipFlag INTEGER,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    LastUpdated DATE
);

INSERT INTO student_extracurricular_logistics VALUES ('L001','STU001','ATH001','Fall','2023-08-10','Active','C001','GymA','15:00','17:00','M','Shoes|Jersey','Bus',5.2,12.50,1,'INS12345',150,0,'CreditCard','LocalBiz','0','All documents submitted','StaffA','2023-08-01','2023-09-01');
INSERT INTO student_extracurricular_logistics VALUES ('L002','STU002','MUS002','Spring','2023-02-05','Active','C002','MusicRoomB','16:30','18:30','S','InstrumentCase','Car',2.1,5.00,1,'INS67890',100,0,'Cash','CommunityFund','1','Scholarship awarded','StaffB','2023-01-20','2023-02-15');
INSERT INTO student_extracurricular_logistics VALUES ('L003','STU003','CLB003','Winter','2023-11-20','Pending','C003','Library','14:00','15:30','L','Books|Laptop','Walk',0.5,0,0,'','0',0,0,'None','SchoolGrant','0','Awaiting consent','StaffC','2023-11-10','2023-11-20');

-- Facility Renovation Budget
CREATE TABLE facility_renovation_budget (
    ProjectID TEXT NOT NULL PRIMARY KEY,
    FacilityName TEXT,
    ProjectDescription TEXT,
    Phase TEXT,
    EstimatedCost REAL,
    ApprovedBudget REAL,
    FundingSource TEXT,
    StartDate DATE,
    EndDate DATE,
    ProjectManagerID TEXT,
    ContractorID TEXT,
    ContractValue REAL,
    ChangeOrderCount INTEGER,
    ChangeOrderTotal REAL,
    CostOverrunFlag INTEGER,
    ActualSpending REAL,
    RemainingBudget REAL,
    PercentComplete REAL,
    RiskAssessment TEXT,
    PermitNumber TEXT,
    InspectionDate DATE,
    InspectionResult TEXT,
    Comments TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    LastModified DATE
);

INSERT INTO facility_renovation_budget VALUES ('PRJ001','Science Building','HVAC replacement and insulation','Planning',250000,230000,'DistrictBond','2024-01-15','2024-12-31','PM001','CT001',200000,2,15000,0,210000,20000,85,'Low','PERM123','2024-06-20','Pass','On schedule','AdminA','2023-12-01','2024-01-10');
INSERT INTO facility_renovation_budget VALUES ('PRJ002','Gymnasium','Floor resurfacing and bleacher upgrade','Execution',180000,175000,'PrivateDonor','2023-09-01','2024-03-15','PM002','CT002',160000,1,8000,1,178000, -3000,95,'Medium','PERM456','2024-02-10','Pass','Minor overrun due to material price','AdminB','2023-08-15','2023-09-05');
INSERT INTO facility_renovation_budget VALUES ('PRJ003','Library','Expansion wing construction','Design',320000,300000,'StateGrant','2025-02-01','2026-07-30','PM003','CT003',290000,0,0,0,295000,5000,70,'High','PERM789','2025-08-01','Pending','Design phase completed','AdminC','2024-12-20','2025-01-15');

-- Public Transport Accessibility
CREATE TABLE public_transport_accessibility (
    StopID TEXT NOT NULL PRIMARY KEY,
    StopName TEXT,
    RouteNumber TEXT,
    Latitude REAL,
    Longitude REAL,
    WheelchairAccessible INTEGER,
    RampPresence INTEGER,
    TactilePaving INTEGER,
    SignageLanguage TEXT,
    ShelterAvailable INTEGER,
    SeatingCount INTEGER,
    LightingLevel TEXT,
    NearbyLandmark TEXT,
    DistanceToSchoolMeters REAL,
    AverageDailyRiders INTEGER,
    ServiceFrequencyMin INTEGER,
    FirstServiceTime TEXT,
    LastServiceTime TEXT,
    MaintenanceStatus TEXT,
    LastInspectionDate DATE,
    InspectorName TEXT,
    AccessibilityScore INTEGER,
    Comments TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    LastUpdated DATE
);

INSERT INTO public_transport_accessibility VALUES ('STP001','Main St & 1st Ave','10',34.0522,-118.2437,1,1,1,'English',1,4,'High','CityHall',250,1200,10,'05:00','23:30','Good','2023-11-15','InspectorA',9,'Well maintained','AdminX','2023-10-01','2023-11-20');
INSERT INTO public_transport_accessibility VALUES ('STP002','Elm St & 3rd Blvd','12',34.0550,-118.2500,0,0,0,'English',0,2,'Medium','Park',500,800,15,'06:00','22:00','Needs Repair','2023-10-10','InspectorB',5,'Ramp missing','AdminY','2023-09-15','2023-10-12');
INSERT INTO public_transport_accessibility VALUES ('STP003','Oak Rd & 5th St','14',34.0600,-118.2600,1,1,1,'Spanish',1,3,'High','Library',150,600,12,'05:30','23:00','Excellent','2023-12-01','InspectorC',10,'All features compliant','AdminZ','2023-11-01','2023-12-02');

-- Regional Education Collaborations
CREATE TABLE regional_education_collaborations (
    CollaborationID TEXT NOT NULL PRIMARY KEY,
    PartnerName TEXT,
    CollaborationType TEXT,
    StartDate DATE,
    EndDate DATE,
    LeadDistrict TEXT,
    FundingAmount REAL,
    GrantNumber TEXT,
    ProjectTitle TEXT,
    Objectives TEXT,
    ExpectedOutcomes TEXT,
    ParticipantsCount INTEGER,
    PrimaryContact TEXT,
    ContactEmail TEXT,
    Status TEXT,
    Milestone1Date DATE,
    Milestone1Description TEXT,
    Milestone2Date DATE,
    Milestone2Description TEXT,
    EvaluationMethod TEXT,
    FinalReportSubmittedFlag INTEGER,
    ReportLink TEXT,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    LastModified DATE
);

INSERT INTO regional_education_collaborations VALUES ('RC001','UniversityX','Research Partnership','2022-01-01','2024-12-31','DistrictA',250000,'GR12345','STEM Innovation Initiative','Develop new curricula','Improved test scores',30,'DrAliceWhite','alice.white@university.edu','Active','2022-06-01','Curriculum prototype completed','2023-06-01','Pilot testing in schools','Surveys and assessments',0,'','Initial phase successful','CoordinatorA','2021-12-01','2023-05-15');
INSERT INTO regional_education_collaborations VALUES ('RC002','TechCorp','Industry Collaboration','2023-03-15','2025-03-14','DistrictB',150000,'GR67890','Digital Literacy Expansion','Provide devices and training','Increased digital competency',45,'MrBobGreen','bob.green@techcorp.com','Planning','2023-09-01','Device procurement','2024-09-01','Deployment to classrooms','Usage analytics',0,'','Pending approval','CoordinatorB','2023-02-20','2023-08-10');
INSERT INTO regional_education_collaborations VALUES ('RC003','NonProfitY','Community Outreach','2021-05-01','2023-04-30','DistrictC',50000,'GR11223','Family Engagement Program','Increase parent involvement','Higher attendance at events',120,'MsCarolLee','carol.lee@nonprofity.org','Completed','2021-08-01','Program rollout','2022-08-01','Evaluation and reporting','Focus groups',1,'http://reports.example.com/rc003','Program exceeded goals','CoordinatorC','2021-04-01','2023-05-01');