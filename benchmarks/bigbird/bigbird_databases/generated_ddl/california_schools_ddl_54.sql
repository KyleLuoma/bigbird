-- School Facility Accessibility Audits
CREATE TABLE school_facility_accessibility_audits (
    AuditID TEXT PRIMARY KEY,
    CDSCode TEXT NOT NULL,
    AuditDate DATE NOT NULL,
    AuditorName TEXT,
    BuildingName TEXT,
    EntranceAccessible INTEGER,
    RampPresent INTEGER,
    ElevatorAvailable INTEGER,
    DoorWidthInches REAL,
    SignageBraille INTEGER,
    RestroomAccessible INTEGER,
    ParkingSpaceDesignated INTEGER,
    ParkingSpaceCount INTEGER,
    AccessibleSeatingCount INTEGER,
    AudioAssistiveTechnology INTEGER,
    VisualAssistiveTechnology INTEGER,
    ComplianceScore REAL,
    Notes TEXT,
    FollowUpRequired INTEGER,
    FollowUpDueDate DATE,
    UpdatedBy TEXT,
    UpdateTimestamp DATE
);
INSERT INTO school_facility_accessibility_audits VALUES 
('AUD001','001001','2023-02-15','Jane Smith','Main Hall',1,1,1,36.0,1,1,1,12,20,1,0,92.5,'All criteria met',0,NULL,'admin','2023-02-15');
INSERT INTO school_facility_accessibility_audits VALUES 
('AUD002','001002','2023-03-10','Mark Johnson','Science Center',0,1,0,32.0,0,0,0,0,0,0,0,45.0,'Ramp missing',1,'2023-04-15','jdoe','2023-03-10');
INSERT INTO school_facility_accessibility_audits VALUES 
('AUD003','001003','2023-01-22','Lisa Lee','Gymnasium',1,0,1,38.0,1,1,1,8,15,1,1,87.0,'Elevator intermittent',1,'2023-02-28','asmith','2023-01-22');

-- District Equity Metric Scores
CREATE TABLE district_equity_metric_scores (
    MetricID TEXT PRIMARY KEY,
    DistrictCode INTEGER NOT NULL,
    ReportingYear TEXT NOT NULL,
    MetricName TEXT,
    Score REAL,
    TargetScore REAL,
    Weight REAL,
    DataSource TEXT,
    CalculatedDate DATE,
    AnalystName TEXT,
    Comments TEXT,
    IsFlagged INTEGER,
    FlagReason TEXT,
    ReviewStatus TEXT,
    ReviewedBy TEXT,
    ReviewDate DATE,
    UpdatedBy TEXT,
    UpdateTimestamp DATE,
    Region TEXT,
    FundingCategory TEXT,
    BenchmarkYear TEXT
);
INSERT INTO district_equity_metric_scores VALUES 
('MET001',101,'2022','Student Achievement Gap',78.5,85.0,0.4,'FRPM Data','2023-01-10','Anne Clark','Slightly below target',1,'Score below target','Pending','john.doe','2023-01-12','admin','2023-01-12','North','Title1','2020');
INSERT INTO district_equity_metric_scores VALUES 
('MET002',102,'2022','Teacher Diversity Index',92.0,90.0,0.3,'HR Records','2023-01-15','Bob Miller','Meets target',0,NULL,'Approved','mary.smith','2023-01-16','admin','2023-01-16','South','ESL','2020');
INSERT INTO district_equity_metric_scores VALUES 
('MET003',103,'2022','Facility Accessibility Rating',66.0,80.0,0.3,'Audit Reports','2023-01-20','Carol White','Needs improvement',1,'Low accessibility','In Review','tom.brown','2023-01-22','admin','2023-01-22','East','SpecialEd','2020');

-- Teacher Licensure Exam Results
CREATE TABLE teacher_licensure_exam_results (
    ExamResultID TEXT PRIMARY KEY,
    TeacherID TEXT NOT NULL,
    ExamYear INTEGER NOT NULL,
    SubjectArea TEXT,
    Score REAL,
    PassingScore REAL,
    Passed INTEGER,
    ExamDate DATE,
    TestingCenter TEXT,
    ProctorName TEXT,
    AccommodationsProvided INTEGER,
    Remarks TEXT,
    CertificationStatus TEXT,
    LicenseNumber TEXT,
    RenewalDate DATE,
    State TEXT,
    Region TEXT,
    Department TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE
);
INSERT INTO teacher_licensure_exam_results VALUES 
('ER001','T001','2023','Mathematics',84.5,70.0,1,'2023-04-12','Center A','Karen Lee',0,'Good performance','Active','LIC12345','2025-04-01','CA','North','Math','admin','2023-04-13','admin','2023-04-13');
INSERT INTO teacher_licensure_exam_results VALUES 
('ER002','T002','2023','English',68.0,70.0,0,'2023-04-15','Center B','Mike Patel',1,'Needs retake','Inactive','LIC67890','2024-08-01','CA','South','English','admin','2023-04-16','admin','2023-04-16');
INSERT INTO teacher_licensure_exam_results VALUES 
('ER003','T003','2023','Science',91.0,70.0,1,'2023-04-18','Center C','Susan Green',0,'Excellent','Active','LIC11223','2026-01-01','CA','East','Science','admin','2023-04-19','admin','2023-04-19');

-- Student Technology Device Logs
CREATE TABLE student_technology_device_logs (
    LogID TEXT PRIMARY KEY,
    StudentID TEXT NOT NULL,
    DeviceID TEXT,
    DeviceType TEXT,
    IssueReported TEXT,
    IssueDate DATE,
    ResolvedDate DATE,
    TechnicianName TEXT,
    ResolutionDetail TEXT,
    DowntimeHours REAL,
    SoftwareVersion TEXT,
    OSVersion TEXT,
    WarrantyStatus TEXT,
    ReplacementGiven INTEGER,
    ReplacementDeviceID TEXT,
    Notes TEXT,
    LoggedBy TEXT,
    LogTimestamp DATE,
    SchoolCode TEXT,
    DistrictCode INTEGER,
    AcademicYear TEXT
);
INSERT INTO student_technology_device_logs VALUES 
('LOG001','S001','DEV1001','Laptop','Screen flicker','2023-02-05','2023-02-07','Tom Reed','Replaced inverter','48.0','v2.3','Win10','In Warranty',0,NULL,'Handled quickly','admin','2023-02-05','SCH001',101,'2022-2023');
INSERT INTO student_technology_device_logs VALUES 
('LOG002','S002','DEV1002','Tablet','Battery not charging','2023-03-10',NULL,'Lisa Wong','Sent for service','0',NULL,'iOS13','Out of Warranty',1,'DEV2001','Replacement issued','admin','2023-03-10','SCH002',102,'2022-2023');
INSERT INTO student_technology_device_logs VALUES 
('LOG003','S003','DEV1003','Chromebook','Cannot login','2023-01-20','2023-01-21','Mike Santos','Password reset','8.0','v1.5','ChromeOS','In Warranty',0,NULL,'Password policy update','admin','2023-01-20','SCH003',103,'2022-2023');

-- Community Partner Project Funding
CREATE TABLE community_partner_project_funding (
    FundingID TEXT PRIMARY KEY,
    PartnerName TEXT NOT NULL,
    ProjectTitle TEXT,
    FiscalYear TEXT,
    FundingAmount REAL,
    FundingSource TEXT,
    ApprovalDate DATE,
    DisbursementDate DATE,
    ProjectStartDate DATE,
    ProjectEndDate DATE,
    ContactPerson TEXT,
    ContactEmail TEXT,
    Status TEXT,
    Remarks TEXT,
    ReportingRequired INTEGER,
    ReportDueDate DATE,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    DistrictCode INTEGER
);
INSERT INTO community_partner_project_funding VALUES 
('FUN001','HealthFirst','Youth Wellness Initiative','2023',25000.00,'Grant','2023-02-01','2023-02-15','2023-03-01','2024-02-28','Emily Perez','emily.perez@healthfirst.org','Active','Ongoing monitoring',1,'2023-12-31','admin','2023-02-01','admin','2023-02-01',101);
INSERT INTO community_partner_project_funding VALUES 
('FUN002','GreenPlanet','School Garden Program','2023',15000.00,'Donation','2023-01-10','2023-01-20','2023-02-01','2023-12-31','James Liu','james.liu@greenplanet.org','Completed','Project completed successfully',0,NULL,'admin','2023-01-10','admin','2023-01-10',102);
INSERT INTO community_partner_project_funding VALUES 
('FUN003','TechConnect','Digital Literacy Workshops','2023',30000.00,'Corporate Sponsorship','2023-03-05','2023-03-12','2023-04-01','2025-03-31','Sofia Ramos','sofia.ramos@techconnect.com','Active','First phase launched',1,'2024-06-30','admin','2023-03-05','admin','2023-03-05',103);

-- School Art Exhibit Inventory
CREATE TABLE school_art_exhibit_inventory (
    ExhibitID TEXT PRIMARY KEY,
    SchoolCode TEXT NOT NULL,
    ExhibitTitle TEXT,
    CuratorName TEXT,
    OpeningDate DATE,
    ClosingDate DATE,
    NumberOfPieces INTEGER,
    TotalValue REAL,
    MediaTypes TEXT,
    InstallationStatus TEXT,
    InsurancePolicyNumber TEXT,
    SecurityLevel TEXT,
    LightingPlan TEXT,
    MaintenanceNotes TEXT,
    VisitorCount INTEGER,
    FeaturedArtist TEXT,
    SponsorshipDetails TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE
);
INSERT INTO school_art_exhibit_inventory VALUES 
('EXH001','SCH001','Nature Visions','Laura Kim','2023-04-01','2023-04-30',45,12000.00,'Paintings, Sculpture','Installed','INS12345','High','LED','No issues',500,'Mark Reynolds','Local Business Sponsorship','admin','2023-04-01','admin','2023-04-01');
INSERT INTO school_art_exhibit_inventory VALUES 
('EXH002','SCH002','Modern Moves','Andrew Lee','2023-05-10','2023-06-10',30,8000.00,'Digital, Mixed Media','Installed','INS67890','Medium','Spotlights','Minor frame repairs',300,'Elena Garcia','Arts Council Grant','admin','2023-05-10','admin','2023-05-10');
INSERT INTO school_art_exhibit_inventory VALUES 
('EXH003','SCH003','Historical Horizons','Megan Patel','2023-03-15','2023-04-15',60,15000.00','Photographs, Prints','Installed','INS11223','High','Ambient','All pieces secured',750,'Samuel Ortiz','Community Fundraiser','admin','2023-03-15','admin','2023-03-15');

-- District Emergency Resource Stockpile
CREATE TABLE district_emergency_resource_stockpile (
    StockpileID TEXT PRIMARY KEY,
    DistrictCode INTEGER NOT NULL,
    ResourceType TEXT,
    Quantity INTEGER,
    Unit TEXT,
    Location TEXT,
    LastInspectionDate DATE,
    InspectionPassed INTEGER,
    ExpirationDate DATE,
    SupplierName TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    Notes TEXT,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    CreatedBy TEXT,
    CreatedDate DATE,
    ReorderThreshold INTEGER,
    ReorderQuantity INTEGER,
    PriorityLevel TEXT,
    FundingSource TEXT
);
INSERT INTO district_emergency_resource_stockpile VALUES 
('STK001',101,'Water Bottles',5000,'Liters','Warehouse A','2023-01-20',1,NULL,'Acme Supplies','Laura Chen','555-1234','Stored in climate controlled area','admin','2023-01-20','admin','2023-01-10',2000,3000,'High','District Budget');
INSERT INTO district_emergency_resource_stockpile VALUES 
('STK002',102,'First Aid Kits',250,'Units','Warehouse B','2023-02-15',1,'2025-02-15','MediCo','James Patel','555-5678','Checked quarterly','admin','2023-02-15','admin','2023-02-01',100,150,'Medium','State Grant');
INSERT INTO district_emergency_resource_stockpile VALUES 
('STK003',103,'Portable Generators',30,'Units','Warehouse C','2023-03-05',0,NULL,'PowerGen','Sofia Martinez','555-9012','Battery replacement needed','admin','2023-03-05','admin','2023-03-01',10,20,'Critical','Federal Emergency Fund');

-- Transportation Route Demographics
CREATE TABLE transportation_route_demographics (
    RouteID TEXT PRIMARY KEY,
    RouteNumber TEXT NOT NULL,
    DistrictCode INTEGER,
    TotalStudents INTEGER,
    PercentageLowIncome REAL,
    PercentageSpecialEducation REAL,
    PercentageEnglishLearners REAL,
    AverageTravelTimeMinutes REAL,
    MaxTravelTimeMinutes REAL,
    MinTravelTimeMinutes REAL,
    PrimaryStopCount INTEGER,
    SecondaryStopCount INTEGER,
    BusCapacity INTEGER,
    FuelType TEXT,
    EmissionsMetric REAL,
    RoadConditionRating INTEGER,
    WeatherImpactScore REAL,
    MaintenancePriority INTEGER,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    Comments TEXT,
    DataSource TEXT
);
INSERT INTO transportation_route_demographics VALUES 
('RT001','R12',101,1200,45.5,12.0,18.3,30.5,55.0,20.0,8,2,60,'Diesel',0.85,4,1.2,2,'admin','2023-02-10','Route serves mixed neighborhoods','District Transport Dept');
INSERT INTO transportation_route_demographics VALUES 
('RT002','R34',102,950,30.0,8.5,10.0,28.0,48.0,18.0,5,1,55,'Electric',0.30,5,0.8,1,'admin','2023-02-12','High electric bus usage','District Transport Dept');
INSERT INTO transportation_route_demographics VALUES 
('RT003','R56',103,800,60.0,15.0,25.0,35.0,60.0,22.0,7,3,50,'Hybrid',0.55,3,1.5,3,'admin','2023-02-15','Needs additional capacity','District Transport Dept');

-- Library Digital Media Usage Stats
CREATE TABLE library_digital_media_usage_stats (
    StatID TEXT PRIMARY KEY,
    LibraryID TEXT NOT NULL,
    Year INTEGER,
    Month INTEGER,
    EbooksCheckedOut INTEGER,
    AudiobooksCheckedOut INTEGER,
    StreamingVideosPlayed INTEGER,
    OnlineDatabaseQueries INTEGER,
    UniquePatrons INTEGER,
    AverageSessionMinutes REAL,
    PeakConcurrentUsers INTEGER,
    SubscriptionCost REAL,
    PlatformProvider TEXT,
    AccessMethod TEXT,
    MobileAppDownloads INTEGER,
    DesktopAppDownloads INTEGER,
    TotalDataTransferredGB REAL,
    SupportTickets INTEGER,
    LastUpdate DATE,
    UpdatedBy TEXT,
    Notes TEXT,
    DataQualityScore REAL
);
INSERT INTO library_digital_media_usage_stats VALUES 
('STAT001','LIB001',2023,3,1500,800,1200,3500,2000,45.3,150,1200.00,'OverDrive','Web',500,200,350.5,12,'2023-04-01','admin','Quarterly report','92.5');
INSERT INTO library_digital_media_usage_stats VALUES 
('STAT002','LIB002',2023,3,950,400,900,2100,1300,38.7,95,850.00,'Hoopla','App',300,120,210.2,8,'2023-04-02','admin','Quarterly report','88.0');
INSERT INTO library_digital_media_usage_stats VALUES 
('STAT003','LIB003',2023,3,2000,1100,1500,4200,2600,52.1,180,1500.00,'Bibliotheca','Web',700,250,480.0,15,'2023-04-03','admin','Quarterly report','95.0');

-- School Energy Efficiency Upgrades
CREATE TABLE school_energy_efficiency_upgrades (
    UpgradeID TEXT PRIMARY KEY,
    SchoolCode TEXT NOT NULL,
    UpgradeYear INTEGER,
    UpgradeType TEXT,
    VendorName TEXT,
    ContractAmount REAL,
    EstimatedSavingsKWh REAL,
    EstimatedSavingsDollars REAL,
    FundingSource TEXT,
    ProjectStartDate DATE,
    ProjectEndDate DATE,
    CertificationStatus TEXT,
    MaintenancePlan TEXT,
    WarrantyYears INTEGER,
    Notes TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    ImplementedBy TEXT,
    ImplementationDate DATE,
    UpdatedBy TEXT,
    UpdateTimestamp DATE
);
INSERT INTO school_energy_efficiency_upgrades VALUES 
('UPG001','SCH001',2022,'LED Lighting Retrofit','BrightLight Co',45000.00,250000.00,30000.00,'Grant','2022-05-01','2022-09-15','Certified','Annual bulb replacement','5','Reduced energy consumption','John Doe','2022-04-20','Facilities Team','2022-09-20','admin','2022-09-20');
INSERT INTO school_energy_efficiency_upgrades VALUES 
('UPG002','SCH002',2023,'Solar Panel Installation','SunPower Inc',120000.00,500000.00,75000.00,'Bond Funding','2023-03-10','2023-08-30','Pending','Biannual panel cleaning','10','First campus solar project','Jane Smith','2023-02-28','Engineering Dept','2023-09-05','admin','2023-09-05');
INSERT INTO school_energy_efficiency_upgrades VALUES 
('UPG003','SCH003',2021,'HVAC Upgrade','CoolAir Systems',80000.00,350000.00,42000.00,'District Budget','2021-06-15','2021-12-01','Certified','Quarterly filter change','7','Improved climate control','Mike Johnson','2021-05-30','Facilities Team','2022-01-10','admin','2022-01-10');