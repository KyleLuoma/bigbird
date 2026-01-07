-- Media inventory table
CREATE TABLE media_inventory
(
    MediaID INTEGER PRIMARY KEY,
    MediaType TEXT,
    VendorName TEXT,
    StartDate DATE,
    EndDate DATE,
    Cost REAL,
    Currency TEXT,
    Region TEXT,
    Impressions INTEGER,
    Clicks INTEGER,
    CPM REAL,
    CPA REAL,
    Placement TEXT,
    AudienceSegment TEXT,
    Format TEXT,
    DurationSeconds INTEGER,
    ContractNumber TEXT,
    Status TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO media_inventory VALUES (1, 'Display', 'AdCo', '2024-01-01', '2024-03-31', 15000.00, 'USD', 'NorthAmerica', 1200000, 45000, 12.5, 0.33, 'Homepage', 'TechSavvy', 'Banner', 30, 'CN001', 'Active', '2024-01-01', '2024-01-15');
INSERT INTO media_inventory VALUES (2, 'Video', 'StreamAds', '2024-02-01', '2024-04-30', 25000.00, 'USD', 'Europe', 800000, 35000, 31.25, 0.71, 'PreRoll', 'TravelEnthusiasts', 'MP4', 45, 'CN002', 'Planned', '2024-02-01', '2024-02-10');
INSERT INTO media_inventory VALUES (3, 'Social', 'SocialBoost', '2024-03-01', '2024-05-31', 10000.00, 'USD', 'Asia', 500000, 25000, 20.0, 0.40, 'Story', 'YoungAdults', 'Image', 15, 'CN003', 'Active', '2024-03-01', '2024-03-05');

-- Campaign budget allocations table
CREATE TABLE campaign_budget_allocations
(
    AllocationID INTEGER PRIMARY KEY,
    CampaignID INTEGER,
    FiscalYear INTEGER,
    Quarter INTEGER,
    Channel TEXT,
    BudgetAmount REAL,
    Currency TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    SpendToDate REAL,
    Variance REAL,
    CostCenter TEXT,
    Manager TEXT,
    Remarks TEXT,
    CreatedOn DATE,
    ModifiedOn DATE,
    IsActive INTEGER,
    AllocationType TEXT,
    TargetROI REAL,
    ForecastedSpend REAL
);

INSERT INTO campaign_budget_allocations VALUES (101, 2001, 2024, 1, 'Digital', 50000.00, 'USD', 'Alice', '2024-01-05', 12000.00, 38000.00, 'CC100', 'Bob', 'Initial allocation', '2024-01-01', '2024-01-10', 1, 'Fixed', 1.5, 48000.00);
INSERT INTO campaign_budget_allocations VALUES (102, 2002, 2024, 2, 'Print', 30000.00, 'USD', 'Charlie', '2024-04-02', 8000.00, 22000.00, 'CC101', 'Diana', 'Quarterly review', '2024-04-01', '2024-04-05', 1, 'Variable', 1.2, 29000.00);
INSERT INTO campaign_budget_allocations VALUES (103, 2003, 2024, 3, 'Outdoor', 40000.00, 'USD', 'Eve', '2024-07-15', 15000.00, 25000.00, 'CC102', 'Frank', 'Mid-year adjustment', '2024-07-01', '2024-07-20', 1, 'Fixed', 1.4, 38000.00);

-- Influencer engagements table
CREATE TABLE influencer_engagements
(
    EngagementID INTEGER PRIMARY KEY,
    InfluencerID INTEGER,
    Platform TEXT,
    CampaignID INTEGER,
    PostDate DATE,
    ContentType TEXT,
    Reach INTEGER,
    Engagements INTEGER,
    Likes INTEGER,
    Comments INTEGER,
    Shares INTEGER,
    FollowersAtPost INTEGER,
    Cost REAL,
    Currency TEXT,
    ContractID TEXT,
    Status TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT,
    IsPaid INTEGER
);

INSERT INTO influencer_engagements VALUES (1001, 501, 'Instagram', 2001, '2024-02-14', 'Image', 250000, 3400, 3000, 150, 250, 120000, 2500.00, 'USD', 'CT001', 'Completed', '2024-02-15', '2024-02-16', 'High engagement', 1);
INSERT INTO influencer_engagements VALUES (1002, 502, 'TikTok', 2002, '2024-05-20', 'Video', 500000, 7200, 6500, 400, 300, 200000, 4000.00, 'USD', 'CT002', 'Pending', '2024-05-21', '2024-05-22', 'Awaiting approval', 0);
INSERT INTO influencer_engagements VALUES (1003, 503, 'YouTube', 2003, '2024-08-10', 'LongForm', 750000, 9100, 8000, 600, 500, 300000, 6000.00, 'USD', 'CT003', 'Completed', '2024-08-11', '2024-08-12', 'Successful conversion', 1);

-- Loyalty rewards catalog table
CREATE TABLE loyalty_rewards_catalog
(
    RewardID INTEGER PRIMARY KEY,
    RewardName TEXT,
    RewardType TEXT,
    PointsRequired INTEGER,
    ExpirationDays INTEGER,
    ValidFrom DATE,
    ValidTo DATE,
    Description TEXT,
    ImageURL TEXT,
    Category TEXT,
    Availability INTEGER,
    Region TEXT,
    Tier TEXT,
    StockQuantity INTEGER,
    RedemptionLimit INTEGER,
    CreatedBy TEXT,
    CreatedDate DATE,
    ModifiedBy TEXT,
    ModifiedDate DATE,
    IsActive INTEGER
);

INSERT INTO loyalty_rewards_catalog VALUES (1, 'Free Coffee', 'Voucher', 150, 365, '2024-01-01', '2025-12-31', 'Redeem for one free coffee at any location', 'http://img.com/coffee.png', 'Beverage', 1000, 'Global', 'Silver', 500, 2, 'Admin', '2024-01-01', 'Admin', '2024-01-10', 1);
INSERT INTO loyalty_rewards_catalog VALUES (2, '10% Discount', 'Coupon', 300, 180, '2024-02-01', '2024-08-31', 'Apply for a 10% discount on next purchase', 'http://img.com/discount.png', 'General', 2000, 'Europe', 'Gold', 800, 1, 'Admin', '2024-02-01', 'Admin', '2024-02-05', 1);
INSERT INTO loyalty_rewards_catalog VALUES (3, 'Premium Membership', 'Membership', 1200, 730, '2024-03-01', '2026-02-28', 'One year premium membership with extra benefits', 'http://img.com/premium.png', 'Membership', 300, 'NorthAmerica', 'Platinum', 150, 1, 'Admin', '2024-03-01', 'Admin', '2024-03-10', 1);

-- Vehicle telemetry summary table
CREATE TABLE vehicle_telemetry_summary
(
    SummaryID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    Date DATE,
    TotalDistance REAL,
    AvgSpeed REAL,
    MaxSpeed REAL,
    FuelConsumed REAL,
    EngineHours REAL,
    IdleTime REAL,
    HardBrakes INTEGER,
    RapidAccelerations INTEGER,
    Odometer REAL,
    BatteryLevel REAL,
    TirePressureFrontLeft REAL,
    TirePressureFrontRight REAL,
    TirePressureRearLeft REAL,
    TirePressureRearRight REAL,
    GPSSignalStrength INTEGER,
    DataPointsCollected INTEGER,
    Status TEXT
);

INSERT INTO vehicle_telemetry_summary VALUES (5001, 10001, '2024-01-31', 350.5, 45.2, 78.0, 25.3, 12.5, 1.2, 8, 5, 150000.0, 85.0, 32.1, 32.3, 31.9, 32.0, 4, 1440, 'OK');
INSERT INTO vehicle_telemetry_summary VALUES (5002, 10002, '2024-01-31', 420.0, 48.5, 82.0, 28.7, 13.0, 0.9, 6, 7, 180000.0, 78.0, 31.8, 31.9, 31.7, 31.8, 5, 1500, 'OK');
INSERT INTO vehicle_telemetry_summary VALUES (5003, 10003, '2024-01-31', 310.2, 42.0, 70.5, 22.1, 11.8, 1.5, 9, 4, 130000.0, 90.0, 32.2, 32.4, 32.0, 32.1, 3, 1380, 'OK');

-- Environmental audit reports table
CREATE TABLE environmental_audit_reports
(
    ReportID INTEGER PRIMARY KEY,
    SiteID INTEGER,
    AuditDate DATE,
    AuditorName TEXT,
    ComplianceScore REAL,
    FindingsCount INTEGER,
    ViolationLevel TEXT,
    CorrectiveActionDueDate DATE,
    Summary TEXT,
    Recommendations TEXT,
    FollowUpDate DATE,
    Status TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    DocumentPath TEXT,
    Department TEXT,
    Scope TEXT,
    RiskRating TEXT,
    OverallRating REAL,
    Comments TEXT
);

INSERT INTO environmental_audit_reports VALUES (9001, 301, '2024-02-15', 'JohnDoe', 92.5, 3, 'Medium', '2024-04-01', 'Audit of waste handling', 'Improve segregation', '2024-05-01', 'Closed', '2024-02-16', '2024-02-20', '/docs/9001.pdf', 'Operations', 'Full', 'Low', 4.5, 'No further issues');
INSERT INTO environmental_audit_reports VALUES (9002, 302, '2024-03-10', 'JaneSmith', 88.0, 5, 'High', '2024-05-15', 'Air emissions review', 'Install scrubbers', '2024-06-01', 'Open', '2024-03-11', '2024-03-15', '/docs/9002.pdf', 'Compliance', 'Partial', 'Medium', 4.0, 'Pending actions');
INSERT INTO environmental_audit_reports VALUES (9003, 303, '2024-04-05', 'MikeBrown', 95.0, 2, 'Low', '2024-06-30', 'Water discharge audit', 'Add filtration', '2024-07-15', 'Closed', '2024-04-06', '2024-04-10', '/docs/9003.pdf', 'Engineering', 'Full', 'Low', 4.8, 'All issues resolved');

-- Supplier performance metrics table
CREATE TABLE supplier_performance_metrics
(
    MetricID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    EvaluationPeriod TEXT,
    OnTimeDeliveryPct REAL,
    QualityScore REAL,
    CostVariancePct REAL,
    ResponsivenessScore REAL,
    ContractCompliancePct REAL,
    IssueCount INTEGER,
    AvgResolutionDays REAL,
    SustainabilityScore REAL,
    InnovationScore REAL,
    RiskLevel TEXT,
    Notes TEXT,
    Evaluator TEXT,
    EvaluationDate DATE,
    CreatedAt DATE,
    UpdatedAt DATE,
    IsActive INTEGER,
    OverallRating REAL
);

INSERT INTO supplier_performance_metrics VALUES (2001, 4001, 'Q1-2024', 96.5, 4.7, 1.2, 4.9, 98.0, 2, 3.5, 4.5, 4.2, 'Low', 'Excellent overall', 'Alice', '2024-04-01', '2024-04-02', '2024-04-10', 1, 4.6);
INSERT INTO supplier_performance_metrics VALUES (2002, 4002, 'Q1-2024', 89.0, 4.1, -2.5, 4.0, 85.0, 5, 7.2, 3.8, 3.9, 'Medium', 'Needs improvement in delivery', 'Bob', '2024-04-01', '2024-04-02', '2024-04-10', 1, 4.0);
INSERT INTO supplier_performance_metrics VALUES (2003, 4003, 'Q1-2024', 92.0, 4.5, 0.5, 4.6, 90.0, 3, 4.0, 4.2, 4.0, 'Low', 'Consistent performance', 'Carol', '2024-04-01', '2024-04-02', '2024-04-10', 1, 4.5);

-- Energy certificate registry table
CREATE TABLE energy_certificate_registry
(
    CertificateID INTEGER PRIMARY KEY,
    CertificateNumber TEXT,
    IssueDate DATE,
    ExpiryDate DATE,
    EnergyType TEXT,
    QuantityMWh REAL,
    Issuer TEXT,
    Owner TEXT,
    Status TEXT,
    Region TEXT,
    RenewablePercentage REAL,
    CertificationStandard TEXT,
    DocumentLink TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    ModifiedBy TEXT,
    ModifiedDate DATE,
    VerificationCode TEXT,
    Notes TEXT,
    IsActive INTEGER
);

INSERT INTO energy_certificate_registry VALUES (3001, 'EC-2024-001', '2024-01-10', '2029-01-09', 'Solar', 1500.0, 'GovAgency', 'EnergyCo', 'Active', 'NorthAmerica', 100.0, 'ISO50001', '/certs/3001.pdf', 'Admin', '2024-01-11', 'Admin', '2024-01-20', 'VC001', 'First batch', 1);
INSERT INTO energy_certificate_registry VALUES (3002, 'EC-2024-002', '2024-02-15', '2029-02-14', 'Wind', 2000.0, 'GovAgency', 'WindPowerLtd', 'Active', 'Europe', 100.0, 'ISO50001', '/certs/3002.pdf', 'Admin', '2024-02-16', 'Admin', '2024-02-20', 'VC002', 'Second batch', 1);
INSERT INTO energy_certificate_registry VALUES (3003, 'EC-2024-003', '2024-03-20', '2029-03-19', 'Hydro', 2500.0, 'GovAgency', 'HydroWorks', 'Pending', 'Asia', 80.0, 'ISO50001', '/certs/3003.pdf', 'Admin', '2024-03-21', 'Admin', '2024-03-25', 'VC003', 'Awaiting verification', 0);

-- Smart city sensor inventory table
CREATE TABLE smart_city_sensor_inventory
(
    SensorID INTEGER PRIMARY KEY,
    SensorType TEXT,
    LocationID INTEGER,
    InstallationDate DATE,
    FirmwareVersion TEXT,
    CalibrationDate DATE,
    Status TEXT,
    BatteryLevel REAL,
    SignalStrength INTEGER,
    DataRateHz REAL,
    Manufacturer TEXT,
    Model TEXT,
    WarrantyEndDate DATE,
    LastMaintenanceDate DATE,
    NetworkID TEXT,
    IPAddress TEXT,
    Latitude REAL,
    Longitude REAL,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO smart_city_sensor_inventory VALUES (4001, 'AirQuality', 101, '2023-06-01', 'v1.2.3', '2023-06-15', 'Active', 92.5, 4, 1.0, 'SensTech', 'AQ-100', '2026-06-01', '2024-12-01', 'NET01', '192.168.1.10', 40.7128, -74.0060, '2023-06-01', '2024-12-01');
INSERT INTO smart_city_sensor_inventory VALUES (4002, 'TrafficFlow', 102, '2023-07-15', 'v2.0.1', '2023-07-20', 'Active', 88.0, 5, 5.0, 'FlowInc', 'TF-200', '2027-07-15', '2024-11-20', 'NET02', '192.168.1.11', 34.0522, -118.2437, '2023-07-15', '2024-11-20');
INSERT INTO smart_city_sensor_inventory VALUES (4003, 'NoiseLevel', 103, '2023-08-10', 'v1.0.0', '2023-08-12', 'Maintenance', 75.0, 3, 0.5, 'QuietTech', 'NL-300', '2025-08-10', '2024-10-05', 'NET03', '192.168.1.12', 51.5074, -0.1278, '2023-08-10', '2024-10-05');

-- Public transport fare structures table
CREATE TABLE public_transport_fare_structures
(
    FareID INTEGER PRIMARY KEY,
    TransportMode TEXT,
    TicketType TEXT,
    Zone INTEGER,
    Price REAL,
    Currency TEXT,
    ValidFrom DATE,
    ValidTo DATE,
    DiscountEligibility TEXT,
    AgeLimitMin INTEGER,
    AgeLimitMax INTEGER,
    PeakOffPeak TEXT,
    PurchaseMethod TEXT,
    Refundable INTEGER,
    TransferAllowed INTEGER,
    MaxTransfers INTEGER,
    DailyCap REAL,
    MonthlyCap REAL,
    CreatedBy TEXT,
    CreatedDate DATE,
    ModifiedBy TEXT,
    ModifiedDate DATE
);

INSERT INTO public_transport_fare_structures VALUES (6001, 'Bus', 'SingleRide', 1, 2.5, 'USD', '2024-01-01', '2025-12-31', 'Student,Senior', 0, 120, 'OffPeak', 'App', 0, 0, 0, 0.0, 0.0, 'Admin', '2024-01-01', 'Admin', '2024-01-10');
INSERT INTO public_transport_fare_structures VALUES (6002, 'Metro', 'MonthlyPass', 2, 75.0, 'USD', '2024-01-01', '2024-12-31', 'None', 0, 150, 'All', 'Station', 1, 1, 10, 75.0, 300.0, 'Admin', '2024-01-01', 'Admin', '2024-01-10');
INSERT INTO public_transport_fare_structures VALUES (6003, 'Tram', 'DayPass', 3, 8.0, 'USD', '2024-04-01', '2024-09-30', 'Tourist', 0, 99, 'All', 'TicketMachine', 0, 1, 5, 8.0, 40.0, 'Admin', '2024-04-01', 'Admin', '2024-04-05');