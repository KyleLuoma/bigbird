-- District employee benefit plans
CREATE TABLE district_employee_benefits (
    BenefitID INTEGER PRIMARY KEY,
    DistrictCode TEXT,
    BenefitName TEXT,
    Eligibility TEXT,
    CoverageLevel TEXT,
    EmployeeContributionPct REAL,
    EmployerContributionPct REAL,
    AnnualMaxAmount REAL,
    EnrollmentStartDate DATE,
    EnrollmentEndDate DATE,
    PlanProvider TEXT,
    PlanContactName TEXT,
    PlanContactPhone TEXT,
    PlanContactEmail TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    BenefitCategory TEXT,
    Taxable BOOLEAN,
    DependentCoverage BOOLEAN,
    WaitingPeriodDays INTEGER,
    PlanDescription TEXT,
    PlanURL TEXT,
    Notes TEXT
);

INSERT INTO district_employee_benefits VALUES (1,'D001','Health Insurance','FullTime','Premium',5.0,95.0,50000,'2024-01-01','2024-12-31','HealthCo','John Doe','5551234567','john@healthco.com','2023-12-01','2023-12-15','Medical',0,1,30,'Comprehensive health coverage','http://healthco.com/plan','Initial rollout');
INSERT INTO district_employee_benefits VALUES (2,'D001','Dental Coverage','FullTime','Standard',2.5,97.5,8000,'2024-01-01','2024-12-31','SmileCare','Jane Smith','5559876543','jane@smilecare.com','2023-12-01','2023-12-15','Dental',0,1,15,'Basic dental plan','http://smilecare.com/dental','Added to benefits');
INSERT INTO district_employee_benefits VALUES (3,'D001','Retirement 401k','FullTime','DefinedContribution',3.0,0.0,0,'2024-01-01','2024-12-31','FutureFunds','Mike Brown','5552223333','mike@futurefunds.com','2023-12-01','2023-12-15','Retirement',0,1,0,'Employer match up to 3%','http://futurefunds.com/401k','New plan year');

-- District utility usage tracking
CREATE TABLE district_utility_usage (
    UsageID INTEGER PRIMARY KEY,
    DistrictCode TEXT,
    Year INTEGER,
    Month INTEGER,
    ElectricityKWh REAL,
    WaterGallons REAL,
    GasTherms REAL,
    ElectricityCost REAL,
    WaterCost REAL,
    GasCost REAL,
    TotalCost REAL,
    PeakDemandKW REAL,
    AvgDemandKW REAL,
    MeterReadDate DATE,
    BillingCycleStart DATE,
    BillingCycleEnd DATE,
    ProviderElectricity TEXT,
    ProviderWater TEXT,
    ProviderGas TEXT,
    RenewablePercentage REAL,
    CarbonEmissionsKg REAL,
    Notes TEXT
);

INSERT INTO district_utility_usage VALUES (101,'D001',2024,1,120000.5,3500000,15000,18000,2500,1200,21700,350,150,'2024-01-31','2024-01-01','2024-01-31','PowerCo','AquaSupply','GasWorks',12.5,50000,'Jan usage');
INSERT INTO district_utility_usage VALUES (102,'D001',2024,2,115000.0,3400000,14800,17250,2400,1150,20800,340,145,'2024-02-28','2024-02-01','2024-02-28','PowerCo','AquaSupply','GasWorks',13.0,48500,'Feb usage');
INSERT INTO district_utility_usage VALUES (103,'D001',2024,3,118500.3,3450000,14950,17625,2450,1175,21150,345,148,'2024-03-31','2024-03-01','2024-03-31','PowerCo','AquaSupply','GasWorks',12.8,49200,'Mar usage');

-- District infrastructure projects
CREATE TABLE district_infrastructure_projects (
    ProjectID INTEGER PRIMARY KEY,
    DistrictCode TEXT,
    ProjectName TEXT,
    ProjectType TEXT,
    Status TEXT,
    StartDate DATE,
    PlannedEndDate DATE,
    ActualEndDate DATE,
    BudgetAmount REAL,
    ExpenditureToDate REAL,
    FundingSource TEXT,
    LeadAgency TEXT,
    Contractor TEXT,
    ContractNumber TEXT,
    Description TEXT,
    Latitude REAL,
    Longitude REAL,
    EstimatedImpactScore REAL,
    RiskLevel TEXT,
    CommunityBenefitScore REAL,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedDate DATE
);

INSERT INTO district_infrastructure_projects VALUES (2001,'D001','North Campus STEM Wing','Construction','InProgress','2023-06-01','2025-06-01',NULL,25000000,9500000,'Bond Issue','FacilitiesDept','BuildIt LLC','C-2023-001','New STEM labs and classrooms',34.0522,-118.2437,85.5,'Medium',90.0,'Alice Johnson','2023-05-15','2024-01-10');
INSERT INTO district_infrastructure_projects VALUES (2002,'D001','Solar Panel Installation','RenewableEnergy','Planned','2024-03-15','2024-12-15',NULL,5000000,0,'Grant','EnergyOffice','SunPower Inc','S-2024-007','Rooftop solar on 5 schools',34.0600,-118.2500,78.0,'Low',80.0,'Bob Lee','2024-02-20','2024-02-20');
INSERT INTO district_infrastructure_projects VALUES (2003,'D001','District Headquarters Renovation','Renovation','Completed','2022-01-10','2022-12-31','2022-12-20',12000000,11850000,'CapitalBudget','AdminDept','RenovateNow','R-2022-014','Upgrade HVAC, accessibility, and security',34.0555,-118.2455,92.0,'Low',95.0,'Carol Smith','2021-12-01','2023-01-05');

-- District community partnerships
CREATE TABLE district_community_partnerships (
    PartnershipID INTEGER PRIMARY KEY,
    DistrictCode TEXT,
    PartnerOrganization TEXT,
    PartnerType TEXT,
    StartDate DATE,
    EndDate DATE,
    ContactName TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    AgreementType TEXT,
    FundingProvided REAL,
    ServicesProvided TEXT,
    PrimaryFocusArea TEXT,
    Status TEXT,
    EvaluationScore REAL,
    RenewalFlag BOOLEAN,
    CreatedDate DATE,
    UpdatedDate DATE,
    Notes TEXT,
    CollaborationLevel TEXT,
    JointEventsCount INTEGER,
    SharedResourcesCount INTEGER
);

INSERT INTO district_community_partnerships VALUES (301,'D001','GreenFuture NGO','NonProfit','2022-09-01','2025-08-31','Laura Green','5551112222','laura@greenfuture.org','MOU',250000,'AfterSchoolEnvironmentalPrograms','EnvironmentalEducation','Active',88.5,1,'2022-08-15','2023-07-01','Annual review pending','High',12,5);
INSERT INTO district_community_partnerships VALUES (302,'D001','TechBridge Corp','Corporate','2023-01-15','2024-12-31','Mark Tech','5553334444','mark@techbridge.com','Sponsorship',150000,'STEM Mentorship','CareerReadiness','Active',91.0,0,'2022-12-20','2023-11-20','Renewal under consideration','Medium',8,3);
INSERT INTO district_community_partnerships VALUES (303,'D001','CityHealth Dept','Government','2021-06-01','2023-05-31','Susan Health','5557778888','susan@cityhealth.gov','Contract',100000,'SchoolHealthScreenings','StudentWellbeing','Completed',85.0,0,'2021-05-10','2023-06-05','Project concluded successfully','Low',4,2);

-- District technology inventory
CREATE TABLE district_technology_inventory (
    AssetID INTEGER PRIMARY KEY,
    DistrictCode TEXT,
    AssetTag TEXT,
    AssetType TEXT,
    Manufacturer TEXT,
    Model TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyEndDate DATE,
    Cost REAL,
    DepreciationYears INTEGER,
    CurrentValue REAL,
    AssignedLocation TEXT,
    AssignedToDept TEXT,
    Status TEXT,
    LastMaintenanceDate DATE,
    MaintenanceFrequencyDays INTEGER,
    SoftwareVersion TEXT,
    LicenseKey TEXT,
    NetworkAddress TEXT,
    IPAddress TEXT,
    MACAddress TEXT,
    Notes TEXT
);

INSERT INTO district_technology_inventory VALUES (4001,'D001','LT-001','Laptop','Dell','Latitude 5420','SN12345','2022-08-15','2025-08-15',1500,3,900,'Central Office','IT','InUse','2024-01-10',180,'v2.1','LIC-001','00-14-22-01-23-45','192.168.1.45','00:14:22:01:23:45','Assigned to admin staff');
INSERT INTO district_technology_inventory VALUES (4002,'D001','PR-015','Projector','Epson','PowerLite X39','SN67890','2021-05-20','2024-05-20',800,3,400,'North High School','Facilities','InRepair','2023-11-20',365,'v1.0','LIC-015','00-16-3E-2A-5B-6C','192.168.2.60','00:16:3E:2A:5B:6C','Lens replaced March 2023');
INSERT INTO district_technology_inventory VALUES (4003,'D001','SW-045','Server','HPE','ProLiant DL380','SN54321','2020-02-10','2026-02-10',5000,5,3000,'Data Center','Network','InUse','2024-02-01',180,'v3.4','LIC-045','00-1A-2B-3C-4D-5E','10.0.0.5','00:1A:2B:3C:4D:5E','Running virtualized workloads');

-- District fiscal year budget
CREATE TABLE district_fiscal_year_budget (
    BudgetID INTEGER PRIMARY KEY,
    DistrictCode TEXT,
    FiscalYear INTEGER,
    BudgetCategory TEXT,
    SubCategory TEXT,
    ApprovedAmount REAL,
    AdjustedAmount REAL,
    ExpenditureYTD REAL,
    CarryOverAmount REAL,
    FundingSource TEXT,
    ResponsibleDept TEXT,
    BudgetOwner TEXT,
    ApprovalDate DATE,
    RevisionDate DATE,
    Comments TEXT,
    IsCapital BOOLEAN,
    IsOperating BOOLEAN,
    IsRestricted BOOLEAN,
    ProjectCode TEXT,
    GrantNumber TEXT,
    FundingStatus TEXT,
    Notes TEXT
);

INSERT INTO district_fiscal_year_budget VALUES (5001,'D001',2024,'Operations','Utilities',2000000,2100000,950000,50000,'GeneralFund','Facilities','Laura White','2023-12-01','2024-02-15','Increased due to rate hike',0,1,0,NULL,NULL,'Allocated','Reviewed quarterly');
INSERT INTO district_fiscal_year_budget VALUES (5002,'D001',2024,'Capital','SchoolConstruction',50000000,48000000,15000000,5000000,'BondIssue','Construction','Mike Green','2023-11-15','2024-01-20','Cost savings from bulk purchasing',1,0,0,'PRJ-2024-01',NULL,'Committed','Phase 1 of 3');
INSERT INTO district_fiscal_year_budget VALUES (5003,'D001',2024,'Grants','STEM Grant',3000000,3000000,1200000,0,'StateGrant','Education','Emily Black','2024-01-10','2024-03-05','Funds for new labs',0,1,1,'GRANT-2024-STEM','STEM-2024','Received','Reporting due July');

-- District equity metrics
CREATE TABLE district_equity_metrics (
    MetricID INTEGER PRIMARY KEY,
    DistrictCode TEXT,
    Year INTEGER,
    MetricName TEXT,
    Description TEXT,
    TargetValue REAL,
    CurrentValue REAL,
    Gap REAL,
    IndicatorType TEXT,
    DataSource TEXT,
    CalculationMethod TEXT,
    ReportingFrequency TEXT,
    LastUpdated DATE,
    ResponsibleOffice TEXT,
    ActionPlan TEXT,
    Status TEXT,
    Trend TEXT,
    EquityDomain TEXT,
    StudentGroup TEXT,
    StaffGroup TEXT,
    FundingImpact REAL,
    Notes TEXT
);

INSERT INTO district_equity_metrics VALUES (6001,'D001',2024,'Discipline Disparity','Compare suspension rates','5.0',6.8,-1.8,'Rate','StudentInfoSystem','(Suspensions/Enroll)*100','Annual','2024-02-01','EquityOffice','Implement restorative practices','Open','Worsening','Discipline','AllStudents','AllStaff','0','Monitoring continues');
INSERT INTO district_equity_metrics VALUES (6002,'D001',2024,'Advanced Course Access','Percent of students in AP/IB','30.0',27.5,2.5,'Percent','CourseEnrollmentDB','Count(AP)/Count(Enroll)*100','SemiAnnual','2024-03-15','CurriculumDept','Increase outreach to underrepresented groups','OnTrack','Improving','Curriculum','LowIncome','AllStaff','-50000','Grant applied for expansion');
INSERT INTO district_equity_metrics VALUES (6003,'D001',2024,'Teacher Diversity','Percent of teachers from underrepresented groups','25.0',22.0,3.0,'Percent','HRSystem','Count(UR_Teachers)/Count(AllTeachers)*100','Annual','2024-01-20','HRDept','Targeted recruitment','Open','Stable','Workforce','AllTeachers','AllStaff','-20000','Hiring plan in place');

-- District emergency resource stockpile
CREATE TABLE district_emergency_resource_stockpile (
    ResourceID INTEGER PRIMARY KEY,
    DistrictCode TEXT,
    ResourceType TEXT,
    Description TEXT,
    QuantityOnHand INTEGER,
    UnitOfMeasure TEXT,
    ExpirationDate DATE,
    Supplier TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    StorageLocation TEXT,
    LastInspectionDate DATE,
    ConditionRating INTEGER,
    ReorderLevel INTEGER,
    ReorderQuantity INTEGER,
    BudgetedCost REAL,
    ActualCost REAL,
    AcquiredDate DATE,
    ResponsiblePerson TEXT,
    Status TEXT,
    Notes TEXT,
    LastUpdated DATE,
    InspectionFrequencyDays INTEGER
);

INSERT INTO district_emergency_resource_stockpile VALUES (7001,'D001','Water','Bottled water (24oz)','5000','Units','2025-12-31','SupplyCo','5554445555','contact@supplyco.com','Warehouse A','2024-01-10',9,1000,2000,15000,14700,'2023-12-15','John Patel','Available','Rotated quarterly','2024-01-12',180);
INSERT INTO district_emergency_resource_stockpile VALUES (7002,'D001','Medical','First Aid Kits','250','Units','2026-06-30','MedSupply','5556667777','info@medsupply.com','Warehouse B','2023-12-20',8,50,100,12000,11950,'2023-11-01','Sara Lee','Available','Annual check','2024-01-15',365);
INSERT INTO district_emergency_resource_stockpile VALUES (7003,'D001','Food','Energy Bars','8000','Units','2025-03-31','FoodPro','5558889999','sales@foodpro.com','Warehouse C','2024-01-05',10,2000,5000,18000,17500,'2023-12-10','Mike Torres','Available','Monthly inspection','2024-01-10',30);

-- District public safety collaboration
CREATE TABLE district_public_safety_collaboration (
    CollaborationID INTEGER PRIMARY KEY,
    DistrictCode TEXT,
    AgencyName TEXT,
    AgencyType TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    MOUDate DATE,
    RenewalDate DATE,
    ScopeOfCollaboration TEXT,
    JointTrainingHours INTEGER,
    SharedResourcesCount INTEGER,
    IncidentResponseCount INTEGER,
    MutualAidAgreements INTEGER,
    FundingProvided REAL,
    Status TEXT,
    EvaluationScore REAL,
    Notes TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    PrimaryFocusArea TEXT,
    CoordinationLevel TEXT
);

INSERT INTO district_public_safety_collaboration VALUES (8001,'D001','County Sheriff's Office','LawEnforcement','Tom Sheriff','5551110000','tom@sheriffcounty.gov','2022-07-01','2025-06-30','Emergency response and training','120','5','30','2','250000','Active',92.0,'Positive outcomes','2022-06-15','2024-01-20','PublicSafety','High');
INSERT INTO district_public_safety_collaboration VALUES (8002,'D001','Regional Fire Dept','FireProtection','Linda Flame','5552223333','linda@firedept.org','2023-03-15','2026-03-14','Fire drills and equipment sharing','80','3','15','1','150000','Active',88.5,'Joint exercises quarterly','2023-03-01','2024-01-22','FireSafety','Medium');
INSERT INTO district_public_safety_collaboration VALUES (8003,'D001','State Emergency Management Agency','EmergencyMgmt','Gary Alert','5553334444','gary@sem.gov','2021-01-10','2024-01-09','Disaster preparedness planning','200','8','45','4','500000','Completed',95.0,'Plan fully implemented','2020-12-01','2024-01-25','DisasterResponse','High');

-- District heritage site visits
CREATE TABLE district_heritage_site_visits (
    VisitID INTEGER PRIMARY KEY,
    DistrictCode TEXT,
    SiteName TEXT,
    SiteType TEXT,
    VisitDate DATE,
    VisitorCount INTEGER,
    LeadOrganizer TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Purpose TEXT,
    ActivitiesConducted TEXT,
    EducationalMaterialsProvided TEXT,
    FeedbackScore REAL,
    FollowUpActions TEXT,
    FundingSource TEXT,
    BudgetAllocated REAL,
    Notes TEXT,
    Latitude REAL,
    Longitude REAL,
    AccessibilityRating INTEGER,
    HistoricalSignificanceScore REAL,
    CreatedDate DATE,
    UpdatedDate DATE
);

INSERT INTO district_heritage_site_visits VALUES (9001,'D001','Old Mill Museum','Museum','2024-03-12','120','Anna Miller','5557771111','anna@oldmill.org','Cultural enrichment','Guided tour, artifact workshop','Brochures, activity sheets',4.5,'Schedule quarterly visits','Grant','5000','Positive student engagement',34.0415,-118.2550,8,92.0,'2024-02-20','2024-03-15');
INSERT INTO district_heritage_site_visits VALUES (9002,'D001','Historic Riverside Bridge','Infrastructure','2024-04-05','80','Mark Rivera','5558882222','mark@riversidebridge.gov','STEM learning','Bridge inspection demo, engineering talk','Lesson plans, safety videos',4.2,'Develop bridge design module','DistrictFund','3000','Students showed high interest',34.0500,-118.2600,7,85.0,'2024-03-01','2024-04-10');
INSERT INTO district_heritage_site_visits VALUES (9003,'D001','Founders Hall','HistoricBuilding','2024-05-20','150','Lydia Chen','5559993333','lydia@foundershall.org','Local history','Walking tour, primary source analysis','Handouts, QR code links',4.8,'Create student podcast series','CommunityDonations','7000','Excellent attendance',34.0550,-118.2505,9,95.0,'2024-04-15','2024-05-25');