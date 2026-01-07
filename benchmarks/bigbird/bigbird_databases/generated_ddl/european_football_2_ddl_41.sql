```sql
-- Arena_Security_Incidents: records of security‑related incidents occurring within the arena
CREATE TABLE Arena_Security_Incidents (
    id                    INTEGER PRIMARY KEY AUTOINCREMENT,
    incident_code         TEXT,
    incident_date         TEXT,
    incident_time         TEXT,
    incident_type         TEXT,
    severity_level        INTEGER,
    reported_by_guard_id  INTEGER,
    description           TEXT,
    area_affected         TEXT,
    camera_snapshot_id    INTEGER,
    police_report_number  TEXT,
    response_time_minutes INTEGER,
    action_taken          TEXT,
    closed_flag           INTEGER,
    closure_date          TEXT,
    closure_time          TEXT,
    investigator_id       INTEGER,
    follow_up_required    INTEGER,
    follow_up_date        TEXT,
    notes                 TEXT,
    created_timestamp     TEXT,
    updated_timestamp     TEXT
);

INSERT INTO Arena_Security_Incidents VALUES
(1,'INC001','2024-11-01','20:15','UnauthorizedEntry',3,12,'Fan entered restricted zone','NorthStand',101,'PR2024-001',5,'Security escorted out',0,NULL,NULL,101,0,NULL,'Initial report','2024-11-01 20:20','2024-11-01 20:20');

INSERT INTO Arena_Security_Incidents VALUES
(2,'INC002','2024-11-02','14:42','BagCheckFailure',2,8,'Bag left unattended','ConciergeDesk',102,'PR2024-002',3,'Bag returned to owner',1,'2024-11-02','15:00',110,0,NULL,'Handled quickly','2024-11-02 14:45','2024-11-02 15:05');

INSERT INTO Arena_Security_Incidents VALUES
(3,'INC003','2024-11-03','09:05','FireAlarm',5,5,'Smoke detected in kitchen','KitchenArea',103,'PR2024-003',2,'Fire suppressed, no injuries',1,'2024-11-03','09:30',115,1,'2024-11-04','Follow‑up inspection scheduled','2024-11-03 09:10','2024-11-04 10:00');

--------------------------------------------------------

-- Fan_Mobile_App_Feedback: feedback submitted via the official fan mobile application
CREATE TABLE Fan_Mobile_App_Feedback (
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id                INTEGER,
    feedback_date          TEXT,
    feedback_time          TEXT,
    rating_overall         INTEGER,
    rating_usability       INTEGER,
    rating_performance     INTEGER,
    feature_requested      TEXT,
    bug_report             TEXT,
    device_type            TEXT,
    os_version             TEXT,
    app_version            TEXT,
    network_type           TEXT,
    location_city          TEXT,
    location_country       TEXT,
    session_length_seconds INTEGER,
    screenshots_attached   INTEGER,
    response_sent_flag     INTEGER,
    response_date          TEXT,
    response_time_minutes  INTEGER,
    notes                  TEXT,
    created_timestamp      TEXT,
    updated_timestamp      TEXT
);

INSERT INTO Fan_Mobile_App_Feedback VALUES
(1,2001,'2024-10-20','08:30',4,5,4,'LiveStatsPanel','None','iPhone12','iOS15','3.2.1','WiFi','London','UK',120,0,1,'2024-10-20',15,'Thank you for rating','2024-10-20 08:35','2024-10-20 09:00');

INSERT INTO Fan_Mobile_App_Feedback VALUES
(2,2002,'2024-10-21','19:45',3,3,2,'PushNotificationSettings','App crashes on launch','SamsungS21','Android12','3.2.1','4G','Berlin','Germany',45,1,0,NULL,NULL,'Bug report submitted','2024-10-21 19:50','2024-10-21 20:00');

INSERT INTO Fan_Mobile_App_Feedback VALUES
(3,2003,'2024-10-22','12:10',5,5,5,'Add AR player avatars','None','Pixel5','Android11','3.2.1','WiFi','Madrid','Spain',300,0,1,'2024-10-23',1440,'Feature request acknowledged','2024-10-22 12:15','2024-10-23 09:00');

--------------------------------------------------------

-- Virtual_Training_Modules: description of virtual reality training modules for players
CREATE TABLE Virtual_Training_Modules (
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    module_code            TEXT,
    module_name            TEXT,
    release_date           TEXT,
    version_number         TEXT,
    duration_minutes       INTEGER,
    focus_area             TEXT,
    difficulty_level       TEXT,
    prerequisite_module    TEXT,
    vr_device_compatible   TEXT,
    max_players_supported  INTEGER,
    creator_team_id        INTEGER,
    last_update_date       TEXT,
    file_path              TEXT,
    description            TEXT,
    average_completion_rate REAL,
    feedback_rating_avg    REAL,
    active_flag            INTEGER,
    deprecation_date       TEXT,
    support_contact_email  TEXT,
    notes                  TEXT,
    created_timestamp      TEXT,
    updated_timestamp      TEXT
);

INSERT INTO Virtual_Training_Modules VALUES
(1,'VT001','Goalkeeper Reflex Drill','2023-06-15','1.0',30,'Goalkeeping','Intermediate','None','OculusQuest2',1,12,'2024-01-10','/modules/vt001_v1.zip','Quick reaction saves','0.78',4.2,1,NULL,'support@vrtrain.com','Popular among keepers','2023-06-15 09:00','2024-01-10 12:00');

INSERT INTO Virtual_Training_Modules VALUES
(2,'VT002','Defensive Positioning Simulator','2023-09-01','1.2',45,'Defence','Advanced','VT001','HTCVive',2,8,'2024-02-20','/modules/vt002_v12.zip','Improves spacing awareness','0.65',3.9,1,NULL,'defence@vrtrain.com','Requires prior module','2023-09-01 10:00','2024-02-20 15:30');

INSERT INTO Virtual_Training_Modules VALUES
(3,'VT003','Attacking Combination Play','2024-02-10','1.0',40,'Attack','Beginner','None','OculusQuest2',2,15,'2024-03-05','/modules/vt003_v10.zip','Builds quick passing patterns','0.82',4.5,1,NULL,'attack@vrtrain.com','Ideal for youth squads','2024-02-10 08:30','2024-03-05 11:45');

--------------------------------------------------------

-- Air_Quality_Monitoring: environmental sensor data collected around stadiums
CREATE TABLE Air_Quality_Monitoring (
    id                       INTEGER PRIMARY KEY AUTOINCREMENT,
    station_id               INTEGER,
    measurement_timestamp    TEXT,
    pm2_5_ug_m3              REAL,
    pm10_ug_m3               REAL,
    no2_ppb                  REAL,
    o3_ppb                   REAL,
    co_ppm                   REAL,
    temperature_celsius      REAL,
    humidity_percent         REAL,
    wind_speed_mps           REAL,
    wind_direction_deg       INTEGER,
    sensor_status            TEXT,
    battery_level_percent    INTEGER,
    maintenance_due_date     TEXT,
    calibration_date         TEXT,
    notes                    TEXT,
    created_timestamp        TEXT,
    updated_timestamp        TEXT,
    latitude                 REAL,
    longitude                REAL,
    elevation_meters         REAL
);

INSERT INTO Air_Quality_Monitoring VALUES
(1,101,'2024-10-20 09:00',12.5,25.4,18.2,30.1,0.4,22.5,55,3.2,180,'OK',95,'2025-01-15','2024-07-10','All sensors normal','2024-10-20 09:05','2024-10-20 09:10',51.5074,-0.1278,15);

INSERT INTO Air_Quality_Monitoring VALUES
(2,102,'2024-10-20 09:00',35.0,58.7,40.0,45.0,0.9,23.0,60,2.8,90,'OK',88,'2025-01-20','2024-07-12','Higher pollutants due to traffic','2024-10-20 09:07','2024-10-20 09:12',48.8566,2.3522,35);

INSERT INTO Air_Quality_Monitoring VALUES
(3,103,'2024-10-20 09:00',5.2,10.1,8.5,25.0,0.3,21.8,50,4.0,270,'OK',92,'2025-01-18','2024-07-14','Excellent air quality','2024-10-20 09:09','2024-10-20 09:14',40.7128,-74.0060,10);

--------------------------------------------------------

-- Community_Outreach_Impact_Reports: summary of community projects linked to clubs
CREATE TABLE Community_Outreach_Impact_Reports (
    id                          INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id                     INTEGER,
    project_name                TEXT,
    start_date                  TEXT,
    end_date                    TEXT,
    target_population           INTEGER,
    volunteers_involved         INTEGER,
    budget_usd                  REAL,
    funds_raised_usd            REAL,
    activities_conducted        INTEGER,
    beneficiaries_reached       INTEGER,
    average_feedback_score      REAL,
    media_mentions              INTEGER,
    social_media_impressions    INTEGER,
    partnership_organizations   TEXT,
    report_created_date         TEXT,
    report_author               TEXT,
    status                      TEXT,
    notes                       TEXT,
    created_timestamp           TEXT,
    updated_timestamp           TEXT,
    region                      TEXT,
    initiative_type             TEXT,
    sustainability_score        REAL
);

INSERT INTO Community_Outreach_Impact_Reports VALUES
(1,12,'Youth Football Clinics','2024-03-01','2024-08-31',500,30,15000,5000,12,480,4.5,8,12000,'LocalSchools,CharityOrg','2024-09-05','JohnDoe','Completed','Great local reception','2024-09-05 10:00','2024-09-05 12:00','NorthEast','Sports','0.78');

INSERT INTO Community_Outreach_Impact_Reports VALUES
(2,15,'Health Awareness Campaign','2024-05-15','2024-11-15',2000,45,25000,10000,20,1800,4.2,15,25000,'HealthDept,NGO','2024-12-01','JaneSmith','Ongoing','Mid‑campaign assessment','2024-12-01 09:30','2024-12-01 10:45','SouthWest','Health','0.85');

INSERT INTO Community_Outreach_Impact_Reports VALUES
(3,9,'Environmental Clean‑Up Day','2024-04-10','2024-04-10',300,20,8000,0,1,290,4.8,3,5000,'EcoGroup,CityCouncil','2024-04-11','MikeBrown','Completed','High participation','2024-04-11 08:00','2024-04-11 09:15','Central','Environment','0.91');

--------------------------------------------------------

-- Player_Language_Skills: languages spoken by players and proficiency levels
CREATE TABLE Player_Language_Skills (
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    player_api_id          INTEGER,
    language_code          TEXT,
    proficiency_level      TEXT,
    native_flag            INTEGER,
    certification          TEXT,
    last_assessment_date   TEXT,
    notes                  TEXT,
    created_timestamp      TEXT,
    updated_timestamp      TEXT,
    dialect                TEXT,
    reading_score          INTEGER,
    writing_score          INTEGER,
    speaking_score         INTEGER,
    listening_score        INTEGER,
    test_provider          TEXT,
    test_score_overall     REAL,
    active_flag            INTEGER,
    expiry_date            TEXT,
    assessment_location    TEXT,
    examiner_id            INTEGER,
    language_family        TEXT,
    common_phrases_known   INTEGER,
    cultural_training_hours INTEGER
);

INSERT INTO Player_Language_Skills VALUES
(1,1010,'EN','Fluent',1,'IELTS','2023-12-01','No issues','2024-01-01 10:00','2024-06-01 11:00','US','9','9','9','9','BritishCouncil',9.0,1,NULL,'London',201,'Germanic',1500,40);

INSERT INTO Player_Language_Skills VALUES
(2,1025,'ES','Intermediate',0,'DELE','2022-08-15','Improving','2023-02-20 09:30','2024-02-20 10:30','LatinAmerican','7','6','7','6','InstitutoCervantes',6.5,1,'2025-08-15','Madrid',301,'Romance',800,20);

INSERT INTO Player_Language_Skills VALUES
(3,1033,'FR','Basic',0,NULL,'2021-05-10','Needs practice','2021-06-01 08:45','2024-05-01 09:45','Parisian','5','4','5','4','AllianceFrancaise',4.5,0,'2023-05-10','Paris',402,'Romance',400,10);

--------------------------------------------------------

-- Team_Merchandise_Sales_Channel: breakdown of merch sales per distribution channel
CREATE TABLE Team_Merchandise_Sales_Channel (
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    team_api_id            INTEGER,
    channel_name           TEXT,
    fiscal_year            INTEGER,
    quarter                INTEGER,
    units_sold             INTEGER,
    revenue_usd            REAL,
    cost_of_goods_usd      REAL,
    profit_usd             REAL,
    average_price_usd      REAL,
    discount_rate_percent  REAL,
    online_platform        TEXT,
    physical_store_id      INTEGER,
    region                 TEXT,
    currency               TEXT,
    exchange_rate_to_usd   REAL,
    promotion_code_used    TEXT,
    marketing_spend_usd    REAL,
    return_rate_percent    REAL,
    stock_on_hand          INTEGER,
    reorder_point          INTEGER,
    supplier_id            INTEGER,
    created_timestamp      TEXT,
    updated_timestamp      TEXT,
    notes                  TEXT,
    last_audit_date        TEXT,
    audit_score            REAL
);

INSERT INTO Team_Merchandise_Sales_Channel VALUES
(1,2001,'Online','2024',1,1200,48000,30000,18000,40,5.0,'Shopify',NULL,'Europe','EUR',1.10,'NEWYEAR24',8000,2.5,300,250,55,'2024-03-01 09:00','2024-03-15 10:30','First quarter promo','2024-03-31',85.5);

INSERT INTO Team_Merchandise_Sales_Channel VALUES
(2,2001,'Stadium Store','2024',1,800,24000,15000,9000,30,3.0,NULL,12,'Europe','EUR',1.10,'MATCHDAY',5000,4.0,150,130,55,'2024-03-01 09:15','2024-03-15 11:00','Match day sales','2024-03-31',88.2);

INSERT INTO Team_Merchandise_Sales_Channel VALUES
(3,2001,'Retail Partner','2024',1,500,15000,9000,6000,30,7.0,NULL,23,'Europe','EUR',1.10,'SPRING20',3000,6.0,200,180,78,'2024-03-01 09:30','2024-03-15 11:30','Partner bulk order','2024-03-31',80.1);

--------------------------------------------------------

-- League_Winning_Streak_Analytics: statistical analysis of winning streaks per league
CREATE TABLE League_Winning_Streak_Analytics (
    id                         INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id                  INTEGER,
    season                     TEXT,
    team_api_id                INTEGER,
    streak_start_match_id      INTEGER,
    streak_end_match_id        INTEGER,
    streak_length              INTEGER,
    points_gained              INTEGER,
    goals_scored               INTEGER,
    goals_conceded             INTEGER,
    avg_possession_percent     REAL,
    avg_shots_on_target        REAL,
    avg_pass_accuracy_percent  REAL,
    clean_sheets               INTEGER,
    opponent_average_rank      REAL,
    home_away_balance          TEXT,
    weather_condition_during   TEXT,
    injury_impact_flag         INTEGER,
    coach_change_during        INTEGER,
    created_timestamp          TEXT,
    updated_timestamp          TEXT,
    notes                      TEXT,
    analyst_id                 INTEGER,
    confidence_score           REAL,
    prediction_next_match_win  INTEGER
);

INSERT INTO League_Winning_Streak_Analytics VALUES
(1,5,'2023/2024',3101,5500,5520,5,15,12,2,58.4,6.2,84.5,2,4.1,'HomeHeavy','Clear',0,0,'2024-05-01 08:00','2024-05-01 09:00','Strong home form','42',0.92,1);

INSERT INTO League_Winning_Streak_Analytics VALUES
(2,5,'2023/2024',3105,5600,5618,4,12,10,3,55.0,5.5,80.0,1,5.3,'Balanced','Rain',1,0,'2024-05-02 10:00','2024-05-02 11:15','Mid‑season injuries','47',0.85,0);

INSERT INTO League_Winning_Streak_Analytics VALUES
(3,5,'2023/2024',3110,5700,5725,6,18,15,4,60.2,7.0,86.0,3,3.8,'AwayHeavy','Cloudy',0,1,'2024-05-03 12:30','2024-05-03 13:45','Coach changed after streak','53',0.88,1);

--------------------------------------------------------

-- Stadium_Seating_Occupancy_Stats: detailed seat occupancy metrics per section
CREATE TABLE Stadium_Seating_Occupancy_Stats (
    id                       INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id               INTEGER,
    match_id                 INTEGER,
    section_name             TEXT,
    total_seats              INTEGER,
    seats_sold               INTEGER,
    occupancy_percent        REAL,
    avg_ticket_price_usd     REAL,
    vip_seats                INTEGER,
    vip_seats_sold           INTEGER,
    accessibility_seats      INTEGER,
    accessibility_seats_sold INTEGER,
    concession_revenue_usd    REAL,
    merchandise_revenue_usd   REAL,
    avg_arrival_time_min     INTEGER,
    avg_departure_time_min   INTEGER,
    crowd_noise_level_db     REAL,
    temperature_celsius      REAL,
    humidity_percent         REAL,
    security_incidents       INTEGER,
    created_timestamp        TEXT,
    updated_timestamp        TEXT,
    notes                    TEXT,
    steward_id               INTEGER,
    last_inspection_date     TEXT,
    inspection_score         REAL
);

INSERT INTO Stadium_Seating_Occupancy_Stats VALUES
(1,101,7001,'NorthWest',1200,1150,95.8,85.0,100,95,20,18,12000,8000,15,120,95.2,22.5,55,0,'2024-06-01 09:00','2024-06-01 10:00','High demand area','12','2024-05-30',98.5);

INSERT INTO Stadium_Seating_Occupancy_Stats VALUES
(2,101,7002,'SouthEast',1500,1400,93.3,78.0,120,110,30,28,15000,9500,18,130,92.5,21.0,60,1,'2024-06-02 09:30','2024-06-02 10:30','Minor inflow issues','15','2024-06-01',95.0);

INSERT INTO Stadium_Seating_Occupancy_Stats VALUES
(3,101,7003,'EastStand',2000,1900,95.0,70.0,150,145,25,22,20000,12000,20,140,97.0,20.0,58,0,'2024-06-03 08:45','2024-06-03 09:45','Smooth operation','9','2024-06-02',99.0);

--------------------------------------------------------

-- Digital_Signage_Content_Schedule: schedule of digital signage content across venues
CREATE TABLE Digital_Signage_Content_Schedule (
    id                       INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id                 INTEGER,
    screen_id                INTEGER,
    content_id               INTEGER,
    start_timestamp          TEXT,
    end_timestamp            TEXT,
    content_type             TEXT,
    duration_seconds         INTEGER,
    priority_level           INTEGER,
    target_audience          TEXT,
    language                 TEXT,
    asset_file_path          TEXT,
    display_brightness_level INTEGER,
    scheduled_by_user_id     INTEGER,
    approval_status          TEXT,
    approval_date            TEXT,
    created_timestamp        TEXT,
    updated_timestamp        TEXT,
    notes                    TEXT,
    recurring_flag           INTEGER,
    recurrence_pattern       TEXT,
    max_views_per_day        INTEGER,
    hardware_version         TEXT,
    firmware_version         TEXT,
    last_maintenance_date    TEXT
);

INSERT INTO Digital_Signage_Content_Schedule VALUES
(1,301,10,5001,'2024-07-01 08:00','2024-07-01 12:00','Promo',14400,2,'Fans','EN','/assets/promo_summer.mp4',80,45,'Approved','2024-06-25','2024-06-30 09:00','2024-06-30 10:00','Morning promo','1','Daily','5','v2','1.4','2024-06-20');

INSERT INTO Digital_Signage_Content_Schedule VALUES
(2,301,11,5002,'2024-07-01 12:00','2024-07-01 14:00','LiveScore',7200,1,'All','EN','/assets/live_score.png',90,46,'Approved','2024-06-26','2024-07-01 07:30','2024-07-01 07:45','Live match updates','0','',0,'v2','1.4','2024-06-20');

INSERT INTO Digital_Signage_Content_Schedule VALUES
(3,302,12,5003,'2024-07-01 14:00','2024-07-01 18:00','CommunityEvent',14400,3,'Local','EN','/assets/community_fair.jpg',70,47,'Pending','NULL','2024-07-01 08:00','2024-07-01 08:15','Evening community promo','0','',0,'v1','1.2','2024-06-18');
```