-- Player skill assessment results – detailed performance metrics collected after each evaluation
CREATE TABLE Player_Skill_Assessment_Results (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    assessment_date TEXT,
    technical_score INTEGER,
    tactical_score INTEGER,
    physical_score INTEGER,
    mental_score INTEGER,
    aerial_ability INTEGER,
    passing_accuracy INTEGER,
    shooting_accuracy INTEGER,
    dribbling_skill INTEGER,
    speed_score INTEGER,
    stamina_score INTEGER,
    injury_risk INTEGER,
    coach_comments TEXT,
    overall_assessment INTEGER,
    assessment_version TEXT,
    video_review_link TEXT,
    gps_distance_covered INTEGER,
    avg_heart_rate INTEGER,
    max_heart_rate INTEGER,
    training_load INTEGER,
    FOREIGN KEY(player_api_id) REFERENCES Player(player_api_id)
);
INSERT INTO Player_Skill_Assessment_Results VALUES
(1, 10234, '2025-03-10', 78, 82, 85, 80, 70, 84, 76, 88, 90, 87, 30, 'Good_progress', 84, 'v1', 'http://example.com/video1', 10500, 145, 190, 78);
INSERT INTO Player_Skill_Assessment_Results VALUES
(2, 10235, '2025-04-12', 81, 79, 88, 85, 75, 86, 80, 90, 92, 89, 25, 'Excellent_agility', 86, 'v1', 'http://example.com/video2', 11200, 148, 195, 82);
INSERT INTO Player_Skill_Assessment_Results VALUES
(3, 10236, '2025-05-08', 74, 77, 80, 73, 68, 78, 70, 82, 85, 80, 40, 'Needs_work_on_vision', 76, 'v2', 'http://example.com/video3', 9800, 140, 185, 70);

-- Sports psychology sessions for teams – mental health and cohesion tracking
CREATE TABLE Team_Sports_Psychology_Sessions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    session_date TEXT,
    psychologist_name TEXT,
    session_type TEXT,
    focus_area TEXT,
    duration_minutes INTEGER,
    athletes_attended INTEGER,
    group_cohesion_score INTEGER,
    stress_level_avg INTEGER,
    confidence_score_avg INTEGER,
    mental_fatigue_score INTEGER,
    pre_session_mood TEXT,
    post_session_mood TEXT,
    notes TEXT,
    session_location TEXT,
    followup_actions TEXT,
    evaluation_score INTEGER,
    session_id_code TEXT,
    season TEXT,
    FOREIGN KEY(team_api_id) REFERENCES Team(team_api_id)
);
INSERT INTO Team_Sports_Psychology_Sessions VALUES
(1, 201, '2025-02-15', 'Dr_Smith', 'Group', 'Team_Building', 90, 22, 78, 45, 80, 30, 'Calm', 'Motivated', 'Positive_feedback', 'Training_Center', 'Weekly_checkins', 85, 'PSY2025A', '2024/25');
INSERT INTO Team_Sports_Psychology_Sessions VALUES
(2, 202, '2025-03-20', 'Dr_Jones', 'Individual', 'Anxiety_Management', 60, 1, NULL, 55, NULL, 40, 'Anxious', 'Relaxed', 'Breathing_techniques', 'Club_Hospital', 'Followup_next_month', 78, 'PSY2025B', '2024/25');
INSERT INTO Team_Sports_Psychology_Sessions VALUES
(3, 203, '2025-04-05', 'Dr_Lee', 'Group', 'Focus_Enhancement', 75, 19, 82, 38, 85, 25, 'Distracted', 'Focused', 'Mindfulness_exercises', 'Academy_Field', 'Daily_meditation', 80, 'PSY2025C', '2024/25');

-- Fan travel preferences – data on how supporters travel to matches
CREATE TABLE Fan_Travel_Preferences (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    match_id INTEGER,
    preferred_transport_mode TEXT,
    travel_distance_km INTEGER,
    travel_time_minutes INTEGER,
    accommodation_type TEXT,
    accommodation_rating INTEGER,
    budget_usd INTEGER,
    loyalty_program_member INTEGER,
    special_requests TEXT,
    travel_agency TEXT,
    ticket_package_type TEXT,
    travel_start_date TEXT,
    travel_end_date TEXT,
    group_size INTEGER,
    travel_insurance INTEGER,
    carbon_offset INTEGER,
    feedback_score INTEGER,
    notes TEXT,
    created_at TEXT
);
INSERT INTO Fan_Travel_Preferences VALUES
(1, 5001, 10001, 'Car', 120, 150, 'Hotel', 4, 300, 1, 'Near_stadium', 'Premium', '2025-05-01', '2025-05-03', 4, 1, 0, 85, 'No_issues', '2025-04-10');
INSERT INTO Fan_Travel_Preferences VALUES
(2, 5002, 10002, 'Train', 250, 210, 'Hostel', 3, 200, 0, 'Vegetarian_meals', 'Standard', '2025-06-10', '2025-06-12', 2, 0, 1, 78, 'Requested_extra_blankets', '2025-05-20');
INSERT INTO Fan_Travel_Preferences VALUES
(3, 5003, 10003, 'Plane', 800, 90, 'Airbnb', 5, 800, 1, 'Wheelchair_access', 'VIP', '2025-07-15', '2025-07-18', 1, 1, 1, 92, 'Excellent_service', '2025-07-01');

-- Stadium sound system logs – maintenance and configuration records
CREATE TABLE Stadium_Sound_System_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    log_date TEXT,
    speaker_brand TEXT,
    speaker_model TEXT,
    total_power_watts INTEGER,
    channels_active INTEGER,
    calibration_status TEXT,
    frequency_response_hz TEXT,
    comment TEXT,
    technician_name TEXT,
    maintenance_cycle_days INTEGER,
    firmware_version TEXT,
    last_service_date TEXT,
    issues_reported INTEGER,
    avg_decibel_level INTEGER,
    peak_decibel_level INTEGER,
    zone_1_volume INTEGER,
    zone_2_volume INTEGER,
    zone_3_volume INTEGER,
    zone_4_volume INTEGER,
    FOREIGN KEY(stadium_id) REFERENCES Stadium_Facilities(stadium_id)
);
INSERT INTO Stadium_Sound_System_Logs VALUES
(1, 1, '2025-01-12', 'Bose', 'X100', 5000, 8, 'Calibrated', '50-20000', 'All_good', 'Mike_Tech', 180, 'v2.1', '2024-12-01', 0, 95, 102, 90, 85, 80);
INSERT INTO Stadium_Sound_System_Logs VALUES
(2, 2, '2025-02-18', 'JBL', 'ProSeries', 6500, 10, 'Pending', '45-18000', 'Minor_latency', 'Sara_Engineer', 365, 'v3.0', '2024-11-15', 1, 97, 105, 88, 82, 78);
INSERT INTO Stadium_Sound_System_Logs VALUES
(3, 3, '2025-03-05', 'Yamaha', 'DS200', 4800, 8, 'Calibrated', '55-19000', 'No_issues', 'Tom_Audio', 270, 'v1.9', '2025-01-20', 0, 93, 99, 87, 80, 75);

-- Player contract negotiations – historical offers and terms
CREATE TABLE Player_Contract_Negotiations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    club_id INTEGER,
    negotiation_start_date TEXT,
    negotiation_end_date TEXT,
    agent_name TEXT,
    base_salary_usd INTEGER,
    bonus_structure TEXT,
    contract_length_years INTEGER,
    release_clause_usd INTEGER,
    performance_bonus_usd INTEGER,
    signing_bonus_usd INTEGER,
    image_rights_fee_usd INTEGER,
    medical_clauses TEXT,
    termination_clause TEXT,
    guarantor_name TEXT,
    negotiation_status TEXT,
    final_agreed_date TEXT,
    notes TEXT,
    created_by TEXT,
    FOREIGN KEY(player_api_id) REFERENCES Player(player_api_id)
);
INSERT INTO Player_Contract_Negotiations VALUES
(1, 10234, 10, '2025-01-01', '2025-02-15', 'Agent_X', 5000000, 'Annual_10pct', 4, 25000000, 500000, 200000, 300000, 'Full_medical_coverage', 'Club_can_terminate_for_misconduct', 'Bank_Firm', 'Completed', '2025-02-20', 'Deal_closed_successfully', 'Legal_Team');
INSERT INTO Player_Contract_Negotiations VALUES
(2, 10235, 12, '2025-03-01', '2025-04-10', 'Agent_Y', 4200000, 'Quarterly_5pct', 3, 18000000, 400000, 150000, 250000, 'Standard_medical', 'Club_can_terminate_on_notice', 'Finance_Corp', 'Pending', NULL, 'Awaiting_final_signatures', 'Legal_Team');
INSERT INTO Player_Contract_Negotiations VALUES
(3, 10236, 14, '2025-05-05', '2025-06-30', 'Agent_Z', 6000000, 'Semi_annual_8pct', 5, 30000000, 600000, 250000, 350000, 'Extended_medical', 'Termination_clauselimited_to_1_year', 'Insurance_Ltd', 'Negotiating', NULL, 'Negotiations_in_progress', 'Legal_Team');

-- League fan merchandise sales – aggregated stats per season and category
CREATE TABLE League_Fan_Merch_Sales (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    merch_category TEXT,
    item_sku TEXT,
    item_name TEXT,
    units_sold INTEGER,
    revenue_usd INTEGER,
    average_price_usd INTEGER,
    region TEXT,
    online_sales_percent INTEGER,
    retail_sales_percent INTEGER,
    discount_percent INTEGER,
    promotion_code TEXT,
    stock_remaining INTEGER,
    supplier_name TEXT,
    restock_date TEXT,
    online_platform TEXT,
    fan_club_discount INTEGER,
    ecommerce_site TEXT,
    created_at TEXT,
    FOREIGN KEY(league_id) REFERENCES League(id)
);
INSERT INTO League_Fan_Merch_Sales VALUES
(1, 1, '2024/25', 'Apparel', 'SKU001', 'Team_Jersey', 15000, 2250000, 150, 'Europe', 70, 30, 10, 'SUMMER24', 2000, 'SupplierA', '2025-02-01', 'ShopOnline', 5, 'WebStoreA', '2025-04-01');
INSERT INTO League_Fan_Merch_Sales VALUES
(2, 2, '2024/25', 'Accessories', 'SKU015', 'Scarf', 8000, 640000, 80, 'Asia', 60, 40, 5, 'WINTER24', 1200, 'SupplierB', '2025-03-15', 'ShopNow', 3, 'WebStoreB', '2025-04-05');
INSERT INTO League_Fan_Merch_Sales VALUES
(3, 3, '2024/25', 'Collectibles', 'SKU030', 'Limited_Edition_Pin', 3000, 450000, 150, 'NorthAmerica', 80, 20, 0, 'NONE', 500, 'SupplierC', '2025-04-10', 'FanShop', 0, 'WebStoreC', '2025-04-10');

-- Match review analytics – expert evaluations and metrics per match
CREATE TABLE Match_Review_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    reviewer_name TEXT,
    review_date TEXT,
    overall_rating INTEGER,
    tactical_analysis_score INTEGER,
    technical_analysis_score INTEGER,
    player_performance_score INTEGER,
    crowd_engagement_score INTEGER,
    replay_quality_score INTEGER,
    highlight_clips_url TEXT,
    key_events_summary TEXT,
    suggestions TEXT,
    video_quality_score INTEGER,
    audio_quality_score INTEGER,
    data_latency_ms INTEGER,
    analytics_version TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    FOREIGN KEY(match_id) REFERENCES Match(id)
);
INSERT INTO Match_Review_Analytics VALUES
(1, 10001, 'Analyst_A', '2025-05-01', 85, 80, 78, 82, 90, 88, 'http://videos.com/clip1', 'Early_goal_late_comeback', 'Improve_midfield_transition', 92, 90, 120, 'v1.2', 'Positive_overall', '2025-05-02', '2025-05-02');
INSERT INTO Match_Review_Analytics VALUES
(2, 10002, 'Analyst_B', '2025-05-03', 78, 74, 70, 75, 80, 82, 'http://videos.com/clip2', 'Defensive_lapses', 'Focus_on_set_pieces', 85, 83, 150, 'v1.2', 'Needs_defensive_work', '2025-05-04', '2025-05-04');
INSERT INTO Match_Review_Analytics VALUES
(3, 10003, 'Analyst_C', '2025-05-05', 90, 88, 92, 89, 95, 94, 'http://videos.com/clip3', 'High_press_success', 'Maintain_intensity', 96, 95, 110, 'v1.2', 'Excellent_tactical_execution', '2025-05-06', '2025-05-06');

-- Club emergency response teams – internal safety units and readiness
CREATE TABLE Club_Emergency_Response_Teams (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    team_name TEXT,
    leader_name TEXT,
    contact_number TEXT,
    training_completed_date TEXT,
    certification_level TEXT,
    last_drill_date TEXT,
    drill_success_rate INTEGER,
    equipment_inventory TEXT,
    vehicle_assigned TEXT,
    capacity_members INTEGER,
    activation_protocol TEXT,
    response_time_minutes INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    status TEXT,
    FOREIGN KEY(club_id) REFERENCES Club_Governance(id)
);
INSERT INTO Club_Emergency_Response_Teams VALUES
(1, 10, 'Rapid_Rescue', 'John_Smith', '5551234567', '2024-12-01', 'Level_3', '2025-01-15', 95, 'FirstAidKits,FireExtinguishers', 'Van_12', 8, 'Immediate', 5, 'All_members_certified', '2025-02-01', '2025-02-01', 'Active');
INSERT INTO Club_Emergency_Response_Teams VALUES
(2, 12, 'Safety_Squad', 'Emily_Jones', '5559876543', '2024-11-20', 'Level_2', '2025-02-20', 88, 'Defibrillators,MedicalSupplies', 'SUV_4', 6, 'Notify_Chief', 8, 'Quarterly_training', '2025-03-01', '2025-03-01', 'Active');
INSERT INTO Club_Emergency_Response_Teams VALUES
(3, 14, 'Crowd_Control', 'Michael_Brown', '5555555555', '2025-01-10', 'Level_1', '2025-03-05', 92, 'Barriers,RiotGear', 'Truck_7', 10, 'Stadium_Alert', 3, 'Rehearsed_procedures', '2025-04-01', '2025-04-01', 'Active');

-- Training supplement distribution – tracking nutrition items given to athletes
CREATE TABLE Training_Supplement_Distribution (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    supplement_name TEXT,
    batch_number TEXT,
    manufacture_date TEXT,
    expiry_date TEXT,
    quantity_distributed INTEGER,
    athlete_ids TEXT,
    distribution_date TEXT,
    compliance_verified INTEGER,
    supplier_name TEXT,
    cost_per_unit_usd INTEGER,
    total_cost_usd INTEGER,
    storage_location TEXT,
    temperature_control INTEGER,
    notes TEXT,
    created_by TEXT,
    created_at TEXT,
    updated_at TEXT,
    FOREIGN KEY(team_api_id) REFERENCES Team(team_api_id)
);
INSERT INTO Training_Supplement_Distribution VALUES
(1, 201, 'Protein_Shake', 'BCH001', '2024-06-01', '2025-06-01', 120, '10234,10235,10236', '2025-04-10', 1, 'SuppCo', 5, 600, 'Warehouse_A', 1, 'All_athletes_received', 'Nutrition_Manager', '2025-04-11', '2025-04-11');
INSERT INTO Training_Supplement_Distribution VALUES
(2, 202, 'Creatine_Monohydrate', 'CR2025', '2024-09-15', '2025-09-15', 80, '10237,10238,10239', '2025-04-12', 1, 'SuppCo', 7, 560, 'Warehouse_B', 1, 'Stored_cool', 'Nutrition_Manager', '2025-04-13', '2025-04-13');
INSERT INTO Training_Supplement_Distribution VALUES
(3, 203, 'Vitamin_D3', 'VD300', '2024-11-01', '2026-11-01', 200, '10240,10241,10242,10243', '2025-04-15', 1, 'HealthSupplies', 2, 400, 'Fridge_1', 1, 'Checked_expiry', 'Nutrition_Manager', '2025-04-16', '2025-04-16');

-- Stadium waste management – daily environmental handling records
CREATE TABLE Stadium_Waste_Management (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    waste_date TEXT,
    waste_type TEXT,
    volume_cubic_meters REAL,
    weight_kg REAL,
    collection_method TEXT,
    contractor_name TEXT,
    recycling_percent INTEGER,
    landfill_percent INTEGER,
    disposal_cost_usd INTEGER,
    notes TEXT,
    compliance_status TEXT,
    audit_score INTEGER,
    temperature_c REAL,
    humidity_percent INTEGER,
    energy_used_kwh REAL,
    staff_involved INTEGER,
    shift TEXT,
    created_at TEXT,
    updated_at TEXT,
    FOREIGN KEY(stadium_id) REFERENCES Stadium_Facilities(stadium_id)
);
INSERT INTO Stadium_Waste_Management VALUES
(1, 1, '2025-04-01', 'Organic', 5.2, 800, 'Truck', 'EcoClean', 70, 30, 1500, 'No_issues', 'Compliant', 95, 22.5, 60, 4, 'Day', '2025-04-02', '2025-04-02');
INSERT INTO Stadium_Waste_Management VALUES
(2, 2, '2025-04-02', 'Plastic', 2.8, 500, 'Bin', 'GreenWaste', 80, 20, 1200, 'Minor_spills', 'Compliant', 88, 21.0, 55, 3, 'Night', '2025-04-03', '2025-04-03');
INSERT INTO Stadium_Waste_Management VALUES
(3, 3, '2025-04-03', 'Metal', 1.5, 300, 'Container', 'MetalRecycle', 85, 15, 900, 'All_good', 'Compliant', 92, 20.5, 50, 2, 'Day', '2025-04-04', '2025-04-04');