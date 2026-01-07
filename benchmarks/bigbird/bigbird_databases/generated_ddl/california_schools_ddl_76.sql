-- Table: school_sustainability_metrics
CREATE TABLE school_sustainability_metrics
(
    school_id TEXT NOT NULL,
    year INTEGER NOT NULL,
    solar_panel_kw REAL,
    wind_turbine_kw REAL,
    geothermal_btuh REAL,
    recycling_rate_pct REAL,
    composting_rate_pct REAL,
    water_savings_gallons REAL,
    energy_consumption_kwh REAL,
    greenhouse_gas_tons REAL,
    certification_status TEXT,
    leed_points INTEGER,
    battery_storage_kwh REAL,
    hvac_efficiency_rating TEXT,
    lighting_led_percent REAL,
    green_roof_sqft REAL,
    rainwater_harvest_gallons REAL,
    sustainable_transportation_pct REAL,
    waste_diverted_tons REAL,
    carbon_offset_purchases_usd REAL,
    sustainability_award TEXT
);

INSERT INTO school_sustainability_metrics VALUES
('SCH001','2022',150.5,0.0,25000,78.2,15.4,12000,450000,120,'Gold',85,200.0,'A+',95.0,5000,3000,12.5,30.0,5000,'Green Campus Award');

INSERT INTO school_sustainability_metrics VALUES
('SCH002','2022',0.0,20.3,0,65.0,10.0,8000,380000,95,'Silver',70,0.0,'B',80.0,3000,1500,8.0,25.5,3000,'Eco Friendly Recognition');

INSERT INTO school_sustainability_metrics VALUES
('SCH003','2022',200.0,5.0,40000,82.0,20.0,15000,500000,130,'Platinum',95,350.0,'A',98.0,7500,5000,15.0,40.0,8000,'Sustainability Excellence');

-- Table: district_technology_investments
CREATE TABLE district_technology_investments
(
    district_id TEXT NOT NULL,
    fiscal_year INTEGER NOT NULL,
    total_investment_usd REAL,
    hardware_spend_usd REAL,
    software_spend_usd REAL,
    network_infra_usd REAL,
    edtech_platforms INTEGER,
    device_ratio_students_per_device REAL,
    cloud_services_usd REAL,
    cybersecurity_spend_usd REAL,
    ai_analytics_spend_usd REAL,
    tech_staff_fte INTEGER,
    training_hours INTEGER,
    grant_funded_usd REAL,
    vendor_primary TEXT,
    procurement_cycle_days INTEGER,
    upgrade_status TEXT,
    pilot_projects INTEGER,
    sustainability_rating TEXT,
    future_budget_projection_usd REAL,
    notes TEXT
);

INSERT INTO district_technology_investments VALUES
('DST001','2022',2500000,800000,500000,600000,12,1.5,400000,150000,200000,25,1200,300000,'TechSupreme',45,'InProgress',5,'A+',4000000,'Major upgrade for 5G rollout');

INSERT INTO district_technology_investments VALUES
('DST002','2022',1800000,600000,300000,400000,8,2.0,250000,100000,120000,18,800,150000,'NetSolutions',60,'Completed',3,'B',2500000,'Standard refresh cycle');

INSERT INTO district_technology_investments VALUES
('DST003','2022',3000000,1000000,600000,700000,15,1.2,500000,200000,250000,30,1500,500000,'FutureTech',35,'Planning',7,'A',5000000,'Includes AI lab development');

-- Table: community_arts_festival_participation
CREATE TABLE community_arts_festival_participation
(
    festival_id TEXT NOT NULL,
    year INTEGER NOT NULL,
    community_partner TEXT,
    num_artists INTEGER,
    total_attendance INTEGER,
    volunteer_hours REAL,
    sponsorship_usd REAL,
    venue_capacity INTEGER,
    outdoor_spaces_used INTEGER,
    media_mentions INTEGER,
    social_media_impressions REAL,
    ticket_revenue_usd REAL,
    merchandise_sales_usd REAL,
    grants_received_usd REAL,
    food_vendor_count INTEGER,
    performance_stages INTEGER,
    accessibility_rating TEXT,
    safety_incidents INTEGER,
    weather_notes TEXT,
    post_event_survey_score REAL,
    legacy_projects INTEGER
);

INSERT INTO community_arts_festival_participation VALUES
('FEST01','2022','RiverSide Arts',45,12000,350.5,15000,8000,3,25,200000,50000,12000,8000,12,5,'Excellent',0,'Sunny',4.8,3);

INSERT INTO community_arts_festival_participation VALUES
('FEST02','2022','Downtown Gallery',30,8000,210.0,10000,6000,2,18,150000,30000,9000,5000,8,3,'Good',1,'Cloudy with light rain',4.2,2);

INSERT INTO community_arts_festival_participation VALUES
('FEST03','2022','Eastside Cultural Center',60,15000,420.0,20000,10000,4,30,250000,70000,15000,12000,15,6,'Excellent',0,'Clear skies',4.9,4);

-- Table: student_career_exploration_programs
CREATE TABLE student_career_exploration_programs
(
    program_id TEXT NOT NULL,
    school_id TEXT NOT NULL,
    year INTEGER NOT NULL,
    program_name TEXT,
    num_students INTEGER,
    num_partners INTEGER,
    hours_of_instruction REAL,
    field_trip_count INTEGER,
    internship_slots INTEGER,
    mentorship_pairs INTEGER,
    external_funding_usd REAL,
    staff_fte INTEGER,
    curriculum_alignment_score REAL,
    assessment_pass_rate REAL,
    feedback_average_score REAL,
    technology_used TEXT,
    certifications_awarded INTEGER,
    community_service_hours REAL,
    program_cost_usd REAL,
    continuation_next_year TEXT,
    evaluation_summary TEXT
);

INSERT INTO student_career_exploration_programs VALUES
('PROG001','SCH001','2022','Tech Innovators',120,10,30.0,2,15,20,25000,3,88.5,92.0,4.5,'Arduino Kits',5,40.0,45000,'Yes','Strong interest in STEM careers');

INSERT INTO student_career_exploration_programs VALUES
('PROG002','SCH002','2022','Health Careers',95,8,25.0,1,10,12,18000,2,81.0,85.0,4.0,'Medical Simulators',3,30.0,38000,'Yes','Positive feedback from participants');

INSERT INTO student_career_exploration_programs VALUES
('PROG003','SCH003','2022','Arts & Media',80,12,20.0,3,8,10,22000,2,78.0,80.0,3.8,'Video Editing Suite',2,25.0,40000,'Yes','Students expressed increased confidence');

-- Table: facility_accessibility_audits
CREATE TABLE facility_accessibility_audits
(
    audit_id TEXT NOT NULL,
    school_id TEXT NOT NULL,
    audit_date DATE NOT NULL,
    wheelchair_ramp_present TEXT,
    ramp_slope REAL,
    elevator_count INTEGER,
    elevator_inspection_pass TEXT,
    doorway_width_inches REAL,
    restroom_accessible TEXT,
    signage_braille TEXT,
    lighting_level_lux REAL,
    audio_amplification TEXT,
    floor_surface TEXT,
    stairlift_present TEXT,
    emergency_exit_accessible TEXT,
    staff_training_completed TEXT,
    compliance_score REAL,
    notes TEXT,
    auditor_name TEXT,
    followup_date DATE,
    remediation_cost_usd REAL
);

INSERT INTO facility_accessibility_audits VALUES
('AUD001','SCH001','2022-03-15','Yes',8.5,2,'Yes',36,'Yes','Yes',500,'Yes','Smooth','No','Yes','Yes',92.5,'All major issues resolved','John Doe','2022-06-20',5000);

INSERT INTO facility_accessibility_audits VALUES
('AUD002','SCH002','2022-04-10','No',0.0,1,'No',30,'No','No',350,'No','Carpet','No','No','No',68.0,'Ramp installation needed','Jane Smith','2022-09-01',12000);

INSERT INTO facility_accessibility_audits VALUES
('AUD003','SCH003','2022-02-22','Yes',7.0,3,'Yes',38,'Yes','Yes',550,'Yes','Tile','Yes','Yes','Yes',95.0,'Excellent compliance','Mike Lee','2022-05-15',2000);

-- Table: school_international_exchange_agreements
CREATE TABLE school_international_exchange_agreements
(
    agreement_id TEXT NOT NULL,
    school_id TEXT NOT NULL,
    partner_institution TEXT,
    country TEXT,
    start_date DATE,
    end_date DATE,
    student_exchange_count INTEGER,
    staff_exchange_count INTEGER,
    program_focus TEXT,
    funding_source TEXT,
    annual_budget_usd REAL,
    language_requirements TEXT,
    visa_support TEXT,
    housing_arrangements TEXT,
    cultural_orientation_completed TEXT,
    evaluation_score REAL,
    renewal_option TEXT,
    contact_person TEXT,
    contact_email TEXT,
    notes TEXT,
    agreement_status TEXT
);

INSERT INTO school_international_exchange_agreements VALUES
('AG001','SCH001','International Academy','Germany','2022-08-01','2023-07-31',15,3,'STEM Collaboration','Grant','120000','German','Provided','Homestay','Yes',4.7,'Yes','Laura Becker','lbecker@intacad.de','Successful pilot year','Active');

INSERT INTO school_international_exchange_agreements VALUES
('AG002','SCH002','Global Learning Center','Japan','2022-09-15','2023-09-14',10,2,'Cultural Arts','District Funding','90000','Japanese','Provided','Dormitory','Yes',4.3,'Pending','Kenji Sato','ksato@glc.jp','Planning next cohort','Active');

INSERT INTO school_international_exchange_agreements VALUES
('AG003','SCH003','South American Institute','Brazil','2022-07-01','2023-06-30',12,4,'Environmental Studies','Private Sponsor','110000','Portuguese','Assisted','Host Family','No',3.9,'No','Ana Silva','asilva@sai.br','Orientation to be scheduled','Active');

-- Table: library_rare_book_collection
CREATE TABLE library_rare_book_collection
(
    item_id TEXT NOT NULL,
    library_id TEXT NOT NULL,
    title TEXT,
    author TEXT,
    publication_year INTEGER,
    edition TEXT,
    classification TEXT,
    condition TEXT,
    acquisition_date DATE,
    donor TEXT,
    appraised_value_usd REAL,
    location_shelf TEXT,
    preservation_status TEXT,
    digital_copy_available TEXT,
    access_restriction TEXT,
    check_out_count INTEGER,
    last_checked_out DATE,
    notes TEXT,
    insurance_policy_number TEXT,
    insurance_expiration DATE,
    cataloged_by TEXT
);

INSERT INTO library_rare_book_collection VALUES
('RB001','LIB001','Principia Mathematica','Isaac Newton','1687','First','Science','Excellent','2000-05-12','Legacy Trust',250000,'Shelf A3','Controlled','No','Research Only',5,'2022-01-10','Handled with gloves','POL12345','2025-12-31','Emily Carter');

INSERT INTO library_rare_book_collection VALUES
('RB002','LIB001','The Canterbury Tales','Geoffrey Chaucer','1400','Facsimile','Literature','Good','1995-09-20','Alumni Gift',150000,'Shelf B1','Standard','Yes','General Access',12,'2021-11-05','Digitized version available','POL67890','2024-06-30','Michael Nguyen');

INSERT INTO library_rare_book_collection VALUES
('RB003','LIB001','On the Origin of Species','Charles Darwin','1859','Second','Biology','Fair','1985-03-14','Founders Fund',180000,'Shelf C2','Restoration Needed','No','Research Only',8,'2022-05-22','Requires climate control','POL11223','2023-09-15','Sofia Patel');

-- Table: transportation_fuel_efficiency_records
CREATE TABLE transportation_fuel_efficiency_records
(
    vehicle_id TEXT NOT NULL,
    district_id TEXT NOT NULL,
    fiscal_year INTEGER NOT NULL,
    vehicle_type TEXT,
    miles_driven REAL,
    fuel_consumed_gallons REAL,
    fuel_efficiency_mpg REAL,
    avg_load_percent REAL,
    maintenance_cost_usd REAL,
    emissions_co2_tons REAL,
    electric_vehicle BOOLEAN,
    hybrid_vehicle BOOLEAN,
    replacement_year INTEGER,
    odometer_reading REAL,
    driver_id TEXT,
    fuel_card_number TEXT,
    fuel_purchase_date DATE,
    fuel_price_per_gallon REAL,
    notes TEXT,
    compliance_status TEXT,
    audit_timestamp DATE
);

INSERT INTO transportation_fuel_efficiency_records VALUES
('VH001','DST001','2022','School Bus',42000,2500,16.8,85.0,12000,5.6,0,0,2025,42000,'DR001','FC1001','2022-06-15',3.45','Routine maintenance','Compliant','2022-07-01');

INSERT INTO transportation_fuel_efficiency_records VALUES
('VH002','DST001','2022','Maintenance Van',15000,800,18.75,70.0,4500,2.0,0,0,2028,15000,'DR002','FC1002','2022-07-10',3.55','Minor repairs','Compliant','2022-07-15');

INSERT INTO transportation_fuel_efficiency_records VALUES
('VH003','DST001','2022','Electric Shuttle',20000,0,0,60.0,3000,0,1,0,2024,20000,'DR003','FC1003','2022-08-05',0','Charged at district depot','Non‑Compliant (no report)','2022-08-20');

-- Table: alumni_mentor_matching
CREATE TABLE alumni_mentor_matching
(
    match_id TEXT NOT NULL,
    alumni_id TEXT NOT NULL,
    student_id TEXT NOT NULL,
    school_id TEXT NOT NULL,
    start_date DATE,
    end_date DATE,
    mentor_field TEXT,
    meeting_frequency TEXT,
    total_meetings INTEGER,
    feedback_score REAL,
    mentor_status TEXT,
    student_status TEXT,
    program_coordinator TEXT,
    program_year INTEGER,
    virtual_meetings BOOLEAN,
    inperson_meetings BOOLEAN,
    satisfaction_survey_score REAL,
    notes TEXT,
    agreement_signed TEXT,
    termination_reason TEXT,
    renewal_possible TEXT
);

INSERT INTO alumni_mentor_matching VALUES
('MT001','ALU001','STU101','SCH001','2022-09-01','2023-06-30','Engineering','Monthly',9,4.6,'Active','Active','Karen Lee',2022,1,1,4.8,'Great chemistry','Yes','', 'Yes');

INSERT INTO alumni_mentor_matching VALUES
('MT002','ALU002','STU102','SCH002','2022-10-15','2023-05-15','Education','Bi‑weekly',12,4.2,'Active','Active','Mark Patel',2022,1,0,4.4,'Student motivated','Yes','', 'Yes');

INSERT INTO alumni_mentor_matching VALUES
('MT003','ALU003','STU103','SCH003','2022-11-01','2023-04-30','Arts','Monthly',6,3.9,'Inactive','Active','Linda Gomez',2022,0,1,3.8','Alumni relocated','No','Relocation','No');

-- Table: district_emergency_response_exercises
CREATE TABLE district_emergency_response_exercises
(
    exercise_id TEXT NOT NULL,
    district_id TEXT NOT NULL,
    exercise_type TEXT,
    date DATE,
    duration_hours REAL,
    participants_count INTEGER,
    agencies_involved TEXT,
    scenario_description TEXT,
    objectives_met INTEGER,
    deficiencies_identified INTEGER,
    corrective_action_plan TEXT,
    budget_usd REAL,
    lead_coordinator TEXT,
    after_action_report TEXT,
    public_communication TEXT,
    media_coverage BOOLEAN,
    lessons_learned TEXT,
    next_exercise_date DATE,
    evaluation_score REAL,
    status TEXT,
    notes TEXT
);

INSERT INTO district_emergency_response_exercises VALUES
('EX001','DST001','Fire Drill','2022-04-20',4.0,150,'Fire Dept; Police','Simulated kitchen fire','5','1','Update alarm maintenance','8000','Sarah Kim','Exhibit A','Press release','Yes','Improved evacuation routes','2022-10-15',4.5','Completed','No major issues');

INSERT INTO district_emergency_response_exercises VALUES
('EX002','DST001',' lockdown','2022-09-12',2.5,200,'Police; School Security','Active shooter scenario','4','2','Add lockdown signage','12000','Tom Reed','Exhibit B','Email to parents','Yes','Need faster lockdown activation','2023-03-10',4.2','Completed','Lessons incorporated');

INSERT INTO district_emergency_response_exercises VALUES
('EX003','DST001','Severe Weather','2022-12-05',3.0,180,'Emergency Management; Utility','Tornado warning','5','0','All procedures effective','6000','Nina Patel','Exhibit C','Community bulletin','No','Preparedness high','2023-06-01',4.8','Completed','Excellent performance');

-- Table: school_sustainability_initiatives
CREATE TABLE school_sustainability_initiatives
(
    initiative_id TEXT NOT NULL,
    school_id TEXT NOT NULL,
    year INTEGER NOT NULL,
    initiative_name TEXT,
    category TEXT,
    target_metric TEXT,
    baseline_value REAL,
    target_value REAL,
    current_value REAL,
    measurement_method TEXT,
    funding_source TEXT,
    allocated_budget_usd REAL,
    implementation_status TEXT,
    responsible_staff TEXT,
    start_date DATE,
    end_date DATE,
    partnerships TEXT,
    community_engagement_hours REAL,
    impact_score REAL,
    challenges TEXT,
    next_steps TEXT,
    documentation_link TEXT
);

INSERT INTO school_sustainability_initiatives VALUES
('INI001','SCH001','2022','Zero Waste Campaign','Environmental','Waste Diverted (%)',30.0,70.0,55.0','Audits','District Grant',15000,'In Progress','Olivia Reed','2022-01-15','2022-12-31','Green Earth Org; Local Recycle Center',120.5,4.2','Insufficient recycling bins','Add more bins and education','http://sch001.edu/zero-waste');

INSERT INTO school_sustainability_initiatives VALUES
('INI002','SCH002','2022','Solar Roof Project','Energy','Solar Capacity (kW)',0,120,85,'Site Survey','State Funding',200000,'Completed','Liam Torres','2022-03-01','2022-11-15','EnergyCo; SolarNow',200.0,4.8','Roof structural limits','Expand to adjacent building','http://sch002.edu/solar-roof');

INSERT INTO school_sustainability_initiatives VALUES
('INI003','SCH003','2022','Bike to School Program','Transportation','Student Bike Participation (%)',5,25,18,'Survey','Community Sponsorship',8000,'Ongoing','Emma Wu','2022-05-10','2022-12-31','BikeShop Inc; City Parks Dept',90.0,4.5','Lack of bike racks','Install additional racks and safety workshops','http://sch003.edu/bike-program');