-- Table describing superhero teams
CREATE TABLE team (
    team_id INTEGER PRIMARY KEY,
    team_name TEXT,
    formation_year INTEGER,
    base_location_id INTEGER,
    primary_color_id INTEGER,
    secondary_color_id INTEGER,
    motto TEXT,
    headquarters_address TEXT,
    leader_hero_id INTEGER,
    member_count INTEGER,
    is_active INTEGER,
    revenue_million INTEGER,
    sponsor_id INTEGER,
    social_media_handle TEXT,
    website TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    description TEXT,
    emblem_image_url TEXT,
    public_relations_contact_id INTEGER
);

INSERT INTO team (team_id,team_name,formation_year,base_location_id,primary_color_id,secondary_color_id,motto,headquarters_address,leader_hero_id,member_count,is_active,revenue_million,sponsor_id,social_media_handle,website,created_at,updated_at,description,emblem_image_url,public_relations_contact_id) VALUES (1,'JusticeLeague',1946,10,1,2,'TruthJusticePeace','1000 Hero Plaza',1,7,1,250,5,'JLOfficial','www.justiceleague.com','2023-01-01 00:00:00','2023-01-01 00:00:00','Worlds premier superhero coalition','http://img.com/jl.png',12);
INSERT INTO team (team_id,team_name,formation_year,base_location_id,primary_color_id,secondary_color_id,motto,headquarters_address,leader_hero_id,member_count,is_active,revenue_million,sponsor_id,social_media_handle,website,created_at,updated_at,description,emblem_image_url,public_relations_contact_id) VALUES (2,'Avengers',1963,11,3,4,'ToInfinityAndBeyond','2000 Stark Tower',2,6,1,320,6,'AvengersHQ','www.avengers.com','2023-01-02 00:00:00','2023-01-02 00:00:00','Earths mightiest heroes united','http://img.com/avengers.png',13);
INSERT INTO team (team_id,team_name,formation_year,base_location_id,primary_color_id,secondary_color_id,motto,headquarters_address,leader_hero_id,member_count,is_active,revenue_million,sponsor_id,social_media_handle,website,created_at,updated_at,description,emblem_image_url,public_relations_contact_id) VALUES (3,'XMen',1963,12,5,6,'Mutants Unleashed','3000 Xavier Institute',3,5,1,180,7,'XMenTeam','www.xmen.com','2023-01-03 00:00:00','2023-01-03 00:00:00','Mutant team protecting humanity','http://img.com/xmen.png',14);


-- Table describing missions undertaken by heroes
CREATE TABLE mission (
    mission_id INTEGER PRIMARY KEY,
    mission_name TEXT,
    start_date DATE,
    end_date DATE,
    objective TEXT,
    status TEXT,
    budget_million INTEGER,
    lead_hero_id INTEGER,
    opposing_force_id INTEGER,
    location_id INTEGER,
    success_rate_percent INTEGER,
    casualties_estimated INTEGER,
    intel_source TEXT,
    required_equipment TEXT,
    strategic_importance TEXT,
    commander_id INTEGER,
    debrief_report_url TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    notes TEXT
);

INSERT INTO mission (mission_id,mission_name,start_date,end_date,objective,status,budget_million,lead_hero_id,opposing_force_id,location_id,success_rate_percent,casualties_estimated,intel_source,required_equipment,strategic_importance,commander_id,debrief_report_url,created_at,updated_at,notes) VALUES (1,'Operation Sentinel','2023-02-01','2023-02-03','Secure alien artifact','Success',45,1,101,2001,95,2,'SatelliteFeed','QuantumDisruptor','High',301,'http://reports.com/opsentinal.pdf','2023-02-04 00:00:00','2023-02-04 00:00:00','Mission completed without major issues');
INSERT INTO mission (mission_id,mission_name,start_date,end_date,objective,status,budget_million,lead_hero_id,opposing_force_id,location_id,success_rate_percent,casualties_estimated,intel_source,required_equipment,strategic_importance,commander_id,debrief_report_url,created_at,updated_at,notes) VALUES (2,'Deep Sea Rescue','2023-03-10','2023-03-12','Rescue trapped divers','Partial',12,2,102,2002,80,5,'NavalRadar','HydroSuit','Medium',302,'http://reports.com/deepsea.pdf','2023-03-13 00:00:00','2023-03-13 00:00:00','Minor equipment failures observed');
INSERT INTO mission (mission_id,mission_name,start_date,end_date,objective,status,budget_million,lead_hero_id,opposing_force_id,location_id,success_rate_percent,casualties_estimated,intel_source,required_equipment,strategic_importance,commander_id,debrief_report_url,created_at,updated_at,notes) VALUES (3,'Urban Shield','2023-04-05','2023-04-07','Protect city from invasion','Failed',78,3,103,2003,60,10,'CityWatch','ShieldArray','Critical',303,'http://reports.com/urbanshield.pdf','2023-04-08 00:00:00','2023-04-08 00:00:00','Heavy civilian casualties, review needed');


-- Table describing equipment inventory
CREATE TABLE equipment (
    equipment_id INTEGER PRIMARY KEY,
    equipment_name TEXT,
    type TEXT,
    manufacturer_id INTEGER,
    weight_kg INTEGER,
    power_consumption_watts INTEGER,
    durability_rating INTEGER,
    acquisition_date DATE,
    cost_usd INTEGER,
    serial_number TEXT,
    warranty_years INTEGER,
    assigned_hero_id INTEGER,
    status TEXT,
    location_storage_id INTEGER,
    maintenance_cycle_days INTEGER,
    last_maintenance_date DATE,
    next_maintenance_date DATE,
    usage_hours INTEGER,
    description TEXT,
    image_url TEXT
);

INSERT INTO equipment (equipment_id,equipment_name,type,manufacturer_id,weight_kg,power_consumption_watts,durability_rating,acquisition_date,cost_usd,serial_number,warranty_years,assigned_hero_id,status,location_storage_id,maintenance_cycle_days,last_maintenance_date,next_maintenance_date,usage_hours,description,image_url) VALUES (1,'Titanium Shield','Defensive',501,25,0,9,'2022-01-15',12000,'TSH-001',3,1,'Active',401,180,'2023-01-01','2023-07-01',350,'High impact shield for frontline heroes','http://img.com/tshield.png');
INSERT INTO equipment (equipment_id,equipment_name,type,manufacturer_id,weight_kg,power_consumption_watts,durability_rating,acquisition_date,cost_usd,serial_number,warranty_years,assigned_hero_id,status,location_storage_id,maintenance_cycle_days,last_maintenance_date,next_maintenance_date,usage_hours,description,image_url) VALUES (2,'Pulse Blaster','Offensive',502,12,150,8,'2021-06-20',8500,'PBL-342',2,2,'Active',402,120,'2023-02-15','2023-08-15',210,'Energy weapon with rapid fire','http://img.com/pulseblaster.png');
INSERT INTO equipment (equipment_id,equipment_name,type,manufacturer_id,weight_kg,power_consumption_watts,durability_rating,acquisition_date,cost_usd,serial_number,warranty_years,assigned_hero_id,status,location_storage_id,maintenance_cycle_days,last_maintenance_date,next_maintenance_date,usage_hours,description,image_url) VALUES (3,'Stealth Cloak','Utility',503,5,0,7,'2023-03-05',20000,'SCL-778',5,3,'InRepair',403,365,'2023-04-01','2024-04-01',45,'Provides temporary invisibility','http://img.com/stealthcloak.png');


-- Table describing headquarters facilities
CREATE TABLE headquarters (
    hq_id INTEGER PRIMARY KEY,
    name TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    country TEXT,
    zip_code TEXT,
    latitude REAL,
    longitude REAL,
    established_year INTEGER,
    capacity_personnel INTEGER,
    security_level INTEGER,
    director_id INTEGER,
    contact_phone TEXT,
    contact_email TEXT,
    website TEXT,
    operational_status TEXT,
    size_sqft INTEGER,
    annual_budget_million INTEGER,
    notes TEXT,
    created_at DATETIME
);

INSERT INTO headquarters (hq_id,name,address,city,state,country,zip_code,latitude,longitude,established_year,capacity_personnel,security_level,director_id,contact_phone,contact_email,website,operational_status,size_sqft,annual_budget_million,notes,created_at) VALUES (1,'Justice League HQ','1000 Hero Plaza','Metropolis','NY','USA','10001',40.7128,-74.0060,1946,500,5,1,'555-0100','hq@justiceleague.com','www.justiceleaguehq.com','Operational',150000,50,'Main hub for all Justice League activities','2023-01-01 00:00:00');
INSERT INTO headquarters (hq_id,name,address,city,state,country,zip_code,latitude,longitude,established_year,capacity_personnel,security_level,director_id,contact_phone,contact_email,website,operational_status,size_sqft,annual_budget_million,notes,created_at) VALUES (2,'Avengers Tower','2000 Stark Tower','New York','NY','USA','10002',40.7138,-74.0010,1963,800,5,2,'555-0200','hq@avengers.com','www.avengerstower.com','Operational',200000,80,'High tech facilities for Avengers','2023-01-02 00:00:00');
INSERT INTO headquarters (hq_id,name,address,city,state,country,zip_code,latitude,longitude,established_year,capacity_personnel,security_level,director_id,contact_phone,contact_email,website,operational_status,size_sqft,annual_budget_million,notes,created_at) VALUES (3,'X-Mansion','3000 Xavier Institute','Westchester','NY','USA','10003',41.0000,-73.5000,1963,300,4,3,'555-0300','hq@xmen.com','www.xmenhq.com','Operational',120000,30,'Training and education for mutants','2023-01-03 00:00:00');


-- Table describing sponsors for teams and heroes
CREATE TABLE sponsor (
    sponsor_id INTEGER PRIMARY KEY,
    sponsor_name TEXT,
    industry TEXT,
    contact_person TEXT,
    contact_phone TEXT,
    contact_email TEXT,
    website TEXT,
    contract_start_date DATE,
    contract_end_date DATE,
    sponsorship_level TEXT,
    amount_million INTEGER,
    renewal_option TEXT,
    logo_url TEXT,
    primary_color_id INTEGER,
    secondary_color_id INTEGER,
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    active_flag INTEGER,
    headquarters_location_id INTEGER,
    tax_id TEXT,
    public_relations_contact_id INTEGER
);

INSERT INTO sponsor (sponsor_id,sponsor_name,industry,contact_person,contact_phone,contact_email,website,contract_start_date,contract_end_date,sponsorship_level,amount_million,renewal_option,logo_url,primary_color_id,secondary_color_id,notes,created_at,updated_at,active_flag,headquarters_location_id,tax_id,public_relations_contact_id) VALUES (1,'Wayne Enterprises','Technology','Bruce Wayne','555-1000','bruce@wayne.com','www.wayneenterprises.com','2022-01-01','2025-12-31','Platinum',150,'AutoRenew','http://img.com/wayne.png',7,8,'Long term tech sponsor', '2023-01-01 00:00:00','2023-01-01 00:00:00',1,10,'TX123456','11');
INSERT INTO sponsor (sponsor_id,sponsor_name,industry,contact_person,contact_phone,contact_email,website,contract_start_date,contract_end_date,sponsorship_level,amount_million,renewal_option,logo_url,primary_color_id,secondary_color_id,notes,created_at,updated_at,active_flag,headquarters_location_id,tax_id,public_relations_contact_id) VALUES (2,'Stark Industries','Defense','Tony Stark','555-2000','tony@stark.com','www.starkindustries.com','2023-03-15','2026-03-14','Gold',200,'Manual','http://img.com/stark.png',9,10,'Major weapons supplier', '2023-03-15 00:00:00','2023-03-15 00:00:00',1,11,'TX654321','12');
INSERT INTO sponsor (sponsor_id,sponsor_name,industry,contact_person,contact_phone,contact_email,website,contract_start_date,contract_end_date,sponsorship_level,amount_million,renewal_option,logo_url,primary_color_id,secondary_color_id,notes,created_at,updated_at,active_flag,headquarters_location_id,tax_id,public_relations_contact_id) VALUES (3,'Xavier Foundation','Education','Charles Xavier','555-3000','charles@xavier.org','www.xavierfoundation.org','2021-06-01','2024-05-31','Silver',80,'AutoRenew','http://img.com/xavier.png',11,12,'Science and education sponsor', '2023-06-01 00:00:00','2023-06-01 00:00:00',1,12,'TX987654','13');


-- Table describing sidekicks attached to heroes
CREATE TABLE sidekick (
    sidekick_id INTEGER PRIMARY KEY,
    sidekick_name TEXT,
    real_name TEXT,
    hero_id INTEGER,
    gender_id INTEGER,
    origin_story TEXT,
    debut_issue TEXT,
    abilities_summary TEXT,
    alignment_id INTEGER,
    powers_count INTEGER,
    debut_year INTEGER,
    status TEXT,
    affiliation TEXT,
    costume_color_id INTEGER,
    training_level INTEGER,
    mentor_hero_id INTEGER,
    biography_url TEXT,
    created_at DATETIME,
    updated_at DATETIME,
    notes TEXT
);

INSERT INTO sidekick (sidekick_id,sidekick_name,real_name,hero_id,gender_id,origin_story,debut_issue,abilities_summary,alignment_id,powers_count,debut_year,status,affiliation,costume_color_id,training_level,mentor_hero_id,biography_url,created_at,updated_at,notes) VALUES (1,'Robin','Dick Grayson',3,1,'Orphaned acrobat','Detective Comics #38','Acrobatics, martial arts','Good',2,1940,'Active','BatmanFamily',13,5,3,'http://bio.com/robin','2023-01-01 00:00:00','2023-01-01 00:00:00','First sidekick of Batman');
INSERT INTO sidekick (sidekick_id,sidekick_name,real_name,hero_id,gender_id,origin_story,debut_issue,abilities_summary,alignment_id,powers_count,debut_year,status,affiliation,costume_color_id,training_level,mentor_hero_id,biography_url,created_at,updated_at,notes) VALUES (2,'KidFlash','Wally West',4,1,'Speed Force accident','The Flash #110','Super speed, time manipulation','Good',3,1992,'Active','FlashFamily',14,6,4,'http://bio.com/kidflash','2023-01-02 00:00:00','2023-01-02 00:00:00','Young speedster');
INSERT INTO sidekick (sidekick_id,sidekick_name,real_name,hero_id,gender_id,origin_story,debut_issue,abilities_summary,alignment_id,powers_count,debut_year,status,affiliation,costume_color_id,training_level,mentor_hero_id,biography_url,created_at,updated_at,notes) VALUES (3,'Bucky','James Barnes',5,1,'Winter soldier program','Captain America #1','Expert marksman, tactical genius','Good',2,1941,'Active','CaptainAmericaTeam',15,5,5,'http://bio.com/bucky','2023-01-03 00:00:00','2023-01-03 00:00:00','Close ally of Captain America');


-- Table describing comic series metadata
CREATE TABLE comic_series (
    series_id INTEGER PRIMARY KEY,
    series_name TEXT,
    publisher_id INTEGER,
    start_year INTEGER,
    end_year INTEGER,
    genre TEXT,
    target_audience TEXT,
    avg_issue_length_pages INTEGER,
    price_per_issue_usd INTEGER,
    total_issues INTEGER,
    is_ongoing INTEGER,
    primary_language_id INTEGER,
    translation_available_flag INTEGER,
    website TEXT,
    social_media_handle TEXT,
    editorial_director_id INTEGER,
    rating_average REAL,
    award_won TEXT,
    description TEXT,
    created_at DATETIME
);

INSERT INTO comic_series (series_id,series_name,publisher_id,start_year,end_year,genre,target_audience,avg_issue_length_pages,price_per_issue_usd,total_issues,is_ongoing,primary_language_id,translation_available_flag,website,social_media_handle,editorial_director_id,rating_average,award_won,description,created_at) VALUES (1,'Justice League',1,1960,0,'Superhero','All Ages',32,3,500,1,1,1,'www.justiceleaguecomic.com','JLComic','101',8.5,'Best Series 2022','Chronicles of the Justice League team','2023-01-01 00:00:00');
INSERT INTO comic_series (series_id,series_name,publisher_id,start_year,end_year,genre,target_audience,avg_issue_length_pages,price_per_issue_usd,total_issues,is_ongoing,primary_language_id,translation_available_flag,website,social_media_handle,editorial_director_id,rating_average,award_won,description,created_at) VALUES (2,'Avengers Assemble',2,1963,0,'Superhero','Teens',30,4,600,1,1,1,'www.avengerscomic.com','AvengersComic','102',8.7,'Comic of the Year 2021','Stories of Earth's mightiest heroes','2023-01-02 00:00:00');
INSERT INTO comic_series (series_id,series_name,publisher_id,start_year,end_year,genre,target_audience,avg_issue_length_pages,price_per_issue_usd,total_issues,is_ongoing,primary_language_id,translation_available_flag,website,social_media_handle,editorial_director_id,rating_average,award_won,description,created_at) VALUES (3,'X-Men Evolution',3,1975,0,'Mutant','Teens',28,3,450,1,1,1,'www.xmencomic.com','XMenComic','103',8.3,'Best Art 2020','Mutant team fighting for coexistence','2023-01-03 00:00:00');


-- Table describing villains
CREATE TABLE villain (
    villain_id INTEGER PRIMARY KEY,
    villain_name TEXT,
    real_name TEXT,
    nemesis_hero_id INTEGER,
    alignment_id INTEGER,
    threat_level INTEGER,
    first_appearance_issue TEXT,
    powers_summary TEXT,
    base_of_operations_id INTEGER,
    organization_id INTEGER,
    status TEXT,
    captured_flag INTEGER,
    bounty_million INTEGER,
    lair_location_id INTEGER,
    weakness_summary TEXT,
    criminal_record TEXT,
    incarceration_date DATE,
    release_date DATE,
    notes TEXT,
    created_at DATETIME
);

INSERT INTO villain (villain_id,villain_name,real_name,nemesis_hero_id,alignment_id,threat_level,first_appearance_issue,powers_summary,base_of_operations_id,organization_id,status,captured_flag,bounty_million,lair_location_id,weakness_summary,criminal_record,incarceration_date,release_date,notes,created_at) VALUES (1,'Joker','Unknown',3,2,9,'Batman #1','Expert chemist, insanity','501','301','AtLarge',0,200,'601','Psychological instability','Multiple murders','1975-06-01',NULL,'Clown Prince of Crime','2023-01-01 00:00:00');
INSERT INTO villain (villain_id,villain_name,real_name,nemesis_hero_id,alignment_id,threat_level,first_appearance_issue,powers_summary,base_of_operations_id,organization_id,status,captured_flag,bounty_million,lair_location_id,weakness_summary,criminal_record,incarceration_date,release_date,notes,created_at) VALUES (2,'Lex Luthor','Alexander Luthor',4,2,8,'Superman #1','Genius intellect, resources','502','302','AtLarge',0,150,'602','Kryptonite based','Corporate crimes','1972-01-15',NULL,'Arch enemy of Superman','2023-01-02 00:00:00');
INSERT INTO villain (villain_id,villain_name,real_name,nemesis_hero_id,alignment_id,threat_level,first_appearance_issue,powers_summary,base_of_operations_id,organization_id,status,captured_flag,bounty_million,lair_location_id,weakness_summary,criminal_record,incarceration_date,release_date,notes,created_at) VALUES (3,'Magneto','Erik Lehnsherr',5,2,7,'X-Men #1','Magnetism manipulation','503','303','Captured',1,120,'603','Iron based attacks','War crimes','1995-04-20','2005-04-20','Master of magnetism','2023-01-03 00:00:00');


-- Table describing organizations (e.g., villain leagues, hero coalitions)
CREATE TABLE organization (
    org_id INTEGER PRIMARY KEY,
    org_name TEXT,
    type TEXT,
    founder_hero_id INTEGER,
    founding_year INTEGER,
    headquarters_location_id INTEGER,
    global_presence_flag INTEGER,
    member_count INTEGER,
    primary_focus TEXT,
    budget_million INTEGER,
    public_image_rating INTEGER,
    logo_url TEXT,
    contact_email TEXT,
    website TEXT,
    legal_status TEXT,
    registration_number TEXT,
    compliance_status TEXT,
    last_audit_date DATE,
    notes TEXT,
    created_at DATETIME
);

INSERT INTO organization (org_id,org_name,type,founder_hero_id,founding_year,headquarters_location_id,global_presence_flag,member_count,primary_focus,budget_million,public_image_rating,logo_url,contact_email,website,legal_status,registration_number,compliance_status,last_audit_date,notes,created_at) VALUES (1,'Legion of Doom','VillainGroup',2,1960,800,1,12,'World domination',250,30,'http://img.com/legion.png','contact@legion.com','www.legion.com','NonProfit','LD001','Compliant','2022-12-01','Most feared villain alliance','2023-01-01 00:00:00');
INSERT INTO organization (org_id,org_name,type,founder_hero_id,founding_year,headquarters_location_id,global_presence_flag,member_count,primary_focus,budget_million,public_image_rating,logo_url,contact_email,website,legal_status,registration_number,compliance_status,last_audit_date,notes,created_at) VALUES (2,'Justice League International','HeroCoalition',1,1987,801,1,15,'Global peacekeeping',500,85,'http://img.com/jli.png','info@jli.com','www.jli.org','NonProfit','JLI001','Compliant','2023-01-15','International extension of Justice League','2023-01-02 00:00:00');
INSERT INTO organization (org_id,org_name,type,founder_hero_id,founding_year,headquarters_location_id,global_presence_flag,member_count,primary_focus,budget_million,public_image_rating,logo_url,contact_email,website,legal_status,registration_number,compliance_status,last_audit_date,notes,created_at) VALUES (3,'X-Force','MutantTeam',5,1991,802,0,6,'Covert operations',120,70,'http://img.com/xforce.png','ops@xforce.com','www.xforce.net','Private','XF001','Pending','2022-11-20','Secretive mutant task force','2023-01-03 00:00:00');


-- Table describing multiverse branches
CREATE TABLE multiverse_branch (
    branch_id INTEGER PRIMARY KEY,
    branch_name TEXT,
    description TEXT,
    creation_date DATE,
    governing_body_id INTEGER,
    dominant_universe_id INTEGER,
    stability_index INTEGER,
    known_portals_count INTEGER,
    active_events_count INTEGER,
    primary_language_id INTEGER,
    technology_level TEXT,
    average_lifespan_years INTEGER,
    major_threats TEXT,
    interbranch_trade_volume INTEGER,
    diplomatic_relations_status TEXT,
    security_protocol_level INTEGER,
    main_residence_location_id INTEGER,
    archive_url TEXT,
    notes TEXT,
    created_at DATETIME
);

INSERT INTO multiverse_branch (branch_id,branch_name,description,creation_date,governing_body_id,dominant_universe_id,stability_index,known_portals_count,active_events_count,primary_language_id,technology_level,average_lifespan_years,major_threats,interbranch_trade_volume,diplomatic_relations_status,security_protocol_level,main_residence_location_id,archive_url,notes,created_at) VALUES (1,'Prime Earth','Main continuity of heroes','1960-01-01',1001,2001,95,12,3,1,'Advanced',82,'Kryptonian invasions',5000,'Allied',5,3001,'http://archive.com/prime','Core universe for most narratives','2023-01-01 00:00:00');
INSERT INTO multiverse_branch (branch_id,branch_name,description,creation_date,governing_body_id,dominant_universe_id,stability_index,known_portals_count,active_events_count,primary_language_id,technology_level,average_lifespan_years,major_threats,interbranch_trade_volume,diplomatic_relations_status,security_protocol_level,main_residence_location_id,archive_url,notes,created_at) VALUES (2,'Earth-2','Alternate timeline with different hero origins','1970-05-15',1002,2002,88,8,5,1,'Mid',78,'Multiversal incursions',3000,'Neutral',4,3002,'http://archive.com/earth2','Features a darker version of heroes','2023-01-02 00:00:00');
INSERT INTO multiverse_branch (branch_id,branch_name,description,creation_date,governing_body_id,dominant_universe_id,stability_index,known_portals_count,active_events_count,primary_language_id,technology_level,average_lifespan_years,major_threats,interbranch_trade_volume,diplomatic_relations_status,security_protocol_level,main_residence_location_id,archive_url,notes,created_at) VALUES (3,'Earth-3','Flash-dominated reality','1980-09-30',1003,2003,80,5,2,1,'Low',70,'Speed Force anomalies',1500,'Hostile',3,3003,'http://archive.com/earth3','Centered on speedster societies','2023-01-03 00:00:00');