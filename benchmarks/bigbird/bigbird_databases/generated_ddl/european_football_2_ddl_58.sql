-- Broadcast studio resources and capabilities
CREATE TABLE Broadcast_Studio_Resources (
    studio_id INTEGER PRIMARY KEY AUTOINCREMENT,
    studio_name TEXT,
    location TEXT,
    total_cameras INTEGER,
    total_microphones INTEGER,
    total_lights INTEGER,
    mixing_boards INTEGER,
    recording_capacity_hours INTEGER,
    streaming_capacity_gbps REAL,
    soundproof_rating INTEGER,
    power_capacity_kw REAL,
    video_wall_resolution TEXT,
    backup_generator_status TEXT,
    last_maintenance_date TEXT,
    operational_hours_per_day INTEGER,
    staff_count INTEGER,
    primary_color_scheme TEXT,
    secondary_color_scheme TEXT,
    software_version TEXT,
    network_bandwidth_gbps REAL,
    security_access_level INTEGER,
    notes TEXT
);
INSERT INTO Broadcast_Studio_Resources VALUES (1,'Main Broadcast Hub','City Center',12,30,45,5,240,5.5,9,120.0,'4K Ultra HD','Operational','2025-01-15',16,25,'Blue','Gray','v3.2.1',10.0,4,'Primary studio for live matches');
INSERT INTO Broadcast_Studio_Resources VALUES (2,'Satellite Feed Studio','East Wing',8,20,30,3,180,3.2,8,95.0,'1080p','Operational','2024-11-20',14,18,'Green','White','v3.0.0',7.5,3,'Used for backup feeds');
INSERT INTO Broadcast_Studio_Resources VALUES (3,'Post‑Production Suite','West Annex',6,15,25,2,300,2.0,7,80.0,'4K','Operational','2025-02-05',12,12,'Red','Black','v2.9.4',5.0,2,'Editing and highlight generation');

-- Nutrition suppliers and product catalog
CREATE TABLE Nutrition_Supplier_Catalog (
    supplier_id INTEGER PRIMARY KEY AUTOINCREMENT,
    supplier_name TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    product_category TEXT,
    product_name TEXT,
    sku TEXT,
    unit_price REAL,
    packaging_type TEXT,
    calories_per_serving INTEGER,
    protein_grams INTEGER,
    carbs_grams INTEGER,
    fats_grams INTEGER,
    vitamins TEXT,
    allergens TEXT,
    min_order_quantity INTEGER,
    lead_time_days INTEGER,
    is_organic INTEGER,
    is_gluten_free INTEGER,
    last_audit_date TEXT,
    compliance_certifications TEXT,
    notes TEXT
);
INSERT INTO Nutrition_Supplier_Catalog VALUES (1,'Global Sports Nutrition','contact@gsn.com','5551239870','Protein Bars','PowerBar','PB1001',2.49,'Box','210','20','15','5','A,B,C','None',100,14,1,0,'2024-09-10','ISO9001','Top seller for recovery');
INSERT INTO Nutrition_Supplier_Catalog VALUES (2,'HydroFuel Supplies','info@hydrofuel.com','5559876543','Electrolyte Drinks','RapidHydro','RD2002',1.15,'Bottle','0','0','0','0','Electrolytes','None',200,7,0,1,'2024-07-22','ISO22000','Preferred for travel packs');
INSERT INTO Nutrition_Supplier_Catalog VALUES (3,'Organic Greener','sales@greener.org','5555551212','Meal Kits','VegMeal','VM3003',5.99,'Tray','450','25','55','10','A,D','Soy',50,21,1,0,'2024-12-01','USDA Organic','Seasonal menu component');

-- Fan experience design elements for stadium zones
CREATE TABLE Fan_Experience_Designs (
    zone_id INTEGER PRIMARY KEY AUTOINCREMENT,
    zone_name TEXT,
    theme TEXT,
    primary_color TEXT,
    secondary_color TEXT,
    interactive_features TEXT,
    seating_capacity INTEGER,
    standing_capacity INTEGER,
    average_dwell_time_minutes INTEGER,
    concession_count INTEGER,
    merchandise_stall_count INTEGER,
    wifi_access_points INTEGER,
    ambient_soundtrack TEXT,
    lighting_scheme TEXT,
    projection_content TEXT,
    security_camera_count INTEGER,
    staff_presence_level TEXT,
    accessibility_rating INTEGER,
    sustainability_score INTEGER,
    last_renovation_date TEXT,
    maintenance_cycle_days INTEGER,
    notes TEXT
);
INSERT INTO Fan_Experience_Designs VALUES (1,'North Stand','Retro','Maroon','Gold','PhotoBooth;ARGames',15000,2000,45,12,8,30,'80s Hits','Spotlight','Club History',150,'High',8,7,'2022-05-18',365,'Recently upgraded lighting');
INSERT INTO Fan_Experience_Designs VALUES (2,'Family Zone','Family Fun','LightBlue','White','KidsPlayArea;StoryCorner',8000,500,30,6,4,20,'Kids Tunes','SoftGlow','Cartoon Clips',80,'Medium',9,8,'2023-03-10',180,'Added new mascot meet‑and‑greet');
INSERT INTO Fan_Experience_Designs VALUES (3,'VIP Lounge','Luxury','Black','Silver','PrivateBar;LiveMusic',2000,0,90,3,2,15,'Jazz','Elegant','Live Performances',30,'Low',10,9,'2021-11-25',730,'Included premium sound system');

-- Ticketing queue analytics and performance metrics
CREATE TABLE Ticketing_Queue_Analytics (
    queue_id INTEGER PRIMARY KEY AUTOINCREMENT,
    platform_name TEXT,
    avg_wait_time_seconds INTEGER,
    peak_concurrent_users INTEGER,
    daily_ticket_requests INTEGER,
    successful_transactions INTEGER,
    failed_transactions INTEGER,
    refund_requests INTEGER,
    average_ticket_price REAL,
    currency TEXT,
    bot_detection_rate REAL,
    peak_day_of_week TEXT,
    maintenance_window_start TEXT,
    maintenance_window_end TEXT,
    server_region TEXT,
    load_balancer_type TEXT,
    max_response_time_ms INTEGER,
    min_response_time_ms INTEGER,
    sla_compliance_percent REAL,
    last_incident_date TEXT,
    notes TEXT
);
INSERT INTO Ticketing_Queue_Analytics VALUES (1,'OfficialWeb','12',3500,25000,24500,500,150,85.75,'USD',0.02,'Saturday','02:00','04:00','US-East','RoundRobin',1500,200,99.2,'2024-10-02','Stable after recent upgrade');
INSERT INTO Ticketing_Queue_Analytics VALUES (2,'MobileApp','8',2200,18000,17750,250,90,79.40,'EUR',0.015,'Friday','01:00','03:00','EU-Central','LeastConn',1200,180,99.5,'2024-08-15','Minor latency spikes observed');
INSERT INTO Ticketing_Queue_Analytics VALUES (3,'PartnerPortal','15',4000,30000,29500,500,200,92.30,'GBP',0.025,'Sunday','03:00','05:00','UK','IPHash',1700,250,98.9,'2024-11-11','Handled high demand for finals');

-- Data science experiment logs for predictive models
CREATE TABLE Data_Science_Experiment_Logs (
    experiment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    model_name TEXT,
    experiment_date TEXT,
    data_version TEXT,
    training_set_size INTEGER,
    validation_set_size INTEGER,
    test_set_size INTEGER,
    algorithm TEXT,
    hyperparameters TEXT,
    training_time_seconds INTEGER,
    gpu_hours_used REAL,
    accuracy REAL,
    precision REAL,
    recall REAL,
    f1_score REAL,
    auc_roc REAL,
    feature_count INTEGER,
    feature_importance_summary TEXT,
    deployment_status TEXT,
    notes TEXT,
    author TEXT,
    repository_url TEXT
);
INSERT INTO Data_Science_Experiment_Logs VALUES (1,'AttendancePredictor','2024-09-20','v3.1',120000,30000,30000,'XGBoost','max_depth=6;eta=0.3','5400',2.5,0.87,0.84,0.81,0.83,0.89,15,'Top features: weather, team form','Deployed','Improved weekend forecasts','DataScienceTeam','https://git.example.com/attendance');
INSERT INTO Data_Science_Experiment_Logs VALUES (2,'TicketPriceOptimizer','2024-08-05','v2.8',80000,20000,20000,'NeuralNet','layers=3;units=128','7200',3.2,0.78,0.76,0.73,0.75,0.80,20,'Key drivers: opponent rank, time of day','Testing','A/B test launched','PricingGroup','https://git.example.com/priceopt');
INSERT INTO Data_Science_Experiment_Logs VALUES (3,'FanSentimentAnalyzer','2024-07-12','v1.5',50000,10000,10000,'BERT','lr=2e-5;epochs=3','10800',4.0,0.91,0.88,0.90,0.89,0.94,25,'Dominant terms: excitement, disappointment','Pending Review','Will integrate with live feed','SocialAnalytics','https://git.example.com/sentiment');

-- Social media influencer profiles linked to club campaigns
CREATE TABLE Social_Media_Influencer_Profiles (
    influencer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    platform TEXT,
    handle TEXT,
    full_name TEXT,
    follower_count INTEGER,
    engagement_rate REAL,
    audience_country TEXT,
    niche_category TEXT,
    average_post_frequency_per_week INTEGER,
    average_likes_per_post INTEGER,
    average_comments_per_post INTEGER,
    partnership_start_date TEXT,
    partnership_end_date TEXT,
    contract_value_usd REAL,
    affiliate_code TEXT,
    last_campaign_performance TEXT,
    verified_status INTEGER,
    contact_email TEXT,
    contact_phone TEXT,
    notes TEXT,
    preferred_content_type TEXT,
    collaboration_notes TEXT
);
INSERT INTO Social_Media_Influencer_Profiles VALUES (1,'Instagram','@football_fanatic','Alex Rivera',185000,4.2,'Spain','Sports','5','1200','45','2023-04-01','2025-03-31',35000,'AF2024','High reach during derbies',1,'alex.rivera@example.com','5551112233','Strong fan base in Mediterranean','Video','Open to co‑creating merch');
INSERT INTO Social_Media_Influencer_Profiles VALUES (2,'TikTok','@goalkeeperguy','Brian Chen',240000,5.5,'USA','Goalkeeping','7','1500','60','2024-01-15','2026-01-14',42000,'GK2024','Excellent CTR on product drops',1,'brian.chen@example.com','5552223344','Specializes in trick saves','Shorts','Interested in virtual training demos');
INSERT INTO Social_Media_Influencer_Profiles VALUES (3,'YouTube','@stadiumtour','Carla Mendes',95000,3.8,'Brazil','Travel','2','800','30','2022-09-10','2024-09-09',25000,'ST2023','Steady views on stadium tours',0,'carla.mendes@example.com','5553334455','Focus on behind‑the‑scenes','Vlog','Potential for live Q&A sessions');

-- Historical fan engagement surveys results
CREATE TABLE Historical_Fan_Engagement_Surveys (
    survey_id INTEGER PRIMARY KEY AUTOINCREMENT,
    season TEXT,
    match_id INTEGER,
    fan_age_group TEXT,
    satisfaction_score INTEGER,
    likelihood_to_recommend INTEGER,
    preferred_communication_channel TEXT,
    merchandise_interest_level INTEGER,
    food_beverage_satisfaction INTEGER,
    stadium_cleanliness_rating INTEGER,
    security_feeling_rating INTEGER,
    wifi_quality_rating INTEGER,
    average_response_time_minutes INTEGER,
    survey_completion_date TEXT,
    sample_size INTEGER,
    region TEXT,
    gender_distribution TEXT,
    ticket_price_sensitivity INTEGER,
    loyalty_program_membership INTEGER,
    notes TEXT,
    analyst_name TEXT,
    data_source TEXT
);
INSERT INTO Historical_Fan_Engagement_Surveys VALUES (1,'2023/24',1023,'18-25',78,85,'Email',4,70,88,92,75,5,'2024-02-14',1200,'North','Male:55% Female:45%',3,1,'Positive feedback on halftime shows','Emily Clark','OnlineSurvey');
INSERT INTO Historical_Fan_Engagement_Surveys VALUES (2,'2022/23',985,'26-35',82,90,'MobileApp',5,80,91,94,85,4,'2023-11-20',950,'South','Male:60% Female:40%',2,1,'High interest in exclusive merchandise','Liam Patel','QRForm');
INSERT INTO Historical_Fan_Engagement_Surveys VALUES (3,'2021/22',874,'36-45',75,70,'SMS',3,65,83,88,70,6,'2022-08-05',800,'East','Male:58% Female:42%',4,0,'Need improvement in parking guidance','Sofia Rossi','PaperForm');

-- Virtual reality event schedules for fan immersion
CREATE TABLE Virtual_Reality_Event_Schedules (
    vr_event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_name TEXT,
    scheduled_date TEXT,
    start_time TEXT,
    end_time TEXT,
    venue TEXT,
    max_participants INTEGER,
    platform TEXT,
    required_hardware TEXT,
    age_restriction TEXT,
    ticket_price_usd REAL,
    sponsorship_partner TEXT,
    live_commentary_available INTEGER,
    recording_available INTEGER,
    language_options TEXT,
    promo_video_url TEXT,
    accessibility_features TEXT,
    contact_person TEXT,
    contact_email TEXT,
    notes TEXT,
    registration_deadline TEXT,
    status TEXT
);
INSERT INTO Virtual_Reality_Event_Schedules VALUES (1,'VR Pre‑Match Warmup','2025-03-10','18:00','20:00','Online','5000','Oculus Quest','Oculus Quest 2','12+','15.00','TechCorp',1,1,'English;Spanish','https://vid.example.com/vrwarmup','Closed Captions','Mike Daniels','mike.daniels@example.com','First event of the season','2025-03-01','Scheduled');
INSERT INTO Virtual_Reality_Event_Schedules VALUES (2,'Virtual Stadium Tour','2025-04-22','14:00','15:30','Online','3000','HTC Vive','HTC Vive Pro','All Ages','0.00','GreenEnergy',1,1,'English','https://vid.example.com/vrtour','Audio Descriptions','Laura Kim','laura.kim@example.com','Free fan engagement activity','2025-04-15','Scheduled');
INSERT INTO Virtual_Reality_Event_Schedules VALUES (3,'VR Post‑Match Analysis','2025-05-05','21:00','22:30','Online','2500','PlayStation VR2','PSVR2','16+','10.00','DataAnalyticsInc',1,0,'English;German','https://vid.example.com/vranalysis','Subtitle Options','Raj Patel','raj.patel@example.com','Includes expert commentary','2025-04-28','Scheduled');

-- Stadium seating pricing and tier definitions
CREATE TABLE Stadium_Seating_Pricing (
    tier_id INTEGER PRIMARY KEY AUTOINCREMENT,
    tier_name TEXT,
    seat_section_range TEXT,
    base_price_usd REAL,
    premium_addon_usd REAL,
    discount_percent INTEGER,
    seat_type TEXT,
    view_quality TEXT,
    accessibility_compliant INTEGER,
    early_bird_deadline TEXT,
    last_minute_markup_usd REAL,
    resale_allowed INTEGER,
    resale_platform TEXT,
    revenue_share_percent INTEGER,
    season_ticket_eligible INTEGER,
    dynamic_pricing_enabled INTEGER,
    price_history_notes TEXT,
    max_capacity INTEGER,
    average_occupancy_percent INTEGER,
    notes TEXT,
    last_updated TEXT,
    status TEXT
);
INSERT INTO Stadium_Seating_Pricing VALUES (1,'Premium Box','A1-A20',250.00,30.00,5,'Box','Excellent',1,'2024-12-31',20.00,1,'TicketSwap',15,1,1,'Price adjusts with demand','200','92','Top tier boxes','2024-11-15','Active');
INSERT INTO Stadium_Seating_Pricing VALUES (2,'Club Level','B1-B100',120.00,15.00,10,'Club','Very Good',1,'2025-01-15',10.00,1,'FanExchange',10,1,1,'Season ticket holders receive 5% extra discount','1500','85','Club level seats with lounge access','2024-11-20','Active');
INSERT INTO Stadium_Seating_Pricing VALUES (3,'General Admission','C1-C1000',55.00,0.00,0,'Bench','Good',0,'2025-02-01',5.00,0,NULL,5,0,0,'Fixed price, no resale option','10000','78','Standard seats throughout stadium','2024-11-25','Active');

-- Club merchandise wholesale order records
CREATE TABLE Club_Merchandise_Wholesale_Orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,
    supplier_id INTEGER,
    merchandise_type TEXT,
    sku TEXT,
    quantity_ordered INTEGER,
    unit_cost_usd REAL,
    total_cost_usd REAL,
    order_date TEXT,
    expected_delivery_date TEXT,
    actual_delivery_date TEXT,
    shipping_method TEXT,
    freight_cost_usd REAL,
    import_duty_percent INTEGER,
    customs_cleared INTEGER,
    warehouse_location TEXT,
    received_by TEXT,
    quality_inspection_passed INTEGER,
    inspection_notes TEXT,
    payment_status TEXT,
    invoice_number TEXT,
    notes TEXT,
    created_by TEXT,
    last_modified TEXT
);
INSERT INTO Club_Merchandise_Wholesale_Orders VALUES (1,4,'Jersey','JRS001',500,25.00,12500.00,'2024-06-01','2024-06-15','2024-06-14','Air','150.00',5,1,'Main Warehouse','John Doe',1,'No defects','Paid','INV20240601','Season home kit order','ProcurementTeam','2024-06-16');
INSERT INTO Club_Merchandise_Wholesale_Orders VALUES (2,5,'Scarf','SCF045',800,8.50,6800.00,'2024-07-10','2024-07-25','2024-07-24','Sea','80.00',3,1,'Secondary Warehouse','Jane Smith',1,'Minor stitching variance','Pending','INV20240710','Winter scarf batch','ProcurementTeam','2024-07-25');
INSERT INTO Club_Merchandise_Wholesale_Orders VALUES (3,6,'Cap','CAP210',300,12.00,3600.00,'2024-08-05','2024-08-20','2024-08-22','Air','120.00',4,0,'Main Warehouse','Mike Lee',0,'Received damaged packaging','Disputed','INV20240805','Summer cap order - under review','ProcurementTeam','2024-08-23');