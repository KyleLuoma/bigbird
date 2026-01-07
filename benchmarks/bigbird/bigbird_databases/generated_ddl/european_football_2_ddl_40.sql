-- Club brand strategy information
CREATE TABLE Club_Brand_Strategy (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    strategy_name TEXT,
    launch_date TEXT,
    target_audience TEXT,
    budget REAL,
    channels TEXT,
    social_media_focus TEXT,
    influencer_partners TEXT,
    traditional_media_budget REAL,
    digital_media_budget REAL,
    brand_message TEXT,
    tagline TEXT,
    visual_identity TEXT,
    color_palette TEXT,
    logo_version TEXT,
    region_focus TEXT,
    global_flag INTEGER,
    expected_roi REAL,
    kpi_engagement REAL,
    kpi_awareness REAL,
    notes TEXT
);

INSERT INTO Club_Brand_Strategy (club_id,strategy_name,launch_date,target_audience,budget,channels,social_media_focus,influencer_partners,traditional_media_budget,digital_media_budget,brand_message,tagline,visual_identity,color_palette,logo_version,region_focus,global_flag,expected_roi,kpi_engagement,kpi_awareness,notes) VALUES (1,'Global_Fan_Engagement','2023-01-15','Adults',5000000,'TV,Online','Instagram','Influencer_A',2000000,3000000,'Uniting_Fans','One_Club_One_Heart','Modern','Blue_Gold','V2','Europe',1,12.5,85.4,90.2,'Initial rollout');
INSERT INTO Club_Brand_Strategy (club_id,strategy_name,launch_date,target_audience,budget,channels,social_media_focus,influencer_partners,traditional_media_budget,digital_media_budget,brand_message,tagline,visual_identity,color_palette,logo_version,region_focus,global_flag,expected_roi,kpi_engagement,kpi_awareness,notes) VALUES (2,'Youth_Activation','2023-06-01','Teens',2500000,'Social,Events','TikTok','Influencer_B',800000,1200000,'Future_Stars','Play_Bold','Dynamic','Red_Black','V1','North_America',0,8.2,78.1,82.5,'Focus on academies');
INSERT INTO Club_Brand_Strategy (club_id,strategy_name,launch_date,target_audience,budget,channels,social_media_focus,influencer_partners,traditional_media_budget,digital_media_budget,brand_message,tagline,visual_identity,color_palette,logo_version,region_focus,global_flag,expected_roi,kpi_engagement,kpi_awareness,notes) VALUES (3,'Heritage_Campaign','2024-02-20','All_Fans',1500000,'Print,Radio','Facebook','Influencer_C',600000,400000,'Legacy_and_Pride','Forever_Strong','Classic','Green_White','V3','Asia',0,5.6,65.0,70.1,'Celebrates club history');


-- Stadium sustainability metrics
CREATE TABLE Stadium_Sustainability_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    reporting_year INTEGER,
    energy_consumption_kwh REAL,
    water_usage_cubic_meters REAL,
    waste_generated_tons REAL,
    recycling_rate_percent REAL,
    carbon_emission_tons REAL,
    renewable_energy_pct REAL,
    lighting_efficiency_lux_per_watt REAL,
    hvac_efficiency REAL,
    solar_panel_capacity_kw REAL,
    rainwater_harvest_capacity_liters REAL,
    green_certification_level TEXT,
    sustainability_score REAL,
    initiatives_count INTEGER,
    avg_temperature_celsius REAL,
    humidity_percent REAL,
    noise_level_db REAL,
    maintenance_cost REAL,
    notes TEXT
);

INSERT INTO Stadium_Sustainability_Metrics (stadium_id,reporting_year,energy_consumption_kwh,water_usage_cubic_meters,waste_generated_tons,recycling_rate_percent,carbon_emission_tons,renewable_energy_pct,lighting_efficiency_lux_per_watt,hvac_efficiency,solar_panel_capacity_kw,rainwater_harvest_capacity_liters,green_certification_level,sustainability_score,initiatives_count,avg_temperature_celsius,humidity_percent,noise_level_db,maintenance_cost,notes) VALUES (101,2023,3500000,120000,250,45.3,2100,22.5,120.5,0.85,500,30000,'LEED_Gold',78.4,12,22.5,55,68,150000,'Mid‑season improvements');
INSERT INTO Stadium_Sustainability_Metrics (stadium_id,reporting_year,energy_consumption_kwh,water_usage_cubic_meters,waste_generated_tons,recycling_rate_percent,carbon_emission_tons,renewable_energy_pct,lighting_efficiency_lux_per_watt,hvac_efficiency,solar_panel_capacity_kw,rainwater_harvest_capacity_liters,green_certification_level,sustainability_score,initiatives_count,avg_temperature_celsius,humidity_percent,noise_level_db,maintenance_cost,notes) VALUES (102,2023,2800000,95000,190,52.0,1700,30.0,115.2,0.88,650,40000,'BREEAM_Excellent',83.1,15,21.0,48,62,130000,'Completed retrofit');
INSERT INTO Stadium_Sustainability_Metrics (stadium_id,reporting_year,energy_consumption_kwh,water_usage_cubic_meters,waste_generated_tons,recycling_rate_percent,carbon_emission_tons,renewable_energy_pct,lighting_efficiency_lux_per_watt,hvac_efficiency,solar_panel_capacity_kw,rainwater_harvest_capacity_liters,green_certification_level,sustainability_score,initiatives_count,avg_temperature_celsius,humidity_percent,noise_level_db,maintenance_cost,notes) VALUES (103,2023,4000000,140000,300,38.7,2500,18.0,122.0,0.80,400,25000,'LEED_Silver',71.2,10,23.2,60,70,160000,'Planning phase for solar expansion');


-- League expansion proposals
CREATE TABLE League_Expansion_Proposals (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    proposal_year INTEGER,
    new_teams INTEGER,
    target_countries TEXT,
    market_analysis_score REAL,
    estimated_revenue_million REAL,
    stadium_requirements TEXT,
    broadcasting_rights_impact TEXT,
    fan_base_projection INTEGER,
    sponsorship_potential REAL,
    regulatory_approval_status TEXT,
    timeline_years INTEGER,
    risk_assessment TEXT,
    stakeholder_feedback TEXT,
    budget_allocation REAL,
    approval_votes INTEGER,
    comments TEXT,
    created_by TEXT,
    created_date TEXT,
    last_modified TEXT
);

INSERT INTO League_Expansion_Proposals (league_id,proposal_year,new_teams,target_countries,market_analysis_score,estimated_revenue_million,stadium_requirements,broadcasting_rights_impact,fan_base_projection,sponsorship_potential,regulatory_approval_status,timeline_years,risk_assessment,stakeholder_feedback,budget_allocation,approval_votes,comments,created_by,created_date,last_modified) VALUES (1,2024,2,'CountryA,CountryB',78.5,120.0,'Cap_30k_seats','Positive','850000','45.0','Pending',3,'Medium','Mixed',15.0,5,'Awaiting council review','Analyst_Jones','2024-02-10','2024-02-12');
INSERT INTO League_Expansion_Proposals (league_id,proposal_year,new_teams,target_countries,market_analysis_score,estimated_revenue_million,stadium_requirements,broadcasting_rights_impact,fan_base_projection,sponsorship_potential,regulatory_approval_status,timeline_years,risk_assessment,stakeholder_feedback,budget_allocation,approval_votes,comments,created_by,created_date,last_modified) VALUES (2,2025,1,'CountryC',85.0,80.0,'Cap_25k_seats','Neutral','500000','35.0','Approved',2,'Low','Positive',10.0,8,'Fast‑track process','Analyst_Smith','2025-01-15','2025-01-16');
INSERT INTO League_Expansion_Proposals (league_id,proposal_year,new_teams,target_countries,market_analysis_score,estimated_revenue_million,stadium_requirements,broadcasting_rights_impact,fan_base_projection,sponsorship_potential,regulatory_approval_status,timeline_years,risk_assessment,stakeholder_feedback,budget_allocation,approval_votes,comments,created_by,created_date,last_modified) VALUES (3,2026,3,'CountryD,CountryE,CountryF',70.2,200.0,'Cap_35k_seats','Negative','1200000','60.0','Pending',4,'High','Cautious',20.0,3,'Requires further market study','Analyst_Lee','2026-03-05','2026-03-06');


-- Team media rights details
CREATE TABLE Team_Media_Rights (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    season TEXT,
    domestic_tv_rights_holder TEXT,
    international_tv_rights_holder TEXT,
    streaming_platform TEXT,
    domestic_rights_fee_million REAL,
    international_rights_fee_million REAL,
    streaming_fee_million REAL,
    contract_start_date TEXT,
    contract_end_date TEXT,
    viewership_average REAL,
    peak_viewership REAL,
    ad_inventory_slots INTEGER,
    exclusive_clause INTEGER,
    sublicensing_allowed INTEGER,
    renewal_option_years INTEGER,
    revenue_share_percent REAL,
    production_cost_million REAL,
    notes TEXT,
    auditor TEXT
);

INSERT INTO Team_Media_Rights (team_id,season,domestic_tv_rights_holder,international_tv_rights_holder,streaming_platform,domestic_rights_fee_million,international_rights_fee_million,streaming_fee_million,contract_start_date,contract_end_date,viewership_average,peak_viewership,ad_inventory_slots,exclusive_clause,sublicensing_allowed,renewal_option_years,revenue_share_percent,production_cost_million,notes,auditor) VALUES (201,'2023/24','NationalTV','GlobalSports','StreamX',12.5,8.3,3.0,'2023-07-01','2025-06-30',1.2,2.5,120,1,0,2,15.0,2.1,'Standard three‑year deal','AuditCo_A');
INSERT INTO Team_Media_Rights (team_id,season,domestic_tv_rights_holder,international_tv_rights_holder,streaming_platform,domestic_rights_fee_million,international_rights_fee_million,streaming_fee_million,contract_start_date,contract_end_date,viewership_average,peak_viewership,ad_inventory_slots,exclusive_clause,sublicensing_allowed,renewal_option_years,revenue_share_percent,production_cost_million,notes,auditor) VALUES (202,'2023/24','SportsNet','WorldOverlay','LivePlay',9.0,5.5,2.2,'2023-07-01','2024-06-30',0.9,1.8,95,0,1,1,12.0,1.8,'One‑year extension option','AuditCo_B');
INSERT INTO Team_Media_Rights (team_id,season,domestic_tv_rights_holder,international_tv_rights_holder,streaming_platform,domestic_rights_fee_million,international_rights_fee_million,streaming_fee_million,contract_start_date,contract_end_date,viewership_average,peak_viewership,ad_inventory_slots,exclusive_clause,sublicensing_allowed,renewal_option_years,revenue_share_percent,production_cost_million,notes,auditor) VALUES (203,'2023/24','RegionalTV','ContinentalLive','FanStream',7.8,4.0,1.5,'2023-07-01','2026-06-30',1.0,2.0,110,1,1,3,14.0,2.0,'Long term partnership','AuditCo_C');


-- Player community engagement records
CREATE TABLE Player_Community_Engagement (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    community_program_name TEXT,
    start_date TEXT,
    end_date TEXT,
    volunteer_hours INTEGER,
    beneficiaries INTEGER,
    funds_raised REAL,
    role_description TEXT,
    impact_score REAL,
    social_media_posts INTEGER,
    media_mentions INTEGER,
    sponsor_name TEXT,
    sponsor_contribution REAL,
    location TEXT,
    program_type TEXT,
    registration_required INTEGER,
    feedback_score REAL,
    awards_received TEXT,
    coordinator_name TEXT,
    notes TEXT
);

INSERT INTO Player_Community_Engagement (player_id,community_program_name,start_date,end_date,volunteer_hours,beneficiaries,funds_raised,role_description,impact_score,social_media_posts,media_mentions,sponsor_name,sponsor_contribution,location,program_type,registration_required,feedback_score,awards_received,coordinator_name,notes) VALUES (301,'Kids_Football_Camp','2023-06-01','2023-08-15',120,500,25000,'Lead Coach',88.5,45,12,'SportGoodsCo',5000,'CityPark','Camp',1,9.2,'Best_Youth_Initiative','Laura_Martin','High participation');
INSERT INTO Player_Community_Engagement (player_id,community_program_name,start_date,end_date,volunteer_hours,beneficiaries,funds_raised,role_description,impact_score,social_media_posts,media_mentions,sponsor_name,sponsor_contribution,location,program_type,registration_required,feedback_score,awards_received,coordinator_name,notes) VALUES (302,'Health_Awareness_Drive','2023-09-10','2023-09-12',20,2000,15000,'Ambassador',75.0,30,8,'HealthCorp',3000,'CommunityCenter','Awareness',0,8.5,'Community_Champion','Mike_Davis','Positive media coverage');
INSERT INTO Player_Community_Engagement (player_id,community_program_name,start_date,end_date,volunteer_hours,beneficiaries,funds_raised,role_description,impact_score,social_media_posts,media_mentions,sponsor_name,sponsor_contribution,location,program_type,registration_required,feedback_score,awards_received,coordinator_name,notes) VALUES (303,'Environmental_Cleanup','2023-10-05','2023-10-05',8,150,5000,'Participant',82.0,12,3,'EcoOrg',2000,'RiverSide','Cleanup',0,9.0,'Green_Hero','Sophie_Khan','Volunteer turned into recurring event');


-- Broadcast signal quality logs
CREATE TABLE Broadcast_Signal_Quality (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcast_id INTEGER,
    match_id INTEGER,
    date TEXT,
    signal_strength_dbm REAL,
    latency_ms REAL,
    packet_loss_percent REAL,
    jitter_ms REAL,
    resolution TEXT,
    bitrate_mbps REAL,
    framerate_fps REAL,
    audio_quality TEXT,
    dropped_frames INTEGER,
    error_rate_percent REAL,
    upstream_bandwidth_mbps REAL,
    downstream_bandwidth_mbps REAL,
    satellite_id TEXT,
    transmission_mode TEXT,
    carrier_frequency_mhz REAL,
    modulation_scheme TEXT,
    maintenance_notes TEXT
);

INSERT INTO Broadcast_Signal_Quality (broadcast_id,match_id,date,signal_strength_dbm,latency_ms,packet_loss_percent,jitter_ms,resolution,bitrate_mbps,framerate_fps,audio_quality,dropped_frames,error_rate_percent,upstream_bandwidth_mbps,downstream_bandwidth_mbps,satellite_id,transmission_mode,carrier_frequency_mhz,modulation_scheme,maintenance_notes) VALUES (401,501,'2023-11-20',-62.5,45,0.12,5,'1080p',8.5,60,'Stereo',12,0.02,25.0,30.0,'SATX1','Digital','12345.6','QAM','No issues recorded');
INSERT INTO Broadcast_Signal_Quality (broadcast_id,match_id,date,signal_strength_dbm,latency_ms,packet_loss_percent,jitter_ms,resolution,bitrate_mbps,framerate_fps,audio_quality,dropped_frames,error_rate_percent,upstream_bandwidth_mbps,downstream_bandwidth_mbps,satellite_id,transmission_mode,carrier_frequency_mhz,modulation_scheme,maintenance_notes) VALUES (402,502,'2023-11-21',-60.8,38,0.09,4,'720p',5.2,30,'Mono',8,0.01,20.0,25.0,'SATY2','Analog','12400.1','PSK','Minor interference corrected');
INSERT INTO Broadcast_Signal_Quality (broadcast_id,match_id,date,signal_strength_dbm,latency_ms,packet_loss_percent,jitter_ms,resolution,bitrate_mbps,framerate_fps,audio_quality,dropped_frames,error_rate_percent,upstream_bandwidth_mbps,downstream_bandwidth_mbps,satellite_id,transmission_mode,carrier_frequency_mhz,modulation_scheme,maintenance_notes) VALUES (403,503,'2023-11-22',-61.3,42,0.15,6,'4K',15.0,60,'Surround',20,0.03,35.0,40.0,'SATZ3','Digital','12510.3','OFDM','Signal restored after outage');


-- Match operational resources allocation
CREATE TABLE Match_Operational_Resources (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    resource_type TEXT,
    allocated_quantity INTEGER,
    unit_type TEXT,
    supplier_name TEXT,
    cost_usd REAL,
    delivery_date TEXT,
    compliance_status TEXT,
    inspection_date TEXT,
    responsible_manager TEXT,
    usage_start_time TEXT,
    usage_end_time TEXT,
    notes TEXT,
    emergency_backup INTEGER,
    sustainability_rating REAL,
    contract_id INTEGER,
    warranty_period_months INTEGER,
    storage_location TEXT,
    depreciation_value REAL,
    last_updated TEXT
);

INSERT INTO Match_Operational_Resources (match_id,resource_type,allocated_quantity,unit_type,supplier_name,cost_usd,delivery_date,compliance_status,inspection_date,responsible_manager,usage_start_time,usage_end_time,notes,emergency_backup,sustainability_rating,contract_id,warranty_period_months,storage_location,depreciation_value,last_updated) VALUES (601,'Goal_Nets',4,'pcs','SportSuppliesCo',2000,'2023-11-10','Compliant','2023-11-12','John_Smith','10:00','22:00','Standard nets installed',1,9.5,301,24,'Warehouse_A',500,'2023-11-15');
INSERT INTO Match_Operational_Resources (match_id,resource_type,allocated_quantity,unit_type,supplier_name,cost_usd,delivery_date,compliance_status,inspection_date,responsible_manager,usage_start_time,usage_end_time,notes,emergency_backup,sustainability_rating,contract_id,warranty_period_months,storage_location,depreciation_value,last_updated) VALUES (602,'LED_Lighting',120,'units','BrightLightsInc',7500,'2023-11-11','Compliant','2023-11-13','Maria_Garcia','09:30','23:00','Energy‑efficient lighting',0,9.8,302,36,'Warehouse_B',1200,'2023-11-16');
INSERT INTO Match_Operational_Resources (match_id,resource_type,allocated_quantity,unit_type,supplier_name,cost_usd,delivery_date,compliance_status,inspection_date,responsible_manager,usage_start_time,usage_end_time,notes,emergency_backup,sustainability_rating,contract_id,warranty_period_months,storage_location,depreciation_value,last_updated) VALUES (603,'Medical_Kit',30,'pcs','HealthFirst',1500,'2023-11-12','Compliant','2023-11-14','Liam_OBrien','08:00','00:00','Includes defibrillators',1,9.2,303,12,'Warehouse_C',300,'2023-11-17');


-- Training scientist profiles
CREATE TABLE Training_Scientist_Profiles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    scientist_id INTEGER,
    full_name TEXT,
    degree TEXT,
    specialization TEXT,
    years_experience INTEGER,
    published_papers INTEGER,
    h_index REAL,
    affiliated_club_id INTEGER,
    certifications TEXT,
    contact_email TEXT,
    phone_number TEXT,
    office_location TEXT,
    research_focus TEXT,
    methodology TEXT,
    data_analysis_tools TEXT,
    ongoing_projects TEXT,
    grants_amount REAL,
    professional_memberships TEXT,
    notes TEXT,
    last_review_date TEXT
);

INSERT INTO Training_Scientist_Profiles (scientist_id,full_name,degree,specialization,years_experience,published_papers,h_index,affiliated_club_id,certifications,contact_email,phone_number,office_location,research_focus,methodology,data_analysis_tools,ongoing_projects,grants_amount,professional_memberships,notes,last_review_date) VALUES (701,'Dr_Alice_Wright','PhD','Sports Physiology',12,25,15.2,201,'Certified_Sport_Scientist','alice.wright@email.com','5551234567','Building_A','Aerobic Capacity','Longitudinal Study','R,Python','Project_Alpha',75000,'ASPT','Works on player endurance','2023-10-01');
INSERT INTO Training_Scientist_Profiles (scientist_id,full_name,degree,specialization,years_experience,published_papers,h_index,affiliated_club_id,certifications,contact_email,phone_number,office_location,research_focus,methodology,data_analysis_tools,ongoing_projects,grants_amount,professional_memberships,notes,last_review_date) VALUES (702,'Dr_Ben_Tan','MSc','Biomechanics',9,18,12.7,202,'Certified_Biomechanic','ben.tan@email.com','5559876543','Building_B','Kinetic Analysis','Cross‑sectional','MATLAB','Project_Beta',50000,'ISB','Focus on injury prevention','2023-09-15');
INSERT INTO Training_Scientist_Profiles (scientist_id,full_name,degree,specialization,years_experience,published_papers,h_index,affiliated_club_id,certifications,contact_email,phone_number,office_location,research_focus,methodology,data_analysis_tools,ongoing_projects,grants_amount,professional_memberships,notes,last_review_date) VALUES (703,'Dr_Carla_Meza','PhD','Nutrition Science',15,30,18.4,203,'Certified_Sports_Nutritionist','carla.meza@email.com','5551122334','Building_C','Recovery Nutrition','Randomized Controlled Trial','SPSS','Project_Gamma',85000,'ANS','Developing post‑match protocols','2023-11-05');


-- Sponsor investment overview
CREATE TABLE Sponsor_Investment_Overview (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    league_id INTEGER,
    total_investment_million REAL,
    investment_year INTEGER,
    categories TEXT,
    activation_events INTEGER,
    brand_exposure_score REAL,
    media_value_million REAL,
    digital_impressions INTEGER,
    social_engagement_score REAL,
    on_site_presence INTEGER,
    exclusive_rights_flag INTEGER,
    contract_duration_years INTEGER,
    renewal_option INTEGER,
    performance_bonus REAL,
    compliance_audit_status TEXT,
    risk_rating REAL,
    notes TEXT,
    created_by TEXT,
    created_date TEXT
);

INSERT INTO Sponsor_Investment_Overview (sponsor_id,league_id,total_investment_million,investment_year,categories,activation_events,brand_exposure_score,media_value_million,digital_impressions,social_engagement_score,on_site_presence,exclusive_rights_flag,contract_duration_years,renewal_option,performance_bonus,compliance_audit_status,risk_rating,notes,created_by,created_date) VALUES (801,1,25.0,2023,'Apparel,Footwear',12,78.4,10.5,15000000,85.2,1,1,3,1,2.5,'Passed',2.1,'Long term partnership','Analyst_Khan','2023-02-20');
INSERT INTO Sponsor_Investment_Overview (sponsor_id,league_id,total_investment_million,investment_year,categories,activation_events,brand_exposure_score,media_value_million,digital_impressions,social_engagement_score,on_site_presence,exclusive_rights_flag,contract_duration_years,renewal_option,performance_bonus,compliance_audit_status,risk_rating,notes,created_by,created_date) VALUES (802,2,15.5,2022,'Technology,Electronics',8,65.0,7.2,9000000,70.4,0,0,2,0,1.8,'Passed',1.8,'Renewal pending','Analyst_Liu','2022-08-12');
INSERT INTO Sponsor_Investment_Overview (sponsor_id,league_id,total_investment_million,investment_year,categories,activation_events,brand_exposure_score,media_value_million,digital_impressions,social_engagement_score,on_site_presence,exclusive_rights_flag,contract_duration_years,renewal_option,performance_bonus,compliance_audit_status,risk_rating,notes,created_by,created_date) VALUES (803,3,30.2,2024,'Financial,Insurance',15,82.7,12.0,21000000,90.1,1,1,4,1,3.0,'Pending',2.5,'Negotiations ongoing','Analyst_Nguyen','2024-01-05');


-- Fan experience analytics
CREATE TABLE Fan_Experience_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    fan_id INTEGER,
    entry_time TEXT,
    seat_section TEXT,
    concession_spent REAL,
    merchandise_spent REAL,
    app_interactions INTEGER,
    survey_score REAL,
    sentiment TEXT,
    dwell_time_minutes REAL,
    wifi_usage_mb REAL,
    aux_service_used TEXT,
    loyalty_program_tier TEXT,
    feedback_comments TEXT,
    net_promoter_score INTEGER,
    repeat_attendance_flag INTEGER,
    travel_mode TEXT,
    parking_duration_minutes REAL,
    emissions_kg_co2 REAL,
    last_update TEXT
);

INSERT INTO Fan_Experience_Analytics (match_id,fan_id,entry_time,seat_section,concession_spent,merchandise_spent,app_interactions,survey_score,sentiment,dwell_time_minutes,wifi_usage_mb,aux_service_used,loyalty_program_tier,feedback_comments,net_promoter_score,repeat_attendance_flag,travel_mode,parking_duration_minutes,emissions_kg_co2,last_update) VALUES (701,9001,'18:30','A12',15.75,30.00,5,4.5,'Positive',210.0,150,'AR_Guide','Gold','Great atmosphere','9',1,'Car',25.0,12.5,'2023-11-20');
INSERT INTO Fan_Experience_Analytics (match_id,fan_id,entry_time,seat_section,concession_spent,merchandise_spent,app_interactions,survey_score,sentiment,dwell_time_minutes,wifi_usage_mb,aux_service_used,loyalty_program_tier,feedback_comments,net_promoter_score,repeat_attendance_flag,travel_mode,parking_duration_minutes,emissions_kg_co2,last_update) VALUES (702,9002,'19:10','B07',8.20,12.50,3,3.8,'Neutral',180.0,90,'Food_Stall','Silver','Average service','7',0,'Public_Transport',0.0,5.0,'2023-11-21');
INSERT INTO Fan_Experience_Analytics (match_id,fan_id,entry_time,seat_section,concession_spent,merchandise_spent,app_interactions,survey_score,sentiment,dwell_time_minutes,wifi_usage_mb,aux_service_used,loyalty_program_tier,feedback_comments,net_promoter_score,repeat_attendance_flag,travel_mode,parking_duration_minutes,emissions_kg_co2,last_update) VALUES (703,9003,'20:05','C03',22.00,45.00,8,4.9,'Very_Positive',250.0,200,'VR_Experience','Platinum','Best match ever','10',1,'Bike',5.0,3.2,'2023-11-22');