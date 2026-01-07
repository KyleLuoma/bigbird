-- Information about each campus building and its characteristics
CREATE TABLE campus_building_info
(
    building_id            TEXT PRIMARY KEY,
    building_name          TEXT,
    address                TEXT,
    construction_year      INTEGER,
    floors                 INTEGER,
    total_area_sqft        INTEGER,
    primary_use            TEXT,
    sustainability_cert    TEXT,
    seismic_rating         TEXT,
    wifi_coverage          TEXT,
    hvac_type              TEXT,
    fire_safety_grade      TEXT,
    elevator_count         INTEGER,
    parking_spaces         INTEGER,
    energy_star_rating     TEXT,
    architect              TEXT,
    renovation_year        INTEGER,
    occupancy_limit        INTEGER,
    security_level         TEXT,
    green_roof_area        INTEGER
);

INSERT INTO campus_building_info (building_id, building_name, address, construction_year, floors, total_area_sqft, primary_use, sustainability_cert, seismic_rating, wifi_coverage, hvac_type, fire_safety_grade, elevator_count, parking_spaces, energy_star_rating, architect, renovation_year, occupancy_limit, security_level, green_roof_area)
VALUES ('B001', 'Science Hall', '123 University Ave', 1990, 5, 200000, 'Academic', 'LEEDGold', 'A', 'Full', 'VAV', 'A', 4, 120, 'Yes', 'SmithDesign', 2015, 1500, 'High', 8000);

INSERT INTO campus_building_info (building_id, building_name, address, construction_year, floors, total_area_sqft, primary_use, sustainability_cert, seismic_rating, wifi_coverage, hvac_type, fire_safety_grade, elevator_count, parking_spaces, energy_star_rating, architect, renovation_year, occupancy_limit, security_level, green_roof_area)
VALUES ('B002', 'Student Union', '456 College Rd', 2005, 3, 150000, 'Recreation', 'LEEDSilver', 'B', 'Partial', 'ChilledWater', 'B', 2, 200, 'No', 'ArcSpace', 2020, 3000, 'Medium', 5000);

INSERT INTO campus_building_info (building_id, building_name, address, construction_year, floors, total_area_sqft, primary_use, sustainability_cert, seismic_rating, wifi_coverage, hvac_type, fire_safety_grade, elevator_count, parking_spaces, energy_star_rating, architect, renovation_year, occupancy_limit, security_level, green_roof_area)
VALUES ('B003', 'Administration Center', '789 Campus Dr', 1980, 4, 180000, 'Administrative', 'None', 'C', 'Full', 'Packaged', 'A', 3, 80, 'Yes', 'DesignCo', 2010, 1000, 'High', 2000);


-- Details of agencies that provide research funding
CREATE TABLE research_funding_agency
(
    agency_id               TEXT PRIMARY KEY,
    agency_name             TEXT,
    country                 TEXT,
    foundation_year         INTEGER,
    focus_area              TEXT,
    annual_budget_million   REAL,
    grant_type              TEXT,
    contact_email           TEXT,
    website                 TEXT,
    compliance_rating       TEXT,
    accreditation_status    TEXT,
    headquarters_city       TEXT,
    headquarters_state      TEXT,
    number_of_programs      INTEGER,
    average_grant_amount    REAL,
    funding_cycle           TEXT,
    is_federal              TEXT,
    is_private              TEXT,
    evaluation_method       TEXT,
    reporting_requirements  TEXT
);

INSERT INTO research_funding_agency (agency_id, agency_name, country, foundation_year, focus_area, annual_budget_million, grant_type, contact_email, website, compliance_rating, accreditation_status, headquarters_city, headquarters_state, number_of_programs, average_grant_amount, funding_cycle, is_federal, is_private, evaluation_method, reporting_requirements)
VALUES ('A001', 'National Science Fund', 'USA', 1958, 'STEM', 1200.5, 'Competitive', 'info@nsf.gov', 'http://nsf.gov', 'A', 'Accredited', 'Washington', 'DC', 25, 250000, 'Annual', 'Yes', 'No', 'PeerReview', 'AnnualReport');

INSERT INTO research_funding_agency (agency_id, agency_name, country, foundation_year, focus_area, annual_budget_million, grant_type, contact_email, website, compliance_rating, accreditation_status, headquarters_city, headquarters_state, number_of_programs, average_grant_amount, funding_cycle, is_federal, is_private, evaluation_method, reporting_requirements)
VALUES ('A002', 'Global Health Initiative', 'UK', 1992, 'Medical', 300.0, 'Project', 'contact@ghi.org', 'http://ghi.org', 'B', 'Accredited', 'London', 'England', 12, 500000, 'Biannual', 'No', 'Yes', 'Scorecard', 'QuarterlyReport');

INSERT INTO research_funding_agency (agency_id, agency_name, country, foundation_year, focus_area, annual_budget_million, grant_type, contact_email, website, compliance_rating, accreditation_status, headquarters_city, headquarters_state, number_of_programs, average_grant_amount, funding_cycle, is_federal, is_private, evaluation_method, reporting_requirements)
VALUES ('A003', 'EcoTech Ventures', 'Canada', 2005, 'Environmental', 80.75, 'Seed', 'support@ecotech.ca', 'http://ecotech.ca', 'A', 'Accredited', 'Toronto', 'Ontario', 8, 150000, 'Quarterly', 'No', 'Yes', 'PortfolioReview', 'SemiAnnualReport');


-- Groups within the alumni network
CREATE TABLE alumni_network_group
(
    group_id                TEXT PRIMARY KEY,
    group_name              TEXT,
    cohort_year             INTEGER,
    region                  TEXT,
    primary_focus           TEXT,
    member_count            INTEGER,
    creation_date           TEXT,
    leader_name             TEXT,
    contact_email           TEXT,
    meeting_frequency       TEXT,
    last_meeting_date       TEXT,
    next_meeting_date       TEXT,
    communication_channel   TEXT,
    budget_allocated        REAL,
    events_hosted           INTEGER,
    mentorship_program      TEXT,
    social_media_handle     TEXT,
    charter_document        TEXT,
    active_status           TEXT,
    notes                   TEXT
);

INSERT INTO alumni_network_group (group_id, group_name, cohort_year, region, primary_focus, member_count, creation_date, leader_name, contact_email, meeting_frequency, last_meeting_date, next_meeting_date, communication_channel, budget_allocated, events_hosted, mentorship_program, social_media_handle, charter_document, active_status, notes)
VALUES ('G001', 'Tech Innovators', 2010, 'West', 'Entrepreneurship', 85, '2012-05-01', 'Laura Chen', 'lchen@alumni.edu', 'Monthly', '2023-11-15', '2024-01-10', 'Slack', 12000.00, 7, 'Yes', '@TechInnovators', 'charter_g001.pdf', 'Active', 'Focus on startup mentorship');

INSERT INTO alumni_network_group (group_id, group_name, cohort_year, region, primary_focus, member_count, creation_date, leader_name, contact_email, meeting_frequency, last_meeting_date, next_meeting_date, communication_channel, budget_allocated, events_hosted, mentorship_program, social_media_handle, charter_document, active_status, notes)
VALUES ('G002', 'Global Health Alumni', 2005, 'East', 'Public Health', 60, '2008-03-12', 'David Patel', 'dpatel@alumni.edu', 'Quarterly', '2023-09-20', '2024-03-05', 'Email', 8000.00, 4, 'Yes', '@GlobalHealthAlumni', 'charter_g002.pdf', 'Active', 'Collaboration with NGOs');

INSERT INTO alumni_network_group (group_id, group_name, cohort_year, region, primary_focus, member_count, creation_date, leader_name, contact_email, meeting_frequency, last_meeting_date, next_meeting_date, communication_channel, budget_allocated, events_hosted, mentorship_program, social_media_handle, charter_document, active_status, notes)
VALUES ('G003', 'Arts & Culture Circle', 2015, 'Midwest', 'Arts', 40, '2016-09-20', 'Samantha Lee', 'slee@alumni.edu', 'Biannual', '2023-06-10', '2024-06-10', 'Facebook', 5000.00, 2, 'No', '@ArtsCultureCircle', 'charter_g003.pdf', 'Inactive', 'Currently on hold');


-- Energy sources supplying campus utilities
CREATE TABLE campus_energy_source
(
    source_id                TEXT PRIMARY KEY,
    source_type              TEXT,
    provider_name            TEXT,
    contract_start           TEXT,
    contract_end             TEXT,
    capacity_mw              REAL,
    renewable_percentage    REAL,
    cost_per_mwh             REAL,
    emissions_tco2_per_mwh   REAL,
    location                 TEXT,
    status                   TEXT,
    last_maintenance_date    TEXT,
    maintenance_frequency    TEXT,
    reliability_score        REAL,
    grid_connection_point    TEXT,
    subsidy_amount           REAL,
    carbon_credit_generated  REAL,
    average_output_mw        REAL,
    peak_output_mw           REAL,
    notes                    TEXT
);

INSERT INTO campus_energy_source (source_id, source_type, provider_name, contract_start, contract_end, capacity_mw, renewable_percentage, cost_per_mwh, emissions_tco2_per_mwh, location, status, last_maintenance_date, maintenance_frequency, reliability_score, grid_connection_point, subsidy_amount, carbon_credit_generated, average_output_mw, peak_output_mw, notes)
VALUES ('ES001', 'Solar', 'SunPower Inc', '2022-01-01', '2032-01-01', 15.0, 100.0, 45.5, 0.0, 'North Campus', 'Active', '2023-12-01', 'Annual', 98.5, 'NodeA', 200000.00, 5000.00, 14.2, 15.0, 'Panel maintenance scheduled quarterly');

INSERT INTO campus_energy_source (source_id, source_type, provider_name, contract_start, contract_end, capacity_mw, renewable_percentage, cost_per_mwh, emissions_tco2_per_mwh, location, status, last_maintenance_date, maintenance_frequency, reliability_score, grid_connection_point, subsidy_amount, carbon_credit_generated, average_output_mw, peak_output_mw, notes)
VALUES ('ES002', 'NaturalGas', 'EcoGas Corp', '2021-06-15', '2026-06-15', 25.0, 0.0, 60.0, 450.0, 'East Utilities Plant', 'Active', '2023-10-20', 'Biannual', 95.0, 'NodeB', 50000.00, 0.0, 22.5, 25.0, 'Emissions monitoring in place');

INSERT INTO campus_energy_source (source_id, source_type, provider_name, contract_start, contract_end, capacity_mw, renewable_percentage, cost_per_mwh, emissions_tco2_per_mwh, location, status, last_maintenance_date, maintenance_frequency, reliability_score, grid_connection_point, subsidy_amount, carbon_credit_generated, average_output_mw, peak_output_mw, notes)
VALUES ('ES003', 'Wind', 'WindWorks Ltd', '2020-03-01', '2030-03-01', 30.0, 100.0, 50.0, 0.0, 'South Ridge', 'Active', '2023-11-15', 'Annual', 97.0, 'NodeC', 150000.00, 8000.00, 28.0, 30.0, 'Turbine refurbishment scheduled 2025');


-- Metadata for digital collections in the library
CREATE TABLE library_digital_collection
(
    collection_id          TEXT PRIMARY KEY,
    title                  TEXT,
    creator                TEXT,
    publication_year       INTEGER,
    format                 TEXT,
    language               TEXT,
    rights_status          TEXT,
    access_level           TEXT,
    file_size_mb           REAL,
    checksum               TEXT,
    digital_identifier     TEXT,
    acquisition_date       TEXT,
    source                 TEXT,
    catalog_url            TEXT,
    subject_category       TEXT,
    keywords               TEXT,
    preservation_status    TEXT,
    last_accessed          TEXT,
    download_count         INTEGER,
    related_physical_item_id TEXT,
    notes                  TEXT
);

INSERT INTO library_digital_collection (collection_id, title, creator, publication_year, format, language, rights_status, access_level, file_size_mb, checksum, digital_identifier, acquisition_date, source, catalog_url, subject_category, keywords, preservation_status, last_accessed, download_count, related_physical_item_id, notes)
VALUES ('DC001', 'Quantum Mechanics Lecture Series', 'Dr. Emily Stone', 2021, 'Video', 'English', 'Open', 'Public', 1500.5, 'abc123def456', 'doi:10.1234/qm2021', '2022-01-20', 'University Archive', 'http://library.univ.edu/dc001', 'Physics', 'quantum,lecture,science', 'Preserved', '2023-12-10', 342, 'PH001', 'Used in undergraduate courses');

INSERT INTO library_digital_collection (collection_id, title, creator, publication_year, format, language, rights_status, access_level, file_size_mb, checksum, digital_identifier, acquisition_date, source, catalog_url, subject_category, keywords, preservation_status, last_accessed, download_count, related_physical_item_id, notes)
VALUES ('DC002', 'Renaissance Art Images', 'Various', 2019, 'ImageSet', 'Various', 'Restricted', 'Campus', 850.0, 'def789ghi012', 'doi:10.5678/ra2019', '2020-05-15', 'Donor Collection', 'http://library.univ.edu/dc002', 'Art History', 'renaissance,painting,sculpture', 'Preserved', '2023-11-05', 127, 'BK045', 'High resolution scans');

INSERT INTO library_digital_collection (collection_id, title, creator, publication_year, format, language, rights_status, access_level, file_size_mb, checksum, digital_identifier, acquisition_date, source, catalog_url, subject_category, keywords, preservation_status, last_accessed, download_count, related_physical_item_id, notes)
VALUES ('DC003', 'Computational Biology Dataset', 'Lab XYZ', 2022, 'CSV', 'English', 'Open', 'Public', 300.25, 'ghi345jkl678', 'doi:10.9012/cb2022', '2022-09-01', 'Research Grant', 'http://library.univ.edu/dc003', 'Biology', 'genomics,analysis,software', 'Preserved', '2023-12-01', 58, 'DS007', 'Cited in multiple publications');


-- Sustainability metrics tracked by campus initiatives
CREATE TABLE sustainability_metric
(
    metric_id               TEXT PRIMARY KEY,
    metric_name             TEXT,
    description             TEXT,
    unit                    TEXT,
    target_value            REAL,
    current_value           REAL,
    reporting_period        TEXT,
    responsible_department  TEXT,
    data_source             TEXT,
    last_updated            TEXT,
    trend                   TEXT,
    status                  TEXT,
    threshold_warning       REAL,
    threshold_critical      REAL,
    action_plan             TEXT,
    notes                   TEXT,
    calculation_method      TEXT,
    baseline_year           INTEGER,
    target_year             INTEGER,
    confidence_interval     TEXT
);

INSERT INTO sustainability_metric (metric_id, metric_name, description, unit, target_value, current_value, reporting_period, responsible_department, data_source, last_updated, trend, status, threshold_warning, threshold_critical, action_plan, notes, calculation_method, baseline_year, target_year, confidence_interval)
VALUES ('SM001', 'Total Energy Consumption', 'Overall campus energy use', 'MWh', 50000.0, 54320.5, 'Annual', 'Facilities', 'MeterReadings', '2023-12-01', 'Increasing', 'OffTarget', 48000.0, 46000.0, 'Implement retrofits', 'Focus on HVAC', 'Summation', 2020, 2025, '95%');

INSERT INTO sustainability_metric (metric_id, metric_name, description, unit, target_value, current_value, reporting_period, responsible_department, data_source, last_updated, trend, status, threshold_warning, threshold_critical, action_plan, notes, calculation_method, baseline_year, target_year, confidence_interval)
VALUES ('SM002', 'Water Use Reduction', 'Campus-wide water consumption decrease', 'Gallons', 2000000.0, 2150000.0, 'Annual', 'Operations', 'UtilityBills', '2023-12-01', 'Increasing', 'OffTarget', 1900000.0, 1800000.0, 'Install low-flow fixtures', 'Monitor leaks', 'Average', 2020, 2024, '90%');

INSERT INTO sustainability_metric (metric_id, metric_name, description, unit, target_value, current_value, reporting_period, responsible_department, data_source, last_updated, trend, status, threshold_warning, threshold_critical, action_plan, notes, calculation_method, baseline_year, target_year, confidence_interval)
VALUES ('SM003', 'Waste Diversion Rate', 'Percentage of waste diverted from landfill', 'Percent', 75.0, 68.5, 'Quarterly', 'Sustainability', 'WasteAudit', '2023-09-30', 'Improving', 'OnTrack', 70.0, 65.0, 'Expand composting', 'Student campaign ongoing', 'Ratio', 2021, 2025, '98%');


-- Detailed records of campus parking violations
CREATE TABLE campus_parking_violation_detail
(
    violation_id          TEXT PRIMARY KEY,
    plate_number          TEXT,
    violation_type        TEXT,
    violation_date        TEXT,
    location              TEXT,
    officer_id            TEXT,
    fine_amount           REAL,
    payment_status        TEXT,
    payment_due_date      TEXT,
    notes                 TEXT,
    image_url             TEXT,
    vehicle_make          TEXT,
    vehicle_model         TEXT,
    vehicle_year          INTEGER,
    state                 TEXT,
    county                TEXT,
    enforcement_area      TEXT,
    disposition           TEXT,
    appeal_status         TEXT,
    resolved_date         TEXT
);

INSERT INTO campus_parking_violation_detail (violation_id, plate_number, violation_type, violation_date, location, officer_id, fine_amount, payment_status, payment_due_date, notes, image_url, vehicle_make, vehicle_model, vehicle_year, state, county, enforcement_area, disposition, appeal_status, resolved_date)
VALUES ('V001', 'ABC1234', 'Expired Meter', '2023-11-05', 'Lot A', 'O100', 50.00, 'Unpaid', '2023-12-05', 'First offense', 'http://campus.edu/violations/v001.jpg', 'Toyota', 'Camry', 2018, 'CA', 'Los Angeles', 'North Campus', 'Pending', 'NotAppealed', NULL);

INSERT INTO campus_parking_violation_detail (violation_id, plate_number, violation_type, violation_date, location, officer_id, fine_amount, payment_status, payment_due_date, notes, image_url, vehicle_make, vehicle_model, vehicle_year, state, county, enforcement_area, disposition, appeal_status, resolved_date)
VALUES ('V002', 'XYZ9876', 'No Permit', '2023-10-20', 'Garage B', 'O105', 75.00, 'Paid', '2023-11-20', 'Second offense, warning issued', 'http://campus.edu/violations/v002.jpg', 'Honda', 'Civic', 2020, 'CA', 'Orange', 'South Campus', 'Resolved', 'NotAppealed', '2023-11-22');

INSERT INTO campus_parking_violation_detail (violation_id, plate_number, violation_type, violation_date, location, officer_id, fine_amount, payment_status, payment_due_date, notes, image_url, vehicle_make, vehicle_model, vehicle_year, state, county, enforcement_area, disposition, appeal_status, resolved_date)
VALUES ('V003', 'LMN4567', 'Blocking Fire Lane', '2023-09-15', 'Lot C', 'O110', 150.00, 'Unpaid', '2023-10-15', 'Urgent safety issue', 'http://campus.edu/violations/v003.jpg', 'Ford', 'F-150', 2019, 'CA', 'San Diego', 'East Campus', 'Pending', 'Appealed', NULL);


-- Scheduling information for research laboratories
CREATE TABLE research_lab_schedule
(
    schedule_id            TEXT PRIMARY KEY,
    lab_id                 TEXT,
    date                   TEXT,
    start_time             TEXT,
    end_time               TEXT,
    reservation_type       TEXT,
    requesting_group       TEXT,
    principal_investigator TEXT,
    equipment_list         TEXT,
    safety_approval        TEXT,
    capacity               INTEGER,
    notes                  TEXT,
    status                 TEXT,
    contact_phone          TEXT,
    contact_email          TEXT,
    setup_required         TEXT,
    cleanup_required       TEXT,
    recurring              TEXT,
    recurrence_pattern     TEXT,
    max_occupancy          INTEGER
);

INSERT INTO research_lab_schedule (schedule_id, lab_id, date, start_time, end_time, reservation_type, requesting_group, principal_investigator, equipment_list, safety_approval, capacity, notes, status, contact_phone, contact_email, setup_required, cleanup_required, recurring, recurrence_pattern, max_occupancy)
VALUES ('RS001', 'LAB01', '2024-02-10', '09:00', '12:00', 'Experiment', 'BioChem Team', 'Dr. Alan Brooks', 'Centrifuge;Microscope', 'Approved', 5, 'Protein analysis', 'Confirmed', '555-1234', 'alan.brooks@univ.edu', 'Yes', 'Yes', 'No', NULL, 5);

INSERT INTO research_lab_schedule (schedule_id, lab_id, date, start_time, end_time, reservation_type, requesting_group, principal_investigator, equipment_list, safety_approval, capacity, notes, status, contact_phone, contact_email, setup_required, cleanup_required, recurring, recurrence_pattern, max_occupancy)
VALUES ('RS002', 'LAB02', '2024-02-11', '13:00', '17:00', 'Training', 'Materials Science Cohort', 'Prof. Nina Patel', '3DPrinter;LaserCutter', 'Pending', 10, 'Additive manufacturing workshop', 'Pending', '555-5678', 'nina.patel@univ.edu', 'Yes', 'No', 'Yes', 'Weekly', 10);

INSERT INTO research_lab_schedule (schedule_id, lab_id, date, start_time, end_time, reservation_type, requesting_group, principal_investigator, equipment_list, safety_approval, capacity, notes, status, contact_phone, contact_email, setup_required, cleanup_required, recurring, recurrence_pattern, max_occupancy)
VALUES ('RS003', 'LAB03', '2024-02-12', '08:00', '10:00', 'Maintenance', 'Facilities', 'John Kim', 'HVAC;Sensors', 'N/A', 2, 'Routine calibration', 'Completed', '555-9012', 'john.kim@univ.edu', 'No', 'Yes', 'No', NULL, 2);


-- Agreements with community partners
CREATE TABLE community_partner_agreement
(
    agreement_id           TEXT PRIMARY KEY,
    partner_id             TEXT,
    agreement_start        TEXT,
    agreement_end          TEXT,
    partnership_type       TEXT,
    objectives             TEXT,
    funding_amount         REAL,
    in_kind_contribution   TEXT,
    reporting_frequency    TEXT,
    contact_name           TEXT,
    contact_email          TEXT,
    legal_review_status    TEXT,
    signed_date            TEXT,
    renewal_option         TEXT,
    termination_clause     TEXT,
    performance_metrics    TEXT,
    notes                  TEXT,
    confidentiality_level  TEXT,
    governing_law          TEXT,
    amendment_history      TEXT
);

INSERT INTO community_partner_agreement (agreement_id, partner_id, agreement_start, agreement_end, partnership_type, objectives, funding_amount, in_kind_contribution, reporting_frequency, contact_name, contact_email, legal_review_status, signed_date, renewal_option, termination_clause, performance_metrics, notes, confidentiality_level, governing_law, amendment_history)
VALUES ('PA001', 'CP100', '2023-01-01', '2025-12-31', 'Educational', 'STEM outreach for K-12', 50000.00, 'Volunteer teaching hours', 'Quarterly', 'Maria Gomez', 'maria.gomez@partner.org', 'Approved', '2022-12-15', 'One year', '30 days notice', 'Number of workshops', 'Positive feedback from schools', 'Medium', 'CA', 'Amendment1_2024-03-01');

INSERT INTO community_partner_agreement (agreement_id, partner_id, agreement_start, agreement_end, partnership_type, objectives, funding_amount, in_kind_contribution, reporting_frequency, contact_name, contact_email, legal_review_status, signed_date, renewal_option, termination_clause, performance_metrics, notes, confidentiality_level, governing_law, amendment_history)
VALUES ('PA002', 'CP200', '2022-06-15', '2024-06-14', 'Research', 'Collaborative environmental study', 120000.00, 'Lab equipment loan', 'Semiannual', 'Liam Chen', 'liam.chen@partner.org', 'Pending', '2022-05-30', 'Two years', 'Termination for breach', 'Publications produced', 'Data sharing agreements in place', 'High', 'NY', 'Amendment2_2023-09-10');

INSERT INTO community_partner_agreement (agreement_id, partner_id, agreement_start, agreement_end, partnership_type, objectives, funding_amount, in_kind_contribution, reporting_frequency, contact_name, contact_email, legal_review_status, signed_date, renewal_option, termination_clause, performance_metrics, notes, confidentiality_level, governing_law, amendment_history)
VALUES ('PA003', 'CP300', '2021-04-01', '2026-03-31', 'Cultural', 'Community art installations', 30000.00, 'Artist stipends', 'Annual', 'Sofia Rivera', 'sofia.rivera@partner.org', 'Approved', '2021-03-20', 'Five years', 'Mutual agreement', 'Number of installations', 'High community engagement', 'Low', 'TX', 'Amendment3_2024-01-20');


-- Patent applications for campus technologies
CREATE TABLE technology_patent_application
(
    patent_app_id          TEXT PRIMARY KEY,
    title                  TEXT,
    inventor_names         TEXT,
    filing_date            TEXT,
    priority_date          TEXT,
    application_number     TEXT,
    tech_field             TEXT,
    abstract               TEXT,
    claims_count           INTEGER,
    status                 TEXT,
    examiner_id            TEXT,
    office_action_date     TEXT,
    response_deadline      TEXT,
    grant_date             TEXT,
    patent_number          TEXT,
    maintenance_fee_due    REAL,
    international_filing   TEXT,
    related_technology     TEXT,
    funding_source         TEXT,
    notes                  TEXT
);

INSERT INTO technology_patent_application (patent_app_id, title, inventor_names, filing_date, priority_date, application_number, tech_field, abstract, claims_count, status, examiner_id, office_action_date, response_deadline, grant_date, patent_number, maintenance_fee_due, international_filing, related_technology, funding_source, notes)
VALUES ('PA001', 'Smart Classroom Sensor Network', 'Anna Lee;Mark Patel', '2023-05-10', '2023-04-01', 'US20230012345', 'Education Technology', 'A network of sensors to optimize classroom environment', 12, 'Pending', 'E567', '2023-11-01', '2023-12-15', NULL, NULL, 2000.00, 'PCT', 'IoT Climate Control', 'University Grant', 'Prototype under testing');

INSERT INTO technology_patent_application (patent_app_id, title, inventor_names, filing_date, priority_date, application_number, tech_field, abstract, claims_count, status, examiner_id, office_action_date, response_deadline, grant_date, patent_number, maintenance_fee_due, international_filing, related_technology, funding_source, notes)
VALUES ('PA002', 'Biodegradable Packaging Material', 'Sara Kim;Tom Wu', '2022-08-22', '2022-07-15', 'US20220098765', 'Materials Science', 'New polymer for eco-friendly packaging', 18, 'Granted', 'E789', NULL, NULL, '2023-02-20', 'US11223344', 1500.00, 'None', 'Polymer Synthesis', 'Industry Partnership', 'Commercialized with partner');

INSERT INTO technology_patent_application (patent_app_id, title, inventor_names, filing_date, priority_date, application_number, tech_field, abstract, claims_count, status, examiner_id, office_action_date, response_deadline, grant_date, patent_number, maintenance_fee_due, international_filing, related_technology, funding_source, notes)
VALUES ('PA003', 'AI-Based Student Advising System', 'David Ng;Olivia Torres', '2024-01-15', '2023-12-01', 'US20240054321', 'Artificial Intelligence', 'System using machine learning to personalize academic advising', 22, 'Pending', 'E345', '2024-07-01', '2024-08-15', NULL, NULL, 2500.00, 'PCT', 'Recommendation Engine', 'Research Grant', 'Beta testing with pilot cohort');