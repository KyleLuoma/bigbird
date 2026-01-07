-- Metrics related to fleet operators and their performance
CREATE TABLE fleet_operator_metrics
(
    OperatorID              INTEGER PRIMARY KEY,
    Region                  TEXT,
    FleetSize               INTEGER,
    AvgUtilizationPct      REAL,
    TotalMiles              INTEGER,
    FuelTypeMix            TEXT,
    EmissionScore          REAL,
    MaintenanceCostUSD     REAL,
    AvgDowntimeHours       REAL,
    AccidentsReported      INTEGER,
    SafetyRating           REAL,
    LicenseComplianceFlag  INTEGER,
    InsuranceCoverageUSD   REAL,
    AvgDriverExperienceYrs REAL,
    VehicleAgeAvgYears     REAL,
    OverheadCostUSD        REAL,
    AnnualRevenueUSD       REAL,
    ProfitMarginPct        REAL,
    FleetTurnoverRatePct   REAL,
    ReportingYear          INTEGER
);

INSERT INTO fleet_operator_metrics VALUES (1, 'North', 250, 78.5, 1200000, 'Diesel', 85.2, 450000.0, 3.2, 12, 4.5, 1, 800000.0, 5.1, 6.3, 150000.0, 5000000.0, 12.0, 5.0, 2023);
INSERT INTO fleet_operator_metrics VALUES (2, 'South', 180, 72.0, 800000, 'Hybrid', 88.7, 320000.0, 2.8, 8, 4.8, 1, 600000.0, 4.3, 5.7, 120000.0, 3500000.0, 14.5, 4.2, 2023);
INSERT INTO fleet_operator_metrics VALUES (3, 'East', 300, 81.3, 1500000, 'Electric', 92.1, 600000.0, 1.9, 5, 4.9, 1, 950000.0, 6.0, 4.9, 180000.0, 6200000.0, 13.2, 3.8, 2023);

-- Inventory of regional road infrastructure assets
CREATE TABLE regional_road_infra_inventory
(
    InventoryID           INTEGER PRIMARY KEY,
    Region                TEXT,
    RoadType              TEXT,
    LengthKm              REAL,
    PavementConditionPct  REAL,
    LanesCount            INTEGER,
    AvgTrafficVolumeDaily INTEGER,
    MaintenanceSchedule  TEXT,
    LastInspectionDate    TEXT,
    NextInspectionDate    TEXT,
    BridgeCount           INTEGER,
    TunnelCount           INTEGER,
    SaltStorageTon        REAL,
    SnowPlowAvailability  INTEGER,
    SignageCount          INTEGER,
    LightingCount         INTEGER,
    SmartSensorCount      INTEGER,
    FundingSource         TEXT,
    ProjectedUpgradeCostUSD REAL,
    YearConstructed       INTEGER
);

INSERT INTO regional_road_infra_inventory VALUES (101, 'Central', 'Highway', 250.5, 87.2, 6, 45000, 'Annual', '2022-11-15', '2023-11-15', 12, 3, 1500.0, 5, 300, 240, 80, 'Federal', 50000000.0, 1998);
INSERT INTO regional_road_infra_inventory VALUES (102, 'West', 'Arterial', 120.3, 73.5, 4, 28000, 'Biannual', '2023-02-20', '2024-02-20', 5, 1, 800.0, 3, 150, 120, 60, 'State', 21000000.0, 2005);
INSERT INTO regional_road_infra_inventory VALUES (103, 'East', 'Collector', 85.7, 91.0, 2, 15000, 'Annual', '2023-05-10', '2024-05-10', 2, 0, 300.0, 2, 80, 60, 40, 'County', 9500000.0, 2012);

-- Utilization records for electric vehicle fleet
CREATE TABLE electric_vehicle_fleet_utilization
(
    RecordID               INTEGER PRIMARY KEY,
    FleetID                INTEGER,
    VehicleID              INTEGER,
    RecordDate             TEXT,
    DailyMiles             REAL,
    AvgSpeedKmh            REAL,
    EnergyConsumedKWh      REAL,
    ChargingSessions       INTEGER,
    AvgChargeTimeMin       REAL,
    BatteryHealthPct       REAL,
    StateOfChargeStartPct  REAL,
    StateOfChargeEndPct    REAL,
    LocationArea           TEXT,
    DriverID               INTEGER,
    UtilizationScore       REAL,
    EmissionSavedKg        REAL,
    MaintenanceFlag        INTEGER,
    TripCount              INTEGER,
    IdleHours              REAL,
    Weekday                TEXT
);

INSERT INTO electric_vehicle_fleet_utilization VALUES (1001, 10, 501, '2023-08-01', 120.5, 55.2, 45.3, 2, 30.0, 96.5, 20.0, 80.0, 'Downtown', 2001, 88.0, 15.2, 0, 5, 1.5, 'Tuesday');
INSERT INTO electric_vehicle_fleet_utilization VALUES (1002, 10, 502, '2023-08-01', 98.0, 48.7, 38.7, 1, 25.0, 94.2, 30.0, 85.0, 'Uptown', 2002, 82.5, 12.8, 0, 4, 2.0, 'Tuesday');
INSERT INTO electric_vehicle_fleet_utilization VALUES (1003, 11, 601, '2023-08-01', 134.2, 60.1, 52.0, 3, 35.0, 97.1, 15.0, 78.0, 'Industrial', 2003, 90.3, 18.5, 1, 6, 1.0, 'Tuesday');

-- Log of urban noise events
CREATE TABLE urban_noise_event_log
(
    EventID            INTEGER PRIMARY KEY,
    City               TEXT,
    Neighborhood       TEXT,
    EventDate          TEXT,
    EventTime          TEXT,
    SoundLevelDb       REAL,
    DurationSec        INTEGER,
    SourceType         TEXT,
    IsResidential      INTEGER,
    ReportedBy         TEXT,
    ActionTaken        TEXT,
    FollowUpDate       TEXT,
    Latitude           REAL,
    Longitude          REAL,
    WeatherCondition   TEXT,
    TemperatureC       REAL,
    HumidityPct        REAL,
    NoiseCategory      TEXT,
    MitigationCostUSD  REAL,
    Comments           TEXT
);

INSERT INTO urban_noise_event_log VALUES (5001, 'Metropolis', 'Midtown', '2023-07-20', '22:15', 85.3, 300, 'Construction', 0, 'CitizenApp', 'WarningIssued', '2023-07-21', 40.7128, -74.0060, 'Clear', 28.0, 55.0, 'High', 1500.0, 'Noise reduced after barrier installation');
INSERT INTO urban_noise_event_log VALUES (5002, 'Metropolis', 'WestSide', '2023-07-22', '19:45', 78.0, 180, 'Traffic', 1, 'Police', 'FineIssued', '2023-07-23', 40.7306, -73.9352, 'Rain', 22.0, 70.0, 'Medium', 0.0, 'Resident reported repeated honking');
INSERT INTO urban_noise_event_log VALUES (5003, 'Metropolis', 'EastEnd', '2023-07-25', '01:30', 92.5, 420, 'Party', 1, 'NeighborhoodWatch', 'NoiseOrder', '2023-07-26', 40.6782, -73.9442, 'Clear', 19.0, 60.0, 'VeryHigh', 2000.0, 'Multiple complaints filed');

-- Transactions for smart parking system
CREATE TABLE smart_parking_transaction_log
(
    TransactionID       INTEGER PRIMARY KEY,
    ParkingLotID        INTEGER,
    SpotID              INTEGER,
    VehiclePlate        TEXT,
    EntryTime           TEXT,
    ExitTime            TEXT,
    DurationMin         INTEGER,
    FeeAmountUSD        REAL,
    PaymentMethod       TEXT,
    DiscountCode        TEXT,
    OperatorID          INTEGER,
    Zone                TEXT,
    TransactionDate     TEXT,
    DayOfWeek           TEXT,
    IsEV                INTEGER,
    EVChargeKWh         REAL,
    SensorStatus        TEXT,
    ViolationFlag      INTEGER,
    TicketNumber        TEXT,
    RevenueUSD          REAL,
    Remarks             TEXT
);

INSERT INTO smart_parking_transaction_log VALUES (9001, 12, 45, 'ABC1234', '08:15', '10:45', 150, 5.75, 'CreditCard', 'NONE', 301, 'A', '2023-08-01', 'Tuesday', 0, 0.0, 'OK', 0, '', 5.75, '');
INSERT INTO smart_parking_transaction_log VALUES (9002, 12, 46, 'XYZ5678', '09:05', '11:20', 135, 5.20, 'MobileApp', 'EV10', 301, 'A', '2023-08-01', 'Tuesday', 1, 12.5, 'OK', 0, '', 5.20, '');
INSERT INTO smart_parking_transaction_log VALUES (9003, 13, 12, 'LMN9101', '07:30', '08:15', 45, 2.00, 'Cash', 'NONE', 302, 'B', '2023-08-01', 'Tuesday', 0, 0.0, 'OK', 1, 'TCK12345', 2.00, 'Overtime violation');

-- Status records for hydrogen fuel stations
CREATE TABLE hydrogen_fuel_station_status
(
    StationID                 INTEGER PRIMARY KEY,
    Location                  TEXT,
    CapacityKg                REAL,
    CurrentStockKg            REAL,
    DailyDispenseKg           REAL,
    PressureBar               REAL,
    TemperatureC              REAL,
    SafetyInspectionDate      TEXT,
    NextInspectionDate        TEXT,
    IncidentCount             INTEGER,
    MaintenanceDue            INTEGER,
    OperatorID                INTEGER,
    PowerSupplyType           TEXT,
    WaterPurityPpm            REAL,
    ElectrolyzerStatus        TEXT,
    CompressorRunsPerDay      INTEGER,
    AvgEfficiencyPct          REAL,
    EmissionRateKgPerDay      REAL,
    SubsidyAmountUSD          REAL,
    YearCommissioned          INTEGER
);

INSERT INTO hydrogen_fuel_station_status VALUES (2001, 'NorthEdge', 5000.0, 4200.0, 150.0, 35.0, 22.5, '2023-06-10', '2024-06-10', 0, 0, 401, 'Solar', 5.0, 'Operational', 12, 92.0, 0.3, 250000.0, 2019);
INSERT INTO hydrogen_fuel_station_status VALUES (2002, 'SouthValley', 3000.0, 2700.0, 90.0, 30.0, 21.0, '2023-05-15', '2024-05-15', 1, 1, 402, 'Grid', 4.5, 'MaintenanceRequired', 8, 88.5, 0.2, 150000.0, 2021);
INSERT INTO hydrogen_fuel_station_status VALUES (2003, 'EastCoast', 4000.0, 3500.0, 120.0, 33.0, 23.0, '2023-07-01', '2024-07-01', 0, 0, 403, 'Hybrid', 4.8, 'Operational', 10, 90.0, 0.25, 200000.0, 2020);

-- Registry of solar energy certificates
CREATE TABLE solar_energy_certificate_registry
(
    CertID                INTEGER PRIMARY KEY,
    PlantID               INTEGER,
    CapacityMW            REAL,
    IssueDate             TEXT,
    ExpiryDate            TEXT,
    OwnerEntity           TEXT,
    CertType              TEXT,
    VolumeMWh             REAL,
    CO2OffsetTon          REAL,
    VerificationAgency    TEXT,
    Status                TEXT,
    Region                TEXT,
    GridConnectionPoint   TEXT,
    TrackerSerial         TEXT,
    PanelModel            TEXT,
    InstallationDate      TEXT,
    WarrantyEndDate       TEXT,
    IncentiveAmountUSD    REAL,
    RenewableEnergyCredit TEXT,
    Notes                 TEXT
);

INSERT INTO solar_energy_certificate_registry VALUES (30001, 501, 150.0, '2022-01-15', '2032-01-14', 'SunPowerCo', 'Generation', 1200000.0, 36000.0, 'ISO9001', 'Active', 'Southwest', 'NodeA', 'TS12345', 'SP-300', '2021-06-01', '2031-06-01', 5000000.0, 'REC-2022-01', '');
INSERT INTO solar_energy_certificate_registry VALUES (30002, 502, 80.0, '2023-03-20', '2033-03-19', 'BrightSolar', 'Generation', 640000.0, 19200.0, 'ISO9001', 'Active', 'Midwest', 'NodeB', 'TS54321', 'BS-200', '2022-09-15', '2032-09-15', 2700000.0, 'REC-2023-03', '');
INSERT INTO solar_energy_certificate_registry VALUES (30003, 503, 200.0, '2021-11-05', '2031-11-04', 'EcoEnergy', 'Generation', 1600000.0, 48000.0, 'ISO9001', 'Active', 'Northeast', 'NodeC', 'TS98765', 'EE-500', '2020-12-10', '2030-12-10', 7200000.0, 'REC-2021-11', '');

-- Maintenance schedule for public transport vehicles
CREATE TABLE public_transport_maintenance_schedule
(
    ScheduleID          INTEGER PRIMARY KEY,
    AgencyID            INTEGER,
    VehicleID           INTEGER,
    MaintenanceType     TEXT,
    PlannedDate         TEXT,
    EstimatedDurationHrs REAL,
    FacilityID          INTEGER,
    TechnicianTeam      TEXT,
    PartsRequired       TEXT,
    CostEstimateUSD     REAL,
    DowntimeImpactHours REAL,
    ApprovalStatus      TEXT,
    CreatedBy           TEXT,
    CreatedDate         TEXT,
    UpdatedBy           TEXT,
    UpdatedDate         TEXT,
    PriorityLevel       TEXT,
    Remarks             TEXT,
    ComplianceFlag      INTEGER,
    LastPerformedDate   TEXT
);

INSERT INTO public_transport_maintenance_schedule VALUES (4001, 10, 1001, 'EngineOverhaul', '2023-09-15', 48.0, 501, 'TeamA', 'EngineBlock,Turbo', 250000.0, 40.0, 'Approved', 'Scheduler1', '2023-07-01', 'Supervisor1', '2023-07-02', 'High', 'Critical for safety', 1, '2023-04-10');
INSERT INTO public_transport_maintenance_schedule VALUES (4002, 10, 1002, 'BrakeReplacement', '2023-08-20', 12.0, 502, 'TeamB', 'BrakePads,Rotors', 80000.0, 10.0, 'Approved', 'Scheduler2', '2023-06-15', 'Supervisor2', '2023-06-16', 'Medium', 'Routine maintenance', 1, '2023-05-05');
INSERT INTO public_transport_maintenance_schedule VALUES (4003, 11, 1101, 'HVACCheck', '2023-10-05', 8.0, 503, 'TeamC', 'Filters,Coolant', 15000.0, 6.0, 'Pending', 'Scheduler3', '2023-08-01', 'Supervisor3', '2023-08-02', 'Low', 'Seasonal check', 0, NULL);

-- Battery log for logistics drones
CREATE TABLE logistics_drone_battery_log
(
    LogID               INTEGER PRIMARY KEY,
    DroneID             INTEGER,
    BatteryID           INTEGER,
    SwapDate            TEXT,
    FlightCycles        INTEGER,
    ChargeCycles        INTEGER,
    CapacityWh          REAL,
    HealthPct           REAL,
    TemperatureC        REAL,
    VoltageV            REAL,
    CurrentA            REAL,
    SwapStationID       INTEGER,
    OperatorID          INTEGER,
    Status              TEXT,
    WarrantyExpiryDate  TEXT,
    Notes               TEXT,
    FlightTimeMin       INTEGER,
    AvgDischargeRateW   REAL,
    ReconditioningFlag INTEGER,
    NextCheckDate       TEXT
);

INSERT INTO logistics_drone_battery_log VALUES (6001, 2001, 9001, '2023-08-01', 120, 150, 4500.0, 95.0, 30.0, 15.2, 2.0, 301, 401, 'Good', '2025-08-01', '', 180, 25.0, 0, '2023-12-01');
INSERT INTO logistics_drone_battery_log VALUES (6002, 2002, 9002, '2023-07-20', 95, 130, 4200.0, 92.5, 28.0, 15.0, 1.9, 302, 402, 'Good', '2025-07-20', '', 150, 23.5, 0, '2023-11-20');
INSERT INTO logistics_drone_battery_log VALUES (6003, 2003, 9003, '2023-06-15', 80, 110, 4000.0, 90.0, 25.0, 14.8, 1.8, 303, 403, 'Fair', '2025-06-15', 'Slight capacity loss', 120, 22.0, 1, '2023-10-15');

-- Municipal waste processing statistics
CREATE TABLE municipal_waste_processing_stats
(
    ReportID          INTEGER PRIMARY KEY,
    City              TEXT,
    FacilityID        INTEGER,
    WasteType         TEXT,
    ProcessedTons     REAL,
    RecycledTons      REAL,
    EnergyRecoveredMWh REAL,
    EmissionsTonCO2   REAL,
    OperatingHours    REAL,
    StaffCount        INTEGER,
    ShiftPattern      TEXT,
    MaintenanceIncidents INTEGER,
    AvgProcessingTimeMin REAL,
    HazardousFlag      INTEGER,
    DisposalMethod     TEXT,
    RevenueUSD         REAL,
    CostUSD            REAL,
    NetProfitUSD       REAL,
    ComplianceScore    REAL,
    ReportDate         TEXT
);

INSERT INTO municipal_waste_processing_stats VALUES (7001, 'Metropolis', 801, 'Municipal', 25000.0, 8000.0, 1500.0, 1200.0, 8760.0, 120, '3Shift', 5, 45.0, 0, 'Incineration', 3000000.0, 2500000.0, 500000.0, 92.5, '2023-07-31');
INSERT INTO municipal_waste_processing_stats VALUES (7002, 'Gotham', 802, 'Industrial', 18000.0, 6000.0, 1200.0, 900.0, 8760.0, 95, '2Shift', 3, 50.0, 1, 'Landfill', 2100000.0, 1800000.0, 300000.0, 88.0, '2023-07-31');
INSERT INTO municipal_waste_processing_stats VALUES (7003, 'StarCity', 803, 'Construction', 14000.0, 5000.0, 950.0, 750.0, 8760.0, 80, '3Shift', 2, 48.0, 0, 'Recycling', 1700000.0, 1400000.0, 300000.0, 90.0, '2023-07-31');