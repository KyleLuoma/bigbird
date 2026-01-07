-- Table storing corporate governance documents and metadata
CREATE TABLE corporate_governance_documents (
    DocumentID INTEGER PRIMARY KEY,
    Title TEXT,
    Category TEXT,
    Version TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    ApprovedBy TEXT,
    Reviewer TEXT,
    Status TEXT,
    ConfidentialLevel TEXT,
    Department TEXT,
    CreatedTimestamp DATETIME,
    UpdatedTimestamp DATETIME,
    FilePath TEXT,
    Checksum TEXT,
    RevisionNumber INTEGER,
    SignatoryCount INTEGER,
    DigitalSignatureHash TEXT,
    StorageLocation TEXT,
    AccessControlList TEXT
);
INSERT INTO corporate_governance_documents (DocumentID, Title, Category, Version, EffectiveDate, ExpirationDate, ApprovedBy, Reviewer, Status, ConfidentialLevel, Department, CreatedTimestamp, UpdatedTimestamp, FilePath, Checksum, RevisionNumber, SignatoryCount, DigitalSignatureHash, StorageLocation, AccessControlList) VALUES (1, 'CodeOfConduct', 'Policy', 'v1.0', '2023-01-01', '2025-12-31', 'LegalTeam', 'ComplianceOfficer', 'Active', 'High', 'HR', '2023-01-01 09:00:00', '2023-01-01 09:00:00', '/docs/governance/CodeOfConduct.pdf', 'abc123def', 1, 3, 'hash001', 'VaultA', 'HR,Legal');
INSERT INTO corporate_governance_documents (DocumentID, Title, Category, Version, EffectiveDate, ExpirationDate, ApprovedBy, Reviewer, Status, ConfidentialLevel, Department, CreatedTimestamp, UpdatedTimestamp, FilePath, Checksum, RevisionNumber, SignatoryCount, DigitalSignatureHash, StorageLocation, AccessControlList) VALUES (2, 'DataPrivacyPolicy', 'Policy', 'v2.1', '2022-06-15', '2024-06-14', 'CISO', 'PrivacyOfficer', 'Active', 'Medium', 'IT', '2022-06-15 10:30:00', '2023-03-01 11:00:00', '/docs/governance/DataPrivacyPolicy.pdf', 'def456ghi', 2, 2, 'hash002', 'VaultB', 'IT,Legal');
INSERT INTO corporate_governance_documents (DocumentID, Title, Category, Version, EffectiveDate, ExpirationDate, ApprovedBy, Reviewer, Status, ConfidentialLevel, Department, CreatedTimestamp, UpdatedTimestamp, FilePath, Checksum, RevisionNumber, SignatoryCount, DigitalSignatureHash, StorageLocation, AccessControlList) VALUES (3, 'BoardMeetingMinutesJan', 'Minutes', 'v1.0', '2023-01-20', NULL, 'BoardSecretary', 'Chairperson', 'Archived', 'Low', 'Governance', '2023-01-20 14:00:00', '2023-01-20 14:00:00', '/docs/governance/BoardMeetingMinutesJan.pdf', 'ghi789jkl', 1, 5, 'hash003', 'Archive', 'Board');

-- Table cataloguing media content assets for advertising and training
CREATE TABLE media_content_library (
    MediaID INTEGER PRIMARY KEY,
    MediaType TEXT,
    Title TEXT,
    Description TEXT,
    DurationSeconds INTEGER,
    Resolution TEXT,
    FileSizeMB REAL,
    Format TEXT,
    Language TEXT,
    Region TEXT,
    ProductionDate DATE,
    ReleaseDate DATE,
    Producer TEXT,
    Director TEXT,
    RightsHolder TEXT,
    LicenseType TEXT,
    ExpirationDate DATE,
    ViewCount INTEGER,
    Rating REAL,
    Tags TEXT,
    StoragePath TEXT,
    AccessLevel TEXT
);
INSERT INTO media_content_library (MediaID, MediaType, Title, Description, DurationSeconds, Resolution, FileSizeMB, Format, Language, Region, ProductionDate, ReleaseDate, Producer, Director, RightsHolder, LicenseType, ExpirationDate, ViewCount, Rating, Tags, StoragePath, AccessLevel) VALUES (101, 'Video', 'EcoDrive Campaign', 'Promotional video for eco-friendly driving', 120, '1080p', 250.5, 'MP4', 'English', 'Global', '2023-02-10', '2023-03-01', 'MarketingTeam', 'JaneDoe', 'Company', 'RoyaltyFree', NULL, 0, 0.0, 'eco,drive,promo', '/media/videos/EcoDrive.mp4', 'Public');
INSERT INTO media_content_library (MediaID, MediaType, Title, Description, DurationSeconds, Resolution, FileSizeMB, Format, Language, Region, ProductionDate, ReleaseDate, Producer, Director, RightsHolder, LicenseType, ExpirationDate, ViewCount, Rating, Tags, StoragePath, AccessLevel) VALUES (102, 'Image', 'FuelPriceChartQ1', 'Quarterly fuel price line chart', 0, '1920x1080', 5.2, 'PNG', 'English', 'Global', '2023-04-01', '2023-04-02', 'AnalyticsTeam', NULL, 'Company', 'Internal', NULL, 15, 4.5, 'fuel,price,chart', '/media/images/FuelPriceChartQ1.png', 'Internal');
INSERT INTO media_content_library (MediaID, MediaType, Title, Description, DurationSeconds, Resolution, FileSizeMB, Format, Language, Region, ProductionDate, ReleaseDate, Producer, Director, RightsHolder, LicenseType, ExpirationDate, ViewCount, Rating, Tags, StoragePath, AccessLevel) VALUES (103, 'Audio', 'SafetyBriefing', 'Audio safety briefing for staff', 300, NULL, 30.0, 'MP3', 'English', 'US', '2023-01-15', '2023-01-16', 'HRTeam', NULL, 'Company', 'Internal', NULL, 5, 5.0, 'safety,briefing', '/media/audio/SafetyBriefing.mp3', 'Internal');

-- Table tracking public relations events and press releases
CREATE TABLE public_relations_events (
    EventID INTEGER PRIMARY KEY,
    EventName TEXT,
    EventType TEXT,
    Location TEXT,
    City TEXT,
    Country TEXT,
    StartDate DATE,
    EndDate DATE,
    Organizer TEXT,
    Sponsor TEXT,
    AudienceSize INTEGER,
    MediaCoverage TEXT,
    PressReleaseID INTEGER,
    Contacts TEXT,
    BudgetUSD REAL,
    ActualSpendUSD REAL,
    Outcome TEXT,
    FollowUpAction TEXT,
    RiskLevel TEXT,
    Status TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);
INSERT INTO public_relations_events (EventID, EventName, EventType, Location, City, Country, StartDate, EndDate, Organizer, Sponsor, AudienceSize, MediaCoverage, PressReleaseID, Contacts, BudgetUSD, ActualSpendUSD, Outcome, FollowUpAction, RiskLevel, Status, CreatedAt, UpdatedAt) VALUES (201, 'GreenFuel Launch', 'ProductLaunch', 'ConventionCenter', 'Berlin', 'Germany', '2023-09-10', '2023-09-12', 'PRTeam', 'EcoPartners', 1500, 'International', 301, 'john.doe@company.com', 200000.0, 195000.0, 'Successful', 'GatherFeedback', 'Medium', 'Closed', '2023-07-01 09:00:00', '2023-09-13 10:00:00');
INSERT INTO public_relations_events (EventID, EventName, EventType, Location, City, Country, StartDate, EndDate, Organizer, Sponsor, AudienceSize, MediaCoverage, PressReleaseID, Contacts, BudgetUSD, ActualSpendUSD, Outcome, FollowUpAction, RiskLevel, Status, CreatedAt, UpdatedAt) VALUES (202, 'Annual Sustainability Report Webinar', 'Webinar', 'Online', 'N/A', 'Global', '2023-05-20', '2023-05-20', 'Communications', 'None', 800, 'Online', 302, 'jane.smith@company.com', 50000.0, 47000.0, 'Positive', 'PublishSummary', 'Low', 'Closed', '2023-04-01 08:30:00', '2023-05-21 12:00:00');
INSERT INTO public_relations_events (EventID, EventName, EventType, Location, City, Country, StartDate, EndDate, Organizer, Sponsor, AudienceSize, MediaCoverage, PressReleaseID, Contacts, BudgetUSD, ActualSpendUSD, Outcome, FollowUpAction, RiskLevel, Status, CreatedAt, UpdatedAt) VALUES (203, 'Community Fuel Safety Day', 'Community', 'LocalPark', 'Austin', 'USA', '2023-07-15', '2023-07-15', 'CSRTeam', 'LocalGov', 300, 'LocalNews', 303, 'mike.lee@company.com', 15000.0, 15200.0, 'Engaging', 'VolunteerSurvey', 'Low', 'Closed', '2023-06-01 10:00:00', '2023-07-16 09:00:00');

-- Table recording energy certificates for renewable projects
CREATE TABLE energy_certificate_registry (
    CertificateID INTEGER PRIMARY KEY,
    ProjectName TEXT,
    CertificateType TEXT,
    Issuer TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    CapacityMW REAL,
    RenewableSource TEXT,
    Country TEXT,
    Region TEXT,
    RegistrationNumber TEXT,
    Status TEXT,
    VerificationMethod TEXT,
    CertifiedBy TEXT,
    ValidationScore REAL,
    CreditsAllocated INTEGER,
    CreditsRetired INTEGER,
    AuditReportID INTEGER,
    Notes TEXT,
    CreatedTimestamp DATETIME,
    UpdatedTimestamp DATETIME,
    DocumentPath TEXT
);
INSERT INTO energy_certificate_registry (CertificateID, ProjectName, CertificateType, Issuer, IssueDate, ExpirationDate, CapacityMW, RenewableSource, Country, Region, RegistrationNumber, Status, VerificationMethod, CertifiedBy, ValidationScore, CreditsAllocated, CreditsRetired, AuditReportID, Notes, CreatedTimestamp, UpdatedTimestamp, DocumentPath) VALUES (401, 'SolarFarm Alpha', 'REC', 'NationalEnergyAgency', '2022-03-01', '2032-02-28', 150.0, 'Solar', 'Spain', 'Catalonia', 'REC-ES-001', 'Active', 'ThirdParty', 'EcoAuditLtd', 98.5, 150000, 5000, 601, 'Initial certification', '2022-03-01 08:00:00', '2022-03-01 08:00:00', '/certificates/REC-ES-001.pdf');
INSERT INTO energy_certificate_registry (CertificateID, ProjectName, CertificateType, Issuer, IssueDate, ExpirationDate, CapacityMW, RenewableSource, Country, Region, RegistrationNumber, Status, VerificationMethod, CertifiedBy, ValidationScore, CreditsAllocated, CreditsRetired, AuditReportID, Notes, CreatedTimestamp, UpdatedTimestamp, DocumentPath) VALUES (402, 'WindPark Beta', 'Guarantee', 'GlobalRenewablesOrg', '2021-07-15', '2031-07-14', 200.0, 'Wind', 'Denmark', 'North', 'GUA-DK-045', 'Active', 'Internal', 'RenewablesDept', 95.0, 200000, 12000, 602, 'Annual audit completed', '2021-07-15 09:30:00', '2022-07-16 10:00:00', '/certificates/GUA-DK-045.pdf');
INSERT INTO energy_certificate_registry (CertificateID, ProjectName, CertificateType, Issuer, IssueDate, ExpirationDate, CapacityMW, RenewableSource, Country, Region, RegistrationNumber, Status, VerificationMethod, CertifiedBy, ValidationScore, CreditsAllocated, CreditsRetired, AuditReportID, Notes, CreatedTimestamp, UpdatedTimestamp, DocumentPath) VALUES (403, 'HydroPlant Gamma', 'REC', 'RenewableCouncil', '2020-11-20', '2030-11-19', 120.0, 'Hydro', 'Canada', 'BritishColumbia', 'REC-CA-210', 'Expired', 'ThirdParty', 'GreenCertInc', 92.0, 120000, 80000, 603, 'Certificate expired, renewal pending', '2020-11-20 07:45:00', '2029-12-01 12:00:00', '/certificates/REC-CA-210.pdf');

-- Table logging waste management activities at facilities
CREATE TABLE waste_management_logs (
    LogID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    FacilityName TEXT,
    WasteType TEXT,
    QuantityMetric TEXT,
    QuantityValue REAL,
    CollectionDate DATE,
    DisposalMethod TEXT,
    Contractor TEXT,
    PermitNumber TEXT,
    HazardLevel TEXT,
    Status TEXT,
    RecordedBy TEXT,
    VerificationDate DATE,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Latitude REAL,
    Longitude REAL,
    PhotoPath TEXT,
    ComplianceScore REAL
);
INSERT INTO waste_management_logs (LogID, FacilityID, FacilityName, WasteType, QuantityMetric, QuantityValue, CollectionDate, DisposalMethod, Contractor, PermitNumber, HazardLevel, Status, RecordedBy, VerificationDate, Notes, CreatedAt, UpdatedAt, Latitude, Longitude, PhotoPath, ComplianceScore) VALUES (501, 12, 'MainRefinery', 'OilSludge', 'Barrels', 350.0, '2023-04-10', 'Incineration', 'WasteSolutionsLtd', 'WP-98765', 'High', 'Completed', 'alice.w', '2023-04-11', 'No incidents', '2023-04-10 08:00:00', '2023-04-11 09:30:00', 45.6789, -73.1234, '/waste/photos/501.jpg', 96.5);
INSERT INTO waste_management_logs (LogID, FacilityID, FacilityName, WasteType, QuantityMetric, QuantityValue, CollectionDate, DisposalMethod, Contractor, PermitNumber, HazardLevel, Status, RecordedBy, VerificationDate, Notes, CreatedAt, UpdatedAt, Latitude, Longitude, PhotoPath, ComplianceScore) VALUES (502, 8, 'StationNorth', 'UsedOil', 'Liters', 1200.0, '2023-05-05', 'Recycling', 'EcoRecycleCo', 'WP-54321', 'Medium', 'Completed', 'bob.t', '2023-05-06', 'All containers sealed', '2023-05-05 07:45:00', '2023-05-06 08:15:00', 46.1122, -73.5678, '/waste/photos/502.jpg', 98.0);
INSERT INTO waste_management_logs (LogID, FacilityID, FacilityName, WasteType, QuantityMetric, QuantityValue, CollectionDate, DisposalMethod, Contractor, PermitNumber, HazardLevel, Status, RecordedBy, VerificationDate, Notes, CreatedAt, UpdatedAt, Latitude, Longitude, PhotoPath, ComplianceScore) VALUES (503, 15, 'WarehouseEast', 'Packaging', 'Kilograms', 2500.0, '2023-06-01', 'Landfill', 'ClearWasteLtd', 'WP-11223', 'Low', 'Pending', 'carol.m', NULL, 'Awaiting contractor assignment', '2023-06-01 09:00:00', '2023-06-01 09:00:00', 46.5555, -73.8888, '/waste/photos/503.jpg', 0.0);

-- Table storing results of customer satisfaction surveys
CREATE TABLE customer_survey_responses (
    SurveyID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    SurveyDate DATE,
    Channel TEXT,
    OverallSatisfaction INTEGER,
    ServiceQuality INTEGER,
    PricingFairness INTEGER,
    StaffFriendliness INTEGER,
    Cleanliness INTEGER,
    LikelihoodToRecommend INTEGER,
    Comments TEXT,
    FollowUpRequired TEXT,
    FollowUpDate DATE,
    SurveyVersion TEXT,
    RespondentAge INTEGER,
    RespondentGender TEXT,
    RespondentIncomeBracket TEXT,
    Region TEXT,
    Country TEXT,
    DeviceUsed TEXT,
    CompletionTimeSeconds INTEGER,
    NetPromoterScore INTEGER
);
INSERT INTO customer_survey_responses (SurveyID, CustomerID, SurveyDate, Channel, OverallSatisfaction, ServiceQuality, PricingFairness, StaffFriendliness, Cleanliness, LikelihoodToRecommend, Comments, FollowUpRequired, FollowUpDate, SurveyVersion, RespondentAge, RespondentGender, RespondentIncomeBracket, Region, Country, DeviceUsed, CompletionTimeSeconds, NetPromoterScore) VALUES (1001, 201, '2023-03-15', 'Email', 8, 9, 7, 8, 9, 8, 'Good overall experience', 'No', NULL, 'v1', 34, 'Female', '50k-75k', 'Midwest', 'USA', 'Mobile', 120, 30);
INSERT INTO customer_survey_responses (SurveyID, CustomerID, SurveyDate, Channel, OverallSatisfaction, ServiceQuality, PricingFairness, StaffFriendliness, Cleanliness, LikelihoodToRecommend, Comments, FollowUpRequired, FollowUpDate, SurveyVersion, RespondentAge, RespondentGender, RespondentIncomeBracket, Region, Country, DeviceUsed, CompletionTimeSeconds, NetPromoterScore) VALUES (1002, 342, '2023-04-02', 'App', 6, 5, 6, 5, 6, 5, 'Long wait times at pump', 'Yes', '2023-04-10', 'v1', 45, 'Male', '75k-100k', 'Southwest', 'USA', 'Tablet', 180, -10);
INSERT INTO customer_survey_responses (SurveyID, CustomerID, SurveyDate, Channel, OverallSatisfaction, ServiceQuality, PricingFairness, StaffFriendliness, Cleanliness, LikelihoodToRecommend, Comments, FollowUpRequired, FollowUpDate, SurveyVersion, RespondentAge, RespondentGender, RespondentIncomeBracket, Region, Country, DeviceUsed, CompletionTimeSeconds, NetPromoterScore) VALUES (1003, 578, '2023-05-20', 'Phone', 9, 9, 8, 9, 9, 9, 'Excellent service and friendly staff', 'No', NULL, 'v2', 29, 'NonBinary', '25k-40k', 'Northeast', 'USA', 'Landline', 95, 50);

-- Table tracking airport parking operations and usage
CREATE TABLE airport_parking_operations (
    ParkingID INTEGER PRIMARY KEY,
    AirportCode TEXT,
    ParkingArea TEXT,
    Capacity INTEGER,
    OccupiedSpots INTEGER,
    Level INTEGER,
    Section TEXT,
    RatePerHour REAL,
    RatePerDay REAL,
    RatePerWeek REAL,
    Secure BOOLEAN,
    Covered BOOLEAN,
    EVChargingSpots INTEGER,
    HandicapAccessible BOOLEAN,
    LastUpdated DATE,
    MonitoringSystem TEXT,
    RevenueCurrentMonth REAL,
    AverageOccupancyRate REAL,
    MaintenanceStatus TEXT,
    ManagerContact TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    GPSLatitude REAL,
    GPSLongitude REAL,
    Notes TEXT
);
INSERT INTO airport_parking_operations (ParkingID, AirportCode, ParkingArea, Capacity, OccupiedSpots, Level, Section, RatePerHour, RatePerDay, RatePerWeek, Secure, Covered, EVChargingSpots, HandicapAccessible, LastUpdated, MonitoringSystem, RevenueCurrentMonth, AverageOccupancyRate, MaintenanceStatus, ManagerContact, CreatedAt, UpdatedAt, GPSLatitude, GPSLongitude, Notes) VALUES (801, 'JFK', 'TerminalA', 500, 320, 2, 'NorthWing', 5.0, 30.0, 180.0, 1, 1, 20, 1, '2023-06-30', 'CamVision', 48000.0, 0.64, 'Good', 'john.parker@airport.com', '2023-01-01 08:00:00', '2023-06-30 18:00:00', 40.6413, -73.7781, 'Peak season approaching');
INSERT INTO airport_parking_operations (ParkingID, AirportCode, ParkingArea, Capacity, OccupiedSpots, Level, Section, RatePerHour, RatePerDay, RatePerWeek, Secure, Covered, EVChargingSpots, HandicapAccessible, LastUpdated, MonitoringSystem, RevenueCurrentMonth, AverageOccupancyRate, MaintenanceStatus, ManagerContact, CreatedAt, UpdatedAt, GPSLatitude, GPSLongitude, Notes) VALUES (802, 'LHR', 'WestCarPark', 800, 650, 3, 'WestSide', 4.5, 27.0, 160.0, 1, 0, 15, 1, '2023-06-30', 'LotTrack', 72000.0, 0.81, 'Minor repairs', 'emma.smith@airport.co.uk', '2023-02-15 09:30:00', '2023-06-30 17:45:00', 51.4700, -0.4543, 'EV chargers being upgraded');
INSERT INTO airport_parking_operations (ParkingID, AirportCode, ParkingArea, Capacity, OccupiedSpots, Level, Section, RatePerHour, RatePerDay, RatePerWeek, Secure, Covered, EVChargingSpots, HandicapAccessible, LastUpdated, MonitoringSystem, RevenueCurrentMonth, AverageOccupancyRate, MaintenanceStatus, ManagerContact, CreatedAt, UpdatedAt, GPSLatitude, GPSLongitude, Notes) VALUES (803, 'HND', 'LongTerm', 1200, 950, 1, 'EastDeck', 3.0, 20.0, 120.0, 0, 1, 30, 1, '2023-06-30', 'SpaceWatch', 54000.0, 0.79, 'Scheduled cleaning', 'hiro.tanaka@airport.jp', '2023-03-10 07:45:00', '2023-06-30 16:30:00', 35.5494, 139.7798, 'High demand during holidays');

-- Table modeling smart city infrastructure sensors and devices
CREATE TABLE smart_city_infrastructure (
    DeviceID INTEGER PRIMARY KEY,
    DeviceType TEXT,
    Manufacturer TEXT,
    InstallationDate DATE,
    FirmwareVersion TEXT,
    LocationDescription TEXT,
    Latitude REAL,
    Longitude REAL,
    StreetName TEXT,
    City TEXT,
    Country TEXT,
    ConnectivityType TEXT,
    PowerSource TEXT,
    BatteryLevelPercent INTEGER,
    LastMaintenance DATE,
    Status TEXT,
    DataRetentionDays INTEGER,
    EncryptionEnabled BOOLEAN,
    CalibrationDate DATE,
    SensorAccuracy REAL,
    AlertsEnabled BOOLEAN,
    OwnerDepartment TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Notes TEXT
);
INSERT INTO smart_city_infrastructure (DeviceID, DeviceType, Manufacturer, InstallationDate, FirmwareVersion, LocationDescription, Latitude, Longitude, StreetName, City, Country, ConnectivityType, PowerSource, BatteryLevelPercent, LastMaintenance, Status, DataRetentionDays, EncryptionEnabled, CalibrationDate, SensorAccuracy, AlertsEnabled, OwnerDepartment, CreatedAt, UpdatedAt, Notes) VALUES (901, 'AirQuality', 'EnviroTech', '2022-05-20', '1.2.3', 'Intersection of Main and 5th', 40.7128, -74.0060, 'Main St', 'NewYork', 'USA', 'LTE', 'Mains', 100, '2023-04-15', 'Active', 365, 1, '2023-01-10', 0.95, 1, 'Environment', '2022-05-20 08:00:00', '2023-06-01 09:00:00', 'Monitors NO2 and PM2.5');
INSERT INTO smart_city_infrastructure (DeviceID, DeviceType, Manufacturer, InstallationDate, FirmwareVersion, LocationDescription, Latitude, Longitude, StreetName, City, Country, ConnectivityType, PowerSource, BatteryLevelPercent, LastMaintenance, Status, DataRetentionDays, EncryptionEnabled, CalibrationDate, SensorAccuracy, AlertsEnabled, OwnerDepartment, CreatedAt, UpdatedAt, Notes) VALUES (902, 'TrafficCamera', 'SafeSight', '2021-11-05', '3.4.1', 'Highway 101 near Exit 12', 37.7749, -122.4194, 'Highway 101', 'SanFrancisco', 'USA', 'Fiber', 'Mains', 100, '2023-05-20', 'Active', 730, 1, '2022-12-01', 0.99, 1, 'Transportation', '2021-11-05 07:30:00', '2023-06-02 08:45:00', 'Provides live traffic feed');
INSERT INTO smart_city_infrastructure (DeviceID, DeviceType, Manufacturer, InstallationDate, FirmwareVersion, LocationDescription, Latitude, Longitude, StreetName, City, Country, ConnectivityType, PowerSource, BatteryLevelPercent, LastMaintenance, Status, DataRetentionDays, EncryptionEnabled, CalibrationDate, SensorAccuracy, AlertsEnabled, OwnerDepartment, CreatedAt, UpdatedAt, Notes) VALUES (903, 'StreetLight', 'LumaBright', '2020-02-10', '2.0.0', 'Corner of Oak and 2nd', 34.0522, -118.2437, 'Oak St', 'LosAngeles', 'USA', 'ZigBee', 'Solar', 85, '2023-03-01', 'Active', 1825, 1, '2022-06-15', 0.98, 0, 'PublicWorks', '2020-02-10 06:00:00', '2023-06-03 07:15:00', 'Energy saving mode enabled');

-- Table for legal case management and documentation
CREATE TABLE legal_case_management (
    CaseID INTEGER PRIMARY KEY,
    CaseNumber TEXT,
    CaseType TEXT,
    Plaintiff TEXT,
    Defendant TEXT,
    FilingDate DATE,
    Status TEXT,
    AssignedAttorney TEXT,
    LeadCounsel TEXT,
    Jurisdiction TEXT,
    CourtName TEXT,
    HearingDate DATE,
    VerdictDate DATE,
    SettlementAmount REAL,
    PenaltyAmount REAL,
    Confidential BOOLEAN,
    CasePriority TEXT,
    RelatedRegulation TEXT,
    DocumentsPath TEXT,
    Description TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Notes TEXT,
    Outcome TEXT
);
INSERT INTO legal_case_management (CaseID, CaseNumber, CaseType, Plaintiff, Defendant, FilingDate, Status, AssignedAttorney, LeadCounsel, Jurisdiction, CourtName, HearingDate, VerdictDate, SettlementAmount, PenaltyAmount, Confidential, CasePriority, RelatedRegulation, DocumentsPath, Description, CreatedAt, UpdatedAt, Notes, Outcome) VALUES (10001, '2023-CL-001', 'ContractDispute', 'FuelCo', 'SupplyInc', '2023-01-15', 'Open', 'Laura.M', 'Mark.T', 'Federal', 'DistrictCourtNY', '2023-05-10', NULL, NULL, NULL, 0, 'High', 'Reg123', '/legal/cases/2023-CL-001/', 'Dispute over fuel supply contract terms', '2023-01-15 09:00:00', '2023-04-20 11:30:00', 'Awaiting discovery', NULL);
INSERT INTO legal_case_management (CaseID, CaseNumber, CaseType, Plaintiff, Defendant, FilingDate, Status, AssignedAttorney, LeadCounsel, Jurisdiction, CourtName, HearingDate, VerdictDate, SettlementAmount, PenaltyAmount, Confidential, CasePriority, RelatedRegulation, DocumentsPath, Description, CreatedAt, UpdatedAt, Notes, Outcome) VALUES (10002, '2023-EN-045', 'Environmental', 'GreenAlliance', 'OilCorp', '2023-02-20', 'Closed', 'Samuel.K', 'Nina.R', 'State', 'SuperiorCourtCA', '2023-06-15', '2023-07-01', 2500000.0, 500000.0, 1, 'Medium', 'EnvReg45', '/legal/cases/2023-EN-045/', 'Violation of emissions limits at refinery', '2023-02-20 10:30:00', '2023-07-02 14:00:00', 'Settlement reached', 'Settled');
INSERT INTO legal_case_management (CaseID, CaseNumber, CaseType, Plaintiff, Defendant, FilingDate, Status, AssignedAttorney, LeadCounsel, Jurisdiction, CourtName, HearingDate, VerdictDate, SettlementAmount, PenaltyAmount, Confidential, CasePriority, RelatedRegulation, DocumentsPath, Description, CreatedAt, UpdatedAt, Notes, Outcome) VALUES (10003, '2023-LB-078', 'Labor', 'WorkersUnion', 'LogisticsLLC', '2023-03-05', 'Dismissed', 'Karen.P', 'David.S', 'Federal', 'DistrictCourtTX', '2023-08-20', '2023-09-10', NULL, NULL, 0, 'Low', 'LaborLaw12', '/legal/cases/2023-LB-078/', 'Alleged wage violations', '2023-03-05 08:45:00', '2023-09-12 16:20:00', 'Lack of evidence', 'Dismissed');