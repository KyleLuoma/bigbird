-- Hospital water consumption metrics
CREATE TABLE HospitalWaterUsage
(
    FacilityID INTEGER NOT NULL,
    RecordDate DATE NOT NULL,
    TotalGallons REAL,
    IndoorUsage REAL,
    OutdoorUsage REAL,
    CoolingSystemGallons REAL,
    LaundryGallons REAL,
    KitchenGallons REAL,
    AvgFlowRate REAL,
    PeakFlowRate REAL,
    MeterReadingStart INTEGER,
    MeterReadingEnd INTEGER,
    WaterCost REAL,
    SupplierName TEXT,
    RegionCode TEXT,
    ConservationProgram TEXT,
    LeakDetected INTEGER,
    MaintenanceVisitDate DATE,
    Comments TEXT,
    WaterQualityScore REAL,
    PRIMARY KEY (FacilityID, RecordDate),
    FOREIGN KEY (FacilityID) REFERENCES HospitalFacility (FacilityID) ON UPDATE CASCADE ON DELETE CASCADE
);
INSERT INTO HospitalWaterUsage VALUES (1,'2025-01-01',50000,30000,20000,5000,4000,6000,150,300,100000,105000,1200.5,'AquaSupply','NW','Standard',0,'2025-01-10','None',95.2);
INSERT INTO HospitalWaterUsage VALUES (2,'2025-01-01',60000,35000,25000,6000,5000,7000,160,320,200000,206000,1300.75,'PureWater','NE','Enhanced',1,'2025-01-12','Leak in wing A',88.4);
INSERT INTO HospitalWaterUsage VALUES (3,'2025-01-01',45000,28000,17000,4500,3500,5500,140,280,150000,154500,1100.2,'ClearFlow','SW','Standard',0,'2025-01-08','None',92.7);

-- Medical imaging archive metadata
CREATE TABLE MedicalImagingArchive
(
    ArchiveID INTEGER NOT NULL,
    StudyID INTEGER NOT NULL,
    Modality TEXT,
    AcquisitionDate DATE,
    FileFormat TEXT,
    FileSizeMB REAL,
    ImageCount INTEGER,
    RadiologistID INTEGER,
    CompressionRatio REAL,
    StorageLocation TEXT,
    RetentionPeriodYears INTEGER,
    AccessLevel TEXT,
    EncryptionStatus TEXT,
    DICOMVersion TEXT,
    InstitutionCode TEXT,
    PatientHash TEXT,
    SeriesDescription TEXT,
    StudyDescription TEXT,
    ReferralDepartment TEXT,
    QualityScore REAL,
    PRIMARY KEY (ArchiveID),
    FOREIGN KEY (RadiologistID) REFERENCES Physician (PhysicianID) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO MedicalImagingArchive VALUES (1001,2001,'CT','2024-11-20','DICOM',250.5,150,301,1.8,'VaultA',7,'Restricted','Encrypted','3.0','HOSP001','HASHABC','Head CT','Trauma evaluation','Emergency',89.3);
INSERT INTO MedicalImagingArchive VALUES (1002,2002,'MRI','2024-12-05','DICOM',340.2,200,302,2.1,'VaultB',10,'Confidential','Encrypted','4.0','HOSP002','HASHDEF','Spine MRI','Degenerative disease','Orthopedics',92.1);
INSERT INTO MedicalImagingArchive VALUES (1003,2003,'XRay','2024-12-15','DICOM',45.0,1,303,1.0,'VaultC',5,'Public','None','2.0','HOSP001','HASHGHI','Chest XRay','Routine check','Pulmonology',78.5);

-- Genomic data consent records
CREATE TABLE GenomicDataConsent
(
    ConsentID INTEGER NOT NULL,
    PatientID INTEGER NOT NULL,
    ConsentDate DATE,
    ConsentVersion TEXT,
    StudyName TEXT,
    DataUseScope TEXT,
    WithdrawalAllowed INTEGER,
    WithdrawalDate DATE,
    ConsentFormHash TEXT,
    ConsentMethod TEXT,
    AuthorizedBy TEXT,
    ExpirationDate DATE,
    GeneticCounselorID INTEGER,
    SampleType TEXT,
    SampleID TEXT,
    StorageLocation TEXT,
    DataSharingAgreement TEXT,
    EthicsCommitteeApproval TEXT,
    Comments TEXT,
    RetentionPeriodYears INTEGER,
    PRIMARY KEY (ConsentID),
    FOREIGN KEY (PatientID) REFERENCES Patient (ID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (GeneticCounselorID) REFERENCES Physician (PhysicianID) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO GenomicDataConsent VALUES (5001,10,'2024-09-01','v1','HeartGen Study','Research only',1,NULL,'HASH001','InPerson','DrSmith','2034-09-01',401,'Blood','SMP1001','FreezerA','AgreementA','Approved','None',10);
INSERT INTO GenomicDataConsent VALUES (5002,12,'2024-10-15','v2','OncoSeq','Clinical and research',0,NULL,'HASH002','Online','DrJones','2035-10-15',402,'Saliva','SMP1002','FreezerB','AgreementB','Pending','Patient requested follow-up',15);
INSERT INTO GenomicDataConsent VALUES (5003,15,'2024-11-20','v1','NeuroDegen','Research only',1,'2025-06-01','HASH003','Mail','DrLee','2035-11-20',403,'Tissue','SMP1003','FreezerC','AgreementC','Approved','Withdrawn due to patient move',12);

-- Pharmacy inventory forecast
CREATE TABLE PharmacyInventoryForecast
(
    ForecastID INTEGER NOT NULL,
    DrugID INTEGER NOT NULL,
    ForecastMonth TEXT,
    ProjectedDemandUnits INTEGER,
    SafetyStockUnits INTEGER,
    LeadTimeDays INTEGER,
    CurrentStockUnits INTEGER,
    ReorderPointUnits INTEGER,
    SupplierID INTEGER,
    UnitCost REAL,
    TotalProjectedCost REAL,
    ForecastAccuracyPct REAL,
    SeasonalityFactor REAL,
    PromotionFlag INTEGER,
    ExpirationRiskFlag INTEGER,
    HoldingCostPct REAL,
    MaxStockLevel INTEGER,
    MinStockLevel INTEGER,
    ReviewDate DATE,
    Notes TEXT,
    PRIMARY KEY (ForecastID),
    FOREIGN KEY (DrugID) REFERENCES Medication (MedicationID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (SupplierID) REFERENCES SupplyChainVendor (VendorID) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO PharmacyInventoryForecast VALUES (9001,101,'2025-02',5000,800,30,2500,1800,201,12.5,62500,92.3,1.05,0,0,2.0,7000,1500,'2025-01-28','Normal demand',);
INSERT INTO PharmacyInventoryForecast VALUES (9002,102,'2025-02',3000,500,45,1200,1000,202,8.0,24000,88.7,0.95,1,1,1.8,5000,800,'2025-01-28','Flu season increase',);
INSERT INTO PharmacyInventoryForecast VALUES (9003,103,'2025-02',7500,1000,20,4000,3000,203,5.5,41250,95.1,1.10,0,0,2.5,9000,2500,'2025-01-28','High usage in ICU',);

-- Clinical staff credential log
CREATE TABLE ClinicalStaffCredential
(
    CredentialID INTEGER NOT NULL,
    StaffID INTEGER NOT NULL,
    CredentialType TEXT,
    IssuingAuthority TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    CredentialNumber TEXT,
    Status TEXT,
    RenewalReminderSent INTEGER,
    LastVerifiedDate DATE,
    VerificationMethod TEXT,
    Comments TEXT,
    Department TEXT,
    Role TEXT,
    LicenseState TEXT,
    CredentialFilePath TEXT,
    AuditTrail TEXT,
    ApprovedBy TEXT,
    ExtensionMonths INTEGER,
    IsActive INTEGER,
    PRIMARY KEY (CredentialID),
    FOREIGN KEY (StaffID) REFERENCES StaffShift (StaffID) ON UPDATE CASCADE ON DELETE CASCADE
);
INSERT INTO ClinicalStaffCredential VALUES (4001,501,'RN License','State Board','2020-05-10','2025-05-10','RN123456','Active',0,'2024-12-01','Online','None','Nursing','Registered Nurse','CA','/files/cred/4001.pdf','LogA','AdminA',0,1);
INSERT INTO ClinicalStaffCredential VALUES (4002,502,'MD License','Medical Board','2018-03-15','2028-03-15','MD789012','Active',1,'2024-11-20','InPerson','Verified during annual review','Cardiology','Physician','NY','/files/cred/4002.pdf','LogB','AdminB',0,1);
INSERT INTO ClinicalStaffCredential VALUES (4003,503,'Pharmacy Technician Cert','Pharmacy Accrediting Agency','2019-11-01','2024-11-01','PT345678','Expired',1,'2024-10-30','Phone','Expired, renewal required','Pharmacy','Technician','TX','/files/cred/4003.pdf','LogC','AdminC',6,0);

-- Equipment failure incident log
CREATE TABLE EquipmentFailureLog
(
    IncidentID INTEGER NOT NULL,
    EquipmentID INTEGER NOT NULL,
    FailureDate DATE,
    ReportedBy TEXT,
    FailureType TEXT,
    DowntimeHours REAL,
    RootCause TEXT,
    RepairAction TEXT,
    RepairCost REAL,
    ServiceVendorID INTEGER,
    ReplacementRequired INTEGER,
    ReplacementEquipmentID INTEGER,
    WarrantyClaimSubmitted INTEGER,
    WarrantyClaimNumber TEXT,
    FollowUpDate DATE,
    ImpactSeverity TEXT,
    AffectedDept TEXT,
    TemporarySolution TEXT,
    Comments TEXT,
    RecordedAt TIMESTAMP,
    PRIMARY KEY (IncidentID),
    FOREIGN KEY (EquipmentID) REFERENCES DeviceInventory (DeviceID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (ServiceVendorID) REFERENCES SupplyChainVendor (VendorID) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO EquipmentFailureLog VALUES (7001,1201,'2025-01-12','TechA','Electrical','4.5','Power surge','Replaced transformer',1500,301,0,NULL,1,'WC2025-01','2025-01-20','High','Radiology','Manual imaging','Resolved after replacement','2025-01-12 08:30:00');
INSERT INTO EquipmentFailureLog VALUES (7002,1202,'2025-01-15','TechB','Mechanical','2.0','Wear and tear','Lubricated moving parts',300,302,0,NULL,0,NULL,'2025-01-18','Medium','Surgery','Backup device used','Routine maintenance','2025-01-15 09:45:00');
INSERT INTO EquipmentFailureLog VALUES (7003,1203,'2025-01-20','TechC','Software','1.2','Firmware bug','Reflashed firmware',0,303,1,1300,1,'WC2025-02','2025-01-25','Low','IT','Restarted system','Software patch applied','2025-01-20 11:15:00');

-- Patient outcome prediction model metadata
CREATE TABLE PatientOutcomePrediction
(
    ModelID INTEGER NOT NULL,
    ModelName TEXT,
    Version TEXT,
    DevelopedDate DATE,
    Algorithm TEXT,
    TargetOutcome TEXT,
    InputFeatureCount INTEGER,
    TrainingSetSize INTEGER,
    ValidationSetSize INTEGER,
    AUC REAL,
    Accuracy REAL,
    Precision REAL,
    Recall REAL,
    F1Score REAL,
    CalibrationSlope REAL,
    CalibrationIntercept REAL,
    DeploymentStatus TEXT,
    DeployedDate DATE,
    LastRetrainedDate DATE,
    ResponsibleTeam TEXT,
    PRIMARY KEY (ModelID)
);
INSERT INTO PatientOutcomePrediction VALUES (1,'SepsisRisk','v1.0','2023-06-01','GradientBoosting','Sepsis','45','12000','3000',0.89,0.82,0.78,0.75,0.76,1.02,0.03,'Production','2024-01-15','2024-12-01','Clinical Analytics');
INSERT INTO PatientOutcomePrediction VALUES (2,'ReadmissionScore','v2.1','2022-11-15','NeuralNetwork','30-day Readmission','60','15000','4000',0.85,0.80,0.77,0.70,0.73,0.98,-0.01,'Testing','2024-03-20','2024-10-05','Data Science');
INSERT INTO PatientOutcomePrediction VALUES (3,'MortalityPredictor','v0.9','2024-02-10','LogisticRegression','In-hospital Mortality','30','8000','2000',0.82,0.78,0.74,0.68,0.71,1.00,0.00,'Development','2024-06-01','2024-11-15','Research Team');

-- Radiology scan protocol definitions
CREATE TABLE RadiologyScanProtocol
(
    ProtocolID INTEGER NOT NULL,
    Modality TEXT,
    BodyPart TEXT,
    ProtocolName TEXT,
    Description TEXT,
    StandardDoseLevel REAL,
    ContrastUsed INTEGER,
    ContrastAgent TEXT,
    ScanDurationMinutes REAL,
    SliceThicknessMM REAL,
    ReconstructionAlgorithm TEXT,
    PatientPosition TEXT,
    RadiationSafetyNotes TEXT,
    ImageQualityTarget TEXT,
    MaxTableSpeedMMperSec REAL,
    BreathHoldRequired INTEGER,
    OperatorID INTEGER,
    ApprovalDate DATE,
    LastUpdated DATE,
    ActiveFlag INTEGER,
    PRIMARY KEY (ProtocolID),
    FOREIGN KEY (OperatorID) REFERENCES Physician (PhysicianID) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO RadiologyScanProtocol VALUES (301,'CT','Head','CT_Head_Standard','Standard head CT for trauma',45.0,0,NULL,5.0,0.5,'Standard','Supine','Use lead shielding','High',120.0,0,401,'2023-01-10','2024-11-01',1);
INSERT INTO RadiologyScanProtocol VALUES (302,'MRI','Knee','MRI_Knee_WOMAC','Knee MRI for osteoarthritis assessment',0.0,1,'Gadobutrol',30.0,3.0,'GradientEcho','Prone','Screen for renal function','Medium',80.0,1,402,'2022-07-15','2024-09-20',1);
INSERT INTO RadiologyScanProtocol VALUES (303,'XRay','Chest','XRay_Chest_PA','Posterior-anterior chest X-ray',2.5,0,NULL,0.5,0.1,'None','Standing','Standard precautions','Standard',200.0,0,403,'2021-05-05','2024-08-12',1);

-- Laboratory reagent inventory
CREATE TABLE LaboratoryReagentInventory
(
    ReagentID INTEGER NOT NULL,
    ReagentName TEXT,
    Manufacturer TEXT,
    CatalogNumber TEXT,
    LotNumber TEXT,
    ExpirationDate DATE,
    QuantityUnits REAL,
    UnitOfMeasure TEXT,
    StorageTemperatureC REAL,
    HazardClassification TEXT,
    MSDSAvailable INTEGER,
    ReceivedDate DATE,
    AssignedLab TEXT,
    CurrentLocation TEXT,
    LastInventoryCheck DATE,
    MinimumStockLevel REAL,
    ReorderQuantity REAL,
    SupplierID INTEGER,
    UsageRatePerMonth REAL,
    Comments TEXT,
    PRIMARY KEY (ReagentID),
    FOREIGN KEY (SupplierID) REFERENCES SupplyChainVendor (VendorID) ON UPDATE CASCADE ON DELETE SET NULL
);
INSERT INTO LaboratoryReagentInventory VALUES (8001,'Glucose','Sigma-Aldrich','G12345','LOT001','2026-12-31',500,'g',4.0,'Non-Hazardous',1,'2024-01-20','Biochemistry','RefrigeratorA','2024-10-01',100,200,401,25,'Stable reagent',);
INSERT INTO LaboratoryReagentInventory VALUES (8002,'Ethanol','Fisher','E67890','LOT002','2025-08-15',2000,'ml',-20.0,'Flammable',1,'2024-02-10','Microbiology','FreezerB','2024-09-20',500,1000,402,150,'Store in fire‑proof cabinet',);
INSERT INTO LaboratoryReagentInventory VALUES (8003,'Paraformaldehyde','ThermoFisher','P23456','LOT003','2025-03-01',250,'g',-20.0,'Toxic',1,'2024-03-05','Pathology','FreezerC','2024-09-30',50,100,403,30,'Handle with gloves',);

-- Staff scheduling preference
CREATE TABLE StaffSchedulingPreference
(
    PreferenceID INTEGER NOT NULL,
    StaffID INTEGER NOT NULL,
    PreferredShift TEXT,
    PreferredDays TEXT,
    UnavailableDates TEXT,
    MaxConsecutiveDays INTEGER,
    MinimumRestHours REAL,
    DesiredWeeklyHours REAL,
    NightShiftAllowance INTEGER,
    WeekendShiftAllowance INTEGER,
    RemoteWorkAllowed INTEGER,
    PreferredLocation TEXT,
    Comments TEXT,
    LastUpdated DATE,
    CreatedDate DATE,
    ActiveFlag INTEGER,
    PRIMARY KEY (PreferenceID),
    FOREIGN KEY (StaffID) REFERENCES StaffShift (StaffID) ON UPDATE CASCADE ON DELETE CASCADE
);
INSERT INTO StaffSchedulingPreference VALUES (6001,701,'Day','Mon,Tue,Wed,Thu','2024-12-24;2024-12-31',5,12,40,0,1,0,'Main Hospital','Prefers daytime weekdays','2024-11-01','2024-01-15',1);
INSERT INTO StaffSchedulingPreference VALUES (6002,702,'Night','Fri,Sat,Sun','2024-12-25;2025-01-01',3,10,30,1,1,0,'Satellite Clinic','Open to night shifts','2024-11-02','2024-02-01',1);
INSERT INTO StaffSchedulingPreference VALUES (6003,703,'Rotating','Mon-Fri','2025-02-14',4,8,35,0,0,1,'Remote','Willing to work remote for admin tasks','2024-11-03','2024-03-10',1);

-- Hospital water usage (already created above) – skip duplication
-- No additional tables needed.