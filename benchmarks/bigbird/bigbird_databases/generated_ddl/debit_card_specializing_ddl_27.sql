-- Parking zone performance metrics
CREATE TABLE parking_zone_metrics
(
    ZoneID INTEGER PRIMARY KEY,
    City TEXT,
    ZoneName TEXT,
    Capacity INTEGER,
    OccupancyRate REAL,
    AvgStayMinutes INTEGER,
    PeakHourStart TEXT,
    PeakHourEnd TEXT,
    WeekendUsage REAL,
    WeekdayUsage REAL,
    SensorCount INTEGER,
    CameraCount INTEGER,
    LightingLevel REAL,
    EnforcementLevel TEXT,
    LastAuditDate DATE,
    ViolationCount INTEGER,
    Revenue REAL,
    MaintenanceScore REAL,
    WeatherImpactFactor REAL,
    WiFiAvailability INTEGER,
    NearbyAttraction TEXT,
    PublicTransportLink TEXT
);

INSERT INTO parking_zone_metrics VALUES (1, 'Metropolis', 'DowntownCentral', 500, 0.78, 45, '08:00', '18:00', 0.62, 0.85, 12, 4, 0.92, 'Strict', '2023-11-15', 23, 12500.50, 0.88, 1.05, 1, 'CityMall', 'MetroLineA');
INSERT INTO parking_zone_metrics VALUES (2, 'Gotham', 'WestSide', 300, 0.55, 30, '07:00', '19:00', 0.48, 0.60, 8, 2, 0.75, 'Moderate', '2023-10-20', 12, 7200.00, 0.79, 0.97, 0, 'TechPark', 'BusRoute5');
INSERT INTO parking_zone_metrics VALUES (3, 'StarCity', 'RiverFront', 250, 0.90, 60, '09:00', '17:00', 0.70, 0.95, 10, 3, 0.85, 'Strict', '2023-12-01', 30, 13800.75, 0.92, 1.10, 1, 'RiverWalk', 'TramLine2');

-- Hydroponic farm daily yields
CREATE TABLE hydroponic_farm_yields
(
    RecordID INTEGER PRIMARY KEY,
    FarmID INTEGER,
    CropType TEXT,
    HarvestDate DATE,
    YieldKg REAL,
    NutrientSolutionBatch TEXT,
    PhLevel REAL,
    ECLevel REAL,
    LightHours INTEGER,
    TemperatureC REAL,
    HumidityPercent REAL,
    CO2ppm INTEGER,
    WaterUsageLiters REAL,
    EnergyConsumptionKWh REAL,
    LaborHours INTEGER,
    PestIncidents INTEGER,
    DiseaseIncidents INTEGER,
    HarvestMethod TEXT,
    PackagingType TEXT,
    ShippingPartner TEXT,
    DestinationMarket TEXT,
    QualityGrade TEXT
);

INSERT INTO hydroponic_farm_yields VALUES (101, 10, 'Lettuce', '2023-11-20', 1500.5, 'BatchA1', 5.8, 1.2, 16, 22.5, 65.0, 800, 1200.3, 350.0, 40, 0, 0, 'Hand', 'Box', 'FreshLogistics', 'Local', 'A');
INSERT INTO hydroponic_farm_yields VALUES (102, 12, 'Basil', '2023-11-21', 800.0, 'BatchB3', 6.0, 1.1, 14, 21.0, 60.0, 750, 900.0, 280.0, 30, 1, 0, 'Machine', 'Bag', 'GreenChain', 'Export', 'B');
INSERT INTO hydroponic_farm_yields VALUES (103, 11, 'Spinach', '2023-11-22', 1320.75, 'BatchC2', 5.9, 1.15, 15, 23.0, 68.0, 820, 1100.5, 320.0, 35, 0, 2, 'Hand', 'Crate', 'AgriTransport', 'Regional', 'A');

-- Satellite imagery metadata catalog
CREATE TABLE satellite_imagery_metadata
(
    ImageID INTEGER PRIMARY KEY,
    SatelliteName TEXT,
    CaptureDate DATE,
    CaptureTime TEXT,
    SensorType TEXT,
    ResolutionMeters REAL,
    CloudCoverPercent REAL,
    SunElevationDeg REAL,
    SunAzimuthDeg REAL,
    OffNadirAngleDeg REAL,
    ProcessingLevel TEXT,
    TileRow INTEGER,
    TileColumn INTEGER,
    DataFormat TEXT,
    FileSizeMB REAL,
    BandCount INTEGER,
    UTMZone INTEGER,
    LatitudeCenter REAL,
    LongitudeCenter REAL,
    ProjectCode TEXT,
    AcquisitionMode TEXT,
    OrbitNumber INTEGER
);

INSERT INTO satellite_imagery_metadata VALUES (5001, 'Sentinel2', '2023-11-10', '10:15', 'Multispectral', 10.0, 12.5, 45.2, 130.0, 0.0, 'L2A', 15, 22, 'GeoTIFF', 250.7, 13, 33, 38.8951, -77.0364, 'URBAN01', 'Nadir', 12456);
INSERT INTO satellite_imagery_metadata VALUES (5002, 'Landsat8', '2023-11-12', '14:30', 'Multispectral', 30.0, 5.0, 50.0, 140.0, 0.0, 'L1TP', 8, 11, 'GeoTIFF', 340.2, 11, 15, 34.0522, -118.2437, 'COASTAL02', 'Nadir', 98765);
INSERT INTO satellite_imagery_metadata VALUES (5003, 'WorldView3', '2023-11-15', '09:05', 'Panchromatic', 0.31, 0.8, 60.3, 150.0, 5.0, 'L1B', 3, 4, 'JPEG2000', 1200.5, 8, 12, 51.5074, -0.1278, 'URBAN03', 'Oblique', 54321);

-- Public Wi‑Fi hotspot registry
CREATE TABLE public_wifi_hotspots
(
    HotspotID INTEGER PRIMARY KEY,
    ProviderName TEXT,
    LocationName TEXT,
    City TEXT,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    Band TEXT,
    MaxSpeedMbps REAL,
    AvgUserCount INTEGER,
    Secure BOOLEAN,
    OpenHours TEXT,
    PowerSource TEXT,
    MaintenanceContractID INTEGER,
    FirmwareVersion TEXT,
    EncryptionType TEXT,
    MonthlyDataCapGB REAL,
    CurrentLoadPercent REAL,
    ServiceLevelAgreement TEXT,
    FundingSource TEXT,
    InstallationCostUSD REAL,
    LastInspectionDate DATE
);

INSERT INTO public_wifi_hotspots VALUES (9001, 'CityNet', 'MainLibrary', 'Metropolis', 40.7128, -74.0060, '2022-05-10', '5GHz', 150.0, 120, 1, '08:00-22:00', 'Solar', 3001, 'v2.3.1', 'WPA2', 500.0, 45.0, 'Gold', 'Municipal', 25000.0, '2023-10-05');
INSERT INTO public_wifi_hotspots VALUES (9002, 'OpenLink', 'CentralPark', 'Gotham', 41.8781, -87.6298, '2021-09-15', '2.4GHz', 100.0, 80, 0, '06:00-23:00', 'Mains', 3002, 'v1.9.4', 'None', 300.0, 30.0, 'Silver', 'Private', 18000.0, '2023-09-20');
INSERT INTO public_wifi_hotspots VALUES (9003, 'MetroWiFi', 'TransitHub', 'StarCity', 34.0522, -118.2437, '2023-01-20', 'DualBand', 200.0, 150, 1, '24/7', 'Mains', 3003, 'v3.0.0', 'WPA3', 1000.0, 60.0, 'Platinum', 'PublicPrivate', 32000.0, '2023-11-01');

-- Urban garden planning records
CREATE TABLE urban_garden_plans
(
    PlanID INTEGER PRIMARY KEY,
    GardenName TEXT,
    Neighborhood TEXT,
    City TEXT,
    PlotAreaSqM REAL,
    SoilType TEXT,
    IrrigationMethod TEXT,
    PlantingSeason TEXT,
    ExpectedYieldKg REAL,
    VolunteerCount INTEGER,
    FundingAmountUSD REAL,
    GrantProvider TEXT,
    DesignArchitect TEXT,
    InstallationStartDate DATE,
    InstallationEndDate DATE,
    MaintenanceSchedule TEXT,
    CompostSource TEXT,
    WaterSource TEXT,
    AccessibilityScore REAL,
    CommunityEngagementScore REAL,
    PublicTransportProximity TEXT,
    NoiseLevelDecibel REAL,
    LightPollutionLevel REAL
);

INSERT INTO urban_garden_plans VALUES (2001, 'RosePatch', 'OldTown', 'Metropolis', 350.0, 'Loam', 'Drip', 'Spring', 1200.5, 25, 15000.0, 'GreenFund', 'AliceDesigns', '2023-03-01', '2023-04-15', 'Monthly', 'LocalCompost', 'Municipal', 8.5, 9.0, 'BusStop', 55.0, 12.0);
INSERT INTO urban_garden_plans VALUES (2002, 'HerbCorner', 'RiverSide', 'Gotham', 200.0, 'Sandy', 'Sprinkler', 'Summer', 800.0, 15, 9000.0, 'EcoGrant', 'BobLandscapes', '2023-05-10', '2023-06-05', 'BiWeekly', 'CommunityGarden', 'Rainwater', 9.2, 8.7, 'MetroStation', 60.5, 10.5);
INSERT INTO urban_garden_plans VALUES (2003, 'VeggieLane', 'NorthHill', 'StarCity', 500.0, 'Clay', 'Surface', 'Fall', 2500.0, 40, 22000.0, 'UrbanAgri', 'CathyPlans', '2023-07-20', '2023-09-01', 'Weekly', 'FoodBank', 'Well', 7.8, 9.5, 'BikeLane', 58.0, 11.0);

-- Bike‑share maintenance log
CREATE TABLE bike_share_maintenance
(
    MaintenanceID INTEGER PRIMARY KEY,
    BikeID INTEGER,
    StationID INTEGER,
    ServiceDate DATE,
    TechnicianName TEXT,
    IssueCode TEXT,
    IssueDescription TEXT,
    PartsReplaced TEXT,
    LaborHours REAL,
    ServiceCostUSD REAL,
    DowntimeHours REAL,
    NextServiceDue DATE,
    WheelAlignmentScore REAL,
    BrakeEfficiencyPercent REAL,
    BatteryHealthPercent REAL,
    GPSSignalStrength INTEGER,
    SoftwareVersion TEXT,
    SafetyCheckPassed BOOLEAN,
    Remarks TEXT,
    ApprovedBy TEXT,
    InvoiceNumber TEXT,
    WarrantyFlag BOOLEAN
);

INSERT INTO bike_share_maintenance VALUES (4001, 15001, 101, '2023-10-12', 'JohnDoe', 'E01', 'FlatTire', 'RearTube', 1.5, 45.0, 4.0, '2024-04-12', 0.98, 95.0, 85, 'v2.1.0', 1, 'Replaced tube', 'SupervisorA', 'INV12345', 1);
INSERT INTO bike_share_maintenance VALUES (4002, 15023, 103, '2023-11-03', 'JaneSmith', 'B02', 'BrakeWear', 'BrakePads', 2.0, 60.0, 6.0, '2024-05-03', 0.95, 88.0, 90, 'v2.1.0', 1, 'Adjusted brakes', 'SupervisorB', 'INV12346', 0);
INSERT INTO bike_share_maintenance VALUES (4003, 15045, 102, '2023-11-20', 'MikeLee', 'S03', 'BatteryDegrade', 'BatteryPack', 3.0, 120.0, 8.0, '2024-05-20', 0.99, 92.0, 70, 'v2.2.0', 1, 'Replaced battery', 'SupervisorC', 'INV12347', 1);

-- Electric vehicle fleet statistics
CREATE TABLE electric_vehicle_fleet_stats
(
    FleetID INTEGER PRIMARY KEY,
    VehicleVIN TEXT,
    Model TEXT,
    Manufacturer TEXT,
    PurchaseDate DATE,
    LeaseTermMonths INTEGER,
    BatteryCapacityKWh REAL,
    CurrentChargePct REAL,
    OdometerKm REAL,
    AverageEnergyConsumptionKWhPer100Km REAL,
    LastServiceDate DATE,
    NextServiceDue DATE,
    WarrantyExpiry DATE,
    RegistrationState TEXT,
    AssignedDriverID INTEGER,
    UsageCategory TEXT,
    AvgDailyDistanceKm REAL,
    TotalChargingSessions INTEGER,
    AvgChargingTimeMinutes REAL,
    PeakChargingPowerKW REAL,
    EmissionsSavedTonsCO2 REAL,
    IncentiveReceivedUSD REAL,
    FleetStatus TEXT
);

INSERT INTO electric_vehicle_fleet_stats VALUES (1, '1HGCM82633A004352', 'ModelX', 'Tesla', '2022-06-15', 36, 100.0, 85.0, 45200.5, 18.5, '2023-10-01', '2024-04-01', '2025-06-15', 'CA', 2001, 'Delivery', 120.0, 350, 45.0, 150.0, 12.3, 8000.0, 'Active');
INSERT INTO electric_vehicle_fleet_stats VALUES (2, 'WVWZZZ1JZ3W386752', 'e‑Golf', 'Volkswagen', '2021-03-20', 48, 62.0, 60.0, 35800.0, 15.2, '2023-09-12', '2024-03-12', '2024-03-20', 'NY', 2002, 'Service', 95.0, 270, 40.0, 120.0, 9.8, 5000.0, 'Active');
INSERT INTO electric_vehicle_fleet_stats VALUES (3, 'JTDKB20U793043219', 'e‑Prius', 'Toyota', '2023-01-05', 24, 45.0, 70.0, 12000.0, 12.8, '2023-11-10', '2024-05-10', '2025-01-05', 'TX', 2003, 'Test', 60.0, 150, 35.0, 100.0, 5.5, 3000.0, 'Active');

-- Municipal noise complaint records
CREATE TABLE municipal_noise_complaints
(
    ComplaintID INTEGER PRIMARY KEY,
    ReporterName TEXT,
    ReporterContact TEXT,
    ComplaintDate DATE,
    ComplaintTime TEXT,
    LocationDescription TEXT,
    Latitude REAL,
    Longitude REAL,
    NoiseSource TEXT,
    DecibelLevel REAL,
    DurationMinutes INTEGER,
    TimeOfDay TEXT,
    IsRecurring BOOLEAN,
    FollowUpStatus TEXT,
    AssignedOfficerID INTEGER,
    ResolutionDate DATE,
    ResolutionAction TEXT,
    FineAmountUSD REAL,
    Comments TEXT,
    Neighborhood TEXT,
    NoiseZoneClassification TEXT,
    WeatherCondition TEXT,
    RecordedBy TEXT
);

INSERT INTO municipal_noise_complaints VALUES (7001, 'AliceBrown', '5551234567', '2023-11-01', '22:15', '5thAve&MainSt', 40.7128, -74.0060, 'Construction', 85.0, 30, 'Night', 0, 'Open', 301, NULL, 'InvestigationPending', 0.0, 'Loud drilling', 'Downtown', 'Z3', 'Clear', 'OfficerA');
INSERT INTO municipal_noise_complaints VALUES (7002, 'BobSmith', '5559876543', '2023-10-28', '14:30', 'ParkSide', 34.0522, -118.2437, 'Music', 78.0, 45, 'Afternoon', 1, 'Closed', 302, '2023-11-02', 'WarningIssued', 150.0, 'Repeated concerts', 'Westside', 'Z2', 'Sunny', 'OfficerB');
INSERT INTO municipal_noise_complaints VALUES (7003, 'CarolLee', '5555647382', '2023-11-05', '08:00', 'IndustrialPark', 41.8781, -87.6298, 'Machinery', 92.0, 60, 'Morning', 0, 'InProgress', 303, NULL, 'InspectionScheduled', 0.0, 'Heavy equipment', 'Industrial', 'Z4', 'Windy', 'OfficerC');

-- Renewable energy incentive program catalog
CREATE TABLE renewable_energy_incentive_programs
(
    ProgramID INTEGER PRIMARY KEY,
    ProgramName TEXT,
    Agency TEXT,
    IncentiveType TEXT,
    EligibleTechnology TEXT,
    MaxFundingUSD REAL,
    FundingPerUnit REAL,
    ApplicationStartDate DATE,
    ApplicationEndDate DATE,
    AllocationMethod TEXT,
    GeographicScope TEXT,
    EligibilityCriteria TEXT,
    ReportingFrequency TEXT,
    ContactPerson TEXT,
    ContactEmail TEXT,
    OnlinePortalURL TEXT,
    FundingStatus TEXT,
    TotalCommittedUSD REAL,
    TotalDisbursedUSD REAL,
    AvgProjectSizeUSD REAL,
    SuccessRatePercent REAL,
    RenewableEnergyTargetMW REAL,
    ProgramDescription TEXT
);

INSERT INTO renewable_energy_incentive_programs VALUES (9001, 'SolarBoost', 'StateEnergyDept', 'Grant', 'SolarPV', 5000000.0, 0.3, '2023-01-01', '2023-12-31', 'FirstComeFirstServed', 'Statewide', 'Commercial', 'Quarterly', 'DanaWhite', 'dana.white@state.gov', 'http://solarboost.state.gov', 'Open', 2500000.0, 1200000.0, 500000.0, 45.0, 800.0, 'Incentivize residential and commercial solar installations');
INSERT INTO renewable_energy_incentive_programs VALUES (9002, 'WindGrowth', 'FederalEnergyAgency', 'TaxCredit', 'WindTurbine', 20000000.0, 0.25, '2022-06-01', '2024-05-31', 'Lottery', 'National', 'UtilityScale', 'Annual', 'EvanGreen', 'evan.green@federal.gov', 'http://windgrowth.fea.gov', 'Closed', 18000000.0, 17500000.0, 7500000.0, 97.2, 15000.0, 'Support development of new wind farms across the country');
INSERT INTO renewable_energy_incentive_programs VALUES (9003, 'BioFuelAdvance', 'RegionalAgricultureBoard', 'Loan', 'Biofuel', 3000000.0, 0.2, '2023-03-15', '2023-09-15', 'Competitive', 'Regional', 'Agribusiness', 'SemiAnnual', 'FionaGray', 'fiona.gray@regional.ag', 'http://biofueladvance.region.ag', 'Open', 1500000.0, 600000.0, 250000.0, 40.0, 500.0, 'Facilitate production of sustainable biofuels from agricultural waste');

-- Smart grid event log
CREATE TABLE smart_grid_event_log
(
    EventID INTEGER PRIMARY KEY,
    GridNodeID INTEGER,
    EventTimestamp DATETIME,
    EventType TEXT,
    SeverityLevel INTEGER,
    AffectedAreaSqKm REAL,
    VoltageDeviationPercent REAL,
    FrequencyDeviationHz REAL,
    LoadChangeMW REAL,
    TriggeringCause TEXT,
    OperatorID INTEGER,
    MitigationAction TEXT,
    RestorationTimeMinutes REAL,
    EstimatedLossUSD REAL,
    NotificationSent BOOLEAN,
    StakeholderNotified TEXT,
    DocumentationLink TEXT,
    PostEventAnalysis TEXT,
    CorrectiveMeasure TEXT,
    FollowUpTaskID INTEGER,
    AuditStatus TEXT,
    Remarks TEXT
);

INSERT INTO smart_grid_event_log VALUES (11001, 501, '2023-11-12 08:45:00', 'VoltageSag', 2, 15.0, 5.2, 0.03, -120.0, 'LineFault', 701, 'LoadShedding', 45.0, 25000.0, 1, 'DistributionTeam', 'http://gridlogs.com/event/11001', 'Analyzed fault cause', 'ReplaceTransformer', 21001, 'Pending', 'N/A');
INSERT INTO smart_grid_event_log VALUES (11002, 502, '2023-11-15 14:20:00', 'FrequencySpike', 3, 8.0, 0.0, 0.55, 90.0, 'GeneratorTrip', 702, 'GeneratorRestart', 30.0, 18000.0, 1, 'ControlCenter', 'http://gridlogs.com/event/11002', 'Reviewed frequency response', 'UpdateControlLogic', 21002, 'Closed', 'Stabilized quickly');
INSERT INTO smart_grid_event_log VALUES (11003, 503, '2023-11-18 22:10:00', 'LoadShedding', 1, 25.0, 0.0, 0.0, -200.0, 'PeakDemand', 703, 'ScheduledShedding', 15.0, 12000.0, 0, 'Operations', 'http://gridlogs.com/event/11003', 'Planned load management', 'AdjustDemandResponse', 21003, 'InProgress', 'Monitoring');