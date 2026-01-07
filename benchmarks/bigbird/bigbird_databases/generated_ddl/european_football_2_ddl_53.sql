```sql
-- Referee_Evaluations: detailed post‑match evaluations of referees
CREATE TABLE Referee_Evaluations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    referee_id INTEGER,
    match_id INTEGER,
    evaluation_date TEXT,
    positioning_score INTEGER,
    decision_accuracy_score INTEGER,
    fouls_missed_score INTEGER,
    cards_given_score INTEGER,
    fitness_score INTEGER,
    communication_score INTEGER,
    discipline_score INTEGER,
    overall_score INTEGER,
    comments TEXT,
    evaluator_name TEXT,
    evaluator_role TEXT,
    match_stage TEXT,
    home_team_id INTEGER,
    away_team_id INTEGER,
    weather_condition TEXT,
    temperature INTEGER,
    humidity INTEGER
);

INSERT INTO Referee_Evaluations (referee_id, match_id, evaluation_date, positioning_score, decision_accuracy_score, fouls_missed_score, cards_given_score, fitness_score, communication_score, discipline_score, overall_score, comments, evaluator_name, evaluator_role, match_stage, home_team_id, away_team_id, weather_condition, temperature, humidity) VALUES
(101, 5001, '2023-04-12', 8, 9, 7, 8, 9, 8, 9, 85, 'good overall performance', 'John Doe', 'Senior Analyst', 'Quarterfinal', 12, 34, 'Clear', 22, 45),
(102, 5002, '2023-04-13', 7, 8, 6, 7, 8, 7, 8, 78, 'needs improvement on off‑side calls', 'Jane Smith', 'Match Analyst', 'Groupstage', 15, 27, 'Rain', 18, 80),
(103, 5003, '2023-04-14', 9, 9, 8, 9, 9, 9, 9, 92, 'excellent control throughout', 'Mike Lee', 'Chief Referee Officer', 'Semifinal', 22, 31, 'Clear', 24, 40);


-- Stadium_Seating_Maps: layout details for each stadium section
CREATE TABLE Stadium_Seating_Maps (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    map_version TEXT,
    section_code TEXT,
    row_start INTEGER,
    row_end INTEGER,
    seat_start INTEGER,
    seat_end INTEGER,
    seat_type TEXT,
    price_category TEXT,
    is_accessible INTEGER,
    has_vip INTEGER,
    capacity INTEGER,
    view_rating INTEGER,
    distance_to_field INTEGER,
    created_date TEXT,
    updated_date TEXT,
    map_file_name TEXT,
    map_scale REAL,
    notes TEXT
);

INSERT INTO Stadium_Seating_Maps (stadium_id, map_version, section_code, row_start, row_end, seat_start, seat_end, seat_type, price_category, is_accessible, has_vip, capacity, view_rating, distance_to_field, created_date, updated_date, map_file_name, map_scale, notes) VALUES
(1, 'v1', 'A', 1, 20, 1, 30, 'regular', 'standard', 1, 0, 600, 8, 25, '2022-01-15', '2022-06-01', 'stadiumA_A.png', 1.0, 'north wing'),
(1, 'v1', 'B', 1, 20, 31, 60, 'regular', 'premium', 0, 1, 600, 9, 22, '2022-01-15', '2022-06-01', 'stadiumA_B.png', 1.0, 'south wing'),
(2, 'v2', 'VIP', 1, 5, 1, 20, 'luxury', 'vip', 0, 1, 100, 10, 15, '2023-03-10', '2023-03-20', 'stadiumB_VIP.png', 0.8, 'central premium section');


-- Broadcast_Content_Metadata: technical metadata for broadcast segments
CREATE TABLE Broadcast_Content_Metadata (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcast_id INTEGER,
    content_type TEXT,
    duration_seconds INTEGER,
    language TEXT,
    resolution TEXT,
    bitrate_kbps INTEGER,
    codec TEXT,
    segment_start INTEGER,
    segment_end INTEGER,
    narrator TEXT,
    production_company TEXT,
    airing_date TEXT,
    air_time TEXT,
    audience_rating REAL,
    ad_breaks INTEGER,
    sponsor_tags TEXT,
    geo_restriction TEXT,
    is_live INTEGER,
    checksum TEXT
);

INSERT INTO Broadcast_Content_Metadata (broadcast_id, content_type, duration_seconds, language, resolution, bitrate_kbps, codec, segment_start, segment_end, narrator, production_company, airing_date, air_time, audience_rating, ad_breaks, sponsor_tags, geo_restriction, is_live, checksum) VALUES
(2001, 'highlights', 300, 'en', '1080p', 3500, 'h264', 0, 300, 'Alice Green', 'SportsMediaCo', '2023-09-01', '18:00', 4.7, 2, 'brandX,brandY', 'EU', 0, 'abc123def456'),
(2002, 'full_match', 5400, 'en', '720p', 2500, 'h264', 0, 5400, 'Bob White', 'LiveSportsNet', '2023-09-08', '20:00', 4.2, 4, 'brandZ', 'Global', 1, 'def789ghi012'),
(2003, 'interview', 900, 'es', '1080p', 3000, 'h265', 0, 900, 'Carlos Ruiz', 'InterviewStudio', '2023-09-15', '14:30', 4.9, 1, 'brandA', 'LATAM', 0, 'ghi345jkl678');


-- Club_Infrastructure_Assets: physical assets owned by clubs
CREATE TABLE Club_Infrastructure_Assets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    asset_type TEXT,
    asset_name TEXT,
    acquisition_date TEXT,
    purchase_price REAL,
    depreciation_years INTEGER,
    current_value REAL,
    location TEXT,
    maintenance_schedule TEXT,
    last_maintenance_date TEXT,
    warranty_expiry TEXT,
    serial_number TEXT,
    vendor_name TEXT,
    insurance_policy TEXT,
    asset_status TEXT,
    assigned_department TEXT,
    responsible_manager TEXT,
    notes TEXT,
    regulatory_compliance TEXT
);

INSERT INTO Club_Infrastructure_Assets (club_id, asset_type, asset_name, acquisition_date, purchase_price, depreciation_years, current_value, location, maintenance_schedule, last_maintenance_date, warranty_expiry, serial_number, vendor_name, insurance_policy, asset_status, assigned_department, responsible_manager, notes, regulatory_compliance) VALUES
(10, 'vehicle', 'Team Bus A', '2021-05-10', 85000.00, 10, 72000.00, 'Training Ground', 'Annual', '2023-04-01', '2024-05-10', 'VBUS12345', 'AutoTrans Ltd', 'Policy123', 'Active', 'Logistics', 'Laura King', 'GPS equipped', 'EU Safety Standard'),
(10, 'equipment', 'Gym Treadmill X', '2020-02-20', 12000.00, 5, 7200.00, 'Fitness Center', 'Semiannual', '2023-01-15', '2025-02-20', 'TMX9876', 'FitEquip Co', 'Policy456', 'Active', 'Sports Science', 'Mark Daniels', 'Regular calibration', 'ISO9001'),
(11, 'building', 'Youth Academy Hall', '2018-09-01', 2500000.00, 30, 1900000.00, 'Campus West', 'Quarterly', '2023-03-20', '2028-09-01', 'BUID56789', 'ConstructCo', 'Policy789', 'Operational', 'Academy', 'Sophie Patel', 'Energy efficient', 'LEED Gold');


-- Fan_Social_Influencer_Stats: metrics for fan influencers on social platforms
CREATE TABLE Fan_Social_Influencer_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    platform TEXT,
    handle TEXT,
    followers INTEGER,
    engagement_rate REAL,
    avg_likes INTEGER,
    avg_comments INTEGER,
    posts_per_month INTEGER,
    reach_per_post INTEGER,
    influence_score INTEGER,
    verified INTEGER,
    last_activity_date TEXT,
    sponsored_posts INTEGER,
    campaign_participation INTEGER,
    brand_affinity_score INTEGER,
    sentiment_score REAL,
    region TEXT,
    age_group TEXT,
    gender TEXT,
    notes TEXT
);

INSERT INTO Fan_Social_Influencer_Stats (fan_id, platform, handle, followers, engagement_rate, avg_likes, avg_comments, posts_per_month, reach_per_post, influence_score, verified, last_activity_date, sponsored_posts, campaign_participation, brand_affinity_score, sentiment_score, region, age_group, gender, notes) VALUES
(500, 'Instagram', 'soccerfan01', 25000, 4.2, 1050, 45, 12, 18000, 85, 1, '2023-08-30', 3, 2, 78, 0.92, 'Europe', '18-24', 'F', 'active community member'),
(501, 'TikTok', 'goalkeeperGuru', 18000, 5.1, 920, 60, 15, 15000, 80, 0, '2023-08-28', 2, 3, 70, 0.88, 'NorthAmerica', '25-34', 'M', 'focuses on training clips'),
(502, 'Twitter', 'MidfieldMaster', 32000, 3.8, 1200, 80, 8, 21000, 90, 1, '2023-08-27', 5, 4, 85, 0.95, 'Asia', '18-24', 'M', 'hosts weekly polls');


-- Match_Commentary_Emotion_Analysis: emotion tagging of commentary segments
CREATE TABLE Match_Commentary_Emotion_Analysis (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    commentator_id INTEGER,
    timestamp TEXT,
    segment_type TEXT,
    emotion TEXT,
    intensity_score REAL,
    words_spoken INTEGER,
    sentiment_score REAL,
    excitement_level INTEGER,
    tension_level INTEGER,
    audience_reaction TEXT,
    highlight_flag INTEGER,
    related_event_id INTEGER,
    language TEXT,
    transcript TEXT,
    audio_file_name TEXT,
    analysis_version TEXT,
    notes TEXT,
    created_at TEXT
);

INSERT INTO Match_Commentary_Emotion_Analysis (match_id, commentator_id, timestamp, segment_type, emotion, intensity_score, words_spoken, sentiment_score, excitement_level, tension_level, audience_reaction, highlight_flag, related_event_id, language, transcript, audio_file_name, analysis_version, notes, created_at) VALUES
(6001, 21, '00:12:45', 'play_by_play', 'excitement', 0.87, 45, 0.92, 9, 3, 'cheer', 1, 3001, 'en', 'what a brilliant strike from the edge of the box!', 'cmt6001_1245.wav', 'v1.0', 'goal moment', '2023-09-01 10:00:00'),
(6001, 21, '00:48:10', 'analysis', 'tension', 0.65, 38, 0.78, 5, 7, 'groan', 0, 3020, 'en', 'the defense looks vulnerable after that injury.', 'cmt6001_4810.wav', 'v1.0', 'mid‑game analysis', '2023-09-01 10:00:00'),
(6002, 22, '01:05:30', 'play_by_play', 'joy', 0.93, 52, 0.96, 10, 2, 'cheer', 1, 3105, 'es', '¡gol! una jugada espectacular desde la banda!', 'cmt6002_0530.wav', 'v1.0', 'decisive goal', '2023-09-02 11:15:00');


-- Training_Session_Recovery_Metrics: recovery data collected after training sessions
CREATE TABLE Training_Session_Recovery_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    session_id INTEGER,
    player_id INTEGER,
    date TEXT,
    duration_minutes INTEGER,
    heart_rate_avg INTEGER,
    heart_rate_max INTEGER,
    lactate_level REAL,
    perceived_exertion INTEGER,
    sleep_quality_score INTEGER,
    muscle_soreness_score INTEGER,
    hydration_volume_ml INTEGER,
    nutrition_intake_cal INTEGER,
    recovery_mode TEXT,
    compression_garment_used INTEGER,
    ice_bath_minutes INTEGER,
    active_recovery_minutes INTEGER,
    stretch_score INTEGER,
    notes TEXT,
    therapist_id INTEGER
);

INSERT INTO Training_Session_Recovery_Metrics (session_id, player_id, date, duration_minutes, heart_rate_avg, heart_rate_max, lactate_level, perceived_exertion, sleep_quality_score, muscle_soreness_score, hydration_volume_ml, nutrition_intake_cal, recovery_mode, compression_garment_used, ice_bath_minutes, active_recovery_minutes, stretch_score, notes, therapist_id) VALUES
(801, 1001, '2023-08-20', 90, 78, 154, 2.4, 7, 8, 5, 2500, 3000, 'active', 1, 10, 20, 9, 'felt strong during session', 301),
(801, 1002, '2023-08-20', 90, 82, 160, 2.7, 8, 7, 6, 2600, 3100, 'passive', 1, 12, 15, 8, 'minor hamstring tightness', 301),
(802, 1003, '2023-08-22', 75, 76, 148, 2.1, 6, 9, 3, 2400, 2900, 'active', 0, 8, 25, 10, 'excellent recovery', 302);


-- Player_Career_Milestones: significant career events for players
CREATE TABLE Player_Career_Milestones (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    milestone_date TEXT,
    milestone_type TEXT,
    description TEXT,
    match_id INTEGER,
    tournament_name TEXT,
    opponent_team_id INTEGER,
    minutes_played INTEGER,
    goals_scored INTEGER,
    assists INTEGER,
    clean_sheet INTEGER,
    cards_received INTEGER,
    rating INTEGER,
    contract_year INTEGER,
    salary_at_time REAL,
    agent_name TEXT,
    is_record_breaking INTEGER,
    notes TEXT,
    created_at TEXT
);

INSERT INTO Player_Career_Milestones (player_id, milestone_date, milestone_type, description, match_id, tournament_name, opponent_team_id, minutes_played, goals_scored, assists, clean_sheet, cards_received, rating, contract_year, salary_at_time, agent_name, is_record_breaking, notes, created_at) VALUES
(2001, '2023-03-12', 'first_goal', 'scored first senior league goal', 4501, 'Premier League', 15, 90, 1, 0, 0, 0, 8, 2023, 500000.00, 'AgentCo', 0, 'celebrated with teammates', '2023-03-12 09:30:00'),
(2002, '2023-05-27', 'hat_trick', 'recorded first hat‑trick', 4523, 'Champions Cup', 22, 90, 3, 1, 0, 1, 9, 2024, 750000.00, 'TopRep', 1, 'first hat‑trick in club history', '2023-05-27 18:45:00'),
(2003, '2023-07-01', 'captain_debut', 'first match as captain', 4530, 'League Cup', 9, 90, 0, 0, 0, 0, 7, 2025, 600000.00, 'PrimeAgents', 0, 'appointed after veteran retirement', '2023-07-01 15:00:00');


-- Team_Academic_Records: educational information for players enrolled in studies
CREATE TABLE Team_Academic_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    season TEXT,
    player_id INTEGER,
    player_name TEXT,
    institution_name TEXT,
    degree_program TEXT,
    enrollment_status TEXT,
    gpa REAL,
    credits_completed INTEGER,
    scholarship_amount REAL,
    academic_award TEXT,
    graduation_year TEXT,
    major TEXT,
    minor TEXT,
    academic_standing TEXT,
    advisor_name TEXT,
    notes TEXT,
    last_update TEXT,
    is_full_time INTEGER,
    eligibility_status TEXT
);

INSERT INTO Team_Academic_Records (team_id, season, player_id, player_name, institution_name, degree_program, enrollment_status, gpa, credits_completed, scholarship_amount, academic_award, graduation_year, major, minor, academic_standing, advisor_name, notes, last_update, is_full_time, eligibility_status) VALUES
(12, '2023/24', 3001, 'Liam Carter', 'State University', 'Bachelor', 'Enrolled', 3.6, 90, 5000.00, 'Dean List', '2025', 'Sports Science', 'Psychology', 'Good', 'Dr Allen', 'maintains training‑study balance', '2023-08-01', 1, 'Eligible'),
(12, '2023/24', 3002, 'Noah Bennett', 'City College', 'Associate', 'Part‑time', 3.2, 45, 2500.00, NULL, '2024', 'Business Administration', NULL, 'Satisfactory', 'Ms Brooks', 'requires tutoring support', '2023-08-01', 0, 'Eligible'),
(13, '2023/24', 3003, 'Ethan Hill', 'National Institute', 'Master', 'Enrolled', 3.9, 30, 8000.00, 'Scholarship Award', '2024', 'Data Analytics', 'Statistics', 'Excellent', 'Prof Carter', 'research assistant in lab', '2023-08-01', 1, 'Eligible');


-- League_Season_Review_Summaries: aggregated season statistics for leagues
CREATE TABLE League_Season_Review_Summaries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    total_matches INTEGER,
    total_goals INTEGER,
    average_attendance INTEGER,
    highest_attendance INTEGER,
    lowest_attendance INTEGER,
    total_tv_viewers REAL,
    average_tv_rating REAL,
    most_goals_team_id INTEGER,
    least_goals_team_id INTEGER,
    champion_team_id INTEGER,
    runnerup_team_id INTEGER,
    best_goalkeeper_team_id INTEGER,
    fair_play_team_id INTEGER,
    top_scorer_player_id INTEGER,
    top_assist_player_id INTEGER,
    total_yellow_cards INTEGER,
    total_red_cards INTEGER,
    summary_text TEXT
);

INSERT INTO League_Season_Review_Summaries (league_id, season, total_matches, total_goals, average_attendance, highest_attendance, lowest_attendance, total_tv_viewers, average_tv_rating, most_goals_team_id, least_goals_team_id, champion_team_id, runnerup_team_id, best_goalkeeper_team_id, fair_play_team_id, top_scorer_player_id, top_assist_player_id, total_yellow_cards, total_red_cards, summary_text) VALUES
(1, '2022/23', 380, 1024, 21500, 75000, 5000, 320.5, 7.8, 45, 78, 45, 33, 12, 24, 1011, 1022, 620, 34, 'record‑breaking offensive season with high attendance'),
(1, '2023/24', 380, 1105, 22000, 77000, 5200, 340.2, 8.1, 46, 79, 46, 35, 11, 25, 1033, 1044, 640, 28, 'increased goal output and tighter defensive records'),
(2, '2023/24', 306, 845, 18000, 60000, 3000, 210.0, 6.5, 88, 91, 88, 90, 55, 67, 2030, 2041, 430, 20, 'competitive league with balanced scoring across teams');
```