-- District Technology Initiatives
CREATE TABLE district_technology_initiatives
(
    initiative_id TEXT NOT NULL PRIMARY KEY,
    district_code TEXT,
    year INTEGER,
    initiative_name TEXT,
    description TEXT,
    budget_amount REAL,
    funding_source TEXT,
    status TEXT,
    start_date DATE,
    end_date DATE,
    lead_officer TEXT,
    technology_area TEXT,
    target_schools INTEGER,
    expected_outcomes TEXT,
    actual_spent REAL,
    completion_percent REAL,
    partner_organization TEXT,
    evaluation_score REAL,
    notes TEXT,
    last_updated DATE
);

INSERT INTO district_technology_initiatives
(initiative_id, district_code, year, initiative_name, description, budget_amount, funding_source, status, start_date, end_date, lead_officer, technology_area, target_schools, expected_outcomes, actual_spent, completion_percent, partner_organization, evaluation_score, notes, last_updated)
VALUES
('DTI001', 'DC01', 2023, '1to1 Laptop Rollout', 'Provide laptops to all middle school students', 2500000, 'State Grant', 'InProgress', '2023-08-01', '2025-07-31', 'Jane Smith', 'Devices', 12, 'Improved digital literacy', 1200000, 48.0, 'TechCorp', 85.5, 'Phase 1 completed', '2024-02-15');

INSERT INTO district_technology_initiatives
(initiative_id, district_code, year, initiative_name, description, budget_amount, funding_source, status, start_date, end_date, lead_officer, technology_area, target_schools, expected_outcomes, actual_spent, completion_percent, partner_organization, evaluation_score, notes, last_updated)
VALUES
('DTI002', 'DC02', 2022, 'Smart Classroom Upgrade', 'Install interactive boards and sensors', 1800000, 'District Funds', 'Completed', '2022-01-15', '2023-12-20', 'Mark Lee', 'Infrastructure', 8, 'Higher engagement scores', 1800000, 100.0, 'EduTech', 92.0, 'All schools upgraded', '2024-01-10');

INSERT INTO district_technology_initiatives
(initiative_id, district_code, year, initiative_name, description, budget_amount, funding_source, status, start_date, end_date, lead_officer, technology_area, target_schools, expected_outcomes, actual_spent, completion_percent, partner_organization, evaluation_score, notes, last_updated)
VALUES
('DTI003', 'DC03', 2024, 'Student Data Platform', 'Develop unified analytics platform', 900000, 'Federal Grant', 'Planning', '2024-06-01', '2025-12-31', 'Laura Chen', 'Data', 15, 'Better student outcomes tracking', 0, 0.0, 'DataSolutions', NULL, 'Requirements gathering', '2024-03-05');

-- State Funding Programs
CREATE TABLE state_funding_programs
(
    program_id TEXT NOT NULL PRIMARY KEY,
    state_code TEXT,
    program_name TEXT,
    category TEXT,
    eligible_entity TEXT,
    allocation_amount REAL,
    year INTEGER,
    application_deadline DATE,
    award_status TEXT,
    award_amount REAL,
    admin_office TEXT,
    contact_email TEXT,
    website_url TEXT,
    reporting_requirements TEXT,
    performance_metric TEXT,
    created_date DATE,
    updated_date DATE,
    notes TEXT,
    is_active INTEGER,
    funding_agency TEXT
);

INSERT INTO state_funding_programs
(program_id, state_code, program_name, category, eligible_entity, allocation_amount, year, application_deadline, award_status, award_amount, admin_office, contact_email, website_url, reporting_requirements, performance_metric, created_date, updated_date, notes, is_active, funding_agency)
VALUES
('SFP1001', 'CA', 'STEM Innovation Grant', 'Education', 'Public Schools', 5000000, 2023, '2023-04-30', 'Awarded', 4500000, 'Office of Education', 'grantoffice@state.ca.gov', 'http://state.ca.gov/stemminnovation', 'Annual financial report', 'Student test scores', '2022-12-01', '2023-05-15', 'First round', 1, 'Department of Education');

INSERT INTO state_funding_programs
(program_id, state_code, program_name, category, eligible_entity, allocation_amount, year, application_deadline, award_status, award_amount, admin_office, contact_email, website_url, reporting_requirements, performance_metric, created_date, updated_date, notes, is_active, funding_agency)
VALUES
('SFP1002', 'NY', 'Green Schools Initiative', 'Environment', 'Public Schools', 3000000, 2024, '2024-06-15', 'Pending', NULL, 'Office of Sustainability', 'green@state.ny.gov', 'http://state.ny.gov/greenschools', 'Biannual emissions report', 'Energy reduction %', '2023-11-20', '2024-01-10', 'Awaiting review', 1, 'Department of Environmental Protection');

INSERT INTO state_funding_programs
(program_id, state_code, program_name, category, eligible_entity, allocation_amount, year, application_deadline, award_status, award_amount, admin_office, contact_email, website_url, reporting_requirements, performance_metric, created_date, updated_date, notes, is_active, funding_agency)
VALUES
('SFP1003', 'TX', 'Early Literacy Fund', 'Education', 'Charter Schools', 2000000, 2022, '2022-03-01', 'Awarded', 1900000, 'Office of Early Education', 'literacy@state.tx.gov', 'http://state.tx.gov/earlyliteracy', 'Quarterly progress report', 'Reading proficiency', '2021-10-05', '2022-04-20', 'Second cohort', 0, 'Department of Education');

-- School Environmental Certifications
CREATE TABLE school_environmental_certifications
(
    cert_id TEXT NOT NULL PRIMARY KEY,
    school_cds TEXT,
    cert_name TEXT,
    cert_body TEXT,
    award_date DATE,
    expiration_date DATE,
    level TEXT,
    scope TEXT,
    criteria_met TEXT,
    verification_status TEXT,
    auditor_name TEXT,
    audit_report_url TEXT,
    points_awarded INTEGER,
    carbon_reduction_estimate REAL,
    energy_savings_kwh REAL,
    water_savings_gallons REAL,
    waste_reduction_percent REAL,
    notes TEXT,
    last_review_date DATE,
    is_active INTEGER
);

INSERT INTO school_environmental_certifications
(cert_id, school_cds, cert_name, cert_body, award_date, expiration_date, level, scope, criteria_met, verification_status, auditor_name, audit_report_url, points_awarded, carbon_reduction_estimate, energy_savings_kwh, water_savings_gallons, waste_reduction_percent, notes, last_review_date, is_active)
VALUES
('EC001', 'CDS1001', 'LEED Gold', 'USGBC', '2022-09-15', '2027-09-14', 'Gold', 'Campus', 'Energy, Water', 'Verified', 'Alice Green', 'http://certs.school.edu/ec001', 85, 1200.5, 350000, 250000, 45.0, 'Renewal due 2027', '2024-03-01', 1);

INSERT INTO school_environmental_certifications
(cert_id, school_cds, cert_name, cert_body, award_date, expiration_date, level, scope, criteria_met, verification_status, auditor_name, audit_report_url, points_awarded, carbon_reduction_estimate, energy_savings_kwh, water_savings_gallons, waste_reduction_percent, notes, last_review_date, is_active)
VALUES
('EC002', 'CDS2002', 'Energy Star', 'EPA', '2021-04-10', '2026-04-09', 'Standard', 'Building', 'Energy', 'Verified', 'Bob White', 'http://certs.school.edu/ec002', 78, 800.0, 210000, 150000, 30.0, '', '2023-12-20', 1);

INSERT INTO school_environmental_certifications
(cert_id, school_cds, cert_name, cert_body, award_date, expiration_date, level, scope, criteria_met, verification_status, auditor_name, audit_report_url, points_awarded, carbon_reduction_estimate, energy_savings_kwh, water_savings_gallons, waste_reduction_percent, notes, last_review_date, is_active)
VALUES
('EC003', 'CDS3003', 'Zero Waste Certified', 'Zero Waste International', '2020-07-01', '2025-06-30', 'Platinum', 'Operations', 'Waste', 'Pending', 'Carol Blue', 'http://certs.school.edu/ec003', 92, 0, 0, 0, 0, 'Application submitted', '2024-02-10', 0);

-- Student Athletic Injuries
CREATE TABLE student_athletic_injuries
(
    injury_id TEXT NOT NULL PRIMARY KEY,
    student_id TEXT,
    school_cds TEXT,
    sport TEXT,
    injury_type TEXT,
    date_of_injury DATE,
    severity TEXT,
    days_missed INTEGER,
    treatment_provider TEXT,
    follow_up_required INTEGER,
    medical_notes TEXT,
    injury_location TEXT,
    recurrence INTEGER,
    injury_reported_by TEXT,
    insurance_claim INTEGER,
    cost_estimate REAL,
    rehab_sessions INTEGER,
    outcome TEXT,
    notes TEXT,
    last_updated DATE
);

INSERT INTO student_athletic_injuries
(injury_id, student_id, school_cds, sport, injury_type, date_of_injury, severity, days_missed, treatment_provider, follow_up_required, medical_notes, injury_location, recurrence, injury_reported_by, insurance_claim, cost_estimate, rehab_sessions, outcome, notes, last_updated)
VALUES
('INJ001', 'STU12345', 'CDS1001', 'Soccer', 'Ankle Sprain', '2023-10-12', 'Moderate', 14, 'Health Clinic', 1, 'Swelling reduced after 3 days', 'Left Ankle', 0, 'Coach', 0, 250.0, 5, 'Full Recovery', '', '2024-01-05');

INSERT INTO student_athletic_injuries
(injury_id, student_id, school_cds, sport, injury_type, date_of_injury, severity, days_missed, treatment_provider, follow_up_required, medical_notes, injury_location, recurrence, injury_reported_by, insurance_claim, cost_estimate, rehab_sessions, outcome, notes, last_updated)
VALUES
('INJ002', 'STU67890', 'CDS2002', 'Basketball', 'Concussion', '2023-12-01', 'Severe', 21, 'Hospital', 1, 'Symptoms resolved after 2 weeks', 'Head', 0, 'Athletic Trainer', 1, 1500.0, 8, 'Cleared for play', 'Returned to class with accommodations', '2024-02-12');

INSERT INTO student_athletic_injuries
(injury_id, student_id, school_cds, sport, injury_type, date_of_injury, severity, days_missed, treatment_provider, follow_up_required, medical_notes, injury_location, recurrence, injury_reported_by, insurance_claim, cost_estimate, rehab_sessions, outcome, notes, last_updated)
VALUES
('INJ003', 'STU54321', 'CDS3003', 'Track', 'Hamstring Strain', '2024-03-08', 'Mild', 7, 'School Nurse', 0, 'Improved with rest', 'Right Hamstring', 1, 'Coach', 0, 120.0, 3, 'Returned to practice', 'First occurrence last season', '2024-04-01');

-- Faculty Community Service
CREATE TABLE faculty_community_service
(
    service_id TEXT NOT NULL PRIMARY KEY,
    faculty_id TEXT,
    school_cds TEXT,
    service_type TEXT,
    organization TEXT,
    hours_contributed REAL,
    start_date DATE,
    end_date DATE,
    supervisor_name TEXT,
    verification_status TEXT,
    impact_description TEXT,
    community_area TEXT,
    award_received TEXT,
    notes TEXT,
    documented INTEGER,
    last_updated DATE,
    project_title TEXT,
    project_description TEXT,
    funding_source TEXT,
    is_recognized INTEGER
);

INSERT INTO faculty_community_service
(service_id, faculty_id, school_cds, service_type, organization, hours_contributed, start_date, end_date, supervisor_name, verification_status, impact_description, community_area, award_received, notes, documented, last_updated, project_title, project_description, funding_source, is_recognized)
VALUES
('CS001', 'FAC001', 'CDS1001', 'Volunteer Teaching', 'Community Center', 40.5, '2023-01-15', '2023-06-15', 'Emily Brown', 'Verified', 'Improved literacy for 30 adults', 'Education', 'Volunteer Excellence', '', 1, '2023-07-01', 'Adult Literacy Summer', 'Weekly reading classes for adults', 'School Budget', 1);

INSERT INTO faculty_community_service
(service_id, faculty_id, school_cds, service_type, organization, hours_contributed, start_date, end_date, supervisor_name, verification_status, impact_description, community_area, award_received, notes, documented, last_updated, project_title, project_description, funding_source, is_recognized)
VALUES
('CS002', 'FAC002', 'CDS2002', 'Environmental Cleanup', 'Green Earth', 25.0, '2022-09-01', '2022-09-30', 'Michael Lee', 'Verified', 'Removed 2 tons of litter from park', 'Environment', NULL, '', 1, '2022-10-05', 'Park Cleanup Initiative', 'Student and faculty coordinated cleanup', 'Grant', 1);

INSERT INTO faculty_community_service
(service_id, faculty_id, school_cds, service_type, organization, hours_contributed, start_date, end_date, supervisor_name, verification_status, impact_description, community_area, award_received, notes, documented, last_updated, project_title, project_description, funding_source, is_recognized)
VALUES
('CS003', 'FAC003', 'CDS3003', 'Health Outreach', 'Local Hospital', 30.0, '2023-05-10', '2023-08-10', 'Sarah Kim', 'Pending', 'Provided health screenings to 200 residents', 'Health', 'Community Service Award', '', 0, '2023-09-01', 'Summer Health Fair', 'Organized free screenings and education', 'Donations', 0);

-- School Emergency Exits
CREATE TABLE school_emergency_exits
(
    exit_id TEXT NOT NULL PRIMARY KEY,
    school_cds TEXT,
    building_name TEXT,
    floor_number INTEGER,
    exit_label TEXT,
    capacity INTEGER,
    width_inches INTEGER,
    door_type TEXT,
    is_accessible INTEGER,
    alarm_connected INTEGER,
    last_inspection DATE,
    inspector_name TEXT,
    compliance_status TEXT,
    notes TEXT,
    latitude REAL,
    longitude REAL,
    maintenance_contact TEXT,
    last_updated DATE,
    emergency_plan_section TEXT,
    is_active INTEGER
);

INSERT INTO school_emergency_exits
(exit_id, school_cds, building_name, floor_number, exit_label, capacity, width_inches, door_type, is_accessible, alarm_connected, last_inspection, inspector_name, compliance_status, notes, latitude, longitude, maintenance_contact, last_updated, emergency_plan_section, is_active)
VALUES
('EX001', 'CDS1001', 'Main Hall', 1, 'North Door', 120, 36, 'PushBar', 1, 1, '2023-11-20', 'John Miller', 'Compliant', '', 34.0522, -118.2437, 'Facilities Team', '2024-01-15', 'Section A', 1);

INSERT INTO school_emergency_exits
(exit_id, school_cds, building_name, floor_number, exit_label, capacity, width_inches, door_type, is_accessible, alarm_connected, last_inspection, inspector_name, compliance_status, notes, latitude, longitude, maintenance_contact, last_updated, emergency_plan_section, is_active)
VALUES
('EX002', 'CDS2002', 'Science Wing', 2, 'East Exit', 80, 32, 'Lever', 0, 1, '2023-09-05', 'Linda Green', 'NonCompliant', 'Widen needed', 40.7128, -74.0060, 'John Doe', '2023-12-01', 'Section B', 1);

INSERT INTO school_emergency_exits
(exit_id, school_cds, building_name, floor_number, exit_label, capacity, width_inches, door_type, is_accessible, alarm_connected, last_inspection, inspector_name, compliance_status, notes, latitude, longitude, maintenance_contact, last_updated, emergency_plan_section, is_active)
VALUES
('EX003', 'CDS3003', 'Gymnasium', 0, 'South Door', 150, 40, 'PushBar', 1, 0, '2022-08-15', 'Robert King', 'Compliant', 'Alarm pending installation', 41.8781, -87.6298, 'Facilities Manager', '2023-02-10', 'Section C', 0);

-- District Performance Targets
CREATE TABLE district_performance_target
(
    target_id TEXT NOT NULL PRIMARY KEY,
    district_code TEXT,
    metric_name TEXT,
    target_value REAL,
    current_value REAL,
    fiscal_year INTEGER,
    target_type TEXT,
    responsible_officer TEXT,
    progress_status TEXT,
    last_review DATE,
    notes TEXT,
    is_met INTEGER,
    variance REAL,
    weighting_percent REAL,
    data_source TEXT,
    created_date DATE,
    updated_date DATE,
    comments TEXT,
    audit_trail TEXT,
    is_active INTEGER
);

INSERT INTO district_performance_target
(target_id, district_code, metric_name, target_value, current_value, fiscal_year, target_type, responsible_officer, progress_status, last_review, notes, is_met, variance, weighting_percent, data_source, created_date, updated_date, comments, audit_trail, is_active)
VALUES
('PT001', 'DC01', 'Graduation Rate', 92.5, 88.3, 2024, 'Percentage', 'Laura Miles', 'OnTrack', '2024-03-01', '', 0, -4.2, 20.0, 'State Report', '2023-01-10', '2024-03-02', 'Improvement plan needed', 'Created by system', 1);

INSERT INTO district_performance_target
(target_id, district_code, metric_name, target_value, current_value, fiscal_year, target_type, responsible_officer, progress_status, last_review, notes, is_met, variance, weighting_percent, data_source, created_date, updated_date, comments, audit_trail, is_active)
VALUES
('PT002', 'DC02', 'Reading Proficiency', 85.0, 82.0, 2023, 'Score', 'Mark Allen', 'SlightlyBehind', '2023-12-15', '', 0, -3.0, 15.0, 'Annual Assessment', '2022-06-05', '2023-12-16', 'Curriculum review scheduled', 'Created by admin', 1);

INSERT INTO district_performance_target
(target_id, district_code, metric_name, target_value, current_value, fiscal_year, target_type, responsible_officer, progress_status, last_review, notes, is_met, variance, weighting_percent, data_source, created_date, updated_date, comments, audit_trail, is_active)
VALUES
('PT003', 'DC03', 'Energy Consumption Reduction', 10.0, 12.5, 2025, 'Percentage', 'Sarah Patel', 'OverTarget', '2025-02-20', 'Exceeded expectations', 1, 2.5, 10.0, 'Utility Reports', '2024-02-01', '2025-02-21', 'Consider higher target next year', 'Created by energy team', 1);

-- School Maintenance Contracts
CREATE TABLE school_maintenance_contracts
(
    contract_id TEXT NOT NULL PRIMARY KEY,
    school_cds TEXT,
    vendor_name TEXT,
    service_type TEXT,
    contract_start DATE,
    contract_end DATE,
    contract_value REAL,
    payment_terms TEXT,
    contact_person TEXT,
    contact_phone TEXT,
    contact_email TEXT,
    scope_of_work TEXT,
    renewal_option INTEGER,
    performance_rating REAL,
    termination_clause TEXT,
    insurance_requirements TEXT,
    compliance_status TEXT,
    notes TEXT,
    last_review DATE,
    is_active INTEGER
);

INSERT INTO school_maintenance_contracts
(contract_id, school_cds, vendor_name, service_type, contract_start, contract_end, contract_value, payment_terms, contact_person, contact_phone, contact_email, scope_of_work, renewal_option, performance_rating, termination_clause, insurance_requirements, compliance_status, notes, last_review, is_active)
VALUES
('MC001', 'CDS1001', 'CleanCo Services', 'Janitorial', '2023-07-01', '2025-06-30', 300000, 'Quarterly', 'Anna Reed', '5551234567', 'anna.reed@cleanco.com', 'Daily building cleaning', 1, 4.5, '30 days notice', 'Liability $1M', 'Compliant', '', '2024-01-20', 1);

INSERT INTO school_maintenance_contracts
(contract_id, school_cds, vendor_name, service_type, contract_start, contract_end, contract_value, payment_terms, contact_person, contact_phone, contact_email, scope_of_work, renewal_option, performance_rating, termination_clause, insurance_requirements, compliance_status, notes, last_review, is_active)
VALUES
('MC002', 'CDS2002', 'HVACPro Ltd', 'HVAC Maintenance', '2022-01-15', '2024-01-14', 150000, 'Annual', 'Brian West', '5559876543', 'b.west@hvacpro.com', 'Quarterly system checks', 0, 3.8, 'Failure to meet SLA', 'Liability $500K', 'NonCompliant', 'Pending service upgrade', '2023-12-10', 0);

INSERT INTO school_maintenance_contracts
(contract_id, school_cds, vendor_name, service_type, contract_start, contract_end, contract_value, payment_terms, contact_person, contact_phone, contact_email, scope_of_work, renewal_option, performance_rating, termination_clause, insurance_requirements, compliance_status, notes, last_review, is_active)
VALUES
('MC003', 'CDS3003', 'TechSecure Inc', 'Security Systems', '2024-03-01', '2027-02-28', 220000, 'Biannual', 'Catherine Lee', '5552223344', 'c.lee@techsecure.com', 'Camera monitoring and alarm response', 1, 4.9, 'Material breach', 'Liability $2M', 'Compliant', '', '2024-04-05', 1);

-- Teacher Licensure History
CREATE TABLE teacher_licensure_history
(
    licensure_id TEXT NOT NULL PRIMARY KEY,
    teacher_id TEXT,
    school_cds TEXT,
    license_number TEXT,
    license_type TEXT,
    issuing_state TEXT,
    issue_date DATE,
    expiration_date DATE,
    renewal_status TEXT,
    continuing_ed_credits INTEGER,
    last_renewal_date DATE,
    disciplinary_actions INTEGER,
    notes TEXT,
    is_active INTEGER,
    last_updated DATE,
    certifying_body TEXT,
    license_status TEXT,
    verification_date DATE,
    verification_user TEXT,
    remarks TEXT
);

INSERT INTO teacher_licensure_history
(licensure_id, teacher_id, school_cds, license_number, license_type, issuing_state, issue_date, expiration_date, renewal_status, continuing_ed_credits, last_renewal_date, disciplinary_actions, notes, is_active, last_updated, certifying_body, license_status, verification_date, verification_user, remarks)
VALUES
('LH001', 'TCH001', 'CDS1001', 'CA123456', 'Standard', 'CA', '2018-08-01', '2023-07-31', 'Renewed', 45, '2023-06-15', 0, '', 1, '2023-07-01', 'California Dept Ed', 'Active', '2023-07-02', 'admin1', '');

INSERT INTO teacher_licensure_history
(licensure_id, teacher_id, school_cds, license_number, license_type, issuing_state, issue_date, expiration_date, renewal_status, continuing_ed_credits, last_renewal_date, disciplinary_actions, notes, is_active, last_updated, certifying_body, license_status, verification_date, verification_user, remarks)
VALUES
('LH002', 'TCH002', 'CDS2002', 'NY987654', 'Special Education', 'NY', '2015-09-15', '2022-09-14', 'Expired', 60, '2021-08-30', 1, 'Late submission of documents', 0, '2022-09-20', 'NY State Education', 'Inactive', '2022-09-21', 'admin2', 'Reapply next year');

INSERT INTO teacher_licensure_history
(licensure_id, teacher_id, school_cds, license_number, license_type, issuing_state, issue_date, expiration_date, renewal_status, continuing_ed_credits, last_renewal_date, disciplinary_actions, notes, is_active, last_updated, certifying_body, license_status, verification_date, verification_user, remarks)
VALUES
('LH003', 'TCH003', 'CDS3003', 'TX555777', 'Administrator', 'TX', '2020-01-10', '2025-01-09', 'Pending', 30, '2024-12-01', 0, '', 1, '2024-06-15', 'Texas Education Agency', 'Active', '2024-06-16', 'admin3', '');

-- Student Special Education Plans
CREATE TABLE student_special_education_plans
(
    plan_id TEXT NOT NULL PRIMARY KEY,
    student_id TEXT,
    school_cds TEXT,
    iep_start_date DATE,
    iep_end_date DATE,
    eligibility_category TEXT,
    primary_disability TEXT,
    goals_summary TEXT,
    services_provided TEXT,
    service_hours_per_week REAL,
    responsible_special_ed TEXT,
    annual_review_date DATE,
    next_review_date DATE,
    parent_consent INTEGER,
    plan_status TEXT,
    notes TEXT,
    last_updated DATE,
    case_manager TEXT,
    funding_source TEXT,
    is_active INTEGER
);

INSERT INTO student_special_education_plans
(plan_id, student_id, school_cds, iep_start_date, iep_end_date, eligibility_category, primary_disability, goals_summary, services_provided, service_hours_per_week, responsible_special_ed, annual_review_date, next_review_date, parent_consent, plan_status, notes, last_updated, case_manager, funding_source, is_active)
VALUES
('IEP001', 'STU11111', 'CDS1001', '2023-09-01', '2024-08-31', 'Category A', 'Autism', 'Improve communication skills', 'Speech Therapy; OT', 5.0, 'Ms. Kara', '2024-05-15', '2024-09-01', 1, 'Active', '', '2024-03-20', 'John Doe', 'State Funding', 1);

INSERT INTO student_special_education_plans
(plan_id, student_id, school_cds, iep_start_date, iep_end_date, eligibility_category, primary_disability, goals_summary, services_provided, service_hours_per_week, responsible_special_ed, annual_review_date, next_review_date, parent_consent, plan_status, notes, last_updated, case_manager, funding_source, is_active)
VALUES
('IEP002', 'STU22222', 'CDS2002', '2022-07-15', '2023-07-14', 'Category B', 'Specific Learning Disability', 'Enhance reading proficiency', 'Reading Intervention; Assistive Tech', 3.5, 'Mr. Lee', '2023-04-10', '2023-07-15', 1, 'Closed', 'Goals met', '2023-04-12', 'Emily Clark', 'District Grant', 0);

INSERT INTO student_special_education_plans
(plan_id, student_id, school_cds, iep_start_date, iep_end_date, eligibility_category, primary_disability, goals_summary, services_provided, service_hours_per_week, responsible_special_ed, annual_review_date, next_review_date, parent_consent, plan_status, notes, last_updated, case_manager, funding_source, is_active)
VALUES
('IEP003', 'STU33333', 'CDS3003', '2024-01-20', '2025-01-19', 'Category C', 'Hearing Impairment', 'Develop auditory processing', 'Audiology Services; FM System', 2.0, 'Ms. Patel', '2024-12-01', '2025-01-20', 1, 'Active', '', '2024-06-05', 'Richard Kim', 'Federal Grant', 1);