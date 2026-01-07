-- Table: student_funding_scholarship_pool
CREATE TABLE student_funding_scholarship_pool
(
    ScholarshipID TEXT PRIMARY KEY,
    StudentID TEXT,
    SchoolCDSCode TEXT,
    ScholarshipName TEXT,
    AwardYear INTEGER,
    AwardAmount REAL,
    FundingSource TEXT,
    ApplicationDate DATE,
    ApprovalDate DATE,
    RenewalFlag INTEGER,
    AcademicProgram TEXT,
    GPARequirement REAL,
    CommunityServiceHours INTEGER,
    ResidencyRequirement TEXT,
    MajorField TEXT,
    EligibilityStatus TEXT,
    DisbursementMethod TEXT,
    DisbursementDate DATE,
    TaxableFlag INTEGER,
    Notes TEXT
);

INSERT INTO student_funding_scholarship_pool VALUES
('SCH001','STU123','CDS1001','STEM Excellence',2023,5000,'State Grant','2023-01-10','2023-02-01',0,'Engineering',3.5,30,'InState','Engineering','Approved','DirectDeposit','2023-02-15',1,'First award');

INSERT INTO student_funding_scholarship_pool VALUES
('SCH002','STU456','CDS1002','Arts Leadership',2022,3000,'Private Donor','2022-03-05','2022-04-01',1,'Fine Arts',3.0,20,'OutOfState','VisualArts','Pending','Check','2022-04-15',0,'Renewal pending');

INSERT INTO student_funding_scholarship_pool VALUES
('SCH003','STU789','CDS1003','Community Service Grant',2024,2000,'Federal', '2024-05-12','2024-06-01',0,'Social Work',2.8,50,'InState','SocialWork','Approved','DirectDeposit','2024-06-10',1,'');

-- Table: district_innovation_grant_programs
CREATE TABLE district_innovation_grant_programs
(
    GrantProgramID TEXT PRIMARY KEY,
    DistrictCode TEXT,
    ProgramName TEXT,
    FiscalYear INTEGER,
    TotalFunding REAL,
    FundingAgency TEXT,
    ApplicationDeadline DATE,
    AwardDate DATE,
    FocusArea TEXT,
    EligibleSchoolTypes TEXT,
    MatchRequirement REAL,
    ReportingFrequency TEXT,
    ContactPersonName TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Status TEXT,
    NumberOfProjects INTEGER,
    AverageProjectSize REAL,
    EvaluationScore REAL,
    GrantTermYears INTEGER,
    InnovationMetric TEXT,
    Notes TEXT
);

INSERT INTO district_innovation_grant_programs VALUES
('GP001','D001','Tech Futures',2023,1500000,'Dept of Education','2023-07-01','2023-09-15','STEAM Integration','Public,Charter',0.2,'Quarterly','Jane Doe','5551234567','jane.doe@example.com','Awarded',12,125000,85.5,3,'Student Engagement','');

INSERT INTO district_innovation_grant_programs VALUES
('GP002','D002','Green Schools Initiative',2022,800000,'EPA','2022-04-15','2022-06-30','Sustainability','Public',0.1,'Annual','John Smith','5559876543','john.smith@example.com','Completed',8,100000,78.0,2,'Energy Savings','');

INSERT INTO district_innovation_grant_programs VALUES
('GP003','D003','Digital Literacy Boost',2024,500000,'National Science Foundation','2024-02-20','2024-05-10','Digital Skills','Charter',0.15,'SemiAnnual','Alice Lee','5552223344','alice.lee@example.com','Pending',5,100000,0,0,'','');

-- Table: community_park_maintenance_schedule
CREATE TABLE community_park_maintenance_schedule
(
    ScheduleID TEXT PRIMARY KEY,
    ParkID TEXT,
    ParkName TEXT,
    MaintenanceDate DATE,
    MaintenanceType TEXT,
    ContractorName TEXT,
    ContractorLicense TEXT,
    EstimatedCost REAL,
    ActualCost REAL,
    HoursSpent INTEGER,
    StaffLead TEXT,
    EquipmentUsed TEXT,
    SafetyGearProvided INTEGER,
    WeatherCondition TEXT,
    AreaSqFt REAL,
    IrrigationChecked INTEGER,
    TrashBinsEmptied INTEGER,
    PlaygroundInspected INTEGER,
    TreePruned INTEGER,
    Comments TEXT,
    FollowUpNeeded INTEGER
);

INSERT INTO community_park_maintenance_schedule VALUES
('MS001','P001','Riverfront Park','2023-06-10','Groundskeeping','GreenCare LLC','LIC12345',1200.00,1150.00,8,'Mike Torres','Mower,Trimmer',1,'Sunny',25000,1,1,0,2,'All good','0');

INSERT INTO community_park_maintenance_schedule VALUES
('MS002','P002','Oak Grove','2023-07-15','Playground Repair','SafePlay Inc','LIC67890',2500.00,2600.00,12,'Laura Chen','Welding Kit',1,'Rainy',18000,0,1,1,0,'Repaired swings','1');

INSERT INTO community_park_maintenance_schedule VALUES
('MS003','P003','Lakeside Reserve','2023-08-05','Tree Pruning','TreeWorks','LIC11223',800.00,750.00,5,'Sam Patel','Chainsaw',1,'Cloudy',30000,0,0,0,5,'Pruned 5 oaks','0');

-- Table: school_virtual_exchange_partners
CREATE TABLE school_virtual_exchange_partners
(
    PartnerID TEXT PRIMARY KEY,
    SchoolCDSCode TEXT,
    PartnerInstitution TEXT,
    CountryCode TEXT,
    ProgramName TEXT,
    StartDate DATE,
    EndDate DATE,
    StudentCount INTEGER,
    FacultyCount INTEGER,
    TimeZoneDifference INTEGER,
    PlatformUsed TEXT,
    LanguageSupport TEXT,
    CreditTransferAgreement INTEGER,
    FundingProvided REAL,
    ContactPerson TEXT,
    ContactEmail TEXT,
    EvaluationScore REAL,
    Status TEXT,
    Notes TEXT,
    LastUpdated DATE
);

INSERT INTO school_virtual_exchange_partners VALUES
('VP001','CDS1001','University of Tokyo','JP','STEM Virtual Link','2023-01-15','2023-12-15',30,5,13,'Zoom','Japanese,English',1,20000,'Kenichi Sato','kenichi.sato@utokyo.jp',88.5,'Active','', '2023-01-20');

INSERT INTO school_virtual_exchange_partners VALUES
('VP002','CDS1002','Louvre School of Arts','FR','Art Collaboration','2022-09-01','2023-08-31',20,3,9,'Microsoft Teams','French,English',0,15000,'Claire Dupont','claire.dupont@louvre.edu',75.0,'Completed','Successful exhibition','2023-09-01');

INSERT INTO school_virtual_exchange_partners VALUES
('VP003','CDS1003','TechConnect India','IN','Coding Bootcamp','2024-03-01','2024-11-30',25,4,10,'Google Meet','Hindi,English',1,18000,'Ravi Kumar','ravi.kumar@techconnect.in',0,'Planned','', '2024-02-28');

-- Table: facility_air_quality_monitoring
CREATE TABLE facility_air_quality_monitoring
(
    MonitorID TEXT PRIMARY KEY,
    FacilityID TEXT,
    LocationDescription TEXT,
    InstallationDate DATE,
    SensorType TEXT,
    PM25Level REAL,
    PM10Level REAL,
    CO2Level REAL,
    VOCLevel REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    CalibrationDate DATE,
    CalibrationDueDate DATE,
    FirmwareVersion TEXT,
    BatteryLevelPercent INTEGER,
    AlertThresholdPM25 REAL,
    AlertThresholdCO2 REAL,
    MaintenanceRequired INTEGER,
    LastMaintenanceDate DATE,
    DataUploadFrequencyMinutes INTEGER,
    DataEndpointURL TEXT,
    Status TEXT,
    Notes TEXT
);

INSERT INTO facility_air_quality_monitoring VALUES
('AQM001','F001','Main Lobby','2022-05-10','BetaSense',12.5,25.0,420.0,0.45,22.0,45.0,'2023-05-01','2024-05-01','v1.2',85,35.0,1000,0,'2023-05-01',15,'https://data.school.org/aqm001','Active','');

INSERT INTO facility_air_quality_monitoring VALUES
('AQM002','F002','Science Lab','2021-09-20','AlphaAir',8.0,18.0,380.0,0.30,20.5,40.0,'2023-09-15','2024-09-15','v2.0',78,30.0,900,1,'2023-09-15',10,'https://data.school.org/aqm002','Active','Battery replacement due');

INSERT INTO facility_air_quality_monitoring VALUES
('AQM003','F003','Gymnasium','2023-01-05','GammaTec',15.0,35.0,500.0,0.60,23.5,50.0,'2023-12-01','2024-12-01','v1.0',92,40.0,1100,0,'2023-12-01',20,'https://data.school.org/aqm003','Active','');

-- Table: technology_device_security_audit
CREATE TABLE technology_device_security_audit
(
    AuditID TEXT PRIMARY KEY,
    DeviceID TEXT,
    DeviceType TEXT,
    SerialNumber TEXT,
    AssetTag TEXT,
    OwnerUserID TEXT,
    Department TEXT,
    OSVersion TEXT,
    PatchLevel TEXT,
    AntivirusInstalled INTEGER,
    EncryptionEnabled INTEGER,
    LastScanDate DATE,
    VulnerabilitiesFound INTEGER,
    CriticalVulnCount INTEGER,
    MediumVulnCount INTEGER,
    LowVulnCount INTEGER,
    RemediationStatus TEXT,
    AuditorName TEXT,
    AuditDate DATE,
    FollowUpDate DATE,
    Remarks TEXT,
    ComplianceScore REAL
);

INSERT INTO technology_device_security_audit VALUES
('AUD001','DEV1001','Laptop','SN12345','AT001','U001','Administration','Windows10','2023-08','1','1','2023-09-10',2,0,2,0,'Pending','Emily Wong','2023-09-12','2023-09-20','Need patch for CVE-2023-1234',92.5);

INSERT INTO technology_device_security_audit VALUES
('AUD002','DEV2002','Desktop','SN54321','AT002','U002','Counseling','macOS12','2023-07','1','0','2023-08-15',5,1,3,1,'In Progress','Mark Davis','2023-08-18','2023-09-01','Enable encryption','78.0');

INSERT INTO technology_device_security_audit VALUES
('AUD003','DEV3003','Tablet','SN98765','AT003','U003','Physical Education','iOS15','2023-09','1','1','2023-09-05',0,0,0,0,'Compliant','Sofia Patel','2023-09-07','2023-09-30','',95.0);

-- Table: parental_involvement_metrics
CREATE TABLE parental_involvement_metrics
(
    MetricID TEXT PRIMARY KEY,
    SchoolCDSCode TEXT,
    AcademicYear TEXT,
    ParentID TEXT,
    ParentName TEXT,
    AttendanceConference INTEGER,
    VolunteerHours INTEGER,
    CommitteeMemberships INTEGER,
    SurveyScore REAL,
    CommunicationPreference TEXT,
    EmailCount INTEGER,
    PhoneCallCount INTEGER,
    SMSCount INTEGER,
    EventParticipated TEXT,
    FeedbackSubmitted INTEGER,
    SatisfactionScore REAL,
    ConcernsRaised INTEGER,
    FollowUpActions INTEGER,
    RecordedBy TEXT,
    RecordDate DATE
);

INSERT INTO parental_involvement_metrics VALUES
('PM001','CDS1001','2022-23','PAR001','Maria Gonzalez',1,12,2,88.5,'Email',5,2,0,'Fall Festival',1,90.0,0,0,'AdminA','2023-01-15');

INSERT INTO parental_involvement_metrics VALUES
('PM002','CDS1002','2022-23','PAR002','James Lee',0,4,0,72.0,'Phone',2,3,1,'Science Night',0,70.0,1,1,'AdminB','2023-02-10');

INSERT INTO parental_involvement_metrics VALUES
('PM003','CDS1003','2022-23','PAR003','Aisha Khan',1,20,3,95.0,'SMS',8,1,2,'Winter Concert',1,95.0,0,0,'AdminC','2023-03-05');

-- Table: district_transportation_green_fleet
CREATE TABLE district_transportation_green_fleet
(
    FleetID TEXT PRIMARY KEY,
    DistrictCode TEXT,
    VehicleID TEXT,
    VehicleType TEXT,
    FuelType TEXT,
    AcquisitionDate DATE,
    Manufacturer TEXT,
    Model TEXT,
    Year INTEGER,
    Mileage REAL,
    EmissionRating REAL,
    BatteryCapacityKWh REAL,
    ElectricRangeMiles REAL,
    ChargingStationLocation TEXT,
    MaintenanceSchedule TEXT,
    Status TEXT,
    AssignedRouteID TEXT,
    LeaseFlag INTEGER,
    PurchasePrice REAL,
    DepreciationYears INTEGER,
    Notes TEXT
);

INSERT INTO district_transportation_green_fleet VALUES
('GF001','D001','V001','Bus','Electric','2022-03-01','Tesla','Model X','2022',12000,0,75,250,'Station A','Annual','Active','R001',0,250000,8,'First electric bus');

INSERT INTO district_transportation_green_fleet VALUES
('GF002','D001','V002','Van','Hybrid','2021-07-15','Toyota','Prius','2021',30000,45,0,0,'Station B','SemiAnnual','Active','R002',0,35000,6,'Hybrid van for special ed');

INSERT INTO district_transportation_green_fleet VALUES
('GF003','D002','V003','Bus','Electric','2023-05-20','BYD','K9','2023',5000,0,120,300,'Station C','Annual','Active','R003',1,280000,7,'Leased electric bus');

-- Table: school_artistic_media_inventory
CREATE TABLE school_artistic_media_inventory
(
    ItemID TEXT PRIMARY KEY,
    SchoolCDSCode TEXT,
    Category TEXT,
    ItemName TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    PurchaseDate DATE,
    PurchasePrice REAL,
    Condition TEXT,
    Quantity INTEGER,
    LocationRoom TEXT,
    SerialNumber TEXT,
    WarrantyExpiration DATE,
    MediaFormat TEXT,
    Resolution TEXT,
    AudioChannels INTEGER,
    SoftwareIncluded TEXT,
    LastCalibrationDate DATE,
    CalibrationDueDate DATE,
    AssignedTo TEXT,
    Status TEXT,
    Notes TEXT
);

INSERT INTO school_artistic_media_inventory VALUES
('AI001','CDS1001','Audio','Studio Microphone','Shure','SM58','2020-09-10',199.99,'Good',2,'Room 101','SN001','2023-09-10','Analog','N/A',1,'Studio Suite','2022-09-10','2023-09-10','Band Class','InUse','');

INSERT INTO school_artistic_media_inventory VALUES
('AI002','CDS1002','Video','Projector','Epson','EB-U42','2019-02-20',849.00,'Fair',1,'Auditorium','SN002','2022-02-20','Digital','1920x1080',2,'None','2021-02-20','2022-02-20','Drama Dept','InUse','Lamp replaced 2022');

INSERT INTO school_artistic_media_inventory VALUES
('AI003','CDS1003','Lighting','Stage Light','LED','LX200','2021-06-15',500.00,'Excellent',4,'Stage','SN003','2024-06-15','LED','N/A',0,'LightingControl','2022-06-15','2023-06-15','Theater Tech','InUse','');

-- Table: student_social_media_activity_log
CREATE TABLE student_social_media_activity_log
(
    LogID TEXT PRIMARY KEY,
    StudentID TEXT,
    SchoolCDSCode TEXT,
    Platform TEXT,
    Username TEXT,
    ActivityDate DATE,
    PostsCount INTEGER,
    LikesReceived INTEGER,
    CommentsMade INTEGER,
    FollowersCount INTEGER,
    FollowingCount INTEGER,
    AccountStatus TEXT,
    PrivacySetting TEXT,
    LastLogin DATE,
    DeviceUsed TEXT,
    IPAddress TEXT,
    ContentFlagged INTEGER,
    FlagReason TEXT,
    ReviewerID TEXT,
    ReviewDate DATE
);

INSERT INTO student_social_media_activity_log VALUES
('LOG001','STU123','CDS1001','Instagram','insta_user1','2023-09-15',5,20,3,150,80,'Active','Public','2023-09-15','iPhone','192.168.1.10',0,'','',NULL);

INSERT INTO student_social_media_activity_log VALUES
('LOG002','STU456','CDS1002','Twitter','tweetkid','2023-09-14',2,10,1,80,120,'Active','Protected','2023-09-14','Android','192.168.2.20',1,'Harassment','REV001','2023-09-15');

INSERT INTO student_social_media_activity_log VALUES
('LOG003','STU789','CDS1003','TikTok','tiktoker3','2023-09-13',8,50,5,300,200,'Active','Public','2023-09-13','Tablet','192.168.3.30',0,'','',NULL);