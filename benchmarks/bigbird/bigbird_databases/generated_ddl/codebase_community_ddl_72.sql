-- Academic journal issues
CREATE TABLE academic_journal_issues
(
    Id INTEGER PRIMARY KEY,
    JournalName TEXT,
    Volume INTEGER,
    IssueNumber INTEGER,
    PublicationDate DATETIME,
    ISSN TEXT,
    EditorInChief TEXT,
    PagesCount INTEGER,
    CoverImageUrl TEXT,
    DOIPrefix TEXT,
    Category TEXT,
    Language TEXT,
    Country TEXT,
    ImpactFactor REAL,
    SubmissionDeadline DATETIME,
    OpenAccessFlag INTEGER,
    SpecialIssueTitle TEXT,
    Keywords TEXT,
    Abstract TEXT,
    CreatedAt DATETIME
);
INSERT INTO academic_journal_issues (Id, JournalName, Volume, IssueNumber, PublicationDate, ISSN, EditorInChief, PagesCount, CoverImageUrl, DOIPrefix, Category, Language, Country, ImpactFactor, SubmissionDeadline, OpenAccessFlag, SpecialIssueTitle, Keywords, Abstract, CreatedAt) VALUES (1, 'International Journal of Data Science', 12, 3, '2023-03-15 00:00:00', '1234-5678', 'Alice Smith', 120, 'http://example.com/cover1.jpg', '10.1000', 'Computer Science', 'English', 'USA', 4.2, '2023-02-01 00:00:00', 1, 'Deep Learning Advances', 'deep learning, AI, neural networks', 'An overview of recent deep learning techniques.', '2023-01-01 08:00:00');
INSERT INTO academic_journal_issues (Id, JournalName, Volume, IssueNumber, PublicationDate, ISSN, EditorInChief, PagesCount, CoverImageUrl, DOIPrefix, Category, Language, Country, ImpactFactor, SubmissionDeadline, OpenAccessFlag, SpecialIssueTitle, Keywords, Abstract, CreatedAt) VALUES (2, 'Journal of Environmental Studies', 8, 1, '2023-04-10 00:00:00', '8765-4321', 'Bob Johnson', 98, 'http://example.com/cover2.jpg', '10.2000', 'Environmental Science', 'English', 'UK', 3.7, '2023-03-01 00:00:00', 0, 'Climate Change Modeling', 'climate, modeling, ecosystems', 'Models for predicting climate impacts.', '2023-01-15 09:30:00');
INSERT INTO academic_journal_issues (Id, JournalName, Volume, IssueNumber, PublicationDate, ISSN, EditorInChief, PagesCount, CoverImageUrl, DOIPrefix, Category, Language, Country, ImpactFactor, SubmissionDeadline, OpenAccessFlag, SpecialIssueTitle, Keywords, Abstract, CreatedAt) VALUES (3, 'Medical Research Quarterly', 20, 2, '2023-05-20 00:00:00', '1122-3344', 'Carol Lee', 150, 'http://example.com/cover3.jpg', '10.3000', 'Medicine', 'English', 'Canada', 5.1, '2023-04-05 00:00:00', 1, 'Genomics Breakthroughs', 'genomics, DNA, health', 'Latest discoveries in human genomics.', '2023-02-01 10:45:00');

-- Scholarship recipients
CREATE TABLE scholarship_recipients
(
    Id INTEGER PRIMARY KEY,
    ScholarshipName TEXT,
    RecipientFirstName TEXT,
    RecipientLastName TEXT,
    RecipientEmail TEXT,
    Institution TEXT,
    DegreeProgram TEXT,
    YearOfStudy INTEGER,
    AwardAmount INTEGER,
    AwardDate DATETIME,
    ExpirationDate DATETIME,
    Status TEXT,
    Category TEXT,
    GPA REAL,
    AdvisorName TEXT,
    PhoneNumber TEXT,
    Address TEXT,
    City TEXT,
    State TEXT,
    PostalCode TEXT
);
INSERT INTO scholarship_recipients (Id, ScholarshipName, RecipientFirstName, RecipientLastName, RecipientEmail, Institution, DegreeProgram, YearOfStudy, AwardAmount, AwardDate, ExpirationDate, Status, Category, GPA, AdvisorName, PhoneNumber, Address, City, State, PostalCode) VALUES (1, 'Tech Innovators Fellowship', 'David', 'Miller', 'david.miller@example.com', 'State University', 'Computer Science', 3, 5000, '2023-01-10 00:00:00', '2024-01-10 00:00:00', 'Active', 'STEM', 3.8, 'Dr Emily Clark', '555-1234', '123 Main St', 'Springfield', 'IL', '62704');
INSERT INTO scholarship_recipients (Id, ScholarshipName, RecipientFirstName, RecipientLastName, RecipientEmail, Institution, DegreeProgram, YearOfStudy, AwardAmount, AwardDate, ExpirationDate, Status, Category, GPA, AdvisorName, PhoneNumber, Address, City, State, PostalCode) VALUES (2, 'Global Leaders Grant', 'Sofia', 'Gonzalez', 'sofia.gonzalez@example.com', 'International College', 'International Relations', 2, 3000, '2023-02-15 00:00:00', '2024-02-15 00:00:00', 'Active', 'Social Sciences', 3.6, 'Prof Michael Brown', '555-5678', '456 Oak Ave', 'Riverside', 'CA', '92501');
INSERT INTO scholarship_recipients (Id, ScholarshipName, RecipientFirstName, RecipientLastName, RecipientEmail, Institution, DegreeProgram, YearOfStudy, AwardAmount, AwardDate, ExpirationDate, Status, Category, GPA, AdvisorName, PhoneNumber, Address, City, State, PostalCode) VALUES (3, 'Arts Excellence Award', 'Liam', 'Chen', 'liam.chen@example.com', 'City Art Institute', 'Fine Arts', 4, 4000, '2023-03-20 00:00:00', '2024-03-20 00:00:00', 'Pending', 'Arts', 3.9, 'Ms Nina Patel', '555-9012', '789 Pine Rd', 'Metropolis', 'NY', '10001');

-- Lab equipment maintenance
CREATE TABLE lab_equipment_maintenance
(
    Id INTEGER PRIMARY KEY,
    EquipmentId INTEGER,
    EquipmentName TEXT,
    SerialNumber TEXT,
    MaintenanceDate DATETIME,
    TechnicianId INTEGER,
    TechnicianName TEXT,
    MaintenanceType TEXT,
    DurationHours INTEGER,
    Cost INTEGER,
    Notes TEXT,
    NextDueDate DATETIME,
    VendorName TEXT,
    VendorContact TEXT,
    WarrantyExpiration DATETIME,
    CalibrationStatus TEXT,
    Location TEXT,
    Department TEXT,
    CreatedBy INTEGER,
    CreatedAt DATETIME
);
INSERT INTO lab_equipment_maintenance (Id, EquipmentId, EquipmentName, SerialNumber, MaintenanceDate, TechnicianId, TechnicianName, MaintenanceType, DurationHours, Cost, Notes, NextDueDate, VendorName, VendorContact, WarrantyExpiration, CalibrationStatus, Location, Department, CreatedBy, CreatedAt) VALUES (1, 101, 'Spectrometer', 'SN12345', '2023-01-12 09:00:00', 11, 'John Doe', 'Preventive', 2, 150, 'Checked alignment', '2023-07-12 00:00:00', 'LabTech Co', 'labtech@example.com', '2025-01-01 00:00:00', 'Calibrated', 'Lab A', 'Chemistry', 5, '2023-01-12 10:00:00');
INSERT INTO lab_equipment_maintenance (Id, EquipmentId, EquipmentName, SerialNumber, MaintenanceDate, TechnicianId, TechnicianName, MaintenanceType, DurationHours, Cost, Notes, NextDueDate, VendorName, VendorContact, WarrantyExpiration, CalibrationStatus, Location, Department, CreatedBy, CreatedAt) VALUES (2, 102, 'Centrifuge', 'SN54321', '2023-02-20 14:30:00', 12, 'Maria Lopez', 'Repair', 3, 300, 'Replaced rotor', '2023-08-20 00:00:00', 'BioEquip Ltd', 'support@bioequip.com', '2024-06-15 00:00:00', 'Recalibrated', 'Lab B', 'Biology', 6, '2023-02-20 15:00:00');
INSERT INTO lab_equipment_maintenance (Id, EquipmentId, EquipmentName, SerialNumber, MaintenanceDate, TechnicianId, TechnicianName, MaintenanceType, DurationHours, Cost, Notes, NextDueDate, VendorName, VendorContact, WarrantyExpiration, CalibrationStatus, Location, Department, CreatedBy, CreatedAt) VALUES (3, 103, 'Microscope', 'SN98765', '2023-03-05 11:15:00', 13, 'Ahmed Khan', 'Cleaning', 1, 50, 'Lens cleaned', '2023-09-05 00:00:00', 'Optic Solutions', 'contact@optic.com', '2026-03-01 00:00:00', 'Clean', 'Lab C', 'Physics', 7, '2023-03-05 12:00:00');

-- Field study records
CREATE TABLE field_study_records
(
    Id INTEGER PRIMARY KEY,
    StudyId INTEGER,
    StudyName TEXT,
    LeadResearcher TEXT,
    StartDate DATETIME,
    EndDate DATETIME,
    Location TEXT,
    Latitude REAL,
    Longitude REAL,
    SampleCount INTEGER,
    Methodology TEXT,
    FindingsSummary TEXT,
    PublishedFlag INTEGER,
    PublicationId INTEGER,
    FundingSource TEXT,
    GrantNumber TEXT,
    DataFilePath TEXT,
    EquipmentUsed TEXT,
    Observations TEXT,
    CreatedAt DATETIME
);
INSERT INTO field_study_records (Id, StudyId, StudyName, LeadResearcher, StartDate, EndDate, Location, Latitude, Longitude, SampleCount, Methodology, FindingsSummary, PublishedFlag, PublicationId, FundingSource, GrantNumber, DataFilePath, EquipmentUsed, Observations, CreatedAt) VALUES (1, 2001, 'River Water Quality Survey', 'Dr Emily Clark', '2022-05-01 00:00:00', '2022-06-30 00:00:00', 'Riverdale', 45.1234, -122.5678, 150, 'Grab sampling', 'Improved nitrate levels observed', 1, 501, 'National Science Fund', 'NSF-2022-01', '/data/river_quality.csv', 'Portable meter', 'No unusual events', '2022-07-01 08:30:00');
INSERT INTO field_study_records (Id, StudyId, StudyName, LeadResearcher, StartDate, EndDate, Location, Latitude, Longitude, SampleCount, Methodology, FindingsSummary, PublishedFlag, PublicationId, FundingSource, GrantNumber, DataFilePath, EquipmentUsed, Observations, CreatedAt) VALUES (2, 2002, 'Coastal Erosion Mapping', 'Prof Michael Brown', '2021-09-15 00:00:00', '2021-11-20 00:00:00', 'Coastline Bay', 36.7783, -119.4179, 80, 'Drone photogrammetry', 'Erosion rate increased by 2%', 0, NULL, 'Oceanic Research Council', 'ORC-2021-07', '/data/coastal_erosion.shp', 'Drone X5', 'Storm damage recorded', '2021-11-21 09:45:00');
INSERT INTO field_study_records (Id, StudyId, StudyName, LeadResearcher, StartDate, EndDate, Location, Latitude, Longitude, SampleCount, Methodology, FindingsSummary, PublishedFlag, PublicationId, FundingSource, GrantNumber, DataFilePath, EquipmentUsed, Observations, CreatedAt) VALUES (3, 2003, 'Urban Air Quality Monitoring', 'Dr Sarah Nguyen', '2023-01-10 00:00:00', '2023-02-28 00:00:00', 'Metro City', 40.7128, -74.0060, 200, 'Passive samplers', 'PM2.5 within safe limits', 1, 702, 'Health Department Grant', 'HDG-2023-03', '/data/air_quality.xlsx', 'Sampler Model A', 'Minor sensor drift corrected', '2023-03-01 07:20:00');

-- Patent citation network
CREATE TABLE patent_citation_network
(
    Id INTEGER PRIMARY KEY,
    PatentId INTEGER,
    PatentNumber TEXT,
    Title TEXT,
    FilingDate DATETIME,
    GrantDate DATETIME,
    Assignee TEXT,
    Inventor TEXT,
    CitationCount INTEGER,
    CitedByCount INTEGER,
    TechnologyArea TEXT,
    Country TEXT,
    Status TEXT,
    LegalEvent TEXT,
    MaintenanceFeeDue DATE,
    PrimaryClass TEXT,
    SecondaryClass TEXT,
    Abstract TEXT,
    ClaimsCount INTEGER,
    CreatedAt DATETIME
);
INSERT INTO patent_citation_network (Id, PatentId, PatentNumber, Title, FilingDate, GrantDate, Assignee, Inventor, CitationCount, CitedByCount, TechnologyArea, Country, Status, LegalEvent, MaintenanceFeeDue, PrimaryClass, SecondaryClass, Abstract, ClaimsCount, CreatedAt) VALUES (1, 9001, 'US1234567A', 'Efficient Solar Cell', '2020-02-10 00:00:00', '2021-08-15 00:00:00', 'SunTech Corp', 'Laura Kim', 12, 5, 'Renewable Energy', 'USA', 'Granted', 'None', '2023-08-15', 'H02S', 'H02S3/00', 'A solar cell with increased efficiency', 20, '2021-08-16 10:00:00');
INSERT INTO patent_citation_network (Id, PatentId, PatentNumber, Title, FilingDate, GrantDate, Assignee, Inventor, CitationCount, CitedByCount, TechnologyArea, Country, Status, LegalEvent, MaintenanceFeeDue, PrimaryClass, SecondaryClass, Abstract, ClaimsCount, CreatedAt) VALUES (2, 9002, 'EP2345678B1', 'Lithium Battery Management', '2019-06-05 00:00:00', '2020-12-20 00:00:00', 'Battery Innovations', 'Mark Davis', 8, 3, 'Energy Storage', 'Germany', 'Granted', 'Maintenance fee due', '2022-12-20', 'H01M', 'H01M10/70', 'System for managing lithium battery performance', 15, '2020-12-21 09:30:00');
INSERT INTO patent_citation_network (Id, PatentId, PatentNumber, Title, FilingDate, GrantDate, Assignee, Inventor, CitationCount, CitedByCount, TechnologyArea, Country, Status, LegalEvent, MaintenanceFeeDue, PrimaryClass, SecondaryClass, Abstract, ClaimsCount, CreatedAt) VALUES (3, 9003, 'JP3456789C', 'Advanced AI Processor', '2021-01-22 00:00:00', '2022-07-10 00:00:00', 'AI Chipworks', 'Kenji Tanaka', 20, 10, 'Computing', 'Japan', 'Granted', 'License agreement', '2024-07-10', 'G06F', 'G06F9/44', 'Processor architecture for AI workloads', 25, '2022-07-11 11:45:00');

-- Conference workshops
CREATE TABLE conference_workshops
(
    Id INTEGER PRIMARY KEY,
    ConferenceId INTEGER,
    WorkshopTitle TEXT,
    Presenter TEXT,
    StartTime DATETIME,
    EndTime DATETIME,
    Room TEXT,
    Capacity INTEGER,
    RegistrationRequired INTEGER,
    Fee INTEGER,
    abstract TEXT,
    MaterialsUrl TEXT,
    Language TEXT,
    AudienceLevel TEXT,
    Track TEXT,
    Tags TEXT,
    MaxAttendees INTEGER,
    WaitlistCount INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);
INSERT INTO conference_workshops (Id, ConferenceId, WorkshopTitle, Presenter, StartTime, EndTime, Room, Capacity, RegistrationRequired, Fee, abstract, MaterialsUrl, Language, AudienceLevel, Track, Tags, MaxAttendees, WaitlistCount, CreatedAt, UpdatedAt) VALUES (1, 301, 'Data Visualization Best Practices', 'Dr Alice Brown', '2023-09-12 09:00:00', '2023-09-12 11:00:00', 'Room A', 100, 1, 200, 'Hands on session for modern visualization tools', 'http://conf.com/materials/dv.pdf', 'English', 'Intermediate', 'Data Science', 'visualization,charts', 100, 5, '2023-06-01 08:00:00', '2023-07-15 10:20:00');
INSERT INTO conference_workshops (Id, ConferenceId, WorkshopTitle, Presenter, StartTime, EndTime, Room, Capacity, RegistrationRequired, Fee, abstract, MaterialsUrl, Language, AudienceLevel, Track, Tags, MaxAttendees, WaitlistCount, CreatedAt, UpdatedAt) VALUES (2, 301, 'Machine Learning Ops', 'Prof Michael Green', '2023-09-13 14:00:00', '2023-09-13 16:30:00', 'Room B', 80, 1, 250, 'Deploying ML models at scale', 'http://conf.com/materials/mlops.zip', 'English', 'Advanced', 'AI', 'mlops,deployment', 80, 2, '2023-06-05 09:30:00', '2023-07-18 11:45:00');
INSERT INTO conference_workshops (Id, ConferenceId, WorkshopTitle, Presenter, StartTime, EndTime, Room, Capacity, RegistrationRequired, Fee, abstract, MaterialsUrl, Language, AudienceLevel, Track, Tags, MaxAttendees, WaitlistCount, CreatedAt, UpdatedAt) VALUES (3, 302, 'Effective Remote Collaboration', 'Sara Lee', '2023-10-02 10:00:00', '2023-10-02 12:00:00', 'Room C', 120, 0, 0, 'Tools and techniques for virtual teamwork', 'http://conf.com/materials/remote.pdf', 'English', 'All', 'Management', 'remote,collaboration', 120, 0, '2023-07-01 07:45:00', '2023-08-20 09:10:00');

-- Software release cycles
CREATE TABLE software_release_cycles
(
    Id INTEGER PRIMARY KEY,
    ProductName TEXT,
    Version TEXT,
    ReleaseDate DATETIME,
    EndOfSupportDate DATETIME,
    ReleaseType TEXT,
    ReleaseNotesUrl TEXT,
    BuildNumber INTEGER,
    Platform TEXT,
    Architecture TEXT,
    CriticalBugFixes INTEGER,
    NewFeatures INTEGER,
    DeprecatedFeatures INTEGER,
    ReleaseManager TEXT,
    QAStatus TEXT,
    DeploymentRegion TEXT,
    LicenseType TEXT,
    SizeMB INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);
INSERT INTO software_release_cycles (Id, ProductName, Version, ReleaseDate, EndOfSupportDate, ReleaseType, ReleaseNotesUrl, BuildNumber, Platform, Architecture, CriticalBugFixes, NewFeatures, DeprecatedFeatures, ReleaseManager, QAStatus, DeploymentRegion, LicenseType, SizeMB, CreatedAt, UpdatedAt) VALUES (1, 'DataAnalyzer Pro', '3.2.1', '2023-04-10 00:00:00', '2025-04-10 00:00:00', 'Minor', 'http://downloads.com/da_3.2.1_notes.html', 3210, 'Windows', 'x64', 5, 2, 0, 'Laura Smith', 'Passed', 'US-East', 'Commercial', 250, '2023-04-11 08:00:00', '2023-04-12 09:15:00');
INSERT INTO software_release_cycles (Id, ProductName, Version, ReleaseDate, EndOfSupportDate, ReleaseType, ReleaseNotesUrl, BuildNumber, Platform, Architecture, CriticalBugFixes, NewFeatures, DeprecatedFeatures, ReleaseManager, QAStatus, DeploymentRegion, LicenseType, SizeMB, CreatedAt, UpdatedAt) VALUES (2, 'SecureChat', '1.0.0', '2023-01-20 00:00:00', '2024-01-20 00:00:00', 'Major', 'http://downloads.com/sc_1.0.0_notes.html', 1000, 'Linux', 'arm64', 10, 5, 1, 'Ahmed Khan', 'Passed', 'EU-West', 'OpenSource', 80, '2023-01-21 07:30:00', '2023-01-22 10:45:00');
INSERT INTO software_release_cycles (Id, ProductName, Version, ReleaseDate, EndOfSupportDate, ReleaseType, ReleaseNotesUrl, BuildNumber, Platform, Architecture, CriticalBugFixes, NewFeatures, DeprecatedFeatures, ReleaseManager, QAStatus, DeploymentRegion, LicenseType, SizeMB, CreatedAt, UpdatedAt) VALUES (3, 'HealthTracker', '2.5.0', '2023-07-05 00:00:00', '2026-07-05 00:00:00', 'Minor', 'http://downloads.com/ht_2.5.0_notes.html', 2500, 'iOS', 'arm64', 3, 1, 0, 'Emily Clark', 'Passed', 'APAC', 'Commercial', 120, '2023-07-06 09:20:00', '2023-07-07 11:00:00');

-- Vendor audit logs
CREATE TABLE vendor_audit_logs
(
    Id INTEGER PRIMARY KEY,
    VendorId INTEGER,
    AuditDate DATETIME,
    AuditorName TEXT,
    AuditType TEXT,
    FindingsSummary TEXT,
    RiskLevel TEXT,
    ActionRequired TEXT,
    DueDate DATETIME,
    FollowUpDate DATETIME,
    Status TEXT,
    Comments TEXT,
    ContractId INTEGER,
    ContractVersion INTEGER,
    PaymentStatus TEXT,
    ComplianceScore REAL,
    DocumentLink TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    IsActive INTEGER
);
INSERT INTO vendor_audit_logs (Id, VendorId, AuditDate, AuditorName, AuditType, FindingsSummary, RiskLevel, ActionRequired, DueDate, FollowUpDate, Status, Comments, ContractId, ContractVersion, PaymentStatus, ComplianceScore, DocumentLink, CreatedAt, UpdatedAt, IsActive) VALUES (1, 4001, '2023-03-15 10:00:00', 'John Miller', 'Financial', 'Late invoice payments observed', 'High', 'Submit payment plan', '2023-04-15 00:00:00', '2023-05-01 00:00:00', 'Open', 'Vendor responded positively', 7001, 3, 'Pending', 72.5, 'http://audit.com/doc1.pdf', '2023-03-15 11:00:00', '2023-04-01 09:30:00', 1);
INSERT INTO vendor_audit_logs (Id, VendorId, AuditDate, AuditorName, AuditType, FindingsSummary, RiskLevel, ActionRequired, DueDate, FollowUpDate, Status, Comments, ContractId, ContractVersion, PaymentStatus, ComplianceScore, DocumentLink, CreatedAt, UpdatedAt, IsActive) VALUES (2, 4002, '2023-06-20 14:30:00', 'Maria Lopez', 'Operational', 'Safety procedures outdated', 'Medium', 'Update SOPs', '2023-07-20 00:00:00', '2023-08-05 00:00:00', 'InProgress', 'Awaiting new procedures', 7002, 2, 'Paid', 85.0, 'http://audit.com/doc2.pdf', '2023-06-20 15:00:00', '2023-07-01 10:45:00', 1);
INSERT INTO vendor_audit_logs (Id, VendorId, AuditDate, AuditorName, AuditType, FindingsSummary, RiskLevel, ActionRequired, DueDate, FollowUpDate, Status, Comments, ContractId, ContractVersion, PaymentStatus, ComplianceScore, DocumentLink, CreatedAt, UpdatedAt, IsActive) VALUES (3, 4003, '2023-09-05 09:15:00', 'Ahmed Khan', 'Compliance', 'Missing documentation for GDPR', 'High', 'Provide required documents', '2023-10-05 00:00:00', '2023-10-20 00:00:00', 'Open', 'Requested additional info', 7003, 1, 'Pending', 68.0, 'http://audit.com/doc3.pdf', '2023-09-05 09:45:00', '2023-09-20 11:30:00', 1);

-- Customer success metrics
CREATE TABLE customer_success_metrics
(
    Id INTEGER PRIMARY KEY,
    CustomerId INTEGER,
    MetricDate DATETIME,
    NetPromoterScore INTEGER,
    CustomerHealthScore INTEGER,
    UsageHours INTEGER,
    SupportTicketsOpened INTEGER,
    IssuesResolved INTEGER,
    UpsellOpportunity INTEGER,
    ChurnRiskScore INTEGER,
    AccountManager TEXT,
    ContractRenewalDate DATETIME,
    SatisfactionSurveyScore INTEGER,
    FeedbackComments TEXT,
    ProductAdoptionLevel TEXT,
    TrainingCompleted INTEGER,
    LastInteractionDate DATETIME,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    IsActive INTEGER
);
INSERT INTO customer_success_metrics (Id, CustomerId, MetricDate, NetPromoterScore, CustomerHealthScore, UsageHours, SupportTicketsOpened, IssuesResolved, UpsellOpportunity, ChurnRiskScore, AccountManager, ContractRenewalDate, SatisfactionSurveyScore, FeedbackComments, ProductAdoptionLevel, TrainingCompleted, LastInteractionDate, CreatedAt, UpdatedAt, IsActive) VALUES (1, 90001, '2023-08-01 00:00:00', 45, 78, 120, 3, 3, 15000, 30, 'Laura Smith', '2024-01-15 00:00:00', 4, 'Very satisfied with support', 'High', 1, '2023-07-28 14:20:00', '2023-08-01 08:00:00', '2023-08-05 09:15:00', 1);
INSERT INTO customer_success_metrics (Id, CustomerId, MetricDate, NetPromoterScore, CustomerHealthScore, UsageHours, SupportTicketsOpened, IssuesResolved, UpsellOpportunity, ChurnRiskScore, AccountManager, ContractRenewalDate, SatisfactionSurveyScore, FeedbackComments, ProductAdoptionLevel, TrainingCompleted, LastInteractionDate, CreatedAt, UpdatedAt, IsActive) VALUES (2, 90002, '2023-08-01 00:00:00', 30, 65, 80, 5, 4, 8000, 45, 'Mark Davis', '2023-12-01 00:00:00', 3, 'Needs more training', 'Medium', 0, '2023-07-30 10:10:00', '2023-08-01 08:30:00', '2023-08-06 11:00:00', 1);
INSERT INTO customer_success_metrics (Id, CustomerId, MetricDate, NetPromoterScore, CustomerHealthScore, UsageHours, SupportTicketsOpened, IssuesResolved, UpsellOpportunity, ChurnRiskScore, AccountManager, ContractRenewalDate, SatisfactionSurveyScore, FeedbackComments, ProductAdoptionLevel, TrainingCompleted, LastInteractionDate, CreatedAt, UpdatedAt, IsActive) VALUES (3, 90003, '2023-08-01 00:00:00', 55, 85, 150, 1, 1, 20000, 20, 'Emily Clark', '2025-03-10 00:00:00', 5, 'Excellent experience', 'High', 1, '2023-07-27 16:45:00', '2023-08-01 09:00:00', '2023-08-04 14:20:00', 1);

-- Energy grid readings
CREATE TABLE energy_grid_readings
(
    Id INTEGER PRIMARY KEY,
    GridSectionId INTEGER,
    ReadingTimestamp DATETIME,
    Voltage REAL,
    Current REAL,
    PowerFactor REAL,
    Frequency REAL,
    EnergyConsumedKWh REAL,
    PeakDemandKW REAL,
    LoadSheddingEvent INTEGER,
    WeatherCondition TEXT,
    TemperatureC REAL,
    Humidity REAL,
    OperatorId INTEGER,
    OperatorName TEXT,
    MaintenanceFlag INTEGER,
    Comments TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    IsValidated INTEGER
);
INSERT INTO energy_grid_readings (Id, GridSectionId, ReadingTimestamp, Voltage, Current, PowerFactor, Frequency, EnergyConsumedKWh, PeakDemandKW, LoadSheddingEvent, WeatherCondition, TemperatureC, Humidity, OperatorId, OperatorName, MaintenanceFlag, Comments, CreatedAt, UpdatedAt, IsValidated) VALUES (1, 1010, '2023-07-01 00:00:00', 230.5, 150.2, 0.98, 50.0, 5000.0, 350.0, 0, 'Clear', 22.5, 45.0, 12, 'John Doe', 0, 'Normal operation', '2023-07-01 01:00:00', '2023-07-01 01:15:00', 1);
INSERT INTO energy_grid_readings (Id, GridSectionId, ReadingTimestamp, Voltage, Current, PowerFactor, Frequency, EnergyConsumedKWh, PeakDemandKW, LoadSheddingEvent, WeatherCondition, TemperatureC, Humidity, OperatorId, OperatorName, MaintenanceFlag, Comments, CreatedAt, UpdatedAt, IsValidated) VALUES (2, 1020, '2023-07-01 01:00:00', 229.8, 152.0, 0.97, 49.9, 5050.0, 360.0, 1, 'Windy', 18.0, 55.0, 13, 'Maria Lopez', 1, 'Load shedding due to high demand', '2023-07-01 02:00:00', '2023-07-01 02:10:00', 1);
INSERT INTO energy_grid_readings (Id, GridSectionId, ReadingTimestamp, Voltage, Current, PowerFactor, Frequency, EnergyConsumedKWh, PeakDemandKW, LoadSheddingEvent, WeatherCondition, TemperatureC, Humidity, OperatorId, OperatorName, MaintenanceFlag, Comments, CreatedAt, UpdatedAt, IsValidated) VALUES (3, 1030, '2023-07-01 02:00:00', 231.0, 148.5, 0.99, 50.1, 4980.0, 340.0, 0, 'Rain', 16.5, 80.0, 14, 'Ahmed Khan', 0, 'Stable readings', '2023-07-01 03:00:00', '2023-07-01 03:05:00', 1);