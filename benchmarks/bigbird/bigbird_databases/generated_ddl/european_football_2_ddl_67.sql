-- Coach education and qualification details
CREATE TABLE Coach_Edu_Qualifications (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    coach_id INTEGER,
    federation TEXT,
    qualification_level TEXT,
    certification_body TEXT,
    issue_date TEXT,
    expiry_date TEXT,
    course_name TEXT,
    course_duration_weeks INTEGER,
    coaching_specialty TEXT,
    highest_degree TEXT,
    degree_institution TEXT,
    degree_year INTEGER,
    language_proficiency TEXT,
    first_aid_certified INTEGER,
    nutrition_course_completed INTEGER,
    psychology_course_completed INTEGER,
    tactical_analysis_course INTEGER,
    data_science_course INTEGER,
    leadership_workshop INTEGER,
    mentorship_program INTEGER,
    foreign_key_coach_id INTEGER,
    FOREIGN KEY(foreign_key_coach_id) REFERENCES Coach(id)
);
INSERT INTO Coach_Edu_Qualifications VALUES (1,101,'UEFA','Pro','UEFA Academy','2015-07-01','2025-07-01','Elite Coaching','12','Attacking','PhD','UniversityX','2010','EN,ES',1,1,1,1,0,1,0,101);
INSERT INTO Coach_Edu_Qualifications VALUES (2,102,'FA','A','FA Institute','2018-03-15','2028-03-15','Advanced Tactics','8','Defensive','MSc','CollegeY','2014','EN',1,0,1,0,1,0,1,102);
INSERT INTO Coach_Edu_Qualifications VALUES (3,103,'CONMEBOL','B','CONMEBOL School','2020-11-20','2030-11-20','Youth Development','6','Goalkeeping','BSc','InstituteZ','2017','PT,EN',0,1,0,1,0,1,0,103);

-- Referee travel log for away matches
CREATE TABLE Referee_Travel_Log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    referee_id INTEGER,
    match_id INTEGER,
    travel_date TEXT,
    departure_city TEXT,
    destination_city TEXT,
    mode_of_transport TEXT,
    travel_duration_minutes INTEGER,
    accommodation_name TEXT,
    accommodation_nights INTEGER,
    meal_allowance REAL,
    transport_allowance REAL,
    per_diem REAL,
    mileage INTEGER,
    fuel_cost REAL,
    hotel_rating INTEGER,
    notes TEXT,
    expense_approved INTEGER,
    expense_report_id INTEGER,
    foreign_key_referee_id INTEGER,
    FOREIGN KEY(foreign_key_referee_id) REFERENCES Referee(id)
);
INSERT INTO Referee_Travel_Log VALUES (1,201,5001,'2022-04-10','Madrid','Barcelona','Train',180,'HotelCentral',1,25.00,15.00,40.00,120,30.00,4,'',1,3001,201);
INSERT INTO Referee_Travel_Log VALUES (2,202,5002,'2022-05-05','London','Manchester','Coach',120,'CityInn',2,20.00,10.00,30.00,200,40.00,3,'',0,3002,202);
INSERT INTO Referee_Travel_Log VALUES (3,203,5003,'2022-06-12','Rome','Naples','Car',210,'BeachResort',1,30.00,12.00,45.00,150,35.00,5,'',1,3003,203);

-- Inventory of stadium concessions items
CREATE TABLE Stadium_Concessions_Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    concession_stand TEXT,
    item_code TEXT,
    item_name TEXT,
    category TEXT,
    unit_price REAL,
    units_in_stock INTEGER,
    reorder_point INTEGER,
    supplier_name TEXT,
    supplier_contact TEXT,
    last_restock_date TEXT,
    next_restock_estimate TEXT,
    calories_per_serving INTEGER,
    is_vegetarian INTEGER,
    is_vegan INTEGER,
    is_gluten_free INTEGER,
    packaging_type TEXT,
    aisle_location TEXT,
    shelf_number INTEGER,
    batch_number TEXT,
    expiration_date TEXT,
    notes TEXT,
    FOREIGN KEY(stadium_id) REFERENCES Stadium(id)
);
INSERT INTO Stadium_Concessions_Inventory VALUES (1,1,'North Stand','C001','Chicken Sandwich','Food',5.50,120,30,'FoodSupplyCo','123456789','2022-03-01','2022-04-01',550,0,0,0,'Plastic','A','12','BCH123','2023-01-01','');
INSERT INTO Stadium_Concessions_Inventory VALUES (2,1,'South Stand','D015','Diet Cola','Beverage',2.00,250,50,'DrinkWorld','987654321','2022-03-10','2022-04-10',0,1,1,1,'Can','B','5','DCO015','2024-12-31','Low sugar');
INSERT INTO Stadium_Concessions_Inventory VALUES (3,2,'East Stand','S099','Veggie Wrap','Food',4.75,80,20,'GreenFoods','555123456','2022-02-20','2022-03-20',300,1,1,0,'Paper','C','8','VGW099','2023-06-30','');

-- Team social media campaign tracking
CREATE TABLE Team_Social_Media_Campaigns (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    campaign_name TEXT,
    platform TEXT,
    start_date TEXT,
    end_date TEXT,
    budget REAL,
    target_audience TEXT,
    impressions INTEGER,
    clicks INTEGER,
    engagements INTEGER,
    video_views INTEGER,
    hashtag TEXT,
    creative_type TEXT,
    post_frequency_per_day INTEGER,
    organic_reach INTEGER,
    paid_reach INTEGER,
    ctr REAL,
    cpm REAL,
    cpc REAL,
    conversion_rate REAL,
    total_conversions INTEGER,
    notes TEXT,
    FOREIGN KEY(team_id) REFERENCES Team(id)
);
INSERT INTO Team_Social_Media_Campaigns VALUES (1,10,'SeasonKickoff','Twitter','2022-07-01','2022-07-15',5000.00,'Fans 18-35',150000,4000,8000,1200,'#Kickoff2022','Video',3,90000,60000,2.7,10.0,1.25,5.0,200,'');
INSERT INTO Team_Social_Media_Campaigns VALUES (2,11,'NewKitLaunch','Instagram','2022-08-05','2022-08-20',7000.00,'Fans 16-30',200000,5000,10000,2500,'#NewKit2022','Image',4,120000,80000,2.5,9.5,1.30,4.8,250,'');
INSERT INTO Team_Social_Media_Campaigns VALUES (3,12,'CommunityOutreach','Facebook','2022-09-10','2022-09-25',3000.00,'Local Residents',100000,2500,5000,800,'#Community2022','Carousel',2,60000,40000,2.0,8.0,1.20,3.5,150,'');

-- Player contract benefits and clauses
CREATE TABLE Player_Contract_Benefits (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    contract_start TEXT,
    contract_end TEXT,
    base_salary REAL,
    signing_bonus REAL,
    performance_bonus REAL,
    appearance_fee REAL,
    image_rights_fee REAL,
    housing_allowance REAL,
    car_allowance REAL,
    education_allowance REAL,
    pension_contribution REAL,
    health_insurance TEXT,
    retirement_plan TEXT,
    travel_allowance REAL,
    food_allowance REAL,
    personal_trainer_allowance REAL,
    language_course_allowance REAL,
    charity_donation_match REAL,
    clause_release_amount REAL,
    clause_termination_notice_days INTEGER,
    notes TEXT,
    FOREIGN KEY(player_id) REFERENCES Player(id)
);
INSERT INTO Player_Contract_Benefits VALUES (1,1001,'2022-07-01','2026-06-30',1500000.00,500000.00,200000.00,5000.00,30000.00,20000.00,15000.00,10000.00,5.0,'Standard','20000.00','5000.00','3000.00','2000.00','1000.00','250000.00',90,'','');
INSERT INTO Player_Contract_Benefits VALUES (2,1002,'2023-01-01','2027-12-31',1300000.00,400000.00,150000.00,4000.00,25000.00,18000.00,12000.00,8000.00,5.0,'Standard','18000.00','4500.00','2500.00','1800.00','800.00','200000.00',60,'','');
INSERT INTO Player_Contract_Benefits VALUES (3,1003,'2021-08-01','2025-07-31',1200000.00,350000.00,120000.00,3500.00,22000.00',15000.00,10000.00,7000.00,4.5,'Standard','15000.00','4000.00','2000.00','1500.00','600.00','150000.00',45,'','');

-- League media budget allocation
CREATE TABLE League_Media_Budget (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    fiscal_year TEXT,
    total_budget REAL,
    tv_rights_budget REAL,
    digital_rights_budget REAL,
    sponsorship_activation_budget REAL,
    production_costs_budget REAL,
    marketing_campaign_budget REAL,
    community_outreach_budget REAL,
    research_and_development_budget REAL,
    contingency_fund REAL,
    foreign_exchange_rate REAL,
    approved_by TEXT,
    approval_date TEXT,
    notes TEXT,
    FOREIGN KEY(league_id) REFERENCES League(id)
);
INSERT INTO League_Media_Budget VALUES (1,5,'2022','12000000.00','6000000.00','2000000.00','1500000.00','1000000.00','800000.00','500000.00','300000.00','200000.00',1.10,'CEO','2022-01-15','');
INSERT INTO League_Media_Budget VALUES (2,6,'2022','9500000.00','4500000.00','1800000.00','1200000.00','900000.00','700000.00','400000.00','250000.00','150000.00',1.12,'CFO','2022-01-20','');
INSERT INTO League_Media_Budget VALUES (3,7,'2022','13000000.00','7000000.00','2500000.00','1800000.00','1100000.00','900000.00','600000.00','350000.00','250000.00',1.09,'President','2022-01-18','');

-- Energy consumption data per match
CREATE TABLE Match_Energy_Consumption (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    stadium_id INTEGER,
    total_kwh REAL,
    lighting_kwh REAL,
    HVAC_kwh REAL,
    audio_system_kwh REAL,
    broadcast_equipment_kwh REAL,
    catering_kwh REAL,
    security_kwh REAL,
    average_power_kw REAL,
    peak_power_kw REAL,
    carbon_footprint_kg REAL,
    renewable_percentage REAL,
    measurement_timestamp TEXT,
    notes TEXT,
    FOREIGN KEY(match_id) REFERENCES Match(id),
    FOREIGN KEY(stadium_id) REFERENCES Stadium(id)
);
INSERT INTO Match_Energy_Consumption VALUES (1,5001,1,8500.00,3000.00,2000.00,500.00,800.00,600.00,200.00,250.00,2100.00,45.0,'2022-04-10 20:00','');
INSERT INTO Match_Energy_Consumption VALUES (2,5002,2,7600.00,2800.00,1800.00,450.00,750.00,550.00,190.00,240.00,1900.00,50.0,'2022-05-05 19:30','');
INSERT INTO Match_Energy_Consumption VALUES (3,5003,3,9200.00,3200.00,2100.00,520.00,820.00,630.00,210.00,260.00,2300.00,42.0,'2022-06-12 21:00','');

-- Fan reward tier definitions
CREATE TABLE Fan_Engagement_Reward_Tiers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tier_name TEXT,
    points_required INTEGER,
    badge_image_url TEXT,
    discount_percent REAL,
    exclusive_access TEXT,
    merchandise_credit REAL,
    priority_support INTEGER,
    annual_fee REAL,
    renewal_required INTEGER,
    tier_valid_from TEXT,
    tier_valid_to TEXT,
    max_members INTEGER,
    notes TEXT,
    created_by TEXT,
    created_at TEXT,
    updated_by TEXT,
    updated_at TEXT,
    is_active INTEGER,
    tier_sequence INTEGER,
    reward_points_multiplier REAL,
    special_event_invite TEXT
);
INSERT INTO Fan_Engagement_Reward_Tiers VALUES (1,'Bronze',1000,'/badges/bronze.png',5.0,'None',10.00,0,0.00,0,'2022-01-01','2099-12-31',9999,'','admin','2022-01-01','admin','2022-01-01',1,1,1.0,'');
INSERT INTO Fan_Engagement_Reward_Tiers VALUES (2,'Silver',5000,'/badges/silver.png',10.0,'Early Ticket Access',25.00,1,5.00,1,'2022-01-01','2099-12-31',5000,'','admin','2022-01-01','admin','2022-01-01',1,2,1.2,'');
INSERT INTO Fan_Engagement_Reward_Tiers VALUES (3,'Gold',10000,'/badges/gold.png',15.0,'VIP Lounge',50.00,1,10.00,1,'2022-01-01','2099-12-31',2000,'','admin','2022-01-01','admin','2022-01-01',1,3,1.5,'');

-- Club infrastructure maintenance schedule
CREATE TABLE Club_Infrastructure_Maintenance_Schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    asset_type TEXT,
    asset_id INTEGER,
    maintenance_type TEXT,
    scheduled_start TEXT,
    scheduled_end TEXT,
    responsible_party TEXT,
    contract_vendor TEXT,
    cost_estimate REAL,
    actual_cost REAL,
    status TEXT,
    priority_level INTEGER,
    downtime_hours INTEGER,
    safety_risk_level TEXT,
    required_permits TEXT,
    notes TEXT,
    created_by TEXT,
    created_at TEXT,
    updated_by TEXT,
    updated_at TEXT,
    FOREIGN KEY(club_id) REFERENCES Club(id)
);
INSERT INTO Club_Infrastructure_Maintenance_Schedule VALUES (1,1,'Stadium','ST001','Roof Inspection','2022-08-01','2022-08-03','FacilitiesMgr','RoofCo','15000.00','14000.00','Completed',2,4,'Medium','PermitA','','admin','2022-07-01','admin','2022-07-15');
INSERT INTO Club_Infrastructure_Maintenance_Schedule VALUES (2,2,'Training Center','TC005','HVAC Overhaul','2022-09-10','2022-09-20','OpsMgr','HVACExperts','50000.00','52000.00','InProgress',1,8,'High','PermitB','','admin','2022-08-15','admin','2022-09-01');
INSERT INTO Club_Infrastructure_Maintenance_Schedule VALUES (3,3,'Parking Lot','PK12','Lighting Upgrade','2022-10-05','2022-10-07','FacilitiesMgr','LightSolutions','12000.00','0.00','Planned',3,2,'Low','PermitC','','admin','2022-09-20','admin','2022-09-25');

-- Youth academy scout evaluations
CREATE TABLE Youth_Academy_Scout_Evaluations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    academy_id INTEGER,
    scout_id INTEGER,
    player_id INTEGER,
    evaluation_date TEXT,
    technical_score INTEGER,
    tactical_score INTEGER,
    physical_score INTEGER,
    mental_score INTEGER,
    potential_score INTEGER,
    overall_rating INTEGER,
    position_preference TEXT,
    dominant_foot TEXT,
    height_cm INTEGER,
    weight_kg INTEGER,
    injury_history TEXT,
    coach_comments TEXT,
    video_link TEXT,
    recommended_action TEXT,
    contract_offer_present INTEGER,
    follow_up_date TEXT,
    notes TEXT,
    FOREIGN KEY(academy_id) REFERENCES Youth_Academy(id),
    FOREIGN KEY(scout_id) REFERENCES Scout(id),
    FOREIGN KEY(player_id) REFERENCES Player(id)
);
INSERT INTO Youth_Academy_Scout_Evaluations VALUES (1,1,301,2001,'2022-03-15',85,78,90,80,95,88,'Midfielder','Right',175,68,'None','Good vision and passing','http://videos.com/2001','Invite to senior trial',1,'2022-04-01','');
INSERT INTO Youth_Academy_Scout_Evaluations VALUES (2,1,302,2002,'2022-03-18',70,65,80,75,85,73,'Defender','Left',180,75,'Knee sprain 2021','Strong in aerial duels','http://videos.com/2002','Monitor development',0,'2022-05-01','');
INSERT INTO Youth_Academy_Scout_Evaluations VALUES (3,2,303,2003,'2022-03-20',92,88,95,90,98,94,'Forward','Right',178,70,'None','Excellent finishing and pace','http://videos.com/2003','Fast-track to pro contract',1,'2022-04-15','');