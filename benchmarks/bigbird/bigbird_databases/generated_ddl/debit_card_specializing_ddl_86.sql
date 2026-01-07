-- Municipal tree census data
CREATE TABLE municipal_tree_census
(
    CensusID INTEGER PRIMARY KEY,
    SurveyDate DATE,
    City TEXT,
    District TEXT,
    TreeSpecies TEXT,
    TreeCount INTEGER,
    AvgHeightM REAL,
    AvgDiameterCM REAL,
    CanopyCoverPct REAL,
    HealthRating INTEGER,
    SurveyorName TEXT,
    GPS_Latitude REAL,
    GPS_Longitude REAL,
    ElevationM REAL,
    SoilType TEXT,
    IrrigationType TEXT,
    MaintenancePlan TEXT,
    LastPrunedDate DATE,
    Notes TEXT,
    DataSource TEXT
);

INSERT INTO municipal_tree_census VALUES (1, '2023-04-15', 'Springfield', 'Northside', 'Maple', 124, 12.5, 30.2, 45.0, 8, 'Alice Smith', 40.7128, -74.0060, 15.3, 'Loam', 'Drip', 'Annual pruning', '2023-03-20', 'Healthy stand', 'CityDept');
INSERT INTO municipal_tree_census VALUES (2, '2023-04-16', 'Springfield', 'Southside', 'Oak', 98, 14.1, 35.0, 50.5, 7, 'Bob Jones', 40.7132, -74.0055, 16.0, 'Clay', 'Sprinkler', 'Biannual thinning', '2023-03-22', 'Some disease observed', 'CityDept');
INSERT INTO municipal_tree_census VALUES (3, '2023-04-17', 'Springfield', 'Eastside', 'Birch', 150, 9.8, 22.5, 38.2, 9, 'Carol Lee', 40.7140, -74.0048, 14.8, 'Sandy', 'None', 'Quarterly inspection', '2023-03-25', 'Excellent growth', 'CityDept');

-- Public art funding applications
CREATE TABLE public_art_funding_applications
(
    ApplicationID INTEGER PRIMARY KEY,
    SubmissionDate DATE,
    ApplicantOrganization TEXT,
    ProjectTitle TEXT,
    ArtForm TEXT,
    EstimatedCost REAL,
    RequestedAmount REAL,
    FundingPeriodMonths INTEGER,
    PrimaryArtist TEXT,
    CoArtist TEXT,
    LocationDescription TEXT,
    ExpectedStartDate DATE,
    ExpectedEndDate DATE,
    CommunityEngagementPlan TEXT,
    SustainabilityPlan TEXT,
    MaintenancePlan TEXT,
    ApprovalStatus TEXT,
    ReviewerComments TEXT,
    FinalAwardAmount REAL,
    ReportingFrequency TEXT,
    DataEntryUser TEXT
);

INSERT INTO public_art_funding_applications VALUES (101, '2023-01-10', 'River Arts Collective', 'River Flow Sculpture', 'Sculpture', 85000.00, 60000.00, 12, 'Diana Rivera', 'Tom Hart', 'Downtown riverbank plaza', '2023-06-01', '2024-05-31', 'Workshops with schools', 'Use recycled metal', 'Quarterly cleaning', 'Pending', 'Awaiting budget review', 0.0, 'Quarterly', 'admin1');
INSERT INTO public_art_funding_applications VALUES (102, '2023-02-05', 'City Mural Initiative', 'Cityscape Mural', 'Mural', 45000.00, 30000.00, 6, 'Luis Gomez', '', 'West side community center wall', '2023-08-15', '2024-02-14', 'Volunteer painting days', 'Eco-friendly paints', 'Annual touch‑up', 'Approved', 'Approved by board', 30000.00, 'Biannual', 'admin2');
INSERT INTO public_art_funding_applications VALUES (103, '2023-03-12', 'Harmony Arts Group', 'Harmony Sound Installation', 'Sound Installation', 120000.00, 90000.00, 18, 'Anna Patel', 'Mark Liu', 'Central park amphitheater', '2024-01-01', '2025-06-30', 'Public listening sessions', 'Solar powered', 'Monthly technical check', 'Rejected', 'Insufficient community impact', 0.0, 'Annual', 'admin3');

-- Smart city noise sensor inventory
CREATE TABLE smart_city_noise_sensor_inventory
(
    SensorID INTEGER PRIMARY KEY,
    InstallationDate DATE,
    City TEXT,
    District TEXT,
    StreetAddress TEXT,
    Latitude REAL,
    Longitude REAL,
    SensorModel TEXT,
    FirmwareVersion TEXT,
    CalibrationDate DATE,
    SensitivityDbA REAL,
    FrequencyRangeHz TEXT,
    PowerSupplyType TEXT,
    BatteryLifeHours INTEGER,
    ConnectivityType TEXT,
    DataRetentionDays INTEGER,
    MaintenanceContractID INTEGER,
    LastMaintenanceDate DATE,
    OperationalStatus TEXT,
    OwnerDepartment TEXT,
    Notes TEXT,
    AssetTag TEXT
);

INSERT INTO smart_city_noise_sensor_inventory VALUES (2001, '2022-11-20', 'Springfield', 'Northside', '123 Main St', 40.7125, -74.0059, 'NoiseX200', 'v1.3.2', '2023-01-15', 85.0, '20-20000', 'Solar', 8760, 'LTE', 30, 301, '2023-06-10', 'Active', 'Public Works', 'Installed near school', 'NS-2001');
INSERT INTO smart_city_noise_sensor_inventory VALUES (2002, '2022-12-05', 'Springfield', 'Southside', '456 Oak Ave', 40.7130, -74.0065, 'QuietSense', 'v2.0.0', '2023-02-20', 88.5, '10-15000', 'Mains', 0, 'WiFi', 60, 302, '2023-07-01', 'Active', 'Public Works', 'Near industrial zone', 'NS-2002');
INSERT INTO smart_city_noise_sensor_inventory VALUES (2003, '2023-01-12', 'Springfield', 'Eastside', '789 Pine Rd', 40.7142, -74.0045, 'SilentGuard', 'v1.0.5', '2023-03-10', 90.0, '15-18000', 'Battery', 4320, '5G', 90, 303, '2023-08-15', 'Inactive', 'Public Works', 'Awaiting relocation', 'NS-2003');

-- Electric vehicle incentive applications
CREATE TABLE electric_vehicle_incentive_applications
(
    IncentiveAppID INTEGER PRIMARY KEY,
    ApplicantName TEXT,
    ApplicantID INTEGER,
    ApplicationDate DATE,
    VehicleMake TEXT,
    VehicleModel TEXT,
    VehicleYear INTEGER,
    VIN TEXT,
    BatteryCapacityKWh REAL,
    EstimatedRangeKm INTEGER,
    PurchasePrice REAL,
    IncentiveRequested REAL,
    IncentiveApproved REAL,
    ApprovalDate DATE,
    FundingProgram TEXT,
    ResidencyStatus TEXT,
    EmploymentStatus TEXT,
    IncomeBracket TEXT,
    EmissionReductionKgCO2 INTEGER,
    Status TEXT,
    ReviewerID INTEGER,
    Comments TEXT,
    DataEntryUser TEXT
);

INSERT INTO electric_vehicle_incentive_applications VALUES (5001, 'John Doe', 10001, '2023-05-01', 'Tesla', 'Model 3', 2022, '5YJ3E1EA7KF317999', 75.0, 430, 42000.00, 7500.00, 7500.00, '2023-05-15', 'State EV Rebate', 'Resident', 'FullTime', '30-50k', 2500, 'Approved', 801, 'All criteria met', 'user_a');
INSERT INTO electric_vehicle_incentive_applications VALUES (5002, 'Maria Garcia', 10002, '2023-05-10', 'Nissan', 'Leaf', 2021, '1N4BZ0CP5LC123456', 40.0, 240, 31000.00, 5000.00, 0.00, NULL, 'State EV Rebate', 'Resident', 'PartTime', '20-30k', 1200, 'Pending', 802, 'Awaiting income verification', 'user_b');
INSERT INTO electric_vehicle_incentive_applications VALUES (5003, 'Li Wei', 10003, '2023-05-20', 'Chevrolet', 'Bolt EV', 2023, '1G1FW6S06L4107890', 66.0, 415, 38000.00, 6000.00, 6000.00, '2023-06-02', 'State EV Rebate', 'Resident', 'SelfEmployed', '50-70k', 2300, 'Approved', 803, 'Approved after additional documentation', 'user_c');

-- Hydrogen refueling station metrics
CREATE TABLE hydrogen_refueling_station_metrics
(
    StationMetricID INTEGER PRIMARY KEY,
    StationID INTEGER,
    RecordDate DATE,
    Country TEXT,
    State TEXT,
    City TEXT,
    DailyDispensedKg REAL,
    CumulativeDispensedKg REAL,
    AvgDispensePressureBar REAL,
    MaxDispensePressureBar REAL,
    MinDispensePressureBar REAL,
    AvgTemperatureC REAL,
    EnergyConsumptionMWh REAL,
    DowntimeMinutes INTEGER,
    MaintenanceFlag INTEGER,
    OperatorName TEXT,
    SafetyIncidentCount INTEGER,
    EmissionsAvoidedKgCO2 INTEGER,
    Status TEXT,
    DataSource TEXT,
    Notes TEXT,
    AssetTag TEXT
);

INSERT INTO hydrogen_refueling_station_metrics VALUES (8001, 901, '2023-06-01', 'USA', 'CA', 'San Jose', 350.5, 10245.7, 70.0, 80.0, 65.0, 22.5, 1.2, 30, 0, 'EnergyCo', 0, 50000, 'Operational', 'SCADA', 'Normal day', 'HR-901');
INSERT INTO hydrogen_refueling_station_metrics VALUES (8002, 902, '2023-06-01', 'USA', 'TX', 'Austin', 210.3, 7540.2, 68.5, 78.0, 62.0, 21.0, 0.9, 45, 0, 'FuelCorp', 1, 30000, 'Operational', 'SCADA', 'Minor leak reported', 'HR-902');
INSERT INTO hydrogen_refueling_station_metrics VALUES (8003, 903, '2023-06-01', 'USA', 'NY', 'Buffalo', 180.0, 6400.0, 72.0, 85.0, 68.0, 23.0, 1.0, 0, 0, 'GreenFuel', 0, 25000, 'Maintenance', 'Manual', 'Scheduled shutdown', 'HR-903');

-- Urban bike share trip summary
CREATE TABLE urban_bike_share_trip_summary
(
    TripSummaryID INTEGER PRIMARY KEY,
    BikeID INTEGER,
    UserID INTEGER,
    TripDate DATE,
    StartStationID INTEGER,
    EndStationID INTEGER,
    StartTime TEXT,
    EndTime TEXT,
    DurationSeconds INTEGER,
    DistanceMeters REAL,
    AvgSpeedKmh REAL,
    ElevationGainMeters REAL,
    ElevationLossMeters REAL,
    PaymentMethod TEXT,
    SubscriptionType TEXT,
    IsMember INTEGER,
    WeatherCondition TEXT,
    TemperatureC REAL,
    WindSpeedKmh REAL,
    BikeConditionScore INTEGER,
    MaintenanceFlag INTEGER,
    Notes TEXT
);

INSERT INTO urban_bike_share_trip_summary VALUES (90001, 1201, 501, '2023-07-10', 301, 312, '08:15:00', '08:35:00', 1200, 5400.0, 16.2, 12.5, 8.3, 'CreditCard', 'MonthlyPass', 1, 'Sunny', 27.0, 5.0, 9, 0, '');
INSERT INTO urban_bike_share_trip_summary VALUES (90002, 1202, 502, '2023-07-10', 306, 298, '09:05:00', '09:22:00', 1020, 4600.0, 16.2, 9.0, 7.5, 'MobileApp', 'PayAsYouGo', 0, 'PartlyCloudy', 24.0, 3.5, 8, 0, '');
INSERT INTO urban_bike_share_trip_summary VALUES (90003, 1203, 503, '2023-07-10', 310, 310, '17:45:00', '18:10:00', 1500, 7200.0, 17.3, 15.0, 10.0, 'CreditCard', 'MonthlyPass', 1, 'Rain', 22.0, 6.0, 7, 1, 'Rear tire replacement needed');

-- Solar farm performance daily
CREATE TABLE solar_farm_performance_daily
(
    PerformanceID INTEGER PRIMARY KEY,
    FarmID INTEGER,
    RecordDate DATE,
    Region TEXT,
    TotalCapacityMW REAL,
    EnergyGeneratedMWh REAL,
    CapacityFactorPct REAL,
    AvgPanelTemperatureC REAL,
    IrradianceWm2 REAL,
    InverterEfficiencyPct REAL,
    DowntimeMinutes INTEGER,
    MaintenanceFlag INTEGER,
    WeatherCondition TEXT,
    TemperatureC REAL,
    WindSpeedKmh REAL,
    SnowDepthCm REAL,
    GridExportMWh REAL,
    RevenueUSD REAL,
    CO2AvoidedKg INTEGER,
    OperatorName TEXT,
    DataSource TEXT,
    Notes TEXT
);

INSERT INTO solar_farm_performance_daily VALUES (11001, 201, '2023-07-01', 'Southwest', 150.0, 550.0, 41.7, 45.2, 820.0, 98.5, 15, 0, 'Sunny', 32.0, 8.0, 0.0, 545.0, 65000.00, 300000, 'SunPower', 'SCADA', '');
INSERT INTO solar_farm_performance_daily VALUES (11002, 202, '2023-07-01', 'Midwest', 80.0, 210.0, 31.9, 48.5, 750.0, 97.2, 30, 1, 'PartlyCloudy', 28.0, 12.0, 0.0, 205.0, 25000.00, 115000, 'EcoSolar', 'Manual', 'Routine cleaning performed');
INSERT INTO solar_farm_performance_daily VALUES (11003, 203, '2023-07-01', 'Northeast', 60.0, 150.0, 25.0, 42.0, 690.0, 96.0, 45, 0, 'Rain', 22.0, 15.0, 0.0, 145.0, 20000.00, 87000, 'GreenEnergy', 'SCADA', 'High humidity affected output');

-- Water supply reservoir levels
CREATE TABLE water_supply_reservoir_levels
(
    ReservoirLevelID INTEGER PRIMARY KEY,
    ReservoirID INTEGER,
    RecordDate DATE,
    Region TEXT,
    WaterElevationM REAL,
    StorageVolumeMCM REAL,
    InflowCubicMetersPerSec REAL,
    OutflowCubicMetersPerSec REAL,
    EvaporationLossMCM REAL,
    RainfallMm REAL,
    TemperatureC REAL,
    WeatherCondition TEXT,
    WaterQualityIndex INTEGER,
    TurbidityNTU REAL,
    pH REAL,
    ConductivityUsCm REAL,
    MaintenanceFlag INTEGER,
    OperatorName TEXT,
    DataSource TEXT,
    Notes TEXT,
    AssetTag TEXT
);

INSERT INTO water_supply_reservoir_levels VALUES (21001, 401, '2023-07-10', 'Central', 215.3, 120.5, 85.2, 78.0, 0.2, 5.0, 24.0, 'Sunny', 92, 1.5, 7.4, 250, 0, 'WaterDept', 'SCADA', '', 'WR-401');
INSERT INTO water_supply_reservoir_levels VALUES (21002, 402, '2023-07-10', 'North', 180.7, 85.0, 60.5, 55.3, 0.3, 2.0, 22.5, 'Cloudy', 88, 2.0, 7.2, 240, 1, 'WaterDept', 'Manual', 'Minor algae bloom', 'WR-402');
INSERT INTO water_supply_reservoir_levels VALUES (21003, 403, '2023-07-10', 'South', 200.0, 100.0, 70.0, 65.0, 0.25, 3.5, 23.0, 'Rain', 85, 3.0, 7.0, 230, 0, 'WaterDept', 'SCADA', '', 'WR-403');

-- Airport ground transport services
CREATE TABLE airport_ground_transport_services
(
    ServiceID INTEGER PRIMARY KEY,
    AirportCode TEXT,
    ServiceName TEXT,
    Provider TEXT,
    ServiceType TEXT,
    Capacity INTEGER,
    OperatingHoursStart TEXT,
    OperatingHoursEnd TEXT,
    TicketPriceUSD REAL,
    AvgTravelTimeMin INTEGER,
    DistanceFromTerminalM REAL,
    VehicleModel TEXT,
    FuelType TEXT,
    EmissionClass TEXT,
    AccessibilityFeatures TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Status TEXT,
    LastInspectionDate DATE,
    MaintenanceContractID INTEGER,
    Notes TEXT,
    DataEntryUser TEXT
);

INSERT INTO airport_ground_transport_services VALUES (3001, 'JFK', 'Airport Shuttle', 'CityTransit', 'ShuttleBus', 40, '05:00', '23:00', 8.50, 12, 1500.0, 'Volvo 9700', 'Diesel', 'Euro5', 'WheelchairRamp', '555-1234', 'shuttle@citytransit.com', 'Active', '2023-05-20', 401, '', 'admin1');
INSERT INTO airport_ground_transport_services VALUES (3002, 'LAX', 'Rental Car Desk', 'AutoRent', 'RentalCar', 200, '06:00', '22:00', 0.00, 5, 300.0, 'Various', 'Petrol', 'Euro6', 'None', '555-5678', 'info@autorent.com', 'Active', '2023-06-15', 402, '', 'admin2');
INSERT INTO airport_ground_transport_services VALUES (3003, 'ORD', 'Electric Scooter Rental', 'EcoRide', 'MicroMobility', 30, '07:00', '21:00', 5.00, 3, 800.0, 'Xiaomi M365', 'Electric', 'Zero', 'HelmetProvided', '555-9012', 'support@ecoride.com', 'Active', '2023-07-01', 403, '', 'admin3');

-- City parking zone pricing
CREATE TABLE city_parking_zone_pricing
(
    PricingID INTEGER PRIMARY KEY,
    City TEXT,
    ZoneCode TEXT,
    ZoneName TEXT,
    MaxDurationMinutes INTEGER,
    BaseRateUSD REAL,
    HourlyRateUSD REAL,
    DailyCapUSD REAL,
    NightRateUSD REAL,
    WeekendRateMultiplier REAL,
    WeekdayRateMultiplier REAL,
    EffectiveStartDate DATE,
    EffectiveEndDate DATE,
    PaymentMethodAccepted TEXT,
    EnforcementAgency TEXT,
    SensorBased INTEGER,
    DiscountForResidentsUSD REAL,
    DiscountForEVsUSD REAL,
    ViolationFineUSD REAL,
    Status TEXT,
    Notes TEXT,
    DataEntryUser TEXT
);

INSERT INTO city_parking_zone_pricing VALUES (4001, 'Springfield', 'Z1', 'Downtown Core', 180, 2.00, 3.00, 25.00, 1.50, 1.2, 1.0, '2023-01-01', '2024-12-31', 'Card,App', 'City Police', 1, 1.00, 0.50, 75.00, 'Active', '', 'user1');
INSERT INTO city_parking_zone_pricing VALUES (4002, 'Springfield', 'Z2', 'University Area', 240, 1.50, 2.50, 20.00, 1.00, 1.0, 0.9, '2023-01-01', '2024-12-31', 'Card,App', 'City Police', 1, 0.75, 0.30, 60.00, 'Active', '', 'user2');
INSERT INTO city_parking_zone_pricing VALUES (4003, 'Springfield', 'Z3', 'Industrial Park', 360, 1.00, 1.80, 15.00, 0.80, 0.8, 0.8, '2023-01-01', '2024-12-31', 'Card,App', 'City Police', 0, 0.50, 0.20, 50.00, 'Active', '', 'user3');