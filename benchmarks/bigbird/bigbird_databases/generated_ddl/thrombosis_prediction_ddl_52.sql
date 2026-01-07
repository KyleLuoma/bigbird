-- Schedule for building maintenance activities
CREATE TABLE BuildingMaintenanceSchedule
(
    ScheduleID               INTEGER           NOT NULL,
    BuildingName             TEXT              NOT NULL,
    Wing                     TEXT,
    Floor                    INTEGER,
    RoomNumber               TEXT,
    MaintenanceType          TEXT,
    ScheduledDate            DATE,
    EstimatedDurationHours   INTEGER,
    ContractorName           TEXT,
    ContactPhone             TEXT,
    PriorityLevel            TEXT,
    Status                   TEXT,
    CreatedBy                TEXT,
    CreatedDate              DATE,
    LastUpdatedBy            TEXT,
    LastUpdatedDate          DATE,
    Notes                    TEXT,
    CostEstimate             REAL,
    MaterialRequired         TEXT,
    SafetyPrecautions        TEXT,
    ApprovalCode             TEXT,
    PRIMARY KEY (ScheduleID)
);

INSERT INTO BuildingMaintenanceSchedule VALUES (1, 'Main Hospital', 'North', 2, '202A', 'HVAC Inspection', '2024-03-10', 4, 'CoolTech Services', '5551234567', 'High', 'Planned', 'admin', '2024-02-01', 'admin', '2024-02-01', 'Check filters and ducts', 1500.00, 'Air filters, duct seals', 'Wear PPE', 'APRV001');
INSERT INTO BuildingMaintenanceSchedule VALUES (2, 'Research Wing', 'East', 1, '101B', 'Electrical Upgrade', '2024-04-15', 8, 'ElectricPro Ltd', '5559876543', 'Medium', 'Planned', 'engineer', '2024-03-05', 'engineer', '2024-03-05', 'Upgrade panel board', 3200.00, 'Circuit breakers, wiring', 'Lockout tagout', 'APRV002');
INSERT INTO BuildingMaintenanceSchedule VALUES (3, 'Outpatient Center', 'South', 3, '303C', 'Plumbing Repair', '2024-05-20', 6, 'PipeMasters', '5552468101', 'Low', 'Planned', 'maintenance', '2024-04-10', 'maintenance', '2024-04-10', 'Fix leaking pipe in restroom', 900.00, 'Pipe sections, sealant', 'Shut water supply', 'APRV003');

-- Information about power supply units in the facility
CREATE TABLE PowerSupplyUnit
(
    UnitID               INTEGER NOT NULL,
    FacilityName         TEXT,
    UnitType             TEXT,
    CapacityMW           REAL,
    InstallationDate     DATE,
    Manufacturer         TEXT,
    ModelNumber          TEXT,
    SerialNumber         TEXT,
    VoltageKV            REAL,
    CurrentA             REAL,
    EfficiencyPercent    REAL,
    LastInspectionDate   DATE,
    InspectionResult     TEXT,
    NextMaintenanceDate  DATE,
    AssignedEngineer     TEXT,
    EngineerContact      TEXT,
    OperationalStatus    TEXT,
    Comments             TEXT,
    WarrantyEndDate      DATE,
    PowerOutputMW        REAL,
    FuelType             TEXT,
    EmissionRating       TEXT,
    PRIMARY KEY (UnitID)
);

INSERT INTO PowerSupplyUnit VALUES (101, 'Main Campus', 'Generator', 5.0, '2018-06-12', 'GenPower', 'GPX500', 'SN001122', 13.8, 360, 95.5, '2023-12-01', 'Pass', '2024-12-01', 'John Doe', '5553216549', 'Active', 'Routine check completed', '2026-06-12', 5.0, 'Diesel', 'Tier II');
INSERT INTO PowerSupplyUnit VALUES (102, 'Research Wing', 'Transformer', 2.5, '2019-09-20', 'TransCo', 'TRF2500', 'SN003344', 22.0, 115, 98.0, '2024-01-15', 'Pass', '2025-01-15', 'Jane Smith', '5556549873', 'Active', 'No anomalies', '2028-09-20', 2.5, 'Electric', 'N/A');
INSERT INTO PowerSupplyUnit VALUES (103, 'Outpatient Center', 'UPS', 0.8, '2020-03-05', 'PowerGuard', 'UPS800', 'SN005566', 0.48, 1667, 92.0, '2024-02-20', 'Pass', '2025-02-20', 'Mike Lee', '5551122334', 'Standby', 'Battery replaced 2023', '2027-03-05', 0.8, 'Battery', 'N/A');

-- Water quality monitoring samples
CREATE TABLE WaterQualityMonitoring
(
    SampleID                INTEGER NOT NULL,
    Location                TEXT,
    SampleDate              DATE,
    TemperatureC           REAL,
    pH                     REAL,
    TurbidityNTU           REAL,
    ConductivityUS         REAL,
    ChlorinePPM            REAL,
    LeadPPB                REAL,
    MercuryPPB             REAL,
    NitratePPM             REAL,
    PhosphatePPM           REAL,
    BacterialCountCFU      INTEGER,
    SampleCollector        TEXT,
    CollectionMethod       TEXT,
    Laboratory             TEXT,
    ResultStatus           TEXT,
    ApprovedBy             TEXT,
    ApprovalDate           DATE,
    Notes                  TEXT,
    OverallQualityScore    INTEGER,
    PRIMARY KEY (SampleID)
);

INSERT INTO WaterQualityMonitoring VALUES (2001, 'North Wing Faucet', '2024-02-10', 22.5, 7.2, 0.3, 150, 0.2, 5, 0, 10, 0.5, 150, 'Alice', 'Grab Sample', 'Central Lab', 'Approved', 'DrBrown', '2024-02-12', 'Routine monitoring', 85);
INSERT INTO WaterQualityMonitoring VALUES (2002, 'East Wing Reservoir', '2024-02-11', 19.8, 7.0, 0.1, 140, 0.1, 2, 0, 8, 0.4, 80, 'Bob', 'Auto Sampler', 'Central Lab', 'Approved', 'DrBrown', '2024-02-13', 'All parameters within limits', 92);
INSERT INTO WaterQualityMonitoring VALUES (2003, 'South Wing Cooling Tower', '2024-02-12', 25.0, 6.8, 1.2, 200, 0.5, 15, 1, 25, 1.0, 500, 'Carol', 'Grab Sample', 'Central Lab', 'Pending', 'DrBrown', '2024-02-14', 'High turbidity observed', 60);

-- Log of pharmacy regulatory audits
CREATE TABLE PharmacyRegulatoryAuditLog
(
    AuditID               INTEGER NOT NULL,
    PharmacyID            INTEGER,
    AuditDate             DATE,
    AuditorName           TEXT,
    AuditScope            TEXT,
    FindingsCount         INTEGER,
    MajorFindings         INTEGER,
    MinorFindings         INTEGER,
    CorrectiveActions     TEXT,
    Status                TEXT,
    FollowUpDate          DATE,
    Comments              TEXT,
    CreatedAt             DATE,
    CreatedBy             TEXT,
    UpdatedAt             DATE,
    UpdatedBy             TEXT,
    ComplianceScore       REAL,
    LicenseNumber         TEXT,
    Region                TEXT,
    AuditType             TEXT,
    Recommendations       TEXT,
    PRIMARY KEY (AuditID)
);

INSERT INTO PharmacyRegulatoryAuditLog VALUES (301, 10, '2024-01-20', 'Laura Green', 'Dispensing Accuracy', 12, 3, 9, 'Retraining staff; system update', 'Completed', '2024-02-15', 'All issues resolved', '2024-01-20', 'regadmin', '2024-02-15', 'regadmin', 96.5, 'LIC12345', 'North', 'Annual', 'Implement barcode scanning');
INSERT INTO PharmacyRegulatoryAuditLog VALUES (302, 12, '2024-02-05', 'Mark White', 'Controlled Substances', 8, 2, 6, 'Improve inventory log', 'In Progress', '2024-03-10', 'Pending follow‑up', '2024-02-05', 'regadmin', '2024-02-28', 'regadmin', 89.0, 'LIC67890', 'South', 'Surprise', 'Quarterly review of logs');
INSERT INTO PharmacyRegulatoryAuditLog VALUES (303, 15, '2024-03-12', 'Nina Black', 'Compounding Practices', 5, 1, 4, 'Standardize SOPs', 'Planned', '2024-04-20', 'Initial findings', '2024-03-12', 'regadmin', '2024-03-12', 'regadmin', 92.3, 'LIC54321', 'East', 'Targeted', 'Add periodic competency tests');

-- Records of clinical software releases
CREATE TABLE ClinicalSoftwareRelease
(
    ReleaseID               INTEGER NOT NULL,
    SoftwareName            TEXT,
    Version                 TEXT,
    ReleaseDate             DATE,
    ReleasedBy              TEXT,
    ReleaseNotes            TEXT,
    SupportedPlatforms      TEXT,
    CriticalityLevel        TEXT,
    DeploymentStatus        TEXT,
    RollbackVersion         TEXT,
    AffectedModules         TEXT,
    BugFixCount             INTEGER,
    FeatureCount            INTEGER,
    SecurityPatches         INTEGER,
    ComplianceStatus        TEXT,
    TestedBy                TEXT,
    TestDate                DATE,
    ApprovalStatus          TEXT,
    DeploymentWindowStart   DATE,
    DeploymentWindowEnd     DATE,
    TargetEnvironment       TEXT,
    PRIMARY KEY (ReleaseID)
);

INSERT INTO ClinicalSoftwareRelease VALUES (401, 'EHR Suite', '5.3.1', '2024-02-28', 'devteam', 'Minor bug fixes and UI tweaks', 'Windows, Linux', 'Medium', 'Deployed', '5.3.0', 'PatientModule,BillingModule', 4, 2, 1, 'Compliant', 'qa_lead', '2024-02-20', 'Approved', '2024-03-01', '2024-03-02', 'Production');
INSERT INTO ClinicalSoftwareRelease VALUES (402, 'LabInfo', '2.8.0', '2024-03-15', 'devteam', 'New reporting features', 'Windows', 'High', 'Scheduled', '2.7.5', 'ReportEngine', 0, 5, 0, 'Compliant', 'qa_lead', '2024-03-10', 'Pending', '2024-03-20', '2024-03-21', 'Staging');
INSERT INTO ClinicalSoftwareRelease VALUES (403, 'RadiologyViewer', '1.12.4', '2024-04-05', 'devteam', 'Security patch for image handling', 'Windows, macOS', 'Critical', 'Pending', '1.12.3', 'ImageProcessor', 2, 0, 2, 'Pending', 'qa_lead', '2024-04-01', 'Approved', '2024-04-10', '2024-04-11', 'Production');

-- Events tracking supply chain transport
CREATE TABLE SupplyChainTransportEvent
(
    EventID                INTEGER NOT NULL,
    ShipmentID             TEXT,
    OriginFacility         TEXT,
    DestinationFacility    TEXT,
    CarrierName            TEXT,
    TransportMode          TEXT,
    DepartureDate          DATE,
    ArrivalDate            DATE,
    TemperatureControl     TEXT,
    HumidityControl        TEXT,
    EventStatus            TEXT,
    DelayReason            TEXT,
    EstimatedDelayHours    INTEGER,
    ActualDelayHours       INTEGER,
    HandlerName            TEXT,
    HandlerContact         TEXT,
    CargoWeightKg          REAL,
    CargoVolumeM3          REAL,
    SpecialInstructions    TEXT,
    CreatedAt              DATE,
    UpdatedAt              DATE,
    PRIMARY KEY (EventID)
);

INSERT INTO SupplyChainTransportEvent VALUES (501, 'SHIP1001', 'Central Warehouse', 'Main Hospital', 'FastLogistics', 'Truck', '2024-02-01', '2024-02-03', 'Yes', 'No', 'Delivered', '', 0, 0, 'Sam Turner', '5557778888', 1200.5, 8.2, 'Handle with care', '2024-02-01', '2024-02-03');
INSERT INTO SupplyChainTransportEvent VALUES (502, 'SHIP1002', 'Pharmacy Depot', 'Outpatient Center', 'QuickShip', 'Air', '2024-02-10', '2024-02-10', 'Yes', 'Yes', 'Delivered', 'Weather', 2, 3, 'Lara Kim', '5558899000', 300.0, 2.0, 'Keep refrigerated', '2024-02-10', '2024-02-10');
INSERT INTO SupplyChainTransportEvent VALUES (503, 'SHIP1003', 'Lab Supplier', 'Research Wing', 'EcoFreight', 'Rail', '2024-03-05', '2024-03-08', 'No', 'No', 'In Transit', 'Track issue', 5, 0, 'Mike Ross', '5556677889', 500.0, 4.5, 'Fragile equipment', '2024-03-05', '2024-03-06');

-- Calibration records for radiology equipment
CREATE TABLE RadiologyEquipmentCalibrationRecord
(
    RecordID               INTEGER NOT NULL,
    EquipmentID            TEXT,
    EquipmentType          TEXT,
    CalibrationDate        DATE,
    CalibrationMethod      TEXT,
    TechnicianName         TEXT,
    TechnicianCert         TEXT,
    CalibrationResult      TEXT,
    NextDueDate            DATE,
    CalibrationValue       REAL,
    Units                  TEXT,
    Tolerance              REAL,
    Comments               TEXT,
    ApprovedBy             TEXT,
    ApprovalDate           DATE,
    Facility               TEXT,
    Department             TEXT,
    CalibrationVendor      TEXT,
    VendorContact          TEXT,
    CalibrationCost        REAL,
    DowntimeHours          REAL,
    Status                 TEXT,
    PRIMARY KEY (RecordID)
);

INSERT INTO RadiologyEquipmentCalibrationRecord VALUES (601, 'RX100', 'XRay', '2024-01-15', 'Phantom Test', 'Anna Lee', 'CertA', 'Pass', '2025-01-15', 1.02, 'mGy', 0.05, 'All parameters within spec', 'DrWhite', '2024-01-16', 'Main Hospital', 'Radiology', 'CalibCo', '5554443333', 1200.00, 2.5, 'Active');
INSERT INTO RadiologyEquipmentCalibrationRecord VALUES (602, 'CT200', 'CTScanner', '2024-02-20', 'Water Phantom', 'Brian Kim', 'CertB', 'Pass', '2025-02-20', 0.98, 'HU', 0.03, 'Minor drift corrected', 'DrWhite', '2024-02-21', 'Research Wing', 'Imaging', 'CalibCo', '5554443333', 1500.00, 3.0, 'Active');
INSERT INTO RadiologyEquipmentCalibrationRecord VALUES (603, 'MRI300', 'MRI', '2024-03-10', 'Geometric Accuracy', 'Cathy Wu', 'CertC', 'Fail', '2024-04-10', 0.0, 'N/A', 0.0, 'Magnet quench needed', 'DrWhite', '2024-03-11', 'East Wing', 'Radiology', 'CalibCo', '5554443333', 0.00, 0.0, 'Pending Repair');

-- Planned calibration schedule for laboratory instruments
CREATE TABLE LaboratoryInstrumentCalibrationPlan
(
    PlanID                INTEGER NOT NULL,
    InstrumentID          TEXT,
    InstrumentType        TEXT,
    PlannedDate           DATE,
    FrequencyDays         INTEGER,
    CalibrationProcedure  TEXT,
    ResponsibleTechnician TEXT,
    TechnicianContact     TEXT,
    CalibrationStandard   TEXT,
    StandardReference     TEXT,
    ExpectedDurationHours REAL,
    PreCalibrationCheck   TEXT,
    PostCalibrationCheck  TEXT,
    DocumentationLocation TEXT,
    ApprovalBy            TEXT,
    ApprovalDate          DATE,
    Facility              TEXT,
    Department            TEXT,
    RiskLevel             TEXT,
    Notes                 TEXT,
    EstimatedCost         REAL,
    PRIMARY KEY (PlanID)
);

INSERT INTO LaboratoryInstrumentCalibrationPlan VALUES (701, 'SPEC01', 'Spectrometer', '2024-04-01', 365, 'Standard Reference Material', 'Dana Fox', '5551112222', 'NIST SRM 1976', 'NIST-1976', 3.0, 'Clean optics', 'Verify baseline', '/docs/calib/spec01.pdf', 'LabMgr', '2024-03-20', 'Main Lab', 'Chemistry', 'Medium', 'Schedule during low usage', 500.00);
INSERT INTO LaboratoryInstrumentCalibrationPlan VALUES (702, 'HPLC02', 'HPLC System', '2024-04-15', 180, 'Gradient Test', 'Evan Lee', '5553334444', 'USP 710', 'USP-710', 4.5, 'Check pump pressure', 'Run control sample', '/docs/calib/hplc02.pdf', 'LabMgr', '2024-03-22', 'Research Lab', 'Pharma', 'High', 'Critical for assay', 800.00);
INSERT INTO LaboratoryInstrumentCalibrationPlan VALUES (703, 'GC03', 'Gas Chromatograph', '2024-05-05', 365, 'Retention Time Check', 'Fiona Chen', '5555556666', 'EPA Method 525', 'EPA-525', 2.5, 'Inspect column', 'Run standard gas mix', '/docs/calib/gc03.pdf', 'LabMgr', '2024-03-25', 'Environmental Lab', 'Analysis', 'Low', 'Routine maintenance', 400.00);

-- Information about hospital parking lots
CREATE TABLE HospitalParkingLot
(
    LotID                INTEGER NOT NULL,
    LotName              TEXT,
    CapacitySpaces       INTEGER,
    CoveredSpaces        INTEGER,
    HandicappedSpaces    INTEGER,
    Level                INTEGER,
    Section              TEXT,
    EntryGate            TEXT,
    ExitGate             TEXT,
    SecurityCameraCount  INTEGER,
    LightingType         TEXT,
    MaintenanceProvider  TEXT,
    LastMaintenanceDate  DATE,
    Status               TEXT,
    DailyRate            REAL,
    MonthlyRate          REAL,
    OperatorContact      TEXT,
    OpenHours            TEXT,
    ClosedHours          TEXT,
    PaymentMethod        TEXT,
    Notes                TEXT,
    PRIMARY KEY (LotID)
);

INSERT INTO HospitalParkingLot VALUES (801, 'NorthLot', 200, 50, 10, 1, 'A', 'Gate1', 'Gate2', 12, 'LED', 'ParkFix', '2024-01-15', 'Open', 5.00, 150.00, '5557770000', '06:00-22:00', '22:00-06:00', 'Cash,Card', 'Near main entrance');
INSERT INTO HospitalParkingLot VALUES (802, 'EastLot', 150, 30, 5, 2, 'B', 'Gate3', 'Gate4', 8, 'Halogen', 'ParkCare', '2024-02-10', 'Open', 4.50, 130.00, '5557771111', '07:00-21:00', '21:00-07:00', 'Card', 'Reserved for staff');
INSERT INTO HospitalParkingLot VALUES (803, 'SouthLot', 100, 20, 2, 0, 'C', 'Gate5', 'Gate6', 5, 'LED', 'ParkFix', '2024-03-05', 'Closed', 0.00, 0.00, '5557772222', '08:00-20:00', '20:00-08:00', 'None', 'Visitor parking only');

-- Details of waste management facilities
CREATE TABLE WasteManagementFacility
(
    FacilityID           INTEGER NOT NULL,
    FacilityName         TEXT,
    Location             TEXT,
    FacilityType         TEXT,
    CapacityTons         REAL,
    CurrentLoadTons      REAL,
    LastInspectionDate   DATE,
    InspectionResult     TEXT,
    OperatingCompany     TEXT,
    ContactNumber        TEXT,
    HazardousMaterialHandling TEXT,
    RecyclingRatePercent REAL,
    EmissionLevel        TEXT,
    ComplianceStatus     TEXT,
    WasteProcessingMethod TEXT,
    StaffOnDuty          INTEGER,
    ShiftStart           TIME,
    ShiftEnd             TIME,
    MaintenanceSchedule  TEXT,
    Notes                TEXT,
    EstablishedDate      DATE,
    PRIMARY KEY (FacilityID)
);

INSERT INTO WasteManagementFacility VALUES (901, 'BioHazardCenter', 'North Campus', 'Biohazard', 120.0, 78.5, '2024-01-20', 'Pass', 'CleanEnv Co', '5559990001', 'Yes', 85.0, 'Low', 'Compliant', 'Incineration', 12, '07:00', '19:00', 'Quarterly', 'Handles infectious waste', '2005-06-15');
INSERT INTO WasteManagementFacility VALUES (902, 'GeneralWastePlant', 'South Campus', 'General', 300.0, 210.0, '2024-02-05', 'Pass', 'EcoWaste Ltd', '5559990002', 'No', 70.0, 'Medium', 'Compliant', 'Landfill', 20, '06:00', '18:00', 'Biannual', 'Non‑hazardous waste', '2010-09-01');
INSERT INTO WasteManagementFacility VALUES (903, 'RecyclingHub', 'East Campus', 'Recycling', 80.0, 55.0, '2024-03-10', 'Pass', 'GreenCycle Inc', '5559990003', 'No', 95.0, 'Low', 'Compliant', 'Material Separation', 8, '08:00', '20:00', 'Monthly', 'Paper, plastic, metal', '2015-03-20');