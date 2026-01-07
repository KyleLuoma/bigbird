-- Public park facilities information
CREATE TABLE public_park_facilities
(
    FacilityID               INTEGER PRIMARY KEY AUTOINCREMENT,
    ParkID                   INTEGER,
    FacilityType             TEXT,
    Name                     TEXT,
    AddressLine1             TEXT,
    AddressLine2             TEXT,
    City                     TEXT,
    State                    TEXT,
    ZipCode                  TEXT,
    Latitude                 REAL,
    Longitude                REAL,
    OpeningHours             TEXT,
    Accessible               INTEGER,
    RestroomCount            INTEGER,
    PlaygroundEquipmentCount INTEGER,
    PicnicTableCount         INTEGER,
    WiFiAvailable            INTEGER,
    SolarLighting            INTEGER,
    SecurityCameraCount      INTEGER,
    MaintenanceContractID    INTEGER
);

INSERT INTO public_park_facilities (ParkID,FacilityType,Name,AddressLine1,AddressLine2,City,State,ZipCode,Latitude,Longitude,OpeningHours,Accessible,RestroomCount,PlaygroundEquipmentCount,PicnicTableCount,WiFiAvailable,SolarLighting,SecurityCameraCount,MaintenanceContractID) VALUES (101,'Playground','Maple Grove Play Area','123 Oak St','', 'Springfield','IL','62704',39.7817,-89.6501,'06:00-22:00',1,4,12,8,1,1,3,2001);
INSERT INTO public_park_facilities (ParkID,FacilityType,Name,AddressLine1,AddressLine2,City,State,ZipCode,Latitude,Longitude,OpeningHours,Accessible,RestroomCount,PlaygroundEquipmentCount,PicnicTableCount,WiFiAvailable,SolarLighting,SecurityCameraCount,MaintenanceContractID) VALUES (102,'Sports Field','Riverdale Soccer Field','456 Pine Rd','', 'Riverdale','CA','90210',34.0522,-118.2437,'05:00-23:00',1,2,0,15,0,1,5,2002);
INSERT INTO public_park_facilities (ParkID,FacilityType,Name,AddressLine1,AddressLine2,City,State,ZipCode,Latitude,Longitude,OpeningHours,Accessible,RestroomCount,PlaygroundEquipmentCount,PicnicTableCount,WiFiAvailable,SolarLighting,SecurityCameraCount,MaintenanceContractID) VALUES (103,'Garden','Lily Botanical Garden','789 Willow Ave','Suite 5','Austin','TX','78701',30.2672,-97.7431,'07:00-20:00',1,3,0,20,1,0,2,2003);


-- City bicycle infrastructure projects
CREATE TABLE city_bicycle_infrastructure_projects
(
    ProjectID                 INTEGER PRIMARY KEY AUTOINCREMENT,
    ProjectName               TEXT,
    StartDate                 DATE,
    EndDate                   DATE,
    TotalCost                 REAL,
    BikeLaneMiles             REAL,
    BikeParkingSpots          INTEGER,
    GrantFunding              REAL,
    ContractorID              INTEGER,
    Status                    TEXT,
    Description               TEXT,
    CityCouncilApprovalDate   DATE,
    EstimatedCompletionDate   DATE,
    ActualCompletionDate      DATE,
    EnvironmentalImpactScore  INTEGER,
    PublicFeedbackScore       INTEGER,
    FundingSource             TEXT,
    LeadEngineer              TEXT,
    ProjectPhase              TEXT,
    RiskLevel                 TEXT
);

INSERT INTO city_bicycle_infrastructure_projects (ProjectName,StartDate,EndDate,TotalCost,BikeLaneMiles,BikeParkingSpots,GrantFunding,ContractorID,Status,Description,CityCouncilApprovalDate,EstimatedCompletionDate,ActualCompletionDate,EnvironmentalImpactScore,PublicFeedbackScore,FundingSource,LeadEngineer,ProjectPhase,RiskLevel) VALUES ('Downtown Bike Loop','2023-01-15','2024-06-30',2500000,12.5,150,500000,301,'In Progress','Create continuous loop through downtown area','2022-12-01','2024-06-30',NULL,85,90,'Federal Grant','Alice Johnson','Construction','Medium');
INSERT INTO city_bicycle_infrastructure_projects (ProjectName,StartDate,EndDate,TotalCost,BikeLaneMiles,BikeParkingSpots,GrantFunding,ContractorID,Status,Description,CityCouncilApprovalDate,EstimatedCompletionDate,ActualCompletionDate,EnvironmentalImpactScore,PublicFeedbackScore,FundingSource,LeadEngineer,ProjectPhase,RiskLevel) VALUES ('University Campus Connect','2022-05-01','2023-12-15',1200000,5.3,80,200000,302,'Completed','Link campus parking to main streets','2022-03-15','2023-12-15','2023-12-10',78,82,'State Funding','Bob Lee','Final','Low');
INSERT INTO city_bicycle_infrastructure_projects (ProjectName,StartDate,EndDate,TotalCost,BikeLaneMiles,BikeParkingSpots,GrantFunding,ContractorID,Status,Description,CityCouncilApprovalDate,EstimatedCompletionDate,ActualCompletionDate,EnvironmentalImpactScore,PublicFeedbackScore,FundingSource,LeadEngineer,ProjectPhase,RiskLevel) VALUES ('Riverfront Greenway','2024-02-01','2025-09-30',1800000,8.7,120,350000,303,'Planned','Develop bike path along riverfront','2023-11-20','2025-09-30',NULL,80,0,'Private Sponsor','Carol Smith','Planning','High');


-- Smart city sensor inventory
CREATE TABLE smart_city_sensor_inventory
(
    SensorID                INTEGER PRIMARY KEY AUTOINCREMENT,
    SensorType              TEXT,
    InstallationDate        DATE,
    LocationDescription     TEXT,
    Latitude                REAL,
    Longitude               REAL,
    FirmwareVersion         TEXT,
    CalibrationDate         DATE,
    LastMaintenanceDate     DATE,
    Status                  TEXT,
    BatteryLevel            INTEGER,
    ConnectivityType        TEXT,
    DataEndpoint            TEXT,
    Manufacturer            TEXT,
    WarrantyExpiration      DATE,
    CalibrationCoefficient  REAL,
    InstallationTeam        TEXT,
    PowerSource             TEXT,
    IPAddress               TEXT,
    SerialNumber            TEXT
);

INSERT INTO smart_city_sensor_inventory (SensorType,InstallationDate,LocationDescription,Latitude,Longitude,FirmwareVersion,CalibrationDate,LastMaintenanceDate,Status,BatteryLevel,ConnectivityType,DataEndpoint,Manufacturer,WarrantyExpiration,CalibrationCoefficient,InstallationTeam,PowerSource,IPAddress,SerialNumber) VALUES ('AirQuality','2022-08-10','Main St near City Hall',40.7128,-74.0060,'v1.3.2','2023-01-15','2023-06-20','Active',85,'LoRa','http://data.city/aq1','EnviroTech','2025-08-10',1.02,'Team A','Solar','192.168.1.10','AQ-0001');
INSERT INTO smart_city_sensor_inventory (SensorType,InstallationDate,LocationDescription,Latitude,Longitude,FirmwareVersion,CalibrationDate,LastMaintenanceDate,Status,BatteryLevel,ConnectivityType,DataEndpoint,Manufacturer,WarrantyExpiration,CalibrationCoefficient,InstallationTeam,PowerSource,IPAddress,SerialNumber) VALUES ('TrafficFlow','2021-05-22','5th Ave & Elm St',34.0522,-118.2437,'v2.0.0','2022-02-11','2023-05-05','Active',70,'Cellular','http://data.city/tf1','TrafficSense','2024-05-22',0.98,'Team B','Mains','192.168.1.20','TF-1005');
INSERT INTO smart_city_sensor_inventory (SensorType,InstallationDate,LocationDescription,Latitude,Longitude,FirmwareVersion,CalibrationDate,LastMaintenanceDate,Status,BatteryLevel,ConnectivityType,DataEndpoint,Manufacturer,WarrantyExpiration,CalibrationCoefficient,InstallationTeam,PowerSource,IPAddress,SerialNumber) VALUES ('Noise','2023-03-01','Parkland Loop',41.8781,-87.6298,'v1.0.5','2023-04-10','2023-09-01','Active',95,'WiFi','http://data.city/noise1','SoundMetrics','2026-03-01',1.00,'Team C','Battery','192.168.1.30','NS-3002');


-- Regional air quality readings
CREATE TABLE regional_air_quality_readings
(
    ReadingID                INTEGER PRIMARY KEY AUTOINCREMENT,
    RegionCode               TEXT,
    StationID                INTEGER,
    MeasurementDate          DATE,
    PM25                     REAL,
    PM10                     REAL,
    Ozone                    REAL,
    NO2                      REAL,
    SO2                      REAL,
    CO                       REAL,
    Temperature              REAL,
    Humidity                 REAL,
    WindSpeed                REAL,
    WindDirection            TEXT,
    AQI                      INTEGER,
    SensorModel              TEXT,
    CalibrationStatus        TEXT,
    DataQualityFlag          INTEGER,
    ReportingAgency          TEXT,
    Notes                    TEXT
);

INSERT INTO regional_air_quality_readings (RegionCode,StationID,MeasurementDate,PM25,PM10,Ozone,NO2,SO2,CO,Temperature,Humidity,WindSpeed,WindDirection,AQI,SensorModel,CalibrationStatus,DataQualityFlag,ReportingAgency,Notes) VALUES ('NE01',101,'2023-09-15',12.5,28.3,0.045,0.019,0.004,0.6,22.5,55,3.2,'NE','45','Calibrated','Good',0,'EPA','Morning measurement');
INSERT INTO regional_air_quality_readings (RegionCode,StationID,MeasurementDate,PM25,PM10,Ozone,NO2,SO2,CO,Temperature,Humidity,WindSpeed,WindDirection,AQI,SensorModel,CalibrationStatus,DataQualityFlag,ReportingAgency,Notes) VALUES ('SW02',202,'2023-09-15',35.2,60.1,0.070,0.030,0.007,0.9,27.0,65,4.5,'SW','46','Pending','Medium',1,'StateDept','High traffic day');
INSERT INTO regional_air_quality_readings (RegionCode,StationID,MeasurementDate,PM25,PM10,Ozone,NO2,SO2,CO,Temperature,Humidity,WindSpeed,WindDirection,AQI,SensorModel,CalibrationStatus,DataQualityFlag,ReportingAgency,Notes) VALUES ('MW03',303,'2023-09-15',8.1,15.4,0.030,0.012,0.003,0.4,19.8,45,2.8,'MW','45','Calibrated','Good',0,'LocalAgency','Clear conditions');


-- Municipal water quality reports
CREATE TABLE municipal_water_quality_reports
(
    ReportID                 INTEGER PRIMARY KEY AUTOINCREMENT,
    CityID                   INTEGER,
    SamplingDate             DATE,
    SampleLocation           TEXT,
    pH                       REAL,
    Turbidity                REAL,
    Lead_ppb                 REAL,
    Arsenic_ppb              REAL,
    Chlorine_mgL             REAL,
    Fluoride_mgL             REAL,
    BacteriaCFU              INTEGER,
    TemperatureC             REAL,
    Conductivity_us          REAL,
    DissolvedOxygen_mgL      REAL,
    SamplingMethod           TEXT,
    AnalystName              TEXT,
    ApprovalDate             DATE,
    ReportStatus             TEXT,
    Remarks                  TEXT,
    DataSource               TEXT
);

INSERT INTO municipal_water_quality_reports (CityID,SamplingDate,SampleLocation,pH,Turbidity,Lead_ppb,Arsenic_ppb,Chlorine_mgL,Fluoride_mgL,BacteriaCFU,TemperatureC,Conductivity_us,DissolvedOxygen_mgL,SamplingMethod,AnalystName,ApprovalDate,ReportStatus,Remarks,DataSource) VALUES (1,'2023-08-20','River Intake',7.4,0.5,2.1,0.3,0.8,0.7,150,15.2,250,8.5,'Grab','Dana White','2023-08-22','Approved','Within limits','UtilityLab');
INSERT INTO municipal_water_quality_reports (CityID,SamplingDate,SampleLocation,pH,Turbidity,Lead_ppb,Arsenic_ppb,Chlorine_mgL,Fluoride_mgL,BacteriaCFU,TemperatureC,Conductivity_us,DissolvedOxygen_mgL,SamplingMethod,AnalystName,ApprovalDate,ReportStatus,Remarks,DataSource) VALUES (2,'2023-08-21','North Reservoir',7.1,0.7,1.8,0.2,0.6,0.5,200,16.0,260,9.0,'Composite','Evan Green','2023-08-23','Approved','Slightly elevated bacteria','ExternalLab');
INSERT INTO municipal_water_quality_reports (CityID,SamplingDate,SampleLocation,pH,Turbidity,Lead_ppb,Arsenic_ppb,Chlorine_mgL,Fluoride_mgL,BacteriaCFU,TemperatureC,Conductivity_us,DissolvedOxygen_mgL,SamplingMethod,AnalystName,ApprovalDate,ReportStatus,Remarks,DataSource) VALUES (3,'2023-08-22','West Treatment Plant',7.6,0.4,1.5,0.1,0.9,0.8,80,14.5,240,8.2,'Instant','Fiona Black','2023-08-24','Approved','All parameters normal','UtilityLab');


-- Renewable energy project milestones
CREATE TABLE renewable_energy_project_milestones
(
    MilestoneID                INTEGER PRIMARY KEY AUTOINCREMENT,
    ProjectID                  INTEGER,
    MilestoneName              TEXT,
    PlannedDate                DATE,
    ActualDate                 DATE,
    Status                     TEXT,
    Description                TEXT,
    BudgetAllocated            REAL,
    BudgetUsed                 REAL,
    ResponsibleTeam            TEXT,
    RiskLevel                  TEXT,
    Dependencies               TEXT,
    ApprovalDate               DATE,
    CompletionPercentage       INTEGER,
    RegulatoryApproval         INTEGER,
    FundingSource              TEXT,
    ProjectManager             TEXT,
    UpdatedBy                  TEXT,
    UpdateTimestamp            DATETIME,
    Comments                   TEXT
);

INSERT INTO renewable_energy_project_milestones (ProjectID,MilestoneName,PlannedDate,ActualDate,Status,Description,BudgetAllocated,BudgetUsed,ResponsibleTeam,RiskLevel,Dependencies,ApprovalDate,CompletionPercentage,RegulatoryApproval,FundingSource,ProjectManager,UpdatedBy,UpdateTimestamp,Comments) VALUES (501,'Site Survey','2023-01-15','2023-01-20','Completed','Survey of potential sites',250000,240000,'Planning','Low','None','2022-12-01',100,1,'Green Fund','Laura Hill','Mike Ross','2023-01-21 10:00:00','Site cleared');
INSERT INTO renewable_energy_project_milestones (ProjectID,MilestoneName,PlannedDate,ActualDate,Status,Description,BudgetAllocated,BudgetUsed,ResponsibleTeam,RiskLevel,Dependencies,ApprovalDate,CompletionPercentage,RegulatoryApproval,FundingSource,ProjectManager,UpdatedBy,UpdateTimestamp,Comments) VALUES (502,'Permitting','2023-04-01',NULL,'In Progress','Obtaining environmental permits',300000,150000,'Compliance','Medium','Site Survey','2023-03-15',50,0,'State Grant','David Kim','Sara Lee','2023-06-10 15:30:00','Pending agency feedback');
INSERT INTO renewable_energy_project_milestones (ProjectID,MilestoneName,PlannedDate,ActualDate,Status,Description,BudgetAllocated,BudgetUsed,ResponsibleTeam,RiskLevel,Dependencies,ApprovalDate,CompletionPercentage,RegulatoryApproval,FundingSource,ProjectManager,UpdatedBy,UpdateTimestamp,Comments) VALUES (503,'Construction Start','2023-09-01',NULL,'Planned','Begin civil works',1200000,0,'Construction','High','Permitting','2023-08-15',0,0,'Private Investor','Emily Zhao','Tom Wu','2023-07-05 09:45:00','Awaiting final permits');


-- Fleet driver performance metrics
CREATE TABLE fleet_driver_performance_metrics
(
    MetricID                INTEGER PRIMARY KEY AUTOINCREMENT,
    DriverID                INTEGER,
    PeriodStart             DATE,
    PeriodEnd               DATE,
    TripsCompleted          INTEGER,
    OnTimePercentage       REAL,
    AvgSpeed                REAL,
    FuelEfficiency          REAL,
    SafetyIncidents         INTEGER,
    CustomerRating          REAL,
    HoursWorked             REAL,
    DistanceMiles           REAL,
    Breakdowns              INTEGER,
    Violations              INTEGER,
    TrainingHours           REAL,
    CertificationLevel      TEXT,
    VehicleID               INTEGER,
    RouteEfficiencyScore    REAL,
    EmissionScore           REAL,
    BonusEligibility        INTEGER,
    Notes                   TEXT
);

INSERT INTO fleet_driver_performance_metrics (DriverID,PeriodStart,PeriodEnd,TripsCompleted,OnTimePercentage,AvgSpeed,FuelEfficiency,SafetyIncidents,CustomerRating,HoursWorked,DistanceMiles,Breakdowns,Violations,TrainingHours,CertificationLevel,VehicleID,RouteEfficiencyScore,EmissionScore,BonusEligibility,Notes) VALUES (1001,'2023-01-01','2023-01-31',320,96.5,45.2,8.1,0,4.8,150,2100,1,2,12,'Level2',555,88.5,92,1,'Excellent performance');
INSERT INTO fleet_driver_performance_metrics (DriverID,PeriodStart,PeriodEnd,TripsCompleted,OnTimePercentage,AvgSpeed,FuelEfficiency,SafetyIncidents,CustomerRating,HoursWorked,DistanceMiles,Breakdowns,Violations,TrainingHours,CertificationLevel,VehicleID,RouteEfficiencyScore,EmissionScore,BonusEligibility,Notes) VALUES (1002,'2023-01-01','2023-01-31',280,89.0,40.5,7.5,1,4.3,140,1800,2,3,10,'Level1',556,75.0,85,0,'Needs improvement on timeliness');
INSERT INTO fleet_driver_performance_metrics (DriverID,PeriodStart,PeriodEnd,TripsCompleted,OnTimePercentage,AvgSpeed,FuelEfficiency,SafetyIncidents,CustomerRating,HoursWorked,DistanceMiles,Breakdowns,Violations,TrainingHours,CertificationLevel,VehicleID,RouteEfficiencyScore,EmissionScore,BonusEligibility,Notes) VALUES (1003,'2023-01-01','2023-01-31',300,92.0,42.0,7.9,0,4.6,148,1950,0,1,11,'Level2',557,82.0,90,1,'Consistent and safe');


-- Smart parking zone occupancy
CREATE TABLE smart_parking_zone_occupancy
(
    ZoneID                 INTEGER PRIMARY KEY AUTOINCREMENT,
    ZoneName               TEXT,
    City                   TEXT,
    StartTime              TIME,
    EndTime                TIME,
    TotalSpaces            INTEGER,
    OccupiedSpaces         INTEGER,
    OccupancyRate          REAL,
    SensorCount            INTEGER,
    LastUpdate             TIMESTAMP,
    CameraCount            INTEGER,
    LightingStatus         INTEGER,
    PaymentMethodSupported TEXT,
    AverageParkingDuration REAL,
    ViolationCount         INTEGER,
    Revenue                REAL,
    MaintenanceRequired    INTEGER,
    ZoneManager            TEXT,
    GeoFenceCoordinates    TEXT,
    Comments               TEXT
);

INSERT INTO smart_parking_zone_occupancy (ZoneName,City,StartTime,EndTime,TotalSpaces,OccupiedSpaces,OccupancyRate,SensorCount,LastUpdate,CameraCount,LightingStatus,PaymentMethodSupported,AverageParkingDuration,ViolationCount,Revenue,MaintenanceRequired,ZoneManager,GeoFenceCoordinates,Comments) VALUES ('Downtown Loop','Metropolis','08:00','20:00',500,425,0.85,10,'2023-09-15 14:30:00',5,1,'CreditCard;MobileApp',2.5,12,1500.75,0,'Laura Perez','POLY(....)','High demand area');
INSERT INTO smart_parking_zone_occupancy (ZoneName,City,StartTime,EndTime,TotalSpaces,OccupiedSpaces,OccupancyRate,SensorCount,LastUpdate,CameraCount,LightingStatus,PaymentMethodSupported,AverageParkingDuration,ViolationCount,Revenue,MaintenanceRequired,ZoneManager,GeoFenceCoordinates,Comments) VALUES ('Airport West','Gotham','06:00','22:00',300,180,0.60,8,'2023-09-15 14:35:00',3,1,'Cash;CreditCard',3.1,5,800.00,0,'Mark Liu','POLY(....)','Steady usage');
INSERT INTO smart_parking_zone_occupancy (ZoneName,City,StartTime,EndTime,TotalSpaces,OccupiedSpaces,OccupancyRate,SensorCount,LastUpdate,CameraCount,LightingStatus,PaymentMethodSupported,AverageParkingDuration,ViolationCount,Revenue,MaintenanceRequired,ZoneManager,GeoFenceCoordinates,Comments) VALUES ('Riverfront Plaza','StarCity','07:00','19:00',250,230,0.92,6,'2023-09-15 14:40:00',4,1,'MobileApp',1.8,20,1200.50,1,'Nina Gomez','POLY(....)','Consider expanding capacity');


-- Electric grid substation assets
CREATE TABLE electric_grid_substation_assets
(
    AssetID                INTEGER PRIMARY KEY AUTOINCREMENT,
    SubstationID           INTEGER,
    AssetType              TEXT,
    Manufacturer           TEXT,
    ModelNumber            TEXT,
    InstallationDate       DATE,
    CapacityMVA            REAL,
    VoltageLevelKV         REAL,
    SerialNumber           TEXT,
    AssetStatus            TEXT,
    LastInspectionDate     DATE,
    NextInspectionDue      DATE,
    MaintenanceContractID  INTEGER,
    WarrantyEndDate        DATE,
    LocationLatitude       REAL,
    LocationLongitude      REAL,
    OwnerDepartment        TEXT,
    CriticalityLevel       TEXT,
    ReplacementYear        INTEGER,
    AssetNotes             TEXT
);

INSERT INTO electric_grid_substation_assets (SubstationID,AssetType,Manufacturer,ModelNumber,InstallationDate,CapacityMVA,VoltageLevelKV,SerialNumber,AssetStatus,LastInspectionDate,NextInspectionDue,MaintenanceContractID,WarrantyEndDate,LocationLatitude,LocationLongitude,OwnerDepartment,CriticalityLevel,ReplacementYear,AssetNotes) VALUES (2001,'Transformer','Siemens','TX-5000','2015-04-10',50.0,138.0,'SN-TR-001','Operational','2023-06-01','2024-06-01',301,'2027-04-10',40.7128,-74.0060','Transmission','High',2035,'Primary step‑up transformer');
INSERT INTO electric_grid_substation_assets (SubstationID,AssetType,Manufacturer,ModelNumber,InstallationDate,CapacityMVA,VoltageLevelKV,SerialNumber,AssetStatus,LastInspectionDate,NextInspectionDue,MaintenanceContractID,WarrantyEndDate,LocationLatitude,LocationLongitude,OwnerDepartment,CriticalityLevel,ReplacementYear,AssetNotes) VALUES (2002,'CircuitBreaker','ABB','CB-200','2018-09-15',20.0,69.0,'SN-CB-045','Operational','2023-07-12','2024-07-12',302,'2029-09-15',34.0522,-118.2437','Distribution','Medium',2032,'Medium voltage breaker');
INSERT INTO electric_grid_substation_assets (SubstationID,AssetType,Manufacturer,ModelNumber,InstallationDate,CapacityMVA,VoltageLevelKV,SerialNumber,AssetStatus,LastInspectionDate,NextInspectionDue,MaintenanceContractID,WarrantyEndDate,LocationLatitude,LocationLongitude,OwnerDepartment,CriticalityLevel,ReplacementYear,AssetNotes) VALUES (2003,'CapacitorBank','GE','CB-300','2020-01-20',10.0,34.5,'SN-CAP-078','Operational','2023-08-05','2024-08-05',303,'2025-01-20',41.8781,-87.6298','Transmission','Low',2030,'Reactive power support unit');


-- Public transport fare structures
CREATE TABLE public_transport_fare_structures
(
    FareID                 INTEGER PRIMARY KEY AUTOINCREMENT,
    Mode                   TEXT,
    ZoneFrom               INTEGER,
    ZoneTo                 INTEGER,
    BaseFare               REAL,
    PeakMultiplier         REAL,
    OffPeakMultiplier      REAL,
    ConcessionRate         REAL,
    TicketType             TEXT,
    ValidityMinutes        INTEGER,
    DailyCap               REAL,
    WeeklyCap              REAL,
    MonthlyCap             REAL,
    Currency               TEXT,
    EffectiveDate          DATE,
    ExpirationDate         DATE,
    Agency                 TEXT,
    FareDescription        TEXT,
    FundingSource          TEXT,
    RevisionNumber         INTEGER
);

INSERT INTO public_transport_fare_structures (Mode,ZoneFrom,ZoneTo,BaseFare,PeakMultiplier,OffPeakMultiplier,ConcessionRate,TicketType,ValidityMinutes,DailyCap,WeeklyCap,MonthlyCap,Currency,EffectiveDate,ExpirationDate,Agency,FareDescription,FundingSource,RevisionNumber) VALUES ('Bus',1,3,2.50,1.2,0.9,0.5,'Standard',90,7.00,30.00,110.00,'USD','2023-01-01','2025-12-31','CityTransit','Flat fare for zones 1‑3','Subsidy','3');
INSERT INTO public_transport_fare_structures (Mode,ZoneFrom,ZoneTo,BaseFare,PeakMultiplier,OffPeakMultiplier,ConcessionRate,TicketType,ValidityMinutes,DailyCap,WeeklyCap,MonthlyCap,Currency,EffectiveDate,ExpirationDate,Agency,FareDescription,FundingSource,RevisionNumber) VALUES ('Metro',2,5,3.00,1.3,0.8,0.4,'PeakOffPeak',120,8.00,35.00,130.00,'USD','2023-03-01','2026-02-28','MetroCorp','Tiered fare based on distance','TicketRevenue','2');
INSERT INTO public_transport_fare_structures (Mode,ZoneFrom,ZoneTo,BaseFare,PeakMultiplier,OffPeakMultiplier,ConcessionRate,TicketType,ValidityMinutes,DailyCap,WeeklyCap,MonthlyCap,Currency,EffectiveDate,ExpirationDate,Agency,FareDescription,FundingSource,RevisionNumber) VALUES ('Tram',1,2,1.80,1.1,0.95,0.6,'Reduced',60,5.00,25.00,100.00,'USD','2023-05-15','2025-05-14','TramLines','Reduced fare for senior citizens','GovernmentGrant','1');

