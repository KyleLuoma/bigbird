-- Research laboratory information
CREATE TABLE research_lab
(
    lab_id                 TEXT PRIMARY KEY,
    lab_name               TEXT,
    building               TEXT,
    floor                  INTEGER,
    head_researcher        TEXT,
    capacity               INTEGER,
    safety_certified       TEXT,
    equipment_budget       REAL,
    start_year             INTEGER,
    accreditation_status  TEXT,
    phone                  TEXT,
    email                  TEXT,
    website                TEXT,
    established_date       TEXT,
    funding_source         TEXT,
    num_projects           INTEGER,
    area_sqft              REAL,
    bio_security_level    TEXT,
    waste_disposal_method  TEXT,
    operating_hours        TEXT
);

INSERT INTO research_lab VALUES
('RL001','NanoTech Lab','Science Hall',3,'DrSmith',30,'Yes',250000,'2015','Accredited','5551234567','drsmith@university.edu','nanotechlab.univ.edu','2015-06-01','University Grant',12,1500.5,'Level2','Recycling','08:00-18:00');

INSERT INTO research_lab VALUES
('RL002','Robotics Lab','Engineering Complex',2,'ProfLee',45,'Yes',400000,'2012','Accredited','5559876543','proflee@university.edu','roboticslab.univ.edu','2012-09-15','Industry Partnership',20,2500,'Level3','Hazardous Waste','09:00-19:00');

INSERT INTO research_lab VALUES
('RL003','BioChemistry Lab','Health Sciences',1,'DrKim',25,'No',180000,'2018','Pending', '5552468101','drkim@university.edu','biochemlab.univ.edu','2018-01-20','Federal Grant',8,1200,'Level1','Standard','07:30-17:30');

-- Student internship tracking
CREATE TABLE student_internship
(
    internship_id          TEXT PRIMARY KEY,
    intern_code            TEXT,
    student_name           TEXT,
    company_name           TEXT,
    department             TEXT,
    supervisor_name        TEXT,
    start_date             TEXT,
    end_date               TEXT,
    stipend                REAL,
    remote_allowed         TEXT,
    hours_per_week         INTEGER,
    project_title          TEXT,
    description            TEXT,
    status                 TEXT,
    evaluation_score       REAL,
    feedback_notes         TEXT,
    contact_email          TEXT,
    contact_phone          TEXT,
    location_city          TEXT,
    location_state         TEXT,
    duration_months        INTEGER,
    renewal_possible       TEXT
);

INSERT INTO student_internship VALUES
('INT001','IN001','Alice Johnson','TechNova','Software','Bob Martin','2023-05-01','2023-11-01',1500,'Yes',35,'AI Platform Integration','Develop AI features for platform','Completed',4.5,'Excellent work','alice.johnson@university.edu','5551112222','Springfield','IL',6,'No');

INSERT INTO student_internship VALUES
('INT002','IN002','Carlos Ruiz','HealthPlus','Data Analytics','Maria Gomez','2023-06-15','2024-06-14',1800,'No',40,'Predictive Health Models','Build models for patient risk assessment','Ongoing',4.0,'Good progress','carlos.ruiz@university.edu','5553334444','Riverdale','CA',12,'Yes');

INSERT INTO student_internship VALUES
('INT003','IN003','Sophie Lee','EcoSolutions','Sustainability','David Chen','2023-07-01','2024-01-01',1300,'Yes',30,'Carbon Footprint Reduction','Implement carbon tracking tools','Completed',4.2,'Met objectives','sophie.lee@university.edu','5555556666','Greenville','TX',6,'No');

-- Campus art installation catalog
CREATE TABLE campus_art_installation
(
    installation_id        TEXT PRIMARY KEY,
    title                  TEXT,
    artist_name            TEXT,
    medium                 TEXT,
    dimensions             TEXT,
    year_installed         INTEGER,
    location_building      TEXT,
    location_room          TEXT,
    status                 TEXT,
    maintenance_schedule   TEXT,
    insurance_policy       TEXT,
    cost                   REAL,
    sponsor_name           TEXT,
    description            TEXT,
    lighting_requirements TEXT,
    accessibility_rating  TEXT,
    gps_latitude           REAL,
    gps_longitude          REAL,
    warranty_expiration    TEXT,
    curator_contact        TEXT
);

INSERT INTO campus_art_installation VALUES
('AI001','Waves of Time','Mia Torres','Sculpture','3x2x1m','2020','Art Center','Lobby','Active','Annual','POL12345',25000,'University Arts Fund','Abstract waves representing history','LED','High',40.7128,-74.0060,'2025-12-31','curator1@university.edu');

INSERT INTO campus_art_installation VALUES
('AI002','Digital Dawn','Liam Patel','Video Installation','1920x1080','2021','Science Hall','Auditorium','Active','Biannual','POL67890',18000,'TechCorp','Looping sunrise over campus','Projector','Medium',34.0522,-118.2437,'2024-06-30','curator2@university.edu');

INSERT INTO campus_art_installation VALUES
('AI003','Eco Mural','Sofia Rivera','Mural','10x5m','2019','Student Union','East Wall','Active','Quarterly','POL54321',12000,'Green Initiative','Mural of local flora and fauna','Natural Light','High',37.7749,-122.4194,'2023-11-15','curator3@university.edu');

-- Library event series management
CREATE TABLE library_event_series
(
    series_id              TEXT PRIMARY KEY,
    series_name            TEXT,
    theme                  TEXT,
    start_date             TEXT,
    end_date               TEXT,
    frequency              TEXT,
    organizer              TEXT,
    location_room          TEXT,
    total_sessions         INTEGER,
    audience_target        TEXT,
    registration_required TEXT,
    online_access          TEXT,
    budget_allocated       REAL,
    sponsor                TEXT,
    description            TEXT,
    contact_phone          TEXT,
    contact_email          TEXT,
    status                 TEXT,
    notes                  TEXT,
    created_by             TEXT,
    last_updated           TEXT
);

INSERT INTO library_event_series VALUES
('LES001','Author Spotlight','Contemporary Fiction','2023-09-01','2023-12-01','Monthly','LibrarianAnna','Room 101',4,'Students','Yes','Yes',5000,'BookWorld','Series featuring modern novelists','5557778888','anna.librarian@university.edu','Active','No notes','AdminUser','2023-08-15');

INSERT INTO library_event_series VALUES
('LES002','Tech Talk','Emerging Technologies','2023-10-15','2024-04-15','Biweekly','TechCoordinator','Room 202',13,'Faculty','Yes','No',8000,'TechPartners','Discussion on AI, VR, and IoT','5559990000','tech.coord@university.edu','Planned','Awaiting speaker confirmations','TechAdmin','2023-09-20');

INSERT INTO library_event_series VALUES
('LES003','Historical Documentary','Local History','2023-11-05','2024-02-05','Weekly','HistoryDept','Room 303',13,'Community','No','Yes',3000,'HeritageFund','Screenings of documentaries about regional history','5551231234','history.dept@university.edu','Active','All sessions booked','HistoryAdmin','2023-10-01');

-- Faculty mentor assignment records
CREATE TABLE faculty_mentor_assignment
(
    assignment_id          TEXT PRIMARY KEY,
    faculty_id             TEXT,
    mentor_name            TEXT,
    department             TEXT,
    mentee_student_id      TEXT,
    start_date             TEXT,
    end_date               TEXT,
    meeting_frequency      TEXT,
    objectives             TEXT,
    progress_rating        REAL,
    notes                  TEXT,
    contact_email          TEXT,
    contact_phone          TEXT,
    office_location        TEXT,
    research_area          TEXT,
    mentorship_type        TEXT,
    funding_source         TEXT,
    evaluation_date        TEXT,
    evaluation_score       REAL,
    renewal_flag           TEXT,
    active_flag            TEXT
);

INSERT INTO faculty_mentor_assignment VALUES
('FA001','F001','DrEmilyClark','Computer Science','S001','2023-08-01','2024-07-31','Monthly','Develop research skills','4.5','Successful first year','emily.clark@university.edu','5552223333','CS Building 12','Machine Learning','Research','University Grant','2024-06-15','4.7','Yes','Yes');

INSERT INTO faculty_mentor_assignment VALUES
('FA002','F002','ProfJohnDoe','Mechanical Engineering','S002','2023-09-15','2024-09-14','Biweekly','Design project mentorship','4.2','Progressing well','john.doe@university.edu','5554445555','ME Building 3','Robotics','Project','Industry Partner','2024-08-01','4.0','Yes','Yes');

INSERT INTO faculty_mentor_assignment VALUES
('FA003','F003','DrLauraSmith','Biology','S003','2023-07-01','2024-06-30','Monthly','Lab techniques training','4.8','Outstanding performance','laura.smith@university.edu','5556667777','Biology Hall 5','Genetics','Academic','Federal Grant','2024-05-20','4.9','No','No');

-- Digital publishing issue catalog
CREATE TABLE digital_publishing_issue
(
    issue_id               TEXT PRIMARY KEY,
    publication_title      TEXT,
    volume                 INTEGER,
    issue_number           INTEGER,
    publication_date       TEXT,
    editor_in_chief        TEXT,
    issn                   TEXT,
    doi_prefix             TEXT,
    total_pages            INTEGER,
    theme                  TEXT,
    cover_image_path       TEXT,
    description            TEXT,
    url                    TEXT,
    access_level           TEXT,
    copyright_holder       TEXT,
    license_type           TEXT,
    peer_review_status     TEXT,
    submission_deadline    TEXT,
    acceptance_rate        REAL,
    pdf_checksum           TEXT
);

INSERT INTO digital_publishing_issue VALUES
('DP001','Journal of Innovations','12','3','2023-10-01','DrAllen','1234-5678','10.1234','45','Emerging Tech','/images/cover1.png','Focus on AI advancements','https://journals.univ.edu/vol12/issue3','Open','University Press','CCBY','Completed','2023-06-30','0.25','AB12CD34EF56');

INSERT INTO digital_publishing_issue VALUES
('DP002','Environmental Review','7','1','2023-09-15','DrBaker','8765-4321','10.5678','30','Climate Change Policy','/images/cover2.png','Policy analysis for 2023','https://envrev.univ.edu/vol7/issue1','Subscription','EcoPress','CCBYSA','Completed','2023-04-15','0.30','CD34EF56AB12');

INSERT INTO digital_publishing_issue VALUES
('DP003','Medical Case Reports','5','2','2023-11-20','DrCarter','1122-3344','10.9101','25','Rare Diseases','/images/cover3.png','Case studies of uncommon conditions','https://medcase.univ.edu/vol5/issue2','Restricted','HealthPublishers','CC0','In Review','2023-08-01','0.20','EF56AB12CD34');

-- Environmental monitoring station registry
CREATE TABLE environmental_monitoring_station
(
    station_id             TEXT PRIMARY KEY,
    station_name           TEXT,
    latitude               REAL,
    longitude              REAL,
    elevation_m            REAL,
    sensor_type            TEXT,
    installation_date      TEXT,
    last_maintenance       TEXT,
    status                 TEXT,
    data_retention_period  TEXT,
    owner_agency           TEXT,
    power_source           TEXT,
    connectivity_type      TEXT,
    battery_capacity_ah    REAL,
    firmware_version       TEXT,
    calibration_date       TEXT,
    max_operating_temp_c   REAL,
    min_operating_temp_c   REAL,
    data_endpoint_url      TEXT,
    notes                  TEXT
);

INSERT INTO environmental_monitoring_station VALUES
('ST001','North Campus Air','40.7128','-74.0060','15','AirQuality','2022-03-10','2023-09-01','Active','5 years','Environmental Dept','Solar','WiFi','5000','v2.1','2023-08-15','50','-20','https://data.univ.edu/st001','No issues');

INSERT INTO environmental_monitoring_station VALUES
('ST002','South Campus Water','34.0522','-118.2437','10','WaterQuality','2021-11-20','2023-07-20','Active','3 years','Environmental Dept','Mains','Cellular','3000','v1.9','2023-06-30','40','-10','https://data.univ.edu/st002','Calibration due soon');

INSERT INTO environmental_monitoring_station VALUES
('ST003','East Campus Soil','37.7749','-122.4194','20','SoilMoisture','2023-01-05','2023-10-10','Active','2 years','Environmental Dept','Battery','LoRa','2000','v3.0','2023-09-30','45','-15','https://data.univ.edu/st003','All sensors nominal');

-- Parking zone capacity details
CREATE TABLE parking_zone_capacity
(
    zone_id                TEXT PRIMARY KEY,
    zone_name              TEXT,
    total_spaces           INTEGER,
    covered_spaces         INTEGER,
    handicap_spaces        INTEGER,
    electric_charging_spots INTEGER,
    zone_location          TEXT,
    surveillance_present   TEXT,
    lighting_level         TEXT,
    maintenance_contract   TEXT,
    last_inspection_date   TEXT,
    average_occupancy_rate REAL,
    peak_hours             TEXT,
    pricing_model          TEXT,
    hourly_rate            REAL,
    daily_max              REAL,
    monthly_pass_available TEXT,
    contract_vendor        TEXT,
    notes                  TEXT,
    created_at             TEXT
);

INSERT INTO parking_zone_capacity VALUES
('PZ001','Lot A','200','150','10','5','North Campus','Yes','High','VendorX','2023-08-01','0.75','08:00-10:00,17:00-19:00','Flat','2.5','20','Yes','VendorX','Close to main building','2023-07-20');

INSERT INTO parking_zone_capacity VALUES
('PZ002','Lot B','120','80','5','2','South Campus','No','Medium','VendorY','2023-06-15','0.60','07:00-09:00,16:00-18:00','Tiered','3.0','25','No','VendorY','Shaded area','2023-06-01');

INSERT INTO parking_zone_capacity VALUES
('PZ003','Garage C','300','300','12','8','East Campus','Yes','High','VendorZ','2023-09-10','0.85','09:00-11:00,18:00-20:00','Flat','4.0','30','Yes','VendorZ','Multi-level structure','2023-08-25');

-- Health service inventory tracking
CREATE TABLE health_service_inventory
(
    item_id                TEXT PRIMARY KEY,
    item_name              TEXT,
    category               TEXT,
    quantity_on_hand      INTEGER,
    reorder_level          INTEGER,
    supplier_name          TEXT,
    purchase_date          TEXT,
    expiration_date        TEXT,
    storage_location       TEXT,
    batch_number           TEXT,
    unit_cost              REAL,
    total_value            REAL,
    responsible_staff      TEXT,
    last_audit_date        TEXT,
    safety_data_sheet_url  TEXT,
    compliance_status      TEXT,
    temperature_requirement TEXT,
    hazardous_flag         TEXT,
    disposal_method        TEXT,
    notes                  TEXT
);

INSERT INTO health_service_inventory VALUES
('HSI001','Surgical Mask','Protective Equipment','5000','1000','MediSupply','2023-03-01','2025-02-28','Warehouse A','BATCH123','0.5','2500','JohnDoe','2023-09-01','http://sds.medisupply.com/mask','Compliant','Room Temp','No','Incineration','Stored in dry area');

INSERT INTO health_service_inventory VALUES
('HSI002','Latex Gloves','Protective Equipment','2000','500','HealthGoods','2023-04-15','2025-04-14','Warehouse B','BATCH456','0.2','400','JaneSmith','2023-09-10','http://sds.healthgoods.com/gloves','Compliant','Room Temp','No','Incineration','Check for tears regularly');

INSERT INTO health_service_inventory VALUES
('HSI003','Epinephrine Autoinjector','Medication','150','30','PharmaPlus','2022-12-10','2024-12-09','Pharmacy Closet','BATCH789','15.0','2250','MikeBrown','2023-08-20','http://sds.pharmaplus.com/epi','Compliant','Cold Storage','Yes','Medical Waste','Expiry monitoring required');

-- Alumni story archive
CREATE TABLE alumni_story
(
    story_id               TEXT PRIMARY KEY,
    alumnus_name           TEXT,
    graduation_year        INTEGER,
    degree                 TEXT,
    current_position       TEXT,
    company                TEXT,
    story_title            TEXT,
    story_body             TEXT,
    publication_date       TEXT,
    media_type             TEXT,
    image_url              TEXT,
    video_url              TEXT,
    tags                   TEXT,
    likes_count            INTEGER,
    shares_count           INTEGER,
    comments_count         INTEGER,
    featured_flag          TEXT,
    editor_notes           TEXT,
    contact_email          TEXT,
    contact_phone          TEXT
);

INSERT INTO alumni_story VALUES
('AS001','Laura Martinez','2010','BSc Computer Science','Senior Engineer','TechNova','From Campus to Cloud','After graduating I joined TechNova where I work on cloud infrastructure. My journey...', '2023-08-01','Article','/images/alumni1.jpg','', 'tech,cloud,career','120','30','15','Yes','Great storytelling','laura.martinez@technova.com','5551112222');

INSERT INTO alumni_story VALUES
('AS002','David Kim','2005','MBA','Director of Operations','HealthPlus','Scaling Health Services','Leading operations at HealthPlus has taught me the importance of...', '2023-09-15','Video','/images/alumni2.jpg','/videos/alumni2.mp4','health,leadership','200','50','25','No','Needs caption edit','david.kim@healthplus.com','5553334444');

INSERT INTO alumni_story VALUES
('AS003','Sophie Chen','2018','BA Graphic Design','Creative Lead','DesignStudio','Designing Beyond the Classroom','My time at the university sparked a passion for visual communication...', '2023-10-05','Article','/images/alumni3.jpg','', 'design,creative','80','20','5','No','Add author bio','sophie.chen@designstudio.com','5555556666');