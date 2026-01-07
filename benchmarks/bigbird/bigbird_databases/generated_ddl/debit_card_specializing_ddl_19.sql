-- Public transport operators information
CREATE TABLE public_transport_operators
(
    OperatorID INTEGER PRIMARY KEY,
    OperatorName TEXT,
    Country TEXT,
    City TEXT,
    EstablishedYear INTEGER,
    FleetSize INTEGER,
    DailyRidership REAL,
    ContactEmail TEXT,
    ContactPhone TEXT,
    HeadquartersAddress TEXT,
    IsNational BOOLEAN,
    ServiceType TEXT,
    LicenseNumber TEXT,
    Rating REAL,
    WebsiteURL TEXT,
    CEOName TEXT,
    NumberOfLines INTEGER,
    AnnualRevenue REAL,
    SubsidyAmount REAL,
    ComplianceScore REAL,
    LastAuditDate DATE,
    Notes TEXT
);

INSERT INTO public_transport_operators VALUES
(1,'MetroTransit','USA','NewYork',1995,250,1200000,'contact@metrotransit.com','5551234567','123 Main St NewYork, NY',1,'Urban','MT-2023-001',4.5,'http://metrotransit.com','Alice Johnson',12,850000000,5000000,92.3,'2023-06-15','Initial launch');
INSERT INTO public_transport_operators VALUES
(2,'CityBusCo','Canada','Toronto',2002,180,750000,'info@citybusco.ca','4165559876','456 Queen St Toronto, ON',1,'Bus','CBC-2024-045',4.2,'http://citybusco.ca','Brian Lee',8,420000000,3000000,88.7,'2024-02-20','Expanded routes');
INSERT INTO public_transport_operators VALUES
(3,'RegionalRail','UK','Manchester',1988,90,500000,'support@regionalrail.uk','1614555123','78 King Rd Manchester, UK',0,'Rail','RR-UK-099',4.7,'http://regionalrail.uk','Clara Smith',5,600000000,7500000,95.1,'2023-11-05','New high‑speed service');

-- Road maintenance equipment inventory
CREATE TABLE road_maintenance_equipment
(
    EquipmentID INTEGER PRIMARY KEY,
    EquipmentType TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    PurchaseDate DATE,
    ServiceLifeYears INTEGER,
    CurrentStatus TEXT,
    LocationID INTEGER,
    LastServiceDate DATE,
    HoursOperated REAL,
    CapacityTonnes REAL,
    FuelType TEXT,
    OperatorCompany TEXT,
    WarrantyEndDate DATE,
    SerialNumber TEXT,
    GPSLatitude REAL,
    GPSLongitude REAL,
    MaintenanceCostYTD REAL,
    DepreciationRate REAL,
    AssignedTeam TEXT,
    InspectionFrequencyDays INTEGER,
    NextInspectionDate DATE
);

INSERT INTO road_maintenance_equipment VALUES
(101,'SnowPlow','Caterpillar','SP-850',2020-01-15,10,'Active',301,'2024-01-10',1250.5,20.0,'Diesel','RoadWorksInc','2025-01-15','SNPL-202001',53.4808,-2.2426,15000.00,5.0,'TeamA',180,'2024-07-01');
INSERT INTO road_maintenance_equipment VALUES
(102,'Paver','Volvo','PV-3000',2018-06-30,12,'UnderRepair',302,'2023-12-20',980.2,30.0,'Electric','ConstructCo','2029-06-30','PV3000-018',51.5074,-0.1278,22000.00,6.5,'TeamB',365,'2024-12-20');
INSERT INTO road_maintenance_equipment VALUES
(103,'RoadSweeper','JohnDeere','RS-120',2021-09-05,8,'Active',303,'2024-03-05',760.0,15.0,'Hybrid','CityMaintenance','2029-09-05','RS120-921',40.7128,-74.0060,9000.00,4.2,'TeamC',90,'2024-06-04');

-- Fuel station lease agreements
CREATE TABLE fuel_station_lease_agreements
(
    LeaseID INTEGER PRIMARY KEY,
    GasStationID INTEGER,
    LesseeCompany TEXT,
    LeaseStartDate DATE,
    LeaseEndDate DATE,
    MonthlyRent REAL,
    SecurityDeposit REAL,
    RenewalOption BOOLEAN,
    LeaseTermYears INTEGER,
    GoverningLaw TEXT,
    LeaseStatus TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    RentEscalationRate REAL,
    ParkingSpacesIncluded INTEGER,
    AdvertisingRights BOOLEAN,
    MaintenanceResponsibility TEXT,
    TerminationClause TEXT,
    LastAmendmentDate DATE,
    Notes TEXT,
    CreatedBy TEXT
);

INSERT INTO fuel_station_lease_agreements VALUES
(5001,1001,'FuelCo Ltd','2022-01-01','2027-01-01',12000.00,24000.00,1,5,'California','Active','John Miller','5551112222','john.miller@fuelco.com',2.5,4,1,'Lessee','30day notice','2023-12-01','Renewed once','Admin');
INSERT INTO fuel_station_lease_agreements VALUES
(5002,1002,'SpeedFuel Inc','2021-06-15','2026-06-15',9500.00,19000.00,0,5,'Texas','Pending','Maria Garcia','5553334444','maria.garcia@speedfuel.com',3.0,2,0,'Lessor','60day notice','2023-10-20','Negotiations ongoing','Admin');
INSERT INTO fuel_station_lease_agreements VALUES
(5003,1003,'EcoPetrol Partners','2023-03-01','2028-03-01',11000.00,22000.00,1,5,'NewYork','Active','Liam OConnor','5555556666','liam.oconnor@ecopetrol.com',2.0,3,1,'Shared','90day notice','2024-02-10','Extended eco‑program','Admin');

-- Vehicle parking permits
CREATE TABLE vehicle_parking_permits
(
    PermitID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    PermitNumber TEXT,
    IssueDate DATE,
    ExpiryDate DATE,
    PermitType TEXT,
    IssuingAuthority TEXT,
    ParkingZone TEXT,
    Cost REAL,
    HolderName TEXT,
    HolderContactPhone TEXT,
    HolderContactEmail TEXT,
    VehicleMake TEXT,
    VehicleModel TEXT,
    VehicleYear INTEGER,
    EmissionsStandard TEXT,
    IsCommercial BOOLEAN,
    ValidationCode TEXT,
    RenewalNoticeSent DATE,
    Status TEXT,
    Notes TEXT,
    CreatedBy TEXT
);

INSERT INTO vehicle_parking_permits VALUES
(20001,3001,'PK-001-A','2023-04-01','2024-04-01','Monthly','CityDept','ZoneA',150.00,'Samuel Lee','5557778888','samuel.lee@example.com','Toyota','Camry',2022,'Euro6',0,'VAL12345','2024-03-20','Active','Valid for work days','System');
INSERT INTO vehicle_parking_permits VALUES
(20002,3002,'PK-002-B','2023-05-15','2024-05-15','Annual','CountyOffice','ZoneB',1200.00,'Olivia Wong','5559990000','olivia.wong@example.com','Ford','Transit',2021,'Euro5',1,'VAL67890','2024-05-01','Active','Commercial delivery vehicle','System');
INSERT INTO vehicle_parking_permits VALUES
(20003,3003,'PK-003-C','2022-09-10','2023-09-10','Quarterly','StateAgency','ZoneC',400.00,'Marco Diaz','5552223333','marco.diaz@example.com','Honda','Civic',2020,'Euro6',0,'VAL54321','2023-08-25','Expired','No renewal submitted','System');

-- Environmental grant programs
CREATE TABLE environmental_grant_programs
(
    GrantID INTEGER PRIMARY KEY,
    ProgramName TEXT,
    FundingAgency TEXT,
    FundingAmount REAL,
    ApplicationDeadline DATE,
    GrantPeriodMonths INTEGER,
    EligibleCategories TEXT,
    EvaluationCriteria TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    AwardedYear INTEGER,
    ReportingRequirements TEXT,
    SustainabilityScore REAL,
    GeographicScope TEXT,
    ProjectFocusArea TEXT,
    MatchingFundsRequired BOOLEAN,
    Status TEXT,
    LastUpdate DATE,
    Notes TEXT,
    CreatedBy TEXT,
    ApprovalDate DATE
);

INSERT INTO environmental_grant_programs VALUES
(9001,'CleanAir Initiative','EPA','5000000','2024-06-30',24,'Municipalities','ImpactScore', 'Laura Green','5554445555','laura.green@epa.gov',2024,'Annual report','89.5','National','Air quality monitoring',1,'Open','2024-05-15','First round of funding','Admin','2024-04-20');
INSERT INTO environmental_grant_programs VALUES
(9002,'GreenEnergy Boost','Department of Energy','7500000','2024-09-15',36,'State agencies','CostBenefit', 'Mark Patel','5556667777','mark.patel@doe.gov',2024,'Quarterly updates','92.0','Regional','Renewable installation',0,'Open','2024-08-10','Second cohort','Admin','2024-07-05');
INSERT INTO environmental_grant_programs VALUES
(9003,'Water Conservation Fund','USGS','3000000','2024-12-01',12,'Non‑profits','Feasibility','Emily Zhao','5558889999','emily.zhao@usgs.gov',2025,'Bi‑annual report','85.0','Local','Stormwater management',1,'Pending','2024-11-20','Awaiting review','Admin','2024-10-30');

-- Energy storage assets
CREATE TABLE energy_storage_assets
(
    AssetID INTEGER PRIMARY KEY,
    AssetName TEXT,
    AssetType TEXT,
    CapacityMWh REAL,
    LocationID INTEGER,
    CommissionDate DATE,
    OperatorCompany TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    ServiceLifeYears INTEGER,
    CurrentStatus TEXT,
    CurrentChargePercent REAL,
    VoltageKV REAL,
    TemperatureCelsius REAL,
    MaintenanceSchedule TEXT,
    LastInspectionDate DATE,
    WarrantyEndDate DATE,
    GridConnectionPoint TEXT,
    OwnershipType TEXT,
    FundingSource TEXT,
    Remarks TEXT,
    CreatedBy TEXT
);

INSERT INTO energy_storage_assets VALUES
(4001,'BatteryPark West','LithiumIon',45.0,701,'2022-03-10','EnergyCo','Tesla','Powerpack-3',15,'Operational',78.5,0.6,25.0,'Annual','2024-02-12','2037-03-10','Substation-12A','Owned','GreenBond','No issues','Admin');
INSERT INTO energy_storage_assets VALUES
(4002,'HydroReserve East','PumpedHydro',120.0,702,'2020-07-22','HydroPower Ltd','GE','HydroX-200',30,'Operational',92.0,1.2,18.0,'Biannual','2024-01-08','2050-07-22','Substation-9C','Leased','UtilityFunding','Performance exceeds targets','Admin');
INSERT INTO energy_storage_assets VALUES
(4003,'CompressedAir Alpha','CompressedAir',30.0,703,'2023-11-05','AirStore Inc','Siemens','CA-500',10,'Commissioning',0.0,0.4,20.0,'Quarterly','2024-03-01','2033-11-05','Substation-5B','JointVenture','PrivateEquity','Testing phase','Admin');

-- Customer service survey results
CREATE TABLE customer_service_survey_results
(
    SurveyID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    SurveyDate DATE,
    Channel TEXT,
    OverallSatisfaction INTEGER,
    HelpfulnessScore INTEGER,
    WaitTimeMinutes REAL,
    IssueResolved BOOLEAN,
    RepresentativeID INTEGER,
    Comments TEXT,
    FollowUpRequired BOOLEAN,
    FollowUpDate DATE,
    NPSScore INTEGER,
    LikelihoodToRecommend INTEGER,
    ProductKnowledgeScore INTEGER,
    IssueCategory TEXT,
    ResolutionTimeMinutes REAL,
    SurveyVersion TEXT,
    Language TEXT,
    PhoneModel TEXT,
    OSVersion TEXT,
    AppVersion TEXT,
    CreatedBy TEXT
);

INSERT INTO customer_service_survey_results VALUES
(60001,15001,'2024-02-18','Phone',9,8,3.5,1,2001,'Very helpful and quick','0',NULL,75,80,9,'Billing',12.0,'v2','EN','iPhone12','iOS15','1.4.2','System');
INSERT INTO customer_service_survey_results VALUES
(60002,15002,'2024-03-05','Chat',7,6,5.0,1,2002,'Resolved but took longer than expected','1','2024-03-20',60,65,7,'Technical',20.0,'v2','EN','GalaxyS21','Android12','1.4.2','System');
INSERT INTO customer_service_survey_results VALUES
(60003,15003,'2024-01-22','Email',5,4,0.0,0,2003,'Issue still open','1','2024-02-10',30,40,5,'Account','0.0','v1','EN','Pixel5','Android11','1.3.9','System');

-- Digital loyalty engagements
CREATE TABLE digital_loyalty_engagements
(
    EngagementID INTEGER PRIMARY KEY,
    LoyaltyProgramID INTEGER,
    CustomerID INTEGER,
    EngagementType TEXT,
    Timestamp DATETIME,
    PointsEarned INTEGER,
    PointsRedeemed INTEGER,
    PromotionCode TEXT,
    Channel TEXT,
    DeviceType TEXT,
    AppVersion TEXT,
    LocationID INTEGER,
    CampaignID INTEGER,
    Status TEXT,
    ExpirationDate DATE,
    CreatedBy TEXT,
    UpdatedBy TEXT,
    Notes TEXT,
    IsBonus BOOLEAN,
    EarnedMethod TEXT,
    RedeemedMethod TEXT,
    TransactionID INTEGER
);

INSERT INTO digital_loyalty_engagements VALUES
(80001,301,15001,'Earn','2024-04-10 14:23:00',150,0,'SPRING2024','MobileApp','iOS','2.1.0',501,7001,'Pending','2025-04-10','System','System','First spring promo','0','Purchase','None',90001);
INSERT INTO digital_loyalty_engagements VALUES
(80002,301,15002,'Redeem','2024-04-12 09:45:00',0,200,'SUMMER2024','Web','Chrome','2.1.0',502,7002,'Completed','2025-04-12','System','System','Redeemed summer discount','0','None','Purchase',90002);
INSERT INTO digital_loyalty_engagements VALUES
(80003,302,15003,'Earn','2024-04-15 18:30:00',300,0,'WELCOME','MobileApp','Android','3.0.0',503,7003,'Pending','2025-04-15','System','System','Welcome bonus','1','Signup','None',90003);

-- Regional air quality readings
CREATE TABLE regional_air_quality_readings
(
    ReadingID INTEGER PRIMARY KEY,
    StationID INTEGER,
    MeasurementDate DATE,
    MeasurementTime TEXT,
    PM2_5 REAL,
    PM10 REAL,
    NO2 REAL,
    SO2 REAL,
    O3 REAL,
    CO REAL,
    AQI INTEGER,
    TemperatureCelsius REAL,
    HumidityPercent REAL,
    WindSpeedKPH REAL,
    WindDirection TEXT,
    Latitude REAL,
    Longitude REAL,
    ReportingAgency TEXT,
    CalibrationDate DATE,
    DataQualityScore REAL,
    Notes TEXT,
    CreatedBy TEXT
);

INSERT INTO regional_air_quality_readings VALUES
(100001,801,'2024-04-01','08:00',12.5,25.0,18.2,4.1,30.5,0.6,45,22.3,55,12.5,'NE',34.0522,-118.2437','EPA','2024-01-15',96.5,'Clear morning','System');
INSERT INTO regional_air_quality_readings VALUES
(100002,802,'2024-04-01','08:00',20.1,40.3,22.5,5.0,28.0,0.8,78,18.7,70,8.2,'NW',40.7128,-74.0060','NYC Dept of Env','2024-02-10',89.0,'Slight haze','System');
INSERT INTO regional_air_quality_readings VALUES
(100003,803,'2024-04-01','08:00',8.0,15.0,12.0,3.5,35.0,0.4,35,16.5,60,10.0,'SE',41.8781,-87.6298','Chicago Air Quality','2024-03-05',98.0,'Very clean','System');

-- Corporate tax credit claims
CREATE TABLE corporate_tax_credit_claims
(
    ClaimID INTEGER PRIMARY KEY,
    CompanyID INTEGER,
    FiscalYear INTEGER,
    CreditType TEXT,
    ClaimAmount REAL,
    ApprovedAmount REAL,
    ClaimStatus TEXT,
    SubmissionDate DATE,
    ApprovalDate DATE,
    Audited BOOLEAN,
    AuditorName TEXT,
    AuditFindings TEXT,
    ReasonForDenial TEXT,
    TaxJurisdiction TEXT,
    PaymentDate DATE,
    Notes TEXT,
    CreatedBy TEXT,
    UpdatedBy TEXT,
    ReviewCycle INTEGER,
    LastModified DATE,
    SupportingDocumentIDs TEXT,
    IsReclaimed BOOLEAN
);

INSERT INTO corporate_tax_credit_claims VALUES
(30001,4101,2023,'R&D','250000','230000','Approved','2024-02-15','2024-04-10',1,'Janet Lee','All documentation satisfactory',NULL,'California','2024-04-20','First claim for FY2023','System','System',1,'2024-04-10','DOC12345;DOC12346',0);
INSERT INTO corporate_tax_credit_claims VALUES
(30002,4102,2023,'Renewable Energy','180000','180000','Approved','2024-01-20','2024-03-05',1,'Mark Davis','Verified equipment receipts',NULL,'Texas','2024-03-10','Second claim FY2023','System','System',1,'2024-03-05','DOC22345;DOC22346',0);
INSERT INTO corporate_tax_credit_claims VALUES
(30003,4103,2023,'Employee Training','90000',NULL,'Rejected','2024-03-01',NULL,0,NULL,'Insufficient evidence of training hours','Missing training logs','NewYork',NULL,'Claim denied due to incomplete docs','System','System',1,'2024-03-01','DOC32345',0);