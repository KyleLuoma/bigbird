-- Campus research fund detail
CREATE TABLE campus_research_fund_detail
(
    fund_id               TEXT PRIMARY KEY,
    grant_name            TEXT,
    fiscal_year           INTEGER,
    total_amount          REAL,
    allocated_amount      REAL,
    remaining_amount      REAL,
    funding_agency        TEXT,
    department            TEXT,
    principal_investigator TEXT,
    project_code          TEXT,
    start_date            TEXT,
    end_date              TEXT,
    status                TEXT,
    approval_date         TEXT,
    review_cycle          TEXT,
    budget_category       TEXT,
    expense_type          TEXT,
    last_updated          TEXT,
    notes                 TEXT,
    document_ref          TEXT
);

INSERT INTO campus_research_fund_detail VALUES ('F001','AI_Research_Grant',2023,500000,200000,300000,'NSF','Computer_Science','Dr_Smith','PRJ001','2023-01-15','2025-12-31','Active','2023-01-01','Annual','Operations','Equipment','2023-08-01','Initial_allocation','DOC123');
INSERT INTO campus_research_fund_detail VALUES ('F002','Green_Energy_Initiative',2022,750000,500000,250000,'DOE','Environmental_Sciences','Dr_Jones','PRJ045','2022-05-01','2026-04-30','Active','2022-04-15','Biannual','Research','Personnel','2023-07-15','Phase_2_funding','DOC456');
INSERT INTO campus_research_fund_detail VALUES ('F003','Health_Analytics_Project',2024,300000,100000,200000,'NIH','Public_Health','Dr_Lee','PRJ078','2024-03-01','2027-02-28','Pending','2024-02-20','Annual','Infrastructure','Software','2024-06-01','Proposal_submitted','DOC789');

-- Alumni engagement activity
CREATE TABLE alumni_engagement_activity
(
    activity_id            TEXT PRIMARY KEY,
    alumni_id              TEXT,
    activity_type          TEXT,
    event_name             TEXT,
    event_date             TEXT,
    location               TEXT,
    participation_role    TEXT,
    hours_contributed      INTEGER,
    donation_amount        REAL,
    feedback_score         INTEGER,
    organizer_contact      TEXT,
    follow_up_required     TEXT,
    follow_up_date         TEXT,
    notes                  TEXT,
    created_timestamp      TEXT,
    last_modified_timestamp TEXT,
    sponsor_name           TEXT,
    sponsorship_amount    REAL,
    media_coverage_links   TEXT,
    outcome_summary        TEXT
);

INSERT INTO alumni_engagement_activity VALUES ('A001','ALU123','Mentorship','Mentor_Program_2023','2023-09-10','Campus_Hall','Mentor',20,5000,9,'staff01','Yes','2023-09-20','Positive_feedback','2023-09-01','2023-09-11','Tech_Corp',2000,'link1;link2','Improved_student_retention');
INSERT INTO alumni_engagement_activity VALUES ('A002','ALU456','Fundraising','Annual_Gala','2023-11-05','Grand_Banquet_Hall','Donor',5,15000,8,'staff02','No','', 'Excellent_event','2023-10-15','2023-11-06','Finance_Group',5000,'link3','Raised_150k_for_scholarships');
INSERT INTO alumni_engagement_activity VALUES ('A003','ALU789','Volunteer','Campus_Cleanup','2023-04-22','North_Quad','Volunteer',15,0,10,'staff03','No','', 'Great_community_spirit','2023-04-01','2023-04-23','Eco_Org',0,'link4','Cleaned_2_acres_of_land');

-- Student wellbeing survey
CREATE TABLE student_wellbeing_survey
(
    survey_id               TEXT PRIMARY KEY,
    student_id              TEXT,
    survey_date             TEXT,
    mental_health_score     INTEGER,
    physical_health_score   INTEGER,
    stress_level            INTEGER,
    sleep_hours_average     REAL,
    exercise_frequency_week INTEGER,
    nutrition_quality_score INTEGER,
    social_interaction_score INTEGER,
    financial_strain_score  INTEGER,
    academic_load_score     INTEGER,
    coping_mechanisms       TEXT,
    counseling_used         TEXT,
    support_network_size    INTEGER,
    campus_resource_used    TEXT,
    recommendations         TEXT,
    respondent_comments     TEXT,
    created_at              TEXT,
    updated_at              TEXT
);

INSERT INTO student_wellbeing_survey VALUES ('S001','STU001','2023-08-15',7,8,5,6.5,3,8,7,4,6,'Mindfulness;Exercise','Yes',5,'Health_Center','Increase_counseling_slots','Feeling_supported','2023-08-01','2023-08-16');
INSERT INTO student_wellbeing_survey VALUES ('S002','STU002','2023-08-16',5,6,8,5.0,1,5,4,7,8,'Gaming','No',2,'None','Provide_more_financial_aid','High_stress_levels','2023-08-02','2023-08-17');
INSERT INTO student_wellbeing_survey VALUES ('S003','STU003','2023-08-17',9,9,3,7.2,4,9,9,2,4,'Yoga;Reading','Yes',6,'Peer_Tutoring','Maintain_current_programs','Very_happy','2023-08-03','2023-08-18');

-- Sustainability project report
CREATE TABLE sustainability_project_report
(
    report_id               TEXT PRIMARY KEY,
    project_id              TEXT,
    project_name            TEXT,
    start_date              TEXT,
    end_date                TEXT,
    total_budget            REAL,
    amount_spent            REAL,
    percent_complete        INTEGER,
    carbon_reduction_tons   REAL,
    water_savings_gallons   REAL,
    waste_diverted_percent  INTEGER,
    stakeholder_engagement  TEXT,
    risks_identified        TEXT,
    mitigation_strategies   TEXT,
    outcomes                TEXT,
    lessons_learned         TEXT,
    next_phase_start_date   TEXT,
    responsible_department  TEXT,
    created_timestamp       TEXT,
    updated_timestamp       TEXT
);

INSERT INTO sustainability_project_report VALUES ('R001','PRJ101','Solar_Panel_Installation','2022-01-10','2023-12-31',1200000,850000,70,1500,500000,80,'Faculty;Students','Supply_delays','Alternative_supplier','Reduced_energy_costs','Plan_for_maintenance','2024-01-01','Facilities','2023-01-15','2023-12-30');
INSERT INTO sustainability_project_report VALUES ('R002','PRJ102','Rainwater_Catchment','2021-05-01','2022-11-30',300000,250000,100,0,200000,95,'Engineering;Facilities','Design_modifications','Iterative_design','Improved_water_quality','Document_design_changes','N/A','Facilities','2021-04-20','2022-12-01');
INSERT INTO sustainability_project_report VALUES ('R003','PRJ103','Zero_Waste_Initiative','2023-03-01','2024-06-30',500000,100000,20,0,0,30,'All_Departments','Behavior_change_resistance','Awareness_campaigns','Initial_recycling_bins_placed','Need_more_education','2024-07-01','Sustainability','2023-02-25','2023-06-15');

-- Community service hours log
CREATE TABLE community_service_hours_log
(
    log_id                  TEXT PRIMARY KEY,
    student_id              TEXT,
    service_date            TEXT,
    organization_name       TEXT,
    activity_description    TEXT,
    hours_logged            REAL,
    supervisor_name         TEXT,
    supervisor_contact      TEXT,
    location                TEXT,
    verification_status     TEXT,
    verification_date       TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    program_category        TEXT,
    impact_score            INTEGER,
    community_feedback      TEXT,
    required_training       TEXT,
    training_completed      TEXT,
    follow_up_action        TEXT
);

INSERT INTO community_service_hours_log VALUES ('L001','STU010','2023-04-12','Food_Bank','Food_Packaging',5,'John_Doe','5551234','Community_Center','Verified','2023-04-13','Good_performance','2023-04-01','2023-04-14','Food_Support',8,'Positive','Safety_Training','Yes','Send_thank_you_note');
INSERT INTO community_service_hours_log VALUES ('L002','STU011','2023-05-20','Habitat_for_Humans','Tree_Planting',7,'Jane_Smith','5555678','River_Park','Pending',NULL,'Awaiting_verification','2023-05-10','2023-05-21','Environmental',9,'Very_positive','First_Aid','No','Schedule_follow_up');
INSERT INTO community_service_hours_log VALUES ('L003','STU012','2023-06-05','Senior_Center','Companion_Visiting',4,'Mike_Brown','5559012','Senior_Center','Verified','2023-06-06','Friendly_and_helpful','2023-05-30','2023-06-07','Social',7,'Positive','None','N/A','Record_feedback');

-- Faculty teaching load
CREATE TABLE faculty_teaching_load
(
    load_id                 TEXT PRIMARY KEY,
    faculty_id              TEXT,
    term                    TEXT,
    department              TEXT,
    total_courses_assigned  INTEGER,
    total_credits           INTEGER,
    lecture_hours           REAL,
    lab_hours               REAL,
    preparation_hours       REAL,
    advisement_hours        REAL,
    research_hours          REAL,
    service_hours           REAL,
    overload_flag           TEXT,
    load_balance_score      INTEGER,
    notes                   TEXT,
    last_updated            TEXT,
    created_timestamp       TEXT,
    teaching_methodology    TEXT,
    course_type_distribution TEXT,
    workload_comments       TEXT
);

INSERT INTO faculty_teaching_load VALUES ('TL001','FAC001','Fall_2023','Computer_Science',3,9,12.0,3.0,6.0,2.0,5.0,1.0,'No',85,'Regular_load','2023-08-01','2023-08-15','Hybrid','Lecture:2;Lab:1','Balanced');
INSERT INTO faculty_teaching_load VALUES ('TL002','FAC002','Fall_2023','Mathematics',4,12,16.0,0.0,8.0,3.0,4.0,2.0,'Yes',70,'Heavy_load','2023-08-01','2023-08-16','In-person','Lecture:4','Consider_reduce');
INSERT INTO faculty_teaching_load VALUES ('TL003','FAC003','Fall_2023','Biology',2,6,8.0,4.0,5.0,1.0,6.0,0.5,'No',90,'Light_load','2023-08-01','2023-08-17','Online','Lecture:1;Lab:1','Optimal');

-- Digital learning analytics
CREATE TABLE digital_learning_analytics
(
    analytics_id            TEXT PRIMARY KEY,
    course_id               TEXT,
    module_id               TEXT,
    user_id                 TEXT,
    access_timestamp        TEXT,
    duration_minutes        INTEGER,
    pages_viewed            INTEGER,
    quizzes_attempted       INTEGER,
    quizzes_passed          INTEGER,
    assignment_submissions  INTEGER,
    forum_posts             INTEGER,
    video_views             INTEGER,
    device_type             TEXT,
    browser_type            TEXT,
    connection_speed_mbps   REAL,
    completion_status       TEXT,
    score_average           REAL,
    dropout_flag            TEXT,
    feedback_rating         INTEGER,
    notes                   TEXT
);

INSERT INTO digital_learning_analytics VALUES ('DA001','COURSE100','MOD1','USER123','2023-07-01 10:15:00',45,12,2,2,1,0,1,'Laptop','Chrome',25.5,'Completed',88.5,'No',5,'Good_engagement');
INSERT INTO digital_learning_analytics VALUES ('DA002','COURSE100','MOD2','USER124','2023-07-01 11:00:00',30,8,1,0,0,1,0,'Tablet','Safari',10.2,'In_Progress',70.0,'No',3,'Needs_improvement');
INSERT INTO digital_learning_analytics VALUES ('DA003','COURSE101','MOD1','USER125','2023-07-02 09:30:00',60,15,3,3,2,2,2,'Desktop','Firefox',50.0,'Completed',92.0,'No',4,'Excellent');

-- Equipment purchase request
CREATE TABLE equipment_purchase_request
(
    request_id              TEXT PRIMARY KEY,
    department              TEXT,
    requester_id            TEXT,
    equipment_name          TEXT,
    equipment_category      TEXT,
    quantity                INTEGER,
    unit_price              REAL,
    total_cost              REAL,
    justification           TEXT,
    vendor_name             TEXT,
    vendor_contact          TEXT,
    request_date            TEXT,
    approval_status         TEXT,
    approved_by             TEXT,
    approval_date           TEXT,
    delivery_expected_date  TEXT,
    delivery_status         TEXT,
    installation_required   TEXT,
    installation_scheduled  TEXT,
    notes                   TEXT
);

INSERT INTO equipment_purchase_request VALUES ('REQ001','Physics','EMP001','Spectrometer','Analytical','2',15000,30000,'Research_need','Science_Equip_Inc','5553210','2023-06-10','Approved','DIR001','2023-06-20','2023-07-01','Pending','Yes','2023-07-05','Urgent_for_project');
INSERT INTO equipment_purchase_request VALUES ('REQ002','Chemistry','EMP002','Fume_Hood','Safety','1',12000,12000,'Lab_safety_upgrade','Lab_Supplies_Corp','5556543','2023-06-12','Pending','','','','Pending','No','','','Awaiting_budget');
INSERT INTO equipment_purchase_request VALUES ('REQ003','Computer_Science','EMP003','High_End_Server','Computing','3',8000,24000,'Data_center_expansion','IT_Hardware_Ltd','5559876','2023-06-15','Approved','DIR002','2023-06-25','2023-07-10','Shipped','Yes','2023-07-12','Critical_for_AI_research');

-- Transportation safety audit
CREATE TABLE transportation_safety_audit
(
    audit_id                TEXT PRIMARY KEY,
    vehicle_id              TEXT,
    audit_date              TEXT,
    inspector_id            TEXT,
    brakes_condition        TEXT,
    tires_condition         TEXT,
    lights_functional       TEXT,
    emission_test_result    TEXT,
    safety_equipment_present TEXT,
    driver_license_valid    TEXT,
    mileage                 INTEGER,
    next_service_due_km     INTEGER,
    audit_comments          TEXT,
    corrective_action_needed TEXT,
    corrective_action_deadline TEXT,
    status                  TEXT,
    follow_up_date          TEXT,
    follow_up_status        TEXT,
    created_timestamp       TEXT,
    updated_timestamp       TEXT
);

INSERT INTO transportation_safety_audit VALUES ('AU001','VEH001','2023-05-20','INSP001','Good','Good','Yes','Pass','Yes','Yes',25000,30000,'All_good','No','','Approved','2023-06-20','Completed','2023-05-21','2023-05-22');
INSERT INTO transportation_safety_audit VALUES ('AU002','VEH002','2023-06-10','INSP002','Worn','Good','No','Fail','Yes','Yes',40000,45000,'Brake_wear_and_headlight_failure','Yes','2023-07-01','Pending','2023-07-05','In_Progress','2023-06-11','2023-06-12');
INSERT INTO transportation_safety_audit VALUES ('AU003','VEH003','2023-07-01','INSP003','Good','Excellent','Yes','Pass','No','Yes',15000,20000,'Missing_safety_cone','Yes','2023-07-15','Pending','2023-07-10','Scheduled','2023-07-02','2023-07-03');

-- Health clinic operational metric
CREATE TABLE health_clinic_operational_metric
(
    metric_id               TEXT PRIMARY KEY,
    clinic_id               TEXT,
    reporting_period        TEXT,
    patient_visits          INTEGER,
    average_wait_time_min   REAL,
    staff_on_duty           INTEGER,
    appointments_cancelled  INTEGER,
    no_show_rate_percent    REAL,
    prescriptions_filled    INTEGER,
    labs_conducted          INTEGER,
    referrals_made          INTEGER,
    emergency_cases_handled INTEGER,
    patient_satisfaction_score INTEGER,
    operational_costs       REAL,
    revenue_generated       REAL,
    net_profit              REAL,
    equipment_downtime_hours REAL,
    training_sessions_conducted INTEGER,
    compliance_issues       INTEGER,
    notes                   TEXT
);

INSERT INTO health_clinic_operational_metric VALUES ('M001','CLN01','2023-Q2',1200,15.2,12,45,5.0,350,200,80,30,88,50000,75000,25000,2.5,4,0,'Steady_performance');
INSERT INTO health_clinic_operational_metric VALUES ('M002','CLN02','2023-Q2',950,20.5,9,30,7.5,280,150,60,20,82,40000,60000,20000,3.0,3,1,'Need_to_reduce_wait_times');
INSERT INTO health_clinic_operational_metric VALUES ('M003','CLN03','2023-Q2',1400,12.8,15,50,4.0,400,250,100,40,91,60000,90000,30000,1.8,5,0,'Excellent_patient_satisfaction');