-- Satellite observations collected for earth monitoring
CREATE TABLE satellite_observations
(
    ObservationID INTEGER PRIMARY KEY,
    SatelliteName TEXT,
    CaptureDate DATE,
    CaptureTime TEXT,
    Latitude REAL,
    Longitude REAL,
    AltitudeMeters INTEGER,
    SensorType TEXT,
    ResolutionCM REAL,
    CloudCoverPercent REAL,
    SunElevationDeg REAL,
    SunAzimuthDeg REAL,
    Band1Reflectance REAL,
    Band2Reflectance REAL,
    Band3Reflectance REAL,
    Band4Reflectance REAL,
    ProcessingLevel TEXT,
    DataFormat TEXT,
    FileSizeMB INTEGER,
    OrbitNumber INTEGER,
    MissionPhase TEXT,
    GroundStation TEXT
);

INSERT INTO satellite_observations VALUES (1, 'Landsat8', '2023-11-15', '10:23:00', 34.05, -118.25, 705000, 'Optical', 30.0, 12.5, 45.2, 150.0, 0.21, 0.34, 0.38, 0.42, 'Level1', 'GeoTIFF', 550, 12345, 'Nominal', 'GS_EAST');
INSERT INTO satellite_observations VALUES (2, 'Sentinel2', '2023-11-16', '11:45:00', 48.86, 2.35, 786000, 'Multispectral', 10.0, 3.1, 50.1, 155.0, 0.19, 0.33, 0.36, 0.40, 'Level2A', 'JPEG2000', 420, 9876, 'Calibration', 'GS_WEST');
INSERT INTO satellite_observations VALUES (3, 'WorldView3', '2023-11-17', '09:12:00', 35.68, 139.69, 617000, 'Panchromatic', 0.31, 0.8, 55.0, 165.0, 0.25, 0.40, 0.44, 0.48, 'Level1B', 'TIFF', 720, 54321, 'Nominal', 'GS_NORTH');

-- Marine biology sample collection logs
CREATE TABLE marine_biology_samples
(
    SampleID INTEGER PRIMARY KEY,
    ExpeditionName TEXT,
    SampleDate DATE,
    SampleTime TEXT,
    LocationLatitude REAL,
    LocationLongitude REAL,
    DepthMeters INTEGER,
    SampleType TEXT,
    OrganismGroup TEXT,
    SpeciesCode TEXT,
    SampleVolumeML INTEGER,
    PreservationMethod TEXT,
    CollectorName TEXT,
    LabTechnician TEXT,
    DNAExtracted INTEGER,
    RNAExtracted INTEGER,
    SequencingRunID TEXT,
    Barcode TEXT,
    StorageTemperatureC REAL,
    ContainerID TEXT,
    PermitNumber TEXT,
    Notes TEXT
);

INSERT INTO marine_biology_samples VALUES (101, 'AtlanticSurvey2023', '2023-08-05', '14:30:00', 36.12, -75.66, 150, 'Water', 'Plankton', 'PLK01', 500, 'Freezer', 'DrSmith', 'TechA', 1, 0, 'RUN202308', 'BC12345', -20.0, 'CNT001', 'PERM2022A', 'Clear water sample');
INSERT INTO marine_biology_samples VALUES (102, 'PacificDive2023', '2023-09-12', '09:15:00', -15.67, 145.78, 30, 'Tissue', 'Fish', 'FISH07', 200, 'Ethanol', 'DrLee', 'TechB', 1, 1, 'RUN202309', 'BC67890', -80.0, 'CNT002', 'PERM2023B', 'Fin clip');
INSERT INTO marine_biology_samples VALUES (103, 'ArcticExp2023', '2023-07-20', '11:45:00', 78.22, -42.33, 5, 'Sediment', 'Bacteria', 'BAC12', 300, 'RNAlater', 'DrChen', 'TechC', 0, 1, 'RUN202307', 'BC54321', 4.0, 'CNT003', 'PERM2021C', 'Surface sediment');

-- Historic climate index records
CREATE TABLE historic_climate_index
(
    RecordID INTEGER PRIMARY KEY,
    Year INTEGER,
    Month INTEGER,
    RegionCode TEXT,
    TemperatureAnomalyC REAL,
    PrecipitationAnomalyMM REAL,
    CO2ConcentrationPPM REAL,
    SeaLevelRiseMM REAL,
    ArcticIceExtentMillionSqKm REAL,
    SolarRadiationWm2 REAL,
    OceanHeatContentPJ REAL,
    ENSOPhase TEXT,
    PDOIndex REAL,
    AMOIndex REAL,
    NAOIndex REAL,
    VolcanicAerosolOptDepth REAL,
    MethaneConcentrationPPB REAL,
    NitrousOxidePPB REAL,
    DataSource TEXT,
    QualityFlag INTEGER,
    Comments TEXT,
    InsertedTimestamp DATETIME
);

INSERT INTO historic_climate_index VALUES (1, 1990, 1, 'NA', 0.12, -5.4, 354.2, 1.8, 14.2, 1361.5, 25000, 'ElNino', 0.3, 0.5, -0.2, 0.02, 1750, 320, 'NOAA', 1, 'Baseline year', '2023-01-01 00:00:00');
INSERT INTO historic_climate_index VALUES (2, 2005, 7, 'EU', 0.45, 12.3, 380.5, 3.1, 13.9, 1362.0, 26000, 'LaNina', -0.1, -0.3, 0.4, 0.015, 1820, 340, 'HadCRUT', 1, 'Mid‑21st century', '2023-01-01 00:00:00');
INSERT INTO historic_climate_index VALUES (3, 2016, 12, 'AS', 0.78, 8.7, 404.1, 4.0, 13.5, 1362.4, 27000, 'Neutral', 0.2, 0.1, -0.1, 0.01, 1890, 350, 'GISTEMP', 1, 'Record high', '2023-01-01 00:00:00');

-- Urban art installations registry
CREATE TABLE urban_art_installations
(
    InstallationID INTEGER PRIMARY KEY,
    CityCode TEXT,
    Neighborhood TEXT,
    InstallationName TEXT,
    ArtistName TEXT,
    InstallationType TEXT,
    InstallationDate DATE,
    MaterialPrimary TEXT,
    MaterialSecondary TEXT,
    HeightMeters REAL,
    WidthMeters REAL,
    DepthMeters REAL,
    FundingSource TEXT,
    EstimatedCostUSD INTEGER,
    MaintenanceContractID TEXT,
    LightingType TEXT,
    InteractiveLevel INTEGER,
    GPSLatitude REAL,
    GPSLongitude REAL,
    PermitNumber TEXT,
    Status TEXT,
    LastInspectionDate DATE,
    Comments TEXT
);

INSERT INTO urban_art_installations VALUES (1001, 'NYC', 'Chelsea', 'GlowingTree', 'AvaLee', 'Sculpture', '2022-05-10', 'Metal', 'LED', 12.5, 4.0, 3.0, 'CityArtsFund', 250000, 'MC001', 'LED', 2, 40.7465, -73.9983, 'PERM2022A', 'Active', '2023-06-01', 'Nighttime attraction');
INSERT INTO urban_art_installations VALUES (1002, 'CHI', 'Loop', 'RiverPulse', 'JinPark', 'Mural', '2021-09-22', 'Paint', 'Mural', 5.0, 15.0, 0.2, 'PrivateSponsor', 120000, 'MC002', 'None', 0, 41.8781, -87.6298, 'PERM2021B', 'Active', '2023-05-15', 'Community project');
INSERT INTO urban_art_installations VALUES (1003, 'LA', 'Downtown', 'SolarWave', 'MateoRosa', 'Installation', '2023-02-14', 'Glass', 'SolarPanel', 8.0, 6.0, 2.5, 'GreenCityGrant', 300000, 'MC003', 'Solar', 3, 34.0522, -118.2437, 'PERM2023C', 'Planned', '2023-01-10', 'Planned for 2024');

-- Renewable energy project funding details
CREATE TABLE renewable_energy_project_funding
(
    FundingID INTEGER PRIMARY KEY,
    ProjectCode TEXT,
    FundingAgency TEXT,
    GrantType TEXT,
    ApplicationDate DATE,
    ApprovalDate DATE,
    FundingAmountUSD INTEGER,
    Currency TEXT,
    FundingRound INTEGER,
    MatchingFundsUSD INTEGER,
    DisbursementSchedule TEXT,
    ProjectPhase TEXT,
    SustainabilityMetric TEXT,
    CoFunder TEXT,
    ContactPerson TEXT,
    ContactEmail TEXT,
    Status TEXT,
    ReportingFrequency TEXT,
    LastReportDate DATE,
    AuditStatus TEXT,
    Remarks TEXT,
    InsertedAt DATETIME
);

INSERT INTO renewable_energy_project_funding VALUES (5001, 'REPV001', 'DOE', 'PhaseI', '2022-01-15', '2022-04-01', 5000000, 'USD', 1, 1000000, 'Annual', 'Construction', 'CO2Reduction', 'EPA', 'LindaGreen', 'lgreen@doe.gov', 'Active', 'Quarterly', '2023-03-31', 'Passed', 'On schedule', '2023-04-01 12:00:00');
INSERT INTO renewable_energy_project_funding VALUES (5002, 'REPV002', 'EUCommission', 'PhaseII', '2021-05-20', '2021-09-10', 8000000, 'EUR', 2, 2000000, 'Milestone', 'Operation', 'RenewableMWh', 'WorldBank', 'CarlosDiaz', 'cdiaz@eu.int', 'Active', 'SemiAnnual', '2023-02-28', 'Pending', 'Awaiting final audit', '2023-04-01 12:00:00');
INSERT INTO renewable_energy_project_funding VALUES (5003, 'REPV003', 'PrivateInvestor', 'Equity', '2023-03-01', '2023-04-15', 3000000, 'USD', 1, 0, 'Upfront', 'Planning', 'CapacityMW', 'AngelFund', 'SaraKim', 'skim@private.com', 'Pending', 'Annual', '2023-03-31', 'NotStarted', 'Initial review', '2023-04-01 12:00:00');

-- Public transport vehicle service log
CREATE TABLE public_transport_vehicle_service_log
(
    ServiceLogID INTEGER PRIMARY KEY,
    FleetID INTEGER,
    VehicleID INTEGER,
    ServiceDate DATE,
    OdometerKM INTEGER,
    ServiceType TEXT,
    ServiceProvider TEXT,
    CostUSD INTEGER,
    PartsReplaced TEXT,
    LaborHours REAL,
    DowntimeHours REAL,
    NextServiceDueKM INTEGER,
    InspectionResult TEXT,
    WarrantyCovered INTEGER,
    ServiceNotes TEXT,
    TechnicianName TEXT,
    TechnicianCertifications TEXT,
    ServiceLocation TEXT,
    MileageSinceLastService INTEGER,
    FuelConsumptionLper100km REAL,
    EmissionsCO2gkm REAL,
    UpdatedAt DATETIME
);

INSERT INTO public_transport_vehicle_service_log VALUES (9001, 10, 1001, '2023-06-10', 45200, 'EngineTune', 'AutoFixInc', 1200, 'FuelFilter', 3.5, 5.0, 50000, 'Pass', 1, 'Replaced fuel filter', 'MikeRoss', 'ASE', 'DepotA', 2000, 35.2, 150.0, '2023-06-11 08:00:00');
INSERT INTO public_transport_vehicle_service_log VALUES (9002, 10, 1002, '2023-05-22', 37800, 'BrakeCheck', 'BrakeMasters', 800, 'BrakePads', 2.0, 3.0, 42000, 'Pass', 1, 'Brake pads replaced', 'AnnaLee', 'BrakeTech', 'DepotB', 1500, 33.8, 145.5, '2023-05-23 09:30:00');
INSERT INTO public_transport_vehicle_service_log VALUES (9003, 11, 2001, '2023-04-15', 61000, 'HVACService', 'CoolAirCo', 500, 'Compressor', 1.5, 2.0, 65000, 'Pass', 0, 'Compressor serviced', 'JohnDoe', 'HVACCert', 'DepotC', 500, 30.0, 130.0, '2023-04-16 07:45:00');

-- Waste management facility metrics
CREATE TABLE waste_management_facility_metrics
(
    MetricID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    ReportingPeriod TEXT,
    TotalWasteTons REAL,
    RecyclableTons REAL,
    HazardousTons REAL,
    LandfillTons REAL,
    EnergyRecoveredMWh REAL,
    GreenhouseGasTonCO2E REAL,
    StaffCount INTEGER,
    OperatingHours INTEGER,
    MaintenanceIncidents INTEGER,
    ComplianceScore INTEGER,
    AvgProcessingTimeMinutes REAL,
    EquipmentDowntimeHours REAL,
    WaterUsageCubicMeters REAL,
    NoiseLevelDBA REAL,
    AirQualityIndex INTEGER,
    SafetyIncidents INTEGER,
    RevenueUSD INTEGER,
    OperatingCostUSD INTEGER,
    LastUpdated DATETIME
);

INSERT INTO waste_management_facility_metrics VALUES (3001, 101, '2023Q1', 1200.5, 350.2, 45.0, 805.3, 850.0, 2100.0, 85, 720, 2, 92, 45.3, 12.5, 1500.0, 68.0, 42, 1, 2500000, 1800000, '2023-04-01 12:00:00');
INSERT INTO waste_management_facility_metrics VALUES (3002, 102, '2023Q1', 980.0, 300.0, 30.0, 650.0, 620.0, 1800.0, 70, 720, 1, 88, 48.0, 10.0, 1300.0, 70.0, 38, 0, 2100000, 1500000, '2023-04-01 12:00:00');
INSERT INTO waste_management_facility_metrics VALUES (3003, 103, '2023Q1', 1500.0, 400.0, 60.0, 1040.0, 950.0, 2400.0, 95, 720, 3, 95, 42.0, 15.0, 1700.0, 65.0, 45, 2, 3000000, 2100000, '2023-04-01 12:00:00');

-- Grid energy storage units inventory
CREATE TABLE grid_energy_storage_units
(
    StorageUnitID INTEGER PRIMARY KEY,
    FacilityName TEXT,
    TechnologyType TEXT,
    CapacityMWh REAL,
    UsableCapacityMWh REAL,
    RoundTripEfficiencyPct REAL,
    InstallationDate DATE,
    Vendor TEXT,
    WarrantyYears INTEGER,
    CurrentStatus TEXT,
    OperatingTemperatureC REAL,
    MaxChargeRateMW REAL,
    MaxDischargeRateMW REAL,
    LocationLatitude REAL,
    LocationLongitude REAL,
    GridNodeID INTEGER,
    MaintenanceContractID TEXT,
    LastInspectionDate DATE,
    DegradationRatePctPerYear REAL,
    OwnerOrganization TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    Comments TEXT,
    RecordedAt DATETIME
);

INSERT INTO grid_energy_storage_units VALUES (4001, 'NorthGridBattery', 'LithiumIon', 50.0, 45.0, 92.5, '2021-03-15', 'BatteryCo', 10, 'Operational', 25.0, 10.0, 10.0, 41.1234, -73.5678, 501, 'MC1001', '2023-05-20', 0.8, 'UtilityCorp', 'EmilyWhite', '5551234567', 'No issues', '2023-06-01 09:00:00');
INSERT INTO grid_energy_storage_units VALUES (4002, 'EastSideFlow', 'FlowBattery', 80.0, 70.0, 85.0, '2020-07-01', 'FlowTech', 12, 'Operational', 30.0, 15.0, 15.0, 40.9876, -74.1234, 502, 'MC1002', '2023-04-15', 0.5, 'EnergyPartners', 'RobertBrown', '5559876543', 'Minor electrolyte check', '2023-06-01 09:15:00');
INSERT INTO grid_energy_storage_units VALUES (4003, 'SouthReserve', 'CompressedAir', 120.0, 110.0, 78.0, '2019-11-20', 'AirEnergy', 15, 'Maintenance', 22.0, 20.0, 20.0, 39.6543, -75.4321, 503, 'MC1003', '2023-03-30', 0.6, 'GridSolutions', 'LindaGrey', '5552468101', 'Scheduled valve replacement', '2023-06-01 09:30:00');

-- Regional water quality reports
CREATE TABLE regional_water_quality_reports
(
    ReportID INTEGER PRIMARY KEY,
    RegionCode TEXT,
    ReportYear INTEGER,
    ReportMonth INTEGER,
    SampleSiteID INTEGER,
    Parameter TEXT,
    Unit TEXT,
    ResultValue REAL,
    DetectionLimit REAL,
    Method TEXT,
    Analyst TEXT,
    LabName TEXT,
    QCFlag INTEGER,
    Remarks TEXT,
    CreatedDate DATE,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    DataSource TEXT,
    Latitude REAL,
    Longitude REAL,
    ElevationMeters REAL,
    RecordStatus TEXT,
    InsertedAt DATETIME
);

INSERT INTO regional_water_quality_reports VALUES (6001, 'RC01', 2023, 5, 210, 'pH', 'units', 7.4, 0.01, 'Electrode', 'DrMiller', 'WaterLabA', 1, 'Normal', '2023-05-20', 'DrJones', '2023-05-22', 'StateAgency', 34.0522, -118.2437, 89.0, 'Verified', '2023-05-23 10:00:00');
INSERT INTO regional_water_quality_reports VALUES (6002, 'RC02', 2023, 5, 215, 'Nitrate', 'mg/L', 3.2, 0.05, 'IonChromatography', 'DrLee', 'WaterLabB', 1, 'Within limits', '2023-05-21', 'DrKim', '2023-05-23', 'FederalAgency', 36.1699, -115.1398, 610.0, 'Verified', '2023-05-24 11:00:00');
INSERT INTO regional_water_quality_reports VALUES (6003, 'RC03', 2023, 5, 220, 'Lead', 'µg/L', 2.1, 0.5, 'ICP-MS', 'DrPatel', 'WaterLabC', 0, 'Near detection limit', '2023-05-22', 'DrWang', '2023-05-25', 'ResearchInstitute', 40.7128, -74.0060, 10.0, 'Pending', '2023-05-26 12:00:00');

-- Corporate governance meeting minutes
CREATE TABLE corporate_governance_meetings
(
    MeetingID INTEGER PRIMARY KEY,
    MeetingDate DATE,
    MeetingTime TEXT,
    Location TEXT,
    MeetingType TEXT,
    Chairperson TEXT,
    Secretary TEXT,
    AttendeeCount INTEGER,
    AgendaItem1 TEXT,
    AgendaItem2 TEXT,
    AgendaItem3 TEXT,
    AgendaItem4 TEXT,
    AgendaItem5 TEXT,
    DecisionSummary TEXT,
    ActionItems TEXT,
    FollowUpDate DATE,
    RecordedBy TEXT,
    RecordingFilePath TEXT,
    ConfidentialityLevel TEXT,
    MinutesApproved INTEGER,
    ApprovalDate DATE,
    Remarks TEXT,
    InsertedAt DATETIME
);

INSERT INTO corporate_governance_meetings VALUES (7001, '2023-06-15', '10:00:00', 'Headquarters', 'Board', 'AliceGreen', 'BobWhite', 12, 'Financial Review', 'Risk Assessment', 'Strategic Planning', 'Audit Findings', 'Compliance Update', 'Approved FY budget', 'Implement new risk policy', '2023-07-01', 'CarolSmith', '/records/minutes/20230615.pdf', 'High', 1, '2023-06-20', 'All items passed', '2023-06-22 08:30:00');
INSERT INTO corporate_governance_meetings VALUES (7002, '2023-09-01', '14:30:00', 'Remote', 'Committee', 'DavidBlack', 'EveGray', 8, ' ESG Initiatives', 'Supply Chain Review', 'Technology Roadmap', 'HR Policy', 'Diversity Metrics', 'Adopt ESG targets', 'Set up task force', '2023-09-30', 'FrankLee', '/records/minutes/20230901.pdf', 'Medium', 1, '2023-09-05', 'Follow‑up required on supply chain', '2023-09-06 09:00:00');
INSERT INTO corporate_governance_meetings VALUES (7003, '2024-01-20', '09:00:00', 'Regional Office', 'Board', 'GraceKim', 'HenryFox', 15, 'Annual Report Review', 'Election of Directors', 'Compensation Committee', 'Legal Compliance', 'Shareholder Proposals', 'Approved annual report', 'Prepare next year agenda', '2024-02-15', 'IvyChen', '/records/minutes/20240120.pdf', 'High', 0, NULL, 'Pending approval', '2024-01-21 10:15:00');

-- Smart city sensor inventory
CREATE TABLE smart_city_sensor_inventory
(
    SensorID INTEGER PRIMARY KEY,
    SensorType TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    InstallationDate DATE,
    DeploymentZone TEXT,
    Latitude REAL,
    Longitude REAL,
    ElevationMeters REAL,
    FirmwareVersion TEXT,
    PowerSource TEXT,
    CommunicationProtocol TEXT,
    BatteryCapacitymAh INTEGER,
    CurrentStatus TEXT,
    LastMaintenanceDate DATE,
    CalibrationDate DATE,
    DataRetentionDays INTEGER,
    ConnectivityStatus TEXT,
    AlertsEnabled INTEGER,
    OwnerDepartment TEXT,
    MaintenanceContractID TEXT,
    WarrantyEndDate DATE,
    Notes TEXT,
    RecordedAt DATETIME
);

INSERT INTO smart_city_sensor_inventory VALUES (8001, 'AirQuality', 'EnviroTech', 'AQ-100', '2022-02-10', 'Downtown', 34.0500, -118.2500, 30.0, 'v1.2.3', 'Solar', 'LTE', 3000, 'Active', '2023-05-01', '2023-04-15', 365, 'Online', 1, 'EnvironmentDept', 'MC2001', '2025-02-10', 'No issues', '2023-06-01 07:45:00');
INSERT INTO smart_city_sensor_inventory VALUES (8002, 'TrafficFlow', 'CitySensors', 'TF-200', '2021-07-20', 'Midtown', 36.1699, -115.1398, 15.0, 'v2.0.0', 'Mains', '5G', NULL, 'Active', '2023-04-20', '2023-04-01', 730, 'Online', 1, 'TransportDept', 'MC2002', '2024-07-20', 'Calibrated quarterly', '2023-06-01 08:00:00');
INSERT INTO smart_city_sensor_inventory VALUES (8003, 'Noise', 'AcousticInc', 'NS-50', '2023-01-05', 'Suburb', 40.7128, -74.0060, 20.0, 'v1.0.1', 'Battery', 'WiFi', 2000, 'Inactive', '2023-03-15', '2023-03-01', 180, 'Offline', 0, 'PublicWorks', 'MC2003', '2026-01-05', 'Awaiting replacement', '2023-06-01 08:15:00');

-- Regional water supply distribution zones
CREATE TABLE water_supply_distribution_zones
(
    ZoneID INTEGER PRIMARY KEY,
    ZoneName TEXT,
    CityCode TEXT,
    PopulationServed INTEGER,
    AvgDailyConsumptionM3 REAL,
    PeakDemandM3 REAL,
    SourceFacility TEXT,
    PrimaryTreatmentPlant TEXT,
    StorageCapacityM3 REAL,
    PumpingStationCount INTEGER,
    PipeMaterial TEXT,
    PipeDiameterMM INTEGER,
    LeakageRateLitersPerHour REAL,
    MaintenanceSchedule TEXT,
    LastInspectionDate DATE,
    WaterQualityCompliance INTEGER,
    BudgetUSD INTEGER,
    OperatingCostUSD INTEGER,
    ContactPerson TEXT,
    ContactPhone TEXT,
    Remarks TEXT,
    RecordedAt DATETIME
);

INSERT INTO water_supply_distribution_zones VALUES (9001, 'NorthWest', 'NYC', 250000, 1500.5, 1800.0, 'LakeSuperior', 'TreatmentA', 50000.0, 12, 'DuctileIron', 300, 45.2, 'Quarterly', '2023-04-10', 1, 1200000, 850000, 'JohnDoe', '5551122334', 'Stable performance', '2023-05-01 09:00:00');
INSERT INTO water_supply_distribution_zones VALUES (9002, 'SouthEast', 'LA', 180000, 1100.0, 1300.0, 'RiverDelta', 'TreatmentB', 40000.0, 9, 'PVC', 250, 30.5, 'BiAnnual', '2023-03-22', 1, 950000, 700000, 'JaneSmith', '5552233445', 'Minor leakage observed', '2023-05-01 09:15:00');
INSERT INTO water_supply_distribution_zones VALUES (9003, 'Central', 'CHI', 210000, 1300.8, 1550.0, 'UndergroundAquifer', 'TreatmentC', 45000.0, 10, 'Concrete', 280, 25.0, 'Annual', '2023-02-15', 1, 1100000, 800000, 'MikeBrown', '5553344556', 'Upgrading pumps', '2023-05-01 09:30:00');

-- Corporate governance meeting minutes
-- Duplicate table name avoided; this entry intentionally omitted.