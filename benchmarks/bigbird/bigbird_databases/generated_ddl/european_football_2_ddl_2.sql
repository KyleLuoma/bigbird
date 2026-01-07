-- Broadcast rights per match
CREATE TABLE Broadcast_Rights (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_api_id INTEGER,
    region TEXT,
    rights_holder TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    fee_usd REAL,
    broadcast_type TEXT,
    language TEXT,
    hd_available INTEGER,
    ultra_hd INTEGER,
    on_demand INTEGER,
    streaming_platform TEXT,
    terrestrial INTEGER,
    satellite INTEGER,
    cable INTEGER,
    digital INTEGER,
    pay_per_view INTEGER,
    exclusivity INTEGER,
    notes TEXT
);
INSERT INTO Broadcast_Rights VALUES (1,1001,'Europe','EuroMedia','2023-01-01','2025-12-31',5000000,'Live','English',1,1,1,'StreamPlus',0,1,1,1,0,1,'Primary rights for EU');
INSERT INTO Broadcast_Rights VALUES (2,1002,'Asia','AsiaSports','2022-06-15','2024-06-14',3000000,'Live','Mandarin',1,0,1,'AsiaStream',0,0,1,1,1,0,'Shared rights');
INSERT INTO Broadcast_Rights VALUES (3,1003,'NorthAmerica','USBroadcast','2023-03-01','2026-02-28',7500000,'Live','English',1,1,1,'USStream',1,1,1,1,0,1,'Exclusive US rights');

-- Sponsorship contacts for clubs
CREATE TABLE Club_Sponsorship_Contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    sponsor_name TEXT,
    contact_name TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    contract_start TEXT,
    contract_end TEXT,
    amount_usd REAL,
    activation_region TEXT,
    branding_type TEXT,
    logo_position TEXT,
    exclusivity INTEGER,
    renewal_option TEXT,
    payment_terms TEXT,
    sponsor_category TEXT,
    notes TEXT,
    approved_by TEXT,
    approval_date TEXT,
    status TEXT,
    last_updated TEXT
);
INSERT INTO Club_Sponsorship_Contacts VALUES (1,2001,'GlobalTech','Anna Smith','anna.smith@globaltech.com','+1234567890','2022-07-01','2025-06-30',12000000,'Worldwide','Jersey','Front','1','Automatic','Net30','Technology','Top tier sponsor','John Doe','2022-06-15','Active','2022-06-15');
INSERT INTO Club_Sponsorship_Contacts VALUES (2,2002,'HealthPlus','Marco Lee','marco.lee@healthplus.com','+1987654321','2023-01-15','2026-01-14',8000000,'Europe','Shirt','Sleeve','0','Negotiable','Net45','Health','Renewal pending','Jane Roe','2023-01-10','Active','2023-01-10');
INSERT INTO Club_Sponsorship_Contacts VALUES (3,2003,'EcoDrive','Sofia Patel','sofia.patel@ecodrive.com','+1122334455','2021-03-01','2024-02-28',5000000,'Asia','Badge','Back','0','Automatic','Net60','Automotive','Signed during pre-season','Mike Green','2021-02-20','Expired','2021-02-20');

-- Physical measurements for players
CREATE TABLE Player_Physical_Measurements (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    measurement_date TEXT,
    height_cm INTEGER,
    weight_kg INTEGER,
    body_fat_percent REAL,
    sprint_30m_sec REAL,
    vertical_jump_cm INTEGER,
    stamina_score INTEGER,
    flexibility_score INTEGER,
    shoulder_width_cm INTEGER,
    leg_length_cm INTEGER,
    arm_span_cm INTEGER,
    handgrip_strength_kg INTEGER,
    core_strength_score INTEGER,
    bmi REAL,
    hydration_level_percent REAL,
    resting_heart_rate INTEGER,
    vo2max_mlminkg REAL,
    injury_risk_score INTEGER,
    notes TEXT
);
INSERT INTO Player_Physical_Measurements VALUES (1,300001,'2023-08-10',185,78,12.5,3.6,55,88,75,48,98,118,85,23.5,55.0,58,45.2,12,'Baseline measurement');
INSERT INTO Player_Physical_Measurements VALUES (2,300045,'2023-08-12',172,68,10.2,3.8,58,90,78,45,94,112,90,22.9,57.0,54,48.1,9,'Post‑injury follow‑up');
INSERT INTO Player_Physical_Measurements VALUES (3,300078,'2023-08-15',190,85,13.1,3.5,60,85,80,50,101,124,80,24.5,56.5,60,44.5,15,'Pre‑season test');

-- Media budgets for teams
CREATE TABLE Team_Media_Budgets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_fifa_api_id INTEGER,
    fiscal_year TEXT,
    total_budget_usd REAL,
    digital_media_usd REAL,
    television_usd REAL,
    radio_usd REAL,
    print_usd REAL,
    social_media_usd REAL,
    influencer_usd REAL,
    content_production_usd REAL,
    sponsorship_activation_usd REAL,
    community_outreach_usd REAL,
    crisis_management_usd REAL,
    metrics_tracking_usd REAL,
    agency_fees_usd REAL,
    internal_staff_cost_usd REAL,
    foreign_exchange_rate REAL,
    approved_by TEXT,
    approval_date TEXT,
    notes TEXT
);
INSERT INTO Team_Media_Budgets VALUES (1,4001,'2023',2500000,600000,800000,200000,150000,500000,120000,300000,250000,100000,80000,150000,500000,1.0,'Laura King','2023-02-10','Increased digital spend');
INSERT INTO Team_Media_Budgets VALUES (2,4002,'2023',1800000,400000,500000,150000,100000,400000,90000,200000,180000,80000,60000,120000,400000,0.95,'Tom Blake','2023-02-12','Reduced TV spend');
INSERT INTO Team_Media_Budgets VALUES (3,4003,'2023',3000000,700000,900000,250000,180000,600000,150000,350000,300000,120000,100000,180000,700000,1.05,'Emma Wu','2023-02-15','New sponsorship activation');

-- Rule changes for leagues
CREATE TABLE League_Rule_Changes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    rule_effective_date TEXT,
    rule_description TEXT,
    previous_rule TEXT,
    new_rule TEXT,
    affected_players TEXT,
    affected_teams TEXT,
    enforcement_body TEXT,
    penalty_type TEXT,
    penalty_amount REAL,
    comments TEXT,
    proposed_by TEXT,
    approved_by TEXT,
    approval_date TEXT,
    status TEXT,
    amendment_number INTEGER,
    source_document TEXT,
    notes TEXT,
    last_updated TEXT
);
INSERT INTO League_Rule_Changes VALUES (1,10,'2023/24','2023-09-01','Offside line reduced by 1m','Standard offside line','Reduced offside line','All outfield','All clubs','League Committee','Fine','No controversy','Mike Allen','Sara Lee','2023-07-20','Pending',2,'Doc2023A','Awaiting vote','2023-07-20');
INSERT INTO League_Rule_Changes VALUES (2,12,'2022/23','2022-08-01','Mandatory concussion protocol','Ad‑hoc protocol','Standardized protocol','All players','All clubs','Medical Board','Suspension','5','Well received','Anna Gomez','Peter Sun','2022-05-15','Approved',1,'Doc2022B','Implemented successfully','2022-05-15');
INSERT INTO League_Rule_Changes VALUES (3,15,'2024/25','2024-07-01','Limit foreign players to 5','No limit','Maximum 5 foreign','Foreign players','All clubs','Regulatory Committee','Fine','10','Debated heavily','Laura Chen','David Kim','2024-01-10','Draft','3','Doc2024C','Pending stakeholder review','2024-01-10');

-- Match officials information
CREATE TABLE Match_Officials (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_api_id INTEGER,
    referee_id INTEGER,
    assistant_referee_1_id INTEGER,
    assistant_referee_2_id INTEGER,
    fourth_official_id INTEGER,
    video_assistant_referee_id INTEGER,
    country_of_origin TEXT,
    experience_years INTEGER,
    certification_level TEXT,
    matches_officiated_this_season INTEGER,
    yellow_cards_given INTEGER,
    red_cards_given INTEGER,
    fouls_called INTEGER,
    offsides_called INTEGER,
    penalties_given INTEGER,
    avg_decision_time_sec REAL,
    notes TEXT,
    approved_by TEXT,
    approval_date TEXT
);
INSERT INTO Match_Officials VALUES (1,1001,5001,5002,5003,5004,5005,'Germany',12,'Elite',30,45,3,250,30,12,5.2,'No issues','Head Referee Committee','2023-08-01');
INSERT INTO Match_Officials VALUES (2,1002,5010,5011,5012,5013,5014,'Brazil',8,'Professional',22,38,2,210,28,9,4.8,'Minor controversy on penalty','Head Referee Committee','2023-08-02');
INSERT INTO Match_Officials VALUES (3,1003,5020,5021,5022,5023,5024,'Japan',15,'Elite',40,52,4,280,35,15,5.0,'Smooth match','Head Referee Committee','2023-08-03');

-- Fan demographics per club
CREATE TABLE Fan_Demographics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    season TEXT,
    fan_id INTEGER,
    age INTEGER,
    gender TEXT,
    city TEXT,
    state TEXT,
    country TEXT,
    zip_code TEXT,
    membership_status TEXT,
    ticket_purchase_frequency INTEGER,
    average_spend_usd REAL,
    favorite_player_api_id INTEGER,
    preferred_communication_channel TEXT,
    social_media_platform TEXT,
    loyalty_score INTEGER,
    attendance_rate_percent REAL,
    merchandise_purchases_last_year INTEGER,
    volunteer_hours INTEGER,
    feedback_score INTEGER,
    notes TEXT
);
INSERT INTO Fan_Demographics VALUES (1,2001,'2023',900001,28,'Male','Madrid','Community of Madrid','Spain','28001','Member',12,150.75,300001,'Email','Twitter',85,78.5,3,10,92,'Active season ticket holder');
INSERT INTO Fan_Demographics VALUES (2,2002,'2023',900102,34,'Female','Lisbon','Lisbon','Portugal','1100-001','NonMember',4,65.40,300045,'SMS','Instagram',70,45.2,1,0,78,'Occasional attendee');
INSERT INTO Fan_Demographics VALUES (3,2003,'2023',900203,22,'Male','Berlin','Berlin','Germany','10115','Member',20,200.10,300078,'App','Facebook',92,88.0,5,25,95,'High engagement fan');

-- Ticket pricing history per match
CREATE TABLE Ticket_Pricing_History (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_api_id INTEGER,
    ticket_category TEXT,
    price_usd REAL,
    currency TEXT,
    price_change_date TEXT,
    change_reason TEXT,
    seat_section TEXT,
    seat_row TEXT,
    seat_number INTEGER,
    early_bird_discount_percent REAL,
    group_discount_percent REAL,
    dynamic_pricing_factor REAL,
    demand_score INTEGER,
    availability_status TEXT,
    sold_quantity INTEGER,
    unsold_quantity INTEGER,
    revenue_usd REAL,
    notes TEXT,
    last_updated TEXT,
    auditor TEXT
);
INSERT INTO Ticket_Pricing_History VALUES (1,1001,'Standard',75.00,'USD','2023-07-01','Initial price','B','12',45,10.0,5.0,1.0,80,'Available',1500,500,112500.00,'Early bird applied','2023-07-01','AuditTeamA');
INSERT INTO Ticket_Pricing_History VALUES (2,1001,'Premium',120.00,'USD','2023-07-10','Demand increase','A','5',12,0.0,0.0,1.3,95,'Limited',800,200,96000.00,'High demand surge','2023-07-10','AuditTeamA');
INSERT INTO Ticket_Pricing_History VALUES (3,1002,'Standard',70.00,'USD','2023-08-01','Seasonal discount','C','20',30,15.0,0.0,0.9,60,'Available',1300,700,91000.00,'Season discount applied','2023-08-01','AuditTeamB');

-- Stadium services contracts
CREATE TABLE Stadium_Services (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    service_name TEXT,
    provider_name TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    service_type TEXT,
    daily_capacity INTEGER,
    cost_usd REAL,
    contact_phone TEXT,
    contact_email TEXT,
    rating_score INTEGER,
    compliance_certificate_number TEXT,
    maintenance_schedule TEXT,
    last_inspection_date TEXT,
    notes TEXT,
    is_active INTEGER,
    service_level_agreement TEXT,
    response_time_minutes INTEGER,
    escalation_contact TEXT,
    last_updated TEXT
);
INSERT INTO Stadium_Services VALUES (1,6001,'Catering','FoodCo','2022-01-01','2024-12-31','Food & Beverage',5000,250000,'+123456789','contact@foodco.com',88,'CERT12345','Monthly','2023-07-15','Includes vegan options',1,'Gold','30','John Manager','2023-07-20');
INSERT INTO Stadium_Services VALUES (2,6002,'Security','SafeGuard','2021-06-15','2025-06-14','Security',8000,400000,'+198765432','secure@safeguard.com',92,'CERT67890','Quarterly','2023-06-10','Use of AI cameras',1,'Platinum','15','Maria Lead','2023-06-12');
INSERT INTO Stadium_Services VALUES (3,6003,'Cleaning','CleanIt','2023-03-01','2026-02-28','Sanitation',3000,120000,'+112233445','info@cleanit.com',85,'CERT54321','Weekly','2023-08-05','Eco‑friendly products',1,'Silver','45','Alex Supervisor','2023-08-07');

-- Training session statistics per team
CREATE TABLE Training_Session_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id INTEGER,
    session_date TEXT,
    coach_id INTEGER,
    session_type TEXT,
    duration_minutes INTEGER,
    intensity_level TEXT,
    focus_area TEXT,
    drills_conducted INTEGER,
    player_attendance_count INTEGER,
    avg_heart_rate INTEGER,
    max_speed_kmh REAL,
    distance_covered_km REAL,
    sprints_completed INTEGER,
    tactical_score INTEGER,
    technical_score INTEGER,
    mental_fatigue_score INTEGER,
    nutrition_provided TEXT,
    notes TEXT,
    last_updated TEXT,
    data_entry_user TEXT
);
INSERT INTO Training_Session_Stats VALUES (1,4001,'2023-08-05',7001,'Physical','120','High','Endurance',8,22,150,21.5,10.2,15,78,85,20,'Protein shake','Good stamina work','2023-08-05','CoachAnna');
INSERT INTO Training_Session_Stats VALUES (2,4002,'2023-08-06',7002,'Tactical','90','Medium','Set Pieces',5,20,130,18.0,7.8,12,80,70,15,'Energy bar','Improved set‑piece execution','2023-08-06','CoachBen');
INSERT INTO Training_Session_Stats VALUES (3,4003,'2023-08-07',7003,'Technical','100','Low','Ball Control',6,23,125,19.3,9.5,10,75,78,10,'Fruit platter','Focused on first touch','2023-08-07','CoachCara');