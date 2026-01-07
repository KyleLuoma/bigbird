-- District level health statistics
CREATE TABLE district_health_statistics
(
    DistrictID                TEXT    NOT NULL,
    Year                      INTEGER NOT NULL,
    Population                INTEGER NOT NULL,
    MedianAge                 REAL,
    AvgHouseholdIncome        REAL,
    UnemploymentRate          REAL,
    PovertyRate               REAL,
    DiabetesPrevalence        REAL,
    ObesityRate               REAL,
    AsthmaRate                REAL,
    MentalHealthIncidence    REAL,
    ImmunizationCoverage      REAL,
    HealthCenterCount         INTEGER,
    PediatricianCount         INTEGER,
    DentistCount              INTEGER,
    HospitalBedCount          INTEGER,
    AirQualityIndex           INTEGER,
    WaterQualityScore         REAL,
    VaccinationProgramBudget  REAL,
    NutritionProgramBudget    REAL,
    PhysicalActivityProgram  TEXT,
    SubstanceAbuseProgram     TEXT,
    HealthOutreachEvents      INTEGER,
    PrimaryCareVisitRate      REAL,
    EmergencyRoomVisitRate    REAL,
    PRIMARY KEY (DistrictID, Year)
);

INSERT INTO district_health_statistics VALUES
('D001', 2023, 450000, 35.2, 62000.0, 5.3, 12.1, 9.5, 27.4, 8.2, 14.0, 95.0, 12, 8, 5, 150, 42, 88.5, 200000.0, 150000.0, 'AfterSchoolSports', 'Counseling', 120, 0.65, 0.30);

INSERT INTO district_health_statistics VALUES
('D002', 2023, 312000, 38.0, 54000.0, 6.1, 15.0, 10.2, 29.1, 9.0, 13.5, 92.0, 9, 6, 4, 85, 55, 90.2, 180000.0, 130000.0, 'CommunityGardens', 'SubstanceFree', 95, 0.70, 0.25);

INSERT INTO district_health_statistics VALUES
('D003', 2023, 275000, 33.8, 68000.0, 4.8, 10.5, 8.7, 25.3, 7.5, 12.0, 97.0, 14, 9, 6, 200, 38, 85.7, 220000.0, 160000.0, 'BikeShare', 'TeenCounseling', 140, 0.60, 0.28);

-- School energy projects
CREATE TABLE school_energy_projects
(
    ProjectID               TEXT    NOT NULL PRIMARY KEY,
    SchoolCDS               TEXT    NOT NULL,
    ProjectName             TEXT    NOT NULL,
    StartDate               DATE,
    EndDate                 DATE,
    ProjectType             TEXT,
    FundingSource           TEXT,
    EstimatedCost           REAL,
    ActualCost              REAL,
    EnergySavedKWh          REAL,
    CO2ReductionTons        REAL,
    SolarPanelCount         INTEGER,
    WindTurbineCount        INTEGER,
    BatteryStorageMWh       REAL,
    ContractorName          TEXT,
    PermitNumber            TEXT,
    ApprovalStatus          TEXT,
    ProjectManagerFName     TEXT,
    ProjectManagerLName     TEXT,
    ProjectManagerEmail     TEXT,
    SustainabilityGoal      TEXT,
    MaintenanceContractID   TEXT,
    InspectionDate          DATE,
    WarrantyEndDate         DATE,
    Comments                TEXT
);

INSERT INTO school_energy_projects VALUES
('P001', 'C001', 'Solar Rooftop Installation', '2022-01-15', '2022-06-30', 'Solar', 'Federal Grant', 250000.0, 245000.0, 500000.0, 350.0, 120, 0, 2.5, 'SunPower Inc', 'PERM12345', 'Approved', 'Alice', 'Miller', 'alice.miller@school.org', 'NetZero2025', 'MC001', '2023-01-10', '2030-12-31', 'Phase 1 completed');

INSERT INTO school_energy_projects VALUES
('P002', 'C002', 'Geothermal Heating', '2021-03-01', '2021-12-15', 'Geothermal', 'State Funding', 400000.0, 398000.0, 800000.0, 600.0, 0, 0, 5.0, 'GeoHeat LLC', 'PERM67890', 'Approved', 'Bob', 'Lee', 'bob.lee@school.org', 'CarbonNeutral2030', 'MC002', '2022-03-20', '2032-03-19', 'Operational');

INSERT INTO school_energy_projects VALUES
('P003', 'C003', 'Battery Storage Upgrade', '2023-05-10', NULL, 'Battery', 'District Budget', 150000.0, NULL, 300000.0, 210.0, 0, 0, 3.0, 'PowerCell Co', 'PERM54321', 'Pending', 'Carol', 'Ng', 'carol.ng@school.org', 'Resilience2027', 'MC003', NULL, NULL, 'Awaiting permits');

-- Community park facilities
CREATE TABLE community_park_facilities
(
    ParkID                TEXT    NOT NULL PRIMARY KEY,
    ParkName              TEXT    NOT NULL,
    City                  TEXT    NOT NULL,
    County                TEXT,
    AreaAcres             REAL,
    OpeningYear           INTEGER,
    PlaygroundCount       INTEGER,
    SportsFieldCount      INTEGER,
    BasketballCourtCount  INTEGER,
    PicnicAreaCount       INTEGER,
    RestroomCount         INTEGER,
    WalkingTrailMiles     REAL,
    BikeTrailMiles        REAL,
    DogParkAvailable      INTEGER,
    SwimmingPool          INTEGER,
    CommunityGardenPlot   INTEGER,
    SkatePark             INTEGER,
    AmphitheaterSeats     INTEGER,
    ParkingSpaces         INTEGER,
    LightingType          TEXT,
    MaintenanceBudget     REAL,
    AnnualVisitorCount    INTEGER,
    AccessibilityRating   REAL,
    FloodZoneLevel        TEXT,
    WaterFeatureType      TEXT,
    SculptureCount        INTEGER,
    WiFiAvailable         INTEGER,
    EventScheduleURL      TEXT,
    Comments              TEXT
);

INSERT INTO community_park_facilities VALUES
('PK001', 'Maple Grove Park', 'Springfield', 'Greene', 45.3, 1998, 4, 2, 3, 5, 2, 2.5, 1.2, 1, 0, 10, 1, 150, 120, 'LED', 25000.0, 15000, 4.5, 'Low', 'Pond', 3, 1, 'http://parks.example.com/maplegrove/events', 'Renovated 2021');

INSERT INTO community_park_facilities VALUES
('PK002', 'Riverfront Preserve', 'Riverton', 'Clinton', 78.9, 2005, 2, 3, 2, 8, 4, 5.0, 3.0, 1, 1, 0, 0, 300, 200, 'Solar', 50000.0, 25000, 4.8, 'Medium', 'Waterfall', 5, 1, 'http://parks.example.com/riverfront/events', 'Annual music festival');

INSERT INTO community_park_facilities VALUES
('PK003', 'Cedar Hills Park', 'Lakeside', 'Mason', 30.0, 1990, 3, 1, 1, 4, 1, 1.8, 0.9, 0, 0, 5, 1, 100, 80, 'Halogen', 18000.0, 12000, 4.2, 'Low', 'Creek', 2, 0, 'http://parks.example.com/cedarhills/events', 'Planned playground upgrade');

-- Alumni career outcomes
CREATE TABLE alumni_career_outcomes
(
    AlumniID                TEXT    NOT NULL,
    SchoolCDS               TEXT    NOT NULL,
    GraduationYear          INTEGER NOT NULL,
    FirstName               TEXT,
    LastName                TEXT,
    DegreeEarned            TEXT,
    MajorField              TEXT,
    CurrentEmployer         TEXT,
    JobTitle                TEXT,
    EmploymentSector        TEXT,
    SalaryUSD               REAL,
    Region                  TEXT,
    EmploymentStatus        TEXT,
    YearsSinceGraduation    INTEGER,
    ProfessionalLicense    TEXT,
    Certifications          TEXT,
    IndustryAwards          TEXT,
    LinkedInProfileURL      TEXT,
    MentorFlag              INTEGER,
    VolunteerHoursPastYear  INTEGER,
    ContinuingEducation     TEXT,
    Skills                 TEXT,
    ContactEmail            TEXT,
    PhoneNumber             TEXT,
    LastUpdateDate          DATE,
    Comments                TEXT,
    PRIMARY KEY (AlumniID)
);

INSERT INTO alumni_career_outcomes VALUES
('A001', 'C001', 2015, 'James', 'Taylor', 'Bachelors', 'Computer Science', 'TechNova', 'Software Engineer', 'Technology', 95000.0, 'Midwest', 'Employed', 8, 'None', 'AWS Certified', 'Employee of the Year 2022', 'https://linkedin.com/in/jamestaylor', 1, 20, 'MSc Data Science', 'Python,SQL,Java', 'j.taylor@example.com', '555-1234', '2023-12-01', 'Promoted recently');

INSERT INTO alumni_career_outcomes VALUES
('A002', 'C002', 2018, 'Maria', 'Gonzalez', 'Bachelors', 'Nursing', 'HealthFirst', 'Registered Nurse', 'Healthcare', 72000.0, 'Southwest', 'Employed', 5, 'RN', 'BLS, ACLS', 'None', 'https://linkedin.com/in/mariagonzalez', 0, 5, 'None', 'Patient Care,EMR', 'm.gonzalez@example.com', '555-5678', '2023-11-15', 'Pursuing leadership role');

INSERT INTO alumni_career_outcomes VALUES
('A003', 'C003', 2020, 'Liam', 'O\'Connor', 'Associates', 'Culinary Arts', 'Gourmet Bistro', 'Sous Chef', 'Hospitality', 58000.0, 'Northeast', 'Employed', 3, 'None', 'ServSafe', 'Best New Chef 2023', 'https://linkedin.com/in/liamoconnor', 1, 12, 'Certificate in Pastry Arts', 'Cooking,Menu Design', 'l.oconnor@example.com', '555-9012', '2023-10-20', 'Recently won culinary competition');

-- Student exchange program details
CREATE TABLE student_exchange_program_details
(
    ExchangeID               TEXT    NOT NULL PRIMARY KEY,
    SchoolCDS                TEXT    NOT NULL,
    PartnerInstitution       TEXT,
    PartnerCountry           TEXT,
    ProgramName              TEXT,
    StartDate                DATE,
    EndDate                  DATE,
    NumberOfStudentsSent     INTEGER,
    NumberOfStudentsReceived INTEGER,
    FundingSource            TEXT,
    HostFamilyCount          INTEGER,
    LanguageFocus            TEXT,
    CulturalActivitiesCount  INTEGER,
    ApplicationDeadline      DATE,
    SelectionCriteria        TEXT,
    CoordinatorFName         TEXT,
    CoordinatorLName         TEXT,
    CoordinatorEmail         TEXT,
    EvaluationMethod         TEXT,
    PostProgramSurveyLink    TEXT,
    AlumniNetworkURL         TEXT,
    BudgetUSD                REAL,
    ScholarshipAvailable     INTEGER,
    OrientationSessions     INTEGER,
    TravelInsuranceProvided  INTEGER,
    Comments                 TEXT
);

INSERT INTO student_exchange_program_details VALUES
('EX001', 'C001', 'Université de Lyon', 'France', 'French Language Immersion', '2024-01-15', '2024-06-30', 15, 12, 'District Grant', 10, 'French', 8, '2023-11-01', 'GPA>3.0, Interview', 'Emma', 'Brown', 'emma.brown@school.org', 'Survey', 'http://survey.example.com/EX001', 'http://alumni.example.com/EX001', 120000.0, 1, 2, 1, 'Successful first year');

INSERT INTO student_exchange_program_details VALUES
('EX002', 'C002', 'Tokyo International School', 'Japan', 'STEM Exchange', '2024-09-01', '2025-02-28', 10, 9, 'Corporate Sponsorship', 8, 'Japanese', 5, '2024-06-01', 'Essay+Recommendation', 'David', 'Lee', 'david.lee@school.org', 'Rubric', 'http://survey.example.com/EX002', 'http://alumni.example.com/EX002', 150000.0, 0, 3, 1, 'Focus on robotics');

INSERT INTO student_exchange_program_details VALUES
('EX003', 'C003', 'University of Cape Town', 'South Africa', 'Environmental Studies Exchange', '2025-03-10', '2025-08-20', 12, 13, 'Foundation Grant', 7, 'English', 6, '2024-12-01', 'Interview+Portfolio', 'Sophia', 'Kim', 'sophia.kim@school.org', 'Portfolio Review', 'http://survey.example.com/EX003', 'http://alumni.example.com/EX003', 110000.0, 1, 1, 1, 'Includes field research');

-- Library rare book collection
CREATE TABLE library_rare_book_collection
(
    BookID                TEXT    NOT NULL PRIMARY KEY,
    LibraryID             TEXT    NOT NULL,
    Title                 TEXT    NOT NULL,
    Author                TEXT,
    PublicationYear       INTEGER,
    Edition               TEXT,
    ISBN                  TEXT,
    Language              TEXT,
    PhysicalCondition     TEXT,
    AcquisitionMethod     TEXT,
    AcquisitionDate       DATE,
    DonorName             TEXT,
    EstimatedValueUSD     REAL,
    BindingType           TEXT,
    PageCount             INTEGER,
    DimensionsCM          TEXT,
    PreservationStatus    TEXT,
    ShelfLocation         TEXT,
    DigitizationStatus    TEXT,
    DigitizationDate      DATE,
    AccessRestrictions   TEXT,
    CatalogReference      TEXT,
    SubjectArea           TEXT,
    Keywords              TEXT,
    CurrentLoanStatus    TEXT,
    LastLoanDate          DATE,
    Notes                 TEXT
);

INSERT INTO library_rare_book_collection VALUES
('RB001', 'L001', 'Principia Mathematica', 'Isaac Newton', 1687, 'First', '978-0-123456-47-2', 'Latin', 'Good', 'Purchase', '1995-04-12', 'John Doe', 2500000.0, 'Leather', 1060, '30x20x5', 'Stable', 'R1-02', 'Not Digitized', NULL, 'Reference Only', 'RB-001', 'Physics', 'Mechanics,Gravity', 'In Library', NULL, 'Historic science work');

INSERT INTO library_rare_book_collection VALUES
('RB002', 'L001', 'The Canterbury Tales', 'Geoffrey Chaucer', 1400, 'Second', '978-0-987654-21-0', 'Middle English', 'Fair', 'Donation', '2001-09-03', 'Emily Smith', 750000.0, 'Wooden', 720, '25x18x4', 'Stable', 'R1-03', 'Digitized', '2022-05-20', 'Open Access', 'RB-002', 'Literature', 'Poetry,Medieval', 'Available', '2023-11-10', 'Special exhibit item');

INSERT INTO library_rare_book_collection VALUES
('RB003', 'L002', 'Mona Lisa Sketches', 'Leonardo da Vinci', 1503, 'Original', NULL, 'Italian', 'Excellent', 'Acquisition', '2010-02-17', 'Museum of Art', 12000000.0, 'Paper', 3, '30x21x0.1', 'Protected', 'R2-01', 'Not Digitized', NULL, 'Restricted', 'RB-003', 'Art', 'Renaissance,Drawing', 'In Storage', NULL, 'Held in climate-controlled vault');

-- Transportation fuel efficiency records
CREATE TABLE transportation_fuel_efficiency_records
(
    VehicleID               TEXT    NOT NULL,
    FleetID                 TEXT    NOT NULL,
    VehicleType             TEXT,
    MakeModel               TEXT,
    YearManufactured        INTEGER,
    FuelType                TEXT,
    EngineSizeL             REAL,
    MilesDrivenYearly       REAL,
    FuelConsumedGallonsYear REAL,
    AvgMPG                  REAL,
    CO2EmissionsKg          REAL,
    MaintenanceCostUSD      REAL,
    InspectionDate          DATE,
    RegistrationExpiration  DATE,
    AssignedRouteID         TEXT,
    DriverID                TEXT,
    TelemetryEnabled       INTEGER,
    LastTelematicsSync      DATE,
    GPSDeviceID             TEXT,
    LeaseStartDate          DATE,
    LeaseEndDate            DATE,
    WarrantyExpiration      DATE,
    ServiceProvider         TEXT,
    FuelCardNumber          TEXT,
    Comments                TEXT
);

INSERT INTO transportation_fuel_efficiency_records VALUES
('V001', 'F001', 'School Bus', 'Blue Bird All American', 2018, 'Diesel', 6.7, 50000.0, 3000.0, 16.7, 24000.0, 1200.0, '2023-06-15', '2024-06-15', 'R001', 'D001', 1, '2023-10-01', 'GPS12345', '2019-01-01', '2024-12-31', '2025-01-01', 'TransitCo', 'FC1001', 'Regular maintenance schedule');

INSERT INTO transportation_fuel_efficiency_records VALUES
('V002', 'F001', 'School Van', 'Ford Transit', 2020, 'Gasoline', 3.5, 25000.0, 1500.0, 16.7, 21000.0, 800.0, '2023-07-20', '2025-07-20', 'R002', 'D002', 1, '2023-09-15', 'GPS67890', '2020-03-01', '2027-02-28', '2028-03-01', 'AutoService Inc', 'FC1002', 'Used for field trips');

INSERT INTO transportation_fuel_efficiency_records VALUES
('V003', 'F002', 'Electric Shuttle', 'Tesla Model X', 2022, 'Electric', NULL, 30000.0, NULL, NULL, 0.0, 500.0, '2023-05-10', '2026-05-10', 'R003', 'D003', 1, '2023-08-20', 'GPS54321', '2022-08-01', '2027-07-31', '2028-08-01', 'ChargeCo', 'FC1003', 'Charging stations installed on campus');

-- School artistic exhibition catalog
CREATE TABLE school_artistic_exhibition_catalog
(
    ExhibitionID            TEXT    NOT NULL PRIMARY KEY,
    SchoolCDS               TEXT    NOT NULL,
    ExhibitionTitle         TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    CuratorFirstName        TEXT,
    CuratorLastName         TEXT,
    CuratorEmail            TEXT,
    VenueName               TEXT,
    VenueAddress            TEXT,
    City                    TEXT,
    State                   TEXT,
    ZipCode                 TEXT,
    TotalArtists            INTEGER,
    TotalWorks              INTEGER,
    ArtworkTypes            TEXT,
    MediaUsed               TEXT,
    EstimatedVisitors       INTEGER,
    TicketPriceUSD          REAL,
    SponsorshipAmountUSD    REAL,
    SponsorName             TEXT,
    AccessibilityRating     REAL,
    LightingDesign          TEXT,
    SecurityLevel           TEXT,
    InsurancePolicyNumber   TEXT,
    CatalogPDFURL           TEXT,
    PressReleaseURL         TEXT,
    SocialMediaHashtag      TEXT,
    EvaluationScore         REAL,
    Comments                TEXT
);

INSERT INTO school_artistic_exhibition_catalog VALUES
('E001', 'C001', 'Visions of Tomorrow', '2023-10-01', '2023-12-15', 'Olivia', 'Hart', 'olivia.hart@school.org', 'Main Hall', '123 Main St', 'Springfield', 'IL', '62704', 45, 120, 'Painting,Digital', 'Acrylic,LED', 3000, 5.0, 20000.0, 'City Arts Council', 4.7, 'Spotlight', 'High', 'INS12345', 'http://school.org/exhibitions/E001/catalog.pdf', 'http://school.org/exhibitions/E001/press.pdf', '#Visions2023', 88.5, 'Featured local artists');

INSERT INTO school_artistic_exhibition_catalog VALUES
('E002', 'C002', 'Cultural Mosaic', '2024-03-05', '2024-05-20', 'Liam', 'Nguyen', 'liam.nguyen@school.org', 'Auditorium', '456 Oak Ave', 'Riverton', 'TX', '75001', 60, 180, 'Sculpture,Textile', 'Wood,Fabric', 4000, 7.0, 30000.0, 'Heritage Foundation', 4.9, 'Ambient', 'Medium', 'INS67890', 'http://school.org/exhibitions/E002/catalog.pdf', 'http://school.org/exhibitions/E002/press.pdf', '#Mosaic2024', 91.2, 'Collaboration with community centers');

INSERT INTO school_artistic_exhibition_catalog VALUES
('E003', 'C003', 'Light & Shadow', '2025-01-10', '2025-04-01', 'Ava', 'Patel', 'ava.patel@school.org', 'Gallery Wing', '789 Pine Rd', 'Lakeside', 'CA', '90210', 30, 85, 'Photography,Installation', 'Digital,Projection', 2500, 6.5, 15000.0, 'Tech Arts Fund', 4.5, 'Dynamic', 'High', 'INS54321', 'http://school.org/exhibitions/E003/catalog.pdf', 'http://school.org/exhibitions/E003/press.pdf', '#LightShadow2025', 85.0, 'Interactive light installations');

-- District technology asset registry
CREATE TABLE district_technology_asset_registry
(
    AssetID                TEXT    NOT NULL PRIMARY KEY,
    DistrictID             TEXT    NOT NULL,
    AssetType              TEXT,
    Manufacturer           TEXT,
    ModelNumber            TEXT,
    SerialNumber           TEXT,
    PurchaseDate           DATE,
    WarrantyExpirationDate DATE,
    CostUSD                REAL,
    LocationBuilding       TEXT,
    LocationRoom           TEXT,
    AssignedDepartment     TEXT,
    AssetStatus            TEXT,
    AssetCondition         TEXT,
    LastServiceDate        DATE,
    ServiceProvider        TEXT,
    DisposalDate           DATE,
    DisposalMethod         TEXT,
    CurrentUserID          TEXT,
    NetworkMACAddress      TEXT,
    IPAddress              TEXT,
    SoftwareLicenseKey     TEXT,
    LicenseExpirationDate  DATE,
    AssetTag               TEXT,
    InsurancePolicyNumber  TEXT,
    DepreciationYears      INTEGER,
    CurrentValueUSD        REAL,
    LastInventoryCheckDate DATE,
    Comments               TEXT
);

INSERT INTO district_technology_asset_registry VALUES
('A001', 'D001', 'Server', 'Dell', 'PowerEdge R740', 'SN123456', '2020-03-15', '2025-03-15', 15000.0, 'Data Center', 'Rack 12', 'IT', 'In Service', 'Good', '2023-10-01', 'TechServ Co', NULL, NULL, 'U001', '00-14-22-01-23-45', '192.168.1.10', 'LIC-DC-2020-001', '2023-12-31', 'TAG-001', 'INS-001', 5, 9000.0, '2023-12-01', 'Primary database server');

INSERT INTO district_technology_asset_registry VALUES
('A002', 'D001', 'Laptop', 'Apple', 'MacBook Pro 16"', 'SN789012', '2021-08-22', '2024-08-22', 3200.0, 'Admin Office', 'Room 203', 'Administration', 'In Service', 'Excellent', '2023-09-15', 'InHouse', NULL, NULL, 'U002', '00-25-96-11-22-33', '192.168.2.45', 'LIC-MB-2021-045', '2025-08-31', 'TAG-002', 'INS-002', 3, 2500.0, '2023-11-20', 'Assigned to principal');

INSERT INTO district_technology_asset_registry VALUES
('A003', 'D002', 'Projector', 'Epson', 'EB-X05', 'SN345678', '2019-05-10', '2022-05-10', 850.0, 'Science Building', 'Room 101', 'Science Dept.', 'Retired', 'Fair', '2022-04-30', 'RepairCo', '2022-06-01', 'Recycle', NULL, '00-16-3E-44-55-66', '192.168.3.20', 'LIC-PJ-2019-007', '2022-05-09', 'TAG-003', 'INS-003', 4, 300.0, '2022-07-15', 'Replaced with newer model');

-- Public art installation maintenance
CREATE TABLE public_art_installation_maintenance
(
    InstallationID          TEXT    NOT NULL PRIMARY KEY,
    City                    TEXT    NOT NULL,
    Neighborhood            TEXT,
    ArtworkTitle            TEXT,
    ArtistName              TEXT,
    InstallationDate        DATE,
    Material                TEXT,
    HeightCM                REAL,
    WidthCM                 REAL,
    DepthCM                 REAL,
    Ownership               TEXT,
    FundingSource           TEXT,
    LastInspectionDate      DATE,
    InspectionOutcome       TEXT,
    MaintenanceFrequencyMonths INTEGER,
    NextScheduledMaintenance DATE,
    ContractorCompany       TEXT,
    ContractStartDate       DATE,
    ContractEndDate         DATE,
    CostUSD                 REAL,
    RepairLog               TEXT,
    CoordinatesLatitude     REAL,
    CoordinatesLongitude    REAL,
    PublicFeedbackScore    REAL,
    AccessibilityInfo      TEXT,
    LightingType            TEXT,
    SecurityFeatures        TEXT,
    InsurancePolicyNumber   TEXT,
    DocumentationURL        TEXT,
    Comments                TEXT
);

INSERT INTO public_art_installation_maintenance VALUES
('PA001', 'Springfield', 'Downtown', 'Harmony', 'Jane Doe', '2015-06-20', 'Bronze', 250.0, 150.0, 120.0, 'City', 'Public Grant', '2023-04-10', 'Good', 12, '2024-04-10', 'ArtMaintain LLC', '2020-01-01', '2025-12-31', 50000.0, 'Repaired patina 2022', 39.7817, -89.6501, 4.5, 'Wheelchair Access', 'LED', 'CCTV', 'INS-PA001', 'http://city.gov/art/pa001/docs', 'Featured in annual art walk');

INSERT INTO public_art_installation_maintenance VALUES
('PA002', 'Riverton', 'Riverfront', 'Flow', 'Carlos Rivera', '2018-09-15', 'Stainless Steel', 300.0, 200.0, 10.0, 'Private Donor', 'Donation', '2023-07-05', 'Minor Scratches', 6, '2024-01-05', 'SteelCare Co', '2021-05-01', '2026-04-30', 30000.0, 'Polished surface 2023', 40.1234, -88.9876, 4.2, 'Patio Seating Nearby', 'Solar', 'Motion Sensors', 'INS-PA002', 'http://riverton.gov/art/pa002/info', 'Popular photo backdrop');

INSERT INTO public_art_installation_maintenance VALUES
('PA003', 'Lakeside', 'Parkside', 'Echoes', 'Liu Wei', '2020-03-10', 'Stone', 180.0, 120.0, 150.0, 'Municipality', 'Cultural Fund', '2023-09-12', 'Excellent', 12, '2024-09-12', 'StoneWorks Ltd', '2019-09-01', '2024-08-31', 40000.0, 'No issues reported', 41.5678, -87.5432, 4.8, 'Nearby benches', 'None', 'None', 'INS-PA003', 'http://lakeside.gov/art/pa003/details', 'Integrated into walking trail');

-- End of synthetic schema definitions