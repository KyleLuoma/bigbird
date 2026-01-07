-- Fleet inspection reports for vehicles
CREATE TABLE fleet_inspection_reports
(
    InspectionID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    InspectionDate DATE,
    InspectorName TEXT,
    Odometer INTEGER,
    BrakeCondition TEXT,
    TireWearLevel TEXT,
    LightFunctionality TEXT,
    EmissionTestResult TEXT,
    OverallScore REAL,
    Notes TEXT,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    Location TEXT,
    FuelLevel REAL,
    EngineNoiseLevel TEXT,
    TransmissionStatus TEXT,
    SuspensionStatus TEXT,
    ClimateControlStatus TEXT,
    SafetyEquipmentStatus TEXT
);

INSERT INTO fleet_inspection_reports VALUES (1, 101, '2024-02-10', 'Alice Smith', 45230, 'Good', 'Medium', 'All', 'Pass', 92.5, 'No issues', 0, NULL, 'Depot A', 75.3, 'Normal', 'Operational', 'Stable', 'Functional', 'Checked');
INSERT INTO fleet_inspection_reports VALUES (2, 102, '2024-02-11', 'Bob Jones', 120850, 'Fair', 'High', 'Partial', 'Fail', 68.0, 'Brake pads worn', 1, '2024-03-01', 'Depot B', 60.0, 'Elevated', 'Needs Service', 'Worn', 'Needs Repair', 'Replaced brake pads');
INSERT INTO fleet_inspection_reports VALUES (3, 103, '2024-02-12', 'Carol Lee', 80000, 'Excellent', 'Low', 'All', 'Pass', 98.0, 'All systems nominal', 0, NULL, 'Depot C', 82.1, 'Low', 'Smooth', 'Good', 'Optimal', 'Ready for deployment');

-- Maintenance contracts for gas stations
CREATE TABLE station_maintenance_contracts
(
    ContractID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    ContractorID INTEGER,
    ContractStartDate DATE,
    ContractEndDate DATE,
    ServiceLevel TEXT,
    MonthlyFee REAL,
    Currency TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    PaymentTerms TEXT,
    ScopeOfWork TEXT,
    SLAResponseTimeHours INTEGER,
    PenaltyRate REAL,
    RenewalOption TEXT,
    InsuranceCoverage TEXT,
    WarrantyPeriodMonths INTEGER,
    ComplianceRequirements TEXT,
    PerformanceRating REAL,
    Notes TEXT
);

INSERT INTO station_maintenance_contracts VALUES (1, 201, 301, '2023-01-01', '2025-12-31', 'Gold', 1500.00, 'USD', 'David Brown', '5551234567', 'Net30', 'Full equipment service', 24, 5.0, 'Automatic', 'Liability', 12, 'ISO9001', 4.8, 'Long term partner');
INSERT INTO station_maintenance_contracts VALUES (2, 202, 302, '2024-03-15', '2026-03-14', 'Silver', 1200.00, 'USD', 'Emily Green', '5559876543', 'Net45', 'Fuel pump inspection', 48, 3.0, 'Manual', 'General', 6, 'OSHA', 4.2, 'Evaluate after first year');
INSERT INTO station_maintenance_contracts VALUES (3, 203, 303, '2022-07-01', '2024-06-30', 'Bronze', 900.00, 'USD', 'Frank White', '5555551212', 'Net60', 'Cleaning and minor repairs', 72, 2.0, 'None', 'None', 0, 'Local regulations', 3.9, 'Contract ending soon');

-- Customer affinity groups for marketing
CREATE TABLE customer_affinity_groups
(
    GroupID INTEGER PRIMARY KEY,
    GroupName TEXT,
    Segment TEXT,
    CreatedDate DATE,
    TargetRevenue REAL,
    AvgVisitFrequency REAL,
    LoyaltyTier TEXT,
    PreferredCurrency TEXT,
    MarketingChannel TEXT,
    PromoCode TEXT,
    DiscountRate REAL,
    MinimumSpend REAL,
    MaxMembers INTEGER,
    Region TEXT,
    DemographicProfile TEXT,
    RiskScore REAL,
    EngagementScore REAL,
    LastUpdate DATE,
    Notes TEXT,
    IsActive INTEGER
);

INSERT INTO customer_affinity_groups VALUES (1, 'EcoDrivers', 'Retail', '2023-05-20', 250000.00, 4.5, 'Gold', 'USD', 'Email', 'ECO20', 20.0, 500.00, 1500, 'NorthAmerica', 'Age25-45 EcoFriendly', 0.15, 85.0, '2024-01-10', 'Focus on electric vehicles', 1);
INSERT INTO customer_affinity_groups VALUES (2, 'FrequentFlyers', 'Corporate', '2022-11-12', 1200000.00, 12.0, 'Platinum', 'EUR', 'SMS', 'FLY15', 15.0, 2000.00, 800, 'Europe', 'Age30-60 BusinessTravel', 0.08, 92.0, '2024-01-08', 'High spenders', 1);
INSERT INTO customer_affinity_groups VALUES (3, 'WeekendShoppers', 'Retail', '2023-08-01', 75000.00, 2.0, 'Silver', 'USD', 'Push', 'WEEKEND5', 5.0, 100.00, 3000, 'AsiaPacific', 'Age18-35 Casual', 0.22, 70.0, '2024-01-12', 'Seasonal promotions', 1);

-- Vehicle telematics event logs
CREATE TABLE vehicle_telematics_events
(
    EventID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    EventTimestamp DATETIME,
    Latitude REAL,
    Longitude REAL,
    Speed REAL,
    Acceleration REAL,
    FuelConsumption REAL,
    EngineRPM INTEGER,
    GearPosition TEXT,
    EventType TEXT,
    SeverityLevel INTEGER,
    DriverID INTEGER,
    TripID INTEGER,
    BatteryVoltage REAL,
    TirePressureFrontLeft REAL,
    TirePressureFrontRight REAL,
    TirePressureRearLeft REAL,
    TirePressureRearRight REAL,
    Odometer INTEGER
);

INSERT INTO vehicle_telematics_events VALUES (1, 101, '2024-02-14 08:15:30', 40.7128, -74.0060, 55.2, 0.3, 8.5, 2500, 'D', 'HardBrake', 3, 501, 9001, 12.6, 32.5, 32.7, 30.1, 30.3, 45230);
INSERT INTO vehicle_telematics_events VALUES (2, 102, '2024-02-14 09:22:10', 34.0522, -118.2437, 65.0, 0.1, 9.2, 2700, '3', 'Speeding', 2, 502, 9002, 12.4, 31.8, 31.9, 29.9, 30.0, 120850);
INSERT INTO vehicle_telematics_events VALUES (3, 103, '2024-02-14 10:05:45', 51.5074, -0.1278, 45.5, -0.2, 7.8, 2300, 'N', 'SharpTurn', 4, 503, 9003, 12.8, 33.0, 33.1, 31.0, 31.2, 80000);

-- Energy grid capacity forecasts
CREATE TABLE energy_grid_capacity_forecasts
(
    ForecastID INTEGER PRIMARY KEY,
    RegionCode TEXT,
    ForecastDate DATE,
    ForecastHour INTEGER,
    ExpectedMW REAL,
    PeakDemandMW REAL,
    RenewableSharePercent REAL,
    SolarMW REAL,
    WindMW REAL,
    HydroMW REAL,
    ThermalMW REAL,
    StorageMW REAL,
    ForecastSource TEXT,
    ConfidenceLevel REAL,
    Notes TEXT,
    UpdatedAt DATETIME,
    CreatedBy TEXT,
    Version INTEGER,
    AdjustmentFactor REAL,
    Scenario TEXT
);

INSERT INTO energy_grid_capacity_forecasts VALUES (1, 'NE', '2024-03-01', 14, 8500.0, 9200.0, 38.5, 1500.0, 2000.0, 1000.0, 3000.0, 500.0, 'ModelA', 0.92, 'Baseline forecast', '2024-01-20 12:00:00', ' analyst1', 1, 1.00, 'Base');
INSERT INTO energy_grid_capacity_forecasts VALUES (2, 'SW', '2024-03-01', 14, 7200.0, 7700.0, 42.0, 1300.0, 2100.0, 900.0, 2500.0, 400.0, 'ModelB', 0.88, 'High renewable scenario', '2024-01-20 12:15:00', ' analyst2', 1, 0.95, 'RenewableBoost');
INSERT INTO energy_grid_capacity_forecasts VALUES (3, 'MW', '2024-03-01', 14, 6400.0, 7000.0, 30.0, 800.0, 1500.0, 1100.0, 2800.0, 600.0, 'ModelC', 0.90, 'Conservative demand', '2024-01-20 12:30:00', ' analyst3', 1, 1.05, 'DemandConserve');

-- Regional transportation policy definitions
CREATE TABLE regional_transportation_policy
(
    PolicyID INTEGER PRIMARY KEY,
    RegionCode TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    PolicyName TEXT,
    Description TEXT,
    FundingAmount REAL,
    FundingCurrency TEXT,
    GoverningBody TEXT,
    ComplianceDeadline DATE,
    PenaltyRate REAL,
    ReportingFrequency TEXT,
    AmendmentNumber INTEGER,
    RevisionDate DATE,
    ResponsibleAgency TEXT,
    TargetRidership INTEGER,
    EmissionReductionTarget REAL,
    PublicCommentsURL TEXT,
    Status TEXT,
    LastReviewed DATE
);

INSERT INTO regional_transportation_policy VALUES (1, 'CA', '2023-07-01', '2028-06-30', 'CleanTransit2025', 'Incentivize electric buses', 25000000.0, 'USD', 'StateTransitAuthority', '2024-12-31', 2.5, 'Quarterly', 3, '2024-01-10', 'DeptOfTransportation', 5000000, 15.0, 'http://comments.ca.gov/cleantransit', 'Active', '2024-01-15');
INSERT INTO regional_transportation_policy VALUES (2, 'TX', '2022-01-01', '2027-12-31', 'RoadSafetyUpgrade', 'Improve highway safety standards', 18000000.0, 'USD', 'TxDOT', '2023-06-30', 1.8, 'Annually', 2, '2023-05-05', 'HighwaySafetyBoard', 2000000, 5.0, 'http://feedback.tx.gov/roadsafety', 'Active', '2023-11-20');
INSERT INTO regional_transportation_policy VALUES (3, 'NY', '2024-01-01', '2030-12-31', 'BikeLaneExpansion', 'Expand protected bike lanes', 12000000.0, 'USD', 'NYCPlanning', '2025-03-31', 3.0, 'SemiAnnual', 1, '2024-02-20', 'BicycleCommission', 800000, 10.0, 'http://nyc.gov/bikelanes/comments', 'Proposed', '2024-02-25');

-- Fuel station employee training records
CREATE TABLE fuel_station_employee_training
(
    TrainingID INTEGER PRIMARY KEY,
    StationID INTEGER,
    EmployeeID INTEGER,
    TrainingDate DATE,
    TrainerName TEXT,
    CourseCode TEXT,
    CourseTitle TEXT,
    DurationHours REAL,
    CompletionStatus TEXT,
    Score REAL,
    CertificationObtained TEXT,
    ExpirationDate DATE,
    Feedback TEXT,
    TrainingLocation TEXT,
    TrainingMode TEXT,
    MaterialsProvided TEXT,
    FollowUpDate DATE,
    FollowUpActions TEXT,
    Notes TEXT,
    IsMandatory INTEGER
);

INSERT INTO fuel_station_employee_training VALUES (1, 201, 401, '2024-01-15', 'Lena Park', 'FS001', 'Safety Procedures', 4.0, 'Completed', 89.5, 'Safety Certified', '2026-01-15', 'Very useful', 'Station A', 'InPerson', 'Handouts', '2024-03-01', 'Refreshers needed', 'First training session', 1);
INSERT INTO fuel_station_employee_training VALUES (2, 202, 402, '2024-01-20', 'Mike Turner', 'FS002', 'Customer Service', 3.5, 'Completed', 92.0, 'Service Badge', '2025-01-20', 'Engaging', 'Station B', 'Online', 'Slide Deck', '2024-04-01', 'Observe calls', 'Second session', 1);
INSERT INTO fuel_station_employee_training VALUES (3, 203, 403, '2024-01-22', 'Sara Lee', 'FS003', 'Fuel Handling', 5.0, 'Incomplete', 0.0, NULL, NULL, 'Need more practice', 'Station C', 'InPerson', 'Manual', NULL, NULL, 'Training postponed', 1);

-- Smart city traffic flow model metadata
CREATE TABLE smart_city_traffic_flow_models
(
    ModelID INTEGER PRIMARY KEY,
    CityCode TEXT,
    ModelVersion TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    AlgorithmType TEXT,
    InputDataSources TEXT,
    ForecastHorizonHours INTEGER,
    SpatialResolutionMeters REAL,
    TemporalResolutionMinutes INTEGER,
    AccuracyMetric REAL,
    ValidationDataset TEXT,
    OwnerTeam TEXT,
    DeploymentStatus TEXT,
    ComputeResource TEXT,
    CostEstimate REAL,
    FundingSource TEXT,
    Notes TEXT,
    IsActive INTEGER,
    LicenseType TEXT
);

INSERT INTO smart_city_traffic_flow_models VALUES (1, 'NYC', 'v1.2', '2023-12-01', '2024-01-10', 'NeuralNetwork', 'LoopDetectors, GPS', 24, 100.0, 5, 0.87, 'Jan2023Data', 'DataScienceTeam', 'Deployed', 'GPUCluster', 50000.0, 'CityGrant', 'Initial rollout', 1, 'OpenSource');
INSERT INTO smart_city_traffic_flow_models VALUES (2, 'LA', 'v2.0', '2024-02-05', '2024-02-20', 'GradientBoosting', 'CCTV, MobileApp', 12, 50.0, 10, 0.91, 'Feb2024Data', 'AIGroup', 'Testing', 'CloudVM', 30000.0, 'StateFunding', 'Beta test in downtown', 1, 'Proprietary');
INSERT INTO smart_city_traffic_flow_models VALUES (3, 'CHI', 'v1.0', '2023-11-15', '2024-01-05', 'ARIMA', 'TrafficCounts', 48, 200.0, 15, 0.78, 'Oct2023Data', 'AnalyticsDept', 'Pilot', 'OnPremServer', 20000.0, 'UniversityGrant', 'Pilot for suburbs', 1, 'OpenSource');

-- Environmental impact monitoring records
CREATE TABLE environmental_impact_monitoring
(
    RecordID INTEGER PRIMARY KEY,
    SiteID INTEGER,
    ObservationDate DATE,
    PollutantType TEXT,
    Concentration REAL,
    Unit TEXT,
    SensorID INTEGER,
    Latitude REAL,
    Longitude REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    WindSpeedMps REAL,
    WindDirectionDeg INTEGER,
    RainfallMM REAL,
    AirQualityIndex INTEGER,
    RegulatoryThreshold REAL,
    ExceedanceFlag INTEGER,
    Remarks TEXT,
    RecordedBy TEXT,
    ValidationStatus TEXT
);

INSERT INTO environmental_impact_monitoring VALUES (1, 901, '2024-01-31', 'NO2', 42.5, 'ppb', 1101, 40.7128, -74.0060, 5.2, 68.0, 3.5, 180, 0.0, 55, 50.0, 1, 'Above limit during rush hour', 'EnvTech1', 'Pending');
INSERT INTO environmental_impact_monitoring VALUES (2, 902, '2024-01-31', 'PM2.5', 12.0, 'µg/m3', 1102, 34.0522, -118.2437, 12.8, 55.0, 2.1, 90, 0.0, 35, 35.0, 0, 'Normal levels', 'EnvTech2', 'Approved');
INSERT INTO environmental_impact_monitoring VALUES (3, 903, '2024-01-31', 'O3', 65.3, 'ppb', 1103, 51.5074, -0.1278, 7.5, 72.0, 4.0, 250, 0.0, 70, 65.0, 1, 'High ozone in afternoon', 'EnvTech3', 'Pending');

-- Digital payment method details for customers
CREATE TABLE digital_payment_method_details
(
    MethodID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    PaymentMethodType TEXT,
    IssuerBank TEXT,
    CardNumberMasked TEXT,
    ExpirationDate TEXT,
    BillingAddress TEXT,
    CountryCode TEXT,
    Currency TEXT,
    IsPrimary INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    TokenizationStatus TEXT,
    CVVVerificationResult TEXT,
    FraudScore REAL,
    ActivationDate DATE,
    DeactivationDate DATE,
    LastUsedDate DATE,
    UsageCount INTEGER,
    Notes TEXT
);

INSERT INTO digital_payment_method_details VALUES (1, 1001, 'CreditCard', 'BankA', 'XXXX-XXXX-XXXX-1234', '2026-08', '123 Main St', 'US', 'USD', 1, '2023-05-10 09:15:00', '2024-01-12 14:20:00', 'Tokenized', 'Match', 12.5, '2023-05-15', NULL, '2024-01-10', 45, 'Primary card');
INSERT INTO digital_payment_method_details VALUES (2, 1002, 'DebitCard', 'BankB', 'XXXX-XXXX-XXXX-5678', '2025-11', '456 Oak Ave', 'CA', 'CAD', 0, '2023-06-01 10:00:00', '2024-01-11 11:30:00', 'Tokenized', 'Match', 8.2, '2023-06-05', NULL, '2024-01-09', 30, 'Backup card');
INSERT INTO digital_payment_method_details VALUES (3, 1003, 'DigitalWallet', 'PayFast', 'WALLET-ABC123', '2028-12', '789 Pine Rd', 'GB', 'GBP', 1, '2023-07-20 08:45:00', '2024-01-13 16:05:00', 'Tokenized', 'N/A', 5.0, '2023-07-22', NULL, '2024-01-08', 60, 'Primary digital wallet');