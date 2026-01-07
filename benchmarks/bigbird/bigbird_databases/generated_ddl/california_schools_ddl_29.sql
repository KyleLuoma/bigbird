-- State education fund programs
CREATE TABLE state_fund_programs (
    ProgramID TEXT NOT NULL PRIMARY KEY,
    ProgramName TEXT,
    FiscalYear INTEGER,
    FundingAgency TEXT,
    TotalAllocation REAL,
    AllocationType TEXT,
    EligibilityCriteria TEXT,
    ApplicationDeadline DATE,
    AwardStartDate DATE,
    AwardEndDate DATE,
    MatchingRequirement REAL,
    ReportingFrequency TEXT,
    PerformanceMetric TEXT,
    TargetPopulation TEXT,
    GeographicScope TEXT,
    MaxGrantAmount REAL,
    MinGrantAmount REAL,
    FundingCategory TEXT,
    ProgramStatus TEXT,
    ContactPersonFirstName TEXT,
    ContactPersonLastName TEXT,
    ContactEmail TEXT,
    ContactPhone TEXT,
    ProgramDescription TEXT,
    CreatedDate DATE,
    UpdatedDate DATE
);
INSERT INTO state_fund_programs VALUES ('PRG001','STEM_Initiative',2023,'Dept_of_Education',5000000,'Grant','K12_School','2023-05-01','2023-07-01','2025-06-30',0.2,'Annual','Student_Test_Scores','Low_Income','Statewide',250000,50000,'Science','Active','John','Doe','john.doe@example.com','5551234567','Support_STEM_curricula', '2023-04-01','2023-04-10');
INSERT INTO state_fund_programs VALUES ('PRG002','Literacy_Improvement',2022,'Dept_of_Education',3000000,'Grant','Elementary_School','2022-04-15','2022-06-01','2024-05-31',0.15,'SemiAnnual','Reading_Proficiency','Title_I','Statewide',150000,30000,'Language_Arts','Active','Jane','Smith','jane.smith@example.com','5559876543','Boost_literacy_rates', '2022-03-20','2022-03-28');
INSERT INTO state_fund_programs VALUES ('PRG003','Career_Tech_Grant',2024,'Dept_of_Education',2000000,'Grant','Technical_School','2024-01-10','2024-02-15','2026-12-31',0.1,'Annual','Job_Placement_Rates','Adult_Education','Statewide',100000,20000,'Career_Tech','Pending','Mike','Brown','mike.brown@example.com','5555551212','Expand_career_tech_programs', '2024-01-01','2024-01-05');

-- National research grants
CREATE TABLE national_research_grants (
    GrantID TEXT NOT NULL PRIMARY KEY,
    GrantTitle TEXT,
    FundingAgency TEXT,
    AwardYear INTEGER,
    Amount REAL,
    ResearchArea TEXT,
    Eligibility TEXT,
    ApplicationURL TEXT,
    ReviewPanel TEXT,
    AwardStatus TEXT,
    StartDate DATE,
    EndDate DATE,
    PrincipalInvestigatorFirstName TEXT,
    PrincipalInvestigatorLastName TEXT,
    PI_Email TEXT,
    PI_Institution TEXT,
    PublicationRequirement TEXT,
    ReportingRequirement TEXT,
    FundingMechanism TEXT,
    GrantType TEXT,
    ContactPhone TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    Notes TEXT
);
INSERT INTO national_research_grants VALUES ('RG001','Early_Reading_Study','National_Science_Foundation',2023,750000,'Education','Universities','http://nsf.gov/rg001','Panel_A','Awarded','2023-09-01','2026-08-31','Alice','Green','alice.green@university.edu','State_University','Two_Papers','Annual','Grant','Research','5551112222','2023-07-15','2023-07-20','Phase_one_completed');
INSERT INTO national_research_grants VALUES ('RG002','STEM_Teacher_Efficacy','Department_of_Education',2022,500000,'Teacher_Effectiveness','College_of_Education','http://doe.gov/rg002','Panel_B','Awarded','2022-05-15','2025-05-14','Bob','White','bob.white@college.edu','Tech_Institute','One_Paper','SemiAnnual','Cooperative_Agreement','Research','5553334444','2022-04-10','2022-04-12','Data_collection_started');
INSERT INTO national_research_grants VALUES ('RG003','Digital_Learning_Analytics','National_Endowment_for_Education',2024,600000,'EdTech','Research_Centers','http://ned.gov/rg003','Panel_C','Pending','2024-01-20','2027-01-19','Carol','Black','carol.black@researchcenter.org','Innovation_Hub','Three_Papers','Quarterly','Grant','Research','5557778888','2024-01-05','2024-01-07','Proposal_under_review');

-- Federal policy documents
CREATE TABLE federal_policy_documents (
    DocumentID TEXT NOT NULL PRIMARY KEY,
    Title TEXT,
    IssuingAgency TEXT,
    PublicationDate DATE,
    EffectiveDate DATE,
    DocumentType TEXT,
    Summary TEXT,
    URL TEXT,
    PolicyArea TEXT,
    VersionNumber TEXT,
    RevisionDate DATE,
    Status TEXT,
    ResponsibleOffice TEXT,
    ContactName TEXT,
    ContactEmail TEXT,
    ContactPhone TEXT,
    Language TEXT,
    ConfidentialityLevel TEXT,
    DistributionMethod TEXT,
    ReviewCycle TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    Comments TEXT
);
INSERT INTO federal_policy_documents VALUES ('DOC001','Student_Data_Privacy','Department_of_Education','2022-03-01','2022-07-01','Regulation','Guidelines_for_student_data','http://doe.gov/doc001','Privacy','v1.0','2022-03-01','Active','Office_of_Policy','Dana Lee','dana.lee@doe.gov','5552223333','English','Public','Online','Annual','2022-02-10','2022-02-15','Initial_release');
INSERT INTO federal_policy_documents VALUES ('DOC002','STEM_Education_Strategy','National_Science_Foundation','2021-11-15','2022-01-01','Strategy','National_plan_for_STEM','http://nsf.gov/doc002','STEM','v2.1','2022-01-15','Active','Strategic_Initiatives','Evan Kim','evan.kim@nsf.gov','5554445555','English','Public','PDF','Biennial','2021-10-20','2021-10-25','Updated_for_2022');
INSERT INTO federal_policy_documents VALUES ('DOC003','Remote_Learning_Standards','Department_of_Education','2023-06-10','2023-09-01','Standard','Framework_for_remote_instruction','http://doe.gov/doc003','Instruction','v1.3','2023-06-15','Draft','Office_of_Innovation','Fiona Clark','fiona.clark@doe.gov','5556667777','English','Public','Web','Annual','2023-05-01','2023-05-05','Pending_approval');

-- EdTech vendor performance
CREATE TABLE edtech_vendor_performance (
    VendorID TEXT NOT NULL PRIMARY KEY,
    VendorName TEXT,
    ContractID TEXT,
    ServiceCategory TEXT,
    PerformanceScore REAL,
    EvaluationDate DATE,
    AvgResponseTime REAL,
    UptimePercentage REAL,
    SupportTicketsClosed INTEGER,
    IssuesReported INTEGER,
    RenewalDate DATE,
    ContractValue REAL,
    PaymentTerms TEXT,
    PrimaryContactFirstName TEXT,
    PrimaryContactLastName TEXT,
    PrimaryContactEmail TEXT,
    PrimaryContactPhone TEXT,
    ComplianceStatus TEXT,
    AuditDate DATE,
    Notes TEXT,
    CreatedDate DATE,
    UpdatedDate DATE
);
INSERT INTO edtech_vendor_performance VALUES ('VND001','EduSoft','CTR001','Learning_Management','89.5','2023-12-01',2.1,99.2,150,5,'2025-01-01',1200000,'Net30','Grace','Hill','grace.hill@edusoft.com','5558889999','Compliant','2023-11-15','Positive_trend','2023-10-01','2023-12-02');
INSERT INTO edtech_vendor_performance VALUES ('VND002','TechLearn','CTR002','Assessment_Tools','76.3','2023-11-20',3.5,96.8,200,12,'2024-07-01',800000,'Net45','Henry','Young','henry.young@techlearn.com','5557776666','Conditional','2023-10-30','Areas_for_improvement','2023-09-15','2023-11-21');
INSERT INTO edtech_vendor_performance VALUES ('VND003','DigitalEdu','CTR003','Virtual_Classroom','92.0','2024-01-10',1.9,99.8,120,2,'2026-03-15',1500000,'Net30','Ivy','Martinez','ivy.martinez@digitaledu.com','5553332222','Compliant','2023-12-20','Exceeds_expectations','2023-12-01','2024-01-11');

-- Professional learning module catalog
CREATE TABLE professional_learning_module_catalog (
    ModuleID TEXT NOT NULL PRIMARY KEY,
    ModuleTitle TEXT,
    Category TEXT,
    TargetAudience TEXT,
    DeliveryMode TEXT,
    DurationHours REAL,
    CreditHours REAL,
    Cost REAL,
    Language TEXT,
    AccessibilityFeatures TEXT,
    PrerequisiteModules TEXT,
    LearningObjectives TEXT,
    AssessmentMethod TEXT,
    ProviderOrganization TEXT,
    ProviderContact TEXT,
    ReleaseDate DATE,
    ExpirationDate DATE,
    VersionNumber TEXT,
    Rating REAL,
    NumberOfEnrollments INTEGER,
    CreatedDate DATE,
    UpdatedDate DATE,
    Notes TEXT
);
INSERT INTO professional_learning_module_catalog VALUES ('MOD001','Advanced_Data_Analytics','Data_Science','Teachers','Online',20,2,300,'English','Captioning,Transcripts','MOD000','Analyze_big_data','Project','EduAnalyticsInc','contact@eduanalytics.com','2023-02-01','2025-02-01','v1.2',4.5,150,'2023-01-15','2023-02-05','Highly_rated');
INSERT INTO professional_learning_module_catalog VALUES ('MOD002','Inclusive_Classroom_Strategies','Equity','Teachers','Hybrid',15,1.5,200,'English','Closed_Captions','MOD001','Implement_inclusive_practices','Quiz','EquityCenter','info@equitycenter.org','2022-09-10','2024-09-10','v2.0',4.2,200,'2022-08-20','2022-09-12','Updated_content');
INSERT INTO professional_learning_module_catalog VALUES ('MOD003','Cybersecurity_Basics_for_Educators','Security','Staff','Online',10,1,150,'English','None','None','Identify_cyber_threats','Exam','SecureEdu','support@secureedu.com','2023-05-05','2025-05-05','v1.0',4.8,120,'2023-04-25','2023-05-06','New_release');

-- Workforce credential statistics
CREATE TABLE workforce_credential_statistics (
    StatisticID TEXT NOT NULL PRIMARY KEY,
    CredentialType TEXT,
    Year INTEGER,
    TotalAwarded INTEGER,
    RenewalRate REAL,
    PassPercentage REAL,
    AverageScore REAL,
    MedianScore REAL,
    MinimumScore REAL,
    MaximumScore REAL,
    CredentialProvider TEXT,
    Region TEXT,
    ReportingPeriod TEXT,
    DataSource TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    Notes TEXT,
    ConfidenceIntervalLow REAL,
    ConfidenceIntervalHigh REAL,
    StandardError REAL,
    SampleSize INTEGER,
    Comment TEXT
);
INSERT INTO workforce_credential_statistics VALUES ('STAT001','Teaching_Certification',2022,12000,0.85,92.5,88.3,89,70,100,'State_Education_Board','West','Annual','Internal','2023-01-10','2023-01-15','Stable_trend',90.0,95.0,0.5,12000,'Data_verified');
INSERT INTO workforce_credential_statistics VALUES ('STAT002','School_Administrator_Cert',2021,3500,0.78,88.0,84.2,85,60,98,'State_Education_Board','East','Annual','Internal','2022-02-05','2022-02-10','Slight_decline',82.0,90.0,0.6,3500,'Review_needed');
INSERT INTO workforce_credential_statistics VALUES ('STAT003','Special_Education_Cert',2023,4200,0.82,90.1,86.5,87,65,99,'State_Education_Board','Central','Annual','Internal','2024-03-12','2024-03-18','Consistent',85.0,92.0,0.55,4200,'On_track');

-- Infrastructure project funding
CREATE TABLE infrastructure_project_funding (
    ProjectID TEXT NOT NULL PRIMARY KEY,
    ProjectName TEXT,
    FundingSource TEXT,
    AmountRequested REAL,
    AmountApproved REAL,
    FiscalYear INTEGER,
    ProjectStatus TEXT,
    StartDate DATE,
    ExpectedCompletionDate DATE,
    ActualCompletionDate DATE,
    ProjectLeadFirstName TEXT,
    ProjectLeadLastName TEXT,
    LeadEmail TEXT,
    LeadPhone TEXT,
    Description TEXT,
    EnvironmentalImpactScore REAL,
    CostOverrunPercentage REAL,
    AuditFlag TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    Notes TEXT
);
INSERT INTO infrastructure_project_funding VALUES ('PF001','Solar_Panel_Installation','State_Energy_Grant',2000000,1800000,2023,'In_Progress','2023-04-01','2024-12-31',NULL,'Laura','Miller','laura.miller@example.com','5551112222','Install_solar_on_district_buildings',8.5,NULL,'No','2023-03-15','2023-04-10','Pending_completion');
INSERT INTO infrastructure_project_funding VALUES ('PF002','HVAC_Upgrade_Campus','Federal_Infrastructure_Grant',3500000,3400000,2022,'Completed','2022-01-15','2023-05-30','2023-05-28','Mark','Johnson','mark.johnson@example.com','5553334444','Upgrade_hvac_systems_for_energy_efficiency',7.2,2.5,'Yes','2021-12-01','2023-06-01','Audit_completed');
INSERT INTO infrastructure_project_funding VALUES ('PF003','Classroom_Renovation_Phase1','State_Construction_Fund',1200000,1150000,2024,'Planned','2024-09-01','2025-06-30',NULL,'Nina','Patel','nina.patel@example.com','5555556666','Renovate_classrooms_and_update_furniture',6.8,NULL,'No','2024-02-20','2024-03-01','Awaiting_start');

-- Technology innovation awards
CREATE TABLE technology_innovation_awards (
    AwardID TEXT NOT NULL PRIMARY KEY,
    AwardName TEXT,
    Year INTEGER,
    Category TEXT,
    RecipientOrganization TEXT,
    RecipientContactFirstName TEXT,
    RecipientContactLastName TEXT,
    ContactEmail TEXT,
    ContactPhone TEXT,
    AwardAmount REAL,
    Description TEXT,
    InnovationSummary TEXT,
    EvaluationCriteria TEXT,
    JudgesPanel TEXT,
    AnnouncementDate DATE,
    CeremonyDate DATE,
    Sponsor TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    Notes TEXT
);
INSERT INTO technology_innovation_awards VALUES ('AWR001','Visionary_EDTech_Award',2023,'AI_Tools','FutureLearn','Olivia','Garcia','olivia.garcia@futurelearn.org','5557778888',50000,'Recognizes breakthrough AI in education','AI-driven_adaptive_learning_platform','Impact,Scalability,Innovation','Panel_X','2023-03-01','2023-04-15','TechFoundation','2023-02-20','2023-03-02','First_time_recipient');
INSERT INTO technology_innovation_awards VALUES ('AWR002','Sustainable_Tech_Initiative',2022,'Green_Technology','EcoEdu','Samuel','Lee','samuel.lee@ecoedu.org','5559990000',75000,'Awarded for low‑energy classroom devices','Energy‑efficient_tablets','Energy_Savings,Design,Usability','Panel_Y','2022-05-10','2022-06-20','GreenTechAlliance','2022-04-15','2022-05-12','Second_year_winner');
INSERT INTO technology_innovation_awards VALUES ('AWR003','Open_Source_Education_Tool',2024,'Open_Source','OpenLearn','Priya','Kumar','priya.kumar@openlearn.org','5551113333',60000,'Honors contribution to open source learning platforms','Open-source_LMS_with_modular_plugins','Community_Adoption,Code_Quality,Documentation','Panel_Z','2024-01-20','2024-02-28','OpenSourceFoundation','2024-01-05','2024-01-21','Awarded_for_innovation');

-- Curriculum standards versioning
CREATE TABLE curriculum_standards_versioning (
    StandardID TEXT NOT NULL PRIMARY KEY,
    SubjectArea TEXT,
    GradeLevel TEXT,
    VersionNumber TEXT,
    EffectiveDate DATE,
    RevisionDate DATE,
    AuthoringBody TEXT,
    DocumentationURL TEXT,
    ChangeSummary TEXT,
    Status TEXT,
    AdoptionState TEXT,
    ReviewCycleYears INTEGER,
    ContactPersonFirstName TEXT,
    ContactPersonLastName TEXT,
    ContactEmail TEXT,
    ContactPhone TEXT,
    Comments TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    Notes TEXT
);
INSERT INTO curriculum_standards_versioning VALUES ('STD001','Mathematics','Grade_5','v3.2','2023-08-01','2023-08-01','National_Math_Consortium','http://mathconsortium.org/std001','Added_fractions_section','Active','Statewide',5,'Emily','Davis','emily.davis@mathconsortium.org','5552224444','Approved_by_state_boards','2023-07-01','2023-07-15','Current_version');
INSERT INTO curriculum_standards_versioning VALUES ('STD002','Science','Grade_8','v2.5','2022-09-15','2022-09-15','National_Science_Standards_Board','http://scistandards.org/std002','Integrated_chemistry_lab','Active','Statewide',4,'Jacob','Morris','jacob.morris@scistandards.org','5553335555','Pending_state_adoption','2022-08-10','2022-08-20','Revision_due_2026');
INSERT INTO curriculum_standards_versioning VALUES ('STD003','History','Grade_11','v1.9','2024-01-10','2024-01-10','Historical_Education_Committee','http://historyedu.org/std003','Updated_civil_rights_chapter','Draft','Statewide',3,'Sofia','Nguyen','sofia.nguyen@historyedu.org','5554446666','Stakeholder_feedback_requested','2023-12-01','2023-12-10','In_review');

-- Educational data sharing agreements
CREATE TABLE educational_data_sharing_agreements (
    AgreementID TEXT NOT NULL PRIMARY KEY,
    AgreementName TEXT,
    PartnerEntity TEXT,
    DataTypesShared TEXT,
    Purpose TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    DataSecurityLevel TEXT,
    ConsentRequirement TEXT,
    ReviewFrequency TEXT,
    ContactFirstName TEXT,
    ContactLastName TEXT,
    ContactEmail TEXT,
    ContactPhone TEXT,
    Status TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    Notes TEXT,
    ArchiveLocation TEXT,
    LegalReference TEXT,
    MonitoringPlan TEXT
);
INSERT INTO educational_data_sharing_agreements VALUES ('AG001','Student_Outcome_Sharing','University_Research_Center','Student_Grades,Attendance','Research_Analysis','2023-06-01','2026-05-31','High','Required','Annual','Liam','Turner','liam.turner@university.edu','5557770000','Active','2023-05-15','2023-05-20','Data_used_for_longitudinal_studies','/archive/ag001','State_Education_Code_Section12','Quarterly_audits');
INSERT INTO educational_data_sharing_agreements VALUES ('AG002','Teacher_Professional_Development_Metrics','State_Teacher_Association','PD_Hours,Certificates','Program_Evaluation','2022-01-15','2025-01-14','Medium','Optional','BiAnnual','Mia','Cole','mia.cole@teacherassoc.org','5558881111','Active','2021-12-20','2022-01-05','Metrics_shared_for_policy_making','/archive/ag002','Education_Statutes_Section8','Annual_review');
INSERT INTO educational_data_sharing_agreements VALUES ('AG003','Technology_Usage_Logs','EdTech_Vendor_X','Login_Times,Device_Models','Service_Improvement','2024-03-01','2027-02-28','High','Required','Annual','Noah','Adams','noah.adams@edtechx.com','5559992222','Pending','2024-02-10','2024-02-15','Vendor_uses_data_to_optimize_platform','/archive/ag003','Federal_Education_Act_Clause5','SemiAnnual_monitoring');