-- Broadcast contract terms for leagues and networks
CREATE TABLE Broadcast_Contract_Terms (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    season TEXT,
    league_id INTEGER,
    network_name TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    total_value_million REAL,
    annual_fee REAL,
    payment_currency TEXT,
    exclusive_rights_flag INTEGER,
    language_option TEXT,
    hd_available_flag INTEGER,
    vod_available_flag INTEGER,
    ad_inventory_slots INTEGER,
    max_ads_per_match INTEGER,
    royalty_percentage REAL,
    viewership_guarantee INTEGER,
    digital_streaming_rights INTEGER,
    radio_rights INTEGER,
    social_media_clips_rights INTEGER,
    termination_clause_desc TEXT
);
INSERT INTO Broadcast_Contract_Terms (season,league_id,network_name,contract_start_date,contract_end_date,total_value_million,annual_fee,payment_currency,exclusive_rights_flag,language_option,hd_available_flag,vod_available_flag,ad_inventory_slots,max_ads_per_match,royalty_percentage,viewership_guarantee,digital_streaming_rights,radio_rights,social_media_clips_rights,termination_clause_desc) VALUES
('2024/2025',1,'GlobalSports','2024-07-01','2027-06-30',350.0,115.0,'USD',1,'English',1,1,120,5,2.5,8000000,1,0,1,'StandardTermination');
INSERT INTO Broadcast_Contract_Terms (season,league_id,network_name,contract_start_date,contract_end_date,total_value_million,annual_fee,payment_currency,exclusive_rights_flag,language_option,hd_available_flag,vod_available_flag,ad_inventory_slots,max_ads_per_match,royalty_percentage,viewership_guarantee,digital_streaming_rights,radio_rights,social_media_clips_rights,termination_clause_desc) VALUES
('2024/2025',2,'EuroVision','2024-07-15','2028-06-30',420.5,105.0,'EUR',0,'Multilingual',1,0,150,6,3.0,9500000,1,1,0,'EarlyExitClause');
INSERT INTO Broadcast_Contract_Terms (season,league_id,network_name,contract_start_date,contract_end_date,total_value_million,annual_fee,payment_currency,exclusive_rights_flag,language_option,hd_available_flag,vod_available_flag,ad_inventory_slots,max_ads_per_match,royalty_percentage,viewership_guarantee,digital_streaming_rights,radio_rights,social_media_clips_rights,termination_clause_desc) VALUES
('2025/2026',3,'SportStream','2025-01-01','2029-12-31',275.0,68.75,'USD',1,'Spanish',0,1,90,4,1.8,6000000,0,0,1,'MutualTermination');

-- Renovation projects for stadiums
CREATE TABLE Stadium_Renovation_Projects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    project_name TEXT,
    start_date TEXT,
    end_date TEXT,
    budget_million REAL,
    contractor_name TEXT,
    architect_firm TEXT,
    construction_phase TEXT,
    seating_capacity_added INTEGER,
    VIP_area_expansion INTEGER,
    roof_type TEXT,
    lighting_upgrade INTEGER,
    sound_system_upgrade INTEGER,
    energy_efficiency_rating TEXT,
    green_certification TEXT,
    project_status TEXT,
    permits_obtained INTEGER,
    safety_audit_score REAL,
    projected_completion_quarter TEXT,
    notes TEXT
);
INSERT INTO Stadium_Renovation_Projects (stadium_id,project_name,start_date,end_date,budget_million,contractor_name,architect_firm,construction_phase,seating_capacity_added,VIP_area_expansion,roof_type,lighting_upgrade,sound_system_upgrade,energy_efficiency_rating,green_certification,project_status,permits_obtained,safety_audit_score,projected_completion_quarter,notes) VALUES
(1,'SouthStand Expansion','2024-03-01','2025-11-30',45.2,'BuildCo Ltd','ArcDesign','Foundation',5000,200,'Retractable',1,1,'A+','LEED Gold','InProgress',1,92.5,'Q4 2025','Phase1 complete');
INSERT INTO Stadium_Renovation_Projects (stadium_id,project_name,start_date,end_date,budget_million,contractor_name,architect_firm,construction_phase,seating_capacity_added,VIP_area_expansion,roof_type,lighting_upgrade,sound_system_upgrade,energy_efficiency_rating,green_certification,project_status,permits_obtained,safety_audit_score,projected_completion_quarter,notes) VALUES
(2,'NorthWing Upgrade','2023-06-15','2024-12-20',30.0,'MegaBuild','StadiaWorks','Superstructure',3000,0,'Fixed',1,0,'B','LEED Silver','Completed',1,88.0,'Q2 2024','All works finished');
INSERT INTO Stadium_Renovation_Projects (stadium_id,project_name,start_date,end_date,budget_million,contractor_name,architect_firm,construction_phase,seating_capacity_added,VIP_area_expansion,roof_type,lighting_upgrade,sound_system_upgrade,energy_efficiency_rating,green_certification,project_status,permits_obtained,safety_audit_score,projected_completion_quarter,notes) VALUES
(3,'EastWing Acoustic Retrofit','2025-01-10','2025-09-30',12.5,'AcoustiTech','SoundForm','Finishing',0,0,'None',0,1,'A','LEED Platinum','Planned',0,0.0,'Q3 2025','Awaiting permits');

-- Scouting network information for teams
CREATE TABLE Team_Scouting_Networks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    scout_region TEXT,
    scout_name TEXT,
    contact_email TEXT,
    phone_number TEXT,
    years_experience INTEGER,
    favorite_player_position TEXT,
    scouting_license_number TEXT,
    last_certification_date TEXT,
    languages_spoken TEXT,
    travel_budget REAL,
    regions_covered TEXT,
    total_players_scouted INTEGER,
    successful_signings INTEGER,
    average_player_rating_scouted REAL,
    scouting_report_template TEXT,
    data_sharing_agreement_flag INTEGER,
    last_report_date TEXT,
    network_affiliation TEXT,
    notes TEXT
);
INSERT INTO Team_Scouting_Networks (team_id,scout_region,scout_name,contact_email,phone_number,years_experience,favorite_player_position,scouting_license_number,last_certification_date,languages_spoken,travel_budget,regions_covered,total_players_scoted,total_players_scouted,successful_signings,average_player_rating_scouted,scouting_report_template,data_sharing_agreement_flag,last_report_date,network_affiliation,notes) VALUES
(1,'South America','Carlos Mendes','carlos.mendes@example.com','5551234567',12,'Forward','SLN001','2023-04-10','Spanish,Portuguese',25000.0,'Brazil;Argentina;Uruguay',120,15,78.5,'StandardTemplate',1,'2024-05-01','GlobalScoutNet','Focused on youth talent');
INSERT INTO Team_Scouting_Networks (team_id,scout_region,scout_name,contact_email,phone_number,years_experience,favorite_player_position,scouting_license_number,last_certification_date,languages_spoken,travel_budget,regions_covered,total_players_scoted,total_players_scouted,successful_signings,average_player_rating_scouted,scouting_report_template,data_sharing_agreement_flag,last_report_date,network_affiliation,notes) VALUES
(2,'Eastern Europe','Anna Kovac','anna.kovac@example.com','5559876543',9,'Midfielder','SLN014','2022-11-22','Czech,Polish,Russian',18000.0,'Poland;CzechRepublic;Hungary',95,8,80.2,'DetailTemplate',0,'2024-03-15','EuroScoutAlliance','Specializing in defensive midfielders');
INSERT INTO Team_Scouting_Networks (team_id,scout_region,scout_name,contact_email,phone_number,years_experience,favorite_player_position,scouting_license_number,last_certification_date,languages_spoken,travel_budget,regions_covered,total_players_scoted,total_players_scouted,successful_signings,average_player_rating_scouted,scouting_report_template,data_sharing_agreement_flag,last_report_date,network_affiliation,notes) VALUES
(3,'Asia','Takeshi Yamamoto','takashi.yamamoto@example.com','5552223334',15,'Goalkeeper','SLN027','2024-01-05','Japanese,English',30000.0,'Japan;SouthKorea;China',140,20,12,85.0,'GoalkeeperTemplate',1,'2024-04-20','AsianScoutNetwork','Includes advanced video analysis');

-- Fan engagement campaigns run by leagues
CREATE TABLE League_Fan_Engagement_Campaigns (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    campaign_name TEXT,
    launch_date TEXT,
    end_date TEXT,
    target_audience TEXT,
    platform_used TEXT,
    budget_usd REAL,
    expected_reach INTEGER,
    actual_reach INTEGER,
    engagement_rate_percent REAL,
    hashtag_used TEXT,
    promotional_video_id TEXT,
    influencer_partners TEXT,
    discount_codes_offered TEXT,
    ticket_bundle_offer TEXT,
    social_media_impressions INTEGER,
    email_open_rate REAL,
    click_through_rate REAL,
    conversion_rate REAL,
    survey_feedback_score REAL,
    notes TEXT
);
INSERT INTO League_Fan_Engagement_Campaigns (league_id,campaign_name,launch_date,end_date,target_audience,platform_used,budget_usd,expected_reach,actual_reach,engagement_rate_percent,hashtag_used,promotional_video_id,influencer_partners,discount_codes_offered,ticket_bundle_offer,social_media_impressions,email_open_rate,click_through_rate,conversion_rate,survey_feedback_score,notes) VALUES
(1,'SummerKickoff2024','2024-06-01','2024-06-30','YoungFans','TikTok',50000.0,200000,185000,2.5,'#SummerKick2024','VID123','PlayerA;PlayerB','SUMMER10','BundleA',4500000,22.1,1.8,0.9,8.4,'Strong video performance');
INSERT INTO League_Fan_Engagement_Campaigns (league_id,campaign_name,launch_date,end_date,target_audience,platform_used,budget_usd,expected_reach,actual_reach,engagement_rate_percent,hashtag_used,promotional_video_id,influencer_partners,discount_codes_offered,ticket_bundle_offer,social_media_impressions,email_open_rate,click_through_rate,conversion_rate,survey_feedback_score,notes) VALUES
(2,'WinterFest2024','2024-12-01','2024-12-15','FamilyFans','Instagram',75000.0,150000,160000,3.0,'#WinterFest','VID456','FamilyStar1;FamilyStar2','WINTER15','BundleB',5200000,25.0,2.2,1.1,9.0,'Exceeded reach goals');
INSERT INTO League_Fan_Engagement_Campaigns (league_id,campaign_name,launch_date,end_date,target_audience,platform_used,budget_usd,expected_reach,actual_reach,engagement_rate_percent,hashtag_used,promotional_video_id,influencer_partners,discount_codes_offered,ticket_bundle_offer,social_media_impressions,email_open_rate,click_through_rate,conversion_rate,survey_feedback_score,notes) VALUES
(3,'ChampionsRoad2024','2024-09-10','2024-10-05','CoreSupporters','Twitter',60000.0,180000,175000,2.8,'#ChampRoad','VID789','AnalystX;AnalystY','CHAMP20','BundleC',4800000,23.5,2.0,0.95,8.7,'High conversion among ticket buyers');

-- Social media strategy per club
CREATE TABLE Club_Social_Media_Strategies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    platform_name TEXT,
    account_handle TEXT,
    launch_date TEXT,
    follower_count INTEGER,
    engagement_rate REAL,
    average_post_frequency_per_week REAL,
    content_type_focus TEXT,
    video_content_percent REAL,
    story_usage_percent REAL,
    paid_ad_spend_usd REAL,
    organic_growth_rate_percent REAL,
    community_manager_name TEXT,
    crisis_response_plan_flag INTEGER,
    hashtag_branding TEXT,
    influencer_collaboration_flag INTEGER,
    analytics_tool_used TEXT,
    last_audit_date TEXT,
    target_follower_goal INTEGER,
    notes TEXT
);
INSERT INTO Club_Social_Media_Strategies (club_id,platform_name,account_handle,launch_date,follower_count,engagement_rate,average_post_frequency_per_week,content_type_focus,video_content_percent,story_usage_percent,paid_ad_spend_usd,organic_growth_rate_percent,community_manager_name,crisis_response_plan_flag,hashtag_branding,influencer_collaboration_flag,analytics_tool_used,last_audit_date,target_follower_goal,notes) VALUES
(1,'Instagram','ClubOneIG','2015-04-20',152000,3.2,5.0,'Mixed',45.0,30.0,12000.0,7.5,'Lena Smith',1,'#ClubOne','1','MetaInsights','2024-04-01',200000,'Focus on behind‑the‑scenes content');
INSERT INTO Club_Social_Media_Strategies (club_id,platform_name,account_handle,launch_date,follower_count,engagement_rate,average_post_frequency_per_week,content_type_focus,video_content_percent,story_usage_percent,paid_ad_spend_usd,organic_growth_rate_percent,community_manager_name,crisis_response_plan_flag,hashtag_branding,influencer_collaboration_flag,analytics_tool_used,last_audit_date,target_follower_goal,notes) VALUES
(2,'Twitter','ClubTwoTW','2013-07-12',98000,2.8,4.2,'News',20.0,15.0,8000.0,5.0,'Marco Ruiz',1,'#ClubTwo','0','TwitterAnalytics','2024-03-15',130000,'Live match updates');
INSERT INTO Club_Social_Media_Strategies (club_id,platform_name,account_handle,launch_date,follower_count,engagement_rate,average_post_frequency_per_week,content_type_focus,video_content_percent,story_usage_percent,paid_ad_spend_usd,organic_growth_rate_percent,community_manager_name,crisis_response_plan_flag,hashtag_branding,influencer_collaboration_flag,analytics_tool_used,last_audit_date,target_follower_goal,notes) VALUES
(3,'TikTok','ClubThreeTT','2018-09-05',75000,4.5,6.5,'Highlights',80.0,25.0,15000.0,9.0,'Sophie Lee',0,'#ClubThree','1','TikTokAnalytics','2024-02-20',110000,'Focus on short‑form video';

-- Operational checklist for each match
CREATE TABLE Match_Operational_Checklist (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    checklist_item TEXT,
    responsible_role TEXT,
    is_completed_flag INTEGER,
    completion_timestamp TEXT,
    notes TEXT,
    required_equipment TEXT,
    safety_check_passed_flag INTEGER,
    quality_assurance_flag INTEGER,
    backup_plan_flag INTEGER,
    communication_channel TEXT,
    escalation_contact TEXT,
    verification_signature TEXT,
    last_updated_by TEXT,
    last_updated_timestamp TEXT,
    priority_level INTEGER,
    compliance_standard TEXT,
    risk_assessment_score REAL,
    contingency_time_minutes INTEGER
);
INSERT INTO Match_Operational_Checklist (match_id,checklist_item,responsible_role,is_completed_flag,completion_timestamp,notes,required_equipment,safety_check_passed_flag,quality_assurance_flag,backup_plan_flag,communication_channel,escalation_contact,verification_signature,last_updated_by,last_updated_timestamp,priority_level,compliance_standard,risk_assessment_score,contingency_time_minutes) VALUES
(101,'Stadium entry gates open','Operations Manager',1,'2024-09-01 14:45','All gates functional','GateControlSystem',1,1,0,'Radio','John Ops','JSig','Mike Supervisor','2024-09-01 14:50',1,'ISO9001',12.5,15);
INSERT INTO Match_Operational_Checklist (match_id,checklist_item,responsible_role,is_completed_flag,completion_timestamp,notes,required_equipment,safety_check_passed_flag,quality_assurance_flag,backup_plan_flag,communication_channel,escalation_contact,verification_signature,last_updated_by,last_updated_timestamp,priority_level,compliance_standard,risk_assessment_score,contingency_time_minutes) VALUES
(101,'Pitch surface inspection','Groundskeeper',1,'2024-09-01 15:00','No irregularities','MoistureMeter',1,1,1,'Phone','Laura Grounds','LSig','Anna Manager','2024-09-01 15:05',2,'FAFA',8.0,10);
INSERT INTO Match_Operational_Checklist (match_id,checklist_item,responsible_role,is_completed_flag,completion_timestamp,notes,required_equipment,safety_check_passed_flag,quality_assurance_flag,backup_plan_flag,communication_channel,escalation_contact,verification_signature,last_updated_by,last_updated_timestamp,priority_level,compliance_standard,risk_assessment_score,contingency_time_minutes) VALUES
(101,'Broadcast equipment test','Broadcast Engineer',1,'2024-09-01 15:30','All streams green','HDEncoder',1,1,1,'Email','Sam Broadcast','BSig','Tom Lead','2024-09-01 15:35',1,'EBU',9.3,20);

-- Player language proficiency records
CREATE TABLE Player_Language_Proficiency (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    language TEXT,
    proficiency_level TEXT,
    certification TEXT,
    last_assessed_date TEXT,
    reading_score INTEGER,
    writing_score INTEGER,
    speaking_score INTEGER,
    listening_score INTEGER,
    training_hours INTEGER,
    coach_comments TEXT,
    interpreter_required_flag INTEGER,
    upcoming_assessment_date TEXT,
    notes TEXT,
    iso_code TEXT,
    dialect_variant TEXT,
    fluency_certificate_number TEXT,
    assessment_body TEXT,
    overall_score REAL
);
INSERT INTO Player_Language_Proficiency (player_api_id,language,proficiency_level,certification,last_assessed_date,reading_score,writing_score,speaking_score,listening_score,training_hours,coach_comments,interpreter_required_flag,upcoming_assessment_date,notes,iso_code,dialect_variant,fluency_certificate_number,assessment_body,overall_score) VALUES
(201,'English','Advanced','IELTS','2023-11-20',85,88,90,92,30,'Good communication on field',0,'2024-11-20','N/A','ENG','US','CERT12345','BritishCouncil',88.75);
INSERT INTO Player_Language_Proficiency (player_api_id,language,proficiency_level,certification,last_assessed_date,reading_score,writing_score,speaking_score,listening_score,training_hours,coach_comments,interpreter_required_flag,upcoming_assessment_date,notes,iso_code,dialect_variant,fluency_certificate_number,assessment_body,overall_score) VALUES
(202,'Spanish','Intermediate','DELE','2024-02-15',72,70,75,78,20,'Needs improvement in tactical terms',1,'2025-02-15','Will arrange interpreter','SPA','MX','CERT67890','Instituto Cervantes',73.75);
INSERT INTO Player_Language_Proficiency (player_api_id,language,proficiency_level,certification,last_assessed_date,reading_score,writing_score,speaking_score,listening_score,training_hours,coach_comments,interpreter_required_flag,upcoming_assessment_date,notes,iso_code,dialect_variant,fluency_certificate_number,assessment_body,overall_score) VALUES
(203,'Japanese','Beginner','JLPT N5','2022-08-10',55,50,58,60,10,'Basic greetings only',1,'2024-08-10','Consider language classes','JPN','Tokyo','CERT98765','JICA',55.75);

-- Team travel logistics details
CREATE TABLE Team_Travel_Logistics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    travel_date TEXT,
    departure_city TEXT,
    arrival_city TEXT,
    mode_of_transport TEXT,
    transport_provider TEXT,
    departure_time TEXT,
    arrival_time TEXT,
    accommodation_name TEXT,
    accommodation_rating INTEGER,
    room_count INTEGER,
    meals_included_flag INTEGER,
    travel_budget_usd REAL,
    actual_spent_usd REAL,
    itinerary_document_id TEXT,
    security_details TEXT,
    medical_staff_onboard_flag INTEGER,
    equipment_transport_details TEXT,
    travel_manager_name TEXT,
    notes TEXT
);
INSERT INTO Team_Travel_Logistics (team_id,travel_date,departure_city,arrival_city,mode_of_transport,transport_provider,departure_time,arrival_time,accommodation_name,accommodation_rating,room_count,meals_included_flag,travel_budget_usd,actual_spent_usd,itinerary_document_id,security_details,medical_staff_onboard_flag,equipment_transport_details,travel_manager_name,notes) VALUES
(1,'2024-10-12','London','Munich','Air','AirFly','09:30','12:45','Hotel Bavaria',4,12,1,45000.0,46200.0,'ITIN001','StandardSecurity','1','TeamBus','Emily Clark','Extra luggage fee incurred');
INSERT INTO Team_Travel_Logistics (team_id,travel_date,departure_city,arrival_city,mode_of_transport,transport_provider,departure_time,arrival_time,accommodation_name,accommodation_rating,room_count,meals_included_flag,travel_budget_usd,actual_spent_usd,itinerary_document_id,security_details,medical_staff_onboard_flag,equipment_transport_details,travel_manager_name,notes) VALUES
(2,'2024-11-05','Madrid','Rome','Bus','EuroLines','14:00','20:30','Roma Suites',3,10,0,38000.0,37500.0,'ITIN002','EnhancedSecurity','0','CargoVan','Luis Gomez','Delayed departure due to traffic');
INSERT INTO Team_Travel_Logistics (team_id,travel_date,departure_city,arrival_city,mode_of_transport,transport_provider,departure_time,arrival_time,accommodation_name,accommodation_rating,room_count,meals_included_flag,travel_budget_usd,actual_spent_usd,itinerary_document_id,security_details,medical_staff_onboard_flag,equipment_transport_details,travel_manager_name,notes) VALUES
(3,'2024-12-20','Paris','Amsterdam','Train','EuroRail','08:15','12:00','Canal Hotel',5,8,1,42000.0,41000.0,'ITIN003','StandardSecurity','1','RailFreight','Sophie Martin','Smooth journey';

-- Acoustic profile measurements for venues
CREATE TABLE Venue_Acoustic_Profiles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    profile_date TEXT,
    measurement_method TEXT,
    avg_decibel_level REAL,
    max_decibel_level REAL,
    reverberation_time REAL,
    echo_intensity REAL,
    speaker_system_model TEXT,
    speaker_count INTEGER,
    subwoofer_count INTEGER,
    sound_coverage_area_sqft REAL,
    zoning_levels TEXT,
    crowd_noise_factor REAL,
    broadcast_mix_level REAL,
    audio_engineer_name TEXT,
    calibration_tool_used TEXT,
    last_maintenance_date TEXT,
    compliance_certification TEXT,
    notes TEXT
);
INSERT INTO Venue_Acoustic_Profiles (stadium_id,profile_date,measurement_method,avg_decibel_level,max_decibel_level,reverberation_time,echo_intensity,speaker_system_model,speaker_count,subwoofer_count,sound_coverage_area_sqft,zoning_levels,crowd_noise_factor,broadcast_mix_level,audio_engineer_name,calibration_tool_used,last_maintenance_date,compliance_certification,notes) VALUES
(1,'2024-06-15','Laser','95.2','112.5','1.8','0.35','AudioMaxX','120','12','35000','Main;VIP','1.2','-3.5','Mark Daniels','CalibPro','2024-05-20','ISO14001','Post‑event verification');
INSERT INTO Venue_Acoustic_Profiles (stadium_id,profile_date,measurement_method,avg_decibel_level,max_decibel_level,reverberation_time,echo_intensity,speaker_system_model,speaker_count,subwoofer_count,sound_coverage_area_sqft,zoning_levels,crowd_noise_factor,broadcast_mix_level,audio_engineer_name,calibration_tool_used,last_maintenance_date,compliance_certification,notes) VALUES
(2,'2024-07-10','Microphone','92.0','108.0','2.0','0.40','SoundWave Pro','100','10','28000','Main;Upper','1.0','-2.8','Laura Chen','SoundCal','2024-06-30','ISO9001','Adjusted speaker angles');
INSERT INTO Venue_Acoustic_Profiles (stadium_id,profile_date,measurement_method,avg_decibel_level,max_decibel_level,reverberation_time,echo_intensity,speaker_system_model,speaker_count,subwoofer_count,sound_coverage_area_sqft,zoning_levels,crowd_noise_factor,broadcast_mix_level,audio_engineer_name,calibration_tool_used,last_maintenance_date,compliance_certification,notes) VALUES
(3,'2024-08-20','Laser','97.5','115.0','1.6','0.30','EchoForce','130','14','40000','Main;Lower','1.3','-4.0','Tom Hughes','AcoustiCal','2024-07-25','ISO14001','Added acoustic panels');

-- Sponsor redemption programs and points
CREATE TABLE Sponsor_Redemption_Programs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    program_name TEXT,
    start_date TEXT,
    end_date TEXT,
    redemption_type TEXT,
    points_required INTEGER,
    reward_description TEXT,
    max_redemptions_per_user INTEGER,
    total_budget_usd REAL,
    allocated_budget_usd REAL,
    redemption_rate_percent REAL,
    eligible_product_categories TEXT,
    marketing_channel TEXT,
    promo_code TEXT,
    terms_conditions TEXT,
    redemption_tracking_id TEXT,
    audit_status TEXT,
    last_updated_timestamp TEXT,
    notes TEXT
);
INSERT INTO Sponsor_Redemption_Programs (sponsor_id,program_name,start_date,end_date,redemption_type,points_required,reward_description,max_redemptions_per_user,total_budget_usd,allocated_budget_usd,redemption_rate_percent,eligible_product_categories,marketing_channel,promo_code,terms_conditions,redemption_tracking_id,audit_status,last_updated_timestamp,notes) VALUES
(101,'Fan Loyalty Plus','2024-01-01','2024-12-31','Points','500','Exclusive jersey','2','200000.0','150000.0','75.0','Apparel;Accessories','SocialMedia','FLP2024','StandardTerms','RTID001','Approved','2024-04-15','High uptake during playoffs');
INSERT INTO Sponsor_Redemption_Programs (sponsor_id,program_name,start_date,end_date,redemption_type,points_required,reward_description,max_redemptions_per_user,total_budget_usd,allocated_budget_usd,redemption_rate_percent,eligible_product_categories,marketing_channel,promo_code,terms_conditions,redemption_tracking_id,audit_status,last_updated_timestamp,notes) VALUES
(102,'Matchday Bonus','2024-03-01','2024-09-30','Voucher','300','Free food voucher','1','120000.0','90000.0','70.0','Food;Beverage','Email','MDB2024','LimitedToOnePerMatch','RTID002','Pending','2024-05-01','Targeting weekend matches');
INSERT INTO Sponsor_Redemption_Programs (sponsor_id,program_name,start_date,end_date,redemption_type,points_required,reward_description,max_redemptions_per_user,total_budget_usd,allocated_budget_usd,redemption_rate_percent,eligible_product_categories,marketing_channel,promo_code,terms_conditions,redemption_tracking_id,audit_status,last_updated_timestamp,notes) VALUES
(103,'Digital Collectible Drop','2024-06-15','2024-12-15','NFT','800','Limited edition NFT','1','250000.0','200000.0','80.0','DigitalCollectibles','App','DCD2024','NoResaleAllowed','RTID003','Approved','2024-06-20','Partnership with blockchain provider');