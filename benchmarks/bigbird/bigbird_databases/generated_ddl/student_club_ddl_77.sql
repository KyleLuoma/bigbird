-- Lab safety training records
CREATE TABLE lab_safety_training (
    training_id TEXT PRIMARY KEY,
    lab_id TEXT,
    trainer_name TEXT,
    trainer_certification TEXT,
    training_date TEXT,
    start_time TEXT,
    end_time TEXT,
    training_topic TEXT,
    material_version TEXT,
    participants INTEGER,
    completed INTEGER,
    certification_issued TEXT,
    renewal_required TEXT,
    notes TEXT,
    safety_score REAL,
    equipment_checked INTEGER,
    emergency_procedure_reviewed INTEGER,
    chemical_handling_module TEXT,
    waste_disposal_module TEXT,
    biohazard_training TEXT,
    radiation_safety TEXT,
    training_location TEXT
);

INSERT INTO lab_safety_training VALUES ('LT001','LABA','DrSmith','CSHS','2023-03-12','09:00','12:00','General Safety','v1',25,1,'2023-04-12','Yes','All good',95.2,1,1,'Chem101','Waste202','BioSafe','Radiation101','BuildingA');
INSERT INTO lab_safety_training VALUES ('LT002','LABB','ProfJones','CSPH','2023-06-05','13:00','16:00','Chemical Handling','v2',30,1,'2023-07-05','No','Reviewed protocols',88.5,1,1,'Chem202','Waste303','BioSafe','No','BuildingB');
INSERT INTO lab_safety_training VALUES ('LT003','LABC','MsLee','CSHS','2023-09-20','08:30','11:30','Equipment Operation','v1',20,0,NULL,'Yes','Pending signatures',0.0,0,0,'Chem303','Waste404','BioSafe','Radiation202','BuildingC');

-- Campus cafe menu items
CREATE TABLE cafe_menu_item (
    item_id TEXT PRIMARY KEY,
    item_name TEXT,
    category TEXT,
    sub_category TEXT,
    price REAL,
    calories INTEGER,
    protein_g REAL,
    fat_g REAL,
    carbs_g REAL,
    portion_size TEXT,
    vegan INTEGER,
    vegetarian INTEGER,
    gluten_free INTEGER,
    nut_free INTEGER,
    dairy_free INTEGER,
    spicy_level INTEGER,
    seasonal TEXT,
    preparation_time_min INTEGER,
    supplier_id TEXT,
    sku TEXT,
    barcode TEXT,
    location TEXT,
    availability TEXT,
    daily_limit INTEGER
);

INSERT INTO cafe_menu_item VALUES ('CM001','Avocado Toast','Breakfast','Sandwich',5.99,250,6,12,28,'2 slices',1,1,0,1,0,0,'Spring','10','SUP001','SKU001','123456789012','Main Hall','Available',50);
INSERT INTO cafe_menu_item VALUES ('CM002','Choco Latte','Beverage','Coffee',3.49,150,5,4,20,'12 oz',0,0,1,0,0,0,'Year-round','5','SUP002','SKU002','987654321098','North Wing','Available',200);
INSERT INTO cafe_menu_item VALUES ('CM003','Quinoa Salad','Lunch','Salad',7.25,320,8,10,45,'1 bowl',1,1,1,1,0,0,'Summer','12','SUP003','SKU003','555555555555','East Atrium','Out of Stock',30);

-- Global study abroad programs
CREATE TABLE global_study_abroad (
    program_id TEXT PRIMARY KEY,
    program_name TEXT,
    host_university TEXT,
    country TEXT,
    continent TEXT,
    start_date TEXT,
    end_date TEXT,
    credit_hours INTEGER,
    tuition_fee REAL,
    accommodation_type TEXT,
    housing_cost REAL,
    meal_plan TEXT,
    meal_cost REAL,
    language_requirement TEXT,
    language_proficiency TEXT,
    scholarship_available INTEGER,
    scholarship_amount REAL,
    application_deadline TEXT,
    enrollment_cap INTEGER,
    program_coordinator TEXT,
    coordinator_email TEXT,
    travel_insurance_required INTEGER,
    visa_assistance INTEGER,
    orientation_date TEXT,
    cultural_events INTEGER,
    health_requirements TEXT,
    covid_policy TEXT,
    program_status TEXT,
    notes TEXT
);

INSERT INTO global_study_abroad VALUES ('GA001','Spring Research in Japan','University of Tokyo','Japan','Asia','2024-04-01','2024-06-30',12,8000,'Residence Hall',1200,'Full Board',800,'JLPT N2','Intermediate',1,2000,'2023-11-15',25,'DrTanaka','tanaka@utokyo.ac.jp',1,1,'2024-03-20',5,'Vaccination','Mask Required','Open','Focus on robotics');
INSERT INTO global_study_abroad VALUES ('GA002','Summer Business Immersion in Germany','LMU Munich','Germany','Europe','2024-07-10','2024-08-30',6,6000,'Apartment',1500,'Half Board',500,'German B1','Intermediate',0,0,'2024-02-01',30,'ProfMuller','muller@lmu.de',1,1,'2024-06-25',8,'Testing','Vaccination','Open','Marketing focus');
INSERT INTO global_study_abroad VALUES ('GA003','Fall Cultural Exchange in Brazil','USP Sao Paulo','Brazil','South America','2024-09-15','2024-12-15',9,4500,'Homestay',800,'Breakfast Only',300,'Portuguese A2','Beginner',1,1500,'2024-05-20',20,'DrSilva','silva@usp.br',1,0,'2024-09-01',10,'Vaccination','Mask Optional','Open','Arts and humanities');

-- Parking violation fines
CREATE TABLE parking_violation_fine (
    violation_id TEXT PRIMARY KEY,
    vehicle_plate TEXT,
    violation_date TEXT,
    violation_time TEXT,
    location TEXT,
    violation_code TEXT,
    description TEXT,
    officer_id TEXT,
    fine_amount REAL,
    points INTEGER,
    paid INTEGER,
    payment_date TEXT,
    payment_method TEXT,
    appeal_filed INTEGER,
    appeal_status TEXT,
    appeal_decision_date TEXT,
    reduced_amount REAL,
    notice_sent INTEGER,
    notice_date TEXT,
    vehicle_make TEXT,
    vehicle_model TEXT,
    vehicle_color TEXT,
    registered_owner TEXT,
    owner_contact TEXT,
    enforcement_zone TEXT,
    camera_capture INTEGER,
    latitude REAL,
    longitude REAL,
    notes TEXT
);

INSERT INTO parking_violation_fine VALUES ('PV001','ABC1234','2023-05-10','14:30','Lot A','P01','No parking permit','OFF001',75.00,2,0,NULL,'','0','','','',1,'2023-05-11','Toyota','Corolla','White','John Doe','5551234567','Zone 1',1,40.7128,-74.0060,'');
INSERT INTO parking_violation_fine VALUES ('PV002','XYZ5678','2023-06-22','09:15','Garage B','P02','Expired meter','OFF002',50.00,1,1,'2023-06-25','Credit Card','0','','','',1,'2023-06-23','Honda','Civic','Black','Jane Smith','5559876543','Zone 2',0,34.0522,-118.2437,'Paid on time');
INSERT INTO parking_violation_fine VALUES ('PV003','LMN9012','2023-07-30','18:45','Street C','P03','Blocking fire lane','OFF003',150.00,5,0,NULL,'','1','Pending','',0,1,'2023-07-31','Ford','Focus','Red','Mike Brown','5551112222','Zone 3',1,41.8781,-87.6298,'');

-- Online course completion records
CREATE TABLE online_course_completion (
    completion_id TEXT PRIMARY KEY,
    course_id TEXT,
    student_id TEXT,
    enrollment_date TEXT,
    completion_date TEXT,
    status TEXT,
    final_grade REAL,
    certificate_issued INTEGER,
    certificate_number TEXT,
    hours_spent REAL,
    modules_completed INTEGER,
    total_modules INTEGER,
    quiz_average REAL,
    assignment_average REAL,
    forum_participation INTEGER,
    peer_review_score REAL,
    instructor_feedback TEXT,
    device_used TEXT,
    browser_type TEXT,
    ip_address TEXT,
    geographic_region TEXT,
    learning_path TEXT,
    mentorship_assigned INTEGER,
    mentorship_hours REAL,
    notes TEXT,
    accreditation_body TEXT,
    credit_earned INTEGER,
    payment_status TEXT,
    refund_requested INTEGER,
    refund_amount REAL
);

INSERT INTO online_course_completion VALUES ('OC001','CS101','STU001','2023-01-05','2023-03-20','Completed',92.5,1,'CERT001',45.0,10,10,88.0,94.0,5,4.5','Excellent work','Laptop','Chrome','192.168.1.10','North America','STEM','0',0,'','AccreditationX',3,'Paid',0,0);
INSERT INTO online_course_completion VALUES ('OC002','ENG202','STU002','2023-02-10','2023-04-15','Completed',85.0,1,'CERT002',38.0,8,8,80.0,85.0,3,4.0','Good effort','Tablet','Safari','10.0.0.5','Europe','Humanities','1',2,'Mentor assigned','AccreditationY',2,'Paid',0,0);
INSERT INTO online_course_completion VALUES ('OC003','MATH303','STU003','2023-03-01','2023-05-25','Incomplete',null,0,NULL,20.0,5,10,70.0,75.0,2,3.5','Needs improvement','Desktop','Firefox','172.16.0.2','Asia','STEM','0',0,'','AccreditationZ',0,'Pending',0,0);

-- Facility renovation budget
CREATE TABLE facility_renovation_budget (
    budget_id TEXT PRIMARY KEY,
    facility_id TEXT,
    project_name TEXT,
    fiscal_year TEXT,
    total_budget REAL,
    allocated_amount REAL,
    spent_amount REAL,
    remaining_amount REAL,
    approval_status TEXT,
    approved_by TEXT,
    approval_date TEXT,
    contractor_id TEXT,
    contract_value REAL,
    contingency_fund REAL,
    cost_overrun_flag INTEGER,
    cost_overrun_amount REAL,
    projected_completion_date TEXT,
    actual_completion_date TEXT,
    renovation_phase TEXT,
    priority_level INTEGER,
    sustainability_score REAL,
    green_certification TEXT,
    notes TEXT,
    audit_timestamp TEXT,
    revision_number INTEGER,
    funding_source TEXT,
    external_grant_amount REAL,
    internal_funds_amount REAL,
    project_manager TEXT,
    manager_contact TEXT,
    compliance_status TEXT
);

INSERT INTO facility_renovation_budget VALUES ('RB001','BLDG01','Main Hall Roof Replacement','2023',250000,200000,150000,50000,'Approved','DirA','2023-01-15','CONT001',180000,20000,0,0,'2023-12-31',NULL,'Construction',1,85.5,'LEED Gold','Replace aging roof','2023-02-01',1,'University Funds',50000,150000,'John Manager','5552223333','Compliant');
INSERT INTO facility_renovation_budget VALUES ('RB002','BLDG02','East Wing HVAC Upgrade','2024',320000,250000,200000,50000,'Pending','DirB','2023-06-10','CONT002',260000,25000,1,15000,'2024-09-30',NULL,'Planning',2,78.0,'LEED Silver','Upgrade to energy efficient HVAC','2023-07-01',1,'Capital Reserve',80000,240000,'Emily Lead','5554445555','Pending Approval');
INSERT INTO facility_renovation_budget VALUES ('RB003','BLDG03','West Wing Lab Refurbishment','2025',500000,400000,380000,20000,'Approved','DirC','2024-03-20','CONT003',420000,30000,0,0,'2025-05-15','2025-05-10','Construction',1,92.0,'LEED Platinum','Modernize lab spaces','2024-04-01',2,'Research Grant',200000,300000,'Michael Supervisor','5557778888','Compliant');

-- Greenhouse climate log
CREATE TABLE greenhouse_climate_log (
    log_id TEXT PRIMARY KEY,
    greenhouse_id TEXT,
    log_timestamp TEXT,
    temperature_c REAL,
    humidity_percent REAL,
    co2_ppm REAL,
    light_lux REAL,
    soil_moisture REAL,
    nutrient_level_ppm REAL,
    irrigation_event INTEGER,
    ventilation_state TEXT,
    heating_state TEXT,
    cooling_state TEXT,
    shading_state TEXT,
    fan_speed_rpm INTEGER,
    water_pump_flow_lpm REAL,
    sensor_battery_percent REAL,
    alert_triggered INTEGER,
    alert_type TEXT,
    operator_id TEXT,
    notes TEXT,
    maintenance_required INTEGER,
    maintenance_scheduled_date TEXT,
    external_weather_temp_c REAL,
    external_weather_humidity REAL,
    external_weather_precip_mm REAL
);

INSERT INTO greenhouse_climate_log VALUES ('GL001','GH001','2023-08-01 08:00',22.5,55.0,420,15000,30,250,0,'Open','Off','Off','Closed',1200,0.0,95.0,0,'','OP001','Morning check','0',NULL,30.0,60.0,0);
INSERT INTO greenhouse_climate_log VALUES ('GL002','GH001','2023-08-01 14:00',28.0,48.0,600,20000,45,300,1,'Closed','On','Off','Closed',1500,12.5,88.0,1,'High CO2','OP002','Irrigation cycle','1','2023-08-03',31.0,65.0,0);
INSERT INTO greenhouse_climate_log VALUES ('GL003','GH001','2023-08-01 20:00',19.0,70.0,350,12000,25,200,0,'Open','Off','On','Open',800,0.0,92.0,0,'','OP001','Night cooling','0',NULL,28.0,58.0,0);

-- Museum exhibit piece records
CREATE TABLE museum_exhibit_piece (
    piece_id TEXT PRIMARY KEY,
    exhibition_id TEXT,
    title TEXT,
    artist TEXT,
    creation_year TEXT,
    medium TEXT,
    dimensions TEXT,
    provenance TEXT,
    acquisition_date TEXT,
    acquisition_method TEXT,
    insurance_value REAL,
    current_location TEXT,
    display_start_date TEXT,
    display_end_date TEXT,
    condition_report TEXT,
    conservation_treatment TEXT,
    on_loan INTEGER,
    loan_institution TEXT,
    loan_start_date TEXT,
    loan_end_date TEXT,
    loan_conditions TEXT,
    public_accessible INTEGER,
    audio_guide_available INTEGER,
    lighting_requirements TEXT,
    security_level TEXT,
    climate_control TEXT,
    exhibition_theme TEXT,
    curator_id TEXT,
    notes TEXT,
    digital_catalog_id TEXT,
    image_reference TEXT,
    restoration_history TEXT,
    exhibit_category TEXT,
    visitor_interaction TEXT,
    funding_source TEXT,
    grant_number TEXT,
    sponsorship TEXT,
    display_case_type TEXT,
    QR_code TEXT,
    interactive_element INTEGER,
    maintenance_schedule TEXT,
    last_inspection_date TEXT,
    inspection_notes TEXT
);

INSERT INTO museum_exhibit_piece VALUES ('EP001','EXH001','Starry Night','Vincent van Gogh','1889','Oil on canvas','73.7 cm × 92.1 cm','Private collection','1995-06-01','Purchase',5000000,'Gallery A','2023-01-15','2023-06-30','Excellent','None',0,NULL,NULL,NULL,NULL,1,1,'Low light','High','Controlled 21C','Impressionism','CUR001','','DC001','starry_night.jpg','', 'Painting','Static','Museum Fund','GR001','ArtCorp','Glass','QR001',0,'2023-02-01','No issues');
INSERT INTO museum_exhibit_piece VALUES ('EP002','EXH002','The Thinker','Auguste Rodin','1904','Bronze','180 cm × 98 cm','Museum of Modern Art','2001-09-12','Donation',2500000,'Sculpture Hall','2023-07-01','2024-12-31','Good','Cleaning',1,'National Gallery','2023-07-01','2024-07-01','No cleaning fluids','1',0,'Spotlight','Medium','Controlled 20C','Modern Sculpture','CUR002','','DC002','the_thinker.jpg','Repatriated 2010','Sculpture','Interactive','Foundation Grant','GR002','SculptureCo','Pedestal','QR002',1,'2023-08-01','Slight patina observed');
INSERT INTO museum_exhibit_piece VALUES ('EP003','EXH003','Ancient Vase','Unknown','5th Century BCE','Terracotta','30 cm height','Archaeological dig','1980-04-20','Excavation',120000,'Ancient Art Room','2023-03-01','2023-09-30','Fair','Restoration 2015',0,NULL,NULL,NULL,NULL,0,0,'Low light','Low','Controlled 18C','Ancient Art','CUR003','','DC003','ancient_vase.jpg','Restored 2015','Artifact','Static','Historical Society','GR003','Heritage Fund','Glass Case','QR003',0,'2023-05-15','Minor cracks repaired');

-- Startup incubator cohort details
CREATE TABLE startup_incubator_cohort (
    cohort_id TEXT PRIMARY KEY,
    cohort_name TEXT,
    start_date TEXT,
    end_date TEXT,
    number_of_startups INTEGER,
    total_funding REAL,
    average_funding_per_startup REAL,
    mentor_count INTEGER,
    office_space_assigned INTEGER,
    shared_resources TEXT,
    program_focus TEXT,
    application_deadline TEXT,
    selection_criteria TEXT,
    acceptance_rate REAL,
    demo_day_date TEXT,
    demo_day_location TEXT,
    investor_participation INTEGER,
    post_program_followup INTEGER,
    alumni_network INTEGER,
    alumni_events_per_year INTEGER,
    cohort_budget REAL,
    sponsor_list TEXT,
    technology_stack TEXT,
    industry_sectors TEXT,
    curriculum_outline TEXT,
    weekly_meeting_hours INTEGER,
    virtual_access INTEGER,
    program_manager TEXT,
    manager_contact TEXT,
    evaluation_method TEXT,
    feedback_score REAL,
    acceleration_stage TEXT,
    equity_taken_percent REAL,
    exit_rate REAL,
    graduated_startups INTEGER,
    failed_startups INTEGER,
    notes TEXT,
    funding_rounds_completed INTEGER,
    total_valuation REAL,
    partnership_agreements TEXT,
    branding_materials TEXT,
    final_report_link TEXT
);

INSERT INTO startup_incubator_cohort VALUES ('CI001','Spring 2023 Cohort','2023-01-15','2023-06-15',12,3000000,250000,8,1,'Co-working space, labs','AI & ML','2022-12-01','Pitch deck, traction','15.0','2023-06-20','Main Auditorium',5,1,1,2,500000,'TechVentures, InnovateX','Python, TensorFlow','Healthcare, FinTech','Modules on product-market fit, fundraising','20',1,'Alice Johnson','5553334444','Surveys','4.5','Early-stage','5','20','10','2','70','6','50000000','PartnerA, PartnerB','Logo, Pitch Deck','http://reports.example.com/ci001');
INSERT INTO startup_incubator_cohort VALUES ('CI002','Summer 2023 Cohort','2023-07-01','2023-12-31',15,4500000,300000,10,1,'Lab equipment, 3D printers','CleanTech','2023-05-15','Prototype, sustainability impact','12.0','2024-01-15','Innovation Hall',7,1,1,3,600000,'GreenFund, EcoCapital','MATLAB, SolidWorks','Energy, Agriculture','Workshops on scaling, regulations','25',1,'Bob Smith','5556667777','Interviews','4.2','Growth','7','25','12','3','80','8','75000000','EcoPartnerX, EcoPartnerY','Brand Guide, Videos','http://reports.example.com/ci002');
INSERT INTO startup_incubator_cohort VALUES ('CI003','Fall 2023 Cohort','2023-10-01','2024-03-31',10,2000000,200000,5,0,'Virtual platform, cloud credits','FinTech','2023-08-20','Revenue, user growth','20.0','2024-04-15','Conference Center',4,1,1,1,400000,'FinCap, MoneyTree','Node.js, React','Banking, Payments','Curriculum on compliance, risk','15',1,'Carol Lee','5558889999','KPIs','4.8','Seed','6','15','5','1','85','5','30000000','FinPartnerA','Logo, Pitch Deck','http://reports.example.com/ci003');

-- Alumni philanthropy event records
CREATE TABLE alumni_philanthropy_event (
    event_id TEXT PRIMARY KEY,
    event_name TEXT,
    event_date TEXT,
    venue TEXT,
    host_department TEXT,
    target_audience TEXT,
    fundraising_goal REAL,
    amount_raised REAL,
    number_of_attendees INTEGER,
    keynote_speaker TEXT,
    sponsor_list TEXT,
    ticket_price REAL,
    donation_options TEXT,
    live_stream_available INTEGER,
    live_stream_platform TEXT,
    auction_items_count INTEGER,
    auction_total_estimated REAL,
    raffle_winners INTEGER,
    volunteer_count INTEGER,
    catering_type TEXT,
    menu_highlights TEXT,
    entertainment_type TEXT,
    press_coverage TEXT,
    social_media_hashtag TEXT,
    email_campaign_sent INTEGER,
    email_open_rate REAL,
    post_event_survey_response_rate REAL,
    thank_you_letters_sent INTEGER,
    alumni_recognition_program TEXT,
    legacy_gift_options TEXT,
    matching_gift_percentage REAL,
    tax_receipt_issued INTEGER,
    event_photos_link TEXT,
    video_highlights_link TEXT,
    feedback_summary TEXT,
    budget_actual REAL,
    budget_variance REAL,
    notes TEXT,
    coordinator_name TEXT,
    coordinator_email TEXT,
    follow_up_meeting_scheduled INTEGER,
    follow_up_meeting_date TEXT
);

INSERT INTO alumni_philanthropy_event VALUES ('AP001','Class of 2000 Reunion Gala','2023-09-15','Grand Ballroom','Alumni Relations','Class of 2000 Alumni',50000,72000,350,'Dr Jane Doe','CompanyA, CompanyB',150,'Online, Mail','1','YouTube',30,15000,5,20,'Plated Dinner','Steak, Vegan Paella','Live Band','Campus Gazette','#Class2000Gala',1,45.0,70.0,350,'Alumni Hall of Fame','Endowed Scholarship',50,1,'http://photos.example.com/ap001','http://videos.example.com/ap001','Positive overall sentiment',68000,2000,'','Emily Carter','emily.carter@example.edu',1,'2023-09-30');
INSERT INTO alumni_philanthropy_event VALUES ('AP002','Spring Giving Day','2023-04-10','Student Center','Development','All Alumni',100000,130000,800,'Prof John Smith','TechCorp, HealthInc',0,'Online','1','Zoom',50,25000,10,30,'Buffet','Salads, Pasta','DJ','Campus Radio','#SpringGiving',1,55.0,65.0,800,'Donor Wall','Planned Giving',100,1,'http://photos.example.com/ap002','http://videos.example.com/ap002','High engagement, suggestions for future events',125000,-2500,'','Michael Lee','michael.lee@example.edu',1,'2023-04-20');
INSERT INTO alumni_philanthropy_event VALUES ('AP003','Winter Charity Auction','2023-12-05','Conference Hall','Community Outreach','Local Community',75000,90000,200,'Ms Laura Green','CharityOrg, RetailCo',75,'In-person','0','',80,40000,12,15,'Cocktail Reception','Canapés, Desserts','String Quartet','Local Newspaper','#WinterAuction',1,48.0,75.0,200,'Community Champion','Matching Gift Campaign',75,1,'http://photos.example.com/ap003','http://videos.example.com/ap003','Positive feedback, request for more auction items',89000,14000,'','Sarah Patel','sarah.patel@example.edu',0,NULL);