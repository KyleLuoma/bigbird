-- Table storing itineraries for fans traveling to away matches
CREATE TABLE Fan_Travel_Itineraries (
    itinerary_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    match_id INTEGER,
    departure_city TEXT,
    arrival_city TEXT,
    travel_mode TEXT,
    departure_date TEXT,
    arrival_date TEXT,
    accommodation_name TEXT,
    room_type TEXT,
    check_in_date TEXT,
    check_out_date TEXT,
    transport_company TEXT,
    ticket_package TEXT,
    estimated_cost INTEGER,
    actual_cost INTEGER,
    meals_included BOOLEAN,
    special_requests TEXT,
    loyalty_program_member BOOLEAN,
    travel_insurance BOOLEAN,
    distance_km INTEGER,
    carbon_footprint_kg REAL,
    notes TEXT
);

INSERT INTO Fan_Travel_Itineraries VALUES (1, 101, 2001, 'London', 'Madrid', 'Air', '2025-05-10', '2025-05-10', 'Hotel Iberia', 'Deluxe', '2025-05-10', '2025-05-12', 'AeroTravel', 'Premium', 850, 820, 1, 'Late check‑in', 1, 1, 1260, 0.45, 'No issues');
INSERT INTO Fan_Travel_Itineraries VALUES (2, 102, 2002, 'Berlin', 'Rome', 'Train', '2025-06-15', '2025-06-15', 'Roma Stay', 'Standard', '2025-06-15', '2025-06-17', 'EuroRail', 'Standard', 420, 430, 0, '', 0, 0, 1500, 0.30, 'Requested wheelchair access');
INSERT INTO Fan_Travel_Itineraries VALUES (3, 103, 2003, 'Paris', 'Lisbon', 'Bus', '2025-07-20', '2025-07-20', 'Lisbon Lodge', 'Suite', '2025-07-20', '2025-07-22', 'TransEuropa', 'Family', 610, 605, 1, 'Vegan meals', 1, 1, 1720, 0.40, 'Group of 4 fans');

-- Table logging cleanliness inspections of stadium facilities
CREATE TABLE Stadium_Cleanliness_Inspections (
    inspection_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    inspection_date TEXT,
    inspector_name TEXT,
    overall_score INTEGER,
    seating_area_score INTEGER,
    concourse_score INTEGER,
    restroom_score INTEGER,
    locker_room_score INTEGER,
    food_court_score INTEGER,
    waste_management_score INTEGER,
    pest_control_score INTEGER,
    lighting_score INTEGER,
    signage_score INTEGER,
    ventilation_score INTEGER,
    water_quality_score INTEGER,
    cleaning_staff_present BOOLEAN,
    issues_found TEXT,
    corrective_actions TEXT,
    follow_up_required BOOLEAN,
    follow_up_date TEXT,
    comments TEXT,
    inspection_type TEXT,
    rating_category TEXT
);

INSERT INTO Stadium_Cleanliness_Inspections VALUES (1, 10, '2025-03-01', 'Anna Klein', 88, 90, 85, 80, 92, 87, 89, 84, 88, 86, 90, 91, 1, 'Minor spill in concourse', 'Cleaned and sign posted', 0, NULL, 'Good overall', 'Routine', 'A');
INSERT INTO Stadium_Cleanliness_Inspections VALUES (2, 12, '2025-04-15', 'Luis Gomez', 75, 70, 78, 65, 80, 72, 68, 74, 73, 71, 69, 0, 'Restroom odors', 'Deep clean scheduled', 1, '2025-04-20', 'Needs improvement', 'Post‑event', 'B');
INSERT INTO Stadium_Cleanliness_Inspections VALUES (3, 15, '2025-05-22', 'Mia Chen', 93, 95, 92, 94, 96, 93, 95, 92, 94, 93, 96, 97, 1, 'All clear', 'N/A', 0, NULL, 'Excellent', 'Routine', 'A');

-- Table tracking academic performance of team staff and players in education programs
CREATE TABLE Team_Academic_Performance (
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    season TEXT,
    participant_type TEXT,
    participant_id INTEGER,
    institution_name TEXT,
    program_name TEXT,
    enrollment_date TEXT,
    graduation_date TEXT,
    credits_earned INTEGER,
    gpa REAL,
    academic_standing TEXT,
    scholarships_awarded INTEGER,
    extracurricular_activities TEXT,
    hours_per_week INTEGER,
    attendance_percentage REAL,
    study_group_participation BOOLEAN,
    mentor_assigned TEXT,
    language_of_instruction TEXT,
    online_course BOOLEAN,
    certification_obtained TEXT,
    notes TEXT,
    status TEXT,
    last_update TEXT
);

INSERT INTO Team_Academic_Performance VALUES (1, 5, '2024/25', 'Player', 3001, 'University of Madrid', 'Sports Management', '2024-09-01', NULL, 30, 3.5, 'Good', 1, 'Basketball Club', 15, 92.0, 1, 'Dr Silva', 'Spanish', 0, 'Certificate of Leadership', 'On track', 'Enrolled', '2025-01-10');
INSERT INTO Team_Academic_Performance VALUES (2, 5, '2024/25', 'Coach', 5001, 'Coaching Institute', 'Advanced Tactics', '2024-01-15', '2024-12-15', 45, 3.8, 'Excellent', 0, 'Strategy Seminar', 10, 98.0, 0, 'Prof Lee', 'English', 0, 'Tactics Mastery', 'Completed', 'Graduated', '2024-12-20');
INSERT INTO Team_Academic_Performance VALUES (3, 8, '2024/25', 'Staff', 7102, 'Tech Academy', 'Data Analytics', '2024-06-01', NULL, 20, 3.2, 'Probation', 0, 'Analytics Club', 12, 85.5, 1, 'Ms Patel', 'English', 1, 'None', 'Needs improvement', 'Enrolled', '2025-02-05');

-- Table summarising streaming partner statistics for league broadcasts
CREATE TABLE League_Streaming_Partner_Stats (
    stat_id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    partner_name TEXT,
    season TEXT,
    platform TEXT,
    region TEXT,
    total_viewers INTEGER,
    peak_concurrent_viewers INTEGER,
    average_watch_time_minutes REAL,
    subscription_fee_usd REAL,
    revenue_share_percentage REAL,
    ad_impressions INTEGER,
    ad_click_through_rate REAL,
    hdtv_broadcast BOOLEAN,
    vr_support BOOLEAN,
    mobile_app_supported BOOLEAN,
    simultaneous_streams_allowed INTEGER,
    latency_ms INTEGER,
    buffer_ratio REAL,
    content_rating TEXT,
    technical_issues_reported INTEGER,
    downtime_minutes INTEGER,
    notes TEXT,
    last_audit_date TEXT
);

INSERT INTO League_Streaming_Partner_Stats VALUES (1, 3, 'StreamPlus', '2024/25', 'Web', 'Europe', 2500000, 450000, 38.5, 9.99, 45.0, 1200000, 0.45, 1, 0, 1, 2, 120, 0.08, 'PG-13', 2, 15, 'Stable performance', '2025-01-30');
INSERT INTO League_Streaming_Partner_Stats VALUES (2, 3, 'LiveNow', '2024/25', 'Mobile', 'Asia', 1800000, 300000, 34.2, 0.00, 20.0, 800000, 0.39, 0, 0, 1, 1, 150, 0.12, 'PG', 5, 30, 'Minor buffering spikes', '2025-02-10');
INSERT INTO League_Streaming_Partner_Stats VALUES (3, 4, 'GlobalPlay', '2024/25', 'SmartTV', 'North America', 3200000, 600000, 42.0, 14.99, 50.0, 1500000, 0.52, 1, 1, 1, 3, 100, 0.05, 'PG-13', 1, 5, 'Excellent latency', '2025-02-01');

-- Table logging communications between match referees and officials
CREATE TABLE Match_Referee_Communication_Logs (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    referee_id INTEGER,
    assistant_referee_id INTEGER,
    communication_method TEXT,
    timestamp TEXT,
    message TEXT,
    channel_frequency TEXT,
    signal_strength_dbm INTEGER,
    encryption_used BOOLEAN,
    priority_level TEXT,
    response_required BOOLEAN,
    responded BOOLEAN,
    response_timestamp TEXT,
    notes TEXT,
    error_code INTEGER,
    duration_seconds INTEGER,
    location_zone TEXT,
    language TEXT,
    device_type TEXT,
    battery_level_percent INTEGER,
    firmware_version TEXT,
    follow_up_action TEXT,
    audit_timestamp TEXT
);

INSERT INTO Match_Referee_Communication_Logs VALUES (1, 2005, 9001, 9002, 'Radio', '2025-03-12 18:45:03', 'Offside decision review', '101.5MHz', -70, 1, 'High', 1, 0, NULL, 'None', 0, 5, 'Center', 'English', 'Handheld', 85, 'v2.3', 'Log for review', '2025-03-12 19:00:00');
INSERT INTO Match_Referee_Communication_Logs VALUES (2, 2006, 9003, 9004, 'Headset', '2025-04-20 20:12:47', 'Pause for injury', 'N/A', -1, 0, 'Medium', 0, 1, '2025-04-20 20:13:10', 'All clear', NULL, 0, 3, 'Penalty Box', 'Spanish', 'Earbud', 70, 'v2.1', 'None', '2025-04-20 20:15:00');
INSERT INTO Match_Referee_Communication_Logs VALUES (3, 2007, 9005, 9006, 'Radio', '2025-05-05 16:30:22', 'Time warning 5 mins', '102.3MHz', -68, 1, 'Low', 0, 1, '2025-05-05 16:30:30', 'Confirmed', NULL, 0, 2, 'Midfield', 'English', 'Handheld', 60, 'v2.4', 'Log', '2025-05-05 16:45:00');

-- Table measuring energy efficiency actions taken by clubs
CREATE TABLE Club_Energy_Efficiency_Measures (
    measure_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    implementation_date TEXT,
    measure_type TEXT,
    description TEXT,
    expected_savings_kwh INTEGER,
    actual_savings_kwh INTEGER,
    investment_usd INTEGER,
    payback_years REAL,
    certification_obtained TEXT,
    responsible_department TEXT,
    vendor_name TEXT,
    warranty_years INTEGER,
    maintenance_schedule TEXT,
    status TEXT,
    monitoring_device TEXT,
    peak_reduction_percent REAL,
    average_consumption_kw REAL,
    carbon_reduction_tons REAL,
    notes TEXT,
    audit_date TEXT,
    approved_by TEXT,
    project_code TEXT,
    priority_level TEXT,
    last_update TEXT
);

INSERT INTO Club_Energy_Efficiency_Measures VALUES (1, 7, '2024-09-01', 'LED Lighting', 'Replace stadium floodlights with LED', 500000, 470000, 200000, 1.5, 'LEED Gold', 'Facilities', 'BrightTech', 5, 'Annual', 'Completed', 'SmartMeter01', 35.0, 1200.5, 210.0, 'Successful', '2025-01-15', 'CEO', 'EEM-001', 'High', '2025-01-20');
INSERT INTO Club_Energy_Efficiency_Measures VALUES (2, 9, '2025-02-15', 'Solar Panels', 'Install roof‑top solar array', 800000, 0, 600000, 3.2, 'ISO 50001', 'Sustainability', 'SunPower', 10, 'Bi‑annual', 'In Progress', 'SolarMonitorA', 0.0, 0.0, 0.0, 'Construction started', '2025-02-20', 'COO', 'EEM-002', 'Medium', '2025-03-01');
INSERT INTO Club_Energy_Efficiency_Measures VALUES (3, 11, '2024-12-10', 'HVAC Upgrade', 'High‑efficiency HVAC system', 300000, 290000, 150000, 2.0, 'Energy Star', 'Operations', 'CoolAir Inc', 7, 'Quarterly', 'Completed', 'HVACSensorX', 22.5, 800.3, 95.0, 'Reduced heating load', '2025-01-05', 'Facilities Manager', 'EEM-003', 'Low', '2025-01-12');

-- Table detailing sponsors for youth tournaments
CREATE TABLE Youth_Tournament_Sponsor_Details (
    sponsor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER,
    sponsor_name TEXT,
    sponsorship_level TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    amount_usd INTEGER,
    branding_rights TEXT,
    activation_events INTEGER,
    media_impressions INTEGER,
    target_audience TEXT,
    exclusivity BOOLEAN,
    product_category TEXT,
    on_site_presence BOOLEAN,
    booth_area_sq_m INTEGER,
    logo_placement TEXT,
    social_media_shares INTEGER,
    email_campaigns INTEGER,
    discount_code TEXT,
    performance_bonus_usd INTEGER,
    notes TEXT,
    approved_by TEXT,
    contract_file TEXT,
    renewal_option BOOLEAN,
    last_modified TEXT
);

INSERT INTO Youth_Tournament_Sponsor_Details VALUES (1, 301, 'SportFit', 'Title', '2024-01-01', '2024-12-31', 500000, 'Stadium signage, broadcast', 12, 2000000, 'U12-U18 players and families', 1, 'Apparel', 1, 150, 'Main Banner', 8000, 5000, 'SF2024', 25000, 'Excellent ROI', 'Director', 'SF_Contract.pdf', 1, '2025-01-01');
INSERT INTO Youth_Tournament_Sponsor_Details VALUES (2, 302, 'TechGear', 'Gold', '2024-06-01', '2025-05-31', 300000, 'Digital ads, team kits', 8, 1500000, 'Teens, tech enthusiasts', 0, 'Electronics', 1, 80, 'Side Banner', 6000, 4000, 'TG2024', 15000, 'Positive feedback', 'Manager', 'TG_Contract.pdf', 1, '2025-02-15');
INSERT INTO Youth_Tournament_Sponsor_Details VALUES (3, 303, 'HealthPlus', 'Silver', '2024-03-15', '2025-03-14', 180000, 'Health stations, flyers', 5, 900000, 'Parents, coaches', 0, 'Healthcare', 0, 0, 'None', 3000, 2500, 'HP2024', 8000, 'Good community impact', 'Coordinator', 'HP_Contract.pdf', 0, '2025-03-01');

-- Table planning media production schedules for match broadcasts
CREATE TABLE Media_Production_Schedule (
    schedule_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    production_team TEXT,
    studio_location TEXT,
    start_time TEXT,
    end_time TEXT,
    camera_count INTEGER,
    drone_used BOOLEAN,
    graphics_package TEXT,
    replay_system TEXT,
    audio_mixer TEXT,
    director_name TEXT,
    producer_name TEXT,
    editor_name TEXT,
    senior_technician TEXT,
    live_stream_platform TEXT,
    bitrate_mbps INTEGER,
    storage_alloc_gb INTEGER,
    backup_plan TEXT,
    notes TEXT,
    status TEXT,
    last_updated TEXT,
    approval_date TEXT,
    approved_by TEXT,
    comments TEXT
);

INSERT INTO Media_Production_Schedule VALUES (1, 2100, 'Alpha Crew', 'Studio A', '2025-03-20 10:00', '2025-03-20 14:30', 12, 1, 'VizPro', 'EVS XT3', 'Yamaha', 'Carlos Mendes', 'Lara Patel', 'Ethan J.', 'Mona S.', 'StreamNow', 30, 500, 'Cloud fallback', 'All systems green', 'Confirmed', '2025-03-15', '2025-03-10', 'Chief Producer', 'Ready for broadcast');
INSERT INTO Media_Production_Schedule VALUES (2, 2101, 'Beta Squad', 'Studio B', '2025-04-05 09:30', '2025-04-05 13:45', 10, 0, 'GraphicX', 'Grass Valley', 'Behringer', 'Jin Park', 'Nina K.', 'Sam L.', 'Ravi T.', 'LiveBox', 25, 400, 'On‑site recorder', 'Minor delay expected', 'Tentative', '2025-03-28', '2025-03-25', 'Operations Manager', 'Awaiting final cut');
INSERT INTO Media_Production_Schedule VALUES (3, 2102, 'Gamma Team', 'Remote', '2025-05-12 12:00', '2025-05-12 16:15', 14, 1, 'PowerViz', 'EVS XT2', 'Mackie', 'Olga V.', 'Diego R.', 'Aisha M.', 'Leo G.', 'StreamFlex', 35, 600, 'Satellite uplink', 'All crew on standby', 'Scheduled', '2025-05-01', '2025-04-28', 'Head of Broadcast', 'Final check done');

-- Table capturing utilization statistics of training gear across clubs
CREATE TABLE Training_Gear_Utilization_Stats (
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    gear_type TEXT,
    gear_model TEXT,
    quantity INTEGER,
    allocated_to TEXT,
    usage_hours_monthly REAL,
    maintenance_cycles INTEGER,
    last_inspection_date TEXT,
    next_due_date TEXT,
    condition_rating INTEGER,
    average_wear_percent REAL,
    replacement_cost_usd INTEGER,
    supplier_name TEXT,
    warranty_years INTEGER,
    depreciation_rate_percent REAL,
    storage_location TEXT,
    usage_trend TEXT,
    notes TEXT,
    last_updated TEXT,
    audit_status TEXT,
    auditor_name TEXT,
    audit_date TEXT,
    comments TEXT,
    priority_level TEXT
);

INSERT INTO Training_Gear_Utilization_Stats VALUES (1, 4, 'Cones', 'SpeedCone X200', 150, 'U12 Squad', 120.5, 2, '2025-01-15', '2025-07-15', 9, 12.5, 3000, 'SportSupply Co', 3, 10.0, 'Warehouse A', 'Increasing', 'All cones flagged for repaint', '2025-02-01', 'Approved', 'Anna L.', '2025-02-02', 'No issues', 'Medium');
INSERT INTO Training_Gear_Utilization_Stats VALUES (2, 6, 'GPS Units', 'TrackMate Pro', 40, 'Senior Team', 340.0, 5, '2025-02-20', '2025-08-20', 8, 25.0, 12000, 'TechGear Ltd', 2, 15.0, 'Equipment Room 3', 'Stable', 'Battery replacement scheduled', '2025-03-05', 'Pending', 'Luis M.', '2025-03-06', 'Awaiting battery delivery', 'High');
INSERT INTO Training_Gear_Utilization_Stats VALUES (3, 9, 'Resistance Bands', 'FlexBand Elite', 200, 'Physio Dept', 85.0, 1, '2025-01-30', '2025-07-30', 10, 8.0, 5000, 'FitSupply', 4, 5.0, 'Cabinet B', 'Decreasing', 'Low usage this quarter', '2025-02-20', 'Reviewed', 'Mona K.', '2025-02-21', 'Consider reallocation', 'Low');

-- Table describing sponsor engagement activities and metrics
CREATE TABLE Sponsor_Engagement_Activities (
    activity_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    campaign_name TEXT,
    start_date TEXT,
    end_date TEXT,
    target_audience TEXT,
    channels_used TEXT,
    impressions INTEGER,
    clicks INTEGER,
    click_through_rate REAL,
    conversions INTEGER,
    conversion_rate REAL,
    cost_usd INTEGER,
    roi_percent REAL,
    activation_type TEXT,
    on_site_events INTEGER,
    virtual_events INTEGER,
    exclusive_rights BOOLEAN,
    co_branding BOOLEAN,
    merchandise_included BOOLEAN,
    feedback_score REAL,
    notes TEXT,
    manager_name TEXT,
    approval_status TEXT,
    approval_date TEXT,
    last_modified TEXT
);

INSERT INTO Sponsor_Engagement_Activities VALUES (1, 801, 'Summer Kickoff', '2025-06-01', '2025-08-31', 'Fans 18-35', 'Social, TV, In‑stadium', 2500000, 35000, 1.4, 5000, 0.20, 150000, 45.0, 'Live Activation', 12, 3, 1, 1, 1, 4.8, 'Strong brand lift', 'Emily R.', 'Approved', '2025-05-20', '2025-06-01');
INSERT INTO Sponsor_Engagement_Activities VALUES (2, 802, 'Winter Warmup', '2025-11-01', '2026-02-28', 'Families', 'Radio, Online, Stadium', 1800000, 21000, 1.17, 3000, 0.14, 90000, 30.0, 'Interactive Booth', 8, 1, 0, 0, 0, 4.2, 'Positive feedback', 'Mark T.', 'Pending', '2025-10-15', '2025-11-01');
INSERT INTO Sponsor_Engagement_Activities VALUES (3, 803, 'Champions Series', '2025-03-01', '2025-05-31', 'Professional Players', 'Email, Direct Mail, Events', 950000, 12500, 1.32, 2000, 0.21, 120000, 55.0, 'Product Demo', 5, 0, 1, 1, 1, 4.9, 'Excellent athlete engagement', 'Sofia L.', 'Approved', '2025-02-20', '2025-03-01');