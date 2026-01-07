-- Teacher collaboration groups tracking
CREATE TABLE teacher_collaboration_groups (
    group_id TEXT NOT NULL PRIMARY KEY,
    group_name TEXT NOT NULL,
    school_code TEXT NULL,
    district_code INTEGER NULL,
    lead_teacher_id TEXT NULL,
    start_date DATE NULL,
    end_date DATE NULL,
    focus_area TEXT NULL,
    meeting_frequency TEXT NULL,
    num_members INTEGER NULL,
    avg_meeting_minutes REAL NULL,
    last_meeting_date DATE NULL,
    goal_statement TEXT NULL,
    progress_score REAL NULL,
    resources_allocated REAL NULL,
    external_partner TEXT NULL,
    virtual_meeting_flag INTEGER NULL,
    feedback_summary TEXT NULL,
    created_by TEXT NULL,
    created_date DATE NULL,
    updated_by TEXT NULL,
    updated_date DATE NULL,
    notes TEXT NULL,
    status TEXT NULL
);

INSERT INTO teacher_collaboration_groups VALUES ('G001','Literacy Leaders','S001',101,'T123','2022-09-01','2023-06-30','Reading','Monthly',5,90.5,'2023-05-15','Improve reading scores',78.2,12000.00,'ReadingCo',1,'Positive','admin','2022-08-20','admin','2023-05-16','All meetings virtual','Active');
INSERT INTO teacher_collaboration_groups VALUES ('G002','STEM Innovators','S045',202,'T256','2023-01-10',NULL,'Science','BiWeekly',8,75.0,'2023-04-20','Integrate project based learning',85.0,15000.00,'STEMPartners',0,'Needs improvement','principal','2023-01-05','principal','2023-04-21','Focus on robotics','Active');
INSERT INTO teacher_collaboration_groups VALUES ('G003','Arts Integration','S078',303,'T389','2021-08-15','2022-05-30','Arts','Quarterly',4,60.0,'2022-04-10','Blend arts into core curriculum',70.5,8000.00,'ArtsCouncil',1,'Satisfactory','assistant','2021-08-01','assistant','2022-05-31','Budget constrained','Closed');

-- Student art exhibition projects
CREATE TABLE student_art_exhibition_projects (
    exhibition_id TEXT NOT NULL PRIMARY KEY,
    exhibition_name TEXT NOT NULL,
    school_code TEXT NULL,
    district_code INTEGER NULL,
    start_date DATE NULL,
    end_date DATE NULL,
    theme TEXT NULL,
    num_participants INTEGER NULL,
    total_artworks INTEGER NULL,
    venue TEXT NULL,
    curator_name TEXT NULL,
    sponsor TEXT NULL,
    budget REAL NULL,
    projected_attendance INTEGER NULL,
    actual_attendance INTEGER NULL,
    media_coverage TEXT NULL,
    awards_given INTEGER NULL,
    feedback_score REAL NULL,
    created_by TEXT NULL,
    created_date DATE NULL,
    updated_by TEXT NULL,
    updated_date DATE NULL,
    notes TEXT NULL,
    status TEXT NULL
);

INSERT INTO student_art_exhibition_projects VALUES ('E001','Spring Showcase','S012',110,'2023-03-01','2023-03-15','Nature',120,250,'Gymnasium','Ms Lee','LocalArtsFund',5000.00,300,280,'LocalPaper',5,4.5,'admin','2023-02-20','admin','2023-03-16','Excellent turnout','Completed');
INSERT INTO student_art_exhibition_projects VALUES ('E002','Digital Dreams','S034',210,'2023-10-05','2023-10-10','Technology',85,180,'Auditorium','Mr Patel','TechCorp',7200.00,200,190,'OnlineBlog',3,4.0,'coordinator','2023-09-20','coordinator','2023-10-11','Need more VR stations','Completed');
INSERT INTO student_art_exhibition_projects VALUES ('E003','Heritage Hours','S056',310,'2022-11-20','2022-11-25','Cultural Heritage',60,130,'Library','Ms Gomez','HeritageSociety',3500.00,150,140,'CommunityRadio',2,3.8,'assistant','2022-11-01','assistant','2022-11-26','Limited space','Closed');

-- District grant reporting
CREATE TABLE district_grant_reporting (
    report_id TEXT NOT NULL PRIMARY KEY,
    grant_id TEXT NOT NULL,
    district_code INTEGER NOT NULL,
    fiscal_year TEXT NOT NULL,
    grant_name TEXT NULL,
    grant_amount REAL NULL,
    amount_spent REAL NULL,
    expense_category TEXT NULL,
    reporting_quarter INTEGER NULL,
    submission_date DATE NULL,
    approved_by TEXT NULL,
    review_status TEXT NULL,
    compliance_score REAL NULL,
    notes TEXT NULL,
    created_by TEXT NULL,
    created_date DATE NULL,
    updated_by TEXT NULL,
    updated_date DATE NULL,
    supporting_document TEXT NULL,
    audit_flag INTEGER NULL,
    total_fte INTEGER NULL,
    indirect_cost_rate REAL NULL,
    matched_funds REAL NULL,
    project_start DATE NULL,
    project_end DATE NULL,
    status TEXT NULL
);

INSERT INTO district_grant_reporting VALUES ('R001','GR123',101,'2023-24','STEM Expansion',200000.00,125000.00,'Equipment',1,'2023-04-15','Director','Submitted',88.5,'On schedule','admin','2023-04-01','admin','2023-04-16','doc1.pdf',0,12,0.15,50000.00,'2023-01-01','2024-06-30','Open');
INSERT INTO district_grant_reporting VALUES ('R002','GR456',202,'2022-23','Arts Enrichment',150000.00,150000.00,'Personnel',4,'2023-02-28','Chief','Approved',92.0,'Completed','assistant','2022-12-20','assistant','2023-03-01','doc2.pdf',1,8,0.10,30000.00,'2022-09-01','2023-08-31','Closed');
INSERT INTO district_grant_reporting VALUES ('R003','GR789',303,'2024-25','Green Infrastructure',250000.00,0.00,'Construction',2,'2024-05-10','Manager','Pending',0.0,'Not started','coordinator','2024-04-25','coordinator','2024-05-11','doc3.pdf',0,15,0.20,60000.00,'2024-07-01','2026-06-30','Open');

-- School facility accessibility audits
CREATE TABLE school_facility_accessibility_audits (
    audit_id TEXT NOT NULL PRIMARY KEY,
    school_code TEXT NOT NULL,
    district_code INTEGER NOT NULL,
    audit_date DATE NOT NULL,
    auditor_name TEXT NULL,
    wheelchair_ramp_present INTEGER NULL,
    ramp_slope REAL NULL,
    elevator_accessible INTEGER NULL,
    doorway_width_cm INTEGER NULL,
    restroom_accessible INTEGER NULL,
    signage_compliant INTEGER NULL,
    lighting_level_lux REAL NULL,
    floor_surface TEXT NULL,
    emergency_exit_width_cm INTEGER NULL,
    audio_assist_devices INTEGER NULL,
    tactile_writing INTEGER NULL,
    compliance_score REAL NULL,
    corrective_actions TEXT NULL,
    follow_up_date DATE NULL,
    created_by TEXT NULL,
    created_date DATE NULL,
    updated_by TEXT NULL,
    updated_date DATE NULL,
    notes TEXT NULL,
    status TEXT NULL
);

INSERT INTO school_facility_accessibility_audits VALUES ('A001','S001',101,'2023-06-12','John Doe',1,5.0,1,90,1,1,350.5,'NonSlip',110,2,1,92.3,'Replace doorway thresholds','2023-09-01','admin','2023-06-13','admin','2023-06-14','All good','Closed');
INSERT INTO school_facility_accessibility_audits VALUES ('A002','S045',202,'2023-08-20','Jane Smith',0,NULL,0,75,0,0,210.0,'Carpet',80,0,0,65.0,'Install ramp and elevator','2024-01-15','assistant','2023-08-21','assistant','2023-08-22','Major deficiencies','Open');
INSERT INTO school_facility_accessibility_audits VALUES ('A003','S078',303,'2022-11-05','Mike Lee',1,4.5,1,95,1,1,400.0,'Concrete',120,3,1,97.0,'None needed','2022-12-01','coordinator','2022-11-06','coordinator','2022-11-07','Excellent compliance','Closed');

-- Community safety incident reports
CREATE TABLE community_safety_incident_reports (
    incident_id TEXT NOT NULL PRIMARY KEY,
    incident_type TEXT NOT NULL,
    incident_date DATE NOT NULL,
    report_time TIME NULL,
    location_description TEXT NULL,
    neighborhood_code TEXT NULL,
    law_enforcement_agency TEXT NULL,
    officer_id TEXT NULL,
    response_time_minutes INTEGER NULL,
    injuries_reported INTEGER NULL,
    fatalities INTEGER NULL,
    property_damage_est REAL NULL,
    description TEXT NULL,
    witnesses INT NULL,
    evidence_collected TEXT NULL,
    follow_up_action TEXT NULL,
    case_status TEXT NULL,
    created_by TEXT NULL,
    created_date DATE NULL,
    updated_by TEXT NULL,
    updated_date DATE NULL,
    notes TEXT NULL,
    severity_level TEXT NULL
);

INSERT INTO community_safety_incident_reports VALUES ('CI001','Theft','2023-04-12','14:35','Near school parking lot','N001','PoliceDept','O102',8,0,0,2500.00,'Stolen backpacks','2','CCTV footage','Investigation ongoing','Open','admin','2023-04-13','admin','2023-04-14','Suspect unknown','Medium');
INSERT INTO community_safety_incident_reports VALUES ('CI002','Vandalism','2023-07-20','09:15','Community park','N002','CountySheriff','O215',12,0,0,1200.00,'Graffiti on fence','1','Photographs','Clean-up scheduled','Closed','assistant','2023-07-21','assistant','2023-07-22','No suspects','Low');
INSERT INTO community_safety_incident_reports VALUES ('CI003','Assault','2023-10-05','22:45','School entrance','N001','PoliceDept','O309',5,1,0,0.00,'Student assaulted','3','Fingerprints','Arrest made','Closed','coordinator','2023-10-06','coordinator','2023-10-07','Case resolved','High');

-- Technology equipment lifecycle management
CREATE TABLE technology_equipment_lifecycle (
    asset_id TEXT NOT NULL PRIMARY KEY,
    asset_tag TEXT NOT NULL,
    asset_type TEXT NOT NULL,
    purchase_date DATE NULL,
    vendor_name TEXT NULL,
    purchase_price REAL NULL,
    warranty_years INTEGER NULL,
    warranty_expiration DATE NULL,
    current_status TEXT NULL,
    location TEXT NULL,
    assigned_to TEXT NULL,
    depreciation_rate REAL NULL,
    accumulated_depr REAL NULL,
    net_book_value REAL NULL,
    last_maintenance DATE NULL,
    maintenance_vendor TEXT NULL,
    next_inspection DATE NULL,
    inspection_status TEXT NULL,
    end_of_life_date DATE NULL,
    disposal_method TEXT NULL,
    created_by TEXT NULL,
    created_date DATE NULL,
    updated_by TEXT NULL,
    updated_date DATE NULL,
    notes TEXT NULL,
    lifecycle_stage TEXT NULL
);

INSERT INTO technology_equipment_lifecycle VALUES ('EQ001','TAG1001','Desktop','2020-08-15','TechSupplyCo',1200.00,3,'2023-08-15','In Use','Room101','T123',0.15,540.00,660.00,'2023-03-01','TechService','2023-12-01','Scheduled','2025-08-15','Resale','admin','2020-08-20','admin','2023-03-02','Monitor performance','Operating');
INSERT INTO technology_equipment_lifecycle VALUES ('EQ002','TAG2002','Projector','2019-01-10','AVSolutions',2500.00,2,'2021-01-10','Retired','Auditorium','T256',0.20,500.00,2000.00,'2022-06-15','AVTech','2022-12-15','Completed','2024-01-10','Recycling','assistant','2019-01-12','assistant','2022-06-16','Lens replaced in 2021','Retired');
INSERT INTO technology_equipment_lifecycle VALUES ('EQ003','TAG3003','Laptop','2022-09-05','CompWorld',1500.00,4,'2026-09-05','In Use','Room202','S789',0.12,180.00,1320.00,'2023-05-20','CompRepair','2024-05-20','Pending','2027-09-05','N/A','coordinator','2022-09-07','coordinator','2023-05-21','Battery health good','Operating');

-- Parent engagement survey responses
CREATE TABLE parent_engagement_surveys (
    survey_id TEXT NOT NULL PRIMARY KEY,
    school_code TEXT NOT NULL,
    district_code INTEGER NOT NULL,
    survey_date DATE NOT NULL,
    parent_id TEXT NULL,
    parent_name TEXT NULL,
    communication_preference TEXT NULL,
    satisfaction_score REAL NULL,
    likelihood_to_recommend REAL NULL,
    participate_in_events INTEGER NULL,
    volunteer_hours INTEGER NULL,
    concerns TEXT NULL,
    suggestions TEXT NULL,
    overall_rating REAL NULL,
    responded_via TEXT NULL,
    contact_method TEXT NULL,
    follow_up_needed INTEGER NULL,
    follow_up_date DATE NULL,
    created_by TEXT NULL,
    created_date DATE NULL,
    updated_by TEXT NULL,
    updated_date DATE NULL,
    notes TEXT NULL,
    status TEXT NULL
);

INSERT INTO parent_engagement_surveys VALUES ('PS001','S001',101,'2023-02-15','P1001','Alice Johnson','Email',4.5,4.8,1,5,'Need more after‑school programs','Add more STEM clubs',4.6,'Online','Email',0,NULL,'admin','2023-02-16','admin','2023-02-17','Positive feedback','Closed');
INSERT INTO parent_engagement_surveys VALUES ('PS002','S045',202,'2023-05-10','P2003','Bob Smith','Phone',3.2,3.0,0,0,'Transportation issues','Improve bus schedules',3.1,'Phone','Phone',1,'2023-06-01','assistant','2023-05-11','assistant','2023-05-12','Follow‑up required','Open');
INSERT INTO parent_engagement_surveys VALUES ('PS003','S078',303,'2022-11-20','P3007','Carol Lee','Text',4.9,5.0,1,8,'Excellent communication','Keep it up',4.9,'Online','Text',0,NULL,'coordinator','2022-11-21','coordinator','2022-11-22','Highly satisfied','Closed');

-- Environmental waste management logs
CREATE TABLE environmental_waste_management (
    log_id TEXT NOT NULL PRIMARY KEY,
    school_code TEXT NOT NULL,
    district_code INTEGER NOT NULL,
    audit_month TEXT NOT NULL,
    waste_type TEXT NOT NULL,
    total_weight_kg REAL NULL,
    recycled_weight_kg REAL NULL,
    composted_weight_kg REAL NULL,
    landfill_weight_kg REAL NULL,
    diversion_rate_percent REAL NULL,
    contractor_name TEXT NULL,
    pickup_date DATE NULL,
    verification_status TEXT NULL,
    notes TEXT NULL,
    created_by TEXT NULL,
    created_date DATE NULL,
    updated_by TEXT NULL,
    updated_date DATE NULL,
    compliance_flag INTEGER NULL,
    remarks TEXT NULL,
    status TEXT NULL
);

INSERT INTO environmental_waste_management VALUES ('WM001','S001',101,'2023-04','General','1200.0','800.0','200.0','200.0',83.3,'GreenWasteCo','2023-04-28','Verified','All bins labeled','admin','2023-04-30','admin','2023-05-01',1,'Good performance','Closed');
INSERT INTO environmental_waste_management VALUES ('WM002','S045',202,'2023-06','Food','900.0','0.0','850.0','50.0',94.4,'EcoCompost','2023-06-25','Verified','Compost program active','assistant','2023-06-27','assistant','2023-06-28',1,'Excellent diversion','Closed');
INSERT INTO environmental_waste_management VALUES ('WM003','S078',303,'2022-12','Electronics','300.0','0.0','0.0','300.0',0.0,'RecycleElectro','2022-12-15','Pending','Need proper e‑waste collection','coordinator','2022-12-20','coordinator','2022-12-21',0,'Pending compliance','Open');

-- School transportation schedule changes
CREATE TABLE school_transportation_schedule_changes (
    change_id TEXT NOT NULL PRIMARY KEY,
    school_code TEXT NOT NULL,
    district_code INTEGER NOT NULL,
    effective_date DATE NOT NULL,
    route_id TEXT NOT NULL,
    change_type TEXT NOT NULL,
    previous_start_time TIME NULL,
    new_start_time TIME NULL,
    previous_end_time TIME NULL,
    new_end_time TIME NULL,
    reason TEXT NULL,
    approved_by TEXT NULL,
    approval_date DATE NULL,
    comments TEXT NULL,
    created_by TEXT NULL,
    created_date DATE NULL,
    updated_by TEXT NULL,
    updated_date DATE NULL,
    status TEXT NULL,
    notification_sent INTEGER NULL,
    follow_up_action TEXT NULL
);

INSERT INTO school_transportation_schedule_changes VALUES ('TC001','S001',101,'2023-09-01','R10','StartTimeAdjustment','07:30','07:15','08:15','08:00','Traffic study','Director','2023-08-20','Adjusted for safety','admin','2023-08-21','admin','2023-08-22','Implemented',1,'Monitor on first week');
INSERT INTO school_transportation_schedule_changes VALUES ('TC002','S045',202,'2023-11-15','R22','RouteExtension','N/A','07:45','N/A','08:45','New housing development','Supervisor','2023-10-30','Added new stop at Oak Ave','assistant','2023-10-31','assistant','2023-11-01','Pending',0,'Awaiting community feedback');
INSERT INTO school_transportation_schedule_changes VALUES ('TC003','S078',303,'2022-07-01','R5','EndTimeAdjustment','16:30','16:45','17:30','17:45','Student after‑school program','Principal','2022-06-20','Extended to accommodate program','coordinator','2022-06-21','coordinator','2022-06-22','Implemented',1,'Review after semester');

-- Faculty research funding records
CREATE TABLE faculty_research_funding (
    funding_id TEXT NOT NULL PRIMARY KEY,
    faculty_id TEXT NOT NULL,
    faculty_name TEXT NOT NULL,
    department TEXT NOT NULL,
    grant_title TEXT NOT NULL,
    funding_source TEXT NOT NULL,
    award_amount REAL NULL,
    award_year INTEGER NULL,
    start_date DATE NULL,
    end_date DATE NULL,
    principal_investigator TEXT NULL,
    co_investigators TEXT NULL,
    status TEXT NULL,
    reporting_deadline DATE NULL,
    progress_summary TEXT NULL,
    publications INT NULL,
    patents INT NULL,
    created_by TEXT NULL,
    created_date DATE NULL,
    updated_by TEXT NULL,
    updated_date DATE NULL,
    notes TEXT NULL,
    compliance_status TEXT NULL
);

INSERT INTO faculty_research_funding VALUES ('F001','FAC100','Dr Alice Nguyen','Biology','Genomics Initiative','NationalScienceFund',250000.00,2023,'2023-09-01','2026-08-31','Dr Alice Nguyen','Dr Ben Lee;Dr Carla Torres','Active','2024-12-31','Phase 1 completed','3','0','admin','2023-08-15','admin','2023-08-16','On track','Compliant');
INSERT INTO faculty_research_funding VALUES ('F002','FAC200','Dr Mark Patel','Physics','Quantum Materials','StateResearchGrant',150000.00,2022,'2022-01-15','2024-12-31','Dr Mark Patel','Dr Susan Kim','Completed','2024-06-30','Final report submitted','2','1','assistant','2022-01-10','assistant','2025-01-01','Project concluded','Compliant');
INSERT INTO faculty_research_funding VALUES ('F003','FAC300','Dr Emily Ross','Education','Teacher Retention Study','FederalEducationAgency',90000.00,2021,'2021-05-01','2023-04-30','Dr Emily Ross','Dr Jason Wu','Closed','2023-04-15','Findings published in Journal of Edu','1','0','coordinator','2021-04-20','coordinator','2023-05-01','No issues','Compliant');