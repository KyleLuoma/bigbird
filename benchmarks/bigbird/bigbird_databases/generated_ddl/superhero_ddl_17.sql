-- Global distribution network information
CREATE TABLE global_distribution_network (
    id INTEGER PRIMARY KEY,
    region TEXT,
    country TEXT,
    city TEXT,
    warehouse_code TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    postal_code TEXT,
    contact_name TEXT,
    contact_phone TEXT,
    contact_email TEXT,
    operating_hours TEXT,
    capacity_tb INTEGER,
    current_utilization_pct INTEGER,
    inbound_route_id INTEGER,
    outbound_route_id INTEGER,
    last_audit_date DATE,
    compliance_status TEXT,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

INSERT INTO global_distribution_network (id, region, country, city, warehouse_code, address_line1, address_line2, postal_code, contact_name, contact_phone, contact_email, operating_hours, capacity_tb, current_utilization_pct, inbound_route_id, outbound_route_id, last_audit_date, compliance_status, notes, created_at, updated_at)
VALUES (1, 'NorthAmerica', 'USA', 'Chicago', 'WH001', '123 Logistics Ave', '', '60601', 'John Doe', '5551234567', 'jdoe@example.com', '08:00-20:00', 5000, 78, 10, 20, '2023-01-15', 'Compliant', 'Primary hub', '2023-01-15 08:00:00', '2023-06-01 12:30:00');

INSERT INTO global_distribution_network (id, region, country, city, warehouse_code, address_line1, address_line2, postal_code, contact_name, contact_phone, contact_email, operating_hours, capacity_tb, current_utilization_pct, inbound_route_id, outbound_route_id, last_audit_date, compliance_status, notes, created_at, updated_at)
VALUES (2, 'Europe', 'UK', 'London', 'WH002', '45 Distribution Rd', 'Suite 3', 'EC1A1BB', 'Alice Smith', '447700900111', 'asmith@example.co.uk', '07:00-19:00', 3200, 64, 11, 21, '2023-02-20', 'Pending', 'Secondary hub', '2023-02-20 09:15:00', '2023-06-02 14:45:00');

INSERT INTO global_distribution_network (id, region, country, city, warehouse_code, address_line1, address_line2, postal_code, contact_name, contact_phone, contact_email, operating_hours, capacity_tb, current_utilization_pct, inbound_route_id, outbound_route_id, last_audit_date, compliance_status, notes, created_at, updated_at)
VALUES (3, 'AsiaPacific', 'Japan', 'Tokyo', 'WH003', '9 Supply Chain St', '', '100-0001', 'Ken Tanaka', '81312345678', 'ktanaka@example.jp', '06:00-18:00', 4500, 81, 12, 22, '2023-03-10', 'Compliant', 'East hub', '2023-03-10 07:30:00', '2023-06-03 11:20:00');

-- Fan engagement activity log
CREATE TABLE fan_engagement_activity (
    id INTEGER PRIMARY KEY,
    fan_id INTEGER,
    hero_id INTEGER,
    interaction_type TEXT,
    platform TEXT,
    interaction_timestamp TIMESTAMP,
    duration_seconds INTEGER,
    sentiment_score INTEGER,
    device_type TEXT,
    location_city TEXT,
    location_country TEXT,
    campaign_id INTEGER,
    loyalty_tier TEXT,
    feedback_text TEXT,
    response_status TEXT,
    followup_required INTEGER,
    followup_deadline DATE,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    notes TEXT,
    rating INTEGER
);

INSERT INTO fan_engagement_activity (id, fan_id, hero_id, interaction_type, platform, interaction_timestamp, duration_seconds, sentiment_score, device_type, location_city, location_country, campaign_id, loyalty_tier, feedback_text, response_status, followup_required, followup_deadline, created_at, updated_at, notes, rating)
VALUES (1, 101, 5, 'Comment', 'Twitter', '2023-04-01 14:22:00', 45, 8, 'Mobile', 'NewYork', 'USA', 12, 'Gold', 'Loved the new trailer', 'Seen', 0, NULL, '2023-04-01 14:22:00', '2023-04-01 14:22:00', '', 9);

INSERT INTO fan_engagement_activity (id, fan_id, hero_id, interaction_type, platform, interaction_timestamp, duration_seconds, sentiment_score, device_type, location_city, location_country, campaign_id, loyalty_tier, feedback_text, response_status, followup_required, followup_deadline, created_at, updated_at, notes, rating)
VALUES (2, 202, 8, 'LiveStream', 'YouTube', '2023-04-02 20:10:00', 3600, 7, 'Desktop', 'London', 'UK', 13, 'Silver', 'Great Q&A session', 'Acknowledged', 1, '2023-04-10', '2023-04-02 20:10:00', '2023-04-02 20:10:00', 'Follow up with survey', 8);

INSERT INTO fan_engagement_activity (id, fan_id, hero_id, interaction_type, platform, interaction_timestamp, duration_seconds, sentiment_score, device_type, location_city, location_country, campaign_id, loyalty_tier, feedback_text, response_status, followup_required, followup_deadline, created_at, updated_at, notes, rating)
VALUES (3, 303, 3, 'Poll', 'Instagram', '2023-04-03 09:05:00', 30, 6, 'Mobile', 'Sydney', 'Australia', 14, 'Bronze', 'Preferred costume design?', 'Pending', 0, NULL, '2023-04-03 09:05:00', '2023-04-03 09:05:00', '', 7);

-- Superhero media appearance details
CREATE TABLE superhero_media_appearance (
    id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    media_type TEXT,
    title TEXT,
    season_number INTEGER,
    episode_number INTEGER,
    release_date DATE,
    role_description TEXT,
    screen_time_minutes INTEGER,
    director TEXT,
    producer TEXT,
    rating INTEGER,
    language TEXT,
    distribution_platform TEXT,
    viewership_millions INTEGER,
    award_nominations INTEGER,
    award_wins INTEGER,
    budget_million_usd INTEGER,
    box_office_million_usd INTEGER,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

INSERT INTO superhero_media_appearance (id, hero_id, media_type, title, season_number, episode_number, release_date, role_description, screen_time_minutes, director, producer, rating, language, distribution_platform, viewership_millions, award_nominations, award_wins, budget_million_usd, box_office_million_usd, created_at, updated_at)
VALUES (1, 5, 'Film', 'Guardians of the Dawn', 1, NULL, '2022-07-15', 'Lead', 120, 'Sam Lee', 'Olivia Reed', 8, 'English', 'Theater', 45, 3, 2, 150, 320, '2022-07-15 10:00:00', '2022-12-20 18:30:00');

INSERT INTO superhero_media_appearance (id, hero_id, media_type, title, season_number, episode_number, release_date, role_description, screen_time_minutes, director, producer, rating, language, distribution_platform, viewership_millions, award_nominations, award_wins, budget_million_usd, box_office_million_usd, created_at, updated_at)
VALUES (2, 8, 'TVSeries', 'Nightwatch Chronicles', 3, 12, '2023-03-10', 'Supporting', 35, 'Maria Gomez', 'Liam Patel', 7, 'English', 'Streaming', 12, 1, 0, 20, 0, '2023-03-10 20:00:00', '2023-05-15 22:00:00');

INSERT INTO superhero_media_appearance (id, hero_id, media_type, title, season_number, episode_number, release_date, role_description, screen_time_minutes, director, producer, rating, language, distribution_platform, viewership_millions, award_nominations, award_wins, budget_million_usd, box_office_million_usd, created_at, updated_at)
VALUES (3, 3, 'AnimatedFilm', 'Legends of Light', 1, NULL, '2021-11-05', 'Cameo', 12, 'Kenji Tanaka', 'Yui Kato', 9, 'Japanese', 'Theater', 30, 5, 3, 80, 210, '2021-11-05 09:00:00', '2022-02-01 14:45:00');

-- Licensing agreement detail records
CREATE TABLE licensing_agreement_detail (
    id INTEGER PRIMARY KEY,
    agreement_id INTEGER,
    licensee_name TEXT,
    product_category TEXT,
    territory TEXT,
    start_date DATE,
    end_date DATE,
    royalty_rate_pct INTEGER,
    advance_payment_usd INTEGER,
    minimum_guarantee_usd INTEGER,
    audit_rights TEXT,
    exclusivity_flag INTEGER,
    sublicensing_allowed INTEGER,
    reporting_frequency TEXT,
    currency TEXT,
    payment_terms TEXT,
    renewal_option TEXT,
    termination_clause TEXT,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

INSERT INTO licensing_agreement_detail (id, agreement_id, licensee_name, product_category, territory, start_date, end_date, royalty_rate_pct, advance_payment_usd, minimum_guarantee_usd, audit_rights, exclusivity_flag, sublicensing_allowed, reporting_frequency, currency, payment_terms, renewal_option, termination_clause, notes, created_at, updated_at)
VALUES (1, 1001, 'Mega Toys Inc', 'ActionFigures', 'NorthAmerica', '2022-01-01', '2025-12-31', 12, 500000, 200000, 'Annual', 1, 0, 'Quarterly', 'USD', 'Net30', 'Option2Years', '30DayNotice', 'First major license', '2022-01-01 08:00:00', '2022-06-01 09:30:00');

INSERT INTO licensing_agreement_detail (id, agreement_id, licensee_name, product_category, territory, start_date, end_date, royalty_rate_pct, advance_payment_usd, minimum_guarantee_usd, audit_rights, exclusivity_flag, sublicensing_allowed, reporting_frequency, currency, payment_terms, renewal_option, termination_clause, notes, created_at, updated_at)
VALUES (2, 1002, 'Pixel Games Ltd', 'VideoGame', 'Europe', '2023-03-15', '2026-03-14', 9, 300000, 150000, 'SemiAnnual', 0, 1, 'SemiAnnual', 'EUR', 'Net45', 'Option1Year', 'TerminationOnBreach', 'Digital rights only', '2023-03-15 10:00:00', '2023-07-20 11:15:00');

INSERT INTO licensing_agreement_detail (id, agreement_id, licensee_name, product_category, territory, start_date, end_date, royalty_rate_pct, advance_payment_usd, minimum_guarantee_usd, audit_rights, exclusivity_flag, sublicensing_allowed, reporting_frequency, currency, payment_terms, renewal_option, termination_clause, notes, created_at, updated_at)
VALUES (3, 1003, 'Style Apparel Co', 'Apparel', 'AsiaPacific', '2021-06-01', '2024-05-31', 15, 250000, 100000, 'Annual', 0, 0, 'Annual', 'USD', 'Net60', 'Option3Years', 'ForceMajeure', 'Limited edition line', '2021-06-01 09:30:00', '2022-01-10 12:00:00');

-- Comic storyline metadata
CREATE TABLE comic_storyline_metadata (
    id INTEGER PRIMARY KEY,
    story_arc_id INTEGER,
    arc_name TEXT,
    start_issue_id INTEGER,
    end_issue_id INTEGER,
    total_pages INTEGER,
    primary_writer TEXT,
    primary_artist TEXT,
    editor TEXT,
    genre TEXT,
    target_audience TEXT,
    publication_year INTEGER,
    imprint TEXT,
    continuity_status TEXT,
    retcon_flag INTEGER,
    fan_rating INTEGER,
    critic_score INTEGER,
    sales_estimate_units INTEGER,
    digital_downloads INTEGER,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

INSERT INTO comic_storyline_metadata (id, story_arc_id, arc_name, start_issue_id, end_issue_id, total_pages, primary_writer, primary_artist, editor, genre, target_audience, publication_year, imprint, continuity_status, retcon_flag, fan_rating, critic_score, sales_estimate_units, digital_downloads, created_at, updated_at)
VALUES (1, 2001, 'Rise of the Titans', 101, 110, 3200, 'Evan Stone', 'Lara Chen', 'Mia Torres', 'Adventure', 'Teens', 2021, 'AlphaPress', 'Canon', 0, 9, 85, 500000, 120000, '2021-01-01 08:00:00', '2021-12-31 17:00:00');

INSERT INTO comic_storyline_metadata (id, story_arc_id, arc_name, start_issue_id, end_issue_id, total_pages, primary_writer, primary_artist, editor, genre, target_audience, publication_year, imprint, continuity_status, retcon_flag, fan_rating, critic_score, sales_estimate_units, digital_downloads, created_at, updated_at)
VALUES (2, 2002, 'Shadow Conspiracy', 115, 125, 2600, 'Nina Patel', 'Samir Khan', 'Rita Lee', 'Mystery', 'Adults', 2022, 'BetaBooks', 'Alternate', 1, 8, 78, 350000, 90000, '2022-02-15 09:30:00', '2022-11-20 14:45:00');

INSERT INTO comic_storyline_metadata (id, story_arc_id, arc_name, start_issue_id, end_issue_id, total_pages, primary_writer, primary_artist, editor, genre, target_audience, publication_year, imprint, continuity_status, retcon_flag, fan_rating, critic_score, sales_estimate_units, digital_downloads, created_at, updated_at)
VALUES (3, 2003, 'Chronicles of Void', 130, 140, 3000, 'Carlos Mendes', 'Jin Park', 'Nina Lopez', 'SciFi', 'YoungAdult', 2023, 'GammaPress', 'Canon', 0, 7, 70, 200000, 60000, '2023-03-10 07:45:00', '2023-10-05 16:20:00');

-- Animation production schedule
CREATE TABLE animation_production_schedule (
    id INTEGER PRIMARY KEY,
    studio_id INTEGER,
    project_name TEXT,
    episode_number INTEGER,
    script_status TEXT,
    storyboard_status TEXT,
    animation_start_date DATE,
    animation_end_date DATE,
    voice_recording_date DATE,
    sound_mix_date DATE,
    quality_check_status TEXT,
    release_date DATE,
    budget_usd INTEGER,
    actual_spend_usd INTEGER,
    hours_logged INTEGER,
    lead_animator TEXT,
    director TEXT,
    producer TEXT,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

INSERT INTO animation_production_schedule (id, studio_id, project_name, episode_number, script_status, storyboard_status, animation_start_date, animation_end_date, voice_recording_date, sound_mix_date, quality_check_status, release_date, budget_usd, actual_spend_usd, hours_logged, lead_animator, director, producer, notes, created_at, updated_at)
VALUES (1, 301, 'Star Guardians', 5, 'Complete', 'Approved', '2023-01-10', '2023-04-20', '2023-05-01', '2023-05-10', 'Passed', '2023-06-01', 2000000, 1850000, 4200, 'Laura Kim', 'David Ross', 'Helen Wu', 'On schedule', '2023-01-10 08:00:00', '2023-06-01 12:00:00');

INSERT INTO animation_production_schedule (id, studio_id, project_name, episode_number, script_status, storyboard_status, animation_start_date, animation_end_date, voice_recording_date, sound_mix_date, quality_check_status, release_date, budget_usd, actual_spend_usd, hours_logged, lead_animator, director, producer, notes, created_at, updated_at)
VALUES (2, 302, 'Mystic Quest', 12, 'InProgress', 'Pending', '2023-03-05', '2023-07-15', '2023-08-01', '2023-08-10', 'Pending', '2023-09-01', 2500000, NULL, 3100, 'Mark Liu', 'Susan Park', 'Raj Patel', 'Delays in storyboarding', '2023-03-05 09:15:00', '2023-08-10 16:00:00');

INSERT INTO animation_production_schedule (id, studio_id, project_name, episode_number, script_status, storyboard_status, animation_start_date, animation_end_date, voice_recording_date, sound_mix_date, quality_check_status, release_date, budget_usd, actual_spend_usd, hours_logged, lead_animator, director, producer, notes, created_at, updated_at)
VALUES (3, 303, 'Future Legends', 1, 'Complete', 'Complete', '2022-11-01', '2023-02-28', '2023-03-05', '2023-03-12', 'Passed', '2023-04-01', 3000000, 2950000, 5000, 'Emily Zhang', 'Tom Blake', 'Anita Singh', 'First episode released', '2022-11-01 07:30:00', '2023-04-01 10:30:00');

-- Toy manufacturing batch records
CREATE TABLE toy_manufacturing_batch (
    id INTEGER PRIMARY KEY,
    manufacturer_id INTEGER,
    product_line TEXT,
    batch_number TEXT,
    model_name TEXT,
    material_type TEXT,
    production_start_date DATE,
    production_end_date DATE,
    units_produced INTEGER,
    defect_rate_pct INTEGER,
    quality_certified_flag INTEGER,
    shipping_date DATE,
    destination_warehouse_id INTEGER,
    retail_price_usd INTEGER,
    wholesale_price_usd INTEGER,
    safety_certification TEXT,
    compliance_notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    notes TEXT,
    cost_per_unit_usd INTEGER
);

INSERT INTO toy_manufacturing_batch (id, manufacturer_id, product_line, batch_number, model_name, material_type, production_start_date, production_end_date, units_produced, defect_rate_pct, quality_certified_flag, shipping_date, destination_warehouse_id, retail_price_usd, wholesale_price_usd, safety_certification, compliance_notes, created_at, updated_at, notes, cost_per_unit_usd)
VALUES (1, 401, 'ActionFigures', 'BATCH001', 'TitanWarrior', 'PVC', '2023-01-05', '2023-01-20', 50000, 2, 1, '2023-01-22', 1, 29, 18, 'CE', 'All tests passed', '2023-01-05 08:00:00', '2023-01-22 14:00:00', 'First run', 12);

INSERT INTO toy_manufacturing_batch (id, manufacturer_id, product_line, batch_number, model_name, material_type, production_start_date, production_end_date, units_produced, defect_rate_pct, quality_certified_flag, shipping_date, destination_warehouse_id, retail_price_usd, wholesale_price_usd, safety_certification, compliance_notes, created_at, updated_at, notes, cost_per_unit_usd)
VALUES (2, 402, 'CollectibleStatues', 'BATCH045', 'EagleGuardian', 'Resin', '2023-02-10', '2023-02-25', 12000, 1, 1, '2023-02-27', 2, 79, 45, 'UL', 'Minor surface blemishes', '2023-02-10 09:30:00', '2023-02-27 15:45:00', 'Limited edition', 55);

INSERT INTO toy_manufacturing_batch (id, manufacturer_id, product_line, batch_number, model_name, material_type, production_start_date, production_end_date, units_produced, defect_rate_pct, quality_certified_flag, shipping_date, destination_warehouse_id, retail_price_usd, wholesale_price_usd, safety_certification, compliance_notes, created_at, updated_at, notes, cost_per_unit_usd)
VALUES (3, 403, 'PlushToys', 'BATCH078', 'CuddleBear', 'Fabric', '2023-03-01', '2023-03-12', 80000, 0, 1, '2023-03-14', 3, 19, 12, 'ASTM', 'No issues', '2023-03-01 07:45:00', '2023-03-14 13:20:00', 'Soft batch', 8);

-- Digital platform analytics
CREATE TABLE digital_platform_analytics (
    id INTEGER PRIMARY KEY,
    platform_name TEXT,
    metric_date DATE,
    active_users INTEGER,
    new_signups INTEGER,
    churn_rate_pct INTEGER,
    avg_session_minutes INTEGER,
    peak_concurrent_users INTEGER,
    content_views INTEGER,
    ad_revenue_usd INTEGER,
    subscription_revenue_usd INTEGER,
    total_revenue_usd INTEGER,
    server_uptime_pct INTEGER,
    incidents_reported INTEGER,
    avg_load_time_seconds INTEGER,
    geographic_region TEXT,
    device_type_breakdown TEXT,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

INSERT INTO digital_platform_analytics (id, platform_name, metric_date, active_users, new_signups, churn_rate_pct, avg_session_minutes, peak_concurrent_users, content_views, ad_revenue_usd, subscription_revenue_usd, total_revenue_usd, server_uptime_pct, incidents_reported, avg_load_time_seconds, geographic_region, device_type_breakdown, notes, created_at, updated_at)
VALUES (1, 'HeroStream', '2023-04-01', 125000, 2500, 5, 42, 7800, 540000, 120000, 300000, 420000, 99, 2, 3, 'NorthAmerica', 'Mobile:70%|Desktop:30%', 'Steady growth', '2023-04-01 00:00:00', '2023-04-01 23:59:59');

INSERT INTO digital_platform_analytics (id, platform_name, metric_date, active_users, new_signups, churn_rate_pct, avg_session_minutes, peak_concurrent_users, content_views, ad_revenue_usd, subscription_revenue_usd, total_revenue_usd, server_uptime_pct, incidents_reported, avg_load_time_seconds, geographic_region, device_type_breakdown, notes, created_at, updated_at)
VALUES (2, 'ComicHub', '2023-04-01', 98000, 1800, 4, 35, 6200, 410000, 95000, 210000, 305000, 98, 1, 2, 'Europe', 'Desktop:60%|Mobile:40%', 'New UI rollout', '2023-04-01 00:00:00', '2023-04-01 23:59:59');

INSERT INTO digital_platform_analytics (id, platform_name, metric_date, active_users, new_signups, churn_rate_pct, avg_session_minutes, peak_concurrent_users, content_views, ad_revenue_usd, subscription_revenue_usd, total_revenue_usd, server_uptime_pct, incidents_reported, avg_load_time_seconds, geographic_region, device_type_breakdown, notes, created_at, updated_at)
VALUES (3, 'FanPortal', '2023-04-01', 56000, 900, 6, 28, 3400, 210000, 45000, 120000, 165000, 97, 3, 4, 'AsiaPacific', 'Mobile:80%|Desktop:20%', 'Beta testing', '2023-04-01 00:00:00', '2023-04-01 23:59:59');

-- Fan convention schedule
CREATE TABLE fan_convention_schedule (
    id INTEGER PRIMARY KEY,
    convention_id INTEGER,
    day_number INTEGER,
    start_time TEXT,
    end_time TEXT,
    event_name TEXT,
    venue_hall TEXT,
    speaker_name TEXT,
    panel_topic TEXT,
    ticket_type TEXT,
    capacity INTEGER,
    attendees_registered INTEGER,
    livestream_flag INTEGER,
    sponsor_name TEXT,
    merchandise_offered TEXT,
    feedback_score INTEGER,
    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    organizer_contact TEXT,
    event_status TEXT
);

INSERT INTO fan_convention_schedule (id, convention_id, day_number, start_time, end_time, event_name, venue_hall, speaker_name, panel_topic, ticket_type, capacity, attendees_registered, livestream_flag, sponsor_name, merchandise_offered, feedback_score, notes, created_at, updated_at, organizer_contact, event_status)
VALUES (1, 901, 1, '09:00', '12:00', 'Opening Ceremonies', 'Main Hall', 'Laura Chen', 'Future of Heroes', 'General', 2000, 1850, 1, 'MegaCorp', 'T-Shirts', 9, 'Great energy', '2023-05-01 08:00:00', '2023-05-01 12:30:00', 'contact@mega.com', 'Completed');

INSERT INTO fan_convention_schedule (id, convention_id, day_number, start_time, end_time, event_name, venue_hall, speaker_name, panel_topic, ticket_type, capacity, attendees_registered, livestream_flag, sponsor_name, merchandise_offered, feedback_score, notes, created_at, updated_at, organizer_contact, event_status)
VALUES (2, 901, 2, '13:00', '15:00', 'Art Workshop', 'Room A', 'Sam Patel', 'Illustration Techniques', 'Workshop', 300, 285, 0, 'ArtSupplyCo', 'Sketchbooks', 8, '', '2023-05-02 12:30:00', '2023-05-02 15:30:00', 'events@artco.com', 'Completed');

INSERT INTO fan_convention_schedule (id, convention_id, day_number, start_time, end_time, event_name, venue_hall, speaker_name, panel_topic, ticket_type, capacity, attendees_registered, livestream_flag, sponsor_name, merchandise_offered, feedback_score, notes, created_at, updated_at, organizer_contact, event_status)
VALUES (3, 901, 3, '16:00', '18:00', 'Cosplay Parade', 'Outdoor Plaza', 'N/A', 'Costume Showcase', 'General', 5000, 4700, 1, 'CosplayWorld', 'Props', 9, 'High turnout', '2023-05-03 15:45:00', '2023-05-03 18:30:00', 'info@cosplayworld.com', 'Completed');

-- Hero training program result
CREATE TABLE hero_training_program_result (
    id INTEGER PRIMARY KEY,
    hero_id INTEGER,
    program_name TEXT,
    start_date DATE,
    end_date DATE,
    trainer_name TEXT,
    assessment_score INTEGER,
    physical_test_passed_flag INTEGER,
    mental_resilience_score INTEGER,
    skill_acquired TEXT,
    certification_awarded TEXT,
    hours_completed INTEGER,
    feedback_comments TEXT,
    next_training_due DATE,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    location TEXT,
    notes TEXT,
    overall_rating INTEGER
);

INSERT INTO hero_training_program_result (id, hero_id, program_name, start_date, end_date, trainer_name, assessment_score, physical_test_passed_flag, mental_resilience_score, skill_acquired, certification_awarded, hours_completed, feedback_comments, next_training_due, created_at, updated_at, location, notes, overall_rating)
VALUES (1, 5, 'Advanced Combat', '2023-01-10', '2023-02-15', 'Captain Lee', 88, 1, 92, 'Stealth Maneuver', 'Combat Specialist', 120, 'Excellent progress', '2023-07-01', '2023-02-15 16:00:00', '2023-02-15 16:00:00', 'Metro Training Center', 'N/A', 9);

INSERT INTO hero_training_program_result (id, hero_id, program_name, start_date, end_date, trainer_name, assessment_score, physical_test_passed_flag, mental_resilience_score, skill_acquired, certification_awarded, hours_completed, feedback_comments, next_training_due, created_at, updated_at, location, notes, overall_rating)
VALUES (2, 8, 'Leadership Academy', '2023-03-01', '2023-04-30', 'General Ortiz', 81, 1, 85, 'Team Coordination', 'Leadership Certified', 150, 'Shows strong command', '2023-10-01', '2023-04-30 15:30:00', '2023-04-30 15:30:00', 'National Hero Institute', '', 8);

INSERT INTO hero_training_program_result (id, hero_id, program_name, start_date, end_date, trainer_name, assessment_score, physical_test_passed_flag, mental_resilience_score, skill_acquired, certification_awarded, hours_completed, feedback_comments, next_training_due, created_at, updated_at, location, notes, overall_rating)
VALUES (3, 3, 'Scientific Research Intensive', '2023-05-15', '2023-08-20', 'Dr Vega', 75, 0, 78, 'Quantum Analysis', 'Research Fellow', 200, 'Needs improvement in lab safety', '2024-02-01', '2023-08-20 14:45:00', '2023-08-20 14:45:00', 'Research Facility Alpha', 'Lab protocols updated', 7);