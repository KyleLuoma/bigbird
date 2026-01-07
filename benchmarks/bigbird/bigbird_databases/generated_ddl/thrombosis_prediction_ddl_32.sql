-- RadiationSafetyLog: records radiation measurements from safety monitoring stations
CREATE TABLE RadiationSafetyLog
(
    LogID                INTEGER PRIMARY KEY,
    StationID            TEXT,
    MeasurementDate      DATE,
    GammaDose            REAL,
    NeutronDose          REAL,
    AlphaDose            REAL,
    BetaDose             REAL,
    DeviceSerial         TEXT,
    Technician           TEXT,
    Shift                TEXT,
    Comments             TEXT,
    Latitude             REAL,
    Longitude            REAL,
    CalibrationDate      DATE,
    SensorStatus         TEXT,
    EnvironmentalTemp    REAL,
    EnvironmentalHumidity REAL,
    RecordCreated        DATE,
    RecordModified       DATE,
    ApprovalStatus       TEXT
);

INSERT INTO RadiationSafetyLog VALUES (1,'STN_A1','2023-03-15',0.12,0.03,0.00,0.01,'DSN1001','Alice','Day','Initial reading',34.0522,-118.2437,'2023-01-10','OK',22.5,45.0,'2023-03-15','2023-03-15','Pending');
INSERT INTO RadiationSafetyLog VALUES (2,'STN_B2','2023-03-16',0.09,0.02,0.00,0.00,'DSN1002','Bob','Night','Stable',40.7128,-74.0060,'2023-01-12','OK',21.0,50.0,'2023-03-16','2023-03-16','Approved');
INSERT INTO RadiationSafetyLog VALUES (3,'STN_C3','2023-03-17',0.15,0.04,0.01,0.02,'DSN1003','Carol','Day','Slight increase',37.7749,-122.4194,'2023-01-15','Warning',23.0,48.0,'2023-03-17','2023-03-17','Pending');

-- MedicalSupplyRecallNotice: product recall information for medical supplies
CREATE TABLE MedicalSupplyRecallNotice
(
    RecallID               INTEGER PRIMARY KEY,
    ProductCode            TEXT,
    ProductName            TEXT,
    RecallDate             DATE,
    Manufacturer           TEXT,
    BatchNumber            TEXT,
    ExpirationDate         DATE,
    Reason                 TEXT,
    Severity               TEXT,
    DistributionChannel    TEXT,
    ContactPhone           TEXT,
    ContactEmail           TEXT,
    SupplyCategory         TEXT,
    RecallStatus           TEXT,
    InitialNotificationDate DATE,
    FinalDispositionDate   DATE,
    AffectedUnits          INTEGER,
    IsVoluntary            TEXT,
    RegulatoryAgency       TEXT,
    Notes                  TEXT
);

INSERT INTO MedicalSupplyRecallNotice VALUES (101,'PC001','SterileGlove','2023-04-01','MediCorp','BN123','2025-12-31','Packaging defect','High','National','5551234567','recall@medicorp.com','Gloves','Open','2023-04-02','2023-04-15',1500,'Yes','FDA','Urgent action required');
INSERT INTO MedicalSupplyRecallNotice VALUES (102,'PC002','IVSet','2023-04-05','HealthSupplies','BN456','2024-06-30','Contamination risk','Medium','Regional','5559876543','ivset@healthsupplies.com','IV Devices','Open','2023-04-06','2023-04-20',800,'No','EMA','Monitoring ongoing');
INSERT INTO MedicalSupplyRecallNotice VALUES (103,'PC003','Syringe','2023-04-10','PharmaGoods','BN789','2026-01-15','Labeling error','Low','Local','5555551212','syringe@pharmagoods.com','Syringes','Closed','2023-04-11','2023-04-25',300,'Yes','HealthCanada','Recall completed');

-- HealthInsurancePolicyVersion: different versions of health insurance policies
CREATE TABLE HealthInsurancePolicyVersion
(
    PolicyID               INTEGER PRIMARY KEY,
    PlanName               TEXT,
    VersionNumber          TEXT,
    EffectiveDate          DATE,
    ExpirationDate         DATE,
    CoverageType           TEXT,
    PremiumAmount          REAL,
    Deductible             REAL,
    OutOfPocketMaximum     REAL,
    CoPayPercentage        REAL,
    NetworkType            TEXT,
    ProviderID             TEXT,
    PlanAdministrator      TEXT,
    ContactNumber          TEXT,
    ContactEmail           TEXT,
    EligibilityCriteria    TEXT,
    PreExistingConditionClause TEXT,
    RenewalProcess         TEXT,
    RegulatoryCompliance   TEXT,
    Comments               TEXT
);

INSERT INTO HealthInsurancePolicyVersion VALUES (201,'BasicHealth','V1','2023-01-01','2023-12-31','Individual',200.00,500.00,2000.00,20.0,'InNetwork','PROV001','AdminA','5551112222','basic@insure.com','All adults','Standard','Automatic','ACA','Initial launch');
INSERT INTO HealthInsurancePolicyVersion VALUES (202,'FamilyPlus','V2','2023-02-01','2024-01-31','Family',450.00,1000.00,5000.00,15.0,'Broad','PROV002','AdminB','5553334444','family@insure.com','Families with children','Extended','Manual','StateReg','Updated benefits');
INSERT INTO HealthInsurancePolicyVersion VALUES (203,'SeniorCare','V1','2023-03-01','2024-02-28','Senior','300.00',250.00,3000.00,10.0,'Narrow','PROV003','AdminC','5557778888','senior@insure.com','Ages 65+','Limited','Automatic','Federal','New plan version');

-- BiomedicalResearchMaterialTracking: tracking of research materials used in biomedical studies
CREATE TABLE BiomedicalResearchMaterialTracking
(
    MaterialID                INTEGER PRIMARY KEY,
    StudyID                   TEXT,
    MaterialType              TEXT,
    CollectionDate            DATE,
    Source                    TEXT,
    StorageLocation           TEXT,
    TemperatureRequirement    REAL,
    Quantity                  INTEGER,
    Units                     TEXT,
    BatchID                   TEXT,
    LotNumber                 TEXT,
    QualityControlStatus     TEXT,
    ReceivedBy                TEXT,
    VerifiedBy                TEXT,
    ExpirationDate            DATE,
    HandlingInstructions      TEXT,
    HazardClassification      TEXT,
    RegulatoryApproval        TEXT,
    AccessLevel               TEXT,
    Notes                     TEXT
);

INSERT INTO BiomedicalResearchMaterialTracking VALUES (301,'STUDY_X1','BloodSample','2023-01-10','ClinicA','Freezer1',-80.0,50,'ml','BATCH01','LOT100','Passed','DrSmith','DrJones','2025-01-10','Keep frozen','Biohazard','IRBApproved','Restricted','First batch');
INSERT INTO BiomedicalResearchMaterialTracking VALUES (302,'STUDY_X2','TissueBlock','2023-02-15','HospitalB','ColdRoom2',4.0,20,'blocks','BATCH02','LOT200','Pending','NurseLee','DrKim','2024-12-31','Stay at 4C','LowRisk','IRBPending','Controlled','Awaiting QC');
INSERT INTO BiomedicalResearchMaterialTracking VALUES (303,'STUDY_X3','DNAExtract','2023-03-20','LabC','Freezer3',-20.0,100,'µl','BATCH03','LOT300','Passed','TechPat','DrWang','2026-03-20','Avoid freeze-thaw','MediumRisk','IRBApproved','Open','Stored per protocol');

-- VisitorBadgeAssignment: assignment of temporary badges for visitors
CREATE TABLE VisitorBadgeAssignment
(
    BadgeID                 INTEGER PRIMARY KEY,
    VisitorName             TEXT,
    VisitDate               DATE,
    VisitPurpose            TEXT,
    HostEmployeeID          INTEGER,
    HostDepartment          TEXT,
    BadgeIssuedBy           TEXT,
    BadgeExpiration         DATE,
    PhotoIDType             TEXT,
    PhotoIDNumber           TEXT,
    VehicleLicensePlate     TEXT,
    CheckInTime             TEXT,
    CheckOutTime            TEXT,
    Status                  TEXT,
    SecurityClearanceLevel TEXT,
    EscortRequired          TEXT,
    Remarks                 TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    DeletedFlag             INTEGER
);

INSERT INTO VisitorBadgeAssignment VALUES (401,'JohnDoe','2023-04-12','Consultation',1001,'Cardiology','SecurityA','2023-04-12','DriverLicense','D123456','ABC1234','08:30','12:00','Active','Level1','No','N/A','2023-04-01','2023-04-01',0);
INSERT INTO VisitorBadgeAssignment VALUES (402,'JaneSmith','2023-04-13','Vendor Delivery',1002,'SupplyChain','SecurityB','2023-04-13','Passport','P987654','XYZ5678','09:15','10:00','Active','Level2','Yes','Delivered equipment','2023-04-02','2023-04-02',0);
INSERT INTO VisitorBadgeAssignment VALUES (403,'MikeBrown','2023-04-14','Maintenance',1003,'Facilities','SecurityC','2023-04-14','StateID','S555777','LMN3456','07:45','11:30','Active','Level3','No','Routine check','2023-04-03','2023-04-03',0);

-- ParkingZoneUtilization: statistics on parking zone usage
CREATE TABLE ParkingZoneUtilization
(
    ZoneID                     INTEGER PRIMARY KEY,
    ZoneName                   TEXT,
    Capacity                   INTEGER,
    OccupiedSpots              INTEGER,
    UtilizationPercentage      REAL,
    LocationDescription        TEXT,
    TimeSlot                   TEXT,
    DayOfWeek                  TEXT,
    AverageStayDuration        REAL,
    PeakHourStart              TEXT,
    PeakHourEnd                TEXT,
    ReservedFor                TEXT,
    ElectricChargingSpots      INTEGER,
    HandicapSpots              INTEGER,
    MaintenanceStatus          TEXT,
    LastInspectionDate         DATE,
    ManagerEmployeeID          INTEGER,
    Notes                      TEXT,
    CreatedAt                  DATE,
    UpdatedAt                  DATE
);

INSERT INTO ParkingZoneUtilization VALUES (501,'ZoneA',200,150,75.0,'North Wing','08:00-18:00','Monday',2.5,'09:00','11:00','Staff','10','5','Good','2023-03-20',1101,'Stable usage','2023-04-01','2023-04-01');
INSERT INTO ParkingZoneUtilization VALUES (502,'ZoneB',150,120,80.0,'South Wing','08:00-20:00','Saturday',3.0,'10:00','13:00','Visitors','8','3','Good','2023-03-22',1102,'High weekend demand','2023-04-02','2023-04-02');
INSERT INTO ParkingZoneUtilization VALUES (503,'ZoneC',100,60,60.0,'East Wing','08:00-18:00','Sunday',1.8,'12:00','14:00','Patients','5','2','NeedsRepair','2023-03-25',1103,'Low Sunday usage','2023-04-03','2023-04-03');

-- MedicalDeviceServiceContract: service contract details for medical devices
CREATE TABLE MedicalDeviceServiceContract
(
    ContractID                 INTEGER PRIMARY KEY,
    DeviceSerialNumber         TEXT,
    Manufacturer               TEXT,
    ModelNumber                TEXT,
    ServiceProvider            TEXT,
    StartDate                  DATE,
    EndDate                    DATE,
    CoverageDetails            TEXT,
    ResponseTimeHours          INTEGER,
    AnnualFee                  REAL,
    SupportLevel               TEXT,
    ReplacementPolicy          TEXT,
    WarrantyExtension          INTEGER,
    ServiceContact             TEXT,
    ContactPhone               TEXT,
    ContactEmail               TEXT,
    MaintenanceFrequency       TEXT,
    LastServiceDate            DATE,
    NextScheduledService       DATE,
    ContractStatus             TEXT
);

INSERT INTO MedicalDeviceServiceContract VALUES (601,'MD12345','MedTech','MX100','ServiceCo','2022-01-01','2024-12-31','Full coverage','24',15000.00,'Premium','Standard','1','JohnSupport','5552223333','support@serviceco.com','Quarterly','2023-06-15','2023-12-15','Active');
INSERT INTO MedicalDeviceServiceContract VALUES (602,'MD67890','HealthEquip','HE200','RepairPlus','2023-03-01','2025-02-28','Limited coverage','48',8000.00','Standard','Upgrade','0','EmilyRepair','5554445555','repair@plus.com','Biannual','2023-09-10','2024-03-10','Active');
INSERT INTO MedicalDeviceServiceContract VALUES (603,'MD54321','BioMed','BM300','TechServ','2021-07-01','2023-06-30','Full coverage','12',12000.00','Premium','Replacement','1','MikeTech','5556667777','tech@serv.com','Monthly','2023-01-20','2023-02-20','Expired');

-- CommunityHealthWorkshopAttendance: attendance records for community health workshops
CREATE TABLE CommunityHealthWorkshopAttendance
(
    AttendanceID               INTEGER PRIMARY KEY,
    WorkshopID                 TEXT,
    ParticipantID              TEXT,
    ParticipantName            TEXT,
    AttendanceDate            DATE,
    Location                  TEXT,
    Facilitator               TEXT,
    Topic                     TEXT,
    DurationHours            REAL,
    FeedbackScore             INTEGER,
    MaterialsProvided         TEXT,
    CertificatesIssued        TEXT,
    TransportationProvided    TEXT,
    SpecialAccommodations     TEXT,
    FollowUpRecommended       TEXT,
    Notes                     TEXT,
    RegisteredVia             TEXT,
    PaymentStatus             TEXT,
    Sponsor                   TEXT,
    CreatedAt                 DATE
);

INSERT INTO CommunityHealthWorkshopAttendance VALUES (701,'WHK001','P001','Alice Green','2023-04-05','Community Center A','DrLee','Nutrition Basics',2.0,9,'Handouts','Yes','Bus','None','Yes','Good participation','Online','Paid','HealthDept','2023-03-20');
INSERT INTO CommunityHealthWorkshopAttendance VALUES (702,'WHK002','P002','Bob White','2023-04-06','Community Center B','NurseKim','Exercise Benefits',1.5,8,'Brochures','No','Car','WheelchairAccess','No','N/A','InPerson','Free','WellnessOrg','2023-03-22');
INSERT INTO CommunityHealthWorkshopAttendance VALUES (703,'WHK003','P003','Carol Black','2023-04-07','Community Center C','DrPatel','Stress Management',3.0,10,'Slides','Yes','Shuttle','Interpreter','Yes','Highly engaged','Online','Paid','MentalHealthAgency','2023-03-25');

-- TelehealthPlatformAnalytics: analytics data for telehealth platform usage
CREATE TABLE TelehealthPlatformAnalytics
(
    RecordID                 INTEGER PRIMARY KEY,
    PlatformName             TEXT,
    MetricDate               DATE,
    ActiveUsers              INTEGER,
    NewRegistrations         INTEGER,
    SessionsStarted          INTEGER,
    AvgSessionDuration       REAL,
    VideoCallSuccessRate     REAL,
    AudioCallSuccessRate     REAL,
    ConnectionErrors         INTEGER,
    UserFeedbackScore        REAL,
    DataUsageGB              REAL,
    PeakConcurrentUsers      INTEGER,
    GeographicRegion         TEXT,
    DeviceType               TEXT,
    OSVersion                TEXT,
    AppVersion               TEXT,
    SupportTickets           INTEGER,
    ResolutionTimeAvg        REAL,
    Notes                    TEXT
);

INSERT INTO TelehealthPlatformAnalytics VALUES (801,'TeleHealthX','2023-04-01',1500,120,1800,15.2,0.96,0.98,5,4.5,250.0,300,'NorthAmerica','Mobile','iOS14','1.2.3',20,2.5,'Steady growth');
INSERT INTO TelehealthPlatformAnalytics VALUES (802,'TeleHealthX','2023-04-02',1550,130,1850,14.8,0.95,0.97,3,4.6,260.0,320,'NorthAmerica','Desktop','Windows10','1.2.3',18,2.3,'Minor spike in usage');
INSERT INTO TelehealthPlatformAnalytics VALUES (803,'TeleHealthX','2023-04-03',1600,140,1900,15.0,0.97,0.99,2,4.7,270.0,340,'NorthAmerica','Tablet','Android11','1.2.4',15,2.1,'Improved video quality');

-- LogisticsShipmentTracking: tracking information for logistics shipments
CREATE TABLE LogisticsShipmentTracking
(
    ShipmentID               INTEGER PRIMARY KEY,
    CarrierName              TEXT,
    TrackingNumber           TEXT,
    OriginFacility           TEXT,
    DestinationFacility      TEXT,
    ShipDate                 DATE,
    EstimatedArrival         DATE,
    ActualArrival            DATE,
    ShipmentStatus           TEXT,
    WeightKg                 REAL,
    VolumeCubicM             REAL,
    NumberOfPackages         INTEGER,
    FreightClass             TEXT,
    HazardousMaterialFlag   INTEGER,
    TemperatureControlledFlag INTEGER,
    SpecialInstructions      TEXT,
    ObservedDamageFlag      INTEGER,
    ReceiverSignature        TEXT,
    DeliveryConfirmedBy      TEXT,
    Comments                 TEXT
);

INSERT INTO LogisticsShipmentTracking VALUES (901,'FastShip','TRK1001','WarehouseA','HospitalX','2023-04-10','2023-04-12','2023-04-12','Delivered',500.0,2.5,10,'Class100','0','1','Handle with care','0','SigJohn','NurseAmy','On time');
INSERT INTO LogisticsShipmentTracking VALUES (902,'QuickLogistics','TRK1002','WarehouseB','HospitalY','2023-04-11','2023-04-13','2023-04-14','Delivered',750.0,3.0,15,'Class200','1','0','Keep upright','1','SigMike','DrLee','Minor damage noted');
INSERT INTO LogisticsShipmentTracking VALUES (903,'ExpressCargo','TRK1003','WarehouseC','HospitalZ','2023-04-12','2023-04-14','2023-04-14','Delivered',300.0,1.2,5,'Class150','0','0','N/A','0','SigAnna','PharmBob','All good');