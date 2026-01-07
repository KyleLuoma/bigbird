-- Table: school_bus_routes_extended
CREATE TABLE school_bus_routes_extended
(
    RouteID                TEXT NOT NULL PRIMARY KEY,
    CDSCode                TEXT NOT NULL,
    RouteNumber            INTEGER NOT NULL,
    StartLocation          TEXT,
    EndLocation            TEXT,
    DistanceMiles          REAL,
    AvgTravelTimeMinutes   INTEGER,
    StopsCount             INTEGER,
    BusCapacity            INTEGER,
    AssignedDriverID       TEXT,
    DriverLicenseNumber    TEXT,
    ScheduleType           TEXT,
    OperatesOnWeekdays     INTEGER,
    OperatesOnWeekends     INTEGER,
    ServiceStartDate       DATE,
    ServiceEndDate         DATE,
    FuelType               TEXT,
    EmissionStandard       TEXT,
    MaintenanceIntervalKm  INTEGER,
    LastInspectionDate     DATE,
    InspectionScore        INTEGER,
    RouteStatus            TEXT,
    CreatedTimestamp       DATE,
    UpdatedTimestamp       DATE,
    FOREIGN KEY (CDSCode) REFERENCES schools(CDSCode)
);

INSERT INTO school_bus_routes_extended VALUES
('R001','001234567','101','Main St','Elm St',12.5,45,15,58,'D001','L1234567','Regular',1,0,'2022-09-01','2025-06-30','Diesel','Euro5',15000,'2023-05-10',85,'Active','2022-09-01','2023-01-15');

INSERT INTO school_bus_routes_extended VALUES
('R002','001234568','102','Oak St','Pine St',9.8,30,10,50,'D002','L7654321','Special',0,1,'2021-01-15','2024-12-31','Electric','Zero',12000,'2023-03-22',90,'Active','2021-01-15','2023-02-20');

INSERT INTO school_bus_routes_extended VALUES
('R003','001234569','103','Maple Ave','River Rd',15.3,55,20,62,'D003','L1122334','Regular',1,1,'2020-08-10','2026-08-10','Hybrid','Euro6',18000,'2023-06-05',88,'Planned','2020-08-10','2023-03-01');

-- Table: district_building_permits_details
CREATE TABLE district_building_permits_details
(
    PermitID                TEXT NOT NULL PRIMARY KEY,
    DistrictCode            TEXT NOT NULL,
    PermitNumber            TEXT NOT NULL,
    ProjectName             TEXT,
    ProjectType             TEXT,
    ApplicantName           TEXT,
    ApplicantContact        TEXT,
    AddressLine1            TEXT,
    City                    TEXT,
    ZipCode                 TEXT,
    PermitIssueDate         DATE,
    PermitExpirationDate    DATE,
    EstimatedCostUSD        REAL,
    ContractorID            TEXT,
    ContractorLicense       TEXT,
    InspectionRequired      INTEGER,
    NumberOfFloors          INTEGER,
    SquareFootage           REAL,
    ZoningClassification    TEXT,
    EnvironmentalReviewDone INTEGER,
    ReviewComments          TEXT,
    PermitStatus            TEXT,
    ApprovedBy               TEXT,
    ApprovedDate            DATE,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    FOREIGN KEY (DistrictCode) REFERENCES schools(District)
);

INSERT INTO district_building_permits_details VALUES
('P001','D001','2023-001','Science Wing Expansion','NewConstruction','Acme Builders','555-0123','123 Oak St','Springfield','12345','2023-02-15','2025-02-15',2500000,'C001','LIC12345',1,3,45000,'Education','1','All clear','Approved','John Doe','2023-02-20','2023-02-15','2023-02-21');

INSERT INTO district_building_permits_details VALUES
('P002','D001','2023-002','Parking Lot Renovation','Renovation','Metro Parking','555-0456','456 Pine St','Springfield','12345','2023-03-01','2024-03-01',500000,'C002','LIC67890',0,1,15000,'Commercial','1','No issues','Approved','Jane Smith','2023-03-05','2023-03-01','2023-03-06');

INSERT INTO district_building_permits_details VALUES
('P003','D002','2023-003','Athletic Center Upgrade','Addition','Stronghold Constructions','555-0789','789 Maple Ave','Shelbyville','54321','2023-04-10','2026-04-10',1200000,'C003','LIC54321',1,2,30000,'Recreational','0','Pending environmental review','Pending','Mike Johnson','2023-04-15','2023-04-10','2023-04-16');

-- Table: community_health_center_statistics
CREATE TABLE community_health_center_statistics
(
    CenterID                 TEXT NOT NULL PRIMARY KEY,
    CenterName               TEXT,
    CountyCode               TEXT,
    TotalPatientsYearly      INTEGER,
    NewPatientsYearly        INTEGER,
    AvgVisitDurationMinutes  INTEGER,
    StaffCount               INTEGER,
    PhysiciansCount          INTEGER,
    NursesCount              INTEGER,
    DentalStaffCount         INTEGER,
    MentalHealthProviders    INTEGER,
    ImmunizationsGiven       INTEGER,
    HealthScreeningsConducted INTEGER,
    ChronicDiseaseCases      INTEGER,
    EmergencyVisits          INTEGER,
    TelehealthVisits         INTEGER,
    OperatingBudgetUSD       REAL,
    FundingSource1           TEXT,
    FundingSource2           TEXT,
    FundingSource3           TEXT,
    FacilitySizeSqFt         REAL,
    ParkingSpots             INTEGER,
    YearEstablished          INTEGER,
    AccreditationStatus      TEXT,
    LastAccreditationDate    DATE,
    CreatedDate              DATE,
    UpdatedDate              DATE
);

INSERT INTO community_health_center_statistics VALUES
('HC001','River Valley Health','001','35000','5000','30','120','20','45','5','3','25000','4000','800','150','900','750000','County Grant','Federal Aid','Private Donors','25000','120','1998','Accredited','2022-11-01','2023-01-01','2023-06-01');

INSERT INTO community_health_center_statistics VALUES
('HC002','Mountain View Clinic','002','22000','3000','25','80','12','30','3','2','18000','2800','500','90','600','500000','State Funding','Charity Fund','Insurance Payments','18000','80','2005','Accredited','2023-02-15','2023-02-20','2023-06-02');

INSERT INTO community_health_center_statistics VALUES
('HC003','Lakeside Wellness Center','003','41000','6200','35','150','25','60','8','4','30000','5000','950','200','1200','950000','Federal Grant','Local Taxes','Philanthropy','30000','150','1992','Accredited','2022-09-20','2023-01-10','2023-06-03');

-- Table: school_arts_exhibit_catalog
CREATE TABLE school_arts_exhibit_catalog
(
    ExhibitID               TEXT NOT NULL PRIMARY KEY,
    SchoolCDSCode           TEXT NOT NULL,
    ExhibitTitle            TEXT,
    ArtistName              TEXT,
    ArtForm                 TEXT,
    CreationYear            INTEGER,
    AcquisitionMethod       TEXT,
    EstimatedValueUSD       REAL,
    DisplayLocation         TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    CuratorName             TEXT,
    InsurancePolicyNumber   TEXT,
    ConditionRating         INTEGER,
    VisitorCount            INTEGER,
    AudienceAgeGroup        TEXT,
    EducationalProgramFlag  INTEGER,
    SponsoringOrganization  TEXT,
    FundingAmountUSD        REAL,
    Notes                   TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    FOREIGN KEY (SchoolCDSCode) REFERENCES schools(CDSCode)
);

INSERT INTO school_arts_exhibit_catalog VALUES
('E001','001234567','Nature Inspiration','Alice Green','Painting',2018,'Donation',15000,'Gallery A','2023-05-01','2023-08-01','Emily Ross','POL12345',9,1200,'All Ages',1,'Local Arts Council',5000,'Outdoor theme','2023-04-20','2023-05-02');

INSERT INTO school_arts_exhibit_catalog VALUES
('E002','001234568','Modern Sculptures','Brian Lee','Sculpture',2020,'Purchase',30000,'Hall B','2023-09-15','2023-12-15','Michael Tan','POL67890',8,800,'Teens',0,'Sculpture Society',8000,'Abstract focus','2023-09-01','2023-09-16');

INSERT INTO school_arts_exhibit_catalog VALUES
('E003','001234569','Digital Horizons','Catherine Wu','Digital Media',2021,'Grant',25000,'Tech Lab','2024-01-10','2024-04-10','Sofia Patel','POL54321',10,500,'College',1,'Tech Foundation',6000','Interactive installations','2023-12-20','2024-01-11');

-- Table: district_renewable_energy_asset_log
CREATE TABLE district_renewable_energy_asset_log
(
    AssetID                 TEXT NOT NULL PRIMARY KEY,
    DistrictCode            TEXT NOT NULL,
    AssetType               TEXT,
    InstallationDate        DATE,
    CapacityKW              REAL,
    Manufacturer            TEXT,
    ModelNumber             TEXT,
    ExpectedLifeYears       INTEGER,
    CurrentStatus           TEXT,
    LastMaintenanceDate     DATE,
    MaintenanceFrequencyMonths INTEGER,
    EnergyGeneratedMWhYear REAL,
    CO2ReductionTonnesYear  REAL,
    FundingSource           TEXT,
    ContractStartDate       DATE,
    ContractEndDate         DATE,
    OperatorContact         TEXT,
    Latitude                REAL,
    Longitude               REAL,
    WarrantyExpirationDate  DATE,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    FOREIGN KEY (DistrictCode) REFERENCES schools(District)
);

INSERT INTO district_renewable_energy_asset_log VALUES
('A001','D001','Solar Panel','2022-06-01',2500,'SunPower','SP-2500',25,'Operational','2023-05-01',12,3000,2100,'Green Grant','2022-06-01','2047-06-01','Laura Green','35.6895','-78.1234','2027-06-01','2023-05-01','2023-06-01');

INSERT INTO district_renewable_energy_asset_log VALUES
('A002','D001','Wind Turbine','2021-03-15',1500,'Vestas','V-1500',20,'Operational','2023-04-15',12,2500,1800,'Energy Fund','2021-03-15','2041-03-15','Mark Steele','35.7000','-78.1300','2026-03-15','2023-04-15','2023-06-02');

INSERT INTO district_renewable_energy_asset_log VALUES
('A003','D002','Solar Panel','2023-01-20',1800,'First Solar','FS-1800',25,'Operational','2023-06-20',12,2100,1500,'State Incentive','2023-01-20','2048-01-20','Nina Patel','36.0010','-78.5000','2028-01-20','2023-06-20','2023-06-03');

-- Table: facility_waste_recycling_log
CREATE TABLE facility_waste_recycling_log
(
    LogID                   TEXT NOT NULL PRIMARY KEY,
    FacilityID              TEXT NOT NULL,
    LogDate                 DATE,
    WasteType               TEXT,
    WeightKg                REAL,
    RecycledWeightKg        REAL,
    DisposalMethod          TEXT,
    ContractorName          TEXT,
    ContractID              TEXT,
    Remarks                 TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    FOREIGN KEY (FacilityID) REFERENCES schools(CDSCode)
);

INSERT INTO facility_waste_recycling_log VALUES
('WL001','001234567','2023-06-01','General Waste',5000,1200,'Landfill','Eco Disposal','C001','Routine collection','2023-06-01','2023-06-02');

INSERT INTO facility_waste_recycling_log VALUES
('WL002','001234567','2023-06-15','Paper',800,750,'Recycling Center','Green Recycle','C002','High paper recycling rate','2023-06-15','2023-06-16');

INSERT INTO facility_waste_recycling_log VALUES
('WL003','001234568','2023-06-10','Electronic',200,180,'E-waste Facility','Tech Waste','C003','Collected old computers','2023-06-10','2023-06-11');

-- Table: technology_vendor_performance_metrics
CREATE TABLE technology_vendor_performance_metrics
(
    VendorID                TEXT NOT NULL PRIMARY KEY,
    VendorName              TEXT,
    ContractStartDate       DATE,
    ContractEndDate         DATE,
    ServiceCategory         TEXT,
    SLAUptimePercent        REAL,
    AvgResponseTimeHours    REAL,
    IncidentsThisYear       INTEGER,
    CriticalIncidents       INTEGER,
    TotalSpendUSD           REAL,
    ComplianceScore         INTEGER,
    SupportTicketResolutionRate INTEGER,
    OnSiteVisitCount        INTEGER,
    TrainingSessionsProvided INTEGER,
    CustomerSatisfactionScore INTEGER,
    PenaltyAmountUSD        REAL,
    LastAuditDate           DATE,
    AuditResult             TEXT,
    Notes                   TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE
);

INSERT INTO technology_vendor_performance_metrics VALUES
('V001','AlphaTech','2022-01-01','2025-12-31','Hardware','99.5',2.4,15,2,250000,88,95,8,3,90,10000,'2023-04-15','Pass','Met all SLA terms','2023-04-20','2023-04-21');

INSERT INTO technology_vendor_performance_metrics VALUES
('V002','BetaSolutions','2021-06-01','2024-05-31','Software','98.2',4.1,22,5,180000,80,88,5,2,85,15000,'2023-03-10','Conditional Pass','Improvement needed in response time','2023-03-15','2023-03-16');

INSERT INTO technology_vendor_performance_metrics VALUES
('V003','GammaServices','2023-02-01','2026-01-31','Consulting','97.0',5.0,10,1,120000,92,93,4,5,88,0,'2023-05-20','Pass','Exceeded expectations in training','2023-05-22','2023-05-23');

-- Table: parent_communication_preferences
CREATE TABLE parent_communication_preferences
(
    ParentID                TEXT NOT NULL PRIMARY KEY,
    StudentID               TEXT NOT NULL,
    PreferredLanguage       TEXT,
    ContactMethodEmail      INTEGER,
    ContactMethodSMS        INTEGER,
    ContactMethodPhone      INTEGER,
    PreferredContactTime    TEXT,
    OptInNewsletter         INTEGER,
    OptInEventAlerts        INTEGER,
    OptInEmergencyAlerts   INTEGER,
    EmailAddress            TEXT,
    PhoneNumber             TEXT,
    SMSNumber               TEXT,
    LastUpdated             DATE,
    CreatedDate             DATE,
    Notes                   TEXT,
    FOREIGN KEY (StudentID) REFERENCES student_attendance_records(StudentID)
);

INSERT INTO parent_communication_preferences VALUES
('P001','S001','English',1,0,1,'Evening',1,1,1,'parent1@example.com','555-0100','555-0100','2023-06-01','2022-09-01','Prefers email for newsletters','2023-06-02');

INSERT INTO parent_communication_preferences VALUES
('P002','S002','Spanish',0,1,0,'Morning',1,0,1,'parent2@example.com','555-0200','555-0201','2023-06-03','2022-10-15','Prefers SMS for alerts','2023-06-04');

INSERT INTO parent_communication_preferences VALUES
('P003','S003','Mandarin',1,1,0,'Afternoon',0,1,1,'parent3@example.com','555-0300','555-0302','2023-06-05','2023-01-20','Wants both email and SMS','2023-06-06');

-- Table: student_extracurricular_financials
CREATE TABLE student_extracurricular_financials
(
    RecordID                TEXT NOT NULL PRIMARY KEY,
    StudentID               TEXT NOT NULL,
    ActivityName            TEXT,
    AcademicYear            TEXT,
    FundingSource           TEXT,
    AmountAllocatedUSD      REAL,
    AmountSpentUSD          REAL,
    OutstandingBalanceUSD   REAL,
    SponsorshipDetails      TEXT,
    ExpenseCategory1        REAL,
    ExpenseCategory2        REAL,
    ExpenseCategory3        REAL,
    ExpenseCategory4        REAL,
    ExpenseCategory5        REAL,
    ApprovalDate            DATE,
    DisbursementDate        DATE,
    LastUpdated             DATE,
    CreatedDate             DATE,
    Notes                   TEXT,
    FOREIGN KEY (StudentID) REFERENCES student_attendance_records(StudentID)
);

INSERT INTO student_extracurricular_financials VALUES
('F001','S001','Robotics Club','2023-2024','School Budget',500,350,150,'Local Tech Sponsor',200,100,30,20,0,'2023-01-15','2023-02-01','2023-06-01','2023-01-10','Mid-year balance update');

INSERT INTO student_extracurricular_financials VALUES
('F002','S002','Drama Society','2023-2024','Grant',750,600,150,'Arts Foundation',300,200,50,30,20,'2023-02-10','2023-03-01','2023-06-02','2023-02-05','Tickets revenue pending');

INSERT INTO student_extracurricular_financials VALUES
('F003','S003','Soccer Team','2023-2024','Parent Contributions',400,380,20,'Community Fund',250,80,30,10,10,'2023-03-05','2023-04-01','2023-06-03','2023-03-01','Equipment purchase completed');

-- Table: district_equity_initiative_fund
CREATE TABLE district_equity_initiative_fund
(
    FundID                  TEXT NOT NULL PRIMARY KEY,
    DistrictCode            TEXT NOT NULL,
    InitiativeName          TEXT,
    LaunchDate              DATE,
    TotalAllocatedUSD       REAL,
    TotalSpentUSD           REAL,
    RemainingBalanceUSD     REAL,
    TargetPopulation        TEXT,
    EligibilityCriteria    TEXT,
    ReportingFrequency     TEXT,
    LastReportDate          DATE,
    NextReportDueDate       DATE,
    ManagingOffice          TEXT,
    LeadCoordinator         TEXT,
    ContactEmail            TEXT,
    ContactPhone            TEXT,
    Metric1Name             TEXT,
    Metric1Value            REAL,
    Metric2Name             TEXT,
    Metric2Value            REAL,
    Metric3Name             TEXT,
    Metric3Value            REAL,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    FOREIGN KEY (DistrictCode) REFERENCES schools(District)
);

INSERT INTO district_equity_initiative_fund VALUES
('EQ001','D001','Early Literacy Boost','2022-09-01',200000,120000,80000,'Low-income Students','Family income below 185% FPL','Quarterly','2023-03-15','2023-06-15','Equity Office','Maria Lopez','maria.lopez@example.com','555-1000','Reading Gains','85.5','Attendance Improvement','92.0','Parent Engagement','78.0','2023-01-01','2023-05-01');

INSERT INTO district_equity_initiative_fund VALUES
('EQ002','D001','STEM Access Grant','2023-01-15',150000,60000,90000,'Underrepresented Minorities','Gender and ethnicity criteria','Semiannual','2023-04-20','2023-10-20','STEM Office','James Kim','james.kim@example.com','555-1100','Project Completion','70.0','Student Participation','55.0','Teacher Training','40.0','2023-02-01','2023-06-01');

INSERT INTO district_equity_initiative_fund VALUES
('EQ003','D002','Nutrition Support Initiative','2021-08-01',300000,250000,50000,'Food Insecure Households','Eligibility via SNAP','Annual','2023-01-10','2024-01-10','Health Office','Linda Chen','linda.chen@example.com','555-1200','Meal Participation','95.0','BMI Reduction','3.2','Family Outreach','120.0','2023-01-05','2023-07-01');