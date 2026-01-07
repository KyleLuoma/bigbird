-- Municipal waste processing facilities details
CREATE TABLE municipal_waste_processing_facilities (
    FacilityID INTEGER PRIMARY KEY,
    FacilityName TEXT,
    City TEXT,
    County TEXT,
    Capacity_TonsPerYear INTEGER,
    OpeningDate DATE,
    OperatorCompany TEXT,
    WasteTypeSupported TEXT,
    ComplianceStatus TEXT,
    PermitNumber TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Latitude REAL,
    Longitude REAL,
    RecyclingRatePercent REAL,
    EnergyRecoveryMW REAL,
    HazardousWasteHandled BOOLEAN,
    FloorAreaSqM INTEGER,
    NumberOfEmployees INTEGER,
    CurrentOperationalStatus TEXT
);
INSERT INTO municipal_waste_processing_facilities VALUES (1,'Northside Waste Plant','Springfield','Greene',200000,'2010-06-15','EcoWaste Corp','Mixed','Compliant','WP-2020-001','5551234567','info@ecowaste.com',37.215,-93.298,45.5,12.3,0,3500,150,'Operational');
INSERT INTO municipal_waste_processing_facilities VALUES (2,'Riverbend Recycling Center','Riverton','Madison',120000,'2015-03-20','GreenCycle Ltd','Recyclable','Compliant','WP-2021-045','5559876543','contact@greencycle.com',38.102,-94.112,68.2,8.9,0,2100,80,'Operational');
INSERT INTO municipal_waste_processing_facilities VALUES (3,'Eastside Hazardous Waste Unit','Laketown','Lake',80000,'2012-11-05','SafeDisposal Inc','Hazardous','Pending','WP-2019-078','5552223344','services@safedisposal.com',36.874,-92.556,30.0,5.5,1,1800,60,'UnderConstruction');

-- Smart grid event log
CREATE TABLE smart_grid_event_log (
    EventID INTEGER PRIMARY KEY,
    EventTimestamp TEXT,
    GridSegmentID INTEGER,
    EventType TEXT,
    Description TEXT,
    AffectedNodesCount INTEGER,
    EstimatedOutageMinutes INTEGER,
    TriggeredBy TEXT,
    SeverityLevel INTEGER,
    OperatorID INTEGER,
    ResolutionTimestamp TEXT,
    ResolutionAction TEXT,
    PostEventAnalysis TEXT,
    WeatherCondition TEXT,
    LoadImpactMW REAL,
    FrequencyDeviationHz REAL,
    VoltageDeviationKV REAL,
    NotificationSent BOOLEAN,
    IsCritical BOOLEAN,
    FollowUpTaskID INTEGER
);
INSERT INTO smart_grid_event_log VALUES (101,'2023-07-01 14:23:00',12,'LineTrip','Line 12 tripped due to fault',5,45,'AutomaticProtection',3,201,'2023-07-01 15:10:00','Reclosed line','Stability restored','Clear',150.2,0.02,0.5,1,1,301);
INSERT INTO smart_grid_event_log VALUES (102,'2023-08-15 09:05:00',7,'VoltageSag','Sag detected on substation 7',2,10,'SCADA',2,207,'2023-08-15 09:20:00','Boosted voltage','No further issues','PartlyCloudy',80.5,0.01,0.3,1,0,302);
INSERT INTO smart_grid_event_log VALUES (103,'2023-09-20 22:40:00',4,'FrequencyDeviation','Frequency deviated beyond threshold',1,120,'OperatorManual',4,215,'2023-09-21 01:00:00','Adjusted generation','Investigation ongoing','Clear',200.0,0.05,0.8,1,1,303);

-- Air quality monitoring station calibrations
CREATE TABLE air_quality_monitoring_station_calibrations (
    CalibrationID INTEGER PRIMARY KEY,
    StationID INTEGER,
    CalibrationDate DATE,
    TechnicianName TEXT,
    CalibrationMethod TEXT,
    CO2OffsetPPM REAL,
    NOxOffsetPPB REAL,
    PM25OffsetUGM3 REAL,
    OzoneOffsetPPB REAL,
    CalibrationDurationMinutes INTEGER,
    CalibrationCertificateNumber TEXT,
    EquipmentSerialNumber TEXT,
    CalibrationSoftwareVersion TEXT,
    AmbientTemperatureC REAL,
    HumidityPercent REAL,
    CalibrationNotes TEXT,
    IsApproved BOOLEAN,
    ApprovalDate DATE,
    SupervisorName TEXT,
    NextCalibrationDueDate DATE
);
INSERT INTO air_quality_monitoring_station_calibrations VALUES (1001,55,'2023-05-10','Laura Smith','ZeroSpan','0.2','-0.1','1.5','0.3',45,'CERT-2023-001','SN-AX100','v3.2',22.5,55.0,'Routine check',1,'2023-05-11','Mark Jensen','2024-05-10');
INSERT INTO air_quality_monitoring_station_calibrations VALUES (1002,58,'2023-06-12','James Lee','ReferenceGas','-0.1','0.2','-0.5','-0.1',30,'CERT-2023-002','SN-AX105','v3.2',21.0,60.0,'Minor adjustment',1,'2023-06-13','Anna Patel','2024-06-12');
INSERT INTO air_quality_monitoring_station_calibrations VALUES (1003,60,'2023-07-20','Maria Gomez','ZeroSpan','0.0','0.0','0.0','0.0',60,'CERT-2023-003','SN-AX110','v3.3',20.0,50.0,'Full recalibration',0,NULL,'TBD','2024-07-20');

-- Hydrocarbon transport route metrics
CREATE TABLE hydrocarbon_transport_route_metrics (
    RouteMetricID INTEGER PRIMARY KEY,
    RouteID INTEGER,
    DateMeasured DATE,
    DistanceKm REAL,
    AvgPressureBar REAL,
    MaxPressureBar REAL,
    AvgTemperatureC REAL,
    FlowRateBarrelsPerDay REAL,
    LeakDetected BOOLEAN,
    InspectionStatus TEXT,
    MaintenanceCrewID INTEGER,
    NextInspectionDate DATE,
    SegmentCount INTEGER,
    WeatherImpactScore INTEGER,
    RegulatoryComplianceLevel TEXT,
    EmissionEstimateTonnes REAL,
    PumpEfficiencyPercent REAL,
    ValveStatus TEXT,
    GPSLatitudeStart REAL,
    GPSLongitudeStart REAL
);
INSERT INTO hydrocarbon_transport_route_metrics VALUES (2001,301,'2023-04-01',350.5,45.2,60.0,15.3,12000.0,0,'Pass',12,'2023-10-01',8,2,'Level1',0.8,92.5,'Open',36.7783,-119.4179);
INSERT INTO hydrocarbon_transport_route_metrics VALUES (2002,302,'2023-05-15',210.0,38.0,55.5,13.0,8000.0,1,'Fail',15,'2023-11-15',5,5,'Level2',1.2,88.0,'Closed',34.0522,-118.2437);
INSERT INTO hydrocarbon_transport_route_metrics VALUES (2003,303,'2023-06-30',475.8,50.1,70.2,16.5,15000.0,0,'Pass',9,'2024-01-30',10,1,'Level1',0.6,95.0,'Open',40.7128,-74.0060);

-- Renewable energy investor portfolios
CREATE TABLE renewable_energy_investor_portfolios (
    PortfolioID INTEGER PRIMARY KEY,
    InvestorID INTEGER,
    PortfolioName TEXT,
    InvestmentType TEXT,
    TotalInvestmentUSD REAL,
    RenewableAssetCount INTEGER,
    SolarCapacityMW REAL,
    WindCapacityMW REAL,
    HydroCapacityMW REAL,
    BioMassCapacityMW REAL,
    InvestmentDate DATE,
    LastValuationDate DATE,
    CurrentValuationUSD REAL,
    RiskRating TEXT,
    ESGScore INTEGER,
    ManagerName TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    PreferredRegion TEXT,
    ActiveStatus BOOLEAN
);
INSERT INTO renewable_energy_investor_portfolios VALUES (5001,1001,'GreenFuture Portfolio','Equity',25000000,15,120.5,80.2,30.0,10.5,'2020-01-15','2023-07-01',36500000,'Medium',78,'Ellen Reed','5554447777','ellen.reed@greenfuture.com','NorthAmerica',1);
INSERT INTO renewable_energy_investor_portfolios VALUES (5002,1002,'SolarPlus Holdings','Debt',12000000,8,95.0,0.0,0.0,0.0,'2019-06-20','2023-06-15',13500000,'Low',85,'Victor Huang','5553332222','victor.huang@solarpplus.com','AsiaPacific',1);
INSERT INTO renewable_energy_investor_portfolios VALUES (5003,1003,'WindEdge Capital','Equity',18000000,12,0.0,110.0,0.0,0.0,'2021-03-10','2023-05-20',21000000,'High',65,'Sofia Martinez','5557778888','sofia.martinez@windedge.com','Europe',0);

-- Electric vehicle charging pricing tiers
CREATE TABLE electric_vehicle_charging_pricing_tiers (
    PricingTierID INTEGER PRIMARY KEY,
    TierName TEXT,
    StartTime TEXT,
    EndTime TEXT,
    PricePerKWhUSD REAL,
    PeakDemandChargeUSD REAL,
    TimeOfUseCategory TEXT,
    ApplicableStationTypes TEXT,
    MembershipRequired BOOLEAN,
    DiscountPercent REAL,
    ValidFromDate DATE,
    ValidToDate DATE,
    Currency TEXT,
    ProviderID INTEGER,
    Description TEXT,
    MaxSessionMinutes INTEGER,
    MinimumSessionKWh REAL,
    BillingCycle TEXT,
    IsActive BOOLEAN,
    CreatedTimestamp TEXT
);
INSERT INTO electric_vehicle_charging_pricing_tiers VALUES (1,'OffPeak','00:00','06:00',0.10,0.00,'OffPeak','Level2,DCFast',0,0,'2023-01-01','2023-12-31','USD',401,'Standard off‑peak rate',240,5.0,'Monthly',1,'2023-01-01 08:00:00');
INSERT INTO electric_vehicle_charging_pricing_tiers VALUES (2,'Peak','16:00','20:00',0.30,0.05,'Peak','DCFast',1,10,'2023-01-01','2023-12-31','USD',401,'Peak rate for members',180,10.0,'Monthly',1,'2023-01-01 08:05:00');
INSERT INTO electric_vehicle_charging_pricing_tiers VALUES (3,'Weekend','00:00','23:59',0.20,0.00,'Weekend','Level2,DCFast',0,5,'2023-01-01','2023-12-31','USD',401,'Weekend flat rate',300,7.0,'Monthly',1,'2023-01-01 08:10:00');

-- Roadside advertising campaigns
CREATE TABLE roadside_advertising_campaigns (
    CampaignID INTEGER PRIMARY KEY,
    AdvertiserID INTEGER,
    CampaignName TEXT,
    StartDate DATE,
    EndDate DATE,
    BillboardLocationID INTEGER,
    CreativeType TEXT,
    CreativeDescription TEXT,
    ImpressionsTarget INTEGER,
    BudgetUSD REAL,
    CPMRateUSD REAL,
    ContractSignedDate DATE,
    AgencyID INTEGER,
    PrimaryContactName TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    ApprovalStatus TEXT,
    MeasurementsMethod TEXT,
    Remarks TEXT,
    IsArchived BOOLEAN
);
INSERT INTO roadside_advertising_campaigns VALUES (9001,2001,'Summer Drive','2023-06-01','2023-08-31',301,'Video','Sunset drive montage',500000,150000,30.0,'2023-05-20',501,'Karen Liu','5551112222','karen.liu@adagency.com','Approved','AutomatedCounters','Initial launch',0);
INSERT INTO roadside_advertising_campaigns VALUES (9002,2002,'EcoFuel Push','2023-09-01','2024-02-28',305,'Static','Eco‑friendly fuel messaging',750000,200000,26.7,'2023-08-15',502,'Luis Gomez','5553334444','luis.gomez@greenad.com','Pending','ManualAudits','Awaiting creative assets',0);
INSERT INTO roadside_advertising_campaigns VALUES (9003,2003,'Winter Warmth','2023-11-15','2024-01-31',309,'Animated','Heated seats promotion',300000,90000,30.0,'2023-11-01',503,'Mia Patel','5555556666','mia.patel@coldad.com','Rejected','SurveyFeedback','Creative not compliant',1);

-- Water supply network assets
CREATE TABLE water_supply_network_assets (
    AssetID INTEGER PRIMARY KEY,
    AssetType TEXT,
    AssetName TEXT,
    InstallationDate DATE,
    Manufacturer TEXT,
    ModelNumber TEXT,
    CapacityLiters REAL,
    LocationCity TEXT,
    LocationCounty TEXT,
    Latitude REAL,
    Longitude REAL,
    PressureRatingBar REAL,
    Material TEXT,
    MaintenanceIntervalDays INTEGER,
    LastMaintenanceDate DATE,
    NextMaintenanceDue DATE,
    AssetStatus TEXT,
    InspectionReportID INTEGER,
    GPSReference TEXT,
    AssetOwner TEXT
);
INSERT INTO water_supply_network_assets VALUES (15001,'PumpStation','North River Pump','2012-04-10','HydraTech','HT-9000',2500000,'Rivercity','River County',36.7783,-119.4179,8.5,'Steel',180,'2023-04-01','2023-09-28','Operational',301,'REF-NS-001','Municipal Water Authority');
INSERT INTO water_supply_network_assets VALUES (15002,'Reservoir','East Valley Reservoir','2005-09-22','AquaBuild','AB-500',5000000,'Valleytown','Valley County',34.0522,-118.2437,0,'Concrete',365,'2023-01-15','2024-01-15','Operational',302,'REF-ER-002','County Water Services');
INSERT INTO water_supply_network_assets VALUES (15003,'TreatmentPlant','Westside Treatment','2018-07-05','CleanFlow','CF-200',1200000,'Westville','West County',40.7128,-74.0060,5.0,'Composite',365,'2023-06-20','2024-06-20','UnderConstruction',303,'REF-TP-003','Regional Water District');

-- Drone delivery operational incidents
CREATE TABLE drone_delivery_operational_incidents (
    IncidentID INTEGER PRIMARY KEY,
    DroneID INTEGER,
    IncidentDate DATE,
    IncidentTime TEXT,
    LocationLatitude REAL,
    LocationLongitude REAL,
    IncidentType TEXT,
    Description TEXT,
    WeatherCondition TEXT,
    OperatorID INTEGER,
    PayloadWeightKg REAL,
    FlightDurationMinutes INTEGER,
    DamageSeverity TEXT,
    EstimatedCostUSD REAL,
    ResolutionStatus TEXT,
    FollowUpAction TEXT,
    ReportedBy TEXT,
    ReportedTimestamp TEXT,
    IsRegulatoryReported BOOLEAN,
    RegulatoryAgency TEXT
);
INSERT INTO drone_delivery_operational_incidents VALUES (4001,801,'2023-04-12','14:35:00',37.7749,-122.4194,'Collision','Contact with power line', 'Clear',12,2.5,8,'Minor',1200.0,'Resolved','Replace propellers','Alex Murphy','2023-04-12 15:00:00',0,'');
INSERT INTO drone_delivery_operational_incidents VALUES (4002,802,'2023-06-05','09:20:00',34.0522,-118.2437,'BatteryFailure','Unexpected shutdown mid‑flight','Hot','',1.8,12,'Critical',4500.0,'Investigating','Battery redesign','Maria Lee','2023-06-05 09:45:00',1,'Aviation Authority');
INSERT INTO drone_delivery_operational_incidents VALUES (4003,803,'2023-08-19','18:10:00',40.7128,-74.0060,'GroundImpact','Hard landing on rooftop','Rain','',2.0,5,'Moderate',3000.0,'Closed','Driver training','John Patel','2023-08-19 18:40:00',0,'');

-- Smart parking zone usage statistics
CREATE TABLE smart_parking_zone_usage (
    ZoneID INTEGER PRIMARY KEY,
    ZoneName TEXT,
    City TEXT,
    AreaSqM REAL,
    TotalSpaces INTEGER,
    OccupiedSpaces INTEGER,
    StartTimestamp TEXT,
    EndTimestamp TEXT,
    AverageOccupancyPercent REAL,
    PeakOccupancyPercent REAL,
    PricingModel TEXT,
    HourlyRateUSD REAL,
    DailyRateUSD REAL,
    ResidentPermitSpaces INTEGER,
    VisitorPermitSpaces INTEGER,
    SensorCount INTEGER,
    LastSensorUpdate TEXT,
    MaintenanceStatus TEXT,
    UpgradePlannedDate DATE,
    Comments TEXT
);
INSERT INTO smart_parking_zone_usage VALUES (701,'Downtown Central','Metro City',25000,500,320,'2023-07-01 08:00:00','2023-07-01 20:00:00',64.0,85.0,'Dynamic','2.50','20.00',100,150,25,'2023-07-01 07:55:00','Operational','2024-01-15','Peak hours high demand');
INSERT INTO smart_parking_zone_usage VALUES (702,'University Loop','College Town',18000,300,210,'2023-07-01 07:00:00','2023-07-01 22:00:00',70.0,90.0,'Flat','1.80','15.00',80,120,18,'2023-07-01 06:55:00','Operational','2024-03-01','Student discount applied');
INSERT INTO smart_parking_zone_usage VALUES (703,'Airport East','Aero City',30000,600,450,'2023-07-01 06:00:00','2023-07-01 23:00:00',75.0,95.0,'Dynamic','3.00','25.00',150,200,30,'2023-07-01 05:55:00','UnderMaintenance','2024-05-20','Scheduled sensor upgrade');