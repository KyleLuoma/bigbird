-- RadiologyLog: records of radiology studies
CREATE TABLE RadiologyLog (
    LogID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    StudyDate DATE,
    Modality TEXT,
    BodyPart TEXT,
    ContrastUsed TEXT,
    RadiationDose REAL,
    Technician TEXT,
    Radiologist TEXT,
    Findings TEXT,
    Impression TEXT,
    ReportFilePath TEXT,
    BillingCode TEXT,
    ProcedureDuration INTEGER,
    ImageQualityScore INTEGER,
    ImageCount INTEGER,
    ArchiveLocation TEXT,
    FollowUpRecommended INTEGER,
    FollowUpDate DATE,
    Notes TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO RadiologyLog VALUES (1, 101, '2023-01-15', 'CT', 'Head', 'Yes', 5.2, 'Alice', 'DrSmith', 'No acute bleed', 'Normal', '/reports/rl1.pdf', 'C001', 30, 8, 150, 'ArchiveA', 0, NULL, 'First scan');
INSERT INTO RadiologyLog VALUES (2, 102, '2023-02-20', 'MRI', 'Knee', 'No', 0.0, 'Bob', 'DrLee', 'Meniscus tear', 'Tear detected', '/reports/rl2.pdf', 'M045', 45, 9, 120, 'ArchiveB', 1, '2023-03-01', 'Follow up needed');
INSERT INTO RadiologyLog VALUES (3, 103, '2023-03-05', 'XRay', 'Chest', 'No', 0.1, 'Carol', 'DrPatel', 'Mild infiltrate', 'Possible infection', '/reports/rl3.pdf', 'X123', 15, 7, 3, 'ArchiveC', 1, '2023-03-20', 'Prescribed antibiotics');

-- PharmacyDelivery: deliveries from suppliers to pharmacy
CREATE TABLE PharmacyDelivery (
    DeliveryID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    DeliveryDate DATE,
    ReceivedBy TEXT,
    BatchNumber TEXT,
    ExpirationDate DATE,
    StorageTemp REAL,
    Refrigerated INTEGER,
    QuantityDelivered INTEGER,
    ItemSKU TEXT,
    ItemDescription TEXT,
    UnitCost REAL,
    TotalCost REAL,
    DeliveryStatus TEXT,
    InvoiceNumber TEXT,
    PaymentStatus TEXT,
    WarehouseLocation TEXT,
    ReceivedTime TEXT,
    DamagedUnits INTEGER,
    Comments TEXT
);

INSERT INTO PharmacyDelivery VALUES (1, 201, '2023-01-10', 'Mike', 'BATCH001', '2024-01-01', 4.0, 1, 500, 'SKU123', 'PainKiller', 0.5, 250.0, 'Received', 'INV1001', 'Paid', 'WH1', '08:30', 0, 'All good');
INSERT INTO PharmacyDelivery VALUES (2, 202, '2023-02-12', 'Sara', 'BATCH002', '2025-06-15', 22.0, 0, 300, 'SKU456', 'Antibiotic', 1.2, 360.0, 'Received', 'INV1002', 'Pending', 'WH2', '09:15', 2, '2 units damaged');
INSERT INTO PharmacyDelivery VALUES (3, 203, '2023-03-18', 'Tom', 'BATCH003', '2023-12-31', 5.0, 1, 200, 'SKU789', 'Vaccine', 15.0, 3000.0, 'Received', 'INV1003', 'Paid', 'WH3', '10:00', 0, 'Cold chain maintained');

-- MedicalStaffTraining: training records for staff
CREATE TABLE MedicalStaffTraining (
    TrainingID INTEGER PRIMARY KEY,
    StaffID INTEGER,
    TrainingDate DATE,
    TrainingType TEXT,
    TrainerName TEXT,
    DurationMinutes INTEGER,
    CertificationEarned TEXT,
    Credits INTEGER,
    AssessmentScore INTEGER,
    TrainingLocation TEXT,
    MaterialVersion TEXT,
    FeedbackScore INTEGER,
    ApprovedBy TEXT,
    TrainingStatus TEXT,
    ReTrainingDue DATE,
    OnlineAccess INTEGER,
    AttendanceMarked INTEGER,
    Notes TEXT,
    Department TEXT,
    TrainingMode TEXT
);

INSERT INTO MedicalStaffTraining VALUES (1, 301, '2023-01-05', 'CPR', 'JohnDoe', 120, 'CPR-Cert', 2, 95, 'Room101', 'v1', 4, 'JaneSmith', 'Completed', '2025-01-05', 1, 1, 'Excellent', 'Emergency', 'InPerson');
INSERT INTO MedicalStaffTraining VALUES (2, 302, '2023-02-10', 'InfectionControl', 'EmilyClark', 90, 'IC-Cert', 1, 88, 'Room202', 'v2', 3, 'MikeBrown', 'Completed', '2024-02-10', 0, 1, 'Good', 'Nursing', 'Hybrid');
INSERT INTO MedicalStaffTraining VALUES (3, 303, '2023-03-15', 'DataPrivacy', 'SarahLee', 60, 'DP-Cert', 1, 92, 'Online', 'v3', 5, 'AlanGreen', 'Completed', '2026-03-15', 1, 1, 'Very good', 'Administration', 'Online');

-- ExternalLaboratoryPartner: external labs collaborating with hospital
CREATE TABLE ExternalLaboratoryPartner (
    PartnerID INTEGER PRIMARY KEY,
    LabName TEXT,
    ContactPerson TEXT,
    Phone TEXT,
    Email TEXT,
    Accreditation TEXT,
    Address TEXT,
    City TEXT,
    State TEXT,
    ZipCode TEXT,
    ServiceType TEXT,
    TurnaroundTimeDays INTEGER,
    CostPerTest REAL,
    DiscountRate REAL,
    ContractStartDate DATE,
    ContractEndDate DATE,
    PrimaryContact TEXT,
    SLACompliance INTEGER,
    DataFormat TEXT,
    Notes TEXT,
    ActiveFlag INTEGER
);

INSERT INTO ExternalLaboratoryPartner VALUES (1, 'LabOne', 'Laura', '5551234', 'labone@example.com', 'CLIA', '123 Lab St', 'MetroCity', 'CA', '90001', 'Blood', 2, 25.0, 0.05, '2022-01-01', '2024-12-31', 'Laura', 95, 'CSV', 'Preferred partner', 1);
INSERT INTO ExternalLaboratoryPartner VALUES (2, 'GenomicsPlus', 'Mark', '5555678', 'genomics@example.com', 'CAP', '456 Gene Rd', 'BioTown', 'TX', '73301', 'Genetic', 7, 150.0, 0.10, '2021-06-15', '2025-06-14', 'Mark', 90, 'JSON', 'Fast turnaround', 1);
INSERT INTO ExternalLaboratoryPartner VALUES (3, 'PathologyHub', 'Nina', '5559012', 'pathhub@example.com', 'CLIA', '789 Path Ave', 'HealthVille', 'NY', '10001', 'Pathology', 3, 40.0, 0.07, '2023-03-01', '2026-02-28', 'Nina', 92, 'XML', 'Handles high volume', 1);

-- EvidenceBasedProtocol: versions of clinical protocols
CREATE TABLE EvidenceBasedProtocol (
    ProtocolID INTEGER PRIMARY KEY,
    Title TEXT,
    VersionNumber TEXT,
    EffectiveDate DATE,
    ReviewDate DATE,
    Specialty TEXT,
    Author TEXT,
    Summary TEXT,
    ClinicalArea TEXT,
    TargetPopulation TEXT,
    RecommendationLevel TEXT,
    EvidenceGrade TEXT,
    RelatedGuidelineID INTEGER,
    Status TEXT,
    LastUpdatedBy TEXT,
    ChangeLog TEXT,
    URL TEXT,
    DocumentPath TEXT,
    ApprovalCommittee TEXT,
    ActiveFlag INTEGER
);

INSERT INTO EvidenceBasedProtocol VALUES (1, 'Antibiotic Stewardship', 'v1.0', '2023-01-01', '2024-01-01', 'InfectiousDisease', 'DrWhite', 'Guidance on antibiotic use', 'Antibiotics', 'Adults', 'Strong', 'A', NULL, 'Active', 'DrGreen', 'Initial release', 'http://example.com/protocol1', '/docs/protocol1.pdf', 'CommitteeA', 1);
INSERT INTO EvidenceBasedProtocol VALUES (2, 'Sepsis Management', 'v2.1', '2022-06-15', '2023-06-15', 'CriticalCare', 'DrBlack', 'Updated sepsis bundles', 'Sepsis', 'AllAges', 'Strong', 'B', 1, 'Active', 'DrBlue', 'Added new biomarkers', 'http://example.com/protocol2', '/docs/protocol2.pdf', 'CommitteeB', 1);
INSERT INTO EvidenceBasedProtocol VALUES (3, 'Postoperative Pain Control', 'v1.3', '2021-09-30', '2022-09-30', 'Surgery', 'DrRed', 'Multimodal analgesia', 'Pain', 'SurgicalPatients', 'Conditional', 'C', 2, 'Retired', 'DrYellow', 'Removed opioid guidelines', 'http://example.com/protocol3', '/docs/protocol3.pdf', 'CommitteeC', 0);

-- HospitalEnergyMetric: energy usage metrics per facility
CREATE TABLE HospitalEnergyMetric (
    MetricID INTEGER PRIMARY KEY,
    Date DATE,
    FacilityID INTEGER,
    Electricity_kWh REAL,
    Gas_MCF REAL,
    Water_m3 REAL,
    Steam_kg REAL,
    CO2_kg REAL,
    PeakDemand_kW REAL,
    AvgTemp_C REAL,
    CoolingLoad_Tons REAL,
    HeatingLoad_Tons REAL,
    RenewablePct REAL,
    EnergyCost_USD REAL,
    MeterReadingStart REAL,
    MeterReadingEnd REAL,
    MaintenanceFlag INTEGER,
    AnomalyFlag INTEGER,
    Notes TEXT,
    DataSource TEXT,
    Shift TEXT
);

INSERT INTO HospitalEnergyMetric VALUES (1, '2023-01-31', 1, 12000.5, 500.2, 3000.0, 1500.0, 8000.0, 350.0, 22.5, 500.0, 450.0, 15.0, 25000.0, 10000.0, 15000.0, 0, 0, 'Normal month', 'Meter', 'Day');
INSERT INTO HospitalEnergyMetric VALUES (2, '2023-02-28', 1, 11000.0, 480.0, 2900.0, 1400.0, 7500.0, 340.0, 21.0, 480.0, 430.0, 18.0, 23000.0, 9500.0, 14500.0, 0, 1, 'Spike in CO2', 'Meter', 'Night');
INSERT INTO HospitalEnergyMetric VALUES (3, '2023-03-31', 2, 13000.8, 520.5, 3100.0, 1600.0, 8200.0, 360.0, 23.0, 520.0, 470.0, 12.0, 27000.0, 10500.0, 15500.0, 1, 0, 'Maintenance performed', 'SCADA', 'Day');

-- PatientSocialDeterminant: social factors affecting health
CREATE TABLE PatientSocialDeterminant (
    RecordID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    AssessmentDate DATE,
    EmploymentStatus TEXT,
    IncomeBracket TEXT,
    EducationLevel TEXT,
    HousingStatus TEXT,
    TransportationMode TEXT,
    FoodSecurity TEXT,
    SocialSupportScore INTEGER,
    LanguagePrimary TEXT,
    HealthLiteracyScore INTEGER,
    SubstanceUse TEXT,
    MentalHealthScreen TEXT,
    CommunityEngagement TEXT,
    InsuranceType TEXT,
    MaritalStatus TEXT,
    NumberOfDependents INTEGER,
    VeteranStatus INTEGER,
    Notes TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO PatientSocialDeterminant VALUES (1, 101, '2023-01-20', 'Employed', '30k-40k', 'College', 'Owned', 'Car', 'Secure', 8, 'English', 7, 'None', 'Negative', 'High', 'Private', 'Married', 2, 0, 'Stable');
INSERT INTO PatientSocialDeterminant VALUES (2, 102, '2023-02-15', 'Unemployed', '<20k', 'HighSchool', 'Rent', 'PublicTransit', 'Insecure', 4, 'Spanish', 5, 'Alcohol', 'Positive', 'Low', 'Medicaid', 'Single', 0, 0, 'Needs assistance');
INSERT INTO PatientSocialDeterminant VALUES (3, 103, '2023-03-10', 'Retired', '40k-50k', 'Graduate', 'Owned', 'Car', 'Secure', 9, 'English', 9, 'None', 'Negative', 'Medium', 'Medicare', 'Widowed', 1, 1, 'Veteran');

-- MedicalDeviceUtilization: usage logs for medical devices
CREATE TABLE MedicalDeviceUtilization (
    UtilizationID INTEGER PRIMARY KEY,
    DeviceID INTEGER,
    PatientID INTEGER,
    StartDate DATE,
    EndDate DATE,
    ProcedureCode TEXT,
    Department TEXT,
    OperatorID INTEGER,
    UtilizationHours REAL,
    CyclesPerformed INTEGER,
    MaintenanceDue INTEGER,
    CalibrationDate DATE,
    FirmwareVersion TEXT,
    Location TEXT,
    UsageNotes TEXT,
    CostPerUse REAL,
    SterilizationMethod TEXT,
    DisposableComponents INTEGER,
    WarrantyEndDate DATE,
    Status TEXT,
    Comments TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO MedicalDeviceUtilization VALUES (1, 501, 101, '2023-01-12', '2023-01-12', 'PROC01', 'Cardiology', 301, 2.5, 0, 0, '2022-12-01', 'v1.2', 'Room12', 'No issues', 150.0, 'Autoclave', 0, '2025-12-01', 'Active', 'Routine use');
INSERT INTO MedicalDeviceUtilization VALUES (2, 502, 102, '2023-02-18', '2023-02-18', 'PROC02', 'Radiology', 302, 1.0, 0, 1, '2023-01-10', 'v2.0', 'Room22', 'Calibration needed soon', 200.0, 'None', 0, '2024-06-30', 'Active', 'Check calibration');
INSERT INTO MedicalDeviceUtilization VALUES (3, 503, 103, '2023-03-05', '2023-03-05', 'PROC03', 'Surgery', 303, 3.0, 1, 0, '2022-11-15', 'v1.5', 'OR5', 'Replaced disposable', 250.0, 'Chemical', 1, '2026-01-15', 'Active', 'Used for laparoscopy');

-- ResearchDataRepository: metadata for research datasets
CREATE TABLE ResearchDataRepository (
    DatasetID INTEGER PRIMARY KEY,
    StudyID INTEGER,
    DataType TEXT,
    CollectionDate DATE,
    FilePath TEXT,
    FileSizeMB REAL,
    Format TEXT,
    ConfidentialityLevel TEXT,
    AccessRights TEXT,
    PrincipalInvestigator TEXT,
    DataCurator TEXT,
    Version TEXT,
    Checksum TEXT,
    UploadedBy TEXT,
    UploadDate DATE,
    ApprovalStatus TEXT,
    DOI TEXT,
    RelatedPublicationID INTEGER,
    License TEXT,
    Notes TEXT,
    RetentionPeriodDays INTEGER
);

INSERT INTO ResearchDataRepository VALUES (1, 1001, 'Genomics', '2023-01-05', '/data/ds1.fasta', 1500.0, 'FASTA', 'High', 'Restricted', 'DrWhite', 'Emily', 'v1', 'abc123', 'Mike', '2023-01-10', 'Approved', '10.1234/ds1', 5001, 'CC0', 'Sequencing data', 3650);
INSERT INTO ResearchDataRepository VALUES (2, 1002, 'Imaging', '2023-02-12', '/data/ds2.dcm', 800.0, 'DICOM', 'Medium', 'Open', 'DrBlack', 'John', 'v2', 'def456', 'Sara', '2023-02-15', 'Pending', '10.1234/ds2', 5002, 'CC-BY', 'MRI scans', 1825);
INSERT INTO ResearchDataRepository VALUES (3, 1003, 'Survey', '2023-03-20', '/data/ds3.csv', 50.0, 'CSV', 'Low', 'Open', 'DrRed', 'Anna', 'v1', 'ghi789', 'Tom', '2023-03-22', 'Approved', '10.1234/ds3', 5003, 'CC-BY-NC', 'Patient questionnaire', 730);

-- VolunteerShiftSchedule: schedule of volunteer shifts
CREATE TABLE VolunteerShiftSchedule (
    ShiftID INTEGER PRIMARY KEY,
    VolunteerID INTEGER,
    ShiftDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    Department TEXT,
    Role TEXT,
    Supervisor TEXT,
    HoursWorked REAL,
    TrainingCompleted INTEGER,
    BackgroundCheckStatus TEXT,
    UniformProvided INTEGER,
    MealProvided INTEGER,
    TransportProvided INTEGER,
    ShiftNotes TEXT,
    FeedbackScore INTEGER,
    CompletedFlag INTEGER,
    ReplacementNeeded INTEGER,
    ContactPhone TEXT,
    EmergencyContact TEXT,
    Remarks TEXT
);

INSERT INTO VolunteerShiftSchedule VALUES (1, 401, '2023-01-08', '08:00', '12:00', 'Reception', 'Greeter', 'Linda', 4.0, 1, 'Clear', 1, 0, 1, 'Friendly', 5, 1, 0, '5551111', '5552222', 'First shift');
INSERT INTO VolunteerShiftSchedule VALUES (2, 402, '2023-01-09', '13:00', '17:00', 'WardA', 'Companion', 'Mark', 4.0, 1, 'Clear', 1, 1, 0, 'Assisted patients', 4, 1, 0, '5553333', '5554444', 'Good feedback');
INSERT INTO VolunteerShiftSchedule VALUES (3, 403, '2023-01-10', '09:00', '13:00', 'Cafeteria', 'Server', 'Nina', 4.0, 0, 'Pending', 0, 1, 1, 'Helped with lunch', 3, 0, 1, '5555555', '5556666', 'Scheduled training');