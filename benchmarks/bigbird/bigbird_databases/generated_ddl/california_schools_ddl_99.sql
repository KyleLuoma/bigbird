-- Community Health Clinics
CREATE TABLE community_health_clinics (
    ClinicID TEXT NOT NULL PRIMARY KEY,
    Name TEXT,
    County TEXT,
    City TEXT,
    StreetAddress TEXT,
    Zip TEXT,
    Phone TEXT,
    Type TEXT,
    OpeningDate DATE,
    Beds INTEGER,
    StaffCount INTEGER,
    AnnualBudget REAL,
    HoursWeekday TEXT,
    HoursWeekend TEXT,
    ServicesOffered TEXT,
    AccreditationStatus TEXT,
    Latitude REAL,
    Longitude REAL,
    LastUpdated DATE,
    ContactPerson TEXT
);
INSERT INTO community_health_clinics VALUES ('CLN001','Health Clinic Alpha','Orange','Orlando','123 Main St','32801','3215551234','PrimaryCare','2015-06-01',25,120,2500000.00,'08:00-17:00','09:00-14:00','GeneralMedicine,Dental','Accredited','28.5383','-81.3792','2024-12-01','John Doe');
INSERT INTO community_health_clinics VALUES ('CLN002','Wellness Center Beta','Miami-Dade','Miami','456 Ocean Ave','33101','3055555678','UrgentCare','2018-09-15',15,80,1800000.00,'07:00-18:00','08:00-12:00','UrgentCare,Pediatrics','Accredited','25.7617','-80.1918','2024-11-15','Jane Smith');
INSERT INTO community_health_clinics VALUES ('CLN003','Community Health Gamma','Broward','Fort Lauderdale','789 River Rd','33301','9545559012','FamilyHealth','2020-01-20',30,150,3200000.00,'09:00-16:00','10:00-13:00','FamilyMedicine,Immunizations','Pending','26.1224','-80.1373','2024-10-30','Alice Johnson');

-- District Infrastructure Assets
CREATE TABLE district_infrastructure_assets (
    AssetID TEXT NOT NULL PRIMARY KEY,
    AssetType TEXT,
    Description TEXT,
    AcquisitionDate DATE,
    Cost REAL,
    ConditionScore INTEGER,
    Latitude REAL,
    Longitude REAL,
    MaintenanceCycleMonths INTEGER,
    LastMaintenanceDate DATE,
    NextMaintenanceDate DATE,
    WarrantyEndDate DATE,
    Vendor TEXT,
    SerialNumber TEXT,
    DepreciationYears INTEGER,
    CurrentValue REAL,
    AssignedDistrict TEXT,
    ResponsibleDept TEXT,
    Status TEXT,
    UpdatedAt DATE
);
INSERT INTO district_infrastructure_assets VALUES ('AST001','HVAC','Central HVAC system for campus A','2012-05-10',850000.00,8,33.7490,-84.3880,12,'2024-01-15','2024-07-15','2027-05-10','CoolTech','HVAC12345',15,500000.00','District01','Facilities','Active','2024-12-01');
INSERT INTO district_infrastructure_assets VALUES ('AST002','SolarPanel','Solar array rooftop B','2018-08-22',420000.00,9,28.5383,-81.3792,24,'2024-04-05','2026-04-05','2028-08-22','SunPower','SOLAR67890',20,300000.00','District02','Energy','Active','2024-11-20');
INSERT INTO district_infrastructure_assets VALUES ('AST003','WaterPump','Main water pump for district C','2015-03-30',150000.00,7,30.3322,-81.6557,6,'2024-02-10','2024-08-10','2020-03-30','AquaSystems','WP202015',12,80000.00','District03','Utilities','Active','2024-12-10');

-- School Technology Projects
CREATE TABLE school_technology_projects (
    ProjectID TEXT NOT NULL PRIMARY KEY,
    SchoolID TEXT,
    ProjectName TEXT,
    StartDate DATE,
    EndDate DATE,
    FundingSource TEXT,
    Budget REAL,
    Vendor TEXT,
    DevicesCount INTEGER,
    SoftwareLicenses INTEGER,
    ProjectLead TEXT,
    Phase TEXT,
    Outcome TEXT,
    EvaluationScore REAL,
    RiskLevel TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Status TEXT,
    Category TEXT
);
INSERT INTO school_technology_projects VALUES ('PRJ001','SCH001','1:1 Laptop Initiative','2023-01-15','2023-12-31','FederalGrant',750000.00,'TechSupplyCo',500,250,'Emily Brown','Implementation','Completed','4.5','Low','Provided each student a laptop','2023-01-10','2024-01-05','Closed','Hardware');
INSERT INTO school_technology_projects VALUES ('PRJ002','SCH002','Smart Classroom Upgrade','2022-09-01','2023-06-30','StateFund',420000.00,'EduTech','200',100,'Michael Green','Deployment','PartialSuccess','3.8','Medium','Installed interactive whiteboards','2022-08-20','2024-02-12','Closed','Hardware');
INSERT INTO school_technology_projects VALUES ('PRJ003','SCH003','Learning Management System Migration','2024-02-01','2024-11-30','DistrictBudget',180000.00,'CloudEdu','0',300,'Sarah Lee','Planning','InProgress','N/A','High','Moving from legacy LMS to cloud platform','2024-01-25','2024-12-01','Active','Software');

-- District Renewable Energy Assets
CREATE TABLE district_renewable_energy_assets (
    AssetID TEXT NOT NULL PRIMARY KEY,
    FacilityName TEXT,
    EnergyType TEXT,
    CapacityMW REAL,
    InstallationDate DATE,
    Owner TEXT,
    Operator TEXT,
    Latitude REAL,
    Longitude REAL,
    AnnualGenerationMWh REAL,
    CO2AvoidedTonnes REAL,
    MaintenanceProvider TEXT,
    LastInspectionDate DATE,
    NextInspectionDate DATE,
    Status TEXT,
    PowerPurchaseAgreement TEXT,
    ContractEndDate DATE,
    FundingProgram TEXT,
    Cost REAL,
    UpdatedAt DATE
);
INSERT INTO district_renewable_energy_assets VALUES ('REN001','Solar Farm Alpha','Solar','5.0','2019-04-15','District Energy','SolarOps','33.7490','-84.3880',4200.0,3500.0,'SunCare','2024-03-01','2025-03-01','Active','PPA001','2029-04-15','GreenIncentive','4000000.00','2024-12-01');
INSERT INTO district_renewable_energy_assets VALUES ('REN002','Wind Park Beta','Wind','12.3','2021-07-20','District Energy','WindPowerCo','28.5383','-81.3792',86000.0,75000.0,'WindMaint','2024-05-10','2025-05-10','Active','PPA002','2031-07-20','RenewableGrant','12500000.00','2024-11-20');
INSERT INTO district_renewable_energy_assets VALUES ('REN003','Biomass Facility Gamma','Biomass','3.2','2020-11-05','District Energy','BioEnergy','30.3322','-81.6557',28000.0,22000.0','BioMaintain','2024-02-18','2025-02-18','Active','PPA003','2028-11-05','CleanTechFund','6000000.00','2024-12-10');

-- Community Parking Permits
CREATE TABLE community_parking_permits (
    PermitID TEXT NOT NULL PRIMARY KEY,
    PermitNumber TEXT,
    IssuerAgency TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    PermitType TEXT,
    VehicleCount INTEGER,
    OwnerName TEXT,
    OwnerAddress TEXT,
    OwnerPhone TEXT,
    Zone TEXT,
    Rate REAL,
    PaymentStatus TEXT,
    IssuedBy TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Status TEXT,
    Latitude REAL,
    Longitude REAL
);
INSERT INTO community_parking_permits VALUES ('PER001','P-1001','CityParkingDept','2023-03-01','2024-02-28','Residential',2,'Robert King','101 Oak St, Orlando','3215557777','ZoneA',120.00,'Paid','ClerkA','N/A','2023-02-20','2024-01-15','Active','28.5383','-81.3792');
INSERT INTO community_parking_permits VALUES ('PER002','P-2002','CountyParkingOffice','2022-07-15','2023-07-14','Commercial',5,'Laura Miles','202 Pine Ave, Miami','3055558888','ZoneB',250.00,'Unpaid','ClerkB','Late fee pending','2022-07-01','2023-06-30','Expired','25.7617','-80.1918');
INSERT INTO community_parking_permits VALUES ('PER003','P-3003','CityParkingDept','2024-01-10','2025-01-09','Residential',1,'Steven Patel','303 Maple Rd, Fort Lauderdale','9545559999','ZoneC',110.00,'Paid','ClerkC','New resident','2024-01-05','2024-12-20','Active','26.1224','-80.1373');

-- School Artifact Inventory
CREATE TABLE school_artifact_inventory (
    ArtifactID TEXT NOT NULL PRIMARY KEY,
    SchoolID TEXT,
    ArtifactName TEXT,
    Description TEXT,
    AcquisitionDate DATE,
    Origin TEXT,
    Category TEXT,
    Condition TEXT,
    Value REAL,
    LocationRoom TEXT,
    DisplayStatus TEXT,
    Conservator TEXT,
    LastAppraisalDate DATE,
    NextAppraisalDate DATE,
    InsurancePolicy TEXT,
    InsuredValue REAL,
    Custodian TEXT,
    PhotoReference TEXT,
    UpdatedAt DATE,
    Status TEXT
);
INSERT INTO school_artifact_inventory VALUES ('ART001','SCH001','Bronze Statue','Early 20th century bronze statue','2005-04-12','Italy','Sculpture','Good',15000.00,'Room101','OnDisplay','Maria Lopez','2023-03-10','2026-03-10','POL12345',18000.00,'John Doe','IMG001','2024-11-01','Active');
INSERT INTO school_artifact_inventory VALUES ('ART002','SCH002','Historic Flag','Original school flag from 1960','2010-09-05','USA','Textile','Fair',8000.00,'Room202','InStorage','David Kim','2022-08-22','2025-08-22','POL67890',9500.00,'Emily Brown','IMG002','2024-10-15','Active');
INSERT INTO school_artifact_inventory VALUES ('ART003','SCH003','Ancient Map','Map of Florida circa 1890','2018-06-20','USA','Cartography','Excellent',12000.00,'Room303','OnDisplay','Susan Clark','2024-01-12','2027-01-12','POL54321',14000.00,'Michael Green','IMG003','2024-12-05','Active');

-- District Public Art Installations
CREATE TABLE district_public_art_installations (
    InstallationID TEXT NOT NULL PRIMARY KEY,
    Title TEXT,
    Artist TEXT,
    InstallDate DATE,
    Location TEXT,
    Latitude REAL,
    Longitude REAL,
    Material TEXT,
    Dimensions TEXT,
    FundingSource TEXT,
    Cost REAL,
    Owner TEXT,
    MaintenancePlan TEXT,
    LastMaintenanceDate DATE,
    NextMaintenanceDate DATE,
    Status TEXT,
    PhotoURL TEXT,
    Description TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);
INSERT INTO district_public_art_installations VALUES ('INST001','Waves of Hope','Lena Rivera','2021-05-10','Central Plaza, Orlando','28.5383','-81.3792','Bronze','3x2x1m','CityArtsFund',75000.00,'CityCouncil','AnnualCleaning','2024-03-15','2025-03-15','Installed','http://example.com/img1.jpg','Abstract representation of community resilience','2021-04-01','2024-12-01');
INSERT INTO district_public_art_installations VALUES ('INST002','Sunrise Mosaic','Carlos Mendes','2019-09-22','Riverfront Park, Miami','25.7617','-80.1918','Tile','5x4m','StateCulturalGrant',50000.00,'StateArtsDept','BiannualRestoration','2024-05-20','2025-05-20','Installed','http://example.com/img2.jpg','Mosaic depicting local marine life','2019-08-15','2024-11-20');
INSERT INTO district_public_art_installations VALUES ('INST003','Tree of Knowledge','Aisha Khan','2022-11-05','University Campus, Fort Lauderdale','26.1224','-80.1373','Steel','6x6x2m','UniversityFund',90000.00,'UniversityBoard','QuarterlyInspection','2024-02-10','2024-08-10','Installed','http://example.com/img3.jpg','Steel sculpture symbolizing growth and learning','2022-10-10','2024-12-10');

-- School Mental Health Staffing
CREATE TABLE school_mental_health_staffing (
    StaffID TEXT NOT NULL PRIMARY KEY,
    SchoolID TEXT,
    Role TEXT,
    FirstName TEXT,
    LastName TEXT,
    HireDate DATE,
    Certification TEXT,
    HoursPerWeek INTEGER,
    Salary REAL,
    Email TEXT,
    Phone TEXT,
    LicenseNumber TEXT,
    LicenseExpiration DATE,
    Supervisor TEXT,
    Shift TEXT,
    Caseload INTEGER,
    Status TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT
);
INSERT INTO school_mental_health_staffing VALUES ('MH001','SCH001','Counselor','Olivia','Adams','2018-08-01','LIC123','30',62000.00,'olivia.adams@school.org','3215551111','LIC98765','2025-08-01','Principal Smith','Morning',120,'Active','2018-07-15','2024-12-01','Provides individual counseling');
INSERT INTO school_mental_health_staffing VALUES ('MH002','SCH002','Psychologist','Ethan','Baker','2020-01-15','LIC456','35',78000.00,'ethan.baker@school.org','3055552222','LIC54321','2026-01-15','Principal Lee','Afternoon',90,'Active','2020-01-01','2024-11-20','Leads group therapy sessions');
INSERT INTO school_mental_health_staffing VALUES ('MH003','SCH003','Social Worker','Mia','Chen','2019-05-20','LIC789','28',59000.00,'mia.chen@school.org','9545553333','LIC11223','2024-05-20','Principal Patel','Morning',75,'Active','2019-05-01','2024-10-15','Coordinates community referrals');

-- District Emergency Resource Stockpile
CREATE TABLE district_emergency_resource_stockpile (
    ResourceID TEXT NOT NULL PRIMARY KEY,
    ResourceType TEXT,
    Description TEXT,
    Quantity INTEGER,
    Unit TEXT,
    Location TEXT,
    Latitude REAL,
    Longitude REAL,
    AcquisitionDate DATE,
    ExpirationDate DATE,
    Supplier TEXT,
    CostPerUnit REAL,
    TotalCost REAL,
    Status TEXT,
    LastInspectionDate DATE,
    NextInspectionDate DATE,
    ResponsibleDept TEXT,
    ContactPerson TEXT,
    UpdatedAt DATE,
    Notes TEXT
);
INSERT INTO district_emergency_resource_stockpile VALUES ('RES001','Water','Bottled drinking water','5000','Gallons','Warehouse A','33.7490','-84.3880','2022-03-01','2025-03-01','AquaSupply','0.50',2500.00,'Available','2024-04-10','2025-04-10','Facilities','John Doe','2024-12-01','Stored in climate‑controlled area');
INSERT INTO district_emergency_resource_stockpile VALUES ('RES002','MedicalKit','Standard first‑aid kits','200','Units','Warehouse B','28.5383','-81.3792','2021-07-15','2024-07-15','MediSupply','15.00',3000.00,'Low','2024-02-05','2024-08-05','HealthServices','Jane Smith','2024-11-20','Inspected, some kits expired');
INSERT INTO district_emergency_resource_stockpile VALUES ('RES003','Generator','Portable diesel generators','30','Units','Warehouse C','30.3322','-81.6557','2020-11-20','2030-11-20','PowerGen','1200.00',36000.00,'Available','2024-01-18','2025-01-18','Operations','Alice Johnson','2024-12-10','Routine maintenance completed');

-- Community Fitness Center Usage
CREATE TABLE community_fitness_center_usage (
    CenterID TEXT NOT NULL PRIMARY KEY,
    CenterName TEXT,
    Address TEXT,
    City TEXT,
    Zip TEXT,
    OpenDate DATE,
    Capacity INTEGER,
    DailyVisitCount INTEGER,
    AvgVisitDurationMinutes INTEGER,
    MembershipCount INTEGER,
    StaffCount INTEGER,
    EquipmentCount INTEGER,
    WeeklyClasses INTEGER,
    HandicapAccessible TEXT,
    ParkingSpaces INTEGER,
    HoursWeekday TEXT,
    HoursWeekend TEXT,
    ManagerName TEXT,
    LastAuditDate DATE,
    UpdatedAt DATE
);
INSERT INTO community_fitness_center_usage VALUES ('FIT001','Sunrise Fitness','123 Wellness Blvd','Orlando','32801','2015-05-01',200,350,45,1200,15,250,12,'Yes',50,'06:00-22:00','08:00-20:00','Karen Lee','2024-09-15','2024-12-01');
INSERT INTO community_fitness_center_usage VALUES ('FIT002','Riverbend Gym','456 River Rd','Miami','33101','2018-09-15',150,280,40,900,12,180,8,'Yes',30,'05:30-23:00','07:00-19:00','Mark Davis','2024-08-20','2024-11-20');
INSERT INTO community_fitness_center_usage VALUES ('FIT003','Coastal Health Club','789 Ocean Ave','Fort Lauderdale','33301','2020-01-10',180,310,50,1100,14,220,10,'No',40,'06:30-21:30','08:30-18:30','Linda Martinez','2024-10-05','2024-12-15');