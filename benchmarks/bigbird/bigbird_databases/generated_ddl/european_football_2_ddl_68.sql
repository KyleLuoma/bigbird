-- Broadcast Audience Metrics
CREATE TABLE Broadcast_Audience_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    broadcast_network TEXT,
    viewer_count INTEGER,
    average_watch_time_seconds INTEGER,
    peak_concurrent_viewers INTEGER,
    duration_minutes INTEGER,
    region_code TEXT,
    device_type TEXT,
    stream_quality TEXT,
    ad_impressions INTEGER,
    ad_clicks INTEGER,
    subscription_views INTEGER,
    free_views INTEGER,
    rating REAL,
    demographic_age_group TEXT,
    demographic_gender TEXT,
    social_shares INTEGER,
    engagement_score REAL,
    timestamp TEXT
);

INSERT INTO Broadcast_Audience_Metrics (match_id,broadcast_network,viewer_count,average_watch_time_seconds,peak_concurrent_viewers,duration_minutes,region_code,device_type,stream_quality,ad_impressions,ad_clicks,subscription_views,free_views,rating,demographic_age_group,demographic_gender,social_shares,engagement_score,timestamp) VALUES (1001,'NetworkA',250000,1800,300000,95,'EU','Mobile','HD',50000,1200,180000,70000,4.5,'18-24','Male',15000,0.85,'2025-05-01');
INSERT INTO Broadcast_Audience_Metrics (match_id,broadcast_network,viewer_count,average_watch_time_seconds,peak_concurrent_viewers,duration_minutes,region_code,device_type,stream_quality,ad_impressions,ad_clicks,subscription_views,free_views,rating,demographic_age_group,demographic_gender,social_shares,engagement_score,timestamp) VALUES (1002,'NetworkB',320000,2100,380000,105,'NA','Desktop','FullHD',75000,2100,250000,70000,4.7,'25-34','Female',21000,0.92,'2025-05-02');
INSERT INTO Broadcast_Audience_Metrics (match_id,broadcast_network,viewer_count,average_watch_time_seconds,peak_concurrent_viewers,duration_minutes,region_code,device_type,stream_quality,ad_impressions,ad_clicks,subscription_views,free_views,rating,demographic_age_group,demographic_gender,social_shares,engagement_score,timestamp) VALUES (1003,'NetworkC',190000,1500,220000,90,'AS','Tablet','HD',40000,800,130000,60000,4.2,'35-44','Male',9000,0.78,'2025-05-03');

-- Fan Travel Log
CREATE TABLE Fan_Travel_Log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    match_id INTEGER,
    departure_city TEXT,
    arrival_city TEXT,
    travel_mode TEXT,
    distance_km INTEGER,
    travel_time_minutes INTEGER,
    ticket_category TEXT,
    accommodation_type TEXT,
    expenditure_usd INTEGER,
    carbon_footprint_kg INTEGER,
    travel_date TEXT,
    arrival_time TEXT,
    departure_time TEXT,
    companion_count INTEGER,
    loyalty_level TEXT,
    feedback_score REAL,
    special_requests TEXT,
    travel_agency TEXT,
    travel_status TEXT
);

INSERT INTO Fan_Travel_Log (fan_id,match_id,departure_city,arrival_city,travel_mode,distance_km,travel_time_minutes,ticket_category,accommodation_type,expenditure_usd,carbon_footprint_kg,travel_date,arrival_time,departure_time,companion_count,loyalty_level,feedback_score,special_requests,travel_agency,travel_status) VALUES (501,1001,'Madrid','London','Plane',1260,150,'VIP','Hotel',1200,350,'2025-05-01','09:30','06:00',2,'Gold',4.9,'None','TravelCo','Completed');
INSERT INTO Fan_Travel_Log (fan_id,match_id,departure_city,arrival_city,travel_mode,distance_km,travel_time_minutes,ticket_category,accommodation_type,expenditure_usd,carbon_footprint_kg,travel_date,arrival_time,departure_time,companion_count,loyalty_level,feedback_score,special_requests,travel_agency,travel_status) VALUES (502,1002,'Berlin','Paris','Train',1050,420,'Standard','Hostel',350,85,'2025-05-02','14:15','08:30',1,'Silver',4.2,'WheelchairAccess','EuroTravel','Completed');
INSERT INTO Fan_Travel_Log (fan_id,match_id,departure_city,arrival_city,travel_mode,distance_km,travel_time_minutes,ticket_category,accommodation_type,expenditure_usd,carbon_footprint_kg,travel_date,arrival_time,departure_time,companion_count,loyalty_level,feedback_score,special_requests,travel_agency,travel_status) VALUES (503,1003,'Rome','Milan','Car',600,480,'Economy','Apartment',200,45,'2025-05-03','18:00','09:00',3,'Bronze',3.8,'PetFriendly','AutoTravel','Completed');

-- Club Asset Insurance Policies
CREATE TABLE Club_Asset_Insurance_Policies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    asset_type TEXT,
    asset_id INTEGER,
    policy_number TEXT,
    insurer_name TEXT,
    coverage_amount_usd INTEGER,
    premium_usd INTEGER,
    deductible_usd INTEGER,
    start_date TEXT,
    end_date TEXT,
    risk_category TEXT,
    insured_value_usd INTEGER,
    claim_history TEXT,
    policy_status TEXT,
    last_audit_date TEXT,
    renewal_notice_sent INTEGER,
    broker_contact TEXT,
    notes TEXT,
    compliance_flag INTEGER,
    audit_score REAL
);

INSERT INTO Club_Asset_Insurance_Policies (club_id,asset_type,asset_id,policy_number,insurer_name,coverage_amount_usd,premium_usd,deductible_usd,start_date,end_date,risk_category,insured_value_usd,claim_history,policy_status,last_audit_date,renewal_notice_sent,broker_contact,notes,compliance_flag,audit_score) VALUES (1,'Stadium',101,'POL001','GlobalInsure',50000000,250000,50000,'2023-01-01','2028-12-31','High',48000000,'None','Active','2024-12-01',1,'BrokerA','RenewalDueSoon',1,92.5);
INSERT INTO Club_Asset_Insurance_Policies (club_id,asset_type,asset_id,policy_number,insurer_name,coverage_amount_usd,premium_usd,deductible_usd,start_date,end_date,risk_category,insured_value_usd,claim_history,policy_status,last_audit_date,renewal_notice_sent,broker_contact,notes,compliance_flag,audit_score) VALUES (2,'Training_Center',205,'POL002','SecureCover',12000000,80000,10000,'2024-03-15','2029-03-14','Medium',11500000,'MinorDamage2025','Active','2025-03-01',0,'BrokerB','NoIssues',1,88.0);
INSERT INTO Club_Asset_Insurance_Policies (club_id,asset_type,asset_id,policy_number,insurer_name,coverage_amount_usd,premium_usd,deductible_usd,start_date,end_date,risk_category,insured_value_usd,claim_history,policy_status,last_audit_date,renewal_notice_sent,broker_contact,notes,compliance_flag,audit_score) VALUES (3,'Equipment',309,'POL003','AssetGuard',3000000,25000,5000,'2022-07-01','2027-06-30','Low',2800000,'None','Expired','2026-06-01',0,'BrokerC','PolicyLapsed',0,0.0);

-- Stadium Energy Production
CREATE TABLE Stadium_Energy_Production (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    production_date TEXT,
    solar_mwh REAL,
    wind_mwh REAL,
    hydro_mwh REAL,
    biofuel_mwh REAL,
    total_mwh REAL,
    peak_power_mw REAL,
    average_power_mw REAL,
    grid_import_mwh REAL,
    grid_export_mwh REAL,
    carbon_offset_tons REAL,
    weather_condition TEXT,
    maintenance_status TEXT,
    operator_name TEXT,
    inverter_efficiency_percent REAL,
    storage_level_percent REAL,
    observation_notes TEXT,
    data_quality_flag INTEGER,
    reported_by TEXT
);

INSERT INTO Stadium_Energy_Production (stadium_id,production_date,solar_mwh,wind_mwh,hydro_mwh,biofuel_mwh,total_mwh,peak_power_mw,average_power_mw,grid_import_mwh,grid_export_mwh,carbon_offset_tons,weather_condition,maintenance_status,operator_name,inverter_efficiency_percent,storage_level_percent,observation_notes,data_quality_flag,reported_by) VALUES (101,'2025-04-30',120.5,45.2,0.0,0.0,165.7,2.5,0.9,30.0,0.0,10.5,'Sunny','Normal','OpsTeamA',98.2,75.0,'All systems nominal',1,'SystemAuto');
INSERT INTO Stadium_Energy_Production (stadium_id,production_date,solar_mwh,wind_mwh,hydro_mwh,biofuel_mwh,total_mwh,peak_power_mw,average_power_mw,grid_import_mwh,grid_export_mwh,carbon_offset_tons,weather_condition,maintenance_status,operator_name,inverter_efficiency_percent,storage_level_percent,observation_notes,data_quality_flag,reported_by) VALUES (102,'2025-04-30',80.0,60.0,10.0,5.0,155.0,3.0,1.1,20.0,0.0,12.0,'Windy','Inspection','OpsTeamB',97.5,60.0,'Wind turbines operating at 85%',1,'SystemAuto');
INSERT INTO Stadium_Energy_Production (stadium_id,production_date,solar_mwh,wind_mwh,hydro_mwh,biofuel_mwh,total_mwh,peak_power_mw,average_power_mw,grid_import_mwh,grid_export_mwh,carbon_offset_tons,weather_condition,maintenance_status,operator_name,inverter_efficiency_percent,storage_level_percent,observation_notes,data_quality_flag,reported_by) VALUES (103,'2025-04-30',0.0,0.0,0.0,0.0,0.0,0.0,0.0,50.0,0.0,0.0,'Cloudy','Shutdown','OpsTeamC',0.0,0.0,'No renewable generation due to weather',0,'ManualEntry');

-- Player Language Certifications
CREATE TABLE Player_Language_Certifications (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    language_code TEXT,
    certification_body TEXT,
    certification_level TEXT,
    certificate_number TEXT,
    issue_date TEXT,
    expiry_date TEXT,
    score_integer INTEGER,
    oral_proficiency TEXT,
    written_proficiency TEXT,
    listening_proficiency TEXT,
    reading_proficiency TEXT,
    test_center TEXT,
    verification_status TEXT,
    notes TEXT,
    last_updated TEXT,
    validated_by TEXT,
    retain_flag INTEGER,
    audit_trail TEXT,
    compliance_status TEXT
);

INSERT INTO Player_Language_Certifications (player_id,language_code,certification_body,certification_level,certificate_number,issue_date,expiry_date,score_integer,oral_proficiency,written_proficiency,listening_proficiency,reading_proficiency,test_center,verification_status,notes,last_updated,validated_by,retain_flag,audit_trail,compliance_status) VALUES (101,'EN','EF','Advanced','CERT001','2022-06-15','2027-06-15',950,'Fluent','Fluent','Fluent','Fluent','London','Verified','No issues','2025-01-10','AdminA',1,'Log001','Compliant');
INSERT INTO Player_Language_Certifications (player_id,language_code,certification_body,certification_level,certificate_number,issue_date,expiry_date,score_integer,oral_proficiency,written_proficiency,listening_proficiency,reading_proficiency,test_center,verification_status,notes,last_updated,validated_by,retain_flag,audit_trail,compliance_status) VALUES (102,'ES','Cambridge','Intermediate','CERT002','2021-03-20','2026-03-20',800,'Conversational','Conversational','Conversational','Conversational','Madrid','Pending','Awaiting results','2025-02-12','AdminB',0,'Log002','Pending');
INSERT INTO Player_Language_Certifications (player_id,language_code,certification_body,certification_level,certificate_number,issue_date,expiry_date,score_integer,oral_proficiency,written_proficiency,listening_proficiency,reading_proficiency,test_center,verification_status,notes,last_updated,validated_by,retain_flag,audit_trail,compliance_status) VALUES (103,'DE','Goethe','Basic','CERT003','2023-09-05','2028-09-05',600,'Basic','Basic','Basic','Basic','Berlin','Verified','Needs improvement','2025-03-08','AdminC',1,'Log003','Compliant');

-- Team Merchandise Sales Channels
CREATE TABLE Team_Merchandise_Sales_Channels (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    channel_name TEXT,
    channel_type TEXT,
    region TEXT,
    monthly_sales_usd INTEGER,
    annual_sales_usd INTEGER,
    units_sold INTEGER,
    average_order_value_usd REAL,
    conversion_rate_percent REAL,
    return_rate_percent REAL,
    stock_turnover_days INTEGER,
    marketing_spend_usd INTEGER,
    discount_rate_percent REAL,
    promotional_events INTEGER,
    website_traffic_visits INTEGER,
    mobile_app_downloads INTEGER,
    social_media_followers INTEGER,
    last_update TEXT,
    data_source TEXT,
    compliance_flag INTEGER
);

INSERT INTO Team_Merchandise_Sales_Channels (team_id,channel_name,channel_type,region,monthly_sales_usd,annual_sales_usd,units_sold,average_order_value_usd,conversion_rate_percent,return_rate_percent,stock_turnover_days,marketing_spend_usd,discount_rate_percent,promotional_events,website_traffic_visits,mobile_app_downloads,social_media_followers,last_update,data_source,compliance_flag) VALUES (1,'OfficialShop','Online','EU',120000,1440000,8000,15.0,2.5,1.0,45,30000,5.0,12,250000,40000,200000,'2025-04-30','ERP',1);
INSERT INTO Team_Merchandise_Sales_Channels (team_id,channel_name,channel_type,region,monthly_sales_usd,annual_sales_usd,units_sold,average_order_value_usd,conversion_rate_percent,return_rate_percent,stock_turnover_days,marketing_spend_usd,discount_rate_percent,promotional_events,website_traffic_visits,mobile_app_downloads,social_media_followers,last_update,data_source,compliance_flag) VALUES (2,'StadiumKiosk','Physical','NA',50000,600000,3000,16.7,3.0,2.5,30,20000,7.0,8,150000,25000,150000,'2025-04-30','POS',1);
INSERT INTO Team_Merchandise_Sales_Channels (team_id,channel_name,channel_type,region,monthly_sales_usd,annual_sales_usd,units_sold,average_order_value_usd,conversion_rate_percent,return_rate_percent,stock_turnover_days,marketing_spend_usd,discount_rate_percent,promotional_events,website_traffic_visits,mobile_app_downloads,social_media_followers,last_update,data_source,compliance_flag) VALUES (3,'ThirdPartyRetail','Wholesale','AS',80000,960000,4000,20.0,1.8,0.8,60,25000,4.0,15,200000,30000,120000,'2025-04-30','CRM',1);

-- Match Operational Costs
CREATE TABLE Match_Operational_Costs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    venue_rental_usd INTEGER,
    security_usd INTEGER,
    staffing_usd INTEGER,
    catering_usd INTEGER,
    equipment_rental_usd INTEGER,
    medical_services_usd INTEGER,
    transport_usd INTEGER,
    marketing_usd INTEGER,
    broadcasting_usd INTEGER,
    tax_usd INTEGER,
    insurance_usd INTEGER,
    total_cost_usd INTEGER,
    cost_per_attendee_usd REAL,
    cost_breakdown_notes TEXT,
    approved_by TEXT,
    approval_date TEXT,
    fiscal_year TEXT,
    cost_category TEXT,
    audit_flag INTEGER
);

INSERT INTO Match_Operational_Costs (match_id,venue_rental_usd,security_usd,staffing_usd,catering_usd,equipment_rental_usd,medical_services_usd,transport_usd,marketing_usd,broadcasting_usd,tax_usd,insurance_usd,total_cost_usd,cost_per_attendee_usd,cost_breakdown_notes,approved_by,approval_date,fiscal_year,cost_category,audit_flag) VALUES (1001,250000,50000,75000,30000,20000,15000,40000,60000,80000,25000,30000,665000,66.5,'Standard operational cost spread','DirectorA','2025-04-20','2025','MatchDay',1);
INSERT INTO Match_Operational_Costs (match_id,venue_rental_usd,security_usd,staffing_usd,catering_usd,equipment_rental_usd,medical_services_usd,transport_usd,marketing_usd,broadcasting_usd,tax_usd,insurance_usd,total_cost_usd,cost_per_attendee_usd,cost_breakdown_notes,approved_by,approval_date,fiscal_year,cost_category,audit_flag) VALUES (1002,300000,60000,80000,35000,25000,20000,45000,70000,90000,30000,35000,770000,77.0,'Higher security due to rivalry','DirectorB','2025-04-21','2025','MatchDay',1);
INSERT INTO Match_Operational_Costs (match_id,venue_rental_usd,security_usd,staffing_usd,catering_usd,equipment_rental_usd,medical_services_usd,transport_usd,marketing_usd,broadcasting_usd,tax_usd,insurance_usd,total_cost_usd,cost_per_attendee_usd,cost_breakdown_notes,approved_by,approval_date,fiscal_year,cost_category,audit_flag) VALUES (1003,200000,40000,60000,25000,15000,12000,35000,50000,75000,20000,25000,545000,54.5,'Reduced marketing spend','DirectorC','2025-04-22','2025','MatchDay',1);

-- League Expansion Applications
CREATE TABLE League_Expansion_Applications (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    applicant_club_name TEXT,
    applicant_country TEXT,
    stadium_capacity INTEGER,
    proposed_city TEXT,
    application_date TEXT,
    review_status TEXT,
    reviewer_name TEXT,
    decision_date TEXT,
    approved BOOLEAN,
    financial_guarantee_usd INTEGER,
    youth_development_plan TEXT,
    community_engagement_plan TEXT,
    infrastructure_commitments TEXT,
    market_analysis_score INTEGER,
    fan_base_estimate INTEGER,
    media_exposure_score INTEGER,
    regulatory_compliance_flag INTEGER,
    notes TEXT,
    last_modified TEXT,
    audit_trail TEXT
);

INSERT INTO League_Expansion_Applications (applicant_club_name,applicant_country,stadium_capacity,proposed_city,application_date,review_status,reviewer_name,decision_date,approved,financial_guarantee_usd,youth_development_plan,community_engagement_plan,infrastructure_commitments,market_analysis_score,fan_base_estimate,media_exposure_score,regulatory_compliance_flag,notes,last_modified,audit_trail) VALUES ('NewTown FC','USA',25000,'NewTown','2025-01-15','Under Review','ReviewerA',NULL,0,5000000,'PlanA','PlanB','CommitmentA',78,120000,85,1,'Awaiting final vote','2025-04-15','LogA');
INSERT INTO League_Expansion_Applications (applicant_club_name,applicant_country,stadium_capacity,proposed_city,application_date,review_status,reviewer_name,decision_date,approved,financial_guarantee_usd,youth_development_plan,community_engagement_plan,infrastructure_commitments,market_analysis_score,fan_base_estimate,media_exposure_score,regulatory_compliance_flag,notes,last_modified,audit_trail) VALUES ('Coastal United','UK',30000,'Coast City','2025-02-20','Approved','ReviewerB','2025-04-10',1,8000000,'PlanC','PlanD','CommitmentB',85,200000,90,1,'Approved with conditions','2025-04-12','LogB');
INSERT INTO League_Expansion_Applications (applicant_club_name,applicant_country,stadium_capacity,proposed_city,application_date,review_status,reviewer_name,decision_date,approved,financial_guarantee_usd,youth_development_plan,community_engagement_plan,infrastructure_commitments,market_analysis_score,fan_base_estimate,media_exposure_score,regulatory_compliance_flag,notes,last_modified,audit_trail) VALUES ('Mountain Rangers','Canada',20000,'Highland','2025-03-05','Rejected','ReviewerC','2025-04-08',0,4000000,'PlanE','PlanF','CommitmentC',65,80000,70,0,'Insufficient market potential','2025-04-14','LogC');

-- Referee Performance Reviews
CREATE TABLE Referee_Performance_Reviews (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    referee_id INTEGER,
    match_id INTEGER,
    review_date TEXT,
    accuracy_score_percent REAL,
    fairness_score_percent REAL,
    fitness_score_percent REAL,
    discipline_score_percent REAL,
    decision_time_avg_seconds REAL,
    critical_incidents INTEGER,
    yellow_cards_given INTEGER,
    red_cards_given INTEGER,
    offside_calls_correct INTEGER,
    fouls_correct INTEGER,
    player_interactions_rating TEXT,
    manager_feedback TEXT,
    league_official_notes TEXT,
    overall_rating REAL,
    recommendation TEXT,
    reviewer_name TEXT,
    compliance_flag INTEGER
);

INSERT INTO Referee_Performance_Reviews (referee_id,match_id,review_date,accuracy_score_percent,fairness_score_percent,fitness_score_percent,discipline_score_percent,decision_time_avg_seconds,critical_incidents,yellow_cards_given,red_cards_given,offside_calls_correct,fouls_correct,player_interactions_rating,manager_feedback,league_official_notes,overall_rating,recommendation,reviewer_name,compliance_flag) VALUES (10,1001,'2025-05-01',96.5,94.0,92.0,95.0,7.2,2,3,0,98,97,'Positive','Good control','No issues',95.0,'Continue','SeniorOfficialA',1);
INSERT INTO Referee_Performance_Reviews (referee_id,match_id,review_date,accuracy_score_percent,fairness_score_percent,fitness_score_percent,discipline_score_percent,decision_time_avg_seconds,critical_incidents,yellow_cards_given,red_cards_given,offside_calls_correct,fouls_correct,player_interactions_rating,manager_feedback,league_official_notes,overall_rating,recommendation,reviewer_name,compliance_flag) VALUES (11,1002,'2025-05-02',89.0,85.5,88.0,90.0,9.5,5,5,1,92,90,'Mixed','Needs improvement','Several disputes',82.0,'FurtherTraining','SeniorOfficialB',1);
INSERT INTO Referee_Performance_Reviews (referee_id,match_id,review_date,accuracy_score_percent,fairness_score_percent,fitness_score_percent,discipline_score_percent,decision_time_avg_seconds,critical_incidents,yellow_cards_given,red_cards_given,offside_calls_correct,fouls_correct,player_interactions_rating,manager_feedback,league_official_notes,overall_rating,recommendation,reviewer_name,compliance_flag) VALUES (12,1003,'2025-05-03',92.0,90.0,91.0,93.0,8.0,3,4,0,95,94,'Positive','Handled pressure well','All good',90.0,'Promote','SeniorOfficialC',1);

-- Training Camp Facilities
CREATE TABLE Training_Camp_Facilities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    camp_name TEXT,
    location_city TEXT,
    location_country TEXT,
    facility_type TEXT,
    capacity_athletes INTEGER,
    number_of_fields INTEGER,
    gym_equipment_quality TEXT,
    medical_center_available BOOLEAN,
    accommodation_type TEXT,
    avg_nightly_rate_usd INTEGER,
    nutrition_service BOOLEAN,
    hydrotherapy_pool BOOLEAN,
    climbing_wall BOOLEAN,
    video_analysis_rooms INTEGER,
    wifi_bandwidth_gbps REAL,
    security_level TEXT,
    maintenance_status TEXT,
    opening_date TEXT,
    last_inspection_date TEXT,
    notes TEXT
);

INSERT INTO Training_Camp_Facilities (camp_name,location_city,location_country,facility_type,capacity_athletes,number_of_fields,gym_equipment_quality,medical_center_available,accommodation_type,avg_nightly_rate_usd,nutrition_service,hydrotherapy_pool,climbing_wall,video_analysis_rooms,wifi_bandwidth_gbps,security_level,maintenance_status,opening_date,last_inspection_date,notes) VALUES ('Alpine Prep','Innsbruck','Austria','High Altitude',120,4,'Premium',1,'Dormitory',150,1,1,0,3,1.5,'High','Good','2018-06-01','2025-03-15','Used for pre‑season conditioning');
INSERT INTO Training_Camp_Facilities (camp_name,location_city,location_country,facility_type,capacity_athletes,number_of_fields,gym_equipment_quality,medical_center_available,accommodation_type,avg_nightly_rate_usd,nutrition_service,hydrotherapy_pool,climbing_wall,video_analysis_rooms,wifi_bandwidth_gbps,security_level,maintenance_status,opening_date,last_inspection_date,notes) VALUES ('Coastal Elite','Lisbon','Portugal','Sea Level',100,3,'Standard',1,'Hotel',200,1,0,1,2,1.0,'Medium','Excellent','2020-09-15','2025-02-28','Focus on technical drills');
INSERT INTO Training_Camp_Facilities (camp_name,location_city,location_country,facility_type,capacity_athletes,number_of_fields,gym_equipment_quality,medical_center_available,accommodation_type,avg_nightly_rate_usd,nutrition_service,hydrotherapy_pool,climbing_wall,video_analysis_rooms,wifi_bandwidth_gbps,security_level,maintenance_status,opening_date,last_inspection_date,notes) VALUES ('Desert Forge','Riyadh','SaudiArabia','Climate Controlled',80,2,'High',1,'Villa',250,1,1,0,1,2.0,'High','Good','2022-01-10','2025-01-20','Heat acclimation program');

-- Referee Assignment Log
CREATE TABLE Referee_Assignment_Log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    referee_id INTEGER,
    match_id INTEGER,
    assigned_date TEXT,
    role TEXT,
    home_team_id INTEGER,
    away_team_id INTEGER,
    travel_arrangement TEXT,
    accommodation_assigned TEXT,
    meal_plan TEXT,
    equipment_issued TEXT,
    pre_match_briefing BOOLEAN,
    post_match_debrief BOOLEAN,
    performance_review_status TEXT,
    notes TEXT,
    approved_by TEXT,
    approval_date TEXT,
    compliance_check BOOLEAN,
    last_updated TEXT,
    audit_trail TEXT,
    status TEXT
);

INSERT INTO Referee_Assignment_Log (referee_id,match_id,assigned_date,role,home_team_id,away_team_id,travel_arrangement,accommodation_assigned,meal_plan,equipment_issued,pre_match_briefing,post_match_debrief,performance_review_status,notes,approved_by,approval_date,compliance_check,last_updated,audit_trail,status) VALUES (10,1001,'2025-04-20','Head','1','2','Flight','HotelA','Standard','FullKit',1,1,'Pending','Initial assignment','OpsLead','2025-04-21',1,'2025-04-21','Log001','Scheduled');
INSERT INTO Referee_Assignment_Log (referee_id,match_id,assigned_date,role,home_team_id,away_team_id,travel_arrangement,accommodation_assigned,meal_plan,equipment_issued,pre_match_briefing,post_match_debrief,performance_review_status,notes,approved_by,approval_date,compliance_check,last_updated,audit_trail,status) VALUES (11,1002,'2025-04-21','Assistant','3','4','Bus','HotelB','Vegetarian','StandardKit',1,1,'Pending','Assistant referee','OpsLead','2025-04-22',1,'2025-04-22','Log002','Scheduled');
INSERT INTO Referee_Assignment_Log (referee_id,match_id,assigned_date,role,home_team_id,away_team_id,travel_arrangement,accommodation_assigned,meal_plan,equipment_issued,pre_match_briefing,post_match_debrief,performance_review_status,notes,approved_by,approval_date,compliance_check,last_updated,audit_trail,status) VALUES (12,1003,'2025-04-22','FourthOfficial','5','6','Train','HotelC','GlutenFree','FullKit',1,1,'Pending','Fourth official','OpsLead','2025-04-23',1,'2025-04-23','Log003','Scheduled');

-- Team Sponsorship History
CREATE TABLE Team_Sponsorship_History (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    sponsor_name TEXT,
    sponsor_type TEXT,
    start_date TEXT,
    end_date TEXT,
    contract_value_usd INTEGER,
    branding_area TEXT,
    activation_events INTEGER,
    exclusivity_flag BOOLEAN,
    renewal_option BOOLEAN,
    performance_bonus_usd INTEGER,
    media_exposure_score INTEGER,
    product_category TEXT,
    contract_status TEXT,
    last_amendment_date TEXT,
    legal_representative TEXT,
    compliance_audit_passed BOOLEAN,
    notes TEXT,
    audit_trail TEXT,
    archived BOOLEAN
);

INSERT INTO Team_Sponsorship_History (team_id,sponsor_name,sponsor_type,start_date,end_date,contract_value_usd,branding_area,activation_events,exclusivity_flag,renewal_option,performance_bonus_usd,media_exposure_score,product_category,contract_status,last_amendment_date,legal_representative,compliance_audit_passed,notes,audit_trail,archived) VALUES (1,'AlphaTech','Technology','2022-01-01','2025-12-31',15000000,'Jersey','12',1,1,2000000,85,'Electronics','Active','2025-03-01','LawyerA',1,'Renewal in progress','Audit001',0);
INSERT INTO Team_Sponsorship_History (team_id,sponsor_name,sponsor_type,start_date,end_date,contract_value_usd,branding_area,activation_events,exclusivity_flag,renewal_option,performance_bonus_usd,media_exposure_score,product_category,contract_status,last_amendment_date,legal_representative,compliance_audit_passed,notes,audit_trail,archived) VALUES (2,'BetaBank','Finance','2021-07-15','2024-07-14',12000000,'Stadium','8',0,1,1500000,78,'Banking','Expired','2024-06-30','LawyerB',1,'Ended with settlement','Audit002',1);
INSERT INTO Team_Sponsorship_History (team_id,sponsor_name,sponsor_type,start_date,end_date,contract_value_usd,branding_area,activation_events,exclusivity_flag,renewal_option,performance_bonus_usd,media_exposure_score,product_category,contract_status,last_amendment_date,legal_representative,compliance_audit_passed,notes,audit_trail,archived) VALUES (3,'GammaEnergy','Energy','2023-03-01','2026-02-28',18000000,'TrainingGear','15',1,0,2500000,90,'Renewable','Active','2025-02-20','LawyerC',1,'Mid‑term review scheduled','Audit003',0);

-- Player Endorsement Campaigns
CREATE TABLE Player_Endorsement_Campaigns (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    brand_name TEXT,
    campaign_name TEXT,
    start_date TEXT,
    end_date TEXT,
    contract_value_usd INTEGER,
    media_platforms TEXT,
    impressions INTEGER,
    clicks INTEGER,
    conversion_rate_percent REAL,
    target_audience TEXT,
    creative_theme TEXT,
    exclusivity_flag BOOLEAN,
    renewal_option BOOLEAN,
    performance_bonus_usd INTEGER,
    marketing_budget_usd INTEGER,
    regional_focus TEXT,
    compliance_status TEXT,
    notes TEXT,
    last_review_date TEXT,
    audit_log TEXT
);

INSERT INTO Player_Endorsement_Campaigns (player_id,brand_name,campaign_name,start_date,end_date,contract_value_usd,media_platforms,impressions,clicks,conversion_rate_percent,target_audience,creative_theme,exclusivity_flag,renewal_option,performance_bonus_usd,marketing_budget_usd,regional_focus,compliance_status,notes,last_review_date,audit_log) VALUES (101,'Nike','SpeedBoost','2025-01-01','2025-12-31',3000000,'SocialMedia,TV','5000000','25000',0.5,'Adults18-35','Dynamic','1','1',500000,2000000,'Global','Compliant','Successful Q1','2025-03-15','LogE01');
INSERT INTO Player_Endorsement_Campaigns (player_id,brand_name,campaign_name,start_date,end_date,contract_value_usd,media_platforms,impressions,clicks,conversion_rate_percent,target_audience,creative_theme,exclusivity_flag,renewal_option,performance_bonus_usd,marketing_budget_usd,regional_focus,compliance_status,notes,last_review_date,audit_log) VALUES (102,'Adidas','PowerFit','2025-02-01','2025-11-30',2500000,'Online,Print','4000000','20000',0.5,'Men25-40','Athletic','0','0',400000,1500000,'Europe','Pending','Awaiting final metrics','2025-04-10','LogE02');
INSERT INTO Player_Endorsement_Campaigns (player_id,brand_name,campaign_name,start_date,end_date,contract_value_usd,media_platforms,impressions,clicks,conversion_rate_percent,target_audience,creative_theme,exclusivity_flag,renewal_option,performance_bonus_usd,marketing_budget_usd,regional_focus,compliance_status,notes,last_review_date,audit_log) VALUES (103,'Puma','UrbanPulse','2025-03-01','2025-10-31',2000000,'SocialMedia','3500000','15000',0.43,'YoungAdults','Streetwear','1','0',300000,1200000,'Asia','Compliant','Mid‑campaign review done','2025-05-01','LogE03');

-- Digital Content Production Schedule
CREATE TABLE Digital_Content_Production_Schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    content_id INTEGER,
    title TEXT,
    content_type TEXT,
    production_phase TEXT,
    assigned_team TEXT,
    start_date TEXT,
    due_date TEXT,
    status TEXT,
    priority_level INTEGER,
    assets_needed TEXT,
    estimated_hours INTEGER,
    actual_hours INTEGER,
    budget_usd INTEGER,
    expense_usd INTEGER,
    revision_count INTEGER,
    approval_needed BOOLEAN,
    approved_by TEXT,
    approval_date TEXT,
    risk_level TEXT,
    comments TEXT
);

INSERT INTO Digital_Content_Production_Schedule (content_id,title,content_type,production_phase,assigned_team,start_date,due_date,status,priority_level,assets_needed,estimated_hours,actual_hours,budget_usd,expense_usd,revision_count,approval_needed,approved_by,approval_date,risk_level,comments) VALUES (10001,'MatchHighlights','Video','Editing','MediaTeam','2025-04-28','2025-05-02','InProgress',1,'Clips,Audio','40','20',15000,8000,1,1,'EditorLead','2025-05-01','Medium','First cut completed');
INSERT INTO Digital_Content_Production_Schedule (content_id,title,content_type,production_phase,assigned_team,start_date,due_date,status,priority_level,assets_needed,estimated_hours,actual_hours,budget_usd,expense_usd,revision_count,approval_needed,approved_by,approval_date,risk_level,comments) VALUES (10002,'PlayerInterview','Audio','Recording','StudioTeam','2025-04-30','2025-05-04','Pending',2,'Microphone,Script','15','0',5000,0,0,0,NULL,NULL,'Low','Scheduled for next week');
INSERT INTO Digital_Content_Production_Schedule (content_id,title,content_type,production_phase,assigned_team,start_date,due_date,status,priority_level,assets_needed,estimated_hours,actual_hours,budget_usd,expense_usd,revision_count,approval_needed,approved_by,approval_date,risk_level,comments) VALUES (10003,'SeasonPreview','Graphic','Design','DesignTeam','2025-05-01','2025-05-10','Pending',3,'Templates,Images','30','0',8000,0,0,0,NULL,NULL,'Low','Awaiting creative brief');