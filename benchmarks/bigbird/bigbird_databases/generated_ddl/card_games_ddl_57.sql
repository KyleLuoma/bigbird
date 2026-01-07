-- Player demographic information
CREATE TABLE player_demographics (
    player_id INTEGER NOT NULL,
    country_code TEXT,
    region TEXT,
    city TEXT,
    zip_code TEXT,
    age INTEGER,
    gender TEXT,
    language_preference TEXT,
    timezone TEXT,
    preferred_platform TEXT,
    account_creation_date DATE,
    last_login_date DATE,
    total_playtime_hours REAL,
    avg_session_length REAL,
    favorite_format TEXT,
    clan_id INTEGER,
    subscription_level TEXT,
    email_verified INTEGER,
    marketing_opt_in INTEGER,
    ip_address TEXT,
    device_type TEXT,
    created_at DATETIME
);

INSERT INTO player_demographics VALUES (1,'US','California','Los Angeles','90001',25,'Male','English','PST','PC','2022-03-15','2025-12-01',1345.6,2.3,'Standard',10,'Premium',1,0,'192.168.1.10','Desktop','2025-01-01 08:00:00');
INSERT INTO player_demographics VALUES (2,'GB','England','London','EC1A1BB',30,'Female','English','GMT','Mobile','2021-07-22','2025-11-28',987.2,1.8,'Commander',5,'Standard',1,1,'10.0.0.5','Phone','2025-01-02 09:15:00');
INSERT INTO player_demographics VALUES (3,'JP','Kanto','Tokyo','100-0001',22,'Other','Japanese','JST','Console','2023-01-10','2025-12-02',452.0,3.1,'Limited',12,'Free',0,0,'172.16.0.3','Console','2025-01-03 10:30:00');

-- Merchandise orders placed by players
CREATE TABLE merchandise_orders (
    order_id INTEGER NOT NULL,
    player_id INTEGER,
    order_date DATE,
    shipping_address_line1 TEXT,
    shipping_address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    country TEXT,
    order_status TEXT,
    payment_method TEXT,
    total_amount_usd REAL,
    currency TEXT,
    shipping_method TEXT,
    tracking_number TEXT,
    estimated_delivery_date DATE,
    actual_delivery_date DATE,
    items_count INTEGER,
    discount_code_used TEXT,
    gift_wrap INTEGER,
    special_instructions TEXT,
    created_at DATETIME
);

INSERT INTO merchandise_orders VALUES (1001,1,'2025-10-12','123 Main St','Apt 4B','Los Angeles','CA','90001','US','Shipped','CreditCard',79.99,'USD','Standard','1Z999AA10123456784','2025-10-18','2025-10-17',2,'WELCOME10',0,'Leave at front desk','2025-10-12 14:20:00');
INSERT INTO merchandise_orders VALUES (1002,2,'2025-10-13','456 High Rd','Suite 20','London','London','EC1A1BB','GB','Processing','PayPal',59.49,'GBP','Express','GB1234567890','2025-10-20',NULL,1,'SPRING20',1,'Include gift note','2025-10-13 09:45:00');
INSERT INTO merchandise_orders VALUES (1003,3,'2025-10-14','789 Sakura St','', 'Tokyo','Tokyo','100-0001','JP','Delivered','DebitCard',45.00,'JPY','Standard','JP0987654321','2025-10-19','2025-10-19',3,'',0,'No special requests','2025-10-14 11:05:00');

-- Streaming channel metrics aggregation
CREATE TABLE streaming_channel_metrics (
    channel_id INTEGER NOT NULL,
    platform TEXT,
    channel_name TEXT,
    created_date DATE,
    follower_count INTEGER,
    average_viewers INTEGER,
    peak_viewers INTEGER,
    total_streams INTEGER,
    total_view_time_hours REAL,
    avg_stream_duration_minutes REAL,
    subscription_income_usd REAL,
    ad_income_usd REAL,
    merch_sales_usd REAL,
    sponsor_income_usd REAL,
    chat_message_rate_per_min REAL,
    unique_chatters INTEGER,
    average_bit_donation_usd REAL,
    language TEXT,
    content_category TEXT,
    is_partnered INTEGER
);

INSERT INTO streaming_channel_metrics VALUES (2001,'Twitch','MagicMastery','2020-05-01',15000,250,420,340,1280.5,180,3200.75,850.30,410.00,1200.00,45.2,3000,2.5,'English','Gameplay',1);
INSERT INTO streaming_channel_metrics VALUES (2002,'YouTube','CardTalk','2019-11-15',8200,180,300,210,780.0,200,1500.00,400.00,250.00,800.00,30.1,2100,1.8,'English','Discussion',0);
INSERT INTO streaming_channel_metrics VALUES (2003,'Kick','DeckBuilderLive','2022-02-20',4300,95,150,95,420.3,150,900.00,250.00,180.00,500.00,22.7,1300,1.2,'Spanish','Tutorial',0);

-- Detailed venue facilities data
CREATE TABLE venue_facilities (
    venue_id INTEGER NOT NULL,
    name TEXT,
    address_line1 TEXT,
    address_line2 TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    country TEXT,
    capacity_seated INTEGER,
    capacity_standing INTEGER,
    has_wifi INTEGER,
    wifi_speed_mbps INTEGER,
    has_parking INTEGER,
    parking_spaces INTEGER,
    has_catering INTEGER,
    catering_vendor TEXT,
    acoustic_rating INTEGER,
    lighting_rating INTEGER,
    stage_count INTEGER,
    accessibility_rating INTEGER,
    last_renovation_year INTEGER
);

INSERT INTO venue_facilities VALUES (301,'Grand Convention Center','500 Expo Blvd','', 'Chicago','IL','60601','US',2000,500,1,300,1,250,'Premium Catering Co',85,90,3,95,2018);
INSERT INTO venue_facilities VALUES (302,'Riverfront Arena','120 River Rd','Suite 5','Portland','OR','97201','US',1500,0,1,250,1,180,'Local Bistro',80,88,2,92,2015);
INSERT INTO venue_facilities VALUES (303,'Mountain View Hall','20 Alpine Way','', 'Denver','CO','80202','US',800,200,1,200,0,0,'',75,82,1,88,2020);

-- Artwork licensing agreement records
CREATE TABLE artwork_licensing_agreements (
    agreement_id INTEGER NOT NULL,
    artist_id INTEGER,
    artwork_id INTEGER,
    license_type TEXT,
    exclusive_flag INTEGER,
    territory TEXT,
    start_date DATE,
    end_date DATE,
    royalty_rate_percent REAL,
    flat_fee_usd REAL,
    payment_schedule TEXT,
    renewal_option INTEGER,
    termination_notice_days INTEGER,
    usage_description TEXT,
    publication_rights TEXT,
    digital_use_allowed INTEGER,
    print_use_allowed INTEGER,
    merchandising_allowed INTEGER,
    reporting_requirements TEXT,
    created_timestamp DATETIME
);

INSERT INTO artwork_licensing_agreements VALUES (4001,10,5001,'Print','1','World','2024-01-01','2029-12-31',5.0,2000.00,'Quarterly',1,30,'Card artwork','Global','1','1','1','Monthly sales report','2024-01-01 09:00:00');
INSERT INTO artwork_licensing_agreements VALUES (4002,12,5005,'Digital','0','NorthAmerica','2023-06-15','2026-06-14',3.5,1500.00,'Annually',0,45,'Online avatar','NorthAmerica','1','0','0','Quarterly usage report','2023-06-15 10:30:00');
INSERT INTO artwork_licensing_agreements VALUES (4003,15,5010,'Merch','0','Europe','2025-03-01','2030-02-28',4.2,2500.00,'SemiAnnual',1,60,'Apparel prints','Europe','0','1','1','Biannual royalty statement','2025-03-01 11:45:00');

-- Digital collectible trade logs
CREATE TABLE digital_collectible_trades (
    trade_id INTEGER NOT NULL,
    sender_player_id INTEGER,
    receiver_player_id INTEGER,
    trade_date DATE,
    trade_status TEXT,
    asset_type TEXT,
    asset_id INTEGER,
    quantity INTEGER,
    asset_rarity TEXT,
    estimated_value_usd REAL,
    trade_fee_usd REAL,
    commission_percent REAL,
    notes TEXT,
    expiration_date DATE,
    escrow_required INTEGER,
    escrow_status TEXT,
    confirmation_timestamp DATETIME,
    dispute_flag INTEGER,
    dispute_resolution_time_days INTEGER,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO digital_collectible_trades VALUES (5001,1,2,'2025-11-01','Completed','Card','900001',1,'Mythic',250.00,5.00,2.0,'No issues','2025-12-01',1,'Released','2025-11-01 14:20:00',0,NULL,'2025-11-01 14:20:00','2025-11-01 14:20:00');
INSERT INTO digital_collectible_trades VALUES (5002,3,4,'2025-11-03','Pending','Token','30012',5,'Rare',75.00,2.00,1.5,'Awaiting escrow','2025-11-10',1,'Pending','2025-11-03 09:45:00',0,NULL,'2025-11-03 09:45:00','2025-11-03 09:45:00');
INSERT INTO digital_collectible_trades VALUES (5003,5,6,'2025-11-05','Cancelled','Card','800045',1,'Uncommon',15.00,1.00,1.0,'User cancelled','2025-11-07',0,'N/A','2025-11-05 11:00:00',0,NULL,'2025-11-05 11:00:00','2025-11-05 11:00:00');

-- Community event sponsorship details
CREATE TABLE community_event_sponsorships (
    sponsorship_id INTEGER NOT NULL,
    event_id INTEGER,
    sponsor_id INTEGER,
    package_name TEXT,
    amount_usd REAL,
    start_date DATE,
    end_date DATE,
    branding_inclusions TEXT,
    booth_space_sqft INTEGER,
    speaking_slot_minutes INTEGER,
    logo_display_frequency INTEGER,
    social_media_mentions INTEGER,
    email_campaigns_included INTEGER,
    exclusive_category TEXT,
    custom_activation_details TEXT,
    contract_signed_date DATE,
    payment_due_date DATE,
    payment_status TEXT,
    performance_metrics_reported INTEGER,
    created_at DATETIME,
    updated_at DATETIME
);

INSERT INTO community_event_sponsorships VALUES (6001,101,201,'Platinum',50000,'2025-09-01','2025-09-05','Main stage banner;Logo on tickets',200,30,50,120,5,'Gaming','Interactive demo zone','2025-08-15','2025-09-01','Paid',1,'2025-08-20 10:00:00','2025-08-20 10:00:00');
INSERT INTO community_event_sponsorships VALUES (6002,102,202,'Gold',30000,'2025-10-10','2025-10-12','Side stage banner;Web ads',120,20,30,80,3,'Collectibles','Card giveaway table','2025-09-25','2025-10-10','Pending',0,'2025-09-30 11:30:00','2025-09-30 11:30:00');
INSERT INTO community_event_sponsorships VALUES (6003,103,203,'Silver',15000,'2025-11-20','2025-11-22','Poster strips','80',10,15,40,2,'Apparel','Swag bag inserts','2025-11-01','2025-11-20','Pending',0,'2025-11-05 09:15:00','2025-11-05 09:15:00');

-- Player health and fitness tracking
CREATE TABLE player_health_and_fitness (
    record_id INTEGER NOT NULL,
    player_id INTEGER,
    record_date DATE,
    resting_heart_rate INTEGER,
    max_heart_rate INTEGER,
    hours_of_sleep REAL,
    sleep_quality_score INTEGER,
    calories_consumed INTEGER,
    protein_grams INTEGER,
    carbs_grams INTEGER,
    fats_grams INTEGER,
    hydration_liters REAL,
    workout_type TEXT,
    workout_duration_minutes INTEGER,
    cardio_seconds INTEGER,
    strength_exercises_count INTEGER,
    flexibility_score INTEGER,
    stress_level_score INTEGER,
    mood_score INTEGER,
    injury_reported INTEGER,
    injury_description TEXT,
    recovery_status TEXT,
    notes TEXT
);

INSERT INTO player_health_and_fitness VALUES (7001,1,'2025-11-01',58,180,7.5,85,2500,150,300,80,2.0,'Cardio',45,1800,0,90,30,70,0,'','Recovered','Felt energetic');
INSERT INTO player_health_and_fitness VALUES (7002,2,'2025-11-02',62,175,6.0,78,2200,130,250,70,1.8,'Strength',60,0,5,80,40,75,1,'Wrist strain','In rehab','Reduced training load');
INSERT INTO player_health_and_fitness VALUES (7003,3,'2025-11-03',55,185,8.0,90,2700,160,320,85,2.5,'Mixed',90,2000,3,95,20,80,0,'','Healthy','Ready for tournament');

-- Game rule change audit log
CREATE TABLE game_rule_change_audit (
    change_id INTEGER NOT NULL,
    rule_id TEXT,
    change_type TEXT,
    description TEXT,
    effective_date DATE,
    previous_version TEXT,
    new_version TEXT,
    approved_by_user_id INTEGER,
    approval_timestamp DATETIME,
    change_status TEXT,
    rollback_allowed INTEGER,
    impact_area TEXT,
    affected_formats TEXT,
    test_cases_passed INTEGER,
    regression_testing_status TEXT,
    deployment_environment TEXT,
    deployment_timestamp DATETIME,
    post_deployment_notes TEXT,
    ticket_reference TEXT,
    created_at DATETIME
);

INSERT INTO game_rule_change_audit VALUES (8001,'R-101','Modify','Adjusted creature power scaling','2025-12-01','v1.0','v1.1',12,'2025-11-20 14:00:00','Implemented',1,'Combat','Standard,Commander',120,'Passed','Production','2025-12-01 09:00:00','No issues reported','TCK-2025-001','2025-11-20 14:00:00');
INSERT INTO game_rule_change_audit VALUES (8002,'R-202','Add','New keyword "Echo" introduced','2025-12-15','v1.0','v1.2',15,'2025-11-25 10:30:00','Implemented',0,'Keyword','Standard,Modern',80,'Passed','Staging','2025-12-15 08:45:00','Monitor usage metrics','TCK-2025-002','2025-11-25 10:30:00');
INSERT INTO game_rule_change_audit VALUES (8003,'R-303','Remove','Removed "Arcane" keyword','2025-12-20','v1.2','v1.3',18,'2025-12-01 16:20:00','Implemented',1,'Keyword','All','95','Passed','Production','2025-12-20 07:55:00','Update documentation','TCK-2025-003','2025-12-01 16:20:00');

-- Environmental impact reports for venues
CREATE TABLE environmental_impact_reports (
    report_id INTEGER NOT NULL,
    venue_id INTEGER,
    report_date DATE,
    energy_consumption_kwh REAL,
    water_usage_liters REAL,
    waste_generated_kg REAL,
    recycling_rate_percent REAL,
    carbon_emissions_kgco2 REAL,
    renewable_energy_percent REAL,
    hvac_efficiency_rating INTEGER,
    lighting_efficiency_rating INTEGER,
    transportation_emissions_kgco2 REAL,
    food_service_waste_kg REAL,
    vendor_compliance_score INTEGER,
    certifications_obtained TEXT,
    remediation_actions_taken TEXT,
    next_audit_due_date DATE,
    auditor_name TEXT,
    notes TEXT,
    created_timestamp DATETIME,
    updated_timestamp DATETIME
);

INSERT INTO environmental_impact_reports VALUES (9001,301,'2025-10-31',12500.5,85000.0,1200.0,65.0,9500.0,30.0,88,92,1500.0,200.0,78,'LEED Gold','Installed solar panels',2026-10-31,'EcoAuditInc','Improved lighting','2025-10-31 12:00:00','2025-10-31 12:00:00');
INSERT INTO environmental_impact_reports VALUES (9002,302,'2025-10-31',9800.0,72000.0,950.0,70.0,7200.0,25.0,85,88,1200.0,150.0,82,'ISO14001','Upgraded HVAC filters',2026-10-31,'GreenCheck','Reduced water usage','2025-10-31 12:15:00','2025-10-31 12:15:00');
INSERT INTO environmental_impact_reports VALUES (9003,303,'2025-10-31',5600.0,45000.0,500.0,78.0,4300.0,40.0,90,95,800.0,100.0,90,'LEED Silver','Implemented recycling program',2026-10-31,'SustainAudit','Zero waste goal','2025-10-31 12:30:00','2025-10-31 12:30:00');