-- Table: Regional Distribution Centers
CREATE TABLE regional_distribution_centers (
    CenterID INTEGER PRIMARY KEY,
    CenterName TEXT,
    Region TEXT,
    Country TEXT,
    AddressLine1 TEXT,
    AddressLine2 TEXT,
    City TEXT,
    State TEXT,
    PostalCode TEXT,
    Latitude REAL,
    Longitude REAL,
    OpeningDate DATE,
    CapacityCubicMeters INTEGER,
    OperationalStatus TEXT,
    ManagerEmployeeID INTEGER,
    ContactPhone TEXT,
    ContactEmail TEXT,
    NumLoadingDocks INTEGER,
    AvgDailyShipments INTEGER,
    SecurityLevel INTEGER
);
INSERT INTO regional_distribution_centers VALUES (1, 'North Hub', 'North', 'USA', '123 Main St', '', 'Springfield', 'IL', '62701', 39.78, -89.64, '2015-06-01', 50000, 'Active', 101, '5551234567', 'northhub@example.com', 8, 150, 3);
INSERT INTO regional_distribution_centers VALUES (2, 'South Depot', 'South', 'USA', '456 Oak Ave', '', 'Albany', 'NY', '12207', 42.65, -73.75, '2018-09-15', 75000, 'Active', 102, '5559876543', 'southdepot@example.com', 10, 200, 4);
INSERT INTO regional_distribution_centers VALUES (3, 'Midwest Facility', 'Midwest', 'USA', '789 Pine Rd', 'Suite 200', 'Columbus', 'OH', '43215', 39.96, -82.99, '2020-01-20', 60000, 'Planned', 103, '5555551212', 'midwestfac@example.com', 6, 120, 2);

-- Table: Transportation Infrastructure Projects
CREATE TABLE transportation_infrastructure_projects (
    ProjectID INTEGER PRIMARY KEY,
    ProjectName TEXT,
    ProjectType TEXT,
    Region TEXT,
    Country TEXT,
    StartDate DATE,
    PlannedCompletionDate DATE,
    ActualCompletionDate DATE,
    BudgetMillions REAL,
    ExpenditureMillions REAL,
    ContractorCompany TEXT,
    LeadEngineerID INTEGER,
    EstimatedTrafficImpact INTEGER,
    EnvironmentalImpactScore REAL,
    Status TEXT,
    FundingSource TEXT,
    PublicConsultations INTEGER,
    PermitNumber TEXT,
    ProjectManagerID INTEGER,
    PrimaryMaterial TEXT,
    LengthKm REAL,
    NumberOfLanes INTEGER,
    RiskLevel INTEGER
);
INSERT INTO transportation_infrastructure_projects VALUES (1001, 'River Bridge Upgrade', 'Bridge', 'West', 'USA', '2021-03-01', '2024-12-31', NULL, 85.5, 30.2, 'BridgeCo', 201, 25000, 3.7, 'InProgress', 'FederalGrant', 5, 'PERM12345', 301, 'Steel', 2.5, 4, 2);
INSERT INTO transportation_infrastructure_projects VALUES (1002, 'City Tunnel Expansion', 'Tunnel', 'East', 'USA', '2019-07-15', '2023-06-30', '2023-05-20', 120.0, 115.8, 'TunnelBuilders', 202, 40000, 4.1, 'Completed', 'StateFunds', 8, 'PERM67890', 302, 'Concrete', 5.0, 6, 1);
INSERT INTO transportation_infrastructure_projects VALUES (1003, 'Northern Highway Extension', 'Road', 'North', 'USA', '2022-01-10', '2025-11-15', NULL, 95.0, 20.0, 'RoadWorks Inc', 203, 15000, 2.9, 'Planned', 'PrivateInvestment', 3, 'PERM11223', 303, 'Asphalt', 12.3, 2, 3);

-- Table: Hydroelectric Plant Operations
CREATE TABLE hydroelectric_plant_operations (
    PlantID INTEGER PRIMARY KEY,
    PlantName TEXT,
    River TEXT,
    Country TEXT,
    Region TEXT,
    CapacityMW REAL,
    CommissionDate DATE,
    OwnerCompany TEXT,
    OperatorCompany TEXT,
    TurbineCount INTEGER,
    AvgAnnualGenerationGWh REAL,
    WaterFlowCubicMPerSec REAL,
    DamHeightMeters REAL,
    ReservoirCapacityMCM REAL,
    EnvironmentalComplianceStatus TEXT,
    MaintenanceSchedule TEXT,
    LastInspectionDate DATE,
    EmissionCO2TonsPerYear REAL,
    StaffCount INTEGER,
    SafetyAuditScore REAL
);
INSERT INTO hydroelectric_plant_operations VALUES (2001, 'Clearwater Plant', 'Clear River', 'USA', 'Northwest', 150.0, '2005-04-12', 'PowerGen Corp', 'PowerOps Ltd', 4, 620.5, 350.0, 45.0, 1200.0, 'Compliant', 'Annual', '2023-02-18', 0.0, 85, 9.2);
INSERT INTO hydroelectric_plant_operations VALUES (2002, 'Summit Dam', 'Summit Creek', 'USA', 'Mountain', 200.0, '2010-09-30', 'EnergyHoldings', 'OpsMasters', 6, 950.0, 500.0, 60.0, 1800.0, 'Compliant', 'BiAnnual', '2022-11-05', 0.0, 110, 9.5);
INSERT INTO hydroelectric_plant_operations VALUES (2003, 'Riverbend Station', 'Riverbend', 'USA', 'Midwest', 120.0, '2018-06-20', 'GreenPower LLC', 'RiverOps', 3, 480.0, 280.0, 38.0, 950.0, 'Pending', 'Annual', '2023-05-10', 0.0, 70, 8.7);

-- Table: Fleet Parking Zones
CREATE TABLE fleet_parking_zones (
    ZoneID INTEGER PRIMARY KEY,
    ZoneName TEXT,
    LocationDescription TEXT,
    Latitude REAL,
    Longitude REAL,
    CapacitySpots INTEGER,
    ReservedFor TEXT,
    HourlyRate REAL,
    DailyRate REAL,
    OvernightRate REAL,
    SecurityLevel INTEGER,
    LightingLevel INTEGER,
    PaymentMethodSupported TEXT,
    AccessControlType TEXT,
    SensorCount INTEGER,
    AverageOccupancyPercent REAL,
    LastMaintenanceDate DATE,
    OperatorCompany TEXT,
    ZoneStatus TEXT,
    MaxVehicleHeightMeters REAL,
    MaxVehicleLengthMeters REAL,
    EnforcementAgency TEXT
);
INSERT INTO fleet_parking_zones VALUES (301, 'East Lot A', 'Near Dock 4', 40.7128, -74.0060, 120, 'Electric', 2.5, 15.0, 40.0, 3, 4, 'Card,App', 'Gate', 20, 68.5, '2023-03-01', 'ParkCo', 'Active', 2.5, 6.0, 'TransitPolice');
INSERT INTO fleet_parking_zones VALUES (302, 'West Lot B', 'Behind Warehouse', 34.0522, -118.2437, 80, 'None', 3.0, 18.0, 45.0, 2, 3, 'Card', 'Barrier', 15, 55.2, '2023-01-20', 'ParkCo', 'Active', 2.2, 5.5, 'CityPolice');
INSERT INTO fleet_parking_zones VALUES (303, 'North Subzone', 'Northside Campus', 41.8781, -87.6298, 150, 'Hybrid', 2.0, 12.0, 35.0, 4, 5, 'App', 'Ticket', 25, 72.0, '2023-02-10', 'ParkCo', 'Planned', 2.8, 6.5, 'MetroPolice');

-- Table: Supplier Logistics Hubs
CREATE TABLE supplier_logistics_hubs (
    HubID INTEGER PRIMARY KEY,
    HubName TEXT,
    SupplierID INTEGER,
    Country TEXT,
    Region TEXT,
    City TEXT,
    Address TEXT,
    Latitude REAL,
    Longitude REAL,
    DockCount INTEGER,
    StorageCapacityCubicMeters INTEGER,
    RefrigeratedCapacityCubicMeters INTEGER,
    OperationalHours TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    HubManagerID INTEGER,
    SecurityClearanceLevel INTEGER,
    LastSafetyAuditDate DATE,
    Active BOOLEAN,
    LogisticsSoftwareVersion TEXT
);
INSERT INTO supplier_logistics_hubs VALUES (401, 'Alpha Hub', 5001, 'USA', 'Southwest', 'Phoenix', '2500 West Ave', 33.4484, -112.0740, 12, 300000, 50000, '24/7', '5558001111', 'alpha@example.com', 601, 4, '2023-04-15', 1, 'v3.2');
INSERT INTO supplier_logistics_hubs VALUES (402, 'Beta Hub', 5002, 'USA', 'Northeast', 'Boston', '123 Harbor St', 42.3601, -71.0589, 9, 200000, 30000, '6am-10pm', '5558002222', 'beta@example.com', 602, 3, '2023-02-28', 1, 'v3.1');
INSERT INTO supplier_logistics_hubs VALUES (403, 'Gamma Hub', 5003, 'USA', 'Midwest', 'Kansas City', '77 River Rd', 39.0997, -94.5786, 10, 250000, 40000, '24/7', '5558003333', 'gamma@example.com', 603, 5, '2023-03-20', 0, 'v3.0');

-- Table: Municipal Public Service Budget
CREATE TABLE municipal_public_service_budget (
    FiscalYear INTEGER,
    MunicipalityID INTEGER,
    TotalBudgetMillions REAL,
    RevenueSources TEXT,
    ExpenditureEducation REAL,
    ExpenditureHealthcare REAL,
    ExpenditureInfrastructure REAL,
    ExpenditurePublicSafety REAL,
    ExpenditureSanitation REAL,
    ExpenditureParks REAL,
    ExpenditureCulture REAL,
    CapitalProjectsCount INTEGER,
    DebtOutstandingMillions REAL,
    GrantFundingMillions REAL,
    TaxRevenueMillions REAL,
    OtherIncomeMillions REAL,
    BudgetApprovalDate DATE,
    ApprovedBy TEXT,
    RevisionNumber INTEGER,
    Notes TEXT,
    AdjustedBudgetMillions REAL,
    DeficitSurplusMillions REAL,
    BudgetStatus TEXT
);
INSERT INTO municipal_public_service_budget VALUES (2022, 101, 250.0, 'Taxes,Fees', 45.0, 60.0, 30.0, 25.0, 10.0, 5.0, 8.0, 12, 40.0, 15.0, 180.0, 5.0, '2022-03-01', 'MayorSmith', 1, 'Initial allocation', 250.0, 0.0, 'Approved');
INSERT INTO municipal_public_service_budget VALUES (2023, 101, 260.0, 'Taxes,Fees,Grants', 46.0, 62.0, 32.0, 26.0, 11.0, 5.5, 9.0, 13, 38.0, 20.0, 185.0, 6.0, '2023-03-05', 'MayorSmith', 2, 'Revised after grant', 262.0, 2.0, 'Approved');
INSERT INTO municipal_public_service_budget VALUES (2024, 101, 255.0, 'Taxes,Fees', 44.0, 61.0, 31.0, 24.0, 10.5, 5.2, 8.5, 11, 39.0, 16.0, 182.0, 5.5, '2024-03-10', 'MayorSmith', 1, 'Projected', 255.0, 0.0, 'Proposed');

-- Table: Air Quality Monitoring Network
CREATE TABLE air_quality_monitoring_network (
    StationID INTEGER PRIMARY KEY,
    StationName TEXT,
    Latitude REAL,
    Longitude REAL,
    ElevationMeters REAL,
    InstallationDate DATE,
    OwnerAgency TEXT,
    SensorModel TEXT,
    PM25LimitMicrograms REAL,
    PM10LimitMicrograms REAL,
    NO2LimitPPB REAL,
    O3LimitPPB REAL,
    CO2LevelPPM REAL,
    TemperatureCelsius REAL,
    HumidityPercent REAL,
    DataTransmissionMethod TEXT,
    MaintenanceIntervalDays INTEGER,
    LastMaintenanceDate DATE,
    OperationalStatus TEXT,
    DataQualityScore REAL
);
INSERT INTO air_quality_monitoring_network VALUES (501, 'Downtown Station', 38.8951, -77.0364, 15.0, '2019-05-20', 'EnviroAgency', 'AQM-1000', 35.0, 80.0, 40.0, 60.0, 410.0, 22.5, 55.0, 'Cellular', 90, '2023-01-15', 'Active', 9.2);
INSERT INTO air_quality_monitoring_network VALUES (502, 'Uptown Station', 38.9000, -77.0400, 20.0, '2020-08-10', 'EnviroAgency', 'AQM-2000', 30.0, 70.0, 35.0, 55.0, 395.0, 21.0, 58.0, 'WiFi', 120, '2023-02-20', 'Active', 9.0);
INSERT INTO air_quality_monitoring_network VALUES (503, 'Suburban Station', 38.8800, -77.0200, 10.0, '2021-03-05', 'EnviroAgency', 'AQM-1500', 32.0, 75.0, 38.0, 58.0, 400.0, 23.0, 60.0, 'Satellite', 180, '2023-03-30', 'Maintenance', 8.5);

-- Table: Urban Mobility Device Registry
CREATE TABLE urban_mobility_device_registry (
    DeviceID INTEGER PRIMARY KEY,
    DeviceType TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    InstallationDate DATE,
    LocationDescription TEXT,
    Latitude REAL,
    Longitude REAL,
    PowerSource TEXT,
    BatteryCapacityWh REAL,
    FirmwareVersion TEXT,
    ConnectivityProtocol TEXT,
    ServiceProvider TEXT,
    MaintenanceContractID INTEGER,
    LastServiceDate DATE,
    WarrantyExpirationDate DATE,
    Status TEXT,
    AssociatedZoneID INTEGER,
    OwnerDepartment TEXT,
    CalibrationDate DATE,
    CalibrationDueDays INTEGER,
    DeploymentPhase TEXT
);
INSERT INTO urban_mobility_device_registry VALUES (601, 'Ebike', 'MobilityCo', 'EB-300', '2022-04-01', 'Park Center', 40.7306, -73.9352, 'Battery', 500.0, 'v1.4', 'LTE', 'MobilityNet', 701, '2023-04-10', '2025-04-01', 'Active', 301, 'Transport', '2023-04-10', 180, 'Phase1');
INSERT INTO urban_mobility_device_registry VALUES (602, 'Scooter', 'RideTech', 'SC-150', '2022-06-15', 'Downtown Plaza', 40.7128, -74.0060, 'Battery', 250.0, 'v2.0', '5G', 'RideNet', 702, '2023-05-05', '2024-06-15', 'Active', 302, 'Transport', '2023-05-05', 150, 'Phase1');
INSERT INTO urban_mobility_device_registry VALUES (603, 'SmartLock', 'SecureLock', 'SL-01', '2021-09-20', 'Metro Station', 40.7500, -73.9900, 'Battery', 100.0, 'v3.1', 'BLE', 'SecureNet', 703, '2023-06-01', '2024-09-20', 'Active', 303, 'Security', '2023-06-01', 365, 'Phase2');

-- Table: Water Treatment Plant Operations
CREATE TABLE water_treatment_plant_operations (
    PlantID INTEGER PRIMARY KEY,
    PlantName TEXT,
    City TEXT,
    State TEXT,
    Country TEXT,
    CapacityMGD REAL,
    OwnerCompany TEXT,
    OperatorCompany TEXT,
    TreatmentProcess TEXT,
    SourceWaterBody TEXT,
    AvgDailyInputMG REAL,
    AvgDailyOutputMG REAL,
    EnergyConsumptionMWh REAL,
    ChemicalUsageKgPerDay REAL,
    StaffCount INTEGER,
    LastInspectionDate DATE,
    ComplianceStatus TEXT,
    OperatingHoursPerDay INTEGER,
    NoiseLevelDbA REAL,
    SludgeDisposalMethod TEXT,
    MaintenanceSchedule TEXT,
    UpgradePlannedDate DATE
);
INSERT INTO water_treatment_plant_operations VALUES (701, 'Blue River Plant', 'Greenville', 'TX', 'USA', 25.0, 'AquaCorp', 'AquaOps', 'Reverse Osmosis', 'Blue River', 600.0, 590.0, 1500.0, 80.0, 45, '2023-02-12', 'Compliant', 24, 68.0, 'Landfill', 'Quarterly', '2025-05-01');
INSERT INTO water_treatment_plant_operations VALUES (702, 'Silver Lake Plant', 'Lakeview', 'CA', 'USA', 30.0, 'WaterWorks Inc', 'WaterOps', 'Filtration', 'Silver Lake', 720.0, 710.0, 1800.0, 95.0, 55, '2023-01-20', 'Compliant', 24, 70.0, 'Incineration', 'BiAnnual', '2026-08-15');
INSERT INTO water_treatment_plant_operations VALUES (703, 'Riverbend Plant', 'Riverton', 'FL', 'USA', 20.0, 'ClearWater LLC', 'ClearOps', 'UV Treatment', 'Riverbend', 480.0, 470.0, 1200.0, 60.0, 38, '2023-03-05', 'Pending', 20, 65.0, 'Composting', 'Annual', '2024-11-30');

-- Table: Waste Management Facility Metrics
CREATE TABLE waste_management_facility_metrics (
    FacilityID INTEGER PRIMARY KEY,
    FacilityName TEXT,
    FacilityType TEXT,
    City TEXT,
    State TEXT,
    Country TEXT,
    CapacityTonsPerDay REAL,
    AvgDailyIntakeTons REAL,
    AvgDailyProcessingTons REAL,
    RecyclingRatePercent REAL,
    LandfillRatePercent REAL,
    HazardousWasteRatePercent REAL,
    EnergyRecoveryMWh REAL,
    EmissionsCO2TonsPerYear REAL,
    StaffCount INTEGER,
    OperatingShiftCount INTEGER,
    LicenseNumber TEXT,
    ComplianceAuditScore REAL,
    LastAuditDate DATE,
    OwnerCompany TEXT,
    OperatorCompany TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    OperationalStatus TEXT,
    OpeningDate DATE
);
INSERT INTO waste_management_facility_metrics VALUES (801, 'Northside Waste Facility', 'Landfill', 'Springfield', 'IL', 'USA', 500.0, 450.0, 440.0, 12.5, 80.0, 7.5, 30.0, 250.0, 120, 3, 'LIC12345', 88.5, '2023-02-28', 'EcoWaste Corp', 'EcoOps Ltd', '5551112222', 'northwaste@example.com', 'Active', '2010-07-15');
INSERT INTO waste_management_facility_metrics VALUES (802, 'Eastside Recycling Center', 'Recycling', 'Columbus', 'OH', 'USA', 300.0, 280.0, 275.0, 85.0, 10.0, 5.0, 45.0, 120.0, 80, 2, 'LIC67890', 91.2, '2023-03-10', 'GreenCycle Inc', 'GreenOps LLC', '5553334444', 'eastrecycle@example.com', 'Active', '2015-03-20');
INSERT INTO waste_management_facility_metrics VALUES (803, 'Westside Hazardous Waste Plant', 'Hazardous', 'Madison', 'WI', 'USA', 50.0, 45.0, 44.0, 5.0, 90.0, 5.0, 20.0, 300.0, 40, 1, 'LIC54321', 84.0, '2023-01-15', 'SafeHazard Corp', 'SafeOps Ltd', '5555556666', 'westhazard@example.com', 'Active', '2012-11-05');