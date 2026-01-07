-- Media Licensing Agreements
CREATE TABLE Media_Licensing_Agreements (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    agreement_id TEXT,
    license_type TEXT,
    region TEXT,
    start_date TEXT,
    end_date TEXT,
    fee_amount REAL,
    payment_terms TEXT,
    renewal_option TEXT,
    exclusivity_flag INTEGER,
    content_scope TEXT,
    platform TEXT,
    legal_contact TEXT,
    status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    auditor TEXT,
    compliance_check_date TEXT,
    max_viewers INTEGER
);

INSERT INTO Media_Licensing_Agreements VALUES (1,'AGR001','Full','Europe','2023-01-01','2024-12-31',1500000.00,'Net30','Auto','1','LiveMatches','Streaming','JohnDoe','Active','InitialAgreement','2023-01-01','2023-01-01','AuditTeamA','2023-01-15',5000000);
INSERT INTO Media_Licensing_Agreements VALUES (2,'AGR002','Highlight','Asia','2022-06-15','2025-06-14',750000.00,'Net45','Manual','0','Clips','Broadcast','JaneSmith','Pending','NegotiationPhase','2022-06-15','2022-07-01','AuditTeamB','2022-07-10',2000000);
INSERT INTO Media_Licensing_Agreements VALUES (3,'AGR003','Replay','NorthAmerica','2021-03-01','2023-02-28',500000.00,'Net60','Auto','0','Replays','Digital','MikeBrown','Expired','Finalized','2021-03-01','2021-03-10','AuditTeamC','2021-03-20',1500000);

-- Data Analytics Models
CREATE TABLE Data_Analytics_Models (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    model_id TEXT,
    model_name TEXT,
    version TEXT,
    algorithm_type TEXT,
    training_start_date TEXT,
    training_end_date TEXT,
    accuracy REAL,
    precision REAL,
    recall REAL,
    f1_score REAL,
    data_source TEXT,
    features_count INTEGER,
    hyperparameters TEXT,
    deployment_status TEXT,
    serving_endpoint TEXT,
    created_by TEXT,
    reviewed_by TEXT,
    last_updated TEXT,
    model_owner TEXT,
    notes TEXT
);

INSERT INTO Data_Analytics_Models VALUES (1,'MOD001','GoalPredictor','v1.0','GradientBoosting','2022-07-01','2022-07-15',0.87,0.85,0.88,0.86,'MatchData',45,'learning_rate=0.1;trees=200','Deployed','https://api.sports.com/goal','DataTeamA','AnalystA','2022-08-01','AnalyticsDept','Initial release');
INSERT INTO Data_Analytics_Models VALUES (2,'MOD002','FanEngagementScore','v2.1','NeuralNetwork','2023-01-10','2023-01-30',0.92,0.90,0.93,0.91,'SocialMedia',60,'layers=3;units=128','Testing','https://api.sports.com/engage','DataTeamB','AnalystB','2023-02-15','MarketingDept','Beta version');
INSERT INTO Data_Analytics_Models VALUES (3,'MOD003','InjuryRiskClassifier','v1.5','RandomForest','2021-11-05','2021-11-20',0.81,0.79,0.80,0.795,'MedicalLogs',30,'trees=150','Retired','N/A','DataTeamC','AnalystC','2022-01-10','MedicalDept','Deprecated model');

-- Fan Eco Initiatives
CREATE TABLE Fan_Eco_Initiatives (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    initiative_id TEXT,
    name TEXT,
    launch_date TEXT,
    target_year INTEGER,
    carbon_reduction_tons REAL,
    trees_planted INTEGER,
    recycling_rate_percent REAL,
    partnership_org TEXT,
    budget_usd REAL,
    region TEXT,
    status TEXT,
    description TEXT,
    responsible_manager TEXT,
    impact_score REAL,
    multiplier_factor REAL,
    verification_body TEXT,
    verified_date TEXT,
    contact_email TEXT,
    social_media_tag TEXT
);

INSERT INTO Fan_Eco_Initiatives VALUES (1,'ECO001','ZeroWasteStadium','2022-04-01',2025,12.5,3000,85.0,'GreenWorld','250000','Europe','Active','Goal to achieve zero waste by 2025','LauraGreen',92.5,1.1,'EcoAuditInc','2022-05-10','eco@club.com','#ZeroWaste');
INSERT INTO Fan_Eco_Initiatives VALUES (2,'ECO002','SolarPowerFans','2021-09-15',2024,8.0,0,0,'SolarPowerCo','150000','NorthAmerica','Completed','Installed solar panels generating 2MW','MarkSolar',88.0,1.0,'SolarCert','2022-01-20','solar@club.com','#SolarFans');
INSERT INTO Fan_Eco_Initiatives VALUES (3,'ECO003','TreePlantingDrive','2023-03-20',2026,5.0,5000,0,'TreeFuture','100000','Asia','Planned','Plant 5000 trees around stadium vicinity','AishaTree',75.0,1.2,'TreeVerify','2023-04-01','trees@club.com','#PlantTrees');

-- Club Asset Insurance
CREATE TABLE Club_Asset_Insurance (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_id TEXT,
    asset_type TEXT,
    policy_number TEXT,
    insurer_name TEXT,
    coverage_amount_usd REAL,
    deductible_usd REAL,
    start_date TEXT,
    end_date TEXT,
    premium_usd REAL,
    renewal_auto_flag INTEGER,
    insured_location TEXT,
    asset_value_usd REAL,
    depreciation_rate_percent REAL,
    risk_category TEXT,
    claim_history_flag INTEGER,
    last_claim_date TEXT,
    claim_amount_usd REAL,
    risk_assessor TEXT,
    notes TEXT
);

INSERT INTO Club_Asset_Insurance VALUES (1,'AST001','Stadium','POL12345','GlobalInsure','50000000',500000,'2022-01-01','2027-12-31','2500000',1,'CityCenter','45000000',2.5,'High',0,NULL,NULL,'AssessorA','Standard coverage');
INSERT INTO Club_Asset_Insurance VALUES (2,'AST002','TrainingFacility','POL67890','SecureCover','12000000',200000,'2023-06-01','2028-05-31','600000',1,'NorthZone','11000000',3.0,'Medium',1,'2024-02-15','250000','AssessorB','One claim filed for flood damage');
INSERT INTO Club_Asset_Insurance VALUES (3,'AST003','TeamBuses','POL54321','TransitInsure','3000000',50000,'2021-03-01','2026-02-28','150000',0,'Various','2800000',4.0,'Low',0,NULL,NULL,'AssessorC','All buses covered');

-- Stadium Technology Roadmap
CREATE TABLE Stadium_Technology_Roadmap (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    roadmap_id TEXT,
    technology_name TEXT,
    phase TEXT,
    planned_start_date TEXT,
    planned_end_date TEXT,
    budget_usd REAL,
    vendor TEXT,
    status TEXT,
    responsible_engineer TEXT,
    expected_benefit_score REAL,
    integration_complexity TEXT,
    dependencies TEXT,
    risk_level TEXT,
    mitigation_plan TEXT,
    created_at TEXT,
    updated_at TEXT,
    last_review_date TEXT,
    notes TEXT,
    priority INTEGER
);

INSERT INTO Stadium_Technology_Roadmap VALUES (1,'RD001','4K LED Screens','Implementation','2023-07-01','2024-01-15','800000','DisplayTech','InProgress','EngJohn','85.0','Medium','PowerUpgrade','Medium','ContingencyFund','2023-06-01','2023-06-15','2023-07-20','Main stadium visual upgrade',1);
INSERT INTO Stadium_Technology_Roadmap VALUES (2,'RD002','WiFi 6 Mesh','Planning','2024-03-01','2024-09-30','500000','NetSolutions','Planned','EngSara','78.5','High','CableInstall','High','PhasedDeployment','2023-12-01','2023-12-20','2024-01-10','Full stadium connectivity',2);
INSERT INTO Stadium_Technology_Roadmap VALUES (3,'RD003','AI Crowd Analytics','Research','2025-01-01','2025-12-31','300000','AIAnalyticsCo','Research','EngMike','90.0','Low','DataWarehouse','Low','PilotTest','2024-11-01','2024-11-15','2025-01-05','Real‑time fan behavior insights',3);

-- Club Educational Programs
CREATE TABLE Club_Educational_Programs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    program_id TEXT,
    program_name TEXT,
    description TEXT,
    start_date TEXT,
    end_date TEXT,
    target_audience TEXT,
    enrollment_capacity INTEGER,
    current_enrollment INTEGER,
    instructor_name TEXT,
    location TEXT,
    curriculum_hours INTEGER,
    certification_awarded TEXT,
    cost_usd REAL,
    scholarship_available_flag INTEGER,
    partner_org TEXT,
    outcome_metrics TEXT,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT,
    program_status TEXT
);

INSERT INTO Club_Educational_Programs VALUES (1,'PRG001','Coaching Basics','Introductory coaching certification','2023-02-01','2023-06-30','AspiringCoaches',30,28,'CoachAnna','TrainingCenterA',120,'CertificateLevel1',2000,1,'FAInstitute','PassRate90%','2023-01-15','2023-01-20','Full enrollment','Active');
INSERT INTO Club_Educational_Programs VALUES (2,'PRG002','Sports Management MBA','Advanced management degree for sports professionals','2024-09-01','2026-08-31','Professionals',50,12,'ProfLee','CampusB',1800,'MBA','15000',0,'UniSports','EmploymentIncrease15%','2024-07-01','2024-07-10','Program pending accreditation','Planned');
INSERT INTO Club_Educational_Programs VALUES (3,'PRG003','Youth Leadership Camp','Leadership development for ages 14-18','2023-07-15','2023-07-20','Youth',100,85,'LeaderMike','CampSiteC',40,'YouthLeaderBadge',500,1,'CommunityOrg','ImprovedTeamworkScore','2023-05-01','2023-05-05','Last year 90% satisfaction','Active');

-- League Competitive Balance Metrics
CREATE TABLE League_Competitive_Balance_Metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    season TEXT,
    league_name TEXT,
    gini_coefficient REAL,
    concentration_ratio_top5 REAL,
    average_points_gap REAL,
    variance_goals_scored REAL,
    variance_goals_conceded REAL,
    stddev_points REAL,
    competitive_balance_index REAL,
    promotion_relegation_rate REAL,
    parity_score REAL,
    match_outcome_variance REAL,
    financial_parity_index REAL,
    fan_engagement_variance REAL,
    broadcast_viewership_variance REAL,
    sponsorship_share_variance REAL,
    rule_change_impact_score REAL,
    created_at TEXT,
    updated_at TEXT,
    notes TEXT
);

INSERT INTO League_Competitive_Balance_Metrics VALUES (1,'2022/2023','PremierLeague',0.22,0.35,4.5,12.3,10.8,5.6,0.78,0.25,0.81,2.1,0.69,0.55,0.48,0.30,0.12,'2023-01-10','2023-01-15','Mid‑season analysis');
INSERT INTO League_Competitive_Balance_Metrics VALUES (2,'2021/2022','LaLiga',0.18,0.28,3.2,9.5,8.7,4.9,0.84,0.22,0.76,1.8,0.73,0.60,0.42,0.25,0.10,'2022-12-20','2022-12-25','End‑season report');
INSERT INTO League_Competitive_Balance_Metrics VALUES (3,'2020/2021','Bundesliga',0.15,0.25,2.8,8.9,7.5,4.3,0.88,0.20,0.73,1.5,0.78,0.62,0.38,0.20,0.08,'2021-11-30','2021-12-05','Historical overview');

-- Match Fan Voice Feedback
CREATE TABLE Match_Fan_Voice_Feedback (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    fan_id INTEGER,
    feedback_timestamp TEXT,
    rating_overall INTEGER,
    rating_atmosphere INTEGER,
    rating_security INTEGER,
    comments TEXT,
    suggestions TEXT,
    survey_channel TEXT,
    device_type TEXT,
    ip_address TEXT,
    language TEXT,
    response_time_seconds INTEGER,
    follow_up_required_flag INTEGER,
    follow_up_status TEXT,
    assigned_staff TEXT,
    resolution_timestamp TEXT,
    resolution_notes TEXT,
    archived_flag INTEGER
);

INSERT INTO Match_Fan_Voice_Feedback VALUES (1,101,5001,'2023-04-15 19:45:00',9,8,9,'Great atmosphere, loved the chants','Add more vegan food options','Email','Mobile','192.168.1.10','en',45,0,'None','',NULL,'',0);
INSERT INTO Match_Fan_Voice_Feedback VALUES (2,102,5002,'2023-04-16 20:10:00',7,6,5,'Long queues at entry','Increase gate staff','App','Desktop','192.168.1.20','es',60,1,'InProgress','JohnSupport','2023-04-18 10:00:00','Queued for resolution',0);
INSERT INTO Match_Fan_Voice_Feedback VALUES (3,103,5003,'2023-04-17 18:30:00',8,9,8,'Excellent security presence','Would like more family zones','SMS','Tablet','192.168.1.30','fr',30,0,'None','',NULL,'',1);

-- Training Session Video Analytics
CREATE TABLE Training_Session_Video_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    session_id TEXT,
    video_file_path TEXT,
    duration_seconds INTEGER,
    frame_rate INTEGER,
    resolution TEXT,
    analysis_timestamp TEXT,
    player_count INTEGER,
    average_speed_kmh REAL,
    heatmap_generated_flag INTEGER,
    key_events_count INTEGER,
    pass_success_rate REAL,
    shot_accuracy_percent REAL,
    tactical_pattern_tag TEXT,
    AI_model_version TEXT,
    analyst_name TEXT,
    review_status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);

INSERT INTO Training_Session_Video_Analytics VALUES (1,'SES001','/videos/ses001.mp4',5400,30,'1920x1080','2023-03-01 12:00:00',22,23.5,1,45,0.78,0.62,'HighPress','v1.2','AnalystA','Reviewed','All good','2023-03-01','2023-03-02');
INSERT INTO Training_Session_Video_Analytics VALUES (2,'SES002','/videos/ses002.mp4',3600,60,'3840x2160','2023-04-10 09:30:00',20,21.0,1,30,0.71,0.55,'Possession','v1.3','AnalystB','Pending','Waiting for model update','2023-04-10','2023-04-11');
INSERT INTO Training_Session_Video_Analytics VALUES (3,'SES003','/videos/ses003.mp4',4200,24,'1280x720','2023-05-05 15:45:00',18,20.2,0,25,0.65,0.48,'CounterAttack','v1.2','AnalystC','Reviewed','Minor tracking errors','2023-05-05','2023-05-06');

-- Sponsor Brand Exposure Logs
CREATE TABLE Sponsor_Brand_Exposure_Logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id TEXT,
    campaign_id TEXT,
    exposure_type TEXT,
    platform TEXT,
    impressions INTEGER,
    clicks INTEGER,
    ctr_percent REAL,
    view_time_seconds REAL,
    cost_per_impression_usd REAL,
    start_date TEXT,
    end_date TEXT,
    geographic_region TEXT,
    audience_segment TEXT,
    creative_id TEXT,
    ad_format TEXT,
    frequency_cap INTEGER,
    verified_flag INTEGER,
    verification_date TEXT,
    notes TEXT,
    created_at TEXT
);

INSERT INTO Sponsor_Brand_Exposure_Logs VALUES (1,'SP001','CMP100','Video','Streaming','1500000',45000,3.0,12.5,0.005,'2023-01-01','2023-03-31','Europe','Adults 18-35','CRTV001','PreRoll',3,1,'2023-04-01','High engagement in Q1','2023-04-02');
INSERT INTO Sponsor_Brand_Exposure_Logs VALUES (2,'SP002','CMP200','Banner','Website','800000',12000,1.5,0,0.001,'2023-02-15','2023-05-15','NorthAmerica','Fans','BANN123','Leaderboard',5,1,'2023-05-20','Consistent CTR','2023-05-21');
INSERT INTO Sponsor_Brand_Exposure_Logs VALUES (3,'SP003','CMP300','Social','Instagram','500000',25000,5.0,8.2,0.008,'2023-03-01','2023-06-30','Asia','Youth','SOC567','Story',2,0,NULL,'Pending verification','2023-06-01');