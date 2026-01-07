-- Fleet acquisition records storing details of newly added vehicles to the fleet
CREATE TABLE fleet_acquisition_records (
    AcquisitionID INTEGER PRIMARY KEY,
    FleetID INTEGER,
    VehicleVIN TEXT,
    Make TEXT,
    Model TEXT,
    Year INTEGER,
    PurchaseDate DATE,
    PurchasePrice REAL,
    FinancingProvider TEXT,
    LeaseTermMonths INTEGER,
    LeaseRate REAL,
    WarrantyExpiration DATE,
    OdometerAtAcquisition INTEGER,
    FuelType TEXT,
    Color TEXT,
    RegistrationState TEXT,
    RegistrationNumber TEXT,
    DealerName TEXT,
    InspectionStatus TEXT,
    Notes TEXT
);

INSERT INTO fleet_acquisition_records VALUES (1, 101, '1HGCM82633A004352', 'Toyota', 'Camry', 2022, '2022-03-15', 24000.0, 'BankOne', 36, 350.5, '2025-03-15', 10, ' gasoline', 'White', 'CA', '7ABC123', 'AutoWorld', 'Passed', 'First unit in new fleet');
INSERT INTO fleet_acquisition_records VALUES (2, 102, '2FTRX18W1XCA01234', 'Ford', 'F-150', 2021, '2021-07-22', 31000.0, 'FinanceCo', 48, 420.0, '2024-07-22', 1200, 'diesel', 'Black', 'TX', '8XYZ789', 'TruckCenter', 'Passed', 'Includes upgraded suspension');
INSERT INTO fleet_acquisition_records VALUES (3, 103, '3C6JR7DT5GE123456', 'Dodge', 'Ram', 2023, '2023-01-05', 28000.0, 'CapitalBank', 24, 380.75, '2025-01-05', 5, 'gasoline', 'Red', 'NY', '9LMN456', 'HeavyDutyInc', 'Pending', 'Awaiting final inspection');

-- Energy market price index tracking daily price changes across regions
CREATE TABLE energy_market_price_index (
    IndexID INTEGER PRIMARY KEY,
    RegionCode TEXT,
    Commodity TEXT,
    RecordDate DATE,
    OpenPrice REAL,
    HighPrice REAL,
    LowPrice REAL,
    ClosePrice REAL,
    Volume INTEGER,
    AdjustedClose REAL,
    SettlementPrice REAL,
    FuturesPrice REAL,
    SpotPrice REAL,
    PriceChange REAL,
    PercentChange REAL,
    BenchmarkIndex REAL,
    Currency TEXT,
    DataSource TEXT,
    AnalystNotes TEXT,
    CreatedTimestamp TEXT,
    UpdatedTimestamp TEXT
);

INSERT INTO energy_market_price_index VALUES (1, 'NE', 'NaturalGas', '2023-12-01', 2.45, 2.60, 2.40, 2.55, 150000, 2.55, 2.56, 2.57, 2.55, 0.10, 0.04, 2500.0, 'USD', 'MarketWatch', 'Stable demand', '2023-12-01 08:00', '2023-12-01 08:00');
INSERT INTO energy_market_price_index VALUES (2, 'SW', 'Electricity', '2023-12-01', 45.2, 46.0, 44.8, 45.9, 300000, 45.9, 46.1, 46.3, 45.9, 0.70, 1.55, 2200.0, 'USD', 'EnergyDataInc', 'Peak usage expected', '2023-12-01 08:05', '2023-12-01 08:05');
INSERT INTO energy_market_price_index VALUES (3, 'MW', 'CrudeOil', '2023-12-01', 78.10, 79.50, 77.80, 79.00, 500000, 79.00, 79.20, 79.40, 79.00, 0.90, 1.16, 3000.0, 'USD', 'OilAnalytics', 'Geopolitical tension', '2023-12-01 08:10', '2023-12-01 08:10');

-- Vehicle subscription agreements for customers opting for subscription based usage
CREATE TABLE vehicle_subscription_agreements (
    SubscriptionID INTEGER PRIMARY KEY,
    AgreementNumber TEXT,
    VehicleVIN TEXT,
    SubscriberID INTEGER,
    SubscriptionStart DATE,
    SubscriptionEnd DATE,
    MonthlyFee REAL,
    MileageCap INTEGER,
    OverMileageFee REAL,
    IncludedInsurance TEXT,
    MaintenancePackage TEXT,
    UpgradeOption TEXT,
    CancellationPolicy TEXT,
    Status TEXT,
    PaymentMethod TEXT,
    AutoRenew BOOLEAN,
    PromoCode TEXT,
    ContractSignedDate DATE,
    Notes TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT
);

INSERT INTO vehicle_subscription_agreements VALUES (1, 'SUB2023001', '1HGCM82633A004352', 2001, '2023-06-01', '2024-05-31', 399.99, 12000, 0.15, 'FullCoverage', 'Standard', 'None', '30dayNotice', 'Active', 'CreditCard', 1, 'NEWYEAR23', '2023-05-20', 'First subscription', '2023-05-20 09:00', '2023-05-20 09:00');
INSERT INTO vehicle_subscription_agreements VALUES (2, 'SUB2023002', '2FTRX18W1XCA01234', 2002, '2023-07-15', '2024-07-14', 449.99, 15000, 0.12, 'LiabilityOnly', 'Premium', 'ModelUpgrade', '60dayNotice', 'Pending', 'BankTransfer', 0, 'SUMMER23', '2023-07-01', 'Pending approval', '2023-07-01 10:30', '2023-07-01 10:30');
INSERT INTO vehicle_subscription_agreements VALUES (3, 'SUB2023003', '3C6JR7DT5GE123456', 2003, '2023-09-01', '2025-08-31', 499.99, 20000, 0.10, 'FullCoverage', 'PremiumPlus', 'ModelUpgrade', '90dayNotice', 'Active', 'DigitalWallet', 1, 'AUTUMN23', '2023-08-20', 'Extended term', '2023-08-20 11:45', '2023-08-20 11:45');

-- Fuel dispense calibration logs documenting calibration events for fuel pumps
CREATE TABLE fuel_dispense_calibration_logs (
    CalibrationID INTEGER PRIMARY KEY,
    StationID INTEGER,
    PumpID INTEGER,
    CalibrationDate DATE,
    TechnicianID INTEGER,
    PreCalibrationReading REAL,
    PostCalibrationReading REAL,
    DispenseAccuracyPercent REAL,
    CalibrationDeviceSerial TEXT,
    CalibrationMethod TEXT,
    ComplianceStatus TEXT,
    Remarks TEXT,
    Shift TEXT,
    TemperatureCelsius REAL,
    HumidityPercent REAL,
    PressureKPa REAL,
    CalibrationIntervalDays INTEGER,
    NextDueDate DATE,
    CreatedAt TEXT,
    UpdatedAt TEXT
);

INSERT INTO fuel_dispense_calibration_logs VALUES (1, 501, 12, '2023-11-10', 301, 0.998, 1.001, 0.30, 'CAL12345', 'Manual', 'Compliant', 'All good', 'Morning', 22.5, 45.0, 101.3, 180, '2024-05-09', '2023-11-10 07:00', '2023-11-10 07:00');
INSERT INTO fuel_dispense_calibration_logs VALUES (2, 502, 8, '2023-11-12', 302, 0.995, 1.000, 0.50, 'CAL67890', 'Automated', 'Compliant', 'Slight drift corrected', 'Evening', 21.0, 50.0, 100.8, 180, '2024-05-11', '2023-11-12 18:30', '2023-11-12 18:30');
INSERT INTO fuel_dispense_calibration_logs VALUES (3, 503, 15, '2023-11-15', 303, 1.002, 1.000, 0.20, 'CAL54321', 'Manual', 'Compliant', 'Recalibrated after maintenance', 'Night', 20.0, 55.0, 102.0, 180, '2024-05-14', '2023-11-15 22:15', '2023-11-15 22:15');

-- GPS tracking points collected from fleet vehicles
CREATE TABLE gps_tracking_points (
    PointID INTEGER PRIMARY KEY,
    VehicleVIN TEXT,
    Timestamp TEXT,
    Latitude REAL,
    Longitude REAL,
    SpeedKph REAL,
    HeadingDegrees INTEGER,
    AltitudeMeters REAL,
    AccuracyMeters REAL,
    SatelliteCount INTEGER,
    SignalQuality TEXT,
    OdometerReading INTEGER,
    EngineStatus TEXT,
    FuelLevelPercent REAL,
    BatteryVoltage REAL,
    TemperatureCelsius REAL,
    EventCode TEXT,
    DriverID INTEGER,
    LocationType TEXT,
    CreatedAt TEXT
);

INSERT INTO gps_tracking_points VALUES (1, '1HGCM82633A004352', '2023-12-01 08:15:00', 34.0522, -118.2437, 65.0, 90, 89.5, 5.0, 7, 'Good', 12345, 'On', 78.5, 12.6, 22.0, 'NORMAL', 401, 'Road', '2023-12-01 08:15:05');
INSERT INTO gps_tracking_points VALUES (2, '2FTRX18W1XCA01234', '2023-12-01 08:17:30', 34.0600, -118.2500, 0.0, 180, 90.0, 3.0, 8, 'Excellent', 12346, 'Idle', 85.0, 12.8, 21.5, 'STOP', 402, 'ParkingLot', '2023-12-01 08:17:35');
INSERT INTO gps_tracking_points VALUES (3, '3C6JR7DT5GE123456', '2023-12-01 08:20:10', 34.0655, -118.2555, 78.0, 45, 88.2, 4.5, 6, 'Fair', 12347, 'On', 70.2, 12.5, 23.0, 'NORMAL', 403, 'Highway', '2023-12-01 08:20:15');

-- Facility access control logs for security monitoring
CREATE TABLE facility_access_control (
    AccessLogID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    Zone TEXT,
    AccessPointID INTEGER,
    Timestamp TEXT,
    CardID INTEGER,
    EmployeeID INTEGER,
    AccessResult TEXT,
    ReasonCode TEXT,
    DoorState TEXT,
    CameraSnapshot TEXT,
    OverrideUsed BOOLEAN,
    Shift TEXT,
    SupervisorID INTEGER,
    TemperatureCelsius REAL,
    HumidityPercent REAL,
    AirQualityIndex INTEGER,
    NotificationSent BOOLEAN,
    Comments TEXT,
    RecordedBy TEXT
);

INSERT INTO facility_access_control VALUES (1, 1001, 'Lobby', 5, '2023-12-01 07:45:00', 9001, 1101, 'Granted', 'None', 'Open', 'snap001.jpg', 0, 'Morning', 2101, 22.0, 40.0, 35, 1, 'First entry of day', 'SecuritySystem');
INSERT INTO facility_access_control VALUES (2, 1002, 'ServerRoom', 12, '2023-12-01 08:05:30', 9002, 1102, 'Denied', 'InvalidCard', 'Closed', 'snap002.jpg', 0, 'Morning', 2102, 21.5, 38.0, 30, 0, 'Attempted access with expired badge', 'SecuritySystem');
INSERT INTO facility_access_control VALUES (3, 1003, 'Warehouse', 8, '2023-12-01 08:20:15', 9003, 1103, 'Granted', 'None', 'Open', 'snap003.jpg', 1, 'Morning', 2103, 23.0, 42.0, 32, 1, 'Override used by supervisor', 'SecuritySystem');

-- Supply chain risk events capturing disruptions and mitigations
CREATE TABLE supply_chain_risk_events (
    EventID INTEGER PRIMARY KEY,
    EventDate DATE,
    SupplierID INTEGER,
    ProductCategory TEXT,
    DisruptionType TEXT,
    SeverityLevel INTEGER,
    EstimatedLossUSD REAL,
    MitigationAction TEXT,
    Status TEXT,
    ImpactedRegions TEXT,
    LeadTimeImpactDays INTEGER,
    CommunicationChannel TEXT,
    ReportedBy TEXT,
    ResolutionDate DATE,
    FollowUpRequired BOOLEAN,
    DocumentationLink TEXT,
    RiskOwnerID INTEGER,
    ContingencyPlan TEXT,
    Comments TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT
);

INSERT INTO supply_chain_risk_events VALUES (1, '2023-11-20', 301, 'Lubricants', 'PortStrike', 4, 250000.0, 'Reroute via rail', 'Open', 'WestCoast', 7, 'Email', 'JohnDoe', NULL, 1, 'doc001.pdf', 401, 'Alternative supplier agreement', 'Monitoring ongoing', '2023-11-20 09:00', '2023-11-20 09:00');
INSERT INTO supply_chain_risk_events VALUES (2, '2023-11-25', 302, 'SpareParts', 'NaturalDisaster', 5, 500000.0, 'Increase safety stock', 'Closed', 'Midwest', 14, 'Phone', 'JaneSmith', '2023-12-10', 0, 'doc002.pdf', 402, 'Emergency procurement plan', 'Resolved with additional inventory', '2023-11-25 10:30', '2023-12-10 15:45');
INSERT INTO supply_chain_risk_events VALUES (3, '2023-12-01', 303, 'Electronics', 'RegulatoryChange', 3, 120000.0, 'Update compliance docs', 'Open', 'EastCoast', 3, 'Portal', 'MikeBrown', NULL, 1, 'doc003.pdf', 403, 'Legal review workflow', 'Awaiting regulator response', '2023-12-01 11:15', '2023-12-01 11:15');

-- Energy auction results for competitive procurement
CREATE TABLE energy_auction_results (
    AuctionID INTEGER PRIMARY KEY,
    AuctionDate DATE,
    Commodity TEXT,
    Region TEXT,
    WinningBidderID INTEGER,
    WinningPrice REAL,
    TotalVolumeMWh INTEGER,
    AuctionType TEXT,
    SettlementDate DATE,
    PriceCap REAL,
    PriceFloor REAL,
    BiddingRound INTEGER,
    AuctionStatus TEXT,
    Currency TEXT,
    Exchange TEXT,
    ClearingTime TEXT,
    MarketParticipantCount INTEGER,
    Remarks TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT
);

INSERT INTO energy_auction_results VALUES (1, '2023-10-15', 'NaturalGas', 'NE', 501, 2.48, 200000, 'DayAhead', '2023-10-16', 2.80, 2.20, 1, 'Closed', 'USD', 'NYMEX', '15:45', 25, 'Smooth auction', '2023-10-15 16:00', '2023-10-15 16:00');
INSERT INTO energy_auction_results VALUES (2, '2023-11-01', 'Electricity', 'SW', 502, 45.75, 150000, 'RealTime', '2023-11-02', 48.00, 44.00, 2, 'Closed', 'USD', 'CAISO', '13:30', 30, 'High volatility', '2023-11-01 14:00', '2023-11-01 14:00');
INSERT INTO energy_auction_results VALUES (3, '2023-12-01', 'CrudeOil', 'MW', 503, 78.45, 100000, 'Monthly', '2023-12-02', 80.00, 76.00, 1, 'Closed', 'USD', 'NYMEX', '12:00', 28, 'Strong demand from refineries', '2023-12-01 12:30', '2023-12-01 12:30');

-- Vehicle remanufacturing records tracking rebuild projects
CREATE TABLE vehicle_remanufacturing_records (
    RemanufactureID INTEGER PRIMARY KEY,
    OriginalVIN TEXT,
    RemanufactureDate DATE,
    FacilityID INTEGER,
    TechnicianLeadID INTEGER,
    RebuiltEngineSerial TEXT,
    RebuiltTransmissionSerial TEXT,
    MileageAfterRebuild INTEGER,
    WarrantyMonths INTEGER,
    InspectionStatus TEXT,
    CertificationNumber TEXT,
    PartsReplacedCount INTEGER,
    TotalLaborHours REAL,
    CostUSD REAL,
    QualityScore REAL,
    EnvironmentalImpactScore REAL,
    DocumentationLink TEXT,
    Remarks TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT
);

INSERT INTO vehicle_remanufacturing_records VALUES (1, '1HGCM82633A004352', '2023-09-01', 601, 701, 'ENG001', 'TRN001', 5000, 24, 'Passed', 'CERT1001', 15, 120.5, 18000.0, 9.2, 85.0, 'doc_remanuf001.pdf', 'Standard rebuild', '2023-09-01 08:00', '2023-09-01 08:00');
INSERT INTO vehicle_remanufacturing_records VALUES (2, '2FTRX18W1XCA01234', '2023-10-15', 602, 702, 'ENG002', 'TRN002', 8000, 36, 'Passed', 'CERT1002', 20, 150.0, 22500.0, 9.5, 88.0, 'doc_remanuf002.pdf', 'Enhanced performance parts', '2023-10-15 09:30', '2023-10-15 09:30');
INSERT INTO vehicle_remanufacturing_records VALUES (3, '3C6JR7DT5GE123456', '2023-11-20', 603, 703, 'ENG003', 'TRN003', 3000, 12, 'Pending', 'CERT1003', 10, 90.0, 15000.0, 8.8, 80.0, 'doc_remanuf003.pdf', 'Awaiting final inspection', '2023-11-20 10:15', '2023-11-20 10:15');

-- Road infrastructure inspections documenting condition assessments
CREATE TABLE road_infrastructure_inspections (
    InspectionID INTEGER PRIMARY KEY,
    RoadSegmentID INTEGER,
    InspectionDate DATE,
    InspectorID INTEGER,
    SurfaceCondition TEXT,
    PavementCrackSeverity INTEGER,
    DrainageStatus TEXT,
    SignageVisibility TEXT,
    LightingFunctionality TEXT,
    StructuralIntegrityScore REAL,
    MaintenanceRecommendation TEXT,
    EstimatedRepairCostUSD REAL,
    TrafficDisruptionLevel TEXT,
    WeatherConditions TEXT,
    TemperatureCelsius REAL,
    HumidityPercent REAL,
    Notes TEXT,
    PhotosLink TEXT,
    FollowUpRequired BOOLEAN,
    CreatedAt TEXT,
    UpdatedAt TEXT
);

INSERT INTO road_infrastructure_inspections VALUES (1, 801, '2023-08-12', 901, 'Good', 1, 'Clear', 'Clear', 'Operational', 9.5, 'None', 0.0, 'Low', 'Sunny', 25.0, 30.0, 'No issues observed', 'photo001.jpg', 0, '2023-08-12 07:00', '2023-08-12 07:00');
INSERT INTO road_infrastructure_inspections VALUES (2, 802, '2023-09-05', 902, 'Fair', 3, 'Partial', 'Obstructed', 'Partial', 7.0, 'Crack sealing', 12000.0, 'Medium', 'Rainy', 18.0, 85.0, 'Cracks observed near culvert', 'photo002.jpg', 1, '2023-09-05 08:30', '2023-09-05 08:30');
INSERT INTO road_infrastructure_inspections VALUES (3, 803, '2023-10-20', 903, 'Poor', 5, 'Blocked', 'Faded', 'Faulty', 4.5, 'Full reconstruction', 85000.0, 'High', 'Snow', -2.0, 90.0, 'Severe surface degradation', 'photo003.jpg', 1, '2023-10-20 09:45', '2023-10-20 09:45');