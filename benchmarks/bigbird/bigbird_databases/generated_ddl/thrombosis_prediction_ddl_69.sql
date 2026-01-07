-- Catalog of imaging devices available in the hospital
CREATE TABLE ImagingDeviceCatalog
(
    DeviceID                INTEGER PRIMARY KEY,
    Manufacturer            TEXT,
    ModelNumber             TEXT,
    DeviceType              TEXT,
    SerialNumber            TEXT,
    InstallationDate        DATE,
    CalibrationDate         DATE,
    SoftwareVersion         TEXT,
    LastMaintenanceDate     DATE,
    WarrantyExpDate         DATE,
    Location                TEXT,
    Department              TEXT,
    PowerRequirementKW      REAL,
    Resolution              TEXT,
    FieldStrengthTesla      REAL,
    NoiseLevelDb            REAL,
    RadiationDoseMgy        REAL,
    OperatingSystem         TEXT,
    Connectivity            TEXT,
    IsActive                INTEGER,
    MaxScanTimeMinutes      INTEGER,
    SupportedModalities     TEXT,
    MaintenanceContractID   INTEGER
);

INSERT INTO ImagingDeviceCatalog VALUES (1,'Siemens','MAGNETOM Aera','MRI','SN123456','2019-05-10','2023-05-01','v3.2.1','2024-01-15','2027-05-10','Radiology Wing 1','Radiology',15.5,'1.5T','45','30','2.5','Linux','Ethernet',1,60,'MRI,MR Spectroscopy',101);
INSERT INTO ImagingDeviceCatalog VALUES (2,'GE','Discovery CT750','CT','SN987654','2020-02-20','2023-02-15','v5.0.0','2024-03-10','2025-02-20','Imaging Center 2','Radiology',12.0,'0.5mm','64','25','5.0','Windows','WiFi',1,30,'CT,CT Angiography',102);
INSERT INTO ImagingDeviceCatalog VALUES (3,'Philips','Ingenia 1.5T','MRI','SN555777','2021-11-05','2024-11-01','v4.1.3','2024-06-20','2026-11-05','Radiology Wing 3','Radiology',16.0,'1.5T','40','28','2.8','Linux','Fiber',1,55,'MRI,Functional MRI',103);

-- Annotations for genetic variants identified in sequencing tests
CREATE TABLE GeneticVariantAnnotation
(
    VariantID               INTEGER PRIMARY KEY,
    GeneSymbol              TEXT,
    NucleotideChange       TEXT,
    ProteinChange           TEXT,
    ClinVarSignificance    TEXT,
    AlleleFrequency        REAL,
    InheritancePattern     TEXT,
    PathogenicityScore      REAL,
    EvidenceLevel          TEXT,
    ClinicalActionability  TEXT,
    LastReviewedDate       DATE,
    ReviewVersion           TEXT,
    VariantType             TEXT,
    ExonNumber              INTEGER,
    TranscriptID            TEXT,
    dbSNPID                 TEXT,
    GnomADCount             INTEGER,
    PubMedReferences        TEXT,
    ConservationScore      REAL,
    FunctionalImpact       TEXT,
    PopulationImpact        TEXT,
    TherapeuticImplication TEXT,
    AnnotationSource        TEXT
);

INSERT INTO GeneticVariantAnnotation VALUES (1001,'BRCA1','c.68_69delAG','p.Glu23Valfs','Pathogenic',0.0001,'AutosomalDominant',9.5,'Strong','ReferralToOncology','2024-01-12','v2','Deletion',2,'NM_007294.3','rs8035766',12,'PMID123456;PMID234567',0.98,'LossOfFunction','High','PARPInhibitor','ClinVar');
INSERT INTO GeneticVariantAnnotation VALUES (1002,'CFTR','c.1521_1523delCTT','p.Phe508del','Pathogenic',0.015,'AutosomalRecessive',8.7,'Strong','CysticFibrosisTreatment','2023-11-05','v1','Deletion',10,'NM_000492.3','rs113993970',305,'PMID345678',0.95,'ProteinMisfolding','Medium','Ivacaftor','ClinVar');
INSERT INTO GeneticVariantAnnotation VALUES (1003,'TP53','c.215C>G','p.Pro72Arg','LikelyBenign',0.025,'Somatic',2.1,'Moderate','RoutineMonitoring','2024-02-20','v3','SNV',4,'NM_000546.5','rs1042522',78,'PMID456789',0.88,'MildEffect','Low','StandardCare','ClinVar');

-- Records of site visits for clinical trial monitoring
CREATE TABLE ClinicalTrialSiteVisitLog
(
    VisitID                 INTEGER PRIMARY KEY,
    TrialID                 TEXT,
    SiteID                  TEXT,
    VisitDate               DATE,
    AuditorName             TEXT,
    VisitType               TEXT,
    FindingsSummary         TEXT,
    ComplianceScore         REAL,
    IssuesIdentified        TEXT,
    ActionPlan              TEXT,
    FollowUpDate            DATE,
    DocumentationLink       TEXT,
    DurationMinutes         INTEGER,
    NumberOfStaffObserved   INTEGER,
    ConsentStatus           TEXT,
    SOPAdherenceLevel      TEXT,
    SafetyObservations      TEXT,
    DataIntegrityScore      REAL,
    TrainingCompliance      TEXT,
    EquipmentCheckStatus    TEXT,
    PatientPrivacyNotes     TEXT,
    RegulatoryFlag          INTEGER,
    Comments                TEXT
);

INSERT INTO ClinicalTrialSiteVisitLog VALUES (5001,'CT001','SITEA','2024-03-10','DrSmith','Initial','All procedures compliant',9.2,'None','Maintain current protocol','2024-06-10','/docs/visit5001.pdf',180,5,'Complete','High','No safety issues',9.0,'Complete','OK','No breaches',0,'No additional comments');
INSERT INTO ClinicalTrialSiteVisitLog VALUES (5002,'CT001','SITEA','2024-06-12','DrJones','Routine','Minor documentation lag',7.8,'Delayed case report forms','Update CRF process','2024-09-12','/docs/visit5002.pdf',150,4,'Partial','Medium','Minor PPE wear issue',8.1,'Partial','NeedsReplacement','No breaches',0,'Follow up on documentation');
INSERT INTO ClinicalTrialSiteVisitLog VALUES (5003,'CT002','SITEB','2024-05-05','NurseLee','Closeout','Study completed successfully',9.8,'None','Archive data per SOP','2024-05-20','/docs/visit5003.pdf',120,3,'Complete','High','All safety measures met',9.9,'Complete','OK','No issues',0,'Closeout verified');

-- Log of firmware updates applied to medical devices
CREATE TABLE MedicalDeviceFirmwareUpdateLog
(
    UpdateID                INTEGER PRIMARY KEY,
    DeviceID                INTEGER,
    FirmwareVersion         TEXT,
    UpdateDate              DATE,
    UpdatedBy               TEXT,
    UpdateMethod            TEXT,
    ChangeLog               TEXT,
    RollbackAvailable       INTEGER,
    RollbackVersion         TEXT,
    VerificationStatus      TEXT,
    PostUpdateTestResult    TEXT,
    DowntimeMinutes         INTEGER,
    ImpactLevel             TEXT,
    RegulatoryApproval      TEXT,
    ReleaseNotesURL         TEXT,
    ValidationReportLink    TEXT,
    HardwareCompatibility   TEXT,
    SafetyCheckCompleted    INTEGER,
    IssueResolved           INTEGER,
    Comments                TEXT
);

INSERT INTO MedicalDeviceFirmwareUpdateLog VALUES (9001,1,'v3.3.0','2024-01-20','TechA','OverTheAir','BugFixesAndPerformance',1,'v3.2.1','Passed','AllTestsPass',10,'Low','Approved','/releases/v3.3.0/notes','/reports/val9001.pdf','v3.2.1+',1,1,'Update applied without issues');
INSERT INTO MedicalDeviceFirmwareUpdateLog VALUES (9002,2,'v5.1.2','2024-02-15','TechB','USB','SecurityPatch',1,'v5.1.1','Passed','AllTestsPass',15,'Medium','Approved','/releases/v5.1.2/notes','/reports/val9002.pdf','v5.1.1',1,1,'Security vulnerability mitigated');
INSERT INTO MedicalDeviceFirmwareUpdateLog VALUES (9003,3,'v4.2.0','2024-03-05','TechC','Network','FeatureEnhancement',0,NULL,'Pending','NotRun',0,'High','Pending','/releases/v4.2.0/notes','/reports/val9003.pdf','v4.1.3',0,0,'Pending verification');

-- Prescriptions of nutritional supplements for patients
CREATE TABLE NutritionSupplementPrescription
(
    PrescriptionID          INTEGER PRIMARY KEY,
    PatientID               INTEGER,
    SupplementName          TEXT,
    DosageMg                INTEGER,
    FrequencyPerDay         INTEGER,
    Route                   TEXT,
    PrescribedDate          DATE,
    PrescriberID            INTEGER,
    Indication              TEXT,
    DurationDays            INTEGER,
    RefillsRemaining        INTEGER,
    Notes                   TEXT,
    PharmacyID              INTEGER,
    PriorAuthorization     INTEGER,
    ApprovalDate            DATE,
    Status                  TEXT,
    DispenseLocation        TEXT,
    CostPerUnitUSD          REAL,
    TotalCostUSD            REAL,
    AdverseEventReported    INTEGER,
    MonitoringPlan          TEXT,
    FollowUpDate            DATE,
    Discontinued            INTEGER,
    DiscontinueReason      TEXT
);

INSERT INTO NutritionSupplementPrescription VALUES (2001,101,'Vitamin D3',2000,1,'Oral','2024-01-05',301,'Osteoporosis',180,2,'Take with food',401,1,'2024-01-06','Active','Pharmacy A',0.05,9.00,0,'AnnualLabCheck','2024-07-01',0,'');
INSERT INTO NutritionSupplementPrescription VALUES (2002,102,'Omega 3',1000,2,'Oral','2024-02-12',302,'Hypertriglyceridemia',365,1,'Take after meals',402,0,NULL,'Pending','Pharmacy B',0.10,36.50,0,'LipidPanelEvery3Months','2025-02-12',0,'');
INSERT INTO NutritionSupplementPrescription VALUES (2003,103,'Calcium Carbonate',500,3,'Oral','2023-12-20',303,'Low Bone Density',90,0,'Avoid taking with iron tablets',403,1,'2023-12-21','Discontinued','Pharmacy C',0.07,18.90,1,'Monitor serum calcium','2024-03-20',1,'Hypercalcemia');

-- Readings from environmental sensors placed throughout the facility
CREATE TABLE EnvironmentalSensorReading
(
    ReadingID               INTEGER PRIMARY KEY,
    SensorID                TEXT,
    Location                TEXT,
    ReadingDateTime         DATETIME,
    TemperatureCelsius      REAL,
    HumidityPercent         REAL,
    CO2ppm                  REAL,
    PM25ugm3                REAL,
    VOCppb                  REAL,
    NoiseDbA                REAL,
    LightLux                REAL,
    PressureHpa             REAL,
    BatteryLevelPercent    REAL,
    SignalStrengthDbm       REAL,
    FirmwareVersion         TEXT,
    CalibrationDate         DATE,
    MaintenanceDueDate      DATE,
    AlertFlag               INTEGER,
    AlertMessage            TEXT,
    DataQualityScore        REAL,
    RecordedBySystem        TEXT,
    UploadTimestamp         DATETIME,
    Notes                   TEXT,
    AnomalyDetected         INTEGER,
    AnomalyScore            REAL
);

INSERT INTO EnvironmentalSensorReading VALUES (3001,'SEN001','Radiology Wing 1','2024-04-01 08:00:00',22.5,45.0,600,12,250,55,300,1015,95, -70,'v1.2','2023-12-01','2024-10-01',0,'',0.98,'SysA','2024-04-01 08:05:00','No issues',0,0);
INSERT INTO EnvironmentalSensorReading VALUES (3002,'SEN002','Pharmacy','2024-04-01 08:00:00',21.0,40.0,550,8,200,48,500,1012,90, -68,'v1.2','2023-12-01','2024-10-01',0,'',0.99,'SysA','2024-04-01 08:05:00','Stable',0,0);
INSERT INTO EnvironmentalSensorReading VALUES (3003,'SEN003','ICU','2024-04-01 08:00:00',23.2,50.0,750,15,300,70,200,1010,85, -72,'v1.2','2023-12-01','2024-10-01',1,'High CO2',0.85,'SysB','2024-04-01 08:06:00','Ventilation check required',1,0.76);

-- Wearable device data collected from patients
CREATE TABLE PatientWearableDeviceData
(
    RecordID                INTEGER PRIMARY KEY,
    PatientID               INTEGER,
    DeviceSerialNumber      TEXT,
    Timestamp               DATETIME,
    HeartRateBPM            INTEGER,
    StepsCount              INTEGER,
    SleepDurationMinutes    INTEGER,
    SpO2Percent             REAL,
    BodyTemperatureC        REAL,
    BloodPressureSys        INTEGER,
    BloodPressureDia        INTEGER,
    StressLevelScore        REAL,
    ActivityType            TEXT,
    BatteryLevelPercent     REAL,
    FirmwareVersion         TEXT,
    DataSyncStatus          TEXT,
    Latitude                REAL,
    Longitude               REAL,
    AltitudeMeters          REAL,
    ECGSignalQuality        REAL,
    FallDetected            INTEGER,
    OxygenTherapyDelivered  INTEGER,
    Notes                   TEXT,
    UploadServer            TEXT,
    DataQualityFlag         INTEGER,
    ValidationScore         REAL,
    WearTimeMinutes         INTEGER,
    AlertFlag               INTEGER,
    AlertMessage            TEXT
);

INSERT INTO PatientWearableDeviceData VALUES (4001,101,'WT001','2024-04-01 07:30:00',78,3500,420,98.2,36.5,120,80,0.2,'Walking',85,'v3.0','Synced',40.7128,-74.0060,10,0.95,0,0,'', 'ServerA',1,0.97,720,0,'');
INSERT INTO PatientWearableDeviceData VALUES (4002,102,'WT002','2024-04-01 07:45:00',65,2000,480,97.5,36.2,110,70,0.1,'Resting',90,'v3.0','Synced',34.0522,-118.2437,30,0.98,0,0,'', 'ServerA',1,0.99,720,0,'');
INSERT INTO PatientWearableDeviceData VALUES (4003,103,'WT003','2024-04-01 08:00:00',85,6000,380,99.0,37.0,130,85,0.5,'Running',70,'v3.0','Synced',41.8781,-87.6298,180,0.92,0,0,'', 'ServerB',1,0.95,720,0,'');

-- Tracking of specimen samples stored in the biobank
CREATE TABLE BiobankSpecimenTracking
(
    SpecimenID              INTEGER PRIMARY KEY,
    PatientID               INTEGER,
    SpecimenType            TEXT,
    CollectionDate          DATE,
    CollectionTime          TIME,
    StorageLocation         TEXT,
    FreezerID               TEXT,
    RackNumber              INTEGER,
    BoxNumber               INTEGER,
    Position                TEXT,
    VolumeMl                REAL,
    ConcentrationNgUl       REAL,
    AliquotCount            INTEGER,
    FreezeThawCycles        INTEGER,
    QualityScore            REAL,
    ProcessingLab           TEXT,
    ReceivedBy              TEXT,
    ReceivedDate            DATE,
    ReceivedTime            TIME,
    ConsentID               TEXT,
    Status                  TEXT,
    LastAccessedDate        DATE,
    LastAccessedBy          TEXT,
    DisposalDate            DATE,
    DisposalMethod          TEXT,
    Notes                   TEXT,
    QCReviewDate            DATE,
    QCReviewer              TEXT,
    ExportedFlag            INTEGER,
    ExportDate              DATE
);

INSERT INTO BiobankSpecimenTracking VALUES (6001,101,'Blood','2024-01-15','09:30:00','FreezerA-R01-B02','FZ001',1,2,'A1',5.0,200.0,2,1,0.98,'LabX','TechA','2024-01-16','10:00:00','CONS001','Stored','2024-06-01','TechB',NULL,NULL,'Initial storage','2024-01-18','TechC',0,NULL);
INSERT INTO BiobankSpecimenTracking VALUES (6002,102,'Tissue','2023-12-20','14:15:00','FreezerB-R03-B05','FZ002',3,5,'C4',1.2,1500.0,1,0,0.95,'LabY','TechD','2023-12-21','15:00:00','CONS002','Stored','2024-05-15','TechE',NULL,NULL,'Fixed tissue sample','2023-12-23','TechF',0,NULL);
INSERT INTO BiobankSpecimenTracking VALUES (6003,103,'Saliva','2024-02-10','08:45:00','FreezerC-R02-B01','FZ003',2,1,'B2',2.0,500.0,3,2,0.92,'LabZ','TechG','2024-02-11','09:20:00','CONS003','Stored','2024-07-20','TechH',NULL,NULL,'Aliquoted for DNA extraction','2024-02-13','TechI',0,NULL);

-- Inventory of surgical instruments with maintenance data
CREATE TABLE SurgicalInstrumentInventory
(
    InstrumentID            INTEGER PRIMARY KEY,
    InstrumentName          TEXT,
    Manufacturer            TEXT,
    ModelNumber             TEXT,
    SerialNumber            TEXT,
    PurchaseDate            DATE,
    CostUSD                 REAL,
    Category                TEXT,
    SubCategory             TEXT,
    SterilizationMethod    TEXT,
    LastSterilizationDate   DATE,
    NextMaintenanceDueDate  DATE,
    MaintenanceIntervalDays INTEGER,
    CurrentStatus           TEXT,
    Location                TEXT,
    AssignedOR              TEXT,
    CalibrationRequired     INTEGER,
    CalibrationDate         DATE,
    CalibrationValidUntil   DATE,
    WarrantyExpDate         DATE,
    UsageCount              INTEGER,
    MaxUsageBeforeService  INTEGER,
    InspectionScore         REAL,
    LastInspectionDate      DATE,
    Notes                   TEXT,
    DecommissionDate        DATE,
    DecommissionReason      TEXT,
    DisposalMethod          TEXT,
    AuditTrailID            INTEGER,
    ComplianceFlag          INTEGER
);

INSERT INTO SurgicalInstrumentInventory VALUES (7001,'Scalpel','MedTech','SC-100','SN001','2019-03-01',150.00,'Cutting','Scalpel','Autoclave','2024-03-28','2025-03-28',365,'InUse','OR1','OR1-1',0,NULL,NULL,'2024-03-01',250,300,0.99,'2024-01-15','Sharp edge maintained',NULL,NULL,NULL,101,1);
INSERT INTO SurgicalInstrumentInventory VALUES (7002,'Forceps','SurgEquip','FC-200','SN002','2020-07-15',200.00,'Grasping','Hemostatic','SteamSterilizer','2024-04-02','2025-04-02',365,'InUse','OR2','OR2-3',1,'2023-12-01','2024-12-01','2023-07-15',180,250,0.95,'2024-02-10','Handle checked',NULL,NULL,NULL,102,1);
INSERT INTO SurgicalInstrumentInventory VALUES (7003,'Retractor','OrthoTools','RT-300','SN003','2018-11-20',500.00,'Retracting','Self-retaining','PlasmaSterilizer','2024-03-20','2025-03-20',365,'InRepair','RepairShop','RS-5',1,'2022-11-20','2023-11-20','2023-11-20',95,120,0.85,'2024-01-05','Bent blade repaired',NULL,NULL,NULL,103,0);

-- Detailed energy consumption metrics for hospital facilities
CREATE TABLE HospitalEnergyMetricDetail
(
    MetricID                INTEGER PRIMARY KEY,
    FacilityID              TEXT,
    DateRecorded            DATE,
    TotalElectricityKWh     REAL,
    TotalGasTherms          REAL,
    RenewableEnergyKWh      REAL,
    PeakDemandKW            REAL,
    AverageDemandKW         REAL,
    CO2EmissionsKg          REAL,
    EnergyCostUSD           REAL,
    TemperatureCelsiusAvg   REAL,
    HumidityPercentAvg      REAL,
    SolarGenerationKWh      REAL,
    WindGenerationKWh       REAL,
    BackupGeneratorRunHours REAL,
    OutageDurationMinutes   INTEGER,
    EnergyEfficiencyRating  TEXT,
    CarbonIntensityKgPerKWh REAL,
    DemandResponseEvents    INTEGER,
    HoursOnDemandResponse   REAL,
    BuildingZone            TEXT,
    HVACSystemID            TEXT,
    LightingControlSystem   TEXT,
    MeterReadingStart       REAL,
    MeterReadingEnd         REAL,
    MeterID                 TEXT,
    DataVerifiedBy          TEXT,
    VerificationDate        DATE,
    Comments                TEXT,
    AnomalyFlag             INTEGER,
    AnomalyDescription      TEXT,
    ReportGeneratedBy       TEXT,
    ReportGenerationDate    DATE
);

INSERT INTO HospitalEnergyMetricDetail VALUES (8001,'FAC001','2024-03-31',350000,12000,50000,800,550,250000,42000,22.5,55,20000,0,150,30,'A','0.71',2,5,'EastWing','HVAC01','LCS01',1234500,1245000,'MTR001','EnergyTeam','2024-04-02','Normal operation',0,'','EnergyAnalyst','2024-04-03');
INSERT INTO HospitalEnergyMetricDetail VALUES (8002,'FAC002','2024-03-31',420000,15000,60000,950,650,300000,54000,21.8,50,25000,0,180,45,'B','0.69',3,8,'WestWing','HVAC02','LCS02',1500000,1512000,'MTR002','EnergyTeam','2024-04-02','Slight increase in demand',0,'','EnergyAnalyst','2024-04-03');
INSERT INTO HospitalEnergyMetricDetail VALUES (8003,'FAC003','2024-03-31',310000,9000,40000,720,480,200000,36000,23.0,60,15000,0,120,20,'A','0.73',1,3,'NorthWing','HVAC03','LCS03',980000,990000,'MTR003','EnergyTeam','2024-04-02','Peak demand aligned with scheduled activities',0,'','EnergyAnalyst','2024-04-03');