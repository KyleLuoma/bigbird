-- Clinical Documentation Archive
CREATE TABLE ClinicalDocumentationArchive
(
    RecordID INTEGER PRIMARY KEY,
    DocType TEXT,
    DocDate DATE,
    DeptCode TEXT,
    PhysicianID INTEGER,
    ExternalReference TEXT,
    VersionNumber INTEGER,
    SignatureStatus TEXT,
    StorageLocation TEXT,
    FileFormat TEXT,
    Checksum TEXT,
    AccessLevel TEXT,
    RetentionPeriod INTEGER,
    CreatedBy TEXT,
    ReviewedBy TEXT,
    ApprovalDate DATE,
    RevisedDate DATE,
    Notes TEXT,
    ArchiveStatus TEXT,
    DigitalSize REAL,
    EncryptionKey TEXT,
    LastUpdated DATE
);

INSERT INTO ClinicalDocumentationArchive (RecordID, DocType, DocDate, DeptCode, PhysicianID, ExternalReference, VersionNumber, SignatureStatus, StorageLocation, FileFormat, Checksum, AccessLevel, RetentionPeriod, CreatedBy, ReviewedBy, ApprovalDate, RevisedDate, Notes, ArchiveStatus, DigitalSize, EncryptionKey, LastUpdated) VALUES
(1, 'Policy', '2022-03-15', 'HR', 102, 'REF001', 1, 'Signed', 'VaultA', 'PDF', 'ABC123', 'Confidential', 3650, 'admin', 'drsmith', '2022-03-20', '2022-03-15', 'Initial entry', 'Active', 2.5, 'KEY001', '2022-03-15');

INSERT INTO ClinicalDocumentationArchive (RecordID, DocType, DocDate, DeptCode, PhysicianID, ExternalReference, VersionNumber, SignatureStatus, StorageLocation, FileFormat, Checksum, AccessLevel, RetentionPeriod, CreatedBy, ReviewedBy, ApprovalDate, RevisedDate, Notes, ArchiveStatus, DigitalSize, EncryptionKey, LastUpdated) VALUES
(2, 'Procedure', '2022-06-01', 'SURG', 215, 'REF002', 3, 'Pending', 'VaultB', 'DOCX', 'DEF456', 'Restricted', 1825, 'nursej', 'drlee', '2022-06-05', '2022-06-01', 'Updated steps', 'Active', 1.2, 'KEY002', '2022-06-01');

INSERT INTO ClinicalDocumentationArchive (RecordID, DocType, DocDate, DeptCode, PhysicianID, ExternalReference, VersionNumber, SignatureStatus, StorageLocation, FileFormat, Checksum, AccessLevel, RetentionPeriod, CreatedBy, ReviewedBy, ApprovalDate, RevisedDate, Notes, ArchiveStatus, DigitalSize, EncryptionKey, LastUpdated) VALUES
(3, 'Guideline', '2021-11-20', 'LAB', 307, 'REF003', 2, 'Signed', 'VaultC', 'PDF', 'GHI789', 'Public', 730, 'labtech', 'drwhite', '2021-11-25', '2021-11-20', 'Minor revision', 'Archived', 0.9, 'KEY003', '2021-11-20');

-- Medical Research Equipment Log
CREATE TABLE MedicalResearchEquipmentLog
(
    LogID INTEGER PRIMARY KEY,
    EquipmentID TEXT,
    EquipmentName TEXT,
    Category TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyExpDate DATE,
    CalibrationDate DATE,
    CalibrationDue DATE,
    MaintenanceStatus TEXT,
    LastServicedBy TEXT,
    ServiceProvider TEXT,
    ServiceCost REAL,
    Location TEXT,
    UsageHours REAL,
    ConditionScore INTEGER,
    Notes TEXT,
    AssetTag TEXT,
    DepreciationRate REAL,
    CurrentValue REAL
);

INSERT INTO MedicalResearchEquipmentLog (LogID, EquipmentID, EquipmentName, Category, Manufacturer, ModelNumber, SerialNumber, PurchaseDate, WarrantyExpDate, CalibrationDate, CalibrationDue, MaintenanceStatus, LastServicedBy, ServiceProvider, ServiceCost, Location, UsageHours, ConditionScore, Notes, AssetTag, DepreciationRate, CurrentValue) VALUES
(1, 'EQ1001', 'Centrifuge', 'LabEquipment', 'Sigma', 'C200', 'SN12345', '2019-05-10', '2024-05-10', '2023-05-01', '2023-11-01', 'Good', 'techA', 'ServiceCo', 250.00, 'LabA', 1500.5, 9, 'Routine check', 'AT001', 0.15, 12000.00);

INSERT INTO MedicalResearchEquipmentLog (LogID, EquipmentID, EquipmentName, Category, Manufacturer, ModelNumber, SerialNumber, PurchaseDate, WarrantyExpDate, CalibrationDate, CalibrationDue, MaintenanceStatus, LastServicedBy, ServiceProvider, ServiceCost, Location, UsageHours, ConditionScore, Notes, AssetTag, DepreciationRate, CurrentValue) VALUES
(2, 'EQ1002', 'Spectrometer', 'Analytical', 'Thermo', 'S500', 'SN54321', '2020-02-20', '2025-02-20', '2022-12-15', '2023-06-15', 'Needs Service', 'techB', 'CalibInc', 400.00, 'LabB', 800.0, 7, 'Calibration overdue', 'AT002', 0.12, 8500.00);

INSERT INTO MedicalResearchEquipmentLog (LogID, EquipmentID, EquipmentName, Category, Manufacturer, ModelNumber, SerialNumber, PurchaseDate, WarrantyExpDate, CalibrationDate, CalibrationDue, MaintenanceStatus, LastServicedBy, ServiceProvider, ServiceCost, Location, UsageHours, ConditionScore, Notes, AssetTag, DepreciationRate, CurrentValue) VALUES
(3, 'EQ1003', 'PCR Machine', 'Molecular', 'BioRad', 'PCRX', 'SN67890', '2021-09-15', '2026-09-15', '2023-01-10', '2023-07-10', 'Good', 'techC', 'MediTech', 300.00, 'LabC', 450.2, 8, 'All parameters normal', 'AT003', 0.10, 7200.00);

-- Hospital Transportation Fleet
CREATE TABLE HospitalTransportationFleet
(
    FleetID INTEGER PRIMARY KEY,
    VehicleID TEXT,
    VehicleType TEXT,
    Manufacturer TEXT,
    Model TEXT,
    Year INTEGER,
    LicensePlate TEXT,
    Capacity INTEGER,
    FuelType TEXT,
    FuelCapacity REAL,
    Mileage REAL,
    LastServiceDate DATE,
    ServiceInterval INTEGER,
    CurrentStatus TEXT,
    AssignedDept TEXT,
    GPSInstalled INTEGER,
    GPSDeviceID TEXT,
    MaintenanceCost REAL,
    DriverAssigned TEXT,
    InsurancePolicy TEXT,
    PurchaseDate DATE,
    DepreciationPeriod INTEGER
);

INSERT INTO HospitalTransportationFleet (FleetID, VehicleID, VehicleType, Manufacturer, Model, Year, LicensePlate, Capacity, FuelType, FuelCapacity, Mileage, LastServiceDate, ServiceInterval, CurrentStatus, AssignedDept, GPSInstalled, GPSDeviceID, MaintenanceCost, DriverAssigned, InsurancePolicy, PurchaseDate, DepreciationPeriod) VALUES
(1, 'V001', 'Ambulance', 'Ford', 'Transit', 2018, 'ABC123', 2, 'Diesel', 80.0, 45200.5, '2023-04-10', 180, 'Active', 'ER', 1, 'GPS001', 1200.00, 'JohnDoe', 'POL12345', '2018-03-01', 7);

INSERT INTO HospitalTransportationFleet (FleetID, VehicleID, VehicleType, Manufacturer, Model, Year, LicensePlate, Capacity, FuelType, FuelCapacity, Mileage, LastServiceDate, ServiceInterval, CurrentStatus, AssignedDept, GPSInstalled, GPSDeviceID, MaintenanceCost, DriverAssigned, InsurancePolicy, PurchaseDate, DepreciationPeriod) VALUES
(2, 'V002', 'PatientTransport', 'Mercedes', 'Sprinter', 2020, 'XYZ789', 4, 'Electric', 60.0, 15000.0, '2023-06-01', 365, 'Active', 'Radiology', 1, 'GPS002', 800.00, 'JaneSmith', 'POL67890', '2020-05-15', 8);

INSERT INTO HospitalTransportationFleet (FleetID, VehicleID, VehicleType, Manufacturer, Model, Year, LicensePlate, Capacity, FuelType, FuelCapacity, Mileage, LastServiceDate, ServiceInterval, CurrentStatus, AssignedDept, GPSInstalled, GPSDeviceID, MaintenanceCost, DriverAssigned, InsurancePolicy, PurchaseDate, DepreciationPeriod) VALUES
(3, 'V003', 'SupplyCart', 'Toyota', 'HiAce', 2016, 'LMN456', 1, 'Hybrid', 55.0, 60000.0, '2023-02-20', 180, 'InMaintenance', 'Pharmacy', 0, NULL, 500.00, NULL, 'POL11223', '2016-08-10', 10);

-- Health Data Analytics Report
CREATE TABLE HealthDataAnalyticsReport
(
    ReportID INTEGER PRIMARY KEY,
    ReportName TEXT,
    GeneratedDate DATE,
    ReportPeriodStart DATE,
    ReportPeriodEnd DATE,
    DataSource TEXT,
    AnalystName TEXT,
    TotalRecords INTEGER,
    UniqueSubjects INTEGER,
    FindingsSummary TEXT,
    RiskScoreAvg REAL,
    ComplianceStatus TEXT,
    DashboardLink TEXT,
    ExportFormat TEXT,
    EncryptionFlag INTEGER,
    ReviewStatus TEXT,
    Comments TEXT,
    Version INTEGER,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    Notes TEXT,
    DataRefreshFreq TEXT
);

INSERT INTO HealthDataAnalyticsReport (ReportID, ReportName, GeneratedDate, ReportPeriodStart, ReportPeriodEnd, DataSource, AnalystName, TotalRecords, UniqueSubjects, FindingsSummary, RiskScoreAvg, ComplianceStatus, DashboardLink, ExportFormat, EncryptionFlag, ReviewStatus, Comments, Version, ApprovedBy, ApprovalDate, Notes, DataRefreshFreq) VALUES
(1, 'Monthly Admissions', '2023-03-01', '2023-02-01', '2023-02-28', 'EHR', 'Alice', 1240, 1190, 'Stable admission rates', 0.42, 'Compliant', 'http://dash.example.com/adm', 'PDF', 1, 'Reviewed', 'No issues', 1, 'Bob', '2023-03-02', 'First release', 'Monthly');

INSERT INTO HealthDataAnalyticsReport (ReportID, ReportName, GeneratedDate, ReportPeriodStart, ReportPeriodEnd, DataSource, AnalystName, TotalRecords, UniqueSubjects, FindingsSummary, RiskScoreAvg, ComplianceStatus, DashboardLink, ExportFormat, EncryptionFlag, ReviewStatus, Comments, Version, ApprovedBy, ApprovalDate, Notes, DataRefreshFreq) VALUES
(2, 'Quarterly Lab Utilization', '2023-04-15', '2023-01-01', '2023-03-31', 'LabSystem', 'Charlie', 8600, 7800, 'Increased test volume', 0.58, 'NonCompliant', 'http://dash.example.com/lab', 'XLSX', 0, 'Pending', 'Awaiting review', 2, 'Dana', '2023-04-16', 'Second version', 'Quarterly');

INSERT INTO HealthDataAnalyticsReport (ReportID, ReportName, GeneratedDate, ReportPeriodStart, ReportPeriodEnd, DataSource, AnalystName, TotalRecords, UniqueSubjects, FindingsSummary, RiskScoreAvg, ComplianceStatus, DashboardLink, ExportFormat, EncryptionFlag, ReviewStatus, Comments, Version, ApprovedBy, ApprovalDate, Notes, DataRefreshFreq) VALUES
(3, 'Annual Equipment Downtime', '2023-01-10', '2022-01-01', '2022-12-31', 'CMMS', 'Eve', 480, 120, 'Downtime reduced by 5%', 0.31, 'Compliant', 'http://dash.example.com/equip', 'CSV', 1, 'Reviewed', 'Good trend', 1, 'Frank', '2023-01-11', 'Annual summary', 'Yearly');

-- Biomedical Waste Processing
CREATE TABLE BiomedicalWasteProcessing
(
    ProcessID INTEGER PRIMARY KEY,
    WasteBatchID TEXT,
    WasteType TEXT,
    GenerationDate DATE,
    QuantityKg REAL,
    DisposalMethod TEXT,
    FacilityName TEXT,
    FacilityLocation TEXT,
    PermitNumber TEXT,
    ComplianceStatus TEXT,
    ProcessedBy TEXT,
    ProcessingDate DATE,
    InspectorName TEXT,
    InspectionResult TEXT,
    Remarks TEXT,
    HazardLevel INTEGER,
    StorageTemp REAL,
    TransportMethod TEXT,
    TransportCompany TEXT,
    Cost REAL,
    RecordCreated DATE,
    UpdatedDate DATE
);

INSERT INTO BiomedicalWasteProcessing (ProcessID, WasteBatchID, WasteType, GenerationDate, QuantityKg, DisposalMethod, FacilityName, FacilityLocation, PermitNumber, ComplianceStatus, ProcessedBy, ProcessingDate, InspectorName, InspectionResult, Remarks, HazardLevel, StorageTemp, TransportMethod, TransportCompany, Cost, RecordCreated, UpdatedDate) VALUES
(1, 'WB1001', 'Sharps', '2023-02-20', 12.5, 'Incineration', 'EcoWaste', 'NorthWing', 'PN001', 'Compliant', 'tech1', '2023-02-21', 'InspectorA', 'Pass', 'No issues', 3, 25.0, 'Truck', 'TransCo', 300.00, '2023-02-20', '2023-02-21');

INSERT INTO BiomedicalWasteProcessing (ProcessID, WasteBatchID, WasteType, GenerationDate, QuantityKg, DisposalMethod, FacilityName, FacilityLocation, PermitNumber, ComplianceStatus, ProcessedBy, ProcessingDate, InspectorName, InspectionResult, Remarks, HazardLevel, StorageTemp, TransportMethod, TransportCompany, Cost, RecordCreated, UpdatedDate) VALUES
(2, 'WB1002', 'Pathology', '2023-03-05', 8.3, 'Autoclave', 'SafeDisposal', 'EastWing', 'PN002', 'Compliant', 'tech2', '2023-03-06', 'InspectorB', 'Pass', 'All sealed', 2, 30.0, 'Van', 'LogisticsX', 250.00, '2023-03-05', '2023-03-06');

INSERT INTO BiomedicalWasteProcessing (ProcessID, WasteBatchID, WasteType, GenerationDate, QuantityKg, DisposalMethod, FacilityName, FacilityLocation, PermitNumber, ComplianceStatus, ProcessedBy, ProcessingDate, InspectorName, InspectionResult, Remarks, HazardLevel, StorageTemp, TransportMethod, TransportCompany, Cost, RecordCreated, UpdatedDate) VALUES
(3, 'WB1003', 'Chemical', '2023-04-12', 5.0, 'Neutralization', 'ChemTreat', 'WestWing', 'PN003', 'NonCompliant', 'tech3', '2023-04-13', 'InspectorC', 'Fail', 'pH out of range', 4, 22.0, 'Truck', 'TransCo', 400.00, '2023-04-12', '2023-04-14');

-- Facility Security Patrol
CREATE TABLE FacilitySecurityPatrol
(
    PatrolID INTEGER PRIMARY KEY,
    PatrolDate DATE,
    Shift TEXT,
    GuardID TEXT,
    RouteCode TEXT,
    Checkpoint1Status TEXT,
    Checkpoint2Status TEXT,
    Checkpoint3Status TEXT,
    IncidentReported INTEGER,
    IncidentDescription TEXT,
    EquipmentUsed TEXT,
    PatrolDuration INTEGER,
    SupervisorID TEXT,
    Notes TEXT,
    WeatherCondition TEXT,
    PatrolRating INTEGER,
    FollowUpAction TEXT,
    Completed INTEGER,
    LogTimestamp DATE,
    UpdatedBy TEXT,
    Comments TEXT,
    ShiftSupervisor TEXT
);

INSERT INTO FacilitySecurityPatrol (PatrolID, PatrolDate, Shift, GuardID, RouteCode, Checkpoint1Status, Checkpoint2Status, Checkpoint3Status, IncidentReported, IncidentDescription, EquipmentUsed, PatrolDuration, SupervisorID, Notes, WeatherCondition, PatrolRating, FollowUpAction, Completed, LogTimestamp, UpdatedBy, Comments, ShiftSupervisor) VALUES
(1, '2023-05-01', 'Night', 'G001', 'R01', 'Clear', 'Clear', 'Clear', 0, '', 'Radio', 120, 'S001', 'All good', 'Clear', 9, '', 1, '2023-05-01', 'admin', '', 'S001');

INSERT INTO FacilitySecurityPatrol (PatrolID, PatrolDate, Shift, GuardID, RouteCode, Checkpoint1Status, Checkpoint2Status, Checkpoint3Status, IncidentReported, IncidentDescription, EquipmentUsed, PatrolDuration, SupervisorID, Notes, WeatherCondition, PatrolRating, FollowUpAction, Completed, LogTimestamp, UpdatedBy, Comments, ShiftSupervisor) VALUES
(2, '2023-05-02', 'Day', 'G002', 'R02', 'Clear', 'Obstructed', 'Clear', 1, 'Door left open', 'Radio', 90, 'S002', 'Fixed issue', 'Rain', 7, 'Reinforce door', 1, '2023-05-02', 'admin', 'Handled promptly', 'S002');

INSERT INTO FacilitySecurityPatrol (PatrolID, PatrolDate, Shift, GuardID, RouteCode, Checkpoint1Status, Checkpoint2Status, Checkpoint3Status, IncidentReported, IncidentDescription, EquipmentUsed, PatrolDuration, SupervisorID, Notes, WeatherCondition, PatrolRating, FollowUpAction, Completed, LogTimestamp, UpdatedBy, Comments, ShiftSupervisor) VALUES
(3, '2023-05-03', 'Evening', 'G003', 'R03', 'Clear', 'Clear', 'Clear', 0, '', 'Radio', 110, 'S003', 'Routine', 'Cloudy', 8, '', 1, '2023-05-03', 'admin', '', 'S003');

-- Digital Imaging Repository
CREATE TABLE DigitalImagingRepository
(
    ImageID INTEGER PRIMARY KEY,
    StudyID TEXT,
    Modality TEXT,
    AcquisitionDate DATE,
    SubjectAnonID TEXT,
    ImageFormat TEXT,
    FileSizeMB REAL,
    ResolutionX INTEGER,
    ResolutionY INTEGER,
    BitsAllocated INTEGER,
    CompressionAlgorithm TEXT,
    StoragePath TEXT,
    ArchiveStatus TEXT,
    RetentionPeriod INTEGER,
    AccessPermissions TEXT,
    CreatedBy TEXT,
    ReviewStatus TEXT,
    ReviewDate DATE,
    DiagnosisCode TEXT,
    RadiologistID TEXT,
    Notes TEXT,
    QualityScore REAL
);

INSERT INTO DigitalImagingRepository (ImageID, StudyID, Modality, AcquisitionDate, SubjectAnonID, ImageFormat, FileSizeMB, ResolutionX, ResolutionY, BitsAllocated, CompressionAlgorithm, StoragePath, ArchiveStatus, RetentionPeriod, AccessPermissions, CreatedBy, ReviewStatus, ReviewDate, DiagnosisCode, RadiologistID, Notes, QualityScore) VALUES
(1, 'ST1001', 'CT', '2023-01-15', 'SUB001', 'DICOM', 350.5, 1024, 1024, 16, 'Lossless', '/repo/ct/1001.dcm', 'Active', 3650, 'Restricted', 'techA', 'Approved', '2023-01-16', 'D001', 'RAD001', 'Clear images', 0.95);

INSERT INTO DigitalImagingRepository (ImageID, StudyID, Modality, AcquisitionDate, SubjectAnonID, ImageFormat, FileSizeMB, ResolutionX, ResolutionY, BitsAllocated, CompressionAlgorithm, StoragePath, ArchiveStatus, RetentionPeriod, AccessPermissions, CreatedBy, ReviewStatus, ReviewDate, DiagnosisCode, RadiologistID, Notes, QualityScore) VALUES
(2, 'ST1002', 'MRI', '2023-02-20', 'SUB002', 'DICOM', 480.0, 2048, 2048, 16, 'Lossless', '/repo/mri/1002.dcm', 'Active', 3650, 'Restricted', 'techB', 'Pending', NULL, 'D002', 'RAD002', 'Motion artifacts', 0.78);

INSERT INTO DigitalImagingRepository (ImageID, StudyID, Modality, AcquisitionDate, SubjectAnonID, ImageFormat, FileSizeMB, ResolutionX, ResolutionY, BitsAllocated, CompressionAlgorithm, StoragePath, ArchiveStatus, RetentionPeriod, AccessPermissions, CreatedBy, ReviewStatus, ReviewDate, DiagnosisCode, RadiologistID, Notes, QualityScore) VALUES
(3, 'ST1003', 'XRay', '2023-03-05', 'SUB003', 'DICOM', 120.2, 1024, 768, 12, 'Lossless', '/repo/xray/1003.dcm', 'Archived', 1825, 'Public', 'techC', 'Approved', '2023-03-06', 'D003', 'RAD003', 'Standard view', 0.88);

-- Pharmacy Automation Metrics
CREATE TABLE PharmacyAutomationMetrics
(
    MetricID INTEGER PRIMARY KEY,
    DeviceID TEXT,
    DeviceType TEXT,
    Location TEXT,
    OperationalStatus TEXT,
    UptimeHours REAL,
    DowntimeHours REAL,
    ErrorCount INTEGER,
    RefillCount INTEGER,
    AverageDispenseTime REAL,
    PeakUsageHour INTEGER,
    LastCalibration DATE,
    SoftwareVersion TEXT,
    FirmwareVersion TEXT,
    MaintenanceDue DATE,
    AlertsGenerated INTEGER,
    EnergyConsumptionKWh REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    RecordedBy TEXT,
    RecordDate DATE,
    Comments TEXT
);

INSERT INTO PharmacyAutomationMetrics (MetricID, DeviceID, DeviceType, Location, OperationalStatus, UptimeHours, DowntimeHours, ErrorCount, RefillCount, AverageDispenseTime, PeakUsageHour, LastCalibration, SoftwareVersion, FirmwareVersion, MaintenanceDue, AlertsGenerated, EnergyConsumptionKWh, TemperatureC, HumidityPercent, RecordedBy, RecordDate, Comments) VALUES
(1, 'D001', 'DispensingRobot', 'PharmacyA', 'Online', 1500.5, 10.2, 2, 200, 1.8, 14, '2023-01-15', 'v2.3', 'f1.0', '2023-07-01', 5, 350.0, 22.5, 45, 'techA', '2023-03-01', 'Normal operation');

INSERT INTO PharmacyAutomationMetrics (MetricID, DeviceID, DeviceType, Location, OperationalStatus, UptimeHours, DowntimeHours, ErrorCount, RefillCount, AverageDispenseTime, PeakUsageHour, LastCalibration, SoftwareVersion, FirmwareVersion, MaintenanceDue, AlertsGenerated, EnergyConsumptionKWh, TemperatureC, HumidityPercent, RecordedBy, RecordDate, Comments) VALUES
(2, 'D002', 'VerificationScanner', 'PharmacyB', 'Maintenance', 1200.0, 30.0, 5, 150, 2.1, 10, '2022-12-20', 'v1.9', 'f0.9', '2023-06-15', 12, 280.0, 23.0, 48, 'techB', '2023-03-02', 'Scheduled maintenance');

INSERT INTO PharmacyAutomationMetrics (MetricID, DeviceID, DeviceType, Location, OperationalStatus, UptimeHours, DowntimeHours, ErrorCount, RefillCount, AverageDispenseTime, PeakUsageHour, LastCalibration, SoftwareVersion, FirmwareVersion, MaintenanceDue, AlertsGenerated, EnergyConsumptionKWh, TemperatureC, HumidityPercent, RecordedBy, RecordDate, Comments) VALUES
(3, 'D003', 'InventoryRobot', 'PharmacyC', 'Online', 1800.3, 5.0, 1, 300, 1.5, 16, '2023-02-10', 'v3.0', 'f1.2', '2023-08-01', 3, 400.0, 21.8, 44, 'techC', '2023-03-03', 'High efficiency');

-- Community Health Volunteer
CREATE TABLE CommunityHealthVolunteer
(
    VolunteerID INTEGER PRIMARY KEY,
    FullName TEXT,
    BirthDate DATE,
    Gender TEXT,
    ContactNumber TEXT,
    Email TEXT,
    Address TEXT,
    Affiliation TEXT,
    TrainingCompleted INTEGER,
    TrainingDate DATE,
    AssignedRegion TEXT,
    ActiveStatus TEXT,
    HoursContributed INTEGER,
    Skills TEXT,
    Availability TEXT,
    SupervisorID TEXT,
    BackgroundCheckStatus TEXT,
    StartDate DATE,
    EndDate DATE,
    Notes TEXT,
    Certifications TEXT,
    EmergencyContact TEXT,
    EmergencyPhone TEXT
);

INSERT INTO CommunityHealthVolunteer (VolunteerID, FullName, BirthDate, Gender, ContactNumber, Email, Address, Affiliation, TrainingCompleted, TrainingDate, AssignedRegion, ActiveStatus, HoursContributed, Skills, Availability, SupervisorID, BackgroundCheckStatus, StartDate, EndDate, Notes, Certifications, EmergencyContact, EmergencyPhone) VALUES
(1, 'John Doe', '1990-04-12', 'Male', '5551234567', 'jdoe@example.com', '123 Main St', 'LocalClinic', 1, '2022-01-15', 'NorthZone', 'Active', 120, 'FirstAid,Education', 'Weekends', 'SUP001', 'Cleared', '2021-06-01', NULL, 'Reliable volunteer', 'CPR', 'Jane Doe', '5559876543');

INSERT INTO CommunityHealthVolunteer (VolunteerID, FullName, BirthDate, Gender, ContactNumber, Email, Address, Affiliation, TrainingCompleted, TrainingDate, AssignedRegion, ActiveStatus, HoursContributed, Skills, Availability, SupervisorID, BackgroundCheckStatus, StartDate, EndDate, Notes, Certifications, EmergencyContact, EmergencyPhone) VALUES
(2, 'Emily Smith', '1985-09-30', 'Female', '5552345678', 'esmith@example.com', '456 Oak Ave', 'CommunityCenter', 1, '2021-11-20', 'SouthZone', 'Active', 200, 'Nutrition,Outreach', 'Evenings', 'SUP002', 'Cleared', '2020-03-15', NULL, 'Leads nutrition workshops', 'FirstAid', 'Robert Smith', '5558765432');

INSERT INTO CommunityHealthVolunteer (VolunteerID, FullName, BirthDate, Gender, ContactNumber, Email, Address, Affiliation, TrainingCompleted, TrainingDate, AssignedRegion, ActiveStatus, HoursContributed, Skills, Availability, SupervisorID, BackgroundCheckStatus, StartDate, EndDate, Notes, Certifications, EmergencyContact, EmergencyPhone) VALUES
(3, 'Luis Garcia', '1995-07-22', 'Male', '5553456789', 'lgarcia@example.com', '789 Pine Rd', 'HealthOutreach', 0, NULL, 'EastZone', 'Inactive', 0, 'DataEntry', 'None', 'SUP003', 'Pending', '2023-01-10', NULL, 'Pending training', 'None', 'Maria Garcia', '5557654321');

-- Hospital Energy Efficiency Plan
CREATE TABLE HospitalEnergyEfficiencyPlan
(
    PlanID INTEGER PRIMARY KEY,
    PlanName TEXT,
    InitiationDate DATE,
    TargetCompletionDate DATE,
    EnergySource TEXT,
    BaselineConsumption REAL,
    TargetReductionPercent REAL,
    EstimatedSavings REAL,
    FundingSource TEXT,
    ResponsibleDept TEXT,
    ProjectLead TEXT,
    Status TEXT,
    LastReviewDate DATE,
    NextReviewDate DATE,
    KeyMilestones TEXT,
    MeasurementMethod TEXT,
    ExpectedCO2Reduction REAL,
    ImplementationCost REAL,
    Remarks TEXT,
    ApprovalBy TEXT,
    ApprovalDate DATE,
    DocumentLink TEXT,
    StakeholderList TEXT,
    RiskAssessment TEXT
);

INSERT INTO HospitalEnergyEfficiencyPlan (PlanID, PlanName, InitiationDate, TargetCompletionDate, EnergySource, BaselineConsumption, TargetReductionPercent, EstimatedSavings, FundingSource, ResponsibleDept, ProjectLead, Status, LastReviewDate, NextReviewDate, KeyMilestones, MeasurementMethod, ExpectedCO2Reduction, ImplementationCost, Remarks, ApprovalBy, ApprovalDate, DocumentLink, StakeholderList, RiskAssessment) VALUES
(1, 'LED Lighting Upgrade', '2022-01-10', '2023-12-31', 'Electric', 50000.0, 15.0, 7500.0, 'CapitalBudget', 'Facilities', 'Alice', 'InProgress', '2023-03-01', '2023-09-01', 'Design,Procurement,Installation', 'MeterReading', 200.0, 120000.0, 'Phase 1 complete', 'Bob', '2022-01-15', 'http://docs.example.com/led', 'Facilities,Engineering', 'Low');

INSERT INTO HospitalEnergyEfficiencyPlan (PlanID, PlanName, InitiationDate, TargetCompletionDate, EnergySource, BaselineConsumption, TargetReductionPercent, EstimatedSavings, FundingSource, ResponsibleDept, ProjectLead, Status, LastReviewDate, NextReviewDate, KeyMilestones, MeasurementMethod, ExpectedCO2Reduction, ImplementationCost, Remarks, ApprovalBy, ApprovalDate, DocumentLink, StakeholderList, RiskAssessment) VALUES
(2, 'Solar Panel Installation', '2023-04-01', '2025-12-31', 'Solar', 80000.0, 20.0, 16000.0, 'Grant', 'Energy', 'Carlos', 'Planning', '2023-04-15', '2024-06-01', 'SiteSurvey,Permitting,Construction', 'ProductionMonitoring', 500.0, 300000.0, 'Awaiting permits', 'Dana', '2023-04-05', 'http://docs.example.com/solar', 'Energy,Finance', 'Medium');

INSERT INTO HospitalEnergyEfficiencyPlan (PlanID, PlanName, InitiationDate, TargetCompletionDate, EnergySource, BaselineConsumption, TargetReductionPercent, EstimatedSavings, FundingSource, ResponsibleDept, ProjectLead, Status, LastReviewDate, NextReviewDate, KeyMilestones, MeasurementMethod, ExpectedCO2Reduction, ImplementationCost, Remarks, ApprovalBy, ApprovalDate, DocumentLink, StakeholderList, RiskAssessment) VALUES
(3, 'HVAC System Optimization', '2021-07-20', '2024-06-30', 'Electric', 120000.0, 10.0, 12000.0, 'OperationalBudget', 'Maintenance', 'Eve', 'Completed', '2024-05-15', '2024-11-15', 'Audit,Retrofit,Testing', 'EnergyModeling', 300.0, 85000.0, 'Achieved 9% reduction', 'Frank', '2021-07-22', 'http://docs.example.com/hvac', 'Maintenance,Operations', 'Low');