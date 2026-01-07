-- Stadium parking facilities and usage metrics
CREATE TABLE Stadium_Parking (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    lot_number TEXT,
    total_spaces INTEGER,
    occupied_spaces INTEGER,
    disabled_spaces INTEGER,
    electric_charging_spots INTEGER,
    hourly_rate REAL,
    daily_rate REAL,
    monthly_rate REAL,
    security_staff_count INTEGER,
    surveillance_cameras INTEGER,
    lighting_level TEXT,
    entry_gate_count INTEGER,
    exit_gate_count INTEGER,
    valet_service_available TEXT,
    parking_management_system_version TEXT,
    last_maintenance_date TEXT,
    average_occupancy_percent REAL,
    revenue_last_month REAL,
    notes TEXT
);
INSERT INTO Stadium_Parking (stadium_id, lot_number, total_spaces, occupied_spaces, disabled_spaces, electric_charging_spots, hourly_rate, daily_rate, monthly_rate, security_staff_count, surveillance_cameras, lighting_level, entry_gate_count, exit_gate_count, valet_service_available, parking_management_system_version, last_maintenance_date, average_occupancy_percent, revenue_last_month, notes) VALUES (1, 'A', 5000, 3500, 50, 120, 5.0, 30.0, 600.0, 25, 150, 'high', 4, 4, 'yes', 'v2.3', '2023-11-01', 70.0, 75000.0, 'Peak season');
INSERT INTO Stadium_Parking (stadium_id, lot_number, total_spaces, occupied_spaces, disabled_spaces, electric_charging_spots, hourly_rate, daily_rate, monthly_rate, security_staff_count, surveillance_cameras, lighting_level, entry_gate_count, exit_gate_count, valet_service_available, parking_management_system_version, last_maintenance_date, average_occupancy_percent, revenue_last_month, notes) VALUES (2, 'B', 3000, 2100, 30, 80, 4.5, 28.0, 550.0, 18, 100, 'medium', 3, 3, 'no', 'v2.1', '2023-10-15', 70.0, 50000.0, 'Standard operation');
INSERT INTO Stadium_Parking (stadium_id, lot_number, total_spaces, occupied_spaces, disabled_spaces, electric_charging_spots, hourly_rate, daily_rate, monthly_rate, security_staff_count, surveillance_cameras, lighting_level, entry_gate_count, exit_gate_count, valet_service_available, parking_management_system_version, last_maintenance_date, average_occupancy_percent, revenue_last_month, notes) VALUES (3, 'C', 2000, 1500, 20, 60, 6.0, 35.0, 700.0, 12, 80, 'high', 2, 2, 'yes', 'v2.4', '2023-12-01', 75.0, 42000.0, 'New lot opened');

-- Club gift shop inventory and performance
CREATE TABLE Club_Gift_Shop (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    shop_location TEXT,
    total_area_sqft INTEGER,
    staff_count INTEGER,
    average_daily_customers INTEGER,
    total_sales_last_month REAL,
    online_sales_percent REAL,
    merchandise_categories TEXT,
    loyalty_program_active TEXT,
    cash_register_count INTEGER,
    inventory_turnover_rate REAL,
    opening_hours TEXT,
    closing_hours TEXT,
    special_events_per_month INTEGER,
    security_rating TEXT,
    foot_traffic_peak_hour INTEGER,
    avg_transaction_value REAL,
    gift_wrap_available TEXT,
    seasonal_items_percentage REAL,
    notes TEXT
);
INSERT INTO Club_Gift_Shop (club_id, shop_location, total_area_sqft, staff_count, average_daily_customers, total_sales_last_month, online_sales_percent, merchandise_categories, loyalty_program_active, cash_register_count, inventory_turnover_rate, opening_hours, closing_hours, special_events_per_month, security_rating, foot_traffic_peak_hour, avg_transaction_value, gift_wrap_available, seasonal_items_percentage, notes) VALUES (1, 'Stadium West Wing', 2500, 15, 350, 120000.0, 22.5, 'apparel,accessories,collectibles', 'yes', 4, 3.2, '09:00', '21:00', 2, 'A', 19, 34.5, 'yes', 15.0, 'High foot traffic during matches');
INSERT INTO Club_Gift_Shop (club_id, shop_location, total_area_sqft, staff_count, average_daily_customers, total_sales_last_month, online_sales_percent, merchandise_categories, loyalty_program_active, cash_register_count, inventory_turnover_rate, opening_hours, closing_hours, special_events_per_month, security_rating, foot_traffic_peak_hour, avg_transaction_value, gift_wrap_available, seasonal_items_percentage, notes) VALUES (2, 'City Mall Outlet', 1800, 10, 220, 85000.0, 30.0, 'apparel,headwear,posters', 'no', 3, 2.8, '10:00', '20:00', 1, 'B', 20, 28.0, 'no', 10.0, 'Focus on local fans');
INSERT INTO Club_Gift_Shop (club_id, shop_location, total_area_sqft, staff_count, average_daily_customers, total_sales_last_month, online_sales_percent, merchandise_categories, loyalty_program_active, cash_register_count, inventory_turnover_rate, opening_hours, closing_hours, special_events_per_month, security_rating, foot_traffic_peak_hour, avg_transaction_value, gift_wrap_available, seasonal_items_percentage, notes) VALUES (3, 'Online Store', 0, 5, 500, 60000.0, 85.0, 'digital,apparel,accessories', 'yes', 1, 4.5, '00:00', '23:59', 0, 'A', 0, 22.0, 'yes', 20.0, 'No physical location');

-- Match commentary metadata
CREATE TABLE Match_Commentary (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    commentator_name TEXT,
    language TEXT,
    live_feed_url TEXT,
    commentary_start_time TEXT,
    commentary_end_time TEXT,
    total_words_spoken INTEGER,
    average_sentiment_score REAL,
    highlight_clips_count INTEGER,
    audience_rating REAL,
    broadcast_network TEXT,
    commentary_style TEXT,
    interruptions_count INTEGER,
    technical_issues_flag TEXT,
    equipment_used TEXT,
    backup_commentator_name TEXT,
    commentary_theme TEXT,
    sponsor_message_count INTEGER,
    ad_breaks_count INTEGER,
    notes TEXT
);
INSERT INTO Match_Commentary (match_id, commentator_name, language, live_feed_url, commentary_start_time, commentary_end_time, total_words_spoken, average_sentiment_score, highlight_clips_count, audience_rating, broadcast_network, commentary_style, interruptions_count, technical_issues_flag, equipment_used, backup_commentator_name, commentary_theme, sponsor_message_count, ad_breaks_count, notes) VALUES (101, 'John Smith', 'English', 'http://stream.example.com/m101', '2023-11-20 15:00', '2023-11-20 16:45', 45000, 0.75, 12, 4.2, 'GlobalSports', 'analytical', 0, 'no', 'mixing_console', 'Emily Davis', 'tactical', 3, 5, 'High engagement');
INSERT INTO Match_Commentary (match_id, commentator_name, language, live_feed_url, commentary_start_time, commentary_end_time, total_words_spoken, average_sentiment_score, highlight_clips_count, audience_rating, broadcast_network, commentary_style, interruptions_count, technical_issues_flag, equipment_used, backup_commentator_name, commentary_theme, sponsor_message_count, ad_breaks_count, notes) VALUES (102, 'Luis Garcia', 'Spanish', 'http://stream.example.com/m102', '2023-11-21 18:00', '2023-11-21 19:30', 42000, 0.68, 10, 3.9, 'LatinoTV', 'enthusiastic', 1, 'yes', 'digital_mixer', 'Carlos Mendes', 'emotional', 2, 4, 'Minor audio glitch');
INSERT INTO Match_Commentary (match_id, commentator_name, language, live_feed_url, commentary_start_time, commentary_end_time, total_words_spoken, average_sentiment_score, highlight_clips_count, audience_rating, broadcast_network, commentary_style, interruptions_count, technical_issues_flag, equipment_used, backup_commentator_name, commentary_theme, sponsor_message_count, ad_breaks_count, notes) VALUES (103, 'Anna Lee', 'Korean', 'http://stream.example.com/m103', '2023-11-22 20:00', '2023-11-22 21:45', 46000, 0.80, 15, 4.5, 'AsiaSports', 'playbyplay', 0, 'no', 'studio_mic', 'Kim Sun', 'strategic', 4, 6, 'Record high viewership');

-- Player scouting reports
CREATE TABLE Player_Scouting_Reports (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    scout_name TEXT,
    report_date TEXT,
    overall_potential INTEGER,
    technical_score INTEGER,
    tactical_score INTEGER,
    physical_score INTEGER,
    mental_score INTEGER,
    position_fit TEXT,
    recommended_transfer_fee REAL,
    contract_length_years INTEGER,
    injury_risk_score INTEGER,
    adaptability_score INTEGER,
    language_proficiency TEXT,
    cultural_fit_score INTEGER,
    previous_club TEXT,
    league_experience_years INTEGER,
    video_highlights_url TEXT,
    notes TEXT,
    confidentiality_level TEXT
);
INSERT INTO Player_Scouting_Reports (player_id, scout_name, report_date, overall_potential, technical_score, tactical_score, physical_score, mental_score, position_fit, recommended_transfer_fee, contract_length_years, injury_risk_score, adaptability_score, language_proficiency, cultural_fit_score, previous_club, league_experience_years, video_highlights_url, notes, confidentiality_level) VALUES (501, 'Marco Rossi', '2023-11-01', 92, 85, 88, 80, 90, 'Forward', 75000000.0, 5, 12, 88, 'English,Italian', 85, 'AC Milan', 5, 'http://videos.example.com/501', 'Strong aerial ability', 'high');
INSERT INTO Player_Scouting_Reports (player_id, scout_name, report_date, overall_potential, technical_score, tactical_score, physical_score, mental_score, position_fit, recommended_transfer_fee, contract_length_years, injury_risk_score, adaptability_score, language_proficiency, cultural_fit_score, previous_club, league_experience_years, video_highlights_url, notes, confidentiality_level) VALUES (502, 'Sarah Patel', '2023-11-03', 86, 78, 79, 84, 81, 'Midfielder', 42000000.0, 4, 15, 80, 'English', 80, 'Southampton', 4, 'http://videos.example.com/502', 'Excellent vision', 'medium');
INSERT INTO Player_Scouting_Reports (player_id, scout_name, report_date, overall_potential, technical_score, tactical_score, physical_score, mental_score, position_fit, recommended_transfer_fee, contract_length_years, injury_risk_score, adaptability_score, language_proficiency, cultural_fit_score, previous_club, league_experience_years, video_highlights_url, notes, confidentiality_level) VALUES (503, 'Jin Ho', '2023-11-05', 89, 82, 84, 77, 85, 'Defender', 56000000.0, 5, 10, 85, 'Korean,English', 87, 'FC Seoul', 6, 'http://videos.example.com/503', 'Solid positioning', 'high');

-- Team travel expenses tracking
CREATE TABLE Team_Travel_Expenses (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    season TEXT,
    travel_type TEXT,
    destination_city TEXT,
    departure_date TEXT,
    return_date TEXT,
    flight_cost REAL,
    accommodation_cost REAL,
    meals_cost REAL,
    ground_transport_cost REAL,
    total_cost REAL,
    sponsor_contribution REAL,
    per_diem_rate REAL,
    number_of_staff INTEGER,
    number_of_players INTEGER,
    carbon_offset_cost REAL,
    insurance_cost REAL,
    notes TEXT,
    approved_by TEXT
);
INSERT INTO Team_Travel_Expenses (team_id, season, travel_type, destination_city, departure_date, return_date, flight_cost, accommodation_cost, meals_cost, ground_transport_cost, total_cost, sponsor_contribution, per_diem_rate, number_of_staff, number_of_players, carbon_offset_cost, insurance_cost, notes, approved_by) VALUES (1, '2023/24', 'Away', 'Barcelona', '2023-11-10', '2023-11-15', 25000.0, 34000.0, 12000.0, 8000.0, 79000.0, 15000.0, 75.0, 12, 20, 2000.0, 3000.0, 'Standard UEFA travel', 'FinanceDept');
INSERT INTO Team_Travel_Expenses (team_id, season, travel_type, destination_city, departure_date, return_date, flight_cost, accommodation_cost, meals_cost, ground_transport_cost, total_cost, sponsor_contribution, per_diem_rate, number_of_staff, number_of_players, carbon_offset_cost, insurance_cost, notes, approved_by) VALUES (2, '2023/24', 'Preseason', 'Lisbon', '2023-07-20', '2023-07-27', 18000.0, 25000.0, 10000.0, 6000.0, 59000.0, 10000.0, 70.0, 8, 18, 1500.0, 2500.0, 'Training camp', 'OperationsMgr');
INSERT INTO Team_Travel_Expenses (team_id, season, travel_type, destination_city, departure_date, return_date, flight_cost, accommodation_cost, meals_cost, ground_transport_cost, total_cost, sponsor_contribution, per_diem_rate, number_of_staff, number_of_players, carbon_offset_cost, insurance_cost, notes, approved_by) VALUES (3, '2023/24', 'Domestic', 'Manchester', '2023-09-05', '2023-09-07', 5000.0, 8000.0, 4000.0, 2000.0, 19000.0, 3000.0, 65.0, 5, 15, 500.0, 800.0, 'Cup match travel', 'TeamAdmin');

-- League sponsorship performance metrics
CREATE TABLE League_Sponsorship_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    sponsor_id INTEGER,
    contract_start_date TEXT,
    contract_end_date TEXT,
    annual_fee REAL,
    brand_exposure_score REAL,
    broadcast_mentions INTEGER,
    stadium_ads_count INTEGER,
    digital_campaign_hits INTEGER,
    social_media_impressions INTEGER,
    activation_events_count INTEGER,
    ROI_estimate REAL,
    renewal_probability REAL,
    exclusivity_flag TEXT,
    sector_category TEXT,
    payment_terms TEXT,
    compliance_audit_score REAL,
    notes TEXT,
    last_updated TEXT
);
INSERT INTO League_Sponsorship_Metrics (league_id, sponsor_id, contract_start_date, contract_end_date, annual_fee, brand_exposure_score, broadcast_mentions, stadium_ads_count, digital_campaign_hits, social_media_impressions, activation_events_count, ROI_estimate, renewal_probability, exclusivity_flag, sector_category, payment_terms, compliance_audit_score, notes, last_updated) VALUES (1, 1001, '2022-01-01', '2025-12-31', 12000000.0, 85.5, 250, 40, 5000000, 35000000, 12, 1.8, 0.92, 'yes', 'sportswear', 'quarterly', 96.0, 'Strong brand fit', '2023-11-01');
INSERT INTO League_Sponsorship_Metrics (league_id, sponsor_id, contract_start_date, contract_end_date, annual_fee, brand_exposure_score, broadcast_mentions, stadium_ads_count, digital_campaign_hits, social_media_impressions, activation_events_count, ROI_estimate, renewal_probability, exclusivity_flag, sector_category, payment_terms, compliance_audit_score, notes, last_updated) VALUES (2, 1002, '2021-07-01', '2024-06-30', 8500000.0, 78.0, 180, 30, 3200000, 21000000, 9, 1.5, 0.85, 'no', 'automotive', 'annual', 89.5, 'Positive fan response', '2023-10-15');
INSERT INTO League_Sponsorship_Metrics (league_id, sponsor_id, contract_start_date, contract_end_date, annual_fee, brand_exposure_score, broadcast_mentions, stadium_ads_count, digital_campaign_hits, social_media_impressions, activation_events_count, ROI_estimate, renewal_probability, exclusivity_flag, sector_category, payment_terms, compliance_audit_score, notes, last_updated) VALUES (3, 1003, '2023-03-01', '2026-02-28', 6000000.0, 70.2, 120, 20, 2100000, 15000000, 7, 1.3, 0.78, 'yes', 'technology', 'semiannual', 92.0, 'Emerging market', '2023-11-05');

-- Media accreditation records
CREATE TABLE Media_Accreditation (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    media_outlet_name TEXT,
    contact_person TEXT,
    email TEXT,
    phone TEXT,
    accreditation_type TEXT,
    valid_from TEXT,
    valid_to TEXT,
    access_level TEXT,
    number_of_credits INTEGER,
    equipment_allowed TEXT,
    badge_number TEXT,
    notes TEXT,
    approved_by TEXT,
    accreditation_status TEXT,
    region TEXT,
    language TEXT,
    special_requests TEXT,
    fees_paid REAL,
    renewal_needed TEXT,
    last_modified TEXT
);
INSERT INTO Media_Accreditation (media_outlet_name, contact_person, email, phone, accreditation_type, valid_from, valid_to, access_level, number_of_credits, equipment_allowed, badge_number, notes, approved_by, accreditation_status, region, language, special_requests, fees_paid, renewal_needed, last_modified) VALUES ('GlobalSports News', 'Alice Brown', 'alice.brown@example.com', '5551234567', 'Print', '2023-01-01', '2024-12-31', 'Full', 10, 'cameras, microphones', 'GSN001', 'Experienced correspondent', 'MediaDirector', 'active', 'Europe', 'English', 'none', 1500.0, 'no', '2023-11-01');
INSERT INTO Media_Accreditation (media_outlet_name, contact_person, email, phone, accreditation_type, valid_from, valid_to, access_level, number_of_credits, equipment_allowed, badge_number, notes, approved_by, accreditation_status, region, language, special_requests, fees_paid, renewal_needed, last_modified) VALUES ('AsiaLive TV', 'Ken Wu', 'ken.wu@example.com', '5559876543', 'Broadcast', '2023-03-15', '2025-03-14', 'Full', 8, 'cameras', 'ALV045', 'High-definition broadcast', 'HeadOfAccreditation', 'active', 'Asia', 'Mandarin', 'extra power outlets', 2000.0, 'yes', '2023-10-20');
INSERT INTO Media_Accreditation (media_outlet_name, contact_person, email, phone, accreditation_type, valid_from, valid_to, access_level, number_of_credits, equipment_allowed, badge_number, notes, approved_by, accreditation_status, region, language, special_requests, fees_paid, renewal_needed, last_modified) VALUES ('EuroFootball Blog', 'Marta Novak', 'marta.novak@example.com', '5552468101', 'Online', '2022-09-01', '2023-08-31', 'Limited', 5, 'smartphone', 'EFB123', 'Frequent contributor', 'ContentLead', 'expired', 'Europe', 'English', 'wifi hotspot', 500.0, 'yes', '2023-09-15');

-- Fan survey response records
CREATE TABLE Fan_Survey_Responses (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    match_id INTEGER,
    survey_date TEXT,
    overall_satisfaction INTEGER,
    stadium_cleanliness_rating INTEGER,
    staff_friendliness_rating INTEGER,
    food_quality_rating INTEGER,
    ticket_price_fairness INTEGER,
    likelihood_to_return INTEGER,
    net_promoter_score INTEGER,
    comments TEXT,
    age_group TEXT,
    gender TEXT,
    loyalty_program_member TEXT,
    season_ticket_holder TEXT,
    favorite_team TEXT,
    preferred_seating_section TEXT,
    survey_method TEXT,
    response_time_seconds INTEGER,
    notes TEXT
);
INSERT INTO Fan_Survey_Responses (fan_id, match_id, survey_date, overall_satisfaction, stadium_cleanliness_rating, staff_friendliness_rating, food_quality_rating, ticket_price_fairness, likelihood_to_return, net_promoter_score, comments, age_group, gender, loyalty_program_member, season_ticket_holder, favorite_team, preferred_seating_section, survey_method, response_time_seconds, notes) VALUES (10001, 101, '2023-11-20', 9, 8, 9, 7, 8, 9, 70, 'Great atmosphere', '25-34', 'Male', 'yes', 'yes', 'Team A', 'North Stand', 'online', 45, 'Positive overall');
INSERT INTO Fan_Survey_Responses (fan_id, match_id, survey_date, overall_satisfaction, stadium_cleanliness_rating, staff_friendliness_rating, food_quality_rating, ticket_price_fairness, likelihood_to_return, net_promoter_score, comments, age_group, gender, loyalty_program_member, season_ticket_holder, favorite_team, preferred_seating_section, survey_method, response_time_seconds, notes) VALUES (10002, 102, '2023-11-21', 7, 6, 7, 6, 7, 6, 30, 'Food lines too long', '35-44', 'Female', 'no', 'no', 'Team B', 'East Stand', 'mobile', 52, 'Needs improvement');
INSERT INTO Fan_Survey_Responses (fan_id, match_id, survey_date, overall_satisfaction, stadium_cleanliness_rating, staff_friendliness_rating, food_quality_rating, ticket_price_fairness, likelihood_to_return, net_promoter_score, comments, age_group, gender, loyalty_program_member, season_ticket_holder, favorite_team, preferred_seating_section, survey_method, response_time_seconds, notes) VALUES (10003, 103, '2023-11-22', 8, 9, 8, 8, 9, 8, 55, 'Excellent staff', '18-24', 'Male', 'yes', 'no', 'Team C', 'South Stand', 'kiosk', 38, 'Very satisfied');

-- Coach certification records
CREATE TABLE Coach_Certifications (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    coach_id INTEGER,
    certification_body TEXT,
    certification_level TEXT,
    issue_date TEXT,
    expiry_date TEXT,
    courses_completed TEXT,
    continuing_education_hours INTEGER,
    last_evaluation_score REAL,
    eligible_for_top_league TEXT,
    notes TEXT,
    verified_by TEXT,
    renewal_status TEXT,
    license_number TEXT,
    professional_experience_years INTEGER,
    specialty_area TEXT,
    max_players_coached INTEGER,
    compliance_issues TEXT,
    digital_copy_url TEXT,
    audit_date TEXT
);
INSERT INTO Coach_Certifications (coach_id, certification_body, certification_level, issue_date, expiry_date, courses_completed, continuing_education_hours, last_evaluation_score, eligible_for_top_league, notes, verified_by, renewal_status, license_number, professional_experience_years, specialty_area, max_players_coached, compliance_issues, digital_copy_url, audit_date) VALUES (2001, 'UEFA', 'Pro', '2020-06-01', '2025-05-31', 'Advanced Tactics,Leadership', 40, 4.7, 'yes', 'Highly regarded', 'FA_Agency', 'pending', 'UEFA12345', 12, 'Offensive Play', 25, 'none', 'http://certs.example.com/2001.pdf', '2023-11-01');
INSERT INTO Coach_Certifications (coach_id, certification_body, certification_level, issue_date, expiry_date, courses_completed, continuing_education_hours, last_evaluation_score, eligible_for_top_league, notes, verified_by, renewal_status, license_number, professional_experience_years, specialty_area, max_players_coached, compliance_issues, digital_copy_url, audit_date) VALUES (2002, 'FA', 'A', '2018-09-15', '2023-09-14', 'Youth Development,Match Analysis', 30, 4.3, 'no', 'Focus on youth', 'FA_Agency', 'expired', 'FA67890', 8, 'Defensive Organization', 20, 'minor paperwork', 'http://certs.example.com/2002.pdf', '2022-08-20');
INSERT INTO Coach_Certifications (coach_id, certification_body, certification_level, issue_date, expiry_date, courses_completed, continuing_education_hours, last_evaluation_score, eligible_for_top_league, notes, verified_by, renewal_status, license_number, professional_experience_years, specialty_area, max_players_coached, compliance_issues, digital_copy_url, audit_date) VALUES (2003, 'CONMEBOL', 'B', '2019-03-10', '2024-03-09', 'Physical Conditioning', 25, 4.5, 'yes', 'Strong conditioning program', 'CONMEBOL_Office', 'active', 'CONM123', 10, 'Set Pieces', 22, 'none', 'http://certs.example.com/2003.pdf', '2023-06-15');

-- Youth tournament results and statistics
CREATE TABLE Youth_Tournament_Results (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_name TEXT,
    year INTEGER,
    age_category TEXT,
    host_city TEXT,
    winning_club_id INTEGER,
    runner_up_club_id INTEGER,
    third_place_club_id INTEGER,
    total_teams INTEGER,
    matches_played INTEGER,
    goals_scored_total INTEGER,
    top_scorer_player_id INTEGER,
    top_scorer_goals INTEGER,
    best_goalkeeper_player_id INTEGER,
    best_goalkeeper_saves INTEGER,
    fair_play_award_club_id INTEGER,
    MVP_player_id INTEGER,
    attendance_average INTEGER,
    sponsor_main TEXT,
    notes TEXT,
    record_created TEXT
);
INSERT INTO Youth_Tournament_Results (tournament_name, year, age_category, host_city, winning_club_id, runner_up_club_id, third_place_club_id, total_teams, matches_played, goals_scored_total, top_scorer_player_id, top_scorer_goals, best_goalkeeper_player_id, best_goalkeeper_saves, fair_play_award_club_id, MVP_player_id, attendance_average, sponsor_main, notes, record_created) VALUES ('International U17 Cup', 2023, 'U17', 'Berlin', 10, 12, 14, 16, 31, 115, 210, 7, 215, 30, 11, 210, 7500, 'SportGear', 'Well organized', '2023-11-02');
INSERT INTO Youth_Tournament_Results (tournament_name, year, age_category, host_city, winning_club_id, runner_up_club_id, third_place_club_id, total_teams, matches_played, goals_scored_total, top_scorer_player_id, top_scorer_goals, best_goalkeeper_player_id, best_goalkeeper_saves, fair_play_award_club_id, MVP_player_id, attendance_average, sponsor_main, notes, record_created) VALUES ('European U19 Championship', 2022, 'U19', 'Madrid', 20, 22, 24, 12, 23, 89, 320, 6, 330, 25, 21, 315, 6200, 'TechSports', 'High competition level', '2022-12-15');
INSERT INTO Youth_Tournament_Results (tournament_name, year, age_category, host_city, winning_club_id, runner_up_club_id, third_place_club_id, total_teams, matches_played, goals_scored_total, top_scorer_player_id, top_scorer_goals, best_goalkeeper_player_id, best_goalkeeper_saves, fair_play_award_club_id, MVP_player_id, attendance_average, sponsor_main, notes, record_created) VALUES ('National U15 League Finals', 2021, 'U15', 'London', 30, 32, 34, 8, 15, 62, 430, 5, 440, 18, 31, 425, 5000, 'YouthSport', 'Great talent exposure', '2021-11-20');