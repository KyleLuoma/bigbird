-- District grant portfolio tracking
CREATE TABLE district_grant_portfolio (
    GrantID TEXT PRIMARY KEY,
    GrantName TEXT,
    FundingAgency TEXT,
    AwardYear INTEGER,
    AmountAwarded REAL,
    ProgramArea TEXT,
    DurationYears INTEGER,
    Status TEXT,
    StartDate DATE,
    EndDate DATE,
    PrincipalInvestigator TEXT,
    ContactEmail TEXT,
    ReportingFrequency TEXT,
    MatchingFundsRequired INTEGER,
    MatchingFundsProvided REAL,
    CongressionalDistrict TEXT,
    County TEXT,
    City TEXT,
    ProjectDescription TEXT,
    IsRenewable INTEGER
);

INSERT INTO district_grant_portfolio VALUES ('G001','Infrastructure Modernization','USDOE',2022,1250000,'STEM','5','Active','2022-09-01','2027-08-31','DrSmith','smith@example.com','Annual',1,250000,'12','Orange','Orange County','Orlando','Upgrade labs and equipment','0');
INSERT INTO district_grant_portfolio VALUES ('G002','Community Health Initiative','CDC',2021,750000,'Public Health','3','Completed','2021-01-15','2024-01-14','DrLee','lee@example.com','SemiAnnual',0,0,'08','Lake','Lake County','Laketown','Health screenings and education','0');
INSERT INTO district_grant_portfolio VALUES ('G003','Renewable Energy Pilot','EPA',2023,500000,'Energy','4','Active','2023-06-01','2027-05-31','DrPatel','patel@example.com','Quarterly',1,100000,'05','Seminole','Seminole County','Sanford','Solar panel installation on schools','1');

-- State policy amendments registry
CREATE TABLE state_policy_amendments (
    AmendmentID TEXT PRIMARY KEY,
    PolicyName TEXT,
    PolicyNumber TEXT,
    EffectiveDate DATE,
    AmendmentDate DATE,
    AmendmentNumber INTEGER,
    Summary TEXT,
    FullTextReference TEXT,
    AgencyResponsible TEXT,
    PublicCommentPeriodDays INTEGER,
    Status TEXT,
    RevisionReason TEXT,
    AffectedSections TEXT,
    LegalCitation TEXT,
    FundingImpact REAL,
    ImplementationGuideURL TEXT,
    CreatedBy TEXT,
    ReviewedBy TEXT,
    Notes TEXT,
    IsActive INTEGER
);

INSERT INTO state_policy_amendments VALUES ('A100','Education Funding Act','EFA-2020','2020-07-01','2022-03-15',2,'Increase per pupil allocation','EFA2020_Amend2','State Dept of Education',30,'Approved','Inflation adjustment','Section3,Section5','Statute 12-34',2000000,'http://state.gov/guide','LegDept','PolicyOffice','No objections','1');
INSERT INTO state_policy_amendments VALUES ('A101','School Safety Regulations','SSR-2018','2018-01-01','2021-11-10',1,'Add active shooter protocols','SSR2018_Amend1','State Safety Agency',45,'Pending','Emerging threats','Section2','Statute 45-67',500000,'http://state.gov/ssrguide','SafetyUnit','LegalTeam','Awaiting public comment','0');
INSERT INTO state_policy_amendments VALUES ('A102','Teacher Certification Standards','TCS-2019','2019-08-01','2023-02-20',3,'Extend continuing education hours','TCS2019_Amend3','State Board of Teachers',60,'Approved','Professional development','Section4','Statute 89-10',0,'http://state.gov/tcsguide','HRDept','ComplianceOffice','All districts notified','1');

-- Environmental project budget details
CREATE TABLE environmental_project_budget (
    ProjectID TEXT PRIMARY KEY,
    ProjectName TEXT,
    FiscalYear INTEGER,
    TotalBudget REAL,
    FederalShare REAL,
    StateShare REAL,
    LocalShare REAL,
    Category TEXT,
    Subcategory TEXT,
    LeadAgency TEXT,
    ProjectManager TEXT,
    StartDate DATE,
    EndDate DATE,
    ExpectedCO2Reduction REAL,
    ExpectedWaterSavings REAL,
    Status TEXT,
    PercentComplete REAL,
    FundingSource TEXT,
    ContractNumber TEXT,
    Notes TEXT,
    IsFlagship INTEGER
);

INSERT INTO environmental_project_budget VALUES ('P001','River Restoration','2022',2000000,800000,600000,600000,'Water','River','Dept of Natural Resources','MsGreen','2022-04-01','2025-03-31',1500,25000,'InProgress',45,'Federal Grant','CN-2022-01','Phase 1 completed','1');
INSERT INTO environmental_project_budget VALUES ('P002','Urban Tree Canopy','2023',1200000,400000,500000,300000,'Air','Tree Planting','City Parks Dept','MrBrown','2023-01-15','2026-12-31',800,0,'Planned',0,'State Funding','CN-2023-07','Awaiting contracts','0');
INSERT INTO environmental_project_budget VALUES ('P003','Solar Panel Deployment','2021',3500000,1500000,1200000,800000,'Energy','Solar','Energy Commission','DrWhite','2021-09-01','2024-08-31',5000,0,'Active',70,'Public-Private','CN-2021-12','Installation at 5 schools','1');

-- Technology research collaborations archive
CREATE TABLE technology_research_collabs (
    CollaborationID TEXT PRIMARY KEY,
    Title TEXT,
    LeadInstitution TEXT,
    PartnerInstitution TEXT,
    StartDate DATE,
    EndDate DATE,
    FundingAmount REAL,
    FundingAgency TEXT,
    ProjectArea TEXT,
    TechnologyDomain TEXT,
    Status TEXT,
    PrimaryContact TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Deliverable1 TEXT,
    Deliverable2 TEXT,
    Deliverable3 TEXT,
    IntellectualPropertyClause TEXT,
    DataSharingPlan TEXT,
    PublicationTarget INTEGER,
    IsInternational INTEGER
);

INSERT INTO technology_research_collabs VALUES ('C001','AI for Adaptive Learning','State University','TechCorp','2022-02-01','2025-01-31',900000,'National Science Foundation','Education','Artificial Intelligence','Active','DrAllen','5551234567','allen@stateu.edu','Prototype','Pilot Study','Final Report','Joint Ownership','Open Data','3','1');
INSERT INTO technology_research_collabs VALUES ('C002','IoT Sensor Networks','Community College','SmartSensors Inc','2021-06-15','2024-06-14',550000,'Department of Energy','Environmental Monitoring','Internet of Things','Completed','MsKim','5559876543','kim@communitycollege.edu','Hardware Kit','Field Deployment','Dataset Release','University Retains','Restricted','2','0');
INSERT INTO technology_research_collabs VALUES ('C003','Quantum Computing Algorithms','Research Institute','GlobalQuantum','2023-09-01','2027-08-31',1200000,'Defense Advanced Research Projects Agency','Computing','Quantum Computing','Planning','DrHuang','5552223344','huang@researchinst.org','Algorithm Suite','Benchmark Tests','Security Review','Shared','Closed','1','1');

-- Public safety resources inventory
CREATE TABLE public_safety_resources (
    ResourceID TEXT PRIMARY KEY,
    ResourceType TEXT,
    LocationName TEXT,
    Address TEXT,
    City TEXT,
    County TEXT,
    State TEXT,
    Zip TEXT,
    Latitude REAL,
    Longitude REAL,
    Capacity INTEGER,
    AvailabilityStatus TEXT,
    ManagedBy TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    OperationalHours TEXT,
    LastInspectionDate DATE,
    InspectionScore INTEGER,
    FundingSource TEXT
);

INSERT INTO public_safety_resources VALUES ('R001','Fire Station','Northside Fire Dept','123 Main St','Orlando','Orange','FL','32801',28.538336,-81.379234,5,'Available','Fire Department','ChiefJones','5551112222','jones@firedept.org','24/7','2023-05-10',95,'City Budget');
INSERT INTO public_safety_resources VALUES ('R002','Police Substation','Westside Precinct','456 Oak Ave','Laketown','Lake','FL','32003',28.123456,-81.654321,3,'On Call','Police Department','LtGarcia','5553334444','garcia@police.org','24/7','2023-03-22',88,'County Funding');
INSERT INTO public_safety_resources VALUES ('R003','Emergency Medical Center','Central EMS','789 Pine Rd','Sanford','Seminole','FL','32701',28.795212,-81.279358,2,'Available','EMS Agency','DirectorLee','5555556666','lee@ems.org','24/7','2023-06-18',92,'State Grant');

-- Regional transportation funding programs
CREATE TABLE regional_transportation_funding (
    FundingID TEXT PRIMARY KEY,
    ProgramName TEXT,
    FiscalYear INTEGER,
    TotalAllocated REAL,
    FederalContribution REAL,
    StateContribution REAL,
    LocalContribution REAL,
    EligibilityCriteria TEXT,
    ApplicationDeadline DATE,
    AwardDate DATE,
    NumberOfProjects INTEGER,
    AverageProjectSize REAL,
    PrimaryFocusArea TEXT,
    ManagingAgency TEXT,
    ContactOffice TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    ReportingRequirements TEXT,
    Status TEXT,
    Notes TEXT
);

INSERT INTO regional_transportation_funding VALUES ('F001','Rural Road Improvement','2022',3000000,1500000,1000000,500000,'Population<5000','2022-04-30','2022-06-15',12,250000,'Road Maintenance','Dept of Transportation','Rural Office','5557778888','rural@dot.gov','Quarterly','Awarded','Phase 1 completed');
INSERT INTO regional_transportation_funding VALUES ('F002','Urban Transit Expansion','2023',8000000,4000000,3000000,1000000,'Metro area >1M','2023-02-28','2023-04-10',8,1000000,'Public Transit','Transit Authority','Urban Office','5559990000','urban@transit.gov','Annual','Pending','Evaluation in progress');
INSERT INTO regional_transportation_funding VALUES ('F003','Bike Lane Pilot','2021',500000,250000,200000,50000,'Cities with >100k pop','2021-05-15','2021-07-01',5,100000,'Active Transportation','City Planning Dept','Bike Office','5551113333','bike@city.gov','SemiAnnual','Completed','Full implementation in 2022');

-- School campus green spaces registry
CREATE TABLE school_campus_green_spaces (
    SpaceID TEXT PRIMARY KEY,
    SchoolCDSCode TEXT,
    SpaceName TEXT,
    SpaceType TEXT,
    AreaSqFt REAL,
    EstablishedDate DATE,
    MaintenanceSchedule TEXT,
    ResponsibleDept TEXT,
    PlantSpeciesCount INTEGER,
    TreeCount INTEGER,
    IrrigationType TEXT,
    LightingType TEXT,
    AccessibilityFeatures TEXT,
    UsabilityHours TEXT,
    CurrentUsage TEXT,
    FundingSource TEXT,
    AnnualMaintenanceCost REAL,
    CarbonSequestrationEstimate REAL,
    CommunityAccessFlag INTEGER,
    Notes TEXT
);

INSERT INTO school_campus_green_spaces VALUES ('GS001','123456','Oak Meadow Garden','Garden',15000,2015-09-01,'Monthly','Facilities','35','12','Drip','Solar','Wheelchair Ramp','06:00-20:00','Student recreation','District Grant',1200,85.5,1,'Near main entrance');
INSERT INTO school_campus_green_spaces VALUES ('GS002','789012','Sunshine Playground','Playground',8000,2018-03-15,'Biweekly','Physical Education','10','0','None','LED','Smooth surface','07:00-19:00','Recess and community events','Capital Funds',950,30.2,0,'Adjacent to cafeteria');
INSERT INTO school_campus_green_spaces VALUES ('GS003','345678','River Walk Trail','Trail',25000,2020-06-10,'Quarterly','Landscaping','50','0','Rainwater','Solar','Path markings','05:00-22:00','Cross‑country training','Donations',1500,120.0,1,'Loops around campus perimeter');

-- District legal compliance audits log
CREATE TABLE district_legal_compliance_audits (
    AuditID TEXT PRIMARY KEY,
    AuditYear INTEGER,
    Scope TEXT,
    FindingsCount INTEGER,
    MajorFindingsCount INTEGER,
    MinorFindingsCount INTEGER,
    RecommendationsCount INTEGER,
    LeadAuditor TEXT,
    AuditFirm TEXT,
    StartDate DATE,
    EndDate DATE,
    ReportURL TEXT,
    Status TEXT,
    FollowUpActions INTEGER,
    FollowUpDueDate DATE,
    BudgetUsed REAL,
    FundingSource TEXT,
    LegalArea TEXT,
    ComplianceScore REAL,
    IsFinalized INTEGER
);

INSERT INTO district_legal_compliance_audits VALUES ('AU001',2022,'Financial Practices',15,4,11,8,'MsTaylor','AuditCorp','2022-01-10','2022-03-20','http://district.gov/audit2022','Closed',5,'2022-09-30',45000,'District Budget','Finance',92.5,1);
INSERT INTO district_legal_compliance_audits VALUES ('AU002',2023,'Student Data Privacy',9,2,7,4,'MrHall','ComplianceCheck','2023-04-05','2023-06-12','http://district.gov/audit2023','Open',2,'2023-12-31',30000,'State Grant','Privacy',88.0,0);
INSERT INTO district_legal_compliance_audits VALUES ('AU003',2021,'Facilities Safety',22,6,16,10,'DrMorris','SafetyInspect','2021-07-15','2021-09-28','http://district.gov/audit2021','Closed',0,'2022-01-15',60000,'Federal Funds','Safety',95.0,1);

-- Community language services directory
CREATE TABLE community_language_services (
    ServiceID TEXT PRIMARY KEY,
    ServiceName TEXT,
    Language TEXT,
    ProviderOrganization TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    ServiceStartDate DATE,
    ServiceEndDate DATE,
    EligibilityCriteria TEXT,
    Capacity INTEGER,
    WeeklyHours INTEGER,
    Location TEXT,
    City TEXT,
    County TEXT,
    FundingAgency TEXT,
    FundingAmount REAL,
    OutcomeMetrics TEXT,
    Status TEXT,
    Notes TEXT,
    IsActive INTEGER
);

INSERT INTO community_language_services VALUES ('LS001','Adult ESL Program','Spanish','Community Center','Ana Martinez','5552221111','ana@center.org','2021-09-01','2025-08-31','Residents with income <50000','30','20','Center Hall A','Orlando','Orange','State Education Dept',200000,'Pass rate 85%','Active','Curriculum updated 2023','1');
INSERT INTO community_language_services VALUES ('LS002','Interpretation Services','Mandarin','Health Alliance','Li Wei','5553332222','li@health.org','2020-01-01','2024-12-31','All patients','15','40','Clinic Room 3','Laketown','Lake','Federal Health Grant',150000,'Patient satisfaction 90%','Active','Added tele‑interpretation','1');
INSERT INTO community_language_services VALUES ('LS003','Family Literacy Workshops','Arabic','Nonprofit Outreach','Samir Khalid','5554443333','samir@outreach.org','2022-05-15','2026-05-14','Families with school‑aged children','25','10','Library Basement','Sanford','Seminole','Private Donation',80000,'Attendance 120 per session','Planned','Materials translation pending','0');

-- School transport emission tracking records
CREATE TABLE school_transport_emission_tracking (
    TrackingID TEXT PRIMARY KEY,
    SchoolCDSCode TEXT,
    VehicleID TEXT,
    EmissionType TEXT,
    MeasurementDate DATE,
    CO2EmissionsKg REAL,
    NOxEmissionsKg REAL,
    PM25EmissionsKg REAL,
    FuelConsumedLiters REAL,
    DistanceTravelledKm REAL,
    DriverID TEXT,
    MaintenanceStatus TEXT,
    ComplianceStatus TEXT,
    ReportingPeriod TEXT,
    RecordedBy TEXT,
    VerificationStatus TEXT,
    Notes TEXT,
    IsVerified INTEGER,
    AuditTrailURL TEXT,
    DataSource TEXT
);

INSERT INTO school_transport_emission_tracking VALUES ('EM001','123456','V001','Diesel','2023-04-15',350.5,1.2,0.4,120.0,800.0','D001','Up to date','Compliant','Q1 2023','AnalystA','Verified','No anomalies','1','http://district.gov/emissions/EM001','Onboard Sensor');
INSERT INTO school_transport_emission_tracking VALUES ('EM002','789012','V045','Electric','2023-04-15',0.0,0.0,0.0,80.0,900.0','D015','Up to date','Compliant','Q1 2023','AnalystB','Verified','Battery health good','1','http://district.gov/emissions/EM002','Telematics');
INSERT INTO school_transport_emission_tracking VALUES ('EM003','345678','V078','Hybrid','2023-04-15',210.3,0.8,0.2,95.0,850.0','D023','Due soon','Pending','Q1 2023','AnalystC','Pending','Awaiting inspection','0','http://district.gov/emissions/EM003','Manual Entry');