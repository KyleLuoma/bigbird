-- Pharmacy stock information
CREATE TABLE PharmacyStock
(
    StockID INTEGER PRIMARY KEY,
    DrugCode TEXT,
    DrugName TEXT,
    BatchNumber TEXT,
    ExpiryDate DATE,
    Quantity INTEGER,
    Unit TEXT,
    StorageLocation TEXT,
    SupplierID INTEGER,
    PurchasePrice REAL,
    RetailPrice REAL,
    ReorderLevel INTEGER,
    ReceivedDate DATE,
    LastAuditDate DATE,
    IsControlled INTEGER,
    Manufacturer TEXT,
    DosageForm TEXT,
    Strength TEXT,
    MaxDailyDose INTEGER,
    ShelfLifeDays INTEGER,
    TemperatureRequirement TEXT,
    Notes TEXT
);

INSERT INTO PharmacyStock VALUES (1,'DC001','Aspirin','B123','2025-12-31',500,'tablet','PharmacyA',10,0.05,0.10,100,'2023-01-10','2023-06-01',0,'PharmaCorp','tablet','500mg',4000,730,'RoomTemp','Standard pain reliever');
INSERT INTO PharmacyStock VALUES (2,'DC002','Warfarin','W456','2024-06-30',200,'tablet','PharmacyB',12,0.30,0.55,50,'2023-02-15','2023-07-01',1,'HealthMeds','tablet','5mg',35,365,'Refrigerated','Anticoagulant');
INSERT INTO PharmacyStock VALUES (3,'DC003','Metformin','M789','2026-03-15',800,'tablet','PharmacyC',15,0.08,0.15,150,'2023-03-20','2023-08-01',0,'GlucoseInc','tablet','500mg',2000,820,'RoomTemp','Diabetes medication');

-- Transport routes for hospital logistics
CREATE TABLE TransportRoute
(
    RouteID INTEGER PRIMARY KEY,
    VehicleID INTEGER,
    DriverID INTEGER,
    StartLocation TEXT,
    EndLocation TEXT,
    DepartureTime TEXT,
    ArrivalTime TEXT,
    DistanceKM REAL,
    FuelConsumedL REAL,
    CargoType TEXT,
    CargoWeightKG INTEGER,
    ScheduleDate DATE,
    IsActive INTEGER,
    RoutePriority INTEGER,
    MaintenanceDue DATE,
    GPSDeviceID INTEGER,
    WeatherCondition TEXT,
    TrafficLevel TEXT,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedDate DATE
);

INSERT INTO TransportRoute VALUES (101,2001,3001,'CentralWarehouse','MainHospital','08:00','09:30',12.5,5.2,'Pharmaceuticals',200,'2023-04-01',1,1,'2023-12-01',4001,'Clear','Low','Morning delivery','LogisticsMgr','2023-03-20','2023-04-01');
INSERT INTO TransportRoute VALUES (102,2002,3002,'LabDepot','RadiologyDept','13:00','13:45',5.0,2.1,'Specimens',50,'2023-04-02',1,2,'2023-11-15',4002,'Rain','Medium','Afternoon specimen transport','LogisticsMgr','2023-03-21','2023-04-02');
INSERT INTO TransportRoute VALUES (103,2003,3003,'PharmacyC','ICU','22:00','22:30',8.3,3.5,'BloodProducts',30,'2023-04-03',0,3,'2024-01-10',4003,'Clear','Low','Night shift restock','LogisticsMgr','2023-03-22','2023-04-03');

-- Maintenance logs for hospital assets
CREATE TABLE MaintenanceLog
(
    LogID INTEGER PRIMARY KEY,
    AssetID INTEGER,
    AssetType TEXT,
    MaintenanceDate DATE,
    TechnicianID INTEGER,
    WorkOrderNumber TEXT,
    Description TEXT,
    PartsUsed TEXT,
    LaborHours REAL,
    Cost REAL,
    NextDueDate DATE,
    Status TEXT,
    Priority INTEGER,
    Location TEXT,
    DowntimeHours REAL,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    WarrantyFlag INTEGER,
    MaintenanceCategory TEXT,
    Remarks TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO MaintenanceLog VALUES (5001,9001,'MRI_Scanner','2023-03-10',4101,'WO12345','Magnet calibration','Coil, Coolant',3.5,750.00,'2023-09-10','Completed',1,'Radiology','2.0','ChiefTech','2023-03-11',0,'Calibration','All parameters within spec','2023-03-10','2023-03-11');
INSERT INTO MaintenanceLog VALUES (5002,9002,'Ventilator','2023-03-12',4102,'WO12346','Filter replacement','FilterModelX',1.0,150.00,'2023-09-12','Completed',2,'ICU','0.5','ChiefTech','2023-03-13',1,'Preventive','Replaced expired filter','2023-03-12','2023-03-13');
INSERT INTO MaintenanceLog VALUES (5003,9003,'Generator','2023-03-15',4103,'WO12347','Fuel system inspection','FuelPump',2.0,300.00,'2023-09-15','InProgress',1,'PowerPlant','0','ChiefEng','2023-03-16',0,'Inspection','Inspection ongoing','2023-03-15','2023-03-16');

-- Research publications linked to clinical trials
CREATE TABLE ResearchPublication
(
    PubID INTEGER PRIMARY KEY,
    TrialID INTEGER,
    Title TEXT,
    Journal TEXT,
    PublicationDate DATE,
    DOI TEXT,
    Authors TEXT,
    Abstract TEXT,
    Keywords TEXT,
    Volume INTEGER,
    Issue INTEGER,
    Pages TEXT,
    ImpactFactor REAL,
    FundingSource TEXT,
    CorrespondingAuthorID INTEGER,
    Institution TEXT,
    Country TEXT,
    Language TEXT,
    PeerReviewed INTEGER,
    OpenAccess INTEGER,
    Citations INTEGER,
    URL TEXT
);

INSERT INTO ResearchPublication VALUES (8001,1001,'Effect of Drug X on Y','Medical Journal','2023-02-20','10.1000/mj.2023.001','SmithJ;LeeK','Study shows significant improvement','DrugX,OutcomeY',12,4,'101-110',5.2,'NationalGrant',5001,'UniversityA','USA','English',1,0,25,'http://example.com/pub8001');
INSERT INTO ResearchPublication VALUES (8002,1002,'Long-term Safety of Procedure Z','Health Science Review','2023-03-15','10.2000/hsr.2023.045','GarciaM;PatelS','Safety profile acceptable over 5 years','ProcedureZ,Safety',8,2,'55-63',3.8,'InstituteFund',5002,'InstituteB','UK','English',1,1,12,'http://example.com/pub8002');
INSERT INTO ResearchPublication VALUES (8003,1003,'Genomic Markers in Disease Q','Genetics Today','2023-04-10','10.3000/gt.2023.210','ChenL;O\'NeilB','Identified novel markers','Genomics,DiseaseQ',15,1,'200-215',7.0,'PrivateFoundation',5003,'LabC','Canada','English',1,0,40,'http://example.com/pub8003');

-- Quality audit records for hospital departments
CREATE TABLE QualityAudit
(
    AuditID INTEGER PRIMARY KEY,
    Department TEXT,
    AuditDate DATE,
    AuditorID INTEGER,
    Scope TEXT,
    Findings TEXT,
    SeverityLevel TEXT,
    Recommendations TEXT,
    FollowUpDate DATE,
    Status TEXT,
    Score INTEGER,
    DurationHours REAL,
    DocumentationLink TEXT,
    EvidenceCollected TEXT,
    SampleSize INTEGER,
    ComplianceRate REAL,
    CorrectiveActionID INTEGER,
    RiskLevel TEXT,
    Comments TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedDate DATE
);

INSERT INTO QualityAudit VALUES (9001,'Pharmacy','2023-02-28',6101,'Medication storage','Improper temperature logs','Medium','Implement automated logging','2023-04-01','Open',85,4.5','http://auditdocs/pharm2023','TempLogs',120,0.92,2001,'Moderate','Awaiting corrective plan','QualityMgr','2023-02-28','2023-03-05');
INSERT INTO QualityAudit VALUES (9002,'Radiology','2023-03-05',6102,'Imaging equipment','Calibration overdue','High','Schedule quarterly calibration','2023-05-01','Open',70,3.0','http://auditdocs/radio2023','CalibReports',60,0.78,2002,'High','High priority corrective action','QualityMgr','2023-03-05','2023-03-10');
INSERT INTO QualityAudit VALUES (9003,'ICU','2023-03-12',6103,'Patient safety protocols','Hand hygiene compliance low','Low','Re‑train staff','2023-04-20','Closed',92,5.0','http://auditdocs/icu2023','ObservationNotes',80,0.95,2003,'Low','Compliance improved after training','QualityMgr','2023-03-12','2023-04-22');

-- Training program catalog
CREATE TABLE TrainingProgram
(
    ProgramID INTEGER PRIMARY KEY,
    Name TEXT,
    Category TEXT,
    StartDate DATE,
    EndDate DATE,
    TrainerID INTEGER,
    Location TEXT,
    Capacity INTEGER,
    Enrolled INTEGER,
    Completed INTEGER,
    Certification TEXT,
    Cost REAL,
    MaterialLink TEXT,
    EvaluationScore REAL,
    Feedback TEXT,
    Prerequisite TEXT,
    Language TEXT,
    IsMandatory INTEGER,
    Department TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedDate DATE
);

INSERT INTO TrainingProgram VALUES (1101,'Infection Control Basics','Safety','2023-04-01','2023-04-03',7201,'ConferenceRoomA',30,28,27,'IC Certification',200.00','http://trainings/ic_materials','4.5','Positive','None','English',1,'All','HRDept','2023-03-20','2023-04-04');
INSERT INTO TrainingProgram VALUES (1102,'Advanced Cardiac Life Support','Clinical','2023-05-10','2023-05-12',7202,'LabB',25,25,24,'ACLS Cert',350.00','http://trainings/acls_materials','4.8','Excellent','BLS','English',1,'Emergency','HRDept','2023-04-15','2023-05-13');
INSERT INTO TrainingProgram VALUES (1103,'Data Privacy Regulations','Compliance','2023-06-05','2023-06-06',7203,'Online',40,38,38,'Privacy Cert',150.00','http://trainings/privacy_materials','4.2','Good','None','English',0,'IT','HRDept','2023-05-01','2023-06-07');

-- Procurement orders for hospital supplies
CREATE TABLE ProcurementOrder
(
    OrderID INTEGER PRIMARY KEY,
    SupplierID INTEGER,
    OrderDate DATE,
    ExpectedDelivery DATE,
    OrderStatus TEXT,
    TotalAmount REAL,
    Currency TEXT,
    PaymentTerms TEXT,
    ShippingMethod TEXT,
    TrackingNumber TEXT,
    ItemCount INTEGER,
    ApprovedBy INTEGER,
    ApprovalDate DATE,
    Remarks TEXT,
    TaxAmount REAL,
    Discount REAL,
    FreightCharges REAL,
    PurchaseCategory TEXT,
    ContractReference TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedDate DATE
);

INSERT INTO ProcurementOrder VALUES (3001,5001,'2023-03-01','2023-03-10','Pending',12500.00,'USD','Net30','Air','TRK12345',150,8001,'2023-03-02','Urgent restock','1250.00','200.00','150.00','MedicalSupplies','CONTRACT-01','Purchasing','2023-03-01','2023-03-02');
INSERT INTO ProcurementOrder VALUES (3002,5002,'2023-03-05','2023-03-15','Approved',8000.00,'USD','Net45','Sea','TRK67890',80,8002,'2023-03-06','Standard order','800.00','0.00','200.00','Equipment','CONTRACT-02','Purchasing','2023-03-05','2023-03-07');
INSERT INTO ProcurementOrder VALUES (3003,5003,'2023-03-12','2023-03-20','Shipped',5600.00,'USD','Net60','Ground','TRK54321',60,8003,'2023-03-13','Consumables','560.00','100.00','120.00','Pharmacy','CONTRACT-03','Purchasing','2023-03-12','2023-03-14');

-- Emergency contacts for staff and patients
CREATE TABLE EmergencyContact
(
    ContactID INTEGER PRIMARY KEY,
    PersonID INTEGER,
    Relationship TEXT,
    PhoneNumber TEXT,
    Email TEXT,
    Address TEXT,
    City TEXT,
    State TEXT,
    ZipCode TEXT,
    Country TEXT,
    PreferredContactMethod TEXT,
    IsPrimary INTEGER,
    NotificationEnabled INTEGER,
    LastUpdated DATE,
    Notes TEXT,
    AltPhone TEXT,
    AltEmail TEXT,
    Timezone TEXT,
    ContactPriority INTEGER,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedDate DATE
);

INSERT INTO EmergencyContact VALUES (4001,9001,'Spouse','555-1234','spouse@example.com','123 Main St','Metropolis','NY','10001','USA','Phone',1,1,'2023-02-28','No additional notes','555-5678','spouse.alt@example.com','EST',1,'Admin','2023-02-01','2023-02-28');
INSERT INTO EmergencyContact VALUES (4002,9002,'Parent','555-2345','parent@example.com','456 Oak Ave','Gotham','IL','60601','USA','Email',0,1,'2023-03-01','Preferred email contact','555-6789','parent.alt@example.com','CST',2,'Admin','2023-02-15','2023-03-01');
INSERT INTO EmergencyContact VALUES (4003,9003,'Friend','555-3456','friend@example.com','789 Pine Rd','Star City','CA','90001','USA','Phone',0,0,'2023-03-05','Contact for non‑critical matters','555-7890','friend.alt@example.com','PST',3,'Admin','2023-02-20','2023-03-05');

-- Asset depreciation tracking
CREATE TABLE AssetDepreciation
(
    DeprecID INTEGER PRIMARY KEY,
    AssetID INTEGER,
    AssetType TEXT,
    AcquisitionDate DATE,
    Cost REAL,
    UsefulLifeYears INTEGER,
    SalvageValue REAL,
    DepreciationMethod TEXT,
    AnnualDepreciation REAL,
    AccumulatedDepreciation REAL,
    BookValue REAL,
    DeprecStartDate DATE,
    DeprecEndDate DATE,
    FiscalYear INTEGER,
    FiscalPeriod INTEGER,
    DeprecStatus TEXT,
    Adjustments REAL,
    LastAdjusted DATE,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    Remarks TEXT
);

INSERT INTO AssetDepreciation VALUES (6001,7001,'MRI_Scanner','2020-01-15',2000000.00,10,200000.00,'StraightLine',180000.00,540000.00,1460000.00,'2020-01-15','2030-01-14',2023,2,'Active',0.00,'2023-01-01','Finance','2020-01-15','2023-02-01','Annual depreciation recorded');
INSERT INTO AssetDepreciation VALUES (6002,7002,'Ventilator','2021-06-10',150000.00,5,15000.00,'DecliningBalance',30000.00,90000.00,60000.00,'2021-06-10','2026-06-09',2023,2,'Active',0.00,'2023-01-15','Finance','2021-06-10','2023-02-05','Adjusted for usage');
INSERT INTO AssetDepreciation VALUES (6003,7003,'Hospital_Bed','2019-03-20',5000.00,8,500.00,'StraightLine',562.50,3375.00,1125.00,'2019-03-20','2027-03-19',2023,2,'Active',0.00,'2023-01-20','Finance','2019-03-20','2023-02-10','Standard depreciation');

-- Hospital policy definitions
CREATE TABLE HospitalPolicy
(
    PolicyID INTEGER PRIMARY KEY,
    PolicyCode TEXT,
    Title TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    Department TEXT,
    OwnerID INTEGER,
    ReviewFrequencyMonths INTEGER,
    LastReviewDate DATE,
    NextReviewDate DATE,
    Status TEXT,
    Version INTEGER,
    DocumentLink TEXT,
    ConfidentialLevel TEXT,
    Applicability TEXT,
    EnforcementLevel TEXT,
    AmendmentCount INTEGER,
    ApprovedBy INTEGER,
    ApprovalDate DATE,
    Summary TEXT,
    Keywords TEXT,
    CreatedBy TEXT,
    CreatedDate DATE
);

INSERT INTO HospitalPolicy VALUES (7001,'POL001','Infection Control Policy','2022-01-01','2025-12-31','InfectionControl',9001,12,'2023-01-15','2024-01-15','Active',3,'http://policies/infection_control.pdf','High','AllStaff','Mandatory',2,8001,'2022-12-20','Defines procedures for preventing hospital acquired infections','infection,control,prevention','PolicyMgr','2022-01-01');
INSERT INTO HospitalPolicy VALUES (7002,'POL002','Data Privacy Policy','2021-06-01','2024-05-31','IT',9002,24,'2022-06-01','2024-06-01','Active',5,'http://policies/data_privacy.pdf','Medium','AllStaff','Mandatory',1,8002,'2021-05-20','Guidelines for handling patient data according to regulations','privacy,data,security','PolicyMgr','2021-06-01');
INSERT INTO HospitalPolicy VALUES (7003,'POL003','Emergency Evacuation Policy','2020-09-01','2030-08-31','Facilities',9003,36,'2022-09-01','2025-09-01','Active',1,'http://policies/emergency_evacuation.pdf','High','AllStaff','Mandatory',0,8003,'2020-08-15','Procedures for safe evacuation in case of emergencies','evacuation,emergency,procedure','PolicyMgr','2020-09-01');