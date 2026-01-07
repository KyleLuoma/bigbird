-- School fleet vehicle inventory adjacent to schools table
CREATE TABLE school_fleet_vehicle_inventory
(
    VehicleID               TEXT NOT NULL PRIMARY KEY,
    CDSCode                 TEXT NOT NULL,
    VehicleType             TEXT NULL,
    Make                    TEXT NULL,
    Model                   TEXT NULL,
    Year                    INTEGER NULL,
    VIN                     TEXT NULL,
    LicensePlate            TEXT NULL,
    AcquiredDate            DATE NULL,
    PurchasePrice           REAL NULL,
    FuelType                TEXT NULL,
    Mileage                 INTEGER NULL,
    Status                  TEXT NULL,
    ServiceIntervalMonths   INTEGER NULL,
    LastServiceDate         DATE NULL,
    NextServiceDue          DATE NULL,
    AssignedDriverID        TEXT NULL,
    InsurancePolicyNum      TEXT NULL,
    InsuranceExpiry         DATE NULL,
    Notes                   TEXT NULL,
    FOREIGN KEY (CDSCode) REFERENCES schools(CDSCode)
);

INSERT INTO school_fleet_vehicle_inventory VALUES
('V001','001001','Bus','BlueBird','AllAmerican','2018','1HGBH41JXMN109186','ABC123','2018-06-01',55000,'Diesel',120000,'Active',12,'2023-01-15','2023-07-15','D001','POL12345','2024-06-30','No notes');

INSERT INTO school_fleet_vehicle_inventory VALUES
('V002','001002','Van','Ford','Transit','2020','2FTRX18W1XCA12345','XYZ789','2020-03-15',32000,'Gasoline',45000,'Active',10,'2023-02-20','2023-12-20','D002','POL67890','2025-03-15','Replaced GPS unit');

INSERT INTO school_fleet_vehicle_inventory VALUES
('V003','001003','Truck','Chevrolet','Silverado','2016','3GCUKREC5FG123456','LMN456','2016-09-10',48000,'Diesel',180000,'Retired',12,'2022-11-30','2023-05-30','D003','POL54321','2023-11-30','Retired after 8 years');


-- Detailed district infrastructure projects
CREATE TABLE district_infrastructure_projects_detail
(
    ProjectID               TEXT NOT NULL PRIMARY KEY,
    DistrictCode            TEXT NOT NULL,
    ProjectName             TEXT NULL,
    ProjectType             TEXT NULL,
    StartDate               DATE NULL,
    EstimatedEndDate        DATE NULL,
    ActualEndDate           DATE NULL,
    BudgetAllocated         REAL NULL,
    BudgetSpent             REAL NULL,
    FundingSource           TEXT NULL,
    ContractorName          TEXT NULL,
    ContractNumber          TEXT NULL,
    ProjectStatus           TEXT NULL,
    Phase                   TEXT NULL,
    ScopeDescription        TEXT NULL,
    EnvironmentalImpactScore REAL NULL,
    KeyMilestone1           DATE NULL,
    KeyMilestone2           DATE NULL,
    KeyMilestone3           DATE NULL,
    PublicComments          TEXT NULL,
    FOREIGN KEY (DistrictCode) REFERENCES schools(District)
);

INSERT INTO district_infrastructure_projects_detail VALUES
('P1001','D01','East Wing Renovation','Renovation','2022-01-15','2023-06-30',2500000,1800000,'Bond','BuildCo','C-2022-001','In Progress','Construction','Modernize classrooms and labs',3.2,'2022-04-01','2022-10-15','2023-02-20','Community supportive');

INSERT INTO district_infrastructure_projects_detail VALUES
('P1002','D02','Solar Panel Installation','Renewable Energy','2021-05-10','2022-12-31',800000,820000,'Grant','EcoEnergy','C-2021-045','Completed','Implementation','Install 500kW solar array',1.1,'2021-08-01','2022-03-15','2022-11-10','Positive media coverage');

INSERT INTO district_infrastructure_projects_detail VALUES
('P1003','D03','Athletic Complex Expansion','Expansion','2023-03-01','2025-09-30',1200000,300000,'Bond','SportBuild','C-2023-017','Planned','Planning','Add new basketball courts',2.5,'2023-06-01','2024-01-15','2024-08-20','Awaiting community input');


-- Community outreach programs
CREATE TABLE community_outreach_programs
(
    ProgramID               TEXT NOT NULL PRIMARY KEY,
    DistrictCode            TEXT NOT NULL,
    ProgramName             TEXT NULL,
    TargetAudience          TEXT NULL,
    StartDate               DATE NULL,
    EndDate                 DATE NULL,
    CoordinatorName         TEXT NULL,
    CoordinatorEmail        TEXT NULL,
    WeeklyHours             INTEGER NULL,
    MonthlyBudget           REAL NULL,
    FundingAgency           TEXT NULL,
    Location                TEXT NULL,
    Description             TEXT NULL,
    NumberOfParticipants    INTEGER NULL,
    OutcomeMetric1          REAL NULL,
    OutcomeMetric2          REAL NULL,
    EvaluationScore         REAL NULL,
    PartnerOrganization     TEXT NULL,
    ContactPhone            TEXT NULL,
    Notes                   TEXT NULL,
    FOREIGN KEY (DistrictCode) REFERENCES schools(District)
);

INSERT INTO community_outreach_programs VALUES
('C001','D01','STEM After School','Middle School','2022-09-01','2023-06-15','Laura Smith','laura.smith@example.org',15,25000,'State Education Dept','Midtown Community Center','Hands‑on robotics and coding',120,85.5,92.3,4.7,'TechForKids','5551234567','High attendance');

INSERT INTO community_outreach_programs VALUES
('C002','D02','Family Literacy Nights','Parents','2023-01-10','2023-12-20','Mark Johnson','mark.johnson@example.org',10,18000,'Local Library','Northside Library','Reading workshops and resource fair',200,78.2,88.0,4.2,'ReadTogether','5559876543','Materials donated');

INSERT INTO community_outreach_programs VALUES
('C003','D03','Healthy Eating Workshops','All Grades','2021-04-05','2022-03-30','Emily Davis','emily.davis@example.org',8,12000,'Health Dept','Community Hall','Nutrition education and cooking demos',150,90.0,95.5,4.9','FoodShare','5555551212','Positive feedback');


-- Student art exhibition records
CREATE TABLE student_art_exhibition_records
(
    ExhibitID               TEXT NOT NULL PRIMARY KEY,
    StudentID               TEXT NOT NULL,
    SchoolYear              TEXT NULL,
    ExhibitTitle            TEXT NULL,
    Medium                  TEXT NULL,
    Dimensions              TEXT NULL,
    DisplayLocation         TEXT NULL,
    StartDate               DATE NULL,
    EndDate                 DATE NULL,
    CuratorName             TEXT NULL,
    CuratorEmail            TEXT NULL,
    GradeLevel              TEXT NULL,
    ArtCategory             TEXT NULL,
    AwardReceived           TEXT NULL,
    AwardLevel              TEXT NULL,
    EstimatedValue          REAL NULL,
    DonorName               TEXT NULL,
    DonorContact            TEXT NULL,
    Comments                TEXT NULL,
    DigitalArchiveURL       TEXT NULL
);

INSERT INTO student_art_exhibition_records VALUES
('E1001','S001','2022-2023','Reflections','Acrylic','24x36','Main Hall','2023-04-10','2023-04-30','Anna Lee','anna.lee@school.org','10','Painting','Best of Show','Gold',1500,'John Doe','5551112222','First solo exhibit','http://archive.school.edu/E1001');

INSERT INTO student_art_exhibition_records VALUES
('E1002','S002','2021-2022','Urban Dreams','Digital','1920x1080','Tech Lab','2022-05-05','2022-05-20','Brian Kim','brian.kim@school.org','11','Digital Art','Honorable Mention','Silver',800,'Tech Corp','5553334444','Used school tablets','http://archive.school.edu/E1002');

INSERT INTO student_art_exhibition_records VALUES
('E1003','S003','2023-2024','Nature Whisper','Watercolor','18x24','Library Atrium','2024-03-12','2024-03-28','Carla Ruiz','carla.ruiz@school.org','9','Watercolor','None','None',0,'None','None','First regional competition','http://archive.school.edu/E1003');


-- Teacher research collaboration network
CREATE TABLE teacher_research_collaboration_network
(
    CollabID                TEXT NOT NULL PRIMARY KEY,
    TeacherID               TEXT NOT NULL,
    CoTeacherID             TEXT NOT NULL,
    ResearchProjectTitle    TEXT NULL,
    GrantID                 TEXT NULL,
    FundingAmount           REAL NULL,
    StartDate               DATE NULL,
    EndDate                 DATE NULL,
    Discipline              TEXT NULL,
    PublicationCount        INTEGER NULL,
    ConferencePresentations INTEGER NULL,
    PrimaryInstitution      TEXT NULL,
    PartnerInstitution      TEXT NULL,
    CollabRole              TEXT NULL,
    Status                  TEXT NULL,
    DataRepositoryURL       TEXT NULL,
    EthicsApprovalID        TEXT NULL,
    Notes                   TEXT NULL,
    LastUpdated             DATE NULL,
    ImpactScore             REAL NULL,
    FOREIGN KEY (TeacherID) REFERENCES schools(AdmFName1) -- placeholder reference
);

INSERT INTO teacher_research_collaboration_network VALUES
('RC001','T001','T005','STEM Integration Study','G-2022-01',150000,'2022-01-15','2024-12-31','Education',3,5,'Central University','Tech Institute','Lead Investigator','Active','http://data.repo.edu/rc001','EA-2022-07','Ongoing data collection','2023-08-01',4.5);

INSERT INTO teacher_research_collaboration_network VALUES
('RC002','T002','T006','Literacy Intervention','G-2021-09',90000,'2021-09-01','2023-08-31','Literacy',2,3,'State College','Reading Alliance','Co‑Investigator','Completed','http://data.repo.edu/rc002','EA-2021-03','Published 2 articles','2023-09-15',4.0);

INSERT INTO teacher_research_collaboration_network VALUES
('RC003','T003','T007','Remote Learning Efficacy','G-2023-05',200000,'2023-05-10','2025-04-30','Education Technology',0,1,'Tech University','Online Ed Lab','Principal Investigator','Proposed','http://data.repo.edu/rc003','EA-2023-02','Proposal under review','2023-07-20',3.8);


-- School environmental sensor network
CREATE TABLE school_environmental_sensor_network
(
    SensorID                TEXT NOT NULL PRIMARY KEY,
    SchoolID                TEXT NOT NULL,
    SensorType              TEXT NULL,
    InstallationDate        DATE NULL,
    Latitude                REAL NULL,
    Longitude               REAL NULL,
    FirmwareVersion         TEXT NULL,
    BatteryLevel            REAL NULL,
    CalibrationDate         DATE NULL,
    CalibrationFactor       REAL NULL,
    ReadingIntervalSeconds  INTEGER NULL,
    LastReadingValue        REAL NULL,
    LastReadingTimestamp    DATE NULL,
    Status                  TEXT NULL,
    AlertThresholdHigh      REAL NULL,
    AlertThresholdLow       REAL NULL,
    MaintenanceSchedule     DATE NULL,
    VendorName              TEXT NULL,
    WarrantyExpiry          DATE NULL,
    Notes                   TEXT NULL,
    FOREIGN KEY (SchoolID) REFERENCES schools(CDSCode)
);

INSERT INTO school_environmental_sensor_network VALUES
('SEN001','001001','CO2','2022-02-01',34.0567,-117.1956,'v1.2',95.0,'2022-02-01',1.0,300,415.2,'2023-10-01','Active',800,400,'2024-02-01','EnviroTech','2025-02-01','Installed in cafeteria');

INSERT INTO school_environmental_sensor_network VALUES
('SEN002','001002','Temperature','2021-09-15',34.0580,-117.1910,'v2.0',88.5,'2021-09-15',0.5,600,22.5,'2023-09-15','Active',30,15,'2024-09-15','ClimateSensors','2024-09-15','Hallway sensor');

INSERT INTO school_environmental_sensor_network VALUES
('SEN003','001003','Humidity','2023-01-20',34.0572,-117.1933,'v1.5',92.0,'2023-01-20',0.8,600,45.0,'2023-10-15','Active',60,30,'2024-01-20','AirSense','2025-01-20','Gymnasium sensor');


-- Alumni career placement statistics
CREATE TABLE alumni_career_placement_stats
(
    AlumniID                TEXT NOT NULL PRIMARY KEY,
    GraduationYear          INTEGER NULL,
    DegreeEarned            TEXT NULL,
    Major                   TEXT NULL,
    CurrentEmployer         TEXT NULL,
    JobTitle                TEXT NULL,
    IndustrySector          TEXT NULL,
    SalaryBracket           TEXT NULL,
    LocationCity            TEXT NULL,
    LocationState           TEXT NULL,
    EmploymentStatus        TEXT NULL,
    YearsSinceGraduation    INTEGER NULL,
    ProfessionalCertifications INTEGER NULL,
    LinkedInURL             TEXT NULL,
    MentorFlag              INTEGER NULL,
    CommunityInvolvementHours INTEGER NULL,
    SurveyDate              DATE NULL,
    SalaryIncreasePct       REAL NULL,
    JobSatisfactionScore    REAL NULL,
    Notes                   TEXT NULL
);

INSERT INTO alumni_career_placement_stats VALUES
('A001',2018,'Bachelor','Computer Science','Tech Solutions Inc','Software Engineer','Technology','70k-80k','San Diego','CA','Employed',5,2,'http://linkedin.com/in/a001',1,40,'2023-06-01',12.5,4.2,'Promoted twice');

INSERT INTO alumni_career_placement_stats VALUES
('A002',2019,'Master','Education','Bright Minds Academy','Instructional Designer','Education','50k-60k','Los Angeles','CA','Employed',4,1,'http://linkedin.com/in/a002',0,20,'2023-06-15',8.0,3.9','Participates in mentorship program');

INSERT INTO alumni_career_placement_stats VALUES
('A003',2020,'Associate','Business Administration','Global Finance Corp','Analyst','Finance','60k-70k','San Francisco','CA','Employed',3,0,'http://linkedin.com/in/a003',0,15,'2023-07-01',5.5,4.0','Member of alumni association');


-- District policy implementation log
CREATE TABLE district_policy_implementation_log
(
    PolicyID                TEXT NOT NULL PRIMARY KEY,
    DistrictCode            TEXT NOT NULL,
    PolicyTitle             TEXT NULL,
    EffectiveDate           DATE NULL,
    ImplementationStartDate DATE NULL,
    ImplementationEndDate   DATE NULL,
    ResponsibleDept         TEXT NULL,
    BudgetImpact            REAL NULL,
    ComplianceStatus        TEXT NULL,
    NumberOfSchoolsAffected INTEGER NULL,
    TrainingHoursDelivered  INTEGER NULL,
    StakeholderFeedbackScore REAL NULL,
    AmendmentsCount         INTEGER NULL,
    RevisionDate            DATE NULL,
    LegalReference          TEXT NULL,
    Notes                   TEXT NULL,
    CreatedBy               TEXT NULL,
    ApprovedBy              TEXT NULL,
    ApprovalDate            DATE NULL,
    LastReviewDate          DATE NULL,
    FOREIGN KEY (DistrictCode) REFERENCES schools(District)
);

INSERT INTO district_policy_implementation_log VALUES
('PL001','D01','Enhanced Safety Protocols','2023-01-01','2023-01-15','2023-07-15','Safety Office',250000,'Compliant',25,120,4.6,2,'2023-06-01','State Statute 45.2','All schools updated','Samantha White','John Carter','2022-12-10','2024-01-01');

INSERT INTO district_policy_implementation_log VALUES
('PL002','D02','Digital Curriculum Adoption','2022-09-01','2022-09-10','2023-12-31','Instructional Services',500000,'Partially Compliant',18,200,4.2,1,'2023-03-15','Education Code 23.5','Phase 1 complete','Laura Green','Mark Phillips','2022-08-20','2023-11-01');

INSERT INTO district_policy_implementation_log VALUES
('PL003','D03','Teacher Evaluation Revamp','2023-05-01','2023-05-10','2024-04-30','Human Resources',150000,'In Progress',22,80,4.0,0,'2023-09-20','HR Regulation 12.1','Pilot in 5 schools','David Lee','Angela Kim','2023-04-15','2024-05-01');


-- School Wi‑Fi access point inventory
CREATE TABLE school_wifi_access_point_inventory
(
    APID                    TEXT NOT NULL PRIMARY KEY,
    SchoolID                TEXT NOT NULL,
    APModel                 TEXT NULL,
    SerialNumber            TEXT NULL,
    InstallationDate        DATE NULL,
    FirmwareVersion         TEXT NULL,
    CoverageAreaSqFt        REAL NULL,
    MaxClients              INTEGER NULL,
    CurrentClients          INTEGER NULL,
    UplinkPort              TEXT NULL,
    PowerOverEthernet       INTEGER NULL,
    Status                  TEXT NULL,
    LastMaintenance         DATE NULL,
    WarrantyEnd             DATE NULL,
    VendorName              TEXT NULL,
    LocationRoom            TEXT NULL,
    Latitude                REAL NULL,
    Longitude               REAL NULL,
    Notes                   TEXT NULL,
    SupportedBands          TEXT NULL,
    FOREIGN KEY (SchoolID) REFERENCES schools(CDSCode)
);

INSERT INTO school_wifi_access_point_inventory VALUES
('AP001','001001','Aruba 315','SN12345','2021-08-12','v5.3',2500,200,85,'Port1',1,'Active','2023-09-01','2024-08-12','NetGear','Library','34.0569','-117.1952','Installed near windows','2.4GHz/5GHz');

INSERT INTO school_wifi_access_point_inventory VALUES
('AP002','001002','Cisco Meraki MR33','SN67890','2022-01-20','v6.0',1800,150,60,'Port3',0,'Active','2023-08-15','2025-01-20','Cisco','Science Lab','34.0582','-117.1908','Mounted on ceiling','2.4GHz/5GHz');

INSERT INTO school_wifi_access_point_inventory VALUES
('AP003','001003','Ubiquiti UniFi UAP‑AC-PRO','SN54321','2020-05-05','v4.9',3000,250,100,'Port2',1,'Active','2023-07-10','2023-05-05','Ubiquiti','Gymnasium','34.0575','-117.1930','Rugged outdoor unit','2.4GHz/5GHz');


-- Student mental health intervention sessions
CREATE TABLE student_mental_health_intervention_sessions
(
    SessionID               TEXT NOT NULL PRIMARY KEY,
    StudentID               TEXT NOT NULL,
    CounselorID             TEXT NOT NULL,
    SessionDate             DATE NULL,
    SessionType             TEXT NULL,
    DurationMinutes         INTEGER NULL,
    IssueCategory           TEXT NULL,
    InterventionMethod      TEXT NULL,
    FollowUpRequired        INTEGER NULL,
    NextSessionDate         DATE NULL,
    ReferralSource          TEXT NULL,
    OutcomeRating           INTEGER NULL,
    Notes                   TEXT NULL,
    ConfidentialFlag        INTEGER NULL,
    SessionLocation         TEXT NULL,
    ParentNotified          INTEGER NULL,
    ConsentObtained         INTEGER NULL,
    SessionSummary          TEXT NULL,
    ProgramName             TEXT NULL,
    EvaluationScore         REAL NULL,
    FOREIGN KEY (StudentID) REFERENCES schools(CDSCode) -- placeholder reference
);

INSERT INTO student_mental_health_intervention_sessions VALUES
('MH001','S001','C001','2023-09-12','Individual','45','Anxiety','CBT',1,'2023-09-26','Teacher','4','Student expressed relief','1','Counselor Office','1','1','Discussed coping strategies','Wellness Program','4.5');

INSERT INTO student_mental_health_intervention_sessions VALUES
('MH002','S002','C002','2023-08-20','Group','60','Stress Management','Mindfulness',0,NULL,'Self‑Referral','5','Positive group dynamics','1','Group Room','0','1','Guided meditation session','Stress Reduction Initiative','4.8');

INSERT INTO student_mental_health_intervention_sessions VALUES
('MH003','S003','C003','2023-07-05','Family','90','Depression','Family Therapy',1,'2023-07-19','Parent','3','Family communication improved','1','Counselor Office','1','1','Session included parents and child','Family Support Services','4.2');