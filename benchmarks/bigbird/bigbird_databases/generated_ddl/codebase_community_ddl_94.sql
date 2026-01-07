-- Data Center inventory details
CREATE TABLE data_center_inventory
(
    Id                     INTEGER PRIMARY KEY,
    RackId                 TEXT,
    ServerModel            TEXT,
    CPUCount               INTEGER,
    MemoryGB               INTEGER,
    StorageTB              INTEGER,
    PowerCapacityKW        INTEGER,
    NetworkBandwidthGbps   INTEGER,
    OwnerDepartment        TEXT,
    PurchaseDate           DATETIME,
    WarrantyEndDate        DATETIME,
    AssetTag               TEXT,
    SerialNumber           TEXT,
    LocationFloor          INTEGER,
    LocationRoom           TEXT,
    MaintenanceCycleMonths INTEGER,
    LastMaintenanceDate    DATETIME,
    Status                 TEXT,
    IsVirtualized          BOOLEAN,
    OperatingSystem        TEXT,
    IPAddress              TEXT,
    MACAddress             TEXT
);

INSERT INTO data_center_inventory VALUES (1,'RACK-A1','Dell PowerEdge R740',2,256,8,12,40,'IT','2021-03-10','2024-03-10','TAG001','SN123456','1','Room101',6,'2023-06-01','Active',0,'Ubuntu 20.04','10.0.0.5','AA:BB:CC:DD:EE:01');
INSERT INTO data_center_inventory VALUES (2,'RACK-B2','HP ProLiant DL380',4,512,16,20,80,'DataScience','2020-07-22','2025-07-22','TAG002','SN654321','2','Room202',12,'2023-05-15','Active',0,'CentOS 7','10.0.0.6','AA:BB:CC:DD:EE:02');
INSERT INTO data_center_inventory VALUES (3,'RACK-C3','Cisco UCS C220',2,128,4,10,20,'Research','2022-01-05','2027-01-05','TAG003','SN112233','3','Room303',3,'2023-07-10','Pending',1,'Windows Server 2019','10.0.0.7','AA:BB:CC:DD:EE:03');

-- Regulatory compliance events log
CREATE TABLE regulatory_compliance_events
(
    EventId               INTEGER PRIMARY KEY,
    RegulationName        TEXT,
    EntityAffected        TEXT,
    EventDate             DATETIME,
    ReportedBy            TEXT,
    SeverityLevel         TEXT,
    Description           TEXT,
    ActionTaken           TEXT,
    FollowUpDate          DATETIME,
    Status                TEXT,
    ComplianceOfficer     TEXT,
    DocumentReference     TEXT,
    RiskScore             INTEGER,
    AuditTrailId          INTEGER,
    Location              TEXT,
    Category              TEXT,
    IsCritical            BOOLEAN,
    ResolutionNotes       TEXT,
    CreatedAt             DATETIME,
    UpdatedAt             DATETIME,
    IsExternal            BOOLEAN,
    SourceSystem          TEXT
);

INSERT INTO regulatory_compliance_events VALUES (101,'GDPR','CustomerData','2023-02-15','Alice','High','Data export without consent','Blocked export','2023-03-01','Closed','Bob','DOC-001',95,5001,'EU','Privacy',1,'Compliant after correction','2023-02-15','2023-03-02',0,'CompliancePortal');
INSERT INTO regulatory_compliance_events VALUES (102,'SOX','FinancialRecords','2023-04-20','Charlie','Medium','Late filing of quarterly report','Submitted report','2023-05-05','Resolved','Dana','DOC-002',70,5002,'USA','Finance',0,'No penalty','2023-04-20','2023-05-06',0,'FinanceSystem');
INSERT INTO regulatory_compliance_events VALUES (103,'HIPAA','PatientInfo','2023-06-10','Eve','Critical','Unauthorized access detected','Revoked access token','2023-06-20','Investigating','Frank','DOC-003',99,5003,'US','Health',1,'Pending legal review','2023-06-10','2023-06-12',1,'SecurityMonitor');

-- Logistics fleet operations records
CREATE TABLE logistics_fleet_operations
(
    OperationId               INTEGER PRIMARY KEY,
    VehicleId                 TEXT,
    DriverId                  TEXT,
    RouteCode                 TEXT,
    DepartureTime            DATETIME,
    ArrivalTime              DATETIME,
    DistanceKm               INTEGER,
    FuelConsumedLiters       INTEGER,
    CargoWeightKg            INTEGER,
    CargoType                TEXT,
    OperationStatus          TEXT,
    MaintenanceFlag          BOOLEAN,
    WeatherCondition         TEXT,
    IncidentReport           TEXT,
    CreatedAt                DATETIME,
    UpdatedAt                DATETIME,
    ShiftSupervisor          TEXT,
    ShiftDate                DATE,
    IsLate                   BOOLEAN,
    Notes                    TEXT,
    GPSLogLink               TEXT,
    ComplianceCheckPassed    BOOLEAN
);

INSERT INTO logistics_fleet_operations VALUES (201,'VHC-001','DRV-100','RC-10','2023-07-01 08:00:00','2023-07-01 12:30:00',350,45,1200,'Electronics','Completed',0,'Clear','', '2023-07-01 08:05:00','2023-07-01 12:35:00','SupervisorA','2023-07-01',0,'No issues','http://gpslog/201',1);
INSERT INTO logistics_fleet_operations VALUES (202,'VHC-002','DRV-101','RC-20','2023-07-02 09:15:00','2023-07-02 14:00:00',420,55,800,'Pharmaceuticals','Completed',0,'Rain','Minor delay due to traffic','2023-07-02 09:20:00','2023-07-02 14:05:00','SupervisorB','2023-07-02',1,'Delay 5 mins','http://gpslog/202',1);
INSERT INTO logistics_fleet_operations VALUES (203,'VHC-003','DRV-102','RC-30','2023-07-03 07:45:00','2023-07-03 11:20:00',210,30,1500,'Machinery','Completed',0,'Fog','', '2023-07-03 07:50:00','2023-07-03 11:25:00','SupervisorC','2023-07-03',0,'Smooth','http://gpslog/203',1);

-- Research study metadata
CREATE TABLE research_study
(
    StudyId                 INTEGER PRIMARY KEY,
    Title                   TEXT,
    PrincipalInvestigator   TEXT,
    FundingAgency           TEXT,
    GrantNumber             TEXT,
    StartDate               DATETIME,
    EndDate                 DATETIME,
    BudgetUSD               INTEGER,
    Description             TEXT,
    Status                  TEXT,
    PublicationLink         TEXT,
    EthicalApprovalId       TEXT,
    ReviewBoard             TEXT,
    DataRepository          TEXT,
    SampleSize              INTEGER,
    StudyType               TEXT,
    Discipline              TEXT,
    Keywords                TEXT,
    IsMultiCenter           BOOLEAN,
    CreatedAt               DATETIME,
    UpdatedAt               DATETIME,
    ConfidentialLevel       TEXT
);

INSERT INTO research_study VALUES (301,'AI‑Driven Diagnostics','Dr. Smith','National Science Foundation','NSF‑AI‑2022','2022-01-15','2025-12-31',2500000,'Study on AI models for early disease detection','Active','http://pubs.org/ai_diag','EA‑1001','Board A','s3://datarepo/ai','5000','Observational','Computer Science','AI,Healthcare,Diagnostics',1,'2022-01-10','2023-03-20','High');
INSERT INTO research_study VALUES (302,'Renewable Energy Storage','Prof. Lee','Department of Energy','DOE‑RES‑2021','2021-06-01','2024-05-31',1800000,'Investigation of novel battery chemistries','Completed','http://pubs.org/renew_storage','EA‑2002','Board B','s3://datarepo/renew','3000','Experimental','Chemical Engineering','Battery,Renewables,Storage',0,'2021-05-20','2024-06-10','Medium');
INSERT INTO research_study VALUES (303,'Urban Mobility Patterns','Dr. Patel','City Council','CC‑UMP‑2023','2023-03-01','2026-02-28',950000,'Analysis of sensor data to improve traffic flow','Planned','', 'EA‑3003','Board C','s3://datarepo/mobility','20000','Observational','Urban Planning','Mobility,Traffic,Sensors',1,'2023-02-15','2023-02-15','Low');

-- Academic symposiums information
CREATE TABLE academic_symposiums
(
    SymposiumId            INTEGER PRIMARY KEY,
    Name                   TEXT,
    Theme                  TEXT,
    HostInstitution        TEXT,
    StartDate              DATETIME,
    EndDate                DATETIME,
    Location               TEXT,
    City                   TEXT,
    Country                TEXT,
    RegistrationFeeUSD     INTEGER,
    ExpectedAttendees      INTEGER,
    KeynoteSpeaker        TEXT,
    AbstractSubmissionDeadline DATETIME,
    ReviewCommittee        TEXT,
    WebsiteURL             TEXT,
    SponsorList            TEXT,
    IsVirtual              BOOLEAN,
    LiveStreamLink         TEXT,
    ContactEmail           TEXT,
    CreatedAt              DATETIME,
    UpdatedAt              DATETIME,
    Accreditation          TEXT,
    Notes                  TEXT
);

INSERT INTO academic_symposiums VALUES (401,'International AI Symposium','Future of Intelligent Systems','MIT','2024-09-10','2024-09-12','Cambridge Convention Center','Cambridge','USA',450,800,'Prof. Allen','2024-06-30','Committee A','http://ai-symposium.org','TechCorp,DataInc',0,'','info@ai-symposium.org','2024-01-15','2024-04-01','IEEE','');
INSERT INTO academic_symposiums VALUES (402,'Global Climate Change Forum','Mitigation Strategies','University of Oslo','2025-03-05','2025-03-07','Oslo Conference Hall','Oslo','Norway',300,600,'Dr. Nilsen','2024-12-01','Committee B','http://climateforum.no','GreenFund,EnviroLab',1,'http://stream.climateforum.no','contact@climateforum.no','2024-02-10','2024-05-20','UNFCCC','');
INSERT INTO academic_symposiums VALUES (403,'Healthcare Innovation Summit','Digital Health','Stanford University','2024-11-20','2024-11-22','Palo Alto Expo Center','Palo Alto','USA',550,1200,'Dr. Gomez','2024-08-15','Committee C','http://healthsum.org','MediHealth,HealthTech',0,'','admin@healthsum.org','2024-03-01','2024-06-15','AAH','');

-- Legal proceedings catalog
CREATE TABLE legal_proceedings
(
    ProceedingId           INTEGER PRIMARY KEY,
    CaseNumber             TEXT,
    Plaintiff              TEXT,
    Defendant              TEXT,
    CourtName              TEXT,
    FilingDate             DATETIME,
    HearingDate            DATETIME,
    JudgeName              TEXT,
    Outcome                TEXT,
    SettlementAmountUSD    INTEGER,
    LegalTeamLead          TEXT,
    Status                 TEXT,
    docketUrl              TEXT,
    IsClassAction          BOOLEAN,
    Jurisdiction           TEXT,
    CaseType               TEXT,
    Summary                TEXT,
    AppealDeadline         DATETIME,
    CreatedAt              DATETIME,
    UpdatedAt              DATETIME,
    Confidential           BOOLEAN,
    RelatedStatute         TEXT
);

INSERT INTO legal_proceedings VALUES (501,'2023‑CV‑001','Acme Corp','Beta Industries','Northern District Court','2023-01-15','2023-06-20','Judge Harper','Dismissed',0,'Law Firm A','Closed','http://court.gov/docket/501',0,'Federal','Civil','Dispute over contract terms','2023-09-15','2023-01-10','2023-07-01',0,'Contract Act');
INSERT INTO legal_proceedings VALUES (502,'2022‑CR‑045','State Prosecutor','John Doe','State Supreme Court','2022-03-05','2022-11-10','Judge Alvarez','Guilty',200000,'Law Firm B','Closed','http://court.gov/docket/502',0,'State','Criminal','Fraud case involving financial statements','2023-02-01','2022-02-20','2022-12-01',0,'Fraud Statute');
INSERT INTO legal_proceedings VALUES (503,'2024‑CL‑009','Green Earth NGO','EnergyCo','Environmental Court','2024-02-12','2024-08-30','Judge Kim','Settled',500000,'Law Firm C','Open','http://court.gov/docket/503',1,'Federal','Environmental','Alleged violations of emission standards','2025-01-15','2024-02-01','2024-09-01',1,'Clean Air Act');

-- Supplier certifications registry
CREATE TABLE supplier_certifications
(
    CertificationId        INTEGER PRIMARY KEY,
    SupplierId             TEXT,
    CertificationName      TEXT,
    IssuingAuthority      TEXT,
    IssueDate              DATETIME,
    ExpiryDate             DATETIME,
    CertificationLevel     TEXT,
    DocumentUrl            TEXT,
    IsActive               BOOLEAN,
    AuditScore             INTEGER,
    LastAuditDate          DATETIME,
    RenewalReminderDate    DATETIME,
    CertifiedProducts      TEXT,
    ComplianceArea         TEXT,
    RegionalScope          TEXT,
    ContactPerson          TEXT,
    ContactEmail           TEXT,
    CreatedAt              DATETIME,
    UpdatedAt              DATETIME,
    Notes                  TEXT,
    VerificationMethod     TEXT
);

INSERT INTO supplier_certifications VALUES (601,'SUP‑001','ISO 9001','ISO','2021-04-01','2024-04-01','Level 1','http://certs.org/iso9001/601','1',92,'2023-03-15','2024-03-01','Widgets, Gadgets','Quality Management','Global','Alice Johnson','alice@supplier.com','2021-03-20','2023-03-20','Annual audit passed','Document Review');
INSERT INTO supplier_certifications VALUES (602,'SUP‑002','ISO 14001','ISO','2020-09-15','2023-09-15','Level 2','http://certs.org/iso1401/602','0',85,'2022-08-10','2023-08-01','Chemicals','Environmental','EU','Bob Smith','bob@supplier.com','2020-09-01','2022-08-01','Pending renewal','On‑site Inspection');
INSERT INTO supplier_certifications VALUES (603,'SUP‑003','SOC 2','AICPA','2022-01-20','2025-01-20','Level 1','http://certs.org/soc2/603','1',88,'2023-12-05','2024-12-01','Cloud Services','Security','North America','Carol Lee','carol@supplier.com','2022-01-10','2023-12-05','No issues reported','Third‑Party Audit');

-- Marketing channels catalog
CREATE TABLE marketing_channels
(
    ChannelId              INTEGER PRIMARY KEY,
    ChannelName            TEXT,
    ChannelType            TEXT,
    LaunchDate             DATETIME,
    OwnerTeam              TEXT,
    BudgetUSD              INTEGER,
    ReachEstimate          INTEGER,
    ConversionRate         REAL,
    CPM                    REAL,
    CPC                    REAL,
    Status                 TEXT,
    PrimaryTargetAudience  TEXT,
    GeographicFocus        TEXT,
    PlatformURL            TEXT,
    IsDigital              BOOLEAN,
    IsPaid                 BOOLEAN,
    IsOwned                BOOLEAN,
    CreatedAt              DATETIME,
    UpdatedAt              DATETIME,
    LastPerformanceReviewDate DATETIME,
    Notes                  TEXT,
    KPI                    TEXT
);

INSERT INTO marketing_channels VALUES (701,'Facebook Ads','Social Media','2022-05-01','Digital Team',150000,2000000,0.042,5.5,0.25,'Active','Adults 18-35','Global','https://facebook.com/ads','1','1','0','2022-05-01','2023-04-01','2023-04-01','Seasonal campaign','CTR');
INSERT INTO marketing_channels VALUES (702,'Newsletter','Email','2021-01-15','Communications',80000,500000,0.075,2.0,0.15,'Active','Subscribers','North America','https://mail.example.com','1','0','1','2021-01-15','2023-03-20','2023-03-20','Quarterly updates','Open Rate');
INSERT INTO marketing_channels VALUES (703,'Billboard Downtown','Outdoor','2020-09-10','Brand Team',120000,30000,0.005,30.0,0.00,'Paused','Commuters','City Center','N/A','0','1','0','2020-09-10','2022-12-01','2022-12-01','Renewal pending','Impressions');

-- IoT device definitions library
CREATE TABLE iot_device_definitions
(
    DeviceDefId            INTEGER PRIMARY KEY,
    DeviceModel            TEXT,
    Manufacturer           TEXT,
    FirmwareVersion        TEXT,
    ConnectivityProtocol   TEXT,
    PowerSource            TEXT,
    DimensionsCM           TEXT,
    WeightGrams            INTEGER,
    SensorsSupported       TEXT,
    MaxOperatingTempC      INTEGER,
    MinOperatingTempC      INTEGER,
    CertificationStandard  TEXT,
    ReleaseDate            DATETIME,
    EndOfLifeDate          DATETIME,
    DocumentationUrl       TEXT,
    SupportedOS            TEXT,
    SecurityLevel          TEXT,
    IsLegacy               BOOLEAN,
    CreatedAt              DATETIME,
    UpdatedAt              DATETIME,
    Notes                  TEXT,
    DeviceCategory         TEXT
);

INSERT INTO iot_device_definitions VALUES (801,'EnviroSense-100','Acme Sensors','v1.2.3','MQTT','Battery','10x5x2','150','Temp,Humidity,Pressure',60,-20,'CE','2021-03-10','2026-03-10','http://docs.acme.com/enviro100','Linux','High',0,'2021-03-01','2023-01-15','Field deployment','Environmental');
INSERT INTO iot_device_definitions VALUES (802,'SmartLock-X','SecureTech','v3.0.0','BLE','Battery','7x4x2','85','LockStatus,BatteryLevel',45,-10,'FCC','2020-07-22','2025-07-22','http://docs.securetech.com/smartlock','RTOS','Medium',0,'2020-07-01','2022-11-30','Residential use','Security');
INSERT INTO iot_device_definitions VALUES (803,'TrackPro-5G','GeoTrack','v2.1','5G','Solar','15x10x5','250','GPS,Accelerometer,Gyroscope',80,-30,'RoHS','2022-01-05','2027-01-05','http://docs.geotrack.com/trackpro','Android','Very High',0,'2022-01-01','2023-06-20','Logistics tracking','Asset Management');

-- Semantic ontology repository
CREATE TABLE semantic_ontology
(
    OntologyId             INTEGER PRIMARY KEY,
    Name                   TEXT,
    Domain                 TEXT,
    Version                TEXT,
    Description            TEXT,
    CreatedBy              TEXT,
    CreatedAt              DATETIME,
    UpdatedAt              DATETIME,
    IsActive               BOOLEAN,
    SourceReference        TEXT,
    License                TEXT,
    Language               TEXT,
    NumberOfClasses        INTEGER,
    NumberOfProperties     INTEGER,
    NumberOfIndividuals    INTEGER,
    ReasonerSupport        BOOLEAN,
    ExportFormats          TEXT,
    RevisionNumber         INTEGER,
    ChangeLog              TEXT,
    ValidationStatus       TEXT,
    DocumentationUrl       TEXT,
    CommunitySupportEmail  TEXT
);

INSERT INTO semantic_ontology VALUES (901,'HealthCareOntology','Healthcare','1.0','Ontology for patient data interoperability','Dr. Nguyen','2022-02-15','2023-04-10',1,'http://ontologies.org/health','CC-BY','EN',120,250,500,1,'RDF,OWL',3,'Added medication classes','Validated','http://docs.org/health_ontology','support@ontologies.org');
INSERT INTO semantic_ontology VALUES (902,'FinanceTaxonomy','Finance','2.1','Standard taxonomy for financial instruments','Emily Chen','2021-08-01','2023-01-20',1,'http://ontologies.org/finance','MIT','EN',95,180,410,1,'RDF,TTL',5,'Updated bond categories','Validated','http://docs.org/finance_taxonomy','finance@ontologies.org');
INSERT INTO semantic_ontology VALUES (903,'EcoSpatialModel','Environmental','0.9','Spatial ontology for ecological data','Prof. Alvarez','2023-05-10','2023-10-05',0,'http://ontologies.org/ecospace','GPL','EN',80,150,300,0,'RDF',2,'Initial draft','Pending Review','http://docs.org/ecospace','eco@ontologies.org');