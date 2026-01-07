-- Stadium access control log
CREATE TABLE Stadium_Access_Log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    date TEXT,
    gate_number INTEGER,
    turnstile_id INTEGER,
    access_type TEXT,
    staff_id INTEGER,
    badge_id TEXT,
    entry_time TEXT,
    exit_time TEXT,
    temperature_check REAL,
    facial_recognition_score REAL,
    security_level INTEGER,
    incident_flag INTEGER,
    notes TEXT,
    shift_id INTEGER,
    device_serial TEXT,
    ip_address TEXT,
    camera_id INTEGER,
    verification_method TEXT,
    access_duration_seconds INTEGER,
    emergency_override INTEGER,
    device_battery_percent REAL,
    backup_power_status TEXT,
    maintenance_date TEXT,
    last_service_by TEXT
);

INSERT INTO Stadium_Access_Log (stadium_id, date, gate_number, turnstile_id, access_type, staff_id, badge_id, entry_time, exit_time, temperature_check, facial_recognition_score, security_level, incident_flag, notes, shift_id, device_serial, ip_address, camera_id, verification_method, access_duration_seconds, emergency_override, device_battery_percent, backup_power_status, maintenance_date, last_service_by)
VALUES (1,'2023-01-01',12,101,'entry',2001,'B123','08:00','08:05',36.5,0.98,3,0,'none',1,'DS001','192168001','C01','rfid',300,0,85.0,'ok','2023-06-01','tech1');

INSERT INTO Stadium_Access_Log (stadium_id, date, gate_number, turnstile_id, access_type, staff_id, badge_id, entry_time, exit_time, temperature_check, facial_recognition_score, security_level, incident_flag, notes, shift_id, device_serial, ip_address, camera_id, verification_method, access_duration_seconds, emergency_override, device_battery_percent, backup_power_status, maintenance_date, last_service_by)
VALUES (2,'2023-02-15',5,202,'exit',2002,'B124','17:30','17:35',35.9,0.95,2,1,'alarm',2,'DS002','192168002','C02','biometric',250,1,78.5,'low','2023-07-10','tech2');

INSERT INTO Stadium_Access_Log (stadium_id, date, gate_number, turnstile_id, access_type, staff_id, badge_id, entry_time, exit_time, temperature_check, facial_recognition_score, security_level, incident_flag, notes, shift_id, device_serial, ip_address, camera_id, verification_method, access_duration_seconds, emergency_override, device_battery_percent, backup_power_status, maintenance_date, last_service_by)
VALUES (3,'2023-03-20',9,303,'entry',2003,'B125','09:15','09:20',36.2,0.99,4,0,'none',3,'DS003','192168003','C03','rfid',320,0,90.0,'ok','2023-08-05','tech3');

-- Team sponsorship influence details
CREATE TABLE Team_Sponsorship_Influence (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    sponsor_id INTEGER,
    contract_start_date TEXT,
    contract_end_date TEXT,
    financial_contribution REAL,
    branding_visibility_score REAL,
    social_media_impressions INTEGER,
    stadium_ad_space INTEGER,
    jersey_ad_space INTEGER,
    digital_ad_space INTEGER,
    community_program_funding REAL,
    exclusive_rights_flag INTEGER,
    activation_events INTEGER,
    market_region TEXT,
    target_audience TEXT,
    performance_bonus REAL,
    renewal_option_flag INTEGER,
    legal_review_date TEXT,
    compliance_status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Team_Sponsorship_Influence (team_id, sponsor_id, contract_start_date, contract_end_date, financial_contribution, branding_visibility_score, social_media_impressions, stadium_ad_space, jersey_ad_space, digital_ad_space, community_program_funding, exclusive_rights_flag, activation_events, market_region, target_audience, performance_bonus, renewal_option_flag, legal_review_date, compliance_status, notes, created_at, updated_at)
VALUES (10,100,'2022-07-01','2025-06-30',5000000,85.5,1200000,4,2,3,250000,1,12,'europe','young_adults',250000,1,'2022-06-15','compliant','first_phase','2022-07-01','2022-07-01');

INSERT INTO Team_Sponsorship_Influence (team_id, sponsor_id, contract_start_date, contract_end_date, financial_contribution, branding_visibility_score, social_media_impressions, stadium_ad_space, jersey_ad_space, digital_ad_space, community_program_funding, exclusive_rights_flag, activation_events, market_region, target_audience, performance_bonus, renewal_option_flag, legal_review_date, compliance_status, notes, created_at, updated_at)
VALUES (11,101,'2023-01-01','2026-12-31',3000000,78.0,900000,3,1,2,150000,0,8,'asia','families',150000,0,'2022-12-20','pending','second_phase','2023-01-01','2023-01-01');

INSERT INTO Team_Sponsorship_Influence (team_id, sponsor_id, contract_start_date, contract_end_date, financial_contribution, branding_visibility_score, social_media_impressions, stadium_ad_space, jersey_ad_space, digital_ad_space, community_program_funding, exclusive_rights_flag, activation_events, market_region, target_audience, performance_bonus, renewal_option_flag, legal_review_date, compliance_status, notes, created_at, updated_at)
VALUES (12,102,'2021-05-15','2024-05-14',7500000,92.3,2000000,5,3,4,500000,1,20,'south_america','teenagers',500000,1,'2021-04-30','compliant','major_partner','2021-05-15','2021-05-15');

-- Player academy history records
CREATE TABLE Player_Academy_History (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    academy_name TEXT,
    join_date TEXT,
    graduate_date TEXT,
    academy_country TEXT,
    coaching_staff_id INTEGER,
    training_program TEXT,
    skill_development_score REAL,
    education_level TEXT,
    scholarship_amount REAL,
    contract_offer_flag INTEGER,
    loan_spell_flag INTEGER,
    injury_history_flag INTEGER,
    matches_played INTEGER,
    goals_scored INTEGER,
    assists INTEGER,
    average_rating REAL,
    scouting_report TEXT,
    next_club_suggested TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT
);

INSERT INTO Player_Academy_History (player_id, academy_name, join_date, graduate_date, academy_country, coaching_staff_id, training_program, skill_development_score, education_level, scholarship_amount, contract_offer_flag, loan_spell_flag, injury_history_flag, matches_played, goals_scored, assists, average_rating, scouting_report, next_club_suggested, created_at, updated_at, notes)
VALUES (5001,'AlphaAcademy','2015-09-01','2019-06-30','Spain',3001,'technique_focus',88.5,'high_school',20000,1,0,0,120,30,25,7.2,'high_potential','ClubA','2020-01-01','2020-01-01','promoted');

INSERT INTO Player_Academy_History (player_id, academy_name, join_date, graduate_date, academy_country, coaching_staff_id, training_program, skill_development_score, education_level, scholarship_amount, contract_offer_flag, loan_spell_flag, injury_history_flag, matches_played, goals_scored, assists, average_rating, scouting_report, next_club_suggested, created_at, updated_at, notes)
VALUES (5002,'BetaFC_Youth','2016-08-15','2020-05-20','Germany',3002,'defensive_tactics',81.3,'bachelor',15000,0,1,0,95,5,12,6.5,'solid_defender','ClubB','2021-02-10','2021-02-10','loaned');

INSERT INTO Player_Academy_History (player_id, academy_name, join_date, graduate_date, academy_country, coaching_staff_id, training_program, skill_development_score, education_level, scholarship_amount, contract_offer_flag, loan_spell_flag, injury_history_flag, matches_played, goals_scored, assists, average_rating, scouting_report, next_club_suggested, created_at, updated_at, notes)
VALUES (5003,'GammaSportsAcademy','2014-07-01','2018-04-30','France',3003,'physical_training',84.0,'high_school',18000,1,0,1,110,20,18,7.0,'fast_winger','ClubC','2019-09-05','2019-09-05','injury_recent');

-- League media partner configurations
CREATE TABLE League_Media_Partners (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    partner_name TEXT,
    partnership_start_date TEXT,
    partnership_end_date TEXT,
    broadcast_type TEXT,
    coverage_regions TEXT,
    contract_value REAL,
    exclusivity_flag INTEGER,
    digital_platforms TEXT,
    tv_channels TEXT,
    radio_stations TEXT,
    social_media_channels TEXT,
    branding_assets TEXT,
    audience_reach INTEGER,
    viewership_rating REAL,
    ad_slots INTEGER,
    renewal_option_flag INTEGER,
    performance_bonus REAL,
    compliance_audit_date TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO League_Media_Partners (league_id, partner_name, partnership_start_date, partnership_end_date, broadcast_type, coverage_regions, contract_value, exclusivity_flag, digital_platforms, tv_channels, radio_stations, social_media_channels, branding_assets, audience_reach, viewership_rating, ad_slots, renewal_option_flag, performance_bonus, compliance_audit_date, notes, created_at, updated_at)
VALUES (1,'GlobalSportsNet','2020-01-01','2025-12-31','tv','worldwide',12000000,1,'streamX,streamY','ChannelA,ChannelB','RadioOne','FB,IG','logo1,logo2',5000000,8.5,200,1,500000,'2024-06-01','primary_partner','2020-01-01','2020-01-01');

INSERT INTO League_Media_Partners (league_id, partner_name, partnership_start_date, partnership_end_date, broadcast_type, coverage_regions, contract_value, exclusivity_flag, digital_platforms, tv_channels, radio_stations, social_media_channels, branding_assets, audience_reach, viewership_rating, ad_slots, renewal_option_flag, performance_bonus, compliance_audit_date, notes, created_at, updated_at)
VALUES (2,'EuroBroadcast','2021-03-15','2026-03-14','digital','europe',8000000,0,'streamZ','ChannelC','RadioTwo','TW,YT','logo3',3000000,7.2,150,0,300000,'2025-09-15','secondary_partner','2021-03-15','2021-03-15');

INSERT INTO League_Media_Partners (league_id, partner_name, partnership_start_date, partnership_end_date, broadcast_type, coverage_regions, contract_value, exclusivity_flag, digital_platforms, tv_channels, radio_stations, social_media_channels, branding_assets, audience_reach, viewership_rating, ad_slots, renewal_option_flag, performance_bonus, compliance_audit_date, notes, created_at, updated_at)
VALUES (3,'AsiaLiveMedia','2022-07-01','2027-06-30','tv','asia',6000000,1,'streamA,streamB','ChannelD','RadioThree','FB,IG,TT','logo4',4000000,6.9,180,1,250000,'2026-02-01','regional_leader','2022-07-01','2022-07-01');

-- Match commentary translation metadata
CREATE TABLE Match_Commentary_Translations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    language_code TEXT,
    translator_id INTEGER,
    translation_start_date TEXT,
    translation_end_date TEXT,
    word_count INTEGER,
    quality_score REAL,
    audio_file_path TEXT,
    subtitle_file_path TEXT,
    verification_status INTEGER,
    remarks TEXT,
    created_at TEXT,
    updated_at TEXT,
    version_number INTEGER,
    source_text_checksum TEXT,
    target_text_checksum TEXT,
    translation_fee REAL,
    approval_manager_id INTEGER,
    delivery_method TEXT
);

INSERT INTO Match_Commentary_Translations (match_id, language_code, translator_id, translation_start_date, translation_end_date, word_count, quality_score, audio_file_path, subtitle_file_path, verification_status, remarks, created_at, updated_at, version_number, source_text_checksum, target_text_checksum, translation_fee, approval_manager_id, delivery_method)
VALUES (1001,'es',501,'2023-04-01','2023-04-02',25000,0.96,'audio_es_1001.mp3','sub_es_1001.srt',1,'approved','2023-04-02','2023-04-02',1,'abc123','def456',5000,801,'online');

INSERT INTO Match_Commentary_Translations (match_id, language_code, translator_id, translation_start_date, translation_end_date, word_count, quality_score, audio_file_path, subtitle_file_path, verification_status, remarks, created_at, updated_at, version_number, source_text_checksum, target_text_checksum, translation_fee, approval_manager_id, delivery_method)
VALUES (1002,'fr',502,'2023-05-10','2023-05-11',26000,0.94,'audio_fr_1002.mp3','sub_fr_1002.srt',1,'approved','2023-05-11','2023-05-11',1,'ghi789','jkl012',5200,802,'online');

INSERT INTO Match_Commentary_Translations (match_id, language_code, translator_id, translation_start_date, translation_end_date, word_count, quality_score, audio_file_path, subtitle_file_path, verification_status, remarks, created_at, updated_at, version_number, source_text_checksum, target_text_checksum, translation_fee, approval_manager_id, delivery_method)
VALUES (1003,'de',503,'2023-06-20','2023-06-21',25500,0.97,'audio_de_1003.mp3','sub_de_1003.srt',1,'approved','2023-06-21','2023-06-21',1,'mno345','pqr678',5300,803,'online');

-- Club utility billing records
CREATE TABLE Club_Utility_Billing (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    utility_type TEXT,
    billing_period TEXT,
    consumption_units REAL,
    unit_cost REAL,
    total_amount REAL,
    due_date TEXT,
    payment_status INTEGER,
    meter_serial TEXT,
    reading_date TEXT,
    provider_name TEXT,
    contract_start_date TEXT,
    contract_end_date TEXT,
    peak_demand REAL,
    off_peak_discount REAL,
    late_fee REAL,
    adjustment_amount REAL,
    comments TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Club_Utility_Billing (club_id, utility_type, billing_period, consumption_units, unit_cost, total_amount, due_date, payment_status, meter_serial, reading_date, provider_name, contract_start_date, contract_end_date, peak_demand, off_peak_discount, late_fee, adjustment_amount, comments, created_at, updated_at)
VALUES (10,'electricity','2023-01',12000.5,0.15,1800.75,'2023-02-15',0,'MTR001','2023-01-31','EnergyCo','2020-01-01','2025-12-31',450.0,5.0,0,0,'on_time','2023-02-01','2023-02-01');

INSERT INTO Club_Utility_Billing (club_id, utility_type, billing_period, consumption_units, unit_cost, total_amount, due_date, payment_status, meter_serial, reading_date, provider_name, contract_start_date, contract_end_date, peak_demand, off_peak_discount, late_fee, adjustment_amount, comments, created_at, updated_at)
VALUES (11,'water','2023-02',8000.0,0.10,800.0,'2023-03-15',1,'MTR002','2023-02-28','WaterSupplyInc','2021-04-01','2026-03-31',300.0,3.0,25.0,-20.0,'late_payment','2023-03-01','2023-03-01');

INSERT INTO Club_Utility_Billing (club_id, utility_type, billing_period, consumption_units, unit_cost, total_amount, due_date, payment_status, meter_serial, reading_date, provider_name, contract_start_date, contract_end_date, peak_demand, off_peak_discount, late_fee, adjustment_amount, comments, created_at, updated_at)
VALUES (12,'gas','2023-03',5000.0,0.08,400.0,'2023-04-10',0,'MTR003','2023-03-31','GasCo','2019-07-01','2024-06-30',250.0,2.5,0,0,'on_time','2023-04-01','2023-04-01');

-- Fan digital engagement channel details
CREATE TABLE Fan_Digital_Engagement_Channels (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    channel_name TEXT,
    platform_type TEXT,
    registration_date TEXT,
    last_active_date TEXT,
    total_posts INTEGER,
    total_likes INTEGER,
    total_shares INTEGER,
    avg_engagement_score REAL,
    verified_flag INTEGER,
    follower_count INTEGER,
    following_count INTEGER,
    bio TEXT,
    url TEXT,
    notification_enabled INTEGER,
    privacy_setting TEXT,
    ad_opt_in INTEGER,
    content_category TEXT,
    engagement_trend TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Fan_Digital_Engagement_Channels (fan_id, channel_name, platform_type, registration_date, last_active_date, total_posts, total_likes, total_shares, avg_engagement_score, verified_flag, follower_count, following_count, bio, url, notification_enabled, privacy_setting, ad_opt_in, content_category, engagement_trend, notes, created_at, updated_at)
VALUES (2001,'FanHub1','social','2022-01-10','2023-12-20',350,1200,80,3.4,1,5000,300,'loyal_fan','http://fanhub1.com',1,'public',1,'sports','upward','active_user','2022-01-10','2022-01-10');

INSERT INTO Fan_Digital_Engagement_Channels (fan_id, channel_name, platform_type, registration_date, last_active_date, total_posts, total_likes, total_shares, avg_engagement_score, verified_flag, follower_count, following_count, bio, url, notification_enabled, privacy_setting, ad_opt_in, content_category, engagement_trend, notes, created_at, updated_at)
VALUES (2002,'MatchTalk','forum','2021-05-05','2023-11-15',200,800,50,2.9,0,3000,150,'match_discussions','http://matchtalk.com',1,'private',0,'analysis','stable','regular_contributor','2021-05-05','2021-05-05');

INSERT INTO Fan_Digital_Engagement_Channels (fan_id, channel_name, platform_type, registration_date, last_active_date, total_posts, total_likes, total_shares, avg_engagement_score, verified_flag, follower_count, following_count, bio, url, notification_enabled, privacy_setting, ad_opt_in, content_category, engagement_trend, notes, created_at, updated_at)
VALUES (2003,'GoalPics','media','2023-02-20','2023-12-01',150,2000,300,4.1,1,8000,500,'photo_sharing','http://goalpics.com',1,'public',1,'highlights','upward','content_creator','2023-02-20','2023-02-20');

-- Trainer certification records
CREATE TABLE Trainer_Certification_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    trainer_id INTEGER,
    certification_name TEXT,
    issuing_body TEXT,
    issue_date TEXT,
    expiry_date TEXT,
    credential_id TEXT,
    level INTEGER,
    specialization TEXT,
    renewal_required INTEGER,
    last_renewal_date TEXT,
    continuing_education_hours INTEGER,
    status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    audit_score REAL,
    compliance_flag INTEGER,
    audit_date TEXT,
    reviewer_id INTEGER
);

INSERT INTO Trainer_Certification_Records (trainer_id, certification_name, issuing_body, issue_date, expiry_date, credential_id, level, specialization, renewal_required, last_renewal_date, continuing_education_hours, status, notes, created_at, updated_at, audit_score, compliance_flag, audit_date, reviewer_id)
VALUES (4001,'UEFA_Level_A','UEFA','2020-03-01','2025-02-28','CRD001',3,'tactics',1,'2024-03-01',40,'active','annual_review','2020-03-01','2020-03-01',92.5,1,'2024-03-02',9001);

INSERT INTO Trainer_Certification_Records (trainer_id, certification_name, issuing_body, issue_date, expiry_date, credential_id, level, specialization, renewal_required, last_renewal_date, continuing_education_hours, status, notes, created_at, updated_at, audit_score, compliance_flag, audit_date, reviewer_id)
VALUES (4002,'Coaching_Badge_II','NationalFA','2018-07-15','2023-07-14','CRD002',2,'fitness',1,'2022-07-15',30,'active','renewal_pending','2018-07-15','2018-07-15',88.0,0,'2022-07-16',9002);

INSERT INTO Trainer_Certification_Records (trainer_id, certification_name, issuing_body, issue_date, expiry_date, credential_id, level, specialization, renewal_required, last_renewal_date, continuing_education_hours, status, notes, created_at, updated_at, audit_score, compliance_flag, audit_date, reviewer_id)
VALUES (4003,'Sports_Med_Cert','SportsMedOrg','2019-11-01','2024-10-31','CRD003',1,'injury_prevention',0,NULL,20,'active','no_renewal_needed','2019-11-01','2019-11-01',95.0,1,'2023-09-30',9003);

-- Medical equipment inventory for clubs
CREATE TABLE Medical_Equipment_Inventory (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    equipment_name TEXT,
    equipment_type TEXT,
    serial_number TEXT,
    purchase_date TEXT,
    warranty_expiry TEXT,
    cost REAL,
    location TEXT,
    status TEXT,
    last_maintenance_date TEXT,
    next_maintenance_due TEXT,
    usage_hours INTEGER,
    calibration_status TEXT,
    assigned_to_staff_id INTEGER,
    depreciation_rate REAL,
    residual_value REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Medical_Equipment_Inventory (club_id, equipment_name, equipment_type, serial_number, purchase_date, warranty_expiry, cost, location, status, last_maintenance_date, next_maintenance_due, usage_hours, calibration_status, assigned_to_staff_id, depreciation_rate, residual_value, notes, created_at, updated_at)
VALUES (10,'Physio_Bed','rehab','SN001','2021-05-10','2024-05-09',2500.0,'med_center','operational','2023-06-01','2024-06-01',1200,'calibrated',7001,0.15,2125.0,'good_condition','2023-06-01','2023-06-01');

INSERT INTO Medical_Equipment_Inventory (club_id, equipment_name, equipment_type, serial_number, purchase_date, warranty_expiry, cost, location, status, last_maintenance_date, next_maintenance_due, usage_hours, calibration_status, assigned_to_staff_id, depreciation_rate, residual_value, notes, created_at, updated_at)
VALUES (11,'Ultrasound_Unit','diagnostic','SN002','2020-02-20','2025-02-19',8000.0,'med_center','operational','2023-05-15','2024-05-15',850,'calibrated',7002,0.12,7040.0,'routine_use','2023-05-15','2023-05-15');

INSERT INTO Medical_Equipment_Inventory (club_id, equipment_name, equipment_type, serial_number, purchase_date, warranty_expiry, cost, location, status, last_maintenance_date, next_maintenance_due, usage_hours, calibration_status, assigned_to_staff_id, depreciation_rate, residual_value, notes, created_at, updated_at)
VALUES (12,'Cryo_Chamber','recovery','SN003','2022-09-01','2027-08-31',12000.0,'med_center','operational','2023-07-20','2024-07-20',300,'calibrated',7003,0.10,10800.0,'high_demand','2023-07-20','2023-07-20');

-- Travel passport records for players, staff and officials
CREATE TABLE Travel_Passport_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    passport_number TEXT,
    country_of_issue TEXT,
    issue_date TEXT,
    expiry_date TEXT,
    visa_required INTEGER,
    visa_type TEXT,
    visa_issue_date TEXT,
    visa_expiry_date TEXT,
    travel_insurance_policy TEXT,
    insurance_expiry TEXT,
    emergency_contact_name TEXT,
    emergency_contact_phone TEXT,
    last_travel_date TEXT,
    next_scheduled_travel TEXT,
    travel_purpose TEXT,
    risk_assessment_score REAL,
    clearance_status INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Travel_Passport_Records (person_id, passport_number, country_of_issue, issue_date, expiry_date, visa_required, visa_type, visa_issue_date, visa_expiry_date, travel_insurance_policy, insurance_expiry, emergency_contact_name, emergency_contact_phone, last_travel_date, next_scheduled_travel, travel_purpose, risk_assessment_score, clearance_status, notes, created_at, updated_at)
VALUES (5001,'P1234567','Spain','2018-04-01','2028-03-31',0,NULL,NULL,NULL,'PolicyA','2024-12-31','MariaGomez','123456789','2023-03-10','2023-07-15','match','2.1',1,'valid_passport','2023-01-01','2023-01-01');

INSERT INTO Travel_Passport_Records (person_id, passport_number, country_of_issue, issue_date, expiry_date, visa_required, visa_type, visa_issue_date, visa_expiry_date, travel_insurance_policy, insurance_expiry, emergency_contact_name, emergency_contact_phone, last_travel_date, next_scheduled_travel, travel_purpose, risk_assessment_score, clearance_status, notes, created_at, updated_at)
VALUES (5002,'P2345678','Germany','2019-06-15','2029-06-14',1,'tourist','2023-01-20','2023-07-20','PolicyB','2024-05-31','HansSchulz','987654321','2022-11-05','2023-09-01','training','3.4',1,'visa_obtained','2023-02-01','2023-02-01');

INSERT INTO Travel_Passport_Records (person_id, passport_number, country_of_issue, issue_date, expiry_date, visa_required, visa_type, visa_issue_date, visa_expiry_date, travel_insurance_policy, insurance_expiry, emergency_contact_name, emergency_contact_phone, last_travel_date, next_scheduled_travel, travel_purpose, risk_assessment_score, clearance_status, notes, created_at, updated_at)
VALUES (5003,'P3456789','France','2020-08-20','2030-08-19',0,NULL,NULL,NULL,'PolicyC','2025-03-31','ClaireDupont','555123456','2023-01-22','2023-10-10','friendly','1.8',1,'no_visa_needed','2023-03-01','2023-03-01');