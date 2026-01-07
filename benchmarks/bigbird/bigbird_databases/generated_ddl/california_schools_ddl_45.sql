-- District Staff Training Programs
CREATE TABLE district_staff_training_programs (
    ProgramID TEXT PRIMARY KEY,
    DistrictCode INTEGER,
    ProgramName TEXT,
    StartDate DATE,
    EndDate DATE,
    TrainerName TEXT,
    TrainerOrg TEXT,
    TrainingFormat TEXT,
    TargetAudience TEXT,
    SeatsAvailable INTEGER,
    SeatsFilled INTEGER,
    CostPerParticipant REAL,
    TotalCost REAL,
    Accreditation TEXT,
    CEUCredits INTEGER,
    OnlineAccessLink TEXT,
    MaterialsProvided TEXT,
    EvaluationScore REAL,
    FeedbackComments TEXT,
    LastUpdated DATE
);

INSERT INTO district_staff_training_programs VALUES ('TP001',101,'Leadership Essentials','2024-03-01','2024-03-05','Maria Lopez','EduConsult','InPerson','Administrators',30,28,250.00,7500.00,'StateApproved',5,'http://training.school.gov/lead','Handouts,Slides',4.5,'Very useful',CURRENT_DATE);
INSERT INTO district_staff_training_programs VALUES ('TP002',102,'Data Privacy Workshop','2024-04-10','2024-04-12','James Kim','SecureTech','Virtual','ITStaff',40,35,150.00,5250.00,'Federal',3,'http://training.school.gov/privacy','PDFGuide',4.2,'Good content',CURRENT_DATE);
INSERT INTO district_staff_training_programs VALUES ('TP003',103,'Special Ed Inclusion','2024-05-15','2024-05-18','Linda Chen','InclusionCo','Hybrid','Teachers',25,20,200.00,5000.00,'StateApproved',4,'http://training.school.gov/specialed','WorkshopKit',4.7,'Excellent',CURRENT_DATE);

-- School Energy Grid Connections
CREATE TABLE school_energy_grid_connections (
    ConnectionID TEXT PRIMARY KEY,
    SchoolCDSCode TEXT,
    GridProvider TEXT,
    ConnectionType TEXT,
    VoltageLevel REAL,
    PhaseCount INTEGER,
    MeterNumber TEXT,
    InstallationDate DATE,
    LastInspectionDate DATE,
    CapacityKW REAL,
    CurrentLoadKW REAL,
    RenewableSourcePct REAL,
    ContractStartDate DATE,
    ContractEndDate DATE,
    ServiceStatus TEXT,
    MaintenanceSchedule TEXT,
    AvgMonthlyCost REAL,
    AvgMonthlyUsageKWh REAL,
    EmissionFactor REAL,
    DataLastRefreshed DATE
);

INSERT INTO school_energy_grid_connections VALUES ('GC001','001234567','PowerCo','Primary',120.0,3,'MTR12345','2020-08-15','2023-07-20',500.0,350.0,15.0,'2020-08-01','2025-07-31','Active','Quarterly','1200.75','4500.0',0.45,CURRENT_DATE);
INSERT INTO school_energy_grid_connections VALUES ('GC002','001234568','EnergyPlus','Secondary',240.0,2,'MTR12346','2021-02-10','2023-06-12',300.0,210.0,0.0,'2021-02-01','2026-01-31','Active','SemiAnnual','850.40','3000.0',0.55,CURRENT_DATE);
INSERT INTO school_energy_grid_connections VALUES ('GC003','001234569','GreenGrid','Primary',120.0,3,'MTR12347','2019-11-05','2023-05-05',400.0,380.0,40.0,'2019-11-01','2024-10-31','Active','Annual','950.20','3800.0',0.30,CURRENT_DATE);

-- Community Fitness Center Usage
CREATE TABLE community_fitness_center_usage (
    UsageID TEXT PRIMARY KEY,
    CenterName TEXT,
    FacilityCode TEXT,
    Date DATE,
    MemberID TEXT,
    MembershipType TEXT,
    CheckInTime TEXT,
    CheckOutTime TEXT,
    ActivitiesParticipated TEXT,
    DurationMinutes INTEGER,
    CaloriesBurned REAL,
    HeartRateAvg INTEGER,
    TrainerOnDuty TEXT,
    EquipmentUsed TEXT,
    ClassesAttended INTEGER,
    FeedbackScore REAL,
    Comments TEXT,
    StaffNotes TEXT,
    DataEntryUser TEXT,
    EntryTimestamp DATE
);

INSERT INTO community_fitness_center_usage VALUES ('U001','Northside Gym','FC001','2024-02-20','M001','Adult','08:05','09:15','Treadmill,Weightlifting',70,450.0,130,'John Doe','Treadmill,FreeWeights',1,4.5,'Great session','No issues','admin1',CURRENT_DATE);
INSERT INTO community_fitness_center_usage VALUES ('U002','Eastside Wellness','FC002','2024-02-21','M002','Senior','10:00','11:30','Yoga,Stretching',90,300.0,95,'Jane Smith','YogaMat',2,4.8,'Very relaxed','Ok','admin2',CURRENT_DATE);
INSERT INTO community_fitness_center_usage VALUES ('U003','Westside Recreation','FC003','2024-02-22','M003','Student','15:20','16:00','Basketball',40,350.0,120,'Mike Lee','BasketballCourt',0,4.0,'Intense game','Needs equipment check','admin3',CURRENT_DATE);

-- District Transportation Accident Stats
CREATE TABLE district_transportation_accident_stats (
    AccidentID TEXT PRIMARY KEY,
    DistrictCode INTEGER,
    VehicleID TEXT,
    AccidentDate DATE,
    AccidentTime TEXT,
    LocationDescription TEXT,
    WeatherCondition TEXT,
    RoadSurface TEXT,
    SeverityLevel TEXT,
    Injuries INTEGER,
    Fatalities INTEGER,
    DamageCost REAL,
    PoliceReportNumber TEXT,
    RespondingAgency TEXT,
    IncidentType TEXT,
    DriverExperienceYears INTEGER,
    VehicleAgeYears INTEGER,
    SeatbeltUsed TEXT,
    SpeedAtImpact REAL,
    FollowUpAction TEXT
);

INSERT INTO district_transportation_accident_stats VALUES ('A001',101,'V001','2023-11-05','14:30','5th Ave near Main St','Clear','Dry','Minor',0,0,2500.00,'PR123456','PoliceDept','RearEnd',5,3,'Yes',35.0,'RepairCompleted');
INSERT INTO district_transportation_accident_stats VALUES ('A002',102,'V002','2023-12-12','08:15','Parkway Rd at Oak St','Snow','Wet','Major',2,0,17500.00,'PR123789','PoliceDept','SideSwipe',2,7,'No',45.0,'SafetyReview');
INSERT INTO district_transportation_accident_stats VALUES ('A003',103,'V003','2024-01-20','22:45','Highway 12 near exit 8','Fog','Dry','Critical',3,1,55000.00,'PR124001','StatePolice','HeadOn',10,4,'Yes',60.0,'LegalAction');

-- School Environmental Waste Tracking
CREATE TABLE school_environmental_waste_tracking (
    WasteRecordID TEXT PRIMARY KEY,
    SchoolCDSCode TEXT,
    ReportYear INTEGER,
    ReportMonth INTEGER,
    WasteType TEXT,
    QuantityKg REAL,
    DisposalMethod TEXT,
    RecyclingRatePct REAL,
    HazardousFlag TEXT,
    ContractorName TEXT,
    ContractID TEXT,
    CollectionDate DATE,
    LandfillSite TEXT,
    Notes TEXT,
    VerifiedBy TEXT,
    VerificationDate DATE,
    DataEntryUser TEXT,
    EntryTimestamp DATE,
    AuditStatus TEXT,
    FollowUpAction TEXT
);

INSERT INTO school_environmental_waste_tracking VALUES ('WR001','001234567',2023,11,'Paper',1200.5,'Recycling',85.0,'No','EcoClean','C001','2023-11-30','GreenLandfill','All good','AuditorA','2023-12-05','staff1',CURRENT_DATE,'Approved','None');
INSERT INTO school_environmental_waste_tracking VALUES ('WR002','001234568',2023,12,'Electronics',45.2,'SpecialDisposal',100.0,'Yes','TechDispose','C002','2023-12-20','TechLandfill','Handled with care','AuditorB','2023-12-25','staff2',CURRENT_DATE,'Approved','Monitor');
INSERT INTO school_environmental_waste_tracking VALUES ('WR003','001234569',2024,1,'Food',800.0,'Compost',90.0,'No','GreenBite','C003','2024-01-15','CompostSite','Minor contamination','AuditorC','2024-01-20','staff3',CURRENT_DATE,'Pending','Review');

-- Alumni Career Pathways Analysis
CREATE TABLE alumni_career_pathways_analysis (
    AlumniID TEXT PRIMARY KEY,
    GraduationYear INTEGER,
    DegreeEarned TEXT,
    CurrentEmployer TEXT,
    IndustrySector TEXT,
    JobTitle TEXT,
    SalaryBracket TEXT,
    EmploymentStatus TEXT,
    YearsSinceGraduation INTEGER,
    HighestCertifications TEXT,
    ProfessionalMemberships TEXT,
    RelocationStatus TEXT,
    RemoteWorkFlag TEXT,
    AvgWeeklyHours INTEGER,
    CareerProgressionScore REAL,
    MentorFlag TEXT,
    AlumniContactEmail TEXT,
    LastSurveyDate DATE,
    DataEntryUser TEXT,
    EntryTimestamp DATE
);

INSERT INTO alumni_career_pathways_analysis VALUES ('ALU001',2015,'Bachelors','TechCorp','Information Technology','Software Engineer','70k-80k','FullTime',9,'AWS Certified','IEEE','No','Yes',40,4.2,'Yes','alum1@example.com','2023-11-10','analyst1',CURRENT_DATE);
INSERT INTO alumni_career_pathways_analysis VALUES ('ALU002',2018,'Masters','HealthPlus','Healthcare','Data Analyst','60k-70k','FullTime',6,'CertifiedHealthData','HIMSS','Yes','No',38,3.8,'No','alum2@example.com','2023-12-01','analyst2',CURRENT_DATE);
INSERT INTO alumni_career_pathways_analysis VALUES ('ALU003',2020,'Bachelors','EcoSolutions','Environmental Services','Project Coordinator','50k-60k','PartTime',4,'LEED Green Associate','NONE','No','Yes',30,3.5,'Yes','alum3@example.com','2024-01-15','analyst3',CURRENT_DATE);

-- Public Art Installation Maintenance
CREATE TABLE public_art_installation_maintenance (
    InstallationID TEXT PRIMARY KEY,
    SiteName TEXT,
    ArtistName TEXT,
    InstallationDate DATE,
    Material TEXT,
    Dimensions TEXT,
    LastInspectionDate DATE,
    ConditionRating INTEGER,
    MaintenancePerformed TEXT,
    MaintenanceDate DATE,
    Contractor TEXT,
    Cost REAL,
    WarrantyEndDate DATE,
    VandalismFlag TEXT,
    LightingStatus TEXT,
    AccessibilityNotes TEXT,
    GPSLatitude REAL,
    GPSLongitude REAL,
    DataEntryUser TEXT,
    EntryTimestamp DATE
);

INSERT INTO public_art_installation_maintenance VALUES ('AI001','Central Plaza','Anna Lee','2018-06-12','Bronze','5x3ft','2023-09-10',8,'Cleaning','2023-09-10','ArtCare','1200.00','2028-06-12','No','Operational','WheelchairAccessible',40.7128,-74.0060,'maint1',CURRENT_DATE);
INSERT INTO public_art_installation_maintenance VALUES ('AI002','Riverfront Park','Miguel Santos','2020-04-22','Steel','10x6ft','2023-08-05',7,'TouchUpPaint','2023-08-05','SteelWorks','1800.00','2025-04-22','Yes','Operational','NearWaterAccess',34.0522,-118.2437,'maint2',CURRENT_DATE);
INSERT INTO public_art_installation_maintenance VALUES ('AI003','East Library','Sofia Patel','2019-11-30','Glass','3x2ft','2023-07-15',9,'GlassPolish','2023-07-15','ClearView','900.00','2024-11-30','No','LED','Indoor','41.8781','-87.6298','maint3',CURRENT_DATE);

-- City Parks Event Schedule
CREATE TABLE city_parks_event_schedule (
    EventID TEXT PRIMARY KEY,
    ParkName TEXT,
    EventName TEXT,
    EventDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    Organizer TEXT,
    TargetAudience TEXT,
    ExpectedAttendance INTEGER,
    RegistrationRequired TEXT,
    FeeAmount REAL,
    Sponsor TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    PermitNumber TEXT,
    WeatherContingencyPlan TEXT,
    EquipmentNeeded TEXT,
    AccessibilityInfo TEXT,
    DataEntryUser TEXT,
    EntryTimestamp DATE
);

INSERT INTO city_parks_event_schedule VALUES ('EV001','Maple Grove','Summer Concert','2024-07-10','18:00','20:30','CityArts','All','1500','Yes','15.00','MusicCo','5551234567','events@example.com','PN001','RainDateShift','Stage,Sound','Wheelchair','sched1',CURRENT_DATE);
INSERT INTO city_parks_event_schedule VALUES ('EV002','Lakeside','Yoga in the Park','2024-04-05','07:00','08:30','WellnessGroup','Adults','200','No','0.00','HealthOrg','5559876543','yoga@example.com','PN002','Postpone','Mats','Grass','sched2',CURRENT_DATE);
INSERT INTO city_parks_event_schedule VALUES ('EV003','River Walk','Art Fair','2024-09-20','10:00','17:00','ArtistsAlliance','Families','800','No','0.00','ArtSupplyCo','5552223333','artfair@example.com','PN003','IndoorVenue','Booths,Canopies','AccessiblePaths','sched3',CURRENT_DATE);

-- Technology Innovation Grant Applications
CREATE TABLE technology_innovation_grant_applications (
    ApplicationID TEXT PRIMARY KEY,
    ApplicantOrg TEXT,
    ProjectTitle TEXT,
    FundingAgency TEXT,
    RequestedAmount REAL,
    ApprovedAmount REAL,
    ApplicationDate DATE,
    DecisionDate DATE,
    ProjectStartDate DATE,
    ProjectEndDate DATE,
    LeadContactName TEXT,
    LeadContactEmail TEXT,
    ProjectSummary TEXT,
    TechnologyDomain TEXT,
    CollaborationFlag TEXT,
    PartnerOrgs TEXT,
    Status TEXT,
    ReviewScore REAL,
    Comments TEXT,
    DataEntryUser TEXT
);

INSERT INTO technology_innovation_grant_applications VALUES ('GA001','TechEd Labs','AI Tutoring System','StateTechFund',250000.00,200000.00,'2023-09-15','2023-10-01','2024-01-01','2026-12-31','Laura Kim','lkim@techedlabs.org','Develop AI-driven personalized tutoring','Artificial Intelligence','Yes','UniversityX,NonProfitY','Approved',4.5,'Strong proposal','grantofficer1');
INSERT INTO technology_innovation_grant_applications VALUES ('GA002','GreenEnergy Inc','Solar Powered School Bus','FederalEnergyGrant',500000.00,0.00,'2023-11-20','2024-02-10','2024-06-01','2027-05-31','Mark Patel','mpatel@greenenergy.com','Design and deploy solar buses','Renewable Energy','No','','Pending',0.0,'Under review','grantofficer2');
INSERT INTO technology_innovation_grant_applications VALUES ('GA003','OpenLearn','VR Classroom Platform','EducationInnovation',150000.00,150000.00,'2022-08-05','2022-09-15','2023-01-15','2025-12-15','Emily Zhao','ezhao@openlearn.org','Create immersive VR lessons','Virtual Reality','Yes','VRStudio,ContentCo','Funded',4.8,'Excellent technical plan','grantofficer3');

-- Regional Air Quality Sensor Calibrations
CREATE TABLE regional_air_quality_sensor_calibrations (
    CalibrationID TEXT PRIMARY KEY,
    SensorID TEXT,
    SiteName TEXT,
    CalibrationDate DATE,
    TechnicianName TEXT,
    CalibrationMethod TEXT,
    OffsetPPM REAL,
    ScaleFactor REAL,
    TemperatureC REAL,
    HumidityPct REAL,
    PressurehPa REAL,
    CalibrationCertificateNumber TEXT,
    NextCalibrationDue DATE,
    CalibrationStatus TEXT,
    Notes TEXT,
    DataEntryUser TEXT,
    EntryTimestamp DATE,
    QAReviewer TEXT,
    ReviewDate DATE,
    ApprovalStatus TEXT
);

INSERT INTO regional_air_quality_sensor_calibrations VALUES ('CAL001','AQ001','North Hill','2023-12-01','John Miller','ZeroSpan','0.05',1.002,22.0,45.0,1013.25','CERT123','2024-12-01','Completed','Routine calibration','tech1',CURRENT_DATE,'reviewerA','2023-12-02','Approved');
INSERT INTO regional_air_quality_sensor_calibrations VALUES ('CAL002','AQ002','East Valley','2023-11-15','Sara Lee','Dynamic','-0.02',0.998,20.5,50.0,1012.80','CERT124','2024-11-15','Completed','Adjusted for drift','tech2',CURRENT_DATE,'reviewerB','2023-11-16','Approved');
INSERT INTO regional_air_quality_sensor_calibrations VALUES ('CAL003','AQ003','South Plains','2024-01-10','Mike Davis','ZeroSpan','0.00',1.000,18.0,55.0,1011.90','CERT125','2025-01-10','Completed','No issues','tech3',CURRENT_DATE,'reviewerC','2024-01-11','Approved');

-- School Community Partnership Projects
CREATE TABLE school_community_partnership_projects (
    ProjectID TEXT PRIMARY KEY,
    SchoolCDSCode TEXT,
    PartnerOrganization TEXT,
    ProjectName TEXT,
    StartDate DATE,
    EndDate DATE,
    ProjectLead TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Description TEXT,
    FundingSource TEXT,
    FundingAmount REAL,
    InKindContribution REAL,
    ExpectedOutcomes TEXT,
    StudentParticipants INTEGER,
    StaffVolunteers INTEGER,
    CommunityVolunteers INTEGER,
    EvaluationMethod TEXT,
    Status TEXT,
    LastUpdated DATE,
    DataEntryUser TEXT
);

INSERT INTO school_community_partnership_projects VALUES ('PRJ001','001234567','Local Library','Reading Buddies','2023-09-01','2024-06-30','Anna Green','5551112222','agreen@library.org','Students paired with library volunteers for reading','Grant','15000.00','2000.00','Improved literacy rates','120','5','10','PrePostSurveys','Active','2023-12-15','projadmin1');
INSERT INTO school_community_partnership_projects VALUES ('PRJ002','001234568','Health Clinic','Wellness Days','2024-02-01','2024-04-30','Brian White','5553334444','bwhite@healthclinic.org','Monthly health screenings and education','DistrictFunds','8000.00','500.00','Better health awareness','80','3','5','AttendanceLogs','Planned','2024-01-20','projadmin2');
INSERT INTO school_community_partnership_projects VALUES ('PRJ003','001234569','Tech Startup','Coding Bootcamp','2023-07-15','2024-07-14','Clara Black','5555556666','cblack@techstartup.com','After‑school coding curriculum','Sponsor','20000.00','3000.00','Increased coding skills','150','4','8','ProjectPortfolio','Active','2023-11-05','projadmin3');