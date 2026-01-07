-- Vehicle fuel consumption logs
CREATE TABLE vehicle_fuel_consumption_logs
(
    LogID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    DriverID INTEGER,
    LogDate TEXT,
    OdometerStart INTEGER,
    OdometerEnd INTEGER,
    FuelType TEXT,
    FuelVolumeLiters REAL,
    FuelCost REAL,
    AvgSpeed REAL,
    RouteID INTEGER,
    WeatherCondition TEXT,
    TemperatureC REAL,
    HumidityPct REAL,
    EngineLoadPct REAL,
    IdleTimeMinutes REAL,
    TripPurpose TEXT,
    EmissionCO2Kg REAL,
    MaintenanceFlag INTEGER,
    Notes TEXT
);

INSERT INTO vehicle_fuel_consumption_logs VALUES (1,101,201,'2023-01-15',12000,12450,'Diesel',45.6,78.9,55.2,301,'Clear',22.5,45.0,78.0,5.0,'Delivery',12.3,0,'');
INSERT INTO vehicle_fuel_consumption_logs VALUES (2,102,202,'2023-01-16',5000,5400,'Gasoline',38.2,62.5,60.0,302,'Rain',18.0,70.0,85.0,10.0,'Service',9.8,1,'');
INSERT INTO vehicle_fuel_consumption_logs VALUES (3,103,203,'2023-01-17',20000,20550,'Hybrid',30.0,50.0,45.0,303,'Snow',0.0,80.0,90.0,2.0,'Pickup',8.5,0,'');

-- Gas station air quality index
CREATE TABLE gas_station_air_quality_index
(
    RecordID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    RecordDate TEXT,
    AQI INTEGER,
    PM25 REAL,
    PM10 REAL,
    NO2 REAL,
    O3 REAL,
    CO REAL,
    SO2 REAL,
    TemperatureC REAL,
    HumidityPct REAL,
    WindSpeedKph REAL,
    WindDirection TEXT,
    SensorStatus TEXT,
    CalibrationDate TEXT,
    DataSource TEXT,
    Notes TEXT,
    CreatedTimestamp TEXT,
    UpdatedTimestamp TEXT,
    IsVerified INTEGER
);

INSERT INTO gas_station_air_quality_index VALUES (1,10,'2023-02-01',42,12.3,25.6,0.015,0.030,0.7,0.004,15.2,55.0,5.6,'N','OK','2023-01-25','Automated','', '2023-02-01T08:00:00','2023-02-01T08:00:00',1);
INSERT INTO gas_station_air_quality_index VALUES (2,12,'2023-02-01',78,35.0,55.2,0.040,0.060,1.2,0.010,14.8,60.0,3.2,'NE','OK','2023-01-26','Manual','', '2023-02-01T08:15:00','2023-02-01T08:15:00',1);
INSERT INTO gas_station_air_quality_index VALUES (3,15,'2023-02-01',55,20.5,40.1,0.025,0.045,0.9,0.006,16.0,50.0,4.8,'E','OK','2023-01-27','Automated','', '2023-02-01T08:30:00','2023-02-01T08:30:00',0);

-- Customer payment device registry
CREATE TABLE customer_payment_device_registry
(
    DeviceID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    DeviceType TEXT,
    Issuer TEXT,
    CardNumberMasked TEXT,
    ExpirationDate TEXT,
    CVVHash TEXT,
    Token TEXT,
    ActivationDate TEXT,
    DeactivationDate TEXT,
    Status TEXT,
    LastUsedDate TEXT,
    TransactionCount INTEGER,
    TotalSpent REAL,
    RiskScore REAL,
    FirmwareVersion TEXT,
    MobileAppVersion TEXT,
    IsPrimary INTEGER,
    CreatedBy TEXT,
    CreatedTimestamp TEXT,
    UpdatedTimestamp TEXT,
    Notes TEXT
);

INSERT INTO customer_payment_device_registry VALUES (1001,1,'CreditCard','VISA','XXXX1234','2025-12','ABCD1234','TOKEN001','2023-01-01','','Active','2023-06-15',150,12500.75,0.2,'v1.0','app3.2',1,'system','2023-01-01T09:00:00','2023-06-15T10:00:00','');
INSERT INTO customer_payment_device_registry VALUES (1002,2,'DebitCard','MASTERCARD','XXXX5678','2024-07','EFGH5678','TOKEN002','2023-02-10','','Inactive','2023-05-20',0,0.0,0.9,'v1.1','app4.0',0,'system','2023-02-10T11:00:00','2023-05-20T12:00:00','Lost');
INSERT INTO customer_payment_device_registry VALUES (1003,3,'MobileWallet','APPLEPAY','XXXX9012','2026-03','IJKL9012','TOKEN003','2023-03-05','','Active','2023-07-01',45,3400.20,0.15,'v2.0','app5.1',0,'system','2023-03-05T13:00:00','2023-07-01T14:00:00','');

-- Regional fuel price trends
CREATE TABLE regional_fuel_price_trends
(
    TrendID INTEGER PRIMARY KEY,
    RegionCode TEXT,
    FuelType TEXT,
    StartDate TEXT,
    EndDate TEXT,
    AvgPriceStart REAL,
    AvgPriceEnd REAL,
    PriceChangePct REAL,
    VolumeSoldLiters REAL,
    NumberOfStations INTEGER,
    EconomicIndicator REAL,
    InflationRatePct REAL,
    SeasonalFactor REAL,
    CompetitorAvgPrice REAL,
    RegulatoryTaxPct REAL,
    ExchangeRate REAL,
    Notes TEXT,
    DataProvider TEXT,
    CreatedTimestamp TEXT,
    UpdatedTimestamp TEXT,
    IsForecast INTEGER
);

INSERT INTO regional_fuel_price_trends VALUES (1,'NE','Diesel','2023-01-01','2023-03-31',1.12,1.18,5.36,1500000,120,0.85,3.2,1.0,1.15,5.0,0.92,'','AgencyA','2023-04-01T08:00:00','2023-04-01T08:00:00',0);
INSERT INTO regional_fuel_price_trends VALUES (2,'SW','Gasoline','2023-01-01','2023-03-31',0.98,1.02,4.08,2000000,140,0.90,2.9,1.05,1.10,4.5,0.88,'','AgencyB','2023-04-02T09:00:00','2023-04-02T09:00:00',0);
INSERT INTO regional_fuel_price_trends VALUES (3,'MW','E85','2023-01-01','2023-03-31',0.75,0.80,6.67,800000,80,0.80,3.5,0.95,1.20,3.8,0.95,'Forecast Q2','AgencyC','2023-04-03T10:00:00','2023-04-03T10:00:00',1);

-- Emission factor catalog
CREATE TABLE emission_factor_catalog
(
    FactorID INTEGER PRIMARY KEY,
    FuelType TEXT,
    Unit TEXT,
    CO2KgPerUnit REAL,
    CH4KgPerUnit REAL,
    N2OKgPerUnit REAL,
    SO2KgPerUnit REAL,
    PM10KgPerUnit REAL,
    PM25KgPerUnit REAL,
    OzonePotential REAL,
    GlobalWarmingPotential REAL,
    Source TEXT,
    EffectiveDate TEXT,
    ExpirationDate TEXT,
    RegionCode TEXT,
    CalculationMethod TEXT,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedTimestamp TEXT,
    UpdatedTimestamp TEXT,
    IsActive INTEGER
);

INSERT INTO emission_factor_catalog VALUES (1,'Diesel','Liter',2.68,0.001,0.0005,0.0002,0.0001,0.00005,0.03,1.0,'EPA','2022-01-01','2030-12-31','NA','Empirical','', 'analyst','2022-01-01T08:00:00','2022-01-01T08:00:00',1);
INSERT INTO emission_factor_catalog VALUES (2,'Gasoline','Liter',2.31,0.0008,0.0004,0.0001,0.00009,0.00004,0.025,0.9,'EUROSTAT','2021-06-01','2028-12-31','EU','ModelBased','', 'engineer','2021-06-01T09:00:00','2021-06-01T09:00:00',1);
INSERT INTO emission_factor_catalog VALUES (3,'E85','Liter',1.70,0.0012,0.0006,0.00015,0.00012,0.00006,0.02,0.85,'DOE','2023-03-01','2035-12-31','US','LabMeasured','', 'researcher','2023-03-01T10:00:00','2023-03-01T10:00:00',1);

-- Station utility billing records
CREATE TABLE station_utility_billing_records
(
    BillingID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    BillingPeriod TEXT,
    UtilityType TEXT,
    ProviderName TEXT,
    ConsumptionUnits REAL,
    UnitCost REAL,
    TotalAmount REAL,
    MeterReadingStart REAL,
    MeterReadingEnd REAL,
    BillingDate TEXT,
    PaymentDueDate TEXT,
    PaymentStatus TEXT,
    InvoiceNumber TEXT,
    TaxAmount REAL,
    DiscountAmount REAL,
    NetAmount REAL,
    Remarks TEXT,
    CreatedTimestamp TEXT,
    UpdatedTimestamp TEXT,
    IsLatePayment INTEGER
);

INSERT INTO station_utility_billing_records VALUES (1,10,'2023-01','Electricity','PowerCo',1500.0,0.12,180.0,5000.0,6500.0,'2023-02-05','2023-02-20','Paid','INV1001',10.0,0.0,170.0,'', '2023-02-05T09:00:00','2023-02-05T09:00:00',0);
INSERT INTO station_utility_billing_records VALUES (2,12,'2023-01','Water','AquaSupply',800.0,0.03,24.0,2000.0,2800.0,'2023-02-06','2023-02-21','Pending','INV1002',2.0,0.0,22.0,'', '2023-02-06T10:00:00','2023-02-06T10:00:00',0);
INSERT INTO station_utility_billing_records VALUES (3,15,'2023-01','Gas','GasWell',500.0,0.08,40.0,3000.0,3500.0,'2023-02-07','2023-02-22','Overdue','INV1003',4.0,0.0,36.0,'Late payment notice', '2023-02-07T11:00:00','2023-02-07T11:00:00',1);

-- Fleet driver safety training
CREATE TABLE fleet_driver_safety_training
(
    TrainingID INTEGER PRIMARY KEY,
    DriverID INTEGER,
    TrainingDate TEXT,
    TrainerName TEXT,
    CourseCode TEXT,
    CourseTitle TEXT,
    DurationHours REAL,
    ScorePercent REAL,
    CertificationIssued INTEGER,
    CertificationNumber TEXT,
    ExpirationDate TEXT,
    TrainingMode TEXT,
    Location TEXT,
    VehicleCategory TEXT,
    TopicsCovered TEXT,
    AttendanceStatus TEXT,
    FeedbackRating INTEGER,
    Remarks TEXT,
    CreatedTimestamp TEXT,
    UpdatedTimestamp TEXT,
    IsMandatory INTEGER
);

INSERT INTO fleet_driver_safety_training VALUES (1,201,'2023-01-10','JohnDoe','SAFE101','Defensive Driving',8.0,92.5,1,'CERT001','2025-01-09','InPerson','HQ','Truck','SpeedManagement,FollowingDistance', 'Completed',5,'', '2023-01-10T08:00:00','2023-01-10T08:00:00',1);
INSERT INTO fleet_driver_safety_training VALUES (2,202,'2023-02-15','JaneSmith','SAFE102','Hazard Perception',6.0,88.0,1,'CERT002','2025-02-14','Online','Remote','Van','BlindSpots,WeatherAdaptation','Completed',4,'', '2023-02-15T09:00:00','2023-02-15T09:00:00',1);
INSERT INTO fleet_driver_safety_training VALUES (3,203,'2023-03-20','MikeLee','SAFE103','Emergency Maneuvers',4.0,95.0,1,'CERT003','2025-03-19','InPerson','SiteA','Truck','SkidControl,BrakeResponse','Completed',5,'', '2023-03-20T10:00:00','2023-03-20T10:00:00',1);

-- Logistics route weather conditions
CREATE TABLE logistics_route_weather_conditions
(
    RecordID INTEGER PRIMARY KEY,
    RouteID INTEGER,
    Date TEXT,
    WeatherCode TEXT,
    Description TEXT,
    TemperatureC REAL,
    PrecipitationMm REAL,
    WindSpeedKph REAL,
    WindDirection TEXT,
    VisibilityKm REAL,
    RoadCondition TEXT,
    IncidentCount INTEGER,
    DelayMinutes REAL,
    Forecasted INTEGER,
    Source TEXT,
    UpdatedBy TEXT,
    CreatedTimestamp TEXT,
    UpdatedTimestamp TEXT,
    Notes TEXT,
    IsVerified INTEGER,
    SeverityLevel INTEGER
);

INSERT INTO logistics_route_weather_conditions VALUES (1,301,'2023-04-01','01','Clear',20.0,0.0,5.0,'N',15.0,'Dry',0,0.0,0,'NOAA','system','2023-04-01T06:00:00','2023-04-01T06:00:00','',1,1);
INSERT INTO logistics_route_weather_conditions VALUES (2,302,'2023-04-01','04','Rain',12.5,5.2,15.0,'SW',8.0,'Wet',2,30.0,0,'NOAA','system','2023-04-01T06:15:00','2023-04-01T06:15:00','',1,2);
INSERT INTO logistics_route_weather_conditions VALUES (3,303,'2023-04-01','08','Snow',-2.0,8.0,10.0,'N',2.0,'Snowy',5,45.0,0,'NOAA','system','2023-04-01T06:30:00','2023-04-01T06:30:00','',1,3);

-- Renewable energy certificate issuance
CREATE TABLE renewable_energy_certificate_issuance
(
    CertificateID INTEGER PRIMARY KEY,
    ProjectID INTEGER,
    IssueDate TEXT,
    ExpirationDate TEXT,
    CertificateType TEXT,
    RenewableSource TEXT,
    CapacityMW REAL,
    EnergyGeneratedMWh REAL,
    Issuer TEXT,
    OwnerEntity TEXT,
    Status TEXT,
    VerificationMethod TEXT,
    SerialNumber TEXT,
    TransactionReference TEXT,
    PricePerMWh REAL,
    TotalValue REAL,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedTimestamp TEXT,
    UpdatedTimestamp TEXT,
    IsActive INTEGER
);

INSERT INTO renewable_energy_certificate_issuance VALUES (1,5001,'2023-01-15','2033-01-14','REC','Solar',50.0,450000.0,'GovAgency','UtilityCo','Active','OnsiteAudit','SER001','TRX1001',45.0,20250000.0,'', 'admin','2023-01-15T08:00:00','2023-01-15T08:00:00',1);
INSERT INTO renewable_energy_certificate_issuance VALUES (2,5002,'2023-02-20','2032-02-19','REC','Wind',120.0,1050000.0,'GovAgency','EnergyCorp','Active','ThirdParty','SER002','TRX1002',40.0,42000000.0,'', 'admin','2023-02-20T09:00:00','2023-02-20T09:00:00',1);
INSERT INTO renewable_energy_certificate_issuance VALUES (3,5003,'2023-03-05','2033-03-04','REC','Hydro',80.0,700000.0,'GovAgency','HydroLtd','Active','OnsiteAudit','SER003','TRX1003',38.0,26600000.0,'', 'admin','2023-03-05T10:00:00','2023-03-05T10:00:00',1);

-- Public transport vehicle accessibility features
CREATE TABLE public_transport_vehicle_accessibility_features
(
    FeatureID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    ServiceLine TEXT,
    FeatureType TEXT,
    InstallationDate TEXT,
    Manufacturer TEXT,
    Model TEXT,
    ComplianceLevel TEXT,
    InspectionDate TEXT,
    InspectorName TEXT,
    Status TEXT,
    Notes TEXT,
    WarrantyExpiryDate TEXT,
    CostUSD REAL,
    FundingSource TEXT,
    LastMaintenanceDate TEXT,
    MaintenanceProvider TEXT,
    CreatedTimestamp TEXT,
    UpdatedTimestamp TEXT,
    IsOperational INTEGER,
    AccessibilityScore REAL
);

INSERT INTO public_transport_vehicle_accessibility_features VALUES (1,7001,'LineA','Ramp','2022-05-01','AccessInc','RampX','LevelA','2023-01-10','Inspector1','Operational','','2025-05-01',12000.0','GrantA','2023-06-01','ProviderA','2023-01-10T08:00:00','2023-06-01T09:00:00',1,9.5);
INSERT INTO public_transport_vehicle_accessibility_features VALUES (2,7002,'LineB','AudioAnnouncement','2021-09-15','SoundTech','AudioPro','LevelB','2023-02-20','Inspector2','Operational','','2024-09-15',8000.0','GrantB','2023-07-15','ProviderB','2023-02-20T10:00:00','2023-07-15T11:00:00',1,8.7);
INSERT INTO public_transport_vehicle_accessibility_features VALUES (3,7003,'LineC','WheelchairDock','2023-01-20','DockMakers','DockPlus','LevelA','2023-03-05','Inspector3','Pending','Awaiting certification','2026-01-20',15000.0','GrantC','2023-08-01','ProviderC','2023-03-05T12:00:00','2023-08-01T13:00:00',0,7.0);
