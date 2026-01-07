-- Broadcast network contracts and terms
CREATE TABLE Broadcast_Network_Contracts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    network_name TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    annual_fee INTEGER,
    coverage_regions TEXT,
    primary_sport TEXT,
    secondary_sport TEXT,
    broadcast_format TEXT,
    hd_supported TEXT,
    streaming_allowed TEXT,
    exclusive_rights TEXT,
    renewal_option TEXT,
    cancel_clause TEXT,
    contract_status TEXT,
    payment_terms TEXT,
    contact_person TEXT,
    contact_email TEXT,
    notes TEXT,
    created_at TEXT
);
INSERT INTO Broadcast_Network_Contracts (network_name,contract_start_date,contract_end_date,annual_fee,coverage_regions,primary_sport,secondary_sport,broadcast_format,hd_supported,streaming_allowed,exclusive_rights,renewal_option,cancel_clause,contract_status,payment_terms,contact_person,contact_email,notes,created_at) VALUES ('NetworkOne','2023-01-01','2028-12-31',5000000,'Europe','Soccer','Tennis','Digital','Yes','Yes','Yes','Option1','30days','Active','Quarterly','John Doe','john.doe@networkone.com','Initial contract','2023-01-01');
INSERT INTO Broadcast_Network_Contracts (network_name,contract_start_date,contract_end_date,annual_fee,coverage_regions,primary_sport,secondary_sport,broadcast_format,hd_supported,streaming_allowed,exclusive_rights,renewal_option,cancel_clause,contract_status,payment_terms,contact_person,contact_email,notes,created_at) VALUES ('NetworkTwo','2022-06-15','2027-06-14',3000000,'Asia','Baseball','Cricket','Satellite','No','Yes','No','Option2','60days','Pending','Annual','Jane Smith','jane.smith@networktwo.com','Awaiting approval','2022-06-15');
INSERT INTO Broadcast_Network_Contracts (network_name,contract_start_date,contract_end_date,annual_fee,coverage_regions,primary_sport,secondary_sport,broadcast_format,hd_supported,streaming_allowed,exclusive_rights,renewal_option,cancel_clause,contract_status,payment_terms,contact_person,contact_email,notes,created_at) VALUES ('NetworkThree','2024-03-01','2029-02-28',4500000,'NorthAmerica','Basketball','Hockey','OTT','Yes','Yes','Yes','Option3','45days','Active','SemiAnnual','Mike Lee','mike.lee@networkthree.com','Renewal in 2028','2024-03-01');

-- Energy supply contracts for stadiums
CREATE TABLE Stadium_Energy_Contracts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_name TEXT,
    provider_name TEXT,
    contract_start TEXT,
    contract_end TEXT,
    energy_type TEXT,
    capacity_mwh INTEGER,
    price_per_mwh REAL,
    fixed_charge INTEGER,
    variable_charge REAL,
    renewable_percentage INTEGER,
    green_certificate TEXT,
    payment_schedule TEXT,
    contract_status TEXT,
    primary_contact TEXT,
    contact_phone TEXT,
    contact_email TEXT,
    sustainability_goal TEXT,
    audit_frequency TEXT,
    created_at TEXT
);
INSERT INTO Stadium_Energy_Contracts (stadium_name,provider_name,contract_start,contract_end,energy_type,capacity_mwh,price_per_mwh,fixed_charge,variable_charge,renewable_percentage,green_certificate,payment_schedule,contract_status,primary_contact,contact_phone,contact_email,sustainability_goal,audit_frequency,created_at) VALUES ('ArenaAlpha','EnergyCo','2023-01-01','2033-01-01','Electric','1200',0.08,20000,0.02,35,'Yes','Monthly','Active','Laura Green','5551234','laura.green@energyco.com','30% reduction','Annual','2023-01-01');
INSERT INTO Stadium_Energy_Contracts (stadium_name,provider_name,contract_start,contract_end,energy_type,capacity_mwh,price_per_mwh,fixed_charge,variable_charge,renewable_percentage,green_certificate,payment_schedule,contract_status,primary_contact,contact_phone,contact_email,sustainability_goal,audit_frequency,created_at) VALUES ('StadiumBeta','PowerGrid','2022-05-01','2032-05-01','Gas','800',0.05,15000,0.015,20,'No','Quarterly','Pending','Sam Patel','5555678','sam.patel@powergrid.com','10% reduction','BiAnnual','2022-05-01');
INSERT INTO Stadium_Energy_Contracts (stadium_name,provider_name,contract_start,contract_end,energy_type,capacity_mwh,price_per_mwh,fixed_charge,variable_charge,renewable_percentage,green_certificate,payment_schedule,contract_status,primary_contact,contact_phone,contact_email,sustainability_goal,audit_frequency,created_at) VALUES ('VenueGamma','SolarSolutions','2024-09-15','2034-09-14','Solar','500',0.03,10000,0.00,90,'Yes','Annual','Active','Nina Zhou','5559012','nina.zhou@solarsolutions.com','50% reduction','Annual','2024-09-15');

-- Club-led social responsibility initiatives
CREATE TABLE Club_Social_Initiatives (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_name TEXT,
    initiative_name TEXT,
    launch_date TEXT,
    target_community TEXT,
    focus_area TEXT,
    budget INTEGER,
    volunteers_needed INTEGER,
    partners TEXT,
    expected_outcome TEXT,
    status TEXT,
    metric_1 TEXT,
    metric_2 TEXT,
    metric_3 TEXT,
    reporting_frequency TEXT,
    lead_coordinator TEXT,
    coordinator_email TEXT,
    impact_score INTEGER,
    public_notes TEXT,
    created_at TEXT,
    last_updated TEXT
);
INSERT INTO Club_Social_Initiatives (club_name,initiative_name,launch_date,target_community,focus_area,budget,volunteers_needed,partners,expected_outcome,status,metric_1,metric_2,metric_3,reporting_frequency,lead_coordinator,coordinator_email,impact_score,public_notes,created_at,last_updated) VALUES ('FC United','YouthRead','2022-09-01','LocalSchools','Education',120000,50,'ReadCo','Improved literacy','Active','StudentsReached','BooksDonated','HoursTutored','Quarterly','Emma Brown','emma.brown@fcunited.com',85,'Positive feedback','2022-09-01','2023-03-10');
INSERT INTO Club_Social_Initiatives (club_name,initiative_name,launch_date,target_community,focus_area,budget,volunteers_needed,partners,expected_outcome,status,metric_1,metric_2,metric_3,reporting_frequency,lead_coordinator,coordinator_email,impact_score,public_notes,created_at,last_updated) VALUES ('City FC','GreenStadium','2023-04-15','Fans','Environmental',200000,30,'EcoGroup','Reduced carbon footprint','Planning','EnergySaved','WasteReduced','TreesPlanted','Monthly','Liam Carter','liam.carter@cityfc.com',70,'Design phase','2023-04-15','2023-08-20');
INSERT INTO Club_Social_Initiatives (club_name,initiative_name,launch_date,target_community,focus_area,budget,volunteers_needed,partners,expected_outcome,status,metric_1,metric_2,metric_3,reporting_frequency,lead_coordinator,coordinator_email,impact_score,public_notes,created_at,last_updated) VALUES ('Rovers','HealthRun','2021-06-10','Community','Health',80000,20,'HealthOrg','Increased activity','Completed','Participants','CaloriesBurned','FundsRaised','Annual','Olivia Davis','olivia.davis@rovers.com',90,'Exceeded goals','2021-06-10','2022-01-05');

-- Analytics for international fan tours
CREATE TABLE International_Fan_Tour_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tour_name TEXT,
    year INTEGER,
    continent TEXT,
    cities_visited INTEGER,
    total_fans INTEGER,
    avg_attendance INTEGER,
    revenue INTEGER,
    merchandise_sales INTEGER,
    sponsor_exposure INTEGER,
    social_media_impressions INTEGER,
    net_promoter_score INTEGER,
    fan_satisfaction_score INTEGER,
    travel_cost INTEGER,
    accommodation_cost INTEGER,
    marketing_spend INTEGER,
    net_profit INTEGER,
    primary_partner TEXT,
    secondary_partner TEXT,
    feedback_summary TEXT,
    created_at TEXT
);
INSERT INTO International_Fan_Tour_Analytics (tour_name,year,continent,cities_visited,total_fans,avg_attendance,revenue,merchandise_sales,sponsor_exposure,social_media_impressions,net_promoter_score,fan_satisfaction_score,travel_cost,accommodation_cost,marketing_spend,net_profit,primary_partner,secondary_partner,feedback_summary,created_at) VALUES ('GlobalFans2022','2022','Europe',12,45000,3800,3200000,500000,1500000,8000000,78,85,250000,180000,300000,1970000,'BrandA','BrandB','Highly positive','2022-12-01');
INSERT INTO International_Fan_Tour_Analytics (tour_name,year,continent,cities_visited,total_fans,avg_attendance,revenue,merchandise_sales,sponsor_exposure,social_media_impressions,net_promoter_score,fan_satisfaction_score,travel_cost,accommodation_cost,marketing_spend,net_profit,primary_partner,secondary_partner,feedback_summary,created_at) VALUES ('AsiaTour2023','2023','Asia',9,38000,4200,2800000,420000,1300000,7200000,74,82,220000,150000,280000,1650000,'BrandC','BrandD','Positive with suggestions','2023-11-15');
INSERT INTO International_Fan_Tour_Analytics (tour_name,year,continent,cities_visited,total_fans,avg_attendance,revenue,merchandise_sales,sponsor_exposure,social_media_impressions,net_promoter_score,fan_satisfaction_score,travel_cost,accommodation_cost,marketing_spend,net_profit,primary_partner,secondary_partner,feedback_summary,created_at) VALUES ('Americas2024','2024','NorthAmerica',15,52000,4000,3500000,600000,1700000,9000000,81,88,260000,200000,320000,2090000,'BrandE','BrandF','Outstanding reception','2024-09-30');

-- Team-specific analytics dashboard definitions
CREATE TABLE Team_Analytics_Dashboards (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_name TEXT,
    dashboard_name TEXT,
    created_date TEXT,
    updated_date TEXT,
    data_source TEXT,
    refresh_interval TEXT,
    visual_type TEXT,
    metric_1 TEXT,
    metric_2 TEXT,
    metric_3 TEXT,
    metric_4 TEXT,
    metric_5 TEXT,
    owner TEXT,
    access_level TEXT,
    view_count INTEGER,
    last_viewed TEXT,
    notes TEXT,
    is_active TEXT,
    version INTEGER
);
INSERT INTO Team_Analytics_Dashboards (team_name,dashboard_name,created_date,updated_date,data_source,refresh_interval,visual_type,metric_1,metric_2,metric_3,metric_4,metric_5,owner,access_level,view_count,last_viewed,notes,is_active,version) VALUES ('FC United','SeasonPerformance','2023-01-15','2023-08-20','MatchDB','Daily','Bar','Goals','Assists','PassAccuracy','Tackles','Interceptions','DataTeam','Public',1240,'2023-08-20','Core metrics dashboard','Yes',3);
INSERT INTO Team_Analytics_Dashboards (team_name,dashboard_name,created_date,updated_date,data_source,refresh_interval,visual_type,metric_1,metric_2,metric_3,metric_4,metric_5,owner,access_level,view_count,last_viewed,notes,is_active,version) VALUES ('City FC','PlayerHealth','2022-11-05','2023-07-30','HealthDB','Weekly','Line','Stamina','InjuryDays','RecoveryScore','HeartRate','SleepHours','HealthDept','Restricted',860,'2023-07-30','Monitoring player wellness','Yes',2);
INSERT INTO Team_Analytics_Dashboards (team_name,dashboard_name,created_date,updated_date,data_source,refresh_interval,visual_type,metric_1,metric_2,metric_3,metric_4,metric_5,owner,access_level,view_count,last_viewed,notes,is_active,version) VALUES ('Rovers','FanEngagement','2023-03-10','2023-09-01','SocialDB','RealTime','Heatmap','Likes','Comments','Shares','Mentions','Sentiment','Marketing','Public',540,'2023-09-01','Social pulse view','No',1);

-- Medical staff training and certification logs
CREATE TABLE Medical_Staff_Training_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    staff_id INTEGER,
    staff_name TEXT,
    role TEXT,
    training_name TEXT,
    provider TEXT,
    start_date TEXT,
    end_date TEXT,
    hours INTEGER,
    certification_status TEXT,
    renewal_required TEXT,
    next_due_date TEXT,
    trainer_name TEXT,
    trainer_contact TEXT,
    evaluation_score INTEGER,
    comments TEXT,
    location TEXT,
    cost INTEGER,
    funded_by TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Medical_Staff_Training_Logs (staff_id,staff_name,role,training_name,provider,start_date,end_date,hours,certification_status,renewal_required,next_due_date,trainer_name,trainer_contact,evaluation_score,comments,location,cost,funded_by,created_at,updated_at) VALUES (101,'DrAlice','Physiotherapist','AdvancedRehab','MedInstitute','2023-02-01','2023-02-10',40,'Completed','Yes','2025-02-01','John Trainer','5551111',92,'Excellent','StadiumClinic',2000,'Club','2023-02-12','2023-02-15');
INSERT INTO Medical_Staff_Training_Logs (staff_id,staff_name,role,training_name,provider,start_date,end_date,hours,certification_status,renewal_required,next_due_date,trainer_name,trainer_contact,evaluation_score,comments,location,cost,funded_by,created_at,updated_at) VALUES (102,'NurseBob','Team Nurse','EmergencyResponse','HealthOrg','2022-11-15','2022-11-18',24,'Completed','No','2024-11-15','Sara Coach','5552222',88,'Good','ClubMedicalCenter',1200,'Club','2022-11-20','2022-11-22');
INSERT INTO Medical_Staff_Training_Logs (staff_id,staff_name,role,training_name,provider,start_date,end_date,hours,certification_status,renewal_required,next_due_date,trainer_name,trainer_contact,evaluation_score,comments,location,cost,funded_by,created_at,updated_at) VALUES (103,'DrMike','Doctor','SportsMedicine','UniMedical','2023-06-05','2023-06-12',56,'Completed','Yes','2026-06-05','DrEmily','5553333',95,'Outstanding','HospitalA',2500,'Club','2023-06-15','2023-06-18');

-- League-level commercial partnership details
CREATE TABLE League_Commercial_Partners (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_name TEXT,
    partner_name TEXT,
    partnership_type TEXT,
    start_year INTEGER,
    end_year INTEGER,
    annual_fee INTEGER,
    branding_rights TEXT,
    media_rights TEXT,
    exclusivity TEXT,
    activation_plan TEXT,
    performance_metrics TEXT,
    contact_person TEXT,
    contact_email TEXT,
    contract_status TEXT,
    renewal_clause TEXT,
    cancellation_policy TEXT,
    notes TEXT,
    created_at TEXT,
    last_review TEXT
);
INSERT INTO League_Commercial_Partners (league_name,partner_name,partnership_type,start_year,end_year,annual_fee,branding_rights,media_rights,exclusivity,activation_plan,performance_metrics,contact_person,contact_email,contract_status,renewal_clause,cancellation_policy,notes,created_at,last_review) VALUES ('PremierLeague','GlobalSports','TitleSponsor',2021,2026,15000000,'StadiumSignage','Broadcast','Exclusive','SeasonCampaign','Viewership','Anna Lee','anna.lee@globalsports.com','Active','AutoRenew','30Days','Strong brand fit','2021-03-01','2024-01-10');
INSERT INTO League_Commercial_Partners (league_name,partner_name,partnership_type,start_year,end_year,annual_fee,branding_rights,media_rights,exclusivity,activation_plan,performance_metrics,contact_person,contact_email,contract_status,renewal_clause,cancellation_policy,notes,created_at,last_review) VALUES ('Championship','TechSolutions','OfficialTechPartner',2022,2025,8000000,'DigitalAds','Streaming','NonExclusive','TechInnovationSeries','Engagement','Mark Turner','mark.turner@techsolutions.com','Pending','Negotiable','60Days','Pending final terms','2022-07-15','2023-12-05');
INSERT INTO League_Commercial_Partners (league_name,partner_name,partnership_type,start_year,end_year,annual_fee,branding_rights,media_rights,exclusivity,activation_plan,performance_metrics,contact_person,contact_email,contract_status,renewal_clause,cancellation_policy,notes,created_at,last_review) VALUES ('LeagueOne','EcoEnergy','SustainabilityPartner',2020,2024,5000000,'EcoLogo','Matchday','Exclusive','GreenInitiatives','CarbonReduction','Laura Patel','laura.patel@ecoenergy.com','Active','OptionToExtend','90Days','Aligned with league ESG goals','2020-01-20','2023-06-30');

-- Acoustic profiling measurements for venues
CREATE TABLE Venue_Acoustic_Measurements (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_name TEXT,
    measurement_date TEXT,
    frequency_range TEXT,
    reverberation_time REAL,
    speech_clarity REAL,
    background_noise_level REAL,
    sound_pressure_level REAL,
    microphone_type TEXT,
    analyzer_model TEXT,
    technician_name TEXT,
    notes TEXT,
    calibrated TEXT,
    temperature REAL,
    humidity REAL,
    occupancy_level INTEGER,
    source_type TEXT,
    frequency_bins INTEGER,
    average_rt60 REAL,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Venue_Acoustic_Measurements (venue_name,measurement_date,frequency_range,reverberation_time,speech_clarity,background_noise_level,sound_pressure_level,microphone_type,analyzer_model,technician_name,notes,calibrated,temperature,humidity,occupancy_level,source_type,frequency_bins,average_rt60,created_at,updated_at) VALUES ('ArenaAlpha','2023-04-10','20-20000Hz',1.8,0.85,35,78,'Omnidirectional','AcoustiX200','Mike Torres','Initial test','Yes',22.5,45,5000,'Live','256',1.75,'2023-04-10','2023-04-12');
INSERT INTO Venue_Acoustic_Measurements (venue_name,measurement_date,frequency_range,reverberation_time,speech_clarity,background_noise_level,sound_pressure_level,microphone_type,analyzer_model,technician_name,notes,calibrated,temperature,humidity,occupancy_level,source_type,frequency_bins,average_rt60,created_at,updated_at) VALUES ('StadiumBeta','2023-06-05','20-20000Hz',2.2,0.78,38,80,'Cardioid','SoundAnalytica','Sara Lee','Post‑renovation','Yes',21.0,50,7000,'Music','512',2.15,'2023-06-05','2023-06-07');
INSERT INTO Venue_Acoustic_Measurements (venue_name,measurement_date,frequency_range,reverberation_time,speech_clarity,background_noise_level,sound_pressure_level,microphone_type,analyzer_model,technician_name,notes,calibrated,temperature,humidity,occupancy_level,source_type,frequency_bins,average_rt60,created_at,updated_at) VALUES ('VenueGamma','2023-08-20','20-20000Hz',1.5,0.90,32,76,'Bidirectional','AcoustiPro','James Wu','Pre‑event check','Yes',23.0,40,3500,'Speech','128',1.45,'2023-08-20','2023-08-22');

-- Digital asset usage statistics per campaign
CREATE TABLE Digital_Asset_Usage_Stats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_id TEXT,
    asset_type TEXT,
    campaign_name TEXT,
    platform TEXT,
    impressions INTEGER,
    clicks INTEGER,
    ctr REAL,
    spend INTEGER,
    start_date TEXT,
    end_date TEXT,
    view_rate REAL,
    engagement_time REAL,
    target_audience TEXT,
    geo_target TEXT,
    device_type TEXT,
    status TEXT,
    created_by TEXT,
    created_at TEXT,
    last_modified TEXT,
    notes TEXT
);
INSERT INTO Digital_Asset_Usage_Stats (asset_id,asset_type,campaign_name,platform,impressions,clicks,ctr,spend,start_date,end_date,view_rate,engagement_time,target_audience,geo_target,device_type,status,created_by,created_at,last_modified,notes) VALUES ('AS001','Video','SummerLaunch','YouTube',1500000,45000,0.03,120000,'2023-06-01','2023-08-31',0.78,35,'Fans18-35','Europe','Mobile','Active','Mark Lee','2023-05-20','2023-09-01','High engagement');
INSERT INTO Digital_Asset_Usage_Stats (asset_id,asset_type,campaign_name,platform,impressions,clicks,ctr,spend,start_date,end_date,view_rate,engagement_time,target_audience,geo_target,device_type,status,created_by,created_at,last_modified,notes) VALUES ('AS002','Banner','TicketPromo','DisplayNetwork',800000,12000,0.015,50000,'2023-03-15','2023-04-30',0.65,20,'Fans25-45','NorthAmerica','Desktop','Completed','Linda Kim','2023-03-01','2023-05-01','Reached sell‑out goal');
INSERT INTO Digital_Asset_Usage_Stats (asset_id,asset_type,campaign_name,platform,impressions,clicks,ctr,spend,start_date,end_date,view_rate,engagement_time,target_audience,geo_target,device_type,status,created_by,created_at,last_modified,notes) VALUES ('AS003','Image','MerchDrop','Instagram',600000,18000,0.03,75000,'2023-09-01','2023-10-15',0.80,28,'Fans15-30','Asia','Mobile','Active','Carlos Ruiz','2023-08-20','2023-10-20','Strong conversion');

-- Performance metrics collected during training camps
CREATE TABLE Training_Camp_Performance_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    camp_name TEXT,
    year INTEGER,
    location TEXT,
    duration_days INTEGER,
    participants INTEGER,
    avg_fitness_score INTEGER,
    max_speed REAL,
    average_endurance REAL,
    injury_rate REAL,
    nutrition_compliance REAL,
    recovery_quality REAL,
    coach_feedback_score INTEGER,
    player_feedback_score INTEGER,
    weather_conditions TEXT,
    equipment_utilization REAL,
    budget_used INTEGER,
    sponsor_contribution INTEGER,
    overall_success_score INTEGER,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Training_Camp_Performance_Metrics (camp_name,year,location,duration_days,participants,avg_fitness_score,max_speed,average_endurance,injury_rate,nutrition_compliance,recovery_quality,coach_feedback_score,player_feedback_score,weather_conditions,equipment_utilization,budget_used,sponsor_contribution,overall_success_score,created_at,updated_at) VALUES ('CampAlpha',2023,'Barcelona',14,28,85,33.5,78.2,0.02,0.95,0.88,90,87,'MildRain',0.92,180000,50000,92,'2023-02-01','2023-02-15');
INSERT INTO Training_Camp_Performance_Metrics (camp_name,year,location,duration_days,participants,avg_fitness_score,max_speed,average_endurance,injury_rate,nutrition_compliance,recovery_quality,coach_feedback_score,player_feedback_score,weather_conditions,equipment_utilization,budget_used,sponsor_contribution,overall_success_score,created_at,updated_at) VALUES ('CampBeta',2022,'Lisbon',10,22,80,31.2,74.5,0.01,0.92,0.85,88,84,'Sunny',0.88,150000,30000,88,'2022-07-10','2022-07-22');
INSERT INTO Training_Camp_Performance_Metrics (camp_name,year,location,duration_days,participants,avg_fitness_score,max_speed,average_endurance,injury_rate,nutrition_compliance,recovery_quality,coach_feedback_score,player_feedback_score,weather_conditions,equipment_utilization,budget_used,sponsor_contribution,overall_success_score,created_at,updated_at) VALUES ('CampGamma',2024,'Munich',12,30,88,34.0,80.1,0.015,0.97,0.90,92,90,'Cloudy',0.94,200000,60000,95,'2024-01-05','2024-01-20');