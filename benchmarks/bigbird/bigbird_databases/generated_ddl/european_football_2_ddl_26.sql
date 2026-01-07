-- Video production logs for match recordings
CREATE TABLE Video_Production_Logs (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    production_company TEXT,
    camera_operator TEXT,
    drone_operator TEXT,
    editing_software TEXT,
    resolution TEXT,
    frame_rate INTEGER,
    audio_mix TEXT,
    color_grade TEXT,
    file_format TEXT,
    storage_path TEXT,
    upload_date TEXT,
    video_length_seconds INTEGER,
    bitrate INTEGER,
    aspect_ratio TEXT,
    language TEXT,
    subtitles_present TEXT,
    version TEXT,
    notes TEXT
);

INSERT INTO Video_Production_Logs (match_id,production_company,camera_operator,drone_operator,editing_software,resolution,frame_rate,audio_mix,color_grade,file_format,storage_path,upload_date,video_length_seconds,bitrate,aspect_ratio,language,subtitles_present,version,notes) VALUES (101,'AlphaMedia','JohnDoe','MikeFly','PremierePro','1080p',30,'Stereo','Standard','mp4','/videos/101.mp4','2025-08-01',5400,8000,'16:9','English','Yes','v1','Initial upload');
INSERT INTO Video_Production_Logs (match_id,production_company,camera_operator,drone_operator,editing_software,resolution,frame_rate,audio_mix,color_grade,file_format,storage_path,upload_date,video_length_seconds,bitrate,aspect_ratio,language,subtitles_present,version,notes) VALUES (102,'BetaFilms','AnnaSmith','LaraSky','FinalCut','4K',60,'5.1','Cinematic','mov','/videos/102.mov','2025-08-02',5400,12000,'16:9','English','Yes','v1','First cut');
INSERT INTO Video_Production_Logs (match_id,production_company,camera_operator,drone_operator,editing_software,resolution,frame_rate,audio_mix,color_grade,file_format,storage_path,upload_date,video_length_seconds,bitrate,aspect_ratio,language,subtitles_present,version,notes) VALUES (103,'GammaStudios','TomLee','SamHover','DaVinci','720p',24,'Mono','Standard','avi','/videos/103.avi','2025-08-03',5400,5000,'16:9','English','No','v1','Archive copy');

-- Fan zone activities during match days
CREATE TABLE Fan_Zone_Activities (
    activity_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    activity_name TEXT,
    schedule_start TEXT,
    schedule_end TEXT,
    provider TEXT,
    capacity INTEGER,
    ticket_required TEXT,
    age_restriction INTEGER,
    sponsor TEXT,
    interactive_level TEXT,
    equipment_list TEXT,
    staff_assigned INTEGER,
    safety_rating INTEGER,
    feedback_score REAL,
    social_media_hashtag TEXT,
    promotional_materials TEXT,
    covid_measures TEXT,
    weather_plan TEXT,
    notes TEXT,
    created_at TEXT
);

INSERT INTO Fan_Zone_Activities (stadium_id,activity_name,schedule_start,schedule_end,provider,capacity,ticket_required,age_restriction,sponsor,interactive_level,equipment_list,staff_assigned,safety_rating,feedback_score,social_media_hashtag,promotional_materials,covid_measures,weather_plan,notes,created_at) VALUES (1,'Goal Celebration Booth','2025-09-10 12:00','2025-09-10 22:00','FunEventsCo',500,'No',0,'BrandX','High','Screen,Speaker','15',9,4.7,'#GoalBooth','Banners,Flyers','MaskRequired','RainBackup','Popular zone', '2025-01-15');
INSERT INTO Fan_Zone_Activities (stadium_id,activity_name,schedule_start,schedule_end,provider,capacity,ticket_required,age_restriction,sponsor,interactive_level,equipment_list,staff_assigned,safety_rating,feedback_score,social_media_hashtag,promotional_materials,covid_measures,weather_plan,notes,created_at) VALUES (2,'Virtual Reality Arena','2025-09-11 13:00','2025-09-11 21:00','VRWorld',200,'Yes',12,'TechPartner','Medium','VRHeadsets','10',8,4.2,'#VRMatch','Posters','SanitizationStations','Indoor','Limited slots', '2025-02-05');
INSERT INTO Fan_Zone_Activities (stadium_id,activity_name,schedule_start,schedule_end,provider,capacity,ticket_required,age_restriction,sponsor,interactive_level,equipment_list,staff_assigned,safety_rating,feedback_score,social_media_hashtag,promotional_materials,covid_measures,weather_plan,notes,created_at) VALUES (3,'Kids Soccer Clinic','2025-09-12 10:00','2025-09-12 14:00','YouthSports',150,'No',5,'SportBrand','Low','Cones,Balls','8',7,4.5,'#KidsClinic','Stickers','HandWashing','OutdoorTent','Family friendly', '2025-03-01');

-- Merchandise pricing models for club shop
CREATE TABLE Merchandise_Pricing_Models (
    model_id INTEGER PRIMARY KEY AUTOINCREMENT,
    merchandise_id INTEGER,
    base_price REAL,
    discount_rate REAL,
    seasonal_multiplier REAL,
    region TEXT,
    currency TEXT,
    tax_included TEXT,
    price_effective_date TEXT,
    price_expiration_date TEXT,
    price_type TEXT,
    bundle_option TEXT,
    min_quantity INTEGER,
    max_quantity INTEGER,
    loyalty_points INTEGER,
    price_change_reason TEXT,
    approved_by TEXT,
    approval_date TEXT,
    version TEXT,
    notes TEXT,
    created_at TEXT
);

INSERT INTO Merchandise_Pricing_Models (merchandise_id,base_price,discount_rate,seasonal_multiplier,region,currency,tax_included,price_effective_date,price_expiration_date,price_type,bundle_option,min_quantity,max_quantity,loyalty_points,price_change_reason,approved_by,approval_date,version,notes,created_at) VALUES (1001,49.99,0.10,1.00,'Europe','EUR','Yes','2025-10-01','2025-12-31','Retail','None',1,5,100,'SeasonalDiscount','ManagerA','2025-09-15','v1','Standard jersey pricing','2025-09-01');
INSERT INTO Merchandise_Pricing_Models (merchandise_id,base_price,discount_rate,seasonal_multiplier,region,currency,tax_included,price_effective_date,price_expiration_date,price_type,bundle_option,min_quantity,max_quantity,loyalty_points,price_change_reason,approved_by,approval_date,version,notes,created_at) VALUES (1002,79.99,0.15,0.90,'NorthAmerica','USD','No','2025-11-01','2026-01-31','Online','BundlePack',2,10,150,'Clearance','ManagerB','2025-10-20','v1','Hat bundle discount','2025-10-05');
INSERT INTO Merchandise_Pricing_Models (merchandise_id,base_price,discount_rate,seasonal_multiplier,region,currency,tax_included,price_effective_date,price_expiration_date,price_type,bundle_option,min_quantity,max_quantity,loyalty_points,price_change_reason,approved_by,approval_date,version,notes,created_at) VALUES (1003,19.99,0.00,1.10,'Asia','JPY','Yes','2025-12-01','2026-02-28','Retail','GiftWrap',1,3,50,'PremiumSeason','ManagerC','2025-11-25','v1','Scarf premium pricing','2025-11-10');

-- Sponsorship activation events linked to clubs
CREATE TABLE Sponsorship_Activation_Events (
    event_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    club_id INTEGER,
    event_name TEXT,
    event_date TEXT,
    location TEXT,
    activation_type TEXT,
    target_audience TEXT,
    budget REAL,
    expected_impressions INTEGER,
    actual_impressions INTEGER,
    media_coverage TEXT,
    social_engagement INTEGER,
    feedback_score REAL,
    manager_responsible TEXT,
    contracts_ref TEXT,
    logistic_partner TEXT,
    equipment_used TEXT,
    notes TEXT,
    created_at TEXT
);

INSERT INTO Sponsorship_Activation_Events (sponsor_id,club_id,event_name,event_date,location,activation_type,target_audience,budget,expected_impressions,actual_impressions,media_coverage,social_engagement,feedback_score,manager_responsible,contracts_ref,logistic_partner,equipment_used,notes,created_at) VALUES (201,301,'Summer Fan Fest','2025-07-20','Stadium Plaza','LiveDemo','Fans',25000,50000,47000,'TV,Online','12000',4.3,'EmmaLee','CON123','LogiServe','LEDScreens','High attendance', '2025-03-10');
INSERT INTO Sponsorship_Activation_Events (sponsor_id,club_id,event_name,event_date,location,activation_type,target_audience,budget,expected_impressions,actual_impressions,media_coverage,social_engagement,feedback_score,manager_responsible,contracts_ref,logistic_partner,equipment_used,notes,created_at) VALUES (202,302,'Charity Match','2025-09-15','Community Park','Community','Families',40000,80000,82000,'Radio,Print','15000',4.7,'LiamK','CON456','TransMove','PortableGoals','Donation drive', '2025-04-22');
INSERT INTO Sponsorship_Activation_Events (sponsor_id,club_id,event_name,event_date,location,activation_type,target_audience,budget,expected_impressions,actual_impressions,media_coverage,social_engagement,feedback_score,manager_responsible,contracts_ref,logistic_partner,equipment_used,notes,created_at) VALUES (203,303,'Winter Training Camp','2025-12-05','Mountain Resort','Training','YouthPlayers',30000,30000,31000,'LocalNews','8000',4.5,'OliviaS','CON789','CampLogistics','TrainingKits','Snow gear provided', '2025-05-15');

-- University talent pipeline data
CREATE TABLE University_Talent_Pipeline (
    pipeline_id INTEGER PRIMARY KEY AUTOINCREMENT,
    university_name TEXT,
    program_name TEXT,
    contact_person TEXT,
    contact_email TEXT,
    scouting_status TEXT,
    number_of_players INTEGER,
    avg_rating REAL,
    scholarship_amount REAL,
    partnership_start TEXT,
    partnership_end TEXT,
    agreement_doc TEXT,
    next_review_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    region TEXT,
    sport_focus TEXT,
    social_media_handle TEXT,
    recruitment_budget REAL
);

INSERT INTO University_Talent_Pipeline (university_name,program_name,contact_person,contact_email,scouting_status,number_of_players,avg_rating,scholarship_amount,partnership_start,partnership_end,agreement_doc,next_review_date,notes,created_at,updated_at,region,sport_focus,social_media_handle,recruitment_budget) VALUES ('NorthState University','SportsScience','John Patel','john.patel@nsu.edu','Active',12,78.5,15000,'2024-09-01','2029-08-31','DOC001','2025-09-01','Strong academic link','2025-02-01','2025-02-01','NorthAmerica','Football','@nsusport','50000');
INSERT INTO University_Talent_Pipeline (university_name,program_name,contact_person,contact_email,scouting_status,number_of_players,avg_rating,scholarship_amount,partnership_start,partnership_end,agreement_doc,next_review_date,notes,created_at,updated_at,region,sport_focus,social_media_handle,recruitment_budget) VALUES ('Eastside College','AthleticMgmt','Maria Gomez','m.gomez@eastside.edu','Prospecting',8,81.2,12000,'2025-01-15','2028-12-31','DOC002','2025-12-01','Initial scouting phase','2025-03-10','2025-03-10','Europe','Basketball','@eastsideath','40000');
INSERT INTO University_Talent_Pipeline (university_name,program_name,contact_person,contact_email,scouting_status,number_of_players,avg_rating,scholarship_amount,partnership_start,partnership_end,agreement_doc,next_review_date,notes,created_at,updated_at,region,sport_focus,social_media_handle,recruitment_budget) VALUES ('Southern Tech','PhysicalEducation','Liu Wei','liu.wei@stech.edu','Inactive',0,0,0,'2022-05-01','2025-04-30','DOC003','2025-04-01','Program discontinued','2025-01-20','2025-01-20','Asia','Rugby','@southerntech','30000');

-- Virtual fan experience assets
CREATE TABLE Virtual_Fan_Experience_Assets (
    asset_id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_type TEXT,
    file_name TEXT,
    file_path TEXT,
    resolution TEXT,
    size_mb REAL,
    created_by TEXT,
    created_date TEXT,
    last_modified_by TEXT,
    last_modified_date TEXT,
    usage_rights TEXT,
    license_expiration TEXT,
    associated_event TEXT,
    description TEXT,
    tags TEXT,
    active_flag TEXT,
    version TEXT,
    notes TEXT,
    platform TEXT,
    download_count INTEGER
);

INSERT INTO Virtual_Fan_Experience_Assets (asset_type,file_name,file_path,resolution,size_mb,created_by,created_date,last_modified_by,last_modified_date,usage_rights,license_expiration,associated_event,description,tags,active_flag,version,notes,platform,download_count) VALUES ('3DModel','stadium_3d.obj','/assets/3d/stadium_3d.obj','4K',85.2,'CreativeTeam','2025-04-01','CreativeTeam','2025-04-02','ClubOnly','2026-04-01','SeasonKickoff','Stadium model for VR','vr,stadium','Yes','v1','Initial version','Oculus',1200);
INSERT INTO Virtual_Fan_Experience_Assets (asset_type,file_name,file_path,resolution,size_mb,created_by,created_date,last_modified_by,last_modified_date,usage_rights,license_expiration,associated_event,description,tags,active_flag,version,notes,platform,download_count) VALUES ('Video','highlights_aug.mp4','/assets/video/highlights_aug.mp4','1080p',250.5,'MediaDept','2025-08-05','MediaDept','2025-08-06','Public','2025-12-31','AugustMatch','Match highlights for fan portal','highlights,august','Yes','v2','Edited with captions','Web',3400);
INSERT INTO Virtual_Fan_Experience_Assets (asset_type,file_name,file_path,resolution,size_mb,created_by,created_date,last_modified_by,last_modified_date,usage_rights,license_expiration,associated_event,description,tags,active_flag,version,notes,platform,download_count) VALUES ('Audio','cheer_theme.wav','/assets/audio/cheer_theme.wav','N/A',12.7,'SoundTeam','2025-01-15','SoundTeam','2025-01-16','ClubOnly','2027-01-15','SeasonOpening','Stadium cheer sound','audio,cheer','Yes','v1','Looped version','MobileApp',800);

-- Stadium energy source details
CREATE TABLE Stadium_Energy_Sources (
    source_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    source_type TEXT,
    capacity_mw REAL,
    provider_name TEXT,
    contract_start TEXT,
    contract_end TEXT,
    cost_per_mwh REAL,
    renewable_percentage REAL,
    carbon_offset TEXT,
    maintenance_schedule TEXT,
    last_inspection_date TEXT,
    status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    region TEXT,
    grid_connection_id TEXT,
    backup_capacity_mw REAL,
    reliability_rating INTEGER
);

INSERT INTO Stadium_Energy_Sources (stadium_id,source_type,capacity_mw,provider_name,contract_start,contract_end,cost_per_mwh,renewable_percentage,carbon_offset,maintenance_schedule,last_inspection_date,status,notes,created_at,updated_at,region,grid_connection_id,backup_capacity_mw,reliability_rating) VALUES (1,'Solar','5.0','SunPower','2024-01-01','2034-12-31','0.08','100','Yes','Quarterly','2025-06-10','Active','Solar panels on roof','2025-02-01','2025-02-01','Europe','GRID001','1.0',9);
INSERT INTO Stadium_Energy_Sources (stadium_id,source_type,capacity_mw,provider_name,contract_start,contract_end,cost_per_mwh,renewable_percentage,carbon_offset,maintenance_schedule,last_inspection_date,status,notes,created_at,updated_at,region,grid_connection_id,backup_capacity_mw,reliability_rating) VALUES (2,'Wind','3.5','WindCorp','2023-05-15','2033-05-14','0.07','95','Partial','Biannual','2025-04-20','Active','Turbines on outskirts','2025-03-10','2025-03-10','NorthAmerica','GRID045','0.8',8);
INSERT INTO Stadium_Energy_Sources (stadium_id,source_type,capacity_mw,provider_name,contract_start,contract_end,cost_per_mwh,renewable_percentage,carbon_offset,maintenance_schedule,last_inspection_date,status,notes,created_at,updated_at,region,grid_connection_id,backup_capacity_mw,reliability_rating) VALUES (3,'Grid','10.0','NationalGrid','2022-09-01','2032-08-31','0.12','60','Yes','Annual','2025-01-15','Active','Standard grid connection','2025-01-01','2025-01-01','Asia','GRID078','2.0',7);

-- Club analytics dashboard view logs
CREATE TABLE Club_Analytics_Dashboard_Views (
    view_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    dashboard_name TEXT,
    view_timestamp TEXT,
    duration_seconds INTEGER,
    device_type TEXT,
    os_version TEXT,
    app_version TEXT,
    ip_address TEXT,
    location TEXT,
    filters_applied TEXT,
    export_format TEXT,
    data_volume_mb REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    access_level TEXT,
    session_id TEXT,
    error_flag TEXT,
    feedback_score REAL
);

INSERT INTO Club_Analytics_Dashboard_Views (user_id,dashboard_name,view_timestamp,duration_seconds,device_type,os_version,app_version,ip_address,location,filters_applied,export_format,data_volume_mb,notes,created_at,updated_at,access_level,session_id,error_flag,feedback_score) VALUES (501,'SeasonPerformance','2025-08-20 09:15:00',180,'Desktop','Windows10','1.3','192.168.1.10','London','team=All','PDF',2.5,'Viewed summary','2025-08-20','2025-08-20','Admin','SID001','No',4.6);
INSERT INTO Club_Analytics_Dashboard_Views (user_id,dashboard_name,view_timestamp,duration_seconds,device_type,os_version,app_version,ip_address,location,filters_applied,export_format,data_volume_mb,notes,created_at,updated_at,access_level,session_id,error_flag,feedback_score) VALUES (502,'FinancialOverview','2025-08-21 14:40:00',240,'Tablet','iOS14','1.3','192.168.1.22','Manchester','year=2025','Excel',3.1,'Deep dive','2025-08-21','2025-08-21','Finance','SID002','No',4.2);
INSERT INTO Club_Analytics_Dashboard_Views (user_id,dashboard_name,view_timestamp,duration_seconds,device_type,os_version,app_version,ip_address,location,filters_applied,export_format,data_volume_mb,notes,created_at,updated_at,access_level,session_id,error_flag,feedback_score) VALUES (503,'FanEngagement','2025-08-22 11:05:00',120,'Mobile','Android11','1.3','192.168.1.33','Berlin','segment=Premium','CSV',1.8','Quick check','2025-08-22','2025-08-22','Marketing','SID003','No',4.8);

-- Player nutrition supplement log
CREATE TABLE Player_Nutrition_Supplement_Log (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    supplement_name TEXT,
    dosage_mg INTEGER,
    frequency_per_day INTEGER,
    start_date TEXT,
    end_date TEXT,
    prescribing_doctor TEXT,
    reason TEXT,
    notes TEXT,
    compliance_score REAL,
    side_effects TEXT,
    batch_number TEXT,
    manufacturer TEXT,
    approved_flag TEXT,
    created_at TEXT,
    updated_at TEXT,
    compliance_check_date TEXT,
    lab_test_result TEXT,
    expiration_date TEXT
);

INSERT INTO Player_Nutrition_Supplement_Log (player_id,supplement_name,dosage_mg,frequency_per_day,start_date,end_date,prescribing_doctor,reason,notes,compliance_score,side_effects,batch_number,manufacturer,approved_flag,created_at,updated_at,compliance_check_date,lab_test_result,expiration_date) VALUES (1001,'ProteinBlend','3000','2','2025-07-01','2025-12-31','DrSmith','Recovery','No issues',9.5,'None','B123','NutriCo','Yes','2025-07-01','2025-07-01','2025-09-01','Pass','2026-01-01');
INSERT INTO Player_Nutrition_Supplement_Log (player_id,supplement_name,dosage_mg,frequency_per_day,start_date,end_date,prescribing_doctor,reason,notes,compliance_score,side_effects,batch_number,manufacturer,approved_flag,created_at,updated_at,compliance_check_date,lab_test_result,expiration_date) VALUES (1002,'Omega3','2000','1','2025-08-15','2026-02-14','DrLee','HeartHealth','Mild fishy aftertaste',8.8,'Mild','O456','MarineHealth','Yes','2025-08-15','2025-08-15','2025-10-10','Pass','2027-01-01');
INSERT INTO Player_Nutrition_Supplement_Log (player_id,supplement_name,dosage_mg,frequency_per_day,start_date,end_date,prescribing_doctor,reason,notes,compliance_score,side_effects,batch_number,manufacturer,approved_flag,created_at,updated_at,compliance_check_date,lab_test_result,expiration_date) VALUES (1003,'VitaminD','5000','1','2025-09-01','2026-08-31','DrChen','BoneStrength','No side effects',9.0,'None','V789','SunHealth','Yes','2025-09-01','2025-09-01','2025-11-01','Pass','2027-12-31');

-- Community impact projects associated with clubs
CREATE TABLE Community_Impact_Projects (
    project_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    project_name TEXT,
    start_date TEXT,
    end_date TEXT,
    target_population TEXT,
    budget_usd REAL,
    funding_source TEXT,
    coordinator_name TEXT,
    coordinator_contact TEXT,
    location TEXT,
    objectives TEXT,
    metrics TEXT,
    status TEXT,
    impact_score REAL,
    reports_submitted TEXT,
    community_partner TEXT,
    volunteer_hours INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Community_Impact_Projects (club_id,project_name,start_date,end_date,target_population,budget_usd,funding_source,coordinator_name,coordinator_contact,location,objectives,metrics,status,impact_score,reports_submitted,community_partner,volunteer_hours,notes,created_at,updated_at) VALUES (301,'Youth Football Clinics','2025-04-01','2025-09-30','Children 6-12',50000,'ClubFund','Sarah Kim','555-1234','CityPark','Introduce basics','Attendance,SkillsImprovement','Ongoing',4.5,'Yes','LocalSchools',800,'Monthly sessions','2025-04-01','2025-04-01');
INSERT INTO Community_Impact_Projects (club_id,project_name,start_date,end_date,target_population,budget_usd,funding_source,coordinator_name,coordinator_contact,location,objectives,metrics,status,impact_score,reports_submitted,community_partner,volunteer_hours,notes,created_at,updated_at) VALUES (302,'Health Awareness Campaign','2025-05-15','2025-11-15','GeneralPublic',30000,'SponsorHealth','Mike Torres','555-5678','CommunityCenter','Promote healthy lifestyle','SurveyScores,Participation','Completed',4.2,'Yes','HealthNGO',500,'Increased gym sign‑ups','2025-05-15','2025-05-15');
INSERT INTO Community_Impact_Projects (club_id,project_name,start_date,end_date,target_population,budget_usd,funding_source,coordinator_name,coordinator_contact,location,objectives,metrics,status,impact_score,reports_submitted,community_partner,volunteer_hours,notes,created_at,updated_at) VALUES (303,'Environmental Clean‑Up','2025-06-01','2025-08-31','LocalResidents',20000,'ClubEcoFund','Anna Liu','555-9012','RiverSide','Reduce litter','KgCollected,VolunteerCount','Ongoing',4.0,'No','GreenAlliance',300,'Monthly river clean‑ups','2025-06-01','2025-06-01');