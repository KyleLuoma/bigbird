-- Table: Campus policies and regulations
CREATE TABLE campus_policy
(
    policy_id            TEXT PRIMARY KEY,
    policy_name          TEXT,
    effective_date       TEXT,
    review_date          TEXT,
    department           TEXT,
    policy_type          TEXT,
    status               TEXT,
    version              TEXT,
    created_by           TEXT,
    approved_by          TEXT,
    summary              TEXT,
    details              TEXT,
    compliance_deadline  TEXT,
    penalty_amount       REAL,
    is_mandatory         TEXT,
    applicable_campus    TEXT,
    related_regulation   TEXT,
    last_modified        TEXT,
    revision_notes       TEXT,
    confidentiality_level TEXT,
    enforcement_agency   TEXT,
    policy_category      TEXT,
    foreign key (created_by) references member(member_id),
    foreign key (approved_by) references member(member_id)
);

INSERT INTO campus_policy VALUES
('POL001','Data_Privacy_Policy','2023-01-01','2024-01-01','IT','Regulatory','Active','v1','MEM001','MEM002','Protects_user_data','Full_policy_text','2025-01-01',5000.00,'Yes','Main_Campus','GDPR','2024-06-01','Initial_release','High','Compliance_Office','Privacy');

INSERT INTO campus_policy VALUES
('POL002','Campus_Sustainability_Policy','2022-09-15','2023-09-15','Facilities','Guideline','Active','v2','MEM003','MEM004','Reduces_carbon_footprint','Sustainability_guidelines','2024-09-15',0.00,'Yes','North_Campus','EPA_Regulation','2023-12-01','Updated_for_new_targets','Medium','Sustainability_Dept','Environment');

INSERT INTO campus_policy VALUES
('POL003','Academic_Integrity_Policy','2021-08-01','2022-08-01','Academic_Affairs','Code','Active','v3','MEM005','MEM006','Ensures_honest_work','Integrity_code_details','2023-08-01',0.00,'Yes','All_Campuses','Accreditation_Body','2022-07-15','Revision_2022','Low','Student_Affairs','Ethics');

-- Table: Research thesis records
CREATE TABLE research_thesis
(
    thesis_id          TEXT PRIMARY KEY,
    title              TEXT,
    abstract           TEXT,
    submission_date    TEXT,
    defense_date       TEXT,
    student_id         TEXT,
    advisor_id         TEXT,
    department         TEXT,
    college            TEXT,
    status             TEXT,
    pages              INTEGER,
    language           TEXT,
    isbn               TEXT,
    doi                TEXT,
    keywords           TEXT,
    funding_source     TEXT,
    grant_id           TEXT,
    pdf_path           TEXT,
    repository_url     TEXT,
    citation_count    INTEGER,
    is_published       TEXT,
    award              TEXT,
    notes              TEXT,
    foreign key (student_id) references member(member_id),
    foreign key (advisor_id) references member(member_id)
);

INSERT INTO research_thesis VALUES
('THS001','Deep_Learning_for_Energy','Abstract_text','2023-05-01','2023-06-15','MEM010','MEM015','Computer_Science','Engineering','Defended',120,'English','9781234567890','10.1000/xyz123','AI,Energy,Optimization','University_Grant','GR001','/files/thesis1.pdf','https://repo.university.edu/ths001',25,'Yes','Best_Thesis_Award','Notes_here');

INSERT INTO research_thesis VALUES
('THS002','Quantum_Computing_Algorithms','Abstract_text','2022-11-20','2023-01-10','MEM011','MEM016','Physics','Science','Defended',95,'English','9780987654321','10.1000/abc456','Quantum,Algorithms','Federal_Grant','GR002','/files/thesis2.pdf','https://repo.university.edu/ths002',40,'Yes','Dean_List','Additional_notes');

INSERT INTO research_thesis VALUES
('THS003','Sustainable_Agriculture_Practices','Abstract_text','2024-02-10','2024-04-05','MEM012','MEM017','Agriculture','Science','Pending',80,'English','9781122334455','10.1000/def789','Sustainability,Soil','State_Grant','GR003','/files/thesis3.pdf','https://repo.university.edu/ths003',0,'No','None','Pending_review');

-- Table: Faculty office hours schedule
CREATE TABLE faculty_office_hours
(
    office_hour_id       TEXT PRIMARY KEY,
    faculty_id           TEXT,
    day_of_week          TEXT,
    start_time           TEXT,
    end_time             TEXT,
    location             TEXT,
    semester             TEXT,
    year                 INTEGER,
    notes                TEXT,
    is_virtual           TEXT,
    virtual_link         TEXT,
    max_students         INTEGER,
    registration_required TEXT,
    contact_email        TEXT,
    phone_extension      TEXT,
    calendar_id          TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    recurring_pattern    TEXT,
    special_instructions TEXT,
    office_room_number   TEXT,
    building_name        TEXT,
    office_type          TEXT,
    foreign key (faculty_id) references member(member_id)
);

INSERT INTO faculty_office_hours VALUES
('OH001','MEM020','Monday','09:00','11:00','Room_101','Fall',2024,'Office_hours_for_Intro_CS','No','',15,'Yes','prof01@university.edu','1234','CAL001','2024-01-05','2024-02-01','Weekly','Bring_laptop','101','Engineering_Building','Teaching');

INSERT INTO faculty_office_hours VALUES
('OH002','MEM021','Wednesday','14:00','16:00','Virtual','Spring',2024,'Remote_consultations','Yes','https://zoom.us/j/123456789','5','No','prof02@university.edu','5678','CAL002','2024-02-10','2024-03-01','Biweekly','Prepare_questions','N/A','Online','Research');

INSERT INTO faculty_office_hours VALUES
('OH003','MEM022','Friday','10:00','12:00','Room_202','Summer',2024,'Lab_assistance','No','',10,'Yes','prof03@university.edu','9101','CAL003','2024-03-15','2024-04-01','Weekly','Wear_lab_coat','202','Science_Center','Lab');

-- Table: Student project tracking
CREATE TABLE student_project
(
    project_id           TEXT PRIMARY KEY,
    project_title        TEXT,
    description          TEXT,
    start_date           TEXT,
    end_date             TEXT,
    student_lead_id      TEXT,
    advisor_id           TEXT,
    department           TEXT,
    college              TEXT,
    status               TEXT,
    budget_amount        REAL,
    funding_source       TEXT,
    grant_id             TEXT,
    milestone_1_date     TEXT,
    milestone_2_date     TEXT,
    milestone_3_date     TEXT,
    deliverable_1        TEXT,
    deliverable_2        TEXT,
    deliverable_3        TEXT,
    total_hours_logged   INTEGER,
    outcome_summary      TEXT,
    publication_link     TEXT,
    notes                TEXT,
    foreign key (student_lead_id) references member(member_id),
    foreign key (advisor_id) references member(member_id)
);

INSERT INTO student_project VALUES
('PRJ001','AI_Enhanced_Learning','Project_description','2023-01-15','2023-12-15','MEM030','MEM035','Education','Science','Completed',20000.00,'University_Fund','GR010','2023-03-01','2023-06-01','2023-09-01','Prototype','Report','Presentation',350,'Successful_outcome','https://doi.org/10.1000/ailearn','Final_notes');

INSERT INTO student_project VALUES
('PRJ002','Renewable_Energy_Tracker','Project_description','2022-09-01','2023-08-31','MEM031','MEM036','Engineering','Science','In_Progress',15000.00,'State_Grant','GR011','2022-11-15','2023-02-15','2023-05-15','Beta_Version','User_Guide','Demo_Video',210,'On_track','', 'Pending_publication');

INSERT INTO student_project VALUES
('PRJ003','Community_Health_Survey','Project_description','2024-02-01','2024-11-30','MEM032','MEM037','Public_Health','Science','Planned',5000.00,'External_Sponsor','GR012','2024-04-01','2024-07-01','2024-10-01','Survey_Tool','Data_Collection_Plan','Preliminary_Report',0,'Not_started','', 'Awaiting_approval');

-- Table: Library subscription information
CREATE TABLE library_subscription
(
    subscription_id      TEXT PRIMARY KEY,
    vendor_name          TEXT,
    product_name         TEXT,
    start_date           TEXT,
    end_date             TEXT,
    cost                 REAL,
    currency             TEXT,
    access_type          TEXT,
    coverage             TEXT,
    serial_number        TEXT,
    license_key          TEXT,
    url                  TEXT,
    admin_contact        TEXT,
    support_contact      TEXT,
    renewal_notice_date  TEXT,
    auto_renewal         TEXT,
    usage_statistics     TEXT,
    concurrent_users     INTEGER,
    campus_access        TEXT,
    departmental_access TEXT,
    notes                TEXT,
    created_by           TEXT,
    foreign key (created_by) references member(member_id)
);

INSERT INTO library_subscription VALUES
('SUB001','Elsevier','ScienceDirect','2022-01-01','2025-12-31',120000.00,'USD','Online','Full','SN12345','LK98765','https://sciencedirect.com','admin1@library.edu','support1@elsevier.com','2025-11-01','Yes','High','500','Yes','Yes','Annual_subscription','MEM040');

INSERT INTO library_subscription VALUES
('SUB002','Springer','SpringerLink','2023-03-15','2026-03-14',80000.00,'USD','Online','Partial','SN54321','LK12345','https://link.springer.com','admin2@library.edu','support2@springer.com','2026-02-14','No','Medium','300','Yes','No','Limited_access','MEM041');

INSERT INTO library_subscription VALUES
('SUB003','Wiley','WileyOnlineLibrary','2021-07-01','2024-06-30',60000.00,'USD','Online','Full','SN67890','LK56789','https://onlinelibrary.wiley.com','admin3@library.edu','support3@wiley.com','2024-05-30','Yes','Low','200','No','Yes','Legacy_subscription','MEM042');

-- Table: Health clinic appointment schedule
CREATE TABLE health_clinic_schedule
(
    appointment_id       TEXT PRIMARY KEY,
    patient_id           TEXT,
    provider_id          TEXT,
    appointment_date     TEXT,
    start_time           TEXT,
    end_time             TEXT,
    department           TEXT,
    visit_type           TEXT,
    status               TEXT,
    room_number          TEXT,
    building_name        TEXT,
    notes                TEXT,
    follow_up_required   TEXT,
    follow_up_date       TEXT,
    prescribed_medication TEXT,
    dosage_instructions  TEXT,
    insurance_provider   TEXT,
    copay_amount         REAL,
    created_by           TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    foreign key (patient_id) references member(member_id),
    foreign key (provider_id) references member(member_id),
    foreign key (created_by) references member(member_id)
);

INSERT INTO health_clinic_schedule VALUES
('APT001','MEM050','MEM060','2024-04-10','09:00','09:30','General_Medicine','Checkup','Scheduled','101','Health_Building','First_visit','No','','','', 'HealthInsureCo',20.00,'MEM070','2024-03-01','2024-03-15');

INSERT INTO health_clinic_schedule VALUES
('APT002','MEM051','MEM061','2024-04-12','14:00','14:45','Dental','Cleaning','Completed','202','Dental_Center','Routine_cleaning','Yes','2024-05-10','Fluoride','Apply_twice_daily','DentalCareInc',15.00,'MEM071','2024-03-05','2024-04-01');

INSERT INTO health_clinic_schedule VALUES
('APT003','MEM052','MEM062','2024-04-15','11:00','11:30','Vision','Eye_Exam','Cancelled','303','Vision_Center','Patient_no_show','No','','','', 'VisionInsure',10.00,'MEM072','2024-03-08','2024-04-02');

-- Table: Sustainability initiative details
CREATE TABLE sustainability_initiative_detail
(
    initiative_id        TEXT PRIMARY KEY,
    name                 TEXT,
    description          TEXT,
    start_date           TEXT,
    end_date             TEXT,
    lead_id              TEXT,
    department           TEXT,
    target_metric        TEXT,
    baseline_value       REAL,
    target_value         REAL,
    current_value        REAL,
    status               TEXT,
    budget_allocated     REAL,
    actual_spent         REAL,
    funding_source       TEXT,
    stakeholder_group    TEXT,
    reporting_frequency  TEXT,
    last_report_date     TEXT,
    next_milestone_date  TEXT,
    risk_assessment      TEXT,
    mitigation_plan      TEXT,
    notes                TEXT,
    foreign key (lead_id) references member(member_id)
);

INSERT INTO sustainability_initiative_detail VALUES
('INIT001','Zero_Waste_Campaign','Reduce_waste_on_campus','2023-01-01','2025-12-31','MEM080','Facilities','Waste_Tonnage',500.0,250.0,320.0,'In_Progress',100000.00,60000.00,'University_Budget','Students_Faculty','Quarterly','2024-03-15','2024-06-01','Medium','Increase_recycling_bins','Progressing_well');

INSERT INTO sustainability_initiative_detail VALUES
('INIT002','Solar_Panel_Expansion','Increase_solar_power_generation','2022-06-01','2024-12-31','MEM081','Energy','Solar_MWh',200.0,350.0,310.0,'On_Track',250000.00,190000.00,'State_Grant','Facilities_Dept','Biannual','2024-02-20','2024-05-15','Low','Maintain_panel_efficiency','Ahead_of_schedule');

INSERT INTO sustainability_initiative_detail VALUES
('INIT003','Bike_Share_Program','Promote_cyclic_transport','2023-09-01','2026-09-01','MEM082','Transportation','Daily_Rides',0.0,5000.0,2100.0,'Planning','50000.00',0.00,'Private_Sponsor','Student_Union','Annual','2024-01-10','2024-12-01','High','Secure_funding','Initial_phase');

-- Table: Technology incubator funding allocations
CREATE TABLE technology_incubator_funding
(
    funding_id           TEXT PRIMARY KEY,
    startup_id           TEXT,
    funding_round        TEXT,
    amount               REAL,
    currency             TEXT,
    funding_date         TEXT,
    investor_name        TEXT,
    equity_percentage    REAL,
    valuation_pre_money  REAL,
    valuation_post_money REAL,
    milestone            TEXT,
    milestone_due_date   TEXT,
    status               TEXT,
    follow_up_meeting    TEXT,
    notes                TEXT,
    created_by           TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    foreign key (created_by) references member(member_id)
);

INSERT INTO technology_incubator_funding VALUES
('FUND001','STARTUP001','Series_A',500000.00,'USD','2024-01-15','VentureCapitalCo',10.0,4500000.00,5000000.00,'MVP_Release','2024-06-30','Active','2024-02-20','Initial_funding_round','MEM090','2024-01-01','2024-01-20');

INSERT INTO technology_incubator_funding VALUES
('FUND002','STARTUP002','Seed',150000.00,'USD','2023-09-10','AngelInvestorX',5.0,2500000.00,2650000.00,'Prototype_Development','2024-03-31','Active','2023-10-05','Seed_funding','MEM091','2023-09-01','2023-09-12');

INSERT INTO technology_incubator_funding VALUES
('FUND003','STARTUP003','Series_B',1200000.00,'USD','2024-03-05','GrowthFundY',15.0,8000000.00,9200000.00,'Market_Expansion','2024-12-31','Pending','2024-04-10','Awaiting_board_approval','MEM092','2024-03-01','2024-03-06');

-- Table: Alumni event registration records
CREATE TABLE alumni_event_registration
(
    registration_id      TEXT PRIMARY KEY,
    alumni_id            TEXT,
    event_id             TEXT,
    registration_date    TEXT,
    attendance_status    TEXT,
    ticket_type          TEXT,
    payment_status       TEXT,
    amount_paid          REAL,
    payment_method       TEXT,
    dietary_restriction  TEXT,
    special_accommodations TEXT,
    notes                TEXT,
    created_by           TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    foreign key (alumni_id) references member(member_id),
    foreign key (event_id) references event(event_id),
    foreign key (created_by) references member(member_id)
);

INSERT INTO alumni_event_registration VALUES
('REG001','MEM200','EVT001','2024-03-01','Confirmed','VIP','Paid',150.00,'Credit_Card','None','Wheelchair_access','Looking_forward','MEM210','2024-02-25','2024-02-28');

INSERT INTO alumni_event_registration VALUES
('REG002','MEM201','EVT001','2024-03-05','Waitlist','General','Pending',0.00,'','Vegetarian','None','Will_confirm_later','MEM211','2024-02-28','2024-03-02');

INSERT INTO alumni_event_registration VALUES
('REG003','MEM202','EVT002','2024-04-10','Cancelled','Student','Refunded',0.00,'PayPal','None','None','Cancelled_due_to_conflict','MEM212','2024-04-01','2024-04-05');

-- Table: Campus artifact inventory
CREATE TABLE campus_artifact_inventory
(
    artifact_id          TEXT PRIMARY KEY,
    name                 TEXT,
    description          TEXT,
    acquisition_date     TEXT,
    acquisition_method   TEXT,
    donor_id             TEXT,
    original_location    TEXT,
    current_location     TEXT,
    condition_status     TEXT,
    estimated_value      REAL,
    insurance_policy_id  TEXT,
    display_status       TEXT,
    custodian_id         TEXT,
    catalog_number       TEXT,
    provenance           TEXT,
    period               TEXT,
    material             TEXT,
    dimensions           TEXT,
    weight_kg            REAL,
    preservation_notes   TEXT,
    last_audit_date      TEXT,
    auditor_id           TEXT,
    notes                TEXT,
    foreign key (donor_id) references member(member_id),
    foreign key (custodian_id) references member(member_id),
    foreign key (auditor_id) references member(member_id)
);

INSERT INTO campus_artifact_inventory VALUES
('ART001','Bronze_Statue','19th_century_bronze_statue','1995-05-20','Donation','MEM300','Main_Hall','Art_Gallery','Good',25000.00,'INS001','On_Display','MEM310','CAT1001','Family_donation','19th_Century','Bronze','Height_150cm','200.0','Regular_cleaning','2024-01-15','MEM320','Inscribed_by_artist');

INSERT INTO campus_artifact_inventory VALUES
('ART002','Ancient_Vase','Mughal_period_vase','2002-11-10','Purchase','MEM301','Archaeology_Department','Museum_Storage','Fair',18000.00,'INS002','In_Storage','MEM311','CAT1002','Excavated_at_site','16th_Century','Ceramic','Height_45cm','5.5','Temperature_controlled','2023-12-01','MEM321','Requires_conservation');

INSERT INTO campus_artifact_inventory VALUES
('ART003','Digital_Installation','Interactive_media_piece','2018-09-05','Commission','MEM302','Media_Center','Exhibit_Hall','Excellent',30000.00,'INS003','On_Display','MEM312','CAT1003','Commissioned_by_university','21st_Century','Electronic','Dimensions_varied','N/A','Software_updates','2024-02-20','MEM322','Updated_software_version');

