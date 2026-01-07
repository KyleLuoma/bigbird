-- City cybersecurity incidents table
CREATE TABLE city_cybersecurity_incidents
(
    IncidentID INTEGER PRIMARY KEY,
    IncidentDate DATE,
    IncidentTime TEXT,
    City TEXT,
    AffectedSystem TEXT,
    IncidentType TEXT,
    Severity INTEGER,
    Description TEXT,
    ReportedBy TEXT,
    MitigationStatus TEXT,
    ResolutionDate DATE,
    DowntimeMinutes INTEGER,
    DataLostGB REAL,
    NotificationSent INTEGER,
    IncidentCost REAL,
    ExternalAgencyInvolved TEXT,
    IncidentCategory TEXT,
    PatchApplied INTEGER,
    FollowUpDate DATE,
    RootCause TEXT
);

INSERT INTO city_cybersecurity_incidents VALUES (1,'2024-03-15','08:45','Metropolis','PaymentGateway','Malware',5,'Ransomware encrypted files','ITDept','Containment','2024-03-16',720,12.5,1,25000.00,'FederalCyberAgency','Financial','0','2024-04-01','Phishing email link');
INSERT INTO city_cybersecurity_incidents VALUES (2,'2024-06-02','14:20','Gotham','SurveillanceSystem','UnauthorizedAccess',3,'Suspicious login from unknown IP','SecurityOps','Monitoring','2024-06-03',30,0.0,1,5000.00,'LocalPolice','Security','1','2024-06-10','Stolen credentials');
INSERT INTO city_cybersecurity_incidents VALUES (3,'2024-09-10','22:10','StarCity','PublicWebsite','DDoS',4,'High traffic causing downtime','NetworkTeam','Mitigated','2024-09-11',180,0.0,1,15000.00,'ISPProvider','Availability','0','2024-09-20','Botnet attack');

-- Public art restoration projects table
CREATE TABLE public_art_restoration_projects
(
    ProjectID INTEGER PRIMARY KEY,
    ArtworkID INTEGER,
    SiteLocation TEXT,
    StartDate DATE,
    EndDate DATE,
    RestorerCompany TEXT,
    FundingSource TEXT,
    Budget REAL,
    EstimatedCompletionMonths INTEGER,
    ConservationMethod TEXT,
    MaterialsUsed TEXT,
    RestorationPhase TEXT,
    LeadConservator TEXT,
    PhotoReference TEXT,
    Status TEXT,
    PublicAccess INTEGER,
    Notes TEXT,
    PermitNumber TEXT,
    InspectionDate DATE,
    ProjectOutcome TEXT
);

INSERT INTO public_art_restoration_projects VALUES (101,555,'Central Plaza','2024-01-10','2024-06-30','HeritageWorks','CityGrant',85000.00,6,'Cleaning','MildDetergent','Initial','Maria Lopez','photo101.jpg','InProgress',1,'Surface dust removal','PERM-2023-45','2024-01-15','Pending');
INSERT INTO public_art_restoration_projects VALUES (102,556,'Riverbank Park','2024-03-01','2024-09-15','ArtRenew','PrivateDonor',120000.00,7,'Stabilization','AcrylicResin','Mid','Liam Chen','photo102.jpg','Completed',1,'Structural cracks repaired','PERM-2023-78','2024-03-05','Successful');
INSERT INTO public_art_restoration_projects VALUES (103,557,'Museum Courtyard','2024-05-20','2025-02-28','ConserveNow','FederalFund',200000.00,9,'Repainting','EcoPaint','Final','Aisha Khan','photo103.jpg','Pending',0,'Awaiting final approvals','PERM-2024-12','2024-05-25','NotStarted');

-- Marine fuel consumption logs table
CREATE TABLE marine_fuel_consumption_logs
(
    LogID INTEGER PRIMARY KEY,
    VesselID INTEGER,
    VoyageNumber TEXT,
    DeparturePort TEXT,
    ArrivalPort TEXT,
    DepartureDate DATE,
    ArrivalDate DATE,
    FuelType TEXT,
    FuelVolumeLiters REAL,
    AvgSpeedKnots REAL,
    DistanceNm REAL,
    EngineHours REAL,
    CO2EmissionsKg REAL,
    CrewCount INTEGER,
    CaptainName TEXT,
    WeatherConditions TEXT,
    CargoWeightTon REAL,
    BunkerSupplier TEXT,
    InvoiceNumber TEXT,
    Comments TEXT
);

INSERT INTO marine_fuel_consumption_logs VALUES (1001,301,'VY-2024-01','Hamburg','Rotterdam','2024-02-01','2024-02-02','MDO',15000.5,18.2,350.0,22.5,42000.0,12,'Captain Erik','Clear','5000.0','FuelCoA','INV-9001','No issues');
INSERT INTO marine_fuel_consumption_logs VALUES (1002,302,'VY-2024-02','Singapore','Jakarta','2024-03-10','2024-03-12','HFO',38000.0,16.0,800.0,48.0,108000.0,20,'Captain Mei','Rainy','15000.0','FuelCoB','INV-9002','Minor delay due to weather');
INSERT INTO marine_fuel_consumption_logs VALUES (1003,303,'VY-2024-03','LosAngeles','SanFrancisco','2024-04-15','2024-04-15','MGO',8000.0,20.5,380.0,12.0,24000.0,8,'Captain Luis','Fog','2000.0','FuelCoC','INV-9003','All systems nominal');

-- Electric vehicle battery swap stations table
CREATE TABLE electric_vehicle_battery_swap_stations
(
    StationID INTEGER PRIMARY KEY,
    OperatorName TEXT,
    City TEXT,
    Address TEXT,
    Latitude REAL,
    Longitude REAL,
    TotalSwapPorts INTEGER,
    AvailablePorts INTEGER,
    PowerRatingKW REAL,
    OpenHours TEXT,
    ContactNumber TEXT,
    MaintenanceCompany TEXT,
    LastInspectionDate DATE,
    SwapFeeUSD REAL,
    SubscriptionPlan TEXT,
    RenewableEnergyPercentage REAL,
    StationStatus TEXT,
    DailySwaps INTEGER,
    AvgSwapTimeMinutes REAL,
    CapacityKWh REAL
);

INSERT INTO electric_vehicle_battery_swap_stations VALUES (201,'SwapPower','Metroville','123 Main St',40.7128,-74.0060,12,8,350.0,'06:00-22:00','555-0100','TechMaintain','2024-01-20',15.00,'Standard',85.0,'Active',45,5.2,500.0);
INSERT INTO electric_vehicle_battery_swap_stations VALUES (202,'QuickCharge','LakeTown','456 Lake Rd',34.0522,-118.2437,8,3,250.0,'07:00-23:00','555-0200','EcoServ','2024-02-10',12.00,'Premium',92.0,'Active',30,4.8,350.0);
INSERT INTO electric_vehicle_battery_swap_stations VALUES (203,'EcoSwap','Hill City','789 Hill Ave',41.8781,-87.6298,10,5,300.0,'05:00-21:00','555-0300','GreenTech','2024-03-05',10.00,'Basic',78.0,'Maintenance',20,6.0,400.0);

-- Drone flight permission records table
CREATE TABLE drone_flight_permission_records
(
    PermissionID INTEGER PRIMARY KEY,
    DroneID TEXT,
    OperatorCompany TEXT,
    PilotLicenseNumber TEXT,
    FlightDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    FlightAltitudeMeters REAL,
    FlightArea TEXT,
    Purpose TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    PermitNumber TEXT,
    AirspaceClass TEXT,
    WeatherCondition TEXT,
    RiskAssessmentScore INTEGER,
    InsurancePolicyNumber TEXT,
    FeeUSD REAL,
    Remarks TEXT,
    ExpirationDate DATE
);

INSERT INTO drone_flight_permission_records VALUES (301,'DRN-001','AeroLogics','LIC-1001','2024-06-15','09:00','09:30',120.0,'Industrial Park','Inspection','John Smith','2024-06-01','PERM-6001','C0','Clear',2,'INS-5001',150.00,'Routine',2024-12-31);
INSERT INTO drone_flight_permission_records VALUES (302,'DRN-002','SkyCapture','LIC-1002','2024-07-20','14:15','14:45',80.0,'City Center','Photography','Emily Davis','2024-07-05','PERM-6002','B1','Partly Cloudy',3,'INS-5002',200.00,'Film shoot',2025-01-31);
INSERT INTO drone_flight_permission_records VALUES (303,'DRN-003','RapidSurvey','LIC-1003','2024-08-05','11:00','11:45',150.0,'Coastal Area','Mapping','Michael Lee','2024-07-20','PERM-6003','D','Windy',4,'INS-5003',250.00,'Survey mission',2025-06-30);

-- Smart building energy controls table
CREATE TABLE smart_building_energy_controls
(
    ControlID INTEGER PRIMARY KEY,
    BuildingID INTEGER,
    SystemType TEXT,
    Vendor TEXT,
    InstallationDate DATE,
    FirmwareVersion TEXT,
    ControlMode TEXT,
    SetpointTemperatureC REAL,
    HumiditySetpoint REAL,
    LightingLevelPercent INTEGER,
    OccupancySensorEnabled INTEGER,
    EnergySavingMode TEXT,
    AnnualSavingsKWh REAL,
    MaintenanceContractID INTEGER,
    LastCalibrationDate DATE,
    Status TEXT,
    AlarmThreshold REAL,
    PowerFactor REAL,
    CO2LevelPPM REAL,
    RemoteAccessEnabled INTEGER
);

INSERT INTO smart_building_energy_controls VALUES (401,101,'HVAC','ThermoTech','2022-05-10','v3.2','Auto',22.5,45.0,70,1,'Eco',12000.5,501,'2023-11-01','Operational',75.0,0.98,600,1);
INSERT INTO smart_building_energy_controls VALUES (402,102,'Lighting','Lumina','2021-09-15','v2.8','Scheduled',0.0,0.0,85,1,'NightShift',8000.0,502,'2023-10-20','Operational',90.0,0.95,450,1);
INSERT INTO smart_building_energy_controls VALUES (403,103,'PowerManagement','VoltGen','2023-01-20','v1.5','Manual',0.0,0.0,100,0,'None',5000.0,503,'2024-02-10','Commissioning',80.0,0.97,500,0);

-- Roadway noise barrier inventory table
CREATE TABLE roadway_noise_barrier_inventory
(
    BarrierID INTEGER PRIMARY KEY,
    HighwayID TEXT,
    SegmentStartM REAL,
    SegmentEndM REAL,
    InstallationDate DATE,
    MaterialType TEXT,
    HeightMeters REAL,
    LengthMeters REAL,
    NoiseReductionDb REAL,
    Manufacturer TEXT,
    WarrantyYears INTEGER,
    ConditionRating INTEGER,
    LastInspectionDate DATE,
    MaintenanceNeeded INTEGER,
    Contractor TEXT,
    CostUSD REAL,
    GeoLatitude REAL,
    GeoLongitude REAL,
    ReplacementPlannedDate DATE,
    Notes TEXT
);

INSERT INTO roadway_noise_barrier_inventory VALUES (501,'HWY-1',0.0,500.0,'2020-03-12','Concrete',3.0,500.0,7.5,'BarrierCo',15,8,'2023-07-01',0,'BuildRight','250000.00',38.8951,-77.0364','2028-03-12','No issues');
INSERT INTO roadway_noise_barrier_inventory VALUES (502,'HWY-2',1200.0,1700.0,'2021-06-25','Metal',2.5,500.0,6.8,'MetalWorks',10,7,'2024-01-15',1,'SteelBuild','180000.00',34.0522,-118.2437','2026-06-25','Corrosion observed');
INSERT INTO roadway_noise_barrier_inventory VALUES (503,'HWY-3',2500.0,3000.0,'2019-11-08','Composite',3.2,500.0,8.0,'CompositeInc',20,9,'2022-11-20',0,'CompositeTech','300000.00',40.7128,-74.0060','2029-11-08','All good');

-- Hydrogen refueling station inventory table
CREATE TABLE hydrogen_refueling_station_inventory
(
    StationID INTEGER PRIMARY KEY,
    Operator TEXT,
    City TEXT,
    Address TEXT,
    Latitude REAL,
    Longitude REAL,
    MaxHydrogenCapacityKg REAL,
    CurrentInventoryKg REAL,
    NumberOfDispensers INTEGER,
    DispenserCapacityKgPerMinute REAL,
    PowerSupplyKW REAL,
    RenewableEnergyShare REAL,
    SafetyCertification TEXT,
    LastSafetyAuditDate DATE,
    OperatingHours TEXT,
    ContactPhone TEXT,
    ServiceProvider TEXT,
    MaintenanceSchedule TEXT,
    Status TEXT,
    AvgRefuelTimeMinutes REAL
);

INSERT INTO hydrogen_refueling_station_inventory VALUES (601,'HydroFuel','River City','101 River Rd',36.1699,-115.1398,2000.0,1500.0,4,12.5,500.0,80.0,'ISO-9001','2023-12-10','06:00-22:00','555-4001','ServicePlus','Quarterly','Active',8.5);
INSERT INTO hydrogen_refueling_station_inventory VALUES (602,'EcoHydro','Mountain View','202 Summit St',37.3861,-122.0839,1500.0,900.0,3,10.0,400.0,70.0,'ISO-14001','2024-02-05','07:00-23:00','555-4002','CleanTech','BiAnnual','Active',9.2);
INSERT INTO hydrogen_refueling_station_inventory VALUES (603,'PureHydrogen','Coastal Bay','303 Ocean Ave',34.0195,-118.4912,2500.0,2000.0,5,15.0,600.0,85.0,'ISO-45001','2023-09-20','05:00-21:00','555-4003','HydroServe','Annual','Maintenance',7.8);

-- Solar panel maintenance schedule table
CREATE TABLE solar_panel_maintenance_schedule
(
    ScheduleID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    PanelArrayID INTEGER,
    MaintenanceDate DATE,
    TechnicianID INTEGER,
    InspectionResult TEXT,
    CleaningPerformed INTEGER,
    RepairPerformed INTEGER,
    PartsReplaced TEXT,
    EnergyLossPercentage REAL,
    WeatherConditions TEXT,
    DurationHours REAL,
    SupervisorName TEXT,
    WorkOrderNumber TEXT,
    SafetyChecklistPassed INTEGER,
    Comments TEXT,
    NextScheduledDate DATE,
    DowntimeMinutes INTEGER,
    CostUSD REAL,
    WarrantyImpact TEXT
);

INSERT INTO solar_panel_maintenance_schedule VALUES (701,1,10,'2024-04-10',301,'Good',1,0,'None',0.3,'Sunny',2.5,'Alice Green','WO-8001',1,'No issues detected','2024-10-10',15,1200.00,'None');
INSERT INTO solar_panel_maintenance_schedule VALUES (702,2,12,'2024-05-22',302,'Fair',1,1,'InverterModule',1.2,'Cloudy',3.0,'Bob White','WO-8002',1,'Replaced faulty inverter','2024-11-22',30,2500.00','Reduced warranty by 6 months');
INSERT INTO solar_panel_maintenance_schedule VALUES (703,3,15,'2024-06-15',303,'Poor',0,1,'PanelFrames',2.5,'Rainy',4.0,'Carol Black','WO-8003',0,'Severe corrosion, warranty claim pending','2025-01-15',45,4000.00','Warranty voided');

-- Vehicle telematics alerts table
CREATE TABLE vehicle_telematics_alerts
(
    AlertID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    AlertTimestamp TEXT,
    AlertType TEXT,
    Severity INTEGER,
    Description TEXT,
    Latitude REAL,
    Longitude REAL,
    SpeedKph REAL,
    EngineRPM INTEGER,
    FuelLevelPercent INTEGER,
    BatteryVoltage REAL,
    DriverID INTEGER,
    Resolved INTEGER,
    ResolutionTimestamp TEXT,
    AssignedTo TEXT,
    FollowUpRequired INTEGER,
    AdditionalInfo TEXT,
    PolicyViolation INTEGER,
    AlertSource TEXT
);

INSERT INTO vehicle_telematics_alerts VALUES (801,1001,'2024-07-01 08:15:00','Speeding',3,'Speed exceeded 120 km/h','40.7128','-74.0060',130.5,3500,45,12.6,501,0,NULL,'DispatchTeam',1,'GPS confirmed','0','OnboardModule');
INSERT INTO vehicle_telematics_alerts VALUES (802,1002,'2024-07-02 14:45:00','LowBattery',2,'Battery voltage dropped below 10V','34.0522','-118.2437',80.0,2500,70,9.8,502,1,'2024-07-02 15:00:00','MaintenanceCrew',0,'Replaced battery','0','OnboardModule');
INSERT INTO vehicle_telematics_alerts VALUES (803,1003,'2024-07-03 22:30:00','HarshBraking',4,'Deceleration > 5 m/s2','41.8781','-87.6298',60.0,1800,60,12.0,503,0,NULL,'SafetyOfficer',1,'Driver coaching needed','1','OnboardModule');