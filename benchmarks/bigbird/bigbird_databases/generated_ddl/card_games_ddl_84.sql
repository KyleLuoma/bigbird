-- Tournament season overview with aggregated statistics
CREATE TABLE tournament_season_overview (
    season_id INTEGER PRIMARY KEY,
    season_name TEXT,
    start_date DATE,
    end_date DATE,
    total_prize_pool REAL,
    number_of_events INTEGER,
    average_players_per_event REAL,
    featured_game_mode TEXT,
    champion_player_id INTEGER,
    runnerup_player_id INTEGER,
    sponsor_main TEXT,
    sponsor_secondary TEXT,
    region TEXT,
    online_offline TEXT,
    broadcast_partner TEXT,
    official_ruleset_version TEXT,
    meta_popularity_score REAL,
    attendance_estimate INTEGER,
    social_media_impressions INTEGER,
    seo_rank INTEGER,
    notes TEXT,
    created_at DATE
);
INSERT INTO tournament_season_overview VALUES (1,'Spring2024','2024-03-01','2024-05-31',50000.0,12,150.5,'Standard',101,202,'AlphaGames','BetaEnterprises','NA','Online','StreamHub','v2.5',87.3,18000,500000,3,'First season of the year','2024-02-15');
INSERT INTO tournament_season_overview VALUES (2,'Summer2024','2024-06-01','2024-08-31',75000.0,15,165.2,'Modern',103,204,'GammaSponsors','DeltaPartners','EU','Hybrid','EuroStream','v2.6',91.5,22000,750000,2,'Mid‑year push','2024-05-20');
INSERT INTO tournament_season_overview VALUES (3,'Fall2024','2024-09-01','2024-11-30',62000.0,13,140.0,'Legacy',105,206,'EpsilonCorp','ZetaGroup','APAC','Offline','AsiaCast','v2.7',84.0,17000,620000,4,'Autumn finale','2024-08-10');

-- Player fitness programs linked to competitive performance
CREATE TABLE player_fitness_programs (
    program_id INTEGER PRIMARY KEY,
    player_id INTEGER,
    program_name TEXT,
    start_date DATE,
    end_date DATE,
    trainer_name TEXT,
    weekly_sessions INTEGER,
    session_duration_minutes INTEGER,
    cardio_minutes_per_week INTEGER,
    strength_sessions_per_week INTEGER,
    flexibility_sessions_per_week INTEGER,
    diet_plan TEXT,
    calorie_target INTEGER,
    hydration_liters_per_day REAL,
    sleep_hours_target REAL,
    injury_prevention_notes TEXT,
    performance_metric_before REAL,
    performance_metric_after REAL,
    program_status TEXT,
    last_updated DATE,
    comments TEXT,
    created_at DATE
);
INSERT INTO player_fitness_programs VALUES (1,101,'Elite Conditioning','2024-01-01','2024-06-30','CoachA',5,90,150,3,2,'HighProtein','3000',2.5,8.0,'Knee brace recommended',78.5,85.2,'Active','2024-05-01','Good progress','2024-01-05');
INSERT INTO player_fitness_programs VALUES (2,102,'Core Strength','2024-02-15','2024-07-15','CoachB',4,75,120,2,3,'Balanced','2800',2.2,7.5,'Shoulder mobility drills',70.0,77.4,'Active','2024-05-10','Improved stamina','2024-02-20');
INSERT INTO player_fitness_programs VALUES (3,103,'Endurance Boost','2024-03-01','2024-08-31','CoachC',6,80,200,4,1,'LowCarb','2500',3.0,8.5,'Ankle support tape',82.1,88.9,'Planned','2024-05-15','Scheduled start','2024-03-05');

-- Energy consumption logs for venues
CREATE TABLE venue_energy_consumption_log (
    log_id INTEGER PRIMARY KEY,
    venue_id INTEGER,
    log_date DATE,
    electricity_kwh REAL,
    gas_therms REAL,
    water_liters REAL,
    renewable_percentage REAL,
    peak_demand_kw REAL,
    average_load_kw REAL,
    co2_emissions_kg REAL,
    temperature_celsius REAL,
    humidity_percent REAL,
    maintenance_notes TEXT,
    recorded_by TEXT,
    created_at DATE,
    updated_at DATE,
    anomaly_flag INTEGER,
    energy_cost_usd REAL,
    device_count INTEGER,
    sensor_id INTEGER,
    notes TEXT,
    source_system TEXT
);
INSERT INTO venue_energy_consumption_log VALUES (1,10,'2024-04-01',12450.5,320.0,45000.0,42.5,850.0,560.0,11200.0,22.5,45.0,'HVAC filter replaced','AdminA','2024-04-02','2024-04-02',0,2450.75,150,301,'Normal day','SCADA');
INSERT INTO venue_energy_consumption_log VALUES (2,11,'2024-04-01',9800.0,210.5,38000.0,38.0,720.0,480.0,8700.0,21.0,50.0,'No issues','AdminB','2024-04-02','2024-04-02',0,1920.50,130,302,'Normal day','SCADA');
INSERT INTO venue_energy_consumption_log VALUES (3,12,'2024-04-01',13400.2,410.3,50000.0,45.0,910.0,600.0,12300.0,23.0,48.0,'Solar panel cleaning performed','AdminC','2024-04-02','2024-04-02',0,2640.30,170,303,'Normal day','SCADA');

-- Leasing records for digital collectibles
CREATE TABLE digital_collectible_lease (
    lease_id INTEGER PRIMARY KEY,
    collectible_id TEXT,
    lessee_user_id INTEGER,
    lease_start DATE,
    lease_end DATE,
    lease_price_usd REAL,
    auto_renew INTEGER,
    payment_method TEXT,
    lease_terms TEXT,
    collateral_amount_usd REAL,
    status TEXT,
    renewal_notice_sent DATE,
    created_at DATE,
    updated_at DATE,
    lease_manager TEXT,
    notes TEXT,
    external_reference TEXT,
    insurance_covered INTEGER,
    insurance_provider TEXT,
    insurance_policy_number TEXT,
    last_payment_date DATE,
    late_fee_applied INTEGER
);
INSERT INTO digital_collectible_lease VALUES (1,'COLL001',501,'2024-03-01','2024-06-01',150.0,1,'CreditCard','Monthly',300.0,'Active','2024-05-25','2024-02-20','2024-05-01','ManagerA','First lease','REF123',1,'InsureCo','POL001','2024-04-30',0);
INSERT INTO digital_collectible_lease VALUES (2,'COLL002',502,'2024-04-15','2024-07-15',200.0,0,'PayPal','Quarterly',400.0,'Pending','2024-07-01','2024-04-10','2024-04-15','ManagerB','Awaiting payment','REF124',0,'','',NULL,0);
INSERT INTO digital_collectible_lease VALUES (3,'COLL003',503,'2024-05-01','2024-08-01',180.0,1,'BankTransfer','Monthly',350.0,'Active','2024-07-25','2024-04-25','2024-05-01','ManagerC','Renewal due soon','REF125',1,'SafeGuard','POL002','2024-06-30',0);

-- Experiments on magical theory and game balance
CREATE TABLE magic_theory_experiments (
    experiment_id INTEGER PRIMARY KEY,
    hypothesis TEXT,
    lead_scientist TEXT,
    start_date DATE,
    end_date DATE,
    methodology TEXT,
    sample_size INTEGER,
    variables_tested TEXT,
    results_summary TEXT,
    p_value REAL,
    significance_level REAL,
    peer_review_status TEXT,
    publication_doi TEXT,
    funding_source TEXT,
    budget_usd REAL,
    equipment_used TEXT,
    lab_location TEXT,
    data_repository_link TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    experiment_status TEXT,
    related_project_id INTEGER
);
INSERT INTO magic_theory_experiments VALUES (1,'Casting speed increases with lower mana cost','DrMira','2024-01-10','2024-02-20','Controlled simulation','120','ManaCost,CastTime','Reduced cast time observed',0.032,0.05,'Approved','10.1234/mtx.2024.001','ArcaneFund',50000.0,'HighSpeedTimer','LabA','http://data.repo/exp1','No anomalies','2024-01-10','2024-02-20','Completed',101);
INSERT INTO magic_theory_experiments VALUES (2,'Elemental affinity affects damage variance','ProfElric','2024-03-01','2024-04-15','Field testing','200','ElementType,Damage','Variance within expected range',0.210,0.05,'Pending','10.1234/mtx.2024.002','ElementGrant',75000.0,'ElementalChambers','LabB','http://data.repo/exp2','Higher variance for fire','2024-03-01','2024-04-15','InProgress',102);
INSERT INTO magic_theory_experiments VALUES (3,'Dual‑color decks have higher win rates','DrLena','2024-05-05','2024-06-30','Tournament analysis','350','ColorCombination,WinRate','Significant win advantage detected',0.004,0.01,'Approved','10.1234/mtx.2024.003','DualColor Initiative',90000.0,'StatisticalSoftware','LabC','http://data.repo/exp3','Further study needed','2024-05-05','2024-06-30','Planned',103);

-- Media assets provided by sponsors
CREATE TABLE sponsor_media_assets (
    asset_id INTEGER PRIMARY KEY,
    sponsor_id INTEGER,
    asset_type TEXT,
    file_name TEXT,
    file_path TEXT,
    upload_date DATE,
    file_size_bytes INTEGER,
    resolution TEXT,
    duration_seconds INTEGER,
    format TEXT,
    usage_rights TEXT,
    campaign_name TEXT,
    target_audience TEXT,
    geographic_target TEXT,
    language TEXT,
    activation_start DATE,
    activation_end DATE,
    impressions_target INTEGER,
    clicks_target INTEGER,
    cost_usd REAL,
    approved_by TEXT,
    approval_status TEXT,
    notes TEXT
);
INSERT INTO sponsor_media_assets VALUES (1,201,'Video','promo1.mp4','/assets/sponsor1/','2024-02-01',10485760,'1920x1080',30,'MP4','Unlimited','SpringBlast','Adults','NA','EN','2024-03-01','2024-04-30',500000,20000,15000.0,'ManagerA','Approved','High quality');
INSERT INTO sponsor_media_assets VALUES (2,202,'Banner','banner_banner2.png','/assets/sponsor2/','2024-02-15',524288,'728x90',0,'PNG','Limited','SummerSplash','Teens','EU','EN','2024-06-01','2024-07-31',300000,12000,8000.0,'ManagerB','Pending','Awaiting review');
INSERT INTO sponsor_media_assets VALUES (3,203,'Audio','jingle3.wav','/assets/sponsor3/','2024-03-10',2097152,'','45','WAV','Unlimited','FallFest','All','APAC','EN','2024-09-01','2024-10-31',400000,15000,12000.0,'ManagerC','Approved','Used in streams');

-- Records of streaming quality incidents
CREATE TABLE streaming_quality_incidents (
    incident_id INTEGER PRIMARY KEY,
    stream_id TEXT,
    incident_timestamp DATETIME,
    severity_level TEXT,
    description TEXT,
    affected_viewers INTEGER,
    avg_bit_rate_kbps REAL,
    resolution TEXT,
    dropped_frames INTEGER,
    reconnects INTEGER,
    mitigation_action TEXT,
    resolved_timestamp DATETIME,
    resolved_by TEXT,
    incident_status TEXT,
    reported_by TEXT,
    platform TEXT,
    region TEXT,
    network_provider TEXT,
    cause TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE
);
INSERT INTO streaming_quality_incidents VALUES (1,'STREAM001','2024-04-12 14:35:00','High','Buffering spikes','1500',2500.5,'1080p',120,3,'Reduced bitrate','2024-04-12 14:45:00','TechLead','Resolved','OpsTeam','StreamHub','NA','ISP_A','Network congestion','Mitigated','2024-04-12','2024-04-12');
INSERT INTO streaming_quality_incidents VALUES (2,'STREAM002','2024-04-15 09:20:00','Medium','Audio desync','800',1800.0,'720p',0,1,'Resynced audio','2024-04-15 09:25:00','AudioEng','Resolved','QA','StreamHub','EU','ISP_B','Codec issue','No further impact','2024-04-15','2024-04-15');
INSERT INTO streaming_quality_incidents VALUES (3,'STREAM003','2024-04-20 20:05:00','Low','Minor pixelation','300',3500.0','4K',5,0,'Adjusted encoder settings','2024-04-20 20:08:00','EncoderTech','Resolved','Monitoring','StreamHub','APAC','ISP_C','Encoder bug','Fixed','2024-04-20','2024-04-20');

-- Survey feedback on new game mechanics
CREATE TABLE game_mechanics_feedback_surveys (
    survey_id INTEGER PRIMARY KEY,
    mechanic_id TEXT,
    survey_date DATE,
    respondent_user_id INTEGER,
    rating INTEGER,
    feedback_text TEXT,
    complexity_score REAL,
    balance_score REAL,
    enjoyment_score REAL,
    suggested_changes TEXT,
    time_spent_minutes INTEGER,
    device_type TEXT,
    os_version TEXT,
    app_version TEXT,
    location TEXT,
    language TEXT,
    ip_address TEXT,
    consent_given INTEGER,
    survey_status TEXT,
    created_at DATE,
    updated_at DATE,
    analyst TEXT,
    notes TEXT
);
INSERT INTO game_mechanics_feedback_surveys VALUES (1,'MECH001','2024-03-10',301,4,'Smooth integration','2.5','8.0','9.0','Add more variants',12,'Desktop','Windows10','v1.3','NA','EN','192.168.1.10',1,'Complete','2024-03-10','2024-03-10','AnalystA','Positive feedback');
INSERT INTO game_mechanics_feedback_surveys VALUES (2,'MECH002','2024-04-01',302,2,'Too complex','7.8','5.0','4.5','Simplify rules',20,'Mobile','Android11','v1.4','EU','FR','10.0.0.2',1,'Complete','2024-04-01','2024-04-01','AnalystB','Needs redesign');
INSERT INTO game_mechanics_feedback_surveys VALUES (3,'MECH003','2024-04-20',303,5,'Excellent balance','1.8','9.5','9.8','No changes needed',8,'Tablet','iOS14','v1.5','APAC','EN','172.16.0.5',1,'Complete','2024-04-20','2024-04-20','AnalystC','Highly praised');

-- Sponsor contributions to community events
CREATE TABLE community_event_sponsor_contributions (
    contribution_id INTEGER PRIMARY KEY,
    event_id INTEGER,
    sponsor_id INTEGER,
    contribution_type TEXT,
    amount_usd REAL,
    in_kind_description TEXT,
    acknowledged BOOLEAN,
    acknowledgment_text TEXT,
    contribution_date DATE,
    receipt_sent DATE,
    tax_deductible INTEGER,
    tax_receipt_number TEXT,
    contract_signed DATE,
    contract_end DATE,
    exposure_level TEXT,
    branding_spots INTEGER,
    social_media_mentions INTEGER,
    post_event_report TEXT,
    notes TEXT,
    created_at DATE,
    updated_at DATE,
    approved_by TEXT
);
INSERT INTO community_event_sponsor_contributions VALUES (1,401,301,'Cash',5000.0,'','1','Thank you for your support','2024-01-15','2024-01-20',1,'TRN001','2024-01-10','2024-12-31','High',3,150,'Positive impact','','2024-01-15','2024-01-20','DirectorA');
INSERT INTO community_event_sponsor_contributions VALUES (2,402,302,'InKind','0','GraphicDesignServices','1','Appreciated graphic work','2024-02-05','2024-02-10',0,'','2024-02-01','2024-11-30','Medium',1,50,'Designs well received','','2024-02-05','2024-02-10','DirectorB');
INSERT INTO community_event_sponsor_contributions VALUES (3,403,303,'Cash',10000.0,'','1','Major sponsor for gala','2024-03-01','2024-03-05',1,'TRN003','2024-02-20','2024-08-20','VeryHigh',5,300,'Event exceeded expectations','','2024-03-01','2024-03-05','DirectorC');

-- Scheduling for artifact forging projects
CREATE TABLE artifact_forging_schedule (
    schedule_id INTEGER PRIMARY KEY,
    forge_id INTEGER,
    artifact_type TEXT,
    start_date DATE,
    projected_end_date DATE,
    actual_end_date DATE,
    material_primary TEXT,
    material_secondary TEXT,
    artisan_name TEXT,
    estimated_cost_usd REAL,
    actual_cost_usd REAL,
    quality_grade TEXT,
    inspection_status TEXT,
    inspection_date DATE,
    notes TEXT,
    created_by TEXT,
    created_at DATE,
    updated_at DATE,
    status TEXT,
    priority_level TEXT,
    maintenance_required INTEGER,
    next_maintenance_date DATE,
    comments TEXT
);
INSERT INTO artifact_forging_schedule VALUES (1,601,'Sword','2024-02-01','2024-04-01','2024-04-02','Mithril','Gold','ArtisanA',15000.0,15200.0,'A','Passed','2024-04-03','Sharp edge required','SupervisorA','2024-02-01','2024-04-03','Completed','High',0,NULL,'Finalized');
INSERT INTO artifact_forging_schedule VALUES (2,602,'Amulet','2024-03-15','2024-05-15',NULL,'Obsidian','Silver','ArtisanB',8000.0,NULL,'B','Pending',NULL,'Awaiting final polishing','SupervisorB','2024-03-15','2024-05-01','InProgress','Medium',1,'2024-10-15','Scheduled maintenance');
INSERT INTO artifact_forging_schedule VALUES (3,603,'Staff','2024-04-20','2024-07-20',NULL,'ElderWood','Crystal','ArtisanC',12000.0,NULL,'A','Pending',NULL,'Design approved','SupervisorC','2024-04-20','2024-04-20','Planned','Low',0,NULL,'Design phase');