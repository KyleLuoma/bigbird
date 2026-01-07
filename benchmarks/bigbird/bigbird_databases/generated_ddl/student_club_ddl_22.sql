-- Research data sharing agreement details
CREATE TABLE research_data_sharing_agreement
(
    agreement_id TEXT PRIMARY KEY,
    data_set_name TEXT,
    principal_investigator TEXT,
    collaborating_institution TEXT,
    start_date TEXT,
    end_date TEXT,
    data_classification TEXT,
    access_level TEXT,
    encryption_method TEXT,
    storage_location TEXT,
    compliance_framework TEXT,
    reviewer TEXT,
    review_date TEXT,
    approved TEXT,
    terms_summary TEXT,
    data_retention_period INTEGER,
    sharing_mechanism TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    notes TEXT
);

INSERT INTO research_data_sharing_agreement VALUES
('AGR001','GenomeSeq2023','DrSmith','BioLabX','2023-01-15','2025-01-14','Confidential','ReadOnly','AES256','SecureServer01','HIPAA','DrJones','2023-01-20','Yes','StandardTerms','365','API','smith@example.com','5551234567','Initial agreement');
INSERT INTO research_data_sharing_agreement VALUES
('AGR002','ClimateModelData','ProfLee','EnviroInstitute','2022-06-01','2024-05-31','Public','Open','None','CloudBucketA','GDPR','ProfKim','2022-06-10','Yes','OpenDataTerms','730','Download','lee@example.com','5559876543','Extended usage');
INSERT INTO research_data_sharing_agreement VALUES
('AGR003','SocialSurvey2022','DrPatel','SociologyDept','2022-03-01','2023-02-28','Sensitive','Restricted','RSA2048','DataVaultB','FERPA','DrWong','2022-03-05','No','PendingReview','180','SecurePortal','patel@example.com','5555551212','Awaiting approval');

-- Campus green initiative tracking
CREATE TABLE campus_green_initiative
(
    initiative_id TEXT PRIMARY KEY,
    name TEXT,
    description TEXT,
    launch_date TEXT,
    target_year INTEGER,
    carbon_reduction_goal REAL,
    energy_savings_goal REAL,
    water_savings_goal REAL,
    waste_diversion_goal REAL,
    responsible_department TEXT,
    lead_coordinator TEXT,
    budget_allocated INTEGER,
    funds_spent INTEGER,
    status TEXT,
    metrics_reported TEXT,
    partners TEXT,
    certification_status TEXT,
    certification_body TEXT,
    next_milestone TEXT,
    notes TEXT
);

INSERT INTO campus_green_initiative VALUES
('INI001','SolarRoofProject','Installation of solar panels across campus','2021-09-01',2025,1500.5,2000.0,500.0,300.0,'Facilities','Miller','500000','120000','InProgress','Q1Report','EnergyCo; GreenTech','Pending','USGBC','Install Phase2','Phase1 completed');
INSERT INTO campus_green_initiative VALUES
('INI002','ZeroWasteDining','Reduce waste in dining halls','2022-01-15',2024,0.0,0.0,0.0,800.0,'Dining Services','Chan','200000','75000','Active','MidYear','LocalFarms; RecycleCo','Certified','LEED','Audit Q3','Compost program expanded');
INSERT INTO campus_green_initiative VALUES
('INI003','BikeShareExpansion','Add bike stations on campus','2023-03-10',2026,0.0,0.0,0.0,0.0,'Transportation','Garcia','150000','30000','Planning','None','CityTransit','Pending','None','Finalize locations','Survey community');

-- Faculty sabbatical records
CREATE TABLE faculty_sabbatical
(
    sabbatical_id TEXT PRIMARY KEY,
    faculty_id TEXT,
    start_date TEXT,
    end_date TEXT,
    purpose TEXT,
    host_institution TEXT,
    grant_amount REAL,
    approved_by TEXT,
    approval_date TEXT,
    status TEXT,
    publications_expected INTEGER,
    courses_deferred INTEGER,
    replacement_faculty_id TEXT,
    department TEXT,
    college TEXT,
    notes TEXT,
    travel_funds REAL,
    housing_funds REAL,
    research_funds REAL,
    total_funds REAL
);

INSERT INTO faculty_sabbatical VALUES
('SAB001','FAC123','2024-06-01','2025-05-31','Advanced AI Research','TechUniversity','120000','DeanHill','2024-04-15','Approved',3,2,'FAC456','ComputerScience','Engineering','AI focus','20000','15000','85000','120000');
INSERT INTO faculty_sabbatical VALUES
('SAB002','FAC789','2023-09-01','2024-08-31','Cultural Studies Exchange','GlobalArtsInst','80000','DeanLee','2023-07-20','Approved',2,1,'FAC321','History','Arts','Southeast Asia','10000','12000','58000','80000');
INSERT INTO faculty_sabbatical VALUES
('SAB003','FAC555','2025-01-01','2025-12-31','Renewable Energy Fieldwork','EcoResearchCenter','95000','DeanKim','2024-11-10','Pending',1,0,NULL,'EnvironmentalScience','Sciences','Wind turbine study','15000','20000','60000','95000');

-- Digital learning pathway catalog
CREATE TABLE digital_learning_pathway
(
    pathway_id TEXT PRIMARY KEY,
    title TEXT,
    description TEXT,
    creator_id TEXT,
    creation_date TEXT,
    last_updated TEXT,
    content_type TEXT,
    duration_hours INTEGER,
    skill_level TEXT,
    prerequisite_pathway TEXT,
    target_audience TEXT,
    enrollment_cap INTEGER,
    current_enrollment INTEGER,
    certification_available TEXT,
    certification_type TEXT,
    cost INTEGER,
    language TEXT,
    platform TEXT,
    access_url TEXT,
    notes TEXT
);

INSERT INTO digital_learning_pathway VALUES
('DP001','DataScience Foundations','Introductory data science concepts','ADM001','2022-02-10','2023-01-05','Video','40','Beginner','None','Students; Professionals','200','150','Yes','Certificate','0','English','LMS','https://lms.university.edu/dp001','High demand');
INSERT INTO digital_learning_pathway VALUES
('DP002','Advanced Cybersecurity','Deep dive into network security','ADM002','2021-08-15','2022-12-20','Interactive','60','Advanced','DP001','IT Staff','100','80','Yes','ProfessionalCert','300','English','LMS','https://lms.university.edu/dp002','Requires prior experience');
INSERT INTO digital_learning_pathway VALUES
('DP003','Creative Writing Workshop','Enhance narrative skills','ADM003','2023-05-01','2023-05-01','Text','30','Intermediate','None','Undergraduates','150','20','No','None','0','English','LMS','https://lms.university.edu/dp003','Open enrollment');

-- Alumni event participation log
CREATE TABLE alumni_event_log
(
    log_id TEXT PRIMARY KEY,
    alumni_id TEXT,
    event_id TEXT,
    registration_date TEXT,
    attendance_status TEXT,
    role TEXT,
    feedback_score INTEGER,
    remarks TEXT,
    sponsor_name TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    meal_preference TEXT,
    accommodation_needed TEXT,
    travel_arrival TEXT,
    travel_departure TEXT,
    gift_amount INTEGER,
    volunteer_hours INTEGER,
    badge_id TEXT,
    photo_url TEXT,
    notes TEXT
);

INSERT INTO alumni_event_log VALUES
('LOG001','ALU1001','EVT2023A','2023-04-10','Attended','Speaker','9','Excellent','TechCorp','alumni1@example.com','5551112222','Vegetarian','No','2023-05-01','2023-05-02','500','2','BADGE01','https://photos.university.edu/alumni1.jpg','Keynote speaker');
INSERT INTO alumni_event_log VALUES
('LOG002','ALU1002','EVT2023B','2023-04-12','NoShow','Attendee','0','Did not attend','HealthInc','alumni2@example.com','5553334444','None','Yes','2023-05-03','2023-05-04','0','0','BADGE02','https://photos.university.edu/alumni2.jpg','Requested accommodation');
INSERT INTO alumni_event_log VALUES
('LOG003','ALU1003','EVT2023A','2023-04-09','Attended','Volunteer','8','Very helpful','EduPartners','alumni3@example.com','5555556666','GlutenFree','No','2023-05-01','2023-05-02','200','5','BADGE03','https://photos.university.edu/alumni3.jpg','Managed registration desk');

-- Student project portfolio records
CREATE TABLE student_project_portfolio
(
    portfolio_id TEXT PRIMARY KEY,
    student_id TEXT,
    project_title TEXT,
    start_date TEXT,
    end_date TEXT,
    advisor_id TEXT,
    department TEXT,
    description TEXT,
    technology_stack TEXT,
    project_url TEXT,
    repository_url TEXT,
    demo_video_url TEXT,
    outcome TEXT,
    grade TEXT,
    awards TEXT,
    funding_source TEXT,
    budget INTEGER,
    hours_spent INTEGER,
    status TEXT,
    notes TEXT
);

INSERT INTO student_project_portfolio VALUES
('PRT001','STU001','SmartCampus App','2022-09-01','2023-04-30','ADV100','ComputerScience','Mobile app for campus navigation','Flutter; Firebase','https://projects.university.edu/prt001','https://github.com/student1/smartcampus','https://youtu.be/demo1','Deployed','A+','BestAppAward','UniversityGrant','15000','300','Completed','Used by 2000+ students');
INSERT INTO student_project_portfolio VALUES
('PRT002','STU002','Renewable Energy Drone','2021-01-15','2021-12-20','ADV200','ElectricalEngineering','Drone for solar panel inspection','Python; ROS','https://projects.university.edu/prt002','https://github.com/student2/energydrone','https://youtu.be/demo2','Prototype','A','InnovationChallenge','IndustrySponsor','20000','350','Completed','Presented at conference');
INSERT INTO student_project_portfolio VALUES
('PRT003','STU003','Historical Data Visualization','2023-02-01','2023-08-15','ADV300','History','Interactive visualizations of local archives','D3.js; PostgreSQL','https://projects.university.edu/prt003','https://github.com/student3/histoviz','https://youtu.be/demo3','Web app','B+','None','DepartmentFund','8000','180','InProgress','Beta testing with faculty');

-- Facility asset depreciation schedule
CREATE TABLE facility_asset_depreciation
(
    asset_id TEXT PRIMARY KEY,
    asset_name TEXT,
    purchase_date TEXT,
    purchase_cost REAL,
    useful_life_years INTEGER,
    depreciation_method TEXT,
    annual_depreciation REAL,
    accumulated_depreciation REAL,
    net_book_value REAL,
    asset_category TEXT,
    location TEXT,
    custodian_id TEXT,
    maintenance_schedule TEXT,
    last_maintenance_date TEXT,
    warranty_expiration TEXT,
    insurance_provider TEXT,
    insurance_policy TEXT,
    residual_value REAL,
    depreciation_status TEXT,
    notes TEXT
);

INSERT INTO facility_asset_depreciation VALUES
('AST001','3D Printer','2020-03-10','12000','5','StraightLine','2400','7200','4800','Equipment','LabA','ADM001','Quarterly','2023-01-15','2023-03-10','InsureCo','POL12345','2000','Active','Regular use for prototyping');
INSERT INTO facility_asset_depreciation VALUES
('AST002','HVAC System','2018-07-01','85000','15','DecliningBalance','8500','25500','59500','Infrastructure','BuildingB','ADM002','Annual','2022-12-01','2023-07-01','CoverAll','POL67890','5000','Active','Energy efficient upgrade 2021');
INSERT INTO facility_asset_depreciation VALUES
('AST003','Projector X200','2021-11-20','2500','4','StraightLine','625','1250','1250','AVEquipment','Auditorium','ADM003','Biannual','2023-03-20','2025-11-20','ProtectPlus','POL54321','300','Active','Replaced bulbs annually');

-- Vendor contract terms table
CREATE TABLE vendor_contract_term
(
    contract_id TEXT PRIMARY KEY,
    vendor_id TEXT,
    start_date TEXT,
    end_date TEXT,
    contract_type TEXT,
    payment_terms TEXT,
    discount_rate REAL,
    penalty_clause TEXT,
    renewal_option TEXT,
    notice_period_days INTEGER,
    governing_law TEXT,
    responsible_manager TEXT,
    authorized_signatory TEXT,
    total_value REAL,
    currency TEXT,
    scope_of_work TEXT,
    performance_metrics TEXT,
    termination_conditions TEXT,
    confidentiality_clause TEXT,
    notes TEXT
);

INSERT INTO vendor_contract_term VALUES
('VCT001','VND100','2022-01-01','2024-12-31','Supply','Net30','5','LateDeliveryPenalty','AutoRenew','60','StateLaw','Miller','Lee','500000','USD','Provide lab consumables','OnTimeDelivery; QualityScore','BreachOfContract','StandardNDA','Preferred vendor');
INSERT INTO vendor_contract_term VALUES
('VCT002','VND200','2023-05-15','2025-05-14','Service','Net45','0','ServiceLevelPenalty','OptionToRenew','90','FederalLaw','Kim','Patel','250000','USD','Campus IT support','ResponseTime; Uptime','TerminationForCause','StrictConfidentiality','Renewal pending');
INSERT INTO vendor_contract_term VALUES
('VCT003','VND300','2021-09-01','2023-08-31','Construction','Net60','2','DelayPenalty','NoRenewal','30','StateLaw','Garcia','Sanchez','1200000','USD','Renovate science building','BudgetCompliance; Safety','TerminationOnDelay','ConfidentialityRequired','Project completed');

-- Community service hour tracking
CREATE TABLE community_service_hour
(
    record_id TEXT PRIMARY KEY,
    member_id TEXT,
    service_date TEXT,
    hours_logged REAL,
    activity_type TEXT,
    location TEXT,
    supervisor_name TEXT,
    approval_status TEXT,
    notes TEXT,
    project_id TEXT,
    community_partner TEXT,
    impact_metric TEXT,
    travel_time REAL,
    equipment_used TEXT,
    safety_requirements TEXT,
    training_completed TEXT,
    feedback_score INTEGER,
    follow_up_required TEXT,
    follow_up_date TEXT,
    documentation_url TEXT,
    weather_conditions TEXT
);

INSERT INTO community_service_hour VALUES
('CSR001','MEM001','2023-04-10','4','FoodBankSorting','DowntownCenter','CoachBrown','Approved','N/A','PRJ101','FoodBankOrg','MealsPrepared','0.5','None','None','Orientation','8','No','NULL','https://docs.university.edu/csr001','Sunny');
INSERT INTO community_service_hour VALUES
('CSR002','MEM002','2023-03-22','6','ParkCleanup','RiverPark','SupervisorGreen','Pending','Need supervisor signature','PRJ102','CityParksDept','LitterRemoved','0.3','TrashBags','Gloves','SafetyBriefing','9','Yes','2023-04-01','https://docs.university.edu/csr002','Cloudy');
INSERT INTO community_service_hour VALUES
('CSR003','MEM003','2023-05-05','3','SeniorCenterVisit','GoldenYearsHome','CoordinatorWhite','Approved','Assist with activities','PRJ103','SeniorAid','HoursEngaged','0.2','BoardGames','Mask','OnlineTraining','7','No','NULL','https://docs.university.edu/csr003','Rain');

-- Technology incubator program details
CREATE TABLE technology_incubator
(
    incubator_id TEXT PRIMARY KEY,
    name TEXT,
    launch_date TEXT,
    managing_department TEXT,
    capacity INTEGER,
    focus_area TEXT,
    funding_source TEXT,
    annual_budget REAL,
    mentor_count INTEGER,
    startup_count INTEGER,
    average_funding_per_startup REAL,
    success_rate REAL,
    location TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    website_url TEXT,
    program_duration_months INTEGER,
    eligibility_criteria TEXT,
    application_deadline TEXT,
    notes TEXT
);

INSERT INTO technology_incubator VALUES
('INC001','InnovationHub','2020-09-01','Entrepreneurship','30','AI;IoT','UniversityEndowment','750000','15','20','50000','0.35','TechPark','incubate@example.com','5557778888','https://incubator.university.edu','12','Must be student startup','2023-11-30','First cohort graduated');
INSERT INTO technology_incubator VALUES
('INC002','HealthTechLab','2021-03-15','HealthSciences','20','MedTech','GrantFunding','500000','10','12','75000','0.42','HealthCenter','healthinc@example.com','5558889999','https://healthtech.university.edu','18','Healthcare focus startup','2024-01-15','Partnered with local hospitals');
INSERT INTO technology_incubator VALUES
('INC003','GreenTechAccelerator','2022-01-20','EnvironmentalStudies','25','CleanEnergy','CorporateSponsor','600000','12','18','60000','0.28','SustainabilityBuilding','greeninc@example.com','5559990000','https://greentech.university.edu','24','Clean tech solution required','2024-03-01','Includes pilot testing facilities');