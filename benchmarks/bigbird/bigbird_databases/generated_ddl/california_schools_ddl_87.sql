-- Teacher mentorship program details
CREATE TABLE teacher_mentorship_program
(
    MentorID                TEXT    NOT NULL PRIMARY KEY,
    MentorFirstName         TEXT    NOT NULL,
    MentorLastName          TEXT    NOT NULL,
    MentorEmail             TEXT    NOT NULL,
    MentorDept              TEXT    NOT NULL,
    MenteeID                TEXT    NOT NULL,
    MenteeFirstName         TEXT    NOT NULL,
    MenteeLastName          TEXT    NOT NULL,
    MenteeEmail             TEXT    NOT NULL,
    MenteeGradeLevel        TEXT    NOT NULL,
    ProgramStartDate        DATE    NOT NULL,
    ProgramEndDate          DATE,
    SessionFrequencyWeeks   INTEGER NOT NULL,
    SessionDurationMinutes  INTEGER NOT NULL,
    MeetingMethod           TEXT    NOT NULL,
    GoalsEstablished        TEXT,
    ProgressNotes           TEXT,
    EvaluationScore         REAL,
    FeedbackSubmitted       INTEGER,
    SponsorOrganization     TEXT,
    FundingSource           TEXT,
    CreatedTimestamp        DATE    NOT NULL,
    UpdatedTimestamp        DATE
);

INSERT INTO teacher_mentorship_program VALUES
('M001','Alice','Smith','alice.smith@school.org','Mathematics','S101','Bob','Johnson','bob.johnson@student.org','9','2023-09-01','2024-06-30',2,60,'InPerson','Improve algebra skills','Mentee showing steady progress',4.5,1,'DistrictEducationDept','GrantA','2023-08-15','2023-08-20');

INSERT INTO teacher_mentorship_program VALUES
('M002','Carol','Davis','carol.davis@school.org','Science','S102','Dana','Lee','dana.lee@student.org','10','2023-09-15','2024-06-15',1,45,'Virtual','Develop lab report writing','Mentee needs more practice',3.8,0,'STEMInitiative','GrantB','2023-08-20','2023-08-22');

INSERT INTO teacher_mentorship_program VALUES
('M003','Evan','Brown','evan.brown@school.org','English','S103','Fiona','Miller','fiona.miller@student.org','11','2023-10-01',NULL,3,30,'Hybrid','Enhance literature analysis','Initial session completed',4.0,1,'LanguageArtsDept','GrantC','2023-09-01','2023-09-02');

-- Student transportation log
CREATE TABLE student_transportation_log
(
    LogID                   TEXT    NOT NULL PRIMARY KEY,
    StudentID               TEXT    NOT NULL,
    StudentFirstName        TEXT    NOT NULL,
    StudentLastName         TEXT    NOT NULL,
    RouteID                 TEXT    NOT NULL,
    PickupLocation          TEXT    NOT NULL,
    DropoffLocation         TEXT    NOT NULL,
    PickupTime              TIME    NOT NULL,
    DropoffTime             TIME    NOT NULL,
    BusNumber               TEXT    NOT NULL,
    DriverID                TEXT    NOT NULL,
    AttendanceStatus        TEXT    NOT NULL,
    ReasonForAbsence        TEXT,
    WeatherCondition        TEXT,
    DistanceMiles           REAL    NOT NULL,
    TravelTimeMinutes       INTEGER NOT NULL,
    OnTimePercentage        REAL,
    IncidentReported        INTEGER,
    IncidentDescription     TEXT,
    DateOfLog               DATE    NOT NULL,
    CreatedBy               TEXT    NOT NULL,
    CreatedTimestamp        DATE    NOT NULL,
    UpdatedTimestamp        DATE
);

INSERT INTO student_transportation_log VALUES
('T001','ST001','Grace','Hall','R01','123 Elm St','456 Oak St','07:15','07:45','B12','D001','Present',NULL,'Clear',5.2,30,98.5,0,NULL,'2023-09-05','TransportAdmin','2023-09-05','2023-09-05');

INSERT INTO student_transportation_log VALUES
('T002','ST002','Hank','Ivy','R02','789 Pine St','321 Maple St','07:20','07:55','B15','D002','Absent','Medical','Rain',6.1,35,95.0,1,'Late bus arrival','2023-09-06','TransportAdmin','2023-09-06','2023-09-06');

INSERT INTO student_transportation_log VALUES
('T003','ST003','Irene','James','R03','654 Cedar St','987 Birch St','07:10','07:40','B09','D003','Present',NULL,'Snow',4.8,28,99.0,0,NULL,'2023-09-07','TransportAdmin','2023-09-07','2023-09-07');

-- Community fitness center usage
CREATE TABLE community_fitness_center_usage
(
    UsageID                 TEXT    NOT NULL PRIMARY KEY,
    CenterID                TEXT    NOT NULL,
    CenterName              TEXT    NOT NULL,
    MemberID                TEXT    NOT NULL,
    MemberFirstName         TEXT    NOT NULL,
    MemberLastName          TEXT    NOT NULL,
    MembershipLevel         TEXT    NOT NULL,
    CheckInDate             DATE    NOT NULL,
    CheckInTime             TIME    NOT NULL,
    CheckOutTime            TIME,
    FacilityUsed            TEXT    NOT NULL,
    ActivityType            TEXT    NOT NULL,
    DurationMinutes         INTEGER NOT NULL,
    CaloriesBurned          REAL,
    HeartRateAvg            INTEGER,
    StaffAssisted           INTEGER,
    FeedbackScore           REAL,
    Comments                TEXT,
    PaidAmount              REAL,
    PaymentMethod           TEXT,
    CreatedTimestamp        DATE    NOT NULL,
    UpdatedTimestamp        DATE
);

INSERT INTO community_fitness_center_usage VALUES
('U001','FC01','NorthFit','M001','Jack','Knight','Gold','2023-09-01','06:30','07:15','Gym','Cardio',45,350,120,0,4.7,'Great environment',25.00,'CreditCard','2023-09-01','2023-09-01');

INSERT INTO community_fitness_center_usage VALUES
('U002','FC01','NorthFit','M002','Karen','Lopez','Silver','2023-09-02','18:00','18:50','Pool','Swimming',50,400,110,1,4.9,'Very clean pool',15.00,'Cash','2023-09-02','2023-09-02');

INSERT INTO community_fitness_center_usage VALUES
('U003','FC02','EastWell','M003','Liam','Morris','Bronze','2023-09-03','09:15','10:00','Studio','Yoga',45,200,95,0,4.5,'Instructor helpful',20.00,'DebitCard','2023-09-03','2023-09-03');

-- School art installation registry
CREATE TABLE school_art_installation_registry
(
    InstallationID          TEXT    NOT NULL PRIMARY KEY,
    SchoolID                TEXT    NOT NULL,
    InstallationTitle       TEXT    NOT NULL,
    ArtistName              TEXT    NOT NULL,
    ArtistContact           TEXT,
    InstallationDate        DATE    NOT NULL,
    Medium                  TEXT    NOT NULL,
    DimensionsHeightCm      REAL,
    DimensionsWidthCm       REAL,
    DimensionsDepthCm       REAL,
    LocationWithinSchool    TEXT    NOT NULL,
    FundingSource           TEXT,
    EstimatedCostUSD        REAL,
    ConditionRating         REAL,
    LastMaintenanceDate     DATE,
    MaintenanceNotes        TEXT,
    VisibilityLevel         TEXT,
    EducationalUse          TEXT,
    PublicAccessAllowed     INTEGER,
    CreatedBy               TEXT,
    CreatedTimestamp        DATE    NOT NULL,
    UpdatedTimestamp        DATE
);

INSERT INTO school_art_installation_registry VALUES
('A001','SCH001','Harmony of Colors','Mona Rivera','mona.rivera@artmail.com','2022-05-10','Mural',0,0,0,'Main Hall','DistrictArtsGrant',12000,9.2,'2023-03-15','Cleaned surface, minor touch-ups','High','Integrated into art curriculum',1,'ArtsCoordinator','2022-05-12','2023-03-20');

INSERT INTO school_art_installation_registry VALUES
('A002','SCH002','Digital Waves','TechNova Labs','contact@technovalabs.com','2023-01-20','LEDDisplay',200,150,10,'Science Wing','SchoolBudget',8000,8.5,'2023-06-01','Replaced faulty LEDs','Medium','Used in STEM showcases',0,'FacilitiesMgr','2023-01-22','2023-06-02');

INSERT INTO school_art_installation_registry VALUES
('A003','SCH003','Sculpture of Unity','Carlos Mendes','carlos.mendes@studio.com','2021-09-05','Metal',180,80,120,'Courtyard','CommunityDonations',15000,9.5,'2022-11-10','Rust protection reapplied','Low','Outdoor learning station',1,'Principal','2021-09-07','2022-11-12');

-- District emissions inventory
CREATE TABLE district_emissions_inventory
(
    RecordID                TEXT    NOT NULL PRIMARY KEY,
    FacilityID              TEXT    NOT NULL,
    FacilityName            TEXT    NOT NULL,
    EmissionSource          TEXT    NOT NULL,
    ReportingYear           INTEGER NOT NULL,
    CO2_Tonnes              REAL    NOT NULL,
    CH4_Tonnes              REAL,
    N2O_Tonnes              REAL,
    VOC_Tonnes              REAL,
    PM10_Tonnes             REAL,
    PM2_5_Tonnes            REAL,
    SOx_Tonnes              REAL,
    NOx_Tonnes              REAL,
    Methodology             TEXT,
    DataQualityScore        REAL,
    VerificationStatus      TEXT,
    VerifiedBy              TEXT,
    VerificationDate        DATE,
    Comments                TEXT,
    CreatedTimestamp        DATE    NOT NULL,
    UpdatedTimestamp        DATE
);

INSERT INTO district_emissions_inventory VALUES
('E001','F001','CentralPowerPlant','Combustion','2022',2500.5,15.2,8.1,5.4,12.0,7.5,3.2,4.8,'EPAStandard',9.1,'Verified','EnvDept','2023-02-15','Annual report submitted','2023-01-10','2023-02-20');

INSERT INTO district_emissions_inventory VALUES
('E002','F002','WestSolarFarm','SolarPV','2022',0.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ISO14064','9.8','Verified','SustainabilityTeam','2023-01-30','Zero emissions facility','2023-01-05','2023-02-01');

INSERT INTO district_emissions_inventory VALUES
('E003','F003','EastVehicleFleet','DieselEngines','2022',180.3,2.5,0.9,1.2,0.8,0.4,0.6,1.1,'GHGProtocol',8.3,'Pending','TransportMgr',NULL,'Awaiting third‑party audit','2023-03-01','2023-03-15');

-- Library digital media licenses
CREATE TABLE library_digital_media_licenses
(
    LicenseID               TEXT    NOT NULL PRIMARY KEY,
    LibraryID               TEXT    NOT NULL,
    ProviderName            TEXT    NOT NULL,
    MediaType               TEXT    NOT NULL,
    Title                   TEXT    NOT NULL,
    ISBNorISSN              TEXT,
    LicenseStartDate        DATE    NOT NULL,
    LicenseEndDate          DATE,
    ConcurrentUsersAllowed  INTEGER,
    TotalAccessesAllowed    INTEGER,
    AccessesUsed            INTEGER,
    CostUSD                 REAL,
    RenewalOption           TEXT,
    SubscriptionLevel       TEXT,
    RestrictionNotes        TEXT,
    UsageTrackingEnabled    INTEGER,
    LastAuditDate           DATE,
    AuditResult             TEXT,
    CreatedBy               TEXT,
    CreatedTimestamp        DATE    NOT NULL,
    UpdatedTimestamp        DATE
);

INSERT INTO library_digital_media_licenses VALUES
('L001','LIB01','OverDrive','eBook','The Great Adventure','9781234567890','2023-01-01','2024-12-31',5,1000,250,1200.00','AutoRenew','Standard','No sharing outside school','1','2023-06-01','Pass','LibrarianA','2023-01-02','2023-06-01');

INSERT INTO library_digital_media_licenses VALUES
('L002','LIB01','ProQuest','Journal','Journal of Education','ISSN12345678','2022-07-01','2025-06-30',10,5000,1200,3000.00','ManualRenew','Premium','Limited print copy','1','2023-05-15','Pass','LibrarianB','2022-07-02','2023-05-16');

INSERT INTO library_digital_media_licenses VALUES
('L003','LIB02','Kanopy','StreamingVideo','Science Documentary Series',NULL,'2023-03-15','2024-03-14',3,200,75,800.00','AutoRenew','Basic','Educational use only','0',NULL,NULL,'LibrarianC','2023-03-16','2023-08-01');

-- School renewable energy projects
CREATE TABLE school_renewable_energy_projects
(
    ProjectID               TEXT    NOT NULL PRIMARY KEY,
    SchoolID                TEXT    NOT NULL,
    ProjectName             TEXT    NOT NULL,
    EnergyType              TEXT    NOT NULL,
    StartDate               DATE    NOT NULL,
    CompletionDate          DATE,
    CapacityKW              REAL,
    EstimatedAnnualGenerationMWh REAL,
    InstallationCostUSD     REAL,
    FundingSource           TEXT,
    GrantAwardNumber        TEXT,
    ContractorName          TEXT,
    ContractorContact       TEXT,
    Status                  TEXT,
    PerformanceRating       REAL,
    LastInspectionDate      DATE,
    InspectionNotes         TEXT,
    EnergySavingsPercent    REAL,
    CarbonReductionTonnes   REAL,
    CreatedBy               TEXT,
    CreatedTimestamp        DATE    NOT NULL,
    UpdatedTimestamp        DATE
);

INSERT INTO school_renewable_energy_projects VALUES
('RE001','SCH001','Solar Rooftop Array','Solar','2022-04-01','2022-10-15',150.0,180.0,95000.00','DistrictGrant','GR2022-01','SunPower Inc','contact@sunpower.com','Operational',9.2,'2023-05-20','Panels clean, inverter functional',15.0,25.0,'EnergyCoordinator','2022-04-02','2023-05-21');

INSERT INTO school_renewable_energy_projects VALUES
('RE002','SCH002','Wind Turbine','Wind','2023-01-10',NULL,200.0,400.0,180000.00','StateFund','WF2023-07','WindTech LLC','info@windtech.com','UnderConstruction',NULL,NULL,NULL,NULL,NULL,'ProjectManager','2023-01-11','2023-03-01');

INSERT INTO school_renewable_energy_projects VALUES
('RE003','SCH003','Geothermal Heating','Geothermal','2021-09-15','2022-03-30',300.0,350.0,210000.00','FederalGrant','GH2021-09','GeoHeat Solutions','support@geoheat.com','Operational',8.8,'2023-04-10','System operating within parameters',20.0,30.5,'FacilitiesDirector','2021-09-16','2023-04-11');

-- Parent community engagement surveys
CREATE TABLE parent_community_engagement_surveys
(
    SurveyID                TEXT    NOT NULL PRIMARY KEY,
    SchoolID                TEXT    NOT NULL,
    SurveyTitle             TEXT    NOT NULL,
    DistributionDate        DATE    NOT NULL,
    CompletionDate          DATE,
    TotalInvitedParents     INTEGER,
    RespondentsCount        INTEGER,
    ResponseRatePercent     REAL,
    SatisfactionScoreAvg    REAL,
    CommunicationRatingAvg  REAL,
    InvolvementInterestAvg  REAL,
    CommentsOpenEnded        TEXT,
    FollowUpActionRequired  INTEGER,
    FollowUpActionDetails   TEXT,
    SurveyMethod            TEXT,
    LanguageVersion         TEXT,
    DataPrivacyNoticeGiven  INTEGER,
    CreatedBy               TEXT,
    CreatedTimestamp        DATE    NOT NULL,
    UpdatedTimestamp        DATE
);

INSERT INTO parent_community_engagement_surveys VALUES
('S001','SCH001','2023 Parent Satisfaction','2023-03-01','2023-03-15',500,320,64.0,4.2,4.0,3.8,'Positive overall, more after‑school activities requested',1,'Plan additional clubs','Online','English',1,'SurveyCoordinator','2023-03-02','2023-03-16');

INSERT INTO parent_community_engagement_surveys VALUES
('S002','SCH002','2023 Community Involvement','2023-04-05','2023-04-20',400,250,62.5,4.0,3.9,4.1,'Parents want more volunteer opportunities',0,NULL,'Paper','Spanish',1,'SurveyCoordinator','2023-04-06','2023-04-21');

INSERT INTO parent_community_engagement_surveys VALUES
('S003','SCH003','2023 School Climate Survey','2023-05-10','2023-05-25',600,450,75.0,4.5,4.3,4.2,'Strong community feeling, suggest more cultural events',0,NULL,'Online','English',1,'SurveyCoordinator','2023-05-11','2023-05-26');

-- Facility HVAC system maintenance
CREATE TABLE facility_hvac_system_maintenance
(
    MaintenanceID           TEXT    NOT NULL PRIMARY KEY,
    FacilityID              TEXT    NOT NULL,
    HVACUnitID              TEXT    NOT NULL,
    SystemType              TEXT    NOT NULL,
    Manufacturer            TEXT,
    ModelNumber             TEXT,
    InstallationDate        DATE,
    LastServiceDate         DATE,
    ServiceFrequencyMonths  INTEGER,
    TechnicianName          TEXT,
    TechnicianCompany       TEXT,
    ServiceCostUSD          REAL,
    PartsReplaced           TEXT,
    IssueDescription        TEXT,
    ResolutionNotes         TEXT,
    Status                  TEXT,
    NextScheduledService    DATE,
    EnergyEfficiencyRating  REAL,
    CO2EmissionReductionPct REAL,
    CreatedBy               TEXT,
    CreatedTimestamp        DATE    NOT NULL,
    UpdatedTimestamp        DATE
);

INSERT INTO facility_hvac_system_maintenance VALUES
('HV001','F001','HVAC01','CentralAir','Carrier','C1234','2015-06-15','2023-02-01',12,'Mike Turner','CoolTech Services',1200.00,'Filter, Fan Motor','Reduced airflow','Replaced filter, cleaned ducts','Completed','2023-08-01',8.5,5.0,'FacilitiesMgr','2023-02-02','2023-02-05');

INSERT INTO facility_hvac_system_maintenance VALUES
('HV002','F002','HVAC02','HeatPump','Trane','TP5678','2018-09-20','2023-01-15',12,'Sara Lee','HVACPro Ltd',950.00,'Compressor','Noise during operation','Adjusted refrigerant levels','Completed','2023-07-15',9.0,4.8,'FacilitiesMgr','2023-01-16','2023-01-18');

INSERT INTO facility_hvac_system_maintenance VALUES
('HV003','F003','HVAC03','Ventilation','Lennox','V9012','2020-03-10','2023-03-10',12,'Juan Gomez','AirFlow Solutions',800.00,'Ductwork','Dust accumulation','Cleaned ducts, replaced filters','Completed','2023-09-10',8.8,5.2,'FacilitiesMgr','2023-03-11','2023-03-12');

-- Parent community engagement surveys (already done) – next table: student_internship_placements
CREATE TABLE student_internship_placements
(
    PlacementID             TEXT    NOT NULL PRIMARY KEY,
    StudentID               TEXT    NOT NULL,
    StudentFirstName        TEXT    NOT NULL,
    StudentLastName         TEXT    NOT NULL,
    InternshipTitle         TEXT    NOT NULL,
    HostOrganization        TEXT    NOT NULL,
    HostContactName         TEXT,
    HostContactEmail        TEXT,
    StartDate               DATE    NOT NULL,
    EndDate                 DATE    NOT NULL,
    WeeklyHours             INTEGER NOT NULL,
    MentorName              TEXT,
    MentorEmail             TEXT,
    ProjectDescription      TEXT,
    LearningObjectives      TEXT,
    EvaluationScore         REAL,
    FeedbackSubmitted       INTEGER,
    CreditsEarned           INTEGER,
    AcademicTerm            TEXT,
    CreatedBy               TEXT,
    CreatedTimestamp        DATE    NOT NULL,
    UpdatedTimestamp        DATE
);

INSERT INTO student_internship_placements VALUES
('I001','ST201','Mia','Nguyen','Software Development Intern','Tech Innovators Inc','Alan Green','alan.green@techinnovators.com','2023-06-01','2023-08-31',20,'Sarah Lee','sarah.lee@school.org','Developed web application for internal use','Learn full‑stack development, agile methodology',4.5,1,3,'Summer2023','InternshipCoordinator','2023-05-20','2023-09-01');

INSERT INTO student_internship_placements VALUES
('I002','ST202','Noah','Patel','Environmental Research Assistant','Green Earth Labs','Laura Smith','laura.smith@greenearthlabs.org','2023-09-15','2024-05-15',15,'David Kumar','david.kumar@school.org','Assisted in field data collection and lab analysis','Data collection techniques, scientific reporting',4.0,1,4,'Fall2023','InternshipCoordinator','2023-08-30','2024-05-20');

INSERT INTO student_internship_placements VALUES
('I003','ST203','Olivia','Garcia','Marketing Intern','Creative Media Co','Brian Torres','brian.torres@creativemedia.com','2023-07-01','2023-12-15',12,'Emily Chen','emily.chen@school.org','Supported social media campaigns and content creation','Copywriting, social media analytics',4.2,1,2,'Summer2023','InternshipCoordinator','2023-06-20','2023-12-20');