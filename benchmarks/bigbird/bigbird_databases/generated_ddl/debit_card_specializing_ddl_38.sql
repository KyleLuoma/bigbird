-- City parking meter readings
CREATE TABLE city_parking_meter_readings (
    MeterID INTEGER PRIMARY KEY,
    CityID INTEGER,
    StreetName TEXT,
    BlockNumber TEXT,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    LastServicedDate DATE,
    Status TEXT,
    PaymentMethod TEXT,
    HourlyRate REAL,
    DailyMax REAL,
    WeeklyMax REAL,
    MonthlyMax REAL,
    TotalCollected REAL,
    OdometerReading INTEGER,
    SensorBatteryLevel REAL,
    FirmwareVersion TEXT,
    Remarks TEXT,
    ZoneCode TEXT
);
INSERT INTO city_parking_meter_readings VALUES (101, 1, MainSt, B12, 40.7128, -74.0060, '2018-05-10', '2023-03-15', Active, CreditCard, 2.5, 20.0, 100.0, 300.0, 12500.75, 15000, 85.3, v1.2.3, None, Z01);
INSERT INTO city_parking_meter_readings VALUES (102, 1, OakAve, C3, 40.7135, -74.0012, '2019-07-22', '2023-02-28', Active, MobileApp, 2.0, 15.0, 80.0, 250.0, 9800.00, 12000, 78.9, v1.2.3, Replaced sensor, Z02);
INSERT INTO city_parking_meter_readings VALUES (103, 2, PineRd, D7, 34.0522, -118.2437, '2020-01-15', '2023-01-10', Inactive, Cash, 1.8, 12.0, 70.0, 220.0, 5400.50, 8000, 60.2, v1.1.9, Scheduled removal, Z03);

-- Bike share trip logs
CREATE TABLE bike_share_trip_logs (
    TripID INTEGER PRIMARY KEY,
    BikeID INTEGER,
    UserID INTEGER,
    StartStationID INTEGER,
    EndStationID INTEGER,
    StartTime DATETIME,
    EndTime DATETIME,
    DistanceMeters INTEGER,
    DurationSeconds INTEGER,
    AvgSpeedKph REAL,
    PaymentMethod TEXT,
    RideCost REAL,
    BikeConditionStart TEXT,
    BikeConditionEnd TEXT,
    WeatherCondition TEXT,
    TemperatureC REAL,
    IsMember INTEGER,
    DiscountCode TEXT,
    ReferralSource TEXT,
    Notes TEXT
);
INSERT INTO bike_share_trip_logs VALUES (1001, 501, 2001, 301, 302, '2023-06-01 08:15:00', '2023-06-01 08:35:00', 4500, 1200, 13.5, CreditCard, 2.75, Good, Good, Sunny, 22.5, 1, SUMMER10, Email, None);
INSERT INTO bike_share_trip_logs VALUES (1002, 502, 2002, 303, 304, '2023-06-01 09:05:00', '2023-06-01 09:22:00', 3000, 1020, 10.6, MobileApp, 2.00, Good, MinorScrape, Cloudy, 20.0, 0, NONE, Social, FirstRide);
INSERT INTO bike_share_trip_logs VALUES (1003, 503, 2003, 305, 306, '2023-06-01 10:45:00', '2023-06-01 11:10:00', 6000, 1500, 14.4, CreditCard, 3.20, Fair, Fair, Rain, 18.3, 1, RAINY5, Referral, LateReturn);

-- Electric grid maintenance schedule
CREATE TABLE electric_grid_maintenance_schedule (
    MaintenanceID INTEGER PRIMARY KEY,
    SubstationID INTEGER,
    TransformerID INTEGER,
    ScheduledDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    CrewLead TEXT,
    CrewSize INTEGER,
    WorkType TEXT,
    EquipmentRequired TEXT,
    SafetyPlanVersion TEXT,
    EstimatedCost REAL,
    ActualCost REAL,
    Status TEXT,
    NotificationSent INTEGER,
    PermitNumber TEXT,
    RegulatoryAgency TEXT,
    DowntimeMinutes INTEGER,
    Remarks TEXT,
    UpdatedAt DATETIME
);
INSERT INTO electric_grid_maintenance_schedule VALUES (2001, 10, 100, '2023-07-15', '08:00', '12:00', Smith, 5, Inspection, None, SPV1, 1500.00, 1520.50, Completed, 1, PERM123, NERC, 30, None, '2023-07-15 12:30:00');
INSERT INTO electric_grid_maintenance_schedule VALUES (2002, 11, 101, '2023-08-05', '22:00', '02:00', Lee, 4, TransformerReplacement, Crane, SPV2, 8000.00, NULL, Scheduled, 0, PERM124, NERC, 45, Parts on order, '2023-07-20 09:15:00');
INSERT INTO electric_grid_maintenance_schedule VALUES (2003, 12, 102, '2023-09-10', '10:00', '16:00', Patel, 6, CableRepair, BucketTruck, SPV1, 3000.00, NULL, Planned, 0, PERM125, FERC, 60, Awaiting weather clearance, '2023-08-01 14:00:00');

-- Water supply quality reports
CREATE TABLE water_supply_quality_reports (
    ReportID INTEGER PRIMARY KEY,
    PlantID INTEGER,
    SampleDate DATE,
    SampleTime TEXT,
    pH REAL,
    TurbidityNTU REAL,
    ChlorineMgL REAL,
    LeadPPB REAL,
    CopperPPB REAL,
    EColiCountCFU INTEGER,
    TemperatureC REAL,
    ConductivityUsCm REAL,
    TotalSuspendedSolids REAL,
    NitrateMGL REAL,
    PhosphateMGL REAL,
    SamplingLocation TEXT,
    AnalystName TEXT,
    ApprovedBy TEXT,
    Comments TEXT,
    ReportGeneratedAt DATETIME
);
INSERT INTO water_supply_quality_reports VALUES (3001, 1, '2023-05-20', '09:30', 7.2, 0.3, 0.5, 2, 5, 0, 15.0, 150.0, 12.5, 0.8, 0.3, Intake, Garcia, Miller, Passed, '2023-05-21 08:00:00');
INSERT INTO water_supply_quality_reports VALUES (3002, 1, '2023-06-18', '14:15', 7.0, 0.5, 0.6, 1, 4, 0, 16.2, 152.0, 13.0, 0.9, 0.4, Reservoir, Lee, Patel, Slightly high turbidity, '2023-06-19 07:45:00');
INSERT INTO water_supply_quality_reports VALUES (3003, 2, '2023-07-10', '11:00', 7.4, 0.2, 0.4, 0, 3, 0, 14.8, 148.0, 11.8, 0.7, 0.2, TreatmentPlant, Smith, Garcia, All parameters within limits, '2023-07-11 09:30:00');

-- Urban forest canopy inventory
CREATE TABLE urban_forest_canopy_inventory (
    RecordID INTEGER PRIMARY KEY,
    CityAreaID INTEGER,
    SurveyDate DATE,
    TreeSpecies TEXT,
    TreeCount INTEGER,
    CanopyCoverPercent REAL,
    AvgHeightM REAL,
    AvgDiameterCM REAL,
    SoilType TEXT,
    ElevationM REAL,
    Latitude REAL,
    Longitude REAL,
    SurveyorName TEXT,
    DataSource TEXT,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    QualityFlag TEXT,
    FundingProgram TEXT,
    GISLayerID INTEGER
);
INSERT INTO urban_forest_canopy_inventory VALUES (4001, 101, '2023-04-12', Oak, 250, 35.5, 12.3, 30.2, Loam, 150.0, 40.7128, -74.0060, Nguyen, Satellite, None, '2023-04-13 10:00:00', '2023-04-13 10:00:00', Good, CityTreeGrant, 501);
INSERT INTO urban_forest_canopy_inventory VALUES (4002, 102, '2023-05-08', Maple, 180, 28.1, 10.5, 25.0, Clay, 140.0, 34.0522, -118.2437, Patel, DroneSurvey, Minor gaps, '2023-05-09 09:30:00', '2023-05-09 09:30:00', Good, UrbanGreen, 502);
INSERT INTO urban_forest_canopy_inventory VALUES (4003, 103, '2023-06-20', Pine, 300, 42.0, 15.0, 35.5, Sand, 130.0, 41.8781, -87.6298, Lee, GroundPlot, Updated after storm, '2023-06-21 11:15:00', '2023-06-21 11:15:00', Reviewed, ClimateResilience, 503);

-- Smart traffic signal programs
CREATE TABLE smart_traffic_signal_programs (
    ProgramID INTEGER PRIMARY KEY,
    IntersectionID INTEGER,
    ProgramName TEXT,
    StartDate DATE,
    EndDate DATE,
    ControlAlgorithm TEXT,
    CycleLengthSec INTEGER,
    GreenTimeSec INTEGER,
    YellowTimeSec INTEGER,
    RedTimeSec INTEGER,
    PedestrianPhase INTEGER,
    AdaptiveEnabled INTEGER,
    SensorType TEXT,
    DataFeedURL TEXT,
    OperatorContact TEXT,
    Status TEXT,
    LastUpdated DATETIME,
    FirmwareVersion TEXT,
    BudgetUSD REAL,
    EvaluationScore REAL
);
INSERT INTO smart_traffic_signal_programs VALUES (5001, 2001, DowntownAdaptive, '2023-01-01', '2025-12-31', AdaptiveAI, 120, 45, 5, 70, 1, 1, Video, http://data.city/ts2001, Johnson, Active, '2023-06-01 12:00:00', v3.4, 250000.00, 88.5);
INSERT INTO smart_traffic_signal_programs VALUES (5002, 2002, MidtownFixed, '2022-06-15', '2024-06-14', FixedTiming, 90, 35, 4, 51, 0, 0, Loop, http://data.city/ts2002, Martinez, Active, '2023-05-20 09:30:00', v3.2, 120000.00, 75.0);
INSERT INTO smart_traffic_signal_programs VALUES (5003, 2003, EastSidePilot, '2023-03-01', '2024-02-28', AdaptiveAI, 110, 40, 5, 65, 1, 1, Radar, http://data.city/ts2003, Singh, Testing, '2023-06-10 15:45:00', v3.5, 180000.00, 82.3);

-- Municipal building energy audits
CREATE TABLE municipal_building_energy_audits (
    AuditID INTEGER PRIMARY KEY,
    BuildingID INTEGER,
    AuditDate DATE,
    AuditorName TEXT,
    BuildingType TEXT,
    YearBuilt INTEGER,
    GrossFloorAreaSqM REAL,
    EnergyStarScore INTEGER,
    EUIkWhPerSqM REAL,
    HeatingFuelType TEXT,
    CoolingSystemType TEXT,
    LightingUpgradePotential INTEGER,
    HVACUpgradePotential INTEGER,
    RenewableIntegrationPotential INTEGER,
    TotalSavingsUSD REAL,
    PaybackYears REAL,
    RecommendationsCount INTEGER,
    Remarks TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);
INSERT INTO municipal_building_energy_audits VALUES (6001, 301, '2023-04-10', Ramirez, Office, 1995, 8500.0, 78, 120.5, NaturalGas, Chiller, 3, 2, 1, 250000.00, 4.5, 12, None, '2023-04-11 08:00:00', '2023-04-11 08:00:00');
INSERT INTO municipal_building_energy_audits VALUES (6002, 302, '2023-05-22', Liu, Library, 2008, 4200.0, 85, 95.2, Electricity, VRF, 2, 1, 2, 180000.00, 3.2, 9, Minor HVAC leaks, '2023-05-23 09:30:00', '2023-05-23 09:30:00');
INSERT INTO municipal_building_energy_audits VALUES (6003, 303, '2023-06-15', Patel, CommunityCenter, 2015, 6000.0, 70, 130.0, Propane, Split, 4, 3, 0, 220000.00, 5.0, 15, Upgrade lighting needed, '2023-06-16 10:45:00', '2023-06-16 10:45:00');

-- Drone delivery route plans
CREATE TABLE drone_delivery_route_plans (
    RouteID INTEGER PRIMARY KEY,
    DroneModel TEXT,
    OriginHubID INTEGER,
    DestinationHubID INTEGER,
    PlannedDate DATE,
    DepartureTime TEXT,
    ArrivalTime TEXT,
    DistanceKm REAL,
    EstimatedDurationMin INTEGER,
    PayloadWeightKg REAL,
    FlightPathID INTEGER,
    WeatherConstraint TEXT,
    AirspaceRestrictionLevel INTEGER,
    OperatorName TEXT,
    Status TEXT,
    BatteryUsagePercent REAL,
    NoFlyZoneCount INTEGER,
    TotalStops INTEGER,
    Notes TEXT,
    CreatedAt DATETIME
);
INSERT INTO drone_delivery_route_plans VALUES (7001, X100, 10, 20, '2023-07-01', '08:00', '08:45', 35.2, 45, 2.5, 401, Clear, 1, Alvarez, Scheduled, 30.0, 0, 2, None, '2023-06-20 14:00:00');
INSERT INTO drone_delivery_route_plans VALUES (7002, X200, 11, 21, '2023-07-05', '13:30', '14:20', 22.5, 50, 1.8, 402, LightRain, 2, Bennett, InProgress, 45.5, 1, 1, Delay due to wind, '2023-07-01 09:15:00');
INSERT INTO drone_delivery_route_plans VALUES (7003, X300, 12, 22, '2023-07-10', '10:15', '11:00', 28.0, 45, 3.0, 403, Clear, 0, Chen, Completed, 55.0, 0, 3, Successful, '2023-07-08 11:30:00');

-- Renewable energy maintenance contracts
CREATE TABLE renewable_energy_maintenance_contracts (
    ContractID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    ContractorName TEXT,
    ContractStartDate DATE,
    ContractEndDate DATE,
    ServiceLevel TEXT,
    AnnualFeeUSD REAL,
    MaintenanceScope TEXT,
    ResponseTimeHours INTEGER,
    WarrantyPeriodMonths INTEGER,
    PerformanceGuarantee REAL,
    ContactPhone TEXT,
    ContactEmail TEXT,
    InsuranceCoverageUSD REAL,
    LiabilityClause TEXT,
    PenaltyClause TEXT,
    SignedBy TEXT,
    SignedDate DATE,
    LastAmendmentDate DATE,
    Remarks TEXT
);
INSERT INTO renewable_energy_maintenance_contracts VALUES (8001, 501, GreenTech, '2022-01-01', '2027-12-31', Gold, 500000.00, Full, 24, 60, 95.0, 5551234567, contact@greentech.com, 2000000.00, Standard, LatePenalty, Johnson, '2021-12-15', '2023-03-01', None);
INSERT INTO renewable_energy_maintenance_contracts VALUES (8002, 502, SunPower, '2023-03-15', '2028-03-14', Silver, 350000.00, Partial, 48, 36, 90.0, 5559876543, sales@sunpower.com, 1500000.00, Standard, EarlyTermination, Lee, '2023-02-20', '2023-06-10', Updated scope 2023);
INSERT INTO renewable_energy_maintenance_contracts VALUES (8003, 503, EcoWind, '2021-06-01', '2026-05-31', Platinum, 750000.00, Full, 12, 72, 98.0, 5555551212, support@ecowind.com, 2500000.00, Extended, PerformancePenalty, Patel, '2021-05-15', '2024-01-20', Renewable upgrade in 2024);

-- Public wifi access logs
CREATE TABLE public_wifi_access_logs (
    LogID INTEGER PRIMARY KEY,
    HotspotID INTEGER,
    UserDeviceMAC TEXT,
    AccessStart DATETIME,
    AccessEnd DATETIME,
    DataTransferredMB REAL,
    SessionDurationSec INTEGER,
    ConnectionType TEXT,
    SignalStrengthDbm REAL,
    ProviderName TEXT,
    Band TEXT,
    AuthenticationMethod TEXT,
    LocationLatitude REAL,
    LocationLongitude REAL,
    FirmwareVersion TEXT,
    NetworkLoadPercent REAL,
    EventID INTEGER,
    Remarks TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);
INSERT INTO public_wifi_access_logs VALUES (9001, 301, AA:BB:CC:DD:EE:01, '2023-06-01 09:00:00', '2023-06-01 09:45:00', 350.5, 2700, WPA2, -65.0, CityNet, 5GHz, Password, 40.7128, -74.0060, v2.1, 70.0, 101, None, '2023-06-01 10:00:00', '2023-06-01 10:00:00');
INSERT INTO public_wifi_access_logs VALUES (9002, 302, AA:BB:CC:DD:EE:02, '2023-06-02 14:15:00', '2023-06-02 14:45:00', 210.0, 1800, Open, -70.5, CityNet, 2.4GHz, Guest, 34.0522, -118.2437, v2.0, 55.0, 102, High noise, '2023-06-02 15:00:00', '2023-06-02 15:00:00');
INSERT INTO public_wifi_access_logs VALUES (9003, 303, AA:BB:CC:DD:EE:03, '2023-06-03 20:30:00', '2023-06-03 21:10:00', 480.2, 2400, WPA3, -60.2, CityNet, 5GHz, Certificate, 41.8781, -87.6298, v2.2, 80.0, 103, Stable connection, '2023-06-03 22:00:00', '2023-06-03 22:00:00');