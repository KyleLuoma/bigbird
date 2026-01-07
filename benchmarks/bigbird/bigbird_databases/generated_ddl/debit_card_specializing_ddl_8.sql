-- Public transport fare information
CREATE TABLE public_transport_fares
(
    FareID INTEGER PRIMARY KEY,
    Mode TEXT,
    RouteNumber TEXT,
    Zone TEXT,
    TicketType TEXT,
    Price REAL,
    Currency TEXT,
    EffectiveDate TEXT,
    ExpirationDate TEXT,
    DiscountEligibility TEXT,
    AgeGroup TEXT,
    PassengerCategory TEXT,
    PaymentMethod TEXT,
    VendorID INTEGER,
    DayOfWeek TEXT,
    TimeBand TEXT,
    Season TEXT,
    DiscountRate REAL,
    Remarks TEXT,
    CreatedAt TEXT
);

INSERT INTO public_transport_fares VALUES (1,'Bus','B12','Zone1','Adult',2.5,'USD','2023-01-01','2023-12-31','None','All','Regular','Cash',101,'Monday','Peak','Winter',0.0,'', '2023-01-01');
INSERT INTO public_transport_fares VALUES (2,'Metro','M5','Zone2','Student',1.75,'USD','2023-02-01','2023-11-30','StudentID','Under26','Student','Card',102,'Tuesday','OffPeak','Spring',0.15,'StudentDiscount','2023-02-01');
INSERT INTO public_transport_fares VALUES (3,'Tram','T3','Zone3','Senior',1.0,'USD','2023-03-01','2023-10-31','SeniorID','65plus','Senior','Cash',103,'Wednesday','OffPeak','Fall',0.2,'SeniorDiscount','2023-03-01');

-- Road traffic incident records
CREATE TABLE road_traffic_incidents
(
    IncidentID INTEGER PRIMARY KEY,
    Date TEXT,
    Time TEXT,
    Location TEXT,
    Latitude REAL,
    Longitude REAL,
    Severity TEXT,
    IncidentType TEXT,
    VehiclesInvolved INTEGER,
    Casualties INTEGER,
    Description TEXT,
    ReportedBy TEXT,
    PoliceDivision TEXT,
    WeatherCondition TEXT,
    RoadCondition TEXT,
    ClosureDurationMinutes INTEGER,
    DetourRoute TEXT,
    Chargeable TEXT,
    InsuranceClaimNumber TEXT,
    FollowUpStatus TEXT,
    CreatedAt TEXT
);

INSERT INTO road_traffic_incidents VALUES (1001,'2023-04-15','08:30','Highway 5 near Exit 12',45.1234,-122.5678,'High','Collision',3,1,'Multi-vehicle collision involving a truck','OfficerJ','DivisionA','Rain','Wet',120,'Route 12','Yes','CLM20230415','Open','2023-04-15');
INSERT INTO road_traffic_incidents VALUES (1002,'2023-05-20','14:45','Main St and 3rd Ave',44.9876,-123.1234,'Medium','DisabledVehicle',1,0,'Stalled vehicle causing minor delay','OfficerK','DivisionB','Clear','Dry',30,'Main St Loop','No','CLM20230520','Closed','2023-05-20');
INSERT INTO road_traffic_incidents VALUES (1003,'2023-06-10','22:10','County Road 9',46.2345,-121.8765,'Low','AnimalCrossing',1,0,'Deer crossing causing temporary slowdown','OfficerL','DivisionC','Fog','Dry',15,'County Road 9B','No','CLM20230610','Closed','2023-06-10');

-- Fuel station security equipment inventory
CREATE TABLE fuel_station_security
(
    CameraID INTEGER PRIMARY KEY,
    StationID INTEGER,
    InstallationDate TEXT,
    Manufacturer TEXT,
    Model TEXT,
    Resolution TEXT,
    FieldOfViewDegrees INTEGER,
    StorageCapacityGB INTEGER,
    FirmwareVersion TEXT,
    LastMaintenanceDate TEXT,
    Status TEXT,
    AlertThreshold INTEGER,
    MotionDetectionEnabled TEXT,
    NightVisionEnabled TEXT,
    IPAddress TEXT,
    Port INTEGER,
    Username TEXT,
    PasswordHash TEXT,
    EncryptionType TEXT,
    LastUpdate TEXT,
    Notes TEXT
);

INSERT INTO fuel_station_security VALUES (2001,301,'2022-01-10','CamTech','CT-200','1080p',120,256,'v1.2.3','2023-01-05','Active',5,'Yes','Yes','192.168.10.20',8080,'admin','hash123','AES','2023-01-05','Main entrance camera');
INSERT INTO fuel_station_security VALUES (2002,302,'2021-11-22','SecureVid','SV-500','4K',130,512,'v2.0.1','2023-02-12','Active',3,'Yes','No','192.168.11.30',8090,'user','hash456','RSA','2023-02-12','Parking lot camera');
INSERT INTO fuel_station_security VALUES (2003,303,'2022-06-15','WatchGuard','WG-300','720p',110,128,'v1.0.0','2023-03-20','Inactive',10,'No','Yes','192.168.12.40',8070,'operator','hash789','AES','2023-03-20','Storefront camera');

-- Vehicle emissions testing records
CREATE TABLE vehicle_emissions_testing
(
    TestID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    TestDate TEXT,
    OdometerReading INTEGER,
    COLevelPPM REAL,
    HCLevelPPM REAL,
    NOxLevelPPM REAL,
    CO2LevelPPM REAL,
    TestResult TEXT,
    InspectorID INTEGER,
    FacilityID INTEGER,
    TemperatureC REAL,
    HumidityPercent REAL,
    BarometricPressureKPa REAL,
    TestDurationMinutes INTEGER,
    CalibrationDate TEXT,
    TestProtocol TEXT,
    Remarks TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT
);

INSERT INTO vehicle_emissions_testing VALUES (3001,5001,'2023-01-12',45200,0.45,15.2,0.03,238.5,'Pass',101,201,22.5,55.0,101.3,30,'2022-12-01','EPA2022','Initial test','2023-01-12','2023-01-12');
INSERT INTO vehicle_emissions_testing VALUES (3002,5002,'2023-02-20',123000,0.60,20.5,0.04,250.0,'Fail',102,202,21.0,60.0,100.8,35,'2023-01-15','EPA2022','Exceeded HC limit','2023-02-20','2023-02-20');
INSERT INTO vehicle_emissions_testing VALUES (3003,5003,'2023-03-05',78500,0.30,10.0,0.02,230.0,'Pass',103,203,23.0,50.0,101.0,28,'2023-02-10','EPA2022','All values within limits','2023-03-05','2023-03-05');

-- Renewable energy certificates registry
CREATE TABLE renewable_energy_certificates
(
    CertificateID INTEGER PRIMARY KEY,
    IssueDate TEXT,
    ExpirationDate TEXT,
    EnergySource TEXT,
    MegawattHours REAL,
    CertificateNumber TEXT,
    OwnerCompanyID INTEGER,
    Status TEXT,
    IssuingAuthority TEXT,
    ValidatedBy TEXT,
    ValidationDate TEXT,
    Region TEXT,
    CarbonOffsetTonnes REAL,
    RenewablePercentage REAL,
    TransactionID INTEGER,
    LinkedProductID INTEGER,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT
);

INSERT INTO renewable_energy_certificates VALUES (4001,'2023-01-01','2025-12-31','Solar',1500.5,'CERT-001',1001,'Active','StateEnergyDept','AuditorA','2023-01-15','NorthWest',1200.0,100.0,9001,3001,'First batch','admin','2023-01-01','2023-01-01');
INSERT INTO renewable_energy_certificates VALUES (4002,'2023-02-10','2026-02-09','Wind',2000.0,'CERT-002',1002,'Active','FederalEnergyAgency','AuditorB','2023-02-20','Midwest',1600.0,100.0,9002,3002,'Second batch','admin','2023-02-10','2023-02-10');
INSERT INTO renewable_energy_certificates VALUES (4003,'2023-03-15','2024-03-14','Hydro',800.75,'CERT-003',1003,'Pending','StateEnergyDept','AuditorC','2023-03-20','SouthEast',640.6,100.0,9003,3003,'Under review','admin','2023-03-15','2023-03-15');

-- Waste disposal facility records
CREATE TABLE waste_disposal_records
(
    RecordID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    Date TEXT,
    WasteType TEXT,
    QuantityTonnes REAL,
    Unit TEXT,
    DisposalMethod TEXT,
    ContractorID INTEGER,
    PermitNumber TEXT,
    ReceivedBy TEXT,
    ApprovedBy TEXT,
    InspectionDate TEXT,
    HazardLevel TEXT,
    StorageLocation TEXT,
    TemperatureC REAL,
    HumidityPercent REAL,
    Notes TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT,
    RecordStatus TEXT,
    ComplianceScore INTEGER
);

INSERT INTO waste_disposal_records VALUES (5001,601,'2023-04-01','Electronic','2.5','tonnes','Recycling',301,'PN-001','JohnDoe','JaneSmith','2023-04-02','Low','WarehouseA',22.0,45.0,'All e-waste sorted','2023-04-01','2023-04-02','Completed',95);
INSERT INTO waste_disposal_records VALUES (5002,602,'2023-05-12','Hazardous','1.2','tonnes','Incineration',302,'PN-002','AliceBrown','BobWhite','2023-05-13','High','SecureZoneB',30.0,55.0,'Handled per regulation','2023-05-12','2023-05-13','Completed',88);
INSERT INTO waste_disposal_records VALUES (5003,603,'2023-06-20','Organic','3.0','tonnes','Composting',303,'PN-003','MikeGreen','SaraBlue','2023-06-21','Medium','CompostPit1',18.0,60.0,'Ready for processing','2023-06-20','2023-06-21','Pending',80);

-- Employee shift assignments
CREATE TABLE employee_shift_assignments
(
    ShiftID INTEGER PRIMARY KEY,
    EmployeeID INTEGER,
    Department TEXT,
    ShiftDate TEXT,
    StartTime TEXT,
    EndTime TEXT,
    Role TEXT,
    Location TEXT,
    SupervisorID INTEGER,
    ShiftType TEXT,
    PayrollCode TEXT,
    BreakDurationMinutes INTEGER,
    OvertimeFlag TEXT,
    ShiftNotes TEXT,
    CreatedAt TEXT,
    UpdatedAt TEXT,
    ApprovedBy TEXT,
    ApprovalDate TEXT,
    ShiftPattern TEXT,
    ContactNumber TEXT,
    Email TEXT
);

INSERT INTO employee_shift_assignments VALUES (6001,7001,'Operations','2023-07-01','08:00','16:00','Technician','StationA',8001,'Day','PR-001',30,'No','Routine maintenance','2023-07-01','2023-07-01','ManagerA','2023-07-01','Mon-Fri','5551234567','techA@example.com');
INSERT INTO employee_shift_assignments VALUES (6002,7002,'CustomerService','2023-07-01','14:00','22:00','Agent','CallCenter',8002,'Evening','PR-002',45,'Yes','Handled overflow calls','2023-07-01','2023-07-01','ManagerB','2023-07-01','Mon-Fri','5559876543','agentB@example.com');
INSERT INTO employee_shift_assignments VALUES (6003,7003,'Management','2023-07-01','10:00','18:00','Supervisor','HeadOffice',8003,'Day','PR-003',60,'No','Weekly review meeting','2023-07-01','2023-07-01','DirectorC','2023-07-01','Mon-Fri','5555555555','superC@example.com');

-- Digital advertising performance metrics
CREATE TABLE digital_ad_performance_metrics
(
    MetricID INTEGER PRIMARY KEY,
    CampaignID INTEGER,
    AdPlacementID INTEGER,
    Date TEXT,
    Impressions INTEGER,
    Clicks INTEGER,
    Conversions INTEGER,
    CostUSD REAL,
    RevenueUSD REAL,
    CTR REAL,
    CPC REAL,
    CPM REAL,
    ConversionRate REAL,
    ROI REAL,
    ViewabilityPercent REAL,
    AverageWatchTimeSec REAL,
    DeviceType TEXT,
    Browser TEXT,
    GeoRegion TEXT,
    AudienceSegment TEXT,
    CreatedAt TEXT
);

INSERT INTO digital_ad_performance_metrics VALUES (7001,8001,9001,'2023-07-01',150000,3500,250,1200.00,1800.00,0.0233,0.3429,8.00,0.0714,0.5,85.0,15.2,'Mobile','Chrome','NorthAmerica','TechEnthusiasts','2023-07-01');
INSERT INTO digital_ad_performance_metrics VALUES (7002,8002,9002,'2023-07-01',200000,5000,400,1800.00,2600.00,0.0250,0.3600,9.00,0.0800,0.44,90.0,18.5,'Desktop','Firefox','Europe','Travelers','2023-07-01');
INSERT INTO digital_ad_performance_metrics VALUES (7003,8003,9003,'2023-07-01',120000,2500,180,900.00,1300.00,0.0208,0.3600,7.50,0.0778,0.44,80.0,12.0,'Tablet','Safari','Asia','Foodies','2023-07-01');

-- Supply chain disruption logs
CREATE TABLE supply_chain_disruption_logs
(
    DisruptionID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    StartDate TEXT,
    EndDate TEXT,
    AffectedProductID INTEGER,
    ImpactLevel TEXT,
    ReasonCode TEXT,
    Description TEXT,
    MitigationAction TEXT,
    EstimatedLossUSD REAL,
    ReportedBy TEXT,
    ReviewDate TEXT,
    Status TEXT,
    ResolutionDate TEXT,
    FollowUpOwner INTEGER,
    ContingencyPlanID INTEGER,
    RiskScore INTEGER,
    CreatedAt TEXT,
    UpdatedAt TEXT,
    Notes TEXT,
    ApprovalStatus TEXT
);

INSERT INTO supply_chain_disruption_logs VALUES (8001,9001,'2023-06-15','2023-06-20',1001,'High','RC-01','Port strike causing delays','Reroute via inland rail','250000.00','LogisticsMgr','2023-06-21','Resolved','2023-06-22',1101,2101,85,'2023-06-15','2023-06-22','Issue closed','Approved');
INSERT INTO supply_chain_disruption_logs VALUES (8002,9002,'2023-07-05','2023-07-08',1002,'Medium','RC-02','Supplier factory fire','Switch to backup supplier','120000.00','SupplyChainAnalyst','2023-07-09','Closed','2023-07-10',1102,2102,70,'2023-07-05','2023-07-10','Fire incident handled','Approved');
INSERT INTO supply_chain_disruption_logs VALUES (8003,9003,'2023-07-12','2023-07-15',1003,'Low','RC-03','Customs paperwork delay','Expedite clearance','30000.00','ComplianceOfficer','2023-07-16','Closed','2023-07-16',1103,2103,40,'2023-07-12','2023-07-16','Minor delay','Approved');

-- EV charging station usage sessions
CREATE TABLE ev_charging_station_usage
(
    SessionID INTEGER PRIMARY KEY,
    StationID INTEGER,
    ConnectorID INTEGER,
    VehicleID INTEGER,
    StartDateTime TEXT,
    EndDateTime TEXT,
    EnergyDeliveredKWh REAL,
    CostUSD REAL,
    PaymentMethod TEXT,
    UserID INTEGER,
    SessionStatus TEXT,
    PowerLevelKW REAL,
    DurationMinutes INTEGER,
    AvgPowerKW REAL,
    CostPerKWh REAL,
    Currency TEXT,
    OperatorID INTEGER,
    LocationLat REAL,
    LocationLon REAL,
    CreatedAt TEXT
);

INSERT INTO ev_charging_station_usage VALUES (9001,1001,1,2001,'2023-07-01T08:15:00','2023-07-01T09:45:00',30.5,9.15,'Card',3001,'Completed',22.0,90,20.3,0.30,'USD',4001,34.0522,-118.2437,'2023-07-01');
INSERT INTO ev_charging_station_usage VALUES (9002,1002,2,2002,'2023-07-01T10:00:00','2023-07-01T11:30:00',45.0,13.50,'App',3002,'Completed',30.0,90,30.0,0.30,'USD',4002,40.7128,-74.0060,'2023-07-01');
INSERT INTO ev_charging_station_usage VALUES (9003,1003,3,2003,'2023-07-01T12:20:00','2023-07-01T13:05:00',20.0,6.00,'RFID',3003,'Completed',22.0,45,18.0,0.30,'USD',4003,37.7749,-122.4194,'2023-07-01');