-- Table: academic_conference
CREATE TABLE academic_conference
(
    conference_id          TEXT PRIMARY KEY,
    conference_name        TEXT,
    start_date             TEXT,
    end_date               TEXT,
    host_institution       TEXT,
    location               TEXT,
    city                   TEXT,
    state                  TEXT,
    country                TEXT,
    theme                  TEXT,
    total_attendees        INTEGER,
    keynotes               INTEGER,
    workshops              INTEGER,
    sponsor_level          TEXT,
    budget_estimate        REAL,
    notes                  TEXT,
    link_to_event          TEXT,
    link_to_major          TEXT,
    zip_code               INTEGER,
    accreditation_status  TEXT,
    external_url           TEXT,
    contact_email          TEXT,
    phone_number           TEXT,
    registration_deadline  TEXT
);

INSERT INTO academic_conference VALUES
('CONF001','Annual_Science_Conf','2024-09-15','2024-09-18','State_University','Main_Campus_Hall','Springfield','IL','USA','Innovation_in_Biology',350,5,12,'Gold',150000.00,'First_annual_conference','EVT123','MAJ001',62704,'Accredited','http://scienceconf.univ.edu','confadmin@univ.edu','5551234567','2024-08-31');

INSERT INTO academic_conference VALUES
('CONF002','Global_Technology_Summit','2025-03-10','2025-03-12','Tech_Institute','Tech_Center','MetroCity','CA','USA','AI_and_Robotics',500,8,15,'Platinum',250000.00,'International_summit','EVT124','MAJ002',90001,'Accredited','http://techsummit.org','info@techsummit.org','5559876543','2025-02-28');

INSERT INTO academic_conference VALUES
('CONF003','Humanities_Forum','2024-11-01','2024-11-03','Liberal_Arts_College','Cultural_Hall','RiverTown','NY','USA','Digital_Humanities',200,3,6,'Silver',80000.00,'Annual_forum','EVT125','MAJ003',10001,'Pending','http://humforum.edu','contact@humforum.edu','5552223344','2024-10-15');


-- Table: research_lab_equipment
CREATE TABLE research_lab_equipment
(
    equipment_id          TEXT PRIMARY KEY,
    lab_id                TEXT,
    equipment_name        TEXT,
    manufacturer          TEXT,
    model_number          TEXT,
    serial_number         TEXT,
    purchase_date         TEXT,
    warranty_expiry       TEXT,
    calibration_date      TEXT,
    calibration_status    TEXT,
    maintenance_schedule  TEXT,
    last_service_date     TEXT,
    service_provider      TEXT,
    cost                  REAL,
    funding_source        TEXT,
    assigned_to_member    TEXT,
    status                TEXT,
    location              TEXT,
    voltage               INTEGER,
    power_rating          REAL,
    notes                 TEXT
);

INSERT INTO research_lab_equipment VALUES
('EQP001','LAB_A','Centrifuge','SpinTech','CT-200','SN12345','2022-01-15','2025-01-15','2024-06-01','Calibrated','Quarterly','2024-06-01','BioServ','12000.00','Grant_Funding','MEM001','Operational','Building_1_Room_101',220,1500.0,'Newly_installed');

INSERT INTO research_lab_equipment VALUES
('EQP002','LAB_B','Spectrometer','WaveInc','WS-500','SN67890','2021-05-20','2024-05-20','2023-12-10','Due','Annual','2023-12-10','SpecMaintain','30000.00','Dept_Budget','MEM002','Under_Maintenance','Building_2_Room_202',110,2000.0,'Requires_part_replacement');

INSERT INTO research_lab_equipment VALUES
('EQP003','LAB_C','Microscope','OptiView','OV-1000','SN54321','2020-09-30','2023-09-30','2022-09-30','Expired','Monthly','2022-09-30','OptiCare','45000.00','External_Donor','MEM003','Decommissioned','Building_3_Room_303',0,0.0,'Decommissioned_due_to_age');


-- Table: student_exchange_program
CREATE TABLE student_exchange_program
(
    exchange_id           TEXT PRIMARY KEY,
    student_id            TEXT,
    home_university       TEXT,
    host_university       TEXT,
    program_name          TEXT,
    start_date            TEXT,
    end_date              TEXT,
    credits               INTEGER,
    scholarship_amount    REAL,
    housing_type          TEXT,
    language_proficiency  TEXT,
    advisor_id            TEXT,
    program_status        TEXT,
    funding_source        TEXT,
    exchange_fee          REAL,
    insurance_provider    TEXT,
    notes                 TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    exchange_type         TEXT,
    country               TEXT
);

INSERT INTO student_exchange_program VALUES
('EXG001','MEM010','State_University','University_of_Tokyo','Spring_Study_Abroad','2024-04-01','2024-09-30',20,5000.00,'On_Campus','Advanced','MEM020','Approved','University_Budget',1500.00,'Global_Insure','N/A','2024-01-15','2024-02-01','Semester','Japan');

INSERT INTO student_exchange_program VALUES
('EXG002','MEM011','Tech_Institute','University_of_Berlin','Fall_Exchange','2024-09-01','2025-02-28',15,3000.00,'Off_Campus','Intermediate','MEM021','Pending','Scholarship_Fund',1200.00,'Euro_Protect','Awaiting_approval','2024-03-10','2024-03-20','Semester','Germany');

INSERT INTO student_exchange_program VALUES
('EXG003','MEM012','Liberal_Arts_College','University_of_Sydney','Winter_Research_Program','2025-06-15','2025-08-15',6,2000.00,'Family_Host','Beginner','MEM022','Accepted','Research_Grant',800.00,'Aussie_Sure','Short_term_research','2024-05-05','2024-05-12','Short_Term','Australia');


-- Table: faculty_committee_membership
CREATE TABLE faculty_committee_membership
(
    committee_id          TEXT PRIMARY KEY,
    committee_name        TEXT,
    faculty_id            TEXT,
    role                  TEXT,
    start_date            TEXT,
    end_date              TEXT,
    meeting_frequency    TEXT,
    meeting_location     TEXT,
    chairperson_id       TEXT,
    subcommittee_flag    TEXT,
    budget_allocation    REAL,
    notes                 TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    status                TEXT,
    department            TEXT,
    college               TEXT,
    contact_email         TEXT,
    phone                 TEXT,
    term_year             INTEGER
);

INSERT INTO faculty_committee_membership VALUES
('COM001','Curriculum_Review','MEM030','Member','2023-01-01','2025-12-31','Monthly','Room_201','MEM031','No',5000.00,'Review_curriculum_changes','2023-01-10','2023-02-15','Active','Education','College_of_Arts','faculty1@univ.edu','5551112222',2023);

INSERT INTO faculty_committee_membership VALUES
('COM002','Research_ Ethics','MEM032','Chair','2022-07-01','2024-06-30','Quarterly','Room_301','MEM032','Yes',12000.00,'Oversee_ethics_approvals','2022-07-05','2022-08-01','Active','Science','College_of_Science','faculty2@univ.edu','5553334444',2022);

INSERT INTO faculty_committee_membership VALUES
('COM003','Diversity_Inclusion','MEM033','Member','2024-03-01','2026-02-28','Bi-Monthly','Room_101','MEM034','No',3000.00,'Promote_inclusion','2024-03-10','2024-03-20','Pending','Humanities','College_of_Humanities','faculty3@univ.edu','5555556666',2024);


-- Table: grant_proposal
CREATE TABLE grant_proposal
(
    proposal_id          TEXT PRIMARY KEY,
    title                TEXT,
    submission_date      TEXT,
    requested_amount     REAL,
    awarded_amount       REAL,
    funding_agency       TEXT,
    principal_investigator TEXT,
    co_pi                TEXT,
    project_start_date   TEXT,
    project_end_date     TEXT,
    status               TEXT,
    review_score         REAL,
    abstract             TEXT,
    field_of_study       TEXT,
    department           TEXT,
    college              TEXT,
    grant_type           TEXT,
    funding_source       TEXT,
    linked_budget_id     TEXT,
    notes                TEXT,
    created_at           TEXT,
    updated_at           TEXT
);

INSERT INTO grant_proposal VALUES
('GP001','AI_for_Healthcare','2024-02-15',250000.00,200000.00,'NIH','MEM040','MEM041','2024-09-01','2027-08-31','Awarded',4.8,'Develop_AI_models_for_diagnosis','Biomedical_Engineering','Engineering','College_of_Engineering','Research','NIH_Funding','BGT001','Successful_review','2024-02-20','2024-02-25');

INSERT INTO grant_proposal VALUES
('GP002','Renewable_Energy_Storage','2024-03-10',180000.00,0.00,'DOE','MEM042','MEM043','2025-01-01','2028-12-31','Pending',0.0,'Innovative_storage_solutions','Electrical_Engineering','Engineering','College_of_Engineering','Research','DOE_Funding','BGT002','Under_review','2024-03-15','2024-03-20');

INSERT INTO grant_proposal VALUES
('GP003','Cultural_Heritage_Digitalization','2024-01-05',90000.00,85000.00,'NEH','MEM044','MEM045','2024-06-01','2026-05-31','Awarded',4.5,'Digitize_historical_artifacts','History','Humanities','College_of_Humanities','Project','NEH_Funding','BGT003','Approved_with_minor_revisions','2024-01-10','2024-01-12');


-- Table: campus_event_logistics
CREATE TABLE campus_event_logistics
(
    logistics_id          TEXT PRIMARY KEY,
    event_id              TEXT,
    venue_id              TEXT,
    start_time            TEXT,
    end_time              TEXT,
    setup_time            TEXT,
    teardown_time         TEXT,
    equipment_list        TEXT,
    catering_id           TEXT,
    security_level        TEXT,
    transportation_plan   TEXT,
    volunteer_count       INTEGER,
    expected_attendance   INTEGER,
    accessibility_notes   TEXT,
    insurance_provider    TEXT,
    insurance_policy      TEXT,
    budget_id             TEXT,
    notes                 TEXT,
    created_by            TEXT,
    approved_by           TEXT,
    status                TEXT,
    last_updated          TEXT
);

INSERT INTO campus_event_logistics VALUES
('LOG001','EVT200','VEN001','2024-10-05 09:00','2024-10-05 17:00','2024-10-05 07:00','2024-10-05 18:30','Projector,Sound_System','CAT001','High','Shuttle_Bus_Schedule','20','350','Wheelchair_accessible','SecureInsure','POL123','BGT010','Setup_complete','ADMIN01','DIR01','Ready','2024-09-30');

INSERT INTO campus_event_logistics VALUES
('LOG002','EVT201','VEN002','2025-03-12 14:00','2025-03-12 20:00','2025-03-12 12:00','2025-03-12 21:30','Stage,Lighting','CAT002','Medium','Parking_Guide','15','200','Sign_language_interpreter','ProtectSure','POL456','BGT011','Awaiting_vendor_confirmation','ADMIN02','DIR02','Pending','2025-02-28');

INSERT INTO campus_event_logistics VALUES
('LOG003','EVT202','VEN003','2024-11-20 10:00','2024-11-20 15:00','2024-11-20 08:00','2024-11-20 16:00','Tables,Chairs','CAT003','Low','Campus_Bike_Rack','10','150','No_special_needs','SafeGuard','POL789','BGT012','All_requirements_met','ADMIN03','DIR03','Confirmed','2024-11-15');


-- Table: library_digital_archive
CREATE TABLE library_digital_archive
(
    archive_id          TEXT PRIMARY KEY,
    collection_name     TEXT,
    item_type           TEXT,
    title               TEXT,
    author              TEXT,
    publication_year    INTEGER,
    isbn                TEXT,
    doi                 TEXT,
    format              TEXT,
    file_path           TEXT,
    file_size           REAL,
    checksum            TEXT,
    access_level        TEXT,
    preservation_status TEXT,
    digitization_date   TEXT,
    curator_id          TEXT,
    notes               TEXT,
    created_at          TEXT,
    updated_at          TEXT,
    source_institution  TEXT,
    rights_statement    TEXT
);

INSERT INTO library_digital_archive VALUES
('ARC001','Historical_Newspapers','Document','Springfield_Gazette_Jan_1900','Various',1900,'ISBN001','10.1000/xyz123','PDF','/archives/springfield_jan1900.pdf',2.5,'CHK123','Public','Preserved','2024-04-01','MEM050','Scanned_from_microfilm','2024-04-02','2024-04-02','State_Library','Public_Domain');

INSERT INTO library_digital_archive VALUES
('ARC002','Thesis_Collection','Thesis','Renewable_Energy_Storage_Thesis','J.Doe',2022,'ISBN002','10.2000/abc456','PDF','/archives/renewable_thesis.pdf',1.8,'CHK456','Restricted','Preserved','2024-05-15','MEM051','Submitted_by_author','2024-05-16','2024-05-16','University_Repository','University_Rights');

INSERT INTO library_digital_archive VALUES
('ARC003','Audio_Interviews','Audio','Oral_History_Interview_01','A.Smith',2019,'ISBN003','10.3000/def789','MP3','/archives/oral_history_01.mp3',15.0,'CHK789','Public','Preserved','2024-06-20','MEM052','Metadata_added','2024-06-21','2024-06-21','Local_History_Society','Creative_Commons');


-- Table: sustainability_audit_detail
CREATE TABLE sustainability_audit_detail
(
    audit_id            TEXT PRIMARY KEY,
    audit_date          TEXT,
    auditor_name        TEXT,
    campus_area         TEXT,
    metric_category     TEXT,
    metric_name         TEXT,
    baseline_value      REAL,
    current_value       REAL,
    target_value        REAL,
    variance            REAL,
    status              TEXT,
    corrective_action   TEXT,
    due_date            TEXT,
    responsible_party   TEXT,
    notes               TEXT,
    created_at          TEXT,
    updated_at          TEXT,
    audit_type          TEXT,
    report_link         TEXT,
    carbon_footprint    REAL,
    water_usage         REAL
);

INSERT INTO sustainability_audit_detail VALUES
('AUD001','2024-03-10','Jane_Doe','North_Cluster','Energy','Electricity_Consumption',5000.0,4800.0,4500.0,-300.0','On_Track','Optimize_Lighting','2024-06-30','Facilities_Dept','Reduced_by_4%','2024-03-11','2024-03-12','Annual','/reports/audit_north_2024.pdf','1200.5','35000.0');

INSERT INTO sustainability_audit_detail VALUES
('AUD002','2024-04-15','John_Smith','South_Garden','Water','Irrigation_Water_Use',2000.0,2200.0,1800.0,200.0','Behind','Install_Drip_Irrigation','2024-08-01','Grounds_Dept','Expected_reduction_15%','2024-04-16','2024-04-17','Semi_Annual','/reports/audit_south_2024.pdf','0.0','42000.0');

INSERT INTO sustainability_audit_detail VALUES
('AUD003','2024-02-20','Emily_Lee','Central_Lab','Waste','Hazardous_Waste_Tons',30.0,25.0,20.0,-5.0','On_Track','Partner_with_Recycling_Firm','2024-05-15','Lab_Management','Improved_disposal_procedure','2024-02-21','2024-02-22','Quarterly','/reports/audit_central_2024.pdf','0.0','0.0');


-- Table: community_partner_engagement
CREATE TABLE community_partner_engagement
(
    engagement_id       TEXT PRIMARY KEY,
    partner_id          TEXT,
    event_id            TEXT,
    program_name        TEXT,
    start_date          TEXT,
    end_date            TEXT,
    contact_name        TEXT,
    contact_email       TEXT,
    contact_phone       TEXT,
    role                TEXT,
    contribution_type   TEXT,
    monetary_value      REAL,
    in_kind_value      REAL,
    agreement_signed    TEXT,
    notes               TEXT,
    created_at          TEXT,
    updated_at          TEXT,
    status              TEXT,
    engagement_level    TEXT,
    location            TEXT,
    activity_type       TEXT
);

INSERT INTO community_partner_engagement VALUES
('ENG001','PART001','EVT300','STEM_Outreach','2024-05-01','2024-05-03','Alice_Wong','alice.wong@partner.org','5557778888','Sponsor','Monetary',10000.00,0.00,'Yes','Support_for_science_fair','2024-04-10','2024-04-15','Active','High','Campus','Workshop');

INSERT INTO community_partner_engagement VALUES
('ENG002','PART002','EVT301','Health_Clinic','2024-06-10','2024-06-12','Bob_Johnson','bob.johnson@partner.org','5559990000','Volunteer','In_Kind',0.00,5000.00,'Yes','Medical_staff_provided','2024-05-20','2024-05-25','Pending','Medium','Community_Center','Service');

INSERT INTO community_partner_engagement VALUES
('ENG003','PART003','EVT302','Art_Exhibit','2024-07-15','2024-07-20','Carol_Lee','carol.lee@partner.org','5551112222','Partner','Monetary',7500.00,2000.00,'No','Sponsorship_pending','2024-06-30','2024-07-01','Negotiating','Low','Local_Gallery','Exhibition');


-- Table: technology_incubator_project
CREATE TABLE technology_incubator_project
(
    project_id           TEXT PRIMARY KEY,
    incubator_id         TEXT,
    project_name         TEXT,
    start_date           TEXT,
    end_date             TEXT,
    founder_id           TEXT,
    technology_domain    TEXT,
    stage                TEXT,
    funding_received     REAL,
    equity_percent       REAL,
    mentor_id            TEXT,
    advisor_id           TEXT,
    prototype_status     TEXT,
    demo_date            TEXT,
    market_validation    TEXT,
    notes                TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    status               TEXT,
    exit_strategy        TEXT,
    number_of_employees  INTEGER,
    ip_patent_status    TEXT
);

INSERT INTO technology_incubator_project VALUES
('PRJ001','INC001','AI_Diagnosis_Tool','2024-01-15','2025-12-31','MEM060','Artificial_Intelligence','Prototype','250000.00','12.5','MEM061','MEM062','Functional','2025-06-01','Positive','Early_stage_project','2024-01-10','2024-02-01','Active','Acquisition','5','Pending');

INSERT INTO technology_incubator_project VALUES
('PRJ002','INC002','Solar_Powered_Charging_Station','2023-09-01','2026-08-31','MEM063','Renewable_Energy','Beta','150000.00','10.0','MEM064','MEM065','Beta_Testing','2024-11-15','Mixed','Scaling_up','2023-08-20','2023-09-05','Active','IPO','8','Granted');

INSERT INTO technology_incubator_project VALUES
('PRJ003','INC003','VR_Education_Platform','2024-04-01','2027-03-31','MEM066','Virtual_Reality','Concept','50000.00','5.0','MEM067','MEM068','Conceptual','2025-02-20','Pending','Idea_phase','2024-03-25','2024-04-05','Planning','Spin_Off','2','None');
