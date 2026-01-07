-- Campus Innovation Hub table
CREATE TABLE campus_innovation_hub
(
    hub_id               TEXT PRIMARY KEY,
    hub_name             TEXT,
    building             TEXT,
    floor                TEXT,
    capacity             INTEGER,
    open_date            TEXT,
    close_date           TEXT,
    focus_area           TEXT,
    director_name        TEXT,
    contact_email        TEXT,
    phone                TEXT,
    website              TEXT,
    funding_source       TEXT,
    annual_budget        REAL,
    number_of_startups  INTEGER,
    total_funding_received REAL,
    mentorship_program   TEXT,
    partnership_count    INTEGER,
    awards_received      TEXT,
    status               TEXT,
    created_at           TEXT,
    updated_at           TEXT
);
INSERT INTO campus_innovation_hub (hub_id, hub_name, building, floor, capacity, open_date, close_date, focus_area, director_name, contact_email, phone, website, funding_source, annual_budget, number_of_startups, total_funding_received, mentorship_program, partnership_count, awards_received, status, created_at, updated_at) VALUES
('HUB001', 'TechLaunch Center', 'Science Hall', '2', 120, '2021-09-01', NULL, 'AI and Robotics', 'Alice Johnson', 'alice.johnson@example.edu', '555-1234', 'http://techlaunch.university.edu', 'University Endowment', 500000, 15, 1200000, 'Yes', 8, 'Best Innovation 2022', 'Active', '2021-08-15', '2023-03-01');
INSERT INTO campus_innovation_hub (hub_id, hub_name, building, floor, capacity, open_date, close_date, focus_area, director_name, contact_email, phone, website, funding_source, annual_budget, number_of_startups, total_funding_received, mentorship_program, partnership_count, awards_received, status, created_at, updated_at) VALUES
('HUB002', 'GreenTech Hub', 'Eco Building', '1', 80, '2020-01-15', NULL, 'Sustainable Energy', 'Bob Smith', 'bob.smith@example.edu', '555-5678', 'http://greentech.university.edu', 'State Grant', 300000, 10, 750000, 'Yes', 5, 'Green Campus Award', 'Active', '2020-01-01', '2023-02-20');
INSERT INTO campus_innovation_hub (hub_id, hub_name, building, floor, capacity, open_date, close_date, focus_area, director_name, contact_email, phone, website, funding_source, annual_budget, number_of_startups, total_funding_received, mentorship_program, partnership_count, awards_received, status, created_at, updated_at) VALUES
('HUB003', 'Health Innovation Lab', 'Medical Center', '3', 60, '2019-05-10', NULL, 'Digital Health', 'Carol Lee', 'carol.lee@example.edu', '555-9012', 'http://healthlab.university.edu', 'Pharma Partnership', 400000, 12, 900000, 'No', 6, 'HealthTech Pioneer', 'Active', '2019-04-20', '2023-01-15');

-- Alumni Volunteer Opportunity table
CREATE TABLE alumni_volunteer_opportunity
(
    opportunity_id          TEXT PRIMARY KEY,
    title                   TEXT,
    description             TEXT,
    start_date              TEXT,
    end_date                TEXT,
    location                TEXT,
    coordinator_name        TEXT,
    coordinator_email       TEXT,
    max_volunteers          INTEGER,
    current_signup          INTEGER,
    required_skills         TEXT,
    eligibility_criteria    TEXT,
    training_required       TEXT,
    training_date           TEXT,
    benefits                TEXT,
    status                  TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    sponsor_name            TEXT,
    sponsor_contact         TEXT,
    grant_amount            REAL
);
INSERT INTO alumni_volunteer_opportunity (opportunity_id, title, description, start_date, end_date, location, coordinator_name, coordinator_email, max_volunteers, current_signup, required_skills, eligibility_criteria, training_required, training_date, benefits, status, created_at, updated_at, sponsor_name, sponsor_contact, grant_amount) VALUES
('VOL001', 'Campus Clean‑Up Day', 'Alumni help clean main campus areas', '2023-04-01', '2023-04-01', 'University Grounds', 'Dana White', 'dana.white@example.edu', 100, 45, 'Teamwork,Physical Stamina', 'Alumni members in good standing', 'Yes', '2023-03-25', 'Free T‑shirt, Refreshments', 'Open', '2023-02-10', '2023-02-20', 'Green Campus Initiative', '555-3210', 5000);
INSERT INTO alumni_volunteer_opportunity (opportunity_id, title, description, start_date, end_date, location, coordinator_name, coordinator_email, max_volunteers, current_signup, required_skills, eligibility_criteria, training_required, training_date, benefits, status, created_at, updated_at, sponsor_name, sponsor_contact, grant_amount) VALUES
('VOL002', 'Mentorship Workshop', 'Career mentoring for current students', '2023-05-15', '2023-05-15', 'Student Center', 'Evan Patel', 'evan.patel@example.edu', 30, 12, 'Public Speaking, Coaching', 'Alumni with 5+ years experience', 'No', NULL, 'Networking Opportunities', 'Open', '2023-04-01', '2023-04-10', 'Career Services', '555-6543', 3000);
INSERT INTO alumni_volunteer_opportunity (opportunity_id, title, description, start_date, end_date, location, coordinator_name, coordinator_email, max_volunteers, current_signup, required_skills, eligibility_criteria, training_required, training_date, benefits, status, created_at, updated_at, sponsor_name, sponsor_contact, grant_amount) VALUES
('VOL003', 'Alumni fundraiser', 'Organize donor outreach event', '2023-09-10', '2023-09-10', 'Gymnasium', 'Fiona Cheng', 'fiona.cheng@example.edu', 20, 5, 'Event Planning, Fundraising', 'Alumni donors', 'Yes', '2023-08-20', 'Recognition on donor wall', 'Planned', '2023-06-01', '2023-06-15', 'Alumni Association', '555-9876', 10000);

-- Research Data Pipeline table
CREATE TABLE research_data_pipeline
(
    pipeline_id            TEXT PRIMARY KEY,
    pipeline_name          TEXT,
    source_system          TEXT,
    destination_system     TEXT,
    data_type              TEXT,
    frequency              TEXT,
    last_run_timestamp     TEXT,
    next_run_timestamp     TEXT,
    status                 TEXT,
    owner_name             TEXT,
    owner_email            TEXT,
    processing_steps       TEXT,
    error_handling_policy  TEXT,
    data_volume_gb         REAL,
    retention_period_days  INTEGER,
    compliance_standard   TEXT,
    encryption_enabled     TEXT,
    version                TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    notes                  TEXT
);
INSERT INTO research_data_pipeline (pipeline_id, pipeline_name, source_system, destination_system, data_type, frequency, last_run_timestamp, next_run_timestamp, status, owner_name, owner_email, processing_steps, error_handling_policy, data_volume_gb, retention_period_days, compliance_standard, encryption_enabled, version, created_at, updated_at, notes) VALUES
('PIPE001', 'Genomics Sequencing Transfer', 'SeqLab', 'DataWarehouse', 'Genomic Reads', 'Daily', '2023-03-31 02:00', '2023-04-01 02:00', 'Running', 'Dr. Helen Kim', 'helen.kim@example.edu', 'Extract, Transform, Load', 'Retry 3 times then alert', 250.5, 365, 'HIPAA', 'Yes', 'v1.2', '2022-11-01', '2023-03-01', 'No issues reported');
INSERT INTO research_data_pipeline (pipeline_id, pipeline_name, source_system, destination_system, data_type, frequency, last_run_timestamp, next_run_timestamp, status, owner_name, owner_email, processing_steps, error_handling_policy, data_volume_gb, retention_period_days, compliance_standard, encryption_enabled, version, created_at, updated_at, notes) VALUES
('PIPE002', 'Climate Sensor Stream', 'IoT_Sensors', 'AnalyticsDB', 'Temperature/Humidity', 'Hourly', '2023-03-31 23:00', '2023-04-01 00:00', 'Running', 'Mike Rivera', 'mike.rivera@example.edu', 'Ingest, Clean, Aggregate', 'Skip bad records, log', 120.0, 180, 'ISO27001', 'Yes', 'v3.0', '2021-06-15', '2023-02-20', 'Added new sensor nodes');
INSERT INTO research_data_pipeline (pipeline_id, pipeline_name, source_system, destination_system, data_type, frequency, last_run_timestamp, next_run_timestamp, status, owner_name, owner_email, processing_steps, error_handling_policy, data_volume_gb, retention_period_days, compliance_standard, encryption_enabled, version, created_at, updated_at, notes) VALUES
('PIPE003', 'Survey Results ETL', 'Qualtrics', 'ResearchDB', 'Survey Responses', 'Weekly', '2023-03-28 04:00', '2023-04-04 04:00', 'Paused', 'Laura Chen', 'laura.chen@example.edu', 'Export, De‑identify, Load', 'Alert on missing fields', 45.2, 730, 'GDPR', 'No', 'v2.5', '2020-01-10', '2023-01-12', 'Pending QA review');

-- Facility Waste Management table
CREATE TABLE facility_waste_management
(
    record_id               TEXT PRIMARY KEY,
    facility_id             TEXT,
    waste_type              TEXT,
    waste_category          TEXT,
    collection_date         TEXT,
    quantity_kg             REAL,
    disposal_method         TEXT,
    vendor_name             TEXT,
    vendor_contact          TEXT,
    cost_usd                REAL,
    recycle_percentage      REAL,
    hazardous_flag          TEXT,
    compliance_status       TEXT,
    inspected_by            TEXT,
    inspection_date         TEXT,
    notes                   TEXT,
    status                  TEXT,
    created_at              TEXT,
    updated_at              TEXT,
    audit_id                TEXT,
    regulatory_body         TEXT
);
INSERT INTO facility_waste_management (record_id, facility_id, waste_type, waste_category, collection_date, quantity_kg, disposal_method, vendor_name, vendor_contact, cost_usd, recycle_percentage, hazardous_flag, compliance_status, inspected_by, inspection_date, notes, status, created_at, updated_at, audit_id, regulatory_body) VALUES
('WM001', 'FAC001', 'Paper', 'Recyclable', '2023-03-15', 320.5, 'Recycling Center', 'EcoRecycle Inc.', '555-1111', 120.00, 85.0, 'No', 'Compliant', 'John Doe', '2023-03-20', 'All bags sealed', 'Closed', '2023-03-01', '2023-03-21', 'AUD1001', 'State EPA');
INSERT INTO facility_waste_management (record_id, facility_id, waste_type, waste_category, collection_date, quantity_kg, disposal_method, vendor_name, vendor_contact, cost_usd, recycle_percentage, hazardous_flag, compliance_status, inspected_by, inspection_date, notes, status, created_at, updated_at, audit_id, regulatory_body) VALUES
('WM002', 'FAC002', 'Electronic', 'Hazardous', '2023-03-10', 45.0, 'Special Disposal', 'SafeTech Disposal', '555-2222', 800.00, 0.0, 'Yes', 'Pending', 'Emily Clark', '2023-03-12', 'Data wipes completed', 'Open', '2023-02-28', '2023-03-13', 'AUD1002', 'Federal OSHA');
INSERT INTO facility_waste_management (record_id, facility_id, waste_type, waste_category, collection_date, quantity_kg, disposal_method, vendor_name, vendor_contact, cost_usd, recycle_percentage, hazardous_flag, compliance_status, inspected_by, inspection_date, notes, status, created_at, updated_at, audit_id, regulatory_body) VALUES
('WM003', 'FAC003', 'Food Waste', 'Organic', '2023-03-18', 210.0, 'Compost Facility', 'GreenCompost Ltd.', '555-3333', 150.00, 100.0, 'No', 'Compliant', 'Sam Patel', '2023-03-22', 'Compost accepted', 'Closed', '2023-03-02', '2023-03-23', 'AUD1003', 'Local Health Dept');

-- Student Entrepreneur Fund table
CREATE TABLE student_entrepreneur_fund
(
    fund_id                TEXT PRIMARY KEY,
    fund_name              TEXT,
    academic_year          TEXT,
    total_amount_usd       REAL,
    allocated_amount_usd   REAL,
    remaining_amount_usd   REAL,
    application_deadline   TEXT,
    selection_committee    TEXT,
    number_of_awards       INTEGER,
    average_award_usd      REAL,
    eligibility_criteria   TEXT,
    required_documents     TEXT,
    application_status     TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    fund_manager_name      TEXT,
    fund_manager_email     TEXT,
    reporting_frequency    TEXT,
    audit_required         TEXT,
    notes                  TEXT
);
INSERT INTO student_entrepreneur_fund (fund_id, fund_name, academic_year, total_amount_usd, allocated_amount_usd, remaining_amount_usd, application_deadline, selection_committee, number_of_awards, average_award_usd, eligibility_criteria, required_documents, application_status, created_at, updated_at, fund_manager_name, fund_manager_email, reporting_frequency, audit_required, notes) VALUES
('FUND001', 'InnovateU Seed Fund', '2023-2024', 200000, 75000, 125000, '2023-04-15', 'Faculty Board', 5, 15000, 'Undergraduate full‑time', 'Business plan, Pitch deck', 'Open', '2023-01-10', '2023-03-01', 'Laura Gomez', 'laura.gomez@example.edu', 'Quarterly', 'Yes', 'First round of applications received');
INSERT INTO student_entrepreneur_fund (fund_id, fund_name, academic_year, total_amount_usd, allocated_amount_usd, remaining_amount_usd, application_deadline, selection_committee, number_of_awards, average_award_usd, eligibility_criteria, required_documents, application_status, created_at, updated_at, fund_manager_name, fund_manager_email, reporting_frequen cy, audit_required, notes) VALUES
('FUND002', 'Social Impact Grant', '2023-2024', 150000, 50000, 100000, '2023-05-01', 'Community Advisory Panel', 3, 16666, 'Students with social venture', 'Executive summary, Impact metrics', 'Open', '2023-02-01', '2023-03-10', 'Mark Liu', 'mark.liu@example.edu', 'Bi‑annual', 'No', 'Focus on sustainability projects');
INSERT INTO student_entrepreneur_fund (fund_id, fund_name, academic_year, total_amount_usd, allocated_amount_usd, remaining_amount_usd, application_deadline, selection_committee, number_of_awards, average_award_usd, eligibility_criteria, required_documents, application_status, created_at, updated_at, fund_manager_name, fund_manager_email, reporting_frequency, audit_required, notes) VALUES
('FUND003', 'Tech Acceleration Fund', '2023-2024', 250000, 120000, 130000, '2023-06-10', 'Tech Innovation Council', 4, 30000, 'Graduate students in tech fields', 'Prototype demo, Financial plan', 'Open', '2023-03-05', '2023-04-01', 'Nina Patel', 'nina.patel@example.edu', 'Monthly', 'Yes', 'Additional funding pending approval');

-- Community Sustainability Forum table
CREATE TABLE community_sustainability_forum
(
    forum_id               TEXT PRIMARY KEY,
    forum_name             TEXT,
    theme                  TEXT,
    start_date             TEXT,
    end_date               TEXT,
    location               TEXT,
    organizer_name         TEXT,
    organizer_email        TEXT,
    participant_count      INTEGER,
    speaker_count          INTEGER,
    key_topics             TEXT,
    sponsorship_level      TEXT,
    budget_usd             REAL,
    outcome_summary        TEXT,
    status                 TEXT,
    created_at             TEXT,
    updated_at             TEXT,
    feedback_score         REAL,
    media_coverage         TEXT,
    website_url            TEXT,
    registration_fee       REAL
);
INSERT INTO community_sustainability_forum (forum_id, forum_name, theme, start_date, end_date, location, organizer_name, organizer_email, participant_count, speaker_count, key_topics, sponsorship_level, budget_usd, outcome_summary, status, created_at, updated_at, feedback_score, media_coverage, website_url, registration_fee) VALUES
('FORUM001', 'Green Campus Summit', 'Renewable Energy', '2023-09-12', '2023-09-14', 'Main Auditorium', 'Olivia Reed', 'olivia.reed@example.edu', 250, 15, 'Solar, Wind, Storage', 'Gold', 75000, 'Action plan approved', 'Planned', '2023-06-01', '2023-06-15', 4.5, 'Local newspaper, Radio', 'http://greensummit.university.edu', 50);
INSERT INTO community_sustainability_forum (forum_id, forum_name, theme, start_date, end_date, location, organizer_name, organizer_email, participant_count, speaker_count, key_topics, sponsorship_level, budget_usd, outcome_summary, status, created_at, updated_at, feedback_score, media_coverage, website_url, registration_fee) VALUES
('FORUM002', 'Water Conservation Forum', 'Efficient Usage', '2023-10-05', '2023-10-06', 'Science Center', 'Peter Liu', 'peter.liu@example.edu', 180, 10, 'Rainwater Harvesting, Leak Detection', 'Silver', 42000, 'Policy recommendations drafted', 'Planned', '2023-07-10', '2023-07-20', 4.2, 'Campus TV', 'http://waterforum.university.edu', 30);
INSERT INTO community_sustainability_forum (forum_id, forum_name, theme, start_date, end_date, location, organizer_name, organizer_email, participant_count, speaker_count, key_topics, sponsorship_level, budget_usd, outcome_summary, status, created_at, updated_at, feedback_score, media_coverage, website_url, registration_fee) VALUES
('FORUM003', 'Zero Waste Expo', 'Circular Economy', '2023-11-20', '2023-11-21', 'Student Union', 'Mia Torres', 'mia.torres@example.edu', 300, 20, 'Composting, Upcycling', 'Bronze', 60000, 'Several pilot projects launched', 'Planned', '2023-08-15', '2023-08-25', 4.7, 'Social media campaign', 'http://zerowasteexpo.university.edu', 40);

-- Tech Incubator Program table
CREATE TABLE tech_incubator_program
(
    program_id               TEXT PRIMARY KEY,
    program_name             TEXT,
    start_year               TEXT,
    end_year                 TEXT,
    focus_industry           TEXT,
    mentorship_hours         INTEGER,
    cohort_size              INTEGER,
    total_funding_usd        REAL,
    alumni_success_rate      REAL,
    location                 TEXT,
    program_manager          TEXT,
    manager_email            TEXT,
    application_deadline     TEXT,
    eligibility_criteria     TEXT,
    selection_process        TEXT,
    program_status           TEXT,
    created_at               TEXT,
    updated_at               TEXT,
    partner_organizations    TEXT,
    program_description      TEXT,
    graduation_rate          REAL
);
INSERT INTO tech_incubator_program (program_id, program_name, start_year, end_year, focus_industry, mentorship_hours, cohort_size, total_funding_usd, alumni_success_rate, location, program_manager, manager_email, application_deadline, eligibility_criteria, selection_process, program_status, created_at, updated_at, partner_organizations, program_description, graduation_rate) VALUES
('INC001', 'AI Startup Incubator', '2021', '2024', 'Artificial Intelligence', 120, 25, 2000000, 0.8, 'Innovation Hub', 'Samuel Lee', 'samuel.lee@example.edu', '2023-04-30', 'Graduate students in CS', 'Panel Review', 'Active', '2021-01-15', '2023-03-01', 'TechCorp, VentureLabs', 'Accelerate AI ventures', 0.85);
INSERT INTO tech_incubator_program (program_id, program_name, start_year, end_year, focus_industry, mentorship_hours, cohort_size, total_funding_usd, alumni_success_rate, location, program_manager, manager_email, application_deadline, eligibility_criteria, selection_process, program_status, created_at, updated_at, partner_organizations, program_description, graduation_rate) VALUES
('INC002', 'CleanTech Incubator', '2020', '2023', 'Clean Technology', 100, 20, 1500000, 0.75, 'Eco Center', 'Rachel Kim', 'rachel.kim@example.edu', '2023-05-15', 'Undergraduate seniors', 'Scorecard', 'Active', '2020-02-01', '2023-02-10', 'GreenEnergy Inc., EnviroFund', 'Support clean tech startups', 0.78);
INSERT INTO tech_incubator_program (program_id, program_name, start_year, end_year, focus_industry, mentorship_hours, cohort_size, total_funding_usd, alumni_success_rate, location, program_manager, manager_email, application_deadline, eligibility_criteria, selection_process, program_status, created_at, updated_at, partner_organizations, program_description, graduation_rate) VALUES
('INC003', 'HealthTech Incubator', '2022', '2025', 'Health Technology', 130, 15, 1800000, 0.82, 'Medical Innovation Lab', 'David Patel', 'david.patel@example.edu', '2023-06-20', 'Medical students & bio engineers', 'Interview + Pitch', 'Planned', '2022-03-10', '2023-04-05', 'HealthCorp, BioVentures', 'Launch health tech solutions', 0.80);

-- Environmental Resilience Plan table
CREATE TABLE environmental_resilience_plan
(
    plan_id                    TEXT PRIMARY KEY,
    plan_name                  TEXT,
    region                     TEXT,
    start_year                 TEXT,
    end_year                   TEXT,
    climate_risk_category      TEXT,
    primary_objective          TEXT,
    budget_usd                 REAL,
    funding_source             TEXT,
    lead_agency                TEXT,
    stakeholder_count          INTEGER,
    milestones                 TEXT,
    progress_percentage        REAL,
    risk_assessment_score     REAL,
    mitigation_measures        TEXT,
    monitoring_frequency       TEXT,
    report_due_date            TEXT,
    status                     TEXT,
    created_at                 TEXT,
    updated_at                 TEXT,
    notes                      TEXT,
    compliance_status          TEXT
);
INSERT INTO environmental_resilience_plan (plan_id, plan_name, region, start_year, end_year, climate_risk_category, primary_objective, budget_usd, funding_source, lead_agency, stakeholder_count, milestones, progress_percentage, risk_assessment_score, mitigation_measures, monitoring_frequency, report_due_date, status, created_at, updated_at, notes, compliance_status) VALUES
('ERP001', 'Coastal Flood Adaptation', 'North Shore', '2021', '2026', 'High', 'Reduce flood risk', 8000000, 'Federal Grant', 'Department of Public Works', 45, 'Phase1,Phase2,Phase3', 45.0, 78.5, 'Sea walls,Elevated infrastructure', 'Quarterly', '2023-12-31', 'In Progress', '2021-02-10', '2023-03-01', 'Community outreach ongoing', 'Compliant');
INSERT INTO environmental_resilience_plan (plan_id, plan_name, region, start_year, end_year, climate_risk_category, primary_objective, budget_usd, funding_source, lead_agency, stakeholder_count, milestones, progress_percentage, risk_assessment_score, mitigation_measures, monitoring_frequency, report_due_date, status, created_at, updated_at, notes, compliance_status) VALUES
('ERP002', 'Urban Heat Island Mitigation', 'Metro City', '2022', '2027', 'Medium', 'Lower ambient temperatures', 5000000, 'City Bond', 'Urban Planning Dept', 30, 'Tree planting,Cool roofs', 30.0, 65.0, 'Increase canopy, Reflective surfaces', 'Bi‑annual', '2024-06-30', 'Planned', '2022-05-05', '2022-06-01', 'Pilot in downtown area', 'Pending');
INSERT INTO environmental_resilience_plan (plan_id, plan_name, region, start_year, end_year, climate_risk_category, primary_objective, budget_usd, funding_source, lead_agency, stakeholder_count, milestones, progress_percentage, risk_assessment_score, mitigation_measures, monitoring_frequency, report_due_date, status, created_at, updated_at, notes, compliance_status) VALUES
('ERP003', 'Wildfire Risk Reduction', 'Mountain Region', '2020', '2025', 'High', 'Protect communities from wildfires', 6500000, 'State Emergency Fund', 'Fire Management Agency', 25, 'Fuel break creation,Community education', 55.0, 82.0, 'Controlled burns,Early warning systems', 'Monthly', '2023-09-30', 'In Progress', '2020-03-15', '2023-02-20', 'Collaboration with NGOs', 'Compliant');

-- Grant Application Assessment table
CREATE TABLE grant_application_assessment
(
    assessment_id                TEXT PRIMARY KEY,
    application_id              TEXT,
    reviewer_id                 TEXT,
    review_date                 TEXT,
    overall_score               REAL,
    feasibility_score           REAL,
    impact_score                REAL,
    budget_score                REAL,
    compliance_score            REAL,
    recommendation              TEXT,
    comments                    TEXT,
    status                      TEXT,
    created_at                  TEXT,
    updated_at                  TEXT,
    reviewer_department         TEXT,
    reviewer_email              TEXT,
    assessment_round            TEXT,
    conflict_of_interest_flag   TEXT,
    revised_budget_usd          REAL,
    supplemental_documents       TEXT,
    next_steps                  TEXT
);
INSERT INTO grant_application_assessment (assessment_id, application_id, reviewer_id, review_date, overall_score, feasibility_score, impact_score, budget_score, compliance_score, recommendation, comments, status, created_at, updated_at, reviewer_department, reviewer_email, assessment_round, conflict_of_interest_flag, revised_budget_usd, supplemental_documents, next_steps) VALUES
('ASMT001', 'APP1001', 'REV001', '2023-03-10', 4.2, 4.0, 4.5, 3.8, 4.1, 'Fund', 'Strong methodology', 'Completed', '2023-02-15', '2023-03-12', 'Research Office', 'rev1@example.edu', 'Round1', 'No', 120000, 'Appendix A', 'Prepare contract');
INSERT INTO grant_application_assessment (assessment_id, application_id, reviewer_id, review_date, overall_score, feasibility_score, impact_score, budget_score, compliance_score, recommendation, comments, status, created_at, updated_at, reviewer_department, reviewer_email, assessment_round, conflict_of_interest_flag, revised_budget_usd, supplemental_documents, next_steps) VALUES
('ASMT002', 'APP1002', 'REV002', '2023-03-12', 3.8, 3.5, 4.0, 3.7, 3.9, 'Conditional', 'Needs clearer timeline', 'Completed', '2023-02-20', '2023-03-14', 'Finance Dept', 'rev2@example.edu', 'Round1', 'No', 95000, 'Budget Worksheet', 'Submit revised plan');
INSERT INTO grant_application_assessment (assessment_id, application_id, reviewer_id, review_date, overall_score, feasibility_score, impact_score, budget_score, compliance_score, recommendation, comments, status, created_at, updated_at, reviewer_department, reviewer_email, assessment_round, conflict_of_interest_flag, revised_budget_usd, supplemental_documents, next_steps) VALUES
('ASMT003', 'APP1003', 'REV003', '2023-03-15', 4.5, 4.6, 4.4, 4.2, 4.7, 'Fund', 'Excellent alignment with strategic goals', 'Completed', '2023-02-25', '2023-03-16', 'Strategic Initiatives', 'rev3@example.edu', 'Round1', 'No', 200000, 'Project Plan', 'Proceed to award');

-- Digital Learning Roadmap table
CREATE TABLE digital_learning_roadmap
(
    roadmap_id                 TEXT PRIMARY KEY,
    roadmap_name               TEXT,
    academic_year              TEXT,
    version                    TEXT,
    development_phase          TEXT,
    target_audience           TEXT,
    total_courses              INTEGER,
    estimated_completion_date  TEXT,
    budget_usd                 REAL,
    funding_source             TEXT,
    project_lead               TEXT,
    lead_email                 TEXT,
    stakeholder_group          TEXT,
    key_milestones            TEXT,
    progress_percentage        REAL,
    risk_level                 TEXT,
    approval_status            TEXT,
    created_at                 TEXT,
    updated_at                 TEXT,
    notes                      TEXT,
    technology_stack          TEXT,
    accessibility_compliance   TEXT
);
INSERT INTO digital_learning_roadmap (roadmap_id, roadmap_name, academic_year, version, development_phase, target_audience, total_courses, estimated_completion_date, budget_usd, funding_source, project_lead, lead_email, stakeholder_group, key_milestones, progress_percentage, risk_level, approval_status, created_at, updated_at, notes, technology_stack, accessibility_compliance) VALUES
('DLR001', 'Hybrid Learning Expansion', '2023-2024', 'v1.0', 'Planning', 'Undergraduate Students', 120, '2024-09-30', 1500000, 'University Budget', 'Karen Liu', 'karen.liu@example.edu', 'Faculty Senate', 'Curriculum design,Platform selection,Pilot launch', 25.0, 'Medium', 'Pending', '2023-01-10', '2023-04-01', 'Initial stakeholder meetings completed', 'Moodle,Zoom,Canvas', 'WCAG 2.1 AA');
INSERT INTO digital_learning_roadmap (roadmap_id, roadmap_name, academic_year, version, development_phase, target_audience, total_courses, estimated_completion_date, budget_usd, funding_source, project_lead, lead_email, stakeholder_group, key_milestones, progress_percentage, risk_level, approval_status, created_at, updated_at, notes, technology_stack, accessibility_compliance) VALUES
('DLR002', 'Micro‑Credentials Initiative', '2023-2024', 'v0.9', 'Design', 'Graduate Professionals', 45, '2024-06-15', 800000, 'Grant Funding', 'Samuel Ortiz', 'samuel.ortiz@example.edu', 'Career Services', 'Competency mapping,Partner onboarding,Marketing', 15.0, 'Low', 'Pending', '2023-02-05', '2023-04-10', 'Partner universities identified', 'Credly,API integrations', 'WCAG 2.0 A');
INSERT INTO digital_learning_roadmap (roadmap_id, roadmap_name, academic_year, version, development_phase, target_audience, total_courses, estimated_completion_date, budget_usd, funding_source, project_lead, lead_email, stakeholder_group, key_milestones, progress_percentage, risk_level, approval_status, created_at, updated_at, notes, technology_stack, accessibility_compliance) VALUES
('DLR003', 'VR Immersive Labs', '2023-2024', 'v0.5', 'Research', 'STEM Students', 30, '2025-02-28', 2000000, 'Corporate Sponsorship', 'Lena Gomez', 'lena.gomez@example.edu', 'Research Office', 'Hardware procurement,Content creation,Testing', 5.0, 'High', 'Pending', '2023-03-01', '2023-04-15', 'Vendor shortlist in progress', 'Unity,HTC Vive', 'WCAG 2.1 AA');