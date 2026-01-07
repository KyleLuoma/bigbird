-- Research Lab Facility
CREATE TABLE research_lab_facility
(
    lab_id TEXT,
    lab_name TEXT,
    building TEXT,
    floor INTEGER,
    room_number TEXT,
    area_sqft REAL,
    capacity INTEGER,
    established_date TEXT,
    lead_scientist_id TEXT,
    research_focus TEXT,
    safety_certified TEXT,
    equipment_count INTEGER,
    budget_annual REAL,
    lab_type TEXT,
    active_status TEXT,
    contact_email TEXT,
    phone_extension TEXT,
    max_occupancy INTEGER,
    iso_level TEXT,
    notes TEXT,
    CONSTRAINT research_lab_facility_pk PRIMARY KEY (lab_id)
);

INSERT INTO research_lab_facility (lab_id,lab_name,building,floor,room_number,area_sqft,capacity,established_date,lead_scientist_id,research_focus,safety_certified,equipment_count,budget_annual,lab_type,active_status,contact_email,phone_extension,max_occupancy,iso_level,notes) VALUES
('LAB001','BioChem Lab','Science Hall',2,'B201',3500.5,120,'2015-09-01','SC001','Biochemistry','Yes',45,250000.0,'Wet','Active','lab1@university.edu','101',130,'ISO5','First floor lab'),
('LAB002','Physics Research','Engineering Complex',3,'P305',4200.0,150,'2012-03-15','SC002','Quantum Physics','Yes',60,300000.0,'Dry','Active','lab2@university.edu','102',160,'ISO7','Laser equipment installed'),
('LAB003','Genomics Center','Life Sciences',1,'G110',5000.2,200,'2018-07-22','SC003','Genomics','No',80,400000.0,'Wet','Planned','lab3@university.edu','103',210,'ISO6','Awaiting certification');

-- Campus Transport Route
CREATE TABLE campus_transport_route
(
    route_id TEXT,
    route_name TEXT,
    start_point TEXT,
    end_point TEXT,
    distance_miles REAL,
    estimated_time_min INTEGER,
    vehicle_type TEXT,
    frequency_per_day INTEGER,
    operating_hours TEXT,
    accessibility TEXT,
    peak_load INTEGER,
    off_peak_load INTEGER,
    last_maintenance_date TEXT,
    route_status TEXT,
    route_manager_id TEXT,
    fuel_type TEXT,
    emissions_rating TEXT,
    gps_tracking_enabled TEXT,
    wheelchair_accessible TEXT,
    notes TEXT,
    created_date TEXT,
    updated_date TEXT,
    CONSTRAINT campus_transport_route_pk PRIMARY KEY (route_id)
);

INSERT INTO campus_transport_route (route_id,route_name,start_point,end_point,distance_miles,estimated_time_min,vehicle_type,frequency_per_day,operating_hours,accessibility,peak_load,off_peak_load,last_maintenance_date,route_status,route_manager_id,fuel_type,emissions_rating,gps_tracking_enabled,wheelchair_accessible,notes,created_date,updated_date) VALUES
('RT001','North Loop','Main Gate','North Dorms',2.5,15,'Electric Bus',20,'06:00-22:00','High','80','30','2025-01-10','Active','RM001','Electric','A+','Yes','Yes','Runs on weekends','2024-12-01','2025-01-12'),
('RT002','East Shuttle','East Parking','Science Center',1.8,10,'Hybrid Van',12,'07:00-20:00','Medium','45','20','2024-11-20','Active','RM002','Hybrid','B','Yes','Yes','Reduced service on holidays','2024-11-01','2024-11-22'),
('RT003','West Connector','West Library','Athletics Complex',3.2,20,'Diesel Bus',15,'05:30-23:00','Low','70','40','2025-02-05','Planned','RM003','Diesel','C','No','No','New route pending approval','2024-12-15','2025-02-07');

-- Environmental Sensor Deployment Log
CREATE TABLE environmental_sensor_deployment_log
(
    deployment_id TEXT,
    sensor_id TEXT,
    sensor_type TEXT,
    location_description TEXT,
    latitude REAL,
    longitude REAL,
    installation_date TEXT,
    calibration_date TEXT,
    status TEXT,
    reading_interval_minutes INTEGER,
    battery_level_percent INTEGER,
    firmware_version TEXT,
    maintenance_contact TEXT,
    data_endpoint_url TEXT,
    owner_department TEXT,
    expected_lifetime_years INTEGER,
    last_inspection_date TEXT,
    notes TEXT,
    created_by TEXT,
    created_at TEXT,
    CONSTRAINT environmental_sensor_deployment_log_pk PRIMARY KEY (deployment_id)
);

INSERT INTO environmental_sensor_deployment_log (deployment_id,sensor_id,sensor_type,location_description,latitude,longitude,installation_date,calibration_date,status,reading_interval_minutes,battery_level_percent,firmware_version,maintenance_contact,data_endpoint_url,owner_department,expected_lifetime_years,last_inspection_date,notes,created_by,created_at) VALUES
('DEP001','SEN1001','AirQuality','North Quad',40.7128,-74.0060,'2024-09-01','2024-09-02','Active',15,95,'v1.2','John Doe','http://data.university.edu/air1','Environmental Sciences',5,'2025-03-01','No issues','admin','2024-09-01'),
('DEP002','SEN1002','WaterLevel','River Bend',40.7135,-74.0055,'2024-08-15','2024-08-16','Active',30,88,'v1.0','Jane Smith','http://data.university.edu/water1','Civil Engineering',4,'2025-02-10','Calibration needed','tech','2024-08-15'),
('DEP003','SEN1003','SoilMoisture','Agriculture Field',40.7140,-74.0050,'2024-07-20','2024-07-21','Inactive',60,0,'v0.9','Mike Lee','http://data.university.edu/soil1','Agriculture',3,'2024-12-01','Battery replaced','fieldop','2024-07-20');

-- Alumni Engagement Activity Log
CREATE TABLE alumni_engagement_activity_log
(
    activity_id TEXT,
    alumni_id TEXT,
    activity_type TEXT,
    event_name TEXT,
    event_date TEXT,
    location TEXT,
    participation_role TEXT,
    hours_contributed INTEGER,
    feedback_score REAL,
    sponsor_name TEXT,
    contact_person TEXT,
    contact_email TEXT,
    notes TEXT,
    recorded_by TEXT,
    recorded_at TEXT,
    follow_up_needed TEXT,
    follow_up_date TEXT,
    impact_area TEXT,
    recognition_awarded TEXT,
    digital_media_ref TEXT,
    CONSTRAINT alumni_engagement_activity_log_pk PRIMARY KEY (activity_id)
);

INSERT INTO alumni_engagement_activity_log (activity_id,alumni_id,activity_type,event_name,event_date,location,participation_role,hours_contributed,feedback_score,sponsor_name,contact_person,contact_email,notes,recorded_by,recorded_at,follow_up_needed,follow_up_date,impact_area,recognition_awarded,digital_media_ref) VALUES
('ACT001','ALU123','Mentoring','Spring Mentorship Program','2024-04-10','Campus Center','Mentor',12,4.8,'Alumni Association','Laura Green','laura.green@university.edu','Great feedback','staff1','2024-04-12','Yes','2024-05-01','Student Success','Mentor of the Year','MM001'),
('ACT002','ALU456','Fundraising','Annual Gala','2024-10-22','Grand Hall','Donor',0,5.0,'Corporate Sponsor','Mark Brown','mark.brown@corp.com','Donated $10k','staff2','2024-10-23','No',NULL,'Scholarships','Top Donor','FD001'),
('ACT003','ALU789','Volunteer','Community Clean-up','2024-06-15','City Park','Volunteer',6,4.5','EcoFriends','Sara White','sara.white@ecofriends.org','Sunny day','staff3','2024-06-16','Yes','2024-07-01','Community Service','Volunteer Excellence','VC003');

-- Faculty Research Grant Detail
CREATE TABLE faculty_research_grant_detail
(
    grant_id TEXT,
    faculty_id TEXT,
    grant_title TEXT,
    grant_agency TEXT,
    award_amount REAL,
    start_date TEXT,
    end_date TEXT,
    funding_type TEXT,
    status TEXT,
    principal_investigator TEXT,
    co_pi_list TEXT,
    budget_total REAL,
    expenses_reported REAL,
    report_due_date TEXT,
    renewal_option TEXT,
    field_of_study TEXT,
    project_summary TEXT,
    ethical_approval TEXT,
    contact_email TEXT,
    notes TEXT,
    CONSTRAINT faculty_research_grant_detail_pk PRIMARY KEY (grant_id)
);

INSERT INTO faculty_research_grant_detail (grant_id,faculty_id,grant_title,grant_agency,award_amount,start_date,end_date,funding_type,status,principal_investigator,co_pi_list,budget_total,expenses_reported,report_due_date,renewal_option,field_of_study,project_summary,ethical_approval,contact_email,notes) VALUES
('GR001','FC001','Quantum Computing Initiative','NSF',750000.0,'2024-01-01','2027-12-31','Federal','Active','Dr Alice Kim','Dr Bob Lee,Dr Carol Wu',800000.0,120000.0,'2025-03-15','Yes','Computer Science','Develop scalable quantum algorithms','Approved','alice.kim@university.edu','Phase 1 completed'),
('GR002','FC002','Renewable Energy Storage','DOE',500000.0,'2023-06-01','2026-05-31','Federal','Active','Dr David Park','Dr Eva Sun',550000.0,200000.0,'2024-09-30','No','Electrical Engineering','Create high‑density battery prototypes','Approved','david.park@university.edu','Prototype testing ongoing'),
('GR003','FC003','Cultural Heritage Preservation','NEH',250000.0,'2022-09-15','2025-09-14','Federal','Closed','Dr Fiona Chen','Dr George Liu',260000.0,260000.0,'2025-02-01','No','History','Digitize and archive regional manuscripts','Approved','fiona.chen@university.edu','All deliverables submitted');

-- Student Housing Unit Info
CREATE TABLE student_housing_unit_info
(
    unit_id TEXT,
    building_name TEXT,
    unit_number TEXT,
    bedrooms INTEGER,
    bathrooms INTEGER,
    square_feet REAL,
    occupancy_limit INTEGER,
    floor INTEGER,
    wing TEXT,
    electricity_provider TEXT,
    water_provider TEXT,
    internet_provider TEXT,
    lease_start_date TEXT,
    lease_end_date TEXT,
    rent_amount INTEGER,
    deposit_amount INTEGER,
    pet_policy TEXT,
    maintenance_contact TEXT,
    smoke_detectors INTEGER,
    keycard_access TEXT,
    accessible_units TEXT,
    notes TEXT,
    CONSTRAINT student_housing_unit_info_pk PRIMARY KEY (unit_id)
);

INSERT INTO student_housing_unit_info (unit_id,building_name,unit_number,bedrooms,bathrooms,square_feet,occupancy_limit,floor,wing,electricity_provider,water_provider,internet_provider,lease_start_date,lease_end_date,rent_amount,deposit_amount,pet_policy,maintenance_contact,smoke_detectors,keycard_access,accessible_units,notes) VALUES
('U001','Maple Hall','101A',2,1,850.0,3,1,'North','PowerCo','CityWater','NetStream','2024-08-01','2025-07-31',1200,600,'Allowed','Mike Jordan',2,'Yes','Yes','Near elevator'),
('U002','Oak Residence','202B',1,1,620.0,2,2,'South','EnergyPlus','RiverWater','FiberLink','2024-09-15','2025-09-14',950,475,'No Pets','Laura Smith',2,'Yes','No','Balcony view'),
('U003','Pine Suites','303C',3,2,1150.0,5,3,'East','BrightElectric','LakeWater','CampusNet','2024-07-01','2025-06-30',1500,750,'Restricted','Tom Lee',3,'Yes','Yes','Wheelchair ramp');

-- Library Acquisition Order Detail
CREATE TABLE library_acquisition_order_detail
(
    order_id TEXT,
    isbn TEXT,
    title TEXT,
    author TEXT,
    publisher TEXT,
    publication_year INTEGER,
    order_date TEXT,
    received_date TEXT,
    vendor_name TEXT,
    cost REAL,
    quantity INTEGER,
    location_shelf TEXT,
    catalogue_status TEXT,
    librarian_id TEXT,
    budget_code TEXT,
    order_status TEXT,
    funding_source TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    digital_copy_available TEXT,
    CONSTRAINT library_acquisition_order_detail_pk PRIMARY KEY (order_id)
);

INSERT INTO library_acquisition_order_detail (order_id,isbn,title,author,publisher,publication_year,order_date,received_date,vendor_name,cost,quantity,location_shelf,catalogue_status,librarian_id,budget_code,order_status,funding_source,notes,created_at,updated_at,digital_copy_available) VALUES
('ORD001','9780306406157','The Quantum World','John Doe','Science Press',2020,'2024-03-01','2024-03-10','Global Books',45.99,3,'QA-1','Processed','LB001','BUDG01','Received','Research Grant','First edition copies','2024-03-01','2024-03-11','Yes'),
('ORD002','9780262033848','Artificial Intelligence','Jane Smith','Tech Publishers',2022,'2024-04-15','2024-04-20','TechSupply',120.00,2,'QA-2','Pending','LB002','BUDG02','Shipped','Department Funds','Includes supplemental CD','2024-04-15','2024-04-22','No'),
('ORD003','9780131103627','Introduction to Algorithms','Cormen,Leiserson,Rivest','MIT Press',2009,'2024-05-05','2024-05-12','Academic Books',89.50,5,'QA-3','Cataloged','LB003','BUDG03','Received','Library Budget','Popular textbook','2024-05-05','2024-05-13','Yes');

-- Sustainability Project Milestone
CREATE TABLE sustainability_project_milestone
(
    milestone_id TEXT,
    project_id TEXT,
    milestone_name TEXT,
    target_date TEXT,
    completion_date TEXT,
    status TEXT,
    responsible_party TEXT,
    budget_allocated REAL,
    budget_spent REAL,
    percent_complete REAL,
    environmental_impact TEXT,
    key_performance_indicator TEXT,
    notes TEXT,
    created_by TEXT,
    created_at TEXT,
    updated_by TEXT,
    updated_at TEXT,
    risk_level TEXT,
    mitigation_plan TEXT,
    related_documents TEXT,
    CONSTRAINT sustainability_project_milestone_pk PRIMARY KEY (milestone_id)
);

INSERT INTO sustainability_project_milestone (milestone_id,project_id,milestone_name,target_date,completion_date,status,responsible_party,budget_allocated,budget_spent,percent_complete,environmental_impact,key_performance_indicator,notes,created_by,created_at,updated_by,updated_at,risk_level,mitigation_plan,related_documents) VALUES
('MS001','SP001','Solar Panel Installation','2025-06-30','2025-06-28','Completed','Energy Team',200000.0,195000.0,98.0,'Reduced CO2 by 150t','Energy generated kWh','Installed 150 panels','env_manager','2024-01-15','env_manager','2025-06-30','Low','Regular maintenance','DOC123'),
('MS002','SP002','Waste Composting Program','2025-09-15',NULL,'In Progress','Facilities',50000.0,30000.0,60.0,'Diverted 200t waste','Compost volume','Phase 2 rollout','sustain_lead','2024-03-10','sustain_lead','2025-01-20','Medium','Education campaign','DOC456'),
('MS003','SP003','Green Roof Construction','2026-03-01',NULL,'Planned','Architecture',350000.0,0.0,0.0,'Improved insulation','Roof area sq ft','Design approval pending','arch_head','2024-05-22','arch_head','2024-05-22','High','Secure additional funding','DOC789');

-- Digital Content License Agreement
CREATE TABLE digital_content_license_agreement
(
    license_id TEXT,
    content_id TEXT,
    license_type TEXT,
    provider_name TEXT,
    start_date TEXT,
    end_date TEXT,
    terms_summary TEXT,
    geo_restriction TEXT,
    device_limit INTEGER,
    concurrent_streams INTEGER,
    cost REAL,
    payment_frequency TEXT,
    renewal_option TEXT,
    contact_person TEXT,
    contact_email TEXT,
    signature_date TEXT,
    status TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    digital_asset_id TEXT,
    associated_contract TEXT,
    CONSTRAINT digital_content_license_agreement_pk PRIMARY KEY (license_id)
);

INSERT INTO digital_content_license_agreement (license_id,content_id,license_type,provider_name,start_date,end_date,terms_summary,geo_restriction,device_limit,concurrent_streams,cost,payment_frequency,renewal_option,contact_person,contact_email,signature_date,status,notes,created_at,updated_at,digital_asset_id,associated_contract) VALUES
('LIC001','CNT001','Streaming','MediaHub','2024-01-01','2024-12-31','Standard streaming license','Worldwide',5,2,15000.0','Annual','Auto','Emily Rose','emily.rose@mediahub.com','2023-12-15','Active','Includes promotional rights','2023-12-01','2024-01-02','DA001','CON001'),
('LIC002','CNT002','Download','EduContent','2024-03-01','2025-02-28','Perpetual download rights','North America',10,0,8000.0','One-time','N/A','Mark Twain','mark.twain@educontent.com','2024-02-20','Active','Educational use only','2024-02-01','2024-03-02','DA002','CON002'),
('LIC003','CNT003','Broadcast','GlobalNews','2024-05-15','2026-05-14','Broadcast rights for TV','Europe',3,1,25000.0','Semi-Annual','Manual','Samantha Green','samantha.green@globalnews.com','2024-05-01','Pending','Negotiations ongoing','2024-04-20','2024-05-16','DA003','CON003');

-- Vendor Performance Review
CREATE TABLE vendor_performance_review
(
    review_id TEXT,
    vendor_id TEXT,
    review_period TEXT,
    overall_score REAL,
    on_time_delivery_score REAL,
    quality_score REAL,
    communication_score REAL,
    compliance_score REAL,
    cost_effectiveness_score REAL,
    issues_reported INTEGER,
    issues_resolved INTEGER,
    review_comments TEXT,
    reviewer_name TEXT,
    review_date TEXT,
    next_review_date TEXT,
    contract_status TEXT,
    renewal_recommendation TEXT,
    notes TEXT,
    created_at TEXT,
    updated_at TEXT,
    CONSTRAINT vendor_performance_review_pk PRIMARY KEY (review_id)
);

INSERT INTO vendor_performance_review (review_id,vendor_id,review_period,overall_score,on_time_delivery_score,quality_score,communication_score,compliance_score,cost_effectiveness_score,issues_reported,issues_resolved,review_comments,reviewer_name,review_date,next_review_date,contract_status,renewal_recommendation,notes,created_at,updated_at) VALUES
('VR001','VEND001','2024 Q1',4.5,4.7,4.6,4.4,4.8,4.5,2,2,'Delivered ahead of schedule','Laura Patel','2024-04-10','2024-10-10','Active','Renew','Excellent performance','2024-04-11','2024-04-11'),
('VR002','VEND002','2024 Q1',3.8,3.5,4.0,3.9,3.7,3.6,5,3,'Minor quality issues noted','James Lee','2024-04-12','2024-10-12','Active','Monitor','Needs improvement in quality','2024-04-13','2024-04-13'),
('VR003','VEND003','2024 Q1',4.9,5.0,4.8,4.9,5.0,4.9,0,0,'Outstanding vendor','Karen Wong','2024-04-15','2024-10-15','Active','Renew','Consider expanding contract scope','2024-04-16','2024-04-16');