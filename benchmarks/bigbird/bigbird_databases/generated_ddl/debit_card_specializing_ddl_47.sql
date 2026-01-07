-- Regional Economic Indicators
CREATE TABLE regional_economic_indicators (
    IndicatorID INTEGER PRIMARY KEY,
    RegionCode TEXT,
    Year INTEGER,
    Quarter INTEGER,
    GDP REAL,
    UnemploymentRate REAL,
    InflationRate REAL,
    ConsumerConfidence REAL,
    RetailSales REAL,
    ManufacturingIndex REAL,
    ConstructionSpending REAL,
    ExportValue REAL,
    ImportValue REAL,
    Population REAL,
    MedianIncome REAL,
    PovertyRate REAL,
    BusinessStarts INTEGER,
    BusinessClosures INTEGER,
    TaxRevenue REAL,
    GovtSpending REAL,
    TradeBalance REAL
);
INSERT INTO regional_economic_indicators (IndicatorID,RegionCode,Year,Quarter,GDP,UnemploymentRate,InflationRate,ConsumerConfidence,RetailSales,ManufacturingIndex,ConstructionSpending,ExportValue,ImportValue,Population,MedianIncome,PovertyRate,BusinessStarts,BusinessClosures,TaxRevenue,GovtSpending,TradeBalance) VALUES (1,'US_NY',2022,1,1800.5,5.2,2.1,95.0,250.3,110.5,75.0,340.2,310.1,19500000,62000,12.5,3400,150,850.0,400.0,30.1);
INSERT INTO regional_economic_indicators (IndicatorID,RegionCode,Year,Quarter,GDP,UnemploymentRate,InflationRate,ConsumerConfidence,RetailSales,ManufacturingIndex,ConstructionSpending,ExportValue,ImportValue,Population,MedianIncome,PovertyRate,BusinessStarts,BusinessClosures,TaxRevenue,GovtSpending,TradeBalance) VALUES (2,'EU_DE',2022,2,4200.0,3.9,1.8,92.5,480.0,210.0,120.5,560.0,520.0,83000000,54000,10.2,7200,200,1500.0,620.0,40.0);
INSERT INTO regional_economic_indicators (IndicatorID,RegionCode,Year,Quarter,GDP,UnemploymentRate,InflationRate,ConsumerConfidence,RetailSales,ManufacturingIndex,ConstructionSpending,ExportValue,ImportValue,Population,MedianIncome,PovertyRate,BusinessStarts,BusinessClosures,TaxRevenue,GovtSpending,TradeBalance) VALUES (3,'AP_JP',2022,3,5300.3,2.8,0.5,98.0,670.2,300.1,200.0,780.0,730.0,125000000,43000,9.0,15000,100,2100.0,950.0,70.0);

-- Fuel Type Composition
CREATE TABLE fuel_type_composition (
    FuelTypeID INTEGER PRIMARY KEY,
    FuelCode TEXT,
    Description TEXT,
    OctaneRating INTEGER,
    CetaneNumber INTEGER,
    SulfurContent REAL,
    AromaticContent REAL,
    BioBlendPercentage REAL,
    RenewablePercentage REAL,
    EnergyDensity REAL,
    CarbonIntensity REAL,
    VaporPressure REAL,
    FlashPoint REAL,
    StorageTemperature REAL,
    ProductionRegion TEXT,
    SupplierID INTEGER,
    CertificationStatus TEXT,
    LastTestDate TEXT,
    EmissionFactor REAL,
    Density REAL,
    Viscosity REAL
);
INSERT INTO fuel_type_composition (FuelTypeID,FuelCode,Description,OctaneRating,CetaneNumber,SulfurContent,AromaticContent,BioBlendPercentage,RenewablePercentage,EnergyDensity,CarbonIntensity,VaporPressure,FlashPoint,StorageTemperature,ProductionRegion,SupplierID,CertificationStatus,LastTestDate,EmissionFactor,Density,Viscosity) VALUES (1,'E92','Regular Gasoline',92,0,0.01,15.0,5.0,0.0,32.5,68.0,7.5,230,15,'US Midwest',101,'Certified','2022-11-15',2.5,0.74,0.6);
INSERT INTO fuel_type_composition (FuelTypeID,FuelCode,Description,OctaneRating,CetaneNumber,SulfurContent,AromaticContent,BioBlendPercentage,RenewablePercentage,EnergyDensity,CarbonIntensity,VaporPressure,FlashPoint,StorageTemperature,ProductionRegion,SupplierID,CertificationStatus,LastTestDate,EmissionFactor,Density,Viscosity) VALUES (2,'D2','Diesel',0,45,0.02,12.0,0.0,0.0,35.8,75.0,5.0,55,20,'EU West',202,'Pending','2022-12-01',2.9,0.85,2.1);
INSERT INTO fuel_type_composition (FuelTypeID,FuelCode,Description,OctaneRating,CetaneNumber,SulfurContent,AromaticContent,BioBlendPercentage,RenewablePercentage,EnergyDensity,CarbonIntensity,VaporPressure,FlashPoint,StorageTemperature,ProductionRegion,SupplierID,CertificationStatus,LastTestDate,EmissionFactor,Density,Viscosity) VALUES (3,'E95B','BioBlend Gasoline',95,0,0.005,13.0,10.0,5.0,33.0,66.0,6.8,225,18,'EU North',303,'Certified','2023-01-10',2.4,0.73,0.5);

-- Road Network Statistics
CREATE TABLE road_network_statistics (
    RoadSegmentID INTEGER PRIMARY KEY,
    Country TEXT,
    State TEXT,
    City TEXT,
    RoadType TEXT,
    LengthKM REAL,
    Lanes INTEGER,
    AvgDailyTraffic REAL,
    SpeedLimit INTEGER,
    PavementCondition TEXT,
    LastMaintenanceDate TEXT,
    AccidentCount INTEGER,
    HeavyVehiclePercentage REAL,
    RoadWidthM REAL,
    SurfaceType TEXT,
    YearConstructed INTEGER,
    MaintenanceCost REAL,
    TrafficSignalCount INTEGER,
    BridgeCount INTEGER,
    TunnelCount INTEGER,
    NearbyPopulation REAL
);
INSERT INTO road_network_statistics (RoadSegmentID,Country,State,City,RoadType,LengthKM,Lanes,AvgDailyTraffic,SpeedLimit,PavementCondition,LastMaintenanceDate,AccidentCount,HeavyVehiclePercentage,RoadWidthM,SurfaceType,YearConstructed,MaintenanceCost,TrafficSignalCount,BridgeCount,TunnelCount,NearbyPopulation) VALUES (101,'US','CA','LosAngeles','Highway',12.5,4,75000,110,'Good','2022-09-01',45,22.5,3.5,'Asphalt',1995,850000,20,2,0,1800000);
INSERT INTO road_network_statistics (RoadSegmentID,Country,State,City,RoadType,LengthKM,Lanes,AvgDailyTraffic,SpeedLimit,PavementCondition,LastMaintenanceDate,AccidentCount,HeavyVehiclePercentage,RoadWidthM,SurfaceType,YearConstructed,MaintenanceCost,TrafficSignalCount,BridgeCount,TunnelCount,NearbyPopulation) VALUES (102,'DE','BW','Stuttgart','Urban',5.8,2,42000,50,'Fair','2021-05-15',12,15.0,2.5,'Concrete',1980,300000,15,1,0,900000);
INSERT INTO road_network_statistics (RoadSegmentID,Country,State,City,RoadType,LengthKM,Lanes,AvgDailyTraffic,SpeedLimit,PavementCondition,LastMaintenanceDate,AccidentCount,HeavyVehiclePercentage,RoadWidthM,SurfaceType,YearConstructed,MaintenanceCost,TrafficSignalCount,BridgeCount,TunnelCount,NearbyPopulation) VALUES (103,'JP','Tokyo','Tokyo','Expressway',8.3,6,120000,120,'Excellent','2023-02-20',8,30.0,4.0,'Asphalt',2005,1200000,25,3,1,1300000);

-- Energy Market Indices
CREATE TABLE energy_market_indices (
    IndexID INTEGER PRIMARY KEY,
    IndexName TEXT,
    Date TEXT,
    Region TEXT,
    SpotPrice REAL,
    FuturesPrice12M REAL,
    FuturesPrice24M REAL,
    Volatility REAL,
    VolumeTraded REAL,
    OpenInterest REAL,
    MarketSentiment TEXT,
    RegulatoryFlag TEXT,
    Currency TEXT,
    AdjustedClose REAL,
    High REAL,
    Low REAL,
    PreviousClose REAL,
    ChangePercent REAL,
    BenchmarkReference TEXT,
    DataSource TEXT,
    Comments TEXT
);
INSERT INTO energy_market_indices (IndexID,IndexName,Date,Region,SpotPrice,FuturesPrice12M,FuturesPrice24M,Volatility,VolumeTraded,OpenInterest,MarketSentiment,RegulatoryFlag,Currency,AdjustedClose,High,Low,PreviousClose,ChangePercent,BenchmarkReference,DataSource,Comments) VALUES (1,'EUTaxOil','2023-01-15','EU','85.4','87.0','89.5','0.12','15000','3000','Bull','None','EUR','85.3','86.5','84.2','84.9','0.5','EU_Oil_Benchmark','Bloomberg','Monthly snapshot');
INSERT INTO energy_market_indices (IndexID,IndexName,Date,Region,SpotPrice,FuturesPrice12M,FuturesPrice24M,Volatility,VolumeTraded,OpenInterest,MarketSentiment,RegulatoryFlag,Currency,AdjustedClose,High,Low,PreviousClose,ChangePercent,BenchmarkReference,DataSource,Comments) VALUES (2,'NorthAmericaGas','2023-01-15','NA','2.85','2.90','3.00','0.08','20000','4000','Neutral','None','USD','2.84','2.95','2.80','2.82','0.7','NA_Gas_Benchmark','Reuters','Daily record');
INSERT INTO energy_market_indices (IndexID,IndexName,Date,Region,SpotPrice,FuturesPrice12M,FuturesPrice24M,Volatility,VolumeTraded,OpenInterest,MarketSentiment,RegulatoryFlag,Currency,AdjustedClose,High,Low,PreviousClose,ChangePercent,BenchmarkReference,DataSource,Comments) VALUES (3,'AsiaCoal','2023-01-15','AP','120.0','123.5','128.0','0.15','18000','3500','Bear','EmissionsCap','CNY','119.8','121.0','118.5','119.0','0.7','AP_Coal_Benchmark','S&P','Quarterly data');

-- Vehicle Emissions Standards
CREATE TABLE vehicle_emissions_standards (
    StandardID INTEGER PRIMARY KEY,
    Region TEXT,
    Year INTEGER,
    VehicleClass TEXT,
    CO2Limit REAL,
    NOxLimit REAL,
    PM25Limit REAL,
    HCLimit REAL,
    FuelType TEXT,
    TestProcedure TEXT,
    EnforcementAgency TEXT,
    PenaltyAmount REAL,
    EffectiveDate TEXT,
    ReviewDate TEXT,
    ComplianceRate REAL,
    Exemptions TEXT,
    Notes TEXT,
    ReferenceDocument TEXT,
    AmendmentVersion INTEGER,
    UpdateFrequency TEXT,
    Status TEXT
);
INSERT INTO vehicle_emissions_standards (StandardID,Region,Year,VehicleClass,CO2Limit,NOxLimit,PM25Limit,HCLimit,FuelType,TestProcedure,EnforcementAgency,PenaltyAmount,EffectiveDate,ReviewDate,ComplianceRate,Exemptions,Notes,ReferenceDocument,AmendmentVersion,UpdateFrequency,Status) VALUES (1,'EU',2022,'Passenger',95.0,0.08,0.005,0.01,'Petrol','WLTP','ECA','5000','2022-01-01','2025-01-01',92.5,'None','Phase3','EU_Reg_2022.pdf',3,'Annual','Active');
INSERT INTO vehicle_emissions_standards (StandardID,Region,Year,VehicleClass,CO2Limit,NOxLimit,PM25Limit,HCLimit,FuelType,TestProcedure,EnforcementAgency,PenaltyAmount,EffectiveDate,ReviewDate,ComplianceRate,Exemptions,Notes,ReferenceDocument,AmendmentVersion,UpdateFrequency,Status) VALUES (2,'US',2021,'LightTruck',120.0,0.07,0.006,0.015,'Diesel','EPA Test','EPA','7500','2021-07-01','2024-07-01',88.0,'HybridOnly','Tier2','US_Std_2021.docx',2,'Biennial','Active');
INSERT INTO vehicle_emissions_standards (StandardID,Region,Year,VehicleClass,CO2Limit,NOxLimit,PM25Limit,HCLimit,FuelType,TestProcedure,EnforcementAgency,PenaltyAmount,EffectiveDate,ReviewDate,ComplianceRate,Exemptions,Notes,ReferenceDocument,AmendmentVersion,UpdateFrequency,Status) VALUES (3,'JP',2023,'Commercial',110.0,0.09,0.004,0.012,'Hybrid','JC Test','JAPAN_MOT','6000','2023-04-01','2026-04-01',90.0,'ElectricOnly','PhaseA','JP_Emissions_2023.pdf',1,'Annual','Proposed');

-- Supplier Quality Audits
CREATE TABLE supplier_quality_audits (
    AuditID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    AuditDate TEXT,
    AuditorName TEXT,
    AuditScope TEXT,
    Score REAL,
    DeficiencyCount INTEGER,
    CriticalFindings INTEGER,
    FollowUpDate TEXT,
    CorrectiveActionPlan TEXT,
    Status TEXT,
    Region TEXT,
    Industry TEXT,
    CertificationType TEXT,
    ValidUntil TEXT,
    DocumentReference TEXT,
    Notes TEXT,
    SamplingMethod TEXT,
    SampleSize INTEGER,
    OverallRating TEXT,
    RiskLevel TEXT
);
INSERT INTO supplier_quality_audits (AuditID,SupplierID,AuditDate,AuditorName,AuditScope,Score,DeficiencyCount,CriticalFindings,FollowUpDate,CorrectiveActionPlan,Status,Region,Industry,CertificationType,ValidUntil,DocumentReference,Notes,SamplingMethod,SampleSize,OverallRating,RiskLevel) VALUES (1,501,'2022-12-20','JohnDoe','FuelDelivery','88.5',3,1,'2023-02-01','PlanA','Closed','EU','Energy','ISO9001','2025-12-31','DOC123','All issues resolved','Random','50','A','Low');
INSERT INTO supplier_quality_audits (AuditID,SupplierID,AuditDate,AuditorName,AuditScope,Score,DeficiencyCount,CriticalFindings,FollowUpDate,CorrectiveActionPlan,Status,Region,Industry,CertificationType,ValidUntil,DocumentReference,Notes,SamplingMethod,SampleSize,OverallRating,RiskLevel) VALUES (2,602,'2023-01-15','AliceSmith','EquipmentSupply','75.0',7,2,'2023-04-10','PlanB','Open','NA','Manufacturing','ISO14001','2024-06-30','DOC456','Pending corrective actions','Stratified','80','B','Medium');
INSERT INTO supplier_quality_audits (AuditID,SupplierID,AuditDate,AuditorName,AuditScope,Score,DeficiencyCount,CriticalFindings,FollowUpDate,CorrectiveActionPlan,Status,Region,Industry,CertificationType,ValidUntil,DocumentReference,Notes,SamplingMethod,SampleSize,OverallRating,RiskLevel) VALUES (3,718,'2023-03-05','BobLee','Logistics','92.0',1,0,'2023-05-20','PlanC','Closed','AP','Logistics','ISO45001','2026-03-15','DOC789','No issues','Systematic','120','A','Low');

-- Climate Event Records
CREATE TABLE climate_event_records (
    EventID INTEGER PRIMARY KEY,
    EventType TEXT,
    StartDate TEXT,
    EndDate TEXT,
    Region TEXT,
    Country TEXT,
    SeverityLevel INTEGER,
    Description TEXT,
    EstimatedDamage REAL,
    AffectedPopulation REAL,
    ResponseAgency TEXT,
    ReliefFundsAllocated REAL,
    WeatherPattern TEXT,
    TemperatureAnomaly REAL,
    PrecipitationAnomaly REAL,
    WindSpeedMax REAL,
    DurationHours REAL,
    RecoveryStatus TEXT,
    Notes TEXT,
    DataSource TEXT
);
INSERT INTO climate_event_records (EventID,EventType,StartDate,EndDate,Region,Country,SeverityLevel,Description,EstimatedDamage,AffectedPopulation,ResponseAgency,ReliefFundsAllocated,WeatherPattern,TemperatureAnomaly,PrecipitationAnomaly,WindSpeedMax,DurationHours,RecoveryStatus,Notes,DataSource) VALUES (1,'Flood','2022-07-10','2022-07-14','Midwest','US',4,'River overflow affecting multiple towns',250.0,120000,'FEMA','5000','HeavyRain',2.5,150.0,85.0,96,'InProgress','Damaged roads','USGS');
INSERT INTO climate_event_records (EventID,EventType,StartDate,EndDate,Region,Country,SeverityLevel,Description,EstimatedDamage,AffectedPopulation,ResponseAgency,ReliefFundsAllocated,WeatherPattern,TemperatureAnomaly,PrecipitationAnomaly,WindSpeedMax,DurationHours,RecoveryStatus,Notes,DataSource) VALUES (2,'Heatwave','2023-08-01','2023-08-10','Southern','FR',3,'Prolonged high temperatures',120.0,500000,'CivilProtection','2000','HighPressure',5.8,0.0,30.0,240,'Resolved','Health alerts issued','MeteoFrance');
INSERT INTO climate_event_records (EventID,EventType,StartDate,EndDate,Region,Country,SeverityLevel,Description,EstimatedDamage,AffectedPopulation,ResponseAgency,ReliefFundsAllocated,WeatherPattern,TemperatureAnomaly,PrecipitationAnomaly,WindSpeedMax,DurationHours,RecoveryStatus,Notes,DataSource) VALUES (3,'Storm','2023-09-20','2023-09-22','Coastal','JP',5,'Typhoon causing coastal damage',400.0,80000,'JMA','8000','TropicalStorm',-1.2,200.0,150.0,48,'Ongoing','Evacuations in place','JMA');

-- Renewable Energy Project Registry
CREATE TABLE renewable_energy_project_registry (
    ProjectID INTEGER PRIMARY KEY,
    ProjectName TEXT,
    Country TEXT,
    State TEXT,
    City TEXT,
    Technology TEXT,
    CapacityMW REAL,
    CommissionDate TEXT,
    Developer TEXT,
    Owner TEXT,
    FinancingAmount REAL,
    PowerPurchaseAgreement TEXT,
    OperationalStatus TEXT,
    ExpectedLifetime INTEGER,
    SubsidyAmount REAL,
    CO2ReductionTONS REAL,
    GridConnectionPoint TEXT,
    Latitude REAL,
    Longitude REAL,
    ProjectPhase TEXT,
    Notes TEXT
);
INSERT INTO renewable_energy_project_registry (ProjectID,ProjectName,Country,State,City,Technology,CapacityMW,CommissionDate,Developer,Owner,FinancingAmount,PowerPurchaseAgreement,OperationalStatus,ExpectedLifetime,SubsidyAmount,CO2ReductionTONS,GridConnectionPoint,Latitude,Longitude,ProjectPhase,Notes) VALUES (1,'SunnyValeSolar','US','CA','Fresno','SolarPV',150.0,'2022-06-15','SunPower','SunPower',120000000,'PPA12345','Operating',30,25000000,180000,'NodeA',36.7378,-119.7871,'Construction','Phase1 completed');
INSERT INTO renewable_energy_project_registry (ProjectID,ProjectName,Country,State,City,Technology,CapacityMW,CommissionDate,Developer,Owner,FinancingAmount,PowerPurchaseAgreement,OperationalStatus,ExpectedLifetime,SubsidyAmount,CO2ReductionTONS,GridConnectionPoint,Latitude,Longitude,ProjectPhase,Notes) VALUES (2,'WindHarbor','DE','NI','Hamburg','WindOnshore',80.0,'2021-09-30','WindCo','WindCo',90000000,'PPA67890','Operating',25,15000000,95000,'NodeB',53.5511,9.9937,'Operating','Full capacity reached');
INSERT INTO renewable_energy_project_registry (ProjectID,ProjectName,Country,State,City,Technology,CapacityMW,CommissionDate,Developer,Owner,FinancingAmount,PowerPurchaseAgreement,OperationalStatus,ExpectedLifetime,SubsidyAmount,CO2ReductionTONS,GridConnectionPoint,Latitude,Longitude,ProjectPhase,Notes) VALUES (3,'RiverHydeHydro','CA','ON','Toronto','Hydro',45.0,'2023-03-20','HydroGen','HydroGen',60000000,'PPA11223','Construction',40,10000000,56000,'NodeC',43.6532,-79.3832,'Planning','Environmental review pending');

-- Smart City Sensor Inventory
CREATE TABLE smart_city_sensor_inventory (
    SensorID INTEGER PRIMARY KEY,
    SensorType TEXT,
    InstallationDate TEXT,
    LocationDescription TEXT,
    Latitude REAL,
    Longitude REAL,
    FirmwareVersion TEXT,
    CalibrationDate TEXT,
    Status TEXT,
    BatteryLevel REAL,
    ConnectivityType TEXT,
    DataEndpoint TEXT,
    OwnerAgency TEXT,
    MaintenanceFrequency INTEGER,
    LastMaintenanceDate TEXT,
    SensorModel TEXT,
    Manufacturer TEXT,
    PowerSource TEXT,
    Accuracy REAL,
    DataRetentionPeriod INTEGER,
    Notes TEXT
);
INSERT INTO smart_city_sensor_inventory (SensorID,SensorType,InstallationDate,LocationDescription,Latitude,Longitude,FirmwareVersion,CalibrationDate,Status,BatteryLevel,ConnectivityType,DataEndpoint,OwnerAgency,MaintenanceFrequency,LastMaintenanceDate,SensorModel,Manufacturer,PowerSource,Accuracy,DataRetentionPeriod,Notes) VALUES (1001,'AirQuality','2022-01-10','MainSt_Intersection',40.7128,-74.0060,'v1.2.3','2022-06-01','Active',95.0,'LoRa','http://data.city/aq/1001','EnvDept',180,'2023-01-15','AQ-500','SensTech','Solar',0.98,365,'No issues');
INSERT INTO smart_city_sensor_inventory (SensorID,SensorType,InstallationDate,LocationDescription,Latitude,Longitude,FirmwareVersion,CalibrationDate,Status,BatteryLevel,ConnectivityType,DataEndpoint,OwnerAgency,MaintenanceFrequency,LastMaintenanceDate,SensorModel,Manufacturer,PowerSource,Accuracy,DataRetentionPeriod,Notes) VALUES (1002,'TrafficFlow','2021-05-22','5thAve_Bridge',34.0522,-118.2437,'v2.0.0','2021-12-10','Active',88.0,'Cellular','http://data.city/tf/1002','TransDept',90,'2022-11-20','TF-200','MetroSense','Mains',0.95,730,'Calibrated annually');
INSERT INTO smart_city_sensor_inventory (SensorID,SensorType,InstallationDate,LocationDescription,Latitude,Longitude,FirmwareVersion,CalibrationDate,Status,BatteryLevel,ConnectivityType,DataEndpoint,OwnerAgency,MaintenanceFrequency,LastMaintenanceDate,SensorModel,Manufacturer,PowerSource,Accuracy,DataRetentionPeriod,Notes) VALUES (1003,'NoiseLevel','2020-09-15','ParkNorth_Entrance',51.5074,-0.1278,'v1.0.5','2021-03-01','Inactive',0.0,'WiFi','http://data.city/nl/1003','HealthDept',365,'2021-03-01','NL-100','AcoustiCorp','Battery',0.90,180,'Needs replacement');

-- Public Transport Fare Structures
CREATE TABLE public_transport_fare_structures (
    FareID INTEGER PRIMARY KEY,
    Agency TEXT,
    ServiceType TEXT,
    ZoneFrom INTEGER,
    ZoneTo INTEGER,
    FareAmount REAL,
    Currency TEXT,
    TicketType TEXT,
    ValidityPeriodDays INTEGER,
    DiscountEligibility TEXT,
    PeakOffPeak TEXT,
    AgeGroup TEXT,
    PaymentMethod TEXT,
    TransferAllowed INTEGER,
    TransferWindowMinutes INTEGER,
    DailyCap REAL,
    WeeklyCap REAL,
    MonthlyCap REAL,
    FareRuleReference TEXT,
    EffectiveDate TEXT,
    ExpirationDate TEXT,
    Comments TEXT
);
INSERT INTO public_transport_fare_structures (FareID,Agency,ServiceType,ZoneFrom,ZoneTo,FareAmount,Currency,TicketType,ValidityPeriodDays,DiscountEligibility,PeakOffPeak,AgeGroup,PaymentMethod,TransferAllowed,TransferWindowMinutes,DailyCap,WeeklyCap,MonthlyCap,FareRuleReference,EffectiveDate,ExpirationDate,Comments) VALUES (1,'MetroCity','Bus',1,3,2.5,'USD','SingleRide',1,'Student','OffPeak','Adult','Cash',0,0,2.5,12.0,45.0,'FR001','2022-01-01','2025-12-31','Standard bus fare');
INSERT INTO public_transport_fare_structures (FareID,Agency,ServiceType,ZoneFrom,ZoneTo,FareAmount,Currency,TicketType,ValidityPeriodDays,DiscountEligibility,PeakOffPeak,AgeGroup,PaymentMethod,TransferAllowed,TransferWindowMinutes,DailyCap,WeeklyCap,MonthlyCap,FareRuleReference,EffectiveDate,ExpirationDate,Comments) VALUES (2,'MetroCity','Metro',1,5,3.0,'USD','DayPass',1,'None','Peak','All','Card',1,90,3.0,15.0,60.0,'FR002','2023-06-01','2026-05-31','Unlimited rides within zone 1-5');
INSERT INTO public_transport_fare_structures (FareID,Agency,ServiceType,ZoneFrom,ZoneTo,FareAmount,Currency,TicketType,ValidityPeriodDays,DiscountEligibility,PeakOffPeak,AgeGroup,PaymentMethod,TransferAllowed,TransferWindowMinutes,DailyCap,WeeklyCap,MonthlyCap,FareRuleReference,EffectiveDate,ExpirationDate,Comments) VALUES (3,'MetroCity','Tram',2,4,2.8,'USD','WeeklyPass',7,'Senior','All','Senior','Contactless',1,120,2.8,14.0,55.0,'FR003','2022-09-15','2025-09-14','Reduced fare for seniors');