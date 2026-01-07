-- City parking meter inventory
CREATE TABLE city_parking_meter_inventory
(
    MeterID INTEGER PRIMARY KEY,
    LocationID INTEGER,
    StreetCode INTEGER,
    Latitude REAL,
    Longitude REAL,
    InstallationDate INTEGER,
    LastMaintenanceDate INTEGER,
    FirmwareVersion INTEGER,
    BatteryLevel INTEGER,
    PaymentMethodCode INTEGER,
    HourlyRate REAL,
    MaxParkingDuration INTEGER,
    ZoneCode INTEGER,
    IsOperational INTEGER,
    SensorTypeCode INTEGER,
    CommunicationProtocolCode INTEGER,
    OwnerAgencyCode INTEGER,
    WarrantyExpiration INTEGER,
    SerialNumber INTEGER,
    AssetTag INTEGER
);

INSERT INTO city_parking_meter_inventory VALUES (1001,10,501,40.7128,-74.0060,20200115,20221201,3,85,1,2.5,120,7,1,2,1,5,20250315,123456,98765);
INSERT INTO city_parking_meter_inventory VALUES (1002,11,502,34.0522,-118.2437,20190520,20221110,2,90,2,3.0,180,8,1,1,2,4,20240401,123457,98766);
INSERT INTO city_parking_meter_inventory VALUES (1003,12,503,41.8781,-87.6298,20180305,20221005,4,80,1,2.0,90,6,0,3,3,6,20250130,123458,98767);

-- Air quality monitoring stations
CREATE TABLE air_quality_monitoring_stations
(
    StationID INTEGER PRIMARY KEY,
    CityCode INTEGER,
    Latitude REAL,
    Longitude REAL,
    Elevation INTEGER,
    InstallationDate INTEGER,
    SensorPackageCode INTEGER,
    PM25_CalDate INTEGER,
    PM10_CalDate INTEGER,
    NO2_CalDate INTEGER,
    O3_CalDate INTEGER,
    CO_CalDate INTEGER,
    SO2_CalDate INTEGER,
    DataUploadFreqMin INTEGER,
    MaintenanceContractID INTEGER,
    PowerSourceCode INTEGER,
    ConnectivityTypeCode INTEGER,
    StatusCode INTEGER,
    LastDataTimestamp INTEGER,
    FirmwareVersion INTEGER
);

INSERT INTO air_quality_monitoring_stations VALUES (2001,101,40.7306,-73.9352,15,20180101,2,20190101,20190101,20190101,20190101,20190101,20190101,15,3001,1,2,1,202212311200,5);
INSERT INTO air_quality_monitoring_stations VALUES (2002,102,34.0522,-118.2437,30,20170615,3,20180615,20180615,20180615,20180615,20180615,20180615,10,3002,2,1,1,202212311210,4);
INSERT INTO air_quality_monitoring_stations VALUES (2003,103,41.8781,-87.6298,20,20190520,1,20200520,20200520,20200520,20200520,20200520,20200520,20,3003,1,3,0,202212311220,6);

-- Public library circulation statistics
CREATE TABLE public_library_circulation_stats
(
    LibraryID INTEGER PRIMARY KEY,
    BranchCode INTEGER,
    ReportDate INTEGER,
    TotalCheckouts INTEGER,
    TotalReturns INTEGER,
    NewMemberRegistrations INTEGER,
    ActiveMembers INTEGER,
    TotalItems INTEGER,
    OverdueItems INTEGER,
    ItemsLost INTEGER,
    DigitalCheckoutCount INTEGER,
    AudioBookCheckoutCount INTEGER,
    ChildrenSectionCheckouts INTEGER,
    TeenSectionCheckouts INTEGER,
    AdultSectionCheckouts INTEGER,
    ComputerStationUsageHours INTEGER,
    EventAttendance INTEGER,
    StaffOnDuty INTEGER,
    HoursOpen INTEGER,
    WiFiSessions INTEGER
);

INSERT INTO public_library_circulation_stats VALUES (3001,10,20221231,15000,14800,200,1200,50000,350,15,3000,800,2500,1800,9000,1200,350,12,72,5000);
INSERT INTO public_library_circulation_stats VALUES (3002,11,20221231,12000,11900,150,900,40000,290,10,2500,600,2000,1500,7500,1000,300,10,68,4200);
INSERT INTO public_library_circulation_stats VALUES (3003,12,20221231,18000,17950,250,1500,60000,410,20,3500,900,3000,2200,10500,1400,400,14,80,6200);

-- Municipal roadway surface conditions
CREATE TABLE municipal_roadway_surface_conditions
(
    SegmentID INTEGER PRIMARY KEY,
    RoadCode INTEGER,
    StartMilepost INTEGER,
    EndMilepost INTEGER,
    SurfaceTypeCode INTEGER,
    ConditionRating INTEGER,
    LastInspectionDate INTEGER,
    NextInspectionDue INTEGER,
    AverageDailyTraffic INTEGER,
    PavementAgeYears INTEGER,
    CrackLengthMeters REAL,
    RutDepthCentimeters REAL,
    AggregateQualityCode INTEGER,
    MaintenancePriority INTEGER,
    AssignedCrewID INTEGER,
    RepairCostEstimate INTEGER,
    FundingSourceCode INTEGER,
    InspectionNotesCode INTEGER,
    LatitudinalStart REAL,
    LongitudinalEnd REAL
);

INSERT INTO municipal_roadway_surface_conditions VALUES (4001,101,0,2,1,8,20220115,20240115,25000,12,150.5,3.2,2,3,201,50000,1,5,40.7128,-74.0060);
INSERT INTO municipal_roadway_surface_conditions VALUES (4002,102,3,5,2,6,20220220,20240220,18000,8,200.0,4.5,3,4,202,60000,2,6,34.0522,-118.2437);
INSERT INTO municipal_roadway_surface_conditions VALUES (4003,103,6,9,1,9,20220310,20240310,30000,15,120.3,2.8,1,2,203,45000,1,4,41.8781,-87.6298);

-- Electric grid substation assets
CREATE TABLE electric_grid_substation_assets
(
    SubstationID INTEGER PRIMARY KEY,
    NameCode INTEGER,
    Latitude REAL,
    Longitude REAL,
    VoltageLevel INTEGER,
    TransformerCount INTEGER,
    SwitchgearCount INTEGER,
    GISSystemVersion INTEGER,
    ConstructionYear INTEGER,
    OwnerUtilityCode INTEGER,
    MaintenanceContractID INTEGER,
    LastAuditDate INTEGER,
    CapacityMVA REAL,
    FaultLevel INTEGER,
    CoolingMethodCode INTEGER,
    PrimaryFuelTypeCode INTEGER,
    BackupGeneratorCount INTEGER,
    SecurityLevel INTEGER,
    OperationalStatus INTEGER,
    AssetTag INTEGER
);

INSERT INTO electric_grid_substation_assets VALUES (5001,10,40.7306,-73.9352,115,4,6,3,1995,1,4001,20211201,250.5,3,2,1,2,5,1,8001);
INSERT INTO electric_grid_substation_assets VALUES (5002,11,34.0522,-118.2437,230,6,8,4,2002,2,4002,20211115,500.0,4,1,2,3,4,1,8002);
INSERT INTO electric_grid_substation_assets VALUES (5003,12,41.8781,-87.6298,345,8,10,5,2008,3,4003,20211020,750.3,5,3,3,4,3,0,8003);

-- Water treatment plant chemical batches
CREATE TABLE water_treatment_plant_chemical_batches
(
    BatchID INTEGER PRIMARY KEY,
    PlantID INTEGER,
    ChemicalCode INTEGER,
    SupplierID INTEGER,
    ArrivalDate INTEGER,
    QuantityKg REAL,
    StorageLocationCode INTEGER,
    ExpirationDate INTEGER,
    SDSVersion INTEGER,
    BatchNumber INTEGER,
    pHLevel REAL,
    ChlorineConcentration REAL,
    FluorideLevel REAL,
    AddedByEmployeeID INTEGER,
    QualityCheckResult INTEGER,
    TemperatureC REAL,
    HazardClass INTEGER,
    ApprovedForUse INTEGER,
    DisposalMethodCode INTEGER,
    LastUpdated INTEGER
);

INSERT INTO water_treatment_plant_chemical_batches VALUES (6001,20,101,301,20221201,5000.0,12,20231231,2,777001,7.2,2.5,0.7,45,1,22.5,3,1,4,20221215);
INSERT INTO water_treatment_plant_chemical_batches VALUES (6002,21,102,302,20221115,3000.0,13,20231130,1,777002,7.0,3.0,0.5,46,1,21.0,2,1,5,20221120);
INSERT INTO water_treatment_plant_chemical_batches VALUES (6003,22,103,303,20221020,4500.0,14,20241015,3,777003,7.4,2.8,0.6,47,0,23.0,4,0,6,20221025);

-- Bike share trip logs
CREATE TABLE bike_share_trip_logs
(
    TripID INTEGER PRIMARY KEY,
    BikeID INTEGER,
    UserID INTEGER,
    StartStationID INTEGER,
    EndStationID INTEGER,
    StartTime INTEGER,
    EndTime INTEGER,
    DistanceMeters REAL,
    DurationSeconds INTEGER,
    AvgSpeedKph REAL,
    ElevationGainMeters REAL,
    PaymentMethodCode INTEGER,
    DiscountCode INTEGER,
    IsMember INTEGER,
    BikeConditionStart INTEGER,
    BikeConditionEnd INTEGER,
    ForceCloseFlag INTEGER,
    GPSDataHash INTEGER,
    CalorieEstimate INTEGER,
    TripPurposeCode INTEGER
);

INSERT INTO bike_share_trip_logs VALUES (7001,15001,25001,101,105,202212011030,202212011115,3500.0,2700,4.6,30.0,1,0,1,5,5,0,123456,250,2);
INSERT INTO bike_share_trip_logs VALUES (7002,15002,25002,102,106,202212021200,202212021250,4200.0,3000,5.0,45.0,2,5,0,4,4,0,123457,300,3);
INSERT INTO bike_share_trip_logs VALUES (7003,15003,25003,103,107,202212031400,202212031455,2800.0,2100,4.8,20.0,1,10,1,3,3,0,123458,200,1);

-- Solar farm performance metrics
CREATE TABLE solar_farm_performance_metrics
(
    FarmID INTEGER,
    PanelArrayID INTEGER,
    RecordDate INTEGER,
    TotalGenerationMWh REAL,
    PeakPowerMW REAL,
    TemperatureC REAL,
    IrradianceWpm2 REAL,
    InverterEfficiency REAL,
    DowntimeMinutes INTEGER,
    MaintenanceEventID INTEGER,
    DegradationRatePPM REAL,
    NetYieldMWh REAL,
    GrossYieldMWh REAL,
    EnergyExportedMWh REAL,
    EnergyStoredMWh REAL,
    WeatherStationID INTEGER,
    SnowDepthCm REAL,
    DustLevelIndex INTEGER,
    AvailabilityPercent REAL,
    GridConnectionStatus INTEGER,
    PRIMARY KEY (FarmID, PanelArrayID, RecordDate)
);

INSERT INTO solar_farm_performance_metrics VALUES (8001,1,20221231,1500.5,5.2,25.0,800.0,96.5,30,0,0.5,1480.0,1500.5,1490.0,10.0,4001,0.0,3,99.5,1);
INSERT INTO solar_farm_performance_metrics VALUES (8002,2,20221231,1200.0,4.0,23.5,750.0,95.0,45,101,0.6,1150.0,1200.0,1180.0,8.0,4002,2.5,4,98.0,1);
INSERT INTO solar_farm_performance_metrics VALUES (8003,3,20221231,1800.8,6.5,27.0,900.0,97.2,20,0,0.4,1785.0,1800.8,1795.0,12.0,4003,0.0,2,99.8,1);

-- Fuel station hydrant inspections
CREATE TABLE fuel_station_hydrant_inspections
(
    InspectionID INTEGER PRIMARY KEY,
    StationID INTEGER,
    HydrantID INTEGER,
    InspectionDate INTEGER,
    InspectorID INTEGER,
    PressurePSI REAL,
    FlowRateGPM REAL,
    ValveCondition INTEGER,
    SealIntegrity INTEGER,
    CorrosionLevel INTEGER,
    PaintCondition INTEGER,
    GPSLatitude REAL,
    GPSLongitude REAL,
    NotesCode INTEGER,
    IsCompliant INTEGER,
    FollowUpRequired INTEGER,
    FollowUpDueDate INTEGER,
    HydraulicTestResult INTEGER,
    CertificationNumber INTEGER,
    LastServicedDate INTEGER
);

INSERT INTO fuel_station_hydrant_inspections VALUES (9001,101,501,20221210,301,75.0,120.0,1,1,0,2,40.7128,-74.0060,10,1,0,0,1,555001,20221130);
INSERT INTO fuel_station_hydrant_inspections VALUES (9002,102,502,20221212,302,80.0,130.0,1,1,1,3,34.0522,-118.2437,12,1,0,0,1,555002,20221201);
INSERT INTO fuel_station_hydrant_inspections VALUES (9003,103,503,20221215,303,70.0,115.0,0,0,2,1,41.8781,-87.6298,14,0,1,20230115,0,555003,20221205);

-- Smart city traffic signal configurations
CREATE TABLE smart_city_traffic_signal_configurations
(
    SignalID INTEGER PRIMARY KEY,
    IntersectionID INTEGER,
    Latitude REAL,
    Longitude REAL,
    FirmwareVersion INTEGER,
    CycleLengthSeconds INTEGER,
    GreenTimeNorthSouth INTEGER,
    GreenTimeEastWest INTEGER,
    YellowTime INTEGER,
    RedTime INTEGER,
    PedestrianPhaseEnabled INTEGER,
    SensorTypeCode INTEGER,
    AdaptiveControlEnabled INTEGER,
    MaxQueueLength INTEGER,
    MinGreenTime INTEGER,
    MaxRedTime INTEGER,
    CoordinationGroup INTEGER,
    LastConfigChangeDate INTEGER,
    ConfiguredByUserID INTEGER,
    OperationalStatus INTEGER
);

INSERT INTO smart_city_traffic_signal_configurations VALUES (10001,2001,40.7306,-73.9352,5,120,40,40,5,35,1,2,1,30,15,60,3,20221201,901,1);
INSERT INTO smart_city_traffic_signal_configurations VALUES (10002,2002,34.0522,-118.2437,4,110,35,35,4,36,0,3,0,25,12,55,2,20221202,902,1);
INSERT INTO smart_city_traffic_signal_configurations VALUES (10003,2003,41.8781,-87.6298,6,130,45,45,6,34,1,1,1,35,18,70,4,20221203,903,1);