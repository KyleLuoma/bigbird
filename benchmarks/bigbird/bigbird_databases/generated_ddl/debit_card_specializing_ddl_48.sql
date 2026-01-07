-- Vehicle acquisition budgeting details
CREATE TABLE vehicle_acquisition_budget
(
    BudgetID INTEGER PRIMARY KEY,
    FiscalYear INTEGER,
    Department TEXT,
    VehicleType TEXT,
    Quantity INTEGER,
    UnitCost REAL,
    TotalCost REAL,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    FundingSource TEXT,
    Currency TEXT,
    ExchangeRate REAL,
    Comments TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Region TEXT,
    CostCenter TEXT,
    ProjectCode TEXT,
    VendorID INTEGER,
    LeaseTermMonths INTEGER,
    MaintenanceReserve REAL,
    DepreciationPeriodYears INTEGER
);

INSERT INTO vehicle_acquisition_budget (BudgetID, FiscalYear, Department, VehicleType, Quantity, UnitCost, TotalCost, ApprovedBy, ApprovalDate, FundingSource, Currency, ExchangeRate, Comments, CreatedAt, UpdatedAt, Region, CostCenter, ProjectCode, VendorID, LeaseTermMonths, MaintenanceReserve, DepreciationPeriodYears) VALUES (1, 2024, 'Logistics', 'Truck', 10, 50000.0, 500000.0, 'CFO', '2024-01-15', 'Capital', 'USD', 1.0, 'Initial purchase', '2024-01-01', '2024-01-01', 'North', 'CC1001', 'PRJ2024A', 2001, 60, 20000.0, 5);
INSERT INTO vehicle_acquisition_budget (BudgetID, FiscalYear, Department, VehicleType, Quantity, UnitCost, TotalCost, ApprovedBy, ApprovalDate, FundingSource, Currency, ExchangeRate, Comments, CreatedAt, UpdatedAt, Region, CostCenter, ProjectCode, VendorID, LeaseTermMonths, MaintenanceReserve, DepreciationPeriodYears) VALUES (2, 2024, 'Operations', 'Van', 5, 30000.0, 150000.0, 'COO', '2024-02-10', 'Operating', 'USD', 1.0, 'Mid‑year expansion', '2024-02-01', '2024-02-01', 'South', 'CC2002', 'PRJ2024B', 2002, 48, 12000.0, 3);
INSERT INTO vehicle_acquisition_budget (BudgetID, FiscalYear, Department, VehicleType, Quantity, UnitCost, TotalCost, ApprovedBy, ApprovalDate, FundingSource, Currency, ExchangeRate, Comments, CreatedAt, UpdatedAt, Region, CostCenter, ProjectCode, VendorID, LeaseTermMonths, MaintenanceReserve, DepreciationPeriodYears) VALUES (3, 2025, 'Maintenance', 'Truck', 3, 55000.0, 165000.0, 'CTO', '2025-01-20', 'Capital', 'USD', 1.0, 'Replacement fleet', '2025-01-01', '2025-01-01', 'East', 'CC3003', 'PRJ2025A', 2003, 72, 25000.0, 6);

-- Financial performance of gas stations
CREATE TABLE gas_station_financials
(
    FinancialID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    FiscalQuarter TEXT,
    Revenue REAL,
    NetProfit REAL,
    OperatingExpense REAL,
    CapitalExpenditure REAL,
    FuelSalesVolume REAL,
    ConvenienceStoreSales REAL,
    PayrollExpense REAL,
    UtilitiesExpense REAL,
    MaintenanceExpense REAL,
    TaxExpense REAL,
    Currency TEXT,
    ExchangeRate REAL,
    ReportDate DATE,
    CreatedBy TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Comments TEXT
);

INSERT INTO gas_station_financials (FinancialID, GasStationID, FiscalQuarter, Revenue, NetProfit, OperatingExpense, CapitalExpenditure, FuelSalesVolume, ConvenienceStoreSales, PayrollExpense, UtilitiesExpense, MaintenanceExpense, TaxExpense, Currency, ExchangeRate, ReportDate, CreatedBy, CreatedAt, UpdatedAt, Comments) VALUES (101, 1, 'Q1', 250000.0, 35000.0, 180000.0, 20000.0, 120000.0, 50000.0, 40000.0, 15000.0, 12000.0, 8000.0, 'USD', 1.0, '2024-03-31', 'FinanceMgr', '2024-04-01', '2024-04-01', 'Stable performance');
INSERT INTO gas_station_financials (FinancialID, GasStationID, FiscalQuarter, Revenue, NetProfit, OperatingExpense, CapitalExpenditure, FuelSalesVolume, ConvenienceStoreSales, PayrollExpense, UtilitiesExpense, MaintenanceExpense, TaxExpense, Currency, ExchangeRate, ReportDate, CreatedBy, CreatedAt, UpdatedAt, Comments) VALUES (102, 2, 'Q1', 190000.0, 15000.0, 140000.0, 15000.0, 95000.0, 30000.0, 35000.0, 12000.0, 9000.0, 6000.0, 'USD', 1.0, '2024-03-31', 'FinanceMgr', '2024-04-01', '2024-04-01', 'Lower fuel volume');
INSERT INTO gas_station_financials (FinancialID, GasStationID, FiscalQuarter, Revenue, NetProfit, OperatingExpense, CapitalExpenditure, FuelSalesVolume, ConvenienceStoreSales, PayrollExpense, UtilitiesExpense, MaintenanceExpense, TaxExpense, Currency, ExchangeRate, ReportDate, CreatedBy, CreatedAt, UpdatedAt, Comments) VALUES (103, 3, 'Q1', 300000.0, 50000.0, 220000.0, 25000.0, 160000.0, 70000.0, 45000.0, 18000.0, 15000.0, 10000.0, 'USD', 1.0, '2024-03-31', 'FinanceMgr', '2024-04-01', '2024-04-01', 'High store sales');

-- Campaigns aimed at customer engagement
CREATE TABLE customer_engagement_campaigns
(
    CampaignID INTEGER PRIMARY KEY,
    CampaignName TEXT,
    StartDate DATE,
    EndDate DATE,
    TargetSegment TEXT,
    Channel TEXT,
    Budget REAL,
    Spend REAL,
    Impressions INTEGER,
    Clicks INTEGER,
    Conversions INTEGER,
    RevenueGenerated REAL,
    CostPerAcquisition REAL,
    Currency TEXT,
    Status TEXT,
    CreatedBy TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT,
    GeoRegion TEXT
);

INSERT INTO customer_engagement_campaigns (CampaignID, CampaignName, StartDate, EndDate, TargetSegment, Channel, Budget, Spend, Impressions, Clicks, Conversions, RevenueGenerated, CostPerAcquisition, Currency, Status, CreatedBy, CreatedAt, UpdatedAt, Notes, GeoRegion) VALUES (201, 'SummerFuelPromo', '2024-06-01', '2024-08-31', 'Retail', 'Email', 50000.0, 47000.0, 1200000, 34000, 4200, 210000.0, 11.19, 'USD', 'Completed', 'MarketerA', '2024-05-15', '2024-09-01', 'Exceeded click targets', 'NorthAmerica');
INSERT INTO customer_engagement_campaigns (CampaignID, CampaignName, StartDate, EndDate, TargetSegment, Channel, Budget, Spend, Impressions, Clicks, Conversions, RevenueGenerated, CostPerAcquisition, Currency, Status, CreatedBy, CreatedAt, UpdatedAt, Notes, GeoRegion) VALUES (202, 'RoadTripRewards', '2024-09-15', '2024-11-30', 'Travel', 'SMS', 30000.0, 28500.0, 800000, 21000, 1700, 95000.0, 16.76, 'USD', 'Running', 'MarketerB', '2024-09-01', '2024-09-20', 'Strong early uptake', 'Europe');
INSERT INTO customer_engagement_campaigns (CampaignID, CampaignName, StartDate, EndDate, TargetSegment, Channel, Budget, Spend, Impressions, Clicks, Conversions, RevenueGenerated, CostPerAcquisition, Currency, Status, CreatedBy, CreatedAt, UpdatedAt, Notes, GeoRegion) VALUES (203, 'EcoDriveChallenge', '2024-01-10', '2024-03-31', 'EcoFriendly', 'AppPush', 40000.0, 39500.0, 950000, 26000, 3000, 180000.0, 13.17, 'USD', 'Completed', 'MarketerC', '2023-12-20', '2024-04-05', 'High participation', 'Asia');

-- Performance metrics for energy storage assets
CREATE TABLE energy_storage_performance
(
    RecordID INTEGER PRIMARY KEY,
    StorageUnitID INTEGER,
    Timestamp DATETIME,
    StateOfCharge REAL,
    Voltage REAL,
    Current REAL,
    Temperature REAL,
    PowerOutput REAL,
    PowerInput REAL,
    Efficiency REAL,
    CycleCount INTEGER,
    HealthIndex REAL,
    Manufacturer TEXT,
    ModelNumber TEXT,
    CapacityMWh REAL,
    Location TEXT,
    GridConnectionStatus TEXT,
    MaintenanceDueDate DATE,
    CreatedAt DATE,
    UpdatedAt DATE,
    Comments TEXT
);

INSERT INTO energy_storage_performance (RecordID, StorageUnitID, Timestamp, StateOfCharge, Voltage, Current, Temperature, PowerOutput, PowerInput, Efficiency, CycleCount, HealthIndex, Manufacturer, ModelNumber, CapacityMWh, Location, GridConnectionStatus, MaintenanceDueDate, CreatedAt, UpdatedAt, Comments) VALUES (301, 10, '2024-07-01 08:00:00', 85.2, 400.5, 150.0, 35.0, 5000.0, 5200.0, 96.2, 1200, 0.92, 'Siemens', 'S-500', 10.0, 'NorthHub', 'Connected', '2025-01-15', '2024-07-01', '2024-07-01', 'Normal operation');
INSERT INTO energy_storage_performance (RecordID, StorageUnitID, Timestamp, StateOfCharge, Voltage, Current, Temperature, PowerOutput, PowerInput, Efficiency, CycleCount, HealthIndex, Manufacturer, ModelNumber, CapacityMWh, Location, GridConnectionStatus, MaintenanceDueDate, CreatedAt, UpdatedAt, Comments) VALUES (302, 11, '2024-07-01 08:00:00', 60.5, 380.0, 130.0, 38.0, 3000.0, 3100.0, 96.8, 1350, 0.89, 'Tesla', 'T-300', 5.0, 'SouthHub', 'Connected', '2025-02-20', '2024-07-01', '2024-07-01', 'Slight temperature rise');
INSERT INTO energy_storage_performance (RecordID, StorageUnitID, Timestamp, StateOfCharge, Voltage, Current, Temperature, PowerOutput, PowerInput, Efficiency, CycleCount, HealthIndex, Manufacturer, ModelNumber, CapacityMWh, Location, GridConnectionStatus, MaintenanceDueDate, CreatedAt, UpdatedAt, Comments) VALUES (303, 12, '2024-07-01 08:00:00', 45.0, 360.0, 110.0, 32.0, 1500.0, 1550.0, 96.8, 900, 0.94, 'LG', 'LG-200', 3.0, 'EastHub', 'Disconnected', '2024-12-01', '2024-07-01', '2024-07-01', 'Preparing for reconnection');

-- Efficiency analysis for fleet routes
CREATE TABLE fleet_route_efficiency
(
    EfficiencyID INTEGER PRIMARY KEY,
    FleetID INTEGER,
    RouteID INTEGER,
    Date DATE,
    TotalDistance REAL,
    AvgSpeed REAL,
    FuelConsumed REAL,
    EmissionsKg REAL,
    OnTimePerformance REAL,
    TrafficDelayMinutes INTEGER,
    StopsCount INTEGER,
    AvgLoadFactor REAL,
    DriverID INTEGER,
    VehicleID INTEGER,
    WeatherImpactScore REAL,
    RoadQualityScore REAL,
    EfficiencyScore REAL,
    CreatedBy TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Remarks TEXT,
    Region TEXT
);

INSERT INTO fleet_route_efficiency (EfficiencyID, FleetID, RouteID, Date, TotalDistance, AvgSpeed, FuelConsumed, EmissionsKg, OnTimePerformance, TrafficDelayMinutes, StopsCount, AvgLoadFactor, DriverID, VehicleID, WeatherImpactScore, RoadQualityScore, EfficiencyScore, CreatedBy, CreatedAt, UpdatedAt, Remarks, Region) VALUES (401, 1, 101, '2024-06-15', 350.0, 55.2, 45.0, 120.5, 98.5, 12, 5, 0.85, 3001, 5001, 0.3, 0.9, 0.92, 'AnalystA', '2024-06-16', '2024-06-16', 'Good performance', 'North');
INSERT INTO fleet_route_efficiency (EfficiencyID, FleetID, RouteID, Date, TotalDistance, AvgSpeed, FuelConsumed, EmissionsKg, OnTimePerformance, TrafficDelayMinutes, StopsCount, AvgLoadFactor, DriverID, VehicleID, WeatherImpactScore, RoadQualityScore, EfficiencyScore, CreatedBy, CreatedAt, UpdatedAt, Remarks, Region) VALUES (402, 2, 202, '2024-06-16', 420.0, 48.5, 55.0, 150.0, 94.0, 25, 7, 0.78, 3002, 5002, 0.6, 0.8, 0.85, 'AnalystB', '2024-06-17', '2024-06-17', 'Weather affected', 'South');
INSERT INTO fleet_route_efficiency (EfficiencyID, FleetID, RouteID, Date, TotalDistance, AvgSpeed, FuelConsumed, EmissionsKg, OnTimePerformance, TrafficDelayMinutes, StopsCount, AvgLoadFactor, DriverID, VehicleID, WeatherImpactScore, RoadQualityScore, EfficiencyScore, CreatedBy, CreatedAt, UpdatedAt, Remarks, Region) VALUES (403, 3, 303, '2024-06-17', 280.0, 60.0, 38.0, 100.0, 99.0, 5, 4, 0.90, 3003, 5003, 0.1, 0.95, 0.96, 'AnalystC', '2024-06-18', '2024-06-18', 'Excellent', 'East');

-- Records of operator certifications
CREATE TABLE operator_certification_records
(
    CertID INTEGER PRIMARY KEY,
    OperatorID INTEGER,
    CertificationName TEXT,
    Issuer TEXT,
    IssueDate DATE,
    ExpiryDate DATE,
    CertificationLevel TEXT,
    Status TEXT,
    CreditsEarned INTEGER,
    RenewalRequired BOOLEAN,
    RenewalNoticeSent DATE,
    DocumentReference TEXT,
    Comments TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    CreatedBy TEXT,
    Department TEXT,
    Region TEXT,
    LicenseNumber TEXT,
    ValidatedBy TEXT
);

INSERT INTO operator_certification_records (CertID, OperatorID, CertificationName, Issuer, IssueDate, ExpiryDate, CertificationLevel, Status, CreditsEarned, RenewalRequired, RenewalNoticeSent, DocumentReference, Comments, CreatedAt, UpdatedAt, CreatedBy, Department, Region, LicenseNumber, ValidatedBy) VALUES (501, 1001, 'HeavyVehicleOps', 'NationalSafetyBoard', '2022-03-01', '2025-03-01', 'Level3', 'Active', 30, 1, '2024-12-01', 'DOC1001', 'No issues', '2022-03-01', '2024-01-10', 'HRAdmin', 'Operations', 'North', 'LIC1001', 'SupervisorA');
INSERT INTO operator_certification_records (CertID, OperatorID, CertificationName, Issuer, IssueDate, ExpiryDate, CertificationLevel, Status, CreditsEarned, RenewalRequired, RenewalNoticeSent, DocumentReference, Comments, CreatedAt, UpdatedAt, CreatedBy, Department, Region, LicenseNumber, ValidatedBy) VALUES (502, 1002, 'FuelHandling', 'IndustryStandardOrg', '2021-07-15', '2024-07-15', 'Level2', 'Expired', 20, 1, '2024-06-01', 'DOC1002', 'Renewal pending', '2021-07-15', '2024-06-02', 'HRAdmin', 'Logistics', 'South', 'LIC1002', 'SupervisorB');
INSERT INTO operator_certification_records (CertID, OperatorID, CertificationName, Issuer, IssueDate, ExpiryDate, CertificationLevel, Status, CreditsEarned, RenewalRequired, RenewalNoticeSent, DocumentReference, Comments, CreatedAt, UpdatedAt, CreatedBy, Department, Region, LicenseNumber, ValidatedBy) VALUES (503, 1003, 'SafetyCompliance', 'GlobalSafetyAgency', '2020-11-20', '2023-11-20', 'Level1', 'Revoked', 15, 0, NULL, 'DOC1003', 'Revoked due to violation', '2020-11-20', '2023-11-21', 'HRAdmin', 'Maintenance', 'East', 'LIC1003', 'SupervisorC');

-- Audits of fuel station inventories
CREATE TABLE fuel_station_inventory_audit
(
    AuditID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    AuditDate DATE,
    AuditorName TEXT,
    FuelType TEXT,
    BeginningInventoryLiters REAL,
    EndingInventoryLiters REAL,
    DeliveredLiters REAL,
    SoldLiters REAL,
    DiscrepancyLiters REAL,
    DiscrepancyPercent REAL,
    TheftFlag BOOLEAN,
    LeakFlag BOOLEAN,
    MaintenanceFlag BOOLEAN,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Currency TEXT,
    ExchangeRate REAL,
    Location TEXT,
    Region TEXT,
    AuditStatus TEXT
);

INSERT INTO fuel_station_inventory_audit (AuditID, GasStationID, AuditDate, AuditorName, FuelType, BeginningInventoryLiters, EndingInventoryLiters, DeliveredLiters, SoldLiters, DiscrepancyLiters, DiscrepancyPercent, TheftFlag, LeakFlag, MaintenanceFlag, Notes, CreatedAt, UpdatedAt, Currency, ExchangeRate, Location, Region, AuditStatus) VALUES (601, 1, '2024-05-15', 'AuditorA', 'Diesel', 50000.0, 42000.0, 20000.0, 28000.0, 0.0, 0.0, 0, 0, 0, 'All good', '2024-05-15', '2024-05-15', 'USD', 1.0, 'NorthCity', 'North', 'Closed');
INSERT INTO fuel_station_inventory_audit (AuditID, GasStationID, AuditDate, AuditorName, FuelType, BeginningInventoryLiters, EndingInventoryLiters, DeliveredLiters, SoldLiters, DiscrepancyLiters, DiscrepancyPercent, TheftFlag, LeakFlag, MaintenanceFlag, Notes, CreatedAt, UpdatedAt, Currency, ExchangeRate, Location, Region, AuditStatus) VALUES (602, 2, '2024-05-20', 'AuditorB', 'Gasoline', 60000.0, 51000.0, 25000.0, 34000.0, -500.0, -0.83, 1, 0, 0, 'Minor theft detected', '2024-05-20', '2024-05-21', 'USD', 1.0, 'SouthTown', 'South', 'Closed');
INSERT INTO fuel_station_inventory_audit (AuditID, GasStationID, AuditDate, AuditorName, FuelType, BeginningInventoryLiters, EndingInventoryLiters, DeliveredLiters, SoldLiters, DiscrepancyLiters, DiscrepancyPercent, TheftFlag, LeakFlag, MaintenanceFlag, Notes, CreatedAt, UpdatedAt, Currency, ExchangeRate, Location, Region, AuditStatus) VALUES (603, 3, '2024-05-25', 'AuditorC', 'E85', 30000.0, 25000.0, 15000.0, 19000.0, -5000.0, -16.67, 0, 1, 0, 'Leak reported', '2024-05-25', '2024-05-26', 'USD', 1.0, 'EastVille', 'East', 'Open');

-- Summarized telemetry per vehicle
CREATE TABLE vehicle_telemetry_summary
(
    SummaryID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    Date DATE,
    AvgSpeed REAL,
    MaxSpeed REAL,
    TotalDistance REAL,
    FuelEfficiency REAL,
    EngineHours REAL,
    IdleTimeMinutes INTEGER,
    HarshBrakingCount INTEGER,
    HarshAccelerationCount INTEGER,
    AvgRPM REAL,
    MaxRPM INTEGER,
    AvgCoolantTemp REAL,
    TirePressureAvg REAL,
    GPSLatitude REAL,
    GPSLongitude REAL,
    DriverID INTEGER,
    CreatedAt DATE,
    UpdatedAt DATE,
    Remarks TEXT
);

INSERT INTO vehicle_telemetry_summary (SummaryID, VehicleID, Date, AvgSpeed, MaxSpeed, TotalDistance, FuelEfficiency, EngineHours, IdleTimeMinutes, HarshBrakingCount, HarshAccelerationCount, AvgRPM, MaxRPM, AvgCoolantTemp, TirePressureAvg, GPSLatitude, GPSLongitude, DriverID, CreatedAt, UpdatedAt, Remarks) VALUES (701, 5001, '2024-06-30', 45.2, 78.0, 520.0, 8.5, 120.0, 30, 5, 7, 1800.0, 3200, 90.0, 32.5, 40.7128, -74.0060, 3001, '2024-07-01', '2024-07-01', 'Normal operation');
INSERT INTO vehicle_telemetry_summary (SummaryID, VehicleID, Date, AvgSpeed, MaxSpeed, TotalDistance, FuelEfficiency, EngineHours, IdleTimeMinutes, HarshBrakingCount, HarshAccelerationCount, AvgRPM, MaxRPM, AvgCoolantTemp, TirePressureAvg, GPSLatitude, GPSLongitude, DriverID, CreatedAt, UpdatedAt, Remarks) VALUES (702, 5002, '2024-06-30', 38.0, 65.0, 480.0, 9.2, 115.0, 45, 8, 10, 1700.0, 3100, 95.0, 31.8, 34.0522, -118.2437, 3002, '2024-07-01', '2024-07-01', 'Higher idle time');
INSERT INTO vehicle_telemetry_summary (SummaryID, VehicleID, Date, AvgSpeed, MaxSpeed, TotalDistance, FuelEfficiency, EngineHours, IdleTimeMinutes, HarshBrakingCount, HarshAccelerationCount, AvgRPM, MaxRPM, AvgCoolantTemp, TirePressureAvg, GPSLatitude, GPSLongitude, DriverID, CreatedAt, UpdatedAt, Remarks) VALUES (703, 5003, '2024-06-30', 50.5, 85.0, 560.0, 7.8, 130.0, 20, 3, 4, 1900.0, 3400, 88.0, 33.2, 41.8781, -87.6298, 3003, '2024-07-01', '2024-07-01', 'Efficient route');

-- Metrics for payment processing
CREATE TABLE payment_processing_metrics
(
    MetricID INTEGER PRIMARY KEY,
    CardID INTEGER,
    TransactionCount INTEGER,
    TotalVolume REAL,
    SuccessRate REAL,
    AvgProcessingTimeMs REAL,
    DeclineRate REAL,
    FraudRate REAL,
    ChargebackCount INTEGER,
    AvgChargebackAmount REAL,
    Currency TEXT,
    SettlementDate DATE,
    Processor TEXT,
    FeePercent REAL,
    FeeFixed REAL,
    CreatedAt DATE,
    UpdatedAt DATE,
    CreatedBy TEXT,
    Notes TEXT,
    Region TEXT
);

INSERT INTO payment_processing_metrics (MetricID, CardID, TransactionCount, TotalVolume, SuccessRate, AvgProcessingTimeMs, DeclineRate, FraudRate, ChargebackCount, AvgChargebackAmount, Currency, SettlementDate, Processor, FeePercent, FeeFixed, CreatedAt, UpdatedAt, CreatedBy, Notes, Region) VALUES (801, 9001, 1200, 250000.0, 0.985, 350.0, 0.012, 0.001, 2, 500.0, 'USD', '2024-06-30', 'Visa', 0.015, 0.10, '2024-07-01', '2024-07-01', 'OpsTeam', 'Stable', 'North');
INSERT INTO payment_processing_metrics (MetricID, CardID, TransactionCount, TotalVolume, SuccessRate, AvgProcessingTimeMs, DeclineRate, FraudRate, ChargebackCount, AvgChargebackAmount, Currency, SettlementDate, Processor, FeePercent, FeeFixed, CreatedAt, UpdatedAt, CreatedBy, Notes, Region) VALUES (802, 9002, 950, 180000.0, 0.978, 420.0, 0.018, 0.002, 5, 750.0, 'USD', '2024-06-30', 'MasterCard', 0.017, 0.12, '2024-07-01', '2024-07-01', 'OpsTeam', 'Higher decline', 'South');
INSERT INTO payment_processing_metrics (MetricID, CardID, TransactionCount, TotalVolume, SuccessRate, AvgProcessingTimeMs, DeclineRate, FraudRate, ChargebackCount, AvgChargebackAmount, Currency, SettlementDate, Processor, FeePercent, FeeFixed, CreatedAt, UpdatedAt, CreatedBy, Notes, Region) VALUES (803, 9003, 1100, 210000.0, 0.982, 380.0, 0.015, 0.0015, 3, 650.0, 'USD', '2024-06-30', 'Amex', 0.016, 0.11, '2024-07-01', '2024-07-01', 'OpsTeam', 'Normal', 'East');

-- Scheduled maintenance for stations
CREATE TABLE station_maintenance_schedule
(
    ScheduleID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    MaintenanceType TEXT,
    ScheduledDate DATE,
    ExpectedDurationHours REAL,
    ContractorID INTEGER,
    PriorityLevel TEXT,
    EstimatedCost REAL,
    Currency TEXT,
    ApprovalStatus TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    CreatedBy TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT,
    EquipmentNeeded TEXT,
    SafetyProtocol TEXT,
    ContactPhone TEXT,
    Region TEXT,
    Status TEXT,
    CompletionDate DATE
);

INSERT INTO station_maintenance_schedule (ScheduleID, GasStationID, MaintenanceType, ScheduledDate, ExpectedDurationHours, ContractorID, PriorityLevel, EstimatedCost, Currency, ApprovalStatus, ApprovedBy, ApprovalDate, CreatedBy, CreatedAt, UpdatedAt, Notes, EquipmentNeeded, SafetyProtocol, ContactPhone, Region, Status, CompletionDate) VALUES (901, 1, 'FuelDispenserCalibration', '2024-08-01', 4.0, 4001, 'High', 1500.0, 'USD', 'Pending', 'ManagerA', '2024-07-20', 'PlannerA', '2024-07-20', '2024-07-20', 'Calibration before peak season', 'CalibratorKit', 'LockoutTagout', '5551230001', 'North', 'Scheduled', NULL);
INSERT INTO station_maintenance_schedule (ScheduleID, GasStationID, MaintenanceType, ScheduledDate, ExpectedDurationHours, ContractorID, PriorityLevel, EstimatedCost, Currency, ApprovalStatus, ApprovedBy, ApprovalDate, CreatedBy, CreatedAt, UpdatedAt, Notes, EquipmentNeeded, SafetyProtocol, ContactPhone, Region, Status, CompletionDate) VALUES (902, 2, 'CanopyRepair', '2024-09-15', 8.0, 4002, 'Medium', 2500.0, 'USD', 'Approved', 'ManagerB', '2024-09-01', 'PlannerB', '2024-09-01', '2024-09-01', 'Weather damage repair', 'Ladder, Tools', 'PPERequired', '5551230002', 'South', 'Completed', '2024-09-16');
INSERT INTO station_maintenance_schedule (ScheduleID, GasStationID, MaintenanceType, ScheduledDate, ExpectedDurationHours, ContractorID, PriorityLevel, EstimatedCost, Currency, ApprovalStatus, ApprovedBy, ApprovalDate, CreatedBy, CreatedAt, UpdatedAt, Notes, EquipmentNeeded, SafetyProtocol, ContactPhone, Region, Status, CompletionDate) VALUES (903, 3, 'SecuritySystemUpgrade', '2024-10-05', 6.0, 4003, 'Low', 3200.0, 'USD', 'Pending', 'ManagerC', '2024-09-25', 'PlannerC', '2024-09-25', '2024-09-25', 'Install new CCTV', 'CCTVKit', 'NoLockout', '5551230003', 'East', 'Scheduled', NULL);