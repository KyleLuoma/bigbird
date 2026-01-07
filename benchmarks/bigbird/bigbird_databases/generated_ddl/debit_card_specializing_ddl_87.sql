-- City transportation permits
CREATE TABLE city_transportation_permits
(
    PermitID INTEGER PRIMARY KEY,
    PermitNumber TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    PermitType TEXT,
    ApplicantName TEXT,
    ApplicantAddress TEXT,
    ApplicantPhone TEXT,
    VehicleClass TEXT,
    VehicleCount INTEGER,
    RouteDescription TEXT,
    ZoneCode TEXT,
    FeeAmount REAL,
    Status TEXT,
    ReviewOfficer TEXT,
    ReviewDate DATE,
    Comments TEXT,
    AuthorizedBy TEXT,
    AuthorizationDate DATE,
    IsRenewable INTEGER,
    InspectionRequired INTEGER,
    LastInspectionDate DATE,
    InspectionStatus TEXT,
    RenewalNoticeSent INTEGER,
    DigitalCopyPath TEXT
);
INSERT INTO city_transportation_permits VALUES (1,'CTP-0001','2023-01-15','2024-01-14','Bus','Metro Transit','123 Main St','5551234567','Large','25','Downtown Loop','Z01',1500.00,'Active','John Doe','2023-01-10','N/A','Jane Smith','2023-01-12',1,1,'2023-12-20','Passed',0,'/files/ctp_0001.pdf');
INSERT INTO city_transportation_permits VALUES (2,'CTP-0002','2022-06-01','2023-05-31','Taxi','City Cabs','456 Oak Ave','5559876543','Medium','12','Midtown Shuttle','Z03',800.00,'Expired','Emily Clark','2022-05-25','Late renewal','Mark Lee','2022-05-28',0,0,NULL,'N/A',1,'/files/ctp_0002.pdf');
INSERT INTO city_transportation_permits VALUES (3,'CTP-0003','2023-03-20','2025-03-19','Delivery','QuickShip Logistics','789 Pine Rd','5555551212','Small','40','Industrial Zone A','Z07',2000.00,'Active','Sarah Nguyen','2023-03-15','All good','Victor Patel','2023-03-18',1,1,'2024-03-15','Pending',0,'/files/ctp_0003.pdf');

-- Bike share operator metrics
CREATE TABLE bike_share_operator_metrics
(
    OperatorID INTEGER PRIMARY KEY,
    OperatorName TEXT,
    ReportDate DATE,
    TotalStations INTEGER,
    TotalBikes INTEGER,
    AvgUtilizationRate REAL,
    AvgRideDurationMin REAL,
    TotalRides INTEGER,
    PeakHourStart INTEGER,
    PeakHourEnd INTEGER,
    MaintenanceIncidents INTEGER,
    AvgRepairTimeHours REAL,
    CustomerComplaints INTEGER,
    AvgSatisfactionScore REAL,
    RevenueUSD REAL,
    OperatingCostUSD REAL,
    NetProfitUSD REAL,
    SubsidyUSD REAL,
    AvgBatteryHealth REAL,
    BikesInService INTEGER,
    BikesOutOfService INTEGER,
    AvgDockingTimeSec REAL,
    ExpansionPlans TEXT,
    RegulatoryScore INTEGER,
    DataSource TEXT,
    Notes TEXT,
    UpdatedBy TEXT,
    UpdateTimestamp DATE,
    IsActive INTEGER
);
INSERT INTO bike_share_operator_metrics VALUES (101,'Urban Wheels','2023-12-31',120,3400,68.5,15.2,254000,7,9,35,2.4,78,4.5,1250000,800000,450000,150000,92.3,3200,200,45.7,'North Expansion Q2','85','Internal','Quarterly report','Alice','2024-01-02',1);
INSERT INTO bike_share_operator_metrics VALUES (102,'Cycle City','2023-12-31',85,2100,55.0,13.8,180500,8,10,20,3.1,45,4.0,900000,620000,280000,100000,88.1,1900,200,52.3,'Introduce e-bikes','78','External','Annual review','Bob','2024-01-03',1);
INSERT INTO bike_share_operator_metrics VALUES (103,'Pedal Power','2023-12-31',60,1500,62.3,14.5,122300,6,8,15,1.9,30,4.2,600000,450000,150000,50000,90.0,1400,100,48.9,'Maintain current network','82','Internal','Monthly update','Carol','2024-01-02',1);

-- Solar farm investor details
CREATE TABLE solar_farm_investor_details
(
    InvestorID INTEGER PRIMARY KEY,
    InvestorName TEXT,
    InvestmentDate DATE,
    FarmID INTEGER,
    InvestmentAmountUSD REAL,
    EquityPercentage REAL,
    PreferredReturnRate REAL,
    InvestmentType TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Country TEXT,
    State TEXT,
    City TEXT,
    TaxIdentifier TEXT,
    FundingSource TEXT,
    LegalEntity TEXT,
    RegistrationNumber TEXT,
    InvestorRating INTEGER,
    Notes TEXT,
    LastUpdate DATE,
    UpdatedBy TEXT,
    IsActive INTEGER,
    CommitmentDate DATE,
    ExpectedExitDate DATE,
    ExitStrategy TEXT,
    RiskProfile TEXT,
    PortfolioAllocationPercentage REAL,
    DocumentationLink TEXT,
    ComplianceStatus TEXT
);
INSERT INTO solar_farm_investor_details VALUES (5001,'Green Capital Partners','2022-04-15',3001,25000000,12.5,7.0,'Equity','Laura Greene','5551112222','lg@example.com','USA','CA','Los Angeles','US123456789','Private','LLC','REG-98765',9,'Long term investment','2023-12-01','Admin',1,'2022-04-10','2032-04-15','Sale','Medium',5.0,'/docs/investor_5001.pdf','Compliant');
INSERT INTO solar_farm_investor_details VALUES (5002,'Solar Ventures Ltd','2021-09-20',3002,18000000,15.0,6.5,'Debt','Michael Sun','5553334444','ms@example.org','UK','England','London','UK987654321','Bank','PLC','REG-12345',8,'Convertible note','2023-11-15','Admin',1,'2021-09-15','2026-09-20','Conversion','Low',4.5,'/docs/investor_5002.pdf','Compliant');
INSERT INTO solar_farm_investor_details VALUES (5003,'EcoFund International','2023-01-05',3003,30000000,20.0,8.0,'Equity','Anita Rao','5557778888','ar@ecofund.com','India','Maharashtra','Mumbai','IN1122334455','Institutional','Trust','REG-55555',9,'Strategic partnership','2024-01-02','Admin',1,'2023-01-01','2033-01-05','IPO','High',6.0,'/docs/investor_5003.pdf','Compliant');

-- Hydrogen fuel station maintenance
CREATE TABLE hydrogen_fuel_station_maintenance
(
    MaintenanceID INTEGER PRIMARY KEY,
    StationID INTEGER,
    MaintenanceDate DATE,
    TechnicianID INTEGER,
    ServiceType TEXT,
    DurationHours REAL,
    PartsReplaced TEXT,
    PartsCostUSD REAL,
    LaborCostUSD REAL,
    TotalCostUSD REAL,
    SafetyCheckPassed INTEGER,
    PressureTestResult REAL,
    LeakDetected INTEGER,
    LeakSeverity TEXT,
    CalibrationPerformed INTEGER,
    CalibrationResult REAL,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    Comments TEXT,
    SupervisorName TEXT,
    SupervisorApproval INTEGER,
    RecordCreated DATE,
    CreatedBy TEXT,
    IsVerified INTEGER,
    VerificationDate DATE,
    VerifiedBy TEXT,
    DelayReason TEXT,
    WeatherConditions TEXT,
    TemperatureC REAL,
    HumidityPercent REAL,
    DocumentationLink TEXT
);
INSERT INTO hydrogen_fuel_station_maintenance VALUES (20001,9001,'2023-11-10',301,'Routine Inspection',2.5,'Valve,Sensor',500.00,250.00,750.00,1,150.0,0,NULL,1,0.0,0,NULL,'All parameters normal','Karen Lee',1,'2023-11-10','System',1,'2023-11-10','Karen Lee',NULL,'Clear','15.0',45.0,'/docs/maint_20001.pdf');
INSERT INTO hydrogen_fuel_station_maintenance VALUES (20002,9002,'2023-10-05',302,'Leak Repair',4.0,'Seal',300.00,350.00,650.00,1,148.5,1,'Medium',0,0.0,1,'2023-10-20','Leak repaired, monitor pressure','John Miller',1,'2023-10-05','System',1,'2023-10-06','John Miller','Parts backordered','Rainy','12.0',55.0,'/docs/maint_20002.pdf');
INSERT INTO hydrogen_fuel_station_maintenance VALUES (20003,9003,'2023-12-01',303,'Calibration',3.0,'Sensor',250.00,300.00,550.00,1,152.2,0,NULL,1,152.2,0,NULL,'Calibration successful','Emily Davis',1,'2023-12-01','System',1,'2023-12-01','Emily Davis',NULL,'Sunny','14.5',40.0,'/docs/maint_20003.pdf');

-- Public art funding grants
CREATE TABLE public_art_funding_grants
(
    GrantID INTEGER PRIMARY KEY,
    GrantName TEXT,
    FundingAgency TEXT,
    AwardDate DATE,
    AmountUSD REAL,
    DurationMonths INTEGER,
    ProjectTitle TEXT,
    ArtistName TEXT,
    ArtistContact TEXT,
    ProjectLocation TEXT,
    City TEXT,
    State TEXT,
    Country TEXT,
    Category TEXT,
    EligibilityCriteria TEXT,
    ApplicationDeadline DATE,
    Status TEXT,
    ReviewPanel TEXT,
    ReviewScore REAL,
    FundingPurpose TEXT,
    MatchingFundsRequired INTEGER,
    MatchingFundAmountUSD REAL,
    ReportingRequirements TEXT,
    FinalReportDue DATE,
    GrantCoordinator TEXT,
    CoordinatorContact TEXT,
    IsRenewable INTEGER,
    RenewalEligibility TEXT,
    Notes TEXT,
    DocumentationLink TEXT,
    ComplianceStatus TEXT
);
INSERT INTO public_art_funding_grants VALUES (701,'Mural Initiative Grant','National Arts Council','2023-02-15',50000,12,'Riverfront Mural','Luis Martinez','5552223333','Riverfront Plaza','Portland','OR','USA','Mural','Non-profit','2022-12-31','Awarded','Panel A',88.5,'Creation of public mural','1',20000,'Quarterly reports','2024-02-14','Megan Clark','5554445555',0,'N/A','Approved by city council','/docs/grant_701.pdf','Compliant');
INSERT INTO public_art_funding_grants VALUES (702,'Sculpture Installation Grant','State Cultural Fund','2022-09-01',75000,24,'Park Sculpture','Aisha Khan','5557779999','Central Park','Austin','TX','USA','Sculpture','Artist residency','2022-07-31','Completed','Panel B',92.0,'Installation of steel sculpture','0',0,'Annual report','2024-08-31','David Lee','5551112222',1,'Yes if project extended','Extended due to weather','/docs/grant_702.pdf','Compliant');
INSERT INTO public_art_funding_grants VALUES (703,'Digital Arts Grant','City Innovation Office','2023-05-20',30000,6,'Interactive Light Display','Nina Zhou','5553336666','Downtown Square','Seattle','WA','USA','Digital','Open to all','2023-04-30','Pending','Panel C',NULL,'Proposal under review','0',0,'Mid-term report','2023-11-20','Sandra Kim','5558889999',0,'N/A','Awaiting decision','/docs/grant_703.pdf','Pending');

-- Municipal water pressure logs
CREATE TABLE municipal_water_pressure_logs
(
    LogID INTEGER PRIMARY KEY,
    MeterID INTEGER,
    RecordTimestamp DATETIME,
    PressureKPa REAL,
    FlowRateLpm REAL,
    TemperatureC REAL,
    ValveStatus TEXT,
    AlarmTriggered INTEGER,
    MaintenanceFlag INTEGER,
    OperatorID INTEGER,
    ZoneCode TEXT,
    District TEXT,
    City TEXT,
    State TEXT,
    Country TEXT,
    BatteryLevelPercent INTEGER,
    SignalStrengthPercent INTEGER,
    FirmwareVersion TEXT,
    CalibrationDate DATE,
    NextCalibrationDue DATE,
    DataQualityScore REAL,
    Remarks TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    IsVerified INTEGER,
    VerifiedBy TEXT,
    VerificationDate DATE,
    SourceSystem TEXT,
    Latitude REAL,
    Longitude REAL,
    DocumentationLink TEXT
);
INSERT INTO municipal_water_pressure_logs VALUES (90001,4001,'2023-12-01 08:00:00',120.5,350.2,15.0,'Open',0,0,150,'Z01','North District','Metropolis','NY','USA',85,90,'v1.2','2023-06-01','2024-06-01',0.98,'Normal operation','System','2023-12-01',1,'Laura','2023-12-01','SCADA','40.7128','-74.0060','/logs/pressure_90001.csv');
INSERT INTO municipal_water_pressure_logs VALUES (90002,4002,'2023-12-01 09:00:00',115.0,340.0,14.5,'Open',0,0,151,'Z02','South District','Metropolis','NY','USA',80,85,'v1.2','2023-06-01','2024-06-01',0.95,'Slight drop observed','System','2023-12-01',1,'Laura','2023-12-01','SCADA','40.7306','-73.9352','/logs/pressure_90002.csv');
INSERT INTO municipal_water_pressure_logs VALUES (90003,4003,'2023-12-01 10:00:00',130.0,360.5,15.8,'Closed',1,1,152,'Z03','East District','Metropolis','NY','USA',78,80,'v1.2','2023-06-01','2024-06-01',0.89,'Valve closed for maintenance','System','2023-12-01',1,'Laura','2023-12-01','SCADA','40.7580','-73.9855','/logs/pressure_90003.csv');

-- Grid substation audit
CREATE TABLE grid_substation_audit
(
    AuditID INTEGER PRIMARY KEY,
    SubstationID INTEGER,
    AuditDate DATE,
    AuditorName TEXT,
    AuditorContact TEXT,
    OverallScore REAL,
    ComplianceStatus TEXT,
    FindingsCount INTEGER,
    CriticalFindings INTEGER,
    NonCriticalFindings INTEGER,
    Recommendations TEXT,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    EquipmentStatus TEXT,
    TransformerAgeYears INTEGER,
    SwitchgearCondition TEXT,
    ProtectionSystemStatus TEXT,
    CommunicationSystemStatus TEXT,
    GroundingSystemStatus TEXT,
    FireSuppressionStatus TEXT,
    EnvironmentalImpact TEXT,
    SafetyTrainingCompleted INTEGER,
    DocumentationComplete INTEGER,
    Remarks TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    IsVerified INTEGER,
    VerifiedBy TEXT,
    VerificationDate DATE,
    SourceSystem TEXT,
    Latitude REAL,
    Longitude REAL,
    DocumentationLink TEXT
);
INSERT INTO grid_substation_audit VALUES (12001,8001,'2023-09-15','Michael Anderson','5551230000',87.5,'Compliant',5,1,4,'Upgrade transformer, replace aging switchgear',1,'2024-03-01','Operational',12,'Good','Operational','Operational','Good','Operational','Low','1','1','No major issues','Admin','2023-09-16',1,'Supervisor','2023-09-17','AuditSystem','35.2271','-80.8431','/audits/substation_12001.pdf');
INSERT INTO grid_substation_audit VALUES (12002,8002,'2023-11-20','Sofia Martinez','5559870000',92.0,'Compliant',2,0,2,'Routine maintenance completed',0,NULL,'Operational',8,'Excellent','Operational','Operational','Excellent','Operational','None','1','1','All systems nominal','Admin','2023-11-21',1,'Supervisor','2023-11-22','AuditSystem','36.1627','-86.7816','/audits/substation_12002.pdf');
INSERT INTO grid_substation_audit VALUES (12003,8003,'2023-08-05','David Liu','5555551111',78.0,'Non-Compliant',8,3,5,'Replace fire suppression system, improve grounding',1,'2024-02-10','Partial Outage',15,'Fair','Degraded','Partial','Fair','Needs Upgrade','Medium','0','0','Significant issues found','Admin','2023-08-06',1,'Supervisor','2023-08-07','AuditSystem','34.0522','-118.2437','/audits/substation_12003.pdf');

-- Urban tree canopy measurements
CREATE TABLE urban_tree_canopy_measurements
(
    MeasurementID INTEGER PRIMARY KEY,
    SurveyDate DATE,
    District TEXT,
    Neighborhood TEXT,
    TotalTrees INTEGER,
    CanopyCoveragePercent REAL,
    AverageTreeHeightM REAL,
    DominantSpecies TEXT,
    SpeciesDiversityIndex REAL,
    PercentMatureTrees REAL,
    PercentYoungTrees REAL,
    HealthScore REAL,
    PestIncidencePercent REAL,
    DiseaseIncidencePercent REAL,
    SoilQualityScore REAL,
    AirQualityImprovementIndex REAL,
    WaterRetentionCapacity REAL,
    CarbonSequestrationTons REAL,
    MaintenanceRequired INTEGER,
    MaintenancePriority TEXT,
    LastMaintenanceDate DATE,
    ResponsibleAgency TEXT,
    GISLatitude REAL,
    GISLongitude REAL,
    DataCollectorName TEXT,
    DataCollectorID INTEGER,
    Remarks TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    IsVerified INTEGER,
    VerifiedBy TEXT,
    VerificationDate DATE,
    SourceSystem TEXT,
    DocumentationLink TEXT
);
INSERT INTO urban_tree_canopy_measurements VALUES (50001,'2023-07-15','North District','Maple Grove',1240,23.5,12.4,'Oak',0.78,60.0,40.0,85.0,5.0,2.0,78.0,12.5,0.45,3.2,0,'Low','2022-12-01','City Parks Dept',40.7306,-73.9352,'John Doe',101,'Good overall health','Admin','2023-07-16',1,'Supervisor','2023-07-17','SurveySystem','/measurements/tree_50001.pdf');
INSERT INTO urban_tree_canopy_measurements VALUES (50002,'2023-07-20','South District','Riverbank',980,19.8,10.7,'Maple',0.65,45.0,55.0,78.0,8.0,4.5,70.0,10.2,0.38,2.5,1,'Medium','2023-01-15','City Parks Dept',34.0522,-118.2437,'Emily Smith',102,'Pest treatment needed','Admin','2023-07-21',1,'Supervisor','2023-07-22','SurveySystem','/measurements/tree_50002.pdf');
INSERT INTO urban_tree_canopy_measurements VALUES (50003,'2023-07-25','East District','Sunnyvale',1500,27.0,13.2,'Pine',0.82,70.0,30.0,90.0,3.0,1.5,85.0,14.0,0.52,4.0,0,'Low','2022-11-10','City Parks Dept',37.7749,-122.4194,'Michael Lee',103,'Excellent canopy coverage','Admin','2023-07-26',1,'Supervisor','2023-07-27','SurveySystem','/measurements/tree_50003.pdf');

-- Drone delivery zone limits
CREATE TABLE drone_delivery_zone_limits
(
    ZoneID INTEGER PRIMARY KEY,
    ZoneName TEXT,
    City TEXT,
    State TEXT,
    Country TEXT,
    LatitudeCenter REAL,
    LongitudeCenter REAL,
    RadiusMeters REAL,
    MaxAltitudeMeters REAL,
    NoFlyStartTime TEXT,
    NoFlyEndTime TEXT,
    RestrictedAreaFlag INTEGER,
    PopulationDensityPerSqKm REAL,
    AverageWindSpeedKph REAL,
    MaxPayloadKg REAL,
    AllowedDeliveryHours TEXT,
    EmergencyLandingSpots INTEGER,
    WeatherAlertIntegration INTEGER,
    TimeOfDayRestriction TEXT,
    NoiseLevelLimitDb REAL,
    OperatorLicenseRequired INTEGER,
    InsuranceRequired INTEGER,
    DataSharingAgreement INTEGER,
    CreationDate DATE,
    CreatedBy TEXT,
    LastUpdated DATE,
    UpdatedBy TEXT,
    IsActive INTEGER,
    Notes TEXT,
    DocumentationLink TEXT,
    SourceSystem TEXT,
    ComplianceStatus TEXT
);
INSERT INTO drone_delivery_zone_limits VALUES (101,'Downtown Core','Metropolis','NY','USA',40.7128,-74.0060,5000,120,'22:00','06:00',0,12000,15.0,5.0,'08:00-20:00',3,1,'Daytime Only',70.0,1,1,1,'2023-01-01','Admin','2023-06-01','Admin',1,'High demand area','/zones/zone_101.pdf','Regulatory','Compliant');
INSERT INTO drone_delivery_zone_limits VALUES (102,'Suburban West','Metropolis','NY','USA',40.7306,-73.9352,8000,100,'23:00','07:00',0,8000,12.0,3.0,'07:00-22:00',2,1,'None',65.0,1,1,0,'2023-02-15','Admin','2023-07-01','Admin',1,'Mixed residential/commercial','/zones/zone_102.pdf','Regulatory','Compliant');
INSERT INTO drone_delivery_zone_limits VALUES (103,'Industrial Park','Metropolis','NY','USA',40.7580,-73.9855,6000,110,'20:00','05:00',1,3000,20.0,8.0,'09:00-18:00',1,0,'Restricted',80.0,1,1,1,'2023-03-10','Admin','2023-08-01','Admin',1,'Restricted due to hazardous materials','/zones/zone_103.pdf','Regulatory','Compliant');

-- Renewable energy project staffing
CREATE TABLE renewable_energy_project_staffing
(
    StaffingID INTEGER PRIMARY KEY,
    ProjectID INTEGER,
    Role TEXT,
    EmployeeID INTEGER,
    EmployeeName TEXT,
    Department TEXT,
    StartDate DATE,
    EndDate DATE,
    AllocationPercent REAL,
    SalaryUSD REAL,
    HourlyRateUSD REAL,
    ContractType TEXT,
    SkillLevel TEXT,
    Certification TEXT,
    SupervisorID INTEGER,
    SupervisorName TEXT,
    RemoteWorkAllowed INTEGER,
    TravelRequiredPercent REAL,
    ShiftPattern TEXT,
    WorkLocation TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    EmergencyContactName TEXT,
    EmergencyContactPhone TEXT,
    PerformanceRating REAL,
    TrainingCompleted INTEGER,
    LastTrainingDate DATE,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    IsActive INTEGER,
    UpdatedBy TEXT,
    UpdateDate DATE,
    DocumentationLink TEXT,
    ComplianceStatus TEXT,
    FundingSource TEXT,
    ProjectPhase TEXT,
    HoursPerWeek REAL,
    OvertimeAllowed INTEGER
);
INSERT INTO renewable_energy_project_staffing VALUES (301,2001,'Project Manager',501,'Alice Johnson','Management','2022-05-01',NULL,100,120000,0,'Full-Time','Senior','PMP',601,'Bob Smith',1,10,'Mon-Fri','Headquarters','5551112222','alice.j@example.com','Tom Reed','5553334444',4.7,1,'2023-11-01','Lead overall project','Admin','2023-12-01',1,'Admin','2023-12-01','/staffing/301.pdf','Compliant','Green Fund','Construction',40,0);
INSERT INTO renewable_energy_project_staffing VALUES (302,2001,'Electrical Engineer',502,'Carlos Mendes','Engineering','2022-07-15',NULL,80,95000,0,'Full-Time','Mid','IEEE',601,'Bob Smith',0,20,'Mon-Thu','Site A','5552223333','carlos.m@example.com','Linda Lee','5554445555',4.3,1,'2023-10-15','Design of electrical systems','Admin','2023-12-02',1,'Admin','2023-12-02','/staffing/302.pdf','Compliant','Green Fund','Construction',32,1);
INSERT INTO renewable_energy_project_staffing VALUES (303,2001,'Field Technician',503,'Diana Patel','Operations','2023-01-10',NULL,60,60000,0,'Full-Time','Junior','OSHA',601,'Bob Smith',1,30,'Shift','Site B','5553336666','diana.p@example.com','Samuel Wong','5555557777',4.0,0,NULL,'Onsite installation and maintenance','Admin','2023-12-03',1,'Admin','2023-12-03','/staffing/303.pdf','Compliant','Green Fund','Construction',24,1);