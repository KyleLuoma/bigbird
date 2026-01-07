-- Environmental inspections performed at various sites
CREATE TABLE environmental_inspections
(
    InspectionID INTEGER PRIMARY KEY,
    SiteID INTEGER,
    InspectionDate DATE,
    InspectorName TEXT,
    InspectionType TEXT,
    FindingsSummary TEXT,
    CorrectiveAction TEXT,
    FollowUpDate DATE,
    Status TEXT,
    HazardLevel TEXT,
    AreaSqM REAL,
    TemperatureC REAL,
    HumidityPct REAL,
    WindSpeedKph REAL,
    RainfallMm REAL,
    PhotosCount INTEGER,
    DocumentsCount INTEGER,
    Latitude REAL,
    Longitude REAL,
    CreatedAt DATETIME
);

INSERT INTO environmental_inspections VALUES (1,101,'2023-05-12','AliceSmith','AirQuality','No major issues','N/A','2023-06-01','Closed','Low',2500.5,22.3,45.0,12.5,0.0,12,3,45.1234,-122.4567,'2023-05-12 10:00:00');
INSERT INTO environmental_inspections VALUES (2,102,'2023-06-20','BobJones','Soil','Elevated lead levels','Soil remediation','2023-07-15','Open','High',1800.0,18.0,55.0,8.0,2.3,5,2,46.5678,-123.1234,'2023-06-20 14:30:00');
INSERT INTO environmental_inspections VALUES (3,103,'2023-07-05','CarolLee','Water','Minor contamination','Additional testing','2023-08-01','InProgress','Medium',3000.0,20.0,60.0,10.0,0.5,8,4,44.9876,-121.9876,'2023-07-05 09:15:00');

-- Employee benefits enrollment and tracking
CREATE TABLE employee_benefits
(
    BenefitID INTEGER PRIMARY KEY,
    EmployeeID INTEGER,
    BenefitType TEXT,
    StartDate DATE,
    EndDate DATE,
    ProviderName TEXT,
    CoverageAmount REAL,
    Deductible REAL,
    EnrollmentStatus TEXT,
    ContributionPct REAL,
    CoverageLevel TEXT,
    PlanCode TEXT,
    EligibilityCriteria TEXT,
    GracePeriodDays INTEGER,
    BenefitStatus TEXT,
    LastUpdated DATETIME,
    Notes TEXT,
    ContactNumber TEXT,
    Email TEXT,
    CreatedAt DATETIME
);

INSERT INTO employee_benefits VALUES (1,1001,'Health','2023-01-01','2023-12-31','HealthCo',50000,500,'Enrolled',5.0,'Full','HC2023','FullTime',30,'Active','2023-01-01 08:00:00','N/A','5551234567','employee1@company.com','2022-12-15 12:00:00');
INSERT INTO employee_benefits VALUES (2,1002,'Dental','2023-02-01','2023-12-31','SmileDental',2000,0,'Enrolled',2.0,'Partial','DC2023','FullTime',0,'Active','2023-02-01 09:30:00','Preferred provider','5559876543','employee2@company.com','2022-12-20 15:45:00');
INSERT INTO employee_benefits VALUES (3,1003,'Retirement','2023-03-01','2025-02-28','FutureFunds',0,0,'Enrolled',3.5,'Full','RF2023','FullTime',60,'Active','2023-03-01 10:10:00','Vesting 5 years','5551112222','employee3@company.com','2023-01-05 11:20:00');

-- Public transport route schedules
CREATE TABLE public_transport_schedule
(
    ScheduleID INTEGER PRIMARY KEY,
    RouteID INTEGER,
    VehicleType TEXT,
    DayOfWeek TEXT,
    DepartureTime TEXT,
    ArrivalTime TEXT,
    StopSequence INTEGER,
    StopID INTEGER,
    StopName TEXT,
    DistanceFromStartKm REAL,
    TravelTimeMins INTEGER,
    IsExpress INTEGER,
    ServiceLevel TEXT,
    OperatedBy TEXT,
    FrequencyMins INTEGER,
    FirstRunTime TEXT,
    LastRunTime TEXT,
    Capacity INTEGER,
    AccessibilityFeatures TEXT,
    UpdatedAt DATETIME
);

INSERT INTO public_transport_schedule VALUES (1,10,'Bus','Monday','08:00','08:30',1,501,'CentralStation',0.0,30,0,'Standard','CityTransit',15,'06:00','22:00',50,'WheelchairRamp','2023-06-01 07:00:00');
INSERT INTO public_transport_schedule VALUES (2,10,'Bus','Monday','08:15','08:45',2,502,'ElmStreet',2.5,30,0,'Standard','CityTransit',15,'06:00','22:00',50,'WheelchairRamp','2023-06-01 07:00:00');
INSERT INTO public_transport_schedule VALUES (3,20,'Tram','Saturday','10:00','10:20',1,601,'RiverPark',0.0,20,1,'Express','MetroTram',10,'08:00','20:00',80,'LowFloor','2023-05-28 09:30:00');

-- Renewable energy asset registry
CREATE TABLE renewable_energy_assets
(
    AssetID INTEGER PRIMARY KEY,
    AssetType TEXT,
    LocationID INTEGER,
    CapacityMW REAL,
    CommissionDate DATE,
    OwnerCompany TEXT,
    OperatorCompany TEXT,
    Status TEXT,
    ExpectedLifeYears INTEGER,
    CurrentOutputMW REAL,
    AvgCapacityFactor REAL,
    MaintenanceContractID INTEGER,
    LastInspectionDate DATE,
    GridConnectionPoint TEXT,
    Latitude REAL,
    Longitude REAL,
    SiteAreaHa REAL,
    FundingSource TEXT,
    InvestmentCostUSD REAL,
    CreatedAt DATETIME
);

INSERT INTO renewable_energy_assets VALUES (1,'Solar','1001',50.0,'2022-04-15','SunPower Inc','GreenOps','Operational',25,48.5,0.97,2001,'2023-05-10','SubstationA',35.6789,-120.1234,120.5,'Equity','120000000','2022-04-01 09:00:00');
INSERT INTO renewable_energy_assets VALUES (2,'Wind','1002',150.0,'2021-09-30','WindEnergy LLC','WindOps','Operational',30,145.2,0.96,2002,'2023-04-20','SubstationB',36.1234,-119.9876,300.0,'Debt','300000000','2021-09-01 10:30:00');
INSERT INTO renewable_energy_assets VALUES (3,'Hydro','1003',80.0,'2020-03-10','HydroFlow','AquaPower','Operational',40,78.0,0.975,2003,'2023-03-15','SubstationC',34.5678,-121.4567,250.0,'PublicGrant','200000000','2020-02-15 08:45:00');

-- Waste management facility data
CREATE TABLE waste_management
(
    FacilityID INTEGER PRIMARY KEY,
    FacilityName TEXT,
    FacilityType TEXT,
    CapacityTons REAL,
    CurrentInventoryTons REAL,
    LocationID INTEGER,
    OperatedBy TEXT,
    OpeningDate DATE,
    Status TEXT,
    ProcessingMethod TEXT,
    HazardLevel TEXT,
    AvgProcessingTimeDays REAL,
    StaffCount INTEGER,
    EquipmentCount INTEGER,
    LastInspectionDate DATE,
    ComplianceScore REAL,
    PermitNumber TEXT,
    Latitude REAL,
    Longitude REAL,
    CreatedAt DATETIME
);

INSERT INTO waste_management VALUES (1,'NorthLand Transfer Station','Transfer','5000',1200,2001,'WasteCo','2015-06-01','Active','Sorting','Low',2.5,35,120,'2023-04-01',95.0,'PERM12345',45.0012,-122.0012,'2015-05-20 08:00:00');
INSERT INTO waste_management VALUES (2,'EastSide Recycling Plant','Recycling','3000',800,2002,'EcoRecycle','2018-09-15','Active','Mechanical','Medium',1.8,50,200,'2023-05-12',92.5,'PERM67890',45.1123,-122.1123,'2018-09-01 09:30:00');
INSERT INTO waste_management VALUES (3,'South Valley Hazardous Waste Facility','Hazardous','1500',400,2003,'SafeWaste','2020-01-20','Active','Incineration','High',3.2,20,80,'2023-03-20',88.0,'PERM54321',45.2234,-122.2234,'2020-01-05 07:45:00');

-- Parking permit issuance records
CREATE TABLE parking_permits
(
    PermitID INTEGER PRIMARY KEY,
    VehiclePlate TEXT,
    PermitType TEXT,
    IssueDate DATE,
    ExpiryDate DATE,
    IssuerAgency TEXT,
    OwnerName TEXT,
    OwnerContact TEXT,
    VehicleMake TEXT,
    VehicleModel TEXT,
    Color TEXT,
    Address TEXT,
    ZoneCode TEXT,
    IsActive INTEGER,
    PaymentStatus TEXT,
    FeeUSD REAL,
    RenewalCount INTEGER,
    LastRenewalDate DATE,
    CreatedAt DATETIME,
    Notes TEXT
);

INSERT INTO parking_permits VALUES (1,'ABC1234','Resident','2023-01-01','2024-01-01','CityParking','John Doe','5552223333','Toyota','Camry','Blue','123 Main St','Z01',1,'Paid',120.00,0,'2023-01-01','2022-12-15 09:00:00','N/A');
INSERT INTO parking_permits VALUES (2,'XYZ5678','Visitor','2023-06-15','2023-07-15','CityParking','Jane Smith','5554445555','Honda','Civic','Red','456 Oak Ave','Z02',0,'Unpaid',20.00,0,'2023-06-15','2023-06-10 10:15:00','Paid on exit');
INSERT INTO parking_permits VALUES (3,'LMN9101','Commercial','2022-03-01','2025-03-01','CityParking','Acme Corp','5556667777','Ford','Transit','White','789 Pine Rd','Z03',1,'Paid',500.00,2,'2024-03-01','2022-02-20 11:30:00','Renewed automatically');

-- Telecom network node inventory
CREATE TABLE telecom_network_nodes
(
    NodeID INTEGER PRIMARY KEY,
    NodeName TEXT,
    NodeType TEXT,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    Provider TEXT,
    CapacityGbps REAL,
    CurrentLoadPct REAL,
    FirmwareVersion TEXT,
    PowerSource TEXT,
    RedundancyLevel TEXT,
    MaintenanceWindow TEXT,
    LastMaintenanceDate DATE,
    Status TEXT,
    Region TEXT,
    City TEXT,
    Country TEXT,
    UptimeDays INTEGER,
    CreatedAt DATETIME
);

INSERT INTO telecom_network_nodes VALUES (1,'NodeA','MacroBase','34.0522','-118.2437','2018-05-20','TeleLink','200',45.0,'v1.2.3','Solar','High','02:00-04:00','2023-04-15','Online','West','LosAngeles','USA',1025,'2018-05-01 08:00:00');
INSERT INTO telecom_network_nodes VALUES (2,'NodeB','SmallCell','36.1699','-115.1398','2019-11-10','SignalCo','20',30.5,'v2.0.1','Mains','Medium','01:00-03:00','2023-05-10','Online','West','LasVegas','USA',980,'2019-10-25 09:30:00');
INSERT INTO telecom_network_nodes VALUES (3,'NodeC','MacroBase','40.7128','-74.0060','2020-02-05','ConnectNet','250',60.2,'v1.9.8','Mains','High','03:00-05:00','2023-03-20','Online','East','NewYork','USA',1050,'2020-01-20 07:45:00');

-- Museum exhibit loan agreements
CREATE TABLE museum_exhibit_loans
(
    LoanID INTEGER PRIMARY KEY,
    ExhibitID INTEGER,
    BorrowingInstitution TEXT,
    LoanStartDate DATE,
    LoanEndDate DATE,
    ConditionAtLoan TEXT,
    ConditionAtReturn TEXT,
    InsuranceValueUSD REAL,
    ShippingMethod TEXT,
    Carrier TEXT,
    TrackingNumber TEXT,
    CuratorName TEXT,
    LoanStatus TEXT,
    ExtendedFlag INTEGER,
    ExtensionDate DATE,
    ReturnDate DATE,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    ResponsibleStaffID INTEGER
);

INSERT INTO museum_exhibit_loans VALUES (1,301,'NationalGallery','2023-02-01','2023-08-01','Excellent','Excellent',250000,'Air','FastShip','TRK12345','Emily Reed','Active',0,NULL,NULL,'Handled with care','2023-01-20 10:00:00','2023-01-20 10:00:00',1501);
INSERT INTO museum_exhibit_loans VALUES (2,302,'CityMuseum','2022-11-15','2023-05-15','Good','Good',150000,'Sea','OceanLogistics','TRK67890','Mark Liu','Closed',1,'2023-06-15','2023-06-14','Extended due to exhibition delay','2022-11-01 09:30:00','2023-06-10 14:45:00',1502);
INSERT INTO museum_exhibit_loans VALUES (3,303,'ArtInstitute','2023-04-10','2023-10-10','Excellent','Pending',300000,'Land','RoadTrans','TRK54321','Sarah Kim','Active',0,NULL,NULL,'Awaiting final condition report','2023-04-01 08:15:00','2023-04-01 08:15:00',1503);

-- Agricultural crop yield records
CREATE TABLE agricultural_crop_yields
(
    RecordID INTEGER PRIMARY KEY,
    FarmID INTEGER,
    CropType TEXT,
    SeasonYear INTEGER,
    PlantingDate DATE,
    HarvestDate DATE,
    ExpectedYieldTon REAL,
    ActualYieldTon REAL,
    AreaHectares REAL,
    YieldPerHectare REAL,
    IrrigationMethod TEXT,
    FertilizerAmountKg REAL,
    PesticideUsageKg REAL,
    LaborHours INTEGER,
    MachineryHours INTEGER,
    WeatherImpactScore REAL,
    MarketPriceUSDPerTon REAL,
    RevenueUSD REAL,
    CreatedAt DATETIME,
    Notes TEXT
);

INSERT INTO agricultural_crop_yields VALUES (1,501,'Wheat',2023,'2023-03-01','2023-09-15',120.5,115.2,200.0,0.576,Drip,1500,75,800,120,0.8,250.00,28800000,'Yield slightly below forecast');
INSERT INTO agricultural_crop_yields VALUES (2,502,'Corn',2022,'2022-04-10','2022-10-20',200.0,210.5,250.0,0.842,Overhead,2000,100,1000,150,0.6,220.00,46310000,'Excellent harvest');
INSERT INTO agricultural_crop_yields VALUES (3,503,'Soybeans',2023,'2023-05-05','2023-11-01',90.0,88.0,150.0,0.587,CenterPivot,1200,60,600,90,0.9,300.00,26400000,'Drought affected lower yield');

-- Corporate governance documents registry
CREATE TABLE corporate_governance_documents
(
    DocumentID INTEGER PRIMARY KEY,
    DocumentType TEXT,
    Title TEXT,
    Version TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    OwnerDepartment TEXT,
    ApproverName TEXT,
    ApprovalDate DATE,
    Status TEXT,
    ConfidentialityLevel TEXT,
    StorageLocation TEXT,
    FileFormat TEXT,
    FileSizeKB INTEGER,
    AccessRoles TEXT,
    RevisionNumber INTEGER,
    LastModifiedDate DATETIME,
    CreatedBy TEXT,
    CreatedDate DATETIME,
    Tags TEXT
);

INSERT INTO corporate_governance_documents VALUES (1,'Policy','Code of Conduct','v3.1','2022-01-01','2025-12-31','HR','Laura White','2021-12-15','Active','Internal','/docs/policy','PDF',256,'HR,Legal',3,'2023-05-20 09:00:00','Laura White','2021-12-01 08:30:00','ethics,behavior');
INSERT INTO corporate_governance_documents VALUES (2,'Procedure','Expense Reimbursement','v2.0','2021-07-01','2024-06-30','Finance','Michael Green','2021-06-20','Active','Confidential','/docs/procedure','DOCX',180,'Finance,Managers',2,'2023-04-15 10:30:00','Michael Green','2021-06-01 09:45:00','finance,expenses');
INSERT INTO corporate_governance_documents VALUES (3,'Meeting Minutes','Board Meeting - March 2023','v1.0','2023-03-15','2024-03-15','Corporate','Susan Black','2023-03-16','Archived','Public','/docs/meetings','PDF',512,'Board,Executives',1,'2023-03-16 12:00:00','Susan Black','2023-03-16 11:00:00','board,meeting,2023');