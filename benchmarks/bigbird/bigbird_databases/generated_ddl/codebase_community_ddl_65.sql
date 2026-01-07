-- Table storing collaborative research project information
CREATE TABLE research_collaborations
(
    Id INTEGER PRIMARY KEY,
    ProjectId INTEGER,
    LeadResearcherId INTEGER,
    InstitutionName TEXT,
    CollaborationType TEXT,
    StartDate DATE,
    EndDate DATE,
    FundingAmount FLOAT,
    GrantNumber TEXT,
    ScopeDescription TEXT,
    DataSharingAgreement BOOLEAN,
    PublicationCount INTEGER,
    PatentCount INTEGER,
    IsInternational BOOLEAN,
    PartnerInstitutions TEXT,
    ContactEmail TEXT,
    ContactPhone TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Notes TEXT
);

INSERT INTO research_collaborations (Id, ProjectId, LeadResearcherId, InstitutionName, CollaborationType, StartDate, EndDate, FundingAmount, GrantNumber, ScopeDescription, DataSharingAgreement, PublicationCount, PatentCount, IsInternational, PartnerInstitutions, ContactEmail, ContactPhone, CreatedAt, UpdatedAt, Notes) VALUES
(1, 101, 1001, 'University A', 'Joint', '2022-01-15', '2024-12-31', 250000.00, 'GR12345', 'Study of renewable energy systems', 1, 3, 0, 1, 'University B;University C', 'lead@univa.edu', '1234567890', '2022-01-10 09:00:00', '2022-01-10 09:00:00', 'Initial setup'),
(2, 102, 1002, 'Institute X', 'Consortium', '2021-06-01', '2023-05-30', 500000.00, 'GR67890', 'AI for medical imaging', 1, 5, 2, 1, 'Institute Y;Institute Z', 'contact@instx.org', '0987654321', '2021-05-20 10:30:00', '2021-05-20 10:30:00', 'Phase 1 completed'),
(3, 103, 1003, 'Tech Lab', 'Industry', '2023-03-01', NULL, 150000.00, 'GR11223', 'IoT security protocols', 0, 1, 0, 0, 'Partner Corp', 'info@techlab.com', '5551234567', '2023-02-25 14:15:00', '2023-02-25 14:15:00', 'Ongoing');

-- Table logging IoT device events
CREATE TABLE iot_device_events
(
    EventId INTEGER PRIMARY KEY,
    DeviceId INTEGER,
    EventType TEXT,
    EventTimestamp DATETIME,
    FirmwareVersion TEXT,
    BatteryLevel FLOAT,
    SignalStrength FLOAT,
    Latitude FLOAT,
    Longitude FLOAT,
    Altitude FLOAT,
    TemperatureC FLOAT,
    HumidityPercent FLOAT,
    PressurePa FLOAT,
    EventPayload TEXT,
    Processed BOOLEAN,
    ProcessedAt DATETIME,
    ErrorCode INTEGER,
    ErrorMessage TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO iot_device_events (EventId, DeviceId, EventType, EventTimestamp, FirmwareVersion, BatteryLevel, SignalStrength, Latitude, Longitude, Altitude, TemperatureC, HumidityPercent, PressurePa, EventPayload, Processed, ProcessedAt, ErrorCode, ErrorMessage, CreatedAt, UpdatedAt) VALUES
(1001, 2001, 'temperature_read', '2023-10-01 08:00:00', 'v1.2.3', 87.5, -70.2, 37.7749, -122.4194, 15.0, 22.5, 45.0, 101325, '{"temp":22.5}', 1, '2023-10-01 08:01:00', 0, '', '2023-10-01 08:00:05', '2023-10-01 08:00:05'),
(1002, 2002, 'motion_detected', '2023-10-01 09:15:30', 'v2.0.1', 65.0, -60.0, 40.7128, -74.0060, 10.0, 19.0, 55.0, 100800, '{"motion":true}', 1, '2023-10-01 09:16:00', 0, '', '2023-10-01 09:15:35', '2023-10-01 09:15:35'),
(1003, 2003, 'error', '2023-10-01 10:45:12', 'v1.9.5', 45.0, -80.5, 34.0522, -118.2437, 30.0, 24.0, 40.0, 101000, '{"code":"E01"}', 0, NULL, 101, 'sensor_failure', '2023-10-01 10:45:15', '2023-10-01 10:45:15');

-- Table capturing customer support interactions
CREATE TABLE customer_support_interactions
(
    InteractionId INTEGER PRIMARY KEY,
    TicketId INTEGER,
    CustomerId INTEGER,
    AgentId INTEGER,
    Channel TEXT,
    InteractionDate DATETIME,
    InteractionDurationSeconds INTEGER,
    IssueCategory TEXT,
    IssueSubcategory TEXT,
    ResolutionStatus TEXT,
    CustomerSatisfactionScore INTEGER,
    FollowUpRequired BOOLEAN,
    FollowUpDueDate DATE,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    SurveyResponseId INTEGER,
    Escalated BOOLEAN,
    EscalationLevel INTEGER,
    CommunicationMethod TEXT
);

INSERT INTO customer_support_interactions (InteractionId, TicketId, CustomerId, AgentId, Channel, InteractionDate, InteractionDurationSeconds, IssueCategory, IssueSubcategory, ResolutionStatus, CustomerSatisfactionScore, FollowUpRequired, FollowUpDueDate, Notes, CreatedAt, UpdatedAt, SurveyResponseId, Escalated, EscalationLevel, CommunicationMethod) VALUES
(5001, 3001, 4001, 6001, 'email', '2023-09-20 14:20:00', 900, 'Billing', 'Invoice Dispute', 'Resolved', 9, 0, NULL, 'Customer accepted refund', '2023-09-20 14:20:05', '2023-09-20 14:20:05', 8001, 0, 0, 'email'),
(5002, 3002, 4002, 6002, 'chat', '2023-09-21 09:45:00', 600, 'Technical', 'Login Issue', 'Pending', 7, 1, '2023-09-25', 'Password reset sent, awaiting confirmation', '2023-09-21 09:45:10', '2023-09-21 09:45:10', 8002, 0, 0, 'webchat'),
(5003, 3003, 4003, 6003, 'phone', '2023-09-22 16:10:00', 1200, 'Account', 'Account Closure', 'Escalated', 5, 1, '2023-09-30', 'Escalated to senior manager', '2023-09-22 16:10:20', '2023-09-22 16:10:20', 8003, 1, 2, 'phone');

-- Table extending enterprise taxonomy entities
CREATE TABLE enterprise_taxonomy_entities_ext
(
    TaxonomyId INTEGER PRIMARY KEY,
    EntityName TEXT,
    ParentEntityId INTEGER,
    EntityType TEXT,
    Description TEXT,
    CreatedDate DATE,
    ModifiedDate DATE,
    IsActive BOOLEAN,
    Namespace TEXT,
    Version INTEGER,
    OwnerId INTEGER,
    SourceSystem TEXT,
    ExternalReferenceId TEXT,
    Tags TEXT,
    Level INTEGER,
    SortOrder INTEGER,
    IsDeprecated BOOLEAN,
    DeprecationDate DATE,
    MetadataJson TEXT,
    LastSyncedAt DATETIME
);

INSERT INTO enterprise_taxonomy_entities_ext (TaxonomyId, EntityName, ParentEntityId, EntityType, Description, CreatedDate, ModifiedDate, IsActive, Namespace, Version, OwnerId, SourceSystem, ExternalReferenceId, Tags, Level, SortOrder, IsDeprecated, DeprecationDate, MetadataJson, LastSyncedAt) VALUES
(9001, 'ProductCategory', NULL, 'Category', 'Top level product categories', '2020-01-01', '2023-07-15', 1, 'global', 3, 1100, 'ERP', 'REF001', 'electronics,appliances', 1, 10, 0, NULL, '{"hierarchy":"root"}', '2023-08-01 12:00:00'),
(9002, 'Laptop', 9001, 'Subcategory', 'Portable computers', '2020-02-10', '2023-07-20', 1, 'global', 2, 1101, 'ERP', 'REF002', 'computers,devices', 2, 20, 0, NULL, '{"parent":"ProductCategory"}', '2023-08-01 12:05:00'),
(9003, 'LegacyServer', 9001, 'Subcategory', 'Outdated server hardware', '2018-05-05', '2022-12-01', 0, 'legacy', 1, 1102, 'CMDB', 'REF003', 'servers,legacy', 2, 30, 1, '2022-12-01', '{"status":"decommissioned"}', '2023-08-01 12:10:00');

-- Table tracking digital asset licenses
CREATE TABLE digital_asset_license
(
    LicenseId INTEGER PRIMARY KEY,
    AssetId INTEGER,
    LicenseType TEXT,
    Issuer TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    LicenseKey TEXT,
    IsPerpetual BOOLEAN,
    MaxActivations INTEGER,
    CurrentActivations INTEGER,
    AllowedPlatforms TEXT,
    Region TEXT,
    Cost FLOAT,
    Currency TEXT,
    TermsUrl TEXT,
    CreatedBy INTEGER,
    CreatedAt DATETIME,
    UpdatedBy INTEGER,
    UpdatedAt DATETIME,
    Comments TEXT
);

INSERT INTO digital_asset_license (LicenseId, AssetId, LicenseType, Issuer, IssueDate, ExpirationDate, LicenseKey, IsPerpetual, MaxActivations, CurrentActivations, AllowedPlatforms, Region, Cost, Currency, TermsUrl, CreatedBy, CreatedAt, UpdatedBy, UpdatedAt, Comments) VALUES
(20001, 30001, 'Standard', 'Acme Corp', '2022-04-01', '2023-04-01', 'ABC123XYZ', 0, 5, 2, 'Windows;Mac', 'US', 199.99, 'USD', 'http://example.com/terms', 5001, '2022-04-01 08:00:00', 5002, '2022-04-02 09:30:00', 'First year license'),
(20002, 30002, 'Enterprise', 'Beta Ltd', '2021-01-15', NULL, 'ENT456DEF', 1, 0, 0, 'Linux', 'EU', 0.00, 'EUR', 'http://beta.com/enterprise-terms', 5003, '2021-01-15 10:15:00', 5004, '2021-01-20 11:45:00', 'Perpetual enterprise license'),
(20003, 30003, 'Trial', 'Gamma Inc', '2023-06-01', '2023-07-01', 'TRI789GHI', 0, 1, 0, 'Web', 'APAC', 0.00, 'USD', 'http://gamma.com/trial', 5005, '2023-06-01 14:00:00', 5005, '2023-06-01 14:05:00', '30 day trial');

-- Table extending supplier contracts information
CREATE TABLE supplier_contracts_ext
(
    ContractId INTEGER PRIMARY KEY,
    SupplierId INTEGER,
    ContractNumber TEXT,
    StartDate DATE,
    EndDate DATE,
    ContractValue FLOAT,
    Currency TEXT,
    PaymentTerms TEXT,
    ServiceLevelAgreement TEXT,
    RenewalOption BOOLEAN,
    RenewalNoticeDays INTEGER,
    PrimaryContactName TEXT,
    PrimaryContactEmail TEXT,
    PrimaryContactPhone TEXT,
    ContractStatus TEXT,
    RiskRating INTEGER,
    GoverningLaw TEXT,
    ConfidentialityClause BOOLEAN,
    TerminationClause TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO supplier_contracts_ext (ContractId, SupplierId, ContractNumber, StartDate, EndDate, ContractValue, Currency, PaymentTerms, ServiceLevelAgreement, RenewalOption, RenewalNoticeDays, PrimaryContactName, PrimaryContactEmail, PrimaryContactPhone, ContractStatus, RiskRating, GoverningLaw, ConfidentialityClause, TerminationClause, CreatedAt, UpdatedAt) VALUES
(7001, 8001, 'SC-2022-001', '2022-01-01', '2024-12-31', 750000.00, 'USD', 'Net 30', '99.9% uptime', 1, 90, 'Alice Smith', 'alice.smith@supplier.com', '5551112222', 'Active', 2, 'NY', 1, '30 days notice', '2022-01-01 09:00:00', '2022-01-01 09:00:00'),
(7002, 8002, 'SC-2021-045', '2021-05-15', '2023-05-14', 320000.00, 'EUR', 'Net 45', 'Response within 2h', 0, NULL, 'Bob Jones', 'bob.jones@supplier.eu', '5553334444', 'Expired', 3, 'DE', 1, 'Immediate termination for breach', '2021-05-15 10:30:00', '2023-05-14 16:00:00'),
(7003, 8003, 'SC-2023-010', '2023-07-01', '2025-06-30', 500000.00, 'GBP', 'Net 60', '99.5% uptime', 1, 60, 'Carol Lee', 'carol.lee@supplier.co.uk', '5555556666', 'Pending', 1, 'UK', 0, '30 days notice', '2023-07-01 08:15:00', '2023-07-01 08:15:00');

-- Table logging media streaming sessions
CREATE TABLE media_stream_sessions
(
    SessionId INTEGER PRIMARY KEY,
    MediaAssetId INTEGER,
    UserId INTEGER,
    SessionStart DATETIME,
    SessionEnd DATETIME,
    DeviceType TEXT,
    OperatingSystem TEXT,
    Browser TEXT,
    BitrateKbps INTEGER,
    Resolution TEXT,
    DurationSeconds INTEGER,
    BytesTransferred BIGINT,
    GeoLocation TEXT,
    IsLive BOOLEAN,
    StreamProtocol TEXT,
    CDNProvider TEXT,
    PlaybackErrorCode INTEGER,
    PlaybackErrorMessage TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO media_stream_sessions (SessionId, MediaAssetId, UserId, SessionStart, SessionEnd, DeviceType, OperatingSystem, Browser, BitrateKbps, Resolution, DurationSeconds, BytesTransferred, GeoLocation, IsLive, StreamProtocol, CDNProvider, PlaybackErrorCode, PlaybackErrorMessage, CreatedAt, UpdatedAt) VALUES
(90001, 10001, 20001, '2023-09-01 12:00:00', '2023-09-01 12:45:00', 'Desktop', 'Windows 10', 'Chrome', 2500, '1920x1080', 2700, 850000000, 'USA', 0, 'HLS', 'Akamai', 0, '', '2023-09-01 12:00:05', '2023-09-01 12:45:00'),
(90002, 10002, 20002, '2023-09-02 18:30:00', '2023-09-02 19:10:00', 'Mobile', 'iOS 16', 'Safari', 1500, '1280x720', 2400, 450000000, 'Canada', 0, 'DASH', 'CloudFront', 0, '', '2023-09-02 18:30:10', '2023-09-02 19:10:00'),
(90003, 10003, 20003, '2023-09-03 20:00:00', '2023-09-03 20:05:00', 'SmartTV', 'Tizen', 'SamsungBrowser', 3000, '3840x2160', 300, 120000000, 'UK', 1, 'RTMP', 'Fastly', 101, 'buffer_underflow', '2023-09-03 20:00:05', '2023-09-03 20:05:00');

-- Table recording knowledge graph annotation logs
CREATE TABLE knowledge_graph_annotation_logs
(
    LogId INTEGER PRIMARY KEY,
    GraphNodeId INTEGER,
    AnnotatorId INTEGER,
    AnnotationType TEXT,
    AnnotationValue TEXT,
    ConfidenceScore FLOAT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Source TEXT,
    ReviewStatus TEXT,
    ReviewComments TEXT,
    IsActive BOOLEAN,
    ExpirationDate DATE,
    Version INTEGER,
    ChangeDescription TEXT,
    RelatedNodeIds TEXT,
    BatchId INTEGER,
    Processed BOOLEAN,
    ProcessedAt DATETIME,
    Metadata TEXT,
    Tags TEXT
);

INSERT INTO knowledge_graph_annotation_logs (LogId, GraphNodeId, AnnotatorId, AnnotationType, AnnotationValue, ConfidenceScore, CreatedAt, UpdatedAt, Source, ReviewStatus, ReviewComments, IsActive, ExpirationDate, Version, ChangeDescription, RelatedNodeIds, BatchId, Processed, ProcessedAt, Metadata, Tags) VALUES
(12001, 5001, 7001, 'Category', 'Technology', 0.95, '2023-08-15 09:00:00', '2023-08-15 09:00:00', 'auto', 'Pending', '', 1, NULL, 1, 'Initial categorization', '5002,5003', 3001, 0, NULL, '{"algo":"nlp_v1"}', 'tech;nlp'),
(12002, 5002, 7002, 'Sentiment', 'Positive', 0.88, '2023-08-16 10:15:00', '2023-08-16 10:15:00', 'manual', 'Approved', 'Looks good', 1, NULL, 1, 'Sentiment added', '5001', 3002, 1, '2023-08-16 10:20:00', '{"reviewer":"admin"}', 'sentiment;positive'),
(12003, 5003, 7003, 'RiskLevel', 'High', 0.76, '2023-08-17 11:30:00', '2023-08-17 11:30:00', 'auto', 'Rejected', 'Low confidence', 0, '2024-01-01', 1, 'Risk assessment rejected', '5001,5002', 3003, 1, '2023-08-17 11:35:00', '{"reason":"low_confidence"}', 'risk;high');

-- Table for environmental monitoring reports
CREATE TABLE environmental_monitoring_reports
(
    ReportId INTEGER PRIMARY KEY,
    SiteId INTEGER,
    ReportDate DATE,
    TemperatureC FLOAT,
    HumidityPercent FLOAT,
    AirQualityIndex INTEGER,
    NoiseLevelDb FLOAT,
    WaterPH FLOAT,
    SoilMoisturePercent FLOAT,
    SolarRadiationWm2 FLOAT,
    WindSpeedMs FLOAT,
    WindDirection TEXT,
    RainfallMm FLOAT,
    ObservationNotes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    AnalystId INTEGER,
    ApprovalStatus TEXT,
    Comments TEXT,
    DataSource TEXT,
    ReportVersion INTEGER
);

INSERT INTO environmental_monitoring_reports (ReportId, SiteId, ReportDate, TemperatureC, HumidityPercent, AirQualityIndex, NoiseLevelDb, WaterPH, SoilMoisturePercent, SolarRadiationWm2, WindSpeedMs, WindDirection, RainfallMm, ObservationNotes, CreatedAt, UpdatedAt, AnalystId, ApprovalStatus, Comments, DataSource, ReportVersion) VALUES
(40001, 6001, '2023-09-01', 22.5, 55.0, 42, 58.0, 7.2, 30.5, 800.0, 3.5, 'NE', 0.0, 'Clear sky, normal conditions', '2023-09-01 07:00:00', '2023-09-01 07:00:00', 9001, 'Approved', '', 'sensor_network', 1),
(40002, 6002, '2023-09-02', 18.3, 70.0, 85, 62.0, 6.8, 45.0, 600.0, 5.2, 'SW', 5.4, 'Light rain observed', '2023-09-02 07:10:00', '2023-09-02 07:10:00', 9002, 'Pending', 'Awaiting senior review', 'sensor_network', 1),
(40003, 6003, '2023-09-03', 25.0, 40.0, 30, 55.0, 8.1, 20.0, 1200.0, 2.0, 'N', 0.0, 'High solar radiation', '2023-09-03 07:20:00', '2023-09-03 07:20:00', 9003, 'Rejected', 'Sensor calibration needed', 'sensor_network', 1);

-- Table for tracking project milestones
CREATE TABLE project_milestone_tracking
(
    MilestoneId INTEGER PRIMARY KEY,
    ProjectId INTEGER,
    MilestoneName TEXT,
    Description TEXT,
    PlannedStartDate DATE,
    PlannedEndDate DATE,
    ActualStartDate DATE,
    ActualEndDate DATE,
    Status TEXT,
    OwnerId INTEGER,
    Priority INTEGER,
    RiskLevel INTEGER,
    Dependencies TEXT,
    Deliverables TEXT,
    BudgetAllocated FLOAT,
    BudgetSpent FLOAT,
    CompletionPercent INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    UpdatedBy INTEGER,
    Remarks TEXT
);

INSERT INTO project_milestone_tracking (MilestoneId, ProjectId, MilestoneName, Description, PlannedStartDate, PlannedEndDate, ActualStartDate, ActualEndDate, Status, OwnerId, Priority, RiskLevel, Dependencies, Deliverables, BudgetAllocated, BudgetSpent, CompletionPercent, CreatedAt, UpdatedAt, UpdatedBy, Remarks) VALUES
(80001, 9001, 'Requirement Gathering', 'Collect all business requirements', '2023-01-01', '2023-02-15', '2023-01-05', '2023-02-10', 'Completed', 1001, 1, 2, '', 'Requirement Document', 50000.00, 48000.00, 100, '2023-01-01 09:00:00', '2023-02-10 16:00:00', 1002, 'No issues'),
(80002, 9001, 'Design Phase', 'Create system design specifications', '2023-02-16', '2023-04-01', '2023-02-20', NULL, 'In Progress', 1003, 2, 3, 'Requirement Gathering', 'Design Docs, Architecture Diagrams', 80000.00, 35000.00, 44, '2023-02-16 10:00:00', '2023-04-10 14:30:00', 1004, 'Pending client review'),
(80003, 9001, 'Implementation', 'Develop and integrate components', '2023-04-02', '2023-09-30', NULL, NULL, 'Not Started', 1005, 3, 4, 'Design Phase', 'Source Code, Test Plans', 200000.00, 0.00, 0, '2023-04-02 11:00:00', '2023-04-02 11:00:00', 1005, 'Resources being allocated');