-- Broadcast Satellite Frequencies
CREATE TABLE Broadcast_Satellite_Frequencies (
    freq_id INTEGER PRIMARY KEY AUTOINCREMENT,
    satellite TEXT,
    freq_mhz INTEGER,
    bandwidth_mhz INTEGER,
    polarization TEXT,
    region_coverage TEXT,
    operator TEXT,
    lease_start_date TEXT,
    lease_end_date TEXT,
    cost_per_month REAL,
    uplink_power_watts INTEGER,
    downlink_power_watts INTEGER,
    modulation TEXT,
    encryption TEXT,
    status TEXT,
    frequency_band TEXT,
    transponder_id TEXT,
    orbital_slot TEXT,
    satellite_weight_kg INTEGER,
    launch_vehicle TEXT,
    launch_date TEXT,
    expected_lifetime_years INTEGER
);
INSERT INTO Broadcast_Satellite_Frequencies (satellite,freq_mhz,bandwidth_mhz,polarization,region_coverage,operator,lease_start_date,lease_end_date,cost_per_month,uplink_power_watts,downlink_power_watts,modulation,encryption,status,frequency_band,transponder_id,orbital_slot,satellite_weight_kg,launch_vehicle,launch_date,expected_lifetime_years) VALUES ('Eutelsat09B',11500,36,'Linear','Europe','Eutelsat','2022-01-01','2027-12-31',15000.5,150,200,'QPSK','AES128','Active','Ku','TS12','75W',4500,'Ariane5','2021-09-15',15);
INSERT INTO Broadcast_Satellite_Frequencies (satellite,freq_mhz,bandwidth_mhz,polarization,region_coverage,operator,lease_start_date,lease_end_date,cost_per_month,uplink_power_watts,downlink_power_watts,modulation,encryption,status,frequency_band,transponder_id,orbital_slot,satellite_weight_kg,launch_vehicle,launch_date,expected_lifetime_years) VALUES ('SESAT2',11200,27,'Circular','NorthAmerica','SES','2021-05-01','2026-04-30',18000.75,170,210,'8PSK','NONE','Active','C','TS08','45E',3500,'Falcon9','2020-11-20',12);
INSERT INTO Broadcast_Satellite_Frequencies (satellite,freq_mhz,bandwidth_mhz,polarization,region_coverage,operator,lease_start_date,lease_end_date,cost_per_month,uplink_power_watts,downlink_power_watts,modulation,encryption,status,frequency_band,transponder_id,orbital_slot,satellite_weight_kg,launch_vehicle,launch_date,expected_lifetime_years) VALUES ('Intelsat33e',11800,45,'Linear','Asia','Intelsat','2023-03-15','2029-03-14',22000.0,200,250,'QAM','AES256','Planned','Ka','TS20','140E',6200,'Ariane6','2022-08-01',18);

-- Stadium Environmental Sensors
CREATE TABLE Stadium_Environmental_Sensors (
    sensor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    sensor_type TEXT,
    location TEXT,
    install_date TEXT,
    calibration_date TEXT,
    last_maintenance TEXT,
    battery_level_percent INTEGER,
    reading_value REAL,
    unit TEXT,
    alert_threshold REAL,
    status TEXT,
    firmware_version TEXT,
    manufacturer TEXT,
    ip_address TEXT,
    mac_address TEXT,
    data_interval_sec INTEGER,
    last_reported TEXT,
    maintenance_contact TEXT,
    notes TEXT
);
INSERT INTO Stadium_Environmental_Sensors (stadium_id,sensor_type,location,install_date,calibration_date,last_maintenance,battery_level_percent,reading_value,unit,alert_threshold,status,firmware_version,manufacturer,ip_address,mac_address,data_interval_sec,last_reported,maintenance_contact,notes) VALUES (1,'Temperature','NorthStand','2021-06-01','2022-06-01','2023-01-10',85,22.5,'C',30.0,'OK','v1.2','SensTech','192.168.10.20','AA:BB:CC:DD:EE:01',300,'2023-03-01','John Doe','Installed during renovation');
INSERT INTO Stadium_Environmental_Sensors (stadium_id,sensor_type,location,install_date,calibration_date,last_maintenance,battery_level_percent,reading_value,unit,alert_threshold,status,firmware_version,manufacturer,ip_address,mac_address,data_interval_sec,last_reported,maintenance_contact,notes) VALUES (2,'Humidity','SouthStadium','2020-11-15','2021-11-15','2023-02-20',70,45.0,'%',60.0,'OK','v2.0','EnviroSense','192.168.20.30','AA:BB:CC:DD:EE:02',600,'2023-02-28','Maria Lee','Calibrated annually');
INSERT INTO Stadium_Environmental_Sensors (stadium_id,sensor_type,location,install_date,calibration_date,last_maintenance,battery_level_percent,reading_value,unit,alert_threshold,status,firmware_version,manufacturer,ip_address,mac_address,data_interval_sec,last_reported,maintenance_contact,notes) VALUES (3,'CO2','Roof','2022-01-10','2022-12-10','2023-03-05',90,400.0,'ppm',800.0,'OK','v1.5','AirMon','192.168.30.40','AA:BB:CC:DD:EE:03',900,'2023-03-02','Liam Smith','Part of green initiative');

-- Sponsor Creative Assets
CREATE TABLE Sponsor_Creative_Assets (
    asset_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    asset_type TEXT,
    file_name TEXT,
    file_format TEXT,
    resolution TEXT,
    size_mb REAL,
    created_date TEXT,
    approved_by TEXT,
    usage_rights TEXT,
    campaign_id INTEGER,
    target_audience TEXT,
    platform TEXT,
    start_date TEXT,
    end_date TEXT,
    click_through_rate REAL,
    impressions INTEGER,
    conversions INTEGER,
    cost REAL,
    creative_brief TEXT,
    status TEXT
);
INSERT INTO Sponsor_Creative_Assets (sponsor_id,asset_type,file_name,file_format,resolution,size_mb,created_date,approved_by,usage_rights,campaign_id,target_audience,platform,start_date,end_date,click_through_rate,impressions,conversions,cost,creative_brief,status) VALUES (10,'Banner','sponsor_banner_01','png','1920x1080',2.4,'2023-01-05','Emma Green','Exclusive',101,'Fans18-35','Web','2023-02-01','2023-04-30',0.025,500000,12500,12000.00,'Promote new product line','Active');
INSERT INTO Sponsor_Creative_Assets (sponsor_id,asset_type,file_name,file_format,resolution,size_mb,created_date,approved_by,usage_rights,campaign_id,target_audience,platform,start_date,end_date,click_through_rate,impressions,conversions,cost,creative_brief,status) VALUES (12,'Video','sponsor_video_qa','mp4','1280x720',45.0,'2023-02-10','Oliver Brown','Limited',102,'AllFans','Social','2023-03-15','2023-06-15',0.018,800000,14400,25000.00,'Highlight brand story','Pending');
INSERT INTO Sponsor_Creative_Assets (sponsor_id,asset_type,file_name,file_format,resolution,size_mb,created_date,approved_by,usage_rights,campaign_id,target_audience,platform,start_date,end_date,click_through_rate,impressions,conversions,cost,creative_brief,status) VALUES (15,'Banner','sponsor_banner_02','jpg','1600x900',1.8,'2023-03-01','Sophia White','Exclusive',103,'Fans25-45','App','2023-04-01','2023-07-31',0.030,600000,18000,15000.00,'Seasonal promotion','Active');

-- League Analytics Models
CREATE TABLE League_Analytics_Models (
    model_id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    model_name TEXT,
    version TEXT,
    algorithm TEXT,
    training_start_date TEXT,
    training_end_date TEXT,
    accuracy REAL,
    precision REAL,
    recall REAL,
    f1_score REAL,
    feature_set TEXT,
    hyperparameters TEXT,
    target_variable TEXT,
    data_source TEXT,
    last_updated TEXT,
    deployed_environment TEXT,
    owner TEXT,
    documentation_url TEXT,
    status TEXT
);
INSERT INTO League_Analytics_Models (league_id,model_name,version,algorithm,training_start_date,training_end_date,accuracy,precision,recall,f1_score,feature_set,hyperparameters,target_variable,data_source,last_updated,deployed_environment,owner,documentation_url,status) VALUES (1,'MatchOutcomePredictor','1.0','RandomForest','2022-09-01','2022-11-30',0.87,0.85,0.84,0.845,'PlayerStats+TeamForm','max_depth=10;trees=200','WinLoss','MatchData','2023-01-15','AWS','DataScienceTeam','http://docs.league/models/MatchOutcomePredictor','Production');
INSERT INTO League_Analytics_Models (league_id,model_name,version,algorithm,training_start_date,training_end_date,accuracy,precision,recall,f1_score,feature_set,hyperparameters,target_variable,data_source,last_updated,deployed_environment,owner,documentation_url,status) VALUES (2,'AttendanceForecast','2.1','XGBoost','2023-01-05','2023-03-10',0.92,0.90,0.91,0.905,'Weather+TeamPopularity','eta=0.1;max_depth=6','Attendance','TicketData','2023-04-01','GCP','AnalyticsDept','http://docs.league/models/AttendanceForecast','Staging');
INSERT INTO League_Analytics_Models (league_id,model_name,version,algorithm,training_start_date,training_end_date,accuracy,precision,recall,f1_score,feature_set,hyperparameters,target_variable,data_source,last_updated,deployed_environment,owner,documentation_url,status) VALUES (3,'PlayerInjuryRisk','0.9','LogisticRegression','2022-03-15','2022-06-20',0.78,0.80,0.76,0.78,'PhysicalMetrics+MatchLoad','C=1.0;penalty=l2','Injury','MedicalData','2022-07-01','OnPrem','MedicalTeam','http://docs.league/models/PlayerInjuryRisk','Testing');

-- Fan Digital Badge Earned
CREATE TABLE Fan_Digital_Badge_Earned (
    badge_id INTEGER PRIMARY KEY AUTOINCREMENT,
    fan_id INTEGER,
    badge_name TEXT,
    tier TEXT,
    earned_date TEXT,
    expiration_date TEXT,
    points INTEGER,
    associated_event TEXT,
    badge_category TEXT,
    description TEXT,
    status TEXT,
    issuer TEXT,
    rarity TEXT,
    image_file TEXT,
    shareable INTEGER,
    notification_sent INTEGER,
    last_viewed TEXT,
    redemption_code TEXT,
    loyalty_level TEXT,
    notes TEXT
);
INSERT INTO Fan_Digital_Badge_Earned (fan_id,badge_name,tier,earned_date,expiration_date,points,associated_event,badge_category,description,status,issuer,rarity,image_file,shareable,notification_sent,last_viewed,redemption_code,loyalty_level,notes) VALUES (2001,'SuperFan','Gold','2023-02-20','2024-02-20',150,'SeasonKickoff','Engagement','Awarded for early season ticket purchase','Active','ClubHQ','Rare','badge_superfan.png',1,1,'2023-03-01','SF2023XYZ','Platinum','First badge earned');
INSERT INTO Fan_Digital_Badge_Earned (fan_id,badge_name,tier,earned_date,expiration_date,points,associated_event,badge_category,description,status,issuer,rarity,image_file,shareable,notification_sent,last_viewed,redemption_code,loyalty_level,notes) VALUES (2002,'GoalScorer','Silver','2023-03-15','2024-03-15',80,'MatchDay12','Performance','Scored 3 goals in a single match','Active','ClubHQ','Uncommon','badge_goalscorer.png',1,1,'2023-03-16','GS2023ABC','Gold','Based on match stats');
INSERT INTO Fan_Digital_Badge_Earned (fan_id,badge_name,tier,earned_date,expiration_date,points,associated_event,badge_category,description,status,issuer,rarity,image_file,shareable,notification_sent,last_viewed,redemption_code,loyalty_level,notes) VALUES (2003,'CommunityHelper','Bronze','2023-01-10','2024-01-10',50,'CharityRun','Community','Participated in club charity run','Active','ClubHQ','Common','badge_community.png',0,1,'2023-01-12','CH2023LMN','Silver','Volunteer activity');

-- Training Gear Maintenance Logs
CREATE TABLE Training_Gear_Maintenance_Logs (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    gear_id INTEGER,
    gear_type TEXT,
    maintenance_date TEXT,
    technician_id INTEGER,
    service_type TEXT,
    parts_replaced TEXT,
    cost REAL,
    downtime_hours REAL,
    next_service_due TEXT,
    location TEXT,
    status TEXT,
    notes TEXT,
    warranty_expiry TEXT,
    supplier TEXT,
    order_number TEXT,
    batch_number TEXT,
    calibration_result TEXT,
    safety_check_passed INTEGER,
    compliance_cert TEXT
);
INSERT INTO Training_Gear_Maintenance_Logs (gear_id,gear_type,maintenance_date,technician_id,service_type,parts_replaced,cost,downtime_hours,next_service_due,location,status,notes,warranty_expiry,supplier,order_number,batch_number,calibration_result,safety_check_passed,compliance_cert) VALUES (5001,'Cones','2023-02-05',301,'Routine','None',45.00,1.5,'2023-08-05','TrainingGroundA','Completed','Checked for wear','2025-12-31','SportSuppliesCo','PO12345','BCH001','Pass',1,'ISO9001');
INSERT INTO Training_Gear_Maintenance_Logs (gear_id,gear_type,maintenance_date,technician_id,service_type,parts_replaced,cost,downtime_hours,next_service_due,location,status,notes,warranty_expiry,supplier,order_number,batch_number,calibration_result,safety_check_passed,compliance_cert) VALUES (5002,'SpeedLadders','2023-03-12',302,'Repair','Rails',120.50,2.0,'2023-09-12','TrainingGroundB','Completed','Replaced cracked rails','2024-06-30','GymEquipCo','PO12346','BCH002','Pass',1,'ISO9001');
INSERT INTO Training_Gear_Maintenance_Logs (gear_id,gear_type,maintenance_date,technician_id,service_type,parts_replaced,cost,downtime_hours,next_service_due,location,status,notes,warranty_expiry,supplier,order_number,batch_number,calibration_result,safety_check_passed,compliance_cert) VALUES (5003,'ResistanceBands','2023-01-20',303,'Cleaning','None',30.00,0.5,'2023-07-20','TrainingGroundC','Completed','Removed debris and odor','2026-03-15','FitGearInc','PO12347','BCH003','Pass',1,'ISO9001');

-- International Friendlies Schedule
CREATE TABLE International_Friendlies_Schedule (
    friendly_id INTEGER PRIMARY KEY AUTOINCREMENT,
    home_nation_id INTEGER,
    away_nation_id INTEGER,
    match_date TEXT,
    venue_name TEXT,
    city TEXT,
    country TEXT,
    kickoff_time TEXT,
    broadcast_network TEXT,
    ticket_price_average REAL,
    attendance_estimate INTEGER,
    sponsor_id INTEGER,
    friendly_tier TEXT,
    referee_id INTEGER,
    weather_forecast TEXT,
    travel_arrangements TEXT,
    accommodation_details TEXT,
    security_level TEXT,
    marketing_campaign TEXT,
    post_match_event TEXT
);
INSERT INTO International_Friendlies_Schedule (home_nation_id,away_nation_id,match_date,venue_name,city,country,kickoff_time,broadcast_network,ticket_price_average,attendance_estimate,sponsor_id,friendly_tier,referee_id,weather_forecast,travel_arrangements,accommodation_details,security_level,marketing_campaign,post_match_event) VALUES (101,202,'2023-06-15','National Stadium','CapitalCity','CountryA','18:30','SportsNet','75.00',50000,301,'A','401','Clear','CharterBus','5StarHotel','High','SummerFriendlies','FanMeetAndGreet');
INSERT INTO International_Friendlies_Schedule (home_nation_id,away_nation_id,match_date,venue_name,city,country,kickoff_time,broadcast_network,ticket_price_average,attendance_estimate,sponsor_id,friendly_tier,referee_id,weather_forecast,travel_arrangements,accommodation_details,security_level,marketing_campaign,post_match_event) VALUES (103,204,'2023-07-20','Coastal Arena','BeachTown','CountryB','20:00','GlobalSports','85.00',42000,302,'B','402','PartlyCloudy','TeamFlight','ResortHotel','Medium','HolidayKickoff','CharityAuction');
INSERT INTO International_Friendlies_Schedule (home_nation_id,away_nation_id,match_date,venue_name,city,country,kickoff_time,broadcast_network,ticket_price_average,attendance_estimate,sponsor_id,friendly_tier,referee_id,weather_forecast,travel_arrangements,accommodation_details,security_level,marketing_campaign,post_match_event) VALUES (105,206,'2023-08-05','Mountain Stadium','HillVille','CountryC','19:45','WorldChannel','65.00',38000,303,'C','403','Rain','Train','BoutiqueHotel','Low','MidSeasonShowcase','YouthClinic');

-- Club Eco Initiatives
CREATE TABLE Club_Eco_Initiatives (
    initiative_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    initiative_name TEXT,
    start_date TEXT,
    end_date TEXT,
    category TEXT,
    goal_metric TEXT,
    current_metric REAL,
    target_value REAL,
    responsible_department TEXT,
    budget REAL,
    external_partner TEXT,
    certification_status TEXT,
    carbon_offset_units INTEGER,
    water_savings_liters INTEGER,
    waste_reduction_percent REAL,
    public_report_url TEXT,
    status TEXT,
    notes TEXT,
    impact_score REAL,
    last_review_date TEXT
);
INSERT INTO Club_Eco_Initiatives (club_id,initiative_name,start_date,end_date,category,goal_metric,current_metric,target_value,responsible_department,budget,external_partner,certification_status,carbon_offset_units,water_savings_liters,waste_reduction_percent,public_report_url,status,notes,impact_score,last_review_date) VALUES (1,'SolarRoof','2022-04-01','2025-04-01','Energy','MW_generated',1.2,3.0,'Facilities','250000','EcoEnergyCo','Certified','5000',0,15.0,'http://club1.org/reports/solar','Active','Phase 1 completed','85.5','2023-12-01');
INSERT INTO Club_Eco_Initiatives (club_id,initiative_name,start_date,end_date,category,goal_metric,current_metric,target_value,responsible_department,budget,external_partner,certification_status,carbon_offset_units,water_savings_liters,waste_reduction_percent,public_report_url,status,notes,impact_score,last_review_date) VALUES (2,'ZeroWasteStadium','2021-01-15','2024-12-31','Waste','%_diverted',60.0,90.0,'Operations','180000','GreenWasteLtd','Pending','0',0,60.0,'http://club2.org/zerowaste','InProgress','Recycling stations installed','78.2','2023-10-15');
INSERT INTO Club_Eco_Initiatives (club_id,initiative_name,start_date,end_date,category,goal_metric,current_metric,target_value,responsible_department,budget,external_partner,certification_status,carbon_offset_units,water_savings_liters,waste_reduction_percent,public_report_url,status,notes,impact_score,last_review_date) VALUES (3,'RainwaterHarvest','2023-03-01','2026-03-01','Water','Liters_collected',200000,500000,'Sustainability','120000','AquaHarvest','Certified','0',200000,0.0,'http://club3.org/rainwater','Planned','Design phase','65.0','2023-06-30');

-- Media Production Team Roles
CREATE TABLE Media_Production_Team_Roles (
    role_id INTEGER PRIMARY KEY AUTOINCREMENT,
    production_id INTEGER,
    role_name TEXT,
    person_name TEXT,
    contact_email TEXT,
    start_date TEXT,
    end_date TEXT,
    responsibilities TEXT,
    hourly_rate REAL,
    total_hours INTEGER,
    budget_allocation REAL,
    seniority_level TEXT,
    skill_set TEXT,
    certification TEXT,
    shift TEXT,
    location TEXT,
    equipment_assigned TEXT,
    notes TEXT,
    status TEXT,
    approval_date TEXT,
    last_modified TEXT
);
INSERT INTO Media_Production_Team_Roles (production_id,role_name,person_name,contact_email,start_date,end_date,responsibilities,hourly_rate,total_hours,budget_allocation,seniority_level,skill_set,certification,shift,location,equipment_assigned,notes,status,approval_date,last_modified) VALUES (9001,'Director','Alice Carter','alice.carter@media.com','2023-02-01','2023-05-31','Overall creative direction',85.00,200,17000,'Senior','Leadership,Vision','None','Day','StudioA','CameraSet1','N/A','Active','2023-01-20','2023-04-15');
INSERT INTO Media_Production_Team_Roles (production_id,role_name,person_name,contact_email,start_date,end_date,responsibilities,hourly_rate,total_hours,budget_allocation,seniority_level,skill_set,certification,shift,location,equipment_assigned,notes,status,approval_date,last_modified) VALUES (9002,'Camera Operator','Bob Nguyen','bob.nguyen@media.com','2023-03-05','2023-06-05','Capture live footage',45.00,150,6750,'Mid','Cinematography','CCO','Day','StudioB','CameraSet2','Handled secondary angles','Active','2023-02-15','2023-05-01');
INSERT INTO Media_Production_Team_Roles (production_id,role_name,person_name,contact_email,start_date,end_date,responsibilities,hourly_rate,total_hours,budget_allocation,seniority_level,skill_set,certification,shift,location,equipment_assigned,notes,status,approval_date,last_modified) VALUES (9003,'Audio Engineer','Carol Lee','carol.lee@media.com','2023-04-10','2023-07-10','Manage sound capture and mixing',55.00,120,6600,'Mid','Audio Mixing','AEM','Evening','StudioC','AudioRack1','Focused on ambient sound','Active','2023-03-20','2023-06-01');

-- Digital Asset Metadata
CREATE TABLE Digital_Asset_Metadata (
    asset_id INTEGER PRIMARY KEY AUTOINCREMENT,
    asset_type TEXT,
    title TEXT,
    description TEXT,
    creator_name TEXT,
    creation_date TEXT,
    file_format TEXT,
    file_size_mb REAL,
    resolution TEXT,
    duration_sec INTEGER,
    tags TEXT,
    usage_license TEXT,
    associated_project TEXT,
    version_number TEXT,
    checksum TEXT,
    storage_location TEXT,
    access_level TEXT,
    last_accessed TEXT,
    archived_flag INTEGER,
    retention_policy TEXT
);
INSERT INTO Digital_Asset_Metadata (asset_type,title,description,creator_name,creation_date,file_format,file_size_mb,resolution,duration_sec,tags,usage_license,associated_project,version_number,checksum,storage_location,access_level,last_accessed,archived_flag,retention_policy) VALUES ('Image','TeamLogo','Official club logo','DesignTeam','2022-08-15','png',2.3,'1024x1024',0,'logo,brand','Unlimited','Branding','v1','ABC123DEF','/assets/images','Public','2023-03-10',0,'5years');
INSERT INTO Digital_Asset_Metadata (asset_type,title,description,creator_name,creation_date,file_format,file_size_mb,resolution,duration_sec,tags,usage_license,associated_project,version_number,checksum,storage_location,access_level,last_accessed,archived_flag,retention_policy) VALUES ('Video','SeasonHighlight','Highlights of the 2023 season','MediaDept','2023-05-20','mp4',850.0,'1920x1080',3600,'highlights,season','Restricted','SeasonRecap','v3','XYZ789GHI','/assets/videos','Internal','2023-06-01',0,'Indefinite');
INSERT INTO Digital_Asset_Metadata (asset_type,title,description,creator_name,creation_date,file_format,file_size_mb,resolution,duration_sec,tags,usage_license,associated_project,version_number,checksum,storage_location,access_level,last_accessed,archived_flag,retention_policy) VALUES ('Document','SponsorshipContract','Contract with main sponsor','LegalTeam','2023-01-05','pdf',0.8,'',0,'contract,sponsor','Confidential','Legal','v2','LMN456OPQ','/assets/docs','Confidential','2023-04-15',0,'10years');