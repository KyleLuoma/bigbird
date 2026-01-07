-- School Bus Maintenance Log – records of maintenance activities for each district bus
CREATE TABLE school_bus_maintenance_log
(
    MaintenanceID        TEXT PRIMARY KEY,
    BusID                TEXT NOT NULL,
    ServiceDate          DATE NOT NULL,
    OdometerMiles       INTEGER,
    ServiceType          TEXT,
    Description          TEXT,
    CostUSD             REAL,
    VendorName          TEXT,
    InvoiceNumber       TEXT,
    TechnicianID        TEXT,
    PartsReplacedCount  INTEGER,
    PartsCostUSD        REAL,
    LaborHours          REAL,
    LaborRateUSD        REAL,
    FuelLevelBefore     REAL,
    FuelLevelAfter      REAL,
    InspectionPassed    INTEGER,
    FollowUpRequired    INTEGER,
    FollowUpDate         DATE,
    Notes                TEXT,
    UpdatedBy            TEXT,
    UpdateTimestamp      DATE
);
INSERT INTO school_bus_maintenance_log VALUES ('MNT001','BUS1001','2023-03-15',45200,'Oil Change','Standard oil change service',120.50,'AutoCare Inc','INV54321','TECH01',0,0,1.5,80,30.5,32.0,1,0,NULL,'All good','admin','2023-03-15');
INSERT INTO school_bus_maintenance_log VALUES ('MNT002','BUS1002','2023-04-10',37800,'Brake Inspection','Inspection of brake pads and rotors',250.00,'BrakePros','INV54322','TECH02',2,45.00,2.0,85,31.0,33.0,1,1','2023-04-20','Brake pads replaced','admin','2023-04-10');
INSERT INTO school_bus_maintenance_log VALUES ('MNT003','BUS1003','2023-05-05',29000,'Tire Rotation','Rotated all four tires',75.00,'TireWorld','INV54323','TECH03',0,0,1.0,75,29.5,30.5,1,0,NULL,'No issues','admin','2023-05-05');

-- District Technology Innovation Projects – details of technology‑focused initiatives across the district
CREATE TABLE district_technology_innovation_projects
(
    ProjectID                TEXT PRIMARY KEY,
    ProjectName              TEXT NOT NULL,
    StartDate                DATE,
    EndDate                  DATE,
    Status                   TEXT,
    LeadDepartment           TEXT,
    ProjectLeadID            TEXT,
    BudgetUSD                REAL,
    FundsAllocatedUSD        REAL,
    FundingSource            TEXT,
    TechnologyFocus          TEXT,
    ExpectedOutcomes         TEXT,
    KeyMilestonesCount       INTEGER,
    CurrentMilestoneNumber   INTEGER,
    RiskLevel                TEXT,
    StakeholderCount         INTEGER,
    PartnerOrganization      TEXT,
    PartnerContactEmail      TEXT,
    DataPrivacyCompliance    INTEGER,
    EvaluationMethod         TEXT,
    ReportFrequencyMonths    INTEGER,
    CreatedBy                TEXT,
    CreatedTimestamp         DATE,
    LastModifiedBy           TEXT,
    LastModifiedTimestamp    DATE
);
INSERT INTO district_technology_innovation_projects VALUES ('PRJ001','Smart Classroom Upgrade','2022-09-01','2024-06-30','In Progress','Instructional Tech','LEAD01',500000,300000,'State Grant','IoT Devices','Improved student engagement',5,3,'Medium',12,'EduTech Solutions','contact@edutech.com',1,'Surveys',12,'admin','2022-08-15','admin','2023-03-01');
INSERT INTO district_technology_innovation_projects VALUES ('PRJ002','Districtwide Wi‑Fi Expansion','2021-01-15','2023-12-31','Completed','Network Services','LEAD02',800000,800000,'Bond Funding','Wireless Infrastructure','100% coverage of all campuses',8,8,'Low',20,'NetWorks Inc','info@networks.com',1,'Performance Metrics',6,'admin','2020-12-01','admin','2023-12-31');
INSERT INTO district_technology_innovation_projects VALUES ('PRJ003','AI‑Based Scheduling System','2023-02-01','2025-02-01','Planning','Operations','LEAD03',250000,0,'District Budget','Artificial Intelligence','Optimized teacher schedules',3,0,'High',5,'AlgoSoft','sales@algosoft.com',0,'Pilot Study',3,'admin','2023-01-20','admin','2023-04-10');

-- Community Arts Festival Events – schedule and logistics for arts‑focused community festivals
CREATE TABLE community_arts_festival_events
(
    EventID                 TEXT PRIMARY KEY,
    FestivalName            TEXT NOT NULL,
    EventDate               DATE,
    StartTime               TEXT,
    EndTime                 TEXT,
    VenueName               TEXT,
    VenueAddress            TEXT,
    City                    TEXT,
    State                   TEXT,
    ZipCode                 TEXT,
    ExpectedAttendance      INTEGER,
    TicketPriceUSD          REAL,
    SponsorOrganization     TEXT,
    SponsorContactPhone     TEXT,
    PerformerCount          INTEGER,
    HeadlinerName           TEXT,
    Category                TEXT,
    AgeRestriction          TEXT,
    AccessibilityFeatures   TEXT,
    MarketingBudgetUSD      REAL,
    VolunteersNeeded       INTEGER,
    VolunteerCoordinatorID TEXT,
    SafetyPlanDocument      TEXT,
    InsuranceProvider       TEXT,
    InsurancePolicyNumber   TEXT,
    CreatedBy               TEXT,
    CreatedDate             DATE,
    UpdatedBy               TEXT,
    UpdatedDate             DATE
);
INSERT INTO community_arts_festival_events VALUES ('EVT001','Spring Arts Fest','2023-04-22','10:00','18:00','Riverfront Park','123 River Rd','Springfield','IL','62704',1500,5.00,'Spring Arts Council','5551234567',25,'The Artisans','Music & Visual','All Ages','Wheelchair Accessible',2000,30,'COORD01','SafetyPlan2023.pdf','SafeGuard Insurance','POL12345','admin','2023-01-10','admin','2023-03-15');
INSERT INTO community_arts_festival_events VALUES ('EVT002','Summer Sculpture Showcase','2023-07-10','09:00','17:00','Central Plaza','456 Main St','Springfield','IL','62701',800,0.00,'Sculpture Alliance','5559876543',12,'Stone Masters','Sculpture','All Ages','Assistive Listening',1200,15,'COORD02','SafetyPlan2023_Summer.pdf','SecureCover','POL54321','admin','2023-02-05','admin','2023-04-20');
INSERT INTO community_arts_festival_events VALUES ('EVT003','Fall Film & Arts Night','2023-10-05','18:30','22:00','Grand Theater','789 Broadway','Springfield','IL','62703',500,10.00,'Film Arts Fund','5552223333',8,'Indie Directors','Film','18+','Sign Language Interpreters',1800,20,'COORD03','SafetyPlan2023_Fall.pdf','CoverSure','POL67890','admin','2023-03-01','admin','2023-05-10');

-- Environmental Sensor Network – metadata for sensors deployed across the district for environmental monitoring
CREATE TABLE environmental_sensor_network
(
    SensorID                TEXT PRIMARY KEY,
    SensorType              TEXT NOT NULL,
    InstallationDate        DATE,
    Latitude                REAL,
    Longitude               REAL,
    ElevationMeters         REAL,
    FirmwareVersion         TEXT,
    CalibrationDate         DATE,
    CalibrationFactor       REAL,
    PowerSource             TEXT,
    BatteryLevelPercent     INTEGER,
    ConnectivityMethod      TEXT,
    DataTransmissionIntervalSeconds INTEGER,
    MaintenanceDueDate      DATE,
    Status                  TEXT,
    OwnerDepartment         TEXT,
    LastDataReceived        DATE,
    DataQualityScore        REAL,
    AlertsEnabled           INTEGER,
    AlertThresholdLow       REAL,
    AlertThresholdHigh      REAL,
    MaintenanceContactID    TEXT,
    WarrantyExpirationDate  DATE,
    Manufacturer            TEXT,
    ModelNumber             TEXT,
    SerialNumber            TEXT,
    CreatedBy               TEXT,
    CreatedTimestamp        DATE,
    UpdatedBy               TEXT,
    UpdatedTimestamp        DATE
);
INSERT INTO environmental_sensor_network VALUES ('SNS001','Air Quality','2022-05-10',39.7817,-89.6501,180,'v1.2.3','2023-01-15',0.98,'Solar',85,'LoRaWAN',300,'2024-05-10','Active','Facilities','2023-06-01',0.92,1,12.0,35.0,'TECH10','2025-05-10','EnviroTech','AQ-100','SN12345','admin','2022-05-01','admin','2023-06-01');
INSERT INTO environmental_sensor_network VALUES ('SNS002','Noise Level','2022-08-20',39.7820,-89.6495,182,'v1.0.0','2023-02-20',1.00,'Mains',100,'WiFi',60,'2024-08-20','Active','Facilities','2023-06-02',0.97,1,45.0,85.0,'TECH11','2025-08-20','SoundSense','NL-200','SN54321','admin','2022-08-15','admin','2023-06-02');
INSERT INTO environmental_sensor_network VALUES ('SNS003','Temperature','2023-01-05',39.7815,-89.6505,179,'v2.1.0','2023-03-10',1.02,'Battery',70,'Zigbee',120,'2024-01-05','Active','Facilities','2023-06-03',0.95,1,15.0,30.0,'TECH12','2025-01-05','ThermoCorp','TMP-300','SN67890','admin','2023-01-01','admin','2023-06-03');

-- School Parking Permit Transactions – issuance and payment details for student and staff parking permits
CREATE TABLE school_parking_permit_transactions
(
    TransactionID           TEXT PRIMARY KEY,
    PermitID                TEXT NOT NULL,
    PermitHolderID          TEXT,
    PermitType              TEXT,
    IssueDate               DATE,
    ExpirationDate          DATE,
    VehicleLicensePlate     TEXT,
    VehicleMakeModel        TEXT,
    FeeUSD                  REAL,
    PaymentMethod           TEXT,
    PaymentDate             DATE,
    PaidAmountUSD           REAL,
    BalanceDueUSD           REAL,
    IssuingStaffID          TEXT,
    IssuingLocation         TEXT,
    RenewalFlag             INTEGER,
    LateFeeApplied          REAL,
    DiscountCode            TEXT,
    DiscountAmountUSD       REAL,
    Notes                   TEXT,
    CreatedBy               TEXT,
    CreatedTimestamp        DATE,
    UpdatedBy               TEXT,
    UpdatedTimestamp        DATE
);
INSERT INTO school_parking_permit_transactions VALUES ('TRX001','PK001','STU1001','Student','2023-08-01','2024-07-31','ABC123','Toyota Camry',150.00,'Credit Card','2023-07-25',150.00,0,'STAFF01','Main Office',0,0,'SUMMER21',0,'First year permit','admin','2023-07-20','admin','2023-08-01');
INSERT INTO school_parking_permit_transactions VALUES ('TRX002','PK002','STAFF2001','Staff','2023-01-15','2024-01-14','XYZ789','Ford Focus',200.00,'Check','2023-01-10',200.00,0,'STAFF02','Main Office',0,0,NULL,0,'Renewal','admin','2023-01-05','admin','2023-01-15');
INSERT INTO school_parking_permit_transactions VALUES ('TRX003','PK003','STU1002','Student','2023-08-01','2024-07-31','LMN456','Honda Civic',150.00,'Cash','2023-08-05',150.00,0,'STAFF01','Main Office',1,15.00,'EARLYBIRD',5,'Late fee waived','admin','2023-07-30','admin','2023-08-05');

-- Alumni Career Pathways Analysis – aggregated data on alumni employment outcomes and sectors
CREATE TABLE alumni_career_pathways_analysis
(
    AnalysisID               TEXT PRIMARY KEY,
    CohortYear               TEXT,
    TotalAlumniCount         INTEGER,
    EmployedCount            INTEGER,
    UnemployedCount          INTEGER,
    AvgSalaryUSD             REAL,
    MedianSalaryUSD          REAL,
    TopIndustry1             TEXT,
    TopIndustry2             TEXT,
    TopIndustry3             TEXT,
    PercentageInSTEM         REAL,
    PercentageInEducation    REAL,
    PercentageInHealthcare   REAL,
    GraduateDegreePercent    REAL,
    CertificationsCount      INTEGER,
    AverageCommuteMiles      REAL,
    RemoteWorkPercentage     REAL,
    JobSatisfactionScoreAvg  REAL,
    SurveyResponseRate       REAL,
    DataSource               TEXT,
    LastUpdatedBy            TEXT,
    LastUpdatedTimestamp     DATE,
    CreatedBy                TEXT,
    CreatedTimestamp         DATE
);
INSERT INTO alumni_career_pathways_analysis VALUES ('ANL001','2018','1200','950','250',72000,65000,'Technology','Finance','Healthcare',45.0,12.0,18.0,30.0,150,12.5,40.0,3.8,68.0,'Alumni Survey','admin','2023-04-01','admin','2022-12-01');
INSERT INTO alumni_career_pathways_analysis VALUES ('ANL002','2019','1100','870','230',68000,62000,'Education','Manufacturing','Retail',30.0,25.0,15.0,22.0,120,10.0,35.0,3.5,65.0,'Alumni Survey','admin','2023-04-01','admin','2022-12-01');
INSERT INTO alumni_career_pathways_analysis VALUES ('ANL003','2020','1300','1050','250',75000,70000,'Healthcare','Technology','Construction',38.0,20.0,22.0,35.0,160,13.0,45.0,4.0,70.0,'Alumni Survey','admin','2023-04-01','admin','2022-12-01');

-- Health Nutrition Program Partners – information about organizations that partner on nutrition initiatives
CREATE TABLE health_nutrition_program_partners
(
    PartnerID                TEXT PRIMARY KEY,
    PartnerName              TEXT NOT NULL,
    ContactPerson            TEXT,
    ContactPhone             TEXT,
    ContactEmail             TEXT,
    PartnershipStartDate     DATE,
    PartnershipEndDate       DATE,
    ProgramFocus             TEXT,
    ServiceArea              TEXT,
    ContractValueUSD         REAL,
    FundingSource            TEXT,
    MealsProvidedPerMonth    INTEGER,
    ChildrenServedPerMonth   INTEGER,
    NutritionalStandards     TEXT,
    EvaluationMethodology    TEXT,
    ReportingFrequencyMonths INTEGER,
    DataSharingAgreement     INTEGER,
    InsuranceProvider        TEXT,
    LiabilityCoverageUSD     REAL,
    CertifiedOrganic         INTEGER,
    LocalProducePercentage   REAL,
    Notes                    TEXT,
    CreatedBy                TEXT,
    CreatedTimestamp         DATE,
    UpdatedBy                TEXT,
    UpdatedTimestamp         DATE
);
INSERT INTO health_nutrition_program_partners VALUES ('PRT001','FreshStart Foods','Maria Lopez','5551112222','mlopez@freshstart.org','2022-01-01',NULL,'Breakfast Programs','North District',250000,'State Grant',5000,2000,'USDA Guidelines','Surveys and Audits',6,1,'Acme Insurance',1000000,1,45.0,'Provides organic options','admin','2022-12-15','admin','2023-03-01');
INSERT INTO health_nutrition_program_partners VALUES ('PRT002','Community Harvest','James Patel','5553334444','jpatel@comharvest.org','2021-06-15','2024-06-14','Lunch Programs','East District',180000,'Local Donation',4000,1500,'State Nutrition Standards','Monthly Reports',3,1,'SafeGuard Insurance',800000,0,30.0,'Focus on locally sourced produce','admin','2022-12-15','admin','2023-03-01');
INSERT INTO health_nutrition_program_partners VALUES ('PRT003','Healthy Kids Initiative','Linda Gomez','5555556666','lgomez@hki.org','2023-03-01',NULL,'Snack Programs','South District',120000,'Federal Grant',2500,1000,'CDC Guidelines','Quarterly Audits',12,1,'HealthProtect Insurance',500000,0,20.0,'Includes nutrition education','admin','2023-02-20','admin','2023-04-10');

-- Facility Energy Audit Metrics – quantitative metrics gathered during facility energy audits
CREATE TABLE facility_energy_audit_metrics
(
    AuditID                 TEXT PRIMARY KEY,
    FacilityID              TEXT NOT NULL,
    AuditDate               DATE,
    AuditorName             TEXT,
    TotalEnergyUsekWh        REAL,
    ElectricityUsekWh        REAL,
    GasUseTherms             REAL,
    FuelOilUseGallons        REAL,
    WaterUseGallons          REAL,
    PeakDemandKW             REAL,
    LightingEfficiencyScore REAL,
    HVACEfficiencyScore      REAL,
    BuildingEnvelopeScore    REAL,
    RenewableEnergyPct       REAL,
    EnergyCostUSD            REAL,
    CostSavingsPotentialUSD  REAL,
    RecommendedActionsCount INTEGER,
    ImplementationStatus    TEXT,
    FollowUpAuditDate        DATE,
    Notes                    TEXT,
    CreatedBy                TEXT,
    CreatedTimestamp         DATE,
    UpdatedBy                TEXT,
    UpdatedTimestamp         DATE
);
INSERT INTO facility_energy_audit_metrics VALUES ('AUD001','FAC100','2023-02-10','Alex Rivera',850000,600000,12000,800,200000,350,85.5,78.0,80.0,12.0,90000,25000,15,'Pending','2023-08-10','Awaiting action plan','admin','2023-02-15','admin','2023-03-01');
INSERT INTO facility_energy_audit_metrics VALUES ('AUD002','FAC200','2023-04-22','Sofia Lee',420000,300000,8000,400,120000,210,90.0,82.5,88.0,15.5,50000,18000,10,'Completed','2023-10-22','All recommendations implemented','admin','2023-04-25','admin','2023-05-10');
INSERT INTO facility_energy_audit_metrics VALUES ('AUD003','FAC300','2023-06-05','Michael Chen',730000,500000,10000,600,150000,280,78.0,70.0,75.0,10.0,75000,22000,12,'In Progress','2023-12-05','Partial upgrades scheduled','admin','2023-06-10','admin','2023-07-01');

-- Student Extracurricular Award History – records of awards received by students in extracurricular activities
CREATE TABLE student_extracurricular_award_history
(
    AwardRecordID           TEXT PRIMARY KEY,
    StudentID               TEXT NOT NULL,
    ActivityID              TEXT NOT NULL,
    AwardName               TEXT,
    AwardLevel              TEXT,
    AwardDate               DATE,
    IssuingOrganization     TEXT,
    SupervisorName          TEXT,
    PointsAwarded           INTEGER,
    ScholarshipAmountUSD    REAL,
    RecognitionType         TEXT,
    CeremonyLocation        TEXT,
    MediaCoverage           INTEGER,
    PhotoURL                TEXT,
    VideoURL                TEXT,
    Comments                TEXT,
    CreatedBy               TEXT,
    CreatedTimestamp        DATE,
    UpdatedBy               TEXT,
    UpdatedTimestamp        DATE
);
INSERT INTO student_extracurricular_award_history VALUES ('AR001','STU1001','ACT200','State Champion','Gold','2023-05-12','State Sports Association','Coach Martinez',100,1500,'Trophy','Main Gym',1,'http://images.school.edu/ar001.jpg','http://videos.school.edu/ar001.mp4','Outstanding performance in track','admin','2023-05-15','admin','2023-05-16');
INSERT INTO student_extracurricular_award_history VALUES ('AR002','STU1002','ACT150','Best Original Play','Silver','2023-04-20','District Arts Council','Mrs. Greene',80,0,'Certificate','Auditorium',0,'http://images.school.edu/ar002.jpg',NULL,'Play selected for regional showcase','admin','2023-04-22','admin','2023-04-23');
INSERT INTO student_extracurricular_award_history VALUES ('AR003','STU1003','ACT300','Community Service Leader','Bronze','2023-06-01','Community Service Org','Mr. Patel',60,0,'Letter of Commendation','Community Center',1,'http://images.school.edu/ar003.jpg',NULL,'Led 200 volunteer hours','admin','2023-06-03','admin','2023-06-04');

-- District Emergency Resource Stockpile – inventory of emergency supplies and equipment held by the district
CREATE TABLE district_emergency_resource_stockpile
(
    ItemID                  TEXT PRIMARY KEY,
    ItemName                TEXT NOT NULL,
    Category                TEXT,
    QuantityOnHand          INTEGER,
    UnitOfMeasure           TEXT,
    ExpirationDate          DATE,
    StorageLocation         TEXT,
    LastInspectionDate      DATE,
    InspectionStatus        TEXT,
    SupplierName            TEXT,
    SupplierContactPhone    TEXT,
    ReorderLevel            INTEGER,
    ReorderQuantity         INTEGER,
    CostPerUnitUSD          REAL,
    TotalCostUSD            REAL,
    CriticalityLevel        TEXT,
    AssignedToDepartment    TEXT,
    LastUsedDate            DATE,
    UsageNotes              TEXT,
    CreatedBy               TEXT,
    CreatedTimestamp        DATE,
    UpdatedBy               TEXT,
    UpdatedTimestamp        DATE
);
INSERT INTO district_emergency_resource_stockpile VALUES ('EM001','N95 Respirator','Personal Protective Equipment',5000,'Units','2025-12-31','Warehouse A','2023-01-10','Pass','MediSupply Inc','5557778888',2000,2000,3.00,15000,'High','Health Services',NULL,'Stock for pandemic response','admin','2023-01-15','admin','2023-01-20');
INSERT INTO district_emergency_resource_stockpile VALUES ('EM002','LED Flashlight','Safety Equipment',1200,'Units','2028-06-30','Warehouse B','2023-02-12','Pass','BrightLight Co','5559990000',300,500,10.00,12000,'Medium','Facilities',NULL,'Used during power outages','admin','2023-02-15','admin','2023-02-20');
INSERT INTO district_emergency_resource_stockpile VALUES ('EM003','Portable Generator','Power Supply',45,'Units','2027-03-15','Warehouse C','2023-03-05','Pass','GenPower Ltd','5551112222',5,10,2500.00,112500,'Critical','Operations',NULL,'Backup for critical infrastructure','admin','2023-03-10','admin','2023-03-12');