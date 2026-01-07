-- Ward assignment details
CREATE TABLE WardAssignment
(
    WardID                INTEGER PRIMARY KEY,
    FacilityID            INTEGER,
    WardName              VARCHAR(100),
    FloorNumber           INTEGER,
    Wing                  VARCHAR(50),
    BedCount              INTEGER,
    OccupiedBeds          INTEGER,
    NurseStation          VARCHAR(100),
    Speciality            VARCHAR(100),
    AccreditationLevel    VARCHAR(20),
    OpeningDate           DATE,
    ClosingDate           DATE,
    ManagerID             INTEGER,
    ContactPhone          VARCHAR(20),
    Email                 VARCHAR(100),
    HVACType              VARCHAR(50),
    IsolationCapability   VARCHAR(50),
    MaxWeightCapacityKg   INTEGER,
    DailyCleaningHours    INTEGER,
    WasteDisposalMethod   VARCHAR(50),
    SecurityLevel         VARCHAR(20),
    WiFiAvailable         BOOLEAN,
    PowerBackupHours      INTEGER
);

INSERT INTO WardAssignment (WardID,FacilityID,WardName,FloorNumber,Wing,BedCount,OccupiedBeds,NurseStation,Speciality,AccreditationLevel,OpeningDate,ClosingDate,ManagerID,ContactPhone,Email,HVACType,IsolationCapability,MaxWeightCapacityKg,DailyCleaningHours,WasteDisposalMethod,SecurityLevel,WiFiAvailable,PowerBackupHours) VALUES (1,10,'Cardiology',2,'A',30,28,'Station1','Cardiology','Level1','2010-06-01',NULL,101,'5551234','cardio@hospital.org','Central','Yes',5000,8,'Incineration','High',TRUE,4);
INSERT INTO WardAssignment (WardID,FacilityID,WardName,FloorNumber,Wing,BedCount,OccupiedBeds,NurseStation,Speciality,AccreditationLevel,OpeningDate,ClosingDate,ManagerID,ContactPhone,Email,HVACType,IsolationCapability,MaxWeightCapacityKg,DailyCleaningHours,WasteDisposalMethod,SecurityLevel,WiFiAvailable,PowerBackupHours) VALUES (2,10,'Oncology',3,'B',40,35,'Station2','Oncology','Level2','2012-09-15',NULL,102,'5555678','onco@hospital.org','VRF','Negative',6000,9,'Chemical','Medium',TRUE,5);
INSERT INTO WardAssignment (WardID,FacilityID,WardName,FloorNumber,Wing,BedCount,OccupiedBeds,NurseStation,Speciality,AccreditationLevel,OpeningDate,ClosingDate,ManagerID,ContactPhone,Email,HVACType,IsolationCapability,MaxWeightCapacityKg,DailyCleaningHours,WasteDisposalMethod,SecurityLevel,WiFiAvailable,PowerBackupHours) VALUES (3,11,'Pediatrics',1,'C',25,22,'Station3','Pediatrics','Level1','2015-01-20',NULL,103,'5559012','peds@hospital.org','Chilled','Yes',4500,7,'Incineration','Low',TRUE,3);


-- Medical supply orders
CREATE TABLE SupplyOrder
(
    OrderID               INTEGER PRIMARY KEY,
    FacilityID            INTEGER,
    SupplierName          VARCHAR(100),
    OrderDate             DATE,
    ExpectedDeliveryDate  DATE,
    ReceivedDate          DATE,
    ItemCategory          VARCHAR(50),
    ItemSKU               VARCHAR(30),
    ItemDescription       VARCHAR(200),
    QuantityOrdered       INTEGER,
    QuantityReceived      INTEGER,
    UnitPrice             DECIMAL(10,2),
    Currency              VARCHAR(10),
    TotalCost             DECIMAL(12,2),
    ApprovedBy            VARCHAR(100),
    ApprovalDate          DATE,
    DeliveryMethod        VARCHAR(50),
    FreightCost           DECIMAL(10,2),
    TaxAmount             DECIMAL(10,2),
    DiscountRate          DECIMAL(5,2),
    PaymentTerms          VARCHAR(50),
    InvoiceNumber         VARCHAR(30),
    ReceivedBy            VARCHAR(100),
    ConditionOnArrival    VARCHAR(50),
    StorageLocation       VARCHAR(100)
);

INSERT INTO SupplyOrder (OrderID,FacilityID,SupplierName,OrderDate,ExpectedDeliveryDate,ReceivedDate,ItemCategory,ItemSKU,ItemDescription,QuantityOrdered,QuantityReceived,UnitPrice,Currency,TotalCost,ApprovedBy,ApprovalDate,DeliveryMethod,FreightCost,TaxAmount,DiscountRate,PaymentTerms,InvoiceNumber,ReceivedBy,ConditionOnArrival,StorageLocation) VALUES (1001,10,'MedSupplyCo','2024-10-01','2024-10-05','2024-10-04','Sutures','SUT123','Absorbable sutures',500,500,0.75,'USD',375.00,'DrSmith','2024-09-30','Ground','25.00','22.50',5.00,'Net30','INV1001','NurseA','Good','WarehouseA');
INSERT INTO SupplyOrder (OrderID,FacilityID,SupplierName,OrderDate,ExpectedDeliveryDate,ReceivedDate,ItemCategory,ItemSKU,ItemDescription,QuantityOrdered,QuantityReceived,UnitPrice,Currency,TotalCost,ApprovedBy,ApprovalDate,DeliveryMethod,FreightCost,TaxAmount,DiscountRate,PaymentTerms,InvoiceNumber,ReceivedBy,ConditionOnArrival,StorageLocation) VALUES (1002,11,'HealthEquip','2024-11-12','2024-11-18','2024-11-19','Gloves','GLV456','Latex examination gloves',2000,1980,0.10,'USD',200.00,'DrLee','2024-11-10','Air','40.00','15.00',3.00,'Net45','INV1002','NurseB','MinorDamages','WarehouseB');
INSERT INTO SupplyOrder (OrderID,FacilityID,SupplierName,OrderDate,ExpectedDeliveryDate,ReceivedDate,ItemCategory,ItemSKU,ItemDescription,QuantityOrdered,QuantityReceived,UnitPrice,Currency,TotalCost,ApprovedBy,ApprovalDate,DeliveryMethod,FreightCost,TaxAmount,DiscountRate,PaymentTerms,InvoiceNumber,ReceivedBy,ConditionOnArrival,StorageLocation) VALUES (1003,10,'PharmaInc','2024-12-05','2024-12-10','2024-12-09','Medications','MED789','Antibiotic tablets',1000,1000,1.25,'USD',1250.00,'DrJones','2024-12-04','Ground','30.00','100.00',0.00,'Net60','INV1003','NurseC','Good','PharmacyRoom');


-- Equipment maintenance logs
CREATE TABLE EquipmentMaintenance
(
    MaintenanceID          INTEGER PRIMARY KEY,
    DeviceID               INTEGER,
    FacilityID             INTEGER,
    MaintenanceDate        DATE,
    TechnicianID           INTEGER,
    MaintenanceType        VARCHAR(50),
    Description            VARCHAR(200),
    DowntimeHours          DECIMAL(5,2),
    PartsReplaced          VARCHAR(200),
    PartNumbers            VARCHAR(200),
    Cost                   DECIMAL(12,2),
    WarrantyCovered        BOOLEAN,
    NextScheduledDate      DATE,
    CalibrationStatus      VARCHAR(20),
    SafetyCheckPassed      BOOLEAN,
    Notes                  VARCHAR(200),
    UpdatedBy              VARCHAR(100),
    UpdateTimestamp        DATETIME,
    ServiceProvider        VARCHAR(100),
    ContractNumber         VARCHAR(30),
    PriorityLevel          VARCHAR(10),
    RiskAssessmentScore   INTEGER
);

INSERT INTO EquipmentMaintenance (MaintenanceID,DeviceID,FacilityID,MaintenanceDate,TechnicianID,MaintenanceType,Description,DowntimeHours,PartsReplaced,PartNumbers,Cost,WarrantyCovered,NextScheduledDate,CalibrationStatus,SafetyCheckPassed,Notes,UpdatedBy,UpdateTimestamp,ServiceProvider,ContractNumber,PriorityLevel,RiskAssessmentScore) VALUES (5001,3001,10,'2024-09-15',201,'Preventive','Quarterly check',1.5,'Filter,Valve','FLR001,VAL002',150.00,TRUE,'2025-03-15','Calibrated',TRUE,'All good','TechJohn','2024-09-15 10:30:00','MedTechServices','CT-100','High',85);
INSERT INTO EquipmentMaintenance (MaintenanceID,DeviceID,FacilityID,MaintenanceDate,TechnicianID,MaintenanceType,Description,DowntimeHours,PartsReplaced,PartNumbers,Cost,WarrantyCovered,NextScheduledDate,CalibrationStatus,SafetyCheckPassed,Notes,UpdatedBy,UpdateTimestamp,ServiceProvider,ContractNumber,PriorityLevel,RiskAssessmentScore) VALUES (5002,3002,11,'2024-10-02',202,'Repair','Leak fix in infusion pump',2.0,'Seal','SL001',250.00,FALSE,'2025-01-02','NotCalibrated',FALSE,'Seal replaced, re-test required','TechAmy','2024-10-02 14:45:00','BioCare','CT-101','Critical',92);
INSERT INTO EquipmentMaintenance (MaintenanceID,DeviceID,FacilityID,MaintenanceDate,TechnicianID,MaintenanceType,Description,DowntimeHours,PartsReplaced,PartNumbers,Cost,WarrantyCovered,NextScheduledDate,CalibrationStatus,SafetyCheckPassed,Notes,UpdatedBy,UpdateTimestamp,ServiceProvider,ContractNumber,PriorityLevel,RiskAssessmentScore) VALUES (5003,3003,10,'2024-11-20',203,'Calibration','Annual calibration of blood gas analyzer',1.0,'None','',300.00,TRUE,'2025-11-20','Calibrated',TRUE,'Calibration successful','TechBob','2024-11-20 09:15:00','LabCal','CT-102','Medium',70);


-- Daily dietary menus
CREATE TABLE DietaryMenu
(
    MenuID                INTEGER PRIMARY KEY,
    FacilityID            INTEGER,
    MenuDate              DATE,
    MealType              VARCHAR(20),
    DishName              VARCHAR(100),
    Calories              INTEGER,
    Protein_g             DECIMAL(5,2),
    Carbs_g               DECIMAL(5,2),
    Fat_g                 DECIMAL(5,2),
    Sodium_mg             INTEGER,
    Allergens             VARCHAR(200),
    VegetarianFlag       BOOLEAN,
    VeganFlag            BOOLEAN,
    GlutenFreeFlag       BOOLEAN,
    LactoseFreeFlag      BOOLEAN,
    PortionSize           VARCHAR(20),
    Supplier              VARCHAR(100),
    PrepTimeMin           INTEGER,
    CookingMethod         VARCHAR(50),
    ChefID                INTEGER,
    SpiceLevel            VARCHAR(10),
    DietaryRestrictionNotes VARCHAR(200),
    SodiumLimitFlag      BOOLEAN,
    Cholesterol_mg        INTEGER,
    Fiber_g               DECIMAL(5,2),
    VitaminC_mg          DECIMAL(5,2)
);

INSERT INTO DietaryMenu (MenuID,FacilityID,MenuDate,MealType,DishName,Calories,Protein_g,Carbs_g,Fat_g,Sodium_mg,Allergens,VegetarianFlag,VeganFlag,GlutenFreeFlag,LactoseFreeFlag,PortionSize,Supplier,PrepTimeMin,CookingMethod,ChefID,SpiceLevel,DietaryRestrictionNotes,SodiumLimitFlag,Cholesterol_mg,Fiber_g,VitaminC_mg) VALUES (9001,10,'2024-09-01','Breakfast','Oatmeal with Berries',350,12.5,55.0,6.0,210,'None',TRUE,FALSE,FALSE,FALSE,'Medium','WholeGrainCo',10,'Boil',301,'Low','No added sugar',FALSE,0,8.0,30.0);
INSERT INTO DietaryMenu (MenuID,FacilityID,MenuDate,MealType,DishName,Calories,Protein_g,Carbs_g,Fat_g,Sodium_mg,Allergens,VegetarianFlag,VeganFlag,GlutenFreeFlag,LactoseFreeFlag,PortionSize,Supplier,PrepTimeMin,CookingMethod,ChefID,SpiceLevel,DietaryRestrictionNotes,SodiumLimitFlag,Cholesterol_mg,Fiber_g,VitaminC_mg) VALUES (9002,10,'2024-09-01','Lunch','Grilled Chicken Salad',450,35.0,20.0,15.0,320,'Nuts',FALSE,FALSE,FALSE,FALSE,'Large','FreshMeatInc',15,'Grill',302,'Medium','No nuts',FALSE,80,5.0,20.0);
INSERT INTO DietaryMenu (MenuID,FacilityID,MenuDate,MealType,DishName,Calories,Protein_g,Carbs_g,Fat_g,Sodium_mg,Allergens,VegetarianFlag,VeganFlag,GlutenFreeFlag,LactoseFreeFlag,PortionSize,Supplier,PrepTimeMin,CookingMethod,ChefID,SpiceLevel,DietaryRestrictionNotes,SodiumLimitFlag,Cholesterol_mg,Fiber_g,VitaminC_mg) VALUES (9003,11,'2024-09-01','Dinner','Vegetable Stir Fry',400,10.0,60.0,12.0,250,'Soy',TRUE,TRUE,TRUE,FALSE,'Medium','VeggieSupply',12,'StirFry',303,'High','Gluten free soy sauce',TRUE,0,10.0,45.0);


-- Specimen transport logs
CREATE TABLE SpecimenTransport
(
    TransportID           INTEGER PRIMARY KEY,
    SpecimenID            VARCHAR(30),
    OriginLocation        VARCHAR(100),
    DestinationLocation   VARCHAR(100),
    PickupTime            DATETIME,
    DropoffTime           DATETIME,
    TransportMethod       VARCHAR(30),
    CarrierName           VARCHAR(100),
    TemperatureControl    BOOLEAN,
    TempStartC            DECIMAL(4,1),
    TempEndC              DECIMAL(4,1),
    ConditionAtArrival    VARCHAR(50),
    OperatorID            INTEGER,
    VehicleID             VARCHAR(30),
    Weight_kg             DECIMAL(6,2),
    Volume_l              DECIMAL(5,2),
    HazardousFlag        BOOLEAN,
    DocumentationComplete BOOLEAN,
    DelayReason           VARCHAR(100),
    CreatedBy             VARCHAR(100),
    CreatedAt             DATETIME,
    UpdatedBy             VARCHAR(100),
    UpdatedAt             DATETIME
);

INSERT INTO SpecimenTransport (TransportID,SpecimenID,OriginLocation,DestinationLocation,PickupTime,DropoffTime,TransportMethod,CarrierName,TemperatureControl,TempStartC,TempEndC,ConditionAtArrival,OperatorID,VehicleID,Weight_kg,Volume_l,HazardousFlag,DocumentationComplete,DelayReason,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt) VALUES (8001,'SPC001','LabA','Pathology','2024-09-10 08:15:00','2024-09-10 08:25:00','Courier','FastTrans','TRUE',4.0,4.1,'Intact',401,'VHC101',0.55,0.30,FALSE,TRUE,'', 'AdminA','2024-09-10 08:30:00','AdminA','2024-09-10 08:30:00');
INSERT INTO SpecimenTransport (TransportID,SpecimenID,OriginLocation,DestinationLocation,PickupTime,DropoffTime,TransportMethod,CarrierName,TemperatureControl,TempStartC,TempEndC,ConditionAtArrival,OperatorID,VehicleID,Weight_kg,Volume_l,HazardousFlag,DocumentationComplete,DelayReason,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt) VALUES (8002,'SPC002','ER','Microbiology','2024-09-11 14:05:00','2024-09-11 14:20:00','Stair','InHouse','FALSE',NULL,NULL,'Spilled',402,'VHC102',0.80,0.45,TRUE,FALSE,'Vehicle breakdown','AdminB','2024-09-11 14:25:00','AdminB','2024-09-11 14:30:00');
INSERT INTO SpecimenTransport (TransportID,SpecimenID,OriginLocation,DestinationLocation,PickupTime,DropoffTime,TransportMethod,CarrierName,TemperatureControl,TempStartC,TempEndC,ConditionAtArrival,OperatorID,VehicleID,Weight_kg,Volume_l,HazardousFlag,DocumentationComplete,DelayReason,CreatedBy,CreatedAt,UpdatedBy,UpdatedAt) VALUES (8003,'SPC003','Pharmacy','LabB','2024-09-12 09:00:00','2024-09-12 09:12:00','Pneumatic','AutoTrack','TRUE',2.0,2.1,'Intact',403,'VHC103',0.30,0.20,FALSE,TRUE,'', 'AdminC','2024-09-12 09:15:00','AdminC','2024-09-12 09:15:00');


-- Research trial consent records
CREATE TABLE ResearchConsent
(
    ConsentID             INTEGER PRIMARY KEY,
    TrialID               VARCHAR(30),
    ParticipantCode       VARCHAR(30),
    ConsentDate           DATE,
    ConsentVersion        VARCHAR(10),
    SignedBy              VARCHAR(100),
    Witness               VARCHAR(100),
    Language              VARCHAR(20),
    DocumentFormat        VARCHAR(20),
    EligibilityConfirmed  BOOLEAN,
    MedicalHistoryReviewed BOOLEAN,
    RisksExplained        BOOLEAN,
    BenefitsExplained     BOOLEAN,
    ConfidentialityAssured BOOLEAN,
    WithdrawalAllowed     BOOLEAN,
    ContactInfo           VARCHAR(100),
    ConsentStatus         VARCHAR(20),
    ExpirationDate        DATE,
    Notes                 VARCHAR(200),
    DigitalSignatureHash  VARCHAR(64),
    ArchiveLocation       VARCHAR(100),
    ConsentCopySent       BOOLEAN,
    FollowUpDate          DATE,
    UpdatedBy             VARCHAR(100),
    UpdatedAt             DATETIME
);

INSERT INTO ResearchConsent (ConsentID,TrialID,ParticipantCode,ConsentDate,ConsentVersion,SignedBy,Witness,Language,DocumentFormat,EligibilityConfirmed,MedicalHistoryReviewed,RisksExplained,BenefitsExplained,ConfidentialityAssured,WithdrawalAllowed,ContactInfo,ConsentStatus,ExpirationDate,Notes,DigitalSignatureHash,ArchiveLocation,ConsentCopySent,FollowUpDate,UpdatedBy,UpdatedAt) VALUES (6001,'TR001','PC1001','2024-08-01','v1','DrSmith','NurseA','English','PDF',TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,'555-1111','Active','2025-08-01','', 'AB12CD34EF56', '/archive/consent/6001.pdf',TRUE,'2024-12-01','AdminX','2024-08-01 10:00:00');
INSERT INTO ResearchConsent (ConsentID,TrialID,ParticipantCode,ConsentDate,ConsentVersion,SignedBy,Witness,Language,DocumentFormat,EligibilityConfirmed,MedicalHistoryReviewed,RisksExplained,BenefitsExplained,ConfidentialityAssured,WithdrawalAllowed,ContactInfo,ConsentStatus,ExpirationDate,Notes,DigitalSignatureHash,ArchiveLocation,ConsentCopySent,FollowUpDate,UpdatedBy,UpdatedAt) VALUES (6002,'TR002','PC1002','2024-09-15','v2','DrLee','NurseB','Spanish','DOCX',TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,'555-2222','Pending','2025-09-15','Requires medical review', 'CD34EF56AB12', '/archive/consent/6002.docx',FALSE,'2024-12-15','AdminY','2024-09-15 14:30:00');
INSERT INTO ResearchConsent (ConsentID,TrialID,ParticipantCode,ConsentDate,ConsentVersion,SignedBy,Witness,Language,DocumentFormat,EligibilityConfirmed,MedicalHistoryReviewed,RisksExplained,BenefitsExplained,ConfidentialityAssured,WithdrawalAllowed,ContactInfo,ConsentStatus,ExpirationDate,Notes,DigitalSignatureHash,ArchiveLocation,ConsentCopySent,FollowUpDate,UpdatedBy,UpdatedAt) VALUES (6003,'TR003','PC1003','2024-10-20','v1','DrJones','NurseC','French','PDF',FALSE,TRUE,FALSE,TRUE,TRUE,TRUE,'555-3333','Rejected','2025-10-20','Ineligible due to condition', 'EF56AB12CD34', '/archive/consent/6003.pdf',FALSE,'2025-01-20','AdminZ','2024-10-20 09:45:00');


-- Staff shift schedules
CREATE TABLE StaffShift
(
    ShiftID               INTEGER PRIMARY KEY,
    StaffID               INTEGER,
    FacilityID            INTEGER,
    Department            VARCHAR(50),
    Role                  VARCHAR(50),
    ShiftDate             DATE,
    ShiftStart            TIME,
    ShiftEnd              TIME,
    BreakDurationMin      INTEGER,
    TotalHours            DECIMAL(4,2),
    OvertimeHours         DECIMAL(4,2),
    ShiftType             VARCHAR(20),
    AssignedWard          VARCHAR(50),
    AssignedUnit          VARCHAR(50),
    SupervisorID          INTEGER,
    ShiftNotes            VARCHAR(200),
    PaidStatus            VARCHAR(10),
    PayRate               DECIMAL(8,2),
    Currency              VARCHAR(10),
    AttendanceRecorded    BOOLEAN,
    LateFlag              BOOLEAN,
    EarlyLeaveFlag        BOOLEAN,
    AbsenceReason         VARCHAR(100),
    ShiftCreatedBy        VARCHAR(100),
    ShiftCreatedAt        DATETIME
);

INSERT INTO StaffShift (ShiftID,StaffID,FacilityID,Department,Role,ShiftDate,ShiftStart,ShiftEnd,BreakDurationMin,TotalHours,OvertimeHours,ShiftType,AssignedWard,AssignedUnit,SupervisorID,ShiftNotes,PaidStatus,PayRate,Currency,AttendanceRecorded,LateFlag,EarlyLeaveFlag,AbsenceReason,ShiftCreatedBy,ShiftCreatedAt) VALUES (4001,501,10,'Nursing','RN', '2024-09-18','07:00:00','15:00:00',30,7.5,0.0,'Day','Cardiology','Unit1',601,'','Paid',45.00,'USD',TRUE,FALSE,FALSE,NULL,'SchedulerA','2024-09-10 08:00:00');
INSERT INTO StaffShift (ShiftID,StaffID,FacilityID,Department,Role,ShiftDate,ShiftStart,ShiftEnd,BreakDurationMin,TotalHours,OvertimeHours,ShiftType,AssignedWard,AssignedUnit,SupervisorID,ShiftNotes,PaidStatus,PayRate,Currency,AttendanceRecorded,LateFlag,EarlyLeaveFlag,AbsenceReason,ShiftCreatedBy,ShiftCreatedAt) VALUES (4002,502,10,'Radiology','Tech', '2024-09-18','15:30:00','23:30:00',30,8.0,1.0,'Evening','Oncology','Unit3',602,'Overtime due to high volume','Paid',38.50,'USD',TRUE,TRUE,FALSE,NULL,'SchedulerB','2024-09-10 09:00:00');
INSERT INTO StaffShift (ShiftID,StaffID,FacilityID,Department,Role,ShiftDate,ShiftStart,ShiftEnd,BreakDurationMin,TotalHours,OvertimeHours,ShiftType,AssignedWard,AssignedUnit,SupervisorID,ShiftNotes,PaidStatus,PayRate,Currency,AttendanceRecorded,LateFlag,EarlyLeaveFlag,AbsenceReason,ShiftCreatedBy,ShiftCreatedAt) VALUES (4003,503,11,'Laboratory','LabTech', '2024-09-19','23:00:00','07:00:00',45,7.25,0.5,'Night','Pediatrics','Unit2',603,'Night shift with equipment maintenance','Paid',42.00,'USD',TRUE,FALSE,TRUE,'Equipment issue','SchedulerC','2024-09-11 10:15:00');


-- Environmental monitoring sensors
CREATE TABLE EnvironmentalMonitor
(
    MonitorID             INTEGER PRIMARY KEY,
    FacilityID            INTEGER,
    Location              VARCHAR(100),
    SensorType            VARCHAR(50),
    InstallationDate      DATE,
    LastCalibrationDate   DATE,
    MeasurementUnit       VARCHAR(20),
    ReadingValue          DECIMAL(10,4),
    ReadingTimestamp      DATETIME,
    ThresholdLow          DECIMAL(10,4),
    ThresholdHigh         DECIMAL(10,4),
    AlertTriggered        BOOLEAN,
    MaintenanceDueDate    DATE,
    FirmwareVersion       VARCHAR(20),
    BatteryLevelPercent   INTEGER,
    ConnectivityStatus    VARCHAR(20),
    DataLogIntervalSec    INTEGER,
    CalibrationStatus     VARCHAR(20),
    Manufacturer          VARCHAR(100),
    SerialNumber          VARCHAR(30),
    WarrantyExpiryDate    DATE,
    AccuracyRating        VARCHAR(10),
    CalibrationTechnicianID INTEGER
);

INSERT INTO EnvironmentalMonitor (MonitorID,FacilityID,Location,SensorType,InstallationDate,LastCalibrationDate,MeasurementUnit,ReadingValue,ReadingTimestamp,ThresholdLow,ThresholdHigh,AlertTriggered,MaintenanceDueDate,FirmwareVersion,BatteryLevelPercent,ConnectivityStatus,DataLogIntervalSec,CalibrationStatus,Manufacturer,SerialNumber,WarrantyExpiryDate,AccuracyRating,CalibrationTechnicianID) VALUES (7001,10,'Ward1','Temperature','2022-01-15','2024-06-01','C',22.35,'2024-09-15 08:00:00',18.00,25.00,FALSE,'2025-01-15','v1.2',85,'Online',300,'Good','SensTech','SN1001','2025-12-31','+0.2C',801);
INSERT INTO EnvironmentalMonitor (MonitorID,FacilityID,Location,SensorType,InstallationDate,LastCalibrationDate,MeasurementUnit,ReadingValue,ReadingTimestamp,ThresholdLow,ThresholdHigh,AlertTriggered,MaintenanceDueDate,FirmwareVersion,BatteryLevelPercent,ConnectivityStatus,DataLogIntervalSec,CalibrationStatus,Manufacturer,SerialNumber,WarrantyExpiryDate,AccuracyRating,CalibrationTechnicianID) VALUES (7002,10,'LabA','Humidity','2021-11-20','2024-05-20','%RH',45.12,'2024-09-15 08:05:00',30.00,60.00,FALSE,'2024-12-20','v2.0',70,'Online',600,'Good','EnviroSensors','SN1002','2025-06-30','±2%',802);
INSERT INTO EnvironmentalMonitor (MonitorID,FacilityID,Location,SensorType,InstallationDate,LastCalibrationDate,MeasurementUnit,ReadingValue,ReadingTimestamp,ThresholdLow,ThresholdHigh,AlertTriggered,MaintenanceDueDate,FirmwareVersion,BatteryLevelPercent,ConnectivityStatus,DataLogIntervalSec,CalibrationStatus,Manufacturer,SerialNumber,WarrantyExpiryDate,AccuracyRating,CalibrationTechnicianID) VALUES (7003,11,'Pharmacy','Pressure','2023-03-10','2024-04-15','kPa',101.325,'2024-09-15 08:10:00',95.00,105.00,TRUE,'2024-11-10','v1.5',60,'Offline',1200,'NeedsReview','PressureTech','SN1003','2026-03-31','±0.5kPa',803);


-- Inventory audit records
CREATE TABLE InventoryAudit
(
    AuditID               INTEGER PRIMARY KEY,
    FacilityID            INTEGER,
    AuditorID             INTEGER,
    AuditDate             DATE,
    Section               VARCHAR(50),
    ItemSKU               VARCHAR(30),
    ItemDescription       VARCHAR(200),
    QuantityOnHand        INTEGER,
    QuantityRecorded      INTEGER,
    Discrepancy           INTEGER,
    ReasonForDiscrepancy  VARCHAR(200),
    AdjustedQuantity      INTEGER,
    AdjustedBy            VARCHAR(100),
    AdjustmentDate        DATE,
    Comments              VARCHAR(200),
    StorageCondition      VARCHAR(50),
    ExpiryDate            DATE,
    LotNumber             VARCHAR(30),
    Supplier              VARCHAR(100),
    ReorderLevel          INTEGER,
    ReorderQuantity       INTEGER,
    ReorderStatus         VARCHAR(20),
    NextAuditDate         DATE
);

INSERT INTO InventoryAudit (AuditID,FacilityID,AuditorID,AuditDate,Section,ItemSKU,ItemDescription,QuantityOnHand,QuantityRecorded,Discrepancy,ReasonForDiscrepancy,AdjustedQuantity,AdjustedBy,AdjustmentDate,Comments,StorageCondition,ExpiryDate,LotNumber,Supplier,ReorderLevel,ReorderQuantity,ReorderStatus,NextAuditDate) VALUES (3001,10,901,'2024-09-01','Pharmacy','MED001','Aspirin 100mg',500,495,-5,'Theft','500','AuditorA','2024-09-02','Adjusted after investigation','RoomTemp','2025-12-31','LOT123','PharmaInc',100,200,'Pending','2025-03-01');
INSERT INTO InventoryAudit (AuditID,FacilityID,AuditorID,AuditDate,Section,ItemSKU,ItemDescription,QuantityOnHand,QuantityRecorded,Discrepancy,ReasonForDiscrepancy,AdjustedQuantity,AdjustedBy,AdjustmentDate,Comments,StorageCondition,ExpiryDate,LotNumber,Supplier,ReorderLevel,ReorderQuantity,ReorderStatus,NextAuditDate) VALUES (3002,11,902,'2024-09-03','Supplies','SUP045','Surgical gloves',2000,2010,10,'Data entry error','2000','AuditorB','2024-09-04','Corrected entry','CoolDry','2026-05-15','LOT456','MediSupply',500,1000,'Ordered','2025-09-03');
INSERT INTO InventoryAudit (AuditID,FacilityID,AuditorID,AuditDate,Section,ItemSKU,ItemDescription,QuantityOnHand,QuantityRecorded,Discrepancy,ReasonForDiscrepancy,AdjustedQuantity,AdjustedBy,AdjustmentDate,Comments,StorageCondition,ExpiryDate,LotNumber,Supplier,ReorderLevel,ReorderQuantity,ReorderStatus,NextAuditDate) VALUES (3003,10,903,'2024-09-05','Lab','LAB789','Test tube set',300,295,5,'Broken during transport','300','AuditorC','2024-09-06','Replaced broken items','RoomTemp','2027-01-01','LOT789','LabGear',50,100,'InStock','2025-12-05');


-- Visitor entry log
CREATE TABLE VisitorLog
(
    VisitID               INTEGER PRIMARY KEY,
    FacilityID            INTEGER,
    VisitorName           VARCHAR(100),
    VisitorRelation       VARCHAR(50),
    VisitDate             DATE,
    CheckInTime           TIME,
    CheckOutTime          TIME,
    BadgeID               VARCHAR(30),
    WaiverSigned          BOOLEAN,
    AllowedAreas          VARCHAR(200),
    VisitorPhone          VARCHAR(20),
    VisitorEmail          VARCHAR(100),
    HostStaffID           INTEGER,
    HostDepartment        VARCHAR(50),
    ReasonForVisit        VARCHAR(200),
    EscortRequired        BOOLEAN,
    TemperatureCheck      BOOLEAN,
    TemperatureValueC     DECIMAL(4,1),
    HealthDeclaration     BOOLEAN,
    PhotoIDType           VARCHAR(30),
    PhotoIDNumber         VARCHAR(30),
    Comments              VARCHAR(200),
    CreatedBy             VARCHAR(100),
    CreatedAt             DATETIME
);

INSERT INTO VisitorLog (VisitID,FacilityID,VisitorName,VisitorRelation,VisitDate,CheckInTime,CheckOutTime,BadgeID,WaiverSigned,AllowedAreas,VisitorPhone,VisitorEmail,HostStaffID,HostDepartment,ReasonForVisit,EscortRequired,TemperatureCheck,TemperatureValueC,HealthDeclaration,PhotoIDType,PhotoIDNumber,Comments,CreatedBy,CreatedAt) VALUES (90001,10,'John Doe','Brother','2024-09-10','09:15:00','11:45:00','BADG001',TRUE,'Ward1','555-0011','john.doe@example.com',601,'Cardiology','Visit patient',FALSE,TRUE,36.5,TRUE,'DriverLicense','D1234567','No issues','AdminV','2024-09-10 08:55:00');
INSERT INTO VisitorLog (VisitID,FacilityID,VisitorName,VisitorRelation,VisitDate,CheckInTime,CheckOutTime,BadgeID,WaiverSigned,AllowedAreas,VisitorPhone,VisitorEmail,HostStaffID,HostDepartment,ReasonForVisit,EscortRequired,TemperatureCheck,TemperatureValueC,HealthDeclaration,PhotoIDType,PhotoIDNumber,Comments,CreatedBy,CreatedAt) VALUES (90002,11,'Maria Lopez','Friend','2024-09-12','13:20:00','15:00:00','BADG002',TRUE,'Cafeteria','555-0022','maria.lopez@example.com',602,'Oncology','Support friend',TRUE,TRUE,37.0,TRUE,'Passport','P9876543','Escort provided','AdminV','2024-09-12 13:00:00');
INSERT INTO VisitorLog (VisitID,FacilityID,VisitorName,VisitorRelation,VisitDate,CheckInTime,CheckOutTime,BadgeID,WaiverSigned,AllowedAreas,VisitorPhone,VisitorEmail,HostStaffID,HostDepartment,ReasonForVisit,EscortRequired,TemperatureCheck,TemperatureValueC,HealthDeclaration,PhotoIDType,PhotoIDNumber,Comments,CreatedBy,CreatedAt) VALUES (90003,10,'Anna Smith','Mother','2024-09-14','16:45:00','18:30:00','BADG003',TRUE,'Ward3','555-0033','anna.smith@example.com',603,'Pediatrics','Visit child',FALSE,TRUE,36.8,TRUE,'StateID','S5678901','All clear','AdminV','2024-09-14 16:20:00');