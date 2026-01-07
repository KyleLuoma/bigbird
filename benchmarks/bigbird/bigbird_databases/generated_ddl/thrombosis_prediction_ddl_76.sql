-- Clinical Safety Committee information
CREATE TABLE ClinicalSafetyCommittee (
    CommitteeID INTEGER PRIMARY KEY,
    CommitteeName TEXT,
    MeetingDate DATE,
    Chairperson TEXT,
    MemberCount INTEGER,
    RiskLevel TEXT,
    Department TEXT,
    Location TEXT,
    DecisionSummary TEXT,
    FollowUpAction TEXT,
    ActionDueDate DATE,
    ApprovedBy TEXT,
    ApprovedDate DATE,
    DocumentationLink TEXT,
    MinutesRecorded INTEGER,
    AttendanceRate REAL,
    IssueCount INTEGER,
    ResolvedCount INTEGER,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT,
    IsActive INTEGER
);

INSERT INTO ClinicalSafetyCommittee VALUES (1, 'SafetyCouncilA', '2024-01-15', 'DrSmith', 12, 'High', 'Cardiology', 'Room101', 'Updated protocol X', 'Train staff', '2024-02-01', 'DrJones', '2024-01-16', 'link1', 1, 0.95, 5, 3, '2024-01-01', '2024-01-10', 'Initial setup', 1);
INSERT INTO ClinicalSafetyCommittee VALUES (2, 'SafetyCouncilB', '2024-03-20', 'DrLee', 10, 'Medium', 'Oncology', 'Room202', 'Reviewed incident Y', 'Revise SOP', '2024-04-05', 'DrKim', '2024-03-21', 'link2', 1, 0.89, 3, 2, '2024-02-01', '2024-03-01', 'Quarterly review', 1);
INSERT INTO ClinicalSafetyCommittee VALUES (3, 'SafetyCouncilC', '2024-05-10', 'DrPatel', 8, 'Low', 'Neurology', 'Room303', 'No major issues', 'Maintain current', '2024-05-20', 'DrWang', '2024-05-11', 'link3', 0, 0.99, 0, 0, '2024-04-01', '2024-05-01', 'Annual meeting', 1);

-- Radiology Worklist tracking
CREATE TABLE RadiologyWorklist (
    WorklistID INTEGER PRIMARY KEY,
    Modality TEXT,
    StudyInstanceUID TEXT,
    PatientMRN TEXT,
    AccessionNumber TEXT,
    OrderDate DATE,
    ScheduledDate DATE,
    PriorityLevel TEXT,
    Technologist TEXT,
    Radiologist TEXT,
    Status TEXT,
    BodyPart TEXT,
    ContrastUsed TEXT,
    DoseLevel REAL,
    AcquisitionTime REAL,
    ImageCount INTEGER,
    ReportStatus TEXT,
    CreationTimestamp DATE,
    UpdateTimestamp DATE,
    Comments TEXT,
    IsUrgent INTEGER,
    DepartmentCode TEXT
);

INSERT INTO RadiologyWorklist VALUES (101, 'CT', 'UID001', 'MRN123', 'ACC001', '2024-02-01', '2024-02-02', 'Routine', 'TechA', 'DrBrown', 'Pending', 'Head', 'Yes', 5.2, 12.5, 150, 'NotStarted', '2024-02-01', '2024-02-01', 'First scan', 0, 'RAD01');
INSERT INTO RadiologyWorklist VALUES (102, 'MRI', 'UID002', 'MRN456', 'ACC002', '2024-02-05', '2024-02-06', 'Stat', 'TechB', 'DrGreen', 'InProgress', 'Spine', 'No', 0.0, 30.0, 200, 'Partial', '2024-02-05', '2024-02-05', 'Urgent case', 1, 'RAD02');
INSERT INTO RadiologyWorklist VALUES (103, 'XRay', 'UID003', 'MRN789', 'ACC003', '2024-02-10', '2024-02-10', 'Routine', 'TechC', 'DrWhite', 'Completed', 'Chest', 'No', 0.0, 0.5, 3, 'Finalized', '2024-02-10', '2024-02-10', 'Routine check', 0, 'RAD03');

-- Laboratory Instrument Log
CREATE TABLE LaboratoryInstrumentLog (
    LogID INTEGER PRIMARY KEY,
    InstrumentID TEXT,
    InstrumentType TEXT,
    SerialNumber TEXT,
    CalibrationDate DATE,
    CalibrationDue DATE,
    Technician TEXT,
    CalibrationResult TEXT,
    LastMaintenance DATE,
    MaintenanceDue DATE,
    MaintenancePerformed TEXT,
    FirmwareVersion TEXT,
    SoftwareVersion TEXT,
    Location TEXT,
    Status TEXT,
    ErrorCode TEXT,
    ErrorDescription TEXT,
    UsageHours REAL,
    CreatedOn DATE,
    ModifiedOn DATE,
    Notes TEXT,
    IsActive INTEGER
);

INSERT INTO LaboratoryInstrumentLog VALUES (1, 'INST001', 'Spectrometer', 'SN001', '2024-01-01', '2024-07-01', 'TechA', 'Pass', '2024-01-15', '2024-07-15', 'Cleaned', 'v1.2', 's3.4', 'LabA', 'Operational', '', '', 120.5, '2024-01-01', '2024-01-15', 'Initial calibration', 1);
INSERT INTO LaboratoryInstrumentLog VALUES (2, 'INST002', 'Centrifuge', 'SN002', '2023-12-01', '2024-06-01', 'TechB', 'Pass', '2023-12-10', '2024-06-10', 'Lubricated', 'v2.0', 's1.0', 'LabB', 'Operational', '', '', 300.0, '2023-12-01', '2023-12-10', 'Routine check', 1);
INSERT INTO LaboratoryInstrumentLog VALUES (3, 'INST003', 'Microscope', 'SN003', '2024-02-01', '2024-08-01', 'TechC', 'Fail', '2024-02-05', '2024-08-05', 'Repaired', 'v3.1', 's2.2', 'LabC', 'UnderRepair', 'E101', 'Stage misalignment', 50.2, '2024-02-01', '2024-02-05', 'Calibration failed', 0);

-- Patient Recovery Metrics
CREATE TABLE PatientRecoveryMetrics (
    MetricID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    AdmissionDate DATE,
    DischargeDate DATE,
    LengthOfStay INTEGER,
    MobilityScore INTEGER,
    PainScore INTEGER,
    NutritionScore INTEGER,
    MentalStatusScore INTEGER,
    PhysicalTherapyHours REAL,
    OccupationalTherapyHours REAL,
    SpeechTherapyHours REAL,
    MedicationAdherence INTEGER,
    FollowUpScheduled DATE,
    FollowUpCompleted INTEGER,
    ReadmissionWithin30Days INTEGER,
    ComplicationCount INTEGER,
    DischargeDisposition TEXT,
    CreatedTimestamp DATE,
    UpdatedTimestamp DATE,
    Notes TEXT,
    IsActive INTEGER,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO PatientRecoveryMetrics VALUES (1001, 1, '2024-01-05', '2024-01-15', 10, 8, 3, 7, 9, 5.0, 2.0, 0.0, 1, '2024-02-01', 0, 0, 0, 'Home', '2024-01-05', '2024-01-15', 'Good progress', 1);
INSERT INTO PatientRecoveryMetrics VALUES (1002, 2, '2024-02-10', '2024-02-20', 10, 5, 5, 6, 6, 3.5, 1.5, 0.0, 0, '2024-03-01', 0, 1, 1, 'RehabCenter', '2024-02-10', '2024-02-20', 'Requires follow-up', 1);
INSERT INTO PatientRecoveryMetrics VALUES (1003, 3, '2024-03-01', '2024-03-08', 7, 9, 2, 8, 10, 6.0, 2.5, 1.0, 1, '2024-04-01', 0, 0, 0, 'Home', '2024-03-01', '2024-03-08', 'Excellent recovery', 1);

-- Health IT Incident Log
CREATE TABLE HealthITIncidentLog (
    IncidentID INTEGER PRIMARY KEY,
    IncidentDate DATE,
    SystemName TEXT,
    Module TEXT,
    SeverityLevel TEXT,
    Description TEXT,
    ImpactScope TEXT,
    Reporter TEXT,
    AssignedTo TEXT,
    Status TEXT,
    ResolutionDate DATE,
    RootCause TEXT,
    MitigationAction TEXT,
    DowntimeMinutes INTEGER,
    UsersAffected INTEGER,
    TicketNumber TEXT,
    ChangeRequestID TEXT,
    CreatedOn DATE,
    UpdatedOn DATE,
    Notes TEXT,
    IsCritical INTEGER,
    FollowUpRequired INTEGER
);

INSERT INTO HealthITIncidentLog VALUES (5001, '2024-01-20', 'EHR', 'Scheduling', 'High', 'System outage', 'All clinics', 'TechA', 'EngB', 'Resolved', '2024-01-20', 'Database lock', 'Restart services', 45, 120, 'TICK001', 'CR001', '2024-01-20', '2024-01-20', 'No recurrence', 1, 0);
INSERT INTO HealthITIncidentLog VALUES (5002, '2024-02-15', 'LabInfoSys', 'ResultsUpload', 'Medium', 'Delayed results', 'LabDept', 'TechC', 'EngD', 'InProgress', NULL, 'Network latency', 'Upgrade network', 0, 30, 'TICK002', 'CR002', '2024-02-15', '2024-02-16', 'Monitoring', 0, 1);
INSERT INTO HealthITIncidentLog VALUES (5003, '2024-03-05', 'PharmacyPortal', 'PrescriptionEntry', 'Low', 'Minor UI glitch', 'PharmacyStaff', 'TechE', 'EngF', 'Resolved', '2024-03-05', 'UI bug', 'Patch applied', 5, 5, 'TICK003', 'CR003', '2024-03-05', '2024-03-05', 'Patch tested', 0, 0);

-- Facility Water Quality Log
CREATE TABLE FacilityWaterQualityLog (
    SampleID INTEGER PRIMARY KEY,
    CollectionDate DATE,
    FacilityArea TEXT,
    SourceType TEXT,
    pH REAL,
    Conductivity REAL,
    Turbidity REAL,
    Lead_ppb REAL,
    Copper_ppb REAL,
    Chlorine_mgL REAL,
    Temperature_C REAL,
    BacteriologicalResult TEXT,
    SamplingTechnician TEXT,
    ApprovalStatus TEXT,
    Remarks TEXT,
    CreatedOn DATE,
    UpdatedOn DATE,
    LabReferenceNumber TEXT,
    IsCompliant INTEGER,
    FollowUpAction TEXT,
    NextSamplingDate DATE,
    RecordStatus TEXT
);

INSERT INTO FacilityWaterQualityLog VALUES (1, '2024-01-10', 'WestWing', 'Municipal', 7.2, 150.0, 0.3, 5.0, 10.0, 0.2, 22.5, 'Pass', 'TechA', 'Approved', 'Within limits', '2024-01-10', '2024-01-10', 'LAB001', 1, '', '2024-04-10', 'Active');
INSERT INTO FacilityWaterQualityLog VALUES (2, '2024-02-12', 'EastWing', 'Well', 6.8, 200.0, 0.5, 12.0, 15.0, 0.3, 21.0, 'Fail', 'TechB', 'Pending', 'Lead above threshold', '2024-02-12', '2024-02-13', 'LAB002', 0, 'Retest', '2024-05-12', 'Active');
INSERT INTO FacilityWaterQualityLog VALUES (3, '2024-03-15', 'NorthWing', 'Municipal', 7.0, 140.0, 0.2, 3.0, 8.0, 0.1, 23.0, 'Pass', 'TechC', 'Approved', 'All good', '2024-03-15', '2024-03-15', 'LAB003', 1, '', '2024-06-15', 'Active');

-- Telemedicine Device Inventory
CREATE TABLE TelemedicineDeviceInventory (
    DeviceID INTEGER PRIMARY KEY,
    DeviceType TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyEndDate DATE,
    AssignedDepartment TEXT,
    CurrentLocation TEXT,
    Status TEXT,
    FirmwareVersion TEXT,
    SoftwareVersion TEXT,
    LastCalibration DATE,
    CalibrationDue DATE,
    BatteryLifeHours REAL,
    ConnectivityType TEXT,
    IPAddress TEXT,
    MACAddress TEXT,
    MobileNumber TEXT,
    AssignedToStaff TEXT,
    MaintenanceSchedule TEXT,
    CreatedOn DATE,
    UpdatedOn DATE,
    Notes TEXT,
    IsActive INTEGER
);

INSERT INTO TelemedicineDeviceInventory VALUES (100, 'Tablet', 'TB-1000', 'SN1000', '2023-06-01', '2025-06-01', 'TeleHealth', 'Room201', 'InUse', 'v1.0', 's1.2', '2024-01-01', '2024-07-01', 8.0, 'WiFi', '192.168.1.10', 'AA:BB:CC:DD:EE:FF', '5551234', 'NurseA', 'Quarterly', '2023-06-01', '2024-01-10', 'No issues', 1);
INSERT INTO TelemedicineDeviceInventory VALUES (101, 'Camera', 'CM-200', 'SN2000', '2022-09-15', '2024-09-15', 'TeleHealth', 'StorageRoom', 'InRepair', 'v2.1', 's2.0', '2023-12-01', '2024-06-01', 0.0, 'Ethernet', '192.168.1.20', '11:22:33:44:55:66', '5555678', 'TechB', 'Annual', '2022-09-15', '2024-01-05', 'Lens cracked', 0);
INSERT INTO TelemedicineDeviceInventory VALUES (102, 'Stethoscope', 'ST-300', 'SN3000', '2024-01-20', '2026-01-20', 'Cardiology', 'Room305', 'InUse', 'v3.0', 's3.1', '2024-01-20', '2024-07-20', 12.0, 'Bluetooth', '192.168.1.30', '77:88:99:AA:BB:CC', '5559012', 'DrLee', 'Biannual', '2024-01-20', '2024-01-20', 'New device', 1);

-- Pharmacy Formulary
CREATE TABLE PharmacyFormulary (
    FormularyID INTEGER PRIMARY KEY,
    DrugName TEXT,
    GenericName TEXT,
    Strength TEXT,
    DosageForm TEXT,
    Route TEXT,
    TherapeuticClass TEXT,
    Manufacturer TEXT,
    FDAApprovalDate DATE,
    MaxDailyDose TEXT,
    RestrictedUse INTEGER,
    PriorAuthorizationRequired INTEGER,
    TierLevel INTEGER,
    ReimbursementRate REAL,
    UnitCost REAL,
    InventoryLevel INTEGER,
    SafetyMonitoringRequired INTEGER,
    Note TEXT,
    CreatedOn DATE,
    UpdatedOn DATE,
    EffectiveFrom DATE,
    EffectiveTo DATE,
    IsActive INTEGER
);

INSERT INTO PharmacyFormulary VALUES (1, 'Lipitor', 'Atorvastatin', '10mg', 'Tablet', 'Oral', 'Statin', 'Pfizer', '1996-12-17', '80mg', 0, 0, 1, 0.85, 0.12, 500, 0, '', '2024-01-01', '2024-01-01', '2024-01-01', '2099-12-31', 1);
INSERT INTO PharmacyFormulary VALUES (2, 'Synthroid', 'Levothyroxine', '25mcg', 'Tablet', 'Oral', 'Thyroid Hormone', 'Abbott', '2000-02-01', '200mcg', 0, 0, 1, 0.90, 0.08, 300, 0, '', '2024-01-01', '2024-01-01', '2024-01-01', '2099-12-31', 1);
INSERT INTO PharmacyFormulary VALUES (3, 'Remicade', 'Infliximab', '100mg/4mL', 'Injection', 'IV', 'Biologic', 'Janssen', '1998-08-24', '5mg/kg', 1, 1, 4, 0.30, 5.00, 50, 1, 'Require monitoring', '2024-01-01', '2024-01-01', '2024-01-01', '2099-12-31', 1);

-- Medical Supply Rotation Schedule
CREATE TABLE MedicalSupplyRotation (
    RotationID INTEGER PRIMARY KEY,
    SupplyItemID INTEGER,
    SupplyName TEXT,
    Category TEXT,
    RotationStart DATE,
    RotationEnd DATE,
    QuantityOnHand INTEGER,
    ReorderLevel INTEGER,
    Supplier TEXT,
    LeadTimeDays INTEGER,
    StorageLocation TEXT,
    TemperatureRequirement TEXT,
    ExpirationDate DATE,
    IsCritical INTEGER,
    LastCountDate DATE,
    NextCountDate DATE,
    ResponsibleStaff TEXT,
    Notes TEXT,
    CreatedOn DATE,
    UpdatedOn DATE,
    Status TEXT,
    IsActive INTEGER
);

INSERT INTO MedicalSupplyRotation VALUES (1, 1001, 'Surgical Gloves', 'Consumable', '2024-01-01', '2024-06-30', 2000, 500, 'MedSupCo', 7, 'StoreA', 'RoomTemp', '2025-12-31', 1, '2024-01-10', '2024-02-10', 'NurseA', '', '2024-01-01', '2024-01-10', 'InUse', 1);
INSERT INTO MedicalSupplyRotation VALUES (2, 1002, 'IV Saline 0.9%', 'Fluid', '2024-02-01', '2024-07-31', 1500, 300, 'FluidInc', 5, 'StoreB', 'RoomTemp', '2026-03-15', 1, '2024-02-05', '2024-03-05', 'TechB', '', '2024-02-01', '2024-02-05', 'InUse', 1);
INSERT INTO MedicalSupplyRotation VALUES (3, 1003, 'N95 Masks', 'Protective', '2024-03-01', '2024-08-31', 800, 200, 'ProtectCo', 3, 'StoreC', 'RoomTemp', '2025-01-01', 1, '2024-03-02', '2024-04-02', 'NurseC', '', '2024-03-01', '2024-03-02', 'InUse', 1);

-- Community Health Partner
CREATE TABLE CommunityHealthPartner (
    PartnerID INTEGER PRIMARY KEY,
    OrganizationName TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Address TEXT,
    City TEXT,
    State TEXT,
    ZipCode TEXT,
    PartnershipStart DATE,
    PartnershipEnd DATE,
    FocusArea TEXT,
    ServicesProvided TEXT,
    FundingLevel REAL,
    ContractNumber TEXT,
    Status TEXT,
    ReportingFrequency TEXT,
    LastReportDate DATE,
    NextReportDue DATE,
    PrimaryProgram TEXT,
    Notes TEXT,
    CreatedOn DATE,
    UpdatedOn DATE,
    IsActive INTEGER
);

INSERT INTO CommunityHealthPartner VALUES (1, 'HealthyFutureOrg', 'Alice Smith', '5551111', 'alice@hfo.org', '123 Wellness St', 'MetroCity', 'NY', '10001', '2023-01-01', '2025-12-31', 'ChronicDisease', 'Screenings', 50000.00, 'CN001', 'Active', 'Quarterly', '2024-01-15', '2024-04-15', 'DiabetesProgram', '', '2023-01-01', '2024-01-01', 1);
INSERT INTO CommunityHealthPartner VALUES (2, 'YouthWellness', 'Bob Jones', '5552222', 'bob@yw.org', '456 Youth Ave', 'LakeTown', 'CA', '90002', '2022-06-15', '2024-06-14', 'MentalHealth', 'Counseling', 30000.00, 'CN002', 'Active', 'BiAnnual', '2023-12-01', '2024-06-01', 'TeenSupport', '', '2022-06-15', '2023-12-01', 1);
INSERT INTO CommunityHealthPartner VALUES (3, 'SeniorCareNet', 'Carol Lee', '5553333', 'carol@scn.org', '789 Senior Rd', 'Oldtown', 'TX', '75001', '2021-03-01', '2026-02-28', 'Geriatrics', 'HomeVisits', 40000.00, 'CN003', 'Active', 'Annual', '2023-11-20', '2024-11-20', 'FallPrevention', '', '2021-03-01', '2023-11-20', 1);

-- Facility Airflow Analysis
CREATE TABLE FacilityAirflowAnalysis (
    AnalysisID INTEGER PRIMARY KEY,
    ZoneID TEXT,
    ZoneName TEXT,
    MeasurementDate DATE,
    AirChangeRate REAL,
    AirVelocity REAL,
    PressureDifferential REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    ParticleCount INTEGER,
    CO2ppm REAL,
    VOCppm REAL,
    FilterStatus TEXT,
    MaintenanceRequired INTEGER,
    Technician TEXT,
    Comments TEXT,
    CreatedOn DATE,
    UpdatedOn DATE,
    NextInspectionDate DATE,
    Status TEXT,
    IsCompliant INTEGER,
    ReportLink TEXT,
    Notes TEXT
);

INSERT INTO FacilityAirflowAnalysis VALUES (1, 'Z01', 'OperatingRoom', '2024-01-05', 20.5, 0.35, 0.02, 22.0, 45.0, 150, 600.0, 5.0, 'Good', 0, 'TechA', 'All parameters normal', '2024-01-05', '2024-01-06', '2024-07-05', 'Completed', 1, 'link1', '');
INSERT INTO FacilityAirflowAnalysis VALUES (2, 'Z02', 'ICU', '2024-02-10', 18.0, 0.30, 0.05, 21.5, 50.0, 200, 800.0, 6.5, 'Fair', 1, 'TechB', 'Filter nearing replacement', '2024-02-10', '2024-02-11', '2024-08-10', 'Pending', 0, 'link2', '');
INSERT INTO FacilityAirflowAnalysis VALUES (3, 'Z03', 'Lobby', '2024-03-15', 12.0, 0.20, 0.01, 23.0, 40.0, 120, 400.0, 3.2, 'Good', 0, 'TechC', 'Ventilation adequate', '2024-03-15', '2024-03-16', '2024-09-15', 'Completed', 1, 'link3', '');

-- Research Biobank Sample
CREATE TABLE ResearchBiobankSample (
    SampleID INTEGER PRIMARY KEY,
    BiobankID TEXT,
    SampleType TEXT,
    CollectionDate DATE,
    DonorID INTEGER,
    Volume_ml REAL,
    StorageTemperatureC REAL,
    StorageLocation TEXT,
    ConsentGiven INTEGER,
    ProcessingMethod TEXT,
    QCStatus TEXT,
    DNA_Concentration_ng_per_ul REAL,
    RNA_Integrity_Number REAL,
    Protein_Concentration_mg_per_ml REAL,
    FreezeThawCycles INTEGER,
    InstitutionalApproval TEXT,
    ProjectCode TEXT,
    CreatedOn DATE,
    UpdatedOn DATE,
    Notes TEXT,
    IsAvailable INTEGER,
    ExpirationDate DATE,
    CurrentOwner TEXT
);

INSERT INTO ResearchBiobankSample VALUES (1, 'BB001', 'Blood', '2024-01-12', 101, 5.0, -80.0, 'FreezerA1', 1, 'Centrifuge', 'Passed', 50.0, 8.5, 1.2, 1, 'IRB2023', 'PRJ001', '2024-01-12', '2024-01-12', '', 1, '2029-12-31', 'LabA');
INSERT INTO ResearchBiobankSample VALUES (2, 'BB002', 'Tissue', '2024-02-20', 102, 2.5, -80.0, 'FreezerB3', 1, 'SnapFreeze', 'Passed', 30.0, 9.0, 0.8, 0, 'IRB2023', 'PRJ002', '2024-02-20', '2024-02-20', '', 1, '2029-12-31', 'LabB');
INSERT INTO ResearchBiobankSample VALUES (3, 'BB003', 'Saliva', '2024-03-05', 103, 1.0, -20.0, 'FreezerC2', 0, 'RoomTemp', 'Pending', 20.0, 7.0, 0.5, 2, 'IRB2023', 'PRJ003', '2024-03-05', '2024-03-05', '', 0, '2026-12-31', 'LabC');

-- Health Insurance Claim Log
CREATE TABLE HealthInsuranceClaimLog (
    ClaimID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    ClaimDate DATE,
    PayerName TEXT,
    PolicyNumber TEXT,
    ClaimAmount REAL,
    ApprovedAmount REAL,
    ClaimStatus TEXT,
    ServiceDate DATE,
    ServiceCode TEXT,
    DiagnosisCode TEXT,
    ProviderID INTEGER,
    BillingCode TEXT,
    CopayAmount REAL,
    DeductibleApplied REAL,
    PriorAuthorization INTEGER,
    AppealStatus TEXT,
    ResubmitFlag INTEGER,
    Notes TEXT,
    CreatedOn DATE,
    UpdatedOn DATE,
    ProcessingTimeDays INTEGER,
    IsFinalized INTEGER,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO HealthInsuranceClaimLog VALUES (9001, 1, '2024-01-20', 'HealthPlus', 'HP123456', 1200.00, 950.00, 'Approved', '2024-01-18', 'PROC01', 'D001', 501, 'BILL01', 20.00, 230.00, 1, 'None', 0, '', '2024-01-21', '2024-01-22', 2, 1);
INSERT INTO HealthInsuranceClaimLog VALUES (9002, 2, '2024-02-15', 'MediCare', 'MC654321', 800.00, 0.00, 'Denied', '2024-02-13', 'PROC02', 'D002', 502, 'BILL02', 15.00, 200.00, 0, 'Pending', 1, '', '2024-02-16', '2024-02-18', 2, 0);
INSERT INTO HealthInsuranceClaimLog VALUES (9003, 3, '2024-03-10', 'SecureHealth', 'SH987654', 1500.00, 1300.00, 'Approved', '2024-03-08', 'PROC03', 'D003', 503, 'BILL03', 25.00, 200.00, 1, 'None', 0, '', '2024-03-11', '2024-03-12', 1, 1);