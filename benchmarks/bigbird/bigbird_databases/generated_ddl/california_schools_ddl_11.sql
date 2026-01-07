-- Community health outreach events
CREATE TABLE community_health_outreach_events
(
    EventID               INTEGER PRIMARY KEY,
    EventName             TEXT,
    EventDate             DATE,
    Location              TEXT,
    TargetPopulation      TEXT,
    PartnerOrg            TEXT,
    Volunteers            INTEGER,
    HoursServed           REAL,
    FundsRaised           REAL,
    MaterialsDistributed  INTEGER,
    FollowUpSurveyResponses INTEGER,
    OutcomeScore          REAL,
    CoordinatorFirstName  TEXT,
    CoordinatorLastName   TEXT,
    CoordinatorEmail      TEXT,
    ContactPhone          TEXT,
    Region                TEXT,
    City                  TEXT,
    ZipCode               TEXT,
    Notes                 TEXT
);

INSERT INTO community_health_outreach_events VALUES (1,'HealthFair2023','2023-04-15','CommunityCenter','Students','LocalHospital',25,120.5,5000.00,300,80,85.2,'Alice','Brown','alice.brown@example.com','5551234567','North','Springfield','12345','Annual health fair');
INSERT INTO community_health_outreach_events VALUES (2,'VaccinationDrive2023','2023-09-10','SchoolGym','Elderly','SeniorCenter',40,200.0,12000.00,500,150,92.5,'Bob','Smith','bob.smith@example.com','5559876543','South','Rivertown','67890','Flu vaccination campaign');
INSERT INTO community_health_outreach_events VALUES (3,'MentalHealthWorkshop','2023-11-05','Library','Adults','CommunityOrg',15,45.0,2000.00,100,60,78.0,'Carol','Johnson','carol.johnson@example.com','5555551212','East','Lakeside','24680','Stress management session');

-- School art exhibit inventory
CREATE TABLE school_art_exhibit_inventory
(
    ExhibitID                INTEGER PRIMARY KEY,
    ExhibitTitle             TEXT,
    ArtistName               TEXT,
    CreationYear             INTEGER,
    Medium                   TEXT,
    Dimensions               TEXT,
    LocationWithinSchool     TEXT,
    AcquiredDate             DATE,
    AcquisitionMethod        TEXT,
    ValueEstimation          REAL,
    InsurancePolicyNumber    TEXT,
    CuratorFirstName         TEXT,
    CuratorLastName          TEXT,
    CuratorEmail             TEXT,
    DisplayStartDate         DATE,
    DisplayEndDate           DATE,
    ConditionScore           REAL,
    VisitorCount             INTEGER,
    MaintenanceRequired      INTEGER,
    Notes                    TEXT
);

INSERT INTO school_art_inventorY VALUES (101,'SunsetOverLake','JohnDoe',2015,'OilOnCanvas','48x60in','ArtRoom','2016-02-10','Donation',3000.00,'INS12345','Emily','Clark','emily.clark@example.com','2023-01-01','2023-12-31',95.5,1200,0,'Displayed in main hallway');
INSERT INTO school_art_inventorY VALUES (102,'AbstractForms','JaneSmith',2018,'Acrylic','30x40in','Gallery','2019-05-20','Purchase',2500.00,'INS54321','Michael','Lee','michael.lee@example.com','2023-03-01','2023-09-30',88.0,800,1,'Framing needed');
INSERT INTO school_art_inventorY VALUES (103,'HistoricalPortrait','AlexBrown',2000,'Watercolor','24x36in','Library','2001-08-15','Grant',1800.00,'INS67890','Sara','Miller','sara.miller@example.com','2023-06-15','2024-06-14',92.3,500,0,'Featured in history month');

-- District renewable energy projects
CREATE TABLE district_renewable_energy_projects
(
    ProjectID                INTEGER PRIMARY KEY,
    ProjectName              TEXT,
    StartDate                DATE,
    EndDate                  DATE,
    EnergyType               TEXT,
    CapacityMW               REAL,
    ContractorName           TEXT,
    ContractAmount           REAL,
    FundingSource            TEXT,
    Status                   TEXT,
    EstimatedCO2ReductionTons REAL,
    ActualCO2ReductionTons   REAL,
    Latitude                 REAL,
    Longitude                REAL,
    County                   TEXT,
    City                     TEXT,
    ZipCode                  TEXT,
    ProjectManagerFirstName  TEXT,
    ProjectManagerLastName   TEXT,
    ProjectManagerEmail      TEXT,
    ContactPhone             TEXT,
    Notes                    TEXT
);

INSERT INTO district_renewable_energy_projects VALUES (1,'SolarFieldNorth','2022-01-15','2024-12-31','Solar',15.2,'SunPowerInc',5000000.00,'StateGrant','InProgress',12000.0,NULL,40.7128,-74.0060,'CountyA','MetroCity','10001','Laura','Adams','laura.adams@example.com','5551112222','Phase 1 completed');
INSERT INTO district_renewable_energy_projects VALUES (2,'WindTurbineEast','2021-05-01','2025-04-30','Wind',30.5,'WindWorks',8500000.00,'FederalFunding','Planned',25000.0,NULL,41.2033,-77.1945,'CountyB','RiverTown','20002','Mark','Nelson','mark.nelson@example.com','5553334444','Environmental impact study pending');
INSERT INTO district_renewable_energy_projects VALUES (3,'GeothermalHeaterSouth','2023-03-10','2026-03-09','Geothermal',10.0,'GeoHeatCo',4000000.00,'BondIssue','InProgress',18000.0,NULL,39.9526,-75.1652,'CountyC','MountainView','30003','Nina','Patel','nina.patel@example.com','5555557777','Construction started Q2 2023');

-- School parking permit records
CREATE TABLE school_parking_permit_records
(
    PermitID            INTEGER PRIMARY KEY,
    PermitNumber        TEXT,
    IssueDate           DATE,
    ExpiryDate          DATE,
    VehicleMake         TEXT,
    VehicleModel        TEXT,
    LicensePlate        TEXT,
    OwnerFirstName      TEXT,
    OwnerLastName       TEXT,
    OwnerEmail          TEXT,
    OwnerPhone          TEXT,
    ParkingZone         TEXT,
    PermitType          TEXT,
    IsActive            INTEGER,
    IssuedBy            TEXT,
    Cost                REAL,
    SpaceNumber         INTEGER,
    AccessLevel         TEXT,
    Comments            TEXT,
    LastUpdated         DATE
);

INSERT INTO school_parking_permit_records VALUES (5001,'PRM1001','2023-01-01','2023-12-31','Toyota','Camry','ABC1234','John','Doe','john.doe@example.com','5551230000','ZoneA','Student',1,'AdminOffice',150.00,12,'General','N/A','2023-01-02');
INSERT INTO school_parking_permit_records VALUES (5002,'PRM1002','2023-02-15','2024-02-14','Honda','Civic','XYZ5678','Jane','Smith','jane.smith@example.com','5559870000','ZoneB','Faculty',1,'AdminOffice',200.00,5,'Reserved','Near gym','2023-02-16');
INSERT INTO school_parking_permit_records VALUES (5003,'PRM1003','2022-09-01','2023-08-31','Ford','Focus','LMN2468','Mike','Brown','mike.brown@example.com','5555551111','ZoneC','Visitor',0,'SecurityDesk',0.00,0,'Temporary','Expired','2023-09-01');

-- Environmental sensor calibrations
CREATE TABLE environmental_sensor_calibrations
(
    CalibrationID          INTEGER PRIMARY KEY,
    SensorID               TEXT,
    SensorType             TEXT,
    CalibrationDate        DATE,
    TechnicianFirstName    TEXT,
    TechnicianLastName     TEXT,
    CalibrationMethod      TEXT,
    OffsetValue            REAL,
    ScaleFactor            REAL,
    TemperatureC           REAL,
    HumidityPercent        REAL,
    LocationDescription    TEXT,
    Latitude               REAL,
    Longitude              REAL,
    CalibrationStatus      TEXT,
    NextDueDate            DATE,
    Remarks                TEXT,
    CreatedBy              TEXT,
    CreatedDate            DATE,
    UpdatedBy              TEXT,
    UpdatedDate            DATE
);

INSERT INTO environmental_sensor_calibrations VALUES (10001,'SEN001','AirQuality','2023-03-10','Anna','White','Standard','0.02','1.001',22.5,55.0,'NorthWing','40.7306','-73.9352','Completed','2024-03-10','All good','System','2023-03-10','Anna','2023-03-10');
INSERT INTO environmental_sensor_calibrations VALUES (10002,'SEN002','Temperature','2023-04-12','Ben','Green','Advanced','-0.01','0.998',21.0,60.0,'SouthWing','40.7320','-73.9370','Completed','2025-04-12','Minor drift observed','System','2023-04-12','Ben','2023-04-12');
INSERT INTO environmental_sensor_calibrations VALUES (10003,'SEN003','Humidity','2023-05-05','Cara','Black','Standard','0.00','1.000',23.0,58.5,'EastWing','40.7345','-73.9395','Pending','2024-05-05','Calibration scheduled','System','2023-05-05','Cara','2023-05-05');

-- Faculty research projects
CREATE TABLE faculty_research_projects
(
    ProjectID               INTEGER PRIMARY KEY,
    ProjectTitle            TEXT,
    PrincipalInvestigatorFirstName TEXT,
    PrincipalInvestigatorLastName  TEXT,
    Department              TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    FundingAgency           TEXT,
    FundingAmount           REAL,
    GrantNumber             TEXT,
    ProjectStatus           TEXT,
    PublicationsCount       INTEGER,
    PatentCount             INTEGER,
    CollaboratingInstitutions TEXT,
    Abstract                TEXT,
    Keywords                TEXT,
    ProjectWebsite          TEXT,
    DataRepositoryURL       TEXT,
    ContactEmail            TEXT,
    ContactPhone            TEXT,
    LastUpdated             DATE
);

INSERT INTO faculty_research_projects VALUES (2001,'AIinEducation','Laura','Kim','ComputerScience','2022-09-01','2025-08-31','NSF','750000','NSF2022AI','Active',3,1,'TechUniversity;DataInstitute','Study of AI tools in K12','AI,Education,MachineLearning','http://ai-edu.example.com','http://doi.org/10.1234/aiedu','laura.kim@example.com','5552223333','2023-06-01');
INSERT INTO faculty_research_projects VALUES (2002,'RenewableEnergyStorage','Mark','Lopez','Engineering','2021-01-15','2024-12-31','DOE','1200000','DOE2021RES','Completed',5,0,'EnergyLab;GreenCollege','Development of high-capacity batteries','Battery,Renewable,Energy','http://res-storage.example.com','http://doi.org/10.5678/resstorage','mark.lopez@example.com','5554445555','2023-05-20');
INSERT INTO faculty_research_projects VALUES (2003,'UrbanHealthOutcomes','Nina','Patel','PublicHealth','2023-03-01','2026-02-28','NIH','500000','NIH2023UHO','Active',0,0,'CityHealthDept','Assessing health metrics in urban schools','Health,Urban,Education','http://urbanhealth.example.com','http://doi.org/10.9101/uho','nina.patel@example.com','5556667777','2023-07-15');

-- School WiFi access points
CREATE TABLE school_wifi_access_points
(
    AP_ID                 INTEGER PRIMARY KEY,
    SSID                  TEXT,
    MACAddress            TEXT,
    InstallationDate      DATE,
    FirmwareVersion       TEXT,
    Latitude              REAL,
    Longitude             REAL,
    Floor                 INTEGER,
    BuildingCode          TEXT,
    DepartmentServed      TEXT,
    MaxClients            INTEGER,
    CurrentClients        INTEGER,
    BroadcastPowerDBM     REAL,
    Channel               INTEGER,
    EncryptionType        TEXT,
    AdminContactFirstName TEXT,
    AdminContactLastName  TEXT,
    AdminContactEmail     TEXT,
    Status                TEXT,
    LastMaintenanceDate   DATE
);

INSERT INTO school_wifi_access_points VALUES (301,'SchoolNetA','00:1A:2B:3C:4D:5E','2022-08-01','v1.2.3',40.7128,-74.0060,1,'BLDG01','AdminOffice',200,45,-30.5,6,'WPA2','Tom','Allen','tom.allen@example.com','Active','2023-06-15');
INSERT INTO school_wifi_access_points VALUES (302,'SchoolNetB','00:1A:2B:3C:4D:5F','2022-09-15','v1.2.3',40.7130,-74.0055,2,'BLDG02','ScienceDept',150,30,-28.0,11,'WPA2','Sara','Lee','sara.lee@example.com','Active','2023-06-20');
INSERT INTO school_wifi_access_points VALUES (303,'SchoolNetC','00:1A:2B:3C:4D:60','2023-01-10','v1.3.0',40.7135,-74.0050,3,'BLDG03','Library',250,80,-32.0,1,'WPA3','Mike','Davis','mike.davis@example.com','Active','2023-07-01');

-- District transportation fleet maintenance
CREATE TABLE district_transportation_fleet_maintenance
(
    RecordID               INTEGER PRIMARY KEY,
    VehicleID              TEXT,
    MaintenanceDate        DATE,
    ServiceType            TEXT,
    Mileage                INTEGER,
    ServiceProvider        TEXT,
    Cost                   REAL,
    PartsReplaced          TEXT,
    TechnicianFirstName    TEXT,
    TechnicianLastName     TEXT,
    ServiceNotes           TEXT,
    NextDueMileage         INTEGER,
    NextDueDate            DATE,
    VehicleStatus          TEXT,
    WarrantyCovered        INTEGER,
    FuelType               TEXT,
    EngineHours            REAL,
    OperatorID             TEXT,
    UpdatedBy              TEXT,
    UpdateTimestamp        DATE
);

INSERT INTO district_transportation_fleet_maintenance VALUES (4001,'BUS001','2023-03-20','OilChange',45200,'AutoServiceCo',350.00,'OilFilter;EngineOil','Laura','Miller','Routine oil change','50000','2023-09-20','Operational',1,'Diesel',1200.5,'OP123','System','2023-03-20');
INSERT INTO district_transportation_fleet_maintenance VALUES (4002,'VAN045','2023-04-05','BrakeInspection',32000,'BrakeMasters',620.00,'BrakePads;Rotors','Ben','Clark','Brake pads worn','40000','2023-10-05','Operational',0,'Gasoline',800.0,'OP456','System','2023-04-05');
INSERT INTO district_transportation_fleet_maintenance VALUES (4003,'BUS078','2023-05-10','TireRotation',58000,'TirePro','180.00','AllTires','Nina','Peterson','Rotated all four tires','65000','2023-11-10','Operational',1,'Diesel',1500.0','OP789','System','2023-05-10');

-- School nutrition programs
CREATE TABLE school_nutrition_programs
(
    ProgramID               INTEGER PRIMARY KEY,
    ProgramName             TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    EligibilityCriteria    TEXT,
    DailyMealsServed        INTEGER,
    BudgetAllocated         REAL,
    FundingSource           TEXT,
    MealsCostPerStudent     REAL,
    NutritionScore          REAL,
    CoordinatorFirstName    TEXT,
    CoordinatorLastName     TEXT,
    CoordinatorEmail        TEXT,
    CoordinatorPhone        TEXT,
    MenuRotationWeeks       INTEGER,
    VendorName              TEXT,
    VendorContact           TEXT,
    ComplianceStatus        TEXT,
    AuditDate               DATE,
    Remarks                 TEXT
);

INSERT INTO school_nutrition_programs VALUES (6001,'BreakfastClub','2023-09-01','2024-06-30','LowIncome','350','500000','FederalGrant','2.50','85.5','Alice','Green','alice.green@example.com','5557778888',4,'FoodSupplyCo','John Doe','Compliant','2023-12-01','Program on track');
INSERT INTO school_nutrition_programs VALUES (6002,'AfterSchoolSnack','2023-09-01','2024-06-30','AllStudents','250','300000','StateFunding','1.75','90.0','Bob','Brown','bob.brown@example.com','5559990000',3,'SnackProviderInc','Jane Smith','Compliant','2023-11-15','Positive feedback');
INSERT INTO school_nutrition_programs VALUES (6003,'SummerMealProgram','2023-06-15','2023-08-31','AllStudents','400','200000','LocalFund','2.20','88.0','Carol','White','carol.white@example.com','5551112222',5,'SummerFoods','Mike Johnson','Pending','2023-07-20','Awaiting final audit');

-- Community parking permits
CREATE TABLE community_parking_permits
(
    PermitID                INTEGER PRIMARY KEY,
    PermitNumber            TEXT,
    IssueDate               DATE,
    ExpiryDate              DATE,
    PermitHolderFirstName   TEXT,
    PermitHolderLastName    TEXT,
    PermitHolderEmail       TEXT,
    PermitHolderPhone       TEXT,
    VehicleMake             TEXT,
    VehicleModel            TEXT,
    LicensePlate            TEXT,
    ParkingZone             TEXT,
    PermitType              TEXT,
    IsActive                INTEGER,
    IssuedBy                TEXT,
    Cost                    REAL,
    SpaceNumber             INTEGER,
    AccessLevel             TEXT,
    Note                    TEXT,
    LastUpdated             DATE
);

INSERT INTO community_parking_permits VALUES (7001,'CPM1001','2023-01-10','2023-12-31','David','Lee','david.lee@example.com','5552223333','Toyota','Corolla','XYZ123','Zone1','Resident',1,'CityHall',120.00,22,'General','N/A','2023-01-11');
INSERT INTO community_parking_permits VALUES (7002,'CPM1002','2023-02-20','2024-02-19','Emma','Clark','emma.clark@example.com','5554445555','Honda','Civic','ABC987','Zone2','Visitor',1,'CityHall',0.00,0,'Temporary','Permit for event','2023-02-21');
INSERT INTO community_parking_permits VALUES (7003,'CPM1003','2022-09-15','2023-09-14','Frank','Miller','frank.miller@example.com','5556667777','Ford','Focus','LMN456','Zone3','Commercial',0,'CityHall',200.00,5,'Reserved','Expired permit','2023-09-15');