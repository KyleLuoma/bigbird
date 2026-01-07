-- Digital infrastructure metrics for club facilities
CREATE TABLE Digital_Infrastructure (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    network_id INTEGER,
    fiber_capacity_gbps INTEGER,
    wifi_access_points INTEGER,
    avg_latency_ms INTEGER,
    packet_loss_pct REAL,
    security_incidents INTEGER,
    datacenter_name TEXT,
    rack_count INTEGER,
    power_usage_kw REAL,
    cooling_efficiency REAL,
    backup_frequency_hr INTEGER,
    firmware_version TEXT,
    monitoring_tool TEXT,
    last_audit_date TEXT,
    isp_provider TEXT,
    bandwidth_utilization_pct REAL,
    vpn_tunnels_active INTEGER,
    ddos_protection_level TEXT,
    ssl_cert_expiry_date TEXT,
    ipv6_enabled INTEGER,
    notes TEXT
);
INSERT INTO Digital_Infrastructure VALUES (1,101,10,250,35,0.02,2,'DC_North',150,1200.5,0.85,24,'v1.4','Nagios','2024-06-15','FiberNet',68.5,12,'High','2025-03-01',1,'Primary hub');
INSERT INTO Digital_Infrastructure VALUES (2,102,20,340,28,0.01,0,'DC_South',200,1500.0,0.90,12,'v2.0','Zabbix','2024-07-01','NetLink',74.2,8,'Medium','2025-12-31',1,'Secondary hub');
INSERT INTO Digital_Infrastructure VALUES (3,103,5,120,45,0.05,5,'DC_East',80,800.3,0.78,48,'v1.2','SolarWinds','2024-05-20','SpeedConnect',55.0,5,'Low','2024-11-30',0,'Backup site');

-- Heatmap analytics derived from fan positioning systems
CREATE TABLE Fan_Heatmap_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    heatmap_version TEXT,
    average_density REAL,
    peak_density REAL,
    zone1_density REAL,
    zone2_density REAL,
    zone3_density REAL,
    zone4_density REAL,
    zone5_density REAL,
    zone6_density REAL,
    zone7_density REAL,
    zone8_density REAL,
    zone9_density REAL,
    zone10_density REAL,
    total_events INTEGER,
    avg_stay_seconds REAL,
    mobile_device_ratio REAL,
    wifi_usage_pct REAL,
    sensor_error_rate REAL,
    collection_timestamp TEXT,
    analyst_name TEXT,
    notes TEXT
);
INSERT INTO Fan_Heatmap_Analytics VALUES (1,5001,'v1','0.45','2.3','0.30','0.40','0.55','0.60','0.50','0.45','0.35','0.40','0.38','0.42','12000','45.2','0.78','65.1','0.02','2024-09-10 19:15:00','Analyst_A','Initial deployment');
INSERT INTO Fan_Heatmap_Analytics VALUES (2,5002,'v1','0.48','2.5','0.32','0.42','0.58','0.62','0.52','0.47','0.37','0.44','0.40','0.46','13500','48.7','0.81','66.3','0.015','2024-09-11 20:05:00','Analyst_B','Post‑match refinement');
INSERT INTO Fan_Heatmap_Analytics VALUES (3,5003,'v2','0.52','2.8','0.35','0.45','0.61','0.65','0.55','0.50','0.40','0.48','0.43','0.49','15000','50.1','0.85','68.0','0.01','2024-09-12 18:45:00','Analyst_C','New sensor grid');

-- Water system performance metrics for stadiums
CREATE TABLE Stadium_Water_Systems (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    water_source_type TEXT,
    daily_consumption_m3 REAL,
    recycling_rate_pct REAL,
    filtration_type TEXT,
    pump_capacity_kw REAL,
    storage_tank_capacity_m3 REAL,
    leak_detection_sensitivity TEXT,
    maintenance_cycle_days INTEGER,
    last_maintenance_date TEXT,
    avg_pressure_bar REAL,
    water_quality_score INTEGER,
    avg_temperature_c REAL,
    chlorination_level_mg_per_l REAL,
    uv_disinfection_status TEXT,
    smart_meter_installed INTEGER,
    cost_per_m3 REAL,
    sustainability_certification TEXT,
    notes TEXT
);
INSERT INTO Stadium_Water_Systems VALUES (1,10,'Municipal',3500.5,45.0,'Sand',120.0,5000.0,'High',180,'2024-06-01',3.5,92,22.1,0.8,'Enabled',1,0.12,'LEED_Gold','Primary system');
INSERT INTO Stadium_Water_Systems VALUES (2,11,'Rainwater',1250.0,78.0,'Carbon',80.0,2000.0,'Medium',365,'2023-12-15',2.9,96,19.5,0.5,'Enabled',1,0.08,'LEED_Platinum','Supplemental tanks');
INSERT INTO Stadium_Water_Systems VALUES (3,12,'Well',2100.3,30.0,'Reverse_Osmosis',100.0,3000.0,'Low',90,'2024-03-20',3.2,88,21.0,0.7,'Disabled',0,0.15,'None','Backup supply');

-- Cryptocurrency token economics for clubs
CREATE TABLE Club_Crypto_Token_Economics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    token_name TEXT,
    token_symbol TEXT,
    launch_date TEXT,
    total_supply BIGINT,
    circulating_supply BIGINT,
    market_cap_usd REAL,
    price_usd REAL,
    daily_volume_usd REAL,
    holders_count INTEGER,
    staking_ratio_pct REAL,
    governance_votes INTEGER,
    smart_contract_address TEXT,
    platform TEXT,
    audit_status TEXT,
    regulatory_compliance TEXT,
    token_swap_allowed INTEGER,
    burn_rate_pct REAL,
    community_engagement_score REAL,
    notes TEXT,
    last_updated TEXT
);
INSERT INTO Club_Crypto_Token_Economics VALUES (1,5,'ClubCoin','CLB','2022-01-15',100000000,75000000,1500000.0,0.02,50000.0,12000,5.2,350,'0xABC123','Ethereum','Passed','Compliant',1,0.5,78.5,'Initial launch','2024-08-01');
INSERT INTO Club_Crypto_Token_Economics VALUES (2,6,'FanToken','FNT','2023-03-10',50000000,30000000,800000.0,0.026,25000.0,8000,3.8,210,'0xDEF456','BinanceSmartChain','Pending','Compliant',0,0.3,62.0,'Second phase','2024-07-15');
INSERT INTO Club_Crypto_Token_Economics VALUES (3,7,'SupporterCoin','SPC','2021-11-05',200000000,150000000,2500000.0,0.017,75000.0,25000,6.1,500,'0x789XYZ','Polygon','Passed','Compliant',1,0.4,85.0,'Mature token','2024-07-30');

-- Travel carbon emissions tracking for team logistics
CREATE TABLE Travel_Carbon_Emissions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    travel_type TEXT,
    distance_km REAL,
    emissions_kgco2 REAL,
    passengers INTEGER,
    travel_date TEXT,
    transport_provider TEXT,
    vehicle_type TEXT,
    fuel_efficiency_l_per_100km REAL,
    carbon_offset_used INTEGER,
    offset_provider TEXT,
    offset_amount_kgco2 REAL,
    carbon_intensity_score REAL,
    audit_status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    region TEXT,
    trip_purpose TEXT,
    mitigation_plan TEXT
);
INSERT INTO Travel_Carbon_Emissions VALUES (1,4,'Flight',1550.0,3420.5,20,'2024-04-12','AirWays','Boeing737',3.5,1,'GreenAir','3400.0',0.95,'Approved','Season opener','2024-04-01','2024-04-13','Europe','League match','Invest in biofuel');
INSERT INTO Travel_Carbon_Emissions VALUES (2,5,'Bus',420.0,84.0,30,'2024-05-20','TransitCo','Coach','12.0',0,NULL,0.0,0.30,'Pending','Training camp','2024-05-10','2024-05-21','Asia','Pre‑season','Switch to electric buses');
INSERT INTO Travel_Carbon_Emissions VALUES (3,6,'Train',800.0,96.0,25,'2024-06-05','RailLines','HighSpeed','5.0',1,'CarbonNeutral','95.0',0.85,'Approved','Away game','2024-05-28','2024-06-06','America','League match','Increase rail usage');

-- Social media trend analytics for media platforms
CREATE TABLE Media_Social_Trend_Analytics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    platform TEXT,
    metric_date TEXT,
    mentions_count INTEGER,
    sentiment_score REAL,
    top_hashtag TEXT,
    reach_estimate INTEGER,
    engagement_rate REAL,
    video_views INTEGER,
    story_views INTEGER,
    live_streams INTEGER,
    influencer_participation INTEGER,
    campaign_id INTEGER,
    brand_mentions INTEGER,
    geographic_focus TEXT,
    demographic_target TEXT,
    ad_spend_usd REAL,
    cpm_usd REAL,
    cpc_usd REAL,
    conversion_rate REAL,
    notes TEXT,
    last_synced TEXT
);
INSERT INTO Media_Social_Trend_Analytics VALUES (1,'Twitter','2024-09-10',12500,0.42,'#ChampionsLeague',3500000,2.5,45000,12000,5,2001,800,'EU','18-34',250000.0,5.0,0.75,1.8,'Quarter final buzz','2024-09-11 08:00');
INSERT INTO Media_Social_Trend_Analytics VALUES (2,'Instagram','2024-09-10',9800,0.48,'#GoalOfTheDay',2800000,3.1,62000,8000,8,2002,650,'EU','18-24',180000.0,6.2,0.60,2.0,'Post‑match highlights','2024-09-11 08:30');
INSERT INTO Media_Social_Trend_Analytics VALUES (3,'TikTok','2024-09-10',15000,0.55,'#SkillShowcase',4200000,4.0,80000,5000,12,2003,900,'EU','15-30',300000.0,4.5,0.55,2.5,'Viral clips','2024-09-11 09:00');

-- Genomic data collected from athletes for training optimization
CREATE TABLE Training_Genomic_Data (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    athlete_id INTEGER,
    sample_date TEXT,
    dna_sequencing_center TEXT,
    genotype_version TEXT,
    mitochondrial_haplogroup TEXT,
    aerobic_capacity_genes_score REAL,
    injury_risk_genes_score REAL,
    recovery_genes_score REAL,
    nutrition_genes_score REAL,
    muscle_fiber_type_pred TEXT,
    elite_potential_score REAL,
    privacy_consent INTEGER,
    data_access_level TEXT,
    analysis_report_url TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    lab_technician TEXT,
    sequencing_method TEXT
);
INSERT INTO Training_Genomic_Data VALUES (1,101,'2024-03-15','GenLabA','v2.1','H1','85.2','40.5','78.9','92.0','TypeII','88.5',1,'Restricted','http://reports/genlabA/101.pdf','Initial genome','2024-03-16','2024-06-01','Tech_Jones','NGS');
INSERT INTO Training_Genomic_Data VALUES (2,102,'2024-04-10','GenLabB','v2.0','U5','78.0','55.2','70.3','85.4','TypeI','81.0',1,'Restricted','http://reports/genlabB/102.pdf','Follow‑up','2024-04-11','2024-07-01','Tech_Smith','Microarray');
INSERT INTO Training_Genomic_Data VALUES (3,103,'2024-05-05','GenLabC','v3.0','J1','90.5','30.1','82.4','95.6','Mixed','92.0',1,'Restricted','http://reports/genlabC/103.pdf','Comprehensive analysis','2024-05-06','2024-08-01','Tech_Lee','NGS');

-- Accessibility aids installed at venues
CREATE TABLE Venue_Accessibility_Aids (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    aid_type TEXT,
    description TEXT,
    location_detail TEXT,
    wheelchair_accessible INTEGER,
    braille_signage INTEGER,
    auditory_assist_enabled INTEGER,
    staff_trained INTEGER,
    maintenance_cycle_days INTEGER,
    last_inspection_date TEXT,
    compliance_status TEXT,
    cost_usd REAL,
    vendor_name TEXT,
    warranty_expiry TEXT,
    notes TEXT,
    installed_by TEXT,
    installation_date TEXT,
    last_updated TEXT,
    accessibility_rating REAL
);
INSERT INTO Venue_Accessibility_Aids VALUES (1,10,'Elevator','High‑capacity elevator','North wing',1,1,1,1,365,'2024-06-01','Compliant',250000.0,'ElevateCo','2027-06-01','Operational','Contractor_A','2022-05-15','2024-07-01',4.5);
INSERT INTO Venue_Accessibility_Aids VALUES (2,11,'Ramp','Loading ramp with tactile strips','East entrance',1,0,0,1,180,'2024-04-12','Compliant',75000.0,'RampWorks','2026-04-12','Near entrance','Contractor_B','2021-03-22','2024-07-05',4.2);
INSERT INTO Venue_Accessibility_Aids VALUES (3,12,'Audio_Induction_Loop','Assistive listening system','West stand',0,0,1,0,730,'2024-01-20','Pending',120000.0,'AcousticsInc','2025-01-20','Testing phase','Contractor_C','2023-09-10','2024-07-10',3.8);

-- Sponsor impact surveys conducted after campaigns
CREATE TABLE Sponsor_Impact_Surveys (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    survey_date TEXT,
    brand_awareness_score REAL,
    purchase_intent_score REAL,
    event_association_score REAL,
    social_media_impact_score REAL,
    net_promoter_score INTEGER,
    respondent_count INTEGER,
    demographic_focus TEXT,
    region TEXT,
    survey_method TEXT,
    comments TEXT,
    analyst_name TEXT,
    data_quality_flag TEXT,
    survey_version TEXT,
    processing_time_days INTEGER,
    follow_up_actions TEXT,
    budget_utilization_pct REAL,
    notes TEXT,
    last_modified TEXT
);
INSERT INTO Sponsor_Impact_Surveys VALUES (1,300,'2024-08-15',78.5,62.3,55.0,70.2,45,1200,'Adults 18-35','EU','Online','Positive response','Analyst_X','Good','v1',14,'Email follow‑up',85.0,'Post‑campaign','2024-08-20');
INSERT INTO Sponsor_Impact_Surveys VALUES (2,301,'2024-09-01',65.0,48.5,40.0,55.5,30,800,'Teens 13-19','EU','Phone','Mixed feedback','Analyst_Y','Fair','v1',21,'Social media retargeting',70.0,'Mid‑season','2024-09-05');
INSERT INTO Sponsor_Impact_Surveys VALUES (3,302,'2024-07-20',82.0,71.0,68.0,78.5,55,1500,'Adults 25-45','EU','In‑person','Highly positive','Analyst_Z','Excellent','v2',7,'Loyalty program rollout',92.5,'Annual summit','2024-07-25');

-- Economic indices for leagues across seasons
CREATE TABLE League_Economic_Indices (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    gdp_per_capita REAL,
    average_ticket_price_usd REAL,
    broadcasting_revenue_musd REAL,
    sponsorship_revenue_musd REAL,
    club_profit_margin_pct REAL,
    wage_to_revenue_ratio_pct REAL,
    inflation_rate_pct REAL,
    exchange_rate_usd_to_local REAL,
    economic_growth_pct REAL,
    fan_spending_index REAL,
    merchandise_sales_usd REAL,
    digital_viewership_million REAL,
    stadium_utilization_pct REAL,
    tax_rate_pct REAL,
    financial_fair_play_score REAL,
    notes TEXT,
    last_updated TEXT,
    data_source TEXT
);
INSERT INTO League_Economic_Indices VALUES (1,10,'2023/2024',42000.0,45.5,350.0,120.0,12.5,55.0,2.1,1.0,3.5,85.0,2500.0,75.0,92.0,30.0,8.5,'Stable growth','2024-08-01','EuroStat');
INSERT INTO League_Economic_Indices VALUES (2,11,'2023/2024',38000.0,38.0,210.0,80.0,10.2,50.0,2.5,0.85,2.8,70.0,1800.0,68.0,88.0,28.0,7.9,'Moderate inflation','2024-08-02','EuroStat');
INSERT INTO League_Economic_Indices VALUES (3,12,'2023/2024',46000.0,52.0,420.0,140.0,13.8,58.0,1.9,1.05,4.0,95.0,3000.0,80.0,95.0,32.0,9.2,'Strong sponsorship','2024-08-03','EuroStat');