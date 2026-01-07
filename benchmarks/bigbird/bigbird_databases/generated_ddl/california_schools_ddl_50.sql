-- Table storing results of school board elections
CREATE TABLE school_board_election_results (
    ElectionID            INTEGER PRIMARY KEY,
    SchoolCode            TEXT,
    DistrictCode          TEXT,
    ElectionDate          DATE,
    ElectionType          TEXT,
    TotalVotes            INTEGER,
    CandidateAName        TEXT,
    CandidateAVotes       INTEGER,
    CandidateBName        TEXT,
    CandidateBVotes       INTEGER,
    CandidateCName        TEXT,
    CandidateCVotes       INTEGER,
    WinnerName            TEXT,
    WinningVotes          INTEGER,
    RunoffRequired        INTEGER,
    VoterTurnoutPct       REAL,
    BallotIssuesCount     INTEGER,
    IssuesResolved        INTEGER,
    Comments              TEXT,
    RecordTimestamp       DATE
);

INSERT INTO school_board_election_results VALUES (1,'SCH001','DIST01','2023-11-05','General',1200,'Alice Smith',600,'Bob Jones',400,'Carol Lee',200,'Alice Smith',600,0,55.0,3,3,'All issues resolved','2023-11-06');
INSERT INTO school_board_election_results VALUES (2,'SCH002','DIST02','2024-03-12','Special',850,'David Kim',350,'Eva Patel',300,'Frank Wu',200,'David Kim',350,1,48.0,2,1,'Runoff scheduled','2024-03-13');
INSERT INTO school_board_election_results VALUES (3,'SCH003','DIST03','2023-04-20','General',970,'Grace Hall',480,'Henry Zhou',350,'Ivy Ng',140,'Grace Hall',480,0,62.0,4,4,'No pending issues','2023-04-21');

--------------------------------------------------------------------
-- Teacher satisfaction survey data
CREATE TABLE teacher_surveys (
    SurveyID                 INTEGER PRIMARY KEY,
    TeacherID                TEXT,
    SurveyDate               DATE,
    OverallSatisfaction      INTEGER,
    WorkLifeBalance          INTEGER,
    AdministrativeSupport   INTEGER,
    ProfessionalDevelopmentQuality INTEGER,
    ResourcesAdequacy        INTEGER,
    ClassroomAutonomy        INTEGER,
    SalarySatisfaction       INTEGER,
    StudentBehaviorRating    INTEGER,
    FeedbackOpenEnded        TEXT,
    FollowUpAction           TEXT,
    SurveyMode               TEXT,
    CompletionTimeMinutes    INTEGER,
    ConsentGiven             INTEGER,
    SchoolYear               TEXT,
    Term                     TEXT,
    SchoolCode               TEXT,
    DistrictCode             TEXT,
    RecordCreated            DATE
);

INSERT INTO teacher_surveys VALUES (101,'TCH1001','2023-09-15',4,5,3,4,5,4,3,4,'Great support from admin','Monthly meeting','Online',12,1,'2023-2024','Fall','SCH001','DIST01','2023-09-16');
INSERT INTO teacher_surveys VALUES (102,'TCH1002','2023-09-18',3,4,2,3,4,3,2,3,'Need more resources for labs','Submit request form','Paper',15,1,'2023-2024','Fall','SCH002','DIST02','2023-09-19');
INSERT INTO teacher_surveys VALUES (103,'TCH1003','2023-09-20',5,5,5,5,5,5,5,5,'Excellent environment','Continue current policies','Online',10,1,'2023-2024','Fall','SCH003','DIST03','2023-09-21');

--------------------------------------------------------------------
-- Evaluations of student participation in extracurricular activities
CREATE TABLE student_extracurricular_evaluations (
    EvalID               INTEGER PRIMARY KEY,
    StudentID            TEXT,
    ActivityID           TEXT,
    EvalDate             DATE,
    SkillRating          INTEGER,
    ParticipationLevel   INTEGER,
    CoachComments        TEXT,
    PeerFeedback         TEXT,
    HoursPerWeek         REAL,
    AchievementLevel     TEXT,
    AwardsReceived       TEXT,
    FuturePotential      TEXT,
    EvalCompletedBy      TEXT,
    EvalMethod           TEXT,
    FollowUpPlan         TEXT,
    EvaluationScore      REAL,
    Season               TEXT,
    AcademicYear         TEXT,
    Term                 TEXT,
    RecordTimestamp      DATE
);

INSERT INTO student_extracurricular_evaluations VALUES (201,'STU5001','ACT100','2023-12-01',4,5,'Shows strong leadership','Peers admire dedication',6.5,'High','Best Team Player','Potential varsity','Coach Lee','InPerson','Attend regional meet',88.5,'Winter','2023-2024','Winter','2023-12-02');
INSERT INTO student_extracurricular_evaluations VALUES (202,'STU5002','ACT200','2023-11-15',3,4,'Improving technique','Positive attitude',4.0,'Medium','None','May join varsity next year','Coach Patel','Online','Practice extra drills',72.0,'Fall','2023-2024','Fall','2023-11-16');
INSERT INTO student_extracurricular_evaluations VALUES (203,'STU5003','ACT300','2023-10-20',5,5,'Outstanding performance','Highly collaborative',7.0,'Excellent','Top Scorer','Already varsity','Coach Kim','InPerson','Maintain current schedule',95.0,'Fall','2023-2024','Fall','2023-10-21');

--------------------------------------------------------------------
-- Schedule for facility cleaning staff
CREATE TABLE facility_cleaning_staff_schedule (
    ScheduleID          INTEGER PRIMARY KEY,
    FacilityID          TEXT,
    StaffID             TEXT,
    ShiftDate           DATE,
    ShiftStartTime      TEXT,
    ShiftEndTime        TEXT,
    AreaCleaned         TEXT,
    CleaningMethod      TEXT,
    SuppliesUsed        TEXT,
    HoursWorked         REAL,
    SupervisorID        TEXT,
    Notes               TEXT,
    ShiftType           TEXT,
    DayOfWeek           TEXT,
    WeekNumber          INTEGER,
    Month               TEXT,
    Year                INTEGER,
    RecordCreated       DATE,
    RecordUpdated       DATE,
    Status              TEXT
);

INSERT INTO facility_cleaning_staff_schedule VALUES (301,'FAC01','STAFF01','2023-11-01','07:00','11:00','Gymnasium','Mopping','Detergent',4.0,'SUP01','All clear','Morning','Wednesday',45,'November',2023,'2023-11-01','2023-11-01','Completed');
INSERT INTO facility_cleaning_staff_schedule VALUES (302,'FAC02','STAFF02','2023-11-01','13:00','17:00','Cafeteria','Steam cleaning','Sanitizer',4.0,'SUP02','Spotless','Afternoon','Wednesday',45,'November',2023,'2023-11-01','2023-11-01','Completed');
INSERT INTO facility_cleaning_staff_schedule VALUES (303,'FAC03','STAFF03','2023-11-02','08:00','12:00','Classrooms','Vacuuming','Carpet cleaner',4.0,'SUP03','No issues','Morning','Thursday',45,'November',2023,'2023-11-02','2023-11-02','Pending');

--------------------------------------------------------------------
-- Records of renewable energy installations at schools
CREATE TABLE school_energy_renewable_installations (
    InstallationID          INTEGER PRIMARY KEY,
    SchoolCode              TEXT,
    InstallationDate        DATE,
    RenewableType           TEXT,
    CapacityKW              REAL,
    ContractorName          TEXT,
    CostUSD                 REAL,
    FundingSource           TEXT,
    ExpectedLifeYears       INTEGER,
    Orientation             TEXT,
    TiltAngle               REAL,
    MaintenanceContractor   TEXT,
    WarrantyYears           INTEGER,
    Status                  TEXT,
    CommissioningDate       DATE,
    GridConnectionID        TEXT,
    IncentiveAmount         REAL,
    CO2ReductionTonnes      REAL,
    CreatedBy               TEXT,
    CreatedAt               DATE
);

INSERT INTO school_energy_renewable_installations VALUES (401,'SCH001','2022-05-10','Solar','250.5','SunPower LLC','125000','State Grant',25,'South','30.0','GreenTech Services',10,'Operational','2022-06-01','GC001',15000,120.5,'AdminA','2022-05-11');
INSERT INTO school_energy_renewable_installations VALUES (402,'SCH002','2021-09-15','Wind','500.0','WindWorks Inc','300000','Federal Funding',20,'North','0.0','WindCare Ltd',15,'Operational','2021-10-01','GC002',50000,300.0,'AdminB','2021-09-16');
INSERT INTO school_energy_renewable_installations VALUES (403,'SCH003','2023-02-20','Geothermal','350.0','GeoHeat Co','200000','County Bond',30,'N/A','N/A','ThermalMaintenance',12,'UnderConstruction','2023-03-01','GC003',25000,200.0,'AdminC','2023-02-21');

--------------------------------------------------------------------
-- Community arts program catalog
CREATE TABLE community_arts_programs (
    ProgramID           INTEGER PRIMARY KEY,
    CommunityArea       TEXT,
    ProgramName         TEXT,
    StartDate           DATE,
    EndDate             DATE,
    FundingAmount       REAL,
    SponsorOrganization TEXT,
    CoordinatorName     TEXT,
    TargetAudience      TEXT,
    NumberOfEvents      INTEGER,
    TotalAttendance     INTEGER,
    MediaCoverage       TEXT,
    EvaluationScore     REAL,
    MaterialsProvided   TEXT,
    VolunteerCount      INTEGER,
    HoursVolunteer      REAL,
    OutcomeSummary      TEXT,
    Status              TEXT,
    CreatedDate         DATE,
    UpdatedDate         DATE
);

INSERT INTO community_arts_programs VALUES (501,'Northside','Mural Creation','2023-06-01','2023-08-31',30000,'Arts Council','Laura Green','Residents','5','1200','Local newspaper','8.5','Paint, Brushes','20',150.0,'Improved neighborhood aesthetics','Completed','2023-05-15','2023-09-01');
INSERT INTO community_arts_programs VALUES (502,'East Valley','Youth Theater','2023-09-10','2024-05-20',50000,'Cultural Fund','Mark Rivera','Students','12','2200','TV segment','9.2','Costumes, Scripts','35',300.0,'Developed acting skills','Ongoing','2023-08-01','2023-09-15');
INSERT INTO community_arts_programs VALUES (503,'West Hills','Artisan Workshops','2023-03-05','2023-12-15',40000,'Community Trust','Sonia Patel','Adults','8','800','Radio interview','7.9','Tools, Materials','15',120.0,'Increased craft proficiency','Completed','2023-02-20','2023-12-20');

--------------------------------------------------------------------
-- Maintenance records for district technology assets
CREATE TABLE district_technology_asset_maintenance (
    AssetID                INTEGER PRIMARY KEY,
    AssetType              TEXT,
    SerialNumber           TEXT,
    PurchaseDate           DATE,
    WarrantyEndDate        DATE,
    MaintenanceProvider    TEXT,
    LastMaintenanceDate    DATE,
    NextMaintenanceDue     DATE,
    MaintenanceCostUSD     REAL,
    ConditionRating        INTEGER,
    AssignedLocation       TEXT,
    AssignedTo             TEXT,
    Notes                  TEXT,
    AssetStatus            TEXT,
    DepreciationPeriodYears INTEGER,
    CurrentValueUSD        REAL,
    AssetLifecycleStage    TEXT,
    CreatedBy              TEXT,
    CreatedOn              DATE,
    UpdatedOn              DATE
);

INSERT INTO district_technology_asset_maintenance VALUES (601,'Laptop','SN12345','2021-01-15','2023-01-15','TechFix Ltd','2022-12-01','2023-12-01',250.0,8,'Office 101','TechDept','Battery replaced','Active',3,750.0,'InUse','AdminX','2021-01-16','2022-12-02');
INSERT INTO district_technology_asset_maintenance VALUES (602,'Projector','SN67890','2020-05-20','2022-05-20','AV Services','2021-11-10','2022-11-10',150.0,7,'Auditorium','AVTeam','Lens cleaned','Active',4,500.0,'InUse','AdminY','2020-05-21','2021-11-11');
INSERT INTO district_technology_asset_maintenance VALUES (603,'Server','SN54321','2019-03-10','2024-03-10','DataCare Inc','2022-08-15','2023-08-15',1200.0,9,'Data Center','ITDept','Firmware update','Active',5,8000.0,'InUse','AdminZ','2019-03-11','2022-08-16');

--------------------------------------------------------------------
-- Services provided to homeless students
CREATE TABLE school_homeless_support_services (
    ServiceID                INTEGER PRIMARY KEY,
    SchoolCode                TEXT,
    ServiceDate               DATE,
    StudentID                 TEXT,
    ServiceType               TEXT,
    ProviderName              TEXT,
    DurationHours             REAL,
    Outcome                   TEXT,
    FollowUpRequired          INTEGER,
    ReferralSource            TEXT,
    EligibilityConfirmed      INTEGER,
    Notes                     TEXT,
    StaffContact              TEXT,
    ContactPhone              TEXT,
    Address                   TEXT,
    City                      TEXT,
    State                     TEXT,
    Zip                       TEXT,
    RecordCreated             DATE,
    RecordUpdated             DATE
);

INSERT INTO school_homeless_support_services VALUES (701,'SCH001','2023-10-05','STU9001','Meal Assistance','Community Kitchen',2.0,'Meal provided','0','Counselor Referral','1','Student received lunch','Ms. Rivera','555-0123','123 Main St','Springfield','TX','75001','2023-10-06','2023-10-06');
INSERT INTO school_homeless_support_services VALUES (702,'SCH002','2023-11-12','STU9002','Transportation','Local Transit Authority',1.5,'Ride to school','1','Social Worker','1','Driver assisted with drop-off','Mr. Gomez','555-0456','456 Oak Ave','Riverton','CA','90210','2023-11-13','2023-11-13');
INSERT INTO school_homeless_support_services VALUES (703,'SCH003','2023-12-01','STU9003','Counseling','Youth Outreach','1.0','Initial counseling session','1','Teacher Referral','0','Session scheduled for next week','Ms. Lee','555-0789','789 Pine Rd','Laketown','FL','33101','2023-12-02','2023-12-02');

--------------------------------------------------------------------
-- Air quality monitoring reports
CREATE TABLE environmental_air_quality_reports (
    ReportID                INTEGER PRIMARY KEY,
    RegionCode              TEXT,
    ReportDate              DATE,
    PM25                    REAL,
    PM10                    REAL,
    Ozone                   REAL,
    NO2                     REAL,
    SO2                     REAL,
    CO                      REAL,
    AQI                     INTEGER,
    MonitoringStationID     TEXT,
    WeatherCondition        TEXT,
    TemperatureC            REAL,
    HumidityPct             REAL,
    WindSpeedKph            REAL,
    DataSource              TEXT,
    AnalystName             TEXT,
    Comments                TEXT,
    Approved                INTEGER,
    ApprovalDate            DATE
);

INSERT INTO environmental_air_quality_reports VALUES (801,'RC01','2023-10-15',12.5,30.2,0.04,0.018,0.003,0.7,45,'MS100','Clear',22.5,45.0,12.0,'EPA','Anna Torres','Values within normal range',1,'2023-10-16');
INSERT INTO environmental_air_quality_reports VALUES (802,'RC02','2023-11-20',35.0,55.0,0.08,0.030,0.010,1.2,85,'MS200','Partly Cloudy',18.0,55.0,8.5,'State Dept','Brian Lee','Moderate pollution observed',1,'2023-11-21');
INSERT INTO environmental_air_quality_reports VALUES (803,'RC03','2023-12-05',80.0,120.0,0.12,0.050,0.020,2.0,150,'MS300','Windy',15.0,65.0,20.0,'Local Agency','Carla Gomez','High pollution alert',0,NULL);

--------------------------------------------------------------------
-- District-wide mental health resources inventory
CREATE TABLE district_mental_health_resources (
    ResourceID               INTEGER PRIMARY KEY,
    DistrictCode             TEXT,
    ResourceName             TEXT,
    ResourceType             TEXT,
    ServiceArea              TEXT,
    Capacity                 INTEGER,
    AvailabilityHours        TEXT,
    ContactPhone             TEXT,
    ContactEmail             TEXT,
    FundingSource            TEXT,
    CostPerVisitUSD          REAL,
    EligibilityCriteria      TEXT,
    ReferralProcess          TEXT,
    Accreditation            TEXT,
    StaffCount               INTEGER,
    StaffQualifications      TEXT,
    OpeningDate              DATE,
    ClosingDate              DATE,
    Status                   TEXT,
    LastUpdated              DATE
);

INSERT INTO district_mental_health_resources VALUES (901,'DIST01','Wellness Center','Clinic','District Wide',150,'Mon-Fri 08:00-18:00','555-1234','wellness@district.org','State Grant',75.0,'Resident students','Self referral','Certified','10','Licensed Therapists','2020-09-01',NULL,'Open','2023-11-01');
INSERT INTO district_mental_health_resources VALUES (902,'DIST02','Crisis Hotline','Phone Service','District Wide',0,'24/7','555-5678','crisis@district.org','Federal Funding',0.0,'All students','School referral','Accredited','5','Counselors','2018-01-15',NULL,'Open','2023-10-15');
INSERT INTO district_mental_health_resources VALUES (903,'DIST03','Peer Support Program','Program','Middle Schools',200,'Tue-Thu 10:00-15:00','555-9012','peer@district.org','Local Donations',25.0,'Students in grades 6-8','Teacher nomination','Approved','8','Trained Peer Leaders','2021-03-01',NULL,'Open','2023-09-20');