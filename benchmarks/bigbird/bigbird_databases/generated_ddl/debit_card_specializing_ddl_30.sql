-- Vehicle service records for fleet maintenance
CREATE TABLE vehicle_service_records (
    ServiceID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    ServiceDate TEXT,
    Odometer INTEGER,
    ServiceType TEXT,
    ServiceCenterID INTEGER,
    TechnicianID INTEGER,
    PartsUsed TEXT,
    LaborHours REAL,
    Cost REAL,
    WarrantyFlag INTEGER,
    Notes TEXT,
    NextServiceDue TEXT,
    MileageNext INTEGER,
    ServiceCategory TEXT,
    ServiceRating INTEGER,
    FollowUpRequired INTEGER,
    FollowUpDate TEXT,
    PaymentMethod TEXT,
    DiscountApplied REAL
);

INSERT INTO vehicle_service_records VALUES (1, 101, '2023-05-12', 45200, 'Oil Change', 10, 2001, 'Oil Filter', 1.5, 85.00, 0, 'Routine service', '2024-05-12', 50200, 'Preventive', 5, 0, NULL, 'Credit Card', 0.0);
INSERT INTO vehicle_service_records VALUES (2, 102, '2023-06-20', 37800, 'Brake Inspection', 12, 2003, 'Brake Pads', 2.0, 150.00, 1, 'Replaced pads', '2023-12-20', 42800, 'Corrective', 4, 1, '2023-07-01', 'Cash', 5.0);
INSERT INTO vehicle_service_records VALUES (3, 103, '2023-07-15', 62000, 'Transmission Check', 11, 2005, 'Transmission Fluid', 3.0, 300.00, 0, 'No issues found', '2024-07-15', 72000, 'Preventive', 5, 0, NULL, 'Debit Card', 0.0);


-- Environmental audits performed at fuel stations
CREATE TABLE station_environmental_audits (
    AuditID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    AuditDate TEXT,
    AuditorID INTEGER,
    AirQualityIndex INTEGER,
    SoilContaminationLevel REAL,
    WaterLeakDetected INTEGER,
    WasteManagementScore INTEGER,
    NoiseLevelDb REAL,
    EmissionCompliance INTEGER,
    RenewableEnergyPct REAL,
    LightingEfficiency REAL,
    HVACEfficiency REAL,
    SolarPanelCondition TEXT,
    RainwaterHarvesting INTEGER,
    AuditComments TEXT,
    CorrectiveActionsCount INTEGER,
    FollowUpDate TEXT,
    OverallScore REAL,
    CertificationStatus TEXT
);

INSERT INTO station_environmental_audits VALUES (1001, 501, '2023-04-10', 3001, 42, 0.02, 0, 85, 55.5, 1, 12.5, 78.0, 80.0, 'Good', 1, 'All standards met', 0, NULL, 92.3, 'Certified');
INSERT INTO station_environmental_audits VALUES (1002, 502, '2023-05-22', 3002, 55, 0.07, 1, 70, 60.0, 0, 8.0, 65.0, 70.0, 'Fair', 0, 'Leak repaired', 2, '2023-06-15', 78.4, 'Pending');
INSERT INTO station_environmental_audits VALUES (1003, 503, '2023-06-30', 3003, 38, 0.01, 0, 90, 50.0, 1, 15.0, 85.0, 88.0, 'Excellent', 1, 'Excellent performance', 0, NULL, 95.0, 'Certified');


-- Forecasts of regional fuel demand
CREATE TABLE regional_fuel_demand_forecasts (
    ForecastID INTEGER PRIMARY KEY,
    RegionCode TEXT,
    Year INTEGER,
    Month INTEGER,
    DieselDemandBarrels REAL,
    GasolineDemandBarrels REAL,
    EthanolBlendPct REAL,
    LPGDemandBarrels REAL,
    AvgPriceDiesel REAL,
    AvgPriceGasoline REAL,
    AvgPriceEthanol REAL,
    ForecastCreatedDate TEXT,
    AnalystID INTEGER,
    ConfidenceScore REAL,
    SeasonalAdjustmentFactor REAL,
    EconomicGrowthIndicator REAL,
    PopulationGrowthPct REAL,
    VehicleFleetGrowthPct REAL,
    PolicyImpactScore REAL,
    Remarks TEXT,
    DataSource TEXT
);

INSERT INTO regional_fuel_demand_forecasts VALUES (2001, 'NE01', 2023, 7, 12000.5, 15000.2, 10.0, 3000.0, 3.45, 2.85, 1.20, '2023-07-01', 4001, 0.92, 1.05, 2.3, 0.8, 1.2, 0.6, 'Steady increase', 'Internal Model');
INSERT INTO regional_fuel_demand_forecasts VALUES (2002, 'SW02', 2023, 7, 8000.0, 9500.0, 12.5, 2500.0, 3.50, 2.90, 1.15, '2023-07-01', 4002, 0.88, 0.98, 1.9, 0.6, 1.0, 0.4, 'Seasonal dip expected', 'External Agency');
INSERT INTO regional_fuel_demand_forecasts VALUES (2003, 'MW03', 2023, 7, 15000.0, 18000.0, 9.0, 3500.0, 3.40, 2.80, 1.25, '2023-07-01', 4003, 0.95, 1.10, 2.7, 0.9, 1.4, 0.7, 'High growth region', 'Hybrid Model');


-- Activities within the customer loyalty program
CREATE TABLE customer_loyalty_activity (
    ActivityID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    LoyaltyProgramID INTEGER,
    ActivityDate TEXT,
    TransactionID INTEGER,
    PointsEarned INTEGER,
    PointsRedeemed INTEGER,
    TierLevel TEXT,
    CampaignID INTEGER,
    Channel TEXT,
    DeviceType TEXT,
    Geolocation TEXT,
    PromotionCode TEXT,
    RewardType TEXT,
    RewardValue REAL,
    Status TEXT,
    ExpirationDate TEXT,
    ReferralID INTEGER,
    FeedbackScore INTEGER,
    Comments TEXT
);

INSERT INTO customer_loyalty_activity VALUES (3001, 1001, 1, '2023-07-10', 50001, 120, 0, 'Gold', 2001, 'MobileApp', 'iOS', '40.7128,-74.0060', 'SUMMER21', 'Discount', 5.0, 'Active', '2024-07-10', NULL, 9, 'First purchase of the season');
INSERT INTO customer_loyalty_activity VALUES (3002, 1002, 2, '2023-07-12', 50002, 80, 20, 'Silver', 2002, 'Web', 'Chrome', '34.0522,-118.2437', 'WELCOME', 'Cashback', 3.0, 'Redeemed', '2024-01-12', 1003, 8, 'Used promo code');
INSERT INTO customer_loyalty_activity VALUES (3003, 1003, 1, '2023-07-15', 50003, 150, 0, 'Platinum', 2003, 'InStore', 'POS', '41.8781,-87.6298', 'NONE', 'FreeItem', 0.0, 'Pending', '2024-07-15', NULL, 10, 'High spender';


-- Metrics evaluating supplier performance
CREATE TABLE supplier_performance_metrics (
    MetricID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    EvaluationPeriodStart TEXT,
    EvaluationPeriodEnd TEXT,
    OnTimeDeliveryPct REAL,
    QualityDefectRate REAL,
    ComplianceScore REAL,
    SustainabilityScore REAL,
    CostVariancePct REAL,
    LeadTimeDays REAL,
    ContractRenewalLikelihood REAL,
    RiskLevel TEXT,
    CommunicationScore REAL,
    InnovationScore REAL,
    CapacityUtilizationPct REAL,
    InsuranceCoveragePct REAL,
    AuditedBy INTEGER,
    AuditDate TEXT,
    Remarks TEXT,
    OverallRating REAL
);

INSERT INTO supplier_performance_metrics VALUES (4001, 501, '2023-01-01', '2023-06-30', 96.5, 0.8, 88.0, 75.0, 2.1, 12.0, 0.85, 'Medium', 80.0, 70.0, 90.0, 95.0, 6001, '2023-07-01', 'Stable performance', 84.5);
INSERT INTO supplier_performance_metrics VALUES (4002, 502, '2023-01-01', '2023-06-30', 89.0, 1.5, 72.0, 60.0, 4.5, 15.0, 0.60, 'High', 70.0, 65.0, 80.0, 90.0, 6002, '2023-07-02', 'Needs improvement in quality', 68.3);
INSERT INTO supplier_performance_metrics VALUES (4003, 503, '2023-01-01', '2023-06-30', 98.0, 0.3, 92.0, 80.0, 1.0, 10.0, 0.95, 'Low', 85.0, 78.0, 95.0, 98.0, 6003, '2023-07-03', 'Excellent supplier', 89.7);


-- Records of energy grid outage events
CREATE TABLE energy_grid_outage_events (
    OutageID INTEGER PRIMARY KEY,
    GridNodeID INTEGER,
    StartDateTime TEXT,
    EndDateTime TEXT,
    AffectedCustomers INTEGER,
    DurationMinutes INTEGER,
    CauseCategory TEXT,
    CauseDescription TEXT,
    RestorationTime TEXT,
    CrewID INTEGER,
    WeatherImpactScore REAL,
    EquipmentFailed TEXT,
    BackupPowerUsed INTEGER,
    NotificationSent INTEGER,
    EstimatedCost REAL,
    RegulatoryPenalty REAL,
    PostEventReviewID INTEGER,
    MitigationPlanID INTEGER,
    Status TEXT,
    Comments TEXT
);

INSERT INTO energy_grid_outage_events VALUES (5001, 9001, '2023-06-15T08:30:00', '2023-06-15T10:45:00', 1200, 135, 'Weather', 'Severe storm', '2023-06-15T10:45:00', 8001, 8.5, 'Transformer', 1, 1, 25000.0, 5000.0, 3001, 4001, 'Closed', 'Restored after crew on site');
INSERT INTO energy_grid_outage_events VALUES (5002, 9002, '2023-07-01T14:00:00', '2023-07-01T14:30:00', 300, 30, 'Equipment', 'Breaker failure', '2023-07-01T14:30:00', 8002, 2.0, 'Breaker', 0, 1, 8000.0, 0.0, 3002, 4002, 'Closed', 'Quick fix by maintenance team');
INSERT INTO energy_grid_outage_events VALUES (5003, 9003, '2023-07-10T22:15:00', '2023-07-11T01:45:00', 2500, 210, 'Human Error', 'Unauthorized switching', '2023-07-11T01:45:00', 8003, 5.0, 'Switchgear', 1, 1, 40000.0, 10000.0, 3003, 4003, 'Closed', 'Investigation completed');


-- Inventory of digital ad placements
CREATE TABLE digital_ad_placement_inventory (
    PlacementID INTEGER PRIMARY KEY,
    MediaChannel TEXT,
    PlacementDate TEXT,
    SlotStartTime TEXT,
    SlotEndTime TEXT,
    AdFormat TEXT,
    DurationSeconds INTEGER,
    TargetAudience TEXT,
    CPM REAL,
    CPC REAL,
    ImpressionsBooked INTEGER,
    ClicksBooked INTEGER,
    RevenueForecast REAL,
    AdvertiserID INTEGER,
    CampaignID INTEGER,
    CreativeID INTEGER,
    GeoTarget TEXT,
    DeviceTarget TEXT,
    FrequencyCap INTEGER,
    Status TEXT,
    Notes TEXT
);

INSERT INTO digital_ad_placement_inventory VALUES (6001, 'Social', '2023-07-20', '08:00:00', '08:00:30', 'Video', 30, '18-35', 12.5, 0.45, 50000, 250, 6250.0, 7001, 8001, 9001, 'US', 'Mobile', 3, 'Confirmed', 'Prime time slot');
INSERT INTO digital_ad_placement_inventory VALUES (6002, 'Display', '2023-07-21', '12:00:00', '12:00:15', 'Banner', 15, '25-45', 8.0, 0.30, 75000, 300, 6000.0, 7002, 8002, 9002, 'EU', 'Desktop', 5, 'Pending', 'Pending creative approval');
INSERT INTO digital_ad_placement_inventory VALUES (6003, 'Streaming', '2023-07-22', '19:00:00', '19:00:45', 'PreRoll', 45, 'All', 15.0, 0.60, 40000, 200, 6000.0, 7003, 8003, 9003, 'APAC', 'SmartTV', 2, 'Confirmed', 'Limited inventory';


-- Catalog of maintenance parts
CREATE TABLE maintenance_parts_catalog (
    PartID INTEGER PRIMARY KEY,
    PartName TEXT,
    Manufacturer TEXT,
    Category TEXT,
    SubCategory TEXT,
    CompatibilityRange TEXT,
    UnitCost REAL,
    StockQuantity INTEGER,
    ReorderLevel INTEGER,
    LeadTimeDays INTEGER,
    WarrantyMonths INTEGER,
    HazardousMaterialFlag INTEGER,
    ShelfLocation TEXT,
    SerialNumber TEXT,
    WeightKg REAL,
    DimensionsCm TEXT,
    SupplierID INTEGER,
    LastOrderedDate TEXT,
    DiscontinuedFlag INTEGER,
    DocumentationURL TEXT
);

INSERT INTO maintenance_parts_catalog VALUES (7001, 'Hydraulic Pump', 'FluidTech', 'Hydraulics', 'Pump', 'V100-V200', 250.0, 15, 5, 14, 24, 0, 'A1', 'HP-2023-001', 12.5, '30x20x20', 5001, '2023-06-01', 0, 'http://docs.fluidtech.com/hp');
INSERT INTO maintenance_parts_catalog VALUES (7002, 'Brake Pad Set', 'AutoBrake', 'Brakes', 'Pads', 'B300-B400', 75.0, 40, 10, 7, 12, 0, 'B3', 'BP-2023-015', 5.0, '15x10x8', 5002, '2023-05-20', 0, 'http://docs.autobrake.com/bp');
INSERT INTO maintenance_parts_catalog VALUES (7003, 'Coolant Fluid', 'CoolFlow', 'Fluids', 'Coolant', 'All Models', 18.5, 200, 50, 3, 6, 1, 'C7', 'CF-2023-099', 1.2, '10x10x10', 5003, '2023-06-15', 0, 'http://docs.coolflow.com/cf');


-- Logs of fleet route optimization runs
CREATE TABLE fleet_route_optimization_logs (
    LogID INTEGER PRIMARY KEY,
    FleetID INTEGER,
    VehicleID INTEGER,
    RouteID INTEGER,
    OptimizationDate TEXT,
    OriginNodeID INTEGER,
    DestinationNodeID INTEGER,
    DistanceKm REAL,
    EstimatedTimeMin REAL,
    FuelSavingPct REAL,
    EmissionSavingKg REAL,
    AlgorithmVersion TEXT,
    ConstraintsApplied TEXT,
    TrafficDataSource TEXT,
    WeatherDataSource TEXT,
    DriverId INTEGER,
    AcceptanceFlag INTEGER,
    ExecutionStartTime TEXT,
    ExecutionEndTime TEXT,
    Notes TEXT,
    Status TEXT
);

INSERT INTO fleet_route_optimization_logs VALUES (8001, 1, 101, 3001, '2023-07-10', 1001, 2002, 120.5, 95.0, 8.5, 12.3, 'v2.1', 'Time,Load', 'Live', 'Forecast', 2001, 1, '2023-07-10T07:00:00', '2023-07-10T07:05:00', 'Optimized for fuel', 'Applied');
INSERT INTO fleet_route_optimization_logs VALUES (8002, 1, 102, 3002, '2023-07-11', 1003, 2005, 85.0, 70.0, 6.0, 9.0, 'v2.1', 'Time', 'Historical', 'Live', 2002, 0, '2023-07-11T08:00:00', '2023-07-11T08:03:00', 'Driver rejected suggestion', 'Rejected');
INSERT INTO fleet_route_optimization_logs VALUES (8003, 2, 103, 3003, '2023-07-12', 1005, 2008, 150.0, 120.0, 10.0, 15.5, 'v2.1', 'Time,Traffic', 'Live', 'Forecast', 2003, 1, '2023-07-12T09:00:00', '2023-07-12T09:06:00', 'High priority delivery', 'Applied');


-- Structure of public transport fares
CREATE TABLE public_transport_fare_structure (
    FareID INTEGER PRIMARY KEY,
    TransportMode TEXT,
    ZoneFrom TEXT,
    ZoneTo TEXT,
    FareType TEXT,
    PriceAdult REAL,
    PriceChild REAL,
    PriceSenior REAL,
    ValidFromDate TEXT,
    ValidToDate TEXT,
    DiscountEligibility TEXT,
    PassType TEXT,
    Currency TEXT,
    PaymentMethod TEXT,
    TimeRestriction TEXT,
    FrequencyCap INTEGER,
    SeasonalRateFlag INTEGER,
    PromotionalCode TEXT,
    RevenueSharePct REAL,
    AuditTimestamp TEXT,
    Comments TEXT
);

INSERT INTO public_transport_fare_structure VALUES (9001, 'Bus', 'A', 'D', 'Standard', 2.50, 1.25, 1.75, '2023-01-01', '2023-12-31', 'Student,Seniors', 'Monthly', 'USD', 'Card', 'None', 0, 0, 'SPRING23', 30.0, '2023-07-01T12:00:00', 'No comments');
INSERT INTO public_transport_fare_structure VALUES (9002, 'Metro', 'B', 'C', 'Peak', 3.00, 1.50, 2.10, '2023-01-01', '2023-12-31', 'None', 'Weekly', 'USD', 'Cash', 'PeakHours', 2, 0, 'NONE', 25.0, '2023-07-02T12:00:00', 'Peak fare during rush hour');
INSERT INTO public_transport_fare_structure VALUES (9003, 'Tram', 'C', 'E', 'OffPeak', 2.00, 1.00, 1.40, '2023-01-01', '2023-12-31', 'Student', 'Daily', 'USD', 'Mobile', 'OffPeakHours', 0, 1, 'SUMMER23', 28.0, '2023-07-03T12:00:00', 'Seasonal discount applied');