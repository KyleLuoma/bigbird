-- Vehicle inspection records adjacent to vehicle_fleet but not overlapping core entities
CREATE TABLE vehicle_inspection_records
(
    InspectionID INTEGER PRIMARY KEY AUTOINCREMENT,
    VehicleID INTEGER,
    InspectionDate DATE,
    InspectorName TEXT,
    InspectionType TEXT,
    OdometerReading INTEGER,
    BrakeCondition TEXT,
    TireTreadDepth REAL,
    EmissionTestResult TEXT,
    LightFunctioning TEXT,
    SafetyEquipmentStatus TEXT,
    Comments TEXT,
    NextDueDate DATE,
    LocationID INTEGER,
    WeatherCondition TEXT,
    TemperatureC REAL,
    Humidity REAL,
    InspectorLicenseNumber TEXT,
    ViolationCount INTEGER,
    FollowUpRequired INTEGER
);
INSERT INTO vehicle_inspection_records (InspectionID, VehicleID, InspectionDate, InspectorName, InspectionType, OdometerReading, BrakeCondition, TireTreadDepth, EmissionTestResult, LightFunctioning, SafetyEquipmentStatus, Comments, NextDueDate, LocationID, WeatherCondition, TemperatureC, Humidity, InspectorLicenseNumber, ViolationCount, FollowUpRequired) VALUES (1, 101, '2023-05-10', 'Alice Smith', 'Annual', 45200, 'Good', 7.5, 'Pass', 'All', 'OK', 'No issues', '2024-05-10', 5, 'Sunny', 23.5, 45.0, 'LIC12345', 0, 0);
INSERT INTO vehicle_inspection_records (InspectionID, VehicleID, InspectionDate, InspectorName, InspectionType, OdometerReading, BrakeCondition, TireTreadDepth, EmissionTestResult, LightFunctioning, SafetyEquipmentStatus, Comments, NextDueDate, LocationID, WeatherCondition, TemperatureC, Humidity, InspectorLicenseNumber, ViolationCount, FollowUpRequired) VALUES (2, 102, '2023-06-15', 'Bob Jones', 'Safety', 37800, 'Fair', 6.2, 'Pass', 'Partial', 'OK', 'Brake pads worn', '2024-06-15', 3, 'Cloudy', 19.0, 55.0, 'LIC67890', 1, 1);
INSERT INTO vehicle_inspection_records (InspectionID, VehicleID, InspectionDate, InspectorName, InspectionType, OdometerReading, BrakeCondition, TireTreadDepth, EmissionTestResult, LightFunctioning, SafetyEquipmentStatus, Comments, NextDueDate, LocationID, WeatherCondition, TemperatureC, Humidity, InspectorLicenseNumber, ViolationCount, FollowUpRequired) VALUES (3, 103, '2023-07-20', 'Carol Lee', 'Emission', 51200, 'Good', 8.0, 'Fail', 'All', 'OK', 'High emissions', '2024-07-20', 2, 'Rainy', 16.2, 80.0, 'LIC54321', 2, 1);

-- Utility metrics for gas stations, related to gasstations but distinct from transactions
CREATE TABLE fuel_station_utility_metrics
(
    MetricID INTEGER PRIMARY KEY AUTOINCREMENT,
    GasStationID INTEGER,
    RecordDate DATE,
    ElectricityUsageKWH REAL,
    WaterUsageLiters REAL,
    NaturalGasUsageCubicMeters REAL,
    SolarGenerationKWH REAL,
    WindGenerationKWH REAL,
    WasteGeneratedKg REAL,
    RecyclingRatePercent REAL,
    CO2EmissionsKg REAL,
    EnergyCostUSD REAL,
    MaintenanceCostUSD REAL,
    StaffOnShift INTEGER,
    AmbientTemperatureC REAL,
    HumidityPercent REAL,
    PowerOutageFlag INTEGER,
    IncidentDescription TEXT,
    AuditorName TEXT,
    AuditScore INTEGER
);
INSERT INTO fuel_station_utility_metrics (MetricID, GasStationID, RecordDate, ElectricityUsageKWH, WaterUsageLiters, NaturalGasUsageCubicMeters, SolarGenerationKWH, WindGenerationKWH, WasteGeneratedKg, RecyclingRatePercent, CO2EmissionsKg, EnergyCostUSD, MaintenanceCostUSD, StaffOnShift, AmbientTemperatureC, HumidityPercent, PowerOutageFlag, IncidentDescription, AuditorName, AuditScore) VALUES (1, 10, '2023-08-01', 1250.5, 8000, 250.0, 150.0, 0.0, 350.2, 45.0, 1200.0, 2500.0, 400.0, 5, 28.0, 60.0, 0, 'None', 'Diane Kelly', 92);
INSERT INTO fuel_station_utility_metrics (MetricID, GasStationID, RecordDate, ElectricityUsageKWH, WaterUsageLiters, NaturalGasUsageCubicMeters, SolarGenerationKWH, WindGenerationKWH, WasteGeneratedKg, RecyclingRatePercent, CO2EmissionsKg, EnergyCostUSD, MaintenanceCostUSD, StaffOnShift, AmbientTemperatureC, HumidityPercent, PowerOutageFlag, IncidentDescription, AuditorName, AuditScore) VALUES (2, 12, '2023-08-01', 1380.0, 8450, 260.5, 180.0, 0.0, 390.0, 50.0, 1305.0, 2750.0, 420.0, 6, 29.5, 58.0, 1, 'Brief outage 2h', 'Evan Rivera', 85);
INSERT INTO fuel_station_utility_metrics (MetricID, GasStationID, RecordDate, ElectricityUsageKWH, WaterUsageLiters, NaturalGasUsageCubicMeters, SolarGenerationKWH, WindGenerationKWH, WasteGeneratedKg, RecyclingRatePercent, CO2EmissionsKg, EnergyCostUSD, MaintenanceCostUSD, StaffOnShift, AmbientTemperatureC, HumidityPercent, PowerOutageFlag, IncidentDescription, AuditorName, AuditScore) VALUES (3, 15, '2023-08-01', 1195.3, 7900, 240.2, 130.0, 0.0, 340.5, 48.0, 1150.0, 2400.0, 380.0, 4, 27.3, 62.0, 0, 'None', 'Fiona Zhou', 94);

-- Extreme weather records for regions, complementary to weather_observations
CREATE TABLE regional_weather_extremes
(
    ExtremeID INTEGER PRIMARY KEY AUTOINCREMENT,
    RegionCode TEXT,
    ExtremeDate DATE,
    ExtremeType TEXT,
    TemperatureC REAL,
    WindSpeedKPH REAL,
    PrecipitationMM REAL,
    SnowDepthCM REAL,
    HumidityPercent REAL,
    PressureHpa REAL,
    EventDurationHours REAL,
    AffectedPopulation INTEGER,
    DamageCostUSD REAL,
    EmergencyDeclared INTEGER,
    Summary TEXT,
    RecordedBy TEXT,
    Latitude REAL,
    Longitude REAL,
    ClimateZone TEXT,
    SourceAgency TEXT
);
INSERT INTO regional_weather_extremes (ExtremeID, RegionCode, ExtremeDate, ExtremeType, TemperatureC, WindSpeedKPH, PrecipitationMM, SnowDepthCM, HumidityPercent, PressureHpa, EventDurationHours, AffectedPopulation, DamageCostUSD, EmergencyDeclared, Summary, RecordedBy, Latitude, Longitude, ClimateZone, SourceAgency) VALUES (1, 'NW01', '2023-06-30', 'Heatwave', 42.5, 15.0, 0.0, 0.0, 20.0, 1012.0, 48.0, 500000, 1200000.0, 1, 'Record high temperatures across the northwest', 'National Weather Service', 45.123, -122.456, 'Temperate', 'GovWeatherDept');
INSERT INTO regional_weather_extremes (ExtremeID, RegionCode, ExtremeDate, ExtremeType, TemperatureC, WindSpeedKPH, PrecipitationMM, SnowDepthCM, HumidityPercent, PressureHpa, EventDurationHours, AffectedPopulation, DamageCostUSD, EmergencyDeclared, Summary, RecordedBy, Latitude, Longitude, ClimateZone, SourceAgency) VALUES (2, 'SE02', '2023-07-12', 'Tornado', 28.0, 120.0, 5.0, 0.0, 70.0, 995.0, 2.5, 120000, 850000.0, 1, 'EF2 tornado causing extensive damage', 'Storm Tracker Inc', 31.987, -94.876, 'Subtropical', 'GovWeatherDept');
INSERT INTO regional_weather_extremes (ExtremeID, RegionCode, ExtremeDate, ExtremeType, TemperatureC, WindSpeedKPH, PrecipitationMM, SnowDepthCM, HumidityPercent, PressureHpa, EventDurationHours, AffectedPopulation, DamageCostUSD, EmergencyDeclared, Summary, RecordedBy, Latitude, Longitude, ClimateZone, SourceAgency) VALUES (3, 'NE03', '2023-08-20', 'Flood', 22.0, 10.0, 180.0, 0.0, 90.0, 1000.0, 72.0, 300000, 2000000.0, 1, 'River overflow affecting multiple towns', 'HydroAnalytics', 40.567, -73.212, 'Continental', 'GovWeatherDept');

-- Corporate governance meeting minutes, supplementary to corporate_financials
CREATE TABLE corporate_governance_meeting_minutes
(
    MinuteID INTEGER PRIMARY KEY AUTOINCREMENT,
    MeetingDate DATE,
    MeetingType TEXT,
    Chairperson TEXT,
    Recorder TEXT,
    AttendeeCount INTEGER,
    AgendaItem1 TEXT,
    AgendaItem2 TEXT,
    AgendaItem3 TEXT,
    Decision1 TEXT,
    Decision2 TEXT,
    Decision3 TEXT,
    ActionItem1 TEXT,
    ActionItem2 TEXT,
    ActionItem3 TEXT,
    FollowUpDate DATE,
    ConfidentialFlag INTEGER,
    Location TEXT,
    DurationMinutes INTEGER,
    Summary TEXT
);
INSERT INTO corporate_governance_meeting_minutes (MinuteID, MeetingDate, MeetingType, Chairperson, Recorder, AttendeeCount, AgendaItem1, AgendaItem2, AgendaItem3, Decision1, Decision2, Decision3, ActionItem1, ActionItem2, ActionItem3, FollowUpDate, ConfidentialFlag, Location, DurationMinutes, Summary) VALUES (1, '2023-04-15', 'Board', 'Laura Chen', 'Mark Patel', 12, 'Q1 Financial Review', 'Strategic Acquisitions', 'Risk Management Update', 'Approve budget', 'Proceed with acquisition', 'Update risk matrix', 'Finance team to submit Q2 forecast', 'Legal to draft acquisition agreement', 'Risk team to revise policies', '2023-05-10', 0, 'Headquarters Room 301', 180, 'Positive outlook with cautious expansion');
INSERT INTO corporate_governance_meeting_minutes (MinuteID, MeetingDate, MeetingType, Chairperson, Recorder, AttendeeCount, AgendaItem1, AgendaItem2, AgendaItem3, Decision1, Decision2, Decision3, ActionItem1, ActionItem2, ActionItem3, FollowUpDate, ConfidentialFlag, Location, DurationMinutes, Summary) VALUES (2, '2023-07-20', 'Committee', 'James O\'Neil', 'Sofia Lopez', 8, 'Environmental Compliance', 'Supply Chain Audit', 'Employee Training', 'Adopt new ESG policy', 'Initiate supplier audit Q3', 'Launch training program', 'Compliance to draft ESG', 'Audit team to schedule visits', 'HR to design curriculum', '2023-09-01', 1, 'Regional Office B', 120, 'Focus on sustainability initiatives');
INSERT INTO corporate_governance_meeting_minutes (MinuteID, MeetingDate, MeetingType, Chairperson, Recorder, AttendeeCount, AgendaItem1, AgendaItem2, AgendaItem3, Decision1, Decision2, Decision3, ActionItem1, ActionItem2, ActionItem3, FollowUpDate, ConfidentialFlag, Location, DurationMinutes, Summary) VALUES (3, '2023-10-05', 'Executive', 'Rita Gupta', 'David Kim', 15, 'Digital Transformation', 'Budget Reallocation', 'Talent Retention', 'Approve new IT platform', 'Reallocate $2M to R&D', 'Implement retention bonuses', 'IT to start vendor selection', 'Finance to adjust forecasts', 'HR to finalize bonus structure', '2024-01-15', 0, 'Main Campus Hall A', 210, 'Strategic pivot towards digital services');

-- Assets for electric grid substations, related to energy_grid_nodes but distinct
CREATE TABLE electric_grid_substation_assets
(
    AssetID INTEGER PRIMARY KEY AUTOINCREMENT,
    SubstationID INTEGER,
    AssetTag TEXT,
    AssetType TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    InstallationDate DATE,
    CapacityMVA REAL,
    VoltageLevelKV REAL,
    CurrentRatingA REAL,
    Status TEXT,
    LastInspectionDate DATE,
    NextMaintenanceDate DATE,
    LocationLatitude REAL,
    LocationLongitude REAL,
    OwnerDepartment TEXT,
    WarrantyEndDate DATE,
    AssetCondition TEXT,
    DecommissionDate DATE,
    Comments TEXT
);
INSERT INTO electric_grid_substation_assets (AssetID, SubstationID, AssetTag, AssetType, Manufacturer, ModelNumber, InstallationDate, CapacityMVA, VoltageLevelKV, CurrentRatingA, Status, LastInspectionDate, NextMaintenanceDate, LocationLatitude, LocationLongitude, OwnerDepartment, WarrantyEndDate, AssetCondition, DecommissionDate, Comments) VALUES (1, 2001, 'TX-001', 'Transformer', 'Siemens', 'T-5000', '2015-03-10', 50.0, 230.0, 1200.0, 'Operational', '2023-05-20', '2024-05-20', 40.7128, -74.0060, 'Operations', '2028-03-10', 'Good', NULL, 'Primary step-up transformer');
INSERT INTO electric_grid_substation_assets (AssetID, SubstationID, AssetTag, AssetType, Manufacturer, ModelNumber, InstallationDate, CapacityMVA, VoltageLevelKV, CurrentRatingA, Status, LastInspectionDate, NextMaintenanceDate, LocationLatitude, LocationLongitude, OwnerDepartment, WarrantyEndDate, AssetCondition, DecommissionDate, Comments) VALUES (2, 2002, 'SW-045', 'CircuitBreaker', 'ABB', 'CB-300', '2017-07-22', 30.0, 115.0, 800.0, 'Operational', '2023-06-15', '2024-06-15', 34.0522, -118.2437, 'Operations', '2029-07-22', 'Fair', NULL, 'Mainline breaker');
INSERT INTO electric_grid_substation_assets (AssetID, SubstationID, AssetTag, AssetType, Manufacturer, ModelNumber, InstallationDate, CapacityMVA, VoltageLevelKV, CurrentRatingA, Status, LastInspectionDate, NextMaintenanceDate, LocationLatitude, LocationLongitude, OwnerDepartment, WarrantyEndDate, AssetCondition, DecommissionDate, Comments) VALUES (3, 2003, 'CAP-012', 'CapacitorBank', 'General Electric', 'CB-1200', '2019-11-05', 20.0, 66.0, 500.0, 'Operational', '2023-07-01', '2024-07-01', 41.8781, -87.6298, 'Operations', '2031-11-05', 'Excellent', NULL, 'Voltage support bank');

-- Chemical batches for water treatment plants, adjacent to water supply network
CREATE TABLE water_treatment_chemical_batches
(
    BatchID INTEGER PRIMARY KEY AUTOINCREMENT,
    PlantID INTEGER,
    ChemicalName TEXT,
    BatchNumber TEXT,
    Supplier TEXT,
    ArrivalDate DATE,
    ExpirationDate DATE,
    QuantityKg REAL,
    ConcentrationPercent REAL,
    StorageTemperatureC REAL,
    StorageLocation TEXT,
    SafetyDataSheetURL TEXT,
    HandledBy TEXT,
    InspectionPass INTEGER,
    InspectionDate DATE,
    Comments TEXT,
    AppliedToProcess TEXT,
    ApplicationDate DATE,
    ResidualLevelPPM REAL,
    DisposalMethod TEXT
);
INSERT INTO water_treatment_chemical_batches (BatchID, PlantID, ChemicalName, BatchNumber, Supplier, ArrivalDate, ExpirationDate, QuantityKg, ConcentrationPercent, StorageTemperatureC, StorageLocation, SafetyDataSheetURL, HandledBy, InspectionPass, InspectionDate, Comments, AppliedToProcess, ApplicationDate, ResidualLevelPPM, DisposalMethod) VALUES (1, 301, 'Sodium Hypochlorite', 'CH-20230801', 'ChemCo', '2023-08-01', '2024-08-01', 1200.0, 12.5, 4.0, 'Warehouse A', 'http://sds.example.com/ch', 'Emma Torres', 1, '2023-08-02', 'Stored per guidelines', 'Disinfection', '2023-08-05', 0.2, 'Neutralization');
INSERT INTO water_treatment_chemical_batches (BatchID, PlantID, ChemicalName, BatchNumber, Supplier, ArrivalDate, ExpirationDate, QuantityKg, ConcentrationPercent, StorageTemperatureC, StorageLocation, SafetyDataSheetURL, HandledBy, InspectionPass, InspectionDate, Comments, AppliedToProcess, ApplicationDate, ResidualLevelPPM, DisposalMethod) VALUES (2, 302, 'Alum', 'AL-20230715', 'MineralSup', '2023-07-15', '2025-07-15', 800.0, 30.0, 10.0, 'Warehouse B', 'http://sds.example.com/al', 'Liam Patel', 1, '2023-07-16', 'Checked for moisture', 'Coagulation', '2023-07-20', 0.5, 'Landfill');
INSERT INTO water_treatment_chemical_batches (BatchID, PlantID, ChemicalName, BatchNumber, Supplier, ArrivalDate, ExpirationDate, QuantityKg, ConcentrationPercent, StorageTemperatureC, StorageLocation, SafetyDataSheetURL, HandledBy, InspectionPass, InspectionDate, Comments, AppliedToProcess, ApplicationDate, ResidualLevelPPM, DisposalMethod) VALUES (3, 303, 'PolyDADMAC', 'PD-20230910', 'PolyChem', '2023-09-10', '2024-09-10', 600.0, 5.0, 8.0, 'Warehouse C', 'http://sds.example.com/pd', 'Nina Shah', 0, '2023-09-12', 'Failed viscosity test', 'Flocculation', '2023-09-15', 0.0, 'Returned to supplier');

-- Drone delivery operational metrics, extended from logistics_drone_fleet
CREATE TABLE drone_delivery_operational_metrics
(
    FlightID INTEGER PRIMARY KEY AUTOINCREMENT,
    DroneID TEXT,
    OperatorID INTEGER,
    LaunchDateTime TEXT,
    LandingDateTime TEXT,
    OriginLocation TEXT,
    DestinationLocation TEXT,
    PayloadWeightKg REAL,
    FlightDistanceKm REAL,
    FlightTimeMinutes REAL,
    BatteryUsagePercent REAL,
    WindSpeedKPH REAL,
    TemperatureC REAL,
    SuccessfulDelivery INTEGER,
    IncidentReported INTEGER,
    IncidentDescription TEXT,
    PackageID TEXT,
    WeatherCondition TEXT,
    AirspaceRestrictionFlag INTEGER,
    RevenueUSD REAL
);
INSERT INTO drone_delivery_operational_metrics (FlightID, DroneID, OperatorID, LaunchDateTime, LandingDateTime, OriginLocation, DestinationLocation, PayloadWeightKg, FlightDistanceKm, FlightTimeMinutes, BatteryUsagePercent, WindSpeedKPH, TemperatureC, SuccessfulDelivery, IncidentReported, IncidentDescription, PackageID, WeatherCondition, AirspaceRestrictionFlag, RevenueUSD) VALUES (1, 'DRN-1001', 401, '2023-08-10 09:15:00', '2023-08-10 09:25:00', 'Warehouse A', 'Customer 45', 2.3, 12.5, 10.0, 22.0, 8.0, 22.5, 1, 0, '', 'PKG-9001', 'Clear', 0, 15.75);
INSERT INTO drone_delivery_operational_metrics (FlightID, DroneID, OperatorID, LaunchDateTime, LandingDateTime, OriginLocation, DestinationLocation, PayloadWeightKg, FlightDistanceKm, FlightTimeMinutes, BatteryUsagePercent, WindSpeedKPH, TemperatureC, SuccessfulDelivery, IncidentReported, IncidentDescription, PackageID, WeatherCondition, AirspaceRestrictionFlag, RevenueUSD) VALUES (2, 'DRN-1002', 402, '2023-08-10 10:05:00', '2023-08-10 10:20:00', 'Warehouse B', 'Customer 78', 3.1, 18.0, 15.0, 28.0, 12.5, 24.0, 0, 1, 'Minor gust caused deviation', 'PKG-9002', 'Windy', 1, 22.00);
INSERT INTO drone_delivery_operational_metrics (FlightID, DroneID, OperatorID, LaunchDateTime, LandingDateTime, OriginLocation, DestinationLocation, PayloadWeightKg, FlightDistanceKm, FlightTimeMinutes, BatteryUsagePercent, WindSpeedKPH, TemperatureC, SuccessfulDelivery, IncidentReported, IncidentDescription, PackageID, WeatherCondition, AirspaceRestrictionFlag, RevenueUSD) VALUES (3, 'DRN-1003', 403, '2023-08-10 11:30:00', '2023-08-10 11:45:00', 'Warehouse C', 'Customer 12', 1.8, 9.0, 12.0, 19.0, 5.0, 20.0, 1, 0, '', 'PKG-9003', 'Clear', 0, 13.50);

-- Museum exhibit catalog, unrelated to product or customer data
CREATE TABLE museum_exhibit_catalog
(
    ExhibitID INTEGER PRIMARY KEY AUTOINCREMENT,
    ExhibitName TEXT,
    Category TEXT,
    Artist TEXT,
    OriginCountry TEXT,
    AcquisitionDate DATE,
    EstimatedValueUSD REAL,
    CurrentLocation TEXT,
    DisplayStartDate DATE,
    DisplayEndDate DATE,
    ConditionStatus TEXT,
    ConservationNotes TEXT,
    InsurancePolicyNumber TEXT,
    InsuranceProvider TEXT,
    LoanStatus TEXT,
    LoanInstitution TEXT,
    LoanStartDate DATE,
    LoanEndDate DATE,
    ExhibitDescription TEXT,
    CuratorName TEXT
);
INSERT INTO museum_exhibit_catalog (ExhibitID, ExhibitName, Category, Artist, OriginCountry, AcquisitionDate, EstimatedValueUSD, CurrentLocation, DisplayStartDate, DisplayEndDate, ConditionStatus, ConservationNotes, InsurancePolicyNumber, InsuranceProvider, LoanStatus, LoanInstitution, LoanStartDate, LoanEndDate, ExhibitDescription, CuratorName) VALUES (1, 'Starry Night', 'Painting', 'Vincent van Gogh', 'Netherlands', '2010-05-12', 85000000.0, 'Gallery 2', '2023-09-01', '2024-03-01', 'Excellent', 'None', 'POL-001', 'Global Insure', 'Owned', NULL, NULL, NULL, 'Leonardo Martinez');
INSERT INTO museum_exhibit_catalog (ExhibitID, ExhibitName, Category, Artist, OriginCountry, AcquisitionDate, EstimatedValueUSD, CurrentLocation, DisplayStartDate, DisplayEndDate, ConditionStatus, ConservationNotes, InsurancePolicyNumber, InsuranceProvider, LoanStatus, LoanInstitution, LoanStartDate, LoanEndDate, ExhibitDescription, CuratorName) VALUES (2, 'The Thinker', 'Sculpture', 'Auguste Rodin', 'France', '2005-11-20', 12000000.0, 'Sculpture Hall', '2023-10-15', '2024-10-15', 'Good', 'Minor surface cleaning required', 'POL-002', 'ArtSecure', 'On Loan', 'National Museum', '2023-10-15', '2025-10-14', 'Bronze sculpture depicting a man in deep thought', 'Maria Chavez');
INSERT INTO museum_exhibit_catalog (ExhibitID, ExhibitName, Category, Artist, OriginCountry, AcquisitionDate, EstimatedValueUSD, CurrentLocation, DisplayStartDate, DisplayEndDate, ConditionStatus, ConservationNotes, InsurancePolicyNumber, InsuranceProvider, LoanStatus, LoanInstitution, LoanStartDate, LoanEndDate, ExhibitDescription, CuratorName) VALUES (3, 'Ancient Egyptian Sarcophagus', 'Artifact', NULL, 'Egypt', '1998-03-03', 5000000.0, 'Ancient Egypt Wing', '2023-12-01', '2025-12-01', 'Fair', 'Repaired cracks in 2020', 'POL-003', 'Heritage Cover', 'Owned', NULL, NULL, NULL, 'Wooden sarcophagus dating to 1500 BCE', 'David Liu');

-- Renewable energy certificate registry, complementary to renewable_energy_certificate_registry (already exists) – create a distinct but realistic table
CREATE TABLE renewable_energy_certificate_registry_v2
(
    CertificateID INTEGER PRIMARY KEY AUTOINCREMENT,
    ProjectID INTEGER,
    CertificateNumber TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    EnergyMWh REAL,
    RenewableType TEXT,
    IssuingAuthority TEXT,
    OwnerEntity TEXT,
    TransactionPriceUSD REAL,
    RegisteredBy TEXT,
    RegistrationDate DATE,
    Status TEXT,
    VerificationMethod TEXT,
    AuditReference TEXT,
    ClimateImpactFactor REAL,
    CarbonOffsetTonnes REAL,
    Notes TEXT,
    ComplianceFlag INTEGER,
    CancelationDate DATE
);
INSERT INTO renewable_energy_certificate_registry_v2 (CertificateID, ProjectID, CertificateNumber, IssueDate, ExpirationDate, EnergyMWh, RenewableType, IssuingAuthority, OwnerEntity, TransactionPriceUSD, RegisteredBy, RegistrationDate, Status, VerificationMethod, AuditReference, ClimateImpactFactor, CarbonOffsetTonnes, Notes, ComplianceFlag, CancelationDate) VALUES (1, 9001, 'REC-2023-001', '2023-01-15', '2033-01-15', 5000.0, 'Solar', 'National Energy Agency', 'GreenPower Inc', 250000.0, 'Emily Zhou', '2023-01-20', 'Active', 'ThirdPartyAudit', 'AUD-1001', 0.95, 4.2, 'Initial issuance', 1, NULL);
INSERT INTO renewable_energy_certificate_registry_v2 (CertificateID, ProjectID, CertificateNumber, IssueDate, ExpirationDate, EnergyMWh, RenewableType, IssuingAuthority, OwnerEntity, TransactionPriceUSD, RegisteredBy, RegistrationDate, Status, VerificationMethod, AuditReference, ClimateImpactFactor, CarbonOffsetTonnes, Notes, ComplianceFlag, CancelationDate) VALUES (2, 9002, 'REC-2023-002', '2023-02-10', '2033-02-10', 7500.0, 'Wind', 'National Energy Agency', 'WindHarvest Ltd', 375000.0, 'Michael Tan', '2023-02-15', 'Active', 'SelfCertification', 'AUD-1002', 0.92, 6.3, 'Renewed after verification', 1, NULL);
INSERT INTO renewable_energy_certificate_registry_v2 (CertificateID, ProjectID, CertificateNumber, IssueDate, ExpirationDate, EnergyMWh, RenewableType, IssuingAuthority, OwnerEntity, TransactionPriceUSD, RegisteredBy, RegistrationDate, Status, VerificationMethod, AuditReference, ClimateImpactFactor, CarbonOffsetTonnes, Notes, ComplianceFlag, CancelationDate) VALUES (3, 9003, 'REC-2023-003', '2023-03-05', '2033-03-05', 3000.0, 'Hydro', 'National Energy Agency', 'HydroFlow Corp', 150000.0, 'Sofia Ramos', '2023-03-10', 'Cancelled', 'ThirdPartyAudit', 'AUD-1003', 0.88, 2.5, 'Project discontinued', 0, '2024-06-01');

-- Smart city noise sensor inventory, adjacent to smart_city_noise_monitoring but distinct
CREATE TABLE smart_city_noise_sensor_inventory
(
    SensorID INTEGER PRIMARY KEY AUTOINCREMENT,
    SensorSerial TEXT,
    InstallationDate DATE,
    Latitude REAL,
    Longitude REAL,
    Neighborhood TEXT,
    SensorModel TEXT,
    Manufacturer TEXT,
    CalibrationDate DATE,
    SensitivityDb REAL,
    FrequencyRangeHz TEXT,
    PowerSource TEXT,
    ConnectivityType TEXT,
    DataRetentionDays INTEGER,
    FirmwareVersion TEXT,
    MaintenanceCycleMonths INTEGER,
    LastMaintenanceDate DATE,
    Status TEXT,
    OwnerAgency TEXT,
    Notes TEXT
);
INSERT INTO smart_city_noise_sensor_inventory (SensorID, SensorSerial, InstallationDate, Latitude, Longitude, Neighborhood, SensorModel, Manufacturer, CalibrationDate, SensitivityDb, FrequencyRangeHz, PowerSource, ConnectivityType, DataRetentionDays, FirmwareVersion, MaintenanceCycleMonths, LastMaintenanceDate, Status, OwnerAgency, Notes) VALUES (1, 'NS-10001', '2022-04-12', 38.8951, -77.0364, 'Downtown', 'NoiseX200', 'AcousticTech', '2023-04-10', -85.0, '20-20000', 'Solar', 'Cellular', 365, 'v1.2.3', 12, '2023-10-15', 'Active', 'CityNoiseDept', 'Installed near main intersection');
INSERT INTO smart_city_noise_sensor_inventory (SensorID, SensorSerial, InstallationDate, Latitude, Longitude, Neighborhood, SensorModel, Manufacturer, CalibrationDate, SensitivityDb, FrequencyRangeHz, PowerSource, ConnectivityType, DataRetentionDays, FirmwareVersion, MaintenanceCycleMonths, LastMaintenanceDate, Status, OwnerAgency, Notes) VALUES (2, 'NS-10002', '2022-05-20', 38.9072, -77.0369, 'Uptown', 'NoiseX200', 'AcousticTech', '2023-05-18', -84.5, '20-20000', 'Mains', 'WiFi', 365, 'v1.2.3', 12, '2023-11-01', 'Active', 'CityNoiseDept', 'Mounted on public library roof');
INSERT INTO smart_city_noise_sensor_inventory (SensorID, SensorSerial, InstallationDate, Latitude, Longitude, Neighborhood, SensorModel, Manufacturer, CalibrationDate, SensitivityDb, FrequencyRangeHz, PowerSource, ConnectivityType, DataRetentionDays, FirmwareVersion, MaintenanceCycleMonths, LastMaintenanceDate, Status, OwnerAgency, Notes) VALUES (3, 'NS-10003', '2022-06-15', 38.8895, -77.0353, 'Midtown', 'NoiseX200', 'AcousticTech', '2023-06-12', -86.0, '20-20000', 'Battery', 'Ethernet', 365, 'v1.2.3', 12, '2023-12-05', 'Inactive', 'CityNoiseDept', 'Awaiting relocation');