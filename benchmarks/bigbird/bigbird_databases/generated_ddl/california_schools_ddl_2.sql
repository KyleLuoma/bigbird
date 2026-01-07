-- School maintenance request log
CREATE TABLE school_maintenance_requests
(
    RequestID               INTEGER PRIMARY KEY,
    CDSCode                 TEXT,
    RequestDate             DATE,
    Category                TEXT,
    Priority                TEXT,
    Description             TEXT,
    Status                  TEXT,
    AssignedTo              TEXT,
    CompletionDate          DATE,
    CostEstimate            REAL,
    ActualCost              REAL,
    Vendor                  TEXT,
    WorkOrderNumber         TEXT,
    IsExternal              INTEGER,
    FollowUpRequired        INTEGER,
    FollowUpDate            DATE,
    Notes                   TEXT,
    SubmittedBy             TEXT,
    ApprovalStatus          TEXT,
    ResolutionNotes         TEXT
);

INSERT INTO school_maintenance_requests VALUES (1,'001001','2023-09-01','HVAC','High','Air unit not cooling','Open','JohnDoe','2023-09-10',1500.00,NULL,'CoolTech','WO12345',0,0,NULL,'Check after service','JaneSmith','Pending',NULL);
INSERT INTO school_maintenance_requests VALUES (2,'001002','2023-08-15','Plumbing','Medium','Leaky faucet in restroom','InProgress','MikeLee','2023-08-20',200.00,180.00,'PipeCo','WO12346',0,1,'2023-09-05','Replace washer','MikeLee','Approved','Replaced with new faucet');
INSERT INTO school_maintenance_requests VALUES (3,'001003','2023-07-20','Electrical','Low','Flickering lights in hallway','Closed','SaraKim','2023-07-22',300.00,300.00,'ElectroFix','WO12347',0,0,NULL,'No further action','SaraKim','Approved','Replaced faulty ballast');

-- District policy documents repository
CREATE TABLE district_policy_documents
(
    PolicyID                INTEGER PRIMARY KEY,
    DistrictCode            TEXT,
    PolicyNumber            TEXT,
    Title                   TEXT,
    EffectiveDate           DATE,
    ReviewDate              DATE,
    Category                TEXT,
    Status                  TEXT,
    OwnerDepartment         TEXT,
    DocumentURL             TEXT,
    Version                 TEXT,
    Summary                 TEXT,
    IsMandatory             INTEGER,
    AppliesToCharter        INTEGER,
    AppliesToVirtual        INTEGER,
    CreatedBy               TEXT,
    CreatedDate             DATE,
    UpdatedBy               TEXT,
    UpdatedDate             DATE,
    ConfidentialLevel       TEXT
);

INSERT INTO district_policy_documents VALUES (101,'D01','POL-001','Student Attendance','2022-01-01','2023-12-31','Attendance','Active','Student Services','http://example.com/pol001','v1','Defines attendance expectations',1,0,0,'AliceBrown','2022-01-01','BobWhite','2022-06-01','Public');
INSERT INTO district_policy_documents VALUES (102,'D01','POL-002','Emergency Evacuation','2021-07-01','2024-06-30','Safety','Active','Facilities','http://example.com/pol002','v2','Procedures for building evacuation',1,1,1,'CarolGreen','2021-07-01','DaveBlack','2023-01-15','Restricted');
INSERT INTO district_policy_documents VALUES (103,'D02','POL-003','Technology Acceptable Use','2020-09-01','2023-08-31','Technology','Archived','IT','http://example.com/pol003','v3','Guidelines for technology usage',1,0,1,'EveAzure','2020-09-01','FrankSilver','2022-11-20','Confidential');

-- Classroom inventory tracking
CREATE TABLE classroom_inventory
(
    ItemID                  INTEGER PRIMARY KEY,
    CDSCode                 TEXT,
    RoomNumber              TEXT,
    ItemCategory            TEXT,
    ItemDescription         TEXT,
    Manufacturer            TEXT,
    ModelNumber             TEXT,
    SerialNumber            TEXT,
    PurchaseDate            DATE,
    PurchasePrice           REAL,
    WarrantyExpDate         DATE,
    CurrentCondition        TEXT,
    Quantity                INTEGER,
    AssetTag                TEXT,
    AssignedToTeacher       TEXT,
    LastMaintenanceDate     DATE,
    MaintenanceFrequency    TEXT,
    DeptResponsibility      TEXT,
    DisposalStatus          TEXT,
    DisposalDate            DATE
);

INSERT INTO classroom_inventory VALUES (5001,'001001','101','Furniture','Student Desk','AcmeFurnitures','D-100','SN12345','2019-08-15',120.00,'2024-08-15','Good',30,'AT5001','LauraHill','2023-01-10','Annual','Facilities','InUse',NULL);
INSERT INTO classroom_inventory VALUES (5002,'001001','102','Technology','Desktop Computer','TechCorp','X200','SN54321','2020-02-20',650.00,'2025-02-20','Fair',20,'AT5002','MarkWest','2022-11-05','BiAnnual','IT','InUse',NULL);
INSERT INTO classroom_inventory VALUES (5003,'001002','201','Laboratory','Microscope','LabGear','M-500','SN99887','2018-05-30',850.00,'2023-05-30','Excellent',10,'AT5003','NinaCole','2023-03-12','Annual','ScienceDept','InUse',NULL);

-- Student graduation outcomes
CREATE TABLE student_graduation_outcomes
(
    OutcomeID               INTEGER PRIMARY KEY,
    CDSCode                 TEXT,
    StudentID               TEXT,
    GraduationYear          INTEGER,
    DiplomaType             TEXT,
    GPA                     REAL,
    CollegeEnrolled         TEXT,
    CollegeType             TEXT,
    Major                   TEXT,
    CreditsEarned           INTEGER,
    EmploymentStatus        TEXT,
    EmployerName            TEXT,
    JobTitle                TEXT,
    Salary                  REAL,
    MilitaryService         INTEGER,
    Apprenticeship          INTEGER,
    Certification           TEXT,
    PostGradProgram         TEXT,
    ProgramStartDate        DATE,
    ProgramEndDate          DATE
);

INSERT INTO student_graduation_outcomes VALUES (9001,'001001','S12345',2022,'Standard',3.6,'StateU','Public','Biology',120,'Employed','HealthCorp','Lab Technician',42000.00,0,0,'None','None',NULL,NULL);
INSERT INTO student_graduation_outcomes VALUES (9002,'001001','S12346',2023,'Advanced',3.9,'TechInstitute','Private','ComputerScience',130,'Unemployed',NULL,NULL,NULL,0,0,'AWS Certified','Data Analytics Bootcamp','2023-09-01','2024-06-30');
INSERT INTO student_graduation_outcomes VALUES (9003,'001002','S22345',2021,'Standard',3.2,'CommunityCollege','Public','Education',115,'Employed','SchoolDistrict','Teacher Assistant',38000.00,0,1,'Teaching Credential','None',NULL,NULL);

-- Teacher contract records
CREATE TABLE teacher_contracts
(
    ContractID              INTEGER PRIMARY KEY,
    TeacherID               TEXT,
    CDSCode                 TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    PositionTitle           TEXT,
    Salary                  REAL,
    FTE                     REAL,
    ContractType            TEXT,
    RenewalOption           TEXT,
    ProbationPeriodMonths  INTEGER,
    EvaluationScore         REAL,
    BenefitPlan             TEXT,
    HealthCoverage          TEXT,
    RetirementPlan          TEXT,
    UnionMember             INTEGER,
    ContractStatus          TEXT,
    SignedBy                TEXT,
    SignedDate              DATE,
    Notes                   TEXT
);

INSERT INTO teacher_contracts VALUES (2001,'T001','001001','2023-08-15','2024-06-30','Math Teacher',55000.00,1.0,'FullTime','OneYear',3,4.5,'Standard','MedicalPlus','401K',1,'Active','PrincipalA','2023-07-20','First year contract');
INSERT INTO teacher_contracts VALUES (2002,'T002','001002','2022-09-01','2025-08-31','Science Teacher',58000.00,0.8,'PartTime','TwoYear',0,4.2,'Standard','MedicalPlus','403B',0,'Active','PrincipalB','2022-08-15','Reduced load');
INSERT INTO teacher_contracts VALUES (2003,'T003','001003','2021-07-01','2024-06-30','English Teacher',60000.00,1.0,'FullTime','OneYear',3,4.8,'Premium','MedicalPlus','401K',1,'Renewed','PrincipalC','2021-06-20','Renewed for third year');

-- Extracurricular event history
CREATE TABLE extracurricular_event_history
(
    EventID                 INTEGER PRIMARY KEY,
    CDSCode                 TEXT,
    ActivityName            TEXT,
    EventDate               DATE,
    Location                TEXT,
    ParticipantsCount      INTEGER,
    Outcome                 TEXT,
    Sponsor                 TEXT,
    BudgetAllocated         REAL,
    BudgetUsed              REAL,
    StaffAdvisor            TEXT,
    AwardsReceived          TEXT,
    MediaCoverage           TEXT,
    FollowUpActions         TEXT,
    RegistrationDeadline    DATE,
    EligibilityCriteria    TEXT,
    SeatingCapacity         INTEGER,
    TicketPrice             REAL,
    VolunteerCount          INTEGER,
    FeedbackScore           REAL
);

INSERT INTO extracurricular_event_history VALUES (3001,'001001','Spring Concert','2023-04-20','Auditorium',250,'Successful','MusicDept',5000.00,4700.00,'MsLee','Best Performance','LocalNews','Send thank you notes','2023-04-01','All students','500',0,20,4.5);
INSERT INTO extracurricular_event_history VALUES (3002,'001002','Science Fair','2023-05-15','Gymnasium',180,'Awarded','ScienceDept',3000.00,3100.00,'MrBrown','Top Innovation','SchoolBlog','Publish winners list','2023-05-01','Grades 9-12','300',5,15,4.2);
INSERT INTO extracurricular_event_history VALUES (3003,'001003','Drama Play','2023-03-10','Theater',200,'Positive Reviews','ArtsDept',4000.00,3900.00,'MsGreen','Best Set Design','CityPaper','Invite community for next show','2023-02-20','Drama Club members','350',10,25,4.7);

-- School Wi‑Fi access point inventory
CREATE TABLE school_wifi_access_points
(
    AP_ID                   INTEGER PRIMARY KEY,
    CDSCode                 TEXT,
    BuildingName            TEXT,
    FloorNumber             INTEGER,
    APModel                 TEXT,
    SerialNumber            TEXT,
    InstallationDate        DATE,
    FirmwareVersion         TEXT,
    MACAddress              TEXT,
    IPAddress               TEXT,
    SSID                    TEXT,
    Channel                 INTEGER,
    PowerLevel              REAL,
    IsGuestNetwork          INTEGER,
    EncryptionType          TEXT,
    MaxClients              INTEGER,
    CurrentClients          INTEGER,
    MaintenanceDate         DATE,
    Status                  TEXT,
    Notes                   TEXT
);

INSERT INTO school_wifi_access_points VALUES (4001,'001001','Main Building',1,'Ubiquiti UniFi','AP12345','2022-01-15','1.2.3','AA:BB:CC:DD:EE:01','192.168.1.10','SchoolNet',6,20.5,0,'WPA2',100,45,'2023-08-01','Active','No issues');
INSERT INTO school_wifi_access_points VALUES (4002,'001001','Main Building',2,'Cisco Aironet','AP54321','2021-09-10','2.0.1','AA:BB:CC:DD:EE:02','192.168.1.11','SchoolGuest',11,18.0,1,'WPA2-Enterprise',80,30,'2023-07-15','Active','Guest network enabled');
INSERT INTO school_wifi_access_points VALUES (4003,'001002','Science Wing',1,'Aruba Instant','AP98765','2022-05-20','3.1.0','AA:BB:CC:DD:EE:03','192.168.2.10','ScienceNet',1,22.0,0,'WPA3',120,60,'2023-09-10','Active','Upgraded firmware');

-- District litigation case registry
CREATE TABLE district_litigation_cases
(
    CaseID                  INTEGER PRIMARY KEY,
    DistrictCode            TEXT,
    CaseNumber              TEXT,
    FilingDate              DATE,
    CaseType                TEXT,
    Plaintiff               TEXT,
    Defendant               TEXT,
    Status                  TEXT,
    EstimatedExposure       REAL,
    SettlementAmount        REAL,
    Court                   TEXT,
    Judge                   TEXT,
    Attorney                TEXT,
    HearingDate             DATE,
    ResolutionDate          DATE,
    Outcome                 TEXT,
    AppealFiled             INTEGER,
    AppealOutcome           TEXT,
    Notes                   TEXT,
    LastUpdated             DATE
);

INSERT INTO district_litigation_cases VALUES (6001,'D01','LIT-2022-001','2022-03-10','ParentGroup','District','Pending',250000.00,NULL,'County Court','JudgeSmith','LawFirmA','2022-06-15',NULL,'Pending',0,NULL,'Investigation ongoing','2022-06-20');
INSERT INTO district_litigation_cases VALUES (6002,'D01','LIT-2021-045','2021-11-05','EmployeeUnion','District','Resolved',500000.00,480000.00,'State Court','JudgeLee','LawFirmB','2022-02-20','2022-03-01','Settled',1,'Denied','Settlement reached','2022-03-05');
INSERT INTO district_litigation_cases VALUES (6003,'D02','LIT-2023-012','2023-01-22','EnvironmentalGroup','District','Closed',120000.00,120000.00,'Federal Court','JudgeKim','LawFirmC','2023-04-10','2023-04-30','Dismissed',0,NULL,'Case dismissed after compliance','2023-05-01');

-- Environmental sustainability projects catalog
CREATE TABLE environmental_sustainability_projects
(
    ProjectID               INTEGER PRIMARY KEY,
    DistrictCode            TEXT,
    ProjectName             TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    FundingSource           TEXT,
    Budget                  REAL,
    EnergySavings           REAL,
    WaterSavings            REAL,
    CO2Reduction            REAL,
    ProjectLead             TEXT,
    Status                  TEXT,
    Phase                   TEXT,
    PartnerOrganization     TEXT,
    GrantNumber             TEXT,
    Description             TEXT,
    Outcomes                TEXT,
    MetricsReportedDate     DATE,
    ComplianceStatus        TEXT,
    Notes                   TEXT
);

INSERT INTO environmental_sustainability_projects VALUES (7001,'D01','Solar Panel Installation','2022-06-01','2023-05-31','State Grant',200000.00,50000.00,0.0,45.0,'EmilyGreen','Completed','Implementation','EnergyCorp','GR-2022-01','Install solar panels on three schools','Reduced electricity costs','2023-06-15','Compliant','Project finished on schedule');
INSERT INTO environmental_sustainability_projects VALUES (7002,'D01','Rainwater Harvesting','2021-09-15','2022-12-31','Federal Grant',150000.00,0.0,30000.0,0.0,'MichaelBlue','Completed','Construction','WaterSolutions','GR-2021-07','Collect rainwater for irrigation','Saved potable water','2023-01-10','Compliant','Exceeded water savings target');
INSERT INTO environmental_sustainability_projects VALUES (7003,'D02','LED Lighting Upgrade','2023-02-01','2023-11-30','District Budget',120000.00,75000.0,0.0,30.0,'SarahWhite','InProgress','Planning','LightingCo','GR-2023-03','Replace fluorescent lights with LED','Projected energy reduction','2023-12-01','Pending','Installation phase ongoing');

-- Community fundraising campaign tracker
CREATE TABLE community_fundraising_campaigns
(
    CampaignID              INTEGER PRIMARY KEY,
    DistrictCode            TEXT,
    CampaignName            TEXT,
    LaunchDate              DATE,
    EndDate                 DATE,
    GoalAmount              REAL,
    AmountRaised            REAL,
    PrimaryDonor            TEXT,
    CampaignType            TEXT,
    TargetAudience          TEXT,
    MarketingChannel        TEXT,
    VolunteerCount          INTEGER,
    EventsCount             INTEGER,
    OnlinePlatform          TEXT,
    MatchingGiftRatio       REAL,
    TaxDeductible           INTEGER,
    Status                  TEXT,
    FinalReportDate         DATE,
    Remarks                 TEXT,
    ContactPerson           TEXT
);

INSERT INTO community_fundraising_campaigns VALUES (8001,'D01','Back to School Drive','2023-07-01','2023-09-30',50000.00,37500.00,'LocalBiz','Cash','Parents','Email','45','3','GoFundMe',1.0,1,'Active','2023-10-05','On track to meet goal','LauraMiller');
INSERT INTO community_fundraising_campaigns VALUES (8002,'D01','Library Bookathon','2022-10-01','2022-12-31',20000.00,21000.00,'CommunityCenter','InKind','Students','SocialMedia','30','2','DonorsChoose',0.0,1,'Closed','2023-01-15','Exceeded goal','MarkNelson');
INSERT INTO community_fundraising_campaigns VALUES (8003,'D02','Sports Facility Fund','2023-03-15','2023-08-15',80000.00,60000.00,'SportsClub','Cash','Alumni','DirectMail','60','4','Kickstarter',0.5,1,'Active','2023-08-20','Quarterly updates sent','AngelaReed');