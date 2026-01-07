-- Teacher certifications table
CREATE TABLE teacher_certifications
(
    CertID                INTEGER PRIMARY KEY,
    TeacherID             TEXT    NOT NULL,
    CertName              TEXT,
    CertAuthority         TEXT,
    IssueDate             DATE,
    ExpirationDate        DATE,
    CertNumber            TEXT,
    State                 TEXT,
    Country               TEXT,
    CertLevel             TEXT,
    CreditsEarned         INTEGER,
    RenewalStatus         TEXT,
    Notes                 TEXT,
    IssuingBody           TEXT,
    CredentialType        TEXT,
    SpecialtyArea         TEXT,
    ValidFrom             DATE,
    ValidTo               DATE,
    IsActive              INTEGER,
    LastUpdated           DATE
);

INSERT INTO teacher_certifications VALUES (1, 'T001', 'Reading Specialist', 'State Board', '2020-08-15', '2025-08-14', 'RS2020', 'CA', 'USA', 'Advanced', 30, 'Pending', 'N/A', 'State Board', 'Specialist', 'Literacy', '2020-08-15', '2025-08-14', 1, '2023-01-10');
INSERT INTO teacher_certifications VALUES (2, 'T023', 'Math Teacher', 'National Council', '2018-06-01', '2023-05-31', 'MT2018', 'TX', 'USA', 'Standard', 24, 'Expired', 'Renewal pending', 'National Council', 'Certificate', 'Mathematics', '2018-06-01', '2023-05-31', 0, '2022-12-05');
INSERT INTO teacher_certifications VALUES (3, 'T157', 'ESL Instructor', 'DOE', '2021-01-20', '2026-01-19', 'ESL2021', 'NY', 'USA', 'Advanced', 20, 'Active', 'N/A', 'DOE', 'License', 'Language', '2021-01-20', '2026-01-19', 1, '2023-03-15');

-- Student attendance records table
CREATE TABLE student_attendance_records
(
    AttendanceID      INTEGER PRIMARY KEY,
    StudentID         TEXT NOT NULL,
    SchoolYear        TEXT,
    AttendanceDate    DATE,
    Period            INTEGER,
    Status            TEXT,
    ReasonCode        TEXT,
    TardyMinutes      INTEGER,
    IsExcused         INTEGER,
    RecordedBy        TEXT,
    EntryTime         TEXT,
    CorrectionFlag    INTEGER,
    Comments          TEXT,
    AttendanceType    TEXT,
    SchoolCode        TEXT,
    GradeLevel        TEXT,
    WeekNumber        INTEGER,
    MonthNumber       INTEGER,
    YearNumber        INTEGER,
    LastModified      DATE
);

INSERT INTO student_attendance_records VALUES (1001, 'S001', '2022-2023', '2022-10-05', 1, 'Absent', 'Illness', NULL, 1, 'MrsSmith', '08:00', 0, 'N/A', 'Daily', 'SC001', '10', 40, 10, 2022, '2022-10-05');
INSERT INTO student_attendance_records VALUES (1002, 'S045', '2022-2023', '2022-10-05', 3, 'Tardy', 'Traffic', 12, 1, 'MrJones', '08:15', 0, 'Late due to traffic', 'Daily', 'SC001', '10', 40, 10, 2022, '2022-10-05');
INSERT INTO student_attendance_records VALUES (1003, 'S078', '2022-2023', '2022-10-06', 2, 'Present', NULL, NULL, 0, 'MrsLee', '08:05', 0, 'On time', 'Daily', 'SC001', '10', 41, 10, 2022, '2022-10-06');

-- School budget line items table
CREATE TABLE school_budget_lineitems
(
    BudgetID            INTEGER PRIMARY KEY,
    FiscalYear          TEXT,
    Department          TEXT,
    LineItemCode        TEXT,
    Description         TEXT,
    AmountAllocated     REAL,
    AmountSpent         REAL,
    AmountRemaining     REAL,
    FundingSource       TEXT,
    GrantNumber         TEXT,
    ApprovedBy          TEXT,
    ApprovalDate        DATE,
    RevisionNumber      INTEGER,
    Category            TEXT,
    SubCategory         TEXT,
    IsCapitalExpenditure INTEGER,
    IsRecurring         INTEGER,
    Notes               TEXT,
    LastUpdate          DATE,
    Currency            TEXT
);

INSERT INTO school_budget_lineitems VALUES (5001, '2023', 'Instruction', 'INST001', 'Classroom supplies', 25000.00, 15000.00, 10000.00, 'Local Tax', 'G001', 'Superintendent', '2022-12-01', 1, 'Operating', 'Supplies', 0, 1, 'N/A', '2023-01-15', 'USD');
INSERT INTO school_budget_lineitems VALUES (5002, '2023', 'Facilities', 'FAC001', 'HVAC maintenance', 50000.00, 30000.00, 20000.00, 'State Grant', 'G045', 'FacilitiesMgr', '2022-11-20', 2, 'Capital', 'Maintenance', 1, 0, 'Replace filters', '2023-01-20', 'USD');
INSERT INTO school_budget_lineitems VALUES (5003, '2023', 'Technology', 'TECH001', 'Laptop purchases', 120000.00, 80000.00, 40000.00, 'Federal Grant', 'G078', 'TechDirector', '2022-12-15', 1, 'Capital', 'Equipment', 1, 0, 'Phase 2 rollout', '2023-02-01', 'USD');

-- Facility inspection reports table
CREATE TABLE facility_inspection_reports
(
    InspectionID        INTEGER PRIMARY KEY,
    FacilityID          TEXT,
    InspectionDate      DATE,
    InspectorName       TEXT,
    InspectionType      TEXT,
    OverallRating       INTEGER,
    SafetyScore         INTEGER,
    CleanlinessScore    INTEGER,
    MaintenanceIssues   TEXT,
    FollowUpRequired    INTEGER,
    FollowUpDate        DATE,
    ReportURL           TEXT,
    Comments            TEXT,
    BuildingName        TEXT,
    FloorNumber         INTEGER,
    AreaSqFt            REAL,
    HVACStatus          TEXT,
    ElectricalStatus    TEXT,
    PlumbingStatus      TEXT,
    FireSafetyStatus    TEXT,
    LastModified        DATE
);

INSERT INTO facility_inspection_reports VALUES (2001, 'F001', '2023-01-10', 'JohnDoe', 'Annual', 8, 9, 7, 'Window seals cracked', 1, '2023-02-15', 'http://example.com/report2001', 'All other systems functional', 'Main Hall', 1, 15000.0, 'Good', 'Good', 'Good', 'Good', '2023-01-10');
INSERT INTO facility_inspection_reports VALUES (2002, 'F015', '2023-02-05', 'JaneSmith', 'Safety', 9, 10, 9, 'None', 0, NULL, 'http://example.com/report2002', 'Excellent condition', 'Science Building', 2, 12000.0, 'Excellent', 'Excellent', 'Excellent', 'Excellent', '2023-02-05');
INSERT INTO facility_inspection_reports VALUES (2003, 'F007', '2023-03-12', 'MikeBrown', 'Fire', 7, 6, 8, 'Fire alarms outdated', 1, '2023-04-20', 'http://example.com/report2003', 'Replace alarms soon', 'Gymnasium', 0, 18000.0, 'Fair', 'Fair', 'Fair', 'Needs Upgrade', '2023-03-12');

-- Digital learning resources table
CREATE TABLE digital_learning_resources
(
    ResourceID          INTEGER PRIMARY KEY,
    Title               TEXT,
    ResourceType        TEXT,
    Provider            TEXT,
    LicenseType         TEXT,
    AccessURL           TEXT,
    GradeLevel          TEXT,
    SubjectArea         TEXT,
    DurationMinutes    INTEGER,
    Format              TEXT,
    Cost                REAL,
    IsFree              INTEGER,
    LastUpdated         DATE,
    Description         TEXT,
    Language            TEXT,
    Accreditation       TEXT,
    Version             TEXT,
    ExpirationDate      DATE,
    IntegrationPlatform TEXT,
    MetadataTags        TEXT
);

INSERT INTO digital_learning_resources VALUES (3001, 'Algebra Basics', 'Course', 'Khan Academy', 'Free', 'http://khanacademy.org/algebra', '9-12', 'Mathematics', 120, 'Video', 0.0, 1, '2023-01-01', 'Introductory algebra concepts', 'English', 'None', 'v1.0', NULL, 'LMS', 'math,algebra,video');
INSERT INTO digital_learning_resources VALUES (3002, 'World History Interactive', 'Simulation', 'Minds On', 'Subscription', 'http://mindson.com/worldhistory', '6-8', 'Social Studies', 45, 'Interactive', 250.00, 0, '2023-02-10', 'Interactive timeline of world events', 'English', 'Accredited', 'v2.3', '2024-02-09', 'Web', 'history,simulation,interactive');
INSERT INTO digital_learning_resources VALUES (3003, 'Reading Comprehension eBook', 'eBook', 'Pearson', 'License', 'http://pearson.com/readingebook', 'K-3', 'Reading', 0, 'PDF', 150.00, 0, '2023-03-05', 'PDF collection of leveled readers', 'English', 'Accredited', 'v5.1', NULL, 'PDF Viewer', 'reading,ebook,kids');

-- Sports team rosters table
CREATE TABLE sports_team_rosters
(
    RosterID            INTEGER PRIMARY KEY,
    TeamID              TEXT,
    Season              TEXT,
    Sport               TEXT,
    PlayerID            TEXT,
    PlayerFirstName     TEXT,
    PlayerLastName      TEXT,
    Position            TEXT,
    JerseyNumber        INTEGER,
    Grade               TEXT,
    HeightInches        INTEGER,
    WeightLbs           INTEGER,
    ParentContact       TEXT,
    Email               TEXT,
    Phone               TEXT,
    EligibilityStatus   TEXT,
    IsStarter           INTEGER,
    GamesPlayed         INTEGER,
    PointsPerGame       REAL,
    LastUpdated         DATE
);

INSERT INTO sports_team_rosters VALUES (4001, 'T001', '2022-2023', 'Basketball', 'P100', 'Alex', 'Johnson', 'Guard', 12, '11', 72, 150, 'ParentOne', 'parent1@example.com', '5551234567', 'Eligible', 1, 20, 15.2, '2023-01-20');
INSERT INTO sports_team_rosters VALUES (4002, 'T001', '2022-2023', 'Basketball', 'P101', 'Mia', 'Lee', 'Forward', 23, '12', 68, 140, 'ParentTwo', 'parent2@example.com', '5552345678', 'Eligible', 0, 15, 9.8, '2023-01-20');
INSERT INTO sports_team_rosters VALUES (4003, 'T002', '2022-2023', 'Soccer', 'P200', 'Ethan', 'Smith', 'Midfielder', 7, '10', 66, 130, 'ParentThree', 'parent3@example.com', '5553456789', 'Eligible', 1, 18, 0.0, '2023-01-22');

-- Parent volunteer hours table
CREATE TABLE parent_volunteer_hours
(
    RecordID            INTEGER PRIMARY KEY,
    ParentID            TEXT,
    SchoolID            TEXT,
    EventID             TEXT,
    VolunteerDate       DATE,
    HoursContributed    REAL,
    Role                TEXT,
    Comments            TEXT,
    ApprovedBy          TEXT,
    ApprovalDate        DATE,
    ContactPhone        TEXT,
    ContactEmail        TEXT,
    IsRecurring         INTEGER,
    TotalHoursYearToDate REAL,
    Season              TEXT,
    Department          TEXT,
    ShiftStart          TEXT,
    ShiftEnd            TEXT,
    Location            TEXT,
    LastModified        DATE,
    Notes               TEXT
);

INSERT INTO parent_volunteer_hours VALUES (6001, 'P001', 'SC001', 'E001', '2023-02-15', 4.0, 'Chaperone', 'Assisted with field trip', 'Coordinator', '2023-02-16', '5551112222', 'parent1@example.com', 0, 4.0, 'Spring', 'Field Trips', '08:00', '12:00', 'Museum', '2023-02-16', '');
INSERT INTO parent_volunteer_hours VALUES (6002, 'P002', 'SC001', 'E002', '2023-03-10', 2.5, 'Snack Vendor', '', 'Coordinator', '2023-03-11', '5552223333', 'parent2@example.com', 0, 6.5, 'Spring', 'Events', '10:00', '12:30', 'Gym', '2023-03-11', '');
INSERT INTO parent_volunteer_hours VALUES (6003, 'P003', 'SC001', 'E003', '2023-04-05', 3.0, 'Library Helper', 'Organized books', 'Coordinator', '2023-04-06', '5553334444', 'parent3@example.com', 1, 9.5, 'Spring', 'Library', '09:00', '12:00', 'Library', '2023-04-06', '');

-- Environmental monitoring table
CREATE TABLE environmental_monitoring
(
    MonitoringID        INTEGER PRIMARY KEY,
    SiteID              TEXT,
    MeasurementDate     DATE,
    TemperatureC        REAL,
    HumidityPct         REAL,
    CO2ppm              REAL,
    PM25ugm3            REAL,
    NoiseDb             REAL,
    LightLux            REAL,
    SoilMoisturePct     REAL,
    WindSpeedMps        REAL,
    WindDirection       TEXT,
    RainfallMm          REAL,
    SampleTakenBy       TEXT,
    InstrumentID        TEXT,
    CalibrationDate     DATE,
    Status              TEXT,
    Comments            TEXT,
    Latitude            REAL,
    Longitude           REAL,
    LastUpdated         DATE
);

INSERT INTO environmental_monitoring VALUES (7001, 'S001', '2023-03-01', 22.5, 45.0, 420.0, 12.5, 55.0, 15000.0, 30.0, 3.2, 'NE', 0.0, 'TechA', 'INST001', '2022-12-01', 'OK', 'No issues', 34.0522, -118.2437, '2023-03-01');
INSERT INTO environmental_monitoring VALUES (7002, 'S002', '2023-03-01', 18.0, 55.0, 380.0, 10.0, 48.0, 12000.0, 25.0, 2.5, 'S', 0.2, 'TechB', 'INST002', '2022-11-15', 'OK', 'Slight increase in humidity', 36.7783, -119.4179, '2023-03-01');
INSERT INTO environmental_monitoring VALUES (7003, 'S003', '2023-03-01', 25.3, 40.0, 460.0, 14.0, 60.0, 16000.0, 35.0, 3.8, 'W', 0.0, 'TechC', 'INST003', '2022-10-20', 'OK', 'All within normal range', 34.4208, -119.6982, '2023-03-01');

-- Grant award history table
CREATE TABLE grant_award_history
(
    GrantAwardID        INTEGER PRIMARY KEY,
    GrantID             TEXT,
    SchoolID            TEXT,
    AwardYear           TEXT,
    AmountAwarded       REAL,
    FundingAgency       TEXT,
    ProgramName         TEXT,
    Purpose             TEXT,
    StartDate           DATE,
    EndDate             DATE,
    PrincipalInvestigator TEXT,
    ContactEmail        TEXT,
    ContactPhone        TEXT,
    ReportingFrequency TEXT,
    LastReportDate      DATE,
    Status              TEXT,
    IsRenewable         INTEGER,
    RenewalSubmitted    INTEGER,
    RenewalDecisionDate DATE,
    Notes               TEXT,
    LastUpdated         DATE
);

INSERT INTO grant_award_history VALUES (8001, 'G100', 'SC001', '2022', 50000.00, 'ED.gov', 'STEM Initiative', 'Improve STEM labs', '2022-07-01', '2025-06-30', 'DrAllen', 'allen@example.com', '5557778888', 'Annual', '2023-06-30', 'Active', 1, 0, NULL, '', '2023-01-10');
INSERT INTO grant_award_history VALUES (8002, 'G101', 'SC001', '2021', 75000.00, 'Foundation X', 'Arts Expansion', 'Expand arts curriculum', '2021-01-15', '2024-01-14', 'MsBaker', 'baker@example.com', '5558889999', 'SemiAnnual', '2023-01-15', 'Active', 1, 1, '2023-02-01', 'Renewal submitted', '2023-01-20');
INSERT INTO grant_award_history VALUES (8003, 'G102', 'SC001', '2020', 30000.00, 'Local Business', 'Community Outreach', 'After-school tutoring', '2020-09-01', '2023-08-31', 'MrClark', 'clark@example.com', '5559990000', 'Annual', '2022-09-01', 'Closed', 0, 0, NULL, 'Program completed', '2023-01-05');

-- After school staff shifts table
CREATE TABLE after_school_staff_shifts
(
    ShiftID             INTEGER PRIMARY KEY,
    StaffID             TEXT,
    ProgramID           TEXT,
    ShiftDate           DATE,
    StartTime           TEXT,
    EndTime             TEXT,
    Role                TEXT,
    AssignedRoom        TEXT,
    StudentCount        INTEGER,
    SupervisorName      TEXT,
    IsOvertime          INTEGER,
    PayRate             REAL,
    TotalPay            REAL,
    Notes               TEXT,
    AttendanceRecorded  INTEGER,
    CheckInTime         TEXT,
    CheckOutTime        TEXT,
    ShiftStatus         TEXT,
    LastModified        DATE,
    Remarks             TEXT
);

INSERT INTO after_school_staff_shifts VALUES (9001, 'ST001', 'PRG001', '2023-04-10', '15:00', '18:00', 'Tutor', 'Room101', 12, 'MsDavis', 0, 20.0, 60.0, '', 1, '15:00', '18:00', 'Completed', '2023-04-10', '');
INSERT INTO after_school_staff_shifts VALUES (9002, 'ST002', 'PRG002', '2023-04-10', '15:30', '19:30', 'Coach', 'Gym', 20, 'MrEvans', 1, 22.0, 88.0, 'Overtime due to rain delay', 1, '15:30', '19:30', 'Completed', '2023-04-10', '');
INSERT INTO after_school_staff_shifts VALUES (9003, 'ST003', 'PRG003', '2023-04-11', '16:00', '19:00', 'Mentor', 'Room202', 8, 'MsFoster', 0, 18.0, 54.0, '', 0, NULL, NULL, 'Scheduled', '2023-04-11', '');-- Teacher training modules
CREATE TABLE teacher_training_modules
(
    ModuleID            TEXT    NOT NULL PRIMARY KEY,
    ModuleName          TEXT    NULL,
    ModuleDescription   TEXT    NULL,
    DurationHours       INTEGER NULL,
    DeliveryMode        TEXT    NULL,
    Provider            TEXT    NULL,
    StartDate           DATE    NULL,
    EndDate             DATE    NULL,
    Credits             INTEGER NULL,
    TargetAudience      TEXT    NULL,
    PrerequisiteModules TEXT    NULL,
    MaxParticipants     INTEGER NULL,
    EnrollmentCount     INTEGER NULL,
    CompletionRate      REAL    NULL,
    EvaluationScore     REAL    NULL,
    CostUSD             REAL    NULL,
    IsMandatory         INTEGER NULL,
    CreatedDate         DATE    NULL,
    UpdatedDate         DATE    NULL,
    ActiveFlag          INTEGER NULL
);

INSERT INTO teacher_training_modules VALUES ('TM001','ClassroomTech','Introduction to classroom technology',40,'Online','EduTechCo','2024-01-15','2024-02-15',2,'Teachers',NULL,30,28,0.95,4.5,1200,1,'2024-01-01','2024-01-20',1);
INSERT INTO teacher_training_modules VALUES ('TM002','InclusivePedagogy','Strategies for inclusive teaching',24,'InPerson','InclusionWorks','2024-03-01','2024-03-25',1,'Teachers',NULL,25,22,0.88,4.2,800,0,'2024-02-20','2024-03-01',1);
INSERT INTO teacher_training_modules VALUES ('TM003','DataDriven','Using data to improve instruction',30,'Hybrid','DataLearners','2024-04-10','2024-05-05',3,'Teachers,Admins',NULL,20,18,0.90,4.7,1500,1,'2024-04-01','2024-04-12',1);

-- Student extracurricular budget
CREATE TABLE student_extracurricular_budget
(
    BudgetID          TEXT    NOT NULL PRIMARY KEY,
    FiscalYear        TEXT    NULL,
    ActivityCategory  TEXT    NULL,
    PlannedAmount     REAL    NULL,
    ActualAmount      REAL    NULL,
    Variance          REAL    NULL,
    FundingSource     TEXT    NULL,
    ApprovedBy        TEXT    NULL,
    ApprovalDate      DATE    NULL,
    Notes             TEXT    NULL,
    AllocationDate    DATE    NULL,
    RevisedAmount     REAL    NULL,
    ExpenditureDate   DATE    NULL,
    ExpenseCategory   TEXT    NULL,
    Vendor            TEXT    NULL,
    ReceiptNumber     TEXT    NULL,
    CreatedBy         TEXT    NULL,
    CreatedDate       DATE    NULL,
    UpdatedBy         TEXT    NULL,
    UpdatedDate       DATE    NULL
);

INSERT INTO student_extracurricular_budget VALUES ('EB001','2024','Sports',15000,14200,-800,'DistrictFund','Superintendent','2024-01-10','Adjusted for venue costs','2024-01-15',14800,'2024-03-20','Equipment','SportSuppliesCo','RC1001','FinanceDept','2024-01-05','FinanceDept','2024-03-25');
INSERT INTO student_extracurricular_budget VALUES ('EB002','2024','Arts',8000,8200,200,'GrantABC','ArtsDirector','2024-01-12','Extra for materials','2024-01-18',8100,'2024-04-05','Supplies','ArtSupplyInc','RC2002','ArtsDept','2024-01-07','ArtsDept','2024-04-10');
INSERT INTO student_extracurricular_budget VALUES ('EB003','2024','Clubs',5000,4700,-300,'CommunityDonations','ClubCoordinator','2024-01-20','Reduced due to lower enrollment','2024-01-25',4950,'2024-02-28','Venue','CommunityHall','RC3003','ClubsDept','2024-01-15','ClubsDept','2024-03-01');

-- Facility cleaning schedule
CREATE TABLE facility_cleaning_schedule
(
    ScheduleID          TEXT    NOT NULL PRIMARY KEY,
    FacilityID          TEXT    NULL,
    DayOfWeek           TEXT    NULL,
    ShiftStart          TEXT    NULL,
    ShiftEnd            TEXT    NULL,
    CleanerTeam         TEXT    NULL,
    Supervisor          TEXT    NULL,
    CleaningType        TEXT    NULL,
    ChecklistVersion    TEXT    NULL,
    LastPerformed       DATE    NULL,
    NextDue             DATE    NULL,
    HoursSpent          REAL    NULL,
    SuppliesUsed        TEXT    NULL,
    Comments            TEXT    NULL,
    CreatedDate         DATE    NULL,
    UpdatedDate         DATE    NULL,
    ActiveFlag          INTEGER NULL,
    PriorityLevel       INTEGER NULL,
    FrequencyDays       INTEGER NULL,
    ZoneCode            TEXT    NULL
);

INSERT INTO facility_cleaning_schedule VALUES ('CS001','F001','Monday','08:00','12:00','TeamA','JohnDoe','General','v1','2024-02-05','2024-03-05',4,'Detergent, Mops','All good','2024-01-15','2024-02-01',1,2,30,'Z01');
INSERT INTO facility_cleaning_schedule VALUES ('CS002','F002','Wednesday','14:00','18:00','TeamB','JaneSmith','Deep','v2','2024-02-07','2024-03-07',4,'Disinfectant, Vacuums','Carpet cleaning required','2024-01-20','2024-02-03',1,1,30,'Z02');
INSERT INTO facility_cleaning_schedule VALUES ('CS003','F003','Friday','22:00','02:00','TeamC','MikeLee','Night','v1','2024-02-09','2024-03-09',4,'FloorPolish','Lights off during cleaning','2024-01-25','2024-02-05',1,3,30,'Z03');

-- School community partnerships
CREATE TABLE school_community_partnerships
(
    PartnershipID      TEXT    NOT NULL PRIMARY KEY,
    SchoolID           TEXT    NULL,
    PartnerOrgName     TEXT    NULL,
    PartnerOrgType     TEXT    NULL,
    ContactName        TEXT    NULL,
    ContactPhone       TEXT    NULL,
    ContactEmail       TEXT    NULL,
    StartDate          DATE    NULL,
    EndDate            DATE    NULL,
    AgreementType      TEXT    NULL,
    FundingAmount      REAL    NULL,
    ResourcesProvided  TEXT    NULL,
    JointPrograms      TEXT    NULL,
    EvaluationMetric   TEXT    NULL,
    Status             TEXT    NULL,
    CreatedDate        DATE    NULL,
    UpdatedDate        DATE    NULL,
    Notes              TEXT    NULL,
    RenewalFlag        INTEGER NULL,
    PartnershipLevel   TEXT    NULL
);

INSERT INTO school_community_partnerships VALUES ('PP001','S001','LocalLibrary','Library','SarahKim','5551234','sarah@library.org','2023-09-01','2025-08-31','MOU',12000,'Books,ReadingSpace','AfterSchoolReading','Attendance','Active','2023-08-15','2024-01-10','Positive impact','1','High');
INSERT INTO school_community_partnerships VALUES ('PP002','S002','HealthClinic','Medical','TomAllen','5555678','tom@clinic.org','2024-01-15','2026-01-14','Contract',20000,'HealthScreenings','WellnessDays','HealthMetrics','Active','2024-01-01','2024-02-20','Annual health fairs','0','Medium');
INSERT INTO school_community_partnerships VALUES ('PP003','S003','TechCorp','Corporate','LindaBrown','5559012','linda@techcorp.com','2022-05-01','2024-04-30','Sponsorship',50000,'Laptops, Training','STEMClub','PerformanceScores','Expired','2022-04-20','2024-01-05','Equipment donated','0','Low');

-- District technology inventory audit
CREATE TABLE district_technology_inventory_audit
(
    AuditID            TEXT    NOT NULL PRIMARY KEY,
    DeviceID           TEXT    NULL,
    DeviceType         TEXT    NULL,
    SerialNumber       TEXT    NULL,
    AssetTag           TEXT    NULL,
    PurchaseDate       DATE    NULL,
    WarrantyEndDate    DATE    NULL,
    AssignedTo         TEXT    NULL,
    Department         TEXT    NULL,
    CurrentStatus      TEXT    NULL,
    LastServiceDate    DATE    NULL,
    ServiceProvider    TEXT    NULL,
    ConditionScore     INTEGER NULL,
    DepreciationValue  REAL    NULL,
    Location           TEXT    NULL,
    AuditorName        TEXT    NULL,
    AuditDate          DATE    NULL,
    Findings           TEXT    NULL,
    Recommendations    TEXT    NULL,
    IsCompliant        INTEGER NULL
);

INSERT INTO district_technology_inventory_audit VALUES ('AI001','D1001','Laptop','SN12345','AT1001','2021-08-01','2024-08-01','TeacherA','IT','Operational','2024-01-15','TechServCo',8,1500,'Room101','AuditorJohn','2024-02-10','Battery wear noted','Replace battery','1');
INSERT INTO district_technology_inventory_audit VALUES ('AI002','D2002','Projector','SN67890','AT2002','2020-05-10','2023-05-10','RoomB','Science','NeedsRepair','2023-12-20','RepairCo',5,800,'Lab2','AuditorJane','2024-02-12','Lens scratched','Service lens','0');
INSERT INTO district_technology_inventory_audit VALUES ('AI003','D3003','Tablet','SN54321','AT3003','2022-01-20','2025-01-20','StudentC','Math','Operational','2024-01-30','DeviceCare',9,400,'Bus3','AuditorMike','2024-02-15','All good','No action needed','1');

-- Environmental impact reports
CREATE TABLE environmental_impact_reports
(
    ReportID                     TEXT    NOT NULL PRIMARY KEY,
    DistrictID                   TEXT    NULL,
    ReportYear                   TEXT    NULL,
    CO2EmissionsMetric           REAL    NULL,
    EnergyConsumptionKWh         REAL    NULL,
    WaterUsageGallons            REAL    NULL,
    WasteGeneratedTonnes         REAL    NULL,
    RecyclingRate                REAL    NULL,
    GreenSpaceAcres              REAL    NULL,
    AirQualityIndex              REAL    NULL,
    NoiseLevelDB                 REAL    NULL,
    SolarInstallationCapacityKW  REAL    NULL,
    WindInstallationCapacityKW   REAL    NULL,
    ProgramInitiatives           TEXT    NULL,
    Recommendations              TEXT    NULL,
    PreparedBy                   TEXT    NULL,
    ReviewDate                   DATE    NULL,
    ApprovedBy                   TEXT    NULL,
    Status                       TEXT    NULL,
    CreatedDate                  DATE    NULL
);

INSERT INTO environmental_impact_reports VALUES ('ER001','D001','2023',12500,350000,800000,45,0.35,120,42,55,500,0,'SolarPanels, Recycling','Increase solar capacity','EnvTeam','2024-01-20','DirectorEco','Submitted','2024-01-15');
INSERT INTO environmental_impact_reports VALUES ('ER002','D002','2023',9800,280000,650000,30,0.40,95,38,48,300,0,'LEDLighting, Composting','Upgrade HVAC','SustainabilityUnit','2024-01-22','Superintendent','Approved','2024-01-18');
INSERT INTO environmental_impact_reports VALUES ('ER003','D003','2023',11200,320000,720000,38,0.33,110,40,52,450,0,'BikePrograms, TreePlanting','Reduce water use','EcoDept','2024-01-25','BoardChair','Pending','2024-01-20');

-- School mental health resources
CREATE TABLE school_mental_health_resources
(
    ResourceID           TEXT    NOT NULL PRIMARY KEY,
    SchoolID             TEXT    NULL,
    ResourceType         TEXT    NULL,
    ProviderName         TEXT    NULL,
    ContactPhone         TEXT    NULL,
    ContactEmail         TEXT    NULL,
    ServiceHours         TEXT    NULL,
    EligibilityCriteria TEXT    NULL,
    ReferralProcess      TEXT    NULL,
    Capacity             INTEGER NULL,
    CurrentUtilization   INTEGER NULL,
    WaitlistCount        INTEGER NULL,
    FundingSource        TEXT    NULL,
    CostPerSession       REAL    NULL,
    EvaluationScore      REAL    NULL,
    CreatedDate          DATE    NULL,
    UpdatedDate          DATE    NULL,
    ActiveFlag           INTEGER NULL,
    Notes                TEXT    NULL,
    ConfidentialLevel    TEXT    NULL
);

INSERT INTO school_mental_health_resources VALUES ('MH001','S001','Counseling','WellCare','5551111','well@care.org','Mon-Fri 8-5','All students','Self referral','10','7','3','DistrictGrant',0,'4.6','2024-01-05','2024-02-01',1,'Positive feedback','High');
INSERT INTO school_mental_health_resources VALUES ('MH002','S002','GroupTherapy','MindSpace','5552222','info@mindspace.com','Tue/Thu 13-15','Grades 9-12','Teacher recommendation','5','5','0','StateFund',0,'4.8','2024-01-10','2024-02-05',1,'Full capacity','Medium');
INSERT INTO school_mental_health_resources VALUES ('MH003','S003','Psych Evaluation','HealthFirst','5553333','contact@healthfirst.com','Wed 10-12','Referral required','Counselor referral','3','1','2','FederalAid',150,'4.2','2024-01-12','2024-02-08',1,'Need more staff','Low');

-- District staffing levels
CREATE TABLE district_staffing_levels
(
    RecordID            TEXT    NOT NULL PRIMARY KEY,
    DistrictID          TEXT    NULL,
    FiscalYear          TEXT    NULL,
    PositionTitle       TEXT    NULL,
    PositionCode        TEXT    NULL,
    FullTimeEquivalent  REAL    NULL,
    Vacancies           INTEGER NULL,
    NewHireCount        INTEGER NULL,
    TurnoverRate        REAL    NULL,
    AvgSalary           REAL    NULL,
    BudgetedFTE         REAL    NULL,
    ActualFTE           REAL    NULL,
    OverstaffedFlag     INTEGER NULL,
    UnderstaffedFlag    INTEGER NULL,
    Department          TEXT    NULL,
    SupervisorID        TEXT    NULL,
    CreatedDate         DATE    NULL,
    UpdatedDate         DATE    NULL,
    Notes               TEXT    NULL,
    IsActive            INTEGER NULL
);

INSERT INTO district_staffing_levels VALUES ('SL001','D001','2024','Teacher','T001',250.0,5,10,0.04,55000,260.0,255.0,0,0,'Education','SUP001','2024-01-01','2024-02-01','Stable staffing',1);
INSERT INTO district_staffing_levels VALUES ('SL002','D001','2024','Administrator','A001',30.0,2,3,0.06,85000,32.0,31.0,0,0,'Administration','SUP002','2024-01-01','2024-02-02','Minor vacancies',1);
INSERT INTO district_staffing_levels VALUES ('SL003','D001','2024','SupportStaff','S001',45.0,1,5,0.02,40000,46.0,45.5,0,0,'Support','SUP003','2024-01-01','2024-02-03','Full coverage',1);

-- Student award recognition
CREATE TABLE student_award_recognition
(
    AwardID            TEXT    NOT NULL PRIMARY KEY,
    StudentID          TEXT    NULL,
    AwardName          TEXT    NULL,
    AwardCategory      TEXT    NULL,
    AwardDate          DATE    NULL,
    Level              TEXT    NULL,
    Description        TEXT    NULL,
    Sponsor            TEXT    NULL,
    GiftAmount         REAL    NULL,
    IsRenewable        INTEGER NULL,
    RenewalDate        DATE    NULL,
    ExpirationDate     DATE    NULL,
    Criteria           TEXT    NULL,
    SelectionProcess   TEXT    NULL,
    PresentedBy        TEXT    NULL,
    Remarks            TEXT    NULL,
    CreatedDate        DATE    NULL,
    UpdatedDate        DATE    NULL,
    Status             TEXT    NULL,
    ConfidentialFlag  INTEGER NULL
);

INSERT INTO student_award_recognition VALUES ('AR001','STU001','Science Olympiad','Academic','2024-03-15','State','Top performer in biology','ScienceDept',0,0,NULL,NULL,'Competition results','Judges panel','Principal','Well deserved','2024-02-20','2024-03-01','Awarded',0);
INSERT INTO student_award_recognition VALUES ('AR002','STU002','Community Service Hero','Service','2024-04-10','National','100+ volunteer hours','CommunityPartners',500,1,'2025-04-10','2026-04-10','Volunteer log','Community board','Mayor','Outstanding impact','2024-03-01','2024-04-01','Pending Renewal',1);
INSERT INTO student_award_recognition VALUES ('AR003','STU003','Artistic Excellence','Arts','2024-02-25','Regional','Best visual art portfolio','ArtsFoundation',0,0,NULL,NULL,'Portfolio review','Panel of artists','ArtTeacher','Creative and innovative','2024-02-01','2024-02-15','Awarded',0);

-- Facility accessibility features
CREATE TABLE facility_accessibility_features
(
    FeatureID            TEXT    NOT NULL PRIMARY KEY,
    FacilityID           TEXT    NULL,
    FeatureType          TEXT    NULL,
    Description          TEXT    NULL,
    InstallationDate     DATE    NULL,
    LastInspectionDate   DATE    NULL,
    InspectionResult     TEXT    NULL,
    ComplianceStatus     TEXT    NULL,
    AccessibilityScore   INTEGER NULL,
    MaintenanceSchedule  TEXT    NULL,
    ResponsibleDept      TEXT    NULL,
    FundingSource        TEXT    NULL,
    Cost                 REAL    NULL,
    ContractorName       TEXT    NULL,
    WarrantyEndDate      DATE    NULL,
    CreatedDate          DATE    NULL,
    UpdatedDate          DATE    NULL,
    IsActive             INTEGER NULL,
    Notes                TEXT    NULL,
    RegionCode           TEXT    NULL
);

INSERT INTO facility_accessibility_features VALUES ('AF001','F001','Ramp','Wheelchair ramp at main entrance','2022-06-01','2024-01-10','Pass','Compliant',9,'Annual','Facilities','GrantXYZ',25000,'BuildItCo','2027-06-01','2024-01-01','2024-02-01',1,'Good condition','R01');
INSERT INTO facility_accessibility_features VALUES ('AF002','F002','Elevator','Elevator serving all floors','2020-03-15','2024-01-20','Pass','Compliant',8,'Biannual','Facilities','DistrictBudget',120000,'ElevateLtd','2025-03-15','2024-01-05','2024-02-05',1,'Scheduled maintenance due','R02');
INSERT INTO facility_accessibility_features VALUES ('AF003','F003','BrailleSigns','Braille signage in hallway','2021-09-30','2024-02-05','Pass','Compliant',7,'Quarterly','Facilities','CommunityFund',8000,'SignagePro','2024-09-30','2024-01-20','2024-02-10',1,'No issues','R03');