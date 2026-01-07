-- Broadcast episode details for televised matches and related content
CREATE TABLE Broadcast_Episode_Details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_api_id INTEGER,
    episode_number INTEGER,
    broadcast_network TEXT,
    air_date TEXT,
    start_time TEXT,
    end_time TEXT,
    language TEXT,
    commentary_team TEXT,
    production_company TEXT,
    studio_location TEXT,
    segment_count INTEGER,
    highlights_duration INTEGER,
    replay_available TEXT,
    rating_average REAL,
    viewer_share REAL,
    ad_breaks INTEGER,
    ad_revenue REAL,
    streaming_platform TEXT,
    subtitle_available TEXT,
    closed_captions TEXT,
    video_quality TEXT,
    audio_tracks INTEGER,
    metadata_version TEXT
);

INSERT INTO Broadcast_Episode_Details (match_api_id,episode_number,broadcast_network,air_date,start_time,end_time,language,commentary_team,production_company,studio_location,segment_count,highlights_duration,replay_available,rating_average,viewer_share,ad_breaks,ad_revenue,streaming_platform,subtitle_available,closed_captions,video_quality,audio_tracks,metadata_version) VALUES (10001,1,'NetworkA','2025-03-15','18:00','20:45','English','TeamAlpha','ProdCoX','StudioOne',5,12,'Yes',7.8,15.2,3,250000,'StreamOne','Yes','Yes','HD',2,'v1');
INSERT INTO Broadcast_Episode_Details (match_api_id,episode_number,broadcast_network,air_date,start_time,end_time,language,commentary_team,production_company,studio_location,segment_count,highlights_duration,replay_available,rating_average,viewer_share,ad_breaks,ad_revenue,streaming_platform,subtitle_available,closed_captions,video_quality,audio_tracks,metadata_version) VALUES (10002,2,'NetworkB','2025-04-02','20:00','22:30','Spanish','TeamBeta','ProdCoY','StudioTwo',4,10,'No',6.5,12.8,2,180000,'StreamTwo','No','Yes','FullHD',1,'v2');
INSERT INTO Broadcast_Episode_Details (match_api_id,episode_number,broadcast_network,air_date,start_time,end_time,language,commentary_team,production_company,studio_location,segment_count,highlights_duration,replay_available,rating_average,viewer_share,ad_breaks,ad_revenue,streaming_platform,subtitle_available,closed_captions,video_quality,audio_tracks,metadata_version) VALUES (10003,3,'NetworkC','2025-05-10','16:30','19:00','French','TeamGamma','ProdCoZ','StudioThree',6,15,'Yes',8.2,18.0,4,320000,'StreamThree','Yes','No','4K',3,'v1');

-- Energy consumption logs per stadium per day
CREATE TABLE Stadium_Energy_Consumption_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    log_date TEXT,
    electricity_kwh REAL,
    gas_therms REAL,
    water_liters REAL,
    renewable_percentage REAL,
    peak_demand_kw REAL,
    avg_daily_temp_c REAL,
    humidity_percent REAL,
    lighting_kwh REAL,
    hvac_kwh REAL,
    kitchen_kwh REAL,
    office_kwh REAL,
    parking_lot_kwh REAL,
    scoreboard_kwh REAL,
    security_system_kwh REAL,
    wifi_infrastructure_kwh REAL,
    waste_water_treated_liters REAL,
    carbon_emission_tonnes REAL,
    energy_cost_usd REAL,
    notes TEXT,
    auditor_name TEXT,
    verified_flag TEXT,
    verification_date TEXT
);

INSERT INTO Stadium_Energy_Consumption_Logs (stadium_id,log_date,electricity_kwh,gas_therms,water_liters,renewable_percentage,peak_demand_kw,avg_daily_temp_c,humidity_percent,lighting_kwh,hvac_kwh,kitchen_kwh,office_kwh,parking_lot_kwh,scoreboard_kwh,security_system_kwh,wifi_infrastructure_kwh,waste_water_treated_liters,carbon_emission_tonnes,energy_cost_usd,notes,auditor_name,verified_flag,verification_date) VALUES (1,'2025-03-01',12500.5,320.0,85000.0,45.0,750.0,22.5,60.0,3000.0,5000.0,800.0,1200.0,600.0,150.0,200.0,400.0,5000.0,12.5,31000.0,'Normal day','AuditorA','Yes','2025-03-02');
INSERT INTO Stadium_Energy_Consumption_Logs (stadium_id,log_date,electricity_kwh,gas_therms,water_liters,renewable_percentage,peak_demand_kw,avg_daily_temp_c,humidity_percent,lighting_kwh,hvac_kwh,kitchen_kwh,office_kwh,parking_lot_kwh,scoreboard_kwh,security_system_kwh,wifi_infrastructure_kwh,waste_water_treated_liters,carbon_emission_tonnes,energy_cost_usd,notes,auditor_name,verified_flag,verification_date) VALUES (2,'2025-03-01',9800.0,210.5,73000.0,60.0,620.0,18.0,55.0,2500.0,4200.0,750.0,1000.0,500.0,130.0,180.0,350.0,4200.0,10.2,26000.0,'Cool evening','AuditorB','Yes','2025-03-02');
INSERT INTO Stadium_Energy_Consumption_Logs (stadium_id,log_date,electricity_kwh,gas_therms,water_liters,renewable_percentage,peak_demand_kw,avg_daily_temp_c,humidity_percent,lighting_kwh,hvac_kwh,kitchen_kwh,office_kwh,parking_lot_kwh,scoreboard_kwh,security_system_kwh,wifi_infrastructure_kwh,waste_water_treated_liters,carbon_emission_tonnes,energy_cost_usd,notes,auditor_name,verified_flag,verification_date) VALUES (3,'2025-03-01',14300.8,410.2,96000.0,30.0,820.0,25.0,70.0,3400.0,5600.0,950.0,1300.0,720.0,170.0,230.0,470.0,5800.0,14.8,35000.0,'High usage due to event','AuditorC','No','');

-- Social metrics for fan engagement across platforms
CREATE TABLE Fan_Engagement_Social_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    platform TEXT,
    metric_date TEXT,
    posts INTEGER,
    comments INTEGER,
    likes INTEGER,
    shares INTEGER,
    reactions INTEGER,
    video_views INTEGER,
    story_views INTEGER,
    live_stream_minutes INTEGER,
    hashtags_used INTEGER,
    mentions INTEGER,
    follower_change INTEGER,
    following_change INTEGER,
    impressions INTEGER,
    reach INTEGER,
    click_throughs INTEGER,
    sentiment_score REAL,
    engagement_rate REAL,
    demographic_age_group TEXT,
    demographic_region TEXT,
    device_type TEXT,
    notes TEXT
);

INSERT INTO Fan_Engagement_Social_Metrics (fan_id,platform,metric_date,posts,comments,likes,shares,reactions,video_views,story_views,live_stream_minutes,hashtags_used,mentions,follower_change,following_change,impressions,reach,click_throughs,sentiment_score,engagement_rate,demographic_age_group,demographic_region,device_type,notes) VALUES (101,'Twitter','2025-03-14',5,12,48,3,60,2000,0,0,4,2,15,-3,25000,18000,400,0.85,0.025,'18-24','Europe','Mobile','');
INSERT INTO Fan_Engagement_Social_Metrics (fan_id,platform,metric_date,posts,comments,likes,shares,reactions,video_views,story_views,live_stream_minutes,hashtags_used,mentions,follower_change,following_change,impressions,reach,click_throughs,sentiment_score,engagement_rate,demographic_age_group,demographic_region,device_type,notes) VALUES (102,'Instagram','2025-03-14',8,20,150,10,200,5000,300,30,12,5,25,-1,40000,30000,850,0.92,0.032,'25-34','NorthAmerica','Tablet','');
INSERT INTO Fan_Engagement_Social_Metrics (fan_id,platform,metric_date,posts,comments,likes,shares,reactions,video_views,story_views,live_stream_minutes,hashtags_used,mentions,follower_change,following_change,impressions,reach,click_throughs,sentiment_score,engagement_rate,demographic_age_group,demographic_region,device_type,notes) VALUES (103,'Facebook','2025-03-14',3,8,70,2,90,1500,0,0,3,1,10,-2,22000,16000,300,0.78,0.018,'35-44','Asia','Desktop','');

-- Records of scouting events organized by clubs
CREATE TABLE Team_Scouting_Event_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    event_name TEXT,
    event_date TEXT,
    location TEXT,
    invited_clubs INTEGER,
    invited_agents INTEGER,
    total_players INTEGER,
    age_min INTEGER,
    age_max INTEGER,
    positions_covered TEXT,
    average_rating REAL,
    top_player_api_id INTEGER,
    top_player_rating INTEGER,
    medical_screenings INTEGER,
    performance_tests INTEGER,
    video_analysis_hours REAL,
    scout_lead TEXT,
    sponsor_name TEXT,
    budget_usd REAL,
    expenses_usd REAL,
    attendance_estimate INTEGER,
    weather_conditions TEXT,
    notes TEXT,
    regulatory_approval TEXT,
    created_by TEXT
);

INSERT INTO Team_Scouting_Event_Records (team_id,event_name,event_date,location,invited_clubs,invited_agents,total_players,age_min,age_max,positions_covered,average_rating,top_player_api_id,top_player_rating,medical_screenings,performance_tests,video_analysis_hours,scout_lead,sponsor_name,budget_usd,expenses_usd,attendance_estimate,weather_conditions,notes,regulatory_approval,created_by) VALUES (10,'FutureStars Summit','2025-06-20','CityArena','5','3','45','16','21','GK,DF,MF,FW',78.2,25001,89,45,30,12.5,'JohnDoe','TechGear','200000','175000','1200','Clear','', 'Approved','AdminA');
INSERT INTO Team_Scouting_Event_Records (team_id,event_name,event_date,location,invited_clubs,invited_agents,total_players,age_min,age_max,positions_covered,average_rating,top_player_api_id,top_player_rating,medical_screenings,performance_tests,video_analysis_hours,scout_lead,sponsor_name,budget_usd,expenses_usd,attendance_estimate,weather_conditions,notes,regulatory_approval,created_by) VALUES (12,'Elite Talent Expo','2025-07-15','WestField','8','4','68','18','23','DF,MF,FW',82.5,27045,92,60,40,18.0,'EmilySmith','Sporty','300000','260000','1800','PartlyCloudy','', 'Pending','AdminB');
INSERT INTO Team_Scouting_Event_Records (team_id,event_name,event_date,location,invited_clubs,invited_agents,total_players,age_min,age_max,positions_covered,average_rating,top_player_api_id,top_player_rating,medical_screenings,performance_tests,video_analysis_hours,scout_lead,sponsor_name,budget_usd,expenses_usd,attendance_estimate,weather_conditions,notes,regulatory_approval,created_by) VALUES (14,'Global Scouting Day','2025-08-05','InternationalStadium','12','6','95','17','22','GK,DF,MF,FW',79.9,28510,88,80,55,22.3,'MichaelLee','GlobalSports','500000','440000','2500','Rain','', 'Approved','AdminC');

-- Records of player medical therapy sessions
CREATE TABLE Player_Medical_Therapy_Sessions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id INTEGER,
    session_date TEXT,
    therapist_name TEXT,
    therapy_type TEXT,
    duration_minutes INTEGER,
    focus_area TEXT,
    pain_level_before INTEGER,
    pain_level_after INTEGER,
    mobility_score_before INTEGER,
    mobility_score_after INTEGER,
    flexibility_score_before INTEGER,
    flexibility_score_after INTEGER,
    strength_score_before INTEGER,
    strength_score_after INTEGER,
    notes TEXT,
    follow_up_required TEXT,
    next_session_date TEXT,
    equipment_used TEXT,
    location TEXT,
    insurance_claim_id TEXT,
    approved_by TEXT,
    session_cost_usd REAL,
    reimbursement_status TEXT,
    created_timestamp TEXT
);

INSERT INTO Player_Medical_Therapy_Sessions (player_api_id,session_date,therapist_name,therapy_type,duration_minutes,focus_area,pain_level_before,pain_level_after,mobility_score_before,mobility_score_after,flexibility_score_before,flexibility_score_after,strength_score_before,strength_score_after,notes,follow_up_required,next_session_date,equipment_used,location,insurance_claim_id,approved_by,session_cost_usd,reimbursement_status,created_timestamp) VALUES (25001,'2025-02-10','DrAllen','Physio','45','Hamstring','7','3','55','78','60','85','40','65','Improved after massage','Yes','2025-02-17','MassageTable','ClubClinic','CLAIM123','MedicalHead','120.00','Pending','2025-02-10 09:00');
INSERT INTO Player_Medical_Therapy_Sessions (player_api_id,session_date,therapist_name,therapy_type,duration_minutes,focus_area,pain_level_before,pain_level_after,mobility_score_before,mobility_score_after,flexibility_score_before,flexibility_score_after,strength_score_before,strength_score_after,notes,follow_up_required,next_session_date,equipment_used,location,insurance_claim_id,approved_by,session_cost_usd,reimbursement_status,created_timestamp) VALUES (27045,'2025-03-05','MsBaker','Hydrotherapy','60','Ankle','5','2','70','90','80','95','50','80','Reduced swelling','No',NULL,'HydroPool','ClubRehab','CLAIM456','MedicalHead','150.00','Approved','2025-03-05 11:30');
INSERT INTO Player_Medical_Therapy_Sessions (player_api_id,session_date,therapist_name,therapy_type,duration_minutes,focus_area,pain_level_before,pain_level_after,mobility_score_before,mobility_score_after,flexibility_score_before,flexibility_score_after,strength_score_before,strength_score_after,notes,follow_up_required,next_session_date,equipment_used,location,insurance_claim_id,approved_by,session_cost_usd,reimbursement_status,created_timestamp) VALUES (28510,'2025-04-12','DrCarter','Massage','30','LowerBack','6','4','60','75','65','78','45','70','Minor tension relief','Yes','2025-04-19','MassageTable','ClubClinic','CLAIM789','MedicalHead','100.00','Pending','2025-04-12 14:15');

-- Partnerships between leagues and media organizations
CREATE TABLE League_Media_Partnerships (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    media_org_name TEXT,
    partnership_start DATE,
    partnership_end DATE,
    contract_value_usd REAL,
    broadcast_rights TEXT,
    digital_rights TEXT,
    exclusive_flag TEXT,
    region_covered TEXT,
    languages_supported TEXT,
    max_broadcast_hours INTEGER,
    annual_viewership_estimate INTEGER,
    ad_inventory_slots INTEGER,
    sponsorship_opportunities TEXT,
    renewal_option_years INTEGER,
    performance_bonus_usd REAL,
    termination_clause TEXT,
    contact_person TEXT,
    contact_email TEXT,
    notes TEXT,
    created_by TEXT,
    created_date DATE,
    last_modified_by TEXT,
    last_modified_date DATE
);

INSERT INTO League_Media_Partnerships (league_id,media_org_name,partnership_start,partnership_end,contract_value_usd,broadcast_rights,digital_rights,exclusive_flag,region_covered,languages_supported,max_broadcast_hours,annual_viewership_estimate,ad_inventory_slots,sponsorship_opportunities,renewal_option_years,performance_bonus_usd,termination_clause,contact_person,contact_email,notes,created_by,created_date,last_modified_by,last_modified_date) VALUES (3,'GlobalSportsNetwork','2024-01-01','2028-12-31',25000000,'TV','Online','Yes','Europe','English,Spanish',12000,25000000,500,'StadiumNaming,KitSponsor',2,500000,'ClauseA','AnnaLee','anna.lee@gsn.com','', 'AdminX','2024-01-01','AdminX','2024-01-01');
INSERT INTO League_Media_Partnerships (league_id,media_org_name,partnership_start,partnership_end,contract_value_usd,broadcast_rights,digital_rights,exclusive_flag,region_covered,languages_supported,max_broadcast_hours,annual_viewership_estimate,ad_inventory_slots,sponsorship_opportunities,renewal_option_years,performance_bonus_usd,termination_clause,contact_person,contact_email,notes,created_by,created_date,last_modified_by,last_modified_date) VALUES (5,'ContinentalLive','2025-06-15','2030-06-14',18000000,'TV','Streaming','No','Asia','Mandarin,English',15000,18000000,400,'OfficialBallSponsor',3,300000,'ClauseB','RaviKumar','ravi.kumar@cl.com','', 'AdminY','2025-06-15','AdminY','2025-06-15');
INSERT INTO League_Media_Partnerships (league_id,media_org_name,partnership_start,partnership_end,contract_value_usd,broadcast_rights,digital_rights,exclusive_flag,region_covered,languages_supported,max_broadcast_hours,annual_viewership_estimate,ad_inventory_slots,sponsorship_opportunities,renewal_option_years,performance_bonus_usd,termination_clause,contact_person,contact_email,notes,created_by,created_date,last_modified_by,last_modified_date) VALUES (7,'SportStreamPlus','2023-03-01','2027-02-28',30000000,'Cable','Online','Yes','NorthAmerica','English,French',20000,35000000,800,'ArenaSponsor',1,750000,'ClauseC','LauraMills','laura.mills@ssp.com','', 'AdminZ','2023-03-01','AdminZ','2023-03-01');

-- Maintenance logs for club infrastructure assets
CREATE TABLE Club_Infrastructure_Maintenance (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    asset_type TEXT,
    asset_id TEXT,
    maintenance_date TEXT,
    maintenance_type TEXT,
    vendor_name TEXT,
    cost_usd REAL,
    downtime_hours REAL,
    technician_name TEXT,
    severity_level TEXT,
    parts_replaced TEXT,
    warranty_covered TEXT,
    notes TEXT,
    next_scheduled_date TEXT,
    compliance_status TEXT,
    created_by TEXT,
    created_timestamp TEXT,
    approved_by TEXT,
    approval_timestamp TEXT,
    location_description TEXT,
    maintenance_status TEXT,
    priority TEXT,
    risk_assessment TEXT,
    follow_up_required TEXT
);

INSERT INTO Club_Infrastructure_Maintenance (club_id,asset_type,asset_id,maintenance_date,maintenance_type,vendor_name,cost_usd,downtime_hours,technician_name,severity_level,parts_replaced,warranty_covered,notes,next_scheduled_date,compliance_status,created_by,created_timestamp,approved_by,approval_timestamp,location_description,maintenance_status,priority,risk_assessment,follow_up_required) VALUES (1,'HVAC','HVAC-01','2025-02-20','Preventive','CoolTech','2500.00','2','MikeJordan','Low','Filter,Motor','Yes','Routine filter change','2025-08-20','Compliant','AdminA','2025-02-20 08:00','ManagerA','2025-02-20 10:00','MainStadiumNorthWing','Completed','Medium','Low','No');
INSERT INTO Club_Infrastructure_Maintenance (club_id,asset_type,asset_id,maintenance_date,maintenance_type,vendor_name,cost_usd,downtime_hours,technician_name,severity_level,parts_replaced,warranty_covered,notes,next_scheduled_date,compliance_status,created_by,created_timestamp,approved_by,approval_timestamp,location_description,maintenance_status,priority,risk_assessment,follow_up_required) VALUES (2,'Lighting','LGT-12','2025-03-05','Repair','BrightLightsCo','4800.00','5','SaraLee','High','LEDPanel','No','Section 12 flickering','2025-09-05','NonCompliant','AdminB','2025-03-05 09:30','ManagerB','2025-03-05 11:45','EastStadiumLighting','InProgress','High','High','Yes');
INSERT INTO Club_Infrastructure_Maintenance (club_id,asset_type,asset_id,maintenance_date,maintenance_type,vendor_name,cost_usd,downtime_hours,technician_name,severity_level,parts_replaced,warranty_covered,notes,next_scheduled_date,compliance_status,created_by,created_timestamp,approved_by,approval_timestamp,location_description,maintenance_status,priority,risk_assessment,follow_up_required) VALUES (3,'SecurityCamera','SEC-07','2025-04-12','Upgrade','SecureVision','7200.00','3','TomNguyen','Medium','CameraBody','Yes','Upgrade to 4K','2025-10-12','Compliant','AdminC','2025-04-12 07:45','ManagerC','2025-04-12 09:00','NorthGate','Scheduled','Medium','Medium','No');

-- Advanced match statistical metrics
CREATE TABLE Match_Statistical_Advanced_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    team_api_id INTEGER,
    possession_percent REAL,
    pass_accuracy_percent REAL,
    total_passes INTEGER,
    progressive_passes INTEGER,
    expected_goals REAL,
    expected_assists REAL,
    xg_chain_length REAL,
    pressing_actions INTEGER,
    high_intensity_distance_km REAL,
    low_intensity_distance_km REAL,
    duels_won INTEGER,
    duels_lost INTEGER,
    aerial_duels_won INTEGER,
    aerial_duels_lost INTEGER,
    progressive_carry_meters REAL,
    final_third_crosses INTEGER,
    shots_on_target INTEGER,
    shots_off_target INTEGER,
    blocked_shots INTEGER,
    deep_completions INTEGER,
    key_passes INTEGER,
    big_chances_created INTEGER,
    ball_recoveries INTEGER,
    defensive_actions INTEGER,
    offensive_actions INTEGER,
    goal_contributions_real INTEGER,
    goal_contributions_expected REAL,
    fouls_committed INTEGER,
    offsides INTEGER,
    VAR_decisions TEXT,
    match_summary TEXT,
    analyst_notes TEXT,
    created_timestamp TEXT,
    created_by TEXT,
    last_updated_timestamp TEXT,
    last_updated_by TEXT
);

INSERT INTO Match_Statistical_Advanced_Metrics (match_id,team_api_id,possession_percent,pass_accuracy_percent,total_passes,progressive_passes,expected_goals,expected_assists,xg_chain_length,pressing_actions,high_intensity_distance_km,low_intensity_distance_km,duels_won,duels_lost,aerial_duels_won,aerial_duels_lost,progressive_carry_meters,final_third_crosses,shots_on_target,shots_off_target,blocked_shots,deep_completions,key_passes,big_chances_created,ball_recoveries,defensive_actions,offensive_actions,goal_contributions_real,goal_contributions_expected,fouls_committed,offsides,VAR_decisions,match_summary,analyst_notes,created_timestamp,created_by,last_updated_timestamp,last_updated_by) VALUES (10001,2001,56.3,84.5,678,210,1.85,0.98,3.4,120,4.2,1.5,85,30,22,15,540.0,18,7,4,2,9,12,5,23,45,30,2,1.85,12,3,'No','Home team dominated possession','Good build‑up play','2025-03-15 10:00','AnalystA','2025-03-15 12:30','AnalystB');
INSERT INTO Match_Statistical_Advanced_Metrics (match_id,team_api_id,possession_percent,pass_accuracy_percent,total_passes,progressive_passes,expected_goals,expected_assists,xg_chain_length,pressing_actions,high_intensity_distance_km,low_intensity_distance_km,duels_won,duels_lost,aerial_duels_won,aerial_duels_lost,progressive_carry_meters,final_third_crosses,shots_on_target,shots_off_target,blocked_shots,deep_completions,key_passes,big_chances_created,ball_recoveries,defensive_actions,offensive_actions,goal_contributions_real,goal_contributions_expected,fouls_committed,offsides,VAR_decisions,match_summary,analyst_notes,created_timestamp,created_by,last_updated_timestamp,last_updated_by) VALUES (10002,2002,48.7,78.2,590,170,1.20,0.65,2.1,95,3.8,1.2,70,40,18,22,460.0,22,5,6,3,7,9,8,30,50,35,1,1.20,14,5,'Yes','Away team created more chances','Need to improve defensive shape','2025-04-02 11:00','AnalystC','2025-04-02 13:45','AnalystD');
INSERT INTO Match_Statistical_Advanced_Metrics (match_id,team_api_id,possession_percent,pass_accuracy_percent,total_passes,progressive_passes,expected_goals,expected_assists,xg_chain_length,pressing_actions,high_intensity_distance_km,low_intensity_distance_km,duels_won,duels_lost,aerial_duels_won,aerial_duels_lost,progressive_carry_meters,final_third_crosses,shots_on_target,shots_off_target,blocked_shots,deep_completions,key_passes,big_chances_created,ball_recoveries,defensive_actions,offensive_actions,goal_contributions_real,goal_contributions_expected,fouls_committed,offsides,VAR_decisions,match_summary,analyst_notes,created_timestamp,created_by,last_updated_timestamp,last_updated_by) VALUES (10003,2003,52.0,81.0,630,190,1.50,0.80,2.8,110,4.0,1.4,78,35,20,18,500.0,20,6,5,4,8,10,6,27,48,33,3,1.50,13,4,'No','Balanced match with few chances','Work on transition speed','2025-05-10 09:30','AnalystE','2025-05-10 12:00','AnalystF');

-- Travel logistics documents associated with team trips
CREATE TABLE Travel_Logistics_Documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    trip_id INTEGER,
    document_type TEXT,
    document_number TEXT,
    issue_date TEXT,
    expiry_date TEXT,
    issuing_authority TEXT,
    holder_name TEXT,
    holder_passport_number TEXT,
    holder_nationality TEXT,
    travel_route TEXT,
    departure_airport TEXT,
    arrival_airport TEXT,
    airline TEXT,
    flight_number TEXT,
    seat_assignment TEXT,
    accommodation_name TEXT,
    accommodation_address TEXT,
    check_in_date TEXT,
    check_out_date TEXT,
    transport_mode TEXT,
    transport_details TEXT,
    health_clearance TEXT,
    insurance_policy_number TEXT,
    notes TEXT,
    created_by TEXT,
    created_timestamp TEXT,
    approved_by TEXT,
    approved_timestamp TEXT,
    document_status TEXT,
    attachment_path TEXT,
    last_modified_by TEXT,
    last_modified_timestamp TEXT
);

INSERT INTO Travel_Logistics_Documents (team_id,trip_id,document_type,document_number,issue_date,expiry_date,issuing_authority,holder_name,holder_passport_number,holder_nationality,travel_route,departure_airport,arrival_airport,airline,flight_number,seat_assignment,accommodation_name,accommodation_address,check_in_date,check_out_date,transport_mode,transport_details,health_clearance,insurance_policy_number,notes,created_by,created_timestamp,approved_by,approved_timestamp,document_status,attachment_path,last_modified_by,last_modified_timestamp) VALUES (1,301,'Passport','P1234567','2023-01-01','2033-01-01','GovAgency','JohnDoe','X12345678','CountryA','Europe Tour','JFK','LHR','AirWorld','AW123','12A','HotelLondon','123 London St','2025-06-01','2025-06-10','Bus','TeamBusCo','Clear','INS001','', 'AdminTravel','2025-03-01 08:00','ManagerTravel','2025-03-02 09:15','Valid','/docs/passport_johndoe.pdf','AdminTravel','2025-03-02 09:20');
INSERT INTO Travel_Logistics_Documents (team_id,trip_id,document_type,document_number,issue_date,expiry_date,issuing_authority,holder_name,holder_passport_number,holder_nationality,travel_route,departure_airport,arrival_airport,airline,flight_number,seat_assignment,accommodation_name,accommodation_address,check_in_date,check_out_date,transport_mode,transport_details,health_clearance,insurance_policy_number,notes,created_by,created_timestamp,approved_by,approved_timestamp,document_status,attachment_path,last_modified_by,last_modified_timestamp) VALUES (2,302,'Visa','V9876543','2024-06-15','2025-06-30','Consulate','MikeSmith','Y87654321','CountryB','Asia Tour','LHR','NRT','SkyFly','SF456','22C','TokyoInn','45 Shibuya Rd','2025-07-05','2025-07-15','Train','JRExpress','Clear','INS002','', 'AdminTravel','2025-03-10 10:30','ManagerTravel','2025-03-11 11:45','Valid','/docs/visa_mikesmith.pdf','AdminTravel','2025-03-11 12:00');
INSERT INTO Travel_Logistics_Documents (team_id,trip_id,document_type,document_number,issue_date,expiry_date,issuing_authority,holder_name,holder_passport_number,holder_nationality,travel_route,departure_airport,arrival_airport,airline,flight_number,seat_assignment,accommodation_name,accommodation_address,check_in_date,check_out_date,transport_mode,transport_details,health_clearance,insurance_policy_number,notes,created_by,created_timestamp,approved_by,approved_timestamp,document_status,attachment_path,last_modified_by,last_modified_timestamp) VALUES (3,303,'HealthCertificate','HC555777','2025-02-01','2025-08-01','HealthDept','LauraKim','Z55577788','CountryC','SouthAmerica Tour','GRU','EZE','FlyHigh','FH789','5B','BuenosAiresHotel','78 Avenida 9','2025-08-20','2025-08-30','Car','RentalCo','Clear','INS003','', 'AdminTravel','2025-03-20 14:00','ManagerTravel','2025-03-21 15:10','Valid','/docs/health_laura.pdf','AdminTravel','2025-03-21 15:15');

-- Digital content creation projects for club media
CREATE TABLE Digital_Content_Creation_Projects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    project_name TEXT,
    project_type TEXT,
    start_date TEXT,
    end_date TEXT,
    budget_usd REAL,
    allocated_hours INTEGER,
    lead_producer TEXT,
    creative_director TEXT,
    main_editor TEXT,
    platform_target TEXT,
    content_format TEXT,
    story_theme TEXT,
    target_audience TEXT,
    key_message TEXT,
    assets_required TEXT,
    external_agency TEXT,
    agency_contact TEXT,
    status TEXT,
    progress_percent REAL,
    risk_level TEXT,
    approval_required TEXT,
    approved_by TEXT,
    approval_date TEXT,
    notes TEXT,
    created_by TEXT,
    created_timestamp TEXT,
    last_updated_by TEXT,
    last_updated_timestamp TEXT,
    deliverable_link TEXT,
    archived_flag TEXT
);

INSERT INTO Digital_Content_Creation_Projects (project_name,project_type,start_date,end_date,budget_usd,allocated_hours,lead_producer,creative_director,main_editor,platform_target,content_format,story_theme,target_audience,key_message,assets_required,external_agency,agency_contact,status,progress_percent,risk_level,approval_required,approved_by,approval_date,notes,created_by,created_timestamp,last_updated_by,last_updated_timestamp,deliverable_link,archived_flag) VALUES ('Season_Opening_Campaign','Video','2025-07-01','2025-07-31',150000,800,'AnnaLee','MikeRogers','SamT','YouTube','ShortFilm','TeamSpirit','Fans','Support the club','Footage,Graphics','CreativeHub','LisaM','InProgress',45.0,'Medium','Yes','GM','2025-06-20','Initial storyboard approved','AdminCM','2025-06-15 09:00','AdminCM','2025-07-10 14:30','/deliverables/seasonopen.mp4','No');
INSERT INTO Digital_Content_Creation_Projects (project_name,project_type,start_date,end_date,budget_usd,allocated_hours,lead_producer,creative_director,main_editor,platform_target,content_format,story_theme,target_audience,key_message,assets_required,external_agency,agency_contact,status,progress_percent,risk_level,approval_required,approved_by,approval_date,notes,created_by,created_timestamp,last_updated_by,last_updated_timestamp,deliverable_link,archived_flag) VALUES ('Player_Profile_Series','Photo','2025-08-10','2025-09-15',80000,500,'JohnSmith','EmilyWhite','KarenV','Instagram','Carousel','PlayerJourney','Fans','Inspire with personal stories','Photos,Interviews','PhotoWorks','TomK','Planned',0.0,'Low','No',NULL,NULL,'Awaiting kickoff','AdminCM','2025-08-01 10:15','AdminCM','2025-08-01 10:20','/deliverables/playerprofiles/','No');
INSERT INTO Digital_Content_Creation_Projects (project_name,project_type,start_date,end_date,budget_usd,allocated_hours,lead_producer,creative_director,main_editor,platform_target,content_format,story_theme,target_audience,key_message,assets_required,external_agency,agency_contact,status,progress_percent,risk_level,approval_required,approved_by,approval_date,notes,created_by,created_timestamp,last_updated_by,last_updated_timestamp,deliverable_link,archived_flag) VALUES ('Community_Outreach_Doc','Documentary','2025-09-01','2025-10-20',120000,650,'SaraK','DavidL','MikeN','ClubWebsite','LongForm','CommunityImpact','Local Residents','Show club commitment','Video,Interviews','DocuMedia','AmyP','InProgress',30.0,'Medium','Yes','Director','2025-08-25','Filming in progress','AdminCM','2025-08-10 08:45','AdminCM','2025-09-05 16:00','/deliverables/community_outreach.pdf','No');