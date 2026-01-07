-- School Funding Transactions
CREATE TABLE school_funding_transactions (
    TransactionID TEXT PRIMARY KEY,
    CDSCode TEXT,
    FiscalYear INTEGER,
    FundingSource TEXT,
    ProgramName TEXT,
    AmountAllocated REAL,
    AmountSpent REAL,
    DateAwarded DATE,
    DateSpent DATE,
    GrantNumber TEXT,
    Category TEXT,
    Subcategory TEXT,
    ApprovalStatus TEXT,
    ReportingPeriod TEXT,
    Reviewer TEXT,
    Comments TEXT,
    IsRecurring INTEGER,
    DisbursementMethod TEXT,
    Currency TEXT,
    ExchangeRate REAL
);

INSERT INTO school_funding_transactions (TransactionID,CDSCode,FiscalYear,FundingSource,ProgramName,AmountAllocated,AmountSpent,DateAwarded,DateSpent,GrantNumber,Category,Subcategory,ApprovalStatus,ReportingPeriod,Reviewer,Comments,IsRecurring,DisbursementMethod,Currency,ExchangeRate) VALUES ('TXN001','001234567',2022,'State Grant','Math Enrichment',50000.0,20000.0,'2022-01-15','2022-03-10','GR12345','Instruction','STEM','Approved','Q1','JohnDoe','Initial disbursement',0,'Check','USD',1.0);
INSERT INTO school_funding_transactions (TransactionID,CDSCode,FiscalYear,FundingSource,ProgramName,AmountAllocated,AmountSpent,DateAwarded,DateSpent,GrantNumber,Category,Subcategory,ApprovalStatus,ReportingPeriod,Reviewer,Comments,IsRecurring,DisbursementMethod,Currency,ExchangeRate) VALUES ('TXN002','009876543',2023,'Federal Grant','Science Lab Upgrade',120000.0,45000.0,'2023-02-01','2023-04-20','GR67890','Infrastructure','Laboratory','Pending','Q2','JaneSmith','Awaiting final approval',1,'Electronic Transfer','USD',1.0);
INSERT INTO school_funding_transactions (TransactionID,CDSCode,FiscalYear,FundingSource,ProgramName,AmountAllocated,AmountSpent,DateAwarded,DateSpent,GrantNumber,Category,Subcategory,ApprovalStatus,ReportingPeriod,Reviewer,Comments,IsRecurring,DisbursementMethod,Currency,ExchangeRate) VALUES ('TXN003','003221199',2021,'Private Donor','After School Arts',30000.0,15000.0,'2021-09-05','2021-10-12','GR54321','Program','Arts','Approved','FY2021','MikeLee','First tranche paid',0,'Check','USD',1.0);

-- District Demographic Surveys
CREATE TABLE district_demographic_surveys (
    SurveyID TEXT PRIMARY KEY,
    DistrictCode INTEGER,
    SurveyYear INTEGER,
    TotalPopulation INTEGER,
    MedianHouseholdIncome REAL,
    UnemploymentRate REAL,
    PovertyRate REAL,
    PercentWhite REAL,
    PercentBlack REAL,
    PercentHispanic REAL,
    PercentAsian REAL,
    PercentOther REAL,
    AvgFamilySize REAL,
    HousingUnits INTEGER,
    OwnerOccupied INTEGER,
    RentalOccupied INTEGER,
    EducationLevelHighSchool REAL,
    EducationLevelBachelors REAL,
    EducationLevelGraduate REAL,
    LanguageDiversityScore REAL
);

INSERT INTO district_demographic_surveys (SurveyID,DistrictCode,SurveyYear,TotalPopulation,MedianHouseholdIncome,UnemploymentRate,PovertyRate,PercentWhite,PercentBlack,PercentHispanic,PercentAsian,PercentOther,AvgFamilySize,HousingUnits,OwnerOccupied,RentalOccupied,EducationLevelHighSchool,EducationLevelBachelors,EducationLevelGraduate,LanguageDiversityScore) VALUES ('DS001',101,2022,125000,55000.0,5.2,12.4,60.0,15.0,18.0,4.0,2.0,3.2,48000,30000,18000,85.0,22.5,12.3,78.5);
INSERT INTO district_demographic_surveys (SurveyID,DistrictCode,SurveyYear,TotalPopulation,MedianHouseholdIncome,UnemploymentRate,PovertyRate,PercentWhite,PercentBlack,PercentHispanic,PercentAsian,PercentOther,AvgFamilySize,HousingUnits,OwnerOccupied,RentalOccupied,EducationLevelHighSchool,EducationLevelBachelors,EducationLevelGraduate,LanguageDiversityScore) VALUES ('DS002',202,2021,95000,47000.0,6.8,15.0,55.0,20.0,20.0,3.0,2.0,3.5,35000,21000,14000,80.0,18.0,9.5,72.0);
INSERT INTO district_demographic_surveys (SurveyID,DistrictCode,SurveyYear,TotalPopulation,MedianHouseholdIncome,UnemploymentRate,PovertyRate,PercentWhite,PercentBlack,PercentHispanic,PercentAsian,PercentOther,AvgFamilySize,HousingUnits,OwnerOccupied,RentalOccupied,EducationLevelHighSchool,EducationLevelBachelors,EducationLevelGraduate,LanguageDiversityScore) VALUES ('DS003',303,2020,78000,62000.0,4.5,9.0,70.0,10.0,10.0,5.0,5.0,2.9,26000,17000,9000,88.0,27.0,14.0,82.3);

-- Teacher Collaboration Networks
CREATE TABLE teacher_collaboration_networks (
    NetworkID TEXT PRIMARY KEY,
    TeacherID TEXT,
    SchoolCode TEXT,
    NetworkName TEXT,
    StartDate DATE,
    EndDate DATE,
    MeetingFrequency TEXT,
    Platform TEXT,
    TopicsCovered TEXT,
    MembersCount INTEGER,
    LeadFacilitator TEXT,
    CoordinatorEmail TEXT,
    FundingAmount REAL,
    OutcomeScore REAL,
    EvaluationDate DATE,
    IsActive INTEGER,
    CollaborationTools TEXT,
    ExternalPartner TEXT,
    SharedResourcesCount INTEGER,
    Notes TEXT
);

INSERT INTO teacher_collaboration_networks (NetworkID,TeacherID,SchoolCode,NetworkName,StartDate,EndDate,MeetingFrequency,Platform,TopicsCovered,MembersCount,LeadFacilitator,CoordinatorEmail,FundingAmount,OutcomeScore,EvaluationDate,IsActive,CollaborationTools,ExternalPartner,SharedResourcesCount,Notes) VALUES ('NET001','T001','SCH100','STEM Innovators','2021-08-01','2023-07-31','Monthly','Zoom','Project Based Learning',12,'AliceBrown','alice.brown@school.org',15000.0,85.4,'2023-06-15',1,'Miro,Google Docs','UniversityX',45,'Positive impact on student engagement');
INSERT INTO teacher_collaboration_networks (NetworkID,TeacherID,SchoolCode,NetworkName,StartDate,EndDate,MeetingFrequency,Platform,TopicsCovered,MembersCount,LeadFacilitator,CoordinatorEmail,FundingAmount,OutcomeScore,EvaluationDate,IsActive,CollaborationTools,ExternalPartner,SharedResourcesCount,Notes) VALUES ('NET002','T045','SCH200','Literacy Leaders','2020-01-15','2022-12-31','Biweekly','Teams','Reading Strategies',8,'BobSmith','bob.smith@school.org',8000.0,78.9,'2022-11-20',0,'Padlet,OneNote','LibraryCouncil',30,'Network discontinued after grant ended');
INSERT INTO teacher_collaboration_networks (NetworkID,TeacherID,SchoolCode,NetworkName,StartDate,EndDate,MeetingFrequency,Platform,TopicsCovered,MembersCount,LeadFacilitator,CoordinatorEmail,FundingAmount,OutcomeScore,EvaluationDate,IsActive,CollaborationTools,ExternalPartner,SharedResourcesCount,Notes) VALUES ('NET003','T078','SCH300','Digital Futures','2022-03-10',NULL,'Quarterly','Google Meet','EdTech Integration',15,'CarolLee','carol.lee@school.org',12000.0,82.1,'2023-02-05',1,'Flipgrid,Google Slides','EdTechCo',55,'Early adoption of AI tools');

-- Student Community Service Hours
CREATE TABLE student_community_service_hours (
    RecordID TEXT PRIMARY KEY,
    StudentID TEXT,
    CDSCode TEXT,
    ServiceDate DATE,
    HoursLogged REAL,
    ServiceType TEXT,
    OrganizationName TEXT,
    SupervisorName TEXT,
    ContactEmail TEXT,
    Location TEXT,
    Verified INTEGER,
    VerificationDate DATE,
    ProjectDescription TEXT,
    GradeLevel TEXT,
    Semester TEXT,
    Category TEXT,
    ImpactScore REAL,
    FundingSource TEXT,
    Notes TEXT,
    IsLeadershipRole INTEGER
);

INSERT INTO student_community_service_hours (RecordID,StudentID,CDSCode,ServiceDate,HoursLogged,ServiceType,OrganizationName,SupervisorName,ContactEmail,Location,Verified,VerificationDate,ProjectDescription,GradeLevel,Semester,Category,ImpactScore,FundingSource,Notes,IsLeadershipRole) VALUES ('CSH001','S123','001234567','2022-11-05',4.5,'Volunteer','Food Bank','LauraGreen','laura.green@foodbank.org','Downtown','1','2022-11-07','Sorting and packaging food donations','10','Fall','Social',92.0,'School Grant','Great attitude','0');
INSERT INTO student_community_service_hours (RecordID,StudentID,CDSCode,ServiceDate,HoursLogged,ServiceType,OrganizationName,SupervisorName,ContactEmail,Location,Verified,VerificationDate,ProjectDescription,GradeLevel,Semester,Category,ImpactScore,FundingSource,Notes,IsLeadershipRole) VALUES ('CSH002','S456','009876543','2023-02-12',6.0,'Tutoring','Community Center','MarkTaylor','mark.taylor@center.org','Northside','1','2023-02-14','Math tutoring for elementary students','11','Spring','Education',88.5,'Parent Donation','Students reported confidence increase','1');
INSERT INTO student_community_service_hours (RecordID,StudentID,CDSCode,ServiceDate,HoursLogged,ServiceType,OrganizationName,SupervisorName,ContactEmail,Location,Verified,VerificationDate,ProjectDescription,GradeLevel,Semester,Category,ImpactScore,FundingSource,Notes,IsLeadershipRole) VALUES ('CSH003','S789','003221199','2021-05-20',3.0,'Environmental','Park Services','EmilyWhite','emily.white@parks.org','East Park','0',NULL,'Tree planting event','9','Summer','Environment',75.0,'School Fund','Awaiting verification','0');

-- Facility Energy Monitoring
CREATE TABLE facility_energy_monitoring (
    ReadingID TEXT PRIMARY KEY,
    FacilityID TEXT,
    ReadingDate DATE,
    EnergyType TEXT,
    ConsumptionKWh REAL,
    CostUSD REAL,
    CarbonEmissionsKg REAL,
    PeakDemandKW REAL,
    Voltage REAL,
    Current REAL,
    PowerFactor REAL,
    MeterNumber TEXT,
    SensorStatus TEXT,
    TemperatureC REAL,
    HumidityPct REAL,
    MaintenanceFlag INTEGER,
    Source TEXT,
    DataQualityScore REAL,
    Remarks TEXT,
    RecordedBy TEXT
);

INSERT INTO facility_energy_monitoring (ReadingID,FacilityID,ReadingDate,EnergyType,ConsumptionKWh,CostUSD,CarbonEmissionsKg,PeakDemandKW,Voltage,Current,PowerFactor,MeterNumber,SensorStatus,TemperatureC,HumidityPct,MaintenanceFlag,Source,DataQualityScore,Remarks,RecordedBy) VALUES ('ENR001','F001','2023-04-01','Electric',1245.0,310.5,845.0,75.0,120.0,10.2,0.98,'MTR1001','Active',22.5,45.0,0,'Automated','0.99','Normal operation','TechA');
INSERT INTO facility_energy_monitoring (ReadingID,FacilityID,ReadingDate,EnergyType,ConsumptionKWh,CostUSD,CarbonEmissionsKg,PeakDemandKW,Voltage,Current,PowerFactor,MeterNumber,SensorStatus,TemperatureC,HumidityPct,MaintenanceFlag,Source,DataQualityScore,Remarks,RecordedBy) VALUES ('ENR002','F002','2023-04-01','NaturalGas',850.0,190.0,560.0,55.0,0,NULL,NULL,'MTR2002','Active',18.0,50.0,0,'Manual','0.95','Checked manual entry','TechB');
INSERT INTO facility_energy_monitoring (ReadingID,FacilityID,ReadingDate,EnergyType,ConsumptionKWh,CostUSD,CarbonEmissionsKg,PeakDemandKW,Voltage,Current,PowerFactor,MeterNumber,SensorStatus,TemperatureC,HumidityPct,MaintenanceFlag,Source,DataQualityScore,Remarks,RecordedBy) VALUES ('ENR003','F003','2023-04-01','Electric',2300.0,580.0,1565.0,120.0,118.0,15.5,0.97,'MTR3003','Fault','N/A','N/A',1,'Automated','0.80','Sensor fault flagged','TechC');

-- Technology Asset Maintenance
CREATE TABLE technology_asset_maintenance (
    MaintenanceID TEXT PRIMARY KEY,
    AssetTag TEXT,
    AssetType TEXT,
    Manufacturer TEXT,
    Model TEXT,
    PurchaseDate DATE,
    WarrantyEndDate DATE,
    LastServiceDate DATE,
    ServiceProvider TEXT,
    ServiceCost REAL,
    IssueDescription TEXT,
    Resolution TEXT,
    ServiceTechnician TEXT,
    FollowUpNeeded INTEGER,
    NextServiceDue DATE,
    AssetLocation TEXT,
    AssetStatus TEXT,
    DepreciationRate REAL,
    CurrentValue REAL,
    Notes TEXT
);

INSERT INTO technology_asset_maintenance (MaintenanceID,AssetTag,AssetType,Manufacturer,Model,PurchaseDate,WarrantyEndDate,LastServiceDate,ServiceProvider,ServiceCost,IssueDescription,Resolution,ServiceTechnician,FollowUpNeeded,NextServiceDue,AssetLocation,AssetStatus,DepreciationRate,CurrentValue,Notes) VALUES ('MTN001','AT-1001','Laptop','Dell','Latitude 5420','2020-08-15','2023-08-14','2022-12-01','TechRepairCo',150.0,'Battery not holding charge','Replaced battery','MikeJordan',0,'2024-12-01','Room 101','In Service',0.15,800.0,'Warranty expired');
INSERT INTO technology_asset_maintenance (MaintenanceID,AssetTag,AssetType,Manufacturer,Model,PurchaseDate,WarrantyEndDate,LastServiceDate,ServiceProvider,ServiceCost,IssueDescription,Resolution,ServiceTechnician,FollowUpNeeded,NextServiceDue,AssetLocation,AssetStatus,DepreciationRate,CurrentValue,Notes) VALUES ('MTN002','AT-2002','Projector','Epson','EB-U42','2019-03-10','2022-03-09','2022-11-20','AVSupportInc',200.0,'Lamp dimming','Lamp replaced','SandraLee',1,'2023-11-20','Auditorium','In Service',0.20,400.0,'Schedule follow‑up check in 6 months');
INSERT INTO technology_asset_maintenance (MaintenanceID,AssetTag,AssetType,Manufacturer,Model,PurchaseDate,WarrantyEndDate,LastServiceDate,ServiceProvider,ServiceCost,IssueDescription,Resolution,ServiceTechnician,FollowUpNeeded,NextServiceDue,AssetLocation,AssetStatus,DepreciationRate,CurrentValue,Notes) VALUES ('MTN003','AT-3003','Desktop','HP','EliteDesk 800','2021-01-22','2024-01-21','2023-03-15','ITDept',0.0,'Software update required','Updated OS','LauraKim',0,'2024-01-22','Room 202','In Service',0.10,950.0,'No issues';

-- Environmental Compliance Checklist
CREATE TABLE environmental_compliance_checklist (
    ChecklistID TEXT PRIMARY KEY,
    FacilityID TEXT,
    InspectionDate DATE,
    InspectorName TEXT,
    ChecklistVersion TEXT,
    AirQualityPass INTEGER,
    WaterQualityPass INTEGER,
    WasteManagementPass INTEGER,
    HazardousMaterialsPass INTEGER,
    NoiseLevelPass INTEGER,
    EnergyEfficiencyPass INTEGER,
    DocumentationComplete INTEGER,
    CorrectiveActionsRequired INTEGER,
    FollowUpDate DATE,
    Comments TEXT,
    OverallScore REAL,
    ComplianceStatus TEXT,
    ReportingPeriod TEXT,
    RegulatoryAgency TEXT,
    SitePhotosStored INTEGER,
    DigitalSignature TEXT
);

INSERT INTO environmental_compliance_checklist (ChecklistID,FacilityID,InspectionDate,InspectorName,ChecklistVersion,AirQualityPass,WaterQualityPass,WasteManagementPass,HazardousMaterialsPass,NoiseLevelPass,EnergyEfficiencyPass,DocumentationComplete,CorrectiveActionsRequired,FollowUpDate,Comments,OverallScore,ComplianceStatus,ReportingPeriod,RegulatoryAgency,SitePhotosStored,DigitalSignature) VALUES ('ECL001','F001','2023-03-10','JohnDoe','v1.2',1,1,1,1,1,1,1,0,NULL,'All criteria met',98.5,'Compliant','Q1 2023','EPA',1,'JohnDoeSig');
INSERT INTO environmental_compliance_checklist (ChecklistID,FacilityID,InspectionDate,InspectorName,ChecklistVersion,AirQualityPass,WaterQualityPass,WasteManagementPass,HazardousMaterialsPass,NoiseLevelPass,EnergyEfficiencyPass,DocumentationComplete,CorrectiveActionsRequired,FollowUpDate,Comments,OverallScore,ComplianceStatus,ReportingPeriod,RegulatoryAgency,SitePhotosStored,DigitalSignature) VALUES ('ECL002','F002','2022-11-22','JaneSmith','v1.0',1,0,1,1,1,0,1,2,'2023-01-15','Water quality failed; action plan required',74.3,'Non‑Compliant','H2 2022','StateEnvDept',1,'JaneSmithSig');
INSERT INTO environmental_compliance_checklist (ChecklistID,FacilityID,InspectionDate,InspectorName,ChecklistVersion,AirQualityPass,WaterQualityPass,WasteManagementPass,HazardousMaterialsPass,NoiseLevelPass,EnergyEfficiencyPass,DocumentationComplete,CorrectiveActionsRequired,FollowUpDate,Comments,OverallScore,ComplianceStatus,ReportingPeriod,RegulatoryAgency,SitePhotosStored,DigitalSignature) VALUES ('ECL003','F003','2023-05-05','MikeLee','v1.1',1,1,1,1,1,1,1,0,NULL,'Excellent performance',99.0,'Compliant','Q2 2023','LocalHealthAgency',1,'MikeLeeSig');

-- Parent Engagement Events
CREATE TABLE parent_engagement_events (
    EventID TEXT PRIMARY KEY,
    SchoolCode TEXT,
    EventName TEXT,
    EventDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    Location TEXT,
    Organizer TEXT,
    ExpectedAttendance INTEGER,
    ActualAttendance INTEGER,
    EventType TEXT,
    Theme TEXT,
    MaterialsProvided TEXT,
    FeedbackScore REAL,
    FollowUpActions TEXT,
    IsVirtual INTEGER,
    RegistrationLink TEXT,
    Sponsor TEXT,
    Notes TEXT,
    RecordedBy TEXT
);

INSERT INTO parent_engagement_events (EventID,SchoolCode,EventName,EventDate,StartTime,EndTime,Location,Organizer,ExpectedAttendance,ActualAttendance,EventType,Theme,MaterialsProvided,FeedbackScore,FollowUpActions,IsVirtual,RegistrationLink,Sponsor,Notes,RecordedBy) VALUES ('PEV001','SCH100','Back to School Night','2023-08-20','18:00','20:00','Gymnasium','PrincipalAnna','150','138','Information','Curriculum Overview','Handouts,Presentation','4.5','Send summary email',0,'','SchoolFund','Positive turnout','AdminA');
INSERT INTO parent_engagement_events (EventID,SchoolCode,EventName,EventDate,StartTime,EndTime,Location,Organizer,ExpectedAttendance,ActualAttendance,EventType,Theme,MaterialsProvided,FeedbackScore,FollowUpActions,IsVirtual,RegistrationLink,Sponsor,Notes,RecordedBy) VALUES ('PEV002','SCH200','Virtual Parent Workshop','2023-09-15','17:00','18:30','Online','CounselorBob','80','80','Workshop','Mental Health','Digital Handout','4.8','Distribute resource list',1,'https://school.edu/workshop','CommunityPartner','High engagement','AdminB');
INSERT INTO parent_engagement_events (EventID,SchoolCode,EventName,EventDate,StartTime,EndTime,Location,Organizer,ExpectedAttendance,ActualAttendance,EventType,Theme,MaterialsProvided,FeedbackScore,FollowUpActions,IsVirtual,RegistrationLink,Sponsor,Notes,RecordedBy) VALUES ('PEV003','SCH300','College Admissions Fair','2023-10-05','10:00','13:00','Auditorium','CollegeCounselor','200','190','Fair','Post‑Secondary Options','Brochures,Booths','4.2','Collect contact info for follow‑up',0,'','StateEducationDept','Students and parents interested','AdminC');

-- Facility Renovation Plans
CREATE TABLE facility_renovation_plans (
    PlanID TEXT PRIMARY KEY,
    FacilityID TEXT,
    ProjectName TEXT,
    PlannedStartDate DATE,
    PlannedEndDate DATE,
    EstimatedCost REAL,
    FundingSource TEXT,
    ArchitectFirm TEXT,
    Contractor TEXT,
    SquareFootage INTEGER,
    ScopeDescription TEXT,
    Phase TEXT,
    ApproverName TEXT,
    ApprovalDate DATE,
    Status TEXT,
    RiskRating TEXT,
    EnvironmentalImpactScore REAL,
    PermitsNeeded INTEGER,
    PermitStatus TEXT,
    Comments TEXT,
    LastUpdated DATE
);

INSERT INTO facility_renovation_plans (PlanID,FacilityID,ProjectName,PlannedStartDate,PlannedEndDate,EstimatedCost,FundingSource,ArchitectFirm,Contractor,SquareFootage,ScopeDescription,Phase,ApproverName,ApprovalDate,Status,RiskRating,EnvironmentalImpactScore,PermitsNeeded,PermitStatus,Comments,LastUpdated) VALUES ('RNV001','F001','Science Lab Upgrade','2023-07-01','2024-01-15',250000.0,'State Grant','DesignEdge','BuildRight','8000','Complete lab remodel with new equipment','Planning','DeanClark','2023-06-10','Approved','Medium',45.0,2,'Pending','Awaiting zoning approval','2023-06-15');
INSERT INTO facility_renovation_plans (PlanID,FacilityID,ProjectName,PlannedStartDate,PlannedEndDate,EstimatedCost,FundingSource,ArchitectFirm,Contractor,SquareFootage,ScopeDescription,Phase,ApproverName,ApprovalDate,Status,RiskRating,EnvironmentalImpactScore,PermitsNeeded,PermitStatus,Comments,LastUpdated) VALUES ('RNV002','F002','Library Expansion','2024-02-01','2024-09-30',400000.0,'Private Donation','SpaceCraft','ConstructCo','12000','Add new reading areas and digital media rooms','Design','MsTaylor','2023-12-01','Pending','High',60.0,3,'Approved','Community support strong','2023-12-05');
INSERT INTO facility_renovation_plans (PlanID,FacilityID,ProjectName,PlannedStartDate,PlannedEndDate,EstimatedCost,FundingSource,ArchitectFirm,Contractor,SquareFootage,ScopeDescription,Phase,ApproverName,ApprovalDate,Status,RiskRating,EnvironmentalImpactScore,PermitsNeeded,PermitStatus,Comments,LastUpdated) VALUES ('RNV003','F003','Court Flooring Replacement','2023-09-10','2023-11-20',75000.0,'District Budget','FloorDesigns','TileWorks','5000','Replace hardwood with synthetic surface','Construction','MrAllen','2023-08-20','In Progress','Low',20.0,1,'Completed','Finished ahead of schedule','2023-09-12');

-- District Transportation Fleet Inventory
CREATE TABLE district_transportation_fleet_inventory (
    VehicleID TEXT PRIMARY KEY,
    FleetNumber INTEGER,
    VehicleType TEXT,
    Make TEXT,
    Model TEXT,
    Year INTEGER,
    VIN TEXT,
    Capacity INTEGER,
    FuelType TEXT,
    FuelEfficiencyMPG REAL,
    AcquisitionDate DATE,
    ServiceStartDate DATE,
    CurrentMileage INTEGER,
    LastServiceDate DATE,
    ServiceProvider TEXT,
    AssignedRoute TEXT,
    Status TEXT,
    DepreciationRate REAL,
    CurrentValue REAL,
    Notes TEXT
);

INSERT INTO district_transportation_fleet_inventory (VehicleID,FleetNumber,VehicleType,Make,Model,Year,VIN,Capacity,FuelType,FuelEfficiencyMPG,AcquisitionDate,ServiceStartDate,CurrentMileage,LastServiceDate,ServiceProvider,AssignedRoute,Status,DepreciationRate,CurrentValue,Notes) VALUES ('VHC001',101,'School Bus','BlueBird','All American','2018','1HGCM82633A004352',72,'Diesel',6.5,'2018-05-20','2018-07-01',150000,'2023-03-15','TransitMaintain','RouteA','Active',0.12,58000.0,'New tires installed 2023');
INSERT INTO district_transportation_fleet_inventory (VehicleID,FleetNumber,VehicleType,Make,Model,Year,VIN,Capacity,FuelType,FuelEfficiencyMPG,AcquisitionDate,ServiceStartDate,CurrentMileage,LastServiceDate,ServiceProvider,AssignedRoute,Status,DepreciationRate,CurrentValue,Notes) VALUES ('VHC002',102,'Van','Ford','Transit','2020','2FTRX18W1XCA12345',15,'Gasoline',18.0,'2020-02-10','2020-03-05',40000,'2023-02-20','AutoCare','RouteB','Active',0.10,21000.0,'Routine maintenance completed');
INSERT INTO district_transportation_fleet_inventory (VehicleID,FleetNumber,VehicleType,Make,Model,Year,VIN,Capacity,FuelType,FuelEfficiencyMPG,AcquisitionDate,ServiceStartDate,CurrentMileage,LastServiceDate,ServiceProvider,AssignedRoute,Status,DepreciationRate,CurrentValue,Notes) VALUES ('VHC003',103,'Electric Bus','Proterra','Catalyst','2022','5NPEB4AC3KH123456',66,'Electric',NULL,'2022-08-01','2022-09-15',12000,'2023-04-10','EcoFleet','RouteC','Active',0.08,75000.0,'Battery health at 95%');