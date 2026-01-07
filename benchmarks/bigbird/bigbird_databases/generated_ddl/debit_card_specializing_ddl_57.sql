-- Table storing average, max and min traffic noise levels per region
CREATE TABLE regional_traffic_noise_levels (
    RegionID INTEGER,
    RegionName TEXT,
    MonitoringDate DATE,
    NoiseLevelAvg REAL,
    NoiseLevelMax REAL,
    NoiseLevelMin REAL,
    SensorCount INTEGER,
    MeasurementMethod TEXT,
    SourceAgency TEXT,
    Latitude REAL,
    Longitude REAL,
    Population INTEGER,
    AvgVehicleCount INTEGER,
    WeatherCondition TEXT,
    Temperature REAL,
    Humidity REAL,
    NoiseStandard TEXT,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO regional_traffic_noise_levels VALUES (1,'North District','2025-03-15',68.4,85.2,55.1,12,'SoundMeter','DeptTransport',45.1234,-73.5678,120000,45200,'Clear',22.5,45,'ISO1996','Initial survey','2025-03-16 08:00:00','2025-03-16 08:00:00');
INSERT INTO regional_traffic_noise_levels VALUES (2,'South Valley','2025-03-15',71.2,90.0,60.3,9,'MicrophoneArray','EnvAgency',44.9876,-73.4321,95000,38900,'Rain',19.8,78,'ISO1996','Follow up','2025-03-16 09:15:00','2025-03-16 09:15:00');
INSERT INTO regional_traffic_noise_levels VALUES (3,'East Riverside','2025-03-15',65.9,80.5, fifty? ,10,'SoundMeter','DeptTransport',45.5432,-73.2109,80000,31000,'Fog',18.0,82,'ISO1996','Baseline','2025-03-16 10:30:00','2025-03-16 10:30:00');

-- Table cataloging roadside trees managed by the municipality
CREATE TABLE municipal_roadside_tree_inventory (
    TreeID INTEGER,
    Species TEXT,
    PlantDate DATE,
    HeightCM INTEGER,
    DiameterCM INTEGER,
    HealthStatus TEXT,
    StreetName TEXT,
    SideOfStreet TEXT,
    GPSLat REAL,
    GPSLong REAL,
    OwnerEntity TEXT,
    MaintenanceCycleMonths INTEGER,
    LastPruned DATE,
    NextPruneDue DATE,
    SoilType TEXT,
    IrrigationType TEXT,
    CanopyAreaSqM REAL,
    ShadeRating INTEGER,
    MunicipalZone TEXT,
    RecordedBy TEXT,
    RecordDate DATE,
    Comments TEXT
);

INSERT INTO municipal_roadside_tree_inventory VALUES (1001,'Acer saccharum','2018-04-22',450,30,'Good','Maple Ave','North',45.1122,-73.3311,'CityDept','12','2024-09-15','2025-09-15','Loam','Drip',12.5,4,'ZoneA','JohnDoe','2025-01-05','No issues');
INSERT INTO municipal_roadside_tree_inventory VALUES (1002,'Quercus rubra','2016-06-10',620,45,'Fair','Oak St','South',45.2233,-73.4422,'CityDept','12','2024-08-20','2025-08-20','Clay','Sprinkler',15.8,3,'ZoneB','JaneSmith','2025-01-07','Minor bark damage');
INSERT INTO municipal_roadside_tree_inventory VALUES (1003,'Betula papyrifera','2019-09-05',370,20,'Excellent','Birch Rd','East',45.3344,-73.5533,'CityDept','12','2024-10-01','2025-10-01','Sandy','None',9.2,5,'ZoneC','MikeBrown','2025-01-09','Healthy');

-- Table describing bicycle infrastructure projects in the city
CREATE TABLE city_bicycle_infrastructure_projects (
    ProjectID INTEGER,
    ProjectName TEXT,
    StartDate DATE,
    EndDate DATE,
    BudgetUSD REAL,
    FundingSource TEXT,
    LengthMeters INTEGER,
    Type TEXT,
    Status TEXT,
    LeadAgency TEXT,
    Contractor TEXT,
    EstimatedUsers INTEGER,
    BikeLaneCount INTEGER,
    RackCount INTEGER,
    SignageCount INTEGER,
    GreenInfrastructure INTEGER,
    CommunityEngagementScore INTEGER,
    EnvironmentalImpactScore INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Notes TEXT
);

INSERT INTO city_bicycle_infrastructure_projects VALUES (2001,'Riverfront Bike Loop','2024-05-01','2025-11-30',2500000,'CityBond',8500,'ProtectedLane','InProgress','TransportDept','BuildItCo',12000,3,150,20,1,85,90,'2024-04-15 09:00:00','2025-02-10 14:30:00','Phase 1 complete');
INSERT INTO city_bicycle_infrastructure_projects VALUES (2002,'Downtown Bike Share Stations','2023-09-15','2024-12-31',800000,'PrivateGrant',0,'BikeShare','Completed','TransitAuthority','UrbanCycles',5000,0,80,0,0,70,75,'2023-08-20 10:15:00','2024-12-20 16:45:00','All stations operational');
INSERT INTO city_bicycle_infrastructure_projects VALUES (2003,'Eastside Greenway Extension','2025-01-10','2026-06-30',1800000,'StateFund',4200,'SharedPath','Planning','PublicWorks','GreenPath LLC',8000,2,100,15,1,78,82,'2025-01-05 11:30:00','2025-01-05 11:30:00','Environmental review pending');

-- Table forecasting water reservoir capacities
CREATE TABLE water_reservoir_capacity_forecast (
    ReservoirID INTEGER,
    ReservoirName TEXT,
    ForecastDate DATE,
    CapacityMCM REAL,
    InflowMCM REAL,
    OutflowMCM REAL,
    PredictedLevelM REAL,
    Season TEXT,
    WeatherPattern TEXT,
    ForecastModel TEXT,
    ConfidenceScore REAL,
    UpdatedBy TEXT,
    UpdatedAt DATETIME,
    Remarks TEXT,
    Region TEXT,
    ElevationM REAL,
    SurfaceAreaSqKm REAL,
    AvgDepthM REAL,
    MaxDepthM REAL,
    MinDepthM REAL
);

INSERT INTO water_reservoir_capacity_forecast VALUES (301,'Lakeview Reservoir','2025-04-01',45.6,3.2,2.8,40.5,'Spring','Rainy','HydroModelX',0.92,'AnalystA','2025-03-28 08:00:00','Stable inflow','NorthRegion',250.5,12.3,4.5,6.0,3.2);
INSERT INTO water_reservoir_capacity_forecast VALUES (302,'Riverbend Dam','2025-04-01',78.9,5.1,4.9,70.2,'Spring','Mild','HydroModelY',0.88,'AnalystB','2025-03-28 08:15:00','Slight outflow increase','SouthRegion',320.0,22.5,9.0,12.5,5.5);
INSERT INTO water_reservoir_capacity_forecast VALUES (303,'Highland Basin','2025-04-01',60.2,4.0,3.5,55.0','Summer','Hot','HydroModelZ',0.85,'AnalystC','2025-03-28 08:30:00','Projected evaporation','EastRegion',280.2,15.8,6.2,9.8,4.0');

-- Table tracking permits for solar farm installations
CREATE TABLE solar_farm_installation_permits (
    PermitID INTEGER,
    FarmName TEXT,
    PermitNumber TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    ApplicantCompany TEXT,
    CapacityMW REAL,
    LandAreaHa REAL,
    GridConnectionPoint TEXT,
    Status TEXT,
    ReviewAgency TEXT,
    EnvironmentalImpactRating TEXT,
    SolarPanelType TEXT,
    InverterManufacturer TEXT,
    ExpectedCommissionDate DATE,
    ContactPerson TEXT,
    ContactPhone TEXT,
    Email TEXT,
    Remarks TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO solar_farm_installation_permits VALUES (4001,'Sunrise Solar','SF-2024-001','2024-02-10','2029-02-10','SolarPowerInc',120.5,800,'GridNodeA','Approved','EnvironmentalDept','Low','Monocrystalline','InverterCo','2025-06-30','Alice Green','5551234567','alice@solarpowerinc.com','All studies completed','2024-02-01 09:00:00','2024-02-10 14:00:00');
INSERT INTO solar_farm_installation_permits VALUES (4002,'Riverbank PV','SF-2024-002','2024-03-15','2029-03-15','GreenEnergy LLC',85.0,600,'GridNodeB','Pending','EnvironmentalDept','Medium','Polycrystalline','PowerTech','2025-09-15','Bob White','5559876543','bob@greenenergy.com','Awaiting final review','2024-03-01 10:30:00','2024-03-15 11:45:00');
INSERT INTO solar_farm_installation_permits VALUES (4003,'Hilltop Solar','SF-2024-003','2024-04-20','2029-04-20','SunPower Corp',150.0,950,'GridNodeC','Rejected','EnvironmentalDept','High','ThinFilm','SolarMax','2025-12-01','Carol Black','5555551212','carol@sunpower.com','Insufficient buffer zone','2024-04-05 08:45:00','2024-04-20 15:20:00');

-- Table storing certifications for electric vehicle fleets
CREATE TABLE electric_vehicle_fleet_certifications (
    CertificationID INTEGER,
    FleetOwner TEXT,
    CertificationNumber TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    VehicleCount INTEGER,
    TotalRangeKm INTEGER,
    ChargingStandard TEXT,
    ComplianceLevel TEXT,
    IssuingAuthority TEXT,
    AuditScore REAL,
    Remarks TEXT,
    CreatedBy TEXT,
    CreatedAt DATETIME,
    UpdatedBy TEXT,
    UpdatedAt DATETIME,
    Region TEXT,
    FleetType TEXT,
    Status TEXT,
    DocumentURL TEXT,
    Notes TEXT
);

INSERT INTO electric_vehicle_fleet_certifications VALUES (5001,'City Transit Authority','EVFC-2023-001','2023-05-01','2028-05-01',250,400,'CCS','Level3','TransportReg','95.5','Meets all criteria','AdminUser','2023-04-20 09:10:00','AdminUser','2023-05-02 11:20:00','NorthRegion','Public','Active','http://docs.city/evfc5001.pdf','Certified in 2023');
INSERT INTO electric_vehicle_fleet_certifications VALUES (5002,'Metro Delivery Services','EVFC-2024-002','2024-01-15','2029-01-15',120,350,'CHAdeMO','Level2','TransportReg','88.0','Minor deficiencies resolved','AdminUser','2023-12-30 14:05:00','AdminUser','2024-01-16 10:30:00','SouthRegion','Private','Active','http://docs.metro/evfc5002.pdf','Renewed 2024');
INSERT INTO electric_vehicle_fleet_certifications VALUES (5003,'Green Logistics Co','EVFC-2025-003','2025-03-10','2030-03-10',80,300,'CCS','Level1','TransportReg','92.3','Pending final audit','AdminUser','2025-02-25 13:00:00','AdminUser','2025-03-11 09:45:00','EastRegion','Private','Pending','http://docs.green/evfc5003.pdf','Awaiting audit');

-- Table for public art funding applications
CREATE TABLE public_art_funding_applications (
    ApplicationID INTEGER,
    ArtistName TEXT,
    ProjectTitle TEXT,
    GrantAmountUSD REAL,
    RequestedAmountUSD REAL,
    SubmissionDate DATE,
    ReviewDate DATE,
    FundingAgency TEXT,
    Status TEXT,
    Category TEXT,
    DurationMonths INTEGER,
    Location TEXT,
    ExpectedImpact TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    PriorAward INTEGER,
    PortfolioURL TEXT,
    NarrativeSummary TEXT,
    ReviewerComments TEXT,
    DecisionDate DATE,
    Remarks TEXT
);

INSERT INTO public_art_funding_applications VALUES (6001,'Lena Ortiz','City Mosaic','25000','30000','2024-06-01','2024-07-15','ArtsCouncil','Approved','Mural',12,'Central Plaza','Community cohesion','5551112222','lena@artmail.com',1,'http://portfolio.lena.com','A large mosaic reflecting local heritage.','Strong proposal, high impact','2024-08-01','Funding granted');
INSERT INTO public_art_funding_applications VALUES (6002,'Jamal Reed','Interactive Light Installation','18000','25000','2024-07-10','2024-08-20','CulturalFund','Pending','Installation',9,'Riverwalk','Tourism boost','5553334444','jamal@creative.org',0,'http://jamalart.com','Light sculpture reacting to pedestrian movement.','Needs more community outreach plan','2024-09-15','Decision pending');
INSERT INTO public_art_funding_applications VALUES (6003,'Aisha Khan','Sculpture Garden','40000','50000','2024-05-20','2024-06-30','UrbanArts','Rejected','Sculpture',18,'North Park','Environmental awareness','5557778888','aisha@sculpture.net',2,'http://aishaartists.com','Series of sculptures made from recycled metal.','Budget too high relative to scope','2024-07-10','Not funded');

-- Table logging emergency services response times
CREATE TABLE emergency_services_response_times (
    IncidentID INTEGER,
    ServiceType TEXT,
    CallReceived DATETIME,
    DispatchTime DATETIME,
    ArrivalTime DATETIME,
    OnSceneTimeMinutes INTEGER,
    TravelDistanceKm REAL,
    ResponseCategory TEXT,
    LocationDescription TEXT,
    Latitude REAL,
    Longitude REAL,
    CallerID INTEGER,
    PriorityLevel TEXT,
    UnitsDispatched INTEGER,
    WeatherCondition TEXT,
    TrafficLevel TEXT,
    Outcome TEXT,
    RecordedBy TEXT,
    RecordDate DATE,
    Notes TEXT
);

INSERT INTO emergency_services_response_times VALUES (7001,'Fire','2025-01-12 14:05:00','2025-01-12 14:06:00','2025-01-12 14:12:30',15,3.2,'High','123 Main St',45.1120,-73.3310,9001,'High',2,'Clear','Moderate','Fire contained','DispatchOfficer1','2025-01-12','No injuries');
INSERT INTO emergency_services_response_times VALUES (7002,'Medical','2025-01-13 09:20:00','2025-01-13 09:20:45','2025-01-13 09:27:10',12,2.8,'Medium','456 Oak Ave',45.2235,-73.4425,9002,'Medium',1,'Rain','Heavy','Patient stabilized','DispatchOfficer2','2025-01-13','Patient transported to hospital');
INSERT INTO emergency_services_response_times VALUES (7003,'Police','2025-01-14 22:45:00','2025-01-14 22:46:30','2025-01-14 22:55:00',18,4.5,'Low','789 Pine Rd',45.3349,-73.5540,9003,'Low',1,'Clear','Light','Incident resolved','DispatchOfficer3','2025-01-14','No arrests');

-- Table defining maintenance schedules for city infrastructure assets
CREATE TABLE city_infrastructure_maintenance_schedule (
    ScheduleID INTEGER,
    AssetType TEXT,
    AssetID INTEGER,
    MaintenanceWindowStart DATETIME,
    MaintenanceWindowEnd DATETIME,
    ContractorName TEXT,
    EstimatedCostUSD REAL,
    PriorityLevel TEXT,
    Status TEXT,
    CreatedBy TEXT,
    CreatedAt DATETIME,
    UpdatedBy TEXT,
    UpdatedAt DATETIME,
    Region TEXT,
    Description TEXT,
    SafetyPlanURL TEXT,
    RequiredPermits TEXT,
    ImpactArea TEXT,
    CommunicationPlan TEXT,
    FollowUpDate DATE
);

INSERT INTO city_infrastructure_maintenance_schedule VALUES (8001,'Bridge','B-101','2025-05-01 22:00:00','2025-05-02 06:00:00','BridgeWorksCo',750000,'High','Scheduled','PlannerA','2025-03-15 08:30:00','PlannerA','2025-04-10 11:00:00','NorthRegion','Annual steel reinforcement','http://safety.plans/bridgeB101.pdf','Permit-1234','Main St corridor','Email alerts to residents','2025-06-01');
INSERT INTO city_infrastructure_maintenance_schedule VALUES (8002,'WaterPipe','WP-45','2025-06-10 01:00:00','2025-06-10 05:00:00','AquaFix Ltd',120000,'Medium','Planned','PlannerB','2025-04-01 09:15:00','PlannerB','2025-04-20 14:45:00','SouthRegion','Leak detection and seal','http://safety.plans/waterpipeWP45.pdf','Permit-5678','Downtown district','SMS notifications','2025-07-15');
INSERT INTO city_infrastructure_maintenance_schedule VALUES (8003,'TrafficSignal','TS-22','2025-07-20 02:00:00','2025-07-20 03:30:00','SignalTech Inc',25000,'Low','Pending','PlannerC','2025-05-10 10:00:00','PlannerC','2025-05-25 13:20:00','EastRegion','Firmware upgrade','http://safety.plans/trafficTS22.pdf','Permit-9012','Intersection of 5th & Elm','Push notification to navigation apps','2025-08-30');