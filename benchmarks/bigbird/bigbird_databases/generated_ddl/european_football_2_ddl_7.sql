-- Club Community Projects
CREATE TABLE Club_Community_Projects (
    project_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    project_name TEXT,
    start_date TEXT,
    end_date TEXT,
    budget_usd INTEGER,
    volunteers_needed INTEGER,
    volunteers_actual INTEGER,
    target_beneficiaries INTEGER,
    actual_beneficiaries INTEGER,
    project_type TEXT,
    community_area TEXT,
    description TEXT,
    status TEXT,
    partner_organization TEXT,
    total_hours INTEGER,
    funds_raised_usd INTEGER,
    media_coverage_links TEXT,
    outcome_rating INTEGER,
    sustainability_score INTEGER
);

INSERT INTO Club_Community_Projects (club_id,project_name,start_date,end_date,budget_usd,volunteers_needed,volunteers_actual,target_beneficiaries,actual_beneficiaries,project_type,community_area,description,status,partner_organization,total_hours,funds_raised_usd,media_coverage_links,outcome_rating,sustainability_score) VALUES (1,'YouthSportsCamp','2023-06-01','2023-08-15',50000,100,95,2000,1900,'Camp','NorthDistrict','Summer sports camp for children','Completed','LocalCouncil',3000,20000,'http://news.example.com/camp','9','8');
INSERT INTO Club_Community_Projects (club_id,project_name,start_date,end_date,budget_usd,volunteers_needed,volunteers_actual,target_beneficiaries,actual_beneficiaries,project_type,community_area,description,status,partner_organization,total_hours,funds_raised_usd,media_coverage_links,outcome_rating,sustainability_score) VALUES (2,'StadiumRenovation','2024-01-10','2024-12-20',250000,50,45,0,0,'Renovation','EastSide','Upgrade seating and facilities','InProgress','BuildCo',1200,50000,'http://news.example.com/reno','7','9');
INSERT INTO Club_Community_Projects (club_id,project_name,start_date,end_date,budget_usd,volunteers_needed,volunteers_actual,target_beneficiaries,actual_beneficiaries,project_type,community_area,description,status,partner_organization,total_hours,funds_raised_usd,media_coverage_links,outcome_rating,sustainability_score) VALUES (3,'HealthAwarenessRun','2023-09-05','2023-09-05',15000,30,30,5000,5000,'Event','CityCenter','5k run promoting healthy lifestyle','Completed','HealthOrg',600,10000,'http://news.example.com/run','8','7');

-- International Friendlies Schedule
CREATE TABLE International_Friendlies_Schedule (
    friendly_id INTEGER PRIMARY KEY AUTOINCREMENT,
    home_team_api_id INTEGER,
    away_team_api_id INTEGER,
    match_date TEXT,
    venue TEXT,
    city TEXT,
    country TEXT,
    match_type TEXT,
    attendance_estimate INTEGER,
    broadcast_network TEXT,
    referee_id INTEGER,
    weather_conditions TEXT,
    kickoff_time TEXT,
    ticket_price_avg_usd INTEGER,
    sponsorship_brand TEXT,
    match_status TEXT,
    notes TEXT,
    home_team_score INTEGER,
    away_team_score INTEGER,
    fan_engagement_score INTEGER
);

INSERT INTO International_Friendlies_Schedule (home_team_api_id,away_team_api_id,match_date,venue,city,country,match_type,attendance_estimate,broadcast_network,referee_id,weather_conditions,kickoff_time,ticket_price_avg_usd,sponsorship_brand,match_status,notes,home_team_score,away_team_score,fan_engagement_score) VALUES (2020,3030,'2023-07-12','NationalStadium','Lisbon','Portugal','Friendly',35000,'EuroSports',400,'Sunny','18:00',75,'BrandA','Completed','First friendly of season',2,1,85);
INSERT INTO International_Friendlies_Schedule (home_team_api_id,away_team_api_id,match_date,venue,city,country,match_type,attendance_estimate,broadcast_network,referee_id,weather_conditions,kickoff_time,ticket_price_avg_usd,sponsorship_brand,match_status,notes,home_team_score,away_team_score,fan_engagement_score) VALUES (4040,5050,'2023-09-03','CityArena','Seoul','SouthKorea','Friendly',42000,'AsiaLive',420,'Clear','20:30',90,'BrandB','Scheduled','To be played under lights',NULL,NULL,NULL);
INSERT INTO International_Friendlies_Schedule (home_team_api_id,away_team_api_id,match_date,venue,city,country,match_type,attendance_estimate,broadcast_network,referee_id,weather_conditions,kickoff_time,ticket_price_avg_usd,sponsorship_brand,match_status,notes,home_team_score,away_team_score,fan_engagement_score) VALUES (6060,7070,'2023-11-21','GrandStadium','MexicoCity','Mexico','Friendly',50000,'LatamTV',440,'Rain','16:45',85,'BrandC','Postponed','Heavy rain forecast',NULL,NULL,NULL);

-- Referee Performance Stats
CREATE TABLE Referee_Performance_Stats (
    performance_id INTEGER PRIMARY KEY AUTOINCREMENT,
    referee_id INTEGER,
    match_id INTEGER,
    decisions_correct INTEGER,
    fouls_called INTEGER,
    yellow_cards INTEGER,
    red_cards INTEGER,
    offsides_correct INTEGER,
    var_used INTEGER,
    average_decision_time_sec REAL,
    fitness_score INTEGER,
    stress_level INTEGER,
    team_feedback_score INTEGER,
    fan_feedback_score INTEGER,
    weather_impact TEXT,
    travel_distance_km INTEGER,
    accommodation_quality TEXT,
    meals_provided INTEGER,
    equipment_quality TEXT,
    overall_rating INTEGER,
    comments TEXT
);

INSERT INTO Referee_Performance_Stats (referee_id,match_id,decisions_correct,fouls_called,yellow_cards,red_cards,offsides_correct,var_used,average_decision_time_sec,fitness_score,stress_level,team_feedback_score,fan_feedback_score,weather_impact,travel_distance_km,accommodation_quality,meals_provided,equipment_quality,overall_rating,comments) VALUES (400,1,95,30,3,0,98,1,12.5,88,5,80,70,'Sunny',350,'Good',12,'Excellent',90,'No major issues');
INSERT INTO Referee_Performance_Stats (referee_id,match_id,decisions_correct,fouls_called,yellow_cards,red_cards,offsides_correct,var_used,average_decision_time_sec,fitness_score,stress_level,team_feedback_score,fan_feedback_score,weather_impact,travel_distance_km,accommodation_quality,meals_provided,equipment_quality,overall_rating,comments) VALUES (420,2,88,45,5,1,85,2,15.2,75,7,65,55,'Rainy',520,'Average',10,'Fair',78,'Several controversial calls');
INSERT INTO Referee_Performance_Stats (referee_id,match_id,decisions_correct,fouls_called,yellow_cards,red_cards,offsides_correct,var_used,average_decision_time_sec,fitness_score,stress_level,team_feedback_score,fan_feedback_score,weather_impact,travel_distance_km,accommodation_quality,meals_provided,equipment_quality,overall_rating,comments) VALUES (440,3,92,38,4,0,90,1,13.8,82,6,72,68,'Clear',210,'Excellent',13,'Excellent',85,'Handled high pressure well');

-- Stadium Accessibility Features
CREATE TABLE Stadium_Accessibility_Features (
    feature_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    wheelchair_access TEXT,
    braille_signage TEXT,
    audio_announcements TEXT,
    tactile_paths TEXT,
    accessible_toilets INTEGER,
    parking_spots_disabled INTEGER,
    entrance_width_cm INTEGER,
    ramp_gradient_percent REAL,
    staff_training_hours INTEGER,
    compliance_certified TEXT,
    last_audit_date TEXT,
    improvement_plan TEXT,
    budget_allocated_usd INTEGER,
    vendor_contact TEXT,
    maintenance_schedule TEXT,
    usage_rate_percent INTEGER,
    feedback_score INTEGER,
    incident_reports INTEGER,
    future_upgrades TEXT
);

INSERT INTO Stadium_Accessibility_Features (stadium_id,wheelchair_access,braille_signage,audio_announcements,tactile_paths,accessible_toilets,parking_spots_disabled,entrance_width_cm,ramp_gradient_percent,staff_training_hours,compliance_certified,last_audit_date,improvement_plan,budget_allocated_usd,vendor_contact,maintenance_schedule,usage_rate_percent,feedback_score,incident_reports,future_upgrades) VALUES (10,'Yes','Yes','Yes','Yes',6,12,180,5.0,40,'Yes','2023-03-15','Add more tactile maps',15000,'AccessCo','Quarterly',85,92,2,'Install automatic doors');
INSERT INTO Stadium_Accessibility_Features (stadium_id,wheelchair_access,braille_signage,audio_announcements,tactile_paths,accessible_toilets,parking_spots_disabled,entrance_width_cm,ramp_gradient_percent,staff_training_hours,compliance_certified,last_audit_date,improvement_plan,budget_allocated_usd,vendor_contact,maintenance_schedule,usage_rate_percent,feedback_score,incident_reports,future_upgrades) VALUES (12,'Partial','No','Yes','Partial',4,8,150,7.5,30,'No','2022-11-10','Upgrade signage',20000,'SignCo','Biannual',78,80,5,'Add wheelchair lifts');
INSERT INTO Stadium_Accessibility_Features (stadium_id,wheelchair_access,braille_signage,audio_announcements,tactile_paths,accessible_toilets,parking_spots_disabled,entrance_width_cm,ramp_gradient_percent,staff_training_hours,compliance_certified,last_audit_date,improvement_plan,budget_allocated_usd,vendor_contact,maintenance_schedule,usage_rate_percent,feedback_score,incident_reports,future_upgrades) VALUES (14,'Yes','Yes','Yes','Yes',10,20,200,4.2,50,'Yes','2023-07-01','Routine review',25000,'AllAccess','Monthly',92,95,1,'Expand parking area');

-- Team Merchandise Designs
CREATE TABLE Team_Merchandise_Designs (
    design_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    season TEXT,
    category TEXT,
    primary_color TEXT,
    secondary_color TEXT,
    design_name TEXT,
    designer TEXT,
    release_date TEXT,
    units_produced INTEGER,
    units_sold INTEGER,
    revenue_usd INTEGER,
    material TEXT,
    size_range TEXT,
    popularity_score INTEGER,
    limited_edition_flag INTEGER,
    online_only_flag INTEGER,
    retail_stores_count INTEGER,
    marketing_budget_usd INTEGER,
    sustainability_rating INTEGER
);

INSERT INTO Team_Merchandise_Designs (team_id,season,category,primary_color,secondary_color,design_name,designer,release_date,units_produced,units_sold,revenue_usd,material,size_range,popularity_score,limited_edition_flag,online_only_flag,retail_stores_count,marketing_budget_usd,sustainability_rating) VALUES (1,'2023/24','Jersey','Blue','White','SkyWave','DesignCo','2023-08-01',10000,8500,1275000,'Polyester','S-M-XL','88',0,0,150,50000,'B');
INSERT INTO Team_Merchandise_Designs (team_id,season,category,primary_color,secondary_color,design_name,designer,release_date,units_produced,units_sold,revenue_usd,material,size_range,popularity_score,limited_edition_flag,online_only_flag,retail_stores_count,marketing_budget_usd,sustainability_rating) VALUES (2,'2023/24','Scarf','Red','Black','FireLoop','CreativeInc','2023-07-15',15000,14000,840000,'Wool','All','92',1,0,80,40000,'A');
INSERT INTO Team_Merchandise_Designs (team_id,season,category,primary_color,secondary_color,design_name,designer,release_date,units_produced,units_sold,revenue_usd,material,size_range,popularity_score,limited_edition_flag,online_only_flag,retail_stores_count,marketing_budget_usd,sustainability_rating) VALUES (3,'2023/24','Hat','Green','Yellow','SunCap','BrandStudio','2023-09-05',8000,7500,562500,'Cotton','M-L-XL','85',0,1,60,30000,'C');

-- Player Endorsement Deals
CREATE TABLE Player_Endorsement_Deals (
    deal_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    brand_name TEXT,
    product_category TEXT,
    start_date TEXT,
    end_date TEXT,
    contract_value_usd INTEGER,
    exclusivity_flag INTEGER,
    performance_bonus_usd INTEGER,
    appearance_fee_usd INTEGER,
    social_media_posts_per_month INTEGER,
    tv_spots_per_year INTEGER,
    event_appearances_per_year INTEGER,
    clause_termination TEXT,
    renewal_option TEXT,
    region TEXT,
    campaign_theme TEXT,
    compliance_audit_score INTEGER,
    fan_engagement_increment INTEGER,
    total_impressions INTEGER
);

INSERT INTO Player_Endorsement_Deals (player_id,brand_name,product_category,start_date,end_date,contract_value_usd,exclusivity_flag,performance_bonus_usd,appearance_fee_usd,social_media_posts_per_month,tv_spots_per_year,event_appearances_per_year,clause_termination,renewal_option,region,campaign_theme,compliance_audit_score,fan_engagement_increment,total_impressions) VALUES (101,'SportCo','Footwear','2023-01-01','2025-12-31',3000000,1,200000,50000,8,12,15,'PerformanceClause','AutoRenew','Europe','RunFaster',92,5,15000000);
INSERT INTO Player_Endorsement_Deals (player_id,brand_name,product_category,start_date,end_date,contract_value_usd,exclusivity_flag,performance_bonus_usd,appearance_fee_usd,social_media_posts_per_month,tv_spots_per_year,event_appearances_per_year,clause_termination,renewal_option,region,campaign_theme,compliance_audit_score,fan_engagement_increment,total_impressions) VALUES (202,'GearMax','Apparel','2022-06-01','2024-05-31',1800000,0,120000,30000,5,6,10,'InjuryClause','Negotiable','Asia','PlayBold',88,3,9000000);
INSERT INTO Player_Endorsement_Deals (player_id,brand_name,product_category,start_date,end_date,contract_value_usd,exclusivity_flag,performance_bonus_usd,appearance_fee_usd,social_media_posts_per_month,tv_spots_per_year,event_appearances_per_year,clause_termination,renewal_option,region,campaign_theme,compliance_audit_score,fan_engagement_increment,total_impressions) VALUES (303,'EnergyPlus','Beverage','2023-03-15','2026-03-14',2500000,1,150000,40000,7,10,12,'MarketingClause','AutoRenew','NorthAmerica','FuelYourGame',90,4,12000000);

-- League Broadcast Viewership
CREATE TABLE League_Broadcast_Viewership (
    view_id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    round_number INTEGER,
    broadcast_network TEXT,
    average_viewers_millions REAL,
    peak_viewers_millions REAL,
    market_share_percent REAL,
    online_streams_millions REAL,
    duration_minutes INTEGER,
    ad_revenue_musd REAL,
    subscription_revenue_musd REAL,
    demographic_18_24_percent REAL,
    demographic_25_34_percent REAL,
    demographic_35_44_percent REAL,
    demographic_45_plus_percent REAL,
    region TEXT,
    broadcast_quality TEXT,
    comments TEXT,
    data_source TEXT
);

INSERT INTO League_Broadcast_Viewership (league_id,season,round_number,broadcast_network,average_viewers_millions,peak_viewers_millions,market_share_percent,online_streams_millions,duration_minutes,ad_revenue_musd,subscription_revenue_musd,demographic_18_24_percent,demographic_25_34_percent,demographic_35_44_percent,demographic_45_plus_percent,region,broadcast_quality,comments,data_source) VALUES (1,'2023/24',5,'GlobalSports',12.5,18.2,22.0,8.4,210,4.7,2.3,30.0,35.0,20.0,15.0,'Europe','HD','Strong growth in online viewers','InternalAnalytics');
INSERT INTO League_Broadcast_Viewership (league_id,season,round_number,broadcast_network,average_viewers_millions,peak_viewers_millions,market_share_percent,online_streams_millions,duration_minutes,ad_revenue_musd,subscription_revenue_musd,demographic_18_24_percent,demographic_25_34_percent,demographic_35_44_percent,demographic_45_plus_percent,region,broadcast_quality,comments,data_source) VALUES (2,'2023/24',3,'AsiaLive',9.8,14.5,18.5,7.2,190,3.9,1.8,28.0,33.0,22.0,17.0,'Asia','SD','Peak observed during derby','ThirdPartyReport');
INSERT INTO League_Broadcast_Viewership (league_id,season,round_number,broadcast_network,average_viewers_millions,peak_viewers_millions,market_share_percent,online_streams_millions,duration_minutes,ad_revenue_musd,subscription_revenue_musd,demographic_18_24_percent,demographic_25_34_percent,demographic_35_44_percent,demographic_45_plus_percent,region,broadcast_quality,comments,data_source) VALUES (3,'2023/24',8,'LatamTV',7.2,11.0,15.0,5.5,180,2.8,1.2,25.0,30.0,25.0,20.0,'SouthAmerica','HD','Consistent viewership','InternalAnalytics');

-- Match Incident Details
CREATE TABLE Match_Incident_Details (
    incident_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    minute INTEGER,
    incident_type TEXT,
    player_involved_id INTEGER,
    team_id INTEGER,
    description TEXT,
    penalty_awarded_flag INTEGER,
    card_given INTEGER,
    card_type TEXT,
    video_review_used INTEGER,
    outcome TEXT,
    injury_severity TEXT,
    substitution_made_flag INTEGER,
    replacement_player_id INTEGER,
    location_on_pitch TEXT,
    referee_id INTEGER,
    var_decision TEXT,
    post_match_review TEXT,
    follow_up_action TEXT
);

INSERT INTO Match_Incident_Details (match_id,minute,incident_type,player_involved_id,team_id,description,penalty_awarded_flag,card_given,card_type,video_review_used,outcome,injury_severity,substitution_made_flag,replacement_player_id,location_on_pitch,referee_id,var_decision,post_match_review,follow_up_action) VALUES (1,23,'Foul',102,5,'Late tackle from behind',1,1,'Yellow',1,'Penalty awarded','Minor',0,NULL,'PenaltyBox',400,'PenaltyConfirmed','Reviewed by committee','No further action');
INSERT INTO Match_Incident_Details (match_id,minute,incident_type,player_involved_id,team_id,description,penalty_awarded_flag,card_given,card_type,video_review_used,outcome,injury_severity,substitution_made_flag,replacement_player_id,location_on_pitch,referee_id,var_decision,post_match_review,follow_up_action) VALUES (2,67,'Offside',0,3,'Attacker caught offside',0,0,NULL,0,'Play stopped','None',0,NULL,'Midfield',420,'NotApplicable','Standard review','None');
INSERT INTO Match_Incident_Details (match_id,minute,incident_type,player_involved_id,team_id,description,penalty_awarded_flag,card_given,card_type,video_review_used,outcome,injury_severity,substitution_made_flag,replacement_player_id,location_on_pitch,referee_id,var_decision,post_match_review,follow_up_action) VALUES (3,82,'Handball',215,8,'Unintentional handball in box',1,0,NULL,1,'Penalty awarded','None',1,220,'PenaltyBox',440,'PenaltyConfirmed','Reviewed','Player warned');

-- Training Facility Utilization
CREATE TABLE Training_Facility_Utilization (
    usage_id INTEGER PRIMARY KEY AUTOINCREMENT,
    facility_id INTEGER,
    date TEXT,
    total_sessions INTEGER,
    indoor_sessions INTEGER,
    outdoor_sessions INTEGER,
    average_players_per_session REAL,
    equipment_used_count INTEGER,
    maintenance_issues_reported INTEGER,
    energy_consumption_kwh REAL,
    water_usage_liters REAL,
    staff_on_duty INTEGER,
    security_incidents INTEGER,
    weather_conditions TEXT,
    booking_success_rate_percent REAL,
    overtime_hours REAL,
    feedback_average_score INTEGER,
    cost_per_hour_usd REAL,
    revenue_generated_usd REAL,
    upcoming_maintenance_date TEXT,
    notes TEXT
);

INSERT INTO Training_Facility_Utilization (facility_id,date,total_sessions,indoor_sessions,outdoor_sessions,average_players_per_session,equipment_used_count,maintenance_issues_reported,energy_consumption_kwh,water_usage_liters,staff_on_duty,security_incidents,weather_conditions,booking_success_rate_percent,overtime_hours,feedback_average_score,cost_per_hour_usd,revenue_generated_usd,upcoming_maintenance_date,notes) VALUES (1,'2023-10-12',8,5,3,22.5,45,1,1200.5,3000.0,4,0,'Clear',95.0,2.0,88,75.0,6000.0,'2023-12-01','All sessions ran on time');
INSERT INTO Training_Facility_Utilization (facility_id,date,total_sessions,indoor_sessions,outdoor_sessions,average_players_per_session,equipment_used_count,maintenance_issues_reported,energy_consumption_kwh,water_usage_liters,staff_on_duty,security_incidents,weather_conditions,booking_success_rate_percent,overtime_hours,feedback_average_score,cost_per_hour_usd,revenue_generated_usd,upcoming_maintenance_date,notes) VALUES (2,'2023-10-13',6,2,4,18.0,30,0,950.0,2500.0,3,1,'Rainy',88.0,1.5,82,68.0,4000.0,'2023-11-20','Minor equipment delay');
INSERT INTO Training_Facility_Utilization (facility_id,date,total_sessions,indoor_sessions,outdoor_sessions,average_players_per_session,equipment_used_count,maintenance_issues_reported,energy_consumption_kwh,water_usage_liters,staff_on_duty,security_incidents,weather_conditions,booking_success_rate_percent,overtime_hours,feedback_average_score,cost_per_hour_usd,revenue_generated_usd,upcoming_maintenance_date,notes) VALUES (3,'2023-10-14',10,7,3,25.0,55,2,1350.0,3400.0,5,0,'Clear',97.0,3.0,90,80.0,7500.0,'2024-01-15','High demand day');

-- Fan Purchase History
CREATE TABLE Fan_Purchase_History (
    purchase_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    purchase_date TEXT,
    item_category TEXT,
    item_name TEXT,
    quantity INTEGER,
    unit_price_usd REAL,
    total_price_usd REAL,
    purchase_channel TEXT,
    payment_method TEXT,
    shipping_region TEXT,
    delivery_time_days INTEGER,
    discount_applied_flag INTEGER,
    discount_code TEXT,
    loyalty_points_used INTEGER,
    loyalty_points_earned INTEGER,
    returned_flag INTEGER,
    return_reason TEXT,
    feedback_rating INTEGER,
    comments TEXT
);

INSERT INTO Fan_Purchase_History (fan_id,purchase_date,item_category,item_name,quantity,unit_price_usd,total_price_usd,purchase_channel,payment_method,shipping_region,delivery_time_days,discount_applied_flag,discount_code,loyalty_points_used,loyalty_points_earned,returned_flag,return_reason,feedback_rating,comments) VALUES (1001,'2023-09-05','Jersey','BlueHomeJersey',2,75.0,150.0,'Online','CreditCard','Europe',5,1,'SUMMER20',200,150,0,NULL,9,'Fit and comfortable');
INSERT INTO Fan_Purchase_History (fan_id,purchase_date,item_category,item_name,quantity,unit_price_usd,total_price_usd,purchase_channel,payment_method,shipping_region,delivery_time_days,discount_applied_flag,discount_code,loyalty_points_used,loyalty_points_earned,returned_flag,return_reason,feedback_rating,comments) VALUES (1002,'2023-10-12','Scarf','RedTeamScarf',1,30.0,30.0,'InStore','Cash','Asia',2,0,NULL,0,30,0,NULL,8,'Nice color');
INSERT INTO Fan_Purchase_History (fan_id,purchase_date,item_category,item_name,quantity,unit_price_usd,total_price_usd,purchase_channel,payment_method,shipping_region,delivery_time_days,discount_applied_flag,discount_code,loyalty_points_used,loyalty_points_earned,returned_flag,return_reason,feedback_rating,comments) VALUES (1003,'2023-11-20','Hat','GreenCap',3,25.0,75.0,'Online','PayPal','NorthAmerica',4,1,'WINTER10',150,75,1,'Size too large',5,'Returned, will reorder size M');