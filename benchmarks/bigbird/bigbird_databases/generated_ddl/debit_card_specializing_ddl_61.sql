-- Urban green initiatives
CREATE TABLE urban_green_initiatives (
    InitiativeID INTEGER PRIMARY KEY,
    CityCode INTEGER,
    InitiativeNameID INTEGER,
    StartDate INTEGER,
    EndDate INTEGER,
    FundingSourceID INTEGER,
    BudgetAmount REAL,
    AreaAcres REAL,
    TreeCount INTEGER,
    GrassCoveragePct REAL,
    CommunityPartnerID INTEGER,
    StatusID INTEGER,
    CreatedByID INTEGER,
    CreatedDate INTEGER,
    UpdatedByID INTEGER,
    UpdatedDate INTEGER,
    KPI1 REAL,
    KPI2 REAL,
    KPI3 REAL,
    NotesID INTEGER
);
INSERT INTO urban_green_initiatives VALUES (1,101,1001,20230101,20231231,2001,500000.0,150.5,20000,45.7,3001,1,4001,20230101,4002,20230615,85.2,90.1,78.4,5001);
INSERT INTO urban_green_initiatives VALUES (2,102,1002,20230215,20240315,2002,750000.0,200.0,25000,50.0,3002,2,4002,20230215,4003,20240401,88.0,92.5,80.0,5002);
INSERT INTO urban_green_initiatives VALUES (3,103,1003,20230401,20240430,2003,600000.0,175.3,22000,48.3,3003,1,4003,20230401,4004,20240520,86.5,91.0,79.2,5003);

-- Public transit accessibility
CREATE TABLE public_transit_accessibility (
    RecordID INTEGER PRIMARY KEY,
    CityCode INTEGER,
    TransitModeID INTEGER,
    StopID INTEGER,
    WheelchairAccessible INTEGER,
    BrailleSignage INTEGER,
    AudioAnnouncements INTEGER,
    ElevatorsCount INTEGER,
    EscalatorsCount INTEGER,
    PlatformGapCM REAL,
    AvgWaitTimeSec INTEGER,
    ServiceFrequencyMin INTEGER,
    RidershipDaily INTEGER,
    Year INTEGER,
    CreatedByID INTEGER,
    CreatedDate INTEGER,
    UpdatedByID INTEGER,
    UpdatedDate INTEGER,
    AccessibilityScore REAL,
    NotesID INTEGER
);
INSERT INTO public_transit_accessibility VALUES (1,101,1,5001,1,1,1,2,1,12.5,180,5,15000,2023,6001,20230105,6002,20230610,92.3,7001);
INSERT INTO public_transit_accessibility VALUES (2,102,2,5002,0,1,0,0,0,18.0,240,10,22000,2023,6002,20230212,6003,20230715,78.5,7002);
INSERT INTO public_transit_accessibility VALUES (3,103,1,5003,1,0,1,1,0,15.0,210,7,18000,2023,6003,20230320,6004,20230820,85.0,7003);

-- Electric vehicle infrastructure inspections
CREATE TABLE electric_vehicle_infrastructure_inspections (
    InspectionID INTEGER PRIMARY KEY,
    StationID INTEGER,
    InspectorID INTEGER,
    InspectionDate INTEGER,
    PowerRatingKW REAL,
    ConnectorCount INTEGER,
    FirmwareVersion INTEGER,
    SafetyScore REAL,
    IssueCount INTEGER,
    MaintenanceRequired INTEGER,
    NextInspectionDate INTEGER,
    CreatedByID INTEGER,
    CreatedDate INTEGER,
    UpdatedByID INTEGER,
    UpdatedDate INTEGER,
    Latitude REAL,
    Longitude REAL,
    RegionCode INTEGER,
    InspectionNotesID INTEGER,
    ComplianceStatusID INTEGER,
    CostRealized REAL
);
INSERT INTO electric_vehicle_infrastructure_inspections VALUES (1,8001,9001,20230301,150.0,4,3,96.5,0,0,20240301,10001,20230301,10002,20230302,40.7128,-74.0060,101,11001,1,1200.0);
INSERT INTO electric_vehicle_infrastructure_inspections VALUES (2,8002,9002,20230415,250.0,6,4,89.0,2,1,20240415,10002,20230415,10003,20230416,34.0522,-118.2437,102,11002,2,2100.5);
INSERT INTO electric_vehicle_infrastructure_inspections VALUES (3,8003,9003,20230520,200.0,5,5,92.3,1,0,20240520,10003,20230520,10004,20230521,41.8781,-87.6298,103,11003,1,1750.75);

-- Renewable energy project milestones
CREATE TABLE renewable_energy_project_milestones (
    MilestoneID INTEGER PRIMARY KEY,
    ProjectID INTEGER,
    MilestoneTypeID INTEGER,
    ScheduledDate INTEGER,
    CompletionDate INTEGER,
    StatusID INTEGER,
    BudgetAllocated REAL,
    BudgetUsed REAL,
    PercentComplete REAL,
    ContractorID INTEGER,
    PermitID INTEGER,
    RiskScore REAL,
    EnvironmentalImpactScore REAL,
    StakeholderID INTEGER,
    ReportID INTEGER,
    CreatedByID INTEGER,
    CreatedDate INTEGER,
    UpdatedByID INTEGER,
    UpdatedDate INTEGER,
    NotesID INTEGER,
    DelayDays INTEGER
);
INSERT INTO renewable_energy_project_milestones VALUES (1,3001,1,20230601,20230615,1,1000000.0,950000.0,95.0,4001,5001,2.5,1.2,6001,7001,8001,20230601,8002,20230620,9001,5);
INSERT INTO renewable_energy_project_milestones VALUES (2,3002,2,20230710,20230725,2,1500000.0,1200000.0,80.0,4002,5002,3.0,1.5,6002,7002,8003,20230710,8004,20230801,9002,15);
INSERT INTO renewable_energy_project_milestones VALUES (3,3003,3,20230820,0,3,2000000.0,0.0,0.0,4003,5003,4.5,2.0,6003,7003,8005,20230820,8006,0,9003,0);

-- Smart city waste sorting metrics
CREATE TABLE smart_city_waste_sorting_metrics (
    MetricID INTEGER PRIMARY KEY,
    ZoneID INTEGER,
    Date INTEGER,
    TotalWasteTons REAL,
    RecyclableTons REAL,
    CompostTons REAL,
    LandfillTons REAL,
    ContaminationPct REAL,
    AvgCollectionTimeMin REAL,
    CollectionVehicles INTEGER,
    StaffOnDuty INTEGER,
    FehlRatePct REAL,
    PublicEngagementScore REAL,
    FundingSourceID INTEGER,
    CreatedByID INTEGER,
    CreatedDate INTEGER,
    UpdatedByID INTEGER,
    UpdatedDate INTEGER,
    KPI1 REAL,
    KPI2 REAL,
    KPI3 REAL
);
INSERT INTO smart_city_waste_sorting_metrics VALUES (1,201,20230601,120.5,30.2,20.1,70.2,5.6,45.0,12,8,2.3,78.5,901,10001,20230601,10002,20230610,88.0,92.5,79.0);
INSERT INTO smart_city_waste_sorting_metrics VALUES (2,202,20230602,130.0,35.0,22.0,73.0,6.0,46.5,13,9,2.5,80.0,902,10003,20230602,10004,20230611,89.5,93.0,80.2);
INSERT INTO smart_city_waste_sorting_metrics VALUES (3,203,20230603,115.8,28.5,18.7,68.6,5.2,44.0,11,7,2.1,77.0,903,10005,20230603,10006,20230612,87.2,91.3,78.1);

-- Air quality emergency alerts
CREATE TABLE air_quality_emergency_alerts (
    AlertID INTEGER PRIMARY KEY,
    CityCode INTEGER,
    AlertLevelID INTEGER,
    StartDate INTEGER,
    EndDate INTEGER,
    PollutantID INTEGER,
    ConcentrationPPM REAL,
    PopulationAffected INTEGER,
    IssuedByAgencyID INTEGER,
    ResponseTimeMin INTEGER,
    MitigationCost REAL,
    CreatedDate INTEGER,
    UpdatedDate INTEGER,
    ResolvedByID INTEGER,
    ResolutionNotesID INTEGER,
    AlertStatusID INTEGER,
    Latitude REAL,
    Longitude REAL,
    ForecastedImpactScore REAL,
    ActualImpactScore REAL,
    FollowUpRequired INTEGER
);
INSERT INTO air_quality_emergency_alerts VALUES (1,101,3,20230701,20230702,10,150.5,500000,1101,30,250000.0,20230701,20230703,1201,1301,2,40.7128,-74.0060,85.0,90.0,1);
INSERT INTO air_quality_emergency_alerts VALUES (2,102,2,20230815,20230816,12,120.0,300000,1102,25,180000.0,20230815,20230817,1202,1302,1,34.0522,-118.2437,78.0,80.5,0);
INSERT INTO air_quality_emergency_alerts VALUES (3,103,4,20230910,20230911,11,200.3,750000,1103,40,350000.0,20230910,20230912,1203,1303,3,41.8781,-87.6298,92.0,95.0,1);

-- Bike share demand forecast
CREATE TABLE bike_share_demand_forecast (
    ForecastID INTEGER PRIMARY KEY,
    StationID INTEGER,
    ForecastDate INTEGER,
    PredictedTrips INTEGER,
    PredictedDurationMin REAL,
    PredictedRevenue REAL,
    WeatherConditionID INTEGER,
    TemperatureC REAL,
    PrecipitationMM REAL,
    EventIndicator INTEGER,
    DayOfWeek INTEGER,
    HolidayIndicator INTEGER,
    HistoricalAvgTrips INTEGER,
    ModelVersionID INTEGER,
    ConfidenceScore REAL,
    CreatedByID INTEGER,
    CreatedDate INTEGER,
    UpdatedByID INTEGER,
    UpdatedDate INTEGER,
    NotesID INTEGER,
    ForecastErrorPct REAL
);
INSERT INTO bike_share_demand_forecast VALUES (1,7001,20230701,250,15.5,1250.0,1,22.0,0.0,0,5,0,200,1,0.92,1401,20230701,1402,20230702,1501,5.0);
INSERT INTO bike_share_demand_forecast VALUES (2,7002,20230702,300,14.8,1800.0,2,18.0,2.5,1,6,0,210,1,0.90,1403,20230702,1404,20230703,1502,7.5);
INSERT INTO bike_share_demand_forecast VALUES (3,7003,20230703,220,16.0,1100.0,1,20.0,0.0,0,7,1,190,1,0.88,1405,20230703,1406,20230704,1503,6.2);

-- Water leak detection events
CREATE TABLE water_leak_detection_events (
    EventID INTEGER PRIMARY KEY,
    PipeSegmentID INTEGER,
    DetectionDate INTEGER,
    LeakVolumeLiters REAL,
    PressureDropKPa REAL,
    TemperatureC REAL,
    DetectionMethodID INTEGER,
    ResponseTeamID INTEGER,
    RepairTimeHours REAL,
    CostEstimated REAL,
    CostActual REAL,
    CreatedByID INTEGER,
    CreatedDate INTEGER,
    UpdatedByID INTEGER,
    UpdatedDate INTEGER,
    SeverityScore REAL,
    IsCritical INTEGER,
    Latitude REAL,
    Longitude REAL,
    NotificationSent INTEGER,
    FollowUpStatusID INTEGER
);
INSERT INTO water_leak_detection_events VALUES (1,9001,20230615,1500.0,0.8,15.0,2,3001,5.0,2000.0,2100.0,1601,20230615,1602,20230620,8.5,1,40.7128,-74.0060,1,4001);
INSERT INTO water_leak_detection_events VALUES (2,9002,20230705,800.0,0.5,12.0,1,3002,3.5,1200.0,1150.0,1603,20230705,1604,20230710,6.0,0,34.0522,-118.2437,1,4002);
INSERT INTO water_leak_detection_events VALUES (3,9003,20230801,2500.0,1.2,18.0,3,3003,7.0,3000.0,3100.0,1605,20230801,1606,20230807,9.2,1,41.8781,-87.6298,1,4003);

-- Municipal parking enforcement logs
CREATE TABLE municipal_parking_enforcement_logs (
    LogID INTEGER PRIMARY KEY,
    ZoneID INTEGER,
    OfficerID INTEGER,
    ViolationDate INTEGER,
    ViolationTime INTEGER,
    VehicleTypeID INTEGER,
    ViolationCodeID INTEGER,
    FineAmount REAL,
    PaymentStatusID INTEGER,
    IssuedByAgencyID INTEGER,
    PlateNumberID INTEGER,
    CameraID INTEGER,
    Latitude REAL,
    Longitude REAL,
    RecordedSpeedKph REAL,
    SpeedLimitKph REAL,
    TicketNumberID INTEGER,
    CreatedDate INTEGER,
    UpdatedDate INTEGER,
    ResolvedByID INTEGER,
    ResolutionNotesID INTEGER,
    AppealStatusID INTEGER
);
INSERT INTO municipal_parking_enforcement_logs VALUES (1,101,5001,20230710,830,1,101,75.0,1,6001,7001,8001,40.7128,-74.0060,45.0,30.0,9001,20230710,20230715,10001,11001,1);
INSERT INTO municipal_parking_enforcement_logs VALUES (2,102,5002,20230711,945,2,102,60.0,2,6002,7002,8002,34.0522,-118.2437,55.0,40.0,9002,20230711,20230716,10002,11002,0);
INSERT INTO municipal_parking_enforcement_logs VALUES (3,103,5003,20230712,1015,1,103,85.0,1,6003,7003,8003,41.8781,-87.6298,65.0,50.0,9003,20230712,20230717,10003,11003,2);

-- Drone delivery regulatory compliance
CREATE TABLE drone_delivery_regulatory_compliance (
    ComplianceRecordID INTEGER PRIMARY KEY,
    DroneID INTEGER,
    OperatorID INTEGER,
    FlightDate INTEGER,
    FlightDurationMin REAL,
    AirspaceClassID INTEGER,
    ClearanceGranted INTEGER,
    IncidentCount INTEGER,
    ViolationCodeID INTEGER,
    FineAmount REAL,
    AuditScore REAL,
    InspectorID INTEGER,
    CreatedByID INTEGER,
    CreatedDate INTEGER,
    UpdatedByID INTEGER,
    UpdatedDate INTEGER,
    FlightAltitudeMeters REAL,
    FlightPathLengthKm REAL,
    WeatherConditionID INTEGER,
    ComplianceStatusID INTEGER,
    NotesID INTEGER
);
INSERT INTO drone_delivery_regulatory_compliance VALUES (1,2001,3001,20230720,25.0,2,1,0,0,0.0,98.5,4001,5001,20230720,5002,20230721,120.0,15.0,1,1,6001);
INSERT INTO drone_delivery_regulatory_compliance VALUES (2,2002,3002,20230721,30.0,3,1,1,101,150.0,85.0,4002,5003,20230721,5004,20230722,150.0,20.0,2,2,6002);
INSERT INTO drone_delivery_regulatory_compliance VALUES (3,2003,3003,20230722,20.0,1,0,0,0,0.0,92.0,4003,5005,20230722,5006,20230723,100.0,10.0,1,1,6003);