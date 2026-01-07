-- Employee access logs tracking card and badge usage across facilities
CREATE TABLE employee_access_logs
(
    LogID                     INTEGER PRIMARY KEY AUTOINCREMENT,
    EmployeeID                INTEGER NOT NULL,
    AccessPointID             INTEGER NOT NULL,
    AccessTime                DATETIME NOT NULL,
    AccessResult              TEXT NOT NULL,
    DeviceIP                  TEXT,
    TerminalID                TEXT,
    ShiftID                   INTEGER,
    Department                TEXT,
    Reason                    TEXT,
    AuthMethod                TEXT,
    CardSerial                TEXT,
    BadgeNumber               TEXT,
    LocationLatitude          REAL,
    LocationLongitude         REAL,
    FirmwareVersion           TEXT,
    SecurityLevel             INTEGER,
    Remarks                    TEXT,
    CreatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    IsRemote                  BOOLEAN,
    VerificationCode          TEXT,
    Zone                      TEXT
);

INSERT INTO employee_access_logs (EmployeeID,AccessPointID,AccessTime,AccessResult,DeviceIP,TerminalID,ShiftID,Department,Reason,AuthMethod,CardSerial,BadgeNumber,LocationLatitude,LocationLongitude,FirmwareVersion,SecurityLevel,Remarks,IsRemote,VerificationCode,Zone) VALUES
(101,12,'2023-07-01 08:15:00','Granted','10.0.0.5','T001',1,'Operations','StartShift','Badge','CS12345','B001',40.7128,-74.0060,'v1.2',3,'',0,'VC001','NorthWing'),
(102,15,'2023-07-01 12:45:00','Denied','10.0.0.8','T002',1,'Finance','AccessRestrictedArea','PIN','CS67890','B002',34.0522,-118.2437,'v1.3',2,'Invalid PIN',0,'VC002','SouthWing'),
(103,9,'2023-07-01 17:30:00','Granted','10.0.0.12','T003',2,'HR','EndShift','Biometric','CS54321','B003',41.8781,-87.6298,'v1.2',4,'',1,'VC003','WestWing');

-- City infrastructure projects for public works and capital improvements
CREATE TABLE city_infrastructure_projects
(
    ProjectID                 INTEGER PRIMARY KEY AUTOINCREMENT,
    ProjectName               TEXT NOT NULL,
    ProjectType               TEXT,
    StartDate                 DATE,
    EndDate                   DATE,
    Budget                    REAL,
    FundingSource             TEXT,
    Status                    TEXT,
    LeadAgency                TEXT,
    ContractorID              INTEGER,
    ContractAmount            REAL,
    EstimatedCompletionDate   DATE,
    ActualCompletionDate      DATE,
    ImpactArea                TEXT,
    EstimatedJobs             INTEGER,
    CreatedBy                 TEXT,
    CreatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    ProjectDescription        TEXT,
    Latitude                  REAL,
    Longitude                 REAL,
    EnvironmentalReviewStatus TEXT,
    PermitNumber              TEXT
);

INSERT INTO city_infrastructure_projects (ProjectName,ProjectType,StartDate,EndDate,Budget,FundingSource,Status,LeadAgency,ContractorID,ContractAmount,EstimatedCompletionDate,ActualCompletionDate,ImpactArea,EstimatedJobs,CreatedBy,ProjectDescription,Latitude,Longitude,EnvironmentalReviewStatus,PermitNumber) VALUES
('Downtown Water Main Replacement','Utility','2023-02-15','2025-08-30',25000000,'Municipal Bonds','InProgress','Public Works',401,25000000,'2025-08-30',NULL,'Central Business District',120,'JaneDoe','Replace aging water mains to improve service reliability',39.9526,-75.1652,'Approved','WR-2023-001'),
('Eastside Bike Lane Expansion','Transportation','2023-06-01','2024-12-15',8000000,'State Grant','Planning','Transportation Dept',402,8000000,'2024-12-15',NULL,'Eastside Residential',45,'JohnSmith','Add 5 miles of protected bike lanes',40.7306,-73.9352,'Pending','BL-2023-018'),
('Riverfront Park Revitalization','Recreation','2024-01-10','2026-11-20',15000000,'Private Donation','Pending','Parks & Recreation',403,15000000,'2026-11-20',NULL,'Riverfront',80,'EmilyClark','Create new green spaces and walking trails along the river',34.0522,-118.2437,'Review','RP-2024-007');

-- Environmental sensor deployments across the region
CREATE TABLE environmental_sensor_deployments
(
    DeploymentID              INTEGER PRIMARY KEY AUTOINCREMENT,
    SensorID                  TEXT NOT NULL,
    SensorType                TEXT,
    InstallationDate          DATE,
    DecommissionDate          DATE,
    Latitude                  REAL,
    Longitude                 REAL,
    Elevation                 REAL,
    Manufacturer              TEXT,
    Model                     TEXT,
    FirmwareVersion           TEXT,
    CalibrationDate           DATE,
    CalibrationDueDate        DATE,
    MaintenanceFrequencyDays  INTEGER,
    LastMaintenanceDate       DATE,
    Status                    TEXT,
    OwnerOrganization         TEXT,
    ContactEmail              TEXT,
    PowerSource               TEXT,
    ConnectivityType          TEXT,
    DataEndpointURL           TEXT,
    Remarks                   TEXT,
    CreatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO environmental_sensor_deployments (SensorID,SensorType,InstallationDate,DecommissionDate,Latitude,Longitude,Elevation,Manufacturer,Model,FirmwareVersion,CalibrationDate,CalibrationDueDate,MaintenanceFrequencyDays,LastMaintenanceDate,Status,OwnerOrganization,ContactEmail,PowerSource,ConnectivityType,DataEndpointURL,Remarks) VALUES
('SEN-001','AirQuality','2022-05-20',NULL,36.1699,-115.1398,610,'EnviroTech','AQ-1000','1.0.3','2023-05-20','2024-05-20',180,'2023-05-18','Active','City Environmental Agency','airquality@city.gov','Solar','LTE','https://data.city.gov/sensors/001','',),
('SEN-002','WaterQuality','2023-01-15',NULL,47.6062,-122.3321,50,'HydroSense','WQ-200','2.1.0','2023-07-01','2024-07-01',365,'2023-07-01','Active','Water Authority','waterquality@wa.gov','Mains','WiFi','https://data.city.gov/sensors/002','Installed near intake',),
('SEN-003','Noise','2021-11-10',NULL,40.7128,-74.0060,10,'SoundMetrics','N-300','3.0.1','2022-11-10','2023-11-10',90,'2022-11-09','MaintenanceRequired','Public Works','noise@city.gov','Battery','5G','https://data.city.gov/sensors/003','Requires battery replacement');

-- Public art inventory cataloging installations throughout the city
CREATE TABLE public_art_inventory
(
    ArtID                     INTEGER PRIMARY KEY AUTOINCREMENT,
    Title                     TEXT NOT NULL,
    Artist                    TEXT,
    CreationYear              INTEGER,
    Medium                    TEXT,
    Dimensions                TEXT,
    LocationName              TEXT,
    Latitude                  REAL,
    Longitude                 REAL,
    InstallationDate          DATE,
    ConditionStatus           TEXT,
    ConservationPlan          TEXT,
    Sponsor                   TEXT,
    FundingAmount             REAL,
    Category                  TEXT,
    IsPublic                  BOOLEAN,
    OwnedBy                   TEXT,
    ContactPhone              TEXT,
    WebsiteURL                TEXT,
    PhotoReference            TEXT,
    Description               TEXT,
    LastInspectionDate        DATE,
    NextInspectionDue         DATE,
    CreatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO public_art_inventory (Title,Artist,CreationYear,Medium,Dimensions,LocationName,Latitude,Longitude,InstallationDate,ConditionStatus,ConservationPlan,Sponsor,FundingAmount,Category,IsPublic,OwnedBy,ContactPhone,WebsiteURL,PhotoReference,Description,LastInspectionDate,NextInspectionDue) VALUES
('Harmony of Light','Ava Rivera',2019,'LED Installation','10x10 ft','Main Plaza',38.9072,-77.0369,'2020-06-15','Good','Annual cleaning','City Council',50000,'Contemporary',1,'City Arts Dept','202-555-0143','http://cityarts.gov/harmony','harmony.jpg','Interactive light sculpture that responds to movement', '2023-05-10','2024-05-10'),
('Riverstone Bridge','Liu Chen',2015,'Stainless Steel','30 ft span','Riverwalk',34.0522,-118.2437,'2016-09-01','Fair','Structural assessment','Private Donor',75000,'Sculpture',1,'Riverwalk Authority','310-555-0199','http://riverwalk.org/stonebridge','stonebridge.png','Bridge-shaped sculpture symbolizing community connection', '2023-03-22','2024-03-22'),
('Echoes of History','Mona Patel',2021,'Bronze','5 ft tall','Historical Museum Courtyard',41.8781,-87.6298,'2022-04-10','Excellent','Routine polish','Historical Society',30000,'Historical',1,'Museum','312-555-0120','http://historymuseum.org/echoes','echoes.jpg','Bronze relief depicting local historical events', '2023-08-01','2024-08-01');

-- Water quality monitoring stations data
CREATE TABLE water_quality_monitoring_stations
(
    StationID                 INTEGER PRIMARY KEY AUTOINCREMENT,
    StationName               TEXT NOT NULL,
    RiverBasin                TEXT,
    Latitude                  REAL,
    Longitude                 REAL,
    Elevation                 REAL,
    InstallationDate          DATE,
    OperatorAgency            TEXT,
    SamplingFrequencyDays     INTEGER,
    ParameterSet              TEXT,
    LastSampleDate            DATE,
    NextSampleDue             DATE,
    DataAccessURL             TEXT,
    CalibrationStatus         TEXT,
    PowerSupply               TEXT,
    Connectivity              TEXT,
    MaintenanceContractID     INTEGER,
    Status                    TEXT,
    Remarks                   TEXT,
    CreatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    LatitudeWGS84             REAL,
    LongitudeWGS84            REAL
);

INSERT INTO water_quality_monitoring_stations (StationName,RiverBasin,Latitude,Longitude,Elevation,InstallationDate,OperatorAgency,SamplingFrequencyDays,ParameterSet,LastSampleDate,NextSampleDue,DataAccessURL,CalibrationStatus,PowerSupply,Connectivity,MaintenanceContractID,Status,Remarks,LatitudeWGS84,LongitudeWGS84) VALUES
('North Creek Station','North River',40.7128,-74.0060,15,'2020-03-12','Dept of Environment',7,'pH,Turbidity,Conductivity','2023-06-28','2023-07-05','https://data.city.gov/water/northcreek','Calibrated','Solar','Cellular',101,'Active','',40.7128,-74.0060),
('West Valley Station','West Basin',34.0522,-118.2437,30,'2021-07-22','Water Authority',14,'pH,DO,Nitrates','2023-06-20','2023-07-04','https://data.city.gov/water/westvalley','Due','Mains','WiFi',102,'Active','Battery replacement scheduled',34.0522,-118.2437),
('Eastside Reservoir','East River',41.8781,-87.6298,20,'2019-11-05','Regional Water Dept',30,'pH,Hardness,Chlorides','2023-06-01','2023-07-01','https://data.city.gov/water/eastside','Calibrated','Solar','Satellite',103,'Maintenance','Sensor cleaning required',41.8781,-87.6298);

-- Energy market trade settlements information
CREATE TABLE energy_market_trade_settlements
(
    SettlementID              INTEGER PRIMARY KEY AUTOINCREMENT,
    TradeID                   TEXT NOT NULL,
    TradeDate                 DATE,
    SettlementDate            DATE,
    BuyerCompany              TEXT,
    SellerCompany             TEXT,
    EnergyQuantityMWh         REAL,
    EnergyPriceUSDPerMWh      REAL,
    TotalAmountUSD            REAL,
    Currency                  TEXT,
    SettlementStatus          TEXT,
    PaymentMethod             TEXT,
    InvoiceNumber             TEXT,
    ContractReference         TEXT,
    MarketSegment             TEXT,
    DeliveryRegion            TEXT,
    CreatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    Remarks                   TEXT,
    SettlementType            TEXT,
    BrokerID                  INTEGER,
    ComplianceFlag            BOOLEAN,
    RegulatoryBody            TEXT
);

INSERT INTO energy_market_trade_settlements (TradeID,TradeDate,SettlementDate,BuyerCompany,SellerCompany,EnergyQuantityMWh,EnergyPriceUSDPerMWh,TotalAmountUSD,Currency,SettlementStatus,PaymentMethod,InvoiceNumber,ContractReference,MarketSegment,DeliveryRegion,Remarks,SettlementType,BrokerID,ComplianceFlag,RegulatoryBody) VALUES
('T2023001','2023-05-10','2023-05-12','Alpha Energy','Beta Power',5000,45.25,226250,'USD','Settled','WireTransfer','INV-1001','CTR-2001','Wholesale','Midwest','', 'Standard',12,1,'FERC'),
('T2023002','2023-05-11','2023-05-13','Gamma Utilities','Delta Renewables',3000,52.10,156300,'USD','Pending','ACH','INV-1002','CTR-2002','Renewable','Pacific','Delayed due to bank processing','Expedited',15,0,'FERC'),
('T2023003','2023-05-12','2023-05-14','Epsilon Corp','Zeta Energy',7500,48.75,365625,'USD','Settled','Check','INV-1003','CTR-2003','Retail','Northeast','', 'Standard',18,1,'FERC');

-- Logistics route weather condition records
CREATE TABLE logistics_route_weather_conditions
(
    RouteWeatherID            INTEGER PRIMARY KEY AUTOINCREMENT,
    RouteID                   INTEGER NOT NULL,
    ObservationDate           DATE,
    TemperatureC              REAL,
    PrecipitationMM          REAL,
    WindSpeedKPH             REAL,
    WindDirection            TEXT,
    VisibilityKM             REAL,
    WeatherCondition         TEXT,
    HumidityPercent          REAL,
    RoadSurface              TEXT,
    TrafficImpact            TEXT,
    UpdatedBy                 TEXT,
    CreatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    SensorID                  TEXT,
    Latitude                  REAL,
    Longitude                 REAL,
    Forecasted               BOOLEAN,
    Notes                     TEXT,
    AlertLevel                INTEGER,
    Severity                  TEXT,
    RecordedAt                DATETIME
);

INSERT INTO logistics_route_weather_conditions (RouteID,ObservationDate,TemperatureC,PrecipitationMM,WindSpeedKPH,WindDirection,VisibilityKM,WeatherCondition,HumidityPercent,RoadSurface,TrafficImpact,UpdatedBy,SensorID,Latitude,Longitude,Forecasted,Notes,AlertLevel,Severity,RecordedAt) VALUES
(201,'2023-06-01',22.5,0.0,12.0,'NE',15.0,'Clear',55,'Dry','Normal','system','WX-001',39.7392,-104.9903,0,'No issues',1,'Low','2023-06-01 08:00:00'),
(202,'2023-06-01',18.0,5.2,20.5,'NW',8.0,'Rain',78,'Wet','Moderate','operator','WX-002',34.0522,-118.2437,0,'Localized flooding',2,'Medium','2023-06-01 09:30:00'),
(203,'2023-06-01',5.0,12.5,30.0,'S',3.0,'Snow',92,'Snowy','Heavy','system','WX-003',40.7128,-74.0060,0,'Road closures reported',3,'High','2023-06-01 07:15:00');

-- Digital advertising performance metrics per campaign
CREATE TABLE digital_ad_performance_metrics
(
    MetricID                  INTEGER PRIMARY KEY AUTOINCREMENT,
    CampaignID                INTEGER NOT NULL,
    AdPlacementID            INTEGER,
    Date                      DATE,
    Impressions               INTEGER,
    Clicks                    INTEGER,
    Conversions               INTEGER,
    SpendUSD                  REAL,
    CTR                       REAL,
    CPC                       REAL,
    CPM                       REAL,
    RevenueUSD                REAL,
    ROI                       REAL,
    ViewThroughRate           REAL,
    EngagementScore           REAL,
    DeviceType                TEXT,
    Platform                  TEXT,
    GeoRegion                 TEXT,
    AudienceSegment           TEXT,
    CreativeVersion           TEXT,
    AdFormat                  TEXT,
    FrequencyCap              INTEGER,
    BidAmount                 REAL,
    CreatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO digital_ad_performance_metrics (CampaignID,AdPlacementID,Date,Impressions,Clicks,Conversions,SpendUSD,CTR,CPC,CPM,RevenueUSD,ROI,ViewThroughRate,EngagementScore,DeviceType,Platform,GeoRegion,AudienceSegment,CreativeVersion,AdFormat,FrequencyCap,BidAmount) VALUES
(301,401,'2023-06-10',150000,4500,300,7500,0.03,1.67,50.00,12000,0.60,0.12,75,'Mobile','GoogleAds','NorthAmerica','TechEnthusiasts','v1','Banner',3,2.5),
(302,402,'2023-06-10',200000,5200,410,8200,0.026,1.58,41.00,15000,0.83,0.10,68,'Desktop','Facebook','Europe','TravelSeekers','v2','Video',2,3.0),
(303,403,'2023-06-10',120000,3000,250,6000,0.025,2.00,50.00,9000,0.50,0.09,70,'Tablet','Twitter','Asia','Foodies','v1','Carousel',4,1.8);

-- Fleet inspection records for company vehicles
CREATE TABLE fleet_inspection_records
(
    InspectionID              INTEGER PRIMARY KEY AUTOINCREMENT,
    VehicleID                 INTEGER NOT NULL,
    InspectionDate            DATE,
    InspectorName             TEXT,
    OdometerKm                INTEGER,
    EngineStatus              TEXT,
    BrakeCondition            TEXT,
    TireTreadDepthMM          REAL,
    LightsStatus              TEXT,
    EmissionsTestResult      TEXT,
    SafetyEquipmentStatus     TEXT,
    Remarks                   TEXT,
    FollowUpRequired          BOOLEAN,
    FollowUpDate              DATE,
    CreatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    InspectionLocation        TEXT,
    WeatherCondition          TEXT,
    TemperatureC              REAL,
    HumidityPercent           REAL,
    InspectionType            TEXT,
    DocumentReference         TEXT,
    ComplianceScore           REAL
);

INSERT INTO fleet_inspection_records (VehicleID,InspectionDate,InspectorName,OdometerKm,EngineStatus,BrakeCondition,TireTreadDepthMM,LightsStatus,EmissionsTestResult,SafetyEquipmentStatus,Remarks,FollowUpRequired,FollowUpDate,InspectionLocation,WeatherCondition,TemperatureC,HumidityPercent,InspectionType,DocumentReference,ComplianceScore) VALUES
(501,'2023-05-15','Mike Johnson',45200,'Good','Good',6.5,'AllFunctional','Pass','Complete','None',0,NULL,'Depot A','Sunny',22.0,40,'Annual','DOC-501','95.0'),
(502,'2023-05-18','Sara Lee',37800,'Fair','NeedsReplacement',4.2,'Partial','Fail','Incomplete','Brake pads worn',1,'2023-05-30','Depot B','Rainy',16.0,78,'Quarterly','DOC-502','78.5'),
(503,'2023-05-20','Alan Smith',125000,'Good','Good',7.0,'AllFunctional','Pass','Complete','High mileage but no issues',0,NULL,'Depot C','Cloudy',18.5,55,'Annual','DOC-503','92.0');

-- Renewable energy project milestones tracking
CREATE TABLE renewable_energy_project_milestones
(
    MilestoneID               INTEGER PRIMARY KEY AUTOINCREMENT,
    ProjectID                 INTEGER NOT NULL,
    MilestoneName             TEXT,
    PlannedDate               DATE,
    ActualDate                DATE,
    Status                    TEXT,
    ResponsibleParty          TEXT,
    BudgetAllocated           REAL,
    BudgetSpent               REAL,
    Description               TEXT,
    RiskLevel                 TEXT,
    Dependencies              TEXT,
    ApprovalDate              DATE,
    CreatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt                 DATETIME DEFAULT CURRENT_TIMESTAMP,
    MilestoneType             TEXT,
    ExpectedOutput            TEXT,
    ActualOutput              TEXT,
    Comments                  TEXT,
    ProgressPercent           REAL,
    DeliverableID             INTEGER,
    FundingSource             TEXT,
    RegulatoryApproval        BOOLEAN
);

INSERT INTO renewable_energy_project_milestones (ProjectID,MilestoneName,PlannedDate,ActualDate,Status,ResponsibleParty,BudgetAllocated,BudgetSpent,Description,RiskLevel,Dependencies,ApprovalDate,MilestoneType,ExpectedOutput,ActualOutput,Comments,ProgressPercent,DeliverableID,FundingSource,RegulatoryApproval) VALUES
(601,'Site Acquisition','2023-01-15','2023-01-20','Completed','LandDept',2000000,2000000,'Acquire land for solar farm','Low','None','2022-12-01','Legal','Deed','Deed','All legal documents signed',100,801,'State Grants',1),
(602,'Permitting','2023-03-01','2023-04-10','Completed','EnviroAgency',500000,520000,'Obtain environmental permits','Medium','Site Acquisition','2023-02-15','Regulatory','Permit','Permit','Permits received with conditions',100,802,'Federal Funds',1),
(603,'Construction Start','2023-06-01','2023-06-15','InProgress','ConstructionCo',8000000,4000000,'Begin building solar array','High','Permitting','2023-05-20','Physical','Installed Panels','4500 panels installed',50,803,'Private Equity',0);