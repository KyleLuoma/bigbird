-- District transportation infrastructure details
CREATE TABLE district_transport_infrastructure
(
    InfrastructureID          TEXT PRIMARY KEY,
    DistrictCode              INTEGER,
    YearBuilt                 INTEGER,
    AssetType                 TEXT,
    LengthMiles               REAL,
    CapacityVehicles          INTEGER,
    SurfaceType               TEXT,
    MaintenanceStatus         TEXT,
    LastInspectionDate        DATE,
    FundingSource             TEXT,
    EstimatedCost             REAL,
    Contractor                TEXT,
    ProjectPhase              TEXT,
    TrafficVolumeAADT         INTEGER,
    SafetyRating              INTEGER,
    GeoLatitude               REAL,
    GeoLongitude              REAL,
    ContactPerson             TEXT,
    ContactPhone              TEXT,
    Notes                     TEXT,
    CreatedAt                 DATE,
    UpdatedAt                 DATE
);
INSERT INTO district_transport_infrastructure VALUES ('INF001','101','1998','Bridge','2.5',15000,'Concrete','Good','2023-06-15','State Grant',2500000,'ABC Constructions','Completed',35000,5,40.7128,-74.0060,'John Doe','555-1234','Main river crossing','2022-01-01','2024-01-01');
INSERT INTO district_transport_infrastructure VALUES ('INF002','102','2005','Roadway','12.0',8000,'Asphalt','Needs Repair','2022-11-20','Bond Funding',1800000,'XYZ Contractors','In Progress',45000,3,34.0522,-118.2437','Jane Smith','555-5678','East side arterial','2021-07-15','2023-07-15');
INSERT INTO district_transport_infrastructure VALUES ('INF003','103','2012','Tunnel','1.2',5000,'Concrete','Good','2023-02-10','Federal Grant',3200000,'TunnelBuild Inc','Planning',22000,4,41.8781,-87.6298','Mike Lee','555-9012','Downtown subway tunnel','2022-03-01','2025-03-01');

-- Community health clinic staffing information
CREATE TABLE community_health_clinic_staffing
(
    ClinicID               TEXT PRIMARY KEY,
    CountyCode             TEXT,
    ClinicName             TEXT,
    StaffCount             INTEGER,
    Physicians             INTEGER,
    Nurses                 INTEGER,
    Therapists             INTEGER,
    Administrators         INTEGER,
    SupportStaff           INTEGER,
    AvgPatientLoadPerDay   REAL,
    FundingLevel           TEXT,
    OpenDate               DATE,
    ClosedDate             DATE,
    AccreditationStatus    TEXT,
    ContactEmail           TEXT,
    ContactPhone           TEXT,
    Latitude               REAL,
    Longitude              REAL,
    ServicesOffered       TEXT,
    RecentGrantAmount      REAL,
    LastGrantDate          DATE,
    Notes                  TEXT
);
INSERT INTO community_health_clinic_staffing VALUES ('CLN001','001','Northside Health Center',45,8,15,5,4,13,120.5,'High','2005-04-01',NULL,'Accredited','northside@health.org','555-1111',39.9526,-75.1652,'Primary Care,Dental','50000','2023-01-15','Opened 2005');
INSERT INTO community_health_clinic_staffing VALUES ('CLN002','002','River Valley Clinic',30,5,10,3,2,10,95.3,'Medium','2010-09-15',NULL,'Accredited','rivervalley@clinic.org','555-2222',36.1699,-115.1398,'Family Medicine,Immunizations','30000','2022-06-20','Serves rural population');
INSERT INTO community_health_clinic_staffing VALUES ('CLN003','003','Eastside Community Hospital',60,12,20,8,5,15,150.0,'High','1998-01-20','2020-12-31','Accredited','eastside@hospital.org','555-3333',34.0522,-118.2437,'Emergency,Outpatient','75000','2021-11-05','Transitioned to outpatient only');

-- School arts funding grants detail
CREATE TABLE school_arts_funding_grants_detail
(
    GrantID                TEXT PRIMARY KEY,
    SchoolCode             TEXT,
    GrantYear              TEXT,
    GrantAmount            REAL,
    FundingAgency          TEXT,
    ProgramArea            TEXT,
    EligibilityCriteria    TEXT,
    ApplicationDate        DATE,
    ApprovalDate           DATE,
    Status                 TEXT,
    ReportingDueDate       DATE,
    ContactPerson          TEXT,
    ContactEmail           TEXT,
    ContactPhone           TEXT,
    ProjectTitle           TEXT,
    ProjectDescription     TEXT,
    ExpectedOutcomes       TEXT,
    BudgetBreakdown        TEXT,
    MatchingFunds          REAL,
    MatchingFundsSource    TEXT,
    CreatedAt              DATE,
    UpdatedAt              DATE
);
INSERT INTO school_arts_funding_grants_detail VALUES ('GRNT001','SCH001','2022',25000,'State Arts Council','Visual Arts','Public School','2021-10-01','2021-12-15','Approved','2023-06-30','Emily Clark','e.clark@school.org','555-4444','Mural Project','Create student-led murals in hallway','Enhanced school environment','Materials:15000; Labor:10000',5000,'Local Business','2021-11-01','2022-03-01');
INSERT INTO school_arts_funding_grants_detail VALUES ('GRNT002','SCH002','2021',18000,'National Endowment for the Arts','Performing Arts','Non-profit','2020-09-12','2020-11-20','Approved','2022-05-15','David Lee','d.lee@school.org','555-5555','Community Theater Production','Student theater production open to community','Increased student participation','Costumes:8000; Set:6000; Marketing:4000',2000,'Parent Association','2020-10-01','2021-02-15');
INSERT INTO school_arts_funding_grants_detail VALUES ('GRNT003','SCH003','2023',30000,'Private Arts Foundation','Music','Public School','2022-08-05','2022-10-20','Pending','2024-04-10','Sofia Martinez','s.martinez@school.org','555-6666','School Band Upgrade','Purchase new instruments and audio equipment','Improved music education','Instruments:20000; Audio:10000',0,NULL,'2022-09-01','2023-01-10');

-- Environmental noise monitoring logs
CREATE TABLE environmental_noise_monitoring_logs
(
    LogID                 TEXT PRIMARY KEY,
    SensorID              TEXT,
    LocationName          TEXT,
    Latitude              REAL,
    Longitude             REAL,
    MeasurementDate       DATE,
    MeasurementTime       TEXT,
    NoiseLevelDecibel     REAL,
    FrequencyHz           REAL,
    DurationSeconds       REAL,
    WeatherCondition      TEXT,
    WindSpeed             REAL,
    Humidity              REAL,
    TemperatureC          REAL,
    CalibrationDate       DATE,
    TechnicianName        TEXT,
    Remarks               TEXT,
    DataQualityScore      INTEGER,
    RecordedBy            TEXT,
    CreatedAt             DATE,
    UpdatedAt             DATE,
    SourceSystem          TEXT
);
INSERT INTO environmental_noise_monitoring_logs VALUES ('LOG001','SNS001','Main St & 5th',40.7128,-74.0060,'2023-07-01','08:30','68.5',500,'60','Clear',5.2,45,22.0,'2023-01-15','Anna Green','No incidents','9','SystemA','2023-07-01','2023-07-02','NoiseNet');
INSERT INTO environmental_noise_monitoring_logs VALUES ('LOG002','SNS002','Industrial Park',34.0522,-118.2437,'2023-07-02','14:15','74.2',1000','120','Windy',12.5,55,27.3,'2023-02-20','Ben Carter','Heavy machinery nearby','7','SystemB','2023-07-02','2023-07-03','NoiseNet');
INSERT INTO environmental_noise_monitoring_logs VALUES ('LOG003','SNS003','Residential Area',41.8781,-87.6298,'2023-07-03','22:45','55.0',250','30','Rain',3.0,80,18.5,'2023-03-10','Clara Zhou','Low traffic night','10','SystemC','2023-07-03','2023-07-04','NoiseNet');

-- Student virtual exchange partners
CREATE TABLE student_virtual_exchange_partners
(
    PartnerID               TEXT PRIMARY KEY,
    SchoolCode              TEXT,
    PartnerSchoolName       TEXT,
    CountryCode             TEXT,
    LanguageSupported       TEXT,
    ExchangeProgramName    TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    StudentCount            INTEGER,
    FacultyCount            INTEGER,
    ProgramFocus            TEXT,
    ContactPerson           TEXT,
    ContactEmail            TEXT,
    ContactPhone            TEXT,
    VirtualPlatform         TEXT,
    TimeZone                TEXT,
    AcademicYear            TEXT,
    FundingProvided         REAL,
    Notes                   TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    Status                  TEXT
);
INSERT INTO student_virtual_exchange_partners VALUES ('PRT001','SCH001','Lycée International','FR','French','Virtual French Immersion','2023-09-01','2024-06-30',45,5,'Language and Culture','Pierre Dubois','p.dubois@lycee.fr','555-7777','Zoom','CET','2023-2024',20000,'Biannual virtual classes','2023-08-15','2023-09-01','Active');
INSERT INTO student_virtual_exchange_partners VALUES ('PRT002','SCH002','Tokyo Metropolitan High','JP','Japanese','Virtual STEM Collaboration','2023-10-15','2024-05-31',30,4,'STEM Projects','Yuki Tanaka','y.tanaka@tokyo.hi.jp','555-8888','Microsoft Teams','JST','2023-2024',15000,'Joint robotics competition','2023-09-30','2023-10-15','Active');
INSERT INTO student_virtual_exchange_partners VALUES ('PRT003','SCH003','São Paulo State School','BR','Portuguese','Virtual Art Exchange','2024-01-10','2024-12-20',25,3,'Visual Arts','Ana Silva','a.silva@spstate.br','555-9999','Google Meet','BRT','2023-2024',12000,'Monthly art critique sessions','2023-12-01','2024-01-10','Planned');

-- Facility HVAC system inventory
CREATE TABLE facility_hvac_system_inventory
(
    SystemID               TEXT PRIMARY KEY,
    FacilityCode           TEXT,
    SystemType             TEXT,
    Manufacturer           TEXT,
    ModelNumber            TEXT,
    SerialNumber           TEXT,
    InstallationDate       DATE,
    CapacityBTU            REAL,
    EnergyEfficiencyRatio  REAL,
    MaintenanceCycleMonths INTEGER,
    LastMaintenanceDate    DATE,
    NextMaintenanceDate    DATE,
    WarrantyExpiration     DATE,
    ServiceProvider        TEXT,
    ContactPhone           TEXT,
    CurrentStatus          TEXT,
    AirflowCFM             REAL,
    PowerSupplyVoltage     REAL,
    RefrigerantType        TEXT,
    Notes                  TEXT,
    CreatedAt              DATE,
    UpdatedAt              DATE
);
INSERT INTO facility_hvac_system_inventory VALUES ('HVAC001','FAC001','Central Air','Carrier','C500','SN12345','2015-03-20',50000,14.5,12,'2023-04-01','2023-10-01','2028-03-20','CoolTech Services','555-1212','Operational',3500,240,'R410A','Main building HVAC','2022-01-01','2023-04-01');
INSERT INTO facility_hvac_system_inventory VALUES ('HVAC002','FAC002','Heat Pump','Trane','TP300','SN67890','2018-07-15',30000,13.2,9,'2023-02-10','2023-11-10','2025-07-15','EcoHeat Co','555-1313','Operational',2500,230,'R22','Gymnasium HVAC','2022-06-01','2023-02-10');
INSERT INTO facility_hvac_system_inventory VALUES ('HVAC003','FAC003','VRF System','Daikin','VRF900','SN54321','2020-11-05',60000,15.0,6,'2023-05-20','2023-11-20','2026-11-05','VentPro Ltd','555-1414','Under Inspection',4000,250,'R32','Science Lab HVAC','Installation pending','2023-01-15','2023-05-20');

-- District renewable energy assets
CREATE TABLE district_renewable_energy_assets
(
    AssetID                TEXT PRIMARY KEY,
    DistrictCode           INTEGER,
    AssetType              TEXT,
    CapacityMW             REAL,
    InstallationDate       DATE,
    Vendor                 TEXT,
    ContractEndDate        DATE,
    MaintenanceProvider    TEXT,
    CurrentOutputMW        REAL,
    EstimatedAnnualGenerationMWh REAL,
    FundingSource          TEXT,
    Cost                   REAL,
    Status                 TEXT,
    Latitude               REAL,
    Longitude              REAL,
    EnvironmentalImpactScore INTEGER,
    CommissioningDate      DATE,
    DecommissionDate       DATE,
    Notes                  TEXT,
    CreatedAt              DATE,
    UpdatedAt              DATE,
    Owner                  TEXT
);
INSERT INTO district_renewable_energy_assets VALUES ('REAS001',101,'Solar PV',5.2,'2021-06-01','SunPower','2031-06-01','GreenEnergy Services',4.8,4200,'Bond Funding',7500000,'Operational',35.2271,-80.8431,8,'2021-06-15',NULL,'Solar array on district office roof','2021-05-01','2022-01-01','District');
INSERT INTO district_renewable_energy_assets VALUES ('REAS002',102,'Wind Turbine',12.0,'2019-04-15','WindTech','2029-04-15','WindMaintain Co',9.5,85000,'Grant',18000000,'Operational',36.1627,-86.7816,9,'2019-05-01',NULL,'Three turbines on county highland','2019-04-01','2020-02-01','District');
INSERT INTO district_renewable_energy_assets VALUES ('REAS003',103,'Geothermal',3.5,'2022-01-20','GeoEnergy','2032-01-20','GeoMaintain','3.3',30600,'Private Investment',12000000,'Under Construction',41.8781,-87.6298,7,'2022-02-01',NULL,'Geothermal plant for district heating','2021-12-01','2022-06-01','District');

-- Library archival materials
CREATE TABLE library_archival_materials
(
    MaterialID            TEXT PRIMARY KEY,
    LibraryCode           TEXT,
    Title                 TEXT,
    Creator               TEXT,
    CreationDate          DATE,
    MaterialType          TEXT,
    PhysicalFormat        TEXT,
    DigitalFormat         TEXT,
    Language              TEXT,
    SubjectArea           TEXT,
    CollectionName        TEXT,
    ShelfLocation         TEXT,
    PreservationStatus    TEXT,
    AccessRestrictions    TEXT,
    DigitizationStatus    TEXT,
    DigitizationDate      DATE,
    SizeMB                REAL,
    NumPages              INTEGER,
    ConditionRating       INTEGER,
    Notes                 TEXT,
    AcquiredDate          DATE,
    AcquiredFrom          TEXT
);
INSERT INTO library_archival_materials VALUES ('MAT001','LIB001','Township Minutes 1950-1960','Township Clerk','1955-03-12','Document','Paper','PDF','English','Government','Municipal Records','Box A3','Stable','Public','Completed','2022-08-10',12.5,200,9,'Historical township meeting minutes','1950-01-01','County Archive');
INSERT INTO library_archival_materials VALUES ('MAT002','LIB002','Photographs of 1975 Parade','Local Historian','1975-07-04','Image','Film','TIFF','English','History','Photographic Collection','Shelf B2','Fragile','Restricted','In Progress','2023-01-15',250.0,0,6,'Black and white film scans','1975-07-04','Donated by Family');
INSERT INTO library_archival_materials VALUES ('MAT003','LIB003','Oral History Interview: John Doe','Interview Team','1990-11-20','Audio','Cassette','MP3','English','Sociology','Oral Histories','Cabinet C1','Good','Public','Completed','2021-05-05',45.0,0,8,'Interview about local industry','1990-11-20','Recorded by University');

-- School parent contact preferences
CREATE TABLE school_parent_contact_preferences
(
    PreferenceID                 TEXT PRIMARY KEY,
    SchoolCode                   TEXT,
    ParentID                     TEXT,
    PreferredContactMethod       TEXT,
    PreferredLanguage            TEXT,
    EmailAddress                 TEXT,
    PhoneNumber                  TEXT,
    MailingAddress               TEXT,
    OptInNewsletter              INTEGER,
    OptInEventNotifications     INTEGER,
    OptInSurveyParticipation    INTEGER,
    ConsentDate                  DATE,
    UpdatedBy                    TEXT,
    UpdatedAt                    DATE,
    CreatedAt                    DATE,
    CommunicationFrequency       TEXT,
    PreferredContactTime         TEXT,
    EmergencyContactFlag        INTEGER,
    Notes                        TEXT,
    DataSource                   TEXT,
    VerificationStatus           TEXT,
    LastVerified                 DATE
);
INSERT INTO school_parent_contact_preferences VALUES ('PREF001','SCH001','PAR001','Email','English','parent1@example.com','555-2100','123 Maple St','1','1','0','2022-09-01','AdminUser','2023-03-01','2022-09-01','Monthly','Evening','0','Prefers email only','School Portal','Verified','2023-03-01');
INSERT INTO school_parent_contact_preferences VALUES ('PREF002','SCH002','PAR002','Phone','Spanish','parent2@example.com','555-2200','456 Oak Ave','0','1','1','2023-01-15','AdminUser','2023-04-10','2023-01-15','Weekly','Afternoon','1','Parents of student with IEP','Phone System','Pending','2023-04-10');
INSERT INTO school_parent_contact_preferences VALUES ('PREF003','SCH003','PAR003','Mail','Chinese','parent3@example.com','555-2300','789 Pine Rd','1','0','1','2022-12-05','AdminUser','2023-02-20','2022-12-05','Quarterly','Morning','0','Preferred postal communication','Paper Forms','Verified','2023-02-20');

-- District equity initiative projects
CREATE TABLE district_equity_initiative_projects
(
    ProjectID                 TEXT PRIMARY KEY,
    DistrictCode              INTEGER,
    ProjectName               TEXT,
    StartDate                 DATE,
    EndDate                   DATE,
    FundingAmount             REAL,
    FundingSource             TEXT,
    LeadOffice                TEXT,
    PrimaryGoal               TEXT,
    TargetPopulation          TEXT,
    MetricsTracked            TEXT,
    CurrentStatus             TEXT,
    ProjectManager            TEXT,
    ManagerEmail              TEXT,
    ManagerPhone              TEXT,
    EvaluationDate            DATE,
    OutcomeSummary            TEXT,
    LessonsLearned            TEXT,
    StakeholderCount          INTEGER,
    CommunityPartner          TEXT,
    CreatedAt                 DATE,
    UpdatedAt                 DATE,
    Notes                     TEXT
);
INSERT INTO district_equity_initiative_projects VALUES ('EQP001',101,'STEM Access Expansion','2023-01-10','2024-12-31',500000,'State Grant','Office of Equity','Increase STEM enrollment among underrepresented groups','Low-income students','Enrollment numbers, Test scores','In Progress','Laura Bennett','l.bennett@district.org','555-2500','2023-12-15','Pilot increased enrollment by 12%','Early outreach needed','12','Tech Corp','2023-01-01','2023-06-01','Phase 1 complete');
INSERT INTO district_equity_initiative_projects VALUES ('EQP002',102,'Early Literacy Program','2022-05-01','2025-04-30',750000,'Federal Funding','Office of Early Education','Improve literacy rates in early grades','English language learners','Reading proficiency, Attendance','Active','Mark Davis','m.davis@district.org','555-2600','2024-05-01','Reading scores improved 8 points','Need more bilingual staff','15','Community Library','2022-04-15','2023-02-20','Middle school expansion planned');
INSERT INTO district_equity_initiative_projects VALUES ('EQP003',103,'Family Engagement Initiative','2023-09-01','2026-08-31',300000,'Private Donation','Office of Family Services','Increase parent participation in schools','All families','Event attendance, Survey responses','Planning','Sofia Ramos','s.ramos@district.org','555-2700','2024-09-01','Initial workshops attended by 200 parents','Provide child care during meetings','20','Parent Advocacy Group','2023-08-01','2023-09-15','Curriculum integration under review');