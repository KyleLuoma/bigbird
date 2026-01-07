-- Supplier_Contracts
CREATE TABLE Supplier_Contracts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    supplier_id INTEGER,
    club_id INTEGER,
    contract_start_date TEXT,
    contract_end_date TEXT,
    contract_value REAL,
    payment_terms TEXT,
    service_type TEXT,
    contact_name TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    performance_metric TEXT,
    penalty_clause TEXT,
    renewal_option TEXT,
    currency TEXT,
    governance_region TEXT,
    sla_level TEXT,
    insurance_required TEXT,
    audit_frequency INTEGER,
    confidentiality_level TEXT,
    termination_notice_days INTEGER,
    notes TEXT
);

INSERT INTO Supplier_Contracts (supplier_id, club_id, contract_start_date, contract_end_date, contract_value, payment_terms, service_type, contact_name, contact_email, contact_phone, performance_metric, penalty_clause, renewal_option, currency, governance_region, sla_level, insurance_required, audit_frequency, confidentiality_level, termination_notice_days, notes)
VALUES (101, 1, '2023-01-01', '2025-12-31', 750000.0, 'Net30', 'Catering', 'John Doe', 'john.doe@example.com', '5551234567', 'OnTimeDelivery', 'LateFee', 'AutoRenew', 'USD', 'EU', 'Gold', 'Yes', 12, 'High', 90, 'Preferred supplier');

INSERT INTO Supplier_Contracts (supplier_id, club_id, contract_start_date, contract_end_date, contract_value, payment_terms, service_type, contact_name, contact_email, contact_phone, performance_metric, penalty_clause, renewal_option, currency, governance_region, sla_level, insurance_required, audit_frequency, confidentiality_level, termination_notice_days, notes)
VALUES (102, 2, '2022-06-15', '2024-06-14', 420000.0, 'Net45', 'Security', 'Alice Smith', 'alice.smith@example.com', '5559876543', 'IncidentRate', 'PenaltyClause', 'NoRenew', 'EUR', 'APAC', 'Silver', 'No', 6, 'Medium', 60, 'Includes 24/7 monitoring');

INSERT INTO Supplier_Contracts (supplier_id, club_id, contract_start_date, contract_end_date, contract_value, payment_terms, service_type, contact_name, contact_email, contact_phone, performance_metric, penalty_clause, renewal_option, currency, governance_region, sla_level, insurance_required, audit_frequency, confidentiality_level, termination_notice_days, notes)
VALUES (103, 3, '2024-03-01', '2026-02-28', 310000.0, 'Net60', 'Equipment Rental', 'Bob Lee', 'bob.lee@example.com', '5555551212', 'UtilizationRate', 'None', 'AutoRenew', 'GBP', 'NA', 'Bronze', 'Yes', 3, 'Low', 30, 'Provides backup gear');

-- Digital_Ticket_Scanning_Logs
CREATE TABLE Digital_Ticket_Scanning_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    scanner_device_id TEXT,
    scan_timestamp TEXT,
    ticket_id TEXT,
    fan_id INTEGER,
    seat_section TEXT,
    seat_row TEXT,
    seat_number INTEGER,
    scan_status TEXT,
    entry_gate TEXT,
    staff_operator TEXT,
    device_firmware_version TEXT,
    battery_level INTEGER,
    network_signal_strength INTEGER,
    scan_location_lat REAL,
    scan_location_long REAL,
    verification_method TEXT,
    scanner_location_desc TEXT,
    scan_duration_ms INTEGER,
    duplicate_flag INTEGER,
    error_code TEXT,
    notes TEXT,
    hash_value TEXT
);

INSERT INTO Digital_Ticket_Scanning_Logs (match_id, scanner_device_id, scan_timestamp, ticket_id, fan_id, seat_section, seat_row, seat_number, scan_status, entry_gate, staff_operator, device_firmware_version, battery_level, network_signal_strength, scan_location_lat, scan_location_long, verification_method, scanner_location_desc, scan_duration_ms, duplicate_flag, error_code, notes, hash_value)
VALUES (2001, 'SCN-001', '2024-04-10T14:32:05', 'TCK123456', 5001, 'A', '12', 5, 'Success', 'Gate1', 'Emily', 'v1.2.3', 85, -70, 40.7128, -74.0060, 'QR', 'North_Entrance', 150, 0, '', 'First scan', 'abcd1234');

INSERT INTO Digital_Ticket_Scanning_Logs (match_id, scanner_device_id, scan_timestamp, ticket_id, fan_id, seat_section, seat_row, seat_number, scan_status, entry_gate, staff_operator, device_firmware_version, battery_level, network_signal_strength, scan_location_lat, scan_location_long, verification_method, scanner_location_desc, scan_duration_ms, duplicate_flag, error_code, notes, hash_value)
VALUES (2001, 'SCN-002', '2024-04-10T14:33:12', 'TCK123457', 5002, 'B', '08', 12, 'Success', 'Gate2', 'Mark', 'v1.2.3', 90, -68, 40.7130, -74.0065, 'QR', 'South_Entrance', 140, 0, '', 'Second scan', 'efgh5678');

INSERT INTO Digital_Ticket_Scanning_Logs (match_id, scanner_device_id, scan_timestamp, ticket_id, fan_id, seat_section, seat_row, seat_number, scan_status, entry_gate, staff_operator, device_firmware_version, battery_level, network_signal_strength, scan_location_lat, scan_location_long, verification_method, scanner_location_desc, scan_duration_ms, duplicate_flag, error_code, notes, hash_value)
VALUES (2001, 'SCN-001', '2024-04-10T14:35:20', 'TCK123456', 5001, 'A', '12', 5, 'Duplicate', 'Gate1', 'Emily', 'v1.2.3', 80, -72, 40.7128, -74.0060, 'QR', 'North_Entrance', 160, 1, 'DUP001', 'Duplicate attempt logged', 'ijkl9012');

-- Grass_Maintenance_Records
CREATE TABLE Grass_Maintenance_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    maintenance_date TEXT,
    crew_lead TEXT,
    crew_members INTEGER,
    mower_type TEXT,
    mower_hours REAL,
    fertilizer_type TEXT,
    fertilizer_amount_kg REAL,
    pesticide_type TEXT,
    pesticide_amount_l REAL,
    irrigation_cycles INTEGER,
    water_used_liters REAL,
    soil_moisture_percent REAL,
    grass_height_cm REAL,
    aeration_performed INTEGER,
    overseeding_rate_kg_per_m2 REAL,
    weather_condition TEXT,
    notes TEXT,
    maintenance_cost REAL,
    next_maintenance_due TEXT
);

INSERT INTO Grass_Maintenance_Records (stadium_id, maintenance_date, crew_lead, crew_members, mower_type, mower_hours, fertilizer_type, fertilizer_amount_kg, pesticide_type, pesticide_amount_l, irrigation_cycles, water_used_liters, soil_moisture_percent, grass_height_cm, aeration_performed, overseeding_rate_kg_per_m2, weather_condition, notes, maintenance_cost, next_maintenance_due)
VALUES (10, '2024-03-15', 'Carlos Gomez', 5, 'Rotary', 3.5, 'Nitrogen', 120.0, 'InsecticideA', 15.0, 2, 5000.0, 22.5, 3.8, 1, 0.02, 'Sunny', 'All good', 850.0, '2024-04-15');

INSERT INTO Grass_Maintenance_Records (stadium_id, maintenance_date, crew_lead, crew_members, mower_type, mower_hours, fertilizer_type, fertilizer_amount_kg, pesticide_type, pesticide_amount_l, irrigation_cycles, water_used_liters, soil_moisture_percent, grass_height_cm, aeration_performed, overseeding_rate_kg_per_m2, weather_condition, notes, maintenance_cost, next_maintenance_due)
VALUES (12, '2024-03-20', 'Linda Chen', 4, 'Flail', 2.8, 'Phosphorus', 95.0, 'HerbicideB', 10.0, 1, 4200.0, 24.0, 4.1, 0, 0.00, 'Cloudy', 'Minor pest observed', 720.0, '2024-04-20');

INSERT INTO Grass_Maintenance_Records (stadium_id, maintenance_date, crew_lead, crew_members, mower_type, mower_hours, fertilizer_type, fertilizer_amount_kg, pesticide_type, pesticide_amount_l, irrigation_cycles, water_used_liters, soil_moisture_percent, grass_height_cm, aeration_performed, overseeding_rate_kg_per_m2, weather_condition, notes, maintenance_cost, next_maintenance_due)
VALUES (15, '2024-03-25', 'Mohamed Ali', 6, 'RideOn', 4.0, 'Potassium', 110.0, 'FungicideC', 12.5, 3, 5600.0, 23.0, 3.9, 1, 0.015, 'Rainy', 'Drained excess water', 970.0, '2024-04-25');

-- Fan_Forum_Threads
CREATE TABLE Fan_Forum_Threads (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    forum_id INTEGER,
    thread_title TEXT,
    creator_user_id INTEGER,
    creation_date TEXT,
    last_post_date TEXT,
    view_count INTEGER,
    reply_count INTEGER,
    is_sticky INTEGER,
    is_locked INTEGER,
    category TEXT,
    tags TEXT,
    language TEXT,
    sentiment_score REAL,
    attachment_count INTEGER,
    moderation_status TEXT,
    featured_flag INTEGER,
    poll_question TEXT,
    poll_options TEXT,
    admin_notes TEXT
);

INSERT INTO Fan_Forum_Threads (forum_id, thread_title, creator_user_id, creation_date, last_post_date, view_count, reply_count, is_sticky, is_locked, category, tags, language, sentiment_score, attachment_count, moderation_status, featured_flag, poll_question, poll_options, admin_notes)
VALUES (5, 'Best_Tactics_2024', 3001, '2024-02-10', '2024-03-01', 1200, 45, 1, 0, 'Tactics', 'formation,pressing', 'EN', 0.78, 2, 'Approved', 0, 'Which_formation_preferred?', '4-3-3|3-5-2|4-2-3-1', '');

INSERT INTO Fan_Forum_Threads (forum_id, thread_title, creator_user_id, creation_date, last_post_date, view_count, reply_count, is_sticky, is_locked, category, tags, language, sentiment_score, attachment_count, moderation_status, featured_flag, poll_question, poll_options, admin_notes)
VALUES (5, 'Stadium_Improvement_Ideas', 3002, '2024-01-20', '2024-02-28', 800, 30, 0, 0, 'Facilities', 'seating,food,wifi', 'EN', 0.65, 1, 'Pending', 0, 'Which_service_needs_upgrade?', 'Food_Stalls|WiFi|Seating', '');

INSERT INTO Fan_Forum_Threads (forum_id, thread_title, creator_user_id, creation_date, last_post_date, view_count, reply_count, is_sticky, is_locked, category, tags, language, sentiment_score, attachment_count, moderation_status, featured_flag, poll_question, poll_options, admin_notes)
VALUES (5, 'Club_History_Month', 3003, '2024-02-01', '2024-02-27', 950, 22, 0, 1, 'History', 'archive,legends', 'EN', 0.82, 3, 'Approved', 1, 'Who_is_your_favourite_legend?', 'PlayerA|PlayerB|PlayerC', 'Pinned for month');

-- Venue_Energy_Sources
CREATE TABLE Venue_Energy_Sources (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    source_type TEXT,
    provider_name TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    capacity_mw REAL,
    usage_percentage REAL,
    cost_per_mwh REAL,
    renewable INTEGER,
    carbon_intensity_g_per_kwh REAL,
    contract_value REAL,
    incentive_program TEXT,
    maintenance_cycle_months INTEGER,
    last_maintenance_date TEXT,
    reliability_score REAL,
    outage_history_count INTEGER,
    average_outage_duration_min REAL,
    emission_offset_credits INTEGER,
    notes TEXT,
    regulatory_compliance TEXT,
    reporting_frequency TEXT,
    created_at TEXT
);

INSERT INTO Venue_Energy_Sources (stadium_id, source_type, provider_name, contract_start_date, contract_end_date, capacity_mw, usage_percentage, cost_per_mwh, renewable, carbon_intensity_g_per_kwh, contract_value, incentive_program, maintenance_cycle_months, last_maintenance_date, reliability_score, outage_history_count, average_outage_duration_min, emission_offset_credits, notes, regulatory_compliance, reporting_frequency, created_at)
VALUES (10, 'Solar', 'GreenPower Inc', '2022-01-01', '2027-12-31', 5.0, 45.0, 55.0, 1, 0.0, 275000.0, 'TaxCredit2023', 12, '2024-01-15', 98.5, 0, 0.0, 1200, 'Zero emissions', 'ISO50001', 'Quarterly', '2024-03-01');

INSERT INTO Venue_Energy_Sources (stadium_id, source_type, provider_name, contract_start_date, contract_end_date, capacity_mw, usage_percentage, cost_per_mwh, renewable, carbon_intensity_g_per_kwh, contract_value, incentive_program, maintenance_cycle_months, last_maintenance_date, reliability_score, outage_history_count, average_outage_duration_min, emission_offset_credits, notes, regulatory_compliance, reporting_frequency, created_at)
VALUES (12, 'NaturalGas', 'EnergyCo Ltd', '2021-06-01', '2026-05-31', 12.0, 70.0, 80.0, 0, 450.0, 960000.0, 'CapacityBonus', 6, '2024-02-20', 94.2, 2, 15.5, 800, 'Standard fuel mix', 'ISO9001', 'Annual', '2024-03-02');

INSERT INTO Venue_Energy_Sources (stadium_id, source_type, provider_name, contract_start_date, contract_end_date, capacity_mw, usage_percentage, cost_per_mwh, renewable, carbon_intensity_g_per_kwh, contract_value, incentive_program, maintenance_cycle_months, last_maintenance_date, reliability_score, outage_history_count, average_outage_duration_min, emission_offset_credits, notes, regulatory_compliance, reporting_frequency, created_at)
VALUES (15, 'Wind', 'WindEnergy Partners', '2023-03-01', '2028-02-28', 8.0, 55.0, 60.0, 1, 0.0, 480000.0, 'GreenBond2024', 9, '2024-03-05', 97.0, 0, 0.0, 1500, 'Complementary renewable source', 'ISO14001', 'SemiAnnual', '2024-03-03');

-- Club_Social_Responsibility_Projects
CREATE TABLE Club_Social_Responsibility_Projects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    project_name TEXT,
    start_date TEXT,
    end_date TEXT,
    region TEXT,
    focus_area TEXT,
    budget_usd REAL,
    partners TEXT,
    volunteers_required INTEGER,
    volunteers_actual INTEGER,
    impact_metrics TEXT,
    beneficiaries_count INTEGER,
    carbon_reduction_tons REAL,
    waste_diverted_tons REAL,
    water_saved_liters REAL,
    community_feedback_score REAL,
    status TEXT,
    reporting_frequency TEXT,
    documentation_link TEXT,
    responsible_staff_id INTEGER,
    notes TEXT
);

INSERT INTO Club_Social_Responsibility_Projects (club_id, project_name, start_date, end_date, region, focus_area, budget_usd, partners, volunteers_required, volunteers_actual, impact_metrics, beneficiaries_count, carbon_reduction_tons, waste_diverted_tons, water_saved_liters, community_feedback_score, status, reporting_frequency, documentation_link, responsible_staff_id, notes)
VALUES (1, 'Youth_Sports_Clinics', '2023-04-01', '2024-03-31', 'North', 'Youth_Development', 120000.0, 'Local_Schools', 50, 48, 'Sessions_held', 2000, 15.0, 30.0, 50000.0, 4.5, 'Completed', 'Monthly', 'http://clubdocs.com/ysc2023', 4001, 'Highly praised');

INSERT INTO Club_Social_Responsibility_Projects (club_id, project_name, start_date, end_date, region, focus_area, budget_usd, partners, volunteers_required, volunteers_actual, impact_metrics, beneficiaries_count, carbon_reduction_tons, waste_diverted_tons, water_saved_liters, community_feedback_score, status, reporting_frequency, documentation_link, responsible_staff_id, notes)
VALUES (2, 'Eco_Stadium_Initiative', '2023-09-15', '2025-09-14', 'South', 'Environmental', 250000.0, 'GreenNGO', 30, 30, 'Trees_planted', 500, 40.0, 80.0, 200000.0, 4.8, 'Ongoing', 'Quarterly', 'http://clubdocs.com/eco2023', 4002, 'Phase 1 completed');

INSERT INTO Club_Social_Responsibility_Projects (club_id, project_name, start_date, end_date, region, focus_area, budget_usd, partners, volunteers_required, volunteers_actual, impact_metrics, beneficiaries_count, carbon_reduction_tons, waste_diverted_tons, water_saved_liters, community_feedback_score, status, reporting_frequency, documentation_link, responsible_staff_id, notes)
VALUES (3, 'Health_And_Wellness_Campaign', '2024-01-10', '2024-12-31', 'East', 'Health', 90000.0, 'HealthOrg', 20, 18, 'Workshops_conducted', 1500, 10.0, 20.0, 30000.0, 4.2, 'Planned', 'BiAnnual', 'http://clubdocs.com/hwc2024', 4003, 'Recruiting volunteers');

-- Media_Brand_Deal_Terms
CREATE TABLE Media_Brand_Deal_Terms (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    media_company_id INTEGER,
    brand_name TEXT,
    deal_start_date TEXT,
    deal_end_date TEXT,
    total_value_usd REAL,
    payment_schedule TEXT,
    exclusivity_flag INTEGER,
    territory TEXT,
    broadcast_channels TEXT,
    digital_platforms TEXT,
    on_air_spots INTEGER,
    online_ads INTEGER,
    social_media_mentions INTEGER,
    product_placement_slots INTEGER,
    performance_kpis TEXT,
    renewal_option TEXT,
    termination_clause TEXT,
    compliance_requirements TEXT,
    notes TEXT
);

INSERT INTO Media_Brand_Deal_Terms (media_company_id, brand_name, deal_start_date, deal_end_date, total_value_usd, payment_schedule, exclusivity_flag, territory, broadcast_channels, digital_platforms, on_air_spots, online_ads, social_media_mentions, product_placement_slots, performance_kpis, renewal_option, termination_clause, compliance_requirements, notes)
VALUES (501, 'SportEnergy', '2023-07-01', '2025-06-30', 1500000.0, 'Quarterly', 1, 'Global', 'TV|Radio', 'Website|App', 120, 200, 350, 40, 'GRP>5000', 'AutoRenew', '30day_notice', 'FTC_Compliant', 'High visibility');

INSERT INTO Media_Brand_Deal_Terms (media_company_id, brand_name, deal_start_date, deal_end_date, total_value_usd, payment_schedule, exclusivity_flag, territory, broadcast_channels, digital_platforms, on_air_spots, online_ads, social_media_mentions, product_placement_slots, performance_kpis, renewal_option, termination_clause, compliance_requirements, notes)
VALUES (502, 'FitGear', '2024-01-15', '2026-01-14', 800000.0, 'BiAnnual', 0, 'Europe', 'Cable', 'SocialMedia|YouTube', 80, 150, 200, 25, 'CTR>2%', 'Negotiable', '6month_notice', 'GDPR_Compliant', 'Targeted campaign');

INSERT INTO Media_Brand_Deal_Terms (media_company_id, brand_name, deal_start_date, deal_end_date, total_value_usd, payment_schedule, exclusivity_flag, territory, broadcast_channels, digital_platforms, on_air_spots, online_ads, social_media_mentions, product_placement_slots, performance_kpis, renewal_option, termination_clause, compliance_requirements, notes)
VALUES (503, 'QuickSnack', '2022-05-01', '2024-04-30', 500000.0, 'Monthly', 0, 'NorthAmerica', 'SportsNetwork', 'App|Website', 60, 100, 180, 30, 'SalesLift>10%', 'NoRenew', 'Immediate_termination_allowed', 'HealthClaims_Approved', 'Seasonal activation');

-- Training_Gear_Inventory
CREATE TABLE Training_Gear_Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    gear_category TEXT,
    gear_item_name TEXT,
    sku TEXT,
    purchase_date TEXT,
    supplier_id INTEGER,
    purchase_price REAL,
    warranty_years INTEGER,
    quantity_total INTEGER,
    quantity_in_use INTEGER,
    quantity_in_maintenance INTEGER,
    condition_rating INTEGER,
    last_audit_date TEXT,
    next_audit_due TEXT,
    storage_location TEXT,
    responsible_staff_id INTEGER,
    usage_rate_per_month REAL,
    depreciation_rate_percent REAL,
    notes TEXT,
    disposal_status TEXT,
    disposal_date TEXT
);

INSERT INTO Training_Gear_Inventory (club_id, gear_category, gear_item_name, sku, purchase_date, supplier_id, purchase_price, warranty_years, quantity_total, quantity_in_use, quantity_in_maintenance, condition_rating, last_audit_date, next_audit_due, storage_location, responsible_staff_id, usage_rate_per_month, depreciation_rate_percent, notes, disposal_status, disposal_date)
VALUES (1, 'Footwear', 'Training_Shoes_ModelX', 'TSX-001', '2022-08-10', 601, 120.0, 2, 100, 85, 5, 9, '2024-02-01', '2024-08-01', 'Warehouse_A', 4101, 12.5, 15.0, 'Popular among youth squad', 'InUse', '');

INSERT INTO Training_Gear_Inventory (club_id, gear_category, gear_item_name, sku, purchase_date, supplier_id, purchase_price, warranty_years, quantity_total, quantity_in_use, quantity_in_maintenance, condition_rating, last_audit_date, next_audit_due, storage_location, responsible_staff_id, usage_rate_per_month, depreciation_rate_percent, notes, disposal_status, disposal_date)
VALUES (2, 'Apparel', 'Training_Jersey_Home', 'TJH-202', '2023-01-20', 602, 80.0, 3, 200, 190, 2, 10, '2024-01-15', '2024-07-15', 'Warehouse_B', 4102, 20.0, 10.0, 'Seasonal inventory', 'InUse', '');

INSERT INTO Training_Gear_Inventory (club_id, gear_category, gear_item_name, sku, purchase_date, supplier_id, purchase_price, warranty_years, quantity_total, quantity_in_use, quantity_in_maintenance, condition_rating, last_audit_date, next_audit_due, storage_location, responsible_staff_id, usage_rate_per_month, depreciation_rate_percent, notes, disposal_status, disposal_date)
VALUES (3, 'Equipment', 'Training_Cones_Set', 'TCS-303', '2021-05-05', 603, 45.0, 5, 500, 470, 10, 8, '2024-03-10', '2024-09-10', 'Field_Storage', 4103, 30.0, 5.0, 'All good condition', 'InUse', '');

-- Matchday_Transportation_Logs
CREATE TABLE Matchday_Transportation_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    transport_type TEXT,
    provider_name TEXT,
    departure_time TEXT,
    arrival_time TEXT,
    capacity INTEGER,
    seats_filled INTEGER,
    route_description TEXT,
    driver_id INTEGER,
    vehicle_id TEXT,
    fuel_type TEXT,
    emissions_kg REAL,
    cost_usd REAL,
    ticket_bundle_id INTEGER,
    fan_group_id INTEGER,
    special_accommodations_flag INTEGER,
    delay_minutes INTEGER,
    incident_report TEXT,
    compliance_check_passed INTEGER,
    notes TEXT,
    recorded_at TEXT,
    audit_user_id INTEGER
);

INSERT INTO Matchday_Transportation_Logs (match_id, transport_type, provider_name, departure_time, arrival_time, capacity, seats_filled, route_description, driver_id, vehicle_id, fuel_type, emissions_kg, cost_usd, ticket_bundle_id, fan_group_id, special_accommodations_flag, delay_minutes, incident_report, compliance_check_passed, notes, recorded_at, audit_user_id)
VALUES (2001, 'Bus', 'CityTransit Co', '2024-04-10T08:00:00', '2024-04-10T08:45:00', 50, 48, 'Stadium_NorthGate', 7001, 'BUS-101', 'Diesel', 120.5, 250.0, 301, 401, 0, 5, 'Minor traffic delay', 1, 'All passengers boarded', '2024-04-10T09:00:00', 9001);

INSERT INTO Matchday_Transportation_Logs (match_id, transport_type, provider_name, departure_time, arrival_time, capacity, seats_filled, route_description, driver_id, vehicle_id, fuel_type, emissions_kg, cost_usd, ticket_bundle_id, fan_group_id, special_accommodations_flag, delay_minutes, incident_report, compliance_check_passed, notes, recorded_at, audit_user_id)
VALUES (2001, 'Shuttle', 'EliteShuttle Ltd', '2024-04-10T08:20:00', '2024-04-10T08:50:00', 30, 30, 'Stadium_EastWing', 7002, 'SHU-202', 'Electric', 0.0, 180.0, 302, 402, 1, 0, '', 1, 'VIP fans accommodated', '2024-04-10T09:05:00', 9002);

INSERT INTO Matchday_Transportation_Logs (match_id, transport_type, provider_name, departure_time, arrival_time, capacity, seats_filled, route_description, driver_id, vehicle_id, fuel_type, emissions_kg, cost_usd, ticket_bundle_id, fan_group_id, special_accommodations_flag, delay_minutes, incident_report, compliance_check_passed, notes, recorded_at, audit_user_id)
VALUES (2002, 'Metro', 'MetroTransit Authority', '2024-04-11T07:45:00', '2024-04-11T08:20:00', 200, 190, 'Line_A_StadiumStop', 7003, 'MET-303', 'Electric', 0.0, 0.0, 303, 403, 0, 2, 'Signal glitch', 1, 'Handled smoothly', '2024-04-11T08:30:00', 9003);

-- Stadium_Water_Conservation_Metrics
CREATE TABLE Stadium_Water_Conservation_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    measurement_date TEXT,
    water_source TEXT,
    total_consumption_liters REAL,
    recycled_water_used_liters REAL,
    average_daily_consumption_liters REAL,
    peak_flow_liters_per_min REAL,
    leak_detected_flag INTEGER,
    leak_repaired_date TEXT,
    irrigation_usage_liters REAL,
    restroom_usage_liters REAL,
    kitchen_usage_liters REAL,
    maintenance_events INTEGER,
    cost_usd REAL,
    reduction_target_percent REAL,
    achieved_reduction_percent REAL,
    notes TEXT,
    reported_by_staff_id INTEGER,
    verification_status TEXT
);

INSERT INTO Stadium_Water_Conservation_Metrics (stadium_id, measurement_date, water_source, total_consumption_liters, recycled_water_used_liters, average_daily_consumption_liters, peak_flow_liters_per_min, leak_detected_flag, leak_repaired_date, irrigation_usage_liters, restroom_usage_liters, kitchen_usage_liters, maintenance_events, cost_usd, reduction_target_percent, achieved_reduction_percent, notes, reported_by_staff_id, verification_status)
VALUES (10, '2024-03-31', 'Municipal', 1500000.0, 300000.0, 50000.0, 250.0, 0, '', 200000.0, 800000.0, 400000.0, 2, 12000.0, 20.0, 18.5, 'Steady improvement', 4105, 'Verified');

INSERT INTO Stadium_Water_Conservation_Metrics (stadium_id, measurement_date, water_source, total_consumption_liters, recycled_water_used_liters, average_daily_consumption_liters, peak_flow_liters_per_min, leak_detected_flag, leak_repaired_date, irrigation_usage_liters, restroom_usage_liters, kitchen_usage_liters, maintenance_events, cost_usd, reduction_target_percent, achieved_reduction_percent, notes, reported_by_staff_id, verification_status)
VALUES (12, '2024-03-31', 'RainwaterHarvest', 1200000.0, 500000.0, 40000.0, 220.0, 1, '2024-03-15', 150000.0, 600000.0, 350000.0, 3, 10000.0, 25.0, 22.0, 'Leak fixed early March', 4106, 'Verified');

INSERT INTO Stadium_Water_Conservation_Metrics (stadium_id, measurement_date, water_source, total_consumption_liters, recycled_water_used_liters, average_daily_consumption_liters, peak_flow_liters_per_min, leak_detected_flag, leak_repaired_date, irrigation_usage_liters, restroom_usage_liters, kitchen_usage_liters, maintenance_events, cost_usd, reduction_target_percent, achieved_reduction_percent, notes, reported_by_staff_id, verification_status)
VALUES (15, '2024-03-31', 'Well', 1300000.0, 250000.0, 45000.0, 240.0, 0, '', 180000.0, 700000.0, 370000.0, 1, 11000.0, 22.0, 20.0, 'Target on track', 4107, 'Pending');