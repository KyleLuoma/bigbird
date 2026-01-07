```sql
-- Club_Sponsorship_Awards
CREATE TABLE Club_Sponsorship_Awards (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    sponsor_id INTEGER,
    award_name TEXT,
    award_year INTEGER,
    award_amount REAL,
    currency TEXT,
    award_category TEXT,
    award_level TEXT,
    award_description TEXT,
    award_region TEXT,
    award_type TEXT,
    award_status TEXT,
    award_date TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    awarded_by TEXT,
    award_cycle TEXT,
    award_metric TEXT
);

INSERT INTO Club_Sponsorship_Awards (club_id,sponsor_id,award_name,award_year,award_amount,currency,award_category,award_level,award_description,award_region,award_type,award_status,award_date,created_at,updated_at,notes,awarded_by,award_cycle,award_metric) VALUES
(1,101,'BestLocalPartner',2022,50000,'USD','Community','Gold','Top local sponsor support','NorthAmerica','Cash','Granted','2022-03-15','2022-03-16','2022-03-16','N/A','MarketingDept','Annual','EngagementScore');

INSERT INTO Club_Sponsorship_Awards (club_id,sponsor_id,award_name,award_year,award_amount,currency,award_category,award_level,award_description,award_region,award_type,award_status,award_date,created_at,updated_at,notes,awarded_by,award_cycle,award_metric) VALUES
(2,202,'InnovationSponsor',2023,75000,'EUR','Technology','Platinum','Innovation in tech partnership','Europe','Equity','Pending','2023-06-01','2023-05-30','2023-05-30','N/A','StrategicTeam','BiAnnual','TechScore');

INSERT INTO Club_Sponsorship_Awards (club_id,sponsor_id,award_name,award_year,award_amount,currency,award_category,award_level,award_description,award_region,award_type,award_status,award_date,created_at,updated_at,notes,awarded_by,award_cycle,award_metric) VALUES
(3,303,'YouthDevelopmentPartner',2021,30000,'GBP','Youth','Silver','Support for youth academy','UK','Cash','Granted','2021-11-20','2021-11-21','2021-11-21','N/A','YouthDept','Annual','YouthImpact');

-- League_Referee_Agreements
CREATE TABLE League_Referee_Agreements (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    referee_id INTEGER,
    agreement_start_date TEXT,
    agreement_end_date TEXT,
    contract_type TEXT,
    salary REAL,
    currency TEXT,
    match_allowance REAL,
    travel_allowance REAL,
    performance_bonus REAL,
    clauses_summary TEXT,
    termination_notice_days INTEGER,
    renewal_option TEXT,
    created_at TEXT,
    updated_at TEXT,
    agreement_status TEXT,
    governing_body TEXT,
    jurisdiction TEXT,
    contact_email TEXT,
    contact_phone TEXT
);

INSERT INTO League_Referee_Agreements (league_id,referee_id,agreement_start_date,agreement_end_date,contract_type,salary,currency,match_allowance,travel_allowance,performance_bonus,clauses_summary,termination_notice_days,renewal_option,created_at,updated_at,agreement_status,governing_body,jurisdiction,contact_email,contact_phone) VALUES
(1,1001,'2022-07-01','2025-06-30','FullTime',85000,'USD',500,200,10000,'Standard clauses for referees',30,'Yes','2022-06-15','2022-06-15','Active','FIFA','International','ref1@example.com','5551234567');

INSERT INTO League_Referee_Agreements (league_id,referee_id,agreement_start_date,agreement_end_date,contract_type,salary,currency,match_allowance,travel_allowance,performance_bonus,clauses_summary,termination_notice_days,renewal_option,created_at,updated_at,agreement_status,governing_body,jurisdiction,contact_email,contact_phone) VALUES
(2,1002,'2023-01-01','2024-12-31','PartTime',45000,'EUR',300,150,5000,'Part time contract with performance metrics',45,'No','2022-12-20','2022-12-20','Pending','UEFA','Europe','ref2@example.com','5559876543');

INSERT INTO League_Referee_Agreements (league_id,referee_id,agreement_start_date,agreement_end_date,contract_type,salary,currency,match_allowance,travel_allowance,performance_bonus,clauses_summary,termination_notice_days,renewal_option,created_at,updated_at,agreement_status,governing_body,jurisdiction,contact_email,contact_phone) VALUES
(3,1003,'2021-03-01','2023-02-28','FullTime',72000,'GBP',400,180,7500,'Includes holiday and health clauses',60,'Yes','2021-02-10','2021-02-10','Active','FA','UK','ref3@example.com','5557654321');

-- Match_Broadcast_Commentary_Tags
CREATE TABLE Match_Broadcast_Commentary_Tags (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    broadcaster_id INTEGER,
    tag_timestamp TEXT,
    tag_type TEXT,
    tag_value TEXT,
    commentator_id INTEGER,
    language TEXT,
    audience_rating REAL,
    relevance_score REAL,
    created_at TEXT,
    updated_at TEXT,
    tag_category TEXT,
    tag_subcategory TEXT,
    description TEXT,
    is_highlight INTEGER,
    segment_duration INTEGER,
    segment_start INTEGER,
    segment_end INTEGER,
    segment_title TEXT,
    related_clip_id INTEGER,
    notes TEXT
);

INSERT INTO Match_Broadcast_Commentary_Tags (match_id,broadcaster_id,tag_timestamp,tag_type,tag_value,commentator_id,language,audience_rating,relevance_score,created_at,updated_at,tag_category,tag_subcategory,description,is_highlight,segment_duration,segment_start,segment_end,segment_title,related_clip_id,notes) VALUES
(10001,10,'00:15:23','Goal','Header',201,'English',4.5,0.92,'2023-04-01','2023-04-01','Play','Scoring','First goal of the match',1,12,912,924,'FirstGoal',5001,'No notes');

INSERT INTO Match_Broadcast_Commentary_Tags (match_id,broadcaster_id,tag_timestamp,tag_type,tag_value,commentator_id,language,audience_rating,relevance_score,created_at,updated_at,tag_category,tag_subcategory,description,is_highlight,segment_duration,segment_start,segment_end,segment_title,related_clip_id,notes) VALUES
(10002,12,'01:02:10','Foul','Handball',305,'Spanish',3.8,0.75,'2023-04-02','2023-04-02','Incident','Foul','Controversial handball decision',0,8,3730,3738,'Handball',5002,'Review pending');

INSERT INTO Match_Broadcast_Commentary_Tags (match_id,broadcaster_id,tag_timestamp,tag_type,tag_value,commentator_id,language,audience_rating,relevance_score,created_at,updated_at,tag_category,tag_subcategory,description,is_highlight,segment_duration,segment_start,segment_end,segment_title,related_clip_id,notes) VALUES
(10003,11,'00:45:00','Substitution','In',410,'German',4.2,0.88,'2023-04-03','2023-04-03','Change','Substitution','Mid‑half tactical change',0,5,2700,2705,'SubIn',5003,'Strategic move');

-- Team_Training_Camp_Facilities
CREATE TABLE Team_Training_Camp_Facilities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    camp_location TEXT,
    facility_name TEXT,
    capacity INTEGER,
    indoor_outdoor TEXT,
    surface_type TEXT,
    lighting_quality TEXT,
    wifi_speed_mbps REAL,
    locker_rooms INTEGER,
    medical_center TEXT,
    gym_equipment TEXT,
    pool_available INTEGER,
    altitude_meters INTEGER,
    avg_temperature_c REAL,
    humidity_percent REAL,
    security_level TEXT,
    maintenance_schedule TEXT,
    opening_date TEXT,
    closing_date TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Team_Training_Camp_Facilities (team_id,camp_location,facility_name,capacity,indoor_outdoor,surface_type,lighting_quality,wifi_speed_mbps,locker_rooms,medical_center,gym_equipment,pool_available,altitude_meters,avg_temperature_c,humidity_percent,security_level,maintenance_schedule,opening_date,closing_date,created_at,updated_at) VALUES
(1,'Andorra','AlpineFit Center',120,'Indoor','Artificial','LED',150.5,12,'FullMedical','FullGym',0,1200,15.2,55,'High','Quarterly','2023-01-01','2023-12-31','2023-01-01','2023-01-01');

INSERT INTO Team_Training_Camp_Facilities (team_id,camp_location,facility_name,capacity,indoor_outdoor,surface_type,lighting_quality,wifi_speed_mbps,locker_rooms,medical_center,gym_equipment,pool_available,altitude_meters,avg_temperature_c,humidity_percent,security_level,maintenance_schedule,opening_date,closing_date,created_at,updated_at) VALUES
(2,'Spain','Mediterranean Sports Complex',200,'Outdoor','Grass','Sunlight',85.0,20,'OnSiteClinic','StandardGym',1,50,22.5,65,'Medium','BiAnnual','2023-03-15','2024-03-14','2023-03-10','2023-03-10');

INSERT INTO Team_Training_Camp_Facilities (team_id,camp_location,facility_name,capacity,indoor_outdoor,surface_type,lighting_quality,wifi_speed_mbps,locker_rooms,medical_center,gym_equipment,pool_available,altitude_meters,avg_temperature_c,humidity_percent,security_level,maintenance_schedule,opening_date,closing_date,created_at,updated_at) VALUES
(3,'Germany','Northern Performance Hub',150,'Indoor','Hybrid','Fluorescent',120.0,15,'HealthCenter','AdvancedGym',0,250,10.0,48,'High','Monthly','2023-05-01','2025-04-30','2023-04-25','2023-04-25');

-- Player_Psychology_Sessions
CREATE TABLE Player_Psychology_Sessions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    session_date TEXT,
    therapist_id INTEGER,
    session_type TEXT,
    duration_minutes INTEGER,
    focus_area TEXT,
    assessment_score REAL,
    mood_before TEXT,
    mood_after TEXT,
    coping_strategy TEXT,
    prescribed_exercises TEXT,
    followup_date TEXT,
    notes TEXT,
    confidentiality_level TEXT,
    created_at TEXT,
    updated_at TEXT,
    session_location TEXT,
    session_outcome TEXT,
    stress_level_before INTEGER,
    stress_level_after INTEGER
);

INSERT INTO Player_Psychology_Sessions (player_id,session_date,therapist_id,session_type,duration_minutes,focus_area,assessment_score,mood_before,mood_after,coping_strategy,prescribed_exercises,followup_date,notes,confidentiality_level,created_at,updated_at,session_location,session_outcome,stress_level_before,stress_level_after) VALUES
(101,'2023-02-10',501,'Individual',60,'Anxiety',7.2,'Low','Improved','Breathing','Visualization',NULL,'First session','High','2023-02-10','2023-02-10','ClubClinic','Positive',8,4);

INSERT INTO Player_Psychology_Sessions (player_id,session_date,therapist_id,session_type,duration_minutes,focus_area,assessment_score,mood_before,mood_after,coping_strategy,prescribed_exercises,followup_date,notes,confidentiality_level,created_at,updated_at,session_location,session_outcome,stress_level_before,stress_level_after) VALUES
(102,'2023-03-05',502,'Group',90,'Team Cohesion',8.5,'Neutral','Positive','TeamTalk','TeamBuildingGames','2023-03-20','Group dynamic','Medium','2023-03-05','2023-03-05','TrainingCenter','Improved',6,3);

INSERT INTO Player_Psychology_Sessions (player_id,session_date,therapist_id,session_type,duration_minutes,focus_area,assessment_score,mood_before,mood_after,coping_strategy,prescribed_exercises,followup_date,notes,confidentiality_level,created_at,updated_at,session_location,session_outcome,stress_level_before,stress_level_after) VALUES
(103,'2023-04-12',503,'Individual',45,'Focus',9.1,'High','Stable','Mindfulness','FocusDrills','2023-04-26','Focused session','High','2023-04-12','2023-04-12','SportsPsychDept','Successful',7,5);

-- Stadium_Seating_Upgrade_Projects
CREATE TABLE Stadium_Seating_Upgrade_Projects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    project_name TEXT,
    start_date TEXT,
    end_date TEXT,
    budget REAL,
    currency TEXT,
    seats_added INTEGER,
    sections_affected TEXT,
    contractor TEXT,
    project_manager TEXT,
    status TEXT,
    risk_level TEXT,
    sustainability_score REAL,
    permits_obtained INTEGER,
    created_at TEXT,
    updated_at TEXT,
    description TEXT,
    public_announcement_date TEXT,
    expected_completion_date TEXT,
    actual_completion_date TEXT,
    cost_overrun_percent REAL
);

INSERT INTO Stadium_Seating_Upgrade_Projects (stadium_id,project_name,start_date,end_date,budget,currency,seats_added,sections_affected,contractor,project_manager,status,risk_level,sustainability_score,permits_obtained,created_at,updated_at,description,public_announcement_date,expected_completion_date,actual_completion_date,cost_overrun_percent) VALUES
(1,'NorthWing Expansion','2023-01-15','2024-06-30',2000000,'USD',1500,'North Wing','BuildCo','Jane Smith','InProgress','Medium',85.5,1,'2023-01-10','2023-01-10','Upgrade to VIP seating','2023-01-12','2024-06-30',NULL,NULL);

INSERT INTO Stadium_Seating_Upgrade_Projects (stadium_id,project_name,start_date,end_date,budget,currency,seats_added,sections_affected,contractor,project_manager,status,risk_level,sustainability_score,permits_obtained,created_at,updated_at,description,public_announcement_date,expected_completion_date,actual_completion_date,cost_overrun_percent) VALUES
(2,'SouthStand Modernization','2022-05-01','2023-12-15',3500000,'EUR',2500,'South Stand','StadiumWorks','Carlos Ruiz','Completed','Low',92.0,1,'2022-04-20','2022-04-20','New ergonomic seats installed','2022-05-05','2023-12-15','2023-12-14',3.2);

INSERT INTO Stadium_Seating_Upgrade_Projects (stadium_id,project_name,start_date,end_date,budget,currency,seats_added,sections_affected,contractor,project_manager,status,risk_level,sustainability_score,permits_obtained,created_at,updated_at,description,public_announcement_date,expected_completion_date,actual_completion_date,cost_overrun_percent) VALUES
(3,'EastArc Refurbish','2024-03-01','2025-09-30',1800000,'GBP',1200,'East Arc','RenovateLtd','Emma Jones','Planned','High',78.0,0,'2024-02-15','2024-02-15','Improving sightlines and comfort','2024-03-10','2025-09-30',NULL,NULL);

-- Fan_Mobile_App_Features
CREATE TABLE Fan_Mobile_App_Features (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    app_version TEXT,
    feature_name TEXT,
    release_date TEXT,
    category TEXT,
    is_active INTEGER,
    priority_level INTEGER,
    estimated_impact REAL,
    story_points INTEGER,
    developer_team TEXT,
    test_coverage_percent REAL,
    bugs_reported INTEGER,
    bugs_fixed INTEGER,
    user_feedback_score REAL,
    avg_session_time_seconds INTEGER,
    download_count INTEGER,
    rating REAL,
    platform TEXT,
    language_supported TEXT,
    ui_complexity TEXT,
    security_rating TEXT
);

INSERT INTO Fan_Mobile_App_Features (app_version,feature_name,release_date,category,is_active,priority_level,estimated_impact,story_points,developer_team,test_coverage_percent,bugs_reported,bugs_fixed,user_feedback_score,avg_session_time_seconds,download_count,rating,platform,language_supported,ui_complexity,security_rating) VALUES
('5.1','LiveMatchChat','2023-03-20','Engagement',1,1,0.9,13,'TeamAlpha',95.0,5,5,4.7,300,150000,4.5,'iOS','English,Spanish','Medium','A+');

INSERT INTO Fan_Mobile_App_Features (app_version,feature_name,release_date,category,is_active,priority_level,estimated_impact,story_points,developer_team,test_coverage_percent,bugs_reported,bugs_fixed,user_feedback_score,avg_session_time_seconds,download_count,rating,platform,language_supported,ui_complexity,security_rating) VALUES
('5.1','TicketResaleMarketplace','2023-04-05','Commerce',1,2,0.8,21,'TeamBeta',88.5,8,7,4.3,420,200000,4.2,'Android','English,French','High','A');

INSERT INTO Fan_Mobile_App_Features (app_version,feature_name,release_date,category,is_active,priority_level,estimated_impact,story_points,developer_team,test_coverage_percent,bugs_reported,bugs_fixed,user_feedback_score,avg_session_time_seconds,download_count,rating,platform,language_supported,ui_complexity,security_rating) VALUES
('5.2','ARStadiumTour','2023-07-01','Experience',0,3,0.6,34,'TeamGamma',92.0,12,9,4.0,600,250000,4.0,'iOS','English,Japanese','VeryHigh','A+');

-- Sponsor_Marketing_Assets
CREATE TABLE Sponsor_Marketing_Assets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    asset_type TEXT,
    asset_name TEXT,
    file_path TEXT,
    file_size_kb INTEGER,
    resolution TEXT,
    duration_seconds INTEGER,
    created_at TEXT,
    updated_at TEXT,
    campaign_id INTEGER,
    target_audience TEXT,
    platform TEXT,
    usage_rights TEXT,
    expiration_date TEXT,
    approval_status TEXT,
    creative_director TEXT,
    brand_guidelines_compliance TEXT,
    cost REAL,
    impressions_estimate INTEGER,
    click_through_rate_est REAL
);

INSERT INTO Sponsor_Marketing_Assets (sponsor_id,asset_type,asset_name,file_path,file_size_kb,resolution,duration_seconds,created_at,updated_at,campaign_id,target_audience,platform,usage_rights,expiration_date,approval_status,creative_director,brand_guidelines_compliance,cost,impressions_estimate,click_through_rate_est) VALUES
(101,'Video','SeasonPromo','/assets/seasonpromo.mp4',20480,'1920x1080',120,'2023-01-15','2023-01-15',5001,'Fans','TV','Exclusive','2023-12-31','Approved','Laura Green','Yes',50000,2000000,0.03);

INSERT INTO Sponsor_Marketing_Assets (sponsor_id,asset_type,asset_name,file_path,file_size_kb,resolution,duration_seconds,created_at,updated_at,campaign_id,target_audience,platform,usage_rights,expiration_date,approval_status,creative_director,brand_guidelines_compliance,cost,impressions_estimate,click_through_rate_est) VALUES
(202,'Banner','BackyardBanner','/assets/backyard.jpg',10240,'3000x800',0,'2023-02-10','2023-02-10',5002,'Adults','Web','NonExclusive','2024-02-09','Pending','Mike Lee','No',12000,500000,0.005);

INSERT INTO Sponsor_Marketing_Assets (sponsor_id,asset_type,asset_name,file_path,file_size_kb,resolution,duration_seconds,created_at,updated_at,campaign_id,target_audience,platform,usage_rights,expiration_date,approval_status,creative_director,brand_guidelines_compliance,cost,impressions_estimate,click_through_rate_est) VALUES
(303,'Audio','ClubAnthem','/assets/anthem.mp3',5120,'N/A',180,'2023-03-05','2023-03-05',5003,'All','Stadium','Exclusive','2025-03-04','Approved','Sara Patel','Yes',8000,300000,0.01);

-- League_Season_Ticket_Bundles
CREATE TABLE League_Season_Ticket_Bundles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season_year INTEGER,
    bundle_name TEXT,
    price REAL,
    currency TEXT,
    includes_home INTEGER,
    includes_away INTEGER,
    includes_neutral INTEGER,
    total_matches INTEGER,
    early_access INTEGER,
    vip_access INTEGER,
    hospitality_included INTEGER,
    bundle_description TEXT,
    sales_start_date TEXT,
    sales_end_date TEXT,
    remaining_quantity INTEGER,
    created_at TEXT,
    updated_at TEXT,
    bundle_status TEXT,
    discount_percent REAL,
    max_per_customer INTEGER
);

INSERT INTO League_Season_Ticket_Bundles (league_id,season_year,bundle_name,price,currency,includes_home,includes_away,includes_neutral,total_matches,early_access,vip_access, hospitality_included,bundle_description,sales_start_date,sales_end_date,remaining_quantity,created_at,updated_at,bundle_status,discount_percent,max_per_customer) VALUES
(1,2023,'PremiumSeasonPass',2500,'USD',1,1,1,38,1,1,1,'All inclusive season pass','2023-01-01','2023-04-30',150,'2023-01-01','2023-01-01','Active',5.0,2);

INSERT INTO League_Season_Ticket_Bundles (league_id,season_year,bundle_name,price,currency,includes_home,includes_away,includes_neutral,total_matches,early_access,vip_access, hospitality_included,bundle_description,sales_start_date,sales_end_date,remaining_quantity,created_at,updated_at,bundle_status,discount_percent,max_per_customer) VALUES
(2,2023,'StandardSeason',1200,'EUR',1,0,0,19,0,0,0,'Home games only','2023-02-15','2023-05-15',300,'2023-02-15','2023-02-15','Active',0,4);

INSERT INTO League_Season_Ticket_Bundles (league_id,season_year,bundle_name,price,currency,includes_home,includes_away,includes_neutral,total_matches,early_access,vip_access, hospitality_included,bundle_description,sales_start_date,sales_end_date,remaining_quantity,created_at,updated_at,bundle_status,discount_percent,max_per_customer) VALUES
(3,2024,'FamilyPack',800,'GBP',1,1,0,19,0,0,0,'Family of four tickets per match','2023-09-01','2023-12-31',200,'2023-09-01','2023-09-01','Upcoming',10.0,1);

-- Team_Analytics_Dashboard_Views
CREATE TABLE Team_Analytics_Dashboard_Views (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    dashboard_name TEXT,
    view_date TEXT,
    user_role TEXT,
    viewer_id INTEGER,
    session_duration_seconds INTEGER,
    filters_applied TEXT,
    charts_viewed TEXT,
    export_count INTEGER,
    download_format TEXT,
    comments TEXT,
    rating REAL,
    ip_address TEXT,
    device_type TEXT,
    os TEXT,
    browser TEXT,
    view_status TEXT,
    created_at TEXT,
    updated_at TEXT,
    view_context TEXT
);

INSERT INTO Team_Analytics_Dashboard_Views (team_id,dashboard_name,view_date,user_role,viewer_id,session_duration_seconds,filters_applied,charts_viewed,export_count,download_format,comments,rating,ip_address,device_type,os,browser,view_status,created_at,updated_at,view_context) VALUES
(1,'Performance Overview','2023-06-01','Coach',701,420,'DateRange:2023-05-01 to 2023-05-31','Goals,PassAccuracy',2,'PDF','Useful insights',4.8,'192.168.1.10','Desktop','Windows','Chrome','Completed','2023-06-01','2023-06-01','Weekly Review');

INSERT INTO Team_Analytics_Dashboard_Views (team_id,dashboard_name,view_date,user_role,viewer_id,session_duration_seconds,filters_applied,charts_viewed,export_count,download_format,comments,rating,ip_address,device_type,os,browser,view_status,created_at,updated_at,view_context) VALUES
(2,'Recruitment Tracker','2023-06-03','Scout',702,300,'Position:Forward','ScoutingHeatmap',1,'CSV','Need more data',4.2,'192.168.1.20','Tablet','iOS','Safari','Completed','2023-06-03','2023-06-03','Talent Search');

INSERT INTO Team_Analytics_Dashboard_Views (team_id,dashboard_name,view_date,user_role,viewer_id,session_duration_seconds,filters_applied,charts_viewed,export_count,download_format,comments,rating,ip_address,device_type,os,browser,view_status,created_at,updated_at,view_context) VALUES
(3,'Financial Summary','2023-06-05','Manager',703,180,'Quarter:Q2','RevenueChart,ExpenseBreakdown',0,NULL,'Reviewed with board',4.5,'192.168.1.30','Laptop','Linux','Firefox','Completed','2023-06-05','2023-06-05','Board Meeting');
```