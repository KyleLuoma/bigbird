-- District HR Employee Records
CREATE TABLE district_hr_employee_records
(
    EmployeeID            TEXT    NOT NULL PRIMARY KEY,
    DistrictCode          TEXT    NULL,
    FirstName             TEXT    NULL,
    LastName              TEXT    NULL,
    HireDate              DATE    NULL,
    PositionTitle         TEXT    NULL,
    Department            TEXT    NULL,
    Salary                REAL    NULL,
    EmploymentStatus      TEXT    NULL,
    Email                 TEXT    NULL,
    Phone                 TEXT    NULL,
    Address               TEXT    NULL,
    City                  TEXT    NULL,
    State                 TEXT    NULL,
    Zip                   TEXT    NULL,
    BirthDate             DATE    NULL,
    CertificationLevel   TEXT    NULL,
    YearsOfService        INTEGER NULL,
    SupervisorID          TEXT    NULL,
    FullTimeFlag          INTEGER NULL,
    BenefitPlan           TEXT    NULL,
    LastPromotionDate    DATE    NULL
);
INSERT INTO district_hr_employee_records VALUES ('E001','D001','Alice','Smith','2015-06-01','Human Resources Manager','HR',75000,'Active','alice.smith@district.edu','555-1234','123 Main St','Springfield','IL','62704','1980-04-12','Level II',8,'E010',1,'Standard','2020-08-15');
INSERT INTO district_hr_employee_records VALUES ('E002','D001','Bob','Johnson','2018-09-15','Benefits Coordinator','HR',54000,'Active','bob.johnson@district.edu','555-5678','456 Oak Ave','Springfield','IL','62704','1985-11-23','Level I',4,'E001',1,'Standard',NULL);
INSERT INTO district_hr_employee_records VALUES ('E003','D002','Carol','Davis','2020-01-20','Recruiter','HR',48000,'Active','carol.davis@district.edu','555-9012','789 Pine Rd','Lincoln','NE','68508','1990-02-05','Level I',2,'E001',0,'Standard','2022-03-01');

-- State Education Policy Changes
CREATE TABLE state_education_policy_changes
(
    PolicyID                TEXT    NOT NULL PRIMARY KEY,
    StateCode               TEXT    NULL,
    PolicyName              TEXT    NULL,
    EffectiveDate           DATE    NULL,
    Category                TEXT    NULL,
    Description             TEXT    NULL,
    FundingImpact           REAL    NULL,
    ImplementationAgency    TEXT    NULL,
    TargetPopulation        TEXT    NULL,
    ComplianceDeadline      DATE    NULL,
    RevisionNumber          INTEGER NULL,
    Status                  TEXT    NULL,
    CreatedBy               TEXT    NULL,
    CreatedDate             DATE    NULL,
    UpdatedBy               TEXT    NULL,
    UpdatedDate             DATE    NULL,
    IsMandatory             INTEGER NULL,
    RequiresTraining        INTEGER NULL,
    TrainingHoursRequired   INTEGER NULL,
    EvaluationMetric        TEXT    NULL,
    ReportingFrequency      TEXT    NULL,
    LastReviewedDate        DATE    NULL
);
INSERT INTO state_education_policy_changes VALUES ('P1001','IL','Early Literacy Initiative','2022-07-01','Literacy','Provides funding for K reading programs',1500000,'Dept of Education','Kindergarten Students','2023-06-30',1,'Active','jdoe','2022-01-15','asmith','2022-06-20',1,1,20,'Reading Proficiency','Annual','2023-01-10');
INSERT INTO state_education_policy_changes VALUES ('P1002','NE','STEM Teacher Incentive','2021-09-01','STEM','Bonus payments for certified STEM teachers',500000,'Dept of Education','High School Teachers','2022-12-31',2,'Active','mjones','2021-03-10','bjohnson','2021-08-20',1,0,NULL,'Teacher Retention','Quarterly','2022-02-05');
INSERT INTO state_education_policy_changes VALUES ('P1003','IL','School Safety Upgrade','2023-01-15','Safety','Grants for security equipment',2000000,'Dept of Safety','All Schools','2024-12-31',1,'Proposed','klee','2022-11-30','klee','2022-11-30',0,1,10,'Incident Reduction','Semiannual','2023-02-28');

-- Regional Transportation Infrastructure
CREATE TABLE regional_transportation_infrastructure
(
    InfraID                 TEXT    NOT NULL PRIMARY KEY,
    RegionCode              TEXT    NULL,
    ProjectName             TEXT    NULL,
    StartDate               DATE    NULL,
    EndDate                 DATE    NULL,
    ProjectType             TEXT    NULL,
    TotalCost               REAL    NULL,
    FundingSource           TEXT    NULL,
    ContractorName          TEXT    NULL,
    LengthMiles             REAL    NULL,
    NumberOfBridges         INTEGER NULL,
    NumberOfTunnels         INTEGER NULL,
    TrafficImpactScore      REAL    NULL,
    EnvironmentalReviewDate DATE    NULL,
    Status                  TEXT    NULL,
    ProjectManager          TEXT    NULL,
    ContactPhone            TEXT    NULL,
    ContactEmail            TEXT    NULL,
    EstimatedJobsCreated    INTEGER NULL,
    PermitsRequired         TEXT    NULL,
    PermitCount             INTEGER NULL,
    LastUpdatedDate         DATE    NULL,
    Notes                   TEXT    NULL
);
INSERT INTO regional_transportation_infrastructure VALUES ('I5001','R01','North Beltway Expansion','2021-04-01','2025-12-31','Highway',35000000,'Federal Grant','BuildCo','45.2',12,0,8.5,'2021-02-15','In Progress','Laura Miller','555-2110','lmiller@buildco.com',1200,'Environmental, Right-of-Way',2,'2022-06-01','Phase 1 completed');
INSERT INTO regional_transportation_infrastructure VALUES ('I5002','R02','Riverbridge Replacement','2020-09-01','2024-03-30','Bridge',12000000,'State Bond','BridgeWorks','2.7',1,0,6.2,'2020-07-20','In Progress','Mark Davis','555-3221','mdavis@bridgeworks.com',300,'Structural, Environmental',2,'2021-11-15','Demolition started Q4 2021');
INSERT INTO regional_transportation_infrastructure VALUES ('I5003','R03','Metro Light Rail Phase 2','2022-01-15','2028-08-31','Rail',50000000,'Public-Private', 'TransitBuild', '18.4',0,0,9.1,'2021-12-01','Planning','Sofia Grant','555-4332','sgrant@transitbuild.com',800,'Zoning, Safety',3,'2022-05-20','Community outreach ongoing');

-- School Digital Asset Catalog
CREATE TABLE school_digital_asset_catalog
(
    AssetID                 TEXT    NOT NULL PRIMARY KEY,
    SchoolCDSCode           TEXT    NULL,
    AssetName               TEXT    NULL,
    AssetType               TEXT    NULL,
    Category                TEXT    NULL,
    LicenseKey              TEXT    NULL,
    PurchaseDate            DATE    NULL,
    ExpirationDate          DATE    NULL,
    Cost                    REAL    NULL,
    Vendor                  TEXT    NULL,
    SerialNumber            TEXT    NULL,
    AssignedToUserID        TEXT    NULL,
    AssignedDepartment      TEXT    NULL,
    Status                  TEXT    NULL,
    LastMaintenanceDate     DATE    NULL,
    MaintenanceFrequency    TEXT    NULL,
    WarrantyExpirationDate  DATE    NULL,
    NumberOfSeats           INTEGER NULL,
    IsShared                INTEGER NULL,
    EncryptionEnabled       INTEGER NULL,
    BackupSchedule          TEXT    NULL,
    LastUpdatedTimestamp    DATE    NULL,
    Notes                   TEXT    NULL
);
INSERT INTO school_digital_asset_catalog VALUES ('A10001','001001','Adobe Creative Cloud','Software','Design','ABC123XYZ','2020-08-01','2023-08-01',1200,'Adobe','SN-ADOBE-001','U123','Art Department','Active','2022-07-15','Annual','2022-08-01',25,0,1,'Weekly','2022-09-01','Renewal pending');
INSERT INTO school_digital_asset_catalog VALUES ('A10002','001002','Dell Latitude 5400','Hardware','Computing','',2021-01-15','2026-01-15',950,'Dell','DL-5400-002','U456','Science Dept','Active','2022-08-20','Quarterly','2025-01-15',1,0,1,'Daily','2022-09-01','Battery replaced 2022');
INSERT INTO school_digital_asset_catalog VALUES ('A10003','001003','Google Workspace','Software','Productivity','GWS-987654','2019-06-01','2024-06-01',1800,'Google','',NULL,'Admin','Active','2022-06-30','Annual','2024-06-01',100,1,1,'Daily','2022-09-01','Domain renewal due 2024');

-- Community Mental Health Service Providers
CREATE TABLE community_mental_health_service_providers
(
    ProviderID              TEXT    NOT NULL PRIMARY KEY,
    ProviderName            TEXT    NULL,
    ServiceType             TEXT    NULL,
    AccreditationLevel      TEXT    NULL,
    Address                 TEXT    NULL,
    City                    TEXT    NULL,
    State                   TEXT    NULL,
    ZipCode                 TEXT    NULL,
    PhoneNumber             TEXT    NULL,
    Email                   TEXT    NULL,
    ContactPerson           TEXT    NULL,
    LicenseNumber           TEXT    NULL,
    CapacityWeeklyClients   INTEGER NULL,
    HoursOfOperation        TEXT    NULL,
    AcceptedInsurance       TEXT    NULL,
    FundingSource           TEXT    NULL,
    TelehealthAvailable     INTEGER NULL,
    LanguageServices        TEXT    NULL,
    YouthProgramFlag        INTEGER NULL,
    AdultProgramFlag        INTEGER NULL,
    SeniorProgramFlag       INTEGER NULL,
    EmergencyWalkInFlag     INTEGER NULL,
    LastInspectionDate     DATE    NULL,
    Notes                   TEXT    NULL
);
INSERT INTO community_mental_health_service_providers VALUES ('MP001','River Valley Counseling','Counseling','Level II','123 River Rd','Springfield','IL','62702','555-6789','info@rivervalley.org','Jane Miller','LIC-1122',30,'Mon-Fri 9am-5pm','MediCare,Private','State Grant',1,'Spanish,Chinese',1,1,0,0,'2022-04-15','Provides group therapy for teens');
INSERT INTO community_mental_health_service_providers VALUES ('MP002','Heartland Behavioral Health','Psychiatry','Level I','456 Oak St','Lincoln','NE','68508','555-2345','contact@heartlandbh.com','Mark Allen','LIC-3344',20,'Mon-Thu 8am-6pm','Private','Self-Pay',0,'English',0,1,1,0,'2021-11-20','Onsite medication management');
INSERT INTO community_mental_health_service_providers VALUES ('MP003','Sunrise Senior Support','Senior Services','Level III','789 Pine Ave','Des Moines','IA','50309','555-9876','seniorsunrise@outlook.com','Laura Greene','LIC-5566',15,'Tue-Sat 10am-4pm','Medicaid','County Funding',1,'English,Spanish',0,0,1,1,'2022-02-10','Mobile outreach vans');

-- Federal Grant Allocation History
CREATE TABLE federal_grant_allocation_history
(
    GrantID                 TEXT    NOT NULL PRIMARY KEY,
    GrantName               TEXT    NULL,
    FiscalYear              INTEGER NULL,
    AwardAmount             REAL    NULL,
    GrantAgency             TEXT    NULL,
    ProgramArea             TEXT    NULL,
    RecipientEntityID       TEXT    NULL,
    RecipientEntityName     TEXT    NULL,
    AllocationDate          DATE    NULL,
    ExpirationDate          DATE    NULL,
    FundingCategory         TEXT    NULL,
    CostSharingRequirement REAL    NULL,
    ReportingFrequency     TEXT    NULL,
    Status                  TEXT    NULL,
    PrimaryContactName      TEXT    NULL,
    PrimaryContactPhone     TEXT    NULL,
    PrimaryContactEmail     TEXT    NULL,
    SubAwardCount           INTEGER NULL,
    TotalSubAwardAmount     REAL    NULL,
    MatchingFundsProvided   REAL    NULL,
    AuditRequirementFlag    INTEGER NULL,
    AuditDueDate            DATE    NULL,
    LastModifiedDate        DATE    NULL,
    Notes                   TEXT    NULL
);
INSERT INTO federal_grant_allocation_history VALUES ('FG001','STEM Innovation Grant',2022,2500000,'Department of Education','STEM','D001','Midwest District','2022-05-10','2025-05-09','Competitive',0.2,'Annual','Awarded','Emily Clark','555-1122','eclark@ed.gov',3,750000,500000,1,'2023-10-01','2022-06-01','Initial award');
INSERT INTO federal_grant_allocation_history VALUES ('FG002','Rural Broadband Expansion',2021,1800000,'Department of Commerce','Infrastructure','D002','Northern Rural District','2021-09-15','2024-09-14','Formula',0.1,'Semiannual','Awarded','James Lee','555-2233','jlee@commerce.gov',0,NULL,NULL,0,NULL,'2021-10-01','Funding approved');
INSERT INTO federal_grant_allocation_history VALUES ('FG003','Early Childhood Education',2023,1200000,'Health and Human Services','Early Education','D003','Southern Early Ed District','2023-02-01','2026-01-31','Competitive',0.15,'Annual','Pending','Samantha Reed','555-3344','sreed@hhs.gov',2,300000,180000,1,'2024-07-15','2023-02-15','Review pending');

-- Campus Security Incident Reports
CREATE TABLE campus_security_incident_reports
(
    IncidentID              TEXT    NOT NULL PRIMARY KEY,
    SchoolCDSCode           TEXT    NULL,
    IncidentDate            DATE    NULL,
    IncidentTime            TEXT    NULL,
    IncidentType            TEXT    NULL,
    Description             TEXT    NULL,
    ReportedBy              TEXT    NULL,
    LocationDetail          TEXT    NULL,
    PersonsInvolvedCount    INTEGER NULL,
    InjuriesReported        INTEGER NULL,
    PropertyDamageValue     REAL    NULL,
    PoliceReportFiled      INTEGER NULL,
    FollowUpAction          TEXT    NULL,
    Status                  TEXT    NULL,
    AssignedOfficerID       TEXT    NULL,
    ResolutionDate          DATE    NULL,
    Notes                   TEXT    NULL,
    CameraFootageAvailable  INTEGER NULL,
    WitnessCount            INTEGER NULL,
    SeverityLevel           TEXT    NULL,
    NotificationSent        INTEGER NULL,
    NotificationMethod      TEXT    NULL,
    UpdatedTimestamp        DATE    NULL,
    ArchiveFlag             INTEGER NULL,
    Comments                TEXT    NULL
);
INSERT INTO campus_security_incident_reports VALUES ('INC1001','001001','2022-10-12','14:30','Unauthorized Entry','Student entered restricted area without ID','Officer Ramos','North Wing Hallway',1,0,0,1,'Student escorted out','Closed','O123','2022-10-12','No further action','1',0,'Low',1,'Email','2022-10-13',0,'');
INSERT INTO campus_security_incident_reports VALUES ('INC1002','001002','2023-02-05','09:15','Physical Altercation','Two students fought near cafeteria','Officer Patel','Cafeteria',2,1,200,1,'Disciplinary hearing scheduled','Open','O124',NULL,'Parent notified','1',2,'Medium',0,NULL,'2023-02-06',0,'');
INSERT INTO campus_security_incident_reports VALUES ('INC1003','001003','2023-05-20','18:45','Vandalism','Graffiti on gym walls','Officer Liu','Gymnasium',1,0,1500,0,'Cleaning crew assigned','Closed','O125','2023-05-21','Community service assigned','1',1,'High',1,'Phone','2023-05-22',0,'');

-- School Arts Program Funding
CREATE TABLE school_arts_program_funding
(
    FundingID               TEXT    NOT NULL PRIMARY KEY,
    SchoolCDSCode           TEXT    NULL,
    ProgramName             TEXT    NULL,
    FiscalYear              INTEGER NULL,
    FundingSource           TEXT    NULL,
    AmountAllocated         REAL    NULL,
    AmountSpent             REAL    NULL,
    GrantNumber             TEXT    NULL,
    ApplicationDate         DATE    NULL,
    ApprovalDate            DATE    NULL,
    ExpirationDate          DATE    NULL,
    PrimaryContactName      TEXT    NULL,
    PrimaryContactPhone     TEXT    NULL,
    PrimaryContactEmail     TEXT    NULL,
    FundingCategory         TEXT    NULL,
    MatchingRequirement    REAL    NULL,
    ReportingFrequency     TEXT    NULL,
    Status                  TEXT    NULL,
    LastAuditDate           DATE    NULL,
    AuditFindings           TEXT    NULL,
    Notes                   TEXT    NULL,
    CreatedTimestamp        DATE    NULL,
    UpdatedTimestamp        DATE    NULL,
    ArchiveFlag             INTEGER NULL,
    Comments                TEXT    NULL
);
INSERT INTO school_arts_program_funding VALUES ('F001','001001','Visual Arts','2022','State Arts Council',50000,32000,'SAC-2022-01','2022-01-10','2022-02-15','2024-02-14','Megan Lee','555-4455','mlee@statearts.org','Grant',0.1,'Annual','Active','2023-03-01','No issues','Purchase of supplies','2022-02-16','2022-09-10',0,'');
INSERT INTO school_arts_program_funding VALUES ('F002','001002','Music Ensemble','2023','Federal Arts Grant',75000,20000,'FAG-2023-07','2023-03-05','2023-04-20','2025-04-19','Carlos Ramirez','555-5566','cramirez@federalarts.gov','Grant',0.15,'Semiannual','Active','2023-12-01','Pending','Instrument rentals','2023-04-21','2023-11-30',0,'');
INSERT INTO school_arts_program_funding VALUES ('F003','001003','Theatre Production','2022','Private Foundation','30000',15000,'PF-2022-12','2022-05-12','2022-06-01','2024-05-31','Laura Kim','555-6677','lkim@privatefdn.org','Donation',0,NULL,'Pending','2023-08-15','Awaiting final report','Stage lighting upgrades','2022-06-02','2023-02-15',0,'');

-- Environmental Impact Assessment Reports
CREATE TABLE environmental_impact_assessment_reports
(
    ReportID                TEXT    NOT NULL PRIMARY KEY,
    ProjectID               TEXT    NULL,
    ProjectName             TEXT    NULL,
    AssessmentDate          DATE    NULL,
    LeadAssessmentAgency    TEXT    NULL,
    AssessmentType          TEXT    NULL,
    AreaAcres               REAL    NULL,
    EstimatedEmissionsCO2   REAL    NULL,
    WaterUseGallonsPerYear  REAL    NULL,
    WildlifeImpactRating    TEXT    NULL,
    SoilErosionRisk         TEXT    NULL,
    NoiseLevelDecibels      REAL    NULL,
    PublicCommentPeriodEnd DATE    NULL,
    MitigationMeasures      TEXT    NULL,
    ComplianceStatus        TEXT    NULL,
    ApprovedBy              TEXT    NULL,
    ApprovalDate            DATE    NULL,
    DocumentURL             TEXT    NULL,
    RevisionNumber          INTEGER NULL,
    CertifiedBy             TEXT    NULL,
    CertificationDate       DATE    NULL,
    FollowUpInspectionDate  DATE    NULL,
    FindingsSummary         TEXT    NULL,
    CreatedTimestamp        DATE    NULL,
    UpdatedTimestamp        DATE    NULL,
    ArchiveFlag             INTEGER NULL,
    Notes                   TEXT    NULL
);
INSERT INTO environmental_impact_assessment_reports VALUES ('RPT001','PRJ100','Northside Solar Farm','2022-07-15','State Environmental Agency','Environmental Review',150.5,45000,1200000,'Low','Low',55,'2022-08-30','Planting native vegetation','Compliant','Dr. Allen','2022-09-01','http://stateenv.gov/reports/rpt001.pdf',1,'Emma Stone','2022-09-05','2023-01-15','No significant issues','2022-07-16','2022-09-02',0,'');
INSERT INTO environmental_impact_assessment_reports VALUES ('RPT002','PRJ101','River Bridge Replacement','2023-02-10','Federal Highway Administration','Section 404 Review',2.8,8000,500000,'Medium','Medium',68,'2023-03-01','Implement fish passage','Conditional','Mr. Baker','2023-03-15','http://fhwa.gov/reports/rpt002.pdf',2,'Laura White','2023-03-18','2023-07-20','Mitigation plan approved with monitoring','2023-02-11','2023-03-16',0,'');
INSERT INTO environmental_impact_assessment_reports VALUES ('RPT003','PRJ102','East Campus Expansion','2021-11-20','Local Planning Dept','Environmental Impact Statement',30.0,15000,250000,'High','High',72,'2021-12-15','Noise barriers and stormwater controls','Non‑Compliant','Council Chair','2022-01-10','http://cityplanner.gov/reports/rpt003.pdf',3,'Michael Green','2022-01-12','2022-06-30','Required redesign of grading plan','2021-11-21','2022-01-11',1,'Pending revisions');

-- Alumni Career Pathways
CREATE TABLE alumni_career_pathways
(
    AlumniID                TEXT    NOT NULL PRIMARY KEY,
    SchoolCDSCode           TEXT    NULL,
    GraduationYear          INTEGER NULL,
    FirstName               TEXT    NULL,
    LastName                TEXT    NULL,
    DegreeEarned            TEXT    NULL,
    MajorField              TEXT    NULL,
    CurrentEmployer         TEXT    NULL,
    JobTitle                TEXT    NULL,
    IndustrySector          TEXT    NULL,
    SalaryRangeLow          REAL    NULL,
    SalaryRangeHigh         REAL    NULL,
    EmploymentStatus        TEXT    NULL,
    StartDate               DATE    NULL,
    EndDate                 DATE    NULL,
    LinkedInProfileURL      TEXT    NULL,
    MentorFlag              INTEGER NULL,
    VolunteerFlag           INTEGER NULL,
    AlumniAssociationMember INTEGER NULL,
    City                    TEXT    NULL,
    State                   TEXT    NULL,
    Country                 TEXT    NULL,
    LastContactDate        DATE    NULL,
    Notes                   TEXT    NULL,
    CreatedTimestamp        DATE    NULL,
    UpdatedTimestamp        DATE    NULL,
    ArchiveFlag             INTEGER NULL,
    Comments                TEXT    NULL
);
INSERT INTO alumni_career_pathways VALUES ('ALU001','001001',2015,'James','Wilson','BSc','Computer Science','TechNova Inc.','Software Engineer','Technology',75000,95000,'Employed','2015-07-01',NULL,'https://linkedin.com/in/jameswilson',1,0,1,'Chicago','IL','USA','2022-11-10','Promoted to senior role','2022-01-15','2022-11-12',0,'');
INSERT INTO alumni_career_pathways VALUES ('ALU002','001002',2018,'Maria','Garcia','BA','Graphic Design','Creative Studios','Art Director','Creative Services',65000,85000,'Employed','2018-09-01',NULL,'https://linkedin.com/in/mariagarcia',0,1,1,'Omaha','NE','USA','2023-02-05','Runs mentorship program','2023-01-20','2023-02-06',0,'');
INSERT INTO alumni_career_pathways VALUES ('ALU003','001003',2020,'Liam','Chen','MS','Data Analytics','DataInsights LLC','Data Analyst','Consulting',55000,70000,'Employed','2020-08-15',NULL,'https://linkedin.com/in/liamchen',0,0,0,'Des Moines','IA','USA','2022-09-15','Interested in alumni networking events','2022-01-10','2022-09-16',0,'');

-- District Technology Initiatives
CREATE TABLE district_technology_initiatives
(
    InitiativeID            TEXT    NOT NULL PRIMARY KEY,
    DistrictCode            TEXT    NULL,
    InitiativeName          TEXT    NULL,
    StartDate               DATE    NULL,
    ExpectedEndDate         DATE    NULL,
    FundingSource           TEXT    NULL,
    TotalBudget             REAL    NULL,
    LeadCoordinator         TEXT    NULL,
    CoordinatorPhone        TEXT    NULL,
    CoordinatorEmail        TEXT    NULL,
    TechnologyFocusArea     TEXT    NULL,
    Description             TEXT    NULL,
    MetricsTracked          TEXT    NULL,
    CurrentPhase            TEXT    NULL,
    PercentComplete         REAL    NULL,
    RiskLevel               TEXT    NULL,
    StakeholderGroup        TEXT    NULL,
    RequiredTrainingHours   INTEGER NULL,
    TrainingProvider        TEXT    NULL,
    Status                  TEXT    NULL,
    LastReviewDate          DATE    NULL,
    NextMilestoneDate       DATE    NULL,
    DocumentationURL        TEXT    NULL,
    CreatedTimestamp        DATE    NULL,
    UpdatedTimestamp        DATE    NULL,
    ArchiveFlag             INTEGER NULL,
    Comments                TEXT    NULL
);
INSERT INTO district_technology_initiatives VALUES ('TI001','D001','One-to-One Device Initiative','2021-09-01','2024-06-30','Federal Grant',3000000,'Sarah Connor','555-7788','sconnor@district.edu','Hardware','Provide laptops to all 9‑12 students','Device allocation rate, Usage hours','Deployment','85',NULL,'High','Teachers, Parents','4','TechTrain Co.','Active','2022-12-01','2023-03-15','http://district.edu/ti001/docs','2021-09-02','2022-11-30',0,'');
INSERT INTO district_technology_initiatives VALUES ('TI002','D002','Cloud Migration Project','2022-01-15','2025-12-31','State Funding',4500000,'Miguel Torres','555-8899','mtorres@district.edu','Software','Move all student data to secure cloud platform','Uptime, Data latency','Planning','40','Medium','IT Staff, Administrators','6','CloudCert Institute','Active','2023-01-10','2023-06-01','http://district.edu/ti002/plan','2022-01-16','2023-01-09',0,'');
INSERT INTO district_technology_initiatives VALUES ('TI003','D003','Digital Literacy Curriculum','2020-08-01','2023-05-31','District Budget',1200000,'Nina Patel','555-9900','npatel@district.edu','Curriculum','Integrate digital citizenship into grades 6‑8','Student assessment scores','Implementation','100','Low','Teachers, Parents','3','EdTech Workshops','Completed','2023-04-15','2023-05-01','http://district.edu/ti003/results','2020-08-02','2023-04-14',0,'');