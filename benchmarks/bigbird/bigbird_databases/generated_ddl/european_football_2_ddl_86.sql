-- Player educational background information
CREATE TABLE Player_Educational_Background (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    highest_degree TEXT,
    institution_name TEXT,
    graduation_year INTEGER,
    field_of_study TEXT,
    gpa REAL,
    scholarship_status TEXT,
    honors TEXT,
    extracurriculars TEXT,
    language_proficiency TEXT,
    study_abroad BOOLEAN,
    major_courses TEXT,
    minor TEXT,
    thesis_title TEXT,
    advisor_name TEXT,
    diploma_number TEXT,
    accreditation_body TEXT,
    education_level TEXT,
    notes TEXT
);
INSERT INTO Player_Educational_Background (player_api_id, highest_degree, institution_name, graduation_year, field_of_study, gpa, scholarship_status, honors, extracurriculars, language_proficiency, study_abroad, major_courses, minor, thesis_title, advisor_name, diploma_number, accreditation_body, education_level, notes) VALUES (101, 'Bachelor of Science', 'State University', 2018, 'Sports Science', 3.6, 'Full', 'Dean List', 'Soccer Club', 'English', 0, 'Exercise Physiology, Biomechanics', 'Psychology', 'Impact of Nutrition on Performance', 'Dr Smith', 'DIP12345', 'Regional Accrediting Board', 'Undergraduate', 'N/A');
INSERT INTO Player_Educitional_Background (player_api_id, highest_degree, institution_name, graduation_year, field_of_study, gpa, scholarship_status, honors, extracurriculars, language_proficiency, study_abroad, major_courses, minor, thesis_title, advisor_name, diploma_number, accreditation_body, education_level, notes) VALUES (102, 'Master of Arts', 'National Institute', 2020, 'Management', 3.9, 'Partial', 'Cum Laude', 'Student Council', 'Spanish', 1, 'Leadership, Strategy', 'Economics', 'Team Dynamics in Professional Sports', 'Prof Garcia', 'DIP67890', 'International Accrediting Council', 'Postgraduate', 'Scholarship awarded for research');
INSERT INTO Player_Educational_Background (player_api_id, highest_degree, institution_name, graduation_year, field_of_study, gpa, scholarship_status, honors, extracurriculars, language_proficiency, study_abroad, major_courses, minor, thesis_title, advisor_name, diploma_number, accreditation_body, education_level, notes) VALUES (103, 'High School Diploma', 'Central High', 2015, 'General Studies', 3.2, 'None', 'Honor Roll', 'Debate Team', 'French', 0, 'Physical Education, Math', 'None', 'N/A', 'N/A', 'HS123', 'State Education Board', 'Secondary', 'Graduated with honors');

-- Aquatic facilities within stadium complexes
CREATE TABLE Stadium_Aquatic_Facilities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    pool_name TEXT,
    pool_type TEXT,
    length_m INTEGER,
    width_m INTEGER,
    depth_m REAL,
    capacity INTEGER,
    water_heating BOOLEAN,
    chlorination_system TEXT,
    filtration_rate_lph INTEGER,
    opening_year INTEGER,
    is_olympic BOOLEAN,
    surface_material TEXT,
    last_renovation_year INTEGER,
    maintenance_company TEXT,
    schedule TEXT,
    accessibility_features TEXT,
    lighting_type TEXT,
    emergency_exit_count INTEGER,
    ticketed_events BOOLEAN
);
INSERT INTO Stadium_Aquatic_Facilities (stadium_id, pool_name, pool_type, length_m, width_m, depth_m, capacity, water_heating, chlorination_system, filtration_rate_lph, opening_year, is_olympic, surface_material, last_renovation_year, maintenance_company, schedule, accessibility_features, lighting_type, emergency_exit_count, ticketed_events) VALUES (1, 'Olympic Plaza', 'Competition', 50, 25, 2.5, 2000, 1, 'UV', 12000, 2010, 1, 'Tile', 2022, 'AquaCare Ltd', 'Mon-Fri 08:00-20:00', 'Ramp, Braille', 'LED', 8, 1);
INSERT INTO Stadium_Aquatic_Facilities (stadium_id, pool_name, pool_type, length_m, width_m, depth_m, capacity, water_heating, chlorination_system, filtration_rate_lph, opening_year, is_olympic, surface_material, last_renovation_year, maintenance_company, schedule, accessibility_features, lighting_type, emergency_exit_count, ticketed_events) VALUES (2, 'Family Wave', 'Recreation', 25, 12, 1.8, 500, 0, 'Salt', 8000, 2015, 0, 'Fiberglass', 2020, 'BlueWater Services', 'Sat-Sun 10:00-22:00', 'Lift, Handrails', 'Halogen', 4, 0);
INSERT INTO Stadium_Aquatic_Facilities (stadium_id, pool_name, pool_type, length_m, width_m, depth_m, capacity, water_heating, chlorination_system, filtration_rate_lph, opening_year, is_olympic, surface_material, last_renovation_year, maintenance_company, schedule, accessibility_features, lighting_type, emergency_exit_count, ticketed_events) VALUES (3, 'Training Depth', 'Training', 30, 15, 3.0, 300, 1, 'Ozone', 15000, 2012, 0, 'Concrete', 2018, 'SportTech Maintenance', 'Mon-Sun 06:00-23:00', 'Wheelchair Access', 'LED', 6, 0);

-- Legal contracts held by clubs
CREATE TABLE Club_Legal_Contracts (
    contract_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    contract_type TEXT,
    party_name TEXT,
    start_date TEXT,
    end_date TEXT,
    governing_law TEXT,
    jurisdiction TEXT,
    contract_value REAL,
    currency TEXT,
    renewal_option TEXT,
    termination_clause TEXT,
    confidentiality_level TEXT,
    governing_body TEXT,
    signed_by TEXT,
    witness TEXT,
    amendment_count INTEGER,
    dispute_resolution_mechanism TEXT,
    compliance_status TEXT,
    remarks TEXT
);
INSERT INTO Club_Legal_Contracts (club_id, contract_type, party_name, start_date, end_date, governing_law, jurisdiction, contract_value, currency, renewal_option, termination_clause, confidentiality_level, governing_body, signed_by, witness, amendment_count, dispute_resolution_mechanism, compliance_status, remarks) VALUES (1, 'Sponsorship', 'GlobalTech', '2023-01-01', '2025-12-31', 'Common Law', 'England', 2500000, 'GBP', 'Automatic', '30 days notice', 'High', 'FA', 'John Doe', 'Jane Smith', 2, 'Arbitration', 'Compliant', 'Includes branding on kits');
INSERT INTO Club_Legal_Contracts (club_id, contract_type, party_name, start_date, end_date, governing_law, jurisdiction, contract_value, currency, renewal_option, termination_clause, confidentiality_level, governing_body, signed_by, witness, amendment_count, dispute_resolution_mechanism, compliance_status, remarks) VALUES (2, 'Broadcast Rights', 'StreamNow', '2022-07-15', '2027-07-14', 'Civil Code', 'Germany', 4800000, 'EUR', 'Negotiable', 'Breach clause', 'Medium', 'DFL', 'Anna Keller', 'Mark Braun', 1, 'Mediation', 'Pending', 'Exclusive digital streaming');
INSERT INTO Club_Legal_Contracts (club_id, contract_type, party_name, start_date, end_date, governing_law, jurisdiction, contract_value, currency, renewal_option, termination_clause, confidentiality_level, governing_body, signed_by, witness, amendment_count, dispute_resolution_mechanism, compliance_status, remarks) VALUES (3, 'Facility Lease', 'City Council', '2021-03-01', '2031-02-28', 'Statutory Law', 'Spain', 1500000, 'EUR', '10 year', 'Force Majeure', 'Low', 'Local Authority', 'Carlos Ruiz', 'Maria Lopez', 0, 'Litigation', 'Compliant', 'Includes training ground access');

-- Logistics tracking for team merchandise
CREATE TABLE Team_Merchandise_Logistics (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    merchandise_item TEXT,
    sku TEXT,
    warehouse_location TEXT,
    quantity_on_hand INTEGER,
    quantity_shipped INTEGER,
    shipment_date TEXT,
    carrier_name TEXT,
    tracking_number TEXT,
    cost_per_unit REAL,
    total_cost REAL,
    destination_country TEXT,
    delivery_status TEXT,
    restock_threshold INTEGER,
    reorder_quantity INTEGER,
    last_audit_date TEXT,
    quality_check_passed BOOLEAN,
    supplier_name TEXT,
    packaging_type TEXT,
    insurance_coverage REAL
);
INSERT INTO Team_Merchandise_Logistics (team_id, merchandise_item, sku, warehouse_location, quantity_on_hand, quantity_shipped, shipment_date, carrier_name, tracking_number, cost_per_unit, total_cost, destination_country, delivery_status, restock_threshold, reorder_quantity, last_audit_date, quality_check_passed, supplier_name, packaging_type, insurance_coverage) VALUES (1, 'Home Jersey 2024', 'HJ2024', 'WH-A1', 1200, 300, '2024-02-10', 'FastShip', 'TRK123456', 45.00, 54000.00, 'UK', 'Delivered', 200, 500, '2024-01-20', 1, 'TextileCo', 'Box', 5000.00);
INSERT INTO Team_Merchandise_Logistics (team_id, merchandise_item, sku, warehouse_location, quantity_on_hand, quantity_shipped, shipment_date, carrier_name, tracking_number, cost_per_unit, total_cost, destination_country, delivery_status, restock_threshold, reorder_quantity, last_audit_date, quality_check_passed, supplier_name, packaging_type, insurance_coverage) VALUES (2, 'Scarf Winter', 'SCW2024', 'WH-B3', 800, 150, '2024-01-25', 'LogiLog', 'TRK789012', 12.50, 1875.00, 'Germany', 'In Transit', 100, 300, '2024-01-15', 1, 'GearMakers', 'Bag', 2000.00);
INSERT INTO Team_Merchandise_Logistics (team_id, merchandise_item, sku, warehouse_location, quantity_on_hand, quantity_shipped, shipment_date, carrier_name, tracking_number, cost_per_unit, total_cost, destination_country, delivery_status, restock_threshold, reorder_quantity, last_audit_date, quality_check_passed, supplier_name, packaging_type, insurance_coverage) VALUES (3, 'Cap Summer', 'CAP2024', 'WH-C2', 500, 80, '2024-03-01', 'QuickDelivery', 'TRK345678', 8.00, 640.00, 'France', 'Pending', 50, 200, '2024-02-28', 0, 'CapWorks', 'Envelope', 1000.00);

-- Media archive for league content
CREATE TABLE League_Media_Archive (
    archive_id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    media_type TEXT,
    title TEXT,
    description TEXT,
    file_path TEXT,
    file_size_mb REAL,
    duration_seconds INTEGER,
    creator TEXT,
    upload_date TEXT,
    access_level TEXT,
    tags TEXT,
    language TEXT,
    resolution TEXT,
    frame_rate INTEGER,
    codec TEXT,
    rights_holder TEXT,
    expiration_date TEXT,
    view_count INTEGER,
    rating REAL
);
INSERT INTO League_Media_Archive (league_id, media_type, title, description, file_path, file_size_mb, duration_seconds, creator, upload_date, access_level, tags, language, resolution, frame_rate, codec, rights_holder, expiration_date, view_count, rating) VALUES (1, 'Video', 'Season Opener Highlights', 'Highlights from opening match', '/media/league1/opener.mp4', 350.5, 540, 'MediaTeam', '2023-09-01', 'Public', 'highlights,opening', 'English', '1920x1080', 30, 'H.264', 'League Media', '2025-12-31', 125000, 4.5);
INSERT INTO League_Media_Archive (league_id, media_type, title, description, file_path, file_size_mb, duration_seconds, creator, upload_date, access_level, tags, language, resolution, frame_rate, codec, rights_holder, expiration_date, view_count, rating) VALUES (2, 'Audio', 'Interview with Coach', 'Audio interview after cup final', '/media/league2/coach_interview.mp3', 45.2, 1800, 'AudioDept', '2024-05-15', 'Members', 'interview,coach', 'Spanish', 'N/A', 0, 'MP3', 'League Audio', '2026-05-14', 34000, 4.8);
INSERT INTO League_Media_Archive (league_id, media_type, title, description, file_path, file_size_mb, duration_seconds, creator, upload_date, access_level, tags, language, resolution, frame_rate, codec, rights_holder, expiration_date, view_count, rating) VALUES (3, 'Document', 'Regulation Update 2024', 'PDF of new rule changes', '/media/league3/reg2024.pdf', 2.8, 0, 'LegalTeam', '2024-01-20', 'Staff', 'regulation,2024', 'English', 'N/A', 0, 'PDF', 'League Office', '2028-12-31', 8000, 4.2);

-- Heatmap data layers for matches
CREATE TABLE Match_Heatmap_Layers (
    layer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    layer_name TEXT,
    data_source TEXT,
    generation_method TEXT,
    timestamp TEXT,
    resolution TEXT,
    color_scheme TEXT,
    opacity REAL,
    is_public BOOLEAN,
    notes TEXT,
    file_path TEXT,
    file_size_mb REAL,
    analyzer TEXT,
    version INTEGER,
    related_layer_id INTEGER,
    validation_status TEXT,
    heat_intensity_scale TEXT,
    aggregation_method TEXT,
    created_by TEXT
);
INSERT INTO Match_Heatmap_Layers (match_id, layer_name, data_source, generation_method, timestamp, resolution, color_scheme, opacity, is_public, notes, file_path, file_size_mb, analyzer, version, related_layer_id, validation_status, heat_intensity_scale, aggregation_method, created_by) VALUES (1001, 'Pass Density', 'TrackingSensors', 'KernelDensity', '2024-03-10 15:30:00', '1024x768', 'RedBlue', 0.8, 1, 'Includes all passes', '/heatmaps/pass_density_1001.png', 12.4, 'HeatMapPro', 3, NULL, 'Validated', '0-10', 'Temporal', 'AnalystA');
INSERT INTO Match_Heatmap_Layers (match_id, layer_name, data_source, generation_method, timestamp, resolution, color_scheme, opacity, is_public, notes, file_path, file_size_mb, analyzer, version, related_layer_id, validation_status, heat_intensity_scale, aggregation_method, created_by) VALUES (1002, 'Shot Zones', 'VideoReview', 'GridAnalysis', '2024-03-11 18:45:00', '1280x720', 'GreenYellow', 0.7, 0, 'Focus on attacking third', '/heatmaps/shot_zones_1002.png', 15.0, 'ShotMapX', 2, NULL, 'Pending', 'Low-High', 'Spatial', 'AnalystB');
INSERT INTO Match_Heatmap_Layers (match_id, layer_name, data_source, generation_method, timestamp, resolution, color_scheme, opacity, is_public, notes, file_path, file_size_mb, analyzer, version, related_layer_id, validation_status, heat_intensity_scale, aggregation_method, created_by) VALUES (1003, 'Player Pressure', 'Wearables', 'ForceMapping', '2024-03-12 20:10:00', '1920x1080', 'PurpleOrange', 0.9, 1, 'Defensive pressure metrics', '/heatmaps/player_pressure_1003.png', 18.2, 'PressureCalc', 1, NULL, 'Validated', '0-5', 'Cumulative', 'AnalystC');

-- Sustainability certifications for venues
CREATE TABLE Venue_Sustainability_Certifications (
    cert_id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    certification_name TEXT,
    issuing_body TEXT,
    issue_date TEXT,
    expiration_date TEXT,
    level TEXT,
    criteria_met TEXT,
    carbon_offset_amount REAL,
    water_savings_liters REAL,
    waste_reduction_percent REAL,
    renewable_energy_percent REAL,
    green_building_rating INTEGER,
    audit_report_path TEXT,
    compliance_status TEXT,
    notes TEXT,
    certified_by TEXT,
    verification_method TEXT,
    recertification_required BOOLEAN,
    next_audit_date TEXT
);
INSERT INTO Venue_Sustainability_Certifications (venue_id, certification_name, issuing_body, issue_date, expiration_date, level, criteria_met, carbon_offset_amount, water_savings_liters, waste_reduction_percent, renewable_energy_percent, green_building_rating, audit_report_path, compliance_status, notes, certified_by, verification_method, recertification_required, next_audit_date) VALUES (1, 'LEED Gold', 'USGBC', '2022-06-15', '2027-06-14', 'Gold', 'Energy, Water, Materials', 1500.5, 250000.0, 35.0, 40.0, 85, '/audit/venue1_leed.pdf', 'Compliant', 'First LEED award', 'John Green', 'Onsite Audit', 1, '2027-06-01');
INSERT INTO Venue_Sustainability_Certifications (venue_id, certification_name, issuing_body, issue_date, expiration_date, level, criteria_met, carbon_offset_amount, water_savings_liters, waste_reduction_percent, renewable_energy_percent, green_building_rating, audit_report_path, compliance_status, notes, certified_by, verification_method, recertification_required, next_audit_date) VALUES (2, 'BREEAM Excellent', 'BRE Group', '2021-09-01', '2026-08-31', 'Excellent', 'Management, Energy, Waste', 2000.0, 300000.0, 40.0, 45.0, 90, '/audit/venue2_breeam.pdf', 'Compliant', 'Achieved highest tier', 'Emily White', 'Third Party Review', 1, '2026-08-15');
INSERT INTO Venue_Sustainability_Certifications (venue_id, certification_name, issuing_body, issue_date, expiration_date, level, criteria_met, carbon_offset_amount, water_savings_liters, waste_reduction_percent, renewable_energy_percent, green_building_rating, audit_report_path, compliance_status, notes, certified_by, verification_method, recertification_required, next_audit_date) VALUES (3, 'ISO 14001', 'ISO', '2020-02-20', '2025-02-19', 'Standard', 'Environmental Management', 1200.0, 180000.0, 30.0, 25.0, 78, '/audit/venue3_iso14001.pdf', 'Compliant', 'Renewed 2020', 'Mark Black', 'Internal Audit', 1, '2025-02-05');

-- Fan gamification elements
CREATE TABLE Fan_Gamification_Elements (
    element_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_club_id INTEGER,
    element_type TEXT,
    name TEXT,
    description TEXT,
    points_required INTEGER,
    reward_type TEXT,
    reward_value REAL,
    activation_date TEXT,
    expiry_date TEXT,
    usage_limit INTEGER,
    status TEXT,
    tier TEXT,
    image_path TEXT,
    sound_effect_path TEXT,
    eligibility_criteria TEXT,
    batch_number TEXT,
    launch_campaign TEXT,
    collected_count INTEGER,
    feedback_score REAL
);
INSERT INTO Fan_Gamification_Elements (fan_club_id, element_type, name, description, points_required, reward_type, reward_value, activation_date, expiry_date, usage_limit, status, tier, image_path, sound_effect_path, eligibility_criteria, batch_number, launch_campaign, collected_count, feedback_score) VALUES (1, 'Badge', 'Super Supporter', 'Earned after attending 10 matches', 5000, 'Badge', 0, '2024-01-01', '2024-12-31', 1, 'Active', 'Gold', '/images/badge_super.png', '/sounds/badge.wav', 'Season Ticket Holder', 'BCH001', 'Winter Campaign', 250, 4.7);
INSERT INTO Fan_Gamification_Elements (fan_club_id, element_type, name, description, points_required, reward_type, reward_value, activation_date, expiry_date, usage_limit, status, tier, image_path, sound_effect_path, eligibility_criteria, batch_number, launch_campaign, collected_count, feedback_score) VALUES (2, 'Coupon', 'Free Drink', 'Redeemable at stadium bar', 1500, 'Coupon', 5.00, '2024-03-15', '2024-09-15', 2, 'Active', 'Silver', '/images/coupon_drink.png', '/sounds/coupon.wav', 'Purchase of Club Merchandise', 'CPN045', 'Spring Promo', 800, 4.3);
INSERT INTO Fan_Gamification_Elements (fan_club_id, element_type, name, description, points_required, reward_type, reward_value, activation_date, expiry_date, usage_limit, status, tier, image_path, sound_effect_path, eligibility_criteria, batch_number, launch_campaign, collected_count, feedback_score) VALUES (3, 'Challenge', 'Goal Predictor', 'Predict match score for extra points', 3000, 'Points', 0, '2024-05-01', '2024-11-01', 0, 'Active', 'Bronze', '/images/challenge_predict.png', '/sounds/challenge.wav', 'All registered fans', 'CHL789', 'Midseason Drive', 1200, 4.5);

-- Sponsor financial contributions tracking
CREATE TABLE Sponsor_Financial_Contributions (
    contrib_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    season TEXT,
    contribution_type TEXT,
    amount REAL,
    currency TEXT,
    payment_date TEXT,
    installment_number INTEGER,
    total_installments INTEGER,
    allocation_category TEXT,
    agreed_upon_roi TEXT,
    tax_deductible BOOLEAN,
    receipt_number TEXT,
    approved_by TEXT,
    compliance_check TEXT,
    notes TEXT,
    audit_status TEXT,
    signature TEXT,
    fund_source TEXT,
    reporting_period TEXT
);
INSERT INTO Sponsor_Financial_Contributions (sponsor_id, season, contribution_type, amount, currency, payment_date, installment_number, total_installments, allocation_category, agreed_upon_roi, tax_deductible, receipt_number, approved_by, compliance_check, notes, audit_status, signature, fund_source, reporting_period) VALUES (1, '2023/24', 'Cash', 750000, 'USD', '2023-07-01', 1, 4, 'Club Operations', 'Brand Exposure', 1, 'RCPT001', 'Finance Director', 'Passed', 'Initial deposit', 'Completed', 'JSmith', 'Corporate Funds', 'Q3 2023');
INSERT INTO Sponsor_Financial_Contributions (sponsor_id, season, contribution_type, amount, currency, payment_date, installment_number, total_installments, allocation_category, agreed_upon_roi, tax_deductible, receipt_number, approved_by, compliance_check, notes, audit_status, signature, fund_source, reporting_period) VALUES (2, '2023/24', 'In-Kind', 120000, 'USD', '2023-08-15', 2, 2, 'Equipment', 'Product Placement', 0, 'RCPT045', 'Operations Manager', 'Pending', 'Delivery scheduled', 'In Progress', 'ALee', 'Product Inventory', 'Q4 2023');
INSERT INTO Sponsor_Financial_Contributions (sponsor_id, season, contribution_type, amount, currency, payment_date, installment_number, total_installments, allocation_category, agreed_upon_roi, tax_deductible, receipt_number, approved_by, compliance_check, notes, audit_status, signature, fund_source, reporting_period) VALUES (3, '2024/25', 'Cash', 500000, 'EUR', '2024-01-10', 1, 1, 'Youth Academy', 'Community Impact', 1, 'RCPT099', 'Youth Coordinator', 'Passed', 'Full amount for academy', 'Completed', 'MClark', 'Corporate Funds', 'Q1 2024');

-- Maintenance records for training center equipment
CREATE TABLE Training_Center_Equipment_Maintenance (
    maintenance_id INTEGER PRIMARY KEY AUTOINCREMENT,
    center_id INTEGER,
    equipment_id INTEGER,
    equipment_name TEXT,
    maintenance_type TEXT,
    scheduled_date TEXT,
    actual_date TEXT,
    technician_name TEXT,
    duration_minutes INTEGER,
    parts_replaced TEXT,
    cost REAL,
    downtime_minutes INTEGER,
    next_service_due TEXT,
    maintenance_status TEXT,
    warranty_covered BOOLEAN,
    notes TEXT,
    compliance_code TEXT,
    safety_check_passed BOOLEAN,
    calibration_required BOOLEAN,
    last_inspection_date TEXT
);
INSERT INTO Training_Center_Equipment_Maintenance (center_id, equipment_id, equipment_name, maintenance_type, scheduled_date, actual_date, technician_name, duration_minutes, parts_replaced, cost, downtime_minutes, next_service_due, maintenance_status, warranty_covered, notes, compliance_code, safety_check_passed, calibration_required, last_inspection_date) VALUES (1, 101, 'Treadmill X200', 'Preventive', '2024-04-01', '2024-04-01', 'Mike Harris', 90, 'Belt', 150.00, 30, '2024-10-01', 'Completed', 1, 'Routine belt replacement', 'TC001', 1, 0, '2024-03-20');
INSERT INTO Training_Center_Equipment_Maintenance (center_id, equipment_id, equipment_name, maintenance_type, scheduled_date, actual_date, technician_name, duration_minutes, parts_replaced, cost, downtime_minutes, next_service_due, maintenance_status, warranty_covered, notes, compliance_code, safety_check_passed, calibration_required, last_inspection_date) VALUES (2, 202, 'Force Plate Pro', 'Calibration', '2024-04-15', '2024-04-16', 'Sarah Lee', 45, 'Sensor Module', 200.00, 15, '2024-10-15', 'Completed', 0, 'Recalibrated after firmware update', 'TC002', 1, 1, '2024-04-01');
INSERT INTO Training_Center_Equipment_Maintenance (center_id, equipment_id, equipment_name, maintenance_type, scheduled_date, actual_date, technician_name, duration_minutes, parts_replaced, cost, downtime_minutes, next_service_due, maintenance_status, warranty_covered, notes, compliance_code, safety_check_passed, calibration_required, last_inspection_date) VALUES (3, 303, 'Speed Lane 4', 'Repair', '2024-05-05', '2024-05-06', 'Jon Patel', 120, 'Motor', 350.00, 60, '2024-11-05', 'Completed', 1, 'Motor failure resolved', 'TC003', 1, 0, '2024-04-28');