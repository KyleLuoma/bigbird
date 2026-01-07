-- Teacher research projects extending existing data
CREATE TABLE teacher_research_projects_extended
(
    ProjectID                TEXT PRIMARY KEY,
    TeacherID                TEXT,
    SchoolCDS                TEXT,
    ProjectTitle             TEXT,
    StartDate                DATE,
    EndDate                  DATE,
    FundingSource            TEXT,
    FundingAmount            REAL,
    GrantNumber              TEXT,
    Category                 TEXT,
    Status                   TEXT,
    PublicationCount         INTEGER,
    ConferencePresentations  INTEGER,
    ResearchArea             TEXT,
    CollaboratingInstitutions TEXT,
    Abstract                 TEXT,
    DataSetLocation          TEXT,
    EthicsApproval           TEXT,
    HoursCommitted           INTEGER,
    IsActive                 INTEGER
);

INSERT INTO teacher_research_projects_extended VALUES
('PRJ001','TCH1001','CDS001','STEM_Innovation_Study','2022-09-01','2024-08-31','State_Education_Grant',150000.00,'GRNT2022A','Science','Active',3,2,'Physics','University_X','Study_of_quantum_materials','/datasets/quantum','Approved',200,1);

INSERT INTO teacher_research_projects_extended VALUES
('PRJ002','TCH1002','CDS002','Literacy_Improvement_Project','2021-01-15','2023-12-31','Federal_Education_Fund',95000.00,'FED2021B','Humanities','Completed',5,4,'Reading_Comprehension','Institute_Y','Enhancing_reading_strategies','/datasets/reading','Approved',300,0);

INSERT INTO teacher_research_projects_extended VALUES
('PRJ003','TCH1003','CDS003','Digital_Citizenship_Initiative','2023-03-01','2025-02-28','Private_Foundation',120000.00,'PF2023C','Technology','Active',0,1,'Computer_Science','Community_College_Z','Online_safety_and_ethics','/datasets/citizenship','Pending',150,1);

-- Environmental sensor data collected at schools
CREATE TABLE school_environmental_sensor_data
(
    SensorID           TEXT PRIMARY KEY,
    SchoolCDS          TEXT,
    SensorType         TEXT,
    InstallationDate   DATE,
    Latitude           REAL,
    Longitude          REAL,
    CalibrationDate    DATE,
    CalibrationFactor  REAL,
    LastReadingDate    DATE,
    ReadingValue       REAL,
    Unit               TEXT,
    BatteryLevel       INTEGER,
    FirmwareVersion    TEXT,
    MaintenanceStatus  TEXT,
    AlertsTriggered    INTEGER,
    DataUploadFrequency INTEGER,
    NetworkSSID        TEXT,
    IPAddress          TEXT,
    IsIndoor           INTEGER,
    IsOperational      INTEGER
);

INSERT INTO school_environmental_sensor_data VALUES
('SNS001','CDS001','CO2','2022-06-10',34.0522,-118.2437','2023-01-15',1.02,'2023-09-01',415.5,'ppm',85,'v1.4','Calibrated',0,60,'SchoolNet1','192.168.1.10',1,1);

INSERT INTO school_environmental_sensor_data VALUES
('SNS002','CDS002','Temperature','2021-09-05',40.7128,-74.0060','2023-02-20',0.98,'2023-09-02',22.3,'C',90,'v2.0','Checked',1,30,'SchoolNet2','192.168.2.20',0,1);

INSERT INTO school_environmental_sensor_data VALUES
('SNS003','CDS003','Noise','2023-03-12',41.8781,-87.6298','2023-08-01',1.00,'2023-09-01',55.0,'dB',75,'v1.7','Pending',2,15,'SchoolNet3','192.168.3.30',1,0);

-- Maintenance records for district transportation assets
CREATE TABLE district_transportation_asset_maintenance
(
    AssetID           TEXT PRIMARY KEY,
    AssetType         TEXT,
    PurchaseDate      DATE,
    Supplier          TEXT,
    Cost             REAL,
    WarrantyEndDate   DATE,
    LastServiceDate   DATE,
    ServiceProvider   TEXT,
    ServiceCost       REAL,
    Mileage           INTEGER,
    FuelType          TEXT,
    EmissionsRating   REAL,
    Status            TEXT,
    AssignedRoute     TEXT,
    NextServiceDue    DATE,
    InspectionScore   INTEGER,
    DepreciationYears INTEGER,
    CurrentValue      REAL,
    IsActive          INTEGER,
    Notes             TEXT
);

INSERT INTO district_transportation_asset_maintenance VALUES
('AST001','School_Bus','2020-05-20','BusCo','85000.00','2025-05-20','2023-07-15','MaintainIt','1200.00',45000,'Diesel',0.45,'In_Service','Route_12','2024-07-15',88,12,50000.00,1,'Routine_maintenance');

INSERT INTO district_transportation_asset_maintenance VALUES
('AST002','Maintenance_Vehicle','2019-03-10','AutoMakers','42000.00','2024-03-10','2023-06-10','RepairPro','800.00',30000,'Gasoline',0.30,'In_Service','Facility_Transport','2024-06-10',92,10,26000.00,1,'Tire_rotation_done');

INSERT INTO district_transportation_asset_maintenance VALUES
('AST003','Electric_Bus','2022-01-15','EcoTransit','120000.00','2027-01-15','2023-08-01','EcoService','1500.00',15000,'Electric',0.00,'In_Service','Route_7','2024-08-01',95,8,95000.00,1,'Battery_check_completed');

-- Community health service providers linked to schools
CREATE TABLE community_health_service_providers
(
    ProviderID      TEXT PRIMARY KEY,
    ProviderName    TEXT,
    ServiceType     TEXT,
    Address         TEXT,
    City            TEXT,
    State           TEXT,
    Zip             TEXT,
    Phone           TEXT,
    Email           TEXT,
    HoursMonday     TEXT,
    HoursTuesday    TEXT,
    HoursWednesday  TEXT,
    HoursThursday   TEXT,
    HoursFriday     TEXT,
    HoursSaturday   TEXT,
    HoursSunday     TEXT,
    Accreditation   TEXT,
    Capacity        INTEGER,
    IsClinic        INTEGER,
    IsMobileUnit    INTEGER
);

INSERT INTO community_health_service_providers VALUES
('PRV001','HealthyKids_Clinic','Pediatric','123 Main St','Springfield','IL','62704','555-1234','contact@healthykids.org','08:00-17:00','08:00-17:00','08:00-17:00','08:00-17:00','08:00-16:00','Closed','Closed','JointCommission','30',1,0);

INSERT INTO community_health_service_providers VALUES
('PRV002','MobileWellness_Unit','Mental_Health','Mobile','Various','TX','','555-5678','info@mobilewellness.org','09:00-15:00','09:00-15:00','09:00-15:00','09:00-15:00','09:00-14:00','Closed','Closed','StateHealthBoard','15',0,1);

INSERT INTO community_health_service_providers VALUES
('PRV003','VisionCare_Center','Optometry','456 Oak Ave','Columbus','OH','43215','555-9012','appointments@visioncare.org','07:30-16:30','07:30-16:30','07:30-16:30','07:30-16:30','07:30-15:30','Closed','Closed','AccreditedOptical','20',1,0);

-- Grants awarded for school arts programs
CREATE TABLE school_arts_funding_grants
(
    GrantID               TEXT PRIMARY KEY,
    SchoolCDS             TEXT,
    GrantName             TEXT,
    FundingAgency         TEXT,
    ApplicationDate       DATE,
    AwardDate             DATE,
    Amount                REAL,
    DurationMonths        INTEGER,
    ProgramArea           TEXT,
    EligibilityCriteria   TEXT,
    MatchingRequirement   REAL,
    ReportingFrequency    TEXT,
    IsRenewable           INTEGER,
    ContactPerson         TEXT,
    ContactPhone          TEXT,
    ContactEmail          TEXT,
    Status                TEXT,
    ExpirationDate        DATE,
    Notes                 TEXT,
    IsActive              INTEGER
);

INSERT INTO school_arts_funding_grants VALUES
('GRNT001','CDS001','Creative_Arts_Initiative','National_Endowment_for_Arts','2022-02-10','2022-04-15',50000.00,24,'Visual_Arts','Public_School','0.20','Quarterly',1,'Maria Lopez','555-2100','mlopez@nea.gov','Awarded','2024-04-15','Support_for_mural_projects',1);

INSERT INTO school_arts_funding_grants VALUES
('GRNT002','CDS002','Music_Education_Grant','State_Education_Board','2021-11-05','2022-01-20',30000.00,36,'Music','Non_Charter','0.15','Semi_Annual',0,'James Patel','555-3201','jpatel@stateedb.gov','Awarded','2025-01-20','Band_and_choir_support',1);

INSERT INTO school_arts_funding_grants VALUES
('GRNT003','CDS003','Drama_Production_Fund','Local_Arts_Council','2023-03-12','2023-05-01',20000.00,12,'Drama','Public_School','0.10','Annual',0,'Lena Wu','555-4302','lwu@localarts.org','Pending','2024-05-01','Stage_equipment_upgrade',0);

-- Student financial aid award records
CREATE TABLE student_financial_aid_awards
(
    AwardID            TEXT PRIMARY KEY,
    StudentID          TEXT,
    SchoolCDS          TEXT,
    AwardType          TEXT,
    AwardAmount        REAL,
    AwardYear          INTEGER,
    DisbursementDate   DATE,
    FundingSource      TEXT,
    IsRenewable        INTEGER,
    GPARequirement     REAL,
    CreditHoursRequirement INTEGER,
    ApplicationStatus  TEXT,
    AwardStatus        TEXT,
    RenewalDate        DATE,
    Notes              TEXT,
    IsActive           INTEGER,
    EligibilityCategory TEXT,
    ProgramName        TEXT,
    ApprovalOfficer    TEXT,
    ApprovalDate       DATE
);

INSERT INTO student_financial_aid_awards VALUES
('AID001','STU1001','CDS001','Scholarship',8000.00,2023,'2023-08-15','State_Scholarship',1,3.0,24,'Approved','Active','2024-08-15','Merit_based','1','Academic_Excellence','STEM_Track','DrSmith','2023-04-10');

INSERT INTO student_financial_aid_awards VALUES
('AID002','STU1002','CDS002','Grant',5000.00,2022,'2022-09-01','Federal_Grant',0,2.5,18,'Approved','Completed','NULL','Community_service','0','Need_Based','Arts_Program','MsJohnson','2022-05-20');

INSERT INTO student_financial_aid_awards VALUES
('AID003','STU1003','CDS003','Loan',12000.00,2024,'2024-01-20','Private_Lender',1,2.0,30,'Pending','Pending','2025-01-20','Work_study_option','0','Income_Based','General_Ed','MrBrown','2023-11-01');

-- Budget details for school infrastructure projects
CREATE TABLE school_infrastructure_project_budget
(
    ProjectID            TEXT PRIMARY KEY,
    SchoolCDS            TEXT,
    ProjectName          TEXT,
    Description          TEXT,
    StartDate            DATE,
    EndDate              DATE,
    InitialBudget        REAL,
    RevisedBudget        REAL,
    FundingSource        TEXT,
    AmountSpent          REAL,
    PercentageComplete   REAL,
    ProjectManager       TEXT,
    Contractor           TEXT,
    ContractAmount       REAL,
    InvoiceCount         INTEGER,
    PaymentsMade         REAL,
    NextMilestoneDate    DATE,
    RiskLevel            TEXT,
    IsOnSchedule         INTEGER,
    IsCompleted          INTEGER
);

INSERT INTO school_infrastructure_project_budget VALUES
('PRJINF001','CDS001','Science_Lab_Renovation','Upgrade_lab_equipment_and_safety','2023-01-15','2024-06-30',150000.00,160000.00,'District_Bonds',75000.00,50.0,'Anna Green','BuildCorp','150000.00',5,75000.00,'2023-12-01','Medium',1,0);

INSERT INTO school_infrastructure_project_budget VALUES
('PRJINF002','CDS002','Gymnasium_Expansion','Add_new_basketball_court','2022-05-01','2023-11-15',200000.00,210000.00,'State_Grant','180000.00',85.0,'Carlos Ruiz','ConstructCo','210000.00',8,180000.00,'2023-09-15','Low',1,0);

INSERT INTO school_infrastructure_project_budget VALUES
('PRJINF003','CDS003','Solar_Panel_Installation','Install_250kW_solar_array','2021-09-01','2022-12-31',300000.00,300000.00,'Federal_Energy_Fund','300000.00',100.0,'Emily Chen','EcoEnergy','300000.00',3,300000.00,'2022-12-01','Low',1,1);

-- District-wide equity initiative metrics
CREATE TABLE district_equity_initiative_metrics
(
    MetricID            TEXT PRIMARY KEY,
    DistrictID          TEXT,
    InitiativeName      TEXT,
    Year                INTEGER,
    TargetGroup         TEXT,
    BaselineValue       REAL,
    CurrentValue        REAL,
    TargetValue         REAL,
    MeasurementMethod   TEXT,
    DataSource          TEXT,
    IsMet               INTEGER,
    Comments            TEXT,
    ReportingQuarter    INTEGER,
    ResponsibleOfficer  TEXT,
    LastUpdated         DATE,
    FundingAllocated    REAL,
    FundingUsed         REAL,
    DisparityIndex     REAL,
    ActionPlanStatus    TEXT,
    IsActive            INTEGER
);

INSERT INTO district_equity_initiative_metrics VALUES
('EQM001','DIST01','Reduced_Teacher_Ratio','2023','Low_Income','30.5','28.0','25.0','Student_Teacher_Ratio','Annual_Survey',0,'Progressing','2','MsTaylor','2023-07-01',500000.00,350000.00,0.12,'On_Track',1);

INSERT INTO district_equity_initiative_metrics VALUES
('EQM002','DIST01','Advanced_Placement_Access','2023','Minority_Students','45.0','48.5','55.0','AP_Test_Participation','State_Data',0,'Increasing_participation','3','MrLee','2023-09-15',300000.00,210000.00,0.08,'Review_Needed',1);

INSERT INTO district_equity_initiative_metrics VALUES
('EQM003','DIST02','Technology_Equity','2022','Rural_Schools','60.0','70.0','85.0','Device_Per_Student','District_Inventory',0,'Device_distribution_up','4','DrWhite','2022-12-10',400000.00,260000.00,0.10,'On_Track',1);

-- Performance reviews for technology vendors
CREATE TABLE technology_vendor_performance_reviews
(
    ReviewID                TEXT PRIMARY KEY,
    VendorID                TEXT,
    VendorName              TEXT,
    ReviewDate              DATE,
    ProductCategory         TEXT,
    ContractStartDate       DATE,
    ContractEndDate         DATE,
    SLACompliance           REAL,
    IssueCount              INTEGER,
    AvgResolutionTimeDays   REAL,
    CustomerSatisfactionScore REAL,
    RenewalLikelihood       INTEGER,
    CostEfficiencyScore     REAL,
    InnovationScore         REAL,
    SupportQualityScore     REAL,
    OverallRating           REAL,
    ReviewerName            TEXT,
    ReviewerDept            TEXT,
    Comments                TEXT,
    IsApproved              INTEGER
);

INSERT INTO technology_vendor_performance_reviews VALUES
('REV001','VND100','TechSolutionsInc','2023-06-15','Learning_Management','2022-01-01','2025-12-31',98.5,2,1.5,4.7,9,9.2,8.5,9.0,9.3','Laura King','IT','Consistently_meets_SLA','1');

INSERT INTO technology_vendor_performance_reviews VALUES
('REV002','VND101','EduHardwareCo','2023-05-20','Classroom_Devices','2021-07-01','2024-06-30',95.0,5,3.2,4.2,7,8.0,7.5,8.0,8.1','Mark Davis','Facilities','Improved_response_times','1');

INSERT INTO technology_vendor_performance_reviews VALUES
('REV003','VND102','SecureNet','2023-04-10','Network_Security','2020-03-15','2023-03-14',92.0,8,4.5,3.9,5,7.5,6.0,7.8,7.6','Emily Rivera','Security','Needs_better_issue_tracking','0');

-- School mental health programs
CREATE TABLE school_mental_health_programs
(
    ProgramID                TEXT PRIMARY KEY,
    SchoolCDS                TEXT,
    ProgramName              TEXT,
    StartDate                DATE,
    EndDate                  DATE,
    Provider                 TEXT,
    ServiceType              TEXT,
    SessionsPerWeek          INTEGER,
    AvgSessionDurationMinutes INTEGER,
    TargetPopulation         TEXT,
    EligibilityCriteria      TEXT,
    FundingSource            TEXT,
    AnnualBudget             REAL,
    StaffCount               INTEGER,
    OutcomeMetric            TEXT,
    LatestOutcomeValue       REAL,
    IsCertified              INTEGER,
    ContactPerson            TEXT,
    ContactPhone             TEXT,
    IsActive                 INTEGER
);

INSERT INTO school_mental_health_programs VALUES
('MH001','CDS001','Wellness_Counseling','2022-09-01','2025-06-30','MindCare','Counseling',3,45,'All_Students','Referral_or_self','State_Grant',120000.00,4,'Reduced_Anxiety_Score',0.78,1,'Olivia Brown','555-6001',1);

INSERT INTO school_mental_health_programs VALUES
('MH002','CDS002','Trauma_Informed_Support','2021-01-15','2024-12-31','HealingHands','Therapy',2,60,'At_Risk_Students','Eligibility_by_income','Federal_Grant',95000.00,3,'Improved_Graduation_Rate',0.85,0,'Ethan Miller','555-6002',1);

INSERT INTO school_mental_health_programs VALUES
('MH003','CDS003','Peer_Mentoring_Program','2023-03-01','2026-02-28','StudentPeers','Mentorship',1,30,'Middle_School_Students','Teacher_Nomination','District_Budget',60000.00,2,'Increased_Engagement_Score',0.70,1,'Sofia Patel','555-6003',0);