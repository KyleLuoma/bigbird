-- Stadium Accessibility Features Details
CREATE TABLE Stadium_Accessibility_Features_Details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stadium_id INTEGER,
    ramp_count INTEGER,
    wheelchair_entrance INTEGER,
    tactile_paving_length INTEGER,
    braille_signage_count INTEGER,
    audio_guidance_system INTEGER,
    seating_assistive_count INTEGER,
    parking_spots_handicapped INTEGER,
    elevator_count INTEGER,
    elevator_capacity INTEGER,
    restroom_accessible_count INTEGER,
    lift_maintenance_date TEXT,
    feature_last_audit TEXT,
    compliance_grade TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    inspector_id INTEGER,
    audit_score INTEGER,
    gps_latitude REAL,
    gps_longitude REAL
);
INSERT INTO Stadium_Accessibility_Features_Details VALUES (1,101,4,1,120,8,1,20,12,2,30,6,'2023-04-10','2023-07-15','A','All ramps meet standards','2023-01-01','2023-07-20',55,92,48.8566,2.3522);
INSERT INTO Stadium_Accessibility_Features_Details VALUES (2,102,3,1,95,5,0,15,9,1,25,4,'2022-12-05','2023-06-01','B','Improvement needed for tactile paving','2022-11-01','2023-06-05',58,85,51.5074,-0.1278);
INSERT INTO Stadium_Accessibility_Features_Details VALUES (3,103,5,1,140,10,1,22,14,3,35,8,'2023-01-20','2023-08-01','A','Full compliance','2023-01-15','2023-08-02',60,97,40.7128,-74.0060);

-- Club Sustainability Projects
CREATE TABLE Club_Sustainability_Projects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER,
    project_name TEXT,
    start_date TEXT,
    end_date TEXT,
    project_type TEXT,
    carbon_reduction_tons REAL,
    water_saved_liters REAL,
    energy_saved_kwh REAL,
    budget_usd INTEGER,
    status TEXT,
    lead_manager TEXT,
    description TEXT,
    verification_body TEXT,
    certification_obtained TEXT,
    renewable_energy_pct INTEGER,
    waste_recycled_tons REAL,
    stakeholder_engagement_score INTEGER,
    created_at TEXT,
    updated_at TEXT,
    external_funding_usd INTEGER,
    total_impact_score INTEGER
);
INSERT INTO Club_Sustainability_Projects VALUES (1,10,'SolarPanelInstallation','2022-03-01','2024-03-01','Energy','1500',0,500000,200000,'Completed','LauraSmith','Installation of 200kW solar panels','GreenAuditOrg','ISO14001',80,30,88,'2022-02-15','2024-03-05',50000,95);
INSERT INTO Club_Sustainability_Projects VALUES (2,12,'RainwaterHarvesting','2023-05-15','2025-05-15','Water','0',2500000,0,120000,'InProgress','MarkLee','System to capture rainwater for irrigation','EcoCert','',70,0,76,'2023-04-20','2025-05-20',30000,82);
INSERT INTO Club_Sustainability_Projects VALUES (3,14,'ZeroWasteStadium','2021-01-01','2023-12-31','Waste','0',0,0,300000,'Completed','NinaCho','Comprehensive recycling and compost program','SustainCert','ZeroWasteLevel3',0,120,91,'2020-12-01','2024-01-10',80000,94);

-- Media Rights Contract Documents
CREATE TABLE Media_Rights_Contract_Documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    media_partner TEXT,
    contract_start TEXT,
    contract_end TEXT,
    territory TEXT,
    rights_type TEXT,
    fee_usd INTEGER,
    revenue_share_pct REAL,
    exclusivity_flag INTEGER,
    digital_streaming_flag INTEGER,
    broadcast_channels TEXT,
    online_platforms TEXT,
    contract_status TEXT,
    renewal_option TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    legal_reviewer_id INTEGER,
    compliance_audit_date TEXT,
    amendment_count INTEGER
);
INSERT INTO Media_Rights_Contract_Documents VALUES (1,1,'2023/2024','GlobalSportsNet','2023-01-01','2024-12-31','Europe','Broadcast',15000000,45.5,1,1,'ChannelOne|ChannelTwo','StreamHub|LiveNow','Active','Automatic','Standard terms','2023-01-05','2023-01-10',12,'2023-06-01',2);
INSERT INTO Media_Rights_Contract_Documents VALUES (2,2,'2022/2023','PrimeMedia','2022-02-01','2023-11-30','Asia','Digital',8000000,38.0,0,1,'','AsiaStream','Pending','Manual','Negotiated clauses','2022-01-20','2022-02-05',14,'2022-08-15',1);
INSERT INTO Media_Rights_Contract_Documents VALUES (3,3,'2024/2025','EuroVision','2024-03-15','2025-12-31','Europe','Hybrid',12000000,42.0,1,0,'EuroChannel','EuroOnline','Draft','Automatic','Awaiting approval','2024-03-01','2024-03-10',18,'2024-07-20',0);

-- Fan Digital Collectible Market
CREATE TABLE Fan_Digital_Collectible_Market (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    collectible_id INTEGER,
    fan_id INTEGER,
    purchase_date TEXT,
    price_usd REAL,
    marketplace TEXT,
    rarity_level TEXT,
    token_id TEXT,
    blockchain TEXT,
    transaction_hash TEXT,
    verified INTEGER,
    sale_status TEXT,
    previous_owner_id INTEGER,
    current_owner_id INTEGER,
    valuation_usd REAL,
    last_valuation_date TEXT,
    metadata_uri TEXT,
    collection_name TEXT,
    category TEXT,
    creator_name TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT
);
INSERT INTO Fan_Digital_Collectible_Market VALUES (1,5001,2001,'2023-06-10',250.75,'OpenSea','Epic','tok12345','Ethereum','0xabcde12345',1,'Owned',0,2001,260.00,'2023-07-01','ipfs://meta1','ClubLegends','PlayerCard','StudioX','First purchase','2023-06-10','2023-07-02');
INSERT INTO Fan_Digital_Collectible_Market VALUES (2,5002,2002,'2023-07-15',180.00,'Rarible','Rare','tok67890','Polygon','0xdef4567890',1,'Owned',0,2002,190.50,'2023-08-01','ipfs://meta2','StadiumMoments','GoalClip','MediaHub','Second purchase','2023-07-15','2023-08-02');
INSERT INTO Fan_Digital_Collectible_Market VALUES (3,5003,2003,'2023-08-20',320.40,'OpenSea','Legendary','tok54321','Ethereum','0x12345fedcb',0,'Listed',2003,0,340.00,'2023-09-05','ipfs://meta3','HistoricMatches','MatchHighlight','CreatorZ','Listed for resale','2023-08-20','2023-09-06');

-- Team Sponsorship Contract History
CREATE TABLE Team_Sponsorship_Contract_History (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    team_id INTEGER,
    sponsor_id INTEGER,
    contract_start TEXT,
    contract_end TEXT,
    sponsorship_type TEXT,
    annual_fee_usd INTEGER,
    activation_events INTEGER,
    media_exposure_pct REAL,
    brand_alignment_score INTEGER,
    exclusive_flag INTEGER,
    product_category TEXT,
    region TEXT,
    renewal_option TEXT,
    termination_clause TEXT,
    performance_bonus_usd INTEGER,
    total_value_usd INTEGER,
    created_at TEXT,
    updated_at TEXT,
    contract_manager_id INTEGER,
    compliance_audit_date TEXT,
    notes TEXT
);
INSERT INTO Team_Sponsorship_Contract_History VALUES (1,101,301,'2022-01-01','2024-12-31','Primary','5000000',12,75.5,88,1,'Apparel','Europe','Automatic','30daysnotice',250000,15000000,'2021-12-01','2024-12-15',45,'2023-05-20','Longterm partnership');
INSERT INTO Team_Sponsorship_Contract_History VALUES (2,102,302,'2023-03-15','2025-03-14','Secondary','2000000',5,60.0,70,0,'EnergyDrinks','Asia','Manual','60daysnotice',100000,8000000,'2023-03-01','2025-03-01',46,'2023-09-10','Midterm agreement');
INSERT INTO Team_Sponsorship_Contract_History VALUES (3,103,303,'2021-07-01','2023-06-30','Official','1200000',3,50.0,65,0,'Electronics','NorthAmerica','Automatic','90daysnotice',50000,4000000,'2021-06-15','2023-07-10',47,'2022-04-05','Short term deal');

-- Player Education Records
CREATE TABLE Player_Education_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER,
    institution_name TEXT,
    degree_type TEXT,
    field_of_study TEXT,
    enrollment_date TEXT,
    graduation_date TEXT,
    gpa REAL,
    honors TEXT,
    extracurriculars TEXT,
    scholarship_amount_usd INTEGER,
    mentor_name TEXT,
    completed INTEGER,
    verification_status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    certifying_body TEXT,
    cert_number TEXT,
    language_proficiency TEXT,
    study_abroad_flag INTEGER,
    internship_company TEXT
);
INSERT INTO Player_Education_Records VALUES (1,2001,'StateUniversity','Bachelor','SportsScience','2015-09-01','2019-06-15',3.6,'DeanList','FootballClub','15000','CoachMiller',1,'Verified','Completed degree','2019-07-01','2019-07-10','EducationBoard','EDU12345','English',0,'SportsGearCo');
INSERT INTO Player_Education_Records VALUES (2,2002,'TechInstitute','Master','DataAnalytics','2018-01-15','2020-12-20',3.9','MagnaCumLaude','StudentCouncil','25000','DrLee',1,'Verified','Thesis on performance metrics','2020-12-30','2021-01-05','AccreditationAgency','MAST67890','English',1,'AnalyticsFirm');
INSERT INTO Player_Education_Records VALUES (3,2003,'InternationalCollege','Diploma','Business','2016-02-10','2017-11-25',3.4,'','CampusBand','8000','MsTaylor',1,'Pending','Awaiting final approval','2017-12-01','2017-12-08','InternationalBoard','DIP11223','Spanish',0,'RetailGroup');

-- League International Transfer Policy
CREATE TABLE League_International_Transfer_Policy (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    league_id INTEGER,
    season TEXT,
    policy_name TEXT,
    effective_date TEXT,
    expiry_date TEXT,
    max_non_eu_players INTEGER,
    work_permit_requirements TEXT,
    transfer_window_start TEXT,
    transfer_window_end TEXT,
    fee_cap_usd INTEGER,
    salary_cap_usd INTEGER,
    youth_development_quota INTEGER,
    foreign_player_tax_percent REAL,
    compliance_officer_id INTEGER,
    enforcement_mechanism TEXT,
    amendment_number INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    governing_body TEXT
);
INSERT INTO League_International_Transfer_Policy VALUES (1,1,'2023/2024','StandardTransferPolicy','2023-01-01','2024-12-31',5,'EUWorkPermit','2023-07-01','2023-08-31',20000000,80000000,8,15.0,55,'PenaltyAndFine',2,'Policy updated for post‑brexit', '2022-12-01','2023-01-05','UEFA');
INSERT INTO League_International_Transfer_Policy VALUES (2,2,'2022/2023','RestrictedTransferPolicy','2022-01-01','2023-12-31',3,'LocalPermitOnly','2022-06-15','2022-07-31',15000000,60000000,6,12.5,60,'Suspension',1,'Reduced foreign slots', '2021-11-20','2022-01-02','CONMEBOL');
INSERT INTO League_International_Transfer_Policy VALUES (3,3,'2024/2025','FlexibleTransferPolicy','2024-01-01','2025-12-31',7,'StandardPermit','2024-07-10','2024-08-20',25000000,100000000,10,18.0,58,'FineAndTransferBan',3,'Introduced youth quota increase','2023-12-15','2024-01-03','AFC');

-- Match Operational Technology Log
CREATE TABLE Match_Operational_Technology_Log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER,
    technology_type TEXT,
    vendor_name TEXT,
    installation_date TEXT,
    removal_date TEXT,
    status TEXT,
    firmware_version TEXT,
    last_maintenance_date TEXT,
    uptime_hours INTEGER,
    downtime_minutes INTEGER,
    incidents_reported INTEGER,
    resolution_time_minutes INTEGER,
    responsible_engineer_id INTEGER,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    serial_number TEXT,
    location_on_venue TEXT,
    calibration_date TEXT,
    performance_score REAL
);
INSERT INTO Match_Operational_Technology_Log VALUES (1,1001,'VAR','TechSolutions','2023-04-01',NULL,'Active','v2.3','2023-06-20',1200,15,2,30,78,'No major issues','2023-04-01','2023-07-01','SNVAR001','ControlRoom','2023-05-15',96.5);
INSERT INTO Match_Operational_Technology_Log VALUES (2,1002,'LEDLighting','BrightLightsCo','2022-09-15','2023-05-01','Decommissioned','v1.9','2023-04-10',800,45,1,60,82,'Replaced due to wear','2022-09-15','2023-05-05','SNLED123','StadiumRoof','2022-10-01',88.2);
INSERT INTO Match_Operational_Technology_Log VALUES (3,1003,'WiFiMesh','NetConnect','2023-01-10',NULL,'Active','v3.0','2023-07-10',1500,5,0,0,90,'Stable performance','2023-01-10','2023-07-15','SNWIFI456','VariousZones','2023-02-01',99.1);

-- Venue Energy Consumption Records
CREATE TABLE Venue_Energy_Consumption_Records (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venue_id INTEGER,
    record_date TEXT,
    electricity_kwh REAL,
    gas_m3 REAL,
    water_liters REAL,
    renewable_percentage REAL,
    peak_demand_kw REAL,
    average_demand_kw REAL,
    carbon_emission_tons REAL,
    energy_cost_usd INTEGER,
    savings_vs_last_year_percent REAL,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    meter_reader_id INTEGER,
    verification_status TEXT,
    audit_reference TEXT,
    fuel_type TEXT,
    solar_generation_kwh INTEGER,
    wind_generation_kwh INTEGER
);
INSERT INTO Venue_Energy_Consumption_Records VALUES (1,201,'2023-06-01',85000.5,1200.3,1500000,35.0,5000.2,3000.1,12.5,200000,'Quarterly report','2023-06-05','2023-06-07',33,'Verified','AUD202306','NaturalGas',12000,500);
INSERT INTO Venue_Energy_Consumption_Records VALUES (2,202,'2023-06-01',72000.0,1100.0,1300000,40.5,4500.0,2800.0,180000,'5.2','Monthly data','2023-06-03','2023-06-06',34,'Pending','AUD202306B','Electric','9500',300);
INSERT INTO Venue_Energy_Consumption_Records VALUES (3,203,'2023-06-01',95000.8,1300.5,1700000,30.0,5200.4,14.0,210000,'8.1','Annual summary','2023-06-10','2023-06-12',35,'Verified','AUD202306C','Hybrid','15000',800);

-- Sponsor Brand Activation Schedule
CREATE TABLE Sponsor_Brand_Activation_Schedule (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsor_id INTEGER,
    activation_id INTEGER,
    activation_type TEXT,
    start_date TEXT,
    end_date TEXT,
    venue_id INTEGER,
    target_audience TEXT,
    expected_reach INTEGER,
    budget_usd INTEGER,
    actual_spend_usd INTEGER,
    KPI_metric TEXT,
    KPI_target REAL,
    KPI_actual REAL,
    creative_agency TEXT,
    media_channels TEXT,
    status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    campaign_manager_id INTEGER,
    post_event_report_url TEXT
);
INSERT INTO Sponsor_Brand_Activation_Schedule VALUES (1,301,4001,'StadiumBanner','2023-07-01','2023-12-31',201,'Fans','500000',250000,240000,'Impression','500000','480000','CreativeHub','Billboard|LED','Completed','Successful activation','2023-06-15','2023-12-31',45,'http://reports.com/act4001');
INSERT INTO Sponsor_Brand_Activation_Schedule VALUES (2,302,4002,'SocialMediaCampaign','2023-08-15','2024-01-15',NULL,'Youth','200000',120000,115000,'EngagementRate','5.0','5.8','MediaWorks','Instagram|TikTok','Ongoing','First phase underway','2023-08-01','2024-01-20',46,'http://reports.com/act4002');
INSERT INTO Sponsor_Brand_Activation_Schedule VALUES (3,303,4003,'CommunityEvent','2023-09-10','2023-09-12',202,'LocalResidents','80000',50000,48000,'Attendance','80000','82000','EventCreators','LocalTV|Radio','Planned','Pending approvals','2023-09-01','2023-09-15',47,'http://reports.com/act4003');