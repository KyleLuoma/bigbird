-- Records of fuel card usage at stations
CREATE TABLE fuel_card_usage_logs
(
    LogID INTEGER PRIMARY KEY,
    CardID INTEGER,
    CustomerID INTEGER,
    GasStationID INTEGER,
    TransactionDate DATE,
    TransactionTime TEXT,
    FuelType TEXT,
    VolumeLiters REAL,
    PricePerLiter REAL,
    TotalAmount REAL,
    OdometerReading INTEGER,
    TransactionMode TEXT,
    ApprovalCode TEXT,
    MerchantCategory TEXT,
    Country TEXT,
    Currency TEXT,
    TerminalID INTEGER,
    EmployeeID INTEGER,
    ShiftID INTEGER,
    Remarks TEXT
);

INSERT INTO fuel_card_usage_logs (LogID, CardID, CustomerID, GasStationID, TransactionDate, TransactionTime, FuelType, VolumeLiters, PricePerLiter, TotalAmount, OdometerReading, TransactionMode, ApprovalCode, MerchantCategory, Country, Currency, TerminalID, EmployeeID, ShiftID, Remarks)
VALUES (1, 1001, 501, 2001, '2025-01-15', '08:30', Diesel, 45.6, 1.23, 56.09, 120450, POS, APV001, 5541, USA, USD, 301, 45, 2, 'First refill of day');

INSERT INTO fuel_card_usage_logs (LogID, CardID, CustomerID, GasStationID, TransactionDate, TransactionTime, FuelType, VolumeLiters, PricePerLiter, TotalAmount, OdometerReading, TransactionMode, ApprovalCode, MerchantCategory, Country, Currency, TerminalID, EmployeeID, ShiftID, Remarks)
VALUES (2, 1002, 502, 2002, '2025-01-16', '14:10', Unleaded, 32.0, 1.19, 38.08, 84530, Mobile, APV002, 5542, CAN, CAD, 302, 46, 3, 'Discount applied');

INSERT INTO fuel_card_usage_logs (LogID, CardID, CustomerID, GasStationID, TransactionDate, TransactionTime, FuelType, VolumeLiters, PricePerLiter, TotalAmount, OdometerReading, TransactionMode, ApprovalCode, MerchantCategory, Country, Currency, TerminalID, EmployeeID, ShiftID, Remarks)
VALUES (3, 1003, 503, 2003, '2025-01-17', '19:45', Premium, 55.2, 1.45, 80.04, 67000, POS, APV003, 5543, MEX, MXN, 303, 47, 1, 'Night shift refill');

-- Feature flag definitions for the mobile app
CREATE TABLE mobile_app_feature_flags
(
    FlagID INTEGER PRIMARY KEY,
    FeatureName TEXT,
    Enabled INTEGER,
    RolloutPercentage INTEGER,
    CreationDate DATE,
    CreatedBy TEXT,
    ModifiedDate DATE,
    ModifiedBy TEXT,
    TargetOS TEXT,
    MinVersion TEXT,
    MaxVersion TEXT,
    Description TEXT,
    Platform TEXT,
    ReleaseNotes TEXT,
    OwnerTeam TEXT,
    Dependencies TEXT,
    RiskLevel TEXT,
    ExperimentGroup TEXT,
    DocumentationURL TEXT,
    Status TEXT
);

INSERT INTO mobile_app_feature_flags (FlagID, FeatureName, Enabled, RolloutPercentage, CreationDate, CreatedBy, ModifiedDate, ModifiedBy, TargetOS, MinVersion, MaxVersion, Description, Platform, ReleaseNotes, OwnerTeam, Dependencies, RiskLevel, ExperimentGroup, DocumentationURL, Status)
VALUES (1, 'InstantReload', 1, 50, '2024-11-01', 'devteam', '2024-12-05', 'qalead', 'iOS', '3.0', '5.0', 'Allows quick reload of credit', 'mobile', 'Added in v3.2', 'Payments', 'None', 'Low', 'A', 'http://docs.example.com/instantreload', 'Active');

INSERT INTO mobile_app_feature_flags (FlagID, FeatureName, Enabled, RolloutPercentage, CreationDate, CreatedBy, ModifiedDate, ModifiedBy, TargetOS, MinVersion, MaxVersion, Description, Platform, ReleaseNotes, OwnerTeam, Dependencies, RiskLevel, ExperimentGroup, DocumentationURL, Status)
VALUES (2, 'GeoOffers', 0, 0, '2024-10-15', 'product', '2024-12-01', 'product', 'Android', '2.5', '4.9', 'Location based offers', 'mobile', 'Pending rollout', 'Marketing', 'InstantReload', 'Medium', 'B', 'http://docs.example.com/geooffers', 'Pending');

INSERT INTO mobile_app_feature_flags (FlagID, FeatureName, Enabled, RolloutPercentage, CreationDate, CreatedBy, ModifiedDate, ModifiedBy, TargetOS, MinVersion, MaxVersion, Description, Platform, ReleaseNotes, OwnerTeam, Dependencies, RiskLevel, ExperimentGroup, DocumentationURL, Status)
VALUES (3, 'DarkMode', 1, 100, '2023-01-10', 'ui_team', '2024-01-20', 'ui_team', 'All', '1.0', '5.0', 'Dark theme for UI', 'mobile', 'Stable release', 'UX', 'None', 'Low', 'C', 'http://docs.example.com/darkmode', 'Active');

-- Workplace safety incident records for employees
CREATE TABLE employee_workplace_safety
(
    RecordID INTEGER PRIMARY KEY,
    EmployeeID INTEGER,
    Department TEXT,
    IncidentDate DATE,
    IncidentType TEXT,
    SeverityLevel TEXT,
    Description TEXT,
    InjuredPart TEXT,
    LostTimeHours REAL,
    Witnesses TEXT,
    CorrectiveAction TEXT,
    FollowUpDate DATE,
    Status TEXT,
    ReportedBy TEXT,
    Supervisor TEXT,
    Location TEXT,
    SafetyTrainingCompleted INTEGER,
    EquipmentInvolved TEXT,
    RootCauseAnalysis TEXT,
    PreventiveMeasure TEXT
);

INSERT INTO employee_workplace_safety (RecordID, EmployeeID, Department, IncidentDate, IncidentType, SeverityLevel, Description, InjuredPart, LostTimeHours, Witnesses, CorrectiveAction, FollowUpDate, Status, ReportedBy, Supervisor, Location, SafetyTrainingCompleted, EquipmentInvolved, RootCauseAnalysis, PreventiveMeasure)
VALUES (1, 3001, 'Maintenance', '2024-09-12', 'Slip', 'Minor', 'Slip on wet floor', 'Ankle', 2.5, 'JohnDoe', 'Floor cleaned, signage added', '2024-09-19', 'Closed', 'JaneSmith', 'MikeBrown', 'Station2001', 1, 'Mop', 'Insufficient signage', 'Install anti‑slip mats');

INSERT INTO employee_workplace_safety (RecordID, EmployeeID, Department, IncidentDate, IncidentType, SeverityLevel, Description, InjuredPart, LostTimeHours, Witnesses, CorrectiveAction, FollowUpDate, Status, ReportedBy, Supervisor, Location, SafetyTrainingCompleted, EquipmentInvolved, RootCauseAnalysis, PreventiveMeasure)
VALUES (2, 3002, 'Retail', '2024-10-03', 'Cut', 'Moderate', 'Cut while using box cutter', 'Hand', 5.0, 'AliceLee', 'First aid administered, training refreshed', '2024-10-10', 'Open', 'BobWhite', 'SaraGreen', 'Store101', 1, 'BoxCutter', 'Improper handling', 'Mandatory safety refresher');

INSERT INTO employee_workplace_safety (RecordID, EmployeeID, Department, IncidentDate, IncidentType, SeverityLevel, Description, InjuredPart, LostTimeHours, Witnesses, CorrectiveAction, FollowUpDate, Status, ReportedBy, Supervisor, Location, SafetyTrainingCompleted, EquipmentInvolved, RootCauseAnalysis, PreventiveMeasure)
VALUES (3, 3003, 'Logistics', '2024-11-08', 'Strain', 'Minor', 'Back strain lifting heavy pallet', 'Back', 3.0, 'TomGray', 'Adjusted lifting technique, provided assist device', '2024-11-15', 'Closed', 'LindaBlue', 'GaryRed', 'Warehouse5', 1, 'PalletJack', 'Overexertion', 'Introduce mechanical lifters');

-- Metrics summarizing fuel distribution per region
CREATE TABLE regional_fuel_distribution_metrics
(
    MetricID INTEGER PRIMARY KEY,
    Region TEXT,
    Year INTEGER,
    Month INTEGER,
    TotalLitersDispensed REAL,
    AvgPricePerLiter REAL,
    StationsCount INTEGER,
    AvgQueueTimeMinutes REAL,
    DeliveryVolumeLiters REAL,
    DeliveryCost REAL,
    EmissionsCO2Kg REAL,
    StockOnHandLiters REAL,
    StockTurnoverDays REAL,
    SupplyChainDisruptions INTEGER,
    ForecastAccuracyPercent REAL,
    Note TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    DataSource TEXT,
    Analyst TEXT
);

INSERT INTO regional_fuel_distribution_metrics (MetricID, Region, Year, Month, TotalLitersDispensed, AvgPricePerLiter, StationsCount, AvgQueueTimeMinutes, DeliveryVolumeLiters, DeliveryCost, EmissionsCO2Kg, StockOnHandLiters, StockTurnoverDays, SupplyChainDisruptions, ForecastAccuracyPercent, Note, CreatedAt, UpdatedAt, DataSource, Analyst)
VALUES (1, 'Midwest', 2024, 9, 1250000.5, 1.22, 45, 4.2, 300000.0, 18000.0, 145000.0, 250000.0, 12.5, 2, 96.3, 'Steady demand', '2024-10-01', '2024-10-01', 'ERP', 'JohnDoe');

INSERT INTO regional_fuel_distribution_metrics (MetricID, Region, Year, Month, TotalLitersDispensed, AvgPricePerLiter, StationsCount, AvgQueueTimeMinutes, DeliveryVolumeLiters, DeliveryCost, EmissionsCO2Kg, StockOnHandLiters, StockTurnoverDays, SupplyChainDisruptions, ForecastAccuracyPercent, Note, CreatedAt, UpdatedAt, DataSource, Analyst)
VALUES (2, 'Southwest', 2024, 9, 980000.0, 1.18, 38, 3.8, 260000.0, 15500.0, 112000.0, 210000.0, 11.0, 1, 98.7, 'Higher usage due to heat', '2024-10-01', '2024-10-01', 'ERP', 'AliceLee');

INSERT INTO regional_fuel_distribution_metrics (MetricID, Region, Year, Month, TotalLitersDispensed, AvgPricePerLiter, StationsCount, AvgQueueTimeMinutes, DeliveryVolumeLiters, DeliveryCost, EmissionsCO2Kg, StockOnHandLiters, StockTurnoverDays, SupplyChainDisruptions, ForecastAccuracyPercent, Note, CreatedAt, UpdatedAt, DataSource, Analyst)
VALUES (3, 'Northeast', 2024, 9, 1120000.0, 1.25, 52, 5.0, 280000.0, 17000.0, 130000.0, 230000.0, 13.2, 3, 94.5, 'Minor delays observed', '2024-10-01', '2024-10-01', 'ERP', 'MikeBrown');

-- Air quality measurements taken at gas stations
CREATE TABLE gas_station_air_quality
(
    RecordID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    MeasurementDate DATE,
    PM25 REAL,
    PM10 REAL,
    NO2 REAL,
    SO2 REAL,
    CO REAL,
    O3 REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    WindSpeedMps REAL,
    WindDirection TEXT,
    AQI INTEGER,
    SensorID INTEGER,
    CalibrationDate DATE,
    Status TEXT,
    Operator TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO gas_station_air_quality (RecordID, GasStationID, MeasurementDate, PM25, PM10, NO2, SO2, CO, O3, TemperatureC, HumidityPercent, WindSpeedMps, WindDirection, AQI, SensorID, CalibrationDate, Status, Operator, Notes, CreatedAt, UpdatedAt)
VALUES (1, 2001, '2024-09-20', 12.5, 25.0, 0.018, 0.002, 0.6, 30.2, 22.5, 55.0, 3.2, N, 45, 2024-08-01, Active, GreenEnergy, 'Normal', '2024-09-21', '2024-09-21');

INSERT INTO gas_station_air_quality (RecordID, GasStationID, MeasurementDate, PM25, PM10, NO2, SO2, CO, O3, TemperatureC, HumidityPercent, WindSpeedMps, WindDirection, AQI, SensorID, CalibrationDate, Status, Operator, Notes, CreatedAt, UpdatedAt)
VALUES (2, 2002, '2024-09-20', 18.0, 35.0, 0.025, 0.003, 0.8, 28.5, 24.0, 60.0, 2.9, NE, 46, 2024-08-01, Active, CleanAir, 'Slightly elevated PM', '2024-09-21', '2024-09-21');

INSERT INTO gas_station_air_quality (RecordID, GasStationID, MeasurementDate, PM25, PM10, NO2, SO2, CO, O3, TemperatureC, HumidityPercent, WindSpeedMps, WindDirection, AQI, SensorID, CalibrationDate, Status, Operator, Notes, CreatedAt, UpdatedAt)
VALUES (3, 2003, '2024-09-20', 9.2, 20.5, 0.015, 0.001, 0.5, 31.0, 21.0, 50.0, 3.5, S, 47, 2024-08-01, Active, EnviroCheck, 'Good air quality', '2024-09-21', '2024-09-21');

-- Sessions of customers using the mobile app
CREATE TABLE customer_device_sessions
(
    SessionID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    DeviceID TEXT,
    SessionStart TEXT,
    SessionEnd TEXT,
    IPAddress TEXT,
    OS TEXT,
    AppVersion TEXT,
    Browser TEXT,
    LocationCountry TEXT,
    LocationCity TEXT,
    DataUsageMB REAL,
    EventsCount INTEGER,
    SessionScore REAL,
    ErrorCount INTEGER,
    IsNewUser INTEGER,
    ReferralSource TEXT,
    CampaignID INTEGER,
    DeviceModel TEXT,
    NetworkType TEXT
);

INSERT INTO customer_device_sessions (SessionID, CustomerID, DeviceID, SessionStart, SessionEnd, IPAddress, OS, AppVersion, Browser, LocationCountry, LocationCity, DataUsageMB, EventsCount, SessionScore, ErrorCount, IsNewUser, ReferralSource, CampaignID, DeviceModel, NetworkType)
VALUES (1, 501, 'DEV12345', '2025-01-10 08:15:00', '2025-01-10 08:45:00', '192.168.1.10', 'iOS', '5.2.1', 'Safari', 'USA', 'NewYork', 12.3, 45, 87.5, 0, 1, 'Email', 1001, 'iPhone13', 'WiFi');

INSERT INTO customer_device_sessions (SessionID, CustomerID, DeviceID, SessionStart, SessionEnd, IPAddress, OS, AppVersion, Browser, LocationCountry, LocationCity, DataUsageMB, EventsCount, SessionScore, ErrorCount, IsNewUser, ReferralSource, CampaignID, DeviceModel, NetworkType)
VALUES (2, 502, 'DEV54321', '2025-01-11 14:20:00', '2025-01-11 15:00:00', '10.0.0.5', 'Android', '4.8.0', 'Chrome', 'CAN', 'Toronto', 22.7, 78, 76.2, 2, 0, 'Social', 1002, 'Pixel6', '4G');

INSERT INTO customer_device_sessions (SessionID, CustomerID, DeviceID, SessionStart, SessionEnd, IPAddress, OS, AppVersion, Browser, LocationCountry, LocationCity, DataUsageMB, EventsCount, SessionScore, ErrorCount, IsNewUser, ReferralSource, CampaignID, DeviceModel, NetworkType)
VALUES (3, 503, 'DEV98765', '2025-01-12 19:05:00', '2025-01-12 19:30:00', '172.16.0.2', 'iOS', '5.3.0', 'Safari', 'MEX', 'MexicoCity', 8.9, 30, 92.1, 0, 0, 'Ad', 1003, 'iPhone12', 'LTE');

-- Service history recorded by OEMs for vehicles
CREATE TABLE vehicle_oem_service_history
(
    ServiceID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    OEM TEXT,
    ServiceDate DATE,
    ServiceType TEXT,
    Mileage INTEGER,
    ServiceCenterID INTEGER,
    TechnicianID INTEGER,
    PartsUsed TEXT,
    LaborHours REAL,
    Cost REAL,
    WarrantyCovered INTEGER,
    Notes TEXT,
    FollowUpDate DATE,
    ServiceStatus TEXT,
    ApprovedBy TEXT,
    ServiceContractID INTEGER,
    RecallFlag INTEGER,
    UpdatedAt DATE,
    CreatedAt DATE
);

INSERT INTO vehicle_oem_service_history (ServiceID, VehicleID, OEM, ServiceDate, ServiceType, Mileage, ServiceCenterID, TechnicianID, PartsUsed, LaborHours, Cost, WarrantyCovered, Notes, FollowUpDate, ServiceStatus, ApprovedBy, ServiceContractID, RecallFlag, UpdatedAt, CreatedAt)
VALUES (1, 8001, 'AutoMakerX', '2024-06-15', 'OilChange', 45200, 301, 401, 'OilFilter,EngineOil', 1.5, 89.99, 1, 'Routine maintenance', '2024-07-15', 'Closed', 'MikeBrown', 501, 0, '2024-06-20', '2024-06-15');

INSERT INTO vehicle_oem_service_history (ServiceID, VehicleID, OEM, ServiceDate, ServiceType, Mileage, ServiceCenterID, TechnicianID, PartsUsed, LaborHours, Cost, WarrantyCovered, Notes, FollowUpDate, ServiceStatus, ApprovedBy, ServiceContractID, RecallFlag, UpdatedAt, CreatedAt)
VALUES (2, 8002, 'AutoMakerY', '2024-08-02', 'BrakeInspection', 60300, 302, 402, 'BrakePads,BrakeFluid', 2.0, 150.00, 0, 'Brake wear observed', '2024-08-30', 'Open', 'SaraGreen', 502, 0, '2024-08-10', '2024-08-02');

INSERT INTO vehicle_oem_service_history (ServiceID, VehicleID, OEM, ServiceDate, ServiceType, Mileage, ServiceCenterID, TechnicianID, PartsUsed, LaborHours, Cost, WarrantyCovered, Notes, FollowUpDate, ServiceStatus, ApprovedBy, ServiceContractID, RecallFlag, UpdatedAt, CreatedAt)
VALUES (3, 8003, 'AutoMakerX', '2024-09-20', 'RecallRepair', 75000, 303, 403, 'AirbagModule', 3.0, 0.00, 1, 'Recall – airbag replacement', '2024-10-20', 'Closed', 'JohnDoe', 503, 1, '2024-09-25', '2024-09-20');

-- Performance metrics for suppliers in logistics
CREATE TABLE supplier_logistics_performance
(
    RecordID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    PeriodStart DATE,
    PeriodEnd DATE,
    OnTimeDeliveryPercent REAL,
    AverageLeadDays REAL,
    ShipmentCount INTEGER,
    DamagedShipments INTEGER,
    TotalWeightKg REAL,
    FreightCost REAL,
    ComplianceScore REAL,
    SustainabilityScore REAL,
    AvgResponseTimeHours REAL,
    ContractRenewalDate DATE,
    RiskLevel TEXT,
    PerformanceComments TEXT,
    Analyst TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    DataSource TEXT
);

INSERT INTO supplier_logistics_performance (RecordID, SupplierID, PeriodStart, PeriodEnd, OnTimeDeliveryPercent, AverageLeadDays, ShipmentCount, DamagedShipments, TotalWeightKg, FreightCost, ComplianceScore, SustainabilityScore, AvgResponseTimeHours, ContractRenewalDate, RiskLevel, PerformanceComments, Analyst, CreatedAt, UpdatedAt, DataSource)
VALUES (1, 9001, '2024-01-01', '2024-12-31', 96.5, 3.2, 1200, 5, 45000.0, 78000.0, 88.0, 92.0, 4.5, '2025-01-01', 'Low', 'Consistently on time', 'AliceLee', '2024-12-31', '2024-12-31', 'ERP');

INSERT INTO supplier_logistics_performance (RecordID, SupplierID, PeriodStart, PeriodEnd, OnTimeDeliveryPercent, AverageLeadDays, ShipmentCount, DamagedShipments, TotalWeightKg, FreightCost, ComplianceScore, SustainabilityScore, AvgResponseTimeHours, ContractRenewalDate, RiskLevel, PerformanceComments, Analyst, CreatedAt, UpdatedAt, DataSource)
VALUES (2, 9002, '2024-01-01', '2024-12-31', 89.0, 5.0, 950, 12, 38000.0, 65000.0, 75.0, 80.0, 6.0, '2025-06-30', 'Medium', 'Needs improvement on lead times', 'BobWhite', '2024-12-31', '2024-12-31', 'ERP');

INSERT INTO supplier_logistics_performance (RecordID, SupplierID, PeriodStart, PeriodEnd, OnTimeDeliveryPercent, AverageLeadDays, ShipmentCount, DamagedShipments, TotalWeightKg, FreightCost, ComplianceScore, SustainabilityScore, AvgResponseTimeHours, ContractRenewalDate, RiskLevel, PerformanceComments, Analyst, CreatedAt, UpdatedAt, DataSource)
VALUES (3, 9003, '2024-01-01', '2024-12-31', 92.3, 4.1, 1100, 8, 42000.0, 72000.0, 82.0, 85.0, 5.2, '2025-03-15', 'Low', 'Stable performance', 'MikeBrown', '2024-12-31', '2024-12-31', 'ERP');

-- Trade orders in the energy market
CREATE TABLE energy_market_trade_orders
(
    OrderID INTEGER PRIMARY KEY,
    TradeDate DATE,
    TradeTime TEXT,
    Market TEXT,
    Product TEXT,
    QuantityMWH REAL,
    PricePerMWH REAL,
    BuyerID INTEGER,
    SellerID INTEGER,
    OrderType TEXT,
    ExecutionVenue TEXT,
    SettlementDate DATE,
    Status TEXT,
    BrokerID INTEGER,
    Currency TEXT,
    TransactionID INTEGER,
    Commission REAL,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO energy_market_trade_orders (OrderID, TradeDate, TradeTime, Market, Product, QuantityMWH, PricePerMWH, BuyerID, SellerID, OrderType, ExecutionVenue, SettlementDate, Status, BrokerID, Currency, TransactionID, Commission, Notes, CreatedAt, UpdatedAt)
VALUES (1, '2025-01-05', '09:30', 'NYISO', 'Solar', 1500.0, 35.25, 2001, 3001, 'Buy', 'ExchangeA', '2025-01-07', 'Settled', 4001, 'USD', 5001, 125.0, 'Monthly solar purchase', '2025-01-05', '2025-01-07');

INSERT INTO energy_market_trade_orders (OrderID, TradeDate, TradeTime, Market, Product, QuantityMWH, PricePerMWH, BuyerID, SellerID, OrderType, ExecutionVenue, SettlementDate, Status, BrokerID, Currency, TransactionID, Commission, Notes, CreatedAt, UpdatedAt)
VALUES (2, '2025-01-06', '11:15', 'CAISO', 'Wind', 2000.0, 28.70, 2002, 3002, 'Sell', 'ExchangeB', '2025-01-08', 'Pending', 4002, 'USD', 5002, 140.0, 'Quarterly wind sale', '2025-01-06', '2025-01-08');

INSERT INTO energy_market_trade_orders (OrderID, TradeDate, TradeTime, Market, Product, QuantityMWH, PricePerMWH, BuyerID, SellerID, OrderType, ExecutionVenue, SettlementDate, Status, BrokerID, Currency, TransactionID, Commission, Notes, CreatedAt, UpdatedAt)
VALUES (3, '2025-01-07', '14:45', 'ERCOT', 'NaturalGas', 3000.0, 22.10, 2003, 3003, 'Buy', 'ExchangeC', '2025-01-09', 'Cancelled', 4003, 'USD', 5003, 160.0, 'Spot gas purchase', '2025-01-07', '2025-01-09');

-- Definitions of geographic fence zones
CREATE TABLE geo_fence_zones
(
    ZoneID INTEGER PRIMARY KEY,
    ZoneName TEXT,
    LatitudeCenter REAL,
    LongitudeCenter REAL,
    RadiusMeters REAL,
    CreatedBy TEXT,
    CreationDate DATE,
    UpdatedBy TEXT,
    UpdateDate DATE,
    Active INTEGER,
    AllowedVehicleTypes TEXT,
    SpeedLimitKmh REAL,
    RestrictionLevel TEXT,
    NotificationEmail TEXT,
    GeoJSON TEXT,
    ParentZoneID INTEGER,
    Description TEXT,
    MonitoringEnabled INTEGER,
    AlertThreshold INTEGER,
    LastModifiedBy TEXT
);

INSERT INTO geo_fence_zones (ZoneID, ZoneName, LatitudeCenter, LongitudeCenter, RadiusMeters, CreatedBy, CreationDate, UpdatedBy, UpdateDate, Active, AllowedVehicleTypes, SpeedLimitKmh, RestrictionLevel, NotificationEmail, GeoJSON, ParentZoneID, Description, MonitoringEnabled, AlertThreshold, LastModifiedBy)
VALUES (1, 'DowntownCore', 40.7128, -74.0060, 1500, 'admin', '2024-01-01', 'admin', '2024-06-01', 1, 'All', 30, 'High', 'ops@example.com', '{...}', NULL, 'Central business district', 1, 5, 'admin');

INSERT INTO geo_fence_zones (ZoneID, ZoneName, LatitudeCenter, LongitudeCenter, RadiusMeters, CreatedBy, CreationDate, UpdatedBy, UpdateDate, Active, AllowedVehicleTypes, SpeedLimitKmh, RestrictionLevel, NotificationEmail, GeoJSON, ParentZoneID, Description, MonitoringEnabled, AlertThreshold, LastModifiedBy)
VALUES (2, 'WarehouseArea', 41.8781, -87.6298, 800, 'logistics', '2024-02-15', 'logistics', '2024-07-15', 1, 'Truck', 20, 'Medium', 'logistics@example.com', '{...}', 1, 'Loading zone for trucks', 1, 3, 'logistics');

INSERT INTO geo_fence_zones (ZoneID, ZoneName, LatitudeCenter, LongitudeCenter, RadiusMeters, CreatedBy, CreationDate, UpdatedBy, UpdateDate, Active, AllowedVehicleTypes, SpeedLimitKmh, RestrictionLevel, NotificationEmail, GeoJSON, ParentZoneID, Description, MonitoringEnabled, AlertThreshold, LastModifiedBy)
VALUES (3, 'ResidentialPark', 34.0522, -118.2437, 500, 'cityops', '2024-03-10', 'cityops', '2024-08-10', 1, 'Car', 15, 'Low', 'cityops@example.com', '{...}', NULL, 'Neighborhood parking area', 1, 2, 'cityops');