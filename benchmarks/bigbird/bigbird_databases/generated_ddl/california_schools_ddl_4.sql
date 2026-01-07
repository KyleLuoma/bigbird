-- Table: school_facilities_maintenance_log
CREATE TABLE school_facilities_maintenance_log
(
    MaintenanceID            TEXT NOT NULL PRIMARY KEY,
    FacilityID               TEXT NULL,
    MaintenanceDate          DATE NULL,
    RequestorName            TEXT NULL,
    IssueCategory            TEXT NULL,
    IssueDescription         TEXT NULL,
    PriorityLevel            TEXT NULL,
    Status                   TEXT NULL,
    CompletionDate           DATE NULL,
    VendorName               TEXT NULL,
    Cost                     REAL NULL,
    WorkOrderNumber          TEXT NULL,
    HoursSpent               REAL NULL,
    MaterialsUsed            TEXT NULL,
    FollowUpRequired         INTEGER NULL,
    FollowUpDate             DATE NULL,
    SupervisorName           TEXT NULL,
    Comments                 TEXT NULL,
    CreatedTimestamp         DATE NULL,
    UpdatedTimestamp         DATE NULL
);

INSERT INTO school_facilities_maintenance_log
(MaintenanceID, FacilityID, MaintenanceDate, RequestorName, IssueCategory, IssueDescription, PriorityLevel, Status, CompletionDate, VendorName, Cost, WorkOrderNumber, HoursSpent, MaterialsUsed, FollowUpRequired, FollowUpDate, SupervisorName, Comments, CreatedTimestamp, UpdatedTimestamp)
VALUES
('MNT001','F001','2023-09-01','John Doe','Plumbing','Leaking faucet in restroom', 'High','Completed','2023-09-02','AquaFix',150.75,'WO12345',2.5,'PipeSealant',0,NULL,'Jane Smith','Replaced O-ring', '2023-09-01','2023-09-02');

INSERT INTO school_facilities_maintenance_log
(MaintenanceID, FacilityID, MaintenanceDate, RequestorName, IssueCategory, IssueDescription, PriorityLevel, Status, CompletionDate, VendorName, Cost, WorkOrderNumber, HoursSpent, MaterialsUsed, FollowUpRequired, FollowUpDate, SupervisorName, Comments, CreatedTimestamp, UpdatedTimestamp)
VALUES
('MNT002','F002','2023-09-05','Emily Clark','Electrical','Flickering hallway lights', 'Medium','InProgress',NULL,'BrightElectrics',80.00,'WO12346',1.8,'BulbReplacementKit',1,'2023-09-15','Mark Lee','Awaiting parts', '2023-09-05','2023-09-07');

INSERT INTO school_facilities_maintenance_log
(MaintenanceID, FacilityID, MaintenanceDate, RequestorName, IssueCategory, IssueDescription, PriorityLevel, Status, CompletionDate, VendorName, Cost, WorkOrderNumber, HoursSpent, MaterialsUsed, FollowUpRequired, FollowUpDate, SupervisorName, Comments, CreatedTimestamp, UpdatedTimestamp)
VALUES
('MNT003','F003','2023-09-10','Sarah Kim','HVAC','Air conditioning not cooling', 'High','Pending',NULL,'CoolAir Services',0.00,'WO12347',0,NULL,1,'2023-09-20','Tom Rivera','Quote pending', '2023-09-10','2023-09-12');

-- Table: district_transportation_schedule
CREATE TABLE district_transportation_schedule
(
    ScheduleID          TEXT NOT NULL PRIMARY KEY,
    RouteID             TEXT NULL,
    VehicleID           TEXT NULL,
    DriverID            TEXT NULL,
    DepartureTime       TEXT NULL,
    ArrivalTime         TEXT NULL,
    ServiceDate         DATE NULL,
    DayOfWeek           TEXT NULL,
    Season              TEXT NULL,
    Capacity            INTEGER NULL,
    EstimatedPassengers INTEGER NULL,
    ActualPassengers    INTEGER NULL,
    RouteLengthMiles    REAL NULL,
    FuelType            TEXT NULL,
    MaintenanceFlag     INTEGER NULL,
    Shift               TEXT NULL,
    RouteNotes          TEXT NULL,
    CreatedDate         DATE NULL,
    ModifiedDate        DATE NULL,
    IsActive            INTEGER NULL
);

INSERT INTO district_transportation_schedule
(ScheduleID, RouteID, VehicleID, DriverID, DepartureTime, ArrivalTime, ServiceDate, DayOfWeek, Season, Capacity, EstimatedPassengers, ActualPassengers, RouteLengthMiles, FuelType, MaintenanceFlag, Shift, RouteNotes, CreatedDate, ModifiedDate, IsActive)
VALUES
('SCH001','R001','V001','D001','07:00','07:45','2023-09-12','Tuesday','Fall',50,30,28,12.5,'Diesel',0,'Morning','On time', '2023-08-01','2023-09-01',1);

INSERT INTO district_transportation_schedule
(ScheduleID, RouteID, VehicleID, DriverID, DepartureTime, ArrivalTime, ServiceDate, DayOfWeek, Season, Capacity, EstimatedPassengers, ActualPassengers, RouteLengthMiles, FuelType, MaintenanceFlag, Shift, RouteNotes, CreatedDate, ModifiedDate, IsActive)
VALUES
('SCH002','R002','V002','D002','08:15','09:00','2023-09-13','Wednesday','Fall',45,35,33,10.2,'Electric',0,'Morning','Battery check completed', '2023-08-02','2023-09-02',1);

INSERT INTO district_transportation_schedule
(ScheduleID, RouteID, VehicleID, DriverID, DepartureTime, ArrivalTime, ServiceDate, DayOfWeek, Season, Capacity, EstimatedPassengers, ActualPassengers, RouteLengthMiles, FuelType, MaintenanceFlag, Shift, RouteNotes, CreatedDate, ModifiedDate, IsActive)
VALUES
('SCH003','R003','V003','D003','15:30','16:15','2023-09-14','Thursday','Fall',40,20,18,8.7,'Hybrid',1,'Afternoon','Minor engine issue noted', '2023-08-03','2023-09-03',0);

-- Table: community_partner_projects
CREATE TABLE community_partner_projects
(
    ProjectID           TEXT NOT NULL PRIMARY KEY,
    PartnerID           TEXT NULL,
    ProjectName         TEXT NULL,
    StartDate           DATE NULL,
    EndDate             DATE NULL,
    FundingSource       TEXT NULL,
    TotalBudget         REAL NULL,
    AllocatedAmount     REAL NULL,
    ProjectPhase        TEXT NULL,
    LeadContactName     TEXT NULL,
    LeadContactEmail    TEXT NULL,
    ProjectStatus       TEXT NULL,
    ImpactScore         INTEGER NULL,
    CommunityArea       TEXT NULL,
    TargetPopulation    TEXT NULL,
    DeliverablesCount   INTEGER NULL,
    ReportingFrequency  TEXT NULL,
    RiskLevel           TEXT NULL,
    Notes               TEXT NULL,
    CreatedOn           DATE NULL,
    UpdatedOn           DATE NULL
);

INSERT INTO community_partner_projects
(ProjectID, PartnerID, ProjectName, StartDate, EndDate, FundingSource, TotalBudget, AllocatedAmount, ProjectPhase, LeadContactName, LeadContactEmail, ProjectStatus, ImpactScore, CommunityArea, TargetPopulation, DeliverablesCount, ReportingFrequency, RiskLevel, Notes, CreatedOn, UpdatedOn)
VALUES
('PRJ001','PT001','AfterSchool STEM Initiative','2023-01-15','2023-12-15','Grant','50000','35000','Implementation','Laura Green','laura.green@example.com','Active',85,'Northside','MiddleSchoolStudents',12,'Quarterly','Medium','Phase 2 started', '2023-01-10','2023-09-01');

INSERT INTO community_partner_projects
(ProjectID, PartnerID, ProjectName, StartDate, EndDate, FundingSource, TotalBudget, AllocatedAmount, ProjectPhase, LeadContactName, LeadContactEmail, ProjectStatus, ImpactScore, CommunityArea, TargetPopulation, DeliverablesCount, ReportingFrequency, RiskLevel, Notes, CreatedOn, UpdatedOn)
VALUES
('PRJ002','PT002','Community Garden Program','2022-04-01','2024-03-31','Donation','20000','15000','Planning','Mike Torres','mike.torres@example.com','Planning',70,'Eastside','HighSchoolStudents',8,'Monthly','Low','Securing land lease', '2022-03-20','2023-08-15');

INSERT INTO community_partner_projects
(ProjectID, PartnerID, ProjectName, StartDate, EndDate, FundingSource, TotalBudget, AllocatedAmount, ProjectPhase, LeadContactName, LeadContactEmail, ProjectStatus, ImpactScore, CommunityArea, TargetPopulation, DeliverablesCount, ReportingFrequency, RiskLevel, Notes, CreatedOn, UpdatedOn)
VALUES
('PRJ003','PT003','Health Awareness Campaign','2023-05-01','2023-11-30','Federal','30000','30000','Execution','Sandra Lee','sandra.lee@example.com','Active',90,'Southside','AllStudents',5,'BiMonthly','High','Coordination with local clinics', '2023-04-25','2023-09-05');

-- Table: student_health_screenings
CREATE TABLE student_health_screenings
(
    ScreeningID             TEXT NOT NULL PRIMARY KEY,
    StudentID               TEXT NULL,
    ScreeningDate           DATE NULL,
    HeightCm                REAL NULL,
    WeightKg                REAL NULL,
    BMI                     REAL NULL,
    VisionLeft              REAL NULL,
    VisionRight             REAL NULL,
    HearingLeftDb           REAL NULL,
    HearingRightDb          REAL NULL,
    BloodPressureSystolic   INTEGER NULL,
    BloodPressureDiastolic  INTEGER NULL,
    ImmunizationStatus      TEXT NULL,
    Allergies               TEXT NULL,
    ChronicConditions       TEXT NULL,
    Notes                   TEXT NULL,
    NurseID                 TEXT NULL,
    FollowUpNeeded          INTEGER NULL,
    FollowUpDate            DATE NULL,
    CreatedAt               DATE NULL
);

INSERT INTO student_health_screenings
(ScreeningID, StudentID, ScreeningDate, HeightCm, WeightKg, BMI, VisionLeft, VisionRight, HearingLeftDb, HearingRightDb, BloodPressureSystolic, BloodPressureDiastolic, ImmunizationStatus, Allergies, ChronicConditions, Notes, NurseID, FollowUpNeeded, FollowUpDate, CreatedAt)
VALUES
('SCR001','STU001','2023-09-10',150.0,45.0,20.0,20.0,20.0,15.0,15.0,110,70,'Complete','Peanuts','Asthma','No concerns', 'NR001',0,NULL,'2023-09-10');

INSERT INTO student_health_screenings
(ScreeningID, StudentID, ScreeningDate, HeightCm, WeightKg, BMI, VisionLeft, VisionRight, HearingLeftDb, HearingRightDb, BloodPressureSystolic, BloodPressureDiastolic, ImmunizationStatus, Allergies, ChronicConditions, Notes, NurseID, FollowUpNeeded, FollowUpDate, CreatedAt)
VALUES
('SCR002','STU002','2023-09-12',160.0,60.0,23.4,18.5,18.5,20.0,20.0,115,75,'Pending','None','Diabetes','Recommend diet counseling', 'NR002',1,'2023-09-20','2023-09-12');

INSERT INTO student_health_screenings
(ScreeningID, StudentID, ScreeningDate, HeightCm, WeightKg, BMI, VisionLeft, VisionRight, HearingLeftDb, HearingRightDb, BloodPressureSystolic, BloodPressureDiastolic, ImmunizationStatus, Allergies, ChronicConditions, Notes, NurseID, FollowUpNeeded, FollowUpDate, CreatedAt)
VALUES
('SCR003','STU003','2023-09-15',145.0,50.0,23.8,21.0,21.0,18.0,18.0,120,80,'Complete','Latex','None','Vision within normal range', 'NR003',0,NULL,'2023-09-15');

-- Table: teacher_professional_development_sessions
CREATE TABLE teacher_professional_development_sessions
(
    SessionID           TEXT NOT NULL PRIMARY KEY,
    TeacherID           TEXT NULL,
    SessionDate         DATE NULL,
    SessionTitle        TEXT NULL,
    Provider            TEXT NULL,
    DurationHours       REAL NULL,
    CEUCredits          REAL NULL,
    DeliveryMode        TEXT NULL,
    TopicCategory       TEXT NULL,
    Location            TEXT NULL,
    EvaluationScore     INTEGER NULL,
    MaterialsProvided   TEXT NULL,
    FollowUpActions     TEXT NULL,
    Cost                REAL NULL,
    FundingSource       TEXT NULL,
    SeatsAvailable      INTEGER NULL,
    SeatsFilled         INTEGER NULL,
    IsMandatory         INTEGER NULL,
    CreatedOn           DATE NULL,
    UpdatedOn           DATE NULL,
    Comments            TEXT NULL
);

INSERT INTO teacher_professional_development_sessions
(SessionID, TeacherID, SessionDate, SessionTitle, Provider, DurationHours, CEUCredits, DeliveryMode, TopicCategory, Location, EvaluationScore, MaterialsProvided, FollowUpActions, Cost, FundingSource, SeatsAvailable, SeatsFilled, IsMandatory, CreatedOn, UpdatedOn, Comments)
VALUES
('TPS001','T001','2023-09-05','Differentiated Instruction','EduCo','4',2,'InPerson','Instructional Strategies','Room 101',85,'Handouts, Slide Deck','Apply three strategies in classroom','250','SchoolBudget',20,18,1,'2023-08-20','2023-09-05','Well received');

INSERT INTO teacher_professional_development_sessions
(SessionID, TeacherID, SessionDate, SessionTitle, Provider, DurationHours, CEUCredits, DeliveryMode, TopicCategory, Location, EvaluationScore, MaterialsProvided, FollowUpActions, Cost, FundingSource, SeatsAvailable, SeatsFilled, IsMandatory, CreatedOn, UpdatedOn, Comments)
VALUES
('TPS002','T002','2023-09-10','Tech Integration Basics','TechEd','3',1.5,'Webinar','Technology','Online',90,'Recording, PDF Guide','Integrate tools in next unit','150','Grant',30,30,0,'2023-08-25','2023-09-10','High attendance');

INSERT INTO teacher_professional_development_sessions
(SessionID, TeacherID, SessionDate, SessionTitle, Provider, DurationHours, CEUCredits, DeliveryMode, TopicCategory, Location, EvaluationScore, MaterialsProvided, FollowUpActions, Cost, FundingSource, SeatsAvailable, SeatsFilled, IsMandatory, CreatedOn, UpdatedOn, Comments)
VALUES
('TPS003','T003','2023-09-12','Classroom Management Strategies','LeadershipInc','2',1,'InPerson','Classroom Management','Room 202',78,'Workbook','Implement new behavior chart','200','SchoolBudget',15,12,1,'2023-08-30','2023-09-12','Feedback requested');

-- Table: school_energy_consumption_daily
CREATE TABLE school_energy_consumption_daily
(
    RecordID               TEXT NOT NULL PRIMARY KEY,
    SchoolID               TEXT NULL,
    RecordDate             DATE NULL,
    ElectricityKWh         REAL NULL,
    GasTherms              REAL NULL,
    WaterGallons           REAL NULL,
    SolarGenerationKWh     REAL NULL,
    PeakDemandKW           REAL NULL,
    AvgTempC               REAL NULL,
    WeatherCondition      TEXT NULL,
    EnergyCostUSD          REAL NULL,
    CO2EmissionsKg        REAL NULL,
    MeterReadingStart      REAL NULL,
    MeterReadingEnd        REAL NULL,
    Notes                  TEXT NULL,
    CreatedTimestamp       DATE NULL,
    UpdatedTimestamp       DATE NULL,
    DataSource             TEXT NULL,
    IsEstimated            INTEGER NULL,
    ValidationFlag         INTEGER NULL
);

INSERT INTO school_energy_consumption_daily
(RecordID, SchoolID, RecordDate, ElectricityKWh, GasTherms, WaterGallons, SolarGenerationKWh, PeakDemandKW, AvgTempC, WeatherCondition, EnergyCostUSD, CO2EmissionsKg, MeterReadingStart, MeterReadingEnd, Notes, CreatedTimestamp, UpdatedTimestamp, DataSource, IsEstimated, ValidationFlag)
VALUES
('REC001','SCH001','2023-09-01',1200.5,300.0,15000.0,200.0,85.0,22.5,'Sunny',350.75,500.0,5000.0,6200.5,'Normal day','2023-09-01','2023-09-01','Meter',0,1);

INSERT INTO school_energy_consumption_daily
(RecordID, SchoolID, RecordDate, ElectricityKWh, GasTherms, WaterGallons, SolarGenerationKWh, PeakDemandKW, AvgTempC, WeatherCondition, EnergyCostUSD, CO2EmissionsKg, MeterReadingStart, MeterReadingEnd, Notes, CreatedTimestamp, UpdatedTimestamp, DataSource, IsEstimated, ValidationFlag)
VALUES
('REC002','SCH002','2023-09-01',950.0,250.0,13000.0,150.0,78.0,20.0,'Cloudy',280.40,420.0,4000.0,4950.0,'Cloud cover reduced solar','2023-09-01','2023-09-01','Meter',0,1);

INSERT INTO school_energy_consumption_daily
(RecordID, SchoolID, RecordDate, ElectricityKWh, GasTherms, WaterGallons, SolarGenerationKWh, PeakDemandKW, AvgTempC, WeatherCondition, EnergyCostUSD, CO2EmissionsKg, MeterReadingStart, MeterReadingEnd, Notes, CreatedTimestamp, UpdatedTimestamp, DataSource, IsEstimated, ValidationFlag)
VALUES
('REC003','SCH003','2023-09-01',800.0,200.0,11000.0,0.0,70.0,18.5,'Rain','240.00',360.0,3000.0,3800.0,'No solar generation due to rain','2023-09-01','2023-09-01','Meter',0,1);

-- Table: library_digital_media_usage
CREATE TABLE library_digital_media_usage
(
    UsageID            TEXT NOT NULL PRIMARY KEY,
    LibraryID          TEXT NULL,
    MediaID            TEXT NULL,
    MediaType          TEXT NULL,
    UserID             TEXT NULL,
    CheckoutDate       DATE NULL,
    ReturnDate         DATE NULL,
    DurationDays       INTEGER NULL,
    AccessMethod       TEXT NULL,
    DeviceType         TEXT NULL,
    LicenseStatus      TEXT NULL,
    CostPerUseUSD      REAL NULL,
    Category           TEXT NULL,
    Title              TEXT NULL,
    Author             TEXT NULL,
    Publisher          TEXT NULL,
    YearPublished      INTEGER NULL,
    SubjectArea        TEXT NULL,
    Notes              TEXT NULL,
    CreatedAt          DATE NULL,
    UpdatedAt          DATE NULL
);

INSERT INTO library_digital_media_usage
(UsageID, LibraryID, MediaID, MediaType, UserID, CheckoutDate, ReturnDate, DurationDays, AccessMethod, DeviceType, LicenseStatus, CostPerUseUSD, Category, Title, Author, Publisher, YearPublished, SubjectArea, Notes, CreatedAt, UpdatedAt)
VALUES
('U001','LIB001','MD001','eBook','STU001','2023-09-01','2023-09-15',14,'Online','Tablet','Active',0.00,'Science','The Universe Explained','Jane Goodall','SciPress',2020,'Astronomy','No issues','2023-09-01','2023-09-15');

INSERT INTO library_digital_media_usage
(UsageID, LibraryID, MediaID, MediaType, UserID, CheckoutDate, ReturnDate, DurationDays, AccessMethod, DeviceType, LicenseStatus, CostPerUseUSD, Category, Title, Author, Publisher, YearPublished, SubjectArea, Notes, CreatedAt, UpdatedAt)
VALUES
('U002','LIB001','MD002','AudioBook','STU002','2023-09-05','2023-09-12',7,'Online','Smartphone','Active',0.00,'Literature','Pride and Prejudice','Jane Austen','ClassicPub',1813,'English Literature','Preferred narrator','2023-09-05','2023-09-12');

INSERT INTO library_digital_media_usage
(UsageID, LibraryID, MediaID, MediaType, UserID, CheckoutDate, ReturnDate, DurationDays, AccessMethod, DeviceType, LicenseStatus, CostPerUseUSD, Category, Title, Author, Publisher, YearPublished, SubjectArea, Notes, CreatedAt, UpdatedAt)
VALUES
('U003','LIB001','MD003','Video','STU003','2023-09-08','2023-09-15',7,'Streaming','Laptop','Active',0.00,'Education','Introduction to Algebra','Math Dept','EduVideos',2022,'Mathematics','Used for homework help','2023-09-08','2023-09-15');

-- Table: extracurricular_club_memberships
CREATE TABLE extracurricular_club_memberships
(
    MembershipID        TEXT NOT NULL PRIMARY KEY,
    StudentID           TEXT NULL,
    ClubID              TEXT NULL,
    JoinDate            DATE NULL,
    Role                TEXT NULL,
    AttendanceCount     INTEGER NULL,
    LeadershipPosition  TEXT NULL,
    HoursContributed    REAL NULL,
    MentorID            TEXT NULL,
    Status              TEXT NULL,
    EndDate             DATE NULL,
    ReasonForLeaving    TEXT NULL,
    Achievements        TEXT NULL,
    AwardsCount         INTEGER NULL,
    SponsorName         TEXT NULL,
    SponsorContact      TEXT NULL,
    MeetingFrequency    TEXT NULL,
    LastMeetingDate     DATE NULL,
    CreatedOn           DATE NULL,
    UpdatedOn           DATE NULL
);

INSERT INTO extracurricular_club_memberships
(MembershipID, StudentID, ClubID, JoinDate, Role, AttendanceCount, LeadershipPosition, HoursContributed, MentorID, Status, EndDate, ReasonForLeaving, Achievements, AwardsCount, SponsorName, SponsorContact, MeetingFrequency, LastMeetingDate, CreatedOn, UpdatedOn)
VALUES
('M001','STU001','CLB001','2022-09-01','Member',30,NULL,15.0,'MT001','Active',NULL,NULL,'Regional Competition Qualifier',2,'TechCorp','contact@techcorp.com','Weekly','2023-09-10','2022-09-01','2023-09-10');

INSERT INTO extracurricular_club_memberships
(MembershipID, StudentID, ClubID, JoinDate, Role, AttendanceCount, LeadershipPosition, HoursContributed, MentorID, Status, EndDate, ReasonForLeaving, Achievements, AwardsCount, SponsorName, SponsorContact, MeetingFrequency, LastMeetingDate, CreatedOn, UpdatedOn)
VALUES
('M002','STU002','CLB002','2021-09-15','President',45,'President',25.0,'MT002','Active',NULL,NULL,'State Championship Winners',5,'ArtSupplyCo','info@artsupplyco.com','BiWeekly','2023-09-08','2021-09-15','2023-09-08');

INSERT INTO extracurricular_club_memberships
(MembershipID, StudentID, ClubID, JoinDate, Role, AttendanceCount, LeadershipPosition, HoursContributed, MentorID, Status, EndDate, ReasonForLeaving, Achievements, AwardsCount, SponsorName, SponsorContact, MeetingFrequency, LastMeetingDate, CreatedOn, UpdatedOn)
VALUES
('M003','STU003','CLB003','2023-01-10','Member',10,NULL,5.0,'MT003','Inactive','2023-06-30','Graduated','None',0,'CommunityCenter','center@example.com','Monthly','2023-06-20','2023-01-10','2023-06-30');

-- Table: school_budget_forecast
CREATE TABLE school_budget_forecast
(
    ForecastID          TEXT NOT NULL PRIMARY KEY,
    SchoolID            TEXT NULL,
    FiscalYear          TEXT NULL,
    BudgetCategory      TEXT NULL,
    ProjectedAmountUSD  REAL NULL,
    AdjustedAmountUSD   REAL NULL,
    VarianceUSD         REAL NULL,
    ApprovalStatus      TEXT NULL,
    ApprovedBy          TEXT NULL,
    ApprovalDate        DATE NULL,
    SubmittedBy         TEXT NULL,
    SubmissionDate      DATE NULL,
    Notes               TEXT NULL,
    ConfidenceLevel     INTEGER NULL,
    Scenario            TEXT NULL,
    InflationRate       REAL NULL,
    RevenueSource       TEXT NULL,
    ExpenseType         TEXT NULL,
    CreatedOn           DATE NULL,
    UpdatedOn           DATE NULL
);

INSERT INTO school_budget_forecast
(ForecastID, SchoolID, FiscalYear, BudgetCategory, ProjectedAmountUSD, AdjustedAmountUSD, VarianceUSD, ApprovalStatus, ApprovedBy, ApprovalDate, SubmittedBy, SubmissionDate, Notes, ConfidenceLevel, Scenario, InflationRate, RevenueSource, ExpenseType, CreatedOn, UpdatedOn)
VALUES
('BF001','SCH001','2024','Instructional','500000','480000','-20000','Pending','Superintendent','2023-09-01','FinanceMgr','2023-08-20','Awaiting board review',80,'Base','0.03','StateFunding','Salaries','2023-08-20','2023-09-01');

INSERT INTO school_budget_forecast
(ForecastID, SchoolID, FiscalYear, BudgetCategory, ProjectedAmountUSD, AdjustedAmountUSD, VarianceUSD, ApprovalStatus, ApprovedBy, ApprovalDate, SubmittedBy, SubmissionDate, Notes, ConfidenceLevel, Scenario, InflationRate, RevenueSource, ExpenseType, CreatedOn, UpdatedOn)
VALUES
('BF002','SCH002','2024','Facilities','200000','210000','10000','Approved','BoardChair','2023-09-05','FacilitiesMgr','2023-08-22','Include roof replacement',90,'Optimistic','0.025','LocalTaxes','Maintenance','2023-08-22','2023-09-05');

INSERT INTO school_budget_forecast
(ForecastID, SchoolID, FiscalYear, BudgetCategory, ProjectedAmountUSD, AdjustedAmountUSD, VarianceUSD, ApprovalStatus, ApprovedBy, ApprovalDate, SubmittedBy, SubmissionDate, Notes, ConfidenceLevel, Scenario, InflationRate, RevenueSource, ExpenseType, CreatedOn, UpdatedOn)
VALUES
('BF003','SCH003','2024','Technology','150000','145000','-5000','Pending','TechDirector','2023-09-03','TechMgr','2023-08-25','Plan to upgrade lab computers',85,'Base','0.03','Grant','Equipment','2023-08-25','2023-09-03');

-- Table: environmental_sensor_calibrations
CREATE TABLE environmental_sensor_calibrations
(
    CalibrationID          TEXT NOT NULL PRIMARY KEY,
    SensorID               TEXT NULL,
    SensorType             TEXT NULL,
    CalibrationDate        DATE NULL,
    TechnicianID           TEXT NULL,
    CalibrationMethod      TEXT NULL,
    OffsetValue            REAL NULL,
    ScaleFactor            REAL NULL,
    TemperatureCompensation REAL NULL,
    HumidityCompensation   REAL NULL,
    CalibrationResult      TEXT NULL,
    NextDueDate            DATE NULL,
    DocumentationLink      TEXT NULL,
    Comments               TEXT NULL,
    CreatedOn              DATE NULL,
    UpdatedOn              DATE NULL,
    IsVerified             INTEGER NULL,
    VerificationDate       DATE NULL,
    CalibrationLab         TEXT NULL,
    CalibrationCostUSD     REAL NULL
);

INSERT INTO environmental_sensor_calibrations
(CalibrationID, SensorID, SensorType, CalibrationDate, TechnicianID, CalibrationMethod, OffsetValue, ScaleFactor, TemperatureCompensation, HumidityCompensation, CalibrationResult, NextDueDate, DocumentationLink, Comments, CreatedOn, UpdatedOn, IsVerified, VerificationDate, CalibrationLab, CalibrationCostUSD)
VALUES
('CAL001','SEN001','Temperature','2023-08-15','TECH001','Standard','0.02','1.0005','0.1','0.05','Pass','2024-08-15','doc001.pdf','Routine calibration', '2023-08-15','2023-08-15',1,'2023-08-16','LabA',120.00);

INSERT INTO environmental_sensor_calibrations
(CalibrationID, SensorID, SensorType, CalibrationDate, TechnicianID, CalibrationMethod, OffsetValue, ScaleFactor, TemperatureCompensation, HumidityCompensation, CalibrationResult, NextDueDate, DocumentationLink, Comments, CreatedOn, UpdatedOn, IsVerified, VerificationDate, CalibrationLab, CalibrationCostUSD)
VALUES
('CAL002','SEN002','CO2','2023-07-20','TECH002','Advanced','-0.05','0.998','0.2','0.1','Pass','2024-07-20','doc002.pdf','Adjusted scale factor', '2023-07-20','2023-07-20',1,'2023-07-21','LabB',150.00);

INSERT INTO environmental_sensor_calibrations
(CalibrationID, SensorID, SensorType, CalibrationDate, TechnicianID, CalibrationMethod, OffsetValue, ScaleFactor, TemperatureCompensation, HumidityCompensation, CalibrationResult, NextDueDate, DocumentationLink, Comments, CreatedOn, UpdatedOn, IsVerified, VerificationDate, CalibrationLab, CalibrationCostUSD)
VALUES
('CAL003','SEN003','Humidity','2023-06-10','TECH003','Standard','0.01','1.002','0.15','0.07','Fail','2023-12-10','doc003.pdf','Recalibration needed', '2023-06-10','2023-06-10',0,NULL,'LabC',130.00);