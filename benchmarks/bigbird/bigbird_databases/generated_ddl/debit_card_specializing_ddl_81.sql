-- Table describing fuel distribution hubs
CREATE TABLE fuel_distribution_hubs
(
    HubID INTEGER PRIMARY KEY,
    HubName TEXT,
    Country TEXT,
    Region TEXT,
    CapacityGallons INTEGER,
    Latitude REAL,
    Longitude REAL,
    EstablishedDate DATE,
    ManagerID INTEGER,
    ContactNumber TEXT,
    Email TEXT,
    OperatingHours TEXT,
    CostPerGallon REAL,
    NumberOfEmployees INTEGER,
    StorageType TEXT,
    SecurityLevel INTEGER,
    LastInspectionDate DATE,
    AvgDailyThroughput REAL,
    MaxTemperature REAL,
    MinTemperature REAL,
    IsAutomated INTEGER,
    HasRenewablePower INTEGER
);
INSERT INTO fuel_distribution_hubs VALUES (1, 'NorthLake Hub', 'USA', 'Midwest', 500000, 41.85, -87.65, '2005-06-15', 101, '555-1234', 'manager1@example.com', '24/7', 2.45, 35, 'Underground', 5, '2023-12-01', 12000.5, 45.0, -5.0, 1, 1);
INSERT INTO fuel_distribution_hubs VALUES (2, 'Coastal Bay Hub', 'Canada', 'Atlantic', 300000, 44.65, -63.57, '2010-09-30', 102, '555-5678', 'manager2@example.com', '24/7', 2.30, 28, 'Aboveground', 4, '2024-01-10', 9500.3, 40.0, -3.5, 0, 1);
INSERT INTO fuel_distribution_hubs VALUES (3, 'Desert Edge Hub', 'USA', 'Southwest', 400000, 33.45, -112.07, '2012-04-20', 103, '555-9012', 'manager3@example.com', '06:00-22:00', 2.60, 22, 'Underground', 3, '2023-11-20', 11000.0, 50.0, -8.0, 1, 0);

-- Table describing vehicle OEM warranty claims
CREATE TABLE vehicle_oem_warranty_claims
(
    ClaimID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    OemName TEXT,
    ClaimDate DATE,
    IssueCategory TEXT,
    Description TEXT,
    SeverityLevel INTEGER,
    WarrantyStartDate DATE,
    WarrantyEndDate DATE,
    ClaimStatus TEXT,
    RepairCost REAL,
    ApprovedAmount REAL,
    DealerID INTEGER,
    ServiceCenter TEXT,
    TechnicianID INTEGER,
    PartsReplaced INTEGER,
    LaborHours REAL,
    FollowUpDate DATE,
    Notes TEXT,
    IsRecurring INTEGER,
    MileageAtClaim INTEGER,
    Region TEXT,
    Currency TEXT,
    ExchangeRate REAL
);
INSERT INTO vehicle_oem_warranty_claims VALUES (1001, 50001, 'AutoMakers Inc', '2023-08-15', 'Engine', 'Oil leak near gasket', 3, '2020-01-01', '2025-01-01', 'Approved', 1200.00, 1000.00, 201, 'Downtown Service', 301, 2, 5.5, '2023-09-01', 'Check for similar leaks', 0, 45000, 'West', 'USD', 1.0);
INSERT INTO vehicle_oem_warranty_claims VALUES (1002, 50002, 'Speedster Co', '2023-09-10', 'Transmission', 'Gear slipping under load', 4, '2019-05-20', '2024-05-20', 'Pending', 2500.00, 0.00, 202, 'Northside Center', 302, 3, 8.0, '2023-10-05', 'Awaiting parts', 1, 72000, 'East', 'USD', 1.0);
INSERT INTO vehicle_oem_warranty_claims VALUES (1003, 50003, 'RoadRunner Ltd', '2023-07-22', 'Electrical', 'Battery drain after start', 2, '2021-03-15', '2026-03-15', 'Rejected', 300.00, 0.00, 203, 'Eastside Garage', 303, 1, 2.0, '2023-08-15', 'Potential user error', 0, 32000, 'South', 'USD', 1.0);

-- Table describing station maintenance workorders
CREATE TABLE station_maintenance_workorders
(
    WorkorderID INTEGER PRIMARY KEY,
    StationID INTEGER,
    WorkorderDate DATE,
    RequestedBy TEXT,
    PriorityLevel INTEGER,
    WorkDescription TEXT,
    AssignedTeam TEXT,
    EstimatedHours REAL,
    ActualHours REAL,
    PartsNeeded TEXT,
    PartsCost REAL,
    LaborCost REAL,
    TotalCost REAL,
    Status TEXT,
    CompletionDate DATE,
    SafetyChecklistPassed INTEGER,
    InspectionRequired INTEGER,
    FollowUpRequired INTEGER,
    Notes TEXT,
    SupervisorID INTEGER,
    ContractorName TEXT,
    ContractID INTEGER,
    WarrantyApplicable INTEGER,
    CostCenter TEXT,
    ApprovalCode TEXT
);
INSERT INTO station_maintenance_workorders VALUES (50001, 101, '2024-01-05', 'Ops Manager', 2, 'Replace fuel pump', 'Team A', 3.5, 4.0, 'Pump Model X', 250.00, 150.00, 400.00, 'Completed', '2024-01-07', 1, 1, 0, 'Pump calibrated after replacement', 901, 'FuelTech Services', 3001, 1, 'FC-01', 'AP-123');
INSERT INTO station_maintenance_workorders VALUES (50002, 102, '2024-02-12', 'Safety Officer', 1, 'Inspect fire suppression system', 'Team B', 2.0, 2.5, 'N/A', 0.00, 200.00, 200.00, 'Completed', '2024-02-14', 1, 1, 1, 'System passed inspection', 902, 'SafetyFirst Ltd', 3002, 0, 'FC-02', 'AP-124');
INSERT INTO station_maintenance_workorders VALUES (50003, 103, '2024-03-20', 'Station Manager', 3, 'Roof leak repair', 'Team C', 5.0, 6.0, 'Roof Tiles', 150.00, 300.00, 450.00, 'InProgress', NULL, 0, 0, 1, 'Awaiting weather clearance', 903, 'RoofFix Co', 3003, 0, 'FC-03', 'AP-125');

-- Table describing logistics freight tracking events
CREATE TABLE logistics_freight_tracking_events
(
    EventID INTEGER PRIMARY KEY,
    ShipmentID INTEGER,
    EventTimestamp DATETIME,
    LocationLatitude REAL,
    LocationLongitude REAL,
    StatusCode TEXT,
    CarrierName TEXT,
    VehicleID INTEGER,
    DriverID INTEGER,
    TemperatureCelsius REAL,
    HumidityPercent REAL,
    WeightKg REAL,
    VolumeCubicMeters REAL,
    SealIntact INTEGER,
    GPSDeviceID TEXT,
    EstimatedArrival DATE,
    ActualArrival DATE,
    DelayMinutes INTEGER,
    Comments TEXT,
    DocumentationURL TEXT,
    IsCustomsClearancePending INTEGER,
    ZoneCode TEXT,
    PriorityLevel INTEGER,
    HandlingInstructions TEXT,
    RecordedBy TEXT
);
INSERT INTO logistics_freight_tracking_events VALUES (80001, 20001, '2024-01-10 08:30:00', 40.7128, -74.0060, 'Departed', 'TransCo', 501, 601, 22.5, 55.0, 1200.0, 3.2, 1, 'GPS-501', '2024-01-15', NULL, 0, 'On schedule', 'http://docs.example.com/evt80001', 0, 'NYC', 2, 'Handle with care', 'SystemA');
INSERT INTO logistics_freight_tracking_events VALUES (80002, 20002, '2024-01-12 14:45:00', 41.8781, -87.6298, 'Arrived', 'FastShip', 502, 602, 21.0, 50.0, 800.0, 2.5, 1, 'GPS-502', '2024-01-18', '2024-01-18', 0, 'Delivered on time', 'http://docs.example.com/evt80002', 0, 'CHI', 1, 'No special handling', 'SystemB');
INSERT INTO logistics_freight_tracking_events VALUES (80003, 20003, '2024-01-14 22:10:00', 34.0522, -118.2437, 'CustomsHold', 'GlobalLogix', 503, 603, 23.0, 60.0, 1500.0, 4.0, 0, 'GPS-503', '2024-01-20', NULL, 120, 'Awaiting clearance', 'http://docs.example.com/evt80003', 1, 'LAX', 3, 'Inspect seals', 'SystemC');

-- Table describing environmental sensor readings
CREATE TABLE environmental_sensor_readings
(
    ReadingID INTEGER PRIMARY KEY,
    SensorID INTEGER,
    Timestamp DATETIME,
    SensorType TEXT,
    ParameterName TEXT,
    Value REAL,
    Unit TEXT,
    Latitude REAL,
    Longitude REAL,
    AltitudeMeters REAL,
    BatteryLevelPercent INTEGER,
    SignalStrength INTEGER,
    FirmwareVersion TEXT,
    CalibrationDate DATE,
    IsActive INTEGER,
    MaintenanceDueDate DATE,
    AlertThresholdHigh REAL,
    AlertThresholdLow REAL,
    AlertTriggered INTEGER,
    Remarks TEXT,
    DataQualityScore INTEGER,
    NetworkID TEXT,
    InstallationDate DATE,
    OwnerOrganization TEXT,
    ComplianceStatus TEXT
);
INSERT INTO environmental_sensor_readings VALUES (90001, 701, '2024-01-01 00:00:00', 'AirQuality', 'PM2.5', 12.5, 'µg/m3', 38.8951, -77.0364, 15.0, 85, -70, 'v1.2.3', '2023-06-01', 1, '2024-07-01', 35.0, 5.0, 0, 'Normal operation', 95, 'NET-01', '2022-03-15', 'EnviroCorp', 'Compliant');
INSERT INTO environmental_sensor_readings VALUES (90002, 702, '2024-01-01 00:05:00', 'Weather', 'Temperature', 22.3, 'C', 34.0522, -118.2437, 30.0, 90, -65, 'v2.0.1', '2023-08-15', 1, '2024-08-15', 35.0, -10.0, 0, 'Stable', 98, 'NET-02', '2021-11-20', 'WeatherTech', 'Compliant');
INSERT INTO environmental_sensor_readings VALUES (90003, 703, '2024-01-01 00:10:00', 'Water', 'pH', 7.4, 'pH', 40.7128, -74.0060, 5.0, 78, -80, 'v1.0.0', '2022-12-10', 1, '2024-06-10', 8.5, 6.5, 0, 'Within range', 92, 'NET-03', '2020-05-05', 'AquaSense', 'Compliant');

-- Table describing marketing attribution models
CREATE TABLE marketing_attribution_models
(
    ModelID INTEGER PRIMARY KEY,
    ModelName TEXT,
    Description TEXT,
    CreationDate DATE,
    LastUpdateDate DATE,
    AttributionType TEXT,
    ChannelsIncluded TEXT,
    WeightingMethod TEXT,
    ConversionWindowDays INTEGER,
    DataSource TEXT,
    IsActive INTEGER,
    OwnerTeam TEXT,
    PerformanceScore REAL,
    ValidationMethod TEXT,
    Version INTEGER,
    DeploymentEnvironment TEXT,
    SupportsMultiTouch INTEGER,
    RequiredDataRefreshDays INTEGER,
    Notes TEXT,
    ApprovalStatus TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    RevisionNumber INTEGER,
    ConfidentialityLevel TEXT
);
INSERT INTO marketing_attribution_models VALUES (1, 'Linear2023', 'Equal credit across all touchpoints', '2023-01-01', '2023-12-31', 'Linear', 'Email,Social,Search,Display', 'Equal', 30, 'AnalyticsDB', 1, 'AttributionTeam', 0.85, 'Holdout', 3, 'Production', 1, 7, 'Standard model', 'Approved', 'JaneDoe', '2023-12-15', 2, 'Internal');
INSERT INTO marketing_attribution_models VALUES (2, 'TimeDecay2024', 'Decay credit over time', '2024-02-01', '2024-05-20', 'TimeDecay', 'Email,Search,Referral', 'Exponential', 60, 'CRMSystem', 1, 'AttributionTeam', 0.78, 'CrossValidation', 1, 'Staging', 1, 5, 'Beta version', 'Pending', 'JohnSmith', '2024-05-22', 1, 'Confidential');
INSERT INTO marketing_attribution_models VALUES (3, 'PositionBased2024', 'First and last touch high credit', '2024-03-15', '2024-07-10', 'PositionBased', 'Social,Display,Search', 'Hybrid', 45, 'DataLake', 0, 'AttributionTeam', 0.81, 'A/BTest', 2, 'Development', 0, 10, 'Experimental model', 'Draft', 'EmilyClark', '2024-07-12', 0, 'Public');

-- Table describing employee health monitoring
CREATE TABLE employee_health_monitoring
(
    RecordID INTEGER PRIMARY KEY,
    EmployeeID INTEGER,
    DateRecorded DATE,
    BloodPressureSystolic INTEGER,
    BloodPressureDiastolic INTEGER,
    HeartRateBPM INTEGER,
    StepsCount INTEGER,
    SleepHours REAL,
    StressLevel INTEGER,
    TemperatureCelsius REAL,
    HydrationLiters REAL,
    CovidVaccinationStatus TEXT,
    FluVaccinationStatus TEXT,
    HealthRiskScore REAL,
    WellnessProgramEnrolled INTEGER,
    Notes TEXT,
    SupervisorID INTEGER,
    Department TEXT,
    Location TEXT,
    DeviceID TEXT,
    DataSource TEXT,
    IsVerified INTEGER,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    ConfidentialityLevel TEXT
);
INSERT INTO employee_health_monitoring VALUES (10001, 301, '2024-01-10', 120, 80, 72, 8000, 7.5, 3, 36.6, 2.0, 'FullyVaccinated', 'Vaccinated', 0.15, 1, 'Good overall health', 201, 'Operations', 'HQ', 'DEV-001', 'Wearable', 1, 0, NULL, 'Internal');
INSERT INTO employee_health_monitoring VALUES (10002, 302, '2024-01-11', 130, 85, 78, 6500, 6.0, 5, 37.0, 1.5, 'PartiallyVaccinated', 'NotVaccinated', 0.30, 0, 'Elevated stress', 202, 'Logistics', 'Warehouse', 'DEV-002', 'MobileApp', 1, 1, '2024-01-15', 'Internal');
INSERT INTO employee_health_monitoring VALUES (10003, 303, '2024-01-12', 115, 75, 68, 10000, 8.0, 2, 36.5, 2.2, 'FullyVaccinated', 'Vaccinated', 0.10, 1, 'Excellent wellness', 203, 'Engineering', 'Remote', 'DEV-003', 'Wearable', 1, 0, NULL, 'Internal');

-- Table describing geo fence activity log
CREATE TABLE geo_fence_activity_log
(
    LogID INTEGER PRIMARY KEY,
    AssetID INTEGER,
    AssetType TEXT,
    FenceID INTEGER,
    FenceName TEXT,
    EntryTimestamp DATETIME,
    ExitTimestamp DATETIME,
    DurationSeconds INTEGER,
    LatitudeEntry REAL,
    LongitudeEntry REAL,
    LatitudeExit REAL,
    LongitudeExit REAL,
    SpeedDuringEntryKPH REAL,
    SpeedDuringExitKPH REAL,
    ViolationType TEXT,
    AlertSent INTEGER,
    AlertMethod TEXT,
    OperatorID INTEGER,
    Remarks TEXT,
    CreatedBy TEXT,
    CreatedAt DATETIME,
    IsResolved INTEGER,
    ResolutionTimestamp DATETIME,
    ResolutionNotes TEXT,
    SeverityLevel INTEGER,
    AssociatedEventID INTEGER
);
INSERT INTO geo_fence_activity_log VALUES (40001, 801, 'Vehicle', 101, 'Warehouse Perimeter', '2024-01-05 08:15:00', '2024-01-05 08:25:00', 600, 40.7128, -74.0059, 40.7135, -74.0065, 45.0, 0.0, 'Entry', 1, 'SMS', 901, 'Normal entry', 'SystemA', '2024-01-05 08:26:00', 0, NULL, NULL, 2, 80001);
INSERT INTO geo_fence_activity_log VALUES (40002, 802, 'Drone', 102, 'No-Fly Zone', '2024-01-06 14:00:00', NULL, NULL, 34.0522, -118.2437, NULL, NULL, 60.0, NULL, 'Violation', 1, 'Email', 902, 'Entered restricted airspace', 'SystemB', '2024-01-06 14:01:00', 0, NULL, NULL, 5, 80002);
INSERT INTO geo_fence_activity_log VALUES (40003, 803, 'Vehicle', 103, 'Depot Gate', '2024-01-07 09:30:00', '2024-01-07 09:35:00', 300, 41.8781, -87.6298, 41.8785, -87.6302, 15.0, 0.0, 'Exit', 1, 'Push', 903, 'Exited after loading', 'SystemC', '2024-01-07 09:36:00', 1, '2024-01-07 10:00:00', 'Issue cleared', 1, 80003);

-- Table describing renewable energy generation sites
CREATE TABLE renewable_energy_generation_sites
(
    SiteID INTEGER PRIMARY KEY,
    SiteName TEXT,
    Country TEXT,
    Region TEXT,
    EnergyType TEXT,
    CapacityMW REAL,
    Latitude REAL,
    Longitude REAL,
    CommissionDate DATE,
    OwnerOrganization TEXT,
    OperatorOrganization TEXT,
    Status TEXT,
    AverageProductionMWh REAL,
    CapacityFactorPercent REAL,
    PrimaryFuelSource TEXT,
    GridConnectionPoint TEXT,
    MaintenanceSchedule TEXT,
    LastInspectionDate DATE,
    EnvironmentalImpactScore REAL,
    WaterUsageCubicMetersPerYear REAL,
    LandUseAcres REAL,
    SubsidyAmountUSD REAL,
    TaxCreditUSD REAL,
    PowerPurchaseAgreementID INTEGER,
    Notes TEXT,
    IsActive INTEGER
);
INSERT INTO renewable_energy_generation_sites VALUES (6001, 'Sunrise Solar Farm', 'USA', 'Southwest', 'Solar', 150.0, 35.1234, -115.5678, '2018-04-01', 'GreenEnergy Corp', 'SolarOps Ltd', 'Operational', 180000.0, 85.0, 'Sunlight', 'Substation-12', 'Quarterly', '2023-12-15', 4.5, 0.0, 2000.0, 500000.0, 200000.0, 7001, 'Expansion planned 2025', 1);
INSERT INTO renewable_energy_generation_sites VALUES (6002, 'Wind Ridge Park', 'Canada', 'Prairies', 'Wind', 300.0, 51.0456, -105.2345, '2020-09-15', 'WindPower Inc', 'WindOps LLC', 'Operational', 720000.0, 80.0, 'Wind', 'Substation-34', 'SemiAnnual', '2024-01-10', 3.8, 0.0, 3500.0, 800000.0, 300000.0, 7002, 'Turbine upgrade 2026', 1);
INSERT INTO renewable_energy_generation_sites VALUES (6003, 'Hydro Creek Plant', 'USA', 'Pacific Northwest', 'Hydro', 250.0, 47.6097, -122.3331, '2015-06-20', 'AquaEnergy', 'HydroOps Group', 'Operational', 1500000.0, 68.0, 'Water', 'Substation-56', 'Annual', '2023-11-05', 2.5, 500000.0, 5000.0, 600000.0, 250000.0, 7003, 'Fish ladder installed 2022', 1);

-- Table describing smart parking zone usage
CREATE TABLE smart_parking_zone_usage
(
    UsageID INTEGER PRIMARY KEY,
    ZoneID INTEGER,
    ZoneName TEXT,
    City TEXT,
    State TEXT,
    TotalSpots INTEGER,
    OccupiedSpots INTEGER,
    AvailabilityPercent REAL,
    AverageParkingDurationMinutes REAL,
    PeakHourStart TIME,
    PeakHourEnd TIME,
    TicketRevenueUSD REAL,
    EnforcementViolations INTEGER,
    SensorCoveragePercent REAL,
    LastUpdateTimestamp DATETIME,
    DataSource TEXT,
    IsDynamicPricingEnabled INTEGER,
    CurrentPricePerHourUSD REAL,
    HistoricalAveragePriceUSD REAL,
    WeatherImpactFactor REAL,
    EventImpactFactor REAL,
    MaintenanceStatus TEXT,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedAt DATETIME,
    IsActive INTEGER,
    ForecastedOccupancyPercent REAL
);
INSERT INTO smart_parking_zone_usage VALUES (9001, 301, 'Downtown Center', 'Metropolis', 'NY', 500, 350, 70.0, 45.0, '08:00:00', '10:00:00', 12500.0, 12, 95.0, '2024-01-07 12:00:00', 'SensorNetwork', 1, 3.5, 3.0, 1.1, 1.2, 'Operational', 'Stable usage', 'SystemX', '2024-01-07 12:05:00', 1, 68.0);
INSERT INTO smart_parking_zone_usage VALUES (9002, 302, 'Airport West', 'AeroCity', 'CA', 800, 600, 75.0, 60.0, '07:00:00', '09:00:00', 21000.0, 8, 92.0, '2024-01-07 12:05:00', 'SensorNetwork', 1, 4.0, 3.8, 0.9, 1.0, 'Operational', 'Peak due to flight schedule', 'SystemY', '2024-01-07 12:10:00', 1, 73.0);
INSERT INTO smart_parking_zone_usage VALUES (9003, 303, 'Stadium East', 'Sportstown', 'TX', 400, 380, 95.0, 30.0, '17:00:00', '19:00:00', 18000.0, 20, 98.0, '2024-01-07 12:10:00', 'SensorNetwork', 0, 2.5, 2.5, 1.3, 2.0, 'HighDemand', 'Event day usage', 'SystemZ', '2024-01-07 12:15:00', 1, 92.0);
