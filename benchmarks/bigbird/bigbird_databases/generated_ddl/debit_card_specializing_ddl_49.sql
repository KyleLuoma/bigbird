-- Regional electric grid assets information
CREATE TABLE regional_electric_grid_assets
(
    AssetID INTEGER PRIMARY KEY,
    AssetType TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    InstallationDate DATE,
    CapacityMW REAL,
    VoltagekV REAL,
    SubstationID INTEGER,
    Latitude REAL,
    Longitude REAL,
    Status TEXT,
    LastInspectionDate DATE,
    InspectionScore INTEGER,
    WarrantyEndDate DATE,
    MaintenanceContractID INTEGER,
    AssetSerialNumber TEXT,
    CommissioningYear INTEGER,
    DecommissionPlannedDate DATE,
    OwnerOrganization TEXT,
    RegulatoryComplianceStatus TEXT,
    AssetLocationDescription TEXT,
    PowerFactor REAL,
    CoolingMethod TEXT,
    AssetAgeYears INTEGER
);

INSERT INTO regional_electric_grid_assets VALUES (1,'Transformer','GeneralElectric','GE-TRX-2000','2015-06-12',50.0,115.0,101,34.0522,-118.2437,'Active','2023-03-10',95,'2028-06-12',301,'SNTRX2000A',2015,NULL,'UtilityCo','Compliant','LosAngeles Substation',0.98,'Oil','8');
INSERT INTO regional_electric_grid_assets VALUES (2,'Switchgear','Siemens','SG-500','2018-11-05',0.0,230.0,102,40.7128,-74.0060,'Active','2023-07-22',88,'2025-11-05',302,'SNSG500B',2018,NULL,'GridOps','Compliant','NYC Substation',1.00,'Air','5');
INSERT INTO regional_electric_grid_assets VALUES (3,'CapacitorBank','ABB','CB-1200','2020-02-20',0.0,0.0,103,41.8781,-87.6298,'Planned','2023-01-15',0,'2026-02-20',303,'SNCB1200C',2020,'2029-02-20','PowerInc','Pending','Chicago Substation',0.95,'Oil','3');

-- Water quality sampling site registry
CREATE TABLE water_quality_sampling_sites
(
    SiteID INTEGER PRIMARY KEY,
    SiteName TEXT,
    RiverBasin TEXT,
    Latitude REAL,
    Longitude REAL,
    ElevationM INTEGER,
    SamplingFrequencyDays INTEGER,
    LastSampleDate DATE,
    SampleCollectorID INTEGER,
    WaterTemperatureC REAL,
    pH REAL,
    ConductivityUS REAL,
    TurbidityNTU REAL,
    DissolvedOxygenMGL REAL,
    NitrateMGL REAL,
    PhosphateMGL REAL,
    LeadUGL REAL,
    MercuryUGL REAL,
    SampleVolumeL REAL,
    AnalysisLab TEXT,
    DataQualityFlag TEXT,
    Comments TEXT,
    SiteAccessType TEXT,
    MonitoringProgram TEXT,
    EPARegion TEXT
);

INSERT INTO water_quality_sampling_sites VALUES (101,'RiverEdgeNorth','Mississippi',36.1627,-86.7816,150,7,'2023-08-01',501,15.2,7.4,150.0,3.1,8.5,0.12,0.04,5.0,0.2,2.0,'StateLab','Good','No issues','PublicRoad','StateMonitoring','5');
INSERT INTO water_quality_sampling_sites VALUES (102,'LakeSideSouth','GreatLakes',42.3314,-83.0458,180,14,'2023-07-20',502,12.8,6.9,120.0,2.5,7.9,0.10,0.03,3.5,0.15,1.5,'RegionalLab','Moderate','Minor algae','PrivateAccess','RegionalProgram','2');
INSERT INTO water_quality_sampling_sites VALUES (103,'UrbanCreekMid','Colorado',39.7392,-104.9903,160,30,'2023-06-15',503,14.0,7.0,130.0,2.8,8.2,0.11,0.035,4.2,0.18,1.8,'CityLab','Good','Stable','PublicRoad','CityMonitoring','6');

-- Municipal noise complaint log
CREATE TABLE municipal_noise_complaint_log
(
    ComplaintID INTEGER PRIMARY KEY,
    ReportedDate DATE,
    ReceivedTime TEXT,
    ReporterID INTEGER,
    ComplaintType TEXT,
    LocationDescription TEXT,
    Latitude REAL,
    Longitude REAL,
    NoiseLevelDBA REAL,
    SourceCategory TEXT,
    DurationMinutes INTEGER,
    IsRepeat BOOLEAN,
    ActionTaken TEXT,
    ResolutionDate DATE,
    OfficerID INTEGER,
    FollowUpRequired BOOLEAN,
    FollowUpDate DATE,
    Comments TEXT,
    WeatherCondition TEXT,
    TrafficLevel TEXT,
    Neighborhood TEXT,
    ZoningCode TEXT,
    RecordedBy TEXT,
    IncidentNumber TEXT,
    Status TEXT,
    PriorityLevel INTEGER,
    AudioEvidenceAvailable BOOLEAN
);

INSERT INTO municipal_noise_complaint_log VALUES (2001,'2023-07-10','20:45',3001,'Construction','5thAve and MainSt',40.7128,-74.0060,78.5,'HeavyMachinery',45,0,'WarningIssued','2023-07-12',4501,0,NULL,'Clear','Medium','Residential','R1','Dispatch','INC001','Closed',2,0);
INSERT INTO municipal_noise_complaint_log VALUES (2002,'2023-08-02','23:15',3002,'Entertainment','Broadway Club',40.7306,-73.9352,85.0,'LiveMusic',120,1,'FineIssued','2023-08-05',4502,1,'2023-08-20','RepeatedLateNight','Rain','High','Commercial','C2','OfficerJ','INC002','Open',1,1);
INSERT INTO municipal_noise_complaint_log VALUES (2003,'2023-06-25','06:00',3003,'Vehicle','Highway 101 Exit',37.7749,-122.4194,70.2,'Traffic',30,0,'AdvisorySent','2023-06-27',4503,0,NULL,'Fog','Low','Industrial','I3','Dispatch','INC003','Closed',3,0);

-- Renewable energy project funding rounds
CREATE TABLE renewable_energy_funding_rounds
(
    FundingRoundID INTEGER PRIMARY KEY,
    ProjectID INTEGER,
    RoundName TEXT,
    FundingAgency TEXT,
    FundingAmountUSD REAL,
    Currency TEXT,
    ExchangeRateToUSD REAL,
    ApprovalDate DATE,
    DisbursementDate DATE,
    FundingPhase TEXT,
    GrantType TEXT,
    ContractNumber TEXT,
    ProjectStage TEXT,
    ExpectedCompletionYear INTEGER,
    MatchingFundsUSD REAL,
    CoFunderCount INTEGER,
    PrimaryContactID INTEGER,
    RiskRating TEXT,
    Comments TEXT,
    Status TEXT,
    ReviewBoard TEXT,
    AllocationMethod TEXT,
    PortfolioID INTEGER,
    SustainabilityMetric TEXT,
    FundingSourceCategory TEXT,
    DocumentationURL TEXT,
    IsRenewable BOOLEAN
);

INSERT INTO renewable_energy_funding_rounds VALUES (5001,1001,'PhaseA','DOE','5000000','USD',1.0,'2022-03-15','2022-04-01','Initial','Grant','CON12345','Planning',2025,'500000',2,7001,'Low','Initial seed funding','Approved','BoardA','Competitive',10,'CO2Reduction','Federal','http://doe.gov/funding/5001',1);
INSERT INTO renewable_energy_funding_rounds VALUES (5002,1002,'PhaseB','EPA','2500000','USD',1.0,'2023-01-20','2023-02-10','Mid','Loan','CON67890','Construction',2026,'250000',1,7002,'Medium','Second tranche','Pending','BoardB','Negotiated',11,'RenewablePct','State','http://epa.gov/funding/5002',1);
INSERT INTO renewable_energy_funding_rounds VALUES (5003,1003,'PhaseC','PrivateEquity','12000000','USD',1.0,'2023-06-05','2023-07-01','Final','Equity','CON54321','Operation',2030,'1200000',3,7003,'High','Final round for expansion','Approved','BoardC','Direct',12,'EnergyOutput','Private','http://privateequity.com/funding/5003',1);

-- Smart city sensor calibration records
CREATE TABLE smart_city_sensor_calibrations
(
    CalibrationID INTEGER PRIMARY KEY,
    SensorID INTEGER,
    SensorType TEXT,
    InstallationDate DATE,
    LastCalibrationDate DATE,
    CalibrationMethod TEXT,
    CalibratedBy TEXT,
    CalibrationCoefficient REAL,
    OffsetValue REAL,
    TemperatureCompensation REAL,
    HumidityCompensation REAL,
    CalibrationStatus TEXT,
    NextDueDate DATE,
    FirmwareVersion TEXT,
    HardwareRevision TEXT,
    LocationDescription TEXT,
    Latitude REAL,
    Longitude REAL,
    CalibrationNotes TEXT,
    AccuracyRating REAL,
    PowerSupplyVoltage REAL,
    CommunicationProtocol TEXT,
    DataLoggingEnabled BOOLEAN,
    CalibrationLab TEXT,
    BatchNumber TEXT,
    WarrantyValidUntil DATE,
    CalibrationCostUSD REAL,
    ApprovalSignature TEXT,
    IsActive BOOLEAN,
    CalibrationDocumentURL TEXT
);

INSERT INTO smart_city_sensor_calibrations VALUES (8001,15001,'AirQuality','2022-01-10','2023-07-01','Standard','TechA',0.998,0.05,0.01,0.02,'Passed','2024-07-01','v3.2','RevA','Downtown Plaza',34.0522,-118.2437,'Routine annual calibration',0.99,3.3,'LoRaWAN',1,'CityLab','BCH001','2025-01-10',1500,'SigA',1,'http://city.gov/calib/8001');
INSERT INTO smart_city_sensor_calibrations VALUES (8002,15002,'Noise','2021-05-15','2023-06-15','Extended','TechB',1.002,-0.03,0.00,0.01,'Passed','2024-06-15','v2.5','RevB','Central Park',40.7128,-74.0060,'Adjusted for ambient conditions',0.98,5.0,'Zigbee',1,'StateLab','BCH002','2024-12-31',1200,'SigB',1,'http://state.gov/calib/8002');
INSERT INTO smart_city_sensor_calibrations VALUES (8003,15003,'TrafficFlow','2020-09-20','2023-05-20','Custom','TechC',0.995,0.10,0.02,0.03,'Passed','2024-05-20','v1.8','RevC','River Bridge',41.8781,-87.6298,'Calibrated after firmware update',0.97,12.0,'Cellular',1,'PrivateLab','BCH003','2023-09-30',2000,'SigC',0,'http://privatelab.com/calib/8003');

-- Public art installation inventory
CREATE TABLE public_art_installation_inventory
(
    InstallationID INTEGER PRIMARY KEY,
    Title TEXT,
    ArtistName TEXT,
    YearCreated INTEGER,
    InstallationYear INTEGER,
    Material TEXT,
    HeightCM REAL,
    WidthCM REAL,
    DepthCM REAL,
    WeightKG REAL,
    LocationDescription TEXT,
    Latitude REAL,
    Longitude REAL,
    Neighborhood TEXT,
    FundingSource TEXT,
    AcquisitionCostUSD REAL,
    MaintenanceContractID INTEGER,
    ConditionRating INTEGER,
    LastRestorationDate DATE,
    OwnerOrganization TEXT,
    PermitNumber TEXT,
    VisibilityLevel TEXT,
    LightingType TEXT,
    Interactive BOOLEAN,
    QRCodeURL TEXT,
    GPSCoordinateAccuracyM INTEGER,
    SecurityLevel TEXT,
    PublicEngagementScore INTEGER,
    ConservationStatus TEXT,
    CatalogReference TEXT,
    IsActive BOOLEAN,
    Remarks TEXT
);

INSERT INTO public_art_installation_inventory VALUES (30001,'River Flow','JaneDoe',2015,2017,'Bronze',250.0,120.0,80.0,500.0,'Riverfront Plaza',36.1627,-86.7816,'Downtown','CityGrant',75000,401,8,'2022-04-10','CityArtsDept','PERM123','High','Spotlight',0,'http://cityarts.org/riverflow','5','Medium',85,'Good','CAT001',1,'Well maintained');
INSERT INTO public_art_installation_inventory VALUES (30002,'Sky Threads','JohnSmith',2018,2019,'StainlessSteel',150.0,90.0,60.0,300.0,'Central Park East',40.7128,-74.0060,'Uptown','PrivateDonor',120000,402,9,'2023-01-20','ParkAuthority','PERM124','Medium','LED',1,'http://parkarts.org/skythreads','3','High',92,'Excellent','CAT002',1,'Interactive display');
INSERT INTO public_art_installation_inventory VALUES (30003,'Echoes','MariaLee',2020,2021,'RecycledPlastic',200.0,100.0,70.0,250.0,'Lakeview Terrace',41.8781,-87.6298,'Midtown','CommunityFund',60000,403,7,'2021-09-15','CommunityOrg','PERM125','Low','Solar',0,'http://communityarts.org/echoes','4','Low',70,'Fair','CAT003',1,'Seasonal exhibit');

-- Bike share maintenance schedule
CREATE TABLE bike_share_maintenance_schedule
(
    MaintenanceID INTEGER PRIMARY KEY,
    StationID INTEGER,
    BikeID INTEGER,
    ScheduledDate DATE,
    MaintenanceType TEXT,
    TechnicianID INTEGER,
    EstimatedDurationMinutes INTEGER,
    PartsRequired TEXT,
    PartsCostUSD REAL,
    LaborCostUSD REAL,
    TotalCostUSD REAL,
    DowntimeMinutes INTEGER,
    ServiceProvider TEXT,
    WarrantyStatus TEXT,
    InspectionScore INTEGER,
    NextInspectionDate DATE,
    BatteryHealthPercent REAL,
    TirePressurePSI REAL,
    Comments TEXT,
    CompletionStatus TEXT,
    CompletedDate DATE,
    FollowUpRequired BOOLEAN,
    FollowUpDate DATE,
    UpdatedBy TEXT,
    RecordCreated DATE,
    RecordUpdated DATE,
    MaintenancePriority INTEGER,
    IsCritical BOOLEAN,
    ServiceTicketNumber TEXT,
    LocationLatitude REAL,
    LocationLongitude REAL,
    Shift TEXT
);

INSERT INTO bike_share_maintenance_schedule VALUES (9001,2001,150001,'2023-08-01','FullCheck','Tech01',120,'Battery,BrakePads',45.00,30.00,75.00,90,'BikeCorp','InWarranty',92,'2024-08-01',95.0,55.0,'All systems nominal','Completed','2023-08-01',0,NULL,'AdminA','2023-07-20','2023-08-01',1,0,'TCKT9001',34.0522,-118.2437,'Morning');
INSERT INTO bike_share_maintenance_schedule VALUES (9002,2002,150002,'2023-08-05','BrakeReplacement','Tech02',45,'BrakePads',20.00,15.00,35.00,30,'BikeCorp','OutOfWarranty',85,'2024-08-05',NULL,40.0,'Replaced front brakes','Completed','2023-08-05',0,NULL,'AdminB','2023-07-25','2023-08-05',2,0,'TCKT9002',40.7128,-74.0060,'Afternoon');
INSERT INTO bike_share_maintenance_schedule VALUES (9003,2003,150003,'2023-08-10','BatterySwap','Tech03',30,'Battery',60.00,20.00,80.00,15,'BikeCorp','InWarranty',98,'2024-08-10',100.0,50.0,'Battery replaced due to degradation','Completed','2023-08-10',0,NULL,'AdminC','2023-07-30','2023-08-10',1,0,'TCKT9003',41.8781,-87.6298,'Night');

-- Logistics drone operational metrics
CREATE TABLE logistics_drone_operational_metrics
(
    FlightID INTEGER PRIMARY KEY,
    DroneID INTEGER,
    OperatorID INTEGER,
    FlightDate DATE,
    DepartureTime TEXT,
    ArrivalTime TEXT,
    OriginLatitude REAL,
    OriginLongitude REAL,
    DestinationLatitude REAL,
    DestinationLongitude REAL,
    FlightDistanceKM REAL,
    FlightDurationMinutes INTEGER,
    PayloadWeightKG REAL,
    BatteryStartPercent REAL,
    BatteryEndPercent REAL,
    AverageWindSpeedKPH REAL,
    MaxAltitudeM REAL,
    FlightStatus TEXT,
    IncidentReported BOOLEAN,
    IncidentDescription TEXT,
    WeatherCondition TEXT,
    AirspaceRestrictionLevel TEXT,
    FlightPathChecksum TEXT,
    MaintenanceDue BOOLEAN,
    NextMaintenanceDate DATE,
    TotalFlights INTEGER,
    TotalDistanceKM REAL,
    FirmwareVersion TEXT,
    SignalStrengthDBM REAL,
    ComplianceScore INTEGER,
    IsAutomated BOOLEAN,
    Notes TEXT
);

INSERT INTO logistics_drone_operational_metrics VALUES (40001,8001,9001,'2023-07-15','08:10','08:25',34.0522,-118.2437,34.0525,-118.2500,0.75,15,2.5,100.0,85.0,12.0,120.0,'Successful',0,NULL,'Clear','Low','CHK12345',0,'2023-10-01',150,120.0,'v5.1',-70,95,1,'Morning delivery');
INSERT INTO logistics_drone_operational_metrics VALUES (40002,8002,9002,'2023-07-16','14:45','15:05',40.7128,-74.0060,40.7200,-74.0100,1.20,20,3.0,100.0,78.0,15.0,130.0,'Successful',0,NULL,'PartlyCloudy','Medium','CHK67890',1,'2023-09-15',200,250.0,'v5.2',-65,92,1,'Afternoon dispatch');
INSERT INTO logistics_drone_operational_metrics VALUES (40003,8003,'','2023-07-17','22:00','22:30',41.8781,-87.6298,41.8800,-87.6400,1.00,30,4.0,100.0,70.0,20.0,140.0,'Failed',1,'Battery drain below threshold','Rain','High','CHK54321',1,'2023-08-30',180,180.0,'v5.1',-80,80,0,'Night operation issue');

-- Corporate governance meeting minutes
CREATE TABLE corporate_governance_meeting_minutes
(
    MeetingID INTEGER PRIMARY KEY,
    MeetingDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    MeetingType TEXT,
    Location TEXT,
    ChairpersonID INTEGER,
    SecretaryID INTEGER,
    AttendeeCount INTEGER,
    AgendaItem1 TEXT,
    AgendaItem2 TEXT,
    AgendaItem3 TEXT,
    AgendaItem4 TEXT,
    AgendaItem5 TEXT,
    DecisionsMade TEXT,
    ActionItems TEXT,
    FollowUpDate DATE,
    DocumentsReferenced TEXT,
    VotingOutcome TEXT,
    QuorumAchieved BOOLEAN,
    MinutesPreparedBy INTEGER,
    MinutesApprovedBy INTEGER,
    ApprovalDate DATE,
    ConfidentialityLevel TEXT,
    RecordVersion INTEGER,
    IsFinalVersion BOOLEAN,
    MeetingURL TEXT,
    AudioRecordingAvailable BOOLEAN,
    VideoRecordingAvailable BOOLEAN,
    Summary TEXT,
    Notes TEXT,
    CreatedTimestamp DATETIME,
    UpdatedTimestamp DATETIME
);

INSERT INTO corporate_governance_meeting_minutes VALUES (101,'2023-06-15','09:00','11:30','Board','Headquarters','1001','2001',12,'StrategicPlan','RiskManagement','BudgetReview','M&A','Compliance','Approved new strategic plan','Assign task forces','2023-07-01','StrategicDoc.pdf;RiskReport.pdf','Unanimous','1','3001','4001','2023-06-20','High',1,'1','http://corp.com/meetings/101',1,0,'Reviewed core strategy','No issues','2023-06-15 09:00:00','2023-06-20 10:00:00');
INSERT INTO corporate_governance_meeting_minutes VALUES (102,'2023-07-20','14:00','16:00','Audit','ConferenceCenter','1002','2002',15,'FinancialAudit','ITSecurity','Compliance','HRPolicy','SupplyChain','Findings presented','Implement remediation plan','2023-08-15','AuditReport.pdf;SecurityAssessment.pdf','Majority','1','3002','4002','2023-07-25','Medium',1,'1','http://corp.com/meetings/102',1,1,'Audit overview and actions','Follow up needed','2023-07-20 14:00:00','2023-07-25 11:30:00');
INSERT INTO corporate_governance_meeting_minutes VALUES (103,'2023-08-10','10:00','12:30','Committee','Remote','1003','2003',10,'ProductRoadmap','MarketExpansion','LegalReview','InvestorRelations','CSR','Decisions on roadmap milestones','Assign product leads','2023-09-01','RoadmapDoc.pdf;MarketStudy.pdf','Mixed','1','3003','4003','2023-08-15','Low',1,'1','http://corp.com/meetings/103',0,0,'Roadmap alignment with market','Pending approvals','2023-08-10 10:00:00','2023-08-15 09:45:00');

-- Environmental permit application tracker
CREATE TABLE environmental_permit_application_tracker
(
    ApplicationID INTEGER PRIMARY KEY,
    PermitType TEXT,
    ApplicantOrganization TEXT,
    ProjectName TEXT,
    SubmissionDate DATE,
    ReviewStartDate DATE,
    ReviewEndDate DATE,
    PermitStatus TEXT,
    ApprovingAgency TEXT,
    AgencyRegion TEXT,
    ApplicationFeeUSD REAL,
    FeeWaiver BOOLEAN,
    EnvironmentalImpactScore INTEGER,
    RequiredMitigations TEXT,
    MitigationStatus TEXT,
    PublicCommentPeriodDays INTEGER,
    PublicCommentsReceived INTEGER,
    HearingScheduled BOOLEAN,
    HearingDate DATE,
    InspectorID INTEGER,
    InspectionDate DATE,
    InspectionOutcome TEXT,
    ComplianceDeadline DATE,
    RenewalRequired BOOLEAN,
    RenewalPeriodYears INTEGER,
    DocumentationLink TEXT,
    Notes TEXT,
    CreatedBy INTEGER,
    CreatedDate DATE,
    UpdatedBy INTEGER,
    UpdatedDate DATE,
    IsActive BOOLEAN,
    PermitReferenceNumber TEXT,
    AssignedReviewerID INTEGER,
    ReviewComments TEXT,
    FinalDecisionDate DATE,
    FinalDecision TEXT,
    AttachmentsCount INTEGER
);

INSERT INTO environmental_permit_application_tracker VALUES (7001,'AirEmission','EnergyCo','PlantExpansion','2023-01-15','2023-02-01','2023-04-20','Approved','EPA','Region5',15000.0,0,85,'Install scrubbers','Completed',30,120,1,'2023-05-10',501,'2023-05-15','Passed','2023-12-31',0,NULL,NULL,'All requirements met',1001,'2023-01-15',1002,'2023-04-20',1,'AIR-2023-7001',301,'No major issues','2023-04-20','Approved',5);
INSERT INTO environmental_permit_application_tracker VALUES (7002,'WaterDischarge','AgriCorp','IrrigationSystem','2023-03-10','2023-03-20','2023-06-01','Pending','StateWaterBoard','Region2',8000.0,1,70,'Construct retention pond','InProgress',45,80,0,NULL,NULL,NULL,'Pending','2024-03-10',1,5,'http://statewater.gov/app/7002','Awaiting additional data',1003,'2023-03-10',1004,'2023-06-01',1,'WTR-2023-7002',302,'Review ongoing','2023-06-01','Pending',3);
INSERT INTO environmental_permit_application_tracker VALUES (7003,'LandUse','CityDept','UrbanPark','2023-05-05','2023-05-15','2023-07-30','Rejected','CityPlanning','Central',5000.0,0,60,'Add green buffers','NotStarted',60,40,0,NULL,NULL,NULL,'Rejected','2023-12-31',0,NULL,NULL,'Insufficient mitigation',1005,'2023-05-05',1006,'2023-07-30',0,'LND-2023-7003',303,'Insufficient studies','2023-07-30','Rejected',2);

-- Renewable energy project registry
CREATE TABLE renewable_energy_project_registry
(
    RenewableProjectID INTEGER PRIMARY KEY,
    ProjectName TEXT,
    ProjectType TEXT,
    CapacityMW REAL,
    DeveloperOrganization TEXT,
    Country TEXT,
    Region TEXT,
    Latitude REAL,
    Longitude REAL,
    ConstructionStartDate DATE,
    CommissioningDate DATE,
    OperationalStatus TEXT,
    PrimaryEnergySource TEXT,
    GridConnectionPoint TEXT,
    PowerPurchaseAgreementID INTEGER,
    ExpectedAnnualGenerationMWh REAL,
    CO2ReductionTonnes REAL,
    ProjectCostUSD REAL,
    FinancingModel TEXT,
    EquitySharePercentage REAL,
    DebtSharePercentage REAL,
    TaxIncentiveAvailable BOOLEAN,
    EnvironmentalImpactRating TEXT,
    CommunityEngagementPlan TEXT,
    StakeholderContactID INTEGER,
    PermitStatus TEXT,
    PermitApprovalDate DATE,
    LicenseNumber TEXT,
    OPEXAnnualUSD REAL,
    CAPEXAnnualUSD REAL,
    MaintenanceContractID INTEGER,
    InsuranceProvider TEXT,
    InsurancePolicyNumber TEXT,
    ESGScore INTEGER,
    RenewableEnergyCertificateCount INTEGER,
    ProjectWebsite TEXT,
    ProjectDescription TEXT,
    IsActive BOOLEAN,
    LastUpdated DATE,
    CreatedDate DATE,
    CreatedBy INTEGER
);

INSERT INTO renewable_energy_project_registry VALUES (90001,'SunshineSolarFarm','SolarPV',150.0,'SunEnergy','USA','California',36.7783,-119.4179,'2022-04-01','2023-09-15','Operational','Solar','NodeA',701,300000.0,250000.0,200000000.0,'Equity','60.0','40.0',1,'A','CommunityOutreachPlan','8001','Approved','2022-03-15','LIC90001',1500000.0,5000000.0,401,'InsureCo','POL12345',85,1200,'http://sunshinesolar.com','Utility scale solar farm','1','2023-10-01','2022-04-01','1001');
INSERT INTO renewable_energy_project_registry VALUES (90002,'GreenWindPark','OnshoreWind',80.0,'WindPowerInc','USA','Texas',31.9686,-99.9018,'2021-06-15','2023-05-20','Operational','Wind','NodeB',702,250000.0,200000.0,150000000.0,'Debt','45.0','55.0',1,'B','StakeholderForum','8002','Approved','2021-05-30','LIC90002',1200000.0,4000000.0,402,'SecureIns','POL67890',78,900,'http://greenwindpark.com','Onshore wind project','1','2023-09-01','2021-06-15','1002');
INSERT INTO renewable_energy_project_registry VALUES (90003,'RiverHydro','Hydropower',45.0,'HydroSolutions','Canada','BritishColumbia',53.7267,-127.6476,'2023-01-10','2024-12-01','UnderConstruction','Hydro','NodeC',703,180000.0,150000.0,120000000.0,'Mixed','50.0','50.0',0,'A','LocalConsultation','8003','Pending','2022-12-01','LIC90003',1000000.0,3500000.0,403,'EcoInsure','POL54321',82,700,'http://riverhydro.ca','Run-of-river hydro project','0','2023-08-01','2023-01-10','1003');

-- Smart city sensor inventory
CREATE TABLE smart_city_sensor_inventory
(
    SensorInventoryID INTEGER PRIMARY KEY,
    SensorType TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    InstallationDate DATE,
    DeploymentZone TEXT,
    Latitude REAL,
    Longitude REAL,
    HeightM REAL,
    PowerSource TEXT,
    BatteryCapacitymAh INTEGER,
    ConnectivityProtocol TEXT,
    FirmwareVersion TEXT,
    CalibrationStatus TEXT,
    LastCalibrationDate DATE,
    OperationalStatus TEXT,
    DataRetentionPeriodDays INTEGER,
    CurrentDataVolumeGB REAL,
    MaintenanceIntervalDays INTEGER,
    AssignedTechnicianID INTEGER,
    WarrantyExpirationDate DATE,
    CostUSD REAL,
    FundingSource TEXT,
    EnvironmentalRating TEXT,
    VendorContactID INTEGER,
    DecommissionDate DATE,
    IsActive BOOLEAN,
    SensorGroup TEXT,
    NetworkSegment TEXT,
    CalibrationDueDate DATE,
    LastMaintenanceDate DATE,
    SensorLocationDescription TEXT,
    InstallationNotes TEXT,
    GPSAccuracyM INTEGER,
    CityZone TEXT,
    SensorOwner TEXT,
    AssetTag TEXT,
    LastUpdated DATETIME,
    CreatedAt DATETIME
);

INSERT INTO smart_city_sensor_inventory VALUES (11001,'AirQuality','AirSense','AQ-200','SN-AQ200-001','2022-02-15','Downtown','34.0522','-118.2437',5.0,'Solar','5000','LoRaWAN','v2.1','Calibrated','2023-06-01','Active','365','12.5','180','401','2025-02-15',1500.0','CityBudget','A','502',NULL,1,'Environmental','SegmentA','2023-12-01','2023-05-01','Rooftop near main square','Initial setup complete',5,'Central','CityDept','TAG11001','2023-08-15 10:30:00','2022-02-15 09:00:00');
INSERT INTO smart_city_sensor_inventory VALUES (11002,'Noise','SoundMetrics','NM-500','SN-NM500-002','2021-08-20','Industrial','40.7128','-74.0060',3.0,'Mains','8000','Zigbee','v1.8','Calibrated','2022-12-01','Active','730','20.0','365','402','2024-08-20',2000.0,'StateGrant','B','503','2028-08-20',1,'Transport','SegmentB','2023-11-01','2023-04-15','Sidewalk near highway','Noise monitoring station',3,'East','TransportAgency','TAG11002','2023-08-16 14:45:00','2021-08-20 08:00:00');
INSERT INTO smart_city_sensor_inventory VALUES (11003,'TrafficFlow','FlowTech','TF-300','SN-TF300-003','2023-01-10','Suburban','41.8781','-87.6298',2.5','Battery','6000','Cellular','v3.0','Pending','2023-07-15','Inactive','180','5.0','90','403','2026-01-10',1200.0,'PrivateFunding','C','504',NULL,0,'Traffic','SegmentC','2023-10-01','2023-06-20','Intersection of 5th and Main','Awaiting installation crew',2,'West','CityTransport','TAG11003','2023-08-14 09:20:00','2023-01-10 07:30:00');