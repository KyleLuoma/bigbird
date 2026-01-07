-- Border crossing logs
CREATE TABLE border_crossing_logs
(
    LogID INTEGER PRIMARY KEY,
    CrossingID INTEGER,
    BorderCountry TEXT,
    VehiclePlate TEXT,
    VehicleType TEXT,
    DriverID INTEGER,
    EntryDate DATE,
    EntryTime TEXT,
    ExitDate DATE,
    ExitTime TEXT,
    LaneNumber INTEGER,
    InspectionResult TEXT,
    OfficerID INTEGER,
    CargoDescription TEXT,
    CargoWeightKg REAL,
    DeclarationStatus TEXT,
    FeeAmount REAL,
    Currency TEXT,
    Notes TEXT,
    ProcessedFlag INTEGER
);

INSERT INTO border_crossing_logs (LogID, CrossingID, BorderCountry, VehiclePlate, VehicleType, DriverID, EntryDate, EntryTime, ExitDate, ExitTime, LaneNumber, InspectionResult, OfficerID, CargoDescription, CargoWeightKg, DeclarationStatus, FeeAmount, Currency, Notes, ProcessedFlag) VALUES
(1, 101, USA, ABC1234, Car, 5001, '2023-03-15', '08:30', '2023-03-15', '09:00', 2, Clear, 300, Electronics, 150.5, Declared, 25.0, USD, None, 1),
(2, 102, CAN, XYZ7890, Truck, 5023, '2023-04-01', '14:12', '2023-04-01', '15:45', 1, Hold, 315, Timber, 2000.0, Undeclared, 120.0, CAD, InspectionDelayed, 0),
(3, 103, MEX, LMN4567, Bus, 5078, '2023-05-20', '10:05', '2023-05-20', '10:40', 3, Clear, 322, Passengers, 0.0, Declared, 0.0, MXN, None, 1);

-- Solar panel inventory
CREATE TABLE solar_panel_inventory
(
    PanelID INTEGER PRIMARY KEY,
    ManufacturingSite TEXT,
    ModelNumber TEXT,
    CapacityW REAL,
    EfficiencyPct REAL,
    InstallationDate DATE,
    OwnerID INTEGER,
    LocationID INTEGER,
    TiltAngleDeg REAL,
    AzimuthDeg REAL,
    WarrantyYears INTEGER,
    DegradationRatePctPerYear REAL,
    InverterID INTEGER,
    LastInspectionDate DATE,
    PerformanceRatio REAL,
    Status TEXT,
    OwnerContact TEXT,
    SerialNumber TEXT,
    CostUSD REAL,
    Currency TEXT,
    FundingSource TEXT,
    MaintenanceContractID INTEGER
);

INSERT INTO solar_panel_inventory (PanelID, ManufacturingSite, ModelNumber, CapacityW, EfficiencyPct, InstallationDate, OwnerID, LocationID, TiltAngleDeg, AzimuthDeg, WarrantyYears, DegradationRatePctPerYear, InverterID, LastInspectionDate, PerformanceRatio, Status, OwnerContact, SerialNumber, CostUSD, Currency, FundingSource, MaintenanceContractID) VALUES
(1001, SiteA, MODX200, 250.0, 19.5, '2022-06-01', 2001, 3001, 30.0, 180.0, 25, 0.5, 4001, '2023-01-15', 0.92, Active, 5551234, SN1001A, 1500.0, USD, Grant, 6001),
(1002, SiteB, MODX250, 300.0, 20.1, '2021-09-15', 2002, 3002, 25.0, 190.0, 20, 0.4, 4002, '2023-02-20', 0.95, Active, 5555678, SN1002B, 1800.0, USD, Private, 6002),
(1003, SiteC, MODX300, 350.0, 21.0, '2020-12-10', 2003, 3003, 28.0, 185.0, 22, 0.3, 4003, '2023-03-05', 0.93, Maintenance, 5559012, SN1003C, 2100.0, USD, Lease, 6003);

-- Pipeline integrity records
CREATE TABLE pipeline_integrity_records
(
    RecordID INTEGER PRIMARY KEY,
    PipelineID INTEGER,
    SegmentStartKM REAL,
    SegmentEndKM REAL,
    InspectionDate DATE,
    InspectorID INTEGER,
    Method TEXT,
    CorrosionLevel REAL,
    LeakDetected INTEGER,
    PressureMPa REAL,
    TemperatureC REAL,
    RepairNeeded INTEGER,
    RepairCostUSD REAL,
    DowntimeHours REAL,
    Notes TEXT,
    FollowUpDate DATE,
    RiskScore INTEGER,
    RegulatoryCompliance INTEGER,
    GPSLatitude REAL,
    GPSLongitude REAL,
    CreatedBy INTEGER,
    UpdatedBy INTEGER
);

INSERT INTO pipeline_integrity_records (RecordID, PipelineID, SegmentStartKM, SegmentEndKM, InspectionDate, InspectorID, Method, CorrosionLevel, LeakDetected, PressureMPa, TemperatureC, RepairNeeded, RepairCostUSD, DowntimeHours, Notes, FollowUpDate, RiskScore, RegulatoryCompliance, GPSLatitude, GPSLongitude, CreatedBy, UpdatedBy) VALUES
(5001, 9001, 0.0, 15.2, '2023-01-10', 801, Ultrasound, 0.12, 0, 5.2, 45.0, 0, 0.0, 0.0, None, '2023-04-10', 2, 1, 34.0522, -118.2437, 900, 901),
(5002, 9002, 15.2, 30.5, '2023-02-12', 802, SmartPig, 0.35, 1, 6.0, 50.0, 1, 25000.0, 12.5, LeakDetectedNearValve, '2023-05-12', 8, 0, 36.1699, -115.1398, 902, 903),
(5003, 9003, 30.5, 45.0, '2023-03-18', 803, Visual, 0.08, 0, 4.8, 42.0, 0, 0.0, 0.0, None, '2023-06-18', 1, 1, 40.7128, -74.0060, 904, 905);

-- Traffic violation cameras
CREATE TABLE traffic_violation_cameras
(
    CameraID INTEGER PRIMARY KEY,
    IntersectionID INTEGER,
    StreetA TEXT,
    StreetB TEXT,
    InstallationDate DATE,
    Latitude REAL,
    Longitude REAL,
    ResolutionMP REAL,
    FrameRate INTEGER,
    TriggerSpeedKph REAL,
    DetectionAngleDeg REAL,
    StorageCapacityGB REAL,
    PowerSource TEXT,
    MaintenanceVendor TEXT,
    LastServiceDate DATE,
    Status TEXT,
    FirmwareVersion TEXT,
    OperatorID INTEGER,
    ImageRetentionDays INTEGER,
    VideoRetentionDays INTEGER,
    AlertThreshold INTEGER,
    NetworkIP TEXT,
    CameraModel TEXT
);

INSERT INTO traffic_violation_cameras (CameraID, IntersectionID, StreetA, StreetB, InstallationDate, Latitude, Longitude, ResolutionMP, FrameRate, TriggerSpeedKph, DetectionAngleDeg, StorageCapacityGB, PowerSource, MaintenanceVendor, LastServiceDate, Status, FirmwareVersion, OperatorID, ImageRetentionDays, VideoRetentionDays, AlertThreshold, NetworkIP, CameraModel) VALUES
(2001, 301, MainSt, FirstAve, '2022-05-01', 34.0522, -118.2437, 4.0, 30, 45.0, 90.0, 500.0, Solar, VendorX, '2023-02-01', Active, v1.2.3, 4001, 30, 60, 5, '192.168.1.10', CamX100),
(2002, 302, OakRd, SecondSt, '2022-08-15', 36.1699, -115.1398, 5.0, 25, 50.0, 85.0, 750.0, Grid, VendorY, '2023-03-10', Active, v1.3.0, 4002, 45, 90, 7, '192.168.1.11', CamY200),
(2003, 303, PineBlvd, ThirdLn, '2023-01-20', 40.7128, -74.0060, 3.5, 20, 40.0, 80.0, 300.0, Battery, VendorZ, '2023-04-05', Maintenance, v1.1.5, 4003, 20, 45, 4, '192.168.1.12', CamZ300);

-- Public art installations
CREATE TABLE public_art_installations
(
    ArtID INTEGER PRIMARY KEY,
    Title TEXT,
    Artist TEXT,
    InstallationDate DATE,
    LocationID INTEGER,
    Latitude REAL,
    Longitude REAL,
    Material TEXT,
    HeightM REAL,
    WidthM REAL,
    DepthM REAL,
    FundingAgency TEXT,
    CostUSD REAL,
    MaintenancePlan TEXT,
    LightingType TEXT,
    AccessibilityRating INTEGER,
    YearCreated INTEGER,
    Category TEXT,
    CurrentCondition TEXT,
    OwnerEntity TEXT,
    ContactPhone TEXT,
    Website TEXT,
    CoordinatesReference TEXT,
    Description TEXT
);

INSERT INTO public_art_installations (ArtID, Title, Artist, InstallationDate, LocationID, Latitude, Longitude, Material, HeightM, WidthM, DepthM, FundingAgency, CostUSD, MaintenancePlan, LightingType, AccessibilityRating, YearCreated, Category, CurrentCondition, OwnerEntity, ContactPhone, Website, CoordinatesReference, Description) VALUES
(3001, SunriseStatue, JaneDoe, '2021-09-10', 5001, 34.0522, -118.2437, Bronze, 3.5, 2.0, 1.5, CityArtsCouncil, 250000.0, Annual, LED, 5, 2019, Sculpture, Excellent, CityDept, 5551234567, http://cityart.example.com, WGS84, A towering bronze figure representing sunrise),
(3002, RiverWave, JohnSmith, '2020-06-15', 5002, 36.1699, -115.1398, Steel, 4.0, 3.0, 2.0, StateCulturalFund, 300000.0, BiAnnual, Spot, 4, 2018, Installation, Good, StateArtsBoard, 5559876543, http://stateart.example.com, NAD83, Abstract steel wave near riverwalk),
(3003, LightArc, AliceLee, '2022-11-05', 5003, 40.7128, -74.0060, Glass, 2.5, 2.5, 0.5, PrivateDonor, 150000.0, Quarterly, Solar, 5, 2022, LightArt, New, PrivateCollector, 5555555555, http://privateart.example.com, WGS84, Interactive glass arc that glows at night);

-- Bike lane usage statistics
CREATE TABLE bike_lane_usage_stats
(
    StatID INTEGER PRIMARY KEY,
    LaneID INTEGER,
    Date DATE,
    Hour INTEGER,
    BikeCount INTEGER,
    AverageSpeedKph REAL,
    MaxSpeedKph REAL,
    MinSpeedKph REAL,
    OccupancyRate REAL,
    WeatherCondition TEXT,
    TemperatureC REAL,
    PrecipitationMM REAL,
    WindSpeedKph REAL,
    WindDirection TEXT,
    EventFlag INTEGER,
    MaintenanceFlag INTEGER,
    SensorsActive INTEGER,
    DataQualityScore INTEGER,
    CityDistrict TEXT,
    ReportingAgency TEXT,
    Latitude REAL,
    Longitude REAL,
    Notes TEXT
);

INSERT INTO bike_lane_usage_stats (StatID, LaneID, Date, Hour, BikeCount, AverageSpeedKph, MaxSpeedKph, MinSpeedKph, OccupancyRate, WeatherCondition, TemperatureC, PrecipitationMM, WindSpeedKph, WindDirection, EventFlag, MaintenanceFlag, SensorsActive, DataQualityScore, CityDistrict, ReportingAgency, Latitude, Longitude, Notes) VALUES
(4001, 601, '2023-04-01', 8, 120, 15.2, 22.5, 8.0, 0.75, Sunny, 18.0, 0.0, 5.0, N, 0, 0, 1, 95, Downtown, TransportDept, 34.0522, -118.2437, Morning rush hour),
(4002, 602, '2023-04-01', 17, 85, 12.8, 18.9, 7.2, 0.60, Cloudy, 20.0, 0.0, 4.5, NE, 0, 0, 1, 90, Midtown, TransportDept, 36.1699, -115.1398, Evening commute),
(4003, 603, '2023-04-02', 12, 45, 10.5, 15.0, 5.0, 0.40, Rain, 16.0, 2.3, 6.0, W, 1, 0, 1, 80, Uptown, TransportDept, 40.7128, -74.0060, Light rain reduces usage);

-- Car sharing fleet
CREATE TABLE car_sharing_fleet
(
    VehicleID INTEGER PRIMARY KEY,
    FleetID INTEGER,
    Make TEXT,
    Model TEXT,
    Year INTEGER,
    LicensePlate TEXT,
    VIN TEXT,
    CurrentMileage INTEGER,
    FuelLevelPct REAL,
    BatteryCapacityKWh REAL,
    Status TEXT,
    LocationID INTEGER,
    LastServiceDate DATE,
    NextServiceDue DATE,
    AssignedUserID INTEGER,
    RentalRatePerHour REAL,
    RentalRatePerDay REAL,
    InsurancePolicyID INTEGER,
    GPSDeviceID INTEGER,
    Color TEXT,
    SeatingCapacity INTEGER,
    AcquisitionDate DATE,
    CostUSD REAL,
    Currency TEXT,
    DepreciationRatePct REAL
);

INSERT INTO car_sharing_fleet (VehicleID, FleetID, Make, Model, Year, LicensePlate, VIN, CurrentMileage, FuelLevelPct, BatteryCapacityKWh, Status, LocationID, LastServiceDate, NextServiceDue, AssignedUserID, RentalRatePerHour, RentalRatePerDay, InsurancePolicyID, GPSDeviceID, Color, SeatingCapacity, AcquisitionDate, CostUSD, Currency, DepreciationRatePct) VALUES
(7001, 8001, Toyota, Prius, 2021, CS1234, 1HGCM82633A004352, 15000, 80.0, 0.0, Available, 9001, '2023-03-01', '2023-09-01', NULL, 12.5, 85.0, 5001, 6001, Blue, 5, '2021-05-10', 25000.0, USD, 15.0),
(7002, 8001, Nissan, Leaf, 2022, CS5678, 1HGCM82633A004353, 8000, 0.0, 45.0, InUse, 9002, '2023-02-15', '2023-08-15', 3001, 14.0, 95.0, 5002, 6002, White, 5, '2022-03-20', 30000.0, USD, 12.0),
(7003, 8002, Ford, Escape, 2020, CS9012, 1HGCM82633A004354, 22000, 65.0, 0.0, Maintenance, 9003, '2023-01-10', '2023-07-10', NULL, 10.0, 70.0, 5003, 6003, Red, 5, '2020-08-05', 27000.0, USD, 18.0);

-- Fleet fuel efficiency records
CREATE TABLE fleet_fuel_efficiency
(
    RecordID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    Date DATE,
    OdometerStartKm INTEGER,
    OdometerEndKm INTEGER,
    FuelUsedLiters REAL,
    FuelCostUSD REAL,
    AvgSpeedKph REAL,
    MaxSpeedKph REAL,
    IdleTimeMinutes INTEGER,
    RouteID INTEGER,
    DriverID INTEGER,
    FuelType TEXT,
    EmissionFactor REAL,
    CO2Kg REAL,
    EfficiencyKmPerLiter REAL,
    EfficiencyLitersPer100Km REAL,
    Notes TEXT,
    CreatedBy INTEGER,
    ApprovedBy INTEGER,
    Status TEXT,
    Region TEXT,
    WeatherCondition TEXT
);

INSERT INTO fleet_fuel_efficiency (RecordID, VehicleID, Date, OdometerStartKm, OdometerEndKm, FuelUsedLiters, FuelCostUSD, AvgSpeedKph, MaxSpeedKph, IdleTimeMinutes, RouteID, DriverID, FuelType, EmissionFactor, CO2Kg, EfficiencyKmPerLiter, EfficiencyLitersPer100Km, Notes, CreatedBy, ApprovedBy, Status, Region, WeatherCondition) VALUES
(9001, 7001, '2023-04-01', 15000, 15500, 350.0, 420.0, 65.0, 110.0, 30, 1001, 4001, Diesel, 2.68, 938.0, 14.3, 7.0, Normal operation, 100, 101, Approved, West, Sunny),
(9002, 7002, '2023-04-02', 8000, 8500, 280.0, 336.0, 60.0, 105.0, 20, 1002, 4002, Electricity, 0.0, 0.0, 0.0, 0.0, Electric vehicle, 102, 103, Approved, East, Cloudy),
(9003, 7003, '2023-04-03', 22000, 22500, 400.0, 480.0, 70.0, 115.0, 25, 1003, 4003, Gasoline, 2.31, 924.0, 12.5, 8.0, Minor delay, 104, 105, Pending, Central, Rain);

-- Street cleaning schedule
CREATE TABLE street_cleaning_schedule
(
    ScheduleID INTEGER PRIMARY KEY,
    StreetID INTEGER,
    CleaningDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    CrewID INTEGER,
    VehicleID INTEGER,
    CleaningMethod TEXT,
    WasteCollectedKg REAL,
    WaterUsageLiters REAL,
    DetergentUsedLiters REAL,
    SupervisorID INTEGER,
    Status TEXT,
    Remarks TEXT,
    LatitudeStart REAL,
    LongitudeStart REAL,
    LatitudeEnd REAL,
    LongitudeEnd REAL,
    FrequencyDays INTEGER,
    NextScheduledDate DATE,
    ContractID INTEGER,
    VendorID INTEGER,
    CostUSD REAL
);

INSERT INTO street_cleaning_schedule (ScheduleID, StreetID, CleaningDate, StartTime, EndTime, CrewID, VehicleID, CleaningMethod, WasteCollectedKg, WaterUsageLiters, DetergentUsedLiters, SupervisorID, Status, Remarks, LatitudeStart, LongitudeStart, LatitudeEnd, LongitudeEnd, FrequencyDays, NextScheduledDate, ContractID, VendorID, CostUSD) VALUES
(1101, 1201, '2023-04-05', '08:00', '10:00', 2101, 3101, Mechanical, 150.0, 2000.0, 15.0, 4101, Completed, None, 34.0522, -118.2437, 34.0530, -118.2420, 7, '2023-04-12', 5101, 6101, 1200.0),
(1102, 1202, '2023-04-06', '09:30', '11:30', 2102, 3102, Hydro, 200.0, 2500.0, 20.0, 4102, Completed, None, 36.1699, -115.1398, 36.1705, -115.1380, 14, '2023-04-20', 5102, 6102, 1500.0),
(1103, 1203, '2023-04-07', '07:45', '09:45', 2103, 3103, Mechanical, 120.0, 1800.0, 12.0, 4103, Pending, Delayed due to traffic, 40.7128, -74.0060, 40.7135, -74.0050, 30, '2023-05-07', 5103, 6103, 1800.0);

-- Municipal water quality reports
CREATE TABLE municipal_water_quality_reports
(
    ReportID INTEGER PRIMARY KEY,
    SamplingLocationID INTEGER,
    SampleDate DATE,
    SampleTime TEXT,
    TemperatureC REAL,
    pH REAL,
    TurbidityNTU REAL,
    ConductivityUS REAL,
    LeadPPB REAL,
    MercuryPPB REAL,
    ChlorinePPM REAL,
    FluoridePPM REAL,
    NitratePPM REAL,
    BacteriaCountCFU INTEGER,
    SampleCollectorID INTEGER,
    AnalyzerID INTEGER,
    ResultStatus TEXT,
    ApprovedBy INTEGER,
    ReportURL TEXT,
    Notes TEXT,
    Latitude REAL,
    Longitude REAL,
    Region TEXT
);

INSERT INTO municipal_water_quality_reports (ReportID, SamplingLocationID, SampleDate, SampleTime, TemperatureC, pH, TurbidityNTU, ConductivityUS, LeadPPB, MercuryPPB, ChlorinePPM, FluoridePPM, NitratePPM, BacteriaCountCFU, SampleCollectorID, AnalyzerID, ResultStatus, ApprovedBy, ReportURL, Notes, Latitude, Longitude, Region) VALUES
(1301, 1401, '2023-03-31', '08:00', 12.5, 7.2, 0.5, 250.0, 2.1, 0.0, 0.3, 0.7, 3.5, 10, 2401, 3401, Approved, 4401, http://waterdata.example.com/1301, Routine sampling, 34.0522, -118.2437, West),
(1302, 1402, '2023-04-01', '09:30', 13.0, 7.5, 0.8, 260.0, 1.8, 0.0, 0.4, 0.6, 4.0, 15, 2402, 3402, Approved, 4402, http://waterdata.example.com/1302, Slight increase in turbidity, 36.1699, -115.1398, East),
(1303, 1403, '2023-04-02', '07:45', 11.8, 7.0, 0.3, 240.0, 2.5, 0.0, 0.2, 0.5, 3.0, 8, 2403, 3403, Pending, 4403, http://waterdata.example.com/1303, Pending lab analysis, 40.7128, -74.0060, Central);