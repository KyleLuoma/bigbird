-- Fleet maintenance activity logs for company vehicles
CREATE TABLE fleet_maintenance_logs (
    LogID INTEGER PRIMARY KEY,
    FleetID INTEGER,
    VehicleID INTEGER,
    ServiceDate DATE,
    Odometer INTEGER,
    ServiceType TEXT,
    ServiceCenter TEXT,
    TechnicianID INTEGER,
    LaborHours REAL,
    PartsCost REAL,
    TotalCost REAL,
    MileageSinceLast INTEGER,
    NextServiceDue INTEGER,
    Comments TEXT,
    InspectionPassed INTEGER,
    TirePressureStandard REAL,
    OilChangeInterval INTEGER,
    BrakePadThickness REAL,
    BatteryHealth REAL,
    EmissionTestResult TEXT
);

INSERT INTO fleet_maintenance_logs VALUES (1, 101, 5001, '2023-02-10', 45200, 'EngineTuneUp', 'NorthAutoCenter', 2001, 3.5, 150.75, 312.30, 45200, 50000, 'All good', 1, 32.5, 5000, 7.8, 92.5, 'Pass');
INSERT INTO fleet_maintenance_logs VALUES (2, 102, 5002, '2023-03-05', 61000, 'BrakeReplacement', 'EastServiceHub', 2002, 4.0, 420.00, 580.00, 61000, 65000, 'Replaced front brakes', 1, 31.0, 5000, 6.5, 89.0, 'Pass');
INSERT INTO fleet_maintenance_logs VALUES (3, 103, 5003, '2023-01-22', 29800, 'TireRotation', 'WestMechanics', 2003, 2.0, 80.00, 120.00, 29800, 35000, 'Rotated all tires', 1, 33.0, 5000, 8.2, 95.0, 'Pass');

-- Sensor readings collected from environmental monitoring stations
CREATE TABLE environmental_sensor_readings (
    ReadingID INTEGER PRIMARY KEY,
    StationID INTEGER,
    SensorType TEXT,
    ReadingTimestamp DATETIME,
    TemperatureC REAL,
    HumidityPct REAL,
    CO2ppm REAL,
    PM25ugm3 REAL,
    OzoneDU REAL,
    NoiseDbA REAL,
    Latitude REAL,
    Longitude REAL,
    BatteryVoltage REAL,
    SignalStrength INTEGER,
    CalibrationDate DATE,
    FirmwareVersion TEXT,
    MaintenanceFlag INTEGER,
    DataQualityScore REAL,
    AlertGenerated INTEGER,
    OperatorNotes TEXT
);

INSERT INTO environmental_sensor_readings VALUES (1001, 301, 'AirQuality', '2023-04-01 08:00:00', 22.5, 45.2, 410.0, 12.3, 0.045, 55.0, 40.7128, -74.0060, 3.7, -70, '2023-01-15', 'v1.2', 0, 0.96, 0, '');
INSERT INTO environmental_sensor_readings VALUES (1002, 302, 'Noise', '2023-04-01 08:05:00', 21.8, 48.0, 0.0, 0.0, 0.0, 62.7, 34.0522, -118.2437, 3.9, -65, '2023-02-10', 'v1.3', 0, 0.89, 0, '');
INSERT INTO environmental_sensor_readings VALUES (1003, 303, 'Weather', '2023-04-01 08:10:00', 19.3, 55.1, 0.0, 0.0, 0.0, 48.2, 51.5074, -0.1278, 3.5, -80, '2023-03-05', 'v1.1', 1, 0.78, 1, 'Battery low');

-- Records of city parking permits issued to residents and businesses
CREATE TABLE city_parking_permits (
    PermitID INTEGER PRIMARY KEY,
    PermitNumber TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    PermitType TEXT,
    VehiclePlate TEXT,
    OwnerName TEXT,
    OwnerAddress TEXT,
    OwnerPhone TEXT,
    ZoneCode TEXT,
    FeeAmount REAL,
    PaymentMethod TEXT,
    PaymentStatus TEXT,
    ViolationCount INTEGER,
    IssuingOfficerID INTEGER,
    Latitude REAL,
    Longitude REAL,
    PermitStatus TEXT,
    RenewalNoticeSent INTEGER,
    Notes TEXT,
    LastUpdated TIMESTAMP
);

INSERT INTO city_parking_permits VALUES (50001, 'CP00123', '2022-05-01', '2023-04-30', 'Resident', 'ABC1234', 'John Doe', '123 Main St', '5551234567', 'Z01', 50.00, 'CreditCard', 'Paid', 0, 7001, 40.7128, -74.0060, 'Active', 1, '', '2023-03-15 09:00:00');
INSERT INTO city_parking_permits VALUES (50002, 'CP00456', '2022-06-15', '2023-06-14', 'Business', 'XYZ9876', 'Acme Corp', '456 Commerce Ave', '5559876543', 'Z02', 200.00, 'BankTransfer', 'Paid', 2, 7002, 34.0522, -118.2437, 'Active', 0, '', '2023-03-20 11:30:00');
INSERT INTO city_parking_permits VALUES (50003, 'CP00789', '2022-09-10', '2023-09-09', 'Visitor', 'LMN4567', 'Jane Smith', '789 Oak Rd', '5555551212', 'Z03', 20.00, 'Cash', 'Unpaid', 0, 7003, 51.5074, -0.1278, 'Pending', 0, 'Awaiting payment', '2023-03-22 15:45:00');

-- Milestones tracking for renewable energy projects
CREATE TABLE renewable_energy_project_milestones (
    MilestoneID INTEGER PRIMARY KEY,
    ProjectID INTEGER,
    MilestoneName TEXT,
    PlannedDate DATE,
    ActualDate DATE,
    Status TEXT,
    BudgetAllocated REAL,
    BudgetSpent REAL,
    ResponsibleTeam TEXT,
    RiskLevel TEXT,
    Comments TEXT,
    RegulatoryApproval INTEGER,
    PermitNumber TEXT,
    ContractorID INTEGER,
    EnergyCapacityMW REAL,
    LocationLatitude REAL,
    LocationLongitude REAL,
    StakeholderEngagementScore REAL,
    DocumentVersion TEXT,
    UpdateTimestamp TIMESTAMP,
    FlaggedForReview INTEGER
);

INSERT INTO renewable_energy_project_milestones VALUES (9001, 1501, 'SiteSurveyCompleted', '2023-01-15', '2023-01-14', 'Completed', 100000.00, 95000.00, 'SurveyTeam', 'Low', '', 1, 'PERM123', 3001, 0.0, 45.1234, -122.5678, 0.85, 'v2.0', '2023-02-01 10:00:00', 0);
INSERT INTO renewable_energy_project_milestones VALUES (9002, 1501, 'PermittingApproved', '2023-03-01', '2023-03-03', 'Completed', 200000.00, 210000.00, 'LegalTeam', 'Medium', '', 1, 'PERM124', 3002, 0.0, 45.1234, -122.5678, 0.78, 'v2.1', '2023-04-01 12:30:00', 0);
INSERT INTO renewable_energy_project_milestones VALUES (9003, 1501, 'ConstructionStart', '2023-05-01', NULL, 'Pending', 5000000.00, 2500000.00, 'ConstructionTeam', 'High', 'Awaiting final permits', 0, '', 3003, 150.0, 45.1234, -122.5678, 0.60, 'v2.2', '2023-04-15 09:45:00', 1);

-- Weather condition records associated with logistics routes
CREATE TABLE logistics_route_weather_conditions (
    EntryID INTEGER PRIMARY KEY,
    RouteID INTEGER,
    SegmentID INTEGER,
    ObservationDate DATE,
    TemperatureC REAL,
    PrecipitationMm REAL,
    WindSpeedKph REAL,
    WindDirection TEXT,
    VisibilityKm REAL,
    RoadCondition TEXT,
    HazardLevel TEXT,
    RecordedBy TEXT,
    SensorID INTEGER,
    Latitude REAL,
    Longitude REAL,
    ForecastedTempC REAL,
    ForecastedPrecipitationMm REAL,
    ForecastedWindSpeedKph REAL,
    ForecastedHazardLevel TEXT,
    Notes TEXT,
    UpdateTimestamp TIMESTAMP
);

INSERT INTO logistics_route_weather_conditions VALUES (20001, 4001, 1, '2023-04-10', 12.5, 0.0, 15.0, 'NE', 10.0, 'Dry', 'Low', 'AutoSensor', 8001, 38.8951, -77.0364, 13.0, 0.0, 12.0, 'Low', '', '2023-04-10 08:00:00');
INSERT INTO logistics_route_weather_conditions VALUES (20002, 4001, 2, '2023-04-10', 13.0, 2.5, 20.0, 'E', 5.0, 'Wet', 'Medium', 'AutoSensor', 8002, 39.0997, -94.5786, 13.5, 3.0, 18.0, 'Medium', 'Slippery patches', '2023-04-10 08:15:00');
INSERT INTO logistics_route_weather_conditions VALUES (20003, 4002, 1, '2023-04-11', 8.0, 10.0, 30.0, 'S', 2.0, 'Snow', 'High', 'Manual', 8003, 40.7128, -74.0060, 7.5, 12.0, 28.0, 'High', 'Snow accumulation', '2023-04-11 07:45:00');

-- Configuration parameters for smart city traffic signal controllers
CREATE TABLE smart_city_traffic_signal_configurations (
    ConfigID INTEGER PRIMARY KEY,
    IntersectionID INTEGER,
    SignalControllerID INTEGER,
    CycleLengthSec INTEGER,
    GreenTimeSec INTEGER,
    YellowTimeSec INTEGER,
    RedTimeSec INTEGER,
    PedestrianPhase INTEGER,
    VehicleDetectionEnabled INTEGER,
    AdaptiveControlEnabled INTEGER,
    MaxQueueLength INTEGER,
    MinGreenTimeSec INTEGER,
    MaxGreenTimeSec INTEGER,
    CoordinationGroup TEXT,
    FirmwareVersion TEXT,
    LastMaintenanceDate DATE,
    CalibrationDate DATE,
    PowerSupplyVoltage REAL,
    CommunicationProtocol TEXT,
    Status TEXT,
    Notes TEXT,
    UpdatedAt TIMESTAMP
);

INSERT INTO smart_city_traffic_signal_configurations VALUES (301, 1001, 50001, 120, 45, 5, 70, 1, 1, 1, 15, 30, 90, 'GroupA', 'v3.1', '2023-01-10', '2022-12-01', 24.0, 'TCP', 'Operational', '', '2023-04-01 09:00:00');
INSERT INTO smart_city_traffic_signal_configurations VALUES (302, 1002, 50002, 110, 40, 4, 66, 0, 1, 0, 12, 28, 85, 'GroupB', 'v3.0', '2022-11-20', '2022-10-15', 24.5, 'UDP', 'Operational', '', '2023-04-01 09:05:00');
INSERT INTO smart_city_traffic_signal_configurations VALUES (303, 1003, 50003, 130, 50, 6, 74, 1, 0, 1, 18, 35, 95, 'GroupC', 'v3.2', '2023-02-05', '2023-01-01', 23.8, 'TCP', 'MaintenanceRequired', 'Battery replacement needed', '2023-04-01 09:10:00');

-- Catalog of water quality sampling locations
CREATE TABLE water_quality_sampling_sites (
    SiteID INTEGER PRIMARY KEY,
    SiteName TEXT,
    Latitude REAL,
    Longitude REAL,
    WaterBody TEXT,
    SamplingFrequencyDays INTEGER,
    OwnerAgency TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    PermitNumber TEXT,
    LastInspectionDate DATE,
    ParameterSet TEXT,
    LabAccreditation TEXT,
    SampleVolumeLiters REAL,
    StorageTemperatureC REAL,
    TransportTimeHours REAL,
    AnalysisMethod TEXT,
    ResultReportingFormat TEXT,
    DataQualityFlag INTEGER,
    Notes TEXT,
    UpdatedTimestamp TIMESTAMP
);

INSERT INTO water_quality_sampling_sites VALUES (601, 'RiverNorthStation', 45.6789, -122.3456, 'RiverNorth', 30, 'EnvironmentalAgency', 'Alice Green', '5551112222', 'PERM567', '2023-03-15', 'BasicSet', 'ISO17025', 1.0, 4.0, 2.5, 'ICPMS', 'XML', 1, '', '2023-03-20 10:00:00');
INSERT INTO water_quality_sampling_sites VALUES (602, 'LakeEastPoint', 46.1234, -121.9876, 'LakeEast', 60, 'WaterResourcesDept', 'Bob Blue', '5553334444', 'PERM568', '2023-02-28', 'ExtendedSet', 'ISO17025', 2.0, 3.5, 3.0, 'GCMS', 'CSV', 0, 'Pending QA review', '2023-03-20 11:30:00');
INSERT INTO water_quality_sampling_sites VALUES (603, 'GroundwellA', 45.9000, -122.0500, 'Groundwater', 90, 'PublicHealthDept', 'Carol Red', '5555556666', 'PERM569', '2023-01-10', 'TraceSet', 'ISO17025', 0.5, 4.5, 1.5, 'AAS', 'JSON', 1, '', '2023-03-20 12:45:00');

-- Operations log for autonomous drone deliveries
CREATE TABLE drone_delivery_operations (
    OperationID INTEGER PRIMARY KEY,
    DroneID TEXT,
    MissionID TEXT,
    DispatchTime DATETIME,
    ArrivalTime DATETIME,
    OriginLocation TEXT,
    DestinationLocation TEXT,
    PayloadWeightKg REAL,
    BatteryStartPct INTEGER,
    BatteryEndPct INTEGER,
    FlightDistanceKm REAL,
    AverageSpeedKph REAL,
    WindSpeedKph REAL,
    WeatherCondition TEXT,
    OperatorID INTEGER,
    FlightMode TEXT,
    SuccessFlag INTEGER,
    ErrorCode TEXT,
    MaintenanceRequired INTEGER,
    Notes TEXT,
    LogTimestamp TIMESTAMP
);

INSERT INTO drone_delivery_operations VALUES (7001, 'DRN001', 'MIS1001', '2023-04-10 08:00:00', '2023-04-10 08:25:00', 'WarehouseA', 'CustomerX', 2.5, 100, 75, 15.0, 36.0, 5.0, 'Clear', 4001, 'Auto', 1, '', 0, '', '2023-04-10 08:26:00');
INSERT INTO drone_delivery_operations VALUES (7002, 'DRN002', 'MIS1002', '2023-04-10 09:15:00', '2023-04-10 09:45:00', 'WarehouseB', 'CustomerY', 3.0, 100, 65, 18.0, 30.0, 8.0, 'Windy', 4002, 'Auto', 0, 'E02', 1, 'Propeller check needed', '2023-04-10 09:46:00');
INSERT INTO drone_delivery_operations VALUES (7003, 'DRN003', 'MIS1003', '2023-04-10 10:30:00', NULL, 'WarehouseC', 'CustomerZ', 1.5, 100, 90, 12.0, 25.0, 2.0, 'Rain', 4003, 'Manual', 0, '', 0, 'Awaiting arrival confirmation', '2023-04-10 10:31:00');

-- Inventory of public art installations across the city
CREATE TABLE public_art_installation_inventory (
    InstallationID INTEGER PRIMARY KEY,
    Title TEXT,
    Artist TEXT,
    InstallationDate DATE,
    LocationLatitude REAL,
    LocationLongitude REAL,
    Neighborhood TEXT,
    Material TEXT,
    DimensionsCm TEXT,
    FundingSource TEXT,
    MaintenanceContractor TEXT,
    Status TEXT,
    EstimatedValueUSD REAL,
    AccessibilityRating INTEGER,
    LightingType TEXT,
    GPSCoordinates TEXT,
    PublicEngagementScore REAL,
    ConservationPlan TEXT,
    PhotoReference TEXT,
    Remarks TEXT,
    LastUpdated TIMESTAMP
);

INSERT INTO public_art_installation_inventory VALUES (801, 'RiverSculpture', 'Dana Lee', '2020-06-15', 45.5231, -122.6765, 'NorthDistrict', 'Bronze', '200x150x300', 'CityArtsFund', 'ArtCareCo', 'Installed', 50000.00, 4, 'LED', '45.5231,-122.6765', 0.88, 'Standard', 'photo1.jpg', '', '2023-03-01 12:00:00');
INSERT INTO public_art_installation_inventory VALUES (802, 'SkyMural', 'Luis Gomez', '2019-09-10', 34.0522, -118.2437, 'Downtown', 'Paint', '1500x2000', 'PrivateDonor', 'MuralMaintain', 'Installed', 75000.00, 5, 'Natural', '34.0522,-118.2437', 0.92, 'Standard', 'photo2.jpg', '', '2023-03-05 14:30:00');
INSERT INTO public_art_installation_inventory VALUES (803, 'EcoKiosk', 'Mina Patel', '2021-04-22', 40.7128, -74.0060, 'EastSide', 'RecycledMetal', '300x300x250', 'GreenGrant', 'EcoMaintain', 'Planned', 30000.00, 3, 'Solar', '40.7128,-74.0060', 0.75, 'Draft', 'photo3.jpg', 'Pending installation', '2023-03-10 09:15:00');

-- Assets and specifications of electric grid substations
CREATE TABLE electric_grid_substation_assets (
    AssetID INTEGER PRIMARY KEY,
    SubstationID INTEGER,
    AssetTag TEXT,
    AssetType TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    InstallationDate DATE,
    CapacityMVA REAL,
    VoltageLevelKV REAL,
    LocationLatitude REAL,
    LocationLongitude REAL,
    ConditionRating INTEGER,
    LastInspectionDate DATE,
    MaintenanceDueDate DATE,
    FirmwareVersion TEXT,
    ConnectivityStatus TEXT,
    PowerOutputMW REAL,
    ReactivePowerMVAR REAL,
    Notes TEXT,
    UpdatedAt TIMESTAMP
);

INSERT INTO electric_grid_substation_assets VALUES (9001, 2001, 'ASST001', 'Transformer', 'GE', 'TX-5000', 'SN123456', '2015-03-20', 500.0, 230.0, 39.9526, -75.1652, 4, '2023-01-15', '2023-07-15', 'v5.2', 'Online', 480.0, 150.0, '', '2023-04-01 08:00:00');
INSERT INTO electric_grid_substation_assets VALUES (9002, 2001, 'ASST002', 'CircuitBreaker', 'Siemens', 'CB-250', 'SN789012', '2016-07-11', 250.0, 115.0, 39.9526, -75.1652, 5, '2023-02-20', '2023-08-20', 'v3.1', 'Online', 240.0, 80.0, '', '2023-04-01 08:05:00');
INSERT INTO electric_grid_substation_assets VALUES (9003, 2002, 'ASST003', 'Switchgear', 'ABB', 'SW-300', 'SN345678', '2018-11-05', 300.0, 138.0, 40.7128, -74.0060, 3, '2023-03-10', '2023-09-10', 'v2.8', 'Offline', 280.0, 95.0, 'Under maintenance', '2023-04-01 08:10:00');