-- Teacher peer observation records
CREATE TABLE teacher_peer_observations
(
    ObservationID INTEGER PRIMARY KEY,
    ObserverTeacherID TEXT,
    ObservedTeacherID TEXT,
    ObservationDate DATE,
    SubjectArea TEXT,
    GradeLevel TEXT,
    LessonFocus TEXT,
    DurationMinutes INTEGER,
    ClassroomID TEXT,
    ObservationScore REAL,
    Strengths TEXT,
    AreasForImprovement TEXT,
    FollowUpDate DATE,
    FollowUpNotes TEXT,
    SchoolCode TEXT,
    DistrictCode TEXT,
    Region TEXT,
    ObservationType TEXT,
    WasScheduled INTEGER,
    AudioRecorded INTEGER,
    VideoRecorded INTEGER,
    Comments TEXT
);

INSERT INTO teacher_peer_observations VALUES (1,'T001','T010','2023-09-15','Math','6','Fractions',45,'CR101',4.5,'Clear explanations','Increase student interaction','2023-10-01','Reviewed strategies','SCH100','DST01','North','Formal',1,0,1,'Overall positive');
INSERT INTO teacher_peer_observations VALUES (2,'T005','T012','2023-09-18','Science','8','Photosynthesis',60,'CR202',4.0,'Effective lab setup','Need more questioning','2023-10-05','Provided probing questions','SCH101','DST02','South','Informal',0,1,0,'Observer noted enthusiasm');
INSERT INTO teacher_peer_observations VALUES (3,'T003','T015','2023-09-20','English','9','Essay Writing',50,'CR303',3.8,'Strong feedback','Provide clearer rubric','2023-10-10','Discussed rubric revisions','SCH102','DST01','East','Formal',1,0,0,'Suggested peer review');

-- Student art portfolio submissions
CREATE TABLE student_art_portfolio
(
    PortfolioID INTEGER PRIMARY KEY,
    StudentID TEXT,
    SubmissionDate DATE,
    AcademicYear TEXT,
    GradeLevel TEXT,
    ArtMedium TEXT,
    Title TEXT,
    Description TEXT,
    Dimensions TEXT,
    FilePath TEXT,
    FileSizeKB INTEGER,
    ApprovalStatus TEXT,
    ReviewerID TEXT,
    ReviewDate DATE,
    Comments TEXT,
    SchoolCode TEXT,
    DistrictCode TEXT,
    Category TEXT,
    IsDigital INTEGER,
    ExhibitedFlag INTEGER,
    AwardReceived TEXT,
    PortfolioScore REAL,
    CuratorNotes TEXT
);

INSERT INTO student_art_portfolio VALUES (1001,'S1001','2023-04-10','2022-2023','7','Watercolor','Sunset','Landscape of sunset over hills','24x36','/art/1001.png',250,'Approved','R001','2023-04-12','Well composed', 'SCH200','DST05','Landscape',1,0,'None',88.5,'N/A');
INSERT INTO student_art_portfolio VALUES (1002,'S1002','2023-04-12','2022-2023','8','MixedMedia','Cityscape','Abstract city view','30x40','/art/1002.jpg',320,'Pending','R002','2023-04-15','Needs stronger contrast','SCH201','DST05','Abstract',1,0,'None',0.0,'Awaiting review');
INSERT INTO student_art_portfolio VALUES (1003,'S1003','2023-04-15','2022-2023','9','Digital','Portrait','Digital portrait of peer','1920x1080','/art/1003.psd',1500,'Approved','R003','2023-04-18','Excellent detail','SCH202','DST06','Portrait',1,1,'BestDigital',94.2,'Will be displayed in gallery');

-- School furnishings inventory
CREATE TABLE school_furnishings_inventory
(
    AssetID INTEGER PRIMARY KEY,
    SchoolCode TEXT,
    DistrictCode TEXT,
    AssetTag TEXT,
    Description TEXT,
    Category TEXT,
    PurchaseDate DATE,
    VendorName TEXT,
    Cost REAL,
    WarrantyYears INTEGER,
    ConditionStatus TEXT,
    AssignedRoom TEXT,
    AssignedTeacherID TEXT,
    Quantity INTEGER,
    SerialNumber TEXT,
    MaintenanceSchedule TEXT,
    LastMaintenanceDate DATE,
    NextMaintenanceDue DATE,
    DepreciationRate REAL,
    CurrentValue REAL,
    DisposalStatus TEXT,
    DisposalDate DATE,
    Notes TEXT
);

INSERT INTO school_furnishings_inventory VALUES (5001,'SCH300','DST07','FTG-001','Standard student desk','Desk','2020-08-01','FurnitureCo',120.00,5,'Good','RM101','T010',30,'SN12345','Annual','2023-01-10','2024-01-10',0.10,86.40,'InUse',NULL,'No issues');
INSERT INTO school_furnishings_inventory VALUES (5002,'SCH301','DST07','FTG-002','Whiteboard marker set','Supplies','2022-01-15','SuppliesInc',45.00,2,'New','RM202','T015',1,'SN54321','SemiAnnual','2023-06-05','2023-12-05',0.15,38.25,'InUse',NULL,'Replaced last year');
INSERT INTO school_furnishings_inventory VALUES (5003,'SCH302','DST08','FTG-003','Projector','AV','2019-05-20','TechGoods',650.00,3,'Fair','RM303','T020',1,'SN98765','Quarterly','2023-03-12','2023-06-12',0.12,455.00,'InUse',NULL,'Lens cleaned');

-- District grant application metrics
CREATE TABLE district_grant_application_metrics
(
    MetricID INTEGER PRIMARY KEY,
    DistrictCode TEXT,
    GrantProgram TEXT,
    ApplicationYear TEXT,
    SubmittedDate DATE,
    ApplicationStatus TEXT,
    RequestedAmount REAL,
    ApprovedAmount REAL,
    ReviewScore REAL,
    ReviewerID TEXT,
    ReviewDate DATE,
    NumberOfPartners INTEGER,
    TotalStudentsBenefited INTEGER,
    ProjectDurationMonths INTEGER,
    PrimaryFocusArea TEXT,
    SecondaryFocusArea TEXT,
    MatchingFundsProvided REAL,
    EvaluationPlanExists INTEGER,
    SustainabilityPlanExists INTEGER,
    CommunityImpactScore REAL,
    Comments TEXT,
    FundingAgency TEXT,
    GrantID TEXT,
    AwardDecisionDate DATE
);

INSERT INTO district_grant_application_metrics VALUES (1,'DST09','STEM Innovation','2023','2023-02-10','Submitted',250000.00,0,0,'R100','2023-02-15',3,15000,24,'Science','Technology',50000.00,1,1,0,NULL,'NSF','GRANT2023-001',NULL);
INSERT INTO district_grant_application_metrics VALUES (2,'DST10','Arts Expansion','2022','2022-11-05','Approved',120000.00,95000.00,4.5,'R101','2022-12-01',2,8000,12,'VisualArts','PerformingArts',20000.00,1,0,8.5,'Approved after review','NEA','GRANT2022-045','2023-01-15');
INSERT INTO district_grant_application_metrics VALUES (3,'DST11','Digital Equity','2023','2023-03-20','Rejected',300000.00,0,0,'R102','2023-04-01',4,20000,36,'Technology','Equity',0.00,1,1,0,'Insufficient supporting data','EDUCAUSE','GRANT2023-078','2023-05-10');

-- Community safety workshops
CREATE TABLE community_safety_workshops
(
    WorkshopID INTEGER PRIMARY KEY,
    CommunityName TEXT,
    DistrictCode TEXT,
    WorkshopDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    Topic TEXT,
    PresenterName TEXT,
    PresenterOrganization TEXT,
    Venue TEXT,
    Capacity INTEGER,
    RegisteredAttendees INTEGER,
    WaitlistCount INTEGER,
    AgeGroup TEXT,
    Language TEXT,
    MaterialsProvided TEXT,
    CostPerParticipant REAL,
    SponsoringAgency TEXT,
    EvaluationScore REAL,
    FollowUpActions TEXT,
    Notes TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Recorded BOOLEAN
);

INSERT INTO community_safety_workshops VALUES (101,'NorthTown','DST12','2023-07-10','18:00','20:00','Fire Safety','John Doe','FireDept','Community Center',50,45,5,'All','English','Handouts',0,'CityCouncil',9.2,'Distribute safety kits','Well attended', '5551234567','jdoe@firedept.org',1);
INSERT INTO community_safety_workshops VALUES (102,'EastVille','DST13','2023-08-05','09:00','11:30','Cybersecurity Basics','Alice Smith','TechGuard','Library Hall',30,30,0,'Adults','Spanish','Brochures',5,'TechGrant',8.5,'Schedule follow up class','Full capacity', '5559876543','asmith@techguard.com',0);
INSERT INTO community_safety_workshops VALUES (103,'SouthPark','DST14','2023-09-12','14:00','16:00','Emergency Preparedness','Mark Lee','RedCross','School Gym',40,35,2,'Seniors','English','Checklists',0,'RedCross',7.9,'Provide emergency kits','Positive feedback', '5555551212','mlee@redcross.org',1);

-- Student transportation incidents
CREATE TABLE student_transportation_incidents
(
    IncidentID INTEGER PRIMARY KEY,
    StudentID TEXT,
    DateOfIncident DATE,
    TimeOfIncident TEXT,
    BusID TEXT,
    RouteNumber TEXT,
    DriverID TEXT,
    IncidentType TEXT,
    SeverityLevel INTEGER,
    Description TEXT,
    ActionTaken TEXT,
    ReportedBy TEXT,
    ReportedDate DATE,
    FollowUpDate DATE,
    ResolvedFlag INTEGER,
    ResolutionDetails TEXT,
    WeatherCondition TEXT,
    LocationDescription TEXT,
    WitnessCount INTEGER,
    ParentNotified INTEGER,
    NotificationMethod TEXT,
    AdditionalNotes TEXT,
    SchoolCode TEXT,
    DistrictCode TEXT
);

INSERT INTO student_transportation_incidents VALUES (9001,'S2001','2023-03-15','07:45','BUS-12','R5','D123','MinorCollision',2,'Rear-ended by another vehicle','Filed police report','Driver','2023-03-15','2023-03-20',1,'Student uninjured, bus repaired','Rain','Near Main St and 2nd Ave',1,1,'Phone','No injuries','SCH400','DST15');
INSERT INTO student_transportation_incidents VALUES (9002,'S2002','2023-04-22','15:30','BUS-07','R2','D124','MechanicalFailure',3,'Engine stall on route','Bus taken to depot','Conductor','2023-04-22','2023-04-25',1,'Bus repaired, alternate bus provided','Clear','Midway between Oak and Pine',0,1,'Email','Delay of 20 minutes','SCH401','DST15');
INSERT INTO student_transportation_incidents VALUES (9003,'S2003','2023-05-10','08:10','BUS-03','R9','D125','StudentBehavior',1,'Student refused seatbelt','Warning issued','Driver','2023-05-10','2023-05-12',1,'Student complied after warning','Snow','Stop at 5th Street',0,1,'Phone','First incident for student','SCH402','DST16');

-- School renewable energy sources
CREATE TABLE school_renewable_energy_sources
(
    EnergySourceID INTEGER PRIMARY KEY,
    SchoolCode TEXT,
    DistrictCode TEXT,
    EnergyType TEXT,
    InstallationDate DATE,
    CapacityKW REAL,
    Manufacturer TEXT,
    ModelNumber TEXT,
    EstimatedAnnualGenerationMWh REAL,
    FundingSource TEXT,
    GrantAmount REAL,
    ContractStartDate DATE,
    ContractEndDate DATE,
    MaintenanceProvider TEXT,
    MaintenanceFrequency TEXT,
    LastMaintenanceDate DATE,
    NextMaintenanceDue DATE,
    CO2ReductionTonnes REAL,
    OperationalStatus TEXT,
    Owner TEXT,
    WarrantyYears INTEGER,
    Notes TEXT,
    Latitude REAL,
    Longitude REAL
);

INSERT INTO school_renewables_energy_sources VALUES (1,'SCH500','DST17','Solar','2021-06-15',150.0,'SunPower','SP-300','200.5','StateGrant',50000.00,'2021-06-01','2031-05-31','EcoMaintain','Annual','2023-06-10','2024-06-10',180.0,'Active','SchoolDistrict','10','South roof installation',34.0522,-118.2437);
INSERT INTO school_renewables_energy_sources VALUES (2,'SCH501','DST18','Wind','2020-09-20',250.0,'WindTech','WT-450','300.0','UtilityPartner',75000.00,'2020-09-01','2030-08-31','WindCare','SemiAnnual','2023-03-05','2023-09-05',250.0,'Active','SchoolDistrict','12','North field turbines',36.1699,-115.1398);
INSERT INTO school_renewables_energy_sources VALUES (3,'SCH502','DST19','Geothermal','2019-04-10',120.0,'GeoHeat','GH-200','150.0','FederalGrant',60000.00,'2019-04-01','2029-03-31','GeoService','Annual','2023-01-20','2024-01-20',130.0,'Active','SchoolDistrict','15','Basement heat exchange',40.7128,-74.0060);

-- Faculty publications
CREATE TABLE faculty_publications
(
    PublicationID INTEGER PRIMARY KEY,
    FacultyID TEXT,
    SchoolCode TEXT,
    DistrictCode TEXT,
    Title TEXT,
    JournalName TEXT,
    PublicationDate DATE,
    Volume INTEGER,
    Issue INTEGER,
    Pages TEXT,
    DOI TEXT,
    CoAuthors TEXT,
    ResearchArea TEXT,
    FundingAgency TEXT,
    GrantNumber TEXT,
    Abstract TEXT,
    Keywords TEXT,
    CitationCount INTEGER,
    PeerReviewed INTEGER,
    OpenAccess INTEGER,
    PDFPath TEXT,
    ConferencePresentation INTEGER,
    PresentationDate DATE,
    PresentationVenue TEXT,
    Notes TEXT
);

INSERT INTO faculty_publications VALUES (2001,'F001','SCH600','DST20','Adaptive Learning Algorithms','Journal of EdTech','2022-11-01',12,3,'45-58','10.1234/edtech.2022.001','F002;F003','Artificial Intelligence','NSF','NSF-2020-EDU','Study of AI in adaptive learning','AI;Learning;Education',25,1,0,'/pubs/2001.pdf',0,NULL,NULL,'Well cited');
INSERT INTO faculty_publications VALUES (2002,'F002','SCH601','DST20','STEM Engagement Strategies','Science Educator','2021-06-15',8,1,'12-20','10.5678/scied.2021.045','F001','STEM Education','DOE','DOE-2020-STEM','Analysis of hands‑on STEM activities','STEM;Engagement',40,1,1,'/pubs/2002.pdf',1,'2021-09-10','National Science Conference','Awarded best paper');
INSERT INTO faculty_publications VALUES (2003,'F003','SCH602','DST21','Equity in Remote Learning','Educational Review','2023-02-20',15,2,'101-115','10.9012/edrev.2023.010','F001;F002','Equity','Institute of Education','IE-2022-EDU','Investigation of equity challenges','Equity;RemoteLearning',10,1,0,'/pubs/2003.pdf',0,NULL,NULL,'Under review');

-- Parent education sessions
CREATE TABLE parent_education_sessions
(
    SessionID INTEGER PRIMARY KEY,
    SchoolCode TEXT,
    DistrictCode TEXT,
    SessionDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    Topic TEXT,
    PresenterName TEXT,
    PresenterOrganization TEXT,
    Location TEXT,
    Capacity INTEGER,
    RegisteredParents INTEGER,
    Waitlist INTEGER,
    Language TEXT,
    MaterialsProvided TEXT,
    CostPerFamily REAL,
    SponsoringAgency TEXT,
    EvaluationScore REAL,
    FollowUpResources TEXT,
    AttendanceRate REAL,
    Notes TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Recorded BOOLEAN
);

INSERT INTO parent_education_sessions VALUES (301,'SCH700','DST22','2023-03-05','18:30','20:30','Reading at Home','Laura Green','ParentEduOrg','Auditorium',40,38,2,'English','Handouts',0,'SchoolFund','9.0','Send weekly reading tips',0.95,'Positive feedback','5551112222','lgreen@parentedu.org',1);
INSERT INTO parent_education_sessions VALUES (302,'SCH701','DST23','2023-04-12','17:00','19:00','Managing Screen Time','Mike Brown','FamilyWellness','Room 101',30,30,0,'Spanish','Brochures',0,'CommunityGrant','8.5','Provide screen time tracking sheets',1.00,'Full attendance','5553334444','mbrown@familywell.org',0);
INSERT INTO parent_education_sessions VALUES (303,'SCH702','DST24','2023-05-20','19:00','21:00','College Prep Basics','Sarah Lee','CollegeReady','Gymnasium',25,20,5,'English','Guidebook',10,'SchoolFund','7.8','Email FAQ after session',0.80,'Need more promotion','5555556666','slee@collegeready.org',1);

-- Technology incident response log
CREATE TABLE technology_incident_response_log
(
    IncidentLogID INTEGER PRIMARY KEY,
    SchoolCode TEXT,
    DistrictCode TEXT,
    IncidentDate DATE,
    ReportedTime TEXT,
    IncidentType TEXT,
    AffectedSystem TEXT,
    SeverityLevel INTEGER,
    Description TEXT,
    DetectedBy TEXT,
    ResponseTeam TEXT,
    ContainmentTimeMinutes INTEGER,
    EradicationTimeMinutes INTEGER,
    RecoveryTimeMinutes INTEGER,
    RootCause TEXT,
    MitigationActions TEXT,
    Status TEXT,
    ResolutionDate DATE,
    FollowUpActions TEXT,
    DocumentationLink TEXT,
    NotifiedStakeholders TEXT,
    ImpactAssessment TEXT,
    LessonsLearned TEXT,
    ReviewerID TEXT,
    ReviewDate DATE
);

INSERT INTO technology_incident_response_log VALUES (4001,'SCH800','DST25','2023-06-10','13:45','Malware','Student Laptops',3,'Ransomware detected on 12 devices','Antivirus','ITSecurity',45,120,240,'Phishing email','Reset passwords, patch systems','Resolved','2023-06-15','Quarterly security brief','/docs/incident4001.pdf','Admins;Teachers','Data loss minimal','Improve email filtering','R200','2023-06-20');
INSERT INTO technology_incident_response_log VALUES (4002,'SCH801','DST26','2023-07-22','09:30','Network Outage','WiFi Access Points',2,'APs non‑functional due to firmware bug','NetworkMonitor','ITSupport',30,0,180,'Firmware bug','Reboot APs, update firmware','Resolved','2023-07-23','Update maintenance schedule','/docs/incident4002.pdf','Students;Staff','Connectivity lost 2 hrs','Implement automated firmware checks','R201','2023-07-24');
INSERT INTO technology_incident_response_log VALUES (4003,'SCH802','DST27','2023-08-15','16:05','Data Breach','Student Information System',4,'Unauthorized access to student records','IDS','CyberTeam',60,480,0,'Weak admin password','Force password reset, enable MFA','Open','2023-09-01','Audit all access logs','/docs/incident4003.pdf','Parents;Regulators','Compromised PII','Enforce strong password policies','R202','2023-09-05');