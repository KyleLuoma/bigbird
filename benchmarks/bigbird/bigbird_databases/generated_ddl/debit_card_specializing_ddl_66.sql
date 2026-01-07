-- Transportation incidents table
CREATE TABLE transportation_incidents
(
    IncidentID INTEGER PRIMARY KEY,
    IncidentDate DATE,
    IncidentTime TEXT,
    City TEXT,
    Region TEXT,
    IncidentType TEXT,
    Severity INTEGER,
    Description TEXT,
    ReportingAgency TEXT,
    Latitude REAL,
    Longitude REAL,
    RoadName TEXT,
    Lane TEXT,
    VehiclesInvolved INTEGER,
    Injuries INTEGER,
    Fatalities INTEGER,
    WeatherCondition TEXT,
    RoadCondition TEXT,
    ResponseTimeMinutes INTEGER,
    FollowUpStatus TEXT,
    EstimatedLoss REAL,
    Notes TEXT
);

INSERT INTO transportation_incidents VALUES
(1,'2023-05-12','08:30','Springfield','Midwest','Collision',3,'Two vehicle collision on highway','StatePolice',39.78,-89.64,'I-55','Northbound',2,1,0,'Rain','Wet',15,'Closed',1200.50,'None');

INSERT INTO transportation_incidents VALUES
(2,'2023-06-03','14:45','Rivertown','South','RailroadCrossing',2,'Train struck a truck at crossing','RailSafety',40.12,-88.45,'Railroad Ave','',1,0,0,'Clear','Dry',30,'Investigating',0,'Pending investigation');

INSERT INTO transportation_incidents VALUES
(3,'2023-07-21','22:10','Lakeside','North','Pedestrian',4,'Pedestrian hit near mall','CityPolice',41.01,-90.12,'Main St','Southbound',1,2,0,'Fog','Slippery',10,'Closed',800.00,'Witness statements recorded');

-- Energy policy documents table
CREATE TABLE energy_policy_documents
(
    DocumentID INTEGER PRIMARY KEY,
    Title TEXT,
    Version TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    Agency TEXT,
    Category TEXT,
    Status TEXT,
    ConfidentialLevel TEXT,
    RevisionNumber INTEGER,
    Author TEXT,
    Reviewer TEXT,
    ApprovalDate DATE,
    Summary TEXT,
    Keywords TEXT,
    DocumentURL TEXT,
    PageCount INTEGER,
    Language TEXT,
    Region TEXT,
    FundingSource TEXT,
    ImpactScore REAL,
    Comments TEXT
);

INSERT INTO energy_policy_documents VALUES
(101,'Renewable Integration Guidelines','v1.0','2022-01-01','2025-12-31','EnergyDept','Renewables','Active','Public',1,'JaneSmith','MarkLee','2021-12-15','Guidelines for integrating solar and wind','renewable, integration, solar, wind','http://example.com/doc101.pdf',45,'English','Midwest','FederalGrant',8.5,'No comments');

INSERT INTO energy_policy_documents VALUES
(102,'Energy Efficiency Standards','v2.3','2021-06-15','2024-06-14','EnergyDept','Efficiency','Active','Confidential',3,'LauraBrown','SamKhan','2021-05-30','Updated standards for building efficiency','efficiency, buildings, standards','http://example.com/doc102.pdf',60,'English','National','StateFund',9.2,'Reviewed by legal');

INSERT INTO energy_policy_documents VALUES
(103,'Carbon Pricing Framework','v1.2','2023-03-01','2026-02-28','ClimateAgency','Carbon','Draft','Public',2,'MikeDavis','NinaPatel','2023-02-20','Framework for carbon tax implementation','carbon, pricing, tax','http://example.com/doc103.pdf',70,'English','West','CarbonFund',7.8,'Awaiting stakeholder feedback');

-- City budget allocations table
CREATE TABLE city_budget_allocations
(
    AllocationID INTEGER PRIMARY KEY,
    FiscalYear INTEGER,
    Department TEXT,
    SubDepartment TEXT,
    Program TEXT,
    BudgetCategory TEXT,
    AllocatedAmount REAL,
    ExpenditureToDate REAL,
    Variance REAL,
    ApprovalDate DATE,
    FundingSource TEXT,
    CostCenter TEXT,
    ProjectCode TEXT,
    PriorityLevel TEXT,
    Status TEXT,
    Manager TEXT,
    Notes TEXT,
    LastUpdated DATE,
    Currency TEXT,
    ExchangeRate REAL,
    AdjustedAmount REAL,
    Remarks TEXT
);

INSERT INTO city_budget_allocations VALUES
(5001,2023,'PublicWorks','Roads','BridgeRepair','Capital',5000000,3200000,-1800000,'2022-12-01','GeneralFund','CC101','PRJ001','High','Active','JohnDoe','Phase 1 complete','2023-04-15','USD',1.0,5000000,'On schedule');

INSERT INTO city_budget_allocations VALUES
(5002,2023,'Health','Hospitals','EquipmentUpgrade','Operational',2000000,1500000,-500000,'2022-11-15','HealthGrant','CC202','PRJ045','Medium','Active','EmilyWhite','Awaiting new equipment','2023-04-10','USD',1.0,2000000,'Pending delivery');

INSERT INTO city_budget_allocations VALUES
(5003,2023,'Education','K12','STEMProgram','Programmatic',1200000,800000,-400000,'2022-10-20','EducationFund','CC303','PRJ078','Low','Planned','MichaelGreen','Curriculum development','2023-03-30','USD',1.0,1200000,'Start FY24');

-- Public safety alerts table
CREATE TABLE public_safety_alerts
(
    AlertID INTEGER PRIMARY KEY,
    AlertDate DATE,
    AlertTime TEXT,
    AlertType TEXT,
    Severity INTEGER,
    Description TEXT,
    AffectedArea TEXT,
    IssuingAgency TEXT,
    ContactPhone TEXT,
    ResponseRequired TEXT,
    Status TEXT,
    EstimatedImpact TEXT,
    Instructions TEXT,
    BroadcastChannel TEXT,
    Latitude REAL,
    Longitude REAL,
    DurationHours INTEGER,
    FollowUpDate DATE,
    ArchivedFlag INTEGER,
    Remarks TEXT,
    CreatedBy TEXT,
    UpdateTimestamp DATE
);

INSERT INTO public_safety_alerts VALUES
(9001,'2023-08-01','06:00','TornadoWarning',5,'Severe tornado spotted near county line','CountyNorth','WeatherAgency','555-1234','Evacuate','Open','High','Seek shelter in basement','Radio','41.85','-87.65',3,'2023-08-01',0,'Pending','AlertSystem','2023-08-01');

INSERT INTO public_safety_alerts VALUES
(9002,'2023-09-15','14:30','FloodAdvisory',3,'River levels rising after heavy rain','RiverValley','HydroDept','555-5678','Monitor','Closed','Medium','Move valuables to higher ground','TV','40.22','-89.12',12,'2023-09-16',1,'Situation resolved','AlertSystem','2023-09-16');

INSERT INTO public_safety_alerts VALUES
(9003,'2023-10-05','20:15','SevereWeather',2,'Winter storm expected with heavy snow','MetroArea','WeatherAgency','555-9012','Stay indoors','Open','Low','Avoid travel','Internet','42.10','-88.30',48,'2023-10-06',0,'Ongoing','AlertSystem','2023-10-05');

-- Regional digital infrastructure table
CREATE TABLE regional_digital_infrastructure
(
    InfraID INTEGER PRIMARY KEY,
    Region TEXT,
    City TEXT,
    InfrastructureType TEXT,
    Provider TEXT,
    BandwidthMbps INTEGER,
    LatencyMs REAL,
    CoverageAreaSqKm REAL,
    DeploymentDate DATE,
    Status TEXT,
    MaintenanceContract TEXT,
    SLAHours INTEGER,
    UpgradePlan TEXT,
    BudgetAllocated REAL,
    CurrentUtilizationPct REAL,
    IPRange TEXT,
    FiberOpticLengthKm REAL,
    NumberOfTowers INTEGER,
    NumberOfDataCenters INTEGER,
    SecurityProtocol TEXT,
    Operator TEXT,
    Notes TEXT
);

INSERT INTO regional_digital_infrastructure VALUES
(3001,'Midwest','Springfield','Fiber','NetCorp',1000,15.2,250.5,'2021-05-20','Active','NetCorpMaint','24','Planned 2024 upgrade',2500000,68.5,'192.168.0.0/16',350.0,45,3,'TLS1.3','JohnTech','Core backbone');

INSERT INTO regional_digital_infrastructure VALUES
(3002,'South','Rivertown','5G','MobileX',500,8.5,120.0,'2022-08-10','Active','MobileXMaint','12','Add new sites 2025',1800000,55.0,'10.0.0.0/8',120.0,30,0,'IPSec','AliceNet','Urban coverage');

INSERT INTO regional_digital_infrastructure VALUES
(3003,'North','Lakeside','Satellite','SpaceNet',200,25.0,500.0,'2020-03-15','Active','SpaceNetMaint','48','Upgrade to next gen 2026',3000000,72.0,'172.16.0.0/12',0,0,1,'AES256','BobSat','Rural connectivity');

-- Water resource permits table
CREATE TABLE water_resource_permits
(
    PermitID INTEGER PRIMARY KEY,
    PermitNumber TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    PermitHolder TEXT,
    WaterSource TEXT,
    AllowedWithdrawalCubicMeters REAL,
    MonitoringFrequencyDays INTEGER,
    InspectionAgency TEXT,
    Status TEXT,
    Conditions TEXT,
    RenewalNoticeDate DATE,
    LastInspectionDate DATE,
    ViolationCount INTEGER,
    PenaltyAmount REAL,
    ContactEmail TEXT,
    ContactPhone TEXT,
    Region TEXT,
    UsagePurpose TEXT,
    ConservationMeasure TEXT,
    PermitType TEXT,
    Remarks TEXT
);

INSERT INTO water_resource_permits VALUES
(8001,'WR-2021-001','2021-01-15','2024-01-14','AcmeIndustries','RiverA','150000',30,'EnvAgency','Active','Maintain buffer zone','2023-12-01','2023-06-20',0,0,'info@acme.com','555-1111','Midwest','Industrial','Recycling runoff','Extraction','No remarks');

INSERT INTO water_resource_permits VALUES
(8002,'WR-2022-045','2022-04-01','2025-03-31','GreenFarms','LakeB','50000',60,'WaterDept','Active','No pesticide use','2025-02-28','2023-09-10',1,5000,'contact@greenfarms.org','555-2222','South','Agriculture','Drip irrigation','Withdrawal','Warning issued');

INSERT INTO water_resource_permits VALUES
(8003,'WR-2020-078','2020-07-20','2023-07-19','CityWaterSupply','AquiferC','300000',15,'HealthDept','Expired','Periodic testing required','2023-06-30','2022-12-05',2,12000,'admin@citywater.gov','555-3333','North','Municipal','Recharge wells','Extraction','Pending renewal');

-- Renewable energy project tasks table
CREATE TABLE renewable_energy_project_tasks
(
    TaskID INTEGER PRIMARY KEY,
    ProjectID INTEGER,
    TaskName TEXT,
    AssignedTeam TEXT,
    StartDate DATE,
    EndDate DATE,
    Status TEXT,
    Priority INTEGER,
    EstimatedHours REAL,
    ActualHours REAL,
    Dependencies TEXT,
    ResourcesRequired TEXT,
    OutputMetric TEXT,
    CostEstimate REAL,
    CostActual REAL,
    RiskLevel TEXT,
    ApprovalDate DATE,
    ReviewNotes TEXT,
    ReportingFrequency TEXT,
    Owner TEXT,
    KPI TEXT,
    Comments TEXT
);

INSERT INTO renewable_energy_project_tasks VALUES
(4001,101,'SiteSurvey','SurveyTeam','2023-02-01','2023-02-15','Completed',1,120.0,115.0,'None','Survey equipment','Area hectares','50000','48000','Low','2023-01-20','All metrics met','Weekly','ProjectLead','CoverageRate','No issues');

INSERT INTO renewable_energy_project_tasks VALUES
(4002,101,'Permitting','LegalDept','2023-02-16','2023-04-30','InProgress',2,200.0,90.0,'SiteSurvey','Legal counsel','Permits issued','75000','30000','Medium','2023-01-25','Awaiting environmental clearance','BiWeekly','LegalManager','PermitCount','Pending approvals');

INSERT INTO renewable_energy_project_tasks VALUES
(4003,102,'TurbineInstallation','ConstructionCrew','2023-05-01','2023-08-15','Planned',1,800.0,0.0,'Permitting','Crane, crew','MW installed','2000000','0','High','2023-04-10','Risk of weather delays','Monthly','ConstructionMgr','CapacityMW','Schedule to be confirmed');

-- Air traffic control logs table
CREATE TABLE air_traffic_control_logs
(
    LogID INTEGER PRIMARY KEY,
    FlightNumber TEXT,
    AircraftType TEXT,
    DepartureAirport TEXT,
    ArrivalAirport TEXT,
    ScheduledDeparture DATETIME,
    ActualDeparture DATETIME,
    ScheduledArrival DATETIME,
    ActualArrival DATETIME,
    ControllerID INTEGER,
    Tower TEXT,
    Shift TEXT,
    ClearanceGiven TEXT,
    AltitudeFeet INTEGER,
    SpeedKnots INTEGER,
    HeadingDegrees INTEGER,
    Remarks TEXT,
    IncidentFlag INTEGER,
    FollowUpAction TEXT,
    LogDate DATE,
    RecordedBy TEXT,
    ValidationStatus TEXT
);

INSERT INTO air_traffic_control_logs VALUES
(6001,'AA123','Boeing737','JFK','LAX','2023-07-01 08:00:00','2023-07-01 08:10:00','2023-07-01 11:00:00','2023-07-01 11:05:00',2001,'JFK Tower','Morning','Clearance granted','35000','450','90','On time','0','None','2023-07-01','CtrlOps','Validated');

INSERT INTO air_traffic_control_logs VALUES
(6002,'DL456','AirbusA320','ORD','MIA','2023-07-02 14:30:00','2023-07-02 14:45:00','2023-07-02 18:15:00','2023-07-02 18:30:00',2002,'ORD Tower','Afternoon','Altitude change approved','30000','430','180','Minor delay due to traffic','0','Monitor','2023-07-02','CtrlOps','Validated');

INSERT INTO air_traffic_control_logs VALUES
(6003,'UA789','Boeing777','SFO','SEA','2023-07-03 09:00:00','2023-07-03 09:20:00','2023-07-03 11:30:00','2023-07-03 12:00:00',2003,'SFO Tower','Morning','Speed reduction advised','28000','420','270','Technical issue reported','1','Investigation','2023-07-03','CtrlOps','Pending');

-- Logistics freight vehicles table
CREATE TABLE logistics_freight_vehicles
(
    VehicleID INTEGER PRIMARY KEY,
    VIN TEXT,
    LicensePlate TEXT,
    VehicleType TEXT,
    CapacityTons REAL,
    OwnerCompany TEXT,
    RegistrationDate DATE,
    ExpirationDate DATE,
    ServiceStatus TEXT,
    LastServiceDate DATE,
    Mileage INTEGER,
    FuelType TEXT,
    EmissionStandard TEXT,
    GPSDeviceID TEXT,
    InsurancePolicyNumber TEXT,
    DriverAssigned TEXT,
    RouteRegion TEXT,
    MaintenanceContract TEXT,
    WarrantyEndDate DATE,
    DepreciationValue REAL,
    LeaseTermMonths INTEGER,
    Remarks TEXT
);

INSERT INTO logistics_freight_vehicles VALUES
(7001,'1HGCM82633A004352','ABC1234','Truck','15.0','TransLogistics','2021-03-10','2024-03-09','Active','2023-04-20',75000,'Diesel','Euro5','GPS001','INS-1001','MikeRoe','Midwest','MaintCo','2025-03-10','120000','36','No issues');

INSERT INTO logistics_freight_vehicles VALUES
(7002,'2FTRX18W1XCA12345','XYZ5678','Trailer','20.0','FreightCorp','2020-07-22','2023-07-21','InRepair','2023-01-15',50000,'Diesel','Euro6','GPS002','INS-2002','JaneDoe','South','RepairInc','2024-07-22','95000','48','Rear axle damage');

INSERT INTO logistics_freight_vehicles VALUES
(7003,'3C6JR6DT5DG123456','LMN9012','Van','5.5','CityDelivery','2022-11-05','2025-11-04','Active','2023-06-10',30000,'Electric','Zero','GPS003','INS-3003','SamLee','North','EcoMaint','2027-11-05','30000','24','Battery health good');

-- Urban green space inventory table
CREATE TABLE urban_green_space_inventory
(
    GreenSpaceID INTEGER PRIMARY KEY,
    Name TEXT,
    Type TEXT,
    AreaSqMeters REAL,
    LocationAddress TEXT,
    City TEXT,
    Region TEXT,
    EstablishedDate DATE,
    ManagingAgency TEXT,
    AccessibilityLevel TEXT,
    VisitorCountAnnual INTEGER,
    BiodiversityScore REAL,
    TreesCount INTEGER,
    WaterFeatures TEXT,
    Lighting TEXT,
    MaintenanceSchedule TEXT,
    BudgetAnnual REAL,
    ConservationStatus TEXT,
    PublicFacilities TEXT,
    EventsHosted TEXT,
    GPSLatitude REAL,
    GPSLongitude REAL,
    Notes TEXT
);

INSERT INTO urban_green_space_inventory VALUES
(90001,'Riverfront Park','Park','250000','123 River St','Springfield','Midwest','1995-06-01','ParksDept','High',120000,8.5,1500,'Lake, fountain','Solar','Monthly','50000','Protected','Playground, benches','Summer concerts','39.78','-89.64','Well maintained');

INSERT INTO urban_green_space_inventory VALUES
(90002,'Old Oak Preserve','NatureReserve','400000','456 Oak Rd','Rivertown','South','1980-04-15','ConservationAgency','Medium',45000,9.2,2000','Stream','None','Quarterly','75000','Endangered species area','Trails, info boards','Bird watching events','40.12','-88.45','Limited vehicle access');

INSERT INTO urban_green_space_inventory VALUES
(90003,'Central Plaza','Square','80000','789 Main Ave','Lakeside','North','2005-09-20','CityCouncil','High',250000,7.0,200,'Fountain','LED','Weekly','30000','Open','Seating, wifi','Art festivals','41.01','-90.12','Popular downtown spot');