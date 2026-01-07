-- Research funding cycles for university projects
CREATE TABLE research_funding_cycle
(
    cycle_id               TEXT PRIMARY KEY,
    fiscal_year            INTEGER,
    start_date             TEXT,
    end_date               TEXT,
    total_budget           REAL,
    allocated_to_research  REAL,
    allocated_to_infrastructure REAL,
    allocated_to_education REAL,
    remaining_budget       REAL,
    sponsor_agency         TEXT,
    grant_type             TEXT,
    approval_status        TEXT,
    review_board           TEXT,
    number_of_projects     INTEGER,
    average_project_size   REAL,
    max_project_size       REAL,
    min_project_size       REAL,
    currency               TEXT,
    notes                  TEXT,
    created_at             TEXT
);

INSERT INTO research_funding_cycle (cycle_id, fiscal_year, start_date, end_date, total_budget, allocated_to_research, allocated_to_infrastructure, allocated_to_education, remaining_budget, sponsor_agency, grant_type, approval_status, review_board, number_of_projects, average_project_size, max_project_size, min_project_size, currency, notes, created_at) VALUES ('RC001', 2023, '2023-01-01', '2023-12-31', 5000000, 3000000, 1000000, 800000, 200000, 'NationalScienceFund', 'Competitive', 'Approved', 'ScienceBoard', 25, 120000, 250000, 50000, 'USD', 'First cycle', '2023-01-05');
INSERT INTO research_funding_cycle (cycle_id, fiscal_year, start_date, end_date, total_budget, allocated_to_research, allocated_to_infrastructure, allocated_to_education, remaining_budget, sponsor_agency, grant_type, approval_status, review_board, number_of_projects, average_project_size, max_project_size, min_project_size, currency, notes, created_at) VALUES ('RC002', 2024, '2024-01-01', '2024-12-31', 6000000, 3500000, 1200000, 900000, 400000, 'GlobalResearchAlliance', 'Grant', 'Pending', 'InnovationCouncil', 30, 130000, 300000, 60000, 'USD', 'Second cycle', '2024-01-10');
INSERT INTO research_funding_cycle (cycle_id, fiscal_year, start_date, end_date, total_budget, allocated_to_research, allocated_to_infrastructure, allocated_to_education, remaining_budget, sponsor_agency, grant_type, approval_status, review_board, number_of_projects, average_project_size, max_project_size, min_project_size, currency, notes, created_at) VALUES ('RC003', 2025, '2025-01-01', '2025-12-31', 5500000, 3200000, 1100000, 850000, 350000, 'EducationResearchFund', 'Competitive', 'Approved', 'AcademicBoard', 28, 125000, 260000, 55000, 'USD', 'Third cycle', '2025-01-12');

-- Detailed records of campus parking violations
CREATE TABLE campus_parking_violation_detail
(
    violation_id        TEXT PRIMARY KEY,
    vehicle_plate       TEXT,
    violation_date      TEXT,
    violation_time      TEXT,
    location            TEXT,
    officer_id          TEXT,
    fine_amount         REAL,
    payment_status      TEXT,
    vehicle_make        TEXT,
    vehicle_model       TEXT,
    vehicle_color       TEXT,
    citation_number     TEXT,
    dismissed_flag      TEXT,
    notes               TEXT,
    recorded_by         TEXT,
    recorded_at         TEXT,
    ticket_issued       TEXT,
    photo_evidence_path TEXT,
    gps_latitude        REAL,
    gps_longitude       REAL
);

INSERT INTO campus_parking_violation_detail (violation_id, vehicle_plate, violation_date, violation_time, location, officer_id, fine_amount, payment_status, vehicle_make, vehicle_model, vehicle_color, citation_number, dismissed_flag, notes, recorded_by, recorded_at, ticket_issued, photo_evidence_path, gps_latitude, gps_longitude) VALUES ('PV001', 'ABC1234', '2023-09-15', '08:30', 'LotA', 'OFC001', 75.0, 'Unpaid', 'Toyota', 'Camry', 'Blue', 'CIT001', 'No', 'Parked in disabled zone', 'USR001', '2023-09-15 08:45', 'Yes', '/photos/pv001.jpg', 40.7128, -74.0060);
INSERT INTO campus_parking_violation_detail (violation_id, vehicle_plate, violation_date, violation_time, location, officer_id, fine_amount, payment_status, vehicle_make, vehicle_model, vehicle_color, citation_number, dismissed_flag, notes, recorded_by, recorded_at, ticket_issued, photo_evidence_path, gps_latitude, gps_longitude) VALUES ('PV002', 'XYZ5678', '2023-10-02', '14:20', 'LotB', 'OFC002', 50.0, 'Paid', 'Honda', 'Civic', 'Red', 'CIT002', 'No', 'Expired meter', 'USR002', '2023-10-02 14:35', 'Yes', '/photos/pv002.jpg', 40.7130, -74.0055);
INSERT INTO campus_parking_violation_detail (violation_id, vehicle_plate, violation_date, violation_time, location, officer_id, fine_amount, payment_status, vehicle_make, vehicle_model, vehicle_color, citation_number, dismissed_flag, notes, recorded_by, recorded_at, ticket_issued, photo_evidence_path, gps_latitude, gps_longitude) VALUES ('PV003', 'LMN3456', '2023-11-12', '19:05', 'LotC', 'OFC003', 100.0, 'Unpaid', 'Ford', 'Focus', 'Black', 'CIT003', 'Yes', 'Blocking fire lane', 'USR003', '2023-11-12 19:20', 'Yes', '/photos/pv003.jpg', 40.7125, -74.0065);

-- Library acquisition orders for new materials
CREATE TABLE library_acquisition_order
(
    order_id          TEXT PRIMARY KEY,
    isbn              TEXT,
    title             TEXT,
    author            TEXT,
    publisher         TEXT,
    publication_year  INTEGER,
    order_date        TEXT,
    expected_arrival  TEXT,
    quantity          INTEGER,
    unit_price        REAL,
    total_cost        REAL,
    supplier_name     TEXT,
    order_status      TEXT,
    receiving_date    TEXT,
    receiving_staff   TEXT,
    cataloged_flag    TEXT,
    library_section   TEXT,
    call_number       TEXT,
    fund_source       TEXT,
    notes             TEXT
);

INSERT INTO library_acquisition_order (order_id, isbn, title, author, publisher, publication_year, order_date, expected_arrival, quantity, unit_price, total_cost, supplier_name, order_status, receiving_date, receiving_staff, cataloged_flag, library_section, call_number, fund_source, notes) VALUES ('AO001', '9780131103627', 'TheCProgrammingLanguage', 'KernighanRitchie', 'PrenticeHall', 1988, '2023-08-01', '2023-08-15', 10, 55.0, 550.0, 'BookSuppliesCo', 'Ordered', '2023-08-16', 'STAFF001', 'No', 'ComputerScience', 'QA76.73.C15 K47', 'LibraryBudget', 'Classic text');
INSERT INTO library_acquisition_order (order_id, isbn, title, author, publisher, publication_year, order_date, expected_arrival, quantity, unit_price, total_cost, supplier_name, order_status, receiving_date, receiving_staff, cataloged_flag, library_section, call_number, fund_source, notes) VALUES ('AO002', '9780262033848', 'IntroductiontoAlgorithms', 'CormenLeisersonRivestStein', 'MITPress', 2009, '2023-09-05', '2023-09-20', 7, 80.0, 560.0, 'AcademicBooksLtd', 'Ordered', NULL, NULL, 'No', 'Mathematics', 'QA76.6 .I58 2009', 'ResearchGrant', 'Core algorithms');
INSERT INTO library_acquisition_order (order_id, isbn, title, author, publisher, publication_year, order_date, expected_arrival, quantity, unit_price, total_cost, supplier_name, order_status, receiving_date, receiving_staff, cataloged_flag, library_section, call_number, fund_source, notes) VALUES ('AO003', '9780596007126', 'HeadFirstDesignPatterns', 'FreemanRobson', 'OReilly', 2004, '2023-10-10', '2023-10-25', 5, 45.0, 225.0, 'TechBooksDistributor', 'Shipped', NULL, NULL, 'No', 'ComputerScience', 'QA76.64 .H44 2004', 'FacultyDevelopment', 'Design patterns');

-- Health service prescriptions issued to patients
CREATE TABLE health_service_prescription
(
    prescription_id        TEXT PRIMARY KEY,
    patient_id             TEXT,
    provider_id            TEXT,
    prescription_date      TEXT,
    medication_name        TEXT,
    dosage                 TEXT,
    frequency              TEXT,
    route                  TEXT,
    duration_days          INTEGER,
    refills_remaining      INTEGER,
    pharmacy_id            TEXT,
    status                 TEXT,
    notes                  TEXT,
    prescribing_department TEXT,
    diagnosis_code         TEXT,
    insurance_provider     TEXT,
    copay_amount           REAL,
    pharmacy_contact       TEXT,
    ordered_by             TEXT,
    last_updated           TEXT
);

INSERT INTO health_service_prescription (prescription_id, patient_id, provider_id, prescription_date, medication_name, dosage, frequency, route, duration_days, refills_remaining, pharmacy_id, status, notes, prescribing_department, diagnosis_code, insurance_provider, copay_amount, pharmacy_contact, ordered_by, last_updated) VALUES ('PR001', 'PAT001', 'PROV001', '2023-07-12', 'Amoxicillin', '500mg', 'TID', 'Oral', 10, 2, 'PHARM001', 'Active', 'For sinus infection', 'FamilyMedicine', 'J01CA04', 'HealthCareCo', 5.0, '555-1234', 'NURSE001', '2023-07-12');
INSERT INTO health_service_prescription (prescription_id, patient_id, provider_id, prescription_date, medication_name, dosage, frequency, route, duration_days, refills_remaining, pharmacy_id, status, notes, prescribing_department, diagnosis_code, insurance_provider, copay_amount, pharmacy_contact, ordered_by, last_updated) VALUES ('PR002', 'PAT002', 'PROV002', '2023-08-03', 'Lisinopril', '10mg', 'QD', 'Oral', 30, 1, 'PHARM002', 'Active', 'Hypertension control', 'Cardiology', 'I10', 'MediAssist', 3.0, '555-5678', 'NURSE002', '2023-08-03');
INSERT INTO health_service_prescription (prescription_id, patient_id, provider_id, prescription_date, medication_name, dosage, frequency, route, duration_days, refills_remaining, pharmacy_id, status, notes, prescribing_department, diagnosis_code, insurance_provider, copay_amount, pharmacy_contact, ordered_by, last_updated) VALUES ('PR003', 'PAT003', 'PROV003', '2023-09-15', 'Metformin', '500mg', 'BID', 'Oral', 90, 0, 'PHARM001', 'Completed', 'Type2 diabetes', 'Endocrinology', 'E11', 'HealthPlus', 4.0, '555-1234', 'NURSE001', '2023-09-15');

-- Alumni giving campaign records
CREATE TABLE alumni_giving_campaign
(
    campaign_id        TEXT PRIMARY KEY,
    campaign_name      TEXT,
    start_date         TEXT,
    end_date           TEXT,
    target_amount      REAL,
    amount_raised      REAL,
    number_of_donors   INTEGER,
    matching_fund_amount REAL,
    campaign_manager   TEXT,
    communication_channel TEXT,
    theme              TEXT,
    region             TEXT,
    offline_events     INTEGER,
    online_events      INTEGER,
    social_media_hashtag TEXT,
    status             TEXT,
    created_at         TEXT,
    updated_at         TEXT,
    notes              TEXT,
    sponsor_name       TEXT
);

INSERT INTO alumni_giving_campaign (campaign_id, campaign_name, start_date, end_date, target_amount, amount_raised, number_of_donors, matching_fund_amount, campaign_manager, communication_channel, theme, region, offline_events, online_events, social_media_hashtag, status, created_at, updated_at, notes, sponsor_name) VALUES ('CAM001', 'Classof2010Revival', '2023-01-01', '2023-12-31', 1000000, 450000, 320, 200000, 'ALMGR001', 'Email', 'BuildingFuture', 'NorthCampus', 12, 20, '#Revive10', 'Active', '2023-01-01', '2023-08-15', 'Mid-year report', 'AlumniTrust');
INSERT INTO alumni_giving_campaign (campaign_id, campaign_name, start_date, end_date, target_amount, amount_raised, number_of_donors, matching_fund_amount, campaign_manager, communication_channel, theme, region, offline_events, online_events, social_media_hashtag, status, created_at, updated_at, notes, sponsor_name) VALUES ('CAM002', 'ResearchBoost2024', '2024-03-01', '2024-11-30', 1500000, 300000, 210, 500000, 'ALMGR002', 'SocialMedia', 'InnovateTomorrow', 'SouthCampus', 8, 15, '#Boost24', 'Planned', '2024-02-20', '2024-02-20', 'Planning stage', 'ScienceFoundation');
INSERT INTO alumni_giving_campaign (campaign_id, campaign_name, start_date, end_date, target_amount, amount_raised, number_of_donors, matching_fund_amount, campaign_manager, communication_channel, theme, region, offline_events, online_events, social_media_hashtag, status, created_at, updated_at, notes, sponsor_name) VALUES ('CAM003', 'LibraryExpansion', '2025-05-01', '2025-12-31', 800000, 120000, 95, 0, 'ALMGR003', 'DirectMail', 'ReadAndGrow', 'EastCampus', 5, 10, '#LibExpand', 'Planned', '2025-04-15', '2025-04-15', 'Awaiting approvals', 'BooksForAll');

-- Student exchange program details
CREATE TABLE student_exchange_program
(
    program_id           TEXT PRIMARY KEY,
    program_name         TEXT,
    host_institution     TEXT,
    home_institution     TEXT,
    start_date           TEXT,
    end_date             TEXT,
    credit_hours         INTEGER,
    scholarship_amount   REAL,
    coordinator_name     TEXT,
    coordinator_email    TEXT,
    language_requirement TEXT,
    minimum_gpa          REAL,
    application_deadline TEXT,
    number_of_slots      INTEGER,
    accepted_students    INTEGER,
    program_status       TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    notes                TEXT,
    program_type         TEXT
);

INSERT INTO student_exchange_program (program_id, program_name, host_institution, home_institution, start_date, end_date, credit_hours, scholarship_amount, coordinator_name, coordinator_email, language_requirement, minimum_gpa, application_deadline, number_of_slots, accepted_students, program_status, created_at, updated_at, notes, program_type) VALUES ('EX001', 'SpringInParis', 'UniversityOfParis', 'HomeUni', '2023-04-01', '2023-06-30', 12, 1500, 'DrEmilySmith', 'esmith@homeuni.edu', 'FrenchB2', 3.0, '2023-02-15', 20, 18, 'Closed', '2022-11-01', '2023-02-20', 'Full enrollment', 'Semester');
INSERT INTO student_exchange_program (program_id, program_name, host_institution, home_institution, start_date, end_date, credit_hours, scholarship_amount, coordinator_name, coordinator_email, language_requirement, minimum_gpa, application_deadline, number_of_slots, accepted_students, program_status, created_at, updated_at, notes, program_type) VALUES ('EX002', 'SummerInTokyo', 'TokyoTech', 'HomeUni', '2023-07-01', '2023-08-31', 6, 2000, 'ProfKenTanaka', 'ktanaka@homeuni.edu', 'JapaneseN2', 3.2, '2023-05-01', 15, 12, 'Open', '2022-12-10', '2023-05-05', 'Applications pending', 'Summer');
INSERT INTO student_exchange_program (program_id, program_name, host_institution, home_institution, start_date, end_date, credit_hours, scholarship_amount, coordinator_name, coordinator_email, language_requirement, minimum_gpa, application_deadline, number_of_slots, accepted_students, program_status, created_at, updated_at, notes, program_type) VALUES ('EX003', 'FallInBerlin', 'BerlinUniversity', 'HomeUni', '2023-09-15', '2023-12-15', 15, 1800, 'DrLaraKlein', 'lklein@homeuni.edu', 'GermanB1', 2.9, '2023-07-01', 25, 20, 'Open', '2023-01-20', '2023-07-02', 'Waiting list', 'Semester');

-- Faculty teaching assignment records
CREATE TABLE faculty_teaching_assignment
(
    assignment_id      TEXT PRIMARY KEY,
    faculty_id         TEXT,
    course_id          TEXT,
    semester           TEXT,
    academic_year      TEXT,
    teaching_role      TEXT,
    credit_hours       INTEGER,
    primary_section    TEXT,
    secondary_section  TEXT,
    contact_hours      INTEGER,
    lab_hours          INTEGER,
    tutorial_hours     INTEGER,
    enrollment_cap     INTEGER,
    actual_enrollment  INTEGER,
    room_number        TEXT,
    schedule           TEXT,
    evaluation_method  TEXT,
    created_at         TEXT,
    updated_at         TEXT,
    notes              TEXT
);

INSERT INTO faculty_teaching_assignment (assignment_id, faculty_id, course_id, semester, academic_year, teaching_role, credit_hours, primary_section, secondary_section, contact_hours, lab_hours, tutorial_hours, enrollment_cap, actual_enrollment, room_number, schedule, evaluation_method, created_at, updated_at, notes) VALUES ('FA001', 'FAC001', 'CS101', 'Fall', '2023-2024', 'Lecturer', 3, '001', NULL, 30, 0, 0, 100, 95, 'BldgA101', 'MWF09:00-10:00', 'Exam', '2023-01-15', '2023-09-01', 'First offering');
INSERT INTO faculty_teaching_assignment (assignment_id, faculty_id, course_id, semester, academic_year, teaching_role, credit_hours, primary_section, secondary_section, contact_hours, lab_hours, tutorial_hours, enrollment_cap, actual_enrollment, room_number, schedule, evaluation_method, created_at, updated_at, notes) VALUES ('FA002', 'FAC002', 'BIO202', 'Spring', '2023-2024', 'Instructor', 4, 'A', 'B', 45, 30, 15, 80, 78, 'BldgC202', 'TTh10:00-12:00', 'Project', '2023-01-20', '2023-04-10', 'Lab intensive');
INSERT INTO faculty_teaching_assignment (assignment_id, faculty_id, course_id, semester, academic_year, teaching_role, credit_hours, primary_section, secondary_section, contact_hours, lab_hours, tutorial_hours, enrollment_cap, actual_enrollment, room_number, schedule, evaluation_method, created_at, updated_at, notes) VALUES ('FA003', 'FAC003', 'HIST310', 'Summer', '2023-2024', 'Professor', 3, '01', NULL, 30, 0, 0, 60, 60, 'BldgD310', 'MWF14:00-15:00', 'Paper', '2023-02-01', '2023-06-05', 'Evening class');

-- Facility lease payment tracking
CREATE TABLE facility_lease_payment
(
    payment_id          TEXT PRIMARY KEY,
    lease_id            TEXT,
    facility_name       TEXT,
    payment_due_date    TEXT,
    payment_received_date TEXT,
    amount_due          REAL,
    amount_paid         REAL,
    payment_method      TEXT,
    payer_name          TEXT,
    payer_contact       TEXT,
    invoice_number      TEXT,
    late_fee            REAL,
    status              TEXT,
    notes               TEXT,
    created_by          TEXT,
    created_at          TEXT,
    approved_by         TEXT,
    approval_date       TEXT,
    currency            TEXT,
    exchange_rate       REAL
);

INSERT INTO facility_lease_payment (payment_id, lease_id, facility_name, payment_due_date, payment_received_date, amount_due, amount_paid, payment_method, payer_name, payer_contact, invoice_number, late_fee, status, notes, created_by, created_at, approved_by, approval_date, currency, exchange_rate) VALUES ('LP001', 'LEASE001', 'Gymnasium', '2023-03-01', '2023-03-05', 12000, 12000, 'Check', 'UniversityFinance', '555-1000', 'INV001', 0, 'Paid', 'Annual lease', 'USRFIN001', '2023-02-20', 'DIR001', '2023-02-25', 'USD', 1.0);
INSERT INTO facility_lease_payment (payment_id, lease_id, facility_name, payment_due_date, payment_received_date, amount_due, amount_paid, payment_method, payer_name, payer_contact, invoice_number, late_fee, status, notes, created_by, created_at, approved_by, approval_date, currency, exchange_rate) VALUES ('LP002', 'LEASE002', 'ScienceLab', '2023-07-15', NULL, 25000, 0, 'BankTransfer', 'UniversityFinance', '555-1001', 'INV002', 0, 'Pending', 'Quarterly payment', 'USRFIN002', '2023-07-01', 'DIR002', '2023-07-02', 'USD', 1.0);
INSERT INTO facility_lease_payment (payment_id, lease_id, facility_name, payment_due_date, payment_received_date, amount_due, amount_paid, payment_method, payer_name, payer_contact, invoice_number, late_fee, status, notes, created_by, created_at, approved_by, approval_date, currency, exchange_rate) VALUES ('LP003', 'LEASE003', 'ConferenceCenter', '2023-11-30', NULL, 50000, 0, 'CreditCard', 'UniversityFinance', '555-1002', 'INV003', 0, 'Pending', 'Event season lease', 'USRFIN003', '2023-11-15', 'DIR003', '2023-11-16', 'USD', 1.0);

-- Digital content distribution records
CREATE TABLE digital_content_distribution
(
    distribution_id      TEXT PRIMARY KEY,
    content_id           TEXT,
    title                TEXT,
    format               TEXT,
    distribution_channel TEXT,
    start_date           TEXT,
    end_date             TEXT,
    geographic_region    TEXT,
    target_audience      TEXT,
    license_type         TEXT,
    cost                 REAL,
    revenue              REAL,
    views                INTEGER,
    downloads            INTEGER,
    sharing_allowed      TEXT,
    embed_code           TEXT,
    created_by           TEXT,
    created_at           TEXT,
    last_modified_by     TEXT,
    last_modified_at     TEXT
);

INSERT INTO digital_content_distribution (distribution_id, content_id, title, format, distribution_channel, start_date, end_date, geographic_region, target_audience, license_type, cost, revenue, views, downloads, sharing_allowed, embed_code, created_by, created_at, last_modified_by, last_modified_at) VALUES ('DC001', 'CNT001', 'CampusVirtualTour', 'Video', 'Website', '2023-01-01', '2025-12-31', 'Global', 'ProspectiveStudents', 'RoyaltyFree', 0, 0, 15000, 5000, 'Yes', '<iframe src=...>', 'MEDIA001', '2023-01-01', 'MEDIA001', '2023-08-01');
INSERT INTO digital_content_distribution (distribution_id, content_id, title, format, distribution_channel, start_date, end_date, geographic_region, target_audience, license_type, cost, revenue, views, downloads, sharing_allowed, embed_code, created_by, created_at, last_modified_by, last_modified_at) VALUES ('DC002', 'CNT002', 'ResearchPodcastEpisode1', 'Audio', 'Streaming', '2023-03-15', '2024-03-15', 'NorthAmerica', 'Researchers', 'Standard', 0, 0, 8000, 0, 'No', '<audio src=...>', 'MEDIA002', '2023-03-15', 'MEDIA002', '2023-09-10');
INSERT INTO digital_content_distribution (distribution_id, content_id, title, format, distribution_channel, start_date, end_date, geographic_region, target_audience, license_type, cost, revenue, views, downloads, sharing_allowed, embed_code, created_by, created_at, last_modified_by, last_modified_at) VALUES ('DC003', 'CNT003', 'AlumniMagazine2023', 'PDF', 'Email', '2023-05-01', '2023-05-31', 'Global', 'Alumni', 'Restricted', 0, 0, 5000, 5000, 'Yes', '<a href=...>', 'MEDIA003', '2023-05-01', 'MEDIA003', '2023-05-02');

-- Environmental compliance audit logs
CREATE TABLE environmental_compliance_audit
(
    audit_id               TEXT PRIMARY KEY,
    audit_date             TEXT,
    auditor_name           TEXT,
    site_location          TEXT,
    compliance_category    TEXT,
    findings_summary       TEXT,
    critical_issues        INTEGER,
    non_critical_issues    INTEGER,
    corrective_actions_required INTEGER,
    deadline               TEXT,
    follow_up_date         TEXT,
    status                 TEXT,
    report_url             TEXT,
    notes                  TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    regulatory_body        TEXT,
    audit_type             TEXT,
    evidence_collected     TEXT,
    overall_score          REAL
);

INSERT INTO environmental_compliance_audit (audit_id, audit_date, auditor_name, site_location, compliance_category, findings_summary, critical_issues, non_critical_issues, corrective_actions_required, deadline, follow_up_date, status, report_url, notes, created_at, updated_at, regulatory_body, audit_type, evidence_collected, overall_score) VALUES ('EA001', '2023-04-10', 'AuditorSmith', 'ScienceBuilding', 'WasteManagement', 'Improper disposal of chemicals', 2, 5, 7, '2023-06-30', '2023-07-15', 'Open', 'http://reports.university.edu/ea001.pdf', 'Pending corrective actions', '2023-04-10', '2023-04-10', 'EPA', 'Annual', 'Photos,LogSheets', 78.5);
INSERT INTO environmental_compliance_audit (audit_id, audit_date, auditor_name, site_location, compliance_category, findings_summary, critical_issues, non_critical_issues, corrective_actions_required, deadline, follow_up_date, status, report_url, notes, created_at, updated_at, regulatory_body, audit_type, evidence_collected, overall_score) VALUES ('EA002', '2023-09-05', 'AuditorLee', 'CampusGarden', 'WaterConservation', 'Leakage in irrigation system', 0, 3, 3, '2023-10-15', '2023-11-01', 'Closed', 'http://reports.university.edu/ea002.pdf', 'All issues resolved', '2023-09-05', '2023-11-02', 'StateEnvAgency', 'Quarterly', 'Video,RepairLogs', 92.0);
INSERT INTO environmental_compliance_audit (audit_id, audit_date, auditor_name, site_location, compliance_category, findings_summary, critical_issues, non_critical_issues, corrective_actions_required, deadline, follow_up_date, status, report_url, notes, created_at, updated_at, regulatory_body, audit_type, evidence_collected, overall_score) VALUES ('EA003', '2023-12-12', 'AuditorKhan', 'DormitoryNorth', 'EnergyEfficiency', 'Excessive lighting after hours', 1, 4, 5, '2024-02-28', '2024-03-15', 'Open', 'http://reports.university.edu/ea003.pdf', 'Schedule sensor upgrades', '2023-12-12', '2023-12-12', 'CampusSustainabilityOffice', 'Annual', 'SensorData,Photos', 81.3);