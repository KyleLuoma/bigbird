-- Table describing scheduled maintenance tasks for fuel stations
CREATE TABLE fuel_station_maintenance_tasks
(
    TaskID INTEGER PRIMARY KEY,
    StationID INTEGER,
    ScheduledDate DATE,
    TechnicianID INTEGER,
    TaskType TEXT,
    DurationMinutes INTEGER,
    Cost REAL,
    PartsUsed TEXT,
    SafetyCheckPassed INTEGER,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Priority TEXT,
    EstimatedLaborHours REAL,
    ActualLaborHours REAL,
    EquipmentRequired TEXT,
    VendorID INTEGER,
    WarrantyApplied INTEGER,
    InspectionScore REAL,
    FollowUpRequired INTEGER
);

INSERT INTO fuel_station_maintenance_tasks VALUES (1, 101, '2024-02-15', 2001, 'FilterChange', 90, 150.75, 'FilterA', 1, 'Routine', '2024-01-01 08:00:00', '2024-01-02 09:30:00', 'High', 1.5, 1.6, 'WrenchSet', 3001, 0, 98.5, 0);
INSERT INTO fuel_station_maintenance_tasks VALUES (2, 102, '2024-03-01', 2002, 'PumpInspection', 120, 300.00, 'SealB', 1, 'Quarterly', '2024-01-05 10:15:00', '2024-01-06 11:45:00', 'Medium', 2.0, 2.1, 'InspectionKit', 3002, 1, 95.0, 1);
INSERT INTO fuel_station_maintenance_tasks VALUES (3, 103, '2024-04-10', 2003, 'ElectricalCheck', 180, 500.25, 'CableC', 0, 'FollowUp needed', '2024-01-10 12:00:00', '2024-01-11 13:30:00', 'Low', 3.0, 3.2, 'Multimeter', 3003, 0, 88.0, 1);

-- Table capturing driver performance metrics
CREATE TABLE driver_performance_metrics
(
    MetricID INTEGER PRIMARY KEY,
    DriverID INTEGER,
    PeriodStart DATE,
    PeriodEnd DATE,
    AvgSpeed REAL,
    MaxSpeed REAL,
    IdleTimeMinutes INTEGER,
    HarshBrakesCount INTEGER,
    HarshAccelerationsCount INTEGER,
    DistanceKm REAL,
    FuelEfficiencyLPer100km REAL,
    SafetyScore REAL,
    ComplianceScore REAL,
    OnTimeDeliveryRate REAL,
    IncidentCount INTEGER,
    TrainingCompleted INTEGER,
    HoursDriven REAL,
    RouteDeviationCount INTEGER,
    AvgLoadKg REAL,
    ScoreTimestamp DATETIME
);

INSERT INTO driver_performance_metrics VALUES (1, 5001, '2024-01-01', '2024-01-31', 65.2, 112.0, 45, 3, 5, 1400.5, 7.8, 92.5, 89.0, 0.96, 0, 1, 180.0, 2, 750.0, '2024-02-01 08:00:00');
INSERT INTO driver_performance_metrics VALUES (2, 5002, '2024-01-01', '2024-01-31', 60.0, 105.5, 60, 4, 6, 1350.0, 8.1, 88.0, 85.5, 0.92, 1, 1, 170.0, 3, 720.0, '2024-02-01 09:00:00');
INSERT INTO driver_performance_metrics VALUES (3, 5003, '2024-01-01', '2024-01-31', 68.5, 115.0, 30, 2, 4, 1500.2, 7.5, 95.0, 91.0, 0.98, 0, 1, 190.0, 1, 800.0, '2024-02-01 10:00:00');

-- Table storing detailed vehicle lease agreement information
CREATE TABLE vehicle_lease_agreement_details
(
    LeaseID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    LesseeCompanyID INTEGER,
    LeaseStartDate DATE,
    LeaseEndDate DATE,
    MonthlyPayment REAL,
    MileageCap INTEGER,
    OverageFeePerMile REAL,
    MaintenanceIncluded INTEGER,
    InsuranceProvider TEXT,
    InsurancePolicyNumber TEXT,
    LeaseTermMonths INTEGER,
    ResidualValue REAL,
    PurchaseOptionPrice REAL,
    EarlyTerminationFee REAL,
    SecurityDeposit REAL,
    LeaseStatus TEXT,
    AssignedDriverID INTEGER,
    LeaseCreatedAt DATETIME,
    LeaseUpdatedAt DATETIME
);

INSERT INTO vehicle_lease_agreement_details VALUES (1, 8001, 4001, '2023-06-01', '2026-05-31', 850.00, 30000, 0.20, 1, 'InsureCo', 'POL12345', 36, 15000.00, 20000.00, 5000.00, 2000.00, 'Active', 5001, '2023-05-15 08:30:00', '2023-05-20 09:45:00');
INSERT INTO vehicle_lease_agreement_details VALUES (2, 8002, 4002, '2024-01-01', '2027-12-31', 920.00, 35000, 0.25, 0, 'SafeGuard', 'POL67890', 48, 18000.00, 25000.00, 6000.00, 2500.00, 'Pending', 5002, '2023-12-10 10:15:00', '2023-12-12 11:00:00');
INSERT INTO vehicle_lease_agreement_details VALUES (3, 8003, 4003, '2022-09-15', '2025-09-14', 780.00, 28000, 0.15, 1, 'CoverAll', 'POL24680', 36, 14000.00, 19000.00, 4500.00, 1800.00, 'Terminated', 5003, '2022-08-20 07:45:00', '2025-09-15 12:30:00');

-- Table containing financial summary for corporate branches
CREATE TABLE corporate_branch_financials
(
    BranchID INTEGER PRIMARY KEY,
    BranchName TEXT,
    FiscalYear INTEGER,
    Revenue REAL,
    OperatingExpense REAL,
    NetProfit REAL,
    AssetValue REAL,
    LiabilityValue REAL,
    CashOnHand REAL,
    CapitalExpenditure REAL,
    EmployeeCount INTEGER,
    AvgSalary REAL,
    TaxPaid REAL,
    DividendPaid REAL,
    ProfitMargin REAL,
    ReturnOnAssets REAL,
    ReturnOnEquity REAL,
    AuditStatus TEXT,
    ReportGeneratedAt DATETIME,
    Notes TEXT
);

INSERT INTO corporate_branch_financials VALUES (1, 'NorthRegion', 2023, 12500000.00, 8200000.00, 4300000.00, 25000000.00, 12000000.00, 500000.00, 2000000.00, 320, 55000.00, 800000.00, 500000.00, 0.344, 0.172, 0.197, 'Clean', '2024-01-10 08:00:00', 'Steady growth');
INSERT INTO corporate_branch_financials VALUES (2, 'SouthRegion', 2023, 9800000.00, 7100000.00, 2700000.00, 21000000.00, 9500000.00, 450000.00, 1800000.00, 280, 48000.00, 600000.00, 300000.00, 0.276, 0.129, 0.158, 'Clean', '2024-01-12 09:30:00', 'Margin improvement');
INSERT INTO corporate_branch_financials VALUES (3, 'EastRegion', 2023, 11300000.00, 7900000.00, 3400000.00, 23000000.00, 11000000.00, 470000.00, 1900000.00, 300, 52000.00, 750000.00, 400000.00, 0.301, 0.148, 0.174, 'Pending', '2024-01-15 10:45:00', 'Audit scheduled');

-- Table logging environmental monitoring station readings
CREATE TABLE environmental_monitoring_station_readings
(
    ReadingID INTEGER PRIMARY KEY,
    StationID INTEGER,
    RecordedAt DATETIME,
    TemperatureC REAL,
    HumidityPercent REAL,
    PM25MicrogramsPerCubicMeter REAL,
    PM10MicrogramsPerCubicMeter REAL,
    NO2PPB REAL,
    O3PPB REAL,
    COppm REAL,
    SO2PPB REAL,
    WindSpeedMps REAL,
    WindDirectionDegrees INTEGER,
    RainfallMm REAL,
    SolarRadiationWm2 REAL,
    BatteryVoltage REAL,
    SignalStrengthDbm INTEGER,
    MaintenanceFlag INTEGER,
    AnalystNotes TEXT,
    DataQualityScore REAL
);

INSERT INTO environmental_monitoring_station_readings VALUES (1, 9001, '2024-01-31 08:00:00', 22.5, 55.0, 12.3, 25.6, 30.0, 45.2, 0.8, 5.0, 3.2, 180, 0.0, 250.5, 12.6, -70, 0, 'Normal day', 0.98);
INSERT INTO environmental_monitoring_station_readings VALUES (2, 9002, '2024-01-31 08:15:00', 21.8, 58.2, 14.1, 27.0, 28.5, 42.0, 0.7, 4.8, 2.9, 190, 0.2, 245.0, 12.4, -68, 0, 'Slight breeze', 0.96);
INSERT INTO environmental_monitoring_station_readings VALUES (3, 9003, '2024-01-31 08:30:00', 23.0, 53.5, 10.8, 22.5, 32.0, 48.5, 0.9, 5.2, 3.5, 170, 0.0, 255.3, 12.7, -71, 1, 'Sensor calibrate', 0.92);

-- Table describing allocation of marketing campaign budget across channels
CREATE TABLE marketing_campaign_channel_allocations
(
    AllocationID INTEGER PRIMARY KEY,
    CampaignID INTEGER,
    ChannelName TEXT,
    BudgetAllocated REAL,
    Impressions INTEGER,
    Clicks INTEGER,
    Conversions INTEGER,
    CostPerClick REAL,
    CostPerConversion REAL,
    Reach INTEGER,
    Frequency REAL,
    StartDate DATE,
    EndDate DATE,
    CreativeVersion TEXT,
    TargetAudience TEXT,
    GeoTarget TEXT,
    DeviceTarget TEXT,
    BidStrategy TEXT,
    Status TEXT,
    ApprovedBy TEXT,
    CreatedAt DATETIME
);

INSERT INTO marketing_campaign_channel_allocations VALUES (1, 1001, 'SocialMedia', 50000.00, 2000000, 15000, 1200, 3.33, 41.67, 1500000, 1.33, '2024-01-01', '2024-03-31', 'V1', 'Adults30-45', 'NorthAmerica', 'Mobile', 'CPC', 'Active', 'MgrA', '2023-12-15 09:00:00');
INSERT INTO marketing_campaign_channel_allocations VALUES (2, 1001, 'SearchEngine', 75000.00, 3000000, 25000, 2100, 3.00, 35.71, 2500000, 1.20, '2024-01-01', '2024-03-31', 'V1', 'Adults30-45', 'NorthAmerica', 'Desktop', 'CPA', 'Active', 'MgrB', '2023-12-16 10:30:00');
INSERT INTO marketing_campaign_channel_allocations VALUES (3, 1001, 'Display', 25000.00, 5000000, 8000, 600, 3.125, 41.67, 4000000, 1.25, '2024-01-01', '2024-03-31', 'V1', 'Adults30-45', 'NorthAmerica', 'All', 'CPM', 'Active', 'MgrC', '2023-12-17 11:45:00');

-- Table tracking shipment details in the supply chain
CREATE TABLE supply_chain_shipment_tracking
(
    ShipmentID INTEGER PRIMARY KEY,
    OrderID INTEGER,
    OriginWarehouseID INTEGER,
    DestinationStoreID INTEGER,
    CarrierID INTEGER,
    DispatchDate DATE,
    EstimatedArrivalDate DATE,
    ActualArrivalDate DATE,
    ShipmentWeightKg REAL,
    VolumeCubicMeters REAL,
    PalletCount INTEGER,
    ContainerNumber TEXT,
    SealNumber TEXT,
    HazardousMaterialFlag INTEGER,
    TemperatureControlledFlag INTEGER,
    ShipmentStatus TEXT,
    LastCheckpointLocation TEXT,
    LastCheckpointTimestamp DATETIME,
    DelayReason TEXT,
    CostRealized REAL
);

INSERT INTO supply_chain_shipment_tracking VALUES (1, 2001, 3001, 4001, 5001, '2024-02-01', '2024-02-04', '2024-02-04', 1500.5, 12.3, 25, 'CONT12345', 'SEAL678', 0, 1, 'Delivered', 'Store4001', '2024-02-04 15:20:00', '', 1200.00);
INSERT INTO supply_chain_shipment_tracking VALUES (2, 2002, 3002, 4002, 5002, '2024-02-03', '2024-02-07', '2024-02-08', 2000.0, 16.0, 30, 'CONT54321', 'SEAL876', 1, 0, 'Delayed', 'Hub5002', '2024-02-08 10:45:00', 'Customs hold', 1500.00);
INSERT INTO supply_chain_shipment_tracking VALUES (3, 2003, 3003, 4003, 5003, '2024-02-05', '2024-02-09', NULL, 1800.2, 14.5, 28, 'CONT11223', 'SEAL334', 0, 0, 'InTransit', 'Hub5003', '2024-02-06 12:00:00', '', 1300.00);

-- Table defining smart city traffic signal configuration parameters
CREATE TABLE smart_city_traffic_signal_configurations
(
    ConfigID INTEGER PRIMARY KEY,
    IntersectionID INTEGER,
    SignalMode TEXT,
    CycleLengthSeconds INTEGER,
    GreenTimeNorthSouth INTEGER,
    GreenTimeEastWest INTEGER,
    YellowTime INTEGER,
    RedClearanceTime INTEGER,
    PedestrianWalkTime INTEGER,
    SensorEnabled INTEGER,
    AdaptiveControlEnabled INTEGER,
    MaxQueueLengthVehicles INTEGER,
    MinGreenTime INTEGER,
    MaxGreenTime INTEGER,
    CoordinationGroup TEXT,
    OffsetSeconds INTEGER,
    PriorityVehicleEnabled INTEGER,
    EmergencyPreemptEnabled INTEGER,
    LastUpdated DATETIME,
    Comments TEXT
);

INSERT INTO smart_city_traffic_signal_configurations VALUES (1, 6001, 'Fixed', 120, 45, 45, 5, 3, 7, 1, 0, 10, 15, 60, 'GroupA', 5, 0, 0, '2024-01-20 08:00:00', 'Standard timing');
INSERT INTO smart_city_traffic_signal_configurations VALUES (2, 6002, 'Adaptive', 110, 40, 40, 5, 3, 6, 1, 1, 8, 12, 55, 'GroupB', 3, 1, 1, '2024-01-22 09:30:00', 'Peak hour adaptation');
INSERT INTO smart_city_traffic_signal_configurations VALUES (3, 6003, 'SemiAdaptive', 115, 42, 42, 5, 3, 6, 1, 1, 9, 13, 57, 'GroupA', 4, 0, 1, '2024-01-25 10:45:00', 'Emergency vehicle preempt');

-- Table summarising financials of renewable energy projects
CREATE TABLE renewable_energy_project_financials
(
    ProjectID INTEGER PRIMARY KEY,
    ProjectName TEXT,
    ProjectType TEXT,
    StartDate DATE,
    ExpectedCompletionDate DATE,
    CapitalExpenditure REAL,
    OperatingExpenditure REAL,
    EstimatedAnnualRevenue REAL,
    DebtFinancingAmount REAL,
    EquityFinancingAmount REAL,
    TaxCreditReceived REAL,
    ProductionCapacityMW REAL,
    CapacityFactor REAL,
    LevelizedCostOfEnergy REAL,
    InternalRateOfReturn REAL,
    PaybackPeriodYears REAL,
    Status TEXT,
    SponsorCompanyID INTEGER,
    LastFinancialReportDate DATE,
    Notes TEXT
);

INSERT INTO renewable_energy_project_financials VALUES (1, 'SolarParkAlpha', 'Solar', '2022-05-01', '2024-12-31', 85000000.00, 5000000.00, 12000000.00, 50000000.00, 35000000.00, 8000000.00, 150.0, 0.22, 45.00, 12.5, 7.8, 'Operational', 7001, '2023-12-31', 'Full capacity reached');
INSERT INTO renewable_energy_project_financials VALUES (2, 'WindFarmBeta', 'Wind', '2021-03-15', '2025-06-30', 120000000.00, 8000000.00, 20000000.00, 70000000.00, 50000000.00, 12000000.00, 300.0, 0.35, 55.00, 11.0, 9.2, 'Construction', 7002, '2023-11-30', 'Turbine installation ongoing');
INSERT INTO renewable_energy_project_financials VALUES (3, 'HydroDelta', 'Hydro', '2020-01-01', '2026-12-31', 200000000.00, 15000000.00, 35000000.00, 130000000.00, 70000000.00, 20000000.00, 500.0, 0.45, 65.00, 10.5, 12.0, 'Planning', 7003, '2023-10-31', 'Permitting phase');

-- Table logging changes to public transport vehicle schedules
CREATE TABLE public_transport_vehicle_schedule_changes
(
    ChangeID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    RouteID INTEGER,
    OriginalDepartureTime TIME,
    NewDepartureTime TIME,
    ChangeReason TEXT,
    EffectiveDate DATE,
    ApprovedBy TEXT,
    NotificationSent INTEGER,
    ImpactedStopsCount INTEGER,
    EstimatedDelayMinutes INTEGER,
    Comment TEXT,
    ChangeCreatedAt DATETIME,
    ChangeUpdatedAt DATETIME,
    Status TEXT,
    ServiceDay TEXT,
    OperatorID INTEGER,
    ShiftID INTEGER,
    ReplacementVehicleID INTEGER,
    ComplianceFlag INTEGER
);

INSERT INTO public_transport_vehicle_schedule_changes VALUES (1, 80001, 9001, '08:00:00', '08:15:00', 'Traffic', '2024-02-10', 'SupervisorA', 1, 3, 5, 'Minor delay due to road work', '2024-02-05 09:00:00', '2024-02-08 10:30:00', 'Approved', 'Weekday', 1001, 2001, 80002, 1);
INSERT INTO public_transport_vehicle_schedule_changes VALUES (2, 80002, 9002, '09:30:00', '09:00:00', 'VehicleIssue', '2024-02-12', 'SupervisorB', 1, 5, 30, 'Early departure to recover schedule', '2024-02-06 11:15:00', '2024-02-09 12:45:00', 'Approved', 'Weekend', 1002, 2002, 80003, 1);
INSERT INTO public_transport_vehicle_schedule_changes VALUES (3, 80003, 9003, '12:45:00', '13:10:00', 'CrewShift', '2024-02-15', 'SupervisorC', 0, 2, 25, 'Shift change caused delay', '2024-02-07 14:20:00', '2024-02-10 15:55:00', 'Pending', 'Holiday', 1003, 2003, NULL, 0);