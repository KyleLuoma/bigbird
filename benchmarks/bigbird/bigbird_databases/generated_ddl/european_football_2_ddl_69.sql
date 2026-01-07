-- Club Investor Relations Activities
CREATE TABLE Club_Investor_Relations_Activities (
    activity_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    investor_id INTEGER,
    activity_date TEXT,
    activity_type TEXT,
    meeting_location TEXT,
    participants_count INTEGER,
    presentation_topic TEXT,
    documents_shared INTEGER,
    follow_up_required TEXT,
    follow_up_date TEXT,
    notes TEXT,
    rating INTEGER,
    confidentiality_level TEXT,
    duration_minutes INTEGER,
    travel_expense REAL,
    accommodation_expense REAL,
    catering_expense REAL,
    external_consultant TEXT,
    consultant_fee REAL,
    outcome TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Club_Investor_Relations_Activities (club_id,investor_id,activity_date,activity_type,meeting_location,participants_count,presentation_topic,documents_shared,follow_up_required,follow_up_date,notes,rating,confidentiality_level,duration_minutes,travel_expense,accommodation_expense,catering_expense,external_consultant,consultant_fee,outcome,created_at,updated_at) VALUES (1,101,'2024-03-15','AnnualMeeting','ClubHQ','15','FinancialOverview','3','Yes','2024-04-01','PositiveFeedback',5,'High',120,500.00,300.00,150.00,'ConsultCo',2000.00,'AgreementSigned','2024-03-15','2024-03-15');
INSERT INTO Club_Investor_Relations_Activities (club_id,investor_id,activity_date,activity_type,meeting_location,participants_count,presentation_topic,documents_shared,follow_up_required,follow_up_date,notes,rating,confidentiality_level,duration_minutes,travel_expense,accommodation_expense,catering_expense,external_consultant,consultant_fee,outcome,created_at,updated_at) VALUES (2,202,'2024-04-10','QuarterlyReview','HotelGrand','8','GrowthStrategy','2','No','', 'NeedsFurtherData',4,'Medium',90,250.00,0.00,80.00,'',0.00,'Pending','2024-04-10','2024-04-10');
INSERT INTO Club_Investor_Relations_Activities (club_id,investor_id,activity_date,activity_type,meeting_location,participants_count,presentation_topic,documents_shared,follow_up_required,follow_up_date,notes,rating,confidentiality_level,duration_minutes,travel_expense,accommodation_expense,catering_expense,external_consultant,consultant_fee,outcome,created_at,updated_at) VALUES (3,303,'2024-05-05','SpecialBriefing','StadiumSuite','12','SponsorshipPlan','4','Yes','2024-05-20','Excellent','5','High',150,400.00,200.00,120.00,'AdvisorsLtd',1500.00,'AgreementExtended','2024-05-05','2024-05-05');

-- Team Analytics Insight Logs
CREATE TABLE Team_Analytics_Insight_Logs (
    insight_id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    season TEXT,
    insight_date TEXT,
    metric_name TEXT,
    metric_value REAL,
    description TEXT,
    data_source TEXT,
    confidence_score REAL,
    analyst_id INTEGER,
    recommendation TEXT,
    priority_level TEXT,
    related_match_id INTEGER,
    tactical_category TEXT,
    created_at TEXT,
    updated_at TEXT,
    validation_status TEXT,
    validation_date TEXT,
    notes TEXT,
    impact_estimate REAL,
    version INTEGER,
    is_active TEXT
);
INSERT INTO Team_Analytics_Insight_Logs (team_id,season,insight_date,metric_name,metric_value,description,data_source,confidence_score,analyst_id,recommendation,priority_level,related_match_id,tactical_category,created_at,updated_at,validation_status,validation_date,notes,impact_estimate,version,is_active) VALUES (10,'2023/24','2024-02-20','PossessionAdjusted','58.4','Adjusted possession after opponent press','Tracking','0.92',7,'Increase high press','High',1023,'Defensive', '2024-02-20','2024-02-20','Validated','2024-02-22','Reviewed by coach',5.0,1,'Yes');
INSERT INTO Team_Analytics_Insight_Logs (team_id,season,insight_date,metric_name,metric_value,description,data_source,confidence_score,analyst_id,recommendation,priority_level,related_match_id,tactical_category,created_at,updated_at,validation_status,validation_date,notes,impact_estimate,version,is_active) VALUES (11,'2023/24','2024-03-01','ExpectedGoals','1.85','XG vs actual', 'EventData','0.88',9,'Focus on finishing drills','Medium',1045,'Attacking','2024-03-01','2024-03-01','Pending','','','Awaiting review',2.3,1,'Yes');
INSERT INTO Team_Analytics_Insight_Logs (team_id,season,insight_date,metric_name,metric_value,description,data_source,confidence_score,analyst_id,recommendation,priority_level,related_match_id,tactical_category,created_at,updated_at,validation_status,validation_date,notes,impact_estimate,version,is_active) VALUES (12,'2023/24','2024-03-15','PassSuccessRate','84.2','Overall pass success in final third','Video','0.95',12,'Maintain current passing style','Low',1078,'Midfield','2024-03-15','2024-03-15','Validated','2024-03-16','No issues',1.1,2,'Yes');

-- Venue Air Quality Readings
CREATE TABLE Venue_Air_Quality_Readings (
    reading_id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    reading_timestamp TEXT,
    pm2_5 REAL,
    pm10 REAL,
    no2 REAL,
    so2 REAL,
    o3 REAL,
    co REAL,
    temperature_c REAL,
    humidity_percent REAL,
    wind_speed_kmh REAL,
    wind_direction TEXT,
    sensor_status TEXT,
    calibration_date TEXT,
    maintenance_required TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    data_quality_score REAL,
    source_system TEXT,
    recorded_by INTEGER,
    is_valid TEXT
);
INSERT INTO Venue_Air_Quality_Readings (venue_id,reading_timestamp,pm2_5,pm10,no2,so2,o3,co,temperature_c,humidity_percent,wind_speed_kmh,wind_direction,sensor_status,calibration_date,maintenance_required,notes,created_at,updated_at,data_quality_score,source_system,recorded_by,is_valid) VALUES (5,'2024-03-10 08:00:00',12.5,25.3,0.018,0.004,0.030,0.6,22.1,55.0,5.2,'NE','OK','2023-12-01','No','All clear','2024-03-10','2024-03-10',0.99,'EnviroSys',3,'Yes');
INSERT INTO Venue_Air_Quality_Readings (venue_id,reading_timestamp,pm2_5,pm10,no2,so2,o3,co,temperature_c,humidity_percent,wind_speed_kmh,wind_direction,sensor_status,calibration_date,maintenance_required,notes,created_at,updated_at,data_quality_score,source_system,recorded_by,is_valid) VALUES (6,'2024-03-10 08:15:00',15.2,30.1,0.020,0.005,0.028,0.7,21.8,57.0,4.8,'E','OK','2023-12-01','No','Slight increase','2024-03-10','2024-03-10',0.97,'EnviroSys',4,'Yes');
INSERT INTO Venue_Air_Quality_Readings (venue_id,reading_timestamp,pm2_5,pm10,no2,so2,o3,co,temperature_c,humidity_percent,wind_speed_kmh,wind_direction,sensor_status,calibration_date,maintenance_required,notes,created_at,updated_at,data_quality_score,source_system,recorded_by,is_valid) VALUES (5,'2024-03-10 08:30:00',11.0,22.8,0.015,0.003,0.032,0.5,22.3,54.5,5.0,'NW','OK','2023-12-01','No','Stable','2024-03-10','2024-03-10',0.98,'EnviroSys',5,'Yes');

-- Fan Digital Token Economics
CREATE TABLE Fan_Digital_Token_Economics (
    token_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    token_symbol TEXT,
    token_name TEXT,
    issuance_date TEXT,
    total_supply INTEGER,
    circulating_supply INTEGER,
    token_price_usd REAL,
    market_cap_usd REAL,
    daily_volume_usd REAL,
    holder_count INTEGER,
    staking_enabled TEXT,
    staking_apr REAL,
    burn_rate_percent REAL,
    token_utilities TEXT,
    governance_votes INTEGER,
    last_price_update TEXT,
    created_at TEXT,
    updated_at TEXT,
    source_platform TEXT,
    is_active TEXT,
    notes TEXT,
    audit_status TEXT
);
INSERT INTO Fan_Digital_Token_Economics (fan_id,token_symbol,token_name,issuance_date,total_supply,circulating_supply,token_price_usd,market_cap_usd,daily_volume_usd,holder_count,staking_enabled,staking_apr,burn_rate_percent,token_utilities,governance_votes,last_price_update,created_at,updated_at,source_platform,is_active,notes,audit_status) VALUES (1001,'FANX','FanXToken','2023-01-01',1000000,750000,0.15,112500,25000,5000,'Yes',4.5,0.2,'MerchDiscount,VIPAccess',150,'2024-03-14','2024-03-14','2024-03-14','Yes','Initial launch','Audited');
INSERT INTO Fan_Digital_Token_Economics (fan_id,token_symbol,token_name,issuance_date,total_supply,circulating_supply,token_price_usd,market_cap_usd,daily_volume_usd,holder_count,staking_enabled,staking_apr,burn_rate_percent,token_utilities,governance_votes,last_price_update,created_at,updated_at,source_platform,is_active,notes,audit_status) VALUES (1002,'FANX','FanXToken','2023-01-01',1000000,760000,0.16,121600,26000,5200,'Yes',4.7,0.18,'MerchDiscount,VIPAccess',160,'2024-03-15','2024-03-15','2024-03-15','Yes','Price increase','Audited');
INSERT INTO Fan_Digital_Token_Economics (fan_id,token_symbol,token_name,issuance_date,total_supply,circulating_supply,token_price_usd,market_cap_usd,daily_volume_usd,holder_count,staking_enabled,staking_apr,burn_rate_percent,token_utilities,governance_votes,last_price_update,created_at,updated_at,source_platform,is_active,notes,audit_status) VALUES (1003,'FANX','FanXToken','2023-01-01',1000000,770000,0.14,107800,24000,4800,'Yes',4.2,0.22,'MerchDiscount,VIPAccess',140,'2024-03-16','2024-03-16','2024-03-16','Yes','Minor dip','Audited');

-- Player Team Transfer Debt
CREATE TABLE Player_Team_Transfer_Debt (
    debt_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    from_team_id INTEGER,
    to_team_id INTEGER,
    transfer_date TEXT,
    transfer_fee_usd INTEGER,
    installment_count INTEGER,
    installment_amount_usd INTEGER,
    next_due_date TEXT,
    accrued_interest_percent REAL,
    total_outstanding_usd INTEGER,
    payment_status TEXT,
    covenant_details TEXT,
    financial_audit_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    responsible_officer INTEGER,
    approval_status TEXT,
    escrow_account TEXT,
    is_settled TEXT
);
INSERT INTO Player_Team_Transfer_Debt (player_id,from_team_id,to_team_id,transfer_date,transfer_fee_usd,installment_count,installment_amount_usd,next_due_date,accrued_interest_percent,total_outstanding_usd,payment_status,covenant_details,financial_audit_date,notes,created_at,updated_at,responsible_officer,approval_status,escrow_account,is_settled) VALUES (5001,10,12,'2023-07-01',25000000,5,5000000,'2024-04-01',2.5,12500000,'Partial','No sell-on clause','2023-12-01','On schedule','2023-07-01','2023-07-01',7,'Approved','EscrowA','No');
INSERT INTO Player_Team_Transfer_Debt (player_id,from_team_id,to_team_id,transfer_date,transfer_fee_usd,installment_count,installment_amount_usd,next_due_date,accrued_interest_percent,total_outstanding_usd,payment_status,covenant_details,financial_audit_date,notes,created_at,updated_at,responsible_officer,approval_status,escrow_account,is_settled) VALUES (5002,11,13,'2023-08-15',18000000,4,4500000,'2024-05-01',3.0,9000000,'Pending','Performance bonus clause','2023-12-15','Awaiting first payment','2023-08-15','2023-08-15',8,'Pending','EscrowB','No');
INSERT INTO Player_Team_Transfer_Debt (player_id,from_team_id,to_team_id,transfer_date,transfer_fee_usd,installment_count,installment_amount_usd,next_due_date,accrued_interest_percent,total_outstanding_usd,payment_status,covenant_details,financial_audit_date,notes,created_at,updated_at,responsible_officer,approval_status,escrow_account,is_settled) VALUES (5003,12,14,'2023-09-30',30000000,6,5000000,'2024-06-01',2.0,15000000,'Partial','Club retention clause','2024-01-01','Half paid','2023-09-30','2023-09-30',9,'Approved','EscrowC','No');

-- League Fan Engagement Campaign Results
CREATE TABLE League_Fan_Engagement_Campaign_Results (
    campaign_id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    campaign_name TEXT,
    start_date TEXT,
    end_date TEXT,
    target_audience TEXT,
    platform_used TEXT,
    impressions INTEGER,
    clicks INTEGER,
    engagements INTEGER,
    conversion_rate REAL,
    cost_usd REAL,
    revenue_generated_usd REAL,
    roi_percent REAL,
    average_view_time_seconds REAL,
    geographic_focus TEXT,
    demographic_focus TEXT,
    creative_type TEXT,
    sentiment_score REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    approved_by INTEGER,
    status TEXT,
    channel_mix TEXT
);
INSERT INTO League_Fan_Engagement_Campaign_Results (league_id,campaign_name,start_date,end_date,target_audience,platform_used,impressions,clicks,engagements,conversion_rate,cost_usd,revenue_generated_usd,roi_percent,average_view_time_seconds,geographic_focus,demographic_focus,creative_type,sentiment_score,notes,created_at,updated_at,approved_by,status,channel_mix) VALUES (1,'SummerKickoff2024','2024-06-01','2024-08-31','AllFans','SocialMedia',5000000,250000,150000,0.05,200000,350000,75.0,45.2,'Europe','18-35','Video','0.78','Successful reach','2024-09-01','2024-09-01',2,'Completed','Social,Email');
INSERT INTO League_Fan_Engagement_Campaign_Results (league_id,campaign_name,start_date,end_date,target_audience,platform_used,impressions,clicks,engagements,conversion_rate,cost_usd,revenue_generated_usd,roi_percent,average_view_time_seconds,geographic_focus,demographic_focus,creative_type,sentiment_score,notes,created_at,updated_at,approved_by,status,channel_mix) VALUES (2,'WinterFansFest','2024-12-01','2025-02-28','SeasonTickets','Email',3000000,120000,80000,0.04,150000,250000,66.7,38.0,'NorthAmerica','25-45','Banner','0.71','Moderate uptake','2025-03-01','2025-03-01',3,'Completed','Email,Push');
INSERT INTO League_Fan_Engagement_Campaign_Results (league_id,campaign_name,start_date,end_date,target_audience,platform_used,impressions,clicks,engagements,conversion_rate,cost_usd,revenue_generated_usd,roi_percent,average_view_time_seconds,geographic_focus,demographic_focus,creative_type,sentiment_score,notes,created_at,updated_at,approved_by,status,channel_mix) VALUES (1,'ChampionsQuiz','2024-09-15','2024-10-15','QuizParticipants','MobileApp',2000000,100000,60000,0.05,80000,180000,125.0,30.5,'Asia','15-30','Interactive','0.84','High engagement','2024-10-20','2024-10-20',4,'Completed','App,Social');

-- Stadium Wifi Usage Stats
CREATE TABLE Stadium_Wifi_Usage_Stats (
    usage_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    date TEXT,
    total_sessions INTEGER,
    avg_session_duration_seconds REAL,
    peak_concurrent_users INTEGER,
    data_consumed_gb REAL,
    avg_signal_strength_dbm REAL,
    dropout_rate_percent REAL,
    device_type_distribution TEXT,
    ssid_name TEXT,
    wifi_band TEXT,
    firmware_version TEXT,
    maintenance_status TEXT,
    last_maintenance_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    operator_id INTEGER,
    service_level_agreement TEXT,
    compliance_status TEXT
);
INSERT INTO Stadium_Wifi_Usage_Stats (stadium_id,date,total_sessions,avg_session_duration_seconds,peak_concurrent_users,data_consumed_gb,avg_signal_strength_dbm,dropout_rate_percent,device_type_distribution,ssid_name,wifi_band,firmware_version,maintenance_status,last_maintenance_date,notes,created_at,updated_at,operator_id,service_level_agreement,compliance_status) VALUES (5,'2024-03-10',4500,420.5,1200,350.2,-68.0,0.3,'Mobile:70%;Laptop:20%;Tablet:10%','StadiumGuest','5GHz','v2.3','OK','2024-02-15','Stable performance','2024-03-10','2024-03-10',1,'99.9%uptime','Compliant');
INSERT INTO Stadium_Wifi_Usage_Stats (stadium_id,date,total_sessions,avg_session_duration_seconds,peak_concurrent_users,data_consumed_gb,avg_signal_strength_dbm,dropout_rate_percent,device_type_distribution,ssid_name,wifi_band,firmware_version,maintenance_status,last_maintenance_date,notes,created_at,updated_at,operator_id,service_level_agreement,compliance_status) VALUES (6,'2024-03-10',3800,395.0,950,300.0,-70.5,0.4,'Mobile:75%;Laptop:15%;Tablet:10%','StadiumGuest','2.4GHz','v2.2','OK','2024-02-20','Slight slowdown observed','2024-03-10','2024-03-10',2,'99.8%uptime','Compliant');
INSERT INTO Stadium_Wifi_Usage_Stats (stadium_id,date,total_sessions,avg_session_duration_seconds,peak_concurrent_users,data_consumed_gb,avg_signal_strength_dbm,dropout_rate_percent,device_type_distribution,ssid_name,wifi_band,firmware_version,maintenance_status,last_maintenance_date,notes,created_at,updated_at,operator_id,service_level_agreement,compliance_status) VALUES (5,'2024-03-11',4700,430.0,1300,360.5,-66.8,0.25,'Mobile:68%;Laptop:22%;Tablet:10%','StadiumGuest','5GHz','v2.3','OK','2024-02-15','Improved after firmware update','2024-03-11','2024-03-11',1,'99.9%uptime','Compliant');

-- Match Commentary Emotion Scores
CREATE TABLE Match_Commentary_Emotion_Scores (
    score_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    commentator_id INTEGER,
    segment_start_time TEXT,
    segment_end_time TEXT,
    emotion_type TEXT,
    intensity_percent REAL,
    keyword TEXT,
    sentiment_score REAL,
    volume_db REAL,
    pitch_hz REAL,
    language TEXT,
    translation_available TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    analysis_tool TEXT,
    confidence_score REAL,
    verified_by INTEGER,
    verification_date TEXT,
    is_final TEXT
);
INSERT INTO Match_Commentary_Emotion_Scores (match_id,commentator_id,segment_start_time,segment_end_time,emotion_type,intensity_percent,keyword,sentiment_score,volume_db,pitch_hz,language,translation_available,notes,created_at,updated_at,analysis_tool,confidence_score,verified_by,verification_date,is_final) VALUES (1023,201,'00:10:00','00:10:45','Excitement',85.0,'Goal','0.92',78.5,250,'English','Yes','High energy after goal','2024-03-10','2024-03-10','AudioAI',0.95,301,'2024-03-10','Yes');
INSERT INTO Match_Commentary_Emotion_Scores (match_id,commentator_id,segment_start_time,segment_end_time,emotion_type,intensity_percent,keyword,sentiment_score,volume_db,pitch_hz,language,translation_available,notes,created_at,updated_at,analysis_tool,confidence_score,verified_by,verification_date,is_final) VALUES (1045,202,'00:45:00','00:45:30','Tension',70.0,'Penalty','0.65',72.0,230,'English','Yes','Build up to penalty','2024-03-11','2024-03-11','AudioAI',0.90,302,'2024-03-11','Yes');
INSERT INTO Match_Commentary_Emotion_Scores (match_id,commentator_id,segment_start_time,segment_end_time,emotion_type,intensity_percent,keyword,sentiment_score,volume_db,pitch_hz,language,translation_available,notes,created_at,updated_at,analysis_tool,confidence_score,verified_by,verification_date,is_final) VALUES (1078,203,'01:20:00','01:20:20','Joy',60.0,'Celebration','0.88',80.2,260,'English','Yes','Post‑match celebration','2024-03-12','2024-03-12','AudioAI',0.93,303,'2024-03-12','Yes');

-- Training Center Safety Audits
CREATE TABLE Training_Center_Safety_Audits (
    audit_id INTEGER PRIMARY KEY AUTOINCREMENT,
    center_id INTEGER,
    audit_date TEXT,
    auditor_id INTEGER,
    safety_area TEXT,
    compliance_status TEXT,
    issues_found INTEGER,
    critical_issues INTEGER,
    remedial_actions TEXT,
    deadline_date TEXT,
    follow_up_status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    risk_score REAL,
    inspection_type TEXT,
    equipment_checked INTEGER,
    fire_safety_checked TEXT,
    first_aid_kits_checked TEXT,
    ventilation_status TEXT,
    emergency_exits_status TEXT,
    is_closed TEXT
);
INSERT INTO Training_Center_Safety_Audits (center_id,audit_date,auditor_id,safety_area,compliance_status,issues_found,critical_issues,remedial_actions,deadline_date,follow_up_status,notes,created_at,updated_at,risk_score,inspection_type,equipment_checked,fire_safety_checked,first_aid_kits_checked,ventilation_status,emergency_exits_status,is_closed) VALUES (1,'2024-02-15',401,'Gym','Pass',0,0,'None','2024-02-20','Completed','All good','2024-02-15','2024-02-15',2.1,'Routine',20,'OK','OK','Good','Clear','Yes');
INSERT INTO Training_Center_Safety_Audits (center_id,audit_date,auditor_id,safety_area,compliance_status,issues_found,critical_issues,remedial_actions,deadline_date,follow_up_status,notes,created_at,updated_at,risk_score,inspection_type,equipment_checked,fire_safety_checked,first_aid_kits_checked,ventilation_status,emergency_exits_status,is_closed) VALUES (2,'2024-03-01',402,'Pool','Fail',3,1,'Repair pool filters','2024-03-15','Pending','Leak detected','2024-03-01','2024-03-01',7.8,'Special','15','Fail','OK','Fair','Obstructed','No');
INSERT INTO Training_Center_Safety_Audits (center_id,audit_date,auditor_id,safety_area,compliance_status,issues_found,critical_issues,remedial_actions,deadline_date,follow_up_status,notes,created_at,updated_at,risk_score,inspection_type,equipment_checked,fire_safety_checked,first_aid_kits_checked,ventilation_status,emergency_exits_status,is_closed) VALUES (1,'2024-03-20',403,'MedicalRoom','Pass',1,0,'Replace expired bandages','2024-04-01','InProgress','One expired supply','2024-03-20','2024-03-20',3.4,'Routine',10,'OK','OK','Good','Clear','No');

-- Sponsor Brand Audience Reach
CREATE TABLE Sponsor_Brand_Audience_Reach (
    reach_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    campaign_name TEXT,
    start_date TEXT,
    end_date TEXT,
    total_impressions INTEGER,
    unique_viewers INTEGER,
    average_view_duration_seconds REAL,
    geographic_coverage TEXT,
    demographic_coverage TEXT,
    platform_mix TEXT,
    cost_usd REAL,
    revenue_generated_usd REAL,
    roi_percent REAL,
    brand_affinity_score REAL,
    engagement_rate_percent REAL,
    click_through_rate_percent REAL,
    conversion_rate_percent REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    approved_by INTEGER,
    status TEXT,
    measurement_tool TEXT
);
INSERT INTO Sponsor_Brand_Audience_Reach (sponsor_id,campaign_name,start_date,end_date,total_impressions,unique_viewers,average_view_duration_seconds,geographic_coverage,demographic_coverage,platform_mix,cost_usd,revenue_generated_usd,roi_percent,brand_affinity_score,engagement_rate_percent,click_through_rate_percent,conversion_rate_percent,notes,created_at,updated_at,approved_by,status,measurement_tool) VALUES (501,'WinterGear2024','2024-12-01','2025-02-28',8000000,3500000,35.2,'Europe','25-45','TV,Social,Online',250000,420000,68.0,0.82,1.5,0.4,0.2,'Strong winter campaign','2025-03-01','2025-03-01',12,'Completed','MediaWatch');
INSERT INTO Sponsor_Brand_Audience_Reach (sponsor_id,campaign_name,start_date,end_date,total_impressions,unique_viewers,average_view_duration_seconds,geographic_coverage,demographic_coverage,platform_mix,cost_usd,revenue_generated_usd,roi_percent,brand_affinity_score,engagement_rate_percent,click_through_rate_percent,conversion_rate_percent,notes,created_at,updated_at,approved_by,status,measurement_tool) VALUES (502,'SummerDrinks2024','2024-06-01','2024-08-31',6000000,2800000,28.7,'NorthAmerica','18-35','Social,Online',180000,310000,72.2,0.77,1.2,0.35,0.15,'Successful summer drive','2024-09-01','2024-09-01',13,'Completed','MediaWatch');
INSERT INTO Sponsor_Brand_Audience_Reach (sponsor_id,campaign_name,start_date,end_date,total_impressions,unique_viewers,average_view_duration_seconds,geographic_coverage,demographic_coverage,platform_mix,cost_usd,revenue_generated_usd,roi_percent,brand_affinity_score,engagement_rate_percent,click_through_rate_percent,conversion_rate_percent,notes,created_at,updated_at,approved_by,status,measurement_tool) VALUES (503,'TechLaunch2024','2024-09-15','2024-10-15',4500000,2000000,40.5,'Asia','20-40','Online,Display',220000,380000,72.7,0.85,1.8,0.5,0.25,'High tech interest','2024-10-20','2024-10-20',14,'Completed','MediaWatch');

-- Match Commentary Emotion Scores (additional table) *Already created above* – skip duplicate.

-- Sponsor Brand Audience Reach already done.

-- League Fan Engagement Campaign Results already done.

-- Training Center Safety Audits already done.

-- Additional new table: Sponsor_Brand_Asset_Tracking
CREATE TABLE Sponsor_Brand_Asset_Tracking (
    asset_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    asset_type TEXT,
    asset_name TEXT,
    creation_date TEXT,
    file_format TEXT,
    file_size_mb REAL,
    storage_location TEXT,
    usage_rights TEXT,
    usage_count INTEGER,
    last_used_date TEXT,
    associated_campaign TEXT,
    approval_status TEXT,
    approved_by INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    checksum TEXT,
    version_number INTEGER,
    is_active TEXT,
    compliance_status TEXT
);
INSERT INTO Sponsor_Brand_Asset_Tracking (sponsor_id,asset_type,asset_name,creation_date,file_format,file_size_mb,storage_location,usage_rights,usage_count,last_used_date,associated_campaign,approval_status,approved_by,notes,created_at,updated_at,checksum,version_number,is_active,compliance_status) VALUES (501,'Image','WinterGearBanner','2024-01-10','PNG',2.5,'/assets/sponsor/501/','Unlimited',120,'2024-02-15','WinterGear2024','Approved',12,'High‑resolution banner','2024-01-10','2024-01-10','ABC123',1,'Yes','Compliant');
INSERT INTO Sponsor_Brand_Asset_Tracking (sponsor_id,asset_type,asset_name,creation_date,file_format,file_size_mb,storage_location,usage_rights,usage_count,last_used_date,associated_campaign,approval_status,approved_by,notes,created_at,updated_at,checksum,version_number,is_active,compliance_status) VALUES (502,'Video','SummerDrinksSpot','2024-02-20','MP4',150.0,'/assets/sponsor/502/','Limited',45,'2024-03-30','SummerDrinks2024','Approved',13,'30‑second spot','2024-02-20','2024-02-20','DEF456',1,'Yes','Compliant');
INSERT INTO Sponsor_Brand_Asset_Tracking (sponsor_id,asset_type,asset_name,creation_date,file_format,file_size_mb,storage_location,usage_rights,usage_count,last_used_date,associated_campaign,approval_status,approved_by,notes,created_at,updated_at,checksum,version_number,is_active,compliance_status) VALUES (503,'PDF','TechLaunchBrochure','2024-08-01','PDF',5.2,'/assets/sponsor/503/','Unlimited',80,'2024-09-10','TechLaunch2024','Pending',14,'Awaiting final sign‑off','2024-08-01','2024-08-01','GHI789',1,'No','Pending');

-- Sponsor Brand Audience Reach already defined; we need one more distinct table to reach 10 total.

-- Fan Engagement Analytics Model
CREATE TABLE Fan_Engagement_Analytics_Model (
    model_id INTEGER PRIMARY KEY AUTOINCREMENT,
    model_name TEXT,
    version TEXT,
    training_start_date TEXT,
    training_end_date TEXT,
    algorithm_type TEXT,
    feature_count INTEGER,
    training_accuracy REAL,
    validation_accuracy REAL,
    test_accuracy REAL,
    hyperparameters TEXT,
    data_source TEXT,
    last_updated TEXT,
    created_at TEXT,
    updated_at TEXT,
    owner_id INTEGER,
    deployment_status TEXT,
    endpoint_url TEXT,
    compute_resource TEXT,
    monitoring_enabled TEXT,
    notes TEXT,
    compliance_status TEXT,
    audit_log TEXT,
    is_active TEXT
);
INSERT INTO Fan_Engagement_Analytics_Model (model_name,version,training_start_date,training_end_date,algorithm_type,feature_count,training_accuracy,validation_accuracy,test_accuracy,hyperparameters,data_source,last_updated,created_at,updated_at,owner_id,deployment_status,endpoint_url,compute_resource,monitoring_enabled,notes,compliance_status,audit_log,is_active) VALUES ('FanChurnPredictor','1.0','2024-01-01','2024-02-15','GradientBoosting',45,0.92,0.88,0.85,'max_depth=5;learning_rate=0.1','FanAppDB','2024-03-01','2024-03-01','2024-03-01',21,'Deployed','https://api.club.com/models/fanchurn','GPU','Yes','Used for retention campaigns','Compliant','Log123','Yes');
INSERT INTO Fan_Engagement_Analytics_Model (model_name,version,training_start_date,training_end_date,algorithm_type,feature_count,training_accuracy,validation_accuracy,test_accuracy,hyperparameters,data_source,last_updated,created_at,updated_at,owner_id,deployment_status,endpoint_url,compute_resource,monitoring_enabled,notes,compliance_status,audit_log,is_active) VALUES ('MerchRecommendation','2.1','2024-02-01','2024-03-10','NeuralNetwork',60,0.95,0.90,0.89','layers=3;units=128','MerchDB','2024-03-20','2024-03-20','2024-03-20',22,'Testing','https://api.club.com/models/merchrec','CPU','Yes','A/B testing phase','Compliant','Log124','Yes');
INSERT INTO Fan_Engagement_Analytics_Model (model_name,version,training_start_date,training_end_date,algorithm_type,feature_count,training_accuracy,validation_accuracy,test_accuracy,hyperparameters,data_source,last_updated,created_at,updated_at,owner_id,deployment_status,endpoint_url,compute_resource,monitoring_enabled,notes,compliance_status,audit_log,is_active) VALUES ('TicketPriceOptimizer','3.0','2024-03-01','2024-04-05','RandomForest',30,0.88,0.85,0.84','trees=200;max_features=auto','TicketDB','2024-04-10','2024-04-10','2024-04-10',23,'Deployed','https://api.club.com/models/ticketopt','GPU','Yes','Live pricing adjustments','Compliant','Log125','Yes');