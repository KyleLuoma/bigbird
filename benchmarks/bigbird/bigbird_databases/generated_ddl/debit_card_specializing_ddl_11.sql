-- Airport flight schedules
CREATE TABLE airport_flight_schedules
(
    ScheduleID INTEGER PRIMARY KEY,
    AirportCode TEXT,
    AirlineCode TEXT,
    FlightNumber TEXT,
    AircraftType TEXT,
    DepartureDate DATE,
    DepartureTime TEXT,
    ArrivalDate DATE,
    ArrivalTime TEXT,
    OriginAirport TEXT,
    DestinationAirport TEXT,
    GateNumber TEXT,
    Terminal TEXT,
    Status TEXT,
    SeatCapacity INTEGER,
    BookedSeats INTEGER,
    CargoWeight REAL,
    FlightDuration INTEGER,
    DayOfWeek TEXT,
    Season TEXT
);
INSERT INTO airport_flight_schedules (ScheduleID,AirportCode,AirlineCode,FlightNumber,AircraftType,DepartureDate,DepartureTime,ArrivalDate,ArrivalTime,OriginAirport,DestinationAirport,GateNumber,Terminal,Status,SeatCapacity,BookedSeats,CargoWeight,FlightDuration,DayOfWeek,Season) VALUES (1,'JFK','AA','AA100','Boeing737','2024-03-15','08:30','2024-03-15','11:45','JFK','LAX','A12','1','OnTime',180,150,1200.5,395,'Friday','Spring');
INSERT INTO airport_flight_schedules (ScheduleID,AirportCode,AirlineCode,FlightNumber,AircraftType,DepartureDate,DepartureTime,ArrivalDate,ArrivalTime,OriginAirport,DestinationAirport,GateNumber,Terminal,Status,SeatCapacity,BookedSeats,CargoWeight,FlightDuration,DayOfWeek,Season) VALUES (2,'LHR','BA','BA250','AirbusA320','2024-04-02','14:15','2024-04-02','16:45','LHR','CDG','B7','2','Delayed',150,140,900.0,150,'Tuesday','Spring');
INSERT INTO airport_flight_schedules (ScheduleID,AirportCode,AirlineCode,FlightNumber,AircraftType,DepartureDate,DepartureTime,ArrivalDate,ArrivalTime,OriginAirport,DestinationAirport,GateNumber,Terminal,Status,SeatCapacity,BookedSeats,CargoWeight,FlightDuration,DayOfWeek,Season) VALUES (3,'SFO','UA','UA330','Boeing777','2024-05-10','22:00','2024-05-11','06:30','SFO','NRT','C3','3','Cancelled',300,0,0.0,660,'Friday','Summer');

-- Maritime port activity records
CREATE TABLE maritime_port_activity
(
    RecordID INTEGER PRIMARY KEY,
    PortCode TEXT,
    VesselName TEXT,
    IMONumber TEXT,
    ArrivalDate DATE,
    ArrivalTime TEXT,
    DepartureDate DATE,
    DepartureTime TEXT,
    CargoType TEXT,
    CargoVolume REAL,
    BerthNumber TEXT,
    OperatorCompany TEXT,
    DraftMeters REAL,
    Tonnage INTEGER,
    VoyageNumber TEXT,
    FlagState TEXT,
    CrewCount INTEGER,
    CustomsCleared INTEGER,
    WeatherCondition TEXT,
    Shift TEXT
);
INSERT INTO maritime_port_activity (RecordID,PortCode,VesselName,IMONumber,ArrivalDate,ArrivalTime,DepartureDate,DepartureTime,CargoType,CargoVolume,BerthNumber,OperatorCompany,DraftMeters,Tonnage,VoyageNumber,FlagState,CrewCount,CustomsCleared,WeatherCondition,Shift) VALUES (1,'NYC','OceanSpirit','1234567','2024-03-20','06:45','2024-03-22','14:30','Containers',3500.0,'B12','Maersk','12.5',50000,'VS001','Panama',22,1,'Clear','Day');
INSERT INTO maritime_port_activity (RecordID,PortCode,VesselName,IMONumber,ArrivalDate,ArrivalTime,DepartureDate,DepartureTime,CargoType,CargoVolume,BerthNumber,OperatorCompany,DraftMeters,Tonnage,VoyageNumber,FlagState,CrewCount,CustomsCleared,WeatherCondition,Shift) VALUES (2,'LAX','SeaNavigator','2345678','2024-04-05','09:20','2024-04-07','18:05','Bulk',7200.5,'C5','CMA CGM','14.0',75000,'VS132','Liberia',30,1,'Foggy','Night');
INSERT INTO maritime_port_activity (RecordID,PortCode,VesselName,IMONumber,ArrivalDate,ArrivalTime,DepartureDate,DepartureTime,CargoType,CargoVolume,BerthNumber,OperatorCompany,DraftMeters,Tonnage,VoyageNumber,FlagState,CrewCount,CustomsCleared,WeatherCondition,Shift) VALUES (3,'HKG','AtlanticTrader','3456789','2024-05-12','22:10','2024-05-15','08:45','Liquids',1500.3,'A3','COSCO','13.2',60000,'VS254','Singapore',26,0,'Rain','Day');

-- Retail store inventory
CREATE TABLE retail_store_inventory
(
    ItemID INTEGER PRIMARY KEY,
    StoreID INTEGER,
    SKU TEXT,
    Category TEXT,
    Brand TEXT,
    ProductName TEXT,
    SupplierID INTEGER,
    PurchaseDate DATE,
    StockOnHand INTEGER,
    ReorderLevel INTEGER,
    UnitCost REAL,
    RetailPrice REAL,
    ShelfLocation TEXT,
    Aisle TEXT,
    Section TEXT,
    ExpirationDate DATE,
    BatchNumber TEXT,
    WeightGrams REAL,
    DimensionsCM TEXT,
    DisplayFacing TEXT,
    PromotionFlag INTEGER,
    LastAuditDate DATE
);
INSERT INTO retail_store_inventory (ItemID,StoreID,SKU,Category,Brand,ProductName,SupplierID,PurchaseDate,StockOnHand,ReorderLevel,UnitCost,RetailPrice,ShelfLocation,Aisle,Section,ExpirationDate,BatchNumber,WeightGrams,DimensionsCM,DisplayFacing,PromotionFlag,LastAuditDate) VALUES (1,101,'SKU001','Beverages','CocaCola','Coke_12oz',5001,'2024-02-01',120,20,0.5,1.0,'S12','5','Beverage','2025-01-01','BN1001',355.0,'10x10x30','Front',0,'2024-03-15');
INSERT INTO retail_store_inventory (ItemID,StoreID,SKU,Category,Brand,ProductName,SupplierID,PurchaseDate,StockOnHand,ReorderLevel,UnitCost,RetailPrice,ShelfLocation,Aisle,Section,ExpirationDate,BatchNumber,WeightGrams,DimensionsCM,DisplayFacing,PromotionFlag,LastAuditDate) VALUES (2,101,'SKU002','Snacks','Lays','ClassicChips_200g',5002,'2024-02-10',80,15,0.8,1.5,'S7','3','Snack','2024-12-15','BN2002',200.0,'15x15x5','Middle',1,'2024-03-20');
INSERT INTO retail_store_inventory (ItemID,StoreID,SKU,Category,Brand,ProductName,SupplierID,PurchaseDate,StockOnHand,ReorderLevel,UnitCost,RetailPrice,ShelfLocation,Aisle,Section,ExpirationDate,BatchNumber,WeightGrams,DimensionsCM,DisplayFacing,PromotionFlag,LastAuditDate) VALUES (3,102,'SKU003','Household','Dyson','V11_Vacuum',5003,'2024-01-20',30,5,120.0,250.0,'E1','1','Appliance','2027-06-30','BN3003',1700.0,'25x25x50','Back',0,'2024-03-10');

-- Hotel reservations
CREATE TABLE hotel_reservations
(
    ReservationID INTEGER PRIMARY KEY,
    HotelID INTEGER,
    GuestID INTEGER,
    RoomNumber TEXT,
    RoomType TEXT,
    CheckInDate DATE,
    CheckOutDate DATE,
    NumberOfGuests INTEGER,
    RatePerNight REAL,
    TotalAmount REAL,
    BookingSource TEXT,
    ReservationStatus TEXT,
    SpecialRequests TEXT,
    LoyaltyMemberFlag INTEGER,
    PaymentMethod TEXT,
    DepositAmount REAL,
    BalanceDue REAL,
    AssignedHousekeeper TEXT,
    FloorNumber TEXT,
    SmokingPreference TEXT,
    LateCheckoutFlag INTEGER
);
INSERT INTO hotel_reservations (ReservationID,HotelID,GuestID,RoomNumber,RoomType,CheckInDate,CheckOutDate,NumberOfGuests,RatePerNight,TotalAmount,BookingSource,ReservationStatus,SpecialRequests,LoyaltyMemberFlag,PaymentMethod,DepositAmount,BalanceDue,AssignedHousekeeper,FloorNumber,SmokingPreference,LateCheckoutFlag) VALUES (1,10,2001,'305','Deluxe','2024-04-01','2024-04-05',2,180.0,720.0,'Website','Confirmed','LateCheckin',1,'CreditCard',200.0,520.0,'Helen','3','No',1);
INSERT INTO hotel_reservations (ReservationID,HotelID,GuestID,RoomNumber,RoomType,CheckInDate,CheckOutDate,NumberOfGuests,RatePerNight,TotalAmount,BookingSource,ReservationStatus,SpecialRequests,LoyaltyMemberFlag,PaymentMethod,DepositAmount,BalanceDue,AssignedHousekeeper,FloorNumber,SmokingPreference,LateCheckoutFlag) VALUES (2,10,2002,'410','Suite','2024-04-10','2024-04-12',4,300.0,600.0,'TravelAgent','Pending','ExtraBed',0,'Cash',0.0,600.0,'Marco','4','Yes',0);
INSERT INTO hotel_reservations (ReservationID,HotelID,GuestID,RoomNumber,RoomType,CheckInDate,CheckOutDate,NumberOfGuests,RatePerNight,TotalAmount,BookingSource,ReservationStatus,SpecialRequests,LoyaltyMemberFlag,PaymentMethod,DepositAmount,BalanceDue,AssignedHousekeeper,FloorNumber,SmokingPreference,LateCheckoutFlag) VALUES (3,11,2003,'210','Standard','2024-05-15','2024-05-18',1,120.0,360.0,'MobileApp','Cancelled','None',0,'DebitCard',0.0,0.0,'Sara','2','No',0);

-- Construction project plans
CREATE TABLE construction_project_plans
(
    ProjectID INTEGER PRIMARY KEY,
    ProjectName TEXT,
    ClientName TEXT,
    Location TEXT,
    StartDate DATE,
    EndDate DATE,
    Budget REAL,
    ProjectedCost REAL,
    Phase TEXT,
    ProjectManager TEXT,
    Architect TEXT,
    Engineer TEXT,
    Contractor TEXT,
    PermitsRequired INTEGER,
    PermitStatus TEXT,
    SafetyRating INTEGER,
    NumberOfWorkers INTEGER,
    MaterialsOnSite REAL,
    InspectionDate DATE,
    Status TEXT
);
INSERT INTO construction_project_plans (ProjectID,ProjectName,ClientName,Location,StartDate,EndDate,Budget,ProjectedCost,Phase,ProjectManager,Architect,Engineer,Contractor,PermitsRequired,PermitStatus,SafetyRating,NumberOfWorkers,MaterialsOnSite,InspectionDate,Status) VALUES (1,'Skyline Tower','GlobalRealty','NewYork','2024-01-15','2026-12-31',250000000,260000000,'Design','AliceBrown','JohnDoe','EmilyClark','BuildCo',1,'Approved',5,200,15000.0,'2024-03-01','InProgress');
INSERT INTO construction_project_plans (ProjectID,ProjectName,ClientName,Location,StartDate,EndDate,Budget,ProjectedCost,Phase,ProjectManager,Architect,Engineer,Contractor,PermitsRequired,PermitStatus,SafetyRating,NumberOfWorkers,MaterialsOnSite,InspectionDate,Status) VALUES (2,'Riverside Bridge','CityCouncil','Springfield','2024-04-01','2025-09-30',120000000,115000000,'Construction','MarkLee','AnnaSmith','TomWhite','BridgeBuilders',1,'Pending',4,150,8000.0,'2024-05-10','Planned');
INSERT INTO construction_project_plans (ProjectID,ProjectName,ClientName,Location,StartDate,EndDate,Budget,ProjectedCost,Phase,ProjectManager,Architect,Engineer,Contractor,PermitsRequired,PermitStatus,SafetyRating,NumberOfWorkers,MaterialsOnSite,InspectionDate,Status) VALUES (3,'Greenfield Mall','RetailGroup','Dallas','2024-06-15','2027-03-15',300000000,310000000,'Planning','LauraKim','PeterJones','NinaLopez','MallConstruct',1,'Approved',5,250,20000.0,'2024-07-20','Planning');

-- Telecom network nodes
CREATE TABLE telecom_network_nodes
(
    NodeID INTEGER PRIMARY KEY,
    NetworkID TEXT,
    NodeType TEXT,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    Vendor TEXT,
    FirmwareVersion TEXT,
    PowerSupplyWatts REAL,
    BackhaulCapacityGbps REAL,
    Status TEXT,
    UptimeHours INTEGER,
    MaintenanceWindow TEXT,
    CoolingCapacityKW REAL,
    SecurityLevel INTEGER,
    Region TEXT,
    City TEXT,
    LatitudeDMS TEXT,
    LongitudeDMS TEXT,
    ParentNodeID INTEGER,
    IPV4Address TEXT,
    IPV6Address TEXT
);
INSERT INTO telecom_network_nodes (NodeID,NetworkID,NodeType,Latitude,Longitude,InstallationDate,Vendor,FirmwareVersion,PowerSupplyWatts,BackhaulCapacityGbps,Status,UptimeHours,MaintenanceWindow,CoolingCapacityKW,SecurityLevel,Region,City,LatitudeDMS,LongitudeDMS,ParentNodeID,IPV4Address,IPV6Address) VALUES (1,'NT001','BaseStation','40.7128','-74.0060','2022-05-10','Cisco','v12.4',500.0,10.0,'Active',3500,'02:00-04:00',5.0,3,'Northeast','NewYork','40°42\'48"N','74°0\'21"W',NULL,'192.168.1.10','2001:0db8:85a3::8a2e:0370:7334');
INSERT INTO telecom_network_nodes (NodeID,NetworkID,NodeType,Latitude,Longitude,InstallationDate,Vendor,FirmwareVersion,PowerSupplyWatts,BackhaulCapacityGbps,Status,UptimeHours,MaintenanceWindow,CoolingCapacityKW,SecurityLevel,Region,City,LatitudeDMS,LongitudeDMS,ParentNodeID,IPV4Address,IPV6Address) VALUES (2,'NT002','MicrowaveLink','34.0522','-118.2437','2023-01-20','Huawei','v15.2',300.0,5.0,'Active',2200,'01:00-03:00',3.5,2,'West','LosAngeles','34°3\'8"N','118°14\'37"W',1,'192.168.2.20','2001:0db8:85a3::8a2e:0370:7335');
INSERT INTO telecom_network_nodes (NodeID,NetworkID,NodeType,Latitude,Longitude,InstallationDate,Vendor,FirmwareVersion,PowerSupplyWatts,BackhaulCapacityGbps,Status,UptimeHours,MaintenanceWindow,CoolingCapacityKW,SecurityLevel,Region,City,LatitudeDMS,LongitudeDMS,ParentNodeID,IPV4Address,IPV6Address) VALUES (3,'NT003','FiberNode','41.8781','-87.6298','2021-11-05','Juniper','v11.9',250.0,40.0,'Active',4800,'03:00-05:00',4.0,4,'Midwest','Chicago','41°52\'41"N','87°37\'47"W',2,'192.168.3.30','2001:0db8:85a3::8a2e:0370:7336');

-- Pharmaceutical batch records
CREATE TABLE pharmaceutical_batch_records
(
    BatchID INTEGER PRIMARY KEY,
    ProductCode TEXT,
    ProductName TEXT,
    ManufactureDate DATE,
    ExpirationDate DATE,
    BatchSizeUnits INTEGER,
    ActiveIngredient TEXT,
    ConcentrationMg REAL,
    Formulation TEXT,
    Manufacturer TEXT,
    FacilityID INTEGER,
    QCResult TEXT,
    TemperatureCelsius REAL,
    HumidityPercent REAL,
    OperatorID INTEGER,
    RegulatoryApprovalFlag INTEGER,
    PackagingType TEXT,
    SerialNumber TEXT,
    DistributionRegion TEXT,
    RecallFlag INTEGER,
    Notes TEXT
);
INSERT INTO pharmaceutical_batch_records (BatchID,ProductCode,ProductName,ManufactureDate,ExpirationDate,BatchSizeUnits,ActiveIngredient,ConcentrationMg,Formulation,Manufacturer,FacilityID,QCResult,TemperatureCelsius,HumidityPercent,OperatorID,RegulatoryApprovalFlag,PackagingType,SerialNumber,DistributionRegion,RecallFlag,Notes) VALUES (1,'PC001','PainReliefMax','2024-01-15','2026-01-14',500000,'Ibuprofen','200','Tablet','HealPharma',101,'Pass',22.5,45.0,9001,1,'BlisterPack','SN123456','NorthAmerica',0,'No issues detected');
INSERT INTO pharmaceutical_batch_records (BatchID,ProductCode,ProductName,ManufactureDate,ExpirationDate,BatchSizeUnits,ActiveIngredient,ConcentrationMg,Formulation,Manufacturer,FacilityID,QCResult,TemperatureCelsius,HumidityPercent,OperatorID,RegulatoryApprovalFlag,PackagingType,SerialNumber,DistributionRegion,RecallFlag,Notes) VALUES (2,'PC002','AllergyShield','2023-12-01','2025-11-30',300000,'Cetirizine','10','Tablet','MediHealth',102,'Pass',21.0,40.0,9002,1,'Bottle','SN654321','Europe',0,'Batch within specs');
INSERT INTO pharmaceutical_batch_records (BatchID,ProductCode,ProductName,ManufactureDate,ExpirationDate,BatchSizeUnits,ActiveIngredient,ConcentrationMg,Formulation,Manufacturer,FacilityID,QCResult,TemperatureCelsius,HumidityPercent,OperatorID,RegulatoryApprovalFlag,PackagingType,SerialNumber,DistributionRegion,RecallFlag,Notes) VALUES (3,'PC003','VitaminBoost','2024-02-20','2027-02-19',400000,'VitaminC','500','Capsule','NutriLabs',103,'Pass',23.0,50.0,9003,1,'Jar','SN789012','Asia',0,'Stable with no deviations');

-- Agricultural crop yields
CREATE TABLE agricultural_crop_yields
(
    YieldID INTEGER PRIMARY KEY,
    FarmID INTEGER,
    CropType TEXT,
    Variety TEXT,
    PlantingDate DATE,
    HarvestDate DATE,
    AreaHectares REAL,
    YieldTonnes REAL,
    RainfallMM REAL,
    FertilizerKg REAL,
    PesticideUsed TEXT,
    SoilPH REAL,
    IrrigationType TEXT,
    LaborHours INTEGER,
    EquipmentID INTEGER,
    SeedRateKgPerHa REAL,
    AverageTempC REAL,
    YieldQuality TEXT,
    MarketPricePerTon REAL,
    ExportFlag INTEGER
);
INSERT INTO agricultural_crop_yields (YieldID,FarmID,CropType,Variety,PlantingDate,HarvestDate,AreaHectares,YieldTonnes,RainfallMM,FertilizerKg,PesticideUsed,SoilPH,IrrigationType,LaborHours,EquipmentID,SeedRateKgPerHa,AverageTempC,YieldQuality,MarketPricePerTon,ExportFlag) VALUES (1,201,'Wheat','HardRed','2023-09-15','2024-06-20',120.5,350.2,520.0,18000,'None',6.5,'Sprinkler',15000,301,150.0,18.2,'A',210.0,1);
INSERT INTO agricultural_crop_yields (YieldID,FarmID,CropType,Variety,PlantingDate,HarvestDate,AreaHectares,YieldTonnes,RainfallMM,FertilizerKg,PesticideUsed,SoilPH,IrrigationType,LaborHours,EquipmentID,SeedRateKgPerHa,AverageTempC,YieldQuality,MarketPricePerTon,ExportFlag) VALUES (2,202,'Corn','SweetGolden','2024-03-01','2024-09-15',80.0,250.0,440.0,15000,'Herbicide',5.8,'Drip',12000,302,20.0,22.5,'B',180.0,0);
INSERT INTO agricultural_crop_yields (YieldID,FarmID,CropType,Variety,PlantingDate,HarvestDate,AreaHectares,YieldTonnes,RainfallMM,FertilizerKg,PesticideUsed,SoilPH,IrrigationType,LaborHours,EquipmentID,SeedRateKgPerHa,AverageTempC,YieldQuality,MarketPricePerTon,ExportFlag) VALUES (3,203,'Soy','BlackBean','2023-05-10','2024-10-05',60.3,180.5,380.0,12000,'Insecticide',6.2,'Flood',9000,303,45.0,20.0,'A',250.0,1);

-- Education course catalog
CREATE TABLE education_course_catalog
(
    CourseID INTEGER PRIMARY KEY,
    Department TEXT,
    CourseNumber TEXT,
    CourseTitle TEXT,
    Credits INTEGER,
    Level TEXT,
    DeliveryMode TEXT,
    PrerequisiteCourse TEXT,
    CorequisiteCourse TEXT,
    InstructorID INTEGER,
    SemesterOffered TEXT,
    YearOffered INTEGER,
    EnrollmentCap INTEGER,
    CurrentEnrollment INTEGER,
    Classroom TEXT,
    ScheduleDays TEXT,
    ScheduleTime TEXT,
    SyllabusURL TEXT,
    AssessmentMethod TEXT,
    LearningOutcomes TEXT,
    Accreditation TEXT,
    WaitlistCount INTEGER
);
INSERT INTO education_course_catalog (CourseID,Department,CourseNumber,CourseTitle,Credits,Level,DeliveryMode,PrerequisiteCourse,CorequisiteCourse,InstructorID,SemesterOffered,YearOffered,EnrollmentCap,CurrentEnrollment,Classroom,ScheduleDays,ScheduleTime,SyllabusURL,AssessmentMethod,LearningOutcomes,Accreditation,WaitlistCount) VALUES (1,'CS','101','Intro to Programming',4,'Undergraduate','InPerson','None','None',5001,'Fall','2024',120,115,'RoomA','MonWedFri','09:00-10:15','http://university.edu/cs101','Projects','ProblemSolving;CodeDesign','ABET',5);
INSERT INTO education_course_catalog (CourseID,Department,CourseNumber,CourseTitle,Credits,Level,DeliveryMode,PrerequisiteCourse,CorequisiteCourse,InstructorID,SemesterOffered,YearOffered,EnrollmentCap,CurrentEnrollment,Classroom,ScheduleDays,ScheduleTime,SyllabusURL,AssessmentMethod,LearningOutcomes,Accreditation,WaitlistCount) VALUES (2,'ENG','202','Shakespearean Literature',3,'Undergraduate','Hybrid','ENG101','None',5002,'Spring','2024',80,78,'RoomB','TueThu','11:00-12:30','http://university.edu/eng202','Essays','CriticalAnalysis;HistoricalContext','AACSB',2);
INSERT INTO education_course_catalog (CourseID,Department,CourseNumber,CourseTitle,Credits,Level,DeliveryMode,PrerequisiteCourse,CorequisiteCourse,InstructorID,SemesterOffered,YearOffered,EnrollmentCap,CurrentEnrollment,Classroom,ScheduleDays,ScheduleTime,SyllabusURL,AssessmentMethod,LearningOutcomes,Accreditation,WaitlistCount) VALUES (3,'BIO','350','Molecular Genetics',4,'Graduate','Online','BIO300','BIO310',5003,'Fall','2024',40,35,'Virtual','None','SelfPaced','http://university.edu/bio350','ResearchPaper','GeneExpression;LabTechniques','NCBI',0);

-- Museum exhibit loans
CREATE TABLE museum_exhibit_loans
(
    LoanID INTEGER PRIMARY KEY,
    ExhibitName TEXT,
    OriginInstitution TEXT,
    RecipientMuseum TEXT,
    LoanStartDate DATE,
    LoanEndDate DATE,
    InsuranceValue REAL,
    TransportMethod TEXT,
    ConservationStatus TEXT,
    ConditionReport TEXT,
    CuratorID INTEGER,
    ExhibitCategory TEXT,
    DisplayLocation TEXT,
    SecurityLevel INTEGER,
    ClimateControl TEXT,
    WeightKg REAL,
    DimensionsCM TEXT,
    LoanAgreementSigned INTEGER,
    RenewalOption TEXT,
    PublicAccessFlag INTEGER,
    Notes TEXT
);
INSERT INTO museum_exhibit_loans (LoanID,ExhibitName,OriginInstitution,RecipientMuseum,LoanStartDate,LoanEndDate,InsuranceValue,TransportMethod,ConservationStatus,ConditionReport,CuratorID,ExhibitCategory,DisplayLocation,SecurityLevel,ClimateControl,WeightKg,DimensionsCM,LoanAgreementSigned,RenewalOption,PublicAccessFlag,Notes) VALUES (1,'Ancient Vase','NationalMuseum','CityArtGallery','2024-03-01','2024-09-30',500000,'AirFreight','Excellent','NoDamage',7001,'Ceramics','HallA',5,'Controlled',120.0,'30x30x45','1','Option1','1','Displayed with protective glass');
INSERT INTO museum_exhibit_loans (LoanID,ExhibitName,OriginInstitution,RecipientMuseum,LoanStartDate,LoanEndDate,InsuranceValue,TransportMethod,ConservationStatus,ConditionReport,CuratorID,ExhibitCategory,DisplayLocation,SecurityLevel,ClimateControl,WeightKg,DimensionsCM,LoanAgreementSigned,RenewalOption,PublicAccessFlag,Notes) VALUES (2,'Renaissance Painting','Louvre','ModernArtMuseum','2024-05-15','2025-05-14',2000000,'SpecialTruck','Good','MinorScratches',7002,'Paintings','Gallery2',4,'TemperatureControlled',25.0,'100x80','1','Option2','1','Requires monthly humidity checks');
INSERT INTO museum_exhibit_loans (LoanID,ExhibitName,OriginInstitution,RecipientMuseum,LoanStartDate,LoanEndDate,InsuranceValue,TransportMethod,ConservationStatus,ConditionReport,CuratorID,ExhibitCategory,DisplayLocation,SecurityLevel,ClimateControl,WeightKg,DimensionsCM,LoanAgreementSigned,RenewalOption,PublicAccessFlag,Notes) VALUES (3,'Medieval Sword','HistoricalSociety','FortressMuseum','2024-07-01','2025-06-30',750000,'GroundVehicle','Restored','Clean','7003','Weapons','Armory',3,'LowHumidity',8.5,'120x5x3','1','Option3','0','Not on public view, used for research only');