-- Research Projects
CREATE TABLE research_projects
(
    Id INTEGER PRIMARY KEY,
    Title TEXT,
    LeadResearcherId INTEGER,
    StartDate DATETIME,
    EndDate DATETIME,
    FundingAgency TEXT,
    Budget REAL,
    Status TEXT,
    Description TEXT,
    Category TEXT,
    Keywords TEXT,
    ProjectCode TEXT,
    Objective TEXT,
    Methodology TEXT,
    ExpectedResults TEXT,
    ProgressPercent REAL,
    LastReviewDate DATETIME,
    CollaboratorCount INTEGER,
    PublicationsExpected INTEGER,
    IsInternational INTEGER
);

INSERT INTO research_projects (Id, Title, LeadResearcherId, StartDate, EndDate, FundingAgency, Budget, Status, Description, Category, Keywords, ProjectCode, Objective, Methodology, ExpectedResults, ProgressPercent, LastReviewDate, CollaboratorCount, PublicationsExpected, IsInternational)
VALUES (1, 'Quantum Computing Exploration', 101, '2022-03-01 00:00:00', '2025-02-28 00:00:00', 'National Science Foundation', 1250000.00, 'Active', 'Study of quantum algorithms', 'Computer Science', 'quantum,algorithms,hardware', 'QC-2022-001', 'Develop scalable quantum algorithms', 'Simulation and hardware testing', 'Publish 5 papers', 45.5, '2023-06-15 00:00:00', 4, 5, 1);

INSERT INTO research_projects (Id, Title, LeadResearcherId, StartDate, EndDate, FundingAgency, Budget, Status, Description, Category, Keywords, ProjectCode, Objective, Methodology, ExpectedResults, ProgressPercent, LastReviewDate, CollaboratorCount, PublicationsExpected, IsInternational)
VALUES (2, 'Renewable Energy Integration', 102, '2021-01-15 00:00:00', '2024-12-31 00:00:00', 'Department of Energy', 980000.00, 'Active', 'Integrate solar and wind into grid', 'Energy', 'renewable,grid,storage', 'RE-2021-045', 'Increase renewable share to 60%', 'Field trials and modeling', 'Demonstrate 3 pilot sites', 60.0, '2023-05-20 00:00:00', 6, 3, 0);

INSERT INTO research_projects (Id, Title, LeadResearcherId, StartDate, EndDate, FundingAgency, Budget, Status, Description, Category, Keywords, ProjectCode, Objective, Methodology, ExpectedResults, ProgressPercent, LastReviewDate, CollaboratorCount, PublicationsExpected, IsInternational)
VALUES (3, 'AI for Healthcare Diagnostics', 103, '2023-07-01 00:00:00', '2026-06-30 00:00:00', 'Health Innovation Fund', 750000.00, 'Planning', 'Apply AI to radiology images', 'Biomedical', 'AI,diagnostics,imaging', 'AIH-2023-010', 'Reduce diagnosis time by 30%', 'Deep learning pipeline', 'Validate on 10 hospitals', 10.0, '2023-09-01 00:00:00', 2, 2, 1);

-- Clinical Trials
CREATE TABLE clinical_trials
(
    Id INTEGER PRIMARY KEY,
    TrialName TEXT,
    SponsorId INTEGER,
    Phase TEXT,
    StartDate DATETIME,
    EndDate DATETIME,
    DiseaseArea TEXT,
    EnrollmentTarget INTEGER,
    EnrolledCount INTEGER,
    PrimaryEndpoint TEXT,
    SecondaryEndpoint TEXT,
    Status TEXT,
    Location TEXT,
    InvestigatorId INTEGER,
    FundingAmount REAL,
    RegulatoryApprovalDate DATETIME,
    DataLockDate DATETIME,
    ResultsPublished INTEGER,
    IsPlaceboControlled INTEGER,
    IsDoubleBlind INTEGER
);

INSERT INTO clinical_trials (Id, TrialName, SponsorId, Phase, StartDate, EndDate, DiseaseArea, EnrollmentTarget, EnrolledCount, PrimaryEndpoint, SecondaryEndpoint, Status, Location, InvestigatorId, FundingAmount, RegulatoryApprovalDate, DataLockDate, ResultsPublished, IsPlaceboControlled, IsDoubleBlind)
VALUES (1, 'HeartGuard Study', 201, 'Phase II', '2022-05-01 00:00:00', '2024-04-30 00:00:00', 'Cardiology', 300, 150, 'Reduction in blood pressure', 'Improved cholesterol', 'Recruiting', 'Boston MA', 301, 2000000.00, '2022-02-15 00:00:00', NULL, 0, 1, 1);

INSERT INTO clinical_trials (Id, TrialName, SponsorId, Phase, StartDate, EndDate, DiseaseArea, EnrollmentTarget, EnrolledCount, PrimaryEndpoint, SecondaryEndpoint, Status, Location, InvestigatorId, FundingAmount, RegulatoryApprovalDate, DataLockDate, ResultsPublished, IsPlaceboControlled, IsDoubleBlind)
VALUES (2, 'NeuroProtect Trial', 202, 'Phase III', '2021-09-01 00:00:00', '2023-08-31 00:00:00', 'Neurology', 500, 500, 'Delay in disease progression', 'Cognitive function scores', 'Active', 'San Francisco CA', 302, 3500000.00, '2021-06-20 00:00:00', '2023-07-01 00:00:00', 1, 0, 1);

INSERT INTO clinical_trials (Id, TrialName, SponsorId, Phase, StartDate, EndDate, DiseaseArea, EnrollmentTarget, EnrolledCount, PrimaryEndpoint, SecondaryEndpoint, Status, Location, InvestigatorId, FundingAmount, RegulatoryApprovalDate, DataLockDate, ResultsPublished, IsPlaceboControlled, IsDoubleBlind)
VALUES (3, 'Diabetes Control Study', 203, 'Phase I', '2023-01-15 00:00:00', '2024-12-31 00:00:00', 'Endocrinology', 100, 20, 'HbA1c reduction', 'Weight change', 'Planning', 'Chicago IL', 303, 800000.00, NULL, NULL, 0, 1, 0);

-- Environmental Stations
CREATE TABLE environmental_stations
(
    Id INTEGER PRIMARY KEY,
    StationName TEXT,
    Latitude REAL,
    Longitude REAL,
    Elevation REAL,
    InstallationDate DATETIME,
    OwnerOrganization TEXT,
    StationType TEXT,
    SensorCount INTEGER,
    DataUploadFrequency INTEGER,
    IsActive INTEGER,
    MaintenanceSchedule TEXT,
    LastMaintenanceDate DATETIME,
    CalibrationDate DATETIME,
    PowerSource TEXT,
    ConnectivityType TEXT,
    Region TEXT,
    Country TEXT,
    DataRetentionPolicy TEXT,
    AlertThreshold REAL
);

INSERT INTO environmental_stations (Id, StationName, Latitude, Longitude, Elevation, InstallationDate, OwnerOrganization, StationType, SensorCount, DataUploadFrequency, IsActive, MaintenanceSchedule, LastMaintenanceDate, CalibrationDate, PowerSource, ConnectivityType, Region, Country, DataRetentionPolicy, AlertThreshold)
VALUES (1, 'Lakeview North', 45.1234, -122.5678, 250.5, '2020-04-10 00:00:00', 'State Environmental Agency', 'Water Quality', 12, 60, 1, 'Annual', '2023-03-01 00:00:00', '2023-02-20 00:00:00', 'Solar', 'Cellular', 'Northwest', 'USA', '5 years', 7.5);

INSERT INTO environmental_stations (Id, StationName, Latitude, Longitude, Elevation, InstallationDate, OwnerOrganization, StationType, SensorCount, DataUploadFrequency, IsActive, MaintenanceSchedule, LastMaintenanceDate, CalibrationDate, PowerSource, ConnectivityType, Region, Country, DataRetentionPolicy, AlertThreshold)
VALUES (2, 'Desert Edge', 34.5678, -115.4321, 550.0, '2019-09-15 00:00:00', 'Federal Climate Office', 'Air Quality', 8, 30, 1, 'SemiAnnual', '2023-01-15 00:00:00', '2022-12-20 00:00:00', 'Wind', 'Satellite', 'Southwest', 'USA', '3 years', 120.0);

INSERT INTO environmental_stations (Id, StationName, Latitude, Longitude, Elevation, InstallationDate, OwnerOrganization, StationType, SensorCount, DataUploadFrequency, IsActive, MaintenanceSchedule, LastMaintenanceDate, CalibrationDate, PowerSource, ConnectivityType, Region, Country, DataRetentionPolicy, AlertThreshold)
VALUES (3, 'Coastal Breeze', 36.7783, -119.4179, 15.0, '2021-06-01 00:00:00', 'Coastal Research Institute', 'Marine', 10, 15, 1, 'Quarterly', '2023-04-10 00:00:00', '2023-04-01 00:00:00', 'Grid', 'Fiber', 'Central', 'USA', '7 years', 3.2);

-- Warehouse Assets
CREATE TABLE warehouse_assets
(
    AssetId INTEGER PRIMARY KEY,
    WarehouseId INTEGER,
    AssetTag TEXT,
    AssetType TEXT,
    Description TEXT,
    PurchaseDate DATETIME,
    WarrantyExpiry DATETIME,
    Cost REAL,
    CurrentValue REAL,
    SerialNumber TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    Dimensions TEXT,
    Weight REAL,
    LocationWithinWarehouse TEXT,
    Status TEXT,
    LastAuditedDate DATETIME,
    AssignedToUserId INTEGER,
    DepreciationRate REAL,
    IsHazardous INTEGER
);

INSERT INTO warehouse_assets (AssetId, WarehouseId, AssetTag, AssetType, Description, PurchaseDate, WarrantyExpiry, Cost, CurrentValue, SerialNumber, Manufacturer, ModelNumber, Dimensions, Weight, LocationWithinWarehouse, Status, LastAuditedDate, AssignedToUserId, DepreciationRate, IsHazardous)
VALUES (1, 10, 'WA-001', 'Forklift', 'Electric forklift model X', '2018-02-10 00:00:00', '2023-02-10 00:00:00', 25000.00, 15000.00, 'SN12345', 'LiftCo', 'FX-200', '2.5x2.0x3.0', 3500.0, 'Aisle 3', 'InUse', '2023-06-01 00:00:00', 45, 0.15, 0);

INSERT INTO warehouse_assets (AssetId, WarehouseId, AssetTag, AssetType, Description, PurchaseDate, WarrantyExpiry, Cost, CurrentValue, SerialNumber, Manufacturer, ModelNumber, Dimensions, Weight, LocationWithinWarehouse, Status, LastAuditedDate, AssignedToUserId, DepreciationRate, IsHazardous)
VALUES (2, 10, 'WA-002', 'PalletJack', 'Manual pallet jack', '2019-05-20 00:00:00', '2024-05-20 00:00:00', 300.00, 250.00, 'SN67890', 'LoadMover', 'PJ-10', '1.2x0.8x1.0', 120.0, 'Aisle 5', 'Available', '2023-05-15 00:00:00', NULL, 0.10, 0);

INSERT INTO warehouse_assets (AssetId, WarehouseId, AssetTag, AssetType, Description, PurchaseDate, WarrantyExpiry, Cost, CurrentValue, SerialNumber, Manufacturer, ModelNumber, Dimensions, Weight, LocationWithinWarehouse, Status, LastAuditedDate, AssignedToUserId, DepreciationRate, IsHazardous)
VALUES (3, 12, 'WA-003', 'Battery', 'Lithium battery pack', '2021-11-01 00:00:00', '2026-11-01 00:00:00', 8000.00, 7500.00, 'SN55555', 'PowerCell', 'BP-500', '0.5x0.5x0.8', 50.0, 'ColdRoom', 'InUse', '2023-04-20 00:00:00', 27, 0.05, 1);

-- Energy Grid Events
CREATE TABLE energy_grid_events
(
    EventId INTEGER PRIMARY KEY,
    EventType TEXT,
    Timestamp DATETIME,
    GridRegion TEXT,
    AffectedCapacityMW REAL,
    DurationMinutes INTEGER,
    Cause TEXT,
    MitigationActions TEXT,
    Status TEXT,
    OperatorId INTEGER,
    Remarks TEXT,
    EstimatedLossUSD REAL,
    FrequencyHz REAL,
    VoltageKV REAL,
    TemperatureC REAL,
    WeatherCondition TEXT,
    LoadSheddingFlag INTEGER,
    BackupActivatedFlag INTEGER,
    NotificationSent INTEGER,
    ResolutionTimestamp DATETIME
);

INSERT INTO energy_grid_events (EventId, EventType, Timestamp, GridRegion, AffectedCapacityMW, DurationMinutes, Cause, MitigationActions, Status, OperatorId, Remarks, EstimatedLossUSD, FrequencyHz, VoltageKV, TemperatureC, WeatherCondition, LoadSheddingFlag, BackupActivatedFlag, NotificationSent, ResolutionTimestamp)
VALUES (1, 'FrequencyDrop', '2023-07-12 14:30:00', 'Midwest', 150.0, 45, 'GeneratorTrip', 'Load shedding, activate reserve', 'Resolved', 501, 'Rapid drop detected', 250000.00, 59.8, 138.0, 22.5, 'Clear', 1, 1, 1, '2023-07-12 15:15:00');

INSERT INTO energy_grid_events (EventId, EventType, Timestamp, GridRegion, AffectedCapacityMW, DurationMinutes, Cause, MitigationActions, Status, OperatorId, Remarks, EstimatedLossUSD, FrequencyHz, VoltageKV, TemperatureC, WeatherCondition, LoadSheddingFlag, BackupActivatedFlag, NotificationSent, ResolutionTimestamp)
VALUES (2, 'StormOutage', '2023-08-20 09:10:00', 'Northeast', 300.0, 180, 'Lightning', 'Switch to underground lines', 'InProgress', 502, 'Severe storm causing line breaks', 1200000.00, 60.0, 120.0, 18.0, 'Storm', 1, 0, 1, NULL);

INSERT INTO energy_grid_events (EventId, EventType, Timestamp, GridRegion, AffectedCapacityMW, DurationMinutes, Cause, MitigationActions, Status, OperatorId, Remarks, EstimatedLossUSD, FrequencyHz, VoltageKV, TemperatureC, WeatherCondition, LoadSheddingFlag, BackupActivatedFlag, NotificationSent, ResolutionTimestamp)
VALUES (3, 'Maintenance', '2023-09-05 22:00:00', 'Southwest', 80.0, 240, 'Scheduled', 'Redirect flow, inform customers', 'Planned', 503, 'Routine transformer maintenance', 50000.00, 60.0, 115.0, 25.0, 'Clear', 0, 0, 0, '2023-09-06 02:00:00');

-- Space Mission Logs
CREATE TABLE space_mission_logs
(
    LogId INTEGER PRIMARY KEY,
    MissionName TEXT,
    LogTimestamp DATETIME,
    Subsystem TEXT,
    EventCode TEXT,
    Description TEXT,
    Severity TEXT,
    OperatorId INTEGER,
    TelemetryValue REAL,
    Unit TEXT,
    OrbitalPhase TEXT,
    AnomalyFlag INTEGER,
    ResolutionStatus TEXT,
    FollowUpTaskId INTEGER,
    CreatedBy INTEGER,
    UpdatedBy INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    ReferenceDocument TEXT,
    IsCritical INTEGER
);

INSERT INTO space_mission_logs (LogId, MissionName, LogTimestamp, Subsystem, EventCode, Description, Severity, OperatorId, TelemetryValue, Unit, OrbitalPhase, AnomalyFlag, ResolutionStatus, FollowUpTaskId, CreatedBy, UpdatedBy, CreatedAt, UpdatedAt, ReferenceDocument, IsCritical)
VALUES (1, 'LunarProbeX', '2023-06-01 12:00:00', 'Propulsion', 'EV-001', 'Engine thrust nominal', 'Info', 601, 1200.5, 'N', 'Cruise', 0, 'Closed', NULL, 701, 701, '2023-06-01 12:00:00', '2023-06-01 12:00:00', 'propulsion_manual.pdf', 0);

INSERT INTO space_mission_logs (LogId, MissionName, LogTimestamp, Subsystem, EventCode, Description, Severity, OperatorId, TelemetryValue, Unit, OrbitalPhase, AnomalyFlag, ResolutionStatus, FollowUpTaskId, CreatedBy, UpdatedBy, CreatedAt, UpdatedAt, ReferenceDocument, IsCritical)
VALUES (2, 'LunarProbeX', '2023-06-02 03:15:00', 'Communications', 'EV-045', 'Signal loss detected', 'Warning', 602, 0.0, 'N/A', 'Cruise', 1, 'Open', 1001, 702, 702, '2023-06-02 03:15:00', '2023-06-02 03:15:00', 'comm_guide.docx', 1);

INSERT INTO space_mission_logs (LogId, MissionName, LogTimestamp, Subsystem, EventCode, Description, Severity, OperatorId, TelemetryValue, Unit, OrbitalPhase, AnomalyFlag, ResolutionStatus, FollowUpTaskId, CreatedBy, UpdatedBy, CreatedAt, UpdatedAt, ReferenceDocument, IsCritical)
VALUES (3, 'MarsOrbitY', '2023-07-10 20:45:00', 'Navigation', 'EV-078', 'Trajectory correction burn executed', 'Info', 603, 15.2, 'deg', 'Approach', 0, 'Closed', NULL, 703, 703, '2023-07-10 20:45:00', '2023-07-10 20:45:00', 'nav_procedures.pdf', 0);

-- Museum Exhibits
CREATE TABLE museum_exhibits
(
    ExhibitId INTEGER PRIMARY KEY,
    MuseumId INTEGER,
    ExhibitName TEXT,
    Artist TEXT,
    CreationYear INTEGER,
    AcquisitionDate DATETIME,
    ExhibitType TEXT,
    Hall TEXT,
    Description TEXT,
    Dimensions TEXT,
    Weight REAL,
    Material TEXT,
    ConservationStatus TEXT,
    DisplayStartDate DATETIME,
    DisplayEndDate DATETIME,
    CuratorId INTEGER,
    EstimatedValue REAL,
    Tags TEXT,
    IsOnLoan INTEGER,
    LoanEndDate DATETIME
);

INSERT INTO museum_exhibits (ExhibitId, MuseumId, ExhibitName, Artist, CreationYear, AcquisitionDate, ExhibitType, Hall, Description, Dimensions, Weight, Material, ConservationStatus, DisplayStartDate, DisplayEndDate, CuratorId, EstimatedValue, Tags, IsOnLoan, LoanEndDate)
VALUES (1, 1, 'Starry Night', 'Vincent van Gogh', 1889, '1990-03-15 00:00:00', 'Painting', 'Impressionist Gallery', 'Iconic night sky depiction', '73.7x92.1 cm', 15.0, 'Oil on canvas', 'Excellent', '2023-01-01 00:00:00', '2023-12-31 00:00:00', 801, 100000000.00, 'post-impressionism,night,stars', 0, NULL);

INSERT INTO museum_exhibits (ExhibitId, MuseumId, ExhibitName, Artist, CreationYear, AcquisitionDate, ExhibitType, Hall, Description, Dimensions, Weight, Material, ConservationStatus, DisplayStartDate, DisplayEndDate, CuratorId, EstimatedValue, Tags, IsOnLoan, LoanEndDate)
VALUES (2, 1, 'The Thinker', 'Auguste Rodin', 1904, '2005-07-20 00:00:00', 'Sculpture', 'Sculpture Garden', 'Bronze sculpture of a man in contemplation', '180x98x145 cm', 1800.0, 'Bronze', 'Good', '2023-04-01 00:00:00', '2025-03-31 00:00:00', 802, 15000000.00, 'bronze,philosophy', 1, '2025-03-31 00:00:00');

INSERT INTO museum_exhibits (ExhibitId, MuseumId, ExhibitName, Artist, CreationYear, AcquisitionDate, ExhibitType, Hall, Description, Dimensions, Weight, Material, ConservationStatus, DisplayStartDate, DisplayEndDate, CuratorId, EstimatedValue, Tags, IsOnLoan, LoanEndDate)
VALUES (3, 2, 'Ancient Greek Vase', 'Unknown', -450, '2010-11-05 00:00:00', 'Ceramics', 'Ancient Art', 'Black-figure pottery', '30x25 cm', 2.5, 'Terracotta', 'Fair', '2023-06-15 00:00:00', '2024-06-14 00:00:00', 803, 500000.00, 'ancient,greece,ceramics', 0, NULL);

-- Food Supply Transactions
CREATE TABLE food_supply_transactions
(
    TransactionId INTEGER PRIMARY KEY,
    SupplierId INTEGER,
    DestinationWarehouseId INTEGER,
    ProductSKU TEXT,
    ProductName TEXT,
    QuantityUnits INTEGER,
    UnitOfMeasure TEXT,
    TransactionDate DATETIME,
    ExpiryDate DATETIME,
    ReceivedByUserId INTEGER,
    BatchNumber TEXT,
    TemperatureC REAL,
    QualityScore REAL,
    InspectionPassed INTEGER,
    InvoiceNumber TEXT,
    PaymentStatus TEXT,
    ShippingMethod TEXT,
    Carrier TEXT,
    TrackingNumber TEXT,
    Notes TEXT
);

INSERT INTO food_supply_transactions (TransactionId, SupplierId, DestinationWarehouseId, ProductSKU, ProductName, QuantityUnits, UnitOfMeasure, TransactionDate, ExpiryDate, ReceivedByUserId, BatchNumber, TemperatureC, QualityScore, InspectionPassed, InvoiceNumber, PaymentStatus, ShippingMethod, Carrier, TrackingNumber, Notes)
VALUES (1, 301, 10, 'FRU-001', 'Apples', 5000, 'kg', '2023-05-01 08:00:00', '2023-07-01 00:00:00', 45, 'BCH-20230501', 4.0, 9.5, 1, 'INV-1001', 'Paid', 'Truck', 'FastLogistics', 'TRK123456', 'No issues');

INSERT INTO food_supply_transactions (TransactionId, SupplierId, DestinationWarehouseId, ProductSKU, ProductName, QuantityUnits, UnitOfMeasure, TransactionDate, ExpiryDate, ReceivedByUserId, BatchNumber, TemperatureC, QualityScore, InspectionPassed, InvoiceNumber, PaymentStatus, ShippingMethod, Carrier, TrackingNumber, Notes)
VALUES (2, 302, 12, 'VEG-045', 'Carrots', 3000, 'kg', '2023-05-03 10:30:00', '2023-06-30 00:00:00', 46, 'BCH-20230503', 2.5, 8.8, 1, 'INV-1002', 'Pending', 'Rail', 'EcoTrans', 'TRK789012', 'Slight moisture');

INSERT INTO food_supply_transactions (TransactionId, SupplierId, DestinationWarehouseId, ProductSKU, ProductName, QuantityUnits, UnitOfMeasure, TransactionDate, ExpiryDate, ReceivedByUserId, BatchNumber, TemperatureC, QualityScore, InspectionPassed, InvoiceNumber, PaymentStatus, ShippingMethod, Carrier, TrackingNumber, Notes)
VALUES (3, 303, 11, 'MEAT-020', 'Chicken Breast', 2000, 'kg', '2023-05-05 14:45:00', '2023-05-20 00:00:00', 47, 'BCH-20230505', -18.0, 9.0, 1, 'INV-1003', 'Paid', 'RefrigeratedTruck', 'ColdChain', 'TRK345678', 'Temperature stable');

-- Urban Planning Projects
CREATE TABLE urban_planning_projects
(
    ProjectId INTEGER PRIMARY KEY,
    CityId INTEGER,
    ProjectName TEXT,
    Category TEXT,
    StartDate DATETIME,
    PlannedEndDate DATETIME,
    ActualEndDate DATETIME,
    BudgetUSD REAL,
    SpentUSD REAL,
    LeadPlannerId INTEGER,
    ContractorId INTEGER,
    Status TEXT,
    ZoningCode TEXT,
    ImpactAssessment TEXT,
    PublicCommentsCount INTEGER,
    ApprovalDate DATETIME,
    GISFilePath TEXT,
    ProjectManagerId INTEGER,
    Phase TEXT,
    IsInfrastructure INTEGER
);

INSERT INTO urban_planning_projects (ProjectId, CityId, ProjectName, Category, StartDate, PlannedEndDate, ActualEndDate, BudgetUSD, SpentUSD, LeadPlannerId, ContractorId, Status, ZoningCode, ImpactAssessment, PublicCommentsCount, ApprovalDate, GISFilePath, ProjectManagerId, Phase, IsInfrastructure)
VALUES (1, 1001, 'Riverfront Revitalization', 'Public Works', '2021-01-15 00:00:00', '2024-12-31 00:00:00', NULL, 25000000.00, 12000000.00, 901, 801, 'InProgress', 'RZ-01', 'Positive economic impact', 350, '2020-11-20 00:00:00', '/gis/riverfront.gpkg', 902, 'Construction', 1);

INSERT INTO urban_planning_projects (ProjectId, CityId, ProjectName, Category, StartDate, PlannedEndDate, ActualEndDate, BudgetUSD, SpentUSD, LeadPlannerId, ContractorId, Status, ZoningCode, ImpactAssessment, PublicCommentsCount, ApprovalDate, GISFilePath, ProjectManagerId, Phase, IsInfrastructure)
VALUES (2, 1002, 'Downtown Parking Garage', 'Infrastructure', '2022-06-01 00:00:00', '2025-05-31 00:00:00', NULL, 18000000.00, 7000000.00, 902, 802, 'Planning', 'DZ-03', 'Reduced traffic congestion', 210, '2022-03-15 00:00:00', '/gis/parking.gpkg', 903, 'Design', 1);

INSERT INTO urban_planning_projects (ProjectId, CityId, ProjectName, Category, StartDate, PlannedEndDate, ActualEndDate, BudgetUSD, SpentUSD, LeadPlannerId, ContractorId, Status, ZoningCode, ImpactAssessment, PublicCommentsCount, ApprovalDate, GISFilePath, ProjectManagerId, Phase, IsInfrastructure)
VALUES (3, 1003, 'Community Garden Initiative', 'Social', '2023-04-10 00:00:00', '2023-12-31 00:00:00', NULL, 500000.00, 150000.00, 903, 803, 'Active', 'CZ-07', 'Improved neighborhood cohesion', 85, '2023-02-01 00:00:00', '/gis/garden.gpkg', 904, 'Implementation', 0);

-- Wildlife Observations
CREATE TABLE wildlife_observations
(
    ObservationId INTEGER PRIMARY KEY,
    SpeciesCommonName TEXT,
    SpeciesScientificName TEXT,
    ObserverId INTEGER,
    ObservationDate DATETIME,
    Latitude REAL,
    Longitude REAL,
    Count INTEGER,
    Behavior TEXT,
    HabitatType TEXT,
    Weather TEXT,
    DeviceUsed TEXT,
    PhotoReference TEXT,
    AudioReference TEXT,
    VerificationStatus TEXT,
    Notes TEXT,
    IsEndangered INTEGER,
    ConservationStatus TEXT,
    Region TEXT,
    Country TEXT
);

INSERT INTO wildlife_observations (ObservationId, SpeciesCommonName, SpeciesScientificName, ObserverId, ObservationDate, Latitude, Longitude, Count, Behavior, HabitatType, Weather, DeviceUsed, PhotoReference, AudioReference, VerificationStatus, Notes, IsEndangered, ConservationStatus, Region, Country)
VALUES (1, 'Bald Eagle', 'Haliaeetus leucocephalus', 601, '2023-03-12 09:30:00', 45.5122, -122.6587, 2, 'Flying', 'Riverine', 'Clear', 'CameraTrap', 'eagle_001.jpg', NULL, 'Verified', 'Observed near dam', 0, 'Least Concern', 'Pacific Northwest', 'USA');

INSERT INTO wildlife_observations (ObservationId, SpeciesCommonName, SpeciesScientificName, ObserverId, ObservationDate, Latitude, Longitude, Count, Behavior, HabitatType, Weather, DeviceUsed, PhotoReference, AudioReference, VerificationStatus, Notes, IsEndangered, ConservationStatus, Region, Country)
VALUES (2, 'Gray Wolf', 'Canis lupus', 602, '2023-04-05 16:45:00', 44.4280, -110.5885, 5, 'Pack hunting', 'Forest', 'Cloudy', 'Drone', 'wolf_004.jpg', 'wolf_004.wav', 'Pending', 'Heard howls before sighting', 1, 'Near Threatened', 'Rocky Mountains', 'USA');

INSERT INTO wildlife_observations (ObservationId, SpeciesCommonName, SpeciesScientificName, ObserverId, ObservationDate, Latitude, Longitude, Count, Behavior, HabitatType, Weather, DeviceUsed, PhotoReference, AudioReference, VerificationStatus, Notes, IsEndangered, ConservationStatus, Region, Country)
VALUES (3, 'Monarch Butterfly', 'Danaus plexippus', 603, '2023-05-20 11:15:00', 34.0522, -118.2437, 30, 'Feeding', 'Meadow', 'Sunny', 'Smartphone', 'butterfly_012.jpg', NULL, 'Verified', 'Cluster on milkweed', 0, 'Least Concern', 'Southern California', 'USA');