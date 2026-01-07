-- Telecom fiber routes information
CREATE TABLE telecom_fiber_routes
(
    RouteID                 INTEGER PRIMARY KEY,
    StartNodeID             INTEGER,
    EndNodeID               INTEGER,
    LengthKm                REAL,
    CapacityGbps            REAL,
    InstallationDate        DATE,
    Contractor              TEXT,
    Status                  TEXT,
    FiberType               TEXT,
    SpliceCount             INTEGER,
    MaintenanceCycleMonths INTEGER,
    LastMaintDate           DATE,
    NextMaintDate           DATE,
    Region                  TEXT,
    UrbanRuralFlag          TEXT,
    CostMillions            REAL,
    VoltageLevel            REAL,
    OwnerCompany            TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    Remarks                 TEXT,
    IsActive                INTEGER
);
INSERT INTO telecom_fiber_routes VALUES (1,101,102,12.5,40.0,'2021-03-15','AlphaConstruct','Active','SingleMode',8,12,'2022-03-01','2023-03-01','NorthRegion','Urban',0.45,0.0,'TelecomCo','2021-03-15','2022-01-10','Initial deployment',1);
INSERT INTO telecom_fiber_routes VALUES (2,103,104,7.8,20.0,'2020-07-20','BetaBuilders','Planned','MultiMode',5,18,'2021-07-20','2022-01-20','SouthRegion','Rural',0.30,0.0,'NetLink','2020-07-20','2021-12-05','Pending permits',0);
INSERT INTO telecom_fiber_routes VALUES (3,105,106,15.2,80.0,'2019-11-05','GammaInfra','Active','SingleMode',12,24,'2022-11-05','2024-11-05','EastRegion','Urban',1.20,0.0,'FiberNet','2019-11-05','2022-02-18','Upgraded during 2022',1);

-- Airline crew schedules
CREATE TABLE airline_crew_schedules
(
    ScheduleID          INTEGER PRIMARY KEY,
    CrewMemberID       INTEGER,
    FlightNumber       TEXT,
    DepartureAirport   TEXT,
    ArrivalAirport     TEXT,
    DutyDate           DATE,
    DutyStartTime      TEXT,
    DutyEndTime        TEXT,
    Role               TEXT,
    Rank               TEXT,
    HoursAssigned      REAL,
    HoursWorked        REAL,
    RestPeriodHours    REAL,
    BaseLocation       TEXT,
    SeniorityLevel     INTEGER,
    SalaryBand         TEXT,
    CertificationCode  TEXT,
    HealthStatus       TEXT,
    TrainingDueDate    DATE,
    LanguageProficiency TEXT,
    ContactNumber      TEXT,
    IsOnCall           INTEGER
);
INSERT INTO airline_crew_schedules VALUES (1001,2001,'AA123','JFK','LAX','2022-12-01','08:00','12:00','Pilot','Captain',4.0,4.0,10,'NewYork',15,'B','ATPL','Fit','2023-06-30','English','5551234567',1);
INSERT INTO airline_crew_schedules VALUES (1002,2002,'AA124','LAX','ORD','2022-12-02','13:00','17:00','FlightAttendant','Senior',4.0,3.5,12,'LosAngeles',10,'A','FA','Fit','2023-01-15','Spanish','5559876543',0);
INSERT INTO airline_crew_schedules VALUES (1003,2003,'AA125','ORD','MIA','2022-12-03','09:30','13:30','CoPilot','FirstOfficer',4.0,4.0,8,'Chicago',12,'B','CPL','Fit','2023-03-20','English','5552223344',1);

-- Hotel guest profiles
CREATE TABLE hotel_guest_profiles
(
    GuestProfileID        INTEGER PRIMARY KEY,
    FirstName             TEXT,
    LastName              TEXT,
    DateOfBirth           DATE,
    Nationality           TEXT,
    LoyaltyTier           TEXT,
    PreferredRoomType     TEXT,
    CheckInMethod         TEXT,
    Email                 TEXT,
    PhoneNumber           TEXT,
    AddressLine1          TEXT,
    City                  TEXT,
    State                 TEXT,
    ZipCode               TEXT,
    Country               TEXT,
    PreferredFloor        INTEGER,
    DietaryRestrictions   TEXT,
    SmokingPreference     TEXT,
    AccessibilityNeeds    TEXT,
    LastStayDate          DATE,
    TotalStays            INTEGER,
    TotalSpend            REAL,
    PreferredLanguage     TEXT
);
INSERT INTO hotel_guest_profiles VALUES (5001,'John','Doe','1980-05-12','US','Gold','Deluxe','Online','john.doe@example.com','5551112222','123 Main St','Springfield','IL','62704','USA',5,'None','NonSmoking','None','2022-11-20',12,4500.75,'English');
INSERT INTO hotel_guest_profiles VALUES (5002,'Maria','Gonzalez','1992-09-30','MX','Silver','Suite','Kiosk','maria.g@example.com','5553334444','456 Oak Ave','Austin','TX','73301','USA',12,'Vegetarian','Smoking','Wheelchair','2022-12-05',8,3200.00,'Spanish');
INSERT INTO hotel_guest_profiles VALUES (5003,'Liu','Wei','1975-03-22','CN','Platinum','Presidential','MobileApp','liu.wei@example.cn','5555556666','789 Pine Rd','Seattle','WA','98101','USA',1,'GlutenFree','NonSmoking','VisualImpairment','2022-10-15',20,7800.50,'Mandarin');

-- Museum artifact catalog
CREATE TABLE museum_artifact_catalog
(
    ArtifactID             INTEGER PRIMARY KEY,
    Title                  TEXT,
    Category               TEXT,
    Period                 TEXT,
    OriginCountry          TEXT,
    Material               TEXT,
    Dimensions             TEXT,
    WeightKg               REAL,
    AcquisitionDate        DATE,
    AcquiredFrom           TEXT,
    AcquisitionMethod      TEXT,
    CurrentLocation        TEXT,
    ConditionRating        INTEGER,
    ConservationStatus    TEXT,
    DisplayStatus          TEXT,
    CuratorID              INTEGER,
    InsuranceValue         REAL,
    LoanStatus             TEXT,
    LoanPartner            TEXT,
    LoanStartDate          DATE,
    LoanEndDate            DATE,
    PhotoReference         TEXT,
    IsOnDisplay            INTEGER
);
INSERT INTO museum_artifact_catalog VALUES (8001,'GoldenMask','Sculpture','BronzeAge','Greece','Gold','30x20x15',5.2,'2015-04-10','PrivateCollector','Donation','MainHall',9,'Stable','OnDisplay',3001,250000.00,'NotOnLoan','','','','','mask_photo1.jpg',1);
INSERT INTO museum_artifact_catalog VALUES (8002,'SilkScroll','Manuscript','MingDynasty','China','Silk','200x30',0.8,'2018-09-22','AntiqueDealer','Purchase','StorageRoom',7,'NeedsRestoration','InStorage',3002,120000.00,'OnLoan','NationalMuseum','2022-01-01','2025-01-01','scroll_photo2.jpg',0);
INSERT INTO museum_artifact_catalog VALUES (8003,'BronzeBell','Instrument','Medieval','Germany','Bronze','40x40x60',12.5,'2020-02-14','ArchaeologyDept','Transfer','ExhibitWing',8,'Stable','OnDisplay',3003,175000.00,'NotOnLoan','','','','','bell_photo3.jpg',1);

-- Construction material inventory
CREATE TABLE construction_material_inventory
(
    MaterialID           INTEGER PRIMARY KEY,
    MaterialName         TEXT,
    MaterialType         TEXT,
    SupplierID           INTEGER,
    UnitCost             REAL,
    UnitMeasure          TEXT,
    StockQuantity        INTEGER,
    ReorderLevel         INTEGER,
    LeadTimeDays         INTEGER,
    StorageLocation      TEXT,
    HazardousFlag        INTEGER,
    BatchNumber          TEXT,
    ExpirationDate       DATE,
    ReceivedDate         DATE,
    LastAuditDate        DATE,
    QualityRating        INTEGER,
    Certification        TEXT,
    ProjectID            INTEGER,
    AssignedToSite       TEXT,
    CostCenter           TEXT,
    LastUsedDate         DATE,
    IsActive             INTEGER,
    Notes                TEXT
);
INSERT INTO construction_material_inventory VALUES (9001,'Rebar','Steel',4001,120.5,'Ton',35,10,7,'WarehouseA',0,'RB202109','', '2021-09-15','2022-01-10',8,'ISO9001',501,'SiteNorth','CC1001','2022-02-20',1,'High tensile strength');
INSERT INTO construction_material_inventory VALUES (9002,'Cement','Concrete',4002,95.0,'Bag',1200,200,5,'WarehouseB',0,'CM202110','2023-12-31','2021-10-20','2022-03-05',9,'ASTM',502,'SiteSouth','CC1002','2022-03-15',1,'Standard Portland cement');
INSERT INTO construction_material_inventory VALUES (9003,'PaintBlue','Paint',4003,25.75,'Gallon',250,50,10,'WarehouseC',0,'PB202108','2024-06-30','2021-08-05','2022-04-12',7,'EPA',503,'SiteEast','CC1003','2022-04-01',1,'Low VOC blue paint');

-- Renewable energy maintenance logs
CREATE TABLE renewable_energy_maintenance_logs
(
    LogID                INTEGER PRIMARY KEY,
    PlantID              INTEGER,
    AssetType            TEXT,
    AssetID              INTEGER,
    MaintenanceDate      DATE,
    MaintenanceType      TEXT,
    TechnicianID         INTEGER,
    DurationHours        REAL,
    CostUSD              REAL,
    DowntimeHours        REAL,
    IssueDescription     TEXT,
    ActionTaken          TEXT,
    PartsReplaced        TEXT,
    NextScheduledDate    DATE,
    WeatherCondition     TEXT,
    SafetyCompliance     TEXT,
    DocumentationLink    TEXT,
    ApprovedBy           TEXT,
    Remarks              TEXT,
    IsCritical           INTEGER,
    WarrantyFlag         INTEGER,
    UpdatedAt            DATE
);
INSERT INTO renewable_energy_maintenance_logs VALUES (10001,20001,'Turbine',30001,'2022-07-15','Inspection',5001,4.0,1500.00,0.0,'No abnormal findings','Routine check','None','2023-01-15','Sunny','Compliant','doclink1.pdf','ManagerA','All good',0,1,'2022-07-15');
INSERT INTO renewable_energy_maintenance_logs VALUES (10002,20002,'SolarPanel',30002,'2022-08-10','Cleaning',5002,2.5,800.00,0.0,'Dust accumulation','Washed panels','None','2022-12-10','Cloudy','Compliant','doclink2.pdf','ManagerB','Improved efficiency',0,0,'2022-08-10');
INSERT INTO renewable_energy_maintenance_logs VALUES (10003,20003,'BatteryStorage',30003,'2022-09-05','BatterySwap',5003,6.0,3000.00,1.5,'Voltage drop','Replaced faulty cells','CellSetA','2023-03-05','Rainy','Compliant','doclink3.pdf','ManagerC','Monitor performance',1,1,'2022-09-05');

-- Municipal permit applications
CREATE TABLE municipal_permit_applications
(
    ApplicationID            INTEGER PRIMARY KEY,
    PermitType               TEXT,
    ApplicantName            TEXT,
    BusinessName             TEXT,
    AddressLine1             TEXT,
    City                     TEXT,
    State                    TEXT,
    ZipCode                  TEXT,
    ContactPhone             TEXT,
    Email                    TEXT,
    SubmissionDate           DATE,
    Status                   TEXT,
    ReviewerID               INTEGER,
    ReviewDate               DATE,
    Decision                 TEXT,
    FeeAmount                REAL,
    PaymentStatus            TEXT,
    ExpirationDate           DATE,
    RequiredDocuments        TEXT,
    Notes                    TEXT,
    IsExpedited              INTEGER,
    PriorityLevel            INTEGER,
    AssignedOfficer          TEXT
);
INSERT INTO municipal_permit_applications VALUES (30001,'Building','Alice Johnson','AlphaConstruction','789 Maple St','Detroit','MI','48201','5551110000','alice.j@example.com','2022-10-01','Pending',7001,'','',250.00,'Unpaid','','SitePlan,EnvironmentalStudy','First submission',0,2,'OfficerX');
INSERT INTO municipal_permit_applications VALUES (30002,'Signage','Bob Lee','BetaSigns','321 Oak Ave','Columbus','OH','43215','5552223333','bob.lee@example.com','2022-10-05','Approved',7002,'2022-10-12','Approved',75.00,'Paid','2023-10-04','DesignMockup','All documents verified',1,1,'OfficerY');
INSERT INTO municipal_permit_applications VALUES (30003,'Event','Cathy Smith','CathyEvents','456 Pine Rd','Austin','TX','73301','5553334444','cathy.s@example.com','2022-10-10','Rejected',7003,'2022-10-15','Rejected',0.00,'N/A','2022-12-31','EventPlan','Missing insurance proof',0,3,'OfficerZ');

-- Digital content subscriptions
CREATE TABLE digital_content_subscriptions
(
    SubscriptionID        INTEGER PRIMARY KEY,
    UserID                INTEGER,
    ContentPackageID      INTEGER,
    StartDate             DATE,
    EndDate               DATE,
    AutoRenewFlag         INTEGER,
    PaymentMethod         TEXT,
    BillingCycle          TEXT,
    PriceUSD              REAL,
    DiscountCode          TEXT,
    PromoStartDate        DATE,
    PromoEndDate          DATE,
    AccessLevel           TEXT,
    DeviceLimit           INTEGER,
    Region                TEXT,
    Status                TEXT,
    CreatedAt             DATE,
    UpdatedAt             DATE,
    CancellationReason    TEXT,
    RenewalNoticeSent     INTEGER,
    LastPaymentDate       DATE,
    NextBillingDate       DATE,
    Notes                 TEXT
);
INSERT INTO digital_content_subscriptions VALUES (40001,6001,7001,'2022-01-01','2022-12-31',1,'CreditCard','Monthly',9.99,'NEWYEAR','2022-01-01','2022-01-31','Premium',3,'US','Active','2022-01-01','2022-06-01','',1,'2022-06-01','2022-07-01','');
INSERT INTO digital_content_subscriptions VALUES (40002,6002,7002,'2022-03-15','2023-03-14',0,'PayPal','Annual',99.99,'SUMMER22','2022-06-01','2022-06-30','Standard',5,'EU','Active','2022-03-15','2022-06-15','',0,'2022-06-15','2023-03-15','');
INSERT INTO digital_content_subscriptions VALUES (40003,6003,7003,'2021-11-01','2022-10-31',1,'DebitCard','Monthly',5.99,'','2022-01-01','2022-01-31','Basic',2,'ASIA','Cancelled','2021-11-01','2022-09-01','User requested cancellation',0,'2022-09-01','2022-10-01','No further charge');

-- Urban tree inventory
CREATE TABLE urban_tree_inventory
(
    TreeID                INTEGER PRIMARY KEY,
    Species               TEXT,
    CommonName            TEXT,
    PlantingDate          DATE,
    HeightM               REAL,
    DiameterCm            REAL,
    HealthStatus          TEXT,
    LocationDescription   TEXT,
    Latitude              REAL,
    Longitude             REAL,
    StreetAddress         TEXT,
    Neighborhood          TEXT,
    OwnerType             TEXT,
    MaintenanceSchedule   TEXT,
    LastPrunedDate        DATE,
    NextPrunedDate        DATE,
    SoilType              TEXT,
    WaterNeeds            TEXT,
    SunExposure           TEXT,
    GrowthRate            TEXT,
    EstimatedAge          INTEGER,
    CarbonSequestrationKg REAL,
    IsProtected           INTEGER
);
INSERT INTO urban_tree_inventory VALUES (50001,'QuercusRubra','RedOak','2010-04-22',15.2,45.0,'Good','Park Avenue near library',40.7128,-74.0060,'123 Park Ave','Downtown','City','Annual','2022-04-01','2023-04-01','Loamy','Medium','FullSun','Medium',12,120.5,1);
INSERT INTO urban_tree_inventory VALUES (50002,'AcerSaccharum','SugarMaple','2015-09-10',10.5,30.0,'Fair','Corner of 5th and Main',34.0522,-118.2437,'456 Main St','Midtown','Private','Biannual','2022-09-15','2023-03-15','Sandy','High','PartialShade','Fast',7,80.3,0);
INSERT INTO urban_tree_inventory VALUES (50003,'PlatanusXAmericana','Sycamore','2005-06-01',20.0,55.0,'Excellent','Riverfront promenade',41.8781,-87.6298,'789 River Rd','Uptown','Community','Annual','2022-06-20','2023-06-20','Clay','Low','FullSun','Slow',17,150.0,1);

-- Public art installations
CREATE TABLE public_art_installations
(
    InstallationID        INTEGER PRIMARY KEY,
    Title                 TEXT,
    Artist                TEXT,
    Type                  TEXT,
    InstallationDate      DATE,
    LocationDescription   TEXT,
    Latitude              REAL,
    Longitude             REAL,
    Material              TEXT,
    Dimensions            TEXT,
    FundingSource         TEXT,
    CostUSD               REAL,
    MaintenanceProvider   TEXT,
    MaintenanceFrequencyMonths INTEGER,
    Status                TEXT,
    VisibilityScore       INTEGER,
    PublicAccessFlag      INTEGER,
    LightingRequired      INTEGER,
    SoundEnabled          INTEGER,
    InteractiveFeature    TEXT,
    VisitorCountAnnual    INTEGER,
    PreservationPlan      TEXT,
    Remarks               TEXT
);
INSERT INTO public_art_installations VALUES (60001,'Harmony','Lina Perez','Sculpture','2021-05-10','Central Plaza','40.7306','-73.9352','Bronze','2m x 2m x 5m','CityGrant',250000,'ArtDept',12,'Installed',85,1,1,0,'TouchSensor',120000,'AnnualConservation','Popular landmark');
INSERT INTO public_art_installations VALUES (60002,'Waves','Mark Liu','Mural','2020-09-22','Eastside Bridge','34.0522','-118.2437','Paint','50m x 10m','PrivateSponsor',150000,'CityMaintenance',24,'Installed',70,1,0,0,'',80000,'ProtectiveCoating','Seasonal cleaning required');
INSERT INTO public_art_installations VALUES (60003,'LightPulse','Sara Khan','LightInstallation','2022-03-15','Riverwalk','41.8781','-87.6298','LED','Variable','CommunityFund',100000,'LightingCo',6,'Operational',90,1,1,1,'MotionActivated',50000,'LEDReplacementPlan','Energy efficient design');