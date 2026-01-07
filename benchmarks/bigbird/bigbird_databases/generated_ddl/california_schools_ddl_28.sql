-- Student fundraising campaigns associated with schools
CREATE TABLE student_fundraising_campaigns
(
    campaign_id               TEXT NOT NULL PRIMARY KEY,
    school_cds_code           TEXT,
    campaign_name             TEXT,
    start_date                DATE,
    end_date                  DATE,
    goal_amount               REAL,
    amount_raised             REAL,
    num_donors                INTEGER,
    primary_contact_name      TEXT,
    primary_contact_email     TEXT,
    event_type                TEXT,
    target_audience           TEXT,
    online_platform           TEXT,
    matching_gift_available   INTEGER,
    matching_gift_amount      REAL,
    campaign_status           TEXT,
    created_timestamp         DATE,
    updated_timestamp         DATE,
    notes                     TEXT,
    approved_by               TEXT
);

INSERT INTO student_fundraising_campaigns VALUES
('CF001','12345','Spring_Gala','2024-03-01','2024-04-30',50000,31200,120,'John_Doe','jdoe@example.com','Gala','Parents','Eventbrite',1,10000,'Active','2024-02-15','2024-03-05','Initial launch','Superintendent_A');

INSERT INTO student_fundraising_campaigns VALUES
('CF002','12346','Tech_Upgrade_Drive','2024-05-01','2024-06-15',30000,15000,80,'Jane_Smith','jsmith@example.com','Online','Students','GoFundMe',0,0,'Active','2024-04-01','2024-05-02','Quarterly push','Principal_B');

INSERT INTO student_fundraising_campaigns VALUES
('CF003','12347','Winter_Warmth_Campaign','2024-10-01','2024-12-31',40000,42000,200,'Emily_Clark','eclark@example.com','Drive','Community','Classy',1,5000,'Completed','2024-09-15','2025-01-05','Exceeded goal','Board_Chair');

-- District equity metrics for schools
CREATE TABLE district_equity_metrics
(
    metric_id                   TEXT NOT NULL PRIMARY KEY,
    district_code               INTEGER,
    school_cds_code             TEXT,
    academic_year               TEXT,
    free_meal_percent           REAL,
    frpm_percent                REAL,
    english_learners_percent    REAL,
    special_ed_percent          REAL,
    avg_test_score_math         REAL,
    avg_test_score_reading      REAL,
    graduation_rate_percent    REAL,
    college_entry_rate_percent  REAL,
    teacher_experience_avg_years REAL,
    student_teacher_ratio       REAL,
    per_pupil_expenditure       REAL,
    tech_device_per_student     INTEGER,
    library_books_per_student   REAL,
    afterschool_programs_count  INTEGER,
    community_partner_count     INTEGER,
    reported_incidents_count    INTEGER,
    equity_index_score          REAL,
    report_generated_date       DATE,
    analyst_name                TEXT,
    notes                       TEXT,
    approved_by                 TEXT,
    last_review_date            DATE,
    status                      TEXT,
    data_source                 TEXT,
    confidence_level            TEXT,
    methodology_version         TEXT
);

INSERT INTO district_equity_metrics VALUES
('EQ001',101,'12345','2023-24',45.2,30.5,12.0,8.5,78,82,92.1,68.4,5.2,18.5,12000,1,'400',5,12,78.5,'2024-02-01','Analyst_A','Preliminary review','Director_X','2024-03-01','Draft','Survey','High','v1');

INSERT INTO district_equity_metrics VALUES
('EQ002',102,'12346','2023-24',52.0,35.0,15.3,10.1,74,79,88.7,62.0,4.8,20.1,11500,1,'350',3,9,65.2,'2024-02-01','Analyst_B','Finalized','Director_Y','2024-03-02','Approved','Administrative','Medium','v2');

INSERT INTO district_equity_metrics VALUES
('EQ003',103,'12347','2023-24',38.7,28.2,9.5,7.2,81,85,95.0,71.5,5.5,17.9,12500,2,'420',6,14,80.3,'2024-02-01','Analyst_C','Reviewed','Director_Z','2024-03-03','Published','Combined','Low','v1');

-- School IT security audit logs
CREATE TABLE school_it_security_audits
(
    audit_id                     TEXT NOT NULL PRIMARY KEY,
    school_cds_code              TEXT,
    audit_date                   DATE,
    auditor_name                 TEXT,
    network_vulnerability_score  REAL,
    endpoint_protection_status   TEXT,
    firewall_configuration       TEXT,
    intrusion_detection_status   TEXT,
    patch_management_compliance  REAL,
    encryption_used              TEXT,
    multi_factor_auth_enabled    INTEGER,
    phishing_simulation_score    REAL,
    ransomware_risk_level        TEXT,
    backup_frequency_days        INTEGER,
    disaster_recovery_plan       TEXT,
    security_training_completed  INTEGER,
    open_ports_count             INTEGER,
    suspicious_activity_events   INTEGER,
    ip_allowlist_present          INTEGER,
    zero_trust_architecture      TEXT,
    data_loss_prevention_status  TEXT,
    compliance_framework         TEXT,
    remediation_actions_taken    TEXT,
    next_audit_due_date          DATE,
    notes                        TEXT,
    overall_security_rating      TEXT,
    reported_by                  TEXT,
    reported_timestamp           DATE,
    audit_version                TEXT,
    remediation_deadline         DATE
);

INSERT INTO school_it_security_audits VALUES
('AU001','12345','2024-01-15','Auditor_One',45.3,'Active','Standard','Active',92.5,'AES256',1,78.2,'Medium',7,'Plan_2023','1','15','2','1','Implemented','Enabled','NIST','Applied patches','2024-07-15','No major findings','B+','Security_Manager','2024-01-15','v1','2024-04-15');

INSERT INTO school_it_security_audits VALUES
('AU002','12346','2024-02-10','Auditor_Two',62.1,'Partial','Custom','Inactive',80.0,'AES128',0,55.0,'High',14,'Plan_2022','0','22','5','0','Planned','Partial','ISO27001','Updated firewall rules','2024-08-10','Phishing risk elevated','C-','IT_Lead','2024-02-10','v2','2024-05-10');

INSERT INTO school_it_security_audits VALUES
('AU003','12347','2024-03-05','Auditor_Three',30.8,'Active','Standard','Active',98.0,'AES256',1,90.5,'Low',3,'Plan_2024','1','8','1','1','Implemented','Enabled','PCI','Completed training','2024-09-05','All controls strong','A','Chief_Tech','2024-03-05','v1','2024-06-05');

-- Community parking facilities linked to schools
CREATE TABLE community_parking_facilities
(
    facility_id               TEXT NOT NULL PRIMARY KEY,
    facility_name             TEXT,
    address_line1             TEXT,
    address_line2             TEXT,
    city                      TEXT,
    state                     TEXT,
    zip_code                  TEXT,
    latitude                  REAL,
    longitude                 REAL,
    total_spaces              INTEGER,
    handicap_spaces           INTEGER,
    electric_vehicle_spaces   INTEGER,
    daily_rate_cents          INTEGER,
    hourly_rate_cents         INTEGER,
    monthly_pass_available    INTEGER,
    security_camera_count     INTEGER,
    lighting_type             TEXT,
    maintenance_contact_name  TEXT,
    maintenance_contact_phone TEXT,
    opening_time              TEXT,
    closing_time              TEXT,
    nearby_school_cds_code    TEXT,
    managed_by_department     TEXT,
    contract_start_date       DATE,
    contract_end_date         DATE,
    insurance_provider        TEXT,
    insurance_policy_number   TEXT,
    notes                     TEXT,
    last_inspection_date      DATE,
    inspection_score          REAL,
    compliance_status         TEXT,
    created_timestamp         DATE,
    updated_timestamp         DATE
);

INSERT INTO community_parking_facilities VALUES
('PF001','North_Side_Park','100_North_St','', 'Springfield','IL','62701',39.7817,-89.6501,120,8,4,200,50,1,8,'LED','Mike_Jones','5551234567','06:00','22:00','12345','Facilities','2023-01-01','2025-12-31','Acme_Insurance','POL12345','Near elementary','2024-01-10',85.0,'Compliant','2024-01-01','2024-02-01');

INSERT INTO community_parking_facilities VALUES
('PF002','East_End_Garage','200_East_Ave','Suite_2','Springfield','IL','62702',39.7825,-89.6400,80,6,2,250,70,0,10,'CFL','Sara_Lee','5559876543','07:00','23:00','12346','Transportation','2022-06-15','2024-06-14','Global_Cover','POL67890','Shared with high school','2024-01-12',78.5,'Compliant','2024-01-02','2024-02-02');

INSERT INTO community_parking_facilities VALUES
('PF003','South_Lot','300_South_Rd','', 'Springfield','IL','62703',39.7700,-89.6600,60,4,1,180,45,1,6,'LED','Tom_Brown','5551112222','05:30','21:30','12347','Facilities','2023-03-01','2026-02-28','Secure_Ins','POL54321','Close to middle school','2024-01-15',90.0,'Compliant','2024-01-03','2024-02-03');

-- Teacher mentoring programs
CREATE TABLE teacher_mentoring_programs
(
    program_id                 TEXT NOT NULL PRIMARY KEY,
    school_cds_code            TEXT,
    program_name               TEXT,
    start_date                 DATE,
    end_date                   DATE,
    mentor_teacher_id          TEXT,
    mentee_teacher_id          TEXT,
    mentor_department          TEXT,
    mentee_department          TEXT,
    meeting_frequency_per_month INTEGER,
    meeting_type               TEXT,
    objectives                 TEXT,
    resources_provided         TEXT,
    evaluation_method          TEXT,
    feedback_score_avg         REAL,
    hours_spent_total          REAL,
    external_funding_amount    REAL,
    funding_source             TEXT,
    coordinator_name           TEXT,
    coordinator_email          TEXT,
    created_timestamp          DATE,
    updated_timestamp          DATE,
    status                     TEXT,
    last_evaluation_date       DATE,
    notes                      TEXT,
    approved_by                TEXT,
    approval_date              DATE,
    budget_line_item_code      TEXT,
    program_version            TEXT,
    reporting_cycle_months     INTEGER,
    impact_metric_description  TEXT,
    impact_metric_value        REAL
);

INSERT INTO teacher_mentoring_programs VALUES
('MP001','12345','New_Teacher_Induction','2024-01-01','2024-12-31','T001','T101','Math','Math',2,'In_Person','Classroom_management','Toolkit_Kit','Survey',4.2,120.5,5000,'District_Grant','Linda_Kim','lkim@school.org','2024-01-01','2024-02-01','Active','2024-06-01','Positive_start','Superintendent_A','2024-01-15','BGT001','v1',6,'Retention_rate',85.0);

INSERT INTO teacher_mentoring_programs VALUES
('MP002','12346','STEM_Leadership','2024-03-01','2025-02-28','T002','T202','Science','Science',1,'Virtual','Curriculum_design','Online_course','Peer_review',3.9,80.0,2000,'School_Donation','Mark_Rose','mrose@school.org','2024-03-01','2024-04-01','Active','2024-09-01','Ongoing','Principal_B','2024-03-10','BGT002','v2',12,'Student_project_count',30);

INSERT INTO teacher_mentoring_programs VALUES
('MP003','12347','Literacy_Coaching','2024-05-15','2025-05-14','T003','T303','English','English',3,'In_Person','Reading_strategies','Printed_materials','Observation',4.5,150.0,3500,'State_Grant','Emily_White','ewhite@school.org','2024-05-15','2024-06-15','Planned','2024-11-15','Planning_stage','Curriculum_Chief','2024-05-20','BGT003','v1',3,'Reading_score_improvement',5.2);

-- Facility HVAC maintenance records
CREATE TABLE facility_hvac_maintenance
(
    record_id                  TEXT NOT NULL PRIMARY KEY,
    school_cds_code            TEXT,
    hvac_unit_id               TEXT,
    system_type                TEXT,
    manufacturer               TEXT,
    model_number               TEXT,
    installation_date          DATE,
    last_service_date          DATE,
    next_service_due_date      DATE,
    service_type               TEXT,
    technician_name            TEXT,
    technician_company         TEXT,
    service_hours              REAL,
    parts_replaced             TEXT,
    labor_cost                 REAL,
    parts_cost                 REAL,
    total_cost                 REAL,
    service_agreement_number   TEXT,
    warranty_status            TEXT,
    energy_efficiency_rating   REAL,
    airflow_cfm                INTEGER,
    refrigerant_type           TEXT,
    refrigerant_quantity_lbs   REAL,
    filter_type                TEXT,
    filter_change_interval_days INTEGER,
    notes                      TEXT,
    created_timestamp          DATE,
    updated_timestamp          DATE,
    approved_by                TEXT,
    approval_date              DATE,
    compliance_check_passed    INTEGER,
    compliance_check_date      DATE,
    compliance_notes           TEXT,
    maintenance_category      TEXT,
    priority_level             TEXT,
    risk_assessment_score      REAL,
    next_inspection_date       DATE
);

INSERT INTO facility_hvac_maintenance VALUES
('HV001','12345','HVAC001','Rooftop','CoolAir','CA1000','2015-09-01','2024-01-10','2024-07-10','Preventive','John_Smith','HVAC_Pros',5.0,'Filter, Belt',250.00,80.00,330.00,'AG123','Valid',85.5,12000,'R22',15.0,'HEPA',180,'Routine check','2024-01-10','2024-01-10','Facilities_Manager','2024-01-12',1,'2024-01-12','All good','Cooling','Medium',22.5,'2024-07-10');

INSERT INTO facility_hvac_maintenance VALUES
('HV002','12346','HVAC002','Package','AirMax','AM200','2018-03-15','2024-02-05','2024-08-05','Corrective','Lisa_Jones','Air_Services',3.5,'Compressor',400.00,120.00,520.00,'AG456','Expired',78.0,9500,'R410A',12.5,'Standard',90,'Replaced compressor','2024-02-05','2024-02-05','Facilities_Manager','2024-02-07',0,'2024-02-07','Warranty expired','Heating','High',35.0,'2024-08-05');

INSERT INTO facility_hvac_maintenance VALUES
('HV003','12347','HVAC003','Split','EcoCool','EC300','2020-07-20','2024-03-12','2024-09-12','Preventive','Mike_Tan','Eco_Solutions',4.0,'Filter',150.00,50.00,200.00,'AG789','Valid',92.0,7000,'R32',10.0,'Electrostatic',120,'All filters replaced','2024-03-12','2024-03-12','Facilities_Manager','2024-03-14',1,'2024-03-14','Pass','Ventilation','Low',15.0,'2024-09-12');

-- School social media metrics
CREATE TABLE school_social_media_metrics
(
    metric_id                 TEXT NOT NULL PRIMARY KEY,
    school_cds_code           TEXT,
    platform_name             TEXT,
    account_handle            TEXT,
    followers_count           INTEGER,
    posts_per_week            INTEGER,
    average_engagement_rate   REAL,
    top_post_id               TEXT,
    top_post_likes            INTEGER,
    top_post_comments         INTEGER,
    reach_impressions         INTEGER,
    video_views               INTEGER,
    story_views               INTEGER,
    clicks_to_website         INTEGER,
    referral_conversions      INTEGER,
    sentiment_score           REAL,
    last_updated              DATE,
    reporting_period_start    DATE,
    reporting_period_end      DATE,
    manager_name              TEXT,
    manager_email             TEXT,
    content_theme_primary     TEXT,
    content_theme_secondary   TEXT,
    paid_ad_spend_cents       INTEGER,
    organic_post_ratio        REAL,
    video_post_ratio          REAL,
    story_post_ratio          REAL,
    influencer_collaborations INTEGER,
    campaign_tag_used         TEXT,
    notes                     TEXT,
    created_timestamp         DATE,
    updated_timestamp         DATE,
    approved_by               TEXT,
    approval_date             DATE,
    compliance_notes          TEXT,
    data_source               TEXT,
    geo_targeting_enabled     INTEGER,
    platform_api_version      TEXT,
    last_audit_date           DATE
);

INSERT INTO school_social_media_metrics VALUES
('SM001','12345','Twitter','School12345','1500','5',2.5,'TWT001','300','20','5000','0','0','120','15',0.8,'2024-02-28','2024-02-01','2024-02-28','Anna_K','anna.k@school.org','Events','Student_Achievements',2000,0.75,0.10,0.15,2,'#BackToSchool','Quarterly update','2024-02-01','2024-03-01','Principal_A','2024-02-15','All good','Social_API','1','v2','2024-02-20');

INSERT INTO school_social_media_metrics VALUES
('SM002','12346','Instagram','Inst12346','3200','7',3.2,'IG001','450','35','12000','5000','3000','250','30',0.9,'2024-02-28','2024-02-01','2024-02-28','Brian_L','brian.l@school.org','Arts','Clubs',3500,0.68,0.22,0.10,4,'#ArtWeek','Monthly summary','2024-02-01','2024-03-01','Principal_B','2024-02-16','All good','Insta_API','1','v3','2024-02-21');

INSERT INTO school_social_media_metrics VALUES
('SM003','12347','Facebook','FB12347','4800','6',4.0,'FB001','600','40','15000','2000','0','400','45',1.0,'2024-02-28','2024-02-01','2024-02-28','Catherine_M','catherine.m@school.org','Sports','Community',5000,0.80,0.15,0.05,1,'#GameDay','Weekly report','2024-02-01','2024-03-01','Principal_C','2024-02-14','All good','FB_API','1','v4','2024-02-22');

-- District technology funding allocations
CREATE TABLE district_technology_funding
(
    funding_id                TEXT NOT NULL PRIMARY KEY,
    district_code             INTEGER,
    fiscal_year               TEXT,
    program_name              TEXT,
    total_funds_allocated     REAL,
    funds_spent_to_date       REAL,
    remaining_balance         REAL,
    funding_source            TEXT,
    grant_number              TEXT,
    application_date          DATE,
    approval_date             DATE,
    fund_category             TEXT,
    authorized_by             TEXT,
    authorized_date           DATE,
    project_manager           TEXT,
    project_manager_email     TEXT,
    primary_objective         TEXT,
    secondary_objective       TEXT,
    priority_level            TEXT,
    implementation_start_date DATE,
    implementation_end_date   DATE,
    hardware_budget           REAL,
    software_budget           REAL,
    services_budget           REAL,
    training_budget           REAL,
    contingency_fund          REAL,
    reporting_frequency_months INTEGER,
    last_report_date          DATE,
    next_report_due_date      DATE,
    compliance_requirements   TEXT,
    audit_status              TEXT,
    notes                     TEXT,
    created_timestamp         DATE,
    updated_timestamp         DATE,
    approved_by               TEXT,
    approval_timestamp        DATE,
    risk_assessment_score     REAL,
    status                    TEXT,
    external_auditor_name     TEXT,
    external_audit_date       DATE
);

INSERT INTO district_technology_funding VALUES
('TF001',101,'2023-24','Digital_Classroom_Initiative',1500000,750000,750000,'State_Grant','GR123','2023-01-15','2023-02-01','Technology','Superintendent_A','2023-02-05','Laura_J','ljohnson@district.org','Upgrade_labs','Integrate_online_platforms','High','2023-03-01','2025-02-28',600000,400000,300000,200000,100000,12,'2024-02-01','2024-08-01','Annual_report','Compliant','Quarterly review','2024-02-01','2024-02-15','CEO','2024-02-15',45.0,'Active','AuditFirmX','2024-02-20');

INSERT INTO district_technology_funding VALUES
('TF002',102,'2023-24','Network_Infrastructure_Upgrade',800000,300000,500000,'Federal_Grant','GR456','2023-03-10','2023-03-20','Infrastructure','Superintendent_B','2023-04-01','Mark_T','mtaylor@district.org','Upgrade_fiber','Improve_bandwidth','Medium','2023-05-01','2024-12-31',350000,150000,200000,100000,0,6,'2024-01-15','2024-07-15','Semiannual_report','Pending','Pending review','2024-01-15','2024-01-20','CIO','2024-01-20',60.0,'In_Progress','AuditFirmY','2024-01-25');

INSERT INTO district_technology_funding VALUES
('TF003',103,'2023-24','Student_Device_Program',1200000,900000,300000,'Local_Donations','GR789','2023-04-05','2023-04-15','Devices','Superintendent_C','2023-04-20','Nina_S','nsanchez@district.org','Provide_laptops','Support_remote_learning','High','2023-06-01','2025-05-31',800000,300000,0,100000,0,3,'2024-02-10','2024-05-10','Quarterly_report','Compliant','All good','2024-02-10','2024-02-12','Board_Chair','2024-02-12',30.0,'Active','AuditFirmZ','2024-02-15');

-- Student internship placements
CREATE TABLE student_internship_placements
(
    placement_id              TEXT NOT NULL PRIMARY KEY,
    student_id                TEXT,
    school_cds_code           TEXT,
    internship_title          TEXT,
    employer_name             TEXT,
    employer_industry         TEXT,
    start_date                DATE,
    end_date                  DATE,
    hours_per_week            INTEGER,
    total_hours               INTEGER,
    stipend_amount            REAL,
    mentor_name               TEXT,
    mentor_email              TEXT,
    supervisor_name           TEXT,
    supervisor_email          TEXT,
    location_city             TEXT,
    location_state            TEXT,
    remote_possible           INTEGER,
    evaluation_score          REAL,
    evaluation_comments       TEXT,
    academic_credit           INTEGER,
    credit_hours              INTEGER,
    project_description       TEXT,
    skills_gained             TEXT,
    related_course            TEXT,
    approved_by               TEXT,
    approval_date             DATE,
    created_timestamp         DATE,
    updated_timestamp         DATE,
    status                    TEXT,
    last_contact_date         DATE,
    followup_actions          TEXT,
    insurance_coverage        TEXT,
    liability_form_signed     INTEGER,
    background_check_completed INTEGER,
    notes                     TEXT,
    compliance_requirements   TEXT,
    funding_source            TEXT,
    funding_amount            REAL
);

INSERT INTO student_internship_placements VALUES
('IN001','S12345','12345','Data_Analytics_Intern','TechSolutions','IT','2024-06-01','2024-08-31',20,320,1500,'Laura_K','laura.k@techsolutions.com','John_D','john.d@techsolutions.com','Chicago','IL',0,4.5,'Excellent_work','1',3,'Analyzed_sales_data','SQL,Python','Data_Science_101','Internship_Coordinator','2024-05-15','2024-05-15','2024-05-16','Completed','2024-09-01','Offer_full_time','Company_Insurance','1','1','No issues','Standard_terms','Company_funded',0);

INSERT INTO student_internship_placements VALUES
('IN002','S12346','12346','Environmental_Research_Assistant','GreenEarth','Nonprofit','2024-07-15','2024-12-15',15,300,0,'Emily_R','emily.r@greenearth.org','Mike_T','mike.t@greenearth.org','Springfield','IL',1,4.0,'Strong_analysis','0',0,'Collected_water_samples','Fieldwork,Data_Entry','Environmental_Science_201','Internship_Coordinator','2024-07-01','2024-07-01','2024-07-02','Active','2024-09-15','Prepare_final_report','Grant_Funded','1','1','All clear','Compliance_check','Grant_funded',5000);

INSERT INTO student_internship_placements VALUES
('IN003','S12347','12347','Marketing_Social_Media_Intern','CreativeMedia','Marketing','2024-05-01','2024-10-31',10,260,800,'Sarah_P','sarah.p@creativemedia.com','David_L','david.l@creativemedia.com','Peoria','IL',1,3.8,'Good_creativity','1',2,'Managed_campaigns','Content_Creation,Analytics','Marketing_101','Internship_Coordinator','2024-04-20','2024-04-20','2024-04-21','Active','2024-09-01','Provide_portfolio','Company_Insurance','1','1','Positive','Standard','Company_funded',1200);

-- School environmental grants
CREATE TABLE school_environmental_grants
(
    grant_id                  TEXT NOT NULL PRIMARY KEY,
    school_cds_code           TEXT,
    grant_name                TEXT,
    funding_agency            TEXT,
    grant_number              TEXT,
    award_date                DATE,
    start_date                DATE,
    end_date                  DATE,
    total_amount_awarded      REAL,
    amount_spent_to_date      REAL,
    remaining_balance         REAL,
    project_title             TEXT,
    project_description       TEXT,
    primary_focus_area        TEXT,
    secondary_focus_area      TEXT,
    sustainability_goal       TEXT,
    expected_outcome          TEXT,
    reporting_frequency_months INTEGER,
    last_report_date          DATE,
    next_report_due_date      DATE,
    project_lead_name         TEXT,
    project_lead_email        TEXT,
    coordinator_name          TEXT,
    coordinator_email         TEXT,
    compliance_requirements   TEXT,
    audit_status              TEXT,
    notes                     TEXT,
    created_timestamp         DATE,
    updated_timestamp         DATE,
    approved_by               TEXT,
    approval_date             DATE,
    risk_assessment_score     REAL,
    status                    TEXT,
    renewable_energy_type     TEXT,
    energy_savings_est_kwh    REAL,
    water_conservation_gallons REAL,
    waste_reduction_tons      REAL,
    community_engagement_hours INTEGER,
    external_partners          TEXT,
    matching_funds_amount     REAL,
    matching_funds_source     TEXT,
    evaluation_method         TEXT
);

INSERT INTO school_environmental_grants VALUES
('EG001','12345','Solar_Panel_Installation','US_EPA','EPA2024-001','2024-01-15','2024-02-01','2026-01-31',500000,150000,350000,'Solar_Upgrade','Install_250kW_solar_array','Renewable_Energy','Energy_Efficiency','Reduce_carbon','Lower_energy_costs',12,'2024-12-01','2025-01-01','Michael_B','michael.b@school.org','Karen_S','karen.s@district.org','EPA_Guidelines','Compliant','All on schedule','2024-01-01','2024-02-01','Board_Chair','2024-01-10',30.0,'Active','Solar','250000','0','0','200','500','Local_EnergyCo','100000','State_Grant','Independent_audit');

INSERT INTO school_environmental_grants VALUES
('EG002','12346','Rain_Garden_Program','State_Dept_of_Env','STENV2024-045','2024-03-20','2024-04-01','2025-03-31',200000,50000,150000','Rain_Garden_Initiative','Create_bioretention_areas','Water_Conservation','Stormwater_Management','Reduce_runoff','Improve_water_quality',6,'2024-09-01','2024-10-01','Laura_K','laura.k@school.org','James_T','james.t@district.org','State_Requirements','Pending','Awaiting_final_report','2024-03-01','2024-04-01','Superintendent','2024-03-05',20.0,'Active','None','0','120000','5','150','300','State_Water_Agency','50000','State_Funding','Peer_review');

INSERT INTO school_environmental_grants VALUES
('EG003','12347','Zero_Waste_Initiative','Private_Foundation','PF2024-ZW','2024-05-10','2024-06-01','2027-05-31',300000,60000,240000','Zero_Waste_Campusewide','Implement_recycling_and_composting','Waste_Reduction','Sustainability_Education','Divert_waste','Achieve_90_percent_diversion',12,'2025-01-01','2025-02-01','Susan_M','susan.m@school.org','David_L','david.l@district.org','Foundation_Guidelines','Compliant','Program_in_design','2024-05-01','2024-06-01','Board_Chair','2024-05-05',35.0,'Planning','None','0','0','30','1200','Local_Reusable_Products_Co','75000','Foundation_Grant','Internal_audit');