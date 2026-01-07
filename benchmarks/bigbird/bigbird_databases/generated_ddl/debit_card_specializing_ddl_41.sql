-- Table: fleet_fuel_purchase_orders
CREATE TABLE fleet_fuel_purchase_orders (
    OrderID INTEGER PRIMARY KEY,
    FleetID INTEGER,
    SupplierID INTEGER,
    OrderDate DATE,
    DeliveryDate DATE,
    FuelType TEXT,
    VolumeLiters REAL,
    UnitPrice REAL,
    TotalCost REAL,
    PaymentMethod TEXT,
    ApprovedBy INTEGER,
    Status TEXT,
    CreatedTimestamp TEXT,
    UpdatedTimestamp TEXT,
    Comments TEXT,
    Currency TEXT,
    TaxAmount REAL,
    DiscountRate REAL,
    Region TEXT,
    Priority TEXT
);
INSERT INTO fleet_fuel_purchase_orders VALUES (1, 10, 200, '2023-01-05', '2023-01-07', Diesel, 5000.0, 1.12, 5600.0, CreditCard, 101, Pending, '2023-01-01 09:00', '2023-01-01 09:00', 'First order', USD, 280.0, 0.05, North, High);
INSERT INTO fleet_fuel_purchase_orders VALUES (2, 12, 205, '2023-02-10', '2023-02-12', Gasoline, 3000.0, 1.05, 3150.0, BankTransfer, 102, Approved, '2023-02-01 10:30', '2023-02-08 15:20', 'Urgent refill', EUR, 157.5, 0.03, West, Medium);
INSERT INTO fleet_fuel_purchase_orders VALUES (3, 15, 210, '2023-03-15', '2023-03-18', Biodiesel, 4000.0, 1.20, 4800.0, Cash, 103, Completed, '2023-03-01 08:45', '2023-03-20 11:10', 'Seasonal order', GBP, 240.0, 0.0, South, Low);

-- Table: gas_station_employee_profiles
CREATE TABLE gas_station_employee_profiles (
    EmployeeID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    FirstName TEXT,
    LastName TEXT,
    HireDate DATE,
    Position TEXT,
    ShiftPattern TEXT,
    Salary REAL,
    EmploymentStatus TEXT,
    Email TEXT,
    PhoneNumber TEXT,
    CertificationLevel TEXT,
    BirthDate DATE,
    AddressLine1 TEXT,
    City TEXT,
    State TEXT,
    ZipCode TEXT,
    EmergencyContactName TEXT,
    EmergencyContactPhone TEXT,
    LastTrainingDate DATE
);
INSERT INTO gas_station_employee_profiles VALUES (1001, 5001, John, Doe, '2020-06-01', Manager, Day, 55000.0, Active, john.doe@example.com, 5551234, Level3, '1985-04-12', 123MainSt, Springfield, IL, 62704, JaneDoe, 5555678, '2022-11-15');
INSERT INTO gas_station_employee_profiles VALUES (1002, 5002, Alice, Smith, '2021-01-15', Cashier, Night, 32000.0, Active, alice.smith@example.com, 5552345, Level1, '1992-09-23', 456OakAve, Lincoln, NE, 68508, BobSmith, 5556789, '2023-02-20');
INSERT INTO gas_station_employee_profiles VALUES (1003, 5003, Michael, Brown, '2019-09-30', Technician, Swing, 41000.0, Active, michael.brown@example.com, 5553456, Level2, '1988-12-05', 789PineRd, Madison, WI, 53703, SusanBrown, 5557890, '2022-05-10');

-- Table: regional_market_competition_metrics
CREATE TABLE regional_market_competition_metrics (
    MetricID INTEGER PRIMARY KEY,
    Region TEXT,
    YearMonth TEXT,
    CompetitorCount INTEGER,
    AvgPriceDifference REAL,
    MarketShare REAL,
    GrowthRate REAL,
    PromotionalSpend REAL,
    AdvertisingIntensity REAL,
    ConsumerSentimentScore REAL,
    FuelDemandIndex REAL,
    PriceVolatility REAL,
    RegulatoryScore REAL,
    InfrastructureScore REAL,
    LaborCostIndex REAL,
    TaxRate REAL,
    EconomicGrowthGDP REAL,
    PopulationDensity REAL,
    AvgTransactionSize REAL,
    CompetitorAvgRating REAL
);
INSERT INTO regional_market_competition_metrics VALUES (1, NorthEast, '2023-01', 5, 0.08, 0.22, 0.03, 150000.0, 0.75, 78.5, 1.12, 0.04, 85.0, 90.0, 1.2, 6.5, 2.8, 300.0, 45.0);
INSERT INTO regional_market_competition_metrics VALUES (2, Midwest, '2023-02', 4, 0.05, 0.18, 0.02, 120000.0, 0.68, 80.0, 1.08, 0.03, 82.0, 88.0, 1.1, 6.2, 2.6, 290.0, 44.5);
INSERT INTO regional_market_competition_metrics VALUES (3, SouthWest, '2023-03', 6, 0.10, 0.25, 0.04, 170000.0, 0.80, 77.0, 1.15, 0.05, 87.0, 92.0, 1.3, 6.8, 3.0, 310.0, 46.2);

-- Table: vehicle_oem_warranty_details
CREATE TABLE vehicle_oem_warranty_details (
    WarrantyID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    OEMName TEXT,
    WarrantyStartDate DATE,
    WarrantyEndDate DATE,
    CoverageType TEXT,
    CoveredComponents TEXT,
    MileageLimit INTEGER,
    ServicePlan TEXT,
    TransferableFlag TEXT,
    ExtendedWarrantyFlag TEXT,
    ExtensionCost REAL,
    ClaimProcess TEXT,
    ContactNumber TEXT,
    WarrantyTermsURL TEXT,
    Region TEXT,
    Currency TEXT,
    WarrantyStatus TEXT,
    IssuedBy TEXT,
    Notes TEXT
);
INSERT INTO vehicle_oem_warranty_details VALUES (50001, 3001, AutoMakersInc, '2022-01-01', '2025-01-01', Full, Engine;Transmission;Electrical, 60000, Standard, Yes, No, 0.0, OnlineForm, 1800123456, http://warranty.auto.com/terms, NorthAmerica, USD, Active, DealerA, First year warranty);
INSERT INTO vehicle_oem_warranty_details VALUES (50002, 3002, SpeedsterCo, '2021-06-15', '2024-06-15', Powertrain, Engine;Transmission, 80000, Premium, No, Yes, 1200.0, PhoneCall, 1800654321, http://speedster.com/warranty, Europe, EUR, Active, DealerB, Extended coverage purchased);
INSERT INTO vehicle_oem_warranty_details VALUES (50003, 3003, EcoMotors, '2023-03-20', '2026-03-20', Basic, Engine, 50000, Basic, Yes, No, 0.0, Email, 1800987654, http://ecomotors.com/warranty, Asia, JPY, Pending, DealerC, Awaiting activation);

-- Table: customer_service_interaction_logs
CREATE TABLE customer_service_interaction_logs (
    InteractionID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    InteractionDate DATE,
    InteractionTime TEXT,
    Channel TEXT,
    AgentID INTEGER,
    IssueCategory TEXT,
    IssueSubcategory TEXT,
    ResolutionStatus TEXT,
    ResolutionTimeMinutes INTEGER,
    FollowUpRequiredFlag TEXT,
    FollowUpDate DATE,
    CustomerSatisfactionScore INTEGER,
    Comments TEXT,
    ProductID INTEGER,
    TransactionID INTEGER,
    EscalatedFlag TEXT,
    EscalationLevel INTEGER,
    SurveySentFlag TEXT,
    SurveyResponseID INTEGER
);
INSERT INTO customer_service_interaction_logs VALUES (9001, 101, '2023-04-01', '09:15', Phone, 201, Billing, Overcharge, Resolved, 15, No, NULL, 9, Issue resolved quickly, 10, 50001, No, 0, Yes, 3001);
INSERT INTO customer_service_interaction_logs VALUES (9002, 102, '2023-04-02', '14:30', Email, 202, Technical, PumpError, Pending, 0, Yes, '2023-04-05', NULL, Issue under investigation, 11, 50002, Yes, 2, No, NULL);
INSERT INTO customer_service_interaction_logs VALUES (9003, 103, '2023-04-03', '11:45', Chat, 203, Loyalty, PointsMissing, Resolved, 25, No, NULL, 8, Points credited after delay, 12, 50003, No, 0, Yes, 3002);

-- Table: energy_consumption_forecast_models
CREATE TABLE energy_consumption_forecast_models (
    ModelID INTEGER PRIMARY KEY,
    ModelName TEXT,
    Version TEXT,
    CreatedDate DATE,
    CreatedBy INTEGER,
    Algorithm TEXT,
    TrainingDataStartDate DATE,
    TrainingDataEndDate DATE,
    ForecastHorizonDays INTEGER,
    AccuracyMAE REAL,
    AccuracyRMSE REAL,
    FeatureSet TEXT,
    Hyperparameters TEXT,
    ValidationMethod TEXT,
    DeploymentStatus TEXT,
    LastRunDate DATE,
    LastRunDurationMinutes INTEGER,
    PredictedConsumption REAL,
    ConfidenceIntervalLow REAL,
    ConfidenceIntervalHigh REAL
);
INSERT INTO energy_consumption_forecast_models VALUES (1, DemandPredictor, v1.0, '2022-12-01', 301, GradientBoosting, '2020-01-01', '2022-11-30', 30, 0.85, 1.10, Weather;Price;Historic, max_depth=5;learning_rate=0.1, CrossValidation, Deployed, '2023-03-31', 45, 12500.0, 12200.0, 12800.0);
INSERT INTO energy_consumption_forecast_models VALUES (2, LoadEstimator, v2.1, '2023-01-15', 302, LSTM, '2019-01-01', '2022-12-31', 60, 0.78, 0.95, Temperature;DayOfWeek;Holiday, layers=3;units=64, Holdout, Testing, '2023-03-30', 60, 24000.0, 23500.0, 24500.0);
INSERT INTO energy_consumption_forecast_models VALUES (3, ConsumptionForecaster, v3.3, '2023-02-20', 303, RandomForest, '2018-01-01', '2022-12-31', 7, 0.65, 0.80, Price;Demand;Seasonality, n_estimators=200;max_features=auto, KFold, Staging, '2023-03-29', 30, 3500.0, 3400.0, 3600.0);

-- Table: station_utility_consumption_records
CREATE TABLE station_utility_consumption_records (
    RecordID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    RecordDate DATE,
    ElectricityKWh REAL,
    WaterLiters REAL,
    NaturalGasTherms REAL,
    WasteTonnes REAL,
    SolarGenerationKWh REAL,
    GridPurchaseKWh REAL,
    PeakDemandKW REAL,
    AvgDemandKW REAL,
    UtilityProvider TEXT,
    CostElectricity REAL,
    CostWater REAL,
    CostNaturalGas REAL,
    CostWasteManagement REAL,
    CostSolar REAL,
    TotalUtilityCost REAL,
    CarbonEmissionKg REAL,
    Remarks TEXT,
    Currency TEXT
);
INSERT INTO station_utility_consumption_records VALUES (4001, 5001, '2023-03-31', 1200.5, 850.0, 300.2, 0.4, 150.0, 1050.5, 75.0, 45.0, EnergyCo, 180.75, 45.30, 60.10, 20.00, 0.00, 306.15, 350.0, Normal month, USD);
INSERT INTO station_utility_consumption_records VALUES (4002, 5002, '2023-03-31', 1100.0, 800.0, 280.0, 0.3, 130.0, 970.0, 70.0, 42.0, PowerSupply, 170.00, 42.00, 55.00, 18.00, 0.00, 285.00, 330.0, Slightly low usage, USD);
INSERT INTO station_utility_consumption_records VALUES (4003, 5003, '2023-03-31', 1300.2, 900.5, 320.8, 0.5, 160.0, 1140.2, 80.0, 48.0, GreenEnergy, 190.50, 48.20, 65.00, 22.00, 0.00, 315.70, 370.0, High solar contribution, USD);

-- Table: digital_wallet_user_accounts
CREATE TABLE digital_wallet_user_accounts (
    WalletID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    WalletName TEXT,
    CreatedDate DATE,
    Status TEXT,
    Balance REAL,
    Currency TEXT,
    LastTransactionDate DATE,
    FraudScore REAL,
    KYCStatus TEXT,
    VerificationLevel INTEGER,
    MobileNumber TEXT,
    Email TEXT,
    PreferredPaymentMethod TEXT,
    DailyTransactionLimit REAL,
    MonthlyTransactionLimit REAL,
    RewardPoints INTEGER,
    LinkedBankAccountID INTEGER,
    AuthToken TEXT,
    Notes TEXT
);
INSERT INTO digital_wallet_user_accounts VALUES (8001, 101, MyWallet, '2022-05-10', Active, 250.75, USD, '2023-03-30', 0.02, Verified, 3, 5551112222, user101@example.com, Card, 5000.0, 20000.0, 1200, 9001, token123, Primary wallet);
INSERT INTO digital_wallet_user_accounts VALUES (8002, 102, QuickPay, '2022-07-15', Suspended, 0.0, EUR, '2023-02-20', 0.85, Pending, 1, 5553334444, user102@example.com, BankTransfer, 3000.0, 15000.0, 0, 9002, token456, Account under review);
INSERT INTO digital_wallet_user_accounts VALUES (8003, 103, FastCash, '2023-01-05', Active, 1020.50, GBP, '2023-03-28', 0.05, Verified, 2, 5555556666, user103@example.com, Card, 7000.0, 25000.0, 2500, 9003, token789, Recently topped up);

-- Table: ev_charging_station_maintenance_schedule
CREATE TABLE ev_charging_station_maintenance_schedule (
    ScheduleID INTEGER PRIMARY KEY,
    StationID INTEGER,
    MaintenanceDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    TechnicianID INTEGER,
    MaintenanceType TEXT,
    PartsRequired TEXT,
    EstimatedCost REAL,
    ActualCost REAL,
    DowntimeMinutes INTEGER,
    SafetyCheckFlag TEXT,
    EquipmentStatusBefore TEXT,
    EquipmentStatusAfter TEXT,
    Notes TEXT,
    ApprovalStatus TEXT,
    ApprovedBy INTEGER,
    InvoiceNumber TEXT,
    ServiceVendor TEXT,
    FollowUpDate DATE
);
INSERT INTO ev_charging_station_maintenance_schedule VALUES (6001, 7001, '2023-04-10', '08:00', '12:00', 401, Inspection, Cable;Connector, 200.0, 190.0, 180, Yes, Operational, Operational, Routine check, Approved, 101, INV1001, ElectroFix, '2023-04-20');
INSERT INTO ev_charging_station_maintenance_schedule VALUES (6002, 7002, '2023-04-15', '09:30', '13:45', 402, Repair, PowerModule, 450.0, 470.0, 240, Yes, Faulty, Repaired, Replaced power module, Pending, NULL, NULL, NULL);
INSERT INTO ev_charging_station_maintenance_schedule VALUES (6003, 7003, '2023-04-20', '07:15', '10:30', 403, Calibration, SensorKit, 150.0, 150.0, 180, Yes, Calibrated, Calibrated, Annual calibration, Approved, 102, INV1003, ChargeTech, '2023-04-30');

-- Table: roadway_traffic_sensor_inventory
CREATE TABLE roadway_traffic_sensor_inventory (
    SensorID INTEGER PRIMARY KEY,
    LocationID INTEGER,
    SensorType TEXT,
    InstallationDate DATE,
    Manufacturer TEXT,
    ModelNumber TEXT,
    FirmwareVersion TEXT,
    CalibrationDate DATE,
    Status TEXT,
    LastMaintenanceDate DATE,
    DataTransmissionProtocol TEXT,
    PowerSource TEXT,
    Voltage REAL,
    Current REAL,
    ConnectivityType TEXT,
    Latitude REAL,
    Longitude REAL,
    HeightMeters REAL,
    OwnerDepartment TEXT,
    MaintenanceContractID INTEGER
);
INSERT INTO roadway_traffic_sensor_inventory VALUES (90001, 1101, InductiveLoop, '2021-03-15', SensorMakers, IL-200, v1.2.3, '2023-01-10', Active, '2023-03-01', Ethernet, Solar, 12.0, 0.5, Wireless, 40.7128, -74.0060, 5.0, TrafficOps, 3001);
INSERT INTO roadway_traffic_sensor_inventory VALUES (90002, 1102, Radar, '2020-07-22', RadarTech, RD-500, v3.0.0, '2022-12-05', Maintenance, '2023-02-20', WiFi, Battery, 9.5, 0.3, Cellular, 34.0522, -118.2437, 4.5, TrafficOps, 3002);
INSERT INTO roadway_traffic_sensor_inventory VALUES (90003, 1103, Camera, '2019-11-30', VisionInc, VC-1000, v2.5.1, '2023-02-15', Active, '2023-03-15', LTE, Mains, 120.0, 0.8, Fiber, 41.8781, -87.6298, 6.0, TrafficOps, 3003);