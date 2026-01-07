-- Fleet maintenance contracts for vehicle fleets
CREATE TABLE fleet_maintenance_contracts (
    ContractID INTEGER PRIMARY KEY,
    FleetID INTEGER,
    VendorID INTEGER,
    ServiceType TEXT,
    ContractStartDate DATE,
    ContractEndDate DATE,
    MaintenanceFrequencyDays INTEGER,
    CostPerService REAL,
    Currency TEXT,
    SLA_Level TEXT,
    NotificationEmail TEXT,
    PaymentTermsDays INTEGER,
    AutoRenewFlag INTEGER,
    LastRenewalDate DATE,
    NextRenewalDate DATE,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContractStatus TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);
INSERT INTO fleet_maintenance_contracts VALUES (1, 101, 201, OilChange, 2022-01-01, 2024-01-01, 180, 250.00, USD, Gold, maint1@example.com, 30, 1, 2023-01-01, 2024-01-01, AliceSmith, 5551234567, Active, 2022-01-01, 2023-06-15);
INSERT INTO fleet_maintenance_contracts VALUES (2, 102, 202, TireRotation, 2021-06-15, 2023-06-15, 365, 150.00, EUR, Silver, maint2@example.com, 45, 0, 2022-06-15, 2023-06-15, BobJones, 5552345678, Expired, 2021-06-15, 2022-12-01);
INSERT INTO fleet_maintenance_contracts VALUES (3, 103, 203, BrakeInspection, 2023-03-01, 2025-03-01, 90, 300.00, GBP, Platinum, maint3@example.com, 60, 1, 2024-03-01, 2025-03-01, CarolLee, 5553456789, Active, 2023-03-01, 2023-08-20);

-- Fuel station communication logs for internal messaging
CREATE TABLE fuel_station_communication_logs (
    LogID INTEGER PRIMARY KEY,
    StationID INTEGER,
    MessageType TEXT,
    SenderID INTEGER,
    ReceiverID INTEGER,
    SentTimestamp DATETIME,
    ReceivedTimestamp DATETIME,
    MessageSubject TEXT,
    MessageBody TEXT,
    PriorityLevel INTEGER,
    Channel TEXT,
    AttachmentFlag INTEGER,
    EncryptionUsed INTEGER,
    RetryCount INTEGER,
    Status TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    DeviceID TEXT,
    FirmwareVersion TEXT,
    NetworkSignalStrength INTEGER
);
INSERT INTO fuel_station_communication_logs VALUES (1, 301, Alert, 9001, 9002, 2023-07-10 08:15:00, 2023-07-10 08:15:05, LowFuel, Fuel level below threshold, 1, SMS, 0, 1, 0, Sent, 2023-07-10, 2023-07-10, DEV001, v1.2.3, 78);
INSERT INTO fuel_station_communication_logs VALUES (2, 302, Update, 9003, 9004, 2023-07-11 12:30:00, 2023-07-11 12:30:02, PriceChange, New price uploaded, 2, Email, 1, 1, 0, Delivered, 2023-07-11, 2023-07-11, DEV002, v1.3.0, 85);
INSERT INTO fuel_station_communication_logs VALUES (3, 303, Info, 9005, 9006, 2023-07-12 16:45:00, 2023-07-12 16:45:01, MaintenanceSchedule, Upcoming maintenance on 2023-08-01, 3, Push, 0, 0, 0, Read, 2023-07-12, 2023-07-12, DEV003, v1.2.8, 70);

-- Electric vehicle charging pricing models
CREATE TABLE electric_vehicle_charging_pricing (
    PricingID INTEGER PRIMARY KEY,
    StationID INTEGER,
    PricingModel TEXT,
    StartDate DATE,
    EndDate DATE,
    FlatRate REAL,
    PerKWhRate REAL,
    PerMinuteRate REAL,
    Currency TEXT,
    PeakHoursStart TIME,
    PeakHoursEnd TIME,
    PeakMultiplier REAL,
    WeekendDiscount REAL,
    MembershipLevel TEXT,
    MaxSessionDurationMinutes INTEGER,
    MinChargeKWh REAL,
    DynamicPricingFlag INTEGER,
    CreationTimestamp DATETIME,
    LastModifiedTimestamp DATETIME,
    Remarks TEXT
);
INSERT INTO electric_vehicle_charging_pricing VALUES (1, 401, TimeBased, 2023-01-01, 2023-12-31, 0.00, 0.20, 0.05, USD, 08:00, 20:00, 1.5, 0.10, Gold, 180, 5.0, 1, 2023-01-01 00:00:00, 2023-06-01 12:00:00, StandardPeakPricing);
INSERT INTO electric_vehicle_charging_pricing VALUES (2, 402, FlatRate, 2023-03-01, 2024-02-28, 10.00, 0.00, 0.00, EUR, 00:00, 23:59, 1.0, 0.00, None, 240, 0.0, 0, 2023-03-01 00:00:00, 2023-07-15 09:30:00, UnlimitedFlatRate);
INSERT INTO electric_vehicle_charging_pricing VALUES (3, 403, Dynamic, 2023-06-01, 2024-05-31, 0.00, 0.25, 0.07, GBP, 07:00, 19:00, 1.8, 0.15, Platinum, 120, 3.0, 1, 2023-06-01 00:00:00, 2023-08-20 14:45:00, AIOptimizedPricing);

-- Customer engagement campaign details
CREATE TABLE customer_engagement_campaigns (
    CampaignID INTEGER PRIMARY KEY,
    CampaignName TEXT,
    StartDate DATE,
    EndDate DATE,
    TargetSegment TEXT,
    Channel TEXT,
    Budget REAL,
    Currency TEXT,
    ExpectedReach INTEGER,
    ActualReach INTEGER,
    ClickThroughRate REAL,
    ConversionRate REAL,
    CostPerAcquisition REAL,
    CreativeVersion TEXT,
    A/BTestFlag INTEGER,
    GeoTargeting TEXT,
    FrequencyCap INTEGER,
    OptOutRate REAL,
    CreatedBy INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);
INSERT INTO customer_engagement_campaigns VALUES (1, SummerFuelPromo, 2023-06-01, 2023-08-31, Retail, Email, 50000.00, USD, 200000, 185000, 0.04, 0.02, 2.70, V1, 1, National, 3, 0.01, 9001, 2023-05-20 10:00:00, 2023-07-15 16:30:00);
INSERT INTO customer_engagement_campaigns VALUES (2, WinterSafetyDrive, 2023-10-01, 2024-01-31, Commercial, SMS, 30000.00, EUR, 120000, 118500, 0.06, 0.03, 1.90, V2, 0, Regional, 2, 0.005, 9002, 2023-09-15 09:15:00, 2023-12-10 14:20:00);
INSERT INTO customer_engagement_campaigns VALUES (3, LoyaltyBoost2024, 2024-02-01, 2024-04-30, Loyalty, Push, 40000.00, GBP, 150000, 0, 0.00, 0.00, 0.00, V3, 1, City, 4, 0.015, 9003, 2024-01-10 11:45:00, 2024-02-20 08:05:00);

-- Roadway sign inventory management
CREATE TABLE roadway_sign_inventory (
    SignID INTEGER PRIMARY KEY,
    LocationID INTEGER,
    SignType TEXT,
    Material TEXT,
    HeightCm INTEGER,
    WidthCm INTEGER,
    InstallationDate DATE,
    LastInspectionDate DATE,
    ConditionStatus TEXT,
    IlluminationFlag INTEGER,
    LEDCount INTEGER,
    PowerSource TEXT,
    MaintenanceContractID INTEGER,
    OwnerAgency TEXT,
    Latitude REAL,
    Longitude REAL,
    AssetTag TEXT,
    WarrantyExpiration DATE,
    ReplacementCost REAL,
    CreatedTimestamp DATETIME,
    UpdatedTimestamp DATETIME,
    Notes TEXT
);
INSERT INTO roadway_sign_inventory VALUES (1, 1001, Directional, Aluminum, 200, 60, 2020-05-10, 2023-05-10, Good, 1, 8, Solar, 301, DOT, 40.7128, -74.0060, TAG001, 2025-05-10, 1200.00, 2020-05-10 08:00:00, 2023-05-10 09:30:00, MainStNorth);
INSERT INTO roadway_sign_inventory VALUES (2, 1002, SpeedLimit, Steel, 150, 50, 2019-03-15, 2023-03-15, Fair, 0, 0, Mains, 302, City, 34.0522, -118.2437, TAG002, 2024-03-15, 800.00, 2019-03-15 07:45:00, 2023-03-15 10:20:00, SunsetBlvd);
INSERT INTO roadway_sign_inventory VALUES (3, 1003, Warning, Composite, 180, 70, 2021-11-20, 2023-11-20, Excellent, 1, 12, Electric, 303, County, 41.8781, -87.6298, TAG003, 2026-11-20, 1500.00, 2021-11-20 09:15:00, 2023-11-20 08:45:00, LakeShoreDr);

-- Air quality sensor deployment records
CREATE TABLE air_quality_sensor_deployments (
    DeploymentID INTEGER PRIMARY KEY,
    SensorID TEXT,
    SiteID INTEGER,
    DeploymentDate DATE,
    RemovalDate DATE,
    SensorModel TEXT,
    Manufacturer TEXT,
    CalibrationDate DATE,
    CalibrationCertificate TEXT,
    MeasurementRange TEXT,
    AccuracyPPM REAL,
    PowerSupply TEXT,
    CommunicationProtocol TEXT,
    DataRetentionDays INTEGER,
    MaintenanceFrequencyDays INTEGER,
    LastMaintenanceDate DATE,
    FirmwareVersion TEXT,
    Latitude REAL,
    Longitude REAL,
    Status TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Comments TEXT
);
INSERT INTO air_quality_sensor_deployments VALUES (1, SENS001, 2001, 2022-01-15, NULL, AQ500, EnviroTech, 2022-01-10, CERT001, 0-500, 0.5, Battery, LoRaWAN, 365, 180, 2023-07-01, v2.1.0, 37.7749, -122.4194, Active, 2022-01-15 10:00:00, 2023-07-01 11:30:00, DowntownPark);
INSERT INTO air_quality_sensor_deployments VALUES (2, SENS002, 2002, 2021-06-20, 2023-06-20, AQ300, AirMetrics, 2021-06-15, CERT002, 0-300, 0.3, Solar, ZigBee, 730, 365, 2022-12-15, v1.9.4, 34.0522, -118.2437, Retired, 2021-06-20 09:30:00, 2023-06-20 10:45:00, WestSide);
INSERT INTO air_quality_sensor_deployments VALUES (3, SENS003, 2003, 2023-03-05, NULL, AQ700, CleanAir, 2023-03-01, CERT003, 0-700, 0.7, Mains, NB-IoT, 180, 90, 2023-08-10, v3.0.1, 40.7128, -74.0060, Active, 2023-03-05 08:15:00, 2023-08-10 09:00:00, MidtownStation);

-- Hydrocarbon transport route definitions
CREATE TABLE hydrocarbon_transport_routes (
    RouteID INTEGER PRIMARY KEY,
    OriginFacilityID INTEGER,
    DestinationFacilityID INTEGER,
    Mode TEXT,
    DistanceKm REAL,
    CapacityBarrelsPerDay INTEGER,
    OperatingCompany TEXT,
    RegulationCode TEXT,
    PreferredRouteFlag INTEGER,
    EstimatedTransitTimeHours REAL,
    RiskLevel TEXT,
    InspectionFrequencyDays INTEGER,
    LastInspectionDate DATE,
    MaintenanceWindowStart TIME,
    MaintenanceWindowEnd TIME,
    EnvironmentalImpactScore REAL,
    CreatedDate DATE,
    ModifiedDate DATE,
    Status TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    Comments TEXT,
    GeoJSONPath TEXT
);
INSERT INTO hydrocarbon_transport_routes VALUES (1, 5001, 6001, Pipeline, 350.5, 20000, PetroCo, RC01, 1, 12.5, Medium, 180, 2023-04-01, 02:00, 04:00, 3.2, 2022-01-01, 2023-04-10, Active, JohnDoe, 5551112222, MainlineNorth, '{"type":"LineString","coordinates":[[0,0],[1,1]]}');
INSERT INTO hydrocarbon_transport_routes VALUES (2, 5002, 6002, Rail, 120.0, 15000, RailTrans, RC02, 0, 8.0, Low, 365, 2023-01-15, 01:00, 03:00, 2.1, 2021-06-15, 2023-01-20, Active, JaneSmith, 5553334444, RegionalRail, '{"type":"LineString","coordinates":[[2,2],[3,3]]}');
INSERT INTO hydrocarbon_transport_routes VALUES (3, 5003, 6003, Truck, 45.7, 5000, TruckLogistics, RC03, 0, 2.5, High, 90, 2023-05-05, 23:00, 01:00, 4.5, 2022-09-30, 2023-05-10, Maintenance, MikeBrown, 5555556666, LocalDelivery, '{"type":"LineString","coordinates":[[4,4],[5,5]]}');

-- Station utility billing records
CREATE TABLE station_utility_billing (
    BillingID INTEGER PRIMARY KEY,
    StationID INTEGER,
    UtilityType TEXT,
    BillingPeriodStart DATE,
    BillingPeriodEnd DATE,
    ConsumptionUnits REAL,
    UnitOfMeasure TEXT,
    RatePerUnit REAL,
    Currency TEXT,
    TotalAmount REAL,
    InvoiceNumber TEXT,
    PaymentDueDate DATE,
    PaymentStatus TEXT,
    LateFeeApplied REAL,
    MeterID TEXT,
    ReadingDate DATE,
    Adjustments REAL,
    CreatedTimestamp DATETIME,
    UpdatedTimestamp DATETIME,
    SubmittedBy INTEGER,
    ApprovedBy INTEGER,
    Remarks TEXT,
    ServiceProvider TEXT
);
INSERT INTO station_utility_billing VALUES (1, 701, Electricity, 2023-04-01, 2023-04-30, 12500.5, kWh, 0.12, USD, 1500.06, INV001, 2023-05-15, Paid, 0.00, MTR123, 2023-04-30, 0.00, 2023-04-30 09:00:00, 2023-05-01 10:15:00, 9001, 9005, PaidOnTime, PowerCo);
INSERT INTO station_utility_billing VALUES (2, 702, Water, 2023-04-01, 2023-04-30, 800.0, Gallons, 0.005, EUR, 4.00, INV002, 2023-05-15, Pending, 0.00, MTR124, 2023-04-30, 0.00, 2023-04-30 09:30:00, 2023-05-02 11:20:00, 9002, 9006, AwaitingPayment, WaterWorks);
INSERT INTO station_utility_billing VALUES (3, 703, Gas, 2023-04-01, 2023-04-30, 3000.0, Therms, 0.03, GBP, 90.00, INV003, 2023-05-15, Overdue, 5.00, MTR125, 2023-04-30, -2.00, 2023-04-30 10:00:00, 2023-05-03 12:45:00, 9003, 9007, LateFeeApplied, GasSupplyLtd);

-- Vehicle software update schedule
CREATE TABLE vehicle_software_updates (
    UpdateID INTEGER PRIMARY KEY,
    VehicleModel TEXT,
    SoftwareVersion TEXT,
    ReleaseDate DATE,
    DeploymentStartDate DATE,
    DeploymentEndDate DATE,
    UpdateSizeMB REAL,
    CriticalityLevel TEXT,
    AffectedModules TEXT,
    Description TEXT,
    RollbackAvailable INTEGER,
    MinimumOSVersion TEXT,
    RequiredHardware TEXT,
    ValidationTestPassed INTEGER,
    DeploymentMethod TEXT,
    TargetFleetID INTEGER,
    CreatedBy INTEGER,
    CreatedAt DATETIME,
    UpdatedBy INTEGER,
    UpdatedAt DATETIME,
    Status TEXT,
    Notes TEXT,
    ReleaseNotesURL TEXT
);
INSERT INTO vehicle_software_updates VALUES (1, ModelX, v5.2.1, 2023-06-01, 2023-06-05, 2023-06-20, 250.0, High, Engine, EngineControlUpdate, 1, v4.0, ECUv2, 1, OTA, 101, 9001, 2023-06-01 08:00:00, 9002, 2023-06-21 09:30:00, Completed, StableRelease, http://example.com/release/v5.2.1);
INSERT INTO vehicle_software_updates VALUES (2, ModelY, v3.9.4, 2023-07-10, 2023-07-12, 2023-07-25, 180.5, Medium, Infotainment, UIRefresh, 1, v3.5, HUDv1, 1, USB, 102, 9003, 2023-07-10 09:15:00, 9004, 2023-07-26 10:45:00, Completed, MinorBugFixes, http://example.com/release/v3.9.4);
INSERT INTO vehicle_software_updates VALUES (3, ModelZ, v2.1.0, 2023-08-15, 2023-08-18, 2023-08-30, 300.0, Low, Navigation, MapDataUpdate, 0, v2.0, GPSv3, 1, OTA, 103, 9005, 2023-08-15 07:30:00, 9006, 2023-08-31 08:20:00, Pending, ScheduledForNextMonth, http://example.com/release/v2.1.0);

-- Logistics drone flight logs
CREATE TABLE logistics_drone_flight_logs (
    FlightLogID INTEGER PRIMARY KEY,
    DroneID TEXT,
    OperatorID INTEGER,
    MissionID INTEGER,
    LaunchTimestamp DATETIME,
    LandingTimestamp DATETIME,
    OriginLatitude REAL,
    OriginLongitude REAL,
    DestinationLatitude REAL,
    DestinationLongitude REAL,
    FlightDistanceKm REAL,
    AverageSpeedKmh REAL,
    BatteryStartPercent INTEGER,
    BatteryEndPercent INTEGER,
    PayloadWeightKg REAL,
    WeatherConditions TEXT,
    FlightStatus TEXT,
    IncidentFlag INTEGER,
    IncidentDescription TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Remarks TEXT,
    RegulatoryCompliance TEXT
);
INSERT INTO logistics_drone_flight_logs VALUES (1, DRN001, 8001, 9001, 2023-07-01 08:00:00, 2023-07-01 08:30:00, 40.7128, -74.0060, 40.7306, -73.9352, 12.5, 25.0, 100, 70, 2.5, Clear, Completed, 0, , 2023-07-01 09:00:00, 2023-07-01 09:05:00, FirstDelivery, Compliant);
INSERT INTO logistics_drone_flight_logs VALUES (2, DRN002, 8002, 9002, 2023-07-02 14:15:00, 2023-07-02 14:45:00, 34.0522, -118.2437, 34.0407, -118.2468, 5.0, 12.0, 100, 60, 1.0, Windy, Completed, 0, , 2023-07-02 15:00:00, 2023-07-02 15:02:00, SecondDelivery, Compliant);
INSERT INTO logistics_drone_flight_logs VALUES (3, DRN003, 8003, 9003, 2023-07-03 10:20:00, 2023-07-03 10:55:00, 41.8781, -87.6298, 41.8850, -87.6200, 8.2, 16.4, 100, 55, 3.0, Rain, Interrupted, 1, BatteryDrop, 2023-07-03 11:10:00, 2023-07-03 11:12:00, ThirdDelivery, Compliant);

-- Station energy usage metrics
CREATE TABLE station_energy_usage (
    UsageID INTEGER PRIMARY KEY,
    StationID INTEGER,
    ReportingDate DATE,
    EnergyConsumedMWh REAL,
    PeakDemandMW REAL,
    OffPeakDemandMW REAL,
    RenewableSharePercent REAL,
    CarbonEmissionsTonnes REAL,
    MeterReadingStart REAL,
    MeterReadingEnd REAL,
    DurationHours REAL,
    TemperatureCelsius REAL,
    HumidityPercent REAL,
    WeatherCondition TEXT,
    GridOperator TEXT,
    DemandResponseParticipated INTEGER,
    DemandResponseEventID INTEGER,
    CreatedTimestamp DATETIME,
    UpdatedTimestamp DATETIME,
    VerifiedBy INTEGER,
    VerificationStatus TEXT,
    Comments TEXT,
    DataSource TEXT
);
INSERT INTO station_energy_usage VALUES (1, 801, 2023-06-30, 1.25, 0.8, 0.2, 30.0, 0.12, 5000.0, 5001.25, 24.0, 22.5, 55, Clear, GridCo, 1, 1001, 2023-07-01 08:00:00, 2023-07-02 09:00:00, 9001, Verified, MonthlyReport, SCADA);
INSERT INTO station_energy_usage VALUES (2, 802, 2023-06-30, 1.10, 0.7, 0.15, 25.0, 0.10, 4800.0, 4801.10, 24.0, 18.0, 60, Cloudy, GridCo, 0, NULL, 2023-07-01 08:30:00, 2023-07-02 09:15:00, 9002, Pending, AwaitingReview, SCADA);
INSERT INTO station_energy_usage VALUES (3, 803, 2023-06-30, 1.40, 0.85, 0.25, 35.0, 0.14, 5200.0, 5201.40, 24.0, 25.0, 50, Sunny, GridCo, 1, 1002, 2023-07-01 09:00:00, 2023-07-02 09:30:00, 9003, Verified, MonthlyReport, SCADA);

-- Vehicle insurance claim records
CREATE TABLE vehicle_insurance_claims (
    ClaimID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    PolicyNumber TEXT,
    ClaimDate DATE,
    IncidentDate DATE,
    IncidentType TEXT,
    ClaimAmount REAL,
    Currency TEXT,
    AdjusterID INTEGER,
    Status TEXT,
    SettlementDate DATE,
    PaymentMethod TEXT,
    DeductibleAmount REAL,
    ClaimDescription TEXT,
    PoliceReportFlag INTEGER,
    WitnessCount INTEGER,
    LocationLatitude REAL,
    LocationLongitude REAL,
    EstimatedRepairCost REAL,
    ApprovedBy INTEGER,
    ApprovalDate DATE,
    CreatedTimestamp DATETIME,
    UpdatedTimestamp DATETIME,
    Remarks TEXT,
    LossType TEXT
);
INSERT INTO vehicle_insurance_claims VALUES (1, 9001, POL12345, 2023-05-10, 2023-05-08, Collision, 5000.00, USD, 7001, Approved, 2023-05-20, Check, 500.00, RearEndCollision, 1, 2, 40.7128, -74.0060, 5200.00, 8001, 2023-05-18, 2023-05-10 09:00:00, 2023-05-18 14:30:00, Settled, PropertyDamage);
INSERT INTO vehicle_insurance_claims VALUES (2, 9002, POL67890, 2023-06-01, 2023-05-30, Theft, 12000.00, EUR, 7002, Pending, NULL, NULL, 0.00, VehicleStolen, 0, 0, 34.0522, -118.2437, 12000.00, 8002, NULL, 2023-06-01 10:15:00, 2023-06-01 10:20:00, UnderInvestigation, Theft);
INSERT INTO vehicle_insurance_claims VALUES (3, 9003, POL54321, 2023-07-15, 2023-07-14, Fire, 8000.00, GBP, 7003, Rejected, 2023-07-20, BankTransfer, 300.00, EngineFire, 1, 1, 51.5074, -0.1278, 8300.00, 8003, 2023-07-18, 2023-07-15 11:30:00, 2023-07-18 12:45:00, NoCoverage, PropertyDamage);

-- Supplier performance metrics
CREATE TABLE supplier_performance_metrics (
    MetricID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    EvaluationPeriodStart DATE,
    EvaluationPeriodEnd DATE,
    OnTimeDeliveryPercent REAL,
    QualityScore REAL,
    CostCompliancePercent REAL,
    ResponsivenessScore REAL,
    ContractualComplianceFlag INTEGER,
    IncidentCount INTEGER,
    IncidentSeverityAvg REAL,
    AuditScore REAL,
    SustainabilityScore REAL,
    InnovationScore REAL,
    CommunicationScore REAL,
    TotalScore REAL,
    Ranking INTEGER,
    ReviewedBy INTEGER,
    ReviewDate DATE,
    Comments TEXT,
    CreatedTimestamp DATETIME,
    UpdatedTimestamp DATETIME,
    SourceSystem TEXT,
    AdditionalNotes TEXT
);
INSERT INTO supplier_performance_metrics VALUES (1, 10001, 2023-01-01, 2023-12-31, 96.5, 4.8, 98.0, 4.5, 1, 2, 3.0, 85.0, 80.0, 70.0, 90.0, 87.5, 1, 9001, 2024-01-05, ExcellentPerformance, 2023-12-31 16:00:00, 2024-01-05 09:30:00, ERP, NoIssues);
INSERT INTO supplier_performance_metrics VALUES (2, 10002, 2023-01-01, 2023-12-31, 88.0, 4.0, 92.5, 3.8, 1, 5, 4.2, 78.0, 70.0, 60.0, 80.0, 77.5, 3, 9002, 2024-01-06, NeedsImprovement, 2023-12-31 16:15:00, 2024-01-06 10:00:00, ERP, FollowUpRequired);
INSERT INTO supplier_performance_metrics VALUES (3, 10003, 2023-01-01, 2023-12-31, 92.0, 4.5, 95.0, 4.2, 1, 1, 2.5, 82.0, 85.0, 75.0, 88.0, 84.0, 2, 9003, 2024-01-07, Consistent, 2023-12-31 16:30:00, 2024-01-07 11:15:00, ERP, GoodStanding);

-- Regional fuel demand forecast
CREATE TABLE regional_fuel_demand_forecast (
    ForecastID INTEGER PRIMARY KEY,
    RegionCode TEXT,
    ForecastMonth TEXT,
    ProductID INTEGER,
    ProjectedVolumeLiters REAL,
    HistoricalAvgVolumeLiters REAL,
    GrowthRatePercent REAL,
    ConfidenceIntervalLow REAL,
    ConfidenceIntervalHigh REAL,
    SeasonalAdjustmentFactor REAL,
    EconomicIndicatorIndex REAL,
    PriceElasticity REAL,
    ForecastMethodology TEXT,
    CreatedBy INTEGER,
    CreatedAt DATETIME,
    UpdatedBy INTEGER,
    UpdatedAt DATETIME,
    Status TEXT,
    Remarks TEXT,
    Source TEXT,
    ValidationScore REAL,
    ReviewDate DATE,
    ApprovedBy INTEGER
);
INSERT INTO regional_fuel_demand_forecast VALUES (1, NA01, 2023-07, 1, 5000000.0, 4800000.0, 4.2, 4700000.0, 5100000.0, 1.05, 102.5, -0.8, TimeSeries, 9001, 2023-06-15 08:00:00, 9002, 2023-06-20 09:30:00, Draft, InitialRun, Internal, 85.0, 2023-06-25, 8001);
INSERT INTO regional_fuel_demand_forecast VALUES (2, EU02, 2023-07, 2, 3000000.0, 3100000.0, -3.2, 2950000.0, 3050000.0, 0.97, 98.0, -0.5, Regression, 9003, 2023-06-16 10:15:00, 9004, 2023-06-21 11:45:00, Final, Adjusted, External, 90.0, 2023-06-26, 8002);
INSERT INTO regional_fuel_demand_forecast VALUES (3, AP03, 2023-07, 3, 2000000.0, 1950000.0, 2.6, 1900000.0, 2000000.0, 1.02, 105.0, -0.6, MachineLearning, 9005, 2023-06-17 12:30:00, 9006, 2023-06-22 13:55:00, Review, PendingApproval, Partner, 88.5, 2023-06-27, 8003);

-- Digital wallet transaction logs
CREATE TABLE digital_wallet_transactions (
    TransactionLogID INTEGER PRIMARY KEY,
    WalletID TEXT,
    UserID INTEGER,
    TransactionDate DATE,
    TransactionTime TEXT,
    TransactionAmount REAL,
    Currency TEXT,
    MerchantID INTEGER,
    MerchantCategory TEXT,
    TransactionType TEXT,
    CardToken TEXT,
    AuthorizationCode TEXT,
    SettlementStatus TEXT,
    FraudScore REAL,
    DeviceID TEXT,
    IPAddress TEXT,
    GeoLatitude REAL,
    GeoLongitude REAL,
    RefundFlag INTEGER,
    OriginalTransactionID INTEGER,
    CreatedTimestamp DATETIME,
    UpdatedTimestamp DATETIME,
    Notes TEXT,
    ProcessingGateway TEXT
);
INSERT INTO digital_wallet_transactions VALUES (1, WAL001, 9001, 2023-07-01, 14:20:00, 25.00, USD, 5001, Retail, Purchase, CTK001, AUTH123, Settled, 0.1, DEV001, 192.168.1.10, 40.7128, -74.0060, 0, NULL, 2023-07-01 14:21:00, 2023-07-01 14:25:00, FirstPurchase, GatewayA);
INSERT INTO digital_wallet_transactions VALUES (2, WAL002, 9002, 2023-07-02, 09:45:00, 100.00, EUR, 5002, Travel, Purchase, CTK002, AUTH456, Settled, 0.3, DEV002, 192.168.1.11, 34.0522, -118.2437, 0, NULL, 2023-07-02 09:46:00, 2023-07-02 09:50:00, FlightTicket, GatewayB);
INSERT INTO digital_wallet_transactions VALUES (3, WAL003, 9003, 2023-07-03, 18:10:00, 5.00, GBP, 5003, Food, Refund, CTK003, AUTH789, Refunded, 0.0, DEV003, 192.168.1.12, 51.5074, -0.1278, 1, 2, 2023-07-03 18:11:00, 2023-07-03 18:15:00, RefundForMeal, GatewayC);

-- Roadway sign inspection logs
CREATE TABLE road_sign_inspection_logs (
    InspectionLogID INTEGER PRIMARY KEY,
    SignID INTEGER,
    InspectorID INTEGER,
    InspectionDate DATE,
    InspectionTime TEXT,
    StructuralIntegrityScore REAL,
    VisibilityScore REAL,
    IlluminationTestResult TEXT,
    CleanlinessScore REAL,
    DamageNotes TEXT,
    RepairRequiredFlag INTEGER,
    EstimatedRepairCost REAL,
    RepairVendorID INTEGER,
    RepairScheduledDate DATE,
    FollowUpRequiredFlag INTEGER,
    FollowUpDate DATE,
    Latitude REAL,
    Longitude REAL,
    WeatherConditions TEXT,
    CreatedTimestamp DATETIME,
    UpdatedTimestamp DATETIME,
    Comments TEXT,
    InspectionMethod TEXT
);
INSERT INTO road_sign_inspection_logs VALUES (1, 1, 7001, 2023-06-15, 10:30:00, 9.5, 8.8, Pass, 9.0, MinorScratches, 0, 0.00, NULL, 0, NULL, 40.7128, -74.0060, Clear, 2023-06-15 11:00:00, 2023-06-15 11:15:00, RoutineCheck, Visual);
INSERT INTO road_sign_inspection_logs VALUES (2, 2, 7002, 2023-06-20, 14:45:00, 6.0, 5.5, Fail, 5.5, BrokenBracket, 1, 150.00, 301, 2023-07-01, 1, 2023-07-15, 34.0522, -118.2437, Windy, 2023-06-20 15:10:00, 2023-06-20 15:30:00, RepairNeeded, Physical);
INSERT INTO road_sign_inspection_logs VALUES (3, 3, 7003, 2023-06-25, 09:15:00, 8.0, 7.5, Pass, 7.8, FadedPaint, 0, 0.00, NULL, 0, NULL, 41.8781, -87.6298, Cloudy, 2023-06-25 09:45:00, 2023-06-25 10:00:00, MaintenanceDueSoon, Visual);
