-- Municipal road permits
CREATE TABLE municipal_road_permits (
    PermitID INTEGER PRIMARY KEY,
    City TEXT,
    RoadName TEXT,
    PermitType TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    ContractorName TEXT,
    Cost INTEGER,
    TrafficImpactScore REAL,
    EnvironmentalImpactScore REAL,
    RequiredSignage TEXT,
    InspectionDate DATE,
    ViolationsCount INTEGER,
    PermitStatus TEXT,
    Notes TEXT,
    AssignedEngineer TEXT,
    WorkStartDate DATE,
    WorkEndDate DATE,
    LaneClosures INTEGER,
    PublicNoticePublished TEXT,
    FundingSource TEXT,
    ProjectCode TEXT
);
INSERT INTO municipal_road_permits VALUES (101,'Springfield','Main St','Construction','2023-01-15','2023-12-31','BuildCo','150000',4.5,3.2,'Yes','2023-01-20',0,'Approved','Initial permit', 'EngJohn','2023-02-01','2023-08-15',2,'Yes','CityBudget','PRJ001');
INSERT INTO municipal_road_permits VALUES (102,'Shelbyville','Oak Ave','Utility','2023-03-10','2024-03-09','UtilityInc','80000',2.1,1.8,'No','2023-03-12',1,'Pending','Awaiting final review','EngMia','2023-04-01','2023-09-30',1,'No','StateGrant','PRJ002');
INSERT INTO municipal_road_permits VALUES (103,'Ogden','Pine Rd','Expansion','2022-11-05','2023-11-04','ExpandIt','220000',5.0,4.0,'Yes','2022-11-07',2,'Completed','Work finished','EngLee','2022-12-01','2023-06-30',3,'Yes','FederalAid','PRJ003');

-- Renewable energy asset registry
CREATE TABLE renewable_energy_asset_registry (
    AssetID INTEGER PRIMARY KEY,
    AssetType TEXT,
    CapacityMW REAL,
    Location TEXT,
    InstallationDate DATE,
    OwnerCompany TEXT,
    OperatorCompany TEXT,
    MaintenanceContractID INTEGER,
    GridConnectionPoint TEXT,
    ExpectedLifespanYears INTEGER,
    CurrentStatus TEXT,
    EnergyOutputMWhYear REAL,
    CO2OffsetTons REAL,
    SubsidyAmount REAL,
    TaxIncentive TEXT,
    DecommissionDate DATE,
    WarrantyEndDate DATE,
    RenewableCertificateID TEXT,
    Latitude REAL,
    Longitude REAL,
    FundingProgram TEXT,
    Comments TEXT
);
INSERT INTO renewable_energy_asset_registry VALUES (2001,'Solar','50.0','Desert Ridge','2021-05-20','SunPower Corp','SunOps Ltd',3001,'GCP-01',25,'Operating','400000','120000','500000','Yes','2031-05-20','2026-05-20','RC-001',35.6895,-105.9380,'GreenFund','Phase 1');
INSERT INTO renewable_energy_asset_registry VALUES (2002,'Wind','120.5','Hilltop Valley','2019-09-10','WindWorks','WindOps','3002','GCP-02',30,'Operating','1300000','350000','1200000','Yes','2049-09-10','2024-09-10','RC-002',40.7128,-74.0060,'EcoInvest','Phase 2');
INSERT INTO renewable_energy_asset_registry VALUES (2003,'Hydro','80.0','River Bend','2015-03-15','AquaPower','AquaOps','3003','GCP-03',40,'Planned','0','0','900000','No',NULL,'2025-03-15','RC-003',42.3601,-71.0589,'HydroGrant','Phase 3');

-- Digital media licensing
CREATE TABLE digital_media_licensing (
    LicenseID INTEGER PRIMARY KEY,
    MediaTitle TEXT,
    MediaType TEXT,
    LicenseHolder TEXT,
    Territory TEXT,
    StartDate DATE,
    EndDate DATE,
    LicenseFee REAL,
    RoyaltyRate REAL,
    DistributionChannel TEXT,
    Platform TEXT,
    IsExclusive TEXT,
    RightsGranted TEXT,
    Restrictions TEXT,
    ApprovalStatus TEXT,
    ReviewDate DATE,
    LegalRepresentative TEXT,
    ContractNumber TEXT,
    AssetID INTEGER,
    MetadataVersion TEXT,
    SourceFilePath TEXT,
    Notes TEXT
);
INSERT INTO digital_media_licensing VALUES (4001,'Sunset Video','Video','MediaHub','Global','2022-01-01','2025-12-31','15000','5.0','Streaming','Web','Yes','Play, Download','None','Approved','2022-01-05','John Doe','CN-1001',501,'v1.0','/media/sunset.mp4','Initial license');
INSERT INTO digital_media_licensing VALUES (4002,'Epic Soundtrack','Audio','SoundWave','EU','2023-03-15','2026-03-14','8000','3.5','Broadcast','Radio','No','Broadcast only','No remix','Pending','2023-03-20','Jane Smith','CN-1002',502,'v1.1','/audio/epic.wav','Awaiting approval');
INSERT INTO digital_media_licensing VALUES (4003,'Adventure Game','Software','GameStudio','NA','2021-07-01','2024-06-30','25000','7.0','Retail','Console','Yes','Full distribution','Age rating 12+','Approved','2021-07-05','Mike Lee','CN-1003',503,'v2.0','/games/adventure.exe','Renewal due 2024');

-- Pharmacy inventory records
CREATE TABLE pharmacy_inventory_records (
    RecordID INTEGER PRIMARY KEY,
    PharmacyID INTEGER,
    DrugID INTEGER,
    BatchNumber TEXT,
    ExpirationDate DATE,
    QuantityOnHand INTEGER,
    ReorderLevel INTEGER,
    SupplierName TEXT,
    PurchasePrice REAL,
    SalePrice REAL,
    StorageLocation TEXT,
    TemperatureRequirement TEXT,
    ControlledSubstanceFlag TEXT,
    DEARegistrationNumber TEXT,
    LastAuditDate DATE,
    ReceivedDate DATE,
    DispensedQuantity INTEGER,
    ReturnQuantity INTEGER,
    AdjustmentReason TEXT,
    Category TEXT,
    Formulation TEXT,
    Notes TEXT
);
INSERT INTO pharmacy_inventory_records VALUES (6001,10,501,'BCH-001','2024-12-31',120,30,'PharmaSup','12.5','18.0','Shelf A1','Ambient','No','N/A','2023-01-10','2022-12-01',40,0,'None','Analgesic','Tablet','First batch');
INSERT INTO pharmacy_inventory_records VALUES (6002,10,502,'BCH-002','2025-06-30',80,20,'MediSupply','22.0','30.0','Refrigerator B2','Cold','Yes','DEA-12345','2023-02-15','2023-01-20',25,2,'Damaged','Antibiotic','Injection','Urgent restock');
INSERT INTO pharmacy_inventory_records VALUES (6003,11,503,'BCH-003','2023-11-15',15,10,'HealthPlus','5.0','9.0','Shelf C3','Ambient','No','N/A','2022-12-20','2022-12-10',5,0,'Expired','Vitamins','Capsule','Low stock');

-- Educational institution staff
CREATE TABLE educational_institution_staff (
    StaffID INTEGER PRIMARY KEY,
    InstitutionID INTEGER,
    FirstName TEXT,
    LastName TEXT,
    Position TEXT,
    Department TEXT,
    EmploymentStartDate DATE,
    EmploymentEndDate DATE,
    Salary INTEGER,
    ContractType TEXT,
    Email TEXT,
    PhoneNumber TEXT,
    OfficeLocation TEXT,
    HighestDegree TEXT,
    SpecialtyArea TEXT,
    TenureFlag TEXT,
    ResearchFunding REAL,
    PublicationCount INTEGER,
    TeachingLoad INTEGER,
    SupervisorID INTEGER,
    ClearanceLevel TEXT,
    Notes TEXT
);
INSERT INTO educational_institution_staff VALUES (8001,200,'Alice','Brown','Professor','Computer Science','2015-08-15',NULL,95000,'Tenured','alice.brown@univ.edu','555-1234','Room 212','PhD','Artificial Intelligence','Yes',200000,45,3,7501,'Level 3','Chair of department');
INSERT INTO educational_institution_staff VALUES (8002,200,'Bob','Smith','Lecturer','Mathematics','2019-01-10',NULL,60000,'Contract','bob.smith@univ.edu','555-5678','Room 105','MSc','Statistics','No',50000,10,2,8001,'Level 2','Part-time');
INSERT INTO educational_institution_staff VALUES (8003,201,'Carol','Jones','Administrator','Admissions','2012-05-01','2022-04-30',70000,'Full-time','carol.jones@college.edu','555-9012','Office 3B','BA','Student Services','Yes',0,0,0,8002,'Level 4','Retired');

-- Sports complex reservations
CREATE TABLE sports_complex_reservations (
    ReservationID INTEGER PRIMARY KEY,
    ComplexID INTEGER,
    FacilityName TEXT,
    ReservedBy TEXT,
    EventName TEXT,
    StartDate DATE,
    EndDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    ParticipantCount INTEGER,
    EquipmentNeeded TEXT,
    CateringRequested TEXT,
    PaymentStatus TEXT,
    TotalCost REAL,
    DepositAmount REAL,
    InsuranceProvided TEXT,
    ContactPhone TEXT,
    AccessibilityRequirements TEXT,
    SetupTimeMinutes INTEGER,
    CleanupTimeMinutes INTEGER,
    ApprovalStatus TEXT,
    Notes TEXT
);
INSERT INTO sports_complex_reservations VALUES (9001,10,'Main Arena','City Sports Club','Regional Tournament','2023-08-01','2023-08-03','08:00','20:00',120,'Scoreboard, Nets','Yes','Paid','15000','5000','Yes','555-1111','Wheelchair access','120','180','Approved','First time event');
INSERT INTO sports_complex_reservations VALUES (9002,10,'Swimming Pool','Aqua Academy','Summer Swim Camp','2023-07-10','2023-07-20','09:00','16:00',30,'Lifeguard chairs','No','Pending','8000','2000','No','555-2222','None','60','90','Pending','Recurring weekly');
INSERT INTO sports_complex_reservations VALUES (9003,11,'Tennis Courts','John Doe','Private Coaching','2023-09-15','2023-09-15','10:00','12:00',4,'Rackets, Balls','No','Paid','300','100','Yes','555-3333','None','30','30','Approved','One‑hour session');

-- Water treatment plant logs
CREATE TABLE water_treatment_plant_logs (
    LogID INTEGER PRIMARY KEY,
    PlantID INTEGER,
    LogDate DATE,
    Shift TEXT,
    OperatorName TEXT,
    InflowCubicMeters REAL,
    OutflowCubicMeters REAL,
    pHLevel REAL,
    TurbidityNTU REAL,
    ChlorineDoseMgL REAL,
    FilterPressureBar REAL,
    EnergyConsumptionKWh REAL,
    MaintenancePerformed TEXT,
    ChemicalUsageL REAL,
    IncidentFlag TEXT,
    IncidentDescription TEXT,
    RegulatoryComplianceScore REAL,
    Remarks TEXT,
    UpdatedBy TEXT,
    UpdateTimestamp DATE,
    SensorCalibrationDate DATE,
    NextMaintenanceDate DATE
);
INSERT INTO water_treatment_plant_logs VALUES (10001,1,'2023-06-01','Morning','Sam Lee',5000.0,4950.0,7.4,0.8,1.2,2.5,350.0,'Filter change',120.0,'No','',98.5,'All good','Admin','2023-06-01','2023-05-01','2023-07-01');
INSERT INTO water_treatment_plant_logs VALUES (10002,1,'2023-06-01','Evening','Laura Kim',4800.0,4750.0,7.2,0.9,1.1,2.6,340.0,'Chemical dosing',115.0,'Yes','Valve leak',92.0,'Leak fixed','Admin','2023-06-01','2023-05-01','2023-07-01');
INSERT INTO water_treatment_plant_logs VALUES (10003,2,'2023-06-02','Night','Mike Patel',5200.0,5180.0,7.5,0.7,1.3,2.4,360.0,'Routine check',125.0,'No','',99.0,'Stable','Operator','2023-06-02','2023-05-15','2023-07-15');

-- Telecom service plans
CREATE TABLE telecom_service_plans (
    PlanID INTEGER PRIMARY KEY,
    ProviderName TEXT,
    PlanName TEXT,
    DataCapGB INTEGER,
    VoiceMinutes INTEGER,
    SMSAllowance INTEGER,
    PriceMonthly REAL,
    ContractLengthMonths INTEGER,
    OverageChargePerGB REAL,
    RoamingIncluded TEXT,
    InternationalCalling TEXT,
    EarlyTerminationFee REAL,
    PromotionalDiscount REAL,
    ActivationFee REAL,
    DeviceEligibility TEXT,
    NetworkTechnology TEXT,
    CoverageArea TEXT,
    UnlimitedStreaming TEXT,
    FamilyAddOnAvailable TEXT,
    ParentalControlIncluded TEXT,
    CustomerSupportLevel TEXT,
    TermsAndConditionsURL TEXT
);
INSERT INTO telecom_service_plans VALUES (20001,'TeleNet','Unlimited Plus',unlimited,unlimited,unlimited,79.99,24,0.0,'Yes','Yes',199.99,10.0,0.0,'All devices','5G','National','Yes','Yes','Yes','Premium','http://telenet.com/terms');
INSERT INTO telecom_service_plans VALUES (20002,'ConnectCo','Family Share',50,500,1000,49.99,12,10.0,'No','Limited',99.99,5.0,25.0,'Smartphones only','4G','Regional','No','Yes','Yes','Standard','http://connectco.com/terms');
INSERT INTO telecom_service_plans VALUES (20003,'MobileX','Starter',5,200,200,19.99,0,5.0,'No','No',0.0,0.0,15.0,'Entry level phones','3G','Local','No','No','No','Basic','http://mobilex.com/terms');

-- Forest conservation projects
CREATE TABLE forest_conservation_projects (
    ProjectID INTEGER PRIMARY KEY,
    Region TEXT,
    ForestName TEXT,
    AreaHectares REAL,
    StartDate DATE,
    EndDate DATE,
    FundingAgency TEXT,
    TotalBudget REAL,
    PartnerOrganization TEXT,
    LeadScientist TEXT,
    SpeciesProtected TEXT,
    CarbonSequestrationTons REAL,
    MonitoringFrequency TEXT,
    SatelliteImageryUsed TEXT,
    CommunityEngagementLevel TEXT,
    LegalStatus TEXT,
    ProjectStatus TEXT,
    ReportingDueDate DATE,
    OutcomeMetric TEXT,
    LessonsLearned TEXT,
    ContactEmail TEXT,
    AdditionalNotes TEXT
);
INSERT INTO forest_conservation_projects VALUES (30001,'Northland','Pine Ridge',1500.0,'2021-04-01','2024-03-31','GlobalGreen','2000000','EcoPartners','Dr Green','Pine, Owl','50000','Quarterly','Landsat','High','Protected Area','Active','2023-12-31','Increased canopy','Community workshops helped','info@greenteam.org','Phase 2 planning');
INSERT INTO forest_conservation_projects VALUES (30002,'South Valley','Oak Grove',800.0,'2020-01-15','2023-12-31','ForestFund','1200000','Nature Alliance','Dr Brown','Oak, Deer','25000','Biannual','Sentinel','Medium','Conservation Easement','Completed','2023-06-30','Restored streams','Stakeholder meetings crucial','contact@forestfund.org','Monitoring ongoing');
INSERT INTO forest_conservation_projects VALUES (30003,'Eastern Hills','Maple Woods',600.0,'2022-07-01','2025-06-30','EcoBank','900000','GreenWatch','Dr White','Maple, Fox','18000','Monthly','PlanetScope','Low','Private Reserve','Planning','2024-05-15','Planted 10k saplings','Engagement low','support@ecobank.com','Awaiting permits');

-- Municipal water quality reports
CREATE TABLE municipal_water_quality_reports (
    ReportID INTEGER PRIMARY KEY,
    City TEXT,
    SampleLocation TEXT,
    SampleDate DATE,
    pHLevel REAL,
    LeadPPB REAL,
    MercuryPPB REAL,
    NitratePPM REAL,
    ChlorineResidualMG_L REAL,
    TurbidityNTU REAL,
    ConductivityUS REAL,
    TemperatureC REAL,
    BacterialCountCFU_ML REAL,
    SamplingMethod TEXT,
    AnalystName TEXT,
    ApprovedBy TEXT,
    ReportStatus TEXT,
    PublicationDate DATE,
    Remarks TEXT,
    DataSourceSystem TEXT,
    RegulatoryThresholdMet TEXT,
    FollowUpAction TEXT
);
INSERT INTO municipal_water_quality_reports VALUES (40001,'Springfield','River Front','2023-05-10',7.2,3.1,0.0,2.5,0.5,1.2,250,15.0,10,'Grab','Emily Clark','John Doe','Final','2023-05-15','All parameters within limits','WaterSysV1','Yes','No action required');
INSERT INTO municipal_water_quality_reports VALUES (40002,'Shelbyville','Lake North','2023-06-12',6.8,5.5,0.0,4.0,0.3,2.0,300,14.5,150,'Composite','Mark Stevens','Jane Smith','Draft','2023-06-18','Lead slightly elevated','WaterSysV2','No','Schedule follow‑up sampling');
INSERT INTO municipal_water_quality_reports VALUES (40003,'Ogden','Well Site 7','2023-07-08',7.5,0.8,0.0,1.0,0.6,0.9,220,13.0,5,'Grab','Laura Nguyen','Mike Brown','Final','2023-07-14','Excellent water quality','WaterSysV3','Yes','No further testing');