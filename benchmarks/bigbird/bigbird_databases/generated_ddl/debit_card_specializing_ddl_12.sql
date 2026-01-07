-- Table: fuel_station_maintenance_logs
CREATE TABLE fuel_station_maintenance_logs (
    LogID INTEGER PRIMARY KEY,
    StationID INTEGER,
    MaintenanceDate DATE,
    TechnicianID INTEGER,
    MaintenanceType TEXT,
    DurationHours REAL,
    Cost REAL,
    PartsUsed TEXT,
    PartCostTotal REAL,
    Comments TEXT,
    NextDueDate DATE,
    OdometerReading INTEGER,
    PressureCheck INTEGER,
    LeakDetected INTEGER,
    FilterChanged INTEGER,
    BatteryVoltage REAL,
    RefrigerantLevel REAL,
    SafetyInspectionScore INTEGER,
    RegulatoryCompliance INTEGER,
    UpdatedBy TEXT
);

INSERT INTO fuel_station_maintenance_logs (LogID,StationID,MaintenanceDate,TechnicianID,MaintenanceType,DurationHours,Cost,PartsUsed,PartCostTotal,Comments,NextDueDate,OdometerReading,PressureCheck,LeakDetected,FilterChanged,BatteryVoltage,RefrigerantLevel,SafetyInspectionScore,RegulatoryCompliance,UpdatedBy) VALUES
(1,101,'2024-01-15',2001,'PumpInspection',2.5,150.00,'Seal,Valve',45.00,'All good','2024-07-15',120000,1,0,1,12.6,5.2,95,1,'system_admin'),
(2,102,'2024-02-10',2002,'FilterReplacement',1.0,80.00,'Filter',30.00,'Replaced filter','2024-08-10',95000,1,0,1,12.4,5.1,92,1,'maintenance_lead'),
(3,103,'2024-03-05',2003,'SafetyAudit',3.0,200.00,'Checklist',0.00,'No issues','2024-09-05',150000,1,0,0,12.8,5.3,98,1,'audit_manager');

-- Table: vehicle_sales_records
CREATE TABLE vehicle_sales_records (
    SaleID INTEGER PRIMARY KEY,
    VIN TEXT,
    Model TEXT,
    Year INTEGER,
    SaleDate DATE,
    CustomerID INTEGER,
    SalePrice REAL,
    Discount REAL,
    SalespersonID INTEGER,
    FinancingFlag INTEGER,
    FinanceProvider TEXT,
    FinanceRate REAL,
    LeaseTermMonths INTEGER,
    TradeInValue REAL,
    MileageAtSale INTEGER,
    Color TEXT,
    BodyStyle TEXT,
    EngineType TEXT,
    Transmission TEXT,
    EmissionsRating TEXT,
    WarrantyPeriodMonths INTEGER
);

INSERT INTO vehicle_sales_records (SaleID,VIN,Model,Year,SaleDate,CustomerID,SalePrice,Discount,SalespersonID,FinancingFlag,FinanceProvider,FinanceRate,LeaseTermMonths,TradeInValue,MileageAtSale,Color,BodyStyle,EngineType,Transmission,EmissionsRating,WarrantyPeriodMonths) VALUES
(1001,'1HGCM82633A004352','SedanX',2022,'2024-01-20',301,25000.00,1500.00,401,1,'BankOne',3.5,36,5000.00,0,'Blue','Sedan','Hybrid','Automatic','Euro5',48),
(1002,'2FTRX18W1XCA12345','TruckY',2021,'2024-02-12',302,35000.00,2000.00,402,0,'',0.0,0,0.00,5000,'Red','Pickup','Diesel','Manual','Euro6',60),
(1003,'3C6UR5CL9KG123456','SUVZ',2023,'2024-03-08',303,42000.00,2500.00,403,1,'CreditUnion',2.9,48,3000.00,1000,'Black','SUV','Electric','Automatic','ZeroEmissions',36);

-- Table: customer_engagement_channels
CREATE TABLE customer_engagement_channels (
    EngagementID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    ChannelType TEXT,
    StartDate DATE,
    EndDate DATE,
    FrequencyPerMonth INTEGER,
    AvgResponseTimeSec REAL,
    OptInFlag INTEGER,
    PreferredLanguage TEXT,
    PreferredContactTime TEXT,
    SubscriptionLevel TEXT,
    LastInteractionDate DATE,
    InteractionCount INTEGER,
    SatisfactionScore INTEGER,
    NPSScore INTEGER,
    CampaignID INTEGER,
    PromoCodeUsed TEXT,
    ClickThroughRate REAL,
    ConversionFlag INTEGER,
    Notes TEXT
);

INSERT INTO customer_engagement_channels (EngagementID,CustomerID,ChannelType,StartDate,EndDate,FrequencyPerMonth,AvgResponseTimeSec,OptInFlag,PreferredLanguage,PreferredContactTime,SubscriptionLevel,LastInteractionDate,InteractionCount,SatisfactionScore,NPSScore,CampaignID,PromoCodeUsed,ClickThroughRate,ConversionFlag,Notes) VALUES
(5001,301,'Email','2023-01-01','2025-12-31',4,12.5,1,'English','Morning','Gold','2024-03-10',25,9,70,2001,'WELCOME10',0.15,1,'Positive response'),
(5002,302,'SMS','2023-06-15','2024-06-14',6,8.2,1,'Spanish','Afternoon','Silver','2024-03-08',40,8,65,2002,'SPRING20',0.22,0,'No conversion yet'),
(5003,303,'Push','2024-01-01','2024-12-31',3,5.0,0,'French','Evening','Bronze','2024-03-09',15,7,50,2003,'',0.10,0,'Opted out recently');

-- Table: regional_fuel_demand_forecast
CREATE TABLE regional_fuel_demand_forecast (
    ForecastID INTEGER PRIMARY KEY,
    RegionID INTEGER,
    FuelType TEXT,
    ForecastMonth INTEGER,
    ForecastYear INTEGER,
    ProjectedVolumeLiters REAL,
    GrowthRatePercent REAL,
    ConfidenceScore REAL,
    EconomicIndex REAL,
    PopulationEstimate INTEGER,
    AvgPrice REAL,
    SeasonalAdjustment REAL,
    HistoricalAvg REAL,
    ModelVersion TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    DataSource TEXT,
    Remarks TEXT
);

INSERT INTO regional_fuel_demand_forecast (ForecastID,RegionID,FuelType,ForecastMonth,ForecastYear,ProjectedVolumeLiters,GrowthRatePercent,ConfidenceScore,EconomicIndex,PopulationEstimate,AvgPrice,SeasonalAdjustment,HistoricalAvg,ModelVersion,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,DataSource,Remarks) VALUES
(9001,10,'Diesel',4,2024,1250000.0,2.5,0.92,110.5,500000,1.25,1.03,1200000.0,'v1.2','analyst1','2024-03-01','analyst2','2024-03-05','internal','Adjusted for holiday season'),
(9002,11,'Petrol',4,2024,980000.0,1.8,0.88,102.3,420000,1.20,0.97,950000.0,'v1.2','analyst3','2024-03-01','analyst4','2024-03-05','external','Data from ministry'),
(9003,12,'LPG',4,2024,300000.0,3.0,0.90,115.0,200000,0.90,1.05,290000.0,'v1.2','analyst5','2024-03-01','analyst6','2024-03-05','internal','Projected increase in fleet conversion');

-- Table: environmental_compliance_checklist
CREATE TABLE environmental_compliance_checklist (
    ChecklistID INTEGER PRIMARY KEY,
    StationID INTEGER,
    InspectionDate DATE,
    InspectorID INTEGER,
    ChecklistVersion TEXT,
    AirQualityPass INTEGER,
    WaterRunoffPass INTEGER,
    SoilContaminationPass INTEGER,
    NoiseLevelPass INTEGER,
    WasteDisposalPass INTEGER,
    HazardousMaterialPass INTEGER,
    EmergencyExitPass INTEGER,
    FireSuppressionPass INTEGER,
    SignagePass INTEGER,
    DocumentationPass INTEGER,
    CorrectiveActionsCount INTEGER,
    FollowUpDate DATE,
    OverallScore INTEGER,
    ComplianceStatus TEXT,
    Comments TEXT
);

INSERT INTO environmental_compliance_checklist (ChecklistID,StationID,InspectionDate,InspectorID,ChecklistVersion,AirQualityPass,WaterRunoffPass,SoilContaminationPass,NoiseLevelPass,WasteDisposalPass,HazardousMaterialPass,EmergencyExitPass,FireSuppressionPass,SignagePass,DocumentationPass,CorrectiveActionsCount,FollowUpDate,OverallScore,ComplianceStatus,Comments) VALUES
(7001,101,'2024-02-20',301,'v3','1','1','1','1','1','1','1','1','1','1',0,'2024-03-20',98,'Compliant','All criteria met'),
(7002,102,'2024-02-22',302,'v3','1','0','1','1','1','1','1','1','1','1',1,'2024-04-01',92,'Conditional','Water runoff insufficient, remedial action scheduled'),
(7003,103,'2024-02-25',303,'v3','1','1','1','1','1','1','1','0','1','1',2,'2024-04-15',89,'NonCompliant','Fire suppression system failed, immediate repair required');

-- Table: station_energy_usage
CREATE TABLE station_energy_usage (
    UsageID INTEGER PRIMARY KEY,
    StationID INTEGER,
    RecordDate DATE,
    ElectricityKWh REAL,
    NaturalGasTherms REAL,
    DieselLiters REAL,
    SolarGenerationKWh REAL,
    PeakDemandKW REAL,
    LoadFactor REAL,
    CO2EmissionsKg REAL,
    EnergyCostUSD REAL,
    RenewablePercentage REAL,
    TimeOfUseCategory TEXT,
    MeterReadingStart REAL,
    MeterReadingEnd REAL,
    BillingPeriodStart DATE,
    BillingPeriodEnd DATE,
    ProviderID INTEGER,
    ContractRateUSDperKWh REAL,
    AdjustmentsUSD REAL,
    Notes TEXT
);

INSERT INTO station_energy_usage (UsageID,StationID,RecordDate,ElectricityKWh,NaturalGasTherms,DieselLiters,SolarGenerationKWh,PeakDemandKW,LoadFactor,CO2EmissionsKg,EnergyCostUSD,RenewablePercentage,TimeOfUseCategory,MeterReadingStart,MeterReadingEnd,BillingPeriodStart,BillingPeriodEnd,ProviderID,ContractRateUSDperKWh,AdjustmentsUSD,Notes) VALUES
(4001,101,'2024-03-01',3500.0,120.0,500.0,200.0,85.0,0.65,4200.0,450.00,5.7,'Peak',123456.78,124956.78,'2024-02-01','2024-02-28',501,0.12,5.00,'Normal month'),
(4002,102,'2024-03-01',2800.0,90.0,300.0,150.0,70.0,0.60,3400.0,360.00,6.2,'OffPeak',223456.78,225256.78,'2024-02-01','2024-02-28',502,0.11,3.50,'Reduced consumption due to maintenance'),
(4003,103,'2024-03-01',4100.0,150.0,600.0,250.0,95.0,0.68,5000.0,530.00,5.9,'MidPeak',323456.78,327556.78,'2024-02-01','2024-02-28',503,0.13,4.75,'Higher diesel usage');

-- Table: mobile_app_notifications
CREATE TABLE mobile_app_notifications (
    NotificationID INTEGER PRIMARY KEY,
    AppVersion TEXT,
    DeviceID TEXT,
    UserID INTEGER,
    SentTimestamp DATETIME,
    NotificationType TEXT,
    Title TEXT,
    MessageBody TEXT,
    PriorityLevel INTEGER,
    IsReadFlag INTEGER,
    ReadTimestamp DATETIME,
    ActionTaken TEXT,
    CampaignID INTEGER,
    TargetSegment TEXT,
    GeoRegion TEXT,
    Language TEXT,
    TTLSeconds INTEGER,
    DeliveryStatus TEXT,
    FailureReason TEXT,
    CreativeAssetID INTEGER
);

INSERT INTO mobile_app_notifications (NotificationID,AppVersion,DeviceID,UserID,SentTimestamp,NotificationType,Title,MessageBody,PriorityLevel,IsReadFlag,ReadTimestamp,ActionTaken,CampaignID,TargetSegment,GeoRegion,Language,TTLSeconds,DeliveryStatus,FailureReason,CreativeAssetID) VALUES
(8001,'2.5.1','DEV12345',301,'2024-03-09 08:15:00','Promo','Fuel Discount','Save 10% on next fill up',1,0,NULL,NULL,2001,'HighSpender','NorthRegion','en',86400,'Sent','',401),
(8002,'2.5.1','DEV67890',302,'2024-03-09 09:30:00','Alert','Payment Due','Your card will expire soon',2,1,'2024-03-09 10:00:00','UpdatedCard',2002,'All','SouthRegion','es',43200,'Delivered','',402),
(8003,'2.5.1','DEV24680',303,'2024-03-09 11:45:00','Info','App Update','New features added in version 2.5.2',3,0,NULL,NULL,2003,'BetaTesters','EastRegion','fr',172800,'Failed','NetworkError',403);

-- Table: supplier_invoice_history
CREATE TABLE supplier_invoice_history (
    InvoiceID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    InvoiceDate DATE,
    DueDate DATE,
    Currency TEXT,
    Amount REAL,
    TaxAmount REAL,
    DiscountAmount REAL,
    PaidAmount REAL,
    PaymentDate DATE,
    PaymentMethod TEXT,
    InvoiceStatus TEXT,
    PurchaseOrderID INTEGER,
    ReceivedDate DATE,
    LineItemCount INTEGER,
    ApprovalUserID INTEGER,
    ApprovalDate DATE,
    LateFees REAL,
    ExchangeRate REAL,
    Comments TEXT
);

INSERT INTO supplier_invoice_history (InvoiceID,SupplierID,InvoiceDate,DueDate,Currency,Amount,TaxAmount,DiscountAmount,PaidAmount,PaymentDate,PaymentMethod,InvoiceStatus,PurchaseOrderID,ReceivedDate,LineItemCount,ApprovalUserID,ApprovalDate,LateFees,ExchangeRate,Comments) VALUES
(6001,301,'2024-02-10','2024-03-10','USD',15000.00,1200.00,500.00,15000.00,'2024-02-28','BankTransfer','Paid',7001,'2024-02-12',12,401,'2024-02-15',0.00,1.00,'On time payment'),
(6002,302,'2024-02-15','2024-03-15','EUR',20000.00,1600.00,800.00,20000.00,'2024-03-10','CreditCard','Paid',7002,'2024-02-20',15,402,'2024-02-22',0.00,1.10,'Converted to USD at rate 1.10'),
(6003,303,'2024-02-20','2024-03-20','USD',18000.00,1440.00,600.00,0.00,NULL,'','Pending',7003,'2024-02-25',10,403,'2024-02-28',150.00,1.00,'Pending approval, late fee applied');

-- Table: traffic_flow_analysis
CREATE TABLE traffic_flow_analysis (
    AnalysisID INTEGER PRIMARY KEY,
    RoadSegmentID INTEGER,
    ObservationDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    VehicleCount INTEGER,
    AvgSpeedKmh REAL,
    PeakHourVehicleCount INTEGER,
    HeavyVehiclePercentage REAL,
    IncidentCount INTEGER,
    WeatherCondition TEXT,
    VisibilityMeters INTEGER,
    RoadSurfaceCondition TEXT,
    DataSource TEXT,
    ModelUsed TEXT,
    CongestionLevel TEXT,
    TravelTimeMinutes REAL,
    EmissionEstimateKg REAL,
    AlertsGenerated INTEGER,
    AnalystID INTEGER
);

INSERT INTO traffic_flow_analysis (AnalysisID,RoadSegmentID,ObservationDate,StartTime,EndTime,VehicleCount,AvgSpeedKmh,PeakHourVehicleCount,HeavyVehiclePercentage,IncidentCount,WeatherCondition,VisibilityMeters,RoadSurfaceCondition,DataSource,ModelUsed,CongestionLevel,TravelTimeMinutes,EmissionEstimateKg,AlertsGenerated,AnalystID) VALUES
(3001,501,'2024-03-01','07:00','09:00',2500,45.2,1200,12.5,0,'Clear',10000,'Dry','SensorArray','LinearRegression','Medium',15.0,500.0,2,601),
(3002,502,'2024-03-01','17:00','19:00',3200,38.7,1500,15.0,1,'Rain',8000,'Wet','CameraFeed','NeuralNet','High',22.5,720.0,5,602),
(3003,503,'2024-03-01','12:00','14:00',1800,55.0,800,8.0,0,'Clear',12000,'Dry','SensorArray','TimeSeries','Low',10.0,300.0,0,603);

-- Table: road_infrastructure_assets
CREATE TABLE road_infrastructure_assets (
    AssetID INTEGER PRIMARY KEY,
    AssetType TEXT,
    AssetName TEXT,
    InstallationDate DATE,
    LocationLatitude REAL,
    LocationLongitude REAL,
    MaintenanceIntervalMonths INTEGER,
    LastMaintenanceDate DATE,
    ConditionScore INTEGER,
    OwnerDepartment TEXT,
    AssetValueUSD REAL,
    DepreciationRate REAL,
    WarrantyEndDate DATE,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    PowerRequirementKW REAL,
    ConnectivityFlag INTEGER,
    GISLayer TEXT,
    Notes TEXT
);

INSERT INTO road_infrastructure_assets (AssetID,AssetType,AssetName,InstallationDate,LocationLatitude,LocationLongitude,MaintenanceIntervalMonths,LastMaintenanceDate,ConditionScore,OwnerDepartment,AssetValueUSD,DepreciationRate,WarrantyEndDate,Manufacturer,ModelNumber,SerialNumber,PowerRequirementKW,ConnectivityFlag,GISLayer,Notes) VALUES
(90001,'TrafficSignal','SignalA','2020-05-10',40.7128,-74.0060,12,'2024-01-15',85,'Transport','15000',0.08,'2025-05-10','SignalTech','ST100','SN12345',0.5,1,'RoadNetwork','Regular check performed'),
(90002,'Camera','CamB','2019-11-20',34.0522,-118.2437,6,'2024-02-10',92,'Security','8000',0.10,'2024-11-20','CamCo','CM200','SN67890',0.2,1,'Surveillance','No issues detected'),
(90003,'ElectricChargingStation','EVStationC','2021-03-15',51.5074,-0.1278,24,'2023-12-01',78,'Energy','25000',0.07,'2026-03-15','ChargeInc','EV300','SN24680',5.0,1,'ChargingNetwork','Battery health monitoring required');