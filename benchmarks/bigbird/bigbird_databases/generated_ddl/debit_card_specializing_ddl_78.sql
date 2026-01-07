-- Fuel station amenities details
CREATE TABLE fuel_station_amenities
(
    AmenityID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    RestroomAvailable TEXT,
    ConvenienceStore TEXT,
    CarWash TEXT,
    AirPump TEXT,
    EVChargingSpots INTEGER,
    ATMAvailable TEXT,
    WifiAvailable TEXT,
    SeatingCapacity INTEGER,
    ChildPlayArea TEXT,
    LightingLevel TEXT,
    CleanlinessScore INTEGER,
    FuelTypeSupported TEXT,
    PromoBanner TEXT,
    ServiceHours TEXT,
    GPSLatitude REAL,
    GPSLongitude REAL,
    MaintenanceContact TEXT,
    LastUpdated DATE
);

INSERT INTO fuel_station_amenities VALUES (1, 101, 'Yes', 'Yes', 'No', 'Yes', 4, 'Yes', 'Yes', 20, 'No', 'High', 85, 'Diesel', 'SummerSale', '24x7', 40.7128, -74.0060, 'JohnDoe', '2023-01-05');
INSERT INTO fuel_station_amenities VALUES (2, 102, 'No', 'Yes', 'Yes', 'No', 2, 'No', 'No', 10, 'Yes', 'Medium', 78, 'Petrol', 'None', '06-22', 34.0522, -118.2437, 'JaneSmith', '2023-02-12');
INSERT INTO fuel_station_amenities VALUES (3, 103, 'Yes', 'No', 'No', 'Yes', 6, 'Yes', 'Yes', 30, 'No', 'Low', 92, 'Hybrid', 'WinterPromo', '08-20', 51.5074, -0.1278, 'MikeLee', '2023-03-20');

-- Card issuance records
CREATE TABLE card_issuance_records
(
    CardID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    IssuerName TEXT,
    CardType TEXT,
    IssueDate DATE,
    ExpiryDate DATE,
    CardStatus TEXT,
    CreditLimit INTEGER,
    Currency TEXT,
    CardPINHash TEXT,
    ActivationDate DATE,
    BlockedReason TEXT,
    ContactNumber TEXT,
    EmailAddress TEXT,
    BillingAddress TEXT,
    IssueBranchID INTEGER,
    CardDesignCode TEXT,
    CVVHash TEXT,
    FraudScore INTEGER,
    LastTransactionDate DATE
);

INSERT INTO card_issuance_records VALUES (1001, 201, 'BankA', 'Visa', '2022-05-01', '2025-05-01', 'Active', 5000, 'USD', 'hash1', '2022-05-02', '', '5551234567', 'user1@example.com', '123 Main St', 10, 'DesignA', 'cvvhash1', 12, '2023-07-15');
INSERT INTO card_issuance_records VALUES (1002, 202, 'BankB', 'MasterCard', '2021-09-15', '2024-09-15', 'Blocked', 3000, 'EUR', 'hash2', '2021-09-16', 'Lost', '5559876543', 'user2@example.com', '456 Oak Ave', 12, 'DesignB', 'cvvhash2', 45, '2023-06-30');
INSERT INTO card_issuance_records VALUES (1003, 203, 'BankC', 'Amex', '2023-01-10', '2026-01-10', 'Active', 7500, 'GBP', 'hash3', '2023-01-11', '', '5555555555', 'user3@example.com', '789 Pine Rd', 15, 'DesignC', 'cvvhash3', 8, '2023-08-01');

-- Environmental sensor readings
CREATE TABLE environmental_sensor_readings
(
    ReadingID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    SensorID TEXT,
    SensorType TEXT,
    ReadingValue REAL,
    Unit TEXT,
    Timestamp DATETIME,
    BatteryLevel INTEGER,
    SignalStrength INTEGER,
    CalibrationDate DATE,
    FirmwareVersion TEXT,
    Latitude REAL,
    Longitude REAL,
    Status TEXT,
    AlertFlag INTEGER,
    MaintenanceDue DATE,
    OperatorID INTEGER,
    DataQualityScore INTEGER,
    SamplingMethod TEXT,
    ProjectCode TEXT,
    Remarks TEXT
);

INSERT INTO environmental_sensor_readings VALUES (5001, 101, 'S001', 'AirQuality', 42.5, 'AQI', '2023-07-01 08:00:00', 90, 78, '2023-01-01', 'v1.2', 40.7128, -74.0060, 'OK', 0, '2023-12-01', 301, 95, 'Continuous', 'PRJ001', '');
INSERT INTO environmental_sensor_readings VALUES (5002, 102, 'S002', 'NoiseLevel', 65.0, 'dB', '2023-07-01 08:05:00', 85, 80, '2023-02-15', 'v1.3', 34.0522, -118.2437, 'OK', 0, '2024-01-15', 302, 88, 'Periodic', 'PRJ002', '');
INSERT INTO environmental_sensor_readings VALUES (5003, 103, 'S003', 'Temperature', 22.3, 'C', '2023-07-01 08:10:00', 95, 82, '2023-03-10', 'v1.1', 51.5074, -0.1278, 'OK', 0, '2023-11-20', 303, 92, 'Continuous', 'PRJ003', '');

-- Supplier performance metrics
CREATE TABLE supplier_performance_metrics
(
    MetricID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    GasStationID INTEGER,
    DeliveryOnTimePct REAL,
    FuelQualityScore REAL,
    InvoiceAccuracyPct REAL,
    ContractCompliancePct REAL,
    AvgDeliveryTimeHours REAL,
    LastDeliveryDate DATE,
    Rating INTEGER,
    Comments TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContractStartDate DATE,
    ContractEndDate DATE,
    PenaltyCount INTEGER,
    IncentiveAmount REAL,
    PerformanceReviewDate DATE,
    AuditScore REAL,
    Region TEXT,
    Category TEXT
);

INSERT INTO supplier_performance_metrics VALUES (9001, 401, 101, 96.5, 4.8, 99.2, 98.0, 2.5, '2023-06-30', 5, 'Excellent', 'AliceBrown', '5551112222', '2022-01-01', '2024-12-31', 0, 1500.00, '2023-07-01', 92.5, 'North', 'Fuel');
INSERT INTO supplier_performance_metrics VALUES (9002, 402, 102, 88.0, 4.2, 95.0, 90.5, 3.2, '2023-06-28', 4, 'Good', 'BobGreen', '5553334444', '2021-05-15', '2023-05-14', 2, 800.00, '2023-07-02', 85.0, 'South', 'Oil');
INSERT INTO supplier_performance_metrics VALUES (9003, 403, 103, 92.3, 4.6, 97.5, 95.0, 2.9, '2023-06-29', 5, 'Very Good', 'CarolWhite', '5555556666', '2020-09-01', '2025-08-31', 1, 1200.00, '2023-07-03', 89.0, 'East', 'Lube');

-- Marketing campaign channel allocations
CREATE TABLE marketing_campaign_channel_allocations
(
    AllocationID INTEGER PRIMARY KEY,
    CampaignID INTEGER,
    ChannelName TEXT,
    BudgetAmount REAL,
    StartDate DATE,
    EndDate DATE,
    Impressions INTEGER,
    Clicks INTEGER,
    ConversionRate REAL,
    CPM REAL,
    CPC REAL,
    CPA REAL,
    TargetAudience TEXT,
    GeoTarget TEXT,
    DeviceTarget TEXT,
    CreativeID INTEGER,
    FrequencyCap INTEGER,
    DayParting TEXT,
    OptimizationGoal TEXT,
    Status TEXT,
    LastModified DATE
);

INSERT INTO marketing_campaign_channel_allocations VALUES (2001, 301, 'SocialMedia', 15000.00, '2023-07-01', '2023-07-31', 500000, 12000, 2.4, 30.0, 1.25, 5.0, 'Adults', 'US', 'Mobile', 401, 3, 'Evening', 'Clicks', 'Active', '2023-07-10');
INSERT INTO marketing_campaign_channel_allocations VALUES (2002, 301, 'SearchEngine', 20000.00, '2023-07-01', '2023-07-31', 800000, 25000, 3.1, 25.0, 0.8, 4.2, 'Adults', 'US', 'Desktop', 402, 2, 'Morning', 'Conversions', 'Active', '2023-07-11');
INSERT INTO marketing_campaign_channel_allocations VALUES (2003, 301, 'Email', 5000.00, '2023-07-01', '2023-07-31', 150000, 3000, 2.0, 33.3, 1.66, 6.0, 'Adults', 'US', 'All', 403, 1, 'AllDay', 'Opens', 'Paused', '2023-07-09');

-- Vehicle telematics events
CREATE TABLE vehicle_telematics_events
(
    EventID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    EventType TEXT,
    EventTimestamp DATETIME,
    Latitude REAL,
    Longitude REAL,
    SpeedKmH REAL,
    EngineRPM INTEGER,
    FuelLevelPct INTEGER,
    OdometerKm REAL,
    BatteryVoltage REAL,
    AlertCode TEXT,
    DriverID INTEGER,
    RouteID INTEGER,
    WeatherCondition TEXT,
    RoadSurface TEXT,
    IncidentSeverity INTEGER,
    Notes TEXT,
    ProcessedFlag INTEGER,
    InsertedAt DATETIME
);

INSERT INTO vehicle_telematics_events VALUES (7001, 501, 'HardBrake', '2023-07-01 09:15:00', 40.7128, -74.0060, 45.2, 2500, 70, 12000.5, 12.6, 'HB001', 801, 901, 'Clear', 'Dry', 2, 'Minor brake event', 0, '2023-07-01 09:16:00');
INSERT INTO vehicle_telematics_events VALUES (7002, 502, 'Speeding', '2023-07-01 10:05:00', 34.0522, -118.2437, 110.0, 3000, 55, 8500.0, 12.4, 'SP001', 802, 902, 'Sunny', 'Dry', 3, 'Exceeded limit by 10kmh', 0, '2023-07-01 10:06:00');
INSERT INTO vehicle_telematics_events VALUES (7003, 503, 'EngineFault', '2023-07-01 11:30:00', 51.5074, -0.1278, 0.0, 0, 0, 15000.0, 11.9, 'EF001', 803, 903, 'Rain', 'Wet', 5, 'Engine shutdown', 0, '2023-07-01 11:31:00');

-- Station energy usage
CREATE TABLE station_energy_usage
(
    UsageID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    Date DATE,
    ElectricityKWh REAL,
    WaterLiters REAL,
    NaturalGasTherms REAL,
    RenewableGenerationKWh REAL,
    PeakDemandKW REAL,
    AvgLoadKW REAL,
    CO2EmissionsKg REAL,
    EnergyCostUSD REAL,
    MeterReadingStart REAL,
    MeterReadingEnd REAL,
    TariffCode TEXT,
    Shift TEXT,
    OperatorID INTEGER,
    MaintenanceFlag INTEGER,
    OverrideReason TEXT,
    SubmittedBy TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE
);

INSERT INTO station_energy_usage VALUES (3001, 101, '2023-06-30', 450.5, 1200.0, 30.2, 50.0, 75.0, 60.0, 350.0, 500.00, 10000.0, 10450.5, 'TC01', 'Day', 401, 0, '', 'JohnDoe', 'JaneSmith', '2023-07-02');
INSERT INTO station_energy_usage VALUES (3002, 102, '2023-06-30', 380.0, 1100.0, 28.5, 45.0, 70.0, 55.0, 300.0, 420.00, 9500.0, 9880.0, 'TC02', 'Night', 402, 0, '', 'MikeLee', 'AnnaBrown', '2023-07-02');
INSERT INTO station_energy_usage VALUES (3003, 103, '2023-06-30', 500.2, 1300.0, 35.0, 60.0, 80.0, 65.0, 400.0, 560.00, 10500.0, 11000.2, 'TC03', 'Day', 403, 1, 'ManualAdjustment', 'SaraWhite', 'TomGrey', '2023-07-03');

-- Employee access cards
CREATE TABLE employee_access_cards
(
    CardID INTEGER PRIMARY KEY,
    EmployeeID INTEGER,
    CardNumber TEXT,
    IssueDate DATE,
    ExpiryDate DATE,
    AccessLevel TEXT,
    Department TEXT,
    Shift TEXT,
    CardStatus TEXT,
    LastUsedTimestamp DATETIME,
    IssuingLocation TEXT,
    PinHash TEXT,
    BiometricHash TEXT,
    ReplacementCount INTEGER,
    LostStolenFlag INTEGER,
    DeactivationReason TEXT,
    ManagerApproval TEXT,
    CreatedBy TEXT,
    UpdatedBy TEXT,
    UpdatedAt DATETIME
);

INSERT INTO employee_access_cards VALUES (4001, 1001, 'AC1001', '2022-01-15', '2025-01-15', 'Level3', 'Operations', 'Day', 'Active', '2023-07-01 08:00:00', 'HQ', 'phash1', 'bhash1', 0, 0, '', 'MgrA', 'AdminA', 'AdminB', '2023-07-01 08:05:00');
INSERT INTO employee_access_cards VALUES (4002, 1002, 'AC1002', '2021-06-10', '2024-06-10', 'Level2', 'Maintenance', 'Night', 'Blocked', '2023-06-28 22:15:00', 'SiteB', 'phash2', 'bhash2', 1, 1, 'Lost', 'MgrB', 'AdminC', 'AdminD', '2023-06-28 22:20:00');
INSERT INTO employee_access_cards VALUES (4003, 1003, 'AC1003', '2023-03-01', '2026-03-01', 'Level1', 'CustomerService', 'Day', 'Active', '2023-07-01 09:30:00', 'HQ', 'phash3', 'bhash3', 0, 0, '', 'MgrC', 'AdminE', 'AdminF', '2023-07-01 09:35:00');

-- Road network segments
CREATE TABLE road_network_segments
(
    SegmentID INTEGER PRIMARY KEY,
    SegmentName TEXT,
    StartLat REAL,
    StartLong REAL,
    EndLat REAL,
    EndLong REAL,
    LengthKm REAL,
    SpeedLimitKph INTEGER,
    RoadClass TEXT,
    SurfaceType TEXT,
    LaneCount INTEGER,
    TrafficVolumeAADT INTEGER,
    AccidentRatePerMile REAL,
    MaintenanceSchedule TEXT,
    LastInspectionDate DATE,
    UpcomingWork TEXT,
    FundingSource TEXT,
    AdjacentGasStationID INTEGER,
    EnvironmentalImpactScore INTEGER,
    Notes TEXT
);

INSERT INTO road_network_segments VALUES (6001, 'I-95_North', 40.7128, -74.0060, 40.8500, -73.9500, 12.5, 100, 'Highway', 'Asphalt', 4, 120000, 0.3, 'Annual', '2023-05-10', 'Resurfacing2024', 'Federal', 101, 45, '');
INSERT INTO road_network_segments VALUES (6002, 'MainSt_East', 34.0522, -118.2437, 34.0600, -118.2200, 2.8, 45, 'Arterial', 'Concrete', 2, 25000, 0.1, 'BiAnnual', '2023-06-15', 'SignalUpgrade', 'State', 102, 30, '');
INSERT INTO road_network_segments VALUES (6003, 'ElmAve_West', 51.5074, -0.1278, 51.5200, -0.1100, 3.2, 35, 'Collector', 'Asphalt', 2, 18000, 0.05, 'Quarterly', '2023-04-20', 'PatchRepair', 'Local', 103, 20, '');

-- Digital ad placement inventory
CREATE TABLE digital_ad_placement_inventory
(
    PlacementID INTEGER PRIMARY KEY,
    StationID INTEGER,
    ScreenID INTEGER,
    ScreenLocation TEXT,
    ScreenHeightPx INTEGER,
    ScreenWidthPx INTEGER,
    Resolution TEXT,
    RefreshRateHz INTEGER,
    Orientation TEXT,
    ContentProvider TEXT,
    ContractStart DATE,
    ContractEnd DATE,
    CPMRate REAL,
    DailyImpressionsTarget INTEGER,
    CurrentImpressions INTEGER,
    LastContentUpdate DATETIME,
    MaintenanceContact TEXT,
    PowerSource TEXT,
    ConnectivityType TEXT,
    Status TEXT
);

INSERT INTO digital_ad_placement_inventory VALUES (8001, 101, 1, 'Entrance', 1080, 1920, '1080x1920', 60, 'Portrait', 'AdCo', '2023-01-01', '2023-12-31', 12.5, 5000, 2500, '2023-07-01 07:00:00', 'JohnDoe', 'Mains', 'Ethernet', 'Active');
INSERT INTO digital_ad_placement_inventory VALUES (8002, 102, 2, 'Canopy', 720, 1280, '720x1280', 30, 'Landscape', 'MediaInc', '2023-03-15', '2024-03-14', 10.0, 3000, 1500, '2023-07-01 08:30:00', 'JaneSmith', 'Solar', 'WiFi', 'Active');
INSERT INTO digital_ad_placement_inventory VALUES (8003, 103, 3, 'Restroom', 480, 800, '480x800', 24, 'Portrait', 'PromoCorp', '2022-11-01', '2023-10-31', 8.0, 2000, 1200, '2023-06-30 09:45:00', 'MikeLee', 'Mains', 'Cellular', 'Paused');