-- Student International Exchange Programs
CREATE TABLE student_intl_exchange
(
    ExchangeID            TEXT PRIMARY KEY,
    StudentID             TEXT NOT NULL,
    SchoolCDSCode         TEXT NOT NULL,
    HostCountry           TEXT,
    HostInstitution       TEXT,
    ProgramStartDate      DATE,
    ProgramEndDate        DATE,
    DurationWeeks         INTEGER,
    LanguageLevel         TEXT,
    AcademicCreditsEarned INTEGER,
    HousingProvided       TEXT,
    ScholarshipAmount     REAL,
    ProgramType           TEXT,
    FundingSource         TEXT,
    ApplicationStatus     TEXT,
    VisaAssistance        TEXT,
    PreDepartureTraining  TEXT,
    TravelInsurance       TEXT,
    EmergencyContactName  TEXT,
    EmergencyContactPhone TEXT,
    CoordinatorEmail      TEXT,
    Notes                 TEXT
);

INSERT INTO student_intl_exchange VALUES ('EX001','STU123','CDS100','Japan','Tokyo University','2024-08-01','2025-01-31',26,'Advanced',30,'Yes','5000.00','Cultural','DistrictGrant','Approved','Yes','Orientation','Yes','JaneDoe','5551234','coord1@district.edu','First exchange program');
INSERT INTO student_intl_exchange VALUES ('EX002','STU456','CDS200','Germany','Berlin Institute','2024-09-15','2025-03-15',26,'Intermediate',20,'No','3000.00','STEM','SchoolFund','Pending','No','Online','Yes','JohnSmith','5555678','coord2@district.edu','Pending visa');
INSERT INTO student_intl_exchange VALUES ('EX003','STU789','CDS300','Canada','Vancouver College','2025-01-10','2025-06-20',23,'Beginner',15,'Yes','2000.00','Exchange','Private','Approved','Yes','Workshop','Yes','EmilyBrown','5559012','coord3@district.edu','Summer program');

-- School Energy Projects
CREATE TABLE school_energy_projects
(
    ProjectID                TEXT PRIMARY KEY,
    SchoolCDSCode           TEXT NOT NULL,
    ProjectName             TEXT,
    ProjectType             TEXT,
    StartDate               DATE,
    CompletionDate          DATE,
    EstimatedCost           REAL,
    ActualCost              REAL,
    FundingSource           TEXT,
    ContractorName          TEXT,
    ContractorContact       TEXT,
    EnergySavedKWh          REAL,
    CO2ReducedTonnes        REAL,
    Status                  TEXT,
    Description             TEXT,
    GrantNumber             TEXT,
    MaintenancePlan         TEXT,
    WarrantyYears           INTEGER,
    SolarPanelCount         INTEGER,
    WindTurbineCount        INTEGER,
    BatteryStorageMWh       REAL,
    ProjectManagerEmail     TEXT,
    ReportingFrequency      TEXT
);

INSERT INTO school_energy_projects VALUES ('EP001','CDS100','Solar Roof Upgrade','Solar','2023-05-01','2023-10-15',150000.00,148500.00,'StateGrant','SunPower','5551111',250000.00,180.00,'Completed','Rooftop solar installation','GR12345','Annual','10',120,0,2.5,'manager1@district.edu','Quarterly');
INSERT INTO school_energy_projects VALUES ('EP002','CDS200','Geothermal Heating','Geothermal','2024-01-10','2024-12-20',300000.00,305000.00,'FederalFund','GeoTech','5552222',50000.00,50.00,'InProgress','Ground source heat pumps','GR67890','Biannual','12',0,0,5.0,'manager2@district.edu','SemiAnnual');
INSERT INTO school_energy_projects VALUES ('EP003','CDS300','Energy Storage Pilot','Battery','2025-03-01','2025-09-30',200000.00,0.00,'DistrictBudget','PowerStore','5553333',0.00,0.00,'Planned','Battery storage for peak shaving','GR24680','Monthly','8',0,0,3.2,'manager3@district.edu','Monthly');

-- District Transportation Asset Log
CREATE TABLE district_transport_asset_log
(
    AssetLogID          TEXT PRIMARY KEY,
    AssetID             TEXT NOT NULL,
    AssetType           TEXT,
    Manufacturer        TEXT,
    ModelNumber         TEXT,
    PurchaseDate        DATE,
    PurchaseCost        REAL,
    ServiceStartDate    DATE,
    ServiceEndDate      DATE,
    CurrentMileage      INTEGER,
    FuelType            TEXT,
    CapacitySeats       INTEGER,
    AssignedRouteID     TEXT,
    Status              TEXT,
    LastInspectionDate  DATE,
    NextInspectionDue   DATE,
    MaintenanceVendor   TEXT,
    WarrantyExpiration  DATE,
    DepreciationYears   INTEGER,
    LocationDepot       TEXT,
    GPSDeviceID         TEXT,
    EmissionsRating     TEXT,
    Notes               TEXT
);

INSERT INTO district_transport_asset_log VALUES ('AL001','BUS001','School Bus','BlueBird','B300','2022-06-15',120000.00,'2022-07-01',NULL,25000,'Diesel',48,'R001','Active','2024-05-10','2024-11-10','MetroMaintain','2025-06-15',10,'DepotA','GPS1001','EPA Tier2','Regular service');
INSERT INTO district_transport_asset_log VALUES ('AL002','VAN015','Transport Van','Ford','Transit','2023-03-20',45000.00,'2023-04-01',NULL,8000,'Gasoline',15,'R005','Active','2024-03-22','2024-09-22','AutoCare','2026-03-20',8,'DepotB','GPS1002','EPA Tier1','New van');
INSERT INTO district_transport_asset_log VALUES ('AL003','TRK200','Maintenance Truck','Mercedes','Actros','2021-11-05',200000.00,'2021-12-01','2025-12-01',120000,'Diesel',2,'R000','Retired','2023-11-30','2024-05-30','HeavyDutySrv','2024-11-05',12,'DepotC','GPS1003','EPA Tier3','Retired after 4 years');

-- Community Health Outreach Events
CREATE TABLE community_health_outreach_events
(
    EventID               TEXT PRIMARY KEY,
    CommunityPartnerID   TEXT NOT NULL,
    EventName             TEXT,
    EventDate             DATE,
    StartTime             TEXT,
    EndTime               TEXT,
    LocationName          TEXT,
    AddressLine1          TEXT,
    City                  TEXT,
    State                 TEXT,
    ZipCode               TEXT,
    TargetPopulation      TEXT,
    ServicesProvided      TEXT,
    EstimatedAttendance   INTEGER,
    ActualAttendance      INTEGER,
    VolunteerCount        INTEGER,
    FundingSource         TEXT,
    BudgetAmount          REAL,
    HealthScreeningTypes  TEXT,
    FollowUpPlan          TEXT,
    ContactPersonName     TEXT,
    ContactPersonPhone    TEXT,
    Notes                 TEXT
);

INSERT INTO community_health_outreach_events VALUES ('HE001','CP001','Free Flu Shots','2024-10-01','09:00','13:00','Community Center','123 Main St','Springfield','CA','90001','All Ages','Vaccination,Info Sessions',200,185,30,'Grant','15000.00','Flu','Phone follow up','AliceGreen','5551112','Successful turnout');
INSERT INTO community_health_outreach_events VALUES ('HE002','CP002','Blood Pressure Screening','2024-11-15','10:00','12:00','Library Hall','456 Oak Ave','Riverton','TX','75001','Adults 30-65','Screening,Education',120,110,20,'DistrictFund','8000.00','BP','Email results','BobWhite','5552223','High interest in hypertension');
INSERT INTO community_health_outreach_events VALUES ('HE003','CP003','Nutrition Workshop','2025-01-20','14:00','16:30','Town Hall','789 Pine Rd','Lakeside','NY','10001','Families','Workshop,Meal Samples',80,78,15,'Sponsor','5000.00','None','Handout materials','CarolBlue','5553334','Positive feedback');

-- Alumni Career Placement Statistics
CREATE TABLE alumni_career_placement
(
    PlacementID           TEXT PRIMARY KEY,
    AlumniID              TEXT NOT NULL,
    SchoolCDSCode         TEXT NOT NULL,
    GraduationYear        INTEGER,
    DegreeEarned          TEXT,
    CurrentEmployer       TEXT,
    JobTitle              TEXT,
    IndustrySector        TEXT,
    SalaryRangeLow        REAL,
    SalaryRangeHigh       REAL,
    EmploymentStartDate   DATE,
    LocationCity          TEXT,
    LocationState         TEXT,
    FullTimeStatus        TEXT,
    RemoteOption          TEXT,
    ProfessionalCertifications TEXT,
    LinkedInProfileURL    TEXT,
    MentorAssigned        TEXT,
    MentorContactEmail    TEXT,
    SurveyResponseDate   DATE,
    Comments              TEXT
);

INSERT INTO alumni_career_placement VALUES ('CP001','ALU1001','CDS100','2018','Bachelors','TechCorp','Software Engineer','Technology',85000,105000,'2018-07-15','San Jose','CA','Full-Time','Yes','AWS Certified','https://linkedin.com/in/alum1','MentorA','mentorA@district.edu','2024-03-01','Promoted twice');
INSERT INTO alumni_career_placement VALUES ('CP002','ALU1002','CDS200','2020','Associates','HealthPlus','Medical Assistant','Healthcare',40000,55000,'2020-08-01','Austin','TX','Full-Time','No','CPR Certified','https://linkedin.com/in/alum2','MentorB','mentorB@district.edu','2024-03-01','Seeking further education');
INSERT INTO alumni_career_placement VALUES ('CP003','ALU1003','CDS300','2015','Masters','FinBank','Analyst','Finance',65000,80000,'2015-09-10','New York','NY','Full-Time','No','CFA Level I','https://linkedin.com/in/alum3','MentorC','mentorC@district.edu','2024-03-01','Moved to another city');

-- Library Digital Media Usage
CREATE TABLE library_digital_media_usage
(
    UsageID               TEXT PRIMARY KEY,
    LibraryID             TEXT NOT NULL,
    MediaType             TEXT,
    Title                 TEXT,
    Creator               TEXT,
    PublicationYear       INTEGER,
    ISBNorISSN            TEXT,
    AccessMethod          TEXT,
    UserCategory          TEXT,
    CheckoutDate          DATE,
    ReturnDate            DATE,
    TotalCheckouts        INTEGER,
    TotalHoursAccessed    REAL,
    AverageSessionLength  REAL,
    UniqueUserCount       INTEGER,
    PlatformProvider      TEXT,
    LicenseExpirationDate DATE,
    CostPerAccess         REAL,
    Notes                 TEXT,
    DataCollectedOn       DATE,
    MetadataVersion       TEXT,
    PreservationStatus    TEXT
);

INSERT INTO library_digital_media_usage VALUES ('DM001','LIB01','eBook','Data Science Basics','Jane Doe',2022,'ISBN1234567890','Online','Student','2024-02-01','2024-02-21',15,30.5,2.0,10,'OverDrive','2025-12-31',0.50,'High demand','2024-03-01','v1','Preserved');
INSERT INTO library_digital_media_usage VALUES ('DM002','LIB01','Audiobook','History of Art','John Smith',2020,'ISBN0987654321','App','Adult','2024-01-15',NULL,8,20.0,2.5,6,'Libby','2024-11-30',0.75,'Popular among seniors','2024-03-01','v2','Preserved');
INSERT INTO library_digital_media_usage VALUES ('DM003','LIB02','Streaming Video','Advanced Mathematics','EduChannel',2023,'ISSN11223344','Web','Teacher','2024-03-05',NULL,3,12.0,4.0,3,'Kanopy','2026-05-15',1.00,'Used in curriculum','2024-03-06','v1','Preserved');

-- School Art Installations
CREATE TABLE school_art_installations
(
    InstallationID          TEXT PRIMARY KEY,
    SchoolCDSCode           TEXT NOT NULL,
    ArtworkTitle            TEXT,
    ArtistName              TEXT,
    InstallationDate        DATE,
    Material                TEXT,
    LocationWithinSchool    TEXT,
    DimensionsHeightCM      REAL,
    DimensionsWidthCM       REAL,
    DimensionsDepthCM       REAL,
    FundingSource           TEXT,
    Cost                    REAL,
    MaintenancePlan         TEXT,
    NextRestorationDate     DATE,
    WarrantyExpiration      DATE,
    ConservatorContact      TEXT,
    InsurancePolicyNumber   TEXT,
    PublicAccessHours       TEXT,
    ConditionRating         TEXT,
    Notes                   TEXT,
    CatalogReferenceNumber  TEXT,
    UploadedByEmployeeID    TEXT,
    UploadDate              DATE
);

INSERT INTO school_art_installations VALUES ('AI001','CDS100','Harmony','Maria Lee','2023-09-10','Bronze','Main Lobby',180.0,60.0,40.0,'DistrictGrant',12000.00,'Quarterly','2028-09-10','2033-09-10','conserv1@district.edu','POL12345','9am-5pm','Excellent','Featured in regional tour','CAT001','EMP100','2023-09-12');
INSERT INTO school_art_installations VALUES ('AI002','CDS200','Vision','Liam Patel','2022-05-22','Mural','Gymnasium Wall',300.0,500.0,5.0,'CommunityDonations',8000.00,'Annual','2027-05-22','2032-05-22','conserv2@district.edu','POL67890','6am-10pm','Good','Student involvement project','CAT002','EMP200','2022-05-24');
INSERT INTO school_art_installations VALUES ('AI003','CDS300','Echoes','Sofia Ramirez','2024-01-15','Recycled Wood','Outdoor Courtyard',250.0,250.0,20.0,'EcoGrant',15000.00,'Biannual','2029-01-15','2034-01-15','conserv3@district.edu','POL54321','8am-6pm','Fair','Sustainability theme','CAT003','EMP300','2024-01-17');

-- School Parking Lot Usage
CREATE TABLE school_parking_lot_usage
(
    RecordID                TEXT PRIMARY KEY,
    SchoolCDSCode           TEXT NOT NULL,
    LotID                   TEXT,
    DateRecorded            DATE,
    TotalSpaces             INTEGER,
    OccupiedSpacesMorning   INTEGER,
    OccupiedSpacesAfternoon INTEGER,
    OccupiedSpacesEvening   INTEGER,
    ReservedSpaces          INTEGER,
    HandicappedSpaces       INTEGER,
    ElectricVehicleSpaces  INTEGER,
    AverageDurationMinutes  REAL,
    PeakHourStart           TEXT,
    PeakHourEnd             TEXT,
    DailyRevenueUSD         REAL,
    EnforcementIncidents    INTEGER,
    SecurityPatrolsCount    INTEGER,
    MaintenanceIssuesCount  INTEGER,
    WeatherCondition        TEXT,
    Notes                   TEXT,
    DataCollectedBy         TEXT,
    CollectionTimestamp     DATETIME
);

INSERT INTO school_parking_lot_usage VALUES ('PU001','CDS100','LotA','2024-03-01',200,120,130,115,10,5,8,45.0,'07:00','09:00',800.00,2,3,1,'Clear','Normal usage','system','2024-03-01 08:00:00');
INSERT INTO school_parking_lot_usage VALUES ('PU002','CDS200','LotB','2024-03-01',150,80,90,85,5,3,4,38.0,'08:00','10:00',600.00,1,2,0,'Rain','Slight reduction','system','2024-03-01 09:00:00');
INSERT INTO school_parking_lot_usage VALUES ('PU003','CDS300','LotC','2024-03-01',180,140,150,145,12,6,10,50.0,'07:30','09:30',750.00,3,4,2,'Snow','Limited access','system','2024-03-01 07:45:00');

-- Student Entrepreneurship Grants
CREATE TABLE student_entrepreneurship_grants
(
    GrantID                 TEXT PRIMARY KEY,
    StudentID               TEXT NOT NULL,
    SchoolCDSCode           TEXT NOT NULL,
    GrantYear               INTEGER,
    GrantAmount             REAL,
    ProjectTitle            TEXT,
    BusinessCategory        TEXT,
    MentorName              TEXT,
    MentorEmail             TEXT,
    ApplicationDate        DATE,
    ApprovalDate            DATE,
    DisbursementDate        DATE,
    Status                  TEXT,
    ExpectedRevenue         REAL,
    NumberOfTeamMembers    INTEGER,
    PrototypeCompleted      TEXT,
    MarketResearchCompleted TEXT,
    PitchEventDate          DATE,
    FundingSource           TEXT,
    Notes                   TEXT,
    FollowUpMeetingDate     DATE,
    FinalReportSubmitted    TEXT
);

INSERT INTO student_entrepreneurship_grants VALUES ('GR001','STU100','CDS100',2024,2500.00,'EcoBottle','Sustainable Products','Dr Green','green@district.edu','2024-01-10','2024-02-01','2024-02-15','Approved',8000.00,3,'Yes','Yes','2024-04-20','DistrictGrant','Prototype in testing','2024-05-05','Yes');
INSERT INTO student_entrepreneurship_grants VALUES ('GR002','STU200','CDS200',2023,1500.00,'AppTutor','Educational Tech','Ms Lee','lee@district.edu','2023-03-05','2023-04-01','2023-04-10','Approved',5000.00,2,'No','Yes','2023-06-15','PrivateSponsor','App in beta','2023-07-01','No');
INSERT INTO student_entrepreneurship_grants VALUES ('GR003','STU300','CDS300',2022,3000.00,'UrbanGarden','Agriculture','Mr Patel','patel@district.edu','2022-05-12','2022-06-01','2022-06-20','Completed',12000.00,4,'Yes','Yes','2022-09-10','CommunityFund','Garden operational','2022-10-01','Yes');

-- School Virtual Reality Labs
CREATE TABLE school_virtual_reality_labs
(
    LabID                   TEXT PRIMARY KEY,
    SchoolCDSCode           TEXT NOT NULL,
    LabName                 TEXT,
    OpeningDate             DATE,
    TotalStations           INTEGER,
    StationModel            TEXT,
    HeadsetModel            TEXT,
    SoftwarePlatform        TEXT,
    CurriculumIntegration   TEXT,
    AnnualMaintenanceCost   REAL,
    FundingSource           TEXT,
    GrantNumber             TEXT,
    LabCoordinatorName      TEXT,
    LabCoordinatorEmail     TEXT,
    SafetyProtocolDoc       TEXT,
    MaxOccupancy            INTEGER,
    AverageWeeklyUsageHours REAL,
    StudentFeedbackScore    REAL,
    TeacherTrainingHours    REAL,
    LastInspectionDate      DATE,
    NextInspectionDue       DATE,
    Notes                   TEXT
);

INSERT INTO school_virtual_reality_labs VALUES ('VR001','CDS100','VR Innovation Lab','2023-09-01',12,'StationX','OculusQuest2','Unity','STEM Modules',25000.00,'DistrictGrant','VRG001','Anna White','awhite@district.edu','SafetyDoc1','24',15.5,4.8,8.0,'2024-02-15','2024-08-15','Highly utilized');
INSERT INTO school_virtual_reality_labs VALUES ('VR002','CDS200','Immersive Learning Center','2024-01-15',8,'StationY','HTCVive','Unreal','History Simulations',18000.00,'PrivateSponsor','VRG002','Ben Carter','bcarter@district.edu','SafetyDoc2','20',10.2,4.5,6.5,'2024-03-01','2024-09-01','Positive teacher feedback');
INSERT INTO school_virtual_reality_labs VALUES ('VR003','CDS300','Future Tech Lab','2022-05-20',10,'StationZ','MetaQuest3','CustomEngine','Arts Programs',22000.00,'CommunityGrant','VRG003','Clara Zhou','czhou@district.edu','SafetyDoc3','22',12.0,4.7,7.0,'2024-01-20','2024-07-20','Expanding curriculum integration');