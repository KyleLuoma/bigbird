-- District technology partnership information
CREATE TABLE district_technology_partnerships
(
    partnership_id               INTEGER PRIMARY KEY,
    district_code                INTEGER NOT NULL,
    partner_name                 TEXT NOT NULL,
    partner_type                 TEXT,
    start_date                   DATE,
    end_date                     DATE,
    agreement_value              REAL,
    contact_name                 TEXT,
    contact_email                TEXT,
    tech_focus_area              TEXT,
    contract_status              TEXT,
    renewal_flag                 INTEGER,
    ip_address_range             TEXT,
    data_sharing_level           TEXT,
    cybersecurity_compliance     TEXT,
    training_hours               REAL,
    support_level                TEXT,
    notes                        TEXT,
    created_at                   DATE,
    updated_at                   DATE,
    compliance_audit_date        DATE,
    audit_result                 TEXT
);

INSERT INTO district_technology_partnerships (partnership_id,district_code,partner_name,partner_type,start_date,end_date,agreement_value,contact_name,contact_email,tech_focus_area,contract_status,renewal_flag,ip_address_range,data_sharing_level,cybersecurity_compliance,training_hours,support_level,notes,created_at,updated_at,compliance_audit_date,audit_result) VALUES
(1,101,'TechCo','Software','2021-06-01','2024-05-31',250000.00,'AliceSmith','alice.smith@techco.com','LearningManagement','Active',1,'192.168.0.0/24','Full','ISO27001',120.5,'24x7','Initial contract','2021-05-15','2021-05-15','2021-06-15','Pass');

INSERT INTO district_technology_partnerships (partnership_id,district_code,partner_name,partner_type,start_date,end_date,agreement_value,contact_name,contact_email,tech_focus_area,contract_status,renewal_flag,ip_address_range,data_sharing_level,cybersecurity_compliance,training_hours,support_level,notes,created_at,updated_at,compliance_audit_date,audit_result) VALUES
(2,102,'NetSolutions','Infrastructure','2022-01-15','2025-01-14',180000.00,'BobJones','bob.jones@netsol.com','NetworkUpgrade','Pending',0,'10.0.0.0/16','Limited','SOC2',80.0,'BusinessHours','Awaiting signoff','2022-01-10','2022-01-10','2022-02-01','Pending');

INSERT INTO district_technology_partnerships (partnership_id,district_code,partner_name,partner_type,start_date,end_date,agreement_value,contact_name,contact_email,tech_focus_area,contract_status,renewal_flag,ip_address_range,data_sharing_level,cybersecurity_compliance,training_hours,support_level,notes,created_at,updated_at,compliance_audit_date,audit_result) VALUES
(3,103,'EduAnalytics','Data','2020-09-01','2023-08-31',95000.00,'CarolLee','carol.lee@edua.com','StudentDataAnalytics','Active',1,'172.16.0.0/12','Full','HIPAA',60.0,'OnDemand','Renewal in 2023','2020-08-20','2020-08-20','2020-09-10','Pass');

-- School mental health program details
CREATE TABLE school_mental_health_programs
(
    program_id                   INTEGER PRIMARY KEY,
    school_code                  TEXT NOT NULL,
    program_name                 TEXT NOT NULL,
    start_year                   TEXT,
    funding_source               TEXT,
    staff_count                  INTEGER,
    student_participants         INTEGER,
    counseling_hours             REAL,
    group_sessions               INTEGER,
    telehealth_available         INTEGER,
    evaluation_score             REAL,
    accreditation_status         TEXT,
    mental_health_awareness_events INTEGER,
    peer_support_groups          INTEGER,
    crisis_intervention_calls    INTEGER,
    notes                        TEXT,
    created_date                 DATE,
    modified_date                DATE,
    coordinator_name             TEXT,
    coordinator_email            TEXT,
    active_flag                  INTEGER,
    annual_budget                REAL
);

INSERT INTO school_mental_health_programs (program_id,school_code,program_name,start_year,funding_source,staff_count,student_participants,counseling_hours,group_sessions,telehealth_available,evaluation_score,accreditation_status,mental_health_awareness_events,peer_support_groups,crisis_intervention_calls,notes,created_date,modified_date,coordinator_name,coordinator_email,active_flag,annual_budget) VALUES
(1,'SC001','WellnessCenter','2020','StateGrant',5,350,1200.5,12,1,4.5,'Accredited',2,3,5,'Primary mental health services','2020-01-10','2022-12-01','DanaWhite','dana.white@school.org',1,150000.00);

INSERT INTO school_mental_health_programs (program_id,school_code,program_name,start_year,funding_source,staff_count,student_participants,counseling_hours,group_sessions,telehealth_available,evaluation_score,accreditation_status,mental_health_awareness_events,peer_support_groups,crisis_intervention_calls,notes,created_date,modified_date,coordinator_name,coordinator_email,active_flag,annual_budget) VALUES
(2,'SC002','MindfulMatters','2021','FederalAid',3,210,800.0,8,0,4.2,'Pending',1,2,3,'Focus on mindfulness','2021-08-05','2022-11-15','EvanGreen','evan.green@school.org',1,90000.00);

INSERT INTO school_mental_health_programs (program_id,school_code,program_name,start_year,funding_source,staff_count,student_participants,counseling_hours,group_sessions,telehealth_available,evaluation_score,accreditation_status,mental_health_awareness_events,peer_support_groups,crisis_intervention_calls,notes,created_date,modified_date,coordinator_name,coordinator_email,active_flag,annual_budget) VALUES
(3,'SC003','CounselConnect','2019','LocalBond',4,280,950.3,10,1,4.8,'Accredited',3,4,6,'Integrated counseling model','2019-03-20','2022-10-20','FionaBlack','fiona.black@school.org',1,120000.00);

-- Community fitness facilities inventory
CREATE TABLE community_fitness_facilities
(
    facility_id                  INTEGER PRIMARY KEY,
    community_name               TEXT NOT NULL,
    facility_type                TEXT,
    address                      TEXT,
    city                         TEXT,
    zip_code                     TEXT,
    opening_hours                TEXT,
    membership_fee               REAL,
    equipment_count              INTEGER,
    staff_count                  INTEGER,
    wheelchair_accessible       INTEGER,
    pool_available               INTEGER,
    classes_offered             INTEGER,
    annual_visitors              INTEGER,
    maintenance_schedule         TEXT,
    energy_star_rating           TEXT,
    gps_latitude                 REAL,
    gps_longitude                REAL,
    created_date                 DATE,
    updated_date                 DATE,
    notes                        TEXT,
    contact_phone                TEXT,
    contact_email                TEXT
);

INSERT INTO community_fitness_facilities (facility_id,community_name,facility_type,address,city,zip_code,opening_hours,membership_fee,equipment_count,staff_count,wheelchair_accessible,pool_available,classes_offered,annual_visitors,maintenance_schedule,energy_star_rating,gps_latitude,gps_longitude,created_date,updated_date,notes,contact_phone,contact_email) VALUES
(1,'RiverTown','Gym','123 Main St','RiverTown','12345','06:00-22:00',75.00,150,12,1,0,20,35000,'Quarterly','A+',40.7128,-74.0060,'2020-02-15','2022-12-01','Newly renovated','5551234567','info@rivertowngym.com');

INSERT INTO community_fitness_facilities (facility_id,community_name,facility_type,address,city,zip_code,opening_hours,membership_fee,equipment_count,staff_count,wheelchair_accessible,pool_available,classes_offered,annual_visitors,maintenance_schedule,energy_star_rating,gps_latitude,gps_longitude,created_date,updated_date,notes,contact_phone,contact_email) VALUES
(2,'Lakeview','CommunityCenter','456 Lake Rd','Lakeview','67890','05:30-23:00',45.00,80,8,1,1,12,22000,'Biannual','B',41.8781,-87.6298,'2021-06-01','2022-11-20','Includes indoor pool','5559876543','contact@lakeviewcc.org');

INSERT INTO community_fitness_facilities (facility_id,community_name,facility_type,address,city,zip_code,opening_hours,membership_fee,equipment_count,staff_count,wheelchair_accessible,pool_available,classes_offered,annual_visitors,maintenance_schedule,energy_star_rating,gps_latitude,gps_longitude,created_date,updated_date,notes,contact_phone,contact_email) VALUES
(3,'Greenfield','RecreationHall','789 Oak Ave','Greenfield','11223','07:00-21:00',60.00,100,10,0,0,15,28000,'Monthly','A',34.0522,-118.2437,'2019-09-10','2022-10-05','Upcoming expansion','5552223333','admin@greenfieldrec.org');

-- Alumni mentorship session logs
CREATE TABLE alumni_mentorship_sessions
(
    session_id                   INTEGER PRIMARY KEY,
    alumni_id                    TEXT NOT NULL,
    student_id                   TEXT NOT NULL,
    mentor_name                  TEXT,
    mentee_name                  TEXT,
    session_date                 DATE,
    duration_minutes             INTEGER,
    meeting_type                 TEXT,
    topic                        TEXT,
    feedback_score               REAL,
    follow_up_actions            TEXT,
    program_year                 TEXT,
    sponsor                      TEXT,
    location                     TEXT,
    virtual_platform             TEXT,
    contact_email                TEXT,
    contact_phone                TEXT,
    notes                        TEXT,
    created_at                   DATE,
    updated_at                   DATE,
    active_flag                  INTEGER,
    evaluation_completed         INTEGER
);

INSERT INTO alumni_mentorship_sessions (session_id,alumni_id,student_id,mentor_name,mentee_name,session_date,duration_minutes,meeting_type,topic,feedback_score,follow_up_actions,program_year,sponsor,location,virtual_platform,contact_email,contact_phone,notes,created_at,updated_at,active_flag,evaluation_completed) VALUES
(1,'ALU001','STU1001','JohnDoe','EmilyClark','2022-04-15',60,'InPerson','CareerPlanning',4.7,'ResumeReview','2022','AlumniAssoc','RiverTown High School','None','john.doe@alumni.org','5551112222','First session completed','2022-04-15','2022-04-15',1,1);

INSERT INTO alumni_mentorship_sessions (session_id,alumni_id,student_id,mentor_name,mentee_name,session_date,duration_minutes,meeting_type,topic,feedback_score,follow_up_actions,program_year,sponsor,location,virtual_platform,contact_email,contact_phone,notes,created_at,updated_at,active_flag,evaluation_completed) VALUES
(2,'ALU002','STU1002','MariaLee','LiamSmith','2022-05-10',45,'Virtual','CollegeApplication',4.9,'EssayDraft','2022','AlumniAssoc','Online','Zoom','maria.lee@alumni.org','5553334444','Student submitted draft after session','2022-05-10','2022-05-10',1,1);

INSERT INTO alumni_mentorship_sessions (session_id,alumni_id,student_id,mentor_name,mentee_name,session_date,duration_minutes,meeting_type,topic,feedback_score,follow_up_actions,program_year,sponsor,location,virtual_platform,contact_email,contact_phone,notes,created_at,updated_at,active_flag,evaluation_completed) VALUES
(3,'ALU003','STU1003','RajPatel','SofiaNguyen','2022-06-01',30,'InPerson','STEMInternship',4.5,'ApplyForInternship','2022','AlumniAssoc','Lakeview Community Center','None','raj.patel@alumni.org','5555556666','Student to submit application next week','2022-06-01','2022-06-01',1,0);

-- Student sustainability project records
CREATE TABLE student_sustainability_projects
(
    project_id                   INTEGER PRIMARY KEY,
    student_id                   TEXT NOT NULL,
    school_code                  TEXT NOT NULL,
    project_title                TEXT,
    start_date                   DATE,
    end_date                     DATE,
    project_category             TEXT,
    carbon_reduction_estimate    REAL,
    waste_diverted_estimate      REAL,
    budget_amount                REAL,
    funding_source               TEXT,
    advisor_name                 TEXT,
    status                       TEXT,
    impact_score                 REAL,
    community_partners           TEXT,
    awards                       TEXT,
    documentation_link           TEXT,
    created_at                   DATE,
    updated_at                   DATE,
    notes                        TEXT,
    hours_spent                  INTEGER,
    student_grade_level          TEXT
);

INSERT INTO student_sustainability_projects (project_id,student_id,school_code,project_title,start_date,end_date,project_category,carbon_reduction_estimate,waste_diverted_estimate,budget_amount,funding_source,advisor_name,status,impact_score,community_partners,awards,documentation_link,created_at,updated_at,notes,hours_spent,student_grade_level) VALUES
(1,'STU2001','SC010','SolarPanelRoof','2021-09-01','2022-03-15','Energy','15.2',0.0,5000.00,'EcoGrant','MsTaylor','Completed',8.9,'GreenEnergyCo','StateAward','http://docs.example.com/proj1','2021-08-20','2022-03-20','Project installed 20 panels','120','11');

INSERT INTO student_sustainability_projects (project_id,student_id,school_code,project_title,start_date,end_date,project_category,carbon_reduction_estimate,waste_diverted_estimate,budget_amount,funding_source,advisor_name,status,impact_score,community_partners,awards,documentation_link,created_at,updated_at,notes,hours_spent,student_grade_level) VALUES
(2,'STU2002','SC011','CompostProgram','2022-01-10','2022-12-31','Waste','0.0','25.5',2000.00,'SchoolBudget','MrBrown','Ongoing',7.3,'LocalFarm','CommunityRecognition','http://docs.example.com/proj2','2022-01-05','2022-12-20','Reduced cafeteria waste by 30%','200','10');

INSERT INTO student_sustainability_projects (project_id,student_id,school_code,project_title,start_date,end_date,project_category,carbon_reduction_estimate,waste_diverted_estimate,budget_amount,funding_source,advisor_name,status,impact_score,community_partners,awards,documentation_link,created_at,updated_at,notes,hours_spent,student_grade_level) VALUES
(3,'STU2003','SC012','BikeShareInitiative','2021-05-01','2021-11-30','Transportation','5.0','0.0',3500.00,'Donations','MsLee','Completed',8.2,'BikeCo','BestNewProgram','http://docs.example.com/proj3','2021-04-20','2021-12-05','Implemented 15 bike stations on campus','180','12');

-- Facility waste recycling logs
CREATE TABLE facility_waste_recycling_log
(
    log_id                       INTEGER PRIMARY KEY,
    facility_id                  INTEGER NOT NULL,
    log_date                     DATE,
    waste_type                   TEXT,
    weight_kg                    REAL,
    recycling_type               TEXT,
    container_id                 TEXT,
    collected_by                 TEXT,
    disposal_method             TEXT,
    notes                        TEXT,
    created_at                   DATE,
    updated_at                   DATE,
    compliance_status            TEXT,
    auditor_name                 TEXT,
    audit_score                  REAL,
    recycling_rate_percent       REAL,
    landfill_rate_percent        REAL,
    hazardous_flag               INTEGER,
    transport_company            TEXT,
    cost_usd                     REAL,
    region                       TEXT
);

INSERT INTO facility_waste_recycling_log (log_id,facility_id,log_date,waste_type,weight_kg,recycling_type,container_id,collected_by,disposal_method,notes,created_at,updated_at,compliance_status,auditor_name,audit_score,recycling_rate_percent,landfill_rate_percent,hazardous_flag,transport_company,cost_usd,region) VALUES
(1,101,'2022-10-01','Paper',1200.5,'Mixed','C001','JohnOps','Landfill','Monthly paper collection','2022-10-01','2022-10-02','Compliant','AuditorMike',95.0,85.0,15.0,0,'GreenTransport',800.00,'North');

INSERT INTO facility_waste_recycling_log (log_id,facility_id,log_date,waste_type,weight_kg,recycling_type,container_id,collected_by,disposal_method,notes,created_at,updated_at,compliance_status,auditor_name,audit_score,recycling_rate_percent,landfill_rate_percent,hazardous_flag,transport_company,cost_usd,region) VALUES
(2,102,'2022-10-15','Plastic',750.0,'PET','C015','AnnaOps','RecyclingCenter','Collected biweekly','2022-10-15','2022-10-16','Compliant','AuditorSara',92.5,90.0,10.0,0,'EcoTransit',600.00','South');

INSERT INTO facility_waste_recycling_log (log_id,facility_id,log_date,waste_type,weight_kg,recycling_type,container_id,collected_by,disposal_method,notes,created_at,updated_at,compliance_status,auditor_name,audit_score,recycling_rate_percent,landfill_rate_percent,hazardous_flag,transport_company,cost_usd,region) VALUES
(3,103,'2022-11-01','Electronic',45.0,'E-waste','C099','MikeOps','SpecialProcessing','Handled by certified e-waste vendor','2022-11-01','2022-11-02','Compliant','AuditorLee',98.0,100.0,0.0,1,'TechRecycle',1200.00,'East');

-- Teacher professional learning communities
CREATE TABLE teacher_professional_learning_communities
(
    plc_id                       INTEGER PRIMARY KEY,
    school_code                  TEXT NOT NULL,
    community_name               TEXT,
    focus_area                   TEXT,
    facilitator_name            TEXT,
    meeting_frequency           TEXT,
    participants_count          INTEGER,
    start_year                  TEXT,
    end_year                    TEXT,
    total_meeting_hours         REAL,
    outcomes_summary            TEXT,
    evaluation_score            REAL,
    funding_amount              REAL,
    grant_number                TEXT,
    resources_shared            TEXT,
    virtual_meeting_platform    TEXT,
    created_at                  DATE,
    updated_at                  DATE,
    notes                       TEXT,
    active_flag                 INTEGER,
    contact_email               TEXT,
    contact_phone               TEXT
);

INSERT INTO teacher_professional_learning_communities (plc_id,school_code,community_name,focus_area,facilitator_name,meeting_frequency,participants_count,start_year,end_year,total_meeting_hours,outcomes_summary,evaluation_score,funding_amount,grant_number,resources_shared,virtual_meeting_platform,created_at,updated_at,notes,active_flag,contact_email,contact_phone) VALUES
(1,'SC020','LiteracyLeaders','ReadingInstruction','KarenWhite','Monthly',15,'2020','2023',180.0,'Improved reading scores 5%','4.6',20000.00,'GR12345','LessonPlans,AssessmentTools','Zoom','2020-01-15','2022-12-20','Active PLC focused on K-3','1','k.white@school.org','5557778888');

INSERT INTO teacher_professional_learning_communities (plc_id,school_code,community_name,focus_area,facilitator_name,meeting_frequency,participants_count,start_year,end_year,total_meeting_hours,outcomes_summary,evaluation_score,funding_amount,grant_number,resources_shared,virtual_meeting_platform,created_at,updated_at,notes,active_flag,contact_email,contact_phone) VALUES
(2,'SC021','STEMInnovators','ProjectBasedLearning','LiamChen','BiWeekly',20,'2021','2024',210.5,'Increased student project participation','4.8',25000.00,'GR67890','CurriculumModules,Toolkits','MicrosoftTeams','2021-02-10','2022-11-30','Focus on middle school','1','l.chen@school.org','5559990000');

INSERT INTO teacher_professional_learning_communities (plc_id,school_code,community_name,focus_area,facilitator_name,meeting_frequency,participants_count,start_year,end_year,total_meeting_hours,outcomes_summary,evaluation_score,funding_amount,grant_number,resources_shared,virtual_meeting_platform,created_at,updated_at,notes,active_flag,contact_email,contact_phone) VALUES
(3,'SC022','AssessmentAnalytics','DataDrivenInstruction','MariaGonz','Monthly',12,'2019','2022',160.0,'Implemented new data dashboards','4.4',15000.00,'GR24680','DataTemplates,TrainingVideos','GoogleMeet','2019-03-05','2022-10-15','Disbanded after goals met','0','m.gonz@school.org','5551112222');

-- School interior design project tracking
CREATE TABLE school_interior_design_projects
(
    project_id                INTEGER PRIMARY KEY,
    school_code               TEXT NOT NULL,
    designer_firm             TEXT,
    design_theme              TEXT,
    start_date                DATE,
    projected_end_date        DATE,
    actual_end_date           DATE,
    budget_estimate           REAL,
    budget_spent              REAL,
    square_feet_renovated     INTEGER,
    rooms_renovated           INTEGER,
    sustainability_certification TEXT,
    lead_architect            TEXT,
    contractor_name           TEXT,
    project_status            TEXT,
    milestones_achieved       TEXT,
    community_feedback_score  REAL,
    created_at                DATE,
    updated_at                DATE,
    notes                     TEXT,
    grant_funding_source      TEXT,
    design_award_received    TEXT
);

INSERT INTO school_interior_design_projects (project_id,school_code,designer_firm,design_theme,start_date,projected_end_date,actual_end_date,budget_estimate,budget_spent,square_feet_renovated,rooms_renovated,sustainability_certification,lead_architect,contractor_name,project_status,milestones_achieved,community_feedback_score,created_at,updated_at,notes,grant_funding_source,design_award_received) VALUES
(1,'SC030','DesignPro','ModernLearning','2020-05-01','2021-04-30','2021-04-20',350000.00,340000.00,12000,25,'LEEDGold','AnnaMiller','BuildRight','Completed','DesignFinalized,ConstructionComplete',9.2,'2020-04-15','2021-05-01','Positive community response','StateEducationGrant','BestDesign2021');

INSERT INTO school_interior_design_projects (project_id,school_code,designer_firm,design_theme,start_date,projected_end_date,actual_end_date,budget_estimate,budget_spent,square_feet_renovated,rooms_renovated,sustainability_certification,lead_architect,contractor_name,project_status,milestones_achieved,community_feedback_score,created_at,updated_at,notes,grant_funding_source,design_award_received) VALUES
(2,'SC031','SpaceCraft','EcoFriendly','2021-01-15','2022-12-31',NULL,500000.00,0.00,18000,30,'LEEDSilver','BrianKhan','EcoBuild','InProgress','DesignApproved',NULL,'2020-12-20','2022-01-10','Project on schedule','FederalGreenGrant',NULL);

INSERT INTO school_interior_design_projects (project_id,school_code,designer_firm,design_theme,start_date,projected_end_date,actual_end_date,budget_estimate,budget_spent,square_feet_renovated,rooms_renovated,sustainability_certification,lead_architect,contractor_name,project_status,milestones_achieved,community_feedback_score,created_at,updated_at,notes,grant_funding_source,design_award_received) VALUES
(3,'SC032','CreativeSpaces','CulturalHeritage','2019-09-01','2020-08-31','2020-08-25',275000.00,280000.00,9000,18,'None','LisaChoi','HeritageCon','Completed','ConceptApproved,ConstructionComplete',8.5,'2019-08-10','2020-09-05','Budget overrun due to material costs','LocalArtsFund','CulturalDesignAward');

-- District funding allocation history
CREATE TABLE district_funding_allocation_history
(
    allocation_id               INTEGER PRIMARY KEY,
    district_code               INTEGER NOT NULL,
    fiscal_year                 TEXT,
    funding_source              TEXT,
    total_amount                REAL,
    allocated_amount            REAL,
    remaining_balance           REAL,
    program_name                TEXT,
    purpose_description         TEXT,
    approved_by                 TEXT,
    approval_date               DATE,
    disbursement_date          DATE,
    audit_flag                  INTEGER,
    notes                       TEXT,
    created_at                  DATE,
    updated_at                  DATE,
    expenditure_category        TEXT,
    subcategory                 TEXT,
    reporting_cycle             TEXT,
    compliance_status           TEXT,
    external_audit_reference   TEXT
);

INSERT INTO district_funding_allocation_history (allocation_id,district_code,fiscal_year,funding_source,total_amount,allocated_amount,remaining_balance,program_name,purpose_description,approved_by,approval_date,disbursement_date,audit_flag,notes,created_at,updated_at,expenditure_category,subcategory,reporting_cycle,compliance_status,external_audit_reference) VALUES
(1,101,'2022','StateEducationFund',2000000.00,1500000.00,500000.00,'STEMExpansion','Upgrade labs and equipment','Superintendent','2022-02-01','2022-03-15',1,'Mid-year allocation','2022-01-20','2022-04-01','Capital','Laboratory','Quarterly','Compliant','AUD2022-01');

INSERT INTO district_funding_allocation_history (allocation_id,district_code,fiscal_year,funding_source,total_amount,allocated_amount,remaining_balance,program_name,purpose_description,approved_by,approval_date,disbursement_date,audit_flag,notes,created_at,updated_at,expenditure_category,subcategory,reporting_cycle,compliance_status,external_audit_reference) VALUES
(2,102,'2021','FederalGrant',3500000.00,3000000.00,500000.00,'DigitalLearning','Purchase tablets and install Wi‑Fi','BoardChair','2021-05-10','2021-06-20',0,'Final disbursement pending','2021-04-15','2021-07-01','Technology','Devices','Annual','Pending','AUD2021-05');

INSERT INTO district_funding_allocation_history (allocation_id,district_code,fiscal_year,funding_source,total_amount,allocated_amount,remaining_balance,program_name,purpose_description,approved_by,approval_date,disbursement_date,audit_flag,notes,created_at,updated_at,expenditure_category,subcategory,reporting_cycle,compliance_status,external_audit_reference) VALUES
(3,103,'2023','LocalBond',1200000.00,800000.00,400000.00,'FacilityRenovation','Upgrade HVAC and insulation','Mayor','2023-01-12','2023-02-28',1,'First phase completed','2023-01-01','2023-03-15','Infrastructure','HVAC','SemiAnnual','Compliant','AUD2023-01');

-- Student civic engagement activities
CREATE TABLE student_civic_engagement_activities
(
    activity_id                INTEGER PRIMARY KEY,
    student_id                 TEXT NOT NULL,
    school_code                TEXT NOT NULL,
    activity_name              TEXT,
    activity_type              TEXT,
    start_date                 DATE,
    end_date                   DATE,
    hours_contributed          INTEGER,
    community_partner          TEXT,
    leadership_role            TEXT,
    recognition_awarded        TEXT,
    impact_metric              REAL,
    supervisor_name            TEXT,
    supervisor_email           TEXT,
    documentation_url          TEXT,
    created_at                 DATE,
    updated_at                 DATE,
    notes                      TEXT,
    civic_theme                TEXT,
    funding_source             TEXT,
    outcome_summary            TEXT
);

INSERT INTO student_civic_engagement_activities (activity_id,student_id,school_code,activity_name,activity_type,start_date,end_date,hours_contributed,community_partner,leadership_role,recognition_awarded,impact_metric,supervisor_name,supervisor_email,documentation_url,created_at,updated_at,notes,civic_theme,funding_source,outcome_summary) VALUES
(1,'STU3001','SC040','NeighborhoodCleanup','Volunteer','2022-04-10','2022-04-10',5,'CityParksDept','TeamLead','VolunteerBadge','85.0','MsBrown','mbrown@school.org','http://docs.example.com/cleanup1','2022-04-05','2022-04-11','Great participation','Environment','SchoolFunds','Park area cleaned and trees planted');

INSERT INTO student_civic_engagement_activities (activity_id,student_id,school_code,activity_name,activity_type,start_date,end_date,hours_contributed,community_partner,leadership_role,recognition_awarded,impact_metric,supervisor_name,supervisor_email,documentation_url,created_at,updated_at,notes,civic_theme,funding_source,outcome_summary) VALUES
(2,'STU3002','SC041','VoterRegistrationDrive','Advocacy','2022-10-01','2022-10-15',20,'LocalElectionOffice','Organizer','CertificateOfService','92.5','MrGreen','mgreen@school.org','http://docs.example.com/voterdrive','2022-09-20','2022-10-16','Registered 150 new voters','CivicEngagement','GrantXYZ','Increased community voter turnout');

INSERT INTO student_civic_engagement_activities (activity_id,student_id,school_code,activity_name,activity_type,start_date,end_date,hours_contributed,community_partner,leadership_role,recognition_awarded,impact_metric,supervisor_name,supervisor_email,documentation_url,created_at,updated_at,notes,civic_theme,funding_source,outcome_summary) VALUES
(3,'STU3003','SC042','SeniorTechTutoring','Mentorship','2023-01-05','2023-03-30',45,'SeniorCenter','Coordinator','MentorAward','78.0','MsLee','mlee@school.org','http://docs.example.com/techtutoring','2022-12-20','2023-04-01','Tutored 30 seniors on basic computer skills','Intergenerational','CommunityDonations','Improved digital literacy among seniors');