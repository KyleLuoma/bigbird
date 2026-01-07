-- Public transport vehicle access logs
CREATE TABLE public_transport_vehicle_access_logs
(
    AccessLogID        INTEGER PRIMARY KEY AUTOINCREMENT,
    VehicleID          INTEGER,
    RouteID            INTEGER,
    Timestamp          TEXT,
    GateID             INTEGER,
    AccessMethod       TEXT,
    OperatorID         INTEGER,
    CardID             INTEGER,
    ValidationResult   TEXT,
    Latitude           REAL,
    Longitude          REAL,
    FirmwareVersion    TEXT,
    BatteryLevel       REAL,
    SignalStrength     REAL,
    Platform           TEXT,
    ShiftID            INTEGER,
    Zone               TEXT,
    EventCode          INTEGER,
    Remarks            TEXT,
    CreatedAt          TEXT
);

INSERT INTO public_transport_vehicle_access_logs VALUES (1,101,2001,'2023-07-15 08:30:00',5,'Card',12,3456,'Success',40.7128,-74.0060,'v1.2',85.5,-70,'PlatformA',3,'Zone1',200,'Routine check','2023-07-15 08:31:00');
INSERT INTO public_transport_vehicle_access_logs VALUES (2,102,2002,'2023-07-16 09:15:00',7,'MobileApp',13,7890,'Success',34.0522,-118.2437,'v1.3',78.2,-65,'PlatformB',4,'Zone2',201,'Shift handover','2023-07-16 09:16:00');
INSERT INTO public_transport_vehicle_access_logs VALUES (3,103,2003,'2023-07-17 10:05:00',2,'RFID',14,1234,'Failure',51.5074,-0.1278,'v1.1',60.0,-80,'PlatformC',2,'Zone3',202,'Card read error','2023-07-17 10:06:00');

-- Energy market regulation changes
CREATE TABLE energy_market_regulation_changes
(
    ChangeID            INTEGER PRIMARY KEY AUTOINCREMENT,
    RegulationCode     TEXT,
    EffectiveDate      TEXT,
    Description        TEXT,
    Authority          TEXT,
    Region             TEXT,
    ImpactScore        REAL,
    DocumentURL        TEXT,
    RevisedBy          INTEGER,
    RevisionDate       TEXT,
    Category           TEXT,
    Subcategory        TEXT,
    PriorVersion       TEXT,
    NewVersion         TEXT,
    ComplianceDeadline TEXT,
    Remarks            TEXT,
    IsActive           INTEGER,
    SourceSystem       TEXT,
    ApprovalStatus     TEXT,
    CreatedAt          TEXT
);

INSERT INTO energy_market_regulation_changes VALUES (1,'EMR-2023-01','2023-04-01','Carbon cap adjustment','National Energy Agency','North',8.7,'http://docs.example.com/emr1',101,'2023-02-15','Emissions','Cap','v1','v2','2023-06-30','Initial rollout',1,'RegSys','Approved','2023-02-16');
INSERT INTO energy_market_regulation_changes VALUES (2,'EMR-2023-02','2023-07-01','Renewable credit revaluation','State Energy Commission','South',7.4,'http://docs.example.com/emr2',102,'2023-05-20','Renewables','Credit','v3','v4','2023-09-30','Stakeholder review',1,'RegSys','Pending','2023-05-21');
INSERT INTO energy_market_regulation_changes VALUES (3,'EMR-2023-03','2023-10-01','Wholesale market price ceiling','Federal Markets Office','West',6.9,'http://docs.example.com/emr3',103,'2023-08-10','Pricing','Ceiling','v2','v3','2024-01-31','Public consultation',0,'RegSys','Draft','2023-08-11');

-- Municipal roadway surface surveys
CREATE TABLE municipal_roadway_surface_surveys
(
    SurveyID            INTEGER PRIMARY KEY AUTOINCREMENT,
    RoadSegmentID      INTEGER,
    SurveyDate          TEXT,
    SurfaceType         TEXT,
    ConditionScore      REAL,
    CracksCount        INTEGER,
    PotholesCount      INTEGER,
    RoughnessIndex      REAL,
    TemperatureC       REAL,
    Humidity            REAL,
    SurveyorID          INTEGER,
    Latitude            REAL,
    Longitude           REAL,
    Elevation           REAL,
    MoistureContent    REAL,
    RecordedBy          TEXT,
    Remarks             TEXT,
    PhotoReference      TEXT,
    IsVerified          INTEGER,
    CreatedAt           TEXT
);

INSERT INTO municipal_roadway_surface_surveys VALUES (1,5001,'2023-03-12','Asphalt',85.2,12,3,0.45,22.5,55.0,201,40.7306,-73.9352,10.2,12.5,'AutoSurvey','No major issues','photo_5001_001.jpg',1,'2023-03-12 08:00:00');
INSERT INTO municipal_roadway_surface_surveys VALUES (2,5002,'2023-04-18','Concrete',78.9,20,5,0.60,18.3,60.2,202,34.0522,-118.2437,15.8,14.0,'FieldTeam','Cracks require sealing','photo_5002_001.jpg',0,'2023-04-18 09:30:00');
INSERT INTO municipal_roadway_surface_surveys VALUES (3,5003,'2023-05-05','Asphalt',92.5,5,1,0.30,20.1,50.5,203,41.8781,-87.6298,12.0,11.2,'DroneSurvey','Smooth condition','photo_5003_001.jpg',1,'2023-05-05 07:45:00');

-- Satellite imagery analysis
CREATE TABLE satellite_imagery_analysis
(
    AnalysisID          INTEGER PRIMARY KEY AUTOINCREMENT,
    ImageID             TEXT,
    CaptureDate         TEXT,
    SensorType          TEXT,
    Resolution          REAL,
    CloudCoverPercent   REAL,
    NDVIRatio           REAL,
    LandCoverClass      TEXT,
    ChangeDetectionFlag INTEGER,
    AnalystID           INTEGER,
    ProcessingTimeSec   REAL,
    OutputFilePath      TEXT,
    AlgorithmVersion    TEXT,
    ConfidenceScore     REAL,
    Region              TEXT,
    LatitudeCenter      REAL,
    LongitudeCenter     REAL,
    Comments            TEXT,
    IsApproved          INTEGER,
    CreatedAt           TEXT
);

INSERT INTO satellite_imagery_analysis VALUES (1,'IMG_20230701_A1','2023-07-01','Multispectral',0.5,10.2,0.45,'Urban',0,301,45.6,'/output/analysis1.json','v2.1',0.92,'Midwest',39.7817,-89.6501,'No significant change',1,'2023-07-02 10:15:00');
INSERT INTO satellite_imagery_analysis VALUES (2,'IMG_20230815_B2','2023-08-15','SAR',1.0,0.0,0.30,'Forest',1,302,38.2,'/output/analysis2.json','v2.2',0.87,'Southwest',34.0489,-111.0937,'Deforestation detected',1,'2023-08-16 12:20:00');
INSERT INTO satellite_imagery_analysis VALUES (3,'IMG_20230920_C3','2023-09-20','Hyperspectral',0.3,5.5,0.55,'Agriculture',0,303,52.1,'/output/analysis3.json','v2.3',0.95,'Southeast',30.2672,-97.7431,'Crop health stable',0,'2023-09-21 09:05:00');

-- Urban tree phenology
CREATE TABLE urban_tree_phenology
(
    RecordID            INTEGER PRIMARY KEY AUTOINCREMENT,
    TreeID              INTEGER,
    Species             TEXT,
    ObservationDate     TEXT,
    LeafOutStage        TEXT,
    FloweringStage      TEXT,
    FruitDevelopmentStage TEXT,
    HeightCM            REAL,
    DiameterCM          REAL,
    HealthStatus        TEXT,
    SoilMoisture        REAL,
    SunExposure         TEXT,
    LocationLat         REAL,
    LocationLong        REAL,
    ObservedBy          INTEGER,
    Notes               TEXT,
    PhenophaseCode      INTEGER,
    ClimateZone         TEXT,
    CityDistrict        TEXT,
    CreatedAt           TEXT
);

INSERT INTO urban_tree_phenology VALUES (1,8001,'Acer rubrum','2023-04-10','Budburst','None','None',450.0,30.5,'Good',22.1,'Full Sun',40.7306,-73.9352,401,'First leaves observed',101,'Temperate','Manhattan','2023-04-10 08:00:00');
INSERT INTO urban_tree_phenology VALUES (2,8002,'Quercus alba','2023-04-12','LeafExpansion','None','None',620.0,42.0,'Excellent',24.5,'Partial Shade',34.0522,-118.2437,402,'Rapid leaf growth',102,'Mediterranean','Hollywood','2023-04-12 09:15:00');
INSERT INTO urban_tree_phenology VALUES (3,8003,'Platanus occidentalis','2023-04-14','FullLeaf','SmallFlowers','GreenFruit',780.0,55.3,'Fair',20.8,'Full Sun',41.8781,-87.6298,403,'Flowers appear early',103,'Continental','LincolnPark','2023-04-14 07:45:00');

-- Water reservoir quality reports
CREATE TABLE water_reservoir_quality_reports
(
    ReportID               INTEGER PRIMARY KEY AUTOINCREMENT,
    ReservoirID            INTEGER,
    SampleDate             TEXT,
    pH                     REAL,
    TurbidityNTU           REAL,
    DissolvedOxygenMG_L    REAL,
    ConductivityUS         REAL,
    TemperatureC           REAL,
    AlgaeConcentrationCellsML REAL,
    HeavyMetalPbPPB        REAL,
    NitrateMG_L            REAL,
    PhosphateMG_L          REAL,
    SamplingMethod         TEXT,
    AnalystID              INTEGER,
    Remarks                TEXT,
    QualityIndex           REAL,
    IsCompliant            INTEGER,
    RegulationReference    TEXT,
    CreatedAt              TEXT,
    UpdatedAt              TEXT
);

INSERT INTO water_reservoir_quality_reports VALUES (1,9001,'2023-06-01',7.2,3.5,8.1,250.0,15.4,15000,5.0,1.2,0.4,'GrabSample',501,'Clear water','A',1,'Reg-2021-05','2023-06-01 08:30:00','2023-06-01 09:00:00');
INSERT INTO water_reservoir_quality_reports VALUES (2,9002,'2023-06-15',6.8,5.1,6.7,300.0,16.0,20000,7.2,1.5,0.6,'AutomaticSampler',502,'Slight turbidity','B',0,'Reg-2021-07','2023-06-15 10:00:00','2023-06-15 10:30:00');
INSERT INTO water_reservoir_quality_reports VALUES (3,9003,'2023-07-01',7.5,2.8,9.0,220.0,14.8,12000,3.8,0.9,0.3,'GrabSample',503,'Excellent quality','A',1,'Reg-2021-09','2023-07-01 07:45:00','2023-07-01 08:15:00');

-- Hydrogen fuel cell manufacturing
CREATE TABLE hydrogen_fuel_cell_manufacturing
(
    BatchID                INTEGER PRIMARY KEY AUTOINCREMENT,
    PlantID                INTEGER,
    ManufactureDate        TEXT,
    CellModel              TEXT,
    VoltageV               REAL,
    CurrentA               REAL,
    EfficiencyPercent      REAL,
    CapacityKWh            REAL,
    SupplierID             INTEGER,
    QualityGrade           TEXT,
    InspectionScore        REAL,
    InspectorID            INTEGER,
    SerialNumber           TEXT,
    WarrantyMonths         INTEGER,
    ProductionLine         TEXT,
    ShiftID                INTEGER,
    Notes                  TEXT,
    ComplianceStatus       TEXT,
    RegulatoryApprovalDate TEXT,
    CreatedAt              TEXT,
    UpdatedAt              TEXT
);

INSERT INTO hydrogen_fuel_cell_manufacturing VALUES (1,1101,'2023-02-20','HFC-200','3.6','5.2','92.5','1.8',2101,'A',98.7,601,'SN-HFC-200-0001',24,'LineA',2,'First batch of 2023','Compliant','2023-02-25','2023-02-20 08:00:00','2023-02-20 12:00:00');
INSERT INTO hydrogen_fuel_cell_manufacturing VALUES (2,1102,'2023-03-15','HFC-250','4.1','6.0','94.2','2.2',2102,'B',95.3,602,'SN-HFC-250-0005',36,'LineB',3,'Improved membrane','Compliant','2023-03-20','2023-03-15 09:30:00','2023-03-15 13:45:00');
INSERT INTO hydrogen_fuel_cell_manufacturing VALUES (3,1103,'2023-04-10','HFC-300','4.8','7.1','96.0','2.8',2103,'A',99.1,603,'SN-HFC-300-0010',48,'LineC',1,'Final batch before upgrade','Pending','2023-04-15','2023-04-10 07:15:00','2023-04-10 11:20:00');

-- Electric grid demand response events
CREATE TABLE electric_grid_demand_response_events
(
    EventID                INTEGER PRIMARY KEY AUTOINCREMENT,
    EventName              TEXT,
    StartTime              TEXT,
    EndTime                TEXT,
    RegionCode             TEXT,
    LoadReductionMW        REAL,
    TriggerType            TEXT,
    ParticipatingEntities  INTEGER,
    EstimatedSavingsUSD    REAL,
    ActualSavingsUSD       REAL,
    Status                 TEXT,
    CoordinatorID          INTEGER,
    NotificationSent       INTEGER,
    ResponseTimeMinutes    REAL,
    GridOperator           TEXT,
    WeatherImpact          TEXT,
    Remarks                TEXT,
    IsCritical             INTEGER,
    CreatedAt              TEXT,
    UpdatedAt              TEXT
);

INSERT INTO electric_grid_demand_response_events VALUES (1,'SummerPeakReduction','2023-07-20 14:00:00','2023-07-20 16:00:00','NE','150.0','TempSpike',120,'500000','480000','Completed',701,1,30.5,'OperatorA','HighTemp','Reduced peak load','1','2023-07-18 09:00:00','2023-07-20 16:10:00');
INSERT INTO electric_grid_demand_response_events VALUES (2,'WinterColdSnap','2023-12-05 18:00:00','2023-12-05 20:30:00','MW','200.0','ColdSnap',150,'750000','730000','Completed',702,1,25.0,'OperatorB','LowTemp','Mitigated under‑frequency','0','2023-12-01 10:30:00','2023-12-05 20:45:00');
INSERT INTO electric_grid_demand_response_events VALUES (3,'GridStabilityTest','2023-09-15 09:00:00','2023-09-15 11:00:00','SW','100.0','Test',80,'200000','190000','Successful',703,0,15.0,'OperatorC','Mild','Planned test event','0','2023-09-10 08:00:00','2023-09-15 11:05:00');

-- Smart city infrastructure incidents
CREATE TABLE smart_city_infrastructure_incidents
(
    IncidentID             INTEGER PRIMARY KEY AUTOINCREMENT,
    InfrastructureType     TEXT,
    IncidentDate           TEXT,
    SeverityLevel          INTEGER,
    Description            TEXT,
    Zone                   TEXT,
    ReportedBy             INTEGER,
    ResolutionStatus       TEXT,
    ResolvedDate           TEXT,
    DowntimeMinutes        REAL,
    ImpactArea             TEXT,
    ResponseTeam           TEXT,
    CostUSD                REAL,
    MitigationActions      TEXT,
    SensorsTriggered       INTEGER,
    AlertLevel             INTEGER,
    FollowUpRequired       INTEGER,
    CreatedAt              TEXT,
    UpdatedAt              TEXT,
    Comments               TEXT
);

INSERT INTO smart_city_infrastructure_incidents VALUES (1,'TrafficSignal','2023-05-22 08:15:00',3,'Signal stuck on red','ZoneA',801,'Resolved','2023-05-22 09:00:00',45,'Main St & 1st Ave','TeamAlpha',1200,'Reprogrammed controller',4,2,0,'2023-05-22 08:20:00','2023-05-22 09:10:00','No injuries');
INSERT INTO smart_city_infrastructure_incidents VALUES (2,'PublicWiFi','2023-06-10 14:30:00',2,'AP overload causing dropouts','ZoneB',802,'InProgress',NULL,120,'City Center Plaza','TeamBeta',800,'Upgrade firmware',6,3,1,'2023-06-10 14:35:00','2023-06-10 15:00:00','User complaints rising');
INSERT INTO smart_city_infrastructure_incidents VALUES (3,'SmartLighting','2023-07-01 19:45:00',4,'Streetlights flickering','ZoneC',803,'Unresolved',NULL,0,'Broadway','TeamGamma',1500,'Replace faulty drivers',8,4,1,'2023-07-01 19:50:00','2023-07-02 08:00:00','Potential safety hazard');

-- Air quality forecast models
CREATE TABLE air_quality_forecast_models
(
    ModelID                INTEGER PRIMARY KEY AUTOINCREMENT,
    ModelName              TEXT,
    Version                TEXT,
    ForecastHorizonHours   INTEGER,
    InputVariables         TEXT,
    Algorithm              TEXT,
    TrainingStartDate      TEXT,
    TrainingEndDate        TEXT,
    RMSE                   REAL,
    MAE                    REAL,
    R2Score                REAL,
    UpdatedBy              INTEGER,
    LastUpdated            TEXT,
    IsActive               INTEGER,
    Description            TEXT,
    DataSource             TEXT,
    CalibrationDate        TEXT,
    ForecastSector         TEXT,
    OwnerDepartment        TEXT,
    CreatedAt              TEXT
);

INSERT INTO air_quality_forecast_models VALUES (1,'AQ_Forecast_V1','1.0',48,'PM2.5,NO2,SO2','RandomForest','2023-01-01','2023-06-30',5.2,4.1,0.78,901,'2023-07-01 12:00:00',1,'Baseline model for urban AQ','EPA','2023-06-15','Urban','EnvironmentDept','2023-01-02 08:00:00');
INSERT INTO air_quality_forecast_models VALUES (2,'AQ_Forecast_V2','2.1',72,'PM10,O3,CO','GradientBoosting','2023-02-15','2023-08-15',4.8,3.9,0.81,902,'2023-08-20 09:30:00',1,'Enhanced model including traffic data','StateAirMonitor','2023-08-10','Suburban','EnvironmentDept','2023-02-16 09:00:00');
INSERT INTO air_quality_forecast_models VALUES (3,'AQ_Forecast_Prod','3.0',24,'All pollutants','NeuralNetwork','2023-03-01','2023-09-01',4.5,3.5,0.85,903,'2023-09-05 15:45:00',1,'Production‑ready model with real‑time updates','NationalAQ','2023-08-30','National','EnvironmentDept','2023-03-02 10:00:00');