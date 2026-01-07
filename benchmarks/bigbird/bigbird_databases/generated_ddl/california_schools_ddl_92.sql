-- Regional Wildlife Observations
CREATE TABLE regional_wildlife_observations (
    ObservationID TEXT PRIMARY KEY,
    ParkCode TEXT,
    SpeciesCommon TEXT,
    SpeciesScientific TEXT,
    Count INTEGER,
    ObservationDate DATE,
    ObserverID TEXT,
    Latitude REAL,
    Longitude REAL,
    HabitatType TEXT,
    AgeClass TEXT,
    Gender TEXT,
    Behavior TEXT,
    WeatherCondition TEXT,
    ObservationMethod TEXT,
    PhotoReference TEXT,
    DataSource TEXT,
    VerificationStatus TEXT,
    Notes TEXT,
    CreatedAt DATE
);

INSERT INTO regional_wildlife_observations VALUES (
    'OBS001','PK001','White-tailed Deer','Odocoileus virginianus',5,'2023-04-12','OBSR01',34.1234,-117.5678,'Forest','Adult','Male','Grazing','Sunny','Visual','photo1.jpg','Volunteer','Verified','No issues','2023-04-13'
);
INSERT INTO regional_wildlife_observations VALUES (
    'OBS002','PK002','Red-tailed Hawk','Buteo jamaicensis',1,'2023-04-15','OBSR02',35.2345,-118.6789,'Grassland','Adult','Female','Soaring','Partly Cloudy','Binoculars','photo2.jpg','Staff','Pending','Observed near nest','2023-04-16'
);
INSERT INTO regional_wildlife_observations VALUES (
    'OBS003','PK003','Eastern Box Turtle','Terrapene carolina',3,'2023-04-20','OBSR03',36.3456,-119.7890,'Wetland','Juvenile','Unknown','Foraging','Rain','Trail Camera','photo3.jpg','CitizenScience','Verified','Found near stream','2023-04-21'
);

-- School District Grants Summary
CREATE TABLE school_district_grants_summary (
    GrantID TEXT PRIMARY KEY,
    DistrictCode TEXT,
    GrantTitle TEXT,
    FundingAgency TEXT,
    AmountAwarded REAL,
    AwardDate DATE,
    ProjectStartDate DATE,
    ProjectEndDate DATE,
    GrantPurpose TEXT,
    EligibilityCriteria TEXT,
    MatchingFundsRequired TEXT,
    Status TEXT,
    PrimaryContactName TEXT,
    PrimaryContactPhone TEXT,
    PrimaryContactEmail TEXT,
    ReportDueDate DATE,
    LastReportSubmitted DATE,
    RenewalEligibility TEXT,
    ProgramArea TEXT,
    CreatedTimestamp DATE
);

INSERT INTO school_district_grants_summary VALUES (
    'GR001','D001','STEM Innovation Grant','National Science Foundation',250000,'2022-06-01','2022-07-01','2025-06-30','Upgrade labs','Public schools only','Yes','Active','John Doe','5551234567','jdoe@example.com','2024-05-01','2023-05-15','Yes','STEM','2022-06-02'
);
INSERT INTO school_district_grants_summary VALUES (
    'GR002','D002','Green Schools Initiative','EPA',150000,'2021-09-15','2021-10-01','2024-09-30','Energy efficiency','K-12 schools','No','Completed','Jane Smith','5559876543','jsmith@example.com','2023-08-31','2023-08-20','No','Environmental','2021-09-16'
);
INSERT INTO school_district_grants_summary VALUES (
    'GR003','D003','Arts Access Grant','National Endowment for the Arts',80000,'2023-01-20','2023-02-01','2026-01-31','Arts programming','All schools','Yes','Pending','Emily Johnson','5555551212','ejohnson@example.com','2025-12-31','2024-12-15','Yes','Arts','2023-01-21'
);

-- Alumni Network Events
CREATE TABLE alumni_network_events (
    EventID TEXT PRIMARY KEY,
    EventName TEXT,
    EventDate DATE,
    Location TEXT,
    City TEXT,
    State TEXT,
    EstimatedAttendance INTEGER,
    OrganizerTeam TEXT,
    Sponsor TEXT,
    EventType TEXT,
    RegistrationLink TEXT,
    Cost TEXT,
    Description TEXT,
    GuestSpeaker TEXT,
    VideoRecordingLink TEXT,
    FeedbackSurveyLink TEXT,
    EventTheme TEXT,
    CateringProvided TEXT,
    ParkingInfo TEXT,
    CreatedOn DATE
);

INSERT INTO alumni_network_events VALUES (
    'EVT001','Alumni Homecoming 2023','2023-09-15','Main Auditorium','Springfield','IL',350,'Alumni Office','ABC Corp','Celebration','http://reg.example.com/ev001','Free','Annual reunion for class of 2000-2020','Michael Brown','http://video.example.com/ev001','http://survey.example.com/ev001','Community','Buffet','Lot A','2023-01-10'
);
INSERT INTO alumni_network_events VALUES (
    'EVT002','Career Networking Night','2023-11-05','Conference Center','Madison','WI',200,'Career Services','XYZ Ltd','Networking','http://reg.example.com/ev002','20','Connect alumni with current students','Laura Green','http://video.example.com/ev002','http://survey.example.com/ev002','Professional Development','Finger Food','Garage B','2023-02-14'
);
INSERT INTO alumni_network_events VALUES (
    'EVT003','Alumni Volunteer Day','2024-04-12','Community Park','Austin','TX',150,'Volunteer Committee','Local Nonprofit','Service','http://reg.example.com/ev003','Free','Hands‑on projects for alumni','David Lee','http://video.example.com/ev003','http://survey.example.com/ev003','Service','Picnic','Street Parking','2023-03-20'
);

-- Teacher Collaboration Platform
CREATE TABLE teacher_collaboration_platform (
    PlatformID TEXT PRIMARY KEY,
    PlatformName TEXT,
    LaunchDate DATE,
    Vendor TEXT,
    LicenseType TEXT,
    UserCount INTEGER,
    IntegrationAPI TEXT,
    SupportContact TEXT,
    CostPerUser REAL,
    DataEncryption TEXT,
    MultiFactorAuth TEXT,
    MobileAppAvailable TEXT,
    TrainingModules TEXT,
    UsagePolicy TEXT,
    ComplianceStandard TEXT,
    UpdateFrequency TEXT,
    LastUpdate DATE,
    Status TEXT,
    PrimaryAdmin TEXT,
    CreatedOn DATE
);

INSERT INTO teacher_collaboration_platform VALUES (
    'PLT001','TeachConnect','2021-03-01','EduTech','SaaS',1200,'REST','support@edutech.com',12.5,'AES-256','Enabled','Yes','ModuleA;ModuleB','Restricted','FERPA','Monthly','2023-12-01','Active','Sarah Miller','2021-03-02'
);
INSERT INTO teacher_collaboration_platform VALUES (
    'PLT002','CollabClass','2020-09-15','Classify','OnPremise',800,'GraphQL','help@classify.com',0,'TLS','Optional','No','ModuleX;ModuleY','Open','COPPA','Quarterly','2023-11-15','Maintenance','Mark Davis','2020-09-16'
);
INSERT INTO teacher_collaboration_platform VALUES (
    'PLT003','EduShare','2022-06-10','ShareEdu','Hybrid',950,'SOAP','contact@shareedu.org',5.0,'RSA-2048','Enabled','Yes','Module1;Module2','Limited','StateRules','Biannual','2023-10-20','Active','Anna Patel','2022-06-11'
);

-- Student Virtual Reality Sessions
CREATE TABLE student_virtual_reality_sessions (
    SessionID TEXT PRIMARY KEY,
    CourseCode TEXT,
    VRModuleName TEXT,
    SessionDate DATE,
    DurationMinutes INTEGER,
    InstructorID TEXT,
    StudentCount INTEGER,
    HeadsetModel TEXT,
    SoftwareVersion TEXT,
    LearningOutcome TEXT,
    FeedbackScore REAL,
    TechnicalIssues TEXT,
    SessionLocation TEXT,
    AttendanceRate REAL,
    CompletionStatus TEXT,
    CreatedTimestamp DATE,
    UpdatedTimestamp DATE,
    DeviceSerialNumber TEXT,
    NetworkBandwidth REAL,
    Notes TEXT
);

INSERT INTO student_virtual_l_education_sessions VALUES (
    'VR001','BIO101','Human Anatomy VR','2023-05-10',45,'INST01',30,'Oculus Quest 2','v3.2','Identify major organs',4.2,'None','Science Lab',0.95,'Complete','2023-05-01','2023-05-09','SN12345',100.5,'First pilot session'
);
INSERT INTO student_virtual_l_education_sessions VALUES (
    'VR002','HIST210','Ancient Rome Tour','2023-06-12',60,'INST02',28,'HTC Vive','v2.9','Explain Roman governance',3.9,'Minor lag','History Room',0.92,'Complete','2023-05-20','2023-06-10','SN67890',85.0,'Second cohort'
);
INSERT INTO student_virtual_l_education_sessions VALUES (
    'VR003','ENG150','Shakespeare Stage','2023-09-01',50,'INST03',32,'Valve Index','v4.0','Perform monologue',4.5,'Headset drift','English Lab',0.97,'Complete','2023-08-15','2023-08-31','SN54321',120.0,'Final semester session'
);

-- Facility Energy Storage Units
CREATE TABLE facility_energy_storage_units (
    UnitID TEXT PRIMARY KEY,
    FacilityCode TEXT,
    UnitType TEXT,
    CapacityKWh REAL,
    Manufacturer TEXT,
    InstallationDate DATE,
    WarrantyEndDate DATE,
    CurrentHealthStatus TEXT,
    LastMaintenanceDate DATE,
    PowerOutputKW REAL,
    VoltageV REAL,
    CurrentA REAL,
    EfficiencyPercent REAL,
    LocationWithinFacility TEXT,
    SerialNumber TEXT,
    OperatingTemperatureC REAL,
    CoolingMethod TEXT,
    MonitoringSystem TEXT,
    ReplacementPlan TEXT,
    CreatedOn DATE
);

INSERT INTO facility_energy_storage_units VALUES (
    'ESU001','SCH001','Battery','500', 'Tesla', '2022-01-15','2027-01-14','Good','2023-10-01',250,480,520,0.92,'Basement','SNB001',25,'Air','SysA','2026-12-31','2022-01-20'
);
INSERT INTO facility_energy_storage_units VALUES (
    'ESU002','SCH002','Flywheel','300','Siemens','2021-06-10','2026-06-09','Fair','2023-09-15',150,400,375,0.88,'Roof','SNF002',30,'Fluid','SysB','2025-11-30','2021-06-12'
);
INSERT INTO facility_energy_storage_units VALUES (
    'ESU003','SCH003','Battery','750','LG Chem','2023-03-05','2028-03-04','Excellent','2023-11-20',375,500,750,0.94','Utility Room','SNB003',22,'Air','SysC','2027-12-31','2023-03-07'
);

-- Community Transport Survey
CREATE TABLE community_transport_survey (
    SurveyID TEXT PRIMARY KEY,
    SurveyName TEXT,
    ConductedDate DATE,
    RegionCode TEXT,
    RespondentID TEXT,
    AgeGroup TEXT,
    HouseholdIncomeBand TEXT,
    PrimaryTransportMode TEXT,
    WeeklyTravelHours REAL,
    AverageTripDistanceKm REAL,
    SatisfactionScore INTEGER,
    AccessibilityRating INTEGER,
    SafetyConcern TEXT,
    EnvironmentalImpactConcern TEXT,
    SuggestedImprovements TEXT,
    SurveyMethod TEXT,
    DataCollector TEXT,
    CompletionStatus TEXT,
    Comments TEXT,
    CreatedOn DATE
);

INSERT INTO community_transport_survey VALUES (
    'CT001','Morning Commute Survey','2023-04-01','RC01','RESP001','25-34','$50k-$75k','Car',12.5,15.2,8,7,'None','Low','Increase bike lanes','Online','CityDept','Completed','No additional comments','2023-04-02'
);
INSERT INTO community_transport_survey VALUES (
    'CT002','Evening Transit Survey','2023-04-15','RC02','RESP002','35-44','$75k-$100k','Bus',9.3,10.1,7,6,'Crowding','Medium','More frequent service','Phone','TransitAgency','Completed','Prefer real‑time updates','2023-04-16'
);
INSERT INTO community_transport_survey VALUES (
    'CT003','Weekend Mobility Survey','2023-05-05','RC03','RESP003','18-24','<$25k','Bicycle',5.2,4.8,9,8,'Road conditions','High','Add protected lanes','In‑person','CommunityOrg','Pending','Will submit later','2023-05-06'
);

-- Environmental Noise Monitoring Stations
CREATE TABLE environmental_noise_monitoring_stations (
    StationID TEXT PRIMARY KEY,
    StationName TEXT,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    SensorModel TEXT,
    FrequencyRangeHz TEXT,
    NoiseLevelThresholdDB REAL,
    CalibrationDate DATE,
    MaintenanceIntervalDays INTEGER,
    CurrentStatus TEXT,
    DataUploadFrequencyMin INTEGER,
    PowerSource TEXT,
    HousingType TEXT,
    OwnerOrganization TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    LastDataTimestamp DATE,
    CreatedOn DATE
);

INSERT INTO environmental_noise_monitoring_stations VALUES (
    'NS001','Riverfront Station',34.5678,-117.3456,'2021-07-20','NoiseX100','20-20000','85', '2023-07-15',180,'Active',15,'Solar','Outdoor','CityEnvDept','Mike Allen','5551112222','mike.allen@city.gov','2023-12-01','2021-07-21'
);
INSERT INTO environmental_noise_monitoring_stations VALUES (
    'NS002','Industrial Zone Station',35.6789,-118.4567,'2020-05-10','SoundPro200','10-15000','80','2023-05-08',180,'Active',10,'Mains','Enclosed','CountyEnvAgency','Sara Lee','5553334444','sara.lee@county.gov','2023-12-02','2020-05-11'
);
INSERT INTO environmental_noise_monitoring_stations VALUES (
    'NS003','Residential Area Station',36.7890,-119.5678,'2022-09-05','QuietSense','15-18000','75','2023-09-01',180,'Active',20,'Battery','Outdoor','StateEnvDept','Tom Reed','5555556666','tom.reed@state.gov','2023-12-03','2022-09-06'
);

-- District Equity Programs
CREATE TABLE district_equity_programs (
    ProgramID TEXT PRIMARY KEY,
    DistrictCode TEXT,
    ProgramName TEXT,
    LaunchYear INTEGER,
    TargetPopulation TEXT,
    FundingAmount REAL,
    FundingSource TEXT,
    Objectives TEXT,
    Metrics TEXT,
    EvaluationFrequency TEXT,
    LeadCoordinator TEXT,
    CoordinatorPhone TEXT,
    CoordinatorEmail TEXT,
    Status TEXT,
    LastReviewDate DATE,
    ImpactScore REAL,
    NumberOfSchools INTEGER,
    NumberOfStudents INTEGER,
    PlannedExpansion TEXT,
    CreatedOn DATE
);

INSERT INTO district_equity_programs VALUES (
    'EQP001','D001','STEM Access Initiative',2021,'Low‑income students',300000,'State Grant','Increase STEM participation','ParticipationRate,TestScore','Annual','Laura Kim','5557778888','laura.kim@district.edu','Active','2023-06-15',4.5,12,2400,'Add two new labs','2021-08-01'
);
INSERT INTO district_equity_programs VALUES (
    'EQP002','D002','Early Literacy Boost',2020,'English learners',150000,'Federal Grant','Improve reading proficiency','ReadingLevel,Attendance','Semi‑annual','James Patel','5559990000','james.patel@district.edu','Active','2023-05-10',4.2,9,1800,'Expand to middle schools','2020-03-15'
);
INSERT INTO district_equity_programs VALUES (
    'EQP003','D003','Inclusive Sports Program',2022,'Students with disabilities',200000,'Private Donation','Provide adaptive sports','Participation,InjuryRate','Annual','Maria Gonzales','5552223333','maria.gonzales@district.edu','Pending','2023-07-20',3.9,7,1400,'Introduce wheelchair basketball','2022-11-20'
);

-- Public Art Installation Maintenance
CREATE TABLE public_art_installation_maintenance (
    MaintenanceID TEXT PRIMARY KEY,
    InstallationID TEXT,
    ArtworkTitle TEXT,
    ArtistName TEXT,
    LocationDescription TEXT,
    MaintenanceDate DATE,
    TechnicianID TEXT,
    MaintenanceType TEXT,
    MaterialsReplaced TEXT,
    Cost REAL,
    DurationHours INTEGER,
    SafetyCheckPassed TEXT,
    DocumentationLink TEXT,
    Notes TEXT,
    NextScheduledMaintenance DATE,
    ConditionRating TEXT,
    FundingSource TEXT,
    ContractorName TEXT,
    ContractorContact TEXT,
    CreatedOn DATE
);

INSERT INTO public_art_installation_maintenance VALUES (
    'MAINT001','ART001','River Sculpture','Anna Rivera','Riverbank near Main St','2023-03-10','TECH01','Cleaning','None',500,4,'Yes','http://docs.example.com/maint001','Removed graffiti','2024-03-10','Good','City Arts Fund','CleanCo','5554445555','2023-03-11'
);
INSERT INTO public_art_installation_maintenance VALUES (
    'MAINT002','ART002','Glass Mosaic','Liam Chen','Town Plaza Center','2023-05-22','TECH02','Repair','Glass Tiles',1200,6,'Yes','http://docs.example.com/maint002','Replaced cracked panels','2024-05-22','Fair','County Grant','MosaicFix','5556667777','2023-05-23'
);
INSERT INTO public_art_installation_maintenance VALUES (
    'MAINT003','ART003','Bronze Statue','Sofia Alvarez','Front of Library','2023-08-15','TECH03','Coating','Bronze Patina',800,3,'Yes','http://docs.example.com/maint003','Applied anti‑corrosion coating','2024-08-15','Excellent','State Arts Program','MetalWorks','5558889999','2023-08-16'
);