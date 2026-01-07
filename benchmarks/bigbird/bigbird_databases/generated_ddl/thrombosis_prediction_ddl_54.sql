-- Building maintenance activities log
CREATE TABLE BuildingMaintenanceLog (
    LogID INT PRIMARY KEY,
    BuildingID INT,
    Wing VARCHAR(50),
    Floor INT,
    RoomNumber VARCHAR(10),
    MaintenanceDate DATE,
    MaintenanceType VARCHAR(30),
    ContractorName VARCHAR(50),
    ContractID INT,
    IssueDescription VARCHAR(200),
    Resolution VARCHAR(200),
    Cost DECIMAL(10,2),
    StartTime TIME,
    EndTime TIME,
    Scheduled BOOLEAN,
    PriorityLevel VARCHAR(10),
    CreatedBy VARCHAR(30),
    CreatedAt TIMESTAMP,
    UpdatedBy VARCHAR(30),
    UpdatedAt TIMESTAMP
);

INSERT INTO BuildingMaintenanceLog VALUES (1, 101, 'EastWing', 2, '201A', '2023-11-15', 'Electrical', 'ElectroFix', 5001, 'Flickering lights in hallway', 'Replaced faulty ballast', 350.00, '08:00:00', '10:30:00', TRUE, 'High', 'jdoe', '2023-11-15 09:00:00', 'asmith', '2023-11-15 11:00:00');
INSERT INTO BuildingMaintenanceLog VALUES (2, 102, 'WestWing', 1, '101B', '2023-12-02', 'Plumbing', 'PipeMasters', 5002, 'Leaking sink in restroom', 'Replaced P-trap', 210.00, '13:00:00', '14:15:00', FALSE, 'Medium', 'bwhite', '2023-12-02 13:30:00', 'bwhite', '2023-12-02 14:30:00');
INSERT INTO BuildingMaintenanceLog VALUES (3, 103, 'NorthWing', 3, '303C', '2024-01-10', 'HVAC', 'CoolAir', 5003, 'No cooling on third floor', 'Serviced compressor', 1250.00, '09:00:00', '12:45:00', TRUE, 'Critical', 'klee', '2024-01-10 09:10:00', 'klee', '2024-01-10 13:00:00');

-- Energy consumption records per building
CREATE TABLE EnergyConsumptionRecord (
    RecordID INT PRIMARY KEY,
    BuildingID INT,
    Wing VARCHAR(20),
    Date DATE,
    EnergySource VARCHAR(20),
    ConsumptionKWh DECIMAL(10,2),
    PeakDemandKW DECIMAL(10,2),
    AvgVoltage FLOAT,
    AvgCurrent FLOAT,
    TemperatureC FLOAT,
    HumidityPct FLOAT,
    CO2ppm INT,
    CostUSD DECIMAL(10,2),
    MeterReadingStart DECIMAL(12,2),
    MeterReadingEnd DECIMAL(12,2),
    BillingPeriod VARCHAR(10),
    Adjustments DECIMAL(10,2),
    Notes VARCHAR(200),
    RecordedBy VARCHAR(30),
    RecordedAt TIMESTAMP
);

INSERT INTO EnergyConsumptionRecord VALUES (1001, 101, 'East', '2023-12-01', 'Electric', 4523.75, 340.20, 120.5, 30.2, 22.5, 45.0, 800, 15000.00, 19523.75, 'Dec2023', 0.00, 'Normal operation', 'jdoe', '2023-12-02 08:00:00');
INSERT INTO EnergyConsumptionRecord VALUES (1002, 102, 'West', '2023-12-01', 'Electric', 3890.10, 310.55, 119.8, 28.7, 21.0, 42.0, 690, 14000.00, 17890.10, 'Dec2023', -15.00, 'Adjusted for outage', 'bwhite', '2023-12-02 08:15:00');
INSERT INTO EnergyConsumptionRecord VALUES (1003, 103, 'North', '2023-12-01', 'Solar', 1200.00, 85.30, 118.0, 10.5, 19.8, 35.0, 210, 5000.00, 6200.00, 'Dec2023', 0.00, 'Solar contribution recorded', 'klee', '2023-12-02 08:30:00');

-- Staff training courses catalog
CREATE TABLE StaffTrainingCourse (
    CourseID INT PRIMARY KEY,
    CourseCode VARCHAR(10),
    CourseName VARCHAR(100),
    Department VARCHAR(50),
    Instructor VARCHAR(50),
    DurationHours INT,
    Credits INT,
    Modality VARCHAR(20),
    StartDate DATE,
    EndDate DATE,
    MaxParticipants INT,
    MinimumScore INT,
    Certification BOOLEAN,
    CostUSD DECIMAL(8,2),
    Language VARCHAR(20),
    PrerequisiteCourseID INT,
    Description VARCHAR(200),
    CreatedAt TIMESTAMP,
    UpdatedAt TIMESTAMP,
    Active BOOLEAN
);

INSERT INTO StaffTrainingCourse VALUES (2001, 'CT101', 'Clinical Toxicology Basics', 'Pharmacy', 'drsmith', 16, 2, 'InPerson', '2024-02-05', '2024-02-09', 25, 80, TRUE, 500.00, 'English', NULL, 'Introductory course covering toxicology fundamentals', '2024-01-15 09:00:00', '2024-01-20 10:00:00', TRUE);
INSERT INTO StaffTrainingCourse VALUES (2002, 'IT202', 'Advanced Network Security', 'IT', 'mscott', 24, 3, 'Online', '2024-03-01', '2024-03-10', 40, 85, TRUE, 0.00, 'English', 2000, 'Deep dive into firewall policies and intrusion detection', '2024-01-20 11:00:00', '2024-01-25 12:00:00', TRUE);
INSERT INTO StaffTrainingCourse VALUES (2003, 'HR301', 'Leadership Development', 'HumanResources', 'lgarcia', 12, 1, 'Hybrid', '2024-04-15', '2024-04-20', 30, 75, FALSE, 250.00, 'Spanish', NULL, 'Skills for managing multidisciplinary teams', '2024-02-01 08:30:00', '2024-02-05 09:15:00', TRUE);

– Medical supply shipment records
CREATE TABLE MedicalSupplyShipment (
    ShipmentID INT PRIMARY KEY,
    SupplierID INT,
    ShipmentDate DATE,
    ExpectedArrival DATE,
    ReceivedDate DATE,
    Carrier VARCHAR(50),
    TrackingNumber VARCHAR(30),
    PackageCount INT,
    TotalWeightKg DECIMAL(8,2),
    SealNumber VARCHAR(30),
    TemperatureControlled BOOLEAN,
    TempRange VARCHAR(20),
    Hazardous BOOLEAN,
    DocumentationComplete BOOLEAN,
    ReceivedBy VARCHAR(30),
    InspectionStatus VARCHAR(20),
    DiscrepancyNotes VARCHAR(200),
    TotalCostUSD DECIMAL(10,2),
    InvoiceNumber VARCHAR(30),
    PaymentStatus VARCHAR(20),
    CreatedAt TIMESTAMP,
    UpdatedAt TIMESTAMP
);

INSERT INTO MedicalSupplyShipment VALUES (3001, 4001, '2024-01-12', '2024-01-15', '2024-01-15', 'FastShip', 'TRK123456', 12, 540.75, 'SN7890', TRUE, '2-8C', FALSE, TRUE, 'jdoe', 'Passed', '', 12500.00, 'INV1001', 'Paid', '2024-01-12 07:00:00', '2024-01-15 15:30:00');
INSERT INTO MedicalSupplyShipment VALUES (3002, 4002, '2024-01-20', '2024-01-23', '2024-01-24', 'HealthLogistics', 'TRK987654', 8, 312.40, 'SN3456', FALSE, NULL, FALSE, TRUE, 'bwhite', 'Passed', '', 8200.00, 'INV1002', 'Pending', '2024-01-20 08:15:00', '2024-01-24 10:45:00');
INSERT INTO MedicalSupplyShipment VALUES (3003, 4003, '2024-02-01', '2024-02-04', NULL, 'MediExpress', 'TRK555777', 15, 780.20, 'SN1122', TRUE, '4-10C', TRUE, FALSE, 'klee', 'Pending', 'Cold chain break suspected', 15600.00, 'INV1003', 'Pending', '2024-02-01 09:30:00', '2024-02-05 12:00:00');

-- Facility security events log
CREATE TABLE FacilitySecurityEvent (
    EventID INT PRIMARY KEY,
    FacilityID INT,
    EventDate DATE,
    EventTime TIME,
    EventType VARCHAR(30),
    Severity VARCHAR(10),
    LocationDescription VARCHAR(100),
    DetectorID VARCHAR(30),
    OfficerOnDuty VARCHAR(30),
    ActionTaken VARCHAR(200),
    Outcome VARCHAR(100),
    ReportedBy VARCHAR(30),
    ReportedAt TIMESTAMP,
    Resolved BOOLEAN,
    ResolutionDate DATE,
    ResolutionTime TIME,
    Notes VARCHAR(200),
    CameraFootageAvailable BOOLEAN,
    Witnesses VARCHAR(200),
    EscalatedTo VARCHAR(30)
);

INSERT INTO FacilitySecurityEvent VALUES (4001, 101, '2024-01-10', '22:15:00', 'UnauthorizedAccess', 'High', 'East Wing Corridor', 'DTR001', 'officer1', 'Detained individual and called police', 'Individual arrested', 'officer1', '2024-01-10 22:30:00', TRUE, '2024-01-10', '22:45:00', 'Suspect attempted forced entry', TRUE, 'None', 'ChiefSecurity');
INSERT INTO FacilitySecurityEvent VALUES (4002, 102, '2024-01-12', '03:40:00', 'FireAlarm', 'Medium', 'Basement Storage', 'FDS005', 'officer2', 'Evacuated area, fire trucks dispatched', 'No damage', 'officer2', '2024-01-12 03:45:00', TRUE, '2024-01-12', '04:10:00', 'False alarm due to sensor malfunction', TRUE, 'MaintenanceTeam', 'FacilitiesMgr');
INSERT INTO FacilitySecurityEvent VALUES (4003, 103, '2024-01-15', '14:20:00', 'SuspiciousPackage', 'Low', 'Lobby Entrance', 'DTR010', 'officer3', 'Secured area, EOD team called', 'Package harmless', 'officer3', '2024-01-15 14:25:00', TRUE, '2024-01-15', '14:55:00', 'Package contained harmless items', FALSE, 'VisitorA', 'SecurityDeptHead');

-- Clinical guideline documents metadata
CREATE TABLE ClinicalGuidelineDocument (
    GuidelineID INT PRIMARY KEY,
    GuidelineCode VARCHAR(15),
    Title VARCHAR(150),
    Version VARCHAR(10),
    Specialty VARCHAR(50),
    EffectiveDate DATE,
    ReviewDate DATE,
    Author VARCHAR(50),
    Status VARCHAR(20),
    Summary VARCHAR(200),
    Scope VARCHAR(200),
    Keywords VARCHAR(200),
    DocumentPath VARCHAR(200),
    PublishedBy VARCHAR(50),
    ApprovalCommittee VARCHAR(50),
    IsMandatory BOOLEAN,
    LinksExternal VARCHAR(200),
    CreatedAt TIMESTAMP,
    UpdatedAt TIMESTAMP,
    Archived BOOLEAN
);

INSERT INTO ClinicalGuidelineDocument VALUES (5001, 'CG-HEART-01', 'Management of Acute Coronary Syndromes', 'v2.1', 'Cardiology', '2023-07-01', '2024-06-30', 'drlee', 'Active', 'Evidence based recommendations for ACS', 'Hospitals offering cardiac care', 'ACS,PCI,STEMI,NSTEMI', '/guidelines/heart/acs_v2_1.pdf', 'NationalCardioSociety', 'GuidelineCommittee', TRUE, 'http://example.org/acs', '2023-05-10 09:00:00', '2023-12-01 10:15:00', FALSE);
INSERT INTO ClinicalGuidelineDocument VALUES (5002, 'CG-NEURO-05', 'Stroke Prevention in Atrial Fibrillation', 'v1.0', 'Neurology', '2022-01-15', '2023-12-31', 'drmartin', 'Active', 'Guidance on anticoagulation for AF patients', 'All acute care centers', 'AFib,Stroke,Anticoagulation', '/guidelines/neuro/af_stroke_v1.pdf', 'NeuroAssociation', 'GuidelineBoard', FALSE, 'http://example.org/afstroke', '2021-12-01 08:30:00', '2022-02-20 09:45:00', FALSE);
INSERT INTO ClinicalGuidelineDocument VALUES (5003, 'CG-PEDI-03', 'Immunization Schedule for Infants', 'v3.0', 'Pediatrics', '2021-09-01', '2024-09-01', 'drnguyen', 'Superseded', 'Recommended vaccines for infants up to 12 months', 'Primary care pediatric clinics', 'Vaccines,Infant,Immunization', '/guidelines/pedi/immunization_v3.pdf', 'PediatricHealthOrg', 'ImmunizationCommittee', TRUE, 'http://example.org/immunization', '2021-08-01 07:45:00', '2023-01-10 08:00:00', TRUE);

-- Research project funding details
CREATE TABLE ResearchProjectFunding (
    FundingID INT PRIMARY KEY,
    ProjectID INT,
    FundingAgency VARCHAR(100),
    GrantNumber VARCHAR(30),
    AmountUSD DECIMAL(12,2),
    StartDate DATE,
    EndDate DATE,
    FundingType VARCHAR(20),
    Currency VARCHAR(10),
    ExchangeRate DECIMAL(10,4),
    DisbursementSchedule VARCHAR(200),
    PrincipalInvestigator VARCHAR(50),
    CoInvestigator VARCHAR(50),
    FundingStatus VARCHAR(20),
    SubmittedDate DATE,
    ApprovedDate DATE,
    PublicationRequirement VARCHAR(200),
    ReportingFrequency VARCHAR(20),
    ContactPerson VARCHAR(50),
    ContactEmail VARCHAR(100),
    CreatedAt TIMESTAMP,
    UpdatedAt TIMESTAMP
);

INSERT INTO ResearchProjectFunding VALUES (6001, 7001, 'NationalHealthInstitute', 'NHII-2023-045', 2500000.00, '2023-07-01', '2026-06-30', 'Grant', 'USD', 1.0000, 'Quarterly installments', 'drjohnson', 'drlee', 'Active', '2023-05-10', '2023-06-15', 'Open-access publication required', 'Quarterly', 'sarahk', 'sarahk@nih.gov', '2023-05-01 09:00:00', '2023-06-20 10:30:00');
INSERT INTO ResearchProjectFunding VALUES (6002, 7002, 'PrivatePharmaCo', 'PPC-2022-112', 1200000.00, '2022-01-15', '2024-12-31', 'Contract', 'USD', 1.0000, 'Semi-annual payments', 'drmartinez', 'drchen', 'Completed', '2021-11-20', '2022-01-05', 'Results to be shared with sponsor', 'SemiAnnual', 'mikeb', 'mikeb@pharmaco.com', '2021-11-01 08:30:00', '2024-12-01 17:45:00');
INSERT INTO ResearchProjectFunding VALUES (6003, 7003, 'GlobalScienceFoundation', 'GSF-2024-078', 500000.00, '2024-03-01', '2025-02-28', 'Fellowship', 'EUR', 1.0800, 'Monthly stipend', 'dralvarez', NULL, 'Active', '2023-12-10', '2024-01-20', 'Publish in peer-reviewed journal', 'Monthly', 'lindad', 'lindad@gsf.org', '2023-12-01 10:00:00', '2024-02-15 11:20:00');

-- Equipment calibration schedule
CREATE TABLE EquipmentCalibrationSchedule (
    ScheduleID INT PRIMARY KEY,
    EquipmentID INT,
    EquipmentType VARCHAR(50),
    CalibrationType VARCHAR(30),
    FrequencyMonths INT,
    LastCalibrationDate DATE,
    NextDueDate DATE,
    CalibrationLab VARCHAR(50),
    TechnicianName VARCHAR(50),
    CertificateNumber VARCHAR(30),
    CalibrationResult VARCHAR(20),
    Notes VARCHAR(200),
    UpdatedBy VARCHAR(30),
    UpdatedAt TIMESTAMP,
    CreatedBy VARCHAR(30),
    CreatedAt TIMESTAMP,
    IsActive BOOLEAN,
    CalibrationCostUSD DECIMAL(8,2),
    ApprovalSignature VARCHAR(30),
    ValidationDate DATE
);

INSERT INTO EquipmentCalibrationSchedule VALUES (8001, 9001, 'Blood Gas Analyzer', 'Electrical', 12, '2023-02-10', '2024-02-10', 'LabCalibCenter', 'janedoe', 'CERT12345', 'Pass', 'All parameters within spec', 'janedoe', '2023-02-11 09:15:00', 'janedoe', '2023-02-10 08:45:00', TRUE, 350.00, 'jdoe', '2023-02-10');
INSERT INTO EquipmentCalibrationSchedule VALUES (8002, 9002, 'MRI Scanner', 'MagneticField', 24, '2022-11-20', '2024-11-20', 'MagCalibInc', 'bobsmith', 'CERT67890', 'Pass', 'Field homogeneity acceptable', 'bobsmith', '2022-11-21 10:30:00', 'bobsmith', '2022-11-20 09:00:00', TRUE, 1200.00, 'asmith', '2022-11-20');
INSERT INTO EquipmentCalibrationSchedule VALUES (8003, 9003, 'Ventilator', 'Performance', 6, '2023-08-05', '2023-12-05', 'InHouseLab', 'carolw', 'CERT54321', 'Pass', 'Ventilation volume within tolerance', 'carolw', '2023-08-05 14:20:00', 'carolw', '2023-08-05 13:45:00', TRUE, 200.00, 'klee', '2023-08-05');

-- Waste management log entries
CREATE TABLE WasteManagementLog (
    LogID INT PRIMARY KEY,
    WasteID INT,
    WasteType VARCHAR(30),
    GeneratedDate DATE,
    Department VARCHAR(50),
    QuantityKg DECIMAL(8,2),
    HazardLevel VARCHAR(10),
    StorageLocation VARCHAR(50),
    CollectionDate DATE,
    CollectorCompany VARCHAR(50),
    TransportMethod VARCHAR(30),
    DisposalMethod VARCHAR(30),
    PermitNumber VARCHAR(30),
    ComplianceCheck BOOLEAN,
    CheckedBy VARCHAR(30),
    CheckDate DATE,
    Notes VARCHAR(200),
    IncidentReported BOOLEAN,
    IncidentDetails VARCHAR(200),
    CreatedAt TIMESTAMP,
    UpdatedAt TIMESTAMP
);

INSERT INTO WasteManagementLog VALUES (9001, 10001, 'Sharps', '2024-01-10', 'Surgery', 12.50, 'High', 'Room 12', '2024-01-12', 'SafeDisposeCo', 'Van', 'Incineration', 'PERM001', TRUE, 'jdoe', '2024-01-13', 'No issues', FALSE, NULL, '2024-01-10 08:00:00', '2024-01-13 12:30:00');
INSERT INTO WasteManagementLog VALUES (9002, 10002, 'Chemical', '2024-01-15', 'Pathology', 8.75, 'Medium', 'Lab B', '2024-01-17', 'EcoWasteServices', 'Truck', 'Landfill', 'PERM002', TRUE, 'bwhite', '2024-01-18', 'Spill contained promptly', FALSE, NULL, '2024-01-15 09:15:00', '2024-01-18 14:45:00');
INSERT INTO WasteManagementLog VALUES (9003, 10003, 'Pharmaceutical', '2024-01-20', 'Pharmacy', 5.20, 'High', 'Storage Area 3', '2024-01-22', 'MedWasteInc', 'Van', 'Destruction', 'PERM003', FALSE, 'klee', '2024-01-23', 'Missing documentation', TRUE, 'Permit not attached to shipment', '2024-01-20 10:30:00', '2024-01-23 11:00:00');

-- IT asset inventory
CREATE TABLE ITAssetInventory (
    AssetID INT PRIMARY KEY,
    AssetTag VARCHAR(30),
    AssetType VARCHAR(30),
    Manufacturer VARCHAR(50),
    Model VARCHAR(50),
    SerialNumber VARCHAR(50),
    PurchaseDate DATE,
    WarrantyEndDate DATE,
    AssignedTo VARCHAR(50),
    Department VARCHAR(50),
    Location VARCHAR(100),
    IPAddress VARCHAR(15),
    MACAddress VARCHAR(17),
    OS VARCHAR(30),
    Status VARCHAR(20),
    LastMaintenanceDate DATE,
    NextMaintenanceDue DATE,
    CostUSD DECIMAL(10,2),
    DepreciationYears INT,
    CurrentValueUSD DECIMAL(10,2),
    CreatedAt TIMESTAMP,
    UpdatedAt TIMESTAMP
);

INSERT INTO ITAssetInventory VALUES (10001, 'TAG-0001', 'Laptop', 'Dell', 'Latitude 7420', 'SN123456', '2022-05-10', '2025-05-10', 'jdoe', 'Radiology', 'Room 204', '192.168.10.15', '00:1A:2B:3C:4D:5E', 'Windows10', 'InUse', '2023-06-01', '2024-06-01', 1500.00, 3, 1000.00, '2022-05-10 09:00:00', '2023-06-01 10:00:00');
INSERT INTO ITAssetInventory VALUES (10002, 'TAG-0002', 'Server', 'HP', 'ProLiant DL380', 'SN789012', '2021-03-20', '2026-03-20', 'itadmin', 'IT', 'Data Center Rack 5', '192.168.20.5', '00:1B:2C:3D:4E:5F', 'Linux', 'Operational', '2023-01-15', '2024-01-15', 8000.00, 5, 6400.00, '2021-03-20 08:30:00', '2023-01-15 09:45:00');
INSERT INTO ITAssetInventory VALUES (10003, 'TAG-0003', 'Desktop', 'Lenovo', 'ThinkCentre M720', 'SN345678', '2020-11-05', '2023-11-05', 'asmith', 'Finance', 'Office 12B', '192.168.30.12', '00:1C:2D:3E:4F:5A', 'Windows10', 'Retired', '2022-12-01', NULL, 900.00, 3, 0.00, '2020-11-05 07:45:00', '2022-12-01 08:20:00');