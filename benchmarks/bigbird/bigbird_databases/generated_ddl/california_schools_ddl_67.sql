-- Regional scholarship opportunities available to students in the district
CREATE TABLE regional_scholarship_opportunities
(
    ScholarshipID TEXT PRIMARY KEY,
    Name TEXT,
    Provider TEXT,
    EligibilityCriteria TEXT,
    Amount REAL,
    ApplicationDeadline DATE,
    AwardYear INTEGER,
    NumberOfAwards INTEGER,
    State TEXT,
    County TEXT,
    Category TEXT,
    GPARequirement REAL,
    TestScoreRequirement INTEGER,
    IncomeThreshold REAL,
    ResidencyRequirement TEXT,
    FieldOfStudy TEXT,
    DurationMonths INTEGER,
    ApplicationURL TEXT,
    ContactEmail TEXT,
    ContactPhone TEXT,
    CreatedDate DATE
);

INSERT INTO regional_scholarship_opportunities (ScholarshipID,Name,Provider,EligibilityCriteria,Amount,ApplicationDeadline,AwardYear,NumberOfAwards,State,County,Category,GPARequirement,TestScoreRequirement,IncomeThreshold,ResidencyRequirement,FieldOfStudy,DurationMonths,ApplicationURL,ContactEmail,ContactPhone,CreatedDate) VALUES
('SCH001','Future Leaders Grant','Community Foundation','Open to all high school seniors',5000,'2023-12-01',2024,10,'CA','LosAngeles','Merit',3.5,1200,40000,'Resident','STEM',24,'http://futureleaders.org/apply','info@futureleaders.org','5551234567','2023-01-15');

INSERT INTO regional_scholarship_opportunities (ScholarshipID,Name,Provider,EligibilityCriteria,Amount,ApplicationDeadline,AwardYear,NumberOfAwards,State,County,Category,GPARequirement,TestScoreRequirement,IncomeThreshold,ResidencyRequirement,FieldOfStudy,DurationMonths,ApplicationURL,ContactEmail,ContactPhone,CreatedDate) VALUES
('SCH002','Arts Excellence Scholarship','Arts Council','Students with portfolio approval',3000,'2023-11-15',2024,5,'CA','SanDiego','Arts',3.2,1100,50000,'Resident','FineArts',12,'http://artsexcellence.org/apply','contact@artsexcellence.org','5559876543','2023-02-01');

INSERT INTO regional_scholarship_opportunities (ScholarshipID,Name,Provider,EligibilityCriteria,Amount,ApplicationDeadline,AwardYear,NumberOfAwards,State,County,Category,GPARequirement,TestScoreRequirement,IncomeThreshold,ResidencyRequirement,FieldOfStudy,DurationMonths,ApplicationURL,ContactEmail,ContactPhone,CreatedDate) VALUES
('SCH003','Community Service Award','Local Nonprofit','Minimum 40 volunteer hours',2000,'2023-10-20',2024,8,'CA','Orange','Service',3.0,1000,45000,'Resident','SocialSciences',18,'http://communityservice.org/apply','service@community.org','5552223333','2023-03-10');

-- Inventory of school laboratories and equipment
CREATE TABLE school_laboratory_inventory
(
    LabID TEXT PRIMARY KEY,
    SchoolCDS TEXT,
    LabName TEXT,
    LabType TEXT,
    EquipmentCount INTEGER,
    TotalValue REAL,
    LastAuditDate DATE,
    HazardousMaterialFlag INTEGER,
    SafetyInspectionScore INTEGER,
    LabCapacity INTEGER,
    FloorSpaceSqft REAL,
    VentilationType TEXT,
    EquipmentList TEXT,
    MaintenanceSchedule TEXT,
    ManagerName TEXT,
    ManagerEmail TEXT,
    ManagerPhone TEXT,
    FundingSource TEXT,
    YearEstablished INTEGER,
    Notes TEXT
);

INSERT INTO school_laboratory_inventory (LabID,SchoolCDS,LabName,LabType,EquipmentCount,TotalValue,LastAuditDate,HazardousMaterialFlag,SafetyInspectionScore,LabCapacity,FloorSpaceSqft,VentilationType,EquipmentList,MaintenanceSchedule,ManagerName,ManagerEmail,ManagerPhone,FundingSource,YearEstablished,Notes) VALUES
('LAB001','001001','Science Lab A','GeneralScience',45,120000,'2023-04-15',1,88,30,750,'Mechanical','microscopes;centrifuges;spectrometers','Quarterly','Jane Doe','jdoe@school.org','5551112222','State Grant',2010,'Renovated 2022');

INSERT INTO school_laboratory_inventory (LabID,SchoolCDS,LabName,LabType,EquipmentCount,TotalValue,LastAuditDate,HazardousMaterialFlag,SafetyInspectionScore,LabCapacity,FloorSpaceSqft,VentilationType,EquipmentList,MaintenanceSchedule,ManagerName,ManagerEmail,ManagerPhone,FundingSource,YearEstablished,Notes) VALUES
('LAB002','001002','Computer Lab B','ComputerScience',60,95000,'2023-03-20',0,92,40,850,'HVAC','desktops;printers;network switches','Biannual','John Smith','jsmith@school.org','5553334444','District Budget',2015,'Upgraded 2021');

INSERT INTO school_laboratory_inventory (LabID,SchoolCDS,LabName,LabType,EquipmentCount,TotalValue,LastAuditDate,HazardousMaterialFlag,SafetyInspectionScore,LabCapacity,FloorSpaceSqft,VentilationType,EquipmentList,MaintenanceSchedule,ManagerName,ManagerEmail,ManagerPhone,FundingSource,YearEstablished,Notes) VALUES
('LAB003','001003','Biology Lab C','Biology',30,80000,'2023-05-05',1,85,25,600,'Fume Hood','incubators;autoclaves;microscopes','Annual','Emily Clark','eclark@school.org','5555556666','Federal Grant',2012,'Pending safety upgrades');

-- District technology innovation challenges
CREATE TABLE district_tech_innovation_challenges
(
    ChallengeID TEXT PRIMARY KEY,
    DistrictCode TEXT,
    Title TEXT,
    Description TEXT,
    LaunchDate DATE,
    EndDate DATE,
    ParticipationMode TEXT,
    TargetAudience TEXT,
    PrizeAmount REAL,
    Sponsor TEXT,
    NumberOfEntries INTEGER,
    EvaluationCriteria TEXT,
    Status TEXT,
    ContactPerson TEXT,
    ContactEmail TEXT,
    ContactPhone TEXT,
    WebsiteURL TEXT,
    BudgetAllocated REAL,
    CreatedBy TEXT,
    CreatedDate DATE
);

INSERT INTO district_tech_innovation_challenges (ChallengeID,DistrictCode,Title,Description,LaunchDate,EndDate,ParticipationMode,TargetAudience,PrizeAmount,Sponsor,NumberOfEntries,EvaluationCriteria,Status,ContactPerson,ContactEmail,ContactPhone,WebsiteURL,BudgetAllocated,CreatedBy,CreatedDate) VALUES
('CH001','DC001','Smart Classroom Challenge','Develop IoT solutions for classroom engagement',2023-06-01,2023-09-30,'Online','Teachers','10000','TechCorp','45','Innovation;Impact;Scalability','Open','Lisa Wong','lwong@district.org','5557778888','http://smartclassroom.district.org',15000,'Admin Office','2023-05-10');

INSERT INTO district_tech_innovation_challenges (ChallengeID,DistrictCode,Title,Description,LaunchDate,EndDate,ParticipationMode,TargetAudience,PrizeAmount,Sponsor,NumberOfEntries,EvaluationCriteria,Status,ContactPerson,ContactEmail,ContactPhone,WebsiteURL,BudgetAllocated,CreatedBy,CreatedDate) VALUES
('CH002','DC001','Green Energy Hackathon','Create prototypes for renewable energy usage in schools',2023-07-15,2023-10-15,'Hybrid','Students','8000','EcoEnergy','30','Feasibility;CostSaving;EnvironmentalImpact','Open','Mark Lee','mlee@district.org','5554445555','http://greenenergy.district.org',12000,'Innovation Dept','2023-06-01');

INSERT INTO district_tech_innovation_challenges (ChallengeID,DistrictCode,Title,Description,LaunchDate,EndDate,ParticipationMode,TargetAudience,PrizeAmount,Sponsor,NumberOfEntries,EvaluationCriteria,Status,ContactPerson,ContactEmail,ContactPhone,WebsiteURL,BudgetAllocated,CreatedBy,CreatedDate) VALUES
('CH003','DC001','AI in Admin Challenge','Implement AI tools to improve administrative tasks',2023-08-01,2023-11-30,'Online','Administrators','12000','AI Solutions Inc','20','Efficiency;UserExperience;DataSecurity','Open','Sandra Kim','skim@district.org','5559990000','http://aiadmin.district.org',18000,'IT Department','2023-07-05');

-- Community environmental cleanup events
CREATE TABLE community_environmental_cleanup_events
(
    EventID TEXT PRIMARY KEY,
    CommunityName TEXT,
    Location TEXT,
    EventDate DATE,
    Organizer TEXT,
    VolunteerTarget INTEGER,
    RegisteredVolunteers INTEGER,
    HoursPlanned REAL,
    WasteCollectedKg REAL,
    MaterialsRecycledKg REAL,
    FundingSource TEXT,
    Sponsor TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    SafetyPlan TEXT,
    WeatherBackupPlan TEXT,
    EquipmentProvided TEXT,
    Notes TEXT,
    CreatedDate DATE,
    UpdatedDate DATE
);

INSERT INTO community_environmental_cleanup_events (EventID,CommunityName,Location,EventDate,Organizer,VolunteerTarget,RegisteredVolunteers,HoursPlanned,WasteCollectedKg,MaterialsRecycledKg,FundingSource,Sponsor,ContactPhone,ContactEmail,SafetyPlan,WeatherBackupPlan,EquipmentProvided,Notes,CreatedDate,UpdatedDate) VALUES
('EVT001','Riverdale','River Park','2023-09-10','Green Earth Org',100,80,240,1500,800,'City Grant','EcoPartners','5551230000','contact@greenearth.org','FirstAid;SafetyBriefing','RescheduleIfRain','Gloves;TrashBags','Successful first event','2023-07-01','2023-08-20');

INSERT INTO community_environmental_cleanup_events (EventID,CommunityName,Location,EventDate,Organizer,VolunteerTarget,RegisteredVolunteers,HoursPlanned,WasteCollectedKg,MaterialsRecycledKg,FundingSource,Sponsor,ContactPhone,ContactEmail,SafetyPlan,WeatherBackupPlan,EquipmentProvided,Notes,CreatedDate,UpdatedDate) VALUES
('EVT002','Sunnyvale','Lake View Trail','2023-10-05','Clean Water Initiative',150,120,360,2000,1200,'State Fund','BlueWater','5553211111','info@cleanwater.org','EmergencyPlan;Briefing','IndoorGathering','Rakes;Shovels','High participation','2023-08-15','2023-09-01');

INSERT INTO community_environmental_cleanup_events (EventID,CommunityName,Location,EventDate,Organizer,VolunteerTarget,RegisteredVolunteers,HoursPlanned,WasteCollectedKg,MaterialsRecycledKg,FundingSource,Sponsor,ContactPhone,ContactEmail,SafetyPlan,WeatherBackupPlan,EquipmentProvided,Notes,CreatedDate,UpdatedDate) VALUES
('EVT003','Hillcrest','Old Quarry Site','2023-11-12','Volunteer Connect',80,70,200,900,500,'Local Business','RockSolid','5557776666','volunteers@connect.org','SafetyGearProvided','PostponeIfStorm','Buckets;Wheelbarrows','Need more publicity','2023-09-25','2023-10-10');

-- Student outdoor education programs
CREATE TABLE student_outdoor_education_programs
(
    ProgramID TEXT PRIMARY KEY,
    SchoolCDS TEXT,
    ProgramName TEXT,
    StartDate DATE,
    EndDate DATE,
    GradeLevels TEXT,
    CurriculumFocus TEXT,
    NumStudents INTEGER,
    NumStaff INTEGER,
    DailyHours REAL,
    Location TEXT,
    PartnerOrganization TEXT,
    FundingAmount REAL,
    OutcomeMetric TEXT,
    AssessmentMethod TEXT,
    CoordinatorName TEXT,
    CoordinatorEmail TEXT,
    CoordinatorPhone TEXT,
    Status TEXT,
    CreatedDate DATE
);

INSERT INTO student_outdoor_education_programs (ProgramID,SchoolCDS,ProgramName,StartDate,EndDate,GradeLevels,CurriculumFocus,NumStudents,NumStaff,DailyHours,Location,PartnerOrganization,FundingAmount,OutcomeMetric,AssessmentMethod,CoordinatorName,CoordinatorEmail,CoordinatorPhone,Status,CreatedDate) VALUES
('PROG001','001001','Eco Explorers','2023-09-01','2023-12-15','6-8','EnvironmentalScience',120,8,3.5,'Greenfield Park','Nature Foundation',25000,'Increase in biodiversity knowledge','PrePostTests','Laura Green','lgreen@school.org','5558887777','Active','2023-05-20');

INSERT INTO student_outdoor_education_programs (ProgramID,SchoolCDS,ProgramName,StartDate,EndDate,GradeLevels,CurriculumFocus,NumStudents,NumStaff,DailyHours,Location,PartnerOrganization,FundingAmount,OutcomeMetric,AssessmentMethod,CoordinatorName,CoordinatorEmail,CoordinatorPhone,Status,CreatedDate) VALUES
('PROG002','001002','STEM Adventure','2023-10-01','2024-03-30','9-12','STEMIntegration',80,6,4,'Mountain Ridge Trail','Tech Outdoors','30000','Improved problem solving scores','ProjectRubrics','Mike Anderson','mander@school.org','5559991111','Planning','2023-06-15');

INSERT INTO student_outdoor_education_programs (ProgramID,SchoolCDS,ProgramName,StartDate,EndDate,GradeLevels,CurriculumFocus,NumStudents,NumStaff,DailyHours,Location,PartnerOrganization,FundingAmount,OutcomeMetric,AssessmentMethod,CoordinatorName,CoordinatorEmail,CoordinatorPhone,Status,CreatedDate) VALUES
('PROG003','001003','History Trail Walks','2023-11-10','2024-04-20','5-7','SocialStudies',100,5,2.5,'Old Town Historic District','Local Museum','20000','Enhanced historical awareness','EssayReports','Sara Mills','smills@school.org','5552223333','Pending','2023-07-01');

-- Facility fire safety inspections
CREATE TABLE facility_fire_safety_inspections
(
    InspectionID TEXT PRIMARY KEY,
    FacilityID TEXT,
    InspectionDate DATE,
    InspectorName TEXT,
    InspectorCertification TEXT,
    FireExtinguishersCount INTEGER,
    SprinklerSystemStatus TEXT,
    AlarmSystemStatus TEXT,
    EvacuationPlanReviewed INTEGER,
    DeficienciesFound INTEGER,
    Recommendations TEXT,
    FollowUpDate DATE,
    FacilityManager TEXT,
    FacilityManagerPhone TEXT,
    FacilityManagerEmail TEXT,
    OverallScore INTEGER,
    Notes TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    DistrictCode TEXT
);

INSERT INTO facility_fire_safety_inspections (InspectionID,FacilityID,InspectionDate,InspectorName,InspectorCertification,FireExtinguishersCount,SprinklerSystemStatus,AlarmSystemStatus,EvacuationPlanReviewed,DeficienciesFound,Recommendations,FollowUpDate,FacilityManager,FacilityManagerPhone,FacilityManagerEmail,OverallScore,Notes,CreatedDate,UpdatedDate,DistrictCode) VALUES
('INS001','F001','2023-04-20','David Lee','NFPA Certified',25,'Operational','Operational',1,2,'Replace expired hoses;Update signage','2023-06-01','Angela Perez','5553332222','aperez@district.org',85,'Minor issues fixed','2023-04-25','2023-05-10','DC001');

INSERT INTO facility_fire_safety_inspections (InspectionID,FacilityID,InspectionDate,InspectorName,InspectorCertification,FireExtinguishersCount,SprinklerSystemStatus,AlarmSystemStatus,EvacuationPlanReviewed,DeficienciesFound,Recommendations,FollowUpDate,FacilityManager,FacilityManagerPhone,FacilityManagerEmail,OverallScore,Notes,CreatedDate,UpdatedDate,DistrictCode) VALUES
('INS002','F002','2023-05-15','Maria Gomez','State Fire Inspector',30,'Operational','NeedsRepair',1,1,'Repair alarm panel','2023-07-15','Thomas Reed','5554445555','treed@district.org',78,'Alarm issue pending','2023-05-20','2023-06-05','DC001');

INSERT INTO facility_fire_safety_inspections (InspectionID,FacilityID,InspectionDate,InspectorName,InspectorCertification,FireExtinguishersCount,SprinklerSystemStatus,AlarmSystemStatus,EvacuationPlanReviewed,DeficienciesFound,Recommendations,FollowUpDate,FacilityManager,FacilityManagerPhone,FacilityManagerEmail,OverallScore,Notes,CreatedDate,UpdatedDate,DistrictCode) VALUES
('INS003','F003','2023-06-10','Samuel Ortiz','Certified Fire Safety Officer',20,'Operational','Operational',1,0,'None','', 'Karen Liu','5557778888','kliu@district.org',92,'All good','2023-06-12','2023-06-20','DC001');

-- Teacher remote work schedules
CREATE TABLE teacher_remote_work_schedules
(
    ScheduleID TEXT PRIMARY KEY,
    TeacherID TEXT,
    SchoolCDS TEXT,
    EffectiveStartDate DATE,
    EffectiveEndDate DATE,
    RemoteDaysPerWeek INTEGER,
    PreferredPlatform TEXT,
    DailyHoursRemote REAL,
    DailyHoursOnsite REAL,
    SupervisorName TEXT,
    SupervisorEmail TEXT,
    ApprovalStatus TEXT,
    ApprovalDate DATE,
    Comments TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    Department TEXT,
    Role TEXT,
    ContractHours INTEGER,
    WorkLocation TEXT
);

INSERT INTO teacher_remote_work_schedules (ScheduleID,TeacherID,SchoolCDS,EffectiveStartDate,EffectiveEndDate,RemoteDaysPerWeek,PreferredPlatform,DailyHoursRemote,DailyHoursOnsite,SupervisorName,SupervisorEmail,ApprovalStatus,ApprovalDate,Comments,CreatedDate,UpdatedDate,Department,Role,ContractHours,WorkLocation) VALUES
('SCH001','T001','001001','2023-09-01','2024-06-30',2,'Zoom',4,4,'Principal Adams','padams@school.org','Approved','2023-08-15','Initial remote arrangement','2023-08-01','2023-08-20','Mathematics','Teacher',1800,'Main Campus');

INSERT INTO teacher_remote_work_schedules (ScheduleID,TeacherID,SchoolCDS,EffectiveStartDate,EffectiveEndDate,RemoteDaysPerWeek,PreferredPlatform,DailyHoursRemote,DailyHoursOnsite,SupervisorName,SupervisorEmail,ApprovalStatus,ApprovalDate,Comments,CreatedDate,UpdatedDate,Department,Role,ContractHours,WorkLocation) VALUES
('SCH002','T002','001002','2023-10-01','2024-05-31',3,'Microsoft Teams',5,3,'Vice Principal Lee','vlee@school.org','Pending','','2023-09-20','2023-09-20','Science','Teacher',1700,'North Campus');

INSERT INTO teacher_remote_work_schedules (ScheduleID,TeacherID,SchoolCDS,EffectiveStartDate,EffectiveEndDate,RemoteDaysPerWeek,PreferredPlatform,DailyHoursRemote,DailyHoursOnsite,SupervisorName,SupervisorEmail,ApprovalStatus,ApprovalDate,Comments,CreatedDate,UpdatedDate,Department,Role,ContractHours,WorkLocation) VALUES
('SCH003','T003','001003','2023-11-01','2024-07-31',1,'Google Meet',3,5,'Director Brown','dbrown@school.org','Approved','2023-10-15','Reduced remote due to labs','2023-10-01','2023-10-10','English','Teacher',1800','West Campus');

-- School language accessibility resources
CREATE TABLE school_language_accessibility_resources
(
    ResourceID TEXT PRIMARY KEY,
    SchoolCDS TEXT,
    Language TEXT,
    ResourceType TEXT,
    Description TEXT,
    Provider TEXT,
    Availability TEXT,
    AccessMethod TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    LastReviewDate DATE,
    Status TEXT,
    FundingSource TEXT,
    Quantity INTEGER,
    DigitalLink TEXT,
    PhysicalLocation TEXT,
    Notes TEXT
);

INSERT INTO school_language_accessibility_resources (ResourceID,SchoolCDS,Language,ResourceType,Description,Provider,Availability,AccessMethod,ContactPerson,ContactPhone,ContactEmail,CreatedDate,UpdatedDate,LastReviewDate,Status,FundingSource,Quantity,DigitalLink,PhysicalLocation,Notes) VALUES
('RES001','001001','Spanish','BilingualStaff','Spanish speaking staff for translation','District HR','FullTime','InPerson','Maria Soto','5551113333','msoto@school.org','2023-01-10','2023-07-01','2023-06-15','Active','District Budget',2,'','Main Office','');

INSERT INTO school_language_accessibility_resources (ResourceID,SchoolCDS,Language,ResourceType,Description,Provider,Availability,AccessMethod,ContactPerson,ContactPhone,ContactEmail,CreatedDate,UpdatedDate,LastReviewDate,Status,FundingSource,Quantity,DigitalLink,PhysicalLocation,Notes) VALUES
('RES002','001002','Mandarin','AudioMaterials','Mandarin language learning audio CDs','Language Center','Limited','Borrow','Jin Wu','5552224444','jwu@school.org','2023-02-20','2023-08-05','2023-07-25','Active','Grant','30','http://audio.mandarin.org','Media Center','');

INSERT INTO school_language_accessibility_resources (ResourceID,SchoolCDS,Language,ResourceType,Description,Provider,Availability,AccessMethod,ContactPerson,ContactPhone,ContactEmail,CreatedDate,UpdatedDate,LastReviewDate,Status,FundingSource,Quantity,DigitalLink,PhysicalLocation,Notes) VALUES
('RES003','001003','AmericanSignLanguage','InterpretationService','ASL interpreter for events','Community Partner','OnDemand','Remote','Liam Fox','5553335555','lfox@school.org','2023-03-15','2023-09-01','2023-08-20','Active','Community Funding',1,'','Auditorium','');

-- District building energy rating
CREATE TABLE district_building_energy_rating
(
    RatingID TEXT PRIMARY KEY,
    BuildingID TEXT,
    DistrictCode TEXT,
    RatingYear INTEGER,
    RatingScore INTEGER,
    RatingScale TEXT,
    TotalEnergyUseKWh REAL,
    SourceEnergyUseKWh REAL,
    RenewableEnergyPct REAL,
    CO2EmissionsTonnes REAL,
    EnergyStarCertified INTEGER,
    CertificationDate DATE,
    AuditorName TEXT,
    AuditorCompany TEXT,
    AuditReportURL TEXT,
    Recommendations TEXT,
    ImprovementPlanStatus TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    Notes TEXT
);

INSERT INTO district_building_energy_rating (RatingID,BuildingID,DistrictCode,RatingYear,RatingScore,RatingScale,TotalEnergyUseKWh,SourceEnergyUseKWh,RenewableEnergyPct,CO2EmissionsTonnes,EnergyStarCertified,CertificationDate,AuditorName,AuditorCompany,AuditReportURL,Recommendations,ImprovementPlanStatus,CreatedDate,UpdatedDate,Notes) VALUES
('ER001','B001','DC001',2023,85,'A',1200000,900000,15,250,1,'2023-04-10','Karen Smith','EcoAudit LLC','http://reports.district.org/er001','Upgrade HVAC;Add solar panels','InProgress','2023-04-15','2023-05-01','');

INSERT INTO district_building_energy_rating (RatingID,BuildingID,DistrictCode,RatingYear,RatingScore,RatingScale,TotalEnergyUseKWh,SourceEnergyUseKWh,RenewableEnergyPct,CO2EmissionsTonnes,EnergyStarCertified,CertificationDate,AuditorName,AuditorCompany,AuditReportURL,Recommendations,ImprovementPlanStatus,CreatedDate,UpdatedDate,Notes) VALUES
('ER002','B002','DC001',2023,78,'B',1500000,1150000,10,320,0,'2023-05-20','Mike Johnson','GreenMetrics','http://reports.district.org/er002','Install LED lighting;Seal windows','Planned','2023-05-25','2023-06-10','');

INSERT INTO district_building_energy_rating (RatingID,BuildingID,DistrictCode,RatingYear,RatingScore,RatingScale,TotalEnergyUseKWh,SourceEnergyUseKWh,RenewableEnergyPct,CO2EmissionsTonnes,EnergyStarCertified,CertificationDate,AuditorName,AuditorCompany,AuditReportURL,Recommendations,ImprovementPlanStatus,CreatedDate,UpdatedDate,Notes) VALUES
('ER003','B003','DC001',2023,92,'A+',1050000,800000,20,210,1,'2023-03-15','Laura Chen','SustainAudit','http://reports.district.org/er003','Add geothermal heat pump','Completed','2023-03-20','2023-04-05','Excellent performance');

-- Student peer tutoring sessions
CREATE TABLE student_peer_tutoring_sessions
(
    SessionID TEXT PRIMARY KEY,
    SchoolCDS TEXT,
    TutorStudentID TEXT,
    TuteeStudentID TEXT,
    Subject TEXT,
    SessionDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    DurationMinutes INTEGER,
    Location TEXT,
    TutorGradeLevel TEXT,
    TuteeGradeLevel TEXT,
    SessionOutcome TEXT,
    TutorFeedback TEXT,
    TuteeFeedback TEXT,
    SupervisorName TEXT,
    SupervisorEmail TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    Notes TEXT
);

INSERT INTO student_peer_tutoring_sessions (SessionID,SchoolCDS,TutorStudentID,TuteeStudentID,Subject,SessionDate,StartTime,EndTime,DurationMinutes,Location,TutorGradeLevel,TuteeGradeLevel,SessionOutcome,TutorFeedback,TuteeFeedback,SupervisorName,SupervisorEmail,CreatedDate,UpdatedDate,Notes) VALUES
('TS001','001001','S1001','S2001','Mathematics','2023-09-12','15:00','16:00',60,'Library','8','7','Improved test scores','Very helpful','Clear explanations','Ms. Patel','mpatel@school.org','2023-09-01','2023-09-13','');

INSERT INTO student_peer_tutoring_sessions (SessionID,SchoolCDS,TutorStudentID,TuteeStudentID,Subject,SessionDate,StartTime,EndTime,DurationMinutes,Location,TutorGradeLevel,TuteeGradeLevel,SessionOutcome,TutorFeedback,TuteeFeedback,SupervisorName,SupervisorEmail,CreatedDate,UpdatedDate,Notes) VALUES
('TS002','001002','S3002','S4003','Science','2023-10-05','14:30','15:45',75,'Science Lab','10','9','Better lab report','Enjoyed teaching','Learned new concepts','Mr. Gomez','mgomez@school.org','2023-09-20','2023-10-06','');

INSERT INTO student_peer_tutoring_sessions (SessionID,SchoolCDS,TutorStudentID,TuteeStudentID,Subject,SessionDate,StartTime,EndTime,DurationMinutes,Location,TutorGradeLevel,TuteeGradeLevel,SessionOutcome,TutorFeedback,TuteeFeedback,SupervisorName,SupervisorEmail,CreatedDate,UpdatedDate,Notes) VALUES
('TS003','001003','S5005','S6006','English','2023-11-10','16:00','17:00',60,'Classroom','11','10','Improved essay structure','Made it fun','More confident writing','Ms. Lee','mlee@school.org','2023-10-25','2023-11-11','');