```sql
-- Information about individual building wings within the hospital complex
CREATE TABLE BuildingWingInfo (
    WingID               INTEGER PRIMARY KEY,
    WingName             TEXT,
    FloorCount           INTEGER,
    TotalArea            REAL,
    YearConstructed      INTEGER,
    BuildingCode         TEXT,
    ManagerID            INTEGER,
    OccupancyStatus      TEXT,
    FireSafetyRating     INTEGER,
    HVACSystemID         INTEGER,
    MaintenanceVendor    TEXT,
    LastRenovationDate   DATE,
    StructuralMaterial   TEXT,
    CeilingHeight        REAL,
    WindowCount          INTEGER,
    ElevatorAccess       INTEGER,   -- 0 = No, 1 = Yes
    SecurityLevel        INTEGER,
    EnergyStarRating     INTEGER,
    AccessibilityScore   INTEGER,
    WasteManagementPlan  TEXT,
    ElectricalCapacityKW REAL,
    ParkingAllocation    INTEGER,
    NoiseReductionScore  INTEGER,
    LightingEfficiency   REAL
);

INSERT INTO BuildingWingInfo VALUES (1,'NorthWing',5,25000.5,1998,'BC01',101,'Occupied',4,12,'AlphaFacilities','2021-06-15','Concrete',3.2,120,1,3,5,8,'StandardPlan',5000.0,120,7,0.85);
INSERT INTO BuildingWingInfo VALUES (2,'SouthWing',4,18000.0,2005,'BC02',102,'Vacant',5,13,'BetaServices','2020-03-10','Steel',3.0,95,1,2,4,9,'EnhancedPlan',4000.0,80,6,0.78);
INSERT INTO BuildingWingInfo VALUES (3,'EastWing',6,30000.0,2012,'BC03',103,'Occupied',5,14,'GammaManagement','2022-11-01','Mixed',3.5,150,1,4,5,10,'PremiumPlan',5500.0,150,8,0.92);


-- Log of HVAC system performance measurements
CREATE TABLE HVACSystemLog (
    LogID                INTEGER PRIMARY KEY,
    HVACSystemID         INTEGER,
    RecordDate           DATE,
    OutdoorTempC         REAL,
    SupplyAirTempC       REAL,
    ReturnAirTempC       REAL,
    FanSpeedRPM          INTEGER,
    PowerConsumptionKW   REAL,
    FilterPressurePa     REAL,
    CO2LevelPPM          INTEGER,
    HumidityPercent      REAL,
    RuntimeHours         REAL,
    MaintenanceDueDays   INTEGER,
    FaultCode            INTEGER,
    OperatorID           INTEGER,
    ZoneID               INTEGER,
    AirflowCFM           REAL,
    CoolingCapacityKW    REAL,
    HeatingCapacityKW    REAL,
    EnergyEfficiencyRatio REAL,
    AlarmStatus          INTEGER,
    CompressorRunHours   REAL,
    DehumidifierRunHours REAL,
    HeatingRunHours      REAL
);

INSERT INTO HVACSystemLog VALUES (101,12,'2023-01-05',15.2,22.5,19.8,1450,12.5,250,600,45.0,8.0,30,0,201,3,3500.0,45.0,30.0,3.1,0,6.0,2.0,1.5);
INSERT INTO HVACSystemLog VALUES (102,12,'2023-01-06',14.8,22.1,19.5,1500,12.8,260,610,44.5,7.9,30,0,202,3,3550.0,45.5,30.5,3.2,0,6.2,2.1,1.6);
INSERT INTO HVACSystemLog VALUES (103,13,'2023-01-05',16.0,23.0,20.0,1400,11.9,240,590,46.0,8.2,28,1,203,4,3400.0,44.0,29.0,3.0,1,5.8,1.9,1.4);


-- Inventory of IT assets used across the hospital
CREATE TABLE ITAssetInventory (
    AssetID                INTEGER PRIMARY KEY,
    AssetTag               TEXT,
    AssetType              TEXT,
    Manufacturer           TEXT,
    ModelNumber            TEXT,
    SerialNumber           TEXT,
    PurchaseDate           DATE,
    WarrantyExpirationDate DATE,
    CurrentLocation        TEXT,
    AssignedDepartment     TEXT,
    OperatingSystem        TEXT,
    CPUCores               INTEGER,
    RAMGB                  INTEGER,
    StorageTB              REAL,
    NetworkMAC             TEXT,
    IPAddress              TEXT,
    OwnerUserID            INTEGER,
    AssetStatus            TEXT,
    LastMaintenanceDate    DATE,
    MaintenanceVendor      TEXT,
    CostUSD                REAL,
    DepreciationYears      INTEGER,
    DisposalDate           DATE,
    DisposalMethod         TEXT,
    SupportContractID      INTEGER,
    LastSoftwareUpdateDate DATE,
    EncryptionEnabled      INTEGER,
    BackupSchedule         TEXT
);

INSERT INTO ITAssetInventory VALUES (5001,'IT-5001','Desktop','Dell','OptiPlex790','SN12345','2019-04-12','2022-04-12','Room101','Radiology','Windows10',4,16,0.5,'00:1A:2B:3C:4D:5E','192.168.1.10',301,'Active','2022-12-01','TechServ','1200',3,NULL,NULL,9001,'2022-11-15',1,'Daily');
INSERT INTO ITAssetInventory VALUES (5002,'IT-5002','Server','HP','ProLiantDL380','SN67890','2020-01-20','2023-01-20','DataCenter','Oncology','Linux',16,64,4.0,'00:1A:2B:3C:4D:5F','192.168.2.20',302,'Active','2022-10-10','DataTech','8500',5,NULL,NULL,9002,'2022-09-30',1,'Weekly');
INSERT INTO ITAssetInventory VALUES (5003,'IT-5003','Laptop','Apple','MacBookPro','SN11223','2021-07-15','2024-07-15','MobileCart','Cardiology','macOS',8,32,1.0,'00:1A:2B:3C:4D:60','192.168.3.30',303,'InRepair','2022-11-20','AppleCare','2100',3,NULL,NULL,9003,'2022-11-01',1,'Daily');


-- Scheduled menus for the hospital cafeteria
CREATE TABLE CafeteriaMenuSchedule (
    MenuID                 INTEGER PRIMARY KEY,
    DateEffective          DATE,
    MealPeriod             TEXT,
    DishName               TEXT,
    CuisineType            TEXT,
    Calories               INTEGER,
    ProteinG               REAL,
    CarbohydrateG          REAL,
    FatG                   REAL,
    SodiumMG               INTEGER,
    Vegetarian            INTEGER,   -- 0 = No, 1 = Yes
    Vegan                 INTEGER,
    GlutenFree            INTEGER,
    AllergenInfo           TEXT,
    PortionSizeGrams       INTEGER,
    SupplierID             INTEGER,
    PreparationTimeMin     INTEGER,
    CookingMethod          TEXT,
    SpicinessLevel        INTEGER,
    SugarG                 REAL,
    FiberG                 REAL,
    CholesterolMG          INTEGER,
    VitaminAIU             INTEGER,
    VitaminCmg             INTEGER,
    CalciumMG              INTEGER,
    IronMG                 INTEGER,
    PriceUSD               REAL,
    MenuCategory           TEXT,
    NutrientScore          REAL,
    KitchenStation         TEXT
);

INSERT INTO CafeteriaMenuSchedule VALUES (1,'2023-02-01','Breakfast','Oatmeal with Berries','American',350,12.0,55.0,6.0,210,1,0,1,'None',250,501,10,'Boil',0,5.0,8.0,0,500,10,450,300,0.85,'Hot','Standard','A1');
INSERT INTO CafeteriaMenuSchedule VALUES (2,'2023-02-01','Lunch','Grilled Chicken Salad','Mediterranean',450,30.0,20.0,15.0,400,0,0,0,'Nuts',350,502,15,'Grill',1,3.0,5.0,80,700,15,350,200,0.78,'Cold','Standard','B2');
INSERT INTO CafeteriaMenuSchedule VALUES (3,'2023-02-01','Dinner','Vegetable Stir Fry','Asian',500,15.0,70.0,12.0,350,1,1,0,'Soy',300,503,12,'StirFry',2,6.0,9.0,0,600,20,400,250,0.80,'Hot','Standard','C3');


-- Meter readings for hospital energy consumption
CREATE TABLE EnergyConsumptionMeter (
    MeterID                INTEGER PRIMARY KEY,
    LocationCode           TEXT,
    ReadingDate            DATE,
    ElectricityKWh         REAL,
    GasTherms              REAL,
    WaterGallons           REAL,
    SteamPounds            REAL,
    SolarGenerationKWh     REAL,
    MeterStatus            TEXT,
    ReadingOperatorID      INTEGER,
    TemperatureC           REAL,
    HumidityPercent        REAL,
    PeakDemandKW           REAL,
    OffPeakDemandKW        REAL,
    CumulativeCostUSD      REAL,
    RenewablePercentage    REAL,
    CO2EmissionsKg         REAL,
    MaintenanceDueDays     INTEGER,
    CalibrationDate        DATE,
    VoltageV               REAL,
    CurrentA               REAL,
    PowerFactor            REAL,
    MeterManufacturer      TEXT,
    FirmwareVersion        TEXT,
    CommunicationProtocol  TEXT,
    InstallationDate       DATE,
    LastServiceDate        DATE,
    ServiceVendor          TEXT,
    Notes                  TEXT,
    DataSource             TEXT
);

INSERT INTO EnergyConsumptionMeter VALUES (2001,'ED001','2023-01-31',12500.5,3500.0,42000.0,800.0,1500.0,'Active',401,22.5,55.0,500.0,300.0,25000.0,20.0,12000.0,30,'2022-12-01',230.0,10.5,0.95,'Siemens','v2.3','Modbus','2018-05-10','2022-11-15','EnergyCo','All good','SCADA');
INSERT INTO EnergyConsumptionMeter VALUES (2002,'ED002','2023-01-31',9800.3,2800.0,39000.0,750.0,1200.0,'Active',402,21.0,60.0,420.0,250.0,20000.0,18.0,9500.0,45,'2022-11-20',225.0,9.8,0.93,'ABB','v2.1','BACnet','2019-03-22','2022-10-20','PowerInc','Checked','SCADA');
INSERT INTO EnergyConsumptionMeter VALUES (2003,'ED003','2023-01-31',11200.7,3200.0,41000.0,770.0,1400.0,'Active',403,23.0,58.0,460.0,280.0,23000.0,19.5,11000.0,25,'2022-12-15',228.0,10.2,0.94,'Schneider','v2.2','Modbus','2020-01-15','2022-12-05','UtilityCo','Normal','SCADA');


-- Assignment of parking zones to staff and visitors
CREATE TABLE ParkingZoneAssignment (
    AssignmentID           INTEGER PRIMARY KEY,
    ZoneCode               TEXT,
    AssignedToID           INTEGER,
    AssignedToType         TEXT,
    VehiclePlate           TEXT,
    PermitNumber           TEXT,
    IssueDate              DATE,
    ExpirationDate         DATE,
    AccessLevel            INTEGER,
    ReservedSpotNumber     INTEGER,
    ElectricVehicle        INTEGER,   -- 0 = No, 1 = Yes
    HandicappedAccessible  INTEGER,
    MonthlyFeeUSD          REAL,
    PaymentMethod          TEXT,
    ViolationCount         INTEGER,
    LastViolationDate     DATE,
    EnforcementOfficerID   INTEGER,
    ZoneAreaSqM            REAL,
    LightingLevelLux       REAL,
    SurveillanceCameraID   INTEGER,
    SignageType            TEXT,
    ShadeAvailable         INTEGER,
    AdjacentLotID          INTEGER,
    MaintenanceStatus      TEXT,
    LastInspectionDate     DATE,
    InspectionResult       TEXT,
    Comment                TEXT,
    CreatedByUserID        INTEGER,
    CreatedTimestamp       DATE,
    ModifiedByUserID       INTEGER,
    ModifiedTimestamp      DATE
);

INSERT INTO ParkingZoneAssignment VALUES (301,'PZ-A',101,'Staff','ABC123','PKG001','2022-01-01','2023-01-01',3,12,0,0,150.00,'CreditCard',0,'2022-12-15',501,200.0,300.0,901,'Standard',1,5,'Good','2022-11-30','Pass','N/A',1001,'2022-01-01',1002,'2022-12-20');
INSERT INTO ParkingZoneAssignment VALUES (302,'PZ-B',202,'Visitor','XYZ789','PKG002','2022-06-15','2022-12-15',2,45,1,0,100.00,'Cash',1,'2022-11-01',502,150.0,250.0,902,'Standard',0,3,'Average','2022-10-20','Pass','N/A',1003,'2022-06-15',1004,'2022-11-30');
INSERT INTO ParkingZoneAssignment VALUES (303,'PZ-C',303,'Staff','LMN456','PKG003','2021-09-01','2022-09-01',4,8,0,1,180.00,'DirectDebit',0,'2022-08-10',503,250.0,350.0,903,'Premium',1,7,'Excellent','2022-08-05','Pass','N/A',1005,'2021-09-01',1006,'2022-08-20');


-- Calibration records for biomedical equipment
CREATE TABLE BiomedicalEquipmentCalibration (
    CalibrationID           INTEGER PRIMARY KEY,
    EquipmentID             INTEGER,
    EquipmentType           TEXT,
    Manufacturer            TEXT,
    ModelNumber             TEXT,
    SerialNumber            TEXT,
    CalibrationDate         DATE,
    NextDueDate            DATE,
    PerformedByTechnicianID INTEGER,
    CalibrationMethod       TEXT,
    ResultStatus            TEXT,
    DeviationPercentage     REAL,
    TemperatureC            REAL,
    HumidityPercent         REAL,
    PressurePa              REAL,
    VoltageV                REAL,
    CurrentA                INTEGER,
    FrequencyHz             REAL,
    CalibrationReportPDF    TEXT,
    Comments                TEXT,
    LaboratoryID            INTEGER,
    CalibrationCostUSD      REAL,
    ServiceAgreementID      INTEGER,
    CalibrationType         TEXT,
    ReferenceStandard       TEXT,
    TimeTakenMinutes        INTEGER,
    ValidationPassed        INTEGER,
    CalibrationLocation     TEXT,
    UpdatedByUserID         INTEGER,
    UpdatedTimestamp        DATE,
    ApprovalStatus          TEXT
);

INSERT INTO BiomedicalEquipmentCalibration VALUES (4001,7001,'Centrifuge','Eppendorf','5424','SN001','2022-10-05','2023-10-05',601,'Standard','Pass',0.02,22.0,45.0,101325,230.0,5,60.0,'Report4001.pdf','All within spec',301,500.00,801,'Routine','NIST','45',1,'Lab1',701,'2022-10-05','Approved');
INSERT INTO BiomedicalEquipmentCalibration VALUES (4002,7002,'Spectrometer','Thermo','Nicolet','SN002','2022-11-12','2023-11-12',602,'Standard','Pass',0.01,21.5,44.0,101300,240.0,6,58.5,'Report4002.pdf','Stable performance',302,750.00,802,'Annual','ISO','60',1,'Lab2',702,'2022-11-12','Approved');
INSERT INTO BiomedicalEquipmentCalibration VALUES (4003,7003,'Incubator','Memmert','ST400','SN003','2022-12-20','2023-12-20',603,'Standard','Pass',0.03,23.0,46.0,101400,220.0,4,59.0,'Report4003.pdf','Slight temperature drift',303,650.00,803,'Routine','ISO','30',1,'Lab3',703,'2022-12-20','Approved');


-- Versioning information for clinical protocols
CREATE TABLE ClinicalProtocolVersion (
    ProtocolVersionID       INTEGER PRIMARY KEY,
    ProtocolID              INTEGER,
    VersionNumber           TEXT,
    EffectiveDate           DATE,
    ExpirationDate          DATE,
    AuthorID                INTEGER,
    ReviewerID              INTEGER,
    ApprovalStatus          TEXT,
    ChangeSummary           TEXT,
    DocumentPath            TEXT,
    IsActive                INTEGER,
    ClinicalArea            TEXT,
    TargetPopulation        TEXT,
    ImplementationGuideline TEXT,
    TrainingRequired        INTEGER,
    AuditFrequencyMonths    INTEGER,
    RiskLevel               TEXT,
    ComplianceScore         REAL,
    LastAuditDate           DATE,
    NextAuditDueDate        DATE,
    StakeholderGroup        TEXT,
    FundingSource           TEXT,
    Notes                   TEXT,
    CreatedByUserID         INTEGER,
    CreatedDate             DATE,
    ModifiedByUserID        INTEGER,
    ModifiedDate            DATE,
    VersionTag              TEXT,
    SignatureRequired       INTEGER,
    ReviewCycleYears        INTEGER
);

INSERT INTO ClinicalProtocolVersion VALUES (6001,1001,'v1.0','2022-01-01','2023-01-01',801,901,'Approved','Initial release','/docs/protocol1001_v1.pdf',1,'Oncology','Adults','Follow standard steps',1,12,'Medium',85.0,'2022-12-15','2023-12-15','Oncologists','GrantXYZ','No issues',1001,'2022-01-01',1002,'2022-12-20','v1','0',5);
INSERT INTO ClinicalProtocolVersion VALUES (6002,1001,'v1.1','2023-01-02','2024-01-01',801,902,'Approved','Updated dosage guidelines','/docs/protocol1001_v1_1.pdf',1,'Oncology','Adults','Updated steps',1,12,'Medium',88.5,'2023-12-10','2024-12-10','Oncologists','GrantXYZ','Minor update',1001,'2023-01-02',1003,'2023-12-12','v1.1','0',5);
INSERT INTO ClinicalProtocolVersion VALUES (6003,1002,'v2.0','2022-05-15','2023-05-15',803,904,'Pending','Draft for review','/docs/protocol1002_v2.pdf',0,'Cardiology','Seniors','Draft steps',0,6,'High',0.0,NULL,NULL,'Cardiologists','GrantABC','Awaiting review',1004,'2022-05-15',1005,'2022-05-20','v2','0',2);


-- Details of health education programs offered by the hospital
CREATE TABLE HealthEducationProgram (
    ProgramID               INTEGER PRIMARY KEY,
    ProgramName             TEXT,
    Category                TEXT,
    TargetAudience          TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    Location                TEXT,
    InstructorID            INTEGER,
    MaxParticipants         INTEGER,
    CurrentEnrollment       INTEGER,
    DurationMinutes         INTEGER,
    Language                TEXT,
    MaterialsProvided       TEXT,
    CredentialAwarded       TEXT,
    FeeUSD                  REAL,
    DiscountAvailable       INTEGER,
    RegistrationDeadline    DATE,
    ContactPhone            TEXT,
    ContactEmail            TEXT,
    OnlineAccessLink        TEXT,
    Prerequisite           TEXT,
    EvaluationMethod        TEXT,
    FollowUpSession         INTEGER,
    FollowUpIntervalDays    INTEGER,
    RequiredEquipment       TEXT,
    SafetyGuidelines        TEXT,
    FundingSource           TEXT,
    SponsorOrganization     TEXT,
    AccessibilityFeatures   TEXT,
    ProgramStatus           TEXT,
    CreatedByUserID         INTEGER,
    CreatedDate             DATE,
    ModifiedByUserID        INTEGER,
    ModifiedDate            DATE,
    Notes                   TEXT
);

INSERT INTO HealthEducationProgram VALUES (8001,'Diabetes Management','Chronic Disease','Adults','2023-03-01','2023-04-30','Room201',901,30,25,120,'English','Booklet,Video','Certificate',0,1,'2023-02-20','5551234','edu@hospital.org','http://online.hospital.org/diabetes','None','Quiz','1','30','BloodGlucoseMeter','Standard','GrantHealth','PharmaCo','WheelchairAccess','Active',1001,'2023-01-15',1002,'2023-02-01','');
INSERT INTO HealthEducationProgram VALUES (8002,'Smoking Cessation','Prevention','Adults','2023-05-10','2023-06-10','Room305',902,20,20,90,'Spanish','Brochure','CompletionBadge',0,0,'2023-05-01','5555678','smoking@hospital.org','http://online.hospital.org/smoking','None','Survey','0','0','None','Standard','GrantWellness','HealthOrg','AudioAssist','Completed',1003,'2023-03-20',1004,'2023-04-15','');
INSERT INTO HealthEducationProgram VALUES (8003,'Pediatric First Aid','Safety','Parents','2023-07-05','2023-07-20','Room101',903,15,10,180,'English','Manual,Kit','Badge',20,1,'2023-06-25','5559012','firstaid@hospital.org','http://online.hospital.org/firstaid','BasicMedical','PracticalTest','1','60','FirstAidKit','ChildSafety','GrantKids','KidsCare','LargePrint','Scheduled',1005,'2023-04-30',1006,'2023-05-25','');


-- Records of visitor access to hospital areas
CREATE TABLE VisitorAccessLog (
    AccessLogID             INTEGER PRIMARY KEY,
    VisitorID               INTEGER,
    VisitorName             TEXT,
    VisitDate               DATE,
    CheckInTime             TIME,
    CheckOutTime            TIME,
    AreaVisited             TEXT,
    HostPatientID           INTEGER,
    RelationshipToPatient   TEXT,
    BadgeNumber             TEXT,
    AccessLevelGranted      INTEGER,
    PurposeOfVisit          TEXT,
    VehiclePlate            TEXT,
    EntryGate               TEXT,
    ExitGate                TEXT,
    SecurityOfficerID       INTEGER,
    TemperatureC            REAL,
    SymptomsReported        TEXT,
    HandSanitizerUsed      INTEGER,
    MaskWorn               INTEGER,
    VisitorPhotoPath        TEXT,
    Notes                   TEXT,
    CreatedByUserID         INTEGER,
    CreatedTimestamp        DATE,
    ModifiedByUserID        INTEGER,
    ModifiedTimestamp       DATE,
    ViolationFlag          INTEGER,
    FollowUpRequired       INTEGER,
    FollowUpDate            DATE,
    FollowUpNotes           TEXT
);

INSERT INTO VisitorAccessLog VALUES (9001,1101,'John Doe','2023-02-15','08:45:00','10:30:00','Lobby',2001,'Friend','B1001',1,'Visit','ABC123','NorthGate','SouthGate',501,36.5,'None',1,1,'/photos/1101.jpg','No issues',1001,'2023-02-15',1002,'2023-02-15',0,0,NULL,NULL);
INSERT INTO VisitorAccessLog VALUES (9002,1102,'Jane Smith','2023-02-16','09:15:00','11:00:00','Radiology',2002,'Sibling','B1002',2,'Accompany patient','XYZ789','EastGate','WestGate',502,37.0,'Cough',1,0,'/photos/1102.jpg','Reported cough, mask wore',1003,'2023-02-16',1004,'2023-02-16',1,1,'2023-02-20','Monitor symptoms');
INSERT INTO VisitorAccessLog VALUES (9003,1103,'Mike Brown','2023-02-17','07:30:00','09:00:00','Cafeteria',2003,'Parent','B1003',1,'Meal','LMN456','NorthGate','NorthGate',503,36.8,'None',1,1,'/photos/1103.jpg','All clear',1005,'2023-02-17',1006,'2023-02-17',0,0,NULL,NULL);
```
