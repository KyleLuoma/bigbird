-- Digital archive metadata for various files related to matches, teams, etc.
CREATE TABLE Digital_Archive_Metadata (
    archive_id INTEGER PRIMARY KEY AUTOINCREMENT,
    file_name TEXT,
    file_type TEXT,
    file_size_kb INTEGER,
    upload_date TEXT,
    uploaded_by TEXT,
    description TEXT,
    checksum TEXT,
    version INTEGER,
    is_active INTEGER,
    retention_policy TEXT,
    access_level TEXT,
    related_match_id INTEGER,
    related_team_id INTEGER,
    related_player_id INTEGER,
    source_system TEXT,
    storage_location TEXT,
    encryption_status TEXT,
    last_accessed TEXT,
    archive_category TEXT
);

INSERT INTO Digital_Archive_Metadata (file_name, file_type, file_size_kb, upload_date, uploaded_by, description, checksum, version, is_active, retention_policy, access_level, related_match_id, related_team_id, related_player_id, source_system, storage_location, encryption_status, last_accessed, archive_category)
VALUES ('match_report_2023_05_12.pdf', 'pdf', 2540, '2023-05-13', 'data_admin', 'Official match report', 'abc123def456', 1, 1, '5years', 'internal', 10234, 57, NULL, 'match_system', 'archive_server_1', 'encrypted', '2023-06-01', 'match_reports');

INSERT INTO Digital_Archive_Metadata (file_name, file_type, file_size_kb, upload_date, uploaded_by, description, checksum, version, is_active, retention_policy, access_level, related_match_id, related_team_id, related_player_id, source_system, storage_location, encryption_status, last_accessed, archive_category)
VALUES ('team_roster_jun2023.csv', 'csv', 85, '2023-06-15', 'roster_manager', 'Team roster for June 2023', 'def789ghi012', 2, 1, '3years', 'restricted', NULL, 57, NULL, 'team_hr', 'archive_server_2', 'none', '2023-07-01', 'team_documents');

INSERT INTO Digital_Archive_Metadata (file_name, file_type, file_size_kb, upload_date, uploaded_by, description, checksum, version, is_active, retention_policy, access_level, related_match_id, related_team_id, related_player_id, source_system, storage_location, encryption_status, last_accessed, archive_category)
VALUES ('player_profile_2022_09_20.json', 'json', 12, '2022-09-21', 'player_ops', 'Player profile data export', 'ghi345jkl678', 1, 0, '10years', 'confidential', NULL, NULL, 2045, 'player_portal', 'archive_server_3', 'encrypted', '2023-01-15', 'player_data');

-- Heat map recordings taken inside stadiums during matches.
CREATE TABLE Stadium_Heat_Map_Records (
    heatmap_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    match_id INTEGER,
    recorded_date TEXT,
    sensor_grid_x INTEGER,
    sensor_grid_y INTEGER,
    avg_temperature REAL,
    max_temperature REAL,
    min_temperature REAL,
    crowd_density INTEGER,
    humidity REAL,
    wind_speed REAL,
    wind_direction TEXT,
    illumination_lux REAL,
    sound_level_db REAL,
    air_quality_index INTEGER,
    timestamp_start TEXT,
    timestamp_end TEXT,
    analyst_name TEXT,
    notes TEXT,
    data_quality_score INTEGER
);

INSERT INTO Stadium_Heat_Map_Records (stadium_id, match_id, recorded_date, sensor_grid_x, sensor_grid_y, avg_temperature, max_temperature, min_temperature, crowd_density, humidity, wind_speed, wind_direction, illumination_lux, sound_level_db, air_quality_index, timestamp_start, timestamp_end, analyst_name, notes, data_quality_score)
VALUES (12, 10234, '2023-05-12', 30, 40, 22.5, 28.0, 18.3, 8500, 55.2, 5.6, 'NE', 12000, 85, 42, '2023-05-12 15:00', '2023-05-12 16:30', 'alice_smith', 'normal conditions', 95);

INSERT INTO Stadium_Heat_Map_Records (stadium_id, match_id, recorded_date, sensor_grid_x, sensor_grid_y, avg_temperature, max_temperature, min_temperature, crowd_density, humidity, wind_speed, wind_direction, illumination_lux, sound_level_db, air_quality_index, timestamp_start, timestamp_end, analyst_name, notes, data_quality_score)
VALUES (9, 10356, '2023-06-03', 25, 35, 24.1, 30.2, 19.0, 10200, 60.0, 3.2, 'S', 15000, 92, 35, '2023-06-03 18:00', '2023-06-03 19:45', 'bob_jones', 'higher humidity', 88);

INSERT INTO Stadium_Heat_Map_Records (stadium_id, match_id, recorded_date, sensor_grid_x, sensor_grid_y, avg_temperature, max_temperature, min_temperature, crowd_density, humidity, wind_speed, wind_direction, illumination_lux, sound_level_db, air_quality_index, timestamp_start, timestamp_end, analyst_name, notes, data_quality_score)
VALUES (7, 10478, '2023-07-21', 20, 30, 20.0, 26.5, 15.8, 7400, 48.5, 2.5, 'W', 11000, 78, 28, '2023-07-21 20:00', '2023-07-21 21:30', 'carla_lee', 'clear night', 98);

-- Logs of interactions between clubs and official fan clubs.
CREATE TABLE Club_Fan_Club_Interaction_Logs (
    interaction_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    fan_club_id INTEGER,
    interaction_date TEXT,
    interaction_type TEXT,
    channel TEXT,
    staff_responder TEXT,
    duration_minutes INTEGER,
    satisfaction_score INTEGER,
    topics_discussed TEXT,
    follow_up_required INTEGER,
    follow_up_date TEXT,
    notes TEXT,
    response_time_minutes INTEGER,
    engagement_level TEXT,
    demographic_segment TEXT,
    campaign_id INTEGER,
    tickets_offered INTEGER,
    merchandise_offered INTEGER,
    feedback_collected INTEGER,
    net_promoter_score INTEGER
);

INSERT INTO Club_Fan_Club_Interaction_Logs (club_id, fan_club_id, interaction_date, interaction_type, channel, staff_responder, duration_minutes, satisfaction_score, topics_discussed, follow_up_required, follow_up_date, notes, response_time_minutes, engagement_level, demographic_segment, campaign_id, tickets_offered, merchandise_offered, feedback_collected, net_promoter_score)
VALUES (57, 2001, '2023-04-10', 'meeting', 'in_person', 'david_keller', 45, 8, 'season tickets, community events', 1, '2023-04-20', 'positive outlook', 12, 'high', 'adult', 301, 50, 20, 1, 72);

INSERT INTO Club_Fan_Club_Interaction_Logs (club_id, fan_club_id, interaction_date, interaction_type, channel, staff_responder, duration_minutes, satisfaction_score, topics_discussed, follow_up_required, follow_up_date, notes, response_time_minutes, engagement_level, demographic_segment, campaign_id, tickets_offered, merchandise_offered, feedback_collected, net_promoter_score)
VALUES (57, 2002, '2023-05-05', 'email', 'email', 'sarah_lee', 15, 7, 'merchandise discounts', 0, NULL, 'no action needed', 4, 'medium', 'youth', 302, 0, 15, 0, 65);

INSERT INTO Club_Fan_Club_Interaction_Logs (club_id, fan_club_id, interaction_date, interaction_type, channel, staff_responder, duration_minutes, satisfaction_score, topics_discussed, follow_up_required, follow_up_date, notes, response_time_minutes, engagement_level, demographic_segment, campaign_id, tickets_offered, merchandise_offered, feedback_collected, net_promoter_score)
VALUES (58, 2100, '2023-06-12', 'phone', 'phone', 'mike_duncan', 30, 9, 'stadium tour planning', 1, '2023-06-20', 'tour scheduled', 8, 'high', 'family', 303, 20, 5, 1, 80);

-- Audio tracks for match commentaries in different languages.
CREATE TABLE Match_Commentary_Audio_Tracks (
    track_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    language TEXT,
    commentator_name TEXT,
    audio_format TEXT,
    file_path TEXT,
    duration_seconds INTEGER,
    bitrate_kbps INTEGER,
    sample_rate_hz INTEGER,
    channels INTEGER,
    upload_date TEXT,
    approved INTEGER,
    audience_rating INTEGER,
    editor_name TEXT,
    edit_version INTEGER,
    transcript_available INTEGER,
    transcript_path TEXT,
    notes TEXT,
    audio_quality_score INTEGER,
    distribution_platform TEXT
);

INSERT INTO Match_Commentary_Audio_Tracks (match_id, language, commentator_name, audio_format, file_path, duration_seconds, bitrate_kbps, sample_rate_hz, channels, upload_date, approved, audience_rating, editor_name, edit_version, transcript_available, transcript_path, notes, audio_quality_score, distribution_platform)
VALUES (10234, 'en', 'john_davis', 'mp3', '/audio/track_10234_en.mp3', 5400, 128, 44100, 2, '2023-05-13', 1, 9, 'lisa_martin', 1, 1, '/transcripts/track_10234_en.txt', 'standard broadcast', 94, 'global_stream');

INSERT INTO Match_Commentary_Audio_Tracks (match_id, language, commentator_name, audio_format, file_path, duration_seconds, bitrate_kbps, sample_rate_hz, channels, upload_date, approved, audience_rating, editor_name, edit_version, transcript_available, transcript_path, notes, audio_quality_score, distribution_platform)
VALUES (10356, 'es', 'carlos_mendez', 'aac', '/audio/track_10356_es.aac', 5580, 192, 48000, 2, '2023-06-04', 1, 8, 'rafael_perez', 2, 1, '/transcripts/track_10356_es.txt', 'regional broadcast', 96, 'latin_america');

INSERT INTO Match_Commentary_Audio_Tracks (match_id, language, commentator_name, audio_format, file_path, duration_seconds, bitrate_kbps, sample_rate_hz, channels, upload_date, approved, audience_rating, editor_name, edit_version, transcript_available, transcript_path, notes, audio_quality_score, distribution_platform)
VALUES (10478, 'de', 'hans_keller', 'wav', '/audio/track_10478_de.wav', 5300, 1411, 96000, 2, '2023-07-22', 1, 7, 'anna_schulz', 1, 0, NULL, 'premium feed', 90, 'europe_stream');

-- Development plans for individual player skill improvement.
CREATE TABLE Player_Skill_Development_Plans (
    plan_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    season TEXT,
    skill_focus TEXT,
    target_rating INTEGER,
    current_rating INTEGER,
    training_modules TEXT,
    frequency_per_week INTEGER,
    coach_assigned TEXT,
    start_date TEXT,
    end_date TEXT,
    progress_notes TEXT,
    midseason_review INTEGER,
    final_review INTEGER,
    overall_improvement REAL,
    next_season_goal TEXT,
    budget_allocated INTEGER,
    resources_provided TEXT,
    evaluation_method TEXT,
    status TEXT
);

INSERT INTO Player_Skill_Development_Plans (player_id, season, skill_focus, target_rating, current_rating, training_modules, frequency_per_week, coach_assigned, start_date, end_date, progress_notes, midseason_review, final_review, overall_improvement, next_season_goal, budget_allocated, resources_provided, evaluation_method, status)
VALUES (2045, '2023/2024', 'finishing', 85, 78, 'shooting_drills,game_simulation', 4, 'coach_martin', '2023-07-01', '2024-06-30', 'steady progress', 0, 0, 7.0, 'maintain rating', 15000, 'video_analysis, VR', 'KPIs', 'active');

INSERT INTO Player_Skill_Development_PlanS (player_id, season, skill_focus, target_rating, current_rating, training_modules, frequency_per_week, coach_assigned, start_date, end_date, progress_notes, midseason_review, final_review, overall_improvement, next_season_goal, budget_allocated, resources_provided, evaluation_method, status)
VALUES (2078, '2023/2024', 'dribbling', 88, 81, '1v1_sessions, agility_ladder', 5, 'coach_lee', '2023-07-01', '2024-06-30', 'high engagement', 1, 0, 6.5, 'increase to 90', 12000, 'cones, smart_shoes', 'video_review', 'active');

INSERT INTO Player_Skill_Development_Plans (player_id, season, skill_focus, target_rating, current_rating, training_modules, frequency_per_week, coach_assigned, start_date, end_date, progress_notes, midseason_review, final_review, overall_improvement, next_season_goal, budget_allocated, resources_provided, evaluation_method, status)
VALUES (2100, '2023/2024', 'defensive_positioning', 84, 77, 'tactical_sessions, match_analysis', 3, 'coach_novak', '2023-07-01', '2024-06-30', 'needs improvement', 0, 0, 5.0, 'reach 85', 10000, 'GPS_tracker', 'statistical_model', 'planned');

-- Research projects conducted by team sports science departments.
CREATE TABLE Team_Sports_Science_Research (
    study_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    study_title TEXT,
    lead_scientist TEXT,
    start_date TEXT,
    end_date TEXT,
    focus_area TEXT,
    methodology TEXT,
    sample_size INTEGER,
    data_collected TEXT,
    findings_summary TEXT,
    publication_status TEXT,
    journal_name TEXT,
    impact_factor REAL,
    funding_source TEXT,
    budget INTEGER,
    ethical_approval INTEGER,
    notes TEXT,
    related_match_id INTEGER,
    data_repository TEXT
);

INSERT INTO Team_Sports_Science_Research (team_id, study_title, lead_scientist, start_date, end_date, focus_area, methodology, sample_size, data_collected, findings_summary, publication_status, journal_name, impact_factor, funding_source, budget, ethical_approval, notes, related_match_id, data_repository)
VALUES (57, 'Effect of Altitude on Sprint Performance', 'dr_julia_kim', '2022-01-15', '2022-12-20', 'physiology', 'field_trial', 30, 'speed_gps, lactate', 'significant decrease at 1800m', 'published', 'Journal of Sports Science', 4.2, 'club_fund', 80000, 1, 'collaborated with altitude lab', 10234, '/repo/altitude_study');

INSERT INTO Team_Sports_Science_Research (team_id, study_title, lead_scientist, start_date, end_date, focus_area, methodology, sample_size, data_collected, findings_summary, publication_status, journal_name, impact_factor, funding_source, budget, ethical_approval, notes, related_match_id, data_repository)
VALUES (58, 'Nutrition Timing and Recovery', 'dr_alan_zhou', '2023-03-01', '2023-09-30', 'nutrition', 'randomized_control', 45, 'blood_markers, performance_metrics', 'protein intake within 30min improves recovery', 'in_review', 'International Journal of Nutrition', 3.8, 'sponsor_nutri', 60000, 1, 'tested with elite squad', 10356, '/repo/nutrition_timing');

INSERT INTO Team_Sports_Science_Research (team_id, study_title, lead_scientist, start_date, end_date, focus_area, methodology, sample_size, data_collected, findings_summary, publication_status, journal_name, impact_factor, funding_source, budget, ethical_approval, notes, related_match_id, data_repository)
VALUES (59, 'Cognitive Load During High-Pressure Penalties', 'dr_maria_garcia', '2023-05-10', '2023-11-15', 'psychology', 'lab_simulation', 25, 'eye_tracking, heart_rate', 'higher cortisol correlates with missed penalties', 'submitted', 'Sports Psychology Review', 2.9, 'club_science_grant', 40000, 1, 'potential for mental training programs', 10478, '/repo/cognitive_penalties');

-- Financial audit reports for leagues.
CREATE TABLE League_Financial_Audit_Reports (
    report_id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    fiscal_year TEXT,
    auditor_name TEXT,
    audit_start_date TEXT,
    audit_end_date TEXT,
    total_revenue INTEGER,
    total_expenses INTEGER,
    net_profit INTEGER,
    compliance_score INTEGER,
    findings TEXT,
    recommendations TEXT,
    report_path TEXT,
    approved INTEGER,
    approval_date TEXT,
    board_notes TEXT,
    external_review INTEGER,
    audit_fee INTEGER,
    currency TEXT,
    exchange_rate REAL
);

INSERT INTO League_Financial_Audit_Reports (league_id, fiscal_year, auditor_name, audit_start_date, audit_end_date, total_revenue, total_expenses, net_profit, compliance_score, findings, recommendations, report_path, approved, approval_date, board_notes, external_review, audit_fee, currency, exchange_rate)
VALUES (3, '2022/2023', 'global_audit_inc', '2023-02-01', '2023-04-15', 250000000, 190000000, 60000000, 92, 'minor timing issues', 'implement tighter expense tracking', '/reports/league3_2022_audit.pdf', 1, '2023-05-01', 'overall healthy', 1, 150000, 'USD', 1.0);

INSERT INTO League_Financial_Audit_Reports (league_id, fiscal_year, auditor_name, audit_start_date, audit_end_date, total_revenue, total_expenses, net_profit, compliance_score, findings, recommendations, report_path, approved, approval_date, board_notes, external_review, audit_fee, currency, exchange_rate)
VALUES (4, '2022/2023', 'audit_pro_firm', '2023-01-20', '2023-03-30', 180000000, 150000000, 30000000, 88, 'revenue recognition discrepancy', 'revise accounting policies', '/reports/league4_2022_audit.pdf', 1, '2023-04-20', 'needs attention on media rights', 1, 120000, 'EUR', 1.1);

INSERT INTO League_Financial_Audit_Reports (league_id, fiscal_year, auditor_name, audit_start_date, audit_end_date, total_revenue, total_expenses, net_profit, compliance_score, findings, recommendations, report_path, approved, approval_date, board_notes, external_review, audit_fee, currency, exchange_rate)
VALUES (5, '2022/2023', 'integrity_audits', '2023-03-05', '2023-05-10', 300000000, 260000000, 40000000, 95, 'no significant issues', 'maintain current controls', '/reports/league5_2022_audit.pdf', 1, '2023-06-01', 'strong financial position', 1, 180000, 'GBP', 1.25);

-- Schedules for international tournaments.
CREATE TABLE International_Tournament_Schedules (
    schedule_id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_name TEXT,
    host_country TEXT,
    start_date TEXT,
    end_date TEXT,
    venue_id INTEGER,
    match_day INTEGER,
    match_time TEXT,
    home_team_id INTEGER,
    away_team_id INTEGER,
    group_stage TEXT,
    knockout_stage TEXT,
    referee_id INTEGER,
    broadcast_network TEXT,
    ticket_price_category TEXT,
    ticket_price_amount INTEGER,
    expected_attendance INTEGER,
    covid_protocols TEXT,
    sponsor_partner TEXT,
    notes TEXT
);

INSERT INTO International_Tournament_Schedules (tournament_name, host_country, start_date, end_date, venue_id, match_day, match_time, home_team_id, away_team_id, group_stage, knockout_stage, referee_id, broadcast_network, ticket_price_category, ticket_price_amount, expected_attendance, covid_protocols, sponsor_partner, notes)
VALUES ('World Cup Qualifier', 'CountryA', '2023-09-10', '2023-09-10', 101, 1, '18:00', 57, 68, 'Group B', NULL, 3001, 'global_sports', 'standard', 75, 55000, 'mask_mandatory', 'energy_corp', 'opening match');

INSERT INTO International_Tournament_Schedules (tournament_name, host_country, start_date, end_date, venue_id, match_day, match_time, home_team_id, away_team_id, group_stage, knockout_stage, referee_id, broadcast_network, ticket_price_category, ticket_price_amount, expected_attendance, covid_protocols, sponsor_partner, notes)
VALUES ('Continental Cup', 'CountryB', '2023-10-05', '2023-10-05', 102, 3, '20:30', 72, 81, 'Group D', NULL, 3002, 'regional_tv', 'premium', 120, 42000, 'vaccination_required', 'auto_makers', 'quarterfinal');

INSERT INTO International_Tournament_Schedules (tournament_name, host_country, start_date, end_date, venue_id, match_day, match_time, home_team_id, away_team_id, group_stage, knockout_stage, referee_id, broadcast_network, ticket_price_category, ticket_price_amount, expected_attendance, covid_protocols, sponsor_partner, notes)
VALUES ('Youth World Championship', 'CountryC', '2023-11-20', '2023-11-20', 103, 5, '15:00', 90, 102, 'Group A', NULL, 3003, 'youth_sports_net', 'student', 30, 15000, 'none', 'sports_gear', 'semifinal');

-- Biometric readings captured during training sessions.
CREATE TABLE Training_Session_Biometric_Readings (
    reading_id INTEGER PRIMARY KEY AUTOINCREMENT,
    session_id INTEGER,
    player_id INTEGER,
    timestamp TEXT,
    heart_rate INTEGER,
    oxygen_saturation INTEGER,
    temperature_c REAL,
    respiration_rate INTEGER,
    steps INTEGER,
    distance_meters REAL,
    calories_burned REAL,
    lactate_level REAL,
    gsr_micro_siemens REAL,
    sleep_quality_score INTEGER,
    stress_level INTEGER,
    recovery_index REAL,
    equipment_used TEXT,
    notes TEXT,
    coach_comments TEXT,
    data_quality_flag INTEGER
);

INSERT INTO Training_Session_Biometric_Readings (session_id, player_id, timestamp, heart_rate, oxygen_saturation, temperature_c, respiration_rate, steps, distance_meters, calories_burned, lactate_level, gsr_micro_siemens, sleep_quality_score, stress_level, recovery_index, equipment_used, notes, coach_comments, data_quality_flag)
VALUES (1001, 2045, '2023-07-01 09:15', 152, 98, 36.5, 18, 3500, 3000.0, 450.0, 2.1, 0.85, 85, 12, 0.78, 'gps_tracker', 'steady pace', 'good endurance', 1);

INSERT INTO Training_Session_Biometric_Readings (session_id, player_id, timestamp, heart_rate, oxygen_saturation, temperature_c, respiration_rate, steps, distance_meters, calories_burned, lactate_level, gsr_micro_siemens, sleep_quality_score, stress_level, recovery_index, equipment_used, notes, coach_comments, data_quality_flag)
VALUES (1002, 2078, '2023-07-01 10:30', 168, 97, 36.8, 20, 4200, 3500.0, 520.0, 2.8, 0.92, 78, 15, 0.72, 'heart_rate_monitor', 'high intensity', 'needs more recovery', 1);

INSERT INTO Training_Session_Biometric_Readings (session_id, player_id, timestamp, heart_rate, oxygen_saturation, temperature_c, respiration_rate, steps, distance_meters, calories_burned, lactate_level, gsr_micro_siemens, sleep_quality_score, stress_level, recovery_index, equipment_used, notes, coach_comments, data_quality_flag)
VALUES (1003, 2100, '2023-07-01 11:45', 140, 99, 36.2, 16, 2800, 2500.0, 380.0, 1.9, 0.68, 90, 10, 0.81, 'smart_shoes', 'controlled drill', 'excellent form', 1);

-- Tracker for sponsor contract renewals.
CREATE TABLE Sponsor_Contract_Renewal_Tracker (
    tracker_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    contract_id INTEGER,
    renewal_deadline TEXT,
    status TEXT,
    last_contact_date TEXT,
    next_meeting_date TEXT,
    proposed_terms TEXT,
    financial_value INTEGER,
    duration_months INTEGER,
    legal_review_completed INTEGER,
    approval_status TEXT,
    responsible_manager TEXT,
    notes TEXT,
    renewal_probability INTEGER,
    previous_renewal_date TEXT,
    performance_metrics TEXT,
    engagement_score INTEGER,
    escalation_needed INTEGER,
    final_decision TEXT
);

INSERT INTO Sponsor_Contract_Renewal_Tracker (sponsor_id, contract_id, renewal_deadline, status, last_contact_date, next_meeting_date, proposed_terms, financial_value, duration_months, legal_review_completed, approval_status, responsible_manager, notes, renewal_probability, previous_renewal_date, performance_metrics, engagement_score, escalation_needed, final_decision)
VALUES (101, 5001, '2023-09-30', 'pending', '2023-07-15', '2023-08-20', 'increase_10_percent', 2000000, 24, 0, 'awaiting', 'emma_clark', 'awaiting board approval', 70, '2022-09-30', 'brand_exposure, sales_growth', 85, 0, NULL);

INSERT INTO Sponsor_Contract_Renewal_Tracker (sponsor_id, contract_id, renewal_deadline, status, last_contact_date, next_meeting_date, proposed_terms, financial_value, duration_months, legal_review_completed, approval_status, responsible_manager, notes, renewal_probability, previous_renewal_date, performance_metrics, engagement_score, escalation_needed, final_decision)
VALUES (102, 5002, '2023-12-15', 'in_negotiation', '2023-08-01', '2023-09-05', 'additional_stadium_signage', 1500000, 18, 1, 'approved', 'liam_harris', 'terms agreed verbally', 85, '2022-12-15', 'attendance_boost, media_mentions', 90, 0, NULL);

INSERT INTO Sponsor_Contract_Renewal_Tracker (sponsor_id, contract_id, renewal_deadline, status, last_contact_date, next_meeting_date, proposed_terms, financial_value, duration_months, legal_review_completed, approval_status, responsible_manager, notes, renewal_probability, previous_renewal_date, performance_metrics, engagement_score, escalation_needed, final_decision)
VALUES (103, 5003, '2024-03-01', 'renewed', '2023-06-20', NULL, 'extend_2_years', 2500000, 24, 1, 'finalized', 'sophia_miller', 'renewal signed', 100, '2022-03-01', 'long_term_brand_fit', 95, 0, 'renewed');