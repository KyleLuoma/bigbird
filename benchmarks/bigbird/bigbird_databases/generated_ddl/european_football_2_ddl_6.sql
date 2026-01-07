-- Climate impact studies related to stadiums and matches
CREATE TABLE Climate_Impact_Studies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    match_id INTEGER,
    study_date TEXT,
    avg_temperature REAL,
    max_temperature REAL,
    min_temperature REAL,
    humidity REAL,
    precipitation_mm REAL,
    wind_speed_kmh REAL,
    co2_emissions_kg REAL,
    energy_consumption_mwh REAL,
    waste_generated_kg REAL,
    recycling_rate_percent REAL,
    noise_level_db REAL,
    solar_panel_output_mwh REAL,
    water_usage_cubic_m REAL,
    carbon_offset_credits INTEGER,
    methodology TEXT,
    analyst_name TEXT,
    notes TEXT
);

INSERT INTO Climate_Impact_Studies (stadium_id, match_id, study_date, avg_temperature, max_temperature, min_temperature, humidity, precipitation_mm, wind_speed_kmh, co2_emissions_kg, energy_consumption_mwh, waste_generated_kg, recycling_rate_percent, noise_level_db, solar_panel_output_mwh, water_usage_cubic_m, carbon_offset_credits, methodology, analyst_name, notes)
VALUES (1, 101, '2023-05-12', 22.5, 28.0, 15.3, 60.0, 0.0, 12.5, 1500, 3.2, 500, 45.0, 95.0, 0.5, 1200, 200, 'Standard', 'John Doe', 'No anomalies');

INSERT INTO Climate_Impact_Studies (stadium_id, match_id, study_date, avg_temperature, max_temperature, min_temperature, humidity, precipitation_mm, wind_speed_kmh, co2_emissions_kg, energy_consumption_mwh, waste_generated_kg, recycling_rate_percent, noise_level_db, solar_panel_output_mwh, water_usage_cubic_m, carbon_offset_credits, methodology, analyst_name, notes)
VALUES (2, 102, '2023-06-20', 24.1, 30.2, 16.8, 55.0, 2.3, 8.7, 1320, 2.8, 420, 50.0, 92.0, 0.7, 1150, 180, 'Advanced', 'Maria Lee', 'Light rain');

INSERT INTO Climate_Impact_Studies (stadium_id, match_id, study_date, avg_temperature, max_temperature, min_temperature, humidity, precipitation_mm, wind_speed_kmh, co2_emissions_kg, energy_consumption_mwh, waste_generated_kg, recycling_rate_percent, noise_level_db, solar_panel_output_mwh, water_usage_cubic_m, carbon_offset_credits, methodology, analyst_name, notes)
VALUES (3, 103, '2023-07-05', 19.8, 25.0, 14.2, 70.0, 0.0, 15.2, 1600, 3.5, 550, 40.0, 98.0, 0.4, 1300, 210, 'Standard', 'Liu Chen', 'High humidity');

-- Digital brand partnership details for clubs
CREATE TABLE Digital_Brand_Partnerships (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    brand_name TEXT,
    partnership_start TEXT,
    partnership_end TEXT,
    contract_value_usd INTEGER,
    digital_campaigns INTEGER,
    social_impressions INTEGER,
    video_views INTEGER,
    click_through_rate REAL,
    engagement_rate REAL,
    platform_primary TEXT,
    platform_secondary TEXT,
    branding_assets INTEGER,
    exclusive_rights BOOLEAN,
    renewal_option BOOLEAN,
    performance_bonus_usd INTEGER,
    contract_status TEXT,
    manager_contact TEXT,
    notes TEXT,
    compliance_score REAL
);

INSERT INTO Digital_Brand_Partnerships (club_id, brand_name, partnership_start, partnership_end, contract_value_usd, digital_campaigns, social_impressions, video_views, click_through_rate, engagement_rate, platform_primary, platform_secondary, branding_assets, exclusive_rights, renewal_option, performance_bonus_usd, contract_status, manager_contact, notes, compliance_score)
VALUES (10, 'TechNova', '2022-01-01', '2025-12-31', 5000000, 12, 25000000, 8000000, 0.045, 0.12, 'Instagram', 'YouTube', 15, 1, 1, 500000, 'Active', 'alice.smith', 'Renewal pending', 92.5);

INSERT INTO Digital_Brand_Partnerships (club_id, brand_name, partnership_start, partnership_end, contract_value_usd, digital_campaigns, social_impressions, video_views, click_through_rate, engagement_rate, platform_primary, platform_secondary, branding_assets, exclusive_rights, renewal_option, performance_bonus_usd, contract_status, manager_contact, notes, compliance_score)
VALUES (12, 'FitGear', '2021-07-15', '2024-07-14', 3200000, 9, 18000000, 5400000, 0.038, 0.10, 'Twitter', 'TikTok', 10, 0, 1, 250000, 'Active', 'bob.jones', 'Mid‑term review completed', 88.0);

INSERT INTO Digital_Brand_Partnerships (club_id, brand_name, partnership_start, partnership_end, contract_value_usd, digital_campaigns, social_impressions, video_views, click_through_rate, engagement_rate, platform_primary, platform_secondary, branding_assets, exclusive_rights, renewal_option, performance_bonus_usd, contract_status, manager_contact, notes, compliance_score)
VALUES (15, 'EcoDrink', '2023-03-01', '2026-02-28', 2100000, 6, 9500000, 3100000, 0.042, 0.11, 'Facebook', 'Snapchat', 8, 1, 0, 150000, 'Pending', 'carol.tan', 'Initial phase', 90.2);

-- Fan reward program tracking
CREATE TABLE Fan_Reward_Program (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    program_start TEXT,
    tier TEXT,
    points_balance INTEGER,
    tier_points_required INTEGER,
    last_redeemed TEXT,
    last_activity TEXT,
    email_opt_in BOOLEAN,
    sms_opt_in BOOLEAN,
    preferred_reward_category TEXT,
    total_spent_usd INTEGER,
    attendance_count INTEGER,
    merchandise_purchases INTEGER,
    social_shares INTEGER,
    referral_count INTEGER,
    anniversary_bonus BOOLEAN,
    last_login TEXT,
    status TEXT,
    notes TEXT,
    loyalty_score REAL
);

INSERT INTO Fan_Reward_Program (fan_id, program_start, tier, points_balance, tier_points_required, last_redeemed, last_activity, email_opt_in, sms_opt_in, preferred_reward_category, total_spent_usd, attendance_count, merchandise_purchases, social_shares, referral_count, anniversary_bonus, last_login, status, notes, loyalty_score)
VALUES (1001, '2020-09-10', 'Gold', 12450, 20000, '2023-04-15', '2023-12-01', 1, 0, 'Tickets', 850, 45, 12, 30, 5, 1, '2023-12-02', 'Active', 'Frequent traveler', 87.4);

INSERT INTO Fan_Reward_Program (fan_id, program_start, tier, points_balance, tier_points_required, last_redeemed, last_activity, email_opt_in, sms_opt_in, preferred_reward_category, total_spent_usd, attendance_count, merchandise_purchases, social_shares, referral_count, anniversary_bonus, last_login, status, notes, loyalty_score)
VALUES (1023, '2021-03-22', 'Silver', 6300, 15000, '2023-05-20', '2023-11-20', 1, 1, 'Merchandise', 420, 20, 8, 12, 2, 0, '2023-11-21', 'Active', 'Prefers apparel', 74.1);

INSERT INTO Fan_Reward_Program (fan_id, program_start, tier, points_balance, tier_points_required, last_redeemed, last_activity, email_opt_in, sms_opt_in, preferred_reward_category, total_spent_usd, attendance_count, merchandise_purchases, social_shares, referral_count, anniversary_bonus, last_login, status, notes, loyalty_score)
VALUES (1088, '2019-11-05', 'Platinum', 21500, 30000, '2023-03-10', '2023-12-03', 1, 1, 'Experiences', 1550, 78, 22, 55, 9, 1, '2023-12-04', 'Active', 'VIP lounge access', 94.6);

-- Venue maintenance logs
CREATE TABLE Venue_Maintenance_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    maintenance_date TEXT,
    subsystem TEXT,
    issue_description TEXT,
    severity_level INTEGER,
    downtime_minutes INTEGER,
    technician_id INTEGER,
    parts_used TEXT,
    cost_usd INTEGER,
    safety_check_passed BOOLEAN,
    follow_up_required BOOLEAN,
    next_scheduled TEXT,
    work_order_number TEXT,
    maintenance_type TEXT,
    warranty_covered BOOLEAN,
    external_vendor TEXT,
    comments TEXT,
    approved_by TEXT,
    status TEXT,
    total_time_spent_minutes INTEGER
);

INSERT INTO Venue_Maintenance_Logs (venue_id, maintenance_date, subsystem, issue_description, severity_level, downtime_minutes, technician_id, parts_used, cost_usd, safety_check_passed, follow_up_required, next_scheduled, work_order_number, maintenance_type, warranty_covered, external_vendor, comments, approved_by, status, total_time_spent_minutes)
VALUES (5, '2023-08-12', 'HVAC', 'Compressor failure causing low airflow', 3, 180, 27, 'CompressorX200', 4200, 1, 1, '2023-09-10', 'WO-8421', 'Repair', 0, 'CoolTech Services', 'Replaced unit, system stable', 'david.ward', 'Closed', 240);

INSERT INTO Venue_Maintenance_Logs (venue_id, maintenance_date, subsystem, issue_description, severity_level, downtime_minutes, technician_id, parts_used, cost_usd, safety_check_passed, follow_up_required, next_scheduled, work_order_number, maintenance_type, warranty_covered, external_vendor, comments, approved_by, status, total_time_spent_minutes)
VALUES (7, '2023-07-05', 'Lighting', 'LED panel flickering on section B', 2, 45, 15, 'LEDPanelA12', 800, 1, 0, '2023-08-01', 'WO-7619', 'Inspection', 1, 'BrightLights Co', 'Adjusted drivers, issue resolved', 'emma.cole', 'Closed', 60);

INSERT INTO Venue_Maintenance_Logs (venue_id, maintenance_date, subsystem, issue_description, severity_level, downtime_minutes, technician_id, parts_used, cost_usd, safety_check_passed, follow_up_required, next_scheduled, work_order_number, maintenance_type, warranty_covered, external_vendor, comments, approved_by, status, total_time_spent_minutes)
VALUES (3, '2023-09-20', 'Plumbing', 'Blocked drain in restroom 3', 1, 30, 9, 'DrainCleaner', 150, 1, 0, '2023-10-15', 'WO-9134', 'Cleaning', 1, '', 'Cleared blockage, flow normal', 'liam.brown', 'Closed', 45);

-- Player contract clauses (non‑performance related)
CREATE TABLE Player_Contract_Clauses (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    contract_id INTEGER,
    clause_type TEXT,
    clause_description TEXT,
    effective_date TEXT,
    expiration_date TEXT,
    penalty_amount_usd INTEGER,
    bonus_amount_usd INTEGER,
    enforceable BOOLEAN,
    jurisdiction TEXT,
    amendment_number INTEGER,
    signed_by_player BOOLEAN,
    signed_by_club BOOLEAN,
    mediator TEXT,
    clause_status TEXT,
    notes TEXT,
    legal_reviewed BOOLEAN,
    confidentiality_level TEXT,
    renewal_option BOOLEAN,
    clause_id TEXT
);

INSERT INTO Player_Contract_Clauses (player_api_id, contract_id, clause_type, clause_description, effective_date, expiration_date, penalty_amount_usd, bonus_amount_usd, enforceable, jurisdiction, amendment_number, signed_by_player, signed_by_club, mediator, clause_status, notes, legal_reviewed, confidentiality_level, renewal_option, clause_id)
VALUES (2501, 4001, 'Image Rights', 'Club may use player likeness for marketing', '2022-01-01', '2025-12-31', 0, 200000, 1, 'England', 0, 1, 1, 'Anna Gray', 'Active', 'Standard clause', 1, 'High', 1, 'CL-IMG-001');

INSERT INTO Player_Contract_Clauses (player_api_id, contract_id, clause_type, clause_description, effective_date, expiration_date, penalty_amount_usd, bonus_amount_usd, enforceable, jurisdiction, amendment_number, signed_by_player, signed_by_club, mediator, clause_status, notes, legal_reviewed, confidentiality_level, renewal_option, clause_id)
VALUES (2673, 4015, 'Social Media', 'Player must obtain club approval before posting sponsored content', '2023-07-01', '2026-06-30', 50000, 0, 1, 'Spain', 1, 1, 1, 'Javier Soto', 'Active', 'Added after amendment 1', 1, 'Medium', 0, 'CL-SM-003');

INSERT INTO Player_Contract_Clauses (player_api_id, contract_id, clause_type, clause_description, effective_date, expiration_date, penalty_amount_usd, bonus_amount_usd, enforceable, jurisdiction, amendment_number, signed_by_player, signed_by_club, mediator, clause_status, notes, legal_reviewed, confidentiality_level, renewal_option, clause_id)
VALUES (2799, 4032, 'Travel', 'Club covers all international travel expenses', '2021-08-15', '2024-08-14', 0, 0, 1, 'Germany', 0, 1, 1, 'Klara Feld', 'Active', 'Standard travel clause', 1, 'Low', 1, 'CL-TRV-002');

-- Historical transfer fee data (non‑performance related)
CREATE TABLE Historical_Transfer_Fees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    from_club_id INTEGER,
    to_club_id INTEGER,
    transfer_date TEXT,
    transfer_fee_usd INTEGER,
    currency TEXT,
    exchange_rate_to_usd REAL,
    agreement_type TEXT,
    add_on_clauses TEXT,
    payment_structure TEXT,
    agent_fee_usd INTEGER,
    solidarity_contribution_usd INTEGER,
    medical_clause BOOLEAN,
    work_permit_required BOOLEAN,
    transfer_window TEXT,
    notes TEXT,
    source TEXT,
    verified BOOLEAN,
    public_announced BOOLEAN,
    confidentiality_clause BOOLEAN
);

INSERT INTO Historical_Transfer_Fees (player_api_id, from_club_id, to_club_id, transfer_date, transfer_fee_usd, currency, exchange_rate_to_usd, agreement_type, add_on_clauses, payment_structure, agent_fee_usd, solidarity_contribution_usd, medical_clause, work_permit_required, transfer_window, notes, source, verified, public_announced, confidentiality_clause)
VALUES (3102, 14, 27, '2022-01-20', 75000000, 'EUR', 1.08, 'Permanent', 'Performance bonus 10%', '3 installments', 5000000, 250000, 1, 0, 'Winter', 'High profile transfer', 'ClubStatement', 1, 1, 0);

INSERT INTO Historical_Transfer_Fees (player_api_id, from_club_id, to_club_id, transfer_date, transfer_fee_usd, currency, exchange_rate_to_usd, agreement_type, add_on_clauses, payment_structure, agent_fee_usd, solidarity_contribution_usd, medical_clause, work_permit_required, transfer_window, notes, source, verified, public_announced, confidentiality_clause)
VALUES (3256, 33, 40, '2021-07-15', 12000000, 'GBP', 1.30, 'Loan', 'Option to buy', 'Upfront', 800000, 120000, 0, 1, 'Summer', 'Season‑long loan', 'MediaReport', 1, 1, 0);

INSERT INTO Historical_Transfer_Fees (player_api_id, from_club_id, to_club_id, transfer_date, transfer_fee_usd, currency, exchange_rate_to_usd, agreement_type, add_on_clauses, payment_structure, agent_fee_usd, solidarity_contribution_usd, medical_clause, work_permit_required, transfer_window, notes, source, verified, public_announced, confidentiality_clause)
VALUES (3399, 22, 18, '2020-02-01', 0, 'USD', 1.00, 'Free Transfer', 'Salary share', 'Monthly', 0, 0, 1, 0, 'Winter', 'Free transfer with salary agreement', 'OfficialSite', 1, 1, 0);

-- Broadcast technology inventory
CREATE TABLE Broadcast_Technology_Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    network_id INTEGER,
    equipment_type TEXT,
    model TEXT,
    serial_number TEXT,
    purchase_date TEXT,
    warranty_expiration TEXT,
    location TEXT,
    status TEXT,
    last_maintenance TEXT,
    firmware_version TEXT,
    capabilities TEXT,
    resolution_supported TEXT,
    bandwidth_mbps REAL,
    power_consumption_watts REAL,
    vendor_name TEXT,
    lease_contract BOOLEAN,
    lease_end_date TEXT,
    depreciation_value_usd INTEGER,
    notes TEXT,
    assigned_to_event TEXT
);

INSERT INTO Broadcast_Technology_Inventory (network_id, equipment_type, model, serial_number, purchase_date, warranty_expiration, location, status, last_maintenance, firmware_version, capabilities, resolution_supported, bandwidth_mbps, power_consumption_watts, vendor_name, lease_contract, lease_end_date, depreciation_value_usd, notes, assigned_to_event)
VALUES (2, 'Camera', 'CamX2000', 'SN123456', '2021-03-10', '2024-03-09', 'Studio A', 'Operational', '2023-11-01', 'v5.2', 'HDR, SlowMotion', '4K', 120.5, 250.0, 'VisionTech', 0, NULL, 15000, 'Primary match camera', 'ChampionsLeagueFinal');

INSERT INTO Broadcast_Technology_Inventory (network_id, equipment_type, model, serial_number, purchase_date, warranty_expiration, location, status, last_maintenance, firmware_version, capabilities, resolution_supported, bandwidth_mbps, power_consumption_watts, vendor_name, lease_contract, lease_end_date, depreciation_value_usd, notes, assigned_to_event)
VALUES (3, 'Audio Mixer', 'MixProX', 'SN789012', '2020-07-22', '2023-07-21', 'Broadcast Facility', 'Operational', '2023-10-15', 'v3.1', '8 Channels, DSP', 'N/A', 0, 180.0, 'SoundWave', 0, NULL, 8000, 'Used for commentary mix', 'WorldCupSemiFinal');

INSERT INTO Broadcast_Technology_Inventory (network_id, equipment_type, model, serial_number, purchase_date, warranty_expiration, location, status, last_maintenance, firmware_version, capabilities, resolution_supported, bandwidth_mbps, power_consumption_watts, vendor_name, lease_contract, lease_end_date, depreciation_value_usd, notes, assigned_to_event)
VALUES (5, 'Transmission Unit', 'TransLink200', 'SN345678', '2019-11-05', '2022-11-04', 'Mobile Unit 3', 'Under Maintenance', '2023-09-20', 'v2.8', 'Satellite, IP', '1080p', 250.0, 500.0, 'NetTransmit', 1, '2024-11-05', 30000, 'Leased for international feeds', 'EuroLeagueFinals');

-- Sustainability initiatives for clubs
CREATE TABLE Sustainability_Initiatives (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    initiative_name TEXT,
    launch_date TEXT,
    target_year INTEGER,
    carbon_reduction_percent REAL,
    renewable_energy_percent REAL,
    waste_diversion_percent REAL,
    water_saving_percent REAL,
    initiative_budget_usd INTEGER,
    funding_source TEXT,
    partner_organizations TEXT,
    status TEXT,
    key_milestones TEXT,
    responsible_officer TEXT,
    progress_update TEXT,
    external_awards TEXT,
    reporting_frequency TEXT,
    certifications_obtained TEXT,
    notes TEXT,
    impact_score REAL
);

INSERT INTO Sustainability_Initiatives (club_id, initiative_name, launch_date, target_year, carbon_reduction_percent, renewable_energy_percent, waste_diversion_percent, water_saving_percent, initiative_budget_usd, funding_source, partner_organizations, status, key_milestones, responsible_officer, progress_update, external_awards, reporting_frequency, certifications_obtained, notes, impact_score)
VALUES (11, 'ZeroCarbonStadium', '2021-04-01', 2030, 45.0, 60.0, 70.0, 55.0, 8000000, 'Club Funds', 'EcoBuild Ltd; GreenEnergy Inc', 'In Progress', 'Solar panels installed 2022; LED lighting 2023', 'Laura Green', 'On track, 30% reduction achieved', 'Best Sustainable Venue 2023', 'Annual', 'ISO14001', 'Focus on fan education', 82.5);

INSERT INTO Sustainability_Initiatives (club_id, initiative_name, launch_date, target_year, carbon_reduction_percent, renewable_energy_percent, waste_diversion_percent, water_saving_percent, initiative_budget_usd, funding_source, partner_organizations, status, key_milestones, responsible_officer, progress_update, external_awards, reporting_frequency, certifications_obtained, notes, impact_score)
VALUES (14, 'GreenFanProgram', '2020-09-15', 2025, 20.0, 30.0, 40.0, 25.0, 1200000, 'Sponsorship', 'RecycleNow; WaterSave Org', 'Active', 'Reusable cup rollout 2021', 'Mark Rivera', 'Reached 50% fan participation', 'Community Impact Award 2022', 'Quarterly', 'LEED Silver', 'Education campaigns ongoing', 68.0);

INSERT INTO Sustainability_Initiatives (club_id, initiative_name, launch_date, target_year, carbon_reduction_percent, renewable_energy_percent, waste_diversion_percent, water_saving_percent, initiative_budget_usd, funding_source, partner_organizations, status, key_milestones, responsible_officer, progress_update, external_awards, reporting_frequency, certifications_obtained, notes, impact_score)
VALUES (17, 'EcoTravelInitiative', '2019-03-10', 2024, 15.0, 20.0, 35.0, 30.0, 600000, 'Government Grant', 'TransitPlus', 'Completed', 'Team bus electrification 2020', 'Sophie Kim', 'All travel now carbon‑neutral', 'Green Transport Award 2021', 'Biannual', 'BREEAM', 'Monitoring emissions', 74.3);

-- Community volunteer projects
CREATE TABLE Community_Volunteer_Projects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    project_name TEXT,
    club_id INTEGER,
    start_date TEXT,
    end_date TEXT,
    location TEXT,
    volunteer_hours INTEGER,
    participants INTEGER,
    beneficiary_groups TEXT,
    project_lead TEXT,
    budget_usd INTEGER,
    external_partners TEXT,
    status TEXT,
    outcome_summary TEXT,
    media_coverage_links TEXT,
    safety_risk_level TEXT,
    training_required BOOLEAN,
    equipment_provided TEXT,
    follow_up_actions TEXT,
    notes TEXT,
    impact_rating REAL
);

INSERT INTO Community_Volunteer_Projects (project_name, club_id, start_date, end_date, location, volunteer_hours, participants, beneficiary_groups, project_lead, budget_usd, external_partners, status, outcome_summary, media_coverage_links, safety_risk_level, training_required, equipment_provided, follow_up_actions, notes, impact_rating)
VALUES ('Youth Sports Clinics', 12, '2023-05-01', '2023-05-15', 'City Park', 420, 35, 'Local Schools', 'Carlos Mendes', 25000, 'Community Center', 'Completed', 'Reached 500 children', 'newslink1.com', 'Low', 1, 'Balls, Cones', 'Feedback survey', 'Positive reception', 88.0);

INSERT INTO Community_Volunteer_Projects (project_name, club_id, start_date, end_date, location, volunteer_hours, participants, beneficiary_groups, project_lead, budget_usd, external_partners, status, outcome_summary, media_coverage_links, safety_risk_level, training_required, equipment_provided, follow_up_actions, notes, impact_rating)
VALUES ('Stadium Clean‑Up Day', 9, '2023-09-10', '2023-09-10', 'Main Stadium', 180, 20, 'Local Residents', 'Elena Rossi', 8000, 'EcoGroup', 'Completed', 'Removed 2 tons waste', 'newslink2.com', 'Medium', 1, 'Gloves, Bags', 'Monthly schedule', 'Engaged fans', 81.5);

INSERT INTO Community_Volunteer_Projects (project_name, club_id, start_date, end_date, location, volunteer_hours, participants, beneficiary_groups, project_lead, budget_usd, external_partners, status, outcome_summary, media_coverage_links, safety_risk_level, training_required, equipment_provided, follow_up_actions, notes, impact_rating)
VALUES ('Food Bank Drive', 15, '2023-11-20', '2023-12-05', 'Club Headquarters', 250, 30, 'Local Food Bank', 'Jamal Ahmed', 12000, 'FoodBank Org', 'Ongoing', 'Collected 3,000 meals', 'newslink3.com', 'Low', 0, 'Boxes, Flyers', 'Quarterly drives', 'Strong community ties', 85.2);

-- International tour schedules for clubs
CREATE TABLE International_Tour_Schedules (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    tour_name TEXT,
    departure_date TEXT,
    return_date TEXT,
    destination_country TEXT,
    destination_city TEXT,
    stadium_name TEXT,
    match_date TEXT,
    opponent_club_name TEXT,
    ticket_price_usd INTEGER,
    expected_attendance INTEGER,
    travel_mode TEXT,
    accommodation_hotel TEXT,
    sponsor_on_site TEXT,
    broadcast_partner TEXT,
    logistics_manager TEXT,
    health_protocols TEXT,
    notes TEXT,
    status TEXT,
    total_cost_usd INTEGER
);

INSERT INTO International_Tour_Schedules (club_id, tour_name, departure_date, return_date, destination_country, destination_city, stadium_name, match_date, opponent_club_name, ticket_price_usd, expected_attendance, travel_mode, accommodation_hotel, sponsor_on_site, broadcast_partner, logistics_manager, health_protocols, notes, status, total_cost_usd)
VALUES (10, 'Asia Summer Tour', '2023-07-01', '2023-07-20', 'Japan', 'Tokyo', 'National Stadium', '2023-07-10', 'Tokyo FC', 120, 60000, 'Air', 'Grand Tokyo Hotel', 'TechNova', 'Nippon TV', 'Hiro Tanaka', 'Vaccination Required', 'First Asian tour in 5 years', 'Planned', 1500000);

INSERT INTO International_Tour_Schedules (club_id, tour_name, departure_date, return_date, destination_country, destination_city, stadium_name, match_date, opponent_club_name, ticket_price_usd, expected_attendance, travel_mode, accommodation_hotel, sponsor_on_site, broadcast_partner, logistics_manager, health_protocols, notes, status, total_cost_usd)
VALUES (12, 'European Winter Tour', '2023-12-05', '2023-12-18', 'Germany', 'Berlin', 'Olympic Stadium', '2023-12-12', 'Berlin United', 100, 75000, 'Air', 'Berlin Central Hotel', 'FitGear', 'EuroSports', 'Klaus Meyer', 'Negative Test Required', 'Winter friendly series', 'Confirmed', 1800000);

INSERT INTO International_Tour_Schedules (club_id, tour_name, departure_date, return_date, destination_country, destination_city, stadium_name, match_date, opponent_club_name, ticket_price_usd, expected_attendance, travel_mode, accommodation_hotel, sponsor_on_site, broadcast_partner, logistics_manager, health_protocols, notes, status, total_cost_usd)
VALUES (15, 'South America Spring Tour', '2024-03-10', '2024-03-25', 'Brazil', 'Rio de Janeiro', 'Maracanã', '2024-03-18', 'Rio Stars', 130, 80000, 'Air', 'Rio Grand Hotel', 'EcoDrink', 'Samba TV', 'Ana Silva', 'Vaccination Required', 'Community outreach matches', 'Planned', 2100000);