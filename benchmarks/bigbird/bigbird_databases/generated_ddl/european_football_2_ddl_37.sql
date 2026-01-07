-- Streaming service analytics per month
CREATE TABLE Streaming_Service_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    service_name TEXT,
    month INTEGER,
    year INTEGER,
    total_streams INTEGER,
    avg_concurrent_viewers INTEGER,
    peak_concurrent_viewers INTEGER,
    total_unique_viewers INTEGER,
    avg_watch_time_minutes INTEGER,
    peak_watch_time_minutes INTEGER,
    ad_revenue_usd REAL,
    subscription_revenue_usd REAL,
    data_transfer_gb REAL,
    content_buffering_rate_percent REAL,
    error_rate_percent REAL,
    subscriber_growth_percent REAL,
    new_subscriptions INTEGER,
    churn_rate_percent REAL,
    devices_supported INTEGER,
    platforms_supported INTEGER,
    regions_covered INTEGER,
    api_calls_millions REAL,
    support_tickets INTEGER,
    downtime_minutes INTEGER
);
INSERT INTO Streaming_Service_Analytics VALUES (1,'StreamPlus',1,2023,1250000,3400,5600,800000,45,120,12000.5,35000.75,2500.3,1.2,0.3,2.5,15000,1.1,12,8,45,3.7,210,15);
INSERT INTO Streaming_Service_Analytics VALUES (2,'StreamPlus',2,2023,1325000,3550,5800,820000,46,125,12500.0,36000.0,2600.0,1.1,0.25,2.8,15800,1.0,13,9,46,3.9,220,12);
INSERT INTO Streaming_Service_Analytics VALUES (3,'StreamZone',1,2023,980000,2600,4100,600000,38,95,9000.2,28000.4,1900.7,1.5,0.4,1.9,10800,1.4,10,7,40,2.5,180,18);

-- Club sustainability yearly reports
CREATE TABLE Club_Sustainability_Reports (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    report_year INTEGER,
    carbon_emissions_tons REAL,
    water_usage_cubic_meters REAL,
    waste_generated_tons REAL,
    recycling_rate_percent REAL,
    renewable_energy_percent REAL,
    energy_consumption_mwh REAL,
    green_certification_status TEXT,
    sustainability_initiatives_count INTEGER,
    fan_education_programs INTEGER,
    transport_offset_km REAL,
    solar_panel_capacity_kw REAL,
    LED_lighting_percent REAL,
    waste_diversion_tons REAL,
    carbon_offset_purchased_tons REAL,
    ESG_score REAL,
    compliance_audit_score REAL,
    sustainable_merchandise_percent REAL,
    tree_planting_events INTEGER,
    community_green_projects INTEGER,
    report_generated_date TEXT
);
INSERT INTO Club_Sustainability_Reports VALUES (1,12,2022,45.3,12000.5,22.1,38.7,12.5,3400.2,'Certified','7',3,150.0,85.0,5.2,2.0,78.5,92.0,18.0,4,12,'2023-01-15');
INSERT INTO Club_Sustainability_Reports VALUES (2,15,2022,38.9,11500.0,19.8,42.0,15.2,3100.0,'Certified','8',4,180.0,90.0,6.0,2.5,81.0,94.5,20.0,5,15,'2023-01-20');
INSERT INTO Club_Sustainability_Reports VALUES (3,18,2022,52.1,13000.8,25.4,35.0,10.0,3800.5,'Pending','6',2,120.0,80.0,4.8,1.8,75.2,88.0,16.5,3,10,'2023-01-25');

-- Fan mobile app usage sessions
CREATE TABLE Fan_Mobile_App_Usage (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    app_version TEXT,
    user_id INTEGER,
    session_id TEXT,
    device_type TEXT,
    os_version TEXT,
    country_code TEXT,
    city TEXT,
    session_start TEXT,
    session_end TEXT,
    total_minutes INTEGER,
    pages_viewed INTEGER,
    features_used TEXT,
    push_notifications_received INTEGER,
    in_app_purchases_usd REAL,
    ad_clicks INTEGER,
    active_days_last_month INTEGER,
    retention_rate_percent REAL,
    last_update_timestamp TEXT,
    app_language TEXT,
    network_type TEXT,
    battery_level_percent INTEGER
);
INSERT INTO Fan_Mobile_App_Usage VALUES (1,'2.3.1',100245,'S7890A','Smartphone','iOS14','US','NewYork','2023-03-01 14:05','2023-03-01 14:27',22,15,'LiveScores,News',3,5.99,2,12,78.5,'2023-03-01 14:27','en','WiFi',85);
INSERT INTO Fan_Mobile_App_Usage VALUES (2,'2.3.1',100312,'S7890B','Tablet','Android11','GB','London','2023-03-02 09:10','2023-03-02 09:45',35,20,'Tickets,Store',5,0.00,1,8,65.0,'2023-03-02 09:45','en','4G',72);
INSERT INTO Fan_Mobile_App_Usage VALUES (3,'2.4.0',100578,'S7890C','Smartphone','iOS15','AU','Sydney','2023-03-03 18:20','2023-03-03 18:55',35,18,'LiveChat,Stats',2,12.50,3,15,82.0,'2023-03-03 18:55','en','5G',90);

-- Health screening events for clubs
CREATE TABLE Health_Screening_Events (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_id TEXT,
    club_id INTEGER,
    event_date TEXT,
    location TEXT,
    medical_staff_count INTEGER,
    participants_screened INTEGER,
    injuries_detected INTEGER,
    concussions_detected INTEGER,
    screenings_completed INTEGER,
    average_screening_time_minutes REAL,
    follow_up_appointments INTEGER,
    health_education_sessions INTEGER,
    equipment_used TEXT,
    PPE_compliance_percent REAL,
    emergency_response_time_minutes REAL,
    organizer_contact TEXT,
    sponsor_name TEXT,
    budget_usd REAL,
    notes TEXT
);
INSERT INTO Health_Screening_Events VALUES (1,'HS2023A',12,'2023-04-10','ClubTrainingGround','5','120','2','1','118','8.5','4','Ultrasound,ECG','98.0','2.0','john.doe@example.com','HealthCorp','15000.00','Annual preseason screening');
INSERT INTO Health_Screening_Events VALUES (2,'HS2023B',15,'2023-04-12','RegionalSportsCenter','4','95','1','0','94','9.0','3','MRI,VisionTest','97.5','1.5','jane.smith@example.com','MediLife','12000.00','Focused on injury prevention');
INSERT INTO Health_Screening_Events VALUES (3,'HS2023C',18,'2023-04-15','ClubMedicalFacility','6','130','3','2','127','7.8','5','BloodWork,Balance','99.2','2.5','mark.lee@example.com','WellnessPlus','18000.00','Comprehensive health audit');

-- Local community partnership agreements
CREATE TABLE Local_Community_Partnerships (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    partnership_id TEXT,
    club_id INTEGER,
    community_org_name TEXT,
    start_date TEXT,
    end_date TEXT,
    focus_area TEXT,
    funds_allocated_usd REAL,
    volunteers_involved INTEGER,
    events_hosted INTEGER,
    beneficiaries_count INTEGER,
    impact_score REAL,
    partnership_status TEXT,
    liaison_contact TEXT,
    agreement_document_path TEXT,
    renewal_option TEXT,
    annual_report_submitted INTEGER,
    media_coverage_mentions INTEGER,
    social_media_impressions INTEGER,
    sustainability_focus TEXT,
    evaluation_date TEXT
);
INSERT INTO Local_Community_Partnerships VALUES (1,'PC001',12,'YouthSportsFoundation','2022-01-01','2024-12-31','YouthDevelopment',50000.00,120,8,2000,84.5,'Active','alice.green@example.com','/docs/pc001.pdf','Yes',1,15,250000,'High','2023-12-15');
INSERT INTO Local_Community_Partnerships VALUES (2,'PC002',15,'CityHealthInitiative','2021-06-15','2023-06-14','HealthEducation',30000.00,80,5,1500,78.2,'Expiring','bob.white@example.com','/docs/pc002.pdf','No',1,10,180000,'Medium','2023-05-30');
INSERT INTO Local_Community_Partnerships VALUES (3,'PC003',18,'GreenCity Alliance','2023-03-01','2025-02-28','Environmental',40000.00,95,6,1700,81.0,'Active','carol.black@example.com','/docs/pc003.pdf','Yes',0,8,140000,'High','2024-02-28');

-- Venue security alerts log
CREATE TABLE Venue_Security_Alerts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    alert_id TEXT,
    venue_id INTEGER,
    alert_type TEXT,
    alert_timestamp TEXT,
    severity_level TEXT,
    description TEXT,
    staff_on_duty INTEGER,
    response_time_minutes REAL,
    resolution_timestamp TEXT,
    resolved_by TEXT,
    tickets_issued INTEGER,
    incident_category TEXT,
    camera_feed_reference TEXT,
    access_control_zone TEXT,
    crowd_density_estimate INTEGER,
    weather_condition TEXT,
    external_agency_involved TEXT,
    follow_up_actions TEXT,
    audit_log_id INTEGER,
    compliance_flag TEXT
);
INSERT INTO Venue_Security_Alerts VALUES (1,'VA1001',5,'UnauthorizedEntry','2023-05-10 19:45','High','Gate breach detected','3','2.5','2023-05-10 20:00','security.lead@example.com','2','Security','CAM12','NorthGate','1500','Clear','Police','Full investigation','9001','Yes');
INSERT INTO Venue_Security_Alerts VALUES (2,'VA1002',7,'FireAlarm','2023-06-02 14:20','Medium','Smoke in concession area','4','1.0','2023-06-02 14:30','caretaker@example.com','0','Safety','CAM07','Concessions','800','Cloudy','FireDept','Equipment check','9023','No');
INSERT INTO Venue_Security_Alerts VALUES (3,'VA1003',5,'CrowdControl','2023-07-18 22:10','Low','Minor crowd surge near exit','5','3.0','2023-07-18 22:20','event.manager@example.com','1','Safety','CAM03','SouthExit','1200','Rain','None','Added extra stewards','9045','Yes');

-- Digital ticket marketing campaigns
CREATE TABLE Digital_Ticket_Marketing_Campaigns (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    campaign_id TEXT,
    start_date TEXT,
    end_date TEXT,
    target_audience TEXT,
    channels_used TEXT,
    budget_usd REAL,
    impressions INTEGER,
    clicks INTEGER,
    conversion_rate_percent REAL,
    tickets_sold INTEGER,
    average_order_value_usd REAL,
    promo_code_used TEXT,
    email_open_rate_percent REAL,
    sms_response_rate_percent REAL,
    social_media_engagements INTEGER,
    AB_test_variant TEXT,
    ROI_percent REAL,
    creative_asset_version TEXT,
    compliance_status TEXT,
    created_by TEXT,
    last_modified TEXT
);
INSERT INTO Digital_Ticket_Marketing_Campaigns VALUES (1,'CMP001','2023-03-01','2023-03-31','SeasonTicketHolders','Email,Social','25000.00',500000,12000,2.4,1500,85.00,'SPRING23',45.0,5.0,8000,'A',12.5,'V1','Compliant','marketing.lead@example.com','2023-03-31');
INSERT INTO Digital_Ticket_Marketing_Campaigns VALUES (2,'CMP002','2023-04-15','2023-04-30','YoungFans','Social,Push','18000.00',300000,9000,3.0,1100,78.00,'YOUTH20',50.0,6.5,6200,'B',15.0,'V2','Compliant','social.manager@example.com','2023-04-30');
INSERT INTO Digital_Ticket_Marketing_Campaigns VALUES (3,'CMP003','2023-05-10','2023-05-20','CorporateClients','LinkedIn,Email','22000.00',250000,8000,3.2,900,120.00,'CORP10',55.0,4.0,4000,'A',18.2,'V1','Compliant','biz.dev@example.com','2023-05-20');

-- Volunteer training programs for clubs
CREATE TABLE Volunteer_Training_Programs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    program_id TEXT,
    club_id INTEGER,
    program_name TEXT,
    start_date TEXT,
    end_date TEXT,
    trainer_name TEXT,
    total_volunteers INTEGER,
    completed_hours INTEGER,
    certification_awarded TEXT,
    evaluation_score REAL,
    feedback_comments TEXT,
    budget_usd REAL,
    materials_provided TEXT,
    venue_location TEXT,
    safety_incidents INTEGER,
    attendance_rate_percent REAL,
    post_training_assignments TEXT,
    partner_organization TEXT,
    program_status TEXT,
    created_timestamp TEXT,
    last_updated TEXT
);
INSERT INTO Volunteer_Training_Programs VALUES (1,'VT001',12,'Matchday Operations','2023-02-01','2023-02-05','Laura Miller',45,120,'Yes',88.5,'Very useful','5000.00','Manuals,IDs','Club HQ','0',96.0,'Assist with ticketing','VolunteerNet','Completed','2023-02-01','2023-02-06');
INSERT INTO Volunteer_Training_Programs VALUES (2,'VT002',15,'Fan Engagement','2023-03-10','2023-03-12','Mike Johnson',30,48,'Yes',82.0,'Good content','3500.00','Guidebooks','Stadium B','1',90.0,'Social media support','CommunityOrg','Completed','2023-03-10','2023-03-13');
INSERT INTO Volunteer_Training_Programs VALUES (3,'VT003',18,'Safety & First Aid','2023-04-20','2023-04-22','Sara Lee',25,36,'Yes',91.2,'Excellent','4000.00','FirstAidKits','Training Center','0',98.0,'Prepare emergency kits','HealthPartners','Completed','2023-04-20','2023-04-23');

-- Stadium acoustic profiles measurements
CREATE TABLE Stadium_Acoustic_Profiles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    measurement_date TEXT,
    sound_pressure_level_db REAL,
    reverberation_time_seconds REAL,
    clarity_index REAL,
    definition_index REAL,
    speech_intelligibility_percent REAL,
    bass_response_hz REAL,
    treble_response_hz REAL,
    microphone_model TEXT,
    recorder_model TEXT,
    ambient_noise_level_db REAL,
    calibration_factor REAL,
    technician_name TEXT,
    notes TEXT,
    compliance_with_fifa_acoustics TEXT,
    max_allowed_db REAL,
    average_spectrogram_energy REAL,
    data_file_path TEXT
);
INSERT INTO Stadium_Acoustic_Profiles VALUES (1,5,'2023-06-01',102.5,1.8,0.78,0.85,92.0,80.0,12000.0,'Neumann KM184','Zoom H5',38.0,0.98,'David Kim','Measured during empty stadium','Pass',110.0,0.75,'/acoustics/venue5_20230601.json');
INSERT INTO Stadium_Acoustic_Profiles VALUES (2,7,'2023-06-15',99.0,1.6,0.80,0.88,94.5,78.0,11500.0,'Shure SM57','Tascam DR-40','36.5',1.02,'Emma Liu','Post‑match measurement','Pass',108.0,0.78,'/acoustics/venue7_20230615.json');
INSERT INTO Stadium_Acoustic_Profiles VALUES (3,9,'2023-07-05',101.2,1.9,0.75,0.82,90.0,82.0,12200.0,'Sennheiser e 604','Zoom H6','39.2',0.97,'Carlos Ruiz','Full capacity crowd','Pass',109.0,0.73,'/acoustics/venue9_20230705.json');

-- International scouting allowance records
CREATE TABLE International_Scouting_Allowances (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    scout_id INTEGER,
    player_api_id INTEGER,
    allowance_type TEXT,
    amount_usd REAL,
    currency TEXT,
    approved_by TEXT,
    approval_date TEXT,
    travel_destination TEXT,
    duration_days INTEGER,
    accommodation_included TEXT,
    meals_included TEXT,
    per_diem_rate_usd REAL,
    total_expense_usd REAL,
    expense_report_submitted INTEGER,
    expense_report_approved INTEGER,
    notes TEXT,
    status TEXT,
    last_updated TEXT
);
INSERT INTO International_Scouting_Allowances VALUES (1,301,11101,'Travel','3500.00','USD','director@example.com','2023-01-20','Barcelona','12','Yes','Yes','150.00','5400.00',1,1,'Scouting for midfield talent','Approved','2023-01-25');
INSERT INTO International_Scouting_Allowances VALUES (2,302,11234,'Accommodation','2000.00','USD','director@example.com','2023-02-10','Munich','8','Yes','No','0','2000.00',1,0,'Short‑term observation','Pending','2023-02-15');
INSERT INTO International_Scouting_Allowances VALUES (3,303,11357,'PerDiem','1800.00','USD','director@example.com','2023-03-05','London','5','No','Yes','200.00','2800.00',1,1,'Trial match attendance','Approved','2023-03-10');