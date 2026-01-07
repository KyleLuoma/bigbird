-- Stadium concession sales per match
CREATE TABLE Stadium_Concession_Sales (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    concession_item TEXT,
    quantity_sold INTEGER,
    total_revenue REAL,
    vendor_id INTEGER,
    payment_method TEXT,
    sale_date TEXT,
    time_slot TEXT,
    transaction_id TEXT,
    employee_id INTEGER,
    discount_applied REAL,
    currency TEXT,
    avg_price_per_item REAL,
    units_per_transaction INTEGER,
    loyalty_points_earned INTEGER,
    surcharge_amount REAL,
    tax_amount REAL,
    net_amount REAL,
    notes TEXT
);

INSERT INTO Stadium_Concession_Sales (match_id, concession_item, quantity_sold, total_revenue, vendor_id, payment_method, sale_date, time_slot, transaction_id, employee_id, discount_applied, currency, avg_price_per_item, units_per_transaction, loyalty_points_earned, surcharge_amount, tax_amount, net_amount, notes) VALUES (101, 'Hot_Dog', 150, 750.0, 12, 'Card', '2025-04-10', 'Evening', 'TX1001', 23, 0.0, 'USD', 5.0, 1, 150, 0.0, 60.0, 690.0, 'High_demand');
INSERT INTO Stadium_Concession_Sales (match_id, concession_item, quantity_sold, total_revenue, vendor_id, payment_method, sale_date, time_slot, transaction_id, employee_id, discount_applied, currency, avg_price_per_item, units_per_transaction, loyalty_points_earned, surcharge_amount, tax_amount, net_amount, notes) VALUES (102, 'Popcorn', 200, 400.0, 15, 'Cash', '2025-05-12', 'Afternoon', 'TX1002', 27, 5.0, 'USD', 2.0, 2, 200, 0.0, 32.0, 363.0, 'Promo_applied');
INSERT INTO Stadium_Concession_Sales (match_id, concession_item, quantity_sold, total_revenue, vendor_id, payment_method, sale_date, time_slot, transaction_id, employee_id, discount_applied, currency, avg_price_per_item, units_per_transaction, loyalty_points_earned, surcharge_amount, tax_amount, net_amount, notes) VALUES (103, 'Beer', 120, 960.0, 18, 'Card', '2025-06-15', 'Night', 'TX1003', 31, 0.0, 'USD', 8.0, 1, 120, 0.0, 76.8, 883.2, 'Sold_out_half_time');

-- Player scouting events
CREATE TABLE Player_Scouting_Events (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    scout_name TEXT,
    player_api_id INTEGER,
    event_date TEXT,
    event_location TEXT,
    scouting_report TEXT,
    rating INTEGER,
    position TEXT,
    age_at_event INTEGER,
    height_cm INTEGER,
    weight_kg INTEGER,
    preferred_foot TEXT,
    speed_score INTEGER,
    technique_score INTEGER,
    tactical_understanding_score INTEGER,
    mentality_score INTEGER,
    contract_status TEXT,
    potential_market_value REAL,
    interested_clubs TEXT,
    follow_up_date TEXT,
    notes TEXT
);

INSERT INTO Player_Scouting_Events (scout_name, player_api_id, event_date, event_location, scouting_report, rating, position, age_at_event, height_cm, weight_kg, preferred_foot, speed_score, technique_score, tactical_understanding_score, mentality_score, contract_status, potential_market_value, interested_clubs, follow_up_date, notes) VALUES ('John_Doe', 5001, '2025-01-20', 'Lisbon', 'Strong_offensive_play', 85, 'Forward', 19, 182, 78, 'Right', 90, 88, 80, 85, 'Free', 25.5, 'ClubA,ClubB', '2025-02-10', 'First_contact_made');
INSERT INTO Player_Scouting_Events (scout_name, player_api_id, event_date, event_location, scouting_report, rating, position, age_at_event, height_cm, weight_kg, preferred_foot, speed_score, technique_score, tactical_understanding_score, mentality_score, contract_status, potential_market_value, interested_clubs, follow_up_date, notes) VALUES ('Anna_Smith', 5002, '2025-02-15', 'Munich', 'Defensive_mastery', 88, 'Center_Back', 21, 190, 85, 'Left', 78, 84, 89, 90, 'Signed', 30.0, 'ClubC', '2025-03-01', 'Negotiations_open');
INSERT INTO Player_Scouting_Events (scout_name, player_api_id, event_date, event_location, scouting_report, rating, position, age_at_event, height_cm, weight_kg, preferred_foot, speed_score, technique_score, tactical_understanding_score, mentality_score, contract_status, potential_market_value, interested_clubs, follow_up_date, notes) VALUES ('Liu_Wei', 5003, '2025-03-05', 'Tokyo', 'Versatile_midfielder', 82, 'Midfielder', 20, 176, 73, 'Right', 85, 80, 83, 82, 'Free', 22.1, 'ClubD,ClubE', '2025-03-20', 'Video_highlights_sent');

-- Team academy enrollments
CREATE TABLE Team_Academy_Enrollments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    academy_id INTEGER,
    player_api_id INTEGER,
    enrollment_date TEXT,
    graduation_date TEXT,
    age_at_enrollment INTEGER,
    position TEXT,
    coach_assigned TEXT,
    training_hours_per_week INTEGER,
    academic_score REAL,
    nutrition_plan TEXT,
    medical_check_passed TEXT,
    scholarship_amount REAL,
    contract_option TEXT,
    sponsor_id INTEGER,
    residence_city TEXT,
    country_of_origin TEXT,
    language_proficiency TEXT,
    exit_reason TEXT,
    final_evaluation_score REAL,
    notes TEXT
);

INSERT INTO Team_Academy_Enrollments (academy_id, player_api_id, enrollment_date, graduation_date, age_at_enrollment, position, coach_assigned, training_hours_per_week, academic_score, nutrition_plan, medical_check_passed, scholarship_amount, contract_option, sponsor_id, residence_city, country_of_origin, language_proficiency, exit_reason, final_evaluation_score, notes) VALUES (1, 6001, '2023-09-01', '2026-06-30', 16, 'Goalkeeper', 'Coach_A', 15, 88.5, 'Standard', 'Yes', 5000.0, 'Option', 101, 'Barcelona', 'Spain', 'Spanish,English', 'Graduated', 92.0, 'Promoted_to_first_team');
INSERT INTO Team_Academy_Enrollments (academy_id, player_api_id, enrollment_date, graduation_date, age_at_enrollment, position, coach_assigned, training_hours_per_week, academic_score, nutrition_plan, medical_check_passed, scholarship_amount, contract_option, sponsor_id, residence_city, country_of_origin, language_proficiency, exit_reason, final_evaluation_score, notes) VALUES (2, 6002, '2022-07-15', '2025-07-14', 15, 'Defender', 'Coach_B', 12, 81.0, 'Low_Carb', 'Yes', 3000.0, 'None', 102, 'Munich', 'Germany', 'German,English', 'Transfer', 85.5, 'Moved_to_partner_club');
INSERT INTO Team_Academy_Enrollments (academy_id, player_api_id, enrollment_date, graduation_date, age_at_enrollment, position, coach_assigned, training_hours_per_week, academic_score, nutrition_plan, medical_check_passed, scholarship_amount, contract_option, sponsor_id, residence_city, country_of_origin, language_proficiency, exit_reason, final_evaluation_score, notes) VALUES (3, 6003, '2021-01-10', '2024-12-31', 17, 'Midfielder', 'Coach_C', 18, 90.2, 'High_Protein', 'Yes', 7000.0, 'Option', 103, 'Rome', 'Italy', 'Italian,English', 'Retired', 70.0, 'Career_change_to_coaching');

-- League merchandise distribution
CREATE TABLE League_Merchandise_Distribution (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    distribution_center_id INTEGER,
    distribution_date TEXT,
    product_sku TEXT,
    product_name TEXT,
    quantity_distributed INTEGER,
    destination_team_id INTEGER,
    shipping_method TEXT,
    carrier_name TEXT,
    tracking_number TEXT,
    cost_per_unit REAL,
    total_cost REAL,
    lead_time_days INTEGER,
    temperature_control TEXT,
    hazard_class TEXT,
    received_by TEXT,
    receipt_date TEXT,
    condition_report TEXT,
    notes TEXT
);

INSERT INTO League_Merchandise_Distribution (league_id, distribution_center_id, distribution_date, product_sku, product_name, quantity_distributed, destination_team_id, shipping_method, carrier_name, tracking_number, cost_per_unit, total_cost, lead_time_days, temperature_control, hazard_class, received_by, receipt_date, condition_report, notes) VALUES (1, 10, '2025-04-01', 'JER001', 'Home_Jersey', 500, 20, 'Air', 'FastAir', 'TRK001', 45.0, 22500.0, 2, 'No', 'None', 'John_Manager', '2025-04-03', 'Good', 'Season_launch');
INSERT INTO League_Merchandise_Distribution (league_id, distribution_center_id, distribution_date, product_sku, product_name, quantity_distributed, destination_team_id, shipping_method, carrier_name, tracking_number, cost_per_unit, total_cost, lead_time_days, temperature_control, hazard_class, received_by, receipt_date, condition_report, notes) VALUES (1, 11, '2025-04-02', 'SCARF01', 'Team_Scarf', 200, 21, 'Ground', 'RoadTrans', 'TRK002', 12.5, 2500.0, 4, 'No', 'None', 'Mike_Supervisor', '2025-04-07', 'Minor_Scratches', 'Promo_packaging');
INSERT INTO League_Merchandise_Distribution (league_id, distribution_center_id, distribution_date, product_sku, product_name, quantity_distributed, destination_team_id, shipping_method, carrier_name, tracking_number, cost_per_unit, total_cost, lead_time_days, temperature_control, hazard_class, received_by, receipt_date, condition_report, notes) VALUES (1, 12, '2025-04-03', 'CAP005', 'Official_Cap', 300, 22, 'Air', 'SkyCargo', 'TRK003', 20.0, 6000.0, 3, 'No', 'None', 'Laura_Assistant', '2025-04-05', 'Excellent', 'Special_edition');

-- Match referee reviews
CREATE TABLE Match_Referee_Reviews (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    referee_id INTEGER,
    review_date TEXT,
    overall_score INTEGER,
    decision_accuracy INTEGER,
    fitness_score INTEGER,
    disciplinary_actions INTEGER,
    communication_score INTEGER,
    positioning_score INTEGER,
    control_of_game_score INTEGER,
    incidents_reported TEXT,
    comments TEXT,
    reviewer_name TEXT,
    reviewer_role TEXT,
    follow_up_required TEXT,
    follow_up_action TEXT,
    final_decision TEXT,
    review_version TEXT,
    notes TEXT
);

INSERT INTO Match_Referee_Reviews (match_id, referee_id, review_date, overall_score, decision_accuracy, fitness_score, disciplinary_actions, communication_score, positioning_score, control_of_game_score, incidents_reported, comments, reviewer_name, reviewer_role, follow_up_required, follow_up_action, final_decision, review_version, notes) VALUES (201, 301, '2025-04-10', 87, 90, 85, 2, 88, 92, 89, 'None', 'Good_management', 'Emma_Liu', 'Senior_Analyst', 'No', 'N/A', 'Approved', 'v1', 'Standard_performance');
INSERT INTO Match_Referee_Reviews (match_id, referee_id, review_date, overall_score, decision_accuracy, fitness_score, disciplinary_actions, communication_score, positioning_score, control_of_game_score, incidents_reported, comments, reviewer_name, reviewer_role, follow_up_required, follow_up_action, final_decision, review_version, notes) VALUES (202, 302, '2025-04-12', 78, 75, 80, 5, 70, 68, 73, 'Two_yellow_cards', 'Needs_improvement_in_positioning', 'Liam_Khan', 'Junior_Analyst', 'Yes', 'Additional_training', 'Pending', 'v2', 'Focus_on_decision_making');
INSERT INTO Match_Referee_Reviews (match_id, referee_id, review_date, overall_score, decision_accuracy, fitness_score, disciplinary_actions, communication_score, positioning_score, control_of_game_score, incidents_reported, comments, reviewer_name, reviewer_role, follow_up_required, follow_up_action, final_decision, review_version, notes) VALUES (203, 303, '2025-04-15', 92, 95, 90, 0, 93, 96, 94, 'None', 'Excellent_overall', 'Sophia_Red', 'Lead_Evaluator', 'No', 'N/A', 'Approved', 'v1', 'Model_referee');

-- Fan social group activities
CREATE TABLE Fan_Social_Group_Activities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_group_id INTEGER,
    activity_date TEXT,
    activity_type TEXT,
    location TEXT,
    participants_estimated INTEGER,
    funds_raised REAL,
    sponsor_id INTEGER,
    organizer_name TEXT,
    description TEXT,
    social_media_hashtag TEXT,
    publicity_reach INTEGER,
    feedback_score INTEGER,
    safety_incidents TEXT,
    permits_obtained TEXT,
    notes TEXT,
    media_coverage_links TEXT,
    event_duration_hours INTEGER,
    weather_conditions TEXT,
    post_event_survey_score INTEGER
);

INSERT INTO Fan_Social_Group_Activities (fan_group_id, activity_date, activity_type, location, participants_estimated, funds_raised, sponsor_id, organizer_name, description, social_media_hashtag, publicity_reach, feedback_score, safety_incidents, permits_obtained, notes, media_coverage_links, event_duration_hours, weather_conditions, post_event_survey_score) VALUES (401, '2025-05-01', 'Charity_Run', 'Central_Park', 300, 12000.0, 201, 'Alex_Team', '5k_run_for_local_hospitals', '#RunForHealth', 25000, 9, 'None', 'Yes', 'Great_turnout', 'link1.com', 4, 'Sunny', 8);
INSERT INTO Fan_Social_Group_Activities (fan_group_id, activity_date, activity_type, location, participants_estimated, funds_raised, sponsor_id, organizer_name, description, social_media_hashtag, publicity_reach, feedback_score, safety_incidents, permits_obtained, notes, media_coverage_links, event_duration_hours, weather_conditions, post_event_survey_score) VALUES (402, '2025-06-10', 'Fan_Meetup', 'Stadium_Lounge', 150, 5000.0, 202, 'Maria_Lee', 'Meet_players_before_match', '#MeetTheStars', 18000, 8, 'Minor', 'Yes', 'Positive_feedback', 'link2.com', 3, 'Cloudy', 7);
INSERT INTO Fan_Social_Group_Activities (fan_group_id, activity_date, activity_type, location, participants_estimated, funds_raised, sponsor_id, organizer_name, description, social_media_hashtag, publicity_reach, feedback_score, safety_incidents, permits_obtained, notes, media_coverage_links, event_duration_hours, weather_conditions, post_event_survey_score) VALUES (403, '2025-07-20', 'Community_CleanUp', 'East_District', 80, 0.0, 203, 'Sam_O\'Connor', 'Cleaning_local_parks', '#CleanStreets', 12000, 10, 'None', 'Yes', 'Community_spirit', 'link3.com', 5, 'Rainy', 9);

-- Club investment portfolio
CREATE TABLE Club_Investment_Portfolio (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    investment_id INTEGER,
    investment_type TEXT,
    acquisition_date TEXT,
    amount_invested REAL,
    current_valuation REAL,
    sector TEXT,
    risk_rating TEXT,
    maturity_date TEXT,
    dividend_yield REAL,
    interest_rate REAL,
    ownership_percentage REAL,
    partner_company TEXT,
    country_of_investment TEXT,
    status TEXT,
    notes TEXT,
    investment_manager TEXT,
    valuation_method TEXT,
    last_audit_date TEXT
);

INSERT INTO Club_Investment_Portfolio (club_id, investment_id, investment_type, acquisition_date, amount_invested, current_valuation, sector, risk_rating, maturity_date, dividend_yield, interest_rate, ownership_percentage, partner_company, country_of_investment, status, notes, investment_manager, valuation_method, last_audit_date) VALUES (1, 1001, 'Equity', '2023-01-15', 2000000.0, 2500000.0, 'Technology', 'Medium', '2028-01-15', 2.5, 0.0, 5.0, 'TechNova', 'USA', 'Active', 'Strategic_growth', 'Laura_Brown', 'DCF', '2024-12-31');
INSERT INTO Club_Investment_Portfolio (club_id, investment_id, investment_type, acquisition_date, amount_invested, current_valuation, sector, risk_rating, maturity_date, dividend_yield, interest_rate, ownership_percentage, partner_company, country_of_investment, status, notes, investment_manager, valuation_method, last_audit_date) VALUES (2, 1002, 'Bond', '2022-06-01', 1500000.0, 1520000.0, 'Infrastructure', 'Low', '2027-06-01', 0.0, 3.2, 10.0, 'InfraBuild', 'Germany', 'Active', 'Stable_income', 'Mark_Taylor', 'Market', '2025-05-20');
INSERT INTO Club_Investment_Portfolio (club_id, investment_id, investment_type, acquisition_date, amount_invested, current_valuation, sector, risk_rating, maturity_date, dividend_yield, interest_rate, ownership_percentage, partner_company, country_of_investment, status, notes, investment_manager, valuation_method, last_audit_date) VALUES (3, 1003, 'Venture', '2024-03-10', 500000.0, 800000.0, 'HealthTech', 'High', '2029-03-10', 0.0, 0.0, 12.0, 'MediStart', 'UK', 'Active', 'Fast_scaling', 'Nina_Khan', 'Comparable', '2024-11-15');

-- International friendlies details
CREATE TABLE International_Friendlies_Details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    home_team_api_id INTEGER,
    away_team_api_id INTEGER,
    friendly_type TEXT,
    venue_name TEXT,
    city TEXT,
    country TEXT,
    match_date TEXT,
    attendance INTEGER,
    broadcast_network TEXT,
    ticket_price_average REAL,
    sponsor_name TEXT,
    travel_arrangements TEXT,
    training_camp_location TEXT,
    climate_conditions TEXT,
    security_level TEXT,
    post_match_event TEXT,
    notes TEXT,
    referee_id INTEGER
);

INSERT INTO International_Friendlies_Details (match_id, home_team_api_id, away_team_api_id, friendly_type, venue_name, city, country, match_date, attendance, broadcast_network, ticket_price_average, sponsor_name, travel_arrangements, training_camp_location, climate_conditions, security_level, post_match_event, notes, referee_id) VALUES (301, 8001, 8002, 'Summer_Tour', 'National_Stadium', 'Madrid', 'Spain', '2025-08-05', 60000, 'EuroSports', 85.0, 'BrandX', 'Chartered_Bus', 'La_Coruna_Training_Center', 'Warm', 'High', 'Fan_Meet', 'First_friendly_of_year', 401);
INSERT INTO International_Friendlies_Details (match_id, home_team_api_id, away_team_api_id, friendly_type, venue_name, city, country, match_date, attendance, broadcast_network, ticket_price_average, sponsor_name, travel_arrangements, training_camp_location, climate_conditions, security_level, post_match_event, notes, referee_id) VALUES (302, 8003, 8004, 'Winter_Fest', 'Arena_Leicester', 'Leicester', 'UK', '2025-12-12', 45000, 'GlobalLive', 70.0, 'BrandY', 'Air_Travel', 'Leicester_Training_Ground', 'Cold', 'Medium', 'Charity_Auction', 'Holiday_friendly', 402);
INSERT INTO International_Friendlies_Details (match_id, home_team_api_id, away_team_api_id, friendly_type, venue_name, city, country, match_date, attendance, broadcast_network, ticket_price_average, sponsor_name, travel_arrangements, training_camp_location, climate_conditions, security_level, post_match_event, notes, referee_id) VALUES (303, 8005, 8006, 'PreSeason', 'Stadium_Seoul', 'Seoul', 'South_Korea', '2025-03-20', 38000, 'AsiaSports', 65.0, 'BrandZ', 'Train_Combo', 'Seoul_Football_Academy', 'Mild', 'High', 'Sponsor_Presentation', 'Asia_Tour', 403);

-- Training medical records
CREATE TABLE Training_Medical_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    session_date TEXT,
    injury_status TEXT,
    medical_notes TEXT,
    physiotherapy_sessions INTEGER,
    medication_given TEXT,
    dosage_mg INTEGER,
    recovery_score INTEGER,
    next_check_date TEXT,
    trainer_name TEXT,
    doctor_name TEXT,
    blood_test_results TEXT,
    imaging_results TEXT,
    fitness_test_score INTEGER,
    heart_rate_rest INTEGER,
    VO2max INTEGER,
    nutrition_plan TEXT,
    hydration_status TEXT,
    notes TEXT
);

INSERT INTO Training_Medical_Records (player_api_id, session_date, injury_status, medical_notes, physiotherapy_sessions, medication_given, dosage_mg, recovery_score, next_check_date, trainer_name, doctor_name, blood_test_results, imaging_results, fitness_test_score, heart_rate_rest, VO2max, nutrition_plan, hydration_status, notes) VALUES (5001, '2025-04-01', 'None', 'All_clear', 0, 'None', 0, 95, '2025-04-15', 'Coach_James', 'Dr_Smith', 'Normal', 'None', 88, 60, 55, 'High_Protein', 'Adequate', 'Ready_for_match');
INSERT INTO Training_Medical_Records (player_api_id, session_date, injury_status, medical_notes, physiotherapy_sessions, medication_given, dosage_mg, recovery_score, next_check_date, trainer_name, doctor_name, blood_test_results, imaging_results, fitness_test_score, heart_rate_rest, VO2max, nutrition_plan, hydration_status, notes) VALUES (5002, '2025-04-03', 'Minor_Strains', 'Hamstring_tightness', 2, 'Ibuprofen', 200, 80, '2025-04-10', 'Coach_Maria', 'Dr_Lee', 'Slightly_elevated', 'MRI_pending', 75, 62, 52, 'Balanced', 'Good', 'Under_observation');
INSERT INTO Training_Medical_Records (player_api_id, session_date, injury_status, medical_notes, physiotherapy_sessions, medication_given, dosage_mg, recovery_score, next_check_date, trainer_name, doctor_name, blood_test_results, imaging_results, fitness_test_score, heart_rate_rest, VO2max, nutrition_plan, hydration_status, notes) VALUES (5003, '2025-04-05', 'None', 'Excellent_condition', 0, 'None', 0, 98, '2025-04-20', 'Coach_Li', 'Dr_Kumar', 'Optimal', 'None', 92, 58, 60, 'Carb_Loading', 'Excellent', 'Peak_fitness');

-- Broadcast stream statistics
CREATE TABLE Broadcast_Stream_Statistics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    platform_name TEXT,
    stream_start_time TEXT,
    stream_end_time TEXT,
    total_viewers INTEGER,
    peak_viewers INTEGER,
    average_watch_time_seconds INTEGER,
    chat_message_count INTEGER,
    bitrate_kbps INTEGER,
    resolution TEXT,
    subtitles_enabled TEXT,
    ads_displayed INTEGER,
    ad_clicks INTEGER,
    stream_quality_score INTEGER,
    technical_issues_reported TEXT,
    region_distribution TEXT,
    device_type_distribution TEXT,
    notes TEXT,
    streamer_id INTEGER
);

INSERT INTO Broadcast_Stream_Statistics (match_id, platform_name, stream_start_time, stream_end_time, total_viewers, peak_viewers, average_watch_time_seconds, chat_message_count, bitrate_kbps, resolution, subtitles_enabled, ads_displayed, ad_clicks, stream_quality_score, technical_issues_reported, region_distribution, device_type_distribution, notes, streamer_id) VALUES (201, 'StreamNow', '2025-04-10T18:00:00', '2025-04-10T20:00:00', 120000, 150000, 3600, 4500, 3500, '1080p', 'Yes', 120, 30, 92, 'None', 'EU,NA', 'Mobile,Desktop', 'Stable_stream', 501);
INSERT INTO Broadcast_Stream_Statistics (match_id, platform_name, stream_start_time, stream_end_time, total_viewers, peak_viewers, average_watch_time_seconds, chat_message_count, bitrate_kbps, resolution, subtitles_enabled, ads_displayed, ad_clicks, stream_quality_score, technical_issues_reported, region_distribution, device_type_distribution, notes, streamer_id) VALUES (202, 'LivePlay', '2025-04-12T15:00:00', '2025-04-12T17:00:00', 95000, 110000, 3000, 3400, 2800, '720p', 'No', 95, 22, 85, 'Minor_buffering', 'ASIA,EU', 'Desktop,TV', 'Buffer_spikes', 502);
INSERT INTO Broadcast_Stream_Statistics (match_id, platform_name, stream_start_time, stream_end_time, total_viewers, peak_viewers, average_watch_time_seconds, chat_message_count, bitrate_kbps, resolution, subtitles_enabled, ads_displayed, ad_clicks, stream_quality_score, technical_issues_reported, region_distribution, device_type_distribution, notes, streamer_id) VALUES (203, 'GlobalCast', '2025-04-15T20:00:00', '2025-04-15T22:00:00', 135000, 160000, 4200, 5000, 4000, '4K', 'Yes', 140, 45, 95, 'None', 'NA,EU,ASIA', 'Mobile,Desktop,TV', 'High_quality', 503);