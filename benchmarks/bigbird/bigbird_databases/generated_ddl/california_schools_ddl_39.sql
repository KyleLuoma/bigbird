-- School Bus Driver Assignments
CREATE TABLE school_bus_driver_assignments (
    AssignmentID INTEGER PRIMARY KEY,
    BusID TEXT,
    DriverID TEXT,
    RouteNumber TEXT,
    StartDate DATE,
    EndDate DATE,
    AssignedHours INTEGER,
    ShiftType TEXT,
    MaxCapacity INTEGER,
    DepotLocation TEXT,
    ContactNumber TEXT,
    LicenseExpiration DATE,
    TrainingCompleted INTEGER,
    SafetyScore REAL,
    MileageAllowance REAL,
    VehicleCondition TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    ActiveFlag INTEGER
);

INSERT INTO school_bus_driver_assignments VALUES (1,'BUS1001','DRV001','R12','2023-09-01','2024-06-30',40,'Day','56','DepotA','5551234567','2025-05-01',1,95.5,150.0,'Good','First assignment','2023-08-01','2023-08-01',1);
INSERT INTO school_bus_driver_assignments VALUES (2,'BUS1002','DRV002','R15','2023-09-01','2024-06-30',35,'Evening','58','DepotB','5559876543','2024-11-15',1,92.0,130.0,'Excellent','Seasonal driver','2023-08-02','2023-08-02',1);
INSERT INTO school_bus_driver_assignments VALUES (3,'BUS1003','DRV003','R18','2023-09-01','2024-06-30',30,'Night','60','DepotC','5555551212','2026-01-20',0,88.0,120.0,'Fair','New hire','2023-08-03','2023-08-03',0);


-- District Solar Energy Metrics
CREATE TABLE district_solar_energy_metrics (
    MetricID INTEGER PRIMARY KEY,
    FiscalYear TEXT,
    TotalCapacityMW REAL,
    AvgDailyGenerationMWh REAL,
    PeakGenerationMW REAL,
    TotalInverters INTEGER,
    AvgInverterEfficiency REAL,
    SolarPanelAreaSqM REAL,
    MaintenanceCost REAL,
    SavingsUSD REAL,
    CO2ReductionTons REAL,
    GrantsReceived REAL,
    VendorName TEXT,
    InstallationDate DATE,
    WarrantyExpiration DATE,
    MonitoringSystem TEXT,
    Latitude REAL,
    Longitude REAL,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO district_solar_energy_metrics VALUES (1,'2022-2023',12.5,45.2,6.8,150,96.5,25000,15000,200000,1500,50000,'SunPower','2022-03-15','2032-03-15','SolTrack',34.0522,-118.2437,'2023-01-01','2023-01-01');
INSERT INTO district_solar_energy_metrics VALUES (2,'2023-2024',14.0,50.0,7.2,160,97.0,28000,16000,220000,1650,60000,'FirstSolar','2023-04-20','2033-04-20','SolarWatch',36.1699,-115.1398,'2023-01-02','2023-01-02');
INSERT INTO district_solar_energy_metrics VALUES (3,'2024-2025',15.3,55.5,8.0,170,97.8,30000,17000,240000,1800,70000,'TeslaEnergy','2024-05-10','2034-05-10','EnergyMonitor',40.7128,-74.0060,'2023-01-03','2023-01-03');


-- Teacher Peer Review Sessions
CREATE TABLE teacher_peer_review_sessions (
    ReviewID INTEGER PRIMARY KEY,
    TeacherID TEXT,
    PeerTeacherID TEXT,
    SessionDate DATE,
    SessionDurationMinutes INTEGER,
    ReviewType TEXT,
    FocusArea TEXT,
    RatingScore REAL,
    Comments TEXT,
    FollowUpActions TEXT,
    DocumentLink TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Status TEXT,
    Department TEXT,
    SchoolCode TEXT,
    AcademicYear TEXT,
    SessionMode TEXT,
    ConfidentialFlag INTEGER,
    RecordedFlag INTEGER
);

INSERT INTO teacher_peer_review_sessions VALUES (1,'TCH001','TCH010','2023-10-05',90,'Observation','ClassroomManagement',4.5,'Effective use of technology','Plan joint lesson','/docs/review1.pdf','2023-09-30','2023-10-06','Completed','Math','SCH100','2023-2024','InPerson',1,0);
INSERT INTO teacher_peer_review_sessions VALUES (2,'TCH002','TCH011','2023-11-12',75,'Instructional','DifferentiatedInstruction',4.0,'Needs more scaffolding','Provide support materials','/docs/review2.pdf','2023-10-20','2023-11-13','Completed','Science','SCH101','2023-2024','Virtual',1,1);
INSERT INTO teacher_peer_review_sessions VALUES (3,'TCH003','TCH012','2023-12-01',60,'Collaboration','AssessmentDesign',3.8,'Assessment alignment weak','Revise rubric','/docs/review3.pdf','2023-11-15','2023-12-02','Pending','English','SCH102','2023-2024','InPerson',0,0);


-- Student International Trip Log
CREATE TABLE student_international_trip_log (
    TripID INTEGER PRIMARY KEY,
    StudentID TEXT,
    DestinationCountry TEXT,
    DestinationCity TEXT,
    DepartureDate DATE,
    ReturnDate DATE,
    Purpose TEXT,
    SponsoringOrg TEXT,
    ApprovalStatus TEXT,
    TravelCostUSD REAL,
    ScholarshipAwarded REAL,
    EmergencyContactName TEXT,
    EmergencyContactPhone TEXT,
    VisaStatus TEXT,
    PassportNumber TEXT,
    InsuranceProvider TEXT,
    InsurancePolicyNumber TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    TripOutcome TEXT
);

INSERT INTO student_international_trip_log VALUES (1,'STU1001','France','Paris','2023-06-01','2023-06-15','CulturalExchange','GlobalEd','Approved',3500,1500,'John Doe','5551112222','Approved','P1234567','TravelGuard','TG98765','2023-04-01','2023-06-16','Successful');
INSERT INTO student_international_trip_log VALUES (2,'STU1002','Japan','Tokyo','2023-07-10','2023-07-25','STEMTour','TechBridge','Pending',4000,2000,'Jane Smith','5553334444','Pending','P7654321','SecureTravel','ST12345','2023-05-10','2023-07-26','Pending');
INSERT INTO student_international_trip_log VALUES (3,'STU1003','Brazil','Rio','2023-08-05','2023-08-20','LanguageImmersion','LinguaWorld','Approved',3000,1000,'Mike Brown','5555556666','Approved','P9876543','TravelSafe','TS54321','2023-06-01','2023-08-21','Successful');


-- Facility Waste Audit
CREATE TABLE facility_waste_audit (
    AuditID INTEGER PRIMARY KEY,
    FacilityID TEXT,
    AuditDate DATE,
    TotalWasteKg REAL,
    RecyclableKg REAL,
    CompostKg REAL,
    HazardousKg REAL,
    LandfillKg REAL,
    WasteDiversionRate REAL,
    AuditorName TEXT,
    FindingsSummary TEXT,
    Recommendations TEXT,
    FollowUpDate DATE,
    CreatedAt DATE,
    UpdatedAt DATE,
    AuditStatus TEXT,
    WasteVendor TEXT,
    ContractNumber TEXT,
    SeasonalVariation TEXT,
    Notes TEXT,
    ComplianceFlag INTEGER
);

INSERT INTO facility_waste_audit VALUES (1,'FAC001','2023-09-15',1200,400,250,50,500,0.58,'Alice Green','High recyclable ratio','Increase compost bins','2023-10-15','2023-09-16','Completed','GreenWasteCo','C001','Winter','No issues',1);
INSERT INTO facility_waste_audit VALUES (2,'FAC002','2023-09-20',1500,300,200,80,920,0.33,'Bob White','Hazardous waste above threshold','Improve disposal procedures','2023-11-01','2023-09-21','InProgress','EcoDispose','C002','Spring','Follow up needed',0);
INSERT INTO facility_waste_audit VALUES (3,'FAC003','2023-09-25',900,500,150,30,220,0.72,'Carol Black','Excellent diversion','Maintain current program','2023-12-01','2023-09-26','Completed','ZeroWasteInc','C003','Summer','Outstanding performance',1);


-- Community Volunteer Projects
CREATE TABLE community_volunteer_projects (
    ProjectID INTEGER PRIMARY KEY,
    ProjectName TEXT,
    LeadOrg TEXT,
    StartDate DATE,
    EndDate DATE,
    TargetCommunity TEXT,
    VolunteerHoursGoal INTEGER,
    VolunteersRegistered INTEGER,
    VolunteersActual INTEGER,
    FundingAmountUSD REAL,
    InKindContributionsUSD REAL,
    ProjectStatus TEXT,
    CoordinatorName TEXT,
    CoordinatorPhone TEXT,
    LocationAddress TEXT,
    Latitude REAL,
    Longitude REAL,
    OutcomeSummary TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    ImpactScore REAL
);

INSERT INTO community_volunteer_projects VALUES (1,'ParkCleanup','GreenCity','2023-04-01','2023-04-05','Downtown','800',120,110,20000,5000,'Completed','Laura Hill','5557778888','123 Main St',34.0522,-118.2437,'Removed 5 tons of litter',2023-03-20,2023-04-06,85.5);
INSERT INTO community_volunteer_projects VALUES (2,'FoodBankDistribution','HelpingHands','2023-05-10','2023-05-12','WestSide','600',80,75,15000,3000,'Completed','Mark Reed','5559990000','456 Oak Ave',36.1699,-115.1398,'Distributed 2000 meals',2023-04-30,2023-05-13,78.2);
INSERT INTO community_volunteer_projects VALUES (3,'SeniorTechWorkshop','TechForAll','2023-06-15','2023-06-20','EastSide','400',50,48,10000,2000,'Ongoing','Nina Patel','5551113333','789 Pine Rd',40.7128,-74.0060,'Trained 45 seniors',2023-06-01,2023-06-21,82.0);


-- School Cafeteria Nutrition Analysis
CREATE TABLE school_cafeteria_nutrition_analysis (
    AnalysisID INTEGER PRIMARY KEY,
    CafeteriaID TEXT,
    AnalysisDate DATE,
    TotalMealsServed INTEGER,
    AvgCaloriesPerMeal REAL,
    AvgProteinGrams REAL,
    AvgSodiumMg REAL,
    SugarGrams REAL,
    FiberGrams REAL,
    FruitVegetablePct REAL,
    WholeGrainPct REAL,
    MilkType TEXT,
    AllergyIncidents INTEGER,
    VendorName TEXT,
    CostPerMealUSD REAL,
    NutrientScore REAL,
    CreatedAt DATE,
    UpdatedAt DATE,
    AnalystName TEXT,
    Comments TEXT,
    ComplianceFlag INTEGER
);

INSERT INTO school_cafeteria_nutrition_analysis VALUES (1,'CAF001','2023-08-01',12000,550,25,800,45,5,0.35,0.40,'LowFat',2,'FreshFoods',3.5,78.0,'2023-07-15','2023-08-02','Emily Ross','Improved fruit options',1);
INSERT INTO school_cafeteria_nutrition_analysis VALUES (2,'CAF002','2023-08-05',15000,620,28,950,55,4,0.30,0.38,'Whole',1,'HealthyMeals',4.0,72.5,'2023-07-20','2023-08-06','Jacob Lee','Reduced sodium',0);
INSERT INTO school_cafeteria_nutrition_analysis VALUES (3,'CAF003','2023-08-10',10000,500,22,700,40,6,0.40,0.45,'Skim',0,'NutriServe',3.2,81.0,'2023-07-25','2023-08-11','Sofia Chen','Added whole grain breads',1);


-- Technology Device Software Updates
CREATE TABLE technology_device_software_updates (
    UpdateID INTEGER PRIMARY KEY,
    DeviceID TEXT,
    DeviceType TEXT,
    SerialNumber TEXT,
    CurrentOSVersion TEXT,
    TargetOSVersion TEXT,
    UpdatePackageName TEXT,
    UpdateSizeMB REAL,
    ScheduledDate DATE,
    CompletedDate DATE,
    UpdateStatus TEXT,
    InstallerName TEXT,
    RollbackFlag INTEGER,
    DowntimeMinutes INTEGER,
    ReleaseNotes TEXT,
    VendorSupportContact TEXT,
    WarrantyExpiration DATE,
    CreatedAt DATE,
    UpdatedAt DATE,
    SuccessMetric REAL
);

INSERT INTO technology_device_software_updates VALUES (1,'DEV1001','Laptop','SN12345','Win10','Win11','Win11_Upgrade','2500', '2023-09-01','2023-09-02','Success','ITTeamA',0,15,'Feature updates and security patches','support@vendor.com','2025-12-31','2023-08-20','2023-09-03',98.5);
INSERT INTO technology_device_software_updates VALUES (2,'DEV1002','Tablet','SN54321','iOS14','iOS15','iOS15_Upgrade','1200','2023-09-05','2023-09-05','Success','ITTeamB',0,5,'Performance improvements','help@apple.com','2024-06-30','2023-08-22','2023-09-06',97.2);
INSERT INTO technology_device_software_updates VALUES (3,'DEV1003','Desktop','SN67890','Win7','Win10','Win10_Upgrade','3000','2023-09-10',NULL,'Pending','ITTeamC',0,30,'Critical security update','support@ms.com','2026-03-31','2023-08-25','2023-09-11',0.0);


-- District Equity Initiative Fund
CREATE TABLE district_equity_initiative_fund (
    FundID INTEGER PRIMARY KEY,
    InitiativeName TEXT,
    StartFiscalYear TEXT,
    EndFiscalYear TEXT,
    TotalBudgetUSD REAL,
    AllocatedAmountUSD REAL,
    UnspentAmountUSD REAL,
    GrantProvider TEXT,
    GrantNumber TEXT,
    EligibilityCriteria TEXT,
    ApplicationDeadline DATE,
    NumberOfApplicants INTEGER,
    SelectedProjects INTEGER,
    MonitoringAgency TEXT,
    ReportingFrequency TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    FundStatus TEXT,
    PrimaryContactName TEXT,
    PrimaryContactPhone TEXT,
    ImpactScore REAL
);

INSERT INTO district_equity_initiative_fund VALUES (1,'BridgingTheGap','2023-2024','2025-2026',500000,350000,150000,'StateEducation','EQ001','LowIncomeSchools','2023-11-01',120,30,'EquityOffice','Quarterly','2023-09-01','2023-09-15','Active','Olivia Martin','5552223333',88.4);
INSERT INTO district_equity_initiative_fund VALUES (2,'STEMAccess','2024-2025','2026-2027',750000,500000,250000,'FederalGrant','EQ002','UnderrepresentedGroups','2024-02-15',200,45,'STEMBoard','Annual','2023-10-01','2023-10-10','Planned','Ethan Clark','5554445555',91.2);
INSERT INTO district_equity_initiative_fund VALUES (3,'ArtsEquity','2022-2023','2024-2025',300000,200000,100000,'PrivateFoundation','EQ003','RuralSchools','2022-09-30',80,20,'ArtsCouncil','SemiAnnual','2022-07-01','2022-07-15','Closed','Mia Rivera','5556667777',85.0);


-- School Arts Exhibit Catalog
CREATE TABLE school_arts_exhibit_catalog (
    ExhibitID INTEGER PRIMARY KEY,
    ExhibitName TEXT,
    CuratorName TEXT,
    StartDate DATE,
    EndDate DATE,
    Venue TEXT,
    TotalArtists INTEGER,
    TotalWorks INTEGER,
    EstimatedVisitors INTEGER,
    SponsoringOrg TEXT,
    FundingAmountUSD REAL,
    MediaType TEXT,
    AccessibilityRating REAL,
    SecurityLevel TEXT,
    InsuranceValueUSD REAL,
    CatalogURL TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    ExhibitTheme TEXT,
    PublicFeedbackScore REAL,
    Notes TEXT
);

INSERT INTO school_arts_exhibit_catalog VALUES (1,'Visions of Tomorrow','Anna Lee','2023-05-01','2023-06-15','ArtHallA',20,85,3000,'CommunityArts','15000','MixedMedia',4.5,'High','200000','/catalog/visions.html','2023-04-10','2023-06-16','Future','84.2','Featured local artists');
INSERT INTO school_arts_exhibit_catalog VALUES (2,'Nature Palette','David Kim','2023-09-10','2023-10-20','GalleryB',15,60,2500,'NatureFund','12000','Painting',4.0,'Medium','150000','/catalog/nature.html','2023-08-01','2023-10-21','Environment','78.9','Emphasis on sustainability');
INSERT INTO school_arts_exhibit_catalog VALUES (3,'Cultural Mosaic','Sofia Alvarez','2024-01-15','2024-02-28','ExhibitHall','25','110','4000','CulturalCenter','20000','Sculpture',4.8,'High','250000','/catalog/mosaic.html','2023-12-01','2024-03-01','Diversity','90.5','Includes interactive installations');