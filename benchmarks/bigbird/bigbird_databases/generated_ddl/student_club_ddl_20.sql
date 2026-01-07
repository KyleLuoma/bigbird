-- Research Facility Table
CREATE TABLE research_facility
(
    facility_id TEXT PRIMARY KEY,
    facility_name TEXT,
    building TEXT,
    floor INTEGER,
    lab_type TEXT,
    capacity INTEGER,
    open_date TEXT,
    close_date TEXT,
    manager_id TEXT,
    contact_email TEXT,
    phone TEXT,
    square_feet INTEGER,
    equipment_budget REAL,
    safety_certified TEXT,
    iso_rating TEXT,
    hvac_system TEXT,
    power_source TEXT,
    access_control TEXT,
    disaster_plan TEXT,
    notes TEXT,
    active_flag TEXT
);

INSERT INTO research_facility (facility_id, facility_name, building, floor, lab_type, capacity, open_date, close_date, manager_id, contact_email, phone, square_feet, equipment_budget, safety_certified, iso_rating, hvac_system, power_source, access_control, disaster_plan, notes, active_flag) VALUES
('RF001', 'Nanotech Lab', 'Science Hall', 2, 'Nanofabrication', 30, '2015-06-01', '', 'MGR001', 'mgr001@univ.edu', '5551234567', 12000, 250000.00, 'Yes', 'ISO9001', 'Chilled Water', 'Solar', 'Badge', 'PlanA', 'Stateoftheart', 'Y'),
('RF002', 'BioChem Center', 'Health Center', 1, 'Biochemistry', 45, '2012-09-15', '', 'MGR002', 'mgr002@univ.edu', '5559876543', 15000, 300000.00, 'Yes', 'ISO14001', 'VAV', 'Grid', 'Keycard', 'PlanB', 'Expansion planned', 'Y'),
('RF003', 'Quantum Computing Lab', 'Engineering Bldg', 3, 'Quantum', 20, '2018-01-20', '', 'MGR003', 'mgr003@univ.edu', '5555551212', 10000, 400000.00, 'No', 'ISO45001', 'CRAC', 'Hybrid', 'Biometric', 'PlanC', 'Under renovation', 'N');

-- Student Transport Pass Table
CREATE TABLE student_transport_pass
(
    pass_id TEXT PRIMARY KEY,
    student_id TEXT,
    issue_date TEXT,
    expiry_date TEXT,
    pass_type TEXT,
    balance REAL,
    issue_location TEXT,
    barcode TEXT,
    authorized_areas TEXT,
    max_rides INTEGER,
    ride_used INTEGER,
    discount_percent REAL,
    renewal_required TEXT,
    last_used_date TEXT,
    last_station TEXT,
    home_zone TEXT,
    campus_zone TEXT,
    status TEXT,
    notes TEXT,
    issued_by TEXT,
    version INTEGER
);

INSERT INTO student_transport_pass (pass_id, student_id, issue_date, expiry_date, pass_type, balance, issue_location, barcode, authorized_areas, max_rides, ride_used, discount_percent, renewal_required, last_used_date, last_station, home_zone, campus_zone, status, notes, issued_by, version) VALUES
('PASS001', 'STU1001', '2023-08-01', '2024-07-31', 'Monthly', 0.00, 'Campus Center', 'BC123456', 'All', 0, 0, 0.00, 'No', '2024-01-15', 'NorthGate', 'ZoneA', 'Zone1', 'Active', '', 'Transport Office', 1),
('PASS002', 'STU1002', '2023-09-15', '2024-09-14', 'Semester', 15.50, 'NorthGate', 'BC654321', 'EastWest', 120, 45, 10.0, 'Yes', '2024-02-20', 'SouthGate', 'ZoneB', 'Zone2', 'Active', 'Low balance', 'Transport Office', 2),
('PASS003', 'STU1003', '2022-01-10', '2022-12-31', 'Annual', 0.00, 'SouthGate', 'BC112233', 'CampusOnly', 0, 0, 0.00, 'No', '2023-11-05', 'EastGate', 'ZoneC', 'Zone3', 'Expired', 'Renewal pending', 'Transport Office', 1);

-- Campus Artifact Table
CREATE TABLE campus_artifact
(
    artifact_id TEXT PRIMARY KEY,
    name TEXT,
    description TEXT,
    acquisition_date TEXT,
    origin TEXT,
    period TEXT,
    material TEXT,
    condition TEXT,
    location_building TEXT,
    location_room TEXT,
    custodian TEXT,
    insurance_value REAL,
    insurance_policy TEXT,
    display_status TEXT,
    loaned_to TEXT,
    loan_start TEXT,
    loan_end TEXT,
    photo_url TEXT,
    catalog_number TEXT,
    dimensions TEXT,
    weight REAL,
    notes TEXT
);

INSERT INTO campus_artifact (artifact_id, name, description, acquisition_date, origin, period, material, condition, location_building, location_room, custodian, insurance_value, insurance_policy, display_status, loaned_to, loan_start, loan_end, photo_url, catalog_number, dimensions, weight, notes) VALUES
('ART001', 'Bronze Statue', '19th Century bronze statue of a scholar', '2005-04-12', 'Europe', '19thC', 'Bronze', 'Good', 'Arts Hall', 'Room101', 'JohnDoe', 50000.00, 'POL123', 'OnDisplay', '', '', '', 'http://example.com/img1.jpg', 'CAT001', '2x1x3ft', 120.5, ''),
('ART002', 'Ancient Vase', 'Ming dynasty porcelain vase', '2010-09-20', 'China', 'Ming', 'Porcelain', 'Excellent', 'History Museum', 'Room202', 'JaneSmith', 80000.00, 'POL456', 'InStorage', 'National Museum', '2021-01-01', '2022-12-31', 'http://example.com/img2.jpg', 'CAT002', '12inH', 15.2, 'On loan until 2022-12-31'),
('ART003', 'Midwest Quilt', 'Handmade quilt from 1930s', '2018-06-05', 'USA', '1930s', 'Cotton', 'Fair', 'Cultural Center', 'Room303', 'MikeBrown', 2000.00, 'POL789', 'OnDisplay', '', '', '', 'http://example.com/img3.jpg', 'CAT003', '5x7ft', 30.0, 'Needs restoration');

-- Green Building Certification Table
CREATE TABLE green_building_certification
(
    cert_id TEXT PRIMARY KEY,
    building_id TEXT,
    certifying_body TEXT,
    certification_level TEXT,
    certification_date TEXT,
    expiry_date TEXT,
    energy_score REAL,
    water_score REAL,
    waste_score REAL,
    indoor_air_quality TEXT,
    renewable_energy_used TEXT,
    green_roof TEXT,
    LEED_points INTEGER,
    ENERGYSTAR_rating TEXT,
    building_area_sqft INTEGER,
    construction_year INTEGER,
    retrofit_year INTEGER,
    summary TEXT,
    auditor_name TEXT,
    audit_report_url TEXT,
    status TEXT,
    notes TEXT
);

INSERT INTO green_building_certification (cert_id, building_id, certifying_body, certification_level, certification_date, expiry_date, energy_score, water_score, waste_score, indoor_air_quality, renewable_energy_used, green_roof, LEED_points, ENERGYSTAR_rating, building_area_sqft, construction_year, retrofit_year, summary, auditor_name, audit_report_url, status, notes) VALUES
('CERT001', 'BLDG01', 'USGBC', 'Platinum', '2020-03-15', '2025-03-15', 95.5, 92.0, 90.0, 'Excellent', 'Yes', 'Yes', 110, 'Gold', 85000, 1995, 2020, 'Highly efficient building', 'AliceGreen', 'http://example.com/report1.pdf', 'Active', ''),
('CERT002', 'BLDG02', 'EPA', 'Gold', '2018-07-22', '2023-07-22', 88.0, 85.5, 80.0, 'Good', 'Partial', 'No', 85, 'Silver', 62000, 2001, 2018, 'Good performance after retrofit', 'BobWhite', 'http://example.com/report2.pdf', 'Active', ''),
('CERT003', 'BLDG03', 'USGBC', 'Silver', '2015-11-05', '2020-11-05', 75.0, 70.0, 68.0, 'Fair', 'No', 'No', 60, 'Bronze', 45000, 1978, 2015, 'Older building, ongoing improvements', 'CarolBlue', 'http://example.com/report3.pdf', 'Expired', 'Renewal in process');

-- External Partner Table
CREATE TABLE external_partner
(
    partner_id TEXT PRIMARY KEY,
    organization_name TEXT,
    contact_name TEXT,
    contact_email TEXT,
    phone TEXT,
    partnership_type TEXT,
    start_date TEXT,
    end_date TEXT,
    contract_value REAL,
    primary_focus TEXT,
    region TEXT,
    status TEXT,
    last_review_date TEXT,
    next_review_date TEXT,
    agreement_url TEXT,
    confidentiality_level TEXT,
    data_sharing_allowed TEXT,
    notes TEXT,
    created_by TEXT,
    created_date TEXT,
    updated_by TEXT,
    updated_date TEXT
);

INSERT INTO external_partner (partner_id, organization_name, contact_name, contact_email, phone, partnership_type, start_date, end_date, contract_value, primary_focus, region, status, last_review_date, next_review_date, agreement_url, confidentiality_level, data_sharing_allowed, notes, created_by, created_date, updated_by, updated_date) VALUES
('PART001', 'Tech Corp', 'Emily Clark', 'eclark@techcorp.com', '5551112222', 'Research', '2021-01-01', '2024-12-31', 1500000.00, 'AI Collaboration', 'NorthAmerica', 'Active', '2023-06-15', '2024-06-15', 'http://example.com/techcorp_agreement.pdf', 'High', 'Yes', '', 'Admin', '2021-01-01', 'Admin', '2023-06-15'),
('PART002', 'Green Energy Ltd', 'Mark Green', 'mgreen@greenenergy.com', '5553334444', 'Sustainability', '2020-05-15', '2025-05-14', 800000.00, 'Renewable Projects', 'Europe', 'Active', '2023-05-10', '2024-05-10', 'http://example.com/greenenergy_agreement.pdf', 'Medium', 'No', 'Renewable targets set', 'Admin', '2020-05-15', 'Admin', '2023-05-10'),
('PART003', 'Health Alliance', 'Laura White', 'lwhite@healthalliance.org', '5557778888', 'Community', '2019-09-01', '2022-08-31', 300000.00, 'Wellness Programs', 'Asia', 'Expired', '2022-08-01', '2023-08-01', 'http://example.com/healthalliance_agreement.pdf', 'Low', 'Yes', 'Partnership concluded', 'Admin', '2019-09-01', 'Admin', '2022-08-01');

-- Digital Learning Module Table
CREATE TABLE digital_learning_module
(
    module_id TEXT PRIMARY KEY,
    title TEXT,
    description TEXT,
    course_code TEXT,
    version INTEGER,
    author TEXT,
    creation_date TEXT,
    last_update TEXT,
    duration_minutes INTEGER,
    difficulty_level TEXT,
    language TEXT,
    format TEXT,
    thumbnail_url TEXT,
    video_url TEXT,
    transcript_url TEXT,
    quiz_count INTEGER,
    assignment_included TEXT,
    credit_hours REAL,
    prerequisite_module TEXT,
    tags TEXT,
    access_level TEXT,
    status TEXT,
    notes TEXT
);

INSERT INTO digital_learning_module (module_id, title, description, course_code, version, author, creation_date, last_update, duration_minutes, difficulty_level, language, format, thumbnail_url, video_url, transcript_url, quiz_count, assignment_included, credit_hours, prerequisite_module, tags, access_level, status, notes) VALUES
('MOD001', 'Intro to Data Science', 'Basic concepts and tools for data science', 'DS101', 3, 'DrSmith', '2021-02-01', '2023-01-10', 90, 'Beginner', 'English', 'Video', 'http://example.com/thumb1.jpg', 'http://example.com/video1.mp4', 'http://example.com/transcript1.txt', 5, 'Yes', 3.0, '', 'data,science,intro', 'Public', 'Published', ''),
('MOD002', 'Advanced Machine Learning', 'Deep dive into ML algorithms', 'ML301', 2, 'ProfLee', '2020-06-15', '2022-11-05', 120, 'Advanced', 'English', 'Video', 'http://example.com/thumb2.jpg', 'http://example.com/video2.mp4', 'http://example.com/transcript2.txt', 8, 'Yes', 4.5, 'MOD001', 'ml,advanced', 'Restricted', 'Published', ''),
('MOD003', 'Statistical Methods', 'Statistical techniques for researchers', 'STAT201', 1, 'DrKim', '2019-09-20', '2021-08-30', 75, 'Intermediate', 'English', 'PDF', 'http://example.com/thumb3.jpg', '', 'http://example.com/transcript3.txt', 4, 'No', 2.0, '', 'statistics,methods', 'Public', 'Draft', '');

-- Facility Inspection Schedule Table
CREATE TABLE facility_inspection_schedule
(
    schedule_id TEXT PRIMARY KEY,
    facility_id TEXT,
    inspection_type TEXT,
    frequency TEXT,
    next_inspection_date TEXT,
    last_inspection_date TEXT,
    inspector_name TEXT,
    inspector_id TEXT,
    checklist_version TEXT,
    remarks TEXT,
    status TEXT,
    priority TEXT,
    estimated_duration_minutes INTEGER,
    required_equipment TEXT,
    safety_precautions TEXT,
    follow_up_required TEXT,
    follow_up_date TEXT,
    notification_sent TEXT,
    created_by TEXT,
    created_date TEXT,
    updated_by TEXT,
    updated_date TEXT
);

INSERT INTO facility_inspection_schedule (schedule_id, facility_id, inspection_type, frequency, next_inspection_date, last_inspection_date, inspector_name, inspector_id, checklist_version, remarks, status, priority, estimated_duration_minutes, required_equipment, safety_precautions, follow_up_required, follow_up_date, notification_sent, created_by, created_date, updated_by, updated_date) VALUES
('SCH001', 'RF001', 'Safety', 'Annual', '2024-05-10', '2023-05-12', 'Anna Safety', 'INSP001', 'V1', 'All clear', 'Scheduled', 'High', 180, 'SafetyGear', 'PPE required', 'No', '', 'Yes', 'Admin', '2023-01-01', 'Admin', '2023-06-01'),
('SCH002', 'RF002', 'Fire', 'SemiAnnual', '2024-03-15', '2023-09-20', 'Bob Fire', 'INSP002', 'V2', 'Minor issues', 'Pending', 'Medium', 120, 'FireExtinguisher', 'No smoking', 'Yes', '2024-04-01', 'Yes', 'Admin', '2023-02-15', 'Admin', '2023-06-15'),
('SCH003', 'RF003', 'Electrical', 'Quarterly', '2024-01-20', '2023-10-05', 'Cathy Electra', 'INSP003', 'V3', 'Replace panels', 'InProgress', 'High', 240, 'Multimeter', 'Lockout tagout', 'Yes', '2024-02-10', 'Yes', 'Admin', '2023-03-10', 'Admin', '2023-07-01');

-- Energy Savings Program Table
CREATE TABLE energy_savings_program
(
    program_id TEXT PRIMARY KEY,
    name TEXT,
    start_date TEXT,
    end_date TEXT,
    target_reduction_percent REAL,
    actual_reduction_percent REAL,
    budget REAL,
    spent REAL,
    responsible_department TEXT,
    program_manager TEXT,
    status TEXT,
    description TEXT,
    initiatives_count INTEGER,
    total_savings REAL,
    reporting_frequency TEXT,
    last_report_date TEXT,
    next_report_due TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    notes TEXT,
    approved_by TEXT,
    approval_date TEXT
);

INSERT INTO energy_savings_program (program_id, name, start_date, end_date, target_reduction_percent, actual_reduction_percent, budget, spent, responsible_department, program_manager, status, description, initiatives_count, total_savings, reporting_frequency, last_report_date, next_report_due, contact_email, contact_phone, notes, approved_by, approval_date) VALUES
('PROG001', 'Campus LED Upgrade', '2022-01-01', '2023-12-31', 15.0, 13.5, 200000.00, 180000.00, 'Facilities', 'Dana Light', 'Completed', 'Replace all interior lighting with LED', 12, 27000.00, 'Quarterly', '2023-09-30', '2023-12-31', 'dlight@univ.edu', '5552223333', '', 'VP Facilities', '2021-12-15'),
('PROG002', 'Solar Panel Expansion', '2021-06-01', '2024-05-31', 20.0, 10.0, 500000.00, 350000.00, 'Sustainability', 'Evan Solar', 'Active', 'Install additional solar arrays on rooftops', 8, 50000.00, 'Annual', '2023-06-15', '2024-06-15', 'esolar@univ.edu', '5554445555', 'Phase 2 pending', 'VP Sustainability', '2021-05-20'),
('PROG003', 'HVAC Optimization', '2020-09-01', '2022-08-31', 12.0, 12.0, 150000.00, 150000.00, 'Operations', 'Fiona Climate', 'Completed', 'Upgrade HVAC controls and sensors', 5, 18000.00, 'SemiAnnual', '2022-08-15', '2022-12-31', 'fclimate@univ.edu', '5556667777', '', 'VP Operations', '2020-08-10');

-- Library Event Feedback Table
CREATE TABLE library_event_feedback
(
    feedback_id TEXT PRIMARY KEY,
    lib_event_code TEXT,
    attendee_code TEXT,
    rating INTEGER,
    comments TEXT,
    feedback_date TEXT,
    responded TEXT,
    response_date TEXT,
    responder_id TEXT,
    rating_explanation TEXT,
    suggested_improvements TEXT,
    overall_experience TEXT,
    venue_quality TEXT,
    staff_helpfulness TEXT,
    audio_visual_quality TEXT,
    seating_comfort TEXT,
    registration_process TEXT,
    follow_up_actions TEXT,
    closed TEXT,
    closed_date TEXT,
    notes TEXT
);

INSERT INTO library_event_feedback (feedback_id, lib_event_code, attendee_code, rating, comments, feedback_date, responded, response_date, responder_id, rating_explanation, suggested_improvements, overall_experience, venue_quality, staff_helpfulness, audio_visual_quality, seating_comfort, registration_process, follow_up_actions, closed, closed_date, notes) VALUES
('FB001', 'LEVT100', 'ATT001', 5, 'Excellent session', '2023-11-05', 'Yes', '2023-11-06', 'RESP001', 'Very engaging', 'Add more break time', 'Very good', 'Great', 'Very helpful', 'Clear', 'Comfortable', 'Smooth', 'Sent thank you email', 'Y', '2023-11-10', ''),
('FB002', 'LEVT101', 'ATT002', 3, 'Average content', '2023-10-20', 'No', '', '', 'Could be deeper', 'Longer Q&A', 'Average', 'Adequate', 'Helpful', 'Mediocre', 'Okay', 'Complicated', '', 'N', '', ''),
('FB003', 'LEVT102', 'ATT003', 4, 'Good topics', '2023-09-15', 'Yes', '2023-09-16', 'RESP002', 'Well structured', 'More interactive', 'Good', 'Good', 'Very helpful', 'Good', 'Comfortable', 'Easy', 'Provided resource list', 'Y', '2023-09-20', '');

-- Health Service Equipment Table
CREATE TABLE health_service_equipment
(
    equipment_id TEXT PRIMARY KEY,
    name TEXT,
    model_number TEXT,
    manufacturer TEXT,
    purchase_date TEXT,
    warranty_end_date TEXT,
    location_building TEXT,
    location_room TEXT,
    status TEXT,
    last_maintenance_date TEXT,
    next_maintenance_date TEXT,
    maintenance_provider TEXT,
    calibration_date TEXT,
    next_calibration_date TEXT,
    usage_hours INTEGER,
    last_used_by TEXT,
    depreciation_years INTEGER,
    current_value REAL,
    notes TEXT,
    asset_tag TEXT,
    serial_number TEXT,
    assigned_to_department TEXT
);

INSERT INTO health_service_equipment (equipment_id, name, model_number, manufacturer, purchase_date, warranty_end_date, location_building, location_room, status, last_maintenance_date, next_maintenance_date, maintenance_provider, calibration_date, next_calibration_date, usage_hours, last_used_by, depreciation_years, current_value, notes, asset_tag, serial_number, assigned_to_department) VALUES
('EQ001', 'EKG Machine', 'EKG-200', 'MedTech', '2019-03-10', '2024-03-10', 'Health Center', 'Room12', 'Operational', '2023-02-15', '2024-02-15', 'MediServ', '2023-01-10', '2024-01-10', 1200, 'DrSmith', 7, 15000.00, '', 'AT12345', 'SN987654', 'Cardiology'),
('EQ002', 'X-Ray Unit', 'XR-5000', 'Radiant', '2017-07-22', '2022-07-22', 'Health Center', 'Radiology', 'UnderRepair', '2022-12-01', '2023-12-01', 'RadiologyFix', '2022-11-20', '2023-11-20', 2500, 'TechJones', 10, 80000.00, 'Awaiting parts', 'AT67890', 'SN123456', 'Radiology'),
('EQ003', 'Ultrasound Probe', 'US-300', 'SonoTech', '2020-01-15', '2025-01-15', 'Health Center', 'Room8', 'Operational', '2023-03-05', '2024-03-05', 'MediServ', '2023-02-28', '2024-02-28', 800, 'NurseLee', 5, 12000.00, '', 'AT54321', 'SN654321', 'Obstetrics');