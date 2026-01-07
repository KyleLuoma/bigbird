-- District community service projects
CREATE TABLE district_community_service_projects (
    ProjectID INTEGER PRIMARY KEY,
    DistrictCode TEXT NOT NULL,
    ProjectName TEXT,
    ProjectType TEXT,
    StartDate DATE,
    EndDate DATE,
    LeadCoordinator TEXT,
    VolunteerHoursPlanned INTEGER,
    VolunteerHoursActual INTEGER,
    ParticipantsPlanned INTEGER,
    ParticipantsActual INTEGER,
    BudgetAllocated REAL,
    BudgetSpent REAL,
    FundingSource TEXT,
    CommunityPartner TEXT,
    Location TEXT,
    Description TEXT,
    Status TEXT,
    ApprovalDate DATE,
    ReportSubmitted INTEGER,
    ImpactScore REAL,
    Comments TEXT
);

INSERT INTO district_community_service_projects VALUES (1,'D001','Tree Planting Initiative','Environmental', '2023-03-01','2023-03-15','John Doe',500,480,200,190,15000.00,14500.00,'Grant','GreenEarth Org','Central Park','Planting 2000 trees across the district', 'Completed','2023-02-20',1,8.7,'Successful community engagement');
INSERT INTO district_community_service_projects VALUES (2,'D002','Literacy Tutoring Program','Education', '2023-09-01','2024-06-30','Jane Smith',1200,1150,300,295,25000.00,24000.00,'District Funds','ReadingBoost','Various Schools','After‑school tutoring for grades K‑5', 'Ongoing','2023-08-15',0,9.1,'High student improvement');
INSERT INTO district_community_service_projects VALUES (3,'D003','Senior Tech Help','Community', '2023-01-10','2023-12-20','Mike Lee',800,750,150,145,18000.00,17500.00,'Corporate Sponsorship','SeniorConnect','Community Center','Teaching seniors basic computer skills', 'Completed','2022-12-01',1,7.5,'Positive feedback');

-- School technology deployment log
CREATE TABLE school_technology_deployment_log (
    DeploymentID INTEGER PRIMARY KEY,
    SchoolCDSCode TEXT NOT NULL,
    AssetTag TEXT,
    AssetType TEXT,
    Manufacturer TEXT,
    Model TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    InstallationDate DATE,
    Installer TEXT,
    WarrantyEndDate DATE,
    Cost REAL,
    FundingProgram TEXT,
    AssignedTo TEXT,
    Department TEXT,
    Status TEXT,
    LastServiceDate DATE,
    ServiceVendor TEXT,
    ConfigurationNotes TEXT,
    NetworkSegment TEXT,
    IPAddress TEXT,
    MACAddress TEXT,
    DecommissionDate DATE,
    ReasonDecommissioned TEXT
);

INSERT INTO school_technology_deployment_log VALUES (101,'SC001','AT-1001','Laptop','Dell','Latitude 5520','SN12345','2022-07-15','2022-07-20','TechTeamA','2025-07-15',1200.00,'TechGrant','StudentA','Science','Active','2023-09-01','VendorX','Standard imaging','VLAN10','10.0.0.101','00:1A:2B:3C:4D:5E',NULL,NULL);
INSERT INTO school_technology_deployment_log VALUES (102,'SC002','AT-1002','InteractiveWhiteboard','Smart','Board 6000','SN67890','2022-08-01','2022-08-05','TechTeamB','2026-08-01',3500.00,'DistrictBudget','Room101','Mathematics','Active','2023-08-15','VendorY','Calibrated for math apps','VLAN12','10.0.0.102','00:1A:2B:3C:4D:5F',NULL,NULL);
INSERT INTO school_technology_deployment_log VALUES (103,'SC001','AT-1003','Server','HP','ProLiant DL380','SN54321','2021-05-10','2021-05-15','ITDept','2024-05-10',8000.00,'FederalGrant','ITDept','Administration','Retired','2023-10-20','VendorZ','Decommissioned after migration','VLAN01','10.0.0.1','00:1A:2B:3C:4D:60','2023-10-22','Hardware failure');

-- Student scholarship fund records
CREATE TABLE student_scholarship_fund_records (
    ScholarshipID INTEGER PRIMARY KEY,
    StudentID TEXT NOT NULL,
    SchoolCDSCode TEXT NOT NULL,
    ScholarshipName TEXT,
    AwardYear INTEGER,
    AmountAwarded REAL,
    FundingSource TEXT,
    DisbursementDate DATE,
    DisbursementMethod TEXT,
    AcademicLevel TEXT,
    GPARequirement REAL,
    EssayRequired INTEGER,
    ApplicationDeadline DATE,
    RenewalRequired INTEGER,
    RenewalCriteria TEXT,
    NotificationSent INTEGER,
    NotificationDate DATE,
    Status TEXT,
    Remarks TEXT,
    CommitteeChair TEXT,
    ReviewScore REAL,
    AcceptanceDate DATE
);

INSERT INTO student_scholarship_fund_records VALUES (5001,'STU001','SC001','STEM Excellence','2023',2500.00,'CorporateDonor','2023-09-01','Check','Senior',3.5,1,'2023-06-30',1,'Maintain GPA 3.5','1','2023-06-15','Awarded','Outstanding project','DrAllen',92.5,'2023-07-01');
INSERT INTO student_scholarship_fund_records VALUES (5002,'STU002','SC002','Community Leader','2023',1500.00,'DistrictFund','2023-08-15','DirectDeposit','Junior',3.2,0,'2023-05-31',0,NULL,'1','2023-05-20','Awarded','Volunteer hours 100+','MsBrown',88.0,'2023-06-05');
INSERT INTO student_scholarship_fund_records VALUES (5003,'STU003','SC001','Arts Merit','2022',2000.00,'FoundationGrant','2022-10-01','Check','Sophomore',3.0,1,'2022-07-31',1,'Portfolio review','1','2022-07-20','Expired','No renewal application',NULL,NULL,NULL);

-- Faculty training workshops
CREATE TABLE faculty_training_workshops (
    WorkshopID INTEGER PRIMARY KEY,
    FacultyID TEXT NOT NULL,
    WorkshopTitle TEXT,
    Provider TEXT,
    StartDate DATE,
    EndDate DATE,
    Location TEXT,
    Hours INTEGER,
    Credits INTEGER,
    Cost REAL,
    FundingSource TEXT,
    MaterialsProvided INTEGER,
    EvaluationScore REAL,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    CertificationGranted INTEGER,
    CertificationType TEXT,
    AttendanceStatus TEXT,
    FeedbackComments TEXT,
    Organizer TEXT,
    Department TEXT,
    OnlineLink TEXT,
    Recorded BOOLEAN,
    AccessExpiration DATE
);

INSERT INTO faculty_training_workshops VALUES (2001,'FAC001','Inclusive Teaching Strategies','EdTechCo','2023-03-10','2023-03-12','Room 210','12','2',500.00,'SchoolBudget',1,4.5,0,NULL,1,'InclusiveCert','Attended','Very useful','DrGreen','Science','https://trainings.example.com/inc','1','2023-12-31');
INSERT INTO faculty_training_workshops VALUES (2002,'FAC002','Advanced Data Analytics','DataInsights','2023-05-05','2023-05-06','Online','8','1',0.00,'Grant',0,4.0,1,'2023-09-01',0,NULL,'Completed','Good content','MsWhite','Mathematics','https://trainings.example.com/analytics','1','2024-05-05');
INSERT INTO faculty_training_workshops VALUES (2003,'FAC003','Classroom Management','EduServe','2023-01-15','2023-01-16','Room 101','6','0',250.00,'DepartmentFund',1,3.8,0,NULL,0,NULL,'Cancelled','Instructor unavailable','MrBlack','English','https://trainings.example.com/management','0',NULL);

-- District renewable energy assets
CREATE TABLE district_renewable_energy_assets (
    AssetID INTEGER PRIMARY KEY,
    DistrictCode TEXT NOT NULL,
    AssetType TEXT,
    Location TEXT,
    CapacityMW REAL,
    InstallationDate DATE,
    Owner TEXT,
    OperationalStatus TEXT,
    LastInspectionDate DATE,
    InspectionAgency TEXT,
    MaintenanceContract INTEGER,
    ContractVendor TEXT,
    ExpectedLifeYears INTEGER,
    CurrentOutputMW REAL,
    CO2ReductionTons REAL,
    FundingProgram TEXT,
    Cost REAL,
    DecommissionDate DATE,
    ReasonDecommissioned TEXT,
    Notes TEXT,
    GPSLatitude REAL,
    GPSLongitude REAL,
    RenewableCategory TEXT
);

INSERT INTO district_renewable_energy_assets VALUES (301,'D001','SolarFarm','North Ridge','5.2','2020-04-20','District','Active','2023-07-10','EnergyAuditCo',1,'SolarTech Ltd',25,5.0,12.5,'SolarGrant',3000000.00,NULL,NULL,'Performance stable','45.1234','-120.5678','Solar');
INSERT INTO district_renewable_energy_assets VALUES (302,'D002','WindTurbine','East Plains','3.5','2019-09-15','District','Active','2023-06-05','WindInspectors',1,'WindPower Inc',30,3.2,9.8,'WindFund',2500000.00,NULL,NULL,'Minor blade wear','46.2345','-121.6789','Wind');
INSERT INTO district_renewable_energy_assets VALUES (303,'D003','GeothermalPlant','South Valley','2.0','2018-02-10','District','Retired','2022-12-01','GeoCheck',0,NULL,20,0.0,5.0,'GeoGrant',1800000.00,'2023-01-15','End of life','Decommissioned per plan','44.9876','-119.5432','Geothermal');

-- School artistic exhibition inventory
CREATE TABLE school_artistic_exhibition_inventory (
    ExhibitID INTEGER PRIMARY KEY,
    SchoolCDSCode TEXT NOT NULL,
    ExhibitionName TEXT,
    Theme TEXT,
    StartDate DATE,
    EndDate DATE,
    Curator TEXT,
    GalleryRoom TEXT,
    TotalPieces INTEGER,
    ArtistsCount INTEGER,
    MediumsListed TEXT,
    OpeningReception INTEGER,
    ReceptionDate DATE,
    Sponsorship TEXT,
    EstimatedVisitors INTEGER,
    ActualVisitors INTEGER,
    VisitorFeedbackScore REAL,
    SecurityLevel TEXT,
    InsuranceProvider TEXT,
    InsurancePolicyNumber TEXT,
    InsuranceCoverage REAL,
    Notes TEXT,
    DisplayHoursPerDay INTEGER,
    AccessibilityRating REAL
);

INSERT INTO school_artistic_exhibition_inventory VALUES (401,'SC001','Colors of Tomorrow','Future','2023-05-01','2023-05-31','Laura Kim','Art Hall','120','45','Painting, Sculpture, Digital','1','2023-04-30','LocalBizCo','500','540',4.6,'Standard','SafeGuard','SG12345',20000.00,'All pieces insured','6','4.8');
INSERT INTO school_artistic_exhibition_inventory VALUES (402,'SC002','Heritage Voices','Culture','2023-09-10','2023-10-10','Mark Lee','Main Atrium','80','30','Photography, Textile','0',NULL,'CommunityFund','300','280',4.2,'Low','ProtectAll','PA98765',15000.00,'Donated works','5','4.5');
INSERT INTO school_artistic_exhibition_inventory VALUES (403,'SC003','Digital Dreams','Technology','2024-01-15','2024-02-15','Sara Patel','Tech Lab','60','25','DigitalArt, VR','1','2024-01-14','TechCorp','400','390',4.9,'High','SecureNow','SN54321',25000.00,'Interactive installations','8','5.0');

-- Transportation incident reports
CREATE TABLE transportation_incident_reports (
    IncidentID INTEGER PRIMARY KEY,
    VehicleID TEXT NOT NULL,
    DateOccurred DATE,
    TimeOccurred TEXT,
    Location TEXT,
    IncidentType TEXT,
    SeverityLevel TEXT,
    DriverID TEXT,
    PassengersInvolved INTEGER,
    InjuriesReported INTEGER,
    Fatalities INTEGER,
    WeatherCondition TEXT,
    RoadCondition TEXT,
    PoliceReportFiled INTEGER,
    ReportNumber TEXT,
    Description TEXT,
    FollowUpActions TEXT,
    InvestigationStatus TEXT,
    ClosedDate DATE,
    CostEstimated REAL,
    InsuranceClaimNumber TEXT,
    Notes TEXT
);

INSERT INTO transportation_incident_reports VALUES (501,'BUS-1001','2023-03-22','08:15','Route 12 Main St','RearEndCollision','Moderate','DRV001',12,2,0,'Rainy','Wet','1','RP-20230322-01','Minor rear‑end while stopping','Vehicle inspected, driver retraining','Closed','2023-04-05',1200.00,'CLAIM123','No further action required');
INSERT INTO transportation_incident_reports VALUES (502,'VAN-2003','2023-07-10','14:40','Highway 5 Exit 23','SideSwipe','Minor','DRV045',4,0,0,'Clear','Dry','1','RP-20230710-07','Side swipe during lane change','Driver counseling','Closed','2023-07-15',800.00,'CLAIM456','Incident resolved');
INSERT INTO transportation_incident_reports VALUES (503,'BUS-1002','2023-11-05','19:30','School Parking Lot','PedestrianHit','Severe','DRV078',30,3,1,'Snow','Icy','1','RP-20231105-03','Bus hit student crossing the lot','Legal action pending','Open',NULL,NULL,'Investigation ongoing');

-- Health nutrition programs
CREATE TABLE health_nutrition_programs (
    ProgramID INTEGER PRIMARY KEY,
    SchoolCDSCode TEXT NOT NULL,
    ProgramName TEXT,
    StartDate DATE,
    EndDate DATE,
    TargetPopulation TEXT,
    DailyMealCount INTEGER,
    CaloriesPerMeal INTEGER,
    ProteinGrams INTEGER,
    VitaminA_IU INTEGER,
    VitaminC_mg INTEGER,
    SodiumMg INTEGER,
    FundingAgency TEXT,
    BudgetAllocated REAL,
    BudgetSpent REAL,
    MealsDistributed INTEGER,
    ParticipationRate REAL,
    HealthOutcomesScore REAL,
    EvaluationDate DATE,
    Coordinator TEXT,
    ContactPhone TEXT,
    Email TEXT,
    Status TEXT,
    Notes TEXT,
    LastUpdate DATE
);

INSERT INTO health_nutrition_programs VALUES (601,'SC001','Morning Fruit Initiative','2023-09-01','2024-06-30','All Students',1500,150,5,900,30,200,'StateHealthDept',50000.00,42000.00,1400,0.93,4.2,'2023-12-15','Laura Kim','555-1234','lkim@school.org','Active','Positive impact on attendance', '2023-12-20');
INSERT INTO health_nutrition_programs VALUES (602,'SC002','Protein Snack Program','2023-01-15','2023-12-15','Athletes',300,250,12,1200,35,250,'DistrictFunds',30000.00,29500.00,300,1.0,4.8,'2023-11-20','Mike Lee','555-5678','mlee@school.org','Completed','Improved performance metrics', '2023-11-25');
INSERT INTO health_nutrition_programs VALUES (603,'SC003','Low‑Sodium Lunch Plan','2022-08-01','2023-07-31','Grades 6-8',800,400,8,800,45,150,'FederalGrant',60000.00,58000.00,780,0.975,4.5,'2023-06-10','Sara Patel','555-9012','spatel@school.org','Completed','Reduced hypertension indicators', '2023-06-15');

-- Library annual circulation stats
CREATE TABLE library_annual_circulation_stats (
    StatYear INTEGER PRIMARY KEY,
    LibraryID TEXT NOT NULL,
    TotalItems INTEGER,
    TotalCheckouts INTEGER,
    TotalRenewals INTEGER,
    UniquePatrons INTEGER,
    ChildrenMaterials INTEGER,
    TeenMaterials INTEGER,
    AdultMaterials INTEGER,
    DigitalResources INTEGER,
    InterlibraryLoans INTEGER,
    NewAcquisitions INTEGER,
    AverageCheckoutDurationDays REAL,
    OverdueItems INTEGER,
    OverdueFinesCollected REAL,
    ProgramsHosted INTEGER,
    AttendanceProgramParticipants INTEGER,
    StaffHours INTEGER,
    BudgetAllocated REAL,
    BudgetUsed REAL,
    FundingSource TEXT,
    Notes TEXT,
    LastUpdated DATE
);

INSERT INTO library_annual_circulation_stats VALUES (2022,'LIB001',25000,75000,12000,3500,8000,6000,11000,15000,2000,3000,12.5,400,1500.00,25,350,1200,50000.00,47000.00,'District','All metrics within targets','2023-01-10');
INSERT INTO library_annual_circulation_stats VALUES (2023,'LIB001',26000,80000,13000,3600,8200,6200,11600,16000,2100,3200,13.0,380,1600.00,28,400,1250,52000.00,50000.00,'District','Increased digital usage','2024-01-05');
INSERT INTO library_annual_circulation_stats VALUES (2022,'LIB002',18000,60000,9000,2800,5000,4000,9000,10000,1500,2500,11.8,300,1200.00,20,250,950,40000.00,38000.00,'StateGrant','Steady growth','2023-02-15');

-- District emergency response exercises
CREATE TABLE district_emergency_response_exercises (
    ExerciseID INTEGER PRIMARY KEY,
    DistrictCode TEXT NOT NULL,
    ExerciseName TEXT,
    Scenario TEXT,
    DateConducted DATE,
    DurationHours INTEGER,
    LeadAgency TEXT,
    ParticipatingUnits TEXT,
    Objectives TEXT,
    EvaluationScore REAL,
    LessonsLearned TEXT,
    FollowUpActions TEXT,
    Status TEXT,
    Coordinator TEXT,
    ContactPhone TEXT,
    Email TEXT,
    ResourcesAllocated REAL,
    ResourcesUsed REAL,
    MediaCoverage BOOLEAN,
    PublicNoticeIssued BOOLEAN,
    AfterActionReportSubmitted INTEGER,
    ReportDate DATE,
    Remarks TEXT,
    LastModified DATE
);

INSERT INTO district_emergency_response_exercises VALUES (701,'D001','Winter Storm Drill','Heavy snowfall affecting transportation','2023-02-10',8,'StateEmergency','Fire, Police, EMS','Test communication and shelter protocols',4.5,'Delayed shelter opening','Update shelter checklist','Completed','John Doe','555-1111','jdoe@district.org',20000.00,19500.00,1,1,1,'2023-02-15','Successful overall', '2023-02-20');
INSERT INTO district_emergency_response_exercises VALUES (702,'D002','Earthquake Simulation','Magnitude 6.0 seismic event','2023-07-22',6,'FederalAgency','Police, EMS, School Staff','Assess building safety procedures',4.2,'Insufficient structural assessments','Revise building inspection schedule','Completed','Jane Smith','555-2222','jsmith@district.org',25000.00,24000.00,0,1,1,'2023-07-28','Need more training on evacuation', '2023-08-01');
INSERT INTO district_emergency_response_exercises VALUES (703,'D003','Cybersecurity Breach Exercise','Simulated ransomware attack on district network','2023-11-05',4,'CyberSecurityTeam','IT Staff, Admin','Test incident response plan',4.8,'Slow detection time','Implement continuous monitoring','Completed','Mike Lee','555-3333','mlee@district.org',15000.00,14900.00,1,0,1,'2023-11-12','Improved detection capabilities', '2023-11-15');