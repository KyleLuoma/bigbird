-- Fleet maintenance job records
CREATE TABLE fleet_maintenance_jobs (
    JobID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    ScheduledDate DATE,
    CompletedDate DATE,
    JobType TEXT,
    Description TEXT,
    LaborHours REAL,
    LaborCost REAL,
    PartsCost REAL,
    VendorID INTEGER,
    ServiceCenterID INTEGER,
    Odometer INTEGER,
    TechnicianID INTEGER,
    WarrantyFlag INTEGER,
    PriorityLevel TEXT,
    EstimatedDowntimeHours REAL,
    FuelImpactLiters REAL,
    Notes TEXT,
    CreatedTimestamp TEXT,
    UpdatedTimestamp TEXT,
    ApprovalStatus TEXT,
    FollowUpRequired INTEGER
);

INSERT INTO fleet_maintenance_jobs VALUES (1, 101, '2024-03-01', '2024-03-02', 'OilChange', 'Standard oil change', 2.5, 75.0, 30.0, 12, 5, 45200, 7, 1, 'High', 1.0, 0.0, 'N/A', '2024-02-20 08:15:00', '2024-03-02 14:30:00', 'Approved', 0);
INSERT INTO fleet_maintenance_jobs VALUES (2, 102, '2024-04-10', NULL, 'BrakeInspection', 'Front brake pad wear', 1.8, 45.0, 20.0, 13, 6, 37800, 8, 0, 'Medium', 0.5, 0.0, 'Check brake fluid', '2024-04-01 09:00:00', '2024-04-10 11:45:00', 'Pending', 1);
INSERT INTO fleet_maintenance_jobs VALUES (3, 103, '2024-05-15', '2024-05-16', 'TireRotation', 'Rotate all tires', 1.2, 30.0, 0.0, 14, 7, 21500, 9, 1, 'Low', 0.2, 0.0, 'N/A', '2024-05-01 07:45:00', '2024-05-16 13:20:00', 'Approved', 0);

-- Extended environmental audits for fuel stations
CREATE TABLE station_environmental_audits_ext (
    AuditID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    AuditDate DATE,
    AuditorName TEXT,
    AirQualityIndex REAL,
    WaterDischargeLiters REAL,
    SoilContaminationPPM REAL,
    WasteGeneratedKg REAL,
    RecyclingRate REAL,
    NoiseLevelDB REAL,
    EmissionType TEXT,
    EmissionQuantityKg REAL,
    ComplianceScore INTEGER,
    FollowUpAction TEXT,
    FollowUpDueDate DATE,
    Remarks TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT,
    Region TEXT,
    Category TEXT,
    InspectionMethod TEXT,
    VerifiedBy TEXT,
    Status TEXT
);

INSERT INTO station_environmental_audits_ext VALUES (1001, 201, '2024-02-12', 'AliceSmith', 42.5, 1500.0, 3.2, 250.0, 0.75, 65.0, 'CO2', 120.0, 88, 'Install filters', '2024-03-01', 'Initial audit completed', '2024-02-12 10:00:00', '2024-02-12 10:00:00', 'North', 'Routine', 'OnSite', 'BobJones', 'Closed');
INSERT INTO station_environmental_audits_ext VALUES (1002, 202, '2024-03-20', 'CarlosMendez', 38.0, 1200.0, 2.8, 190.0, 0.80, 60.0, 'NOx', 95.0, 92, 'Replace vent seals', '2024-04-05', 'Follow‑up needed', '2024-03-20 09:30:00', '2024-03-20 09:30:00', 'South', 'Targeted', 'Remote', 'DanaLee', 'Open');
INSERT INTO station_environmental_audits_ext VALUES (1003, 203, '2024-04-08', 'EvelynKhan', 45.2, 1700.0, 3.5, 300.0, 0.70, 68.0, 'SO2', 110.0, 85, 'Increase monitoring', '2024-04-30', 'No immediate issues', '2024-04-08 11:15:00', '2024-04-08 11:15:00', 'East', 'Compliance', 'OnSite', 'FrankWu', 'Closed');

-- Vehicle telemetry event logs
CREATE TABLE vehicle_telemetry_events (
    EventID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    Timestamp TEXT,
    Latitude REAL,
    Longitude REAL,
    SpeedKmh REAL,
    EngineRpm INTEGER,
    FuelLevelPercent REAL,
    BatteryVoltage REAL,
    TirePressureFL REAL,
    TirePressureFR REAL,
    TirePressureRL REAL,
    TirePressureRR REAL,
    Odometer INTEGER,
    AccelerationG REAL,
    BrakePressure REAL,
    GearPosition TEXT,
    CruiseControlActive INTEGER,
    DriverID INTEGER,
    RouteID INTEGER,
    WeatherCondition TEXT,
    RoadSurface TEXT,
    EventType TEXT,
    Notes TEXT
);

INSERT INTO vehicle_telemetry_events VALUES (5001, 301, '2024-05-01 08:00:00', 34.0522, -118.2437, 65.0, 2500, 78.5, 12.6, 32.0, 31.8, 33.2, 32.5, 50200, 0.12, 0.0, 'D', 0, 15, 8, 'Clear', 'Asphalt', 'Speeding', 'N/A');
INSERT INTO vehicle_telemetry_events VALUES (5002, 302, '2024-05-01 08:05:30', 34.0600, -118.2500, 0.0, 800, 45.0, 12.3, 30.5, 30.4, 31.0, 30.8, 50320, -0.05, 150.0, 'N', 1, 16, 9, 'Rain', 'Wet', 'HardBrake', 'Sudden stop');
INSERT INTO vehicle_telemetry_events VALUES (5003, 303, '2024-05-01 08:10:15', 34.0705, -118.2602, 80.0, 3000, 90.0, 12.8, 33.0, 32.9, 33.1, 33.0, 50410, 0.20, 0.0, '3', 0, 17, 10, 'Clear', 'Asphalt', 'Acceleration', 'Smooth start');

-- Energy grid outage report logs
CREATE TABLE energy_grid_outage_reports (
    OutageID INTEGER PRIMARY KEY,
    GridNodeID INTEGER,
    StartTime TEXT,
    EndTime TEXT,
    AffectedCustomers INTEGER,
    OutageDurationMinutes INTEGER,
    CauseCategory TEXT,
    CauseDetail TEXT,
    RestorationMethod TEXT,
    VoltageDropPercent REAL,
    FrequencyDeviationHz REAL,
    WeatherImpact TEXT,
    MaintenanceScheduled INTEGER,
    BackupPowerActivated INTEGER,
    ReportedBy TEXT,
    VerificationStatus TEXT,
    Latitude REAL,
    Longitude REAL,
    Region TEXT,
    SubStationID INTEGER,
    EstimatedLossUSD REAL,
    Notes TEXT,
    CreatedDate TEXT,
    UpdatedDate TEXT
);

INSERT INTO energy_grid_outage_reports VALUES (9001, 401, '2024-04-15 14:30:00', '2024-04-15 15:45:00', 1250, 75, 'Weather', 'Lightning strike', 'Manual reclose', 12.5, 0.3, 'Thunderstorm', 0, 1, 'MikeTaylor', 'Confirmed', 40.7128, -74.0060, 'Northeast', 55, 25000.0, 'No injuries', '2024-04-15 16:00:00', '2024-04-15 16:00:00');
INSERT INTO energy_grid_outage_reports VALUES (9002, 402, '2024-05-02 09:10:00', '2024-05-02 10:00:00', 800, 50, 'Equipment', 'Transformer failure', 'Automatic switch', 9.8, 0.1, 'Clear', 0, 0, 'SaraLee', 'Pending', 34.0522, -118.2437, 'West', 56, 18000.0, 'Investigation ongoing', '2024-05-02 10:15:00', '2024-05-02 10:15:00');
INSERT INTO energy_grid_outage_reports VALUES (9003, 403, '2024-05-20 22:00:00', '2024-05-20 23:30:00', 2000, 90, 'Human', 'Construction damage', 'Manual isolation', 15.0, 0.5, 'Rain', 1, 1, 'DavidKim', 'Confirmed', 51.5074, -0.1278, 'Midwest', 57, 40000.0, 'Repair crew dispatched', '2024-05-20 23:45:00', '2024-05-20 23:45:00');

-- Supplier performance review records
CREATE TABLE supplier_performance_reviews (
    ReviewID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    ReviewPeriodStart DATE,
    ReviewPeriodEnd DATE,
    OnTimeDeliveryRate REAL,
    DefectRatePercent REAL,
    CostVariancePercent REAL,
    CommunicationScore INTEGER,
    ResponsivenessHours REAL,
    ContractComplianceScore INTEGER,
    InnovationScore INTEGER,
    SustainabilityScore INTEGER,
    RiskRating TEXT,
    ReviewerName TEXT,
    ReviewDate DATE,
    OverallRating INTEGER,
    Comments TEXT,
    CreatedTimestamp TEXT,
    UpdatedTimestamp TEXT,
    Region TEXT,
    Category TEXT,
    PurchaseOrderCount INTEGER,
    TotalSpendUSD REAL,
    ImprovementPlan TEXT,
    FollowUpDate DATE,
    Status TEXT
);

INSERT INTO supplier_performance_reviews VALUES (2001, 601, '2023-01-01', '2023-12-31', 0.96, 0.02, 0.05, 8, 4.2, 9, 7, 6, 'Medium', 'LauraGreen', '2024-01-15', 8, 'Good overall', '2024-01-10 09:00:00', '2024-01-15 14:30:00', 'North', 'Materials', 125, 750000.0, 'Implement QR checks', '2024-02-01', 'Open');
INSERT INTO supplier_performance_reviews VALUES (2002, 602, '2023-01-01', '2023-12-31', 0.88, 0.05, 0.10, 6, 6.5, 7, 5, 5, 'High', 'MarkWhite', '2024-01-20', 6, 'Late deliveries', '2024-01-12 10:15:00', '2024-01-20 16:45:00', 'South', 'Components', 98, 540000.0, 'Review logistics partner', '2024-03-01', 'Open');
INSERT INTO supplier_performance_reviews VALUES (2003, 603, '2023-01-01', '2023-12-31', 0.99, 0.01, -0.02, 9, 3.0, 10, 8, 9, 'Low', 'NinaBrown', '2024-01-25', 9, 'Excellent performance', '2024-01-18 08:45:00', '2024-01-25 12:00:00', 'East', 'Services', 140, 820000.0, 'Maintain current level', '2024-02-15', 'Closed');

-- Customer loyalty interaction logs
CREATE TABLE customer_loyalty_interactions (
    InteractionID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    InteractionDate DATE,
    InteractionType TEXT,
    Channel TEXT,
    PointsEarned INTEGER,
    PointsRedeemed INTEGER,
    PromotionCode TEXT,
    TransactionID INTEGER,
    ProductID INTEGER,
    AmountSpent REAL,
    Currency TEXT,
    StoreLocation TEXT,
    EmployeeID INTEGER,
    FeedbackScore INTEGER,
    Comments TEXT,
    CampaignID INTEGER,
    Segment TEXT,
    LoyaltyTier TEXT,
    ExpirationDate DATE,
    CreatedAt TEXT,
    UpdatedAt TEXT,
    SourceSystem TEXT,
    Status TEXT,
    ReferralID INTEGER,
    NetPromoterScore INTEGER
);

INSERT INTO customer_loyalty_interactions VALUES (3001, 1001, '2024-03-05', 'Purchase', 'POS', 120, 0, 'SPRING20', 4001, 10, 45.00, 'USD', 'StationA', 21, 9, 'Great service', 501, 'Retail', 'Gold', '2025-03-04', '2024-03-05 10:00:00', '2024-03-05 10:00:00', 'CoreDB', 'Completed', NULL, 8);
INSERT INTO customer_loyalty_interactions VALUES (3002, 1002, '2024-04-12', 'Referral', 'MobileApp', 0, 0, 'REF12345', NULL, NULL, 0.0, 'USD', NULL, NULL, 0, 'Referral successful', 502, 'Online', 'Silver', '2025-04-11', '2024-04-12 14:20:00', '2024-04-12 14:20:00', 'CoreDB', 'Completed', 2002, 9);
INSERT INTO customer_loyalty_interactions VALUES (3003, 1003, '2024-05-20', 'Redemption', 'Web', 0, 250, 'SUMMER25', 4002, 12, 75.00, 'USD', 'OnlineStore', 22, 7, 'Easy checkout', 503, 'E‑Commerce', 'Platinum', '2025-05-19', '2024-05-20 09:45:00', '2024-05-20 09:45:00', 'CoreDB', 'Completed', NULL, 10);

-- Road infrastructure project details
CREATE TABLE road_infrastructure_projects_detail (
    ProjectID INTEGER PRIMARY KEY,
    ProjectName TEXT,
    StartDate DATE,
    EndDate DATE,
    BudgetUSD REAL,
    ExpenditureUSD REAL,
    ContractorID INTEGER,
    ProjectManagerID INTEGER,
    Region TEXT,
    HighwayNumber TEXT,
    LaneCount INTEGER,
    EstimatedTrafficIncreasePct REAL,
    EnvironmentalImpactScore INTEGER,
    PermitStatus TEXT,
    SafetyPlanApproved INTEGER,
    PublicConsultationDate DATE,
    CommunityFeedbackScore INTEGER,
    GeoCoordinateLat REAL,
    GeoCoordinateLong REAL,
    FundingSource TEXT,
    Phase TEXT,
    Status TEXT,
    LastUpdated TEXT,
    CreatedOn TEXT,
    RiskLevel TEXT,
    ContingencyReserveUSD REAL,
    Notes TEXT,
    ExpectedCompletionDate DATE,
    ActualCompletionDate DATE,
    OversightAgency TEXT,
    IsStrategic INTEGER
);

INSERT INTO road_infrastructure_projects_detail VALUES (7001, 'Highway 5 Expansion', '2023-06-01', '2025-12-31', 150000000.0, 85000000.0, 801, 901, 'Northwest', 'HW5', 4, 12.5, 78, 'Approved', 1, '2023-05-15', 85, 45.1234, -122.6789, 'FederalGrant', 'Construction', 'InProgress', '2024-09-10 11:20:00', '2023-05-01 08:00:00', 'Medium', 2000000.0, 'Bridge reinforcement required', '2025-11-30', NULL, 'DOT', 1);
INSERT INTO road_infrastructure_projects_detail VALUES (7002, 'Urban Loop Revamp', '2022-01-15', '2024-08-20', 90000000.0, 92000000.0, 802, 902, 'Central', 'UL1', 6, 8.0, 62, 'Pending', 0, '2021-12-20', 70, 40.5678, -73.9876, 'MunicipalBond', 'Design', 'Delayed', '2024-03-05 09:45:00', '2021-11-20 10:30:00', 'High', 1500000.0, 'Cost overrun due to material prices', '2024-08-15', '2024-08-18', 'CityPlanning', 0);
INSERT INTO road_infrastructure_projects_detail VALUES (7003, 'Rural Access Road', '2024-02-01', NULL, 30000000.0, 12000000.0, 803, 903, 'Southwest', 'RA12', 2, 5.5, 55, 'Approved', 1, '2024-01-20', 90, 35.4321, -110.5432, 'StateFunding', 'Planning', 'Active', '2024-07-01 14:10:00', '2024-02-01 08:30:00', 'Low', 500000.0, 'Awaiting final survey', NULL, NULL, 'StateDOT', 1);

-- Public transport vehicle assignments history
CREATE TABLE public_transport_vehicle_assignments_history (
    AssignmentID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    RouteID INTEGER,
    AssignmentStartDate DATE,
    AssignmentEndDate DATE,
    OperatorID INTEGER,
    DepotID INTEGER,
    ServiceType TEXT,
    Capacity INTEGER,
    AccessibilityFeatures TEXT,
    FuelType TEXT,
    EmissionStandard TEXT,
    MaintenanceStatus TEXT,
    MileageAtAssignment INTEGER,
    DriverID INTEGER,
    ShiftPattern TEXT,
    DayOfWeek TEXT,
    SeasonalAdjustment TEXT,
    ActiveFlag INTEGER,
    CreatedTimestamp TEXT,
    UpdatedTimestamp TEXT,
    Remarks TEXT,
    ComplianceScore INTEGER,
    LastInspectionDate DATE,
    NextInspectionDue DATE,
    AssignedBy TEXT,
    Status TEXT,
    ElapsedDays INTEGER,
    OverlapFlag INTEGER,
    ReplacementVehicleID INTEGER,
    CancellationReason TEXT,
    RenewalFlag INTEGER
);

INSERT INTO public_transport_vehicle_assignments_history VALUES (8001, 901, 301, '2024-01-01', '2024-06-30', 1001, 2001, 'Bus', 50, 'WheelchairRamp', 'Diesel', 'Euro6', 'Good', 120000, 3001, 'Morning', 'Monday', 'None', 1, '2024-01-01 07:00:00', '2024-06-01 08:00:00', 'Routine', 9, '2023-12-15', '2024-12-15', 'SchedulerA', 'Active', 181, 0, NULL, NULL, 0);
INSERT INTO public_transport_vehicle_assignments_history VALUES (8002, 902, 302, '2024-03-15', NULL, 1002, 2002, 'Tram', 120, 'LowFloor', 'Electric', 'Zero', 'Pending', 80000, 3002, 'Evening', 'Wednesday', 'Summer', 1, '2024-03-15 16:30:00', '2024-05-10 10:00:00', 'Extended', 8, '2024-02-20', '2025-02-20', 'SchedulerB', 'Active', 57, 0, NULL, NULL, 0);
INSERT INTO public_transport_vehicle_assignments_history VALUES (8003, 903, 303, '2023-11-01', '2024-04-30', 1003, 2003, 'Metro', 200, 'ElevatorAccess', 'Electric', 'Zero', 'Good', 150000, 3003, 'Night', 'Friday', 'Winter', 0, '2023-11-01 22:00:00', '2024-04-30 23:00:00', 'Completed', 10, '2023-10-15', '2024-10-15', 'SchedulerC', 'Completed', 180, 0, NULL, 'EndOfService', 1);

-- Fuel price forecast model definitions
CREATE TABLE fuel_price_forecast_models (
    ModelID INTEGER PRIMARY KEY,
    ModelName TEXT,
    Version TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    InputFeatures TEXT,
    TargetVariable TEXT,
    Algorithm TEXT,
    TrainingDataStart DATE,
    TrainingDataEnd DATE,
    ValidationSplit REAL,
    HyperparameterA REAL,
    HyperparameterB REAL,
    HyperparameterC REAL,
    PerformanceMetric TEXT,
    MetricValue REAL,
    ForecastHorizonDays INTEGER,
    SeasonalAdjustmentFlag INTEGER,
    ExternalDataSource TEXT,
    DataRefreshFrequency TEXT,
    OwnerTeam TEXT,
    Status TEXT,
    DeploymentEnvironment TEXT,
    ModelDescription TEXT,
    AccuracyThreshold REAL,
    RetrainingFrequencyDays INTEGER,
    LastRetrainingDate DATE,
    Notes TEXT,
    ComplianceCheckPassed INTEGER,
    RiskLevel TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE
);

INSERT INTO fuel_price_forecast_models VALUES (9001, 'DailyFuelPricePredictor', 'v1.2', '2024-01-10', '2024-03-15', 'Weather,Supply,Demand', 'Price', 'RandomForest', '2022-01-01', '2023-12-31', 0.2, 0.1, 0.05, 0.01, 'RMSE', 0.32, 30, 1, 'GovDataAPI', 'Daily', 'AnalyticsTeam', 'Production', 'AWS', 'Predicts daily fuel price per station', 0.90, 30, '2024-03-01', 'Model stable', 1, 'Low', 'JaneDoe', '2024-02-20');
INSERT INTO fuel_price_forecast_models VALUES (9002, 'WeeklyFuelPriceTrend', 'v2.0', '2023-11-05', '2024-02-20', 'GlobalOilPrices,ExchangeRates', 'AveragePrice', 'ARIMA', '2020-01-01', '2023-12-31', 0.25, 0.2, 0.1, 0.0, 'MAE', 0.45, 90, 0, 'MarketFeed', 'Weekly', 'DataScience', 'Staging', 'Azure', 'Weekly trend analysis for pricing strategy', 0.85, 60, '2024-02-10', 'Needs tuning', 1, 'Medium', 'JohnSmith', '2024-01-30');
INSERT INTO fuel_price_forecast_models VALUES (9003, 'MonthlyFuelPriceSeasonal', 'v1.0', '2023-06-01', '2023-12-01', 'Seasonality,HistoricalPrices', 'MonthlyAvg', 'Prophet', '2018-01-01', '2022-12-31', 0.3, 0.15, 0.07, 0.02, 'MAPE', 0.20, 180, 1, 'StatisticalAgency', 'Monthly', 'ResearchGroup', 'Testing', 'GCP', 'Captures seasonal patterns in fuel pricing', 0.80, 90, '2023-11-20', 'Pre‑prod', 1, 'Low', 'EmilyClark', '2023-11-15');

-- Digital advertising campaign metrics
CREATE TABLE digital_ad_campaign_metrics (
    CampaignID INTEGER PRIMARY KEY,
    CampaignName TEXT,
    StartDate DATE,
    EndDate DATE,
    Platform TEXT,
    AdFormat TEXT,
    Impressions INTEGER,
    Clicks INTEGER,
    Conversions INTEGER,
    SpendUSD REAL,
    CPM REAL,
    CPC REAL,
    CPA REAL,
    CTR REAL,
    ConversionRate REAL,
    RevenueUSD REAL,
    ROI REAL,
    TargetAudience TEXT,
    GeoTarget TEXT,
    DeviceTarget TEXT,
    FrequencyCap INTEGER,
    BudgetUSD REAL,
    Status TEXT,
    CreatedBy TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT,
    PrimaryGoal TEXT,
    SecondaryGoal TEXT,
    OptimizationEvent TEXT,
    AttributionModel TEXT,
    ViewThroughConversions INTEGER,
    ClickThroughConversions INTEGER,
    LandingPageURL TEXT,
    CreativeID INTEGER,
    AudienceSegment TEXT,
    FraudDetectionScore REAL,
    Notes TEXT,
    ApprovalStatus TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    LastModifiedBy TEXT,
    LastModifiedDate DATE
);

INSERT INTO digital_ad_campaign_metrics VALUES (10001, 'SpringFuelPromo', '2024-03-01', '2024-04-30', 'GoogleAds', 'Display', 2500000, 45000, 3200, 150000.0, 60.0, 3.33, 46.88, 1.8, 7.11, 50000.0, 0.33, 'Drivers', 'US', 'Mobile', 3, 200000.0, 'Active', 'MarketerA', '2024-02-20 09:00:00', '2024-03-15 11:30:00', 'Awareness', 'LeadGeneration', 'Clicks', 'LastClick', 500, 2720, 'http://example.com/promo', 801, 'YoungAdults', 0.02, 'Seasonal campaign', 'Approved', 'DirectorX', '2024-02-25', 'MarketerB', '2024-03-10');
INSERT INTO digital_ad_campaign_metrics VALUES (10002, 'SummerEcoDrive', '2024-06-01', '2024-08-31', 'Facebook', 'Video', 1800000, 30000, 2100, 120000.0, 66.7, 4.00, 57.14, 1.67, 7.00, 40000.0, 0.33, 'EcoConscious', 'EU', 'Desktop', 2, 150000.0, 'Paused', 'MarketerB', '2024-05-10 10:15:00', '2024-06-20 14:45:00', 'Engagement', 'BrandRecall', 'VideoViews', 'Linear', 400, 1900, 'http://example.com/ecodrive', 802, 'MidAge', 0.05, 'Focus on sustainability', 'Pending', 'ManagerY', '2024-05-20', 'MarketerC', '2024-06-05');
INSERT INTO digital_ad_campaign_metrics VALUES (10003, 'FallFuelDiscount', '2024-09-01', '2024-10-31', 'LinkedIn', 'SponsoredContent', 900000, 12000, 950, 80000.0, 88.9, 6.67, 84.21, 1.33, 7.92, 25000.0, 0.31, 'CorporateClients', 'NA', 'All', 4, 100000.0, 'Planned', 'MarketerC', '2024-08-01 08:30:00', '2024-08-15 09:45:00', 'LeadGen', 'Sales', 'Leads', 'FirstTouch', 200, 800, 'http://example.com/falldiscount', 803, 'Enterprise', 0.01, 'Targeting B2B', 'Approved', 'DirectorZ', '2024-08-10', 'MarketerD', '2024-08-20');