-- Fuel price forecasts per region
CREATE TABLE fuel_price_forecasts (
    ForecastID INTEGER PRIMARY KEY,
    ForecastDate DATE,
    Region TEXT,
    FuelType TEXT,
    AvgPrice REAL,
    MinPrice REAL,
    MaxPrice REAL,
    ConfidenceLevel REAL,
    SourceSystem TEXT,
    CreatedTimestamp TEXT,
    UpdatedTimestamp TEXT,
    AnalystID INTEGER,
    ForecastMethod TEXT,
    Currency TEXT,
    VolumeForecast REAL,
    SeasonalFactor REAL,
    EconomicIndex REAL,
    CompetitorPriceIndex REAL,
    HistoricalDeviation REAL,
    Comments TEXT
);
INSERT INTO fuel_price_forecasts VALUES (1,'2025-12-01','NorthAmerica','Diesel',1.12,1.05,1.20,0.92,'SystemA','2025-11-15 08:00:00','2025-11-15 08:00:00',101,'ARIMA','USD',50000,1.03,0.98,0.85,0.02,'Quarterly forecast');
INSERT INTO fuel_price_forecasts VALUES (2,'2025-12-01','Europe','Petrol',1.45,1.38,1.52,0.89,'SystemB','2025-11-15 09:30:00','2025-11-15 09:30:00',102,'Prophet','EUR',42000,0.97,1.02,0.90,0.03,'End of year outlook');
INSERT INTO fuel_price_forecasts VALUES (3,'2025-12-01','Asia','LPG',0.78,0.73,0.84,0.95,'SystemC','2025-11-15 10:15:00','2025-11-15 10:15:00',103,'LinearReg','JPY',75000,1.01,1.00,0.88,0.01,'Monthly update');

-- Electric vehicle charging sessions
CREATE TABLE ev_charging_sessions (
    SessionID INTEGER PRIMARY KEY,
    StationID INTEGER,
    VehicleID INTEGER,
    StartTime TEXT,
    EndTime TEXT,
    EnergyDelivered REAL,
    Cost REAL,
    PaymentMethod TEXT,
    UserID INTEGER,
    SessionStatus TEXT,
    PowerLevel REAL,
    ConnectorType TEXT,
    FirmwareVersion TEXT,
    BillingCode TEXT,
    SessionHash TEXT,
    Latitude REAL,
    Longitude REAL,
    OperatorID INTEGER,
    PromotionCode TEXT,
    Notes TEXT
);
INSERT INTO ev_charging_sessions VALUES (1001,2001,3001,'2025-11-20 08:15:00','2025-11-20 09:45:00',42.5,12.30,'CreditCard',4001,'Completed',150.0,'CCS','v3.2','BILL1001','HASHABC123',34.0522,-118.2437,501,'EVPROMO10','No issues');
INSERT INTO ev_charging_sessions VALUES (1002,2002,3002,'2025-11-21 14:00:00','2025-11-21 15:20:00',35.0,9.80,'MobilePay',4002,'Completed',120.0,'CHAdeMO','v2.9','BILL1002','HASHDEF456',40.7128,-74.0060,502,'','Fast charge');
INSERT INTO ev_charging_sessions VALUES (1003,2003,3003,'2025-11-22 19:30:00','2025-11-22 20:50:00',28.3,7.50,'RFID',4003,'Cancelled',100.0,'CCS','v3.0','BILL1003','HASHGHI789',51.5074,-0.1278,503,'EVFREE','User cancelled early');

-- Roadside assistance requests
CREATE TABLE roadside_assistance_requests (
    RequestID INTEGER PRIMARY KEY,
    RequestDate DATE,
    RequestTime TEXT,
    CustomerID INTEGER,
    VehicleID INTEGER,
    LocationLat REAL,
    LocationLong REAL,
    IssueType TEXT,
    Description TEXT,
    AssignedTechID INTEGER,
    EstimatedArrivalMin INTEGER,
    Status TEXT,
    PriorityLevel INTEGER,
    CallCenterAgentID INTEGER,
    ServiceCost REAL,
    PaymentMethod TEXT,
    WarrantyFlag INTEGER,
    FollowUpRequired INTEGER,
    FeedbackScore REAL,
    ResolutionDate DATE
);
INSERT INTO roadside_assistance_requests VALUES (5001,'2025-11-18','07:45:00',101,301,34.1015,-118.3389,'FlatTire','Rear left tire puncture',601,30,'InProgress',2,701,45.00,'Cash',1,0,4.5,'2025-11-18');
INSERT INTO roadside_assistance_requests VALUES (5002,'2025-11-19','14:20:00',102,302,40.7306,-73.9352,'BatteryDead','Battery failed to start',602,25,'Completed',1,702,0.00,'Invoice',0,1,5.0,'2025-11-19');
INSERT INTO roadside_assistance_requests VALUES (5003,'2025-11-20','22:10:00',103,303,41.8781,-87.6298,'EngineOverheat','Engine temperature critical',603,45,'Cancelled',3,703,0.00,'None',0,0,0.0,NULL);

-- Driver license records
CREATE TABLE driver_license_records (
    LicenseID INTEGER PRIMARY KEY,
    DriverID INTEGER,
    LicenseNumber TEXT,
    IssueDate DATE,
    ExpiryDate DATE,
    State TEXT,
    Class TEXT,
    Restrictions TEXT,
    Endorsements TEXT,
    PhotoIDReference TEXT,
    IssuingAgency TEXT,
    VerificationStatus TEXT,
    LastRenewalDate DATE,
    RenewalCount INTEGER,
    PointsAccumulated INTEGER,
    SuspendedFlag INTEGER,
    SuspensionStart DATE,
    SuspensionEnd DATE,
    PenaltyPoints INTEGER,
    Notes TEXT
);
INSERT INTO driver_license_records VALUES (8001,4001,'DL1234567','2020-05-12','2025-05-12','CA','C','Glasses','None','PHOTO8001','DMV','Verified','2020-05-12',1,2,0,NULL,NULL,0,'All good');
INSERT INTO driver_license_records VALUES (8002,4002,'DL2345678','2019-08-22','2024-08-22','TX','B','None','HazMat','PHOTO8002','DMV','Verified','2019-08-22',2,5,1,'2023-03-01','2023-06-01',3,'Suspended for DUI');
INSERT INTO driver_license_records VALUES (8003,4003,'DL3456789','2021-01-15','2026-01-15','NY','D','None','None','PHOTO8003','DMV','Pending','2021-01-15',0,0,0,NULL,NULL,0,'Awaiting verification');

-- Station environmental metrics
CREATE TABLE station_environmental_metrics (
    MetricID INTEGER PRIMARY KEY,
    StationID INTEGER,
    RecordDate DATE,
    TemperatureC REAL,
    HumidityPct REAL,
    AirQualityIndex INTEGER,
    NoiseLevelDb REAL,
    SolarRadiationWm2 REAL,
    WindSpeedMs REAL,
    RainfallMm REAL,
    EmissionCO2Kg REAL,
    EmissionNOxKg REAL,
    EnergyConsumptionKWh REAL,
    WaterUsageL REAL,
    WasteGeneratedKg REAL,
    RecyclingRatePct REAL,
    MaintenanceFlag INTEGER,
    InspectorID INTEGER,
    Comments TEXT,
    DataSource TEXT
);
INSERT INTO station_environmental_metrics VALUES (9001,2001,'2025-11-15',22.5,55.0,42,62.0,0.0,3.2,0.0,12.5,0.8,150.0,1200,5.0,85.0,0,801,'Normal operation','SensorArray');
INSERT INTO station_environmental_metrics VALUES (9002,2002,'2025-11-15',18.3,70.0,38,58.0,0.0,4.1,0.0,10.2,0.5,130.0,1100,4.5,90.0,0,802,'All metrics within limits','SensorArray');
INSERT INTO station_environmental_metrics VALUES (9003,2003,'2025-11-15',25.1,60.0,45,70.0,0.0,2.8,0.0,14.0,1.0,170.0,1300,6.0,80.0,1,803,'Maintenance required for AQI sensor','SensorArray');

-- Logistics fleet carpools
CREATE TABLE logistics_fleet_carpools (
    CarpoolID INTEGER PRIMARY KEY,
    FleetID INTEGER,
    RouteID INTEGER,
    DepartureDate DATE,
    DepartureTime TEXT,
    DriverID INTEGER,
    VehicleID INTEGER,
    Capacity INTEGER,
    OccupiedSeats INTEGER,
    AvgFuelEfficiency REAL,
    CO2SavingsKg REAL,
    CostShare REAL,
    BookingStatus TEXT,
    CancelReason TEXT,
    EstimatedArrivalTime TEXT,
    ActualArrivalTime TEXT,
    DelayMinutes INTEGER,
    OrganizerID INTEGER,
    Notes TEXT,
    LastUpdated TEXT
);
INSERT INTO logistics_fleet_carpools VALUES (11001,3001,4101,'2025-11-20','07:00:00',5001,6001,12,8,15.2,120.5,45.00,'Confirmed','', '08:30:00','08:32:00',2,7001,'Morning shift','2025-11-19 12:00:00');
INSERT INTO logistics_fleet_carpools VALUES (11002,3002,4102,'2025-11-21','12:15:00',5002,6002,10,10,13.8,95.0,55.00,'Confirmed','', '13:45:00','13:50:00',5,7002,'Lunch route','2025-11-20 09:30:00');
INSERT INTO logistics_fleet_carpools VALUES (11003,3003,4103,'2025-11-22','18:00:00',5003,6003,15,7,14.5,110.3,60.00,'Cancelled','Driver sick','', '',0,7003,'Evening cancelled','2025-11-21 16:45:00');

-- Regional tax rate history
CREATE TABLE regional_tax_rate_history (
    TaxRateID INTEGER PRIMARY KEY,
    Region TEXT,
    TaxYear INTEGER,
    TaxMonth INTEGER,
    TaxType TEXT,
    RatePercent REAL,
    EffectiveFrom DATE,
    EffectiveTo DATE,
    SourceAgency TEXT,
    Notes TEXT,
    CreatedBy INTEGER,
    CreatedOn DATE,
    UpdatedBy INTEGER,
    UpdatedOn DATE,
    ValidationStatus TEXT,
    AssociatedRegulation TEXT,
    FiscalQuarter INTEGER,
    AdjustmentFactor REAL,
    PriorRatePercent REAL,
    Comment TEXT
);
INSERT INTO regional_tax_rate_history VALUES (12001,'Midwest',2025,11,'FuelTax',8.5,'2025-11-01','2025-11-30','DeptFinance','Standard rate',9001,'2025-10-20',9002,'2025-10-25','Validated','Reg2025A',4,1.00,8.5,'No change');
INSERT INTO regional_tax_rate_history VALUES (12002,'Northeast',2025,11,'FuelTax',9.2,'2025-11-01','2025-11-30','DeptFinance','Adjusted for inflation',9003,'2025-10-22',9004,'2025-10-28','Validated','Reg2025B',4,1.02,9.0,'Slight increase');
INSERT INTO regional_tax_rate_history VALUES (12003,'Southwest',2025,11,'FuelTax',7.9,'2025-11-01','2025-11-30','DeptFinance','Reduced to stimulate demand',9005,'2025-10-18',9006,'2025-10-23','Validated','Reg2025C',4,0.98,8.0,'Reduced rate');

-- Marketing influence metrics
CREATE TABLE marketing_influence_metrics (
    MetricID INTEGER PRIMARY KEY,
    CampaignID INTEGER,
    InfluencerID INTEGER,
    Platform TEXT,
    PostDate DATE,
    Reach INTEGER,
    Impressions INTEGER,
    Engagements INTEGER,
    ClickThroughs INTEGER,
    Conversions INTEGER,
    CostPerEngagement REAL,
    CostPerClick REAL,
    ROI REAL,
    AudienceAgeRange TEXT,
    AudienceGender TEXT,
    AudienceLocation TEXT,
    ContentType TEXT,
    SentimentScore REAL,
    BrandMentionCount INTEGER,
    Notes TEXT
);
INSERT INTO marketing_influence_metrics VALUES (13001,2101,3101,'Instagram','2025-10-15',150000,300000,4500,1200,300,0.22,0.15,1.8,'25-34','Female','Urban','Video',0.75,85,'High engagement');
INSERT INTO marketing_influence_metrics VALUES (13002,2102,3102,'YouTube','2025-10-20',200000,500000,6000,1800,450,0.25,0.13,2.0,'35-44','Male','Suburban','LiveStream',0.80,102,'Successful launch');
INSERT INTO marketing_influence_metrics VALUES (13003,2103,3103,'TikTok','2025-10-25',120000,250000,3500,900,210,0.20,0.12,1.5,'18-24','All','Global','ShortClip',0.70,60,'Moderate reach');

-- Supplier warehouse locations
CREATE TABLE supplier_warehouse_locations (
    WarehouseID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    WarehouseName TEXT,
    AddressLine1 TEXT,
    AddressLine2 TEXT,
    City TEXT,
    State TEXT,
    PostalCode TEXT,
    Country TEXT,
    Latitude REAL,
    Longitude REAL,
    CapacityUnits INTEGER,
    OccupiedUnits INTEGER,
    OperationalSince DATE,
    ManagerID INTEGER,
    ContactPhone TEXT,
    ContactEmail TEXT,
    SecurityLevel INTEGER,
    ClimateControlFlag INTEGER,
    InspectionDate DATE,
    Notes TEXT
);
INSERT INTO supplier_warehouse_locations VALUES (14001,5001,'NorthDepot','1234 North St','Suite A','Chicago','IL','60601','USA',41.8781,-87.6298,10000,7500,'2015-04-01',6001,'3125550100','warehouse1@supplier.com',3,1,'2025-09-15','Primary Midwest hub');
INSERT INTO supplier_warehouse_locations VALUES (14002,5002,'EastVault','789 East Ave','', 'New York','NY','10001','USA',40.7128,-74.0060,8000,6000,'2017-08-12',6002,'2125550200','warehouse2@supplier.com',4,1,'2025-08-20','East coast distribution');
INSERT INTO supplier_warehouse_locations VALUES (14003,5003,'WestStore','456 West Blvd','Building B','Los Angeles','CA','90001','USA',34.0522,-118.2437,12000,9500,'2018-03-05',6003,'2135550300','warehouse3@supplier.com',5,0,'2025-07-10','West coast overflow');

-- Corporate governance documents
CREATE TABLE corporate_governance_documents (
    DocumentID INTEGER PRIMARY KEY,
    DocumentTitle TEXT,
    DocumentType TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    VersionNumber TEXT,
    AuthorID INTEGER,
    ReviewerID INTEGER,
    ApprovalStatus TEXT,
    ApprovedDate DATE,
    StoragePath TEXT,
    ConfidentialityLevel TEXT,
    Department TEXT,
    Tags TEXT,
    RevisionCount INTEGER,
    LastModifiedBy INTEGER,
    LastModifiedDate DATE,
    AccessCount INTEGER,
    DigitalSignature TEXT,
    Comments TEXT
);
INSERT INTO corporate_governance_documents VALUES (15001,'Code of Conduct','Policy','2023-01-01','2026-12-31','v3.2',7001,8001,'Approved','2023-01-15','/docs/governance/code_of_conduct.pdf','Internal','HR','ethics,behavior',5,9001,'2025-10-01',124,'SIGN12345','Reviewed annually');
INSERT INTO corporate_governance_documents VALUES (15002,'Board Meeting Minutes','Minutes','2025-09-20','2025-09-20','v1.0',7002,8002,'Approved','2025-09-21','/docs/governance/board_minutes_sep2025.pdf','Confidential','Legal','board,minutes',2,9002,'2025-09-22',58,'SIGN67890','All actions recorded');
INSERT INTO corporate_governance_documents VALUES (15003,'Risk Management Framework','Framework','2024-05-01','2029-04-30','v2.5',7003,8003,'Pending','', '/docs/governance/risk_framework.pdf','Restricted','Risk','risk,management',3,9003,'2025-11-05',32,'','Draft awaiting final review');