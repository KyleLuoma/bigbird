-- Table storing mobile app crash reports
CREATE TABLE mobile_app_crash_reports
(
    CrashID                INTEGER PRIMARY KEY,
    AppVersion             TEXT,
    OSVersion              TEXT,
    DeviceModel            TEXT,
    DeviceID               TEXT,
    Timestamp              DATETIME,
    ErrorCode              INTEGER,
    StackTrace             TEXT,
    UserID                 INTEGER,
    SessionID              TEXT,
    NetworkType            TEXT,
    BatteryLevel           REAL,
    MemoryUsage            REAL,
    DiskSpaceRemaining     REAL,
    Locale                 TEXT,
    ScreenResolution       TEXT,
    IsRooted               INTEGER,
    IsEmulator             INTEGER,
    CrashCount             INTEGER,
    AdditionalInfo         TEXT
);
INSERT INTO mobile_app_crash_reports (CrashID,AppVersion,OSVersion,DeviceModel,DeviceID,Timestamp,ErrorCode,StackTrace,UserID,SessionID,NetworkType,BatteryLevel,MemoryUsage,DiskSpaceRemaining,Locale,ScreenResolution,IsRooted,IsEmulator,CrashCount,AdditionalInfo) VALUES (1,NULL,NULL,NULL,NULL,NULL,101,NULL,1001,NULL,NULL,85.5,1024.3,500.0,NULL,NULL,0,0,3,NULL);
INSERT INTO mobile_app_crash_reports (CrashID,AppVersion,OSVersion,DeviceModel,DeviceID,Timestamp,ErrorCode,StackTrace,UserID,SessionID,NetworkType,BatteryLevel,MemoryUsage,DiskSpaceRemaining,Locale,ScreenResolution,IsRooted,IsEmulator,CrashCount,AdditionalInfo) VALUES (2,NULL,NULL,NULL,NULL,NULL,202,NULL,1002,NULL,NULL,76.2,850.7,310.4,NULL,NULL,1,0,1,NULL);
INSERT INTO mobile_app_crash_reports (CrashID,AppVersion,OSVersion,DeviceModel,DeviceID,Timestamp,ErrorCode,StackTrace,UserID,SessionID,NetworkType,BatteryLevel,MemoryUsage,DiskSpaceRemaining,Locale,ScreenResolution,IsRooted,IsEmulator,CrashCount,AdditionalInfo) VALUES (3,NULL,NULL,NULL,NULL,NULL,303,NULL,1003,NULL,NULL,64.0,720.5,250.2,NULL,NULL,0,1,2,NULL);

-- Table recording vehicle repair part orders
CREATE TABLE vehicle_repair_part_orders
(
    OrderID                INTEGER PRIMARY KEY,
    VehicleID              INTEGER,
    PartNumber             TEXT,
    PartDescription        TEXT,
    SupplierID             INTEGER,
    OrderDate              DATE,
    ExpectedDeliveryDate   DATE,
    Quantity               INTEGER,
    UnitPrice              REAL,
    Currency               TEXT,
    OrderStatus            TEXT,
    WarehouseLocation      TEXT,
    ReceivedDate           DATE,
    InspectorID            INTEGER,
    InspectionResult       TEXT,
    WarrantyFlag           INTEGER,
    PurchaseOrderReference TEXT,
    FreightCost            REAL,
    TaxAmount              REAL,
    TotalCost              REAL
);
INSERT INTO vehicle_repair_part_orders (OrderID,VehicleID,PartNumber,PartDescription,SupplierID,OrderDate,ExpectedDeliveryDate,Quantity,UnitPrice,Currency,OrderStatus,WarehouseLocation,ReceivedDate,InspectorID,InspectionResult,WarrantyFlag,PurchaseOrderReference,FreightCost,TaxAmount,TotalCost) VALUES (1,2001,NULL,NULL,3001,NULL,NULL,4,125.50,NULL,NULL,NULL,NULL,4001,NULL,1,NULL,15.00,10.00,527.00);
INSERT INTO vehicle_repair_part_orders (OrderID,VehicleID,PartNumber,PartDescription,SupplierID,OrderDate,ExpectedDeliveryDate,Quantity,UnitPrice,Currency,OrderStatus,WarehouseLocation,ReceivedDate,InspectorID,InspectionResult,WarrantyFlag,PurchaseOrderReference,FreightCost,TaxAmount,TotalCost) VALUES (2,2002,NULL,NULL,3002,NULL,NULL,2,250.00,NULL,NULL,NULL,NULL,4002,NULL,0,NULL,20.00,12.50,532.50);
INSERT INTO vehicle_repair_part_orders (OrderID,VehicleID,PartNumber,PartDescription,SupplierID,OrderDate,ExpectedDeliveryDate,Quantity,UnitPrice,Currency,OrderStatus,WarehouseLocation,ReceivedDate,InspectorID,InspectionResult,WarrantyFlag,PurchaseOrderReference,FreightCost,TaxAmount,TotalCost) VALUES (3,2003,NULL,NULL,3003,NULL,NULL,1,500.00,NULL,NULL,NULL,NULL,4003,NULL,1,NULL,30.00,25.00,555.00);

-- Table describing renewable energy sources at fuel stations
CREATE TABLE fuel_station_renewable_energy_sources
(
    SourceID                INTEGER PRIMARY KEY,
    StationID               INTEGER,
    SourceType              TEXT,
    CapacityMW              REAL,
    InstallationDate        DATE,
    ProviderName            TEXT,
    ContractStartDate       DATE,
    ContractEndDate         DATE,
    EnergyGenerationMWh     REAL,
    CO2OffsetTonnes         REAL,
    IncentiveProgram        TEXT,
    IncentiveAmount         REAL,
    MaintenanceFrequencyDays INTEGER,
    LastMaintenanceDate     DATE,
    Status                  TEXT,
    GridConnectionID        TEXT,
    LocationLatitude        REAL,
    LocationLongitude       REAL,
    Certification           TEXT,
    Notes                   TEXT
);
INSERT INTO fuel_station_renewable_energy_sources (SourceID,StationID,SourceType,CapacityMW,InstallationDate,ProviderName,ContractStartDate,ContractEndDate,EnergyGenerationMWh,CO2OffsetTonnes,IncentiveProgram,IncentiveAmount,MaintenanceFrequencyDays,LastMaintenanceDate,Status,GridConnectionID,LocationLatitude,LocationLongitude,Certification,Notes) VALUES (1,5001,NULL,2.5,NULL,NULL,NULL,NULL,12000.0,15.0,NULL,NULL,180,NULL,NULL,NULL,45.123,-93.456,NULL,NULL);
INSERT INTO fuel_station_renewable_energy_sources (SourceID,StationID,SourceType,CapacityMW,InstallationDate,ProviderName,ContractStartDate,ContractEndDate,EnergyGenerationMWh,CO2OffsetTonnes,IncentiveProgram,IncentiveAmount,MaintenanceFrequencyDays,LastMaintenanceDate,Status,GridConnectionID,LocationLatitude,LocationLongitude,Certification,Notes) VALUES (2,5002,NULL,1.0,NULL,NULL,NULL,NULL,6000.0,7.5,NULL,NULL,365,NULL,NULL,NULL,44.987,-93.210,NULL,NULL);
INSERT INTO fuel_station_renewable_energy_sources (SourceID,StationID,SourceType,CapacityMW,InstallationDate,ProviderName,ContractStartDate,ContractEndDate,EnergyGenerationMWh,CO2OffsetTonnes,IncentiveProgram,IncentiveAmount,MaintenanceFrequencyDays,LastMaintenanceDate,Status,GridConnectionID,LocationLatitude,LocationLongitude,Certification,Notes) VALUES (3,5003,NULL,3.0,NULL,NULL,NULL,NULL,15000.0,20.0,NULL,NULL,90,NULL,NULL,NULL,45.500,-93.800,NULL,NULL);

-- Table logging driver coaching sessions
CREATE TABLE driver_coaching_sessions
(
    SessionID               INTEGER PRIMARY KEY,
    DriverID                INTEGER,
    CoachID                 INTEGER,
    SessionDate             DATE,
    DurationMinutes         INTEGER,
    TopicsCovered           TEXT,
    ScoreBefore             INTEGER,
    ScoreAfter              INTEGER,
    ImprovementPlan         TEXT,
    FollowUpDate            DATE,
    SessionMode             TEXT,
    Location                TEXT,
    VehicleID               INTEGER,
    MileageDuringSession    INTEGER,
    FuelEfficiencyBefore    REAL,
    FuelEfficiencyAfter     REAL,
    SafetyIncidentsReported INTEGER,
    FeedbackRating          INTEGER,
    Comments                TEXT,
    NextSessionPlanned      INTEGER
);
INSERT INTO driver_coaching_sessions (SessionID,DriverID,CoachID,SessionDate,DurationMinutes,TopicsCovered,ScoreBefore,ScoreAfter,ImprovementPlan,FollowUpDate,SessionMode,Location,VehicleID,MileageDuringSession,FuelEfficiencyBefore,FuelEfficiencyAfter,SafetyIncidentsReported,FeedbackRating,Comments,NextSessionPlanned) VALUES (1,8001,9001,NULL,45,NULL,70,85,NULL,NULL,NULL,NULL,2001,120,30.5,32.0,0,5,NULL,1);
INSERT INTO driver_coaching_sessions (SessionID,DriverID,CoachID,SessionDate,DurationMinutes,TopicsCovered,ScoreBefore,ScoreAfter,ImprovementPlan,FollowUpDate,SessionMode,Location,VehicleID,MileageDuringSession,FuelEfficiencyBefore,FuelEfficiencyAfter,SafetyIncidentsReported,FeedbackRating,Comments,NextSessionPlanned) VALUES (2,8002,9002,NULL,60,NULL,65,78,NULL,NULL,NULL,NULL,2002,200,28.0,29.5,1,4,NULL,0);
INSERT INTO driver_coaching_sessions (SessionID,DriverID,CoachID,SessionDate,DurationMinutes,TopicsCovered,ScoreBefore,ScoreAfter,ImprovementPlan,FollowUpDate,SessionMode,Location,VehicleID,MileageDuringSession,FuelEfficiencyBefore,FuelEfficiencyAfter,SafetyIncidentsReported,FeedbackRating,Comments,NextSessionPlanned) VALUES (3,8003,9003,NULL,30,NULL,80,90,NULL,NULL,NULL,NULL,2003,80,33.2,34.5,0,5,NULL,1);

-- Table defining customer survey questionnaires
CREATE TABLE customer_survey_questionnaire
(
    SurveyID                INTEGER PRIMARY KEY,
    SurveyName              TEXT,
    ReleaseDate             DATE,
    ExpirationDate          DATE,
    TargetSegment           TEXT,
    QuestionCount           INTEGER,
    AverageCompletionTimeMinutes REAL,
    IncentiveOffered        TEXT,
    Language                TEXT,
    IsAnonymous             INTEGER,
    MaxResponses            INTEGER,
    CurrentResponses        INTEGER,
    Status                  TEXT,
    CreatedBy               TEXT,
    LastModifiedBy          TEXT,
    LastModifiedDate        DATE,
    SurveyLink              TEXT,
    DistributionChannel     TEXT,
    DataRetentionPeriodDays INTEGER,
    Notes                   TEXT
);
INSERT INTO customer_survey_questionnaire (SurveyID,SurveyName,ReleaseDate,ExpirationDate,TargetSegment,QuestionCount,AverageCompletionTimeMinutes,IncentiveOffered,Language,IsAnonymous,MaxResponses,CurrentResponses,Status,CreatedBy,LastModifiedBy,LastModifiedDate,SurveyLink,DistributionChannel,DataRetentionPeriodDays,Notes) VALUES (1,NULL,NULL,NULL,NULL,12,5.5,NULL,NULL,1,1000,250,NULL,NULL,NULL,NULL,NULL,NULL,365,NULL);
INSERT INTO customer_survey_questionnaire (SurveyID,SurveyName,ReleaseDate,ExpirationDate,TargetSegment,QuestionCount,AverageCompletionTimeMinutes,IncentiveOffered,Language,IsAnonymous,MaxResponses,CurrentResponses,Status,CreatedBy,LastModifiedBy,LastModifiedDate,SurveyLink,DistributionChannel,DataRetentionPeriodDays,Notes) VALUES (2,NULL,NULL,NULL,NULL,20,7.0,NULL,NULL,0,2000,500,NULL,NULL,NULL,NULL,NULL,NULL,730,NULL);
INSERT INTO customer_survey_questionnaire (SurveyID,SurveyName,ReleaseDate,ExpirationDate,TargetSegment,QuestionCount,AverageCompletionTimeMinutes,IncentiveOffered,Language,IsAnonymous,MaxResponses,CurrentResponses,Status,CreatedBy,LastModifiedBy,LastModifiedDate,SurveyLink,DistributionChannel,DataRetentionPeriodDays,Notes) VALUES (3,NULL,NULL,NULL,NULL,15,6.2,NULL,NULL,1,1500,300,NULL,NULL,NULL,NULL,NULL,NULL,365,NULL);

-- Table logging environmental incident response actions
CREATE TABLE environmental_incident_response_actions
(
    IncidentID              INTEGER PRIMARY KEY,
    IncidentDate            DATE,
    ReportedBy              TEXT,
    LocationLatitude        REAL,
    LocationLongitude       REAL,
    IncidentType            TEXT,
    SeverityLevel           INTEGER,
    AffectedAreaSqM         REAL,
    ImmediateActionTaken    TEXT,
    ResponsibleTeam         TEXT,
    ActionStartDate         DATE,
    ActionEndDate           DATE,
    MitigationCost          REAL,
    RegulatoryAgencyNotified TEXT,
    FollowUpRequired        INTEGER,
    FollowUpDate            DATE,
    ResolutionStatus        TEXT,
    Notes                   TEXT,
    RootCauseAnalysis       TEXT,
    PreventiveMeasure       TEXT
);
INSERT INTO environmental_incident_response_actions (IncidentID,IncidentDate,ReportedBy,LocationLatitude,LocationLongitude,IncidentType,SeverityLevel,AffectedAreaSqM,ImmediateActionTaken,ResponsibleTeam,ActionStartDate,ActionEndDate,MitigationCost,RegulatoryAgencyNotified,FollowUpRequired,FollowUpDate,ResolutionStatus,Notes,RootCauseAnalysis,PreventiveMeasure) VALUES (1,NULL,NULL,45.0,-93.0,NULL,2,1500.0,NULL,NULL,NULL,NULL,25000.0,NULL,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO environmental_incident_response_actions (IncidentID,IncidentDate,ReportedBy,LocationLatitude,LocationLongitude,IncidentType,SeverityLevel,AffectedAreaSqM,ImmediateActionTaken,ResponsibleTeam,ActionStartDate,ActionEndDate,MitigationCost,RegulatoryAgencyNotified,FollowUpRequired,FollowUpDate,ResolutionStatus,Notes,RootCauseAnalysis,PreventiveMeasure) VALUES (2,NULL,NULL,44.5,-92.8,NULL,3,2000.0,NULL,NULL,NULL,NULL,40000.0,NULL,1,NULL,NULL,NULL,NULL,NULL);
INSERT INTO environmental_incident_response_actions (IncidentID,IncidentDate,ReportedBy,LocationLatitude,LocationLongitude,IncidentType,SeverityLevel,AffectedAreaSqM,ImmediateActionTaken,ResponsibleTeam,ActionStartDate,ActionEndDate,MitigationCost,RegulatoryAgencyNotified,FollowUpRequired,FollowUpDate,ResolutionStatus,Notes,RootCauseAnalysis,PreventiveMeasure) VALUES (3,NULL,NULL,45.2,-93.2,NULL,1,800.0,NULL,NULL,NULL,NULL,12000.0,NULL,0,NULL,NULL,NULL,NULL,NULL);

-- Table recording regional weather extremes
CREATE TABLE regional_weather_extremes
(
    RecordID                INTEGER PRIMARY KEY,
    RegionCode              TEXT,
    ExtremeType             TEXT,
    ExtremeValue            REAL,
    Units                   TEXT,
    RecordedDate            DATE,
    RecordedTime            TEXT,
    SourceAgency            TEXT,
    DurationHours           REAL,
    ImpactDescription       TEXT,
    AffectedPopulation      INTEGER,
    InfrastructureDamageCost REAL,
    TemperatureCelsius      REAL,
    WindSpeedKmh            REAL,
    PrecipitationMm         REAL,
    SnowDepthCm             REAL,
    HumidityPercent         REAL,
    PressureHpa             REAL,
    AlertLevel              TEXT,
    Notes                   TEXT
);
INSERT INTO regional_weather_extremes (RecordID,RegionCode,ExtremeType,ExtremeValue,Units,RecordedDate,RecordedTime,SourceAgency,DurationHours,ImpactDescription,AffectedPopulation,InfrastructureDamageCost,TemperatureCelsius,WindSpeedKmh,PrecipitationMm,SnowDepthCm,HumidityPercent,PressureHpa,AlertLevel,Notes) VALUES (1,NULL,NULL,45.0,NULL,NULL,NULL,NULL,6.0,NULL,5000,2000000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO regional_weather_extremes (RecordID,RegionCode,ExtremeType,ExtremeValue,Units,RecordedDate,RecordedTime,SourceAgency,DurationHours,ImpactDescription,AffectedPopulation,InfrastructureDamageCost,TemperatureCelsius,WindSpeedKmh,PrecipitationMm,SnowDepthCm,HumidityPercent,PressureHpa,AlertLevel,Notes) VALUES (2,NULL,NULL,120.0,NULL,NULL,NULL,NULL,12.0,NULL,12000,5000000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO regional_weather_extremes (RecordID,RegionCode,ExtremeType,ExtremeValue,Units,RecordedDate,RecordedTime,SourceAgency,DurationHours,ImpactDescription,AffectedPopulation,InfrastructureDamageCost,TemperatureCelsius,WindSpeedKmh,PrecipitationMm,SnowDepthCm,HumidityPercent,PressureHpa,AlertLevel,Notes) VALUES (3,NULL,NULL,30.0,NULL,NULL,NULL,NULL,3.0,NULL,2000,750000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- Table describing energy market hedging contracts
CREATE TABLE energy_market_hedging_contracts
(
    ContractID              INTEGER PRIMARY KEY,
    Counterparty            TEXT,
    ContractType            TEXT,
    EnergyVolumeMWh         REAL,
    PricePerMWh             REAL,
    Currency                TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    MarginPercentage        REAL,
    CollateralAmount        REAL,
    CreditRating            TEXT,
    SettlementMethod        TEXT,
    UnderlyingIndex         TEXT,
    OptionType              TEXT,
    StrikePrice             REAL,
    PremiumPaid             REAL,
    ExpirationDate          DATE,
    Status                  TEXT,
    Notes                   TEXT,
    CreatedBy               TEXT
);
INSERT INTO energy_market_hedging_contracts (ContractID,Counterparty,ContractType,EnergyVolumeMWh,PricePerMWh,Currency,StartDate,EndDate,MarginPercentage,CollateralAmount,CreditRating,SettlementMethod,UnderlyingIndex,OptionType,StrikePrice,PremiumPaid,ExpirationDate,Status,Notes,CreatedBy) VALUES (1,NULL,NULL,5000,45.5,NULL,NULL,NULL,10.0,100000,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL);
INSERT INTO energy_market_hedging_contracts (ContractID,Counterparty,ContractType,EnergyVolumeMWh,PricePerMWh,Currency,StartDate,EndDate,MarginPercentage,CollateralAmount,CreditRating,SettlementMethod,UnderlyingIndex,OptionType,StrikePrice,PremiumPaid,ExpirationDate,Status,Notes,CreatedBy) VALUES (2,NULL,NULL,7500,48.0,NULL,NULL,NULL,12.5,150000,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL);
INSERT INTO energy_market_hedging_contracts (ContractID,Counterparty,ContractType,EnergyVolumeMWh,PricePerMWh,Currency,StartDate,EndDate,MarginPercentage,CollateralAmount,CreditRating,SettlementMethod,UnderlyingIndex,OptionType,StrikePrice,PremiumPaid,ExpirationDate,Status,Notes,CreatedBy) VALUES (3,NULL,NULL,3000,42.0,NULL,NULL,NULL,8.0,80000,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL);

-- Table tracking smart parking zone occupancy
CREATE TABLE smart_parking_zone_occupancy
(
    ZoneID                  INTEGER PRIMARY KEY,
    ZoneName                TEXT,
    City                    TEXT,
    Capacity                INTEGER,
    CurrentOccupancy        INTEGER,
    OccupancyRate           REAL,
    PeakHourStart           TEXT,
    PeakHourEnd             TEXT,
    AverageStayMinutes      REAL,
    LastUpdated             TIMESTAMP,
    SensorCount             INTEGER,
    SensorVendor            TEXT,
    MaintenanceStatus       TEXT,
    LastMaintenanceDate     DATE,
    PowerSupplyType         TEXT,
    ConnectivityType        TEXT,
    AverageTurnoverRate     REAL,
    RevenuePerHour          REAL,
    GISCoordinates          TEXT,
    Notes                   TEXT
);
INSERT INTO smart_parking_zone_occupancy (ZoneID,ZoneName,City,Capacity,CurrentOccupancy,OccupancyRate,PeakHourStart,PeakHourEnd,AverageStayMinutes,LastUpdated,SensorCount,SensorVendor,MaintenanceStatus,LastMaintenanceDate,PowerSupplyType,ConnectivityType,AverageTurnoverRate,RevenuePerHour,GISCoordinates,Notes) VALUES (1,NULL,NULL,120,85,0.708,NULL,NULL,15.5,NULL,10,NULL,NULL,NULL,NULL,NULL,0.6,2.5,NULL,NULL);
INSERT INTO smart_parking_zone_occupancy (ZoneID,ZoneName,City,Capacity,CurrentOccupancy,OccupancyRate,PeakHourStart,PeakHourEnd,AverageStayMinutes,LastUpdated,SensorCount,SensorVendor,MaintenanceStatus,LastMaintenanceDate,PowerSupplyType,ConnectivityType,AverageTurnoverRate,RevenuePerHour,GISCoordinates,Notes) VALUES (2,NULL,NULL,200,150,0.75,NULL,NULL,12.0,NULL,15,NULL,NULL,NULL,NULL,NULL,0.65,3.0,NULL,NULL);
INSERT INTO smart_parking_zone_occupancy (ZoneID,ZoneName,City,Capacity,CurrentOccupancy,OccupancyRate,PeakHourStart,PeakHourEnd,AverageStayMinutes,LastUpdated,SensorCount,SensorVendor,MaintenanceStatus,LastMaintenanceDate,PowerSupplyType,ConnectivityType,AverageTurnoverRate,RevenuePerHour,GISCoordinates,Notes) VALUES (3,NULL,NULL,80,60,0.75,NULL,NULL,18.0,NULL,8,NULL,NULL,NULL,NULL,NULL,0.55,1.8,NULL,NULL);

-- Table recording public transport accessibility audits
CREATE TABLE public_transport_accessibility_audits
(
    AuditID                 INTEGER PRIMARY KEY,
    TransitAgency          TEXT,
    AuditDate              DATE,
    RouteID                INTEGER,
    VehicleID              INTEGER,
    AccessibilityFeature   TEXT,
    ComplianceScore        INTEGER,
    Comments               TEXT,
    AuditorName            TEXT,
    AuditStatus            TEXT,
    FollowUpActions        TEXT,
    FollowUpDueDate        DATE,
    PenaltyAmount          REAL,
    RegulationReference    TEXT,
    PassengerFeedbackScore INTEGER,
    AverageBoardingTimeSeconds REAL,
    IncidentCount          INTEGER,
    ResolutionStatus       TEXT,
    Notes                  TEXT,
    CreatedTimestamp       TIMESTAMP
);
INSERT INTO public_transport_accessibility_audits (AuditID,TransitAgency,AuditDate,RouteID,VehicleID,AccessibilityFeature,ComplianceScore,Comments,AuditorName,AuditStatus,FollowUpActions,FollowUpDueDate,PenaltyAmount,RegulationReference,PassengerFeedbackScore,AverageBoardingTimeSeconds,IncidentCount,ResolutionStatus,Notes,CreatedTimestamp) VALUES (1,NULL,NULL,101,5001,NULL,85,NULL,NULL,NULL,NULL,NULL,0,NULL,90,45.0,0,NULL,NULL,NULL);
INSERT INTO public_transport_accessibility_audits (AuditID,TransitAgency,AuditDate,RouteID,VehicleID,AccessibilityFeature,ComplianceScore,Comments,AuditorName,AuditStatus,FollowUpActions,FollowUpDueDate,PenaltyAmount,RegulationReference,PassengerFeedbackScore,AverageBoardingTimeSeconds,IncidentCount,ResolutionStatus,Notes,CreatedTimestamp) VALUES (2,NULL,NULL,102,5002,NULL,78,NULL,NULL,NULL,NULL,NULL,200.0,NULL,80,50.5,2,NULL,NULL,NULL);
INSERT INTO public_transport_accessibility_audits (AuditID,TransitAgency,AuditDate,RouteID,VehicleID,AccessibilityFeature,ComplianceScore,Comments,AuditorName,AuditStatus,FollowUpActions,FollowUpDueDate,PenaltyAmount,RegulationReference,PassengerFeedbackScore,AverageBoardingTimeSeconds,IncidentCount,ResolutionStatus,Notes,CreatedTimestamp) VALUES (3,NULL,NULL,103,5003,NULL,92,NULL,NULL,NULL,NULL,NULL,0,NULL,95,40.2,0,NULL,NULL,NULL);