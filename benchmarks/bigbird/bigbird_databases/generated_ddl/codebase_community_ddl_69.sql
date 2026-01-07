-- Academic conferences metadata
CREATE TABLE academic_conferences (
    Id INTEGER NOT NULL PRIMARY KEY,
    ConferenceName TEXT,
    Acronym TEXT,
    StartDate DATE,
    EndDate DATE,
    LocationCity TEXT,
    LocationCountry TEXT,
    Organizer TEXT,
    AttendanceEstimate INTEGER,
    KeynoteSpeaker TEXT,
    Theme TEXT,
    SubmissionDeadline DATE,
    RegistrationFee REAL,
    SponsorCount INTEGER,
    SponsorLevel TEXT,
    PanelCount INTEGER,
    WorkshopCount INTEGER,
    SocialEvent TEXT,
    ProceedingsURL TEXT,
    ContactEmail TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Notes TEXT
);
INSERT INTO academic_conferences VALUES (1,'International Data Science Conference','IDSC','2023-09-15','2023-09-18','Berlin','Germany','DataScienceOrg',1200,'Dr Smith','AI and Ethics','2023-06-30',350.00,5,'Gold',12,4,'Gala Dinner','http://idsc.example.com/proceedings','info@idsc.example.com','2023-01-01 09:00:00','2023-01-01 09:00:00','First edition');
INSERT INTO academic_conferences VALUES (2,'Global Robotics Expo','GRE','2024-03-10','2024-03-13','Tokyo','Japan','RoboticsAssoc',800,'Prof Lee','Future of Automation','2023-12-01',420.00,3,'Silver',8,3,'Networking Reception','http://gre.example.com/proceedings','contact@gre.example.com','2023-02-15 10:30:00','2023-02-15 10:30:00','');
INSERT INTO academic_conferences VALUES (3,'Sustainable Energy Summit','SES','2025-07-20','2025-07-22','Sydney','Australia','EnergyFuture',1500,'Dr Patel','Renewable Integration','2025-04-15',500.00,7,'Platinum',15,5,'Beachside BBQ','http://ses.example.com/doc','admin@ses.example.com','2023-03-05 08:45:00','2023-03-05 08:45:00','Recurring event');

-- Laboratory experiments registry
CREATE TABLE lab_experiments (
    ExperimentId INTEGER NOT NULL PRIMARY KEY,
    ProjectCode TEXT,
    ExperimentName TEXT,
    LeadScientist TEXT,
    StartDate DATETIME,
    EndDate DATETIME,
    LabLocation TEXT,
    EquipmentUsed TEXT,
    SampleCount INTEGER,
    ControlGroupSize INTEGER,
    TreatmentGroupSize INTEGER,
    VariableMeasured TEXT,
    MeasurementUnit TEXT,
    DataFilePath TEXT,
    ProtocolVersion TEXT,
    SafetyRating INTEGER,
    FundingSource TEXT,
    BudgetAllocated REAL,
    ActualCost REAL,
    ResultsSummary TEXT,
    PublicationDOI TEXT,
    CreatedAt DATETIME,
    ModifiedAt DATETIME,
    Status TEXT
);
INSERT INTO lab_experiments VALUES (101,'PJT001','Enzyme Kinetics Study','Dr Allen','2022-01-10 08:00:00','2022-03-15 17:00:00','Lab A','Spectrophotometer','50','25','25','ReactionRate','nmol/min','/data/exp101.csv','v1.2',8,'NationalScienceFund',20000.00,19500.00,'Successful inhibition observed','10.1234/exp101','2022-01-01 09:00:00','2022-03-20 12:00:00','Completed');
INSERT INTO lab_experiments VALUES (102,'PJT002','Cell Viability Assay','Dr Baker','2022-05-01 09:30:00','2022-06-20 16:45:00','Lab B','Flow Cytometer','120','60','60','ViabilityPercentage','%','/data/exp102.csv','v2.0',9,'HealthResearchCouncil',15000.00,14900.00,'High viability in treated cells','10.5678/exp102','2022-04-15 10:15:00','2022-06-25 11:20:00','Completed');
INSERT INTO lab_experiments VALUES (103,'PJT003','Polymer Degradation Test','Dr Chen','2023-02-12 07:45:00','2023-04-30 18:10:00','Lab C','Thermogravimetric Analyzer','30','15','15','WeightLoss','mg','/data/exp103.csv','v1.0',7,'IndustrialPartnerCo',30000.00,31000.00,'Degradation rate exceeds expectations','10.9012/exp103','2023-01-20 08:00:00','2023-05-05 09:30:00','InProgress');

-- Field observations log
CREATE TABLE field_observations (
    ObservationId INTEGER NOT NULL PRIMARY KEY,
    SurveyName TEXT,
    ObserverName TEXT,
    ObservationDate DATE,
    ObservationTime TIME,
    Latitude REAL,
    Longitude REAL,
    ElevationMeters INTEGER,
    WeatherCondition TEXT,
    TemperatureC REAL,
    HumidityPercent INTEGER,
    SpeciesObserved TEXT,
    CountObserved INTEGER,
    PhenologyStage TEXT,
    HabitatType TEXT,
    SoilType TEXT,
    Notes TEXT,
    PhotoReference TEXT,
    GPSDeviceId TEXT,
    DataCollectedBy TEXT,
    VerificationStatus TEXT,
    CreatedTimestamp DATETIME,
    UpdatedTimestamp DATETIME,
    RegionCode TEXT
);
INSERT INTO field_observations VALUES (5001,'Riverine Bird Survey','Alice','2023-04-12','08:15:00',45.1234,-122.5678,250,'Sunny',15.2,55,'Mallard',12,'Adult','Riparian','Silt','Clear water and low vegetation','photo_5001.jpg','GPS123','TeamA','Verified','2023-04-12 08:20:00','2023-04-12 10:00:00','RG01');
INSERT INTO field_observations VALUES (5002,'Mountain Flora Study','Bob','2023-06-05','14:40:00',38.9876,-105.4321,1800,'Cloudy',8.5,70,'Alpine Saxifrage',30,'Flowering','Alpine Meadow','Rocky','Sparse coverage with patches','photo_5002.jpg','GPS456','TeamB','Pending','2023-06-05 14:45:00','2023-06-05 16:10:00','RG02');
INSERT INTO field_observations VALUES (5003,'Coastal Insect Monitoring','Carol','2023-09-20','10:05:00',33.2100,-118.3000,5,'Windy',22.0,40,'Sandhopper',200,'Larva','Beach Dune','Sandy','High activity during tide','photo_5003.jpg','GPS789','TeamC','Verified','2023-09-20 10:10:00','2023-09-20 12:30:00','RG03');

-- Patent applications records
CREATE TABLE patent_applications (
    PatentId INTEGER NOT NULL PRIMARY KEY,
    ApplicationNumber TEXT,
    Title TEXT,
    InventorNames TEXT,
    FilingDate DATE,
    PublicationDate DATE,
    GrantDate DATE,
    PatentStatus TEXT,
    InternationalClassification TEXT,
    TechnologySector TEXT,
    Abstract TEXT,
    ClaimsCount INTEGER,
    PriorArtReferences TEXT,
    FeePaid REAL,
    AttorneyFirm TEXT,
    CorrespondenceAddress TEXT,
    PriorityDate DATE,
    CountryOfOrigin TEXT,
    FundingSource TEXT,
    EstimatedMarketValue REAL,
    RelatedProjectCode TEXT,
    CreatedOn DATETIME,
    UpdatedOn DATETIME,
    Notes TEXT
);
INSERT INTO patent_applications VALUES (9001,'US20230012345','Self‑adjusting Solar Panel','John Doe; Jane Smith','2022-11-01','2023-05-15','2024-02-20','Granted','H02S','Renewable Energy','A solar panel that automatically adjusts its angle based on sun position','12','US20220098765','1500.00','EnergyLaw LLP','123 Innovation Way, Tech City','2022-10-15','USA','VentureCapitalFund','2500000.00','PRJ789','2022-11-01 09:00:00','2024-02-20 11:30:00','');
INSERT INTO patent_applications VALUES (9002,'EP20230054321','Biodegradable Packaging Material','Alice Green','2023-02-10','2023-08-01','Pending','Pending','C08L','Packaging','A packaging material derived from plant fibers that decomposes within 30 days','9','EP20220011223','2000.00','GreenIP Services','45 Eco Blvd, Green City','2023-01-20','Germany','EcoFund','1200000.00','PRJ456','2023-02-10 10:15:00','2023-08-01 14:00:00','Awaiting grant');
INSERT INTO patent_applications VALUES (9003,'CN20230077788','AI‑Driven Traffic Signal Control','Wei Liu','2022-07-05','2023-01-20','2023-12-10','Granted','G06Q','Transportation','System that optimizes traffic signal timings using real‑time AI analysis','15','CN20220033445','1800.00','TechIP Co.','78 Innovation Road, Shanghai','2022-06-20','China','StateResearchGrant','3000000.00','PRJ321','2022-07-05 08:30:00','2023-12-10 16:45:00','');

-- Grant review panels
CREATE TABLE grant_review_panels (
    PanelId INTEGER NOT NULL PRIMARY KEY,
    GrantProgram TEXT,
    PanelName TEXT,
    ReviewCycle TEXT,
    StartDate DATE,
    EndDate DATE,
    ChairPerson TEXT,
    NumberOfMembers INTEGER,
    MemberNames TEXT,
    EvaluationCriteria TEXT,
    ScoringScale TEXT,
    TotalApplications INTEGER,
    ApplicationsReviewed INTEGER,
    AverageScore REAL,
    FundingAllocated REAL,
    DecisionOutcome TEXT,
    MinutesDocumentPath TEXT,
    ConfidentialityLevel TEXT,
    ConflictOfInterestPolicy TEXT,
    CommunicationMethod TEXT,
    CreatedAt DATETIME,
    ModifiedAt DATETIME,
    Notes TEXT
);
INSERT INTO grant_review_panels VALUES (301,'Science Innovation Fund','Spring 2023 Review','Quarterly','2023-03-01','2023-04-15','Dr Emily White',7,'Dr A;Dr B;Dr C;Dr D;Dr E;Dr F;Dr G','Impact;Feasibility;Budget','1-10',120,115,7.8,850000.00,'Approved','/docs/panel301_minutes.pdf','High','Signed declaration','Video conference','2023-02-20 09:00:00','2023-04-16 12:00:00','');
INSERT INTO grant_review_panels VALUES (302,'Health Advancement Grant','Fall 2023 Review','Quarterly','2023-09-05','2023-10-20','Prof Michael Brown',5,'Prof H;Prof I;Prof J;Prof K;Prof L','Innovation;Relevance;Team','1-5',80,78,4.5,500000.00,'Partial','/docs/panel302_minutes.pdf','Medium','Signed declaration','In‑person','2023-08-25 10:30:00','2023-10-21 14:45:00','');
INSERT INTO grant_review_panels VALUES (303,'Technology Transfer Initiative','Winter 2023 Review','Biannual','2023-12-01','2024-01-10','Dr Sarah Kim',6,'Dr M;Dr N;Dr O;Dr P;Dr Q;Dr R','Commercial Potential;IP Strength;Team','1-7',60,55,6.2,400000.00,'Approved','/docs/panel303_minutes.pdf','High','Signed declaration','Hybrid','2023-11-20 08:45:00','2024-01-11 11:20:00','');

-- Data center assets inventory
CREATE TABLE data_center_assets (
    AssetId INTEGER NOT NULL PRIMARY KEY,
    AssetTag TEXT,
    AssetType TEXT,
    Manufacturer TEXT,
    Model TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyExpiration DATE,
    InstallationDate DATE,
    RackLocation TEXT,
    UPosition INTEGER,
    PowerCapacityKW REAL,
    NetworkPortCount INTEGER,
    FirmwareVersion TEXT,
    OperatingSystem TEXT,
    CurrentStatus TEXT,
    AssignedTo TEXT,
    MaintenanceContractId TEXT,
    LastMaintenanceDate DATE,
    NextMaintenanceDue DATE,
    DepreciationYears INTEGER,
    CurrentValue REAL,
    OriginalCost REAL,
    CreatedTimestamp DATETIME,
    UpdatedTimestamp DATETIME,
    Notes TEXT
);
INSERT INTO data_center_assets VALUES (8001,'DC-CPU-001','Server','Dell','PowerEdge R740','SN1001','2021-02-10','2024-02-10','2021-03-01','Rack12',4,2.5,4,'v2.3','Ubuntu 20.04','Active','ComputeClusterA','MC-100','2023-06-15','2024-06-15',5,4500.00,8000.00,'2021-02-10 09:00:00','2023-06-16 10:00:00','');
INSERT INTO data_center_assets VALUES (8002,'DC-SW-045','Switch','Cisco','Catalyst 9500','SN2005','2020-07-22','2023-07-22','2020-08-05','Rack5',1,1.0,48,'v1.1','N/A','Active','NetworkCore','MC-200','2022-12-01','2023-12-01',3,1200.00,2500.00,'2020-07-22 11:30:00','2023-01-10 14:20:00','');
INSERT INTO data_center_assets VALUES (8003,'DC-PDU-018','PDU','APC','AP8959','SN3003','2019-11-15','2022-11-15','2019-12-01','Rack9',2,1.2,0,'v3.0','N/A','Decommissioned','N/A','MC-300','2021-05-20','2022-05-20',4,300.00,900.00,'2019-11-15 08:45:00','2022-05-21 09:15:00','Removed after upgrade');

-- Software deployment logs
CREATE TABLE software_deployment_logs (
    DeploymentId INTEGER NOT NULL PRIMARY KEY,
    ApplicationName TEXT,
    Version TEXT,
    Environment TEXT,
    DeployedBy TEXT,
    DeploymentStart DATETIME,
    DeploymentEnd DATETIME,
    Status TEXT,
    ReleaseNotes TEXT,
    ChangeSetId TEXT,
    AffectedServers TEXT,
    PreDeploymentBackup BOOLEAN,
    PostDeploymentVerification BOOLEAN,
    DowntimeMinutes INTEGER,
    RollbackPerformed BOOLEAN,
    RollbackVersion TEXT,
    IssueTicketId TEXT,
    ApprovalId TEXT,
    DeploymentTool TEXT,
    ConfigurationFilePath TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Comments TEXT
);
INSERT INTO software_deployment_logs VALUES (4001,'CustomerPortal','3.2.1','Production','jdoe','2023-08-01 22:00:00','2023-08-01 22:30:00','Success','Bug fixes and UI enhancements','CS12345','srv01,srv02',1,1,0,0,NULL,'TCK-987','APP-456','Jenkins','/configs/portal_v3.2.1.yml','2023-08-01 21:45:00','2023-08-01 22:35:00','');
INSERT INTO software_deployment_logs VALUES (4002,'AnalyticsEngine','1.4.0','Staging','asmith','2023-09-10 01:00:00','2023-09-10 01:20:00','Failed','Data model update caused errors','CS67890','stg-analytics-01',1,0,5,1,'1.3.9','TCK-123','APP-789','GitHub Actions','/configs/analytics_v1.4.0.yml','2023-09-09 23:50:00','2023-09-10 01:30:00','Rollback executed due to failure');
INSERT INTO software_deployment_logs VALUES (4003,'InternalTool','2.0.5','Development','mjones','2023-10-05 14:15:00','2023-10-05 14:45:00','Success','Performance improvements','CS54321','dev-tool-01',0,1,0,0,NULL,'TCK-555','APP-321','Azure DevOps','/configs/internaltool_v2.0.5.yml','2023-10-05 14:00:00','2023-10-05 14:50:00','');

-- Customer interaction sessions
CREATE TABLE customer_interaction_sessions (
    SessionId INTEGER NOT NULL PRIMARY KEY,
    CustomerId INTEGER,
    AgentId INTEGER,
    Channel TEXT,
    SessionStart DATETIME,
    SessionEnd DATETIME,
    DurationSeconds INTEGER,
    IssueCategory TEXT,
    IssueSubcategory TEXT,
    ResolutionStatus TEXT,
    SatisfactionScore INTEGER,
    FollowUpRequired BOOLEAN,
    FollowUpDate DATE,
    TranscriptPath TEXT,
    SentimentScore REAL,
    FirstContactResolution BOOLEAN,
    Escalated BOOLEAN,
    EscalationLevel TEXT,
    FeedbackComments TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Notes TEXT
);
INSERT INTO customer_interaction_sessions VALUES (6001,2001,301,'Email','2023-07-12 09:15:00','2023-07-12 09:45:00',1800,'Billing','Invoice Dispute','Resolved',5,0,NULL,'/transcripts/6001.txt',0.85,1,0,NULL,'','2023-07-12 09:10:00','2023-07-12 09:50:00','');
INSERT INTO customer_interaction_sessions VALUES (6002,2002,302,'LiveChat','2023-08-20 14:05:00','2023-08-20 14:20:00',900,'Technical','Login Issue','Pending',4,1,'2023-08-25','/transcripts/6002.txt',0.60,0,0,NULL,'Customer requested callback','2023-08-20 14:00:00','2023-08-20 14:25:00','');
INSERT INTO customer_interaction_sessions VALUES (6003,2003,303,'Phone','2023-09-03 11:30:00','2023-09-03 12:10:00',2400,'Account','Password Reset','Resolved',5,0,NULL,'/transcripts/6003.txt',0.92,1,0,NULL,'','2023-09-03 11:25:00','2023-09-03 12:15:00','');

-- Marketing channel metrics
CREATE TABLE marketing_channel_metrics (
    MetricId INTEGER NOT NULL PRIMARY KEY,
    ChannelName TEXT,
    CampaignId TEXT,
    StartDate DATE,
    EndDate DATE,
    Impressions INTEGER,
    Clicks INTEGER,
    Conversions INTEGER,
    CostUSD REAL,
    RevenueUSD REAL,
    CostPerClick REAL,
    CostPerConversion REAL,
    ClickThroughRate REAL,
    ConversionRate REAL,
    AveragePosition REAL,
    BounceRate REAL,
    AvgSessionDurationSeconds INTEGER,
    NewVisitors INTEGER,
    ReturningVisitors INTEGER,
    TargetAudience TEXT,
    GeoTarget TEXT,
    DeviceCategory TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Notes TEXT
);
INSERT INTO marketing_channel_metrics VALUES (701,'Google Search','CMP-001','2023-01-01','2023-01-31',150000,5000,250,12000.00,25000.00,2.40,48.00,0.0333,0.05,1.8,0.45,180,90000,60000,'Tech Enthusiasts','North America','Desktop','2023-01-01 08:00:00','2023-02-01 09:00:00','');
INSERT INTO marketing_channel_metrics VALUES (702,'Facebook','CMP-002','2023-02-01','2023-02-28',200000,8000,400,15000.00,30000.00,1.875,37.50,0.04,0.05,2.1,0.38,210,120000,80000,'Young Adults','Europe','Mobile','2023-02-01 08:30:00','2023-03-01 09:30:00','');
INSERT INTO marketing_channel_metrics VALUES (703,'LinkedIn','CMP-003','2023-03-01','2023-03-31',80000,2500,150,9000.00,18000.00,3.60,60.00,0.03125,0.06,3.5,0.50,150,50000,30000,'Professionals','Asia','Desktop','2023-03-01 09:00:00','2023-04-01 10:00:00','');

-- Supply chain routes
CREATE TABLE supply_chain_routes (
    RouteId INTEGER NOT NULL PRIMARY KEY,
    OriginLocation TEXT,
    DestinationLocation TEXT,
    ModeOfTransport TEXT,
    CarrierName TEXT,
    EstimatedDeparture DATETIME,
    EstimatedArrival DATETIME,
    ActualDeparture DATETIME,
    ActualArrival DATETIME,
    DistanceKm REAL,
    TransitTimeHours REAL,
    CostUSD REAL,
    FreightType TEXT,
    CargoDescription TEXT,
    WeightKg REAL,
    VolumeCubicMeters REAL,
    HazardousMaterial BOOLEAN,
    TemperatureControlled BOOLEAN,
    CustomsClearanceStatus TEXT,
    TrackingNumber TEXT,
    RouteStatus TEXT,
    CreatedTimestamp DATETIME,
    UpdatedTimestamp DATETIME,
    Notes TEXT
);
INSERT INTO supply_chain_routes VALUES (90001,'Shanghai','Los Angeles','Sea','Oceanic Shipping','2023-05-01 08:00:00','2023-05-20 18:00:00','2023-05-01 09:15:00','2023-05-20 20:30:00',10200,456,25000.00,'Container','Electronics','15000','70',0,0,'Cleared','OCN123456','InTransit','2023-05-01 07:00:00','2023-05-20 21:00:00','');
INSERT INTO supply_chain_routes VALUES (90002,'Berlin','Paris','Rail','EuroRail','2023-06-10 06:30:00','2023-06-10 12:45:00','2023-06-10 06:45:00','2023-06-10 13:00:00',1050,6.5,1200.00,'Bulk','Automotive Parts','8000','45',0,0,'Cleared','ERL987654','Delivered','2023-06-10 05:30:00','2023-06-10 13:15:00','');
INSERT INTO supply_chain_routes VALUES (90003,'Dallas','Chicago','Truck','TransLogistics','2023-07-15 14:00:00','2023-07-15 20:00:00','2023-07-15 14:20:00','2023-07-15 19:45:00',1280,6,800.00,'LTL','Furniture','2000','15',0,0,'Pending','TLK543210','Delayed','2023-07-15 13:45:00','2023-07-15 20:15:00','');