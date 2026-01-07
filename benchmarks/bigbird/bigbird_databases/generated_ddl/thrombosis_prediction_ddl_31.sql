-- Pharmacy batch distribution details
CREATE TABLE PharmacyBatchDistribution
(
    BatchID               INTEGER,
    DistributionDate      DATE,
    PharmacyID            INTEGER,
    DrugCode              TEXT,
    Quantity              INTEGER,
    Unit                  TEXT,
    ExpirationDate        DATE,
    ReceivedBy            TEXT,
    TemperatureLog        TEXT,
    Courier               TEXT,
    TrackingNumber        TEXT,
    BatchLot              TEXT,
    Manufacturer          TEXT,
    StorageCondition      TEXT,
    DistributionChannel   TEXT,
    PrimaryContact        TEXT,
    Notes                 TEXT,
    Validated             INTEGER,
    QualityCheck          INTEGER,
    Refrigerated          INTEGER
);

INSERT INTO PharmacyBatchDistribution VALUES (1001,'2025-03-01',12,'DRG001',500,'vial','2026-03-01','Alice','4Cto8C','FastShip','TRK12345','LOT2025A','PharmaCo','cool','internal','Bob','none',1,1,1);
INSERT INTO PharmacyBatchDistribution VALUES (1002,'2025-03-02',15,'DRG002',300,'tablet','2025-12-31','Charlie','roomtemp','HealthLogistics','TRK12346','LOT2025B','MediMakers','roomtemp','external','Dana','urgent',1,0,0);
INSERT INTO PharmacyBatchDistribution VALUES (1003,'2025-03-03',18,'DRG003',250,'ampule','2025-09-30','Eve','2Cto6C','QuickMed','TRK12347','LOT2025C','BioHealth','cool','internal','Frank','delayed',0,1,1);

-- Utilization statistics for medical devices
CREATE TABLE MedicalDeviceUtilizationStat
(
    DeviceID               INTEGER,
    UsageDate              DATE,
    DepartmentID           INTEGER,
    HoursUsed              REAL,
    PatientsServed         INTEGER,
    DowntimeMinutes        INTEGER,
    MaintenanceFlag        INTEGER,
    OperatorID             INTEGER,
    CalibrationDate        DATE,
    SoftwareVersion        TEXT,
    FirmwareVersion        TEXT,
    UsageType              TEXT,
    EnergyConsumptionKWh   REAL,
    CycleCount             INTEGER,
    ErrorCount             INTEGER,
    LastErrorCode          TEXT,
    WarrantyStatus         TEXT,
    RemoteMonitoring       INTEGER,
    UtilizationScore       REAL,
    Notes                  TEXT
);

INSERT INTO MedicalDeviceUtilizationStat VALUES (2001,'2025-04-01',5,12.5,30,15,0,301,'2025-01-15','v2.1','f3.4','diagnostic',45.6,1200,2,'E01','valid',1,85.3,'none');
INSERT INTO MedicalDeviceUtilizationStat VALUES (2002,'2025-04-01',7,8.0,20,30,1,305,'2024-12-20','v2.0','f3.2','therapy',32.1,800,5,'E02','expired',0,70.1,'maintenance required');
INSERT INTO MedicalDeviceUtilizationStat VALUES (2003,'2025-04-01',3,16.2,45,5,0,310,'2025-02-10','v2.2','f3.5','monitoring',60.0,1500,1,'E00','valid',1,92.7,'optimal');

-- Utilization of hospital energy sources
CREATE TABLE HospitalEnergySourceUtilization
(
    SourceID               INTEGER,
    RecordDate             DATE,
    SourceType             TEXT,
    EnergyGeneratedMWh     REAL,
    CostUSD                REAL,
    CarbonEmissionsKg     REAL,
    CapacityMW             REAL,
    AvailabilityPercent    REAL,
    MaintenanceStatus      TEXT,
    OperatorID             INTEGER,
    FuelConsumptionBarrels REAL,
    VoltageLevelKV         REAL,
    FrequencyHz            REAL,
    StartTime              TEXT,
    EndTime                TEXT,
    GridConnectionStatus   TEXT,
    BackupAvailable        INTEGER,
    EmissionFactorCO2      REAL,
    RenewablePercentage    REAL,
    Comments               TEXT
);

INSERT INTO HospitalEnergySourceUtilization VALUES (1,'2025-05-01','solar',120.5,15000,0,0.5,98.5,'operational',401,0,0.4,60.0,'06:00','18:00','connected',1,0,100,'peak production');
INSERT INTO HospitalEnergySourceUtilization VALUES (2,'2025-05-01','diesel',80.0,25000,180,2.0,95.0,'maintenance',402,50,0.38,60.0,'00:00','24:00','connected',0,3.2,0,'scheduled maintenance');
INSERT INTO HospitalEnergySourceUtilization VALUES (3,'2025-05-01','grid',200.0,30000,150,5.0,99.0,'operational',403,0,0.45,60.0,'00:00','24:00','connected',1,0.5,20,'stable supply');

-- Adherence records for clinical guidelines
CREATE TABLE ClinicalGuidelineAdherence
(
    GuidelineID            INTEGER,
    EncounterID            INTEGER,
    ProviderID             INTEGER,
    AdherenceScore         REAL,
    DeviationReason        TEXT,
    RecordedTimestamp      DATETIME,
    DepartmentID           INTEGER,
    PatientAgeGroup        TEXT,
    SeverityLevel          TEXT,
    FollowUpRequired       INTEGER,
    DocumentationComplete INTEGER,
    AuditFlag              INTEGER,
    ReviewDate             DATE,
    ReviewerID             INTEGER,
    Comments               TEXT,
    ActionPlanID           INTEGER,
    RiskLevel              TEXT,
    ImplementationPhase    TEXT,
    ComplianceCategory     TEXT,
    MetricSource           TEXT
);

INSERT INTO ClinicalGuidelineAdherence VALUES (101,5001,301,95.0,'none','2025-06-01 10:15:00',5,'adult','moderate',0,1,0,'2025-06-05',401,'on target',1001,'low','initial','primary','system');
INSERT INTO ClinicalGuidelineAdherence VALUES (102,5002,302,80.0,'dosage variance','2025-06-01 11:20:00',6,'senior','high',1,0,1,'2025-06-07',402,'review needed',1002,'medium','followup','secondary','manual');
INSERT INTO ClinicalGuidelineAdherence VALUES (103,5003,303,60.0,'missing labs','2025-06-01 12:30:00',7,'pediatric','low',1,0,1,'2025-06-10',403,'action required',1003,'high','remedial','tertiary','automated');

-- Risk assessment for supply chain shipments
CREATE TABLE SupplyChainShipmentRiskAssessment
(
    ShipmentID               INTEGER,
    AssessmentDate           DATE,
    RiskScore                REAL,
    DelayProbabilityPercent REAL,
    WeatherImpactScore       REAL,
    CustomsDelayHours        INTEGER,
    InspectionResult         TEXT,
    MitigationPlan           TEXT,
    AssessorID               INTEGER,
    CarrierRating            REAL,
    PackagingIntegrityScore  REAL,
    TemperatureControlFlag   INTEGER,
    SecurityAlertFlag        INTEGER,
    DocumentationCompleteness INTEGER,
    ContingencyAvailable     INTEGER,
    EstimatedValueUSD        REAL,
    HazardousMaterialFlag   INTEGER,
    RouteComplexityScore    REAL,
    HistoricalPerformanceScore REAL,
    Comments                 TEXT
);

INSERT INTO SupplyChainShipmentRiskAssessment VALUES (9001,'2025-07-01',2.5,10.0,1.2,4,'pass','reroute if storms',501,4.5,9.0,1,0,1,1,15000,0,3.0,8.5,'low risk');
INSERT INTO SupplyChainShipmentRiskAssessment VALUES (9002,'2025-07-02',7.8,40.0,3.5,12,'hold','expedite customs',502,3.0,6.5,0,1,0,0,25000,1,6.0,5.2,'medium risk');
INSERT INTO SupplyChainShipmentRiskAssessment VALUES (9003,'2025-07-03',9.2,70.0,5.0,24,'fail','use air freight',503,2.0,4.0,0,1,0,0,50000,1,8.0,3.0,'high risk');

-- Facility air quality monitoring
CREATE TABLE FacilityAirQualityMonitoring
(
    MonitorID               INTEGER,
    Timestamp               DATETIME,
    Location                TEXT,
    PM2_5_ugm3              REAL,
    PM10_ugm3               REAL,
    CO2_ppm                 REAL,
    VOC_ppb                 REAL,
    TemperatureC            REAL,
    HumidityPct             REAL,
    NoiseLevelDb            REAL,
    AirChangeRatePerHour    REAL,
    CalibrationDate         DATE,
    SensorStatus            TEXT,
    BatteryLevelPercent     INTEGER,
    FirmwareVersion         TEXT,
    DataValidityFlag        INTEGER,
    MaintenanceDueDate      DATE,
    AlertThresholdExceeded  INTEGER,
    OperatorID              INTEGER,
    Comments                TEXT
);

INSERT INTO FacilityAirQualityMonitoring VALUES (301,'2025-08-01 08:00:00','WardA',12.5,25.0,600,150,22.5,45,55,5.0,'2025-01-15','OK',95,'v1.0',1,'2025-12-01',0,401,'normal');
INSERT INTO FacilityAirQualityMonitoring VALUES (302,'2025-08-01 08:00:00','ICU',35.0,70.0,1200,300,23.0,50,70,3.5,'2025-02-20','WARN',80,'v1.1',0,'2025-11-15',1,402,'high CO2');
INSERT INTO FacilityAirQualityMonitoring VALUES (303,'2025-08-01 08:00:00','Lobby',8.0,15.0,400,80,21.0,40,45,6.0,'2025-03-10','OK',99,'v1.0',1,'2026-01-10',0,403,'good');

-- Battery log for wearable devices
CREATE TABLE WearableDeviceBatteryLog
(
    DeviceSerial           TEXT,
    LogDate                DATE,
    BatteryLevelPercent    INTEGER,
    ChargingStatus         TEXT,
    TemperatureC           REAL,
    VoltageV               REAL,
    CurrentMA              REAL,
    HealthStatus           TEXT,
    FirmwareVersion        TEXT,
    LastServiceDate        DATE,
    UsageHoursSinceService INTEGER,
    AlertFlag              INTEGER,
    OwnerID                INTEGER,
    LocationID             INTEGER,
    SoftwarePatchLevel     TEXT,
    CalibrationStatus      TEXT,
    ReplacementDueDate     DATE,
    PowerSourceType        TEXT,
    EventLog               TEXT,
    Comments               TEXT
);

INSERT INTO WearableDeviceBatteryLog VALUES ('WD12345','2025-09-01',85,'discharging',30.2,3.7,150,'good','v2.3','2025-06-01',200,0,601,21,'patch01','calibrated','2026-06-01','rechargeable','none');
INSERT INTO WearableDeviceBatteryLog VALUES ('WD12346','2025-09-01',45,'charging',28.5,3.8,200,'fair','v2.3','2025-06-01',210,1,602,22,'patch01','calibrated','2026-06-01','rechargeable','low battery');
INSERT INTO WearableDeviceBatteryLog VALUES ('WD12347','2025-09-01',10,'discharging',31.0,3.6,100,'poor','v2.3','2025-06-01',215,1,603,23,'patch02','needs_calibration','2026-06-01','rechargeable','replace soon');

-- Version control for research data sets
CREATE TABLE ResearchDataVersionControl
(
    DataSetID            INTEGER,
    VersionNumber        INTEGER,
    CreatedBy            TEXT,
    CreatedAt            DATETIME,
    ChangeDescription    TEXT,
    FileChecksum         TEXT,
    SizeBytes            INTEGER,
    StorageLocation      TEXT,
    AccessLevel          TEXT,
    ApprovalStatus       TEXT,
    ReviewerID           INTEGER,
    ReviewDate           DATE,
    ReleaseFlag          INTEGER,
    DeprecationDate      DATE,
    RelatedProjectID     INTEGER,
    LicenseType          TEXT,
    EncryptionMethod     TEXT,
    CompressionRatio     REAL,
    DataFormatVersion    TEXT,
    Comments             TEXT
);

INSERT INTO ResearchDataVersionControl VALUES (4001,1,'alice','2025-10-01 09:00:00','initial upload','abc123def456',2048000,'/datasets/4001/v1','public','approved',701,'2025-10-02',1,NULL,5001,'CC0','AES256',1.0,'v1.0','none');
INSERT INTO ResearchDataVersionControl VALUES (4001,2,'bob','2025-11-01 10:30:00','added new variables','def789ghi012',3072000,'/datasets/4001/v2','restricted','pending',702,'2025-11-02',0,NULL,5001,'CC-BY','AES256',0.9,'v1.1','pending review');
INSERT INTO ResearchDataVersionControl VALUES (4002,1,'carol','2025-10-15 14:20:00','baseline data','jkl345mno678',1024000,'/datasets/4002/v1','public','approved',703,'2025-10-16',1,NULL,5002,'CC0','AES256',1.0,'v1.0','none');

-- Environmental control settings per hospital room
CREATE TABLE RoomEnvironmentalControl
(
    RoomID                 INTEGER,
    RecordDate             DATE,
    TemperatureSetpointC   REAL,
    ActualTemperatureC     REAL,
    HumiditySetpointPct    REAL,
    ActualHumidityPct      REAL,
    CO2SetpointPpm         REAL,
    ActualCO2Ppm           REAL,
    VentilationMode        TEXT,
    MaintenanceFlag        INTEGER,
    FanSpeedRPM            INTEGER,
    FilterChangeDueDate    DATE,
    AirflowDirection       TEXT,
    OccupancyStatus        TEXT,
    NoiseThresholdDb       REAL,
    LightingLevelLux       REAL,
    UVDisinfectionEnabled  INTEGER,
    SensorCalibrationDate  DATE,
    EnergySavingMode       INTEGER,
    Comments               TEXT
);

INSERT INTO RoomEnvironmentalControl VALUES (101,'2025-11-01',22.0,22.3,45,46,800,820,'auto',0,1500,'2026-01-01','supply','occupied',60,300,0,'2025-06-01',1,'none');
INSERT INTO RoomEnvironmentalControl VALUES (102,'2025-11-01',21.0,21.5,50,49,750,770,'manual',1,1400,'2025-12-15','exhaust','vacant',55,350,1,'2025-05-15',0,'maintenance pending');
INSERT INTO RoomEnvironmentalControl VALUES (103,'2025-11-01',23.0,23.1,40,41,900,910,'auto',0,1600,'2026-02-01','mixed','occupied',65,250,0,'2025-07-01',1,'optimal');

-- Schedule of site visits for clinical trials
CREATE TABLE ClinicalTrialSiteVisitSchedule
(
    SiteID                 INTEGER,
    VisitNumber            INTEGER,
    ScheduledDate          DATE,
    LeadInvestigatorID     INTEGER,
    ActivitiesPlanned      TEXT,
    RequiredMaterials      TEXT,
    EstimatedDurationHours REAL,
    Status                 TEXT,
    ConfirmationReceived   INTEGER,
    VisitPurpose           TEXT,
    RiskAssessmentScore    REAL,
    TravelArrangementsID   INTEGER,
    BudgetAllocationUSD    REAL,
    DocumentationComplete  INTEGER,
    FollowUpActionID       INTEGER,
    RegulatoryCompliance   TEXT,
    EthicalApprovalStatus  TEXT,
    Notes                  TEXT,
    CreatedBy              TEXT,
    CreatedAt              DATETIME
);

INSERT INTO ClinicalTrialSiteVisitSchedule VALUES (301,1,'2025-12-01',801,'patient enrollment, consent','consent forms, tablets',8.0,'scheduled',0,'baseline','low',901,12000,0,1001,'compliant','approved','none','admin','2025-09-15 08:00:00');
INSERT INTO ClinicalTrialSiteVisitSchedule VALUES (301,2,'2026-01-15',801,'data monitoring, QA','monitoring checklist',6.0,'pending',0,'interim','medium',902,8000,0,1002,'compliant','approved','awaiting docs','admin','2025-10-01 09:30:00');
INSERT INTO ClinicalTrialSiteVisitSchedule VALUES (302,1,'2025-12-10',802,'site initiation','training materials',10.0,'completed',1,'initiation','low',903,15000,1,1003,'compliant','approved','all good','admin','2025-09-20 10:15:00');

-- Risk assessment for supply chain shipments (duplicate name avoided)
-- Additional table: SupplyChainShipmentLogDetail
CREATE TABLE SupplyChainShipmentLogDetail
(
    ShipmentLogID          INTEGER,
    ShipmentID             INTEGER,
    LogTimestamp           DATETIME,
    EventType              TEXT,
    Location               TEXT,
    ResponsiblePartyID     INTEGER,
    StatusDescription      TEXT,
    EstimatedArrival       DATE,
    ActualArrival          DATE,
    DelayReason            TEXT,
    TemperatureControlFlag INTEGER,
    SecurityCheckFlag      INTEGER,
    DocumentationStatus    TEXT,
    CarrierName            TEXT,
    FreightCostUSD         REAL,
    WeightKg               REAL,
    VolumeCubicMeters      REAL,
    HazardousMaterialFlag INTEGER,
    InsuranceCoveredFlag   INTEGER,
    Comments               TEXT
);

INSERT INTO SupplyChainShipmentLogDetail VALUES (1,9001,'2025-07-01 08:00:00','pickup','WarehouseA',501,'on time','2025-07-03','2025-07-03','none',1,1,'complete','FastShip',500.0,1200.0,3.5,0,1,'');
INSERT INTO SupplyChainShipmentLogDetail VALUES (2,9002,'2025-07-02 09:15:00','customs','PortB',502,'held','2025-07-05','2025-07-07','customs delay',0,1,'incomplete','HealthLogistics',750.0,2000.0,4.0,1,1,'');
INSERT INTO SupplyChainShipmentLogDetail VALUES (3,9003,'2025-07-03 07:45:00','delivery','HospitalC',503,'delivered','2025-07-04','2025-07-04','none',1,0,'complete','QuickMed',300.0,800.0,2.0,0,1,'');

-- Additional table: EnvironmentalComplianceAudit
CREATE TABLE EnvironmentalComplianceAudit
(
    AuditID                INTEGER,
    AuditDate              DATE,
    FacilityID             INTEGER,
    AuditorID              INTEGER,
    ComplianceArea         TEXT,
    FindingsSummary        TEXT,
    SeverityLevel          TEXT,
    CorrectiveActionID     INTEGER,
    DeadlineDate           DATE,
    FollowUpStatus         TEXT,
    DocumentationLink      TEXT,
    PriorAuditReference    INTEGER,
    Notes                  TEXT,
    InspectionScore        REAL,
    RegulatoryReference    TEXT,
    NonComplianceCount    INTEGER,
    SamplingMethod         TEXT,
    SampleSize             INTEGER,
    ObservationTime        TIME,
    PhotoEvidencePath      TEXT
);

INSERT INTO EnvironmentalComplianceAudit VALUES (10001,'2025-08-15',10,601,'air quality','minor exceedances','low',2001,'2025-09-30','in progress','/docs/audit10001.pdf',9000,'none',85.0,'EPA-40','2','continuous',5,'14:00:00','/photos/aq1.jpg');
INSERT INTO EnvironmentalComplianceAudit VALUES (10002,'2025-08-20',12,602,'waste disposal','improper labeling','medium',2002,'2025-10-15','pending','/docs/audit10002.pdf',9001,'review required',72.5,'ISO-14001','4','spot',3,'10:30:00','/photos/wd1.jpg');
INSERT INTO EnvironmentalComplianceAudit VALUES (10003,'2025-08-25',14,603,'water discharge','significant pollutant levels','high',2003,'2025-09-10','complete','/docs/audit10003.pdf',9002,'action taken',60.0,'LocalReg-12','5','grab',4,'09:15:00','/photos/wd2.jpg');