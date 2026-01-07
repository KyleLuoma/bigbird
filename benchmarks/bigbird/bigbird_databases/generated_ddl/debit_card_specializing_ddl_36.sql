-- Public transport vehicle maintenance records
CREATE TABLE public_transport_vehicle_maintenance (
    MaintenanceID INTEGER PRIMARY KEY AUTOINCREMENT,
    VehicleID INTEGER NOT NULL,
    DepotID INTEGER NOT NULL,
    MaintenanceDate TEXT,
    MaintenanceType TEXT,
    OdometerReading INTEGER,
    LaborHours REAL,
    LaborCost REAL,
    PartsCost REAL,
    TotalCost REAL,
    TechnicianID INTEGER,
    ServiceVendor TEXT,
    NextDueDate TEXT,
    Remarks TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT,
    FuelType TEXT,
    EngineHours INTEGER,
    WarrantyFlag INTEGER,
    InspectionScore REAL,
    DowntimeHours REAL
);

INSERT INTO public_transport_vehicle_maintenance VALUES
(1, 101, 10, '2023-05-12', 'Engine Overhaul', 123450, 8.5, 320.00, 150.00, 470.00, 501, 'AutoFix Ltd', '2024-05-12', 'Replaced timing belt', '2023-05-12', '2023-05-12', 'Diesel', 3500, 1, 92.5, 2.0),
(2, 102, 10, '2023-06-20', 'Brake Inspection', 124800, 3.0, 80.00, 45.00, 125.00, 502, 'BrakePro Inc', '2024-06-20', 'Front brake pads wear low', '2023-06-20', '2023-06-20', 'Electric', 2100, 0, 88.0, 1.0),
(3, 103, 11, '2023-07-04', 'Tire Rotation', 98000, 2.0, 40.00, 0.00, 40.00, 503, 'TireShop Co', '2024-07-04', 'Rotated all four tires', '2023-07-04', '2023-07-04', 'Hybrid', 4200, 1, 95.0, 0.5);

-- Energy market trade transactions
CREATE TABLE energy_market_trades (
    TradeID INTEGER PRIMARY KEY AUTOINCREMENT,
    TradeDate TEXT,
    TradeTime TEXT,
    MarketRegion TEXT,
    EnergyType TEXT,
    QuantityMWh REAL,
    PricePerMWh REAL,
    TotalValue REAL,
    BuyerID INTEGER,
    SellerID INTEGER,
    TradeStatus TEXT,
    SettlementDate TEXT,
    ContractID TEXT,
    Currency TEXT,
    ExchangeName TEXT,
    OrderType TEXT,
    BidPrice REAL,
    AskPrice REAL,
    VWAP REAL,
    TransactionFee REAL,
    Remarks TEXT
);

INSERT INTO energy_market_trades VALUES
(1, '2023-08-01', '09:15:00', 'North', 'Solar', 1500.5, 45.30, 68098.65, 2001, 3001, 'Settled', '2023-08-02', 'C-1001', 'USD', 'EEX', 'Buy', 44.80, 45.80, 45.30, 250.00, 'Morning trade'),
(2, '2023-08-01', '14:45:00', 'South', 'Wind', 2300.0, 38.20, 87860.00, 2002, 3002, 'Pending', '2023-08-03', 'C-1002', 'EUR', 'ICE', 'Sell', 38.00, 38.50, 38.20, 300.00, 'Afternoon sell order'),
(3, '2023-08-02', '11:30:00', 'East', 'Hydro', 800.75, 55.10, 44115.83, 2003, 3003, 'Cancelled', NULL, 'C-1003', 'USD', 'NYMEX', 'Buy', 54.90, 55.30, 55.10, 150.00, 'Trade cancelled by buyer');

-- Road construction permits
CREATE TABLE road_construction_permits (
    PermitID INTEGER PRIMARY KEY AUTOINCREMENT,
    PermitNumber TEXT,
    IssueDate TEXT,
    ExpiryDate TEXT,
    ProjectID INTEGER,
    ContractorID INTEGER,
    RoadSegmentID INTEGER,
    PermitType TEXT,
    EstimatedCost REAL,
    ApprovedBy TEXT,
    PermitStatus TEXT,
    InspectionDate TEXT,
    RiskLevel TEXT,
    EnvironmentalImpactScore INTEGER,
    TrafficImpactScore INTEGER,
    MitigationPlan TEXT,
    CreatedBy TEXT,
    CreatedAt TEXT,
    UpdatedBy TEXT,
    UpdatedAt TEXT,
    Notes TEXT
);

INSERT INTO road_construction_permits VALUES
(1, 'RC-2023-001', '2023-03-15', '2024-03-15', 5001, 7001, 9001, 'Expansion', 2500000.00, 'DeptHeadA', 'Active', '2023-04-01', 'Medium', 78, 85, 'Temporary lane shifts', 'PlannerA', '2023-03-15', 'PlannerA', '2023-03-15', 'Initial issue'),
(2, 'RC-2023-002', '2023-05-10', '2024-05-10', 5002, 7002, 9002, 'Repair', 950000.00, 'DeptHeadB', 'Pending', NULL, 'Low', 45, 30, 'Night work only', 'PlannerB', '2023-05-10', 'PlannerB', '2023-05-10', 'Awaiting environmental clearance'),
(3, 'RC-2023-003', '2023-06-20', '2024-06-20', 5003, 7003, 9003, 'New Build', 4200000.00, 'DeptHeadC', 'Revoked', '2023-07-05', 'High', 92, 90, 'Extensive detour plan', 'PlannerC', '2023-06-20', 'PlannerC', '2023-06-20', 'Permit revoked due to budget cuts');

-- Air quality report summary
CREATE TABLE air_quality_report_summary (
    ReportID INTEGER PRIMARY KEY AUTOINCREMENT,
    ReportDate TEXT,
    CityCode TEXT,
    AQI INTEGER,
    PM25 REAL,
    PM10 REAL,
    NO2 REAL,
    SO2 REAL,
    O3 REAL,
    CO REAL,
    Lead REAL,
    Zinc REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    WindSpeedKph REAL,
    WindDirection TEXT,
    ReportingAgency TEXT,
    DataSource TEXT,
    Comments TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT,
    ReportStatus TEXT
);

INSERT INTO air_quality_report_summary VALUES
(1, '2023-09-01', 'NYC', 85, 12.5, 25.3, 38.0, 5.2, 45.6, 0.8, 0.04, 0.03, 22.5, 60.0, 12.0, 'NE', 'EPA', 'StationA', 'Moderate air quality', '2023-09-01', '2023-09-01', 'Final'),
(2, '2023-09-01', 'LA', 62, 9.1, 18.7, 22.5, 3.4, 30.2, 0.5, 0.02, 0.01, 28.0, 55.0, 8.5, 'SW', 'EPA', 'StationB', 'Good air quality', '2023-09-01', '2023-09-01', 'Final'),
(3, '2023-09-01', 'CHI', 110, 20.0, 40.5, 55.0, 8.0, 60.0, 1.2, 0.07, 0.05, 19.0, 70.0, 15.0, 'NW', 'EPA', 'StationC', 'Unhealthy for sensitive groups', '2023-09-01', '2023-09-01', 'Final');

-- City event permits
CREATE TABLE city_event_permits (
    PermitID INTEGER PRIMARY KEY AUTOINCREMENT,
    EventName TEXT,
    Organizer TEXT,
    EventStartDate TEXT,
    EventEndDate TEXT,
    VenueID INTEGER,
    ExpectedAttendance INTEGER,
    PermitIssuedDate TEXT,
    PermitExpirationDate TEXT,
    PermitStatus TEXT,
    SecurityPlanSubmitted INTEGER,
    NoiseLevelLimitDb INTEGER,
    TrafficPlanSubmitted INTEGER,
    InsurancePolicyNumber TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    FeeAmount REAL,
    FeeCurrency TEXT,
    CreatedBy TEXT,
    CreatedAt TEXT,
    UpdatedBy TEXT,
    UpdatedAt TEXT,
    Notes TEXT
);

INSERT INTO city_event_permits VALUES
(1, 'Summer Music Fest', 'CityArts', '2023-08-10', '2023-08-12', 301, 5000, '2023-06-01', '2023-07-15', 'Approved', 1, 85, 1, 'INS-56789', '5551234567', 'info@cityarts.org', 12000.00, 'USD', 'AdminA', '2023-06-01', 'AdminA', '2023-06-01', 'Outdoor concert in central park'),
(2, 'Tech Expo 2023', 'InnovateHub', '2023-09-20', '2023-09-22', 302, 3000, '2023-07-10', '2023-08-31', 'Pending', 0, 90, 0, 'INS-12345', '5559876543', 'contact@innovatehub.com', 15000.00, 'USD', 'AdminB', '2023-07-10', 'AdminB', '2023-07-10', 'Conference center venue'),
(3, 'Food Street Fair', 'GourmetGuild', '2023-10-05', '2023-10-05', 303, 2000, '2023-08-15', '2023-09-30', 'Revoked', 0, 80, 0, 'INS-67890', '5552468101', 'events@gourmetguild.com', 8000.00, 'USD', 'AdminC', '2023-08-15', 'AdminC', '2023-08-15', 'Permit revoked due to road works');

-- Water treatment chemical logs
CREATE TABLE water_treatment_chemical_logs (
    LogID INTEGER PRIMARY KEY AUTOINCREMENT,
    PlantID INTEGER,
    SampleDate TEXT,
    SampleTime TEXT,
    ChemicalName TEXT,
    DosageMgL REAL,
    pH REAL,
    ConductivityUsCm REAL,
    TemperatureC REAL,
    TurbidityNTU REAL,
    ChlorineResidualMgL REAL,
    FluorideMgL REAL,
    DissolvedOxygenMgL REAL,
    AlkalinityMgL REAL,
    HardnessMgL REAL,
    SodiumMgL REAL,
    MagnesiumMgL REAL,
    CalciumMgL REAL,
    ObservationNotes TEXT,
    RecordedBy TEXT,
    RecordedAt TEXT
);

INSERT INTO water_treatment_chemical_logs VALUES
(1, 801, '2023-07-15', '08:30:00', 'Chlorine', 2.5, 7.2, 450.0, 15.0, 1.1, 0.5, 0.7, 8.2, 120.0, 150.0, 20.0, 5.0, 30.0, 'All parameters within limits', 'OperatorA', '2023-07-15'),
(2, 801, '2023-07-16', '08:30:00', 'Alum', 1.8, 7.4, 460.0, 15.2, 0.9, 0.4, 0.6, 8.0, 115.0, 148.0, 19.5, 4.8, 29.5, 'Slight increase in turbidity', 'OperatorB', '2023-07-16'),
(3, 802, '2023-07-15', '09:00:00', 'Fluorosilicic Acid', 0.9, 7.0, 440.0, 14.8, 0.8, 0.0, 0.5, 7.9, 110.0, 140.0, 18.0, 4.5, 28.0, 'Fluoride dosage adjusted', 'OperatorC', '2023-07-15');

-- Telecom frequency allocations
CREATE TABLE telecom_frequency_allocations (
    AllocationID INTEGER PRIMARY KEY AUTOINCREMENT,
    BandName TEXT,
    FrequencyStartMHz REAL,
    FrequencyEndMHz REAL,
    AllocationDate TEXT,
    Licensee TEXT,
    LicenseType TEXT,
    ServiceType TEXT,
    MaxPowerDbm REAL,
    AntennaHeightM REAL,
    RegionCode TEXT,
    Status TEXT,
    RenewalDate TEXT,
    ExpirationDate TEXT,
    RegulatoryBody TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    AllocationNotes TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT,
    IsShared INTEGER
);

INSERT INTO telecom_frequency_allocations VALUES
(1, '5G Midband', 3500.0, 3700.0, '2022-01-15', 'NetCom', 'Exclusive', 'Mobile Broadband', 30.0, 25.0, 'R1', 'Active', '2024-01-15', '2027-01-15', 'CommReg', '5551112222', 'licensing@netcom.com', 'Allocated for urban 5G rollout', '2022-01-15', '2022-01-15', 0),
(2, 'WiFi 6E', 5925.0, 6425.0, '2021-06-01', 'CityWiFi', 'Shared', 'Public WiFi', 20.0, 15.0, 'R2', 'Active', '2023-06-01', '2026-06-01', 'CommReg', '5553334444', 'support@citywifi.org', 'Shared use in municipal sites', '2021-06-01', '2021-06-01', 1),
(3, 'Broadcast TV', 470.0, 862.0, '2019-03-20', 'MediaCorp', 'Exclusive', 'Television', 50.0, 100.0, 'R3', 'Expired', '2022-03-20', '2025-03-20', 'CommReg', '5555556666', 'contact@mediacorp.com', 'Former analog broadcast band', '2019-03-20', '2022-03-20', 0);

-- Urban fog monitoring stations
CREATE TABLE urban_fog_monitoring (
    MonitoringID INTEGER PRIMARY KEY AUTOINCREMENT,
    StationID INTEGER,
    ObservationDate TEXT,
    ObservationTime TEXT,
    VisibilityM REAL,
    HumidityPercent REAL,
    TemperatureC REAL,
    WindSpeedKph REAL,
    WindDirection TEXT,
    FogDensityScore INTEGER,
    LightCondition TEXT,
    SensorStatus TEXT,
    ImageFilename TEXT,
    AnalystComments TEXT,
    RecordedBy TEXT,
    RecordedAt TEXT,
    UpdatedBy TEXT,
    UpdatedAt TEXT,
    Latitude REAL,
    Longitude REAL
);

INSERT INTO urban_fog_monitoring VALUES
(1, 901, '2023-11-01', '06:30:00', 150.0, 92.0, 5.0, 8.0, 'N', 4, 'Low Light', 'OK', 'fog_20231101_0630.jpg', 'Dense fog early morning', 'AnalystA', '2023-11-01', 'AnalystA', '2023-11-01', 40.7128, -74.0060),
(2, 902, '2023-11-01', '07:00:00', 300.0, 85.0, 6.5, 10.0, 'NE', 2, 'Dawn', 'OK', 'fog_20231101_0700.jpg', 'Fog dissipating', 'AnalystB', '2023-11-01', 'AnalystB', '2023-11-01', 34.0522, -118.2437),
(3, 903, '2023-11-01', '06:45:00', 200.0, 88.0, 4.8, 7.5, 'NW', 3, 'Low Light', 'OK', 'fog_20231101_0645.jpg', 'Moderate fog conditions', 'AnalystC', '2023-11-01', 'AnalystC', '2023-11-01', 41.8781, -87.6298);

-- Renewable energy investment projects
CREATE TABLE renewable_energy_investment_projects (
    ProjectID INTEGER PRIMARY KEY AUTOINCREMENT,
    ProjectName TEXT,
    Developer TEXT,
    InvestmentAmount REAL,
    Currency TEXT,
    StartDate TEXT,
    ExpectedCommissionDate TEXT,
    CapacityMW REAL,
    TechnologyType TEXT,
    Country TEXT,
    Region TEXT,
    FundingSource TEXT,
    DebtEquityRatio REAL,
    Status TEXT,
    RiskRating TEXT,
    ESGScore INTEGER,
    ProjectManager TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT,
    Notes TEXT
);

INSERT INTO renewable_energy_investment_projects VALUES
(1, 'Sunnyvale Solar Farm', 'SunPower Inc', 150000000.00, 'USD', '2023-01-15', '2025-06-30', 120.0, 'Solar PV', 'USA', 'California', 'Equity', 0.6, 'Construction', 'Medium', 78, 'Alice Johnson', '5557778888', 'alice.johnson@sunpower.com', '2023-01-15', '2023-01-15', 'Phase 1 of 2'),
(2, 'Windridge Wind Park', 'Breeze Energy', 200000000.00, 'EUR', '2022-09-01', '2025-12-31', 250.0, 'Onshore Wind', 'Germany', 'Bavaria', 'Debt', 0.4, 'Financing', 'Low', 85, 'Mark Schmidt', '5559990000', 'mark.schmidt@breeze.eu', '2022-09-01', '2022-09-01', 'Secured long‑term PPAs'),
(3, 'RiverFlow Hydro', 'AquaPower Ltd', 120000000.00, 'USD', '2023-04-20', '2026-03-15', 80.0, 'Run‑of‑river', 'Canada', 'British Columbia', 'Mixed', 0.5, 'Planning', 'High', 70, 'Emily Chen', '5552223333', 'emily.chen@aquapower.ca', '2023-04-20', '2023-04-20', 'Environmental review pending');

-- Smart mobility hub inventory
CREATE TABLE smart_mobility_hub_inventory (
    HubID INTEGER PRIMARY KEY AUTOINCREMENT,
    HubName TEXT,
    LocationAddress TEXT,
    Latitude REAL,
    Longitude REAL,
    TotalDockCount INTEGER,
    AvailableDockCount INTEGER,
    BikeCount INTEGER,
    ScooterCount INTEGER,
    CarShareCount INTEGER,
    ChargingPoints INTEGER,
    PowerCapacityKW REAL,
    Operator TEXT,
    OpeningHours TEXT,
    LastInspectionDate TEXT,
    InspectionResult TEXT,
    MaintenanceProvider TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT,
    Remarks TEXT
);

INSERT INTO smart_mobility_hub_inventory VALUES
(1, 'Downtown Hub', '123 Main St, Metropolis', 40.7128, -74.0060, 120, 85, 80, 30, 5, 40, 150.0, 'MobilityCo', '06:00-22:00', '2023-08-10', 'Pass', 'TechServ Ltd', '5554445555', 'support@mobilityco.com', '2023-08-10', '2023-08-10', 'High usage area'),
(2, 'Uptown Hub', '456 Oak Ave, Metropolis', 40.7306, -73.9352, 90, 65, 60, 20, 3, 25, 100.0, 'MobilityCo', '07:00-21:00', '2023-07-15', 'Pass', 'TechServ Ltd', '5556667777', 'support@mobilityco.com', '2023-07-15', '2023-07-15', 'Near university campus'),
(3, 'Eastside Hub', '789 Pine Rd, Metropolis', 40.7510, -73.9690, 70, 50, 45, 15, 2, 20, 80.0, 'MobilityCo', '05:30-23:00', '2023-09-01', 'Pass', 'TechServ Ltd', '5558889999', 'support@mobilityco.com', '2023-09-01', '2023-09-01', 'Proximity to transit station');