-- Regional education funding allocations
CREATE TABLE regional_education_funding
(
    FundingID                     TEXT PRIMARY KEY,
    FiscalYear                    TEXT,
    State                         TEXT,
    DistrictCode                  INTEGER,
    TotalFunding                  REAL,
    FederalGrant                  REAL,
    StateGrant                    REAL,
    PrivateGrant                  REAL,
    AllocatedToInfrastructure     REAL,
    AllocatedToInstruction        REAL,
    AllocatedToSupportServices    REAL,
    UnspentBalance                REAL,
    FundingSource1                TEXT,
    FundingSource2                TEXT,
    FundingSource3                TEXT,
    ApplicationDate               DATE,
    ApprovalDate                  DATE,
    ExpirationDate                DATE,
    FundingStatus                 TEXT,
    Notes                         TEXT,
    LastUpdated                   DATE
);

INSERT INTO regional_education_funding VALUES
('FND001','2023-2024','California',101,5000000,1500000,2000000,500000,1200000,1800000,500000,250000,'FederalAid','StateBond','PrivateDonor','2023-01-15','2023-03-01','2025-12-31','Approved','Initial allocation','2023-04-01');

INSERT INTO regional_education_funding VALUES
('FND002','2022-2023','Nevada',207,3000000,800000,1200000,200000,600000,1000000,400000,100000,'FederalAid','StateGrant','CorporateSponsor','2022-02-10','2022-04-20','2024-11-30','Spent','Mid‑year review','2022-05-15');

INSERT INTO regional_education_funding VALUES
('FND003','2021-2022','Oregon',315,2500000,600000,900000,200000,500000,800000,300000,200000,'FederalAid','StateBond','FoundationGrant','2021-03-05','2021-05-15','2023-10-31','Closed','Final report','2021-06-10');

-- School transportation asset inventory
CREATE TABLE school_transport_asset_inventory
(
    AssetID               TEXT PRIMARY KEY,
    CDSCode               TEXT,
    AssetType             TEXT,
    Manufacturer          TEXT,
    ModelNumber           TEXT,
    SerialNumber          TEXT,
    PurchaseDate          DATE,
    PurchaseCost          REAL,
    WarrantyEndDate       DATE,
    ServiceStartDate      DATE,
    LastServiceDate       DATE,
    ServiceIntervalMonths INTEGER,
    CurrentMileage        INTEGER,
    AssetCondition        TEXT,
    AssignedDriverID      TEXT,
    FuelType              TEXT,
    Capacity              INTEGER,
    DepreciationRate      REAL,
    CurrentValue          REAL,
    InsurancePolicyNumber TEXT,
    InsuranceExpiration   DATE,
    AssetLocation         TEXT,
    Notes                 TEXT
);

INSERT INTO school_transport_asset_inventory VALUES
('AST001','CDS001','School Bus','BlueBird','CSB40','SN12345','2020-08-15',85000,2025-08-15,'2020-09-01','2023-02-10',12,25000,'Good','DRV100','Diesel',68,0.08,62000,'POL123456','2024-12-31','Main Campus','New low‑emission model');

INSERT INTO school_transport_asset_inventory VALUES
('AST002','CDS045','Van','Ford','E‑450','SN67890','2021-05-20',42000,2026-05-20,'2021-06-01','2023-03-12',6,18000,'Fair','DRV115','Gasoline',15,0.10,25000,'POL654321','2025-05-20','North Site','Repaired rear axle 2023');

INSERT INTO school_transport_asset_inventory VALUES
('AST003','CDS078','Mini Bus','Thomas','Mini200','SN24680','2019-11-05',59000,2024-11-05,'2019-12-01','2022-11-30',12,30000,'Excellent','DRV132','Electric',30,0.07,34000,'POL789012','2024-11-05','East Campus','Battery warranty active');

-- District parking facility usage statistics
CREATE TABLE district_parking_facility_usage
(
    FacilityID                TEXT PRIMARY KEY,
    FacilityName              TEXT,
    Location                  TEXT,
    TotalSpaces               INTEGER,
    ReservedSpaces            INTEGER,
    HandicappedSpaces         INTEGER,
    DailyAverageOccupancy     REAL,
    PeakOccupancy             REAL,
    OccupancyDate             DATE,
    MaintenanceStatus         TEXT,
    LastInspectionDate        DATE,
    NextInspectionDate        DATE,
    LightingType              TEXT,
    SecurityCameras           INTEGER,
    SurveillanceCoverage      TEXT,
    PaymentMethod             TEXT,
    HourlyRate                REAL,
    MonthlyPassPrice          REAL,
    AnnualPassPrice           REAL,
    ManagerContact            TEXT,
    Notes                     TEXT
);

INSERT INTO district_parking_facility_usage VALUES
('PF001','Central Parking','123 Main St',200,20,10,0.68,0.92,'2023-04-15','Good','2023-01-10','2024-01-10','LED',12,'Full','Cash/Card',2.5,150,1500,'John Doe','Recently resurfaced');

INSERT INTO district_parking_facility_usage VALUES
('PF002','North Lot','456 North Ave',120,10,5,0.55,0.80,'2023-04-12','Minor repairs','2022-12-05','2023-12-05','Fluorescent',8,'Partial','Card',3.0,120,1200,'Jane Smith','Reserved spaces near entrance');

INSERT INTO district_parking_facility_usage VALUES
('PF003','East Bicycle Parking','789 East Rd',80,0,0,0.30,0.45,'2023-04-10','Excellent','2023-02-20','2024-02-20','Solar',0,'None','Free',0,0,0,'Mike Lee','Added new bike racks 2022');

-- Community mental health resources directory
CREATE TABLE community_mental_health_resources
(
    ResourceID               TEXT PRIMARY KEY,
    CommunityName            TEXT,
    ResourceType             TEXT,
    ProviderName             TEXT,
    Address                  TEXT,
    City                     TEXT,
    State                    TEXT,
    Zip                      TEXT,
    Phone                    TEXT,
    Email                    TEXT,
    ServiceHours             TEXT,
    EligibilityCriteria      TEXT,
    Capacity                 INTEGER,
    WaitlistLength           INTEGER,
    ReferralRequired         TEXT,
    FundingSource            TEXT,
    OperatingCost            REAL,
    OpenDate                 DATE,
    CloseDate                DATE,
    CoordinatorName          TEXT,
    CoordinatorContact       TEXT,
    Notes                    TEXT
);

INSERT INTO community_mental_health_resources VALUES
('MH001','Riverdale','Counseling','Hope Center','101 River St','Riverdale','CA','90210','5551234567','info@hopecenter.org','Mon-Fri 9-5','All residents',30,5,'No','County Grant',25000,'2020-01-15',NULL,'Laura Brown','5559876543','Provides group therapy');

INSERT INTO community_mental_health_resources VALUES
('MH002','Lakeside','Crisis Hotline','Lakeside Support','200 Lake Rd','Lakeside','NV','89420','5557654321','crisis@lakeside.org','24/7','Anyone in crisis',NULL,NULL,'Yes','State Funding',50000,'2018-06-01',NULL,'Tom Wilson','5552223333','Call volume avg 120 per day');

INSERT INTO community_mental_health_resources VALUES
('MH003','Hilltown','Outpatient Clinic','MindCare Clinic','350 Hill St','Hilltown','OR','97035','5553334444','contact@mindcare.org','Tue-Thu 8-4','Residents with referral',45,12,'Yes','Private Pay',40000,'2021-09-01',NULL,'Emily Davis','5551112222','Specializes in adolescent care');

-- State teacher certification statistics
CREATE TABLE state_teacher_certification_stats
(
    Year                     TEXT,
    State                    TEXT,
    CertificationType       TEXT,
    TotalCertified           INTEGER,
    NewCertifications        INTEGER,
    Renewals                 INTEGER,
    LapsedCertificates       INTEGER,
    AverageYearsExperience   REAL,
    MedianSalary             REAL,
    PercentCertifiedInMath   REAL,
    PercentCertifiedInScience REAL,
    PercentCertifiedInEnglish REAL,
    PercentCertifiedInSpecialEd REAL,
    CertificationsByRegion   TEXT,
    UrbanCertificationRate   REAL,
    RuralCertificationRate   REAL,
    SuburbanCertificationRate REAL,
    CertificationProgramCost REAL,
    FundingAllocated         REAL,
    DataSource               TEXT,
    LastUpdated              DATE
);

INSERT INTO state_teacher_certification_stats VALUES
('2023','California','General','125000','15000','110000','5000',12.5,72000,0.22,0.18,0.30,0.10,'North:30000,South:45000,East:25000,West:25000',0.35,0.15,0.50,1200,8500000,'Dept of Ed','2023-04-01');

INSERT INTO state_teacher_certification_stats VALUES
('2023','Nevada','SpecialEd','4200','500','3500','200',9.8,56000,0.12,0.10,0.45,0.33,'Clark:2100,Washoe:1500,Carson:600',0.28,0.22,0.50,950,400000,'Dept of Ed','2023-04-02');

INSERT INTO state_teacher_certification_stats VALUES
('2023','Oregon','STEM','8500','900','7500','100',11.2,68000,0.40,0.35,0.15,0.10,'Portland:3000,Salem:2000,Eugene:2000,Others:1500',0.40,0.12,0.48,1100,750000,'Dept of Ed','2023-04-03');

-- School technology upgrade plan
CREATE TABLE school_technology_upgrade_plan
(
    PlanID                   TEXT PRIMARY KEY,
    CDSCode                  TEXT,
    PlanYear                 TEXT,
    Category                 TEXT,
    Description              TEXT,
    CurrentVersion           TEXT,
    TargetVersion            TEXT,
    Vendor                   TEXT,
    ContractStartDate        DATE,
    ContractEndDate          DATE,
    BudgetAllocated          REAL,
    BudgetSpent              REAL,
    FundingSource            TEXT,
    ImplementationStartDate  DATE,
    ImplementationEndDate    DATE,
    Status                   TEXT,
    RiskLevel                TEXT,
    Dependencies             TEXT,
    KeyMilestones            TEXT,
    ExpectedBenefits         TEXT,
    Owner                    TEXT,
    LastModified             DATE
);

INSERT INTO school_technology_upgrade_plan VALUES
('UP001','CDS001','2023-2024','Wi‑Fi','Upgrade to Wi‑Fi 6 across campus','Wi‑Fi 5','Wi‑Fi 6','Cisco','2023-01-10','2024-06-30',150000,45000,'Federal Grant','2023-02-01','2024-04-30','InProgress','Medium','Network cabling upgrade','Phase1 complete, Phase2 pending','Higher bandwidth, support BYOD','IT Director','2023-04-15');

INSERT INTO school_technology_upgrade_plan VALUES
('UP002','CDS045','2023-2024','Interactive Boards','Replace legacy boards with interactive displays','ModelA','ModelB','SMART','2023-03-05','2024-12-31',80000,20000,'State Funding','2023-04-01','2024-10-15','Planned','Low','Electrical work','Installation Q3','Enhanced engagement','Facilities Manager','2023-04-16');

INSERT INTO school_technology_upgrade_plan VALUES
('UP003','CDS078','2023-2024','Student Devices','Provide 1:1 tablets for grades 6‑8','iPad 7th Gen','iPad 10th Gen','Apple','2023-06-01','2025-05-31',200000,60000,'District Bond','2023-07-01','2024-12-31','InProgress','High','Network capacity','Device rollout by semester','Improved digital literacy','Technology Coordinator','2023-04-17');

-- District building permits registry
CREATE TABLE district_building_permits
(
    PermitID                 TEXT PRIMARY KEY,
    DistrictCode             INTEGER,
    PermitNumber             TEXT,
    PermitType               TEXT,
    IssueDate                DATE,
    ExpirationDate           DATE,
    ProjectAddress           TEXT,
    ProjectDescription       TEXT,
    ContractorName           TEXT,
    ContractorLicense        TEXT,
    EstimatedCost            REAL,
    ApprovedBy               TEXT,
    InspectionDate           DATE,
    PermitStatus             TEXT,
    ZoningCompliance         TEXT,
    EnvironmentalReview      TEXT,
    StakeholderComments      TEXT,
    FeePaid                  REAL,
    FeeDue                   REAL,
    BondAmount               REAL,
    PaymentSchedule          TEXT,
    Notes                    TEXT
);

INSERT INTO district_building_permits VALUES
('PR001',101,'2023-001','New Construction','2023-02-10','2025-02-09','500 Oak St','Elementary school addition','BuildRight Co','LIC12345',3500000,'Superintendent','2023-03-15','Approved','Compliant','Completed','Community supportive',50000,0,500000,'Quarterly','Groundbreaking June 2023');

INSERT INTO district_building_permits VALUES
('PR002',207,'2023-045','Renovation','2023-04-05','2024-04-04','250 Pine Ave','Gymnasium remodel','Renova LLC','LIC54321',1200000,'Assistant Superintendent','2023-05-01','Pending','Conditional','In review','Need additional parking',25000,2000,150000,'Monthly','Awaiting final design');

INSERT INTO district_building_permits VALUES
('PR003',315,'2023-078','Demolition','2023-01-20','2023-12-31','78 Maple Rd','Old cafeteria demolition','DemoWorks Inc','LIC67890',800000,'Facilities Director','2023-02-10','Approved','Compliant','No objections','Site cleared for new building',15000,0,100000,'One‑time','Demolition completed July 2023');

-- Public safety collaboration log
CREATE TABLE public_safety_collaboration_log
(
    LogID                   TEXT PRIMARY KEY,
    Date                    DATE,
    Agency1                 TEXT,
    Agency2                 TEXT,
    Purpose                 TEXT,
    Location                TEXT,
    Outcome                 TEXT,
    FollowUpRequired        TEXT,
    FollowUpDate            DATE,
    ContactPerson1          TEXT,
    ContactPerson2          TEXT,
    CommunicationMethod     TEXT,
    DurationMinutes         INTEGER,
    ResourcesShared         TEXT,
    IncidentCount           INTEGER,
    Notes                   TEXT,
    RecordedBy              TEXT,
    RecordTimestamp         DATE,
    Status                  TEXT,
    PriorityLevel           TEXT,
    ActionsTaken            TEXT
);

INSERT INTO public_safety_collaboration_log VALUES
('LOG001','2023-03-12','District Police','County Sheriff','Joint training','District Office','Successful','Yes','2023-04-10','Officer Allen','Deputy Reed','InPerson',180,'Vehicles,FirstAidKits',0,'Focus on active shooter response','Chief Miller','2023-03-12','Closed','High','Training completed, certificates issued');

INSERT INTO public_safety_collaboration_log VALUES
('LOG002','2023-04-05','Fire Dept','EMS','Emergency drill','North High School','All protocols executed','No',NULL,'Chief Burns','Paramedic Lee','VideoConference',90,'Fire hoses, Defibrillators',1,'Minor injury simulation','Lt. Gomez','2023-04-05','Open','Medium','Review after-action report by 2023-04-20');

INSERT INTO public_safety_collaboration_log VALUES
('LOG003','2023-05-20','District Police','State Highway Patrol','Traffic safety campaign','Community Center','Increased awareness','Yes','2023-06-15','Sergeant Patel','Officer Nguyen','InPerson',120,'Safety banners, pamphlets',0,'Positive community feedback','Captain Hernandez','2023-05-20','Open','Low','Plan follow‑up event in July');

-- Environmental noise monitoring stations
CREATE TABLE environmental_noise_monitoring
(
    SensorID                TEXT PRIMARY KEY,
    Location                TEXT,
    InstallationDate        DATE,
    SensorModel             TEXT,
    FrequencyRange          TEXT,
    CalibrationDate         DATE,
    CalibrationSource       TEXT,
    NoiseLevelDBA           REAL,
    MaxNoiseLevelDBA        REAL,
    MinNoiseLevelDBA        REAL,
    AverageDaytimeNoise     REAL,
    AverageNighttimeNoise   REAL,
    AlertsTriggered         INTEGER,
    MaintenanceDate         DATE,
    FirmwareVersion         TEXT,
    PowerSource             TEXT,
    BatteryLifeHours        INTEGER,
    DataTransmissionIntervalMinutes INTEGER,
    DataEndpoint            TEXT,
    OperatorContact         TEXT,
    Notes                   TEXT
);

INSERT INTO environmental_noise_monitoring VALUES
('NS001','Central Campus','2022-09-15','NoisePro X100','20‑20000Hz','2023-03-01','Factory','55.2',85.0,30.5,58.0,45.0,2,'2023-04-10','v1.3','Solar','N/A',15,'https://data.district.edu/noise/ns001','tech1@district.edu','Installed near cafeteria');

INSERT INTO environmental_noise_monitoring VALUES
('NS002','North Parking Lot','2021-05-20','SoundGuard Z200','30‑18000Hz','2022-11-20','Lab','62.5',92.0,38.0,65.0,50.0,5,'2023-03-22','v1.2','Mains','N/A',30,'https://data.district.edu/noise/ns002','tech2@district.edu','Monitored during peak hours');

INSERT INTO environmental_noise_monitoring VALUES
('NS003','East Playfield','2023-01-10','AcoustiSense A1','10‑15000Hz','2023-02-25','Vendor','48.0',70.0,25.0,50.0,35.0,0,'2023-04-05','v1.0','Battery','200',60,'https://data.district.edu/noise/ns003','tech3@district.edu','Battery replacement due 2024');

-- School arts performance schedule
CREATE TABLE school_arts_performance_schedule
(
    PerformanceID           TEXT PRIMARY KEY,
    CDSCode                 TEXT,
    Title                   TEXT,
    ArtForm                 TEXT,
    PerformerGroup          TEXT,
    Venue                  TEXT,
    City                    TEXT,
    State                   TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    StartTime               TEXT,
    EndTime                 TEXT,
    TicketPrice             REAL,
    Capacity                INTEGER,
    TicketsSold             INTEGER,
    Sponsor                 TEXT,
    FundingSource           TEXT,
    CoordinatorName         TEXT,
    CoordinatorContact      TEXT,
    AudienceFeedbackScore   REAL,
    TechnicalRequirements   TEXT,
    Notes                   TEXT
);

INSERT INTO school_arts_performance_schedule VALUES
('PFM001','CDS001','Winter Concert','Music','High School Band','Auditorium','Riverdale','CA','2023-12-10','2023-12-10','19:00','21:00',15.00,500,450','Community Bank','Ticket Sales','Emily Clark','5551237890',4.5,'Sound system, lighting','Annual holiday event');

INSERT INTO school_arts_performance_schedule VALUES
('PFM002','CDS045','Spring Drama','Theatre','Drama Club','Gymnasium','Lakeside','NV','2024-04-22','2024-04-22','18:30','20:30',10.00,300,260','Arts Council','Donations','Michael Reed','5559876543',4.2','Stage backdrop, microphones','Play titled "The Turning Tide"');

INSERT INTO school_arts_performance_schedule VALUES
('PFM003','CDS078','Summer Art Expo','Visual Arts','Student Artists','Outdoor Plaza','Hilltown','OR','2024-07-15','2024-07-20','10:00','17:00',0.00,200,0','City Council','City Grant','Samantha Lee','5555551234',4.8','Lighting, tents','Open to public, free entry');