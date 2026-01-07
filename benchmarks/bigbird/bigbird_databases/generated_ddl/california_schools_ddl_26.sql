-- District infrastructure assets details
CREATE TABLE district_infrastructure_assets_extended (
    AssetID INTEGER PRIMARY KEY,
    AssetType TEXT,
    AssetName TEXT,
    AcquisitionDate DATE,
    Cost REAL,
    Vendor TEXT,
    WarrantyYears INTEGER,
    ServiceLifeYears INTEGER,
    LocationDescription TEXT,
    Latitude REAL,
    Longitude REAL,
    ConditionRating INTEGER,
    LastInspectionDate DATE,
    InspectionScore REAL,
    MaintenanceIntervalMonths INTEGER,
    LastMaintenanceDate DATE,
    ExpectedReplacementYear INTEGER,
    FundingSource TEXT,
    DepreciationRate REAL,
    CurrentValue REAL,
    AssignedDistrictCode TEXT,
    AssignedSchoolCode TEXT,
    Notes TEXT
);
INSERT INTO district_infrastructure_assets_extended VALUES (1,'Building','CentralOffice','2010-06-15',2500000,'ConstructCo',10,40,'Main campus north',45.1234,-93.1234,9,'2023-05-01',95.5,12,'2023-04-01',2030,'Bond',0.02,2000000,'D001','SC001','Renovated lobby in 2022');
INSERT INTO district_infrastructure_assets_extended VALUES (2,'Vehicle','SchoolBusA','2018-09-01',120000,'AutoMakers','5',12,'Depot 3',45.1240,-93.1240,8,'2023-06-10',88.0,6,'2023-05-15',2028,'Grant',0.015,95000,'D001','SC002','Repainted exterior 2023');
INSERT INTO district_infrastructure_assets_extended VALUES (3,'Equipment','ScienceLabMicroscope','2015-03-20',15000,'LabSupplies','3',7,'Science Wing',45.1225,-93.1225,7,'2023-01-20',80.0,24,'2022-12-20',2022,'DistrictFund',0.05,7500,'D001','SC003','Calibration completed 2023');

-- School energy audit measurements
CREATE TABLE school_energy_audit_measurements (
    AuditID INTEGER PRIMARY KEY,
    SchoolCDSCode TEXT,
    AuditDate DATE,
    AuditorName TEXT,
    BuildingAreaSqFt REAL,
    LightingPowerKW REAL,
    HVACPowerKW REAL,
    PlugLoadKW REAL,
    PeakDemandKW REAL,
    AnnualEnergyUseKWh REAL,
    EnergyCostUSD REAL,
    CO2EmissionsTons REAL,
    RecommendedSavingsKWh REAL,
    RecommendedSavingsUSD REAL,
    ImplementationStatus TEXT,
    ExpectedSavingsYear INTEGER,
    FundingProgram TEXT,
    Comment TEXT,
    Latitude REAL,
    Longitude REAL
);
INSERT INTO school_energy_audit_measurements VALUES (101,'CDS001','2023-02-15','EnergyCo','35000',120.5,200.3,80.2,310.0,950000,110000,450,120000,15000,'Planned',2025,'StateIncentive','Upgrade lighting to LEDs',45.1230,-93.1230);
INSERT INTO school_energy_audit_measurements VALUES (102,'CDS002','2023-03-10','GreenAudit','42000',130.0,210.0,85.0,340.0,1050000,120000,500,130000,18000,'InProgress',2024,'Grant','Install variable frequency drives',45.1240,-93.1240);
INSERT INTO school_energy_audit_measurements VALUES (103,'CDS003','2023-01-20','EcoInspect','28000',100.0,180.0,70.0,250.0,800000,95000,380,100000,13000,'Completed',2023,'DistrictFund','Improve insulation',45.1220,-93.1220);

-- Community health center statistics
CREATE TABLE community_health_center_statistics (
    CenterID INTEGER PRIMARY KEY,
    CenterName TEXT,
    County TEXT,
    City TEXT,
    ZipCode TEXT,
    ServiceStartDate DATE,
    TotalPatients INTEGER,
    NewPatientsLastYear INTEGER,
    AnnualVisits INTEGER,
    AvgVisitDurationMinutes REAL,
    StaffCount INTEGER,
    Physicians INTEGER,
    Nurses INTEGER,
    MentalHealthCounselors INTEGER,
    DentalClinicians INTEGER,
    VaccinationsAdministered INTEGER,
    ChronicDiseaseManagementCount INTEGER,
    OutreachEventsAnnual INTEGER,
    FundingSource TEXT,
    OperationalBudgetUSD REAL,
    PatientSatisfactionScore REAL
);
INSERT INTO community_health_center_statistics VALUES (1,'RiverValleyHealth','CountyA','Rivertown','12345','2005-04-01',15000,1200,45000,30.5,45,10,20,5,3,8000,2500,12,'CountyGrant',850000,4.5);
INSERT INTO community_health_center_statistics VALUES (2,'MountainPeakClinic','CountyB','Hillcity','23456','2010-09-15',12000,900,35000,28.0,35,8,15,4,2,6000,1800,8,'StateFund',650000,4.2);
INSERT INTO community_health_center_statistics VALUES (3,'LakesideFamilyCare','CountyC','Lakeview','34567','2018-01-20',8000,500,20000,25.0,25,5,10,3,1,3000,900,5,'PrivateDonations',400000,4.7);

-- Afterschool program evaluations
CREATE TABLE afterschool_program_evaluations (
    EvaluationID INTEGER PRIMARY KEY,
    ProgramID INTEGER,
    SchoolCDSCode TEXT,
    EvaluationDate DATE,
    EvaluatorName TEXT,
    ProgramName TEXT,
    ParticipantCount INTEGER,
    AttendanceRatePercent REAL,
    AcademicImprovementScore REAL,
    SocialSkillImprovementScore REAL,
    ParentSatisfactionScore REAL,
    StaffTurnoverRatePercent REAL,
    BudgetUtilizationPercent REAL,
    FundingSource TEXT,
    RecommendedChanges TEXT,
    ImplementationStatus TEXT,
    FollowUpDate DATE,
    Notes TEXT,
    Latitude REAL,
    Longitude REAL
);
INSERT INTO afterschool_program_evaluations VALUES (201,10,'CDS001','2023-04-01','EvalTeamA','STEMClub',45,92.5,3.8,4.2,4.6,5.0,88.0,'Grant','Add robotics module','Approved','2023-07-01','Positive feedback','45.1230','-93.1230');
INSERT INTO afterschool_program_evaluations VALUES (202,11,'CDS002','2023-05-15','EvalTeamB','ArtEnrichment',30,85.0,2.5,3.9,4.1,7.5,90.0,'DistrictFund','Hire additional art instructor','Pending','2023-09-01','Need more supplies','45.1240','-93.1240');
INSERT INTO afterschool_program_evaluations VALUES (203,12,'CDS003','2023-03-20','EvalTeamC','LanguageLab',25,78.0,3.2,4.0,4.3,6.0,85.0,'StateGrant','Extend hours to evenings','Completed','2023-06-15','High engagement','45.1220','-93.1220');

-- Technology software license inventory
CREATE TABLE technology_software_license_inventory (
    LicenseID INTEGER PRIMARY KEY,
    SoftwareName TEXT,
    Vendor TEXT,
    LicenseType TEXT,
    Version TEXT,
    PurchaseDate DATE,
    ExpirationDate DATE,
    SeatCount INTEGER,
    AssignedDepartment TEXT,
    AssignedSchoolCDSCode TEXT,
    CostUSD REAL,
    MaintenanceContract BOOLEAN,
    MaintenanceExpiry DATE,
    LicenseKey TEXT,
    UsageComplianceScore REAL,
    LastAuditDate DATE,
    AuditResult TEXT,
    Comments TEXT,
    Latitude REAL,
    Longitude REAL
);
INSERT INTO technology_software_license_inventory VALUES (301,'OfficeSuite','TechCorp','Enterprise','2022.3','2022-01-10','2025-01-09',500,'Administration','CDS001',125000,1,'2024-01-09','ABCDEF123456','9.5','2023-06-01','Compliant','Renewed 2023','45.1230','-93.1230');
INSERT INTO technology_software_license_inventory VALUES (302,'LearningPlatform','EduSoft','SiteLicense','5.7','2021-08-15','2024-08-14',300,'Teaching','CDS002',75000,1,'2023-08-14','XYZ789GHJ','8.8','2023-05-15','Compliant','Pending upgrade','45.1240','-93.1240');
INSERT INTO technology_software_license_inventory VALUES (303,'SecuritySuite','SecureInc','Perpetual','3.2','2019-03-20','2099-12-31',200,'IT','CDS003',50000,0,NULL,'SEC12345','9.0','2023-04-20','Compliant','No action needed','45.1220','-93.1220');

-- Student extracurricular funding records
CREATE TABLE student_extracurricular_funding (
    FundingID INTEGER PRIMARY KEY,
    SchoolCDSCode TEXT,
    ProgramName TEXT,
    FiscalYear TEXT,
    FundingSource TEXT,
    AmountAllocatedUSD REAL,
    AmountSpentUSD REAL,
    RemainingBalanceUSD REAL,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    ExpenditureCategory TEXT,
    Vendor TEXT,
    InvoiceCount INTEGER,
    Notes TEXT,
    LastUpdate DATE,
    ComplianceFlag BOOLEAN,
    AuditTrail TEXT,
    Latitude REAL,
    Longitude REAL,
    ContactEmail TEXT
);
INSERT INTO student_extracurricular_funding VALUES (401,'CDS001','Robotics','2023','Grant','20000','15000','5000','DrSmith','2023-01-15','Equipment','RoboticsCo',12,'Mid-year purchase','2023-06-01',1,'Audit2023Q2','45.1230','-93.1230','admin@school.org');
INSERT INTO student_extracurricular_funding VALUES (402,'CDS002','DramaClub','2023','DistrictFund','15000','12000','3000','MsLee','2023-02-10','Costumes','StageSupply',8,'Costume refresh','2023-05-20',1,'Audit2023Q2','45.1240','-93.1240','drama@school.org');
INSERT INTO student_extracurricular_funding VALUES (403,'CDS003','JazzBand','2023','CommunityDonations','18000','16000','2000','MrBrown','2023-03-05','Instruments','MusicGear',10,'Instrument maintenance','2023-07-01',1,'Audit2023Q2','45.1220','-93.1220','music@school.org');

-- Library digital media licenses
CREATE TABLE library_digital_media_licenses (
    LicenseID INTEGER PRIMARY KEY,
    LibraryID TEXT,
    MediaTitle TEXT,
    MediaType TEXT,
    Publisher TEXT,
    LicenseStartDate DATE,
    LicenseEndDate DATE,
    ConcurrentUsers INTEGER,
    AccessURL TEXT,
    CostUSD REAL,
    RenewalOption BOOLEAN,
    RenewalCostUSD REAL,
    UsageMetricsMonthly INTEGER,
    LastUsageReport DATE,
    ComplianceStatus TEXT,
    Notes TEXT,
    ContactPerson TEXT,
    ContactEmail TEXT,
    Latitude REAL,
    Longitude REAL
);
INSERT INTO library_digital_media_licenses VALUES (501,'LIB001','ClassicLiteratureCollection','eBook','PubHouse','2022-01-01','2024-12-31',100,'http://librarydigital.com/cls','12000',1,'13000','5000','2023-06-01','Compliant','Renewal pending','John Doe','jdoe@library.org','45.1230','-93.1230');
INSERT INTO library_digital_media_licenses VALUES (502,'LIB002','ScienceJournalArchive','Journal','SciPub','2021-06-15','2023-06-14',50,'http://librarydigital.com/sci','8000',0,NULL,'3000','2023-05-15','Compliant','Expired','Jane Smith','jsmith@library.org','45.1240','-93.1240');
INSERT INTO library_digital_media_licenses VALUES (503,'LIB003','MusicStreamingService','Audio','MusicCo','2023-03-01','2025-02-28',200,'http://librarydigital.com/music','15000',1,'16000','7000','2023-07-01','Compliant','New contract','Mike Lee','mlee@library.org','45.1220','-93.1220');

-- School parking permit details
CREATE TABLE school_parking_permit_details (
    PermitID INTEGER PRIMARY KEY,
    SchoolCDSCode TEXT,
    PermitNumber TEXT,
    PermitHolderName TEXT,
    PermitHolderRole TEXT,
    VehicleMake TEXT,
    VehicleModel TEXT,
    VehicleYear INTEGER,
    LicensePlate TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    PermitType TEXT,
    ParkingZone TEXT,
    DailyRateUSD REAL,
    MonthlyRateUSD REAL,
    PaidAmountUSD REAL,
    PaymentDate DATE,
    Status TEXT,
    Notes TEXT,
    Latitude REAL,
    Longitude REAL
);
INSERT INTO school_parking_permit_details VALUES (601,'CDS001','P001','Alice Johnson','Teacher','Toyota','Camry',2018,'ABC123','2023-01-01','2023-12-31','Staff','ZoneA',5.0,100.0,100.0,'2023-01-05','Active','Renewal due Nov','45.1230','-93.1230');
INSERT INTO school_parking_permit_details VALUES (602,'CDS002','P002','Bob Smith','Administrator','Ford','F-150',2020,'XYZ789','2023-02-15','2024-02-14','Administrator','ZoneB',6.0,120.0,120.0,'2023-02-20','Active','', '45.1240','-93.1240');
INSERT INTO school_parking_permit_details VALUES (603,'CDS003','P003','Carol Lee','Student','Honda','Civic',2019,'LMN456','2023-03-01','2023-08-31','Student','ZoneC',3.0,60.0,30.0,'2023-03-05','Pending','Half paid','45.1220','-93.1220');

-- Faculty research collaboration projects
CREATE TABLE faculty_research_collaboration_projects (
    ProjectID INTEGER PRIMARY KEY,
    FacultyID TEXT,
    FacultyName TEXT,
    Department TEXT,
    ProjectTitle TEXT,
    FundingAgency TEXT,
    GrantNumber TEXT,
    StartDate DATE,
    EndDate DATE,
    TotalBudgetUSD REAL,
    AmountSpentUSD REAL,
    PartnerInstitution TEXT,
    PartnerContact TEXT,
    CollaborationType TEXT,
    PublicationCount INTEGER,
    PatentCount INTEGER,
    Status TEXT,
    LastProgressReportDate DATE,
    Notes TEXT,
    Latitude REAL,
    Longitude REAL
);
INSERT INTO faculty_research_collaboration_projects VALUES (701,'F001','Dr Emily Clark','Biology','PlantGenomics','NSF','NSF12345','2022-07-01','2025-06-30',300000,120000,'UniversityX','Dr Alan Green','Joint','3','1','Active','2023-05-01','On track','45.1230','-93.1230');
INSERT INTO faculty_research_collaboration_projects VALUES (702,'F002','Prof Mark Davis','ComputerScience','AI Ethics','DOE','DOE67890','2021-01-15','2024-12-31',250000,200000,'InstituteY','Dr Susan White','Consortium','5','0','NearCompletion','2023-04-15','Preparing final report','45.1240','-93.1240');
INSERT INTO faculty_research_collaboration_projects VALUES (703,'F003','Dr Linda Patel','Chemistry','NanoCatalysts','NIH','NIH54321','2023-03-01','2026-02-28',400000,50000,'LabZ','Dr Kevin Brown','Collaboration','1','0','Active','2023-06-10','Initial experiments','45.1220','-93.1220');

-- District emergency resource stockpile
CREATE TABLE district_emergency_resource_stockpile (
    ResourceID INTEGER PRIMARY KEY,
    ResourceType TEXT,
    Description TEXT,
    QuantityOnHand INTEGER,
    Unit TEXT,
    ReorderLevel INTEGER,
    SupplierName TEXT,
    LastRestockDate DATE,
    ExpirationDate DATE,
    StorageLocation TEXT,
    AssignedDistrictCode TEXT,
    AssignedSchoolCode TEXT,
    CostPerUnitUSD REAL,
    TotalValueUSD REAL,
    InspectionDate DATE,
    InspectionStatus TEXT,
    ResponsibleOfficer TEXT,
    ContactPhone TEXT,
    Latitude REAL,
    Longitude REAL
);
INSERT INTO district_emergency_resource_stockpile VALUES (801,'Water','BottledWater','5000','Liters',1000,'AquaSupply','2023-01-10','2025-01-09','WarehouseA','D001','SC001',0.5,2500,'2023-06-01','Good','John Miller','5551234567',45.1230,-93.1230);
INSERT INTO district_emergency_resource_stockpile VALUES (802,'Food','CannedBeans','3000','Cans',500,'FoodSupplier','2023-02-20','2026-02-19','WarehouseB','D001','SC002',1.2,3600,'2023-05-15','Good','Sarah Lee','5559876543',45.1240,-93.1240);
INSERT INTO district_emergency_resource_stockpile VALUES (803,'Medical','FirstAidKits','200','Kits',50,'MediSupply','2023-03-05','2024-03-04','WarehouseC','D001','SC003',25.0,5000,'2023-04-20','InspectionDue','Mike Adams','5555551234',45.1220,-93.1220);