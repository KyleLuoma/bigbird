-- Digital library items table
CREATE TABLE digital_library_items
(
    Id INTEGER PRIMARY KEY,
    Title TEXT,
    Author TEXT,
    Publisher TEXT,
    ISBN TEXT,
    PublicationYear INTEGER,
    Language TEXT,
    PageCount INTEGER,
    Format TEXT,
    FileSizeMB REAL,
    Checksum TEXT,
    Category TEXT,
    Subcategory TEXT,
    ShelfLocation TEXT,
    AddedDate DATETIME,
    ModifiedDate DATETIME,
    AccessLevel TEXT,
    Tags TEXT,
    Rating INTEGER,
    Downloads INTEGER
);

INSERT INTO digital_library_items (Id, Title, Author, Publisher, ISBN, PublicationYear, Language, PageCount, Format, FileSizeMB, Checksum, Category, Subcategory, ShelfLocation, AddedDate, ModifiedDate, AccessLevel, Tags, Rating, Downloads) VALUES
(1, 'Data Science Essentials', 'Jane Doe', 'TechPress', '1234567890123', 2021, 'English', 350, 'PDF', 5.2, 'abc123', 'Technology', 'Data Science', 'A1', '2022-01-15 10:00:00', '2022-06-01 12:30:00', 'Public', 'data,science,tech', 4, 120),
(2, 'Modern Art History', 'John Smith', 'ArtWorld', '9876543210987', 2019, 'English', 220, 'EPUB', 2.8, 'def456', 'Art', 'History', 'B3', '2021-09-10 09:15:00', '2022-02-20 11:45:00', 'Restricted', 'art,history,modern', 5, 85),
(3, 'Advanced SQL Queries', 'Alice Johnson', 'DB Books', '5555555555555', 2020, 'English', 410, 'PDF', 6.1, 'ghi789', 'Technology', 'Databases', 'C5', '2022-03-05 14:20:00', '2022-07-12 16:00:00', 'Public', 'sql,database,advanced', 3, 200);

-- Employee shift schedules table
CREATE TABLE employee_shift_schedules
(
    Id INTEGER PRIMARY KEY,
    EmployeeId INTEGER,
    EmployeeName TEXT,
    Department TEXT,
    ShiftDate DATE,
    ShiftStartTime TEXT,
    ShiftEndTime TEXT,
    BreakMinutes INTEGER,
    Location TEXT,
    ManagerId INTEGER,
    ManagerName TEXT,
    ShiftType TEXT,
    HoursWorked REAL,
    OvertimeHours REAL,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Approved BOOLEAN,
    ApprovalDate DATETIME,
    PayrollCode TEXT
);

INSERT INTO employee_shift_schedules (Id, EmployeeId, EmployeeName, Department, ShiftDate, ShiftStartTime, ShiftEndTime, BreakMinutes, Location, ManagerId, ManagerName, ShiftType, HoursWorked, OvertimeHours, Notes, CreatedAt, UpdatedAt, Approved, ApprovalDate, PayrollCode) VALUES
(1, 101, 'Emily Clark', 'Customer Support', '2022-12-01', '08:00', '16:00', 30, 'HQ', 201, 'Mark Lee', 'Day', 7.5, 0, 'N/A', '2022-11-20 09:00:00', '2022-11-25 10:15:00', 1, '2022-11-26 08:30:00', 'CS001'),
(2, 102, 'James Miller', 'Logistics', '2022-12-01', '14:00', '22:00', 45, 'Warehouse 3', 202, 'Laura Kim', 'Swing', 7.75, 0.5, 'Overtime approved', '2022-11-20 09:30:00', '2022-11-25 11:00:00', 1, '2022-11-26 09:00:00', 'LG002'),
(3, 103, 'Sofia Patel', 'IT Services', '2022-12-02', '22:00', '06:00', 20, 'Data Center', 203, 'Raj Singh', 'Night', 7.67, 1.0, 'Night shift', '2022-11-21 08:45:00', '2022-11-26 07:15:00', 0, NULL, 'IT003');

-- IoT device configurations table
CREATE TABLE iot_device_configurations
(
    Id INTEGER PRIMARY KEY,
    DeviceId TEXT,
    DeviceType TEXT,
    FirmwareVersion TEXT,
    ConfigVersion INTEGER,
    IPAddress TEXT,
    MACAddress TEXT,
    Location TEXT,
    InstallDate DATETIME,
    LastUpdated DATETIME,
    IsActive BOOLEAN,
    SamplingRateHz INTEGER,
    TransmissionPowerDBM REAL,
    EncryptionEnabled BOOLEAN,
    PublicKey TEXT,
    PrivateKey TEXT,
    SensorCalibration TEXT,
    AlertThresholdLow REAL,
    AlertThresholdHigh REAL,
    OwnerUserId INTEGER,
    OwnerUserName TEXT,
    Comments TEXT
);

INSERT INTO iot_device_configurations (Id, DeviceId, DeviceType, FirmwareVersion, ConfigVersion, IPAddress, MACAddress, Location, InstallDate, LastUpdated, IsActive, SamplingRateHz, TransmissionPowerDBM, EncryptionEnabled, PublicKey, PrivateKey, SensorCalibration, AlertThresholdLow, AlertThresholdHigh, OwnerUserId, OwnerUserName, Comments) VALUES
(1, 'dev-1001', 'TemperatureSensor', 'v1.2.3', 5, '192.168.1.10', 'AA:BB:CC:DD:EE:01', 'Building A', '2022-01-15 08:00:00', '2022-10-01 12:30:00', 1, 1, 10.5, 1, 'pubkey1', 'privkey1', 'calibA', -10.0, 50.0, 301, 'Mike Ross', 'Initial deployment'),
(2, 'dev-1002', 'AirQualitySensor', 'v2.0.0', 3, '192.168.1.11', 'AA:BB:CC:DD:EE:02', 'Building B', '2022-02-20 09:15:00', '2022-09-15 14:45:00', 1, 2, 12.0, 1, 'pubkey2', 'privkey2', 'calibB', 0.0, 200.0, 302, 'Rachel Zane', 'Calibration updated'),
(3, 'dev-1003', 'PressureSensor', 'v1.5.1', 4, '192.168.1.12', 'AA:BB:CC:DD:EE:03', 'Outdoor', '2021-12-05 07:30:00', '2022-08-20 16:10:00', 0, 1, 9.8, 0, 'pubkey3', 'privkey3', 'calibC', 950.0, 1050.0, 303, 'Harvey Specter', 'Device decommissioned');

-- Marine species observations table
CREATE TABLE marine_species_observations
(
    Id INTEGER PRIMARY KEY,
    ObservationDate DATETIME,
    ObserverId INTEGER,
    ObserverName TEXT,
    SpeciesCommonName TEXT,
    SpeciesScientificName TEXT,
    Count INTEGER,
    Location TEXT,
    Latitude REAL,
    Longitude REAL,
    DepthMeters REAL,
    WaterTemperatureC REAL,
    SalinityPSU REAL,
    ObservationMethod TEXT,
    PhotoUrl TEXT,
    Notes TEXT,
    Verified BOOLEAN,
    VerificationDate DATETIME,
    ProjectId INTEGER,
    ProjectName TEXT
);

INSERT INTO marine_species_observations (Id, ObservationDate, ObserverId, ObserverName, SpeciesCommonName, SpeciesScientificName, Count, Location, Latitude, Longitude, DepthMeters, WaterTemperatureC, SalinityPSU, ObservationMethod, PhotoUrl, Notes, Verified, VerificationDate, ProjectId, ProjectName) VALUES
(1, '2022-07-12 08:30:00', 401, 'Laura Gomez', 'Blue Tang', 'Paracanthurus hepatus', 12, 'Great Barrier Reef', -18.287, 147.699, 5.2, 24.5, 35.0, 'Diver', 'http://images.example.com/blue_tang.jpg', 'School near coral', 1, '2022-07-14 10:00:00', 1001, 'Reef Health Study'),
(2, '2022-08-03 14:15:00', 402, 'Tom Nguyen', 'Manta Ray', 'Manta birostris', 2, 'Bali Sea', -8.652, 115.219, 30.0, 27.0, 34.2, 'Boat', 'http://images.example.com/manta_ray.jpg', 'Feeding observed', 1, '2022-08-05 09:30:00', 1002, 'Pelagic Species Survey'),
(3, '2022-09-21 11:45:00', 403, 'Sophie Lee', 'Clownfish', 'Amphiprion ocellaris', 25, 'Fiji Islands', -16.578, 179.423, 2.0, 26.8, 35.1, 'Snorkel', 'http://images.example.com/clownfish.jpg', 'Associated with anemones', 0, NULL, 1003, 'Coral Symbiosis Project');

-- Art gallery exhibitions table
CREATE TABLE art_gallery_exhibitions
(
    Id INTEGER PRIMARY KEY,
    ExhibitionName TEXT,
    CuratorName TEXT,
    StartDate DATETIME,
    EndDate DATETIME,
    GalleryLocation TEXT,
    City TEXT,
    Country TEXT,
    NumberOfArtworks INTEGER,
    TotalVisitors INTEGER,
    Theme TEXT,
    SponsorName TEXT,
    TicketPriceUSD REAL,
    IsOpenToPublic BOOLEAN,
    OpeningCeremonyDate DATETIME,
    ClosingCeremonyDate DATETIME,
    Description TEXT,
    FeaturedArtist TEXT,
    ArtworkMediums TEXT,
    AccessibilityInfo TEXT,
    CreatedAt DATETIME
);

INSERT INTO art_gallery_exhibitions (Id, ExhibitionName, CuratorName, StartDate, EndDate, GalleryLocation, City, Country, NumberOfArtworks, TotalVisitors, Theme, SponsorName, TicketPriceUSD, IsOpenToPublic, OpeningCeremonyDate, ClosingCeremonyDate, Description, FeaturedArtist, ArtworkMediums, AccessibilityInfo, CreatedAt) VALUES
(1, 'Colors of Motion', 'Emma Davis', '2022-05-01 10:00:00', '2022-08-31 18:00:00', 'Main Hall', 'New York', 'USA', 120, 45000, 'Abstract Expressionism', 'ArtCo', 15.0, 1, '2022-04-30 19:00:00', '2022-09-01 17:00:00', 'Exploring dynamic color usage in modern art.', 'Liam Turner', 'Oil, Acrylic', 'Wheelchair accessible', '2022-03-15 09:20:00'),
(2, 'Silent Landscapes', 'Oliver Chen', '2022-09-10 09:30:00', '2022-12-20 17:30:00', 'East Wing', 'London', 'UK', 85, 30000, 'Minimalist Landscapes', 'CultureFund', 12.5, 1, '2022-09-09 18:00:00', '2022-12-21 16:00:00', 'A quiet contemplation of nature through minimal forms.', 'Ava Patel', 'Watercolor, Ink', 'Audio guides available', '2022-07-01 11:45:00'),
(3, 'Digital Futures', 'Noah Martin', '2023-01-15 10:00:00', '2023-04-30 19:00:00', 'Tech Gallery', 'Tokyo', 'Japan', 150, 60000, 'Digital Art', 'TechPartners', 20.0, 0, '2023-01-14 20:00:00', '2023-05-01 18:00:00', 'Showcasing emerging digital mediums and interactive installations.', 'Mia Suzuki', 'VR, Projection', 'Assistive listening devices', '2022-11-20 14:30:00');

-- Space mission events table
CREATE TABLE space_mission_events
(
    Id INTEGER PRIMARY KEY,
    MissionName TEXT,
    EventType TEXT,
    EventTimestamp DATETIME,
    EventDescription TEXT,
    SatelliteId TEXT,
    OrbitAltitudeKm REAL,
    OrbitInclinationDeg REAL,
    PayloadName TEXT,
    Status TEXT,
    GroundStation TEXT,
    ReceivedSignalStrengthDB REAL,
    DataVolumeMB REAL,
    OperatorId INTEGER,
    OperatorName TEXT,
    CrewMemberCount INTEGER,
    IsCritical BOOLEAN,
    Resolution TEXT,
    FollowUpAction TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Remarks TEXT
);

INSERT INTO space_mission_events (Id, MissionName, EventType, EventTimestamp, EventDescription, SatelliteId, OrbitAltitudeKm, OrbitInclinationDeg, PayloadName, Status, GroundStation, ReceivedSignalStrengthDB, DataVolumeMB, OperatorId, OperatorName, CrewMemberCount, IsCritical, Resolution, FollowUpAction, CreatedAt, UpdatedAt, Remarks) VALUES
(1, 'Luna Explorer', 'Launch', '2022-04-05 13:20:00', 'Successful lift‑off from Cape Canaveral', 'LUN-001', 400.0, 51.6, 'Lunar Imager', 'Nominal', 'CapeCanaveral GS', -75.2, 1500.0, 501, 'Dr. Lin', 0, 1, 'In orbit', 'Begin science operations', '2022-04-04 08:00:00', '2022-04-05 14:00:00', 'First mission of new launch vehicle'),
(2, 'Mars Surveyor', 'Orbit Insertion', '2023-02-12 09:45:00', 'Entered Mars orbit after 7 month cruise', 'MAR-018', 250.0, 70.0, 'Surface Radar', 'Nominal', 'DeepSpace GS', -68.5, 2500.0, 502, 'Dr. Patel', 0, 1, 'Stable orbit', 'Deploy communication relay', '2023-01-30 10:30:00', '2023-02-12 10:30:00', 'Orbit insertion successful'),
(3, 'ISS Resupply', 'Docking', '2022-11-20 16:00:00', 'Automated docking with ISS completed', 'ISS-DRN', 408.0, 51.6, 'Supply Module', 'Nominal', 'Kennedy GS', -70.0, 500.0, 503, 'Capt. Reyes', 3, 0, 'Docked', 'Begin cargo transfer', '2022-11-19 12:00:00', '2022-11-20 16:30:00', 'Crewed docking procedure');

-- Wildlife conservation projects table
CREATE TABLE wildlife_conservation_projects
(
    Id INTEGER PRIMARY KEY,
    ProjectName TEXT,
    Organization TEXT,
    StartDate DATETIME,
    EndDate DATETIME,
    Region TEXT,
    Country TEXT,
    SpeciesTargeted TEXT,
    FundingAmountUSD REAL,
    FundingSource TEXT,
    ProjectLeadId INTEGER,
    ProjectLeadName TEXT,
    NumberOfStaff INTEGER,
    NumberOfVolunteers INTEGER,
    AreaSizeSqKm REAL,
    ConservationStatus TEXT,
    SuccessMetrics TEXT,
    ReportLink TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Notes TEXT
);

INSERT INTO wildlife_conservation_projects (Id, ProjectName, Organization, StartDate, EndDate, Region, Country, SpeciesTargeted, FundingAmountUSD, FundingSource, ProjectLeadId, ProjectLeadName, NumberOfStaff, NumberOfVolunteers, AreaSizeSqKm, ConservationStatus, SuccessMetrics, ReportLink, CreatedAt, UpdatedAt, Notes) VALUES
(1, 'Elephant Corridor Initiative', 'WildLife Trust', '2021-03-01 00:00:00', '2024-03-01 00:00:00', 'Savannah', 'Kenya', 'African Elephant', 2500000.0, 'Global Fund', 601, 'Nia Okeke', 12, 150, 350.5, 'Active', 'Reduction in poaching incidents', 'http://reports.wt.org/elephant_corridor.pdf', '2021-02-15 09:00:00', '2023-07-10 14:20:00', 'Phase 2 planning underway'),
(2, 'Tiger Habitat Restoration', 'Conserve Asia', '2020-06-15 00:00:00', '2025-06-15 00:00:00', 'Rainforest', 'India', 'Bengal Tiger', 4000000.0, 'Donor Alliance', 602, 'Rohit Singh', 18, 200, 420.0, 'Active', 'Increase in tiger sightings', 'http://reports.ca.org/tiger_habitat.pdf', '2020-05-30 10:30:00', '2023-08-22 11:45:00', 'Community engagement program launched'),
(3, 'Sea Turtle Nest Protection', 'Ocean Guardians', '2019-01-01 00:00:00', '2022-12-31 00:00:00', 'Coastal', 'Mexico', 'Leatherback Turtle', 1200000.0, 'Marine Fund', 603, 'Sofia Ramirez', 9, 80, 85.2, 'Completed', 'Number of successful hatchings', 'http://reports.og.org/sea_turtle_report.pdf', '2018-12-10 08:45:00', '2023-01-05 13:10:00', 'Data used for policy recommendations');

-- Urban planning documents table
CREATE TABLE urban_planning_documents
(
    Id INTEGER PRIMARY KEY,
    DocumentTitle TEXT,
    DocumentType TEXT,
    PlanYear INTEGER,
    AuthorId INTEGER,
    AuthorName TEXT,
    Department TEXT,
    City TEXT,
    Region TEXT,
    PublicationDate DATETIME,
    RevisionNumber INTEGER,
    IsApproved BOOLEAN,
    ApprovalDate DATETIME,
    Summary TEXT,
    Keywords TEXT,
    FilePath TEXT,
    FileSizeKB INTEGER,
    ConfidentialLevel TEXT,
    RelatedProjectId INTEGER,
    RelatedProjectName TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO urban_planning_documents (Id, DocumentTitle, DocumentType, PlanYear, AuthorId, AuthorName, Department, City, Region, PublicationDate, RevisionNumber, IsApproved, ApprovalDate, Summary, Keywords, FilePath, FileSizeKB, ConfidentialLevel, RelatedProjectId, RelatedProjectName, CreatedAt, UpdatedAt) VALUES
(1, 'Downtown Revitalization Master Plan', 'MasterPlan', 2023, 701, 'Carlos Mendoza', 'Planning Dept', 'Seattle', 'Pacific Northwest', '2022-11-20 09:00:00', 2, 1, '2022-12-01 10:30:00', 'Comprehensive strategy for downtown growth', 'revitalization, downtown, transit', '/files/plans/downtown_master_2023.pdf', 2450, 'Public', 3001, 'Downtown Revitalization', '2022-10-15 08:00:00', '2023-01-05 12:45:00'),
(2, 'Greenbelt Preservation Guidelines', 'Guideline', 2022, 702, 'Priya Nair', 'Environmental Services', 'Portland', 'Pacific Northwest', '2021-08-15 14:20:00', 1, 1, '2021-09-01 09:15:00', 'Guidelines to protect greenbelt areas', 'greenbelt, conservation, land use', '/files/guidelines/greenbelt_2022.pdf', 1320, 'Restricted', 3002, 'Greenbelt Project', '2021-07-30 11:00:00', '2022-02-10 13:20:00'),
(3, 'Transit-Oriented Development Policy', 'Policy', 2024, 703, 'Liam O\'Connor', 'Transportation Dept', 'Austin', 'South Central', '2023-03-05 16:45:00', 3, 0, NULL, 'Policy framework for TOD', 'transit, TOD, housing', '/files/policies/tod_policy_2024.docx', 980, 'Confidential', 3003, 'Transit Expansion', '2023-01-20 10:10:00', '2023-04-15 15:30:00');

-- Food supply chain transactions table
CREATE TABLE food_supply_chain_transactions
(
    Id INTEGER PRIMARY KEY,
    TransactionDate DATETIME,
    SupplierId INTEGER,
    SupplierName TEXT,
    DistributorId INTEGER,
    DistributorName TEXT,
    ProductSKU TEXT,
    ProductName TEXT,
    QuantityUnits INTEGER,
    UnitWeightKg REAL,
    TotalWeightKg REAL,
    OriginCountry TEXT,
    DestinationCountry TEXT,
    TransportMode TEXT,
    ShipmentReference TEXT,
    DeliveryStatus TEXT,
    ExpectedDeliveryDate DATETIME,
    ActualDeliveryDate DATETIME,
    QualityScore INTEGER,
    Remarks TEXT
);

INSERT INTO food_supply_chain_transactions (Id, TransactionDate, SupplierId, SupplierName, DistributorId, DistributorName, ProductSKU, ProductName, QuantityUnits, UnitWeightKg, TotalWeightKg, OriginCountry, DestinationCountry, TransportMode, ShipmentReference, DeliveryStatus, ExpectedDeliveryDate, ActualDeliveryDate, QualityScore, Remarks) VALUES
(1, '2022-10-01 08:00:00', 801, 'Fresh Farms Ltd', 901, 'Global Distributors', 'FRU123', 'Organic Apples', 5000, 0.2, 1000.0, 'USA', 'Germany', 'Sea', 'SHIP001', 'Delivered', '2022-10-20 12:00:00', '2022-10-19 15:30:00', 95, 'On time delivery'),
(2, '2022-11-15 09:30:00', 802, 'DairyCo', 902, 'EuroFood', 'DAI456', 'Whole Milk', 2000, 1.0, 2000.0, 'Netherlands', 'France', 'Truck', 'SHIP002', 'In Transit', '2022-11-22 18:00:00', NULL, 88, 'Temperature monitoring active'),
(3, '2022-12-05 07:45:00', 803, 'Grain Exporters', 903, 'Asia Trade', 'GRA789', 'Wheat Flour', 10000, 0.5, 5000.0, 'Canada', 'Japan', 'Rail', 'SHIP003', 'Delayed', '2022-12-20 10:00:00', '2022-12-22 14:20:00', 76, 'Customs hold caused delay');

-- Academic course enrollments table
CREATE TABLE academic_course_enrollments
(
    Id INTEGER PRIMARY KEY,
    StudentId INTEGER,
    StudentName TEXT,
    CourseId TEXT,
    CourseTitle TEXT,
    Department TEXT,
    Semester TEXT,
    AcademicYear INTEGER,
    EnrollmentDate DATETIME,
    CompletionDate DATETIME,
    Grade TEXT,
    CreditsEarned INTEGER,
    Status TEXT,
    InstructorId INTEGER,
    InstructorName TEXT,
    CampusLocation TEXT,
    Program TEXT,
    ModeOfStudy TEXT,
    TuitionFeeUSD REAL,
    FinancialAid BOOLEAN,
    Notes TEXT
);

INSERT INTO academic_course_enrollments (Id, StudentId, StudentName, CourseId, CourseTitle, Department, Semester, AcademicYear, EnrollmentDate, CompletionDate, Grade, CreditsEarned, Status, InstructorId, InstructorName, CampusLocation, Program, ModeOfStudy, TuitionFeeUSD, FinancialAid, Notes) VALUES
(1, 1001, 'Emily Chen', 'CS101', 'Intro to Computer Science', 'Computer Science', 'Fall', 2022, '2022-08-20 09:00:00', '2022-12-15 16:30:00', 'A', 4, 'Completed', 1101, 'Dr. Alan Turing', 'Main Campus', 'BSc CS', 'In Person', 1500.0, 1, 'Full scholarship awarded'),
(2, 1002, 'Michael Brown', 'ENG202', 'Advanced Writing', 'English', 'Spring', 2023, '2023-01-10 10:15:00', NULL, NULL, 0, 'Enrolled', 1102, 'Prof. Maya Angelou', 'North Campus', 'BA English', 'Online', 1200.0, 0, 'Part‑time student'),
(3, 1003, 'Sofia Martínez', 'BIO150', 'Human Anatomy', 'Biology', 'Summer', 2022, '2022-05-05 08:30:00', '2022-08-01 15:00:00', 'B+', 3, 'Completed', 1103, 'Dr. Rosalind Franklin', 'Health Campus', 'BS Biology', 'Hybrid', 1400.0, 1, 'Received lab assistantship');

-- Academic departments table
CREATE TABLE academic_departments
(
    Id INTEGER PRIMARY KEY,
    DepartmentName TEXT,
    FacultyHeadId INTEGER,
    FacultyHeadName TEXT,
    Building TEXT,
    Floor INTEGER,
    PhoneExtension TEXT,
    EmailAddress TEXT,
    EstablishedYear INTEGER,
    NumberOfFaculty INTEGER,
    NumberOfStudents INTEGER,
    ResearchBudgetUSD REAL,
    UndergraduatePrograms INTEGER,
    GraduatePrograms INTEGER,
    PostdocPositions INTEGER,
    AccreditationStatus TEXT,
    WebsiteURL TEXT,
    MissionStatement TEXT,
    CoreValues TEXT,
    StrategicPlanYear INTEGER,
    LastAccreditationDate DATE,
    Notes TEXT
);

INSERT INTO academic_departments (Id, DepartmentName, FacultyHeadId, FacultyHeadName, Building, Floor, PhoneExtension, EmailAddress, EstablishedYear, NumberOfFaculty, NumberOfStudents, ResearchBudgetUSD, UndergraduatePrograms, GraduatePrograms, PostdocPositions, AccreditationStatus, WebsiteURL, MissionStatement, CoreValues, StrategicPlanYear, LastAccreditationDate, Notes) VALUES
(1, 'Computer Science', 2001, 'Dr. Grace Hopper', 'Tech Hall', 3, '1234', 'cs@university.edu', 1985, 45, 800, 2500000.0, 5, 3, 8, 'Accredited', 'http://cs.university.edu', 'Advance computing knowledge', 'Innovation,Integrity,Excellence', 2025, '2022-06-15', 'Expanding AI research labs'),
(2, 'Environmental Studies', 2002, 'Dr. Wangari Maathai', 'Eco Center', 2, '5678', 'env@university.edu', 1992, 30, 600, 1500000.0, 4, 2, 5, 'Accredited', 'http://env.university.edu', 'Sustainable future education', 'Sustainability,Collaboration,Responsibility', 2024, '2021-09-10', 'New partnership with local NGOs'),
(3, 'Business Administration', 2003, 'Dr. Peter Drucker', 'Biz Building', 5, '9012', 'bus@university.edu', 1970, 60, 1200, 3500000.0, 6, 4, 10, 'Accredited', 'http://bus.university.edu', 'Prepare leaders for global market', 'Leadership,Ethics,Creativity', 2023, '2020-03-20', 'Launching entrepreneurship incubator');
