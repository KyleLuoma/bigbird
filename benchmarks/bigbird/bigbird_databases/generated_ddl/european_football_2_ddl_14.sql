-- Broadcast equipment maintenance records
CREATE TABLE Broadcast_Equipment_Maintenance (
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    equipment_id INTEGER,
    equipment_type TEXT,
    serial_number TEXT,
    maintenance_date TEXT,
    technician_id INTEGER,
    technician_name TEXT,
    maintenance_type TEXT,
    duration_minutes INTEGER,
    parts_replaced INTEGER,
    cost_usd REAL,
    status TEXT,
    notes TEXT,
    warranty_expiration TEXT,
    last_calibration_date TEXT,
    calibration_due TEXT,
    firmware_version TEXT,
    firmware_update_required TEXT,
    power_consumption_watts INTEGER,
    location TEXT,
    priority_level TEXT,
    compliance_check TEXT,
    audit_timestamp TEXT
);

INSERT INTO Broadcast_Equipment_Maintenance VALUES (1, 101, Camera, CAMX1001, 2023-08-01, 501, JohnDoe, Preventive, 120, 0, 250.00, Completed, None, 2024-08-01, 2023-12-01, v2.3, No, 150, RoofNorth, High, Passed, 2023-08-01T09:00:00);
INSERT INTO Broadcast_Equipment_Maintenance VALUES (2, 102, Microphone, MIC2002, 2023-08-05, 502, JaneSmith, corrective, 45, 1, 80.00, Completed, Replaced capsule, 2025-08-05, 2024-02-01, v1.1, Yes, 20, RoofSouth, Medium, Passed, 2023-08-05T14:30:00);
INSERT INTO Broadcast_Equipment_Maintenance VALUES (3, 103, Drone, DRN3003, 2023-08-10, 503, MikeLee, Preventive, 90, 0, 150.00, Completed, Firmware update applied, 2024-08-10, 2023-11-15, v3.0, No, 200, RoofEast, Low, Passed, 2023-08-10T11:15:00);

-- Stadium concession inventory
CREATE TABLE Stadium_Concession_Inventory (
    item_id INTEGER PRIMARY KEY AUTOINCREMENT,
    concession_stand_id INTEGER,
    item_name TEXT,
    category TEXT,
    supplier_name TEXT,
    stock_quantity INTEGER,
    reorder_level INTEGER,
    unit_price_usd REAL,
    last_restock_date TEXT,
    next_delivery_date TEXT,
    calories_per_serving INTEGER,
    gluten_free TEXT,
    vegan TEXT,
    organic TEXT,
    expiry_date TEXT,
    storage_temperature_c INTEGER,
    critical_item TEXT,
    promotional_flag TEXT,
    barcode TEXT,
    shelf_location TEXT,
    supplier_contact TEXT,
    purchase_order_number TEXT,
    created_timestamp TEXT
);

INSERT INTO Stadium_Concession_Inventory VALUES (1, 10, HotDog, Meat, FoodSupplyCo, 350, 50, 3.50, 2023-07-20, 2023-08-05, 250, No, No, No, 2024-01-01, 4, No, No, 1234567890123, StandA2, 555-1234, PO78901, 2023-07-20T08:00:00);
INSERT INTO Stadium_Concession_Inventory VALUES (2, 11, VegWrap, Vegetarian, GreenEats, 200, 30, 4.75, 2023-07-25, 2023-08-12, 180, Yes, Yes, Yes, 2024-02-15, 5, No, Yes, 9876543210987, StandB1, 555-5678, PO78902, 2023-07-25T09:30:00);
INSERT INTO Stadium_Concession_Inventory VALUES (3, 12, Cola, Beverage, DrinkMakers, 500, 100, 1.25, 2023-07-22, 2023-08-07, 0, No, No, No, 2025-12-31, 2, No, No, 5555555555555, StandC3, 555-9012, PO78903, 2023-07-22T10:45:00);

-- Club legal case tracking
CREATE TABLE Club_Legal_Cases (
    case_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    case_type TEXT,
    case_status TEXT,
    filing_date TEXT,
    resolution_date TEXT,
    jurisdiction TEXT,
    plaintiff_name TEXT,
    defendant_name TEXT,
    case_number TEXT,
    summary TEXT,
    attorney_id INTEGER,
    attorney_name TEXT,
    estimated_cost_usd REAL,
    actual_cost_usd REAL,
    settlement_amount_usd REAL,
    appeal_filed TEXT,
    appeal_outcome TEXT,
    court_document_ref TEXT,
    confidentiality_flag TEXT,
    created_timestamp TEXT,
    last_update_timestamp TEXT
);

INSERT INTO Club_Legal_Cases VALUES (1, 5, Contract, Open, 2023-02-15, NULL, England, JohnDoe, ClubXYZ, LC2023-001, Dispute over player contract termination, 301, SusanBrown, 50000.00, NULL, NULL, No, NULL, DOC123, No, 2023-02-15T12:00:00, 2023-02-15T12:00:00);
INSERT INTO Club_Legal_Cases VALUES (2, 8, IntellectualProperty, Settled, 2022-11-01, 2023-01-20, Spain, MediaCorp, ClubABC, LC2022-017, Unauthorized use of club logo, 302, LuisGarcia, 75000.00, 72000.00, 200000.00, No, N/A, DOC456, No, 2022-11-01T09:30:00, 2023-01-20T15:45:00);
INSERT INTO Club_Legal_Cases VALUES (3, 3, Employment, Closed, 2021-06-10, 2022-03-05, Italy, FormerCoach, ClubDEF, LC2021-099, Wrongful termination claim, 303, MariaRossi, 60000.00, 59000.00, 0.00, Yes, Dismissed, DOC789, Yes, 2021-06-10T08:15:00, 2022-03-05T11:00:00);

-- Agent network statistics
CREATE TABLE Agent_Network_Statistics (
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    agent_id INTEGER,
    agent_name TEXT,
    agency_name TEXT,
    region TEXT,
    total_clients INTEGER,
    active_clients INTEGER,
    deals_closed INTEGER,
    total_transfer_fees_usd REAL,
    average_fee_percent REAL,
    years_in_business INTEGER,
    license_number TEXT,
    compliance_score INTEGER,
    last_audit_date TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    social_media_handle TEXT,
    preferred_currency TEXT,
    tax_id TEXT,
    office_address TEXT,
    created_timestamp TEXT,
    updated_timestamp TEXT
);

INSERT INTO Agent_Network_Statistics VALUES (1, 401, AlexMiller, StellarAgents, Europe, 120, 95, 45, 13000000.00, 5.5, 12, AGT-001, 88, 2023-07-01, alex.miller@stellar.com, 555-1111, alexm, EUR, TAX12345, 12StadiumRoad, 2023-07-01T10:00:00, 2023-07-01T10:00:00);
INSERT INTO Agent_Network_Statistics VALUES (2, 402, BiancaLopez, GlobalTalent, SouthAmerica, 80, 70, 30, 8000000.00, 6.0, 9, AGT-002, 92, 2023-07-15, bianca.lopez@global.com, 555-2222, biancal, USD, TAX54321, 34ArenaAve, 2023-07-15T11:30:00, 2023-07-15T11:30:00);
INSERT INTO Agent_Network_Statistics VALUES (3, 403, ChenWei, AsiaSports, Asia, 150, 130, 60, 17000000.00, 5.2, 15, AGT-003, 85, 2023-08-05, chen.wei@asia.com, 555-3333, chenw, CNY, TAX67890, 56FieldLane, 2023-08-05T09:45:00, 2023-08-05T09:45:00);

-- League transfer window rules
CREATE TABLE League_Transfer_Window_Rules (
    rule_id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    window_name TEXT,
    start_date TEXT,
    end_date TEXT,
    max_players_in INTEGER,
    min_players_out INTEGER,
    loan_allowed TEXT,
    intra_league_transfer_allowed TEXT,
    international_transfer_allowed TEXT,
    fee_cap_usd REAL,
    biometric_verification_required TEXT,
    registration_deadline TEXT,
    medical_clearance_deadline TEXT,
    financial_audit_required TEXT,
    waiver_process TEXT,
    notes TEXT,
    created_timestamp TEXT,
    updated_timestamp TEXT,
    compliance_officer_id INTEGER,
    compliance_officer_name TEXT
);

INSERT INTO League_Transfer_Window_Rules VALUES (1, 2, 2023/2024, Summer, 2023-07-01, 2023-09-01, 3, 0, Yes, Yes, Yes, 5000000.00, Yes, 2023-08-31, 2023-09-15, Yes, Standard waiver, None, 2023-06-15T08:00:00, 2023-06-15T08:00:00, 701, LauraSmith);
INSERT INTO League_Transfer_Window_Rules VALUES (2, 2, 2023/2024, Winter, 2024-01-01, 2024-01-31, 2, 0, No, Yes, Yes, 2000000.00, Yes, 2024-01-30, 2024-02-10, Yes, Emergency waiver, Reduced fee cap, 2023-12-20T09:30:00, 2023-12-20T09:30:00, 702, MarcoRossi);
INSERT INTO League_Transfer_Window_Rules VALUES (3, 3, 2023/2024, Summer, 2023-06-15, 2023-08-15, 4, 0, Yes, No, Yes, 7500000.00, No, 2023-08-14, 2023-08-20, No, No waiver required, Seasonal rule, 2023-05-30T10:15:00, 2023-05-30T10:15:00, 703, AnaGomez);

-- Team training schedule
CREATE TABLE Team_Training_Schedule (
    schedule_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    season TEXT,
    week_number INTEGER,
    training_day TEXT,
    start_time TEXT,
    end_time TEXT,
    session_type TEXT,
    focus_area TEXT,
    coach_in_charge TEXT,
    location TEXT,
    intensity_level TEXT,
    equipment_needed TEXT,
    notes TEXT,
    weather_condition TEXT,
    attendance_expected INTEGER,
    attendance_actual INTEGER,
    drill_primary TEXT,
    drill_secondary TEXT,
    nutrition_plan TEXT,
    recovery_protocol TEXT,
    created_timestamp TEXT,
    updated_timestamp TEXT,
    approved_by INTEGER,
    approved_by_name TEXT
);

INSERT INTO Team_Training_Schedule VALUES (1, 15, 2023/2024, 3, Monday, 10:00, 12:00, Tactical, Defensive Shape, CoachLee, MainGym, High, Cones;Balls, Focus on back four, Clear, 22, 21, PressingDrill, ShadowPlay, HighCarb, IceBath, 2023-08-01T07:00:00, 2023-08-01T07:00:00, 801, SamTaylor);
INSERT INTO Team_Training_Schedule VALUES (2, 15, 2023/2024, 3, Wednesday, 14:00, 16:30, Technical, Shooting, CoachKim, OutdoorField, Medium, Goals;Markers, Finish with set pieces, Cloudy, 22, 22, FinishingDrill, CrossingDrill, ProteinShake, LightStretch, 2023-08-03T08:15:00, 2023-08-03T08:15:00, 802, NinaPatel);
INSERT INTO Team_Training_Schedule VALUES (3, 15, 2023/2024, 3, Friday, 09:00, 11:00, Physical, Endurance, CoachPatel, FitnessCenter, Low, Treadmills;Bikes, Aerobic conditioning, Sunny, 20, 20, IntervalRun, CoreCircuit, BalancedMeal, FoamRoll, 2023-08-05T06:45:00, 2023-08-05T06:45:00, 803, DiegoMendez);

-- Club merchandise pricing history
CREATE TABLE Club_Merchandise_Pricing (
    pricing_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    season TEXT,
    item_category TEXT,
    item_name TEXT,
    sku TEXT,
    base_price_usd REAL,
    discount_percent REAL,
    final_price_usd REAL,
    currency TEXT,
    price_effective_date TEXT,
    price_expiration_date TEXT,
    price_change_reason TEXT,
    supplier_id INTEGER,
    supplier_name TEXT,
    stock_level INTEGER,
    reorder_point INTEGER,
    promotional_flag TEXT,
    limited_edition TEXT,
    online_only TEXT,
    created_timestamp TEXT,
    updated_timestamp TEXT,
    approval_user_id INTEGER,
    approval_user_name TEXT
);

INSERT INTO Club_Merchandise_Pricing VALUES (1, 4, 2023/2024, Jersey, HomeJersey2023, JRN2023H, 79.99, 0, 79.99, USD, 2023-08-01, 2024-05-31, Launch, 601, SportsGearInc, 1500, 300, No, No, Yes, 2023-07-30T09:00:00, 2023-07-30T09:00:00, 901, LisaGreen);
INSERT INTO Club_Merchandise_Pricing VALUES (2, 4, 2023/2024, Scarf, WinterScarf2023, SCF2023W, 24.99, 10, 22.49, USD, 2023-09-15, 2024-04-30, Seasonal discount, 602, WarmWearCo, 800, 150, Yes, No, No, 2023-09-10T10:30:00, 2023-09-10T10:30:00, 902, MarkBlue);
INSERT INTO Club_Merchandise_Pricing VALUES (3, 4, 2023/2024, Cap, LimitedCap2023, CAP2023L, 34.99, 0, 34.99, USD, 2023-10-01, 2023-12-31, Limited edition release, 603, CapsRUs, 200, 50, No, Yes, No, 2023-09-25T11:45:00, 2023-09-25T11:45:00, 903, EvaRed);

-- Match commentary scripts
CREATE TABLE Match_Commentary_Scripts (
    script_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    language TEXT,
    commentator_name TEXT,
    segment TEXT,
    start_minute INTEGER,
    end_minute INTEGER,
    script_text TEXT,
    cue_type TEXT,
    background_music TEXT,
    sound_effects TEXT,
    approved_by INTEGER,
    approved_by_name TEXT,
    creation_timestamp TEXT,
    last_edit_timestamp TEXT,
    notes TEXT,
    live_flag TEXT,
    replay_flag TEXT,
    sponsorship_mention TEXT,
    hashtag TEXT,
    social_media_platform TEXT,
    version_number INTEGER,
    audit_log TEXT
);

INSERT INTO Match_Commentary_Scripts VALUES (1, 125, English, JohnDoe, Intro, 0, 2, Welcome to the match between TeamA and TeamB., Music, None, None, 701, LauraSmith, 2023-08-01T06:00:00, 2023-08-01T06:00:00, None, Yes, No, SponsorX, #TeamAvsTeamB, Twitter, 1, Created);
INSERT INTO Match_Commentary_Scripts VALUES (2, 125, English, JohnDoe, Goal, 23, 23, What a stunning finish! The ball sails into the top corner., Cheering, CrowdRoar, GoalSound, 702, MarcoRossi, 2023-08-01T06:15:00, 2023-08-01T06:15:00, Highlighted, Yes, Yes, SponsorX, #Goal, Twitter, 1, Created);
INSERT INTO Match_Commentary_Scripts VALUES (3, 125, English, JohnDoe, Closing, 90, 92, That wraps up an exciting encounter. Thanks for watching!, OutroMusic, None, None, 703, AnaGomez, 2023-08-01T06:45:00, 2023-08-01T06:45:00, None, Yes, No, SponsorX, #FinalWhistle, Twitter, 1, Created);

-- Stadium Wi‑Fi usage statistics
CREATE TABLE Stadium_Wifi_Usage (
    usage_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    match_id INTEGER,
    date TEXT,
    total_devices_connected INTEGER,
    peak_concurrent_devices INTEGER,
    average_bandwidth_mbps REAL,
    total_data_consumed_gb REAL,
    upload_speed_mbps REAL,
    download_speed_mbps REAL,
    latency_ms INTEGER,
    ssid TEXT,
    security_protocol TEXT,
    provider_name TEXT,
    service_level TEXT,
    maintenance_window TEXT,
    outage_flag TEXT,
    outage_duration_minutes INTEGER,
    firmware_version TEXT,
    access_point_count INTEGER,
    guest_network_enabled TEXT,
    created_timestamp TEXT,
    updated_timestamp TEXT,
    notes TEXT
);

INSERT INTO Stadium_Wifi_Usage VALUES (1, 1, 125, 2023-08-12, 3500, 4200, 25.5, 1200.75, 15.2, 28.4, 45, StadiumWiFi, WPA2, NetProviderA, Premium, 02:00-03:00, No, 0, v5.1, 120, Yes, 2023-08-12T07:00:00, 2023-08-12T07:00:00, Normal operation);
INSERT INTO Stadium_Wifi_Usage VALUES (2, 1, 126, 2023-08-19, 3000, 3800, 22.1, 950.30, 14.0, 26.7, 50, StadiumWiFi, WPA2, NetProviderA, Premium, 02:00-03:00, Yes, 15, v5.1, 115, Yes, 2023-08-19T07:05:00, 2023-08-19T07:20:00, Short outage during halftime);
INSERT INTO Stadium_Wifi_Usage VALUES (3, 1, 127, 2023-08-26, 3200, 4000, 24.8, 1080.10, 15.5, 27.9, 48, StadiumWiFi, WPA2, NetProviderA, Premium, 02:00-03:00, No, 0, v5.1, 118, Yes, 2023-08-26T07:02:00, 2023-08-26T07:02:00, Stable connection);

-- Virtual fan engagement analytics
CREATE TABLE Virtual_Fan_Engagement_Analytics (
    record_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    platform TEXT,
    concurrent_viewers INTEGER,
    total_views INTEGER,
    avg_watch_time_seconds INTEGER,
    peak_view_time TEXT,
    chat_messages INTEGER,
    emojis_sent INTEGER,
    shares INTEGER,
    likes INTEGER,
    dislikes INTEGER,
    new_fans_gained INTEGER,
    geo_region TEXT,
    device_type TEXT,
    network_quality TEXT,
    stream_quality TEXT,
    ad_impressions INTEGER,
    ad_clicks INTEGER,
    sponsor_logo_views INTEGER,
    created_timestamp TEXT,
    updated_timestamp TEXT,
    notes TEXT
);

INSERT INTO Virtual_Fan_Engagement_Analytics VALUES (1, 125, Twitch, 12000, 45000, 300, 20:15, 2500, 400, 800, 15000, 200, 500, NorthAmerica, Desktop, Good, 1080p, 6000, 350, 2000, 2023-08-12T20:00:00, 2023-08-12T20:00:00, High engagement);
INSERT INTO Virtual_Fan_Engagement_Analytics VALUES (2, 125, YouTube, 8000, 30000, 260, 20:18, 1800, 300, 600, 10000, 150, 350, Europe, Mobile, Excellent, 720p, 4000, 250, 1500, 2023-08-12T20:01:00, 2023-08-12T20:01:00, Stable stream);
INSERT INTO Virtual_Fan_Engagement_Analytics VALUES (3, 125, FacebookLive, 5000, 20000, 220, 20:20, 1200, 200, 400, 8000, 120, 200, Asia, Tablet, Fair, 480p, 2500, 150, 1000, 2023-08-12T20:02:00, 2023-08-12T20:02:00, Lower quality);