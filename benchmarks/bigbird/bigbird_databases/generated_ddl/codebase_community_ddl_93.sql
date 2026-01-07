-- Table storing information about research project grants
CREATE TABLE research_project_grants
(
    GrantId               INTEGER PRIMARY KEY,
    ProjectId             INTEGER,
    SponsorName           TEXT,
    GrantAmount           REAL,
    Currency              TEXT,
    StartDate             DATETIME,
    EndDate               DATETIME,
    GrantTitle            TEXT,
    GrantDescription      TEXT,
    FundingAgency         TEXT,
    Department            TEXT,
    PrincipalInvestigatorId INTEGER,
    CoInvestigatorIds     TEXT,
    GrantStatus           TEXT,
    ReviewScore           INTEGER,
    AwardedDate           DATETIME,
    ExpirationDate        DATETIME,
    BudgetNotes           TEXT,
    ComplianceFlag        INTEGER,
    ReportingFrequency    TEXT,
    ContactEmail          TEXT,
    IsRenewable           INTEGER
);

INSERT INTO research_project_grants (GrantId,ProjectId,SponsorName,GrantAmount,Currency,StartDate,EndDate,GrantTitle,GrantDescription,FundingAgency,Department,PrincipalInvestigatorId,CoInvestigatorIds,GrantStatus,ReviewScore,AwardedDate,ExpirationDate,BudgetNotes,ComplianceFlag,ReportingFrequency,ContactEmail,IsRenewable) VALUES
(1,101,'National Science Foundation',500000,'USD','2023-01-01','2026-12-31','AI for Health','Research on AI applications in healthcare','NSF','ComputerScience',1001,'1002,1003','Active',85,'2022-12-15','2026-12-31','Quarterly budget reviews',1,'Quarterly','pi1@example.com',1),
(2,102,'Department of Energy',750000,'USD','2022-06-15','2025-06-14','Renewable Energy Storage','Developing novel battery technologies','DOE','ElectricalEngineering',1004,'1005','Active',90,'2022-05-30','2025-06-14','Annual financial audit',1,'Annual','pi2@example.com',0),
(3,103,'Health Research Council',300000,'NZD','2024-03-01','2027-02-28','Public Health Surveillance','Improving disease surveillance systems','HRC','PublicHealth',1006,'1007,1008','Pending',0,'2023-12-01','2027-02-28','Initial budget allocation',0,'SemiAnnual','pi3@example.com',1);

-- Table describing inventory of IoT devices deployed in the platform
CREATE TABLE iot_device_inventory
(
    DeviceId               INTEGER PRIMARY KEY,
    DeviceSerialNumber     TEXT,
    ModelName              TEXT,
    Manufacturer           TEXT,
    FirmwareVersion        TEXT,
    PurchaseDate           DATETIME,
    WarrantyExpiryDate     DATETIME,
    DeploymentLocation     TEXT,
    Latitude               REAL,
    Longitude              REAL,
    Status                 TEXT,
    LastOnlineTimestamp    DATETIME,
    BatteryLevelPercent    INTEGER,
    SignalStrengthDbm      INTEGER,
    ConnectivityType       TEXT,
    AssignedUserId         INTEGER,
    NetworkOperator        TEXT,
    MACAddress             TEXT,
    IPAddress              TEXT,
    PowerSource            TEXT,
    MaintenanceSchedule    TEXT,
    SupportsOTA            INTEGER,
    LastFirmwareUpdate     DATETIME,
    OwnerDepartment        TEXT,
    AssetTag               TEXT
);

INSERT INTO iot_device_inventory (DeviceId,DeviceSerialNumber,ModelName,Manufacturer,FirmwareVersion,PurchaseDate,WarrantyExpiryDate,DeploymentLocation,Latitude,Longitude,Status,LastOnlineTimestamp,BatteryLevelPercent,SignalStrengthDbm,ConnectivityType,AssignedUserId,NetworkOperator,MACAddress,IPAddress,PowerSource,MaintenanceSchedule,SupportsOTA,LastFirmwareUpdate,OwnerDepartment,AssetTag) VALUES
(1,'SN10001','EnviroSensorX','AcmeSensors','1.2.3','2021-04-12','2024-04-12','BuildingA_Room101',-33.865143,151.209900,'Online','2025-01-10','78','-70','WiFi',2001,'TelcoA','00-1A-2B-3C-4D-5E','192.168.1.10','Battery','2024-10-01',1,'2024-09-15','Facilities','AT10001'),
(2,'SN10002','EnviroSensorX','AcmeSensors','1.2.3','2021-05-20','2024-05-20','BuildingA_Room102',-33.865200,151.210000,'Offline','2025-01-08','0','-80','WiFi',2002,'TelcoA','00-1A-2B-3C-4D-5F','192.168.1.11','Battery','2024-11-01',1,'2024-09-20','Facilities','AT10002'),
(3,'SN20001','SmartCamPro','VisionTech','3.5.1','2022-01-15','2025-01-15','Lobby','-33.867000','151.207000','Online','2025-01-10','100','-60','Ethernet',2003,'TelcoB','00-1A-2B-3C-4D-6A','10.0.0.5','Mains','2024-12-01',1,'2024-10-30','Security','AT20001');

-- Table containing metadata for media assets stored in the system
CREATE TABLE media_asset_metadata
(
    AssetId               INTEGER PRIMARY KEY,
    FileName              TEXT,
    FileExtension         TEXT,
    MimeType              TEXT,
    FileSizeBytes         INTEGER,
    DurationSeconds       INTEGER,
    WidthPixels           INTEGER,
    HeightPixels          INTEGER,
    BitrateKbps           INTEGER,
    Codec                 TEXT,
    CreatorUserId         INTEGER,
    CreationTimestamp     DATETIME,
    LastModifiedTimestamp DATETIME,
    LicenseType           TEXT,
    LicenseExpirationDate DATETIME,
    Tags                  TEXT,
    Description           TEXT,
    Language              TEXT,
    IsPublic              INTEGER,
    ViewCount             INTEGER,
    DownloadCount         INTEGER,
    RatingAverage         REAL,
    RatingCount           INTEGER,
    SourceUrl             TEXT,
    ThumbnailUrl          TEXT,
    Category              TEXT,
    Subcategory           TEXT,
    ContentRating         TEXT
);

INSERT INTO media_asset_metadata (AssetId,FileName,FileExtension,MimeType,FileSizeBytes,DurationSeconds,WidthPixels,HeightPixels,BitrateKbps,Codec,CreatorUserId,CreationTimestamp,LastModifiedTimestamp,LicenseType,LicenseExpirationDate,Tags,Description,Language,IsPublic,ViewCount,DownloadCount,RatingAverage,RatingCount,SourceUrl,ThumbnailUrl,Category,Subcategory,ContentRating) VALUES
(1,'intro_video','mp4','video/mp4',104857600,300,1920,1080,2500,'H.264',1001,'2023-03-01','2025-01-01','Standard','2025-12-31','intro,training','Company introduction video','en',1,1500,200,4.5,120,'http://media.example.com/intro_video.mp4','http://media.example.com/thumb_intro.jpg','Training','Onboarding','PG13'),
(2,'product_demo','mov','video/quicktime',52428800,180,1280,720,1800,'ProRes',1002,'2022-11-15','2025-01-02','RoyaltyFree','2026-11-15','demo,product','Demo of product features','en',1,2500,300,4.7,200,'http://media.example.com/product_demo.mov','http://media.example.com/thumb_demo.jpg','Marketing','Product','PG'),
(3,'background_music','mp3','audio/mpeg',10485760,240,0,0,320,'MP3',1003,'2024-01-10','2025-01-03','CreativeCommons','2028-01-10','music,background','Loopable background track','en',0,800,150,4.2,80,'http://media.example.com/background_music.mp3','http://media.example.com/thumb_music.jpg','Audio','Ambient','G');

-- Table recording detailed terms of supplier agreements
CREATE TABLE supplier_agreement_terms
(
    AgreementId            INTEGER PRIMARY KEY,
    SupplierId             INTEGER,
    ContractNumber         TEXT,
    StartDate              DATETIME,
    EndDate                DATETIME,
    ScopeOfWork            TEXT,
    PaymentTerms           TEXT,
    Currency               TEXT,
    TotalValue             REAL,
    RenewalOption          TEXT,
    TerminationClause      TEXT,
    ConfidentialityLevel   TEXT,
    LiabilityCap           REAL,
    Indemnification        TEXT,
    AuditRights            TEXT,
    GoverningLaw           TEXT,
    DisputeResolution      TEXT,
    ContactPersonName      TEXT,
    ContactPersonEmail     TEXT,
    ContactPhoneNumber     TEXT,
    PerformanceMetrics     TEXT,
    ServiceLevelAgreement  TEXT,
    PenaltyStructure       TEXT,
    InsuranceRequirements  TEXT,
    ChangeManagementProcess TEXT,
    SignatureDate          DATETIME,
    SignedBySupplier       TEXT,
    SignedByClient         TEXT,
    Remarks                TEXT
);

INSERT INTO supplier_agreement_terms (AgreementId,SupplierId,ContractNumber,StartDate,EndDate,ScopeOfWork,PaymentTerms,Currency,TotalValue,RenewalOption,TerminationClause,ConfidentialityLevel,LiabilityCap,Indemnification,AuditRights,GoverningLaw,DisputeResolution,ContactPersonName,ContactPersonEmail,ContactPhoneNumber,PerformanceMetrics,ServiceLevelAgreement,PenaltyStructure,InsuranceRequirements,ChangeManagementProcess,SignatureDate,SignedBySupplier,SignedByClient,Remarks) VALUES
(1,5001,'CN-2023-001','2023-04-01','2025-03-31','Provide cloud hosting services','Net30','USD',2500000,'OneYear','30DaysNotice','High','500000','Mutual','Quarterly','California','Arbitration','John Doe','john.doe@supplier.com','5551234567','Uptime99','99.9%Uptime','LateFee5%','LiabilityInsurance','FormalChangeRequest','2023-03-20','SupplierInc','ClientCorp','InitialAgreement'),
(2,5002,'CN-2024-015','2024-01-15','2026-01-14','Supply hardware components','Net45','EUR',1200000,'TwoYears','60DaysNotice','Medium','300000','SupplierOnly','Annual','Germany','Mediation','Anna Schmidt','anna.schmidt@supplier.eu','5559876543','DefectRate<1%','ResponseTime24h','Penalty2%Monthly','ProductLiability','ChangeControlBoard','2023-12-10','EuroSupply','ClientAB','ExtendedScopeAdded'),
(3,5003,'CN-2022-078','2022-07-01','2024-06-30','Consulting services','UponDelivery','GBP',800000,'None','Immediate','Low','200000','ClientOnly','BiAnnual','UK','Litigation','Mark Taylor','mark.taylor@supplier.co.uk','5557654321','ProjectMilestones','DeliverableBased','Penalty10%Late','ProfessionalIndemnity','ChangeLog','2022-06-15','ConsultLtd','ClientXYZ','FinalPaymentPending');

-- Table tracking budget allocations for marketing campaigns
CREATE TABLE marketing_campaign_budget_allocations
(
    AllocationId          INTEGER PRIMARY KEY,
    CampaignId            INTEGER,
    FiscalYear            INTEGER,
    Quarter               INTEGER,
    TotalBudget           REAL,
    DigitalBudget         REAL,
    TVBudget              REAL,
    RadioBudget           REAL,
    PrintBudget           REAL,
    SocialMediaBudget     REAL,
    InfluencerBudget      REAL,
    EventsBudget          REAL,
    SponsorshipBudget     REAL,
    MiscellaneousBudget   REAL,
    ApprovedBy            TEXT,
    ApprovalDate          DATETIME,
    Currency              TEXT,
    AllocationStatus      TEXT,
    Notes                 TEXT,
    LastModifiedBy        TEXT,
    LastModifiedDate      DATETIME,
    RegionalFocus         TEXT,
    TargetAudience        TEXT,
    KPI_Impressions       INTEGER,
    KPI_ClickThroughRate  REAL,
    KPI_ConversionRate    REAL,
    ForecastedROI         REAL,
    ActualSpend           REAL,
    VariancePercent       REAL,
    ReasonForVariance    TEXT
);

INSERT INTO marketing_campaign_budget_allocations (AllocationId,CampaignId,FiscalYear,Quarter,TotalBudget,DigitalBudget,TVBudget,RadioBudget,PrintBudget,SocialMediaBudget,InfluencerBudget,EventsBudget,SponsorshipBudget,MiscellaneousBudget,ApprovedBy,ApprovalDate,Currency,AllocationStatus,Notes,LastModifiedBy,LastModifiedDate,RegionalFocus,TargetAudience,KPI_Impressions,KPI_ClickThroughRate,KPI_ConversionRate,ForecastedROI,ActualSpend,VariancePercent,ReasonForVariance) VALUES
(1,3001,2025,1,1500000,800000,200000,100000,50000,200000,50000,50000,50000,50000,'Jane Smith','2024-12-01','USD','Approved','Initial allocation','Jane Smith','2024-12-01','NorthAmerica','Adults','5000000',0.04,0.02,5.0,1400000,-6.67,'SeasonalAdjustment'),
(2,3002,2025,2,2000000,1200000,300000,150000,100000,250000,60000,80000,120000,80000,'John Doe','2025-03-01','USD','Pending','Awaiting finance signoff','John Doe','2025-03-01','Europe','Professionals','8000000',0.05,0.025,6.0,0,0,'PendingApproval'),
(3,3003,2025,3,1800000,1000000,250000,120000,80000,240000,70000,70000,100000,80000,'Emily Green','2025-06-01','USD','Approved','Revised after Q2 review','Emily Green','2025-06-02','APAC','Students','6000000',0.045,0.022,5.5,1750000,-2.78,'HigherProductionCosts');

-- Table describing environmental monitoring stations and their attributes
CREATE TABLE environmental_monitoring_station_metrics
(
    StationId               INTEGER PRIMARY KEY,
    StationCode             TEXT,
    StationName             TEXT,
    Latitude                REAL,
    Longitude               REAL,
    ElevationMeters        INTEGER,
    InstallationDate        DATETIME,
    LastCalibrationDate     DATETIME,
    SensorType              TEXT,
    MeasurementUnit         TEXT,
    DataTransmissionMethod  TEXT,
    PowerSource             TEXT,
    MaintenanceFrequencyDays INTEGER,
    OwnerOrganization       TEXT,
    ContactPerson           TEXT,
    ContactEmail            TEXT,
    Status                  TEXT,
    FirmwareVersion         TEXT,
    BatteryLevelPercent     INTEGER,
    SignalStrengthDbm       INTEGER,
    DataRetentionDays       INTEGER,
    CloudEndpointUrl        TEXT,
    PhysicalSecurityLevel   TEXT,
    CalibrationCertificate  TEXT,
    RecentAlertCount        INTEGER,
    AverageReading          REAL,
    MaxReading              REAL,
    MinReading              REAL,
    ReadingStandardDeviation REAL,
    LastReadingTimestamp    DATETIME,
    Remarks                 TEXT,
    ApprovedBy              TEXT,
    ApprovalDate            DATETIME
);

INSERT INTO environmental_monitoring_station_metrics (StationId,StationCode,StationName,Latitude,Longitude,ElevationMeters,InstallationDate,LastCalibrationDate,SensorType,MeasurementUnit,DataTransmissionMethod,PowerSource,MaintenanceFrequencyDays,OwnerOrganization,ContactPerson,ContactEmail,Status,FirmwareVersion,BatteryLevelPercent,SignalStrengthDbm,DataRetentionDays,CloudEndpointUrl,PhysicalSecurityLevel,CalibrationCertificate,RecentAlertCount,AverageReading,MaxReading,MinReading,ReadingStandardDeviation,LastReadingTimestamp,Remarks,ApprovedBy,ApprovalDate) VALUES
(1,'STN-001','RiverbankStation',-33.865143,151.209900,15,'2020-05-10','2024-11-01','WaterLevel','meters','Cellular','Solar',180,'EnviroCorp','Alice Brown','alice.brown@envirocorp.com','Active','v2.1.4',85,-70,365,'https://cloud.envirocorp.com/ingest','High','CERT-2023-001',2,3.2,5.0,2.1,0.9,'2025-01-09','No issues','Bob Martin','2024-12-20'),
(2,'STN-002','HilltopStation',-33.867000,151.207000,250,'2021-03-15','2024-10-15','AirQuality','AQI','WiFi','Mains',365,'AirWatch','Carlos Diaz','carlos.diaz@airwatch.com','Active','v3.0.1',100,-60,730,'https://api.airwatch.com/data','Medium','CERT-2024-010',0,42.5,78,15,10.2,'2025-01-10','Routine monitoring','Sarah Lee','2024-12-22');

-- Table storing participant information for clinical trials
CREATE TABLE clinical_trial_participants
(
    ParticipantId           INTEGER PRIMARY KEY,
    TrialId                 INTEGER,
    EnrollmentDate          DATETIME,
    WithdrawalDate          DATETIME,
    Age                     INTEGER,
    Sex                     TEXT,
    Ethnicity               TEXT,
    Country                 TEXT,
    City                    TEXT,
    ZipCode                 TEXT,
    ContactPhone            TEXT,
    ContactEmail            TEXT,
    InformedConsentSigned  INTEGER,
    ConsentDate             DATETIME,
    AssignedSiteId          INTEGER,
    PrimaryInvestigatorId   INTEGER,
    TreatmentArm            TEXT,
    DosageMg                REAL,
    FrequencyPerWeek        INTEGER,
    AdverseEventCount      INTEGER,
    LastVisitDate           DATETIME,
    MedicalHistoryNotes    TEXT,
    CurrentMedications      TEXT,
    BaselineScore           REAL,
    FollowUpScore           REAL,
    ComplianceScore         REAL,
    Outcome                 TEXT,
    Notes                   TEXT,
    DataLockDate            DATETIME,
    LockedBy                TEXT,
    AuditTrail              TEXT
);

INSERT INTO clinical_trial_participants (ParticipantId,TrialId,EnrollmentDate,WithdrawalDate,Age,Sex,Ethnicity,Country,City,ZipCode,ContactPhone,ContactEmail,InformedConsentSigned,ConsentDate,AssignedSiteId,PrimaryInvestigatorId,TreatmentArm,DosageMg,FrequencyPerWeek,AdverseEventCount,LastVisitDate,MedicalHistoryNotes,CurrentMedications,BaselineScore,FollowUpScore,ComplianceScore,Outcome,Notes,DataLockDate,LockedBy,AuditTrail) VALUES
(1,9001,'2023-01-15',NULL,45,'Female','Caucasian','USA','NewYork','10001','5551112222','patient1@example.com',1,'2023-01-10',101,5001,'Placebo',0,0,0,'2024-01-10','Hypertension','Lisinopril',4.5,5.0,0.95,'Improved','No issues','2024-01-15','DataMgr','Lock001'),
(2,9001,'2023-02-20',NULL,58,'Male','Asian','USA','Chicago','60601','5553334444','patient2@example.com',1,'2023-02-15',102,5002,'DrugA',50,3,1,'2024-01-12','Diabetes','Metformin',3.8,4.2,0.88,'Stable','Mild nausea reported','2024-01-16','DataMgr','Lock002'),
(3,9002,'2023-03-05','2023-09-01',33,'Female','Hispanic','Canada','Toronto','M5H2N2','5555556666','patient3@example.com',1,'2023-03-01',103,5003,'DrugB',75,2,0,'2024-01-08','Asthma','Albuterol',5.0,5.5,0.92,'Improved','Dropped out after 6 months','2024-01-14','DataMgr','Lock003');

-- Table logging temperature readings inside warehouses
CREATE TABLE warehouse_temperature_logs
(
    LogId                  INTEGER PRIMARY KEY,
    WarehouseId            INTEGER,
    SensorId               INTEGER,
    RecordedTimestamp      DATETIME,
    TemperatureCelsius     REAL,
    HumidityPercent        REAL,
    DewPointCelsius        REAL,
    HeatIndexCelsius       REAL,
    AlertThresholdExceeded INTEGER,
    AlertType              TEXT,
    OperatorNotified       INTEGER,
    NotificationMethod     TEXT,
    ResolvedTimestamp      DATETIME,
    Comments               TEXT,
    RecordedBySystem       TEXT,
    FirmwareVersion        TEXT,
    BatteryLevelPercent    INTEGER,
    SignalStrengthDbm      INTEGER,
    CalibrationDate        DATETIME,
    MaintenanceDueDate     DATETIME,
    LocationDescription    TEXT,
    RackNumber             TEXT,
    ZoneIdentifier         TEXT,
    TemperatureStatus      TEXT,
    AvgTempLastHour        REAL,
    MaxTempLastHour        REAL,
    MinTempLastHour        REAL,
    TemperatureTrend      TEXT,
    RecordedTemperatureFahrenheit REAL,
    CreatedAt              DATETIME,
    CreatedBy              TEXT,
    UpdatedAt              DATETIME,
    UpdatedBy              TEXT
);

INSERT INTO warehouse_temperature_logs (LogId,WarehouseId,SensorId,RecordedTimestamp,TemperatureCelsius,HumidityPercent,DewPointCelsius,HeatIndexCelsius,AlertThresholdExceeded,AlertType,OperatorNotified,NotificationMethod,ResolvedTimestamp,Comments,RecordedBySystem,FirmwareVersion,BatteryLevelPercent,SignalStrengthDbm,CalibrationDate,MaintenanceDueDate,LocationDescription,RackNumber,ZoneIdentifier,TemperatureStatus,AvgTempLastHour,MaxTempLastHour,MinTempLastHour,TemperatureTrend,RecordedTemperatureFahrenheit,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy) VALUES
(1,10,2001,'2025-01-10 08:00:00',4.5,55,0.8,5.0,0,'None',0,'None',NULL,'Normal operation','SystemA','1.0.3',90,-68,'2024-12-01','2025-06-01','NorthWing','R01','Z1','Normal',4.3,5.0,3.8,'Stable',40.1,'2025-01-10 08:05:00','SystemA','2025-01-10 08:10:00','SystemA'),
(2,10,2002,'2025-01-10 08:05:00',12.0,70,7.0,13.5,1,'HighTemp',1,'Email','2025-01-10 09:00:00','Temperature exceeded 12C','SystemA','1.0.3',85,-70,'2024-12-01','2025-06-01','NorthWing','R02','Z1','Warning',8.0,12.0,4.0,'Rising',53.6,'2025-01-10 08:10:00','SystemA','2025-01-10 09:05:00','SystemA'),
(3,11,3001,'2025-01-10 08:00:00',-2.0,60,-5.0,-1.5,0,'None',0,'None',NULL,'Cold storage','SystemB','2.1.0',95,-65,'2024-11-15','2025-05-15','SouthWing','R10','Z2','Cold',-3.5,-1.0,-6.0,'Stable',27.2,'2025-01-10 08:05:00','SystemB','2025-01-10 08:07:00','SystemB');

-- Table capturing changes to relationships within the knowledge graph
CREATE TABLE knowledge_graph_relationship_changes_log
(
    ChangeId                INTEGER PRIMARY KEY,
    GraphVersion            TEXT,
    ChangeTimestamp         DATETIME,
    ChangedByUserId         INTEGER,
    SourceNodeId            INTEGER,
    TargetNodeId            INTEGER,
    RelationshipType        TEXT,
    ChangeType              TEXT,
    PreviousPropertiesJson  TEXT,
    NewPropertiesJson       TEXT,
    ReasonForChange         TEXT,
    ApprovalStatus          TEXT,
    ApprovedByUserId        INTEGER,
    ApprovalTimestamp       DATETIME,
    ReviewComments          TEXT,
    ImpactScore             REAL,
    AffectedSubgraphSize    INTEGER,
    NotificationSent        INTEGER,
    NotificationMethod      TEXT,
    RetryCount              INTEGER,
    LastRetryTimestamp      DATETIME,
    TransactionId           TEXT,
    BatchId                 TEXT,
    ExecutionHost           TEXT,
    ExecutionDurationMs     INTEGER,
    ErrorCode               TEXT,
    ErrorMessage            TEXT,
    RollbackPerformed       INTEGER,
    RollbackTimestamp       DATETIME,
    CreatedAt               DATETIME,
    CreatedBy               TEXT,
    UpdatedAt               DATETIME,
    UpdatedBy               TEXT
);

INSERT INTO knowledge_graph_relationship_changes_log (ChangeId,GraphVersion,ChangeTimestamp,ChangedByUserId,SourceNodeId,TargetNodeId,RelationshipType,ChangeType,PreviousPropertiesJson,NewPropertiesJson,ReasonForChange,ApprovalStatus,ApprovedByUserId,ApprovalTimestamp,ReviewComments,ImpactScore,AffectedSubgraphSize,NotificationSent,NotificationMethod,RetryCount,LastRetryTimestamp,TransactionId,BatchId,ExecutionHost,ExecutionDurationMs,ErrorCode,ErrorMessage,RollbackPerformed,RollbackTimestamp,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy) VALUES
(1,'v1.3','2025-01-09 14:30:00',1001,5001,6001,'related','add','{}','{\"weight\":1}','Add new relation','Approved',2001,'2025-01-09 15:00:00','Looks good',0.8,150,1,'Email',0,NULL,'TXN-001','BATCH-01','host1',120,NULL,NULL,0,NULL,'2025-01-09 14:35:00','system','2025-01-09 14:36:00','system'),
(2,'v1.3','2025-01-10 09:15:00',1002,5002,6002,'depends_on','modify','{\"weight\":2}','{\"weight\":3}','Update weight','Pending',NULL,NULL,'Awaiting review',0.6,120,0,NULL,0,NULL,'TXN-002','BATCH-01','host2',95,NULL,NULL,0,NULL,'2025-01-10 09:20:00','system','2025-01-10 09:25:00','system'),
(3,'v1.3','2025-01-11 11:45:00',1003,5003,6003,'parent_of','delete','{\"status\":\"active\"}','{}','Remove obsolete link','Approved',2002,'2025-01-11 12:00:00','Deleted as part of cleanup',0.4,80,1,'Slack',1,'2025-01-11 12:05:00','TXN-003','BATCH-02','host3',150,NULL,NULL,1,'2025-01-11 12:10:00','2025-01-11 11:50:00','system','2025-01-11 12:15:00','system');

-- Table logging telemetry data from space missions
CREATE TABLE space_mission_telemetry
(
    TelemetryId            INTEGER PRIMARY KEY,
    MissionId              INTEGER,
    TimestampUtc           DATETIME,
    Subsystem              TEXT,
    ParameterName          TEXT,
    ParameterValue         REAL,
    UnitOfMeasure          TEXT,
    QualityFlag            TEXT,
    SourceSensorId         INTEGER,
    Latitude               REAL,
    Longitude              REAL,
    AltitudeKm             REAL,
    VelocityKms            REAL,
    TemperatureCelsius     REAL,
    PressureKpa            REAL,
    RadiationLevelSv       REAL,
    BatteryVoltageV        REAL,
    PowerConsumptionW      REAL,
    DataPacketId           TEXT,
    TransmissionStatus     TEXT,
    ReceivedByStationId    INTEGER,
    ProcessingLatencyMs    INTEGER,
    AnomalyDetected        INTEGER,
    AnomalyDescription     TEXT,
    CorrelationId          TEXT,
    GroundStationContact   TEXT,
    DownlinkFrequencyMHz   REAL,
    UplinkFrequencyMHz     REAL,
    AntennaGainDb          REAL,
    BitErrorRate           REAL,
    EncryptionEnabled      INTEGER,
    EncryptionAlgorithm    TEXT,
    CreatedAt              DATETIME,
    CreatedBy              TEXT,
    UpdatedAt              DATETIME,
    UpdatedBy              TEXT
);

INSERT INTO space_mission_telemetry (TelemetryId,MissionId,TimestampUtc,Subsystem,ParameterName,ParameterValue,UnitOfMeasure,QualityFlag,SourceSensorId,Latitude,Longitude,AltitudeKm,VelocityKms,TemperatureCelsius,PressureKpa,RadiationLevelSv,BatteryVoltageV,PowerConsumptionW,DataPacketId,TransmissionStatus,ReceivedByStationId,ProcessingLatencyMs,AnomalyDetected,AnomalyDescription,CorrelationId,GroundStationContact,DownlinkFrequencyMHz,UplinkFrequencyMHz,AntennaGainDb,BitErrorRate,EncryptionEnabled,EncryptionAlgorithm,CreatedAt,CreatedBy,UpdatedAt,UpdatedBy) VALUES
(1,8001,'2025-01-10 12:00:00','Propulsion','Thrust',7500,'N','Good',101,0.0,0.0,400,7.8,25.0,101.3,0.0005,28.0,1200,'PKT-0001','Success',301,45,0,NULL,'CORR-1001','GS-Alpha',2200.5,2100.3,35.0,0.00001,1,'AES256','2025-01-10 12:05:00','system','2025-01-10 12:10:00','system'),
(2,8001,'2025-01-10 12:00:10','Power','BatteryVoltage',27.5,'V','Good',102,0.0,0.0,400,7.8,27.5,101.3,0.0005,27.5,1150,'PKT-0002','Success',301,42,0,NULL,'CORR-1002','GS-Alpha',2200.5,2100.3,35.0,0.00001,1,'AES256','2025-01-10 12:05:10','system','2025-01-10 12:10:10','system'),
(3,8001,'2025-01-10 12:00:20','Thermal','Temperature',-12.3,'C','Good',103,0.0,0.0,400,7.8,-12.3,101.3,0.0005,27.0,1100,'PKT-0003','Success',301,40,1,'Temp sensor out of range','CORR-1003','GS-Alpha',2200.5,2100.3,35.0,0.00002,1,'AES256','2025-01-10 12:05:20','system','2025-01-10 12:10:20','system');