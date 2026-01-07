-- Conference schedule and details
CREATE TABLE conference_schedule (
    conference_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    city TEXT NOT NULL,
    country TEXT NOT NULL,
    venue TEXT NOT NULL,
    organizer TEXT NOT NULL,
    theme TEXT NOT NULL,
    expected_attendees INTEGER NOT NULL,
    keynote_speaker TEXT NOT NULL,
    sponsor_1 TEXT,
    sponsor_2 TEXT,
    sponsor_3 TEXT,
    registration_fee REAL NOT NULL,
    early_bird_deadline DATE NOT NULL,
    late_registration_deadline DATE NOT NULL,
    contact_email TEXT NOT NULL,
    contact_phone TEXT NOT NULL,
    website TEXT NOT NULL,
    abstract_submission_deadline DATE NOT NULL,
    poster_session_enabled INTEGER NOT NULL,
    virtual_option INTEGER NOT NULL,
    notes TEXT
);
INSERT INTO conference_schedule VALUES (1,'TechSummit2025','2025-06-10','2025-06-12','Berlin','Germany','BerlinExpo','TechOrg','FutureTech',5000,'DrAliceSmith','TechCorp','InnovateLtd','DataSolutions',299.99,'2025-04-30','2025-05-31','info@techsummit.com','+491234567890','www.techsummit.com','2025-04-01',1,1,'');
INSERT INTO conference_schedule VALUES (2,'HealthCon2025','2025-09-15','2025-09-18','Paris','France','ParisConvention','HealthAssoc','GlobalHealth',3000,'ProfBobJones','MediHealth','WellCare','PharmaInc',199.99,'2025-07-31','2025-08-31','contact@healthcon.com','+33123456789','www.healthcon2025.com','2025-07-01',0,0,'');
INSERT INTO conference_schedule VALUES (3,'GreenEnergyForum','2025-11-05','2025-11-07','Oslo','Norway','OsloHall','EcoGroup','SustainableFuture',1500,'DrEvaNord','EnergyCo','SolarSys','WindPower',149.99,'2025-09-30','2025-10-31','forum@greenenergy.com','+4723456789','www.greenenergyforum.no','2025-09-15',1,0,'');

-- Art exhibition catalog
CREATE TABLE art_exhibition (
    exhibition_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    opening_date DATE NOT NULL,
    closing_date DATE NOT NULL,
    museum TEXT NOT NULL,
    city TEXT NOT NULL,
    country TEXT NOT NULL,
    curator TEXT NOT NULL,
    number_of_artworks INTEGER NOT NULL,
    featured_artist_1 TEXT,
    featured_artist_2 TEXT,
    featured_artist_3 TEXT,
    ticket_price REAL NOT NULL,
    vip_ticket_price REAL,
    sponsor_1 TEXT,
    sponsor_2 TEXT,
    sponsor_3 TEXT,
    education_programs INTEGER NOT NULL,
    interactive_installations INTEGER NOT NULL,
    audio_guide_available INTEGER NOT NULL,
    website TEXT NOT NULL,
    contact_email TEXT NOT NULL,
    contact_phone TEXT NOT NULL,
    accessibility_rating INTEGER NOT NULL,
    notes TEXT
);
INSERT INTO art_exhibition VALUES (1,'ModernVisions','2025-03-01','2025-06-30','CityArtMuseum','Tokyo','Japan','KeikoTanaka',120,'YukiMatsumoto','HiroSato','NaomiKudo',15.0,30.0,'ArtBank','CultureFund','UrbanArts',1,1,1,'www.modernvisions.jp','info@cityart.jp','+81312345678',5,'');
INSERT INTO art_exhibition VALUES (2,'RenaissanceRetrospect','2025-05-15','2025-09-15','NationalGallery','London','UK','EmmaClark',200,'LeonardoDaVinci','Michelangelo','Raphael',12.5,NULL,'HeritageTrust','ArtsCouncil','HistoricFunds',0,0,1,'www.renaissanceretro.co.uk','contact@nglondon.uk','+442071234567',4,'');
INSERT INTO art_exhibition VALUES (3,'SculptureInSpace','2025-08-10','2025-11-20','ModernArtCenter','NewYork','USA','JamesLee',80,'AnnaSmith','LuisGonzalez','MiraPatel',20.0,40.0,'SculptureFund','DesignAlliance','SpaceArts',1,1,0,'www.sculptureinspace.com','info@macny.com','+12125551234',5,'');

-- University course catalog
CREATE TABLE university_course (
    course_id INTEGER PRIMARY KEY,
    department TEXT NOT NULL,
    course_code TEXT NOT NULL,
    title TEXT NOT NULL,
    description TEXT,
    credits INTEGER NOT NULL,
    level TEXT NOT NULL,
    semester_offered TEXT NOT NULL,
    instructor TEXT NOT NULL,
    max_enrollment INTEGER NOT NULL,
    current_enrollment INTEGER NOT NULL,
    prerequisite_course TEXT,
    lab_required INTEGER NOT NULL,
    lecture_hours_per_week REAL NOT NULL,
    lab_hours_per_week REAL,
    syllabus_url TEXT,
    classroom TEXT,
    building TEXT,
    campus TEXT,
    assessment_method TEXT,
    grading_scale TEXT,
    language_of_instruction TEXT,
    contact_email TEXT,
    contact_phone TEXT,
    notes TEXT
);
INSERT INTO university_course VALUES (1,'ComputerScience','CS101','IntroToProgramming','Fundamentals of coding',4,'Undergraduate','Fall','DrEmilyWhite',200,180,NULL,0,3.0,NULL,'http://univ.edu/cs101/syllabus','Room101','TechBuilding','MainCampus','Exams', 'A-F','English','cs101@univ.edu','+1234567890','');
INSERT INTO university_course VALUES (2,'History','HIST210','ModernEuropeanHistory','Study of Europe 1900-2000',3,'Undergraduate','Spring','ProfMarkBrown',150,145,'HIST101',0,2.5,NULL,'http://univ.edu/hist210/syllabus','Room202','HumanitiesHall','NorthCampus','Paper','Pass/Fail','English','hist210@univ.edu','+1234567891','');
INSERT INTO university_course VALUES (3,'Biology','BIO350','GeneticsLaboratory','Hands‑on genetics',5,'Graduate','Fall','DrLauraGreen',30,28,'BIO300',1,2.0,3.0,'http://univ.edu/bio350/syllabus','Lab5','ScienceCenter','SouthCampus','Project', 'A-F','English','bio350@univ.edu','+1234567892','');

-- Wildlife reserve monitoring
CREATE TABLE wildlife_reserve (
    reserve_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    country TEXT NOT NULL,
    region TEXT NOT NULL,
    area_sqkm REAL NOT NULL,
    established_year INTEGER NOT NULL,
    habitat_type TEXT NOT NULL,
    protected_species_count INTEGER NOT NULL,
    flagship_species TEXT NOT NULL,
    ranger_in_charge TEXT NOT NULL,
    annual_budget REAL NOT NULL,
    visitor_capacity INTEGER NOT NULL,
    visitor_center_exists INTEGER NOT NULL,
    poaching_incidents_last_year INTEGER NOT NULL,
    climate_zone TEXT NOT NULL,
    average_annual_rainfall_mm REAL NOT NULL,
    average_temperature_c REAL NOT NULL,
    water_source TEXT NOT NULL,
    vegetation_density_index REAL NOT NULL,
    monitoring_station_count INTEGER NOT NULL,
    remote_sensing_available INTEGER NOT NULL,
    notes TEXT
);
INSERT INTO wildlife_reserve VALUES (1,'SerengetiNationalPark','Tanzania','EastAfrica',14763.0,1949,'Savanna',1500,'Lion','JohnDoe',5000000.0,5000,1,23,'Tropical','800.0',22.5,'RiverLakes',0.78,12,1,'');
INSERT INTO wildlife_reserve VALUES (2,'GreatBarrierReefMarinePark','Australia','Queensland',344400.0,1975,'CoralReef',2000,'Clownfish','JaneSmith',8000000.0,30000,1,5,'Tropical','1200.0',26.0,'OceanCurrents',0.45,20,1,'');
INSERT INTO wildlife_reserve VALUES (3,'YellowstoneNationalPark','USA','Wyoming',8983.0,1872,'TemperateForest',3000,'Bison','MikeJohnson',6000000.0,10000,1,12,'Continental','710.0',7.5,'Geysers',0.65,15,1,'');

-- Space mission log
CREATE TABLE space_mission (
    mission_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    launch_date DATE NOT NULL,
    landing_date DATE,
    agency TEXT NOT NULL,
    mission_type TEXT NOT NULL,
    destination TEXT NOT NULL,
    spacecraft TEXT NOT NULL,
    crew_size INTEGER,
    payload_mass_kg REAL,
    orbit_type TEXT,
    mission_status TEXT NOT NULL,
    duration_days INTEGER,
    primary_objective TEXT,
    secondary_objective TEXT,
    budget_million_usd REAL,
    commander TEXT,
    pilot TEXT,
    flight_director TEXT,
    telemetry_url TEXT,
    data_archive_url TEXT,
    notes TEXT
);
INSERT INTO space_mission VALUES (1,'ArtemisI','2025-02-15',NULL,'NASA','Lunar','Moon','Orion',4,15000.0,'TransLunarInjection','Active',180,'Test lunar orbit','Validate life support',2000.0,'AliceWong','BobLi','CarolKim','http://nasa.gov/artemisI/telemetry','http://nasa.gov/artemisI/archive','');
INSERT INTO space_mission VALUES (2,'MarsExpress2024','2024-07-30','2025-01-15','ESA','Exploration','Mars','MAVEN',0,1500.0,'Heliocentric','Completed',200,'Study Martian atmosphere','Search for water',900.0,'DavidN','EveO','FrankP','http://esa.int/marsexpress2024/telemetry','http://esa.int/marsexpress2024/archive','');
INSERT INTO space_mission VALUES (3,'JupiterProbe','2026-11-05',NULL,'JAXA','Flyby','Jupiter','Hayabusa3',0,800.0,'JupiterOrbit','Planned',400,'Map magnetic field','Observe moons',1200.0,'GraceQ','HiroR','IvyS','http://jaxa.jp/jupiterprobe/telemetry','http://jaxa.jp/jupiterprobe/archive','');

-- Publishing house catalogue
CREATE TABLE publishing_house (
    publisher_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    founded_year INTEGER NOT NULL,
    headquarters_city TEXT NOT NULL,
    headquarters_country TEXT NOT NULL,
    annual_revenue_million REAL NOT NULL,
    number_of_employees INTEGER NOT NULL,
    ceo_name TEXT NOT NULL,
    imprints TEXT,
    genres_focused TEXT,
    isbn_prefix TEXT,
    website TEXT NOT NULL,
    contact_email TEXT NOT NULL,
    contact_phone TEXT NOT NULL,
    corporate_social_responsibility TEXT,
    digital_platforms TEXT,
    printing_facilities INTEGER,
    distribution_centers INTEGER,
    editorial_office_locations INTEGER,
    average_pages_per_book INTEGER,
    average_price_usd REAL,
    bestseller_list_inclusion_rate REAL,
    awards_won INTEGER,
    notes TEXT
);
INSERT INTO publishing_house VALUES (1,'GlobalBooks','1990','NewYork','USA',850.0,1200,'LauraMiller','AlphaPress|BetaBooks','Fiction|NonFiction','978-1','http://globalbooks.com','info@globalbooks.com','+12125551111','GreenInitiative','eBooks|Audiobooks',3,5,2,350,24.99,0.12,15,'');
INSERT INTO publishing_house VALUES (2,'ScienceEditions','1985','London','UK',420.0,800,'ThomasGrey','SciTech','Science|Technology','978-0','http://scienceeditions.co.uk','contact@scienceeditions.co.uk','+442071234567','STEMOutreach','OnlineJournal|eBooks',2,4,3,280,34.5,0.08,9,'');
INSERT INTO publishing_house VALUES (3,'ArtisanPress','2002','Paris','France',260.0,450,'SophieLaurent','Artisan|Canvas','Art|Design','978-2','http://artisanpress.fr','info@artisanpress.fr','+33123456789','EcoPrint','PrintOnDemand',1,2,1,420,45.0,0.10,5,'');

-- Food supply chain tracking
CREATE TABLE food_supply_chain (
    batch_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT NOT NULL,
    farm_id INTEGER NOT NULL,
    harvest_date DATE NOT NULL,
    processing_plant_id INTEGER NOT NULL,
    processing_date DATE NOT NULL,
    packaging_type TEXT NOT NULL,
    container_id TEXT NOT NULL,
    transport_company TEXT NOT NULL,
    departure_date DATE NOT NULL,
    arrival_date DATE NOT NULL,
    warehouse_id INTEGER NOT NULL,
    storage_temperature_c REAL NOT NULL,
    shelf_life_days INTEGER NOT NULL,
    quality_check_passed INTEGER NOT NULL,
    certification TEXT,
    distributor_id INTEGER NOT NULL,
    retail_outlet_id INTEGER NOT NULL,
    retail_price_usd REAL NOT NULL,
    organic_flag INTEGER NOT NULL,
    gluten_free_flag INTEGER NOT NULL,
    notes TEXT
);
INSERT INTO food_supply_chain VALUES (1001,'GoldenApples','Fruit',501,'2025-08-01',301,'2025-08-05','Box','C001','FastLogistics','2025-08-06','2025-08-08',401,-1.5,30,1,'GlobalGAP',601,701,1.99,1,0,'');
INSERT INTO food_supply_chain VALUES (1002,'OrganicQuinoa','Grain',502,'2025-07-15',302,'2025-07-20','Bag','C002','EcoTrans','2025-07-21','2025-07-23',402,0,365,1,'ISO22000',602,702,3.49,1,1,'');
INSERT INTO food_supply_chain VALUES (1003,'FreeRangeEggs','Dairy',503,'2025-09-10',303,'2025-09-12','Carton','C003','QuickShip','2025-09-13','2025-09-14',403,4,21,1,'None',603,703,2.79,0,0,'');

-- Urban planning project database
CREATE TABLE urban_planning_project (
    project_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    city TEXT NOT NULL,
    country TEXT NOT NULL,
    start_date DATE NOT NULL,
    projected_end_date DATE NOT NULL,
    budget_million_usd REAL NOT NULL,
    area_sqkm REAL NOT NULL,
    primary_use TEXT NOT NULL,
    secondary_use TEXT,
    lead_planner TEXT NOT NULL,
    stakeholder_1 TEXT,
    stakeholder_2 TEXT,
    stakeholder_3 TEXT,
    environmental_impact_score INTEGER,
    public_transport_integration INTEGER,
    green_space_percentage REAL,
    number_of_residential_units INTEGER,
    number_of_commercial_units INTEGER,
    total_job_creation_estimate INTEGER,
    zoning_changes_required INTEGER,
    permits_obtained INTEGER,
    community_engagement_sessions INTEGER,
    status TEXT NOT NULL,
    notes TEXT
);
INSERT INTO urban_planning_project VALUES (1,'RiverfrontRevitalization','Copenhagen','Denmark','2025-01-01','2028-12-31',650.0,12.5,'MixedUse','Recreation','LarsHansen','CityCouncil','EnvironmentalAgency','TransportAuthority',78,1,22.5,1500,300,12000,1,1,12,'InProgress','');
INSERT INTO urban_planning_project VALUES (2,'TechParkExpansion','SanFrancisco','USA','2024-06-15','2027-06-14',900.0,8.3,'Commercial','Research','MiaChen','CityCouncil','EconomicDevelopmentBoard',85,1,15.0,0,250,8000,1,1,15,'Planning','');
INSERT INTO urban_planning_project VALUES (3,'HistoricDistrictPreservation','Florence','Italy','2025-03-01','2030-02-28',420.0,5.0,'Cultural','Tourism','GiuseppeRossi','CityCouncil','CulturalHeritageDept',92,0,30.0,200,0,1500,0,1,20,'Approved','');

-- Digital game statistics repository
CREATE TABLE digital_game_stats (
    game_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    developer TEXT NOT NULL,
    release_date DATE NOT NULL,
    genre TEXT NOT NULL,
    platform TEXT NOT NULL,
    total_players INTEGER NOT NULL,
    peak_concurrent_players INTEGER NOT NULL,
    avg_session_length_minutes REAL NOT NULL,
    revenue_usd REAL NOT NULL,
    in_game_purchase_revenue_usd REAL,
    ad_revenue_usd REAL,
    daily_active_users INTEGER,
    monthly_active_users INTEGER,
    retention_day_1 REAL,
    retention_day_7 REAL,
    retention_day_30 REAL,
    average_fps REAL,
    server_region_1 TEXT,
    server_region_2 TEXT,
    server_region_3 TEXT,
    support_tickets_open INTEGER,
    support_tickets_resolved INTEGER,
    notes TEXT
);
INSERT INTO digital_game_stats VALUES (101,'StarQuest','NebulaStudios','2024-11-20','MMORPG','PC',2500000,75000,45.5,18000000.0,5000000.0,2000000.0,1200000,3000000,0.55,0.35,0.20,62.5,'NA','EU','ASIA',250,240,'');
INSERT INTO digital_game_stats VALUES (102,'PixelRacer','RetroGamesInc','2025-02-10','Racing','Console',850000,30000,22.0,7500000.0,1500000.0,500000.0,400000,900000,0.70,0.48,0.30,58.0,'NA','EU','SA',120,115,'');
INSERT INTO digital_game_stats VALUES (103,'MysteryMansion','EnigmaWorks','2025-05-05','Puzzle','Mobile',4200000,120000,15.3,12000000.0,8000000.0,1000000.0,2000000,3500000,0.65,0.45,0.25,45.0,'APAC','EU','NA',340,330,'');

-- Climate change report archive
CREATE TABLE climate_change_report (
    report_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    publication_date DATE NOT NULL,
    author TEXT NOT NULL,
    organization TEXT NOT NULL,
    report_type TEXT NOT NULL,
    geographic_scope TEXT NOT NULL,
    average_global_temperature_anomaly_c REAL,
    sea_level_rise_mm REAL,
    carbon_dioxide_ppm REAL,
    methane_ppb REAL,
    nitrous_oxide_ppb REAL,
    ice_sheet_mass_loss_gt REAL,
    extreme_weather_events_index REAL,
    renewable_energy_percentage REAL,
    deforestation_rate_km2_per_year REAL,
    policy_recommendations TEXT,
    data_sources TEXT,
    peer_reviewed INTEGER,
    abstract TEXT,
    doi TEXT,
    pdf_url TEXT,
    notes TEXT
);
INSERT INTO climate_change_report VALUES (1,'Global Temperature Trends 2025','2025-03-01','DrAnnaK','WorldClimatologyInstitute','Assessment','Global',1.12,85.4,419.0,1900.0,340.0,120.5,2.3,28.5,12.0,'Reduce emissions|Increase renewables','SatelliteData|GroundStations',1,'Comprehensive analysis of temperature records','10.1234/wci.2025.t1','http://wci.org/reports/2025_temp.pdf','');
INSERT INTO climate_change_report VALUES (2,'Sea Level Rise Projections 2025','2025-04-15','ProfMarkL','CoastalResearchCenter','Projection','Coastal',NULL,120.0,415.0,1850.0,330.0,90.0,2.8,30.0,15.0,'Implement coastal defenses','TideGauge|Altimetry',0,'Projected rise based on IPCC scenarios','10.5678/crc.2025.slr','http://crc.org/reports/2025_sealevel.pdf','');
INSERT INTO climate_change_report VALUES (3,'Carbon Budget Outlook 2025','2025-06-20','DrLeilaM','RenewableFuture','Outlook','Global',NULL,NULL,425.0,1970.0,350.0,100.0,3.0,35.0,10.0,'Accelerate net-zero policies','AtmosphericMonitoring',1,'Assessment of remaining carbon budget','10.9101/rf.2025.cb','http://renewablefuture.org/reports/2025_carbontbudget.pdf','');

-- Satellite observation metadata catalogue
CREATE TABLE satellite_observation (
    observation_id INTEGER PRIMARY KEY,
    satellite_name TEXT NOT NULL,
    instrument TEXT NOT NULL,
    sensor_type TEXT NOT NULL,
    acquisition_date DATE NOT NULL,
    acquisition_time TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    resolution_m REAL NOT NULL,
    band TEXT NOT NULL,
    cloud_coverage_percent REAL,
    sun_elevation_deg REAL,
    sun_azimuth_deg REAL,
    processing_level TEXT,
    product_id TEXT NOT NULL,
    file_format TEXT NOT NULL,
    file_size_mb REAL,
    data_provider TEXT NOT NULL,
    orbital_phase TEXT,
    mission_phase TEXT,
    notes TEXT
);
INSERT INTO satellite_observation VALUES (5001,'Sentinel2A','MSI','Multispectral','2025-07-10','10:15:30',45.1234,12.5678,10.0,'B04',12.5,45.0,180.0,'Level-2A','S2A_20250710T101530','GeoTIFF',250.0,'ESA','Ascending','Operational','');
INSERT INTO satellite_observation VALUES (5002,'Landsat8','OLI','Multispectral','2025-07-11','14:20:00',46.9876,13.4321,30.0,'B05',5.0,55.0,200.0,'Level-1','LC08_20250711T142000','GeoTIFF',300.0,'USGS','Descending','Operational','');
INSERT INTO satellite_observation VALUES (5003,'WorldView3','VHR','Panchromatic','2025-07-12','08:05:45',44.5555,11.2222,0.31,'PAN',0.0,60.0,210.0,'Level-2','WV3_20250712T080545','GeoTIFF',500.0,'Maxar','Ascending','Operational','');
