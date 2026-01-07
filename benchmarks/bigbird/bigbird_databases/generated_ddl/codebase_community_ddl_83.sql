-- User engagement metrics per day
CREATE TABLE user_engagement_metrics (
    Id INTEGER PRIMARY KEY,
    UserId INTEGER,
    MetricDate DATE,
    SessionCount INTEGER,
    ClickCount INTEGER,
    ScrollDepthAvg REAL,
    TimeOnSiteSec INTEGER,
    PagesViewed INTEGER,
    LikesGiven INTEGER,
    CommentsMade INTEGER,
    Shares INTEGER,
    Reports INTEGER,
    DeviceType TEXT,
    OSVersion TEXT,
    Browser TEXT,
    Country TEXT,
    Region TEXT,
    City TEXT,
    Language TEXT,
    IsPremium INTEGER
);
INSERT INTO user_engagement_metrics VALUES (1, 101, '2023-01-01', 5, 120, 3.5, 600, 15, 3, 2, 1, 0, 'desktop', 'Windows10', 'Chrome', 'USA', 'CA', 'LosAngeles', 'en', 1);
INSERT INTO user_engagement_metrics VALUES (2, 102, '2023-01-01', 3, 80, 2.8, 420, 10, 1, 1, 0, 1, 'mobile', 'iOS14', 'Safari', 'Canada', 'ON', 'Toronto', 'en', 0);
INSERT INTO user_engagement_metrics VALUES (3, 103, '2023-01-01', 7, 200, 4.1, 900, 22, 5, 3, 2, 0, 'tablet', 'Android11', 'Firefox', 'UK', 'London', 'London', 'en', 1);

-- Content moderation statistics per day
CREATE TABLE content_moderation_statistics (
    Id INTEGER PRIMARY KEY,
    ModeratorId INTEGER,
    StatDate DATE,
    TotalReviewed INTEGER,
    Approved INTEGER,
    Rejected INTEGER,
    Escalated INTEGER,
    AvgReviewTimeSec REAL,
    FlagsHandled INTEGER,
    SpamDetections INTEGER,
    HarassmentDetections INTEGER,
    HateSpeechDetections INTEGER,
    CopyrightDetections INTEGER,
    AutoFlagged INTEGER,
    ManualFlagged INTEGER,
    ReviewMode TEXT,
    ShiftId INTEGER,
    Platform TEXT,
    Region TEXT,
    Notes TEXT
);
INSERT INTO content_moderation_statistics VALUES (1, 201, '2023-01-01', 150, 120, 20, 5, 12.5, 140, 60, 30, 10, 5, 80, 60, 'standard', 1, 'web', 'NA', 'All good');
INSERT INTO content_moderation_statistics VALUES (2, 202, '2023-01-01', 200, 160, 30, 10, 10.2, 190, 80, 40, 20, 10, 120, 70, 'quick', 2, 'mobile', 'EU', 'High load');
INSERT INTO content_moderation_statistics VALUES (3, 203, '2023-01-01', 100, 85, 10, 2, 8.7, 95, 40, 20, 5, 2, 50, 45, 'standard', 3, 'api', 'APAC', 'Normal');

-- Hourly site traffic aggregation
CREATE TABLE site_traffic_hourly (
    Id INTEGER PRIMARY KEY,
    SiteId INTEGER,
    LogDate DATE,
    HourOfDay INTEGER,
    PageViews INTEGER,
    UniqueVisitors INTEGER,
    Sessions INTEGER,
    BounceRatePct REAL,
    AvgSessionDurationSec REAL,
    NewVisitorPct REAL,
    ReturningVisitorPct REAL,
    MobileTrafficPct REAL,
    DesktopTrafficPct REAL,
    TabletTrafficPct REAL,
    AvgPageDepth REAL,
    AvgLoadTimeMs REAL,
    ErrorsCount INTEGER,
    ApiCalls INTEGER,
    DataTransferMB REAL,
    GeoCountry TEXT,
    GeoRegion TEXT
);
INSERT INTO site_traffic_hourly VALUES (1, 1, '2023-01-01', 9, 5000, 3500, 3000, 45.2, 180.5, 60.0, 40.0, 55.0, 40.0, 5.0, 3.2, 1200.5, 25, 800, 1500.8, 'USA', 'CA');
INSERT INTO site_traffic_hourly VALUES (2, 1, '2023-01-01', 14, 6200, 4200, 3800, 42.8, 200.1, 58.0, 42.0, 50.0, 45.0, 5.0, 3.5, 1300.2, 30, 950, 1800.3, 'USA', 'NY');
INSERT INTO site_traffic_hourly VALUES (3, 1, '2023-01-01', 20, 4800, 3100, 2900, 48.5, 170.3, 62.0, 38.0, 60.0, 35.0, 5.0, 2.9, 1100.7, 20, 700, 1300.6, 'USA', 'TX');

-- Advertising campaign targeting criteria
CREATE TABLE ad_targeting_criteria (
    Id INTEGER PRIMARY KEY,
    CampaignId INTEGER,
    CriterionType TEXT,
    CriterionValue TEXT,
    StartDate DATE,
    EndDate DATE,
    IsActive INTEGER,
    Priority INTEGER,
    AudienceSegment TEXT,
    DeviceCategory TEXT,
    OS TEXT,
    Browser TEXT,
    Language TEXT,
    Country TEXT,
    Region TEXT,
    City TEXT,
    MinAge INTEGER,
    MaxAge INTEGER,
    Gender TEXT,
    ExclusionFlag INTEGER
);
INSERT INTO ad_targeting_criteria VALUES (1, 301, 'Interest', 'technology', '2023-01-01', '2023-06-30', 1, 10, 'tech_enthusiasts', 'desktop', 'Windows10', 'Chrome', 'en', 'USA', 'CA', 'SanFrancisco', 18, 45, 'any', 0);
INSERT INTO ad_targeting_criteria VALUES (2, 302, 'Behavior', 'frequent_shopper', '2023-02-01', '2023-07-31', 1, 8, 'online_shoppers', 'mobile', 'iOS14', 'Safari', 'en', 'Canada', 'ON', 'Toronto', 21, 55, 'female', 0);
INSERT INTO ad_targeting_criteria VALUES (3, 303, 'Demographic', 'college_students', '2023-03-01', '2023-08-31', 0, 5, 'students', 'tablet', 'Android11', 'Firefox', 'en', 'UK', 'London', 'London', 18, 30, 'any', 1);

-- API endpoint performance metrics
CREATE TABLE api_endpoint_performance (
    Id INTEGER PRIMARY KEY,
    EndpointName TEXT,
    StatDate DATE,
    Hour INTEGER,
    AvgResponseMs REAL,
    P99ResponseMs REAL,
    ErrorRatePct REAL,
    RequestCount INTEGER,
    AuthSuccessCount INTEGER,
    AuthFailureCount INTEGER,
    CacheHitPct REAL,
    ThrottledCount INTEGER,
    DataSentKB REAL,
    DataReceivedKB REAL,
    ClientIPRange TEXT,
    Protocol TEXT,
    TLSVersion TEXT,
    DeploymentVersion TEXT,
    Region TEXT,
    ServiceName TEXT
);
INSERT INTO api_endpoint_performance VALUES (1, '/v1/posts', '2023-01-01', 10, 120.5, 250.0, 0.5, 15000, 14500, 500, 92.0, 30, 8500.2, 9100.5, '192.168.0.0/16', 'HTTPS', 'TLS1.2', 'v2.1', 'us-east', 'post_service');
INSERT INTO api_endpoint_performance VALUES (2, '/v1/comments', '2023-01-01', 11, 98.3, 200.0, 0.3, 12000, 11800, 200, 95.0, 20, 7200.1, 7800.3, '10.0.0.0/8', 'HTTPS', 'TLS1.3', 'v2.0', 'eu-west', 'comment_service');
INSERT INTO api_endpoint_performance VALUES (3, '/v1/users', '2023-01-01', 12, 150.0, 300.0, 0.8, 8000, 7500, 500, 88.0, 40, 5000.0, 5600.0, '172.16.0.0/12', 'HTTPS', 'TLS1.2', 'v2.2', 'ap-south', 'user_service');

-- Knowledge graph node attributes
CREATE TABLE knowledge_graph_node_attributes (
    Id INTEGER PRIMARY KEY,
    NodeId INTEGER,
    AttributeName TEXT,
    AttributeValue TEXT,
    DataType TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    SourceSystem TEXT,
    ConfidenceScore REAL,
    IsActive INTEGER,
    ValidFrom DATETIME,
    ValidTo DATETIME,
    Language TEXT,
    Country TEXT,
    Region TEXT,
    City TEXT,
    Latitude REAL,
    Longitude REAL,
    IsDerived INTEGER,
    DerivationMethod TEXT
);
INSERT INTO knowledge_graph_node_attributes VALUES (1, 1001, 'title', 'Graph Theory Basics', 'string', '2022-01-01 08:00:00', '2023-01-01 09:00:00', 'import_tool', 0.95, 1, '2022-01-01 00:00:00', NULL, 'en', 'USA', 'CA', 'SanFrancisco', 37.7749, -122.4194, 0, '');
INSERT INTO knowledge_graph_node_attributes VALUES (2, 1002, 'popularity', '842', 'integer', '2022-02-15 10:30:00', '2023-01-01 10:15:00', 'analytics_engine', 0.88, 1, '2022-02-15 00:00:00', NULL, 'en', 'Canada', 'ON', 'Ottawa', 45.4215, -75.6972, 0, '');
INSERT INTO knowledge_graph_node_attributes VALUES (3, 1003, 'related_topic', 'Algorithms', 'string', '2022-03-10 14:20:00', '2023-01-01 11:45:00', 'manual_entry', 0.99, 1, '2022-03-10 00:00:00', NULL, 'en', 'UK', 'London', 'London', 51.5074, -0.1278, 1, 'inheritance');

-- Learning path enrollment statistics
CREATE TABLE learning_path_enrollment_stats (
    Id INTEGER PRIMARY KEY,
    PathId INTEGER,
    UserId INTEGER,
    EnrollmentDate DATE,
    CompletionDate DATE,
    ProgressPct REAL,
    ModulesCompleted INTEGER,
    TotalModules INTEGER,
    CurrentModuleId INTEGER,
    LastAccessDate DATE,
    AvgScore REAL,
    TimeSpentSec INTEGER,
    IsCertified INTEGER,
    CertificationDate DATE,
    MentorId INTEGER,
    ReferralSource TEXT,
    DeviceType TEXT,
    OS TEXT,
    Browser TEXT,
    Country TEXT,
    Region TEXT
);
INSERT INTO learning_path_enrollment_stats VALUES (1, 401, 101, '2022-01-15', '2022-04-20', 100.0, 12, 12, 12, '2022-04-20', 92.5, 25000, 1, '2022-04-20', 201, 'email', 'desktop', 'Windows10', 'Chrome', 'USA', 'CA');
INSERT INTO learning_path_enrollment_stats VALUES (2, 402, 102, '2022-02-10', NULL, 45.0, 5, 11, 6, '2023-01-01', 78.0, 12000, 0, NULL, 202, 'referral', 'mobile', 'iOS14', 'Safari', 'Canada', 'ON');
INSERT INTO learning_path_enrollment_stats VALUES (3, 403, 103, '2022-03-05', '2022-06-15', 100.0, 8, 8, 8, '2022-06-15', 88.0, 18000, 1, '2022-06-15', 203, 'ads', 'tablet', 'Android11', 'Firefox', 'UK', 'London');

-- Supplier contract metrics
CREATE TABLE supplier_contract_metrics (
    Id INTEGER PRIMARY KEY,
    ContractId INTEGER,
    SupplierId INTEGER,
    StartDate DATE,
    EndDate DATE,
    TotalValue REAL,
    Currency TEXT,
    PaymentTerms TEXT,
    DeliveryCompliancePct REAL,
    QualityScore REAL,
    IssueCount INTEGER,
    LastIssueDate DATE,
    RenewalFlag INTEGER,
    ContractType TEXT,
    RiskLevel TEXT,
    Region TEXT,
    PrimaryContact TEXT,
    ContactEmail TEXT,
    ContactPhone TEXT,
    SLACompliancePct REAL,
    PenaltyAmount REAL
);
INSERT INTO supplier_contract_metrics VALUES (1, 501, 301, '2021-01-01', '2023-12-31', 500000.00, 'USD', '30days', 98.5, 4.7, 2, '2022-11-10', 1, 'fixed', 'medium', 'NA', 'John Doe', 'john@example.com', '5551234', 99.0, 5000.00);
INSERT INTO supplier_contract_metrics VALUES (2, 502, 302, '2020-06-15', '2022-06-14', 250000.00, 'EUR', '45days', 95.0, 4.2, 5, '2022-05-20', 0, 'variable', 'high', 'EU', 'Maria Silva', 'maria@example.eu', '5555678', 96.5, 7500.00);
INSERT INTO supplier_contract_metrics VALUES (3, 503, 303, '2022-03-01', '2024-02-28', 750000.00, 'GBP', '60days', 99.2, 4.9, 1, '2023-01-15', 1, 'fixed', 'low', 'APAC', 'Li Wei', 'li@example.cn', '5559012', 99.8, 3000.00);

-- Environmental monitoring station readings
CREATE TABLE environmental_monitoring_station_readings (
    Id INTEGER PRIMARY KEY,
    StationId INTEGER,
    ReadingTimestamp DATETIME,
    TemperatureC REAL,
    HumidityPct REAL,
    AirPressurehPa REAL,
    CO2ppm INTEGER,
    PM2_5ugm3 REAL,
    PM10ugm3 REAL,
    WindSpeedMps REAL,
    WindDirectionDeg INTEGER,
    RainfallMm REAL,
    UVIndex INTEGER,
    SoilMoisturePct REAL,
    SoilTempC REAL,
    BatteryLevelPct REAL,
    SignalStrengthDbm REAL,
    FirmwareVersion TEXT,
    Latitude REAL,
    Longitude REAL
);
INSERT INTO environmental_monitoring_station_readings VALUES (1, 601, '2023-01-01 08:00:00', 15.2, 55.0, 1013.2, 420, 12.5, 20.1, 3.4, 180, 0.0, 3, 30.5, 14.8, 85.0, -70.0, 'v1.4', 40.7128, -74.0060);
INSERT INTO environmental_monitoring_station_readings VALUES (2, 602, '2023-01-01 08:15:00', 16.0, 52.5, 1012.8, 415, 10.2, 18.7, 2.9, 190, 0.0, 2, 31.0, 15.2, 87.0, -68.5, 'v1.4', 34.0522, -118.2437);
INSERT INTO environmental_monitoring_station_readings VALUES (3, 603, '2023-01-01 08:30:00', 14.8, 58.0, 1013.5, 430, 13.0, 21.5, 3.8, 170, 0.0, 4, 29.8, 14.2, 82.0, -72.3, 'v1.4', 51.5074, -0.1278);

-- Customer journey step metrics
CREATE TABLE customer_journey_step_metrics (
    Id INTEGER PRIMARY KEY,
    JourneyId INTEGER,
    StepName TEXT,
    StepOrder INTEGER,
    UsersEntered INTEGER,
    UsersExited INTEGER,
    ConversionRatePct REAL,
    AvgTimeSec REAL,
    DropoffRatePct REAL,
    BounceRatePct REAL,
    DeviceMobilePct REAL,
    DeviceDesktopPct REAL,
    RegionNorthAmericaPct REAL,
    RegionEuropePct REAL,
    RegionAsiaPct REAL,
    SourceOrganicPct REAL,
    SourcePaidPct REAL,
    SourceReferralPct REAL,
    CampaignId INTEGER,
    ABTestGroup TEXT,
    Notes TEXT
);
INSERT INTO customer_journey_step_metrics VALUES (1, 701, 'landing', 1, 10000, 8500, 85.0, 30.5, 15.0, 5.0, 60.0, 35.0, 50.0, 30.0, 20.0, 55.0, 30.0, 15.0, 801, 'A', 'Initial entry');
INSERT INTO customer_journey_step_metrics VALUES (2, 701, 'signup', 2, 8500, 6000, 70.6, 45.2, 20.0, 9.4, 58.0, 37.0, 48.0, 32.0, 20.0, 45.0, 35.0, 20.0, 801, 'B', 'Conversion step');
INSERT INTO customer_journey_step_metrics VALUES (3, 701, 'purchase', 3, 6000, 3000, 50.0, 60.0, 30.0, 20.0, 55.0, 40.0, 45.0, 35.0, 20.0, 35.0, 30.0, 25.0, 801, 'A', 'Final conversion');