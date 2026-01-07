-- Learning Environment Audits
CREATE TABLE learning_environment_audits (
    audit_id INTEGER PRIMARY KEY,
    school_cds TEXT,
    audit_date DATE,
    room_type TEXT,
    room_number TEXT,
    square_feet REAL,
    lighting_quality TEXT,
    ac_efficiency REAL,
    noise_level_db REAL,
    temperature_c REAL,
    humidity_percent REAL,
    seat_count INTEGER,
    technology_present INTEGER,
    air_quality_index REAL,
    inspection_notes TEXT,
    followup_required INTEGER,
    followup_date DATE,
    auditor_name TEXT,
    district_code TEXT,
    county_name TEXT,
    state TEXT,
    comments TEXT
);

INSERT INTO learning_environment_audits VALUES (1,'0123456789','2023-03-15','Classroom','101',850.5,'Good',0.85,45.2,22.0,45.0,30,1,12.5,'All lights functional',0,NULL,'Jane Doe','D001','Orange County','CA','First audit');
INSERT INTO learning_environment_audits VALUES (2,'0987654321','2023-04-10','Laboratory','Lab A',1200.0,'Excellent',0.90,38.0,21.0,40.0,25,1,9.8,'Ventilation check needed',1,'2023-05-01','John Smith','D002','Los Angeles County','CA','Follow‑up scheduled');
INSERT INTO learning_environment_audits VALUES (3,'1122334455','2023-05-22','Gymnasium','Gym',3500.0,'Fair',0.70,55.0,20.0,50.0,200,0,30.2,'Replace old bulbs',1,'2023-06-15','Emily Lee','D003','San Diego County','CA','Urgent improvements');

-- Student Entrepreneurship Incubators
CREATE TABLE student_entrepreneurship_incubators (
    incubator_id INTEGER PRIMARY KEY,
    school_cds TEXT,
    incubator_name TEXT,
    startup_capacity INTEGER,
    current_startups INTEGER,
    funding_pool_usd REAL,
    mentor_count INTEGER,
    partner_org TEXT,
    established_year INTEGER,
    focus_area TEXT,
    space_sqft REAL,
    operating_hours TEXT,
    contact_email TEXT,
    phone TEXT,
    website TEXT,
    status TEXT,
    application_deadline DATE,
    annual_graduates INTEGER,
    average_funding_per_startup REAL,
    success_rate_percent REAL,
    notes TEXT,
    district_code TEXT
);

INSERT INTO student_entrepreneurship_incubators VALUES (1,'0123456789','Innovate Hub',15,7,250000.0,12,'TechStars',2018,'Tech & Design',1800.0,'Mon-Fri 09:00-17:00','innovate@school.org','5551234567','http://innovatehub.edu','Active','2023-12-01',4,35000.0,57.1,'First cohort completed', 'D001');
INSERT INTO student_entrepreneurship_incubators VALUES (2,'0987654321','BizLaunch Lab',20,12,400000.0,18,'Local Chamber',2020,'Business',2200.0,'Mon-Fri 08:00-18:00','bizlaunch@school.org','5559876543','http://bizlaunch.edu','Active','2024-01-15',6,45000.0,62.5,'Partnered with seed fund', 'D002');
INSERT INTO student_entrepreneurship_incubators VALUES (3,'1122334455','EcoStart Space',10,3,150000.0,8,'Green Foundation',2019,'Sustainability',1300.0,'Mon-Thu 10:00-16:00','ecostart@school.org','5555551234','http://ecostart.edu','Planned','2024-03-01',0,0.0,0.0,'Opening next semester', 'D003');

-- School Artisan Workshop Inventory
CREATE TABLE school_artisan_workshop_inventory (
    workshop_id INTEGER PRIMARY KEY,
    school_cds TEXT,
    workshop_name TEXT,
    craft_type TEXT,
    area_sqft REAL,
    equipment_list TEXT,
    tool_count INTEGER,
    material_stock_level TEXT,
    monthly_usage_hours REAL,
    staff_in_charge TEXT,
    safety_certified INTEGER,
    last_inspection_date DATE,
    next_inspection_due DATE,
    budget_usd REAL,
    grant_funded INTEGER,
    capacity_students INTEGER,
    average_weekly_participants INTEGER,
    contact_phone TEXT,
    email TEXT,
    district_code TEXT,
    status TEXT,
    notes TEXT
);

INSERT INTO school_artisan_workshop_inventory VALUES (1,'0123456789','Woodworking Studio','Carpentry',2500.0,'Table Saw;Router;Planer',30,'High',120.5,'Mr Allen',1,'2023-02-20','2023-08-20',50000.0,1,25,40,'5551112222','wood@school.org','D001','Open','New safety signage installed');
INSERT INTO school_artisan_workshop_inventory VALUES (2,'0987654321','Ceramics Lab','Pottery',1800.0,'Kiln;Wheel;Glaze Mixer',20,'Medium',90.0,'Ms Rivera',1,'2023-03-10','2023-09-10',30000.0,0,20,30,'5553334444','ceramics@school.org','D002','Open','Upcoming glaze workshop');
INSERT INTO school_artisan_workshop_inventory VALUES (3,'1122334455','Digital Fabrication','3D Printing',2000.0,'3D Printers;Laser Cutter;CNC',25,'Low',75.0,'Mr Patel',0,'2023-01-15','2023-07-15',40000.0,1,22,28,'5557778888','fab@school.org','D003','Closed for renovation','Equipment upgrade planned');

-- District Sustainability Metrics
CREATE TABLE district_sustainability_metrics (
    metric_id INTEGER PRIMARY KEY,
    district_code TEXT,
    report_year INTEGER,
    total_energy_consumption_mwh REAL,
    renewable_energy_percent REAL,
    water_usage_gallons REAL,
    waste_diverted_percent REAL,
    greenhouse_gas_emissions_tco2e REAL,
    solar_panel_capacity_kw REAL,
    electric_vehicle_charging_stations INTEGER,
    tree_planting_count INTEGER,
    sustainability_award TEXT,
    budget_usd REAL,
    programs_initiated INTEGER,
    staff_assigned INTEGER,
    policy_updates INTEGER,
    community_partners INTEGER,
    average_school_score REAL,
    notes TEXT,
    last_updated DATE,
    region TEXT,
    state TEXT
);

INSERT INTO district_sustainability_metrics VALUES (1,'D001',2022,12500.0,22.5,4500000.0,35.0,1200.0,500.0,12,800,'Gold Green Award',2000000.0,15,45,8,20,78.5,'Improved solar coverage','2023-04-01','Southern','CA');
INSERT INTO district_sustainability_metrics VALUES (2,'D002',2022,9800.0,18.0,3800000.0,30.0,950.0,300.0,8,600,'Silver Sustainability Award',1500000.0,12,38,5,15,74.2,'Water conservation program launched','2023-04-01','Central','CA');
INSERT INTO district_sustainability_metrics VALUES (3,'D003',2022,11200.0,20.0,4100000.0,33.0,1100.0,420.0,10,750,'Bronze Eco Award',1800000.0,14,42,6,18,76.0,'Battery storage pilot','2023-04-01','Northern','CA');

-- School Cybersecurity Training Modules
CREATE TABLE school_cybersecurity_training_modules (
    module_id INTEGER PRIMARY KEY,
    school_cds TEXT,
    module_name TEXT,
    category TEXT,
    duration_minutes INTEGER,
    provider TEXT,
    last_updated DATE,
    completion_rate_percent REAL,
    students_targeted INTEGER,
    students_completed INTEGER,
    assessment_score_avg REAL,
    certification_obtained INTEGER,
    training_cost_usd REAL,
    online_available INTEGER,
    video_hours REAL,
    quiz_count INTEGER,
    feedback_score REAL,
    trainer_name TEXT,
    contact_email TEXT,
    status TEXT,
    notes TEXT,
    district_code TEXT
);

INSERT INTO school_cybersecurity_training_modules VALUES (1,'0123456789','Phishing Awareness','Email Safety',45,'SecureLearn','2023-03-01',92.5,300,278,88.0,1,5000.0,1,1.5,8,4.5,'Ms Carter','security@school.org','Active','Module refreshed Q1','D001');
INSERT INTO school_cybersecurity_training_modules VALUES (2,'0987654321','Password Hygiene','Identity Management',30,'CyberEd','2023-02-15',85.0,250,212,82.3,1,4000.0,1,1.0,5,4.0,'Mr Liu','pwd@school.org','Active','Added multi‑factor auth tips','D002');
INSERT INTO school_cybersecurity_training_modules VALUES (3,'1122334455','Secure Device Use','Device Management',60,'TechSafe','2023-01-20',78.0,200,150,75.5,0,3500.0,0,2.0,7,3.8','Ms Patel','devices@school.org','Planned','Scheduled for rollout next semester','D003');

-- District Fiscal Year Budget Allocations
CREATE TABLE district_fiscal_year_budget_allocations (
    allocation_id INTEGER PRIMARY KEY,
    district_code TEXT,
    fiscal_year INTEGER,
    budget_category TEXT,
    allocated_amount_usd REAL,
    spent_amount_usd REAL,
    remaining_amount_usd REAL,
    percentage_spent REAL,
    approval_date DATE,
    approved_by TEXT,
    notes TEXT,
    adjustment_flag INTEGER,
    adjustment_amount_usd REAL,
    adjustment_reason TEXT,
    project_code TEXT,
    project_name TEXT,
    funding_source TEXT,
    grant_id TEXT,
    overhead_percent REAL,
    audit_status TEXT,
    last_review_date DATE,
    region TEXT,
    state TEXT
);

INSERT INTO district_fiscal_year_budget_allocations VALUES (1,'D001',2023,'Instruction',12000000.0,9500000.0,2500000.0,79.2,'2022-12-01','Superintendent A','Core teaching funds',0,0.0,NULL,'PRJ001','Curriculum Upgrade','Local Tax','G001',5.0,'Cleared','2023-06-15','Southern','CA');
INSERT INTO district_fiscal_year_budget_allocations VALUES (2,'D002',2023,'Facilities',8000000.0,6200000.0,1800000.0,77.5,'2022-12-05','Superintendent B','Building maintenance',1,200000.0,'Unexpected repair','PRJ045','Roof Replacement','State Grant','G015',6.0,'Pending','2023-06-20','Central','CA');
INSERT INTO district_fiscal_year_budget_allocations VALUES (3,'D003',2023,'Technology',6000000.0,4500000.0,1500000.0,75.0,'2022-12-10','Superintendent C','EdTech purchases',0,0.0,NULL,'PRJ078','1:1 Device Initiative','Federal Grant','G030',4.5,'Cleared','2023-06-10','Northern','CA');

-- Community Arts Festival Sponsorships
CREATE TABLE community_arts_festival_sponsorships (
    sponsorship_id INTEGER PRIMARY KEY,
    festival_name TEXT,
    sponsor_name TEXT,
    sponsor_type TEXT,
    amount_usd REAL,
    in_kind_value_usd REAL,
    contact_person TEXT,
    contact_email TEXT,
    phone TEXT,
    agreement_signed DATE,
    event_date DATE,
    benefit_description TEXT,
    visibility_level TEXT,
    renewal_option INTEGER,
    duration_months INTEGER,
    notes TEXT,
    district_code TEXT,
    county TEXT,
    city TEXT,
    state TEXT,
    approved_by TEXT,
    status TEXT
);

INSERT INTO community_arts_festival_sponsorships VALUES (1,'Summer Arts Fest','Acme Corp','Corporate',25000.0,5000.0,'Linda Green','linda@acme.com','5551230000','2023-02-15','2023-07-10','Banner placement and booth','High',1,12,'First time sponsor','D001','Orange','Irvine','CA','Board Chair','Active');
INSERT INTO community_arts_festival_sponsorships VALUES (2,'Winter Music Gala','Harmony Trust','Nonprofit',15000.0,3000.0,'Mark Rivera','mark@harmony.org','5559870000','2023-03-01','2023-12-05','Program mentions and logo','Medium',0,0,'Renewal pending','D002','Los Angeles','Los Angeles','CA','Finance Director','Pending');
INSERT INTO community_arts_festival_sponsorships VALUES (3,'Spring Visual Arts Expo','Creative Studios','Corporate',20000.0,4000.0,'Susan Lee','susan@creative.com','5555550000','2023-01-20','2023-05-20','VIP tickets and signage','Medium',1,12,'Long‑term partner','D003','San Diego','San Diego','CA','Executive VP','Active');

-- Transportation Fuel Efficiency Records
CREATE TABLE transportation_fuel_efficiency_records (
    record_id INTEGER PRIMARY KEY,
    vehicle_id TEXT,
    district_code TEXT,
    fuel_type TEXT,
    fuel_consumed_gallons REAL,
    distance_miles REAL,
    efficiency_mpg REAL,
    record_date DATE,
    driver_name TEXT,
    maintenance_flag INTEGER,
    last_service_date DATE,
    next_service_due DATE,
    emissions_tco2e REAL,
    trip_purpose TEXT,
    notes TEXT,
    region TEXT,
    city TEXT,
    state TEXT,
    odometer_reading REAL,
    fuel_cost_usd REAL,
    average_load_weight_lbs REAL
);

INSERT INTO transportation_fuel_efficiency_records VALUES (1,'BUS1001','D001','Diesel',120.5,720.0,5.98,'2023-03-10','Alice Carter',0,'2023-01-15','2023-07-15',12.5,'Student transport','Normal route','Southern','Irvine','CA',150500.0,420.0,3000.0);
INSERT INTO transportation_fuel_efficiency_records VALUES (2,'VAN2002','D002','Gasoline',45.2,300.0,6.65,'2023-03-12','Bob Nguyen',1,'2023-02-10','2023-08-10',5.0,'Field trip','Tire replacement needed','Central','Los Angeles','CA',84200.0,180.0,1500.0);
INSERT INTO transportation_fuel_efficiency_records VALUES (3,'EV3003','D003','Electric',0.0,250.0,0.0,'2023-03-15','Cathy Zhou',0,'2023-01-20','2023-07-20',0.0,'Special event','Battery check completed','Northern','San Diego','CA',60000.0,0.0,2000.0);

-- Facility Accessibility Audits
CREATE TABLE facility_accessibility_audits (
    audit_id INTEGER PRIMARY KEY,
    facility_id TEXT,
    school_cds TEXT,
    audit_date DATE,
    wheelchair_access INTEGER,
    braille_signage INTEGER,
    elevator_present INTEGER,
    ramp_slope_percent REAL,
    door_width_inches REAL,
    restroom_accessible INTEGER,
    audio_assist_devices INTEGER,
    visual_assist_devices INTEGER,
    staff_training_completed INTEGER,
    compliance_status TEXT,
    issues_found INTEGER,
    recommendations TEXT,
    followup_date DATE,
    auditor_name TEXT,
    district_code TEXT,
    county_name TEXT,
    state TEXT,
    notes TEXT
);

INSERT INTO facility_accessibility_audits VALUES (1,'FAC001','0123456789','2023-02-20',1,1,1,5.0,36.0,1,1,1,1,'Compliant',0,'No issues','2023-08-20','Laura Kim','D001','Orange County','CA','All standards met');
INSERT INTO facility_accessibility_audits VALUES (2,'FAC002','0987654321','2023-03-05',0,0,0,8.5,30.0,0,0,0,0,'Non‑Compliant',3,'Install ramp, widen doors, add signage','2023-09-01','Mike Torres','D002','Los Angeles County','CA','Major upgrades needed');
INSERT INTO facility_accessibility_audits VALUES (3,'FAC003','1122334455','2023-04-10',1,1,1,4.0,38.0,1,1,0,1,'Compliant with minor notes',1,'Add visual alerts in hallway','2023-10-10','Sara Patel','D003','San Diego County','CA','Visual alerts pending');

-- School Technology Investment Projects
CREATE TABLE school_technology_investment_projects (
    project_id INTEGER PRIMARY KEY,
    school_cds TEXT,
    project_name TEXT,
    start_date DATE,
    end_date DATE,
    total_budget_usd REAL,
    funding_source TEXT,
    vendor_name TEXT,
    equipment_type TEXT,
    units_purchased INTEGER,
    installation_cost_usd REAL,
    maintenance_contract_years INTEGER,
    project_manager TEXT,
    status TEXT,
    expected_lifespan_years INTEGER,
    actual_spend_usd REAL,
    variance_percent REAL,
    notes TEXT,
    district_code TEXT,
    county TEXT,
    state TEXT,
    last_updated DATE
);

INSERT INTO school_technology_investment_projects VALUES (1,'0123456789','Smart Classroom Upgrade','2023-01-15','2023-06-30',250000.0,'District Bond','EduTech Solutions','Interactive Displays',20,50000.0,5,'Emily Carter','Completed',7,250000.0,0.0,'Project delivered on time','D001','Orange','CA','2023-07-01');
INSERT INTO school_technology_investment_projects VALUES (2,'0987654321','Campus Wi‑Fi Expansion','2023-02-01','2023-08-15',180000.0,'Federal Grant','NetWorks Co','Access Points',150,30000.0,4,'John Lee','In Progress',10,120000.0,-33.33,'Phase 1 complete, Phase 2 pending','D002','Los Angeles','CA','2023-07-10');
INSERT INTO school_technology_investment_projects VALUES (3,'1122334455','STEM Lab Revamp','2023-03-10','2023-12-31',320000.0,'State Funding','Lab Innovators','Robotics Kits',40,60000.0,6,'Maria Gomez','Planning',8,0.0,NULL,'Design phase ongoing','D003','San Diego','CA','2023-07-15');