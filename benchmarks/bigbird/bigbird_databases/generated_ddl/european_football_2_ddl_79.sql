-- League Official Documents
CREATE TABLE League_Official_Documents (
    doc_id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    doc_type TEXT,
    issue_date TEXT,
    expiry_date TEXT,
    version INTEGER,
    file_path TEXT,
    signed_by TEXT,
    approval_status TEXT,
    confidentiality_level TEXT,
    notes TEXT,
    archive_location TEXT,
    checksum TEXT,
    document_status TEXT,
    reviewer TEXT,
    review_date TEXT,
    regulatory_body TEXT,
    related_policy_id INTEGER,
    language TEXT,
    page_count INTEGER
);

INSERT INTO League_Official_Documents (league_id, doc_type, issue_date, expiry_date, version, file_path, signed_by, approval_status, confidentiality_level, notes, archive_location, checksum, document_status, reviewer, review_date, regulatory_body, related_policy_id, language, page_count) VALUES
(1, 'Bylaws', '2022-01-01', '2027-01-01', 1, '/docs/league1/bylaws_v1.pdf', 'JohnDoe', 'Approved', 'Public', 'Initial filing', '/archive/league1/', 'abc123', 'Active', 'JaneSmith', '2022-01-02', 'UEFA', 10, 'EN', 45),
(2, 'FinancialReport', '2023-03-15', '2024-03-15', 2, '/docs/league2/finrep_q1.pdf', 'AliceBrown', 'Pending', 'Confidential', 'Quarterly report', '/archive/league2/', 'def456', 'Draft', 'BobWhite', '2023-03-16', 'FIFA', 12, 'EN', 30),
(3, 'CompetitionRules', '2021-07-10', '2026-07-10', 3, '/docs/league3/rules_v3.pdf', 'MikeGreen', 'Approved', 'Public', 'Updated rules', '/archive/league3/', 'ghi789', 'Active', 'SaraBlack', '2021-07-11', 'CONMEBOL', 15, 'ES', 60);

-- Team Training Facilities
CREATE TABLE Team_Training_Facilities (
    facility_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    name TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    country TEXT,
    facility_type TEXT,
    capacity INTEGER,
    surface_type TEXT,
    lighting_level TEXT,
    gps_coverage TEXT,
    climate_control TEXT,
    opening_date TEXT,
    renovation_date TEXT,
    manager_name TEXT,
    contact_number TEXT,
    email TEXT,
    operational_status TEXT
);

INSERT INTO Team_Training_Facilities (team_id, name, address, city, state, zip_code, country, facility_type, capacity, surface_type, lighting_level, gps_coverage, climate_control, opening_date, renovation_date, manager_name, contact_number, email, operational_status) VALUES
(101, 'North Camp', '1234 Oak St', 'Springfield', 'IL', '62701', 'USA', 'Indoor', 30, 'Artificial', 'High', 'Full', 'Yes', '2015-06-01', '2022-04-15', 'Tom Harper', '5551234567', 'tom.harper@example.com', 'Open'),
(102, 'South Complex', '5678 Pine Ave', 'Greenville', 'NC', '27834', 'USA', 'Outdoor', 25, 'Grass', 'Medium', 'Partial', 'No', '2010-09-20', '2019-11-30', 'Linda Park', '5559876543', 'linda.park@example.com', 'Open'),
(103, 'East Sports Hub', '9101 Maple Rd', 'Riverton', 'UT', '84057', 'USA', 'Hybrid', 40, 'Hybrid', 'High', 'Full', 'Yes', '2018-03-12', NULL, 'Raj Patel', '5555551212', 'raj.patel@example.com', 'UnderConstruction');

-- Sponsor Contract Amendments
CREATE TABLE Sponsor_Contract_Amendments (
    amendment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    contract_id INTEGER,
    sponsor_id INTEGER,
    amendment_date TEXT,
    amendment_type TEXT,
    description TEXT,
    effective_start_date TEXT,
    effective_end_date TEXT,
    added_value REAL,
    removed_value REAL,
    new_terms TEXT,
    previous_terms TEXT,
    approved_by TEXT,
    approval_date TEXT,
    status TEXT,
    document_ref TEXT,
    amendment_number INTEGER,
    currency TEXT,
    exchange_rate REAL,
    notes TEXT
);

INSERT INTO Sponsor_Contract_Amendments (contract_id, sponsor_id, amendment_date, amendment_type, description, effective_start_date, effective_end_date, added_value, removed_value, new_terms, previous_terms, approved_by, approval_date, status, document_ref, amendment_number, currency, exchange_rate, notes) VALUES
(5001, 200, '2023-05-01', 'Extension', 'Extend contract by 2 years', '2023-06-01', '2025-05-31', 1500000, 0, 'Increased branding slots', 'Original 3-year term', 'Emma Lee', '2023-05-02', 'Approved', 'doc_ext_5001.pdf', 1, 'USD', 1.0, 'No remarks'),
(5002, 201, '2022-11-15', 'Reduction', 'Reduce sponsorship amount due to budget cuts', '2022-12-01', '2023-11-30', 0, 300000, 'Reduced logo size', 'Full logo presence', 'Mark Troy', '2022-11-16', 'Pending', 'doc_red_5002.pdf', 1, 'EUR', 0.92, 'Awaiting finance approval'),
(5003, 202, '2024-01-20', 'AddOn', 'Add community outreach clause', '2024-02-01', '2026-01-31', 200000, 0, 'Community events sponsorship', 'None', 'Sofia Grant', '2024-01-21', 'Approved', 'doc_add_5003.pdf', 1, 'GBP', 1.30, 'Community focus');

-- Fan Media Consumption
CREATE TABLE Fan_Media_Consumption (
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    media_type TEXT,
    platform TEXT,
    consumption_date TEXT,
    duration_minutes INTEGER,
    content_id TEXT,
    content_category TEXT,
    device_type TEXT,
    location TEXT,
    network_type TEXT,
    data_used_mb REAL,
    subscription_status TEXT,
    rating INTEGER,
    comments TEXT,
    ad_exposure_count INTEGER,
    ad_clicks INTEGER,
    playback_quality TEXT,
    content_language TEXT,
    region TEXT,
    is_live TEXT
);

INSERT INTO Fan_Media_Consumption (fan_id, media_type, platform, consumption_date, duration_minutes, content_id, content_category, device_type, location, network_type, data_used_mb, subscription_status, rating, comments, ad_exposure_count, ad_clicks, playback_quality, content_language, region, is_live) VALUES
(10001, 'Video', 'YouTube', '2023-08-12', 45, 'VID12345', 'MatchHighlights', 'Smartphone', 'Home', 'WiFi', 350.5, 'Premium', 5, 'Great replay', 3, 1, 'HD', 'EN', 'NorthAmerica', 'Yes'),
(10002, 'LiveStream', 'Twitch', '2023-09-05', 90, 'STR67890', 'TrainingSession', 'Tablet', 'Work', '4G', 750.2, 'Free', 4, 'Good analysis', 5, 0, 'FullHD', 'EN', 'Europe', 'Yes'),
(10003, 'Podcast', 'Spotify', '2023-07-20', 30, 'POD54321', 'Interview', 'Desktop', 'Gym', 'WiFi', 120.0, 'Premium', 3, 'Informative', 0, 0, 'Audio', 'EN', 'Asia', 'No');

-- Player Sponsorship Eligibility
CREATE TABLE Player_Sponsorship_Eligibility (
    eligibility_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    sponsor_id INTEGER,
    eligibility_start TEXT,
    eligibility_end TEXT,
    sport_category TEXT,
    market_region TEXT,
    brand_alignment_score REAL,
    social_media_followers INTEGER,
    average_viewership INTEGER,
    contract_status TEXT,
    notes TEXT,
    eligibility_reason TEXT,
    previous_sponsor_id INTEGER,
    rejection_reason TEXT,
    approved_by TEXT,
    approval_date TEXT,
    clause_version INTEGER,
    compliance_flag TEXT,
    audit_date TEXT,
    auditor_name TEXT
);

INSERT INTO Player_Sponsorship_Eligibility (player_id, sponsor_id, eligibility_start, eligibility_end, sport_category, market_region, brand_alignment_score, social_media_followers, average_viewership, contract_status, notes, eligibility_reason, previous_sponsor_id, rejection_reason, approved_by, approval_date, clause_version, compliance_flag, audit_date, auditor_name) VALUES
(3001, 400, '2023-01-01', '2025-12-31', 'Football', 'Europe', 8.7, 250000, 1200000, 'Pending', 'High growth potential', 'Performance', NULL, NULL, 'Laura Kim', '2023-01-02', 2, 'Yes', '2023-01-05', 'James Lee'),
(3002, 401, '2022-06-15', '2024-06-14', 'Football', 'SouthAmerica', 7.2, 180000, 900000, 'Approved', 'Strong brand fit', 'Marketability', 399, NULL, 'Michael Chan', '2022-06-20', 1, 'Yes', '2022-06-22', 'Anna Patel'),
(3003, 402, '2024-03-01', '2026-02-28', 'Football', 'Asia', 6.5, 300000, 1500000, 'Rejected', 'Conflict with existing sponsor', 'Conflict', 400, 'Overlap with existing contract', 'Nina Torres', '2024-03-05', 3, 'No', '2024-03-07', 'Samuel Reed');

-- Stadium Access Log Events
CREATE TABLE Stadium_Access_Log_Events (
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    timestamp TEXT,
    gate_id TEXT,
    staff_id INTEGER,
    event_type TEXT,
    card_present TEXT,
    card_id TEXT,
    visitor_type TEXT,
    visitor_id INTEGER,
    purpose TEXT,
    duration_seconds INTEGER,
    access_method TEXT,
    device_serial TEXT,
    verification_result TEXT,
    notes TEXT,
    shift_id TEXT,
    alert_triggered TEXT,
    security_level TEXT,
    weather_condition TEXT,
    incident_report_id INTEGER
);

INSERT INTO Stadium_Access_Log_Events (stadium_id, timestamp, gate_id, staff_id, event_type, card_present, card_id, visitor_type, visitor_id, purpose, duration_seconds, access_method, device_serial, verification_result, notes, shift_id, alert_triggered, security_level, weather_condition, incident_report_id) VALUES
(1, '2023-10-01 08:15:00', 'G01', 500, 'Entry', 'Yes', 'CARD1001', 'Staff', 500, 'ShiftStart', 0, 'Badge', 'SN12345', 'Success', 'Morning shift start', 'S1', 'No', 'Level1', 'Clear', NULL),
(1, '2023-10-01 09:30:45', 'G02', 501, 'Entry', 'Yes', 'CARD1002', 'Visitor', 8001, 'TicketCheck', 150, 'QR', 'SN12346', 'Success', 'Fan entry', 'S1', 'No', 'Level2', 'Clear', NULL),
(1, '2023-10-01 10:05:12', 'G03', 502, 'Exit', 'Yes', 'CARD1003', 'Staff', 502, 'Break', 300, 'Badge', 'SN12347', 'Success', 'Staff break exit', 'S1', 'No', 'Level1', 'Clear', 30001);

-- Club Governance Roles
CREATE TABLE Club_Governance_Roles (
    role_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    role_name TEXT,
    person_name TEXT,
    person_id INTEGER,
    start_date TEXT,
    end_date TEXT,
    compensation REAL,
    responsibilities TEXT,
    reports_to_role_id INTEGER,
    level TEXT,
    department TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    is_executive TEXT,
    board_member_flag TEXT,
    term_length_months INTEGER,
    appointment_method TEXT,
    conflict_of_interest TEXT,
    background_check_date TEXT,
    background_check_status TEXT
);

INSERT INTO Club_Governance_Roles (club_id, role_name, person_name, person_id, start_date, end_date, compensation, responsibilities, reports_to_role_id, level, department, contact_email, contact_phone, is_executive, board_member_flag, term_length_months, appointment_method, conflict_of_interest, background_check_date, background_check_status) VALUES
(10, 'Chief Executive Officer', 'Oliver Stone', 9001, '2020-01-01', NULL, 250000, 'Overall club strategy', NULL, 'C', 'Executive', 'oliver.stone@example.com', '5551112222', 'Yes', 'Yes', 60, 'BoardVote', 'No', '2020-01-02', 'Clear'),
(10, 'Director of Finance', 'Grace Lin', 9002, '2021-04-15', NULL, 150000, 'Financial oversight', 1, 'B', 'Finance', 'grace.lin@example.com', '5553334444', 'No', 'Yes', 36, 'BoardVote', 'No', '2021-04-16', 'Clear'),
(10, 'Head of Youth Development', 'Miguel Santos', 9003, '2019-09-01', NULL, 120000, 'Academy programs', 1, 'B', 'Youth', 'miguel.santos@example.com', '5555556677', 'No', 'No', 48, 'BoardVote', 'No', '2019-09-02', 'Clear');

-- Match Officiating Technology
CREATE TABLE Match_Officiating_Technology (
    tech_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    tech_type TEXT,
    vendor_name TEXT,
    installation_date TEXT,
    last_maintenance_date TEXT,
    firmware_version TEXT,
    operational_status TEXT,
    coverage_area TEXT,
    number_of_units INTEGER,
    calibration_date TEXT,
    calibration_result TEXT,
    latency_ms REAL,
    accuracy_percent REAL,
    usage_frequency INTEGER,
    cost_usd REAL,
    warranty_expiry TEXT,
    support_contact TEXT,
    notes TEXT,
    is_active TEXT
);

INSERT INTO Match_Officiating_Technology (match_id, tech_type, vendor_name, installation_date, last_maintenance_date, firmware_version, operational_status, coverage_area, number_of_units, calibration_date, calibration_result, latency_ms, accuracy_percent, usage_frequency, cost_usd, warranty_expiry, support_contact, notes, is_active) VALUES
(2001, 'VAR', 'TechVision', '2022-08-01', '2023-06-15', 'v2.3', 'Operational', 'FullPitch', 4, '2023-06-10', 'Pass', 25.5, 98.7, 120, 500000, '2025-08-01', 'support@techvision.com', 'No issues', 'Yes'),
(2002, 'GoalLineTech', 'EdgeSport', '2021-05-20', '2023-04-22', 'v1.9', 'Operational', 'GoalArea', 2, '2023-04-20', 'Pass', 15.2, 99.2, 85, 300000, '2024-05-20', 'help@edgesport.com', 'Calibration needed before season', 'Yes'),
(2003, 'Semi-Automated Offside', 'ClearPlay', '2023-01-10', '2023-07-01', 'v3.0', 'Testing', 'Midfield', 6, '2023-06-28', 'Pass', 30.0, 97.5, 45, 750000, '2026-01-10', 'contact@clearplay.com', 'Pilot phase', 'No');

-- Youth Academy Coaching Credentials
CREATE TABLE Youth_Academy_Coaching_Credentials (
    credential_id INTEGER PRIMARY KEY AUTOINCREMENT,
    academy_id INTEGER,
    coach_id INTEGER,
    credential_type TEXT,
    issuing_body TEXT,
    issue_date TEXT,
    expiry_date TEXT,
    credential_level TEXT,
    score REAL,
    renewal_required TEXT,
    last_renewal_date TEXT,
    specialist_area TEXT,
    languages_spoken TEXT,
    certified_by TEXT,
    certification_number TEXT,
    notes TEXT,
    verification_status TEXT,
    verification_date TEXT,
    trainer_hours INTEGER,
    continuing_education_units INTEGER,
    compliance_flag TEXT
);

INSERT INTO Youth_Academy_Coaching_Credentials (academy_id, coach_id, credential_type, issuing_body, issue_date, expiry_date, credential_level, score, renewal_required, last_renewal_date, specialist_area, languages_spoken, certified_by, certification_number, notes, verification_status, verification_date, trainer_hours, continuing_education_units, compliance_flag) VALUES
(5, 1201, 'UEFA Coaching License', 'UEFA', '2020-02-15', '2025-02-14', 'A', 92.5, 'Yes', '2022-02-20', 'Defensive Tactics', 'EN,DE', 'John Smith', 'CERT2020A', 'N/A', 'Verified', '2022-02-22', 1500, 30, 'Yes'),
(5, 1202, 'UEFA Coaching License', 'UEFA', '2019-07-10', '2024-07-09', 'B', 88.0, 'Yes', '2021-07-12', 'Attacking Play', 'EN,ES', 'Maria Garcia', 'CERT2019B', 'N/A', 'Verified', '2021-07-15', 1300, 25, 'Yes'),
(6, 1301, 'National Coaching Certificate', 'FA', '2021-03-05', '2026-03-04', 'Level1', 81.0, 'No', NULL, 'Goalkeeping', 'EN', 'David Lee', 'CERT2021L1', 'Completed advanced goalie workshop', 'Verified', '2021-03-06', 800, 10, 'Yes');

-- International Federation Communications
CREATE TABLE International_Federation_Communications (
    comm_id INTEGER PRIMARY KEY AUTOINCREMENT,
    federation_id INTEGER,
    message_type TEXT,
    subject TEXT,
    body_text TEXT,
    sent_date TEXT,
    received_date TEXT,
    sender_id INTEGER,
    receiver_id INTEGER,
    priority_level TEXT,
    communication_channel TEXT,
    attachment_path TEXT,
    encryption_used TEXT,
    read_status TEXT,
    response_required TEXT,
    response_deadline TEXT,
    response_id INTEGER,
    archive_location TEXT,
    compliance_check TEXT,
    notes TEXT,
    audit_trail_id INTEGER
);

INSERT INTO International_Federation_Communications (federation_id, message_type, subject, body_text, sent_date, received_date, sender_id, receiver_id, priority_level, communication_channel, attachment_path, encryption_used, read_status, response_required, response_deadline, response_id, archive_location, compliance_check, notes, audit_trail_id) VALUES
(1, 'RegulationUpdate', 'New Transfer Window Dates', 'Please review the attached schedule for the upcoming transfer window.', '2023-04-01', '2023-04-01', 10001, 20001, 'High', 'Email', '/attachments/transfer_window_2023.pdf', 'AES256', 'Read', 'Yes', '2023-04-10', NULL, '/archive/fed1/', 'Passed', 'Urgent compliance', 50001),
(2, 'MeetingMinutes', 'Annual Congress Summary', 'Attached are the minutes from the annual congress held last month.', '2023-06-15', '2023-06-15', 10002, 20002, 'Medium', 'SecurePortal', '/attachments/congress_2023_minutes.docx', 'TLS', 'Unread', 'No', NULL, NULL, '/archive/fed2/', 'Pending', 'Review needed', 50002),
(3, 'DisciplinaryNotice', 'Player Suspension Notice', 'Player XYZ has been suspended for 3 matches due to violation of conduct code.', '2023-07-20', '2023-07-20', 10003, 20003, 'High', 'Email', '/attachments/suspension_xyz.pdf', 'AES256', 'Read', 'Yes', '2023-07-25', 90001, '/archive/fed3/', 'Passed', 'Immediate action required', 50003);