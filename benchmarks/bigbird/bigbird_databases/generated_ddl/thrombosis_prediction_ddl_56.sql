-- Radiology Quality Control Log
CREATE TABLE RadiologyQualityControlLog
(
    LogID               INTEGER PRIMARY KEY,
    StudyID             INTEGER,
    Modality            TEXT,
    MachineID           TEXT,
    Technician          TEXT,
    QCDate              DATE,
    PassFail            TEXT,
    Reason              TEXT,
    ImageCount          INTEGER,
    AvgSignal           REAL,
    NoiseRatio          REAL,
    DoseLevel           REAL,
    Resolution          TEXT,
    ContrastUsed        TEXT,
    SliceThickness      REAL,
    ReconstructionAlg   TEXT,
    Comments            TEXT,
    CreatedAt           DATE,
    UpdatedAt           DATE,
    ReviewedBy          TEXT,
    ReviewDate          DATE
);

INSERT INTO RadiologyQualityControlLog VALUES (1,101,'CT','CT01','Alice', '2023-02-15','Pass','',1200, 350.5, 0.85, 2.3,'512x512','Iodine',1.25,'FilteredBackProjection','All good', '2023-02-15','2023-02-15','Bob','2023-02-16');
INSERT INTO RadiologyQualityControlLog VALUES (2,102,'MRI','MR02','Carlos','2023-03-01','Fail','LowSignal',800, 180.0, 1.10, 1.8,'256x256','Gadolinium',3.00,'FourierTransform','Noise high', '2023-03-01','2023-03-02','Dana','2023-03-03');
INSERT INTO RadiologyQualityControlLog VALUES (3,103,'XRay','XR05','Eve','2023-04-10','Pass','',150, 500.0, 0.45, 0.7,'2048x2048','None',0.10,'Standard','', '2023-04-10','2023-04-10','Frank','2023-04-11');

-- Pharmacy Temperature Monitoring
CREATE TABLE PharmacyTemperatureMonitoring
(
    RecordID            INTEGER PRIMARY KEY,
    FacilityID          INTEGER,
    FridgeID            TEXT,
    SensorID            TEXT,
    TemperatureC        REAL,
    RecordedAt          DATE,
    DeviationFlag       INTEGER,
    BatchNumber         TEXT,
    ProductType         TEXT,
    ExpiryDate          DATE,
    Operator            TEXT,
    VerifiedBy          TEXT,
    CreatedAt           DATE,
    UpdatedAt           DATE,
    Shift               TEXT,
    CalibrationDate     DATE,
    MaintenanceLogID    INTEGER,
    AlertSent           INTEGER,
    Comments            TEXT,
    TemperatureUnit     TEXT,
    LocationCode        TEXT,
    RecordedBySystem    TEXT
);

INSERT INTO PharmacyTemperatureMonitoring VALUES (1,10,'FR01','SN1001',4.2,'2023-05-01',0,'BN123','Vaccine','2024-12-31','John','Mary','2023-05-01','2023-05-01','Morning','2023-01-15',200,0,'All normal','C','PharmA','SysA');
INSERT INTO PharmacyTemperatureMonitoring VALUES (2,10,'FR02','SN1002',7.8,'2023-05-01',1,'BN124','Insulin','2025-06-30','Laura','Mark','2023-05-01','2023-05-01','Evening','2023-02-20',201,1,'Temp high','C','PharmA','SysB');
INSERT INTO PharmacyTemperatureMonitoring VALUES (3,12,'FR03','SN1003',2.5,'2023-05-02',0,'BN125','Antibiotic','2024-03-15','Sam','Nina','2023-05-02','2023-05-02','Night','2023-03-10',202,0,'','C','PharmB','SysC');

-- Clinical Staff Credential Audit
CREATE TABLE ClinicalStaffCredentialAudit
(
    AuditID             INTEGER PRIMARY KEY,
    StaffID             INTEGER,
    CredentialType      TEXT,
    CredentialNumber    TEXT,
    IssuedDate          DATE,
    ExpiryDate          DATE,
    AuditDate           DATE,
    Auditor             TEXT,
    Status              TEXT,
    Comments            TEXT,
    Department          TEXT,
    Location            TEXT,
    CreatedAt           DATE,
    UpdatedAt           DATE,
    VerifiedBy          TEXT,
    VerificationDate    DATE,
    RenewalRequired     INTEGER,
    DocumentPath        TEXT,
    CredentialLevel     TEXT,
    SourceSystem        TEXT,
    AuditMethod         TEXT,
    PriorStatus         TEXT
);

INSERT INTO ClinicalStaffCredentialAudit VALUES (1,3001,'MedicalLicense','ML2020A','2020-08-01','2025-08-01','2023-06-01','Admin1','Valid','', 'Cardiology','Building1','2023-06-01','2023-06-01','Admin2','2023-06-02',0,'/docs/ml2020a.pdf','Advanced','HRSystem','Manual','Valid');
INSERT INTO ClinicalStaffCredentialAudit VALUES (2,3002,'NursingLicense','NL2019B','2019-05-15','2024-05-15','2023-06-10','Admin3','ExpiringSoon','Renewal needed soon','Oncology','Building2','2023-06-10','2023-06-10','Admin4','2023-06-11',1,'/docs/nl2019b.pdf','Standard','HRSystem','Automatic','Valid');
INSERT INTO ClinicalStaffCredentialAudit VALUES (3,3003,'PharmacyLicense','PL2021C','2021-01-20','2026-01-20','2023-06-15','Admin5','Valid','', 'Pharmacy','Building3','2023-06-15','2023-06-15','Admin6','2023-06-16',0,'/docs/pl2021c.pdf','Standard','HRSystem','Manual','Valid');

-- Infrastructure Asset Lifecycle
CREATE TABLE InfrastructureAssetLifecycle
(
    AssetID                 INTEGER PRIMARY KEY,
    AssetType               TEXT,
    SerialNumber            TEXT,
    PurchaseDate            DATE,
    InstallationDate        DATE,
    WarrantyEnd             DATE,
    DepreciationStart       DATE,
    DepreciationMethod      TEXT,
    CurrentValue            REAL,
    OriginalCost            REAL,
    Location                TEXT,
    Status                  TEXT,
    LastMaintenanceDate     DATE,
    NextMaintenanceDue      DATE,
    Maintainer              TEXT,
    Manufacturer            TEXT,
    Model                   TEXT,
    PowerRatingKW           REAL,
    LifecycleStage          TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    AssetTag                TEXT,
    DisposalDate            DATE,
    ReplacementAssetID      INTEGER,
    InsurancePolicyNumber   TEXT,
    EnvironmentalImpactScore INTEGER,
    ComplianceStatus        TEXT,
    ServiceContractID       INTEGER,
    LastInspectionDate      DATE,
    InspectionDueDate       DATE,
    Notes                   TEXT
);

INSERT INTO InfrastructureAssetLifecycle VALUES (1,'HVAC','HV12345','2020-03-01','2020-04-15','2025-03-01','2020-03-01','StraightLine',15000.0,25000.0,'BuildingA','Operational','2023-01-20','2023-07-20','Mike','CoolSystems','ModelX',15.5,'InUse','2020-03-01','2023-03-01','TAG001',NULL,NULL,'POL001',85,'Compliant',1001,'2023-02-01','2023-08-01','Routine check');
INSERT INTO InfrastructureAssetLifecycle VALUES (2,'Generator','GEN9876','2018-07-10','2018-08-05','2023-07-10','2018-07-10','DoubleDeclining',8000.0,12000.0,'BuildingB','UnderMaintenance','2023-04-10','2023-10-10','Sara','PowerGen','GenPro',200.0,'Retired','2018-07-10','2023-07-10','TAG002','2023-06-30','NULL','POL002',70,'NonCompliant',1002,'2023-03-15','2023-09-15','Decommissioned');
INSERT INTO InfrastructureAssetLifecycle VALUES (3,'Elevator','ELV5555','2019-11-20','2019-12-01','2024-11-20','2019-11-20','StraightLine',12000.0,18000.0,'BuildingC','Operational','2023-03-05','2023-09-05','Tom','LiftCo','LiftMax',5.0,'InUse','2019-11-20','2023-11-20','TAG003',NULL,'POL003',90,'Compliant',1003,'2023-01-20','2023-07-20','Monthly inspection');

-- Emergency Response Training Session
CREATE TABLE EmergencyResponseTrainingSession
(
    SessionID               INTEGER PRIMARY KEY,
    TrainerID               INTEGER,
    SessionDate             DATE,
    SessionType             TEXT,
    DurationMinutes         INTEGER,
    ParticipantsCount       INTEGER,
    Location                TEXT,
    Scenario                TEXT,
    Outcome                 TEXT,
    FeedbackScore           INTEGER,
    MaterialsProvided       TEXT,
    CertificationAwarded    TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    Notes                   TEXT,
    AttendanceList          TEXT,
    VideoRecordingPath      TEXT,
    AssessmentPassRate      REAL,
    EquipmentUsed           TEXT,
    FollowUpRequired        INTEGER,
    Coordinator             TEXT,
    BudgetUSD               REAL,
    EvaluationMethod        TEXT,
    Sponsor                 TEXT,
    ComplianceFlag          INTEGER,
    SessionCategory         TEXT,
    DurationHours           REAL,
    ReviewDate              DATE,
    Reviewer                TEXT,
    AdditionalResources     TEXT
);

INSERT INTO EmergencyResponseTrainingSession VALUES (1,501,'2023-05-10','FireDrill',180,25,'ConferenceRoomA','WarehouseFire','Successful',9,'Handouts','Yes','2023-05-10','2023-05-11','No issues','ListA','/videos/session1.mp4',0.95,'Extinguisher',0,'Emily',1500.0,'Survey','SafetyDept',1,'Mandatory',3.0,'2023-05-12','John','LinkA');
INSERT INTO EmergencyResponseTrainingSession VALUES (2,502,'2023-06-15','CodeBlue',120,18,'RoomB','CardiacArrest','Successful',8,'Slides','Yes','2023-06-15','2023-06-16','Good engagement','ListB','/videos/session2.mp4',0.90,'Defibrillator',1,'Michael',1200.0,'Quiz','MedicalDept',1,'Optional',2.0,'2023-06-17','Anna','LinkB');
INSERT INTO EmergencyResponseTrainingSession VALUES (3,503,'2023-07-20','Hazmat',240,30,'HallC','ChemicalSpill','PartialSuccess',7,'Manuals','No','2023-07-20','2023-07-21','Need more PPE','ListC','/videos/session3.mp4',0.80,'ProtectiveSuit',1,'Laura',1800.0,'Practical','EnvDept',0,'Mandatory',4.0,'2023-07-22','David','LinkC');

-- Facility Transport Schedule
CREATE TABLE FacilityTransportSchedule
(
    ScheduleID              INTEGER PRIMARY KEY,
    TransportID             INTEGER,
    DepartureTime           DATE,
    ArrivalTime             DATE,
    FromLocation            TEXT,
    ToLocation              TEXT,
    VehicleType             TEXT,
    DriverID                INTEGER,
    EscortStaffID           INTEGER,
    Reason                  TEXT,
    PriorityLevel           TEXT,
    Status                  TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    Notes                   TEXT,
    LoadWeightKg            REAL,
    DistanceKm              REAL,
    EstimatedFuelLiters     REAL,
    SafetyCheckCompleted    INTEGER,
    PermitNumber            TEXT,
    Scheduler               TEXT,
    ApprovalDate            DATE,
    RevisionNumber          INTEGER,
    TransportMode           TEXT,
    WeatherCondition        TEXT,
    Shift                   TEXT,
    NotificationSent        INTEGER,
    ContactPhone            TEXT,
    BackupVehicleID         INTEGER,
    RouteMapPath            TEXT,
    ComplianceFlag          INTEGER,
    LastModifiedBy          TEXT,
    ModificationReason      TEXT
);

INSERT INTO FacilityTransportSchedule VALUES (1,1001,'2023-08-01','2023-08-01','WarehouseA','LabB','Truck',2001,3001,'EquipmentMove','High','Scheduled','2023-07-25','2023-07-25','N/A',5000.0,12.5,30.0,1,'PERM123','Sarah','2023-07-20',1,'Ground','Clear','Day',1,'5551234',2002,'/maps/route1.png',1,'Mike','Initial creation');
INSERT INTO FacilityTransportSchedule VALUES (2,1002,'2023-08-03','2023-08-03','Room101','Room202','Cart',2002,3002,'SupplyRestock','Medium','Scheduled','2023-07-26','2023-07-26','Urgent',200.0,0.8,5.0,1,'PERM124','Tom','2023-07-21',1,'Ground','Clear','Morning',0,'5555678',2003,'/maps/route2.png',1,'Anna','Added due to demand');
INSERT INTO FacilityTransportSchedule VALUES (3,1003,'2023-08-05','2023-08-05','Pharmacy','ER','Van',2003,3003,'MedicationDelivery','Low','Completed','2023-07-27','2023-07-27','Delivered on time',100.0,3.0,8.0,1,'PERM125','Laura','2023-07-22',1,'Ground','Rain','Evening',1,'5559012',2004,'/maps/route3.png',1,'John','Completed successfully');

-- Biomedical Equipment Calibration Log
CREATE TABLE BiomedicalEquipmentCalibrationLog
(
    LogID                   INTEGER PRIMARY KEY,
    EquipmentID             INTEGER,
    CalibrationDate         DATE,
    TechnicianID            INTEGER,
    CalibrationType         TEXT,
    StandardUsed            TEXT,
    Result                  TEXT,
    Deviation               REAL,
    NextDueDate             DATE,
    Comments                TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    CalibrationProcedure    TEXT,
    EquipmentSerial         TEXT,
    Manufacturer            TEXT,
    ModelNumber             TEXT,
    SoftwareVersion         TEXT,
    CalibrationLocation     TEXT,
    EnvironmentalTempC      REAL,
    EnvironmentalHumidity   REAL,
    CalibrationDurationMin  INTEGER,
    ApprovalStatus          TEXT,
    ApprovedBy              TEXT,
    ApprovalDate            DATE,
    RecalibrationRequired   INTEGER,
    CalibrationAgent        TEXT,
    CalibrationMethod       TEXT,
    CalibrationReportPath   TEXT,
    QualityControlFlag      INTEGER,
    InspectionID            INTEGER,
    AdditionalNotes         TEXT,
    CalibrationCostUSD      REAL,
    FaultCode               TEXT,
    MaintenanceScheduleID   INTEGER,
    VerificationDate        DATE,
    VerifiedBy              TEXT
);

INSERT INTO BiomedicalEquipmentCalibrationLog VALUES (1,4001,'2023-04-10',6001,'Electrical','ISO9001','Pass',0.02,'2024-04-10','All parameters within spec','2023-04-10','2023-04-10','ProcedureA','SN001','MedTech','ModelA','v1.2','Lab1',22.5,45.0,30,'Approved','DrSmith','2023-04-11',0,'AgentX','MethodY','/reports/cal1.pdf',1,5001,'','500.0','FC01',3001,'2023-04-12','TechA');
INSERT INTO BiomedicalEquipmentCalibrationLog VALUES (2,4002,'2023-05-15',6002,'Mechanical','ISO14001','Fail',0.15,'2023-11-15','Alignment off','2023-05-15','2023-05-15','ProcedureB','SN002','HealthCorp','ModelB','v3.4','Lab2',18.0,50.0,45,'Pending','DrJones','2023-05-16',1,'AgentY','MethodZ','/reports/cal2.pdf',0,5002,'Recal needed','800.0','FC02',3002,'2023-05-17','TechB');
INSERT INTO BiomedicalEquipmentCalibrationLog VALUES (3,4003,'2023-06-20',6003,'Software','ISO27001','Pass',0.00,'2024-06-20','Software update applied','2023-06-20','2023-06-20','ProcedureC','SN003','BioMed','ModelC','v5.0','Lab3',20.0,40.0,20,'Approved','DrLee','2023-06-21',0,'AgentZ','MethodX','/reports/cal3.pdf',1,5003,'','600.0','FC03',3003,'2023-06-22','TechC');

-- Medical Supply Recall Notice
CREATE TABLE MedicalSupplyRecallNotice
(
    RecallID                INTEGER PRIMARY KEY,
    ProductCode             TEXT,
    ProductName             TEXT,
    Manufacturer            TEXT,
    RecallDate              DATE,
    Reason                  TEXT,
    AffectedBatch           TEXT,
    DistributionRegion      TEXT,
    ContactInfo             TEXT,
    Status                  TEXT,
    AdditionalInfo          TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    RecallLevel             TEXT,
    Agency                  TEXT,
    NotificationMethod      TEXT,
    QuarantineLocation      TEXT,
    EstimatedUnitsAffected  INTEGER,
    ReplacementAvailable    INTEGER,
    RefundPolicy            TEXT,
    LegalReference          TEXT,
    CommunicationChannel    TEXT,
    FollowUpDate            DATE,
    DocumentationLink       TEXT,
    SeverityScore           INTEGER,
    OversightCommittee      TEXT,
    ApprovalOfficer         TEXT,
    ApprovalDate            DATE,
    PublicStatementURL      TEXT,
    MediaReleaseDate        DATE,
    PressContact            TEXT
);

INSERT INTO MedicalSupplyRecallNotice VALUES (1,'PRD001','SalineBag','MediCorp','2023-07-01','Contamination','BATCHA','NorthRegion','8005551234','Open','','2023-07-01','2023-07-01','High','FDA','Email','WarehouseX',2000,1,'FullRefund','21CFR','Email','2023-07-15','/docs/recall1.pdf',9,'CommitteeA','OfficerA','2023-07-02','http://example.com/statement1','2023-07-02','PRContactA');
INSERT INTO MedicalSupplyRecallNotice VALUES (2,'PRD002','Gloves','SafeHand','2023-08-10','PackagingError','BATCHB','SouthRegion','8005555678','Closed','All units returned','2023-08-10','2023-08-10','Medium','HealthCanada','Letter','WarehouseY',500,0,'NoRefund','21CFR','Phone','2023-08-20','/docs/recall2.pdf',5,'CommitteeB','OfficerB','2023-08-11','http://example.com/statement2','2023-08-11','PRContactB');
INSERT INTO MedicalSupplyRecallNotice VALUES (3,'PRD003','Syringe','InjectCo','2023-09-05','LabelMisprint','BATCHC','EastRegion','8005559012','Open','Investigating impact','2023-09-05','2023-09-05','Low','EMA','SMS','WarehouseZ',300,1,'ExchangeOnly','21CFR','SMS','2023-09-15','/docs/recall3.pdf',3,'CommitteeC','OfficerC','2023-09-06','http://example.com/statement3','2023-09-06','PRContactC');

-- Health Data Exchange Log
CREATE TABLE HealthDataExchangeLog
(
    ExchangeID              INTEGER PRIMARY KEY,
    SourceSystem            TEXT,
    DestinationSystem       TEXT,
    DataType                TEXT,
    RecordCount             INTEGER,
    TransferDate            DATE,
    TransferTime            TEXT,
    Status                  TEXT,
    ErrorCode               TEXT,
    InitiatedBy             TEXT,
    VerifiedBy              TEXT,
    Comments                TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    TransferMethod          TEXT,
    EncryptionUsed          TEXT,
    CompressionApplied      INTEGER,
    FileFormat              TEXT,
    BatchIdentifier         TEXT,
    ProtocolVersion         TEXT,
    RetryCount              INTEGER,
    AuditTrailLink          TEXT,
    DataSensitivityLevel   TEXT,
    RetentionPeriodDays     INTEGER,
    DataOwnerDepartment     TEXT,
    NotificationSent        INTEGER,
    NotificationMethod      TEXT,
    TransferDurationSec     INTEGER,
    Checksum                TEXT,
    TransferSizeMB          REAL,
    AuthToken               TEXT,
    ComplianceStandard      TEXT,
    RoutingPath             TEXT,
    DestinationEndpoint     TEXT,
    SourceEndpoint          TEXT,
    TransferPriority        TEXT,
    Scheduler               TEXT,
    ScheduleTime            DATE,
    AdditionalMetadata      TEXT
);

INSERT INTO HealthDataExchangeLog VALUES (1,'EHRSystem','ResearchDB','LabResults',1500,'2023-06-01','12:30','Success','','Alice','Bob','', '2023-06-01','2023-06-01','SFTP','AES256',1,'CSV','BATCH001','1.0',0,'/audit/1','High',365,'LabDept',1,'Email',45,'ABC123',12.5,'token123','HIPAA','PathA','ResearchEndpoint','EHREndpoint','High','SchedulerA','2023-06-01','MetaA');
INSERT INTO HealthDataExchangeLog VALUES (2,'BillingSystem','AnalyticsDB','BillingRecords',800,'2023-06-15','09:15','Success','','Carol','Dave','', '2023-06-15','2023-06-15','HTTPS','TLS1.2',0,'JSON','BATCH002','2.0',0,'/audit/2','Medium',730,'FinanceDept',1,'SMS',30,'DEF456',8.0,'token456','PCI','PathB','AnalyticsEndpoint','BillingEndpoint','Medium','SchedulerB','2023-06-15','MetaB');
INSERT INTO HealthDataExchangeLog VALUES (3,'ImagingPACS','AIModelRepo','Images',250,'2023-07-05','14:45','Failed','ERR42','Eve','Frank','Network timeout','2023-07-05','2023-07-05','SFTP','AES128',1,'DICOM','BATCH003','1.1',1,'/audit/3','High',180,'ImagingDept',1,'Email',120,'GHI789',25.0,'token789','HIPAA','PathC','AIRepoEndpoint','PACSendpoint','High','SchedulerC','2023-07-05','MetaC');

-- Facility Energy Consumption Detail
CREATE TABLE FacilityEnergyConsumptionDetail
(
    RecordID                INTEGER PRIMARY KEY,
    FacilityID              INTEGER,
    EnergySource            TEXT,
    RecordDate              DATE,
    ConsumptionKWh          REAL,
    PeakDemandKW            REAL,
    TemperatureC            REAL,
    HumidityPercent         REAL,
    CostUSD                 REAL,
    CO2EmissionsKg         REAL,
    MeterReadingStart       REAL,
    MeterReadingEnd         REAL,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    BillingPeriodStart      DATE,
    BillingPeriodEnd        DATE,
    MeterSerialNumber       TEXT,
    UtilityProvider         TEXT,
    ContractType            TEXT,
    RenewablePercentage     REAL,
    DemandChargeUSD         REAL,
    FixedChargeUSD          REAL,
    AdjustmentFactor        REAL,
    Notes                   TEXT,
    VerificationStatus      TEXT,
    VerifiedBy              TEXT,
    VerificationDate        DATE,
    DataSourceSystem        TEXT,
    RegionCode              TEXT,
    LoadFactor              REAL,
    SeasonalAdjustment      REAL,
    EnergyEfficiencyRating  TEXT,
    CarbonOffsetPurchasedKg REAL,
    IncentiveProgram        TEXT,
    ReportingPeriodQuarter  TEXT,
    ReportingPeriodYear     INTEGER,
    AuditTrailLink          TEXT,
    AdditionalInfo          TEXT,
    DataQualityScore        INTEGER
);

INSERT INTO FacilityEnergyConsumptionDetail VALUES (1,10,'Electric','2023-04-30',12500.5,250.0,22.5,45.0,1500.75,8200.0,10000.0,11250.5,'2023-04-30','2023-04-30','2023-04-01','2023-04-30','SN-ELEC-001','PowerCo','Fixed','20.0',200.0,100.0,1.05,'No issues','Verified','Megan','2023-05-01','EnergySys','RC01',0.65,0.00,'A+','300.0','GreenIncentive','Q2','2023','/audit/energy1','',95);
INSERT INTO FacilityEnergyConsumptionDetail VALUES (2,12,'Gas','2023-04-30',8600.0,180.0,18.0,55.0,950.0,5400.0,5000.0,6360.0,'2023-04-30','2023-04-30','2023-04-01','2023-04-30','SN-GAS-002','GasCo','Variable','0.0',150.0,80.0,0.98,'Seasonal adjustment applied','Pending','Luis','2023-05-02','GasSys','RC02',0.58,0.05,'B','0.0','None','Q2','2023','/audit/energy2','Check valve',88);
INSERT INTO FacilityEnergyConsumptionDetail VALUES (3,15,'Solar','2023-04-30',3000.0,0.0,25.0,40.0,0.0,0.0,0.0,3000.0,'2023-04-30','2023-04-30','2023-04-01','2023-04-30','SN-SOL-003','SolarInc','FeedIn','100.0',0.0,0.0,1.00','Peak generation day','Verified','Ana','2023-05-01','SolarSys','RC03',1.00,0.00','A+','0.0','FeedInTariff','Q2','2023','/audit/energy3','',98);