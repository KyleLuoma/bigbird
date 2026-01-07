-- Records of direct interactions between heroes and fans
CREATE TABLE hero_fan_interaction (
    interaction_id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    fan_id INTEGER,
    interaction_type TEXT,
    interaction_date DATE,
    location_id INTEGER,
    platform TEXT,
    notes TEXT,
    rating INTEGER,
    duration_minutes INTEGER,
    is_public BOOLEAN,
    hashtags TEXT,
    photo_url TEXT,
    video_url TEXT,
    audience_size INTEGER,
    sponsor_id INTEGER,
    merchandise_given TEXT,
    ticket_used BOOLEAN,
    follow_up_needed BOOLEAN,
    created_at DATE
);

INSERT INTO hero_fan_interaction (interaction_id, hero_id, fan_id, interaction_type, interaction_date, location_id, platform, notes, rating, duration_minutes, is_public, hashtags, photo_url, video_url, audience_size, sponsor_id, merchandise_given, ticket_used, follow_up_needed, created_at) VALUES (1, 101, 5001, 'meet_and_greet', '2025-03-15', 10, 'in_person', 'Signed autograph on cape', 5, 30, TRUE, 'herofans', 'http://example.com/photo1.jpg', 'http://example.com/video1.mp4', 150, 201, 'cape_pin', FALSE, FALSE, '2025-03-15');
INSERT INTO hero_fan_interaction (interaction_id, hero_id, fan_id, interaction_type, interaction_date, location_id, platform, notes, rating, duration_minutes, is_public, hashtags, photo_url, video_url, audience_size, sponsor_id, merchandise_given, ticket_used, follow_up_needed, created_at) VALUES (2, 102, 5002, 'online_qanda', '2025-04-02', 0, 'webinar', 'Answered fan questions about origins', 4, 45, FALSE, 'qanda2025', 'http://example.com/photo2.jpg', 'http://example.com/video2.mp4', 80, 202, 'digital_badge', FALSE, TRUE, '2025-04-02');
INSERT INTO hero_fan_interaction (interaction_id, hero_id, fan_id, interaction_type, interaction_date, location_id, platform, notes, rating, duration_minutes, is_public, hashtags, photo_url, video_url, audience_size, sponsor_id, merchandise_given, ticket_used, follow_up_needed, created_at) VALUES (3, 103, 5003, 'charity_event', '2025-05-10', 15, 'in_person', 'Participated in fundraiser marathon', 5, 120, TRUE, 'charityrun', 'http://example.com/photo3.jpg', 'http://example.com/video3.mp4', 300, 203, 'tshirt', TRUE, FALSE, '2025-05-10');

-- Demographic and preference profile of fans
CREATE TABLE fan_profile (
    fan_id INTEGER PRIMARY KEY,
    username TEXT,
    age INTEGER,
    gender_id INTEGER,
    country TEXT,
    city TEXT,
    zip_code TEXT,
    join_date DATE,
    email_opt_in BOOLEAN,
    favorite_hero_id INTEGER,
    favorite_power_id INTEGER,
    total_spent NUMERIC,
    loyalty_tier TEXT,
    last_purchase_date DATE,
    preferred_platform TEXT,
    language TEXT,
    device_type TEXT,
    social_media_handle TEXT,
    newsletter_subscribed BOOLEAN,
    account_status TEXT
);

INSERT INTO fan_profile (fan_id, username, age, gender_id, country, city, zip_code, join_date, email_opt_in, favorite_hero_id, favorite_power_id, total_spent, loyalty_tier, last_purchase_date, preferred_platform, language, device_type, social_media_handle, newsletter_subscribed, account_status) VALUES (5001, 'fanA', 28, 1, 'USA', 'NewYork', '10001', '2023-06-01', TRUE, 101, 5, 250.75, 'Gold', '2025-02-20', 'mobile', 'English', 'smartphone', '@fanA', TRUE, 'active');
INSERT INTO fan_profile (fan_id, username, age, gender_id, country, city, zip_code, join_date, email_opt_in, favorite_hero_id, favorite_power_id, total_spent, loyalty_tier, last_purchase_date, preferred_platform, language, device_type, social_media_handle, newsletter_subscribed, account_status) VALUES (5002, 'fanB', 35, 2, 'Canada', 'Toronto', 'M5H', '2022-11-15', FALSE, 102, 7, 120.00, 'Silver', '2025-01-10', 'web', 'English', 'desktop', '@fanB', FALSE, 'inactive');
INSERT INTO fan_profile (fan_id, username, age, gender_id, country, city, zip_code, join_date, email_opt_in, favorite_hero_id, favorite_power_id, total_spent, loyalty_tier, last_purchase_date, preferred_platform, language, device_type, social_media_handle, newsletter_subscribed, account_status) VALUES (5003, 'fanC', 22, 1, 'UK', 'London', 'EC1A', '2024-03-20', TRUE, 103, 3, 500.00, 'Platinum', '2025-04-05', 'mobile', 'English', 'tablet', '@fanC', TRUE, 'active');

-- Legal contracts between heroes and representation agencies
CREATE TABLE hero_contract (
    contract_id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    agency_id INTEGER,
    start_date DATE,
    end_date DATE,
    compensation_amount NUMERIC,
    bonus_structure TEXT,
    exclusivity_flag BOOLEAN,
    territory TEXT,
    renewal_option TEXT,
    termination_clause TEXT,
    confidentiality_level TEXT,
    performance_metrics TEXT,
    review_date DATE,
    legal_contact_id INTEGER,
    created_by TEXT,
    created_at DATE,
    updated_at DATE,
    status TEXT,
    notes TEXT
);

INSERT INTO hero_contract (contract_id, hero_id, agency_id, start_date, end_date, compensation_amount, bonus_structure, exclusivity_flag, territory, renewal_option, termination_clause, confidentiality_level, performance_metrics, review_date, legal_contact_id, created_by, created_at, updated_at, status, notes) VALUES (3001, 101, 4001, '2024-01-01', '2026-12-31', 1500000, 'tiered', TRUE, 'global', 'auto', '30_day_notice', 'high', 'monthly_saves', '2025-01-01', 9001, 'adminUser', '2024-01-01', '2025-01-01', 'active', 'first_contract');
INSERT INTO hero_contract (contract_id, hero_id, agency_id, start_date, end_date, compensation_amount, bonus_structure, exclusivity_flag, territory, renewal_option, termination_clause, confidentiality_level, performance_metrics, review_date, legal_contact_id, created_by, created_at, updated_at, status, notes) VALUES (3002, 102, 4002, '2023-05-15', '2025-05-14', 850000, 'flat', FALSE, 'north_america', 'manual', '60_day_notice', 'medium', 'quarterly_events', '2024-05-15', 9002, 'contractMgr', '2023-05-15', '2024-05-15', 'pending', 'awaiting_signatures');
INSERT INTO hero_contract (contract_id, hero_id, agency_id, start_date, end_date, compensation_amount, bonus_structure, exclusivity_flag, territory, renewal_option, termination_clause, confidentiality_level, performance_metrics, review_date, legal_contact_id, created_by, created_at, updated_at, status, notes) VALUES (3003, 103, 4003, '2025-02-01', '2028-01-31', 2000000, 'percent_of_revenue', TRUE, 'europe_asia', 'auto', 'no_termination', 'ultra', 'annual_audience', '2026-02-01', 9003, 'legalTeam', '2025-02-01', '2025-02-01', 'active', 'extended_term');

-- Representation agencies for heroes
CREATE TABLE agency (
    agency_id INTEGER PRIMARY KEY,
    agency_name TEXT,
    headquarters_city TEXT,
    headquarters_country TEXT,
    founded_year INTEGER,
    ceo_name TEXT,
    employee_count INTEGER,
    annual_revenue NUMERIC,
    rating INTEGER,
    specialty TEXT,
    website_url TEXT,
    contact_email TEXT,
    phone_number TEXT,
    licensing_allowed BOOLEAN,
    global_presence BOOLEAN,
    primary_market TEXT,
    compliance_certified BOOLEAN,
    primary_contact_id INTEGER,
    created_at DATE,
    updated_at DATE,
    notes TEXT
);

INSERT INTO agency (agency_id, agency_name, headquarters_city, headquarters_country, founded_year, ceo_name, employee_count, annual_revenue, rating, specialty, website_url, contact_email, phone_number, licensing_allowed, global_presence, primary_market, compliance_certified, primary_contact_id, created_at, updated_at, notes) VALUES (4001, 'ValorAgency', 'NewYork', 'USA', 2005, 'Alice Smith', 120, 25000000, 5, 'hero_branding', 'http://valoragency.com', 'contact@valoragency.com', '5551234567', TRUE, TRUE, 'global', TRUE, 8001, '2005-04-01', '2025-01-01', 'top_tier');
INSERT INTO agency (agency_id, agency_name, headquarters_city, headquarters_country, founded_year, ceo_name, employee_count, annual_revenue, rating, specialty, website_url, contact_email, phone_number, licensing_allowed, global_presence, primary_market, compliance_certified, primary_contact_id, created_at, updated_at, notes) VALUES (4002, 'ShieldPartners', 'Toronto', 'Canada', 2010, 'Bob Lee', 85, 15000000, 4, 'event_management', 'http://shieldpartners.ca', 'info@shieldpartners.ca', '5559876543', FALSE, FALSE, 'north_america', FALSE, 8002, '2010-07-15', '2024-12-01', 'regional_focus');
INSERT INTO agency (agency_id, agency_name, headquarters_city, headquarters_country, founded_year, ceo_name, employee_count, annual_revenue, rating, specialty, website_url, contact_email, phone_number, licensing_allowed, global_presence, primary_market, compliance_certified, primary_contact_id, created_at, updated_at, notes) VALUES (4003, 'AegisGlobal', 'London', 'UK', 1998, 'Clara Jones', 200, 50000000, 5, 'global_licensing', 'http://aegisglobal.co.uk', 'services@aegisglobal.co.uk', '5552223333', TRUE, TRUE, 'europe_asia', TRUE, 8003, '1998-03-20', '2025-02-20', 'industry_leader');

-- Structured training programs for heroes
CREATE TABLE hero_training_program (
    program_id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    program_name TEXT,
    start_date DATE,
    end_date DATE,
    trainer_id INTEGER,
    location_id INTEGER,
    intensity_level TEXT,
    focus_area TEXT,
    schedule_notes TEXT,
    equipment_list TEXT,
    calories_burned_estimate INTEGER,
    injuries_reported TEXT,
    certification_awarded TEXT,
    status TEXT,
    created_at DATE,
    updated_at DATE,
    duration_weeks INTEGER,
    max_participants INTEGER,
    registration_deadline DATE,
    program_budget NUMERIC
);

INSERT INTO hero_training_program (program_id, hero_id, program_name, start_date, end_date, trainer_id, location_id, intensity_level, focus_area, schedule_notes, equipment_list, calories_burned_estimate, injuries_reported, certification_awarded, status, created_at, updated_at, duration_weeks, max_participants, registration_deadline, program_budget) VALUES (6001, 101, 'AerialCombat101', '2025-06-01', '2025-08-31', 9001, 20, 'high', 'flight_maneuvers', 'mon_wed_fri_0900', 'jetpack, harness', 35000, 'none', 'AerialPro', 'active', '2025-05-15', '2025-06-01', 12, 20, '2025-05-20', 500000);
INSERT INTO hero_training_program (program_id, hero_id, program_name, start_date, end_date, trainer_id, location_id, intensity_level, focus_area, schedule_notes, equipment_list, calories_burned_estimate, injuries_reported, certification_awarded, status, created_at, updated_at, duration_weeks, max_participants, registration_deadline, program_budget) VALUES (6002, 102, 'StrengthBuilder', '2025-04-01', '2025-06-30', 9002, 21, 'medium', 'weight_training', 'tue_thu_0700', 'dumbbells, barbell', 28000, 'sprain_ankle', 'StrengthMaster', 'completed', '2025-03-15', '2025-06-30', 13, 15, '2025-03-20', 300000);
INSERT INTO hero_training_program (program_id, hero_id, program_name, start_date, end_date, trainer_id, location_id, intensity_level, focus_area, schedule_notes, equipment_list, calories_burned_estimate, injuries_reported, certification_awarded, status, created_at, updated_at, duration_weeks, max_participants, registration_deadline, program_budget) VALUES (6003, 103, 'StealthOps', '2025-07-15', '2025-10-15', 9003, 22, 'high', 'infiltration', 'mon_wed_fri_2300', 'night_vision, grappling_hook', 32000, 'none', 'StealthPro', 'planned', '2025-07-01', '2025-07-01', 13, 10, '2025-07-05', 450000);

-- Medical health records for heroes
CREATE TABLE hero_medical_record (
    record_id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    visit_date DATE,
    clinic_id INTEGER,
    diagnosis_code TEXT,
    diagnosis_description TEXT,
    treatment_given TEXT,
    medication_prescribed TEXT,
    dosage TEXT,
    follow_up_date DATE,
    physician_id INTEGER,
    notes TEXT,
    blood_type TEXT,
    allergies TEXT,
    immunization_status TEXT,
    height_cm INTEGER,
    weight_kg INTEGER,
    bmi NUMERIC,
    vision_acuity TEXT,
    hearing_acuity TEXT,
    blood_pressure TEXT
);

INSERT INTO hero_medical_record (record_id, hero_id, visit_date, clinic_id, diagnosis_code, diagnosis_description, treatment_given, medication_prescribed, dosage, follow_up_date, physician_id, notes, blood_type, allergies, immunization_status, height_cm, weight_kg, bmi, vision_acuity, hearing_acuity, blood_pressure) VALUES (8001, 101, '2025-02-20', 301, 'D001', 'muscle_strain', 'physiotherapy', 'ibuprofen', '200mg', '2025-03-20', 7001, 'recovered_fully', 'O+', 'none', 'up_to_date', 185, 85, 24.8, '20/20', 'normal', '120/80');
INSERT INTO hero_medical_record (record_id, hero_id, visit_date, clinic_id, diagnosis_code, diagnosis_description, treatment_given, medication_prescribed, dosage, follow_up_date, physician_id, notes, blood_type, allergies, immunization_status, height_cm, weight_kg, bmi, vision_acuity, hearing_acuity, blood_pressure) VALUES (8002, 102, '2025-01-15', 302, 'D010', 'fractured_rib', 'cast_and_rest', 'acetaminophen', '500mg', '2025-02-15', 7002, 'needs_physical_therapy', 'A-', 'penicillin', 'up_to_date', 172, 78, 26.4, '20/30', 'slight_loss', '115/75');
INSERT INTO hero_medical_record (record_id, hero_id, visit_date, clinic_id, diagnosis_code, diagnosis_description, treatment_given, medication_prescribed, dosage, follow_up_date, physician_id, notes, blood_type, allergies, immunization_status, height_cm, weight_kg, bmi, vision_acuity, hearing_acuity, blood_pressure) VALUES (8003, 103, '2025-03-10', 303, 'D020', 'concussion', 'observation', 'none', 'none', '2025-04-10', 7003, 'clear_after_observation', 'B+', 'none', 'up_to_date', 190, 90, 24.9, '20/20', 'normal', '118/78');

-- Publicity events featuring heroes
CREATE TABLE hero_publicity_event (
    event_id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    event_name TEXT,
    event_date DATE,
    venue_id INTEGER,
    media_outlet_id INTEGER,
    press_release_id INTEGER,
    attendance_estimate INTEGER,
    broadcast_flag BOOLEAN,
    live_stream_url TEXT,
    sponsor_id INTEGER,
    budget NUMERIC,
    outcome_score INTEGER,
    social_media_mentions INTEGER,
    sentiment_score NUMERIC,
    photographer_id INTEGER,
    videographer_id INTEGER,
    post_event_report TEXT,
    created_at DATE,
    updated_at DATE,
    status TEXT,
    notes TEXT
);

INSERT INTO hero_publicity_event (event_id, hero_id, event_name, event_date, venue_id, media_outlet_id, press_release_id, attendance_estimate, broadcast_flag, live_stream_url, sponsor_id, budget, outcome_score, social_media_mentions, sentiment_score, photographer_id, videographer_id, post_event_report, created_at, updated_at, status, notes) VALUES (9001, 101, 'Skyline Showcase', '2025-09-10', 40, 501, 601, 2000, TRUE, 'http://streaming.com/event9001', 301, 750000, 88, 15000, 4.5, 8001, 8002, 'successful_event_report', '2025-09-11', '2025-09-12', 'completed', 'high_visibility');
INSERT INTO hero_publicity_event (event_id, hero_id, event_name, event_date, venue_id, media_outlet_id, press_release_id, attendance_estimate, broadcast_flag, live_stream_url, sponsor_id, budget, outcome_score, social_media_mentions, sentiment_score, photographer_id, videographer_id, post_event_report, created_at, updated_at, status, notes) VALUES (9002, 102, 'Charity Gala', '2025-11-20', 41, 502, 602, 1200, FALSE, NULL, 302, 500000, 75, 8000, 3.8, 8003, 8004, 'positive_feedback', '2025-11-21', '2025-11-22', 'completed', 'donations_exceeded_target');
INSERT INTO hero_publicity_event (event_id, hero_id, event_name, event_date, venue_id, media_outlet_id, press_release_id, attendance_estimate, broadcast_flag, live_stream_url, sponsor_id, budget, outcome_score, social_media_mentions, sentiment_score, photographer_id, videographer_id, post_event_report, created_at, updated_at, status, notes) VALUES (9003, 103, 'Tech Expo Demo', '2025-12-05', 42, 503, 603, 3000, TRUE, 'http://streaming.com/event9003', 303, 1000000, 92, 25000, 4.9, 8005, 8006, 'record_breaking_attendance', '2025-12-06', '2025-12-07', 'completed', 'partnered_with_major_tech');

-- Financial transactions related to heroes
CREATE TABLE hero_financial_transaction (
    transaction_id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    transaction_date DATE,
    transaction_type TEXT,
    amount_usd NUMERIC,
    currency TEXT,
    exchange_rate NUMERIC,
    source_account TEXT,
    destination_account TEXT,
    description TEXT,
    approved_by INTEGER,
    approval_date DATE,
    status TEXT,
    tax_withheld NUMERIC,
    category TEXT,
    fiscal_year INTEGER,
    quarter INTEGER,
    receipt_url TEXT,
    created_at DATE,
    updated_at DATE,
    notes TEXT
);

INSERT INTO hero_financial_transaction (transaction_id, hero_id, transaction_date, transaction_type, amount_usd, currency, exchange_rate, source_account, destination_account, description, approved_by, approval_date, status, tax_withheld, category, fiscal_year, quarter, receipt_url, created_at, updated_at, notes) VALUES (10001, 101, '2025-03-01', 'royalty_payment', 25000, 'USD', 1.0, 'publisher_acct', 'hero_101_acct', 'monthly_royalty', 9001, '2025-03-02', 'cleared', 2500, 'royalty', 2025, 1, 'http://receipts.com/10001.pdf', '2025-03-01', '2025-03-02', 'on_time');
INSERT INTO hero_financial_transaction (transaction_id, hero_id, transaction_date, transaction_type, amount_usd, currency, exchange_rate, source_account, destination_account, description, approved_by, approval_date, status, tax_withheld, category, fiscal_year, quarter, receipt_url, created_at, updated_at, notes) VALUES (10002, 102, '2025-04-15', 'event_expense', 150000, 'USD', 1.0, 'hero_102_acct', 'venue_acct', 'charity_gala_expenses', 9002, '2025-04-16', 'pending', 15000, 'event', 2025, 2, 'http://receipts.com/10002.pdf', '2025-04-15', '2025-04-16', 'awaiting_approval');
INSERT INTO hero_financial_transaction (transaction_id, hero_id, transaction_date, transaction_type, amount_usd, currency, exchange_rate, source_account, destination_account, description, approved_by, approval_date, status, tax_withheld, category, fiscal_year, quarter, receipt_url, created_at, updated_at, notes) VALUES (10003, 103, '2025-05-20', 'merchandise_sale', 500000, 'USD', 1.0, 'online_store_acct', 'hero_103_acct', 'summer_merch_collection', 9003, '2025-05-21', 'cleared', 50000, 'sales', 2025, 2, 'http://receipts.com/10003.pdf', '2025-05-20', '2025-05-21', 'record_breaking_sales');

-- Legal cases involving heroes
CREATE TABLE hero_legal_case (
    case_id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    case_number TEXT,
    filing_date DATE,
    court_name TEXT,
    jurisdiction TEXT,
    case_type TEXT,
    plaintiff_id INTEGER,
    defendant_id INTEGER,
    lead_attorney_id INTEGER,
    settlement_amount NUMERIC,
    verdict TEXT,
    judgement_date DATE,
    appeal_flag BOOLEAN,
    outcome_summary TEXT,
    public_record_flag BOOLEAN,
    sealed_flag BOOLEAN,
    case_status TEXT,
    created_at DATE,
    updated_at DATE,
    notes TEXT
);

INSERT INTO hero_legal_case (case_id, hero_id, case_number, filing_date, court_name, jurisdiction, case_type, plaintiff_id, defendant_id, lead_attorney_id, settlement_amount, verdict, judgement_date, appeal_flag, outcome_summary, public_record_flag, sealed_flag, case_status, created_at, updated_at, notes) VALUES (20001, 101, 'HC2025-001', '2025-01-10', 'SupremeCourt', 'USA', 'defamation', 9004, 101, 9005, 2000000, 'settled', '2025-06-15', FALSE, 'confidential_settlement', FALSE, TRUE, 'closed', '2025-01-10', '2025-06-15', 'nda_signed');
INSERT INTO hero_legal_case (case_id, hero_id, case_number, filing_date, court_name, jurisdiction, case_type, plaintiff_id, defendant_id, lead_attorney_id, settlement_amount, verdict, judgement_date, appeal_flag, outcome_summary, public_record_flag, sealed_flag, case_status, created_at, updated_at, notes) VALUES (20002, 102, 'HC2025-002', '2025-02-20', 'DistrictCourt', 'Canada', 'contract_dispute', 9006, 102, 9007, 750000, 'judgment_for_defendant', '2025-09-30', TRUE, 'appeal_pending', TRUE, FALSE, 'appealed', '2025-02-20', '2025-09-30', 'awaiting_appeal_outcome');
INSERT INTO hero_legal_case (case_id, hero_id, case_number, filing_date, court_name, jurisdiction, case_type, plaintiff_id, defendant_id, lead_attorney_id, settlement_amount, verdict, judgement_date, appeal_flag, outcome_summary, public_record_flag, sealed_flag, case_status, created_at, updated_at, notes) VALUES (20003, 103, 'HC2025-003', '2025-03-05', 'InternationalCourt', 'EU', 'intellectual_property', 9008, 103, 9009, 1200000, 'settled', '2025-12-01', FALSE, 'licensed_usage_agreement', TRUE, FALSE, 'closed', '2025-03-05', '2025-12-01', 'license_renewed');

-- Social media activity logs for heroes
CREATE TABLE hero_social_media_activity (
    post_id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    platform TEXT,
    post_date DATE,
    content_text TEXT,
    media_url TEXT,
    likes_count INTEGER,
    shares_count INTEGER,
    comments_count INTEGER,
    reach_estimate INTEGER,
    sentiment_score NUMERIC,
    hashtags_used TEXT,
    mentions_user_ids TEXT,
    promotion_flag BOOLEAN,
    ad_spend_usd NUMERIC,
    click_through_rate NUMERIC,
    conversion_rate NUMERIC,
    campaign_id INTEGER,
    created_at DATE,
    updated_at DATE,
    notes TEXT
);

INSERT INTO hero_social_media_activity (post_id, hero_id, platform, post_date, content_text, media_url, likes_count, shares_count, comments_count, reach_estimate, sentiment_score, hashtags_used, mentions_user_ids, promotion_flag, ad_spend_usd, click_through_rate, conversion_rate, campaign_id, created_at, updated_at, notes) VALUES (30001, 101, 'twitter', '2025-04-01', 'Excited to announce new mission', 'http://media.com/post30001.jpg', 12000, 3000, 500, 250000, 4.2, '#hero #mission', '5002,5003', TRUE, 1500, 0.03, 0.005, 4001, '2025-04-01', '2025-04-02', 'high_engagement');
INSERT INTO hero_social_media_activity (post_id, hero_id, platform, post_date, content_text, media_url, likes_count, shares_count, comments_count, reach_estimate, sentiment_score, hashtags_used, mentions_user_ids, promotion_flag, ad_spend_usd, click_through_rate, conversion_rate, campaign_id, created_at, updated_at, notes) VALUES (30002, 102, 'instagram', '2025-05-12', 'Behind the scenes of the charity gala', 'http://media.com/post30002.mp4', 8000, 1500, 400, 180000, 3.9, '#charity #gala', '5004,5005', FALSE, 0, 0, 0, 4002, '2025-05-12', '2025-05-13', 'organic_post');
INSERT INTO hero_social_media_activity (post_id, hero_id, platform, post_date, content_text, media_url, likes_count, shares_count, comments_count, reach_estimate, sentiment_score, hashtags_used, mentions_user_ids, promotion_flag, ad_spend_usd, click_through_rate, conversion_rate, campaign_id, created_at, updated_at, notes) VALUES (30003, 103, 'facebook', '2025-06-20', 'Check out the new tech expo demo!', 'http://media.com/post30003.jpg', 15000, 5000, 800, 350000, 4.6, '#techexpo #innovation', '5006,5007', TRUE, 2500, 0.04, 0.006, 4003, '2025-06-20', '2025-06-21', 'paid_campaign');