-- Genomic variant information adjacent to patient laboratory data
CREATE TABLE GenomicVariant
(
    VariantID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    SampleDate DATE,
    Gene TEXT,
    TranscriptID TEXT,
    cDNAChange TEXT,
    ProteinChange TEXT,
    VariantType TEXT,
    Zygosity TEXT,
    AlleleFrequency REAL,
    ClinicalSignificance TEXT,
    ReviewStatus TEXT,
    ClinVarAccession TEXT,
    LabMethod TEXT,
    ReadDepth INTEGER,
    QualityScore REAL,
    ReferenceGenome TEXT,
    Chromosome TEXT,
    Position INTEGER,
    Strand TEXT,
    CreatedAt DATETIME,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO GenomicVariant VALUES (1, 101, '2023-05-12', 'BRCA1', 'NM_007294', 'c.68_69del', 'p.Glu23Valfs', 'Deletion', 'Heterozygous', 0.0045, 'Pathogenic', 'Reviewed', 'RCV000123456', 'NGS', 250, 99.2, 'GRCh38', '17', 43044295, '+', '2023-05-13 08:30:00');
INSERT INTO GenomicVariant VALUES (2, 102, '2023-06-03', 'CFTR', 'NM_000492', 'c.1521_1523del', 'p.Phe508del', 'Deletion', 'Homozygous', 0.021, 'Pathogenic', 'Pending', 'RCV000654321', 'Sanger', 180, 96.5, 'GRCh38', '7', 117199644, '-', '2023-06-04 09:15:00');
INSERT INTO GenomicVariant VALUES (3, 103, '2023-07-20', 'APOE', 'NM_000041', 'c.388T>C', 'p.Cys130Arg', 'SNV', 'Heterozygous', 0.12, 'Risk', 'Reviewed', 'RCV000987654', 'Microarray', 300, 98.0, 'GRCh38', '19', 45411941, '+', '2023-07-21 10:00:00');

-- Radiology findings linked to imaging studies
CREATE TABLE RadiologyFinding
(
    FindingID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    StudyID INTEGER,
    Modality TEXT,
    FindingDate DATE,
    BodyPart TEXT,
    Description TEXT,
    Impression TEXT,
    Radiologist TEXT,
    ConfidenceScore REAL,
    FollowUpRecommended INTEGER,
    FollowUpDays INTEGER,
    ImageSeriesID TEXT,
    ImageInstanceID TEXT,
    Protocol TEXT,
    RadiationDose REAL,
    ContrastUsed TEXT,
    FindingsCode TEXT,
    Annotation TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO RadiologyFinding VALUES (1, 101, 5001, 'CT', '2023-04-15', 'Abdomen', 'Mild hepatic steatosis', 'No acute abnormality', 'DrSmith', 0.95, 0, NULL, 'SER001', 'IMG001', 'AbdomenCT', 7.2, 'Iodine', 'R-001', 'N/A', '2023-04-15 14:20:00', '2023-04-15 14:20:00');
INSERT INTO RadiologyFinding VALUES (2, 102, 5002, 'MRI', '2023-05-10', 'Brain', 'Small hyperintensity in left temporal lobe', 'Likely benign', 'DrJones', 0.88, 1, 30, 'SER002', 'IMG002', 'BrainMRI', 0.0, 'Gadolinium', 'R-002', 'Reviewed by neuroradiology', '2023-05-10 09:45:00', '2023-05-10 09:45:00');
INSERT INTO RadiologyFinding VALUES (3, 103, 5003, 'XRay', '2023-06-22', 'Chest', 'Clear lung fields', 'Normal study', 'DrLee', 0.99, 0, NULL, 'SER003', 'IMG003', 'ChestXRay', 0.1, 'None', 'R-003', 'No annotation', '2023-06-22 11:10:00', '2023-06-22 11:10:00');

-- Detailed pharmacy dispensation records
CREATE TABLE PharmacyDispensationDetail
(
    DispenseID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    PrescriptionID INTEGER,
    MedicationID INTEGER,
    DispenseDate DATE,
    Quantity INTEGER,
    Unit TEXT,
    DosageForm TEXT,
    Route TEXT,
    DaysSupply INTEGER,
    RefillsRemaining INTEGER,
    PrescriberID INTEGER,
    PharmacyID INTEGER,
    BillingCode TEXT,
    Cost REAL,
    InsuranceCovered INTEGER,
    Copay REAL,
    PharmacyLocation TEXT,
    BatchNumber TEXT,
    ExpirationDate DATE,
    Notes TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO PharmacyDispensationDetail VALUES (1, 101, 3001, 4001, '2023-03-01', 30, 'tablet', 'Tablet', 'Oral', 30, 2, 2001, 6001, 'B001', 45.00, 1, 5.00, 'MainPharmacy', 'BN12345', '2025-12-31', 'Take with food');
INSERT INTO PharmacyDispensationDetail VALUES (2, 102, 3002, 4002, '2023-04-15', 90, 'ml', 'Suspension', 'Oral', 30, 1, 2002, 6002, 'B002', 120.00, 0, 0.00, 'EastWingPharmacy', 'BN67890', '2024-06-30', 'Shake well before use');
INSERT INTO PharmacyDispensationDetail VALUES (3, 103, 3003, 4003, '2023-05-20', 10, 'capsule', 'Capsule', 'Oral', 10, 0, 2003, 6003, 'B003', 75.00, 1, 10.00, 'WestWingPharmacy', 'BN54321', '2026-01-15', 'Do not crush');

-- Hospital staff credential tracking
CREATE TABLE HospitalStaffCredential
(
    CredentialID INTEGER PRIMARY KEY,
    StaffID INTEGER,
    CredentialType TEXT,
    CredentialNumber TEXT,
    IssuingAuthority TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    Status TEXT,
    VerificationDate DATE,
    VerifiedBy TEXT,
    Specialty TEXT,
    Level TEXT,
    LicenseCategory TEXT,
    Scope TEXT,
    Country TEXT,
    State TEXT,
    City TEXT,
    PostalCode TEXT,
    ContactPhone TEXT,
    Email TEXT,
    CreatedAt DATETIME,
    FOREIGN KEY (StaffID) REFERENCES Physician(ID)
);

INSERT INTO HospitalStaffCredential VALUES (1, 2001, 'MedicalLicense', 'ML123456', 'StateBoard', '2015-07-01', '2025-06-30', 'Active', '2023-01-10', 'AdminOffice', 'Cardiology', 'Attending', 'MD', 'Full', 'USA', 'CA', 'LosAngeles', '90001', '5551234567', 'doc1@hospital.org', '2023-01-01 08:00:00');
INSERT INTO HospitalStaffCredential VALUES (2, 2002, 'NursingLicense', 'NL654321', 'StateBoard', '2018-03-15', '2028-03-14', 'Active', '2023-02-05', 'HRDept', 'Pediatrics', 'RN', 'RN', 'Full', 'USA', 'NY', 'NewYork', '10001', '5559876543', 'nurse2@hospital.org', '2023-02-01 09:30:00');
INSERT INTO HospitalStaffCredential VALUES (3, 2003, 'RadiologyCertification', 'RC112233', 'AmericanBoard', '2020-11-20', '2030-11-19', 'Pending', NULL, NULL, 'Radiology', 'Fellow', 'CRT', 'Limited', 'USA', 'TX', 'Houston', '77002', '5551122334', 'rad3@hospital.org', '2023-03-01 10:15:00');

-- Environmental sensor readings from facility monitoring
CREATE TABLE EnvironmentalSensorReading
(
    ReadingID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    SensorID INTEGER,
    Timestamp DATETIME,
    SensorType TEXT,
    Value REAL,
    Unit TEXT,
    AlertThreshold REAL,
    IsAlert INTEGER,
    Latitude REAL,
    Longitude REAL,
    Floor INTEGER,
    RoomNumber TEXT,
    CalibrationDate DATE,
    FirmwareVersion TEXT,
    BatteryLevel REAL,
    SignalStrength REAL,
    MaintenanceDueDate DATE,
    Comments TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO EnvironmentalSensorReading VALUES (1, 1, 101, '2023-07-01 08:00:00', 'Temperature', 22.5, 'C', 30.0, 0, 34.0522, -118.2437, 2, '202A', '2023-01-15', 'v1.2.3', 95.0, -70.0, '2023-12-31', 'Normal operation', '2023-07-01 08:00:00', '2023-07-01 08:00:00');
INSERT INTO EnvironmentalSensorReading VALUES (2, 1, 102, '2023-07-01 08:05:00', 'Humidity', 45.0, '%', 70.0, 0, 34.0522, -118.2437, 2, '202A', '2023-01-15', 'v1.2.3', 90.0, -68.0, '2023-12-31', 'Within range', '2023-07-01 08:05:00', '2023-07-01 08:05:00');
INSERT INTO EnvironmentalSensorReading VALUES (3, 2, 201, '2023-07-01 08:10:00', 'CO2', 800.0, 'ppm', 1000.0, 0, 40.7128, -74.0060, 1, '101', '2023-02-20', 'v2.0.1', 85.0, -65.0, '2024-03-15', 'Good air quality', '2023-07-01 08:10:00', '2023-07-01 08:10:00');

-- Patient survey responses for outcome measurement
CREATE TABLE PatientSurveyResponse
(
    ResponseID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    SurveyID INTEGER,
    SurveyDate DATE,
    Question1 INTEGER,
    Question2 INTEGER,
    Question3 INTEGER,
    Question4 INTEGER,
    Question5 INTEGER,
    Question6 INTEGER,
    Question7 INTEGER,
    Question8 INTEGER,
    Question9 INTEGER,
    Question10 INTEGER,
    OverallScore REAL,
    Comments TEXT,
    CompletedBy TEXT,
    Method TEXT,
    DurationMinutes INTEGER,
    FollowUpNeeded INTEGER,
    FollowUpDate DATE,
    CreatedAt DATETIME,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO PatientSurveyResponse VALUES (1, 101, 9001, '2023-06-15', 5,4,3,5,4,5,4,3,5,4, 4.3, 'Improved symptoms', 'NurseA', 'Paper', 15, 0, NULL, '2023-06-15 09:00:00');
INSERT INTO PatientSurveyResponse VALUES (2, 102, 9002, '2023-06-20', 2,3,2,1,2,3,2,1,2,1, 2.0, 'Worsening fatigue', 'NurseB', 'Tablet', 12, 1, '2023-07-05', '2023-06-20 10:15:00');
INSERT INTO PatientSurveyResponse VALUES (3, 103, 9003, '2023-06-25', 4,4,4,4,4,4,4,4,4,4, 4.0, 'Stable condition', 'NurseC', 'Phone', 10, 0, NULL, '2023-06-25 11:30:00');

-- Clinical guideline revisions tracking
CREATE TABLE ClinicalGuidelineRevision
(
    RevisionID INTEGER PRIMARY KEY,
    GuidelineID INTEGER,
    Version TEXT,
    EffectiveDate DATE,
    ReviewDate DATE,
    AuthorID INTEGER,
    ReviewerID INTEGER,
    ChangeSummary TEXT,
    Scope TEXT,
    Specialty TEXT,
    ClinicalArea TEXT,
    ApprovalStatus TEXT,
    ApprovalDate DATE,
    ImplementationStatus TEXT,
    ImplementationDate DATE,
    Comments TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    IsActive INTEGER,
    RevisionNumber INTEGER
);

INSERT INTO ClinicalGuidelineRevision VALUES (1, 1001, '1.0', '2022-01-01', '2021-12-15', 3001, 3002, 'Initial release', 'National', 'Cardiology', 'HeartFailure', 'Approved', '2022-01-10', 'Pending', NULL, 'First version of HF guideline', '2022-01-01 08:00:00', '2022-01-01 08:00:00', 1, 1);
INSERT INTO ClinicalGuidelineRevision VALUES (2, 1001, '1.1', '2023-01-01', '2022-12-20', 3003, 3004, 'Added new medication recommendations', 'National', 'Cardiology', 'HeartFailure', 'Approved', '2023-01-05', 'InProgress', '2023-02-01', 'Updated based on recent trials', '2023-01-01 09:00:00', '2023-01-01 09:00:00', 1, 2);
INSERT INTO ClinicalGuidelineRevision VALUES (3, 1002, '2.0', '2023-06-15', '2023-05-30', 3005, 3006, 'Major restructure for hypertension', 'Regional', 'InternalMedicine', 'Hypertension', 'Pending', NULL, 'Planned', NULL, 'Awaiting committee review', '2023-06-15 10:30:00', '2023-06-15 10:30:00', 0, 1);

-- Maintenance schedule for medical devices
CREATE TABLE MedicalDeviceMaintenanceSchedule
(
    ScheduleID INTEGER PRIMARY KEY,
    DeviceID INTEGER,
    MaintenanceType TEXT,
    FrequencyDays INTEGER,
    LastMaintenanceDate DATE,
    NextDueDate DATE,
    TechnicianID INTEGER,
    ServiceProvider TEXT,
    ContractNumber TEXT,
    Cost REAL,
    DowntimeHours REAL,
    PartsReplaced TEXT,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Status TEXT,
    Priority INTEGER,
    WarrantyExpiration DATE,
    CalibrationRequired INTEGER,
    CalibrationDate DATE
);

INSERT INTO MedicalDeviceMaintenanceSchedule VALUES (1, 50001, 'Preventive', 180, '2023-01-10', '2023-07-09', 4001, 'MedServCo', 'C12345', 1500.00, 4.0, 'Filter,Battery', 'Routine check', '2023-01-10 08:00:00', '2023-01-10 08:00:00', 'Scheduled', 2, '2025-12-31', 1, '2023-01-10');
INSERT INTO MedicalDeviceMaintenanceSchedule VALUES (2, 50002, 'Calibration', 365, '2022-06-15', '2023-06-15', 4002, 'CalibTech', 'C67890', 800.00, 2.5, 'Sensor', 'Annual calibration', '2022-06-15 09:30:00', '2022-06-15 09:30:00', 'Completed', 1, '2024-06-14', 1, '2022-06-15');
INSERT INTO MedicalDeviceMaintenanceSchedule VALUES (3, 50003, 'Repair', 0, '2023-04-20', NULL, 4003, 'RepairInc', 'C54321', 2500.00, 8.0, 'Valve', 'Unexpected failure', '2023-04-20 10:45:00', '2023-04-20 10:45:00', 'InProgress', 3, '2026-04-20', 0, NULL);

-- Insurance claim records linked to patient services
CREATE TABLE InsuranceClaim
(
    ClaimID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    PolicyID INTEGER,
    ClaimDate DATE,
    ServiceDate DATE,
    ProviderID INTEGER,
    ClaimAmount REAL,
    ApprovedAmount REAL,
    ClaimStatus TEXT,
    ReasonCode TEXT,
    DiagnosisCode TEXT,
    ProcedureCode TEXT,
    AdjudicationDate DATE,
    PaidDate DATE,
    CopayAmount REAL,
    DeductibleAmount REAL,
    CoordinationOfBenefits TEXT,
    ClaimNotes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO InsuranceClaim VALUES (1, 101, 7001, '2023-03-05', '2023-02-28', 8001, 1200.00, 950.00, 'Approved', 'RC01', 'I10', '99213', '2023-03-10', '2023-03-15', 150.00, 100.00, 'Primary', 'Routine office visit', '2023-03-05 07:00:00', '2023-03-15 12:00:00');
INSERT INTO InsuranceClaim VALUES (2, 102, 7002, '2023-04-12', '2023-04-01', 8002, 5000.00, 3000.00, 'Partial', 'RC02', 'E11', '99214', '2023-04-18', NULL, 200.00, 500.00, 'Secondary', 'Hospital admission', '2023-04-12 08:30:00', '2023-04-20 09:45:00');
INSERT INTO InsuranceClaim VALUES (3, 103, 7003, '2023-05-20', '2023-05-10', 8003, 250.00, 0.00, 'Denied', 'RC03', 'J45', '95050', '2023-05-25', NULL, 0.00, 0.00, 'Primary', 'Experimental therapy not covered', '2023-05-20 09:15:00', '2023-05-25 11:00:00');

-- Social work referral tracking for patients
CREATE TABLE SocialWorkReferral
(
    ReferralID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    ReferralDate DATE,
    ReferringStaffID INTEGER,
    SocialWorkerID INTEGER,
    ReferralReason TEXT,
    UrgencyLevel INTEGER,
    FollowUpDate DATE,
    Status TEXT,
    AgencyName TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    Address TEXT,
    City TEXT,
    State TEXT,
    ZipCode TEXT,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    IsClosed INTEGER,
    ClosedDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);

INSERT INTO SocialWorkReferral VALUES (1, 101, '2023-02-15', 6001, 9001, 'Housing instability', 2, '2023-03-01', 'Open', 'CityHousing', 'JohnDoe', '5551112222', '123 Main St', 'LosAngeles', 'CA', '90001', 'Patient needs temporary shelter', '2023-02-15 08:45:00', '2023-02-15 08:45:00', 0, NULL);
INSERT INTO SocialWorkReferral VALUES (2, 102, '2023-03-20', 6002, 9002, 'Financial assistance', 3, '2023-04-10', 'Closed', 'CommunityAid', 'JaneSmith', '5553334444', '456 Oak Ave', 'NewYork', 'NY', '10001', 'Assistance provided', '2023-03-20 09:30:00', '2023-04-12 10:00:00', 1, '2023-04-12');
INSERT INTO SocialWorkReferral VALUES (3, 103, '2023-04-05', 6003, 9003, 'Transportation needs', 1, '2023-04-15', 'Open', 'TransportHelp', 'MikeBrown', '5557778888', '789 Pine Rd', 'Chicago', 'IL', '60601', 'Arranged weekly rides', '2023-04-05 10:20:00', '2023-04-05 10:20:00', 0, NULL);