-- Stadium_Energy_Efficiency_Measures
CREATE TABLE Stadium_Energy_Efficiency_Measures (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    report_date TEXT,
    total_energy_kwh INTEGER,
    renewable_percent REAL,
    lighting_efficiency REAL,
    hvac_efficiency REAL,
    water_usage_liters INTEGER,
    waste_recycled_tons INTEGER,
    carbon_footprint_tons REAL,
    solar_panel_kw INTEGER,
    wind_turbine_kw INTEGER,
    energy_star_rating INTEGER,
    peak_demand_kw INTEGER,
    average_daily_consumption_kwh INTEGER,
    cooling_setpoint_c INTEGER,
    heating_setpoint_c INTEGER,
    occupancy_rate_percent REAL,
    maintenance_actions INTEGER,
    notes TEXT
);
INSERT INTO Stadium_Energy_Efficiency_Measures (id, stadium_id, report_date, total_energy_kwh, renewable_percent, lighting_efficiency, hvac_efficiency, water_usage_liters, waste_recycled_tons, carbon_footprint_tons, solar_panel_kw, wind_turbine_kw, energy_star_rating, peak_demand_kw, average_daily_consumption_kwh, cooling_setpoint_c, heating_setpoint_c, occupancy_rate_percent, maintenance_actions, notes)
VALUES (1, 101, '2023-05-01', 1500000, 35.5, 0.92, 0.88, 1200000, 45, 120.3, 500, 0, 5, 800, 42000, 24, 20, 85.2, 12, 'Routine_check');
INSERT INTO Stadium_Energy_Efficiency_Measures (id, stadium_id, report_date, total_energy_kwh, renewable_percent, lighting_efficiency, hvac_efficiency, water_usage_liters, waste_recycled_tons, carbon_footprint_tons, solar_panel_kw, wind_turbine_kw, energy_star_rating, peak_demand_kw, average_daily_consumption_kwh, cooling_setpoint_c, heating_setpoint_c, occupancy_rate_percent, maintenance_actions, notes)
VALUES (2, 102, '2023-06-15', 1320000, 40.0, 0.95, 0.90, 1100000, 50, 110.0, 600, 10, 6, 750, 38000, 23, 19, 88.0, 8, 'LED_upgrade');
INSERT INTO Stadium_Energy_Efficiency_Measures (id, stadium_id, report_date, total_energy_kwh, renewable_percent, lighting_efficiency, hvac_efficiency, water_usage_liters, waste_recycled_tons, carbon_footprint_tons, solar_panel_kw, wind_turbine_kw, energy_star_rating, peak_demand_kw, average_daily_consumption_kwh, cooling_setpoint_c, heating_setpoint_c, occupancy_rate_percent, maintenance_actions, notes)
VALUES (3, 103, '2023-07-20', 1405000, 38.2, 0.93, 0.87, 1150000, 48, 115.5, 550, 5, 5, 770, 39500, 24, 21, 86.5, 10, 'HVAC_tuneup');

-- Club_Social_Media_Analytics
CREATE TABLE Club_Social_Media_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    platform TEXT,
    metric_date TEXT,
    followers INTEGER,
    new_followers INTEGER,
    posts INTEGER,
    avg_likes_per_post REAL,
    avg_comments_per_post REAL,
    engagement_rate_percent REAL,
    reach INTEGER,
    impressions INTEGER,
    video_views INTEGER,
    shares INTEGER,
    story_views INTEGER,
    link_clicks INTEGER,
    hashtag_usage INTEGER,
    top_post_id INTEGER,
    sentiment_score REAL,
    ad_spend_usd REAL,
    campaign_id INTEGER,
    notes TEXT
);
INSERT INTO Club_Social_Media_Analytics (id, club_id, platform, metric_date, followers, new_followers, posts, avg_likes_per_post, avg_comments_per_post, engagement_rate_percent, reach, impressions, video_views, shares, story_views, link_clicks, hashtag_usage, top_post_id, sentiment_score, ad_spend_usd, campaign_id, notes)
VALUES (1, 201, 'Twitter', '2023-08-01', 25000, 300, 45, 120.5, 15.2, 2.8, 50000, 75000, 20000, 1500, 8000, 1200, 250, 1001, 0.85, 5000.0, 301, 'Season_launch');
INSERT INTO Club_Social_Media_Analytics (id, club_id, platform, metric_date, followers, new_followers, posts, avg_likes_per_post, avg_comments_per_post, engagement_rate_percent, reach, impressions, video_views, shares, story_views, link_clicks, hashtag_usage, top_post_id, sentiment_score, ad_spend_usd, campaign_id, notes)
VALUES (2, 202, 'Instagram', '2023-08-02', 34000, 420, 38, 210.7, 22.5, 3.1, 62000, 88000, 25000, 1800, 9500, 1400, 320, 1002, 0.88, 6200.0, 302, 'Fan_engagement');
INSERT INTO Club_Social_Media_Analytics (id, club_id, platform, metric_date, followers, new_followers, posts, avg_likes_per_post, avg_comments_per_post, engagement_rate_percent, reach, impressions, video_views, shares, story_views, link_clicks, hashtag_usage, top_post_id, sentiment_score, ad_spend_usd, campaign_id, notes)
VALUES (3, 203, 'Facebook', '2023-08-03', 42000, 500, 50, 180.3, 19.0, 3.5, 70000, 95000, 30000, 2100, 11000, 1600, 400, 1003, 0.90, 7000.0, 303, 'Community_outreach');

-- Fan_Travel_Logistics
CREATE TABLE Fan_Travel_Logistics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    match_id INTEGER,
    travel_mode TEXT,
    departure_city TEXT,
    arrival_city TEXT,
    departure_date TEXT,
    arrival_date TEXT,
    distance_km INTEGER,
    travel_time_minutes INTEGER,
    cost_usd REAL,
    accommodation_nights INTEGER,
    accommodation_cost_usd REAL,
    meals_included INTEGER,
    group_size INTEGER,
    ticket_type TEXT,
    loyalty_program_member INTEGER,
    carbon_offset_usd REAL,
    notes TEXT,
    travel_agency_id INTEGER,
    transport_provider_id INTEGER
);
INSERT INTO Fan_Travel_Logistics (id, fan_id, match_id, travel_mode, departure_city, arrival_city, departure_date, arrival_date, distance_km, travel_time_minutes, cost_usd, accommodation_nights, accommodation_cost_usd, meals_included, group_size, ticket_type, loyalty_program_member, carbon_offset_usd, notes, travel_agency_id, transport_provider_id)
VALUES (1, 1001, 401, 'Air', 'NewYork', 'London', '2023-09-01', '2023-09-02', 5570, 480, 1200.0, 2, 300.0, 1, 4, 'VIP', 1, 15.0, 'Early_arrival', 501, 601);
INSERT INTO Fan_Travel_Logistics (id, fan_id, match_id, travel_mode, departure_city, arrival_city, departure_date, arrival_date, distance_km, travel_time_minutes, cost_usd, accommodation_nights, accommodation_cost_usd, meals_included, group_size, ticket_type, loyalty_program_member, carbon_offset_usd, notes, travel_agency_id, transport_provider_id)
VALUES (2, 1002, 402, 'Train', 'Berlin', 'Munich', '2023-09-05', '2023-09-05', 585, 300, 180.0, 0, 0.0, 0, 2, 'Standard', 0, 5.0, 'Group_travel', 502, 602);
INSERT INTO Fan_Travel_Logistics (id, fan_id, match_id, travel_mode, departure_city, arrival_city, departure_date, arrival_date, distance_km, travel_time_minutes, cost_usd, accommodation_nights, accommodation_cost_usd, meals_included, group_size, ticket_type, loyalty_program_member, carbon_offset_usd, notes, travel_agency_id, transport_provider_id)
VALUES (3, 1003, 403, 'Bus', 'Madrid', 'Barcelona', '2023-09-10', '2023-09-10', 620, 420, 80.0, 0, 0.0, 0, 5, 'Economy', 0, 3.0, 'Solo_fan', 503, 603);

-- Vendor_Payment_History
CREATE TABLE Vendor_Payment_History (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    vendor_id INTEGER,
    invoice_number TEXT,
    invoice_date TEXT,
    due_date TEXT,
    payment_date TEXT,
    amount_usd REAL,
    currency TEXT,
    payment_method TEXT,
    approved_by INTEGER,
    payment_status TEXT,
    fiscal_year INTEGER,
    department TEXT,
    project_code TEXT,
    tax_amount REAL,
    discount_percent REAL,
    notes TEXT,
    receipt_number TEXT,
    bank_account TEXT,
    transaction_id TEXT,
    processed_by INTEGER
);
INSERT INTO Vendor_Payment_History (id, vendor_id, invoice_number, invoice_date, due_date, payment_date, amount_usd, currency, payment_method, approved_by, payment_status, fiscal_year, department, project_code, tax_amount, discount_percent, notes, receipt_number, bank_account, transaction_id, processed_by)
VALUES (1, 301, 'INV1001', '2023-07-01', '2023-07-15', '2023-07-12', 25000.0, 'USD', 'Wire', 401, 'Paid', 2023, 'Operations', 'PROJ01', 2500.0, 5.0, 'On_time', 'RCPT5001', 'BANK01', 'TXN9001', 501);
INSERT INTO Vendor_Payment_History (id, vendor_id, invoice_number, invoice_date, due_date, payment_date, amount_usd, currency, payment_method, approved_by, payment_status, fiscal_year, department, project_code, tax_amount, discount_percent, notes, receipt_number, bank_account, transaction_id, processed_by)
VALUES (2, 302, 'INV1002', '2023-07-05', '2023-07-20', '2023-07-18', 18000.0, 'USD', 'Check', 402, 'Paid', 2023, 'Marketing', 'PROJ02', 1800.0, 0.0, 'Partial_discount', 'RCPT5002', 'BANK02', 'TXN9002', 502);
INSERT INTO Vendor_Payment_History (id, vendor_id, invoice_number, invoice_date, due_date, payment_date, amount_usd, currency, payment_method, approved_by, payment_status, fiscal_year, department, project_code, tax_amount, discount_percent, notes, receipt_number, bank_account, transaction_id, processed_by)
VALUES (3, 303, 'INV1003', '2023-07-10', '2023-07-25', NULL, 32000.0, 'USD', 'Wire', 403, 'Pending', 2023, 'Facilities', 'PROJ03', 3200.0, 2.5, 'Awaiting_approval', 'RCPT5003', 'BANK03', 'TXN9003', 503);

-- League_Rule_Enforcement_Actions
CREATE TABLE League_Rule_Enforcement_Actions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    rule_code TEXT,
    action_date TEXT,
    player_id INTEGER,
    team_id INTEGER,
    violation_description TEXT,
    penalty_type TEXT,
    penalty_value INTEGER,
    fine_usd REAL,
    suspension_matches INTEGER,
    appeal_status TEXT,
    appealed_by INTEGER,
    decision_by INTEGER,
    notes TEXT,
    referee_id INTEGER,
    match_id INTEGER,
    severity_level INTEGER,
    points_deducted INTEGER,
    status TEXT,
    resolution_date TEXT,
    governing_body TEXT
);
INSERT INTO League_Rule_Enforcement_Actions (id, league_id, rule_code, action_date, player_id, team_id, violation_description, penalty_type, penalty_value, fine_usd, suspension_matches, appeal_status, appealed_by, decision_by, notes, referee_id, match_id, severity_level, points_deducted, status, resolution_date, governing_body)
VALUES (1, 1, 'R001', '2023-04-12', 1201, 201, 'Diving_simulation', 'Fine', 0, 15000.0, 0, 'None', NULL, 401, 'First_offense', 501, 401, 2, 0, 'Closed', '2023-04-15', 'FIFA');
INSERT INTO League_Rule_Enforcement_Actions (id, league_id, rule_code, action_date, player_id, team_id, violation_description, penalty_type, penalty_value, fine_usd, suspension_matches, appeal_status, appealed_by, decision_by, notes, referee_id, match_id, severity_level, points_deducted, status, resolution_date, governing_body)
VALUES (2, 1, 'R005', '2023-05-20', 1202, 202, 'Unauthorized_equipment', 'Suspension', 1, 5000.0, 1, 'Pending', 1202, 402, 'Equipment_not_approved', 502, 402, 3, 3, 'Open', NULL, 'UEFA');
INSERT INTO League_Rule_Enforcement_Actions (id, league_id, rule_code, action_date, player_id, team_id, violation_description, penalty_type, penalty_value, fine_usd, suspension_matches, appeal_status, appealed_by, decision_by, notes, referee_id, match_id, severity_level, points_deducted, status, resolution_date, governing_body)
VALUES (3, 2, 'R010', '2023-06-05', 1203, 203, 'Late_arrival_to_match', 'Fine', 0, 2000.0, 0, 'None', NULL, 403, 'First_warning', 503, 403, 1, 0, 'Closed', '2023-06-07', 'FA');

-- Team_Crew_Uniform_Inventory
CREATE TABLE Team_Crew_Uniform_Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    uniform_type TEXT,
    size TEXT,
    quantity INTEGER,
    manufacturer TEXT,
    purchase_date TEXT,
    cost_usd REAL,
    last_worn_match_id INTEGER,
    condition TEXT,
    laundry_cycles INTEGER,
    fabric_type TEXT,
    color_scheme TEXT,
    sponsor_logo TEXT,
    inventory_location TEXT,
    notes TEXT,
    replacement_due_date TEXT,
    cleaned_by INTEGER,
    audit_status TEXT,
    last_audit_date TEXT,
    compliance_flag INTEGER
);
INSERT INTO Team_Crew_Uniform_Inventory (id, team_id, uniform_type, size, quantity, manufacturer, purchase_date, cost_usd, last_worn_match_id, condition, laundry_cycles, fabric_type, color_scheme, sponsor_logo, inventory_location, notes, replacement_due_date, cleaned_by, audit_status, last_audit_date, compliance_flag)
VALUES (1, 201, 'Kit', 'M', 30, 'Adidas', '2022-08-01', 1500.0, 401, 'Good', 120, 'Polyester', 'BlueWhite', 'SponsorA', 'WarehouseA', 'No_issues', '2024-08-01', 601, 'Passed', '2023-12-01', 1);
INSERT INTO Team_Crew_Uniform_Inventory (id, team_id, uniform_type, size, quantity, manufacturer, purchase_date, cost_usd, last_worn_match_id, condition, laundry_cycles, fabric_type, color_scheme, sponsor_logo, inventory_location, notes, replacement_due_date, cleaned_by, audit_status, last_audit_date, compliance_flag)
VALUES (2, 202, 'Training', 'L', 45, 'Nike', '2023-01-15', 2000.0, 402, 'Excellent', 80, 'Blend', 'RedBlack', 'SponsorB', 'WarehouseB', 'Seasonal_update', '2025-01-15', 602, 'Passed', '2024-01-10', 1);
INSERT INTO Team_Crew_Uniform_Inventory (id, team_id, uniform_type, size, quantity, manufacturer, purchase_date, cost_usd, last_worn_match_id, condition, laundry_cycles, fabric_type, color_scheme, sponsor_logo, inventory_location, notes, replacement_due_date, cleaned_by, audit_status, last_audit_date, compliance_flag)
VALUES (3, 203, 'Goalkeeper', 'XL', 20, 'Puma', '2022-05-20', 1200.0, 403, 'Fair', 200, 'Synthetic', 'GreenYellow', 'SponsorC', 'WarehouseC', 'Repair_needed', '2023-11-30', 603, 'Pending', '2023-09-20', 0);

-- Broadcast_Ad_Spot_Schedule
CREATE TABLE Broadcast_Ad_Spot_Schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcast_network_id INTEGER,
    ad_spot_id TEXT,
    start_time TEXT,
    end_time TEXT,
    duration_seconds INTEGER,
    ad_type TEXT,
    product_category TEXT,
    sponsor_id INTEGER,
    cost_usd REAL,
    impressions_estimated INTEGER,
    target_audience TEXT,
    location TEXT,
    campaign_id INTEGER,
    creative_version TEXT,
    airing_date TEXT,
    day_of_week TEXT,
    prime_time_flag INTEGER,
    viewer_rating REAL,
    compliance_notes TEXT,
    program_name TEXT,
    ad_agency_id INTEGER
);
INSERT INTO Broadcast_Ad_Spot_Schedule (id, broadcast_network_id, ad_spot_id, start_time, end_time, duration_seconds, ad_type, product_category, sponsor_id, cost_usd, impressions_estimated, target_audience, location, campaign_id, creative_version, airing_date, day_of_week, prime_time_flag, viewer_rating, compliance_notes, program_name, ad_agency_id)
VALUES (1, 401, 'AD001', '18:00:00', '18:00:30', 30, 'Video', 'Automotive', 701, 50000.0, 2000000, 'Adults_25_45', 'UK', 801, 'V1', '2023-09-01', 'Friday', 1, 7.5, 'All_good', 'PremierLeague', 901);
INSERT INTO Broadcast_Ad_Spot_Schedule (id, broadcast_network_id, ad_spot_id, start_time, end_time, duration_seconds, ad_type, product_category, sponsor_id, cost_usd, impressions_estimated, target_audience, location, campaign_id, creative_version, airing_date, day_of_week, prime_time_flag, viewer_rating, compliance_notes, program_name, ad_agency_id)
VALUES (2, 402, 'AD002', '20:15:00', '20:15:45', 45, 'Video', 'Beverage', 702, 75000.0, 2500000, 'Teens_15_24', 'Germany', 802, 'V2', '2023-09-02', 'Saturday', 1, 8.2, 'Reviewed', 'ChampionsLeague', 902);
INSERT INTO Broadcast_Ad_Spot_Schedule (id, broadcast_network_id, ad_spot_id, start_time, end_time, duration_seconds, ad_type, product_category, sponsor_id, cost_usd, impressions_estimated, target_audience, location, campaign_id, creative_version, airing_date, day_of_week, prime_time_flag, viewer_rating, compliance_notes, program_name, ad_agency_id)
VALUES (3, 403, 'AD003', '22:00:00', '22:01:00', 60, 'Video', 'Technology', 703, 90000.0, 3000000, 'Adults_30_55', 'Spain', 803, 'V1', '2023-09-03', 'Sunday', 0, 6.8, 'Pending_review', 'Liga', 903);

-- Environmental_Compliance_Reports
CREATE TABLE Environmental_Compliance_Reports (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    report_date TEXT,
    compliance_area TEXT,
    inspector_id INTEGER,
    findings TEXT,
    corrective_action TEXT,
    due_date TEXT,
    status TEXT,
    follow_up_date TEXT,
    notes TEXT,
    compliance_score REAL,
    audit_type TEXT,
    regulatory_body TEXT,
    document_reference TEXT,
    violations_count INTEGER,
    penalties_usd REAL,
    training_completed INTEGER,
    certification_level TEXT,
    emission_reduction_percent REAL,
    water_savings_percent REAL,
    waste_diversion_percent REAL
);
INSERT INTO Environmental_Compliance_Reports (id, stadium_id, report_date, compliance_area, inspector_id, findings, corrective_action, due_date, status, follow_up_date, notes, compliance_score, audit_type, regulatory_body, document_reference, violations_count, penalties_usd, training_completed, certification_level, emission_reduction_percent, water_savings_percent, waste_diversion_percent)
VALUES (1, 101, '2023-05-10', 'Air_Quality', 801, 'PM10_exceeds_limit', 'Install_filters', '2023-06-01', 'Open', '2023-05-20', 'Urgent', 78.5, 'Annual', 'EPA', 'DOC1001', 2, 15000.0, 0, 'Bronze', 12.5, 8.0, 15.0);
INSERT INTO Environmental_Compliance_Reports (id, stadium_id, report_date, compliance_area, inspector_id, findings, corrective_action, due_date, status, follow_up_date, notes, compliance_score, audit_type, regulatory_body, document_reference, violations_count, penalties_usd, training_completed, certification_level, emission_reduction_percent, water_savings_percent, waste_diversion_percent)
VALUES (2, 102, '2023-06-12', 'Water_Management', 802, 'Leak_in_pipeline', 'Repair_and_monitor', '2023-07-01', 'Open', '2023-06-22', 'Scheduled', 85.0, 'Quarterly', 'Local_Water_Agency', 'DOC1002', 1, 5000.0, 1, 'Silver', 5.0, 20.0, 25.0);
INSERT INTO Environmental_Compliance_Reports (id, stadium_id, report_date, compliance_area, inspector_id, findings, corrective_action, due_date, status, follow_up_date, notes, compliance_score, audit_type, regulatory_body, document_reference, violations_count, penalties_usd, training_completed, certification_level, emission_reduction_percent, water_savings_percent, waste_diversion_percent)
VALUES (3, 103, '2023-07-15', 'Waste_Management', 803, 'Improper_sorting', 'Staff_training', '2023-08-01', 'Closed', '2023-07-25', 'Resolved', 92.0, 'Annual', 'Environmental_Agency', 'DOC1003', 0, 0.0, 1, 'Gold', 2.5, 30.0, 40.0);

-- Sponsor_Licensing_Agreements
CREATE TABLE Sponsor_Licensing_Agreements (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    league_id INTEGER,
    sport TEXT,
    agreement_start_date TEXT,
    agreement_end_date TEXT,
    license_fee_usd REAL,
    royalty_percent REAL,
    exclusivity_flag INTEGER,
    territories TEXT,
    media_categories TEXT,
    branding_guidelines TEXT,
    approved_by INTEGER,
    legal_review_status TEXT,
    amendment_number INTEGER,
    renewal_option INTEGER,
    payment_schedule TEXT,
    performance_metrics TEXT,
    compliance_audit_date TEXT,
    notes TEXT,
    contract_document TEXT,
    status TEXT
);
INSERT INTO Sponsor_Licensing_Agreements (id, sponsor_id, league_id, sport, agreement_start_date, agreement_end_date, license_fee_usd, royalty_percent, exclusivity_flag, territories, media_categories, branding_guidelines, approved_by, legal_review_status, amendment_number, renewal_option, payment_schedule, performance_metrics, compliance_audit_date, notes, contract_document, status)
VALUES (1, 701, 1, 'Football', '2022-01-01', '2025-12-31', 5000000.0, 3.5, 1, 'Global', 'TV_Digital', 'GuidelinesV1', 401, 'Approved', 0, 1, 'Annual', 'KPIs_attendance', '2023-01-15', 'First_phase', 'DOC2001', 'Active');
INSERT INTO Sponsor_Licensing_Agreements (id, sponsor_id, league_id, sport, agreement_start_date, agreement_end_date, license_fee_usd, royalty_percent, exclusivity_flag, territories, media_categories, branding_guidelines, approved_by, legal_review_status, amendment_number, renewal_option, payment_schedule, performance_metrics, compliance_audit_date, notes, contract_document, status)
VALUES (2, 702, 2, 'Football', '2023-03-01', '2026-02-28', 3000000.0, 2.0, 0, 'EU', 'Print', 'GuidelinesV2', 402, 'Pending', 1, 0, 'Semiannual', 'KPIs_viewership', '2024-03-01', 'Amendment_pending', 'DOC2002', 'Draft');
INSERT INTO Sponsor_Licensing_Agreements (id, sponsor_id, league_id, sport, agreement_start_date, agreement_end_date, license_fee_usd, royalty_percent, exclusivity_flag, territories, media_categories, branding_guidelines, approved_by, legal_review_status, amendment_number, renewal_option, payment_schedule, performance_metrics, compliance_audit_date, notes, contract_document, status)
VALUES (3, 703, 3, 'Football', '2021-07-01', '2024-06-30', 4500000.0, 4.0, 1, 'NorthAmerica', 'Social', 'GuidelinesV3', 403, 'Approved', 2, 1, 'Quarterly', 'KPIs_engagement', '2022-07-10', 'Renewal_discussed', 'DOC2003', 'Active');

-- Community_Donation_Analytics
CREATE TABLE Community_Donation_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    donation_campaign_id INTEGER,
    donor_type TEXT,
    donation_date TEXT,
    amount_usd REAL,
    currency TEXT,
    allocation_purpose TEXT,
    region TEXT,
    impact_score REAL,
    matching_fund_usd REAL,
    tax_receipt_issued INTEGER,
    donor_contact_id INTEGER,
    campaign_goal_usd REAL,
    percentage_of_goal REAL,
    donor_feedback TEXT,
    repeat_donor_flag INTEGER,
    fund_disbursement_date TEXT,
    net_amount_usd REAL,
    notes TEXT,
    reporting_period TEXT,
    audit_status TEXT
);
INSERT INTO Community_Donation_Analytics (id, club_id, donation_campaign_id, donor_type, donation_date, amount_usd, currency, allocation_purpose, region, impact_score, matching_fund_usd, tax_receipt_issued, donor_contact_id, campaign_goal_usd, percentage_of_goal, donor_feedback, repeat_donor_flag, fund_disbursement_date, net_amount_usd, notes, reporting_period, audit_status)
VALUES (1, 201, 801, 'Individual', '2023-03-10', 500.0, 'USD', 'Youth_Program', 'Europe', 85.0, 0.0, 1, 901, 20000.0, 2.5, 'Positive', 1, '2023-04-01', 500.0, 'First_donation', 'Q1_2023', 'Passed');
INSERT INTO Community_Donation_Analytics (id, club_id, donation_campaign_id, donor_type, donation_date, amount_usd, currency, allocation_purpose, region, impact_score, matching_fund_usd, tax_receipt_issued, donor_contact_id, campaign_goal_usd, percentage_of_goal, donor_feedback, repeat_donor_flag, fund_disbursement_date, net_amount_usd, notes, reporting_period, audit_status)
VALUES (2, 202, 802, 'Corporate', '2023-04-15', 25000.0, 'USD', 'Stadium_Renovation', 'Asia', 92.0, 5000.0, 1, 902, 500000.0, 5.0, 'Excellent', 0, '2023-05-10', 25000.0, 'Matching_fund_applied', 'Q2_2023', 'Passed');
INSERT INTO Community_Donation_Analytics (id, club_id, donation_campaign_id, donor_type, donation_date, amount_usd, currency, allocation_purpose, region, impact_score, matching_fund_usd, tax_receipt_issued, donor_contact_id, campaign_goal_usd, percentage_of_goal, donor_feedback, repeat_donor_flag, fund_disbursement_date, net_amount_usd, notes, reporting_period, audit_status)
VALUES (3, 203, 803, 'Foundation', '2023-05-20', 100000.0, 'USD', 'Community_Health', 'NorthAmerica', 88.5, 20000.0, 1, 903, 1000000.0, 10.0, 'Very_positive', 0, '2023-06-15', 100000.0, 'Large_scale_project', 'Q2_2023', 'Pending');