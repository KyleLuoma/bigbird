-- Electric vehicle charging sessions record
CREATE TABLE electric_vehicle_charging_sessions
(
    SessionID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    StationID INTEGER,
    StartTime TEXT,
    EndTime TEXT,
    EnergyDelivered REAL,
    Cost REAL,
    PaymentMethod TEXT,
    SessionStatus TEXT,
    ConnectorType TEXT,
    SessionDate DATE,
    UserID INTEGER,
    SessionDuration INTEGER,
    PowerLevel REAL,
    Latitude REAL,
    Longitude REAL,
    SessionNotes TEXT,
    BillingReference TEXT,
    ChargePointOperator TEXT,
    TariffCode TEXT,
    OdometerReading INTEGER,
    TemperatureC REAL
);

INSERT INTO electric_vehicle_charging_sessions VALUES
(1,101,201,'08:15','09:00',35.2,12.5,'CreditCard','Completed','CCS','2024-11-01',501,45,120.0,37.7749,-122.4194,'N/A','BR123','OperatorX','T1',15200,22.5);
INSERT INTO electric_vehicle_charging_sessions VALUES
(2,102,202,'10:30','11:10',28.7,9.8,'MobileApp','Completed','CHAdeMO','2024-11-02',502,40,110.0,34.0522,-118.2437,'N/A','BR124','OperatorY','T2',17800,23.0);
INSERT INTO electric_vehicle_charging_sessions VALUES
(3,103,203,'14:05','14:55',42.0,15.2,'RFID','Completed','CCS','2024-11-03',503,50,130.0,40.7128,-74.0060,'N/A','BR125','OperatorZ','T3',21000,21.8);

-- Roadway incident reports
CREATE TABLE roadway_incident_reports
(
    ReportID INTEGER PRIMARY KEY,
    IncidentDate DATE,
    IncidentTime TEXT,
    RoadSegmentID INTEGER,
    SeverityLevel TEXT,
    IncidentType TEXT,
    VehiclesInvolved INTEGER,
    Injuries INTEGER,
    Fatalities INTEGER,
    PoliceReportNumber TEXT,
    Description TEXT,
    Latitude REAL,
    Longitude REAL,
    WeatherCondition TEXT,
    Visibility TEXT,
    RoadSurface TEXT,
    TrafficImpact TEXT,
    ResponseTimeMinutes INTEGER,
    ReporterID INTEGER,
    ResolutionStatus TEXT,
    EstimatedCost REAL,
    FollowUpNeeded TEXT
);

INSERT INTO roadway_incident_reports VALUES
(101,'2024-10-20','07:45',301,'High','Collision',2,1,0,'PRN001','Rear end collision on highway',36.1699,-115.1398,'Clear','Good','Dry','Heavy',15,1001,'Closed',2500.00,'No');
INSERT INTO roadway_incident_reports VALUES
(102,'2024-10-21','12:30',302,'Medium','Debris',0,0,0,'PRN002','Fallen tree branch on lane',34.0522,-118.2437,'Rain','Moderate','Wet','Moderate',10,1002,'InProgress',1500.00,'Yes');
INSERT INTO roadway_incident_reports VALUES
(103,'2024-10-22','22:10',303,'Low','Vehicle Stoppage',1,0,0,'PRN003','Stalled truck blocking left lane',40.7128,-74.0060,'Clear','Good','Dry','Low',5,1003,'Resolved',500.00,'No');

-- City infrastructure budget allocations
CREATE TABLE city_infrastructure_budget
(
    BudgetID INTEGER PRIMARY KEY,
    FiscalYear INTEGER,
    Department TEXT,
    ProjectCode TEXT,
    AllocationAmount REAL,
    ExpenditureToDate REAL,
    RemainingAmount REAL,
    ApprovalDate DATE,
    ManagerID INTEGER,
    FundingSource TEXT,
    CapitalOrOperating TEXT,
    ProjectDescription TEXT,
    PriorityLevel TEXT,
    Status TEXT,
    LastUpdated DATE,
    RevisionNumber INTEGER,
    CostCenter TEXT,
    FundingPercentage REAL,
    AuditFlag TEXT,
    Notes TEXT,
    ExternalGrantAmount REAL,
    SustainabilityScore REAL
);

INSERT INTO city_infrastructure_budget VALUES
(1,2025,'Transportation','TX001',5000000.00,1200000.00,3800000.00,'2024-09-15',2001,'Federal','Capital','New bridge over river','High','Active','2024-11-01',2,'CC100',75.0,'Pass','N/A',250000.00,85.5);
INSERT INTO city_infrastructure_budget VALUES
(2,2025,'Water','WV005',2000000.00,500000.00,1500000.00,'2024-09-20',2002,'State','Operating','Pipeline replacement phase 2','Medium','Active','2024-11-02',1,'CC101',60.0,'Pass','Urgent due to leak','0.00',78.0);
INSERT INTO city_infrastructure_budget VALUES
(3,2025,'Energy','EN010',3000000.00,800000.00,2200000.00,'2024-09-25',2003,'Municipal','Capital','Solar panel installation downtown','Low','Planned','2024-11-03',0,'CC102',50.0,'Pending','Awaiting contractor bids',500000.00,82.3);

-- Public transport ticket sales
CREATE TABLE public_transport_ticket_sales
(
    SaleID INTEGER PRIMARY KEY,
    TransactionDate DATE,
    TransactionTime TEXT,
    TicketType TEXT,
    RouteID INTEGER,
    PassengerID INTEGER,
    Price REAL,
    PaymentMethod TEXT,
    DiscountCode TEXT,
    AgencyID INTEGER,
    Zone INTEGER,
    BusNumber TEXT,
    TrainNumber TEXT,
    ValidationStatus TEXT,
    OperatorID INTEGER,
    DeviceID INTEGER,
    SaleLocation TEXT,
    LoyaltyPointsEarned INTEGER,
    RefundFlag TEXT,
    SaleChannel TEXT,
    Currency TEXT,
    ExchangeRate REAL
);

INSERT INTO public_transport_ticket_sales VALUES
(1001,'2024-11-01','08:00','SingleRide',10,3001,2.50,'Cash','NONE',501,1,'B12','NONE','Valid',401,601,'StationA',10,'No','InPerson','USD',1.0);
INSERT INTO public_transport_ticket_sales VALUES
(1002,'2024-11-01','09:15','DayPass',0,3002,5.00,'Card','SPRING',502,0,'NONE','NONE','Valid',402,602,'OnlinePortal',20,'No','Online','USD',1.0);
INSERT INTO public_transport_ticket_sales VALUES
(1003,'2024-11-01','17:45','MonthlyPass',0,3003,45.00,'MobileApp','SUMMER',503,0,'NONE','NONE','Valid',403,603,'MobileApp',0,'No','Mobile','USD',1.0);

-- Environmental impact assessments
CREATE TABLE environmental_impact_assessments
(
    AssessmentID INTEGER PRIMARY KEY,
    AssessmentDate DATE,
    SiteID INTEGER,
    ProjectName TEXT,
    ImpactScore REAL,
    AirQualityImpact REAL,
    WaterQualityImpact REAL,
    NoiseImpact REAL,
    WildlifeImpact REAL,
    MitigationPlan TEXT,
    AssessorID INTEGER,
    RegulatoryBody TEXT,
    Status TEXT,
    ReviewDate DATE,
    Comments TEXT,
    RecommendedActions TEXT,
    FollowUpDate DATE,
    RiskLevel TEXT,
    FundingAllocated REAL,
    DocumentationURL TEXT,
    GISReference TEXT,
    SoilContamination REAL
);

INSERT INTO environmental_impact_assessments VALUES
(201,'2024-10-15',401,'River Bridge Expansion',78.5,12.3,9.8,5.0,3.2,'Erosion control measures',301,'EPA','Approved','2024-11-01','All good','Implement monitoring', '2025-01-15','Medium',150000.00,'http://example.com/doc1','GIS123',0.0);
INSERT INTO environmental_impact_assessments VALUES
(202,'2024-10-20',402,'Urban Park Development',65.0,8.5,6.0,7.5,2.5,'Tree planting and sound barriers',302,'LocalCouncil','Pending','2024-11-05','Requires additional data','Revise design', '2025-02-20','High',200000.00,'http://example.com/doc2','GIS124',0.0);
INSERT INTO environmental_impact_assessments VALUES
(203,'2024-10-25',403,'Industrial Facility Upgrade',82.0,15.0,10.5,4.0,1.0,'Emission reduction technology',303,'StateAgency','Approved','2024-11-10','No issues','Schedule regular audits','2025-03-10','Low',250000.00,'http://example.com/doc3','GIS125',0.0);

-- Energy storage maintenance records
CREATE TABLE energy_storage_maintenance
(
    MaintenanceID INTEGER PRIMARY KEY,
    StorageUnitID INTEGER,
    MaintenanceDate DATE,
    MaintenanceType TEXT,
    TechnicianID INTEGER,
    DowntimeHours REAL,
    EnergyCapacityBefore REAL,
    EnergyCapacityAfter REAL,
    TemperatureC REAL,
    VoltageV REAL,
    CurrentA REAL,
    InspectionNotes TEXT,
    SafetyCheckPassed TEXT,
    Cost REAL,
    Vendor TEXT,
    WarrantyStatus TEXT,
    ReplacementPart TEXT,
    NextScheduledMaintenance DATE,
    ServiceLevelAgreement TEXT,
    PerformanceRatio REAL,
    Comments TEXT,
    LoggedBy INTEGER
);

INSERT INTO energy_storage_maintenance VALUES
(301,501,'2024-09-30','RoutineCheck',401,2.5,5000.0,4985.0,25.0,400.0,12.5,'All parameters normal','Yes',1200.00,'VendorA','Active','BatteryModule','2025-03-30','Gold','0.997','N/A',501);
INSERT INTO energy_storage_maintenance VALUES
(302,502,'2024-10-15','BatteryReplacement',402,4.0,5200.0,5100.0,27.0,410.0,13.0,'Replaced 2 modules','Yes',3500.00,'VendorB','Active','BatteryModule','2025-04-15','Platinum','0.981','Check cooling','502');
INSERT INTO energy_storage_maintenance VALUES
(303,503,'2024-11-01','SoftwareUpgrade',403,1.0,4800.0,4800.0,24.0,395.0,12.0,'Firmware updated','Yes',800.00,'VendorC','Active','None','2025-05-01','Silver','0.995','Verified performance','503');

-- Logistics freight contracts
CREATE TABLE logistics_freight_contracts
(
    ContractID INTEGER PRIMARY KEY,
    CarrierID INTEGER,
    ContractStartDate DATE,
    ContractEndDate DATE,
    ContractValue REAL,
    ServiceLevel TEXT,
    FreightType TEXT,
    MaxWeightKg REAL,
    MaxVolumeM3 REAL,
    OriginRegion TEXT,
    DestinationRegion TEXT,
    Currency TEXT,
    PaymentTerms TEXT,
    PenaltyClause TEXT,
    InsuranceRequired TEXT,
    AllowedModes TEXT,
    ContractStatus TEXT,
    RenewalOption TEXT,
    ContactPersonID INTEGER,
    SLAResponseTimeHours INTEGER,
    PerformanceScore REAL,
    Remarks TEXT
);

INSERT INTO logistics_freight_contracts VALUES
(401,601,'2024-01-01','2026-12-31',1500000.00,'Gold','FullTruckLoad',20000.0,80.0,'North','South','USD','Net30','5% of value','Yes','Road,Rail','Active','Optional',701,24,88.5,'N/A');
INSERT INTO logistics_freight_contracts VALUES
(402,602,'2024-06-01','2025-05-31',800000.00,'Silver','LessThanTruckLoad',12000.0,45.0,'East','West','EUR','Net45','2% of value','Yes','Road','Pending','None',702,48,75.0,'Awaiting approval');
INSERT INTO logistics_freight_contracts VALUES
(403,603,'2024-09-15','2027-09-14',2200000.00,'Platinum','Refrigerated','25000.0','100.0','Central','International','USD','Net60','10% of value','Yes','Road,Air','Active','Mandatory',703,12,92.3,'High priority client');

-- Solar panel performance metrics
CREATE TABLE solar_panel_performance_metrics
(
    MetricID INTEGER PRIMARY KEY,
    PanelID INTEGER,
    MeasurementDate DATE,
    EnergyGeneratedKWh REAL,
    EfficiencyPercent REAL,
    TemperatureC REAL,
    IrradianceWm2 REAL,
    DegradationRatePercent REAL,
    MaintenanceFlag TEXT,
    FaultCode TEXT,
    VoltageV REAL,
    CurrentA REAL,
    PowerOutputW REAL,
    AngleDegrees REAL,
    AzimuthDegrees REAL,
    CleaningCycleDate DATE,
    InverterID INTEGER,
    SiteID INTEGER,
    WeatherCondition TEXT,
    OperationalStatus TEXT,
    Remarks TEXT,
    RecordedBy INTEGER
);

INSERT INTO solar_panel_performance_metrics VALUES
(501,701,'2024-10-31',150.5,18.2,25.0,850.0,0.4,'No','None',30.0,5.0,150.0,30.0,180.0,'2024-10-15',801,901,'Clear','Online','N/A',801);
INSERT INTO solar_panel_performance_metrics VALUES
(502,702,'2024-10-31',140.2,17.8,27.0,820.0,0.5,'Yes','F01',29.5,4.8,141.6,28.0,175.0,'2024-10-10',802,902,'PartlyCloudy','Online','Slight output dip',802);
INSERT INTO solar_panel_performance_metrics VALUES
(503,703,'2024-10-31',130.0,17.0,30.0,800.0,0.6,'No','None',28.8,4.5,129.6,32.0,190.0,'2024-09-30',803,903,'Hot','Online','N/A',803);

-- Water supply distribution zones
CREATE TABLE water_supply_distribution_zones
(
    ZoneID INTEGER PRIMARY KEY,
    ZoneName TEXT,
    City TEXT,
    Population INTEGER,
    AvgDailyConsumptionM3 REAL,
    PeakDemandM3 REAL,
    SupplySource TEXT,
    TreatmentPlantID INTEGER,
    DistributionNetworkLengthKm REAL,
    LeakageRatePercent REAL,
    PressureAverageBar REAL,
    WaterQualityRating TEXT,
    MaintenanceSchedule TEXT,
    ZoneManagerID INTEGER,
    CreatedDate DATE,
    UpdatedDate DATE,
    RegulatoryCompliance TEXT,
    FundingSource TEXT,
    EmergencyPlanAvailable TEXT,
    RecentOutageFlag TEXT,
    Comments TEXT,
    GISAreaSqKm REAL
);

INSERT INTO water_supply_distribution_zones VALUES
(601,'NorthWest','Metropolis',250000,300.0,350.0,'River','101',120.5,1.2,3.5,'A','Quarterly',901,'2024-01-01','2024-11-01','Compliant','Municipal','Yes','No','Stable zone',85.0);
INSERT INTO water_supply_distribution_zones VALUES
(602,'SouthEast','Gotham',180000,210.0,260.0,'Lake','102',95.3,0.9,3.2,'B','Biannual',902,'2024-02-15','2024-11-02','Compliant','State','Yes','Yes','Recent repairs',70.2);
INSERT INTO water_supply_distribution_zones VALUES
(603,'Central','StarCity',320000,420.0,480.0,'Aquifer','103',150.0,1.5,3.8,'A','Monthly',903,'2024-03-10','2024-11-03','Compliant','Federal','Yes','No','Upgrade planned',110.5);

-- Urban mobility device inventory
CREATE TABLE urban_mobility_device_inventory
(
    DeviceID INTEGER PRIMARY KEY,
    DeviceType TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    DeploymentDate DATE,
    FirmwareVersion TEXT,
    GPSLatitude REAL,
    GPSLongitude REAL,
    Status TEXT,
    BatteryLevelPercent INTEGER,
    LastMaintenanceDate DATE,
    AssignedZone TEXT,
    ConnectivityType TEXT,
    IPAddress TEXT,
    MACAddress TEXT,
    SerialNumber TEXT,
    WarrantyExpiryDate DATE,
    OwnerDepartment TEXT,
    UsageCounter INTEGER,
    CalibrationDate DATE,
    Notes TEXT,
    CreatedBy INTEGER
);

INSERT INTO urban_mobility_device_inventory VALUES
(701,'Ebike','EcoRide','EB-100','2023-05-01','v1.2.3',37.7749,-122.4194,'Active',85,'2024-09-15','NorthWest','LTE','192.168.1.10','00:1A:2B:3C:4D:5E','SN001','2025-05-01','Transport','1500','2024-09-01','N/A',801);
INSERT INTO urban_mobility_device_inventory VALUES
(702,'Scooter','UrbanMover','SM-200','2023-07-15','v2.0.1',34.0522,-118.2437,'Active',78,'2024-10-05','SouthEast','5G','192.168.1.11','00:1A:2B:3C:4D:5F','SN002','2026-07-15','Transport','2000','2024-09-20','Battery check needed',802);
INSERT INTO urban_mobility_device_inventory VALUES
(703,'BikeShareDock','CycleHub','CD-300','2022-11-20','v3.3.0',40.7128,-74.0060,'Maintenance',40,'2024-08-20','Central','WiFi','192.168.1.12','00:1A:2B:3C:4D:60','SN003','2024-11-20','Operations','3500','2024-07-30','Dock repaired',803);