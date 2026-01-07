-- Hero costume inventory details
CREATE TABLE hero_costume_inventory (
    id INTEGER NOT NULL PRIMARY KEY,
    hero_id INTEGER,
    costume_id INTEGER,
    costume_name TEXT,
    material TEXT,
    primary_color TEXT,
    secondary_color TEXT,
    weight_kg REAL,
    size TEXT,
    season TEXT,
    acquisition_date DATE,
    cost_usd REAL,
    designer_name TEXT,
    manufacturer TEXT,
    status TEXT,
    notes TEXT,
    is_limited_edition INTEGER,
    is_armor INTEGER,
    length_cm INTEGER,
    width_cm INTEGER,
    height_cm INTEGER,
    inventory_location TEXT
);

INSERT INTO hero_costume_inventory (id, hero_id, costume_id, costume_name, material, primary_color, secondary_color, weight_kg, size, season, acquisition_date, cost_usd, designer_name, manufacturer, status, notes, is_limited_edition, is_armor, length_cm, width_cm, height_cm, inventory_location) VALUES (1, 1, 101, 'StealthSuit', 'Kevlar', 'Black', 'Grey', 5.2, 'M', 'Winter', '2022-10-05', 2500, 'DesignCo', 'FabricInc', 'Active', 'First prototype', 1, 1, 180, 80, 40, 'WarehouseA');
INSERT INTO hero_costume_inventory (id, hero_id, costume_id, costume_name, material, primary_color, secondary_color, weight_kg, size, season, acquisition_date, cost_usd, designer_name, manufacturer, status, notes, is_limited_edition, is_armor, length_cm, width_cm, height_cm, inventory_location) VALUES (2, 2, 102, 'AquaArmor', 'Neoprene', 'Blue', 'White', 6.5, 'L', 'Summer', '2023-03-12', 3200, 'WaveWorks', 'MarineTech', 'Active', 'Water resistant', 0, 1, 200, 85, 45, 'WarehouseB');
INSERT INTO hero_costume_inventory (id, hero_id, costume_id, costume_name, material, primary_color, secondary_color, weight_kg, size, season, acquisition_date, cost_usd, designer_name, manufacturer, status, notes, is_limited_edition, is_armor, length_cm, width_cm, height_cm, inventory_location) VALUES (3, 3, 103, 'SolarRobe', 'Silk', 'Gold', 'Red', 3.8, 'S', 'Spring', '2021-07-20', 1800, 'SunDesign', 'LightWeave', 'Retired', 'Limited edition', 1, 0, 170, 75, 38, 'WarehouseC');

-- Villain association network records
CREATE TABLE villain_association_network (
    id INTEGER NOT NULL PRIMARY KEY,
    villain_id INTEGER,
    associate_villain_id INTEGER,
    association_type TEXT,
    start_date DATE,
    end_date DATE,
    strength_score INTEGER,
    location TEXT,
    notes TEXT,
    is_active INTEGER,
    secret_meeting_frequency TEXT,
    shared_resources TEXT,
    joint_operations_count INTEGER,
    alliance_name TEXT,
    betrayal_history TEXT,
    mutual_enemies_count INTEGER,
    shared_funds_usd REAL,
    communication_channel TEXT,
    code_name TEXT,
    common_goals TEXT,
    risk_level TEXT
);

INSERT INTO villain_association_network (id, villain_id, associate_villain_id, association_type, start_date, end_date, strength_score, location, notes, is_active, secret_meeting_frequency, shared_resources, joint_operations_count, alliance_name, betrayal_history, mutual_enemies_count, shared_funds_usd, communication_channel, code_name, common_goals, risk_level) VALUES (1, 10, 20, 'Alliance', '2020-01-15', NULL, 85, 'UndergroundLab', 'Coordinated thefts', 1, 'Monthly', 'Weapons, Intel', 12, 'DarkSyndicate', 'None', 5, 4500000, 'EncryptedRadio', 'ShadowFox', 'WorldDomination', 'High');
INSERT INTO villain_association_network (id, villain_id, associate_villain_id, association_type, start_date, end_date, strength_score, location, notes, is_active, secret_meeting_frequency, shared_resources, joint_operations_count, alliance_name, betrayal_history, mutual_enemies_count, shared_funds_usd, communication_channel, code_name, common_goals, risk_level) VALUES (2, 15, 25, 'Rivalry', '2019-06-01', NULL, 70, 'AbandonedWarehouse', 'Competing for territory', 1, 'Weekly', 'None', 3, 'None', 'RecentSkirmish', 2, 2000000, 'SecureMessager', 'RazorEdge', 'ControlCity', 'Medium');
INSERT INTO villain_association_network (id, villain_id, associate_villain_id, association_type, start_date, end_date, strength_score, location, notes, is_active, secret_meeting_frequency, shared_resources, joint_operations_count, alliance_name, betrayal_history, mutual_enemies_count, shared_funds_usd, communication_channel, code_name, common_goals, risk_level) VALUES (3, 30, 40, 'Cooperation', '2021-03-10', '2022-12-20', 60, 'SecretBase', 'Joint heist', 0, 'None', 'Vehicles', 1, 'CrimsonClub', 'None', 1, 750000, 'SatelliteLink', 'IronClaw', 'BankRobbery', 'Low');

-- Multiverse event participation log
CREATE TABLE multiverse_event_participation (
    id INTEGER NOT NULL PRIMARY KEY,
    event_id INTEGER,
    hero_id INTEGER,
    villain_id INTEGER,
    universe_branch TEXT,
    role TEXT,
    participation_date DATE,
    outcome TEXT,
    impact_score INTEGER,
    resources_used_usd REAL,
    allied_teams TEXT,
    enemy_teams TEXT,
    duration_minutes INTEGER,
    location TEXT,
    public_visibility TEXT,
    media_coverage_level TEXT,
    strategic_importance TEXT,
    notes TEXT,
    is_successful INTEGER,
    reward_points INTEGER
);

INSERT INTO multiverse_event_participation (id, event_id, hero_id, villain_id, universe_branch, role, participation_date, outcome, impact_score, resources_used_usd, allied_teams, enemy_teams, duration_minutes, location, public_visibility, media_coverage_level, strategic_importance, notes, is_successful, reward_points) VALUES (1, 1001, 1, 10, 'Alpha', 'Lead', '2023-05-12', 'Victory', 92, 1200000, 'TeamA,TeamB', 'VillainX', 180, 'Metropolis', 'High', 'Extensive', 'Critical', 'First multiverse clash', 1, 5000);
INSERT INTO multiverse_event_participation (id, event_id, hero_id, villain_id, universe_branch, role, participation_date, outcome, impact_score, resources_used_usd, allied_teams, enemy_teams, duration_minutes, location, public_visibility, media_coverage_level, strategic_importance, notes, is_successful, reward_points) VALUES (2, 1002, 2, 15, 'Beta', 'Support', '2023-07-08', 'Stalemate', 68, 800000, 'TeamC', 'VillainY,VillainZ', 240, 'SkyCity', 'Medium', 'Moderate', 'Important', 'Heavy casualties', 0, 3000);
INSERT INTO multiverse_event_participation (id, event_id, hero_id, villain_id, universe_branch, role, participation_date, outcome, impact_score, resources_used_usd, allied_teams, enemy_teams, duration_minutes, location, public_visibility, media_coverage_level, strategic_importance, notes, is_successful, reward_points) VALUES (3, 1003, 3, NULL, 'Gamma', 'Observer', '2024-01-15', 'N/A', 0, 0, 'None', 'None', 60, 'DimensionX', 'Low', 'Minimal', 'Low', 'Monitoring event', 1, 1000);

-- Superhero cinematic release detail
CREATE TABLE superhero_cinematic_release_detail (
    id INTEGER NOT NULL PRIMARY KEY,
    superhero_id INTEGER,
    film_title TEXT,
    release_date DATE,
    director TEXT,
    studio TEXT,
    budget_usd REAL,
    box_office_usd REAL,
    rating TEXT,
    runtime_minutes INTEGER,
    language TEXT,
    country TEXT,
    franchise_name TEXT,
    sequel_number INTEGER,
    is_animated INTEGER,
    is_live_action INTEGER,
    special_effects_budget_usd REAL,
    soundtrack_composer TEXT,
    mpaa_rating TEXT,
    critic_score INTEGER,
    audience_score INTEGER,
    streaming_rights_holder TEXT
);

INSERT INTO superhero_cinematic_release_detail (id, superhero_id, film_title, release_date, director, studio, budget_usd, box_office_usd, rating, runtime_minutes, language, country, franchise_name, sequel_number, is_animated, is_live_action, special_effects_budget_usd, soundtrack_composer, mpaa_rating, critic_score, audience_score, streaming_rights_holder) VALUES (1, 1, 'Night Guardian', '2022-11-04', 'Laura Smith', 'Epic Studios', 150000000, 450000000, 'PG-13', 130, 'English', 'USA', 'Guardian Series', 2, 0, 1, 30000000, 'John Doe', 'PG-13', 85, 92, 'StreamFlix');
INSERT INTO superhero_cinematic_release_detail (id, superhero_id, film_title, release_date, director, studio, budget_usd, box_office_usd, rating, runtime_minutes, language, country, franchise_name, sequel_number, is_animated, is_live_action, special_effects_budget_usd, soundtrack_composer, mpaa_rating, critic_score, audience_score, streaming_rights_holder) VALUES (2, 2, 'Aqua Fury', '2023-06-18', 'Mike Lee', 'Blue Wave Pictures', 90000000, 320000000, 'PG', 115, 'English', 'USA', 'Aqua Series', 1, 0, 1, 20000000, 'Emily Clark', 'PG', 78, 84, 'WaveStream');
INSERT INTO superhero_cinematic_release_detail (id, superhero_id, film_title, release_date, director, studio, budget_usd, box_office_usd, rating, runtime_minutes, language, country, franchise_name, sequel_number, is_animated, is_live_action, special_effects_budget_usd, soundtrack_composer, mpaa_rating, critic_score, audience_score, streaming_rights_holder) VALUES (3, 3, 'Solar Strike', '2024-03-22', 'Anita Patel', 'Solaris Films', 120000000, 0, 'PG-13', 125, 'English', 'USA', 'Solar Saga', 3, 0, 1, 25000000, 'Raj Kumar', 'PG-13', 0, 0, 'SunStream');

-- Hero training program metric records
CREATE TABLE hero_training_program_metric (
    id INTEGER NOT NULL PRIMARY KEY,
    hero_id INTEGER,
    program_name TEXT,
    start_date DATE,
    end_date DATE,
    total_hours INTEGER,
    modules_completed INTEGER,
    physical_score INTEGER,
    mental_score INTEGER,
    agility_score INTEGER,
    strength_score INTEGER,
    stamina_score INTEGER,
    skill_rating INTEGER,
    graduation_status TEXT,
    certificate_id TEXT,
    trainer_name TEXT,
    training_location TEXT,
    feedback_notes TEXT,
    is_certified INTEGER,
    post_training_injury_count INTEGER,
    followup_date DATE
);

INSERT INTO hero_training_program_metric (id, hero_id, program_name, start_date, end_date, total_hours, modules_completed, physical_score, mental_score, agility_score, strength_score, stamina_score, skill_rating, graduation_status, certificate_id, trainer_name, training_location, feedback_notes, is_certified, post_training_injury_count, followup_date) VALUES (1, 1, 'Advanced Combat', '2022-01-10', '2022-03-20', 200, 15, 88, 92, 85, 90, 87, 91, 'Completed', 'CERT-001', 'Captain Reed', 'Central Academy', 'Excellent progress', 1, 0, '2022-04-15');
INSERT INTO hero_training_program_metric (id, hero_id, program_name, start_date, end_date, total_hours, modules_completed, physical_score, mental_score, agility_score, strength_score, stamina_score, skill_rating, graduation_status, certificate_id, trainer_name, training_location, feedback_notes, is_certified, post_training_injury_count, followup_date) VALUES (2, 2, 'Underwater Operations', '2023-05-01', '2023-07-15', 180, 12, 80, 85, 90, 78, 82, 84, 'Completed', 'CERT-045', 'Lt. Mira', 'Oceanic Training Center', 'Strong adaptation', 1, 1, '2023-08-01');
INSERT INTO hero_training_program_metric (id, hero_id, program_name, start_date, end_date, total_hours, modules_completed, physical_score, mental_score, agility_score, strength_score, stamina_score, skill_rating, graduation_status, certificate_id, trainer_name, training_location, feedback_notes, is_certified, post_training_injury_count, followup_date) VALUES (3, 3, 'Solar Energy Harness', '2021-09-15', '2021-12-30', 150, 10, 75, 88, 78, 70, 80, 77, 'Completed', 'CERT-078', 'Dr. Solaris', 'Solar Research Facility', 'Shows great potential', 1, 0, '2022-01-20');

-- Fan community engagement statistics
CREATE TABLE fan_community_engagement_stats (
    id INTEGER NOT NULL PRIMARY KEY,
    fan_id INTEGER,
    community_name TEXT,
    join_date DATE,
    last_active_date DATE,
    posts_made INTEGER,
    comments_made INTEGER,
    likes_given INTEGER,
    likes_received INTEGER,
    events_attended INTEGER,
    badges_earned INTEGER,
    reputation_score INTEGER,
    is_moderator INTEGER,
    favorite_hero_id INTEGER,
    favorite_villain_id INTEGER,
    average_session_minutes INTEGER,
    devices_used TEXT,
    newsletter_subscribed INTEGER,
    referral_count INTEGER,
    geo_region TEXT,
    time_zone TEXT
);

INSERT INTO fan_community_engagement_stats (id, fan_id, community_name, join_date, last_active_date, posts_made, comments_made, likes_given, likes_received, events_attended, badges_earned, reputation_score, is_moderator, favorite_hero_id, favorite_villain_id, average_session_minutes, devices_used, newsletter_subscribed, referral_count, geo_region, time_zone) VALUES (1, 1001, 'HeroesHub', '2020-02-14', '2023-12-01', 250, 480, 900, 850, 12, 5, 1200, 1, 1, 10, 45, 'Desktop,Mobile', 1, 8, 'NorthAmerica', 'EST');
INSERT INTO fan_community_engagement_stats (id, fan_id, community_name, join_date, last_active_date, posts_made, comments_made, likes_given, likes_received, events_attended, badges_earned, reputation_score, is_moderator, favorite_hero_id, favorite_villain_id, average_session_minutes, devices_used, newsletter_subscribed, referral_count, geo_region, time_zone) VALUES (2, 1002, 'VillainVault', '2019-07-22', '2023-11-20', 180, 300, 600, 620, 5, 3, 950, 0, 2, 15, 38, 'Mobile', 0, 3, 'Europe', 'CET');
INSERT INTO fan_community_engagement_stats (id, fan_id, community_name, join_date, last_active_date, posts_made, comments_made, likes_given, likes_received, events_attended, badges_earned, reputation_score, is_moderator, favorite_hero_id, favorite_villain_id, average_session_minutes, devices_used, newsletter_subscribed, referral_count, geo_region, time_zone) VALUES (3, 1003, 'ChronicleClub', '2021-11-05', '2023-10-15', 90, 150, 300, 280, 2, 1, 400, 0, 3, 5, 30, 'Tablet,Desktop', 1, 1, 'Asia', 'JST');

-- Publisher series license information
CREATE TABLE publisher_series_license (
    id INTEGER NOT NULL PRIMARY KEY,
    publisher_id INTEGER,
    series_name TEXT,
    license_start_date DATE,
    license_end_date DATE,
    territory TEXT,
    royalty_percentage REAL,
    upfront_fee_usd REAL,
    min_print_run INTEGER,
    max_print_run INTEGER,
    digital_rights_included INTEGER,
    exclusive INTEGER,
    renewal_option TEXT,
    notes TEXT,
    contract_status TEXT,
    legal_representative TEXT,
    contact_email TEXT,
    audit_frequency_months INTEGER,
    last_audit_date DATE,
    compliance_score INTEGER
);

INSERT INTO publisher_series_license (id, publisher_id, series_name, license_start_date, license_end_date, territory, royalty_percentage, upfront_fee_usd, min_print_run, max_print_run, digital_rights_included, exclusive, renewal_option, notes, contract_status, legal_representative, contact_email, audit_frequency_months, last_audit_date, compliance_score) VALUES (1, 1, 'Eternal Guardians', '2020-01-01', '2025-12-31', 'Global', 12.5, 500000, 10000, 500000, 1, 1, 'Auto', 'High demand series', 'Active', 'Anna Blake', 'anna.blake@example.com', 12, '2023-06-15', 95);
INSERT INTO publisher_series_license (id, publisher_id, series_name, license_start_date, license_end_date, territory, royalty_percentage, upfront_fee_usd, min_print_run, max_print_run, digital_rights_included, exclusive, renewal_option, notes, contract_status, legal_representative, contact_email, audit_frequency_months, last_audit_date, compliance_score) VALUES (2, 2, 'Shadow Chronicles', '2021-05-10', '2024-05-09', 'NorthAmerica', 10.0, 300000, 5000, 200000, 0, 0, 'Manual', 'Limited regional rights', 'Pending', 'Mark Liu', 'mark.liu@example.com', 6, '2022-12-01', 80);
INSERT INTO publisher_series_license (id, publisher_id, series_name, license_start_date, license_end_date, territory, royalty_percentage, upfront_fee_usd, min_print_run, max_print_run, digital_rights_included, exclusive, renewal_option, notes, contract_status, legal_representative, contact_email, audit_frequency_months, last_audit_date, compliance_score) VALUES (3, 3, 'Celestial Tales', '2019-09-15', '2023-09-14', 'Europe', 15.0, 750000, 20000, 600000, 1, 0, 'Auto', 'Strong digital sales', 'Expired', 'Laura Green', 'laura.green@example.com', 12, '2022-07-20', 70);

-- Hero medical test results
CREATE TABLE hero_medical_test_results (
    id INTEGER NOT NULL PRIMARY KEY,
    hero_id INTEGER,
    test_date DATE,
    test_type TEXT,
    result_value TEXT,
    normal_range TEXT,
    units TEXT,
    physician_name TEXT,
    facility_name TEXT,
    notes TEXT,
    follow_up_required INTEGER,
    follow_up_date DATE,
    is_critical INTEGER,
    medication_prescribed TEXT,
    dosage_mg REAL,
    frequency_per_day INTEGER,
    test_image_path TEXT,
    lab_technician TEXT,
    insurance_claim_id TEXT,
    billing_amount_usd REAL,
    result_status TEXT
);

INSERT INTO hero_medical_test_results (id, hero_id, test_date, test_type, result_value, normal_range, units, physician_name, facility_name, notes, follow_up_required, follow_up_date, is_critical, medication_prescribed, dosage_mg, frequency_per_day, test_image_path, lab_technician, insurance_claim_id, billing_amount_usd, result_status) VALUES (1, 1, '2023-04-10', 'BloodPanel', '5.2', '4.0-6.0', 'mmol/L', 'Dr. Hale', 'City Hospital', 'All normal', 0, NULL, 0, NULL, NULL, NULL, 'Anna', 'CLAIM001', 150, 'Completed');
INSERT INTO hero_medical_test_results (id, hero_id, test_date, test_type, result_value, normal_range, units, physician_name, facility_name, notes, follow_up_required, follow_up_date, is_critical, medication_prescribed, dosage_mg, frequency_per_day, test_image_path, lab_technician, insurance_claim_id, billing_amount_usd, result_status) VALUES (2, 2, '2023-06-22', 'CardioStress', '85', '60-100', 'bpm', 'Dr. Singh', 'Metro Clinic', 'Slight tachycardia', 1, '2023-07-05', 0, 'BetaBlocker', 25, 2, '/images/stress2.png', 'Mike', 'CLAIM045', 300, 'Pending');
INSERT INTO hero_medical_test_results (id, hero_id, test_date, test_type, result_value, normal_range, units, physician_name, facility_name, notes, follow_up_required, follow_up_date, is_critical, medication_prescribed, dosage_mg, frequency_per_day, test_image_path, lab_technician, insurance_claim_id, billing_amount_usd, result_status) VALUES (3, 3, '2022-12-01', 'RadiationExposure', '2.5', '0-3.0', 'Sv', 'Dr. Kim', 'Space Med Center', 'Within safe limits', 0, NULL, 0, NULL, NULL, NULL, 'Sara', 'CLAIM078', 200, 'Completed');

-- Superpower effectiveness study data
CREATE TABLE superpower_effectiveness_study (
    id INTEGER NOT NULL PRIMARY KEY,
    power_id INTEGER,
    study_name TEXT,
    researcher_name TEXT,
    start_date DATE,
    end_date DATE,
    sample_size INTEGER,
    avg_effectiveness_score REAL,
    max_effectiveness_score REAL,
    min_effectiveness_score REAL,
    methodology TEXT,
    control_group_used INTEGER,
    statistical_significance TEXT,
    published_journal TEXT,
    doi TEXT,
    funding_source TEXT,
    budget_usd REAL,
    peer_review_status TEXT,
    notes TEXT,
    is_conclusive INTEGER,
    impact_factor REAL
);

INSERT INTO superpower_effectiveness_study (id, power_id, study_name, researcher_name, start_date, end_date, sample_size, avg_effectiveness_score, max_effectiveness_score, min_effectiveness_score, methodology, control_group_used, statistical_significance, published_journal, doi, funding_source, budget_usd, peer_review_status, notes, is_conclusive, impact_factor) VALUES (1, 1, 'FlightDynamics', 'Dr. Allen', '2021-01-15', '2021-12-20', 150, 88.5, 99.0, 70.2, 'FieldTests', 1, 'p<0.01', 'Journal of Heroics', '10.1234/hero.2022.001', 'GovGrant', 500000, 'Approved', 'High altitude performance', 1, 4.2);
INSERT INTO superpower_effectiveness_study (id, power_id, study_name, researcher_name, start_date, end_date, sample_size, avg_effectiveness_score, max_effectiveness_score, min_effectiveness_score, methodology, control_group_used, statistical_significance, published_journal, doi, funding_source, budget_usd, peer_review_status, notes, is_conclusive, impact_factor) VALUES (2, 2, 'HydroKinesisEfficiency', 'Prof. Liu', '2020-05-01', '2020-11-30', 120, 75.3, 90.0, 55.0, 'LabSimulations', 0, 'p<0.05', 'Aquatic Powers Review', '10.5678/aqua.2021.045', 'PrivateFund', 300000, 'Pending', 'Variable water pressure', 0, 3.8);
INSERT INTO superpower_effectiveness_study (id, power_id, study_name, researcher_name, start_date, end_date, sample_size, avg_effectiveness_score, max_effectiveness_score, min_effectiveness_score, methodology, control_group_used, statistical_significance, published_journal, doi, funding_source, budget_usd, peer_review_status, notes, is_conclusive, impact_factor) VALUES (3, 3, 'SolarFlareControl', 'Dr. Patel', '2022-03-10', '2022-09-25', 200, 82.0, 95.0, 60.0, 'FieldAndLab', 1, 'p<0.001', 'Solar Energy Quarterly', '10.9101/solar.2023.099', 'EnergyCorp', 750000, 'Approved', 'Peak sun conditions', 1, 5.0);

-- Villain scheme financial overview
CREATE TABLE villain_scheme_financial_overview (
    id INTEGER NOT NULL PRIMARY KEY,
    villain_id INTEGER,
    scheme_name TEXT,
    start_date DATE,
    end_date DATE,
    total_funds_usd REAL,
    funds_laundered_usd REAL,
    assets_acquired TEXT,
    assets_lost TEXT,
    number_of_conspirators INTEGER,
    jurisdiction TEXT,
    legal_status TEXT,
    risk_assessment_score INTEGER,
    detection_probability REAL,
    countermeasures_applied TEXT,
    notes TEXT,
    is_active INTEGER,
    last_update_date DATE,
    estimated_future_gain_usd REAL,
    public_impact_score INTEGER
);

INSERT INTO villain_scheme_financial_overview (id, villain_id, scheme_name, start_date, end_date, total_funds_usd, funds_laundered_usd, assets_acquired, assets_lost, number_of_conspirators, jurisdiction, legal_status, risk_assessment_score, detection_probability, countermeasures_applied, notes, is_active, last_update_date, estimated_future_gain_usd, public_impact_score) VALUES (1, 10, 'Quantum Heist', '2020-02-01', '2022-07-15', 8000000, 6500000, 'CryptoVault,SecureLab', 'None', 12, 'International', 'Wanted', 92, 0.15, 'CyberWatch', 'Targeted high-value tech', 0, '2022-08-01', 1200000, 85);
INSERT INTO villain_scheme_financial_overview (id, villain_id, scheme_name, start_date, end_date, total_funds_usd, funds_laundered_usd, assets_acquired, assets_lost, number_of_conspirators, jurisdiction, legal_status, risk_assessment_score, detection_probability, countermeasures_applied, notes, is_active, last_update_date, estimated_future_gain_usd, public_impact_score) VALUES (2, 15, 'Pharma Ponzi', '2021-05-10', '2023-03-20', 5000000, 4000000, 'PatentPortfolio', 'ExpiredLicenses', 8, 'Europe', 'Investigated', 78, 0.30, 'RegulatoryAudit', 'Exploiting medical grants', 1, '2023-04-01', 900000, 70);
INSERT INTO villain_scheme_financial_overview (id, villain_id, scheme_name, start_date, end_date, total_funds_usd, funds_laundered_usd, assets_acquired, assets_lost, number_of_conspirators, jurisdiction, legal_status, risk_assessment_score, detection_probability, countermeasures_applied, notes, is_active, last_update_date, estimated_future_gain_usd, public_impact_score) VALUES (3, 20, 'Dark Energy Trade', '2019-11-05', NULL, 12000000, 9500000, 'DarkEnergyExtractors', 'DamagedContainmentUnits', 20, 'Global', 'AtLarge', 98, 0.08, 'InternationalTaskForce', 'Potential planetary impact', 1, '2024-01-10', 2500000, 95);