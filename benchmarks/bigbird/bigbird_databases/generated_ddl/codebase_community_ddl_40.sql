-- Server inventory information
CREATE TABLE server_inventory
(
    ServerId               INTEGER PRIMARY KEY,
    Hostname               TEXT,
    IPAddress              TEXT,
    DataCenter             TEXT,
    RackUnit               INTEGER,
    PurchaseDate           DATETIME,
    WarrantyEndDate        DATETIME,
    CpuCores               INTEGER,
    MemoryGB               INTEGER,
    StorageTB              REAL,
    OsVersion              TEXT,
    Virtualized            INTEGER,
    OwnerDept              TEXT,
    AssetTag               TEXT,
    SerialNumber           TEXT,
    CpuModel               TEXT,
    NetworkSpeedGbps       INTEGER,
    PowerSupplyCount       INTEGER,
    LastMaintenanceDate    DATETIME,
    Status                 TEXT
);

INSERT INTO server_inventory VALUES
(1, 'srv-alpha', '10.0.0.1', 'dc-east', 12, '2019-06-15', '2022-06-15', 16, 64, 4.0, 'Ubuntu20.04', 1, 'IT', 'AT-1001', 'SN123456', 'IntelXeon', 10, 2, '2023-02-10', 'Active');

INSERT INTO server_inventory VALUES
(2, 'srv-beta', '10.0.0.2', 'dc-west', 8, '2020-01-20', '2023-01-20', 8, 32, 2.5, 'WindowsServer2019', 0, 'Finance', 'AT-1002', 'SN223457', 'AMD EPYC', 1, 1, '2023-01-05', 'Active');

INSERT INTO server_inventory VALUES
(3, 'srv-gamma', '10.0.0.3', 'dc-north', 15, '2018-03-10', '2021-03-10', 32, 128, 8.0, 'RedHat8', 1, 'Research', 'AT-1003', 'SN323458', 'IntelXeon', 40, 2, '2022-12-01', 'Decommissioned');

-- Research funding allocations
CREATE TABLE research_funding
(
    FundingId            INTEGER PRIMARY KEY,
    ProjectCode          TEXT,
    AgencyName           TEXT,
    GrantNumber          TEXT,
    AmountUSD            REAL,
    StartDate            DATETIME,
    EndDate              DATETIME,
    PrincipalInvestigator TEXT,
    Department           TEXT,
    FundingType          TEXT,
    AwardStatus          TEXT,
    Currency             TEXT,
    AwardedDate          DATETIME,
    ReportingFrequency  TEXT,
    Comments             TEXT,
    IsMultiYear          INTEGER,
    FundingCategory      TEXT,
    AllocationMethod     TEXT,
    ReviewScore          REAL,
    ComplianceFlag      INTEGER
);

INSERT INTO research_funding VALUES
(101, 'RC-2021-001', 'NationalScienceFoundation', 'NSF-20-12345', 250000.00, '2021-09-01', '2024-08-31', 'Dr Alice Smith', 'Physics', 'Grant', 'Awarded', 'USD', '2021-08-15', 'Annual', 'Core research funding', 1, 'BasicResearch', 'Direct', 4.5, 1);

INSERT INTO research_funding VALUES
(102, 'RC-2022-015', 'HealthResearchInstitute', 'HRI-22-9876', 150000.00, '2022-01-15', '2025-01-14', 'Dr Bob Johnson', 'Biology', 'Fellowship', 'Pending', 'USD', '2021-12-20', 'SemiAnnual', 'Postdoctoral fellow', 0, 'AppliedResearch', 'Disbursement', 3.8, 0);

INSERT INTO research_funding VALUES
(103, 'RC-2020-030', 'EnergyCommission', 'EC-20-54321', 500000.00, '2020-05-01', '2023-04-30', 'Dr Carol Lee', 'Engineering', 'Contract', 'Awarded', 'USD', '2020-04-10', 'Quarterly', 'Renewable energy project', 1, 'TechnologyDevelopment', 'Milestone', 4.9, 1);

-- Patent documents registry
CREATE TABLE patent_documents
(
    PatentId           INTEGER PRIMARY KEY,
    PatentNumber       TEXT,
    Title              TEXT,
    InventorNames      TEXT,
    ApplicationDate    DATETIME,
    PublicationDate    DATETIME,
    GrantDate          DATETIME,
    Status             TEXT,
    Assignee           TEXT,
    IPCCode            TEXT,
    InternationalClass TEXT,
    Country            TEXT,
    LegalStatus        TEXT,
    RenewalDate        DATETIME,
    FeesPaid           REAL,
    PriorArtReferences TEXT,
    ClaimsCount        INTEGER,
    Abstract           TEXT,
    TechnologyArea    TEXT,
    FundingSource      TEXT
);

INSERT INTO patent_documents VALUES
(201, 'US1234567B1', 'Method for Data Compression', 'Alice Smith;Bob Johnson', '2019-03-10', '2020-09-15', '2021-02-20', 'Granted', 'TechCorp', 'G06F', 'A', 'US', 'Active', '2026-02-20', 3500.00, 'US9876543;US8765432', 12, 'Technique for compressing data streams', 'InformationTechnology', 'CorporateR&D');

INSERT INTO patent_documents VALUES
(202, 'EP2345678A1', 'Solar Energy Conversion Device', 'Carol Lee;David Kim', '2020-07-01', '2021-12-10', NULL, 'Pending', 'GreenEnergy Ltd', 'H02S', 'B', 'EP', 'Pending', NULL, 0.00, 'EP1234567;EP7654321', 8, 'Device that converts solar radiation to electricity', 'RenewableEnergy', 'GovernmentGrant');

INSERT INTO patent_documents VALUES
(203, 'CN3456789A', 'AI-Based Image Recognition System', 'Evan Wu;Fiona Zhang', '2018-11-20', '2019-06-05', '2019-12-01', 'Granted', 'AI Innovations', 'G06N', 'C', 'CN', 'Active', '2025-12-01', 4200.00, 'CN9876543;CN8765432', 15, 'System employing neural networks for image analysis', 'ArtificialIntelligence', 'VentureCapital');

-- Course enrollments tracking
CREATE TABLE course_enrollments
(
    EnrollmentId        INTEGER PRIMARY KEY,
    StudentId           INTEGER,
    CourseCode          TEXT,
    Semester            TEXT,
    Year                INTEGER,
    EnrollmentDate      DATETIME,
    CompletionDate      DATETIME,
    Grade               TEXT,
    CreditsEarned       REAL,
    Status              TEXT,
    InstructorId        INTEGER,
    Department          TEXT,
    Mode                TEXT,
    Campus              TEXT,
    TuitionPaid         REAL,
    FinancialAid        REAL,
    AttendanceRate      REAL,
    OverallScore        REAL,
    Remarks             TEXT,
    CertificationEarned TEXT
);

INSERT INTO course_enrollments VALUES
(301, 1001, 'CS101', 'Fall', 2022, '2022-08-20', '2022-12-15', 'A', 4.0, 'Completed', 501, 'ComputerScience', 'InPerson', 'MainCampus', 1500.00, 500.00, 95.0, 92.5, 'Excellent performance', 'None');

INSERT INTO course_enrollments VALUES
(302, 1002, 'ENG202', 'Spring', 2023, '2023-01-10', NULL, NULL, 0.0, 'Enrolled', 502, 'English', 'Online', 'Virtual', 1200.00, 0.00, 0.0, 0.0, 'Pending grades', 'None');

INSERT INTO course_enrollments VALUES
(303, 1003, 'BUS305', 'Summer', 2023, '2023-05-05', '2023-08-01', 'B+', 3.0, 'Completed', 503, 'Business', 'Hybrid', 'WestCampus', 1300.00, 300.00, 88.0, 85.0, 'Good participation', 'Certificate of Completion');

-- Equipment maintenance logs
CREATE TABLE equipment_maintenance
(
    MaintenanceId           INTEGER PRIMARY KEY,
    EquipmentId             INTEGER,
    EquipmentType           TEXT,
    Location                TEXT,
    ServiceProvider         TEXT,
    ServiceDate             DATETIME,
    NextDueDate            DATETIME,
    CostUSD                REAL,
    ServiceType            TEXT,
    TechnicianId           INTEGER,
    Notes                  TEXT,
    WarrantyCovered        INTEGER,
    PartsReplaced          TEXT,
    DowntimeHours          REAL,
    PriorityLevel          TEXT,
    ComplianceCheck        INTEGER,
    CalibrationPerformed   INTEGER,
    SafetyClearance        INTEGER,
    MaintenanceStatus      TEXT,
    FollowUpRequired       INTEGER
);

INSERT INTO equipment_maintenance VALUES
(401, 2001, 'MRI Scanner', 'Building A', 'MedTech Services', '2022-11-15', '2023-11-15', 25000.00, 'FullServicing', 801, 'Replaced cooling system', 1, 'Coolant Pump', 4.5, 'High', 1, 1, 1, 'Completed', 0);

INSERT INTO equipment_maintenance VALUES
(402, 2002, 'HVAC Unit', 'Building B', 'CoolAir Ltd', '2023-01-20', '2023-07-20', 1500.00, 'FilterChange', 802, 'Filters replaced', 1, 'Filter Set', 1.0, 'Medium', 1, 0, 1, 'Completed', 0);

INSERT INTO equipment_maintenance VALUES
(403, 2003, '3D Printer', 'Lab C', 'PrintPro', '2023-02-10', '2023-08-10', 800.00, 'Calibration', 803, 'Calibrated extruder', 0, 'None', 0.5, 'Low', 1, 1, 1, 'Completed', 0);

-- Conference papers metadata
CREATE TABLE conference_papers
(
    PaperId               INTEGER PRIMARY KEY,
    ConferenceId          INTEGER,
    Title                 TEXT,
    Authors               TEXT,
    Abstract              TEXT,
    PresentationDate      DATETIME,
    SessionName           TEXT,
    Track                 TEXT,
    PaperType             TEXT,
    DOI                   TEXT,
    PDFUrl                TEXT,
    Keywords              TEXT,
    AcceptanceStatus      TEXT,
    Award                 TEXT,
    PageCount             INTEGER,
    Language              TEXT,
    Sponsor               TEXT,
    FundingInfo           TEXT,
    SessionChair          TEXT,
    CitationsCount        INTEGER,
    DownloadCount         INTEGER
);

INSERT INTO conference_papers VALUES
(501, 9001, 'Advances in Quantum Computing', 'Alice Smith;Bob Johnson', 'Explores recent breakthroughs in quantum algorithms.', '2023-09-12', 'Quantum Innovations', 'Computing', 'FullPaper', '10.1234/qc2023.001', 'http://example.com/papers/001.pdf', 'quantum;computing;algorithms', 'Accepted', 'BestPaper', 12, 'English', 'QuantumCorp', 'Grant Q2022', 'Dr Emma Lee', 25, 340);

INSERT INTO conference_papers VALUES
(502, 9001, 'Machine Learning for Healthcare', 'Carol Lee;David Kim', 'Application of ML techniques to patient data analysis.', '2023-09-13', 'AI in Medicine', 'Healthcare', 'ShortPaper', '10.1234/qc2023.002', 'http://example.com/papers/002.pdf', 'machine learning;healthcare', 'Accepted', 'None', 6, 'English', 'HealthTech', 'None', 'Dr Frank Miller', 10, 150);

INSERT INTO conference_papers VALUES
(503, 9002, 'Sustainable Energy Systems', 'Evan Wu;Fiona Zhang', 'Design of resilient renewable energy grids.', '2023-10-05', 'Energy Futures', 'Sustainability', 'FullPaper', '10.1234/ec2023.003', 'http://example.com/papers/003.pdf', 'sustainability;energy;grids', 'Pending', 'None', 14, 'English', 'EcoEnergy', 'Grant E2021', 'Dr Grace Park', 0, 0);

-- Library books catalog
CREATE TABLE library_books
(
    BookId               INTEGER PRIMARY KEY,
    ISBN                 TEXT,
    Title                TEXT,
    Author               TEXT,
    Publisher            TEXT,
    PublicationYear      INTEGER,
    Edition              TEXT,
    Language             TEXT,
    ShelfLocation        TEXT,
    Category             TEXT,
    Subcategory          TEXT,
    CopiesOwned          INTEGER,
    CopiesAvailable      INTEGER,
    DeweyDecimal         TEXT,
    LibrarySection       TEXT,
    AcquisitionDate      DATETIME,
    CostUSD              REAL,
    CoverImageUrl        TEXT,
    Synopsis             TEXT,
    RecommendedAgeGroup TEXT
);

INSERT INTO library_books VALUES
(601, '978-0262033848', 'Introduction to Algorithms', 'Thomas H. Cormen', 'MIT Press', 2009, '3rd', 'English', 'A123', 'ComputerScience', 'Algorithms', 5, 4, '005.1', 'Reference', '2009-03-01', 120.00, 'http://example.com/covers/algorithms.jpg', 'Comprehensive textbook on algorithms.', 'Adult');

INSERT INTO library_books VALUES
(602, '978-0131103627', 'The C Programming Language', 'Brian W. Kernighan;Dennis M. Ritchie', 'Prentice Hall', 1988, '2nd', 'English', 'B456', 'ComputerScience', 'Programming', 3, 3, '005.13', 'Reference', '1988-04-01', 85.00, 'http://example.com/covers/cprog.jpg', 'Classic book on C programming.', 'Teen');

INSERT INTO library_books VALUES
(603, '978-0307271037', 'The Road', 'Cormac McCarthy', 'Alfred A. Knopf', 2006, '1st', 'English', 'F789', 'Fiction', 'Postmodern', 4, 2, '813.54', 'General', '2006-09-01', 25.00, 'http://example.com/covers/road.jpg', 'A post-apocalyptic novel.', 'Adult');

-- Media asset metadata repository
CREATE TABLE media_asset_metadata
(
    AssetId                INTEGER PRIMARY KEY,
    FileName               TEXT,
    FileType               TEXT,
    DurationSeconds        INTEGER,
    Resolution             TEXT,
    BitRate                INTEGER,
    Creator                TEXT,
    CreationDate           DATETIME,
    Description            TEXT,
    LicenseType            TEXT,
    UsageRights            TEXT,
    Tags                   TEXT,
    FileSizeMB             REAL,
    ProjectCode            TEXT,
    RelatedAssetId         INTEGER,
    AccessLevel            TEXT,
    StoragePath            TEXT,
    LastModified           DATETIME,
    ViewsCount             INTEGER,
    Rating                 REAL
);

INSERT INTO media_asset_metadata VALUES
(701, 'promo_video.mp4', 'video/mp4', 120, '1920x1080', 5000, 'MarketingTeam', '2022-11-01', 'Product launch promo video', 'RoyaltyFree', 'Global', 'promo;launch;product', 250.5, 'PRJ-1001', NULL, 'Public', '/media/videos/promo_video.mp4', '2023-01-05', 1500, 4.7);

INSERT INTO media_asset_metadata VALUES
(702, 'interview_audio.wav', 'audio/wav', 3600, NULL, 1411, 'HRDept', '2023-02-15', 'Employee interview for internal podcast', 'InternalUse', 'CompanyOnly', 'interview;podcast;HR', 85.2, 'PRJ-1002', NULL, 'Internal', '/media/audio/interview_audio.wav', '2023-02-20', 300, 4.2);

INSERT INTO media_asset_metadata VALUES
(703, 'logo.svg', 'image/svg+xml', NULL, '500x200', NULL, 'DesignTeam', '2021-07-10', 'Company logo vector file', 'CreativeCommons', 'Global', 'logo;brand;vector', 2.1, 'PRJ-1003', NULL, 'Public', '/media/images/logo.svg', '2022-12-01', 5000, 5.0);

-- Logistics routes directory
CREATE TABLE logistics_routes
(
    RouteId                INTEGER PRIMARY KEY,
    OriginLocation         TEXT,
    DestinationLocation    TEXT,
    DistanceKm             REAL,
    EstimatedTimeMinutes   INTEGER,
    TransportMode          TEXT,
    CarrierName            TEXT,
    CostUSD                REAL,
    FrequencyPerWeek       INTEGER,
    RouteStatus            TEXT,
    LastInspectionDate     DATETIME,
    CapacityTons           REAL,
    HazardousMaterialAllowed INTEGER,
    TemperatureControlled  INTEGER,
    CustomsClearanceRequired INTEGER,
    LeadTimeDays           INTEGER,
    PreferredVendor        TEXT,
    RoutePriority          TEXT,
    Comments               TEXT,
    SLACompliance          INTEGER
);

INSERT INTO logistics_routes VALUES
(801, 'Warehouse A', 'Retail Store X', 350.5, 480, 'Truck', 'FastTrans', 1200.00, 5, 'Active', '2023-01-15', 20.0, 0, 1, 1, 3, 'FastTrans', 'High', 'No known issues', 1);

INSERT INTO logistics_routes VALUES
(802, 'Port Z', 'Distribution Center B', 800.0, 720, 'Rail', 'RailLink', 2500.00, 2, 'Active', '2022-12-20', 45.0, 1, 0, 1, 7, 'RailLink', 'Medium', 'Requires hazmat permits', 1);

INSERT INTO logistics_routes VALUES
(803, 'Factory C', 'Export Hub Y', 1200.0, 1440, 'Ship', 'OceanicFreight', 5000.00, 1, 'Planned', '2023-02-01', 60.0, 1, 0, 1, 14, 'OceanicFreight', 'Low', 'Seasonal route', 0);

-- Customer feedback surveys records
CREATE TABLE customer_feedback_surveys
(
    SurveyId              INTEGER PRIMARY KEY,
    CustomerId            INTEGER,
    SurveyDate            DATETIME,
    SurveyChannel         TEXT,
    OverallSatisfaction   INTEGER,
    RecommendScore        INTEGER,
    ProductQualityScore   INTEGER,
    ServiceQualityScore   INTEGER,
    ValueForMoneyScore   INTEGER,
    IssueReported         TEXT,
    ResolutionTimeDays    INTEGER,
    FollowUpRequired      INTEGER,
    Comments              TEXT,
    SurveyVersion         TEXT,
    NPSScore              INTEGER,
    SentimentScore        REAL,
    ResponseTimeSeconds   INTEGER,
    SurveyLengthMinutes  INTEGER,
    IncentiveOffered      TEXT,
    IncentiveRedeemed     INTEGER
);

INSERT INTO customer_feedback_surveys VALUES
(901, 20001, '2023-03-10', 'Email', 9, 10, 9, 8, 9, 'None', 0, 0, 'Very satisfied with product', 'v1', 80, 0.85, 45, 5, 'DiscountCoupon', 1);

INSERT INTO customer_feedback_surveys VALUES
(902, 20002, '2023-03-12', 'Web', 6, 5, 6, 5, 5, 'Delayed shipping', 7, 1, 'Product arrived late', 'v1', 20, 0.45, 60, 8, 'GiftCard', 0);

INSERT INTO customer_feedback_surveys VALUES
(903, 20003, '2023-03-15', 'Phone', 8, 8, 8, 9, 8, 'None', 0, 0, 'Good overall experience', 'v1', 50, 0.70, 30, 4, 'FreeUpgrade', 1);