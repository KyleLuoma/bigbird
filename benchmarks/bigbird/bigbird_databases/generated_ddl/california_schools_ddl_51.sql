-- Student behavior intervention plans
CREATE TABLE student_behavior_intervention_plans (
    PlanID TEXT PRIMARY KEY,
    StudentID TEXT NOT NULL,
    SchoolCDSCode TEXT NOT NULL,
    InterventionStartDate DATE NOT NULL,
    InterventionEndDate DATE,
    TierLevel INTEGER NOT NULL,
    BehaviorCategory TEXT,
    TargetBehavior TEXT,
    ReplacementBehavior TEXT,
    PlanCreator TEXT,
    CreatorRole TEXT,
    ReviewDate DATE,
    ReviewOutcome TEXT,
    MonitoringFrequency INTEGER,
    DataSource TEXT,
    ResponsibleStaffID TEXT,
    StaffContactEmail TEXT,
    FundingSource TEXT,
    EstimatedCost REAL,
    ActualCost REAL,
    Status TEXT,
    Notes TEXT
);

INSERT INTO student_behavior_intervention_plans VALUES ('BP001','S12345','CDS001','2023-09-01','2024-06-30',2,'Attendance','Tardy','Arrive on time','JohnDoe','Counselor','2023-12-15','OnTrack',30,'AttendanceLogs','STF001','jdoe@school.org','TitleI',1500.00,1400.00,'Active','Initial plan created');
INSERT INTO student_behavior_intervention_plans VALUES ('BP002','S67890','CDS002','2023-10-15',NULL,3,'Disruptive','ClassroomTalking','Raise hand before speaking','JaneSmith','Behaviorist','2024-01-10','Pending',14,'ClassroomObservations','STF002','jsmith@school.org','GrantABC',2000.00,NULL,'Active','Waiting for end date');
INSERT INTO student_behavior_intervention_plans VALUES ('BP003','S24680','CDS003','2022-11-01','2023-05-31',1,'Academic','IncompleteHomework','Complete assignments','MikeBrown','Teacher','2023-02-20','Completed',7,'GradeReports','STF003','mbrown@school.org','DistrictFund',500.00,480.00,'Closed','Plan successful');

-- District transportation route analysis
CREATE TABLE district_transportation_route_analysis (
    AnalysisID TEXT PRIMARY KEY,
    RouteID TEXT NOT NULL,
    DistrictCode TEXT NOT NULL,
    AnalysisDate DATE NOT NULL,
    AvgTravelTime REAL,
    PeakTravelTime REAL,
    VehicleCount INTEGER,
    PassengerCount INTEGER,
    FuelConsumption REAL,
    EmissionsCO2 REAL,
    OnTimePerformance REAL,
    DelayReason TEXT,
    WeatherImpactScore REAL,
    RoadConditionScore REAL,
    MaintenanceNeeded INTEGER,
    SuggestedImprovements TEXT,
    AnalystName TEXT,
    AnalystContact TEXT,
    DataSource TEXT,
    Comments TEXT,
    ReviewStatus TEXT,
    ReviewDate DATE
);

INSERT INTO district_transportation_route_analysis VALUES ('AN001','R100','DC01','2023-11-01',35.2,45.6,12,250,420.5,112.3,92.5,'Traffic','0.8','0.9',2,'Add extra bus at peak','AliceGreen','agreen@district.org','GPS','Initial findings','Pending','2023-11-15');
INSERT INTO district_transportation_route_analysis VALUES ('AN002','R200','DC02','2023-10-15',28.7,38.0,8,180,310.2,82.7,95.0,'Construction','0.6','0.7',1,'Reschedule stops','BobWhite','bwhite@district.org','Ticketing','Follow up needed','Reviewed','2023-11-05');
INSERT INTO district_transportation_route_analysis VALUES ('AN003','R300','DC03','2023-09-30',42.0,55.3,15,320,560.0,150.0,88.0,'Weather','0.9','0.5',3,'Upgrade road surface','CarolBlack','cblack@district.org','Survey','Seasonal adjustments','InProgress','2023-10-20');

-- School cybersecurity policy
CREATE TABLE school_cybersecurity_policy (
    PolicyID TEXT PRIMARY KEY,
    SchoolCDSCode TEXT NOT NULL,
    EffectiveDate DATE NOT NULL,
    ReviewCycleMonths INTEGER,
    PasswordMinLength INTEGER,
    PasswordComplexityRequirement TEXT,
    MultiFactorAuthRequired TEXT,
    AllowedDevices TEXT,
    DeviceEncryptionStandard TEXT,
    NetworkSegmentation TEXT,
    DataRetentionPeriodDays INTEGER,
    IncidentResponsePlan TEXT,
    DataBreachNotificationProcedure TEXT,
    StaffTrainingFrequencyMonths INTEGER,
    LastTrainingDate DATE,
    ComplianceFramework TEXT,
    AuditFrequencyMonths INTEGER,
    LastAuditDate DATE,
    AuditorName TEXT,
    AuditFindings TEXT,
    Status TEXT,
    Comments TEXT
);

INSERT INTO school_cybersecurity_policy VALUES ('CP001','CDS001','2023-01-01',12,12,'UpperLowerDigitSpecial','Yes','SchoolOwned,PersonalBringYourOwn','AES256','Yes',365,'IRP_V1','NotifyWithin72Hours',6,'2023-06-01','NIST','12','2023-10-01','JohnAudit','No major findings','Active','Policy up to date');
INSERT INTO school_cybersecurity_policy VALUES ('CP002','CDS002','2022-07-15',12,10,'UpperLowerDigit','Yes','SchoolOwned','AES128','Partial',730,'IRP_V2','NotifyWithin48Hours',12,'2023-01-15','ISO27001','24','2023-09-15','EmilyAudit','Minor config issues','Active','Revision planned Q2');
INSERT INTO school_cybersecurity_policy VALUES ('CP003','CDS003','2023-03-01',6,14,'UpperLowerDigitSpecial','Yes','SchoolOwned,PersonalBYOD','AES256','Full',180,'IRP_V3','NotifyWithin24Hours',3,'2023-08-01','CMMC','6','2023-11-01','MikeAudit','All controls compliant','Active','No changes needed');

-- Parent community survey results
CREATE TABLE parent_community_survey_results (
    SurveyID TEXT PRIMARY KEY,
    SchoolCDSCode TEXT NOT NULL,
    SurveyDate DATE NOT NULL,
    RespondentID TEXT,
    RespondentRole TEXT,
    OverallSatisfaction INTEGER,
    CommunicationRating INTEGER,
    SafetyRating INTEGER,
    CurriculumRating INTEGER,
    ExtracurricularRating INTEGER,
    FacilitiesRating INTEGER,
    TechnologyRating INTEGER,
    TeacherSupportRating INTEGER,
    OpenEndedFeedback TEXT,
    LikelihoodToRecommend INTEGER,
    SurveyMethod TEXT,
    LanguagePreference TEXT,
    FollowUpRequired TEXT,
    FollowUpContact TEXT,
    DataQualityScore REAL,
    Comments TEXT
);

INSERT INTO parent_community_survey_results VALUES ('SV001','CDS001','2023-10-20','P001','Parent',8,7,9,8,7,8,6,9,'Great school overall','9','Online','English','No','',0.95,'');
INSERT INTO parent_community_survey_results VALUES ('SV002','CDS002','2023-09-15','P002','Guardian',6,5,7,6,5,6,5,6,'Need more after‑school options','7','Paper','Spanish','Yes','admin@school.org',0.88,'Follow up in November');
INSERT INTO parent_community_survey_results VALUES ('SV003','CDS003','2023-11-05','P003','Parent',9,9,9,9,8,9,8,9,'Excellent communication','10','Online','English','No','',0.98,'');

-- School equity audit
CREATE TABLE school_equity_audit (
    AuditID TEXT PRIMARY KEY,
    SchoolCDSCode TEXT NOT NULL,
    AuditYear INTEGER NOT NULL,
    DemographicGroup TEXT,
    EnrollmentCount INTEGER,
    FreeMealPercent REAL,
    FRPMPercent REAL,
    SpecialEdPercent REAL,
    EnglishLearnerPercent REAL,
    TeacherDiversityScore REAL,
    LeadershipDiversityScore REAL,
    ResourceAllocationScore REAL,
    AchievementGapScore REAL,
    DisciplineDisparityScore REAL,
    Recommendations TEXT,
    AuditorName TEXT,
    AuditDate DATE,
    FollowUpDate DATE,
    Status TEXT,
    Comments TEXT,
    DataSource TEXT
);

INSERT INTO school_equity_audit VALUES ('EA001','CDS001',2023,'Hispanic',250,65.5,70.2,12.3,15.0,0.45,0.40,0.78,0.22,0.30,'Increase bilingual staff','LauraSmith','2023-12-01','2024-06-01','Pending','','FRPM');
INSERT INTO school_equity_audit VALUES ('EA002','CDS002',2023,'AfricanAmerican',180,55.0,60.0,14.0,10.0,0.50,0.45,0.80,0.18,0.25,'Targeted tutoring','MarkLee','2023-12-05','2024-05-15','Pending','','FRPM');
INSERT INTO school_equity_audit VALUES ('EA003','CDS003',2022,'Asian',300,30.0,35.0,8.0,5.0,0.60,0.55,0.85,0.10,0.12,'Maintain current programs','SusanKim','2022-11-20','2023-05-01','Closed','Audit completed','FRPM');

-- District technology innovation hub
CREATE TABLE district_technology_innovation_hub (
    HubID TEXT PRIMARY KEY,
    DistrictCode TEXT NOT NULL,
    HubName TEXT,
    EstablishedDate DATE,
    FocusArea TEXT,
    FundingAmount REAL,
    AnnualBudget REAL,
    StaffCount INTEGER,
    PartnerOrganizations TEXT,
    ProjectsInProgress INTEGER,
    ProjectsCompleted INTEGER,
    TotalStudentsBenefited INTEGER,
    MainFacilityLocation TEXT,
    DeviceInventoryCount INTEGER,
    SoftwareLicensesCount INTEGER,
    TrainingHoursPerYear INTEGER,
    OutcomeMetrics TEXT,
    HubDirectorName TEXT,
    DirectorContact TEXT,
    Status TEXT,
    LastReportDate DATE
);

INSERT INTO district_technology_innovation_hub VALUES ('HUB001','DC01','FutureTech Lab','2021-08-01','AIandRobotics',2500000,500000,12,'TechCorp;EduPartners',5,12,2000,'MainCampusBuildingA',150,80,300,'Increased STEM scores','AmyYoung','amyyoung@district.org','Active','2023-10-01');
INSERT INTO district_technology_innovation_hub VALUES ('HUB002','DC02','DigitalCreatives Hub','2022-01-15','VRandAR',1800000,350000,9,'MediaStudio;LocalCollege',3,8,1500,'NorthSideCenter',120,60,200,'Higher project completion rate','BrianCole','briancole@district.org','Active','2023-09-15');
INSERT INTO district_technology_innovation_hub VALUES ('HUB003','DC03','GreenTech Innovation Center','2020-05-20','SustainableTech',3000000,600000,15,'EnergyInc;EcoOrg',7,15,2500,'EcoCampusHall',200,100,400,'Reduced energy use','CatherineLee','catherinelee@district.org','Active','2023-11-05');

-- Community food bank partnerships
CREATE TABLE community_food_bank_partnerships (
    PartnershipID TEXT PRIMARY KEY,
    SchoolCDSCode TEXT NOT NULL,
    FoodBankName TEXT,
    AgreementStartDate DATE,
    AgreementEndDate DATE,
    MonthlyDistributionCount INTEGER,
    TotalFamiliesServed INTEGER,
    PrimaryContactName TEXT,
    PrimaryContactPhone TEXT,
    PrimaryContactEmail TEXT,
    DonationType TEXT,
    VolunteerHoursPerMonth INTEGER,
    LogisticsCoordinator TEXT,
    StorageCapacityUnits INTEGER,
    TransportationMethod TEXT,
    ReportingFrequency TEXT,
    LastReportDate DATE,
    Status TEXT,
    Notes TEXT,
    DataSource TEXT
);

INSERT INTO community_food_bank_partnerships VALUES ('FB001','CDS001','HarvestHope','2022-09-01','2024-08-31',4,120,'LindaGreen','5551234567','lg@harvesthope.org','FoodBoxes',30,'MikeTaylor',200,'Truck','Monthly','2023-10-01','Active','','DistrictRecords');
INSERT INTO community_food_bank_partnerships VALUES ('FB002','CDS002','CommunityPantry','2023-01-15','2025-01-14',3,80,'SamuelBrown','5559876543','sb@communitypantry.org','FreshProduce',20,'SaraMiller',150,'Van','Quarterly','2023-09-15','Active','','DistrictRecords');
INSERT INTO community_food_bank_partnerships VALUES ('FB003','CDS003','CityFoodBank','2021-06-01','2023-05-31',5,200,'KarenWhite','5555551212','kw@cityfoodbank.org','Mixed',45,'TomHarris',300,'Truck','Monthly','2023-08-20','Closed','Agreement ended','DistrictRecords');

-- Facility solar panel maintenance
CREATE TABLE facility_solar_panel_maintenance (
    MaintenanceID TEXT PRIMARY KEY,
    FacilityID TEXT NOT NULL,
    SolarArrayID TEXT NOT NULL,
    MaintenanceDate DATE NOT NULL,
    TechnicianID TEXT,
    InspectionResult TEXT,
    PowerOutputBefore REAL,
    PowerOutputAfter REAL,
    EfficiencyChangePercent REAL,
    CleaningPerformed TEXT,
    InverterCheck TEXT,
    WiringInspection TEXT,
    StructuralIntegrity TEXT,
    MaintenanceNotes TEXT,
    FollowUpRequired TEXT,
    FollowUpDate DATE,
    Cost REAL,
    FundingSource TEXT,
    Status TEXT,
    Comments TEXT
);

INSERT INTO facility_solar_panel_maintenance VALUES ('SM001','F001','SA01','2023-09-10','TECH001','Pass',150.5,152.0,1.0,'Yes','Pass','Pass','Pass','Routine cleaning and check','No',NULL,500.00,'DistrictFund','Completed','');
INSERT INTO facility_solar_panel_maintenance VALUES ('SM002','F002','SA02','2023-10-05','TECH002','Fail',120.0,115.0,-4.2','Yes','Fail','Pass','Pass','Inverter replacement needed','Yes','2023-11-01',1200.00,'GrantXYZ','Pending','');
INSERT INTO facility_solar_panel_maintenance VALUES ('SM003','F003','SA03','2023-08-20','TECH003','Pass',200.0,200.5,0.25','No','Pass','Pass','Pass','No cleaning required this cycle','No',NULL,300.00,'DistrictFund','Completed','');

-- School 3D printing lab inventory
CREATE TABLE school_3d_printing_lab_inventory (
    ItemID TEXT PRIMARY KEY,
    SchoolCDSCode TEXT NOT NULL,
    LabLocation TEXT,
    AssetTag TEXT,
    ItemType TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyExpiration DATE,
    CurrentCondition TEXT,
    CalibrationDate DATE,
    FilamentType TEXT,
    FilamentColor TEXT,
    FilamentWeightKg REAL,
    SoftwareVersion TEXT,
    AssignedToStaffID TEXT,
    AssignedToStudentID TEXT,
    UsageHours INTEGER,
    MaintenanceSchedule TEXT,
    LastMaintenanceDate DATE,
    Status TEXT,
    Notes TEXT
);

INSERT INTO school_3d_printing_lab_inventory VALUES ('ITEM001','CDS001','Room101','AT001','Printer','MakerBot','Replicator+','SN12345','2022-01-15','2025-01-15','Good','2023-06-01','PLA','Red',2.5,'v2.3','STF010','',120,'Quarterly','2023-09-01','Active','');
INSERT INTO school_3d_printing_lab_inventory VALUES ('ITEM002','CDS002','Room202','AT002','Printer','Ultimaker','S5','SN67890','2021-09-10','2024-09-10','Fair','2023-04-15','ABS','Blue',1.0,'v3.1','STF015','STU123',85,'Biannual','2023-08-15','Active','Needs nozzle replacement');
INSERT INTO school_3d_printing_lab_inventory VALUES ('ITEM003','CDS003','Room303','AT003','Scanner','Shining3D','Einscan','SN54321','2023-02-20','2026-02-20','New','2023-10-01','N/A','N/A',0.0,'v1.0','STF020','',30,'Annual','2023-10-01','Active','');

-- District early childhood center statistics
CREATE TABLE district_early_childhood_center_stats (
    CenterID TEXT PRIMARY KEY,
    DistrictCode TEXT NOT NULL,
    CenterName TEXT,
    Address TEXT,
    City TEXT,
    State TEXT,
    Zip TEXT,
    Capacity INTEGER,
    EnrollmentCurrent INTEGER,
    EnrollmentWaitlist INTEGER,
    AvgClassSize REAL,
    TeacherStudentRatio REAL,
    StaffCount INTEGER,
    %_EligibleFreeMeal REAL,
    %_EligibleFRPM REAL,
    ProgramsOffered TEXT,
    OperatingHours TEXT,
    FundingSource TEXT,
    AnnualBudget REAL,
    OutcomeMetricScore REAL,
    InspectionScore INTEGER,
    LastInspectionDate DATE,
    Status TEXT,
    Notes TEXT
);

INSERT INTO district_early_childhood_center_stats VALUES ('EC001','DC01','Sunrise Early Learning','123 Maple St','Springfield','CA','90210',80,70,5,12.5,0.15,12,45.0,30.0,'PreK;PlayBased','8am-5pm','StateGrant',600000,78.5,92,'2023-09-20','Active','');
INSERT INTO district_early_childhood_center_stats VALUES ('EC002','DC02','Little Steps Center','456 Oak Ave','Rivertown','TX','75001',60,55,2,10.0,0.12,9,40.0,25.0,'PreK;LanguageImmersion','7am-4pm','CountyFund',450000,74.2,88,'2023-08-15','Active','');
INSERT INTO district_early_childhood_center_stats VALUES ('EC003','DC03','Bright Futures Academy','789 Pine Rd','Lakeside','NY','10001',90,85,0,13.0,0.18,15,50.0,35.0,'PreK;STEM','8am-6pm','FederalGrant',800000,82.1,95,'2023-10-05','Active','');