```sql
-- Fuel station traffic counts – vehicle flow and environmental context
CREATE TABLE fuel_station_traffic_counts
(
    TrafficCountID            INTEGER PRIMARY KEY,
    GasStationID              INTEGER,
    Date                      DATE,
    Hour                      INTEGER,
    VehicleCount              INTEGER,
    CarCount                  INTEGER,
    TruckCount                INTEGER,
    MotorcycleCount           INTEGER,
    ElectricVehicleCount      INTEGER,
    AvgSpeed                  REAL,
    PeakHourFlag              INTEGER,      -- 0 = no, 1 = yes
    WeatherCondition          TEXT,
    TemperatureC              REAL,
    PrecipitationMM           REAL,
    WindSpeedKMH              REAL,
    EventDescription          TEXT,
    SensorID                  INTEGER,
    DataSource                TEXT,
    CreatedAt                 DATETIME,
    UpdatedAt                 DATETIME,
    Notes                     TEXT,
    RegionCode                TEXT
);

INSERT INTO fuel_station_traffic_counts
( TrafficCountID, GasStationID, Date, Hour, VehicleCount, CarCount, TruckCount, MotorcycleCount,
  ElectricVehicleCount, AvgSpeed, PeakHourFlag, WeatherCondition, TemperatureC,
  PrecipitationMM, WindSpeedKMH, EventDescription, SensorID, DataSource,
  CreatedAt, UpdatedAt, Notes, RegionCode )
VALUES
( 1, 101,   '2024-01-01', 8,  250, 180, 45, 20, 5, 45.2, 0, 'Clear', 5.0, 0.0, 12.3, 'Morning rush', 301, 'SensorNet', '2024-01-01 08:15:00', '2024-01-01 08:15:00', 'None', 'NORTH' ),
( 2, 102,   '2024-01-01', 17, 320, 210, 80, 15, 15, 38.7, 1, 'Rain', 7.2, 2.4, 15.0, 'Evening peak', 302, 'SensorNet', '2024-01-01 17:05:00', '2024-01-01 17:05:00', 'Wet road', 'SOUTH' ),
( 3, 103,   '2024-01-02', 12, 180, 130, 30, 10, 2, 52.1, 0, 'Cloudy', 6.8, 0.0, 9.5,  'Midday flow', 303, 'SensorNet', '2024-01-02 12:30:00', '2024-01-02 12:30:00', 'Normal', 'EAST' );

-- Regional roadway congestion metrics
CREATE TABLE regional_roadway_congestion
(
    CongestionID                     INTEGER PRIMARY KEY,
    RegionID                         INTEGER,
    Date                             DATE,
    TimeSlot                         TEXT,
    AvgTravelTimeMin                 REAL,
    CongestionLevel                  TEXT,
    IncidentCount                    INTEGER,
    RoadWorkFlag                     INTEGER,
    WeatherImpactScore               REAL,
    PercentHeavyVehicles             REAL,
    AvgSpeedKMH                      REAL,
    SensorCount                      INTEGER,
    DataProvider                     TEXT,
    CreatedAt                        DATETIME,
    UpdatedAt                        DATETIME,
    Comments                         TEXT,
    Latitude                         REAL,
    Longitude                        REAL,
    ZoneName                         TEXT,
    TrafficSignalTimingAdjustment    TEXT,
    PublicTransportDelayMin          REAL
);

INSERT INTO regional_roadway_congestion
( CongestionID, RegionID, Date, TimeSlot, AvgTravelTimeMin, CongestionLevel,
  IncidentCount, RoadWorkFlag, WeatherImpactScore, PercentHeavyVehicles,
  AvgSpeedKMH, SensorCount, DataProvider, CreatedAt, UpdatedAt,
  Comments, Latitude, Longitude, ZoneName, TrafficSignalTimingAdjustment,
  PublicTransportDelayMin )
VALUES
( 1, 10, '2024-01-01', '08:00-09:00', 12.5, 'High', 3, 0, 7.2, 22.5, 35.0, 12, 'CityOps', '2024-01-01 09:00:00', '2024-01-01 09:00:00',
  'Peak commute', 40.7128, -74.0060, 'MetroWest', 'Extended green', 5.0 ),
( 2, 11, '2024-01-01', '17:00-18:00', 15.8, 'Severe', 5, 1, 9.1, 30.0, 28.4, 10, 'StateDept', '2024-01-01 18:00:00', '2024-01-01 18:00:00',
  'Construction on I-90', 34.0522, -118.2437, 'Downtown', 'Reduced red', 12.3 ),
( 3, 12, '2024-01-02', '12:00-13:00', 8.2, 'Low', 0, 0, 3.5, 15.0, 55.0, 8, 'RegionalCtrl', '2024-01-02 13:00:00', '2024-01-02 13:00:00',
  'Midday clear', 41.8781, -87.6298, 'Uptown', 'Standard', 1.2 );

-- Vehicle subscription usage tracking
CREATE TABLE vehicle_subscription_usage
(
    SubscriptionUsageID   INTEGER PRIMARY KEY,
    CustomerID            INTEGER,
    VehicleID             INTEGER,
    SubscriptionPlanID    INTEGER,
    StartDate             DATE,
    EndDate               DATE,
    MileageUsed           REAL,
    MileageRemaining      REAL,
    FuelConsumedLiters    REAL,
    ElectricityConsumedKWh REAL,
    MaintenanceVisits     INTEGER,
    ServiceLevel          TEXT,
    DiscountApplied       REAL,
    PaymentMethodID       INTEGER,
    BillingCycle          TEXT,
    Status                TEXT,
    CreatedAt             DATETIME,
    UpdatedAt             DATETIME,
    Notes                 TEXT,
    PromoCode             TEXT,
    RenewalDate           DATE
);

INSERT INTO vehicle_subscription_usage
( SubscriptionUsageID, CustomerID, VehicleID, SubscriptionPlanID, StartDate, EndDate,
  MileageUsed, MileageRemaining, FuelConsumedLiters, ElectricityConsumedKWh,
  MaintenanceVisits, ServiceLevel, DiscountApplied, PaymentMethodID, BillingCycle,
  Status, CreatedAt, UpdatedAt, Notes, PromoCode, RenewalDate )
VALUES
( 1, 2001, 501, 3, '2024-01-01', '2024-12-31', 12000.5, 8000.0, 850.2, 0.0, 2, 'Premium', 5.0, 11, 'Monthly', 'Active',
  '2024-01-01 09:00:00', '2024-04-01 09:00:00', 'No issues', 'NEWYEAR2024', '2024-12-31' ),
( 2, 2002, 502, 2, '2023-06-15', '2024-06-14', 15000.0, 5000.0, 0.0, 350.5, 1, 'Standard', 0.0, 12, 'Quarterly', 'Active',
  '2023-06-15 10:30:00', '2024-03-15 10:30:00', 'Battery swap', 'SUMMER23', '2024-06-14' ),
( 3, 2003, 503, 1, '2022-09-01', '2023-08-31', 20000.0, 0.0, 1200.0, 0.0, 3, 'Basic', 10.0, 13, 'Annual', 'Expired',
  '2022-09-01 08:15:00', '2023-08-31 08:15:00', 'Vehicle sold', 'AUTOSAVE', '2023-08-31' );

-- Eco‑initiative project catalog
CREATE TABLE eco_initiative_projects
(
    ProjectID                 INTEGER PRIMARY KEY,
    ProjectName               TEXT,
    StartDate                 DATE,
    EndDate                   DATE,
    FundingSource             TEXT,
    TotalBudget               REAL,
    AllocatedBudget           REAL,
    Status                    TEXT,
    LeadDepartment            TEXT,
    ProjectManager            TEXT,
    ESGScore                  REAL,
    CarbonReductionTonnes     REAL,
    WaterSavingsLiters        REAL,
    EnergySavedMWh            REAL,
    StakeholderCount          INTEGER,
    Region                    TEXT,
    City                      TEXT,
    Country                   TEXT,
    CreatedAt                 DATETIME,
    UpdatedAt                 DATETIME,
    Description               TEXT,
    KPI1                      TEXT,
    KPI2                      TEXT
);

INSERT INTO eco_initiative_projects
( ProjectID, ProjectName, StartDate, EndDate, FundingSource, TotalBudget, AllocatedBudget,
  Status, LeadDepartment, ProjectManager, ESGScore, CarbonReductionTonnes,
  WaterSavingsLiters, EnergySavedMWh, StakeholderCount, Region, City, Country,
  CreatedAt, UpdatedAt, Description, KPI1, KPI2 )
VALUES
( 1, 'SolarRoofRollout', '2023-01-01', '2024-12-31', 'GreenFund', 5000000, 4500000, 'InProgress',
  'Facilities', 'AliceM', 85.2, 1200.0, 3000000, 2500.0, 15, 'Midwest', 'Chicago', 'USA',
  '2023-01-01 09:00:00', '2024-04-01 09:00:00', 'Install solar panels on corporate roofs', 'InstallationRate', 'EnergyYield' ),
( 2, 'ZeroWasteProgram', '2022-05-15', '2025-05-14', 'Corporate', 2000000, 1800000, 'Planning',
  'Operations', 'BobK', 78.5, 0.0, 0.0, 0.0, 8, 'West', 'SanFrancisco', 'USA',
  '2022-05-15 10:30:00', '2023-10-01 10:30:00', 'Reduce landfill waste across facilities', 'WasteDiverted', 'RecyclingRate' ),
( 3, 'UrbanTreeCanopy', '2024-03-01', '2026-02-28', 'MunicipalGrant', 750000, 700000, 'Approved',
  'Sustainability', 'ClaraL', 92.0, 500.0, 1500000, 0.0, 20, 'South', 'Austin', 'USA',
  '2024-03-01 08:00:00', '2024-03-01 08:00:00', 'Plant trees in city parks', 'TreeSurvivalRate', 'CanopyCoverage' );

-- Customer support interaction log
CREATE TABLE customer_support_interactions
(
    InteractionID          INTEGER PRIMARY KEY,
    CustomerID             INTEGER,
    ContactMethod          TEXT,
    ContactChannel         TEXT,
    AgentID                INTEGER,
    InteractionDate        DATE,
    InteractionTime        TEXT,
    IssueCategory          TEXT,
    IssueSubcategory       TEXT,
    ResolutionStatus       TEXT,
    ResolutionTimeMin      INTEGER,
    SatisfactionScore      INTEGER,
    FollowUpRequired       INTEGER,
    FollowUpDate           DATE,
    FollowUpAgentID        INTEGER,
    Notes                  TEXT,
    CreatedAt              DATETIME,
    UpdatedAt              DATETIME,
    TicketNumber           TEXT,
    EscalationLevel       TEXT,
    ChatTranscript         TEXT
);

INSERT INTO customer_support_interactions
( InteractionID, CustomerID, ContactMethod, ContactChannel, AgentID, InteractionDate,
  InteractionTime, IssueCategory, IssueSubcategory, ResolutionStatus,
  ResolutionTimeMin, SatisfactionScore, FollowUpRequired, FollowUpDate,
  FollowUpAgentID, Notes, CreatedAt, UpdatedAt, TicketNumber,
  EscalationLevel, ChatTranscript )
VALUES
( 1, 2001, 'Phone', 'Inbound', 301, '2024-04-10', '14:22', 'Billing', 'Overcharge',
  'Resolved', 12, 9, 0, NULL, NULL, 'Customer satisfied', '2024-04-10 14:30:00', '2024-04-10 14:30:00',
  'TCKT1001', 'None', 'Customer: I was overcharged. Agent: We corrected it.' ),
( 2, 2002, 'Email', 'SupportInbox', 302, '2024-04-11', '09:05', 'Technical', 'AppCrash',
  'Escalated', 45, 6, 1, '2024-04-14', 305, 'Escalated to Tier 2', '2024-04-11 09:10:00', '2024-04-11 09:10:00',
  'TCKT1002', 'Level2', 'Customer: App crashes on start. Agent: Collected logs.' ),
( 3, 2003, 'Chat', 'WebChat', 303, '2024-04-12', '16:45', 'Account', 'PasswordReset',
  'Resolved', 5, 10, 0, NULL, NULL, 'Quick reset', '2024-04-12 16:50:00', '2024-04-12 16:50:00',
  'TCKT1003', 'None', 'Customer: Forgot password. Agent: Sent reset link.' );

-- Charging station maintenance records
CREATE TABLE charging_station_maintenance
(
    MaintenanceID          INTEGER PRIMARY KEY,
    ChargingStationID      INTEGER,
    MaintenanceDate        DATE,
    TechnicianID           INTEGER,
    MaintenanceType        TEXT,
    DurationHours          REAL,
    PartsReplacedCount     INTEGER,
    PartsCost              REAL,
    LaborCost              REAL,
    TotalCost              REAL,
    DowntimeMinutes        INTEGER,
    IssueDescription       TEXT,
    ResolutionSummary      TEXT,
    FollowUpRequired       INTEGER,
    FollowUpDate           DATE,
    NextScheduledMaintenance DATE,
    CreatedAt              DATETIME,
    UpdatedAt              DATETIME,
    MaintenanceStatus      TEXT,
    WarrantyCoveredFlag    INTEGER,
    Notes                  TEXT
);

INSERT INTO charging_station_maintenance
( MaintenanceID, ChargingStationID, MaintenanceDate, TechnicianID, MaintenanceType,
  DurationHours, PartsReplacedCount, PartsCost, LaborCost, TotalCost, DowntimeMinutes,
  IssueDescription, ResolutionSummary, FollowUpRequired, FollowUpDate,
  NextScheduledMaintenance, CreatedAt, UpdatedAt, MaintenanceStatus,
  WarrantyCoveredFlag, Notes )
VALUES
( 1, 501, '2024-03-20', 401, 'Electrical', 3.5, 2, 150.0, 80.0, 230.0, 45,
  'Inverter fault', 'Replaced inverter modules', 0, NULL, '2024-09-20',
  '2024-03-20 08:00:00', '2024-03-20 11:30:00', 'Completed', 1, 'No further action' ),
( 2, 502, '2024-04-02', 402, 'Mechanical', 2.0, 1, 75.0, 60.0, 135.0, 30,
  'Cable wear', 'Replaced charging cable', 1, '2024-04-10', '2024-10-02',
  '2024-04-02 13:00:00', '2024-04-02 15:00:00', 'Completed', 0, 'Monitor next inspection' ),
( 3, 503, '2024-04-15', 403, 'Software', 1.5, 0, 0.0, 50.0, 50.0, 15,
  'Firmware bug', 'Updated firmware to v2.1', 0, NULL, '2025-04-15',
  '2024-04-15 09:30:00', '2024-04-15 11:00:00', 'Completed', 1, 'Verified stable operation' );

-- Energy market derivatives contracts
CREATE TABLE energy_market_derivatives
(
    DerivativeID            INTEGER PRIMARY KEY,
    ContractType            TEXT,
    UnderlyingAsset         TEXT,
    TradeDate               DATE,
    ExpirationDate          DATE,
    NotionalAmount          REAL,
    PricingModel            TEXT,
    StrikePrice             REAL,
    CurrentPrice            REAL,
    SettlementMethod        TEXT,
    CounterpartyID          INTEGER,
    BrokerID                INTEGER,
    MarginRequirement       REAL,
    DailyMarkToMarket       REAL,
    Status                  TEXT,
    CreatedAt               DATETIME,
    UpdatedAt               DATETIME,
    Comments                TEXT,
    Currency                TEXT,
    Region                  TEXT,
    RiskRating              TEXT
);

INSERT INTO energy_market_derivatives
( DerivativeID, ContractType, UnderlyingAsset, TradeDate, ExpirationDate,
  NotionalAmount, PricingModel, StrikePrice, CurrentPrice, SettlementMethod,
  CounterpartyID, BrokerID, MarginRequirement, DailyMarkToMarket,
  Status, CreatedAt, UpdatedAt, Comments, Currency, Region, RiskRating )
VALUES
( 1, 'Future', 'NaturalGas', '2024-01-15', '2024-12-15', 1000000, 'BlackScholes', 3.25, 3.40, 'Physical',
  901, 701, 50000, 1200, 'Open', '2024-01-15 10:00:00', '2024-04-01 10:00:00', 'Standard contract', 'USD', 'NorthAmerica', 'A' ),
( 2, 'Option', 'CrudeOil', '2024-02-10', '2024-08-10', 500000, 'Binomial', 70.0, 68.5, 'Cash',
  902, 702, 30000, -450, 'Closed', '2024-02-10 11:30:00', '2024-08-11 11:30:00', 'Exercised at expiration', 'USD', 'Europe', 'B' ),
( 3, 'Swap', 'Electricity', '2024-03-05', '2025-03-05', 2000000, 'MonteCarlo', 0.0, 0.0, 'Physical',
  903, 703, 80000, 0, 'Pending', '2024-03-05 09:15:00', '2024-03-05 09:15:00', 'Negotiation phase', 'EUR', 'Asia', 'A' );

-- Public transport operator fleet inventory
CREATE TABLE public_transport_operator_fleet
(
    FleetID                 INTEGER PRIMARY KEY,
    OperatorID              INTEGER,
    VehicleID               INTEGER,
    VehicleType             TEXT,
    ServiceLine             TEXT,
    CapacitySeats           INTEGER,
    ManufactureYear         INTEGER,
    FuelType                TEXT,
    EmissionStandard        TEXT,
    Mileage                 REAL,
    LastInspectionDate      DATE,
    NextInspectionDate      DATE,
    Status                  TEXT,
    DepotLocation           TEXT,
    AssignedDriverID        INTEGER,
    GPSDeviceID             INTEGER,
    PurchasePrice           REAL,
    DepreciationYear        INTEGER,
    WarrantyEndDate         DATE,
    CreatedAt               DATETIME,
    UpdatedAt               DATETIME,
    Notes                   TEXT
);

INSERT INTO public_transport_operator_fuel
( FleetID, OperatorID, VehicleID, VehicleType, ServiceLine, CapacitySeats,
  ManufactureYear, FuelType, EmissionStandard, Mileage, LastInspectionDate,
  NextInspectionDate, Status, DepotLocation, AssignedDriverID, GPSDeviceID,
  PurchasePrice, DepreciationYear, WarrantyEndDate, CreatedAt, UpdatedAt, Notes )
VALUES
( 1, 1101, 8001, 'Bus', 'Route12', 50, 2018, 'Diesel', 'EuroVI', 120000.5, '2024-02-01', '2025-02-01', 'Active',
  'CentralDepot', 2101, 901, 750000, 2023, '2025-12-31', '2024-02-10 08:00:00', '2024-02-10 08:00:00', 'On schedule' ),
( 2, 1102, 8002, 'Tram', 'Line5', 200, 2016, 'Electric', 'N/A', 300000.0, '2023-11-15', '2024-11-15', 'Active',
  'EastDepot', 2102, 902, 1200000, 2022, '2026-12-31', '2023-11-20 09:30:00', '2023-11-20 09:30:00', 'Battery upgrade pending' ),
( 3, 1103, 8003, 'Train', 'Intercity', 400, 2020, 'Hybrid', 'EuroVI', 80000.2, '2024-03-10', '2025-03-10', 'Maintenance',
  'NorthDepot', 2103, 903, 5000000, 2024, '2028-12-31', '2024-03-12 07:45:00', '2024-03-12 07:45:00', 'Engine overhaul scheduled' );

-- Logistics warehouse staff directory
CREATE TABLE logistics_warehouse_staff
(
    StaffID                 INTEGER PRIMARY KEY,
    WarehouseID             INTEGER,
    FirstName               TEXT,
    LastName                TEXT,
    Role                    TEXT,
    ShiftStart              TIME,
    ShiftEnd                TIME,
    EmploymentDate          DATE,
    SupervisorID            INTEGER,
    CertificationLevel      TEXT,
    BadgeNumber             TEXT,
    ContactNumber           TEXT,
    Email                   TEXT,
    Salary                  REAL,
    HourlyRate              REAL,
    OvertimeHours           REAL,
    PerformanceScore        REAL,
    SafetyIncidentsCount   INTEGER,
    TrainingCompletedDate   DATE,
    CreatedAt               DATETIME,
    UpdatedAt               DATETIME,
    Comments                TEXT
);

INSERT INTO logistics_warehouse_staff
( StaffID, WarehouseID, FirstName, LastName, Role, ShiftStart, ShiftEnd,
  EmploymentDate, SupervisorID, CertificationLevel, BadgeNumber, ContactNumber,
  Email, Salary, HourlyRate, OvertimeHours, PerformanceScore,
  SafetyIncidentsCount, TrainingCompletedDate, CreatedAt, UpdatedAt, Comments )
VALUES
( 1, 301, 'John', 'Doe', 'Picker', '07:00', '15:00', '2022-06-01', 10, 'Level2', 'B001', '5551234567',
  'john.doe@example.com', 48000, 22.5, 12.0, 4.8, 0, '2024-01-15', '2024-01-01 07:00:00', '2024-01-01 07:00:00', 'Excellent attendance' ),
( 2, 302, 'Emily', 'Smith', 'Loader', '15:00', '23:00', '2021-03-15', 11, 'Level3', 'B002', '5559876543',
  'emily.smith@example.com', 52000, 24.0, 8.5, 4.5, 1, '2023-12-20', '2023-12-01 15:00:00', '2023-12-01 15:00:00', 'Minor safety note' ),
( 3, 303, 'Carlos', 'Luna', 'Supervisor', '22:00', '06:00', '2019-11-20', NULL, 'Level5', 'B003', '5555551212',
  'carlos.luna@example.com', 68000, 30.0, 5.0, 4.9, 0, '2022-07-10', '2022-07-01 22:00:00', '2022-07-01 22:00:00', 'Promoted 2023' );

-- Hydrogen fuel station performance metrics
CREATE TABLE hydrogen_fuel_station_performance
(
    PerformanceID                INTEGER PRIMARY KEY,
    StationID                    INTEGER,
    ReportingDate                DATE,
    HydrogenProductionKg         REAL,
    ElectricityConsumptionMWh    REAL,
    EfficiencyPercent            REAL,
    DowntimeMinutes              INTEGER,
    MaintenanceEvents            INTEGER,
    SafetyIncidents              INTEGER,
    CO2EmissionAvoidedTonnes     REAL,
    OperatingCostUSD             REAL,
    RevenueUSD                   REAL,
    CapacityUtilizationPercent   REAL,
    AvgPressureBar               REAL,
    AvgTemperatureC              REAL,
    OperatorID                   INTEGER,
    CreatedAt                    DATETIME,
    UpdatedAt                    DATETIME,
    Notes                        TEXT,
    Region                       TEXT,
    Country                      TEXT
);

INSERT INTO hydrogen_fuel_station_performance
( PerformanceID, StationID, ReportingDate, HydrogenProductionKg, ElectricityConsumptionMWh,
  EfficiencyPercent, DowntimeMinutes, MaintenanceEvents, SafetyIncidents,
  CO2EmissionAvoidedTonnes, OperatingCostUSD, RevenueUSD,
  CapacityUtilizationPercent, AvgPressureBar, AvgTemperatureC,
  OperatorID, CreatedAt, UpdatedAt, Notes, Region, Country )
VALUES
( 1, 901, '2024-04-01', 5000.0, 1200.0, 85.0, 30, 2, 0, 12.5, 25000.0, 40000.0, 78.0, 350.0, 22.0, 1501,
  '2024-04-01 08:00:00', '2024-04-01 08:00:00', 'Steady operation', 'Midwest', 'USA' ),
( 2, 902, '2024-04-01', 4200.0, 1100.0, 81.5, 45, 3, 1, 10.8, 23000.0, 38000.0, 70.0, 340.0, 21.5, 1502,
  '2024-04-01 08:05:00', '2024-04-01 08:05:00', 'Minor leak addressed', 'West', 'USA' ),
( 3, 903, '2024-04-01', 6000.0, 1400.0, 88.2, 20, 1, 0, 15.0, 28000.0, 45000.0, 82.0, 360.0, 23.0, 1503,
  '2024-04-01 08:10:00', '2024-04-01 08:10:00', 'Optimal performance', 'East', 'USA' );
```