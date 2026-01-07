-- Knowledge Graph Nodes
CREATE TABLE knowledge_graph_nodes (
    NodeId INTEGER PRIMARY KEY,
    NodeLabel TEXT,
    NodeType TEXT,
    CreatedDate DATETIME,
    UpdatedDate DATETIME,
    IsActive INTEGER,
    SourceSystem TEXT,
    Version INTEGER,
    Description TEXT,
    ConfidenceScore REAL,
    OwnerUserId INTEGER,
    Category TEXT,
    SubCategory TEXT,
    ImportBatchId INTEGER,
    PartitionKey TEXT,
    Language TEXT,
    GeoLatitude REAL,
    GeoLongitude REAL,
    MetadataJson TEXT,
    Tags TEXT
);

INSERT INTO knowledge_graph_nodes VALUES (1,'Person','Entity','2023-01-01 08:00:00','2023-01-10 12:30:00',1,'SystemA',1,'A person node',0.98,101,'Human','Adult',1001,'A','en',37.7749,-122.4194,'{}','person,adult');
INSERT INTO knowledge_graph_nodes VALUES (2,'Company','Organization','2023-02-15 09:15:00','2023-02-20 14:45:00',1,'SystemB',2,'A company node',0.92,102,'Business','Technology',1002,'B','en',40.7128,-74.0060,'{}','company,tech');
INSERT INTO knowledge_graph_nodes VALUES (3,'Location','Place','2023-03-05 11:20:00','2023-03-07 16:05:00',0,'SystemC',3,'A location node',0.85,103,'Geography','City',1003,'C','en',34.0522,-118.2437,'{}','location,city');

-- External API Calls Log
CREATE TABLE external_api_calls_log (
    CallId INTEGER PRIMARY KEY,
    ApiEndpoint TEXT,
    HttpMethod TEXT,
    RequestTimestamp DATETIME,
    ResponseTimestamp DATETIME,
    StatusCode INTEGER,
    ResponseTimeMs INTEGER,
    CallerAppId INTEGER,
    CallerUserId INTEGER,
    RequestPayload TEXT,
    ResponsePayload TEXT,
    ErrorMessage TEXT,
    RetryCount INTEGER,
    ApiVersion TEXT,
    ClientIp TEXT,
    ServerIp TEXT,
    AuthToken TEXT,
    UserAgent TEXT,
    CorrelationId TEXT,
    ServiceName TEXT
);

INSERT INTO external_api_calls_log VALUES (1,'/api/v1/users','GET','2023-04-01 08:10:00','2023-04-01 08:10:01',200,120,10,1001,'{}','{""id"":1001}','','0','v1','192.168.1.10','10.0.0.5','token123','AppClient/1.0','corr-001','UserService');
INSERT INTO external_api_calls_log VALUES (2,'/api/v1/orders','POST','2023-04-01 09:20:00','2023-04-01 09:20:02',201,250,11,1002,'{""itemId"":200}','{""orderId"":5001}','','0','v1','192.168.1.11','10.0.0.6','token456','AppClient/1.0','corr-002','OrderService');
INSERT INTO external_api_calls_log VALUES (3,'/api/v1/payments','POST','2023-04-01 10:30:00','2023-04-01 10:30:05',500,4800,12,1003,'{""orderId"":5001}','','Timeout error','1','v1','192.168.1.12','10.0.0.7','token789','AppClient/1.0','corr-003','PaymentService');

-- Environmental Sensor Readings
CREATE TABLE environmental_sensor_readings (
    ReadingId INTEGER PRIMARY KEY,
    SensorId INTEGER,
    SensorType TEXT,
    ReadingTimestamp DATETIME,
    Value REAL,
    Unit TEXT,
    Latitude REAL,
    Longitude REAL,
    Altitude REAL,
    BatteryLevel INTEGER,
    SignalStrength INTEGER,
    FirmwareVersion TEXT,
    CalibrationDate DATETIME,
    OperatorId INTEGER,
    SiteId INTEGER,
    IsAnomalous INTEGER,
    Remarks TEXT,
    DataQualityScore REAL,
    RecordedBy TEXT,
    UpdatedAt DATETIME
);

INSERT INTO environmental_sensor_readings VALUES (1,101,'Temperature','2023-05-01 06:00:00',22.5,'C',45.4215,-75.6972,150,95,80,'1.0.3','2023-04-01 00:00:00',201,1,0,'Normal reading',0.99,'sensorA','2023-05-01 06:05:00');
INSERT INTO environmental_sensor_readings VALUES (2,102,'Humidity','2023-05-01 06:05:00',55.2,'%','45.4215','-75.6972',150,90,78,'1.0.3','2023-04-01 00:00:00',202,1,0,'Normal reading',0.97,'sensorB','2023-05-01 06:10:00');
INSERT INTO environmental_sensor_readings VALUES (3,103,'AirQuality','2023-05-01 06:10:00',120.0,'AQI',45.4215,-75.6972,150,85,75,'1.0.3','2023-04-01 00:00:00',203,1,1,'High pollution',0.85,'sensorC','2023-05-01 06:15:00');

-- Corporate Training Sessions
CREATE TABLE corporate_training_sessions (
    SessionId INTEGER PRIMARY KEY,
    Title TEXT,
    Description TEXT,
    TrainerId INTEGER,
    TrainerName TEXT,
    StartDate DATETIME,
    EndDate DATETIME,
    Location TEXT,
    MaxParticipants INTEGER,
    CurrentEnrollment INTEGER,
    SessionType TEXT,
    Department TEXT,
    Cost DECIMAL,
    Currency TEXT,
    IsMandatory INTEGER,
    CreatedBy INTEGER,
    CreatedAt DATETIME,
    UpdatedBy INTEGER,
    UpdatedAt DATETIME,
    FeedbackScore REAL
);

INSERT INTO corporate_training_sessions VALUES (1,'Leadership Essentials','Basic leadership skills','301','Alice Smith','2023-06-01 09:00:00','2023-06-01 12:00:00','Room 101',30,25,'Workshop','HR',500.00,'USD',1,100,'2023-05-01 08:00:00',101,'2023-05-10 09:00:00',4.5);
INSERT INTO corporate_training_sessions VALUES (2,'Advanced Excel','Deep dive into Excel formulas','302','Bob Johnson','2023-06-05 13:00:00','2023-06-05 16:00:00','Room 202',20,18,'Seminar','Finance',300.00,'USD',0,102,'2023-05-02 09:30:00',103,'2023-05-11 10:15:00',4.2);
INSERT INTO corporate_training_sessions VALUES (3,'Cybersecurity Awareness','Best practices for security','303','Carol Lee','2023-06-10 10:00:00','2023-06-10 11:30:00','Room 303',50,45,'Webinar','IT',0.00,'USD',1,104,'2023-05-03 11:00:00',105,'2023-05-12 12:00:00',4.8);

-- Product Release Cycles
CREATE TABLE product_release_cycles (
    ReleaseId INTEGER PRIMARY KEY,
    ProductName TEXT,
    Version TEXT,
    ReleaseDate DATETIME,
    ReleaseType TEXT,
    BuildNumber INTEGER,
    ReleasedBy INTEGER,
    ReleaseNotes TEXT,
    CriticalBugCount INTEGER,
    FeatureCount INTEGER,
    DeprecatedFeatures INTEGER,
    SupportedPlatforms TEXT,
    MinimumOsVersion TEXT,
    InstallerSizeMb REAL,
    DownloadUrl TEXT,
    IsBeta INTEGER,
    IsLts INTEGER,
    RolloutPercentage INTEGER,
    ApprovalStatus TEXT,
    ReleaseManagerId INTEGER
);

INSERT INTO product_release_cycles VALUES (1,'AppX','3.2.1','2023-07-01 10:00:00','Major',3210,1001,'Improved UI and performance',2,15,1,'Windows,macOS','10.0',150.5,'https://example.com/appx/3.2.1','0','1',100,'Approved',2001);
INSERT INTO product_release_cycles VALUES (2,'AppY','1.0.0-beta','2023-07-15 09:30:00','Beta',1000,1002,'First beta release',0,8,0,'Linux','3.10',85.2,'https://example.com/appy/1.0.0-beta','1','0',20,'Pending',2002);
INSERT INTO product_release_cycles VALUES (3,'ServiceZ','2.5.0','2023-08-01 14:00:00','Patch',2505,1003,'Security patches applied',0,3,0,'All','N/A',0.0,'https://example.com/servicez/2.5.0','0','0',100,'Approved',2003);

-- Warehouse Inventory Movements
CREATE TABLE warehouse_inventory_movements (
    MovementId INTEGER PRIMARY KEY,
    WarehouseId INTEGER,
    ProductSku TEXT,
    Quantity INTEGER,
    MovementType TEXT,
    SourceLocation TEXT,
    DestinationLocation TEXT,
    CreatedAt DATETIME,
    CreatedBy INTEGER,
    UpdatedAt DATETIME,
    UpdatedBy INTEGER,
    BatchNumber TEXT,
    ExpirationDate DATETIME,
    ReceivedDate DATETIME,
    SupplierId INTEGER,
    CostPerUnit DECIMAL,
    TotalCost DECIMAL,
    ReasonCode TEXT,
    Comments TEXT,
    IsAudited INTEGER
);

INSERT INTO warehouse_inventory_movements VALUES (1,10,'SKU-001',100,'INBOUND','Dock A','Shelf 1','2023-09-01 08:00:00',1001,'2023-09-01 09:00:00',1002,'BATCH-100','2024-01-01 00:00:00','2023-09-01 07:30:00',500,5.00,500.00,'RCV','Received from supplier',1);
INSERT INTO warehouse_inventory_movements VALUES (2,10,'SKU-002',-20,'OUTBOUND','Shelf 2','Dispatch','2023-09-02 10:15:00',1003,'2023-09-02 10:45:00',1004,'BATCH-101','2023-12-31 00:00:00','2023-09-02 09:45:00',501,12.00,240.00,'SHP','Shipped to customer',1);
INSERT INTO warehouse_inventory_movements VALUES (3,11,'SKU-003',50,'TRANSFER','Shelf 3','Shelf 4','2023-09-03 14:20:00',1005,'2023-09-03 14:50:00',1006,'BATCH-102','2025-06-30 00:00:00','2023-09-03 13:55:00',502,8.50,425.00,'TRF','Internal stock transfer',0);

-- Clinical Trial Participants
CREATE TABLE clinical_trial_participants (
    ParticipantId INTEGER PRIMARY KEY,
    TrialId INTEGER,
    FirstName TEXT,
    LastName TEXT,
    DOB DATE,
    Gender TEXT,
    EnrollmentDate DATETIME,
    ConsentGiven INTEGER,
    SiteId INTEGER,
    InvestigatorId INTEGER,
    Status TEXT,
    AdverseEventFlag INTEGER,
    LastVisitDate DATETIME,
    NextVisitDate DATETIME,
    TreatmentArm TEXT,
    DosageMg REAL,
    WeightKg REAL,
    HeightCm REAL,
    ContactPhone TEXT,
    Email TEXT
);

INSERT INTO clinical_trial_participants VALUES (1,2001,'John','Doe','1980-05-12','Male','2023-01-15 09:00:00',1,301,401,'Active',0,'2023-06-01 10:00:00','2023-07-01 09:30:00','ArmA',50.0,80.5,175,'555-1234','john.doe@example.com');
INSERT INTO clinical_trial_participants VALUES (2,2001,'Jane','Smith','1975-09-23','Female','2023-02-20 11:30:00',1,301,402,'Active',1,'2023-06-05 14:00:00','2023-07-05 13:45:00','ArmB',75.0,68.2,162,'555-5678','jane.smith@example.com');
INSERT INTO clinical_trial_participants VALUES (3,2002,'Alice','Brown','1990-12-05','Female','2023-03-10 08:45:00',1,302,403,'Withdrawn',0,'2023-05-20 09:15:00','2023-06-20 09:00:00','ArmA',60.0,55.0,160,'555-9012','alice.brown@example.com');

-- Media Asset Metadata
CREATE TABLE media_asset_metadata (
    AssetId INTEGER PRIMARY KEY,
    FileName TEXT,
    FileType TEXT,
    FileSizeBytes BIGINT,
    DurationSeconds REAL,
    WidthPixels INTEGER,
    HeightPixels INTEGER,
    CreatedAt DATETIME,
    UploadedBy INTEGER,
    Description TEXT,
    Tags TEXT,
    LicenseType TEXT,
    CopyrightHolder TEXT,
    IsPublic INTEGER,
    EncodingFormat TEXT,
    BitrateKbps INTEGER,
    FrameRate REAL,
    Language TEXT,
    TranscriptionStatus TEXT,
    StorageLocation TEXT
);

INSERT INTO media_asset_metadata VALUES (1,'video1.mp4','video',104857600,300.5,1920,1080,'2023-04-01 12:00:00',1001,'Promotional video','promo,2023','Standard','CompanyX',1,'H.264',4500,30.0,'en','Completed','s3://media/video1.mp4');
INSERT INTO media_asset_metadata VALUES (2,'audio1.wav','audio',52428800,180.0,0,0,'2023-04-05 09:30:00',1002,'Podcast episode','podcast,tech','Creative Commons','CompanyY',0,'PCM',1411,0.0,'en','Pending','s3://media/audio1.wav');
INSERT INTO media_asset_metadata VALUES (3,'image1.png','image',2097152,0,800,600,'2023-04-10 15:45:00',1003,'Product screenshot','screenshot,product','Royalty Free','CompanyZ',1,'PNG',0,0.0,'en','N/A','s3://media/image1.png');

-- Conference Schedule
CREATE TABLE conference_schedule (
    EventId INTEGER PRIMARY KEY,
    ConferenceName TEXT,
    SessionTitle TEXT,
    SpeakerId INTEGER,
    SpeakerName TEXT,
    SessionStart DATETIME,
    SessionEnd DATETIME,
    RoomName TEXT,
    TrackName TEXT,
    SessionType TEXT,
    Abstract TEXT,
    Capacity INTEGER,
    RegisteredAttendees INTEGER,
    IsKeynote INTEGER,
    IsLiveStreamed INTEGER,
    SponsorName TEXT,
    Language TEXT,
    DifficultyLevel TEXT,
    Tags TEXT,
    LiveUrl TEXT
);

INSERT INTO conference_schedule VALUES (1,'TechSummit2023','Future of AI','501','Dr Alice Johnson','2023-10-01 09:00:00','2023-10-01 10:30:00','Hall A','AI','Keynote','Exploring upcoming AI trends',500,470,1,1,'TechCorp','en','Advanced','AI,Future','https://stream.example.com/ai');
INSERT INTO conference_schedule VALUES (2,'TechSummit2023','Cloud Security Best Practices','502','Mr Bob Lee','2023-10-01 11:00:00','2023-10-01 12:00:00','Room 101','Security','Workshop','Hands‑on security workshop',150,140,0,0,'SecureInc','en','Intermediate','Cloud,Security','');
INSERT INTO conference_schedule VALUES (3,'TechSummit2023','Data Visualization Tools','503','Ms Carol Smith','2023-10-01 14:00:00','2023-10-01 15:00:00','Room 202','Data','Seminar','Overview of modern visualization tools',200,180,0,1,'DataVizCo','en','Beginner','Data,Visualization','https://stream.example.com/dataviz');

-- Research Grant Applications
CREATE TABLE research_grant_applications (
    ApplicationId INTEGER PRIMARY KEY,
    GrantProgram TEXT,
    ApplicantOrg TEXT,
    PrincipalInvestigator TEXT,
    PIEmail TEXT,
    SubmissionDate DATETIME,
    RequestedAmount DECIMAL,
    ApprovedAmount DECIMAL,
    FundingYear INTEGER,
    Status TEXT,
    ReviewScore REAL,
    ReviewComments TEXT,
    ProjectTitle TEXT,
    ProjectSummary TEXT,
    DurationMonths INTEGER,
    StartDate DATETIME,
    EndDate DATETIME,
    CoInvestigatorCount INTEGER,
    IsInternational INTEGER,
    AwardedBy TEXT
);

INSERT INTO research_grant_applications VALUES (1,'AI Innovation','University A','Dr Emily White','emily.white@univa.edu','2023-03-01 10:00:00',250000.00,200000.00,2024,'Approved',4.7','Strong proposal with clear impact','AI for Climate Modeling','Develop AI models to predict climate patterns',24,'2024-01-15 00:00:00','2025-12-31 23:59:59',2,1,'NationalScienceFund');
INSERT INTO research_grant_applications VALUES (2,'HealthTech','Institute B','Dr Michael Green','michael.green@instb.org','2023-04-15 14:30:00',150000.00,0.00,2024,'Rejected',3.2','Methodology needs refinement','Wearable Sensors for Cardiac Monitoring','Create low‑cost wearable devices for heart health',18,'2024-06-01 00:00:00','2025-11-30 23:59:59',1,0,'HealthResearchCouncil');
INSERT INTO research_grant_applications VALUES (3,'Renewable Energy','Company C','Dr Sara Patel','sara.patel@compc.com','2023-05-20 09:45:00',300000.00,300000.00,2024,'Approved',4.9','Excellent technical plan','Solar Grid Integration','Integrate solar farms into existing grid infrastructure',36,'2024-03-01 00:00:00','2027-02-28 23:59:59',3,1,'EnergyInnovationAgency');