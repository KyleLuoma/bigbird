-- Academic Achievement Record table
CREATE TABLE academic_achievement_record
(
    record_id              TEXT PRIMARY KEY,
    student_id             TEXT,
    academic_year          TEXT,
    term                   TEXT,
    gpa                    REAL,
    major_id               TEXT,
    honors                 TEXT,
    awards                 TEXT,
    dean_list              TEXT,
    credits_earned         INTEGER,
    cumulative_credits     INTEGER,
    class_rank             INTEGER,
    total_courses          INTEGER,
    extracurricular        TEXT,
    research_participation TEXT,
    scholarship_received   TEXT,
    mentor_id              TEXT,
    advisor_id             TEXT,
    notes                  TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    is_active              TEXT
);

INSERT INTO academic_achievement_record (record_id, student_id, academic_year, term, gpa, major_id, honors, awards, dean_list, credits_earned, cumulative_credits, class_rank, total_courses, extracurricular, research_participation, scholarship_received, mentor_id, advisor_id, notes, created_at, updated_at, is_active) VALUES ('rec001', 'stu1001', '2023-2024', 'Fall', 3.85, 'maj01', 'SummaCumLaude', 'DeanAward', 'true', 15, 45, 5, 12, 'ChessClub', 'AIResearch', 'ScholarshipA', 'men001', 'adv001', 'Excellent performance', '2023-08-01', '2023-08-15', 'true');
INSERT INTO academic_achievement_record (record_id, student_id, academic_year, term, gpa, major_id, honors, awards, dean_list, credits_earned, cumulative_credits, class_rank, total_courses, extracurricular, research_participation, scholarship_received, mentor_id, advisor_id, notes, created_at, updated_at, is_active) VALUES ('rec002', 'stu1002', '2022-2023', 'Spring', 3.65, 'maj02', 'MagnaCumLaude', 'ResearchAward', 'true', 18, 60, 12, 15, 'RoboticsTeam', 'BioLab', 'ScholarshipB', 'men002', 'adv002', 'Consistent academic record', '2023-01-10', '2023-01-20', 'true');
INSERT INTO academic_achievement_record (record_id, student_id, academic_year, term, gpa, major_id, honors, awards, dean_list, credits_earned, cumulative_credits, class_rank, total_courses, extracurricular, research_participation, scholarship_received, mentor_id, advisor_id, notes, created_at, updated_at, is_active) VALUES ('rec003', 'stu1003', '2021-2022', 'Fall', 3.92, 'maj03', 'SummaCumLaude', 'LeadershipAward', 'true', 12, 30, 3, 10, 'DebateClub', 'PhysicsResearch', 'ScholarshipC', 'men003', 'adv003', 'Outstanding leadership', '2022-09-05', '2022-09-12', 'true');

-- Student Visa Application table
CREATE TABLE student_visa_application
(
    application_id   TEXT PRIMARY KEY,
    student_id       TEXT,
    visa_type        TEXT,
    country_of_origin TEXT,
    passport_number  TEXT,
    issue_date       TEXT,
    expiry_date      TEXT,
    status           TEXT,
    submitted_date   TEXT,
    reviewed_by      TEXT,
    decision_date    TEXT,
    decision         TEXT,
    fee_paid         REAL,
    fee_currency     TEXT,
    supporting_documents TEXT,
    program_of_study TEXT,
    enrollment_status TEXT,
    advisor_id       TEXT,
    notes            TEXT,
    created_at       TEXT,
    updated_at       TEXT,
    is_renewal       TEXT
);

INSERT INTO student_visa_application (application_id, student_id, visa_type, country_of_origin, passport_number, issue_date, expiry_date, status, submitted_date, reviewed_by, decision_date, decision, fee_paid, fee_currency, supporting_documents, program_of_study, enrollment_status, advisor_id, notes, created_at, updated_at, is_renewal) VALUES ('app001', 'stu2001', 'F1', 'CountryA', 'P1234567', '2022-06-01', '2025-06-01', 'Pending', '2022-05-20', 'off001', NULL, NULL, 350.00, 'USD', 'DocList1', 'Engineering', 'FullTime', 'adv004', 'Awaiting review', '2022-05-21', '2022-05-21', 'false');
INSERT INTO student_visa_application (application_id, student_id, visa_type, country_of_origin, passport_number, issue_date, expiry_date, status, submitted_date, reviewed_by, decision_date, decision, fee_paid, fee_currency, supporting_documents, program_of_study, enrollment_status, advisor_id, notes, created_at, updated_at, is_renewal) VALUES ('app002', 'stu2002', 'J1', 'CountryB', 'P7654321', '2021-09-15', '2024-09-15', 'Approved', '2021-08-30', 'off002', '2021-09-05', 'Approved', 300.00, 'USD', 'DocList2', 'Arts', 'PartTime', 'adv005', 'Approved quickly', '2021-08-31', '2021-09-06', 'false');
INSERT INTO student_visa_application (application_id, student_id, visa_type, country_of_origin, passport_number, issue_date, expiry_date, status, submitted_date, reviewed_by, decision_date, decision, fee_paid, fee_currency, supporting_documents, program_of_study, enrollment_status, advisor_id, notes, created_at, updated_at, is_renewal) VALUES ('app003', 'stu2003', 'F1', 'CountryC', 'P1122334', '2020-01-10', '2023-01-10', 'Renewed', '2022-12-01', 'off003', '2022-12-10', 'Renewed', 350.00, 'USD', 'DocList3', 'Science', 'FullTime', 'adv006', 'Renewal processed', '2022-12-02', '2022-12-11', 'true');

-- Research Data Sharing Log table
CREATE TABLE research_data_sharing_log
(
    log_id               TEXT PRIMARY KEY,
    dataset_id           TEXT,
    requestor_id         TEXT,
    request_date         TEXT,
    approval_status      TEXT,
    approved_by          TEXT,
    approval_date        TEXT,
    access_level         TEXT,
    expiration_date      TEXT,
    usage_purpose        TEXT,
    data_format          TEXT,
    size_gb              REAL,
    compliance_check     TEXT,
    auditor_id           TEXT,
    notes                TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    is_active            TEXT,
    sharing_agreement_id TEXT,
    data_sensitivity     TEXT,
    retention_policy     TEXT,
    breach_reported      TEXT
);

INSERT INTO research_data_sharing_log (log_id, dataset_id, requestor_id, request_date, approval_status, approved_by, approval_date, access_level, expiration_date, usage_purpose, data_format, size_gb, compliance_check, auditor_id, notes, created_at, updated_at, is_active, sharing_agreement_id, data_sensitivity, retention_policy, breach_reported) VALUES ('log001', 'ds1001', 'req001', '2023-03-01', 'Approved', 'aud001', '2023-03-05', 'ReadOnly', '2024-03-01', 'MetaAnalysis', 'CSV', 12.5, 'Passed', 'aud002', 'Initial access granted', '2023-03-02', '2023-03-06', 'true', 'agr001', 'High', '5Years', 'false');
INSERT INTO research_data_sharing_log (log_id, dataset_id, requestor_id, request_date, approval_status, approved_by, approval_date, access_level, expiration_date, usage_purpose, data_format, size_gb, compliance_check, auditor_id, notes, created_at, updated_at, is_active, sharing_agreement_id, data_sensitivity, retention_policy, breach_reported) VALUES ('log002', 'ds1002', 'req002', '2023-04-10', 'Pending', NULL, NULL, 'FullAccess', '2025-04-10', 'AlgorithmTraining', 'Parquet', 45.0, 'Pending', NULL, 'Awaiting approval', '2023-04-11', '2023-04-11', 'false', 'agr002', 'Medium', '3Years', 'false');
INSERT INTO research_data_sharing_log (log_id, dataset_id, requestor_id, request_date, approval_status, approved_by, approval_date, access_level, expiration_date, usage_purpose, data_format, size_gb, compliance_check, auditor_id, notes, created_at, updated_at, is_active, sharing_agreement_id, data_sensitivity, retention_policy, breach_reported) VALUES ('log003', 'ds1003', 'req003', '2022-12-15', 'Rejected', 'aud003', '2022-12-20', 'None', NULL, 'CommercialUse', 'JSON', 8.2, 'Failed', 'aud004', 'Data sensitivity too high', '2022-12-16', '2022-12-21', 'false', 'agr003', 'High', 'N/A', 'false');

-- Facility Security Incident table
CREATE TABLE facility_security_incident
(
    incident_id          TEXT PRIMARY KEY,
    facility_id          TEXT,
    incident_date        TEXT,
    incident_type        TEXT,
    description          TEXT,
    reported_by          TEXT,
    severity_level       TEXT,
    resolved             TEXT,
    resolution_date      TEXT,
    mitigation_action    TEXT,
    evidence_file        TEXT,
    staff_involved       TEXT,
    external_agency      TEXT,
    follow_up_required   TEXT,
    follow_up_date       TEXT,
    notes                TEXT,
    created_at           TEXT,
    updated_at           TEXT,
    is_closed            TEXT,
    incident_category    TEXT,
    risk_score           REAL,
    status               TEXT
);

INSERT INTO facility_security_incident (incident_id, facility_id, incident_date, incident_type, description, reported_by, severity_level, resolved, resolution_date, mitigation_action, evidence_file, staff_involved, external_agency, follow_up_required, follow_up_date, notes, created_at, updated_at, is_closed, incident_category, risk_score, status) VALUES ('inc001', 'fac001', '2023-07-12', 'UnauthorizedAccess', 'Tailgating at main entrance', 'sec001', 'Medium', 'true', '2023-07-13', 'Installed additional badge reader', 'evid001.jpg', 'staff001', 'PoliceDept', 'false', NULL, 'No further action needed', '2023-07-12', '2023-07-13', 'true', 'AccessControl', 4.5, 'Closed');
INSERT INTO facility_security_incident (incident_id, facility_id, incident_date, incident_type, description, reported_by, severity_level, resolved, resolution_date, mitigation_action, evidence_file, staff_involved, external_agency, follow_up_required, follow_up_date, notes, created_at, updated_at, is_closed, incident_category, risk_score, status) VALUES ('inc002', 'fac002', '2023-08-01', 'Vandalism', 'Graffiti on outer wall', 'sec002', 'Low', 'false', NULL, 'Cleaning scheduled', 'evid002.jpg', 'staff002', NULL, 'true', '2023-08-15', 'Awaiting contractor', '2023-08-01', '2023-08-01', 'false', 'PropertyDamage', 2.0, 'Open');
INSERT INTO facility_security_incident (incident_id, facility_id, incident_date, incident_type, description, reported_by, severity_level, resolved, resolution_date, mitigation_action, evidence_file, staff_involved, external_agency, follow_up_required, follow_up_date, notes, created_at, updated_at, is_closed, incident_category, risk_score, status) VALUES ('inc003', 'fac003', '2023-06-20', 'FireAlarm', 'False alarm triggered in lab', 'sec003', 'High', 'true', '2023-06-20', 'Reviewed sensor calibration', 'evid003.mp4', 'staff003', 'FireDept', 'false', NULL, 'System verified functional', '2023-06-20', '2023-06-20', 'true', 'Safety', 7.8, 'Closed');

-- Event Accessibility Assessment table
CREATE TABLE event_accessibility_assessment
(
    assessment_id          TEXT PRIMARY KEY,
    event_id               TEXT,
    assessment_date        TEXT,
    assessor_id            TEXT,
    wheelchair_access      TEXT,
    sign_language_provided TEXT,
    braille_materials     TEXT,
    audio_description      TEXT,
    accessible_restrooms   TEXT,
    transportation_assistance TEXT,
    accessibility_score    INTEGER,
    notes                  TEXT,
    recommendations        TEXT,
    follow_up_action      TEXT,
    follow_up_deadline     TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    is_compliant           TEXT,
    overall_rating         INTEGER,
    venue_id               TEXT,
    compliance_status      TEXT,
    additional_support     TEXT,
    assessment_method      TEXT
);

INSERT INTO event_accessibility_assessment (assessment_id, event_id, assessment_date, assessor_id, wheelchair_access, sign_language_provided, braille_materials, audio_description, accessible_restrooms, transportation_assistance, accessibility_score, notes, recommendations, follow_up_action, follow_up_deadline, created_at, updated_at, is_compliant, overall_rating, venue_id, compliance_status, additional_support, assessment_method) VALUES ('ass001', 'evt001', '2023-05-10', 'assr001', 'true', 'false', 'true', 'false', 'true', 'false', 85, 'Good overall', 'Provide sign language', 'Schedule interpreter', '2023-06-01', '2023-05-11', '2023-05-12', 'true', 4, 'ven001', 'Compliant', 'None', 'OnSite');
INSERT INTO event_accessibility_assessment (assessment_id, event_id, assessment_date, assessor_id, wheelchair_access, sign_language_provided, braille_materials, audio_description, accessible_restrooms, transportation_assistance, accessibility_score, notes, recommendations, follow_up_action, follow_up_deadline, created_at, updated_at, is_compliant, overall_rating, venue_id, compliance_status, additional_support, assessment_method) VALUES ('ass002', 'evt002', '2023-06-15', 'assr002', 'false', 'true', 'false', 'true', 'false', 'true', 70, 'Missing wheelchair ramps', 'Install temporary ramps', 'Order ramps', '2023-07-01', '2023-06-16', '2023-06-16', 'false', 3, 'ven002', 'NonCompliant', 'Wheelchair volunteers', 'Remote');
INSERT INTO event_accessibility_assessment (assessment_id, event_id, assessment_date, assessor_id, wheelchair_access, sign_language_provided, braille_materials, audio_description, accessible_restrooms, transportation_assistance, accessibility_score, notes, recommendations, follow_up_action, follow_up_deadline, created_at, updated_at, is_compliant, overall_rating, venue_id, compliance_status, additional_support, assessment_method) VALUES ('ass003', 'evt003', '2023-07-20', 'assr003', 'true', 'true', 'true', 'true', 'true', 'true', 95, 'All features present', 'Maintain current standards', 'Annual review', '2024-01-01', '2023-07-21', '2023-07-21', 'true', 5, 'ven003', 'Compliant', 'None', 'OnSite');

-- Digital Learning Resource table
CREATE TABLE digital_learning_resource
(
    resource_id        TEXT PRIMARY KEY,
    title              TEXT,
    description        TEXT,
    resource_type      TEXT,
    url                TEXT,
    file_path          TEXT,
    author_id          TEXT,
    department         TEXT,
    course_code        TEXT,
    semester           TEXT,
    academic_year      TEXT,
    version            INTEGER,
    size_mb            REAL,
    format             TEXT,
    access_level       TEXT,
    license_type       TEXT,
    uploaded_date      TEXT,
    last_updated       TEXT,
    usage_count        INTEGER,
    rating             REAL,
    tags               TEXT,
    is_archived        TEXT
);

INSERT INTO digital_learning_resource (resource_id, title, description, resource_type, url, file_path, author_id, department, course_code, semester, academic_year, version, size_mb, format, access_level, license_type, uploaded_date, last_updated, usage_count, rating, tags, is_archived) VALUES ('res001', 'Intro to AI', 'Basic concepts of artificial intelligence', 'Video', 'http://university.edu/ai101', '/videos/ai101.mp4', 'auth001', 'ComputerScience', 'CS101', 'Fall', '2023-2024', 1, 250.5, 'MP4', 'Public', 'CCBY', '2023-08-01', '2023-08-10', 120, 4.5, 'AI,MachineLearning', 'false');
INSERT INTO digital_learning_resource (resource_id, title, description, resource_type, url, file_path, author_id, department, course_code, semester, academic_year, version, size_mb, format, access_level, license_type, uploaded_date, last_updated, usage_count, rating, tags, is_archived) VALUES ('res002', 'Advanced Statistics Slides', 'Slide deck for advanced stats', 'Document', 'http://university.edu/stats202', '/docs/stats202.pdf', 'auth002', 'Mathematics', 'STAT202', 'Spring', '2022-2023', 2, 15.0, 'PDF', 'Restricted', 'GPL', '2022-02-15', '2022-05-20', 85, 4.2, 'Statistics,DataAnalysis', 'false');
INSERT INTO digital_learning_resource (resource_id, title, description, resource_type, url, file_path, author_id, department, course_code, semester, academic_year, version, size_mb, format, access_level, license_type, uploaded_date, last_updated, usage_count, rating, tags, is_archived) VALUES ('res003', 'Chemistry Lab Manual', 'Lab procedures and safety', 'PDF', 'http://university.edu/chem_lab', '/manuals/chem_lab.pdf', 'auth003', 'Chemistry', 'CHEM101', 'Fall', '2021-2022', 3, 8.2, 'PDF', 'Public', 'CC0', '2021-09-05', '2021-09-10', 200, 4.8, 'Chemistry,LabSafety', 'true');

-- Grant Review Commentary table
CREATE TABLE grant_review_commentary
(
    commentary_id          TEXT PRIMARY KEY,
    grant_id               TEXT,
    reviewer_id            TEXT,
    review_date            TEXT,
    overall_score          REAL,
    strengths              TEXT,
    weaknesses             TEXT,
    recommendations        TEXT,
    funding_decision       TEXT,
    comments               TEXT,
    confidentiality_level  TEXT,
    attached_file          TEXT,
    status                 TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    is_final               TEXT,
    review_round           INTEGER,
    eligibility_score      REAL,
    innovation_score       REAL,
    impact_score           REAL,
    budget_justification   TEXT,
    follow_up_needed       TEXT
);

INSERT INTO grant_review_commentary (commentary_id, grant_id, reviewer_id, review_date, overall_score, strengths, weaknesses, recommendations, funding_decision, comments, confidentiality_level, attached_file, status, created_at, updated_at, is_final, review_round, eligibility_score, innovation_score, impact_score, budget_justification, follow_up_needed) VALUES ('com001', 'grt001', 'rev001', '2023-04-10', 4.7, 'Strong methodology', 'Limited preliminary data', 'Request additional pilot data', 'Approved', 'Promising project', 'High', 'file001.pdf', 'Submitted', '2023-04-11', '2023-04-12', 'true', 1, 4.5, 4.8, 4.6, 'Adequate budget allocation', 'false');
INSERT INTO grant_review_commentary (commentary_id, grant_id, reviewer_id, review_date, overall_score, strengths, weaknesses, recommendations, funding_decision, comments, confidentiality_level, attached_file, status, created_at, updated_at, is_final, review_round, eligibility_score, innovation_score, impact_score, budget_justification, follow_up_needed) VALUES ('com002', 'grt002', 'rev002', '2023-05-05', 3.9, 'Good team expertise', 'Unclear timeline', 'Clarify milestones', 'Conditional', 'Needs timeline revision', 'Medium', 'file002.pdf', 'Revised', '2023-05-06', '2023-05-07', 'false', 2, 4.0, 3.8, 4.1, 'Budget reasonable', 'true');
INSERT INTO grant_review_commentary (commentary_id, grant_id, reviewer_id, review_date, overall_score, strengths, weaknesses, recommendations, funding_decision, comments, confidentiality_level, attached_file, status, created_at, updated_at, is_final, review_round, eligibility_score, innovation_score, impact_score, budget_justification, follow_up_needed) VALUES ('com003', 'grt003', 'rev003', '2023-03-20', 2.5, 'Novel concept', 'Insufficient data', 'Require feasibility study', 'Rejected', 'Concept not sufficiently supported', 'Low', 'file003.pdf', 'Final', '2023-03-21', '2023-03-22', 'true', 1, 2.8, 2.4, 2.6, 'Budget appears high for scope', 'false');

-- Community Participation Metric table
CREATE TABLE community_participation_metric
(
    metric_id               TEXT PRIMARY KEY,
    community_id            TEXT,
    reporting_period        TEXT,
    total_participants      INTEGER,
    events_hosted           INTEGER,
    volunteer_hours         INTEGER,
    funds_raised            REAL,
    outreach_sessions       INTEGER,
    media_mentions          INTEGER,
    social_media_engagement INTEGER,
    satisfaction_score      REAL,
    feedback_collected      INTEGER,
    average_attendance      INTEGER,
    demographic_diversity_score REAL,
    partnership_count       INTEGER,
    new_members             INTEGER,
    retained_members        INTEGER,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    is_active               TEXT,
    reporting_status        TEXT
);

INSERT INTO community_participation_metric (metric_id, community_id, reporting_period, total_participants, events_hosted, volunteer_hours, funds_raised, outreach_sessions, media_mentions, social_media_engagement, satisfaction_score, feedback_collected, average_attendance, demographic_diversity_score, partnership_count, new_members, retained_members, notes, created_at, updated_at, is_active, reporting_status) VALUES ('met001', 'com001', '2023-Q1', 350, 12, 800, 15000.00, 20, 35, 1200, 4.3, 200, 45, 3.7, 5, 30, 120, 'Steady growth', '2023-04-01', '2023-04-02', 'true', 'Submitted');
INSERT INTO community_participation_metric (metric_id, community_id, reporting_period, total_participants, events_hosted, volunteer_hours, funds_raised, outreach_sessions, media_mentions, social_media_engagement, satisfaction_score, feedback_collected, average_attendance, demographic_diversity_score, partnership_count, new_members, retained_members, notes, created_at, updated_at, is_active, reporting_status) VALUES ('met002', 'com002', '2023-Q2', 420, 15, 950, 18000.00, 25, 40, 1500, 4.6, 250, 50, 4.0, 8, 45, 150, 'Increased outreach', '2023-07-01', '2023-07-02', 'true', 'Submitted');
INSERT INTO community_participation_metric (metric_id, community_id, reporting_period, total_participants, events_hosted, volunteer_hours, funds_raised, outreach_sessions, media_mentions, social_media_engagement, satisfaction_score, feedback_collected, average_attendance, demographic_diversity_score, partnership_count, new_members, retained_members, notes, created_at, updated_at, is_active, reporting_status) VALUES ('met003', 'com003', '2023-Q3', 300, 10, 600, 12000.00, 18, 30, 900, 4.0, 180, 40, 3.5, 4, 20, 100, 'Focused on youth', '2023-10-01', '2023-10-02', 'true', 'Submitted');

-- Campus Green Space Inventory table
CREATE TABLE campus_green_space_inventory
(
    space_id                 TEXT PRIMARY KEY,
    name                     TEXT,
    location                 TEXT,
    area_sqft                REAL,
    tree_count               INTEGER,
    shrub_count              INTEGER,
    grass_coverage_percent   REAL,
    water_feature            TEXT,
    bench_count              INTEGER,
    lighting_type            TEXT,
    maintenance_schedule     TEXT,
    last_maintenance_date    TEXT,
    responsible_department   TEXT,
    sustainability_rating    REAL,
    carbon_sequestration_tons REAL,
    biodiversity_index       REAL,
    irrigation_system        TEXT,
    soil_type                TEXT,
    notes                    TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    is_public_access        TEXT
);

INSERT INTO campus_green_space_inventory (space_id, name, location, area_sqft, tree_count, shrub_count, grass_coverage_percent, water_feature, bench_count, lighting_type, maintenance_schedule, last_maintenance_date, responsible_department, sustainability_rating, carbon_sequestration_tons, biodiversity_index, irrigation_system, soil_type, notes, created_at, updated_at, is_public_access) VALUES ('gs001', 'Lake Gardens', 'North Campus', 25000.5, 120, 80, 65.0, 'Fountain', 30, 'LED', 'Monthly', '2023-06-15', 'Facilities', 8.5, 45.2, 7.1, 'Drip', 'Loam', 'Popular student area', '2023-06-16', '2023-06-16', 'true');
INSERT INTO campus_green_space_inventory (space_id, name, location, area_sqft, tree_count, shrub_count, grass_coverage_percent, water_feature, bench_count, lighting_type, maintenance_schedule, last_maintenance_date, responsible_department, sustainability_rating, carbon_sequestration_tons, biodiversity_index, irrigation_system, soil_type, notes, created_at, updated_at, is_public_access) VALUES ('gs002', 'Oak Meadow', 'East Campus', 18000.0, 95, 50, 70.0, 'Pond', 20, 'Solar', 'Biweekly', '2023-05-20', 'Grounds', 7.8, 38.0, 6.5, 'Sprinkler', 'Sandy', 'Habitat for birds', '2023-05-21', '2023-05-21', 'true');
INSERT INTO campus_green_space_inventory (space_id, name, location, area_sqft, tree_count, shrub_count, grass_coverage_percent, water_feature, bench_count, lighting_type, maintenance_schedule, last_maintenance_date, responsible_department, sustainability_rating, carbon_sequestration_tons, biodiversity_index, irrigation_system, soil_type, notes, created_at, updated_at, is_public_access) VALUES ('gs003', 'Solar Plaza', 'West Campus', 12000.0, 30, 20, 55.0, 'None', 15, 'LED', 'Quarterly', '2023-04-10', 'Facilities', 6.9, 12.5, 5.8, 'None', 'Clay', 'Used for events', '2023-04-11', '2023-04-11', 'false');

-- Technology Patent Maintenance table
CREATE TABLE technology_patent_maintenance
(
    maintenance_id          TEXT PRIMARY KEY,
    patent_id               TEXT,
    maintenance_fee         REAL,
    fee_currency            TEXT,
    due_date                TEXT,
    paid_date               TEXT,
    status                  TEXT,
    responsible_office      TEXT,
    attorney_id             TEXT,
    comments                TEXT,
    renewal_year            INTEGER,
    expiration_date         TEXT,
    jurisdiction            TEXT,
    prior_art_reference     TEXT,
    maintenance_type        TEXT,
    filing_date             TEXT,
    last_amended_date       TEXT,
    is_renewed              TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    is_active               TEXT,
    payment_method          TEXT
);

INSERT INTO technology_patent_maintenance (maintenance_id, patent_id, maintenance_fee, fee_currency, due_date, paid_date, status, responsible_office, attorney_id, comments, renewal_year, expiration_date, jurisdiction, prior_art_reference, maintenance_type, filing_date, last_amended_date, is_renewed, created_at, updated_at, is_active, payment_method) VALUES ('mt001', 'pat001', 1500.00, 'USD', '2023-09-01', '2023-08-25', 'Paid', 'IP Office', 'att001', 'On time payment', 2024, '2028-12-31', 'US', 'ref001', 'Section2', '2020-05-10', '2023-06-15', 'true', '2023-08-25', '2023-08-25', 'true', 'WireTransfer');
INSERT INTO technology_patent_maintenance (maintenance_id, patent_id, maintenance_fee, fee_currency, due_date, paid_date, status, responsible_office, attorney_id, comments, renewal_year, expiration_date, jurisdiction, prior_art_reference, maintenance_type, filing_date, last_amended_date, is_renewed, created_at, updated_at, is_active, payment_method) VALUES ('mt002', 'pat002', 2000.00, 'USD', '2023-12-15', NULL, 'Pending', 'LegalDept', 'att002', 'Awaiting funds', 2025, '2030-03-31', 'EU', 'ref002', 'Section3', '2021-07-22', '2022-11-05', 'false', '2023-10-01', '2023-10-01', 'false', 'CreditCard');
INSERT INTO technology_patent_maintenance (maintenance_id, patent_id, maintenance_fee, fee_currency, due_date, paid_date, status, responsible_office, attorney_id, comments, renewal_year, expiration_date, jurisdiction, prior_art_reference, maintenance_type, filing_date, last_amended_date, is_renewed, created_at, updated_at, is_active, payment_method) VALUES ('mt003', 'pat003', 1800.00, 'USD', '2024-03-30', '2024-03-20', 'Paid', 'IP Office', 'att003', 'Late fee applied', 2026, '2029-06-30', 'US', 'ref003', 'Section1', '2019-02-14', '2023-02-10', 'true', '2024-03-20', '2024-03-20', 'true', 'Check');