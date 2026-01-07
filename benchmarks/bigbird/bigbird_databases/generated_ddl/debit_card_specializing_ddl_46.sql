-- Grid automation events captured by SCADA system
CREATE TABLE grid_automation_events
(
    EventID INTEGER PRIMARY KEY,
    NodeID INTEGER,
    EventTimestamp TEXT,
    EventType TEXT,
    Severity INTEGER,
    OperatorID INTEGER,
    Description TEXT,
    AffectedLoad REAL,
    VoltageLevel REAL,
    CurrentLevel REAL,
    Frequency REAL,
    Temperature REAL,
    Humidity REAL,
    TriggerSource TEXT,
    ResolutionTime INTEGER,
    Status TEXT,
    AcknowledgedBy INTEGER,
    Comments TEXT,
    IsCritical INTEGER,
    MetadataBlob TEXT
);

INSERT INTO grid_automation_events VALUES (1,101,'2025-01-15T08:30:00','Overload',3,2001,'Load exceeded threshold',150.5,110.0,500.2,60.0,35.2,45.0,'Sensor',45,'Resolved',3001,'All clear',1,'blob1');
INSERT INTO grid_automation_events VALUES (2,102,'2025-01-16T14:12:00','VoltageDrop',2,2002,'Voltage dip detected',120.0,95.5,480.1,59.8,33.9,50.0,'SCADA',30,'Investigating',3002,'Pending analysis',0,'blob2');
INSERT INTO grid_automation_events VALUES (3,103,'2025-01-17T22:05:00','FrequencyShift',4,2003,'Frequency out of range',0.0,115.0,505.0,61.2,36.1,42.0,'PMU',60,'Resolved',3003,'Issue mitigated',1,'blob3');

-- Hydrogen fuel station performance metrics
CREATE TABLE hydrogen_fuel_station_metrics
(
    MetricID INTEGER PRIMARY KEY,
    StationID INTEGER,
    RecordDate TEXT,
    HydrogenVolume REAL,
    PressureBar REAL,
    TemperatureC REAL,
    DispenseCount INTEGER,
    EfficiencyPct REAL,
    O2Level REAL,
    ImpuritiesPPM REAL,
    EnergyConsumedKWh REAL,
    DowntimeMinutes INTEGER,
    MaintenanceFlag INTEGER,
    OperatorShiftID INTEGER,
    Notes TEXT,
    ComplianceScore REAL,
    AlertCode INTEGER,
    IsActive INTEGER,
    LocationCode TEXT,
    CapacityKg REAL
);

INSERT INTO hydrogen_fuel_station_metrics VALUES (1,501,'2025-02-01',1200.5,350.0,22.5,250,98.7,0.21,15.0,560.0,0,0,4001,'Normal operation',9.5,0,1,'HFS-NW',1500.0);
INSERT INTO hydrogen_fuel_station_metrics VALUES (2,502,'2025-02-02',1150.0,345.5,21.9,230,97.9,0.25,20.0,540.0,15,1,4002,'Minor leak detected',8.0,101,1,'HFS-SE',1450.0);
INSERT INTO hydrogen_fuel_station_metrics VALUES (3,503,'2025-02-03',1180.3,348.0,22.2,240,98.3,0.22,18.0,550.0,5,0,4003,'Routine check',9.0,0,1,'HFS-NE',1480.0);

-- Biomass plant daily output report
CREATE TABLE biomass_plant_output
(
    ReportID INTEGER PRIMARY KEY,
    PlantID INTEGER,
    ReportDate TEXT,
    SteamGenerationMW REAL,
    ElectricGenerationMW REAL,
    BiomassInputTons REAL,
    CO2EmissionTon REAL,
    WaterUsageM3 REAL,
    OperatingHours INTEGER,
    AvailabilityPct REAL,
    NetEnergyOutputMWh REAL,
    HeatRate REAL,
    MaintenanceHours INTEGER,
    GridConnectionStatus TEXT,
    FuelMoisturePct REAL,
    AshContentPct REAL,
    CarbonFootprintScore REAL,
    RegulationCompliance INTEGER,
    OperatorID INTEGER,
    Comments TEXT,
    DataSource TEXT
);

INSERT INTO biomass_plant_output VALUES (1,301,'2025-03-01',45.2,30.5,200.0,12.5,1500.0,24,95.0,732.0,5.9,2,'Connected',12.3,3.5,85.0,1,5001,'All systems nominal','SCADA');
INSERT INTO biomass_plant_output VALUES (2,302,'2025-03-02',44.8,30.0,198.5,12.3,1480.0,23,94.5,720.0,6.0,3,'Connected',12.0,3.6,84.5,1,5002,'Minor ash buildup','SCADA');
INSERT INTO biomass_plant_output VALUES (3,303,'2025-03-03',45.5,31.0,202.0,12.8,1520.0,24,96.0,744.0,5.8,1,'Connected',12.5,3.4,86.0,1,5003,'Optimized feed rate','SCADA');

-- Solar farm maintenance log
CREATE TABLE solar_farm_maintenance_log
(
    LogID INTEGER PRIMARY KEY,
    FarmID INTEGER,
    MaintenanceDate TEXT,
    PanelArrayID INTEGER,
    TechnicianID INTEGER,
    TaskDescription TEXT,
    DurationMinutes INTEGER,
    DowntimeMinutes INTEGER,
    IssueCode INTEGER,
    ResolvedFlag INTEGER,
    MaterialsUsed TEXT,
    CostUSD REAL,
    WeatherCondition TEXT,
    TemperatureC REAL,
    SolarIrradianceWm2 REAL,
    VoltageOutputV REAL,
    CurrentOutputA REAL,
    Notes TEXT,
    IsScheduled INTEGER,
    ComplianceCheck INTEGER
);

INSERT INTO solar_farm_maintenance_log VALUES (1,801,'2025-04-05',12,9001,'Cleaned panels',180,0,0,1,'CleaningSolution',150.0,'Sunny',25.0,800.0,500.0,30.0,'No issues observed',1,1);
INSERT INTO solar_farm_maintenance_log VALUES (2,802,'2025-04-06',13,9002,'Replaced inverter',240,15,101,1,'InverterModelX',1200.0,'PartlyCloudy',22.0,750.0,480.0,28.0,'Inverter fault resolved',0,1);
INSERT INTO solar_farm_maintenance_log VALUES (3,803,'2025-04-07',14,9003,'Tightened connections',90,0,0,1,'N/A',80.0,'Clear',20.0,820.0,510.0,31.0,'Routine check',1,1);

-- Wind turbine performance metrics
CREATE TABLE wind_turbine_performance
(
    PerfID INTEGER PRIMARY KEY,
    TurbineID INTEGER,
    Timestamp TEXT,
    WindSpeedMps REAL,
    RotorRPM REAL,
    PowerOutputKW REAL,
    BladePitchAngle REAL,
    YawAngle REAL,
    TemperatureC REAL,
    VibrationLevel REAL,
    LubricantLevel REAL,
    GeneratorTempC REAL,
    PowerFactor REAL,
    AvailabilityFlag INTEGER,
    MaintenanceDueFlag INTEGER,
    OperatorID INTEGER,
    SiteID INTEGER,
    EnergyProducedMWh REAL,
    FaultCode INTEGER,
    Notes TEXT,
    DataQualityScore REAL
);

INSERT INTO wind_turbine_performance VALUES (1,1101,'2025-05-01T10:00:00',12.5,15.2,2500.0,2.5,180.0,15.0,0.02,80.0,55.0,0.98,1,0,6001,301,5.0,0,'Normal operation',0.99);
INSERT INTO wind_turbine_performance VALUES (2,1102,'2025-05-01T10:05:00',13.0,15.5,2600.0,2.4,182.0,16.0,0.03,78.0,56.0,0.97,1,0,6002,301,5.2,0,'Normal operation',0.98);
INSERT INTO wind_turbine_performance VALUES (3,1103,'2025-05-01T10:10:00',11.8,14.9,2400.0,2.6,179.0,14.5,0.025,79.0,54.5,0.99,1,0,6003,301,4.8,0,'Normal operation',0.97);

-- Electric vehicle fleet register
CREATE TABLE electric_vehicle_fleet_register
(
    VehicleID INTEGER PRIMARY KEY,
    VIN TEXT,
    Make TEXT,
    Model TEXT,
    Year INTEGER,
    BatteryCapacitykWh REAL,
    RangeKm REAL,
    CurrentSoCPct INTEGER,
    Status TEXT,
    AcquisitionDate TEXT,
    LeaseTermMonths INTEGER,
    LeaseCompany TEXT,
    PurchasePriceUSD REAL,
    LocationDepotID INTEGER,
    AssignedDriverID INTEGER,
    MaintenanceCycleKm INTEGER,
    LastServiceDate TEXT,
    WarrantyExpDate TEXT,
    InsurancePolicyID INTEGER,
    Notes TEXT
);

INSERT INTO electric_vehicle_fleet_register VALUES (1,'1HGCM82633A004352','Tesla','Model3',2022,75.0,420.0,85,'Active','2022-06-15',36,'LeaseCoA',45000.0,101,201,15000,'2024-06-10','2025-06-15',3001,'Monthly rotation');
INSERT INTO electric_vehicle_fleet_register VALUES (2,'2HGCM82633B005463','Nissan','Leaf',2021,40.0,240.0,70,'Active','2021-09-20',24,'LeaseCoB',30000.0,102,202,12000,'2023-09-05','2024-09-20',3002,'Battery health monitoring');
INSERT INTO electric_vehicle_fleet_register VALUES (3,'3HGCM82633C006574','Chevrolet','Bolt',2023,66.0,380.0,95,'Active','2023-01-10',48,'LeaseCoC',38000.0,103,203,18000,'2024-12-01','2026-01-10',3003,'Assigned to logistics');

-- Load balancing schedule
CREATE TABLE load_balancing_schedule
(
    ScheduleID INTEGER PRIMARY KEY,
    RegionID INTEGER,
    EffectiveStart TEXT,
    EffectiveEnd TEXT,
    PeakLoadMW REAL,
    OffPeakLoadMW REAL,
    LoadShiftPercentage REAL,
    ControlStrategy TEXT,
    TriggerEvent TEXT,
    OperatorID INTEGER,
    ApprovedBy INTEGER,
    Comments TEXT,
    IsActive INTEGER,
    CreatedDate TEXT,
    UpdatedDate TEXT,
    AdjustmentFactor REAL,
    PriorityLevel INTEGER,
    ForecastedLoadMW REAL,
    ActualLoadMW REAL,
    DeviationPct REAL
);

INSERT INTO load_balancing_schedule VALUES (1,10,'2025-06-01','2025-06-30',1200.0,800.0,15.0,'Dynamic', 'HighDemand',4001,5001,'Initial schedule',1,'2025-05-20','2025-05-21',1.05,2,1000.0,995.0,0.5);
INSERT INTO load_balancing_schedule VALUES (2,11,'2025-07-01','2025-07-31',1300.0,850.0,12.0,'Static','HeatWave',4002,5002,'Adjusted for forecast',1,'2025-06-15','2025-06-16',1.10,1,1150.0,1145.0,0.43);
INSERT INTO load_balancing_schedule VALUES (3,12,'2025-08-01','2025-08-31',1150.0,750.0,10.0,'Hybrid','Maintenance',4003,5003,'Seasonal adjustment',1,'2025-07-10','2025-07-11',0.98,3,950.0,960.0,-1.05);

-- Microgrid battery inventory
CREATE TABLE microgrid_battery_inventory
(
    BatteryID INTEGER PRIMARY KEY,
    MicrogridID INTEGER,
    SerialNumber TEXT,
    CapacityKWh REAL,
    StateOfHealthPct INTEGER,
    InstallationDate TEXT,
    LastInspectionDate TEXT,
    Manufacturer TEXT,
    WarrantyExpDate TEXT,
    CurrentVoltageV REAL,
    CurrentCurrentA REAL,
    TemperatureC REAL,
    LocationZone TEXT,
    IsActive INTEGER,
    DecommissionDate TEXT,
    Notes TEXT,
    OwnerCompany TEXT,
    FundingSource TEXT,
    ComplianceStatus TEXT,
    LastCycleCount INTEGER
);

INSERT INTO microgrid_battery_inventory VALUES (1,201,'BAT-001-A',500.0,92,'2022-01-15','2024-12-01','PowerCell','2027-01-15',480.0,250.0,30.0,'ZoneA',1,NULL,'No issues','MetroEnergy','Grant2022','Compliant',1500);
INSERT INTO microgrid_battery_inventory VALUES (2,202,'BAT-002-B',450.0,88,'2021-06-20','2024-11-20','EnergyStor','2026-06-20',430.0,230.0,31.5,'ZoneB',1,NULL,'Slight degradation','CityGrid','Bond2021','Compliant',1800);
INSERT INTO microgrid_battery_inventory VALUES (3,203,'BAT-003-C',480.0,90,'2023-03-10','2024-12-15','VoltTech','2028-03-10',460.0,240.0,29.8,'ZoneC',1,NULL,'Routine check','UtilityCo','Equity2023','Compliant',1200);

-- Charging price history
CREATE TABLE charging_price_history
(
    PriceID INTEGER PRIMARY KEY,
    StationID INTEGER,
    Date TEXT,
    Time TEXT,
    PricePerKWh REAL,
    Currency TEXT,
    PricingModel TEXT,
    PeakPeriodFlag INTEGER,
    DemandCharge REAL,
    DiscountPct REAL,
    TaxRatePct REAL,
    OperatorID INTEGER,
    Notes TEXT,
    IsPromotional INTEGER,
    EffectiveFrom TEXT,
    EffectiveTo TEXT,
    RegionCode TEXT,
    LoadLevelMWh REAL,
    VoltageLevelV REAL,
    CurrentLevelA REAL,
    SourceSystem TEXT
);

INSERT INTO charging_price_history VALUES (1,601,'2025-09-01','08:00',0.30,'USD','Fixed',0,0.00,0.0,5.0,6001,'Standard rate',0,'2025-09-01','2025-12-31','NW',150.0,400.0,10.0,'ERP');
INSERT INTO charging_price_history VALUES (2,602,'2025-09-01','18:00',0.45,'USD','TimeOfUse',1,0.05,10.0,5.0,6002,'Peak hour surcharge',0,'2025-09-01','2025-12-31','SE',200.0,410.0,11.0,'ERP');
INSERT INTO charging_price_history VALUES (3,603,'2025-10-01','12:00',0.25,'USD','Discounted',0,0.00,15.0,5.0,6003,'Promotional summer discount',1,'2025-10-01','2025-10-31','NE',180.0,405.0,10.5,'CRM');

-- Renewable energy certificate claims
CREATE TABLE renewable_energy_certificate_claims
(
    ClaimID INTEGER PRIMARY KEY,
    CertificateID TEXT,
    Issuer TEXT,
    IssueDate TEXT,
    QuantityMWh REAL,
    OwnerEntity TEXT,
    ClaimStatus TEXT,
    VerificationCode TEXT,
    ApprovedBy INTEGER,
    ApprovalDate TEXT,
    RejectionReason TEXT,
    Comments TEXT,
    AuditTrail TEXT,
    ExpirationDate TEXT,
    RenewalFlag INTEGER,
    MarketPriceUSD REAL,
    Currency TEXT,
    Region TEXT,
    ComplianceIndicator INTEGER,
    DataProvider TEXT
);

INSERT INTO renewable_energy_certificate_claims VALUES (1,'REC-1001','GreenCert','2025-01-15',500.0,'MetroPower','Pending','VER-ABC123',7001,NULL,NULL,'Awaiting approval','Log1','2026-01-15',0,25.0,'USD','Midwest',0,'DataHub');
INSERT INTO renewable_energy_certificate_claims VALUES (2,'REC-1002','EcoCert','2025-02-20',300.0,'CityUtility','Approved','VER-DEF456',7002,'2025-03-01',NULL,'Approved without issues','Log2','2026-02-20',1,22.5,'USD','Southeast',1,'DataHub');
INSERT INTO renewable_energy_certificate_claims VALUES (3,'REC-1003','SolarTrust','2025-03-10',450.0,'SolarInc','Rejected','VER-GHI789',7003,'2025-03-15','Insufficient documentation','Rejected due to missing data','Log3','2026-03-10',0,24.0,'USD','Northwest',0,'DataHub');