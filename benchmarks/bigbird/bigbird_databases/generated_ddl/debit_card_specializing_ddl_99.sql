-- Electric vehicle infrastructure projects
CREATE TABLE electric_vehicle_infrastructure_projects
(
    ProjectID                INTEGER PRIMARY KEY,
    ProjectName              TEXT,
    StartDate                DATE,
    EndDate                  DATE,
    BudgetUSD                REAL,
    FundingSource            TEXT,
    LocationCity             TEXT,
    LocationState            TEXT,
    Country                  TEXT,
    PermitNumber             TEXT,
    EstimatedChargingPoints  INTEGER,
    ActualChargingPoints     INTEGER,
    Status                   TEXT,
    LeadEngineer             TEXT,
    Contractor               TEXT,
    EnvironmentalImpactScore REAL,
    EnergySourceMix          TEXT,
    GridConnectionStatus     TEXT,
    ProjectPhase             TEXT,
    Comments                 TEXT,
    TeamRegion               TEXT,
    CreatedDate              DATE,
    UpdatedDate              DATE
);
INSERT INTO electric_vehicle_infrastructure_projects VALUES (1,'EV_Connector_Expansion','2023-01-15','2024-06-30',2500000.00,'FederalGrant','Springfield','IL','USA','PERM-001',120,95,'InProgress','JohnDoe','BuildCo','85.5','Solar+Wind','Connected','Construction','Phase2','N/A','Midwest','2023-01-15','2024-01-01');
INSERT INTO electric_vehicle_infrastructure_projects VALUES (2,'Downtown_Charge_Hub','2022-05-01','2023-12-15',1500000.00,'PrivateEquity','Metropolis','NY','USA','PERM-045',80,80,'Completed','JaneSmith','UrbanBuilders','92.3','Grid','Connected','Operation','Final','Successful rollout','Northeast','2022-05-01','2023-12-15');
INSERT INTO electric_vehicle_infrastructure_projects VALUES (3,'Rural_EV_Grid_Link','2024-03-10','2025-11-20',1800000.00,'StateFund','Laketown','TX','USA','PERM-078',50,0,'Planned','MikeBrown','RuralConstruct','70.0','Wind','Pending','Design','Planning','Awaiting permits','South','2024-03-10','2024-03-10');

-- Renewable energy maintenance teams
CREATE TABLE renewable_energy_maintenance_teams
(
    TeamID                 INTEGER PRIMARY KEY,
    TeamName               TEXT,
    LeadTechnician         TEXT,
    ContactNumber          TEXT,
    Email                  TEXT,
    BaseLocation           TEXT,
    Specialty              TEXT,
    Certifications         TEXT,
    ShiftStart             TIME,
    ShiftEnd               TIME,
    AssignedProjectsCount  INTEGER,
    AvgResponseTimeHours   REAL,
    SafetyRating           REAL,
    EquipmentInventory     TEXT,
    LastTrainingDate       DATE,
    ManagerID              INTEGER,
    BudgetUSD              REAL,
    ActiveStatus           TEXT,
    TeamRegion             TEXT,
    CreatedDate            DATE,
    UpdatedDate            DATE,
    Notes                  TEXT
);
INSERT INTO renewable_energy_maintenance_teams VALUES (101,'SolarCareTeamA','AliceGreen','555-1234','alice.green@example.com','SolarParkNorth','Solar Panels','ISO9001','08:00','16:00',12,1.8,4.7,'Inverters,Panels','2023-09-01',5001,500000.00,'Active','North','2023-01-15','2024-01-01','High availability');
INSERT INTO renewable_energy_maintenance_teams VALUES (102,'WindWatchUnit','BobBlue','555-5678','bob.blue@example.com','WindFarmEast','Wind Turbines','ISO14001','07:00','15:00',9,2.2,4.5,'Turbines,Generators','2023-08-12',5002,350000.00,'Active','East','2023-02-20','2024-02-20','Focus on predictive maintenance');
INSERT INTO renewable_energy_maintenance_teams VALUES (103,'HydroAssistSquad','CarolRed','555-9012','carol.red@example.com','HydroStationWest','Hydro Power','ISO45001','09:00','17:00',5,3.0,4.2,'Pumps,Valves','2023-07-05',5003,400000.00,'Inactive','West','2022-11-05','2023-11-05','Team disbanded for restructuring');

-- Hydrogen fuel station performance metrics
CREATE TABLE hydrogen_fuel_station_performance_metrics
(
    StationID                     INTEGER,
    MetricDate                    DATE,
    HydrogenDispensedLiters       REAL,
    AvgDispenseRateLph            REAL,
    PressureMPa                   REAL,
    TemperatureC                  REAL,
    DowntimeMinutes               INTEGER,
    MaintenanceEvents             INTEGER,
    EnergyConsumptionKWh          REAL,
    CO2SavedKg                    REAL,
    UtilizationPercent            REAL,
    RevenueUSD                    REAL,
    OperationalStatus             TEXT,
    OperatorID                    INTEGER,
    FleetSupportCount             INTEGER,
    AvgQueueTimeSec               REAL,
    CustomerSatisfactionScore     REAL,
    AlertsTriggered               INTEGER,
    DataQualityFlag               TEXT,
    Remarks                       TEXT,
    PRIMARY KEY (StationID, MetricDate)
);
INSERT INTO hydrogen_fuel_station_performance_metrics VALUES (201,'2024-01-15',5000.0,250.0,5.5,22.0,30,2,1200.0,800.0,78.5,15000.0,'Operational',3001,45,35.2,4.6,1,'Good','Monthly snapshot');
INSERT INTO hydrogen_fuel_station_performance_metrics VALUES (202,'2024-01-15',3200.0,200.0,5.2,21.5,45,3,900.0,560.0,65.0,9500.0,'Operational',3002,30,42.0,4.2,2,'Moderate','High queue times observed');
INSERT INTO hydrogen_fuel_station_performance_metrics VALUES (203,'2024-01-15',0.0,0.0,0.0,0.0,120,5,0.0,0.0,0.0,0.0,'UnderMaintenance',3003,0,0.0,0.0,0,'Poor','Station closed for refurbishment');

-- Smart city noise sensor calibrations
CREATE TABLE smart_city_noise_sensor_calibrations
(
    CalibrationID         INTEGER PRIMARY KEY,
    SensorID              TEXT,
    CalibrationDate       DATE,
    TechnicianName        TEXT,
    CalibrationMethod     TEXT,
    OffsetDb              REAL,
    ScaleFactor           REAL,
    TemperatureC          REAL,
    HumidityPercent       REAL,
    VoltageV              REAL,
    FirmwareVersion       TEXT,
    CalibrationStatus     TEXT,
    NextDueDate           DATE,
    LocationLatitude      REAL,
    LocationLongitude     REAL,
    City                  TEXT,
    Region                TEXT,
    Notes                 TEXT,
    VerifiedBy            TEXT,
    VerificationDate      DATE,
    CalibrationReportURL  TEXT
);
INSERT INTO smart_city_noise_sensor_calibrations VALUES (301,'NS-1001','2024-02-01','LauraWhite','Standard','0.12','1.02',20.5,55.0,3.3,'v2.1','Completed','2025-02-01',40.7128,-74.0060,'NewYork','Northeast','No issues','MarkGrey','2024-02-02','http://example.com/reports/301');
INSERT INTO smart_city_noise_sensor_calibrations VALUES (302,'NS-1002','2024-01-20','TomBlack','Advanced','-0.05','0.98',21.0,60.0,3.2,'v2.0','Completed','2025-01-20',34.0522,-118.2437,'LosAngeles','West','Slight drift observed','AnnaBlue','2024-01-21','http://example.com/reports/302');
INSERT INTO smart_city_noise_sensor_calibrations VALUES (303,'NS-1003','2023-12-15','SamGreen','Standard','0.00','1.00',19.8,50.0,3.4,'v1.9','Pending','2024-12-15',41.8781,-87.6298,'Chicago','Midwest','Calibration scheduled','NinaRed','2023-12-16','http://example.com/reports/303');

-- Public transport accessibility audits
CREATE TABLE public_transport_accessibility_audits
(
    AuditID                INTEGER PRIMARY KEY,
    AgencyID               INTEGER,
    VehicleID              TEXT,
    AuditDate              DATE,
    WheelchairRampPresent  TEXT,
    LowFloorPercentage    REAL,
    AudioAnnouncementQuality TEXT,
    VisualDisplayClarity   TEXT,
    BrailleSignage         TEXT,
    StaffTrainingLevel     TEXT,
    ComplianceScore        REAL,
    ViolationsCount       INTEGER,
    Remarks                TEXT,
    AuditorName            TEXT,
    AuditorContact         TEXT,
    City                   TEXT,
    State                  TEXT,
    Country                TEXT,
    FollowUpDate           DATE,
    FollowUpStatus         TEXT
);
INSERT INTO public_transport_accessibility_audits VALUES (401,1001,'BUS-3001','2024-01-10','Yes',95.0,'Excellent','Clear','Present','Advanced',98.5,0,'All standards met','EmilyBrown','555-1111','Seattle','WA','USA','2024-06-10','Pending');
INSERT INTO public_transport_accessibility_audits VALUES (402,1002,'TRAM-2005','2023-12-05','No',30.0,'Fair','Dim','Absent','Basic',72.0,3,'Ramp missing on several doors','JohnDoe','555-2222','Portland','OR','USA','2024-03-15','Scheduled');
INSERT INTO public_transport_accessibility_audits VALUES (403,1003,'BUS-4502','2024-02-20','Yes',80.0,'Good','Clear','Present','Intermediate',85.0,1,'Audio announcements occasionally inaudible','LauraSmith','555-3333','Denver','CO','USA','2024-08-01','Pending');

-- Municipal water pressure monitoring
CREATE TABLE municipal_water_pressure_monitoring
(
    MonitoringID          INTEGER PRIMARY KEY,
    SiteID                TEXT,
    ReadingTimestamp      DATETIME,
    PressurePsi           REAL,
    FlowRateGpm           REAL,
    TemperatureC          REAL,
    ConductivityUs        REAL,
    TurbidityNTU          REAL,
    ChlorineMgL           REAL,
    ValveStatus           TEXT,
    PumpStatus            TEXT,
    AlarmFlag             TEXT,
    MaintenanceDueDate    DATE,
    TechnicianID          INTEGER,
    Latitude              REAL,
    Longitude             REAL,
    City                  TEXT,
    Region                TEXT,
    DataQualityScore      REAL,
    Comments              TEXT
);
INSERT INTO municipal_water_pressure_monitoring VALUES (501,'WP-01','2024-02-15 08:00:00',45.2,120.5,15.3,250.0,0.8,0.5,'Open','Running','No','2024-09-01',7001,38.8951,-77.0364,'WashingtonDC','Mid-Atlantic',9.8,'Normal operation');
INSERT INTO municipal_water_pressure_monitoring VALUES (502,'WP-02','2024-02-15 08:10:00',30.0,80.0,14.0,200.0,1.2,0.3,'Closed','Stopped','Yes','2024-08-15',7002,34.0522,-118.2437,'LosAngeles','West',6.5,'Valve closed for maintenance');
INSERT INTO municipal_water_pressure_monitoring VALUES (503,'WP-03','2024-02-15 08:20:00',55.0,150.0,16.0,300.0,0.5,0.7,'Open','Running','No','2024-10-10',7003,41.8781,-87.6298,'Chicago','Midwest',9.2,'High demand period');

-- Satellite imagery processing jobs
CREATE TABLE satellite_imagery_processing_jobs
(
    JobID                INTEGER PRIMARY KEY,
    SatelliteName        TEXT,
    CaptureDate          DATE,
    ProcessingStart      DATETIME,
    ProcessingEnd        DATETIME,
    ProcessorNodeID      INTEGER,
    AlgorithmVersion     TEXT,
    CloudCoverPercent    REAL,
    ResolutionMeters     REAL,
    ProductType          TEXT,
    OutputFilePath       TEXT,
    Status               TEXT,
    ErrorCode            INTEGER,
    RetryCount           INTEGER,
    SubmittedBy          TEXT,
    SubmittedAt          DATETIME,
    PriorityLevel        TEXT,
    EstimatedRuntimeSec  INTEGER,
    ActualRuntimeSec     INTEGER,
    DataChecksum         TEXT,
    Notes                TEXT
);
INSERT INTO satellite_imagery_processing_jobs VALUES (601,'Landsat8','2024-01-20','2024-01-21 02:00:00','2024-01-21 02:45:00',1501,'v3.2',12.5,30.0,'NDVI','/data/ndvi/20240120.tif','Completed',0,0,'Alice','2024-01-20 08:30:00','High',2700,2700,'abc123def','First pass processing');
INSERT INTO satellite_imagery_processing_jobs VALUES (602,'Sentinel2','2024-01-18','2024-01-19 03:15:00','2024-01-19 04:10:00',1502,'v2.9',5.0,10.0,'TrueColor','/data/truecolor/20240118.tif','Completed',0,0,'Bob','2024-01-18 09:00:00','Medium',2700,3000,'def456ghi','Reprocessed due to cloud mask error');
INSERT INTO satellite_imagery_processing_jobs VALUES (603,'PlanetScope','2024-01-22','2024-01-23 01:00:00','2024-01-23 01:30:00',1503,'v1.4',0.0,3.0,'PanSharp','/data/pansharp/20240122.tif','Failed',101,1,'Carol','2024-01-22 07:45:00','Low',1800,1800,'ghi789jkl','Node outage caused failure');

-- Fleet driver wellness programs
CREATE TABLE fleet_driver_wellness_programs
(
    ProgramID                     INTEGER PRIMARY KEY,
    DriverID                      INTEGER,
    EnrollmentDate                DATE,
    ProgramType                   TEXT,
    Objectives                    TEXT,
    SessionsCompleted            INTEGER,
    AvgHeartRateBpm               REAL,
    AvgSleepHours                 REAL,
    StressScore                   REAL,
    InjuryReports                 INTEGER,
    IncentivePoints               INTEGER,
    RewardTier                    TEXT,
    ProgramStatus                 TEXT,
    CoordinatorName               TEXT,
    CoordinatorContact            TEXT,
    LastAssessmentDate            DATE,
    NextAssessmentDate            DATE,
    FeedbackScore                 REAL,
    ProgramNotes                  TEXT,
    CreatedAt                     DATETIME,
    UpdatedAt                     DATETIME
);
INSERT INTO fleet_driver_wellness_programs VALUES (701,3001,'2023-06-01','Fitness','Improve cardio health',12,72.5,7.2,3.1,0,150,'Gold','Active','Megan','555-7777','2024-01-10','2024-07-10',4.8,'Driver reports high satisfaction','2023-06-01 09:00:00','2024-01-15 10:30:00');
INSERT INTO fleet_driver_wellness_programs VALUES (702,3002,'2023-09-15','Nutrition','Balanced diet habits',8,78.0,6.5,4.0,1,80,'Silver','Active','Liam','555-8888','2024-02-05','2024-08-05',4.2,'Needs improvement on sleep','2023-09-15 11:15:00','2024-02-10 14:45:00');
INSERT INTO fleet_driver_wellness_programs VALUES (703,3003,'2022-12-20','Stress Management','Reduce work stress',15,70.0,7.8,2.5,0,200,'Platinum','Completed','Olivia','555-9999','2023-12-20','2024-06-20',4.9','Program completed with excellent results','2022-12-20 08:30:00','2024-01-01 12:00:00');

-- Energy market derivative contracts
CREATE TABLE energy_market_derivative_contracts
(
    ContractID           INTEGER PRIMARY KEY,
    ContractType         TEXT,
    UnderlyingAsset      TEXT,
    NotionalAmount       REAL,
    Currency             TEXT,
    StartDate            DATE,
    EndDate              DATE,
    FixedRate            REAL,
    FloatingRateReference TEXT,
    MarginUSD            REAL,
    CounterpartyID       INTEGER,
    CollateralAmount     REAL,
    SettlementMethod     TEXT,
    Status               TEXT,
    RegistrationDate     DATE,
    LastModifiedDate     DATE,
    RiskRating           TEXT,
    DocumentationURL     TEXT,
    Comments             TEXT,
    IsActive             TEXT,
    ReviewDate           DATE
);
INSERT INTO energy_market_derivative_contracts VALUES (801,'Swap','Electricity','5000000','USD','2023-01-01','2025-12-31','0.045','LIBOR','25000',9001,'1000000','Cash','Active','2022-12-15','2024-01-10','A','http://docs.example.com/801','Standard contract','Yes','2024-06-30');
INSERT INTO energy_market_derivative_contracts VALUES (802,'Future','NaturalGas','3000000','USD','2024-03-01','2026-02-28','0.038','SOFR','15000',9002,'500000','Physical','Pending','2024-02-20','2024-02-20','B','http://docs.example.com/802','Awaiting counterparty approval','No','2024-07-15');
INSERT INTO energy_market_derivative_contracts VALUES (803,'Option','Coal','2000000','USD','2023-06-15','2024-06-14','0.055','Euribor','10000',9003,'250000','Cash','Expired','2023-05-01','2024-01-01','C','http://docs.example.com/803','Expired without exercise','No','2024-05-01');

-- Urban tree canopy measurements
CREATE TABLE urban_tree_canopy_measurements
(
    MeasurementID        INTEGER PRIMARY KEY,
    TreeID               TEXT,
    SurveyDate           DATE,
    CanopyDiameterM      REAL,
    CanopyAreaSqM        REAL,
    TreeSpecies          TEXT,
    HeightM              REAL,
    HealthStatus         TEXT,
    GPSLatitude          REAL,
    GPSLongitude         REAL,
    SurveyorName         TEXT,
    SurveyorID           INTEGER,
    ImageReference       TEXT,
    LeafDensityIndex     REAL,
    CarbonSequestrationKg REAL,
    SoilMoisturePercent REAL,
    UrbanZone            TEXT,
    Neighborhood         TEXT,
    Comments             TEXT,
    CreatedTimestamp     DATETIME
);
INSERT INTO urban_tree_canopy_measurements VALUES (901,'T-1001','2024-01-05',4.2,13.85,'Oak',12.5,'Good',40.7128,-74.0060,'Sam','8001','/images/T-1001.jpg',0.85,150.0,22.5,'Downtown','FinancialDistrict','No visible disease','2024-01-05 09:30:00');
INSERT INTO urban_tree_canopy_measurements VALUES (902,'T-1002','2024-01-07',2.8,6.15,'Maple',9.0,'Fair',34.0522,-118.2437,'Alex','8002','/images/T-1002.jpg',0.68,95.0,18.0,'WestSide','SunsetPark','Minor leaf discoloration','2024-01-07 10:15:00');
INSERT INTO urban_tree_canopy_measurements VALUES (903,'T-1003','2024-01-09',5.0,19.63,'Pine',15.0,'Excellent',41.8781,-87.6298,'Mia','8003','/images/T-1003.jpg',0.92,210.0,25.0','Midtown','RiverEdge','Healthy and thriving','2024-01-09 11:45:00');