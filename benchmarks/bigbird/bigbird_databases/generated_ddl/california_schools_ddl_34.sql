-- School bus inspection records
CREATE TABLE school_bus_inspections
(
    InspectionID            TEXT NOT NULL PRIMARY KEY,
    CDSCode                 TEXT NOT NULL,
    InspectionDate          DATE NOT NULL,
    InspectorName           TEXT,
    BrakesStatus            TEXT,
    EngineStatus            TEXT,
    TiresCondition          TEXT,
    LightsFunctioning       TEXT,
    EmergencyExitPresent    TEXT,
    CleanlinessScore        INTEGER,
    GPSDeviceWorking        TEXT,
    FuelLeakDetected        TEXT,
    WheelAlignment          TEXT,
    HornWorking             TEXT,
    MirrorCondition         TEXT,
    SeatBeltPresence        TEXT,
    FireExtinguisherStatus  TEXT,
    OdometerReading         INTEGER,
    InspectionResult        TEXT,
    FollowUpRequired        INTEGER,
    FollowUpDueDate         DATE,
    DriverAttendance        INTEGER,
    FOREIGN KEY (CDSCode) REFERENCES schools(CDSCode)
);

INSERT INTO school_bus_inspections VALUES
('INSP001','001-001-001','2023-09-15','John Doe','Good','Good','Good','Yes','Yes',85,'Yes','No','Good','Yes','Good','Yes','Good',120450,'Pass',0,NULL,1);

INSERT INTO school_bus_inspections VALUES
('INSP002','001-001-002','2023-09-18','Jane Smith','Fair','Good','Fair','Yes','No',78,'Yes','Yes','Fair','No','Fair','Yes','Fair',118300,'Conditional',1,'2023-10-01',0);

INSERT INTO school_bus_inspections VALUES
('INSP003','001-001-003','2023-09-20','Mike Lee','Good','Fair','Good','Yes','Yes',90,'Yes','No','Good','Yes','Good','Yes','Good',121500,'Pass',0,NULL,1);

-- District technology training courses
CREATE TABLE district_technology_training_courses
(
    CourseID            TEXT NOT NULL PRIMARY KEY,
    DistrictCode        TEXT NOT NULL,
    CourseName          TEXT NOT NULL,
    Provider            TEXT,
    StartDate           DATE,
    EndDate             DATE,
    DurationHours       INTEGER,
    TargetAudience      TEXT,
    MaxParticipants     INTEGER,
    InstructorName      TEXT,
    CourseLevel         TEXT,
    Accreditation       TEXT,
    CostUSD             REAL,
    OnlineAvailable     INTEGER,
    SeatsFilled         INTEGER,
    EvaluationScore     REAL,
    MaterialsProvided   TEXT,
    CertificateAwarded  INTEGER,
    CourseCategory      TEXT,
    TechnologyFocus    TEXT,
    CourseDescription   TEXT,
    FOREIGN KEY (DistrictCode) REFERENCES schools(District)
);

INSERT INTO district_technology_training_courses VALUES
('COURSE01','D001','DataSecurityFundamentals','SecureTech','2023-10-01','2023-10-03',24,'ITStaff','30','Alice Brown','Intermediate','ISO27001',1500.00,1,28,4.5,'Handouts,LabAccess',1,'Security','CyberSecurity','Intro to data protection and compliance');

INSERT INTO district_technology_training_courses VALUES
('COURSE02','D001','CloudComputing2023','CloudNova','2023-11-05','2023-11-07',20,'Teachers','20','Bob Green','Beginner','None',1200.00,0,18,4.2,'Slides,DemoAccounts',1,'Cloud','AWS','Fundamentals of cloud services for educators');

INSERT INTO district_technology_training_courses VALUES
('COURSE03','D002','AIInEducation','EduAI','2023-12-10','2023-12-12',22,'Administrators','25','Carol White','Advanced','None',2000.00,1,22,4.7,'SoftwareLicenses',0,'ArtificialIntelligence','MachineLearning','Applying AI tools to improve student outcomes');

-- Community health clinic visit logs
CREATE TABLE community_health_clinic_visits
(
    VisitID               TEXT NOT NULL PRIMARY KEY,
    ClinicID              TEXT NOT NULL,
    VisitDate             DATE NOT NULL,
    PatientID             TEXT NOT NULL,
    Age                   INTEGER,
    Gender                TEXT,
    ReasonForVisit       TEXT,
    DiagnosisCode        TEXT,
    TreatmentProvided    TEXT,
    FollowUpNeeded       INTEGER,
    FollowUpDate          DATE,
    ProviderName          TEXT,
    VisitDurationMinutes INTEGER,
    InsuranceProvider    TEXT,
    CopayAmount          REAL,
    ReferralMade         INTEGER,
    ReferralClinic       TEXT,
    BloodPressure        TEXT,
    HeartRate             INTEGER,
    Temperature           REAL,
    WeightKg              REAL,
    HeightCm              REAL,
    VaccinationsGiven    TEXT,
    PrescriptionGiven    TEXT,
    LabTestsOrdered      TEXT
);

INSERT INTO community_health_clinic_visits VALUES
('VST001','CLN001','2023-09-10','PAT001',12,'Female','FluSymptoms','J10','AntiviralMedication',0,NULL,'DrEmily','30','MediCare',5.00,0,NULL,'110/70',80,37.0,45.0,150.0,'FluVaccine','Oseltamivir','CBC');

INSERT INTO community_health_clinic_visits VALUES
('VST002','CLN001','2023-09-12','PAT002',8,'Male','Allergy','J30','Antihistamine',1,'2023-09-20','DrMark','25','Private',0.00,1,'CLN002','115/75',85,36.8,30.0,140.0,'None','Cetirizine','AllergyPanel');

INSERT INTO community_health_clinic_visits VALUES
('VST003','CLN002','2023-09-15','PAT003',15,'Female','SportInjury','S86','PhysicalTherapy',1,'2023-10-01','DrLaura','45','StatePlan',10.00,0,NULL,'120/80',78,37.2,55.0,160.0,'None','Ibuprofen','XRay');

-- School arts grant tracking
CREATE TABLE school_arts_grants
(
    GrantID               TEXT NOT NULL PRIMARY KEY,
    CDSCode               TEXT NOT NULL,
    GrantName             TEXT,
    FundingAgency         TEXT,
    ApplicationYear       INTEGER,
    AwardAmount           REAL,
    GrantStartDate        DATE,
    GrantEndDate          DATE,
    ProjectTitle          TEXT,
    ProjectDescription    TEXT,
    TargetStudents        INTEGER,
    NumberOfArtistsInvolved INTEGER,
    BudgetPersonnel       REAL,
    BudgetMaterials       REAL,
    BudgetFacilities      REAL,
    ReportingFrequency    TEXT,
    FinalReportSubmitted  INTEGER,
    GrantStatus           TEXT,
    PrincipalInvestigator TEXT,
    ContactEmail          TEXT,
    GrantURL              TEXT,
    FOREIGN KEY (CDSCode) REFERENCES schools(CDSCode)
);

INSERT INTO school_arts_grants VALUES
('GRANT001','001-001-001','CreativeMindsFund','StateArtsCouncil',2023,50000.00,'2023-09-01','2024-08-31','CommunityMuralProject','Students collaborate with local artists to create murals','200','5',15000.00,25000.00,10000.00,'Quarterly',0,'Active','Laura Gomez','lgomez@school.org','http://artsgrant.example.com/GRANT001');

INSERT INTO school_arts_grants VALUES
('GRANT002','001-001-002','YouthTheatreInitiative','NationalEndowment','2022',75000.00,'2022-10-15','2023-10-14','SpringPlayProduction','High school theatre production with original script','150','3',20000.00,30000.00,25000.00,'Annually',1,'Completed','Michael Chan','mchan@school.org','http://artsgrant.example.com/GRANT002');

INSERT INTO school_arts_grants VALUES
('GRANT003','001-001-003','DigitalArtsLab','TechForArt','2023',60000.00,'2023-11-01','2025-10-31','VirtualArtStudio','Establish a digital art lab with tablets and software','250','4',18000.00,30000.00,12000.00,'SemiAnnual',0,'Pending','Sofia Patel','spatel@school.org','http://artsgrant.example.com/GRANT003');

-- Student park usage records
CREATE TABLE student_park_usage
(
    RecordID               TEXT NOT NULL PRIMARY KEY,
    StudentID              TEXT NOT NULL,
    ParkID                 TEXT NOT NULL,
    UsageDate              DATE NOT NULL,
    EntryTime              TEXT,
    ExitTime               TEXT,
    ActivityType           TEXT,
    HoursSpent             REAL,
    GroupSize              INTEGER,
    Supervised             INTEGER,
    WeatherCondition       TEXT,
    Notes                  TEXT,
    BikeUsed               INTEGER,
    PicnicUsed             INTEGER,
    SportsEquipmentUsed    INTEGER,
    FacilityReservationID  TEXT,
    VisitorCount           INTEGER,
    AgeGroup               TEXT,
    Gender                 TEXT,
    MembershipStatus      TEXT,
    ParentConsentGiven    INTEGER
);

INSERT INTO student_park_usage VALUES
('PU001','STU001','PK001','2023-09-05','09:30','11:30','Soccer',2.0,12,1,'Sunny','Team practice','0','0','1','RES001',12='12', '12-14','Male','Member',1);

INSERT INTO student_park_usage VALUES
('PU002','STU002','PK002','2023-09-07','14:00','16:30','BikeRide',2.5,1,0,'Cloudy','Solo ride','1','0','0',NULL,1,'8-10','Female','NonMember',1);

INSERT INTO student_park_usage VALUES
('PU003','STU003','PK001','2023-09-12','10:00','13:00','Picnic',3.0,5,1,'Rain','Family picnic under shelter','0','1','0','RES002',5,'12-14','Other','Member',1);

-- Environmental impact study projects
CREATE TABLE environmental_impact_study_projects
(
    StudyID                 TEXT NOT NULL PRIMARY KEY,
    DistrictCode            TEXT NOT NULL,
    StudyTitle              TEXT,
    LeadScientist           TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    FundingSource           TEXT,
    TotalBudget             REAL,
    AreaCoveredSqKm         REAL,
    PrimaryFocus            TEXT,
    Methodology             TEXT,
    DataCollectionStart     DATE,
    DataCollectionEnd       DATE,
    NumberOfSensors         INTEGER,
    SensorTypes             TEXT,
    FindingsSummary         TEXT,
    Recommendations         TEXT,
    ReportPublished         INTEGER,
    PublicationDate         DATE,
    PeerReviewed            INTEGER,
    StakeholderEngagementScore REAL,
    FOREIGN KEY (DistrictCode) REFERENCES schools(District)
);

INSERT INTO environmental_impact_study_projects VALUES
('STUD001','D001','RiverWaterQuality','DrHelen White','2023-01-15','2023-12-15','EPAGrant',120000.00,45.5,'WaterQuality','LongitudinalSampling','2023-02-01','2023-10-30',30,'pH,Temp,Turbidity','Improved filtration needed','Upgrade filtration at upstream plants',1,'2023-12-20',1,8.5);

INSERT INTO environmental_impact_study_projects VALUES
('STUD002','D002','UrbanAirMonitoring','DrRaj Patel','2023-03-01','2024-02-28','StateEnvFund',95000.00,12.0,'AirQuality','FixedStationNetwork','2023-04-01','2023-11-30',15,'PM2.5,NO2,O3','Peak pollution in summer','Implement green roofs and traffic reduction',0,NULL,0,7.2);

INSERT INTO environmental_impact_study_projects VALUES
('STUD003','D001','SoilContaminationAssessment','DrLaura Kim','2023-05-10','2023-11-30','PrivateFoundation',80000.00,20.0,'SoilHealth','GridSampling','2023-06-01','2023-10-15',20,'HeavyMetals,PAHs','Elevated lead near old facility','Remediation of contaminated zones',1,'2023-12-05',1,9.0);

-- Alumni network events
CREATE TABLE alumni_network_events
(
    EventID               TEXT NOT NULL PRIMARY KEY,
    AlumniGroup           TEXT,
    EventName             TEXT,
    EventDate             DATE,
    Location              TEXT,
    HostOrganization      TEXT,
    ExpectedAttendance    INTEGER,
    RegistrationDeadline  DATE,
    CostPerPerson         REAL,
    SponsorName           TEXT,
    SponsorContributionUSD REAL,
    EventAgenda           TEXT,
    KeynoteSpeaker       TEXT,
    Panelists            TEXT,
    VolunteerCount       INTEGER,
    MediaCoverage        INTEGER,
    PostEventSurveyScore REAL,
    FollowUpEmailSent    INTEGER,
    EventWebsite         TEXT,
    ContactEmail          TEXT,
    AdditionalNotes       TEXT
);

INSERT INTO alumni_network_events VALUES
('EVT001','ClassOf2010','DecadeReunion','2023-10-20','MainAuditorium','AlumniAssoc','250','2023-09-30',50.00','TechCorp','5000.00','WelcomeDinner;Keynote;Networking','John Doe','Jane Smith,Mark Lee',30,1,4.6,1,'http://alumni.example.com/decadereunion','events@school.org','Formal dress code');

INSERT INTO alumni_network_events VALUES
('EVT002','ClassOf2015','CareerPanel','2023-11-05','ConferenceRoomB','CareerCenter','150','2023-10-20',0.00','CareerCo','2000.00','PanelDiscussion;Q&A','Emily Chen','David Brown,Sarah Liu',20,0,4.2,1,'http://alumni.example.com/careerpanel','career@school.org','Open to current students');

INSERT INTO alumni_network_events VALUES
('EVT003','AllAlumni','CharityGala','2023-12-12','GrandHall','FundraisingCommittee','500','2023-11-30',75.00','PhilanthropyInc','10000.00','Auction;Dinner;LiveMusic','Michael Torres','Anna Patel,James Wong',50,1,4.8,1,'http://alumni.example.com/charitygala','gala@school.org','All proceeds to scholarship fund');

-- Teacher remote work logs
CREATE TABLE teacher_remote_work_logs
(
    LogID               TEXT NOT NULL PRIMARY KEY,
    TeacherID           TEXT NOT NULL,
    WorkDate            DATE NOT NULL,
    StartTime           TEXT,
    EndTime             TEXT,
    TotalHours          REAL,
    RemoteLocation      TEXT,
    PlatformUsed        TEXT,
    TasksCompleted      TEXT,
    MeetingsAttended    INTEGER,
    StudentInteractions INTEGER,
    MaterialsCreated    INTEGER,
    BandwidthUsedMB     REAL,
    VPNUsed             INTEGER,
    SecurityIncidents   INTEGER,
    DeviceUsed          TEXT,
    IssueReported      INTEGER,
    IssueResolved      INTEGER,
    Notes               TEXT,
    SupervisorApproval INTEGER
);

INSERT INTO teacher_remote_work_logs VALUES
('LOG001','TCH001','2023-09-14','08:00','12:00',4.0,'HomeOffice','Zoom','LessonPlanning;Grading','2','5','3',350.0,1,0,'Laptop',0,0,'All tasks completed','1');

INSERT INTO teacher_remote_work_logs VALUES
('LOG002','TCH002','2023-09-14','13:00','17:00',4.0,'Café','MicrosoftTeams','CurriculumDesign','1','3','2',420.0,0,0,'Tablet',0,0,'Stable connection','1');

INSERT INTO teacher_remote_work_logs VALUES
('LOG003','TCH003','2023-09-15','09:30','12:30',3.0,'HomeOffice','GoogleMeet','StudentFeedbackReview','0','2','1',210.0,1,1,'Desktop',1,0,'VPN timeout resolved','0');

-- District utility costs
CREATE TABLE district_utility_costs
(
    RecordID               TEXT NOT NULL PRIMARY KEY,
    DistrictCode           TEXT NOT NULL,
    FiscalYear             INTEGER,
    UtilityType            TEXT,
    ProviderName           TEXT,
    TotalConsumption       REAL,
    UnitCost               REAL,
    TotalCost              REAL,
    PeakDemand             REAL,
    AverageDemand          REAL,
    BillingMonth           TEXT,
    PaymentStatus          TEXT,
    ContractStartDate      DATE,
    ContractEndDate        DATE,
    SustainabilityRating   TEXT,
    RenewablePercentage    REAL,
    CO2EmissionsKg        REAL,
    MeterReadingStart      REAL,
    MeterReadingEnd        REAL,
    AdjustmentAmount       REAL,
    FOREIGN KEY (DistrictCode) REFERENCES schools(District)
);

INSERT INTO district_utility_costs VALUES
('UTL001','D001',2023,'Electricity','PowerCo',150000.0,0.12,18000.0,800.0,500.0,'July','Paid','2020-01-01','2025-12-31','A',45.0,35000.0,50000.0,65000.0,0.0);

INSERT INTO district_utility_costs VALUES
('UTL002','D001',2023,'Water','AquaSupply',25000.0,0.008,200.0,150.0,100.0,'July','Paid','2021-03-01','2026-02-28','B',30.0,5000.0,12000.0,15000.0,0.0);

INSERT INTO district_utility_costs VALUES
('UTL003','D002',2023,'Gas','HeatEnergy',80000.0,0.03,2400.0,400.0,250.0,'July','Pending','2019-06-15','2024-06-14','C',20.0,18000.0,30000.0,50000.0,100.0);

-- Library archival collections
CREATE TABLE library_archival_collections
(
    CollectionID           TEXT NOT NULL PRIMARY KEY,
    LibraryID              TEXT NOT NULL,
    CollectionName         TEXT,
    AccessionNumber        TEXT,
    DateAcquired           DATE,
    FormatType             TEXT,
    PhysicalLocation       TEXT,
    Language               TEXT,
    SubjectArea            TEXT,
    Creator                TEXT,
    RightsStatus           TEXT,
    PreservationCondition  TEXT,
    DigitizationStatus     TEXT,
    NumberOfItems          INTEGER,
    TotalSizeMB            REAL,
    AccessRestrictions     TEXT,
    CatalogURL             TEXT,
    LastReviewedDate       DATE,
    CuratorName            TEXT,
    FundingSource          TEXT,
    Notes                  TEXT,
    FOREIGN KEY (LibraryID) REFERENCES schools(CDSCode)
);

INSERT INTO library_archival_collections VALUES
('COL001','001-001-001','LocalNewspaperArchive','ACC001','2022-05-10','Print','BasementRoomA','English','History','CityTimes','PublicDomain','Good','Digitized',1200,3500.5,'OnSiteOnly','http://library.example.com/col001','2023-09-01','Mark Spencer','GrantABC','Microfilm converted to digital');

INSERT INTO library_archival_collections VALUES
('COL002','001-001-002','SchoolYearbooks','ACC002','2021-08-15','Print','ArchiveShelf5','English','SchoolLife','StudentCommittee','Restricted','Fair','Pending',300,800.0,'RestrictedAccess','http://library.example.com/col002','2023-08-20','Susan Lee','SchoolBudget','Yearbooks from 1970-2000');

INSERT INTO library_archival_collections VALUES
('COL003','001-001-003','HistoricalMapsCollection','ACC003','2020-02-01','Map','MapRoom','Various','Geography','CartographerAssoc','PublicDomain','Excellent','Digitized',85,1200.0,'Open','http://library.example.com/col003','2023-07-15','David Nguyen','DonorGift','Regional maps from 1800-1900');