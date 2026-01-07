-- Inventory of batteries used in EV charging stations
CREATE TABLE charging_station_battery_inventory
(
    BatteryID INTEGER PRIMARY KEY,
    StationID INTEGER,
    Manufacturer TEXT,
    Model TEXT,
    Capacity_kWh REAL,
    Voltage_V REAL,
    InstallationDate DATE,
    LastServiceDate DATE,
    Status TEXT,
    SerialNumber TEXT,
    WarrantyExpDate DATE,
    Temperature_C REAL,
    ChargeCycles INTEGER,
    StateOfHealth REAL,
    LocationLatitude REAL,
    LocationLongitude REAL,
    PowerConnectorType TEXT,
    MaxChargeRate_kW REAL,
    MinDischargeRate_kW REAL,
    SafetyCertification TEXT,
    BatchNumber TEXT,
    Notes TEXT
);
INSERT INTO charging_station_battery_inventory VALUES (1, 101, 'PowerCell', 'PCX-500', 0.5, 400, '2022-01-15', '2023-06-01', 'Active', 'SN001', '2027-01-15', 25.3, 120, 0.98, 40.7128, -74.0060, 'CCS', 150, 0.5, 'UL', 'BATCH-A', 'Installed near entrance');
INSERT INTO charging_station_battery_inventory VALUES (2, 102, 'EcoBattery', 'EB-250', 0.25, 350, '2021-05-20', '2023-01-12', 'Active', 'SN002', '2026-05-20', 22.1, 200, 0.95, 34.0522, -118.2437, 'CHAdeMO', 100, 0.3, 'CE', 'BATCH-B', 'Replaced after warranty claim');
INSERT INTO charging_station_battery_inventory VALUES (3, 103, 'VoltMax', 'VM-750', 0.75, 420, '2020-11-03', '2022-12-18', 'Decommissioned', 'SN003', '2025-11-03', 28.7, 350, 0.90, 51.5074, -0.1278, 'CCS', 200, 0.7, 'ISO', 'BATCH-C', 'Removed for upgrade');

-- Assets related to street lighting along roadways
CREATE TABLE roadway_illumination_assets
(
    AssetID INTEGER PRIMARY KEY,
    RoadSegmentID INTEGER,
    AssetType TEXT,
    Manufacturer TEXT,
    Model TEXT,
    InstallationDate DATE,
    LastMaintenanceDate DATE,
    LampPower_W INTEGER,
    LampType TEXT,
    Height_m REAL,
    Latitude REAL,
    Longitude REAL,
    OperationalStatus TEXT,
    EnergyConsumption_kWh REAL,
    ControlSystem TEXT,
    Voltage_V REAL,
    WarrantyExpDate DATE,
    MaintenanceContractID INTEGER,
    SmartEnabled INTEGER,
    LightColor TEXT,
    CalibrationDate DATE,
    Notes TEXT
);
INSERT INTO roadway_illumination_assets VALUES (1001, 2001, 'Pole', 'LuminaCo', 'LP-400', '2018-03-10', '2023-04-22', 120, 'LED', 8.5, 40.7128, -74.0060, 'Active', 1500.5, 'DALI', 230, '2023-03-10', 301, 1, 'White', '2023-04-01', 'Near intersection');
INSERT INTO roadway_illumination_assets VALUES (1002, 2002, 'Luminaire', 'BrightLite', 'BL-220', '2019-07-15', '2022-11-30', 80, 'Halogen', 7.0, 34.0522, -118.2437, 'Inactive', 900.2, 'DMX', 240, '2024-07-15', 302, 0, 'Warm', '2022-11-15', 'Scheduled for replacement');
INSERT INTO roadway_illumination_assets VALUES (1003, 2003, 'Pole', 'SolarLight', 'SL-330', '2020-01-05', '2023-01-20', 100, 'LED', 9.0, 51.5074, -0.1278, 'Active', 1100.0, 'ZigBee', 230, '2025-01-05', 303, 1, 'Cool', '2023-01-10', 'Equipped with solar panel');

-- Inspection records for vehicle fuel tanks
CREATE TABLE vehicle_fuel_tank_inspections
(
    InspectionID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    InspectionDate DATE,
    InspectorName TEXT,
    TankSerialNumber TEXT,
    Capacity_liters REAL,
    CurrentLevel_liters REAL,
    LeakageDetected INTEGER,
    CorrosionLevel INTEGER,
    PressureBar REAL,
    Temperature_C REAL,
    InspectionNotes TEXT,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    CertificationStatus TEXT,
    ReplacementNeeded INTEGER,
    ReplacementPartNumber TEXT,
    ServiceCenterID INTEGER,
    WarrantyValid INTEGER,
    PhotoReference TEXT,
    GPSLatitude REAL,
    GPSLongitude REAL
);
INSERT INTO vehicle_fuel_tank_inspections VALUES (5001, 9001, '2023-05-12', 'John Doe', 'FT-001', 60.0, 45.3, 0, 1, 2.5, 22.0, 'Minor surface rust', 0, NULL, 'Certified', 0, NULL, 10, 1, 'IMG001', 40.7128, -74.0060);
INSERT INTO vehicle_fuel_tank_inspections VALUES (5002, 9002, '2023-06-01', 'Jane Smith', 'FT-002', 55.0, 10.0, 1, 2, 1.8, 18.5, 'Leak detected near valve', 1, '2023-06-15', 'Pending', 1, 'RP-789', 11, 0, 'IMG002', 34.0522, -118.2437);
INSERT INTO vehicle_fuel_tank_inspections VALUES (5003, 9003, '2023-04-20', 'Mike Lee', 'FT-003', 70.0, 70.0, 0, 0, 3.0, 25.0, 'All parameters normal', 0, NULL, 'Certified', 0, NULL, 12, 1, 'IMG003', 51.5074, -0.1278);

-- Sensors measuring air quality at fuel stations
CREATE TABLE station_air_quality_sensors
(
    SensorID INTEGER PRIMARY KEY,
    StationID INTEGER,
    SensorModel TEXT,
    Manufacturer TEXT,
    InstallationDate DATE,
    LastCalibrationDate DATE,
    PM2_5_ug_m3 REAL,
    PM10_ug_m3 REAL,
    NO2_ppb REAL,
    O3_ppb REAL,
    CO_ppb REAL,
    Temperature_C REAL,
    Humidity_percent REAL,
    BatteryLevel_percent INTEGER,
    ConnectivityStatus TEXT,
    FirmwareVersion TEXT,
    Latitude REAL,
    Longitude REAL,
    MaintenanceContractID INTEGER,
    AlertThresholdExceeded INTEGER,
    AlertTimestamp DATE,
    Notes TEXT
);
INSERT INTO station_air_quality_sensors VALUES (3001, 101, 'AQ-100', 'EnviroTech', '2022-02-14', '2023-03-01', 12.5, 25.0, 15.2, 30.1, 0.8, 22.5, 55.0, 85, 'Online', 'v1.2.3', 40.7128, -74.0060, 401, 0, NULL, 'Stable readings');
INSERT INTO station_air_quality_sensors VALUES (3002, 102, 'AQ-200', 'ClearAir', '2021-11-20', '2023-01-20', 35.0, 60.0, 40.5, 55.2, 1.5, 24.0, 60.0, 70, 'Online', 'v2.0.1', 34.0522, -118.2437, 402, 1, '2023-04-15', 'Exceeded PM2.5 threshold');
INSERT INTO station_air_quality_sensors VALUES (3003, 103, 'AQ-150', 'PureSense', '2020-08-05', '2022-12-10', 8.0, 15.0, 10.0, 20.0, 0.5, 20.0, 50.0, 95, 'Offline', 'v1.8.7', 51.5074, -0.1278, 403, 0, NULL, 'Sensor under maintenance');

-- Geospatial data for logistics routes
CREATE TABLE logistics_route_geodata
(
    RouteID INTEGER PRIMARY KEY,
    RouteName TEXT,
    StartLocation TEXT,
    EndLocation TEXT,
    Distance_km REAL,
    EstimatedTime_min INTEGER,
    GeoJSON TEXT,
    CreatedDate DATE,
    LastUpdated DATE,
    TrafficPattern TEXT,
    RoadType TEXT,
    ElevationGain_m REAL,
    ElevationLoss_m REAL,
    AvgSpeed_kmh REAL,
    MaxSpeed_kmh REAL,
    MinSpeed_kmh REAL,
    RouteStatus TEXT,
    HazardLevel INTEGER,
    MaintenanceRequired INTEGER,
    PreferredVehicleType TEXT,
    SeasonalAdjustments TEXT,
    Notes TEXT
);
INSERT INTO logistics_route_geodata VALUES (8001, 'North Corridor', 'Warehouse A', 'Distribution Center X', 120.5, 150, '{"type":"LineString","coordinates":[[...]]}', '2022-01-01', '2023-04-10', 'Variable', 'Highway', 300.0, 250.0, 80.0, 110.0, 60.0, 'Active', 2, 0, 'Truck', 'Winter: reduce speed', 'Primary northbound route');
INSERT INTO logistics_route_geodata VALUES (8002, 'Coastal Loop', 'Port B', 'Retail Hub Y', 85.2, 110, '{"type":"LineString","coordinates":[[...]]}', '2021-06-15', '2023-03-20', 'Heavy', 'Coastal Road', 150.0, 140.0, 65.0, 90.0, 45.0, 'Active', 3, 1, 'Van', 'Summer: traffic diversion', 'Scenic but congested');
INSERT INTO logistics_route_geodata VALUES (8003, 'Mountain Pass', 'Depot C', 'Outlet Z', 60.0, 100, '{"type":"LineString","coordinates":[[...]]}', '2020-09-10', '2023-02-05', 'Sparse', 'Mountain', 800.0, 750.0, 55.0, 80.0, 35.0, 'Restricted', 5, 1, '4x4', 'Winter: closed', 'Challenging terrain');

-- Productivity metrics per employee shift
CREATE TABLE employee_shift_productivity
(
    ShiftID INTEGER PRIMARY KEY,
    EmployeeID INTEGER,
    ShiftDate DATE,
    ShiftStartTime TEXT,
    ShiftEndTime TEXT,
    TasksCompleted INTEGER,
    AvgTaskDuration_min REAL,
    ErrorsMade INTEGER,
    OvertimeHours REAL,
    BreakCount INTEGER,
    BreakDuration_min REAL,
    PerformanceRating REAL,
    SupervisorID INTEGER,
    Department TEXT,
    MachineUtilization_percent REAL,
    SafetyIncidents INTEGER,
    TrainingCompleted INTEGER,
    EquipmentUsed TEXT,
    Comments TEXT,
    AttendanceStatus TEXT,
    ShiftType TEXT,
    BonusEligible INTEGER
);
INSERT INTO employee_shift_productivity VALUES (4001, 501, '2023-04-20', '08:00', '16:00', 35, 12.5, 1, 0.0, 2, 30.0, 4.7, 301, 'Logistics', 85.0, 0, 1, 'Forklift A', 'Met targets', 'Present', 'Day', 1);
INSERT INTO employee_shift_productivity VALUES (4002, 502, '2023-04-21', '16:00', '00:00', 28, 14.0, 2, 1.5, 1, 15.0, 3.9, 302, 'Warehouse', 78.0, 1, 0, 'Conveyor B', 'Minor delays', 'Present', 'Evening', 0);
INSERT INTO employee_shift_productivity VALUES (4003, 503, '2023-04-22', '00:00', '08:00', 30, 13.0, 0, 0.0, 3, 45.0, 4.2, 303, 'Maintenance', 90.0, 0, 1, 'Tool Kit C', 'All systems go', 'Present', 'Night', 1);

-- Records of customers who have opted out of communications
CREATE TABLE customer_contact_optouts
(
    OptoutID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    OptoutDate DATE,
    Channel TEXT,
    Reason TEXT,
    ConfirmedBy TEXT,
    EffectiveUntil DATE,
    Notes TEXT,
    OptoutMethod TEXT,
    ReoptInDate DATE,
    PreferenceLevel INTEGER,
    LastUpdated DATE,
    UpdatedBy TEXT,
    IsPermanent INTEGER,
    MarketingSegment TEXT,
    ComplianceStatus TEXT,
    AuditTrailID INTEGER,
    SourceSystem TEXT,
    ContactPoint TEXT,
    OptoutCode TEXT,
    FollowUpRequired INTEGER,
    FollowUpDate DATE
);
INSERT INTO customer_contact_optouts VALUES (9001, 10001, '2023-01-15', 'Email', 'Too many promotional emails', 'System', '2099-12-31', 'No further contact', 'WebForm', NULL, 5, '2023-01-15', 'Admin', 1, 'All', 'Compliant', 701, 'CRM', 'email@example.com', 'E001', 0, NULL);
INSERT INTO customer_contact_optouts VALUES (9002, 10002, '2023-02-10', 'SMS', 'Irrelevant offers', 'Agent', '2024-02-09', 'Will review after 1 year', 'CallCenter', NULL, 3, '2023-02-10', 'AgentSmith', 0, 'Retail', 'Pending', 702, 'CallCenter', '+1234567890', 'S002', 1, '2023-03-01');
INSERT INTO customer_contact_optouts VALUES (9003, 10003, '2023-03-05', 'Phone', 'Do not call', 'SelfService', '2099-12-31', 'Added to Do Not Call list', 'MobileApp', NULL, 4, '2023-03-05', 'User', 1, 'Finance', 'Compliant', 703, 'MobileApp', '+1987654321', 'P003', 0, NULL);

-- Voltage records for energy grid nodes
CREATE TABLE energy_grid_voltage_records
(
    RecordID INTEGER PRIMARY KEY,
    NodeID INTEGER,
    RecordTimestamp DATETIME,
    VoltagePhaseA REAL,
    VoltagePhaseB REAL,
    VoltagePhaseC REAL,
    FrequencyHz REAL,
    LoadMW REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    EventCode TEXT,
    OperatorID INTEGER,
    Status TEXT,
    AlarmFlag INTEGER,
    MaintenanceFlag INTEGER,
    PowerFactor REAL,
    ReactivePowerMVAR REAL,
    FirmwareVersion TEXT,
    GPSLatitude REAL,
    GPSLongitude REAL,
    Comment TEXT,
    DataSource TEXT,
    ValidationStatus TEXT
);
INSERT INTO energy_grid_voltage_records VALUES (12001, 501, '2023-04-20 08:00:00', 230.5, 231.0, 229.8, 60.0, 150.0, 35.0, 45.0, 'NORM', 101, 'Normal', 0, 0, 0.98, 30.5, 'v3.2', 40.7128, -74.0060, 'Stable operation', 'SCADA', 'Validated');
INSERT INTO energy_grid_voltage_records VALUES (12002, 502, '2023-04-20 08:05:00', 235.2, 234.8, 236.0, 60.0, 180.0, 38.0, 50.0, 'OVER', 102, 'Overvoltage', 1, 0, 0.95, 45.0, 'v3.2', 34.0522, -118.2437, 'Transient spike', 'SCADA', 'Validated');
INSERT INTO energy_grid_voltage_records VALUES (12003, 503, '2023-04-20 08:10:00', 225.0, 224.5, 226.0, 60.0, 130.0, 33.0, 42.0, 'UNDER', 103, 'Undervoltage', 1, 1, 0.99, 20.0, 'v3.2', 51.5074, -0.1278, 'Scheduled maintenance', 'SCADA', 'Pending');

-- Forecasts of demand for supply chain items
CREATE TABLE supply_chain_demand_forecasts
(
    ForecastID INTEGER PRIMARY KEY,
    ProductCategory TEXT,
    ForecastMonth TEXT,
    ForecastYear INTEGER,
    ProjectedUnits INTEGER,
    ProjectedRevenue REAL,
    ConfidenceLevel REAL,
    SeasonalityFactor REAL,
    EconomicIndicator TEXT,
    PromotionImpact REAL,
    CompetitorActivityScore REAL,
    SupplierLeadTimeDays INTEGER,
    InventoryOnHand INTEGER,
    SafetyStock INTEGER,
    ForecastMethod TEXT,
    AnalystName TEXT,
    CreatedDate DATE,
    LastUpdated DATE,
    Notes TEXT,
    Region TEXT,
    Currency TEXT,
    AdjustmentFactor REAL
);
INSERT INTO supply_chain_demand_forecasts VALUES (20001, 'Fuel', '2023-06', 2023, 500000, 7500000, 0.92, 1.1, 'GDP_Growth', 0.05, 0.3, 7, 80000, 20000, 'ARIMA', 'Alice', '2023-04-01', '2023-04-15', 'Quarterly forecast', 'NorthAmerica', 'USD', 1.0);
INSERT INTO supply_chain_demand_forecasts VALUES (20002, 'Lubricants', '2023-06', 2023, 120000, 1800000, 0.85, 0.9, 'Consumer_Sentiment', -0.02, 0.5, 10, 30000, 5000, 'ExponentialSmoothing', 'Bob', '2023-04-02', '2023-04-16', 'Adjusted for recent price hike', 'Europe', 'EUR', 0.95);
INSERT INTO supply_chain_demand_forecasts VALUES (20003, 'CarWash Supplies', '2023-06', 2023, 80000, 640000, 0.78, 1.0, 'Unemployment_Rate', 0.01, 0.2, 5, 15000, 3000, 'LinearRegression', 'Carol', '2023-04-03', '2023-04-17', 'Stable demand expected', 'Asia', 'JPY', 1.05);

-- Exceptions and alterations to public transport schedules
CREATE TABLE public_transport_schedule_exceptions
(
    ExceptionID INTEGER PRIMARY KEY,
    ServiceID INTEGER,
    ExceptionDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    ExceptionType TEXT,
    Reason TEXT,
    AffectedRoutes TEXT,
    AdditionalVehicles INTEGER,
    DelayMinutes INTEGER,
    NotificationSent INTEGER,
    UpdatedBy TEXT,
    CreatedTimestamp DATETIME,
    ModifiedTimestamp DATETIME,
    Status TEXT,
    PlannedRecoveryTime TEXT,
    PassengerImpactEstimate INTEGER,
    ContactCenterNotified INTEGER,
    Remarks TEXT,
    Region TEXT,
    Operator TEXT,
    RecoveryStatus TEXT
);
INSERT INTO public_transport_schedule_exceptions VALUES (31001, 1010, '2023-05-01', '08:00', '12:00', 'Maintenance', 'Track upgrade works', 'LineA,LineB', 2, 30, 1, 'Scheduler', '2023-04-20 09:30:00', '2023-04-21 10:00:00', 'Active', '2023-05-01 12:30', 2000, 1, 'Expect minor delays', 'EastSide', 'MetroCo', 'Pending');
INSERT INTO public_transport_schedule_exceptions VALUES (31002, 1020, '2023-05-03', '14:00', '16:00', 'Weather', 'Severe thunderstorm', 'LineC', 0, 45, 1, 'Operations', '2023-04-22 11:15:00', '2023-04-22 12:00:00', 'Active', '2023-05-03 16:30', 3500, 1, 'High impact, advise alternative routes', 'NorthDistrict', 'CityTransit', 'Pending');
INSERT INTO public_transport_schedule_exceptions VALUES (31003, 1030, '2023-05-05', '10:00', '11:30', 'SpecialEvent', 'Marathon causing road closures', 'LineD,LineE', 1, 20, 1, 'Planner', '2023-04-25 08:45:00', '2023-04-25 09:30:00', 'Active', '2023-05-05 12:00', 1500, 0, 'Deploy shuttle buses', 'Central', 'UrbanRail', 'Planned');