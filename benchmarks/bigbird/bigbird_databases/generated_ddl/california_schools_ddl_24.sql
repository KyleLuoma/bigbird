-- Student loan disbursements for individual students
CREATE TABLE student_loan_disbursements
(
    LoanID TEXT NOT NULL PRIMARY KEY,
    StudentID TEXT NOT NULL,
    AcademicYear TEXT NOT NULL,
    LoanType TEXT NOT NULL,
    AmountDisbursed REAL NOT NULL,
    DisbursementDate DATE NOT NULL,
    InterestRate REAL NOT NULL,
    RepaymentStartDate DATE,
    GracePeriodMonths INTEGER,
    LenderName TEXT,
    LoanStatus TEXT,
    FederalAidFlag INTEGER,
    StateAidFlag INTEGER,
    FederalLoanNumber TEXT,
    StateLoanNumber TEXT,
    OriginalPrincipal REAL,
    CurrentBalance REAL,
    AmortizationScheduleURL TEXT,
    Notes TEXT,
    LastUpdate DATE
);

INSERT INTO student_loan_disbursements VALUES
('L001','S12345','2022-2023','FederalDirect',15000.00,'2022-09-01',3.5,'2026-09-01',6,'USDeptEducation','Disbursed',1,0,'FED2022001',NULL,15000.00,15000.00,'http://example.com/sched/L001','Initial disbursement','2022-09-01');

INSERT INTO student_loan_disbursements VALUES
('L002','S67890','2023-2024','StateGrant',8000.00,'2023-08-15',2.8,'2027-08-15',12,'StateHigherEd','Disbursed',0,1,NULL,'STG2023002',8000.00,8000.00,'http://example.com/sched/L002','State award','2023-08-15');

INSERT INTO student_loan_disbursements VALUES
('L003','S54321','2021-2022','PrivateBank',12000.00,'2021-07-20',4.2,'2025-07-20',0,'BigBankCo','Pending',0,0,NULL,NULL,12000.00,12000.00,'http://example.com/sched/L003','Awaiting approval','2021-07-20');

-- Early childhood program statistics at the district level
CREATE TABLE district_early_childhood_stats
(
    DistrictCode TEXT NOT NULL,
    Year INTEGER NOT NULL,
    TotalEnrolled INTEGER,
    AvgClassSize REAL,
    PercentCertifiedTeachers REAL,
    FundingPerChild REAL,
    StateGrantAmount REAL,
    FederalGrantAmount REAL,
    PrivateFundingAmount REAL,
    NumberOfPrograms INTEGER,
    ProgramTypes TEXT,
    AvgTeacherSalary REAL,
    StaffingRatio REAL,
    EnrollmentGrowthRate REAL,
    SpecialNeedsEnrollment INTEGER,
    LanguageDiversityScore REAL,
    FacilityCount INTEGER,
    TransportationAvailable INTEGER,
    ParentEngagementScore REAL,
    DataReportedDate DATE,
    PRIMARY KEY (DistrictCode, Year)
);

INSERT INTO district_early_childhood_stats VALUES
('D01',2022,1450,12.5,87.3,4500.00,300000.00,250000.00,50000.00,5,'Preschool;PreK',48000.00,0.13,3.2,120,75.5,12,1,82.0,'2022-12-15');

INSERT INTO district_early_childhood_stats VALUES
('D02',2021,1320,13.0,81.0,4200.00,280000.00,230000.00,40000.00,4,'Preschool',46000.00,0.12,2.8,110,68.0,10,1,78.5,'2021-12-10');

INSERT INTO district_early_childhood_stats VALUES
('D03',2023,1580,11.8,89.5,4700.00,320000.00,260000.00,60000.00,6,'Preschool;PreK;HeadStart',50000.00,0.14,3.5,130,80.2,14,1,85.3,'2023-12-20');

-- Water quality reports for school facilities
CREATE TABLE facility_water_quality_reports
(
    FacilityID TEXT NOT NULL,
    ReportID TEXT NOT NULL PRIMARY KEY,
    SampleDate DATE NOT NULL,
    pH REAL,
    Turbidity_NTU REAL,
    Lead_ppb REAL,
    Copper_ppb REAL,
    Chlorine_mgL REAL,
    Fluoride_mgL REAL,
    BacteriaCFU INTEGER,
    SampleLocation TEXT,
    InspectorName TEXT,
    InspectionStatus TEXT,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    Comments TEXT,
    TemperatureC REAL,
    Conductivity_uS REAL,
    DissolvedOxygen_mgL REAL,
    ReportGeneratedDate DATE
);

INSERT INTO facility_water_quality_reports VALUES
('F001','RPT1001','2023-03-15',7.2,0.3,2.1,0.5,0.8,0.7,0,'Main Fountain','Jane Doe','Pass',0,NULL,'All parameters within limits',15.0,250.0,8.5,'2023-03-20');

INSERT INTO facility_water_quality_reports VALUES
('F002','RPT1002','2023-04-10',6.9,0.5,5.0,1.2,1.0,0.9,10,'Restroom Sink','John Smith','Fail',1,'2023-04-20','Elevated lead detected, remediation needed',16.5,300.0,7.9,'2023-04-12');

INSERT INTO facility_water_quality_reports VALUES
('F003','RPT1003','2023-05-05',7.0,0.2,1.0,0.4,0.6,0.5,0,'Gymnasium Tap','Alice Brown','Pass',0,NULL,'Routine satisfactory',14.8,240.0,8.2,'2023-05-07');

-- Teacher licensure exam results
CREATE TABLE teacher_licensure_exam_results
(
    TeacherID TEXT NOT NULL,
    ExamYear INTEGER NOT NULL,
    ExamCode TEXT NOT NULL,
    Score INTEGER,
    PassFlag INTEGER,
    ExamDate DATE,
    LicenseNumber TEXT,
    LicenseIssueDate DATE,
    LicenseExpirationDate DATE,
    ExamLocation TEXT,
    ProctorName TEXT,
    RetakeCount INTEGER,
    StudyHours INTEGER,
    PreparationCourse TEXT,
    CertificationLevel TEXT,
    SubjectArea TEXT,
    State TEXT,
    Remarks TEXT,
    LastUpdated DATE,
    RecordSource TEXT,
    PRIMARY KEY (TeacherID, ExamYear, ExamCode)
);

INSERT INTO teacher_licensure_exam_results VALUES
('T001',2022,'EDU101',285,1,'2022-06-15','LIC12345','2022-07-01','2028-07-01','City Hall','Mark Lee',0,120,'PrepPlus','Standard','Mathematics','CA','First attempt', '2022-06-20','StateDept');

INSERT INTO teacher_licensure_exam_results VALUES
('T002',2021,'EDU102',260,0,'2021-05-10','LIC54321','2021-06-01','2027-06-01','Community Center','Susan Green',1,150,'EduPrep','Standard','English','CA','Retake required', '2021-05-15','StateDept');

INSERT INTO teacher_licensure_exam_results VALUES
('T003',2023,'EDU103',295,1,'2023-07-20','LIC67890','2023-08-01','2029-08-01','High School','Tom White',0,100,'FastTrack','Advanced','Science','CA','Excellent performance', '2023-07-25','StateDept');

-- Community parent education resources
CREATE TABLE community_parent_education_resources
(
    ResourceID TEXT NOT NULL PRIMARY KEY,
    Title TEXT NOT NULL,
    Description TEXT,
    Category TEXT,
    TargetAudience TEXT,
    DeliveryMethod TEXT,
    ProviderOrganization TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Cost REAL,
    OnlineURL TEXT,
    Location TEXT,
    SeatsAvailable INTEGER,
    RegistrationDeadline DATE,
    StartDate DATE,
    EndDate DATE,
    FacilitatorName TEXT,
    Language TEXT,
    AccessibilityNotes TEXT,
    CreateDate DATE
);

INSERT INTO community_parent_education_resources VALUES
('R001','Understanding School Funding','Workshop on how school budgets are created','Finance','Parents','InPerson','EducationTrust','5551234567','info@edutrust.org',0,'http://edutrust.org/funding','Community Center Room 101',30,'2023-09-01','2023-09-15','2023-09-15','Linda Carter','English','Wheelchair accessible','2023-07-01');

INSERT INTO community_parent_education_resources VALUES
('R002','Supporting Literacy at Home','Series of videos and handouts','Literacy','Parents','Online','LiteracyNow','5559876543','contact@literacynow.org',0,'http://literacynow.org/parent','',100,'2023-08-01','2023-08-05','2023-09-30','Michael Reed','Spanish','Closed captions','2023-06-15');

INSERT INTO community_parent_education_resources VALUES
('R003','Managing Child Anxiety','One‑day seminar with counsellors','Wellness','Parents','Hybrid','WellBeingCenter','5555551212','admin@wellbeing.org',25,'http://wellbeing.org/anxiety','High School Auditorium',25,'2023-10-10','2023-10-20','2023-10-20','Sarah Kim','English','Sign language interpreter available','2023-08-20');

-- School energy storage assets
CREATE TABLE school_energy_storage_assets
(
    SchoolID TEXT NOT NULL,
    AssetID TEXT NOT NULL PRIMARY KEY,
    AssetType TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    Capacity_kWh REAL,
    InstallationDate DATE,
    WarrantyEndDate DATE,
    CurrentHealthScore REAL,
    MaintenanceFrequencyMonths INTEGER,
    LastMaintenanceDate DATE,
    OwnerDepartment TEXT,
    FundingSource TEXT,
    Cost REAL,
    ExpectedLifeYears INTEGER,
    DecommissionDate DATE,
    Status TEXT,
    SerialNumber TEXT,
    Voltage_V REAL,
    Current_A REAL
);

INSERT INTO school_energy_storage_assets VALUES
('S001','ASSET001','Battery','Tesla','PowerPack 200',200.0,'2022-01-15','2027-01-15',92.5,12,'2022-12-01','Facilities','Bond','150000.00',15,NULL,'Active','SNTP200001',400.0,500.0);

INSERT INTO school_energy_storage_assets VALUES
('S002','ASSET002','Flywheel','Siemens','FlyWheel X5',150.0,'2021-06-20','2026-06-20',88.0,12,'2022-06-20','Facilities','Grant','120000.00',12,NULL,'Active','SNFLW5002',500.0,300.0);

INSERT INTO school_energy_storage_assets VALUES
('S003','ASSET003','Battery','LG','ChemRes 150',150.0,'2020-09-10','2025-09-10',80.0,12,'2021-09-10','Facilities','Capital','100000.00',10,'2029-09-10','Decommissioned','SNLGC1503',350.0','400.0');

-- District transportation route planning
CREATE TABLE district_transportation_route_planning
(
    DistrictCode TEXT NOT NULL,
    RouteID TEXT NOT NULL PRIMARY KEY,
    RouteName TEXT,
    StartPoint TEXT,
    EndPoint TEXT,
    Distance_miles REAL,
    EstimatedTravelTime_min INTEGER,
    NumberOfStops INTEGER,
    PrimaryMode TEXT,
    ServiceFrequencyPerDay INTEGER,
    PeakHourCapacity INTEGER,
    OffPeakCapacity INTEGER,
    FuelType TEXT,
    VehicleType TEXT,
    AssignedDrivers INTEGER,
    MaintenanceWindowHours INTEGER,
    PlannedStartDate DATE,
    PlannedEndDate DATE,
    BudgetAllocated REAL,
    Status TEXT
);

INSERT INTO district_transportation_route_planning VALUES
('D01','R001','North Loop','North Elementary','North High School',12.5,35,15,'Bus',8,60,40,'Diesel','Standard',4,2,'2023-09-01','2024-08-31',500000.00,'Planned');

INSERT INTO district_transportation_route_planning VALUES
('D02','R002','East Connector','East Middle','East High',9.8,25,12,'Van',6,45,30,'Electric','MiniBus',3,1,'2023-10-15','2025-10-14',350000.00,'Approved');

INSERT INTO district_transportation_route_planning VALUES
('D03','R003','West Circle','West Elementary','West High',15.2,45,20,'Bus',10,70,50,'Hybrid','Standard',5,3,'2024-01-01','2026-12-31',750000.00,'InDesign');

-- School arts inventory
CREATE TABLE school_arts_inventory
(
    SchoolID TEXT NOT NULL,
    ItemID TEXT NOT NULL PRIMARY KEY,
    ItemName TEXT,
    Category TEXT,
    Artist TEXT,
    AcquisitionDate DATE,
    AcquisitionCost REAL,
    CurrentValue REAL,
    ConditionRating REAL,
    LocationWithinSchool TEXT,
    DisplayFrequencyPerYear INTEGER,
    ConservationStatus TEXT,
    LoanedToExternal TEXT,
    LoanStartDate DATE,
    LoanEndDate DATE,
    InsurancePolicyNumber TEXT,
    InsuranceProvider TEXT,
    LastAppraisalDate DATE,
    Notes TEXT,
    LastUpdated DATE
);

INSERT INTO school_arts_inventory VALUES
('S001','ART001','Bronze Statue','Sculpture','John Doe','2015-06-10',5000.00,4800.00,9.0,'Main Lobby',4,'Good',NULL,NULL,NULL,'POL12345','ABCInsure','2022-05-01','Requires polishing','2023-01-12');

INSERT INTO school_arts_inventory VALUES
('S002','ART002','Mural: Community','Mural','Local Artists','2018-09-20',0.00,0.00,8.5,'Hallway B',12,'Excellent','City Museum','2024-03-01','2024-09-01','POL67890','XYZInsure','2023-11-15','Outdoor mural, weather resistant','2023-12-05');

INSERT INTO school_arts_inventory VALUES
('S003','ART003','Oil Painting - Sunrise','Painting','Emily Clark','2020-02-14',2000.00,2100.00,9.5,'Fine Arts Room',2,'Excellent','University Gallery','2025-01-15','2025-06-15','POL24680','InsurePlus','2023-08-20','Framed, temperature controlled','2023-09-30');

-- District technology roadmap
CREATE TABLE district_technology_roadmap
(
    DistrictCode TEXT NOT NULL,
    RoadmapYear INTEGER NOT NULL,
    InitiativeID TEXT NOT NULL,
    InitiativeName TEXT,
    Description TEXT,
    Phase TEXT,
    StartQuarter INTEGER,
    EndQuarter INTEGER,
    Budget REAL,
    FundingSource TEXT,
    LeadOffice TEXT,
    StakeholderGroup TEXT,
    ExpectedImpactScore REAL,
    RiskLevel TEXT,
    Dependencies TEXT,
    Status TEXT,
    LastReviewDate DATE,
    NextMilestoneDate DATE,
    OwnerPerson TEXT,
    ContactEmail TEXT,
    PRIMARY KEY (DistrictCode, RoadmapYear, InitiativeID)
);

INSERT INTO district_technology_roadmap VALUES
('D01',2024,'IT001','5G Network Upgrade','Deploy 5G connectivity across all campuses','Planning',1,2,2000000.00,'Bond','IT Office','All Schools',85.0,'Medium','FiberInstall','NotStarted','2023-11-01','2024-04-01','Alice Monroe','alice.monroe@district.org');

INSERT INTO district_technology_roadmap VALUES
('D02',2024,'IT002','Digital Curriculum Platform','Implement a district‑wide digital curriculum','Implementation',3,4,1500000.00,'Grant','Curriculum Dept','Teachers',78.0,'Low','VendorSelection','InProgress','2024-01-15','2024-07-15','Bob Patel','bob.patel@district.org');

INSERT INTO district_technology_roadmap VALUES
('D03',2025,'IT003','AI‑Based Analytics','Introduce AI tools for student performance analytics','Research',1,2,1000000.00,'StateFunds','Data Science Unit','Administrators',70.0,'High','DataPrivacyReview','Planned','2024-03-20','2025-02-01','Cara Liu','cara.liu@district.org');

-- School dynamic pricing models for tuition and fees
CREATE TABLE school_dynamic_pricing_models
(
    SchoolID TEXT NOT NULL,
    PricingModelID TEXT NOT NULL PRIMARY KEY,
    ModelName TEXT,
    EffectiveStartDate DATE,
    EffectiveEndDate DATE,
    TuitionBaseFee REAL,
    TuitionVariableFee REAL,
    DiscountRatePercent REAL,
    ScholarshipEligibilityCriteria TEXT,
    ApplicationDeadline DATE,
    MaxStudents INTEGER,
    RevenueProjection REAL,
    CostProjection REAL,
    NetMargin REAL,
    AdjustmentsAllowed INTEGER,
    ReviewFrequencyMonths INTEGER,
    LastReviewedDate DATE,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    Comments TEXT
);

INSERT INTO school_dynamic_pricing_models VALUES
('S001','PM001','Standard Tier','2023-09-01','2025-08-31',12000.00,2000.00,5.0,'GPA>=3.0;Income<50000','2023-08-01',500,6500000.00,5000000.00,1500000.00,2,12,'2023-07-15','Board Committee','2023-07-20','Model includes modest variable component');

INSERT INTO school_dynamic_pricing_models VALUES
('S002','PM002','Premium Tier','2024-01-01','2026-12-31',18000.00,3000.00,10.0,'GPA>=3.5;Income<75000','2023-12-15',300,6000000.00,4200000.00,1800000.00,1,6,'2023-11-30','Executive Council','2024-01-05','Higher tuition for advanced programs');

INSERT INTO school_dynamic_pricing_models VALUES
('S003','PM003','Needs‑Based Tier','2023-09-01','2025-08-31',8000.00,1500.00,15.0,'GPA>=2.5;Income<40000','2023-08-10',400,3200000.00,2500000.00,700000.00,3,12,'2023-07-20','Finance Committee','2023-07-25','Maximum discount for low‑income families');