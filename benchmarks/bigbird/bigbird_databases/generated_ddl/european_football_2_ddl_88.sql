-- Sponsor campaign performance metrics
CREATE TABLE Sponsor_Campaign_Performance (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    campaign_name TEXT,
    start_date TEXT,
    end_date TEXT,
    budget_usd INTEGER,
    spend_usd INTEGER,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    conversion_rate REAL,
    cpc_usd REAL,
    cpm_usd REAL,
    roi_percent REAL,
    target_audience TEXT,
    region TEXT,
    platform TEXT,
    creative_type TEXT,
    frequency_cap INTEGER,
    view_through_conversions INTEGER,
    click_through_conversions INTEGER,
    brand_awareness_score INTEGER,
    engagement_score INTEGER,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Sponsor_Campaign_Performance (sponsor_id,campaign_name,start_date,end_date,budget_usd,spend_usd,impressions,clicks,conversions,conversion_rate,cpc_usd,cpm_usd,roi_percent,target_audience,region,platform,creative_type,frequency_cap,view_through_conversions,click_through_conversions,brand_awareness_score,engagement_score,created_at,updated_at) VALUES (101,'Winter_Jersey_Promo','2023-11-01','2023-12-31',500000,420000,25000000,18000,1200,0.048,23.33,16.80,15.0,'Adults_18_35','Europe','Social','Video',3,200,150,78,85,'2023-11-01','2023-12-01');
INSERT INTO Sponsor_Campaign_Performance (sponsor_id,campaign_name,start_date,end_date,budget_usd,spend_usd,impressions,clicks,conversions,conversion_rate,cpc_usd,cpm_usd,roi_percent,target_audience,region,platform,creative_type,frequency_cap,view_through_conversions,click_through_conversions,brand_awareness_score,engagement_score,created_at,updated_at) VALUES (102,'Summer_Ticket_Deal','2024-05-01','2024-06-30',300000,275000,18000000,15000,950,0.053,18.33,15.28,12.5,'Fans_25_45','North_America','Display','Banner',2,180,140,82,90,'2024-05-01','2024-06-01');
INSERT INTO Sponsor_Campaign_Performance (sponsor_id,campaign_name,start_date,end_date,budget_usd,spend_usd,impressions,clicks,conversions,conversion_rate,cpc_usd,cpm_usd,roi_percent,target_audience,region,platform,creative_type,frequency_cap,view_through_conversions,click_through_conversions,brand_awareness_score,engagement_score,created_at,updated_at) VALUES (103,'Global_Fan_Engagement','2025-01-01','2025-03-31',800000,750000,40000000,32000,2100,0.055,23.44,18.75,18.0,'All_Fans','Asia','Video','Short_Film',4,400,300,88,92,'2025-01-01','2025-02-15');

-- Annual stadium energy metrics
CREATE TABLE Stadium_Energy_Metrics_Annual (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    year INTEGER,
    total_kwh INTEGER,
    renewable_kwh INTEGER,
    coal_kwh INTEGER,
    natural_gas_kwh INTEGER,
    electricity_cost_usd INTEGER,
    co2_emissions_tons REAL,
    peak_demand_kw INTEGER,
    avg_daily_consumption_kwh REAL,
    solar_capacity_kw REAL,
    wind_capacity_kw REAL,
    battery_storage_mwh REAL,
    energy_efficiency_index REAL,
    water_usage_liters INTEGER,
    waste_recycled_tons REAL,
    hvac_runtime_hours INTEGER,
    lighting_runtime_hours INTEGER,
    maintenance_cost_usd INTEGER,
    sustainability_score INTEGER,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Stadium_Energy_Metrics_Annual (stadium_id,year,total_kwh,renewable_kwh,coal_kwh,natural_gas_kwh,electricity_cost_usd,co2_emissions_tons,peak_demand_kw,avg_daily_consumption_kwh,solar_capacity_kw,wind_capacity_kw,battery_storage_mwh,energy_efficiency_index,water_usage_liters,waste_recycled_tons,hvac_runtime_hours,lighting_runtime_hours,maintenance_cost_usd,sustainability_score,created_at,updated_at) VALUES (201,2023,12000000,8000000,1000000,3000000,1500000,2000.5,2500,328.5,5000,1200,30,0.85,2500000,450.2,4500,6000,120000,88,'2023-01-01','2023-12-31');
INSERT INTO Stadium_Energy_Metrics_Annual (stadium_id,year,total_kwh,renewable_kwh,coal_kwh,natural_gas_kwh,electricity_cost_usd,co2_emissions_tons,peak_demand_kw,avg_daily_consumption_kwh,solar_capacity_kw,wind_capacity_kw,battery_storage_mwh,energy_efficiency_index,water_usage_liters,waste_recycled_tons,hvac_runtime_hours,lighting_runtime_hours,maintenance_cost_usd,sustainability_score,created_at,updated_at) VALUES (202,2023,9500000,6000000,800000,2700000,1190000,1650.3,2200,260.3,3800,900,22,0.81,2100000,380.0,4200,5400,95000,84,'2023-01-01','2023-12-31');
INSERT INTO Stadium_Energy_Metrics_Annual (stadium_id,year,total_kwh,renewable_kwh,coal_kwh,natural_gas_kwh,electricity_cost_usd,co2_emissions_tons,peak_demand_kw,avg_daily_consumption_kwh,solar_capacity_kw,wind_capacity_kw,battery_storage_mwh,energy_efficiency_index,water_usage_liters,waste_recycled_tons,hvac_runtime_hours,lighting_runtime_hours,maintenance_cost_usd,sustainability_score,created_at,updated_at) VALUES (203,2023,13500000,9500000,1500000,2500000,1700000,2105.7,2700,369.9,6200,1500,35,0.89,3000000,500.5,4800,6500,135000,91,'2023-01-01','2023-12-31');

-- Player media presence tracking
CREATE TABLE Player_Media_Presence (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    platform TEXT,
    handle TEXT,
    followers INTEGER,
    posts_last_30d INTEGER,
    avg_likes_per_post INTEGER,
    avg_comments_per_post INTEGER,
    reach_impressions INTEGER,
    engagement_rate REAL,
    verified BOOLEAN,
    last_update TEXT,
    primary_content_type TEXT,
    language TEXT,
    audience_age_group TEXT,
    audience_gender_ratio TEXT,
    sponsored_posts INTEGER,
    organic_posts INTEGER,
    total_video_views INTEGER,
    total_story_views INTEGER,
    hashtag_usage INTEGER,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Player_Media_Presence (player_api_id,platform,handle,followers,posts_last_30d,avg_likes_per_post,avg_comments_per_post,reach_impressions,engagement_rate,verified,last_update,primary_content_type,language,audience_age_group,audience_gender_ratio,sponsored_posts,organic_posts,total_video_views,total_story_views,hashtag_usage,created_at,updated_at) VALUES (1001,'Instagram','player1001ig',250000,12,4800,120,1500000,0.032,1,'2024-03-01','photo','English','18_34','M50_F50',4,8,320000,150000,45,'2024-03-01','2024-03-01');
INSERT INTO Player_Media_Presence (player_api_id,platform,handle,followers,posts_last_30d,avg_likes_per_post,avg_comments_per_post,reach_impressions,engagement_rate,verified,last_update,primary_content_type,language,audience_age_group,audience_gender_ratio,sponsored_posts,organic_posts,total_video_views,total_story_views,hashtag_usage,created_at,updated_at) VALUES (1002,'Twitter','player1002tw',180000,20,3400,80,1200000,0.028,1,'2024-03-01','tweet','Spanish','25_44','M40_F60',6,14,210000,90000,30,'2024-03-01','2024-03-01');
INSERT INTO Player_Media_Presence (player_api_id,platform,handle,followers,posts_last_30d,avg_likes_per_post,avg_comments_per_post,reach_impressions,engagement_rate,verified,last_update,primary_content_type,language,audience_age_group,audience_gender_ratio,sponsored_posts,organic_posts,total_video_views,total_story_views,hashtag_usage,created_at,updated_at) VALUES (1003,'TikTok','player1003tk',500000,25,7200,200,2500000,0.036,1,'2024-03-01','short_video','Portuguese','13_24','M45_F55',7,18,560000,280000,60,'2024-03-01','2024-03-01');

-- Team scouting reports
CREATE TABLE Team_Scouting_Reports (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    scouting_team_id INTEGER,
    opponent_team_id INTEGER,
    match_date TEXT,
    report_author TEXT,
    overall_rating INTEGER,
    tactical_analysis TEXT,
    strengths TEXT,
    weaknesses TEXT,
    key_players TEXT,
    formation_used TEXT,
    possession_percent REAL,
    passing_accuracy REAL,
    shots_on_target INTEGER,
    counter_attack_success REAL,
    defensive_stability REAL,
    set_piece_efficiency REAL,
    player_fitness_score INTEGER,
    injury_risk_score INTEGER,
    morale_score INTEGER,
    weather_conditions TEXT,
    pitch_quality TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Team_Scouting_Reports (scouting_team_id,opponent_team_id,match_date,report_author,overall_rating,tactical_analysis,strengths,weaknesses,key_players,formation_used,possession_percent,passing_accuracy,shots_on_target,counter_attack_success,defensive_stability,set_piece_efficiency,player_fitness_score,injury_risk_score,morale_score,weather_conditions,pitch_quality,created_at,updated_at) VALUES (301,401,'2024-04-12','Scout_Alice',78,'High press, quick transitions','Fast wingers','Lack of aerial duels','PlayerX,PlayerY','4-3-3',54.2,81.5,8,68.0,72.3,45.0,85,12,78,'Clear','Good','2024-04-12','2024-04-13');
INSERT INTO Team_Scouting_Reports (scouting_team_id,opponent_team_id,match_date,report_author,overall_rating,tactical_analysis,strengths,weaknesses,key_players,formation_used,possession_percent,passing_accuracy,shots_on_target,counter_attack_success,defensive_stability,set_piece_efficiency,player_fitness_score,injury_risk_score,morale_score,weather_conditions,pitch_quality,created_at,updated_at) VALUES (302,402,'2024-05-03','Scout_Bob',82,'Controlled possession, high press','Solid defense','Inconsistent finishing','PlayerA,PlayerB','3-5-2',62.0,86.7,12,55.0,78.5,52.0,90,8,84,'Rain','Wet','2024-05-03','2024-05-04');
INSERT INTO Team_Scouting_Reports (scouting_team_id,opponent_team_id,match_date,report_author,overall_rating,tactical_analysis,strengths,weaknesses,key_players,formation_used,possession_percent,passing_accuracy,shots_on_target,counter_attack_success,defensive_stability,set_piece_efficiency,player_fitness_score,injury_risk_score,morale_score,weather_conditions,pitch_quality,created_at,updated_at) VALUES (303,403,'2024-06-15','Scout_Carol',75,'Counter‑attacking, low block','Fast forwards','Weak midfield','PlayerM,PlayerN','4-2-3-1',48.5,78.0,9,73.0,65.2,38.0,80,15,70,'Sunny','Dry','2024-06-15','2024-06-16');

-- League financial forecast
CREATE TABLE League_Financial_Forecast (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    fiscal_year INTEGER,
    total_revenue_usd INTEGER,
    broadcasting_rights_usd INTEGER,
    sponsorship_usd INTEGER,
    ticket_sales_usd INTEGER,
    merchandise_usd INTEGER,
    digital_media_usd INTEGER,
    operational_expenses_usd INTEGER,
    player_salary_cap_usd INTEGER,
    club_subsidies_usd INTEGER,
    profit_before_tax_usd INTEGER,
    tax_liability_usd INTEGER,
    net_profit_usd INTEGER,
    avg_club_revenue_usd INTEGER,
    avg_club_expenses_usd INTEGER,
    growth_rate_percent REAL,
    revenue_per_fan_usd REAL,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO League_Financial_Forecast (league_id,fiscal_year,total_revenue_usd,broadcasting_rights_usd,sponsorship_usd,ticket_sales_usd,merchandise_usd,digital_media_usd,operational_expenses_usd,player_salary_cap_usd,club_subsidies_usd,profit_before_tax_usd,tax_liability_usd,net_profit_usd,avg_club_revenue_usd,avg_club_expenses_usd,growth_rate_percent,revenue_per_fan_usd,created_at,updated_at) VALUES (1,2024,2500000000,800000000,600000000,900000000,200000000,150000000,1200000000,900000000,50000000,200000000,50000000,150000000,125000000,95000000,5.2,12.5,'2024-01-01','2024-12-31');
INSERT INTO League_Financial_Forecast (league_id,fiscal_year,total_revenue_usd,broadcasting_rights_usd,sponsorship_usd,ticket_sales_usd,merchandise_usd,digital_media_usd,operational_expenses_usd,player_salary_cap_usd,club_subsidies_usd,profit_before_tax_usd,tax_liability_usd,net_profit_usd,avg_club_revenue_usd,avg_club_expenses_usd,growth_rate_percent,revenue_per_fan_usd,created_at,updated_at) VALUES (2,2024,1800000000,500000000,400000000,600000000,150000000,100000000,900000000,650000000,30000000,130000000,35000000,95000000,95000000,72000000,60000000,4.8,10.1,'2024-01-01','2024-12-31');
INSERT INTO League_Financial_Forecast (league_id,fiscal_year,total_revenue_usd,broadcasting_rights_usd,sponsorship_usd,ticket_sales_usd,merchandise_usd,digital_media_usd,operational_expenses_usd,player_salary_cap_usd,club_subsidies_usd,profit_before_tax_usd,tax_liability_usd,net_profit_usd,avg_club_revenue_usd,avg_club_expenses_usd,growth_rate_percent,revenue_per_fan_usd,created_at,updated_at) VALUES (3,2024,900000000,200000000,150000000,250000000,80000000,50000000,450000000,300000000,15000000,65000000,20000000,45000000,50000000,40000000,35000000,3.6,8.2,'2024-01-01','2024-12-31');

-- Match operational resource log
CREATE TABLE Match_Operational_Resource_Log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    resource_type TEXT,
    quantity INTEGER,
    unit_cost_usd INTEGER,
    total_cost_usd INTEGER,
    provider_name TEXT,
    deployment_time TEXT,
    retrieval_time TEXT,
    condition_before TEXT,
    condition_after TEXT,
    notes TEXT,
    logged_by TEXT,
    logged_at TEXT,
    verified BOOLEAN,
    audit_timestamp TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Match_Operational_Resource_Log (match_id,resource_type,quantity,unit_cost_usd,total_cost_usd,provider_name,deployment_time,retrieval_time,condition_before,condition_after,notes,logged_by,logged_at,verified,audit_timestamp,created_at,updated_at) VALUES (10001,'Medical_Tent',3,2000,6000,'HealthCo','2024-03-15 14:00','2024-03-15 19:30','New','Used','Standard medical support','Ops_Manager','2024-03-15 19:45',1,'2024-03-15 20:00','2024-03-15','2024-03-15');
INSERT INTO Match_Operational_Resource_Log (match_id,resource_type,quantity,unit_cost_usd,total_cost_usd,provider_name,deployment_time,retrieval_time,condition_before,condition_after,notes,logged_by,logged_at,verified,audit_timestamp,created_at,updated_at) VALUES (10002,'Portable_Gen',2,3500,7000,'PowerSupplyInc','2024-04-01 10:00','2024-04-01 22:00','Good','Good','Backup power for lighting','Ops_Manager','2024-04-01 22:15',1,'2024-04-01 22:30','2024-04-01','2024-04-01');
INSERT INTO Match_Operational_Resource_Log (match_id,resource_type,quantity,unit_cost_usd,total_cost_usd,provider_name,deployment_time,retrieval_time,condition_before,condition_after,notes,logged_by,logged_at,verified,audit_timestamp,created_at,updated_at) VALUES (10003,'Security_Camera',5,1200,6000,'SecureTech','2024-05-20 08:30','2024-05-20 23:00','Excellent','Excellent','Video coverage of entrances','Ops_Manager','2024-05-20 23:10',1,'2024-05-20 23:20','2024-05-20','2024-05-20');

-- Fan digital token balances
CREATE TABLE Fan_Digital_Token_Balance (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    token_type TEXT,
    balance INTEGER,
    accumulated_rewards INTEGER,
    last_transaction_date TEXT,
    last_reward_date TEXT,
    wallet_address TEXT,
    blockchain_network TEXT,
    status TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Fan_Digital_Token_Balance (fan_id,token_type,balance,accumulated_rewards,last_transaction_date,last_reward_date,wallet_address,blockchain_network,status,created_at,updated_at) VALUES (5001,'FanCoin',1250,300,'2024-03-20','2024-03-15','0xabc123def456','Ethereum','active','2024-01-01','2024-03-20');
INSERT INTO Fan_Digital_Token_Balance (fan_id,token_type,balance,accumulated_rewards,last_transaction_date,last_reward_date,wallet_address,blockchain_network,status,created_at,updated_at) VALUES (5002,'FanCoin',860,150,'2024-04-05','2024-04-01','0xdef789abc012','Polygon','active','2024-01-01','2024-04-05');
INSERT INTO Fan_Digital_Token_Balance (fan_id,token_type,balance,accumulated_rewards,last_transaction_date,last_reward_date,wallet_address,blockchain_network,status,created_at,updated_at) VALUES (5003,'FanCoin',430,75,'2024-02-28','2024-02-20','0x123abc456def','Binance','inactive','2024-01-01','2024-02-28');

-- Training camp infrastructure details
CREATE TABLE Training_Camp_Infrastructure_Detail (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    camp_id INTEGER,
    facility_name TEXT,
    facility_type TEXT,
    capacity INTEGER,
    surface_type TEXT,
    lighting_level_lux INTEGER,
    climate_control BOOLEAN,
    year_built INTEGER,
    renovation_year INTEGER,
    gps_coverage BOOLEAN,
    security_level TEXT,
    maintenance_cost_usd INTEGER,
    operational_cost_usd INTEGER,
    avg_daily_usage_hours REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Training_Camp_Infrastructure_Detail (camp_id,facility_name,facility_type,capacity,surface_type,lighting_level_lux,climate_control,year_built,renovation_year,gps_coverage,security_level,maintenance_cost_usd,operational_cost_usd,avg_daily_usage_hours,notes,created_at,updated_at) VALUES (601,'Main_Field','Pitch',5000,'Hybrid_Grass',2500,1,2015,2022,1,'High',120000,80000,10.5,'Primary training pitch','2024-01-01','2024-01-01');
INSERT INTO Training_Camp_Infrastructure_Detail (camp_id,facility_name,facility_type,capacity,surface_type,lighting_level_lux,climate_control,year_built,renovation_year,gps_coverage,security_level,maintenance_cost_usd,operational_cost_usd,avg_daily_usage_hours,notes,created_at,updated_at) VALUES (602,'Gymnasium','Indoor_Gym',200,'Rubber_Floor',0,1,2012,2020,0,'Medium',80000,50000,8.0,'Strength and conditioning area','2024-01-01','2024-01-01');
INSERT INTO Training_Camp_Infrastructure_Detail (camp_id,facility_name,facility_type,capacity,surface_type,lighting_level_lux,climate_control,year_built,renovation_year,gps_coverage,security_level,maintenance_cost_usd,operational_cost_usd,avg_daily_usage_hours,notes,created_at,updated_at) VALUES (603,'Recovery_Center','Medical',50,'N/A',0,1,2018,2021,0,'High',60000,40000,6.0,'Physiotherapy and hydrotherapy','2024-01-01','2024-01-01');

-- Medical treatment protocol records
CREATE TABLE Medical_Treatment_Protocol (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    injury_id INTEGER,
    protocol_name TEXT,
    description TEXT,
    steps TEXT,
    required_medication TEXT,
    rehab_duration_days INTEGER,
    specialist_required TEXT,
    approval_status TEXT,
    created_by TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    risk_level TEXT,
    compliance_percent REAL,
    last_review_date TEXT,
    version_number INTEGER,
    active BOOLEAN
);

INSERT INTO Medical_Treatment_Protocol (injury_id,protocol_name,description,steps,required_medication,rehab_duration_days,specialist_required,approval_status,created_by,created_at,updated_at,notes,risk_level,compliance_percent,last_review_date,version_number,active) VALUES (701,'ACL_Reconstruction','Surgical repair of anterior cruciate ligament','Step1|Step2|Step3','Painkiller|Antibiotic',180,'Orthopedic_Surgeon','Approved','Dr_Smith','2023-01-10','2023-06-20','Standard protocol for ACL','High',98.5,'2023-12-01',3,1);
INSERT INTO Medical_Treatment_Protocol (injury_id,protocol_name,description,steps,required_medication,rehab_duration_days,specialist_required,approval_status,created_by,created_at,updated_at,notes,risk_level,compliance_percent,last_review_date,version_number,active) VALUES (702,'Hamstring_Strains','Management of hamstring muscle strain','StepA|StepB','AntiInflammatory',30,'Physiotherapist','Approved','Dr_Jones','2022-05-15','2022-11-30','Protocol for grade 2 strains','Medium',95.0,'2022-12-15',2,1);
INSERT INTO Medical_Treatment_Protocol (injury_id,protocol_name,description,steps,required_medication,rehab_duration_days,specialist_required,approval_status,created_by,created_at,updated_at,notes,risk_level,compliance_percent,last_review_date,version_number,active) VALUES (703,'Concussion_Management','Evaluation and monitoring of concussion','StepX|StepY|StepZ','None',14,'Neurologist','Pending','Dr_Lee','2024-02-01','2024-02-10','Requires clearance before return','Low',88.0,'2024-03-01',1,0);

-- Venue accessibility feature details
CREATE TABLE Venue_Accessibility_Feature_Detail (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    feature_name TEXT,
    feature_type TEXT,
    location_description TEXT,
    compliance_standard TEXT,
    installation_year INTEGER,
    last_inspection_date TEXT,
    inspection_status TEXT,
    notes TEXT,
    maintenance_frequency_months INTEGER,
    last_maintenance_date TEXT,
    responsible_department TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Venue_Accessibility_Feature_Detail (venue_id,feature_name,feature_type,location_description,compliance_standard,installation_year,last_inspection_date,inspection_status,notes,maintenance_frequency_months,last_maintenance_date,responsible_department,created_at,updated_at) VALUES (801,'Ramp_A1','Ramp','Main Entrance','ADA','2010','2023-11-20','Pass','Provides wheelchair access','12','2023-11-01','Facilities','2023-01-01','2023-11-20');
INSERT INTO Venue_Accessibility_Feature_Detail (venue_id,feature_name,feature_type,location_description,compliance_standard,installation_year,last_inspection_date,inspection_status,notes,maintenance_frequency_months,last_maintenance_date,responsible_department,created_at,updated_at) VALUES (802,'Elevator_E2','Elevator','Upper Tier Access','ADA','2015','2023-10-15','Pass','Serves all levels','6','2023-10-01','Facilities','2015-01-01','2023-10-15');
INSERT INTO Venue_Accessibility_Feature_Detail (venue_id,feature_name,feature_type,location_description,compliance_standard,installation_year,last_inspection_date,inspection_status,notes,maintenance_frequency_months,last_maintenance_date,responsible_department,created_at,updated_at) VALUES (803,'Braille_Signage_B3','Signage','Restroom Area','ADA','2018','2023-12-05','Pass','Braille directions for restroom','12','2023-11-20','Facilities','2018-01-01','2023-12-05');

-- Medical treatment procedures (different from protocol)
CREATE TABLE Medical_Treatment_Procedures (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    procedure_code TEXT,
    procedure_name TEXT,
    department TEXT,
    average_duration_minutes INTEGER,
    required_equipment TEXT,
    cost_estimate_usd INTEGER,
    sedation_required BOOLEAN,
    recovery_time_days INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Medical_Treatment_Procedures (procedure_code,procedure_name,department,average_duration_minutes,required_equipment,cost_estimate_usd,sedation_required,recovery_time_days,notes,created_at,updated_at) VALUES ('MT001','Joint_Injection','Orthopedics',30,'Syringe|Ultrasound',250,0,2,'Corticosteroid injection for knee pain','2023-02-01','2023-02-01');
INSERT INTO Medical_Treatment_Procedures (procedure_code,procedure_name,department,average_duration_minutes,required_equipment,cost_estimate_usd,sedation_required,recovery_time_days,notes,created_at,updated_at) VALUES ('MT002','Physiotherapy_Session','Physiotherapy',45,'Massage_Table|Resistance_Bands',120,0,0,'Standard rehab session','2023-03-15','2023-03-15');
INSERT INTO Medical_Treatment_Procedures (procedure_code,procedure_name,department,average_duration_minutes,required_equipment,cost_estimate_usd,sedation_required,recovery_time_days,notes,created_at,updated_at) VALUES ('MT003','MRI_Scan','Radiology',60,'MRI_Machine',800,0,0,'Imaging for soft tissue assessment','2023-04-10','2023-04-10');

-- Sponsor contract milestones
CREATE TABLE Sponsor_Contract_Milestones (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    contract_id INTEGER,
    milestone_name TEXT,
    due_date TEXT,
    completion_date TEXT,
    status TEXT,
    penalty_amount_usd INTEGER,
    bonus_amount_usd INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Sponsor_Contract_Milestones (sponsor_id,contract_id,milestone_name,due_date,completion_date,status,penalty_amount_usd,bonus_amount_usd,notes,created_at,updated_at) VALUES (101,1001,'Logo_Placement_Start','2024-01-15','2024-01-14','Completed',0,5000,'All branding displayed on kits','2024-01-01','2024-01-15');
INSERT INTO Sponsor_Contract_Milestones (sponsor_id,contract_id,milestone_name,due_date,completion_date,status,penalty_amount_usd,bonus_amount_usd,notes,created_at,updated_at) VALUES (102,1002,'Social_Media_Campaign','2024-03-01','2024-03-05','Completed',2000,0,'Missed launch by 4 days','2024-02-15','2024-03-05');
INSERT INTO Sponsor_Contract_Milestones (sponsor_id,contract_id,milestone_name,due_date,completion_date,status,penalty_amount_usd,bonus_amount_usd,notes,created_at,updated_at) VALUES (103,1003,'Stadium_Signage_Installation','2024-05-10','2024-05-09','Completed',0,8000,'All signage installed ahead of schedule','2024-04-20','2024-05-10');

-- Player language proficiency records
CREATE TABLE Player_Language_Proficiency (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    language TEXT,
    proficiency_level TEXT,
    certification TEXT,
    last_assessment_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Player_Language_Proficiency (player_api_id,language,proficiency_level,certification,last_assessment_date,notes,created_at,updated_at) VALUES (1001,'English','Native','IELTS_9','2024-02-01','Primary communication language','2024-01-01','2024-02-01');
INSERT INTO Player_Language_Proficiency (player_api_id,language,proficiency_level,certification,last_assessment_date,notes,created_at,updated_at) VALUES (1002,'Spanish','Fluent','DELE_C2','2024-01-15','Used for media interviews','2024-01-01','2024-01-15');
INSERT INTO Player_Language_Proficiency (player_api_id,language,proficiency_level,certification,last_assessment_date,notes,created_at,updated_at) VALUES (1003,'German','Intermediate','Goethe_B2','2023-12-20','Basic conversational ability','2023-12-01','2023-12-20');

-- Training center equipment utilization logs
CREATE TABLE Training_Center_Equipment_Utilization_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    equipment_id INTEGER,
    equipment_name TEXT,
    usage_date TEXT,
    usage_hours REAL,
    user_role TEXT,
    maintenance_required BOOLEAN,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Training_Center_Equipment_Utilization_Logs (equipment_id,equipment_name,usage_date,usage_hours,user_role,maintenance_required,notes,created_at,updated_at) VALUES (901,'Treadmill_01','2024-03-10',2.5,'StrengthCoach',0,'Routine cardio session','2024-03-10','2024-03-10');
INSERT INTO Training_Center_Equipment_Utilization_Logs (equipment_id,equipment_name,usage_date,usage_hours,user_role,maintenance_required,notes,created_at,updated_at) VALUES (902,'Smart_Plyo_Box','2024-03-11',1.8,'Physio',0,'Plyometric drills','2024-03-11','2024-03-11');
INSERT INTO Training_Center_Equipment_Utilization_Logs (equipment_id,equipment_name,usage_date,usage_hours,user_role,maintenance_required,notes,created_at,updated_at) VALUES (903,'Recovery_Pool','2024-03-12',1.0,'Medical',0,'Hydrotherapy for injured player','2024-03-12','2024-03-12');