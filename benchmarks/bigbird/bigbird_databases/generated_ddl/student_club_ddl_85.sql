-- Academic Advising Session
CREATE TABLE academic_advising_session
(
    session_id            TEXT PRIMARY KEY,
    student_id            TEXT,
    faculty_id            TEXT,
    session_date          TEXT,
    location              TEXT,
    session_type          TEXT,
    duration_minutes      INTEGER,
    notes                 TEXT,
    follow_up_needed      TEXT,
    advising_topic        TEXT,
    meeting_mode          TEXT,
    agenda                TEXT,
    outcome               TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    attendance_status     TEXT,
    feedback_score        REAL,
    next_session_date     TEXT,
    advising_center       TEXT,
    advisor_role          TEXT
);
INSERT INTO academic_advising_session (session_id, student_id, faculty_id, session_date, location, session_type, duration_minutes, notes, follow_up_needed, advising_topic, meeting_mode, agenda, outcome, created_at, updated_at, attendance_status, feedback_score, next_session_date, advising_center, advisor_role) VALUES ('AS001', 'STU123', 'FAC456', '2024-03-10', 'Room101', 'Career', 45, 'Discussed internship options', 'Yes', 'Internship', 'InPerson', 'Resume review', 'Scheduled interview', '2024-03-01', '2024-03-01', 'Attended', 4.5, '2024-04-15', 'AdvisingCenterA', 'Advisor');
INSERT INTO academic_advising_session (session_id, student_id, faculty_id, session_date, location, session_type, duration_minutes, notes, follow_up_needed, advising_topic, meeting_mode, agenda, outcome, created_at, updated_at, attendance_status, feedback_score, next_session_date, advising_center, advisor_role) VALUES ('AS002', 'STU789', 'FAC321', '2024-03-12', 'Room202', 'Academic', 30, 'Reviewed course plan', 'No', 'CourseSelection', 'Virtual', 'Course list', 'Plan approved', '2024-03-01', '2024-03-02', 'Attended', 4.8, NULL, 'AdvisingCenterB', 'SeniorAdvisor');
INSERT INTO academic_advising_session (session_id, student_id, faculty_id, session_date, location, session_type, duration_minutes, notes, follow_up_needed, advising_topic, meeting_mode, agenda, outcome, created_at, updated_at, attendance_status, feedback_score, next_session_date, advising_center, advisor_role) VALUES ('AS003', 'STU456', 'FAC654', '2024-03-15', 'Room303', 'Personal', 60, 'Discussed study-life balance', 'Yes', 'Wellbeing', 'InPerson', 'Time management', 'Action plan created', '2024-03-05', '2024-03-05', 'Attended', 4.2, '2024-04-01', 'AdvisingCenterC', 'Counselor');

-- Student Financial Aid Plan
CREATE TABLE student_financial_aid_plan
(
    aid_plan_id           TEXT PRIMARY KEY,
    student_id            TEXT,
    academic_year         TEXT,
    total_aid_amount      INTEGER,
    grant_amount          INTEGER,
    loan_amount           INTEGER,
    work_study_amount     INTEGER,
    scholarship_amount    INTEGER,
    aid_status            TEXT,
    award_date            TEXT,
    disbursement_date     TEXT,
    repayment_start_date  TEXT,
    interest_rate         REAL,
    lender_name           TEXT,
    aid_type              TEXT,
    eligibility_criteria  TEXT,
    notes                 TEXT,
    created_by            TEXT,
    created_at            TEXT,
    updated_at            TEXT,
    verification_status   TEXT
);
INSERT INTO student_financial_aid_plan (aid_plan_id, student_id, academic_year, total_aid_amount, grant_amount, loan_amount, work_study_amount, scholarship_amount, aid_status, award_date, disbursement_date, repayment_start_date, interest_rate, lender_name, aid_type, eligibility_criteria, notes, created_by, created_at, updated_at, verification_status) VALUES ('FA001', 'STU123', '2024-2025', 15000, 5000, 8000, 2000, 0, 'Approved', '2024-02-01', '2024-08-15', '2026-08-15', 4.5, 'NationalBank', 'FederalLoan', 'GPA>3.0', 'First year aid', 'AdminA', '2024-01-15', '2024-01-15', 'Verified');
INSERT INTO student_financial_aid_plan (aid_plan_id, student_id, academic_year, total_aid_amount, grant_amount, loan_amount, work_study_amount, scholarship_amount, aid_status, award_date, disbursement_date, repayment_start_date, interest_rate, lender_name, aid_type, eligibility_criteria, notes, created_by, created_at, updated_at, verification_status) VALUES ('FA002', 'STU456', '2024-2025', 20000, 8000, 10000, 2000, 0, 'Pending', '2024-02-10', NULL, NULL, 5.0, 'StateFund', 'StateGrant', 'Resident', 'Awaiting documents', 'AdminB', '2024-01-20', '2024-01-20', 'Pending');
INSERT INTO student_financial_aid_plan (aid_plan_id, student_id, academic_year, total_aid_amount, grant_amount, loan_amount, work_study_amount, scholarship_amount, aid_status, award_date, disbursement_date, repayment_start_date, interest_rate, lender_name, aid_type, eligibility_criteria, notes, created_by, created_at, updated_at, verification_status) VALUES ('FA003', 'STU789', '2024-2025', 12000, 4000, 6000, 2000, 0, 'Approved', '2024-02-05', '2024-09-01', '2026-09-01', 4.0, 'EducationBank', 'FederalLoan', 'NeedBased', 'Scholarship pending', 'AdminC', '2024-01-25', '2024-02-01', 'Verified');

-- Campus Transportation Policy
CREATE TABLE campus_transportation_policy
(
    policy_id                TEXT PRIMARY KEY,
    policy_name              TEXT,
    effective_date           TEXT,
    expiration_date          TEXT,
    max_speed_limit          INTEGER,
    vehicle_type_allowed    TEXT,
    driver_requirements     TEXT,
    safety_equipment_required TEXT,
    insurance_minimum       REAL,
    compliance_officer       TEXT,
    review_frequency        TEXT,
    amendment_number        INTEGER,
    policy_document_url     TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    status                  TEXT,
    notes                   TEXT,
    applicable_zones        TEXT,
    penalty_structure       TEXT,
    training_required       TEXT
);
INSERT INTO campus_transportation_policy (policy_id, policy_name, effective_date, expiration_date, max_speed_limit, vehicle_type_allowed, driver_requirements, safety_equipment_required, insurance_minimum, compliance_officer, review_frequency, amendment_number, policy_document_url, created_at, updated_at, status, notes, applicable_zones, penalty_structure, training_required) VALUES ('TP001', 'General Vehicle Policy', '2023-01-01', '2026-12-31', 35, 'Car,Van,Electric', 'ValidLicense', 'FirstAidKit', 500000, 'OfficerA', 'Annual', 2, 'http://university.edu/policies/TP001.pdf', '2023-01-01', '2024-01-01', 'Active', 'Standard policy', 'CampusNorth;CampusSouth', 'Fine', 'Yes');
INSERT INTO campus_transportation_policy (policy_id, policy_name, effective_date, expiration_date, max_speed_limit, vehicle_type_allowed, driver_requirements, safety_equipment_required, insurance_minimum, compliance_officer, review_frequency, amendment_number, policy_document_url, created_at, updated_at, status, notes, applicable_zones, penalty_structure, training_required) VALUES ('TP002', 'Electric Shuttle Policy', '2024-06-01', '2029-05-31', 30, 'ElectricShuttle', 'SpecialTraining', 'FireExtinguisher', 300000, 'OfficerB', 'BiAnnual', 1, 'http://university.edu/policies/TP002.pdf', '2024-06-01', '2024-06-01', 'Active', 'Encourages low emissions', 'CampusEast', 'Ticket', 'Yes');
INSERT INTO campus_transportation_policy (policy_id, policy_name, effective_date, expiration_date, max_speed_limit, vehicle_type_allowed, driver_requirements, safety_equipment_required, insurance_minimum, compliance_officer, review_frequency, amendment_number, policy_document_url, created_at, updated_at, status, notes, applicable_zones, penalty_structure, training_required) VALUES ('TP003', 'Bike Share Policy', '2022-09-15', '2027-09-14', 15, 'Bicycle', 'BikeSafetyCourse', 'Helmet', 100000, 'OfficerC', 'Annual', 3, 'http://university.edu/policies/TP003.pdf', '2022-09-15', '2023-09-15', 'Active', 'Promotes sustainability', 'AllZones', 'Warning', 'No');

-- Faculty Research Funding Source
CREATE TABLE faculty_research_funding_source
(
    source_id               TEXT PRIMARY KEY,
    source_name             TEXT,
    source_type             TEXT,
    contact_person          TEXT,
    contact_email           TEXT,
    funding_cycle           TEXT,
    max_award_amount        INTEGER,
    matching_requirement    TEXT,
    eligibility_criteria    TEXT,
    application_deadline    TEXT,
    reporting_requirements  TEXT,
    fund_manager            TEXT,
    allocated_amount        INTEGER,
    spent_amount            INTEGER,
    remaining_balance       INTEGER,
    renewal_possible        TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    status                  TEXT,
    grant_number            TEXT
);
INSERT INTO faculty_research_funding_source (source_id, source_name, source_type, contact_person, contact_email, funding_cycle, max_award_amount, matching_requirement, eligibility_criteria, application_deadline, reporting_requirements, fund_manager, allocated_amount, spent_amount, remaining_balance, renewal_possible, notes, created_at, updated_at, status, grant_number) VALUES ('FS001', 'National Science Foundation', 'Federal', 'DrSmith', 'smith@nsf.gov', 'Annual', 500000, 'Yes', 'PeerReviewed', '2024-05-01', 'Quarterly', 'MsJones', 300000, 120000, 180000, 'Yes', 'High competition', '2024-01-10', '2024-01-10', 'Active', 'NSF2023-01');
INSERT INTO faculty_research_funding_source (source_id, source_name, source_type, contact_person, contact_email, funding_cycle, max_award_amount, matching_requirement, eligibility_criteria, application_deadline, reporting_requirements, fund_manager, allocated_amount, spent_amount, remaining_balance, renewal_possible, notes, created_at, updated_at, status, grant_number) VALUES ('FS002', 'State Education Grant', 'State', 'MrLee', 'lee@stateedu.org', 'BiAnnual', 200000, 'No', 'ResidentFaculty', '2024-08-15', 'Annual', 'MsKim', 150000, 50000, 100000, 'No', 'Supports STEM', '2024-02-05', '2024-02-05', 'Active', 'SEG2024-02');
INSERT INTO faculty_research_funding_source (source_id, source_name, source_type, contact_person, contact_email, funding_cycle, max_award_amount, matching_requirement, eligibility_criteria, application_deadline, reporting_requirements, fund_manager, allocated_amount, spent_amount, remaining_balance, renewal_possible, notes, created_at, updated_at, status, grant_number) VALUES ('FS003', 'Private Tech Fund', 'Private', 'DrWang', 'wang@techfund.com', 'Rolling', 1000000, 'Yes', 'InnovationFocus', '2024-12-01', 'SemiAnnual', 'MrPatel', 800000, 200000, 600000, 'Yes', 'Industry partnership', '2024-03-12', '2024-03-12', 'Active', 'PTF2023-07');

-- Event Accessibility Feature
CREATE TABLE event_accessibility_feature
(
    feature_id               TEXT PRIMARY KEY,
    event_id                 TEXT,
    feature_type             TEXT,
    description              TEXT,
    location                 TEXT,
    compliance_standard      TEXT,
    installation_date        TEXT,
    inspected_by             TEXT,
    inspection_date          TEXT,
    status                   TEXT,
    notes                    TEXT,
    accessibility_rating     REAL,
    assistance_required      TEXT,
    wheelchair_accessible    TEXT,
    braille_available        TEXT,
    sign_language_available  TEXT,
    acoustic_amplification   TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    verified_by              TEXT,
    verification_date        TEXT
);
INSERT INTO event_accessibility_feature (feature_id, event_id, feature_type, description, location, compliance_standard, installation_date, inspected_by, inspection_date, status, notes, accessibility_rating, assistance_required, wheelchair_accessible, braille_available, sign_language_available, acoustic_amplification, created_at, updated_at, verified_by, verification_date) VALUES ('AF001', 'EVT001', 'Ramp', 'Portable ramp for entrance', 'MainHall', 'ADA', '2024-01-15', 'InspectorA', '2024-01-20', 'Installed', 'Ready for use', 4.8, 'None', 'Yes', 'No', 'Yes', 'No', '2024-01-10', '2024-01-10', 'SupervisorA', '2024-01-21');
INSERT INTO event_accessibility_feature (feature_id, event_id, feature_type, description, location, compliance_standard, installation_date, inspected_by, inspection_date, status, notes, accessibility_rating, assistance_required, wheelchair_accessible, braille_available, sign_language_available, acoustic_amplification, created_at, updated_at, verified_by, verification_date) VALUES ('AF002', 'EVT002', 'SignLanguageBooth', 'Live ASL interpreter booth', 'ConferenceRoom2', 'ADA', '2024-02-05', 'InspectorB', '2024-02-07', 'Planned', 'Equipment pending', 4.5, 'Interpreter', 'Yes', 'No', 'Yes', 'No', '2024-02-01', '2024-02-01', 'SupervisorB', '2024-02-08');
INSERT INTO event_accessibility_feature (feature_id, event_id, feature_type, description, location, compliance_standard, installation_date, inspected_by, inspection_date, status, notes, accessibility_rating, assistance_required, wheelchair_accessible, braille_available, sign_language_available, acoustic_amplification, created_at, updated_at, verified_by, verification_date) VALUES ('AF003', 'EVT003', 'AudioAssist', 'Wireless hearing assistance system', 'Auditorium', 'ADA', '2024-03-10', 'InspectorC', '2024-03-12', 'Installed', 'Tested successfully', 4.9, 'None', 'Yes', 'No', 'No', 'Yes', '2024-03-05', '2024-03-05', 'SupervisorC', '2024-03-13');

-- Library Preservation Collection
CREATE TABLE library_preservation_collection
(
    collection_id            TEXT PRIMARY KEY,
    collection_name          TEXT,
    collection_type          TEXT,
    description              TEXT,
    date_acquired            TEXT,
    condition_status         TEXT,
    preservation_method      TEXT,
    storage_location         TEXT,
    curator_id               TEXT,
    total_items              INTEGER,
    digitization_status     TEXT,
    last_digitized           TEXT,
    funding_source           TEXT,
    notes                    TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    access_restriction       TEXT,
    insurance_value          INTEGER,
    preservation_priority    TEXT,
    appraisal_date           TEXT
);
INSERT INTO library_preservation_collection (collection_id, collection_name, collection_type, description, date_acquired, condition_status, preservation_method, storage_location, curator_id, total_items, digitization_status, last_digitized, funding_source, notes, created_at, updated_at, access_restriction, insurance_value, preservation_priority, appraisal_date) VALUES ('LC001', '19th Century Manuscripts', 'Manuscript', 'Historical documents from 1800s', '2019-05-20', 'Good', 'ClimateControlled', 'VaultA', 'CUR001', 120, 'Partial', '2023-06-15', 'Grant2020', 'Handle with gloves', '2023-01-10', '2023-01-10', 'Restricted', 250000, 'High', '2024-01-01');
INSERT INTO library_preservation_collection (collection_id, collection_name, collection_type, description, date_acquired, condition_status, preservation_method, storage_location, curator_id, total_items, digitization_status, last_digitized, funding_source, notes, created_at, updated_at, access_restriction, insurance_value, preservation_priority, appraisal_date) VALUES ('LC002', 'Modern Art Photographs', 'Photograph', 'Limited edition prints', '2021-09-11', 'Excellent', 'LowLight', 'GalleryB', 'CUR002', 85, 'Complete', '2022-12-01', 'DonorGift', 'Display on rotation', '2021-09-12', '2022-12-02', 'Public', 150000, 'Medium', '2024-02-15');
INSERT INTO library_preservation_collection (collection_id, collection_name, collection_type, description, date_acquired, condition_status, preservation_method, storage_location, curator_id, total_items, digitization_status, last_digitized, funding_source, notes, created_at, updated_at, access_restriction, insurance_value, preservation_priority, appraisal_date) VALUES ('LC003', 'Rare Maps', 'Map', 'Cartographic works from 17th century', '2018-03-05', 'Fair', 'ColdStorage', 'VaultC', 'CUR003', 60, 'None', NULL, 'UniversityFund', 'Requires careful handling', '2018-03-06', '2023-03-01', 'Restricted', 300000, 'High', '2024-03-20');

-- Health Service Procedure Code
CREATE TABLE health_service_procedure_code
(
    code_id                 TEXT PRIMARY KEY,
    code_value              TEXT,
    description             TEXT,
    category                TEXT,
    subcategory             TEXT,
    effective_date          TEXT,
    expiration_date         TEXT,
    reimbursement_rate      REAL,
    billing_unit            INTEGER,
    required_authorization  TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    status                  TEXT,
    provider_type           TEXT,
    specialization          TEXT,
    cpt_equivalent          TEXT,
    icd10_equivalent       TEXT,
    modifier_allowed        TEXT,
    insurance_coverage      TEXT,
    audit_trail_id          TEXT
);
INSERT INTO health_service_procedure_code (code_id, code_value, description, category, subcategory, effective_date, expiration_date, reimbursement_rate, billing_unit, required_authorization, notes, created_at, updated_at, status, provider_type, specialization, cpt_equivalent, icd10_equivalent, modifier_allowed, insurance_coverage, audit_trail_id) VALUES ('PC001', 'PROC1001', 'Basic physical exam', 'Examination', 'General', '2023-01-01', '2026-12-31', 75.0, 1, 'None', 'Standard visit', '2023-01-01', '2023-01-01', 'Active', 'Physician', 'FamilyMedicine', '99213', 'Z00.00', 'Yes', 'Full', 'AT001');
INSERT INTO health_service_procedure_code (code_id, code_value, description, category, subcategory, effective_date, expiration_date, reimbursement_rate, billing_unit, required_authorization, notes, created_at, updated_at, status, provider_type, specialization, cpt_equivalent, icd10_equivalent, modifier_allowed, insurance_coverage, audit_trail_id) VALUES ('PC002', 'PROC2002', 'MRI brain without contrast', 'Imaging', 'MRI', '2024-02-01', '2029-01-31', 800.0, 1, 'PriorApproval', 'Requires radiologist review', '2024-02-01', '2024-02-01', 'Active', 'Radiology', 'Neuroradiology', '70551', 'G93.9', 'No', 'Partial', 'AT002');
INSERT INTO health_service_procedure_code (code_id, code_value, description, category, subcategory, effective_date, expiration_date, reimbursement_rate, billing_unit, required_authorization, notes, created_at, updated_at, status, provider_type, specialization, cpt_equivalent, icd10_equivalent, modifier_allowed, insurance_coverage, audit_trail_id) VALUES ('PC003', 'PROC3003', 'Physical therapy session 30 min', 'Therapy', 'PhysicalTherapy', '2022-06-01', '2025-05-31', 60.0, 1, 'Referral', 'Limited to 12 sessions per year', '2022-06-01', '2022-06-01', 'Active', 'Therapist', 'PhysicalTherapy', '97010', 'M99.01', 'Yes', 'Full', 'AT003');

-- Sustainability Infrastructure Asset
CREATE TABLE sustainability_infrastructure_asset
(
    asset_id                TEXT PRIMARY KEY,
    asset_type              TEXT,
    location                TEXT,
    installation_date       TEXT,
    capacity                INTEGER,
    current_output          REAL,
    maintenance_schedule    TEXT,
    last_maintenance_date   TEXT,
    next_inspection_date    TEXT,
    responsible_department  TEXT,
    operational_status      TEXT,
    greenhouse_gas_reduction REAL,
    lifespan_years          INTEGER,
    vendor_name             TEXT,
    warranty_end_date       TEXT,
    cost                    INTEGER,
    funding_source          TEXT,
    notes                   TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    asset_identifier        TEXT
);
INSERT INTO sustainability_infrastructure_asset (asset_id, asset_type, location, installation_date, capacity, current_output, maintenance_schedule, last_maintenance_date, next_inspection_date, responsible_department, operational_status, greenhouse_gas_reduction, lifespan_years, vendor_name, warranty_end_date, cost, funding_source, notes, created_at, updated_at, asset_identifier) VALUES ('AS001', 'SolarPanelArray', 'NorthRoof', '2021-04-15', 500, 420.5, 'Annual', '2023-04-10', '2024-04-10', 'Facilities', 'Operational', 250.0, 25, 'SolarCo', '2026-04-15', 350000, 'GrantSolar2020', 'Monitored via SCADA', '2021-04-15', '2023-04-11', 'SPA-001');
INSERT INTO sustainability_infrastructure_asset (asset_id, asset_type, location, installation_date, capacity, current_output, maintenance_schedule, last_maintenance_date, next_inspection_date, responsible_department, operational_status, greenhouse_gas_reduction, lifespan_years, vendor_name, warranty_end_date, cost, funding_source, notes, created_at, updated_at, asset_identifier) VALUES ('AS002', 'GeothermalHeatPump', 'EastBasement', '2020-09-01', 300, 280.0, 'BiAnnual', '2023-09-01', '2024-03-01', 'Facilities', 'Operational', 180.0, 30, 'GeoEnergy', '2030-09-01', 500000, 'GreenCampusFund', 'Integrated with HVAC', '2020-09-01', '2023-09-02', 'GHP-002');
INSERT INTO sustainability_infrastructure_asset (asset_id, asset_type, location, installation_date, capacity, current_output, maintenance_schedule, last_maintenance_date, next_inspection_date, responsible_department, operational_status, greenhouse_gas_reduction, lifespan_years, vendor_name, warranty_end_date, cost, funding_source, notes, created_at, updated_at, asset_identifier) VALUES ('AS003', 'RainwaterHarvestSystem', 'SouthField', '2022-03-20', 200, 150.0, 'Quarterly', '2023-12-20', '2024-03-20', 'Facilities', 'Operational', 90.0, 20, 'AquaTech', '2042-03-20', 200000, 'SustainabilityGrant', 'Used for irrigation', '2022-03-20', '2023-12-21', 'RHS-003');

-- Community Outreach Project Funding
CREATE TABLE community_outreach_project_funding
(
    funding_id               TEXT PRIMARY KEY,
    project_id               TEXT,
    funder_name              TEXT,
    fund_amount              INTEGER,
    fund_type                TEXT,
    award_date               TEXT,
    disbursement_schedule    TEXT,
    reporting_requirements   TEXT,
    project_phase            TEXT,
    status                   TEXT,
    notes                    TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    allocated_to_department  TEXT,
    grant_number             TEXT,
    matching_funds           INTEGER,
    eligibility_criteria     TEXT,
    renewal_possible         TEXT,
    contact_person           TEXT,
    contact_email            TEXT,
    expiration_date          TEXT
);
INSERT INTO community_outreach_project_funding (funding_id, project_id, funder_name, fund_amount, fund_type, award_date, disbursement_schedule, reporting_requirements, project_phase, status, notes, created_at, updated_at, allocated_to_department, grant_number, matching_funds, eligibility_criteria, renewal_possible, contact_person, contact_email, expiration_date) VALUES ('CF001', 'PRJ001', 'CityHealthDept', 75000, 'Grant', '2024-01-15', 'Quarterly', 'SemiAnnualReport', 'Planning', 'Active', 'Focus on nutrition education', '2024-01-10', '2024-01-10', 'CommunityEngagement', 'CHD2024-01', 15000, 'NonProfit', 'Yes', 'MsTaylor', 'taylor@cityhealth.org', '2025-01-14');
INSERT INTO community_outreach_project_funding (funding_id, project_id, funder_name, fund_amount, fund_type, award_date, disbursement_schedule, reporting_requirements, project_phase, status, notes, created_at, updated_at, allocated_to_department, grant_number, matching_funds, eligibility_criteria, renewal_possible, contact_person, contact_email, expiration_date) VALUES ('CF002', 'PRJ002', 'GreenFutureFund', 120000, 'Grant', '2023-11-01', 'SemiAnnual', 'AnnualReport', 'Implementation', 'Active', 'Urban gardening initiative', '2023-10-20', '2023-10-20', 'Sustainability', 'GFF2023-11', 30000, 'CommunityGroup', 'No', 'MrGreen', 'green@future.org', '2025-10-31');
INSERT INTO community_outreach_project_funding (funding_id, project_id, funder_name, fund_amount, fund_type, award_date, disbursement_schedule, reporting_requirements, project_phase, status, notes, created_at, updated_at, allocated_to_department, grant_number, matching_funds, eligibility_criteria, renewal_possible, contact_person, contact_email, expiration_date) VALUES ('CF003', 'PRJ003', 'TechForAll', 50000, 'Corporate', '2024-03-05', 'Monthly', 'QuarterlyReport', 'Evaluation', 'Pending', 'Digital literacy workshops', '2024-02-28', '2024-02-28', 'EducationOutreach', 'TFA2024-03', 10000, 'Schools', 'Yes', 'MsLee', 'lee@techforall.com', '2025-03-04');

-- Technology Incubator Mentor Profile
CREATE TABLE technology_incubator_mentor_profile
(
    mentor_id                TEXT PRIMARY KEY,
    first_name               TEXT,
    last_name                TEXT,
    organization             TEXT,
    expertise_area           TEXT,
    years_experience         INTEGER,
    bio                      TEXT,
    email                    TEXT,
    phone                    TEXT,
    linkedin_url             TEXT,
    mentor_status            TEXT,
    mentee_capacity          INTEGER,
    current_mentees          INTEGER,
    availability             TEXT,
    background_education     TEXT,
    awards                   TEXT,
    publications             TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    notes                    TEXT,
    mentor_rating            REAL
);
INSERT INTO technology_incubator_mentor_profile (mentor_id, first_name, last_name, organization, expertise_area, years_experience, bio, email, phone, linkedin_url, mentor_status, mentee_capacity, current_mentees, availability, background_education, awards, publications, created_at, updated_at, notes, mentor_rating) VALUES ('MT001', 'Alice', 'Nguyen', 'InnovateHub', 'AI', 12, 'Serial entrepreneur in AI startups', 'alice.nguyen@innovatehub.com', '5551234567', 'linkedin.com/in/alicenguyen', 'Active', 5, 3, 'Weekends', 'PhDComputerScience', 'EntrepreneurAward2020', 'AIJournal2021', '2024-01-05', '2024-01-05', 'Open to remote mentoring', 4.7);
INSERT INTO technology_incubator_mentor_profile (mentor_id, first_name, last_name, organization, expertise_area, years_experience, bio, email, phone, linkedin_url, mentor_status, mentee_capacity, current_mentees, availability, background_education, awards, publications, created_at, updated_at, notes, mentor_rating) VALUES ('MT002', 'Brian', 'Kumar', 'TechVentures', 'FinTech', 15, 'Former CFO turned mentor', 'brian.kumar@techventures.com', '5559876543', 'linkedin.com/in/briankumar', 'Active', 4, 2, 'Evenings', 'MBAFinance', 'FinTechLeader2021', 'FinTechReview2022', '2024-02-10', '2024-02-10', 'Prefers in‑person meetings', 4.5);
INSERT INTO technology_incubator_mentor_profile (mentor_id, first_name, last_name, organization, expertise_area, years_experience, bio, email, phone, linkedin_url, mentor_status, mentee_capacity, current_mentees, availability, background_education, awards, publications, created_at, updated_at, notes, mentor_rating) VALUES ('MT003', 'Clara', 'Lopez', 'GreenStart', 'CleanTech', 10, 'Environmental tech consultant', 'clara.lopez@greenstart.com', '5555551212', 'linkedin.com/in/claralopez', 'Active', 3, 1, 'Flexible', 'MSEngineering', 'CleanTechAward2019', 'EcoTechJournal2020', '2024-03-02', '2024-03-02', 'Available for startup pitches', 4.8);
