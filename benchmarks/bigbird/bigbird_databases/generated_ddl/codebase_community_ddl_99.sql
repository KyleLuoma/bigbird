-- Planetary observations metadata
CREATE TABLE planetary_observations
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ObservationDate DATETIME NULL,
    TelescopeName TEXT NULL,
    ObserverName TEXT NULL,
    CelestialObject TEXT NULL,
    RightAscension REAL NULL,
    Declination REAL NULL,
    Magnitude REAL NULL,
    ExposureSeconds INTEGER NULL,
    FilterUsed TEXT NULL,
    WeatherCondition TEXT NULL,
    SeeingArcSec REAL NULL,
    MoonPhase TEXT NULL,
    Latitude REAL NULL,
    Longitude REAL NULL,
    AltitudeMeters INTEGER NULL,
    ObservationNotes TEXT NULL,
    ImageFilePath TEXT NULL,
    DataFilePath TEXT NULL,
    CalibrationApplied TEXT NULL
);
INSERT INTO planetary_observations (Id, ObservationDate, TelescopeName, ObserverName, CelestialObject, RightAscension, Declination, Magnitude, ExposureSeconds, FilterUsed, WeatherCondition, SeeingArcSec, MoonPhase, Latitude, Longitude, AltitudeMeters, ObservationNotes, ImageFilePath, DataFilePath, CalibrationApplied)
VALUES (1, '2023-03-15 22:30:00', 'Hubble', 'AliceSmith', 'Jupiter', 125.5, -22.3, -2.1, 300, 'IR', 'Clear', 0.8, 'Full', 34.05, -118.25, 2500, 'Great storm observed', '/images/jupiter1.png', '/data/jupiter1.fits', 'Yes');
INSERT INTO planetary_observations (Id, ObservationDate, TelescopeName, ObserverName, CelestialObject, RightAscension, Declination, Magnitude, ExposureSeconds, FilterUsed, WeatherCondition, SeeingArcSec, MoonPhase, Latitude, Longitude, AltitudeMeters, ObservationNotes, ImageFilePath, DataFilePath, CalibrationApplied)
VALUES (2, '2023-04-10 04:15:00', 'Keck', 'BobJones', 'Saturn', 210.2, -13.6, 0.3, 200, 'Visible', 'PartlyCloudy', 1.2, 'WaxingCrescent', 19.43, -155.29, 4200, 'Rings visible', '/images/saturn1.png', '/data/saturn1.fits', 'No');
INSERT INTO planetary_observations (Id, ObservationDate, TelescopeName, ObserverName, CelestialObject, RightAscension, Declination, Magnitude, ExposureSeconds, FilterUsed, WeatherCondition, SeeingArcSec, MoonPhase, Latitude, Longitude, AltitudeMeters, ObservationNotes, ImageFilePath, DataFilePath, CalibrationApplied)
VALUES (3, '2023-05-05 18:45:00', 'VLT', 'CarolLee', 'Mars', 45.1, 12.5, -1.5, 150, 'UV', 'Clear', 0.6, 'New', 48.85, 2.35, 1200, 'Dust storm onset', '/images/mars1.png', '/data/mars1.fits', 'Yes');

-- Quantum experiment logs
CREATE TABLE quantum_experiment_logs
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ExperimentDate DATETIME NULL,
    LabRoom TEXT NULL,
    ScientistName TEXT NULL,
    QubitCount INTEGER NULL,
    GateSet TEXT NULL,
    Fidelity REAL NULL,
    TemperatureMilliK INTEGER NULL,
    CryostatID TEXT NULL,
    CalibrationDate DATETIME NULL,
    PhotonCount INTEGER NULL,
    ErrorRate REAL NULL,
    PulseSequence TEXT NULL,
    RunTimeSeconds INTEGER NULL,
    Notes TEXT NULL,
    DataFileHash TEXT NULL,
    InstrumentSerial TEXT NULL,
    VoltageMicroV REAL NULL,
    MagneticFieldTesla REAL NULL,
    ExperimentPhase TEXT NULL
);
INSERT INTO quantum_experiment_logs (Id, ExperimentDate, LabRoom, ScientistName, QubitCount, GateSet, Fidelity, TemperatureMilliK, CryostatID, CalibrationDate, PhotonCount, ErrorRate, PulseSequence, RunTimeSeconds, Notes, DataFileHash, InstrumentSerial, VoltageMicroV, MagneticFieldTesla, ExperimentPhase)
VALUES (1, '2023-06-01 09:00:00', 'RoomA', 'DavidKim', 12, 'Clifford', 0.992, 15, 'CRY123', '2023-05-20 10:00:00', 500000, 0.0012, 'SeqA', 3600, 'No anomalies', 'abc123def456', 'SN1001', 125.5, 0.45, 'Calibration');
INSERT INTO quantum_experiment_logs (Id, ExperimentDate, LabRoom, ScientistName, QubitCount, GateSet, Fidelity, TemperatureMilliK, CryostatID, CalibrationDate, PhotonCount, ErrorRate, PulseSequence, RunTimeSeconds, Notes, DataFileHash, InstrumentSerial, VoltageMicroV, MagneticFieldTesla, ExperimentPhase)
VALUES (2, '2023-06-15 14:30:00', 'RoomB', 'EmmaStone', 20, 'Universal', 0.987, 12, 'CRY124', '2023-06-01 11:00:00', 750000, 0.0018, 'SeqB', 5400, 'Minor drift observed', 'def789ghi012', 'SN1002', 130.0, 0.48, 'Run');
INSERT INTO quantum_experiment_logs (Id, ExperimentDate, LabRoom, ScientistName, QubitCount, GateSet, Fidelity, TemperatureMilliK, CryostatID, CalibrationDate, PhotonCount, ErrorRate, PulseSequence, RunTimeSeconds, Notes, DataFileHash, InstrumentSerial, VoltageMicroV, MagneticFieldTesla, ExperimentPhase)
VALUES (3, '2023-07-02 08:15:00', 'RoomC', 'FrankLi', 8, 'IQP', 0.995, 10, 'CRY125', '2023-06-20 09:30:00', 300000, 0.0009, 'SeqC', 2700, 'Stable operation', 'ghi345jkl678', 'SN1003', 115.2, 0.42, 'Measurement');

-- Nanotech inventory
CREATE TABLE nanotech_inventory
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ItemName TEXT NULL,
    PartNumber TEXT NULL,
    SupplierName TEXT NULL,
    ReceivedDate DATE NULL,
    Quantity INTEGER NULL,
    Unit TEXT NULL,
    StorageLocation TEXT NULL,
    HazardousFlag INTEGER NULL,
    SafetyDataSheetURL TEXT NULL,
    ExpirationDate DATE NULL,
    TemperatureRequirementC REAL NULL,
    MoistureRequirementPercent REAL NULL,
    BatchNumber TEXT NULL,
    CertificateOfAnalysisURL TEXT NULL,
    WeightGrams REAL NULL,
    VolumeML REAL NULL,
    OwnerDepartment TEXT NULL,
    Comments TEXT NULL,
    LastAuditDate DATETIME NULL
);
INSERT INTO nanotech_inventory (Id, ItemName, PartNumber, SupplierName, ReceivedDate, Quantity, Unit, StorageLocation, HazardousFlag, SafetyDataSheetURL, ExpirationDate, TemperatureRequirementC, MoistureRequirementPercent, BatchNumber, CertificateOfAnalysisURL, WeightGrams, VolumeML, OwnerDepartment, Comments, LastAuditDate)
VALUES (1, 'CarbonNanotube', 'CNT-001', 'NanoSuppliesInc', '2023-01-10', 250, 'g', 'ShelfA1', 0, 'http://sds.example.com/cnt001', '2025-12-31', 25.0, 30.0, 'B123', 'http://coa.example.com/cnt001', 0.5, 1.2, 'MaterialsScience', 'High purity', '2023-06-01 12:00:00');
INSERT INTO nanotech_inventory (Id, ItemName, PartNumber, SupplierName, ReceivedDate, Quantity, Unit, StorageLocation, HazardousFlag, SafetyDataSheetURL, ExpirationDate, TemperatureRequirementC, MoistureRequirementPercent, BatchNumber, CertificateOfAnalysisURL, WeightGrams, VolumeML, OwnerDepartment, Comments, LastAuditDate)
VALUES (2, 'GoldNanoparticle', 'GNP-075', 'GoldNanoCo', '2023-02-20', 100, 'ml', 'FridgeB2', 1, 'http://sds.example.com/gnp075', '2024-06-30', 4.0, 10.0, 'B124', 'http://coa.example.com/gnp075', 0.2, 0.5, 'Chemistry', 'Stored in dark', '2023-06-02 09:30:00');
INSERT INTO nanotech_inventory (Id, ItemName, PartNumber, SupplierName, ReceivedDate, Quantity, Unit, StorageLocation, HazardousFlag, SafetyDataSheetURL, ExpirationDate, TemperatureRequirementC, MoistureRequirementPercent, BatchNumber, CertificateOfAnalysisURL, WeightGrams, VolumeML, OwnerDepartment, Comments, LastAuditDate)
VALUES (3, 'SiliconNanowire', 'SNW-300', 'SiliconWorks', '2023-03-15', 75, 'units', 'CabinetC3', 0, 'http://sds.example.com/snw300', '2026-01-15', 22.0, 35.0, 'B125', 'http://coa.example.com/snw300', 1.0, 2.0, 'Electronics', 'Handle with care', '2023-06-03 15:45:00');

-- Bioinformatics datasets
CREATE TABLE bioinformatics_datasets
(
    Id INTEGER NOT NULL PRIMARY KEY,
    DatasetName TEXT NULL,
    ProjectName TEXT NULL,
    SubmissionDate DATETIME NULL,
    OwnerUserId INTEGER NULL,
    Species TEXT NULL,
    AssemblyVersion TEXT NULL,
    DataType TEXT NULL,
    FileCount INTEGER NULL,
    TotalSizeGB REAL NULL,
    AccessLevel TEXT NULL,
    DOI TEXT NULL,
    PublicationReference TEXT NULL,
    Description TEXT NULL,
    License TEXT NULL,
    RepositoryURL TEXT NULL,
    ChecksumAlgorithm TEXT NULL,
    ChecksumValue TEXT NULL,
    ProcessingPipeline TEXT NULL,
    LastUpdated DATETIME NULL
);
INSERT INTO bioinformatics_datasets (Id, DatasetName, ProjectName, SubmissionDate, OwnerUserId, Species, AssemblyVersion, DataType, FileCount, TotalSizeGB, AccessLevel, DOI, PublicationReference, Description, License, RepositoryURL, ChecksumAlgorithm, ChecksumValue, ProcessingPipeline, LastUpdated)
VALUES (1, 'HumanRNASeqV1', 'GenomeProjectAlpha', '2023-04-01 10:00:00', 101, 'HomoSapiens', 'GRCh38', 'RNASeq', 120, 45.6, 'Public', '10.1234/doi1', 'PubMed123456', 'Baseline RNA-Seq data', 'CC0', 'http://repo.example.com/humanrnadataset', 'SHA256', 'a1b2c3d4', 'STAR_2.7', '2023-06-01 08:30:00');
INSERT INTO bioinformatics_datasets (Id, DatasetName, ProjectName, SubmissionDate, OwnerUserId, Species, AssemblyVersion, DataType, FileCount, TotalSizeGB, AccessLevel, DOI, PublicationReference, Description, License, RepositoryURL, ChecksumAlgorithm, ChecksumValue, ProcessingPipeline, LastUpdated)
VALUES (2, 'MouseChIPSeqV2', 'EpigeneticsStudy', '2023-05-12 14:20:00', 102, 'MusMusculus', 'GRCm39', 'ChIPSeq', 80, 30.2, 'Restricted', '10.1234/doi2', 'PubMed234567', 'Histone modification data', 'MIT', 'http://repo.example.com/mousechipseq', 'MD5', 'd4c3b2a1', 'Bowtie2_2.4', '2023-06-02 11:15:00');
INSERT INTO bioinformatics_datasets (Id, DatasetName, ProjectName, SubmissionDate, OwnerUserId, Species, AssemblyVersion, DataType, FileCount, TotalSizeGB, AccessLevel, DOI, PublicationReference, Description, License, RepositoryURL, ChecksumAlgorithm, ChecksumValue, ProcessingPipeline, LastUpdated)
VALUES (3, 'ZebrafishATACSeq', 'DevelopmentalDynamics', '2023-06-20 09:45:00', 103, 'DanioRerio', 'GRCz11', 'ATACSeq', 60, 22.8, 'Public', '10.1234/doi3', 'PubMed345678', 'Chromatin accessibility across stages', 'CC-BY', 'http://repo.example.com/zebrafishatac', 'SHA1', '1a2b3c4d', 'MACS2_2.2', '2023-06-03 16:00:00');

-- Astronomy event schedule
CREATE TABLE astronomy_event_schedule
(
    Id INTEGER NOT NULL PRIMARY KEY,
    EventName TEXT NULL,
    StartDate DATETIME NULL,
    EndDate DATETIME NULL,
    Location TEXT NULL,
    Organizer TEXT NULL,
    TargetObject TEXT NULL,
    ExpectedVisibility TEXT NULL,
    SkyCondition TEXT NULL,
    EquipmentNeeded TEXT NULL,
    StaffCount INTEGER NULL,
    TicketPrice REAL NULL,
    MaxAttendees INTEGER NULL,
    RegistrationURL TEXT NULL,
    ContactEmail TEXT NULL,
    Notes TEXT NULL,
    BroadcastURL TEXT NULL,
    Sponsor TEXT NULL,
    FundingAmount REAL NULL,
    EventStatus TEXT NULL
);
INSERT INTO astronomy_event_schedule (Id, EventName, StartDate, EndDate, Location, Organizer, TargetObject, ExpectedVisibility, SkyCondition, EquipmentNeeded, StaffCount, TicketPrice, MaxAttendees, RegistrationURL, ContactEmail, Notes, BroadcastURL, Sponsor, FundingAmount, EventStatus)
VALUES (1, 'LunarEclipse2023', '2023-10-14 02:00:00', '2023-10-14 04:30:00', 'ObservatoryHill', 'SpaceSociety', 'Moon', 'Partial', 'Clear', 'Telescope8inch', 5, 15.00, 200, 'http://register.example.com/lunareclipse', 'info@spacesoc.org', 'Photography workshop included', 'http://stream.example.com/lunareclipse', 'StarGazerInc', 5000.00, 'Scheduled');
INSERT INTO astronomy_event_schedule (Id, EventName, StartDate, EndDate, Location, Organizer, TargetObject, ExpectedVisibility, SkyCondition, EquipmentNeeded, StaffCount, TicketPrice, MaxAttendees, RegistrationURL, ContactEmail, Notes, BroadcastURL, Sponsor, FundingAmount, EventStatus)
VALUES (2, 'PerseidMeteorShower', '2023-08-12 21:00:00', '2023-08-13 03:00:00', 'NationalPark', 'AstronomyClub', 'Perseids', 'High', 'Cloudless', 'Binoculars', 8, 0.00, 500, 'http://register.example.com/perseid', 'contact@astroclub.org', 'Free public event', 'http://stream.example.com/perseid', 'NightSkyCorp', 2000.00, 'Confirmed');
INSERT INTO astronomy_event_schedule (Id, EventName, StartDate, EndDate, Location, Organizer, TargetObject, ExpectedVisibility, SkyCondition, EquipmentNeeded, StaffCount, TicketPrice, MaxAttendees, RegistrationURL, ContactEmail, Notes, BroadcastURL, Sponsor, FundingAmount, EventStatus)
VALUES (3, 'MarsOppositionTalk', '2023-12-08 18:00:00', '2023-12-08 20:00:00', 'CityAuditorium', 'PlanetarySociety', 'Mars', 'N/A', 'Indoor', 'Projector', 3, 10.00, 150, 'http://register.example.com/marsopp', 'events@planetsoc.org', 'Lecture with Q&A', 'http://stream.example.com/marsopp', 'SpaceTechLtd', 3500.00, 'Planned');

-- Meteorological station sensors
CREATE TABLE meteorological_station_sensors
(
    Id INTEGER NOT NULL PRIMARY KEY,
    StationId TEXT NULL,
    InstallationDate DATE NULL,
    SensorType TEXT NULL,
    ModelNumber TEXT NULL,
    SerialNumber TEXT NULL,
    CalibrationDate DATE NULL,
    Accuracy REAL NULL,
    MeasurementUnit TEXT NULL,
    DataResolution REAL NULL,
    PowerSupply VARCHAR NULL,
    FirmwareVersion TEXT NULL,
    Latitude REAL NULL,
    Longitude REAL NULL,
    AltitudeMeters INTEGER NULL,
    OperationalStatus TEXT NULL,
    MaintenanceDueDate DATE NULL,
    LastDataTimestamp DATETIME NULL,
    AlertThreshold REAL NULL,
    Notes TEXT NULL
);
INSERT INTO meteorological_station_sensors (Id, StationId, InstallationDate, SensorType, ModelNumber, SerialNumber, CalibrationDate, Accuracy, MeasurementUnit, DataResolution, PowerSupply, FirmwareVersion, Latitude, Longitude, AltitudeMeters, OperationalStatus, MaintenanceDueDate, LastDataTimestamp, AlertThreshold, Notes)
VALUES (1, 'STN001', '2022-01-15', 'Thermometer', 'TMP-100', 'SN1001', '2023-01-10', 0.1, 'Celsius', 0.01, 'Solar', 'v1.2.3', 45.67, -120.34, 250, 'Active', '2024-01-10', '2023-06-01 12:00:00', 35.0, 'Mounted on roof');
INSERT INTO meteorological_station_sensors (Id, StationId, InstallationDate, SensorType, ModelNumber, SerialNumber, CalibrationDate, Accuracy, MeasurementUnit, DataResolution, PowerSupply, FirmwareVersion, Latitude, Longitude, AltitudeMeters, OperationalStatus, MaintenanceDueDate, LastDataTimestamp, AlertThreshold, Notes)
VALUES (2, 'STN002', '2021-06-20', 'Barometer', 'BAR-200', 'SN2002', '2022-12-05', 0.5, 'hPa', 0.1, 'Mains', 'v2.0.1', 38.12, -97.45, 320, 'Active', '2023-12-05', '2023-06-01 12:05:00', 1013.25, 'Located in basement');
INSERT INTO meteorological_station_sensors (Id, StationId, InstallationDate, SensorType, ModelNumber, SerialNumber, CalibrationDate, Accuracy, MeasurementUnit, DataResolution, PowerSupply, FirmwareVersion, Latitude, Longitude, AltitudeMeters, OperationalStatus, MaintenanceDueDate, LastDataTimestamp, AlertThreshold, Notes)
VALUES (3, 'STN003', '2020-09-10', 'Anemometer', 'ANM-300', 'SN3003', '2023-03-15', 0.2, 'm/s', 0.05, 'Battery', 'v3.1.0', 52.03, -1.20, 150, 'Inactive', '2024-03-15', '2023-05-30 08:00:00', 20.0, 'Spare sensor');

-- Genome sequencing runs
CREATE TABLE genome_sequencing_runs
(
    Id INTEGER NOT NULL PRIMARY KEY,
    RunDate DATETIME NULL,
    InstrumentModel TEXT NULL,
    RunID TEXT NULL,
    SampleID TEXT NULL,
    LibraryPrepMethod TEXT NULL,
    ReadLength INTEGER NULL,
    PairedEndFlag INTEGER NULL,
    YieldGigabases REAL NULL,
    CoverageDepth REAL NULL,
    BaseQualityScore REAL NULL,
    FastqFilePath TEXT NULL,
    BclFilePath TEXT NULL,
    AnalysisPipeline TEXT NULL,
    OperatorName TEXT NULL,
    Status TEXT NULL,
    FailureReason TEXT NULL,
    EstimatedCostUSD REAL NULL,
    ProjectCode TEXT NULL,
    Comments TEXT NULL
);
INSERT INTO genome_sequencing_runs (Id, RunDate, InstrumentModel, RunID, SampleID, LibraryPrepMethod, ReadLength, PairedEndFlag, YieldGigabases, CoverageDepth, BaseQualityScore, FastqFilePath, BclFilePath, AnalysisPipeline, OperatorName, Status, FailureReason, EstimatedCostUSD, ProjectCode, Comments)
VALUES (1, '2023-02-15 08:30:00', 'IlluminaNovaSeq', 'RUN001', 'SAMPLE_A1', 'Nextera', 150, 1, 30.5, 45.2, 38.7, '/fastq/run001_samplea1_R1.fastq', '/bcl/run001.bcl', 'BCL2FASTQ_v3', 'AliceSmith', 'Completed', NULL, 1200.00, 'PRJ001', 'High quality run');
INSERT INTO genome_sequencing_runs (Id, RunDate, InstrumentModel, RunID, SampleID, LibraryPrepMethod, ReadLength, PairedEndFlag, YieldGigabases, CoverageDepth, BaseQualityScore, FastqFilePath, BclFilePath, AnalysisPipeline, OperatorName, Status, FailureReason, EstimatedCostUSD, ProjectCode, Comments)
VALUES (2, '2023-03-10 09:00:00', 'IlluminaMiSeq', 'RUN002', 'SAMPLE_B2', 'TruSeq', 250, 0, 12.0, 30.1, 35.2, '/fastq/run002_sampleb2.fastq', '/bcl/run002.bcl', 'MiSeqReporter_v2', 'BobJones', 'Failed', 'InstrumentError', 800.00, 'PRJ002', 'Run aborted due to temperature spike');
INSERT INTO genome_sequencing_runs (Id, RunDate, InstrumentModel, RunID, SampleID, LibraryPrepMethod, ReadLength, PairedEndFlag, YieldGigabases, CoverageDepth, BaseQualityScore, FastqFilePath, BclFilePath, AnalysisPipeline, OperatorName, Status, FailureReason, EstimatedCostUSD, ProjectCode, Comments)
VALUES (3, '2023-04-05 07:45:00', 'PacBioSequel', 'RUN003', 'SAMPLE_C3', 'SMRTbell', 10000, 0, 5.0, 20.0, 40.0, '/fastq/run003_samplec3.fastq', '/bcl/run003.bcl', 'SMRTLink_v8', 'CarolLee', 'Completed', NULL, 1500.00, 'PRJ003', 'Long read sequencing');

-- Robotics task assignments
CREATE TABLE robotics_task_assignments
(
    Id INTEGER NOT NULL PRIMARY KEY,
    RobotID TEXT NULL,
    TaskName TEXT NULL,
    AssignedDate DATETIME NULL,
    DueDate DATETIME NULL,
    Priority INTEGER NULL,
    Status TEXT NULL,
    OperatorID INTEGER NULL,
    Location TEXT NULL,
    EstimatedDurationMinutes INTEGER NULL,
    EnergyConsumptionKWh REAL NULL,
    SensorsUsed TEXT NULL,
    ToolsRequired TEXT NULL,
    SafetyProtocol TEXT NULL,
    Notes TEXT NULL,
    CompletionDate DATETIME NULL,
    FailureCode INTEGER NULL,
    ReassignmentCount INTEGER NULL,
    MaintenanceFlag INTEGER NULL,
    DocumentationURL TEXT NULL
);
INSERT INTO robotics_task_assignments (Id, RobotID, TaskName, AssignedDate, DueDate, Priority, Status, OperatorID, Location, EstimatedDurationMinutes, EnergyConsumptionKWh, SensorsUsed, ToolsRequired, SafetyProtocol, Notes, CompletionDate, FailureCode, ReassignmentCount, MaintenanceFlag, DocumentationURL)
VALUES (1, 'RB-001', 'PickAndPlace', '2023-06-01 08:00:00', '2023-06-01 12:00:00', 1, 'InProgress', 201, 'WarehouseA', 240, 5.2, 'Vision,Force', 'Gripper', 'LockoutTagout', 'Urgent order fulfillment', NULL, NULL, 0, 0, 'http://docs.example.com/rb001_pickplace');
INSERT INTO robotics_task_assignments (Id, RobotID, TaskName, AssignedDate, DueDate, Priority, Status, OperatorID, Location, EstimatedDurationMinutes, EnergyConsumptionKWh, SensorsUsed, ToolsRequired, SafetyProtocol, Notes, CompletionDate, FailureCode, ReassignmentCount, MaintenanceFlag, DocumentationURL)
VALUES (2, 'RB-002', 'InspectionLoop', '2023-06-02 09:30:00', '2023-06-02 11:30:00', 2, 'Completed', 202, 'AssemblyLine1', 120, 3.0, 'Lidar,Camera', 'None', 'Standard', 'Routine quality check', '2023-06-02 11:15:00', NULL, 0, 0, 'http://docs.example.com/rb002_inspection');
INSERT INTO robotics_task_assignments (Id, RobotID, TaskName, AssignedDate, DueDate, Priority, Status, OperatorID, Location, EstimatedDurationMinutes, EnergyConsumptionKWh, SensorsUsed, ToolsRequired, SafetyProtocol, Notes, CompletionDate, FailureCode, ReassignmentCount, MaintenanceFlag, DocumentationURL)
VALUES (3, 'RB-003', 'WeldingOperation', '2023-06-03 07:00:00', '2023-06-03 10:00:00', 1, 'Failed', 203, 'FabricationBay', 180, 7.5, 'Temperature,Proximity', 'WeldingGun', 'FireSuppression', 'High precision joint', NULL, 404, 1, 1, 'http://docs.example.com/rb003_welding');

-- Virtual lab sessions
CREATE TABLE virtual_lab_sessions
(
    Id INTEGER NOT NULL PRIMARY KEY,
    SessionDate DATETIME NULL,
    InstructorName TEXT NULL,
    CourseCode TEXT NULL,
    VirtualRoomURL TEXT NULL,
    MaxParticipants INTEGER NULL,
    RecordedFlag INTEGER NULL,
    RecordingURL TEXT NULL,
    TopicsCovered TEXT NULL,
    MaterialsProvided TEXT NULL,
    ChatLogPath TEXT NULL,
    AttendanceCount INTEGER NULL,
    AverageEngagementScore REAL NULL,
    FeedbackScore REAL NULL,
    SessionDurationMinutes INTEGER NULL,
    SessionNotes TEXT NULL,
    PlatformUsed TEXT NULL,
    LicenseKey TEXT NULL,
    SupportContact TEXT NULL,
    FollowUpResourcesURL TEXT NULL
);
INSERT INTO virtual_lab_sessions (Id, SessionDate, InstructorName, CourseCode, VirtualRoomURL, MaxParticipants, RecordedFlag, RecordingURL, TopicsCovered, MaterialsProvided, ChatLogPath, AttendanceCount, AverageEngagementScore, FeedbackScore, SessionDurationMinutes, SessionNotes, PlatformUsed, LicenseKey, SupportContact, FollowUpResourcesURL)
VALUES (1, '2023-05-10 14:00:00', 'DavidKim', 'CS101', 'https://vr.example.com/room1', 50, 1, 'https://vr.example.com/rec1.mp4', 'IntroToProgramming', 'Slides,CodeSamples', '/logs/chat1.txt', 45, 4.2, 4.5, 90, 'Good participation', 'Zoom', 'LIC12345', 'support@example.com', 'https://resources.example.com/cs101/intro');
INSERT INTO virtual_lab_sessions (Id, SessionDate, InstructorName, CourseCode, VirtualRoomURL, MaxParticipants, RecordedFlag, RecordingURL, TopicsCovered, MaterialsProvided, ChatLogPath, AttendanceCount, AverageEngagementScore, FeedbackScore, SessionDurationMinutes, SessionNotes, PlatformUsed, LicenseKey, SupportContact, FollowUpResourcesURL)
VALUES (2, '2023-05-17 10:00:00', 'EmmaStone', 'BIO202', 'https://vr.example.com/room2', 30, 0, NULL, 'CellCultureTechniques', 'ProtocolDocs,VideoDemo', '/logs/chat2.txt', 28, 3.9, 4.1, 75, 'Technical issues early', 'MicrosoftTeams', 'LIC67890', 'labsupport@example.com', 'https://resources.example.com/bio202/cellculture');
INSERT INTO virtual_lab_sessions (Id, SessionDate, InstructorName, CourseCode, VirtualRoomURL, MaxParticipants, RecordedFlag, RecordingURL, TopicsCovered, MaterialsProvided, ChatLogPath, AttendanceCount, AverageEngagementScore, FeedbackScore, SessionDurationMinutes, SessionNotes, PlatformUsed, LicenseKey, SupportContact, FollowUpResourcesURL)
VALUES (3, '2023-05-24 16:30:00', 'FrankLi', 'ENG303', 'https://vr.example.com/room3', 40, 1, 'https://vr.example.com/rec3.mp4', 'ThermodynamicsSim', 'SimFiles,Worksheet', '/logs/chat3.txt', 38, 4.0, 4.3, 80, 'Students completed extra problems', 'GoogleMeet', 'LIC54321', 'engsupport@example.com', 'https://resources.example.com/eng303/thermo');

-- Chemical reaction records
CREATE TABLE chemical_reaction_records
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ReactionID TEXT NULL,
    ExperimentDate DATETIME NULL,
    ChemistName TEXT NULL,
    ReactantA TEXT NULL,
    ReactantB TEXT NULL,
    Solvent TEXT NULL,
    Catalyst TEXT NULL,
    TemperatureC REAL NULL,
    PressureBar REAL NULL,
    ReactionTimeMinutes INTEGER NULL,
    YieldPercent REAL NULL,
    PurityPercent REAL NULL,
    AnalyticalMethod TEXT NULL,
    InstrumentUsed TEXT NULL,
    ObservationNotes TEXT NULL,
    SafetyPrecautions TEXT NULL,
    WasteDisposalMethod TEXT NULL,
    DataFilePath TEXT NULL,
    ApprovedFlag INTEGER NULL
);
INSERT INTO chemical_reaction_records (Id, ReactionID, ExperimentDate, ChemistName, ReactantA, ReactantB, Solvent, Catalyst, TemperatureC, PressureBar, ReactionTimeMinutes, YieldPercent, PurityPercent, AnalyticalMethod, InstrumentUsed, ObservationNotes, SafetyPrecautions, WasteDisposalMethod, DataFilePath, ApprovedFlag)
VALUES (1, 'RXN-001', '2023-04-05 09:00:00', 'AliceSmith', 'Benzene', 'NitricAcid', 'Acetone', 'H2SO4', 80.0, 1.0, 60, 78.5, 99.2, 'GC-MS', 'GC2020', 'Vapor formation observed', 'WearGloves,FaceShield', 'Neutralization', '/data/rxn001.csv', 1);
INSERT INTO chemical_reaction_records (Id, ReactionID, ExperimentDate, ChemistName, ReactantA, ReactantB, Solvent, Catalyst, TemperatureC, PressureBar, ReactionTimeMinutes, YieldPercent, PurityPercent, AnalyticalMethod, InstrumentUsed, ObservationNotes, SafetyPrecautions, WasteDisposalMethod, DataFilePath, ApprovedFlag)
VALUES (2, 'RXN-002', '2023-04-12 13:30:00', 'BobJones', 'Phenol', 'AcetylChloride', 'Dichloromethane', 'Pyridine', 25.0, 0.8, 45, 65.0, 95.0, 'NMR', 'NMR500', 'Exothermic burst', 'Ventilation,Gloves', 'OrganicWaste', '/data/rxn002.csv', 0);
INSERT INTO chemical_reaction_records (Id, ReactionID, ExperimentDate, ChemistName, ReactantA, ReactantB, Solvent, Catalyst, TemperatureC, PressureBar, ReactionTimeMinutes, YieldPercent, PurityPercent, AnalyticalMethod, InstrumentUsed, ObservationNotes, SafetyPrecautions, WasteDisposalMethod, DataFilePath, ApprovedFlag)
VALUES (3, 'RXN-003', '2023-04-20 11:15:00', 'CarolLee', 'Ethanol', 'Acetaldehyde', 'Water', 'None', 60.0, 1.2, 30, 55.0, 90.5, 'IR', 'IR4000', 'No precipitate formed', 'EyeProtection,Gloves', 'AqueousDisposal', '/data/rxn003.csv', 1);