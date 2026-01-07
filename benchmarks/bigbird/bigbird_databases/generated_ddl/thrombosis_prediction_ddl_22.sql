-- Operating Room Schedule
CREATE TABLE OperatingRoomSchedule (
    ScheduleID INTEGER PRIMARY KEY,
    OR_Room TEXT,
    SurgeryDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    SurgeonID INTEGER,
    AnesthesiologistID INTEGER,
    ProcedureCode TEXT,
    Specialty TEXT,
    EquipmentNeeded TEXT,
    PrepStatus TEXT,
    CleanStatus TEXT,
    EstimatedDuration INTEGER,
    PriorityLevel TEXT,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    ConfirmationNumber TEXT,
    InsuranceApprovalFlag INTEGER,
    TransferRequired INTEGER,
    PostOpBed TEXT,
    SurgeonsAssistantID INTEGER,
    NursingTeam TEXT,
    CancellationReason TEXT,
    RescheduleFlag INTEGER
);

INSERT INTO OperatingRoomSchedule VALUES (1, 'OR1', '2024-03-15', '08:00', '10:30', 101, 201, 'PROC001', 'Cardiology', 'ECG,Defibrillator', 'Completed', 'Clean', 150, 'High', 'N/A', 'admin', '2024-02-28', 'admin', '2024-02-28', 'CONF123', 1, 0, 'Bed12', 102, 'TeamA', 'N/A', 0);
INSERT INTO OperatingRoomSchedule VALUES (2, 'OR2', '2024-03-16', '11:00', '13:00', 102, 202, 'PROC002', 'Orthopedics', 'C-Arm', 'Pending', 'Dirty', 120, 'Medium', 'Prep needed', 'scheduler', '2024-03-01', 'scheduler', '2024-03-01', 'CONF124', 0, 1, 'Bed5', 103, 'TeamB', 'Patient request', 1);
INSERT INTO OperatingRoomSchedule VALUES (3, 'OR3', '2024-03-17', '14:30', '16:00', 103, 203, 'PROC003', 'Neurology', 'Microscope', 'Completed', 'Clean', 90, 'Low', 'N/A', 'admin', '2024-03-05', 'admin', '2024-03-05', 'CONF125', 1, 0, 'Bed8', 104, 'TeamC', 'N/A', 0);

-- Biomedical Waste Log
CREATE TABLE BiomedicalWasteLog (
    LogID INTEGER PRIMARY KEY,
    WasteType TEXT,
    CollectionDate DATE,
    ContainerID TEXT,
    VolumeML INTEGER,
    HazardLevel INTEGER,
    DisposedBy TEXT,
    DisposalMethod TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    Remarks TEXT,
    TemperatureC REAL,
    WeightKG REAL,
    TransportCompany TEXT,
    TrackingNumber TEXT,
    ComplianceFlag INTEGER,
    IncidentReport TEXT,
    StorageLocation TEXT,
    NotificationSent INTEGER,
    FollowUpDate DATE,
    ExternalAuditFlag INTEGER,
    AuditComments TEXT
);

INSERT INTO BiomedicalWasteLog VALUES (1, 'Sharps', '2024-02-20', 'CONT001', 500, 3, 'tech1', 'Incineration', 'supervisor1', '2024-02-21', 'Handled safely', 25.0, 0.45, 'CleanTrans', 'TRK001', 1, 'None', 'Room12', 1, '2024-03-01', 0, 'N/A');
INSERT INTO BiomedicalWasteLog VALUES (2, 'Biohazard', '2024-02-22', 'CONT002', 1200, 4, 'tech2', 'Autoclave', 'supervisor2', '2024-02-23', 'No issues', 22.5, 1.10, 'SafeMove', 'TRK002', 1, 'Leak detected', 'Room8', 1, '2024-03-05', 1, 'Follow up required');
INSERT INTO BiomedicalWasteLog VALUES (3, 'Pharmaceutical', '2024-02-25', 'CONT003', 300, 2, 'tech3', 'Landfill', 'supervisor3', '2024-02-26', 'Verified', 20.0, 0.30, 'MediTrans', 'TRK003', 1, 'None', 'Room5', 0, NULL, 0, 'N/A');

-- Hospital Parking Permit
CREATE TABLE HospitalParkingPermit (
    PermitID INTEGER PRIMARY KEY,
    PermitNumber TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    VehicleMake TEXT,
    VehicleModel TEXT,
    LicensePlate TEXT,
    PermitHolderName TEXT,
    PermitHolderDept TEXT,
    PermitType TEXT,
    AccessLevel TEXT,
    ParkingZone TEXT,
    PermitStatus TEXT,
    IssuedBy TEXT,
    IssuedByDept TEXT,
    CostReal REAL,
    PaymentStatus TEXT,
    RenewalFlag INTEGER,
    SuspensionReason TEXT,
    LastRenewalDate DATE,
    Notes TEXT,
    Barcode TEXT
);

INSERT INTO HospitalParkingPermit VALUES (1, 'PK001', '2023-01-15', '2024-01-14', 'Toyota', 'Camry', 'ABC1234', 'JohnDoe', 'Cardiology', 'Staff', 'Level1', 'ZoneA', 'Active', 'admin', 'Facilities', 150.00, 'Paid', 1, NULL, '2023-12-30', 'N/A', 'BAR001');
INSERT INTO HospitalParkingPermit VALUES (2, 'PK002', '2023-06-01', '2024-05-31', 'Honda', 'Civic', 'XYZ5678', 'JaneSmith', 'Radiology', 'Visitor', 'Level2', 'ZoneB', 'Active', 'admin', 'Facilities', 75.00, 'Paid', 0, NULL, NULL, 'Temporary permit', 'BAR002');
INSERT INTO HospitalParkingPermit VALUES (3, 'PK003', '2022-09-20', '2023-09-19', 'Ford', 'Focus', 'LMN3456', 'BobBrown', 'Administration', 'Staff', 'Level1', 'ZoneC', 'Suspended', 'admin', 'Facilities', 150.00, 'Unpaid', 0, 'Violation', '2022-09-20', 'Revoked for non-payment', 'BAR003');

-- Staff License Management
CREATE TABLE StaffLicenseManagement (
    RecordID INTEGER PRIMARY KEY,
    StaffID INTEGER,
    LicenseNumber TEXT,
    LicenseType TEXT,
    IssuingAuthority TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    State TEXT,
    LicenseStatus TEXT,
    VerifiedBy TEXT,
    VerificationDate DATE,
    RenewalReminderSent INTEGER,
    RenewalMethod TEXT,
    ContinuingEducationHours INTEGER,
    CEProvider TEXT,
    CECompletionDate DATE,
    LicenseCategory TEXT,
    LicenseSpecialty TEXT,
    Notes TEXT,
    AuditTrail TEXT,
    LastUpdatedBy TEXT,
    LastUpdatedDate DATE
);

INSERT INTO StaffLicenseManagement VALUES (1, 1001, 'LIC1001', 'Medical', 'StateBoard', '2018-05-10', '2025-05-09', 'CA', 'Active', 'admin', '2024-01-15', 1, 'Online', 30, 'MedEdu', '2023-12-01', 'Physician', 'General', 'All good', 'Created', 'admin', '2024-01-15');
INSERT INTO StaffLicenseManagement VALUES (2, 1002, 'LIC1002', 'Nursing', 'StateBoard', '2019-07-22', '2024-07-21', 'NY', 'ExpiringSoon', 'admin', '2024-02-01', 1, 'Mail', 20, 'NurseLearn', '2023-11-20', 'RN', 'Pediatrics', 'Renewal pending', 'Updated', 'admin', '2024-02-01');
INSERT INTO StaffLicenseManagement VALUES (3, 1003, 'LIC1003', 'Pharmacy', 'StateBoard', '2015-03-15', '2022-03-14', 'TX', 'Expired', 'admin', '2022-04-01', 0, 'InPerson', 40, 'PharmAcad', '2021-12-10', 'Pharmacist', 'Oncology', 'Expired license', 'Archived', 'admin', '2022-04-01');

-- Hospital Energy Audit
CREATE TABLE HospitalEnergyAudit (
    AuditID INTEGER PRIMARY KEY,
    AuditDate DATE,
    AuditorName TEXT,
    FacilityArea TEXT,
    EnergySource TEXT,
    ConsumptionKWh REAL,
    CostUSD REAL,
    CO2EmissionsKg REAL,
    Findings TEXT,
    Recommendations TEXT,
    FollowUpDate DATE,
    Status TEXT,
    DocumentReference TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    PriorityLevel TEXT,
    RiskScore INTEGER,
    ActionOwner TEXT,
    CompletionDate DATE,
    Notes TEXT
);

INSERT INTO HospitalEnergyAudit VALUES (1, '2024-01-10', 'AliceGreen', 'EastWing', 'Electric', 25000.5, 3500.75, 18000.0, 'High usage in HVAC', 'Upgrade filters', '2024-04-01', 'Open', 'DOC001', 'admin', '2024-01-11', 'admin', '2024-01-11', 'High', 8, 'FacilitiesMgr', NULL, 'First audit of year');
INSERT INTO HospitalEnergyAudit VALUES (2, '2023-11-05', 'BobWhite', 'WestWing', 'NaturalGas', 18000.0, 2100.0, 13000.0, 'Leak detected', 'Repair pipe', '2024-02-15', 'Closed', 'DOC002', 'admin', '2023-11-06', 'admin', '2023-11-06', 'Medium', 5, 'EngineeringLead', '2024-02-10', 'Leak fixed');
INSERT INTO HospitalEnergyAudit VALUES (3, '2024-02-20', 'ClaraBlue', 'NorthWing', 'Solar', 5000.0, 600.0, 3000.0, 'Excellent solar output', 'Maintain panels', '2024-05-01', 'Open', 'DOC003', 'admin', '2024-02-21', 'admin', '2024-02-21', 'Low', 2, 'SustainabilityOfficer', NULL, 'Monitoring continues');

-- Medical Supply Recall
CREATE TABLE MedicalSupplyRecall (
    RecallID INTEGER PRIMARY KEY,
    ProductName TEXT,
    Manufacturer TEXT,
    BatchNumber TEXT,
    RecallDate DATE,
    Reason TEXT,
    DistributionChannel TEXT,
    QuantityRecalled INTEGER,
    HazardLevel INTEGER,
    ContactInfo TEXT,
    Status TEXT,
    InitiatedBy TEXT,
    VerifiedBy TEXT,
    ResolutionDate DATE,
    AdditionalInfo TEXT,
    NotificationMethod TEXT,
    AffectedLocations TEXT,
    ReturnInstructions TEXT,
    DisposalMethod TEXT,
    FinancialImpactUSD REAL,
    FollowUpAction TEXT,
    Remarks TEXT
);

INSERT INTO MedicalSupplyRecall VALUES (1, 'Syringe12', 'MediCorp', 'BATCH001', '2024-02-15', 'Defect', 'Wholesale', 2000, 2, '5551234', 'Open', 'QualityDept', 'RegAgency', NULL, 'N/A', 'Email', 'AllHospitals', 'Return to vendor', 'Incineration', 50000.0, 'Monitor', 'Awaiting replacement');
INSERT INTO MedicalSupplyRecall VALUES (2, 'IVSetPro', 'HealthTech', 'BATCH045', '2024-01-30', 'Contamination', 'Direct', 1500, 3, '5555678', 'Closed', 'SafetyTeam', 'RegAgency', '2024-02-10', 'Batch infected', 'Postal', 'RegionA', 'Dispose per protocol', 'Landfill', 75000.0, 'Completed', 'No further issues');
INSERT INTO MedicalSupplyRecall VALUES (3, 'GloveX', 'SafeHands', 'BATCH099', '2024-03-01', 'Tear', 'Retail', 5000, 1, '5559012', 'Open', 'QCDept', 'RegAgency', NULL, 'Check integrity', 'Phone', 'AllClinics', 'Return unopened packs', 'Recycle', 25000.0, 'Investigation', 'Pending supplier response');

-- Clinical Decision Support Alert
CREATE TABLE ClinicalDecisionSupportAlert (
    AlertID INTEGER PRIMARY KEY,
    AlertCode TEXT,
    AlertDescription TEXT,
    TriggerEvent TEXT,
    SeverityLevel TEXT,
    ClinicalDomain TEXT,
    RecommendedAction TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    ActiveFlag INTEGER,
    ExpirationDate DATE,
    Version INTEGER,
    EvidenceReference TEXT,
    AlertCategory TEXT,
    PatientPopulation TEXT,
    Frequency INTEGER,
    LastFiredDate DATE,
    DocumentationLink TEXT,
    OverrideAllowed INTEGER,
    OverrideReason TEXT,
    Notes TEXT
);

INSERT INTO ClinicalDecisionSupportAlert VALUES (1, 'ALRT001', 'High potassium', 'LabResult', 'Critical', 'Electrolytes', 'Hold potassium supplements', 'system', '2024-01-01', 'system', '2024-01-01', 1, NULL, 1, 'Guideline123', 'Lab', 'Adults', 5, '2024-02-20', 'http://docs/alert1', 1, NULL, 'Reviewed monthly');
INSERT INTO ClinicalDecisionSupportAlert VALUES (2, 'ALRT002', 'Duplicate imaging order', 'OrderEntry', 'Warning', 'Radiology', 'Cancel duplicate', 'system', '2024-01-05', 'system', '2024-01-05', 1, NULL, 2, 'Policy456', 'Order', 'All', 10, '2024-02-18', 'http://docs/alert2', 0, 'Clinical judgement', 'Escalated to radiology lead');
INSERT INTO ClinicalDecisionSupportAlert VALUES (3, 'ALRT003', 'Potential drug interaction', 'MedicationOrder', 'High', 'Pharmacy', 'Review meds', 'system', '2024-01-10', 'system', '2024-01-10', 1, '2024-12-31', 1, 'DrugGuide789', 'Medication', 'Adults', 8, '2024-02-22', 'http://docs/alert3', 1, NULL, 'Monitoring ongoing');

-- Health Information Exchange Log
CREATE TABLE HealthInformationExchangeLog (
    LogID INTEGER PRIMARY KEY,
    MessageID TEXT,
    SenderSystem TEXT,
    ReceiverSystem TEXT,
    MessageType TEXT,
    MessageDate DATE,
    TransactionID TEXT,
    PatientMatchFlag INTEGER,
    ConsentGiven INTEGER,
    DataElementsCount INTEGER,
    TransferStatus TEXT,
    ErrorCode TEXT,
    RetryCount INTEGER,
    ProcessedBy TEXT,
    ProcessedDate DATE,
    EncryptionType TEXT,
    CompressionUsed INTEGER,
    DurationMs INTEGER,
    FileSizeKB INTEGER,
    AuditTrail TEXT,
    Remarks TEXT,
    ArchiveLocation TEXT
);

INSERT INTO HealthInformationExchangeLog VALUES (1, 'MSG001', 'EHR_A', 'EHR_B', 'ADT', '2024-02-01', 'TX001', 1, 1, 25, 'Success', NULL, 0, 'engineer1', '2024-02-01', 'AES256', 1, 120, 450, 'Init->Sent->Ack', 'N/A', '/archive/2024/02/');
INSERT INTO HealthInformationExchangeLog VALUES (2, 'MSG002', 'LabSystem', 'EHR_A', 'Result', '2024-02-03', 'TX002', 1, 1, 15, 'Failed', 'ERR_TIMEOUT', 2, 'engineer2', '2024-02-03', 'AES256', 0, 3000, 800, 'Init->Retry1->Retry2->Fail', 'Timeout issue', '/archive/2024/02/');
INSERT INTO HealthInformationExchangeLog VALUES (3, 'MSG003', 'EHR_B', 'PublicHealth', 'Report', '2024-02-05', 'TX003', 0, 0, 40, 'Success', NULL, 0, 'engineer3', '2024-02-05', 'RSA', 1, 250, 600, 'Init->Sent->Ack', 'De-identified', '/archive/2024/02/');

-- Hospital Volunteer Training
CREATE TABLE HospitalVolunteerTraining (
    TrainingID INTEGER PRIMARY KEY,
    ProgramName TEXT,
    SessionDate DATE,
    InstructorName TEXT,
    DurationMinutes INTEGER,
    Location TEXT,
    VolunteerGroup TEXT,
    Capacity INTEGER,
    RegisteredCount INTEGER,
    CompletedCount INTEGER,
    CertificationAwarded TEXT,
    FeedbackScore REAL,
    MaterialsProvided TEXT,
    OnlineAccessFlag INTEGER,
    FollowUpSurveySent INTEGER,
    EvaluationNotes TEXT,
    TrainingCostUSD REAL,
    Sponsor TEXT,
    AccreditationBody TEXT,
    Status TEXT,
    CreatedBy TEXT,
    CreatedDate DATE
);

INSERT INTO HospitalVolunteerTraining VALUES (1, 'PatientCompassion', '2024-01-15', 'LauraMiller', 180, 'Room101', 'GroupA', 30, 28, 27, 'CertificateA', 4.5, 'Handouts', 1, 1, 'Positive response', 500.00, 'CommunityOrg', 'HealthAccred', 'Completed', 'admin', '2024-01-01');
INSERT INTO HospitalVolunteerTraining VALUES (2, 'EmergencyPrep', '2024-02-10', 'MarkJohnson', 240, 'Room202', 'GroupB', 25, 22, 20, 'CertificateB', 4.2, 'Slides', 0, 1, 'Needs more drills', 750.00, 'RedCross', 'SafetyAccred', 'Completed', 'admin', '2024-01-20');
INSERT INTO HospitalVolunteerTraining VALUES (3, 'HealthEducation', '2024-03-05', 'SusanLee', 150, 'Room303', 'GroupC', 20, 18, 18, 'CertificateC', 4.8, 'Booklet', 1, 0, 'Excellent engagement', 300.00, 'LocalClinic', 'EduAccred', 'Scheduled', 'admin', '2024-02-15');

-- Hospital Construction Project Phase
CREATE TABLE HospitalConstructionProjectPhase (
    PhaseID INTEGER PRIMARY KEY,
    ProjectName TEXT,
    PhaseName TEXT,
    StartDate DATE,
    EndDate DATE,
    BudgetUSD REAL,
    ExpenditureUSD REAL,
    ContractorName TEXT,
    SiteLocation TEXT,
    Status TEXT,
    RiskLevel TEXT,
    MilestoneDescription TEXT,
    LeadEngineer TEXT,
    PermitNumber TEXT,
    InspectionDate DATE,
    InspectionResult TEXT,
    ChangeOrderCount INTEGER,
    ChangeOrderAmountUSD REAL,
    EnvironmentalImpact TEXT,
    SafetyIncidents INTEGER,
    Notes TEXT,
    UpdatedBy TEXT,
    UpdatedDate DATE
);

INSERT INTO HospitalConstructionProjectPhase VALUES (1, 'EastWingExpansion', 'Design', '2023-01-01', '2023-06-30', 2000000.00, 1500000.00, 'BuildCo', 'East Campus', 'Completed', 'Medium', 'Finalize blueprints', 'EngJohn', 'PERM001', '2023-05-15', 'Pass', 2, 50000.00, 'Low', 0, 'Design approved', 'admin', '2023-06-30');
INSERT INTO HospitalConstructionProjectPhase VALUES (2, 'EastWingExpansion', 'Construction', '2023-07-01', '2024-12-31', 8000000.00, 3000000.00, 'BuildCo', 'East Campus', 'InProgress', 'High', 'Foundation work', 'EngEmily', 'PERM002', '2023-09-10', 'Pass', 5, 200000.00, 'Moderate', 1, 'Delay due to weather', 'admin', '2024-02-01');
INSERT INTO HospitalConstructionProjectPhase VALUES (3, 'EastWingExpansion', 'Commissioning', '2025-01-01', '2025-06-30', 500000.00, 0.00, 'BuildCo', 'East Campus', 'Planned', 'Low', 'System testing', 'EngMike', 'PERM003', NULL, NULL, 0, 0.00, 'Low', 0, 'Scheduled after construction', 'admin', '2024-02-01');