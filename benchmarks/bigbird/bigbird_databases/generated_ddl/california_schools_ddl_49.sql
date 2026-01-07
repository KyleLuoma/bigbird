-- School event partners table
CREATE TABLE school_event_partners
(
    PartnerID TEXT PRIMARY KEY,
    PartnerName TEXT,
    ContactName TEXT,
    ContactEmail TEXT,
    Phone TEXT,
    Address TEXT,
    City TEXT,
    State TEXT,
    Zip TEXT,
    PartnerType TEXT,
    PartnershipStartDate DATE,
    PartnershipEndDate DATE,
    ContributionAmount REAL,
    InKindValue REAL,
    AgreementSigned INTEGER,
    ActiveFlag INTEGER,
    LastInteractionDate DATE,
    Notes TEXT,
    Website TEXT,
    SocialMediaHandle TEXT,
    PreferredContactMethod TEXT,
    ContractDocument TEXT
);

INSERT INTO school_event_partners VALUES
('P001','Local Library','Jane Doe','jane.doe@example.com','5551112222','123 Main St','Springfield','IL','62704','Community','2022-01-15','2025-01-14',5000.00,2000.00,1,1,'2023-09-10','Provides books for reading night','http://locallibrary.org','@locallib','Email','contract_P001.pdf');

INSERT INTO school_event_partners VALUES
('P002','Health Clinic','John Smith','john.smith@example.com','5553334444','456 Oak Ave','Riverdale','IL','60827','Health','2021-06-01','2024-05-31',7500.00,0.00,1,1,'2023-08-22','Offers free health screenings','http://healthclinic.org','@healthclinic','Phone','contract_P002.pdf');

INSERT INTO school_event_partners VALUES
('P003','Tech Corp','Emily Johnson','emily.johnson@example.com','5555556666','789 Pine Rd','Lincoln','IL','62801','Corporate','2023-03-10',NULL,12000.00,5000.00,1,1,'2023-09-05','Sponsorship for science fair','http://techcorp.com','@techcorp','Email','contract_P003.pdf');

-- District technology projects table
CREATE TABLE district_technology_projects
(
    ProjectID TEXT PRIMARY KEY,
    ProjectName TEXT,
    Description TEXT,
    InitiatingDept TEXT,
    StartDate DATE,
    PlannedEndDate DATE,
    ActualEndDate DATE,
    BudgetAllocated REAL,
    BudgetSpent REAL,
    FundingSource TEXT,
    ProjectStatus TEXT,
    LeadEngineerID TEXT,
    TechStack TEXT,
    RiskLevel TEXT,
    Priority INTEGER,
    StakeholderGroup TEXT,
    MilestoneCount INTEGER,
    LastUpdated DATE,
    ProjectURL TEXT,
    DataClassification TEXT,
    ComplianceStatus TEXT,
    SprintCount INTEGER
);

INSERT INTO district_technology_projects VALUES
('TP1001','Student Data Warehouse','Centralized data repository for student metrics','IT','2022-02-01','2023-12-31',NULL,250000.00,150000.00,'State Grant','InProgress','ENG123','SQL,Python','Medium',1,'District Admin',5,'2023-09-12','http://districttech.org/dwh','Confidential','Compliant',8);

INSERT INTO district_technology_projects VALUES
('TP1002','Network Upgrade 5G','Upgrade district network to support 5G connectivity','Facilities','2023-01-15','2024-06-30',NULL,500000.00,120000.00,'Bond Funding','Planning','ENG456','Cisco,WiFi6','High',2,'School Boards',3,'2023-09-10','http://districttech.org/5g','Public','Pending',4);

INSERT INTO district_technology_projects VALUES
('TP1003','Virtual Reality Labs','Implement VR labs in three high schools','Curriculum','2021-09-01','2023-05-31','2023-04-20',300000.00,300000.00,'Federal Grant','Completed','ENG789','Unity,HTC Vive','Low',3,'Teachers',7,'2023-04-22','http://districttech.org/vr','Restricted','Compliant',12);

-- Facility HVAC systems table
CREATE TABLE facility_hvac_systems
(
    SystemID TEXT PRIMARY KEY,
    BuildingCode TEXT,
    BuildingName TEXT,
    SystemType TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    InstallationDate DATE,
    LastInspectionDate DATE,
    EfficiencyRating REAL,
    CapacityBTU INTEGER,
    ZonesServed INTEGER,
    MaintenanceContractID TEXT,
    ServiceProvider TEXT,
    AnnualEnergyUsage REAL,
    EnergyCost REAL,
    CO2Emissions REAL,
    WarrantyExpiry DATE,
    Status TEXT,
    NextServiceDue DATE,
    SensorCount INTEGER,
    ControlSystemVersion TEXT,
    VoltageLevel INTEGER
);

INSERT INTO facility_hvac_systems VALUES
('HVAC01','B001','Central Office','Variable Air Volume','Carrier','CVAX-5000','2015-06-20','2023-03-15',0.85,250000,20,'MC001','HVACCo','120000.00',15000.00,5000.00','2025-06-20','Operational','2024-03-10',12,'v2.3',480);

INSERT INTO facility_hvac_systems VALUES
('HVAC02','B012','North High School','Rooftop Unit','Trane','RTU-300','2018-09-05','2023-07-01',0.78,180000,15,'MC002','CoolAir','95000.00',11875.00,4000.00','2026-09-05','Operational','2024-06-20',9,'v1.9',460);

INSERT INTO facility_hvac_systems VALUES
('HVAC03','B020','South Middle School','Chilled Water','Daikin','CHW-2000','2020-02-12','2023-02-28',0.92,220000,18,'MC003','EcoHVAC','110000.00',13750.00,4600.00','2028-02-12','Operational','2024-02-15',10,'v3.0',470);

-- Community health clinic staff table
CREATE TABLE community_health_clinic_staff
(
    StaffID TEXT PRIMARY KEY,
    ClinicID TEXT,
    FirstName TEXT,
    LastName TEXT,
    Role TEXT,
    LicenseNumber TEXT,
    LicenseExpiry DATE,
    HireDate DATE,
    FullTimeFlag INTEGER,
    HoursPerWeek REAL,
    Department TEXT,
    Specialty TEXT,
    Email TEXT,
    Phone TEXT,
    ShiftStart TEXT,
    ShiftEnd TEXT,
    SupervisorID TEXT,
    Salary REAL,
    CertificationList TEXT,
    AvailabilityNotes TEXT,
    BackgroundCheckDate DATE,
    Status TEXT
);

INSERT INTO community_health_clinic_staff VALUES
('S001','CL001','Anna','Brown','Physician','LIC12345','2025-12-31','2019-08-15',1,40.0,'Medical','Pediatrics','anna.brown@clinic.org','5557778888','08:00','16:00','S010',130000.00,'BLS,ACLS','Available for overtime','2023-06-01','Active');

INSERT INTO community_health_clinic_staff VALUES
('S002','CL001','Mark','Davis','Nurse','NUR67890','2024-05-30','2020-01-10',1,36.0,'Nursing','Emergency','mark.davis@clinic.org','5559990000','12:00','20:00','S010',85000.00,'BLS','Prefers day shift','2023-05-15','Active');

INSERT INTO community_health_clinic_staff VALUES
('S003','CL002','Laura','Smith','Administrative Assistant','ADM11223','2030-01-01','2022-03-01',1,30.0,'Administration','N/A','laura.smith@clinic.org','5551113333','09:00','17:00','S020',50000.00,'None','Works from 9 to 5','2023-04-20','Active');

-- Student advanced course enrollments table
CREATE TABLE student_advanced_course_enrollments
(
    EnrollmentID TEXT PRIMARY KEY,
    StudentID TEXT,
    CourseCode TEXT,
    CourseName TEXT,
    AcademicYear TEXT,
    Semester TEXT,
    Credits INTEGER,
    Grade TEXT,
    GPA REAL,
    EnrollmentDate DATE,
    CompletionDate DATE,
    InstructorID TEXT,
    HonorsFlag INTEGER,
    DualEnrollmentFlag INTEGER,
    OnlineFlag INTEGER,
    EnrollmentStatus TEXT,
    TuitionAmount REAL,
    FinancialAidApplied INTEGER,
    PrerequisiteMet INTEGER,
    Notes TEXT,
    WithdrawalDate DATE,
    WithdrawalReason TEXT
);

INSERT INTO student_advanced_course_enrollments VALUES
('E1001','STU001','CS401','Advanced Algorithms','2023-24','Fall',4,'A',4.0,'2023-08-20','2023-12-15','INST01',1,0,0,'Completed',1500.00,1,1,'Excellent performance',NULL,NULL);

INSERT INTO student_advanced_course_enrollments VALUES
('E1002','STU002','BIO350','Molecular Genetics','2023-24','Spring',3,'B+',3.3,'2024-01-10','2024-05-05','INST02',0,0,1,'Completed',1200.00,0,1,'Completed with online labs',NULL,NULL);

INSERT INTO student_advanced_course_enrollments VALUES
('E1003','STU003','ENG210','Creative Writing Workshop','2023-24','Summer',2,'W',NULL,'2024-06-01',NULL,'INST03',0,1,1,'InProgress',800.00,0,1,'Dual credit with community college',NULL,NULL);

-- Teacher research grants table
CREATE TABLE teacher_research_grants
(
    GrantID TEXT PRIMARY KEY,
    TeacherID TEXT,
    GrantTitle TEXT,
    FundingAgency TEXT,
    AwardAmount REAL,
    StartDate DATE,
    EndDate DATE,
    ProjectSummary TEXT,
    ResearchArea TEXT,
    Status TEXT,
    ReportingFrequency TEXT,
    LastReportDate DATE,
    CoPI TEXT,
    GrantNumber TEXT,
    DirectCost REAL,
    IndirectCost REAL,
    TotalCost REAL,
    AwardedFlag INTEGER,
    RenewalFlag INTEGER,
    PublicationCount INTEGER,
    PatentCount INTEGER,
    EthicsApprovalFlag INTEGER
);

INSERT INTO teacher_research_grants VALUES
('G001','TCH001','STEM Integration Study','NSF',250000.00,'2022-09-01','2025-08-31','Study of integrated STEM curricula across middle schools','STEM Education','Active','Annual','2023-09-10','TCH005','NSF-2022-001',150000.00,100000.00,250000.00,1,0,5,1,1);

INSERT INTO teacher_research_grants VALUES
('G002','TCH002','Early Literacy Intervention','Department of Education',180000.00,'2021-01-15','2024-01-14','Evaluating literacy interventions in K-3 classrooms','Literacy','Completed','SemiAnnual','2023-06-30','TCH006','DOE-2021-045',110000.00,70000.00,180000.00,1,0,3,0,1);

INSERT INTO teacher_research_grants VALUES
('G003','TCH003','Renewable Energy in Schools','DOE',300000.00,'2023-03-01','2026-02-28','Pilot project installing solar panels at three high schools','Renewable Energy','Pending','Quarterly',NULL,'TCH007','DOE-2023-102',200000.00,100000.00,300000.00,0,0,0,0,0);

-- School parking permit transactions table
CREATE TABLE school_parking_permit_transactions
(
    TransactionID TEXT PRIMARY KEY,
    PermitID TEXT,
    VehiclePlate TEXT,
    OwnerName TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    PermitType TEXT,
    FeeAmount REAL,
    PaymentMethod TEXT,
    PaidFlag INTEGER,
    ViolationCount INTEGER,
    LastViolationDate DATE,
    ParkingZone TEXT,
    IssuingOfficerID TEXT,
    Notes TEXT,
    RenewalFlag INTEGER,
    CancellationDate DATE,
    CancellationReason TEXT,
    AuditTrail TEXT,
    UpdatedBy TEXT,
    UpdateTimestamp DATE,
    Status TEXT
);

INSERT INTO school_parking_permit_transactions VALUES
('TX001','PRM001','ABC1234','John Doe','2023-08-01','2024-07-31','Staff','250.00','Credit Card',1,0,NULL,'Zone A','OFF100','First year permit',1,NULL,NULL,'Audit001','ADMIN','2023-08-02','Active');

INSERT INTO school_parking_permit_transactions VALUES
('TX002','PRM002','XYZ5678','Maria Garcia','2022-09-15','2023-09-14','Parent','150.00','Cash',1,2,'2023-05-10','Zone B','OFF101','Late payment',0,'2023-08-20','Owner request','Audit002','ADMIN','2023-08-20','Cancelled');

INSERT INTO school_parking_permit_transactions VALUES
('TX003','PRM003','LMN2468','Samuel Lee','2023-01-10','2024-01-09','Student','100.00','Check',1,1,'2023-11-02','Zone C','OFF102','Renewed for second year',1,NULL,NULL,'Audit003','ADMIN','2023-01-11','Active');

-- District transportation fuel logs table
CREATE TABLE district_transport_fuel_logs
(
    LogID TEXT PRIMARY KEY,
    VehicleID TEXT,
    FuelType TEXT,
    FuelVolume REAL,
    FuelCost REAL,
    OdometerReading INTEGER,
    FillDate DATE,
    DriverID TEXT,
    FuelStation TEXT,
    ReceiptNumber TEXT,
    FuelEfficiency REAL,
    ServiceInterval INTEGER,
    NextServiceOdometer INTEGER,
    FuelCardNumber TEXT,
    TransactionStatus TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    Comments TEXT,
    AuditID TEXT,
    CreatedTimestamp DATE,
    UpdatedTimestamp DATE,
    AdjustedFlag INTEGER
);

INSERT INTO district_transport_fuel_logs VALUES
('FL001','BUS001','Diesel',120.5,360.00,45200,'2023-09-01','DRV001','FuelCo','RCPT1001',8.0,10000,55200,'FC123','Approved','SUP001','2023-09-02','No issues','AUD001','2023-09-01','2023-09-02',0);

INSERT INTO district_transport_fuel_logs VALUES
('FL002','VAN015','Gasoline',45.0,135.00,15800,'2023-08-20','DRV005','QuickFuel','RCPT1002',12.5,8000,23800,'FC456','Pending','SUP002','2023-08-21','Pending manager approval','AUD002','2023-08-20','2023-08-21',0);

INSERT INTO district_transport_fuel_logs VALUES
('FL003','TRK020','Diesel',210.0,630.00,78500,'2023-09-10','DRV010','FuelMax','RCPT1003',7.5,15000,93500,'FC789','Approved','SUP003','2023-09-11','Fuel added after route change','AUD003','2023-09-10','2023-09-11',0);

-- Library digital media acquisitions table
CREATE TABLE library_digital_media_acquisitions
(
    AcquisitionID TEXT PRIMARY KEY,
    Title TEXT,
    MediaType TEXT,
    Publisher TEXT,
    PublicationYear INTEGER,
    ISBN TEXT,
    ISSN TEXT,
    AccessURL TEXT,
    LicenseType TEXT,
    PurchaseCost REAL,
    SubscriptionStart DATE,
    SubscriptionEnd DATE,
    AcquiredBy TEXT,
    Department TEXT,
    UsageCount INTEGER,
    LastAccessed DATE,
    DigitalRightsHolder TEXT,
    DRMProtected INTEGER,
    FileFormat TEXT,
    FileSizeMB REAL,
    MetadataChecksum TEXT,
    Notes TEXT
);

INSERT INTO library_digital_media_acquisitions VALUES
('DM001','Data Science Essentials','eBook','TechPress',2022,'9781234567890','', 'http://library.org/ds_essentials','Perpetual',120.00,NULL,NULL,'Librarian1','Science',0,NULL,'TechPress',0,'PDF',2.5,'CSUM001','Initial acquisition');

INSERT INTO library_digital_media_acquisitions VALUES
('DM002','World History Documentary Series','Video','Global Media',2021,'','1234-5678','http://library.org/wh_doc_series','Subscription',500.00,'2023-01-01','2024-12-31','Librarian2','History',0,NULL,'Global Media',1,'MP4',1500.0,'CSUM002','Annual renewal pending');

INSERT INTO library_digital_media_acquisitions VALUES
('DM003','Mathematics Audio Lectures','Audio','MathAudio',2020,'','9876-5432','http://library.org/math_lectures','Perpetual',200.00,NULL,NULL,'Librarian3','Mathematics',0,NULL,'MathAudio',0,'MP3',300.0,'CSUM003','Added to student resource portal');

-- Extracurricular sport facilities table
CREATE TABLE extracurricular_sport_facilities
(
    FacilityID TEXT PRIMARY KEY,
    FacilityName TEXT,
    SportType TEXT,
    Location TEXT,
    Capacity INTEGER,
    IndoorOutdoor TEXT,
    SurfaceType TEXT,
    LightingType TEXT,
    ConstructionYear INTEGER,
    RenovationYear INTEGER,
    OwnerOrganization TEXT,
    MaintenanceSchedule TEXT,
    ManagerID TEXT,
    OperatingHours TEXT,
    AccessPolicy TEXT,
    RentalFee REAL,
    BookingSystem TEXT,
    EquipmentList TEXT,
    SafetyInspectionDate DATE,
    SafetyInspectionScore REAL,
    HandicapAccessible INTEGER,
    EnergyRating REAL
);

INSERT INTO extracurricular_sport_facilities VALUES
('SF001','North Gymnasium','Basketball','North Campus',500,'Indoor','Hardwood','LED',2005,2020,'District Sports Dept','Quarterly','MGR001','06:00-22:00','Open to schools','1500.00','Online','Hoops,Scoreboard','2023-06-15',95.0,1,85.0);

INSERT INTO extracurricular_sport_facilities VALUES
('SF002','South Soccer Field','Soccer','South Campus',800,'Outdoor','Grass','Flood','2008,','2019','District Sports Dept','Biannual','MGR002','08:00-20:00','Reservation required','2000.00','Phone','Goals,Netting','2023-05-20',88.5,1,78.0);

INSERT INTO extracurricular_sport_facilities VALUES
('SF003','East Swimming Pool','Swimming','East Campus',300,'Indoor','Tile','Fluorescent',2010,2022,'District Sports Dept','Monthly','MGR003','07:00-21:00','Member only','2500.00','Online','Lanes,Pool Heater','2023-07-10',92.0,1,90.0);