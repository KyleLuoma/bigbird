-- Broadcast social engagement metrics per broadcast episode
CREATE TABLE Broadcast_Social_Engagement_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcast_id INTEGER,
    platform_name TEXT,
    followers INTEGER,
    likes INTEGER,
    shares INTEGER,
    comments INTEGER,
    average_view_duration REAL,
    peak_concurrent_viewers INTEGER,
    total_impressions INTEGER,
    engagement_rate REAL,
    sentiment_score REAL,
    demographic_male_percent REAL,
    demographic_female_percent REAL,
    age_18_24_percent REAL,
    age_25_34_percent REAL,
    age_35_44_percent REAL,
    age_45_plus_percent REAL,
    region_north_america_percent REAL,
    region_europe_percent REAL,
    region_asia_percent REAL,
    measurement_date TEXT
);
INSERT INTO Broadcast_Social_Engagement_Metrics (broadcast_id,platform_name,followers,likes,shares,comments,average_view_duration,peak_concurrent_viewers,total_impressions,engagement_rate,sentiment_score,demographic_male_percent,demographic_female_percent,age_18_24_percent,age_25_34_percent,age_35_44_percent,age_45_plus_percent,region_north_america_percent,region_europe_percent,region_asia_percent,measurement_date) VALUES (101,'YouTube',1200000,54000,12000,8000,5.2,85000,2000000,0.027,0.62,0.55,0.45,0.30,0.40,0.20,0.10,0.45,0.35,0.20,'2025-05-01');
INSERT INTO Broadcast_Social_Engagement_Metrics (broadcast_id,platform_name,followers,likes,shares,comments,average_view_duration,peak_concurrent_viewers,total_impressions,engagement_rate,sentiment_score,demographic_male_percent,demographic_female_percent,age_18_24_percent,age_25_34_percent,age_35_44_percent,age_45_plus_percent,region_north_america_percent,region_europe_percent,region_asia_percent,measurement_date) VALUES (102,'Twitter',850000,32000,9000,6000,3.1,46000,1100000,0.029,0.68,0.48,0.52,0.25,0.38,0.22,0.15,0.40,0.40,0.20,'2025-05-03');
INSERT INTO Broadcast_Social_Engagement_Metrics (broadcast_id,platform_name,followers,likes,shares,comments,average_view_duration,peak_concurrent_viewers,total_impressions,engagement_rate,sentiment_score,demographic_male_percent,demographic_female_percent,age_18_24_percent,age_25_34_percent,age_35_44_percent,age_45_plus_percent,region_north_america_percent,region_europe_percent,region_asia_percent,measurement_date) VALUES (103,'Instagram',970000,41000,15000,7000,4.6,73000,1500000,0.027,0.61,0.52,0.48,0.28,0.42,0.19,0.11,0.43,0.37,0.20,'2025-05-05');

-- Stadium fan noise level recordings
CREATE TABLE Stadium_Fan_Noise_Levels (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    match_id INTEGER,
    noise_db INTEGER,
    peak_noise_db INTEGER,
    avg_noise_db INTEGER,
    duration_seconds INTEGER,
    crowd_section TEXT,
    measurement_timestamp TEXT,
    weather_condition TEXT,
    temperature_celsius INTEGER,
    humidity_percent INTEGER,
    wind_speed_kmh INTEGER,
    microphone_id INTEGER,
    recording_device TEXT,
    audio_quality_score REAL,
    noise_variance REAL,
    event_phase TEXT,
    fan_engagement_score REAL,
    noise_change_rate REAL,
    notes TEXT
);
INSERT INTO Stadium_Fan_Noise_Levels (stadium_id,match_id,noise_db,peak_noise_db,avg_noise_db,duration_seconds,crowd_section,measurement_timestamp,weather_condition,temperature_celsius,humidity_percent,wind_speed_kmh,microphone_id,recording_device,audio_quality_score,noise_variance,event_phase,fan_engagement_score,noise_change_rate,notes) VALUES (11,2001,92,108,95,5400,'NorthStand','2025-04-20 19:12:00','Clear',22,55,12,7,'ZoomH4n',0.94,3.2,'Kickoff',0.85,0.03,'Standard match opening');
INSERT INTO Stadium_Fan_Noise_Levels (stadium_id,match_id,noise_db,peak_noise_db,avg_noise_db,duration_seconds,crowd_section,measurement_timestamp,weather_condition,temperature_celsius,humidity_percent,wind_speed_kmh,microphone_id,recording_device,audio_quality_score,noise_variance,event_phase,fan_engagement_score,noise_change_rate,notes) VALUES (12,2002,88,102,90,3600,'SouthStand','2025-04-21 20:45:00','Rain',17,78,8,9,'SonyPCM',0.89,4.1,'Goal',0.92,0.07,'Goal celebration spike');
INSERT INTO Stadium_Fan_Noise_Levels (stadium_id,match_id,noise_db,peak_noise_db,avg_noise_db,duration_seconds,crowd_section,measurement_timestamp,weather_condition,temperature_celsius,humidity_percent,wind_speed_kmh,microphone_id,recording_device,audio_quality_score,noise_variance,event_phase,fan_engagement_score,noise_change_rate,notes) VALUES (13,2003,85,98,87,7200,'EastStand','2025-04-22 18:30:00','Cloudy',20,63,5,4,'TascamDR',0.91,2.8,'Halftime',0.78,0.01,'Halftime lull');

-- Club creative project tracker
CREATE TABLE Club_Creative_Project_Tracker (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    project_name TEXT,
    start_date TEXT,
    end_date TEXT,
    budget_usd INTEGER,
    spend_to_date INTEGER,
    status TEXT,
    lead_designer TEXT,
    creative_agency TEXT,
    media_type TEXT,
    target_audience TEXT,
    key_message TEXT,
    deliverable_count INTEGER,
    revision_count INTEGER,
    approval_status TEXT,
    launch_date TEXT,
    post_launch_metrics TEXT,
    stakeholder_feedback_score REAL,
    risk_level TEXT,
    notes TEXT
);
INSERT INTO Club_Creative_Project_Tracker (club_id,project_name,start_date,end_date,budget_usd,spend_to_date,status,lead_designer,creative_agency,media_type,target_audience,key_message,deliverable_count,revision_count,approval_status,launch_date,post_launch_metrics,stakeholder_feedback_score,risk_level,notes) VALUES (1,'Summer Kit 2025','2025-01-10','2025-07-01',2500000,1450000,'InProgress','Alice Nguyen','CreativeWave','Apparel','Fans','Bold new look',5,2,'Pending','2025-08-01','Impressions:2M',8.5,'Medium','Color palette finalised');
INSERT INTO Club_Creative_Project_Tracker (club_id,project_name,start_date,end_date,budget_usd,spend_to_date,status,lead_designer,creative_agency,media_type,target_audience,key_message,deliverable_count,revision_count,approval_status,launch_date,post_launch_metrics,stakeholder_feedback_score,risk_level,notes) VALUES (2,'Digital Fan Experience','2025-03-01','2025-12-15',1800000,720000,'InProgress','Marco Ruiz','PixelPulse','WebApp','Global','Engage fans anytime',8,3,'Approved','2025-11-20','DAU:150K',9.1,'Low','Beta testing phase');
INSERT INTO Club_Creative_Project_Tracker (club_id,project_name,start_date,end_date,budget_usd,spend_to_date,status,lead_designer,creative_agency,media_type,target_audience,key_message,deliverable_count,revision_count,approval_status,launch_date,post_launch_metrics,stakeholder_feedback_score,risk_level,notes) VALUES (3,'Stadium Wayfinding Signage','2025-02-15','2025-09-30',600000,350000,'InProgress','Sofia Patel','SignagePro','Physical','Visitors','Navigate with ease',12,1,'Pending','2025-10-05','UserScore:4.6',7.8,'High','Supply chain delays');

-- Player transition analytics (non‑overlapping with base player tables)
CREATE TABLE Player_Transition_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    from_club_id INTEGER,
    to_club_id INTEGER,
    transfer_date TEXT,
    transfer_fee_usd INTEGER,
    contract_years INTEGER,
    salary_usd INTEGER,
    performance_rating_before INTEGER,
    performance_rating_after INTEGER,
    minutes_played_before INTEGER,
    minutes_played_after INTEGER,
    injuries_before INTEGER,
    injuries_after INTEGER,
    adaptation_score REAL,
    cultural_fit_score REAL,
    language_proficiency TEXT,
    relocation_assistance INTEGER,
    agent_id INTEGER,
    transfer_type TEXT,
    market_value_before INTEGER,
    market_value_after INTEGER,
    notes TEXT
);
INSERT INTO Player_Transition_Analytics (player_api_id,from_club_id,to_club_id,transfer_date,transfer_fee_usd,contract_years,salary_usd,performance_rating_before,performance_rating_after,minutes_played_before,minutes_played_after,injuries_before,injuries_after,adaptation_score,cultural_fit_score,language_proficiency,relocation_assistance,agent_id,transfer_type,market_value_before,market_value_after,notes) VALUES (10234,5,12,'2025-06-01',8500000,4,1200000,78,82,2100,1800,2,1,0.84,0.77,'English',1,207,'Permanent',18000000,19000000,'Smooth transition with language support');
INSERT INTO Player_Transition_Analytics (player_api_id,from_club_id,to_club_id,transfer_date,transfer_fee_usd,contract_years,salary_usd,performance_rating_before,performance_rating_after,minutes_played_before,minutes_played_after,injuries_before,injuries_after,adaptation_score,cultural_fit_score,language_proficiency,relocation_assistance,agent_id,transfer_type,market_value_before,market_value_after,notes) VALUES (11567,8,3,'2025-07-15',3000000,3,750000,71,73,1500,1600,0,0,0.68,0.55,'Spanish',0,312,'Loan',9500000,9700000,'Adjustment period observed');
INSERT INTO Player_Transition_Analytics (player_api_id,from_club_id,to_club_id,transfer_date,transfer_fee_usd,contract_years,salary_usd,performance_rating_before,performance_rating_after,minutes_played_before,minutes_played_after,injuries_before,injuries_after,adaptation_score,cultural_fit_score,language_proficiency,relocation_assistance,agent_id,transfer_type,market_value_before,market_value_after,notes) VALUES (14021,2,9,'2025-08-20',0,2,500000,65,68,800,1200,1,0,0.71,0.60,'Portuguese',1,429,'FreeTransfer',7200000,7500000,'Free transfer, immediate impact');

-- League commercial contract details
CREATE TABLE League_Commercial_Contract_Details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    sponsor_name TEXT,
    contract_start TEXT,
    contract_end TEXT,
    total_value_usd INTEGER,
    annual_payment_usd INTEGER,
    media_rights_fee INTEGER,
    exclusive INTEGER,
    category TEXT,
    activation_events INTEGER,
    digital_impressions INTEGER,
    tv_audience_millions REAL,
    brand_awareness_score REAL,
    renewal_option INTEGER,
    clause_summary TEXT,
    compliance_status TEXT,
    payment_schedule TEXT,
    audit_flag INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO League_Commercial_Contract_Details (league_id,sponsor_name,contract_start,contract_end,total_value_usd,annual_payment_usd,media_rights_fee,exclusive,category,activation_events,digital_impressions,tv_audience_millions,brand_awareness_score,renewal_option,clause_summary,compliance_status,payment_schedule,audit_flag,notes,created_at,updated_at) VALUES (1,'GlobalSports', '2025-01-01','2030-12-31',50000000,10000000,12000000,1,'TitleSponsor',30,25000000,15.2,0.88,1,'Full exclusivity worldwide', 'Compliant','Quarterly',0,'Key partner for 5 seasons','2025-01-02','2025-01-02');
INSERT INTO League_Commercial_Contract_Details (league_id,sponsor_name,contract_start,contract_end,total_value_usd,annual_payment_usd,media_rights_fee,exclusive,category,activation_events,digital_impressions,tv_audience_millions,brand_awareness_score,renewal_option,clause_summary,compliance_status,payment_schedule,audit_flag,notes,created_at,updated_at) VALUES (2,'TechPulse', '2025-03-15','2028-03-14',18000000,6000000,4000000,0,'TechnologyPartner',12,12000000,8.4,0.73,0,'Non‑exclusive tech integration', 'Compliant','SemiAnnual',1,'Includes hardware rollout','2025-03-16','2025-03-16');
INSERT INTO League_Commercial_Contract_Details (league_id,sponsor_name,contract_start,contract_end,total_value_usd,annual_payment_usd,media_rights_fee,exclusive,category,activation_events,digital_impressions,tv_audience_millions,brand_awareness_score,renewal_option,clause_summary,compliance_status,payment_schedule,audit_flag,notes,created_at,updated_at) VALUES (3,'EcoEnergy', '2025-06-01','2030-05-31',30000000,6000000,5000000,1,'EnergyPartner',20,18000000,10.1,0.81,1,'Green energy sponsorship', 'Pending','Annual',0,'Focus on sustainability','2025-06-02','2025-06-02');

-- Team travel environmental impact records
CREATE TABLE Team_Travel_Environmental_Impact (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    travel_date TEXT,
    origin_city TEXT,
    destination_city TEXT,
    travel_mode TEXT,
    distance_km INTEGER,
    fuel_consumed_liters REAL,
    carbon_emissions_kg REAL,
    passengers INTEGER,
    hotel_nights INTEGER,
    meals_provided INTEGER,
    waste_generated_kg REAL,
    sustainability_score REAL,
    offset_credits INTEGER,
    travel_manager TEXT,
    airline_name TEXT,
    train_operator TEXT,
    bus_company TEXT,
    carbon_offset_program TEXT,
    notes TEXT,
    recorded_by TEXT
);
INSERT INTO Team_Travel_Environmental_Impact (team_id,travel_date,origin_city,destination_city,travel_mode,distance_km,fuel_consumed_liters,carbon_emissions_kg,passengers,hotel_nights,meals_provided,waste_generated_kg,sustainability_score,offset_credits,travel_manager,airline_name,train_operator,bus_company,carbon_offset_program,notes,recorded_by) VALUES (7,'2025-04-10','Madrid','London','Air',1265,2200.5,5900.0,23,2,46,12.4,0.78,150,'Luis Garcia','AirEuro','-','-','CarbonNeutralTravel','Standard Euro flight','Marta Lopez');
INSERT INTO Team_Travel_Environmental_Impact (team_id,travel_date,origin_city,destination_city,travel_mode,distance_km,fuel_consumed_liters,carbon_emissions_kg,passengers,hotel_nights,meals_provided,waste_generated_kg,sustainability_score,offset_credits,travel_manager,airline_name,train_operator,bus_company,carbon_offset_program,notes,recorded_by) VALUES (8,'2025-04-12','Berlin','Munich','Train',585,45.0,120.0,21,1,21,5.1,0.92,80,'Klara Schmidt','-','DeutscheRail','-','GreenRailProgram','High‑speed train leg','Jens Bauer');
INSERT INTO Team_Travel_Environmental_Impact (team_id,travel_date,origin_city,destination_city,travel_mode,distance_km,fuel_consumed_liters,carbon_emissions_kg,passengers,hotel_nights,meals_provided,waste_generated_kg,sustainability_score,offset_credits,travel_manager,airline_name,train_operator,bus_company,carbon_offset_program,notes,recorded_by) VALUES (9,'2025-04-14','Rome','Naples','Bus',225,30.0,80.0,20,0,20,3.8,0.65,30,'Marco Russo','-','-','ItaliaBus','CarbonFreeBus','Regional bus tour','Sofia Conti');

-- Fan digital asset transaction log
CREATE TABLE Fan_Digital_Asset_Transactions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    asset_type TEXT,
    asset_id TEXT,
    transaction_type TEXT,
    transaction_date TEXT,
    price_usd INTEGER,
    platform TEXT,
    wallet_address TEXT,
    transaction_status TEXT,
    gas_fee_usd REAL,
    token_symbol TEXT,
    token_amount REAL,
    verification_status TEXT,
    nft_metadata_url TEXT,
    marketplace TEXT,
    seller_id INTEGER,
    buyer_id INTEGER,
    royalty_percentage REAL,
    royalty_recipient_id INTEGER,
    notes TEXT,
    created_at TEXT
);
INSERT INTO Fan_Digital_Asset_Transactions (fan_id,asset_type,asset_id,transaction_type,transaction_date,price_usd,platform,wallet_address,transaction_status,gas_fee_usd,token_symbol,token_amount,verification_status,nft_metadata_url,marketplace,seller_id,buyer_id,royalty_percentage,royalty_recipient_id,notes,created_at) VALUES (301,'NFT','NFT001','Purchase','2025-05-01',150,'OpenSea','0xabc123def456','Confirmed',0.02,'ETH',0.08,'Verified','https://meta.example.com/nft001','OpenSea',0,301,5.0,401,'First club collectible','2025-05-01');
INSERT INTO Fan_Digital_Asset_Transactions (fan_id,asset_type,asset_id,transaction_type,transaction_date,price_usd,platform,wallet_address,transaction_status,gas_fee_usd,token_symbol,token_amount,verification_status,nft_metadata_url,marketplace,seller_id,buyer_id,royalty_percentage,royalty_recipient_id,notes,created_at) VALUES (302,'Token','TOKENA','Sale','2025-05-03',0,'Uniswap','0xdef789ghi012','Confirmed',0.005,'USDC',10.0,'Verified','-','Uniswap',302,0,0.0,0,'Liquidity provision','2025-05-03');
INSERT INTO Fan_Digital_Asset_Transactions (fan_id,asset_type,asset_id,transaction_type,transaction_date,price_usd,platform,wallet_address,transaction_status,gas_fee_usd,token_symbol,token_amount,verification_status,nft_metadata_url,marketplace,seller_id,buyer_id,royalty_percentage,royalty_recipient_id,notes,created_at) VALUES (303,'NFT','NFT045','Transfer','2025-05-05',0,'Rarible','0xghi345jkl678','Pending',0.01,'ETH',0.05,'Pending','https://meta.example.com/nft045','Rarible',303,0,2.5,401,'Gift to friend','2025-05-05');

-- Club crowdfunding campaigns
CREATE TABLE Club_Crowdfunding_Campaigns (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    campaign_name TEXT,
    launch_date TEXT,
    end_date TEXT,
    goal_amount_usd INTEGER,
    amount_raised_usd INTEGER,
    backer_count INTEGER,
    tier_basic_price INTEGER,
    tier_premium_price INTEGER,
    reward_description TEXT,
    platform TEXT,
    campaign_status TEXT,
    video_url TEXT,
    social_shares INTEGER,
    email_subscribers INTEGER,
    average_donation_usd REAL,
    top_backer_id INTEGER,
    matching_donor_id INTEGER,
    compliance_reviewed INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Club_Crowdfunding_Campaigns (club_id,campaign_name,launch_date,end_date,goal_amount_usd,amount_raised_usd,backer_count,tier_basic_price,tier_premium_price,reward_description,platform,campaign_status,video_url,social_shares,email_subscribers,average_donation_usd,top_backer_id,matching_donor_id,compliance_reviewed,notes,created_at,updated_at) VALUES (5,'Youth Academy Expansion','2025-02-01','2025-06-30',500000,210000,420,50,200,'Signed jersey + tour','Kickstarter','Active','https://vid.example.com/academy','800','1200',500.0,789,0,1,'Mid‑campaign boost','2025-02-02','2025-02-02');
INSERT INTO Club_Crowdfunding_Campaigns (club_id,campaign_name,launch_date,end_date,goal_amount_usd,amount_raised_usd,backer_count,tier_basic_price,tier_premium_price,reward_description,platform,campaign_status,video_url,social_shares,email_subscribers,average_donation_usd,top_backer_id,matching_donor_id,compliance_reviewed,notes,created_at,updated_at) VALUES (6,'Stadium LED Upgrade','2025-03-15','2025-08-15',750000,430000,680,75,300,'LED bracelet + name engraving','Indiegogo','Active','https://vid.example.com/led','950','1600',630.0,945,1,1,'Reached 57% target','2025-03-16','2025-03-16');
INSERT INTO Club_Crowdfunding_Campaigns (club_id,campaign_name,launch_date,end_date,goal_amount_usd,amount_raised_usd,backer_count,tier_basic_price,tier_premium_price,reward_description,platform,campaign_status,video_url,social_shares,email_subscribers,average_donation_usd,top_backer_id,matching_donor_id,compliance_reviewed,notes,created_at,updated_at) VALUES (7,'Community Outreach Program','2025-04-10','2025-09-10',300000,190000,310,30,150,'Volunteer day + thank‑you kit','GoFundMe','Active','https://vid.example.com/outreach','700','900',612.9,512,0,1','Strong early interest','2025-04-11','2025-04-11');

-- Stadium special event schedule
CREATE TABLE Stadium_Special_Event_Schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    event_name TEXT,
    event_type TEXT,
    start_datetime TEXT,
    end_datetime TEXT,
    organizer TEXT,
    expected_attendance INTEGER,
    ticket_price_usd INTEGER,
    sponsorship_amount_usd INTEGER,
    security_level TEXT,
    special_requirements TEXT,
    catering_provider TEXT,
    acoustic_plan TEXT,
    lighting_design TEXT,
    stage_setup TEXT,
    insurance_provider TEXT,
    insurance_amount_usd INTEGER,
    marketing_budget_usd INTEGER,
    ticket_sales_channel TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Stadium_Special_Event_Schedule (stadium_id,event_name,event_type,start_datetime,end_datetime,organizer,expected_attendance,ticket_price_usd,sponsorship_amount_usd,security_level,special_requirements,catering_provider,acoustic_plan,lighting_design,stage_setup,insurance_provider,insurance_amount_usd,marketing_budget_usd,ticket_sales_channel,notes,created_at,updated_at) VALUES (11,'Summer Music Fest','Concert','2025-07-10 16:00','2025-07-10 22:00','LiveNation',30000,85,120000,'High','Noise curfew compliance','FoodCo','Professional','Laser','OpenAir','SecureInsure',500000,200000,'Online','Family friendly zone','2025-04-01','2025-04-01');
INSERT INTO Stadium_Special_Event_Schedule (stadium_id,event_name,event_type,start_datetime,end_datetime,organizer,expected_attendance,ticket_price_usd,sponsorship_amount_usd,security_level,special_requirements,catering_provider,acoustic_plan,lighting_design,stage_setup,insurance_provider,insurance_amount_usd,marketing_budget_usd,ticket_sales_channel,notes,created_at,updated_at) VALUES (12,'International Expo 2025','Exhibition','2025-09-01 09:00','2025-09-15 18:00','ExpoOrg',50000,30,250000,'Medium','Multilingual signage','CaterPlus','Ambient','LED','Modular','ExpoGuard',750000,300000,'BoxOffice','Trade show layout','2025-04-05','2025-04-05');
INSERT INTO Stadium_Special_Event_Schedule (stadium_id,event_name,event_type,start_datetime,end_datetime,organizer,expected_attendance,ticket_price_usd,sponsorship_amount_usd,security_level,special_requirements,catering_provider,acoustic_plan,lighting_design,stage_setup,insurance_provider,insurance_amount_usd,marketing_budget_usd,ticket_sales_channel,notes,created_at,updated_at) VALUES (13,'Charity Football Match','Sport','2025-12-05 14:00','2025-12-05 18:00','CharityOrg',12000,50,80000,'Low','VIP hospitality','CharityCater','Standard','Spotlight','Temporary','CharityInsure',200000,80000,'MobileApp','All proceeds to charity','2025-04-10','2025-04-10');

-- Match referee review notes
CREATE TABLE Match_Referee_Review_Notes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    referee_id INTEGER,
    review_date TEXT,
    overall_score INTEGER,
    decision_accuracy_score INTEGER,
    fitness_score INTEGER,
    positioning_score INTEGER,
    communication_score INTEGER,
    disciplinary_actions INTEGER,
    video_assistance_used INTEGER,
    notes TEXT,
    recommendations TEXT,
    reviewer_name TEXT,
    review_status TEXT,
    follow_up_action TEXT,
    penalty_decisions INTEGER,
    offside_calls INTEGER,
    yellow_cards_given INTEGER,
    red_cards_given INTEGER,
    fan_complaint_count INTEGER,
    media_criticism_score REAL,
    created_at TEXT
);
INSERT INTO Match_Referee_Review_Notes (match_id,referee_id,review_date,overall_score,decision_accuracy_score,fitness_score,positioning_score,communication_score,disciplinary_actions,video_assistance_used,notes,recommendations,reviewer_name,review_status,follow_up_action,penalty_decisions,offside_calls,yellow_cards_given,red_cards_given,fan_complaint_count,media_criticism_score,created_at) VALUES (2001,401,'2025-04-21',88,92,85,90,87,3,1,'Strong performance overall','Maintain current training regimen','John Smith','Completed','None',2,5,3,0,1,0.12,'2025-04-22');
INSERT INTO Match_Referee_Review_Notes (match_id,referee_id,review_date,overall_score,decision_accuracy_score,fitness_score,positioning_score,communication_score,disciplinary_actions,video_assistance_used,notes,recommendations,reviewer_name,review_status,follow_up_action,penalty_decisions,offside_calls,yellow_cards_given,red_cards_given,fan_complaint_count,media_criticism_score,created_at) VALUES (2002,402,'2025-04-22',76,70,80,68,73,4,0,'Several missed off‑side calls','Increase focus on positioning drills','Emma Lee','InProgress','Video review session','1',8,5,1,4,0.35,'2025-04-23');
INSERT INTO Match_Referee_Review_Notes (match_id,referee_id,review_date,overall_score,decision_accuracy_score,fitness_score,positioning_score,communication_score,disciplinary_actions,video_assistance_used,notes,recommendations,reviewer_name,review_status,follow_up_action,penalty_decisions,offside_calls,yellow_cards_given,red_cards_given,fan_complaint_count,media_criticism_score,created_at) VALUES (2003,403,'2025-04-23',82,85,78,84,80,2,1,'Good communication, but fatigue evident late in game','Implement cardio conditioning program','Luis Gomez','Completed','Fitness monitoring','0',6,4,0,2,0.22,'2025-04-24');